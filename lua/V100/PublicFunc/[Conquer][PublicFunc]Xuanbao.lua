----------------------------------------------------------------------------
--Name:		[征服][公用函数]玄宝物品的接口.lua
--Purpose:	玄宝物品的接口
--Creator: 	郑鋆
--Created:	2018/01/02
----------------------------------------------------------------------------

-- 玄宝
-- 命名前缀
-- Xuanbao_

-- 玄宝的物品ID
local tXuanbao_Id = {4100001,4100002,4100003,4100004,4100005}
	
-- 玄宝类型随机表
local tXuanbao_Random = {}
	tXuanbao_Random[1] = {}
	tXuanbao_Random[1]["ItemChanceSum"] = 10000
	-- 生命类玄宝	4100002	16%
	tXuanbao_Random[1][1] = {}
	tXuanbao_Random[1][1]["RandomItemChanceType"] = 2
	tXuanbao_Random[1][1]["ItemChance"] = 1600
	tXuanbao_Random[1][1]["Item_1"] = 4100002
	-- 物攻类玄宝	4100004	22%
	tXuanbao_Random[1][2] = {}
	tXuanbao_Random[1][2]["RandomItemChanceType"] = 2
	tXuanbao_Random[1][2]["ItemChance"] = 2200
	tXuanbao_Random[1][2]["Item_1"] = 4100004
	-- 法攻类玄宝	4100001	20%
	tXuanbao_Random[1][3] = {}
	tXuanbao_Random[1][3]["RandomItemChanceType"] = 2
	tXuanbao_Random[1][3]["ItemChance"] = 2000
	tXuanbao_Random[1][3]["Item_1"] = 4100001
	-- 物爆类玄宝	4100005	22%
	tXuanbao_Random[1][4] = {}
	tXuanbao_Random[1][4]["RandomItemChanceType"] = 2
	tXuanbao_Random[1][4]["ItemChance"] = 2200
	tXuanbao_Random[1][4]["Item_1"] = 4100005
	-- 法爆类玄宝	4100003	20%
	tXuanbao_Random[1][5] = {}
	tXuanbao_Random[1][5]["RandomItemChanceType"] = 2
	tXuanbao_Random[1][5]["ItemChance"] = 2000
	tXuanbao_Random[1][5]["Item_1"] = 4100003

-- 条数
local tXuanbao_AttributeNum = {}
	tXuanbao_AttributeNum["TotalWeight"] = 10000
	-- 1条	20 	20%
	tXuanbao_AttributeNum[1] = {}
	tXuanbao_AttributeNum[1]["Num"] = 1
	tXuanbao_AttributeNum[1]["Weight"] = 2000
	-- 2条	35 	35%
	tXuanbao_AttributeNum[2] = {}
	tXuanbao_AttributeNum[2]["Num"] = 2
	tXuanbao_AttributeNum[2]["Weight"] = 3500
	-- 3条	25 	25%
	tXuanbao_AttributeNum[3] = {}
	tXuanbao_AttributeNum[3]["Num"] = 3
	tXuanbao_AttributeNum[3]["Weight"] = 2500
	-- 4条	15 	15%
	tXuanbao_AttributeNum[4] = {}
	tXuanbao_AttributeNum[4]["Num"] = 4
	tXuanbao_AttributeNum[4]["Weight"] = 1500
	-- 5条	5 	5%
	tXuanbao_AttributeNum[5] = {}
	tXuanbao_AttributeNum[5]["Num"] = 5
	tXuanbao_AttributeNum[5]["Weight"] = 500
	
-- 玄宝的数据
local tXuanbao_Attribute = {}
	-- 提高物理暴击
	tXuanbao_Attribute[1] = {}
	tXuanbao_Attribute[1]["Ordinary"] = {}
	tXuanbao_Attribute[1]["Ordinary"]["LowerLimit"] = 30
	tXuanbao_Attribute[1]["Ordinary"]["UpperLimit"] = 100
	tXuanbao_Attribute[1]["Gold"] = {}
	tXuanbao_Attribute[1]["Gold"]["LowerLimit"] = 110
	tXuanbao_Attribute[1]["Gold"]["UpperLimit"] = 200
	tXuanbao_Attribute[1]["Gold"]["NewUpperLimit"] = 190 	---5条黄金属性时的最大分数值
	
	-- 提高法术暴击
	tXuanbao_Attribute[2] = {}
	tXuanbao_Attribute[2]["Ordinary"] = {}
	tXuanbao_Attribute[2]["Ordinary"]["LowerLimit"] = 30
	tXuanbao_Attribute[2]["Ordinary"]["UpperLimit"] = 100
	tXuanbao_Attribute[2]["Gold"] = {}
	tXuanbao_Attribute[2]["Gold"]["LowerLimit"] = 110
	tXuanbao_Attribute[2]["Gold"]["UpperLimit"] = 200
	tXuanbao_Attribute[2]["Gold"]["NewUpperLimit"] = 190
	
	-- 提高抵抗暴击
	tXuanbao_Attribute[3] = {}
	tXuanbao_Attribute[3]["Ordinary"] = {}
	tXuanbao_Attribute[3]["Ordinary"]["LowerLimit"] = 30
	tXuanbao_Attribute[3]["Ordinary"]["UpperLimit"] = 100
	tXuanbao_Attribute[3]["Gold"] = {}
	tXuanbao_Attribute[3]["Gold"]["LowerLimit"] = 110
	tXuanbao_Attribute[3]["Gold"]["UpperLimit"] = 200
	tXuanbao_Attribute[3]["Gold"]["NewUpperLimit"] = 190
	
	-- 提高粉碎攻击
	tXuanbao_Attribute[4] = {}
	tXuanbao_Attribute[4]["Ordinary"] = {}
	tXuanbao_Attribute[4]["Ordinary"]["LowerLimit"] = 30
	tXuanbao_Attribute[4]["Ordinary"]["UpperLimit"] = 100
	tXuanbao_Attribute[4]["Gold"] = {}
	tXuanbao_Attribute[4]["Gold"]["LowerLimit"] = 110
	tXuanbao_Attribute[4]["Gold"]["UpperLimit"] = 200
	tXuanbao_Attribute[4]["Gold"]["NewUpperLimit"] = 190
	
	-- 提高坚固防御
	tXuanbao_Attribute[5] = {}
	tXuanbao_Attribute[5]["Ordinary"] = {}
	tXuanbao_Attribute[5]["Ordinary"]["LowerLimit"] = 30
	tXuanbao_Attribute[5]["Ordinary"]["UpperLimit"] = 100
	tXuanbao_Attribute[5]["Gold"] = {}
	tXuanbao_Attribute[5]["Gold"]["LowerLimit"] = 110
	tXuanbao_Attribute[5]["Gold"]["UpperLimit"] = 200
	tXuanbao_Attribute[5]["Gold"]["NewUpperLimit"] = 190
	
	-- 提高生命上限
	tXuanbao_Attribute[6] = {}
	tXuanbao_Attribute[6]["Ordinary"] = {}
	tXuanbao_Attribute[6]["Ordinary"]["LowerLimit"] = 100
	tXuanbao_Attribute[6]["Ordinary"]["UpperLimit"] = 499
	tXuanbao_Attribute[6]["Gold"] = {}
	tXuanbao_Attribute[6]["Gold"]["LowerLimit"] = 500
	tXuanbao_Attribute[6]["Gold"]["UpperLimit"] = 800
	tXuanbao_Attribute[6]["Gold"]["NewUpperLimit"] = 790
	
	-- 提高物理攻击力
	tXuanbao_Attribute[7] = {}
	tXuanbao_Attribute[7]["Ordinary"] = {}
	tXuanbao_Attribute[7]["Ordinary"]["LowerLimit"] = 50
	tXuanbao_Attribute[7]["Ordinary"]["UpperLimit"] = 199
	tXuanbao_Attribute[7]["Gold"] = {}
	tXuanbao_Attribute[7]["Gold"]["LowerLimit"] = 200
	tXuanbao_Attribute[7]["Gold"]["UpperLimit"] = 300
	tXuanbao_Attribute[7]["Gold"]["NewUpperLimit"] = 290
	
	-- 提高法术攻击力
	tXuanbao_Attribute[8] = {}
	tXuanbao_Attribute[8]["Ordinary"] = {}
	tXuanbao_Attribute[8]["Ordinary"]["LowerLimit"] = 100
	tXuanbao_Attribute[8]["Ordinary"]["UpperLimit"] = 599
	tXuanbao_Attribute[8]["Gold"] = {}
	tXuanbao_Attribute[8]["Gold"]["LowerLimit"] = 600
	tXuanbao_Attribute[8]["Gold"]["UpperLimit"] = 900
	tXuanbao_Attribute[8]["Gold"]["NewUpperLimit"] = 890
	
	-- 提高法术防御力
	tXuanbao_Attribute[9] = {}
	tXuanbao_Attribute[9]["Ordinary"] = {}
	tXuanbao_Attribute[9]["Ordinary"]["LowerLimit"] = 30
	tXuanbao_Attribute[9]["Ordinary"]["UpperLimit"] = 49
	tXuanbao_Attribute[9]["Gold"] = {}
	tXuanbao_Attribute[9]["Gold"]["LowerLimit"] = 50
	tXuanbao_Attribute[9]["Gold"]["UpperLimit"] = 60
	tXuanbao_Attribute[9]["Gold"]["NewUpperLimit"] = 59
	
	-- 最终物伤加成
	tXuanbao_Attribute[10] = {}
	tXuanbao_Attribute[10]["Ordinary"] = {}
	tXuanbao_Attribute[10]["Ordinary"]["LowerLimit"] = 100
	tXuanbao_Attribute[10]["Ordinary"]["UpperLimit"] = 299
	tXuanbao_Attribute[10]["Gold"] = {}
	tXuanbao_Attribute[10]["Gold"]["LowerLimit"] = 300
	tXuanbao_Attribute[10]["Gold"]["UpperLimit"] = 500
	tXuanbao_Attribute[10]["Gold"]["NewUpperLimit"] = 490
	
	-- 最终法伤加成
	tXuanbao_Attribute[11] = {}
	tXuanbao_Attribute[11]["Ordinary"] = {}
	tXuanbao_Attribute[11]["Ordinary"]["LowerLimit"] = 100
	tXuanbao_Attribute[11]["Ordinary"]["UpperLimit"] = 299
	tXuanbao_Attribute[11]["Gold"] = {}
	tXuanbao_Attribute[11]["Gold"]["LowerLimit"] = 300
	tXuanbao_Attribute[11]["Gold"]["UpperLimit"] = 500
	tXuanbao_Attribute[11]["Gold"]["NewUpperLimit"] = 490
	
	-- 最终物伤减免
	tXuanbao_Attribute[12] = {}
	tXuanbao_Attribute[12]["Ordinary"] = {}
	tXuanbao_Attribute[12]["Ordinary"]["LowerLimit"] = 100
	tXuanbao_Attribute[12]["Ordinary"]["UpperLimit"] = 299
	tXuanbao_Attribute[12]["Gold"] = {}
	tXuanbao_Attribute[12]["Gold"]["LowerLimit"] = 300
	tXuanbao_Attribute[12]["Gold"]["UpperLimit"] = 500
	tXuanbao_Attribute[12]["Gold"]["NewUpperLimit"] = 490
	
	-- 最终法伤减免
	tXuanbao_Attribute[13] = {}
	tXuanbao_Attribute[13]["Ordinary"] = {}
	tXuanbao_Attribute[13]["Ordinary"]["LowerLimit"] = 100
	tXuanbao_Attribute[13]["Ordinary"]["UpperLimit"] = 299
	tXuanbao_Attribute[13]["Gold"] = {}
	tXuanbao_Attribute[13]["Gold"]["LowerLimit"] = 300
	tXuanbao_Attribute[13]["Gold"]["UpperLimit"] = 500
	tXuanbao_Attribute[13]["Gold"]["NewUpperLimit"] = 490
	

