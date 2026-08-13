------------------------------------------------------------------------------------
--Name：            200728[英文征服][活动脚本]水果机优化活动（8.11-8.31）
--Creator:      江宇君
--Created:     2020-07-28
------------------------------------------------------------------------------------
--任务需求： 活动时间：8.18-9.7

-- lua.ini 41937
-- logid 12002098

-- 命名前缀
-- FruitMachine_

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------

------------------------------------------------------------------------------
	-- ===单个苹果奖励
	-- ===索引:tFruitMachine_Reward[3316683]
	-- ===删除:3316683
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf15
local tFruitMachine_Reward = {}
	tFruitMachine_Reward[3316683] = {}
	tFruitMachine_Reward[3316683]["LogId"] = 12002098
	tFruitMachine_Reward[3316683]["DeleteItem"] = {}
	tFruitMachine_Reward[3316683]["DeleteItem"][1] = {}
	tFruitMachine_Reward[3316683]["DeleteItem"][1]["Id"] = 3316683 -- 【库】Fruity+StonePack[属性:9]
	tFruitMachine_Reward[3316683]["RewardItem"] = {}
	tFruitMachine_Reward[3316683]["RewardItem"][1] = {}
	tFruitMachine_Reward[3316683]["RewardItem"][1]["Id"] = 730002 -- +2Stone[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2（赠）
	tFruitMachine_Reward[3316683]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+2Stone（赠）*1
	tFruitMachine_Reward[3316683]["RewardEffect"] = {}
	tFruitMachine_Reward[3316683]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFruitMachine_Reward[3316683]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===单个桔子奖励
	-- ===索引:tFruitMachine_Reward[3316686]
	-- ===删除:3316686
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf15
	tFruitMachine_Reward[3316686] = {}
	tFruitMachine_Reward[3316686]["LogId"] = 12002098
	tFruitMachine_Reward[3316686]["DeleteItem"] = {}
	tFruitMachine_Reward[3316686]["DeleteItem"][1] = {}
	tFruitMachine_Reward[3316686]["DeleteItem"][1]["Id"] = 3316686 -- 【库】FruityGinsengPack[属性:9]
	tFruitMachine_Reward[3316686]["RewardItem"] = {}
	tFruitMachine_Reward[3316686]["RewardItem"][1] = {}
	tFruitMachine_Reward[3316686]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tFruitMachine_Reward[3316686]["RewardItem"][1]["Attr"] = "0 1" -- GinsengFruit*1
	tFruitMachine_Reward[3316686]["RewardEffect"] = {}
	tFruitMachine_Reward[3316686]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFruitMachine_Reward[3316686]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===单个柠檬奖励
	-- ===索引:tFruitMachine_Reward[3316682]
	-- ===删除:3316682
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf15
	tFruitMachine_Reward[3316682] = {}
	tFruitMachine_Reward[3316682]["LogId"] = 12002098
	tFruitMachine_Reward[3316682]["DeleteItem"] = {}
	tFruitMachine_Reward[3316682]["DeleteItem"][1] = {}
	tFruitMachine_Reward[3316682]["DeleteItem"][1]["Id"] = 3316682 -- 【库】FruityRunePack[属性:9]
	tFruitMachine_Reward[3316682]["RewardItem"] = {}
	tFruitMachine_Reward[3316682]["RewardItem"][1] = {}
	tFruitMachine_Reward[3316682]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】10个万能神纹精粹（赠）
	tFruitMachine_Reward[3316682]["RewardItem"][1]["Attr"] = "0 10 3" -- UniversalRuneEssence（赠）*10
	tFruitMachine_Reward[3316682]["RewardEffect"] = {}
	tFruitMachine_Reward[3316682]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFruitMachine_Reward[3316682]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===单个铃铛奖励
	-- ===索引:tFruitMachine_Reward[3316687]
	-- ===删除:3316687
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf15
	tFruitMachine_Reward[3316687] = {}
	tFruitMachine_Reward[3316687]["LogId"] = 12002098
	tFruitMachine_Reward[3316687]["DeleteItem"] = {}
	tFruitMachine_Reward[3316687]["DeleteItem"][1] = {}
	tFruitMachine_Reward[3316687]["DeleteItem"][1]["Id"] = 3316687 -- 【库】FruitySteedPack[属性:9]
	tFruitMachine_Reward[3316687]["RewardItem"] = {}
	tFruitMachine_Reward[3316687]["RewardItem"][1] = {}
	tFruitMachine_Reward[3316687]["RewardItem"][1]["Id"] = 3314253 -- YellowRuneFragment[3314253][属性:8][叠加:10000][金币:0], 【表格】黄色神纹碎片（赠）
	tFruitMachine_Reward[3316687]["RewardItem"][1]["Attr"] = "0 1 3" -- YellowRuneFragment（赠）*1
	tFruitMachine_Reward[3316687]["RewardEffect"] = {}
	tFruitMachine_Reward[3316687]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFruitMachine_Reward[3316687]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===单个西瓜奖励
	-- ===索引:tFruitMachine_Reward[3316685]
	-- ===删除:3316685
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf15
	tFruitMachine_Reward[3316685] = {}
	tFruitMachine_Reward[3316685]["LogId"] = 12002098
	tFruitMachine_Reward[3316685]["DeleteItem"] = {}
	tFruitMachine_Reward[3316685]["DeleteItem"][1] = {}
	tFruitMachine_Reward[3316685]["DeleteItem"][1]["Id"] = 3316685 -- 【库】FruityStarStonePack[属性:9]
	tFruitMachine_Reward[3316685]["RewardItem"] = {}
	tFruitMachine_Reward[3316685]["RewardItem"][1] = {}
	tFruitMachine_Reward[3316685]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tFruitMachine_Reward[3316685]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tFruitMachine_Reward[3316685]["RewardEffect"] = {}
	tFruitMachine_Reward[3316685]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFruitMachine_Reward[3316685]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===单个星星奖励
	-- ===索引:tFruitMachine_Reward[3316684]
	-- ===删除:3316684
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf15
	tFruitMachine_Reward[3316684] = {}
	tFruitMachine_Reward[3316684]["LogId"] = 12002098
	tFruitMachine_Reward[3316684]["DeleteItem"] = {}
	tFruitMachine_Reward[3316684]["DeleteItem"][1] = {}
	tFruitMachine_Reward[3316684]["DeleteItem"][1]["Id"] = 3316684 -- 【库】FruityChiPack[属性:9]
	tFruitMachine_Reward[3316684]["RewardStrengthValue"] = {}
	tFruitMachine_Reward[3316684]["RewardStrengthValue"]["Value"] = 100 -- 气力值, 【需求】100气力值
	tFruitMachine_Reward[3316684]["RewardEffect"] = {}
	tFruitMachine_Reward[3316684]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFruitMachine_Reward[3316684]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===单个77奖励
	-- ===索引:tFruitMachine_Reward[3316688]
	-- ===删除:3316688
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf15
	tFruitMachine_Reward[3316688] = {}
	tFruitMachine_Reward[3316688]["LogId"] = 12002098
	tFruitMachine_Reward[3316688]["DeleteItem"] = {}
	tFruitMachine_Reward[3316688]["DeleteItem"][1] = {}
	tFruitMachine_Reward[3316688]["DeleteItem"][1]["Id"] = 3316688 -- 【库】FruityPotencyPack[属性:9]
	tFruitMachine_Reward[3316688]["RewardRepairValue"] = {}
	tFruitMachine_Reward[3316688]["RewardRepairValue"]["Value"] = 500 -- 修为值, 【需求】500修为值
	tFruitMachine_Reward[3316688]["RewardEffect"] = {}
	tFruitMachine_Reward[3316688]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFruitMachine_Reward[3316688]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===单个BAR奖励
	-- ===索引:tFruitMachine_Reward[3316689]
	-- ===删除:3316689
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf15
	tFruitMachine_Reward[3316689] = {}
	tFruitMachine_Reward[3316689]["LogId"] = 12002098
	tFruitMachine_Reward[3316689]["DeleteItem"] = {}
	tFruitMachine_Reward[3316689]["DeleteItem"][1] = {}
	tFruitMachine_Reward[3316689]["DeleteItem"][1]["Id"] = 3316689 -- 【库】FruityTrainingPillPack[属性:9]
	tFruitMachine_Reward[3316689]["RewardItem"] = {}
	tFruitMachine_Reward[3316689]["RewardItem"][1] = {}
	tFruitMachine_Reward[3316689]["RewardItem"][1]["Id"] = 3003126 -- SeniorTrainingPill[3003126][属性:0][叠加:10000][金币:0], 【表格】究极通神丹
	tFruitMachine_Reward[3316689]["RewardItem"][1]["Attr"] = "0 1 3" -- SeniorTrainingPill（赠）*1
	tFruitMachine_Reward[3316689]["RewardEffect"] = {}
	tFruitMachine_Reward[3316689]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFruitMachine_Reward[3316689]["RewardEffect"]["Effect"] = "angelwing"

-- 兑换数据
local tFruitMachine_NpcChange = {}
	-- 要兑换的物品
	-- 索引说明
	-- ItemId 用于兑换的物品id 为nil或0时表示不使用物品进行兑换
	-- Monopoly 是否赠品 	0 必须是非赠品 1 不管是不是赠品非赠品 2 必须是赠品
	-- Additional 是否追加	具体数字表示追加值 为nil或0时表示不检测追加
	-- ColorIndex 物品颜色	具体数字表示颜色值 为nil或0时表示不检测颜色
	-- StrengthValue 气力值	具体用气力值进行兑换 为nil或0时表示不检测气力值
	-- RepairValue 修为值	表示用修为值进行兑换 为nil或0时表示不检测修为值
	-- Num 用于兑换的物品/气力值/修为值数量
	-- Func 使用的接口
	tFruitMachine_NpcChange["Exchange"] = {}
	
	 -- +2赤练石（赠）兑换 苹果
	tFruitMachine_NpcChange["Exchange"][211] = {}
	tFruitMachine_NpcChange["Exchange"][211]["ItemId"] = 730002
	tFruitMachine_NpcChange["Exchange"][211]["Monopoly"] = 2
	tFruitMachine_NpcChange["Exchange"][211]["StrengthValue"] = nil
	tFruitMachine_NpcChange["Exchange"][211]["RepairValue"] = nil
	tFruitMachine_NpcChange["Exchange"][211]["Num"] = 1
	
	-- 人参果 兑换 桔子
	tFruitMachine_NpcChange["Exchange"][212] = {}
	tFruitMachine_NpcChange["Exchange"][212]["ItemId"] = 3009100
	tFruitMachine_NpcChange["Exchange"][212]["Monopoly"] = 0
	tFruitMachine_NpcChange["Exchange"][212]["StrengthValue"] = nil
	tFruitMachine_NpcChange["Exchange"][212]["RepairValue"] = nil
	tFruitMachine_NpcChange["Exchange"][212]["Num"] = 1
	
	-- 10个万能神纹精粹（赠） 兑换 柠檬
	tFruitMachine_NpcChange["Exchange"][213] = {}
	tFruitMachine_NpcChange["Exchange"][213]["ItemId"] = 4060001
	tFruitMachine_NpcChange["Exchange"][213]["Monopoly"] = 2
	tFruitMachine_NpcChange["Exchange"][213]["StrengthValue"] = nil
	tFruitMachine_NpcChange["Exchange"][213]["RepairValue"] = nil
	tFruitMachine_NpcChange["Exchange"][213]["Num"] = 10
	
	-- 黄色神纹碎片（赠） 兑换 铃铛
	tFruitMachine_NpcChange["Exchange"][214] = {}
	tFruitMachine_NpcChange["Exchange"][214]["ItemId"] = 3314253
	tFruitMachine_NpcChange["Exchange"][214]["Monopoly"] = 2
	tFruitMachine_NpcChange["Exchange"][214]["StrengthValue"] = nil
	tFruitMachine_NpcChange["Exchange"][214]["RepairValue"] = nil
	tFruitMachine_NpcChange["Exchange"][214]["Num"] = 1
	
	-- 明亮星陨石 兑换 西瓜
	tFruitMachine_NpcChange["Exchange"][215] = {}
	tFruitMachine_NpcChange["Exchange"][215]["ItemId"] = 3009001
	tFruitMachine_NpcChange["Exchange"][215]["Monopoly"] = 0
	tFruitMachine_NpcChange["Exchange"][215]["StrengthValue"] = nil
	tFruitMachine_NpcChange["Exchange"][215]["RepairValue"] = nil
	tFruitMachine_NpcChange["Exchange"][215]["Num"] = 1
	
	-- 100气力值 兑换 星星
	tFruitMachine_NpcChange["Exchange"][216] = {}
	tFruitMachine_NpcChange["Exchange"][216]["ItemId"] = nil
	tFruitMachine_NpcChange["Exchange"][216]["Monopoly"] = 1
	tFruitMachine_NpcChange["Exchange"][216]["StrengthValue"] = 100
	tFruitMachine_NpcChange["Exchange"][216]["RepairValue"] = nil
	tFruitMachine_NpcChange["Exchange"][216]["Num"] = 100
	
	-- 500修为值 兑换 777
	tFruitMachine_NpcChange["Exchange"][217] = {}
	tFruitMachine_NpcChange["Exchange"][217]["ItemId"] = nil
	tFruitMachine_NpcChange["Exchange"][217]["Monopoly"] = 1
	tFruitMachine_NpcChange["Exchange"][217]["StrengthValue"] = nil
	tFruitMachine_NpcChange["Exchange"][217]["RepairValue"] = 500
	tFruitMachine_NpcChange["Exchange"][217]["Num"] = 500
	
	-- 究极通神丹（赠） 兑换 BAR
	tFruitMachine_NpcChange["Exchange"][218] = {}
	tFruitMachine_NpcChange["Exchange"][218]["ItemId"] = 3003126
	tFruitMachine_NpcChange["Exchange"][218]["Monopoly"] = 2
	tFruitMachine_NpcChange["Exchange"][218]["StrengthValue"] = nil
	tFruitMachine_NpcChange["Exchange"][218]["RepairValue"] = nil
	tFruitMachine_NpcChange["Exchange"][218]["Num"] = 1
	
local tFruitMachine_Cont = {}
	-- 常量表
	tFruitMachine_Cont["Exchange"] = {}
	tFruitMachine_Cont["Exchange"][1] = 1
	tFruitMachine_Cont["Exchange"][2] = 10
	
	tFruitMachine_Cont["ItemAttr"] = "0 %d 3"
	
	tFruitMachine_Cont["Log"] = {}
	tFruitMachine_Cont["Log"]["DelItemTimeOut"] = "0,0,%d,%d,12002098,2,0,0"
	tFruitMachine_Cont["Log"]["UseStrength"] = "0,0,12,%d,12002098,2,0,0"
	tFruitMachine_Cont["Log"]["UseRepair"] = "0,0,19,%d,12002098,2,0,0"
	
------------------------------------------------------------------------------
	-- ===+2赤练石（赠）兑换苹果
	-- ===索引:tFruitMachine_Exchange["Item"][211]
	-- ===删除:730002,1,赠
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
local tFruitMachine_Exchange = {}
	tFruitMachine_Exchange["Item"] = {}
	tFruitMachine_Exchange["Item"][211] = {}
	tFruitMachine_Exchange["Item"][211]["LogId"] = 12002098
	tFruitMachine_Exchange["Item"][211]["DeleteItem"] = {}
	tFruitMachine_Exchange["Item"][211]["DeleteItem"][1] = {}
	tFruitMachine_Exchange["Item"][211]["DeleteItem"][1]["Id"] = 730002 -- 【库】+2Stone[属性:0]
	tFruitMachine_Exchange["Item"][211]["DeleteItem"][1]["ItemNum"] = 1
	tFruitMachine_Exchange["Item"][211]["DeleteItem"][1]["Monopoly"] = 2 -- 删除【赠品】道具
	tFruitMachine_Exchange["Item"][211]["RewardItem"] = {}
	tFruitMachine_Exchange["Item"][211]["RewardItem"][1] = {}
	tFruitMachine_Exchange["Item"][211]["RewardItem"][1]["Id"] = 3316457 -- Apple[3316457][属性:0][叠加:10000][金币:0], 【表格】Apple（赠）
	tFruitMachine_Exchange["Item"][211]["RewardItem"][1]["Attr"] = "0 1 3" -- Apple（赠）*1
	tFruitMachine_Exchange["Item"][211]["RewardEffect"] = {}
	tFruitMachine_Exchange["Item"][211]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFruitMachine_Exchange["Item"][211]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===人参果兑换桔子
	-- ===索引:tFruitMachine_Exchange["Item"][212]
	-- ===删除:3009100,1,非赠
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tFruitMachine_Exchange["Item"][212] = {}
	tFruitMachine_Exchange["Item"][212]["LogId"] = 12002098
	tFruitMachine_Exchange["Item"][212]["DeleteItem"] = {}
	tFruitMachine_Exchange["Item"][212]["DeleteItem"][1] = {}
	tFruitMachine_Exchange["Item"][212]["DeleteItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9]
	tFruitMachine_Exchange["Item"][212]["DeleteItem"][1]["ItemNum"] = 1
	tFruitMachine_Exchange["Item"][212]["DeleteItem"][1]["Monopoly"] = 0 -- 删除【非赠】道具
	tFruitMachine_Exchange["Item"][212]["RewardItem"] = {}
	tFruitMachine_Exchange["Item"][212]["RewardItem"][1] = {}
	tFruitMachine_Exchange["Item"][212]["RewardItem"][1]["Id"] = 3316460 -- Orange[3316460][属性:0][叠加:10000][金币:0], 【表格】Orange（赠）
	tFruitMachine_Exchange["Item"][212]["RewardItem"][1]["Attr"] = "0 1 3" -- Orange（赠）*1
	tFruitMachine_Exchange["Item"][212]["RewardEffect"] = {}
	tFruitMachine_Exchange["Item"][212]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFruitMachine_Exchange["Item"][212]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===10个万能神纹精粹（赠）兑换柠檬
	-- ===索引:tFruitMachine_Exchange["Item"][213]
	-- ===删除:4060001,10,赠
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tFruitMachine_Exchange["Item"][213] = {}
	tFruitMachine_Exchange["Item"][213]["LogId"] = 12002098
	tFruitMachine_Exchange["Item"][213]["DeleteItem"] = {}
	tFruitMachine_Exchange["Item"][213]["DeleteItem"][1] = {}
	tFruitMachine_Exchange["Item"][213]["DeleteItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9]
	tFruitMachine_Exchange["Item"][213]["DeleteItem"][1]["ItemNum"] = 10
	tFruitMachine_Exchange["Item"][213]["DeleteItem"][1]["Monopoly"] = 2 -- 删除【赠品】道具
	tFruitMachine_Exchange["Item"][213]["RewardItem"] = {}
	tFruitMachine_Exchange["Item"][213]["RewardItem"][1] = {}
	tFruitMachine_Exchange["Item"][213]["RewardItem"][1]["Id"] = 3316456 -- Lemon[3316456][属性:0][叠加:10000][金币:0], 【表格】Lemon（赠）
	tFruitMachine_Exchange["Item"][213]["RewardItem"][1]["Attr"] = "0 1 3" -- Lemon（赠）*1
	tFruitMachine_Exchange["Item"][213]["RewardEffect"] = {}
	tFruitMachine_Exchange["Item"][213]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFruitMachine_Exchange["Item"][213]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===黄色神纹碎片（赠）兑换铃铛
	-- ===索引:tFruitMachine_Exchange["Item"][214]
	-- ===删除:3314253,1,赠
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tFruitMachine_Exchange["Item"][214] = {}
	tFruitMachine_Exchange["Item"][214]["LogId"] = 12002098
	tFruitMachine_Exchange["Item"][214]["DeleteItem"] = {}
	tFruitMachine_Exchange["Item"][214]["DeleteItem"][1] = {}
	tFruitMachine_Exchange["Item"][214]["DeleteItem"][1]["Id"] = 3314253 -- 【库】YellowRuneFragment[属性:8]
	tFruitMachine_Exchange["Item"][214]["DeleteItem"][1]["ItemNum"] = 1
	tFruitMachine_Exchange["Item"][214]["DeleteItem"][1]["Monopoly"] = 2 -- 删除【赠品】道具
	tFruitMachine_Exchange["Item"][214]["RewardItem"] = {}
	tFruitMachine_Exchange["Item"][214]["RewardItem"][1] = {}
	tFruitMachine_Exchange["Item"][214]["RewardItem"][1]["Id"] = 3316461 -- Bell[3316461][属性:0][叠加:10000][金币:0], 【表格】Bell（赠）
	tFruitMachine_Exchange["Item"][214]["RewardItem"][1]["Attr"] = "0 1 3" -- Bell（赠）*1
	tFruitMachine_Exchange["Item"][214]["RewardEffect"] = {}
	tFruitMachine_Exchange["Item"][214]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFruitMachine_Exchange["Item"][214]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===明亮星陨石兑换西瓜
	-- ===索引:tFruitMachine_Exchange["Item"][215]
	-- ===删除:3009001,1,非赠
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tFruitMachine_Exchange["Item"][215] = {}
	tFruitMachine_Exchange["Item"][215]["LogId"] = 12002098
	tFruitMachine_Exchange["Item"][215]["DeleteItem"] = {}
	tFruitMachine_Exchange["Item"][215]["DeleteItem"][1] = {}
	tFruitMachine_Exchange["Item"][215]["DeleteItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9]
	tFruitMachine_Exchange["Item"][215]["DeleteItem"][1]["ItemNum"] = 1
	tFruitMachine_Exchange["Item"][215]["DeleteItem"][1]["Monopoly"] = 0 -- 删除【非赠】道具
	tFruitMachine_Exchange["Item"][215]["RewardItem"] = {}
	tFruitMachine_Exchange["Item"][215]["RewardItem"][1] = {}
	tFruitMachine_Exchange["Item"][215]["RewardItem"][1]["Id"] = 3316459 -- Watermelon[3316459][属性:0][叠加:10000][金币:0], 【表格】Watermelon（赠）
	tFruitMachine_Exchange["Item"][215]["RewardItem"][1]["Attr"] = "0 1 3" -- Watermelon（赠）*1
	tFruitMachine_Exchange["Item"][215]["RewardEffect"] = {}
	tFruitMachine_Exchange["Item"][215]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFruitMachine_Exchange["Item"][215]["RewardEffect"]["Effect"] = "angelwing"

------------------------------------------------------------------------------
	-- ===究极通神丹（赠）兑换BAR
	-- ===索引:tFruitMachine_Exchange["Item"][218]
	-- ===删除:3003126,1,赠
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tFruitMachine_Exchange["Item"][218] = {}
	tFruitMachine_Exchange["Item"][218]["LogId"] = 12002098
	tFruitMachine_Exchange["Item"][218]["DeleteItem"] = {}
	tFruitMachine_Exchange["Item"][218]["DeleteItem"][1] = {}
	tFruitMachine_Exchange["Item"][218]["DeleteItem"][1]["Id"] = 3003126 -- 【库】SeniorTrainingPill[属性:0]
	tFruitMachine_Exchange["Item"][218]["DeleteItem"][1]["ItemNum"] = 1
	tFruitMachine_Exchange["Item"][218]["DeleteItem"][1]["Monopoly"] = 2 -- 删除【赠品】道具
	tFruitMachine_Exchange["Item"][218]["RewardItem"] = {}
	tFruitMachine_Exchange["Item"][218]["RewardItem"][1] = {}
	tFruitMachine_Exchange["Item"][218]["RewardItem"][1]["Id"] = 3316463 -- BAR[3316463][属性:0][叠加:10000][金币:0], 【表格】BAR（赠）
	tFruitMachine_Exchange["Item"][218]["RewardItem"][1]["Attr"] = "0 1 3" -- BAR（赠）*1
	tFruitMachine_Exchange["Item"][218]["RewardEffect"] = {}
	tFruitMachine_Exchange["Item"][218]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFruitMachine_Exchange["Item"][218]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===100气力值兑换星星
	-- ===索引:tFruitMachine_Exchange["Strength"][216]
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tFruitMachine_Exchange["Strength"] = {}
	tFruitMachine_Exchange["Strength"][216] = {}
	tFruitMachine_Exchange["Strength"][216]["LogId"] = 12002098
	tFruitMachine_Exchange["Strength"][216]["RewardItem"] = {}
	tFruitMachine_Exchange["Strength"][216]["RewardItem"][1] = {}
	tFruitMachine_Exchange["Strength"][216]["RewardItem"][1]["Id"] = 3316458 -- Star[3316458][属性:0][叠加:10000][金币:0], 【表格】Star（赠）
	tFruitMachine_Exchange["Strength"][216]["RewardItem"][1]["Attr"] = "0 1 3" -- Star（赠）*1
	tFruitMachine_Exchange["Strength"][216]["RewardEffect"] = {}
	tFruitMachine_Exchange["Strength"][216]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFruitMachine_Exchange["Strength"][216]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------
	-- ===500修为值兑换777
	-- ===索引:tFruitMachine_Exchange["Item"][217]
	--------------------- Excel文档标签：生成lua脚本 ---------------------
	-- ===数据库：enzf
	tFruitMachine_Exchange["Repair"] = {}
	tFruitMachine_Exchange["Repair"][217] = {}
	tFruitMachine_Exchange["Repair"][217]["LogId"] = 12002098
	tFruitMachine_Exchange["Repair"][217]["RewardItem"] = {}
	tFruitMachine_Exchange["Repair"][217]["RewardItem"][1] = {}
	tFruitMachine_Exchange["Repair"][217]["RewardItem"][1]["Id"] = 3316462 -- 777[3316462][属性:0][叠加:10000][金币:0], 【表格】777（赠）
	tFruitMachine_Exchange["Repair"][217]["RewardItem"][1]["Attr"] = "0 1 3" -- 777（赠）*1
	tFruitMachine_Exchange["Repair"][217]["RewardEffect"] = {}
	tFruitMachine_Exchange["Repair"][217]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFruitMachine_Exchange["Repair"][217]["RewardEffect"]["Effect"] = "angelwing"

----------------------------------逻辑部分---------------------------------------------

function FruitMachine_OpenPack(nFruitMachine_ItemId)
	local nFruitMachine_UserId = Get_UserId()
	
	-- 物品是否存在
	if not Item_ChkMulItem(nFruitMachine_ItemId, nFruitMachine_ItemId, 1) then
		return
	end
	
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tFruitMachine_Reward[nFruitMachine_ItemId]) then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tFruitMachine_Reward[nFruitMachine_ItemId])
end

function FruitMachine_UseFruit(nFruitMachine_ItemId)
	local nFruitMachine_UserId = Get_UserId()
	
	-- 物品是否存在
	if not Item_ChkMulItem(nFruitMachine_ItemId, nFruitMachine_ItemId, 1) then
		return
	end
	
	-- 不在活动时间内 删除所有物品
	if not Sys_ChkFullTime(tActivityTime["FruitMachine"]["ActivityTime"][27059]) then
		local nFruitMachine_ItemNums = Get_CountItemType(nFruitMachine_ItemId, 0)
		
		if not Item_DelMulItem(nFruitMachine_ItemId, nFruitMachine_ItemId, nFruitMachine_ItemNums) then
			return
		end
		
		Sys_SaveActionFestivalLog(string.format(tFruitMachine_Cont["Log"]["DelItemTimeOut"], nFruitMachine_ItemId, nFruitMachine_ItemNums))
		return
	end
	
	-- 活动时间内寻路到NPC
	if Sys_ChkFullTime(tActivityTime["FruitMachine"]["ActivityTime"][26714]) then
		NpcPosition_PathFind(26714)
	else
		NpcPosition_PathFind(27059)
	end
end

-- 水果机 击杀BOSS中奖频道
function FruitMachine_BroadcastKillBoss(nUserName,nMainType,nSubType,nData1,nData2,sParam)
	if nMainType ~= 7 then
		return
	end
	
	if nSubType == 1 then
		Sys_DragonSoulUpLevToHomeServer(string.format(tFruitMachinePrize_Text["KillBoss"][1],nUserName,nData1),nil,1)
		return
	end
	
	if nSubType == 2 then
		Sys_DragonSoulUpLevToHomeServer(string.format(tFruitMachinePrize_Text["KillBoss"][2],nUserName,nData1),nil,1)
		return
	end
	
	if nSubType == 3 then
		local sItemName = Get_ItemtypeName(nData2)
		Sys_DragonSoulUpLevToHomeServer(string.format(tFruitMachinePrize_Text["KillBoss"][3],nUserName,nData1,sItemName),nil,1)
		return
	end
end

-- /callluafunc </F>Test_ProcessPrizeBroadcast</S>xxx</N>6</N>3</N>1</N>2</S>3329686:150
-- 水果机 天石、金币 中奖频道
function FruitMachine_BroadcastPrize(nUserName,nMainType,nSubType,nData1,nData2,sParam)
	if nMainType ~= 6 then
		return
	end
	
	if nSubType == 3 then
		return
	end
	
	-- 赢的钱超过3倍才出广播
	if nData2/nData1 < 3 then
		return
	end
	
	if nSubType == 1 then
		Sys_DragonSoulUpLevToHomeServer(string.format(tFruitMachinePrize_Text["Win"][1],nUserName,nData1,nData2),nil,1)
		return
	end
	
	if nSubType == 2 then
		Sys_DragonSoulUpLevToHomeServer(string.format(tFruitMachinePrize_Text["Win"][2],nUserName,nData1,nData2),nil,1)
		return
	end
end
	
-- 水果机 物品 中奖频道
function FruitMachine_BroadcastItemPrize(nUserName,nMainType,nSubType,nData1,nData2,sParam)
	
	if nMainType ~= 6 then
		return
	end
	
	if nSubType ~= 3 then
		return
	end
	
	-- 超过3倍才出广播
	if nData2/nData1 < 3 then
		return
	end
	
	if nSubType == 3 then
		local tReward_Info = Sys_Split(sParam,",")
		local tItem_Info = {}
		local sItemName = "%s%s"
		local sItemName_1 = "%s%s%s%s"
		local sItemName_3 = ""
		local tItem_Name = {}
		local tItem_Num = {}
		
		-- if #tReward_Info == 0 then
			-- return
		-- end
		
		for i = 1, #tReward_Info do
			tItem_Info[i] = Sys_Split(tReward_Info[i],":")
		end
		
		
		for j = 1, #tItem_Info do
			tItem_Name[j] = Get_ItemtypeName(tonumber(tItem_Info[j][1]))
			tItem_Num[j] = tItem_Info[j][2]
		end
		

		for k = 1, #tItem_Name do
			local sItemName_2 = string.format(tGlobalFormat[4],tItem_Name[k],"*",tItem_Num[k]," ")
			sItemName_3 = string.format(tGlobalFormat[2],sItemName_2,sItemName_3)
		end
		
		Sys_DragonSoulUpLevToHomeServer(string.format(tFruitMachinePrize_Text["Win"][3],nUserName,sItemName_3),nil,1)
		return
	end
end

-- 检测选项是否可兑换
-- 返回 true/false 可兑换/不可兑换
function FruitMachine_ChkIsExchange(nFruitMachine_Option_Index)
	local nFruitMachine_UserId = Get_UserId()
	
	-- 物品水果机结束后不允许兑换成下注道具
	if not Sys_ChkFullTime(tActivityTime["FruitMachine"]["ActivityTime"][26714]) then
		return false
	end
	
	-- 不是可兑换的选项
	if tFruitMachine_NpcChange["Exchange"][nFruitMachine_Option_Index] == nil then
		return false
	end
	
	local nFruitMachine_Exchange_ItemId = tFruitMachine_NpcChange["Exchange"][nFruitMachine_Option_Index]["ItemId"]
	local nFruitMachine_Exchange_Monopoly = tFruitMachine_NpcChange["Exchange"][nFruitMachine_Option_Index]["Monopoly"]
	local nFruitMachine_Exchange_StrengthValue = tFruitMachine_NpcChange["Exchange"][nFruitMachine_Option_Index]["StrengthValue"]
	local nFruitMachine_Exchange_RepairValue = tFruitMachine_NpcChange["Exchange"][nFruitMachine_Option_Index]["RepairValue"]
	local nFruitMachine_Exchange_Num = tFruitMachine_NpcChange["Exchange"][nFruitMachine_Option_Index]["Num"]
	
	local sFruitMachine_Exchange_Name = tFruitMachinePrize_Text["Exchange"][nFruitMachine_Option_Index]
	
	-- 如果是气力值 检测玩家气力值是否足够
	if nFruitMachine_Exchange_StrengthValue ~= nil and nFruitMachine_Exchange_StrengthValue ~= 0 then
		-- 获取玩家的气力值数量
		local nFruitMachine_User_StrengthValue = Get_UserStrengthValue(nFruitMachine_UserId)
		-- 需要消耗气力值 大于 玩家拥有气力值
		if nFruitMachine_Exchange_Num > nFruitMachine_User_StrengthValue then
			User_TalkChannel2005(string.format(tFruitMachinePrize_Text["Sys"]["NoItem"],sFruitMachine_Exchange_Name))
			return false
		end
	-- 如果是修为值 检测玩家修为值是否足够
	elseif nFruitMachine_Exchange_RepairValue ~= nil and nFruitMachine_Exchange_RepairValue ~= 0 then
		-- 获取玩家的修为值数量
		local nFruitMachine_User_RepairValue = Get_UserCultureValue(nFruitMachine_UserId)
		-- 需要消耗修为值 大于 玩家拥有修为值
		if nFruitMachine_Exchange_Num > nFruitMachine_User_RepairValue then
			User_TalkChannel2005(string.format(tFruitMachinePrize_Text["Sys"]["NoItem"],sFruitMachine_Exchange_Name))
			return false
		end
	-- 如果是物品 判断物品数量是否足够
	elseif nFruitMachine_Exchange_ItemId ~= nil and nFruitMachine_Exchange_ItemId ~= 0 then
		-- 检测对应数量、对应属性物品是否存在
		if not Item_ChkMulItem(nFruitMachine_Exchange_ItemId, nFruitMachine_Exchange_ItemId, nFruitMachine_Exchange_Num, nFruitMachine_Exchange_Monopoly) then
			User_TalkChannel2005(string.format(tFruitMachinePrize_Text["Sys"]["NoItem"],sFruitMachine_Exchange_Name))
			return false
		end
	end
	
	return true
end

-- 兑换x个
function FruitMachine_LinkExchange(nFruitMachine_NpcId, nFruitMachine_Option_Index)
	local nFruitMachine_UserId = Get_UserId()
	
	if not FruitMachine_ChkIsExchange(nFruitMachine_Option_Index) then
		return
	end
	
	tNpcGossip[nFruitMachine_NpcId]["OptionFunc221"] = "FruitMachine_GoToExchange</N>27059</N>1</N>"..nFruitMachine_Option_Index
	tNpcGossip[nFruitMachine_NpcId]["OptionFunc222"] = "FruitMachine_GoToExchange</N>27059</N>2</N>"..nFruitMachine_Option_Index
	tNpcGossip[nFruitMachine_NpcId]["OptionFunc223"] = "FruitMachine_GoToExchange</N>27059</N>3</N>"..nFruitMachine_Option_Index
	
	LinkNpcGossipFunc_New(nFruitMachine_NpcId, "2-2")
end

-- 检测 兑换需要的数量 和 可获得的物品数量(兑换1个/10个/全部标志位, 兑换需要数量, 玩家拥有的数量)
-- 返回 兑换需要的数量, 可获得的物品数量
function FruitMachine_ChkExchangeNums(nFruitMachine_Option_Index, nFruitMachine_ItemNum_Index, nFruitMachine_Exchange_Num, nFruitMachine_User_Nums)
	local nFruitMachine_UserId = Get_UserId()
	
	if not FruitMachine_ChkIsExchange(nFruitMachine_Option_Index) then
		return nil, nil
	end
	
	-- 要消耗的具体数量
	local nFruitMachine_Exchange_AllNum = nFruitMachine_Exchange_Num
	-- 可兑换回来的物品数量
	local nFruitMachine_Exchange_BackNum = tFruitMachine_Cont["Exchange"][1]
	
	-- 获取数量
	if nFruitMachine_ItemNum_Index == 1 then
		nFruitMachine_Exchange_AllNum = nFruitMachine_Exchange_Num
		nFruitMachine_Exchange_BackNum = tFruitMachine_Cont["Exchange"][1]
	elseif nFruitMachine_ItemNum_Index == 2 then
		nFruitMachine_Exchange_AllNum = nFruitMachine_Exchange_Num*tFruitMachine_Cont["Exchange"][2]
		nFruitMachine_Exchange_BackNum = tFruitMachine_Cont["Exchange"][2]
	elseif nFruitMachine_ItemNum_Index == 3 then
		nFruitMachine_Exchange_AllNum = nFruitMachine_User_Nums - (nFruitMachine_User_Nums%nFruitMachine_Exchange_Num)
		nFruitMachine_Exchange_BackNum = math.floor(nFruitMachine_User_Nums/nFruitMachine_Exchange_Num)
	end
	
	-- 玩家拥有的数量 < 兑换需要的数量
	if nFruitMachine_User_Nums < nFruitMachine_Exchange_AllNum then
		return nil, nil
	end
	
	return nFruitMachine_Exchange_AllNum, nFruitMachine_Exchange_BackNum
end

-- 物品兑换
function FruitMachine_ItemExchange(nFruitMachine_NpcId, nFruitMachine_ItemNum_Index, nFruitMachine_Option_Index)
	local nFruitMachine_UserId = Get_UserId()
	
	if not FruitMachine_ChkIsExchange(nFruitMachine_Option_Index) then
		return
	end
	
	local nFruitMachine_Exchange_ItemId = tFruitMachine_NpcChange["Exchange"][nFruitMachine_Option_Index]["ItemId"]
	local nFruitMachine_Exchange_Num = tFruitMachine_NpcChange["Exchange"][nFruitMachine_Option_Index]["Num"]
	local nFruitMachine_Exchange_Monopoly = tFruitMachine_NpcChange["Exchange"][nFruitMachine_Option_Index]["Monopoly"]
	local sFruitMachine_Exchange_Name = tFruitMachinePrize_Text["Exchange"][nFruitMachine_Option_Index]
	-- 不是物品兑换
	if nFruitMachine_Exchange_ItemId == nil or nFruitMachine_Exchange_ItemId == 0 then
		return
	end
	
	-- 获取玩家拥有的物品数量
	local nFruitMachine_User_ItemNums = Get_CountItemType(nFruitMachine_Exchange_ItemId, 0, nFruitMachine_Exchange_Monopoly)
	if nFruitMachine_User_ItemNums <= 0 or nFruitMachine_User_ItemNums == nil then
		User_TalkChannel2005(string.format(tFruitMachinePrize_Text["Sys"]["NoItem"],sFruitMachine_Exchange_Name))
		return
	end
	
	-- 没有兑换总量
	local nFruitMachine_Exchange_AllNum, nFruitMachine_Exchange_BackNum = FruitMachine_ChkExchangeNums(nFruitMachine_Option_Index,nFruitMachine_ItemNum_Index, nFruitMachine_Exchange_Num, nFruitMachine_User_ItemNums)
	if nFruitMachine_Exchange_AllNum == nil or nFruitMachine_Exchange_BackNum == nil then
		User_TalkChannel2005(string.format(tFruitMachinePrize_Text["Sys"]["NoItem"],sFruitMachine_Exchange_Name))
		return
	end
	
	-- 物品检测
	if not Item_ChkMulItem(nFruitMachine_Exchange_ItemId, nFruitMachine_Exchange_ItemId, nFruitMachine_Exchange_AllNum, nFruitMachine_Exchange_Monopoly) then
		User_TalkChannel2005(string.format(tFruitMachinePrize_Text["Sys"]["NoItem"],sFruitMachine_Exchange_Name))
		return
	end
	
	-- 复制奖励表
	local tFruitMachine_User_Exchange_Reward = CommonFunc_Copy(tFruitMachine_Exchange["Item"][nFruitMachine_Option_Index])
	
	tFruitMachine_User_Exchange_Reward["DeleteItem"][1]["ItemNum"] = nFruitMachine_Exchange_AllNum
	tFruitMachine_User_Exchange_Reward["DeleteItem"][1]["Monopoly"] = nFruitMachine_Exchange_Monopoly
	
	local sFruitMachine_User_Exchange_Attr = tFruitMachine_Cont["ItemAttr"]
	tFruitMachine_User_Exchange_Reward["RewardItem"][1]["Attr"] = string.format(sFruitMachine_User_Exchange_Attr, nFruitMachine_Exchange_BackNum)
	
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tFruitMachine_User_Exchange_Reward) then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tFruitMachine_User_Exchange_Reward)
end

