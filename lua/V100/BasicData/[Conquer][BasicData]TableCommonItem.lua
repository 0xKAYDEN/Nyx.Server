----------------------------------------------------------------------------
--Name:		[征服][基础数据]常用物品表.lua
--Purpose:	常用物品表
--Creator: 	郑鋆
--Created:	2016/01/22
----------------------------------------------------------------------------

-- 礼包配置表
tCommonItem_Item = {}
-- 索引以物品ID做索引
-- "ActiveTime"   			活动时间
-- "BeforeUse"   			物品使用前需要判断的内容
-- "Space"   				物品使用需要的背包空间
-- "ItemNum"   				物品使用需要的数量（默认为1）
-- "Monopoly"   			物品使用的属性（默认为0）
-- "Level"   				物品使用等级限制
-- "Metempsychosis"   		物品使用转世限制
-- "Sex"   					物品使用性别限制
-- "Item"   				物品使用时需要跟其它物品一起使用

-- "Reward"   				物品使用后获得的奖励
-- "RewardZhenqi"   		物品使用后获得的真气
-- "RewardCultivation"   	物品使用后获得的修行值
-- "RewardMoney"   			物品使用后获得的银两数量
-- "RewardEMoney"   		物品使用后获得的天石数量
-- "RewardEMoneyMono"   	物品使用后获得的赠品天石数量
-- "RewardStrengthValue"   	物品使用后获得的气力值
-- "RewardExp"   			物品使用后获得的经验点经验
-- "RewardExpTime"   		物品使用后获得的经验时间经验
-- "RewardExpPercent"   	物品使用后获得的百分比经验
-- "FullCultivation"   		物品使用后获得的经验奖励时满级给修行值
-- "FullStrengthValue"   	物品使用后获得的经验奖励时满级给气力值
-- "RewardItem"   			物品使用后获得的物品表
	-- "Id"   				物品使用后获得的物品表里面的物品ID
	-- "Attr"   			物品使用后获得的物品表里面的物品属性
-- "RewardEffect"   		物品使用后播放的光效
-- "RewardBless"   			物品使用后获得的祝福时间
-- "RewardFreePractNum"   	物品使用后获得的免费修炼次数
-- "RewardRidingPoint"   	物品使用后获得的骑马积分
-- "RewardRepairValue"   	物品使用后获得的修为值

-- "RewardEventType"   		物品使用次数限制的stc掩码
-- "RewardDataType"   		物品使用次数限制的stc掩码
-- "RewardMaxData"   		物品使用次数限制的最大使用次数
-- "RewardDayData"   		物品使用次数限制的每天使用次数（默认1次）

-- GamblChanceSum			碎片物品赌翻倍的总数（默认为100000）
-- GamblChance				碎片物品赌翻倍的概率
-- GamblItemId				碎片物品赌成功获得的物品ID
-- GamblItemAttr			碎片物品赌成功获得的物品属性
-- GamblSuccessLog			碎片物品赌成功的log
-- GamblFailLog				碎片物品赌失败的log
-- GamblEffect				碎片物品赌成功的光效
-- GamblFailEffect			碎片物品赌失败的光效
-- GamblIndex				碎片物品赌成功对白索引
-- GamblFailIndex			碎片物品赌失败对白索引

-- DebrisItemNum			碎片物品合成的数量（默认1）
-- DebrisItemId				碎片物品合成的物品ID
-- DebrisItemAttr			碎片物品合成的物品属性
-- DebrisLog				碎片物品合成的Log
-- DebrisEffect				碎片物品合成的光效
-- DebrisIndex				碎片物品合成的成功的对白索引




-- 中文索引表
-- tCommonItem_Text = {}
-- 索引以物品ID做索引
-- "BeOverdue"   		活动过期删除提示
-- "NoSpace"   			背包满提示
-- "NoGongFu"   		没有开启自创武功提示
-- "FullZhenqi"   		真气满的提示
-- "FullMoney"   		背包银两满的提示
-- "FullEMoney"   		背包天石满的提示
-- "FullEMoneyMono"   	背包赠品天石满的提示
-- "FullFreePractNum"   免费修炼次数达上限的提示
-- "FullRepairValue"   	修为值达上限的提示
-- "NoItem"   			没有该物品，或者物品使用的数量不满足
-- "Talk"   			物品使用的提示
-- "NoLevel"   			物品使用时不满足等级要求
-- "NoSex"   			物品使用时不满足性别要求
-- "NoUseTime"   		物品使用时今天使用次数已用完
-- "NoBetItem"   		碎片赌翻倍时没有物品的提示

-- "DebrisText"   		碎片物品的文字表
	-- "TextTable"   	碎片物品的有几层对白，像只有1-1，2-1的对白，这边就配{"1-1"，"2-1"}
	-- "TextX-X"		碎片物品的对白选项，跟物品对白模板那边一样
	-- "tOptionX-X"		碎片物品的该层对白显示的哪些选项，里面可以填写数字或者字符，像{"Bet","Synthesis",2}
	-- "Bet"			碎片物品的赌翻倍选项的文字索引
	-- "Synthesis"		碎片物品的合成选项的文字索引
	

