------------------------------------------------------------------------------------
--Name：            171014[简体征服][活动脚本]金币服BOSS之家部分额外修改1
--Creator:      李甲
--Created:     2017/10/14
------------------------------------------------------------------------------------
--任务需求：
--金币服BOSS之家部分额外修改 1、增加金币商店，售卖1-4层直接到达卷（使用直接到达对应层数，BOSS之家内有层数掩码，详情询问WYK）
--2、60、70、80、90、100、110到达对应等级给予额外装备
--3、玩家登录游戏弹出引导图，简体已有，后续提供正确图片资源
------------------------------------------------------------------------------------
--勇士10-15
--战士20-25
--弓手40-45
--忍者50-55
--武僧60-65
--海盗70-75
--小龙80-85
--道士100-145
--铁扇门160-165
--stc 16818 记录是否已领取过奖励
-- 165,48 第1层杀Boss数量
-- 165,49 第2层杀Boss数量
-- 165,50 第3层杀Boss数量
-- 165,51 第4层杀Boss数量


----------------------------------表配置部分--------------------------------------------
local tGoldBoss_Param = {}
	tGoldBoss_Param["NeedLeve"]= {}
	tGoldBoss_Param["NeedLeve"][3305770] = 60
	tGoldBoss_Param["NeedLeve"][3305771] = 70
	tGoldBoss_Param["NeedLeve"][3305772] = 90
	tGoldBoss_Param["NeedLeve"][3305773] = 100

local tGoldBoss_Stc = {}
	tGoldBoss_Stc[3305433] = {}
	tGoldBoss_Stc[3305433]["EventType"] = 165
	tGoldBoss_Stc[3305433]["DataType"] = 48
	tGoldBoss_Stc[3305433]["Data"] = 6
	
	tGoldBoss_Stc[3305434] = {}
	tGoldBoss_Stc[3305434]["EventType"] = 165
	tGoldBoss_Stc[3305434]["DataType"] = 49 
	tGoldBoss_Stc[3305434]["Data"] = 6
	
	tGoldBoss_Stc[3305435] = {}
	tGoldBoss_Stc[3305435]["EventType"] = 165
	tGoldBoss_Stc[3305435]["DataType"] = 50
	tGoldBoss_Stc[3305435]["Data"] = 6
	