-- 气力值兑换
function FruitMachine_StrengthExchange(nFruitMachine_NpcId, nFruitMachine_ItemNum_Index, nFruitMachine_Option_Index)
	local nFruitMachine_UserId = Get_UserId()
	
	if not FruitMachine_ChkIsExchange(nFruitMachine_Option_Index) then
		return
	end
	
	local nFruitMachine_Exchange_Num = tFruitMachine_NpcChange["Exchange"][nFruitMachine_Option_Index]["Num"]
	local nFruitMachine_Exchange_StrengthValue = tFruitMachine_NpcChange["Exchange"][nFruitMachine_Option_Index]["StrengthValue"]
	local sFruitMachine_Exchange_Name = tFruitMachinePrize_Text["Exchange"][nFruitMachine_Option_Index]
	
	-- 不是气力值兑换
	if nFruitMachine_Exchange_StrengthValue == nil or nFruitMachine_Exchange_StrengthValue == 0 then
		return
	end
	
	-- 获取玩家气力值
	local nFruitMachine_User_StrengthNums = Get_UserStrengthValue(nFruitMachine_UserId)
	-- 没有气力值
	if nFruitMachine_User_StrengthNums <= 0 or nFruitMachine_User_StrengthNums == nil then
		User_TalkChannel2005(string.format(tFruitMachinePrize_Text["Sys"]["NoItem"],sFruitMachine_Exchange_Name))
		return
	end
	
	local nFruitMachine_Exchange_AllNum, nFruitMachine_Exchange_BackNum = FruitMachine_ChkExchangeNums(nFruitMachine_Option_Index, nFruitMachine_ItemNum_Index, nFruitMachine_Exchange_Num, nFruitMachine_User_StrengthNums)
	if nFruitMachine_Exchange_AllNum == nil or nFruitMachine_Exchange_BackNum == nil then
		return
	end
	
	-- 玩家气力值不足
	if nFruitMachine_User_StrengthNums < nFruitMachine_Exchange_AllNum then
		User_TalkChannel2005(string.format(tFruitMachinePrize_Text["Sys"]["NoItem"],sFruitMachine_Exchange_Name))
		return
	end
	
	-- 复制奖励表
	local tFruitMachine_User_Exchange_Reward = CommonFunc_Copy(tFruitMachine_Exchange["Strength"][nFruitMachine_Option_Index])
	local sFruitMachine_User_Exchange_Attr = tFruitMachine_Cont["ItemAttr"]
	tFruitMachine_User_Exchange_Reward["RewardItem"][1]["Attr"] = string.format(sFruitMachine_User_Exchange_Attr, nFruitMachine_Exchange_BackNum)
	
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tFruitMachine_User_Exchange_Reward) then
		return
	end
	
	-- 扣除玩家气力值
	if not User_AddStrengthValue(-nFruitMachine_Exchange_AllNum,nFruitMachine_UserId) then
		User_TalkChannel2005(string.format(tFruitMachinePrize_Text["Sys"]["NoItem"],sFruitMachine_Exchange_Name))
		return
	end
	Sys_SaveActionRewardLog(string.format(tFruitMachine_Cont["Log"]["UseStrength"],nFruitMachine_Exchange_AllNum))
	
	RewardTemplate_UseItemAndMsg(tFruitMachine_User_Exchange_Reward)
