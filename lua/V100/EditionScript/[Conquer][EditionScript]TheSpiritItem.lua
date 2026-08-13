----------------------------------------------------------------------------
--Name:		[征服][功能脚本]神魂礼包.lua
--Purpose:	神魂礼包
--Creator: 	郑鋆
--Created:	2016/04/26
----------------------------------------------------------------------------

-- 命名前缀
-- TheSpiritItem_

-- 三阶神魂
-- 800019	五曜斩灵刀
-- 800050	松涛剑
-- 800070	玉宵斧
-- 800071	矩神斧
-- 800140	妖荒神隐
-- 800141	赤焰龙痕
-- 800200	宿血噬魂刀
-- 800230	贯云枪
-- 800252	荼毒妖镰
-- 800414	狂澜灵盾
-- 800520	焚云青锋剑
-- 800521	夜辰剑
-- 800615	荒神弓
-- 800617	玄天傲影弓
-- 800723	亟电灵珠
-- 800724	桫椤灵珠
-- 800801	杀戮之枪
-- 800802	欲望之枪
-- 800806	胜利之剑
-- 800807	荣耀之剑
-- 800915	炼渊飞刀
-- 801001	飞沙狂龙
-- 801101	四象玄冥拂尘
-- 820052	狂澜灵盔
-- 820053	沧羽灵冠
-- 821027	蜃玉灵坠
-- 821029	川芎灵囊
-- 822056	沧澜晶铠
-- 822057	天澜法袍
-- 823041	冰魄灵戒
-- 823043	青瑛灵镯
-- 823045	冰魄灵指
-- 824016	怒犴灵靴
-- 801204  三阶暴击系战士史诗
-- 801206  三阶粉碎系战士史诗
-- 827002  灵锤·破邪
-- 827003  灵斧·灭煞

-- 四阶神魂
-- 800014	掩日灵剑
-- 800015	银月灵锤
-- 800016	鬼丸国纲
-- 800214	寒螭灵戟
-- 800253	灭绝邪镰
-- 800512	莲华灵剑
-- 800613	潜龙灵弓
-- 800720	乾火灵珠
-- 800803	暗黑之枪
-- 800808	泰坦之剑
-- 800913	冥判虎翼
-- 801002	炽焰赤鳞
-- 801102	两仪万灵拂尘
-- 823052	紫郢宝戒
-- 823053	凌岳宝指
-- 823054	泣月宝镯
-- 801208	四阶暴击系战士史诗
-- 801210	四阶粉碎系战士史诗
-- 801304	辟月仙扇
-- 827004	天锤·摘星
-- 827005	天斧·逐月

-- 五阶神魂
-- 800415	雷纹盾
-- 820056	冰凝头饰
-- 820057	六阳头饰
-- 821028	御灵仙坠
-- 821030	苍木仙囊

-- 六阶神魂
-- 800000	紫魔刃
-- 800017	隐夜忍刀
-- 800110	魔吕锤
-- 800254	勾魂神镰
-- 800320	龙翼长棍
-- 800421	蛰龙玄盾
-- 800513	影灵宝剑
-- 800616	天翼弓
-- 800722	定海玄珠
-- 800804	岁月之枪
-- 800809	命运之剑
-- 800916	帝青龙牙
-- 801003	沧海龙吟
-- 801103	太极天机拂尘
-- 820071	九曜玄羽
-- 820072	天瀑玄羽
-- 821031	晶魄玄坠
-- 821032	灵檀玄囊
-- 822053	千漩仙铠
-- 822055	天瀑仙袍
-- 823055	盘龙玄戒
-- 823056	蟠龙玄镯
-- 823057	玄玉扳指
-- 824017	天行玄履
-- 801212	六阶暴击系战士史诗
-- 801214	六阶粉碎系战士史诗
-- 827006	神锤·吞天
-- 827007	神斧·吞天
-- 827008	神锤·噬日
-- 827009	神斧·噬日

tTheSpiritItem_Text = {}
tTheSpiritItem_Text["Reward"] = "STR_ID_tTheSpiritItem_Text[Reward]@@%s@@"


