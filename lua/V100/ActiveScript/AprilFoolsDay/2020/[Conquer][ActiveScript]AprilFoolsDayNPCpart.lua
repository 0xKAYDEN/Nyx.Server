------------------------------------------------------------------------------------
--Name:		200229[简体征服][活动脚本]愚人节-NPC部分
--Creator: 	江宇君
--Created:	2020/02/29
------------------------------------------------------------------------------------
-- 命名前缀：AprilFoolsDayNPCpart_
-- luaini 41736
-- logID： 12001894,1[]
-- emoenybuy log： 1000	01599
-- stc 掩码说明
-- stc(216,65) 记录玩家是否第一次打开主NPC活动中对白
	-- data=0 玩家未打开首次对白
	-- data=1 玩家已打开首次对白
-- stc(216,66) 记录玩家寻宝积分奖励领取情况
	-- data=1  -- 500积分奖励
	-- data=2  -- 1500积分奖励
	-- data=4  -- 2500积分奖励
	-- data=8  -- 5000积分奖励
	-- data=16 -- 10000积分奖励
	-- data=32 -- 30000积分奖励
-- stc(216,68) 记录玩家能量块上交情况
	-- data=1     -- 红玛瑙 1个
	-- data=2     -- 红玛瑙 3个
	-- data=4     -- 红玛瑙 9个
	-- data=8     -- 蓝水晶 1个
	-- data=16    -- 蓝水晶 3个
	-- data=32    -- 蓝水晶 9个
	-- data=64    -- 黄宝石 1个
	-- data=128   -- 黄宝石 3个
	-- data=256   -- 黄宝石 9个
-- stc(216,69) 寻宝积分
-- stc(216,70) 记录寻宝成功次数
-- stc(216,71) 玩家领取潘多拉奖励的次数
-- stc(217,03) 玩家首次获得到红玛瑙的掩码
-- stc(217,31) 玩家完成引导任务领取奖励的掩码

-- global 54285 领取潘多拉奖励全服上限 每日上限100
-- global 54286 5000积分奖励 限制前30名可以领取灵珠

-- TreasurePlaying_GetIncident() 获取随机事件的接口
-- TreasurePlaying_GetStcValue() 获取掩码值的接口 1积分 2次数
-- TreasureMapReward_GetItem(nIndex,BResult) 获取挖宝奖励的接口 (随机事件,成功or失败)
-- TreasurePlaying_ChkAddEffect() -- 头衔变换加积分

-- Log记录
-- 从首对白获得藏宝图 1[1]
-- 主NPC引导任务完成 领取3个赠品藏宝图 1[2]
-- 领取累计积分奖励 1[3][1]
-- 打开寻宝积分奖励礼包 
	-- 500积分奖励 1[3][500]
	-- 1500积分奖励 1[3][1500]
	-- 2500积分奖励 1[3][2500]
	-- 5000积分奖励 前30名 1[3][5000][1]
	-- 5000积分奖励 30名之后 1[3][5001][2]
	-- 10000积分奖励 1[3][10000]
	-- 30000积分奖励 1[3][30000]
-- 打开全球排名奖励礼包
	-- 第1名 1[4][1]
	-- 第2-3名 1[4][2]
	-- 第4-6名 1[4][3]
	-- 第7-10名 1[4][4]
-- 打开五星外套可选包
	-- 选项1 1[5][1]
	-- 选项2 1[5][2]
	-- 选项3 1[5][3]
	-- 选项4 1[5][4]
	-- 选项5 1[5][5]
-- 使用配饰转换道具 1[6]
-- onepieces
	-- 10个红玛瑙合成1个蓝水晶 1[7][10][1]
	-- 10个蓝水晶合成1个黄宝石 1[7][10][2]
	-- 向NPC上交宝石 1[7][1][格子编号]
	-- 领取onepieces奖励 1[7][3]
-- 武器外套可选包
	-- 选 长武器 1[8][1]
	-- 选 短武器 1[8][2]
-- 十连寻宝
	-- 扣除10个藏宝图 1[9][1]
	-- 扣除990天石 1[9][2]
-- 过期删除物品 1[10]

------------------------------------------------------------------------------------

------------------------------------------------------------------------------------
-- 常量表
local tAprilFoolsDayNPCpart_Cont = {}
	
	-- 时间数据
	tAprilFoolsDayNPCpart_Cont["Time"] = {}
	-- 活动时间
	tAprilFoolsDayNPCpart_Cont["Time"]["ActivityTime"] =  tActivityTime["AprilFoolsDay"]["ActivityTime"]
	tAprilFoolsDayNPCpart_Cont["Time"]["NpcActivityTime"] = tActivityTime["AprilFoolsDay"]["NpcActivityTime"]
	
	-- NPC数据
	tAprilFoolsDayNPCpart_Cont["NPC"] = {}
	-- 主NPC 26014,'万愚之王'
	tAprilFoolsDayNPCpart_Cont["NPC"][26014] = {}
	tAprilFoolsDayNPCpart_Cont["NPC"][26014]["Id"] = 26014
	-- 副NPC 26015,'潘多拉宝盒'
	tAprilFoolsDayNPCpart_Cont["NPC"][26015] = {}
	tAprilFoolsDayNPCpart_Cont["NPC"][26015]["Id"] = 26015
	
	-- 物品数据
	tAprilFoolsDayNPCpart_Cont["Item"] = {}
	-- 藏宝图物品数据
	tAprilFoolsDayNPCpart_Cont["Item"]["TreasureMap"] = {}
	tAprilFoolsDayNPCpart_Cont["Item"]["TreasureMap"]["Id"] = 3600244 -- 藏宝图（赠）
	-- 配饰转换道具数据
	tAprilFoolsDayNPCpart_Cont["Item"]["ChangeItem"] = {}
	tAprilFoolsDayNPCpart_Cont["Item"]["ChangeItem"]["Id"] = 3315632 -- 鹅黄丝绒
	tAprilFoolsDayNPCpart_Cont["Item"]["ChangeItem"]["NeedItem"] = 2169335 -- 七窍玲珑宝镜（差）
	
	-- 任务数据
	tAprilFoolsDayNPCpart_Cont["Task"] = {}
	-- 藏宝图物品数据
	tAprilFoolsDayNPCpart_Cont["Task"][1] = {}
	tAprilFoolsDayNPCpart_Cont["Task"][1]["Id"] = 4393
	
	-- 掩码数据
	tAprilFoolsDayNPCpart_Cont["Stc"] = {}
	-- 记录玩家是否第一次打开主NPC活动中对白
	tAprilFoolsDayNPCpart_Cont["Stc"][1] = {}
	tAprilFoolsDayNPCpart_Cont["Stc"][1]["EventType"] = 216
	tAprilFoolsDayNPCpart_Cont["Stc"][1]["DataType"] = 65
	tAprilFoolsDayNPCpart_Cont["Stc"][1]["TotalData"] = 1
	-- 记录玩家成功寻宝的次数
	tAprilFoolsDayNPCpart_Cont["Stc"][2] = {}
	tAprilFoolsDayNPCpart_Cont["Stc"][2]["EventType"] = 216
	tAprilFoolsDayNPCpart_Cont["Stc"][2]["DataType"] = 70
	tAprilFoolsDayNPCpart_Cont["Stc"][2]["TotalData"] = 15
	-- 记录玩家寻宝积分
	tAprilFoolsDayNPCpart_Cont["Stc"][3] = {}
	tAprilFoolsDayNPCpart_Cont["Stc"][3]["EventType"] = 216
	tAprilFoolsDayNPCpart_Cont["Stc"][3]["DataType"] = 69
	-- 记录玩家寻宝积分奖励领取情况
	tAprilFoolsDayNPCpart_Cont["Stc"][4] = {}
	tAprilFoolsDayNPCpart_Cont["Stc"][4]["EventType"] = 216
	tAprilFoolsDayNPCpart_Cont["Stc"][4]["DataType"] = 66
	tAprilFoolsDayNPCpart_Cont["Stc"][4]["TotalData"] = {}
	tAprilFoolsDayNPCpart_Cont["Stc"][4]["TotalData"][1] = 1
	tAprilFoolsDayNPCpart_Cont["Stc"][4]["TotalData"][2] = 2
	tAprilFoolsDayNPCpart_Cont["Stc"][4]["TotalData"][3] = 4
	tAprilFoolsDayNPCpart_Cont["Stc"][4]["TotalData"][4] = 8
	tAprilFoolsDayNPCpart_Cont["Stc"][4]["TotalData"][5] = 16
	tAprilFoolsDayNPCpart_Cont["Stc"][4]["TotalData"][6] = 32
	-- 记录玩家上交能量块情况
	tAprilFoolsDayNPCpart_Cont["Stc"][5] = {}
	tAprilFoolsDayNPCpart_Cont["Stc"][5]["EventType"] = 216
	tAprilFoolsDayNPCpart_Cont["Stc"][5]["DataType"] = 68
	tAprilFoolsDayNPCpart_Cont["Stc"][5]["TotalData"] = {}
	tAprilFoolsDayNPCpart_Cont["Stc"][5]["TotalData"][1] = 1
	tAprilFoolsDayNPCpart_Cont["Stc"][5]["TotalData"][2] = 2
	tAprilFoolsDayNPCpart_Cont["Stc"][5]["TotalData"][3] = 4
	tAprilFoolsDayNPCpart_Cont["Stc"][5]["TotalData"][4] = 8
	tAprilFoolsDayNPCpart_Cont["Stc"][5]["TotalData"][5] = 16
	tAprilFoolsDayNPCpart_Cont["Stc"][5]["TotalData"][6] = 32
	tAprilFoolsDayNPCpart_Cont["Stc"][5]["TotalData"][7] = 64
	tAprilFoolsDayNPCpart_Cont["Stc"][5]["TotalData"][8] = 128
	tAprilFoolsDayNPCpart_Cont["Stc"][5]["TotalData"][9] = 256
	-- 玩家领取潘多拉奖励的次数
	tAprilFoolsDayNPCpart_Cont["Stc"][6] = {}
	tAprilFoolsDayNPCpart_Cont["Stc"][6]["EventType"] = 216
	tAprilFoolsDayNPCpart_Cont["Stc"][6]["DataType"] = 71
	tAprilFoolsDayNPCpart_Cont["Stc"][6]["TotalData"] = 10
	-- 玩家首次获得到红玛瑙的掩码
	tAprilFoolsDayNPCpart_Cont["Stc"][7] = {}
	tAprilFoolsDayNPCpart_Cont["Stc"][7]["EventType"] = 217
	tAprilFoolsDayNPCpart_Cont["Stc"][7]["DataType"] = 03
	tAprilFoolsDayNPCpart_Cont["Stc"][7]["TotalData"] = 1
	-- 玩家完成引导任务领取奖励的掩码
	tAprilFoolsDayNPCpart_Cont["Stc"][8] = {}
	tAprilFoolsDayNPCpart_Cont["Stc"][8]["EventType"] = 217
	tAprilFoolsDayNPCpart_Cont["Stc"][8]["DataType"] = 31
	tAprilFoolsDayNPCpart_Cont["Stc"][8]["TotalData"] = 1
	
	-- 玩家等级限制
	tAprilFoolsDayNPCpart_Cont["LevAndMete"] = {}
	tAprilFoolsDayNPCpart_Cont["LevAndMete"]["Lev"] = 80
	tAprilFoolsDayNPCpart_Cont["LevAndMete"]["Mete"] = 0
	
	-- 玩家地图限制
	tAprilFoolsDayNPCpart_Cont["MapLimit"] = {}
	tAprilFoolsDayNPCpart_Cont["MapLimit"][1] = 1002
	tAprilFoolsDayNPCpart_Cont["MapLimit"][2] = 1036

	-- 限量限制
	tAprilFoolsDayNPCpart_Cont["Global"] = {}
	-- 潘多拉奖励每日限量100
	tAprilFoolsDayNPCpart_Cont["Global"][1] = {}
	tAprilFoolsDayNPCpart_Cont["Global"][1]["Id"] = 54285
	tAprilFoolsDayNPCpart_Cont["Global"][1]["Data0"] = 100
	-- 5000积分奖励限制 前30名可领取灵珠
	tAprilFoolsDayNPCpart_Cont["Global"][2] = {}
	tAprilFoolsDayNPCpart_Cont["Global"][2]["Id"] = 54286
	tAprilFoolsDayNPCpart_Cont["Global"][2]["Data0"] = 30
	
	-- 十连寻宝数据
	tAprilFoolsDayNPCpart_Cont["TenTreasure"] = {}
	-- 十连寻宝需要的天石
	tAprilFoolsDayNPCpart_Cont["TenTreasure"]["NeedEMoney"] = 990
	-- 十连寻宝需要的藏宝图数量
	tAprilFoolsDayNPCpart_Cont["TenTreasure"]["NeedNums"] = 10
	-- 十连寻宝次数
	tAprilFoolsDayNPCpart_Cont["TenTreasure"]["NeedTimes"] = 10
	-- 十连寻宝需要的背包空间
	tAprilFoolsDayNPCpart_Cont["TenTreasure"]["NeedSpace"] = 10
	-- 十连寻宝加积分
	tAprilFoolsDayNPCpart_Cont["TenTreasure"]["AddPoint"] = 500
	tAprilFoolsDayNPCpart_Cont["TenTreasure"]["RankIndex"] = 26014
	
	-- 寻宝奖励数据
	tAprilFoolsDayNPCpart_Cont["TreasureHunt"] = {}
	-- 寻宝奖励需要的积分
	tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["NeedPoint"] = {}
	tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["NeedPoint"][1] = 500
	tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["NeedPoint"][2] = 1500
	tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["NeedPoint"][3] = 2500
	tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["NeedPoint"][4] = 5000
	tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["NeedPoint"][5] = 10000
	tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["NeedPoint"][6] = 30000
	-- 积分对应的奖励
	tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["PointAndItemId"] = {}
	tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["PointAndItemId"][1] = 3315636
	tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["PointAndItemId"][2] = 3315637
	tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["PointAndItemId"][4] = 3315638
	tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["PointAndItemId"][8] = 3315639
	tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["PointAndItemId"][16] = 3315640
	tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["PointAndItemId"][32] = 3315641
	-- 积分奖励的档次
	tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["Grade"] = {}
	tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["Grade"][1] = 1
	tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["Grade"][2] = 2
	tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["Grade"][3] = 3
	tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["Grade"][4] = 4
	tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["Grade"][5] = 5
	tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["Grade"][6] = 6
	
	-- 寻宝头衔对应的积分
	tAprilFoolsDayNPCpart_Cont["TreasureSocre"] = {}
	tAprilFoolsDayNPCpart_Cont["TreasureSocre"]["Title"] = {}
	tAprilFoolsDayNPCpart_Cont["TreasureSocre"]["Title"][1] = 200
	tAprilFoolsDayNPCpart_Cont["TreasureSocre"]["Title"][2] = 500
	tAprilFoolsDayNPCpart_Cont["TreasureSocre"]["Title"][3] = 1000
	tAprilFoolsDayNPCpart_Cont["TreasureSocre"]["Title"][4] = 3000
	tAprilFoolsDayNPCpart_Cont["TreasureSocre"]["Title"][5] = 5000
	
	-- 玩家上交道具的数据
	tAprilFoolsDayNPCpart_Cont["HandIn"] = {}
	-- 每个格子需要的物品id 和 数量
	tAprilFoolsDayNPCpart_Cont["HandIn"]["NeedData"] = {}
	tAprilFoolsDayNPCpart_Cont["HandIn"]["NeedData"][1] = {3315633,1}
	tAprilFoolsDayNPCpart_Cont["HandIn"]["NeedData"][2] = {3315633,3}
	tAprilFoolsDayNPCpart_Cont["HandIn"]["NeedData"][3] = {3315633,9}
	tAprilFoolsDayNPCpart_Cont["HandIn"]["NeedData"][4] = {3315634,1}
	tAprilFoolsDayNPCpart_Cont["HandIn"]["NeedData"][5] = {3315634,3}
	tAprilFoolsDayNPCpart_Cont["HandIn"]["NeedData"][6] = {3315634,9}
	tAprilFoolsDayNPCpart_Cont["HandIn"]["NeedData"][7] = {3315635,1}
	tAprilFoolsDayNPCpart_Cont["HandIn"]["NeedData"][8] = {3315635,3}
	tAprilFoolsDayNPCpart_Cont["HandIn"]["NeedData"][9] = {3315635,9}
	
	-- 内嵌页面网址
	tAprilFoolsDayNPCpart_Cont["Web"] = "https://wtop.zf.99.com/yrj/nqEn/"
	
	-- Log记录
	tAprilFoolsDayNPCpart_Cont["Log"] = {}
	-- 删除物品的LOG 物品id 物品数量
	tAprilFoolsDayNPCpart_Cont["Log"]["TenTimesDeleteItem"] = "0,0,%d,%d,12001894,1[9][1],0,0"
	tAprilFoolsDayNPCpart_Cont["Log"]["TenTimesDeleteEmoney"] = "0,0,2,%d,12001894,1[9][2],0,0"
	tAprilFoolsDayNPCpart_Cont["Log"]["DeleteItem"] = "0,0,%d,%d,12001894,1[10],0,0"
	tAprilFoolsDayNPCpart_Cont["Log"]["HandIn"] = "0,0,%d,%d,12001894,1[7][1][%d],0,0"
	tAprilFoolsDayNPCpart_Cont["Log"]["EMoneyBuyLog"] = "1000	01599	%d	%d	1	"