local tGoldBoss_Reward = {}
--60装备礼包
	tGoldBoss_Reward[3305770] = {}
	tGoldBoss_Reward[3305770]["DeleteItem"] = {}
	tGoldBoss_Reward[3305770]["DeleteItem"][1] = {}
	tGoldBoss_Reward[3305770]["DeleteItem"][1]["Id"] = 3305770
	tGoldBoss_Reward[3305770]["RewardProItem"] = {}
	--勇士
	tGoldBoss_Reward[3305770]["RewardProItem"][1] = {}
	tGoldBoss_Reward[3305770]["RewardProItem"][1]["Log"] =  12000905
	tGoldBoss_Reward[3305770]["RewardProItem"][1]["Pro"] = {{10,15}}
	tGoldBoss_Reward[3305770]["RewardProItem"][1]["Item"] = {}
	tGoldBoss_Reward[3305770]["RewardProItem"][1]["Item"][1] = {}
	tGoldBoss_Reward[3305770]["RewardProItem"][1]["Item"][1]["Id"] = 118058 
	tGoldBoss_Reward[3305770]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1 3"
	--战士
	tGoldBoss_Reward[3305770]["RewardProItem"][2] = {}
	tGoldBoss_Reward[3305770]["RewardProItem"][2]["Log"] =  12000905
	tGoldBoss_Reward[3305770]["RewardProItem"][2]["Pro"] = {{20,25}}
	tGoldBoss_Reward[3305770]["RewardProItem"][2]["Item"] = {}
	tGoldBoss_Reward[3305770]["RewardProItem"][2]["Item"][1] = {}
	tGoldBoss_Reward[3305770]["RewardProItem"][2]["Item"][1]["Id"] = 111058
	tGoldBoss_Reward[3305770]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1 3"
	--弓手
	tGoldBoss_Reward[3305770]["RewardProItem"][3] = {}
	tGoldBoss_Reward[3305770]["RewardProItem"][3]["Log"] =  12000905
	tGoldBoss_Reward[3305770]["RewardProItem"][3]["Pro"] = {{40,45}}
	tGoldBoss_Reward[3305770]["RewardProItem"][3]["Item"] = {}
	tGoldBoss_Reward[3305770]["RewardProItem"][3]["Item"][1] = {}
	tGoldBoss_Reward[3305770]["RewardProItem"][3]["Item"][1]["Id"] = 113028
	tGoldBoss_Reward[3305770]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1 3"
	--忍者
	tGoldBoss_Reward[3305770]["RewardProItem"][4] = {}
	tGoldBoss_Reward[3305770]["RewardProItem"][4]["Log"] =  12000905
	tGoldBoss_Reward[3305770]["RewardProItem"][4]["Pro"] = {{50,55}}
	tGoldBoss_Reward[3305770]["RewardProItem"][4]["Item"] = {}
	tGoldBoss_Reward[3305770]["RewardProItem"][4]["Item"][1] = {}
	tGoldBoss_Reward[3305770]["RewardProItem"][4]["Item"][1]["Id"] = 123058
	tGoldBoss_Reward[3305770]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1 3"
	--武僧
	tGoldBoss_Reward[3305770]["RewardProItem"][5] = {}
	tGoldBoss_Reward[3305770]["RewardProItem"][5]["Log"] =  12000905
	tGoldBoss_Reward[3305770]["RewardProItem"][5]["Pro"] = {{60,65}}
	tGoldBoss_Reward[3305770]["RewardProItem"][5]["Item"] = {}
	tGoldBoss_Reward[3305770]["RewardProItem"][5]["Item"][1] = {}
	tGoldBoss_Reward[3305770]["RewardProItem"][5]["Item"][1]["Id"] = 143058
	tGoldBoss_Reward[3305770]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1 3"
	--海盗
	tGoldBoss_Reward[3305770]["RewardProItem"][6] = {}
	tGoldBoss_Reward[3305770]["RewardProItem"][6]["Log"] =  12000905
	tGoldBoss_Reward[3305770]["RewardProItem"][6]["Pro"] = {{70,75}}
	tGoldBoss_Reward[3305770]["RewardProItem"][6]["Item"] = {}
	tGoldBoss_Reward[3305770]["RewardProItem"][6]["Item"][1] = {}
	tGoldBoss_Reward[3305770]["RewardProItem"][6]["Item"][1]["Id"] = 144058
	tGoldBoss_Reward[3305770]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1 3"
	--小龙
	tGoldBoss_Reward[3305770]["RewardProItem"][7] = {}
	tGoldBoss_Reward[3305770]["RewardProItem"][7]["Log"] =  12000905
	tGoldBoss_Reward[3305770]["RewardProItem"][7]["Pro"] = {{80,85}}
	tGoldBoss_Reward[3305770]["RewardProItem"][7]["Item"] = {}
	tGoldBoss_Reward[3305770]["RewardProItem"][7]["Item"][1] = {}
	tGoldBoss_Reward[3305770]["RewardProItem"][7]["Item"][1]["Id"] = 148058
	tGoldBoss_Reward[3305770]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1 3"
	--道士
	tGoldBoss_Reward[3305770]["RewardProItem"][8] = {}
	tGoldBoss_Reward[3305770]["RewardProItem"][8]["Log"] =  12000905
	tGoldBoss_Reward[3305770]["RewardProItem"][8]["Pro"] = {{100,145}}
	tGoldBoss_Reward[3305770]["RewardProItem"][8]["Item"] = {}
	tGoldBoss_Reward[3305770]["RewardProItem"][8]["Item"][1] = {}
	tGoldBoss_Reward[3305770]["RewardProItem"][8]["Item"][1]["Id"] = 114058
	tGoldBoss_Reward[3305770]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1 3"
	--铁扇门
	tGoldBoss_Reward[3305770]["RewardProItem"][9] = {}
	tGoldBoss_Reward[3305770]["RewardProItem"][9]["Log"] =  12000905
	tGoldBoss_Reward[3305770]["RewardProItem"][9]["Pro"] = {{160,165}}
	tGoldBoss_Reward[3305770]["RewardProItem"][9]["Item"] = {}
	tGoldBoss_Reward[3305770]["RewardProItem"][9]["Item"][1] = {}
	tGoldBoss_Reward[3305770]["RewardProItem"][9]["Item"][1]["Id"] = 170058
	tGoldBoss_Reward[3305770]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1 3"