local sTheSpiritItem_Log = "0,0,%d,1,18000117,2,%d,1"
-- 礼包大几率概率表
local tTheSpiritItem_Random1st = {}
	-- 珍贵神魂礼包	720957
	tTheSpiritItem_Random1st[720957] = {}
	tTheSpiritItem_Random1st[720957]["ItemChanceSum"] = 10000
	tTheSpiritItem_Random1st[720957][1] = {["RandomItemChanceType"] = 2,["ItemChance"] = 2625,["Item_1"] = 1} -- 三阶神魂
	tTheSpiritItem_Random1st[720957][2] = {["RandomItemChanceType"] = 2,["ItemChance"] = 2700,["Item_1"] = 2} -- 四阶神魂
	tTheSpiritItem_Random1st[720957][3] = {["RandomItemChanceType"] = 2,["ItemChance"] = 775, ["Item_1"] = 3} -- 五阶神魂
	tTheSpiritItem_Random1st[720957][4] = {["RandomItemChanceType"] = 2,["ItemChance"] = 3900,["Item_1"] = 4} -- 六阶神魂
	-- 精致神魂礼包	3000107
	tTheSpiritItem_Random1st[3000107] = {}
	tTheSpiritItem_Random1st[3000107]["ItemChanceSum"] = 10000
	tTheSpiritItem_Random1st[3000107][1] = {["RandomItemChanceType"] = 2,["ItemChance"] = 6160,["Item_1"] = 1} -- 三阶神魂
	tTheSpiritItem_Random1st[3000107][2] = {["RandomItemChanceType"] = 2,["ItemChance"] = 3840,["Item_1"] = 2} -- 四阶神魂