end

-- 修为值兑换
function FruitMachine_RepairExchange(nFruitMachine_NpcId, nFruitMachine_ItemNum_Index, nFruitMachine_Option_Index)
	local nFruitMachine_UserId = Get_UserId()
	
	if not FruitMachine_ChkIsExchange(nFruitMachine_Option_Index) then
		return
	end
	
	local nFruitMachine_Exchange_Num = tFruitMachine_NpcChange["Exchange"][nFruitMachine_Option_Index]["Num"]
	local nFruitMachine_Exchange_RepairValue = tFruitMachine_NpcChange["Exchange"][nFruitMachine_Option_Index]["RepairValue"]
	local sFruitMachine_Exchange_Name = tFruitMachinePrize_Text["Exchange"][nFruitMachine_Option_Index]
	
	-- 不是修为值兑换
	if nFruitMachine_Exchange_RepairValue == nil or nFruitMachine_Exchange_RepairValue == 0 then
		return
	end
	
	-- 获取玩家修为值
	local nFruitMachine_User_RepairNums = Get_UserCultureValue(nFruitMachine_UserId)
	-- 没有修为值
	if nFruitMachine_User_RepairNums <= 0 or nFruitMachine_User_RepairNums == nil then
		User_TalkChannel2005(string.format(tFruitMachinePrize_Text["Sys"]["NoItem"],sFruitMachine_Exchange_Name))
		return
	end
	
	local nFruitMachine_Exchange_AllNum, nFruitMachine_Exchange_BackNum = FruitMachine_ChkExchangeNums(nFruitMachine_Option_Index, nFruitMachine_ItemNum_Index, nFruitMachine_Exchange_Num, nFruitMachine_User_RepairNums)
	if nFruitMachine_Exchange_AllNum == nil or nFruitMachine_Exchange_BackNum == nil then
		return
	end
	
	-- 玩家修为值不足
	if nFruitMachine_User_RepairNums < nFruitMachine_Exchange_AllNum then
		User_TalkChannel2005(string.format(tFruitMachinePrize_Text["Sys"]["NoItem"],sFruitMachine_Exchange_Name))
	end
	
	-- 复制奖励表
	local tFruitMachine_User_Exchange_Reward = CommonFunc_Copy(tFruitMachine_Exchange["Repair"][nFruitMachine_Option_Index])
	local sFruitMachine_User_Exchange_Attr = tFruitMachine_Cont["ItemAttr"]
	tFruitMachine_User_Exchange_Reward["RewardItem"][1]["Attr"] = string.format(sFruitMachine_User_Exchange_Attr, nFruitMachine_Exchange_BackNum)
	
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tFruitMachine_User_Exchange_Reward) then
		return
	end
	
	-- 扣除玩家修为值
	if not User_AddCultureValue(-nFruitMachine_Exchange_AllNum,nFruitMachine_UserId) then
		User_TalkChannel2005(string.format(tFruitMachinePrize_Text["Sys"]["NoItem"],sFruitMachine_Exchange_Name))
	end
	Sys_SaveActionRewardLog(string.format(tFruitMachine_Cont["Log"]["UseRepair"],nFruitMachine_Exchange_AllNum))
	
	RewardTemplate_UseItemAndMsg(tFruitMachine_User_Exchange_Reward)