--玄宝拥有相同属性种类情况下的奖励属性
local tXuanbao_BonusAttr = {}
	--物爆
	tXuanbao_BonusAttr[1] = {}
	tXuanbao_BonusAttr[1][2] = 10
	tXuanbao_BonusAttr[1][3] = 20
	tXuanbao_BonusAttr[1][4] = 30
	tXuanbao_BonusAttr[1][5] = 50
	--法爆
	tXuanbao_BonusAttr[2] = {}
	tXuanbao_BonusAttr[2][2] = 10
	tXuanbao_BonusAttr[2][3] = 20
	tXuanbao_BonusAttr[2][4] = 30
	tXuanbao_BonusAttr[2][5] = 50
	--抵抗暴击
	tXuanbao_BonusAttr[3] = {}
	tXuanbao_BonusAttr[3][2] = 10
	tXuanbao_BonusAttr[3][3] = 20
	tXuanbao_BonusAttr[3][4] = 30
	tXuanbao_BonusAttr[3][5] = 50
	--粉碎
	tXuanbao_BonusAttr[4] = {}
	tXuanbao_BonusAttr[4][2] = 10
	tXuanbao_BonusAttr[4][3] = 20
	tXuanbao_BonusAttr[4][4] = 30
	tXuanbao_BonusAttr[4][5] = 50
	--坚固
	tXuanbao_BonusAttr[5] = {}
	tXuanbao_BonusAttr[5][2] = 10
	tXuanbao_BonusAttr[5][3] = 20
	tXuanbao_BonusAttr[5][4] = 30
	tXuanbao_BonusAttr[5][5] = 50	
	--生命
	tXuanbao_BonusAttr[6] = {}
	tXuanbao_BonusAttr[6][2] = 50
	tXuanbao_BonusAttr[6][3] = 80
	tXuanbao_BonusAttr[6][4] = 100
	tXuanbao_BonusAttr[6][5] = 150	
	--物攻
	tXuanbao_BonusAttr[7] = {}
	tXuanbao_BonusAttr[7][2] = 10
	tXuanbao_BonusAttr[7][3] = 20
	tXuanbao_BonusAttr[7][4] = 30
	tXuanbao_BonusAttr[7][5] = 50	
	--魔攻
	tXuanbao_BonusAttr[8] = {} 
	tXuanbao_BonusAttr[8][2] = 30
	tXuanbao_BonusAttr[8][3] = 50
	tXuanbao_BonusAttr[8][4] = 70
	tXuanbao_BonusAttr[8][5] = 100	
	--魔防
	tXuanbao_BonusAttr[9] = {}
	tXuanbao_BonusAttr[9][2] = 10
	tXuanbao_BonusAttr[9][3] = 15
	tXuanbao_BonusAttr[9][4] = 20
	tXuanbao_BonusAttr[9][5] = 40	
	--最终物伤
	tXuanbao_BonusAttr[10] = {}
	tXuanbao_BonusAttr[10][2] = 10
	tXuanbao_BonusAttr[10][3] = 20
	tXuanbao_BonusAttr[10][4] = 30
	tXuanbao_BonusAttr[10][5] = 50	
	--最终法伤
	tXuanbao_BonusAttr[11] = {}
	tXuanbao_BonusAttr[11][2] = 10
	tXuanbao_BonusAttr[11][3] = 15
	tXuanbao_BonusAttr[11][4] = 20
	tXuanbao_BonusAttr[11][5] = 40	
	--最终物减
	tXuanbao_BonusAttr[12] = {}
	tXuanbao_BonusAttr[12][2] = 10
	tXuanbao_BonusAttr[12][3] = 20
	tXuanbao_BonusAttr[12][4] = 30
	tXuanbao_BonusAttr[12][5] = 50		
	--最终法减
	tXuanbao_BonusAttr[13] = {}
	tXuanbao_BonusAttr[13][2] = 10
	tXuanbao_BonusAttr[13][3] = 15
	tXuanbao_BonusAttr[13][4] = 20
	tXuanbao_BonusAttr[13][5] = 40
	
