------------------------------------------------------------------------------------
--Name：            190701[英文征服][活动脚本]7月精准推送活动
--Creator:      洪聪敏
--Created:     2019/07/03
------------------------------------------------------------------------------------

--鍛藉悕鍓嶇紑
--NewQuestAreaBingfeng1_
--lua.ini:41374
--logid:12001495

--STC:(199,84) 记录开启天石（赠）周卡次数
--STC:(199,85) 记录开启爵位冲刺礼盒次数
--STC:(199,86) 记录开启+6赤炼石（赠）冲刺礼盒次数
--STC:(199,87) 记录开启+8赤炼石（赠）冲刺礼盒次数
--STC:(199,88) 记录开启气力值冲刺礼盒次数
--STC:(199,89) 记录开启免费强炼丹（赠）冲刺礼盒次数
--STC:(199,90) 记录开启散功丹（赠）冲刺礼盒次数
--STC:(199,91) 记录开启造化天书（赠）冲刺礼盒次数
--STC:(199,92) 记录开启金钢坚钻（赠）冲刺礼盒次数
--STC:(199,93) 记录开启超大固化石（赠）冲刺礼盒次数


------------------------------------------------------------------------------------
local tJulyAccuratePush_EmoneyPrice = {}
	tJulyAccuratePush_EmoneyPrice[3313156] = {}
	tJulyAccuratePush_EmoneyPrice[3313156][1] = 875
	tJulyAccuratePush_EmoneyPrice[3313156][2] = 99
	tJulyAccuratePush_EmoneyPrice[3313156][3] = 99
	tJulyAccuratePush_EmoneyPrice[3313156][4] = 99
	tJulyAccuratePush_EmoneyPrice[3313156][5] = 99
	tJulyAccuratePush_EmoneyPrice[3313156][6] = 99
	tJulyAccuratePush_EmoneyPrice[3313156][7] = 99
	tJulyAccuratePush_EmoneyPrice[3313156][8] = 99
	
	tJulyAccuratePush_EmoneyPrice[3313157] = {}
	tJulyAccuratePush_EmoneyPrice[3313157][1] = 2999
	tJulyAccuratePush_EmoneyPrice[3313157][2] = 2799
	tJulyAccuratePush_EmoneyPrice[3313157][3] = 2599
	tJulyAccuratePush_EmoneyPrice[3313157][4] = 2399
	tJulyAccuratePush_EmoneyPrice[3313157][5] = 2199
	
	tJulyAccuratePush_EmoneyPrice[3313158] = {}
	tJulyAccuratePush_EmoneyPrice[3313158][1] = 699
	tJulyAccuratePush_EmoneyPrice[3313158][2] = 619
	tJulyAccuratePush_EmoneyPrice[3313158][3] = 539
	tJulyAccuratePush_EmoneyPrice[3313158][4] = 499
	tJulyAccuratePush_EmoneyPrice[3313158][5] = 449

	tJulyAccuratePush_EmoneyPrice[3313159] = {}
	tJulyAccuratePush_EmoneyPrice[3313159][1] = 4499
	tJulyAccuratePush_EmoneyPrice[3313159][2] = 4199
	tJulyAccuratePush_EmoneyPrice[3313159][3] = 3899
	tJulyAccuratePush_EmoneyPrice[3313159][4] = 3599
	tJulyAccuratePush_EmoneyPrice[3313159][5] = 3199
	
	tJulyAccuratePush_EmoneyPrice[3313160] = {}
	tJulyAccuratePush_EmoneyPrice[3313160][1] = 399
	tJulyAccuratePush_EmoneyPrice[3313160][2] = 369
	tJulyAccuratePush_EmoneyPrice[3313160][3] = 349
	tJulyAccuratePush_EmoneyPrice[3313160][4] = 299
	tJulyAccuratePush_EmoneyPrice[3313160][5] = 259
	
	tJulyAccuratePush_EmoneyPrice[3313161] = {}
	tJulyAccuratePush_EmoneyPrice[3313161][1] = 799
	tJulyAccuratePush_EmoneyPrice[3313161][2] = 699
	tJulyAccuratePush_EmoneyPrice[3313161][3] = 599
	tJulyAccuratePush_EmoneyPrice[3313161][4] = 499
	tJulyAccuratePush_EmoneyPrice[3313161][5] = 399
	
	tJulyAccuratePush_EmoneyPrice[3313162] = {}
	tJulyAccuratePush_EmoneyPrice[3313162][1] = 300
	tJulyAccuratePush_EmoneyPrice[3313162][2] = 280
	tJulyAccuratePush_EmoneyPrice[3313162][3] = 255
	tJulyAccuratePush_EmoneyPrice[3313162][4] = 225
	tJulyAccuratePush_EmoneyPrice[3313162][5] = 190
	
	tJulyAccuratePush_EmoneyPrice[3313163] = {}
	tJulyAccuratePush_EmoneyPrice[3313163][1] = 300
	tJulyAccuratePush_EmoneyPrice[3313163][2] = 280
	tJulyAccuratePush_EmoneyPrice[3313163][3] = 255
	tJulyAccuratePush_EmoneyPrice[3313163][4] = 225
	tJulyAccuratePush_EmoneyPrice[3313163][5] = 190
	
	tJulyAccuratePush_EmoneyPrice[3313164] = {}
	tJulyAccuratePush_EmoneyPrice[3313164][1] = 1099
	tJulyAccuratePush_EmoneyPrice[3313164][2] = 999
	tJulyAccuratePush_EmoneyPrice[3313164][3] = 899
	tJulyAccuratePush_EmoneyPrice[3313164][4] = 859
	tJulyAccuratePush_EmoneyPrice[3313164][5] = 799 
	
	tJulyAccuratePush_EmoneyPrice[3313165] = {}
	tJulyAccuratePush_EmoneyPrice[3313165][1] = 1199
	tJulyAccuratePush_EmoneyPrice[3313165][2] = 1099
	tJulyAccuratePush_EmoneyPrice[3313165][3] = 999
	tJulyAccuratePush_EmoneyPrice[3313165][4] = 899
	tJulyAccuratePush_EmoneyPrice[3313165][5] = 799
	
	
local tJulyAccuratePush_EmoneyLog = {}
	tJulyAccuratePush_EmoneyLog[3313156] = {}
	--免费打开
	tJulyAccuratePush_EmoneyLog[3313156][1] = "350	22436	0	0	1	"
	--付费打开
	tJulyAccuratePush_EmoneyLog[3313156][2] = "350	22437	99	99	1	"
	--第一次打开
	tJulyAccuratePush_EmoneyLog[3313156][3] = "350	22435	875	875	1	"
	
	tJulyAccuratePush_EmoneyLog[3313157] = {}
	tJulyAccuratePush_EmoneyLog[3313157][1] = "350	22438	2999	2999	1	"
	tJulyAccuratePush_EmoneyLog[3313157][2] = "350	22439	2799	2799	1	"
	tJulyAccuratePush_EmoneyLog[3313157][3] = "350	22440	2599	2599	1	"
	tJulyAccuratePush_EmoneyLog[3313157][4] = "350	22441	2399	2399	1	"
	tJulyAccuratePush_EmoneyLog[3313157][5] = "350	22286	2199	2199	1	"
	
	tJulyAccuratePush_EmoneyLog[3313158] = {}
	tJulyAccuratePush_EmoneyLog[3313158][1] = "350	22287	699	699	1	"
	tJulyAccuratePush_EmoneyLog[3313158][2] = "350	22288	619	619	1	"
	tJulyAccuratePush_EmoneyLog[3313158][3] = "350	22289	539	539	1	"
	tJulyAccuratePush_EmoneyLog[3313158][4] = "350	22290	499	499	1	"
	tJulyAccuratePush_EmoneyLog[3313158][5] = "350	22291	449	449	1	"
	
	tJulyAccuratePush_EmoneyLog[3313159] = {}
	tJulyAccuratePush_EmoneyLog[3313159][1] = "350	22292	4499	4499	1	"
	tJulyAccuratePush_EmoneyLog[3313159][2] = "350	22293	4199	4199	1	"
	tJulyAccuratePush_EmoneyLog[3313159][3] = "350	22294	3899	3899	1	"
	tJulyAccuratePush_EmoneyLog[3313159][4] = "350	22295	3599	3599	1	"
	tJulyAccuratePush_EmoneyLog[3313159][5] = "350	22296	3199	3199	1	"
	
	tJulyAccuratePush_EmoneyLog[3313160] = {}
	tJulyAccuratePush_EmoneyLog[3313160][1] = "350	22297	399	399	1	"
	tJulyAccuratePush_EmoneyLog[3313160][2] = "350	22298	369	369	1	"
	tJulyAccuratePush_EmoneyLog[3313160][3] = "350	22299	349	349	1	"
	tJulyAccuratePush_EmoneyLog[3313160][4] = "350	22300	299	299	1	"
	tJulyAccuratePush_EmoneyLog[3313160][5] = "350	22301	259	259	1	"
	
	tJulyAccuratePush_EmoneyLog[3313161] = {}
	tJulyAccuratePush_EmoneyLog[3313161][1] = "350	22302	799	799	1	"
	tJulyAccuratePush_EmoneyLog[3313161][2] = "350	22303	699	699	1	"
	tJulyAccuratePush_EmoneyLog[3313161][3] = "350	22304	599	599	1	"
	tJulyAccuratePush_EmoneyLog[3313161][4] = "350	22305	499	499	1	"
	tJulyAccuratePush_EmoneyLog[3313161][5] = "350	22306	399	399	1	"
	
	tJulyAccuratePush_EmoneyLog[3313162] = {}
	tJulyAccuratePush_EmoneyLog[3313162][1] = "350	22307	300	300	1	"
	tJulyAccuratePush_EmoneyLog[3313162][2] = "350	22308	280	280	1	"
	tJulyAccuratePush_EmoneyLog[3313162][3] = "350	22309	255	255	1	"
	tJulyAccuratePush_EmoneyLog[3313162][4] = "350	22310	225	225	1	"
	tJulyAccuratePush_EmoneyLog[3313162][5] = "350	22311	190	190	1	"
	
	tJulyAccuratePush_EmoneyLog[3313163] = {}
	tJulyAccuratePush_EmoneyLog[3313163][1] = "350	22312	300	300	1	"
	tJulyAccuratePush_EmoneyLog[3313163][2] = "350	22313	280	280	1	"
	tJulyAccuratePush_EmoneyLog[3313163][3] = "350	22314	255	255	1	"
	tJulyAccuratePush_EmoneyLog[3313163][4] = "350	22315	225	225	1	"
	tJulyAccuratePush_EmoneyLog[3313163][5] = "350	22316	190	190	1	"
	
	tJulyAccuratePush_EmoneyLog[3313164] = {}
	tJulyAccuratePush_EmoneyLog[3313164][1] = "350	22317	1099	1099	1	"
	tJulyAccuratePush_EmoneyLog[3313164][2] = "350	22318	999	999	1	"
	tJulyAccuratePush_EmoneyLog[3313164][3] = "350	22319	899	899	1	"
	tJulyAccuratePush_EmoneyLog[3313164][4] = "350	22320	859	859	1	"
	tJulyAccuratePush_EmoneyLog[3313164][5] = "350	22321	799	799	1	"
	
	tJulyAccuratePush_EmoneyLog[3313165] = {}
	tJulyAccuratePush_EmoneyLog[3313165][1] = "350	22322	1199	1199	1	"
	tJulyAccuratePush_EmoneyLog[3313165][2] = "350	22323	1099	1099	1	"
	tJulyAccuratePush_EmoneyLog[3313165][3] = "350	22324	999	999	1	"
	tJulyAccuratePush_EmoneyLog[3313165][4] = "350	22325	899	899	1	"
	tJulyAccuratePush_EmoneyLog[3313165][5] = "350	22326	799	799	1	"
	
	
	
	
	
	