end

tFruitMachine_NpcChange["Exchange"][211]["Func"] = FruitMachine_ItemExchange
tFruitMachine_NpcChange["Exchange"][212]["Func"] = FruitMachine_ItemExchange
tFruitMachine_NpcChange["Exchange"][213]["Func"] = FruitMachine_ItemExchange
tFruitMachine_NpcChange["Exchange"][214]["Func"] = FruitMachine_ItemExchange
tFruitMachine_NpcChange["Exchange"][215]["Func"] = FruitMachine_ItemExchange
tFruitMachine_NpcChange["Exchange"][216]["Func"] = FruitMachine_StrengthExchange
tFruitMachine_NpcChange["Exchange"][217]["Func"] = FruitMachine_RepairExchange
tFruitMachine_NpcChange["Exchange"][218]["Func"] = FruitMachine_ItemExchange

-- 确认兑换(NPCid, 兑换1个/10个/全部标志位, 选项下标)
function FruitMachine_GoToExchange(nFruitMachine_NpcId, nFruitMachine_ItemNum_Index, nFruitMachine_Option_Index)
	local nFruitMachine_UserId = Get_UserId()
	
	if not FruitMachine_ChkIsExchange(nFruitMachine_Option_Index) then
		return
	end
	
	-- 跳转 兑换物品/气力值/修为值 的方法
	local sFruitMachine_Exchange_Func = tFruitMachine_NpcChange["Exchange"][nFruitMachine_Option_Index]["Func"]
	
	sFruitMachine_Exchange_Func(nFruitMachine_NpcId, nFruitMachine_ItemNum_Index, nFruitMachine_Option_Index)