-- 玄宝类型
local tXuanbao_Type = {}
	-- 法攻类玄宝（4100001）
	tXuanbao_Type[4100001] = {}
	tXuanbao_Type[4100001]["TotalWeight"] = 12500
	-- 黄金提高抵抗暴击
	tXuanbao_Type[4100001][1] = {}
	tXuanbao_Type[4100001][1]["Type"] = 3				---该type跟上面的属性下标相对应
	tXuanbao_Type[4100001][1]["Range"] = "Gold"			---该值表示该属性是在普通还是黄金范围内随机
	tXuanbao_Type[4100001][1]["Weight"] = 1000			---该属性的占比权重
	tXuanbao_Type[4100001][1]["IsGold"] = 1				---该属性是否黄金属性
	tXuanbao_Type[4100001][1]["IsGiven"] = 0			---该属性是否特色属性
	-- 普通提高粉碎攻击
	tXuanbao_Type[4100001][2] = {}
	tXuanbao_Type[4100001][2]["Type"] = 4
	tXuanbao_Type[4100001][2]["Range"] = "Ordinary"
	tXuanbao_Type[4100001][2]["Weight"] = 2000
	tXuanbao_Type[4100001][2]["IsGold"] = 0
	tXuanbao_Type[4100001][2]["IsGiven"] = 0
	-- 黄金提高坚固防御
	tXuanbao_Type[4100001][3] = {}
	tXuanbao_Type[4100001][3]["Type"] = 5
	tXuanbao_Type[4100001][3]["Range"] = "Gold"
	tXuanbao_Type[4100001][3]["Weight"] = 1000
	tXuanbao_Type[4100001][3]["IsGold"] = 1
	tXuanbao_Type[4100001][3]["IsGiven"] = 0
	-- 特色提高法术攻击力
	tXuanbao_Type[4100001][4] = {}
	tXuanbao_Type[4100001][4]["Type"] = 8
	tXuanbao_Type[4100001][4]["Range"] = "Gold"
	tXuanbao_Type[4100001][4]["Weight"] = 500
	tXuanbao_Type[4100001][4]["IsGold"] = 1
	tXuanbao_Type[4100001][4]["IsGiven"] = 1
	-- 普通提高法术防御力
	tXuanbao_Type[4100001][5] = {}
	tXuanbao_Type[4100001][5]["Type"] = 9
	tXuanbao_Type[4100001][5]["Range"] = "Ordinary"
	tXuanbao_Type[4100001][5]["Weight"] = 2000
	tXuanbao_Type[4100001][5]["IsGold"] = 0
	tXuanbao_Type[4100001][5]["IsGiven"] = 0
	-- 普通最终物伤加成
	tXuanbao_Type[4100001][6] = {}
	tXuanbao_Type[4100001][6]["Type"] = 10
	tXuanbao_Type[4100001][6]["Range"] = "Ordinary"
	tXuanbao_Type[4100001][6]["Weight"] = 2000
	tXuanbao_Type[4100001][6]["IsGold"] = 0
	tXuanbao_Type[4100001][6]["IsGiven"] = 0
	-- 黄金最终法伤加成
	tXuanbao_Type[4100001][7] = {}
	tXuanbao_Type[4100001][7]["Type"] = 11
	tXuanbao_Type[4100001][7]["Range"] = "Gold"
	tXuanbao_Type[4100001][7]["Weight"] = 1000
	tXuanbao_Type[4100001][7]["IsGold"] = 1
	tXuanbao_Type[4100001][7]["IsGiven"] = 0
	-- 普通最终物伤减免
	tXuanbao_Type[4100001][8] = {}
	tXuanbao_Type[4100001][8]["Type"] = 12
	tXuanbao_Type[4100001][8]["Range"] = "Ordinary"
	tXuanbao_Type[4100001][8]["Weight"] = 2000
	tXuanbao_Type[4100001][8]["IsGold"] = 0
	tXuanbao_Type[4100001][8]["IsGiven"] = 0
	-- 黄金最终法伤减免
	tXuanbao_Type[4100001][9] = {}
	tXuanbao_Type[4100001][9]["Type"] = 13
	tXuanbao_Type[4100001][9]["Range"] = "Gold"
	tXuanbao_Type[4100001][9]["Weight"] = 1000
	tXuanbao_Type[4100001][9]["IsGold"] = 1
	tXuanbao_Type[4100001][9]["IsGiven"] = 0

	-- 生命类玄宝（4100002）
	tXuanbao_Type[4100002] = {}
	tXuanbao_Type[4100002]["TotalWeight"] = 12500
	-- 普通提高抵抗暴击
	tXuanbao_Type[4100002][1] = {}
	tXuanbao_Type[4100002][1]["Type"] = 3
	tXuanbao_Type[4100002][1]["Range"] = "Ordinary"
	tXuanbao_Type[4100002][1]["Weight"] = 2000
	tXuanbao_Type[4100002][1]["IsGold"] = 0
	tXuanbao_Type[4100002][1]["IsGiven"] = 0
	-- 普通提高粉碎攻击
	tXuanbao_Type[4100002][2] = {}
	tXuanbao_Type[4100002][2]["Type"] = 4
	tXuanbao_Type[4100002][2]["Range"] = "Ordinary"
	tXuanbao_Type[4100002][2]["Weight"] = 2000
	tXuanbao_Type[4100002][2]["IsGold"] = 0
	tXuanbao_Type[4100002][2]["IsGiven"] = 0
	-- 黄金提高坚固防御
	tXuanbao_Type[4100002][3] = {}
	tXuanbao_Type[4100002][3]["Type"] = 5
	tXuanbao_Type[4100002][3]["Range"] = "Gold"
	tXuanbao_Type[4100002][3]["Weight"] = 1000
	tXuanbao_Type[4100002][3]["IsGold"] = 1
	tXuanbao_Type[4100002][3]["IsGiven"] = 0
	-- 特色提高生命上限
	tXuanbao_Type[4100002][4] = {}
	tXuanbao_Type[4100002][4]["Type"] = 6
	tXuanbao_Type[4100002][4]["Range"] = "Gold"
	tXuanbao_Type[4100002][4]["Weight"] = 500
	tXuanbao_Type[4100002][4]["IsGold"] = 1
	tXuanbao_Type[4100002][4]["IsGiven"] = 1
	-- 黄金提高法术防御力
	tXuanbao_Type[4100002][5] = {}
	tXuanbao_Type[4100002][5]["Type"] = 9
	tXuanbao_Type[4100002][5]["Range"] = "Gold"
	tXuanbao_Type[4100002][5]["Weight"] = 1000
	tXuanbao_Type[4100002][5]["IsGold"] = 1
	tXuanbao_Type[4100002][5]["IsGiven"] = 0
	-- 普通最终物伤加成
	tXuanbao_Type[4100002][6] = {}
	tXuanbao_Type[4100002][6]["Type"] = 10
	tXuanbao_Type[4100002][6]["Range"] = "Ordinary"
	tXuanbao_Type[4100002][6]["Weight"] = 2000
	tXuanbao_Type[4100002][6]["IsGold"] = 0
	tXuanbao_Type[4100002][6]["IsGiven"] = 0
	-- 普通最终法伤加成
	tXuanbao_Type[4100002][7] = {}
	tXuanbao_Type[4100002][7]["Type"] = 11
	tXuanbao_Type[4100002][7]["Range"] = "Ordinary"
	tXuanbao_Type[4100002][7]["Weight"] = 2000
	tXuanbao_Type[4100002][7]["IsGold"] = 0
	tXuanbao_Type[4100002][7]["IsGiven"] = 0
	-- 黄金最终物伤减免
	tXuanbao_Type[4100002][8] = {}
	tXuanbao_Type[4100002][8]["Type"] = 12
	tXuanbao_Type[4100002][8]["Range"] = "Gold"
	tXuanbao_Type[4100002][8]["Weight"] = 1000
	tXuanbao_Type[4100002][8]["IsGold"] = 1
	tXuanbao_Type[4100002][8]["IsGiven"] = 0
	-- 黄金最终法伤减免
	tXuanbao_Type[4100002][9] = {}
	tXuanbao_Type[4100002][9]["Type"] = 13
	tXuanbao_Type[4100002][9]["Range"] = "Gold"
	tXuanbao_Type[4100002][9]["Weight"] = 1000
	tXuanbao_Type[4100002][9]["IsGold"] = 1
	tXuanbao_Type[4100002][9]["IsGiven"] = 0

	-- 法爆类玄宝(4100003)
	tXuanbao_Type[4100003] = {}
	tXuanbao_Type[4100003]["TotalWeight"] = 12500
	-- 特色提高法术暴击
	tXuanbao_Type[4100003][1] = {}
	tXuanbao_Type[4100003][1]["Type"] = 2
	tXuanbao_Type[4100003][1]["Range"] = "Gold"
	tXuanbao_Type[4100003][1]["Weight"] = 500
	tXuanbao_Type[4100003][1]["IsGold"] = 1
	tXuanbao_Type[4100003][1]["IsGiven"] = 1
	-- 黄金提高抵抗暴击
	tXuanbao_Type[4100003][2] = {}
	tXuanbao_Type[4100003][2]["Type"] = 3
	tXuanbao_Type[4100003][2]["Range"] = "Gold"
	tXuanbao_Type[4100003][2]["Weight"] = 1000
	tXuanbao_Type[4100003][2]["IsGold"] = 1
	tXuanbao_Type[4100003][2]["IsGiven"] = 0
	-- 黄金提高粉碎攻击
	tXuanbao_Type[4100003][3] = {}
	tXuanbao_Type[4100003][3]["Type"] = 4
	tXuanbao_Type[4100003][3]["Range"] = "Gold"
	tXuanbao_Type[4100003][3]["Weight"] = 1000
	tXuanbao_Type[4100003][3]["IsGold"] = 1
	tXuanbao_Type[4100003][3]["IsGiven"] = 0
	-- 普通提高坚固防御
	tXuanbao_Type[4100003][4] = {}
	tXuanbao_Type[4100003][4]["Type"] = 5
	tXuanbao_Type[4100003][4]["Range"] = "Ordinary"
	tXuanbao_Type[4100003][4]["Weight"] = 2000
	tXuanbao_Type[4100003][4]["IsGold"] = 0
	tXuanbao_Type[4100003][4]["IsGiven"] = 0
	-- 普通提高法术防御力
	tXuanbao_Type[4100003][5] = {}
	tXuanbao_Type[4100003][5]["Type"] = 9
	tXuanbao_Type[4100003][5]["Range"] = "Ordinary"
	tXuanbao_Type[4100003][5]["Weight"] = 2000
	tXuanbao_Type[4100003][5]["IsGold"] = 0
	tXuanbao_Type[4100003][5]["IsGiven"] = 0
	-- 普通最终物伤加成
	tXuanbao_Type[4100003][6] = {}
	tXuanbao_Type[4100003][6]["Type"] = 10
	tXuanbao_Type[4100003][6]["Range"] = "Ordinary"
	tXuanbao_Type[4100003][6]["Weight"] = 2000
	tXuanbao_Type[4100003][6]["IsGold"] = 0
	tXuanbao_Type[4100003][6]["IsGiven"] = 0
	-- 黄金最终法伤加成
	tXuanbao_Type[4100003][7] = {}
	tXuanbao_Type[4100003][7]["Type"] = 11
	tXuanbao_Type[4100003][7]["Range"] = "Gold"
	tXuanbao_Type[4100003][7]["Weight"] = 1000
	tXuanbao_Type[4100003][7]["IsGold"] = 1
	tXuanbao_Type[4100003][7]["IsGiven"] = 0
	-- 普通最终物伤减免
	tXuanbao_Type[4100003][8] = {}
	tXuanbao_Type[4100003][8]["Type"] = 12
	tXuanbao_Type[4100003][8]["Range"] = "Ordinary"
	tXuanbao_Type[4100003][8]["Weight"] = 2000
	tXuanbao_Type[4100003][8]["IsGold"] = 0
	tXuanbao_Type[4100003][8]["IsGiven"] = 0
	-- 黄金最终法伤减免
	tXuanbao_Type[4100003][9] = {}
	tXuanbao_Type[4100003][9]["Type"] = 13
	tXuanbao_Type[4100003][9]["Range"] = "Gold"
	tXuanbao_Type[4100003][9]["Weight"] = 1000
	tXuanbao_Type[4100003][9]["IsGold"] = 1
	tXuanbao_Type[4100003][9]["IsGiven"] = 0

	-- 物攻类玄宝(4100004)
	tXuanbao_Type[4100004] = {}
	tXuanbao_Type[4100004]["TotalWeight"] = 12500
	-- 普通提高抵抗暴击
	tXuanbao_Type[4100004][1] = {}
	tXuanbao_Type[4100004][1]["Type"] = 3
	tXuanbao_Type[4100004][1]["Range"] = "Ordinary"
	tXuanbao_Type[4100004][1]["Weight"] = 2000
	tXuanbao_Type[4100004][1]["IsGold"] = 0
	tXuanbao_Type[4100004][1]["IsGiven"] = 0
	-- 黄金提高粉碎攻击
	tXuanbao_Type[4100004][2] = {}
	tXuanbao_Type[4100004][2]["Type"] = 4
	tXuanbao_Type[4100004][2]["Range"] = "Gold"
	tXuanbao_Type[4100004][2]["Weight"] = 1000
	tXuanbao_Type[4100004][2]["IsGold"] = 1
	tXuanbao_Type[4100004][2]["IsGiven"] = 0
	-- 黄金提高坚固防御
	tXuanbao_Type[4100004][3] = {}
	tXuanbao_Type[4100004][3]["Type"] = 5
	tXuanbao_Type[4100004][3]["Range"] = "Gold"
	tXuanbao_Type[4100004][3]["Weight"] = 1000
	tXuanbao_Type[4100004][3]["IsGold"] = 1
	tXuanbao_Type[4100004][3]["IsGiven"] = 0
	-- 特色提高物理攻击力
	tXuanbao_Type[4100004][4] = {}
	tXuanbao_Type[4100004][4]["Type"] = 7
	tXuanbao_Type[4100004][4]["Range"] = "Gold"
	tXuanbao_Type[4100004][4]["Weight"] = 500
	tXuanbao_Type[4100004][4]["IsGold"] = 1
	tXuanbao_Type[4100004][4]["IsGiven"] = 1
	-- 普通提高法术防御力
	tXuanbao_Type[4100004][5] = {}
	tXuanbao_Type[4100004][5]["Type"] = 9
	tXuanbao_Type[4100004][5]["Range"] = "Ordinary"
	tXuanbao_Type[4100004][5]["Weight"] = 2000
	tXuanbao_Type[4100004][5]["IsGold"] = 0
	tXuanbao_Type[4100004][5]["IsGiven"] = 0
	-- 黄金最终物伤加成
	tXuanbao_Type[4100004][6] = {}
	tXuanbao_Type[4100004][6]["Type"] = 10
	tXuanbao_Type[4100004][6]["Range"] = "Gold"
	tXuanbao_Type[4100004][6]["Weight"] = 1000
	tXuanbao_Type[4100004][6]["IsGold"] = 1
	tXuanbao_Type[4100004][6]["IsGiven"] = 0
	-- 普通最终法伤加成
	tXuanbao_Type[4100004][7] = {}
	tXuanbao_Type[4100004][7]["Type"] = 11
	tXuanbao_Type[4100004][7]["Range"] = "Ordinary"
	tXuanbao_Type[4100004][7]["Weight"] = 2000
	tXuanbao_Type[4100004][7]["IsGold"] = 0
	tXuanbao_Type[4100004][7]["IsGiven"] = 0
	-- 黄金最终物伤减免
	tXuanbao_Type[4100004][8] = {}
	tXuanbao_Type[4100004][8]["Type"] = 12
	tXuanbao_Type[4100004][8]["Range"] = "Gold"
	tXuanbao_Type[4100004][8]["Weight"] = 1000
	tXuanbao_Type[4100004][8]["IsGold"] = 1
	tXuanbao_Type[4100004][8]["IsGiven"] = 0
	-- 普通最终法伤减免
	tXuanbao_Type[4100004][9] = {}
	tXuanbao_Type[4100004][9]["Type"] = 13
	tXuanbao_Type[4100004][9]["Range"] = "Ordinary"
	tXuanbao_Type[4100004][9]["Weight"] = 2000
	tXuanbao_Type[4100004][9]["IsGold"] = 0
	tXuanbao_Type[4100004][9]["IsGiven"] = 0
	
	-- 物爆类玄宝(4100005)
	tXuanbao_Type[4100005] = {}
	tXuanbao_Type[4100005]["TotalWeight"] = 12500
	-- 特色提高物理暴击
	tXuanbao_Type[4100005][1] = {}
	tXuanbao_Type[4100005][1]["Type"] = 1
	tXuanbao_Type[4100005][1]["Range"] = "Gold"
	tXuanbao_Type[4100005][1]["Weight"] = 500
	tXuanbao_Type[4100005][1]["IsGold"] = 1
	tXuanbao_Type[4100005][1]["IsGiven"] = 1
	-- 黄金提高抵抗暴击
	tXuanbao_Type[4100005][2] = {}
	tXuanbao_Type[4100005][2]["Type"] = 3
	tXuanbao_Type[4100005][2]["Range"] = "Gold"
	tXuanbao_Type[4100005][2]["Weight"] = 1000
	tXuanbao_Type[4100005][2]["IsGold"] = 1
	tXuanbao_Type[4100005][2]["IsGiven"] = 0
	-- 黄金提高粉碎攻击
	tXuanbao_Type[4100005][3] = {}
	tXuanbao_Type[4100005][3]["Type"] = 4
	tXuanbao_Type[4100005][3]["Range"] = "Gold"
	tXuanbao_Type[4100005][3]["Weight"] = 1000
	tXuanbao_Type[4100005][3]["IsGold"] = 1
	tXuanbao_Type[4100005][3]["IsGiven"] = 0
	-- 黄金提高坚固防御
	tXuanbao_Type[4100005][4] = {}
	tXuanbao_Type[4100005][4]["Type"] = 5
	tXuanbao_Type[4100005][4]["Range"] = "Gold"
	tXuanbao_Type[4100005][4]["Weight"] = 1000
	tXuanbao_Type[4100005][4]["IsGold"] = 1
	tXuanbao_Type[4100005][4]["IsGiven"] = 0
	-- 普通提高法术防御力
	tXuanbao_Type[4100005][5] = {}
	tXuanbao_Type[4100005][5]["Type"] = 9
	tXuanbao_Type[4100005][5]["Range"] = "Ordinary"
	tXuanbao_Type[4100005][5]["Weight"] = 2000
	tXuanbao_Type[4100005][5]["IsGold"] = 0
	tXuanbao_Type[4100005][5]["IsGiven"] = 0
	-- 黄金最终物伤加成
	tXuanbao_Type[4100005][6] = {}
	tXuanbao_Type[4100005][6]["Type"] = 10
	tXuanbao_Type[4100005][6]["Range"] = "Gold"
	tXuanbao_Type[4100005][6]["Weight"] = 1000
	tXuanbao_Type[4100005][6]["IsGold"] = 1
	tXuanbao_Type[4100005][6]["IsGiven"] = 0
	-- 普通最终法伤加成
	tXuanbao_Type[4100005][7] = {}
	tXuanbao_Type[4100005][7]["Type"] = 11
	tXuanbao_Type[4100005][7]["Range"] = "Ordinary"
	tXuanbao_Type[4100005][7]["Weight"] = 2000
	tXuanbao_Type[4100005][7]["IsGold"] = 0
	tXuanbao_Type[4100005][7]["IsGiven"] = 0
	-- 普通最终物伤减免
	tXuanbao_Type[4100005][8] = {}
	tXuanbao_Type[4100005][8]["Type"] = 12
	tXuanbao_Type[4100005][8]["Range"] = "Ordinary"
	tXuanbao_Type[4100005][8]["Weight"] = 2000
	tXuanbao_Type[4100005][8]["IsGold"] = 0
	tXuanbao_Type[4100005][8]["IsGiven"] = 0
	-- 普通最终法伤减免
	tXuanbao_Type[4100005][9] = {}
	tXuanbao_Type[4100005][9]["Type"] = 13
	tXuanbao_Type[4100005][9]["Range"] = "Ordinary"
	tXuanbao_Type[4100005][9]["Weight"] = 2000
	tXuanbao_Type[4100005][9]["IsGold"] = 0
	tXuanbao_Type[4100005][9]["IsGiven"] = 0
	