-- 礼包的随机概率表
local tTheSpiritItem_Random = {}
	-- 珍贵神魂礼包	720957
	tTheSpiritItem_Random[720957] = {}
	-- 三阶神魂
	tTheSpiritItem_Random[720957][1] = {}
	tTheSpiritItem_Random[720957][1]["ItemChanceSum"] = 38000
	tTheSpiritItem_Random[720957][1][1]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800019}
	tTheSpiritItem_Random[720957][1][2]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800050}
	tTheSpiritItem_Random[720957][1][3]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800070}
	tTheSpiritItem_Random[720957][1][4]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800071}
	tTheSpiritItem_Random[720957][1][5]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800140}
	tTheSpiritItem_Random[720957][1][6]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800141}
	tTheSpiritItem_Random[720957][1][7]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800200}
	tTheSpiritItem_Random[720957][1][8]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800230}
	tTheSpiritItem_Random[720957][1][9]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800252}
	tTheSpiritItem_Random[720957][1][10] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800414}
	tTheSpiritItem_Random[720957][1][11] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800520}
	tTheSpiritItem_Random[720957][1][12] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800521}
	tTheSpiritItem_Random[720957][1][13] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800615}
	tTheSpiritItem_Random[720957][1][14] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800617}
	tTheSpiritItem_Random[720957][1][15] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800723}
	tTheSpiritItem_Random[720957][1][16] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800724}
	tTheSpiritItem_Random[720957][1][17] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800801}
	tTheSpiritItem_Random[720957][1][18] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800802}
	tTheSpiritItem_Random[720957][1][19] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800806}
	tTheSpiritItem_Random[720957][1][20] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800807}
	tTheSpiritItem_Random[720957][1][21] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800915}
	tTheSpiritItem_Random[720957][1][22] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 801001}
	tTheSpiritItem_Random[720957][1][23] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 801101}
	tTheSpiritItem_Random[720957][1][24] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 820052}
	tTheSpiritItem_Random[720957][1][25] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 820053}
	tTheSpiritItem_Random[720957][1][26] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 821027}
	tTheSpiritItem_Random[720957][1][27] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 821029}
	tTheSpiritItem_Random[720957][1][28] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 822056}
	tTheSpiritItem_Random[720957][1][29] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 822057}
	tTheSpiritItem_Random[720957][1][30] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 823041}
	tTheSpiritItem_Random[720957][1][31] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 823043}
	tTheSpiritItem_Random[720957][1][32] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 823045}
	tTheSpiritItem_Random[720957][1][33] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 824016}
	tTheSpiritItem_Random[720957][1][34] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 801204}
	tTheSpiritItem_Random[720957][1][35] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 801206}
	tTheSpiritItem_Random[720957][1][36] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 801302}
	tTheSpiritItem_Random[720957][1][37] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 827002}
	tTheSpiritItem_Random[720957][1][38] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 827003}
	-- 四阶神魂
	tTheSpiritItem_Random[720957][2] = {}
	tTheSpiritItem_Random[720957][2]["ItemChanceSum"] = 21000
	tTheSpiritItem_Random[720957][2][1]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800014}
	tTheSpiritItem_Random[720957][2][2]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800015}
	tTheSpiritItem_Random[720957][2][3]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800016}
	tTheSpiritItem_Random[720957][2][4]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800214}
	tTheSpiritItem_Random[720957][2][5]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800253}
	tTheSpiritItem_Random[720957][2][6]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800512}
	tTheSpiritItem_Random[720957][2][7]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800613}
	tTheSpiritItem_Random[720957][2][8]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800720}
	tTheSpiritItem_Random[720957][2][9]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800803}
	tTheSpiritItem_Random[720957][2][10] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800808}
	tTheSpiritItem_Random[720957][2][11] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800913}
	tTheSpiritItem_Random[720957][2][12] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 801002}
	tTheSpiritItem_Random[720957][2][13] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 801102}
	tTheSpiritItem_Random[720957][2][14] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 823052}
	tTheSpiritItem_Random[720957][2][15] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 823053}
	tTheSpiritItem_Random[720957][2][16] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 823054}
	tTheSpiritItem_Random[720957][2][17] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 801208}
	tTheSpiritItem_Random[720957][2][18] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 801210}
	tTheSpiritItem_Random[720957][2][19] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 801304}
	tTheSpiritItem_Random[720957][2][20] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 827004}
	tTheSpiritItem_Random[720957][2][21] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 827005}	
	-- 五阶神魂
	tTheSpiritItem_Random[720957][3] = {}
	tTheSpiritItem_Random[720957][3]["ItemChanceSum"] = 5000
	tTheSpiritItem_Random[720957][3][1] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800415}
	tTheSpiritItem_Random[720957][3][2] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 820056}
	tTheSpiritItem_Random[720957][3][3] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 820057}
	tTheSpiritItem_Random[720957][3][4] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 821028}
	tTheSpiritItem_Random[720957][3][5] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 821030}
	-- 六阶神魂
	tTheSpiritItem_Random[720957][4] = {}
	tTheSpiritItem_Random[720957][4]["ItemChanceSum"] = 31000
	tTheSpiritItem_Random[720957][4][1]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800000}
	tTheSpiritItem_Random[720957][4][2]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800017}
	tTheSpiritItem_Random[720957][4][3]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800110}
	tTheSpiritItem_Random[720957][4][4]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800254}
	tTheSpiritItem_Random[720957][4][5]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800320}
	tTheSpiritItem_Random[720957][4][6]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800421}
	tTheSpiritItem_Random[720957][4][7]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800513}
	tTheSpiritItem_Random[720957][4][8]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800616}
	tTheSpiritItem_Random[720957][4][9]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800722}
	tTheSpiritItem_Random[720957][4][10] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800804}
	tTheSpiritItem_Random[720957][4][11] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800809}
	tTheSpiritItem_Random[720957][4][12] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800916}
	tTheSpiritItem_Random[720957][4][13] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 801003}
	tTheSpiritItem_Random[720957][4][14] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 801103}
	tTheSpiritItem_Random[720957][4][15] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 820071}
	tTheSpiritItem_Random[720957][4][16] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 820072}
	tTheSpiritItem_Random[720957][4][17] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 821031}
	tTheSpiritItem_Random[720957][4][18] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 821032}
	tTheSpiritItem_Random[720957][4][19] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 822053}
	tTheSpiritItem_Random[720957][4][20] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 822055}
	tTheSpiritItem_Random[720957][4][21] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 823055}
	tTheSpiritItem_Random[720957][4][22] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 823056}
	tTheSpiritItem_Random[720957][4][23] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 823057}
	tTheSpiritItem_Random[720957][4][24] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 824017}
	tTheSpiritItem_Random[720957][4][25] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 801212}
	tTheSpiritItem_Random[720957][4][26] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 801214}
	tTheSpiritItem_Random[720957][4][27] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 801306}
	tTheSpiritItem_Random[720957][4][28] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 827006}
	tTheSpiritItem_Random[720957][4][29] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 827007}
	tTheSpiritItem_Random[720957][4][30] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 827008}
	tTheSpiritItem_Random[720957][4][31] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 827009}	

	-- 精致神魂礼包	3000107
	tTheSpiritItem_Random[3000107] = {}
	-- 三阶神魂
	tTheSpiritItem_Random[3000107][1] = {}
	tTheSpiritItem_Random[3000107][1]["ItemChanceSum"] = 38000
	tTheSpiritItem_Random[3000107][1][1]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800019}
	tTheSpiritItem_Random[3000107][1][2]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800050}
	tTheSpiritItem_Random[3000107][1][3]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800070}
	tTheSpiritItem_Random[3000107][1][4]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800071}
	tTheSpiritItem_Random[3000107][1][5]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800140}
	tTheSpiritItem_Random[3000107][1][6]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800141}
	tTheSpiritItem_Random[3000107][1][7]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800200}
	tTheSpiritItem_Random[3000107][1][8]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800230}
	tTheSpiritItem_Random[3000107][1][9]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800414}
	tTheSpiritItem_Random[3000107][1][10] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800520}
	tTheSpiritItem_Random[3000107][1][11] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800521}
	tTheSpiritItem_Random[3000107][1][12] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800615}
	tTheSpiritItem_Random[3000107][1][13] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800617}
	tTheSpiritItem_Random[3000107][1][14] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800723}
	tTheSpiritItem_Random[3000107][1][15] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800724}
	tTheSpiritItem_Random[3000107][1][16] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800801}
	tTheSpiritItem_Random[3000107][1][17] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800802}
	tTheSpiritItem_Random[3000107][1][18] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800806}
	tTheSpiritItem_Random[3000107][1][19] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800807}
	tTheSpiritItem_Random[3000107][1][20] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800915}
	tTheSpiritItem_Random[3000107][1][21] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 801001}
	tTheSpiritItem_Random[3000107][1][22] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 801101}
	tTheSpiritItem_Random[3000107][1][23] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 820052}
	tTheSpiritItem_Random[3000107][1][24] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 820053}
	tTheSpiritItem_Random[3000107][1][25] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 822056}
	tTheSpiritItem_Random[3000107][1][26] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 822057}
	tTheSpiritItem_Random[3000107][1][27] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 823041}
	tTheSpiritItem_Random[3000107][1][28] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 823043}
	tTheSpiritItem_Random[3000107][1][29] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 823045}
	tTheSpiritItem_Random[3000107][1][30] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800252}
	tTheSpiritItem_Random[3000107][1][31] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 821027}
	tTheSpiritItem_Random[3000107][1][32] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 821029}
	tTheSpiritItem_Random[3000107][1][33] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 824016}
	tTheSpiritItem_Random[3000107][1][34] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 801204}
	tTheSpiritItem_Random[3000107][1][35] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 801206}
	tTheSpiritItem_Random[3000107][1][36] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 801302}
	tTheSpiritItem_Random[3000107][1][37] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 827002}
	tTheSpiritItem_Random[3000107][1][38] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 827003}
	-- 四阶神魂
	tTheSpiritItem_Random[3000107][2] = {}
	tTheSpiritItem_Random[3000107][2]["ItemChanceSum"] = 19000
	tTheSpiritItem_Random[3000107][2][1]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800014}
	tTheSpiritItem_Random[3000107][2][2]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800015}
	tTheSpiritItem_Random[3000107][2][3]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800016}
	tTheSpiritItem_Random[3000107][2][4]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800214}
	tTheSpiritItem_Random[3000107][2][5]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800512}
	tTheSpiritItem_Random[3000107][2][6]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800613}
	tTheSpiritItem_Random[3000107][2][7]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800720}
	tTheSpiritItem_Random[3000107][2][8]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800803}
	tTheSpiritItem_Random[3000107][2][9]  = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 800808}
	tTheSpiritItem_Random[3000107][2][10] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 801002}
	tTheSpiritItem_Random[3000107][2][11] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 801102}
	tTheSpiritItem_Random[3000107][2][12] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 823052}
	tTheSpiritItem_Random[3000107][2][13] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 823053}
	tTheSpiritItem_Random[3000107][2][14] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 823054}
	tTheSpiritItem_Random[3000107][2][15] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 801208}
	tTheSpiritItem_Random[3000107][2][16] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 801210}
	tTheSpiritItem_Random[3000107][2][17] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 801304}
	tTheSpiritItem_Random[3000107][2][18] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 827004}
	tTheSpiritItem_Random[3000107][2][19] = {["RandomItemChanceType"] = 2,["ItemChance"] = 1000,["Item_1"] = 827005}