end

function FruitMachine_OpenExchangeShop(nFruitMachine_NpcId)
	local nFruitMachine_UserId = Get_UserId()
	
	if not Sys_ChkFullTime(tActivityTime["FruitMachine"]["ActivityTime"][27059]) then
		return
	end
	
	User_OpenExchangeShop(nFruitMachine_NpcId)
end

--------------------------------------物品逻辑--------------------------------------

-- 3316456,'Lemon'
tItem[3316456] = tItem[3316456] or {}
tItem[3316456]["Function"] = function(nFruitMachine_ItemId,sFruitMachine_ItemName)
	FruitMachine_UseFruit(nFruitMachine_ItemId)
end

-- 3316457,'Apple'
-- 3316458,'Star'
-- 3316459,'Watermelon'
-- 3316460,'Orange'
-- 3316461,'Bell'
-- 3316462,'777'
-- 3316463,'BAR'
tItem[3316457] = tItem[3316456]
tItem[3316458] = tItem[3316456]
tItem[3316459] = tItem[3316456]
tItem[3316460] = tItem[3316456]
tItem[3316461] = tItem[3316456]
tItem[3316462] = tItem[3316456]
tItem[3316463] = tItem[3316456]

-- 3316682,'FruityRunePack'
tItem[3316682] = tItem[3316682] or {}
tItem[3316682]["Function"] = function(nFruitMachine_ItemId,sFruitMachine_ItemName)
	FruitMachine_OpenPack(nFruitMachine_ItemId)