--------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 获取获得的玄宝类型
function Xuanbao_GetItemId()
	local nFlag,tReward = Probabil_RandomAward(tXuanbao_Random,1)
	
	return tReward[1]["tAward"][1]["Item_1"]
end

-- 判断是否是玄宝的物品ID
function Xuanbao_ChkItemId(nItemId)
	for i,v in pairs(tXuanbao_Id) do
		if v == nItemId then
			return true
		end
	end
	
	return false
end

-- 获取给予的属性条数
function Xuanbao_GetAttributeNum(nMinNum,nMaxNum)
	local nTotalNum = 0

	for i = nMinNum,nMaxNum do
		nTotalNum = nTotalNum + tXuanbao_AttributeNum[i]["Weight"]
	end

	local nRandom = math.random(1,nTotalNum)
	local nTemp = 0

	for i = nMinNum,nMaxNum do
		nTemp = nTemp + tXuanbao_AttributeNum[i]["Weight"]
		
		if nRandom <= nTemp then
			return tXuanbao_AttributeNum[i]["Num"]
		end
	end
	
	return 1
end

-- 获取玄宝分数
function Xuanbao_GetAttributeScore(nType,sIndex,nGoldNum)
	local nMinNum = tXuanbao_Attribute[nType][sIndex]["LowerLimit"]
	local nMaxNum = tXuanbao_Attribute[nType][sIndex]["UpperLimit"]
	local nGoldNum = nGoldNum or 0
	if nGoldNum >= 5 and sIndex == "Gold" then
		nMaxNum = tXuanbao_Attribute[nType][sIndex]["NewUpperLimit"]
	end
	local nAttribute = math.random(nMinNum,nMaxNum)
	return nAttribute