--70装备礼包
	tGoldBoss_Reward[3305771] = {}
	tGoldBoss_Reward[3305771]["DeleteItem"] = {}
	tGoldBoss_Reward[3305771]["DeleteItem"][1] = {}
	tGoldBoss_Reward[3305771]["DeleteItem"][1]["Id"] = 3305771
	tGoldBoss_Reward[3305771]["RewardProItem"] = {}
	--勇士
	tGoldBoss_Reward[3305771]["RewardProItem"][1] = {}
	tGoldBoss_Reward[3305771]["RewardProItem"][1]["Log"] =  12000905
	tGoldBoss_Reward[3305771]["RewardProItem"][1]["Pro"] = {{10,15}}
	tGoldBoss_Reward[3305771]["RewardProItem"][1]["Item"] = {}
	tGoldBoss_Reward[3305771]["RewardProItem"][1]["Item"][1] = {}
	tGoldBoss_Reward[3305771]["RewardProItem"][1]["Item"][1]["Id"] = 130068
	tGoldBoss_Reward[3305771]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1 3"
	--战士
	tGoldBoss_Reward[3305771]["RewardProItem"][2] = {}
	tGoldBoss_Reward[3305771]["RewardProItem"][2]["Log"] =  12000905
	tGoldBoss_Reward[3305771]["RewardProItem"][2]["Pro"] = {{20,25}}
	tGoldBoss_Reward[3305771]["RewardProItem"][2]["Item"] = {}
	tGoldBoss_Reward[3305771]["RewardProItem"][2]["Item"][1] = {}
	tGoldBoss_Reward[3305771]["RewardProItem"][2]["Item"][1]["Id"] = 131068
	tGoldBoss_Reward[3305771]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1 3"
	--弓手
	tGoldBoss_Reward[3305771]["RewardProItem"][3] = {}
	tGoldBoss_Reward[3305771]["RewardProItem"][3]["Log"] =  12000905
	tGoldBoss_Reward[3305771]["RewardProItem"][3]["Pro"] = {{40,45}}
	tGoldBoss_Reward[3305771]["RewardProItem"][3]["Item"] = {}
	tGoldBoss_Reward[3305771]["RewardProItem"][3]["Item"][1] = {}
	tGoldBoss_Reward[3305771]["RewardProItem"][3]["Item"][1]["Id"] = 133068
	tGoldBoss_Reward[3305771]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1 3"
	--忍者
	tGoldBoss_Reward[3305771]["RewardProItem"][4] = {}
	tGoldBoss_Reward[3305771]["RewardProItem"][4]["Log"] =  12000905
	tGoldBoss_Reward[3305771]["RewardProItem"][4]["Pro"] = {{50,55}}
	tGoldBoss_Reward[3305771]["RewardProItem"][4]["Item"] = {}
	tGoldBoss_Reward[3305771]["RewardProItem"][4]["Item"][1] = {}
	tGoldBoss_Reward[3305771]["RewardProItem"][4]["Item"][1]["Id"] = 135068
	tGoldBoss_Reward[3305771]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1 3"
	--武僧
	tGoldBoss_Reward[3305771]["RewardProItem"][5] = {}
	tGoldBoss_Reward[3305771]["RewardProItem"][5]["Log"] =  12000905
	tGoldBoss_Reward[3305771]["RewardProItem"][5]["Pro"] = {{60,65}}
	tGoldBoss_Reward[3305771]["RewardProItem"][5]["Item"] = {}
	tGoldBoss_Reward[3305771]["RewardProItem"][5]["Item"][1] = {}
	tGoldBoss_Reward[3305771]["RewardProItem"][5]["Item"][1]["Id"] = 136068
	tGoldBoss_Reward[3305771]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1 3"
	--海盗
	tGoldBoss_Reward[3305771]["RewardProItem"][6] = {}
	tGoldBoss_Reward[3305771]["RewardProItem"][6]["Log"] =  12000905
	tGoldBoss_Reward[3305771]["RewardProItem"][6]["Pro"] = {{70,75}}
	tGoldBoss_Reward[3305771]["RewardProItem"][6]["Item"] = {}
	tGoldBoss_Reward[3305771]["RewardProItem"][6]["Item"][1] = {}
	tGoldBoss_Reward[3305771]["RewardProItem"][6]["Item"][1]["Id"] = 139068
	tGoldBoss_Reward[3305771]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1 3"
	--小龙
	tGoldBoss_Reward[3305771]["RewardProItem"][7] = {}
	tGoldBoss_Reward[3305771]["RewardProItem"][7]["Log"] =  12000905
	tGoldBoss_Reward[3305771]["RewardProItem"][7]["Pro"] = {{80,85}}
	tGoldBoss_Reward[3305771]["RewardProItem"][7]["Item"] = {}
	tGoldBoss_Reward[3305771]["RewardProItem"][7]["Item"][1] = {}
	tGoldBoss_Reward[3305771]["RewardProItem"][7]["Item"][1]["Id"] = 138068
	tGoldBoss_Reward[3305771]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1 3"
	--道士
	tGoldBoss_Reward[3305771]["RewardProItem"][8] = {}
	tGoldBoss_Reward[3305771]["RewardProItem"][8]["Log"] =  12000905
	tGoldBoss_Reward[3305771]["RewardProItem"][8]["Pro"] = {{100,145}}
	tGoldBoss_Reward[3305771]["RewardProItem"][8]["Item"] = {}
	tGoldBoss_Reward[3305771]["RewardProItem"][8]["Item"][1] = {}
	tGoldBoss_Reward[3305771]["RewardProItem"][8]["Item"][1]["Id"] = 134068
	tGoldBoss_Reward[3305771]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1 3"
	--铁扇门
	tGoldBoss_Reward[3305771]["RewardProItem"][9] = {}
	tGoldBoss_Reward[3305771]["RewardProItem"][9]["Log"] =  12000905
	tGoldBoss_Reward[3305771]["RewardProItem"][9]["Pro"] = {{160,165}}
	tGoldBoss_Reward[3305771]["RewardProItem"][9]["Item"] = {}
	tGoldBoss_Reward[3305771]["RewardProItem"][9]["Item"][1] = {}
	tGoldBoss_Reward[3305771]["RewardProItem"][9]["Item"][1]["Id"] = 101068
	tGoldBoss_Reward[3305771]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1 3"
