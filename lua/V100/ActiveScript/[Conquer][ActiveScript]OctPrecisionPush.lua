------------------------------------------------------------------------------------
--Name：            190918[英文征服][活动脚本]10月精准推送（10.10-10.31） 
--Creator:      杨艳
--Created:     2019/09/18
------------------------------------------------------------------------------------
-- emoneylog记录
-- 打开5级赠点周卡包 350 22641
-- 打开4级赠点周卡包 350 22642
-- 打开3级赠点周卡包 350 22643
-- 打开2级赠点周卡包 350 22644
-- 打开1级赠点周卡包 350 22645
-- 打开赠点包中包 350 22646
-- 打开流星卷必买包 350 22647
-- 打开龙珠卷必买包 350 22648
-- 打开大固化石必买包 350 22649
-- 打开7阶武器神魂必买包 350 22650
-- 打开7阶防具神魂必买包 350 22651
-- 打开马匹必买包 350 22652
-- 打开极品玄晶必买包 350 22653
-- 打开优质真武宝石必买包 350 22654
-- 打开爵位捐献必买包A 350 22655
-- 打开爵位捐献必买包B 350 22656
-- 打开加持必买包 350 22657
-- 打开修行值必买包 350 22658
-- 打开天机果必买包 350 22659

--命名前缀
--OctPrecisionPush_

--logid： 12001648

--物品
-- 3326357,'5级赠点周卡包',9,9
-- 3326358,'4级赠点周卡包',9,9
-- 3326359,'3级赠点周卡包',9,9
-- 3326360,'2级赠点周卡包',9,9
-- 3326361,'1级赠点周卡包',9,9
-- 3326362,'赠点包中包',9,9847
                           
-- 3326363,'大固化石必买包',9,
-- 3326364,'马匹必买包',9,9847
-- 3326365,'极品玄晶必买包',9,
-- 3326366,'优质真武宝石必买包
-- 3326367,'1亿捐献值礼包',9,9
-- 3326368,'10亿捐献值礼包',9,
-- 3326369,'修行值必买包',9,98
-- 3326370,'天机果必买包',9,98
-- 3326371,'至尊加持令牌',9,98


--STC掩码表：
-- 205 11 赠点包中包打开次数
-- 205 12 3326357,'5级赠点周卡包' 次数及其打开方式  个位代表次数  十位代表方式
-- 205 13 3326358,'4级赠点周卡包' 次数及其打开方式  个位代表次数  十位代表方式
-- 205 14 3326359,'3级赠点周卡包' 次数及其打开方式  个位代表次数  十位代表方式
-- 205 15 3326360,'2级赠点周卡包' 次数及其打开方式  个位代表次数  十位代表方式
-- 205 16 3326361,'1级赠点周卡包' 次数及其打开方式  个位代表次数  十位代表方式

--------------------------------------------------数据部分-----------------------------------------------------
local tOctPrecisionPush_Data = {}
	-- 玩家武器位
	tOctPrecisionPush_Data["EquipPos"] = {}
	tOctPrecisionPush_Data["EquipPos"][1] = 1
	tOctPrecisionPush_Data["EquipPos"][2] = 2
	tOctPrecisionPush_Data["EquipPos"][3] = 3
	tOctPrecisionPush_Data["EquipPos"][4] = 4
	tOctPrecisionPush_Data["EquipPos"][5] = 5
	tOctPrecisionPush_Data["EquipPos"][6] = 6
	tOctPrecisionPush_Data["EquipPos"][7] = 7
	tOctPrecisionPush_Data["EquipPos"][8] = 8
	
local tOctPrecisionPush_Stc = {}

	tOctPrecisionPush_Stc["EventType"] = {}
	tOctPrecisionPush_Stc["DataType"] = {}
	tOctPrecisionPush_Stc["LimitData"] = {}
	
	-- 赠点包中包打开次数
	tOctPrecisionPush_Stc["EventType"][3326362] = 205
    tOctPrecisionPush_Stc["DataType"][3326362] = 11
    tOctPrecisionPush_Stc["LimitData"][3326362] = 3
	
	-- 3326357,'5级赠点周卡包'
	-- 3326358,'4级赠点周卡包'
	-- 3326359,'3级赠点周卡包'
	-- 3326360,'2级赠点周卡包'
	-- 3326361,'1级赠点周卡包'
	-- 记录礼包 个位代表次数  十位代表方式  十位为1 表示第一种方式  2表示第二种方式  0表示未选择 
	tOctPrecisionPush_Stc["EventType"][3326357] = 205
    tOctPrecisionPush_Stc["DataType"][3326357] = 12
    tOctPrecisionPush_Stc["LimitData"][3326357] = 7
		
	tOctPrecisionPush_Stc["EventType"][3326358] =  205
    tOctPrecisionPush_Stc["DataType"][3326358] = 13
    tOctPrecisionPush_Stc["LimitData"][3326358] = 7
	
	tOctPrecisionPush_Stc["EventType"][3326359] = 205
    tOctPrecisionPush_Stc["DataType"][3326359] = 14
    tOctPrecisionPush_Stc["LimitData"][3326359] = 7
	
	tOctPrecisionPush_Stc["EventType"][3326360] = 205
    tOctPrecisionPush_Stc["DataType"][3326360] = 15
    tOctPrecisionPush_Stc["LimitData"][3326360] = 7
	
	tOctPrecisionPush_Stc["EventType"][3326361] = 205
    tOctPrecisionPush_Stc["DataType"][3326361] = 16
    tOctPrecisionPush_Stc["LimitData"][3326361] = 7
	

local tOctPrecisionPush_Dialog = {}
	tOctPrecisionPush_Dialog[3326362] = {}
	tOctPrecisionPush_Dialog[3326362][1] = {}
	tOctPrecisionPush_Dialog[3326362][1]["Emoney"] = 1000
	tOctPrecisionPush_Dialog[3326362][1]["CpsValue"] = 5000
	tOctPrecisionPush_Dialog[3326362][2] = {}
	tOctPrecisionPush_Dialog[3326362][2]["Emoney"] = 5000
	tOctPrecisionPush_Dialog[3326362][2]["CpsValue"] = 35000
	tOctPrecisionPush_Dialog[3326362][3] = {}
	tOctPrecisionPush_Dialog[3326362][3]["Emoney"] = 10000
	tOctPrecisionPush_Dialog[3326362][3]["CpsValue"] = 80000
	
	-- 3326357,'5级赠点周卡包'
	-- 3326358,'4级赠点周卡包'
	-- 3326359,'3级赠点周卡包'
	-- 3326360,'2级赠点周卡包'
	-- 3326361,'1级赠点周卡包'
	tOctPrecisionPush_Dialog[3326357] = {}
	tOctPrecisionPush_Dialog[3326357][1] = {1010,1300}
	tOctPrecisionPush_Dialog[3326357][2] = {20,1500}
	
	tOctPrecisionPush_Dialog[3326358] = {}
	tOctPrecisionPush_Dialog[3326358][1] = {875,1000}
	tOctPrecisionPush_Dialog[3326358][2] = {13,1200}
	
	tOctPrecisionPush_Dialog[3326359] = {}
	tOctPrecisionPush_Dialog[3326359][1] = {600,600}
	tOctPrecisionPush_Dialog[3326359][2] = {13,700}
	
	tOctPrecisionPush_Dialog[3326360] = {}
	tOctPrecisionPush_Dialog[3326360][1] = {400,350}
	tOctPrecisionPush_Dialog[3326360][2] = {7,400}
	
	tOctPrecisionPush_Dialog[3326361] = {}
	tOctPrecisionPush_Dialog[3326361][1] = {60,60}
	tOctPrecisionPush_Dialog[3326361][2] = {1,70}
	
