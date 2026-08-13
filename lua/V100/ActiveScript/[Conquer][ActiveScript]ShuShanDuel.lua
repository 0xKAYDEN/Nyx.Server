------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]八大职业终极试炼
--Creator:		翁清海
--Created:		2017/07/07
------------------------------------------------------------------------------------

--命名前缀
--ShuShanDuel_

--logid:12000554

--stc掩码说明
--stc(152,37)		背包信使用
--stc(152,38)		保存挑战星级
--stc(152,39)		保存挑战星级
--stc(152,40)		打开宝箱领取奖励(终极试炼部分)
--stc(152,41)		武器外套包获得限制
--stc(152,42)		技能外套包获得限制
--stc(152,43)		新手侠士挑战新手初级Boss标记
--stc(152,44)		控制天石二次刷新
--stc(159,49)		打开宝箱领取奖励(新手试炼部分)
--stc(159,00)		龙卷狂沙技能外套使用
--stc(159,01)		致命电流技能外套使用
--stc(159,02)		地狱烈焰【极品】技能外套使用
--stc(159,03)		万箭齐发【极品】技能外套使用
--stc(159,04)		天火流星落【极品】技能外套使用
--stc(152,45)		紫刃斩天【极品】技能外套使用
--stc(152,46)		炽日天剑技能外套使用
--stc(152,47)		无影黑旋风技能外套使用
--stc(162,04)		幸运四叶草技能外套使用

--EMoneyLog说明
--350 20659				参与人数
--350 20660				获得气力奖励
--350 20661				获得气力和灭邪晶玉
--350 20662				获得气力和豪华技能外套包
--350 20663				天石刷新
--350 20664				赠点刷新
--350 20665				修行值刷新
--350 20666				完成任务人数

--保存个人刷怪的怪物信息
local tShuShanDuel_BossRefresh = {}
--保存个人气力奖励
local tShuShanDuel_BossStrength = {}
--记录单次打怪的组合
local tShuShanDuel_BossGroup = {}
--记录玩家进入哪个副本
local tShuShanDuel_IntoInstance = {}
--控制队长刷新
local tShuShanDuel_LeaderRefresh = {}

local tShuShanDuel_Cont = {}
	--背包空间
	tShuShanDuel_Cont["Space"] = 1
	tShuShanDuel_Cont["TopSpace"] = 2
	--等级限制
	tShuShanDuel_Cont["Level"] = 120
	tShuShanDuel_Cont["Metempsychosis"] = 2
	--物品通用配置
	tShuShanDuel_Cont["Attr"] = "0 1 3 1440 1"
	--物品Id
	tShuShanDuel_Cont["ItemId"] = {}
	tShuShanDuel_Cont["ItemId"]["AchieveBook"] = 3301424
	tShuShanDuel_Cont["ItemId"]["AllAchieveBook"] = 3303060
	--职业数量
	tShuShanDuel_Cont["ProNum"] = 8
	--Boss数量
	tShuShanDuel_Cont["BossNum"] = 3
	--Boss最高难度
	tShuShanDuel_Cont["MaxDiff"] = 4
	--成就总数
	tShuShanDuel_Cont["MaxAchieve"] = 40
	--玩家战斗力
	tShuShanDuel_Cont["Battle"] = 350
	--成就显示分组
	tShuShanDuel_Cont["Group"] = 5
	--功夫达到出神入化
	tShuShanDuel_Cont["GongFu"] = 14
	--进入副本范围限制
	tShuShanDuel_Cont["Distance"] = {}
	tShuShanDuel_Cont["Distance"]["MaxX"] = 352
	tShuShanDuel_Cont["Distance"]["MaxY"] = 264
	tShuShanDuel_Cont["Distance"]["MinX"] = 318
	tShuShanDuel_Cont["Distance"]["MinY"] = 240
	--最强3大成就可以获得的称号
	tShuShanDuel_Cont["AchieveTitle"] = {}
	tShuShanDuel_Cont["AchieveTitle"][3] = {}
	tShuShanDuel_Cont["AchieveTitle"][3]["Flag"] = true
	tShuShanDuel_Cont["AchieveTitle"][3]["Index"] = 21
	tShuShanDuel_Cont["AchieveTitle"][3]["TitleType"] = 2001
	tShuShanDuel_Cont["AchieveTitle"][3]["TitleId"] = 2
	tShuShanDuel_Cont["AchieveTitle"][3]["SaveTime"] = 1
	tShuShanDuel_Cont["AchieveTitle"][4] = {}
	tShuShanDuel_Cont["AchieveTitle"][4]["Flag"] = true
	tShuShanDuel_Cont["AchieveTitle"][4]["Index"] = 22
	tShuShanDuel_Cont["AchieveTitle"][4]["TitleType"] = 2002
	tShuShanDuel_Cont["AchieveTitle"][4]["TitleId"] = 3
	tShuShanDuel_Cont["AchieveTitle"][4]["SaveTime"] = 1
	tShuShanDuel_Cont["AchieveTitle"][5] = {}
	tShuShanDuel_Cont["AchieveTitle"][5]["Flag"] = true
	tShuShanDuel_Cont["AchieveTitle"][5]["Index"] = 23
	tShuShanDuel_Cont["AchieveTitle"][5]["TitleType"] = 2003
	tShuShanDuel_Cont["AchieveTitle"][5]["TitleId"] = 4
	tShuShanDuel_Cont["AchieveTitle"][5]["SaveTime"] = 1
	--副本Id
	tShuShanDuel_Cont["InstanceId"] = 71
	--切屏
	tShuShanDuel_Cont["Bound"] = {}
	tShuShanDuel_Cont["Bound"]["X"] = 334
	tShuShanDuel_Cont["Bound"]["Y"] = 253
	tShuShanDuel_Cont["Bound"]["CX"] = 1
	tShuShanDuel_Cont["Bound"]["CY"] = 1
	tShuShanDuel_Cont["Bound"]["Check"] = 1
	--地图Id
	tShuShanDuel_Cont["MapId"] = {}
	tShuShanDuel_Cont["MapId"]["Return"] = 1002
	--对白索引
	tShuShanDuel_Cont["Text"] = {}
	tShuShanDuel_Cont["Text"][19977] = 213
	tShuShanDuel_Cont["Text"][20478] = 116
	--概率总值
	tShuShanDuel_Cont["TotalPercent"] = 100
	--10碎片赌20概率
	tShuShanDuel_Cont["CoatShip"] = 48
	--掉落3天礼包概率
	tShuShanDuel_Cont["Drop"] = 30
	--刷新对手需要的天石数
	tShuShanDuel_Cont["EMoney"] = {}
	tShuShanDuel_Cont["EMoney"][3] = true
	tShuShanDuel_Cont["EMoney"][27] = true
	tShuShanDuel_Cont["EMoney"][99] = false
	--邮件时效
	tShuShanDuel_Cont["ExistDay"] = 3
	--达成试炼成就给的气力值
	tShuShanDuel_Cont["Strength"] = {}
	tShuShanDuel_Cont["Strength"][3] = 3000
	tShuShanDuel_Cont["Strength"][4] = 10000
	tShuShanDuel_Cont["Strength"][5] = 30000
	--首次完成挑战多给的气力值
	tShuShanDuel_Cont["Strength"]["First"] = 1000
	--邮件给奖
	tShuShanDuel_Cont["ActionId"] = {}
	--邮件给气
	tShuShanDuel_Cont["ActionId"][3] = 565369
	tShuShanDuel_Cont["ActionId"][4] = 565370
	tShuShanDuel_Cont["ActionId"][5] = 565371
	--邮件给技能外套
	tShuShanDuel_Cont["ActionId"][3302732] = 565268
	tShuShanDuel_Cont["ActionId"][3302733] = 565269
	tShuShanDuel_Cont["ActionId"][3302734] = 565270
	tShuShanDuel_Cont["ActionId"][3302735] = 565271
	tShuShanDuel_Cont["ActionId"][3302736] = 565272
	tShuShanDuel_Cont["ActionId"][3302737] = 565273
	tShuShanDuel_Cont["ActionId"][3302738] = 565274
	tShuShanDuel_Cont["ActionId"][3302739] = 565275
	tShuShanDuel_Cont["ActionId"][3302740] = 565276
	tShuShanDuel_Cont["ActionId"][3302741] = 565277
	tShuShanDuel_Cont["ActionId"][3302742] = 565278
	tShuShanDuel_Cont["ActionId"][3302743] = 565279
	tShuShanDuel_Cont["ActionId"][3302762] = 565281
	tShuShanDuel_Cont["ActionId"][3302763] = 565282
	tShuShanDuel_Cont["ActionId"][3302764] = 565283
	tShuShanDuel_Cont["ActionId"][3302765] = 565284
	
	tShuShanDuel_Cont["Effect"] = {}
	--开始挑战光效
	tShuShanDuel_Cont["Effect"]["Begin"] = {}
	tShuShanDuel_Cont["Effect"]["Begin"]["SzObj"] = "self"
	tShuShanDuel_Cont["Effect"]["Begin"]["Effect"] = "new_gamebegin"
	--新手试炼领奖光效
	tShuShanDuel_Cont["Effect"]["Primary"] = {}
	tShuShanDuel_Cont["Effect"]["Primary"]["SzObj"] = "self"
	tShuShanDuel_Cont["Effect"]["Primary"]["Effect"] = "zfcard_banner"
	--怪物死亡光效
	tShuShanDuel_Cont["Effect"]["KillBoss"] = "bombarrow"
	--获得技能外套的光效
	tShuShanDuel_Cont["SkillCoatEffect"] = {}
	tShuShanDuel_Cont["SkillCoatEffect"]["SzObj"] = "self"
	tShuShanDuel_Cont["SkillCoatEffect"]["Effect"] = "changefig"

local tShuShanDuel_Time = {}
	tShuShanDuel_Time["Activity"] = "2017-08-03 00:00 2017-08-16 23:59"
	
local tShuShanDuel_Log = {}
	tShuShanDuel_Log["Strength"] = "0,0,0,0,12000554,2,12,%d"
	tShuShanDuel_Log["StrengthItem"] = "0,0,0,0,12000554,2,12[3302997],%d[1]"
	tShuShanDuel_Log["StrengthItemAward"] = "0,0,0,0,12000554,2,12[3303136][3302997],%d[1][1]"
	tShuShanDuel_Log["GetItem"] = "0,0,0,0,12000554,2,%d,1"
	tShuShanDuel_Log["AchieveStrength"] = {}
	tShuShanDuel_Log["AchieveStrength"][3] = "0,0,0,0,12000554,2,12,3000"
	tShuShanDuel_Log["AchieveStrength"][4] = "0,0,0,0,12000554,2,12,10000"
	tShuShanDuel_Log["AchieveStrength"][5] = "0,0,0,0,12000554,2,12,30000"
	tShuShanDuel_Log["Cultivation"] = "0,0,6,%d,12000554,2,0,0"
	
	tShuShanDuel_Log["SkillCoatUse"] = "0,0,%d,1,12000554,2,%d,1"
	
	tShuShanDuel_Log["Into"] = "0,0,0,0,12000554,1[1],0,0"
	tShuShanDuel_Log["Success"] = "0,0,0,0,12000554,1[2],0,0"
	
local tShuShanDuel_ELog = {}
	tShuShanDuel_ELog["Attend"] = "350	20659	0	0	0	"
	tShuShanDuel_ELog["GetStrength"] = "350	20660	0	0	%d	"
	tShuShanDuel_ELog["GetStrengthJade"] = "350	20661	0	0	%d	"
	tShuShanDuel_ELog["GetStrengthCoatBag"] = "350	20662	0	0	%d	"
	tShuShanDuel_ELog["EMoneyRefrash"] = "350	20731	%d	%d	1	"
	tShuShanDuel_ELog["EMoneyTopRefrash"] = "350	20663	%d	%d	1	"
	tShuShanDuel_ELog["EMoneyMonoRefrash"] = "350	20664	0	0	%d	"
	tShuShanDuel_ELog["CultivationRefrash"] = "350	20665	0	0	%d	"
	tShuShanDuel_ELog["Success"] = "350	20666	0	0	0	"
	
	tShuShanDuel_ELog["GetStrengthPlus"] = {}
	tShuShanDuel_ELog["GetStrengthPlus"][3] = "350	20689	0	0	0	"
	tShuShanDuel_ELog["GetStrengthPlus"][4] = "350	20688	0	0	0	"
	tShuShanDuel_ELog["GetStrengthPlus"][5] = "350	20687	0	0	0	"
	
--掩码
local tShuShanDuel_Stc = {}
	--保存挑战星级
	tShuShanDuel_Stc["StarLevelUp"] = {}
	tShuShanDuel_Stc["StarLevelUp"]["Event"] = 152
	tShuShanDuel_Stc["StarLevelUp"]["Type"] = 38
	tShuShanDuel_Stc["StarLevelUp"]["Save"] = 1
	tShuShanDuel_Stc["StarLevelDown"] = {}
	tShuShanDuel_Stc["StarLevelDown"]["Event"] = 152
	tShuShanDuel_Stc["StarLevelDown"]["Type"] = 39
	tShuShanDuel_Stc["StarLevelDown"]["Save"] = 1
	--打开宝箱领取奖励次数(终极试炼部分)
	tShuShanDuel_Stc["Award"] = {}
	tShuShanDuel_Stc["Award"]["Event"] = 152
	tShuShanDuel_Stc["Award"]["Type"] = 40
	tShuShanDuel_Stc["Award"]["Save"] = 1
	tShuShanDuel_Stc["Award"]["Delay"] = 1
	tShuShanDuel_Stc["Award"]["TimeType"] = 4
	tShuShanDuel_Stc["Award"]["Data"] = 3
	--武器外套包获得限制
	tShuShanDuel_Stc["WeaponCoat"] = {}
	tShuShanDuel_Stc["WeaponCoat"]["Event"] = 152
	tShuShanDuel_Stc["WeaponCoat"]["Type"] = 41
	tShuShanDuel_Stc["WeaponCoat"]["Save"] = 1
	tShuShanDuel_Stc["WeaponCoat"]["Delay"] = 1
	tShuShanDuel_Stc["WeaponCoat"]["TimeType"] = 4
	tShuShanDuel_Stc["WeaponCoat"]["Data"] = 2
	--技能外套包获得限制
	tShuShanDuel_Stc["SkillCoat"] = {}
	tShuShanDuel_Stc["SkillCoat"]["Event"] = 152
	tShuShanDuel_Stc["SkillCoat"]["Type"] = 42
	tShuShanDuel_Stc["SkillCoat"]["Save"] = 1
	tShuShanDuel_Stc["SkillCoat"]["Delay"] = 1
	tShuShanDuel_Stc["SkillCoat"]["TimeType"] = 4
	--新手侠士挑战新手初级Boss标记
	tShuShanDuel_Stc["Primary"] = {}
	tShuShanDuel_Stc["Primary"]["Event"] = 152
	tShuShanDuel_Stc["Primary"]["Type"] = 43
	tShuShanDuel_Stc["Primary"]["Save"] = 1
	tShuShanDuel_Stc["Primary"]["FstData"] = 1
	tShuShanDuel_Stc["Primary"]["SedData"] = 2
	tShuShanDuel_Stc["Primary"]["ThdData"] = 3
	--控制天石二次刷新
	tShuShanDuel_Stc["EMoney"] = {}
	tShuShanDuel_Stc["EMoney"]["Event"] = 152
	tShuShanDuel_Stc["EMoney"]["Type"] = 44
	tShuShanDuel_Stc["EMoney"]["Save"] = 1
	tShuShanDuel_Stc["EMoney"]["Delay"] = 1
	tShuShanDuel_Stc["EMoney"]["TimeType"] = 4
	--打开宝箱领取奖励次数(新手试炼部分)
	tShuShanDuel_Stc["Box"] = {}
	tShuShanDuel_Stc["Box"]["Event"] = 159
	tShuShanDuel_Stc["Box"]["Type"] = 49
	tShuShanDuel_Stc["Box"]["Save"] = 1
	tShuShanDuel_Stc["Box"]["Data"] = 3
	
	--击杀成就表
local tShuShanDuel_Achieve = {}
	tShuShanDuel_Achieve[1] = {4281}
	tShuShanDuel_Achieve[2] = {4282}
	tShuShanDuel_Achieve[3] = {4283}
	tShuShanDuel_Achieve[4] = {4284}
	tShuShanDuel_Achieve[5] = {4285}
	tShuShanDuel_Achieve[6] = {4286}
	tShuShanDuel_Achieve[7] = {4287}
	tShuShanDuel_Achieve[8] = {4288}
	tShuShanDuel_Achieve[9] =  {4289}
	tShuShanDuel_Achieve[10] = {4290}
	tShuShanDuel_Achieve[11] = {4291}
	tShuShanDuel_Achieve[12] = {4292}
	tShuShanDuel_Achieve[13] = {4293}
	tShuShanDuel_Achieve[14] = {4294}
	tShuShanDuel_Achieve[15] = {4295}
	tShuShanDuel_Achieve[16] = {4296}
	tShuShanDuel_Achieve[17] = {4297}
	tShuShanDuel_Achieve[18] = {4298}
	tShuShanDuel_Achieve[19] = {4299}
	tShuShanDuel_Achieve[20] = {4300}
	tShuShanDuel_Achieve[21] = {4301}
	tShuShanDuel_Achieve[22] = {4302}
	tShuShanDuel_Achieve[23] = {4303}
	tShuShanDuel_Achieve[24] = {4304}
	tShuShanDuel_Achieve[25] = {4297,4297}
	tShuShanDuel_Achieve[26] = {4298,4298}
	tShuShanDuel_Achieve[27] = {4299,4299}
	tShuShanDuel_Achieve[28] = {4300,4300}
	tShuShanDuel_Achieve[29] = {4301, 4301}
	tShuShanDuel_Achieve[30] = {4302,4302}
	tShuShanDuel_Achieve[31] = { 4303,4303}
	tShuShanDuel_Achieve[32] = {4304,4304}
	tShuShanDuel_Achieve[33] = {4297,4297,4297}
	tShuShanDuel_Achieve[34] = {4298,4298,4298}
	tShuShanDuel_Achieve[35] = {4299,4299,4299}
	tShuShanDuel_Achieve[36] = {4300,4300,4300}
	tShuShanDuel_Achieve[37] = {4301, 4301, 4301}
	tShuShanDuel_Achieve[38] = {4302,4302,4302}
	tShuShanDuel_Achieve[39] = { 4303,4303,4303}
	tShuShanDuel_Achieve[40] = {4304,4304,4304}
	
	--Boss难度职业对照表
local tShuShanDuel_BossDifPro = {}
	tShuShanDuel_BossDifPro[1] = {}
	tShuShanDuel_BossDifPro[1][1] = 4255
	tShuShanDuel_BossDifPro[1][2] = 4256
	tShuShanDuel_BossDifPro[1][3] = 4257
	tShuShanDuel_BossDifPro[1][4] = 4258
	tShuShanDuel_BossDifPro[1][5] = 4259
	tShuShanDuel_BossDifPro[1][6] = 4260
	tShuShanDuel_BossDifPro[1][7] = 4261
	tShuShanDuel_BossDifPro[1][8] = 4262
	tShuShanDuel_BossDifPro[2] = {}
	tShuShanDuel_BossDifPro[2][1] = 4281
	tShuShanDuel_BossDifPro[2][2] = 4282
	tShuShanDuel_BossDifPro[2][3] = 4283
	tShuShanDuel_BossDifPro[2][4] = 4284
	tShuShanDuel_BossDifPro[2][5] = 4285
	tShuShanDuel_BossDifPro[2][6] = 4286
	tShuShanDuel_BossDifPro[2][7] = 4287
	tShuShanDuel_BossDifPro[2][8] = 4288
	tShuShanDuel_BossDifPro[3] = {}
	tShuShanDuel_BossDifPro[3][1] = 4289
	tShuShanDuel_BossDifPro[3][2] = 4290
	tShuShanDuel_BossDifPro[3][3] = 4291
	tShuShanDuel_BossDifPro[3][4] = 4292
	tShuShanDuel_BossDifPro[3][5] = 4293
	tShuShanDuel_BossDifPro[3][6] = 4294
	tShuShanDuel_BossDifPro[3][7] = 4295
	tShuShanDuel_BossDifPro[3][8] = 4296
	tShuShanDuel_BossDifPro[4] = {}
	tShuShanDuel_BossDifPro[4][1] = 4297
	tShuShanDuel_BossDifPro[4][2] = 4298
	tShuShanDuel_BossDifPro[4][3] = 4299
	tShuShanDuel_BossDifPro[4][4] = 4300
	tShuShanDuel_BossDifPro[4][5] = 4301
	tShuShanDuel_BossDifPro[4][6] = 4302
	tShuShanDuel_BossDifPro[4][7] = 4303
	tShuShanDuel_BossDifPro[4][8] = 4304
	
--怪物掉落
local tShuShanDuel_BossDrop = {}
	tShuShanDuel_BossDrop["ItemId"] = {}
	tShuShanDuel_BossDrop["ItemId"][1] = {}
	tShuShanDuel_BossDrop["ItemId"][1][30] = {}
	tShuShanDuel_BossDrop["ItemId"][1][30][1] = 3302764
	tShuShanDuel_BossDrop["ItemId"][1][30][2] = 3302762
	tShuShanDuel_BossDrop["ItemId"][1][30][3] = 3302765
	tShuShanDuel_BossDrop["ItemId"][1][30][4] = 3302762
	tShuShanDuel_BossDrop["ItemId"][1][30][5] = 3302763
	tShuShanDuel_BossDrop["ItemId"][1][30][6] = 3302765
	tShuShanDuel_BossDrop["ItemId"][1][30][7] = 3302764
	tShuShanDuel_BossDrop["ItemId"][1][30][8] = 3302763
	tShuShanDuel_BossDrop["ItemId"][1][70] = {}
	tShuShanDuel_BossDrop["ItemId"][1][70][1] = 3302734
	tShuShanDuel_BossDrop["ItemId"][1][70][2] = 3302732
	tShuShanDuel_BossDrop["ItemId"][1][70][3] = 3302735
	tShuShanDuel_BossDrop["ItemId"][1][70][4] = 3302732
	tShuShanDuel_BossDrop["ItemId"][1][70][5] = 3302733
	tShuShanDuel_BossDrop["ItemId"][1][70][6] = 3302735
	tShuShanDuel_BossDrop["ItemId"][1][70][7] = 3302734
	tShuShanDuel_BossDrop["ItemId"][1][70][8] = 3302733
	tShuShanDuel_BossDrop["ItemId"][4] = {}
	tShuShanDuel_BossDrop["ItemId"][4][1] = 3302740
	tShuShanDuel_BossDrop["ItemId"][4][2] = 3302737
	tShuShanDuel_BossDrop["ItemId"][4][3] = 3302743
	tShuShanDuel_BossDrop["ItemId"][4][4] = 3302736
	tShuShanDuel_BossDrop["ItemId"][4][5] = 3302738
	tShuShanDuel_BossDrop["ItemId"][4][6] = 3302742
	tShuShanDuel_BossDrop["ItemId"][4][7] = 3302741
	tShuShanDuel_BossDrop["ItemId"][4][8] = 3302739
	tShuShanDuel_BossDrop["Percent"] = {}
	tShuShanDuel_BossDrop["Percent"][1] = 10
	tShuShanDuel_BossDrop["Percent"][2] = 30
	tShuShanDuel_BossDrop["Percent"][3] = 50
	tShuShanDuel_BossDrop["Percent"][4] = 100
	tShuShanDuel_BossDrop["StcType"] = {}
	tShuShanDuel_BossDrop["StcType"][1] = 41
	tShuShanDuel_BossDrop["StcType"][2] = 41
	tShuShanDuel_BossDrop["StcType"][3] = 41
	tShuShanDuel_BossDrop["StcType"][4] = 42
	
--难度气力对照表
local tShuShanDuel_Strength = {}
	tShuShanDuel_Strength[1] = 30
	tShuShanDuel_Strength[2] = 50
	tShuShanDuel_Strength[3] = 100
	tShuShanDuel_Strength[4] = 200
	
--星级对应评价
local tShuShanDuel_StarComment = {}
	tShuShanDuel_StarComment[1] = 1
	tShuShanDuel_StarComment[2] = 1
	tShuShanDuel_StarComment[3] = 1
	tShuShanDuel_StarComment[4] = 1
	tShuShanDuel_StarComment[5] = 2
	tShuShanDuel_StarComment[6] = 2
	tShuShanDuel_StarComment[7] = 3
	tShuShanDuel_StarComment[8] = 3
	tShuShanDuel_StarComment[9] = 4
	tShuShanDuel_StarComment[10] = 4
	tShuShanDuel_StarComment[11] = 4
	tShuShanDuel_StarComment[12] = 5
	tShuShanDuel_StarComment[13] = 5
	tShuShanDuel_StarComment[14] = 5
	tShuShanDuel_StarComment[15] = 5

--刷怪位置、初始怪物展示NPC位置
local tShuShanDuel_Place = {}
	tShuShanDuel_Place[71] = {}
	tShuShanDuel_Place[71][1] = {}
	tShuShanDuel_Place[71][1]["PosX"] = 88
	tShuShanDuel_Place[71][1]["PosY"] = 62
	tShuShanDuel_Place[71][1]["NPCPosX"] = 93
	tShuShanDuel_Place[71][1]["NPCPosY"] = 53
	tShuShanDuel_Place[71][1]["GenId"] = 20421
	tShuShanDuel_Place[71][2] = {}
	tShuShanDuel_Place[71][2]["PosX"] = 104
	tShuShanDuel_Place[71][2]["PosY"] = 66
	tShuShanDuel_Place[71][2]["NPCPosX"] = 83
	tShuShanDuel_Place[71][2]["NPCPosY"] = 53
	tShuShanDuel_Place[71][2]["GenId"] = 20421
	tShuShanDuel_Place[71][3] = {}
	tShuShanDuel_Place[71][3]["PosX"] = 96
	tShuShanDuel_Place[71][3]["PosY"] = 76
	tShuShanDuel_Place[71][3]["NPCPosX"] = 103
	tShuShanDuel_Place[71][3]["NPCPosY"] = 53
	tShuShanDuel_Place[71][3]["GenId"] = 20421
	tShuShanDuel_Place[72] = {}
	tShuShanDuel_Place[72][1] = {}
	tShuShanDuel_Place[72][1]["PosX"] = 50
	tShuShanDuel_Place[72][1]["PosY"] = 46
	tShuShanDuel_Place[72][1]["GenId"] = 20422
	tShuShanDuel_Place[73] = {}
	tShuShanDuel_Place[73][1] = {}
	tShuShanDuel_Place[73][1]["PosX"] = 50
	tShuShanDuel_Place[73][1]["PosY"] = 46
	tShuShanDuel_Place[73][1]["GenId"] = 20423
	tShuShanDuel_Place[74] = {}
	tShuShanDuel_Place[74][1] = {}
	tShuShanDuel_Place[74][1]["PosX"] = 50
	tShuShanDuel_Place[74][1]["PosY"] = 46
	tShuShanDuel_Place[74][1]["GenId"] = 20424
	