local tAprilFoolsDayNPCpart_Reward = {}
	-- ===3315636,'愚人礼盒' 500寻宝积分奖励
	-- ===索引: tAprilFoolsDayNPCpart_Reward[3315636]
	-- ===删除: 3315636,1
	-- ===LogStep: 1[3][500]
	-- ===
	tAprilFoolsDayNPCpart_Reward[3315636] = {}
	tAprilFoolsDayNPCpart_Reward[3315636]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_Reward[3315636]["LogStep"] = "1[3][500]"
	tAprilFoolsDayNPCpart_Reward[3315636]["DeleteItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315636]["DeleteItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315636]["DeleteItem"][1]["Id"] = 3315636 -- 【库】愚人礼盒[属性:9]
	tAprilFoolsDayNPCpart_Reward[3315636]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315636]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315636]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4（赠）
	tAprilFoolsDayNPCpart_Reward[3315636]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*1
	tAprilFoolsDayNPCpart_Reward[3315636]["RewardStrengthValue"] = {}
	tAprilFoolsDayNPCpart_Reward[3315636]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000气力值
	tAprilFoolsDayNPCpart_Reward[3315636]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward[3315636]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward[3315636]["RewardEffect"]["Effect"] = "angelwing"


	tAprilFoolsDayNPCpart_Reward[3315637] = {}
	-- ===3315637,'愚夫礼盒' 1500寻宝积分奖励
	-- ===索引: tAprilFoolsDayNPCpart_Reward[3315637]
	-- ===删除: 3315637,1
	-- ===LogStep: 1[3][1500]
	tAprilFoolsDayNPCpart_Reward[3315637]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_Reward[3315637]["LogStep"] = "1[3][1500]"
	tAprilFoolsDayNPCpart_Reward[3315637]["DeleteItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315637]["DeleteItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315637]["DeleteItem"][1]["Id"] = 3315637 -- 【库】愚夫礼盒[属性:9]
	tAprilFoolsDayNPCpart_Reward[3315637]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315637]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315637]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tAprilFoolsDayNPCpart_Reward[3315637]["RewardItem"][1]["Attr"] = "0 20" -- 人参果*20（[错误]物品数量超10个）
	tAprilFoolsDayNPCpart_Reward[3315637]["RewardItem"][2] = {}
	tAprilFoolsDayNPCpart_Reward[3315637]["RewardItem"][2]["Id"] = 2169335 -- 七窍玲珑宝镜[2169335][属性:9][叠加:0][金币:0], 【表格】愚人节配饰
	tAprilFoolsDayNPCpart_Reward[3315637]["RewardItem"][2]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑七窍玲珑宝镜*1
	tAprilFoolsDayNPCpart_Reward[3315637]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward[3315637]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward[3315637]["RewardEffect"]["Effect"] = "angelwing"


	tAprilFoolsDayNPCpart_Reward[3315638] = {}
	-- ===3315638,'愚者礼盒' 2500寻宝积分奖励
	-- ===索引: tAprilFoolsDayNPCpart_Reward[3315638]
	-- ===删除: 3315638,1
	-- ===LogStep: 1[3][2500]
	tAprilFoolsDayNPCpart_Reward[3315638]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_Reward[3315638]["LogStep"] = "1[3][2500]"
	tAprilFoolsDayNPCpart_Reward[3315638]["DeleteItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315638]["DeleteItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315638]["DeleteItem"][1]["Id"] = 3315638 -- 【库】愚者礼盒[属性:9]
	tAprilFoolsDayNPCpart_Reward[3315638]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315638]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315638]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tAprilFoolsDayNPCpart_Reward[3315638]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tAprilFoolsDayNPCpart_Reward[3315638]["RewardItem"][2] = {}
	tAprilFoolsDayNPCpart_Reward[3315638]["RewardItem"][2]["Id"] = 3315678 -- 愚人节武器外套可选包[3315678][属性:9][叠加:1][金币:0], 【表格】7天愚人节武器外套可选包
	tAprilFoolsDayNPCpart_Reward[3315638]["RewardItem"][2]["Attr"] = "0 1" -- 愚人节武器外套可选包*1
	tAprilFoolsDayNPCpart_Reward[3315638]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward[3315638]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward[3315638]["RewardEffect"]["Effect"] = "angelwing"


	tAprilFoolsDayNPCpart_Reward[3315639] = {}
	-- ===3315639,'若愚礼盒' 5000寻宝积分奖励 前30名有灵珠
	-- ===索引: tAprilFoolsDayNPCpart_Reward[3315639][1]
	-- ===删除: 3315639,1
	-- ===LogStep: 1[3][5000][1]
	tAprilFoolsDayNPCpart_Reward[3315639][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315639][1]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_Reward[3315639][1]["LogStep"] = "1[3][5000][1]"
	tAprilFoolsDayNPCpart_Reward[3315639][1]["DeleteItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315639][1]["DeleteItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315639][1]["DeleteItem"][1]["Id"] = 3315639 -- 【库】若愚礼盒[属性:9]
	tAprilFoolsDayNPCpart_Reward[3315639][1]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315639][1]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315639][1]["RewardItem"][1]["Id"] = 4200009 -- 9阶灵珠[4200009][属性:72][叠加:99][金币:0], 【表格】9阶灵珠
	tAprilFoolsDayNPCpart_Reward[3315639][1]["RewardItem"][1]["Attr"] = "0 1" -- 9阶灵珠*1
	tAprilFoolsDayNPCpart_Reward[3315639][1]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tAprilFoolsDayNPCpart_Reward[3315639][1]["RewardItem"][2] = {}
	tAprilFoolsDayNPCpart_Reward[3315639][1]["RewardItem"][2]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5（赠）
	tAprilFoolsDayNPCpart_Reward[3315639][1]["RewardItem"][2]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
	tAprilFoolsDayNPCpart_Reward[3315639][1]["RewardStrengthValue"] = {}
	tAprilFoolsDayNPCpart_Reward[3315639][1]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气力值
	tAprilFoolsDayNPCpart_Reward[3315639][1]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward[3315639][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward[3315639][1]["RewardEffect"]["Effect"] = "angelwing"


	tAprilFoolsDayNPCpart_Reward[3315639][2] = {}
	-- ===3315639,'若愚礼盒' 5000寻宝积分奖励
	-- ===索引: tAprilFoolsDayNPCpart_Reward[3315639][2]
	-- ===删除: 3315639,1
	-- ===LogStep: 1[3][5000][2]
	tAprilFoolsDayNPCpart_Reward[3315639][2]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_Reward[3315639][2]["LogStep"] = "1[3][5000][2]"
	tAprilFoolsDayNPCpart_Reward[3315639][2]["DeleteItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315639][2]["DeleteItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315639][2]["DeleteItem"][1]["Id"] = 3315639 -- 【库】若愚礼盒[属性:9]
	tAprilFoolsDayNPCpart_Reward[3315639][2]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315639][2]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315639][2]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5（赠）
	tAprilFoolsDayNPCpart_Reward[3315639][2]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
	tAprilFoolsDayNPCpart_Reward[3315639][2]["RewardStrengthValue"] = {}
	tAprilFoolsDayNPCpart_Reward[3315639][2]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气力值
	tAprilFoolsDayNPCpart_Reward[3315639][2]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward[3315639][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward[3315639][2]["RewardEffect"]["Effect"] = "angelwing"


	tAprilFoolsDayNPCpart_Reward[3315640] = {}
	-- ===3315640,'智者礼盒' 10000寻宝积分奖励
	-- ===索引: tAprilFoolsDayNPCpart_Reward[3315640]
	-- ===删除: 3315640,1
	-- ===LogStep: 1[3][10000]
	tAprilFoolsDayNPCpart_Reward[3315640]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_Reward[3315640]["LogStep"] = "1[3][10000]"
	tAprilFoolsDayNPCpart_Reward[3315640]["DeleteItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315640]["DeleteItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315640]["DeleteItem"][1]["Id"] = 3315640 -- 【库】智者礼盒[属性:9]
	tAprilFoolsDayNPCpart_Reward[3315640]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315640]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315640]["RewardItem"][1]["Id"] = 3315632 -- 鹅黄丝绒[3315632][属性:9][叠加:1][金币:0], 【表格】愚人节配饰转换道具
	tAprilFoolsDayNPCpart_Reward[3315640]["RewardItem"][1]["Attr"] = "0 1" -- 鹅黄丝绒*1
	tAprilFoolsDayNPCpart_Reward[3315640]["RewardStrengthValue"] = {}
	tAprilFoolsDayNPCpart_Reward[3315640]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力值
	tAprilFoolsDayNPCpart_Reward[3315640]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward[3315640]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward[3315640]["RewardEffect"]["Effect"] = "angelwing"


	tAprilFoolsDayNPCpart_Reward[3315641] = {}
	-- ===3315641,'智囊礼盒' 30000寻宝积分奖励 普通服
	-- ===索引: tAprilFoolsDayNPCpart_Reward[3315641]
	-- ===删除: 3315641,1
	-- ===LogStep: 1[3][30000]
	tAprilFoolsDayNPCpart_Reward[3315641][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315641][1]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_Reward[3315641][1]["LogStep"] = "1[3][30000]"
	tAprilFoolsDayNPCpart_Reward[3315641][1]["DeleteItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315641][1]["DeleteItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315641][1]["DeleteItem"][1]["Id"] = 3315641 -- 【库】智囊礼盒[属性:9]
	tAprilFoolsDayNPCpart_Reward[3315641][1]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315641][1]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315641][1]["RewardItem"][1]["Id"] = 3315650 -- 5星外套可选礼盒[3315650][属性:9][叠加:1][金币:0], 【表格】5星坐骑外套可选包
	tAprilFoolsDayNPCpart_Reward[3315641][1]["RewardItem"][1]["Attr"] = "0 1" -- 5星外套可选礼盒*1
	tAprilFoolsDayNPCpart_Reward[3315641][1]["RewardItem"][2] = {}
	tAprilFoolsDayNPCpart_Reward[3315641][1]["RewardItem"][2]["Id"] = 723695 -- 超大固化石[723695][属性:0][叠加:0][金币:0], 【表格】超大固化石（赠）
	tAprilFoolsDayNPCpart_Reward[3315641][1]["RewardItem"][2]["Attr"] = "0 1 3" -- 超大固化石（赠）*1
	tAprilFoolsDayNPCpart_Reward[3315641][1]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward[3315641][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward[3315641][1]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===3315641,'智囊礼盒' 30000寻宝积分奖励 激情服
	-- ===索引: tAprilFoolsDayNPCpart_Reward[3315641]
	-- ===删除: 3315641,1
	-- ===LogStep: 1[3][30000]
	tAprilFoolsDayNPCpart_Reward[3315641][2] = {}
	tAprilFoolsDayNPCpart_Reward[3315641][2]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_Reward[3315641][2]["LogStep"] = "1[3][30000]"
	tAprilFoolsDayNPCpart_Reward[3315641][2]["DeleteItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315641][2]["DeleteItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315641][2]["DeleteItem"][1]["Id"] = 3315641 -- 【库】智囊礼盒[属性:9]
	tAprilFoolsDayNPCpart_Reward[3315641][2]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315641][2]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315641][2]["RewardItem"][1]["Id"] = 3315650 -- 5星外套可选礼盒[3315650][属性:9][叠加:1][金币:0], 【表格】5星坐骑外套可选包
	tAprilFoolsDayNPCpart_Reward[3315641][2]["RewardItem"][1]["Attr"] = "0 1" -- 5星外套可选礼盒*1
	tAprilFoolsDayNPCpart_Reward[3315641][2]["RewardItem"][2] = {}
	tAprilFoolsDayNPCpart_Reward[3315641][2]["RewardItem"][2]["Id"] = 3009003 -- 璀璨星陨石[3009003][属性:9][叠加:0][金币:0], 【表格】璀璨星陨石（赠）
	tAprilFoolsDayNPCpart_Reward[3315641][2]["RewardItem"][2]["Attr"] = "0 3 0 2880 1" -- 璀璨星陨石（赠）*3
	tAprilFoolsDayNPCpart_Reward[3315641][2]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward[3315641][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward[3315641][2]["RewardEffect"]["Effect"] = "angelwing"


	tAprilFoolsDayNPCpart_Reward[3315646] = {}
	-- ===3315646,'圣人千虑礼盒'
	-- ===索引: tAprilFoolsDayNPCpart_Reward[3315646]
	-- ===删除: 3315646,1
	-- ===LogStep: 1[4][1]
	tAprilFoolsDayNPCpart_Reward[3315646]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_Reward[3315646]["LogStep"] = "1[4][1]"
	tAprilFoolsDayNPCpart_Reward[3315646]["DeleteItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315646]["DeleteItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315646]["DeleteItem"][1]["Id"] = 3315646 -- 【库】圣人千虑礼盒[属性:9]
	tAprilFoolsDayNPCpart_Reward[3315646]["RewardTitle"] = {}
	tAprilFoolsDayNPCpart_Reward[3315646]["RewardTitle"]["TitleType"] = 2185 -- 【库】愚人节专属称号, 【表格】愚人节称号
	tAprilFoolsDayNPCpart_Reward[3315646]["RewardTitle"]["TitleId"] = 2185
	tAprilFoolsDayNPCpart_Reward[3315646]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:愚人节专属称号, 【需求】愚人节称号
	tAprilFoolsDayNPCpart_Reward[3315646]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315646]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315646]["RewardItem"][1]["Id"] = 4200011 -- 11阶灵珠[4200011][属性:72][叠加:99][金币:0], 【表格】11阶灵珠
	tAprilFoolsDayNPCpart_Reward[3315646]["RewardItem"][1]["Attr"] = "0 1" -- 11阶灵珠*1
	tAprilFoolsDayNPCpart_Reward[3315646]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tAprilFoolsDayNPCpart_Reward[3315646]["RewardStrengthValue"] = {}
	tAprilFoolsDayNPCpart_Reward[3315646]["RewardStrengthValue"]["Value"] = 30000 -- 气力值, 【需求】30000气力值
	tAprilFoolsDayNPCpart_Reward[3315646]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward[3315646]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward[3315646]["RewardEffect"]["Effect"] = "angelwing"


	tAprilFoolsDayNPCpart_Reward[3315647] = {}
	-- ===3315647,'足智多谋礼盒'
	-- ===索引: tAprilFoolsDayNPCpart_Reward[3315647]
	-- ===删除: 3315647,1
	-- ===LogStep: 1[4][2]
	tAprilFoolsDayNPCpart_Reward[3315647]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_Reward[3315647]["LogStep"] = "1[4][2]"
	tAprilFoolsDayNPCpart_Reward[3315647]["DeleteItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315647]["DeleteItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315647]["DeleteItem"][1]["Id"] = 3315647 -- 【库】足智多谋礼盒[属性:9]
	tAprilFoolsDayNPCpart_Reward[3315647]["RewardTitle"] = {}
	tAprilFoolsDayNPCpart_Reward[3315647]["RewardTitle"]["TitleType"] = 2185 -- 【库】愚人节专属称号, 【表格】愚人节称号
	tAprilFoolsDayNPCpart_Reward[3315647]["RewardTitle"]["TitleId"] = 2185
	tAprilFoolsDayNPCpart_Reward[3315647]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:愚人节专属称号, 【需求】愚人节称号
	tAprilFoolsDayNPCpart_Reward[3315647]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315647]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315647]["RewardItem"][1]["Id"] = 4200009 -- 9阶灵珠[4200009][属性:72][叠加:99][金币:0], 【表格】9阶灵珠
	tAprilFoolsDayNPCpart_Reward[3315647]["RewardItem"][1]["Attr"] = "0 1" -- 9阶灵珠*1
	tAprilFoolsDayNPCpart_Reward[3315647]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tAprilFoolsDayNPCpart_Reward[3315647]["RewardStrengthValue"] = {}
	tAprilFoolsDayNPCpart_Reward[3315647]["RewardStrengthValue"]["Value"] = 20000 -- 气力值, 【需求】20000气力值
	tAprilFoolsDayNPCpart_Reward[3315647]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward[3315647]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward[3315647]["RewardEffect"]["Effect"] = "angelwing"


	tAprilFoolsDayNPCpart_Reward[3315648] = {}
	-- ===3315648,'深谋远虑礼盒'
	-- ===索引: tAprilFoolsDayNPCpart_Reward[3315648]
	-- ===删除: 3315648,1
	-- ===LogStep: 1[4][3]
	tAprilFoolsDayNPCpart_Reward[3315648]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_Reward[3315648]["LogStep"] = "1[4][3]"
	tAprilFoolsDayNPCpart_Reward[3315648]["DeleteItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315648]["DeleteItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315648]["DeleteItem"][1]["Id"] = 3315648 -- 【库】深谋远虑礼盒[属性:9]
	tAprilFoolsDayNPCpart_Reward[3315648]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315648]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315648]["RewardItem"][1]["Id"] = 4200008 -- 8阶灵珠[4200008][属性:72][叠加:99][金币:0], 【表格】8阶灵珠
	tAprilFoolsDayNPCpart_Reward[3315648]["RewardItem"][1]["Attr"] = "0 1" -- 8阶灵珠*1
	tAprilFoolsDayNPCpart_Reward[3315648]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tAprilFoolsDayNPCpart_Reward[3315648]["RewardStrengthValue"] = {}
	tAprilFoolsDayNPCpart_Reward[3315648]["RewardStrengthValue"]["Value"] = 15000 -- 气力值, 【需求】15000气力值
	tAprilFoolsDayNPCpart_Reward[3315648]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward[3315648]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward[3315648]["RewardEffect"]["Effect"] = "angelwing"


	tAprilFoolsDayNPCpart_Reward[3315649] = {}
	-- ===3315649,'大智若愚礼盒'
	-- ===索引: tAprilFoolsDayNPCpart_Reward[3315649]
	-- ===删除: 3315649,1
	-- ===LogStep: 1[4][4]
	tAprilFoolsDayNPCpart_Reward[3315649]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_Reward[3315649]["LogStep"] = "1[4][4]"
	tAprilFoolsDayNPCpart_Reward[3315649]["DeleteItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315649]["DeleteItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315649]["DeleteItem"][1]["Id"] = 3315649 -- 【库】大智若愚礼盒[属性:9]
	tAprilFoolsDayNPCpart_Reward[3315649]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315649]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315649]["RewardItem"][1]["Id"] = 4200007 -- 7阶灵珠[4200007][属性:72][叠加:99][金币:0], 【表格】7阶灵珠
	tAprilFoolsDayNPCpart_Reward[3315649]["RewardItem"][1]["Attr"] = "0 1" -- 7阶灵珠*1
	tAprilFoolsDayNPCpart_Reward[3315649]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tAprilFoolsDayNPCpart_Reward[3315649]["RewardStrengthValue"] = {}
	tAprilFoolsDayNPCpart_Reward[3315649]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力值
	tAprilFoolsDayNPCpart_Reward[3315649]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward[3315649]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward[3315649]["RewardEffect"]["Effect"] = "angelwing"


	tAprilFoolsDayNPCpart_Reward[3315650] = {}
	-- ===3315650,'5星外套可选礼盒'
	-- ===索引: tAprilFoolsDayNPCpart_Reward[3315650][1]
	-- ===删除: 3315650,1
	-- ===LogStep: 1[5][1]"
	tAprilFoolsDayNPCpart_Reward[3315650][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315650][1]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_Reward[3315650][1]["LogStep"] = "1[5][1]"
	tAprilFoolsDayNPCpart_Reward[3315650][1]["DeleteItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315650][1]["DeleteItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315650][1]["DeleteItem"][1]["Id"] = 3315650 -- 【库】5星外套可选礼盒[属性:9]
	tAprilFoolsDayNPCpart_Reward[3315650][1]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315650][1]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315650][1]["RewardItem"][1]["Id"] = 200531 -- 暗黑赤炎魔龙【炼狱版】[200531][属性:0][叠加:0][金币:0], 【表格】暗黑赤炎魔龙【炼狱版】（赠）
	tAprilFoolsDayNPCpart_Reward[3315650][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑暗黑赤炎魔龙【炼狱版】（赠）*1
	tAprilFoolsDayNPCpart_Reward[3315650][1]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward[3315650][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward[3315650][1]["RewardEffect"]["Effect"] = "angelwing"


	tAprilFoolsDayNPCpart_Reward[3315650][2] = {}
	-- ===3315650,'5星外套可选礼盒'
	-- ===索引: tAprilFoolsDayNPCpart_Reward[3315650][2]
	-- ===删除: 3315650,1
	-- ===LogStep: 1[5][2]"
	tAprilFoolsDayNPCpart_Reward[3315650][2]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_Reward[3315650][2]["LogStep"] = "1[5][2]"
	tAprilFoolsDayNPCpart_Reward[3315650][2]["DeleteItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315650][2]["DeleteItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315650][2]["DeleteItem"][1]["Id"] = 3315650 -- 【库】5星外套可选礼盒[属性:9]
	tAprilFoolsDayNPCpart_Reward[3315650][2]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315650][2]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315650][2]["RewardItem"][1]["Id"] = 200540 -- 七节尾蛮荒兽【奔雷版】[200540][属性:0][叠加:0][金币:100], 【表格】七节尾蛮荒兽【奔雷版】（赠）
	tAprilFoolsDayNPCpart_Reward[3315650][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑七节尾蛮荒兽【奔雷版】（赠）*1
	tAprilFoolsDayNPCpart_Reward[3315650][2]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward[3315650][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward[3315650][2]["RewardEffect"]["Effect"] = "angelwing"


	-- tAprilFoolsDayNPCpart_Reward[3315650][3] = {}
	-- -- ===3315650,'5星外套可选礼盒'
	-- -- ===索引: tAprilFoolsDayNPCpart_Reward[3315650][3]
	-- -- ===删除: 3315650,1
	-- -- ===LogStep: 1[5][3]"
	-- tAprilFoolsDayNPCpart_Reward[3315650][3]["LogId"] = 12001894
	-- tAprilFoolsDayNPCpart_Reward[3315650][3]["LogStep"] = "1[5][3]"
	-- tAprilFoolsDayNPCpart_Reward[3315650][3]["DeleteItem"] = {}
	-- tAprilFoolsDayNPCpart_Reward[3315650][3]["DeleteItem"][1] = {}
	-- tAprilFoolsDayNPCpart_Reward[3315650][3]["DeleteItem"][1]["Id"] = 3315650 -- 【库】5星外套可选礼盒[属性:9]
	-- tAprilFoolsDayNPCpart_Reward[3315650][3]["RewardItem"] = {}
	-- tAprilFoolsDayNPCpart_Reward[3315650][3]["RewardItem"][1] = {}
	-- tAprilFoolsDayNPCpart_Reward[3315650][3]["RewardItem"][1]["Id"] = 200581 -- 焚天圣兽[200581][属性:8][叠加:0][金币:0], 【表格】焚天圣兽（赠）
	-- tAprilFoolsDayNPCpart_Reward[3315650][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑焚天圣兽（赠）*1
	-- tAprilFoolsDayNPCpart_Reward[3315650][3]["RewardEffect"] = {}
	-- tAprilFoolsDayNPCpart_Reward[3315650][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tAprilFoolsDayNPCpart_Reward[3315650][3]["RewardEffect"]["Effect"] = "angelwing"


	tAprilFoolsDayNPCpart_Reward[3315650][4] = {}
	-- ===3315650,'5星外套可选礼盒'
	-- ===索引: tAprilFoolsDayNPCpart_Reward[3315650][4]
	-- ===删除: 3315650,1
	-- ===LogStep: 1[5][4]
	tAprilFoolsDayNPCpart_Reward[3315650][4]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_Reward[3315650][4]["LogStep"] = "1[5][4]"
	tAprilFoolsDayNPCpart_Reward[3315650][4]["DeleteItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315650][4]["DeleteItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315650][4]["DeleteItem"][1]["Id"] = 3315650 -- 【库】5星外套可选礼盒[属性:9]
	tAprilFoolsDayNPCpart_Reward[3315650][4]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315650][4]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315650][4]["RewardItem"][1]["Id"] = 200626 -- 大鱼海棠·凌波[200626][属性:0][叠加:0][金币:0], 【表格】大鱼海棠·凌波（赠）
	tAprilFoolsDayNPCpart_Reward[3315650][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑大鱼海棠·凌波（赠）*1
	tAprilFoolsDayNPCpart_Reward[3315650][4]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward[3315650][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward[3315650][4]["RewardEffect"]["Effect"] = "angelwing"


	tAprilFoolsDayNPCpart_Reward[3315650][5] = {}
	-- ===3315650,'5星外套可选礼盒'
	-- ===索引: tAprilFoolsDayNPCpart_Reward[3315650][5]
	-- ===删除: 3315650,1
	-- ===LogStep: 1[5][5]"
	tAprilFoolsDayNPCpart_Reward[3315650][5]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_Reward[3315650][5]["LogStep"] = "1[5][5]"
	tAprilFoolsDayNPCpart_Reward[3315650][5]["DeleteItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315650][5]["DeleteItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315650][5]["DeleteItem"][1]["Id"] = 3315650 -- 【库】5星外套可选礼盒[属性:9]
	tAprilFoolsDayNPCpart_Reward[3315650][5]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315650][5]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315650][5]["RewardItem"][1]["Id"] = 200622 -- 二哈将军【炫彩版】[200622][属性:0][叠加:0][金币:0], 【表格】二哈将军【炫彩版】（赠）
	tAprilFoolsDayNPCpart_Reward[3315650][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑二哈将军【炫彩版】（赠）*1
	tAprilFoolsDayNPCpart_Reward[3315650][5]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward[3315650][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward[3315650][5]["RewardEffect"]["Effect"] = "angelwing"


	tAprilFoolsDayNPCpart_Reward[3315632] = {}
	-- ===3315632,'鹅黄丝绒' 配饰转换道具
	-- ===索引: tAprilFoolsDayNPCpart_Reward[3315632]
	-- ===删除: 3315632,1
	-- ===删除: 2169335,1
	-- ===LogStep: 1[6]
	tAprilFoolsDayNPCpart_Reward[3315632]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_Reward[3315632]["LogStep"] = "1[6]"
	tAprilFoolsDayNPCpart_Reward[3315632]["DeleteItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315632]["DeleteItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315632]["DeleteItem"][1]["Id"] = 3315632 -- 【库】鹅黄丝绒[属性:9]
	tAprilFoolsDayNPCpart_Reward[3315632]["DeleteItem"][2] = {}
	tAprilFoolsDayNPCpart_Reward[3315632]["DeleteItem"][2]["Id"] = 2169335 -- 【库】七窍玲珑宝镜[属性:9]
	tAprilFoolsDayNPCpart_Reward[3315632]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315632]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315632]["RewardItem"][1]["Id"] = 2169345 -- 七窍玲珑宝镜[2169345][属性:9][叠加:0][金币:0], 【表格】七窍玲珑宝镜
	tAprilFoolsDayNPCpart_Reward[3315632]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑七窍玲珑宝镜*1
	tAprilFoolsDayNPCpart_Reward[3315632]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward[3315632]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward[3315632]["RewardEffect"]["Effect"] = "angelwing"


	tAprilFoolsDayNPCpart_Reward[3315633] = {}
	-- ===3315633,'红玛瑙' 10个可合成1个蓝水晶
	-- ===索引: tAprilFoolsDayNPCpart_Reward[3315633]
	-- ===删除: 3315633,10
	-- ===LogStep: 1[7][10][1]
	tAprilFoolsDayNPCpart_Reward[3315633]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_Reward[3315633]["LogStep"] = "1[7][10][1]"
	tAprilFoolsDayNPCpart_Reward[3315633]["DeleteItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315633]["DeleteItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315633]["DeleteItem"][1]["Id"] = 3315633 -- 【库】红玛瑙[属性:9]
	tAprilFoolsDayNPCpart_Reward[3315633]["DeleteItem"][1]["ItemNum"] = 10
	tAprilFoolsDayNPCpart_Reward[3315633]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315633]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315633]["RewardItem"][1]["Id"] = 3315634 -- 蓝水晶[3315634][属性:9][叠加:10000][金币:0], 【表格】蓝水晶
	tAprilFoolsDayNPCpart_Reward[3315633]["RewardItem"][1]["Attr"] = "0 1" -- 蓝水晶*1
	tAprilFoolsDayNPCpart_Reward[3315633]["RewardNoNeedTip"] = 1
	tAprilFoolsDayNPCpart_Reward[3315633]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward[3315633]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward[3315633]["RewardEffect"]["Effect"] = "angelwing"


	tAprilFoolsDayNPCpart_Reward[3315634] = {}
	-- ===3315634,'蓝水晶' 10个可合成1个黄宝石
	-- ===索引: tAprilFoolsDayNPCpart_Reward[3315634]
	-- ===删除: 3315634,10
	-- ===LogStep: 1[7][10][2]
	tAprilFoolsDayNPCpart_Reward[3315634]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_Reward[3315634]["LogStep"] = "1[7][10][2]"
	tAprilFoolsDayNPCpart_Reward[3315634]["DeleteItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315634]["DeleteItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315634]["DeleteItem"][1]["Id"] = 3315634 -- 【库】蓝水晶[属性:9]
	tAprilFoolsDayNPCpart_Reward[3315634]["DeleteItem"][1]["ItemNum"] = 10
	tAprilFoolsDayNPCpart_Reward[3315634]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315634]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315634]["RewardItem"][1]["Id"] = 3315635 -- 黄宝石[3315635][属性:9][叠加:10000][金币:0], 【表格】黄宝石
	tAprilFoolsDayNPCpart_Reward[3315634]["RewardItem"][1]["Attr"] = "0 1" -- 黄宝石*1
	tAprilFoolsDayNPCpart_Reward[3315634]["RewardNoNeedTip"] = 1
	tAprilFoolsDayNPCpart_Reward[3315634]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward[3315634]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward[3315634]["RewardEffect"]["Effect"] = "angelwing"


	tAprilFoolsDayNPCpart_Reward[3315678] = {}
	-- ===3315678,'愚人节武器外套可选包'
	-- ===索引: tAprilFoolsDayNPCpart_Reward[3315678][1]
	-- ===删除: 3315678,1
	-- ===LogStep: 1[8][1]
	tAprilFoolsDayNPCpart_Reward[3315678][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315678][1]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_Reward[3315678][1]["LogStep"] = "1[8][1][1]"
	tAprilFoolsDayNPCpart_Reward[3315678][1]["DeleteItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315678][1]["DeleteItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315678][1]["DeleteItem"][1]["Id"] = 3315678 -- 【库】愚人节武器外套可选包[属性:9]
	tAprilFoolsDayNPCpart_Reward[3315678][1]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315678][1]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315678][1]["RewardItem"][1]["Id"] = 350174 -- 长武器外套[350174][属性:0][叠加:0][金币:0], 【表格】长武器外套（赠）
	tAprilFoolsDayNPCpart_Reward[3315678][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑长武器外套（赠）*1
	tAprilFoolsDayNPCpart_Reward[3315678][1]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward[3315678][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward[3315678][1]["RewardEffect"]["Effect"] = "angelwing"


	tAprilFoolsDayNPCpart_Reward[3315678][2] = {}
	-- ===3315678,'愚人节武器外套可选包'
	-- ===索引: tAprilFoolsDayNPCpart_Reward[3315678][2]
	-- ===删除: 3315678,1
	-- ===LogStep: 1[8][2]
	tAprilFoolsDayNPCpart_Reward[3315678][2]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_Reward[3315678][2]["LogStep"] = "1[8][1][2]"
	tAprilFoolsDayNPCpart_Reward[3315678][2]["DeleteItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315678][2]["DeleteItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315678][2]["DeleteItem"][1]["Id"] = 3315678 -- 【库】愚人节武器外套可选包[属性:9]
	tAprilFoolsDayNPCpart_Reward[3315678][2]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315678][2]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315678][2]["RewardItem"][1]["Id"] = 360311 -- 短武器外套[360311][属性:0][叠加:0][金币:0], 【表格】短武器外套（赠）
	tAprilFoolsDayNPCpart_Reward[3315678][2]["RewardItem"][1]["Attr"] = "0 2 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑短武器外套（赠）*2
	tAprilFoolsDayNPCpart_Reward[3315678][2]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward[3315678][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward[3315678][2]["RewardEffect"]["Effect"] = "angelwing"


	tAprilFoolsDayNPCpart_Reward[3315775] = {}
	-- ===3315775,'愚人节武器外套可选包'
	-- ===索引: tAprilFoolsDayNPCpart_Reward[3315775][1]
	-- ===删除: 3315775,1
	-- ===LogStep: 1[8][1]
	tAprilFoolsDayNPCpart_Reward[3315775][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315775][1]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_Reward[3315775][1]["LogStep"] = "1[8][2][1]"
	tAprilFoolsDayNPCpart_Reward[3315775][1]["DeleteItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315775][1]["DeleteItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315775][1]["DeleteItem"][1]["Id"] = 3315775 -- 【库】愚人节武器外套可选包[属性:9]
	tAprilFoolsDayNPCpart_Reward[3315775][1]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315775][1]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315775][1]["RewardItem"][1]["Id"] = 350174 -- 长武器外套[350174][属性:0][叠加:0][金币:0], 【表格】长武器外套
	tAprilFoolsDayNPCpart_Reward[3315775][1]["RewardItem"][1]["Attr"] = "0 1 0 10080 1 0 0 1" -- 7天时效(激活)的1%神佑长武器外套*1
	tAprilFoolsDayNPCpart_Reward[3315775][1]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward[3315775][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward[3315775][1]["RewardEffect"]["Effect"] = "angelwing"


	tAprilFoolsDayNPCpart_Reward[3315775][2] = {}
	-- ===3315775,'愚人节武器外套可选包'
	-- ===索引: tAprilFoolsDayNPCpart_Reward[3315775][2]
	-- ===删除: 3315775,1
	-- ===LogStep: 1[8][2]
	tAprilFoolsDayNPCpart_Reward[3315775][2]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_Reward[3315775][2]["LogStep"] = "1[8][2][2]"
	tAprilFoolsDayNPCpart_Reward[3315775][2]["DeleteItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315775][2]["DeleteItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315775][2]["DeleteItem"][1]["Id"] = 3315775 -- 【库】愚人节武器外套可选包[属性:9]
	tAprilFoolsDayNPCpart_Reward[3315775][2]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward[3315775][2]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward[3315775][2]["RewardItem"][1]["Id"] = 360311 -- 短武器外套[360311][属性:0][叠加:0][金币:0], 【表格】短武器外套
	tAprilFoolsDayNPCpart_Reward[3315775][2]["RewardItem"][1]["Attr"] = "0 2 0 10080 1 0 0 1" -- 7天时效(激活)的1%神佑短武器外套*2
	tAprilFoolsDayNPCpart_Reward[3315775][2]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward[3315775][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward[3315775][2]["RewardEffect"]["Effect"] = "angelwing"
	
	

	tAprilFoolsDayNPCpart_Reward["OnePieces"] = {}
	-- ===one pieces奖励
	-- ===索引: tAprilFoolsDayNPCpart_Reward["OnePieces"]
	-- ===LogStep: 1[7][3]
	tAprilFoolsDayNPCpart_Reward["OnePieces"]["ItemChanceSum"] = 10000
	tAprilFoolsDayNPCpart_Reward["OnePieces"]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_Reward["OnePieces"]["LogStep"] = " 1[7][3]"
	-- 6阶灵珠 - 30%
	tAprilFoolsDayNPCpart_Reward["OnePieces"][1] = {}
	tAprilFoolsDayNPCpart_Reward["OnePieces"][1]["RandomItemChanceType"] = 2
	tAprilFoolsDayNPCpart_Reward["OnePieces"][1]["ItemChance"] = 3000
	tAprilFoolsDayNPCpart_Reward["OnePieces"][1]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward["OnePieces"][1]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward["OnePieces"][1]["RewardItem"][1]["Id"] = 4200006 -- 6阶灵珠[4200006][属性:72][叠加:99][金币:0], 【表格】6阶灵珠
	tAprilFoolsDayNPCpart_Reward["OnePieces"][1]["RewardItem"][1]["Attr"] = "0 1" -- 6阶灵珠*1
	tAprilFoolsDayNPCpart_Reward["OnePieces"][1]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tAprilFoolsDayNPCpart_Reward["OnePieces"][1]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward["OnePieces"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward["OnePieces"][1]["RewardEffect"]["Effect"] = "angelwing"
	tAprilFoolsDayNPCpart_Reward["OnePieces"][1]["RewardBroadCast"] = tAprilFoolsDayNPCpart_Text["Sys"]["BoxGetReward"]["Broadcast"][1] -- 全服公告
	tAprilFoolsDayNPCpart_Reward["OnePieces"][1]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】
	-- 7阶灵珠 - 55%
	tAprilFoolsDayNPCpart_Reward["OnePieces"][2] = {}
	tAprilFoolsDayNPCpart_Reward["OnePieces"][2]["RandomItemChanceType"] = 2
	tAprilFoolsDayNPCpart_Reward["OnePieces"][2]["ItemChance"] = 5500
	tAprilFoolsDayNPCpart_Reward["OnePieces"][2]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward["OnePieces"][2]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward["OnePieces"][2]["RewardItem"][1]["Id"] = 4200007 -- 7阶灵珠[4200007][属性:72][叠加:99][金币:0], 【表格】7阶灵珠
	tAprilFoolsDayNPCpart_Reward["OnePieces"][2]["RewardItem"][1]["Attr"] = "0 1" -- 7阶灵珠*1
	tAprilFoolsDayNPCpart_Reward["OnePieces"][2]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tAprilFoolsDayNPCpart_Reward["OnePieces"][2]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward["OnePieces"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward["OnePieces"][2]["RewardEffect"]["Effect"] = "angelwing"
	tAprilFoolsDayNPCpart_Reward["OnePieces"][2]["RewardBroadCast"] = tAprilFoolsDayNPCpart_Text["Sys"]["BoxGetReward"]["Broadcast"][2] -- 全服公告
	tAprilFoolsDayNPCpart_Reward["OnePieces"][2]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】
	-- 9阶灵珠 - 10%
	tAprilFoolsDayNPCpart_Reward["OnePieces"][3] = {}
	tAprilFoolsDayNPCpart_Reward["OnePieces"][3]["RandomItemChanceType"] = 2
	tAprilFoolsDayNPCpart_Reward["OnePieces"][3]["ItemChance"] = 1000
	tAprilFoolsDayNPCpart_Reward["OnePieces"][3]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward["OnePieces"][3]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward["OnePieces"][3]["RewardItem"][1]["Id"] = 4200009 -- 9阶灵珠[4200009][属性:72][叠加:99][金币:0], 【表格】9阶灵珠
	tAprilFoolsDayNPCpart_Reward["OnePieces"][3]["RewardItem"][1]["Attr"] = "0 1" -- 9阶灵珠*1
	tAprilFoolsDayNPCpart_Reward["OnePieces"][3]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tAprilFoolsDayNPCpart_Reward["OnePieces"][3]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward["OnePieces"][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward["OnePieces"][3]["RewardEffect"]["Effect"] = "angelwing"
	tAprilFoolsDayNPCpart_Reward["OnePieces"][3]["RewardBroadCast"] = tAprilFoolsDayNPCpart_Text["Sys"]["BoxGetReward"]["Broadcast"][3] -- 全服公告
	tAprilFoolsDayNPCpart_Reward["OnePieces"][3]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】
	-- 10阶灵珠 - 4.5%
	tAprilFoolsDayNPCpart_Reward["OnePieces"][4] = {}
	tAprilFoolsDayNPCpart_Reward["OnePieces"][4]["RandomItemChanceType"] = 2
	tAprilFoolsDayNPCpart_Reward["OnePieces"][4]["ItemChance"] = 450
	tAprilFoolsDayNPCpart_Reward["OnePieces"][4]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward["OnePieces"][4]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward["OnePieces"][4]["RewardItem"][1]["Id"] = 4200010 -- 10阶灵珠[4200010][属性:72][叠加:99][金币:0], 【表格】10阶灵珠
	tAprilFoolsDayNPCpart_Reward["OnePieces"][4]["RewardItem"][1]["Attr"] = "0 1" -- 10阶灵珠*1
	tAprilFoolsDayNPCpart_Reward["OnePieces"][4]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tAprilFoolsDayNPCpart_Reward["OnePieces"][4]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward["OnePieces"][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward["OnePieces"][4]["RewardEffect"]["Effect"] = "angelwing"
	tAprilFoolsDayNPCpart_Reward["OnePieces"][4]["RewardBroadCast"] = tAprilFoolsDayNPCpart_Text["Sys"]["BoxGetReward"]["Broadcast"][4] -- 全服公告
	tAprilFoolsDayNPCpart_Reward["OnePieces"][4]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】
	-- 11阶灵珠 - 0.5%
	tAprilFoolsDayNPCpart_Reward["OnePieces"][5] = {}
	tAprilFoolsDayNPCpart_Reward["OnePieces"][5]["RandomItemChanceType"] = 2
	tAprilFoolsDayNPCpart_Reward["OnePieces"][5]["ItemChance"] = 50
	tAprilFoolsDayNPCpart_Reward["OnePieces"][5]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward["OnePieces"][5]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward["OnePieces"][5]["RewardItem"][1]["Id"] = 4200011 -- 11阶灵珠[4200011][属性:72][叠加:99][金币:0], 【表格】11阶灵珠
	tAprilFoolsDayNPCpart_Reward["OnePieces"][5]["RewardItem"][1]["Attr"] = "0 1" -- 11阶灵珠*1
	tAprilFoolsDayNPCpart_Reward["OnePieces"][5]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tAprilFoolsDayNPCpart_Reward["OnePieces"][5]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward["OnePieces"][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward["OnePieces"][5]["RewardEffect"]["Effect"] = "angelwing"
	tAprilFoolsDayNPCpart_Reward["OnePieces"][5]["RewardBroadCast"] = tAprilFoolsDayNPCpart_Text["Sys"]["BoxGetReward"]["Broadcast"][5] -- 全服公告
	tAprilFoolsDayNPCpart_Reward["OnePieces"][5]["RewardBroadCastType"] = 2007 -- 2005为【左上角】；2007为【左下角】


	tAprilFoolsDayNPCpart_Reward["NPC"] = {}
	-- ===从npc获得藏宝图
	-- ===索引: tAprilFoolsDayNPCpart_Reward["NPC"][26014]["TreasureMap"]
	-- ===LogStep: 1[1]
	tAprilFoolsDayNPCpart_Reward["NPC"][26014] = {}
	tAprilFoolsDayNPCpart_Reward["NPC"][26014]["TreasureMap"] = {}
	tAprilFoolsDayNPCpart_Reward["NPC"][26014]["TreasureMap"]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_Reward["NPC"][26014]["TreasureMap"]["LogStep"] = "1[1]"
	tAprilFoolsDayNPCpart_Reward["NPC"][26014]["TreasureMap"]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward["NPC"][26014]["TreasureMap"]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward["NPC"][26014]["TreasureMap"]["RewardItem"][1]["Id"] = 3600244 -- 藏宝图[3600244][属性:520][叠加:0][金币:0], 【表格】藏宝图（赠）
	tAprilFoolsDayNPCpart_Reward["NPC"][26014]["TreasureMap"]["RewardItem"][1]["Attr"] = "0 1 3" -- 藏宝图（赠）*1
	tAprilFoolsDayNPCpart_Reward["NPC"][26014]["TreasureMap"]["RewardNoNeedTip"] = 1
	tAprilFoolsDayNPCpart_Reward["NPC"][26014]["TreasureMap"]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward["NPC"][26014]["TreasureMap"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward["NPC"][26014]["TreasureMap"]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===主NPC引导任务完成 领取3个赠品藏宝图
	-- ===索引: tAprilFoolsDayNPCpart_Reward["NPC"][26014]["TaskReward"]
	-- ===LogStep: 1[2]
	tAprilFoolsDayNPCpart_Reward["NPC"][26014]["TaskReward"] = {}
	tAprilFoolsDayNPCpart_Reward["NPC"][26014]["TaskReward"]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_Reward["NPC"][26014]["TaskReward"]["LogStep"] = "1[2]"
	tAprilFoolsDayNPCpart_Reward["NPC"][26014]["TaskReward"]["RewardItem"] = {}
	tAprilFoolsDayNPCpart_Reward["NPC"][26014]["TaskReward"]["RewardItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward["NPC"][26014]["TaskReward"]["RewardItem"][1]["Id"] = 3600244 -- 藏宝图[3600244][属性:520][叠加:0][金币:0], 【表格】藏宝图（赠）
	tAprilFoolsDayNPCpart_Reward["NPC"][26014]["TaskReward"]["RewardItem"][1]["Attr"] = "0 3 3" -- 藏宝图（赠）*1
	tAprilFoolsDayNPCpart_Reward["NPC"][26014]["TaskReward"]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward["NPC"][26014]["TaskReward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward["NPC"][26014]["TaskReward"]["RewardEffect"]["Effect"] = "angelwing"

	tAprilFoolsDayNPCpart_Reward["TimeOut"] = {}
	-- ===过期删除红玛瑙 换10点气力值
	-- ===索引: tAprilFoolsDayNPCpart_Reward["TimeOut"][3315633]
	-- ===删除: 3315633,1
	-- ===LogStep: 1[10]
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315633] = {}
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315633]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315633]["LogStep"] = "1[10]"
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315633]["DeleteItem"] = {}
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315633]["DeleteItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315633]["DeleteItem"][1]["Id"] = 3315633 -- 【库】红玛瑙[属性:9]
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315633]["RewardStrengthValue"] = {}
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315633]["RewardStrengthValue"]["Value"] = 10 -- 气力值, 【需求】10点气力值
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315633]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315633]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315633]["RewardEffect"]["Effect"] = "angelwing"


	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315634] = {}
	-- ===过期删除蓝水晶 换10点气力值
	-- ===索引: tAprilFoolsDayNPCpart_Reward["TimeOut"][3315634]
	-- ===删除: 3315634,1
	-- ===LogStep: 1[10]
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315634]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315634]["LogStep"] = "1[10]"
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315634]["DeleteItem"] = {}
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315634]["DeleteItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315634]["DeleteItem"][1]["Id"] = 3315634 -- 【库】蓝水晶[属性:9]
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315634]["RewardStrengthValue"] = {}
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315634]["RewardStrengthValue"]["Value"] = 10 -- 气力值, 【需求】10点气力值
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315634]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315634]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315634]["RewardEffect"]["Effect"] = "angelwing"


	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315635] = {}
	-- ===过期删除黄宝石 换10点气力值
	-- ===索引: tAprilFoolsDayNPCpart_Reward["TimeOut"][3315635]
	-- ===删除: 3315635,1
	-- ===LogStep: 1[10]
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315635]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315635]["LogStep"] = "1[10]"
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315635]["DeleteItem"] = {}
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315635]["DeleteItem"][1] = {}
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315635]["DeleteItem"][1]["Id"] = 3315635 -- 【库】黄宝石[属性:9]
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315635]["RewardStrengthValue"] = {}
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315635]["RewardStrengthValue"]["Value"] = 10 -- 气力值, 【需求】10点气力值
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315635]["RewardEffect"] = {}
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315635]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDayNPCpart_Reward["TimeOut"][3315635]["RewardEffect"]["Effect"] = "angelwing"