--掩码
local tJulyAccuratePush_Stc = {}
	tJulyAccuratePush_Stc[3313156] ={}
	tJulyAccuratePush_Stc[3313156]["Event"] =199
	tJulyAccuratePush_Stc[3313156]["Type"] = 84
	
	tJulyAccuratePush_Stc[3313157] ={}
	tJulyAccuratePush_Stc[3313157]["Event"] =199
	tJulyAccuratePush_Stc[3313157]["Type"] = 85
	
	tJulyAccuratePush_Stc[3313158] ={}
	tJulyAccuratePush_Stc[3313158]["Event"] =199
	tJulyAccuratePush_Stc[3313158]["Type"] = 86
	
	tJulyAccuratePush_Stc[3313159] ={}
	tJulyAccuratePush_Stc[3313159]["Event"] =199
	tJulyAccuratePush_Stc[3313159]["Type"] = 87
	
	tJulyAccuratePush_Stc[3313160] ={}
	tJulyAccuratePush_Stc[3313160]["Event"] =199
	tJulyAccuratePush_Stc[3313160]["Type"] = 88
	
	tJulyAccuratePush_Stc[3313161] ={}
	tJulyAccuratePush_Stc[3313161]["Event"] =199
	tJulyAccuratePush_Stc[3313161]["Type"] = 89
	
	tJulyAccuratePush_Stc[3313162] ={}
	tJulyAccuratePush_Stc[3313162]["Event"] =199
	tJulyAccuratePush_Stc[3313162]["Type"] = 90
	
	tJulyAccuratePush_Stc[3313163] ={}
	tJulyAccuratePush_Stc[3313163]["Event"] =199
	tJulyAccuratePush_Stc[3313163]["Type"] = 91
	
	tJulyAccuratePush_Stc[3313164] ={}
	tJulyAccuratePush_Stc[3313164]["Event"] =199
	tJulyAccuratePush_Stc[3313164]["Type"] = 92
	
	tJulyAccuratePush_Stc[3313165] ={}
	tJulyAccuratePush_Stc[3313165]["Event"] =199
	tJulyAccuratePush_Stc[3313165]["Type"] = 93