--刷新动态NPC
local tShuShanDuel_DynNpc={}
	tShuShanDuel_DynNpc[1] = {}
	tShuShanDuel_DynNpc[1][1] = {}
	tShuShanDuel_DynNpc[1][1]["Sort"] = 1
	tShuShanDuel_DynNpc[1][1]["Type"] = 2
	tShuShanDuel_DynNpc[1][1]["LookFace"] = 53370
	tShuShanDuel_DynNpc[1][1]["Action"] = 94482130
	tShuShanDuel_DynNpc[1][2] = {}
	tShuShanDuel_DynNpc[1][2]["Sort"] = 1
	tShuShanDuel_DynNpc[1][2]["Type"] = 2
	tShuShanDuel_DynNpc[1][2]["LookFace"] = 53380
	tShuShanDuel_DynNpc[1][2]["Action"] = 94482131
	tShuShanDuel_DynNpc[1][3] = {}
	tShuShanDuel_DynNpc[1][3]["Sort"] = 1
	tShuShanDuel_DynNpc[1][3]["Type"] = 2
	tShuShanDuel_DynNpc[1][3]["LookFace"] = 53390
	tShuShanDuel_DynNpc[1][3]["Action"] = 94482132
	tShuShanDuel_DynNpc[1][4] = {}
	tShuShanDuel_DynNpc[1][4]["Sort"] = 1
	tShuShanDuel_DynNpc[1][4]["Type"] = 2
	tShuShanDuel_DynNpc[1][4]["LookFace"] = 53400
	tShuShanDuel_DynNpc[1][4]["Action"] = 94482133
	tShuShanDuel_DynNpc[1][5] = {}
	tShuShanDuel_DynNpc[1][5]["Sort"] = 1
	tShuShanDuel_DynNpc[1][5]["Type"] = 2
	tShuShanDuel_DynNpc[1][5]["LookFace"] = 53410
	tShuShanDuel_DynNpc[1][5]["Action"] = 94482134
	tShuShanDuel_DynNpc[1][6] = {}
	tShuShanDuel_DynNpc[1][6]["Sort"] = 1
	tShuShanDuel_DynNpc[1][6]["Type"] = 2
	tShuShanDuel_DynNpc[1][6]["LookFace"] = 53420
	tShuShanDuel_DynNpc[1][6]["Action"] = 94482135
	tShuShanDuel_DynNpc[1][7] = {}
	tShuShanDuel_DynNpc[1][7]["Sort"] = 1
	tShuShanDuel_DynNpc[1][7]["Type"] = 2
	tShuShanDuel_DynNpc[1][7]["LookFace"] = 53430
	tShuShanDuel_DynNpc[1][7]["Action"] = 94482136
	tShuShanDuel_DynNpc[1][8] = {}
	tShuShanDuel_DynNpc[1][8]["Sort"] = 1
	tShuShanDuel_DynNpc[1][8]["Type"] = 2
	tShuShanDuel_DynNpc[1][8]["LookFace"] = 53440
	tShuShanDuel_DynNpc[1][8]["Action"] = 94482137
	tShuShanDuel_DynNpc[2] = {}
	tShuShanDuel_DynNpc[2][1] = {}
	tShuShanDuel_DynNpc[2][1]["Sort"] = 1
	tShuShanDuel_DynNpc[2][1]["Type"] = 2
	tShuShanDuel_DynNpc[2][1]["LookFace"] = 53900
	tShuShanDuel_DynNpc[2][1]["Action"] = 94482130
	tShuShanDuel_DynNpc[2][2] = {}
	tShuShanDuel_DynNpc[2][2]["Sort"] = 1
	tShuShanDuel_DynNpc[2][2]["Type"] = 2
	tShuShanDuel_DynNpc[2][2]["LookFace"] = 53910
	tShuShanDuel_DynNpc[2][2]["Action"] = 94482131
	tShuShanDuel_DynNpc[2][3] = {}
	tShuShanDuel_DynNpc[2][3]["Sort"] = 1
	tShuShanDuel_DynNpc[2][3]["Type"] = 2
	tShuShanDuel_DynNpc[2][3]["LookFace"] = 53920
	tShuShanDuel_DynNpc[2][3]["Action"] = 94482132
	tShuShanDuel_DynNpc[2][4] = {}
	tShuShanDuel_DynNpc[2][4]["Sort"] = 1
	tShuShanDuel_DynNpc[2][4]["Type"] = 2
	tShuShanDuel_DynNpc[2][4]["LookFace"] = 53930
	tShuShanDuel_DynNpc[2][4]["Action"] = 94482133
	tShuShanDuel_DynNpc[2][5] = {}
	tShuShanDuel_DynNpc[2][5]["Sort"] = 1
	tShuShanDuel_DynNpc[2][5]["Type"] = 2
	tShuShanDuel_DynNpc[2][5]["LookFace"] = 53940
	tShuShanDuel_DynNpc[2][5]["Action"] = 94482134
	tShuShanDuel_DynNpc[2][6] = {}
	tShuShanDuel_DynNpc[2][6]["Sort"] = 1
	tShuShanDuel_DynNpc[2][6]["Type"] = 2
	tShuShanDuel_DynNpc[2][6]["LookFace"] = 53950
	tShuShanDuel_DynNpc[2][6]["Action"] = 94482135
	tShuShanDuel_DynNpc[2][7] = {}
	tShuShanDuel_DynNpc[2][7]["Sort"] = 1
	tShuShanDuel_DynNpc[2][7]["Type"] = 2
	tShuShanDuel_DynNpc[2][7]["LookFace"] = 53960
	tShuShanDuel_DynNpc[2][7]["Action"] = 94482136
	tShuShanDuel_DynNpc[2][8] = {}
	tShuShanDuel_DynNpc[2][8]["Sort"] = 1
	tShuShanDuel_DynNpc[2][8]["Type"] = 2
	tShuShanDuel_DynNpc[2][8]["LookFace"] = 53970
	tShuShanDuel_DynNpc[2][8]["Action"] = 94482137
	tShuShanDuel_DynNpc[3] = {}
	tShuShanDuel_DynNpc[3][1] = {}
	tShuShanDuel_DynNpc[3][1]["Sort"] = 1
	tShuShanDuel_DynNpc[3][1]["Type"] = 2
	tShuShanDuel_DynNpc[3][1]["LookFace"] = 53980
	tShuShanDuel_DynNpc[3][1]["Action"] = 94482130
	tShuShanDuel_DynNpc[3][2] = {}
	tShuShanDuel_DynNpc[3][2]["Sort"] = 1
	tShuShanDuel_DynNpc[3][2]["Type"] = 2
	tShuShanDuel_DynNpc[3][2]["LookFace"] = 53990
	tShuShanDuel_DynNpc[3][2]["Action"] = 94482131
	tShuShanDuel_DynNpc[3][3] = {}
	tShuShanDuel_DynNpc[3][3]["Sort"] = 1
	tShuShanDuel_DynNpc[3][3]["Type"] = 2
	tShuShanDuel_DynNpc[3][3]["LookFace"] = 54000
	tShuShanDuel_DynNpc[3][3]["Action"] = 94482132
	tShuShanDuel_DynNpc[3][4] = {}
	tShuShanDuel_DynNpc[3][4]["Sort"] = 1
	tShuShanDuel_DynNpc[3][4]["Type"] = 2
	tShuShanDuel_DynNpc[3][4]["LookFace"] = 54010
	tShuShanDuel_DynNpc[3][4]["Action"] = 94482133
	tShuShanDuel_DynNpc[3][5] = {}
	tShuShanDuel_DynNpc[3][5]["Sort"] = 1
	tShuShanDuel_DynNpc[3][5]["Type"] = 2
	tShuShanDuel_DynNpc[3][5]["LookFace"] = 54020
	tShuShanDuel_DynNpc[3][5]["Action"] = 94482134
	tShuShanDuel_DynNpc[3][6] = {}
	tShuShanDuel_DynNpc[3][6]["Sort"] = 1
	tShuShanDuel_DynNpc[3][6]["Type"] = 2
	tShuShanDuel_DynNpc[3][6]["LookFace"] = 54030
	tShuShanDuel_DynNpc[3][6]["Action"] = 94482135
	tShuShanDuel_DynNpc[3][7] = {}
	tShuShanDuel_DynNpc[3][7]["Sort"] = 1
	tShuShanDuel_DynNpc[3][7]["Type"] = 2
	tShuShanDuel_DynNpc[3][7]["LookFace"] = 54040
	tShuShanDuel_DynNpc[3][7]["Action"] = 94482136
	tShuShanDuel_DynNpc[3][8] = {}
	tShuShanDuel_DynNpc[3][8]["Sort"] = 1
	tShuShanDuel_DynNpc[3][8]["Type"] = 2
	tShuShanDuel_DynNpc[3][8]["LookFace"] = 54050
	tShuShanDuel_DynNpc[3][8]["Action"] = 94482137
	tShuShanDuel_DynNpc[4] = {}
	tShuShanDuel_DynNpc[4][1] = {}
	tShuShanDuel_DynNpc[4][1]["Sort"] = 1
	tShuShanDuel_DynNpc[4][1]["Type"] = 2
	tShuShanDuel_DynNpc[4][1]["LookFace"] = 54060
	tShuShanDuel_DynNpc[4][1]["Action"] = 94482130
	tShuShanDuel_DynNpc[4][2] = {}
	tShuShanDuel_DynNpc[4][2]["Sort"] = 1
	tShuShanDuel_DynNpc[4][2]["Type"] = 2
	tShuShanDuel_DynNpc[4][2]["LookFace"] = 54070
	tShuShanDuel_DynNpc[4][2]["Action"] = 94482131
	tShuShanDuel_DynNpc[4][3] = {}
	tShuShanDuel_DynNpc[4][3]["Sort"] = 1
	tShuShanDuel_DynNpc[4][3]["Type"] = 2
	tShuShanDuel_DynNpc[4][3]["LookFace"] = 54080
	tShuShanDuel_DynNpc[4][3]["Action"] = 94482132
	tShuShanDuel_DynNpc[4][4] = {}
	tShuShanDuel_DynNpc[4][4]["Sort"] = 1
	tShuShanDuel_DynNpc[4][4]["Type"] = 2
	tShuShanDuel_DynNpc[4][4]["LookFace"] = 54090
	tShuShanDuel_DynNpc[4][4]["Action"] = 94482133
	tShuShanDuel_DynNpc[4][5] = {}
	tShuShanDuel_DynNpc[4][5]["Sort"] = 1
	tShuShanDuel_DynNpc[4][5]["Type"] = 2
	tShuShanDuel_DynNpc[4][5]["LookFace"] = 54100
	tShuShanDuel_DynNpc[4][5]["Action"] = 94482134
	tShuShanDuel_DynNpc[4][6] = {}
	tShuShanDuel_DynNpc[4][6]["Sort"] = 1
	tShuShanDuel_DynNpc[4][6]["Type"] = 2
	tShuShanDuel_DynNpc[4][6]["LookFace"] = 54110
	tShuShanDuel_DynNpc[4][6]["Action"] = 94482135
	tShuShanDuel_DynNpc[4][7] = {}
	tShuShanDuel_DynNpc[4][7]["Sort"] = 1
	tShuShanDuel_DynNpc[4][7]["Type"] = 2
	tShuShanDuel_DynNpc[4][7]["LookFace"] = 54120
	tShuShanDuel_DynNpc[4][7]["Action"] = 94482136
	tShuShanDuel_DynNpc[4][8] = {}
	tShuShanDuel_DynNpc[4][8]["Sort"] = 1
	tShuShanDuel_DynNpc[4][8]["Type"] = 2
	tShuShanDuel_DynNpc[4][8]["LookFace"] = 54130
	tShuShanDuel_DynNpc[4][8]["Action"] = 94482137
	tShuShanDuel_DynNpc["Box"] = {}
	tShuShanDuel_DynNpc["Box"]["Sort"] = 1
	tShuShanDuel_DynNpc["Box"]["Type"] = 2
	tShuShanDuel_DynNpc["Box"]["LookFace"] = 45970
	tShuShanDuel_DynNpc["Box"]["Action"] = 94480402
	tShuShanDuel_DynNpc["Box"]["PosX"] = 96
	tShuShanDuel_DynNpc["Box"]["PosY"] = 64
	tShuShanDuel_DynNpc["PrimaryBox"] = {}
	tShuShanDuel_DynNpc["PrimaryBox"]["Sort"] = 1
	tShuShanDuel_DynNpc["PrimaryBox"]["Type"] = 2
	tShuShanDuel_DynNpc["PrimaryBox"]["LookFace"] = 48720
	tShuShanDuel_DynNpc["PrimaryBox"]["Action"] = 94482800
	tShuShanDuel_DynNpc["PrimaryBox"]["PosX"] = 50
	tShuShanDuel_DynNpc["PrimaryBox"]["PosY"] = 51
	tShuShanDuel_DynNpc["Activate"] = {}
	tShuShanDuel_DynNpc["Activate"]["Sort"] = 1
	tShuShanDuel_DynNpc["Activate"]["Type"] = 2
	tShuShanDuel_DynNpc["Activate"]["LookFace"] = 56140
	tShuShanDuel_DynNpc["Activate"]["Action"] = 94482124
	tShuShanDuel_DynNpc["Activate"]["PosX"] = 95
	tShuShanDuel_DynNpc["Activate"]["PosY"] = 61
	tShuShanDuel_DynNpc["Primary"] = {}
	tShuShanDuel_DynNpc["Primary"]["Sort"] = 1
	tShuShanDuel_DynNpc["Primary"]["Type"] = 2
	tShuShanDuel_DynNpc["Primary"]["LookFace"] = 47730
	tShuShanDuel_DynNpc["Primary"]["Action"] = 94482410
	tShuShanDuel_DynNpc["Primary"]["PosX"] = 44
	tShuShanDuel_DynNpc["Primary"]["PosY"] = 50
	tShuShanDuel_DynNpc["First"] = {}
	tShuShanDuel_DynNpc["First"]["Sort"] = 1
	tShuShanDuel_DynNpc["First"]["Type"] = 2
	tShuShanDuel_DynNpc["First"]["LookFace"] = 53450
	tShuShanDuel_DynNpc["First"]["Action"] = 94482281
	tShuShanDuel_DynNpc["First"]["PosX"] = 50
	tShuShanDuel_DynNpc["First"]["PosY"] = 46
	tShuShanDuel_DynNpc["Second"] = {}
	tShuShanDuel_DynNpc["Second"]["Sort"] = 1
	tShuShanDuel_DynNpc["Second"]["Type"] = 2
	tShuShanDuel_DynNpc["Second"]["LookFace"] = 53460
	tShuShanDuel_DynNpc["Second"]["Action"] = 94482282
	tShuShanDuel_DynNpc["Second"]["PosX"] = 50
	tShuShanDuel_DynNpc["Second"]["PosY"] = 46
	tShuShanDuel_DynNpc["Third"] = {}
	tShuShanDuel_DynNpc["Third"]["Sort"] = 1
	tShuShanDuel_DynNpc["Third"]["Type"] = 2
	tShuShanDuel_DynNpc["Third"]["LookFace"] = 53470
	tShuShanDuel_DynNpc["Third"]["Action"] = 94482283
	tShuShanDuel_DynNpc["Third"]["PosX"] = 50
	tShuShanDuel_DynNpc["Third"]["PosY"] = 46
	
--初级试炼对应的副本
local tShuShanDuel_PrimaryInstance = {}
	tShuShanDuel_PrimaryInstance[1] = 72
	tShuShanDuel_PrimaryInstance[2] = 73
	tShuShanDuel_PrimaryInstance[3] = 74
	
--副本对应掩码标记
local tShuShanDuel_InstanceStc = {}
	tShuShanDuel_InstanceStc[71] = 4
	tShuShanDuel_InstanceStc[72] = 1
	tShuShanDuel_InstanceStc[73] = 2
	tShuShanDuel_InstanceStc[74] = 3
	
--副本对应的NPC、地效位置
local tShuShanDuel_Instance = {}
	tShuShanDuel_Instance[71] = {}
	tShuShanDuel_Instance[71]["Npc"] = {"Activate"}
	tShuShanDuel_Instance[71]["PassNpc"] = {"Box"}
	tShuShanDuel_Instance[72] = {}
	tShuShanDuel_Instance[72]["Npc"] = {"First", "Primary"}
	tShuShanDuel_Instance[72]["PassNpc"] = {"PrimaryBox"}
	tShuShanDuel_Instance[73] = {}
	tShuShanDuel_Instance[73]["Npc"] = {"Second", "Primary"}
	tShuShanDuel_Instance[73]["PassNpc"] = {"PrimaryBox"}
	tShuShanDuel_Instance[74] = {}
	tShuShanDuel_Instance[74]["Npc"] = {"Third", "Primary"}
	tShuShanDuel_Instance[74]["PassNpc"] = {"PrimaryBox"}
	
--初级试炼刷怪数据
local tShuShanDuel_PrimaryBoss = {}
	tShuShanDuel_PrimaryBoss[1] = 8
	tShuShanDuel_PrimaryBoss[2] = 4
	tShuShanDuel_PrimaryBoss[3] = 3
	
--领奖NPC对应掩码索引
local tShuShanDuel_NPCStc = {}
	tShuShanDuel_NPCStc[20177] = "Award"
	tShuShanDuel_NPCStc[20828] = "Box"
	
--试炼地图属性
local tShuShanDuel_MapDoc = {}
	tShuShanDuel_MapDoc[1] = 10079
	tShuShanDuel_MapDoc[2] = 10080
	tShuShanDuel_MapDoc[3] = 10081
	tShuShanDuel_MapDoc[4] = 10082
	
--技能外套包汇总
local tShuShanDuel_SkillCoat = {}
	tShuShanDuel_SkillCoat[3303071] = {}
	tShuShanDuel_SkillCoat[3303071]["EventType"] = 159
	tShuShanDuel_SkillCoat[3303071]["DataType"] = 00
	tShuShanDuel_SkillCoat[3303071]["MagicId"] = 12160
	tShuShanDuel_SkillCoat[3303071]["MgcEffectType"] = 1
	tShuShanDuel_SkillCoat[3303071]["Time"] = 86400
	tShuShanDuel_SkillCoat[3303072] = {}
	tShuShanDuel_SkillCoat[3303072]["EventType"] = 159
	tShuShanDuel_SkillCoat[3303072]["DataType"] = 01
	tShuShanDuel_SkillCoat[3303072]["MagicId"] = 11110
	tShuShanDuel_SkillCoat[3303072]["MgcEffectType"] = 3
	tShuShanDuel_SkillCoat[3303072]["Time"] = 86400
	tShuShanDuel_SkillCoat[3303078] = {}
	tShuShanDuel_SkillCoat[3303078]["EventType"] = 159
	tShuShanDuel_SkillCoat[3303078]["DataType"] = 02
	tShuShanDuel_SkillCoat[3303078]["MagicId"] = 1165
	tShuShanDuel_SkillCoat[3303078]["MgcEffectType"] = 2
	tShuShanDuel_SkillCoat[3303078]["Time"] = 86400
	tShuShanDuel_SkillCoat[3303079] = {}
	tShuShanDuel_SkillCoat[3303079]["EventType"] = 159
	tShuShanDuel_SkillCoat[3303079]["DataType"] = 03
	tShuShanDuel_SkillCoat[3303079]["MagicId"] = 11650
	tShuShanDuel_SkillCoat[3303079]["MgcEffectType"] = 2
	tShuShanDuel_SkillCoat[3303079]["Time"] = 86400
	tShuShanDuel_SkillCoat[3303080] = {}
	tShuShanDuel_SkillCoat[3303080]["EventType"] = 159
	tShuShanDuel_SkillCoat[3303080]["DataType"] = 04
	tShuShanDuel_SkillCoat[3303080]["MagicId"] = 1046
	tShuShanDuel_SkillCoat[3303080]["MgcEffectType"] = 2
	tShuShanDuel_SkillCoat[3303080]["Time"] = 86400
	tShuShanDuel_SkillCoat[3303081] = {}
	tShuShanDuel_SkillCoat[3303081]["EventType"] = 152
	tShuShanDuel_SkillCoat[3303081]["DataType"] = 45
	tShuShanDuel_SkillCoat[3303081]["MagicId"] = 1045
	tShuShanDuel_SkillCoat[3303081]["MgcEffectType"] = 2
	tShuShanDuel_SkillCoat[3303081]["Time"] = 86400
	tShuShanDuel_SkillCoat[3303082] = {}
	tShuShanDuel_SkillCoat[3303082]["EventType"] = 152
	tShuShanDuel_SkillCoat[3303082]["DataType"] = 46
	tShuShanDuel_SkillCoat[3303082]["MagicId"] = 12080
	tShuShanDuel_SkillCoat[3303082]["MgcEffectType"] = 3
	tShuShanDuel_SkillCoat[3303082]["Time"] = 86400
	tShuShanDuel_SkillCoat[3303083] = {}
	tShuShanDuel_SkillCoat[3303083]["EventType"] = 152
	tShuShanDuel_SkillCoat[3303083]["DataType"] = 47
	tShuShanDuel_SkillCoat[3303083]["MagicId"] = 10415
	tShuShanDuel_SkillCoat[3303083]["MgcEffectType"] = 1
	tShuShanDuel_SkillCoat[3303083]["Time"] = 86400
	tShuShanDuel_SkillCoat[3303693] = {}
	tShuShanDuel_SkillCoat[3303693]["EventType"] = 162
	tShuShanDuel_SkillCoat[3303693]["DataType"] = 04
	tShuShanDuel_SkillCoat[3303693]["MagicId"] = 1095
	tShuShanDuel_SkillCoat[3303693]["MgcEffectType"] = 1
	tShuShanDuel_SkillCoat[3303693]["Time"] = 86400