end

-- 3316683,'Fruity+StonePack'
-- 3316684,'FruityChiPack'
-- 3316685,'FruityStarStonePack'
-- 3316686,'FruityGinsengPack'
-- 3316687,'FruityYellowRuneFragmentPack'
-- 3316688,'FruityPotencyPack'
-- 3316689,'FruityTrainingPillPack'
tItem[3316683] = tItem[3316682]
tItem[3316684] = tItem[3316682]
tItem[3316685] = tItem[3316682]
tItem[3316686] = tItem[3316682]
tItem[3316687] = tItem[3316682]
tItem[3316688] = tItem[3316682]
tItem[3316689] = tItem[3316682]

--------------------------------------NPC部分--------------------------------------
-- 27059,'甄幸运'
tNpcFace[2982] = 111
tNpcGossip[27059]= tNpcGossip[27059] or DefaultNpc:new{}
tNpcGossip[27059]["OptionHidden"] = 1
tNpcGossip[27059]["DialogueText"] = tFruitMachinePrize_Text[27059]

-- 活动前
tNpcGossip[27059]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[27059]["tOption1-1"] = {111}
tNpcGossip[27059]["ChkFunc1-1"]= function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["FruitMachine"]["ActivityTime"][27059])
end
-- 活动后
tNpcGossip[27059]["Text1-2"] = {121,122}
tNpcGossip[27059]["tOption1-2"] = {111}
tNpcGossip[27059]["ChkFunc1-2"]= function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["FruitMachine"]["ActivityTime"][27059])
end
-- 活动中
tNpcGossip[27059]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[27059]["tOption1-3"] = {131,132,133}
tNpcGossip[27059]["ChkFunc1-3"]= function()
	return Sys_ChkFullTime(tActivityTime["FruitMachine"]["ActivityTime"][27059])