------------------------------------------------------------------------------------
local tJulyAccuratepush_Reward = {}
	-- ===周卡免费打开
	-- ===索引: tJulyAccuratepush_Reward[3313156][1]
	-- ===
	tJulyAccuratepush_Reward[3313156] = {}
	tJulyAccuratepush_Reward[3313156][1] = {}
	tJulyAccuratepush_Reward[3313156][1]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313156][1]["RewardEMoneyMono"] = {}
	tJulyAccuratepush_Reward[3313156][1]["RewardEMoneyMono"]["Value"] = 1000 -- 赠点, 【需求】1000赠点
	tJulyAccuratepush_Reward[3313156][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	605"
	tJulyAccuratepush_Reward[3313156][1]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313156][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313156][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===周卡付费打开
	-- ===索引: tJulyAccuratepush_Reward[3313156][2]
	-- ===
	tJulyAccuratepush_Reward[3313156][2] = {}
	tJulyAccuratepush_Reward[3313156][2]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313156][2]["RewardEMoneyMono"] = {}
	tJulyAccuratepush_Reward[3313156][2]["RewardEMoneyMono"]["Value"] = 2000 -- 赠点, 【需求】2000赠点
	tJulyAccuratepush_Reward[3313156][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	606"
	tJulyAccuratepush_Reward[3313156][2]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313156][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313156][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===爵位冲刺包第一次打开
	-- ===索引: tJulyAccuratepush_Reward[3313157][1]
	tJulyAccuratepush_Reward[3313157] = {}
	tJulyAccuratepush_Reward[3313157][1] = {}
	tJulyAccuratepush_Reward[3313157][1]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313157][1]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313157][1]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313157][1]["RewardItem"][1]["Id"] = 3320151 -- 【库】BillionContributionVoucher(B)[属性:9], 【表格】10亿爵位捐献凭证
	tJulyAccuratepush_Reward[3313157][1]["RewardItem"][1]["Attr"] = "0 1" -- BillionContributionVoucher(B)*1
	tJulyAccuratepush_Reward[3313157][1]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313157][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313157][1]["RewardEffect"]["Effect"] = "angelwing"



	-- ===爵位冲刺包第二次打开
	-- ===索引: tJulyAccuratepush_Reward[3313157][2]

	tJulyAccuratepush_Reward[3313157][2] = {}
	tJulyAccuratepush_Reward[3313157][2]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313157][2]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313157][2]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313157][2]["RewardItem"][1]["Id"] = 3320151 -- 【库】BillionContributionVoucher(B)[属性:9], 【表格】10亿爵位捐献凭证
	tJulyAccuratepush_Reward[3313157][2]["RewardItem"][1]["Attr"] = "0 1" -- BillionContributionVoucher(B)*1
	tJulyAccuratepush_Reward[3313157][2]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313157][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313157][2]["RewardEffect"]["Effect"] = "angelwing"



	-- ===爵位冲刺包第三次打开
	-- ===索引: tJulyAccuratepush_Reward[3313157][3]

	tJulyAccuratepush_Reward[3313157][3] = {}
	tJulyAccuratepush_Reward[3313157][3]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313157][3]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313157][3]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313157][3]["RewardItem"][1]["Id"] = 3320151 -- 【库】BillionContributionVoucher(B)[属性:9], 【表格】10亿爵位捐献凭证
	tJulyAccuratepush_Reward[3313157][3]["RewardItem"][1]["Attr"] = "0 1" -- BillionContributionVoucher(B)*1
	tJulyAccuratepush_Reward[3313157][3]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313157][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313157][3]["RewardEffect"]["Effect"] = "angelwing"



	-- ===爵位冲刺包第四次打开
	-- ===索引: tJulyAccuratepush_Reward[3313157][4]

	tJulyAccuratepush_Reward[3313157][4] = {}
	tJulyAccuratepush_Reward[3313157][4]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313157][4]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313157][4]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313157][4]["RewardItem"][1]["Id"] = 3320151 -- 【库】BillionContributionVoucher(B)[属性:9], 【表格】10亿爵位捐献凭证
	tJulyAccuratepush_Reward[3313157][4]["RewardItem"][1]["Attr"] = "0 1" -- BillionContributionVoucher(B)*1
	tJulyAccuratepush_Reward[3313157][4]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313157][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313157][4]["RewardEffect"]["Effect"] = "angelwing"



	-- ===爵位冲刺包第五次打开
	-- ===删除: 3313157,1
	-- ===索引: tJulyAccuratepush_Reward[3313157][5]

	tJulyAccuratepush_Reward[3313157][5] = {}
	tJulyAccuratepush_Reward[3313157][5]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313157][5]["DeleteItem"] = {}
	tJulyAccuratepush_Reward[3313157][5]["DeleteItem"][1] = {}
	tJulyAccuratepush_Reward[3313157][5]["DeleteItem"][1]["Id"] = 3313157 -- 【库】NobilitySprintBox[属性:9]
	tJulyAccuratepush_Reward[3313157][5]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313157][5]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313157][5]["RewardItem"][1]["Id"] = 3320151 -- 【库】BillionContributionVoucher(B)[属性:9], 【表格】10亿爵位捐献凭证
	tJulyAccuratepush_Reward[3313157][5]["RewardItem"][1]["Attr"] = "0 1" -- BillionContributionVoucher(B)*1
	tJulyAccuratepush_Reward[3313157][5]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313157][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313157][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===赤练石冲刺A包第一次打开
	-- ===索引: tJulyAccuratepush_Reward[3313158][1]
	tJulyAccuratepush_Reward[3313158] = {}
	tJulyAccuratepush_Reward[3313158][1] = {}
	tJulyAccuratepush_Reward[3313158][1]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313158][1]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313158][1]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313158][1]["RewardItem"][1]["Id"] = 730006 -- 【库】+6Stone[属性:0], 【表格】+6赤炼石
	tJulyAccuratepush_Reward[3313158][1]["RewardItem"][1]["Attr"] = "0 1 3" -- +6Stone（赠）*1
	tJulyAccuratepush_Reward[3313158][1]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313158][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313158][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===赤练石冲刺A包第二次打开
	-- ===索引: tJulyAccuratepush_Reward[3313158][2]

	tJulyAccuratepush_Reward[3313158][2] = {}
	tJulyAccuratepush_Reward[3313158][2]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313158][2]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313158][2]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313158][2]["RewardItem"][1]["Id"] = 730006 -- 【库】+6Stone[属性:0], 【表格】+6赤炼石
	tJulyAccuratepush_Reward[3313158][2]["RewardItem"][1]["Attr"] = "0 1 3" -- +6Stone（赠）*1
	tJulyAccuratepush_Reward[3313158][2]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313158][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313158][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===赤练石冲刺A包第三次打开
	-- ===索引: tJulyAccuratepush_Reward[3313158][3]

	tJulyAccuratepush_Reward[3313158][3] = {}
	tJulyAccuratepush_Reward[3313158][3]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313158][3]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313158][3]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313158][3]["RewardItem"][1]["Id"] = 730006 -- 【库】+6Stone[属性:0], 【表格】+6赤炼石
	tJulyAccuratepush_Reward[3313158][3]["RewardItem"][1]["Attr"] = "0 1 3" -- +6Stone（赠）*1
	tJulyAccuratepush_Reward[3313158][3]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313158][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313158][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===赤练石冲刺A包第四次打开
	-- ===索引: tJulyAccuratepush_Reward[3313158][4]

	tJulyAccuratepush_Reward[3313158][4] = {}
	tJulyAccuratepush_Reward[3313158][4]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313158][4]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313158][4]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313158][4]["RewardItem"][1]["Id"] = 730006 -- 【库】+6Stone[属性:0], 【表格】+6赤炼石
	tJulyAccuratepush_Reward[3313158][4]["RewardItem"][1]["Attr"] = "0 1 3" -- +6Stone（赠）*1
	tJulyAccuratepush_Reward[3313158][4]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313158][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313158][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===赤练石冲刺A包第五次打开
	-- ===删除: 3313158,1
	-- ===索引: tJulyAccuratepush_Reward[3313158][5]

	tJulyAccuratepush_Reward[3313158][5] = {}
	tJulyAccuratepush_Reward[3313158][5]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313158][5]["DeleteItem"] = {}
	tJulyAccuratepush_Reward[3313158][5]["DeleteItem"][1] = {}
	tJulyAccuratepush_Reward[3313158][5]["DeleteItem"][1]["Id"] = 3313158 -- 【库】+6Stone(B)SprintBox[属性:9]
	tJulyAccuratepush_Reward[3313158][5]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313158][5]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313158][5]["RewardItem"][1]["Id"] = 730006 -- 【库】+6Stone[属性:0], 【表格】+6赤炼石
	tJulyAccuratepush_Reward[3313158][5]["RewardItem"][1]["Attr"] = "0 1 3" -- +6Stone（赠）*1
	tJulyAccuratepush_Reward[3313158][5]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313158][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313158][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===赤练石冲刺B包第一次打开
	-- ===索引: tJulyAccuratepush_Reward[3313159][1]
	tJulyAccuratepush_Reward[3313159] = {}
	tJulyAccuratepush_Reward[3313159][1] = {}
	tJulyAccuratepush_Reward[3313159][1]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313159][1]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313159][1]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313159][1]["RewardItem"][1]["Id"] = 730008 -- 【库】+8Stone[属性:0], 【表格】+8赤炼石
	tJulyAccuratepush_Reward[3313159][1]["RewardItem"][1]["Attr"] = "0 1 3" -- +8Stone（赠）*1
	tJulyAccuratepush_Reward[3313159][1]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313159][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313159][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===赤练石冲刺B包第二次打开
	-- ===索引: tJulyAccuratepush_Reward[3313159][2]

	tJulyAccuratepush_Reward[3313159][2] = {}
	tJulyAccuratepush_Reward[3313159][2]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313159][2]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313159][2]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313159][2]["RewardItem"][1]["Id"] = 730008 -- 【库】+8Stone[属性:0], 【表格】+8赤炼石
	tJulyAccuratepush_Reward[3313159][2]["RewardItem"][1]["Attr"] = "0 1 3" -- +8Stone（赠）*1
	tJulyAccuratepush_Reward[3313159][2]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313159][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313159][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===赤练石冲刺B包第三次打开
	-- ===索引: tJulyAccuratepush_Reward[3313159][3]

	tJulyAccuratepush_Reward[3313159][3] = {}
	tJulyAccuratepush_Reward[3313159][3]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313159][3]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313159][3]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313159][3]["RewardItem"][1]["Id"] = 730008 -- 【库】+8Stone[属性:0], 【表格】+8赤炼石
	tJulyAccuratepush_Reward[3313159][3]["RewardItem"][1]["Attr"] = "0 1 3" -- +8Stone（赠）*1
	tJulyAccuratepush_Reward[3313159][3]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313159][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313159][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===赤练石冲刺B包第四次打开
	-- ===索引: tJulyAccuratepush_Reward[3313159][4]

	tJulyAccuratepush_Reward[3313159][4] = {}
	tJulyAccuratepush_Reward[3313159][4]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313159][4]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313159][4]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313159][4]["RewardItem"][1]["Id"] = 730008 -- 【库】+8Stone[属性:0], 【表格】+8赤炼石
	tJulyAccuratepush_Reward[3313159][4]["RewardItem"][1]["Attr"] = "0 1 3" -- +8Stone（赠）*1
	tJulyAccuratepush_Reward[3313159][4]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313159][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313159][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===赤练石冲刺B包第五次打开
	-- ===删除: 3313159,1
	-- ===索引: tJulyAccuratepush_Reward[3313159][5]

	tJulyAccuratepush_Reward[3313159][5] = {}
	tJulyAccuratepush_Reward[3313159][5]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313159][5]["DeleteItem"] = {}
	tJulyAccuratepush_Reward[3313159][5]["DeleteItem"][1] = {}
	tJulyAccuratepush_Reward[3313159][5]["DeleteItem"][1]["Id"] = 3313159 -- 【库】+8Stone(B)SprintBox[属性:9]
	tJulyAccuratepush_Reward[3313159][5]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313159][5]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313159][5]["RewardItem"][1]["Id"] = 730008 -- 【库】+8Stone[属性:0], 【表格】+8赤炼石
	tJulyAccuratepush_Reward[3313159][5]["RewardItem"][1]["Attr"] = "0 1 3" -- +8Stone（赠）*1
	tJulyAccuratepush_Reward[3313159][5]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313159][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313159][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===气力冲刺包第一次打开
	-- ===索引: tJulyAccuratepush_Reward[3313160][1]
	tJulyAccuratepush_Reward[3313160] = {}
	tJulyAccuratepush_Reward[3313160][1] = {}
	tJulyAccuratepush_Reward[3313160][1]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313160][1]["RewardStrengthValue"] = {}
	tJulyAccuratepush_Reward[3313160][1]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】气力值10000点
	tJulyAccuratepush_Reward[3313160][1]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313160][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313160][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===气力冲刺包第二次打开
	-- ===索引: tJulyAccuratepush_Reward[3313160][2]

	tJulyAccuratepush_Reward[3313160][2] = {}
	tJulyAccuratepush_Reward[3313160][2]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313160][2]["RewardStrengthValue"] = {}
	tJulyAccuratepush_Reward[3313160][2]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】气力值10000点
	tJulyAccuratepush_Reward[3313160][2]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313160][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313160][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===气力冲刺包第三次打开
	-- ===索引: tJulyAccuratepush_Reward[3313160][3]

	tJulyAccuratepush_Reward[3313160][3] = {}
	tJulyAccuratepush_Reward[3313160][3]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313160][3]["RewardStrengthValue"] = {}
	tJulyAccuratepush_Reward[3313160][3]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】气力值10000点
	tJulyAccuratepush_Reward[3313160][3]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313160][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313160][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===气力冲刺包第四次打开
	-- ===索引: tJulyAccuratepush_Reward[3313160][4]

	tJulyAccuratepush_Reward[3313160][4] = {}
	tJulyAccuratepush_Reward[3313160][4]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313160][4]["RewardStrengthValue"] = {}
	tJulyAccuratepush_Reward[3313160][4]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】气力值10000点
	tJulyAccuratepush_Reward[3313160][4]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313160][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313160][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===气力冲刺包第五次打开
	-- ===删除: 3313160,1
	-- ===索引: tJulyAccuratepush_Reward[3313160][5]

	tJulyAccuratepush_Reward[3313160][5] = {}
	tJulyAccuratepush_Reward[3313160][5]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313160][5]["DeleteItem"] = {}
	tJulyAccuratepush_Reward[3313160][5]["DeleteItem"][1] = {}
	tJulyAccuratepush_Reward[3313160][5]["DeleteItem"][1]["Id"] = 3313160 -- 【库】ChiSprintBox[属性:9]
	tJulyAccuratepush_Reward[3313160][5]["RewardStrengthValue"] = {}
	tJulyAccuratepush_Reward[3313160][5]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】气力值10000点
	tJulyAccuratepush_Reward[3313160][5]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313160][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313160][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===自创武功冲刺包第一次打开
	-- ===索引: tJulyAccuratepush_Reward[3313161][1]
	tJulyAccuratepush_Reward[3313161] = {}
	tJulyAccuratepush_Reward[3313161][1] = {}
	tJulyAccuratepush_Reward[3313161][1]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313161][1]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313161][1]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313161][1]["RewardItem"][1]["Id"] = 3003124 -- 【库】FavoredTrainingPill[属性:0], 【表格】免费强炼丹
	tJulyAccuratepush_Reward[3313161][1]["RewardItem"][1]["Attr"] = "0 100 3" -- FavoredTrainingPill（赠）*100
	tJulyAccuratepush_Reward[3313161][1]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313161][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313161][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===自创武功冲刺包第二次打开
	-- ===索引: tJulyAccuratepush_Reward[3313161][2]

	tJulyAccuratepush_Reward[3313161][2] = {}
	tJulyAccuratepush_Reward[3313161][2]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313161][2]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313161][2]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313161][2]["RewardItem"][1]["Id"] = 3003124 -- 【库】FavoredTrainingPill[属性:0], 【表格】免费强炼丹
	tJulyAccuratepush_Reward[3313161][2]["RewardItem"][1]["Attr"] = "0 100 3" -- FavoredTrainingPill（赠）*100
	tJulyAccuratepush_Reward[3313161][2]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313161][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313161][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===自创武功冲刺包第三次打开
	-- ===索引: tJulyAccuratepush_Reward[3313161][3]

	tJulyAccuratepush_Reward[3313161][3] = {}
	tJulyAccuratepush_Reward[3313161][3]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313161][3]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313161][3]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313161][3]["RewardItem"][1]["Id"] = 3003124 -- 【库】FavoredTrainingPill[属性:0], 【表格】免费强炼丹
	tJulyAccuratepush_Reward[3313161][3]["RewardItem"][1]["Attr"] = "0 100 3" -- FavoredTrainingPill（赠）*100
	tJulyAccuratepush_Reward[3313161][3]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313161][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313161][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===自创武功冲刺包第四次打开
	-- ===索引: tJulyAccuratepush_Reward[3313161][4]

	tJulyAccuratepush_Reward[3313161][4] = {}
	tJulyAccuratepush_Reward[3313161][4]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313161][4]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313161][4]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313161][4]["RewardItem"][1]["Id"] = 3003124 -- 【库】FavoredTrainingPill[属性:0], 【表格】免费强炼丹
	tJulyAccuratepush_Reward[3313161][4]["RewardItem"][1]["Attr"] = "0 100 3" -- FavoredTrainingPill（赠）*100
	tJulyAccuratepush_Reward[3313161][4]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313161][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313161][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===自创武功冲刺包第五次打开
	-- ===删除: 3313161,1
	-- ===索引: tJulyAccuratepush_Reward[3313161][5]

	tJulyAccuratepush_Reward[3313161][5] = {}
	tJulyAccuratepush_Reward[3313161][5]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313161][5]["DeleteItem"] = {}
	tJulyAccuratepush_Reward[3313161][5]["DeleteItem"][1] = {}
	tJulyAccuratepush_Reward[3313161][5]["DeleteItem"][1]["Id"] = 3313161 -- 【库】FavoredTrainingPill(B)SprintBox[属性:9]
	tJulyAccuratepush_Reward[3313161][5]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313161][5]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313161][5]["RewardItem"][1]["Id"] = 3003124 -- 【库】FavoredTrainingPill[属性:0], 【表格】免费强炼丹
	tJulyAccuratepush_Reward[3313161][5]["RewardItem"][1]["Attr"] = "0 100 3" -- FavoredTrainingPill（赠）*100
	tJulyAccuratepush_Reward[3313161][5]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313161][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313161][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===修为值冲刺包第一次打开
	-- ===索引: tJulyAccuratepush_Reward[3313162][1]
	tJulyAccuratepush_Reward[3313162] = {}
	tJulyAccuratepush_Reward[3313162][1] = {}
	tJulyAccuratepush_Reward[3313162][1]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313162][1]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313162][1]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313162][1]["RewardItem"][1]["Id"] = 3005412 -- 【库】PowerEraser[属性:0], 【表格】散功丹
	tJulyAccuratepush_Reward[3313162][1]["RewardItem"][1]["Attr"] = "0 5 3" -- PowerEraser（赠）*5
	tJulyAccuratepush_Reward[3313162][1]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313162][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313162][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===修为值冲刺包第二次打开
	-- ===索引: tJulyAccuratepush_Reward[3313162][2]

	tJulyAccuratepush_Reward[3313162][2] = {}
	tJulyAccuratepush_Reward[3313162][2]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313162][2]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313162][2]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313162][2]["RewardItem"][1]["Id"] = 3005412 -- 【库】PowerEraser[属性:0], 【表格】散功丹
	tJulyAccuratepush_Reward[3313162][2]["RewardItem"][1]["Attr"] = "0 5 3" -- PowerEraser（赠）*5
	tJulyAccuratepush_Reward[3313162][2]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313162][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313162][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===修为值冲刺包第三次打开
	-- ===索引: tJulyAccuratepush_Reward[3313162][3]

	tJulyAccuratepush_Reward[3313162][3] = {}
	tJulyAccuratepush_Reward[3313162][3]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313162][3]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313162][3]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313162][3]["RewardItem"][1]["Id"] = 3005412 -- 【库】PowerEraser[属性:0], 【表格】散功丹
	tJulyAccuratepush_Reward[3313162][3]["RewardItem"][1]["Attr"] = "0 5 3" -- PowerEraser（赠）*5
	tJulyAccuratepush_Reward[3313162][3]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313162][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313162][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===修为值冲刺包第四次打开
	-- ===索引: tJulyAccuratepush_Reward[3313162][4]

	tJulyAccuratepush_Reward[3313162][4] = {}
	tJulyAccuratepush_Reward[3313162][4]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313162][4]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313162][4]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313162][4]["RewardItem"][1]["Id"] = 3005412 -- 【库】PowerEraser[属性:0], 【表格】散功丹
	tJulyAccuratepush_Reward[3313162][4]["RewardItem"][1]["Attr"] = "0 5 3" -- PowerEraser（赠）*5
	tJulyAccuratepush_Reward[3313162][4]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313162][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313162][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===修为值冲刺包第五次打开
	-- ===删除: 3313162,1
	-- ===索引: tJulyAccuratepush_Reward[3313162][5]

	tJulyAccuratepush_Reward[3313162][5] = {}
	tJulyAccuratepush_Reward[3313162][5]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313162][5]["DeleteItem"] = {}
	tJulyAccuratepush_Reward[3313162][5]["DeleteItem"][1] = {}
	tJulyAccuratepush_Reward[3313162][5]["DeleteItem"][1]["Id"] = 3313162 -- 【库】PowerEraser(B)SprintBox[属性:9]
	tJulyAccuratepush_Reward[3313162][5]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313162][5]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313162][5]["RewardItem"][1]["Id"] = 3005412 -- 【库】PowerEraser[属性:0], 【表格】散功丹
	tJulyAccuratepush_Reward[3313162][5]["RewardItem"][1]["Attr"] = "0 5 3" -- PowerEraser（赠）*5
	tJulyAccuratepush_Reward[3313162][5]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313162][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313162][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===修行值冲刺包第一次打开
	-- ===索引: tJulyAccuratepush_Reward[3313163][1]
	tJulyAccuratepush_Reward[3313163] = {}
	tJulyAccuratepush_Reward[3313163][1] = {}
	tJulyAccuratepush_Reward[3313163][1]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313163][1]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313163][1]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313163][1]["RewardItem"][1]["Id"] = 723342 -- 【库】ModestyBook[属性:0], 【表格】造化天书
	tJulyAccuratepush_Reward[3313163][1]["RewardItem"][1]["Attr"] = "0 50 3" -- ModestyBook（赠）*50
	tJulyAccuratepush_Reward[3313163][1]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313163][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313163][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===修行值冲刺包第二次打开
	-- ===索引: tJulyAccuratepush_Reward[3313163][2]

	tJulyAccuratepush_Reward[3313163][2] = {}
	tJulyAccuratepush_Reward[3313163][2]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313163][2]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313163][2]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313163][2]["RewardItem"][1]["Id"] = 723342 -- 【库】ModestyBook[属性:0], 【表格】造化天书
	tJulyAccuratepush_Reward[3313163][2]["RewardItem"][1]["Attr"] = "0 50 3" -- ModestyBook（赠）*50
	tJulyAccuratepush_Reward[3313163][2]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313163][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313163][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===修行值冲刺包第三次打开
	-- ===索引: tJulyAccuratepush_Reward[3313163][3]

	tJulyAccuratepush_Reward[3313163][3] = {}
	tJulyAccuratepush_Reward[3313163][3]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313163][3]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313163][3]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313163][3]["RewardItem"][1]["Id"] = 723342 -- 【库】ModestyBook[属性:0], 【表格】造化天书
	tJulyAccuratepush_Reward[3313163][3]["RewardItem"][1]["Attr"] = "0 50 3" -- ModestyBook（赠）*50
	tJulyAccuratepush_Reward[3313163][3]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313163][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313163][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===修行值冲刺包第四次打开
	-- ===索引: tJulyAccuratepush_Reward[3313163][4]

	tJulyAccuratepush_Reward[3313163][4] = {}
	tJulyAccuratepush_Reward[3313163][4]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313163][4]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313163][4]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313163][4]["RewardItem"][1]["Id"] = 723342 -- 【库】ModestyBook[属性:0], 【表格】造化天书
	tJulyAccuratepush_Reward[3313163][4]["RewardItem"][1]["Attr"] = "0 50 3" -- ModestyBook（赠）*50
	tJulyAccuratepush_Reward[3313163][4]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313163][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313163][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===修行值冲刺包第五次打开
	-- ===删除: 3313163,1
	-- ===索引: tJulyAccuratepush_Reward[3313163][5]

	tJulyAccuratepush_Reward[3313163][5] = {}
	tJulyAccuratepush_Reward[3313163][5]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313163][5]["DeleteItem"] = {}
	tJulyAccuratepush_Reward[3313163][5]["DeleteItem"][1] = {}
	tJulyAccuratepush_Reward[3313163][5]["DeleteItem"][1]["Id"] = 3313163 -- 【库】ModestyBook(B)SprintBox[属性:9]
	tJulyAccuratepush_Reward[3313163][5]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313163][5]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313163][5]["RewardItem"][1]["Id"] = 723342 -- 【库】ModestyBook[属性:0], 【表格】造化天书
	tJulyAccuratepush_Reward[3313163][5]["RewardItem"][1]["Attr"] = "0 50 3" -- ModestyBook（赠）*50
	tJulyAccuratepush_Reward[3313163][5]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313163][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313163][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===开洞冲刺包第一次打开
	-- ===索引: tJulyAccuratepush_Reward[3313164][1]
	tJulyAccuratepush_Reward[3313164] = {}
	tJulyAccuratepush_Reward[3313164][1] = {}
	tJulyAccuratepush_Reward[3313164][1]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313164][1]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313164][1]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313164][1]["RewardItem"][1]["Id"] = 1200005 -- 【库】ToughDrill[属性:0], 【表格】金钢坚钻
	tJulyAccuratepush_Reward[3313164][1]["RewardItem"][1]["Attr"] = "0 2 3" -- ToughDrill（赠）*2
	tJulyAccuratepush_Reward[3313164][1]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313164][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313164][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===开洞冲刺包第二次打开
	-- ===索引: tJulyAccuratepush_Reward[3313164][2]

	tJulyAccuratepush_Reward[3313164][2] = {}
	tJulyAccuratepush_Reward[3313164][2]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313164][2]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313164][2]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313164][2]["RewardItem"][1]["Id"] = 1200005 -- 【库】ToughDrill[属性:0], 【表格】金钢坚钻
	tJulyAccuratepush_Reward[3313164][2]["RewardItem"][1]["Attr"] = "0 2 3" -- ToughDrill（赠）*2
	tJulyAccuratepush_Reward[3313164][2]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313164][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313164][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===开洞冲刺包第三次打开
	-- ===索引: tJulyAccuratepush_Reward[3313164][3]

	tJulyAccuratepush_Reward[3313164][3] = {}
	tJulyAccuratepush_Reward[3313164][3]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313164][3]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313164][3]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313164][3]["RewardItem"][1]["Id"] = 1200005 -- 【库】ToughDrill[属性:0], 【表格】金钢坚钻
	tJulyAccuratepush_Reward[3313164][3]["RewardItem"][1]["Attr"] = "0 2 3" -- ToughDrill（赠）*2
	tJulyAccuratepush_Reward[3313164][3]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313164][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313164][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===开洞冲刺包第四次打开
	-- ===索引: tJulyAccuratepush_Reward[3313164][4]

	tJulyAccuratepush_Reward[3313164][4] = {}
	tJulyAccuratepush_Reward[3313164][4]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313164][4]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313164][4]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313164][4]["RewardItem"][1]["Id"] = 1200005 -- 【库】ToughDrill[属性:0], 【表格】金钢坚钻
	tJulyAccuratepush_Reward[3313164][4]["RewardItem"][1]["Attr"] = "0 2 3" -- ToughDrill（赠）*2
	tJulyAccuratepush_Reward[3313164][4]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313164][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313164][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===开洞冲刺包第五次打开
	-- ===删除: 3313164,1
	-- ===索引: tJulyAccuratepush_Reward[3313164][5]

	tJulyAccuratepush_Reward[3313164][5] = {}
	tJulyAccuratepush_Reward[3313164][5]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313164][5]["DeleteItem"] = {}
	tJulyAccuratepush_Reward[3313164][5]["DeleteItem"][1] = {}
	tJulyAccuratepush_Reward[3313164][5]["DeleteItem"][1]["Id"] = 3313164 -- 【库】ToughDrill(B)SprintBox[属性:9]
	tJulyAccuratepush_Reward[3313164][5]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313164][5]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313164][5]["RewardItem"][1]["Id"] = 1200005 -- 【库】ToughDrill[属性:0], 【表格】金钢坚钻
	tJulyAccuratepush_Reward[3313164][5]["RewardItem"][1]["Attr"] = "0 2 3" -- ToughDrill（赠）*2
	tJulyAccuratepush_Reward[3313164][5]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313164][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313164][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===固化冲刺包第一次打开
	-- ===索引: tJulyAccuratepush_Reward[3313165][1]
	tJulyAccuratepush_Reward[3313165] = {}
	tJulyAccuratepush_Reward[3313165][1] = {}
	tJulyAccuratepush_Reward[3313165][1]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313165][1]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313165][1]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313165][1]["RewardItem"][1]["Id"] = 723695 -- 【库】BigPermanentStone[属性:0], 【表格】超大固化石
	tJulyAccuratepush_Reward[3313165][1]["RewardItem"][1]["Attr"] = "0 1 3" -- BigPermanentStone（赠）*1
	tJulyAccuratepush_Reward[3313165][1]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313165][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313165][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===固化冲刺包第二次打开
	-- ===索引: tJulyAccuratepush_Reward[3313165][2]

	tJulyAccuratepush_Reward[3313165][2] = {}
	tJulyAccuratepush_Reward[3313165][2]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313165][2]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313165][2]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313165][2]["RewardItem"][1]["Id"] = 723695 -- 【库】BigPermanentStone[属性:0], 【表格】超大固化石
	tJulyAccuratepush_Reward[3313165][2]["RewardItem"][1]["Attr"] = "0 1 3" -- BigPermanentStone（赠）*1
	tJulyAccuratepush_Reward[3313165][2]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313165][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313165][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===固化冲刺包第三次打开
	-- ===索引: tJulyAccuratepush_Reward[3313165][3]

	tJulyAccuratepush_Reward[3313165][3] = {}
	tJulyAccuratepush_Reward[3313165][3]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313165][3]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313165][3]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313165][3]["RewardItem"][1]["Id"] = 723695 -- 【库】BigPermanentStone[属性:0], 【表格】超大固化石
	tJulyAccuratepush_Reward[3313165][3]["RewardItem"][1]["Attr"] = "0 1 3" -- BigPermanentStone（赠）*1
	tJulyAccuratepush_Reward[3313165][3]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313165][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313165][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===固化冲刺包第四次打开
	-- ===索引: tJulyAccuratepush_Reward[3313165][4]

	tJulyAccuratepush_Reward[3313165][4] = {}
	tJulyAccuratepush_Reward[3313165][4]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313165][4]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313165][4]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313165][4]["RewardItem"][1]["Id"] = 723695 -- 【库】BigPermanentStone[属性:0], 【表格】超大固化石
	tJulyAccuratepush_Reward[3313165][4]["RewardItem"][1]["Attr"] = "0 1 3" -- BigPermanentStone（赠）*1
	tJulyAccuratepush_Reward[3313165][4]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313165][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313165][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===固化冲刺包第五次打开
	-- ===删除: 3313165,1
	-- ===索引: tJulyAccuratepush_Reward[3313165][5]

	tJulyAccuratepush_Reward[3313165][5] = {}
	tJulyAccuratepush_Reward[3313165][5]["LogId"] = 12001495
	tJulyAccuratepush_Reward[3313165][5]["DeleteItem"] = {}
	tJulyAccuratepush_Reward[3313165][5]["DeleteItem"][1] = {}
	tJulyAccuratepush_Reward[3313165][5]["DeleteItem"][1]["Id"] = 3313165 -- 【库】BigPermanentStone(B)SprintBox[属性:9]
	tJulyAccuratepush_Reward[3313165][5]["RewardItem"] = {}
	tJulyAccuratepush_Reward[3313165][5]["RewardItem"][1] = {}
	tJulyAccuratepush_Reward[3313165][5]["RewardItem"][1]["Id"] = 723695 -- 【库】BigPermanentStone[属性:0], 【表格】超大固化石
	tJulyAccuratepush_Reward[3313165][5]["RewardItem"][1]["Attr"] = "0 1 3" -- BigPermanentStone（赠）*1
	tJulyAccuratepush_Reward[3313165][5]["RewardEffect"] = {}
	tJulyAccuratepush_Reward[3313165][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyAccuratepush_Reward[3313165][5]["RewardEffect"]["Effect"] = "angelwing"




------------------------------------------------------------------------------------
--激活周卡
function JulyAccuratePush_Activation(nItemId)
	local nUserId = Get_UserId()
	local nEvent = tJulyAccuratePush_Stc[nItemId]["Event"]
	local nType = tJulyAccuratePush_Stc[nItemId]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[nItemId][nData]
	local sEmoneyLog = tJulyAccuratePush_EmoneyLog[nItemId][3]
	local nUserEmoney = Get_UserEMoney(nUserId)
	local sItemName = Get_ItemtypeName(nItemId)
	
	--时间检测(打开过的礼包不做过期删除)
	if Task_ChkStcValue(nEvent,nType,"==",0,nUserId) then
	-- 判断活动时间
		if not Sys_ChkFullTime(tActivityTime["JulyAccuratePush"]["ActivityTime"]) then
			--物品检测
			if Item_ChkMulItem(nItemId,nItemId,1) then
				Item_DelMulItem(nItemId,nItemId,1)
				return
			end
		end
	end

	--天石检测
	if nUserEmoney < nNeedEmoney then
		LinkItemGossipFunc_New(nItemId,"4-1")
		return
	end
	--物品检测
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		Sys_MsgBox(string.format(tJulyAccuratePush_Text["NoItem"],sItemName),nil,nil,nUserId)
		return
	end
	--激活
	if Task_AddStatistic(nEvent,nType,1,1,nUserId) and Task_SetStcTimestamp(nEvent,nType,0) then
		if User_AddEMoney(-nNeedEmoney,nUserId) then
			Sys_SaveEmoneyBuy(sEmoneyLog,nUserId)
			LinkItemGossipFunc_New(nItemId,"3-1")
		end
	end
end
--打开周卡
--nIndex ：1 免费打开 2：花钱打开
function JulyAccuratePush_FreeOpen(nItemId,nIndex)
	local nUserId = Get_UserId()
	local nEvent = tJulyAccuratePush_Stc[nItemId]["Event"]
	local nType = tJulyAccuratePush_Stc[nItemId]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[nItemId][nData]
	local sEmoneyLog = tJulyAccuratePush_EmoneyLog[nItemId][nIndex]
	local nUserEmoney = Get_UserEMoney(nUserId)
	local sItemName = Get_ItemtypeName(nItemId)
	--时间检测(打开过的礼包不做过期删除)
	if Task_ChkStcValue(nEvent,nType,"==",0,nUserId) then
	-- 判断活动时间
		if not Sys_ChkFullTime(tActivityTime["JulyAccuratePush"]["ActivityTime"]) then
			--物品检测
			if Item_ChkMulItem(nItemId,nItemId,1) then
				Item_DelMulItem(nItemId,nItemId,1)
				return
			end
		end
	end
	--判断是否隔天
	if Task_ChkStcValue(nEvent,nType,">",1,nUserId) then
		if not Task_StcInterval(nEvent,nType,1,4,nUserId) then
			LinkItemGossipFunc_New(nItemId,"5-1")
			return
		end
	end
	
	
	
	--赠点检测
	local nRewardEmoney = tJulyAccuratepush_Reward[nItemId][nIndex]["RewardEMoneyMono"]["Value"]
	--判断赠点上限
	if Get_UserMonoEMoney() + nRewardEmoney > G_User_MaxEmoneyMono then
		LinkItemGossipFunc_New(nItemId,"7-1")
		return
	end
	
	--物品检测
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		Sys_MsgBox(string.format(tJulyAccuratePush_Text["NoItem"],sItemName),nil,nil,nUserId)
		return
	end
	
	if nIndex == 2 then
		if nUserEmoney < nNeedEmoney then
			LinkItemGossipFunc_New(nItemId,"8-1")
			return
		else
			if  nUserEmoney >=nNeedEmoney  then
				--花钱打开
				User_AddEMoney(-nNeedEmoney,nUserId)
			end
		end
	end
	
	--给奖励
	if Task_AddStatistic(nEvent,nType,1,1,nUserId) and Task_SetStcTimestamp(nEvent,nType,0) then
		Sys_SaveEmoneyBuy(sEmoneyLog,nUserId)
		--最后一次删除
		if Task_ChkStcValue(nEvent,nType,"==",8,nUserId) then
			if Item_ChkMulItem(nItemId,nItemId,1) then
				Item_DelMulItem(nItemId,nItemId,1)
			end
		end
		RewardTemplate_UseItemAndMsg(tJulyAccuratepush_Reward[nItemId][nIndex],nUserId)
	end
	
end
--打开礼包
function JulyAccuratePush_OpenGif(nItemId)
	local nUserId = Get_UserId()
	local nEvent = tJulyAccuratePush_Stc[nItemId]["Event"]
	local nType = tJulyAccuratePush_Stc[nItemId]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[nItemId][nData]
	local sEmoneyLog = tJulyAccuratePush_EmoneyLog[nItemId][nData]
	local nUserEmoney = Get_UserEMoney(nUserId)
	local sItemName = Get_ItemtypeName(nItemId)
	--时间检测(打开过的礼包不做过期删除)
	if Task_ChkStcValue(nEvent,nType,"==",0,nUserId) then
	-- 判断活动时间
		if not Sys_ChkFullTime(tActivityTime["JulyAccuratePush"]["ActivityTime"]) then
			--物品检测
			if Item_ChkMulItem(nItemId,nItemId,1) then
				Item_DelMulItem(nItemId,nItemId,1)
				return
			end
		end
	end
	
	
	--背包空间检测
	if not RewardTemplate_CheckSpace(tJulyAccuratepush_Reward[nItemId][nData],nUserId) then
		local nNeedSpace = RewardTemplate_GetRewardSpace(tJulyAccuratepush_Reward[nItemId][nData],nUserId)
		local sText = string.format(tJulyAccuratePush_Text["NoSpace"],nNeedSpace)
		Sys_MsgBox(sText,nil,nil,nUserId)
		return
	end
	--物品检测
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		Sys_MsgBox(string.format(tJulyAccuratePush_Text["NoItem"],sItemName),nil,nil,nUserId)
		return
	end
	--天石检测
	if nUserEmoney < nNeedEmoney then
		LinkItemGossipFunc_New(nItemId,"3-1")
		return
	end
	--给奖励
	if Task_AddStatistic(nEvent,nType,1,1,nUserId) then
		if User_AddEMoney(-nNeedEmoney,nUserId) then
			Sys_SaveEmoneyBuy(sEmoneyLog,nUserId)
			RewardTemplate_UseItemAndMsg(tJulyAccuratepush_Reward[nItemId][nData],nUserId)
		end
	end
end
------------------------------------------------------------------------------------
tItemFace[3313156]=1623
tItem[3313156] = tItem[3313156] or {}
tItem[3313156]["DialogueText"]=tJulyAccuratePush_Text[3313156]
tItem[3313156]["Text1-1"]={111,112}
tItem[3313156]["tOption1-1"]={111,112}
tItem[3313156]["ChkFunc1-1"] = function()
	local nEvent = tJulyAccuratePush_Stc[3313156]["Event"]
	local nType = tJulyAccuratePush_Stc[3313156]["Type"]
	if Task_ChkStatistic(nEvent,nType,nUserId) and Task_ChkStcValue(nEvent,nType,">",0,nUserId) then
		return false 
	else
		return true
	end
end
tItem[3313156]["OptionPoint111"] = "2-1"
--激活二次确认
tItem[3313156]["Text2-1"]={211,212}
tItem[3313156]["tOption2-1"]={211,212}
tItem[3313156]["OptionFunc211"] ="JulyAccuratePush_Activation</N>3313156"
--成功激活
tItem[3313156]["Text3-1"]={311}
tItem[3313156]["tOption3-1"]={311}
--天石不足
tItem[3313156]["Text4-1"]={411}
tItem[3313156]["tOption4-1"]={411}

--已激活
tItem[3313156]["Text1-2"]={121,122}
tItem[3313156]["tOption1-2"]={121,122}
tItem[3313156]["ChkFunc1-2"] = function()
	local nEvent = tJulyAccuratePush_Stc[3313156]["Event"]
	local nType = tJulyAccuratePush_Stc[3313156]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) 
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[3313156][nData]
	tItem[3313156]["Text121"] = string.format(tJulyAccuratePush_Text[3313156]["Text121"],nData)

	if Task_ChkStatistic(nEvent,nType,nUserId) and Task_ChkStcValue(nEvent,nType,"<=",0,nUserId) then
		return false 
	else
		return true
	end
end
tItem[3313156]["OptionFunc121"] ="JulyAccuratePush_FreeOpen</N>3313156</N>1"
tItem[3313156]["OptionPoint122"] = "6-1"
--重复领取
tItem[3313156]["Text5-1"]={511}
tItem[3313156]["tOption5-1"]={511}
--二次确认
tItem[3313156]["Text6-1"]={611}
tItem[3313156]["tOption6-1"]={611,612}
tItem[3313156]["OptionFunc611"] ="JulyAccuratePush_FreeOpen</N>3313156</N>2"


--赠点上限
tItem[3313156]["Text7-1"]={711}
tItem[3313156]["tOption7-1"]={711}
--天石不足
tItem[3313156]["Text8-1"]={811}
tItem[3313156]["tOption8-1"]={811}

---冲刺包
------------------------------------------------------------------------------------
tItemFace[3313157]=406
tItemFace[3313158]=2196
tItemFace[3313159]=766
tItemFace[3313160]=1015
tItemFace[3313161]=1021
tItemFace[3313162]=1039
tItemFace[3313163]=1024
tItemFace[3313164]=1025
tItemFace[3313165]=1332

--爵位冲刺包
tItem[3313157] = tItem[3313157] or {}
tItem[3313157]["DialogueText"]=tJulyAccuratePush_Text[3313157]
tItem[3313157]["Text1-1"]={111}
tItem[3313157]["tOption1-1"]={111,112}
tItem[3313157]["ChkFunc1-1"] = function()
	local nEvent = tJulyAccuratePush_Stc[3313157]["Event"]
	local nType = tJulyAccuratePush_Stc[3313157]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	
	
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[3313157][nData]
	tItem[3313157]["Text111"] = string.format(tJulyAccuratePush_Text[3313157]["Text111"],nData,nNeedEmoney)
	return true
	
end
tItem[3313157]["OptionChkFunc111"] = function()
	local nEvent = tJulyAccuratePush_Stc[3313157]["Event"]
	local nType = tJulyAccuratePush_Stc[3313157]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	
	
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[3313157][nData]
	tItem[3313157]["Option111"] =string.format(tJulyAccuratePush_Text[3313157]["Option111"],nNeedEmoney)
	return true
	
end
tItem[3313157]["OptionPoint111"] = "2-1"


tItem[3313157]["Text2-1"]={211}
tItem[3313157]["tOption2-1"]={211,212}
tItem[3313157]["ChkFunc2-1"] = function()
	local nEvent = tJulyAccuratePush_Stc[3313157]["Event"]
	local nType = tJulyAccuratePush_Stc[3313157]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[3313157][nData]
	tItem[3313157]["Text211"] = string.format(tJulyAccuratePush_Text[3313157]["Text211"],nNeedEmoney)
	return true
	
end
tItem[3313157]["OptionFunc211"] ="JulyAccuratePush_OpenGif</N>3313157"

tItem[3313157]["Text3-1"]={311}
tItem[3313157]["tOption3-1"]={311}


--赤练石冲刺A包
tItem[3313158] = tItem[3313158] or {}
tItem[3313158]["DialogueText"]=tJulyAccuratePush_Text[3313158]
tItem[3313158]["Text1-1"]={111}
tItem[3313158]["tOption1-1"]={111,112}
tItem[3313158]["ChkFunc1-1"] = function()
	local nEvent = tJulyAccuratePush_Stc[3313158]["Event"]
	local nType = tJulyAccuratePush_Stc[3313158]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	
	
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[3313158][nData]
	tItem[3313158]["Text111"] = string.format(tJulyAccuratePush_Text[3313158]["Text111"],nData,nNeedEmoney)
	return true
	
end
tItem[3313158]["OptionChkFunc111"] = function()
	local nEvent = tJulyAccuratePush_Stc[3313158]["Event"]
	local nType = tJulyAccuratePush_Stc[3313158]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	
	
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[3313158][nData]
	tItem[3313158]["Option111"] =string.format(tJulyAccuratePush_Text[3313158]["Option111"],nNeedEmoney)
	return true
	
end
tItem[3313158]["OptionPoint111"] = "2-1"


tItem[3313158]["Text2-1"]={211}
tItem[3313158]["tOption2-1"]={211,212}
tItem[3313158]["ChkFunc2-1"] = function()
	local nEvent = tJulyAccuratePush_Stc[3313158]["Event"]
	local nType = tJulyAccuratePush_Stc[3313158]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[3313158][nData]
	tItem[3313158]["Text211"] = string.format(tJulyAccuratePush_Text[3313158]["Text211"],nNeedEmoney)
	return true
	
end
tItem[3313158]["OptionFunc211"] ="JulyAccuratePush_OpenGif</N>3313158"

tItem[3313158]["Text3-1"]={311}
tItem[3313158]["tOption3-1"]={311}


--赤练石冲刺B包
tItem[3313159] = tItem[3313159] or {}
tItem[3313159]["DialogueText"]=tJulyAccuratePush_Text[3313159]
tItem[3313159]["Text1-1"]={111}
tItem[3313159]["tOption1-1"]={111,112}
tItem[3313159]["ChkFunc1-1"] = function()
	local nEvent = tJulyAccuratePush_Stc[3313159]["Event"]
	local nType = tJulyAccuratePush_Stc[3313159]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	
	
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[3313159][nData]
	tItem[3313159]["Text111"] = string.format(tJulyAccuratePush_Text[3313159]["Text111"],nData,nNeedEmoney)
	return true
	
end
tItem[3313159]["OptionChkFunc111"] = function()
	local nEvent = tJulyAccuratePush_Stc[3313159]["Event"]
	local nType = tJulyAccuratePush_Stc[3313159]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	
	
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[3313159][nData]
	tItem[3313159]["Option111"] =string.format(tJulyAccuratePush_Text[3313159]["Option111"],nNeedEmoney)
	return true
	
end
tItem[3313159]["OptionPoint111"] = "2-1"


tItem[3313159]["Text2-1"]={211}
tItem[3313159]["tOption2-1"]={211,212}
tItem[3313159]["ChkFunc2-1"] = function()
	local nEvent = tJulyAccuratePush_Stc[3313159]["Event"]
	local nType = tJulyAccuratePush_Stc[3313159]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[3313159][nData]
	tItem[3313159]["Text211"] = string.format(tJulyAccuratePush_Text[3313159]["Text211"],nNeedEmoney)
	return true
	
end
tItem[3313159]["OptionFunc211"] ="JulyAccuratePush_OpenGif</N>3313159"

tItem[3313159]["Text3-1"]={311}
tItem[3313159]["tOption3-1"]={311}
--气力冲刺包
tItem[3313160] = tItem[3313160] or {}
tItem[3313160]["DialogueText"]=tJulyAccuratePush_Text[3313160]
tItem[3313160]["Text1-1"]={111}
tItem[3313160]["tOption1-1"]={111,112}
tItem[3313160]["ChkFunc1-1"] = function()
	local nEvent = tJulyAccuratePush_Stc[3313160]["Event"]
	local nType = tJulyAccuratePush_Stc[3313160]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	
	
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[3313160][nData]
	tItem[3313160]["Text111"] = string.format(tJulyAccuratePush_Text[3313160]["Text111"],nData,nNeedEmoney)
	return true
	
end
tItem[3313160]["OptionChkFunc111"] = function()
	local nEvent = tJulyAccuratePush_Stc[3313160]["Event"]
	local nType = tJulyAccuratePush_Stc[3313160]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	
	
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[3313160][nData]
	tItem[3313160]["Option111"] =string.format(tJulyAccuratePush_Text[3313160]["Option111"],nNeedEmoney)
	return true
	
end
tItem[3313160]["OptionPoint111"] = "2-1"


tItem[3313160]["Text2-1"]={211}
tItem[3313160]["tOption2-1"]={211,212}
tItem[3313160]["ChkFunc2-1"] = function()
	local nEvent = tJulyAccuratePush_Stc[3313160]["Event"]
	local nType = tJulyAccuratePush_Stc[3313160]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[3313160][nData]
	tItem[3313160]["Text211"] = string.format(tJulyAccuratePush_Text[3313160]["Text211"],nNeedEmoney)
	return true
	
end
tItem[3313160]["OptionFunc211"] ="JulyAccuratePush_OpenGif</N>3313160"

tItem[3313160]["Text3-1"]={311}
tItem[3313160]["tOption3-1"]={311}
--自创武功冲刺包
tItem[3313161] = tItem[3313161] or {}
tItem[3313161]["DialogueText"]=tJulyAccuratePush_Text[3313161]
tItem[3313161]["Text1-1"]={111}
tItem[3313161]["tOption1-1"]={111,112}
tItem[3313161]["ChkFunc1-1"] = function()
	local nEvent = tJulyAccuratePush_Stc[3313161]["Event"]
	local nType = tJulyAccuratePush_Stc[3313161]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	
	
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[3313161][nData]
	tItem[3313161]["Text111"] = string.format(tJulyAccuratePush_Text[3313161]["Text111"],nData,nNeedEmoney)
	return true
	
end
tItem[3313161]["OptionChkFunc111"] = function()
	local nEvent = tJulyAccuratePush_Stc[3313161]["Event"]
	local nType = tJulyAccuratePush_Stc[3313161]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	
	
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[3313161][nData]
	tItem[3313161]["Option111"] =string.format(tJulyAccuratePush_Text[3313161]["Option111"],nNeedEmoney)
	return true
	
end
tItem[3313161]["OptionPoint111"] = "2-1"


tItem[3313161]["Text2-1"]={211}
tItem[3313161]["tOption2-1"]={211,212}
tItem[3313161]["ChkFunc2-1"] = function()
	local nEvent = tJulyAccuratePush_Stc[3313161]["Event"]
	local nType = tJulyAccuratePush_Stc[3313161]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[3313161][nData]
	tItem[3313161]["Text211"] = string.format(tJulyAccuratePush_Text[3313161]["Text211"],nNeedEmoney)
	return true
	
end
tItem[3313161]["OptionFunc211"] ="JulyAccuratePush_OpenGif</N>3313161"

tItem[3313161]["Text3-1"]={311}
tItem[3313161]["tOption3-1"]={311}
--修为值冲刺包
tItem[3313162] = tItem[3313162] or {}
tItem[3313162]["DialogueText"]=tJulyAccuratePush_Text[3313162]
tItem[3313162]["Text1-1"]={111}
tItem[3313162]["tOption1-1"]={111,112}
tItem[3313162]["ChkFunc1-1"] = function()
	local nEvent = tJulyAccuratePush_Stc[3313162]["Event"]
	local nType = tJulyAccuratePush_Stc[3313162]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	
	
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[3313162][nData]
	tItem[3313162]["Text111"] = string.format(tJulyAccuratePush_Text[3313162]["Text111"],nData,nNeedEmoney)
	return true
	
end
tItem[3313162]["OptionChkFunc111"] = function()
	local nEvent = tJulyAccuratePush_Stc[3313162]["Event"]
	local nType = tJulyAccuratePush_Stc[3313162]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	
	
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[3313162][nData]
	tItem[3313162]["Option111"] =string.format(tJulyAccuratePush_Text[3313162]["Option111"],nNeedEmoney)
	return true
	
end
tItem[3313162]["OptionPoint111"] = "2-1"


tItem[3313162]["Text2-1"]={211}
tItem[3313162]["tOption2-1"]={211,212}
tItem[3313162]["ChkFunc2-1"] = function()
	local nEvent = tJulyAccuratePush_Stc[3313162]["Event"]
	local nType = tJulyAccuratePush_Stc[3313162]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[3313162][nData]
	tItem[3313162]["Text211"] = string.format(tJulyAccuratePush_Text[3313162]["Text211"],nNeedEmoney)
	return true
	
end
tItem[3313162]["OptionFunc211"] ="JulyAccuratePush_OpenGif</N>3313162"

tItem[3313162]["Text3-1"]={311}
tItem[3313162]["tOption3-1"]={311}
--修行值冲刺包
tItem[3313163] = tItem[3313163] or {}
tItem[3313163]["DialogueText"]=tJulyAccuratePush_Text[3313163]
tItem[3313163]["Text1-1"]={111}
tItem[3313163]["tOption1-1"]={111,112}
tItem[3313163]["ChkFunc1-1"] = function()
	local nEvent = tJulyAccuratePush_Stc[3313163]["Event"]
	local nType = tJulyAccuratePush_Stc[3313163]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	
	
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[3313163][nData]
	tItem[3313163]["Text111"] = string.format(tJulyAccuratePush_Text[3313163]["Text111"],nData,nNeedEmoney)
	return true
	
end
tItem[3313163]["OptionChkFunc111"] = function()
	local nEvent = tJulyAccuratePush_Stc[3313163]["Event"]
	local nType = tJulyAccuratePush_Stc[3313163]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	
	
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[3313163][nData]
	tItem[3313163]["Option111"] =string.format(tJulyAccuratePush_Text[3313163]["Option111"],nNeedEmoney)
	return true
	
end
tItem[3313163]["OptionPoint111"] = "2-1"


tItem[3313163]["Text2-1"]={211}
tItem[3313163]["tOption2-1"]={211,212}
tItem[3313163]["ChkFunc2-1"] = function()
	local nEvent = tJulyAccuratePush_Stc[3313163]["Event"]
	local nType = tJulyAccuratePush_Stc[3313163]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[3313163][nData]
	tItem[3313163]["Text211"] = string.format(tJulyAccuratePush_Text[3313163]["Text211"],nNeedEmoney)
	return true
	
end
tItem[3313163]["OptionFunc211"] ="JulyAccuratePush_OpenGif</N>3313163"

tItem[3313163]["Text3-1"]={311}
tItem[3313163]["tOption3-1"]={311}
--开洞冲刺包
tItem[3313164] = tItem[3313164] or {}
tItem[3313164]["DialogueText"]=tJulyAccuratePush_Text[3313164]
tItem[3313164]["Text1-1"]={111}
tItem[3313164]["tOption1-1"]={111,112}
tItem[3313164]["ChkFunc1-1"] = function()
	local nEvent = tJulyAccuratePush_Stc[3313164]["Event"]
	local nType = tJulyAccuratePush_Stc[3313164]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	
	
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[3313164][nData]
	tItem[3313164]["Text111"] = string.format(tJulyAccuratePush_Text[3313164]["Text111"],nData,nNeedEmoney)
	return true
	
end
tItem[3313164]["OptionChkFunc111"] = function()
	local nEvent = tJulyAccuratePush_Stc[3313164]["Event"]
	local nType = tJulyAccuratePush_Stc[3313164]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	
	
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[3313164][nData]
	tItem[3313164]["Option111"] =string.format(tJulyAccuratePush_Text[3313164]["Option111"],nNeedEmoney)
	return true
	
end
tItem[3313164]["OptionPoint111"] = "2-1"


tItem[3313164]["Text2-1"]={211}
tItem[3313164]["tOption2-1"]={211,212}
tItem[3313164]["ChkFunc2-1"] = function()
	local nEvent = tJulyAccuratePush_Stc[3313164]["Event"]
	local nType = tJulyAccuratePush_Stc[3313164]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[3313164][nData]
	tItem[3313164]["Text211"] = string.format(tJulyAccuratePush_Text[3313164]["Text211"],nNeedEmoney)
	return true
	
end
tItem[3313164]["OptionFunc211"] ="JulyAccuratePush_OpenGif</N>3313164"

tItem[3313164]["Text3-1"]={311}
tItem[3313164]["tOption3-1"]={311}
--固化冲刺包
tItem[3313165] = tItem[3313165] or {}
tItem[3313165]["DialogueText"]=tJulyAccuratePush_Text[3313165]
tItem[3313165]["Text1-1"]={111}
tItem[3313165]["tOption1-1"]={111,112}
tItem[3313165]["ChkFunc1-1"] = function()
	local nEvent = tJulyAccuratePush_Stc[3313165]["Event"]
	local nType = tJulyAccuratePush_Stc[3313165]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	
	
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[3313165][nData]
	tItem[3313165]["Text111"] = string.format(tJulyAccuratePush_Text[3313165]["Text111"],nData,nNeedEmoney)
	return true
	
end
tItem[3313165]["OptionChkFunc111"] = function()
	local nEvent = tJulyAccuratePush_Stc[3313165]["Event"]
	local nType = tJulyAccuratePush_Stc[3313165]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	
	
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[3313165][nData]
	tItem[3313165]["Option111"] =string.format(tJulyAccuratePush_Text[3313165]["Option111"],nNeedEmoney)
	return true
	
end
tItem[3313165]["OptionPoint111"] = "2-1"


tItem[3313165]["Text2-1"]={211}
tItem[3313165]["tOption2-1"]={211,212}
tItem[3313165]["ChkFunc2-1"] = function()
	local nEvent = tJulyAccuratePush_Stc[3313165]["Event"]
	local nType = tJulyAccuratePush_Stc[3313165]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	local nNeedEmoney = tJulyAccuratePush_EmoneyPrice[3313165][nData]
	tItem[3313165]["Text211"] = string.format(tJulyAccuratePush_Text[3313165]["Text211"],nNeedEmoney)
	return true
	
end
tItem[3313165]["OptionFunc211"] ="JulyAccuratePush_OpenGif</N>3313165"

tItem[3313165]["Text3-1"]={311}
tItem[3313165]["tOption3-1"]={311}