-- 寻宝积分奖励的临时表
local tAprilFoolsDayNPCpart_TreasureReward = {}
	tAprilFoolsDayNPCpart_TreasureReward["Copy"] = {}
	tAprilFoolsDayNPCpart_TreasureReward["Copy"]["LogId"] = 12001894
	tAprilFoolsDayNPCpart_TreasureReward["Copy"]["LogStep"] = "1[3][1]"
	tAprilFoolsDayNPCpart_TreasureReward["Copy"]["RewardItem"] = {}
	
------------------------------------------------------------------------------------
----------------------【物品使用逻辑】--------------------------

function AprilFoolsDayNPCpart_DelOnePiecesItem(nAprilFoolsDayNPCpart_ItemId)
	local nAprilFoolsDayNPCpart_ItemNum = Get_CountItemType(nAprilFoolsDayNPCpart_ItemId,0)
	local tAprilFoolsDayNPCpart_TimeOutReward = CommonFunc_Copy(tAprilFoolsDayNPCpart_Reward["TimeOut"][nAprilFoolsDayNPCpart_ItemId])
		
	tAprilFoolsDayNPCpart_TimeOutReward["DeleteItem"][1]["ItemNum"] = nAprilFoolsDayNPCpart_ItemNum
	tAprilFoolsDayNPCpart_TimeOutReward["RewardStrengthValue"]["Value"] = 10 * nAprilFoolsDayNPCpart_ItemNum
	
	if not RewardTemplate_UseItemAndMsg(tAprilFoolsDayNPCpart_TimeOutReward) then
		return
	end
	
	User_TalkChannel2005(tAprilFoolsDayNPCpart_Text["Sys"]["PutInBox"]["TimeOut"])