end
function Xuanbao_GoldRandom(nItemId,tGold,nGoldNum,nTotalGoldNum)
	local nTotalNum = 0
	local nMax = #tGold
	local tAward = {}
	local Index = 1
	
	if nGoldNum <= 0 then
		return tAward
	end

	for i,v in pairs(tGold) do
		nTotalNum = nTotalNum + v["Weight"]
	end
	
	for i = 1,nGoldNum do
		local nRandom = math.random(1,nTotalNum)
		local nTemp = 0
		
		for j = 1,nMax do
			nTemp = nTemp + tGold[j]["Weight"]
			
			if nRandom <= nTemp then
				nTotalNum = nTotalNum - tGold[j]["Weight"]
				tGold[j]["Weight"] = 0
				
				tAward[Index] = {}
				local nType = tGold[j]["Type"]
				
				for nIndex,b in pairs(tXuanbao_Type[nItemId]) do
					if nType == b["Type"] then
						local sIndex = b["Range"]
						local nIsGold = b["IsGold"]
						local nAttribute = Xuanbao_GetAttributeScore(nType,sIndex,nTotalGoldNum)
						tAward[Index]["Index"] = nIndex
						tAward[Index]["Data"] = nAttribute*1000 + nIsGold *100 + nType
						break
					end
				end
				
				Index = Index + 1
				break
			end
		end
	end
	
	return tAward
end