--90装备礼包
	tGoldBoss_Reward[3305772] = {}
	tGoldBoss_Reward[3305772]["DeleteItem"] = {}
	tGoldBoss_Reward[3305772]["DeleteItem"][1] = {}
	tGoldBoss_Reward[3305772]["DeleteItem"][1]["Id"] = 3305772
	tGoldBoss_Reward[3305772]["RewardProItem"] = {}
	--勇士
	tGoldBoss_Reward[3305772]["RewardProItem"][1] = {}
	tGoldBoss_Reward[3305772]["RewardProItem"][1]["Log"] =  12000905
	tGoldBoss_Reward[3305772]["RewardProItem"][1]["Pro"] = {{10,15}}
	tGoldBoss_Reward[3305772]["RewardProItem"][1]["Item"] = {}
	tGoldBoss_Reward[3305772]["RewardProItem"][1]["Item"][1] = {}
	tGoldBoss_Reward[3305772]["RewardProItem"][1]["Item"][1]["Id"] = 410158
	tGoldBoss_Reward[3305772]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1 3"
	--战士
	tGoldBoss_Reward[3305772]["RewardProItem"][2] = {}
	tGoldBoss_Reward[3305772]["RewardProItem"][2]["Log"] =  12000905
	tGoldBoss_Reward[3305772]["RewardProItem"][2]["Pro"] = {{20,25}}
	tGoldBoss_Reward[3305772]["RewardProItem"][2]["Item"] = {}
	tGoldBoss_Reward[3305772]["RewardProItem"][2]["Item"][1] = {}
	tGoldBoss_Reward[3305772]["RewardProItem"][2]["Item"][1]["Id"] = 624158
	tGoldBoss_Reward[3305772]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1 3"
	--弓手
	tGoldBoss_Reward[3305772]["RewardProItem"][3] = {}
	tGoldBoss_Reward[3305772]["RewardProItem"][3]["Log"] =  12000905
	tGoldBoss_Reward[3305772]["RewardProItem"][3]["Pro"] = {{40,45}}
	tGoldBoss_Reward[3305772]["RewardProItem"][3]["Item"] = {}
	tGoldBoss_Reward[3305772]["RewardProItem"][3]["Item"][1] = {}
	tGoldBoss_Reward[3305772]["RewardProItem"][3]["Item"][1]["Id"] = 613158
	tGoldBoss_Reward[3305772]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1 3"
	--忍者
	tGoldBoss_Reward[3305772]["RewardProItem"][4] = {}
	tGoldBoss_Reward[3305772]["RewardProItem"][4]["Log"] =  12000905
	tGoldBoss_Reward[3305772]["RewardProItem"][4]["Pro"] = {{50,55}}
	tGoldBoss_Reward[3305772]["RewardProItem"][4]["Item"] = {}
	tGoldBoss_Reward[3305772]["RewardProItem"][4]["Item"][1] = {}
	tGoldBoss_Reward[3305772]["RewardProItem"][4]["Item"][1]["Id"] = 601158
	tGoldBoss_Reward[3305772]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1 3"
	--武僧
	tGoldBoss_Reward[3305772]["RewardProItem"][5] = {}
	tGoldBoss_Reward[3305772]["RewardProItem"][5]["Log"] =  12000905
	tGoldBoss_Reward[3305772]["RewardProItem"][5]["Pro"] = {{60,65}}
	tGoldBoss_Reward[3305772]["RewardProItem"][5]["Item"] = {}
	tGoldBoss_Reward[3305772]["RewardProItem"][5]["Item"][1] = {}
	tGoldBoss_Reward[3305772]["RewardProItem"][5]["Item"][1]["Id"] = 610158
	tGoldBoss_Reward[3305772]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1 3"
	--海盗
	tGoldBoss_Reward[3305772]["RewardProItem"][6] = {}
	tGoldBoss_Reward[3305772]["RewardProItem"][6]["Log"] =  12000905
	tGoldBoss_Reward[3305772]["RewardProItem"][6]["Pro"] = {{70,75}}
	tGoldBoss_Reward[3305772]["RewardProItem"][6]["Item"] = {}
	tGoldBoss_Reward[3305772]["RewardProItem"][6]["Item"][1] = {}
	tGoldBoss_Reward[3305772]["RewardProItem"][6]["Item"][1]["Id"] = 611158
	tGoldBoss_Reward[3305772]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1 3"
	--小龙
	tGoldBoss_Reward[3305772]["RewardProItem"][7] = {}
	tGoldBoss_Reward[3305772]["RewardProItem"][7]["Log"] =  12000905
	tGoldBoss_Reward[3305772]["RewardProItem"][7]["Pro"] = {{80,85}}
	tGoldBoss_Reward[3305772]["RewardProItem"][7]["Item"] = {}
	tGoldBoss_Reward[3305772]["RewardProItem"][7]["Item"][1] = {}
	tGoldBoss_Reward[3305772]["RewardProItem"][7]["Item"][1]["Id"] = 617158
	tGoldBoss_Reward[3305772]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1 3"
	--道士
	tGoldBoss_Reward[3305772]["RewardProItem"][8] = {}
	tGoldBoss_Reward[3305772]["RewardProItem"][8]["Log"] =  12000905
	tGoldBoss_Reward[3305772]["RewardProItem"][8]["Pro"] = {{100,145}}
	tGoldBoss_Reward[3305772]["RewardProItem"][8]["Item"] = {}
	tGoldBoss_Reward[3305772]["RewardProItem"][8]["Item"][1] = {}
	tGoldBoss_Reward[3305772]["RewardProItem"][8]["Item"][1]["Id"] = 421158
	tGoldBoss_Reward[3305772]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1 3"
	--铁扇门
	tGoldBoss_Reward[3305772]["RewardProItem"][9] = {}
	tGoldBoss_Reward[3305772]["RewardProItem"][9]["Log"] =  12000905
	tGoldBoss_Reward[3305772]["RewardProItem"][9]["Pro"] = {{160,165}}
	tGoldBoss_Reward[3305772]["RewardProItem"][9]["Item"] = {}
	tGoldBoss_Reward[3305772]["RewardProItem"][9]["Item"][1] = {}
	tGoldBoss_Reward[3305772]["RewardProItem"][9]["Item"][1]["Id"] = 626158
	tGoldBoss_Reward[3305772]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1 3"
