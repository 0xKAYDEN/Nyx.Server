------------------------------------------------------------------------------------
--Name：           191105[简体征服][活动脚本]小极品回收玩法-1、小极品回收分解
--Creator:      杨艳
--Created:     2019/11/11
------------------------------------------------------------------------------------


--命名前缀
--GiddyRrecycle_


--logid： 

--npc
-- 25590,'神匠钧天'

--物品
-- 3326935,'凤瞳石',8
-- 3326936,'五色土',8
-- 3326937,'七色土',8
-- 3326938,'红莲宝钻'




-------------------------------------------数据部分-----------------------------------------
local tGiddyRrecycle_Data = {}

	--上限银两 1600w*40
	tGiddyRrecycle_Data["LimitMoney"] = 640000000
	tGiddyRrecycle_Data["Space"] = 3
	
	--回收循环表 0-4  9-12
	tGiddyRrecycle_Data["RecycleFor"] = {}
	tGiddyRrecycle_Data["RecycleFor"][4] = {0,4}
	tGiddyRrecycle_Data["RecycleFor"][9] = {9,12}
	
	
local tGiddyRrecycle_Award = {}
	-- ===无追加基础奖励
	-- ===索引: tGiddyRrecycle_Award["BaseAward"][0]
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 10000,195
	tGiddyRrecycle_Award["BaseAward"] = {}
	tGiddyRrecycle_Award["BaseAward"][0] = {}
	tGiddyRrecycle_Award["BaseAward"][0]["LogId"] = 12001737
	tGiddyRrecycle_Award["BaseAward"][0]["LogStep"] = "2[1]"
	tGiddyRrecycle_Award["BaseAward"][0]["EmoneyLog"] = "10000	195	0	0	1	"
	tGiddyRrecycle_Award["BaseAward"][0]["RewardExpTime"] = {}
	tGiddyRrecycle_Award["BaseAward"][0]["RewardExpTime"]["Value"] = 5 -- 分钟经验, 【需求】5分钟经验
	tGiddyRrecycle_Award["BaseAward"][0]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tGiddyRrecycle_Award["BaseAward"][0]["RewardExpTime"]["FullValue"] = 3 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tGiddyRrecycle_Award["BaseAward"][0]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001737,2[1],6,3"
	tGiddyRrecycle_Award["BaseAward"][0]["RewardEffect"] = {}
	tGiddyRrecycle_Award["BaseAward"][0]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGiddyRrecycle_Award["BaseAward"][0]["RewardEffect"]["Effect"] = "angelwing"


	tGiddyRrecycle_Award["BaseAward"][1] = {}
	-- ===基础奖励追加+1
	-- ===索引: tGiddyRrecycle_Award["BaseAward"][1]
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 10000,194
	tGiddyRrecycle_Award["BaseAward"][1]["LogId"] = 12001737
	tGiddyRrecycle_Award["BaseAward"][1]["LogStep"] = "2[1]"
	tGiddyRrecycle_Award["BaseAward"][1]["EmoneyLog"] = "10000	194	0	0	1	"
	tGiddyRrecycle_Award["BaseAward"][1]["RewardExpTime"] = {}
	tGiddyRrecycle_Award["BaseAward"][1]["RewardExpTime"]["Value"] = 10 -- 分钟经验, 【需求】10分钟经验
	tGiddyRrecycle_Award["BaseAward"][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tGiddyRrecycle_Award["BaseAward"][1]["RewardExpTime"]["FullValue"] = 5 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tGiddyRrecycle_Award["BaseAward"][1]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001737,2[1],6,5"
	tGiddyRrecycle_Award["BaseAward"][1]["RewardEffect"] = {}
	tGiddyRrecycle_Award["BaseAward"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGiddyRrecycle_Award["BaseAward"][1]["RewardEffect"]["Effect"] = "angelwing"


	tGiddyRrecycle_Award["BaseAward"][2] = {}
	-- ===基础奖励追加+2
	-- ===索引: tGiddyRrecycle_Award["BaseAward"][2]
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 10000,194
	tGiddyRrecycle_Award["BaseAward"][2]["LogId"] = 12001737
	tGiddyRrecycle_Award["BaseAward"][2]["LogStep"] = "2[1]"
	tGiddyRrecycle_Award["BaseAward"][2]["EmoneyLog"] = "10000	194	0	0	1	"
	tGiddyRrecycle_Award["BaseAward"][2]["RewardExpTime"] = {}
	tGiddyRrecycle_Award["BaseAward"][2]["RewardExpTime"]["Value"] = 20 -- 分钟经验, 【需求】20分钟经验
	tGiddyRrecycle_Award["BaseAward"][2]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tGiddyRrecycle_Award["BaseAward"][2]["RewardExpTime"]["FullValue"] = 10 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tGiddyRrecycle_Award["BaseAward"][2]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001737,2[1],6,10"
	tGiddyRrecycle_Award["BaseAward"][2]["RewardEffect"] = {}
	tGiddyRrecycle_Award["BaseAward"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGiddyRrecycle_Award["BaseAward"][2]["RewardEffect"]["Effect"] = "angelwing"


	tGiddyRrecycle_Award["BaseAward"][3] = {}
	-- ===基础奖励追加+3
	-- ===索引: tGiddyRrecycle_Award["BaseAward"][3]
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 10000,194
	tGiddyRrecycle_Award["BaseAward"][3]["LogId"] = 12001737
	tGiddyRrecycle_Award["BaseAward"][3]["LogStep"] = "2[1]"
	tGiddyRrecycle_Award["BaseAward"][3]["EmoneyLog"] = "10000	194	0	0	1	"
	tGiddyRrecycle_Award["BaseAward"][3]["RewardExpTime"] = {}
	tGiddyRrecycle_Award["BaseAward"][3]["RewardExpTime"]["Value"] = 30 -- 分钟经验, 【需求】30分钟经验
	tGiddyRrecycle_Award["BaseAward"][3]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tGiddyRrecycle_Award["BaseAward"][3]["RewardExpTime"]["FullValue"] = 15 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tGiddyRrecycle_Award["BaseAward"][3]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001737,2[1],6,15"
	tGiddyRrecycle_Award["BaseAward"][3]["RewardItem"] = {}
	tGiddyRrecycle_Award["BaseAward"][3]["RewardItem"][1] = {}
	tGiddyRrecycle_Award["BaseAward"][3]["RewardItem"][1]["Id"] = 3326936 -- 五色土[3326936][属性:8][叠加:10000][金币:0], 【表格】小极品追加素材*1
	tGiddyRrecycle_Award["BaseAward"][3]["RewardItem"][1]["Attr"] = "0 1" -- 五色土*1
	tGiddyRrecycle_Award["BaseAward"][3]["RewardEffect"] = {}
	tGiddyRrecycle_Award["BaseAward"][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGiddyRrecycle_Award["BaseAward"][3]["RewardEffect"]["Effect"] = "angelwing"


	tGiddyRrecycle_Award["BaseAward"][4] = {}
	-- ===基础奖励追加+4
	-- ===索引: tGiddyRrecycle_Award["BaseAward"][4]
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 10000,194
	tGiddyRrecycle_Award["BaseAward"][4]["LogId"] = 12001737
	tGiddyRrecycle_Award["BaseAward"][4]["LogStep"] = "2[1]"
	tGiddyRrecycle_Award["BaseAward"][4]["EmoneyLog"] = "10000	194	0	0	1	"
	tGiddyRrecycle_Award["BaseAward"][4]["RewardExpTime"] = {}
	tGiddyRrecycle_Award["BaseAward"][4]["RewardExpTime"]["Value"] = 50 -- 分钟经验, 【需求】50分钟经验
	tGiddyRrecycle_Award["BaseAward"][4]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tGiddyRrecycle_Award["BaseAward"][4]["RewardExpTime"]["FullValue"] = 25 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tGiddyRrecycle_Award["BaseAward"][4]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001737,2[1],6,25"
	tGiddyRrecycle_Award["BaseAward"][4]["RewardItem"] = {}
	tGiddyRrecycle_Award["BaseAward"][4]["RewardItem"][1] = {}
	tGiddyRrecycle_Award["BaseAward"][4]["RewardItem"][1]["Id"] = 3326936 -- 五色土[3326936][属性:8][叠加:10000][金币:0], 【表格】小极品追加素材*3
	tGiddyRrecycle_Award["BaseAward"][4]["RewardItem"][1]["Attr"] = "0 3" -- 五色土*3
	tGiddyRrecycle_Award["BaseAward"][4]["RewardEffect"] = {}
	tGiddyRrecycle_Award["BaseAward"][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGiddyRrecycle_Award["BaseAward"][4]["RewardEffect"]["Effect"] = "angelwing"

	tGiddyRrecycle_Award["BaseAward"][5] = {}
	-- ===基础奖励追加+5
	-- ===索引: tGiddyRrecycle_Award["BaseAward"][5]
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 10000,194
	tGiddyRrecycle_Award["BaseAward"][5]["LogId"] = 12001737
	tGiddyRrecycle_Award["BaseAward"][5]["LogStep"] = "2[1]"
	tGiddyRrecycle_Award["BaseAward"][5]["EmoneyLog"] = "10000	194	0	0	1	"
	tGiddyRrecycle_Award["BaseAward"][5]["RewardExpTime"] = {}
	tGiddyRrecycle_Award["BaseAward"][5]["RewardExpTime"]["Value"] = 80 -- 分钟经验, 【需求】80分钟经验
	tGiddyRrecycle_Award["BaseAward"][5]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tGiddyRrecycle_Award["BaseAward"][5]["RewardExpTime"]["FullValue"] = 40 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tGiddyRrecycle_Award["BaseAward"][5]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001737,2[1],6,40"

	tGiddyRrecycle_Award["BaseAward"][5]["RewardItem"] = {}
	tGiddyRrecycle_Award["BaseAward"][5]["RewardItem"][1] = {}
	tGiddyRrecycle_Award["BaseAward"][5]["RewardItem"][1]["Id"] = 3326936 -- 五色土[3326936][属性:8][叠加:10000][金币:0], 【表格】小极品追加素材*10
	tGiddyRrecycle_Award["BaseAward"][5]["RewardItem"][1]["Attr"] = "0 10" -- 五色土*10
	tGiddyRrecycle_Award["BaseAward"][5]["RewardEffect"] = {}
	tGiddyRrecycle_Award["BaseAward"][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGiddyRrecycle_Award["BaseAward"][5]["RewardEffect"]["Effect"] = "angelwing"


	tGiddyRrecycle_Award["BaseAward"][6] = {}
	-- ===基础奖励追加+6
	-- ===索引: tGiddyRrecycle_Award["BaseAward"][6]
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 10000,194
	tGiddyRrecycle_Award["BaseAward"][6]["LogId"] = 12001737
	tGiddyRrecycle_Award["BaseAward"][6]["LogStep"] = "2[1]"
	tGiddyRrecycle_Award["BaseAward"][6]["EmoneyLog"] = "10000	194	0	0	1	"
	tGiddyRrecycle_Award["BaseAward"][6]["RewardExpTime"] = {}
	tGiddyRrecycle_Award["BaseAward"][6]["RewardExpTime"]["Value"] = 120 -- 分钟经验, 【需求】120分钟经验
	tGiddyRrecycle_Award["BaseAward"][6]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tGiddyRrecycle_Award["BaseAward"][6]["RewardExpTime"]["FullValue"] = 60 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tGiddyRrecycle_Award["BaseAward"][6]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001737,2[1],6,60"
	tGiddyRrecycle_Award["BaseAward"][6]["RewardItem"] = {}
	tGiddyRrecycle_Award["BaseAward"][6]["RewardItem"][1] = {}
	tGiddyRrecycle_Award["BaseAward"][6]["RewardItem"][1]["Id"] = 3326937 -- 七色土[3326937][属性:8][叠加:10000][金币:0], 【表格】高级小极品追加素材*1
	tGiddyRrecycle_Award["BaseAward"][6]["RewardItem"][1]["Attr"] = "0 1" -- 七色土*1
	tGiddyRrecycle_Award["BaseAward"][6]["RewardEffect"] = {}
	tGiddyRrecycle_Award["BaseAward"][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGiddyRrecycle_Award["BaseAward"][6]["RewardEffect"]["Effect"] = "angelwing"


	tGiddyRrecycle_Award["BaseAward"][7] = {}
	-- ===基础奖励追加+7
	-- ===索引: tGiddyRrecycle_Award["BaseAward"][7]
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 10000,194
	tGiddyRrecycle_Award["BaseAward"][7]["LogId"] = 12001737
	tGiddyRrecycle_Award["BaseAward"][7]["LogStep"] = "2[1]"
	tGiddyRrecycle_Award["BaseAward"][7]["EmoneyLog"] = "10000	194	0	0	1	"
	tGiddyRrecycle_Award["BaseAward"][7]["RewardExpTime"] = {}
	tGiddyRrecycle_Award["BaseAward"][7]["RewardExpTime"]["Value"] = 200 -- 分钟经验, 【需求】200分钟经验
	tGiddyRrecycle_Award["BaseAward"][7]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tGiddyRrecycle_Award["BaseAward"][7]["RewardExpTime"]["FullValue"] = 100 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tGiddyRrecycle_Award["BaseAward"][7]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001737,2[1],6,100"
	tGiddyRrecycle_Award["BaseAward"][7]["RewardItem"] = {}
	tGiddyRrecycle_Award["BaseAward"][7]["RewardItem"][1] = {}
	tGiddyRrecycle_Award["BaseAward"][7]["RewardItem"][1]["Id"] = 3326937 -- 七色土[3326937][属性:8][叠加:10000][金币:0], 【表格】高级小极品追加素材*3
	tGiddyRrecycle_Award["BaseAward"][7]["RewardItem"][1]["Attr"] = "0 3" -- 七色土*3
	tGiddyRrecycle_Award["BaseAward"][7]["RewardEffect"] = {}
	tGiddyRrecycle_Award["BaseAward"][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGiddyRrecycle_Award["BaseAward"][7]["RewardEffect"]["Effect"] = "angelwing"


	tGiddyRrecycle_Award["BaseAward"][8] = {}
	-- ===基础奖励追加+8
	-- ===索引: tGiddyRrecycle_Award["BaseAward"][8]
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 10000,194
	tGiddyRrecycle_Award["BaseAward"][8]["LogId"] = 12001737
	tGiddyRrecycle_Award["BaseAward"][8]["LogStep"] = "2[1]"
	tGiddyRrecycle_Award["BaseAward"][8]["EmoneyLog"] = "10000	194	0	0	1	"
	tGiddyRrecycle_Award["BaseAward"][8]["RewardExpTime"] = {}
	tGiddyRrecycle_Award["BaseAward"][8]["RewardExpTime"]["Value"] = 300 -- 分钟经验, 【需求】300分钟经验
	tGiddyRrecycle_Award["BaseAward"][8]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tGiddyRrecycle_Award["BaseAward"][8]["RewardExpTime"]["FullValue"] = 150 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tGiddyRrecycle_Award["BaseAward"][8]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001737,2[1],6,150"
	tGiddyRrecycle_Award["BaseAward"][8]["RewardItem"] = {}
	tGiddyRrecycle_Award["BaseAward"][8]["RewardItem"][1] = {}
	tGiddyRrecycle_Award["BaseAward"][8]["RewardItem"][1]["Id"] = 3326937 -- 七色土[3326937][属性:8][叠加:10000][金币:0], 【表格】高级小极品追加素材*10
	tGiddyRrecycle_Award["BaseAward"][8]["RewardItem"][1]["Attr"] = "0 10" -- 七色土*10
	tGiddyRrecycle_Award["BaseAward"][8]["RewardEffect"] = {}
	tGiddyRrecycle_Award["BaseAward"][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGiddyRrecycle_Award["BaseAward"][8]["RewardEffect"]["Effect"] = "angelwing"


	tGiddyRrecycle_Award["BaseAward"][9] = {}
	-- ===基础奖励追加+9
	-- ===索引: tGiddyRrecycle_Award["BaseAward"][9]
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 10000,194
	tGiddyRrecycle_Award["BaseAward"][9]["LogId"] = 12001737
	tGiddyRrecycle_Award["BaseAward"][9]["LogStep"] = "2[1]"
	tGiddyRrecycle_Award["BaseAward"][9]["EmoneyLog"] = "10000	194	0	0	1	"
	tGiddyRrecycle_Award["BaseAward"][9]["RewardExpTime"] = {}
	tGiddyRrecycle_Award["BaseAward"][9]["RewardExpTime"]["Value"] = 500 -- 分钟经验, 【需求】500分钟经验
	tGiddyRrecycle_Award["BaseAward"][9]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tGiddyRrecycle_Award["BaseAward"][9]["RewardExpTime"]["FullValue"] = 250 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tGiddyRrecycle_Award["BaseAward"][9]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001737,2[1],6,250"
	tGiddyRrecycle_Award["BaseAward"][9]["RewardItem"] = {}
	tGiddyRrecycle_Award["BaseAward"][9]["RewardItem"][1] = {}
	tGiddyRrecycle_Award["BaseAward"][9]["RewardItem"][1]["Id"] = 3326937 -- 七色土[3326937][属性:8][叠加:10000][金币:0], 【表格】高级小极品追加素材*50
	tGiddyRrecycle_Award["BaseAward"][9]["RewardItem"][1]["Attr"] = "0 50" -- 七色土*50（[错误]物品数量超10个）
	tGiddyRrecycle_Award["BaseAward"][9]["RewardEffect"] = {}
	tGiddyRrecycle_Award["BaseAward"][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGiddyRrecycle_Award["BaseAward"][9]["RewardEffect"]["Effect"] = "angelwing"


	tGiddyRrecycle_Award["BaseAward"][10] = {}
	-- ===基础奖励追加+10
	-- ===索引: tGiddyRrecycle_Award["BaseAward"][10]
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 10000,194
	tGiddyRrecycle_Award["BaseAward"][10]["LogId"] = 12001737
	tGiddyRrecycle_Award["BaseAward"][10]["LogStep"] = "2[1]"
	tGiddyRrecycle_Award["BaseAward"][10]["EmoneyLog"] = "10000	194	0	0	1	"
	tGiddyRrecycle_Award["BaseAward"][10]["RewardExpTime"] = {}
	tGiddyRrecycle_Award["BaseAward"][10]["RewardExpTime"]["Value"] = 550 -- 分钟经验, 【需求】550分钟经验
	tGiddyRrecycle_Award["BaseAward"][10]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tGiddyRrecycle_Award["BaseAward"][10]["RewardExpTime"]["FullValue"] = 275 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tGiddyRrecycle_Award["BaseAward"][10]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001737,2[1],6,275"
	tGiddyRrecycle_Award["BaseAward"][10]["RewardItem"] = {}
	tGiddyRrecycle_Award["BaseAward"][10]["RewardItem"][1] = {}
	tGiddyRrecycle_Award["BaseAward"][10]["RewardItem"][1]["Id"] = 3326937 -- 七色土[3326937][属性:8][叠加:10000][金币:0], 【表格】高级小极品追加素材*55
	tGiddyRrecycle_Award["BaseAward"][10]["RewardItem"][1]["Attr"] = "0 55" -- 七色土*55（[错误]物品数量超10个）
	tGiddyRrecycle_Award["BaseAward"][10]["RewardEffect"] = {}
	tGiddyRrecycle_Award["BaseAward"][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGiddyRrecycle_Award["BaseAward"][10]["RewardEffect"]["Effect"] = "angelwing"


	tGiddyRrecycle_Award["BaseAward"][11] = {}
	-- ===基础奖励追加+11
	-- ===索引: tGiddyRrecycle_Award["BaseAward"][11]
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 10000,194
	tGiddyRrecycle_Award["BaseAward"][11]["LogId"] = 12001737
	tGiddyRrecycle_Award["BaseAward"][11]["LogStep"] = "2[1]"
	tGiddyRrecycle_Award["BaseAward"][11]["EmoneyLog"] = "10000	194	0	0	1	"
	tGiddyRrecycle_Award["BaseAward"][11]["RewardExpTime"] = {}
	tGiddyRrecycle_Award["BaseAward"][11]["RewardExpTime"]["Value"] = 600 -- 分钟经验, 【需求】600分钟经验
	tGiddyRrecycle_Award["BaseAward"][11]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tGiddyRrecycle_Award["BaseAward"][11]["RewardExpTime"]["FullValue"] = 300 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tGiddyRrecycle_Award["BaseAward"][11]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001737,2[1],6,300"
	tGiddyRrecycle_Award["BaseAward"][11]["RewardItem"] = {}
	tGiddyRrecycle_Award["BaseAward"][11]["RewardItem"][1] = {}
	tGiddyRrecycle_Award["BaseAward"][11]["RewardItem"][1]["Id"] = 3326937 -- 七色土[3326937][属性:8][叠加:10000][金币:0], 【表格】高级小极品追加素材*65
	tGiddyRrecycle_Award["BaseAward"][11]["RewardItem"][1]["Attr"] = "0 65" -- 七色土*65（[错误]物品数量超10个）
	tGiddyRrecycle_Award["BaseAward"][11]["RewardEffect"] = {}
	tGiddyRrecycle_Award["BaseAward"][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGiddyRrecycle_Award["BaseAward"][11]["RewardEffect"]["Effect"] = "angelwing"


	tGiddyRrecycle_Award["BaseAward"][12] = {}
	-- ===基础奖励追加+12
	-- ===索引: tGiddyRrecycle_Award["BaseAward"][12]
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 10000,194
	tGiddyRrecycle_Award["BaseAward"][12]["LogId"] = 12001737
	tGiddyRrecycle_Award["BaseAward"][12]["LogStep"] = "2[1]"
	tGiddyRrecycle_Award["BaseAward"][12]["EmoneyLog"] = "10000	194	0	0	1	"
	tGiddyRrecycle_Award["BaseAward"][12]["RewardExpTime"] = {}
	tGiddyRrecycle_Award["BaseAward"][12]["RewardExpTime"]["Value"] = 800 -- 分钟经验, 【需求】800分钟经验
	tGiddyRrecycle_Award["BaseAward"][12]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tGiddyRrecycle_Award["BaseAward"][12]["RewardExpTime"]["FullValue"] = 400 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tGiddyRrecycle_Award["BaseAward"][12]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001737,2[1],6,400"
	tGiddyRrecycle_Award["BaseAward"][12]["RewardItem"] = {}
	tGiddyRrecycle_Award["BaseAward"][12]["RewardItem"][1] = {}
	tGiddyRrecycle_Award["BaseAward"][12]["RewardItem"][1]["Id"] = 3326937 -- 七色土[3326937][属性:8][叠加:10000][金币:0], 【表格】高级小极品追加素材*80
	tGiddyRrecycle_Award["BaseAward"][12]["RewardItem"][1]["Attr"] = "0 80" -- 七色土*80（[错误]物品数量超10个）
	tGiddyRrecycle_Award["BaseAward"][12]["RewardEffect"] = {}
	tGiddyRrecycle_Award["BaseAward"][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGiddyRrecycle_Award["BaseAward"][12]["RewardEffect"]["Effect"] = "angelwing"


	tGiddyRrecycle_Award["ShenAwad"] = {}
	-- ===回收神佑额外奖励+1
	-- ===索引: tGiddyRrecycle_Award["ShenAwad"][1]
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 10000,194
	tGiddyRrecycle_Award["ShenAwad"][1] = {}
	tGiddyRrecycle_Award["ShenAwad"][1]["LogId"] = 12001737
	tGiddyRrecycle_Award["ShenAwad"][1]["LogStep"] = "2[1]"
	tGiddyRrecycle_Award["ShenAwad"][1]["EmoneyLog"] = "10000	194	0	0	1	"
	tGiddyRrecycle_Award["ShenAwad"][1]["RewardItem"] = {}
	tGiddyRrecycle_Award["ShenAwad"][1]["RewardItem"][1] = {}
	tGiddyRrecycle_Award["ShenAwad"][1]["RewardItem"][1]["Id"] = 3326935 -- 凤瞳石[3326935][属性:8][叠加:10000][金币:0], 【表格】小极品突破素材*1
	tGiddyRrecycle_Award["ShenAwad"][1]["RewardItem"][1]["Attr"] = "0 1" -- 凤瞳石*1
	tGiddyRrecycle_Award["ShenAwad"][1]["RewardEffect"] = {}
	tGiddyRrecycle_Award["ShenAwad"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGiddyRrecycle_Award["ShenAwad"][1]["RewardEffect"]["Effect"] = "angelwing"


	tGiddyRrecycle_Award["ShenAwad"][3] = {}
	-- ===回收神佑额外奖励+3
	-- ===索引: tGiddyRrecycle_Award["ShenAwad"][3]
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 10000,194
	tGiddyRrecycle_Award["ShenAwad"][3]["LogId"] = 12001737
	tGiddyRrecycle_Award["ShenAwad"][3]["LogStep"] = "2[1]"
	tGiddyRrecycle_Award["ShenAwad"][3]["EmoneyLog"] = "10000	194	0	0	1	"
	tGiddyRrecycle_Award["ShenAwad"][3]["RewardItem"] = {}
	tGiddyRrecycle_Award["ShenAwad"][3]["RewardItem"][1] = {}
	tGiddyRrecycle_Award["ShenAwad"][3]["RewardItem"][1]["Id"] = 3326935 -- 凤瞳石[3326935][属性:8][叠加:10000][金币:0], 【表格】小极品突破素材*2
	tGiddyRrecycle_Award["ShenAwad"][3]["RewardItem"][1]["Attr"] = "0 2" -- 凤瞳石*2
	tGiddyRrecycle_Award["ShenAwad"][3]["RewardEffect"] = {}
	tGiddyRrecycle_Award["ShenAwad"][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGiddyRrecycle_Award["ShenAwad"][3]["RewardEffect"]["Effect"] = "angelwing"


	tGiddyRrecycle_Award["ShenAwad"][5] = {}
	-- ===回收神佑额外奖励+5
	-- ===索引: tGiddyRrecycle_Award["ShenAwad"][5]
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 10000,194
	tGiddyRrecycle_Award["ShenAwad"][5]["LogId"] = 12001737
	tGiddyRrecycle_Award["ShenAwad"][5]["LogStep"] = "2[1]"
	tGiddyRrecycle_Award["ShenAwad"][5]["EmoneyLog"] = "10000	194	0	0	1	"
	tGiddyRrecycle_Award["ShenAwad"][5]["RewardItem"] = {}
	tGiddyRrecycle_Award["ShenAwad"][5]["RewardItem"][1] = {}
	tGiddyRrecycle_Award["ShenAwad"][5]["RewardItem"][1]["Id"] = 3326935 -- 凤瞳石[3326935][属性:8][叠加:10000][金币:0], 【表格】小极品突破素材*5
	tGiddyRrecycle_Award["ShenAwad"][5]["RewardItem"][1]["Attr"] = "0 5" -- 凤瞳石*5
	tGiddyRrecycle_Award["ShenAwad"][5]["RewardEffect"] = {}
	tGiddyRrecycle_Award["ShenAwad"][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGiddyRrecycle_Award["ShenAwad"][5]["RewardEffect"]["Effect"] = "angelwing"


	tGiddyRrecycle_Award["ShenAwad"][7] = {}
	-- ===回收神佑额外奖励+7
	-- ===索引: tGiddyRrecycle_Award["ShenAwad"][7]
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 10000,194
	tGiddyRrecycle_Award["ShenAwad"][7]["LogId"] = 12001737
	tGiddyRrecycle_Award["ShenAwad"][7]["LogStep"] = "2[1]"
	tGiddyRrecycle_Award["ShenAwad"][7]["EmoneyLog"] = "10000	194	0	0	1	"
	tGiddyRrecycle_Award["ShenAwad"][7]["RewardItem"] = {}
	tGiddyRrecycle_Award["ShenAwad"][7]["RewardItem"][1] = {}
	tGiddyRrecycle_Award["ShenAwad"][7]["RewardItem"][1]["Id"] = 3326935 -- 凤瞳石[3326935][属性:8][叠加:10000][金币:0], 【表格】小极品突破素材*10
	tGiddyRrecycle_Award["ShenAwad"][7]["RewardItem"][1]["Attr"] = "0 10" -- 凤瞳石*10
	tGiddyRrecycle_Award["ShenAwad"][7]["RewardEffect"] = {}
	tGiddyRrecycle_Award["ShenAwad"][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGiddyRrecycle_Award["ShenAwad"][7]["RewardEffect"]["Effect"] = "angelwing"


	tGiddyRrecycle_Award["DongAward"] = {}
	-- ===回收1洞额外奖励
	-- ===索引: tGiddyRrecycle_Award["DongAward"][1]
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 10000,194
	tGiddyRrecycle_Award["DongAward"][1] = {}
	tGiddyRrecycle_Award["DongAward"][1]["LogId"] = 12001737
	tGiddyRrecycle_Award["DongAward"][1]["LogStep"] = "2[1]"
	tGiddyRrecycle_Award["DongAward"][1]["EmoneyLog"] = "10000	194	0	0	1	"
	tGiddyRrecycle_Award["DongAward"][1]["RewardItem"] = {}
	tGiddyRrecycle_Award["DongAward"][1]["RewardItem"][1] = {}
	tGiddyRrecycle_Award["DongAward"][1]["RewardItem"][1]["Id"] = 3326938 -- 红莲宝钻[3326938][属性:8][叠加:10000][金币:0], 【表格】小极品开洞素材*1
	tGiddyRrecycle_Award["DongAward"][1]["RewardItem"][1]["Attr"] = "0 1" -- 红莲宝钻*1
	tGiddyRrecycle_Award["DongAward"][1]["RewardEffect"] = {}
	tGiddyRrecycle_Award["DongAward"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGiddyRrecycle_Award["DongAward"][1]["RewardEffect"]["Effect"] = "angelwing"


	tGiddyRrecycle_Award["DongAward"][2] = {}
	-- ===回收2洞额外奖励
	-- ===索引: tGiddyRrecycle_Award["DongAward"][2]
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 10000,194
	tGiddyRrecycle_Award["DongAward"][2]["LogId"] = 12001737
	tGiddyRrecycle_Award["DongAward"][2]["LogStep"] = "2[1]"
	tGiddyRrecycle_Award["DongAward"][2]["EmoneyLog"] = "10000	194	0	0	1	"
	tGiddyRrecycle_Award["DongAward"][2]["RewardItem"] = {}
	tGiddyRrecycle_Award["DongAward"][2]["RewardItem"][1] = {}
	tGiddyRrecycle_Award["DongAward"][2]["RewardItem"][1]["Id"] = 3326938 -- 红莲宝钻[3326938][属性:8][叠加:10000][金币:0], 【表格】小极品开洞素材*10
	tGiddyRrecycle_Award["DongAward"][2]["RewardItem"][1]["Attr"] = "0 10" -- 红莲宝钻*10
	tGiddyRrecycle_Award["DongAward"][2]["RewardEffect"] = {}
	tGiddyRrecycle_Award["DongAward"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGiddyRrecycle_Award["DongAward"][2]["RewardEffect"]["Effect"] = "angelwing"




---------------------------------逻辑部分---------------------------------------------
--+5-+8
function GiddyRrecycl_RecycleSure(nLev)
	local nUserId = Get_UserId()
	
	--判断背包空间 
	if not User_CheckLeftSpace(tGiddyRrecycle_Data["Space"]) then
		User_TalkChannel2005(tGiddyRrecycle_Text["Sys"]["NoSpace"])			
		return
	end

	-- 判断银两上限
	if not User_CanPutMoney2Bag(tGiddyRrecycle_Data["LimitMoney"]) then
		User_TalkChannel2005(tGiddyRrecycle_Text["Sys"]["MoneyLimt"])		
		return 
	end
	
	local tSmallEpicEquipTable = DelSmallEpicEquip(nUserId,nLev)
	if tSmallEpicEquipTable == nil or tSmallEpicEquipTable == "" or tSmallEpicEquipTable[0] == nil then 
		
		User_TalkChannel2005(string.format(tGiddyRrecycle_Text["Sys"]["NoItem"],nLev))
	else
		local nNum = tSmallEpicEquipTable[0]
		local nAllDong_1 = tSmallEpicEquipTable[1]
		local nAllDong_2 = tSmallEpicEquipTable[2]
		   
		local nAllShen_1 = tSmallEpicEquipTable[3]
		local nAllShen_3 = tSmallEpicEquipTable[4]
		local nAllShen_5 = tSmallEpicEquipTable[5]
		local nAllShen_7 = tSmallEpicEquipTable[6]
		local tCopyBaseTable = {}
		if nNum ~= nil then 
			tCopyBaseTable = CommonFunc_Copy(tGiddyRrecycle_Award["BaseAward"])
			local nBaseTime= tGiddyRrecycle_Award["BaseAward"][nLev]["RewardExpTime"]["Value"]
			local nFullTime = tGiddyRrecycle_Award["BaseAward"][nLev]["RewardExpTime"]["FullValue"]
				
			tCopyBaseTable[nLev]["RewardExpTime"]["Value"] = nNum*nBaseTime
			tCopyBaseTable[nLev]["RewardExpTime"]["FullLog"] = string.format("0,0,0,0,12001737,2[1],6,%d",nNum*nFullTime)
								
			--+3以上有物品
			if tGiddyRrecycle_Award["BaseAward"][nLev]["RewardItem"] ~= nil then 
				local tItemBaseAttr = Sys_Split(tGiddyRrecycle_Award["BaseAward"][nLev]["RewardItem"][1]["Attr"]," ")
				local nBaseaddamount = tonumber(tItemBaseAttr[2])
				
				tCopyBaseTable[nLev]["RewardItem"][1]["Attr"] = string.format("0 %d",nBaseaddamount*nNum)	
			end 

		end 
		
		--复制神佑表
		local tCopyShenTable = CommonFunc_Copy(tGiddyRrecycle_Award["ShenAwad"])

		if nAllShen_1 ~= nil then 
			local tItemShenAttr_1 = Sys_Split(tGiddyRrecycle_Award["ShenAwad"][1]["RewardItem"][1]["Attr"]," ")
			local nShenaddamount_1 = tonumber(tItemShenAttr_1[2])
			tCopyShenTable[1]["RewardItem"][1]["Attr"] = string.format("0 %d",nShenaddamount_1*nAllShen_1)
		end 
		
		if nAllShen_3 ~= nil then 
			local tItemShenAttr_3 = Sys_Split(tGiddyRrecycle_Award["ShenAwad"][3]["RewardItem"][1]["Attr"]," ")
			local nShenaddamount_3 = tonumber(tItemShenAttr_3[2])
			tCopyShenTable[3]["RewardItem"][1]["Attr"] = string.format("0 %d",nShenaddamount_3*nAllShen_3)
		end 
		
		if nAllShen_5 ~= nil then 
			local tItemShenAttr_5 = Sys_Split(tGiddyRrecycle_Award["ShenAwad"][5]["RewardItem"][1]["Attr"]," ")
			local nShenaddamount_5 = tonumber(tItemShenAttr_5[2])
			tCopyShenTable[5]["RewardItem"][1]["Attr"] = string.format("0 %d",nShenaddamount_5*nAllShen_5)
		end 
		
		if nAllShen_7 ~= nil then 
			local tItemShenAttr_7 = Sys_Split(tGiddyRrecycle_Award["ShenAwad"][7]["RewardItem"][1]["Attr"]," ")
			local nShenaddamount_7 = tonumber(tItemShenAttr_7[2])
			tCopyShenTable[7]["RewardItem"][1]["Attr"] = string.format("0 %d",nShenaddamount_7*nAllShen_7)
		end 
		
		--复制开洞表
		local tCopyDongTable = CommonFunc_Copy(tGiddyRrecycle_Award["DongAward"])
		
		if nAllDong_1 ~= nil then 
			local tItemDongAttr_1 = Sys_Split(tGiddyRrecycle_Award["DongAward"][1]["RewardItem"][1]["Attr"]," ")
			local nDongaddamount_1 = tonumber(tItemDongAttr_1[2])
			tCopyDongTable[1]["RewardItem"][1]["Attr"] = string.format("0 %d",nDongaddamount_1*nAllDong_1)
		end 
		
		if nAllDong_2 ~= nil  then 
			local tItemDongAttr_2 = Sys_Split(tGiddyRrecycle_Award["DongAward"][2]["RewardItem"][1]["Attr"]," ")
			local nDongaddamount_2 = tonumber(tItemDongAttr_2[2])
			tCopyDongTable[2]["RewardItem"][1]["Attr"] = string.format("0 %d",nDongaddamount_2*nAllDong_2)
		end 
		if tCopyBaseTable[nLev] ~= nil then 
			RewardTemplate_UseItemAndMsg(tCopyBaseTable[nLev],nUserId)
		end 
		if nAllShen_1 ~= nil then 
			RewardTemplate_UseItemAndMsg(tCopyShenTable[1],nUserId)
		end 
		
		if nAllShen_3 ~= nil  then 
			RewardTemplate_UseItemAndMsg(tCopyShenTable[3],nUserId)
		end
		
		if nAllShen_5 ~= nil  then 
			RewardTemplate_UseItemAndMsg(tCopyShenTable[5],nUserId)
		end
		
		if nAllShen_7 ~= nil  then 
			RewardTemplate_UseItemAndMsg(tCopyShenTable[7],nUserId)
		end
		
		
		if nAllDong_1 ~= nil then 
			RewardTemplate_UseItemAndMsg(tCopyDongTable[1],nUserId)
		end
		
		if nAllDong_2 ~= nil then 
			RewardTemplate_UseItemAndMsg(tCopyDongTable[2],nUserId)
		end
			
	end 
	
end 


--+4以下 +9以上
function GiddyRrecycl_RecycleSureFor(nLev)
	
	local nUserId = Get_UserId()
	
	--判断背包空间 
	if not User_CheckLeftSpace(tGiddyRrecycle_Data["Space"]) then
		User_TalkChannel2005(tGiddyRrecycle_Text["Sys"]["NoSpace"])			
		return
	end

	-- 判断银两上限
	if not User_CanPutMoney2Bag(tGiddyRrecycle_Data["LimitMoney"]) then
		User_TalkChannel2005(tGiddyRrecycle_Text["Sys"]["MoneyLimt"])		
		return 
	end
	
	local tTableNum = {}
	for i = tGiddyRrecycle_Data["RecycleFor"][nLev][1],tGiddyRrecycle_Data["RecycleFor"][nLev][2] do
		local tSmallEpicEquipTable = DelSmallEpicEquip(nUserId,i)
		if tSmallEpicEquipTable == nil or tSmallEpicEquipTable == "" or tSmallEpicEquipTable[0] == nil then 
			User_TalkChannel2005(string.format(tGiddyRrecycle_Text["Sys"]["NoItem"],i))
		else

			tTableNum[i] = {}
			tTableNum[i]["Num"] = tSmallEpicEquipTable[0]
			tTableNum[i]["Dong_1"] = tSmallEpicEquipTable[1]
			tTableNum[i]["Dong_2"] = tSmallEpicEquipTable[2]
			
			tTableNum[i]["Shen_1"] = tSmallEpicEquipTable[3]
			tTableNum[i]["Shen_3"] = tSmallEpicEquipTable[4]
			tTableNum[i]["Shen_5"] = tSmallEpicEquipTable[5]
			tTableNum[i]["Shen_7"] = tSmallEpicEquipTable[6]
			
		end 
		
	end 
	if tTableNum == nil  then 
		-- User_TalkChannel2005("删除失败==检测背包中是否有该装备")
		return
	else
		-- 总分钟
		-- local nAllTime = 0
		-- 总神佑1
		local nAllShen_1 = 0
		-- 总神佑3
		local nAllShen_3 = 0
		-- 总神佑5
		local nAllShen_5 = 0
		-- 总神佑7
		local nAllShen_7 = 0
		-- 总开洞1
		local nAllDong_1 = 0
		-- 总开洞2
		local nAllDong_2 = 0
		--删除小极品的总个数
		local nAllNum = 0
		local tCopyBaseTable = {}
		for i = tGiddyRrecycle_Data["RecycleFor"][nLev][1],tGiddyRrecycle_Data["RecycleFor"][nLev][2] do
			if tTableNum[i] ~= nil then 
				local nNum = tTableNum[i]["Num"] 
		
				if nNum ~= nil then 
					nAllNum = nNum + nAllNum
					tCopyBaseTable = CommonFunc_Copy(tGiddyRrecycle_Award["BaseAward"])
					local nBaseTime= tGiddyRrecycle_Award["BaseAward"][i]["RewardExpTime"]["Value"]
					local nFullTime = tGiddyRrecycle_Award["BaseAward"][i]["RewardExpTime"]["FullValue"]
					
					tCopyBaseTable[i]["RewardExpTime"]["Value"] = nNum*nBaseTime
					tCopyBaseTable[i]["RewardExpTime"]["FullValue"] = nNum*nFullTime
					tCopyBaseTable[i]["RewardExpTime"]["FullLog"] = string.format("0,0,0,0,12001737,2[1],6,%d",nNum*nFullTime)
					
					--+3以上有物品
					if tGiddyRrecycle_Award["BaseAward"][i]["RewardItem"] ~= nil then 
						local tItemBaseAttr = Sys_Split(tGiddyRrecycle_Award["BaseAward"][i]["RewardItem"][1]["Attr"]," ")
						local nBaseaddamount = tonumber(tItemBaseAttr[2])
						
						tCopyBaseTable[i]["RewardItem"][1]["Attr"] = string.format("0 %d",nBaseaddamount*nNum)	
					end 

					-- nAllTime = tCopyBaseTable[i]["RewardExpTime"]["Value"] + nAllTime
					
					local nShen_1 = tTableNum[i]["Shen_1"]
					local nShen_3 = tTableNum[i]["Shen_3"]
					local nShen_5 = tTableNum[i]["Shen_5"]
					local nShen_7 = tTableNum[i]["Shen_7"]
					local nDong_1 = tTableNum[i]["Dong_1"]
					local nDong_2 = tTableNum[i]["Dong_2"]
					
					--总的开洞和神佑数
					if nShen_1 ~= nil then 
						nAllShen_1 = nAllShen_1 + nShen_1
					end 
					if nShen_3 ~= nil then 
						nAllShen_3 = nAllShen_3 + nShen_3
					end
					
					if nShen_5 ~= nil then 
						nAllShen_5 = nAllShen_5 + nShen_5
					end
					if nShen_7 ~= nil then 
						nAllShen_7 = nAllShen_7 + nShen_7
					end
					if nDong_1 ~= nil then 
						nAllDong_1 = nAllDong_1 + nDong_1
					end
					if nDong_2 ~= nil then 
						nAllDong_2 = nAllDong_2 + nDong_2
					end
					
					
				end 
			end 
		end 
		
		--银两不是大于0说明没有删除小极品
		if  nAllNum == 0 then 
			return
		end 
		
		--复制神佑表
		local tCopyShenTable = CommonFunc_Copy(tGiddyRrecycle_Award["ShenAwad"])
		if nAllShen_1 > 0 then 
			local tItemShenAttr_1 = Sys_Split(tGiddyRrecycle_Award["ShenAwad"][1]["RewardItem"][1]["Attr"]," ")
			local nShenaddamount_1 = tonumber(tItemShenAttr_1[2])
			tCopyShenTable[1]["RewardItem"][1]["Attr"] = string.format("0 %d",nShenaddamount_1*nAllShen_1)
		end 
		
		if nAllShen_3 > 0 then 
			local tItemShenAttr_3 = Sys_Split(tGiddyRrecycle_Award["ShenAwad"][3]["RewardItem"][1]["Attr"]," ")
			local nShenaddamount_3 = tonumber(tItemShenAttr_3[2])
			tCopyShenTable[3]["RewardItem"][1]["Attr"] = string.format("0 %d",nShenaddamount_3*nAllShen_3)
		end 
		
		if nAllShen_5 > 0 then 
			local tItemShenAttr_5 = Sys_Split(tGiddyRrecycle_Award["ShenAwad"][5]["RewardItem"][1]["Attr"]," ")
			local nShenaddamount_5 = tonumber(tItemShenAttr_5[2])
			tCopyShenTable[5]["RewardItem"][1]["Attr"] = string.format("0 %d",nShenaddamount_5*nAllShen_5)
		end 
		
		if nAllShen_7 > 0 then 
			local tItemShenAttr_7 = Sys_Split(tGiddyRrecycle_Award["ShenAwad"][7]["RewardItem"][1]["Attr"]," ")
			local nShenaddamount_7 = tonumber(tItemShenAttr_7[2])
			tCopyShenTable[7]["RewardItem"][1]["Attr"] = string.format("0 %d",nShenaddamount_7*nAllShen_7)
		end 
		

		--复制开洞表
		local tCopyDongTable = CommonFunc_Copy(tGiddyRrecycle_Award["DongAward"])
		
		if nAllDong_1 > 0 then 
			local tItemDongAttr_1 = Sys_Split(tGiddyRrecycle_Award["DongAward"][1]["RewardItem"][1]["Attr"]," ")
			local nDongaddamount_1 = tonumber(tItemDongAttr_1[2])
			tCopyDongTable[1]["RewardItem"][1]["Attr"] = string.format("0 %d",nDongaddamount_1*nAllDong_1)
		end 
		
		if nAllDong_2 > 0 then 
			local tItemDongAttr_2 = Sys_Split(tGiddyRrecycle_Award["DongAward"][2]["RewardItem"][1]["Attr"]," ")
			local nDongaddamount_2 = tonumber(tItemDongAttr_2[2])
			tCopyDongTable[2]["RewardItem"][1]["Attr"] = string.format("0 %d",nDongaddamount_2*nAllDong_2)
		end 
		
		for i = tGiddyRrecycle_Data["RecycleFor"][nLev][1],tGiddyRrecycle_Data["RecycleFor"][nLev][2] do 
			if tTableNum[i] ~= nil then 
				local nNum = tTableNum[i]["Num"] 
				if nNum  > 0 then 
					if tCopyBaseTable ~= nil then 
						RewardTemplate_UseItemAndMsg(tCopyBaseTable[i],nUserId)
					end 
				end 
			end 
		end 
		
		if nAllShen_1 > 0 then 
			RewardTemplate_UseItemAndMsg(tCopyShenTable[1],nUserId)
		end 
		
		if nAllShen_3 > 0 then 
			RewardTemplate_UseItemAndMsg(tCopyShenTable[3],nUserId)
		end
		
		if nAllShen_5 > 0 then 
			RewardTemplate_UseItemAndMsg(tCopyShenTable[5],nUserId)
		end
		
		if nAllShen_7 > 0 then 
			RewardTemplate_UseItemAndMsg(tCopyShenTable[7],nUserId)
		end
		
		
		if nAllDong_1 > 0 then 
			RewardTemplate_UseItemAndMsg(tCopyDongTable[1],nUserId)
		end
		
		if nAllDong_2 > 0 then 
			RewardTemplate_UseItemAndMsg(tCopyDongTable[2],nUserId)
		end
		
	end 
		
end 


function GiddyRrecycl_Recycle(nLev,nNpcId)
	
	Sys_DialogFace(nNpcId)
	Sys_DialogText(tGiddyRrecycle_Text["Str"]["Aawrd"][nLev])
	Sys_DialogText(tGiddyRrecycle_Text["Str"]["Text112"])
	if nLev == 4 or nLev == 9 then 
		Sys_DialogOption(tGiddyRrecycle_Text["Option"]["Option111"],"</F>GiddyRrecycl_RecycleSureFor</N>"..nLev)
	else
		Sys_DialogOption(tGiddyRrecycle_Text["Option"]["Option111"],"</F>GiddyRrecycl_RecycleSure</N>"..nLev)
	end 
    Sys_DialogOption(tGiddyRrecycle_Text["Option"]["Option112"],"</F>NULL")
	Sys_DialogEnd()
	
	
end 


-------------------------- npc部分--------------------------------------------------------------------------------
-- 25590,'神匠钧天'
tNpcFace[5939] = 64

tNpcGossip[25590] = tNpcGossip[25590] or DefaultNpc:new{}
tNpcGossip[25590]["OptionHidden"] = 1
tNpcGossip[25590]["DialogueText"] = tGiddyRrecycle_Text[25590]

tNpcGossip[25590]["Text1-1"] = {111,112,113,114}
tNpcGossip[25590]["Text111"] = tGiddyRrecycle_Text[25590]["Text111"]
tNpcGossip[25590]["Text112"] = tGiddyRrecycle_Text[25590]["Text112"]
tNpcGossip[25590]["Text113"] = tGiddyRrecycle_Text[25590]["Text113"]
tNpcGossip[25590]["Text114"] = tGiddyRrecycle_Text[25590]["Text114"]

tNpcGossip[25590]["tOption1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[25590]["ChkFunc1-1"] = function()
	return true
end
tNpcGossip[25590]["Option111"] = tGiddyRrecycle_Text[25590]["Option111"]
tNpcGossip[25590]["Option112"] = tGiddyRrecycle_Text[25590]["Option112"]
tNpcGossip[25590]["Option113"] = tGiddyRrecycle_Text[25590]["Option113"]
tNpcGossip[25590]["Option114"] = tGiddyRrecycle_Text[25590]["Option114"]
tNpcGossip[25590]["Option115"] = tGiddyRrecycle_Text[25590]["Option115"]
tNpcGossip[25590]["Option116"] = tGiddyRrecycle_Text[25590]["Option116"]
tNpcGossip[25590]["Option117"] = tGiddyRrecycle_Text[25590]["Option117"]
tNpcGossip[25590]["Option118"] = tGiddyRrecycle_Text[25590]["Option118"]

tNpcGossip[25590]["OptionPoint111"] ="2-1"
tNpcGossip[25590]["OptionFunc112"] = "GiddyRrecycl_Recycle</N>4</N>25590"
tNpcGossip[25590]["OptionFunc113"] = "GiddyRrecycl_Recycle</N>5</N>25590"
tNpcGossip[25590]["OptionFunc114"] = "GiddyRrecycl_Recycle</N>6</N>25590"
tNpcGossip[25590]["OptionFunc115"] = "GiddyRrecycl_Recycle</N>7</N>25590"
tNpcGossip[25590]["OptionFunc116"] = "GiddyRrecycl_Recycle</N>8</N>25590"
tNpcGossip[25590]["OptionFunc117"] = "GiddyRrecycl_Recycle</N>9</N>25590"


--第二层对白
-- 查看小极品回收规则
tNpcGossip[25590]["Text2-1"] = {211,212,213,214,215,216}
tNpcGossip[25590]["Text211"] = tGiddyRrecycle_Text[25590]["Text211"]
tNpcGossip[25590]["Text212"] = tGiddyRrecycle_Text[25590]["Text212"]
tNpcGossip[25590]["Text213"] = tGiddyRrecycle_Text[25590]["Text213"]
tNpcGossip[25590]["Text214"] = tGiddyRrecycle_Text[25590]["Text214"]
tNpcGossip[25590]["Text215"] = tGiddyRrecycle_Text[25590]["Text215"]
tNpcGossip[25590]["Text216"] = tGiddyRrecycle_Text[25590]["Text216"]

tNpcGossip[25590]["tOption2-1"] = {211}
tNpcGossip[25590]["Option211"] = tGiddyRrecycle_Text[25590]["Option211"]