local tOctPrecisionPush_Award = {}
	-- ===5级赠点周卡包
	-- ===索引: tReward1[3326357][1]
	-- ===删除: 3326357,1
	-- ===EMoneyLog: 10000,195
	tOctPrecisionPush_Award[3326357] = {}
	tOctPrecisionPush_Award[3326357][1] = {}
	tOctPrecisionPush_Award[3326357][1]["LogId"] = 12001648
	tOctPrecisionPush_Award[3326357][1]["EmoneyLog"] = "350	22641	0	0	1	"
	-- tOctPrecisionPush_Award[3326357][1]["DeleteItem"] = {}
	-- tOctPrecisionPush_Award[3326357][1]["DeleteItem"][1] = {}
	-- tOctPrecisionPush_Award[3326357][1]["DeleteItem"][1]["Id"] = 3326357 -- 【库】5级赠点周卡包[属性:9]
	tOctPrecisionPush_Award[3326357][1]["RewardEMoneyMono"] = {}
	tOctPrecisionPush_Award[3326357][1]["RewardEMoneyMono"]["Value"] = 1300 -- 天石（赠）, 【需求】1300天石（赠）
--	tOctPrecisionPush_Award[3326357][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	X"
	tOctPrecisionPush_Award[3326357][1]["RewardEffect"] = {}
	tOctPrecisionPush_Award[3326357][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPrecisionPush_Award[3326357][1]["RewardEffect"]["Effect"] = "angelwing"


	tOctPrecisionPush_Award[3326357][2] = {}
	-- ===5级赠点周卡包
	-- ===索引: tReward1[3326357][2]
	-- ===删除: 3326357,1
	-- ===EMoneyLog: 10000,194
	tOctPrecisionPush_Award[3326357][2]["LogId"] = 12001648
	tOctPrecisionPush_Award[3326357][2]["EmoneyLog"] = "350	22641	20	20	1	"
	-- tOctPrecisionPush_Award[3326357][2]["DeleteItem"] = {}
	-- tOctPrecisionPush_Award[3326357][2]["DeleteItem"][1] = {}
	-- tOctPrecisionPush_Award[3326357][2]["DeleteItem"][1]["Id"] = 3326357 -- 【库】5级赠点周卡包[属性:9]
	tOctPrecisionPush_Award[3326357][2]["RewardEMoneyMono"] = {}
	tOctPrecisionPush_Award[3326357][2]["RewardEMoneyMono"]["Value"] = 1500 -- 天石（赠）, 【需求】1500天石（赠）
--	tOctPrecisionPush_Award[3326357][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	X"
	tOctPrecisionPush_Award[3326357][2]["RewardEffect"] = {}
	tOctPrecisionPush_Award[3326357][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPrecisionPush_Award[3326357][2]["RewardEffect"]["Effect"] = "angelwing"


	tOctPrecisionPush_Award[3326358] = {}
	-- ===4级赠点周卡包
	-- ===索引: tReward1[3326358][1]
	-- ===删除: 3326358,1
	-- ===EMoneyLog: 10000,194
	tOctPrecisionPush_Award[3326358][1] = {}
	tOctPrecisionPush_Award[3326358][1]["LogId"] = 12001648
	tOctPrecisionPush_Award[3326358][1]["EmoneyLog"] = "350	22642	0	0	1	"
	-- tOctPrecisionPush_Award[3326358][1]["DeleteItem"] = {}
	-- tOctPrecisionPush_Award[3326358][1]["DeleteItem"][1] = {}
	-- tOctPrecisionPush_Award[3326358][1]["DeleteItem"][1]["Id"] = 3326358 -- 【库】4级赠点周卡包[属性:9]
	tOctPrecisionPush_Award[3326358][1]["RewardEMoneyMono"] = {}
	tOctPrecisionPush_Award[3326358][1]["RewardEMoneyMono"]["Value"] = 1000 -- 天石（赠）, 【需求】1000天石（赠）
--	tOctPrecisionPush_Award[3326358][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	X"
	tOctPrecisionPush_Award[3326358][1]["RewardEffect"] = {}
	tOctPrecisionPush_Award[3326358][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPrecisionPush_Award[3326358][1]["RewardEffect"]["Effect"] = "angelwing"


	tOctPrecisionPush_Award[3326358][2] = {}
	-- ===4级赠点周卡包
	-- ===索引: tReward1[3326358][2]
	-- ===删除: 3326358,1
	-- ===EMoneyLog: 10000,194
	tOctPrecisionPush_Award[3326358][2]["LogId"] = 12001648
	tOctPrecisionPush_Award[3326358][2]["EmoneyLog"] = "350	22642	13	13	1	"
	-- tOctPrecisionPush_Award[3326358][2]["DeleteItem"] = {}
	-- tOctPrecisionPush_Award[3326358][2]["DeleteItem"][1] = {}
	-- tOctPrecisionPush_Award[3326358][2]["DeleteItem"][1]["Id"] = 3326358 -- 【库】4级赠点周卡包[属性:9]
	tOctPrecisionPush_Award[3326358][2]["RewardEMoneyMono"] = {}
	tOctPrecisionPush_Award[3326358][2]["RewardEMoneyMono"]["Value"] = 1200 -- 天石（赠）, 【需求】1200天石（赠）
--	tOctPrecisionPush_Award[3326358][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	X"
	tOctPrecisionPush_Award[3326358][2]["RewardEffect"] = {}
	tOctPrecisionPush_Award[3326358][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPrecisionPush_Award[3326358][2]["RewardEffect"]["Effect"] = "angelwing"


	tOctPrecisionPush_Award[3326359] = {}
	-- ===3级赠点周卡包
	-- ===索引: tReward1[3326359][1]
	-- ===删除: 3326359,1
	-- ===EMoneyLog: 10000,194
	tOctPrecisionPush_Award[3326359][1] = {}
	tOctPrecisionPush_Award[3326359][1]["LogId"] = 12001648
	tOctPrecisionPush_Award[3326359][1]["EmoneyLog"] = "350	22643	0	0	1	"
	-- tOctPrecisionPush_Award[3326359][1]["DeleteItem"] = {}
	-- tOctPrecisionPush_Award[3326359][1]["DeleteItem"][1] = {}
	-- tOctPrecisionPush_Award[3326359][1]["DeleteItem"][1]["Id"] = 3326359 -- 【库】3级赠点周卡包[属性:9]
	tOctPrecisionPush_Award[3326359][1]["RewardEMoneyMono"] = {}
	tOctPrecisionPush_Award[3326359][1]["RewardEMoneyMono"]["Value"] = 600 -- 天石（赠）, 【需求】600天石（赠）
--	tOctPrecisionPush_Award[3326359][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	X"
	tOctPrecisionPush_Award[3326359][1]["RewardEffect"] = {}
	tOctPrecisionPush_Award[3326359][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPrecisionPush_Award[3326359][1]["RewardEffect"]["Effect"] = "angelwing"


	tOctPrecisionPush_Award[3326359][2] = {}
	-- ===3级赠点周卡包
	-- ===索引: tReward1[3326359][2]
	-- ===删除: 3326359,1
	-- ===EMoneyLog: 10000,194
	tOctPrecisionPush_Award[3326359][2]["LogId"] = 12001648
	tOctPrecisionPush_Award[3326359][2]["EmoneyLog"] = "350	22643	13	13	1	"
	-- tOctPrecisionPush_Award[3326359][2]["DeleteItem"] = {}
	-- tOctPrecisionPush_Award[3326359][2]["DeleteItem"][1] = {}
	-- tOctPrecisionPush_Award[3326359][2]["DeleteItem"][1]["Id"] = 3326359 -- 【库】3级赠点周卡包[属性:9]
	tOctPrecisionPush_Award[3326359][2]["RewardEMoneyMono"] = {}
	tOctPrecisionPush_Award[3326359][2]["RewardEMoneyMono"]["Value"] = 700 -- 天石（赠）, 【需求】700天石（赠）
--	tOctPrecisionPush_Award[3326359][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	X"
	tOctPrecisionPush_Award[3326359][2]["RewardEffect"] = {}
	tOctPrecisionPush_Award[3326359][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPrecisionPush_Award[3326359][2]["RewardEffect"]["Effect"] = "angelwing"


	tOctPrecisionPush_Award[3326360] = {}
	-- ===2级赠点周卡包
	-- ===索引: tReward1[3326360][1]
	-- ===删除: 3326360,1
	-- ===EMoneyLog: 10000,194
	tOctPrecisionPush_Award[3326360][1] = {}
	tOctPrecisionPush_Award[3326360][1]["LogId"] = 12001648
	tOctPrecisionPush_Award[3326360][1]["EmoneyLog"] = "350	22644	0	0	1	"
	-- tOctPrecisionPush_Award[3326360][1]["DeleteItem"] = {}
	-- tOctPrecisionPush_Award[3326360][1]["DeleteItem"][1] = {}
	-- tOctPrecisionPush_Award[3326360][1]["DeleteItem"][1]["Id"] = 3326360 -- 【库】2级赠点周卡包[属性:9]
	tOctPrecisionPush_Award[3326360][1]["RewardEMoneyMono"] = {}
	tOctPrecisionPush_Award[3326360][1]["RewardEMoneyMono"]["Value"] = 350 -- 天石（赠）, 【需求】350天石（赠）
--	tOctPrecisionPush_Award[3326360][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	X"
	tOctPrecisionPush_Award[3326360][1]["RewardEffect"] = {}
	tOctPrecisionPush_Award[3326360][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPrecisionPush_Award[3326360][1]["RewardEffect"]["Effect"] = "angelwing"


	tOctPrecisionPush_Award[3326360][2] = {}
	-- ===2级赠点周卡包
	-- ===索引: tReward1[3326360][2]
	-- ===删除: 3326360,1
	-- ===EMoneyLog: 10000,194
	tOctPrecisionPush_Award[3326360][2]["LogId"] = 12001648
	tOctPrecisionPush_Award[3326360][2]["EmoneyLog"] = "350	22644	7	7	1	"
	-- tOctPrecisionPush_Award[3326360][2]["DeleteItem"] = {}
	-- tOctPrecisionPush_Award[3326360][2]["DeleteItem"][1] = {}
	-- tOctPrecisionPush_Award[3326360][2]["DeleteItem"][1]["Id"] = 3326360 -- 【库】2级赠点周卡包[属性:9]
	tOctPrecisionPush_Award[3326360][2]["RewardEMoneyMono"] = {}
	tOctPrecisionPush_Award[3326360][2]["RewardEMoneyMono"]["Value"] = 400 -- 天石（赠）, 【需求】400天石（赠）
--	tOctPrecisionPush_Award[3326360][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	X"
	tOctPrecisionPush_Award[3326360][2]["RewardEffect"] = {}
	tOctPrecisionPush_Award[3326360][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPrecisionPush_Award[3326360][2]["RewardEffect"]["Effect"] = "angelwing"


	tOctPrecisionPush_Award[3326361] = {}
	-- ===1级赠点周卡包
	-- ===索引: tReward1[3326361][1]
	-- ===删除: 3326361,1
	-- ===EMoneyLog: 10000,194
	tOctPrecisionPush_Award[3326361][1] = {}
	tOctPrecisionPush_Award[3326361][1]["LogId"] = 12001648
	tOctPrecisionPush_Award[3326361][1]["EmoneyLog"] = "350	22645	0	0	1	"
	-- tOctPrecisionPush_Award[3326361][1]["DeleteItem"] = {}
	-- tOctPrecisionPush_Award[3326361][1]["DeleteItem"][1] = {}
	-- tOctPrecisionPush_Award[3326361][1]["DeleteItem"][1]["Id"] = 3326361 -- 【库】1级赠点周卡包[属性:9]
	tOctPrecisionPush_Award[3326361][1]["RewardEMoneyMono"] = {}
	tOctPrecisionPush_Award[3326361][1]["RewardEMoneyMono"]["Value"] = 60 -- 天石（赠）, 【需求】60天石（赠）
--	tOctPrecisionPush_Award[3326361][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	X"
	tOctPrecisionPush_Award[3326361][1]["RewardEffect"] = {}
	tOctPrecisionPush_Award[3326361][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPrecisionPush_Award[3326361][1]["RewardEffect"]["Effect"] = "angelwing"


	tOctPrecisionPush_Award[3326361][2] = {}
	-- ===1级赠点周卡包
	-- ===索引: tReward1[3326361][2]
	-- ===删除: 3326361,1
	-- ===EMoneyLog: 10000,194
	tOctPrecisionPush_Award[3326361][2]["LogId"] = 12001648
	tOctPrecisionPush_Award[3326361][2]["EmoneyLog"] = "350	22645	1	1	1	"
	-- tOctPrecisionPush_Award[3326361][2]["DeleteItem"] = {}
	-- tOctPrecisionPush_Award[3326361][2]["DeleteItem"][1] = {}
	-- tOctPrecisionPush_Award[3326361][2]["DeleteItem"][1]["Id"] = 3326361 -- 【库】1级赠点周卡包[属性:9]
	tOctPrecisionPush_Award[3326361][2]["RewardEMoneyMono"] = {}
	tOctPrecisionPush_Award[3326361][2]["RewardEMoneyMono"]["Value"] = 70 -- 天石（赠）, 【需求】70天石（赠）
--	tOctPrecisionPush_Award[3326361][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	X"
	tOctPrecisionPush_Award[3326361][2]["RewardEffect"] = {}
	tOctPrecisionPush_Award[3326361][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPrecisionPush_Award[3326361][2]["RewardEffect"]["Effect"] = "angelwing"


	tOctPrecisionPush_Award[3326362] = {}
	-- ===赠点包中包
	-- ===索引: tReward1[3326362][1]
	-- ===删除: 3326362,1
	-- ===EMoneyLog: 10000,194
	tOctPrecisionPush_Award[3326362][1] = {}
	tOctPrecisionPush_Award[3326362][1]["LogId"] = 12001648
	tOctPrecisionPush_Award[3326362][1]["EmoneyLog"] = "350	22646	1000	1000	1	"
	-- tOctPrecisionPush_Award[3326362][1]["DeleteItem"] = {}
	-- tOctPrecisionPush_Award[3326362][1]["DeleteItem"][1] = {}
	-- tOctPrecisionPush_Award[3326362][1]["DeleteItem"][1]["Id"] = 3326362 -- 【库】赠点包中包[属性:9]
	tOctPrecisionPush_Award[3326362][1]["RewardEMoneyMono"] = {}
	tOctPrecisionPush_Award[3326362][1]["RewardEMoneyMono"]["Value"] = 5000 -- 天石（赠）, 【需求】5000天石（赠）
--	tOctPrecisionPush_Award[3326362][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	X"
	tOctPrecisionPush_Award[3326362][1]["RewardEffect"] = {}
	tOctPrecisionPush_Award[3326362][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPrecisionPush_Award[3326362][1]["RewardEffect"]["Effect"] = "angelwing"


	tOctPrecisionPush_Award[3326362][2] = {}
	-- ===赠点包中包
	-- ===索引: tReward1[3326362][2]
	-- ===删除: 3326362,1
	-- ===EMoneyLog: 10000,194
	tOctPrecisionPush_Award[3326362][2]["LogId"] = 12001648
	tOctPrecisionPush_Award[3326362][2]["EmoneyLog"] = "350	22646	5000	5000	1	"
	-- tOctPrecisionPush_Award[3326362][2]["DeleteItem"] = {}
	-- tOctPrecisionPush_Award[3326362][2]["DeleteItem"][1] = {}
	-- tOctPrecisionPush_Award[3326362][2]["DeleteItem"][1]["Id"] = 3326362 -- 【库】赠点包中包[属性:9]
	tOctPrecisionPush_Award[3326362][2]["RewardEMoneyMono"] = {}
	tOctPrecisionPush_Award[3326362][2]["RewardEMoneyMono"]["Value"] = 35000 -- 天石（赠）, 【需求】35000天石（赠）
--	tOctPrecisionPush_Award[3326362][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	X"
	tOctPrecisionPush_Award[3326362][2]["RewardEffect"] = {}
	tOctPrecisionPush_Award[3326362][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPrecisionPush_Award[3326362][2]["RewardEffect"]["Effect"] = "angelwing"


	tOctPrecisionPush_Award[3326362][3] = {}
	-- ===赠点包中包
	-- ===索引: tReward1[3326362][3]
	-- ===删除: 3326362,1
	-- ===EMoneyLog: 10000,194
	tOctPrecisionPush_Award[3326362][3]["LogId"] = 12001648
	tOctPrecisionPush_Award[3326362][3]["EmoneyLog"] = "350	22646	10000	10000	1	"
	-- tOctPrecisionPush_Award[3326362][3]["DeleteItem"] = {}
	-- tOctPrecisionPush_Award[3326362][3]["DeleteItem"][1] = {}
	-- tOctPrecisionPush_Award[3326362][3]["DeleteItem"][1]["Id"] = 3326362 -- 【库】赠点包中包[属性:9]
	tOctPrecisionPush_Award[3326362][3]["RewardEMoneyMono"] = {}
	tOctPrecisionPush_Award[3326362][3]["RewardEMoneyMono"]["Value"] = 80000 -- 天石（赠）, 【需求】80000天石（赠）
--	tOctPrecisionPush_Award[3326362][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	X"
	tOctPrecisionPush_Award[3326362][3]["RewardEffect"] = {}
	tOctPrecisionPush_Award[3326362][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPrecisionPush_Award[3326362][3]["RewardEffect"]["Effect"] = "angelwing"


	tOctPrecisionPush_Award[3326363] = {}
	-- ===大固化石必买包
	-- ===索引: tReward1[3326363]
	-- ===删除: 3326363,1
	-- ===EMoneyLog: 10000,194
	tOctPrecisionPush_Award[3326363]["LogId"] = 12001648
	tOctPrecisionPush_Award[3326363]["EmoneyLog"] = "350	22649	0	0	1	"
	tOctPrecisionPush_Award[3326363]["DeleteItem"] = {}
	tOctPrecisionPush_Award[3326363]["DeleteItem"][1] = {}
	tOctPrecisionPush_Award[3326363]["DeleteItem"][1]["Id"] = 3326363 -- 【库】大固化石必买包[属性:9]
	tOctPrecisionPush_Award[3326363]["RewardItem"] = {}
	tOctPrecisionPush_Award[3326363]["RewardItem"][1] = {}
	tOctPrecisionPush_Award[3326363]["RewardItem"][1]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0], 【表格】大固化石
	tOctPrecisionPush_Award[3326363]["RewardItem"][1]["Attr"] = "0 1 3" -- BigPermanentStone（赠）*1
	tOctPrecisionPush_Award[3326363]["RewardEffect"] = {}
	tOctPrecisionPush_Award[3326363]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPrecisionPush_Award[3326363]["RewardEffect"]["Effect"] = "angelwing"


	tOctPrecisionPush_Award[3326364] = {}
	-- ===马匹必买包
	-- ===索引: tReward1[3326364]
	-- ===删除: 3326364,1
	-- ===EMoneyLog: 10000,194
	tOctPrecisionPush_Award[3326364]["LogId"] = 12001648
	tOctPrecisionPush_Award[3326364]["EmoneyLog"] = "350	22652	0	0	1	"
	tOctPrecisionPush_Award[3326364]["DeleteItem"] = {}
	tOctPrecisionPush_Award[3326364]["DeleteItem"][1] = {}
	tOctPrecisionPush_Award[3326364]["DeleteItem"][1]["Id"] = 3326364 -- 【库】马匹必买包[属性:9]
	tOctPrecisionPush_Award[3326364]["RewardItem"] = {}
	tOctPrecisionPush_Award[3326364]["RewardItem"][1] = {}
	tOctPrecisionPush_Award[3326364]["RewardItem"][1]["Id"] = 300000 -- Steed[300000][属性:0][叠加:0][金币:0], 【表格】8马匹
	tOctPrecisionPush_Award[3326364]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 8" -- Steed
	tOctPrecisionPush_Award[3326364]["RewardItem"][2] = {}
	tOctPrecisionPush_Award[3326364]["RewardItem"][2]["Id"] = 300000 -- Steed[300000][属性:0][叠加:0][金币:0], 【表格】6马匹
	tOctPrecisionPush_Award[3326364]["RewardItem"][2]["Attr"] = "0 2 3 0 0 0 16750080 255 150 0 6" -- Steed
	tOctPrecisionPush_Award[3326364]["RewardEffect"] = {}
	tOctPrecisionPush_Award[3326364]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPrecisionPush_Award[3326364]["RewardEffect"]["Effect"] = "angelwing"


	tOctPrecisionPush_Award[3326365] = {}
	-- ===极品玄晶必买包
	-- ===索引: tReward1[3326365]
	-- ===删除: 3326365,1
	-- ===EMoneyLog: 10000,194
	tOctPrecisionPush_Award[3326365]["LogId"] = 12001648
	tOctPrecisionPush_Award[3326365]["EmoneyLog"] = "350	22653	0	0	1	"
	tOctPrecisionPush_Award[3326365]["DeleteItem"] = {}
	tOctPrecisionPush_Award[3326365]["DeleteItem"][1] = {}
	tOctPrecisionPush_Award[3326365]["DeleteItem"][1]["Id"] = 3326365 -- 【库】极品玄晶必买包[属性:9]
	tOctPrecisionPush_Award[3326365]["RewardItem"] = {}
	tOctPrecisionPush_Award[3326365]["RewardItem"][1] = {}
	tOctPrecisionPush_Award[3326365]["RewardItem"][1]["Id"] = 3311633 -- SuperFantasyCrystal[3311633][属性:0][叠加:1][金币:0], 【表格】极品玄晶（赠）
	tOctPrecisionPush_Award[3326365]["RewardItem"][1]["Attr"] = "0 1 3" -- SuperFantasyCrystal（赠）*1
	tOctPrecisionPush_Award[3326365]["RewardEffect"] = {}
	tOctPrecisionPush_Award[3326365]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPrecisionPush_Award[3326365]["RewardEffect"]["Effect"] = "angelwing"


	tOctPrecisionPush_Award[3326366] = {}
	-- ===优质真武宝石必买包
	-- ===索引: tReward1[3326366]
	-- ===删除: 3326366,1
	-- ===EMoneyLog: 10000,194
	tOctPrecisionPush_Award[3326366]["LogId"] = 12001648
	tOctPrecisionPush_Award[3326366]["EmoneyLog"] = "350	22654	0	0	1	"
	tOctPrecisionPush_Award[3326366]["DeleteItem"] = {}
	tOctPrecisionPush_Award[3326366]["DeleteItem"][1] = {}
	tOctPrecisionPush_Award[3326366]["DeleteItem"][1]["Id"] = 3326366 -- 【库】优质真武宝石必买包[属性:9]
	tOctPrecisionPush_Award[3326366]["RewardItem"] = {}
	tOctPrecisionPush_Award[3326366]["RewardItem"][1] = {}
	tOctPrecisionPush_Award[3326366]["RewardItem"][1]["Id"] = 700133 -- SuperInfinityGem[700133][属性:0][叠加:0][金币:0], 【表格】优质真武宝石（赠）
	tOctPrecisionPush_Award[3326366]["RewardItem"][1]["Attr"] = "0 1 3" -- SuperInfinityGem（赠）*1
	tOctPrecisionPush_Award[3326366]["RewardEffect"] = {}
	tOctPrecisionPush_Award[3326366]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPrecisionPush_Award[3326366]["RewardEffect"]["Effect"] = "angelwing"


	tOctPrecisionPush_Award[3326367] = {}
	-- ===1亿捐献值礼包
	-- ===索引: tReward1[3326367]
	-- ===删除: 3326367,1
	-- ===EMoneyLog: 10000,194
	tOctPrecisionPush_Award[3326367]["LogId"] = 12001648
	tOctPrecisionPush_Award[3326367]["EmoneyLog"] = "350	22655	0	0	1	"
	tOctPrecisionPush_Award[3326367]["DeleteItem"] = {}
	tOctPrecisionPush_Award[3326367]["DeleteItem"][1] = {}
	tOctPrecisionPush_Award[3326367]["DeleteItem"][1]["Id"] = 3326367 -- 【库】1亿捐献值礼包[属性:9]
	tOctPrecisionPush_Award[3326367]["RewardDonate"] = {}
	tOctPrecisionPush_Award[3326367]["RewardDonate"]["Value"] = 100000000   
	tOctPrecisionPush_Award[3326367]["RewardEffect"] = {}
	tOctPrecisionPush_Award[3326367]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPrecisionPush_Award[3326367]["RewardEffect"]["Effect"] = "angelwing"


	tOctPrecisionPush_Award[3326368] = {}
	-- ===10亿捐献值礼包
	-- ===索引: tReward1[3326368]
	-- ===删除: 3326368,1
	-- ===EMoneyLog: 10000,194
	tOctPrecisionPush_Award[3326368]["LogId"] = 12001648
	tOctPrecisionPush_Award[3326368]["EmoneyLog"] = "350	22656	0	0	1	"
	tOctPrecisionPush_Award[3326368]["DeleteItem"] = {}
	tOctPrecisionPush_Award[3326368]["DeleteItem"][1] = {}
	tOctPrecisionPush_Award[3326368]["DeleteItem"][1]["Id"] = 3326368 -- 【库】10亿捐献值礼包[属性:9]
	tOctPrecisionPush_Award[3326368]["RewardDonate"] = {}
	tOctPrecisionPush_Award[3326368]["RewardDonate"]["Value"] = 1000000000
	tOctPrecisionPush_Award[3326368]["RewardEffect"] = {}
	tOctPrecisionPush_Award[3326368]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPrecisionPush_Award[3326368]["RewardEffect"]["Effect"] = "angelwing"


	tOctPrecisionPush_Award[3326369] = {}
	-- ===修行值必买包
	-- ===索引: tReward1[3326369]
	-- ===删除: 3326369,1
	-- ===EMoneyLog: 10000,194
	tOctPrecisionPush_Award[3326369]["LogId"] = 12001648
	tOctPrecisionPush_Award[3326369]["EmoneyLog"] = "350	22658	0	0	1	"
	tOctPrecisionPush_Award[3326369]["DeleteItem"] = {}
	tOctPrecisionPush_Award[3326369]["DeleteItem"][1] = {}
	tOctPrecisionPush_Award[3326369]["DeleteItem"][1]["Id"] = 3326369 -- 【库】修行值必买包[属性:9]
	tOctPrecisionPush_Award[3326369]["RewardCultivation"] = {}
	tOctPrecisionPush_Award[3326369]["RewardCultivation"]["Value"] = 25000 -- 修行值, 【需求】修行值*25000
	tOctPrecisionPush_Award[3326369]["RewardItem"] = {}
	tOctPrecisionPush_Award[3326369]["RewardItem"][1] = {}
	tOctPrecisionPush_Award[3326369]["RewardItem"][1]["Id"] = 721259 -- CelestialStone[721259][属性:0][叠加:10][金币:0]
	tOctPrecisionPush_Award[3326369]["RewardItem"][1]["Attr"] = "0 5 3" -- CelestialStone（赠）*5
	tOctPrecisionPush_Award[3326369]["RewardItem"][2] = {}
	tOctPrecisionPush_Award[3326369]["RewardItem"][2]["Id"] = 723087 -- LuckyAmulet[723087][属性:0][叠加:10000][金币:0]
	tOctPrecisionPush_Award[3326369]["RewardItem"][2]["Attr"] = "0 20 3" -- LuckyAmulet（赠）*20（[错误]物品数量超10个）
	tOctPrecisionPush_Award[3326369]["RewardItem"][3] = {}
	tOctPrecisionPush_Award[3326369]["RewardItem"][3]["Id"] = 723903 -- Saddle[723903][属性:0][叠加:100][金币:0]
	tOctPrecisionPush_Award[3326369]["RewardItem"][3]["Attr"] = "0 40 3" -- Saddle（赠）*40（[错误]物品数量超10个）
	tOctPrecisionPush_Award[3326369]["RewardItem"][4] = {}
	tOctPrecisionPush_Award[3326369]["RewardItem"][4]["Id"] = 721261 -- Bomb[721261][属性:0][叠加:10000][金币:1]
	tOctPrecisionPush_Award[3326369]["RewardItem"][4]["Attr"] = "0 10 3" -- Bomb（赠）*10
	tOctPrecisionPush_Award[3326369]["RewardItem"][5] = {}
	tOctPrecisionPush_Award[3326369]["RewardItem"][5]["Id"] = 1088001 -- MeteorTear[1088002][属性:0][叠加:0][金币:0]
	tOctPrecisionPush_Award[3326369]["RewardItem"][5]["Attr"] = "0 10 3" -- MeteorTear（赠）*10
	tOctPrecisionPush_Award[3326369]["RewardItem"][6] = {}
	tOctPrecisionPush_Award[3326369]["RewardItem"][6]["Id"] = 711188 -- YinYangFruit[711188][属性:8][叠加:10][金币:0]
	tOctPrecisionPush_Award[3326369]["RewardItem"][6]["Attr"] = "0 1 3" -- YinYangFruit（赠）*10
	tOctPrecisionPush_Award[3326369]["RewardItem"][7] = {}
	tOctPrecisionPush_Award[3326369]["RewardItem"][7]["Id"] = 711679 -- PerformerCard[711679][属性:0][叠加:0][金币:0]
	tOctPrecisionPush_Award[3326369]["RewardItem"][7]["Attr"] = "0 1 3" -- PerformerCard（赠）*1
	tOctPrecisionPush_Award[3326369]["RewardEffect"] = {}
	tOctPrecisionPush_Award[3326369]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPrecisionPush_Award[3326369]["RewardEffect"]["Effect"] = "angelwing"


	tOctPrecisionPush_Award[3326370] = {}
	-- ===天机果必买包
	-- ===索引: tReward1[3326370]
	-- ===删除: 3326370,1
	-- ===EMoneyLog: 10000,194
	tOctPrecisionPush_Award[3326370]["LogId"] = 12001648
	tOctPrecisionPush_Award[3326370]["EmoneyLog"] = "350	22659	0	0	1	"
	tOctPrecisionPush_Award[3326370]["DeleteItem"] = {}
	tOctPrecisionPush_Award[3326370]["DeleteItem"][1] = {}
	tOctPrecisionPush_Award[3326370]["DeleteItem"][1]["Id"] = 3326370 -- 【库】天机果必买包[属性:9]
	tOctPrecisionPush_Award[3326370]["RewardItem"] = {}
	tOctPrecisionPush_Award[3326370]["RewardItem"][1] = {}
	tOctPrecisionPush_Award[3326370]["RewardItem"][1]["Id"] = 3001044 -- MysteryFruit[3001044][属性:9][叠加:99][金币:0], 【表格】天机果10
	tOctPrecisionPush_Award[3326370]["RewardItem"][1]["Attr"] = "0 10" -- MysteryFruit*10
	tOctPrecisionPush_Award[3326370]["RewardEffect"] = {}
	tOctPrecisionPush_Award[3326370]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPrecisionPush_Award[3326370]["RewardEffect"]["Effect"] = "angelwing"


	tOctPrecisionPush_Award[3326371] = {}
	-- ===普通龙恨宝石（赠）*200礼包
	-- ===索引: tReward1[3326371]
	-- ===删除: 3326371,1
	-- ===EMoneyLog: 10000,194
	tOctPrecisionPush_Award[3326371]["LogId"] = 12001648
	tOctPrecisionPush_Award[3326371]["EmoneyLog"] = "350	22657	0	0	1	"
	tOctPrecisionPush_Award[3326371]["DeleteItem"] = {}
	tOctPrecisionPush_Award[3326371]["DeleteItem"][1] = {}
	tOctPrecisionPush_Award[3326371]["DeleteItem"][1]["Id"] = 3326371 -- 【库】普通龙恨宝石（赠）*200礼包[属性:9]
	tOctPrecisionPush_Award[3326371]["RewardItem"] = {}
	tOctPrecisionPush_Award[3326371]["RewardItem"][1] = {}
	tOctPrecisionPush_Award[3326371]["RewardItem"][1]["Id"] = 3326433 -- 普通龙恨宝石（赠）*20礼包[3326433][属性:9][叠加:0][金币:0], 【表格】普通龙恨宝石（赠）*20礼包
	tOctPrecisionPush_Award[3326371]["RewardItem"][1]["Attr"] = "0 10" -- 普通龙恨宝石（赠）*20礼包*10
	tOctPrecisionPush_Award[3326371]["RewardEffect"] = {}
	tOctPrecisionPush_Award[3326371]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPrecisionPush_Award[3326371]["RewardEffect"]["Effect"] = "angelwing"

	tOctPrecisionPush_Award[3326433] = {}
	-- ===普通龙恨宝石（赠）*200礼包
	-- ===索引: tReward1[3326433]
	-- ===删除: 3326433,1
	-- ===EMoneyLog: 10000,194
	tOctPrecisionPush_Award[3326433]["LogId"] = 12001648
	tOctPrecisionPush_Award[3326433]["DeleteItem"] = {}
	tOctPrecisionPush_Award[3326433]["DeleteItem"][1] = {}
	tOctPrecisionPush_Award[3326433]["DeleteItem"][1]["Id"] = 3326433 -- 【库】普通龙恨宝石（赠）*200礼包[属性:9]
	tOctPrecisionPush_Award[3326433]["RewardItem"] = {}
	tOctPrecisionPush_Award[3326433]["RewardItem"][1] = {}
	tOctPrecisionPush_Award[3326433]["RewardItem"][1]["Id"] = 700011 -- 普通龙恨宝石（赠）*20[3326433][属性:9][叠加:0][金币:0], 【表格】普通龙恨宝石（赠）*20礼包
	tOctPrecisionPush_Award[3326433]["RewardItem"][1]["Attr"] = "0 20 3" -- 普通龙恨宝石*20
	tOctPrecisionPush_Award[3326433]["RewardEffect"] = {}
	tOctPrecisionPush_Award[3326433]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPrecisionPush_Award[3326433]["RewardEffect"]["Effect"] = "angelwing"

local tOctPrecisionPush_Log = {}
	tOctPrecisionPush_Log["DelAllItem"] = "0,0,%d,%d,12001648,2,0,0"	
	tOctPrecisionPush_Log["DelItem"] = "0,0,%d,1,12001648,2,0,0"	

	tOctPrecisionPush_Log["Emoney"] = {}
	tOctPrecisionPush_Log["Emoney"][3326357] = "350	22641	%d	%d	1	"
	tOctPrecisionPush_Log["Emoney"][3326358] = "350	22642	%d	%d	1	"
	tOctPrecisionPush_Log["Emoney"][3326359] = "350	22643	%d	%d	1	"
	tOctPrecisionPush_Log["Emoney"][3326360] = "350	22644	%d	%d	1	"
	tOctPrecisionPush_Log["Emoney"][3326361] = "350	22645	%d	%d	1	"

	

---------------------------------------------------逻辑部分-------------------------------------------------------
function OctPrecisionPush_OpenCps(nItemId)
	if not Item_ChkItem(nItemId) then 
		return
	end 
	local nUserId = Get_UserId()
	local nEvent = tOctPrecisionPush_Stc["EventType"][nItemId]
	local nData = tOctPrecisionPush_Stc["DataType"][nItemId]
	local nUserData = Get_UserStatisticValue(nEvent,nData,nUserId)
	if nUserData >= tOctPrecisionPush_Stc["LimitData"][nItemId] then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Task_SetStatistic(nEvent,nData,0,1)
			local sDelItemLog = string.format(tOctPrecisionPush_Log["DelAllItem"],nItemId,1)
			Sys_SaveActionFestivalLog(sDelItemLog)
			User_TalkChannel2005(tOctPrecisionPush_Text["Sys"]["NoTimes"])
		end
		return
	end 
	if tOctPrecisionPush_Dialog[nItemId][nUserData+1] ~= nil then 
		local nEmoney = tOctPrecisionPush_Dialog[nItemId][nUserData+1]["Emoney"]
		local nAwardValue = tOctPrecisionPush_Dialog[nItemId][nUserData+1]["CpsValue"]
		Sys_DialogItemFace(nItemId)
		Sys_DialogText(tOctPrecisionPush_Text[3326362]["Text111"])
		Sys_DialogText(tOctPrecisionPush_Text[3326362]["Text112"])
		Sys_DialogText(tOctPrecisionPush_Text[3326362]["Text113"])
		Sys_DialogText(tOctPrecisionPush_Text[3326362]["Text114"])
		
		Sys_DialogOption(string.format(tOctPrecisionPush_Text[3326362]["Option111"],nEmoney),"</F>OctPrecisionPush_OpenCpsSure</N>"..nItemId.."</N>"..nEmoney.."</N>"..nAwardValue)
		Sys_DialogOption(tOctPrecisionPush_Text[3326362]["Option112"],"</F>NULL")
		Sys_DialogEnd()
	
	end

end 


function OctPrecisionPush_OpenCpsSure(nItemId,nEmoney,nAwardValue)

	if not Item_ChkItem(nItemId) then 
		return
	end 
	Sys_DialogItemFace(nItemId)
	Sys_DialogText(string.format(tOctPrecisionPush_Text[3326362]["Text121"],nEmoney,nAwardValue))
	Sys_DialogOption(string.format(tOctPrecisionPush_Text[3326362]["Option111"],nEmoney),"</F>OctPrecisionPush_OpenCpsSureGet</N>"..nItemId.."</N>"..nEmoney.."</N>"..nAwardValue)
	Sys_DialogOption(tOctPrecisionPush_Text[3326362]["Option112"],"</F>NULL")
	Sys_DialogEnd()
	
	
	
end 

function OctPrecisionPush_OpenCpsSureGet(nItemId,nEmoney,nAwardValue)
	if not Item_ChkItem(nItemId) then 
		return
	end 
	
	local nUserId = Get_UserId()
	local nEvent = tOctPrecisionPush_Stc["EventType"][nItemId]
	local nData = tOctPrecisionPush_Stc["DataType"][nItemId]
	local nUserData = Get_UserStatisticValue(nEvent,nData,nUserId)
	if nUserData > tOctPrecisionPush_Stc["LimitData"][nItemId] then 
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Task_SetStatistic(nEvent,nData,0,1)
			local sDelItemLog = string.format(tOctPrecisionPush_Log["DelAllItem"],nItemId,1)
			Sys_SaveActionFestivalLog(sDelItemLog)
			User_TalkChannel2005(tOctPrecisionPush_Text["Sys"]["NoTimes"])
		end
		return
	end 
	
	-- local nSpace = RewardTemplate_GetRewardSpace(tOctPrecisionPush_Award[nItemId][nUserData])
	-- if not User_CheckLeftSpace(nSpace) then
		-- Sys_MsgBox(tOctPrecisionPush_Text["Sys"]["NoSpace"])
		-- return
	-- end	
	--天石判断
	if Get_UserEMoney() < nEmoney then
		Sys_MsgBox(tOctPrecisionPush_Text["Sys"]["NoMoney"])
		return
	else
		--赠点天石上限判断
		if Get_UserMonoEMoney() + nAwardValue > G_User_MaxEmoneyMono then
			Sys_MsgBox(tOctPrecisionPush_Text["Sys"]["MomoEmoneyLimit"])
			return
		end
		
		if User_AddEMoney(-nEmoney) then
			if nUserData == tOctPrecisionPush_Stc["LimitData"][nItemId] - 1 then
				if Item_DelItem(nItemId) then 
					local sDelItemLog = string.format(tOctPrecisionPush_Log["DelItem"],nItemId)
					Sys_SaveActionFestivalLog(sDelItemLog)
					Task_AddStatistic(nEvent,nData,1,1)
					Task_SetStcTimestamp(nEvent,nData,0)
					RewardTemplate_UseItemAndMsg(tOctPrecisionPush_Award[nItemId][nUserData+1])
					Task_SetStatistic(nEvent,nData,0,1)
				end 	
			else	
				Task_AddStatistic(nEvent,nData,1,1)
				Task_SetStcTimestamp(nEvent,nData,0)
				RewardTemplate_UseItemAndMsg(tOctPrecisionPush_Award[nItemId][nUserData+1])
			end 
			
		end
	end 
end 

function OctPrecisionPush_GetStc(nEvent,nData)
	local nUserId = Get_UserId()
	local nUserData = Get_UserStatisticValue(nEvent,nData,nUserId)
	local nWay = math.floor(nUserData/10)
	local nTimes = nUserData%10
	return nWay,nTimes
end 

--打开赠点周卡包
function OctPrecisionPush_OpenLevCps(nItemId)
	if not Item_ChkItem(nItemId) then 
		return
	end 
	
	local nUserId = Get_UserId()
	local nEvent = tOctPrecisionPush_Stc["EventType"][nItemId]
	local nData = tOctPrecisionPush_Stc["DataType"][nItemId]
	-- local nUserData = Get_UserStatisticValue(nEvent,nData,nUserId)
	local nWay,nTimes = OctPrecisionPush_GetStc(nEvent,nData)
	if nTimes > tOctPrecisionPush_Stc["LimitData"][nItemId] then 
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Task_SetStatistic(nEvent,nData,0,1)
			local sDelItemLog = string.format(tOctPrecisionPush_Log["DelAllItem"],nItemId,1)
			Sys_SaveActionFestivalLog(sDelItemLog)
			User_TalkChannel2005(tOctPrecisionPush_Text["Sys"]["NoTimes"])
		end
		return
	end 
	
	if nWay == 0 then 
	-- 第一次选择
		if tOctPrecisionPush_Dialog[nItemId] ~= nil then 
			local nEmoney_1 = tOctPrecisionPush_Dialog[nItemId][1][1]
			local nAwardValue_1 = tOctPrecisionPush_Dialog[nItemId][1][2]
			
			local nEmoney_2 = tOctPrecisionPush_Dialog[nItemId][2][1]
			local nAwardValue_2 = tOctPrecisionPush_Dialog[nItemId][2][2]
			
			Sys_DialogItemFace(nItemId)
			Sys_DialogText(string.format(tOctPrecisionPush_Text["Str"]["Text114"],nEmoney_1,nAwardValue_1,nEmoney_2,nAwardValue_2))
			Sys_DialogOption(string.format(tOctPrecisionPush_Text["Option"]["Option112"],nEmoney_1),"</F>OctPrecisionPush_OpenLevCpsSure</N>"..nItemId.."</N>"..nEmoney_1.."</N>1")
			Sys_DialogOption(tOctPrecisionPush_Text["Option"]["Option122"],"</F>NULL")
			Sys_DialogEnd()
		end
	
	
	elseif nWay == 1 then 
		Sys_DialogItemFace(nItemId)
		Sys_DialogText(string.format(tOctPrecisionPush_Text["Str"]["Text115"],tOctPrecisionPush_Dialog[nItemId][1][2],tOctPrecisionPush_Dialog[nItemId][2][1],tOctPrecisionPush_Dialog[nItemId][2][2]))
		
		Sys_DialogOption(string.format(tOctPrecisionPush_Text["Str"]["Text116"],tOctPrecisionPush_Dialog[nItemId][1][2]),"</F>OctPrecisionPush_OpenLevCpsSureGetAward</N>"..nItemId.."</N>1")
		Sys_DialogOption(string.format(tOctPrecisionPush_Text["Option"]["Option112"],tOctPrecisionPush_Dialog[nItemId][2][1]),"</F>OctPrecisionPush_OpenLevCpsSureGetAwardSure</N>"..nItemId.."</N>"..tOctPrecisionPush_Dialog[nItemId][2][1])
		Sys_DialogEnd()
	
	end 

end 
function OctPrecisionPush_OpenLevCpsSure(nItemId,nEmoney,nWay)

	Sys_DialogItemFace(nItemId)
	Sys_DialogText(string.format(tOctPrecisionPush_Text["Str"]["Text117"],nEmoney))
	
	Sys_DialogOption(string.format(tOctPrecisionPush_Text["Option"]["Option121"],nEmoney),"</F>OctPrecisionPush_OpenLevCpsSureGet</N>"..nItemId.."</N>"..nEmoney.."</N>"..nWay)
	Sys_DialogOption(tOctPrecisionPush_Text["Option"]["Option122"],"</F>NULL")
	Sys_DialogEnd()
	
end 

function OctPrecisionPush_OpenLevCpsSureGet(nItemId,nEmoney,nWay)
	if not Item_ChkItem(nItemId) then 
		return
	end 
	local nUserId = Get_UserId()
	local nEvent = tOctPrecisionPush_Stc["EventType"][nItemId]
	local nData = tOctPrecisionPush_Stc["DataType"][nItemId]
	-- local nUserData = Get_UserStatisticValue(nEvent,nData,nUserId)
	local nNowWay,nTimes = OctPrecisionPush_GetStc(nEvent,nData)

	if nTimes > tOctPrecisionPush_Stc["LimitData"][nItemId] then 
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Task_SetStatistic(nEvent,nData,0,1)
			local sDelItemLog = string.format(tOctPrecisionPush_Log["DelAllItem"],nItemId,1)
			Sys_SaveActionFestivalLog(sDelItemLog)
			User_TalkChannel2005(tOctPrecisionPush_Text["Sys"]["NoTimes"])
		end
		return
	end 
	if nTimes ~=0 then 
		-- 判断是否隔天
		if not Task_StcInterval(nEvent,nData,1,4,nUserId) then
			Sys_MsgBox(tOctPrecisionPush_Text["Sys"]["HaveGot"])
			return
		end
	end 
	
	if nNowWay == 0 then 
		--天石判断
		if Get_UserEMoney() < nEmoney then
			Sys_MsgBox(tOctPrecisionPush_Text["Sys"]["NoMoney"])
			return
		end 
		
		if User_AddEMoney(-nEmoney) then
			Task_AddStatistic(nEvent,nData,nWay*10,1)
			Sys_DialogItemFace(nItemId)
			Sys_DialogText(string.format(tOctPrecisionPush_Text["Str"]["Text115"],tOctPrecisionPush_Dialog[nItemId][1][2],tOctPrecisionPush_Dialog[nItemId][2][1],tOctPrecisionPush_Dialog[nItemId][2][2]))

			Sys_SaveEmoneyBuy(string.format(tOctPrecisionPush_Log["Emoney"][nItemId],nEmoney,nEmoney))

			Sys_DialogOption(string.format(tOctPrecisionPush_Text["Str"]["Text116"],tOctPrecisionPush_Dialog[nItemId][1][2]),"</F>OctPrecisionPush_OpenLevCpsSureGetAward</N>"..nItemId.."</N>1")
			Sys_DialogOption(string.format(tOctPrecisionPush_Text["Option"]["Option112"],tOctPrecisionPush_Dialog[nItemId][2][1]),"</F>OctPrecisionPush_OpenLevCpsSureGetAwardSure</N>"..nItemId.."</N>"..tOctPrecisionPush_Dialog[nItemId][2][1])
			Sys_DialogEnd()
			
		end
	else
		Sys_DialogItemFace(nItemId)
		Sys_DialogText(string.format(tOctPrecisionPush_Text["Str"]["Text115"],tOctPrecisionPush_Dialog[nItemId][1][2],tOctPrecisionPush_Dialog[nItemId][2][1],tOctPrecisionPush_Dialog[nItemId][2][2]))
		
		Sys_DialogOption(string.format(tOctPrecisionPush_Text["Str"]["Text116"],tOctPrecisionPush_Dialog[nItemId][1][2]),"</F>OctPrecisionPush_OpenLevCpsSureGetAward</N>"..nItemId.."</N>1")
		Sys_DialogOption(string.format(tOctPrecisionPush_Text["Option"]["Option112"],tOctPrecisionPush_Dialog[nItemId][2][1]),"</F>OctPrecisionPush_OpenLevCpsSureGetAwardSure</N>"..nItemId.."</N>"..tOctPrecisionPush_Dialog[nItemId][2][1])
		Sys_DialogEnd()
	end 

end 


function OctPrecisionPush_OpenLevCpsSureGetAward(nItemId,nWay)
	if not Item_ChkItem(nItemId) then 
		return
	end 
	
	local nUserId = Get_UserId()
	local nEvent = tOctPrecisionPush_Stc["EventType"][nItemId]
	local nData = tOctPrecisionPush_Stc["DataType"][nItemId]
	-- local nUserData = Get_UserStatisticValue(nEvent,nData,nUserId)
	local nNowWay,nTimes = OctPrecisionPush_GetStc(nEvent,nData)

	if nTimes >= tOctPrecisionPush_Stc["LimitData"][nItemId] then 
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Task_SetStatistic(nEvent,nData,0,1)
			local sDelItemLog = string.format(tOctPrecisionPush_Log["DelAllItem"],nItemId,1)
			Sys_SaveActionFestivalLog(sDelItemLog)
			User_TalkChannel2005(tOctPrecisionPush_Text["Sys"]["NoTimes"])
		end
		return
	end 
	if nTimes ~=0 then 
		-- 判断是否隔天
		if not Task_StcInterval(nEvent,nData,1,4,nUserId) then
			Sys_MsgBox(tOctPrecisionPush_Text["Sys"]["HaveGot"])
			return
		end
	end 
	--赠点天石上限判断
	local nAwardValue = tOctPrecisionPush_Award[nItemId][nWay]["RewardEMoneyMono"]["Value"]
	if Get_UserMonoEMoney() + nAwardValue > G_User_MaxEmoneyMono then
		Sys_MsgBox(tOctPrecisionPush_Text["Sys"]["MomoEmoneyLimit"])
		return
	end
	
	if nTimes == tOctPrecisionPush_Stc["LimitData"][nItemId] - 1 then
		if Item_DelItem(nItemId) then 
			local sDelItemLog = string.format(tOctPrecisionPush_Log["DelItem"],nItemId)
			Sys_SaveActionFestivalLog(sDelItemLog)
			Task_AddStatistic(nEvent,nData,1,1)
			Task_SetStcTimestamp(nEvent,nData,0)
			RewardTemplate_UseItemAndMsg(tOctPrecisionPush_Award[nItemId][nWay])
		end 	
	else			
	    Task_AddStatistic(nEvent,nData,1,1)
		Task_SetStcTimestamp(nEvent,nData,0)
		RewardTemplate_UseItemAndMsg(tOctPrecisionPush_Award[nItemId][nWay])
	end 

end 

function OctPrecisionPush_OpenLevCpsSureGetAwardSure(nItemId,nEmoney)
	Sys_DialogItemFace(nItemId)
	Sys_DialogText(string.format(tOctPrecisionPush_Text["Str"]["Text118"],nEmoney,tOctPrecisionPush_Dialog[nItemId][2][2]))
	
	Sys_DialogOption(string.format(tOctPrecisionPush_Text["Option"]["Option121"],nEmoney),"</F>OctPrecisionPush_OpenLevCpsSureGetAwardMore</N>"..nItemId.."</N>"..nEmoney.."</N>2")
	Sys_DialogOption(tOctPrecisionPush_Text["Option"]["Option122"],"</F>NULL")
	Sys_DialogEnd()
	
	
end 

function OctPrecisionPush_OpenLevCpsSureGetAwardMore(nItemId,nEmoney,nWay)
	if not Item_ChkItem(nItemId) then 
		return
	end 
	local nUserId = Get_UserId()
	local nEvent = tOctPrecisionPush_Stc["EventType"][nItemId]
	local nData = tOctPrecisionPush_Stc["DataType"][nItemId]
	-- local nUserData = Get_UserStatisticValue(nEvent,nData,nUserId)
	local nNowWay,nTimes = OctPrecisionPush_GetStc(nEvent,nData)
	if nTimes >= tOctPrecisionPush_Stc["LimitData"][nItemId] then 
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Task_SetStatistic(nEvent,nData,0,1)
			local sDelItemLog = string.format(tOctPrecisionPush_Log["DelAllItem"],nItemId,1)
			Sys_SaveActionFestivalLog(sDelItemLog)
			User_TalkChannel2005(tOctPrecisionPush_Text["Sys"]["NoTimes"])
		end
		return
	end
	
	if nTimes ~=0 then 
		-- 判断是否隔天
		if not Task_StcInterval(nEvent,nData,1,4,nUserId) then
			Sys_MsgBox(tOctPrecisionPush_Text["Sys"]["HaveGot"])
			return

		end
	end 
	
	--天石判断
	if Get_UserEMoney() < nEmoney then
		Sys_MsgBox(tOctPrecisionPush_Text["Sys"]["NoMoney"])
		return
	else
		local nAwardValue = tOctPrecisionPush_Award[nItemId][nWay]["RewardEMoneyMono"]["Value"]
		-- User_TalkChannel2005("nAwardValue=="..nAwardValue)
		if Get_UserMonoEMoney() + nAwardValue > G_User_MaxEmoneyMono then
			Sys_MsgBox(tOctPrecisionPush_Text["Sys"]["MomoEmoneyLimit"])
			return
		end
		
		if User_AddEMoney(-nEmoney) then
			if nTimes == tOctPrecisionPush_Stc["LimitData"][nItemId] - 1 then
				if Item_DelItem(nItemId) then 
					local sDelItemLog = string.format(tOctPrecisionPush_Log["DelItem"],nItemId)
					Sys_SaveActionFestivalLog(sDelItemLog)
					Task_AddStatistic(nEvent,nData,1,1)
					Task_SetStcTimestamp(nEvent,nData,0)
					RewardTemplate_UseItemAndMsg(tOctPrecisionPush_Award[nItemId][nWay])
				end 	
			else	
				Task_AddStatistic(nEvent,nData,1,1)
				Task_SetStcTimestamp(nEvent,nData,0)
				RewardTemplate_UseItemAndMsg(tOctPrecisionPush_Award[nItemId][nWay])
			end 
			
		end
	end 
	
end 


--装备检查 返回玩家身上当前装备id
function OctPrecisionPush_CheckEquip()
	--武器位
	local nEquipPos = 0
	--武器id
	local nWeaponId = 0

	local tEquipId = {}
	local tWeaponId = {}
	local nIndex = 0
	--装备检查
	for i = 1,#tOctPrecisionPush_Data["EquipPos"] do
		nEquipPos = tOctPrecisionPush_Data["EquipPos"][i]
		nWeaponId = Get_EquipIDByPos(nEquipPos)
		
		local nItemTypeId = Get_ItemType(nWeaponId)
		-- User_TalkChannel2005("nEquipPos=="..nEquipPos.."nWeaponId=="..nWeaponId.."nItemTypeId=="..nItemTypeId)	
		if nWeaponId ~= 0 then
			nIndex = nIndex + 1
			tEquipId[nIndex] = nItemTypeId
			tWeaponId[nIndex] = nWeaponId
			
		end 
	end
	if nIndex == 0 then 
		return false,tEquipId,tWeaponId
	else
		return true,tEquipId,tWeaponId
	end 
	
end


---------------------------------物品部分---------------------------------------------

-- 3326362,'赠点包中包',9,9847
tItemFace[3326362] = 2524
tItem[3326362] = tItem[3326362] or {}
tItem[3326362]["Function"] = function(nItemId,sItemName)
	OctPrecisionPush_OpenCps(nItemId)
end

-- 3326357,'5级赠点周卡包',9,9
-- 3326358,'4级赠点周卡包',9,9
-- 3326359,'3级赠点周卡包',9,9
-- 3326360,'2级赠点周卡包',9,9
-- 3326361,'1级赠点周卡包',9,9
tItemFace[3326357] = 1419
tItem[3326357] = tItem[3326357] or {}
tItem[3326357]["Function"] = function(nItemId,sItemName)
	OctPrecisionPush_OpenLevCps(nItemId)
end
tItemFace[3326358] = 1039
tItemFace[3326359] = 2409
tItemFace[3326360] = 851
tItemFace[3326361] = 1023
tItem[3326358] = tItem[3326357] or {}
tItem[3326359] = tItem[3326357] or {}
tItem[3326360] = tItem[3326357] or {}
tItem[3326361] = tItem[3326357] or {}

-- 3326363,'大固化石必买包',9,
-- 3326364,'马匹必买包',9,9847
-- 3326365,'极品玄晶必买包',9,
-- 3326366,'优质真武宝石必买包
-- 3326367,'1亿捐献值礼包',9,9
-- 3326368,'10亿捐献值礼包',9,
-- 3326369,'修行值必买包',9,98
-- 3326370,'天机果必买包',9,98

tItem[3326363] = tItem[3326363] or {}
tItem[3326363]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then 
		return
	end 
	
	RewardTemplate_UseItemAndMsg(tOctPrecisionPush_Award[nItemId])
end
tItem[3326364] = tItem[3326363] or {}
tItem[3326365] = tItem[3326363] or {}
tItem[3326366] = tItem[3326363] or {}
tItem[3326367] = tItem[3326363] or {}
tItem[3326368] = tItem[3326363] or {}
tItem[3326369] = tItem[3326363] or {}
tItem[3326370] = tItem[3326363] or {}


-- 3326371,'普通龙恨宝石（赠）*200礼包
-- 3326433,'普通龙恨宝石（赠）*20礼包'
tItem[3326371] = tItem[3326363] or {}
tItem[3326433] = tItem[3326363] or {}


-- 3326371,'至尊加持令牌',9,98
-- tItemFace[3326371] = 2523
-- tItem[3326371] = tItem[3326371] or {}
-- tItem[3326371]["Function"] = function(nItemId,sItemName)
	-- OctPrecisionPush_UseToken(nItemId)
-- end