--100装备礼包
	tGoldBoss_Reward[3305773] = {}
	tGoldBoss_Reward[3305773]["DeleteItem"] = {}
	tGoldBoss_Reward[3305773]["DeleteItem"][1] = {}
	tGoldBoss_Reward[3305773]["DeleteItem"][1]["Id"] = 3305773
	tGoldBoss_Reward[3305773]["RewardProItem"] = {}
	--其他职业
	tGoldBoss_Reward[3305773]["RewardProItem"][1] = {}
	tGoldBoss_Reward[3305773]["RewardProItem"][1]["Log"] =  12000905
	tGoldBoss_Reward[3305773]["RewardProItem"][1]["Pro"] = {{10,15},{20,25},{40,45},{50,55},{60,65},{70,75},{80,85},{160,165}}
	tGoldBoss_Reward[3305773]["RewardProItem"][1]["Item"] = {}
	tGoldBoss_Reward[3305773]["RewardProItem"][1]["Item"][1] = {}
	tGoldBoss_Reward[3305773]["RewardProItem"][1]["Item"][1]["Id"] = 150198
	tGoldBoss_Reward[3305773]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1 3"
	tGoldBoss_Reward[3305773]["RewardProItem"][1]["Item"][2] = {}
	tGoldBoss_Reward[3305773]["RewardProItem"][1]["Item"][2]["Id"] = 120188
	tGoldBoss_Reward[3305773]["RewardProItem"][1]["Item"][2]["Attr"] = "0 1 3"
	tGoldBoss_Reward[3305773]["RewardProItem"][1]["Item"][3] = {}
	tGoldBoss_Reward[3305773]["RewardProItem"][1]["Item"][3]["Id"] = 160198
	tGoldBoss_Reward[3305773]["RewardProItem"][1]["Item"][3]["Attr"] = "0 1 3"
	--道士
	tGoldBoss_Reward[3305773]["RewardProItem"][2] = {}
	tGoldBoss_Reward[3305773]["RewardProItem"][2]["Log"] =  12000905
	tGoldBoss_Reward[3305773]["RewardProItem"][2]["Pro"] = {{100,145}}
	tGoldBoss_Reward[3305773]["RewardProItem"][2]["Item"] = {}
	tGoldBoss_Reward[3305773]["RewardProItem"][2]["Item"][1] = {}
	tGoldBoss_Reward[3305773]["RewardProItem"][2]["Item"][1]["Id"] = 152188
	tGoldBoss_Reward[3305773]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1 3"
	tGoldBoss_Reward[3305773]["RewardProItem"][2]["Item"][2] = {}
	tGoldBoss_Reward[3305773]["RewardProItem"][2]["Item"][2]["Id"] = 121188
	tGoldBoss_Reward[3305773]["RewardProItem"][2]["Item"][2]["Attr"] = "0 1 3"
	tGoldBoss_Reward[3305773]["RewardProItem"][2]["Item"][3] = {}
	tGoldBoss_Reward[3305773]["RewardProItem"][2]["Item"][3]["Id"] = 160198
	tGoldBoss_Reward[3305773]["RewardProItem"][2]["Item"][3]["Attr"] = "0 1 3"