end

-- one pieces 能量块寻路
-- 参1 物品id
function AprilFoolsDayNPCpart_OnePiecesItem(nAprilFoolsDayNPCpart_ItemId)
	local nAprilFoolsDayNPCpart_UserId = Get_UserId()

	-- 物品不存在
	if not Item_ChkMulItem(nAprilFoolsDayNPCpart_ItemId, nAprilFoolsDayNPCpart_ItemId, 1) then
		return
	end
	
	-- 不在活动时间内
	if not Sys_ChkFullTime(tAprilFoolsDayNPCpart_Cont["Time"]["ActivityTime"]) then
		AprilFoolsDayNPCpart_DelOnePiecesItem(nAprilFoolsDayNPCpart_ItemId)
		return
	end
	
	-- 玩家等级判断
	if not AprilFoolsDayNPCpart_LevelAndMeteLimit() then
		Sys_MsgBox(tAprilFoolsDayNPCpart_Text["Sys"]["LevelLimit"])
		return
	end
	
	local nAprilFoolsDayNPCpart_NpcId = tAprilFoolsDayNPCpart_Cont["NPC"][26015]["Id"]
	-- 活动时间内 寻路到副NPC
	NpcPosition_PathFind(nAprilFoolsDayNPCpart_NpcId)
end

-- one pieces 能量块合成
-- 参1 物品id
-- 参2 需要的物品数量
function AprilFoolsDayNPCpart_OnePiecesUse(nAprilFoolsDayNPCpart_ItemId,nAprilFoolsDayNPCpart_NeedNums)
	local nAprilFoolsDayNPCpart_UserId = Get_UserId()
	
	local sAprilFoolsDayNPCpart_ItemName = Get_ItemtypeName(nAprilFoolsDayNPCpart_ItemId)
	
	-- 不在活动时间内
	if not Sys_ChkFullTime(tAprilFoolsDayNPCpart_Cont["Time"]["ActivityTime"]) then
		AprilFoolsDayNPCpart_DelOnePiecesItem(nAprilFoolsDayNPCpart_ItemId)
		return
	end
	
	-- 玩家等级判断
	if not AprilFoolsDayNPCpart_LevelAndMeteLimit() then
		Sys_MsgBox(tAprilFoolsDayNPCpart_Text["Sys"]["LevelLimit"])
		return
	end
	
	-- 物品不存在
	if not Item_ChkMulItem(nAprilFoolsDayNPCpart_ItemId, nAprilFoolsDayNPCpart_ItemId, nAprilFoolsDayNPCpart_NeedNums) then
		Sys_MsgBox(string.format(tAprilFoolsDayNPCpart_Text["Sys"]["Compound"]["NoItem"],sAprilFoolsDayNPCpart_ItemName))
		return
	end
	
	-- 背包空间不足
	if not RewardTemplate_CheckSpace(tAprilFoolsDayNPCpart_Reward[nAprilFoolsDayNPCpart_ItemId]) then
		Sys_MsgBox(tAprilFoolsDayNPCpart_Text["Sys"]["Compound"]["NoSpace"])
		return
	end
	
	local bAprilFoolsDayNPCpart_Flag, sAprilFoolsDayNPCpart_RewardName = RewardTemplate_UseItem(tAprilFoolsDayNPCpart_Reward[nAprilFoolsDayNPCpart_ItemId])
	if bAprilFoolsDayNPCpart_Flag then
		User_TalkChannel2005(string.format(tAprilFoolsDayNPCpart_Text["Sys"]["Compound"]["Success"],sAprilFoolsDayNPCpart_RewardName))
	end
end

-- 寻宝积分奖励礼包、全球排行榜奖励礼包 使用逻辑
-- 3315636,'愚人礼盒' -- 3315637,'愚夫礼盒' -- 3315638,'愚者礼盒' -- 3315640,'智者礼盒' -- 3315641,'智囊礼盒'
-- 3315646,'圣人千虑礼盒' -- 3315647,'足智多谋礼盒' -- 3315648,'深谋远虑礼盒' -- 3315649,'大智若愚礼盒'
-- 参1 物品id
function AprilFoolsDayNPCpart_OpenPack(nAprilFoolsDayNPCpart_ItemId)
	local nAprilFoolsDayNPCpart_UserId = Get_UserId()
	
	-- 物品不存在
	if not Item_ChkMulItem(nAprilFoolsDayNPCpart_ItemId, nAprilFoolsDayNPCpart_ItemId, 1) then
		return
	end
	
	-- 玩家等级判断
	if not AprilFoolsDayNPCpart_LevelAndMeteLimit() then
		Sys_MsgBox(tAprilFoolsDayNPCpart_Text["Sys"]["LevelLimit"])
		return
	end
	
	if nAprilFoolsDayNPCpart_ItemId == 3315641 then
		if SpecialServer_ChkNoGiftServer() then
			-- 背包空间不足
			if not RewardTemplate_CheckSpace(tAprilFoolsDayNPCpart_Reward[nAprilFoolsDayNPCpart_ItemId][2]) then
				return
			end
			RewardTemplate_UseItemAndMsg(tAprilFoolsDayNPCpart_Reward[nAprilFoolsDayNPCpart_ItemId][2])
			return
		else
			-- 背包空间不足
			if not RewardTemplate_CheckSpace(tAprilFoolsDayNPCpart_Reward[nAprilFoolsDayNPCpart_ItemId][1]) then
				return
			end
			RewardTemplate_UseItemAndMsg(tAprilFoolsDayNPCpart_Reward[nAprilFoolsDayNPCpart_ItemId][1])
			return
		end
		return
	end
	
	-- 背包空间不足
	if not RewardTemplate_CheckSpace(tAprilFoolsDayNPCpart_Reward[nAprilFoolsDayNPCpart_ItemId]) then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tAprilFoolsDayNPCpart_Reward[nAprilFoolsDayNPCpart_ItemId])
end

-- 3315650,'5星外套可选礼盒' 使用逻辑
function AprilFoolsDayNPCpart_ChoosePack(nAprilFoolsDayNPCpart_ItemId, nAprilFoolsDayNPCpart_Index)
	local nAprilFoolsDayNPCpart_UserId = Get_UserId()
	
	-- 物品不存在
	if not Item_ChkMulItem(nAprilFoolsDayNPCpart_ItemId, nAprilFoolsDayNPCpart_ItemId, 1) then
		return
	end
	
	-- 玩家等级判断
	if not AprilFoolsDayNPCpart_LevelAndMeteLimit() then
		Sys_MsgBox(tAprilFoolsDayNPCpart_Text["Sys"]["LevelLimit"])
		return
	end
	
	-- 背包空间不足
	if not RewardTemplate_CheckSpace(tAprilFoolsDayNPCpart_Reward[nAprilFoolsDayNPCpart_ItemId][nAprilFoolsDayNPCpart_Index]) then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tAprilFoolsDayNPCpart_Reward[nAprilFoolsDayNPCpart_ItemId][nAprilFoolsDayNPCpart_Index])
end

-- 5000寻宝积分奖励 限制前30名可以领取灵珠
-- 3315639,'若愚礼盒'
function AprilFoolsDayNPCpart_LimitOpenPack(nAprilFoolsDayNPCpart_ItemId)
	local nAprilFoolsDayNPCpart_UserId = Get_UserId()
	
	-- 玩家等级判断
	if not AprilFoolsDayNPCpart_LevelAndMeteLimit() then
		Sys_MsgBox(tAprilFoolsDayNPCpart_Text["Sys"]["LevelLimit"])
		return
	end

	-- 物品不存在
	if not Item_ChkMulItem(nAprilFoolsDayNPCpart_ItemId, nAprilFoolsDayNPCpart_ItemId, 1) then
		return
	end
	
	local nAprilFoolsDayNPCpart_GlobalId = tAprilFoolsDayNPCpart_Cont["Global"][2]["Id"]
	-- 人数上限
	local nAprilFoolsDayNPCpart_Data0 = tAprilFoolsDayNPCpart_Cont["Global"][2]["Data0"]
	-- 当前领取的人数
	local nAprilFoolsDayNPCpart_NowData0 = Get_SysDynaGlobalData0(nAprilFoolsDayNPCpart_GlobalId)
	
	-- 前30名已领取
	if nAprilFoolsDayNPCpart_NowData0 >= nAprilFoolsDayNPCpart_Data0 then
		-- 背包空间不足
		if not RewardTemplate_CheckSpace(tAprilFoolsDayNPCpart_Reward[nAprilFoolsDayNPCpart_ItemId][2]) then
			return
		end
		RewardTemplate_UseItemAndMsg(tAprilFoolsDayNPCpart_Reward[nAprilFoolsDayNPCpart_ItemId][2])
		return
	end
	
	-- 背包空间不足
	if not RewardTemplate_CheckSpace(tAprilFoolsDayNPCpart_Reward[nAprilFoolsDayNPCpart_ItemId][1]) then
		return
	end
	
	if Sys_SetSynaGlobalData0(nAprilFoolsDayNPCpart_GlobalId,nAprilFoolsDayNPCpart_NowData0+1) then
		RewardTemplate_UseItemAndMsg(tAprilFoolsDayNPCpart_Reward[nAprilFoolsDayNPCpart_ItemId][1])
	end
end

-- 3315632,'鹅黄丝绒' 使用
function AprilFoolsDayNPCpart_ChangeItem(nAprilFoolsDayNPCpart_ItemId)
	local nAprilFoolsDayNPCpart_UserId = Get_UserId()

	-- 检测玩家是否有转换道具
	if not Item_ChkMulItem(nAprilFoolsDayNPCpart_ItemId, nAprilFoolsDayNPCpart_ItemId, 1) then
		return
	end
	
	-- 玩家等级判断
	if not AprilFoolsDayNPCpart_LevelAndMeteLimit() then
		Sys_MsgBox(tAprilFoolsDayNPCpart_Text["Sys"]["LevelLimit"])
		return
	end
	
	-- 七窍玲珑宝镜（差）id
	local nAprilFoolsDayNPCpart_NeedItemId = tAprilFoolsDayNPCpart_Cont["Item"]["ChangeItem"]["NeedItem"]
	
	local nAprilFoolsDayNPCpart_EquipId = Get_EquipIDByPos(7, nAprilFoolsDayNPCpart_UserId)
	local nAprilFoolsDayNPCpart_EquipItemId = Get_ItemType(nAprilFoolsDayNPCpart_EquipId)
	
	-- 玩家已装备 七窍玲珑宝镜（差）
	if nAprilFoolsDayNPCpart_EquipItemId == nAprilFoolsDayNPCpart_NeedItemId then
		Sys_MsgBox(tAprilFoolsDayNPCpart_Text["Sys"]["UseChangeItem"]["DressItem"])
		return
	end
	
	-- 检测玩家是否有 七窍玲珑宝镜（差）
	if not Item_ChkMulItem(nAprilFoolsDayNPCpart_NeedItemId, nAprilFoolsDayNPCpart_NeedItemId, 1) then
		Sys_MsgBox(tAprilFoolsDayNPCpart_Text["Sys"]["UseChangeItem"]["NoItem"])
		return
	end

	if not RewardTemplate_CheckSpace(tAprilFoolsDayNPCpart_Reward[nAprilFoolsDayNPCpart_ItemId]) then
		return
	end

	RewardTemplate_UseItemAndMsg(tAprilFoolsDayNPCpart_Reward[nAprilFoolsDayNPCpart_ItemId])
end


----------------------【NPC逻辑】--------------------------
-- 主NPC出首次对白逻辑
-- 参1 npcid
-- 返回值 true表示出过首对白 false表示未出
function AprilFoolsDayNPCpart_FirstDialog(nAprilFoolsDayNPCpart_NpcId)
	-- 玩家id
	local nAprilFoolsDayNPCpart_UserId = Get_UserId()
	-- 记录是否出过首对白的掩码
	local nAprilFoolsDayNPCpart_First_EventType = tAprilFoolsDayNPCpart_Cont["Stc"][1]["EventType"]
	local nAprilFoolsDayNPCpart_First_DataType = tAprilFoolsDayNPCpart_Cont["Stc"][1]["DataType"]
	-- 当前掩码值
	local nAprilFoolsDayNPCpart_First_TotalData = tAprilFoolsDayNPCpart_Cont["Stc"][1]["TotalData"]
	
	-- 掩码值大于1 表示已经打开首次对白
	if Task_ChkStcValue(nAprilFoolsDayNPCpart_First_EventType,nAprilFoolsDayNPCpart_First_DataType,">=",nAprilFoolsDayNPCpart_First_TotalData,nAprilFoolsDayNPCpart_UserId) then
		return true
	end
	
	return false
end

-- 第二次对白展示
-- 参1 npcid
function AprilFoolsDayNPCpart_SecondDialog(nAprilFoolsDayNPCpart_NpcId)
	-- 玩家id
	local nAprilFoolsDayNPCpart_UserId = Get_UserId()
	
	-- 获取玩家当前积分
	local nAprilFoolsDayNPCpart_Point = TreasurePlaying_GetStcValue(1)
	local nAprilFoolsDayNPCpart_Times = TreasurePlaying_GetStcValue(2)
	
	local sAprilFoolsDayNPCpart_Text146 = tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Text146"]
	local nAprilFoolsDayNPCpart_Title_Index = AprilFoolsDayNPCpart_WhitchTitle(nAprilFoolsDayNPCpart_Point)
	local sAprilFoolsDayNPCpart_Title = tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Title"][nAprilFoolsDayNPCpart_Title_Index]
	
	-- 积分次数均为0 不出领奖对白
	if nAprilFoolsDayNPCpart_Point <= 0 or nAprilFoolsDayNPCpart_Times <= 0 then
		tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text146"] = string.format(sAprilFoolsDayNPCpart_Text146,nAprilFoolsDayNPCpart_Point,sAprilFoolsDayNPCpart_Title)
		return true
	end
	
	local nAprilFoolsDayNPCpart_EventType = tAprilFoolsDayNPCpart_Cont["Stc"][8]["EventType"]
	local nAprilFoolsDayNPCpart_DataType = tAprilFoolsDayNPCpart_Cont["Stc"][8]["DataType"]
	local nAprilFoolsDayNPCpart_TotalData = tAprilFoolsDayNPCpart_Cont["Stc"][8]["TotalData"]
	
	-- 没有领取过 引导任务奖励 出领奖对白
	if not Task_ChkStcValue(nAprilFoolsDayNPCpart_EventType, nAprilFoolsDayNPCpart_DataType, ">=", nAprilFoolsDayNPCpart_TotalData) then
		return false
	end
	
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text146"] = string.format(sAprilFoolsDayNPCpart_Text146,nAprilFoolsDayNPCpart_Point,sAprilFoolsDayNPCpart_Title)
	return true
end

-- 领取 首次寻宝奖励
function AprilFoolsDayNPCpart_GetTaskReward(nAprilFoolsDayNPCpart_NpcId)
	local nAprilFoolsDayNPCpart_UserId = Get_UserId()
	
	-- 获取玩家当前积分
	local nAprilFoolsDayNPCpart_Point = TreasurePlaying_GetStcValue(1)
	local nAprilFoolsDayNPCpart_Times = TreasurePlaying_GetStcValue(2)
	
	-- 积分次数均为0 不允许领奖
	if nAprilFoolsDayNPCpart_Point <= 0 or nAprilFoolsDayNPCpart_Times <= 0 then
		return
	end
	
	local nAprilFoolsDayNPCpart_EventType = tAprilFoolsDayNPCpart_Cont["Stc"][8]["EventType"]
	local nAprilFoolsDayNPCpart_DataType = tAprilFoolsDayNPCpart_Cont["Stc"][8]["DataType"]
	local nAprilFoolsDayNPCpart_TotalData = tAprilFoolsDayNPCpart_Cont["Stc"][8]["TotalData"]
	
	-- 已经领取过
	if Task_ChkStcValue(nAprilFoolsDayNPCpart_EventType, nAprilFoolsDayNPCpart_DataType, ">=", nAprilFoolsDayNPCpart_TotalData) then
		return
	end
	
	local nAprilFoolsDayNPCpart_MapLimit = tAprilFoolsDayNPCpart_Cont["MapLimit"][1]
	local nAprilFoolsDayNPCpart_UserMapId = Get_UserMapId(nAprilFoolsDayNPCpart_UserId)
	
	-- 判断玩家是否在NPC旁边
	if SpecialServer_ChkNoGiftServer() then
		nAprilFoolsDayNPCpart_MapLimit = tAprilFoolsDayNPCpart_Cont["MapLimit"][2]
	end
	
	if nAprilFoolsDayNPCpart_UserMapId ~= nAprilFoolsDayNPCpart_MapLimit then
		return
	end
	
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tAprilFoolsDayNPCpart_Reward["NPC"][nAprilFoolsDayNPCpart_NpcId]["TaskReward"]) then
		return
	end
	
	if RewardTemplate_UseItemAndMsg(tAprilFoolsDayNPCpart_Reward["NPC"][nAprilFoolsDayNPCpart_NpcId]["TaskReward"]) then
		Task_SetStatistic(nAprilFoolsDayNPCpart_EventType, nAprilFoolsDayNPCpart_DataType, 1, 1, nAprilFoolsDayNPCpart_UserId)
		Task_SetStcTimestamp(nAprilFoolsDayNPCpart_EventType, nAprilFoolsDayNPCpart_DataType,0)
	end
	
	LinkNpcGossipFunc_New(nAprilFoolsDayNPCpart_NpcId,"1-4")