--奖励配置
local tShuShanDuel_Reward = {}
	tShuShanDuel_Reward["Strength"] = {}
	tShuShanDuel_Reward["Strength"]["RewardStrengthValue"] = {}
	tShuShanDuel_Reward["Strength"]["RewardStrengthValue"]["Value"] = 0
	tShuShanDuel_Reward["Strength"]["RewardItem"] = {}
	tShuShanDuel_Reward["Strength"]["RewardItem"][1] = {}
	tShuShanDuel_Reward["Strength"]["RewardItem"][1]["Id"] = 3302997
	tShuShanDuel_Reward["Strength"]["RewardItem"][1]["Attr"] = "0 1"
	tShuShanDuel_Reward["Strength"]["RewardItem"][2] = {}
	tShuShanDuel_Reward["Strength"]["RewardItem"][2]["Id"] = 3303136
	tShuShanDuel_Reward["Strength"]["RewardItem"][2]["Attr"] = "0 1 0 1440 1"
	tShuShanDuel_Reward["Strength"]["Log"] = "0,0,0,0,12000554,2,3303136[3302997],1[1]"
	
	--极品技能外套碎片
	tShuShanDuel_Reward[3301425] = {}
	tShuShanDuel_Reward[3301425][1] = {}
	tShuShanDuel_Reward[3301425][1]["DeleteItem"] = {}
	tShuShanDuel_Reward[3301425][1]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3301425][1]["DeleteItem"][1]["Id"] = 3301425
	tShuShanDuel_Reward[3301425][1]["DeleteItem"][1]["ItemNum"] = 10
	tShuShanDuel_Reward[3301425][1]["Log"] = "0,0,3301425,10,12000554,2,0,0"
	
	tShuShanDuel_Reward[3301425][10] = {}
	tShuShanDuel_Reward[3301425][10]["RewardItem"] = {}
	tShuShanDuel_Reward[3301425][10]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3301425][10]["RewardItem"][1]["Id"] = 3301425
	tShuShanDuel_Reward[3301425][10]["RewardItem"][1]["Attr"] = "0 10"
	tShuShanDuel_Reward[3301425][10]["Log"] = "0,0,0,0,12000554,2,3301425,10"
	
	tShuShanDuel_Reward[3301425][100] = {}
	tShuShanDuel_Reward[3301425][100]["DeleteItem"] = {}
	tShuShanDuel_Reward[3301425][100]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3301425][100]["DeleteItem"][1]["Id"] = 3301425
	tShuShanDuel_Reward[3301425][100]["DeleteItem"][1]["ItemNum"] = 100
	tShuShanDuel_Reward[3301425][100]["RewardItem"] = {}
	tShuShanDuel_Reward[3301425][100]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3301425][100]["RewardItem"][1]["Id"] = 3003830
	tShuShanDuel_Reward[3301425][100]["RewardItem"][1]["Attr"] = "0 1"
	tShuShanDuel_Reward[3301425][100]["Log"] = "0,0,3301425,100,12000554,2,3003830,1"
	
	--喵基尼武器外套（1天）礼包
	tShuShanDuel_Reward[3302732] = {}
	--绒绒喵星杖【魅力版】
	tShuShanDuel_Reward[3302732][1] = {}
	tShuShanDuel_Reward[3302732][1]["DeleteItem"] = {}
	tShuShanDuel_Reward[3302732][1]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3302732][1]["DeleteItem"][1]["Id"] = 3302732
	tShuShanDuel_Reward[3302732][1]["RewardItem"] = {}
	tShuShanDuel_Reward[3302732][1]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3302732][1]["RewardItem"][1]["Id"] = 360176
	tShuShanDuel_Reward[3302732][1]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tShuShanDuel_Reward[3302732][1]["Log"] = "0,0,3302732,1,12000554,2,360176,1"
	--酷酷喵星杖【魅力版】
	tShuShanDuel_Reward[3302732][2] = {}
	tShuShanDuel_Reward[3302732][2]["DeleteItem"] = {}
	tShuShanDuel_Reward[3302732][2]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3302732][2]["DeleteItem"][1]["Id"] = 3302732
	tShuShanDuel_Reward[3302732][2]["RewardItem"] = {}
	tShuShanDuel_Reward[3302732][2]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3302732][2]["RewardItem"][1]["Id"] = 350090
	tShuShanDuel_Reward[3302732][2]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tShuShanDuel_Reward[3302732][2]["Log"] = "0,0,3302732,1,12000554,2,350090,1"
	--挡挡铛【魅力版】
	tShuShanDuel_Reward[3302732][3] = {}
	tShuShanDuel_Reward[3302732][3]["DeleteItem"] = {}
	tShuShanDuel_Reward[3302732][3]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3302732][3]["DeleteItem"][1]["Id"] = 3302732
	tShuShanDuel_Reward[3302732][3]["RewardItem"] = {}
	tShuShanDuel_Reward[3302732][3]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3302732][3]["RewardItem"][1]["Id"] = 380046
	tShuShanDuel_Reward[3302732][3]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tShuShanDuel_Reward[3302732][3]["Log"] = "0,0,3302732,1,12000554,2,380046,1"
	--萌爪弓【魅力版】
	tShuShanDuel_Reward[3302732][4] = {}
	tShuShanDuel_Reward[3302732][4]["DeleteItem"] = {}
	tShuShanDuel_Reward[3302732][4]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3302732][4]["DeleteItem"][1]["Id"] = 3302732
	tShuShanDuel_Reward[3302732][4]["RewardItem"] = {}
	tShuShanDuel_Reward[3302732][4]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3302732][4]["RewardItem"][1]["Id"] = 370040
	tShuShanDuel_Reward[3302732][4]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tShuShanDuel_Reward[3302732][4]["Log"] = "0,0,3302732,1,12000554,2,370040,1"
	
	--喵基尼武器外套（7天）礼包
	tShuShanDuel_Reward[3306955] = {}
	--绒绒喵星杖【魅力版】
	tShuShanDuel_Reward[3306955][1] = {}
	tShuShanDuel_Reward[3306955][1]["DeleteItem"] = {}
	tShuShanDuel_Reward[3306955][1]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3306955][1]["DeleteItem"][1]["Id"] = 3306955
	tShuShanDuel_Reward[3306955][1]["RewardItem"] = {}
	tShuShanDuel_Reward[3306955][1]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3306955][1]["RewardItem"][1]["Id"] = 360176
	tShuShanDuel_Reward[3306955][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tShuShanDuel_Reward[3306955][1]["Log"] = "0,0,3306955,1,12000554,2,360176,1"
	--酷酷喵星杖【魅力版】
	tShuShanDuel_Reward[3306955][2] = {}
	tShuShanDuel_Reward[3306955][2]["DeleteItem"] = {}
	tShuShanDuel_Reward[3306955][2]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3306955][2]["DeleteItem"][1]["Id"] = 3306955
	tShuShanDuel_Reward[3306955][2]["RewardItem"] = {}
	tShuShanDuel_Reward[3306955][2]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3306955][2]["RewardItem"][1]["Id"] = 350090
	tShuShanDuel_Reward[3306955][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tShuShanDuel_Reward[3306955][2]["Log"] = "0,0,3306955,1,12000554,2,350090,1"
	--挡挡铛【魅力版】
	tShuShanDuel_Reward[3306955][3] = {}
	tShuShanDuel_Reward[3306955][3]["DeleteItem"] = {}
	tShuShanDuel_Reward[3306955][3]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3306955][3]["DeleteItem"][1]["Id"] = 3306955
	tShuShanDuel_Reward[3306955][3]["RewardItem"] = {}
	tShuShanDuel_Reward[3306955][3]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3306955][3]["RewardItem"][1]["Id"] = 380046
	tShuShanDuel_Reward[3306955][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tShuShanDuel_Reward[3306955][3]["Log"] = "0,0,3306955,1,12000554,2,380046,1"
	--萌爪弓【魅力版】
	tShuShanDuel_Reward[3306955][4] = {}
	tShuShanDuel_Reward[3306955][4]["DeleteItem"] = {}
	tShuShanDuel_Reward[3306955][4]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3306955][4]["DeleteItem"][1]["Id"] = 3306955
	tShuShanDuel_Reward[3306955][4]["RewardItem"] = {}
	tShuShanDuel_Reward[3306955][4]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3306955][4]["RewardItem"][1]["Id"] = 370040
	tShuShanDuel_Reward[3306955][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tShuShanDuel_Reward[3306955][4]["Log"] = "0,0,3306955,1,12000554,2,370040,1"
	--偶像武器外套（1天）礼包
	tShuShanDuel_Reward[3302733] = {}
	--春庭月·流光
	tShuShanDuel_Reward[3302733][1] = {}
	tShuShanDuel_Reward[3302733][1]["DeleteItem"] = {}
	tShuShanDuel_Reward[3302733][1]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3302733][1]["DeleteItem"][1]["Id"] = 3302733
	tShuShanDuel_Reward[3302733][1]["RewardItem"] = {}
	tShuShanDuel_Reward[3302733][1]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3302733][1]["RewardItem"][1]["Id"] = 350108
	tShuShanDuel_Reward[3302733][1]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tShuShanDuel_Reward[3302733][1]["Log"] = "0,0,3302733,1,12000554,2,350108,1"
	--凤求凰·流光
	tShuShanDuel_Reward[3302733][2] = {}
	tShuShanDuel_Reward[3302733][2]["DeleteItem"] = {}
	tShuShanDuel_Reward[3302733][2]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3302733][2]["DeleteItem"][1]["Id"] = 3302733
	tShuShanDuel_Reward[3302733][2]["RewardItem"] = {}
	tShuShanDuel_Reward[3302733][2]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3302733][2]["RewardItem"][1]["Id"] = 360208
	tShuShanDuel_Reward[3302733][2]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tShuShanDuel_Reward[3302733][2]["Log"] = "0,0,3302733,1,12000554,2,360208,1"
	--长相守·流光
	tShuShanDuel_Reward[3302733][3] = {}
	tShuShanDuel_Reward[3302733][3]["DeleteItem"] = {}
	tShuShanDuel_Reward[3302733][3]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3302733][3]["DeleteItem"][1]["Id"] = 3302733
	tShuShanDuel_Reward[3302733][3]["RewardItem"] = {}
	tShuShanDuel_Reward[3302733][3]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3302733][3]["RewardItem"][1]["Id"] = 380054
	tShuShanDuel_Reward[3302733][3]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tShuShanDuel_Reward[3302733][3]["Log"] = "0,0,3302733,1,12000554,2,380054,1"
	--长相思·流光
	tShuShanDuel_Reward[3302733][4] = {}
	tShuShanDuel_Reward[3302733][4]["DeleteItem"] = {}
	tShuShanDuel_Reward[3302733][4]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3302733][4]["DeleteItem"][1]["Id"] = 3302733
	tShuShanDuel_Reward[3302733][4]["RewardItem"] = {}
	tShuShanDuel_Reward[3302733][4]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3302733][4]["RewardItem"][1]["Id"] = 370048
	tShuShanDuel_Reward[3302733][4]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tShuShanDuel_Reward[3302733][4]["Log"] = "0,0,3302733,1,12000554,2,370048,1"
	
	--屠龙刀武器外套（1天）礼包
	tShuShanDuel_Reward[3302734] = {}
	--鎏金屠龙【长武】
	tShuShanDuel_Reward[3302734][1] = {}
	tShuShanDuel_Reward[3302734][1]["DeleteItem"] = {}
	tShuShanDuel_Reward[3302734][1]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3302734][1]["DeleteItem"][1]["Id"] = 3302734
	tShuShanDuel_Reward[3302734][1]["RewardItem"] = {}
	tShuShanDuel_Reward[3302734][1]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3302734][1]["RewardItem"][1]["Id"] = 350104
	tShuShanDuel_Reward[3302734][1]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tShuShanDuel_Reward[3302734][1]["Log"] = "0,0,3302734,1,12000554,2,350104,1"
	--鎏金屠龙【短武】
	tShuShanDuel_Reward[3302734][2] = {}
	tShuShanDuel_Reward[3302734][2]["DeleteItem"] = {}
	tShuShanDuel_Reward[3302734][2]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3302734][2]["DeleteItem"][1]["Id"] = 3302734
	tShuShanDuel_Reward[3302734][2]["RewardItem"] = {}
	tShuShanDuel_Reward[3302734][2]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3302734][2]["RewardItem"][1]["Id"] = 360202
	tShuShanDuel_Reward[3302734][2]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tShuShanDuel_Reward[3302734][2]["Log"] = "0,0,3302734,1,12000554,2,360202,1"
	
	--情人节武器外套（1天）礼包
	tShuShanDuel_Reward[3302735] = {}
	--玫瑰风暴【长武】
	tShuShanDuel_Reward[3302735][1] = {}
	tShuShanDuel_Reward[3302735][1]["DeleteItem"] = {}
	tShuShanDuel_Reward[3302735][1]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3302735][1]["DeleteItem"][1]["Id"] = 3302735
	tShuShanDuel_Reward[3302735][1]["RewardItem"] = {}
	tShuShanDuel_Reward[3302735][1]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3302735][1]["RewardItem"][1]["Id"] = 350079
	tShuShanDuel_Reward[3302735][1]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tShuShanDuel_Reward[3302735][1]["Log"] = "0,0,3302735,1,12000554,2,350079,1"
	--玫瑰风暴【短武】
	tShuShanDuel_Reward[3302735][2] = {}
	tShuShanDuel_Reward[3302735][2]["DeleteItem"] = {}
	tShuShanDuel_Reward[3302735][2]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3302735][2]["DeleteItem"][1]["Id"] = 3302735
	tShuShanDuel_Reward[3302735][2]["RewardItem"] = {}
	tShuShanDuel_Reward[3302735][2]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3302735][2]["RewardItem"][1]["Id"] = 360149
	tShuShanDuel_Reward[3302735][2]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tShuShanDuel_Reward[3302735][2]["Log"] = "0,0,3302735,1,12000554,2,360149,1"
	--爱心神盾
	tShuShanDuel_Reward[3302735][3] = {}
	tShuShanDuel_Reward[3302735][3]["DeleteItem"] = {}
	tShuShanDuel_Reward[3302735][3]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3302735][3]["DeleteItem"][1]["Id"] = 3302735
	tShuShanDuel_Reward[3302735][3]["RewardItem"] = {}
	tShuShanDuel_Reward[3302735][3]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3302735][3]["RewardItem"][1]["Id"] = 380003
	tShuShanDuel_Reward[3302735][3]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tShuShanDuel_Reward[3302735][3]["Log"] = "0,0,3302735,1,12000554,2,380003,1"
	--爱神金弓
	tShuShanDuel_Reward[3302735][4] = {}
	tShuShanDuel_Reward[3302735][4]["DeleteItem"] = {}
	tShuShanDuel_Reward[3302735][4]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3302735][4]["DeleteItem"][1]["Id"] = 3302735
	tShuShanDuel_Reward[3302735][4]["RewardItem"] = {}
	tShuShanDuel_Reward[3302735][4]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3302735][4]["RewardItem"][1]["Id"] = 370002
	tShuShanDuel_Reward[3302735][4]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tShuShanDuel_Reward[3302735][4]["Log"] = "0,0,3302735,1,12000554,2,370002,1"
	
	--喵基尼武器外套（3天）礼包
	tShuShanDuel_Reward[3302762] = {}
	--绒绒喵星杖【魅力版】
	tShuShanDuel_Reward[3302762][1] = {}
	tShuShanDuel_Reward[3302762][1]["DeleteItem"] = {}
	tShuShanDuel_Reward[3302762][1]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3302762][1]["DeleteItem"][1]["Id"] = 3302762
	tShuShanDuel_Reward[3302762][1]["RewardItem"] = {}
	tShuShanDuel_Reward[3302762][1]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3302762][1]["RewardItem"][1]["Id"] = 360176
	tShuShanDuel_Reward[3302762][1]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1"
	tShuShanDuel_Reward[3302762][1]["Log"] = "0,0,3302762,1,12000554,2,360176,1"
	--酷酷喵星杖【魅力版】
	tShuShanDuel_Reward[3302762][2] = {}
	tShuShanDuel_Reward[3302762][2]["DeleteItem"] = {}
	tShuShanDuel_Reward[3302762][2]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3302762][2]["DeleteItem"][1]["Id"] = 3302762
	tShuShanDuel_Reward[3302762][2]["RewardItem"] = {}
	tShuShanDuel_Reward[3302762][2]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3302762][2]["RewardItem"][1]["Id"] = 350090
	tShuShanDuel_Reward[3302762][2]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1"
	tShuShanDuel_Reward[3302762][2]["Log"] = "0,0,3302762,1,12000554,2,350090,1"
	--挡挡铛【魅力版】
	tShuShanDuel_Reward[3302762][3] = {}
	tShuShanDuel_Reward[3302762][3]["DeleteItem"] = {}
	tShuShanDuel_Reward[3302762][3]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3302762][3]["DeleteItem"][1]["Id"] = 3302762
	tShuShanDuel_Reward[3302762][3]["RewardItem"] = {}
	tShuShanDuel_Reward[3302762][3]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3302762][3]["RewardItem"][1]["Id"] = 380046
	tShuShanDuel_Reward[3302762][3]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1"
	tShuShanDuel_Reward[3302762][3]["Log"] = "0,0,3302762,1,12000554,2,380046,1"
	--萌爪弓【魅力版】
	tShuShanDuel_Reward[3302762][4] = {}
	tShuShanDuel_Reward[3302762][4]["DeleteItem"] = {}
	tShuShanDuel_Reward[3302762][4]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3302762][4]["DeleteItem"][1]["Id"] = 3302762
	tShuShanDuel_Reward[3302762][4]["RewardItem"] = {}
	tShuShanDuel_Reward[3302762][4]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3302762][4]["RewardItem"][1]["Id"] = 370040
	tShuShanDuel_Reward[3302762][4]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1"
	tShuShanDuel_Reward[3302762][4]["Log"] = "0,0,3302762,1,12000554,2,370040,1"
	
	--偶像武器外套（3天）礼包
	tShuShanDuel_Reward[3302763] = {}
	--春庭月·流光
	tShuShanDuel_Reward[3302763][1] = {}
	tShuShanDuel_Reward[3302763][1]["DeleteItem"] = {}
	tShuShanDuel_Reward[3302763][1]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3302763][1]["DeleteItem"][1]["Id"] = 3302763
	tShuShanDuel_Reward[3302763][1]["RewardItem"] = {}
	tShuShanDuel_Reward[3302763][1]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3302763][1]["RewardItem"][1]["Id"] = 350108
	tShuShanDuel_Reward[3302763][1]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1"
	tShuShanDuel_Reward[3302763][1]["Log"] = "0,0,3302763,1,12000554,2,350108,1"
	--凤求凰·流光
	tShuShanDuel_Reward[3302763][2] = {}
	tShuShanDuel_Reward[3302763][2]["DeleteItem"] = {}
	tShuShanDuel_Reward[3302763][2]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3302763][2]["DeleteItem"][1]["Id"] = 3302763
	tShuShanDuel_Reward[3302763][2]["RewardItem"] = {}
	tShuShanDuel_Reward[3302763][2]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3302763][2]["RewardItem"][1]["Id"] = 360208
	tShuShanDuel_Reward[3302763][2]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1"
	tShuShanDuel_Reward[3302763][2]["Log"] = "0,0,3302763,1,12000554,2,360208,1"
	--长相守·流光
	tShuShanDuel_Reward[3302763][3] = {}
	tShuShanDuel_Reward[3302763][3]["DeleteItem"] = {}
	tShuShanDuel_Reward[3302763][3]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3302763][3]["DeleteItem"][1]["Id"] = 3302763
	tShuShanDuel_Reward[3302763][3]["RewardItem"] = {}
	tShuShanDuel_Reward[3302763][3]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3302763][3]["RewardItem"][1]["Id"] = 380054
	tShuShanDuel_Reward[3302763][3]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1"
	tShuShanDuel_Reward[3302763][3]["Log"] = "0,0,3302763,1,12000554,2,380054,1"
	--长相思·流光
	tShuShanDuel_Reward[3302763][4] = {}
	tShuShanDuel_Reward[3302763][4]["DeleteItem"] = {}
	tShuShanDuel_Reward[3302763][4]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3302763][4]["DeleteItem"][1]["Id"] = 3302763
	tShuShanDuel_Reward[3302763][4]["RewardItem"] = {}
	tShuShanDuel_Reward[3302763][4]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3302763][4]["RewardItem"][1]["Id"] = 370048
	tShuShanDuel_Reward[3302763][4]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1"
	tShuShanDuel_Reward[3302763][4]["Log"] = "0,0,3302763,1,12000554,2,370048,1"
	
	--屠龙刀武器外套（3天）礼包
	tShuShanDuel_Reward[3302764] = {}
	--鎏金屠龙【长武】
	tShuShanDuel_Reward[3302764][1] = {}
	tShuShanDuel_Reward[3302764][1]["DeleteItem"] = {}
	tShuShanDuel_Reward[3302764][1]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3302764][1]["DeleteItem"][1]["Id"] = 3302764
	tShuShanDuel_Reward[3302764][1]["RewardItem"] = {}
	tShuShanDuel_Reward[3302764][1]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3302764][1]["RewardItem"][1]["Id"] = 350104
	tShuShanDuel_Reward[3302764][1]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1"
	tShuShanDuel_Reward[3302764][1]["Log"] = "0,0,3302764,1,12000554,2,350104,1"
	--鎏金屠龙【短武】
	tShuShanDuel_Reward[3302764][2] = {}
	tShuShanDuel_Reward[3302764][2]["DeleteItem"] = {}
	tShuShanDuel_Reward[3302764][2]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3302764][2]["DeleteItem"][1]["Id"] = 3302764
	tShuShanDuel_Reward[3302764][2]["RewardItem"] = {}
	tShuShanDuel_Reward[3302764][2]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3302764][2]["RewardItem"][1]["Id"] = 360202
	tShuShanDuel_Reward[3302764][2]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1"
	tShuShanDuel_Reward[3302764][2]["Log"] = "0,0,3302764,1,12000554,2,360202,1"
	
	--情人节武器外套（3天）礼包
	tShuShanDuel_Reward[3302765] = {}
	--玫瑰风暴【长武】
	tShuShanDuel_Reward[3302765][1] = {}
	tShuShanDuel_Reward[3302765][1]["DeleteItem"] = {}
	tShuShanDuel_Reward[3302765][1]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3302765][1]["DeleteItem"][1]["Id"] = 3302765
	tShuShanDuel_Reward[3302765][1]["RewardItem"] = {}
	tShuShanDuel_Reward[3302765][1]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3302765][1]["RewardItem"][1]["Id"] = 350079
	tShuShanDuel_Reward[3302765][1]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1"
	tShuShanDuel_Reward[3302765][1]["Log"] = "0,0,3302765,1,12000554,2,350079,1"
	--玫瑰风暴【短武】
	tShuShanDuel_Reward[3302765][2] = {}
	tShuShanDuel_Reward[3302765][2]["DeleteItem"] = {}
	tShuShanDuel_Reward[3302765][2]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3302765][2]["DeleteItem"][1]["Id"] = 3302765
	tShuShanDuel_Reward[3302765][2]["RewardItem"] = {}
	tShuShanDuel_Reward[3302765][2]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3302765][2]["RewardItem"][1]["Id"] = 360149
	tShuShanDuel_Reward[3302765][2]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1"
	tShuShanDuel_Reward[3302765][2]["Log"] = "0,0,3302765,1,12000554,2,360149,1"
	--爱心神盾
	tShuShanDuel_Reward[3302765][3] = {}
	tShuShanDuel_Reward[3302765][3]["DeleteItem"] = {}
	tShuShanDuel_Reward[3302765][3]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3302765][3]["DeleteItem"][1]["Id"] = 3302765
	tShuShanDuel_Reward[3302765][3]["RewardItem"] = {}
	tShuShanDuel_Reward[3302765][3]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3302765][3]["RewardItem"][1]["Id"] = 380003
	tShuShanDuel_Reward[3302765][3]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1"
	tShuShanDuel_Reward[3302765][3]["Log"] = "0,0,3302765,1,12000554,2,380003,1"
	--爱神金弓
	tShuShanDuel_Reward[3302765][4] = {}
	tShuShanDuel_Reward[3302765][4]["DeleteItem"] = {}
	tShuShanDuel_Reward[3302765][4]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3302765][4]["DeleteItem"][1]["Id"] = 3302765
	tShuShanDuel_Reward[3302765][4]["RewardItem"] = {}
	tShuShanDuel_Reward[3302765][4]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3302765][4]["RewardItem"][1]["Id"] = 370002
	tShuShanDuel_Reward[3302765][4]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1"
	tShuShanDuel_Reward[3302765][4]["Log"] = "0,0,3302765,1,12000554,2,370002,1"
	
	--豪华技能外套包
	tShuShanDuel_Reward[3303136] = {}
	--地狱烈焰【极品】技能外套
	tShuShanDuel_Reward[3303136][1] = {}
	tShuShanDuel_Reward[3303136][1]["DeleteItem"] = {}
	tShuShanDuel_Reward[3303136][1]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3303136][1]["DeleteItem"][1]["Id"] = 3303136
	tShuShanDuel_Reward[3303136][1]["RewardItem"] = {}
	tShuShanDuel_Reward[3303136][1]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3303136][1]["RewardItem"][1]["Id"] = 3303078
	tShuShanDuel_Reward[3303136][1]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tShuShanDuel_Reward[3303136][1]["Log"] = "0,0,3303136,1,12000554,2,3303078,1"
	--万箭齐发【极品】技能外套
	tShuShanDuel_Reward[3303136][2] = {}
	tShuShanDuel_Reward[3303136][2]["DeleteItem"] = {}
	tShuShanDuel_Reward[3303136][2]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3303136][2]["DeleteItem"][1]["Id"] = 3303136
	tShuShanDuel_Reward[3303136][2]["RewardItem"] = {}
	tShuShanDuel_Reward[3303136][2]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3303136][2]["RewardItem"][1]["Id"] = 3303079
	tShuShanDuel_Reward[3303136][2]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tShuShanDuel_Reward[3303136][2]["Log"] = "0,0,3303136,1,12000554,2,3303079,1"
	--紫刃斩天【极品】技能外套
	tShuShanDuel_Reward[3303136][3] = {}
	tShuShanDuel_Reward[3303136][3]["DeleteItem"] = {}
	tShuShanDuel_Reward[3303136][3]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3303136][3]["DeleteItem"][1]["Id"] = 3303136
	tShuShanDuel_Reward[3303136][3]["RewardItem"] = {}
	tShuShanDuel_Reward[3303136][3]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3303136][3]["RewardItem"][1]["Id"] = 3303081
	tShuShanDuel_Reward[3303136][3]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tShuShanDuel_Reward[3303136][3]["Log"] = "0,0,3303136,1,12000554,2,3303081,1"
	--天火流星落【极品】技能外套
	tShuShanDuel_Reward[3303136][4] = {}
	tShuShanDuel_Reward[3303136][4]["DeleteItem"] = {}
	tShuShanDuel_Reward[3303136][4]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3303136][4]["DeleteItem"][1]["Id"] = 3303136
	tShuShanDuel_Reward[3303136][4]["RewardItem"] = {}
	tShuShanDuel_Reward[3303136][4]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3303136][4]["RewardItem"][1]["Id"] = 3303080
	tShuShanDuel_Reward[3303136][4]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tShuShanDuel_Reward[3303136][4]["Log"] = "0,0,3303136,1,12000554,2,3303080,1"
	--炽日天剑技能外套
	tShuShanDuel_Reward[3303136][5] = {}
	tShuShanDuel_Reward[3303136][5]["DeleteItem"] = {}
	tShuShanDuel_Reward[3303136][5]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3303136][5]["DeleteItem"][1]["Id"] = 3303136
	tShuShanDuel_Reward[3303136][5]["RewardItem"] = {}
	tShuShanDuel_Reward[3303136][5]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3303136][5]["RewardItem"][1]["Id"] = 3303082
	tShuShanDuel_Reward[3303136][5]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tShuShanDuel_Reward[3303136][5]["Log"] = "0,0,3303136,1,12000554,2,3303082,1"
	--龙卷狂沙技能外套
	tShuShanDuel_Reward[3303136][6] = {}
	tShuShanDuel_Reward[3303136][6]["DeleteItem"] = {}
	tShuShanDuel_Reward[3303136][6]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3303136][6]["DeleteItem"][1]["Id"] = 3303136
	tShuShanDuel_Reward[3303136][6]["RewardItem"] = {}
	tShuShanDuel_Reward[3303136][6]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3303136][6]["RewardItem"][1]["Id"] = 3303071
	tShuShanDuel_Reward[3303136][6]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tShuShanDuel_Reward[3303136][6]["Log"] = "0,0,3303136,1,12000554,2,3303071,1"
	--致命电流技能外套
	tShuShanDuel_Reward[3303136][7] = {}
	tShuShanDuel_Reward[3303136][7]["DeleteItem"] = {}
	tShuShanDuel_Reward[3303136][7]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3303136][7]["DeleteItem"][1]["Id"] = 3303136
	tShuShanDuel_Reward[3303136][7]["RewardItem"] = {}
	tShuShanDuel_Reward[3303136][7]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3303136][7]["RewardItem"][1]["Id"] = 3303072
	tShuShanDuel_Reward[3303136][7]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tShuShanDuel_Reward[3303136][7]["Log"] = "0,0,3303136,1,12000554,2,3303072,1"
	--无影黑旋风技能外套
	tShuShanDuel_Reward[3303136][8] = {}
	tShuShanDuel_Reward[3303136][8]["DeleteItem"] = {}
	tShuShanDuel_Reward[3303136][8]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3303136][8]["DeleteItem"][1]["Id"] = 3303136
	tShuShanDuel_Reward[3303136][8]["RewardItem"] = {}
	tShuShanDuel_Reward[3303136][8]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3303136][8]["RewardItem"][1]["Id"] = 3303083
	tShuShanDuel_Reward[3303136][8]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tShuShanDuel_Reward[3303136][8]["Log"] = "0,0,3303136,1,12000554,2,3303083,1"
	--幸运四叶草技能外套
	tShuShanDuel_Reward[3303136][9] = {}
	tShuShanDuel_Reward[3303136][9]["DeleteItem"] = {}
	tShuShanDuel_Reward[3303136][9]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3303136][9]["DeleteItem"][1]["Id"] = 3303136
	tShuShanDuel_Reward[3303136][9]["RewardItem"] = {}
	tShuShanDuel_Reward[3303136][9]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3303136][9]["RewardItem"][1]["Id"] = 3303693
	tShuShanDuel_Reward[3303136][9]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tShuShanDuel_Reward[3303136][9]["Log"] = "0,0,3303136,1,12000554,2,3303693,1"
	
-- 技能外套体验包（1天）
	tShuShanDuel_Reward[3305623] = {}
	--地狱烈焰【极品】技能外套
	tShuShanDuel_Reward[3305623][1] = {}
	tShuShanDuel_Reward[3305623][1]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305623][1]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305623][1]["DeleteItem"][1]["Id"] = 3305623
	tShuShanDuel_Reward[3305623][1]["RewardItem"] = {}
	tShuShanDuel_Reward[3305623][1]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305623][1]["RewardItem"][1]["Id"] = 3303078
	tShuShanDuel_Reward[3305623][1]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tShuShanDuel_Reward[3305623][1]["Log"] = "0,0,3305623,1,12000554,2,3303078,1"
	--万箭齐发【极品】技能外套
	tShuShanDuel_Reward[3305623][2] = {}
	tShuShanDuel_Reward[3305623][2]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305623][2]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305623][2]["DeleteItem"][1]["Id"] = 3305623
	tShuShanDuel_Reward[3305623][2]["RewardItem"] = {}
	tShuShanDuel_Reward[3305623][2]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305623][2]["RewardItem"][1]["Id"] = 3303079
	tShuShanDuel_Reward[3305623][2]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tShuShanDuel_Reward[3305623][2]["Log"] = "0,0,3305623,1,12000554,2,3303079,1"
	--紫刃斩天【极品】技能外套
	tShuShanDuel_Reward[3305623][3] = {}
	tShuShanDuel_Reward[3305623][3]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305623][3]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305623][3]["DeleteItem"][1]["Id"] = 3305623
	tShuShanDuel_Reward[3305623][3]["RewardItem"] = {}
	tShuShanDuel_Reward[3305623][3]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305623][3]["RewardItem"][1]["Id"] = 3303081
	tShuShanDuel_Reward[3305623][3]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tShuShanDuel_Reward[3305623][3]["Log"] = "0,0,3305623,1,12000554,2,3303081,1"
	--天火流星落【极品】技能外套
	tShuShanDuel_Reward[3305623][4] = {}
	tShuShanDuel_Reward[3305623][4]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305623][4]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305623][4]["DeleteItem"][1]["Id"] = 3305623
	tShuShanDuel_Reward[3305623][4]["RewardItem"] = {}
	tShuShanDuel_Reward[3305623][4]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305623][4]["RewardItem"][1]["Id"] = 3303080
	tShuShanDuel_Reward[3305623][4]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tShuShanDuel_Reward[3305623][4]["Log"] = "0,0,3305623,1,12000554,2,3303080,1"
	--炽日天剑技能外套
	tShuShanDuel_Reward[3305623][5] = {}
	tShuShanDuel_Reward[3305623][5]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305623][5]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305623][5]["DeleteItem"][1]["Id"] = 3305623
	tShuShanDuel_Reward[3305623][5]["RewardItem"] = {}
	tShuShanDuel_Reward[3305623][5]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305623][5]["RewardItem"][1]["Id"] = 3303082
	tShuShanDuel_Reward[3305623][5]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tShuShanDuel_Reward[3305623][5]["Log"] = "0,0,3305623,1,12000554,2,3303082,1"
	--龙卷狂沙技能外套
	tShuShanDuel_Reward[3305623][6] = {}
	tShuShanDuel_Reward[3305623][6]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305623][6]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305623][6]["DeleteItem"][1]["Id"] = 3305623
	tShuShanDuel_Reward[3305623][6]["RewardItem"] = {}
	tShuShanDuel_Reward[3305623][6]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305623][6]["RewardItem"][1]["Id"] = 3303071
	tShuShanDuel_Reward[3305623][6]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tShuShanDuel_Reward[3305623][6]["Log"] = "0,0,3305623,1,12000554,2,3303071,1"
	--致命电流技能外套
	tShuShanDuel_Reward[3305623][7] = {}
	tShuShanDuel_Reward[3305623][7]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305623][7]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305623][7]["DeleteItem"][1]["Id"] = 3305623
	tShuShanDuel_Reward[3305623][7]["RewardItem"] = {}
	tShuShanDuel_Reward[3305623][7]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305623][7]["RewardItem"][1]["Id"] = 3303072
	tShuShanDuel_Reward[3305623][7]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tShuShanDuel_Reward[3305623][7]["Log"] = "0,0,3305623,1,12000554,2,3303072,1"
	--无影黑旋风技能外套
	tShuShanDuel_Reward[3305623][8] = {}
	tShuShanDuel_Reward[3305623][8]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305623][8]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305623][8]["DeleteItem"][1]["Id"] = 3305623
	tShuShanDuel_Reward[3305623][8]["RewardItem"] = {}
	tShuShanDuel_Reward[3305623][8]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305623][8]["RewardItem"][1]["Id"] = 3303083
	tShuShanDuel_Reward[3305623][8]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tShuShanDuel_Reward[3305623][8]["Log"] = "0,0,3305623,1,12000554,2,3303083,1"
	--幸运四叶草技能外套
	tShuShanDuel_Reward[3305623][9] = {}
	tShuShanDuel_Reward[3305623][9]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305623][9]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305623][9]["DeleteItem"][1]["Id"] = 3305623
	tShuShanDuel_Reward[3305623][9]["RewardItem"] = {}
	tShuShanDuel_Reward[3305623][9]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305623][9]["RewardItem"][1]["Id"] = 3303693
	tShuShanDuel_Reward[3305623][9]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tShuShanDuel_Reward[3305623][9]["Log"] = "0,0,3305623,1,12000554,2,3303693,1"
	