-- 返回特定黄金属性的条数
function Xuanbao_GetGoldAttr(nItemId,nAttributeNum,nGoldNum,nGivenNum)
	local nIndex = 1
	local tData = {}
	tData[1] = 0
	tData[2] = 0
	tData[3] = 0
	tData[4] = 0
	tData[5] = 0
	
	if nGivenNum > 1 then
		nGivenNum = 1
	end

	-- 复制一个属性表
	local tCopy = CommonFunc_Copy(tXuanbao_Type[nItemId])
	-- 获取该表的黄金属性
	local tGoldCopy = {}
	-- 获取该表非黄金属性
	local tNoGoldCopy = {}
	
	for i,v in pairs(tCopy) do
		if type(v) == "table" then
			if v["IsGold"] == 1 then
				if nGivenNum == 0 then
					table.insert(tGoldCopy,v)
				elseif v["IsGiven"] == 0 then
					table.insert(tGoldCopy,v)
				else
					local nType = v["Type"]
					local sIndex = v["Range"]
					local nIsGold = v["IsGold"]
					local nAttribute = Xuanbao_GetAttributeScore(nType,sIndex,nGoldNum)
					tData[nIndex] = nAttribute*1000 + nIsGold *100 + nType
					nIndex = nIndex + 1
				end
			else
				table.insert(tNoGoldCopy,v)
			end
		end
	end

	local tGold = Xuanbao_GoldRandom(nItemId,tGoldCopy,nGoldNum - nGivenNum,nGoldNum)

	for i = 1,#tGold do
		tData[nIndex] = tGold[i]["Data"]
		nIndex = nIndex + 1
	end

	if nAttributeNum > nGoldNum then
		local tNoGold = Xuanbao_GoldRandom(nItemId,tNoGoldCopy,nAttributeNum - nGoldNum,nGoldNum)
		for i = 1,#tNoGold do
			tData[nIndex] = tNoGold[i]["Data"]
			nIndex = nIndex + 1
		end
	end

	return tData
end

-- 获取给予的属性值
function Xuanbao_GetAttribute(nItemId,tReward,nGoldNum)
	-- 复制一个属性表
	local tCopy = CommonFunc_Copy(tXuanbao_Type[nItemId])
	local nTotalNum = 0
	
	for i,v in pairs(tCopy) do
		for a,b in pairs(tReward) do
			if i == b then
				v["Weight"] = 0
				break
			end
		end
	end

	for i = 1,9 do
		nTotalNum = nTotalNum + tCopy[i]["Weight"]
	end
	
	local nRandom = math.random(1,nTotalNum)
	local nTemp = 0
	local nIndex = 1
	
	for i = 1,9 do
		nTemp = nTemp + tCopy[i]["Weight"]
		
		if nRandom <= nTemp then
			nIndex = i
			break
		end
	end

	local nType = tCopy[nIndex]["Type"]
	local sIndex = tCopy[nIndex]["Range"]
	local nIsGold = tCopy[nIndex]["IsGold"]
	local nAttribute = Xuanbao_GetAttributeScore(nType,sIndex,nGoldNum)

	return nAttribute*1000 + nIsGold *100 + nType,nIndex
end

-- 给玄宝物品
function Xuanbao_Reward(nItemId,nMonopoly,nFlag,nAmountLimit,nUserId,nAttributeNum,nMinNum,nMaxNum,nGoldNum,nGivenNum)
	if nItemId == nil or nItemId == 0 then
		nItemId = Xuanbao_GetItemId()
	end
	
	-- 判断传进来的ID是否在玄宝类型里
	if not Xuanbao_ChkItemId(nItemId) then
		Sys_SaveAbnormalLog("函数 Xuanbao_Reward 参数 nItemId 为整型并且大于等于0")
		return
	end
	
	if nAmountLimit == 0 or nAmountLimit == nil then
		nAmountLimit = math.random(40,100)
	end
	
	if type(nAmountLimit) ~= "number" or nAmountLimit < 40 or nAmountLimit > 100 or nAmountLimit%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Xuanbao_Reward 中[nItemId]:[".. nItemId .."]的nAmountLimit的范围必须为40-100的整数。")
		return
	end

	nAmountLimit = nAmountLimit*100
	
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Xuanbao_Reward 参数 nUserId 为整型并且大于等于0")
		return
	end
	
	if nAttributeNum == nil or nAttributeNum == 0 then
		nMinNum = nMinNum or 1
		nMaxNum = nMaxNum or 5
		if type(nMinNum) ~= "number" or  (nMinNum > nMaxNum) or nMinNum < 1 or nMinNum > 5 then
			Sys_SaveAbnormalLog("函数 Xuanbao_Reward 参数 nMinNum 为1~5之间的整数且nMinNum不大于nMaxNum")
			return
		end
		
		if type(nMaxNum) ~= "number" or type(nMaxNum) ~= "number" or nMaxNum < 1 or nMaxNum > 5 then
			Sys_SaveAbnormalLog("函数 Xuanbao_Reward 参数 nMaxNum 为1~5之间的整数")
			return
		end
		
		
		
		
		nAttributeNum = Xuanbao_GetAttributeNum(nMinNum,nMaxNum)
	elseif type(nAttributeNum) ~= "number" or nAttributeNum < 1 or nAttributeNum > 5 then
		Sys_SaveAbnormalLog("函数 Xuanbao_Reward 参数 nAttributeNum 为1~5之间的整数")
		return
	end
	
	if nGoldNum ~= nil and (type(nGoldNum) ~= "number" or nGoldNum > nAttributeNum) then
		Sys_SaveAbnormalLog("函数 Xuanbao_Reward 参数 nGoldNum 为小于nAttributeNum的整数")
		return
	end
	
	local tReward = {}
	local nIndex = 0
	local tData = {}

	if nGoldNum == nil or nGoldNum < 0 then
		tData[1] = 0
		tData[2] = 0
		tData[3] = 0
		tData[4] = 0
		tData[5] = 0

		for i = 1,nAttributeNum do
			tData[i],nIndex = Xuanbao_GetAttribute(nItemId,tReward,nAttributeNum)
			table.insert(tReward,nIndex)
		end
	else
		local nGivenNum = nGivenNum or 0
		tData = Xuanbao_GetGoldAttr(nItemId,nAttributeNum,nGoldNum,nGivenNum)
	end

	local nItem = AddNewXuanBao(nUserId,nItemId,nMonopoly,nFlag,nAmountLimit,tData[1],tData[2],tData[3],tData[4],tData[5])
	if nItem ~= 0 then
		return nItemId,nItem
	end 
end