end

-- 判断玩家现在头衔
function AprilFoolsDayNPCpart_WhitchTitle(nAprilFoolsDayNPCpart_NowData)
	if nAprilFoolsDayNPCpart_NowData <= tAprilFoolsDayNPCpart_Cont["TreasureSocre"]["Title"][1] then
		-- 200分以下算一级头衔
		return 1
	elseif nAprilFoolsDayNPCpart_NowData <= tAprilFoolsDayNPCpart_Cont["TreasureSocre"]["Title"][2] then
		return 2
	elseif nAprilFoolsDayNPCpart_NowData <= tAprilFoolsDayNPCpart_Cont["TreasureSocre"]["Title"][3] then
		return 3
	elseif nAprilFoolsDayNPCpart_NowData <= tAprilFoolsDayNPCpart_Cont["TreasureSocre"]["Title"][4] then
		return 4
	elseif nAprilFoolsDayNPCpart_NowData <= tAprilFoolsDayNPCpart_Cont["TreasureSocre"]["Title"][5] then
		return 5
	elseif nAprilFoolsDayNPCpart_NowData > tAprilFoolsDayNPCpart_Cont["TreasureSocre"]["Title"][5] then
		return 6
	else
		-- 200分以下算一级头衔
		return 1
	end
	
	return 1
end

-- 首对白领取藏宝图
-- 参1 npcid
function AprilFoolsDayNPCpart_GetTreasurMap(nAprilFoolsDayNPCpart_NpcId)
	-- 玩家id
	local nAprilFoolsDayNPCpart_UserId = Get_UserId()
	
	-- 玩家等级判断
	if not AprilFoolsDayNPCpart_LevelAndMeteLimit() then
		Sys_MsgBox(tAprilFoolsDayNPCpart_Text["Sys"]["LevelLimit"])
		return
	end
	
	-- 不在活动时间内
	if not Sys_ChkFullTime(tAprilFoolsDayNPCpart_Cont["Time"]["ActivityTime"]) then
		return
	end
	
	local nAprilFoolsDayNPCpart_ItemId = tAprilFoolsDayNPCpart_Cont["Item"]["TreasureMap"]["Id"]
	
	-- 背包空间判断
	if not RewardTemplate_CheckSpace(tAprilFoolsDayNPCpart_Reward["NPC"][nAprilFoolsDayNPCpart_NpcId]["TreasureMap"]) then
		User_TalkChannel2005(tAprilFoolsDayNPCpart_Text["Sys"]["TreasureMap"]["NoSpace"])
		return
	end
	
	-- 记录是否出过首对白的掩码
	local nAprilFoolsDayNPCpart_First_EventType = tAprilFoolsDayNPCpart_Cont["Stc"][1]["EventType"]
	local nAprilFoolsDayNPCpart_First_DataType = tAprilFoolsDayNPCpart_Cont["Stc"][1]["DataType"]
	local nAprilFoolsDayNPCpart_First_TotalData = tAprilFoolsDayNPCpart_Cont["Stc"][1]["TotalData"]
	
	if Task_ChkStcValue(nAprilFoolsDayNPCpart_First_EventType, nAprilFoolsDayNPCpart_First_DataType, ">=", nAprilFoolsDayNPCpart_First_TotalData) then
		return
	end
	
	if Task_AddStatistic(nAprilFoolsDayNPCpart_First_EventType, nAprilFoolsDayNPCpart_First_DataType,nAprilFoolsDayNPCpart_First_TotalData,1) then
		Task_SetStcTimestamp(nAprilFoolsDayNPCpart_First_EventType, nAprilFoolsDayNPCpart_First_DataType,0)
	end
	
	AprilFoolsDayAtmosphere_TaskComplete()

	-- 获得藏宝图
	if RewardTemplate_UseItem(tAprilFoolsDayNPCpart_Reward["NPC"][nAprilFoolsDayNPCpart_NpcId]["TreasureMap"]) then
		User_TalkChannel2005(tAprilFoolsDayNPCpart_Text["Sys"]["TreasureMap"]["GetSuccess"])
		Sys_MsgBox(tAprilFoolsDayNPCpart_Text["Sys"]["TreasureMap"]["GetSuccess"])
	end
	
	-- 弹出物品快捷使用
	Item_DialogByType(nAprilFoolsDayNPCpart_ItemId, tAprilFoolsDayNPCpart_Text["Sys"]["UseItem"], "TreasurePlaying_UseItem</N>"..nAprilFoolsDayNPCpart_ItemId, nil, nAprilFoolsDayNPCpart_UserId)
end

-- 玩家选择开启十连寻宝 逻辑
-- 参1 npcid
function AprilFoolsDayNPCpart_IsOpenTreasureHunt(nAprilFoolsDayNPCpart_NpcId)
	local nAprilFoolsDayNPCpart_UserId = Get_UserId()

	-- 玩家等级判断
	if not AprilFoolsDayNPCpart_LevelAndMeteLimit() then
		Sys_MsgBox(tAprilFoolsDayNPCpart_Text["Sys"]["LevelLimit"])
		return
	end
	
	-- 不在活动时间内
	if not Sys_ChkFullTime(tAprilFoolsDayNPCpart_Cont["Time"]["ActivityTime"]) then
		return
	end
	
	local nAprilFoolsDayNPCpart_EventType = tAprilFoolsDayNPCpart_Cont["Stc"][2]["EventType"]
	local nAprilFoolsDayNPCpart_DataType = tAprilFoolsDayNPCpart_Cont["Stc"][2]["DataType"]
	
	-- 玩家当前寻宝次数的掩码值
	local nAprilFoolsDayNPCpart_Treasure_NowData = TreasurePlaying_GetStcValue(2)
	
	-- 需要的最大寻宝次数
	local nAprilFoolsDayNPCpart_Treasure_TotalData = tAprilFoolsDayNPCpart_Cont["Stc"][2]["TotalData"]
	
	-- 判断是否已经寻宝15次 当前掩码值大于需要的最大寻宝次数
	if nAprilFoolsDayNPCpart_Treasure_TotalData > nAprilFoolsDayNPCpart_Treasure_NowData then
		Sys_MsgBox(string.format(tAprilFoolsDayNPCpart_Text["Sys"]["TenTimes"]["TimesNotEnough"],nAprilFoolsDayNPCpart_Treasure_NowData))
		return
	end
	-- 跳转对白
	LinkNpcGossipFunc_New(nAprilFoolsDayNPCpart_NpcId, "3-1")
end

function AprilFoolsDayNPCpart_ItemOrEMoney()
	local nAprilFoolsDayNPCpart_UserId = Get_UserId()
	local nAprilFoolsDayNPCpart_Treasure_ItemId = tAprilFoolsDayNPCpart_Cont["Item"]["TreasureMap"]["Id"]
	local nAprilFoolsDayNPCpart_Treasure_NeedNums = tAprilFoolsDayNPCpart_Cont["TenTreasure"]["NeedNums"]

	-- 十连寻宝需要的 天石数量
	local nAprilFoolsDayNPCpart_Treasure_NeedEMoney = tAprilFoolsDayNPCpart_Cont["TenTreasure"]["NeedEMoney"]
	local sAprilFoolsDayNPCpart_Treasure_EMeonyBuyLog = tAprilFoolsDayNPCpart_Cont["Log"]["EMoneyBuyLog"]
	
	-- 有10张藏宝图
	if Item_ChkMulItem(nAprilFoolsDayNPCpart_Treasure_ItemId, nAprilFoolsDayNPCpart_Treasure_ItemId, nAprilFoolsDayNPCpart_Treasure_NeedNums) then
		return 1
	end
	
	-- 玩家天石足够
	if Get_UserEMoney(nAprilFoolsDayNPCpart_UserId) >= nAprilFoolsDayNPCpart_Treasure_NeedEMoney then
		return 2
	end
	
	-- 物品不足
	return nil
end

-- 确认开启十连寻宝【二次确认】
-- 参1 npcid
function AprilFoolsDayNPCpart_OpenTreasureHuntConfirm(nAprilFoolsDayNPCpart_NpcId,nAprilFoolsDayNPCpart_Index )
	local nAprilFoolsDayNPCpart_UserId = Get_UserId()
	
	if not Sys_ChkFullTime(tAprilFoolsDayNPCpart_Cont["Time"]["ActivityTime"]) then
		return
	end
	
	-- 玩家等级判断
	if not AprilFoolsDayNPCpart_LevelAndMeteLimit() then
		Sys_MsgBox(tAprilFoolsDayNPCpart_Text["Sys"]["LevelLimit"])
		return
	end
	
	-- 不在活动时间内
	if not Sys_ChkFullTime(tAprilFoolsDayNPCpart_Cont["Time"]["ActivityTime"]) then
		return
	end

	local nAprilFoolsDayNPCpart_EventType = tAprilFoolsDayNPCpart_Cont["Stc"][2]["EventType"]
	local nAprilFoolsDayNPCpart_DataType = tAprilFoolsDayNPCpart_Cont["Stc"][2]["DataType"]

	-- 玩家当前寻宝次数的掩码值
	local nAprilFoolsDayNPCpart_Treasure_NowData = TreasurePlaying_GetStcValue(2)

	local nAprilFoolsDayNPCpart_Point_EventType = tAprilFoolsDayNPCpart_Cont["Stc"][3]["EventType"]
	local nAprilFoolsDayNPCpart_Point_DataType = tAprilFoolsDayNPCpart_Cont["Stc"][3]["DataType"]
	local nAprilFoolsDayNPCpart_Point_AddPoint = tAprilFoolsDayNPCpart_Cont["TenTreasure"]["AddPoint"]

	
	-- 需要的最大寻宝次数
	local nAprilFoolsDayNPCpart_Treasure_TotalData = tAprilFoolsDayNPCpart_Cont["Stc"][2]["TotalData"]
	
	-- 判断是否已经寻宝15次 当前掩码值大于需要的最大寻宝次数
	if nAprilFoolsDayNPCpart_Treasure_TotalData > nAprilFoolsDayNPCpart_Treasure_NowData then
		Sys_MsgBox(tAprilFoolsDayNPCpart_Text["Sys"]["TenTimes"]["TimesNotEnough"])
		return
	end

	-- 十连寻宝需要的 藏宝图数量
	local nAprilFoolsDayNPCpart_Treasure_ItemId = tAprilFoolsDayNPCpart_Cont["Item"]["TreasureMap"]["Id"]
	local nAprilFoolsDayNPCpart_Treasure_NeedNums = tAprilFoolsDayNPCpart_Cont["TenTreasure"]["NeedNums"]

	-- 十连寻宝需要的 天石数量
	local nAprilFoolsDayNPCpart_Treasure_NeedEMoney = tAprilFoolsDayNPCpart_Cont["TenTreasure"]["NeedEMoney"]
	local sAprilFoolsDayNPCpart_Treasure_EMeonyBuyLog = tAprilFoolsDayNPCpart_Cont["Log"]["EMoneyBuyLog"]
	
	-- 1 表示 使用道具进行十连
	if nAprilFoolsDayNPCpart_Index == 1 then
		if not Item_ChkMulItem(nAprilFoolsDayNPCpart_Treasure_ItemId, nAprilFoolsDayNPCpart_Treasure_ItemId, nAprilFoolsDayNPCpart_Treasure_NeedNums) then
			Sys_MsgBox(tAprilFoolsDayNPCpart_Text["Sys"]["TenTimes"]["NoItem"])
			return
		end
	-- 2 表示 使用天石进行十连
	elseif nAprilFoolsDayNPCpart_Index == 2 then
		if Get_UserEMoney(nAprilFoolsDayNPCpart_UserId) < nAprilFoolsDayNPCpart_Treasure_NeedEMoney then
			Sys_MsgBox(tAprilFoolsDayNPCpart_Text["Sys"]["TenTimes"]["NoEmoney"])
			return
		end
	else
		return
	end
	
	local nAprilFoolsDayNPCpart_Random_NeedTimes = tAprilFoolsDayNPCpart_Cont["TenTreasure"]["NeedTimes"]
	local tAprilFoolsDayNPCpart_Random_Index = {}

	-- for循环获取十次的随机事件 -- 返回值 1-4
	for i = 1, nAprilFoolsDayNPCpart_Random_NeedTimes do
		table.insert(tAprilFoolsDayNPCpart_Random_Index,TreasurePlaying_GetIncident())
	end
	
	if #tAprilFoolsDayNPCpart_Random_Index == 0 then
		return
	end
	
	-- 获取奖励需要的所有背包空间
	local nAprilFoolsDayNPCpart_Space = tAprilFoolsDayNPCpart_Cont["TenTreasure"]["NeedSpace"]
	-- local nAprilFoolsDayNPCpart_Space = 0
	-- for i = 1, nAprilFoolsDayNPCpart_Random_NeedTimes do
		-- local nAprilFoolsDayNPCpart_Random_Index = tAprilFoolsDayNPCpart_Random_Index[i]
		-- nAprilFoolsDayNPCpart_Space = nAprilFoolsDayNPCpart_Space + TreasureMapReward_JubBagTen(nAprilFoolsDayNPCpart_Random_Index)
	-- end
	
	-- 背包空间判断
	if not User_CheckLeftSpace(nAprilFoolsDayNPCpart_Space, nAprilFoolsDayNPCpart_UserId) then
		Sys_MsgBox(string.format(tAprilFoolsDayNPCpart_Text["Sys"]["TenTimes"]["NoSpace"],nAprilFoolsDayNPCpart_Space))
		return
	end
	
	if nAprilFoolsDayNPCpart_Index == 1 then
		if not Item_ChkMulItem(nAprilFoolsDayNPCpart_Treasure_ItemId, nAprilFoolsDayNPCpart_Treasure_ItemId, nAprilFoolsDayNPCpart_Treasure_NeedNums) then
			Sys_MsgBox(tAprilFoolsDayNPCpart_Text["Sys"]["TenTimes"]["NoItem"])
			return
		end
		
		if not Item_DelMulItem(nAprilFoolsDayNPCpart_Treasure_ItemId, nAprilFoolsDayNPCpart_Treasure_ItemId, nAprilFoolsDayNPCpart_Treasure_NeedNums) then
			return
		end
		
		Sys_SaveActionRewardLog(string.format(tAprilFoolsDayNPCpart_Cont["Log"]["TenTimesDeleteItem"],nAprilFoolsDayNPCpart_Treasure_ItemId,nAprilFoolsDayNPCpart_Treasure_NeedNums))
		
	elseif nAprilFoolsDayNPCpart_Index == 2 then
		
		if Get_UserEMoney(nAprilFoolsDayNPCpart_UserId) < nAprilFoolsDayNPCpart_Treasure_NeedEMoney then
			Sys_MsgBox(tAprilFoolsDayNPCpart_Text["Sys"]["TenTimes"]["NoEmoney"])
			return
		end
		
		-- 扣除玩家天石 记录EMoneybuy
		if not User_AddEMoney(-nAprilFoolsDayNPCpart_Treasure_NeedEMoney,nAprilFoolsDayNPCpart_UserId) then
			return
		end
		
		-- 记录EMoneyBuy log
		Sys_SaveEmoneyBuy(string.format(sAprilFoolsDayNPCpart_Treasure_EMeonyBuyLog,nAprilFoolsDayNPCpart_Treasure_NeedEMoney,nAprilFoolsDayNPCpart_Treasure_NeedEMoney),nAprilFoolsDayNPCpart_UserId)
		Sys_SaveActionRewardLog(string.format(tAprilFoolsDayNPCpart_Cont["Log"]["TenTimesDeleteEmoney"],nAprilFoolsDayNPCpart_Treasure_NeedEMoney),nAprilFoolsDayNPCpart_UserId)
	else
		return
	end
	
	-- 直接给给奖励
	for i = 1, nAprilFoolsDayNPCpart_Random_NeedTimes do
		TreasureMapReward_GetItem(tAprilFoolsDayNPCpart_Random_Index[i],true)
	end
	
	
	for i = 1, nAprilFoolsDayNPCpart_Random_NeedTimes do
		local nAprilFoolsDayNPCpart_Random_TextIndex = tAprilFoolsDayNPCpart_Random_Index[i]
		tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text34"..i] = string.format(tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Text34"..i],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["TenTimes"][nAprilFoolsDayNPCpart_Random_TextIndex][1],tAprilFoolsDayNPCpart_Text[26014]["TenTimes"][nAprilFoolsDayNPCpart_Random_TextIndex][2])
	end
	
	LinkNpcGossipFunc_New(nAprilFoolsDayNPCpart_NpcId, "3-4")
	
	-- 重新计算玩家积分
	if Task_AddStatistic(nAprilFoolsDayNPCpart_Point_EventType, nAprilFoolsDayNPCpart_Point_DataType, nAprilFoolsDayNPCpart_Point_AddPoint, 1) then
		Task_SetStcTimestamp(nAprilFoolsDayNPCpart_Point_EventType, nAprilFoolsDayNPCpart_Point_DataType, 0)
	end
	TreasurePlaying_ChkAddEffect()
	TreasureMapReward_Update()
end

-- 点击跳转线下页面
-- 参1 npcid
function AprilFoolsDayNPCpart_OpenWeb(nAprilFoolsDayNPCpart_NpcId)
	local nAprilFoolsDayNPCpart_UserId = Get_UserId()
	
	-- 活动时间判断
	if not Sys_ChkFullTime(tAprilFoolsDayNPCpart_Cont["Time"]["ActivityTime"]) then
		return
	end
	
	local sAprilFoolsDayNPCpart_Web = tAprilFoolsDayNPCpart_Cont["Web"]
	User_SendWebDialog(sAprilFoolsDayNPCpart_Web,nAprilFoolsDayNPCpart_UserId)
end

-- 判断玩家现在最高可以领取哪一档次奖励
function AprilFoolsDayNPCpart_WhitchReward(nAprilFoolsDayNPCpart_Point_Now)
	if nAprilFoolsDayNPCpart_Point_Now < tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["NeedPoint"][1] then
		-- 无可领取奖励
		return nil
	elseif nAprilFoolsDayNPCpart_Point_Now < tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["NeedPoint"][2] then
		return 1
	elseif nAprilFoolsDayNPCpart_Point_Now < tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["NeedPoint"][3] then
		return 2
	elseif nAprilFoolsDayNPCpart_Point_Now < tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["NeedPoint"][4] then
		return 3
	elseif nAprilFoolsDayNPCpart_Point_Now < tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["NeedPoint"][5] then
		return 4
	elseif nAprilFoolsDayNPCpart_Point_Now < tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["NeedPoint"][6] then
		return 5
	elseif nAprilFoolsDayNPCpart_Point_Now >= tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["NeedPoint"][6] then
		return 6
	else
		-- 无可领取奖励
		return nil
	end
	
	return nil
end