local tGoldBoss_SendMap = {}
	tGoldBoss_SendMap[3305433] = {} --传至二层
	tGoldBoss_SendMap[3305433]["MapId"] = 10210
	tGoldBoss_SendMap[3305433]["CellX"] = 187
	tGoldBoss_SendMap[3305433]["CellY"] = 158
	tGoldBoss_SendMap[3305433]["Battle"] = 165
	tGoldBoss_SendMap[3305433]["Floor"] = 2
	tGoldBoss_SendMap[3305433]["Log"] = "0 0 3305433 1 12000869 2 0 0"
	--tGoldBoss_SendMap[3305433]["Index"] = "提示传送到XX地图"

	tGoldBoss_SendMap[3305434] = {} --传至三层
	tGoldBoss_SendMap[3305434]["MapId"] = 10211
	tGoldBoss_SendMap[3305434]["CellX"] = 365
	tGoldBoss_SendMap[3305434]["CellY"] = 329
	tGoldBoss_SendMap[3305434]["Battle"] = 250
	tGoldBoss_SendMap[3305434]["Floor"] = 3
	tGoldBoss_SendMap[3305434]["Log"] = "0 0 3305434 1 12000869 2 0 0"
	--tGoldBoss_SendMap[3305434]["Index"] = "提示传送到XX地图"

	tGoldBoss_SendMap[3305435] = {} --传至四层
	tGoldBoss_SendMap[3305435]["MapId"] = 10212
	tGoldBoss_SendMap[3305435]["CellX"] = 155
	tGoldBoss_SendMap[3305435]["CellY"] = 376
	tGoldBoss_SendMap[3305435]["Battle"] = 300
	tGoldBoss_SendMap[3305435]["Floor"] = 4
	tGoldBoss_SendMap[3305435]["Log"] = "0 0 3305435 1 12000869 2 0 0"
	--tGoldBoss_SendMap[3305435]["Index"] = "提示传送到XX地图"
	tGoldBoss_SendMap["EightTime"] = "00:00 00:08"
	