function Xuanbao_RewardSameAttribute(nItemId,nMonopoly,nFlag,nAmountLimit,nUserId,nAttributeNum,nSameAttriNum,nMinNum,nMaxNum)
	if nItemId == nil or nItemId == 0 then
		nItemId = Xuanbao_GetItemId()
	end
	
	-- 判断传进来的ID是否在玄宝类型里
	if not Xuanbao_ChkItemId(nItemId) then
		Sys_SaveAbnormalLog("函数 Xuanbao_RewardSameAttribute 参数 nItemId 为整型并且大于等于0")
		return
	end
	--随机耐久度40至100
	if nAmountLimit == 0 or nAmountLimit == nil then
		nAmountLimit = math.random(40,100)
	end

	if type(nAmountLimit) ~= "number" or nAmountLimit < 40 or nAmountLimit > 100 or nAmountLimit%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Xuanbao_RewardSameAttribute 中[nItemId]:[".. nItemId .."]的nAmountLimit的范围必须为40-100的整数。")
		return
	end

	nAmountLimit = nAmountLimit*100
	
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Xuanbao_RewardSameAttribute 参数 nUserId 为整型并且大于等于0")
		return
	end
	--相同属性种类的数量 
	if nSameAttriNum == nil then
		Sys_SaveAbnormalLog("函数 Xuanbao_RewardSameAttribute 中[nItemId]:[".. nItemId .."]的nSameAttriNum的范围必须为2-5的整数。")
		return
	elseif type(nSameAttriNum) ~= "number" or nSameAttriNum < 2 or nSameAttriNum > 5 or nSameAttriNum%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Xuanbao_RewardSameAttribute 中[nItemId]:[".. nItemId .."]的nSameAttriNum的范围必须为2-5的整数。")
		return
	end
	--总属性随机
	if nAttributeNum == nil or nAttributeNum == 0 then
		--未定总属性数量
		nMinNum = nMinNum or 1
		nMaxNum = nMaxNum or 5
		if type(nMinNum) ~= "number" or  (nMinNum > nMaxNum) or nMinNum < 1 or nMinNum > 5 then
			Sys_SaveAbnormalLog("函数 Xuanbao_Reward 参数 nMinNum 为1~5之间的整数且nMinNum不大于nMaxNum")
			return
		end
		
		if type(nMaxNum) ~= "number" or type(nMaxNum) ~= "number" or nMaxNum < 1 or nMaxNum > 5 then
			Sys_SaveAbnormalLog("函数 Xuanbao_Reward 参数 nMaxNum 为1~5之间的整数")
			return
		end
		if nSameAttriNum ~= 0 and (nMinNum < nSameAttriNum)then
			nMinNum = nSameAttriNum
		end
		--获取属性的条数 概率为tXuanbao_AttributeNum表
		nAttributeNum = Xuanbao_GetAttributeNum(nMinNum,nMaxNum)
	elseif type(nAttributeNum) ~= "number" or nAttributeNum < 2 or nAttributeNum > 5 or nAttributeNum < nSameAttriNum then
		Sys_SaveAbnormalLog("函数 Xuanbao_Reward 参数 nAttributeNum 为2~5之间的整数且必须大于nSameAttriNum")
	end
	
	local tReward = {}
	local nIndex = 0
	local tData = {}
	
	 
	tData[1] = 0
	tData[2] = 0
	tData[3] = 0
	tData[4] = 0
	tData[5] = 0
	--第一个属性随机
	tData[1],nIndex = Xuanbao_GetAttribute(nItemId,tReward,nAttributeNum)
	--补上相同的属性加分
	
	tData[1] = tXuanbao_BonusAttr[tXuanbao_Type[nItemId][nIndex]["Type"]][nSameAttriNum]*1000 + tData[1]
	--属性的类型
	local nIndex_Type = tXuanbao_Type[nItemId][nIndex]["Type"]
	--是否黄金
	local nIndex_Range = tXuanbao_Type[nItemId][nIndex]["Range"]
	--获取的属性值
	local nIndex_Score = 0
	--是否黄金
	local nIndex_IsGold = tXuanbao_Type[nItemId][nIndex]["IsGold"]
	--记录已经赋值过的属性
	for i = 2,nSameAttriNum do
		nIndex_Score = Xuanbao_GetAttributeScore(nIndex_Type,nIndex_Range,nAttributeNum) + tXuanbao_BonusAttr[tXuanbao_Type[nItemId][nIndex]["Type"]][nSameAttriNum]
		
		tData[i] = nIndex_Score*1000 + nIndex_IsGold *100 + nIndex_Type
	end
	--将之前随机到的属性概率置0
	table.insert(tReward,nIndex)
	if nSameAttriNum < nAttributeNum then
		for j = nSameAttriNum+1,nAttributeNum do
			tData[j],nIndex = Xuanbao_GetAttribute(nItemId,tReward,nAttributeNum)
			table.insert(tReward,nIndex)		
		end
	end
	
	local nItem = AddNewXuanBao(nUserId,nItemId,nMonopoly,nFlag,nAmountLimit,tData[1],tData[2],tData[3],tData[4],tData[5])
	if nItem ~= 0 then
		return nItemId,nItem
	end 
end


-- c、
-- // 新增获得玄宝LUA，只有通过此接口获得的玄宝才会有5条属性
-- // 获得玄宝; 参1:玩家ID, 参2:物品类型, 参3:赠品属性, 参4:个位表示是否检查背包、十位表示是否指定属性, 参5:耐久度上限, 参6-参10:指定玄宝属性(CCCCBAA格式); 成功返回物品ID, 失败返回0。
-- OBJID AddNewXuanBao(OBJID idUser, OBJID idItemType, int nMonopoly,  int nFlag, int nAmountLimit, int nData1, int nData2, int nData3, int nData4, int nData5)


function Item_AddNewXuanBao(nItemId,sXuanBaoAttr,nUserId)
	
	local nMonopoly =0
	local nFlag  = 0
	local nAmountLimit = 0
	local nData1 = 0
	local nData2 =0
	local nData3 =0
	local nData4 =0
	local nData5 =0
	
	if type(sXuanBaoAttr) == "string" then
		tXuanBaoAttr = Sys_Split(sXuanBaoAttr," ")
		nMonopoly = tonumber(tXuanBaoAttr[1])
		nFlag  = tonumber(tXuanBaoAttr[2])
		nAmountLimit = tonumber(tXuanBaoAttr[3])*100
		nData1 = tonumber(tXuanBaoAttr[4])
		nData2 = tonumber(tXuanBaoAttr[5])
		nData3 = tonumber(tXuanBaoAttr[6])
		nData4 = tonumber(tXuanBaoAttr[7])
		nData5 = tonumber(tXuanBaoAttr[8])
		
	elseif type(sXuanBaoAttr) == "table" then
		nMonopoly = sXuanBaoAttr.monopoly
		nFlag  = sXuanBaoAttr.flag
		nAmountLimit = sXuanBaoAttr.addamount*100
		nData1 = sXuanBaoAttr.data1
		nData2 = sXuanBaoAttr.data2
		nData3 = sXuanBaoAttr.data3
		nData4 = sXuanBaoAttr.data4
		nData5 = sXuanBaoAttr.data5
	else
		Sys_SaveAbnormalLog("函数Item_AddNewXuanBao中[nItemId]:[".. nItemId .."]的sXuanBaoAttr必须为字符串或者表类型。")
		return
	end
	
	if type(nItemId) ~= "number" or  nItemId <= 0 or nItemId%1 ~= 0 then 
		Sys_SaveAbnormalLog("函数Item_AddNewXuanBao的[nItemId]:[".. nItemId .."]必须为整数且大于0。")
		return
	end	
	
	if nMonopoly == nil then 
		nMonopoly = 0
	elseif type(nMonopoly) ~= "number" or nMonopoly < 0 or nMonopoly%1 ~= 0 then
		Sys_SaveAbnormalLog("函数Item_AddNewXuanBao中[nItemId]:[".. nItemId .."]的nMonopoly必须为整数且不小于0。")
		return
	end
	
	if nFlag == nil then 
		nFlag = 0
	elseif type(nFlag) ~= "number" or nFlag < 0 or nFlag%1 ~= 0 then
		Sys_SaveAbnormalLog("函数Item_AddNewXuanBao中[nItemId]:[".. nItemId .."]的nFlag必须为整数且不小于0。")
		return
	end

	if nAmountLimit == nil then 
		nAmountLimit = 0
	elseif type(nAmountLimit) ~= "number" or nAmountLimit < 0 or nAmountLimit%1 ~= 0 then
		Sys_SaveAbnormalLog("函数Item_AddNewXuanBao中[nItemId]:[".. nItemId .."]的nAmountLimit必须大于等于0。")
		return
	end

	if nData1 == nil then 
		nData1 = 0
	elseif type(nData1) ~= "number" or nData1 < 0 or nData1%1 ~= 0 then
		Sys_SaveAbnormalLog("函数Item_AddNewXuanBao中[nItemId]:[".. nItemId .."]的nData1必须大于等于0。")
		return
	end
	
	if nData2 == nil then 
		nData2 = 0
	elseif type(nData2) ~= "number" or nData2 < 0 or nData2%1 ~= 0 then
		Sys_SaveAbnormalLog("函数Item_AddNewXuanBao中[nItemId]:[".. nItemId .."]的nData2必须大于等于0。")
		return
	end
	
	if nData3 == nil then 
		nData3 = 0
	elseif type(nData3) ~= "number" or nData3 < 0 or nData3%1 ~= 0 then
		Sys_SaveAbnormalLog("函数Item_AddNewXuanBao中[nItemId]:[".. nItemId .."]的nData3必须大于等于0。")
		return
	end
	
	if nData4 == nil then 
		nData4 = 0
	elseif type(nData4) ~= "number" or nData4 < 0 or nData4%1 ~= 0 then
		Sys_SaveAbnormalLog("函数Item_AddNewXuanBao中[nItemId]:[".. nItemId .."]的nData4必须大于等于0。")
		return
	end
	
	if nData5 == nil then 
		nData5 = 0
	elseif type(nData5) ~= "number" or nData5 < 0 or nData5%1 ~= 0 then
		Sys_SaveAbnormalLog("函数Item_AddNewXuanBao中[nItemId]:[".. nItemId .."]的nData5必须大于等于0。")
		return
	end	
	
	if nUserId == nil then 
		nUserId = 0
	elseif type(nUserId) ~= "number" or  nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数Item_AddNewXuanBao中[nItemId]:[".. nItemId .."]的nUserId必须为整数且不小于0。")
		return
	end
	
	local nCqitemId = AddNewXuanBao(nUserId,nItemId,nMonopoly,nFlag,nAmountLimit,nData1,nData2,nData3,nData4,nData5)
	if nCqitemId ~= 0 then
		return nCqitemId
	else
		Sys_SaveAbnormalLog("函数 Item_AddNewXuanBao 添加物品ID为：" .. nItemId .."失败。")
		return false
	end