-- 领取积分奖励 逻辑
-- 参1 npcid
function AprilFoolsDayNPCpart_GetTreasureReward(nAprilFoolsDayNPCpart_NpcId)
	local nAprilFoolsDayNPCpart_UserId = Get_UserId()
	
	-- 活动时间判断 积分奖励延长三天领取时间
	if not Sys_ChkFullTime(tAprilFoolsDayNPCpart_Cont["Time"]["NpcActivityTime"]) then
		return
	end

	-- 玩家等级判断
	if not AprilFoolsDayNPCpart_LevelAndMeteLimit() then
		Sys_MsgBox(tAprilFoolsDayNPCpart_Text["Sys"]["LevelLimit"])
		return
	end
	
	local nAprilFoolsDayNPCpart_Point_EventType = tAprilFoolsDayNPCpart_Cont["Stc"][3]["EventType"]
	local nAprilFoolsDayNPCpart_Point_DataType = tAprilFoolsDayNPCpart_Cont["Stc"][3]["DataType"]
	
	-- 获取玩家当前掩码值 - 积分
	local nAprilFoolsDayNPCpart_Point_Now = TreasurePlaying_GetStcValue(1)
	
	-- 玩家领取奖励的掩码
	local nAprilFoolsDayNPCpart_Reward_EventType = tAprilFoolsDayNPCpart_Cont["Stc"][4]["EventType"]
	local nAprilFoolsDayNPCpart_Reward_DataType = tAprilFoolsDayNPCpart_Cont["Stc"][4]["DataType"]
	-- 玩家当前掩码值 - 已领过的奖励对应值
	local nAprilFoolsDayNPCpart_Reward_Now = Get_UserStatisticValue(nAprilFoolsDayNPCpart_Reward_EventType,nAprilFoolsDayNPCpart_Reward_DataType,nAprilFoolsDayNPCpart_UserId)
	
	local nAprilFoolsDayNPCpart_Reward_All = 0
	
	-- 所有奖励都已领取
	for i,v in ipairs(tAprilFoolsDayNPCpart_Cont["Stc"][4]["TotalData"]) do
		nAprilFoolsDayNPCpart_Reward_All = nAprilFoolsDayNPCpart_Reward_All + v
	end
	
	if nAprilFoolsDayNPCpart_Reward_Now == nAprilFoolsDayNPCpart_Reward_All then
		Sys_MsgBox(tAprilFoolsDayNPCpart_Text["Sys"]["TreasureReward"]["PointNotEnough"])
		return
	end
	
	-- 玩家当前积分对应的奖励档次 1-6
	local nAprilFoolsDayNPCpart_Reward_Index = AprilFoolsDayNPCpart_WhitchReward(nAprilFoolsDayNPCpart_Point_Now)
	
	-- 条件判断
	if nAprilFoolsDayNPCpart_Reward_Index == nil or nAprilFoolsDayNPCpart_Reward_Index == 0 then
		Sys_MsgBox(tAprilFoolsDayNPCpart_Text["Sys"]["TreasureReward"]["PointNotEnough"])
		return
	end
	
	-- 玩家当前未领取的奖励 对应的档次
	local tAprilFoolsDayNPCpart_Reward_NoGet = {}
	
	-- 获取玩家当前哪些档次的奖励未领取
	for i = 1, nAprilFoolsDayNPCpart_Reward_Index do
		-- 领取该奖励需要的奖励掩码
		local nAprilFoolsDayNPCpart_Reward_Need = tAprilFoolsDayNPCpart_Cont["Stc"][4]["TotalData"][i]
		-- 判断奖励掩码是否打上
		if not Sys_ParseNumbersContain(nAprilFoolsDayNPCpart_Reward_Need,nAprilFoolsDayNPCpart_Reward_Now) then
			-- 当前积分奖励未领取 插入奖励档次存储表 1-6
			table.insert(tAprilFoolsDayNPCpart_Reward_NoGet,nAprilFoolsDayNPCpart_Reward_Need)
		end
	end
	
	if #tAprilFoolsDayNPCpart_Reward_NoGet == 0 then
		Sys_MsgBox(tAprilFoolsDayNPCpart_Text["Sys"]["TreasureReward"]["PointNotEnough"])
		return
	end
	
	-- 复制临时奖励表
	local tAprilFoolsDayNPCpart_Reward_User = CommonFunc_Copy(tAprilFoolsDayNPCpart_TreasureReward["Copy"])
	
	-- 循环创建玩家奖励表
	for i,v in ipairs(tAprilFoolsDayNPCpart_Reward_NoGet) do
		tAprilFoolsDayNPCpart_Reward_User["RewardItem"][i] = {}
		tAprilFoolsDayNPCpart_Reward_User["RewardItem"][i]["Id"] = tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["PointAndItemId"][v]
		tAprilFoolsDayNPCpart_Reward_User["RewardItem"][i]["Attr"] = "0 1"
	end
	
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tAprilFoolsDayNPCpart_Reward_User) then
		return
	end
	
	-- for循环记录玩家掩码
	for i,v in ipairs(tAprilFoolsDayNPCpart_Reward_NoGet) do
		-- 记录玩家领取的奖励掩码
		if Task_AddStatistic(nAprilFoolsDayNPCpart_Reward_EventType,nAprilFoolsDayNPCpart_Reward_DataType,v,1) then
			Task_SetStcTimestamp(nAprilFoolsDayNPCpart_Reward_EventType,nAprilFoolsDayNPCpart_Reward_DataType,0)
		else
			return
		end
	end
	
	-- 给玩家奖励
	if RewardTemplate_UseItemAndMsg(tAprilFoolsDayNPCpart_Reward_User) then
		LinkNpcGossipFunc_New(nAprilFoolsDayNPCpart_NpcId, "4-2")
	end
end

-- 潘多拉宝盒 判断格子是否全部填满
-- 参1 npcid
-- 返回值 true 全填满 false 未填满
function AprilFoolsDayNPCpart_IsPunInAll(nAprilFoolsDayNPCpart_NpcId)
	local nAprilFoolsDayNPCpart_UserId = Get_UserId()
	
	-- 填满所有格子需要的掩码值
	local nAprilFoolsDayNPCpart_PutIn_TotalData = 0
	
	for i,v in ipairs(tAprilFoolsDayNPCpart_Cont["Stc"][5]["TotalData"]) do
		nAprilFoolsDayNPCpart_PutIn_TotalData = nAprilFoolsDayNPCpart_PutIn_TotalData + v
	end

	if nAprilFoolsDayNPCpart_PutIn_TotalData == 0 then
		return false
	end
	
	-- 记录玩家上交能量块状况的掩码
	local nAprilFoolsDayNPCpart_PutIn_EventType = tAprilFoolsDayNPCpart_Cont["Stc"][5]["EventType"]
	local nAprilFoolsDayNPCpart_PutIn_DataType = tAprilFoolsDayNPCpart_Cont["Stc"][5]["DataType"]
	-- 玩家当前掩码值
	local nAprilFoolsDayNPCpart_PutIn_NowData = Get_UserStatisticValue(nAprilFoolsDayNPCpart_PutIn_EventType,nAprilFoolsDayNPCpart_PutIn_DataType)
	
	-- 判断格子是否填满 玩家当前掩码大于填满所有格子需要的掩码值 表示填满
	if nAprilFoolsDayNPCpart_PutIn_NowData >= nAprilFoolsDayNPCpart_PutIn_TotalData then
		return true
	end
	
	return false
end

-- 未填满的对白显示
function AprilFoolsDayNPCpart_NoPutIn(nAprilFoolsDayNPCpart_NpcId)
	local nAprilFoolsDayNPCpart_UserId = Get_UserId()
	if AprilFoolsDayNPCpart_IsPunInAll(nAprilFoolsDayNPCpart_NpcId) then
		return
	end
	
	-- 对白清空
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text1411"] = ""
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text1412"] = ""
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text1413"] = ""
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text1414"] = ""
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text1415"] = ""
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text1416"] = ""
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text1417"] = ""
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text1418"] = ""
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text1419"] = ""
	
	-- 记录玩家上交能量块状况的掩码
	local nAprilFoolsDayNPCpart_PutIn_EventType = tAprilFoolsDayNPCpart_Cont["Stc"][5]["EventType"]
	local nAprilFoolsDayNPCpart_PutIn_DataType = tAprilFoolsDayNPCpart_Cont["Stc"][5]["DataType"]
	-- 玩家当前掩码值
	local nAprilFoolsDayNPCpart_PutIn_NowData = Get_UserStatisticValue(nAprilFoolsDayNPCpart_PutIn_EventType,nAprilFoolsDayNPCpart_PutIn_DataType)
	
	-- 玩家是否填满的表记录 -- 用于颜色表现
	local tAprilFoolsDayNPCpart_PutIn_Color = {}
	-- 记录该格子是否填满 1 表示未填满 灰色 2表示填满 彩色
	local tAprilFoolsDayNPCpart_PutIn_IsFull = {}
	
	for i, v in ipairs(tAprilFoolsDayNPCpart_Cont["Stc"][5]["TotalData"]) do
		if Sys_ParseNumbersContain(v, nAprilFoolsDayNPCpart_PutIn_NowData) then
			table.insert(tAprilFoolsDayNPCpart_PutIn_Color, v)
			table.insert(tAprilFoolsDayNPCpart_PutIn_IsFull, 2)
		else
			table.insert(tAprilFoolsDayNPCpart_PutIn_Color, v)
			table.insert(tAprilFoolsDayNPCpart_PutIn_IsFull, 1)
		end
	end
	
	if #tAprilFoolsDayNPCpart_PutIn_Color == 0 then
		return
	end
	
	if #tAprilFoolsDayNPCpart_PutIn_IsFull == 0 then
		return
	end
	
	local sAprilFoolsDayNPCpart_Text1411 = tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Text1411"]
	local sAprilFoolsDayNPCpart_Text1412 = tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Text1412"]
	local sAprilFoolsDayNPCpart_Text1413 = tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Text1413"]
	local sAprilFoolsDayNPCpart_Text1414 = tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Text1414"]
	local sAprilFoolsDayNPCpart_Text1415 = tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Text1415"]
	local sAprilFoolsDayNPCpart_Text1416 = tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Text1416"]
	local sAprilFoolsDayNPCpart_Text1417 = tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Text1417"]
	local sAprilFoolsDayNPCpart_Text1418 = tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Text1418"]
	local sAprilFoolsDayNPCpart_Text1419 = tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Text1419"]
	
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text1411"] = string.format(sAprilFoolsDayNPCpart_Text1411,tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Color"][tAprilFoolsDayNPCpart_PutIn_IsFull[1]][tAprilFoolsDayNPCpart_PutIn_Color[1]][1],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Color"][tAprilFoolsDayNPCpart_PutIn_IsFull[2]][tAprilFoolsDayNPCpart_PutIn_Color[2]][1],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Color"][tAprilFoolsDayNPCpart_PutIn_IsFull[3]][tAprilFoolsDayNPCpart_PutIn_Color[3]][1])
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text1412"] = string.format(sAprilFoolsDayNPCpart_Text1412,tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Color"][tAprilFoolsDayNPCpart_PutIn_IsFull[1]][tAprilFoolsDayNPCpart_PutIn_Color[1]][2],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Color"][tAprilFoolsDayNPCpart_PutIn_IsFull[2]][tAprilFoolsDayNPCpart_PutIn_Color[2]][2],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Color"][tAprilFoolsDayNPCpart_PutIn_IsFull[3]][tAprilFoolsDayNPCpart_PutIn_Color[3]][2])
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text1413"] = string.format(sAprilFoolsDayNPCpart_Text1413,tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Color"][tAprilFoolsDayNPCpart_PutIn_IsFull[1]][tAprilFoolsDayNPCpart_PutIn_Color[1]][3],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Color"][tAprilFoolsDayNPCpart_PutIn_IsFull[2]][tAprilFoolsDayNPCpart_PutIn_Color[2]][3],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Color"][tAprilFoolsDayNPCpart_PutIn_IsFull[3]][tAprilFoolsDayNPCpart_PutIn_Color[3]][3])
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text1414"] = string.format(sAprilFoolsDayNPCpart_Text1414,tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Color"][tAprilFoolsDayNPCpart_PutIn_IsFull[4]][tAprilFoolsDayNPCpart_PutIn_Color[4]][1],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Color"][tAprilFoolsDayNPCpart_PutIn_IsFull[5]][tAprilFoolsDayNPCpart_PutIn_Color[5]][1],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Color"][tAprilFoolsDayNPCpart_PutIn_IsFull[6]][tAprilFoolsDayNPCpart_PutIn_Color[6]][1])
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text1415"] = string.format(sAprilFoolsDayNPCpart_Text1415,tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Color"][tAprilFoolsDayNPCpart_PutIn_IsFull[4]][tAprilFoolsDayNPCpart_PutIn_Color[4]][2],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Color"][tAprilFoolsDayNPCpart_PutIn_IsFull[5]][tAprilFoolsDayNPCpart_PutIn_Color[5]][2],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Color"][tAprilFoolsDayNPCpart_PutIn_IsFull[6]][tAprilFoolsDayNPCpart_PutIn_Color[6]][2])
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text1416"] = string.format(sAprilFoolsDayNPCpart_Text1416,tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Color"][tAprilFoolsDayNPCpart_PutIn_IsFull[4]][tAprilFoolsDayNPCpart_PutIn_Color[4]][3],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Color"][tAprilFoolsDayNPCpart_PutIn_IsFull[5]][tAprilFoolsDayNPCpart_PutIn_Color[5]][3],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Color"][tAprilFoolsDayNPCpart_PutIn_IsFull[6]][tAprilFoolsDayNPCpart_PutIn_Color[6]][3])
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text1417"] = string.format(sAprilFoolsDayNPCpart_Text1417,tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Color"][tAprilFoolsDayNPCpart_PutIn_IsFull[7]][tAprilFoolsDayNPCpart_PutIn_Color[7]][1],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Color"][tAprilFoolsDayNPCpart_PutIn_IsFull[8]][tAprilFoolsDayNPCpart_PutIn_Color[8]][1],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Color"][tAprilFoolsDayNPCpart_PutIn_IsFull[9]][tAprilFoolsDayNPCpart_PutIn_Color[9]][1])
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text1418"] = string.format(sAprilFoolsDayNPCpart_Text1418,tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Color"][tAprilFoolsDayNPCpart_PutIn_IsFull[7]][tAprilFoolsDayNPCpart_PutIn_Color[7]][2],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Color"][tAprilFoolsDayNPCpart_PutIn_IsFull[8]][tAprilFoolsDayNPCpart_PutIn_Color[8]][2],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Color"][tAprilFoolsDayNPCpart_PutIn_IsFull[9]][tAprilFoolsDayNPCpart_PutIn_Color[9]][2])
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text1419"] = string.format(sAprilFoolsDayNPCpart_Text1419,tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Color"][tAprilFoolsDayNPCpart_PutIn_IsFull[7]][tAprilFoolsDayNPCpart_PutIn_Color[7]][3],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Color"][tAprilFoolsDayNPCpart_PutIn_IsFull[8]][tAprilFoolsDayNPCpart_PutIn_Color[8]][3],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Color"][tAprilFoolsDayNPCpart_PutIn_IsFull[9]][tAprilFoolsDayNPCpart_PutIn_Color[9]][3])
end

-- 玩家要上交的物品数量是否足够
-- 参1 上交的格子编号
-- 返回值 是否可以上交 上交物品id 上交物品数量
function AprilFoolsDayNPCpart_ItemIsEnough(nAprilFoolsDayNPCpart_HandIn_Index)
	-- 获取玩家要上交的物品id
	local nAprilFoolsDayNPCpart_HandIn_ItemId = tAprilFoolsDayNPCpart_Cont["HandIn"]["NeedData"][nAprilFoolsDayNPCpart_HandIn_Index][1]
	-- 获取玩家上交物品需要的数量
	local nAprilFoolsDayNPCpart_HandIn_NeedNums = tAprilFoolsDayNPCpart_Cont["HandIn"]["NeedData"][nAprilFoolsDayNPCpart_HandIn_Index][2]
	-- 获取道具名
	-- local sAprilFoolsDayNPCpart_HandIn_ItemName = Get_ItemtypeName(nAprilFoolsDayNPCpart_HandIn_ItemId)
	
	-- 上交物品数量不足
	if not Item_ChkMulItem(nAprilFoolsDayNPCpart_HandIn_ItemId, nAprilFoolsDayNPCpart_HandIn_ItemId, nAprilFoolsDayNPCpart_HandIn_NeedNums) then
		return false, nAprilFoolsDayNPCpart_HandIn_ItemId, nAprilFoolsDayNPCpart_HandIn_NeedNums
	end
	
	return true, nAprilFoolsDayNPCpart_HandIn_ItemId, nAprilFoolsDayNPCpart_HandIn_NeedNums
end

-- 玩家上交道具
-- 参1 npcid
-- 参2 对白下标
-- 参3 玩家要上交的格子编号
function AprilFoolsDayNPCpart_HandInItem(nAprilFoolsDayNPCpart_NpcId, nAprilFoolsDayNPCpart_HandIn_Str, nAprilFoolsDayNPCpart_HandIn_Index)
	local nAprilFoolsDayNPCpart_UserId = Get_UserId()
	
	-- 活动时间判断
	if not Sys_ChkFullTime(tAprilFoolsDayNPCpart_Cont["Time"]["ActivityTime"]) then
		return
	end

	-- 玩家等级判断
	if not AprilFoolsDayNPCpart_LevelAndMeteLimit() then
		Sys_MsgBox(tAprilFoolsDayNPCpart_Text["Sys"]["LevelLimit"])
		return
	end
	
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text212"] = ""
	
	-- 获取玩家要上交的物品id 返回值 是否可以上交 上交物品id 上交物品数量
	local bAprilFoolsDayNPCpart_HandIn_Flag,nAprilFoolsDayNPCpart_HandIn_ItemId, nAprilFoolsDayNPCpart_HandIn_NeedNums = AprilFoolsDayNPCpart_ItemIsEnough(nAprilFoolsDayNPCpart_HandIn_Index)
	
	local sAprilFoolsDayNPCpart_HandIn_Num = tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Data"][nAprilFoolsDayNPCpart_HandIn_Index][1]
	local sAprilFoolsDayNPCpart_HandIn_Count = tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Data"][nAprilFoolsDayNPCpart_HandIn_Index][2]
	local sAprilFoolsDayNPCpart_HandIn_Name = tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Data"][nAprilFoolsDayNPCpart_HandIn_Index][3]
	
	-- 上交物品数量不足
	if not bAprilFoolsDayNPCpart_HandIn_Flag then
		Sys_MsgBox(string.format(tAprilFoolsDayNPCpart_Text["Sys"]["PutInBox"]["NoItem"],sAprilFoolsDayNPCpart_HandIn_Num,sAprilFoolsDayNPCpart_HandIn_Count,sAprilFoolsDayNPCpart_HandIn_Name,sAprilFoolsDayNPCpart_HandIn_Name))
		return
	end
	
	-- 玩家领取奖励掩码
	local nAprilFoolsDayNPCpart_Reward_EventType = tAprilFoolsDayNPCpart_Cont["Stc"][6]["EventType"]
	local nAprilFoolsDayNPCpart_Reward_DataType = tAprilFoolsDayNPCpart_Cont["Stc"][6]["DataType"]
	local nAprilFoolsDayNPCpart_Reward_TotalData = tAprilFoolsDayNPCpart_Cont["Stc"][6]["TotalData"]
	
	-- 玩家已领取10次奖励 不允许上交
	if Task_ChkStcValue(nAprilFoolsDayNPCpart_Reward_EventType,nAprilFoolsDayNPCpart_Reward_DataType,">=",nAprilFoolsDayNPCpart_Reward_TotalData,nAprilFoolsDayNPCpart_UserId) then
		Sys_MsgBox(tAprilFoolsDayNPCpart_Text["Sys"]["PutInBox"]["TimesLimit"])
		return
	end
	
	-- 获取 上交的格子情况 掩码
	local nAprilFoolsDayNPCpart_HandIn_EventType = tAprilFoolsDayNPCpart_Cont["Stc"][5]["EventType"]
	local nAprilFoolsDayNPCpart_HandIn_DataType = tAprilFoolsDayNPCpart_Cont["Stc"][5]["DataType"]
	local nAprilFoolsDayNPCpart_HandIn_AddData = tAprilFoolsDayNPCpart_Cont["Stc"][5]["TotalData"][nAprilFoolsDayNPCpart_HandIn_Index]
	local nAprilFoolsDayNPCpart_HandIn_NowData = Get_UserStatisticValue(nAprilFoolsDayNPCpart_HandIn_EventType,nAprilFoolsDayNPCpart_HandIn_DataType,nAprilFoolsDayNPCpart_UserId)
	
	-- 已经上交过
	if Sys_ParseNumbersContain(nAprilFoolsDayNPCpart_HandIn_AddData,nAprilFoolsDayNPCpart_HandIn_NowData) then
		return
	end
	
	-- 删除物品 打掩码 
	if not Item_DelMulItem(nAprilFoolsDayNPCpart_HandIn_ItemId, nAprilFoolsDayNPCpart_HandIn_ItemId, nAprilFoolsDayNPCpart_HandIn_NeedNums) then
		return
	end
	Sys_SaveActionRewardLog(string.format(tAprilFoolsDayNPCpart_Cont["Log"]["HandIn"],nAprilFoolsDayNPCpart_HandIn_ItemId,nAprilFoolsDayNPCpart_HandIn_NeedNums,nAprilFoolsDayNPCpart_HandIn_Index))
	
	if not Task_AddStatistic(nAprilFoolsDayNPCpart_HandIn_EventType, nAprilFoolsDayNPCpart_HandIn_DataType, nAprilFoolsDayNPCpart_HandIn_AddData, 1) then
		return
	end
	Task_SetStcTimestamp(nAprilFoolsDayNPCpart_HandIn_EventType,nAprilFoolsDayNPCpart_HandIn_DataType,0)
	
	-- 已经全部上交 跳转1-5
	if AprilFoolsDayNPCpart_IsPunInAll(nAprilFoolsDayNPCpart_NpcId) then
		LinkNpcGossipFunc_New(nAprilFoolsDayNPCpart_NpcId, "1-5")
		return
	end
	
	local sAprilFoolsDayNPCpart_HandIn_Text212 = tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Text212"]
	
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text212"] = string.format(sAprilFoolsDayNPCpart_HandIn_Text212,sAprilFoolsDayNPCpart_HandIn_Count,sAprilFoolsDayNPCpart_HandIn_Name,sAprilFoolsDayNPCpart_HandIn_Num)
	LinkNpcGossipFunc_New(nAprilFoolsDayNPCpart_NpcId, "2-1")