-- 技能外套体验包（7天）
	tShuShanDuel_Reward[3305624] = {}
	--地狱烈焰【极品】技能外套
	tShuShanDuel_Reward[3305624][1] = {}
	tShuShanDuel_Reward[3305624][1]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305624][1]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305624][1]["DeleteItem"][1]["Id"] = 3305624
	tShuShanDuel_Reward[3305624][1]["RewardItem"] = {}
	tShuShanDuel_Reward[3305624][1]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305624][1]["RewardItem"][1]["Id"] = 3303078
	tShuShanDuel_Reward[3305624][1]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tShuShanDuel_Reward[3305624][1]["Log"] = "0,0,3305624,1,12000554,2,3303078,1"
	--万箭齐发【极品】技能外套
	tShuShanDuel_Reward[3305624][2] = {}
	tShuShanDuel_Reward[3305624][2]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305624][2]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305624][2]["DeleteItem"][1]["Id"] = 3305624
	tShuShanDuel_Reward[3305624][2]["RewardItem"] = {}
	tShuShanDuel_Reward[3305624][2]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305624][2]["RewardItem"][1]["Id"] = 3303079
	tShuShanDuel_Reward[3305624][2]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tShuShanDuel_Reward[3305624][2]["Log"] = "0,0,3305624,1,12000554,2,3303079,1"
	--紫刃斩天【极品】技能外套
	tShuShanDuel_Reward[3305624][3] = {}
	tShuShanDuel_Reward[3305624][3]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305624][3]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305624][3]["DeleteItem"][1]["Id"] = 3305624
	tShuShanDuel_Reward[3305624][3]["RewardItem"] = {}
	tShuShanDuel_Reward[3305624][3]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305624][3]["RewardItem"][1]["Id"] = 3303081
	tShuShanDuel_Reward[3305624][3]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tShuShanDuel_Reward[3305624][3]["Log"] = "0,0,3305624,1,12000554,2,3303081,1"
	--天火流星落【极品】技能外套
	tShuShanDuel_Reward[3305624][4] = {}
	tShuShanDuel_Reward[3305624][4]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305624][4]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305624][4]["DeleteItem"][1]["Id"] = 3305624
	tShuShanDuel_Reward[3305624][4]["RewardItem"] = {}
	tShuShanDuel_Reward[3305624][4]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305624][4]["RewardItem"][1]["Id"] = 3303080
	tShuShanDuel_Reward[3305624][4]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tShuShanDuel_Reward[3305624][4]["Log"] = "0,0,3305624,1,12000554,2,3303080,1"
	--炽日天剑技能外套
	tShuShanDuel_Reward[3305624][5] = {}
	tShuShanDuel_Reward[3305624][5]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305624][5]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305624][5]["DeleteItem"][1]["Id"] = 3305624
	tShuShanDuel_Reward[3305624][5]["RewardItem"] = {}
	tShuShanDuel_Reward[3305624][5]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305624][5]["RewardItem"][1]["Id"] = 3303082
	tShuShanDuel_Reward[3305624][5]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tShuShanDuel_Reward[3305624][5]["Log"] = "0,0,3305624,1,12000554,2,3303082,1"
	--龙卷狂沙技能外套
	tShuShanDuel_Reward[3305624][6] = {}
	tShuShanDuel_Reward[3305624][6]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305624][6]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305624][6]["DeleteItem"][1]["Id"] = 3305624
	tShuShanDuel_Reward[3305624][6]["RewardItem"] = {}
	tShuShanDuel_Reward[3305624][6]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305624][6]["RewardItem"][1]["Id"] = 3303071
	tShuShanDuel_Reward[3305624][6]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tShuShanDuel_Reward[3305624][6]["Log"] = "0,0,3305624,1,12000554,2,3303071,1"
	--致命电流技能外套
	tShuShanDuel_Reward[3305624][7] = {}
	tShuShanDuel_Reward[3305624][7]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305624][7]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305624][7]["DeleteItem"][1]["Id"] = 3305624
	tShuShanDuel_Reward[3305624][7]["RewardItem"] = {}
	tShuShanDuel_Reward[3305624][7]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305624][7]["RewardItem"][1]["Id"] = 3303072
	tShuShanDuel_Reward[3305624][7]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tShuShanDuel_Reward[3305624][7]["Log"] = "0,0,3305624,1,12000554,2,3303072,1"
	--无影黑旋风技能外套
	tShuShanDuel_Reward[3305624][8] = {}
	tShuShanDuel_Reward[3305624][8]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305624][8]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305624][8]["DeleteItem"][1]["Id"] = 3305624
	tShuShanDuel_Reward[3305624][8]["RewardItem"] = {}
	tShuShanDuel_Reward[3305624][8]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305624][8]["RewardItem"][1]["Id"] = 3303083
	tShuShanDuel_Reward[3305624][8]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tShuShanDuel_Reward[3305624][8]["Log"] = "0,0,3305624,1,12000554,2,3303083,1"
	--幸运四叶草技能外套
	tShuShanDuel_Reward[3305624][9] = {}
	tShuShanDuel_Reward[3305624][9]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305624][9]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305624][9]["DeleteItem"][1]["Id"] = 3305624
	tShuShanDuel_Reward[3305624][9]["RewardItem"] = {}
	tShuShanDuel_Reward[3305624][9]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305624][9]["RewardItem"][1]["Id"] = 3303693
	tShuShanDuel_Reward[3305624][9]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tShuShanDuel_Reward[3305624][9]["Log"] = "0,0,3305624,1,12000554,2,3303693,1"
	
-- 武器外套包
	tShuShanDuel_Reward[3305621] = {}
	--春庭月·流光
	tShuShanDuel_Reward[3305621][1] = {}
	tShuShanDuel_Reward[3305621][1]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305621][1]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305621][1]["DeleteItem"][1]["Id"] = 3305621
	tShuShanDuel_Reward[3305621][1]["RewardItem"] = {}
	tShuShanDuel_Reward[3305621][1]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305621][1]["RewardItem"][1]["Id"] = 350108
	tShuShanDuel_Reward[3305621][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tShuShanDuel_Reward[3305621][1]["Log"] = "0,0,3305621,1,12000554,2,350108,1"
	--凤求凰·流光
	tShuShanDuel_Reward[3305621][2] = {}
	tShuShanDuel_Reward[3305621][2]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305621][2]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305621][2]["DeleteItem"][1]["Id"] = 3305621
	tShuShanDuel_Reward[3305621][2]["RewardItem"] = {}
	tShuShanDuel_Reward[3305621][2]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305621][2]["RewardItem"][1]["Id"] = 360208
	tShuShanDuel_Reward[3305621][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tShuShanDuel_Reward[3305621][2]["Log"] = "0,0,3305621,1,12000554,2,360208,1"
	--长相守·流光
	tShuShanDuel_Reward[3305621][3] = {}
	tShuShanDuel_Reward[3305621][3]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305621][3]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305621][3]["DeleteItem"][1]["Id"] = 3305621
	tShuShanDuel_Reward[3305621][3]["RewardItem"] = {}
	tShuShanDuel_Reward[3305621][3]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305621][3]["RewardItem"][1]["Id"] = 380054
	tShuShanDuel_Reward[3305621][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tShuShanDuel_Reward[3305621][3]["Log"] = "0,0,3305621,1,12000554,2,380054,1"
	--长相思·流光
	tShuShanDuel_Reward[3305621][4] = {}
	tShuShanDuel_Reward[3305621][4]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305621][4]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305621][4]["DeleteItem"][1]["Id"] = 3305621
	tShuShanDuel_Reward[3305621][4]["RewardItem"] = {}
	tShuShanDuel_Reward[3305621][4]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305621][4]["RewardItem"][1]["Id"] = 370048
	tShuShanDuel_Reward[3305621][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tShuShanDuel_Reward[3305621][4]["Log"] = "0,0,3305621,1,12000554,2,370048,1"
	--灿银屠龙【长武】
	tShuShanDuel_Reward[3305621][5] = {}
	tShuShanDuel_Reward[3305621][5]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305621][5]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305621][5]["DeleteItem"][1]["Id"] = 3305621
	tShuShanDuel_Reward[3305621][5]["RewardItem"] = {}
	tShuShanDuel_Reward[3305621][5]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305621][5]["RewardItem"][1]["Id"] = 350103
	tShuShanDuel_Reward[3305621][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tShuShanDuel_Reward[3305621][5]["Log"] = "0,0,3305621,1,12000554,2,350103,1"
	--灿银屠龙【短武】
	tShuShanDuel_Reward[3305621][6] = {}
	tShuShanDuel_Reward[3305621][6]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305621][6]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305621][6]["DeleteItem"][1]["Id"] = 3305621
	tShuShanDuel_Reward[3305621][6]["RewardItem"] = {}
	tShuShanDuel_Reward[3305621][6]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305621][6]["RewardItem"][1]["Id"] = 360201
	tShuShanDuel_Reward[3305621][6]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tShuShanDuel_Reward[3305621][6]["Log"] = "0,0,3305621,1,12000554,2,360201,1"
	--玫瑰风暴【长武】
	tShuShanDuel_Reward[3305621][7] = {}
	tShuShanDuel_Reward[3305621][7]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305621][7]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305621][7]["DeleteItem"][1]["Id"] = 3305621
	tShuShanDuel_Reward[3305621][7]["RewardItem"] = {}
	tShuShanDuel_Reward[3305621][7]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305621][7]["RewardItem"][1]["Id"] = 350079
	tShuShanDuel_Reward[3305621][7]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tShuShanDuel_Reward[3305621][7]["Log"] = "0,0,3305621,1,12000554,2,350079,1"
	--玫瑰风暴【短武】
	tShuShanDuel_Reward[3305621][8] = {}
	tShuShanDuel_Reward[3305621][8]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305621][8]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305621][8]["DeleteItem"][1]["Id"] = 3305621
	tShuShanDuel_Reward[3305621][8]["RewardItem"] = {}
	tShuShanDuel_Reward[3305621][8]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305621][8]["RewardItem"][1]["Id"] = 360149
	tShuShanDuel_Reward[3305621][8]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tShuShanDuel_Reward[3305621][8]["Log"] = "0,0,3305621,1,12000554,2,360149,1"
	--爱心神盾
	tShuShanDuel_Reward[3305621][9] = {}
	tShuShanDuel_Reward[3305621][9]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305621][9]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305621][9]["DeleteItem"][1]["Id"] = 3305621
	tShuShanDuel_Reward[3305621][9]["RewardItem"] = {}
	tShuShanDuel_Reward[3305621][9]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305621][9]["RewardItem"][1]["Id"] = 380003
	tShuShanDuel_Reward[3305621][9]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tShuShanDuel_Reward[3305621][9]["Log"] = "0,0,3305621,1,12000554,2,380003,1"
	--爱神金弓
	tShuShanDuel_Reward[3305621][10] = {}
	tShuShanDuel_Reward[3305621][10]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305621][10]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305621][10]["DeleteItem"][1]["Id"] = 3305621
	tShuShanDuel_Reward[3305621][10]["RewardItem"] = {}
	tShuShanDuel_Reward[3305621][10]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305621][10]["RewardItem"][1]["Id"] = 370002
	tShuShanDuel_Reward[3305621][10]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tShuShanDuel_Reward[3305621][10]["Log"] = "0,0,3305621,1,12000554,2,370002,1"
	
-- 五星服装体验包（3天）
	tShuShanDuel_Reward[3305622] = {}
	--地狱烈焰【极品】技能外套
	tShuShanDuel_Reward[3305622][1] = {}
	tShuShanDuel_Reward[3305622][1]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305622][1]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305622][1]["DeleteItem"][1]["Id"] = 3305622
	tShuShanDuel_Reward[3305622][1]["RewardItem"] = {}
	tShuShanDuel_Reward[3305622][1]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305622][1]["RewardItem"][1]["Id"] = 189065
	tShuShanDuel_Reward[3305622][1]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1"
	tShuShanDuel_Reward[3305622][1]["Log"] = "0,0,3305622,1,12000554,2,189065,1"
	--万箭齐发【极品】技能外套
	tShuShanDuel_Reward[3305622][2] = {}
	tShuShanDuel_Reward[3305622][2]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305622][2]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305622][2]["DeleteItem"][1]["Id"] = 3305622
	tShuShanDuel_Reward[3305622][2]["RewardItem"] = {}
	tShuShanDuel_Reward[3305622][2]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305622][2]["RewardItem"][1]["Id"] = 188915
	tShuShanDuel_Reward[3305622][2]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1"
	tShuShanDuel_Reward[3305622][2]["Log"] = "0,0,3305622,1,12000554,2,188915,1"
	--紫刃斩天【极品】技能外套
	tShuShanDuel_Reward[3305622][3] = {}
	tShuShanDuel_Reward[3305622][3]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305622][3]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305622][3]["DeleteItem"][1]["Id"] = 3305622
	tShuShanDuel_Reward[3305622][3]["RewardItem"] = {}
	tShuShanDuel_Reward[3305622][3]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305622][3]["RewardItem"][1]["Id"] = 189675
	tShuShanDuel_Reward[3305622][3]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1"
	tShuShanDuel_Reward[3305622][3]["Log"] = "0,0,3305622,1,12000554,2,189675,1"
	--天火流星落【极品】技能外套
	tShuShanDuel_Reward[3305622][4] = {}
	tShuShanDuel_Reward[3305622][4]["DeleteItem"] = {}
	tShuShanDuel_Reward[3305622][4]["DeleteItem"][1] = {}
	tShuShanDuel_Reward[3305622][4]["DeleteItem"][1]["Id"] = 3305622
	tShuShanDuel_Reward[3305622][4]["RewardItem"] = {}
	tShuShanDuel_Reward[3305622][4]["RewardItem"][1] = {}
	tShuShanDuel_Reward[3305622][4]["RewardItem"][1]["Id"] = 193555
	tShuShanDuel_Reward[3305622][4]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1"
	tShuShanDuel_Reward[3305622][4]["Log"] = "0,0,3305622,1,12000554,2,193555,1"
	