end

-- 13

--取cq_item表Amount
--SCRIPT_PARAM_ITEM_Amount,=2305			//当前耐久
--返回cq_item表Amount，失败返回-1
-- Get_ItemAmount

--取cq_item表AmountLimit
--SCRIPT_PARAM_ITEM_AmountLimit,=2306		//耐久上限
--返回cq_item表AmountLimit，失败返回-1
-- Get_ItemAmountLimit

function Item_XuanBaoDurChk(nUserId)
	if nUserId == nil then 
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or  nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数Item_XuanBaoDurChk的nUserId必须为整数且不小于0。")
		return
	end
	
	local nItemId = Get_EquipIDByPos(13,nUserId)
	
	if (nItemId == nil) or (nItemId <= 0) then
		return false
	end
	
	local nXuanBaoAmount = Get_ItemAmount(nItemId)
	local nXuanBaoAmountLimit = Get_ItemAmountLimit(nItemId)
	local nDiff = math.floor ((nXuanBaoAmountLimit - nXuanBaoAmount)/100)
	local nItemTypeId = Get_ItemType(nItemId)
	if nDiff <= 0 then
		return nDiff
	else 
		return nDiff,nItemTypeId
	end
	
end


--随机给玩家属性玄宝，玄宝ID不配置为随机
function Item_AddRandomXuanBao(nItemId,nMonopoly,nUserId)

	if nItemId == nil or nItemId == 0 then
		nItemId = Xuanbao_GetItemId()
	end
	
	if nMonopoly == nil or nMonopoly == 0 then
		nMonopoly = 0
	else
		nMonopoly = 3
	end
	
	nMonopoly = Item_Monopoly(nItemId,nMonopoly,nUserId)

	if nUserId == nil then 
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or  nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数Item_AddRandomXuanBao的nUserId必须为整数且不小于0。")
		return
	end
	
	if  AddNewXuanBao(nUserId,nItemId,nMonopoly,0,0,0,0,0,0,0) ~= 0 then
		return nItemId
	else
		Sys_SaveAbnormalLog("函数Item_AddRandomXuanBao 添加物品ID为：" .. nItemId .."失败。")
		return false
	end
	
end

function Item_AddRandomXuanBaoAndMsg(nItemId,nMonopoly,nUserId)

	if nItemId == nil or nItemId == 0 then
		nItemId = Xuanbao_GetItemId()
	end
	
	if nMonopoly == nil or nMonopoly == 0 then
		nMonopoly = 0
	else
		nMonopoly = 3
	end
	
	nMonopoly = Item_Monopoly(nItemId,nMonopoly,nUserId)

	if nUserId == nil then 
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or  nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数Item_AddRandomXuanBaoAndMsg的nUserId必须为整数且不小于0。")
		return
	end
	local nItem = AddNewXuanBao(nUserId,nItemId,nMonopoly,0,0,0,0,0,0,0)
	if  nItem ~= 0 then
		local sItemName = ""
		
		if tRewardTemplate_Text["XuanBao"][nItemId] ~= nil then
			sItemName = tRewardTemplate_Text["XuanBao"][nItemId]
		else
			sItemName = Get_ItemtypeName(nItemId)
		end

		-- 判断是否是赠品
		if Sys_ParseNumbersContain(1,nMonopoly) then
			-- local sGift = "<" .. tRewardTemplate_Text["Gift"] .. ">"
			sItemName = string.format(tLuaRes[10025],sItemName,tRewardTemplate_Text["Gift"])
		end

		return sItemName,nItemId,nItem
	else
		Sys_SaveAbnormalLog("函数Item_AddRandomXuanBaoAndMsg添加物品ID为：" .. nItemId .."失败。")
		return false
	end
end

-- 怪物掉玄宝物品（属性条数可选）
function Xuanbao_MonsterDrop(nItemId,nFlag,nAmountLimit,nUserId,nAttributeNum,nMinNum,nMaxNum)
	if nItemId == nil or nItemId == 0 then
		nItemId = Xuanbao_GetItemId()
	end
	
	-- 判断传进来的ID是否在玄宝类型里
	if not Xuanbao_ChkItemId(nItemId) then
		Sys_SaveAbnormalLog("函数 Xuanbao_MonsterDrop 参数 nItemId 为整型并且大于等于0")
		return
	end
	
	if nAmountLimit == 0 or nAmountLimit == nil then
		nAmountLimit = math.random(40,100)
	end
	
	if type(nAmountLimit) ~= "number" or nAmountLimit < 40 or nAmountLimit > 100 or nAmountLimit%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Xuanbao_MonsterDrop 中[nItemId]:[".. nItemId .."]的nAmountLimit的范围必须为40-100的整数。")
		return
	end

	nAmountLimit = nAmountLimit*100
	
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Xuanbao_MonsterDrop 参数 nUserId 为整型并且大于等于0")
		return
	end
	
	if nAttributeNum == nil or nAttributeNum == 0 then
		nMinNum = nMinNum or 1
		nMaxNum = nMaxNum or 5
		if type(nMinNum) ~= "number" or  (nMinNum > nMaxNum) or nMinNum < 1 or nMinNum > 5 then
			Sys_SaveAbnormalLog("函数 Xuanbao_MonsterDrop 参数 nMinNum 为1~5之间的整数且nMinNum不大于nMaxNum")
			return
		end
		
		if type(nMaxNum) ~= "number" or type(nMaxNum) ~= "number" or nMaxNum < 1 or nMaxNum > 5 then
			Sys_SaveAbnormalLog("函数 Xuanbao_MonsterDrop 参数 nMaxNum 为1~5之间的整数")
			return
		end
		
		
		
		
		nAttributeNum = Xuanbao_GetAttributeNum(nMinNum,nMaxNum)
	elseif type(nAttributeNum) ~= "number" or nAttributeNum < 1 or nAttributeNum > 5 then
		Sys_SaveAbnormalLog("函数 Xuanbao_MonsterDrop 参数 nAttributeNum 为1~5之间的整数")
		return
	end
	
	local tReward = {}
	local nIndex = 0
	local tData = {}
	tData[1] = 0
	tData[2] = 0
	tData[3] = 0
	tData[4] = 0
	tData[5] = 0

	for i = 1,nAttributeNum do
		tData[i],nIndex = Xuanbao_GetAttribute(nItemId,tReward)
		table.insert(tReward,nIndex)
	end
	
	if killMonsterDropXuanbao(nUserId,nItemId,nFlag,nAmountLimit,tData[1],tData[2],tData[3],tData[4],tData[5]) then
		return nItemId
	end
end