----------------------------------------逻辑部分----------------------------------
-- 物品使用
function TheSpiritItem_Use(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end

	if not Item_DelItem(nItemId) then
		return
	end
	
	-- 确定大几率（确定几阶神魂）
	local nFlag_1,tAward_1 = Probabil_RandomAward(tTheSpiritItem_Random1st,nItemId) 
	local tReward_1 = tAward_1[1]["tAward"][1]
	local nItemType = tReward_1["Item_1"]
	
	-- 随机给该阶神魂
	local nFlag_2,tAward_2 = Probabil_RandomAward(tTheSpiritItem_Random[nItemId],nItemType)
	local tReward_2 = tAward_2[1]["tAward"][1]
	local nRewardItemId = tReward_2["Item_1"]
	local sItemName = Get_ItemtypeName(nRewardItemId)
	Item_AddItem(nRewardItemId)
	Sys_SaveActionTaskLog(string.format(sTheSpiritItem_Log,nItemId,nRewardItemId))
	User_TalkChannel2005(string.format(tTheSpiritItem_Text["Reward"],sItemName))
end

----------------------------------------物品配置----------------------------------
--珍贵神魂礼包
tItem[720957] = tItem[720957] or {}
tItem[720957]["Function"] = function(nItemId,sItemName)
	TheSpiritItem_Use(nItemId)
end

--精致神魂礼包
tItem[3000107] = tItem[3000107] or {}
tItem[3000107]["Function"] = function(nItemId,sItemName)
	TheSpiritItem_Use(nItemId)
end