--礼包随机
local tShuShanDuel_RewardRandom = {}
	--地狱烈焰【极品】技能外套包
	tShuShanDuel_RewardRandom[3302736] = {}
	tShuShanDuel_RewardRandom[3302736][1] = {}
	tShuShanDuel_RewardRandom[3302736][1]["ItemChanceSum"] = 10000
	tShuShanDuel_RewardRandom[3302736][1][1] = {}
	tShuShanDuel_RewardRandom[3302736][1][1]["RandomItemChanceType"] = 2
	tShuShanDuel_RewardRandom[3302736][1][1]["ItemChance"] = 8500
	tShuShanDuel_RewardRandom[3302736][1][1]["RewardItem"] = {}
	tShuShanDuel_RewardRandom[3302736][1][1]["RewardItem"][1] = {}
	tShuShanDuel_RewardRandom[3302736][1][1]["RewardItem"][1]["Id"] = 3303078
	tShuShanDuel_RewardRandom[3302736][1][1]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tShuShanDuel_RewardRandom[3302736][1][1]["Log"] = "0,0,3302736,1,12000554,2,3303078,1"
	tShuShanDuel_RewardRandom[3302736][1][2] = {}
	tShuShanDuel_RewardRandom[3302736][1][2]["RandomItemChanceType"] = 2
	tShuShanDuel_RewardRandom[3302736][1][2]["ItemChance"] = 1500
	tShuShanDuel_RewardRandom[3302736][1][2]["RewardItem"] = {}
	tShuShanDuel_RewardRandom[3302736][1][2]["RewardItem"][1] = {}
	tShuShanDuel_RewardRandom[3302736][1][2]["RewardItem"][1]["Id"] = 3301425
	tShuShanDuel_RewardRandom[3302736][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tShuShanDuel_RewardRandom[3302736][1][2]["Log"] = "0,0,3302736,1,12000554,2,3301425,1"
	
	--万箭齐发【极品】技能外套包
	tShuShanDuel_RewardRandom[3302737] = {}
	tShuShanDuel_RewardRandom[3302737][1] = {}
	tShuShanDuel_RewardRandom[3302737][1]["ItemChanceSum"] = 10000
	tShuShanDuel_RewardRandom[3302737][1][1] = {}
	tShuShanDuel_RewardRandom[3302737][1][1]["RandomItemChanceType"] = 2
	tShuShanDuel_RewardRandom[3302737][1][1]["ItemChance"] = 8500
	tShuShanDuel_RewardRandom[3302737][1][1]["RewardItem"] = {}
	tShuShanDuel_RewardRandom[3302737][1][1]["RewardItem"][1] = {}
	tShuShanDuel_RewardRandom[3302737][1][1]["RewardItem"][1]["Id"] = 3303079
	tShuShanDuel_RewardRandom[3302737][1][1]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tShuShanDuel_RewardRandom[3302737][1][1]["Log"] = "0,0,3302737,1,12000554,2,3303079,1"
	tShuShanDuel_RewardRandom[3302737][1][2] = {}
	tShuShanDuel_RewardRandom[3302737][1][2]["RandomItemChanceType"] = 2
	tShuShanDuel_RewardRandom[3302737][1][2]["ItemChance"] = 1500
	tShuShanDuel_RewardRandom[3302737][1][2]["RewardItem"] = {}
	tShuShanDuel_RewardRandom[3302737][1][2]["RewardItem"][1] = {}
	tShuShanDuel_RewardRandom[3302737][1][2]["RewardItem"][1]["Id"] = 3301425
	tShuShanDuel_RewardRandom[3302737][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tShuShanDuel_RewardRandom[3302737][1][2]["Log"] = "0,0,3302737,1,12000554,2,3301425,1"
	
	--龙卷狂沙技能外套包
	tShuShanDuel_RewardRandom[3302738] = {}
	tShuShanDuel_RewardRandom[3302738][1] = {}
	tShuShanDuel_RewardRandom[3302738][1]["ItemChanceSum"] = 10000
	tShuShanDuel_RewardRandom[3302738][1][1] = {}
	tShuShanDuel_RewardRandom[3302738][1][1]["RandomItemChanceType"] = 2
	tShuShanDuel_RewardRandom[3302738][1][1]["ItemChance"] = 8500
	tShuShanDuel_RewardRandom[3302738][1][1]["RewardItem"] = {}
	tShuShanDuel_RewardRandom[3302738][1][1]["RewardItem"][1] = {}
	tShuShanDuel_RewardRandom[3302738][1][1]["RewardItem"][1]["Id"] = 3303071
	tShuShanDuel_RewardRandom[3302738][1][1]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tShuShanDuel_RewardRandom[3302738][1][1]["Log"] = "0,0,3302738,1,12000554,2,3303071,1"
	tShuShanDuel_RewardRandom[3302738][1][2] = {}
	tShuShanDuel_RewardRandom[3302738][1][2]["RandomItemChanceType"] = 2
	tShuShanDuel_RewardRandom[3302738][1][2]["ItemChance"] = 1500
	tShuShanDuel_RewardRandom[3302738][1][2]["RewardItem"] = {}
	tShuShanDuel_RewardRandom[3302738][1][2]["RewardItem"][1] = {}
	tShuShanDuel_RewardRandom[3302738][1][2]["RewardItem"][1]["Id"] = 3301425
	tShuShanDuel_RewardRandom[3302738][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tShuShanDuel_RewardRandom[3302738][1][2]["Log"] = "0,0,3302738,1,12000554,2,3301425,1"
	
	--天火流星落【极品】技能外套包
	tShuShanDuel_RewardRandom[3302739] = {}
	tShuShanDuel_RewardRandom[3302739][1] = {}
	tShuShanDuel_RewardRandom[3302739][1]["ItemChanceSum"] = 10000
	tShuShanDuel_RewardRandom[3302739][1][1] = {}
	tShuShanDuel_RewardRandom[3302739][1][1]["RandomItemChanceType"] = 2
	tShuShanDuel_RewardRandom[3302739][1][1]["ItemChance"] = 8500
	tShuShanDuel_RewardRandom[3302739][1][1]["RewardItem"] = {}
	tShuShanDuel_RewardRandom[3302739][1][1]["RewardItem"][1] = {}
	tShuShanDuel_RewardRandom[3302739][1][1]["RewardItem"][1]["Id"] = 3303080
	tShuShanDuel_RewardRandom[3302739][1][1]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tShuShanDuel_RewardRandom[3302739][1][1]["Log"] = "0,0,3302739,1,12000554,2,3303080,1"
	tShuShanDuel_RewardRandom[3302739][1][2] = {}
	tShuShanDuel_RewardRandom[3302739][1][2]["RandomItemChanceType"] = 2
	tShuShanDuel_RewardRandom[3302739][1][2]["ItemChance"] = 1500
	tShuShanDuel_RewardRandom[3302739][1][2]["RewardItem"] = {}
	tShuShanDuel_RewardRandom[3302739][1][2]["RewardItem"][1] = {}
	tShuShanDuel_RewardRandom[3302739][1][2]["RewardItem"][1]["Id"] = 3301425
	tShuShanDuel_RewardRandom[3302739][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tShuShanDuel_RewardRandom[3302739][1][2]["Log"] = "0,0,3302739,1,12000554,2,3301425,1"
	
	--紫刃斩天【极品】技能外套包
	tShuShanDuel_RewardRandom[3302740] = {}
	tShuShanDuel_RewardRandom[3302740][1] = {}
	tShuShanDuel_RewardRandom[3302740][1]["ItemChanceSum"] = 10000
	tShuShanDuel_RewardRandom[3302740][1][1] = {}
	tShuShanDuel_RewardRandom[3302740][1][1]["RandomItemChanceType"] = 2
	tShuShanDuel_RewardRandom[3302740][1][1]["ItemChance"] = 8500
	tShuShanDuel_RewardRandom[3302740][1][1]["RewardItem"] = {}
	tShuShanDuel_RewardRandom[3302740][1][1]["RewardItem"][1] = {}
	tShuShanDuel_RewardRandom[3302740][1][1]["RewardItem"][1]["Id"] = 3303081
	tShuShanDuel_RewardRandom[3302740][1][1]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tShuShanDuel_RewardRandom[3302740][1][1]["Log"] = "0,0,3302740,1,12000554,2,3303081,1"
	tShuShanDuel_RewardRandom[3302740][1][2] = {}
	tShuShanDuel_RewardRandom[3302740][1][2]["RandomItemChanceType"] = 2
	tShuShanDuel_RewardRandom[3302740][1][2]["ItemChance"] = 1500
	tShuShanDuel_RewardRandom[3302740][1][2]["RewardItem"] = {}
	tShuShanDuel_RewardRandom[3302740][1][2]["RewardItem"][1] = {}
	tShuShanDuel_RewardRandom[3302740][1][2]["RewardItem"][1]["Id"] = 3301425
	tShuShanDuel_RewardRandom[3302740][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tShuShanDuel_RewardRandom[3302740][1][2]["Log"] = "0,0,3302740,1,12000554,2,3301425,1"
	
	--致命电流技能外套包
	tShuShanDuel_RewardRandom[3302741] = {}
	tShuShanDuel_RewardRandom[3302741][1] = {}
	tShuShanDuel_RewardRandom[3302741][1]["ItemChanceSum"] = 10000
	tShuShanDuel_RewardRandom[3302741][1][1] = {}
	tShuShanDuel_RewardRandom[3302741][1][1]["RandomItemChanceType"] = 2
	tShuShanDuel_RewardRandom[3302741][1][1]["ItemChance"] = 8500
	tShuShanDuel_RewardRandom[3302741][1][1]["RewardItem"] = {}
	tShuShanDuel_RewardRandom[3302741][1][1]["RewardItem"][1] = {}
	tShuShanDuel_RewardRandom[3302741][1][1]["RewardItem"][1]["Id"] = 3303072
	tShuShanDuel_RewardRandom[3302741][1][1]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tShuShanDuel_RewardRandom[3302741][1][1]["Log"] = "0,0,3302741,1,12000554,2,3303072,1"
	tShuShanDuel_RewardRandom[3302741][1][2] = {}
	tShuShanDuel_RewardRandom[3302741][1][2]["RandomItemChanceType"] = 2
	tShuShanDuel_RewardRandom[3302741][1][2]["ItemChance"] = 1500
	tShuShanDuel_RewardRandom[3302741][1][2]["RewardItem"] = {}
	tShuShanDuel_RewardRandom[3302741][1][2]["RewardItem"][1] = {}
	tShuShanDuel_RewardRandom[3302741][1][2]["RewardItem"][1]["Id"] = 3301425
	tShuShanDuel_RewardRandom[3302741][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tShuShanDuel_RewardRandom[3302741][1][2]["Log"] = "0,0,3302741,1,12000554,2,3301425,1"
	
	--炽日天剑技能外套包
	tShuShanDuel_RewardRandom[3302742] = {}
	tShuShanDuel_RewardRandom[3302742][1] = {}
	tShuShanDuel_RewardRandom[3302742][1]["ItemChanceSum"] = 10000
	tShuShanDuel_RewardRandom[3302742][1][1] = {}
	tShuShanDuel_RewardRandom[3302742][1][1]["RandomItemChanceType"] = 2
	tShuShanDuel_RewardRandom[3302742][1][1]["ItemChance"] = 8500
	tShuShanDuel_RewardRandom[3302742][1][1]["RewardItem"] = {}
	tShuShanDuel_RewardRandom[3302742][1][1]["RewardItem"][1] = {}
	tShuShanDuel_RewardRandom[3302742][1][1]["RewardItem"][1]["Id"] = 3303082
	tShuShanDuel_RewardRandom[3302742][1][1]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tShuShanDuel_RewardRandom[3302742][1][1]["Log"] = "0,0,3302742,1,12000554,2,3303082,1"
	tShuShanDuel_RewardRandom[3302742][1][2] = {}
	tShuShanDuel_RewardRandom[3302742][1][2]["RandomItemChanceType"] = 2
	tShuShanDuel_RewardRandom[3302742][1][2]["ItemChance"] = 1500
	tShuShanDuel_RewardRandom[3302742][1][2]["RewardItem"] = {}
	tShuShanDuel_RewardRandom[3302742][1][2]["RewardItem"][1] = {}
	tShuShanDuel_RewardRandom[3302742][1][2]["RewardItem"][1]["Id"] = 3301425
	tShuShanDuel_RewardRandom[3302742][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tShuShanDuel_RewardRandom[3302742][1][2]["Log"] = "0,0,3302742,1,12000554,2,3301425,1"
	
	--无影黑旋风技能外套包
	tShuShanDuel_RewardRandom[3302743] = {}
	tShuShanDuel_RewardRandom[3302743][1] = {}
	tShuShanDuel_RewardRandom[3302743][1]["ItemChanceSum"] = 10000
	tShuShanDuel_RewardRandom[3302743][1][1] = {}
	tShuShanDuel_RewardRandom[3302743][1][1]["RandomItemChanceType"] = 2
	tShuShanDuel_RewardRandom[3302743][1][1]["ItemChance"] = 8500
	tShuShanDuel_RewardRandom[3302743][1][1]["RewardItem"] = {}
	tShuShanDuel_RewardRandom[3302743][1][1]["RewardItem"][1] = {}
	tShuShanDuel_RewardRandom[3302743][1][1]["RewardItem"][1]["Id"] = 3303083
	tShuShanDuel_RewardRandom[3302743][1][1]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tShuShanDuel_RewardRandom[3302743][1][1]["Log"] = "0,0,3302743,1,12000554,2,3303083,1"
	tShuShanDuel_RewardRandom[3302743][1][2] = {}
	tShuShanDuel_RewardRandom[3302743][1][2]["RandomItemChanceType"] = 2
	tShuShanDuel_RewardRandom[3302743][1][2]["ItemChance"] = 1500
	tShuShanDuel_RewardRandom[3302743][1][2]["RewardItem"] = {}
	tShuShanDuel_RewardRandom[3302743][1][2]["RewardItem"][1] = {}
	tShuShanDuel_RewardRandom[3302743][1][2]["RewardItem"][1]["Id"] = 3301425
	tShuShanDuel_RewardRandom[3302743][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tShuShanDuel_RewardRandom[3302743][1][2]["Log"] = "0,0,3302743,1,12000554,2,3301425,1"
	
--刷怪随机
local tShuShanDuel_Prob = {}
	--数量随机
	tShuShanDuel_Prob["Num"] = {}
	tShuShanDuel_Prob["Num"][1] = {}
	tShuShanDuel_Prob["Num"][1]["ItemChanceSum"] = 10000
	
	tShuShanDuel_Prob["Num"][1][1] = {}
	tShuShanDuel_Prob["Num"][1][1]["RandomItemChanceType"] = 2
	tShuShanDuel_Prob["Num"][1][1]["ItemChance"] = 2000
	tShuShanDuel_Prob["Num"][1][1]["Item_1"]= 1

	tShuShanDuel_Prob["Num"][1][2] = {}
	tShuShanDuel_Prob["Num"][1][2]["RandomItemChanceType"] = 2
	tShuShanDuel_Prob["Num"][1][2]["ItemChance"] = 5000
	tShuShanDuel_Prob["Num"][1][2]["Item_1"]= 2

	tShuShanDuel_Prob["Num"][1][3] = {}
	tShuShanDuel_Prob["Num"][1][3]["RandomItemChanceType"] = 2
	tShuShanDuel_Prob["Num"][1][3]["ItemChance"] = 3000
	tShuShanDuel_Prob["Num"][1][3]["Item_1"]= 3
	--成就榜数量随机
	tShuShanDuel_Prob["Achieve"] = {}
	tShuShanDuel_Prob["Achieve"][1] = {}
	tShuShanDuel_Prob["Achieve"][1]["ItemChanceSum"] = 10000
	
	tShuShanDuel_Prob["Achieve"][1][1] = {}
	tShuShanDuel_Prob["Achieve"][1][1]["RandomItemChanceType"] = 2
	tShuShanDuel_Prob["Achieve"][1][1]["ItemChance"] = 6000
	tShuShanDuel_Prob["Achieve"][1][1]["Item_1"]= 1

	tShuShanDuel_Prob["Achieve"][1][2] = {}
	tShuShanDuel_Prob["Achieve"][1][2]["RandomItemChanceType"] = 2
	tShuShanDuel_Prob["Achieve"][1][2]["ItemChance"] = 3000
	tShuShanDuel_Prob["Achieve"][1][2]["Item_1"]= 2

	tShuShanDuel_Prob["Achieve"][1][3] = {}
	tShuShanDuel_Prob["Achieve"][1][3]["RandomItemChanceType"] = 2
	tShuShanDuel_Prob["Achieve"][1][3]["ItemChance"] = 1000
	tShuShanDuel_Prob["Achieve"][1][3]["Item_1"]= 3
	--难度随机
	tShuShanDuel_Prob["Difficulty"] = {}
	tShuShanDuel_Prob["Difficulty"][1] = {}
	tShuShanDuel_Prob["Difficulty"][1]["ItemChanceSum"] = 10000
	
	tShuShanDuel_Prob["Difficulty"][1][1] = {}
	tShuShanDuel_Prob["Difficulty"][1][1]["RandomItemChanceType"] = 2
	tShuShanDuel_Prob["Difficulty"][1][1]["ItemChance"] = 500
	tShuShanDuel_Prob["Difficulty"][1][1]["Item_1"]= 1
	
	tShuShanDuel_Prob["Difficulty"][1][2] = {}
	tShuShanDuel_Prob["Difficulty"][1][2]["RandomItemChanceType"] = 2
	tShuShanDuel_Prob["Difficulty"][1][2]["ItemChance"] = 2500
	tShuShanDuel_Prob["Difficulty"][1][2]["Item_1"]= 2
	
	tShuShanDuel_Prob["Difficulty"][1][3] = {}
	tShuShanDuel_Prob["Difficulty"][1][3]["RandomItemChanceType"] = 2
	tShuShanDuel_Prob["Difficulty"][1][3]["ItemChance"] = 3000
	tShuShanDuel_Prob["Difficulty"][1][3]["Item_1"]= 3
	
	tShuShanDuel_Prob["Difficulty"][1][4] = {}
	tShuShanDuel_Prob["Difficulty"][1][4]["RandomItemChanceType"] = 2
	tShuShanDuel_Prob["Difficulty"][1][4]["ItemChance"] = 4000
	tShuShanDuel_Prob["Difficulty"][1][4]["Item_1"]= 4
	
	tShuShanDuel_Prob["Difficulty"][2] = {}
	tShuShanDuel_Prob["Difficulty"][2]["ItemChanceSum"] = 10000
	
	tShuShanDuel_Prob["Difficulty"][2][1] = {}
	tShuShanDuel_Prob["Difficulty"][2][1]["RandomItemChanceType"] = 2
	tShuShanDuel_Prob["Difficulty"][2][1]["ItemChance"] = 1000
	tShuShanDuel_Prob["Difficulty"][2][1]["Item_1"]= 1
	
	tShuShanDuel_Prob["Difficulty"][2][2] = {}
	tShuShanDuel_Prob["Difficulty"][2][2]["RandomItemChanceType"] = 2
	tShuShanDuel_Prob["Difficulty"][2][2]["ItemChance"] = 2000
	tShuShanDuel_Prob["Difficulty"][2][2]["Item_1"]= 2
	
	tShuShanDuel_Prob["Difficulty"][2][3] = {}
	tShuShanDuel_Prob["Difficulty"][2][3]["RandomItemChanceType"] = 2
	tShuShanDuel_Prob["Difficulty"][2][3]["ItemChance"] = 4000
	tShuShanDuel_Prob["Difficulty"][2][3]["Item_1"]= 3
	
	tShuShanDuel_Prob["Difficulty"][2][4] = {}
	tShuShanDuel_Prob["Difficulty"][2][4]["RandomItemChanceType"] = 2
	tShuShanDuel_Prob["Difficulty"][2][4]["ItemChance"] = 3000
	tShuShanDuel_Prob["Difficulty"][2][4]["Item_1"]= 4
	
	tShuShanDuel_Prob["Difficulty"][3] = {}
	tShuShanDuel_Prob["Difficulty"][3]["ItemChanceSum"] = 10000
	
	tShuShanDuel_Prob["Difficulty"][3][1] = {}
	tShuShanDuel_Prob["Difficulty"][3][1]["RandomItemChanceType"] = 2
	tShuShanDuel_Prob["Difficulty"][3][1]["ItemChance"] = 1500
	tShuShanDuel_Prob["Difficulty"][3][1]["Item_1"]= 1
	
	tShuShanDuel_Prob["Difficulty"][3][2] = {}
	tShuShanDuel_Prob["Difficulty"][3][2]["RandomItemChanceType"] = 2
	tShuShanDuel_Prob["Difficulty"][3][2]["ItemChance"] = 2500
	tShuShanDuel_Prob["Difficulty"][3][2]["Item_1"]= 2
	
	tShuShanDuel_Prob["Difficulty"][3][3] = {}
	tShuShanDuel_Prob["Difficulty"][3][3]["RandomItemChanceType"] = 2
	tShuShanDuel_Prob["Difficulty"][3][3]["ItemChance"] = 4000
	tShuShanDuel_Prob["Difficulty"][3][3]["Item_1"]= 3
	
	tShuShanDuel_Prob["Difficulty"][3][4] = {}
	tShuShanDuel_Prob["Difficulty"][3][4]["RandomItemChanceType"] = 2
	tShuShanDuel_Prob["Difficulty"][3][4]["ItemChance"] = 2000
	tShuShanDuel_Prob["Difficulty"][3][4]["Item_1"]= 4
	
--模拟二进制数据存储
local tShuShanDuel_Bit = {data32 = {}}
for i = 1, 32 do
	tShuShanDuel_Bit.data32[i] = 2^(32 - i)
end
---------------------------------------------逻辑模块---------------------------------------------
--技能外套使用
function ShuShanDuel_SkillCoatUse(nItemTypeId,sItemName)
	local nMagicType = tShuShanDuel_SkillCoat[nItemTypeId]["MagicId"]
	local sMagicName = tShuShanDuel_Text["SkillName"][nItemTypeId]
	local nMgcEffectType = tShuShanDuel_SkillCoat[nItemTypeId]["MgcEffectType"]
	local nEventType = tShuShanDuel_SkillCoat[nItemTypeId]["EventType"]
	local nDataType = tShuShanDuel_SkillCoat[nItemTypeId]["DataType"]
	local nTime = tShuShanDuel_SkillCoat[nItemTypeId]["Time"]
	local sSzObj = tShuShanDuel_Cont["SkillCoatEffect"]["SzObj"]
	local sEffect = tShuShanDuel_Cont["SkillCoatEffect"]["Effect"]
	
	--判断技能外套是否已经失效
	if not Magic_CheckMagicEffect(nMagicType,nMgcEffectType,1) then
		Task_SetStatistic(nEventType,nDataType,0,1)
	end
	
	--判断是否使用过技能外套
	if Task_ChkStcValue(nEventType,nDataType,"~=",0) then
		Sys_MsgBox(tShuShanDuel_Text["MsgBox"]["SkillUse"]["Already"])
		return
	end
	
	--判断是否学过技能
	if not Magic_ChkType(nMagicType) then
		Sys_MsgBox(string.format(tShuShanDuel_Text["MsgBox"]["SkillUse"]["NotLearn"], sMagicName))
		return
	end
	
	--武功境界小于14
	if Get_UserGongFuSkill() < tShuShanDuel_Cont["GongFu"] then
		Sys_MsgBox(tShuShanDuel_Text["MsgBox"]["SkillUse"]["NotReach"])
		return
	end
	
	--技能外套生效
	if Item_ChkItem(nItemTypeId) and Item_DelItem(nItemTypeId) then
		Task_SetStatistic(nEventType,nDataType,1,1,0)
		Magic_AddMagicAvailableEffect(nMagicType,nMgcEffectType,0,0,nTime)
		Sys_MsgBox(string.format(tShuShanDuel_Text["MsgBox"]["SkillUse"]["Suc"], sItemName))
		Sys_SaveActionFestivalLog(string.format(tShuShanDuel_Log["SkillCoatUse"], nItemTypeId, nMagicType))
		User_EffectAdd(sSzObj,sEffect)
	end
end

--数字转换成二进制
function tShuShanDuel_Bit:ShuShanDuel_IntToBit(nData)
	local tBit = {}
	for i = 1, 32 do
		if nData >= self.data32[i] then
			tBit[i] = 1
			nData = nData - self.data32[i]
		else
			tBit[i] = 0
		end
	end
	return tBit
end

--二进制转换成数字
function tShuShanDuel_Bit:ShuShanDuel_BitToInt(tBit)
	local nData = 0
	for i = 1,32 do
		if tBit[i] == 1 then
			nData = nData + 2^(32 - i)
		end
	end
	return nData
end

--左移运算
function tShuShanDuel_Bit:ShuShanDuel_Left(nData,nMove)
	local tBit = self:ShuShanDuel_IntToBit(nData)
	local tBitTemp = self:ShuShanDuel_IntToBit(0)
	
	if nMove == 0 then
		return nData
	elseif nMove < 32 and nMove > 0 then
		for i = 1, nMove do
			for i = 1, 31 do
				tBit[i] = tBit[i + 1]
			end
			tBit[32] = 0
		end
		tBitTemp = tBit
	end
	
	return self:ShuShanDuel_BitToInt(tBitTemp)
end

--数字与运算
function tShuShanDuel_Bit:ShuShanDuel_And(nData1,nData2)
	local tBit1 = self:ShuShanDuel_IntToBit(nData1)
	local tBit2 = self:ShuShanDuel_IntToBit(nData2)
	local tBitTemp = {}
	
	for i = 1, 32 do
		if tBit1[i] == 1 and tBit2[i] == 1 then
			tBitTemp[i] = 1
		else
			tBitTemp[i] = 0
		end
	end
	
	return self:ShuShanDuel_BitToInt(tBitTemp)
end

--数字或运算
function tShuShanDuel_Bit:ShuShanDuel_Or(nData1,nData2)
	local tBit1 = self:ShuShanDuel_IntToBit(nData1)
	local tBit2 = self:ShuShanDuel_IntToBit(nData2)
	local tBitTemp = {}
	
	for i = 1,32 do
		if tBit1[i] == 1 or tBit2[i] == 1 then
			tBitTemp[i] = 1
		else
			tBitTemp[i] = 0
		end
	end
	return self:ShuShanDuel_BitToInt(tBitTemp)
end

--统计二进制1的个数
function tShuShanDuel_Bit:ShuShanDuel_Num(nData)
	local tBit = self:ShuShanDuel_IntToBit(nData)
	local nNum = 0
	
	for i = 1,32 do
		if tBit[i] == 1 then
			nNum = nNum + 1
		end
	end
	
	return nNum
end

--设置技能外套奖励掩码二进制与之对应设1
function ShuShanDuel_SetStc(nEvent, nType, nIndex, nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nData = Get_UserStatisticValue(nEvent,nType,nNowUserId)
	local nMove = tShuShanDuel_Bit:ShuShanDuel_Left(1,nIndex)
	local nResult = tShuShanDuel_Bit:ShuShanDuel_Or(nData, nMove)
	
	Task_SetStatistic(nEvent,nType,nResult,1,nNowUserId)
end

--判断是否得到过
function ShuShanDuel_IsGet(nEvent, nType, nIndex, nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nData = Get_UserStatisticValue(nEvent,nType,nNowUserId)
	local nMove = tShuShanDuel_Bit:ShuShanDuel_Left(1,nIndex)
	local nResult = tShuShanDuel_Bit:ShuShanDuel_And(nData, nMove)
	
	if nResult == 0 then
		return false
	else
		return true
	end
end

--判断获得次数
function ShuShanDuel_GetNum(nEvent, nType, nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nData = Get_UserStatisticValue(nEvent,nType,nNowUserId)
	local nTimes = tShuShanDuel_Bit:ShuShanDuel_Num(nData)
	
	return nTimes
end

--获得称号
function ShuShanDuel_GetTitle(nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nEvent = tShuShanDuel_Stc["StarLevelUp"]["Event"]
	local nLine = tShuShanDuel_Cont["MaxAchieve"] / tShuShanDuel_Cont["Group"]
	local nHalfAchieve = math.floor(tShuShanDuel_Cont["MaxAchieve"] / 2)
	local nType = 0
	local nIndex = 0
	local nAchieveTitle = 0
	local bAllAchieve = true
	local tAchieveTitle = CommonFunc_Copy(tShuShanDuel_Cont["AchieveTitle"])
	
	for i = 1, tShuShanDuel_Cont["MaxAchieve"] do
		--判断成就对应的掩码索引
		if i > nHalfAchieve then
			nIndex = i - nHalfAchieve
			nType = tShuShanDuel_Stc["StarLevelDown"]["Type"]
		else
			nIndex = i
			nType = tShuShanDuel_Stc["StarLevelUp"]["Type"]
		end
		
		if not ShuShanDuel_IsGet(nEvent, nType, nIndex, nNowUserId) then
			--成就换算成第几组
			nAchieveTitle = math.floor((i - 1) / nLine) + 1
			--判断当前组是否有称号
			if tAchieveTitle[nAchieveTitle] ~= nil then
				--只要当前组有一个成就没完成，称号就标记为false
				tAchieveTitle[nAchieveTitle]["Flag"] = false
			end
			
			--有成就没完成，无法获得试炼大成令牌
			bAllAchieve = false
		end
	end
	
	--给试炼大成令牌
	if bAllAchieve then
		local nAllAchieveBook = tShuShanDuel_Cont["ItemId"]["AllAchieveBook"]
		
		if not Item_ChkItem(nAllAchieveBook,nil,nil,nNowUserId) then
			Item_AddNewItem(nAllAchieveBook, "0 1", nNowUserId)
		end
		
		--全服公告，完成全部成就
		local sUserName = Get_UserName(nNowUserId)
		Sys_SystemBroadcast(string.format(tShuShanDuel_Text["Broadcast"]["AllAchieve"], sUserName))
	end
	
	nType = tShuShanDuel_Stc["StarLevelDown"]["Type"]
	
	--获得相应成就所对应的称号
	for k,v in pairs(tAchieveTitle) do
		--称号标记始终为true说明当前组所有成就都完成了，可以获得称号
		if v["Flag"] then
			nIndex = v["Index"]
			--判断当前称号是不是已经获得过了
			if not ShuShanDuel_IsGet(nEvent, nType, nIndex, nNowUserId) then
				ShuShanDuel_SetStc(nEvent, nType, nIndex, nNowUserId)
				--给称号
				--User_AwardTitle(v["TitleType"], v["TitleId"], v["SaveTime"], nNowUserId)
				--给气力，通过邮件发奖
				local nStrength = tShuShanDuel_Cont["Strength"][k] or 0
				local sStrength = string.format(tShuShanDuel_Text["StrengthValue"]["Award"], nStrength)
				local nActionId = tShuShanDuel_Cont["ActionId"][k]
				local nExistDay = tShuShanDuel_Cont["ExistDay"]
				local sSender =tShuShanDuel_Text["Mail"]["Sender"]
				local sTitle = tShuShanDuel_Text["Mail"]["Title"]
				local sContent = string.format(tShuShanDuel_Text["Mail"]["Content"], sStrength)
				
				Sys_SendMail(nNowUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
				
				Sys_SaveActionFestivalLog(tShuShanDuel_Log["AchieveStrength"][k], nNowUserId)
				
				--获得气力给EMoneyLog，方便统计
				Sys_SaveEmoneyBuy(tShuShanDuel_ELog["GetStrengthPlus"][k], nNowUserId)
				
				--返回称号索引
				return k
			end
		end
	end
	--都没获得称号返回0
	return 0
end

--判断是不是通过初级考验
function ShuShanDuel_PassExam(nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nEvent = tShuShanDuel_Stc["Primary"]["Event"]
	local nType = tShuShanDuel_Stc["Primary"]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nNowUserId)
	
	--已通过初级考验
	if nData >= tShuShanDuel_Stc["Primary"]["ThdData"] then
		return nData
	end
	
	local nDifficulty = nData + 1
	local nProId = tShuShanDuel_PrimaryBoss[nDifficulty]
	local nStrength = tShuShanDuel_Strength[nDifficulty]
	local tBossRefresh = {}
	tBossRefresh[1] = {}
	tBossRefresh[1]["Difficulty"] = nDifficulty
	tBossRefresh[1]["ProId"] = nProId
	
	--保存Boss信息
	tShuShanDuel_BossRefresh[nNowUserId] = CommonFunc_Copy(tBossRefresh)
	
	--保存气力奖励
	tShuShanDuel_BossStrength[nNowUserId] = nStrength
	
	return nData
end

--初级考验击败Boss掩码设置
function ShuShanDuel_PrimaryKillBoss(nMonsterId, nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nEvent = tShuShanDuel_Stc["Primary"]["Event"]
	local nType = tShuShanDuel_Stc["Primary"]["Type"]
	local nSave = tShuShanDuel_Stc["Primary"]["Save"]
	local nData = Get_UserStatisticValue(nEvent,nType,nNowUserId)
	
	local nInstanceId = tShuShanDuel_IntoInstance[nNowUserId]
	local nCurData = tShuShanDuel_InstanceStc[nInstanceId] or 0
	
	--判断玩家当前身上的掩码是否已经挑战过当前副本
	if nData >= nCurData then
		return false
	end
	
	--通过初级考验
	if nData > tShuShanDuel_Stc["Primary"]["ThdData"] then
		return false
	elseif nData == tShuShanDuel_Stc["Primary"]["ThdData"] then
		Task_AddStatistic(nEvent,nType,1,nSave,nNowUserId)
		return false
	end
	
	nData = nData + 1
	
	--设掩码
	for k,v in pairs(tShuShanDuel_BossDifPro[nData]) do
		if v == nMonsterId then
			Task_AddStatistic(nEvent,nType,1,nSave,nNowUserId)
		end
	end
	
	--通过初级考验给提示
	if nData == tShuShanDuel_Stc["Primary"]["ThdData"] then
		User_TalkChannel2005(tShuShanDuel_Text["Channel2005"]["PassPrimary"], nNowUserId)
	end
	
	return true
end

--随机刷新
function ShuShanDuel_RandRefresh(nIndex)
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	local nProNum = tShuShanDuel_Cont["ProNum"]
	local flat1 = 0
	local tNum1 = {}
	local nNum = 0
	local bFlag = false
	
	--索引为0表示随机刷新，为1表示最强刷新，2表示最弱刷新，走不同的概率
	if nIndex == 0 then
		flat1, tNum1 = Probabil_RandomAward(tShuShanDuel_Prob["Num"],1)
		nNum = tNum1[1]["tAward"][1]["Item_1"]
	elseif nIndex == 1 or nIndex == 2 then
		--flat1, tNum1 = Probabil_RandomAward(tShuShanDuel_Prob["Achieve"],1)
		nNum = tShuShanDuel_Cont["BossNum"]
	end
	
	local flat2 = 0
	local tNum2 = {}
	local nDifficulty = 0
	local nProId = math.random(1,nProNum)
	local tBossRefresh = {}
	local nStrength = 0
	
	if nIndex == 1 then
		nDifficulty = tShuShanDuel_Cont["MaxDiff"]
		if Sys_Random(1,5) then
			bFlag = true
		end
	end
	
	for i = 1, nNum do
		if nIndex == 0 then
			flat2,tNum2 = Probabil_RandomAward(tShuShanDuel_Prob["Difficulty"],nNum)
			nDifficulty = tNum2[1]["tAward"][1]["Item_1"]
		elseif nIndex == 2 then
			if i == tShuShanDuel_Cont["BossNum"] then
				nDifficulty = 2
			else
				nDifficulty = 1
			end
		end
		
		nStrength = nStrength + tShuShanDuel_Strength[nDifficulty]
		
		if (not bFlag) or i == 1 then
			nProId = math.random(1,nProNum)
		end
		
		tBossRefresh[i] = {}
		tBossRefresh[i]["Difficulty"] = nDifficulty
		tBossRefresh[i]["ProId"] = nProId
	end
	
	--保存刷怪信息
	tShuShanDuel_BossRefresh[nUserId] = CommonFunc_Copy(tBossRefresh)
	--保存气力奖励
	tShuShanDuel_BossStrength[nUserId] = nStrength
	
	if Get_UserTeamNumbers(nUserId) ~= 0 and Get_UserTeamNumbers(nUserId) ~= 1 and User_IsTeamLeader(nUserId) then
		User_TeamExeFuncByLeader(3, string.format("ShuShanDuel_SaveBossTeam</N>%d</N>%d", nUserId, nMapId), nUserId)
	end
end

--团队保存队长的刷怪信息
function ShuShanDuel_SaveBossTeam(nLeadUserId, nMapId, nUserId)
	local nNowMapId = Get_UserMapId(nUserId)
	
	if nNowMapId ~= nMapId then
		return
	end
	
	tShuShanDuel_BossRefresh[nUserId] = CommonFunc_Copy(tShuShanDuel_BossRefresh[nLeadUserId])
	tShuShanDuel_BossStrength[nUserId] = tShuShanDuel_BossStrength[nLeadUserId]
end

--判断当前组合是否在成就榜上
function ShuShanDuel_AchieveJudge(nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local bTatolFlag = false
	local bFlag = false
	local sAchieve = ""
	local tBossId = {}
	local nHalfAchieve = math.floor(tShuShanDuel_Cont["MaxAchieve"] / 2)
	local nEvent = tShuShanDuel_Stc["StarLevelUp"]["Event"]
	local nType = 0
	local nIndex = 0
	
	local tBossRefresh = CommonFunc_Copy(tShuShanDuel_BossRefresh[nNowUserId])
	
	for i = 1, #tShuShanDuel_Achieve do
		bTatolFlag = true
		tBossId = {}
		--取BossId组合
		for k,v in pairs(tBossRefresh) do
			table.insert(tBossId, tShuShanDuel_BossDifPro[v["Difficulty"]][v["ProId"]])
		end
		
		--循环所有成就，判断当前组合是不是匹配可以获得的成就
		for j = 1, #tShuShanDuel_Achieve[i] do
			bFlag = false
			for k,v in pairs(tBossId) do
				if tShuShanDuel_Achieve[i][j] == v then
					table.remove(tBossId, k)
					bFlag = true
					break
				end
			end
			
			if not bFlag then
				bTatolFlag = false
			end
		end
		
		--可以获得的成就组合
		if bTatolFlag then
			if i > nHalfAchieve then
				nIndex = i - nHalfAchieve
				nType = tShuShanDuel_Stc["StarLevelDown"]["Type"]
			else
				nIndex = i
				nType = tShuShanDuel_Stc["StarLevelUp"]["Type"]
			end
			
			--判断当前玩家是否已经有这个成就了，有就不显示
			if not ShuShanDuel_IsGet(nEvent, nType, nIndex, nNowUserId) then
				if sAchieve == "" then
					sAchieve = sAchieve..tShuShanDuel_Text["Achieve"][i]
				else
					sAchieve = sAchieve.."``"..tShuShanDuel_Text["Achieve"][i]
				end
			end
		end
	end
	
	return sAchieve
end

--接受新手试炼
function ShuShanDuel_AcceptPrimary(nNpcId)
	local nUserId = Get_UserId()
	local nDifficulty = 0
	local nProId = 0
	local sMonsterName = ""
	local sMonsterTip = ""
	local sMonster = ""
	local sTip = ""
	local sCoat = ""
	local nStrength = 0
	local tBossRefresh = {}
	local tCoat = {}
	
	--活动时间判断
	if not Sys_ChkFullTime(tShuShanDuel_Time["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-5")
		return
	end
	
	if tShuShanDuel_BossRefresh[nUserId] == nil then
		return
	end
	
	--提取Boss组合
	tBossRefresh = CommonFunc_Copy(tShuShanDuel_BossRefresh[nUserId])
	
	--提取难度职业信息
	nDifficulty = tBossRefresh[1]["Difficulty"]
	nProId = tBossRefresh[1]["ProId"]
	--提取Boss名字及Tip
	sMonsterName = tShuShanDuel_Text["DifficultyPro"][nDifficulty][nProId]
	sMonsterTip = tShuShanDuel_Text["MonsterTip"][nDifficulty][nProId]
	sMonster = string.format(tShuShanDuel_Text["Tip"], sMonsterTip, sMonsterName)
	--提取气力值
	nStrength = tShuShanDuel_BossStrength[nUserId] or 0
	--提取星级信息
	sTip = tShuShanDuel_Text["Star"][nDifficulty]
	--提取外套掉落信息
	tCoat = tShuShanDuel_Text["CoatDrop"][nDifficulty] or tShuShanDuel_Text["CoatDrop"][1]
	sCoat = tCoat["Drop"]..tCoat[nProId]
	
	tNpcGossip[nNpcId]["Text234"] = string.format(tShuShanDuel_Text[nNpcId]["Text234"], sMonster, sTip, sCoat)
	tNpcGossip[nNpcId]["Text236"] = string.format(tShuShanDuel_Text[nNpcId]["Text236"], nStrength)
	
	--队员无法挑战
	if Get_UserTeamNumbers(nUserId) ~= 0 and (not User_IsTeamLeader(nUserId)) then
		tNpcGossip[nNpcId]["tOption2-3"] = {232}
	else
		tNpcGossip[nNpcId]["tOption2-3"] = {231}
	end
	
	LinkNpcGossipFunc_New(nNpcId, "2-3")
end

--接受终极试炼
function ShuShanDuel_Accept(nNpcId)
	local nUserId = Get_UserId()
	local nEvent = tShuShanDuel_Stc["Award"]["Event"]
	local nBoxType = tShuShanDuel_Stc["Award"]["Type"]
	local nTimeType = tShuShanDuel_Stc["Award"]["TimeType"]
	local nDelay = tShuShanDuel_Stc["Award"]["Delay"]
	local nCoatType = 0
	local nDifficulty = 0
	local nProId = 0
	local nText = tShuShanDuel_Cont["Text"][nNpcId]
	local sMonsterName = ""
	local sMonsterTip = ""
	local sMonster = ""
	local sTip = ""
	local sCoat = ""
	local nStar = 0
	local tBossRefresh = {}
	local tCoat = {}
	
	--活动时间判断
	if not Sys_ChkFullTime(tShuShanDuel_Time["Activity"]) then
		return
	end
	
	--没有刷怪信息，刷新一个组合
	if tShuShanDuel_BossRefresh[nUserId] == nil then
		ShuShanDuel_RandRefresh(0)
	end
	
	--读取刷怪信息
	tBossRefresh = CommonFunc_Copy(tShuShanDuel_BossRefresh[nUserId])
	
	--显示怪物信息
	for i = 1, tShuShanDuel_Cont["BossNum"] do
		if tBossRefresh[i] == nil then
			sMonster = ""
			sTip = ""
			sCoat = ""
		else
			nDifficulty = tBossRefresh[i]["Difficulty"]
			nProId = tBossRefresh[i]["ProId"]
			sMonsterName = tShuShanDuel_Text["DifficultyPro"][nDifficulty][nProId]
			sMonsterTip = tShuShanDuel_Text["MonsterTip"][nDifficulty][nProId]
			sMonster = string.format(tShuShanDuel_Text["Tip"], sMonsterTip, sMonsterName)
			sTip = tShuShanDuel_Text["Star"][nDifficulty]
			
			--提取外套掉落信息
			tCoat = tShuShanDuel_Text["CoatDrop"][nDifficulty] or tShuShanDuel_Text["CoatDrop"][1]
			nCoatType = tShuShanDuel_BossDrop["StcType"][nDifficulty]
			
			Task_StcReset(nEvent,nCoatType,nUserId,nTimeType,nDelay)
			
			local nTimes = ShuShanDuel_GetNum(nEvent, nCoatType, nUserId)
			
			if nCoatType == tShuShanDuel_Stc["WeaponCoat"]["Type"] and nTimes >= tShuShanDuel_Stc["WeaponCoat"]["Data"] then
				sCoat = tCoat["Over"]
			elseif ShuShanDuel_IsGet(nEvent, nCoatType, nProId, nUserId) then
				sCoat = tShuShanDuel_Text["CoatDrop"]["Full"]..tCoat[nProId]
			else
				sCoat = tCoat["Drop"]..tCoat[nProId]
			end
			
			if nDifficulty == tShuShanDuel_Cont["MaxDiff"] then
				nStar = nStar + nDifficulty + 1
			else
				nStar = nStar + nDifficulty
			end
		end
		
		tNpcGossip[nNpcId]["Text"..(nText + i)] = string.format(tShuShanDuel_Text[nNpcId]["Text"..(nText + i)], sMonster, sTip, sCoat)
	end
	
	local sStarComment = tShuShanDuel_Text["DifficultyComment"][tShuShanDuel_StarComment[nStar]]
	--显示难度点评信息
	tNpcGossip[nNpcId]["Text"..(nText - 2)] = string.format(tShuShanDuel_Text[nNpcId]["Text"..(nText - 2)], sStarComment)
	
	--显示气力奖励值
	
	Task_StcReset(nEvent,nBoxType,nUserId,nTimeType,nDelay)
	
	local nBoxData = Get_UserStatisticValue(nEvent,nBoxType,nUserId)
	local sStrengthText = "Text"..math.floor(nText/10)..(nText%10 + 5)
	
	--提取气力奖励
	local nStrength = tShuShanDuel_BossStrength[nUserId] or 0
	
	if nBoxData <= 1 then
		tNpcGossip[nNpcId][sStrengthText] = string.format(tShuShanDuel_Text[nNpcId][sStrengthText], string.format(tShuShanDuel_Text["StrengthValue"]["NoFull"], nStrength)..tShuShanDuel_Text["StrengthValue"]["Plus"])
	elseif nBoxData >= tShuShanDuel_Stc["Award"]["Data"] * 2 then
		tNpcGossip[nNpcId][sStrengthText] = string.format(tShuShanDuel_Text[nNpcId][sStrengthText], tShuShanDuel_Text["StrengthValue"]["Full"])
	else
		tNpcGossip[nNpcId][sStrengthText] = string.format(tShuShanDuel_Text[nNpcId][sStrengthText], string.format(tShuShanDuel_Text["StrengthValue"]["NoFull"], nStrength))
	end
	
	--队员不出其他选项
	if Get_UserTeamNumbers(nUserId) ~= 0 and (not User_IsTeamLeader(nUserId)) then
		tNpcGossip[nNpcId]["tOption2-1"] = {216}
	else
		tNpcGossip[nNpcId]["tOption2-1"] = {211,212,213,214,215}
	end
	
	--判断当前组合是否在成就榜上
	local sAchieve = ShuShanDuel_AchieveJudge(nUserId)
	
	--显示组合可以获得的成就
	if sAchieve ~= "" then
		tNpcGossip[nNpcId]["Text"..math.floor(nText/10)..(nText%10 + 6)] = string.format(tShuShanDuel_Text[nNpcId]["Text"..math.floor(nText/10)..(nText%10 + 6)], sAchieve)
		tNpcGossip[nNpcId]["Text"..math.floor(nText/10)..(nText%10 + 7)] = tShuShanDuel_Text[nNpcId]["Text"..math.floor(nText/10)..(nText%10 + 7)]
	else
		tNpcGossip[nNpcId]["Text"..math.floor(nText/10)..(nText%10 + 6)] = tShuShanDuel_Text[nNpcId]["Text"..math.floor(nText/10)..(nText%10 + 7)]
		tNpcGossip[nNpcId]["Text"..math.floor(nText/10)..(nText%10 + 7)] = "\n"
	end
	
	LinkNpcGossipFunc_New(nNpcId, math.floor(nText/100).."-"..math.floor((nText%100)/10))
end

--团队触发进入副本
function ShuShanDuel_TeamInstance(nInstanceId, nMapId, nLeadUserId, nLeadData, nUserId)
	local nNowMapId = Get_UserMapId(nUserId)
	local nLevel = tShuShanDuel_Cont["Level"]
	local nMetempsychosis = tShuShanDuel_Cont["Metempsychosis"]
	local nData = 0
	
	--地图判断
	if nMapId ~= tShuShanDuel_Cont["MapId"]["Return"] then
		return
	end
	
	--地图判断
	if nNowMapId ~= nMapId then
		return
	end
	
	--位置判断
	local nUserX = Get_UserPositionX(nUserId)
	local nUserY = Get_UserPositionY(nUserId)
	local nMaxX = tShuShanDuel_Cont["Distance"]["MaxX"]
	local nMaxY = tShuShanDuel_Cont["Distance"]["MaxY"]
	local nMinX = tShuShanDuel_Cont["Distance"]["MinX"]
	local nMinY = tShuShanDuel_Cont["Distance"]["MinY"]
	
	if nUserX > nMaxX or nUserX < nMinX or nUserY > nMaxY or nUserY < nMinY then
		Sys_MsgBox(tShuShanDuel_Text["MsgBox"]["Distance"], nil, nil, nUserId)
		return
	end
	
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
		return
	end
	
	--是否通过初级考验,没通过组队无法带入终极试炼(队员判断)、当前挑战的副本没通关也不能组队带入
	if Get_UserTeamNumbers(nUserId) ~= 0 and (not User_IsTeamLeader(nUserId)) then
		nData = ShuShanDuel_PassExam(nUserId)
		
		if nData < tShuShanDuel_Stc["Primary"]["ThdData"] and nInstanceId == tShuShanDuel_Cont["InstanceId"] then
			Sys_MsgBox(tShuShanDuel_Text["MsgBox"]["NoPassPrimary"], nil, nil, nUserId)
			return
		end
		
		if nData < nLeadData and nInstanceId ~= tShuShanDuel_Cont["InstanceId"] then
			Sys_MsgBox(tShuShanDuel_Text["MsgBox"]["NotIn"], nil, nil, nUserId)
			return
		end
	end
	
	--记录进入哪个副本
	tShuShanDuel_IntoInstance[nUserId] = nInstanceId
	
	--把队长的信息复制到各成员
	ShuShanDuel_SaveBossTeam(nLeadUserId, nMapId, nUserId)
	
	local nSave = tShuShanDuel_Stc["Award"]["Save"]
	local nBoxEvent = 0
	local nBoxType = 0
	local nBoxData = 0
	
	--判断是初级试炼还是终极试炼
	if nInstanceId == tShuShanDuel_Cont["InstanceId"] then
		nBoxEvent = tShuShanDuel_Stc["Award"]["Event"]
		nBoxType = tShuShanDuel_Stc["Award"]["Type"]
	else
		nBoxEvent = tShuShanDuel_Stc["Box"]["Event"]
		nBoxType = tShuShanDuel_Stc["Box"]["Type"]
	end
	
	nBoxData = Get_UserStatisticValue(nBoxEvent,nBoxType,nUserId)
	
	--已通关，但是没领奖，这样的情况重新进入副本视为放弃领奖，掩码置为不可领奖
	if nBoxData % 2 ~= 0 then
		Task_AddStatistic(nBoxEvent,nBoxType,-1,nSave,nUserId)
	end
	
	--进入副本
	User_EnterInstance(nInstanceId, 0, 0, 0, nUserId)
	
	--单次成就表清零
	tShuShanDuel_BossGroup[nUserId] = {}
	
	--终极试练进入地图增加105寻路，寻路至大侠陈臻
	local bFlag = true
	local nTipMapId = Get_UserMapId(nUserId)
	
	--判断是否已经存在Boss
	for k,v in pairs(tShuShanDuel_BossDifPro) do
		for i,j in pairs(v) do
			if Get_SysTempData(1,nTipMapId,j) > 0 then
				bFlag = false
			end
		end
	end
	
	--判断是否已经存在NPC
	if Get_NpcCount(nUserId) > 0 then
		bFlag = false
	end
	
	if nInstanceId == tShuShanDuel_Cont["InstanceId"] and bFlag then
		Sys_MsgBox(tShuShanDuel_Text["MsgBox"]["Into"], "ShuShanDuel_Where</S>Activate", nil, nUserId)
	end
	
	Sys_SaveActionFestivalLog(tShuShanDuel_Log["Into"], nUserId)
	
	Sys_SaveEmoneyBuy(tShuShanDuel_ELog["Attend"], nUserId)
	
	User_TalkChannel2005(tShuShanDuel_Text["Channel2005"]["IntoInstance"], nUserId)
end

--确认挑战前判断战斗力
function ShuShanDuel_IntoInstanceJudge(nNpcId)
	local nUserId = Get_UserId()
	local tBossRefresh = CommonFunc_Copy(tShuShanDuel_BossRefresh[nUserId])
	
	--活动时间判断
	if not Sys_ChkFullTime(tShuShanDuel_Time["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-5")
		return
	end
	
	local bFlag = true
	local nNum = 0
	local nBattle = Get_UserBattleLevel(nUserId)
	
	for k,v in pairs(tBossRefresh) do
		if v["Difficulty"] ~= tShuShanDuel_Cont["MaxDiff"] then
			bFlag = false
		end
		nNum = nNum + 1
	end
	
	--Boss组合有3只且全部都是5星的，战斗力小于350给确认提示
	if bFlag and nNum == tShuShanDuel_Cont["BossNum"] then
		if nBattle < tShuShanDuel_Cont["Battle"] then
			LinkNpcGossipFunc_New(nNpcId,"2-5")
			return
		end
	end
	
	ShuShanDuel_IntoInstance(nNpcId)
end

--确认挑战（进入副本）
function ShuShanDuel_IntoInstance(nNpcId)
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	local nInstanceId = 0
	
	--活动时间判断
	if not Sys_ChkFullTime(tShuShanDuel_Time["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-5")
		return
	end
	
	local nEvent = tShuShanDuel_Stc["Primary"]["Event"]
	local nType = tShuShanDuel_Stc["Primary"]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	local nPrimary = 0
	
	--判断是初级试炼还是终极试炼
	if nData >= tShuShanDuel_Stc["Primary"]["ThdData"] then
		nInstanceId = tShuShanDuel_Cont["InstanceId"]
		if tShuShanDuel_BossRefresh[nUserId] == nil then
			return
		end
	else
		nPrimary = ShuShanDuel_PassExam(nUserId)
		nInstanceId = tShuShanDuel_PrimaryInstance[nPrimary + 1]
	end
	
	--是否团队触发进入副本
	if Get_UserTeamNumbers(nUserId) == 0 or Get_UserTeamNumbers(nUserId) == 1 then
		ShuShanDuel_TeamInstance(nInstanceId, nMapId, nUserId, nData, nUserId)
	elseif User_IsTeamLeader(nUserId) then
		if not User_TeamExeFuncByLeader(3, string.format("ShuShanDuel_TeamInstance</N>%d</N>%d</N>%d</N>%d",nInstanceId, nMapId, nUserId, nData), nUserId) then
			return
		end
	else
		return
	end
	
	ShuShanDuel_FirstNpc(nInstanceId, nUserId)
end

--进入地图时刷新的初始NPC
function ShuShanDuel_FirstNpc(nInstanceId, nUserId)
	local nMapId = Get_UserMapId(nUserId)
	
	--判断是否已经存在Boss
	for k,v in pairs(tShuShanDuel_BossDifPro) do
		for i,j in pairs(v) do
			if Get_SysTempData(1,nMapId,j) > 0 then
				return
			end
		end
	end
	
	--判断是否已经存在NPC
	if Get_NpcCount(nUserId) > 0 then
		return
	end
	
	--刷新初始动态NPC
	for k,v in pairs(tShuShanDuel_Instance[nInstanceId]["Npc"]) do
		ShuShanDuel_RefreshNPC(nMapId, v)
	end
	
	--终极副本刷新对应NPC
	if nInstanceId == tShuShanDuel_Cont["InstanceId"] then
		local tBossRefresh = CommonFunc_Copy(tShuShanDuel_BossRefresh[nUserId])
		local nDifficulty = 0
		local nProId = 0
		local sName = ""
		local nType = 0
		local nSort = 0
		local nLookFace = 0
		local nPosX = 0
		local nPosY = 0
		local nAction = 0
		
		for k,v in pairs(tBossRefresh) do
			nDifficulty = v["Difficulty"]
			nProId = v["ProId"]
			
			sName = tShuShanDuel_Text["DifficultyPro"][nDifficulty][nProId]
			nType = tShuShanDuel_DynNpc[nDifficulty][nProId]["Type"]
			nSort = tShuShanDuel_DynNpc[nDifficulty][nProId]["Sort"]
			nLookFace = tShuShanDuel_DynNpc[nDifficulty][nProId]["LookFace"]
			nPosX = tShuShanDuel_Place[nInstanceId][k]["NPCPosX"]
			nPosY = tShuShanDuel_Place[nInstanceId][k]["NPCPosY"]
			nAction = tShuShanDuel_DynNpc[nDifficulty][nProId]["Action"]
			
			Npc_CreateDynaNpc(sName, nType ,nSort ,nLookFace,0,0,nMapId, nPosX,nPosY,0,0,0,nAction)
		end
	end
end

--大侠陈臻对白接入
function ShuShanDuel_Challenge(nNpcId)
	local nUserId = Get_UserId()
	if Get_UserTeamNumbers(nUserId) ~= 0 and (not User_IsTeamLeader(nUserId)) then
		tNpcGossip[nNpcId]["tOption1-1"] = {112}
	else
		tNpcGossip[nNpcId]["tOption1-1"] = {111}
	end
	
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

--新手指导大师对白接入
function ShuShanDuel_PrimaryChallenge(nNpcId)
	local nUserId = Get_UserId()
	local tBossRefresh = {}
	local nDifficulty = 0
	local nProId = 0
	local sBossName = ""
	
	if tShuShanDuel_BossRefresh[nUserId] ~= nil then
		
		tBossRefresh = CommonFunc_Copy(tShuShanDuel_BossRefresh[nUserId])
		nDifficulty = tBossRefresh[1]["Difficulty"]
		nProId = tBossRefresh[1]["ProId"]
		sBossName = tShuShanDuel_Text["DifficultyPro"][nDifficulty][nProId]..tShuShanDuel_Text["Star"][nDifficulty]
		
		tNpcGossip[nNpcId]["Text118"] = string.format(tShuShanDuel_Text[nNpcId]["Text118"], sBossName)
		
		LinkNpcGossipFunc_New(nNpcId,"1-1")
	end
end

--新手试炼出现的初级宝箱接入
function ShuShanDuel_PrimaryBox(nNpcId)
	local nUserId = Get_UserId()
	local nEvent = tShuShanDuel_Stc["Primary"]["Event"]
	local nType = tShuShanDuel_Stc["Primary"]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	local nBoxEvent = tShuShanDuel_Stc["Box"]["Event"]
	local nBoxType = tShuShanDuel_Stc["Box"]["Type"]
	local nBoxData = Get_UserStatisticValue(nBoxEvent,nBoxType,nUserId)
	
	local nInstanceId = tShuShanDuel_IntoInstance[nUserId]
	local nCurData = tShuShanDuel_InstanceStc[nInstanceId] or 0
	
	--挑战完成，已经领过奖
	if nData > nCurData or nBoxData % 2 == 0 then
		if nData == tShuShanDuel_Stc["Primary"]["FstData"] then
			LinkNpcGossipFunc_New(nNpcId,"1-4")
		elseif nData == tShuShanDuel_Stc["Primary"]["SedData"] then
			LinkNpcGossipFunc_New(nNpcId,"1-5")
		elseif nData >= tShuShanDuel_Stc["Primary"]["ThdData"] then
			LinkNpcGossipFunc_New(nNpcId,"1-6")
		end
		
		return
	end
	
	local nStrength = tShuShanDuel_BossStrength[nUserId] or 0
	
	--出领奖对白
	if nData == tShuShanDuel_Stc["Primary"]["FstData"] then
		tNpcGossip[nNpcId]["Text115"] = string.format(tShuShanDuel_Text[nNpcId]["Text115"],nStrength)
		LinkNpcGossipFunc_New(nNpcId,"1-1")
	elseif nData == tShuShanDuel_Stc["Primary"]["SedData"] then
		tNpcGossip[nNpcId]["Text126"] = string.format(tShuShanDuel_Text[nNpcId]["Text126"],nStrength)
		LinkNpcGossipFunc_New(nNpcId,"1-2")
	elseif nData == tShuShanDuel_Stc["Primary"]["ThdData"] then
		tNpcGossip[nNpcId]["Text137"] = string.format(tShuShanDuel_Text[nNpcId]["Text137"],nStrength)
		LinkNpcGossipFunc_New(nNpcId,"1-3")
	end
end

--点击NPC通用对白
function ShuShanDuel_NpcLink(nNpcId)
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

--开始挑战
function ShuShanDuel_ClickNpc(nNpcId)
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	local nMapFlag = false
	
	--检查地图属性
	for k,v in pairs(tShuShanDuel_MapDoc) do
		if Get_MapDoc(nMapId) == v then
			nMapFlag = true
			break
		end
	end
	
	if not nMapFlag then
		return
	end
	
	--判断是否已经存在Boss
	for k,v in pairs(tShuShanDuel_BossDifPro) do
		for i,j in pairs(v) do
			if Get_SysTempData(1,nMapId,j) > 0 then
				return
			end
		end
	end
	
	--读取刷怪信息
	if tShuShanDuel_BossRefresh[nUserId] == nil then
		return
	end
	
	local nData = ShuShanDuel_PassExam(nUserId)
	local nInstanceId = tShuShanDuel_PrimaryInstance[nData + 1] or tShuShanDuel_Cont["InstanceId"]
	
	--删除展示NPC
	for k,v in pairs(tShuShanDuel_Instance[nInstanceId]["Npc"]) do
		Npc_DelDynaNpc(nMapId,"name",tShuShanDuel_Text["Dynanpc"]["Name"][v])
	end
	
	--终极副本删除对应NPC
	if nInstanceId == tShuShanDuel_Cont["InstanceId"] then
		local tBossRefresh = CommonFunc_Copy(tShuShanDuel_BossRefresh[nUserId])
		local nDifficulty = 0
		local nProId = 0
		
		for k,v in pairs(tBossRefresh) do
			nDifficulty = v["Difficulty"]
			nProId = v["ProId"]
			
			Npc_DelDynaNpc(nMapId,"name",tShuShanDuel_Text["DifficultyPro"][nDifficulty][nProId])
		end
	end
	
	--副本刷Boss
	ShuShanDuel_NewBoss(nInstanceId, nUserId, nMapId)
	
	--光效
	local sSzObj = tShuShanDuel_Cont["Effect"]["Begin"]["SzObj"]
	local sEffect = tShuShanDuel_Cont["Effect"]["Begin"]["Effect"]
	
	User_EffectAdd(sSzObj,sEffect,nUserId)
	
	--屏幕震动
	User_Screffect(1)
	
	User_TalkChannel2005(tShuShanDuel_Text["Channel2005"]["Begin"][nNpcId])
end

--副本刷Boss
function ShuShanDuel_NewBoss(nInstanceId, nUserId, nMapId)
	local nGenId = 0
	local nPosX = 0
	local nPosY = 0
	local nMonsterId = 0
	local nDifficulty = 0
	local nProId = 0
	local tBossRefresh = CommonFunc_Copy(tShuShanDuel_BossRefresh[nUserId])
	
	for k,v in pairs(tBossRefresh) do
		if tShuShanDuel_Place[nInstanceId][k] == nil then
			break
		end
		
		nPosX = tShuShanDuel_Place[nInstanceId][k]["PosX"]
		nPosY = tShuShanDuel_Place[nInstanceId][k]["PosY"]
		nGenId = tShuShanDuel_Place[nInstanceId][k]["GenId"]
		nDifficulty = v["Difficulty"]
		nProId = v["ProId"]
		nMonsterId = tShuShanDuel_BossDifPro[nDifficulty][nProId]
		
		if Monster_AddAndCount(nMapId,nPosX - 3,nPosY,nGenId,nMonsterId) then
			
		end
	end
end

--判断是否在副本内
function ShuShanDuel_IsInInstance(nLeaderId, nUserId)
	local nMapId = Get_UserMapId(nUserId)
	
	--检查地图属性
	for k,v in pairs(tShuShanDuel_MapDoc) do
		if Get_MapDoc(nMapId) == v then
			tShuShanDuel_LeaderRefresh[nLeaderId] = false
		end
	end
end

--刷新对手之前判断
function ShuShanDuel_FrontRefresh(nNpcId, nNeedCultivation, nIndex)
	local nUserId = Get_UserId()
	
	tShuShanDuel_LeaderRefresh[nUserId] = true
	
	--判断队员在副本内不能刷新
	if Get_UserTeamNumbers(nUserId) > 1 and User_IsTeamLeader(nUserId) then
		
		User_TeamExeFuncByLeader(3, string.format("ShuShanDuel_IsInInstance</N>%d", nUserId), nUserId)
		
		--等待队员判断完成
		for i = 1, 1000 do
			for j = 1, 1000 do
			end
		end
	end
	
	if not tShuShanDuel_LeaderRefresh[nUserId] then
		Sys_MsgBox(tShuShanDuel_Text["MsgBox"]["NoRefrash"])
		return
	end
	
	if nIndex == 0 or nIndex == 2 then
		ShuShanDuel_OptionRefresh(nNpcId, nNeedCultivation, nIndex)
	elseif nIndex == 1 then
		LinkNpcGossipFunc_New(nNpcId, "2-4")
	end
end

--刷新对手（100点修行值）
function ShuShanDuel_OptionRefresh(nNpcId, nNeedCultivation, nIndex)
	local nUserId = Get_UserId()
	local nCultivation = Get_UserCultivation(nUserId)
	
	--活动时间判断
	if not Sys_ChkFullTime(tShuShanDuel_Time["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-5")
		return
	end
	
	--有团队且不是队长不能刷新
	if Get_UserTeamNumbers(nUserId) ~= 0 and not User_IsTeamLeader(nUserId) then
		return
	end
	
	if nNeedCultivation > 0 then
		--修行值判断
		if nCultivation < nNeedCultivation then
			tNpcGossip[nNpcId]["Text311"] = string.format(tShuShanDuel_Text[nNpcId]["Text311"], nNeedCultivation)
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		end
		
		--扣除修行值
		User_AddCultivation((-1) * nNeedCultivation,nUserId)
		
		Sys_SaveActionFestivalLog(string.format(tShuShanDuel_Log["Cultivation"], nNeedCultivation))
		
		--修行值刷新打EMoneyLog、便于统计
		Sys_SaveEmoneyBuy(string.format(tShuShanDuel_ELog["CultivationRefrash"], nNeedCultivation),nUserId)
	end
	
	--对手刷新
	ShuShanDuel_RandRefresh(nIndex)
	
	--选项刷新
	ShuShanDuel_Accept(nNpcId)
end

--刷新对手（3天石）
function ShuShanDuel_EMoneyRefresh(nNpcId, nNowEMoney, nIndex)
	local nUserId = Get_UserId()
	local nNeedEMoney = nNowEMoney
	local nEMoney = Get_UserEMoney(nUserId)
	local nEvent = tShuShanDuel_Stc["EMoney"]["Event"]
	local nType = tShuShanDuel_Stc["EMoney"]["Type"]
	local nDelay = tShuShanDuel_Stc["EMoney"]["Delay"]
	local nTimeType = tShuShanDuel_Stc["EMoney"]["TimeType"]
	
	--掩码清零，打时间戳
	Task_StcReset(nEvent,nType,nUserId,nTimeType,nDelay)
	
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	if nData > 0 then
		--已屏蔽二次确认，今天不再弹，直接走二次确认的逻辑
		ShuShanDuel_EMoneyRefreshConfirm(nNpcId, nNeedEMoney, nIndex)
		return
	end
	
	--活动时间判断
	if not Sys_ChkFullTime(tShuShanDuel_Time["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-5")
		return
	end
	
	--有团队且不是队长不能刷新
	if Get_UserTeamNumbers(nUserId) ~= 0 and not User_IsTeamLeader(nUserId) then
		return
	end
	
	--天石不足
	if nEMoney < nNeedEMoney then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"3-3")
end

--屏蔽二次确认
function ShuShanDuel_NoConfirm(nNpcId)
	local nUserId = Get_UserId()
	local nEvent = tShuShanDuel_Stc["EMoney"]["Event"]
	local nType = tShuShanDuel_Stc["EMoney"]["Type"]
	local nSave = tShuShanDuel_Stc["EMoney"]["Save"]
	
	--掩码设置
	Task_AddStatistic(nEvent,nType,1,nSave,nUserId)
	
	--回到对白
	ShuShanDuel_Accept(nNpcId)
end

--刷新对手（3天石），二次确认
function ShuShanDuel_EMoneyRefreshConfirm(nNpcId, nNowEMoney, nIndex)
	local nUserId = Get_UserId()
	local nNeedEMoney = nNowEMoney
	local nEMoney = 0
	
	--活动时间判断
	if not Sys_ChkFullTime(tShuShanDuel_Time["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-5")
		return
	end
	
	--有团队且不是队长不能刷新
	if Get_UserTeamNumbers(nUserId) ~= 0 and not User_IsTeamLeader(nUserId) then
		return
	end
	
	--天石或天石（赠）不足
	if tShuShanDuel_Cont["EMoney"][nNeedEMoney] then
		nEMoney = Get_UserEMoney(nUserId)
		if nEMoney < nNeedEMoney then
			LinkNpcGossipFunc_New(nNpcId,"3-2")
			return
		end
	else
		nEMoney = Get_UserMonoEMoney(nUserId)
		if nEMoney < nNeedEMoney then
			LinkNpcGossipFunc_New(nNpcId,"3-4")
			return
		end
	end
	
	--扣除天石或天石赠
	if tShuShanDuel_Cont["EMoney"][nNeedEMoney] then
		User_AddEMoney((-1) * nNeedEMoney,nUserId)
	else
		User_AddEMoneyMono((-1) * nNeedEMoney,nUserId)
	end
	
	--天石log
	if tShuShanDuel_Cont["EMoney"][nNeedEMoney] then
		if nIndex == 0 then
			Sys_SaveEmoneyBuy(string.format(tShuShanDuel_ELog["EMoneyRefrash"], nNeedEMoney, nNeedEMoney))
		else
			Sys_SaveEmoneyBuy(string.format(tShuShanDuel_ELog["EMoneyTopRefrash"], nNeedEMoney, nNeedEMoney))
		end
	else
		Sys_SaveEmoneyBuy(string.format(tShuShanDuel_ELog["EMoneyMonoRefrash"], nNeedEMoney))
	end
	
	--刷新对手
	ShuShanDuel_RandRefresh(nIndex)
	
	--选项刷新
	ShuShanDuel_Accept(nNpcId)
end

--试炼成就一览
function ShuShanDuel_ViewAchieve(nId, nFlag)
	local nMaxAchieve = tShuShanDuel_Cont["MaxAchieve"]
	local nHalfAchieve = math.floor(tShuShanDuel_Cont["MaxAchieve"] / 2)
	local nGroup = tShuShanDuel_Cont["Group"]
	local nLine = math.floor(nMaxAchieve / nGroup)
	local sText = ""
	local nEvent = tShuShanDuel_Stc["StarLevelUp"]["Event"]
	local nType = 0
	local nIndex = 0
	local nNum = 0
	local nTip = 0
	
	for i = 1, nLine do
		for j = 1, nGroup do
			nNum = (j - 1) * nLine + i
			nTip = (i - 1) * nGroup + j
			
			if nNum > nHalfAchieve then
				nIndex = nNum - nHalfAchieve
				nType = tShuShanDuel_Stc["StarLevelDown"]["Type"]
			else
				nIndex = nNum
				nType = tShuShanDuel_Stc["StarLevelUp"]["Type"]
			end
			
			--判断是否获得过该成就
			if ShuShanDuel_IsGet(nEvent, nType, nIndex) then
				sText = string.format(tShuShanDuel_Text["AchieveColor"]["Yellow"], tShuShanDuel_Text["AchieveTip"][nNum], tShuShanDuel_Text["Achieve"][nNum])
			else
				sText = string.format(tShuShanDuel_Text["AchieveColor"]["Gray"], tShuShanDuel_Text["AchieveTip"][nNum], tShuShanDuel_Text["Achieve"][nNum])
			end
			
			if nFlag == 0 then
				tNpcGossip[nId]["Text22"..(nTip + 6)] = string.format(tShuShanDuel_Text[nId]["Text22"..(nTip + 6)], sText)
			else
				tItem[nId]["Text11"..(nTip + 6)] = string.format(tShuShanDuel_Text[nId]["Text11"..(nTip + 6)], sText)
			end
		end
	end
	
	if nFlag == 0 then
		LinkNpcGossipFunc_New(nId, "2-2")
	else
		return true
	end
end

--寻路
function ShuShanDuel_Where(sIndex)
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	local nPosX = tShuShanDuel_DynNpc[sIndex]["PosX"]
	local nPosY = tShuShanDuel_DynNpc[sIndex]["PosY"]
	
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,0,nUserId)
end

--切屏
function ShuShanDuel_ChgMap(nMapId)
	local nBoundX = tShuShanDuel_Cont["Bound"]["X"]
	local nBoundY = tShuShanDuel_Cont["Bound"]["Y"]
	local nBoundCX = tShuShanDuel_Cont["Bound"]["CX"]
	local nBoundCY = tShuShanDuel_Cont["Bound"]["CY"]
	local nCheck = tShuShanDuel_Cont["Bound"]["Check"]
	
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,nBoundCX,nBoundCY,nCheck)
	
	if tShuShanDuel_Text["Channel2005"][nMapId] ~= nil then
		User_TalkChannel2005(tShuShanDuel_Text["Channel2005"][nMapId])
	end
end

--切屏点
function ShuShanDuel_Trap(nTrapId,nTrapType)
	local nUserId = Get_UserId()
	local nMapId = tShuShanDuel_Cont["MapId"]["Return"]
	local sFunc = string.format("ShuShanDuel_ChgMap</N>%d", nMapId)
	local nEvent = tShuShanDuel_Stc["Award"]["Event"]
	local nType = tShuShanDuel_Stc["Award"]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	--已通关，但是没领奖，出去给提示
	if nData % 2 ~= 0 then
		Sys_MsgBox(tShuShanDuel_Text["MsgBox"]["IsReturnAward"], sFunc)
	else
		Sys_MsgBox(tShuShanDuel_Text["MsgBox"]["IsReturn"], sFunc)
	end
end

--刷新动态NPC
function ShuShanDuel_RefreshNPC(nMapId, nIndex,nNowPosX, nNowPosY)
	local sName = tShuShanDuel_Text["Dynanpc"]["Name"][nIndex]
	local nSort = tShuShanDuel_DynNpc[nIndex]["Sort"]
	local nType = tShuShanDuel_DynNpc[nIndex]["Type"]
	local nLookFace = tShuShanDuel_DynNpc[nIndex]["LookFace"]
	local nAction = tShuShanDuel_DynNpc[nIndex]["Action"]
	local nPosX = nNowPosX or tShuShanDuel_DynNpc[nIndex]["PosX"]
	local nPosY = nNowPosY or tShuShanDuel_DynNpc[nIndex]["PosY"]
	
	Npc_CreateDynaNpc(sName, nType ,nSort ,nLookFace,0,0,nMapId, nPosX,nPosY,0,0,0,nAction)
end

--怪物掉落
function ShuShanDuel_MonsterDrop(nDifficulty, nPro, nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nEvent = tShuShanDuel_Stc["WeaponCoat"]["Event"]
	local nType = tShuShanDuel_BossDrop["StcType"][nDifficulty]
	local nSave = tShuShanDuel_Stc["WeaponCoat"]["Save"]
	local nDelay = tShuShanDuel_Stc["WeaponCoat"]["Delay"]
	local nTimeType = tShuShanDuel_Stc["WeaponCoat"]["TimeType"]
	local sAttr = tShuShanDuel_Cont["Attr"]
	
	--隔天清零
	Task_StcReset(nEvent,nType,nNowUserId,nTimeType,nDelay)
	
	local nTimes = ShuShanDuel_GetNum(nEvent, nType, nNowUserId)
	
	local tItemId = tShuShanDuel_BossDrop["ItemId"][nDifficulty] or tShuShanDuel_BossDrop["ItemId"][1]
	local nItemTypeId = 0
	
	local nEndNum = tShuShanDuel_Cont["TotalPercent"]
	local nStartNum = tShuShanDuel_BossDrop["Percent"][nDifficulty]
	local nDrop = tShuShanDuel_Cont["Drop"]
	
	--掉武器外套
	if nType == tShuShanDuel_Stc["WeaponCoat"]["Type"] then
		--达到掉落上限
		if nTimes >= tShuShanDuel_Stc["WeaponCoat"]["Data"] then
			return
		end
		
		--概率掉落
		if not Sys_Random(nStartNum,nEndNum) then
			return
		end
		
		--掉落物品随机
		if not Sys_Random(nDrop,nEndNum) then
			nDrop = nEndNum - nDrop
		end
		
		nItemTypeId = tItemId[nDrop][nPro]
		
		--掩码设置
		ShuShanDuel_SetStc(nEvent, nType, nPro, nNowUserId)
		
	--掉技能外套
	elseif nType == tShuShanDuel_Stc["SkillCoat"]["Type"] then
		--已经获得相应技能外套
		if ShuShanDuel_IsGet(nEvent, nType, nPro, nNowUserId) then
			return
		end
		
		--掩码设置
		ShuShanDuel_SetStc(nEvent, nType, nPro, nNowUserId)
		
		nItemTypeId = tItemId[nPro]
	else
		return
	end
	
	--给奖
	--背包空间判断
	if User_CheckLeftSpace(tShuShanDuel_Cont["Space"] ,nNowUserId) then
		Item_AddNewItem(nItemTypeId, sAttr, nNowUserId)
	else
		--邮件发奖
		local sItemName = Get_ItemtypeName(tonumber(nItemTypeId))
		local nActionId = tShuShanDuel_Cont["ActionId"][nItemTypeId]
		local nExistDay = tShuShanDuel_Cont["ExistDay"]
		local sSender =tShuShanDuel_Text["Mail"]["Sender"]
		local sTitle = tShuShanDuel_Text["Mail"]["Title"]
		local sContent = string.format(tShuShanDuel_Text["Mail"]["Content"], sItemName)
		
		Sys_SendMail(nNowUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
		
		Sys_MsgBox(string.format(tShuShanDuel_Text["MsgBox"]["GetCoat"], sItemName),nil,nil,nNowUserId)
	end
	
	--log
	Sys_SaveActionFestivalLog(string.format(tShuShanDuel_Log["GetItem"], nItemTypeId), nNowUserId)
end

--成就点亮
function ShuShanDuel_AchieveLight(nMonsterId, nUserId)
	
	tShuShanDuel_BossGroup[nUserId] = tShuShanDuel_BossGroup[nUserId] or {}
	
	table.insert(tShuShanDuel_BossGroup[nUserId], nMonsterId)
	
	table.sort(tShuShanDuel_BossGroup[nUserId])
	
	local nNum = 0
	local tBossId = tShuShanDuel_BossGroup[nUserId]
	local nHalfAchieve = math.floor(tShuShanDuel_Cont["MaxAchieve"] / 2)
	local nEvent = tShuShanDuel_Stc["StarLevelUp"]["Event"]
	local nType = 0
	local nIndex = 0
	
	for i = 1, #tShuShanDuel_Achieve do
		nNum = 0
		for j = 1, #tBossId do
			for k = 1, #tShuShanDuel_Achieve[i] do
				if tBossId[j] == tShuShanDuel_Achieve[i][k] then
					nNum = nNum + 1
					break
				end
			end
		end
		
		--成就可以点亮
		if nNum >= #tShuShanDuel_Achieve[i] then
			if i > nHalfAchieve then
				nIndex = i - nHalfAchieve
				nType = tShuShanDuel_Stc["StarLevelDown"]["Type"]
			else
				nIndex = i
				nType = tShuShanDuel_Stc["StarLevelUp"]["Type"]
			end
			
			--最强8个成就给全服公告
			local nLine = tShuShanDuel_Cont["MaxAchieve"] / tShuShanDuel_Cont["Group"]
			local nAchieveTitle = math.floor((i - 1) / nLine) + 1
			local sUserName = Get_UserName(nUserId)
			
			if nAchieveTitle == #tShuShanDuel_Text["AchieveTitle"] then
				Sys_SystemBroadcast(string.format(tShuShanDuel_Text["Broadcast"]["MostAchieve"], sUserName))
			end
			
			--判断是否获得过该成就
			if not ShuShanDuel_IsGet(nEvent, nType, nIndex, nUserId) then
				ShuShanDuel_SetStc(nEvent, nType, nIndex, nUserId)
				
				--给试炼成就记录册
				local nAchieveBook = tShuShanDuel_Cont["ItemId"]["AchieveBook"]
				if not Item_ChkItem(nAchieveBook,nil,nil,nUserId) and not Item_ChkItem(nAchieveBook,nil,1,nUserId) then
					Item_AddNewItem(nAchieveBook, "0 1", nUserId)
				end
				
				--称号获得
				local nTitle = ShuShanDuel_GetTitle(nUserId)
				
				--提示
				local sMonsterName = Get_MonsterName()
				local sAchieveTitle = tShuShanDuel_Text["AchieveTitle"][nAchieveTitle]
				local sAchieveName = tShuShanDuel_Text["Achieve"][i]
				--local sTitleName = tShuShanDuel_Text["TitleName"][nTitle] or ""
				local nStrength = tShuShanDuel_Cont["Strength"][nTitle] or 0
				local sStrength = string.format(tShuShanDuel_Text["StrengthValue"]["Award"], nStrength)
				
				if nTitle == 0 then
					Sys_MsgBox(string.format(tShuShanDuel_Text["MsgBox"]["GetAchieve"], sMonsterName, sAchieveTitle, sAchieveName),nil , nil, nUserId)
				else
					Sys_MsgBox(string.format(tShuShanDuel_Text["MsgBox"]["GetAchieveAndAward"], sAchieveTitle, sStrength),nil , nil, nUserId)
				end
			end
		end
	end
end

--执行成就点亮和怪物掉落
function ShuShanDuel_AchieveLightAndMonsterDrop(nMapId, nMonsterId, nDifficulty, nPro, nUserId)
	local nNowMapId = Get_UserMapId(nUserId)
	
	if nNowMapId ~= nMapId then
		return
	end
	
	ShuShanDuel_AchieveLight(nMonsterId, nUserId)
	ShuShanDuel_MonsterDrop(nDifficulty, nPro, nUserId)
end

--怪物全部死亡触发
function ShuShanDuel_TeamKillBoss(nMapId, nMonsterId, nUserId)
	local nNowMapId = Get_UserMapId(nUserId)
	
	if nNowMapId ~= nMapId then
		return
	end
	
	--初级考验击败Boss掩码设置
	local bSuccess = ShuShanDuel_PrimaryKillBoss(nMonsterId, nUserId)
	
	local nTimeType = tShuShanDuel_Stc["Award"]["TimeType"]
	local nDelay = tShuShanDuel_Stc["Award"]["Delay"]
	local nSave = tShuShanDuel_Stc["Award"]["Save"]
	
	local nBoxEvent = 0
	local nBoxType = 0
	local nBoxData = 0
	
	local nInstanceId = tShuShanDuel_IntoInstance[nUserId] or tShuShanDuel_Cont["InstanceId"]
	
	--判断是初级试炼还是终极试炼
	if nInstanceId == tShuShanDuel_Cont["InstanceId"] then
		nBoxEvent = tShuShanDuel_Stc["Award"]["Event"]
		nBoxType = tShuShanDuel_Stc["Award"]["Type"]
		bSuccess = true
	else
		nBoxEvent = tShuShanDuel_Stc["Box"]["Event"]
		nBoxType = tShuShanDuel_Stc["Box"]["Type"]
	end
	
	Task_StcReset(nBoxEvent,nBoxType,nUserId,nTimeType,nDelay)
	nBoxData = Get_UserStatisticValue(nBoxEvent,nBoxType,nUserId)
	
	--掩码设置
	if nBoxData % 2 == 0 and bSuccess then
		Task_AddStatistic(nBoxEvent,nBoxType,1,nSave,nUserId)
	end
	
	--清空当前Boss组合
	tShuShanDuel_BossRefresh[nUserId] = nil
	
	--初级试炼给105弹框寻路至新手指导大师
	if nInstanceId ~= tShuShanDuel_Cont["InstanceId"] then
		Sys_MsgBox(tShuShanDuel_Text["MsgBox"]["PassPrimary"][nInstanceId], "ShuShanDuel_Where</S>PrimaryBox", nil, nUserId)
	end
	
	Sys_SaveActionFestivalLog(tShuShanDuel_Log["Success"], nUserId)
	
	Sys_SaveEmoneyBuy(tShuShanDuel_ELog["Success"], nUserId)
end

--怪物逻辑
function ShuShanDuel_KillMonster(nMonsterId)
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	local nDifficulty = 0
	local nPro = 0
	local nMapPosX = Get_MonsterPosX()
	local nMapPosY = Get_MonsterPosY()
	local sMapEffect = tShuShanDuel_Cont["Effect"]["KillBoss"]
	
	Monster_Death(nMonsterId,nMapId)
	
	Map_Effect(nMapId, nMapPosX, nMapPosY, sMapEffect)
	
	for k,v in pairs(tShuShanDuel_BossDifPro) do
		if nDifficulty ~= 0 then
			break
		end
		
		for i,j in pairs(v) do
			if j == nMonsterId then
				nDifficulty = k
				nPro = i
				break
			end
		end
	end
	
	local sMonsterName = tShuShanDuel_Text["DifficultyPro"][nDifficulty][nPro]
	local sMonsterStar = ""
	
	if nDifficulty == tShuShanDuel_Cont["MaxDiff"] then
		sMonsterStar = tShuShanDuel_Text["Star"][nDifficulty]
	end
	
	local sTalk = tShuShanDuel_Text["Channel2005"]["KillBoss"][nDifficulty] or tShuShanDuel_Text["Channel2005"]["KillBoss"][1]

	User_TalkChannel2005(string.format(sTalk, sMonsterName..sMonsterStar))
	
	--执行成就点亮和怪物掉落(全队可共享)
	if Get_UserTeamNumbers(nUserId) == 0 or Get_UserTeamNumbers(nUserId) == 1 then
		ShuShanDuel_AchieveLightAndMonsterDrop(nMapId, nMonsterId, nDifficulty, nPro, nUserId)
	else
		User_TeamExeFuncByTeamer(3,string.format("ShuShanDuel_AchieveLightAndMonsterDrop</N>%d</N>%d</N>%d</N>%d", nMapId, nMonsterId, nDifficulty, nPro),nUserId)
	end
	
	--判断怪物是否全部打死
	for k,v in pairs(tShuShanDuel_BossDifPro) do
		for i,j in pairs(v) do
			if Get_SysTempData(1,nMapId,j) > 0 then
				return
			end
		end
	end
	
	--全部死亡触发
	if Get_UserTeamNumbers(nUserId) == 0 or Get_UserTeamNumbers(nUserId) == 1 then
		ShuShanDuel_TeamKillBoss(nMapId, nMonsterId, nUserId)
	else
		User_TeamExeFuncByTeamer(3,string.format("ShuShanDuel_TeamKillBoss</N>%d</N>%d", nMapId, nMonsterId),nUserId)
	end
	
	local nInstanceId = tShuShanDuel_IntoInstance[nUserId] or tShuShanDuel_Cont["InstanceId"]
	
	--刷挑战完成后的NPC
	for k,v in pairs(tShuShanDuel_Instance[nInstanceId]["PassNpc"]) do
		ShuShanDuel_RefreshNPC(nMapId, v)
	end
end

--宝箱NPC接入
function ShuShanDuel_Link(nNpcId)
	local nUserId = Get_UserId()
	local nTimeType = tShuShanDuel_Stc["Award"]["TimeType"]
	local nDelay = tShuShanDuel_Stc["Award"]["Delay"]
	local nBoxEvent = tShuShanDuel_Stc["Award"]["Event"]
	local nBoxType = tShuShanDuel_Stc["Award"]["Type"]
	
	Task_StcReset(nBoxEvent,nBoxType,nUserId,nTimeType,nDelay)
	
	local nBoxData = Get_UserStatisticValue(nBoxEvent,nBoxType,nUserId)
	
	local nLimitData = tShuShanDuel_Stc["Award"]["Data"]
	
	local nTimes = nLimitData - math.floor(nBoxData / 2)
	local nStrength = tShuShanDuel_BossStrength[nUserId] or 0
	
	--没有领取资格
	if nBoxData == 0 then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	--超过3次
	if nBoxData >= nLimitData * 2 then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	--已经开过一次
	if nBoxData % 2 == 0 then
		tNpcGossip[nNpcId]["Text121"] = string.format(tShuShanDuel_Text[nNpcId]["Text121"], nLimitData - nTimes)
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	tNpcGossip[nNpcId]["Text116"] = string.format(tShuShanDuel_Text[nNpcId]["Text116"], nStrength)
	tNpcGossip[nNpcId]["Text117"] = string.format(tShuShanDuel_Text[nNpcId]["Text117"], nTimes)
	
	if nBoxData == 1 then
		tNpcGossip[nNpcId]["Text1-1"] = {111,112,113,114,115,116,117}
	else
		tNpcGossip[nNpcId]["Text1-1"] = {111,112,113,114,116,117}
	end
	
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

--开箱有礼
function ShuShanDuel_GetAward(nNpcId)
	local nUserId = Get_UserId()
	
	--读取相应NPC对应的掩码标志
	local sStc = tShuShanDuel_NPCStc[nNpcId]
	
	local nSave = tShuShanDuel_Stc[sStc]["Save"]
	local nBoxEvent = tShuShanDuel_Stc[sStc]["Event"]
	local nBoxType = tShuShanDuel_Stc[sStc]["Type"]
	local nBoxData = Get_UserStatisticValue(nBoxEvent,nBoxType,nUserId)
	local nLimitData = tShuShanDuel_Stc[sStc]["Data"]
	
	local nStrength = tShuShanDuel_BossStrength[nUserId] or 0
	
	--背包空间检查
	if nBoxType == tShuShanDuel_Stc["Award"]["Type"] and nBoxData == 1 then
		if not User_CheckLeftSpace(tShuShanDuel_Cont["TopSpace"] ,nUserId) then
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return
		end
	elseif nBoxType == tShuShanDuel_Stc["Award"]["Type"] and nBoxData ~= 1 then
		if not User_CheckLeftSpace(tShuShanDuel_Cont["Space"] ,nUserId) then
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return
		end
	end
	
	--超过3次
	if nBoxData >= nLimitData * 2 then
		return
	end
	
	--没有领取资格或已经开过一次
	if nBoxData % 2 == 0 then
		return
	end
	
	--设掩码
	Task_AddStatistic(nBoxEvent,nBoxType,1,nSave,nUserId)
	
	--给奖励
	local tAward = CommonFunc_Copy(tShuShanDuel_Reward["Strength"])
	local sELog = ""
	
	if nBoxType == tShuShanDuel_Stc["Award"]["Type"] and nBoxData == 1 then
		--终极试炼首次打开宝箱多给1000气，和豪华技能外套包
		tAward["RewardStrengthValue"]["Value"] = nStrength + tShuShanDuel_Cont["Strength"]["First"]
		tAward["Log"] = string.format(tShuShanDuel_Log["StrengthItemAward"], tAward["RewardStrengthValue"]["Value"])
		sELog = string.format(tShuShanDuel_ELog["GetStrengthCoatBag"], tAward["RewardStrengthValue"]["Value"])
	elseif nBoxType == tShuShanDuel_Stc["Award"]["Type"] and nBoxData ~= 1 then
		tAward["RewardStrengthValue"]["Value"] = nStrength
		tAward["RewardItem"][2] = nil
		tAward["Log"] = string.format(tShuShanDuel_Log["StrengthItem"], nStrength)
		sELog = string.format(tShuShanDuel_ELog["GetStrengthJade"], nStrength)
	else
		tAward["RewardStrengthValue"]["Value"] = nStrength
		tAward["RewardItem"] = nil
		tAward["Log"] = string.format(tShuShanDuel_Log["Strength"], nStrength)
		sELog = string.format(tShuShanDuel_ELog["GetStrength"], nStrength)
	end
	
	RewardTemplate_UseItemAndMsg(tAward)
	
	--获得气力给EMoneyLog，方便统计
	Sys_SaveEmoneyBuy(sELog, nUserId)
	
	--播光效
	local sEffect = tShuShanDuel_Cont["Effect"]["Primary"]["Effect"]
	local sSzObj = tShuShanDuel_Cont["Effect"]["Primary"]["SzObj"]
	User_EffectAdd(sSzObj,sEffect,nUserId)
end

--物品通用配置
function ShuShanDuel_ItemOpen(nItemTypeId ,nIndex)
	RewardTemplate_UseItemAndMsg(tShuShanDuel_Reward[nItemTypeId][nIndex])
end

--随机物品通用配置
function ShuShanDuel_ItemOpenRandom(nItemTypeId, nIndex)
	if Item_ChkItem(nItemTypeId) and Item_DelItem(nItemTypeId) then
		RewardTemplate_NewRandom(tShuShanDuel_RewardRandom[nItemTypeId], nIndex)
	end
end

--外套碎片
function ShuShanDuel_CoatShip(nItemTypeId, nNum)
	local nShipNum = nNum
	local sLink = ""

	--判断数量是否足够
	if not Item_ChkMulItem(nItemTypeId,nItemTypeId,nShipNum) then
		Sys_MsgBox(tShuShanDuel_Text["MsgBox"]["NoShip"])
		return
	end
	
	--空间判断
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tShuShanDuel_Text["MsgBox"]["Full"])
		return
	end
	
	local nEndNum = tShuShanDuel_Cont["TotalPercent"]
	local nStartNum = tShuShanDuel_Cont["CoatShip"]
	
	--概率合成
	if nShipNum ~= nEndNum then
		if Sys_Random(nStartNum, nEndNum) then
			--合成成功
			sLink =  "2-3"
		else
			--合成失败
			nShipNum = 1
			sLink = "2-2"
		end
	else
		--必定合成成功
		sLink = "2-1"
	end
	
	RewardTemplate_UseItemAndMsg(tShuShanDuel_Reward[nItemTypeId][nShipNum])
	
	LinkItemGossipFunc_New(nItemTypeId, sLink)
end
---------------------------------------------NPC模块---------------------------------------------
--精武门主
tNpcFace[4420] = 54
tNpcGossip[19977] = tNpcGossip[19977] or DefaultNpc:new{}
tNpcGossip[19977]["DialogueText"] = tShuShanDuel_Text[19977]
tNpcGossip[19977]["OptionHidden"] = 1

--活动时间前
tNpcGossip[19977]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[19977]["tOption1-1"] = {111}
tNpcGossip[19977]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tShuShanDuel_Time["Activity"])
end

--活动时间内，等级不够
tNpcGossip[19977]["Text1-2"] = {121,122,123,124,125,126,127,128,129,1210,1211,1212}
tNpcGossip[19977]["tOption1-2"] = {121}
tNpcGossip[19977]["ChkFunc1-2"] = function()
	local nUserId = Get_UserId()
	local nLevel = tShuShanDuel_Cont["Level"]
	local nMetempsychosis = tShuShanDuel_Cont["Metempsychosis"]
	if Sys_ChkFullTime(tShuShanDuel_Time["Activity"]) and not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
		return true
	else
		return false
	end
end

--活动时间，等级足够，已完成初级挑战
tNpcGossip[19977]["Text1-3"] = {131,132,133,134,135,136,137,138,139,1310,1311,1312}
tNpcGossip[19977]["tOption1-3"] = {131,132}
tNpcGossip[19977]["ChkFunc1-3"] = function()
	local nUserId = Get_UserId()
	local nLevel = tShuShanDuel_Cont["Level"]
	local nMetempsychosis = tShuShanDuel_Cont["Metempsychosis"]
	if Sys_ChkFullTime(tShuShanDuel_Time["Activity"]) and User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
		if ShuShanDuel_PassExam() >= tShuShanDuel_Stc["Primary"]["ThdData"] then
			return true
		else
			return false
		end
	else
		return false
	end
end
tNpcGossip[19977]["OptionFunc131"] = "ShuShanDuel_Accept</N>19977"--接受终极试炼
tNpcGossip[19977]["OptionFunc132"] = "ShuShanDuel_ViewAchieve</N>19977</N>0"--试炼成就一览

--活动时间，等级足够，未完成初级挑战
tNpcGossip[19977]["Text1-4"] = {141,142,143,144,145,146,147,148,149}
tNpcGossip[19977]["tOption1-4"] = {141}
tNpcGossip[19977]["ChkFunc1-4"] = function()
	local nUserId = Get_UserId()
	local nLevel = tShuShanDuel_Cont["Level"]
	local nMetempsychosis = tShuShanDuel_Cont["Metempsychosis"]
	local nData = ShuShanDuel_PassExam()
	if Sys_ChkFullTime(tShuShanDuel_Time["Activity"]) and User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
		if nData >= tShuShanDuel_Stc["Primary"]["ThdData"] then
			return false
		else
			tNpcGossip[19977]["Option141"] = tShuShanDuel_Text[19977]["Option14"..(nData + 1)]
			return true
		end
	else
		return false
	end
end
tNpcGossip[19977]["OptionFunc141"] = "ShuShanDuel_AcceptPrimary</N>19977"--接受新手试炼

--活动时间后
tNpcGossip[19977]["Text1-5"] = {151,152,153}
tNpcGossip[19977]["tOption1-5"] = {151}
tNpcGossip[19977]["ChkFunc1-5"] = function()
	return CommonFunc_GetAfterActivityTime(tShuShanDuel_Time["Activity"])
end

--接【接受终极试炼】
tNpcGossip[19977]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111,2112}
tNpcGossip[19977]["tOption2-1"] = {211,212,213,214,215,216}
tNpcGossip[19977]["OptionFunc211"] = "ShuShanDuel_IntoInstanceJudge</N>19977"--确认挑战
tNpcGossip[19977]["OptionFunc212"] = "ShuShanDuel_FrontRefresh</N>19977</N>100</N>0"--刷新对手（100点修行值）
tNpcGossip[19977]["OptionFunc213"] = "ShuShanDuel_FrontRefresh</N>19977</N>0</N>2"--挑战最弱组合（免费）
tNpcGossip[19977]["OptionFunc214"] = "ShuShanDuel_FrontRefresh</N>19977</N>0</N>1"--挑战最强组合（27天石）
tNpcGossip[19977]["OptionFunc215"] = "LinkNpcMain"--查看其它内容

--接【试炼成就一览】
tNpcGossip[19977]["Text2-2"] = {221,222,223,224,225,226,227,228,229,2210,
2211,2212,2213,2214,2215,2216,2217,2218,2219,2220,
2221,2222,2223,2224,2225,2226,2227,2228,2229,2230,
2231,2232,2233,2234,2235,2236,2237,2238,2239,2240,
2241,2242,2243,2244,2245,2246,2247,2248,2249,2250}
tNpcGossip[19977]["tOption2-2"] = {221}
tNpcGossip[19977]["OptionFunc221"] = "LinkNpcMain"--我明白了

--接【接受新手试炼】
tNpcGossip[19977]["Text2-3"] = {231,232,233,234,235,236}
tNpcGossip[19977]["tOption2-3"] = {231,232}
tNpcGossip[19977]["OptionFunc231"] = "ShuShanDuel_IntoInstance</N>19977"--确认挑战

--接【挑战最强组合】
tNpcGossip[19977]["Text2-4"] = {241,242}
tNpcGossip[19977]["tOption2-4"] = {241,242}
tNpcGossip[19977]["OptionFunc241"] = "ShuShanDuel_EMoneyRefreshConfirm</N>19977</N>27</N>1"
tNpcGossip[19977]["OptionFunc242"] = "ShuShanDuel_EMoneyRefreshConfirm</N>19977</N>99</N>1"

--战斗力小于350，出此对白
tNpcGossip[19977]["Text2-5"] = {251,252}
tNpcGossip[19977]["tOption2-5"] = {251,252}
tNpcGossip[19977]["OptionFunc251"] = "ShuShanDuel_IntoInstance</N>19977"
tNpcGossip[19977]["OptionFunc252"] = "ShuShanDuel_Accept</N>19977"

--修为值不够，提示
tNpcGossip[19977]["Text3-1"] = {311}
tNpcGossip[19977]["tOption3-1"] = {311}
tNpcGossip[19977]["OptionFunc311"] = "ShuShanDuel_EMoneyRefresh</N>19977</N>3</N>0"

--天石不足，提示
tNpcGossip[19977]["Text3-2"] = {321}
tNpcGossip[19977]["tOption3-2"] = {321}

--天石刷新，二次确认
tNpcGossip[19977]["Text3-3"] = {331}
tNpcGossip[19977]["tOption3-3"] = {331,332,333}
tNpcGossip[19977]["OptionFunc331"] = "ShuShanDuel_EMoneyRefreshConfirm</N>19977</N>3</N>0"
tNpcGossip[19977]["OptionFunc332"] = "ShuShanDuel_NoConfirm</N>19977"
tNpcGossip[19977]["OptionFunc333"] = "ShuShanDuel_Accept</N>19977"

--天石（赠）不足，提示
tNpcGossip[19977]["Text3-4"] = {341}
tNpcGossip[19977]["tOption3-4"] = {341}

--精武宝箱
tNpcFace[4597] = 447
tNpcGossip[20177] = tNpcGossip[20177] or DefaultNpc:new{}
tNpcGossip[20177]["DialogueText"] = tShuShanDuel_Text[20177]
tNpcGossip[20177]["OptionHidden"] = 1

--主对白
tNpcGossip[20177]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[20177]["tOption1-1"] = {111}
tNpcGossip[20177]["OptionFunc111"] = "ShuShanDuel_GetAward</N>20177"--开箱有礼

--已经领取过奖励
tNpcGossip[20177]["Text1-2"] = {121}
tNpcGossip[20177]["tOption1-2"] = {121}
tNpcGossip[20177]["OptionFunc121"] = "ShuShanDuel_ChgMap</N>1002"--找精武门主接受试炼

--一天3次都领取过
tNpcGossip[20177]["Text1-3"] = {131}
tNpcGossip[20177]["tOption1-3"] = {131}
tNpcGossip[20177]["OptionFunc131"] = "ShuShanDuel_ChgMap</N>1002"--送我出去

--没有领取资格
tNpcGossip[20177]["Text1-4"] = {141}
tNpcGossip[20177]["tOption1-4"] = {141}
tNpcGossip[20177]["OptionFunc141"] = "ShuShanDuel_ChgMap</N>1002"--送我出去

--背包满的提示
tNpcGossip[20177]["Text2-1"] = {211}
tNpcGossip[20177]["tOption2-1"] = {211}

--大侠陈臻
tNpcFace[5614] = 30
tNpcGossip[20478] = tNpcGossip[20478] or DefaultNpc:new{}
tNpcGossip[20478]["DialogueText"] = tShuShanDuel_Text[20478]
tNpcGossip[20478]["OptionHidden"] = 1

tNpcGossip[20478]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[20478]["tOption1-1"] = {111,112}
tNpcGossip[20478]["OptionFunc111"] = "ShuShanDuel_ClickNpc</N>20478"--开始挑战

--勇士【展示NPC】
tNpcFace[5337] = 57
tNpcGossip[20481] = tNpcGossip[20481] or DefaultNpc:new{}
tNpcGossip[20481]["DialogueText"] = tShuShanDuel_Text[20481]
tNpcGossip[20481]["OptionHidden"] = 1

tNpcGossip[20481]["Text1-1"] = {111}
tNpcGossip[20481]["tOption1-1"] = {111}

--弓手【展示NPC】
tNpcFace[5338] = 53
tNpcGossip[20482] = tNpcGossip[20482] or DefaultNpc:new{}
tNpcGossip[20482]["DialogueText"] = tShuShanDuel_Text[20482]
tNpcGossip[20482]["OptionHidden"] = 1

tNpcGossip[20482]["Text1-1"] = {111,112}
tNpcGossip[20482]["tOption1-1"] = {111}

--武僧【展示NPC】
tNpcFace[5339] = 225
tNpcGossip[20483] = tNpcGossip[20483] or DefaultNpc:new{}
tNpcGossip[20483]["DialogueText"] = tShuShanDuel_Text[20483]
tNpcGossip[20483]["OptionHidden"] = 1

tNpcGossip[20483]["Text1-1"] = {111,112}
tNpcGossip[20483]["tOption1-1"] = {111}

--道士【展示NPC】
tNpcFace[5340] = 73
tNpcGossip[20484] = tNpcGossip[20484] or DefaultNpc:new{}
tNpcGossip[20484]["DialogueText"] = tShuShanDuel_Text[20484]
tNpcGossip[20484]["OptionHidden"] = 1

tNpcGossip[20484]["Text1-1"] = {111,112}
tNpcGossip[20484]["tOption1-1"] = {111}

--小龙【展示NPC】
tNpcFace[5341] = 32
tNpcGossip[20485] = tNpcGossip[20485] or DefaultNpc:new{}
tNpcGossip[20485]["DialogueText"] = tShuShanDuel_Text[20485]
tNpcGossip[20485]["OptionHidden"] = 1

tNpcGossip[20485]["Text1-1"] = {111}
tNpcGossip[20485]["tOption1-1"] = {111}

--忍者【展示NPC】
tNpcFace[5342] = 17
tNpcGossip[20486] = tNpcGossip[20486] or DefaultNpc:new{}
tNpcGossip[20486]["DialogueText"] = tShuShanDuel_Text[20486]
tNpcGossip[20486]["OptionHidden"] = 1

tNpcGossip[20486]["Text1-1"] = {111}
tNpcGossip[20486]["tOption1-1"] = {111}

--海盗【展示NPC】
tNpcFace[5343] = 65
tNpcGossip[20487] = tNpcGossip[20487] or DefaultNpc:new{}
tNpcGossip[20487]["DialogueText"] = tShuShanDuel_Text[20487]
tNpcGossip[20487]["OptionHidden"] = 1

tNpcGossip[20487]["Text1-1"] = {111}
tNpcGossip[20487]["tOption1-1"] = {111}

--战士【展示NPC】
tNpcFace[5344] = 14
tNpcGossip[20488] = tNpcGossip[20488] or DefaultNpc:new{}
tNpcGossip[20488]["DialogueText"] = tShuShanDuel_Text[20488]
tNpcGossip[20488]["OptionHidden"] = 1

tNpcGossip[20488]["Text1-1"] = {111,112}
tNpcGossip[20488]["tOption1-1"] = {111}

--铜盔战士★
tNpcFace[5345] = 14
tNpcGossip[20489] = tNpcGossip[20489] or DefaultNpc:new{}
tNpcGossip[20489]["DialogueText"] = tShuShanDuel_Text[20489]
tNpcGossip[20489]["OptionHidden"] = 1

tNpcGossip[20489]["Text1-1"] = {111}
tNpcGossip[20489]["tOption1-1"] = {111}
tNpcGossip[20489]["OptionFunc111"] = "ShuShanDuel_ClickNpc</N>20489"--开始挑战

--烈火法师★★
tNpcFace[5346] = 73
tNpcGossip[20490] = tNpcGossip[20490] or DefaultNpc:new{}
tNpcGossip[20490]["DialogueText"] = tShuShanDuel_Text[20490]
tNpcGossip[20490]["OptionHidden"] = 1

tNpcGossip[20490]["Text1-1"] = {111}
tNpcGossip[20490]["tOption1-1"] = {111}
tNpcGossip[20490]["OptionFunc111"] = "ShuShanDuel_ClickNpc</N>20490"--开始挑战

--伽蓝武僧★★★
tNpcFace[5347] = 225
tNpcGossip[20491] = tNpcGossip[20491] or DefaultNpc:new{}
tNpcGossip[20491]["DialogueText"] = tShuShanDuel_Text[20491]
tNpcGossip[20491]["OptionHidden"] = 1

tNpcGossip[20491]["Text1-1"] = {111}
tNpcGossip[20491]["tOption1-1"] = {111}
tNpcGossip[20491]["OptionFunc111"] = "ShuShanDuel_ClickNpc</N>20491"--开始挑战

--新手指导大师
tNpcFace[4773] = 6
tNpcGossip[20537] = tNpcGossip[20537] or DefaultNpc:new{}
tNpcGossip[20537]["DialogueText"] = tShuShanDuel_Text[20537]
tNpcGossip[20537]["OptionHidden"] = 1

tNpcGossip[20537]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
tNpcGossip[20537]["tOption1-1"] = {111}

--初级宝箱
tNpcFace[4872] = 447
tNpcGossip[20828] = tNpcGossip[20828] or DefaultNpc:new{}
tNpcGossip[20828]["DialogueText"] = tShuShanDuel_Text[20828]
tNpcGossip[20828]["OptionHidden"] = 1

--通过新手试炼一（未领奖）
tNpcGossip[20828]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[20828]["tOption1-1"] = {111}
tNpcGossip[20828]["OptionFunc111"] = "ShuShanDuel_GetAward</N>20828"--领奖

--通过新手试炼二（未领奖）
tNpcGossip[20828]["Text1-2"] = {121,122,123,124,125,126}
tNpcGossip[20828]["tOption1-2"] = {121}
tNpcGossip[20828]["OptionFunc121"] = "ShuShanDuel_GetAward</N>20828"--领奖

--通过新手试炼三（未领奖）
tNpcGossip[20828]["Text1-3"] = {131,132,133,134,135,136,137}
tNpcGossip[20828]["tOption1-3"] = {131}
tNpcGossip[20828]["OptionFunc131"] = "ShuShanDuel_GetAward</N>20828"--领奖

--通过新手试炼一（已领奖）
tNpcGossip[20828]["Text1-4"] = {141,142,143,144,145}
tNpcGossip[20828]["tOption1-4"] = {141}
tNpcGossip[20828]["OptionFunc141"] = "ShuShanDuel_ChgMap</N>1002"--离开擂台

--通过新手试炼二（已领奖）
tNpcGossip[20828]["Text1-5"] = {151,152,153,154,155,156}
tNpcGossip[20828]["tOption1-5"] = {151}
tNpcGossip[20828]["OptionFunc151"] = "ShuShanDuel_ChgMap</N>1002"--离开擂台

--通过新手试炼三（已领奖）
tNpcGossip[20828]["Text1-6"] = {161,162,163,164,165,166}
tNpcGossip[20828]["tOption1-6"] = {161}
tNpcGossip[20828]["OptionFunc161"] = "ShuShanDuel_ChgMap</N>1002"--离开擂台

---------------------------------------------物品模块---------------------------------------------
--八大职业挑战书
tItemFace[3301423] = 399

--试炼成就记录册
tItemFace[3301424] = 421

tItem[3301424] = tItem[3301424] or {}
tItem[3301424]["DialogueText"] = tShuShanDuel_Text[3301424]
tItem[3301424]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,
1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,
1121,1122,1123,1124,1125,1126,1127,1128,1129,1130,
1131,1132,1133,1134,1135,1136,1137,1138,1139,1140,
1141,1142,1143,1144,1145,1146,1147,1148,1149,1150}
tItem[3301424]["ChkFunc1-1"] = function()
	return ShuShanDuel_ViewAchieve(3301424, 1)
end
tItem[3301424]["tOption1-1"] = {111}

--极品技能外套碎片
tItemFace[3301425] = 422
tItem[3301425] = tItem[3301425] or {}
tItem[3301425]["Function"] = function(nItemTypeId,sItemName)
	if Item_ChkItem(nItemTypeId) then
		LinkItemGossipFunc_New(nItemTypeId, "1-1")
	end
end
tItem[3301425]["DialogueText"] = tShuShanDuel_Text[3301425]
tItem[3301425]["Text1-1"] = {111,112}
tItem[3301425]["tOption1-1"] = {111,112,113}
tItem[3301425]["OptionFunc111"] = "ShuShanDuel_CoatShip</N>3301425</N>10"		--（10个碎片）
tItem[3301425]["OptionFunc112"] = "ShuShanDuel_CoatShip</N>3301425</N>100"		--（100个碎片）

tItem[3301425]["Text2-1"] = {211}
tItem[3301425]["tOption2-1"] = {211,212,213}
tItem[3301425]["OptionFunc211"] = "ShuShanDuel_CoatShip</N>3301425</N>10"		--（10个碎片）
tItem[3301425]["OptionFunc212"] = "ShuShanDuel_CoatShip</N>3301425</N>100"		--（100个碎片）

tItem[3301425]["Text2-2"] = {221}
tItem[3301425]["tOption2-2"] = {221}
tItem[3301425]["OptionFunc221"] = "ItemProcess</N>3301425"		--回到主对白

tItem[3301425]["Text2-3"] = {231}
tItem[3301425]["tOption2-3"] = {231}
tItem[3301425]["OptionFunc231"] = "ItemProcess</N>3301425"		--回到主对白

--武器外套包
local nShuShanDuel_Option = 0
local nShuShanDuel_Temp = 0
local tShuShanDuel_Face = {}
	tShuShanDuel_Face[3302732] = 423
	tShuShanDuel_Face[3302733] = 424
	tShuShanDuel_Face[3302734] = 425
	tShuShanDuel_Face[3302735] = 426
	tShuShanDuel_Face[3302762] = 427
	tShuShanDuel_Face[3302763] = 428
	tShuShanDuel_Face[3302764] = 429
	tShuShanDuel_Face[3302765] = 430
	tShuShanDuel_Face[3305621] = 430
	tShuShanDuel_Face[3306955] = 423
for i = 3302732, 3305621 do
	if (i >= 3302732 and i <= 3302735) or (i >= 3302762 and i <= 3302765) or (i == 3305621) then
		tItemFace[i] = tShuShanDuel_Face[i]
		tItem[i] = tItem[i] or {}
		tItem[i]["DialogueText"] = tShuShanDuel_Text[i]
		tItem[i]["Text1-1"] = {111}
		tItem[i]["ChkFunc1-1"] = function() return true end
		tItem[i]["tOption1-1"] = {}
		
		nShuShanDuel_Temp = 0
		
		for k,v in pairs(tShuShanDuel_Text[i]) do
			if string.find(k, 'Option') then
				nShuShanDuel_Option = tonumber(string.sub(k, 7))
				if nShuShanDuel_Option > nShuShanDuel_Temp then
					nShuShanDuel_Temp = nShuShanDuel_Option
				end
				table.insert(tItem[i]["tOption1-1"], nShuShanDuel_Option)
				tItem[i]["OptionFunc"..nShuShanDuel_Option] = string.format("ShuShanDuel_ItemOpen</N>%d</N>%d", i, nShuShanDuel_Option)
			end
		end
		
		tItem[i]["OptionFunc"..nShuShanDuel_Temp] = ""
		
		table.sort(tItem[i]["tOption1-1"])
	end
end

for i = 3306955, 3306955 do
	tItemFace[i] = tShuShanDuel_Face[i]
	tItem[i] = tItem[i] or {}
	tItem[i]["DialogueText"] = tShuShanDuel_Text[i]
	tItem[i]["Text1-1"] = {111}
	tItem[i]["ChkFunc1-1"] = function() return true end
	tItem[i]["tOption1-1"] = {}
	nShuShanDuel_Temp = 0
	for k,v in pairs(tShuShanDuel_Text[i]) do
		if string.find(k, 'Option') then
			nShuShanDuel_Option = tonumber(string.sub(k, 7))
			if nShuShanDuel_Option > nShuShanDuel_Temp then
				nShuShanDuel_Temp = nShuShanDuel_Option
			end
			table.insert(tItem[i]["tOption1-1"], nShuShanDuel_Option)
			tItem[i]["OptionFunc"..nShuShanDuel_Option] = string.format("ShuShanDuel_ItemOpen</N>%d</N>%d", i, nShuShanDuel_Option)
		end
	end
	tItem[i]["OptionFunc"..nShuShanDuel_Temp] = ""
	table.sort(tItem[i]["tOption1-1"])
end
--技能外套礼包
for i = 3302736, 3302743 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemTypeId,sItemName)
		ShuShanDuel_ItemOpenRandom(nItemTypeId, 1)
	end
end

--试炼大成令牌
tItemFace[3303060] = 446
tItem[3303060] = tItem[3303060] or {}
tItem[3303060]["DialogueText"] = tShuShanDuel_Text[3303060]
tItem[3303060]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112}
tItem[3303060]["ChkFunc1-1"] = function() return true end
tItem[3303060]["tOption1-1"] = {111}

--豪华技能外套包
tItemFace[3303136] = 521
tItem[3303136] = tItem[3303136] or {}
tItem[3303136]["DialogueText"] = tShuShanDuel_Text[3303136]
tItem[3303136]["Text1-1"] = {111}
tItem[3303136]["ChkFunc1-1"] = function() return true end
tItem[3303136]["tOption1-1"] = {111,112,113,114,115,116,117,118,119}
tItem[3303136]["OptionFunc111"] = "ShuShanDuel_ItemOpen</N>3303136</N>1"
tItem[3303136]["OptionFunc112"] = "ShuShanDuel_ItemOpen</N>3303136</N>2"
tItem[3303136]["OptionFunc113"] = "ShuShanDuel_ItemOpen</N>3303136</N>3"
tItem[3303136]["OptionFunc114"] = "ShuShanDuel_ItemOpen</N>3303136</N>4"
tItem[3303136]["OptionFunc115"] = "ShuShanDuel_ItemOpen</N>3303136</N>5"
tItem[3303136]["OptionFunc116"] = "ShuShanDuel_ItemOpen</N>3303136</N>6"
tItem[3303136]["OptionFunc117"] = "ShuShanDuel_ItemOpen</N>3303136</N>7"
tItem[3303136]["OptionFunc118"] = "ShuShanDuel_ItemOpen</N>3303136</N>8"
tItem[3303136]["OptionFunc119"] = "ShuShanDuel_ItemOpen</N>3303136</N>9"

--技能外套包
for k,v in pairs(tShuShanDuel_SkillCoat) do
	tItem[k] = tItem[k] or {}
	tItem[k]["Function"] = function(nItemTypeId,sItemName)
		ShuShanDuel_SkillCoatUse(nItemTypeId,sItemName)
	end
end

-- 技能外套体验包（3天）
tItemFace[3305623] = 521
tItem[3305623] = tItem[3305623] or {}
tItem[3305623]["DialogueText"] = tShuShanDuel_Text[3305623]
tItem[3305623]["Text1-1"] = {111}
tItem[3305623]["ChkFunc1-1"] = function() return true end
tItem[3305623]["tOption1-1"] = {111,112,113,114,115,116,117,118,119}
tItem[3305623]["OptionFunc111"] = "ShuShanDuel_ItemOpen</N>3305623</N>1"
tItem[3305623]["OptionFunc112"] = "ShuShanDuel_ItemOpen</N>3305623</N>2"
tItem[3305623]["OptionFunc113"] = "ShuShanDuel_ItemOpen</N>3305623</N>3"
tItem[3305623]["OptionFunc114"] = "ShuShanDuel_ItemOpen</N>3305623</N>4"
tItem[3305623]["OptionFunc115"] = "ShuShanDuel_ItemOpen</N>3305623</N>5"
tItem[3305623]["OptionFunc116"] = "ShuShanDuel_ItemOpen</N>3305623</N>6"
tItem[3305623]["OptionFunc117"] = "ShuShanDuel_ItemOpen</N>3305623</N>7"
tItem[3305623]["OptionFunc118"] = "ShuShanDuel_ItemOpen</N>3305623</N>8"
tItem[3305623]["OptionFunc119"] = "ShuShanDuel_ItemOpen</N>3305623</N>9"
-- 技能外套体验包（7天）
tItemFace[3305624] = 521
tItem[3305624] = tItem[3305624] or {}
tItem[3305624]["DialogueText"] = tShuShanDuel_Text[3305624]
tItem[3305624]["Text1-1"] = {111}
tItem[3305624]["ChkFunc1-1"] = function() return true end
tItem[3305624]["tOption1-1"] = {111,112,113,114,115,116,117,118,119}
tItem[3305624]["OptionFunc111"] = "ShuShanDuel_ItemOpen</N>3305624</N>1"
tItem[3305624]["OptionFunc112"] = "ShuShanDuel_ItemOpen</N>3305624</N>2"
tItem[3305624]["OptionFunc113"] = "ShuShanDuel_ItemOpen</N>3305624</N>3"
tItem[3305624]["OptionFunc114"] = "ShuShanDuel_ItemOpen</N>3305624</N>4"
tItem[3305624]["OptionFunc115"] = "ShuShanDuel_ItemOpen</N>3305624</N>5"
tItem[3305624]["OptionFunc116"] = "ShuShanDuel_ItemOpen</N>3305624</N>6"
tItem[3305624]["OptionFunc117"] = "ShuShanDuel_ItemOpen</N>3305624</N>7"
tItem[3305624]["OptionFunc118"] = "ShuShanDuel_ItemOpen</N>3305624</N>8"
tItem[3305624]["OptionFunc119"] = "ShuShanDuel_ItemOpen</N>3305624</N>9"
-- 五星服装体验包（3天）
tItemFace[3305622] = 521
tItem[3305622] = tItem[3305622] or {}
tItem[3305622]["DialogueText"] = tShuShanDuel_Text[3305622]
tItem[3305622]["Text1-1"] = {111}
tItem[3305622]["ChkFunc1-1"] = function() return true end
tItem[3305622]["tOption1-1"] = {111,112,113,114,115,116,117,118,119}
tItem[3305622]["OptionFunc111"] = "ShuShanDuel_ItemOpen</N>3305622</N>1"
tItem[3305622]["OptionFunc112"] = "ShuShanDuel_ItemOpen</N>3305622</N>2"
tItem[3305622]["OptionFunc113"] = "ShuShanDuel_ItemOpen</N>3305622</N>3"
tItem[3305622]["OptionFunc114"] = "ShuShanDuel_ItemOpen</N>3305622</N>4"

---------------------------------------------怪物模块---------------------------------------------
-- local tShuShanDuel_Monster = {}
	-- tShuShanDuel_Monster["ActivityTime"] = tShuShanDuel_Time["Activity"]
	-- tShuShanDuel_Monster["Function"] = ShuShanDuel_KillMonster
	-- tShuShanDuel_Monster["MonsterId"] = {4255,4256,4257,4258,4259,4260,4261,4262,4281,4282,4283,4284,4285,4286,4287,4288,4289,4290,4291,4292,4293,4294,4295,4296,4297,4298,4299,4300,4301,4302,4303,4304}
-- table.insert(tMonsterDrop_AreaLoad,tShuShanDuel_Monster)

---------------------------------------------陷阱模块---------------------------------------------
tTrap[1627] = tTrap[1627] or {}
tTrap[1627]["Function"] = function(nTrapId,nTrapType)
	ShuShanDuel_Trap(nTrapId,nTrapType)
end