local tGoldBoss_NewStc = {}
--杀小怪任务编号
tGoldBoss_NewStc[1] = {}
tGoldBoss_NewStc[1]["EventType"] = 167
tGoldBoss_NewStc[1]["DataType"] = 96
--杀小怪数量
tGoldBoss_NewStc[2] = {}
tGoldBoss_NewStc[2]["EventType"] = 167
tGoldBoss_NewStc[2]["DataType"] = 97

local tGoldBoss_GetMoney = {}
tGoldBoss_GetMoney[3305433] = {}
tGoldBoss_GetMoney[3305433]["RewardMoney"] = {}
tGoldBoss_GetMoney[3305433]["RewardMoney"]["Value"] = 500000
tGoldBoss_GetMoney[3305433]["Gold"] = true
tGoldBoss_GetMoney[3305433]["LogId"] = 12000869
tGoldBoss_GetMoney[3305433]["DeleteItem"] = {}
tGoldBoss_GetMoney[3305433]["DeleteItem"][1] = {}
tGoldBoss_GetMoney[3305433]["DeleteItem"][1]["Id"] = 3305433

tGoldBoss_GetMoney[3305434] = {}
tGoldBoss_GetMoney[3305434]["RewardMoney"] = {}
tGoldBoss_GetMoney[3305434]["RewardMoney"]["Value"] = 1000000
tGoldBoss_GetMoney[3305434]["Gold"] = true
tGoldBoss_GetMoney[3305434]["LogId"] = 12000869
tGoldBoss_GetMoney[3305434]["DeleteItem"] = {}
tGoldBoss_GetMoney[3305434]["DeleteItem"][1] = {}
tGoldBoss_GetMoney[3305434]["DeleteItem"][1]["Id"] = 3305434

tGoldBoss_GetMoney[3305435] = {}
tGoldBoss_GetMoney[3305435]["RewardMoney"] = {}
tGoldBoss_GetMoney[3305435]["RewardMoney"]["Value"] = 2000000
tGoldBoss_GetMoney[3305435]["Gold"] = true
tGoldBoss_GetMoney[3305435]["LogId"] = 12000869
tGoldBoss_GetMoney[3305435]["DeleteItem"] = {}
tGoldBoss_GetMoney[3305435]["DeleteItem"][1] = {}
tGoldBoss_GetMoney[3305435]["DeleteItem"][1]["Id"] = 3305435


--------------------------------逻辑部分---------------------------------------------
-- 传送卷传送(二层掩码杀20，三层20，四层15)
function tGoldBoss_ChgMap(nIndex)

	if Sys_ChkDayTime(tGoldBoss_SendMap["EightTime"]) then
		return
	end
	
	if tGoldBoss_SendMap[nIndex] == nil then
		return
	end
	local nMapId = tGoldBoss_SendMap[nIndex]["MapId"]
	local nCellX = tGoldBoss_SendMap[nIndex]["CellX"]
	local nCellY = tGoldBoss_SendMap[nIndex]["CellY"]