end
tNpcGossip[27059]["OptionPoint131"] = "2-1"
tNpcGossip[27059]["OptionChkFunc131"] = function()
	return Sys_ChkFullTime(tActivityTime["FruitMachine"]["ActivityTime"][26714])
end

tNpcGossip[27059]["OptionFunc132"] = "FruitMachine_OpenExchangeShop</N>27059"

-- 使用游戏道具兑换水果机道具
tNpcGossip[27059]["Text2-1"] = {211,212,213,214,215}
tNpcGossip[27059]["tOption2-1"] = {211,212,213,214,215,216,217,218}
tNpcGossip[27059]["OptionFunc211"] = "FruitMachine_LinkExchange</N>27059</N>211"
tNpcGossip[27059]["OptionFunc212"] = "FruitMachine_LinkExchange</N>27059</N>212"
tNpcGossip[27059]["OptionFunc213"] = "FruitMachine_LinkExchange</N>27059</N>213"
tNpcGossip[27059]["OptionFunc214"] = "FruitMachine_LinkExchange</N>27059</N>214"
tNpcGossip[27059]["OptionFunc215"] = "FruitMachine_LinkExchange</N>27059</N>215"
tNpcGossip[27059]["OptionFunc216"] = "FruitMachine_LinkExchange</N>27059</N>216"
tNpcGossip[27059]["OptionFunc217"] = "FruitMachine_LinkExchange</N>27059</N>217"
tNpcGossip[27059]["OptionFunc218"] = "FruitMachine_LinkExchange</N>27059</N>218"

-- 兑换
tNpcGossip[27059]["Text2-2"] = {221,222,223,224}
tNpcGossip[27059]["tOption2-2"] = {221,222,223}


--------------------------------------程序触发--------------------------------------
tProcessPrizeBroadcast["tFunction"] = tProcessPrizeBroadcast["tFunction"] or {}
table.insert(tProcessPrizeBroadcast["tFunction"],FruitMachine_BroadcastPrize)
table.insert(tProcessPrizeBroadcast["tFunction"],FruitMachine_BroadcastKillBoss)
table.insert(tProcessPrizeBroadcast["tFunction"],FruitMachine_BroadcastItemPrize)