end

-- 检测选项 已上交过不出选项
-- 参1 npcid
-- 参2 选项下标
-- 参3 对应的能量块数据下标
-- 返回值 true 未上交 false 已上交
function AprilFoolsDayNPCpart_ChkOption(nAprilFoolsDayNPCpart_NpcId,nAprilFoolsDayNPCpart_Chk_Str,nAprilFoolsDayNPCpart_Chk_Index)
	local nAprilFoolsDayNPCpart_UserId = Get_UserId()
	
	local nAprilFoolsDayNPCpart_Chk_EventType = tAprilFoolsDayNPCpart_Cont["Stc"][5]["EventType"]
	local nAprilFoolsDayNPCpart_Chk_DataType = tAprilFoolsDayNPCpart_Cont["Stc"][5]["DataType"]
	local nAprilFoolsDayNPCpart_Chk_NowData = Get_UserStatisticValue(nAprilFoolsDayNPCpart_Chk_EventType,nAprilFoolsDayNPCpart_Chk_DataType)
	local nAprilFoolsDayNPCpart_Chk_NeedData = tAprilFoolsDayNPCpart_Cont["Stc"][5]["TotalData"][nAprilFoolsDayNPCpart_Chk_Index]
	
	-- 未上交
	if not Sys_ParseNumbersContain(nAprilFoolsDayNPCpart_Chk_NeedData,nAprilFoolsDayNPCpart_Chk_NowData) then
		return false
	end
	
	return true
end

-- 领取奖励 每日限量100
-- 参1 npcid
function AprilFoolsDayNPCpart_PutInReward(nAprilFoolsDayNPCpart_NpcId)
	local nAprilFoolsDayNPCpart_UserId = Get_UserId()
	
	-- 活动时间判断
	if not Sys_ChkFullTime(tAprilFoolsDayNPCpart_Cont["Time"]["ActivityTime"]) then
		return
	end
	
	-- 玩家等级判断
	if not AprilFoolsDayNPCpart_LevelAndMeteLimit() then
		Sys_MsgBox(tAprilFoolsDayNPCpart_Text["Sys"]["LevelLimit"])
		return
	end
	
	-- 上交掩码
	local nAprilFoolsDayNPCpart_HandIn_EventType = tAprilFoolsDayNPCpart_Cont["Stc"][5]["EventType"]
	local nAprilFoolsDayNPCpart_HandIn_DataType = tAprilFoolsDayNPCpart_Cont["Stc"][5]["DataType"]
	local nAprilFoolsDayNPCpart_HandIn_Now = Get_UserStatisticValue(nAprilFoolsDayNPCpart_HandIn_EventType, nAprilFoolsDayNPCpart_HandIn_DataType)
	
	-- 填满所有格子需要的掩码值
	local nAprilFoolsDayNPCpart_PutIn_TotalData = 0
	
	for i,v in ipairs(tAprilFoolsDayNPCpart_Cont["Stc"][5]["TotalData"]) do
		nAprilFoolsDayNPCpart_PutIn_TotalData = nAprilFoolsDayNPCpart_PutIn_TotalData + v
	end
	
	if nAprilFoolsDayNPCpart_HandIn_Now < nAprilFoolsDayNPCpart_PutIn_TotalData then
		return
	end
	
	-- 记录领奖掩码
	local nAprilFoolsDayNPCpart_Reward_EventType = tAprilFoolsDayNPCpart_Cont["Stc"][6]["EventType"]
	local nAprilFoolsDayNPCpart_Reward_DataType = tAprilFoolsDayNPCpart_Cont["Stc"][6]["DataType"]
	
	local nAprilFoolsDayNPCpart_Reward_TotalData = tAprilFoolsDayNPCpart_Cont["Stc"][6]["TotalData"]
	
	-- 隔天清空奖励掩码
	Task_StcReset(nAprilFoolsDayNPCpart_Reward_EventType,nAprilFoolsDayNPCpart_Reward_DataType)
	
	-- 玩家已领取10次奖励
	if Task_ChkStcValue(nAprilFoolsDayNPCpart_Reward_EventType,nAprilFoolsDayNPCpart_Reward_DataType,">=",nAprilFoolsDayNPCpart_Reward_TotalData,nAprilFoolsDayNPCpart_UserId) then
		Sys_MsgBox(string.format(tAprilFoolsDayNPCpart_Text["Sys"]["PutInBox"]["TimesLimit"],nAprilFoolsDayNPCpart_Reward_TotalData))
		return
	end
	
	local nAprilFoolsDayNPCpart_GlobalId = tAprilFoolsDayNPCpart_Cont["Global"][1]["Id"]
	local nAprilFoolsDayNPCpart_Data0 = tAprilFoolsDayNPCpart_Cont["Global"][1]["Data0"]
	local nAprilFoolsDayNPCpart_NowData0 = Get_SysDynaGlobalData0(nAprilFoolsDayNPCpart_GlobalId)
	
	if nAprilFoolsDayNPCpart_NowData0 >= nAprilFoolsDayNPCpart_Data0 then
		Sys_MsgBox(tAprilFoolsDayNPCpart_Text["Sys"]["BoxGetReward"]["ServerLimit"])
		return
	end
	
	if not RewardTemplate_ChkRandomSpace(tAprilFoolsDayNPCpart_Reward,"OnePieces",nAprilFoolsDayNPCpart_UserId) then
		Sys_MsgBox(tAprilFoolsDayNPCpart_Text["Sys"]["BoxGetReward"]["NoSpace"])
		return
	end
	
	if not Sys_SetSynaGlobalData0(nAprilFoolsDayNPCpart_GlobalId,nAprilFoolsDayNPCpart_NowData0+1) then
		return
	end
	
	if not Task_AddStatistic(nAprilFoolsDayNPCpart_Reward_EventType, nAprilFoolsDayNPCpart_Reward_DataType, 1, 1) then
		return
	end
	Task_SetStcTimestamp(nAprilFoolsDayNPCpart_Reward_EventType, nAprilFoolsDayNPCpart_Reward_DataType, 0)
	
	-- 清空上交掩码给奖励
	local nAprilFoolsDayNPCpart_HandIn_EventType = tAprilFoolsDayNPCpart_Cont["Stc"][5]["EventType"]
	local nAprilFoolsDayNPCpart_HandIn_DataType = tAprilFoolsDayNPCpart_Cont["Stc"][5]["DataType"]
	
	if not Task_SetStatistic(nAprilFoolsDayNPCpart_HandIn_EventType, nAprilFoolsDayNPCpart_HandIn_DataType, 0, 1) then
		return
	end
	Task_SetStcTimestamp(nAprilFoolsDayNPCpart_HandIn_EventType, nAprilFoolsDayNPCpart_HandIn_DataType, 0)
	
	RewardTemplate_NewRandom(tAprilFoolsDayNPCpart_Reward,"OnePieces")
end

function AprilFoolsDayNPCpart_LinkDialog(nAprilFoolsDayNPCpart_NpcId)
	-- 全填满
	if AprilFoolsDayNPCpart_IsPunInAll(nAprilFoolsDayNPCpart_NpcId) then
		LinkNpcGossipFunc_New(nAprilFoolsDayNPCpart_NpcId, "1-5")
		return
	end
	LinkNpcGossipFunc_New(nAprilFoolsDayNPCpart_NpcId, "1-4", nil, 10)
end

-- 查看玩家当前积分及可领取奖励
function AprilFoolsDayNPCpart_UserPointAndReward(nAprilFoolsDayNPCpart_NpcId)
	local nAprilFoolsDayNPCpart_UserId = Get_UserId()
	
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text4211"] = ""
	local sAprilFoolsDayNPCpart_Goto_Text4211 = tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Text4211"]
	local sAprilFoolsDayNPCpart_Goto_Text4212 = tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Text4212"]
	
	-- 获取玩家当前掩码值 - 积分
	local nAprilFoolsDayNPCpart_Point_Now = TreasurePlaying_GetStcValue(1)
	
	local nAprilFoolsDayNPCpart_Reward_Index = AprilFoolsDayNPCpart_WhitchReward(nAprilFoolsDayNPCpart_Point_Now)
	
	-- 玩家领取奖励的掩码
	local nAprilFoolsDayNPCpart_Reward_EventType = tAprilFoolsDayNPCpart_Cont["Stc"][4]["EventType"]
	local nAprilFoolsDayNPCpart_Reward_DataType = tAprilFoolsDayNPCpart_Cont["Stc"][4]["DataType"]
	-- 玩家当前掩码值 - 已领过的奖励对应值
	local nAprilFoolsDayNPCpart_Reward_Now = Get_UserStatisticValue(nAprilFoolsDayNPCpart_Reward_EventType,nAprilFoolsDayNPCpart_Reward_DataType,nAprilFoolsDayNPCpart_UserId)
	
	local nAprilFoolsDayNPCpart_Reward_ColorMin = tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["Grade"][1]
	local nAprilFoolsDayNPCpart_Reward_ColorMax = tAprilFoolsDayNPCpart_Cont["TreasureHunt"]["Grade"][6]
	
	for i = nAprilFoolsDayNPCpart_Reward_ColorMin,nAprilFoolsDayNPCpart_Reward_ColorMax do
		local nAprilFoolsDayNPCpart_Reward_ColorData = tAprilFoolsDayNPCpart_Cont["Stc"][4]["TotalData"][i]
		-- 已领取的奖励匹配灰色
		if Sys_ParseNumbersContain(nAprilFoolsDayNPCpart_Reward_ColorData,nAprilFoolsDayNPCpart_Reward_Now) then
			if i == 2 or i == 4 or i == 5 then
				tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text42"..i] = string.format(tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Text42"..i],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["RewardColor"][2],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["RewardColor"][2],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["RewardColor"][2])
			elseif i == 3 then
				tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text42"..i] = string.format(tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Text42"..i],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["RewardColor"][2],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["RewardColor"][2])
			elseif i == 6 then
				tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text42"..i] = string.format(tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Text42"..i],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["RewardColor"][2],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["RewardColor"][2],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["RewardColor"][2])
			else
				tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text42"..i] = string.format(tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Text42"..i],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["RewardColor"][2])
			end
		else
			if i == 2 or i == 4 or i == 5 then
				tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text42"..i] = string.format(tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Text42"..i],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["RewardColor"][1],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["RewardColor"][3],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["RewardColor"][1])
			elseif i == 3 then
				tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text42"..i] = string.format(tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Text42"..i],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["RewardColor"][1],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["RewardColor"][3])
			elseif i == 6 then
				tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text42"..i] = string.format(tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Text42"..i],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["RewardColor"][1],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["RewardColor"][3],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["RewardColor"][3])
			else
				tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text42"..i] = string.format(tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Text42"..i],tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["RewardColor"][1])
			end
		end
	end
	
	-- 条件判断
	if nAprilFoolsDayNPCpart_Reward_Index == nil or nAprilFoolsDayNPCpart_Reward_Index == 0 then
		tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text4211"] = string.format(sAprilFoolsDayNPCpart_Goto_Text4211,nAprilFoolsDayNPCpart_Point_Now,tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["CanGet"][7])
		return
	end
	
	local nAprilFoolsDayNPCpart_CanGet_Reward = tAprilFoolsDayNPCpart_Cont["Stc"][4]["TotalData"][nAprilFoolsDayNPCpart_Reward_Index]
	
	-- 已领
	if Sys_ParseNumbersContain(nAprilFoolsDayNPCpart_CanGet_Reward, nAprilFoolsDayNPCpart_Reward_Now) then
		tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text4211"] = string.format(sAprilFoolsDayNPCpart_Goto_Text4212,nAprilFoolsDayNPCpart_Point_Now,tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["CanGet"][nAprilFoolsDayNPCpart_Reward_Index])
		return
	end
	
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text4211"] = string.format(sAprilFoolsDayNPCpart_Goto_Text4211,nAprilFoolsDayNPCpart_Point_Now,tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["CanGet"][nAprilFoolsDayNPCpart_Reward_Index])
end

-- 判断是否有排行榜数据
function AprilFoolsDayNPCpart_IsRankingData(nAprilFoolsDayNPCpart_NpcId)
	local nAprilFoolsDayNPCpart_UserId = Get_UserId()
	
	-- 不在活动时间内
	if not Sys_ChkFullTime(tAprilFoolsDayNPCpart_Cont["Time"]["NpcActivityTime"]) then
		Sys_MsgBox(tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["NoRanking"])
		return
	end
	
	local nAprilFoolsDayNPCpart_RankIndex = tAprilFoolsDayNPCpart_Cont["TenTreasure"]["RankIndex"]
	
	local tAprilFoolsDayNPCpart_RankingData = RankingFunc_GetNowData(nAprilFoolsDayNPCpart_RankIndex)
	
	if tAprilFoolsDayNPCpart_RankingData == nil or #tAprilFoolsDayNPCpart_RankingData == 0 then
		Sys_MsgBox(tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["NoRanking"])
		return
	end
	LinkNpcGossipFunc_New(nAprilFoolsDayNPCpart_NpcId, "4-1")
end

-- 判断玩家是否有藏宝图
function AprilFoolsDayNPCpart_IsHaveTreasureItem(nAprilFoolsDayNPCpart_NpcId)
	local nAprilFoolsDayNPCpart_UserId = Get_UserId()
	
	local nAprilFoolsDayNPCpart_ItemId = tAprilFoolsDayNPCpart_Cont["Item"]["TreasureMap"]["Id"]
	local nAprilFoolsDayNPCpart_NeedNums = tAprilFoolsDayNPCpart_Cont["TenTreasure"]["NeedNums"]
	local sAprilFoolsDayNPCpart_Text322 = tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Text322"]
	local sAprilFoolsDayNPCpart_Text323 = tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Text323"]
	
	if not Item_ChkMulItem(nAprilFoolsDayNPCpart_ItemId, nAprilFoolsDayNPCpart_ItemId, nAprilFoolsDayNPCpart_NeedNums) then
		tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text322"] = sAprilFoolsDayNPCpart_Text323
		return true
	end
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text322"] = sAprilFoolsDayNPCpart_Text322
	return true
end

-- 判断玩家是否有足够天石
function AprilFoolsDayNPCpart_IsHaveEnoughEMoney(nAprilFoolsDayNPCpart_NpcId)
	local nAprilFoolsDayNPCpart_UserId = Get_UserId()
	local nAprilFoolsDayNPCpart_NeedEMoney = tAprilFoolsDayNPCpart_Cont["TenTreasure"]["NeedEMoney"]
	if Get_UserEMoney(nAprilFoolsDayNPCpart_UserId) < nAprilFoolsDayNPCpart_NeedEMoney then
		Sys_MsgBox(tAprilFoolsDayNPCpart_Text["Sys"]["TenTimes"]["NoEmoney"])
		return
	end
	LinkNpcGossipFunc_New(nAprilFoolsDayNPCpart_NpcId, "3-3")
end

-- 查看排行榜
function AprilFoolsDayNPCpart_LookRanking(nAprilFoolsDayNPCpart_NpcId)
	local nAprilFoolsDayNPCpart_UserId = Get_UserId()
	
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text411"] = ""
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text412"] = ""
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text413"] = ""
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text414"] = ""
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text415"] = ""
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text416"] = ""
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text417"] = ""
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text418"] = ""
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text419"] = ""
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text4110"] = ""
	tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text4115"] = ""
	
	-- 排行榜下标
	local nAprilFoolsDayNPCpart_RankIndex = tAprilFoolsDayNPCpart_Cont["TenTreasure"]["RankIndex"]
	
	local nAprilFoolsDayNPCpart_RankUserId = 0
	local sAprilFoolsDayNPCpart_RankUserName = ""
	local nAprilFoolsDayNPCpart_RankUserScore = 0
	local sAprilFoolsDayNPCpart_RankText = ""
	
	-- 排行榜表数据
	local tAprilFoolsDayNPCpart_RankingData = RankingFunc_GetNowData(nAprilFoolsDayNPCpart_RankIndex)
	
	if tAprilFoolsDayNPCpart_RankingData == nil or #tAprilFoolsDayNPCpart_RankingData == 0 then
		return false
	end
	
	local nAprilFoolsDayNPCpart_Point_EventType = tAprilFoolsDayNPCpart_Cont["Stc"][3]["EventType"]
	local nAprilFoolsDayNPCpart_Point_DataType = tAprilFoolsDayNPCpart_Cont["Stc"][3]["DataType"]
	
	-- 获取玩家当前掩码值 - 积分
	local nAprilFoolsDayNPCpart_Point_Now = TreasurePlaying_GetStcValue(1)
	
	
	for i = 1, #tAprilFoolsDayNPCpart_RankingData do
		nAprilFoolsDayNPCpart_RankUserId = tAprilFoolsDayNPCpart_RankingData[i]["UserId"]
		sAprilFoolsDayNPCpart_RankUserName = tAprilFoolsDayNPCpart_RankingData[i]["UserName"]
		nAprilFoolsDayNPCpart_RankUserScore = tAprilFoolsDayNPCpart_RankingData[i]["Score"]
		
		-- 名字处理 -- 海外使用
		sAprilFoolsDayNPCpart_RankUserName = string.gsub(sAprilFoolsDayNPCpart_RankUserName, "<", " ")
		sAprilFoolsDayNPCpart_RankUserName = string.gsub(sAprilFoolsDayNPCpart_RankUserName, ">", " ")
		
		-- 排行榜总文本
		sAprilFoolsDayNPCpart_RankText = Sys_Alignment(tostring(i),10,tostring(nAprilFoolsDayNPCpart_RankUserScore),50,sAprilFoolsDayNPCpart_RankUserName,84)
		
		tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text41"..i] = string.format(tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Text41"..i],sAprilFoolsDayNPCpart_RankText)
		
		-- 玩家在排行榜上
		if nAprilFoolsDayNPCpart_RankUserId == nAprilFoolsDayNPCpart_UserId and sAprilFoolsDayNPCpart_RankUserName == Get_UserName(nAprilFoolsDayNPCpart_UserId) then
			tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text4115"] = string.format(tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Text4115"], nAprilFoolsDayNPCpart_Point_Now, i)
		else
			tNpcGossip[nAprilFoolsDayNPCpart_NpcId]["Text4115"] = tAprilFoolsDayNPCpart_Text[nAprilFoolsDayNPCpart_NpcId]["Text4116"]
		end
	end
	
	return true
end

-------------------------【通用函数】-----------------------
-- 玩家等级判断
-- 返回值 true 等级达到 false 等级未达到
function AprilFoolsDayNPCpart_LevelAndMeteLimit()
	local nAprilFoolsDayNPCpart_UserId = Get_UserId()
	-- 玩家等级限制
	local nAprilFoolsDayNPCpart_Level = tAprilFoolsDayNPCpart_Cont["LevAndMete"]["Lev"]
	local nAprilFoolsDayNPCpart_Mete = tAprilFoolsDayNPCpart_Cont["LevAndMete"]["Mete"]
	if User_JudgeLevelAndMetempsychosis(nAprilFoolsDayNPCpart_Level, nAprilFoolsDayNPCpart_Mete) then
		return true
	end
	return false
end


---------------------------------------NPC配置---------------------------------------------
-- 26014,'万愚之王'
tNpcFace[5326] = 71
tNpcGossip[26014] = tNpcGossip[26014] or DefaultNpc:new{}
tNpcGossip[26014]["OptionHidden"] = 1
tNpcGossip[26014]["DialogueText"] = tAprilFoolsDayNPCpart_Text[26014]

-- 活动前对白
tNpcGossip[26014]["Text1-1"] = {111,112,113,114}
tNpcGossip[26014]["tOption1-1"] = {111}
tNpcGossip[26014]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tAprilFoolsDayNPCpart_Cont["Time"]["ActivityTime"])
end

-- 活动后对白
tNpcGossip[26014]["Text1-2"] = {121,122}
tNpcGossip[26014]["tOption1-2"] = {121,122,123}
tNpcGossip[26014]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tAprilFoolsDayNPCpart_Cont["Time"]["ActivityTime"])
end
tNpcGossip[26014]["OptionPoint121"] = "4-2"
tNpcGossip[26014]["OptionPoint122"] = "4-3"

-- 活动中对白
-- 第一次对白
tNpcGossip[26014]["Text1-3"] = {131,132,133}
tNpcGossip[26014]["tOption1-3"] = {131}
tNpcGossip[26014]["ChkFunc1-3"] = function ()
	-- 主NPC是否出首次对白逻辑
	-- true表示出过首对白 false表示未出
	if not Sys_ChkFullTime(tAprilFoolsDayNPCpart_Cont["Time"]["ActivityTime"]) then
		return false
	end
	
	return not AprilFoolsDayNPCpart_FirstDialog(26014)