--	local sIndex = tGoldBoss_SendMap[nIndex]["Index"]
	local nEventType = tGoldBoss_Stc[nIndex]["EventType"]
	local nDataType = tGoldBoss_Stc[nIndex]["DataType"]
	local nData = tGoldBoss_Stc[nIndex]["Data"]
	local nUserMapId = Get_UserMapId(0)
	--不能传送同层
	if nUserMapId == nMapId then
		--提示不能传送同层和底层（相关提示）
		local nFloor = tGoldBoss_SendMap[nIndex]["Floor"]
		User_TalkChannel2005(string.format(tBossHouse_Text["Floored"],nFloor))
		return false
	end
	
	--判断玩家战斗力是否充足
	local nUserBattleLevel = Get_UserBattleLevel()
	local nNeedBattleLevel = tGoldBoss_SendMap[nIndex]["Battle"]
	if nUserBattleLevel < nNeedBattleLevel then
		User_TalkChannel2005(string.format(tBossHouse_Text["BattleLess"],nNeedBattleLevel))
		return
	end
	
	if User_ChgMap(nMapId,nCellX,nCellY,0) then
		--增加添加任务面板操作
		BossHouse_EnterMap(nMapId)
		--置掩码
		Task_AddStatistic(nEventType,nDataType,nData,1)
		--接受杀小怪任务
		
		local nTaskDetailId = Get_UserStatisticValue(tGoldBoss_NewStc[1]["EventType"],tGoldBoss_NewStc[1]["DataType"]) + 3919
		Task_SetTaskDetailCompleteFlag(nTaskDetailId,0)
		Task_DelTaskDetail(nTaskDetailId)
		Task_SetStatistic(tGoldBoss_NewStc[1]["EventType"],tGoldBoss_NewStc[1]["DataType"],0,1)
		Task_SetStatistic(tGoldBoss_NewStc[2]["EventType"],tGoldBoss_NewStc[2]["DataType"],0,1)
		Task_SetStcTimestamp(tGoldBoss_NewStc[1]["EventType"],tGoldBoss_NewStc[1]["DataType"],0)
		Task_SetStcTimestamp(tGoldBoss_NewStc[2]["EventType"],tGoldBoss_NewStc[2]["DataType"],0)
		
		BossHouse_AwardAcceptTask(nMapId)
		Item_DelItem(nIndex)
		--打上log
		Sys_SaveActionFestivalLog(tGoldBoss_SendMap[nIndex]["Log"])
		--User_TalkChannel2005(tGoldBoss_Text[sIndex])--提示传送到XX地图
	end
end


function tGoldBoss_GetEquipment(nItemId)
	local nUserId = Get_UserId()
	local nLevel = Get_UserLevel(nUserId)
	local nNeedLevel = tGoldBoss_Param["NeedLeve"][nItemId]
	-- local nEvent = tGoldBoss_Stc["EventType"]
	-- local nType = tGoldBoss_Stc["DataType"]
	--物品检测
	if not Item_ChkItem(nItemId) then
		return false
	end
	--空间判断
	local nSpace = RewardTemplate_GetRewardSpace(tGoldBoss_Reward[nItemId]) - RewardTemplate_GetDelSpace( tGoldBoss_Reward[nItemId])
	if not User_CheckLeftSpace(nSpace) then
		--Sys_MsgBox(string.format(tGoldBoss_Text["xx"],nSpace))
		return false
	end
	----等级判断
	if nLevel < nNeedLevel then
		return false
	end
	RewardTemplate_UseItem(tGoldBoss_Reward[nItemId])
end

--修复传送卷轴换金币
function tGoldBoss_WasteMoney(nItemId)
	RewardTemplate_UseItemAndMsg(tGoldBoss_GetMoney[nItemId])
end
-- --上线触发引导图
-- function tGoldBoss_BootPrompt ()
	-- User_SendWebDialog("http://zf.99.com/activity/2016/ngcyh/11111.shtml")
-- end


---------------------------------物品部分---------------------------------------------
--------物品无对白模板
--二层传送卷
tItem[3305433] = tItem[3305433] or {}
tItem[3305433]["Function"] = function(nItemId,sItemName)
	tGoldBoss_WasteMoney(nItemId)
end
--三层传送卷
tItem[3305434] = tItem[3305434] or {}
tItem[3305434]["Function"] = function(nItemId,sItemName)
	tGoldBoss_WasteMoney(nItemId)
end
--四层传送卷
tItem[3305435] = tItem[3305435] or {}
tItem[3305435]["Function"] = function(nItemId,sItemName)
	tGoldBoss_WasteMoney(nItemId)
end

--60级礼包
tItem[3305770] = tItem[3305770] or {}
tItem[3305770]["Function"] = function(nItemId,sItemName)
	tGoldBoss_GetEquipment(nItemId)
end
--70级礼包
tItem[3305771] = tItem[3305771] or {}
tItem[3305771]["Function"] = function(nItemId,sItemName)
	tGoldBoss_GetEquipment(nItemId)
end
--90级礼包
tItem[3305772] = tItem[3305772] or {}
tItem[3305772]["Function"] = function(nItemId,sItemName)
	tGoldBoss_GetEquipment(nItemId)
end
--100级礼包
tItem[3305773] = tItem[3305773] or {}
tItem[3305773]["Function"] = function(nItemId,sItemName)
	tGoldBoss_GetEquipment(nItemId)
end

---------------------------------上线触发--------------------------------------------
-- tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- table.insert(tSystem_PlayLogin_Func,tGoldBoss_BootPrompt)