end
tNpcGossip[26014]["OptionPoint131"] = "2-1"

-- 二次之后对白
tNpcGossip[26014]["Text1-4"] = {141,142,143,144,145,146,147,148,149}
tNpcGossip[26014]["tOption1-4"] = {141,142,143}
tNpcGossip[26014]["ChkFunc1-4"] = function ()
	-- 不在活动时间内
	if not Sys_ChkFullTime(tAprilFoolsDayNPCpart_Cont["Time"]["ActivityTime"]) then
		return false
	end
	
	-- 如果没出过首对白
	if not AprilFoolsDayNPCpart_FirstDialog(nAprilFoolsDayNPCpart_NpcId) then
		return false
	end
	
	return AprilFoolsDayNPCpart_SecondDialog(26014)
end
tNpcGossip[26014]["OptionPoint141"] = "5-1"
tNpcGossip[26014]["OptionFunc142"] = "AprilFoolsDayNPCpart_IsOpenTreasureHunt</N>26014"
tNpcGossip[26014]["OptionFunc143"] = "AprilFoolsDayNPCpart_IsRankingData</N>26014"
tNpcGossip[26014]["OptionChkFunc142"] = function()
	
	tNpcGossip[26014]["Option142"] = tAprilFoolsDayNPCpart_Text[26014]["Option142"]
	-- 已寻宝15次
	if TreasurePlaying_GetStcValue(2) >= tAprilFoolsDayNPCpart_Cont["Stc"][2]["TotalData"] then
		tNpcGossip[26014]["Option142"] = tAprilFoolsDayNPCpart_Text[26014]["Option144"]
	end
	return true
end


-- 领取引导任务奖励对白
tNpcGossip[26014]["Text1-5"] = {151}
tNpcGossip[26014]["tOption1-5"] = {151}
tNpcGossip[26014]["ChkFunc1-5"] = function ()
	-- 不在活动时间内
	if not Sys_ChkFullTime(tAprilFoolsDayNPCpart_Cont["Time"]["ActivityTime"]) then
		return false
	end
	
	-- 如果没出过首对白
	if not AprilFoolsDayNPCpart_FirstDialog(nAprilFoolsDayNPCpart_NpcId) then
		return false
	end
	
	return not AprilFoolsDayNPCpart_SecondDialog(26014)
end
tNpcGossip[26014]["OptionFunc151"] = "AprilFoolsDayNPCpart_GetTaskReward</N>26014"

-- 接Option131、且听无妨
tNpcGossip[26014]["Text2-1"] = {211,212,213,214}
tNpcGossip[26014]["tOption2-1"] = {211}
tNpcGossip[26014]["OptionFunc211"] = "AprilFoolsDayNPCpart_GetTreasurMap</N>26014"

-- 接Option141、十连寻宝【成功】
tNpcGossip[26014]["Text3-1"] = {311,312,313}
tNpcGossip[26014]["tOption3-1"] = {311,312}
tNpcGossip[26014]["OptionPoint311"] = "3-2"


-- 接Option322、开启十连寻宝（消耗10张藏宝图） 判断是否有藏宝图 没有花费990天石
tNpcGossip[26014]["Text3-2"] = {321,322}
tNpcGossip[26014]["tOption3-2"] = {321,322,323}
tNpcGossip[26014]["ChkFunc3-2"] = function()
	-- 判断玩家是否有10张藏宝图
	return AprilFoolsDayNPCpart_IsHaveTreasureItem(26014)
end
-- 物品
tNpcGossip[26014]["OptionFunc321"] = "AprilFoolsDayNPCpart_OpenTreasureHuntConfirm</N>26014</N>1"
tNpcGossip[26014]["OptionChkFunc321"] = function()
	if AprilFoolsDayNPCpart_ItemOrEMoney() == 1 then
		return true
	end
	return false
end
-- 天石
tNpcGossip[26014]["OptionFunc322"] = "AprilFoolsDayNPCpart_IsHaveEnoughEMoney</N>26014"
tNpcGossip[26014]["OptionChkFunc322"] = function()
	if AprilFoolsDayNPCpart_ItemOrEMoney() == 1 then
		return false
	end
	return true
end

-- 接Option311、开启十连寻宝（990天石） 【二次确认】
tNpcGossip[26014]["Text3-3"] = {331,332}
tNpcGossip[26014]["tOption3-3"] = {331,332}
-- 天石
tNpcGossip[26014]["OptionFunc331"] = "AprilFoolsDayNPCpart_OpenTreasureHuntConfirm</N>26014</N>2"

-- 接Option321、Option322 确认
tNpcGossip[26014]["Text3-4"] = {3411,3412,3413,341,342,343,344,345,346,347,348,349,3410,3414,}
tNpcGossip[26014]["tOption3-4"] = {341,342}
tNpcGossip[26014]["OptionPoint341"] = "3-2"


-- 接Option142、寻宝积分奖励
tNpcGossip[26014]["Text4-1"] = {4111,4112,4113,411,412,413,414,415,416,417,418,419,4110,4114,4115}
tNpcGossip[26014]["tOption4-1"] = {411,412,413}
tNpcGossip[26014]["ChkFunc4-1"] = function()
	-- 读取排行榜 读取玩家当前积分 读取玩家排行榜名次
	-- return true
	return AprilFoolsDayNPCpart_LookRanking(26014)
end
tNpcGossip[26014]["OptionPoint411"] = "4-2"
tNpcGossip[26014]["OptionPoint412"] = "4-3"
tNpcGossip[26014]["OptionFunc413"] = "AprilFoolsDayNPCpart_OpenWeb</N>26014"

-- 接Option411、一键领取奖励
tNpcGossip[26014]["Text4-2"] = {427,428,429,421,422,423,424,425,426,4210,4211}
tNpcGossip[26014]["tOption4-2"] = {421,422}
tNpcGossip[26014]["ChkFunc4-2"] = function()
	-- 读取玩家当前积分 读取玩家可以领取的奖励
	AprilFoolsDayNPCpart_UserPointAndReward(26014)
	return true
end
tNpcGossip[26014]["OptionFunc421"] = "AprilFoolsDayNPCpart_GetTreasureReward</N>26014"

-- 接Option412、查看本服排行奖励
tNpcGossip[26014]["Text4-3"] = {431,432,433,434,435,436,437,438,439}
tNpcGossip[26014]["tOption4-3"] = {431}

-- 接Option143、获取藏宝图
tNpcGossip[26014]["Text5-1"] = {511,512,513,514,515,516,517}
tNpcGossip[26014]["tOption5-1"] = {511,512}
tNpcGossip[26014]["OptionFunc511"] = "AprilFoolsDay2020Bottle_Enter"

-- 接Option511 前往整蛊大厅
tNpcGossip[26014]["Text5-2"] = {521}
tNpcGossip[26014]["tOption5-2"] = {521,522}
tNpcGossip[26014]["OptionFunc521"] = "AprilFoolsDay2020Bottle_EnterMap"


-- 26015,'潘多拉宝盒'
-- tNpcFace[2376] = 1805
tNpcGossip[26015] = tNpcGossip[26015] or DefaultNpc:new{}
tNpcGossip[26015]["OptionHidden"] = 1
tNpcGossip[26015]["nPageNum"] = 10
tNpcGossip[26015]["DialogueText"] = tAprilFoolsDayNPCpart_Text[26015]

-- 活动前对白
tNpcGossip[26015]["Text1-1"] = {111,112,113,114}
tNpcGossip[26015]["tOption1-1"] = {111}
tNpcGossip[26015]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tAprilFoolsDayNPCpart_Cont["Time"]["ActivityTime"])
end

-- 活动后对白
tNpcGossip[26015]["Text1-2"] = {121,122}
tNpcGossip[26015]["tOption1-2"] = {121}
tNpcGossip[26015]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tAprilFoolsDayNPCpart_Cont["Time"]["ActivityTime"])
end

-- 活动中对白
-- 未得到能量块对白
tNpcGossip[26015]["Text1-3"] = {131,132}
tNpcGossip[26015]["tOption1-3"] = {131,132}
tNpcGossip[26015]["ChkFunc1-3"] = function ()
	-- 掩码值判断 判断玩家是否领取过 红玛瑙
	local nAprilFoolsDayNPCpart_EventType = tAprilFoolsDayNPCpart_Cont["Stc"][7]["EventType"]
	local nAprilFoolsDayNPCpart_DataType = tAprilFoolsDayNPCpart_Cont["Stc"][7]["DataType"]
	local nAprilFoolsDayNPCpart_TotalData = tAprilFoolsDayNPCpart_Cont["Stc"][7]["TotalData"]
	
	if Task_ChkStcValue(nAprilFoolsDayNPCpart_EventType, nAprilFoolsDayNPCpart_DataType, ">=", nAprilFoolsDayNPCpart_TotalData) then
		return false
	end
	
	return true
end
tNpcGossip[26015]["OptionFunc131"] = "NpcPosition_PathFind</N>26014"

-- 活动中对白
-- 已得到能量块 未填满对白
tNpcGossip[26015]["Text1-4"] = {141,142,1411,1412,1413,1414,1415,1416,1417,1418,1419,143,144,145}
tNpcGossip[26015]["tOption1-4"] = {141,142,143,144,145,146,147,148,149,1410}
tNpcGossip[26015]["ChkFunc1-4"] = function ()
	AprilFoolsDayNPCpart_NoPutIn(26015)
	return not AprilFoolsDayNPCpart_IsPunInAll(26015)
end
tNpcGossip[26015]["OptionFunc141"] = "AprilFoolsDayNPCpart_HandInItem</N>26015</N>141</N>1"
tNpcGossip[26015]["OptionFunc142"] = "AprilFoolsDayNPCpart_HandInItem</N>26015</N>142</N>2"
tNpcGossip[26015]["OptionFunc143"] = "AprilFoolsDayNPCpart_HandInItem</N>26015</N>143</N>3"
tNpcGossip[26015]["OptionFunc144"] = "AprilFoolsDayNPCpart_HandInItem</N>26015</N>144</N>4"
tNpcGossip[26015]["OptionFunc145"] = "AprilFoolsDayNPCpart_HandInItem</N>26015</N>145</N>5"
tNpcGossip[26015]["OptionFunc146"] = "AprilFoolsDayNPCpart_HandInItem</N>26015</N>146</N>6"
tNpcGossip[26015]["OptionFunc147"] = "AprilFoolsDayNPCpart_HandInItem</N>26015</N>147</N>7"
tNpcGossip[26015]["OptionFunc148"] = "AprilFoolsDayNPCpart_HandInItem</N>26015</N>148</N>8"
tNpcGossip[26015]["OptionFunc149"] = "AprilFoolsDayNPCpart_HandInItem</N>26015</N>149</N>9"
tNpcGossip[26015]["OptionPoint1410"] = "3-1"
tNpcGossip[26015]["OptionChkFunc141"] = function()
	return not AprilFoolsDayNPCpart_ChkOption(26015,141,1)
end
tNpcGossip[26015]["OptionChkFunc142"] = function()
	return not AprilFoolsDayNPCpart_ChkOption(26015,142,2)
end
tNpcGossip[26015]["OptionChkFunc143"] = function()
	return not AprilFoolsDayNPCpart_ChkOption(26015,143,3)
end
tNpcGossip[26015]["OptionChkFunc144"] = function()
	return not AprilFoolsDayNPCpart_ChkOption(26015,144,4)
end
tNpcGossip[26015]["OptionChkFunc145"] = function()
	return not AprilFoolsDayNPCpart_ChkOption(26015,145,5)
end
tNpcGossip[26015]["OptionChkFunc146"] = function()
	return not AprilFoolsDayNPCpart_ChkOption(26015,146,6)
end
tNpcGossip[26015]["OptionChkFunc147"] = function()
	return not AprilFoolsDayNPCpart_ChkOption(26015,147,7)
end
tNpcGossip[26015]["OptionChkFunc148"] = function()
	return not AprilFoolsDayNPCpart_ChkOption(26015,148,8)
end
tNpcGossip[26015]["OptionChkFunc149"] = function()
	return not AprilFoolsDayNPCpart_ChkOption(26015,149,9)
end

-- 填满对白
tNpcGossip[26015]["Text1-5"] = {151,152,1511,1512,1513,1514,1515,1516,1517,1518,1519,153,154,155}
tNpcGossip[26015]["tOption1-5"] = {151,152}
tNpcGossip[26015]["ChkFunc1-5"] = function ()
	return AprilFoolsDayNPCpart_IsPunInAll(26015)
end
tNpcGossip[26015]["OptionFunc151"] = "AprilFoolsDayNPCpart_PutInReward</N>26015"

-- 接Option141~Option149 填满X号格子
tNpcGossip[26015]["Text2-1"] = {211,212}
tNpcGossip[26015]["tOption2-1"] = {211,212}
tNpcGossip[26015]["OptionFunc211"] = "AprilFoolsDayNPCpart_LinkDialog</N>26015"

-- 接Option1410、查看宝盒奖励
tNpcGossip[26015]["Text3-1"] = {311,312,313,314,315}
tNpcGossip[26015]["tOption3-1"] = {311,312}
tNpcGossip[26015]["OptionPoint311"] = "1-4"

--------------------------------------物品逻辑--------------------------------------
---------------【one pieces 能量块】-----------------------------
-- 3315633,'红玛瑙'
tItemFace[3315633] = 2856
tItem[3315633] = tItem[3315633] or {}
tItem[3315633]["Function"] = function(nAprilFoolsDayNPCpart_ItemId,sAprilFoolsDayNPCpart_ItemName)
	if not Sys_ChkFullTime(tAprilFoolsDayNPCpart_Cont["Time"]["ActivityTime"]) then
		AprilFoolsDayNPCpart_DelOnePiecesItem(nAprilFoolsDayNPCpart_ItemId)
		return
	else
		LinkItemGossipFunc_New(nAprilFoolsDayNPCpart_ItemId, "1-1")
	end
end
tItem[3315633]["DialogueText"] = tAprilFoolsDayNPCpart_Text[3315633]
tItem[3315633]["Text1-1"] = {111}
tItem[3315633]["tOption1-1"] = {111,112}
tItem[3315633]["OptionFunc111"] = "AprilFoolsDayNPCpart_OnePiecesUse</N>3315633</N>10"
tItem[3315633]["OptionFunc112"] = "AprilFoolsDayNPCpart_OnePiecesItem</N>3315633"

-- 3315634,'蓝水晶'
tItemFace[3315634] = 2857
tItem[3315634] = tItem[3315634] or {}
tItem[3315634]["Function"] = function(nAprilFoolsDayNPCpart_ItemId,sAprilFoolsDayNPCpart_ItemName)
	if not Sys_ChkFullTime(tAprilFoolsDayNPCpart_Cont["Time"]["ActivityTime"]) then
		AprilFoolsDayNPCpart_DelOnePiecesItem(nAprilFoolsDayNPCpart_ItemId)
		return
	else
		LinkItemGossipFunc_New(nAprilFoolsDayNPCpart_ItemId, "1-1")
	end
end
tItem[3315634]["DialogueText"] = tAprilFoolsDayNPCpart_Text[3315634]
tItem[3315634]["Text1-1"] = {111}
tItem[3315634]["tOption1-1"] = {111,112}
tItem[3315634]["OptionFunc111"] = "AprilFoolsDayNPCpart_OnePiecesUse</N>3315634</N>10"
tItem[3315634]["OptionFunc112"] = "AprilFoolsDayNPCpart_OnePiecesItem</N>3315634"

-- 3315635,'黄宝石'
tItem[3315635] = tItem[3315635] or {}
tItem[3315635]["Function"] = function(nAprilFoolsDayNPCpart_ItemId,sAprilFoolsDayNPCpart_ItemName)
	AprilFoolsDayNPCpart_OnePiecesItem(nAprilFoolsDayNPCpart_ItemId)
end

---------------【寻宝积分奖励】-----------------------------
-- 3315636,'愚人礼盒'
tItem[3315636] = tItem[3315636] or {}
tItem[3315636]["Function"] = function(nAprilFoolsDayNPCpart_ItemId,sAprilFoolsDayNPCpart_ItemName)
	AprilFoolsDayNPCpart_OpenPack(nAprilFoolsDayNPCpart_ItemId)
end
-- 3315637,'愚夫礼盒'
tItem[3315637] = tItem[3315636] or {}
-- 3315638,'愚者礼盒'
tItem[3315638] = tItem[3315636] or {}
-- 3315639,'若愚礼盒'
tItem[3315639] = tItem[3315639] or {}
tItem[3315639]["Function"] = function(nAprilFoolsDayNPCpart_ItemId,sAprilFoolsDayNPCpart_ItemName)
	AprilFoolsDayNPCpart_LimitOpenPack(nAprilFoolsDayNPCpart_ItemId)
end
-- 3315640,'智者礼盒'
tItem[3315640] = tItem[3315636] or {}
-- 3315641,'智囊礼盒'
tItem[3315641] = tItem[3315636] or {}

---------------【全球排行榜奖励】-----------------------------
-- 3315646,'圣人千虑礼盒'
tItem[3315646] = tItem[3315646] or {}
tItem[3315646]["Function"] = function(nAprilFoolsDayNPCpart_ItemId,sAprilFoolsDayNPCpart_ItemName)
	AprilFoolsDayNPCpart_OpenPack(nAprilFoolsDayNPCpart_ItemId)
end
-- 3315647,'足智多谋礼盒'
tItem[3315647] = tItem[3315646] or {}
-- 3315648,'深谋远虑礼盒'
tItem[3315648] = tItem[3315646] or {}
-- 3315649,'大智若愚礼盒'
tItem[3315649] = tItem[3315646] or {}


---------------【其它物品】-----------------------------
-- 3315632,'鹅黄丝绒'
tItemFace[3315632] = 2849
tItem[3315632] = tItem[3315632] or {}
tItem[3315632]["DialogueText"] = tAprilFoolsDayNPCpart_Text[3315632]
tItem[3315632]["Text1-1"] = {111}
tItem[3315632]["tOption1-1"] = {111,112}
tItem[3315632]["OptionFunc111"] = "AprilFoolsDayNPCpart_ChangeItem</N>3315632"

-- 3315650,'5星外套可选礼盒'
tItemFace[3315650] = 1007
tItem[3315650] = tItem[3315650] or {}
tItem[3315650]["DialogueText"] =tAprilFoolsDayNPCpart_Text[3315650]
tItem[3315650]["Text1-1"] = {111}
tItem[3315650]["tOption1-1"] = {111,112,114,115}
tItem[3315650]["OptionFunc111"] = "AprilFoolsDayNPCpart_ChoosePack</N>3315650</N>1"
tItem[3315650]["OptionFunc112"] = "AprilFoolsDayNPCpart_ChoosePack</N>3315650</N>2"
-- tItem[3315650]["OptionFunc113"] = "AprilFoolsDayNPCpart_ChoosePack</N>3315650</N>3"
tItem[3315650]["OptionFunc114"] = "AprilFoolsDayNPCpart_ChoosePack</N>3315650</N>4"
tItem[3315650]["OptionFunc115"] = "AprilFoolsDayNPCpart_ChoosePack</N>3315650</N>5"

-- 3315678,'愚人节武器外套可选包（赠）'
tItemFace[3315678] = 2389
tItem[3315678] = tItem[3315678] or {}
tItem[3315678]["DialogueText"] = tAprilFoolsDayNPCpart_Text[3315678]
tItem[3315678]["Text1-1"] = {111}
tItem[3315678]["tOption1-1"] = {111,112}
tItem[3315678]["OptionFunc111"] = "AprilFoolsDayNPCpart_ChoosePack</N>3315678</N>1"
tItem[3315678]["OptionFunc112"] = "AprilFoolsDayNPCpart_ChoosePack</N>3315678</N>2"

-- 3315775,'愚人节武器外套可选包'
tItemFace[3315775] = 2389
tItem[3315775] = tItem[3315775] or {}
tItem[3315775]["DialogueText"] = tAprilFoolsDayNPCpart_Text[3315775]
tItem[3315775]["Text1-1"] = {111}
tItem[3315775]["tOption1-1"] = {111,112}
tItem[3315775]["OptionFunc111"] = "AprilFoolsDayNPCpart_ChoosePack</N>3315775</N>1"
tItem[3315775]["OptionFunc112"] = "AprilFoolsDayNPCpart_ChoosePack</N>3315775</N>2"


----------------------------时间自检 动态存储表清空-------------------------------
-- 动态存储表清零
tGlobalData_Info[54285] = {}
tGlobalData_Info[54285]["Time"] = {}
tGlobalData_Info[54285]["Time"]["ActivityTime"] = tAprilFoolsDayNPCpart_Cont["Time"]["ActivityTime"]
tGlobalData_Info[54285]["Time"]["ClearTime"] = "00:00 00:02"
tGlobalData_Info[54285]["Rest"] = {}
tGlobalData_Info[54285]["Rest"]["GlobalId"] = {54285}
tGlobalData_Info[54285]["Rest"]["Pos"] = {0}
