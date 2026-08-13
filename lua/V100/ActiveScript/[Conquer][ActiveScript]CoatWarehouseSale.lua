-------------------------------------------------------------------------------------------------------------
--Name:		151225[简体征服][活动脚本]外套仓库版本促销活动
--Creator:		林辉山
--Created:		2015/12/25
-------------------------------------------------------------------------------------------------------------
--前缀
--CoatWarehouse_Sale_

--掩码说明
--141 13  素衣阁首抽判断 0 表示未首抽，1表示已首抽
--141 14 锦衣阁首抽判断 0 表示未首抽，1表示已首抽

--141 15 素衣阁 三次抽取缓存1 /单次抽取缓存
--141 16 素衣阁 三次抽取缓存2
--141 17 素衣阁 三次抽取缓存3

--141 18 锦衣阁 三次抽取缓存1 /单次抽取缓存
--141 19 锦衣阁 三次抽取缓存2
--141 20 锦衣阁 三次抽取缓存3

--141 21 素衣阁 一键拆解掩码 0 表示不屏蔽二次确认 1表示屏蔽二次确认
--141 22 锦衣阁 一键拆解掩码 0 表示不屏蔽二次确认 1表示屏蔽二次确认
--141 23 深海寻宝获得岫山玉掩码
--141 24 背包信
--141 63  特制岫山玉礼包 骑马积分商店产出的 一天只能开一次控制掩码
--141 64  特制岫山玉礼包 竞技场积分商店产出的 一天只能开一次控制掩码


--143 36 钱币兑换记录 含1表示使用金币兑换了，含2表示使用银币兑换了，含4表示使用铜币兑换

-------------------------------------------------------------------------------------------------------------
local tCoatWarehouse_Sale_Stc = {}
	tCoatWarehouse_Sale_Stc["EventType"] = 141
	
	tCoatWarehouse_Sale_Stc["DataType"] = {}
	tCoatWarehouse_Sale_Stc["DataType"][1] = 13
	tCoatWarehouse_Sale_Stc["DataType"][2] = 14
	tCoatWarehouse_Sale_Stc["DataType"][3] = 15
	tCoatWarehouse_Sale_Stc["DataType"][4] = 16
	tCoatWarehouse_Sale_Stc["DataType"][5] = 17
	tCoatWarehouse_Sale_Stc["DataType"][6] = 18
	tCoatWarehouse_Sale_Stc["DataType"][7] = 19
	tCoatWarehouse_Sale_Stc["DataType"][8] = 20
	
	tCoatWarehouse_Sale_Stc["DataType"]["Copper"] = 23
	
	tCoatWarehouse_Sale_Stc["Event"] = {}
	tCoatWarehouse_Sale_Stc["Data"] = {}
	-- 新增打宝区掉落（指的是古神灵境）：每天限制20个岫山玉碎片，概率3%掉落
	tCoatWarehouse_Sale_Stc["Event"][1] = 177
	tCoatWarehouse_Sale_Stc["Data"][1] = 38
	-- 跨服任务功勋礼包：一天限制一个岫山玉；
	tCoatWarehouse_Sale_Stc["Event"][2] = 177
	tCoatWarehouse_Sale_Stc["Data"][2] = 43
	-- 单人排位赛竞技场礼包：赢四场获得一个岫山玉；
	tCoatWarehouse_Sale_Stc["Event"][3] = 177
	tCoatWarehouse_Sale_Stc["Data"][3] = 44
	-- 组队排位赛竞技场礼包：赢四场获得一个岫山玉；
	tCoatWarehouse_Sale_Stc["Event"][4] = 177
	tCoatWarehouse_Sale_Stc["Data"][4] = 45
	
	tCoatWarehouse_Sale_Stc["NewSerEvent"] = 143
	tCoatWarehouse_Sale_Stc["NewSerType"] = 36
	
 tCoatWarehouse_Sale_Const = {}


	tCoatWarehouse_Sale_Const["ItemId"] = {}
	--深海寻宝的铜币
	tCoatWarehouse_Sale_Const["ItemId"]["Copper"] = 711611
	--岫山玉
	tCoatWarehouse_Sale_Const["ItemId"]["XiuJade"] = 3008221
	--散花绫
	tCoatWarehouse_Sale_Const["ItemId"]["MetaFlower"] = 3008227
	--天蚕锦
	tCoatWarehouse_Sale_Const["ItemId"]["Silkworm"] = 3008228
	--千年血玉碎片
	tCoatWarehouse_Sale_Const["ItemId"]["BooldJadePiece"] = 3008226
	--千年血玉
	tCoatWarehouse_Sale_Const["ItemId"]["BooldJade"] = 3008225
	--昆仑玉
	tCoatWarehouse_Sale_Const["ItemId"]["WhiteJade"] = 3008223
	
	tCoatWarehouse_Sale_Const["BeginSpaceNum"] = 44
	tCoatWarehouse_Sale_Const["EndSpaceNum"] = 10
	tCoatWarehouse_Sale_Const["ExraSpaceNum"] = 43
	
	--新服活动标示
	tCoatWarehouse_Sale_Const["GlobalAc"] = 51131
	
	--npc对应的物品id
	tCoatWarehouse_Sale_Const["NPCToItem"] = {}
	tCoatWarehouse_Sale_Const["NPCToItem"][18996] = 3008221
	tCoatWarehouse_Sale_Const["NPCToItem"][18997] = 3008223
	
	--npc对应单次缓存掩码
	tCoatWarehouse_Sale_Const["NPCToSingleCache"] = {}
	tCoatWarehouse_Sale_Const["NPCToSingleCache"][18996] = 15
	tCoatWarehouse_Sale_Const["NPCToSingleCache"][18997] = 18
	
	--npc对应三次缓存掩码
	tCoatWarehouse_Sale_Const["NPCToTripleCache"] = {}
	tCoatWarehouse_Sale_Const["NPCToTripleCache"][18996] = {15,16,17}
	tCoatWarehouse_Sale_Const["NPCToTripleCache"][18997] = {18,19,20}
	
	--npc对应单次首抽掩码
	tCoatWarehouse_Sale_Const["NPCToFirstDraw"] = {}
	tCoatWarehouse_Sale_Const["NPCToFirstDraw"][18996] = 13
	tCoatWarehouse_Sale_Const["NPCToFirstDraw"][18997] = 14
	
	--npc对应一键拆解掩码
	tCoatWarehouse_Sale_Const["NpcToOneKeySplit"] = {}
	tCoatWarehouse_Sale_Const["NpcToOneKeySplit"][18996] = 21
	tCoatWarehouse_Sale_Const["NpcToOneKeySplit"][18997] = 22
	
	--特制岫山玉礼包对应的掩码
	tCoatWarehouse_Sale_Const["XiuJadePack"] = {}
	tCoatWarehouse_Sale_Const["XiuJadePack"][3008610] = 63
	tCoatWarehouse_Sale_Const["XiuJadePack"][3008611] = 64
	
	--5星外套合成需要
	tCoatWarehouse_Sale_Const["FiveStarToCoatNum"] = 30
	
	
	tCoatWarehouse_Sale_Const["BeforeActivityTime"] = tActivityTime["CoatWarehouse_Sale"]["BeforeTime"]
	tCoatWarehouse_Sale_Const["ActivityTime"] = tActivityTime["CoatWarehouse_Sale"]["ActivityTime"]
	
	
	tCoatWarehouse_Sale_Const["BpLetterAddExp"] = 30
	
	--3星
	tCoatWarehouse_Sale_Const["ThreeStar"] = 3
	
	tCoatWarehouse_Sale_Const["Mete"] = 0
	tCoatWarehouse_Sale_Const["Level"] = 80
	
	
	tCoatWarehouse_Sale_Const["AllReceiveBag"] = {}
	tCoatWarehouse_Sale_Const["AllReceiveBag"][18996] = 3
	tCoatWarehouse_Sale_Const["AllReceiveBag"][18997] = 6
	
	tCoatWarehouse_Sale_Const["OneReceiveBag"] = {}
	tCoatWarehouse_Sale_Const["OneReceiveBag"][18996] = 1
	tCoatWarehouse_Sale_Const["OneReceiveBag"][18997] = 2
	
	--市场地图
	tCoatWarehouse_Sale_Const["Maket"] = 1036
	
	--NPC首抽对应的星级
	tCoatWarehouse_Sale_Const["NPCToStar"] = {}
	tCoatWarehouse_Sale_Const["NPCToStar"][18996] = 2
	tCoatWarehouse_Sale_Const["NPCToStar"][18997] = 3
	
	--npc对于的天石抽取价格
	tCoatWarehouse_Sale_Const["NpcToEmoney"] = {}
	tCoatWarehouse_Sale_Const["NpcToEmoney"][18996] = 27
	tCoatWarehouse_Sale_Const["NpcToEmoney"][18997] = 198
	
	tCoatWarehouse_Sale_Const["NpcToTriEmoney"] = {}
	tCoatWarehouse_Sale_Const["NpcToTriEmoney"][18996] = 81
	tCoatWarehouse_Sale_Const["NpcToTriEmoney"][18997] = 588
	
	--不可叠加物品
	tCoatWarehouse_Sale_Const["ItemNotAcc"] = {}
	tCoatWarehouse_Sale_Const["ItemNotAcc"][3008221] = 1
	tCoatWarehouse_Sale_Const["ItemNotAcc"][3008223] = 1
	
	
	tCoatWarehouse_Sale_Const["NewSerAward"] = {}
	tCoatWarehouse_Sale_Const["NewSerAward"][711609] = {}
	tCoatWarehouse_Sale_Const["NewSerAward"][711609]["Exp"] = 300
	tCoatWarehouse_Sale_Const["NewSerAward"][711609]["Item1"] = {3002926,"0 3"}
	tCoatWarehouse_Sale_Const["NewSerAward"][711609]["Item2"] = {3008221,"0 3"}
	
	tCoatWarehouse_Sale_Const["NewSerAward"][711610] = {}
	tCoatWarehouse_Sale_Const["NewSerAward"][711610]["Exp"] = 200
	tCoatWarehouse_Sale_Const["NewSerAward"][711610]["Item1"] = {3002926,"0 2"}
	tCoatWarehouse_Sale_Const["NewSerAward"][711610]["Item2"] = {3008221,"0 2"}
	
	tCoatWarehouse_Sale_Const["NewSerAward"][711611] = {}
	tCoatWarehouse_Sale_Const["NewSerAward"][711611]["Exp"] = 100
	tCoatWarehouse_Sale_Const["NewSerAward"][711611]["Item1"] = {3002926,"0 1"}
	tCoatWarehouse_Sale_Const["NewSerAward"][711611]["Item2"] = {3008221,"0 1"}
	
	tCoatWarehouse_Sale_Const["NewSevTime"] = {"","0 3","0 3","0 9"}
	
	tCoatWarehouse_Sale_Const["ItemNorAttr"] = "0 0 3 0 0 0 0 1"
	
	tCoatWarehouse_Sale_Const["Effect"] = {}
	tCoatWarehouse_Sale_Const["Effect"]["Obj"] = "self"
	--普通外套阁抽奖
	tCoatWarehouse_Sale_Const["Effect"]["Draw"] = {}
	tCoatWarehouse_Sale_Const["Effect"]["Draw"][18996] = "CircleUp"
	tCoatWarehouse_Sale_Const["Effect"]["Draw"][18997] = "zf2-e280"
	
	--玩家在普通外套阁抽到昆仑玉/3星外套
	tCoatWarehouse_Sale_Const["Effect"]["NorDrawSp"] = "accession"
	--制衣光效
	tCoatWarehouse_Sale_Const["Effect"]["Make"] = "born"
	--拆解外套光效
	tCoatWarehouse_Sale_Const["Effect"]["Split"] = "zf2-e123"
	--领取奖励播放光效
	tCoatWarehouse_Sale_Const["Effect"]["Receive"] = "zf2-e128"
	
	tCoatWarehouse_Sale_Const["Effect"]["ExchangeXiu"] = "fam_exp"
	
	tCoatWarehouse_Sale_Const["Effect"]["OpenXiuJadePack"] = "born"
	
	--使用千年血玉兑换时播放光效
	tCoatWarehouse_Sale_Const["Effect"]["For5Star"] = "warrior-s"
	--玩家合成千年血玉/岫山玉/昆仑玉
	tCoatWarehouse_Sale_Const["Effect"][3008222] = "eidolon"
	tCoatWarehouse_Sale_Const["Effect"][3008224] = "eidolon"
	tCoatWarehouse_Sale_Const["Effect"][3008226] = "eidolon"
	--玩家成功制作外套图纸
	tCoatWarehouse_Sale_Const["Effect"][3008230] = "born"
	tCoatWarehouse_Sale_Const["Effect"][3008232] = "born"
	tCoatWarehouse_Sale_Const["Effect"][3008254] = "born"
	tCoatWarehouse_Sale_Const["Effect"][3008256] = "born"
	tCoatWarehouse_Sale_Const["Effect"][3008258] = "born"
	tCoatWarehouse_Sale_Const["Effect"][3008260] = "born"
	tCoatWarehouse_Sale_Const["Effect"][3008262] = "born"
	tCoatWarehouse_Sale_Const["Effect"][3008264] = "born"
	tCoatWarehouse_Sale_Const["Effect"][3008266] = "born"
	tCoatWarehouse_Sale_Const["Effect"][3008268] = "born"
	tCoatWarehouse_Sale_Const["Effect"][3008270] = "born"
	tCoatWarehouse_Sale_Const["Effect"][3008323] = "born"
	
	
	tCoatWarehouse_Sale_Const["NpcInfo"] = {}
	--南宫阁主
	tCoatWarehouse_Sale_Const["NpcInfo"]["Nangong"] = {}
	tCoatWarehouse_Sale_Const["NpcInfo"]["Nangong"]["NpcId"] = 18994
	tCoatWarehouse_Sale_Const["NpcInfo"]["Nangong"]["MapId"] = 1002
	tCoatWarehouse_Sale_Const["NpcInfo"]["Nangong"]["Cellx"] = 374
	tCoatWarehouse_Sale_Const["NpcInfo"]["Nangong"]["Celly"] = 448
	tCoatWarehouse_Sale_Const["NpGiftNpcInfo"] = {}
	tCoatWarehouse_Sale_Const["NpGiftNpcInfo"]["Nangong"] = {}
	tCoatWarehouse_Sale_Const["NpGiftNpcInfo"]["Nangong"]["MapId"] = 1036
	tCoatWarehouse_Sale_Const["NpGiftNpcInfo"]["Nangong"]["Cellx"] = 247
	tCoatWarehouse_Sale_Const["NpGiftNpcInfo"]["Nangong"]["Celly"] = 166
	
	tCoatWarehouse_Sale_Const["NpcInfo"]["NorBox"] = {}
	tCoatWarehouse_Sale_Const["NpcInfo"]["NorBox"]["NpcId"] = 18996
	
	--基础概率
	tCoatWarehouse_Sale_Const["BaseProb"] = 10000
	
		--可以传送的地图id
	tCoatWarehouse_Sale_Const["MapCanTran"] = {}
	--双龙城/清风原
	tCoatWarehouse_Sale_Const["MapCanTran"][1] = 1002
	--云门关
	tCoatWarehouse_Sale_Const["MapCanTran"][2] = 1000
	--市场
	tCoatWarehouse_Sale_Const["MapCanTran"][3] = 1036
	--枫溪林
	tCoatWarehouse_Sale_Const["MapCanTran"][4] = 1011
	--芦花荡
	tCoatWarehouse_Sale_Const["MapCanTran"][5] = 1015
	--绝情谷
	tCoatWarehouse_Sale_Const["MapCanTran"][6] = 1020
	
	--传送到南宫阁主旁边
	tCoatWarehouse_Sale_Const["MapCanTran"]["MapId"] = 1002
	tCoatWarehouse_Sale_Const["MapCanTran"]["Cellx"] = 381
	tCoatWarehouse_Sale_Const["MapCanTran"]["Celly"] = 445
	tCoatWarehouse_Sale_Const["MapCanTran"]["Range"] = 3
	tCoatWarehouse_Sale_Const["MapCanTran"]["NpcId"] = 18994
	
	tCoatWarehouse_Sale_Const["ItemToNpcInfo"] = {}
	tCoatWarehouse_Sale_Const["ItemToNpcInfo"][3008221] = {}
	tCoatWarehouse_Sale_Const["ItemToNpcInfo"][3008221]["NpcId"] = 18996
	tCoatWarehouse_Sale_Const["ItemToNpcInfo"][3008221]["MapId"] = 1002
	tCoatWarehouse_Sale_Const["ItemToNpcInfo"][3008221]["Cellx"] = 372
	tCoatWarehouse_Sale_Const["ItemToNpcInfo"][3008221]["CellY"] = 443
	
	tCoatWarehouse_Sale_Const["ItemToNpcInfo"][3008223] = {}
	tCoatWarehouse_Sale_Const["ItemToNpcInfo"][3008223]["NpcId"] = 18997
	tCoatWarehouse_Sale_Const["ItemToNpcInfo"][3008223]["MapId"] = 1002
	tCoatWarehouse_Sale_Const["ItemToNpcInfo"][3008223]["Cellx"] = 376
	tCoatWarehouse_Sale_Const["ItemToNpcInfo"][3008223]["CellY"] = 443
	
	tCoatWarehouse_Sale_Const["ItemToNpcInfo"][3008225] = {}
	tCoatWarehouse_Sale_Const["ItemToNpcInfo"][3008225]["NpcId"] = 18998
	tCoatWarehouse_Sale_Const["ItemToNpcInfo"][3008225]["MapId"] = 1002
	tCoatWarehouse_Sale_Const["ItemToNpcInfo"][3008225]["Cellx"] = 380
	tCoatWarehouse_Sale_Const["ItemToNpcInfo"][3008225]["CellY"] = 443
	
	
--一件外套对应多件外套
--用于吕绣娘处
local tCoatWarehouse_Sale_CoatToCoat = {}
	
	--人物外套
	tCoatWarehouse_Sale_CoatToCoat[181345] = {181945,181845,181745,181645,181545,181445,181345}
	tCoatWarehouse_Sale_CoatToCoat[181365] = {181965,181865,181765,181665,181565,181465,181365}
	tCoatWarehouse_Sale_CoatToCoat[181375] = {181975,181875,181775,181675,181575,181475,181375}
	tCoatWarehouse_Sale_CoatToCoat[181385] = {181985,181885,181785,181685,181585,181485,181385}
	tCoatWarehouse_Sale_CoatToCoat[182305] = {182905,182805,182705,182605,182505,182405,182305}
	tCoatWarehouse_Sale_CoatToCoat[182315] = {182915,182815,182715,182615,182515,182415,182315}
	tCoatWarehouse_Sale_CoatToCoat[182325] = {182925,182825,182725,182625,182525,182425,182325}
	tCoatWarehouse_Sale_CoatToCoat[182385] = {182985,182885,182785,182685,182585,182485,182385}
	tCoatWarehouse_Sale_CoatToCoat[182365] = {182965,182865,182765,182665,182565,182465,182365}
	tCoatWarehouse_Sale_CoatToCoat[182345] = {182945,182845,182745,182645,182545,182445,182345}
	tCoatWarehouse_Sale_CoatToCoat[182335] = {182935,182835,182735,182635,182535,182435,182335}
	
	tCoatWarehouse_Sale_CoatToCoat[191305] = {191905,191805,191705,191605,191505,191305}
	tCoatWarehouse_Sale_CoatToCoat[181335] = {181935,181835,181735,181635,181535,181435,181335}
	tCoatWarehouse_Sale_CoatToCoat[184335] = {188365,184335}
	tCoatWarehouse_Sale_CoatToCoat[181355] = {181955,181855,181755,181655,181555,181455,181355}
	tCoatWarehouse_Sale_CoatToCoat[188335] = {187305,188335}
	tCoatWarehouse_Sale_CoatToCoat[188175] = {189075,188175}
	
	tCoatWarehouse_Sale_CoatToCoat[193515] = {193305,193505,193515}
	tCoatWarehouse_Sale_CoatToCoat[189055] = {189035,189045,189055}
	tCoatWarehouse_Sale_CoatToCoat[188905] = {188885,188905}
	tCoatWarehouse_Sale_CoatToCoat[187475] = {187875,187865,187855,187475}
	tCoatWarehouse_Sale_CoatToCoat[188575] = {188575,188955,188945,188935,188925}
	tCoatWarehouse_Sale_CoatToCoat[184345] = {184345,187355}
	tCoatWarehouse_Sale_CoatToCoat[184315] = {188225,184315}
	tCoatWarehouse_Sale_CoatToCoat[192395] = {192395,192310,192375}
	
	tCoatWarehouse_Sale_CoatToCoat[192465] = {192465,193225}
	tCoatWarehouse_Sale_CoatToCoat[193195] = {193195,192775,192765,192755,192745}
	tCoatWarehouse_Sale_CoatToCoat[192695] = {192935,192925,192695}
	tCoatWarehouse_Sale_CoatToCoat[192525] = {192435,192525}
	tCoatWarehouse_Sale_CoatToCoat[192311] = {188625,192311,192645}
	tCoatWarehouse_Sale_CoatToCoat[189085] = {189085,188395}
	
	tCoatWarehouse_Sale_CoatToCoat[193045] = {193045,193185}
	tCoatWarehouse_Sale_CoatToCoat[189065] = {189065,193275}
	
	tCoatWarehouse_Sale_CoatToCoat[195375] = {195375,192125}
	
	--骑宠外套
	
	tCoatWarehouse_Sale_CoatToCoat[200000] = {200000,200020}
	tCoatWarehouse_Sale_CoatToCoat[200443] = {200443,200427}
	tCoatWarehouse_Sale_CoatToCoat[200514] = {200516,200514}
	tCoatWarehouse_Sale_CoatToCoat[200528] = {200530,200529,200528}
	--这件外套未上活动
	-- tCoatWarehouse_Sale_CoatToCoat[200445] = {200445,200442}
	
	tCoatWarehouse_Sale_CoatToCoat[200480] = {200486,200485,200480,200479,200478,200477,200475}
	tCoatWarehouse_Sale_CoatToCoat[200449] = {200410,200449}
	
	tCoatWarehouse_Sale_CoatToCoat[200482] = {200482,200021,200022}
	
--碎片合成XX的信息
--NeedNum 需求的数量
--AwardItem 合成得到的物品
local tCoatWarehouse_Sale_ComposeInfo = {}
	--岫山玉碎片
	tCoatWarehouse_Sale_ComposeInfo[3008222] = {}
	tCoatWarehouse_Sale_ComposeInfo[3008222]["NeedNum"] = 10
	tCoatWarehouse_Sale_ComposeInfo[3008222]["AwardItem"] = 3008221
	
	--昆仑玉碎片
	tCoatWarehouse_Sale_ComposeInfo[3008224] = {}
	tCoatWarehouse_Sale_ComposeInfo[3008224]["NeedNum"] = 15
	tCoatWarehouse_Sale_ComposeInfo[3008224]["AwardItem"] = 3008223
	
	--千年血玉碎片
	tCoatWarehouse_Sale_ComposeInfo[3008226] = {}
	tCoatWarehouse_Sale_ComposeInfo[3008226]["NeedNum"] = 100
	tCoatWarehouse_Sale_ComposeInfo[3008226]["AwardItem"] = 3008225
	
	--暗黑魔龙制衣册残页
	tCoatWarehouse_Sale_ComposeInfo[3008230] = {}
	tCoatWarehouse_Sale_ComposeInfo[3008230]["NeedNum"] = 25
	tCoatWarehouse_Sale_ComposeInfo[3008230]["AwardItem"] = 3008229
	
	--GuideforWindWalk
	-- tCoatWarehouse_Sale_ComposeInfo[3008802] = {}
	-- tCoatWarehouse_Sale_ComposeInfo[3008802]["NeedNum"] = 25
	-- tCoatWarehouse_Sale_ComposeInfo[3008802]["AwardItem"] = 3008801
	
	
	--辉耀之刺制衣册残页
	tCoatWarehouse_Sale_ComposeInfo[3008232] = {}
	tCoatWarehouse_Sale_ComposeInfo[3008232]["NeedNum"] = 25
	tCoatWarehouse_Sale_ComposeInfo[3008232]["AwardItem"] = 3008231
	
	--冰雪奇缘制衣册残页
	tCoatWarehouse_Sale_ComposeInfo[3008254] = {}
	tCoatWarehouse_Sale_ComposeInfo[3008254]["NeedNum"] = 25
	tCoatWarehouse_Sale_ComposeInfo[3008254]["AwardItem"] = 3008253
	
	--马上有人民币制衣册残页
	tCoatWarehouse_Sale_ComposeInfo[3008256] = {}
	tCoatWarehouse_Sale_ComposeInfo[3008256]["NeedNum"] = 25
	tCoatWarehouse_Sale_ComposeInfo[3008256]["AwardItem"] = 3008255
	
	--至善神羚制衣册残页
	tCoatWarehouse_Sale_ComposeInfo[3008258] = {}
	tCoatWarehouse_Sale_ComposeInfo[3008258]["NeedNum"] = 25
	tCoatWarehouse_Sale_ComposeInfo[3008258]["AwardItem"] = 3008257
	
	--辉耀星辰之蝎制衣册残页
	tCoatWarehouse_Sale_ComposeInfo[3008260] = {}
	tCoatWarehouse_Sale_ComposeInfo[3008260]["NeedNum"] = 25
	tCoatWarehouse_Sale_ComposeInfo[3008260]["AwardItem"] = 3008259
	
	--暗黑赤炎魔龙制衣册残页
	tCoatWarehouse_Sale_ComposeInfo[3008262] = {}
	tCoatWarehouse_Sale_ComposeInfo[3008262]["NeedNum"] = 25
	tCoatWarehouse_Sale_ComposeInfo[3008262]["AwardItem"] = 3008261
	
	--七节尾蛮荒兽制衣册残页
	tCoatWarehouse_Sale_ComposeInfo[3008264] = {}
	tCoatWarehouse_Sale_ComposeInfo[3008264]["NeedNum"] = 25
	tCoatWarehouse_Sale_ComposeInfo[3008264]["AwardItem"] = 3008263
	
	--四星时装制衣册残页
	tCoatWarehouse_Sale_ComposeInfo[3008266] = {}
	tCoatWarehouse_Sale_ComposeInfo[3008266]["NeedNum"] = 20
	tCoatWarehouse_Sale_ComposeInfo[3008266]["AwardItem"] = 3008265
	
	--四星骑宠制衣册残页
	tCoatWarehouse_Sale_ComposeInfo[3008268] = {}
	tCoatWarehouse_Sale_ComposeInfo[3008268]["NeedNum"] = 20
	tCoatWarehouse_Sale_ComposeInfo[3008268]["AwardItem"] = 3008267
	
	--三星时装制衣册残页
	tCoatWarehouse_Sale_ComposeInfo[3008270] = {}
	tCoatWarehouse_Sale_ComposeInfo[3008270]["NeedNum"] = 15
	tCoatWarehouse_Sale_ComposeInfo[3008270]["AwardItem"] = 3008269
	
	--三星骑宠制衣册残页
	tCoatWarehouse_Sale_ComposeInfo[3008323] = {}
	tCoatWarehouse_Sale_ComposeInfo[3008323]["NeedNum"] = 15
	tCoatWarehouse_Sale_ComposeInfo[3008323]["AwardItem"] = 3008322
	
--五星外套兑换所需千年血玉
local tCoatWarehouse_Sale_5StarExchangeInfo = {}
	-- tCoatWarehouse_Sale_5StarExchangeInfo[189065] = 6
	tCoatWarehouse_Sale_5StarExchangeInfo[188915] = 6
	tCoatWarehouse_Sale_5StarExchangeInfo[193445] = 9
	tCoatWarehouse_Sale_5StarExchangeInfo[192605] = 6
	tCoatWarehouse_Sale_5StarExchangeInfo[189065] = 20
	tCoatWarehouse_Sale_5StarExchangeInfo[193565] = 20
	tCoatWarehouse_Sale_5StarExchangeInfo[193525] = 15
	tCoatWarehouse_Sale_5StarExchangeInfo[189675] = 15
	tCoatWarehouse_Sale_5StarExchangeInfo[195755] = 30
	tCoatWarehouse_Sale_5StarExchangeInfo[195365] = 30
	tCoatWarehouse_Sale_5StarExchangeInfo[195765] = 30
	
	tCoatWarehouse_Sale_5StarExchangeInfo[200494] = 15
	tCoatWarehouse_Sale_5StarExchangeInfo[200524] = 15
	tCoatWarehouse_Sale_5StarExchangeInfo[200517] = 10
	tCoatWarehouse_Sale_5StarExchangeInfo[200531] = 10
	tCoatWarehouse_Sale_5StarExchangeInfo[200540] = 10
	tCoatWarehouse_Sale_5StarExchangeInfo[200559] = 15
	tCoatWarehouse_Sale_5StarExchangeInfo[200560] = 15
	tCoatWarehouse_Sale_5StarExchangeInfo[200544] = 15
	tCoatWarehouse_Sale_5StarExchangeInfo[200592] = 10
	tCoatWarehouse_Sale_5StarExchangeInfo[200639] = 40
	tCoatWarehouse_Sale_5StarExchangeInfo[200640] = 40
	tCoatWarehouse_Sale_5StarExchangeInfo[200623] = 35
	tCoatWarehouse_Sale_5StarExchangeInfo[200624] = 30
	
--五星外套手册信息
--索引：手册id
--AwardItemId : 获得的外套ID
--NeedFlowerNum : 需要的散花绫数量
--nNeedSilkwormNum ：需要的天蚕锦数量
local tCoatWarehouse_Sale_FiveStarCoatInfo = {}
	--《暗黑魔龙制衣册》
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008229] = {}
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008229]["AwardItemId"] = 189065
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008229]["NeedFlowerNum"] = 388
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008229]["NeedSilkwormNum "] = 158
	
	--《辉耀之刺制衣册》
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008231] = {}
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008231]["AwardItemId"] = 188915
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008231]["NeedFlowerNum"] = 388
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008231]["NeedSilkwormNum "] = 158
	
	--《冰雪奇缘制衣册》
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008253] = {}
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008253]["AwardItemId"] = 193445
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008253]["NeedFlowerNum"] = 488
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008253]["NeedSilkwormNum "] = 198
	
	--《御风逍遥制衣册》
	-- tCoatWarehouse_Sale_FiveStarCoatInfo[3008801] = {}
	-- tCoatWarehouse_Sale_FiveStarCoatInfo[3008801]["AwardItemId"] = 192605
	-- tCoatWarehouse_Sale_FiveStarCoatInfo[3008801]["NeedFlowerNum"] = 388
	-- tCoatWarehouse_Sale_FiveStarCoatInfo[3008801]["NeedSilkwormNum "] = 158
	
	
	--《马上有人民币制衣册》
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008255] = {}
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008255]["AwardItemId"] = 200494
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008255]["NeedFlowerNum"] = 688
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008255]["NeedSilkwormNum "] = 288
	
	--《至善神羚制衣册》
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008257] = {}
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008257]["AwardItemId"] = 200524
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008257]["NeedFlowerNum"] = 688
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008257]["NeedSilkwormNum "] = 288
	
	--《辉耀星辰之蝎制衣册》
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008259] = {}
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008259]["AwardItemId"] = 200517
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008259]["NeedFlowerNum"] = 588
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008259]["NeedSilkwormNum "] = 258
	
	--《暗黑赤炎魔龙制衣册》
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008261] = {}
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008261]["AwardItemId"] = 200531
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008261]["NeedFlowerNum"] = 588
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008261]["NeedSilkwormNum "] = 258
	
	--《七节尾蛮荒兽制衣册》
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008263] = {}
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008263]["AwardItemId"] = 200540
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008263]["NeedFlowerNum"] = 588
	tCoatWarehouse_Sale_FiveStarCoatInfo[3008263]["NeedSilkwormNum "] = 258
	
	
	
	
--三星、四星时装合成所需要的材料数量
local tCoatWarehouse_Sale_StarCoatInfo = {}
	--需要的低级材料（散花绫） 的数量
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"] = {}
	
	--需要的高级材料（天蚕锦） 的数量
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"] = {}
	
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][194300] = 75
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][193515] = 90
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][192555] = 80
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][192345] = 75
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][189095] = 80
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][189055] = 80
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][188905] = 80
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][184355] = 80
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][184365] = 80
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][187475] = 85
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][184385] = 85
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][183485] = 75
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][188575] = 80
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][192685] = 80
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][192675] = 80
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][192665] = 80
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][192655] = 80
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][192300] = 75
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][189105] = 90
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][188285] = 90
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][183385] = 80
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][183395] = 80
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][183345] = 80
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][184345] = 80
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][184315] = 80
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][183465] = 80
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][192395] = 80
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][187605] = 80
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][192575] = 90
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][192565] = 90
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200010] = 100
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200108] = 100
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200009] = 100
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200107] = 100
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200407] = 120
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200413] = 135
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200420] = 135
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200403] = 120
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200411] = 120
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200414] = 120
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200415] = 135
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200418] = 120
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200562] = 120
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200438] = 120
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200444] = 140
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200443] = 120
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200476] = 125
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200491] = 125
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200492] = 125
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200503] = 135
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200514] = 135
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200528] = 130
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200421] = 130
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200499] = 135
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200481] = 130
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200417] = 130
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200490] = 130
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200426] = 130
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200474] = 130
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200487] = 130
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200488] = 130
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200433] = 130
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200459] = 130
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200412] = 130
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200493] = 135
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][187325] = 188
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][189085] = 198
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][193115] = 198
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][193195] = 198
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][195375] = 188
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][192615] = 198
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][192695] = 188
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200495] = 288
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200500] = 388
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][192605] = 388
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][188915] = 388
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][193445] = 488
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200494] = 688
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200517] = 588
	tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][200531] = 588
	
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][194300] = 25
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][193515] = 30
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][192555] = 27
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][192345] = 25
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][189095] = 30
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][189055] = 27
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][188905] = 25
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][184355] = 24
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][184365] = 27
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][187475] = 28
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][184385] = 28
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][183485] = 25
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][188575] = 28
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][192685] = 25
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][192675] = 25
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][192665] = 25
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][192655] = 25
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][192300] = 25
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][189105] = 30
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][188285] = 30
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][183385] = 25
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][183395] = 25
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][183345] = 25
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][184345] = 25
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][184315] = 25
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][183465] = 25
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][192395] = 25
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][187605] = 27
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][192575] = 30
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][192565] = 30
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200010] = 30
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200108] = 30
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200009] = 32
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200107] = 32
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200407] = 40
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200413] = 40
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200420] = 40
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200403] = 40
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200411] = 42
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200414] = 42
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200415] = 42
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200418] = 42
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200562] = 45
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200438] = 40
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200444] = 45
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200443] = 40
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200476] = 43
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200491] = 45
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200492] = 45
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200503] = 40
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200514] = 40
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200528] = 40
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200421] = 40
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200499] = 45
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200481] = 40
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200417] = 40
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200490] = 40
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200426] = 40
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200474] = 40
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200487] = 40
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200488] = 40
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200433] = 40
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200459] = 40
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200412] = 40
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200493] = 45
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][187325] = 66
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][189085] = 76
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][193115] = 76
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][193195] = 76
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][195375] = 66
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][192615] = 76
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][192695] = 66
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200495] = 128
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200500] = 158
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][192605] = 158
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][188915] = 158
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][193445] = 198
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200494] = 288
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200517] = 258
	tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][200531] = 258

	
	
	
--拆解获得物品表
local tCoatWarehouse_Sale_SplitCoatA = {}
	--时效外套获得
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"] = {}
	--1天时效外套一星获得
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][1] = {}
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][1][1] = {}
	--1天时效外套一星获得物品列表
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][1][1]["Item"] = {3008227}
	--1天时效外套一星获得物品属性列表
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][1][1]["Attr"] = {"0 1"}
	--1天时效外套一星获得物品数量列表
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][1][1]["Num"] = {1}
	--1天时效外套一星获得物品所需背包空间
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][1][1]["Space"] = 1
	
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][1][2]  = {}
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][1][2]["Item"] = {3008227}
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][1][2]["Attr"] = {"0 2"}
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][1][2]["Num"] = {2}
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][1][2]["Space"] = 1
	
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][1][3]  = {}
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][1][3]["Item"] = {3008227}
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][1][3]["Attr"] = {"0 3"}
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][1][3]["Num"] = {3}
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][1][3]["Space"] = 1
	
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][1][4]  = {}
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][1][4]["Item"] = {3008227}
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][1][4]["Attr"] = {"0 5"}
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][1][4]["Num"] = {5}
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][1][4]["Space"] = 1
	
	--7天时效外套
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][2] = {}
	
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][2][3]  = {}
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][2][3]["Item"] = {3008227,3008228}
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][2][3]["Attr"] = {"0 3","0 1"}
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][2][3]["Num"] = {3,1}
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][2][3]["Space"] = 2
	
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][2][4]  = {}
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][2][4]["Item"] = {3008227,3008228}
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][2][4]["Attr"] = {"0 5","0 2"}
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][2][4]["Num"] = {5,2}
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][2][4]["Space"] = 2
	
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][2][5]  = {}
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][2][5]["Item"] = {3008227,3008228}
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][2][5]["Attr"] = {"0 10","0 3"}
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][2][5]["Num"] = {10,3}
	tCoatWarehouse_Sale_SplitCoatA["SaveTime"][2][5]["Space"] = 2
	
	
	--永久外套获得
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"] = {}
	--永久时装外套
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1] = {}
	--1星永久时装外套
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][1]  = {}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][1]["Item"] = {3008227}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][1]["Attr"] = {"0 10"}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][1]["Num"] = {10}
	--额外概率获得
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][1]["Random"] = {}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][1]["Random"]["ItemChance"] = 1200
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][1]["Random"]["Item_1"] = 3008223
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][1]["Space"] = 2
	
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][2]  = {}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][2]["Item"] = {3008227,3008228}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][2]["Attr"] = {"0 20","0 3"}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][2]["Num"] = {20,3}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][2]["Random"] = {}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][2]["Random"]["ItemChance"] = 1650
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][2]["Random"]["Item_1"] = 3008223
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][2]["Space"] = 2
	
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][3]  = {}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][3]["Item"] = {3008227,3008228}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][3]["Attr"] = {"0 30","0 10"}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][3]["Num"] = {30,10}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][3]["Random"] = {}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][3]["Random"]["ItemChance"] = 2100
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][3]["Random"]["Item_1"] = 3008225
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][3]["Space"] = 2
	
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][4]  = {}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][4]["Item"] = {3008227,3008228,3008225}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][4]["Attr"] = {"0 50","0 20","0 1"}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][4]["Num"] = {50,20,1}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][4]["Space"] = 3
	
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][5]  = {}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][5]["Item"] = {3008227,3008228,3008225}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][5]["Attr"] = {"0 100","0 30","0 2"}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][5]["Num"] = {100,30,2}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][1][5]["Space"] = 3
	
	-- 修改拆解4星和5星外套拆解必出千年血玉的机制，改为50%出，剩下50%出3个岫山玉
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTimeRandom"] = {}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTimeRandom"][1] = {}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTimeRandom"][1][4]  = {}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTimeRandom"][1][4]["Item"] = {3008227,3008228,3008221}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTimeRandom"][1][4]["Attr"] = {"0 50","0 20","0 3"}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTimeRandom"][1][4]["Num"] = {50,20,3}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTimeRandom"][1][4]["Space"] = 3
	
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTimeRandom"][1][5]  = {}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTimeRandom"][1][5]["Item"] = {3008227,3008228,3008221}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTimeRandom"][1][5]["Attr"] = {"0 100","0 30","0 6"}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTimeRandom"][1][5]["Num"] = {100,30,6}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTimeRandom"][1][5]["Space"] = 3
	
	--永久骑宠外套
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2] = {}
	--1星永久骑宠外套
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][1]  = {}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][1]["Item"] = {3008227}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][1]["Attr"] = {"0 15"}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][1]["Num"] = {15}
	--额外概率获得
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][1]["Random"] = {}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][1]["Random"]["ItemChance"] = 1800
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][1]["Random"]["Item_1"] = 3008223
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][1]["Space"] = 2
	
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][2]  = {}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][2]["Item"] = {3008227,3008228}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][2]["Attr"] = {"0 30","0 5"}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][2]["Num"] = {30,5}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][2]["Random"] = {}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][2]["Random"]["ItemChance"] = 2300
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][2]["Random"]["Item_1"] = 3008223
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][2]["Space"] = 2
	
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][3]  = {}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][3]["Item"] = {3008227,3008228}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][3]["Attr"] = {"0 45","0 15"}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][3]["Num"] = {45,15}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][3]["Random"] = {}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][3]["Random"]["ItemChance"] = 2800
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][3]["Random"]["Item_1"] = 3008225
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][3]["Space"] = 2
	
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][4]  = {}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][4]["Item"] = {3008227,3008228,3008225}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][4]["Attr"] = {"0 75","0 30","0 2"}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][4]["Num"] = {75,30,2}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][4]["Space"] = 3
	
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][5]  = {}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][5]["Item"] = {3008227,3008228,3008225}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][5]["Attr"] = {"0 150","0 45","0 3"}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][5]["Num"] = {150,45,3}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][2][5]["Space"] = 3
	
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTimeRandom"][2] = {}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTimeRandom"][2][4]  = {}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTimeRandom"][2][4]["Item"] = {3008227,3008228,3008221}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTimeRandom"][2][4]["Attr"] = {"0 75","0 30","0 3"}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTimeRandom"][2][4]["Num"] = {75,30,3}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTimeRandom"][2][4]["Space"] = 3
	
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTimeRandom"][2][5]  = {}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTimeRandom"][2][5]["Item"] = {3008227,3008228,3008221}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTimeRandom"][2][5]["Attr"] = {"0 150","0 45","0 6"}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTimeRandom"][2][5]["Num"] = {150,45,6}
	tCoatWarehouse_Sale_SplitCoatA["NotSaveTimeRandom"][2][5]["Space"] = 3
	
	
------------------------------------------------------------概率部分---------------------------------------------------


--素衣阁
local tCoatWarehouse_Sale_Prob = {}
	tCoatWarehouse_Sale_Prob[18996] = {}
	tCoatWarehouse_Sale_Prob[18996][1] = {}
	tCoatWarehouse_Sale_Prob[18996][1]["ItemChanceSum"] = 10000

	tCoatWarehouse_Sale_Prob[18996][1][1] = {}
	tCoatWarehouse_Sale_Prob[18996][1][1]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][1]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][1]["Item_1"] = 181345
	tCoatWarehouse_Sale_Prob[18996][1][1]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][1]["Index"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][1]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][1]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][1]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][2] = {}
	tCoatWarehouse_Sale_Prob[18996][1][2]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][2]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][2]["Item_1"] = 181365
	tCoatWarehouse_Sale_Prob[18996][1][2]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][2]["Index"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][2]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][2]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][2]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][3] = {}
	tCoatWarehouse_Sale_Prob[18996][1][3]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][3]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][3]["Item_1"] = 181375
	tCoatWarehouse_Sale_Prob[18996][1][3]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][3]["Index"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][3]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][3]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][3]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][4] = {}
	tCoatWarehouse_Sale_Prob[18996][1][4]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][4]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][4]["Item_1"] = 181385
	tCoatWarehouse_Sale_Prob[18996][1][4]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][4]["Index"] = 4
	tCoatWarehouse_Sale_Prob[18996][1][4]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][4]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][4]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][5] = {}
	tCoatWarehouse_Sale_Prob[18996][1][5]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][5]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][5]["Item_1"] = 181395
	tCoatWarehouse_Sale_Prob[18996][1][5]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][5]["Index"] = 5
	tCoatWarehouse_Sale_Prob[18996][1][5]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][5]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][5]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][6] = {}
	tCoatWarehouse_Sale_Prob[18996][1][6]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][6]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][6]["Item_1"] = 182305
	tCoatWarehouse_Sale_Prob[18996][1][6]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][6]["Index"] = 6
	tCoatWarehouse_Sale_Prob[18996][1][6]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][6]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][6]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][7] = {}
	tCoatWarehouse_Sale_Prob[18996][1][7]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][7]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][7]["Item_1"] = 182315
	tCoatWarehouse_Sale_Prob[18996][1][7]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][7]["Index"] = 7
	tCoatWarehouse_Sale_Prob[18996][1][7]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][7]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][7]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][8] = {}
	tCoatWarehouse_Sale_Prob[18996][1][8]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][8]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][8]["Item_1"] = 182325
	tCoatWarehouse_Sale_Prob[18996][1][8]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][8]["Index"] = 8
	tCoatWarehouse_Sale_Prob[18996][1][8]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][8]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][8]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][9] = {}
	tCoatWarehouse_Sale_Prob[18996][1][9]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][9]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][9]["Item_1"] = 183305
	tCoatWarehouse_Sale_Prob[18996][1][9]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][9]["Index"] = 9
	tCoatWarehouse_Sale_Prob[18996][1][9]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][9]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][9]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][10] = {}
	tCoatWarehouse_Sale_Prob[18996][1][10]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][10]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][10]["Item_1"] = 182385
	tCoatWarehouse_Sale_Prob[18996][1][10]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][10]["Index"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][10]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][10]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][10]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][11] = {}
	tCoatWarehouse_Sale_Prob[18996][1][11]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][11]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][11]["Item_1"] = 182375
	tCoatWarehouse_Sale_Prob[18996][1][11]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][11]["Index"] = 11
	tCoatWarehouse_Sale_Prob[18996][1][11]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][11]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][11]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][12] = {}
	tCoatWarehouse_Sale_Prob[18996][1][12]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][12]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][12]["Item_1"] = 182365
	tCoatWarehouse_Sale_Prob[18996][1][12]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][12]["Index"] = 12
	tCoatWarehouse_Sale_Prob[18996][1][12]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][12]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][12]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][13] = {}
	tCoatWarehouse_Sale_Prob[18996][1][13]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][13]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][13]["Item_1"] = 182355
	tCoatWarehouse_Sale_Prob[18996][1][13]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][13]["Index"] = 13
	tCoatWarehouse_Sale_Prob[18996][1][13]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][13]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][13]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][14] = {}
	tCoatWarehouse_Sale_Prob[18996][1][14]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][14]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][14]["Item_1"] = 182345
	tCoatWarehouse_Sale_Prob[18996][1][14]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][14]["Index"] = 14
	tCoatWarehouse_Sale_Prob[18996][1][14]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][14]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][14]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][15] = {}
	tCoatWarehouse_Sale_Prob[18996][1][15]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][15]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][15]["Item_1"] = 182335
	tCoatWarehouse_Sale_Prob[18996][1][15]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][15]["Index"] = 15
	tCoatWarehouse_Sale_Prob[18996][1][15]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][15]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][15]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][16] = {}
	tCoatWarehouse_Sale_Prob[18996][1][16]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][16]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][16]["Item_1"] = 181925
	tCoatWarehouse_Sale_Prob[18996][1][16]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][16]["Index"] = 16
	tCoatWarehouse_Sale_Prob[18996][1][16]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][16]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][16]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][17] = {}
	tCoatWarehouse_Sale_Prob[18996][1][17]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][17]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][17]["Item_1"] = 181825
	tCoatWarehouse_Sale_Prob[18996][1][17]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][17]["Index"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][17]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][17]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][17]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][18] = {}
	tCoatWarehouse_Sale_Prob[18996][1][18]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][18]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][18]["Item_1"] = 181325
	tCoatWarehouse_Sale_Prob[18996][1][18]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][18]["Index"] = 18
	tCoatWarehouse_Sale_Prob[18996][1][18]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][18]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][18]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][19] = {}
	tCoatWarehouse_Sale_Prob[18996][1][19]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][19]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][19]["Item_1"] = 181425
	tCoatWarehouse_Sale_Prob[18996][1][19]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][19]["Index"] = 19
	tCoatWarehouse_Sale_Prob[18996][1][19]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][19]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][19]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][20] = {}
	tCoatWarehouse_Sale_Prob[18996][1][20]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][20]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][20]["Item_1"] = 181525
	tCoatWarehouse_Sale_Prob[18996][1][20]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][20]["Index"] = 20
	tCoatWarehouse_Sale_Prob[18996][1][20]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][20]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][20]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][21] = {}
	tCoatWarehouse_Sale_Prob[18996][1][21]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][21]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][21]["Item_1"] = 181625
	tCoatWarehouse_Sale_Prob[18996][1][21]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][21]["Index"] = 21
	tCoatWarehouse_Sale_Prob[18996][1][21]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][21]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][21]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][22] = {}
	tCoatWarehouse_Sale_Prob[18996][1][22]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][22]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][22]["Item_1"] = 181725
	tCoatWarehouse_Sale_Prob[18996][1][22]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][22]["Index"] = 22
	tCoatWarehouse_Sale_Prob[18996][1][22]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][22]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][22]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][23] = {}
	tCoatWarehouse_Sale_Prob[18996][1][23]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][23]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][23]["Item_1"] = 181915
	tCoatWarehouse_Sale_Prob[18996][1][23]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][23]["Index"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][23]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][23]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][23]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][24] = {}
	tCoatWarehouse_Sale_Prob[18996][1][24]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][24]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][24]["Item_1"] = 181615
	tCoatWarehouse_Sale_Prob[18996][1][24]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][24]["Index"] = 24
	tCoatWarehouse_Sale_Prob[18996][1][24]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][24]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][24]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][25] = {}
	tCoatWarehouse_Sale_Prob[18996][1][25]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][25]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][25]["Item_1"] = 181315
	tCoatWarehouse_Sale_Prob[18996][1][25]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][25]["Index"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][25]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][25]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][25]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][26] = {}
	tCoatWarehouse_Sale_Prob[18996][1][26]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][26]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][26]["Item_1"] = 181415
	tCoatWarehouse_Sale_Prob[18996][1][26]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][26]["Index"] = 26
	tCoatWarehouse_Sale_Prob[18996][1][26]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][26]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][26]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][27] = {}
	tCoatWarehouse_Sale_Prob[18996][1][27]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][27]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][27]["Item_1"] = 181515
	tCoatWarehouse_Sale_Prob[18996][1][27]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][27]["Index"] = 27
	tCoatWarehouse_Sale_Prob[18996][1][27]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][27]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][27]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][28] = {}
	tCoatWarehouse_Sale_Prob[18996][1][28]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][28]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][28]["Item_1"] = 181715
	tCoatWarehouse_Sale_Prob[18996][1][28]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][28]["Index"] = 28
	tCoatWarehouse_Sale_Prob[18996][1][28]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][28]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][28]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][29] = {}
	tCoatWarehouse_Sale_Prob[18996][1][29]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][29]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][29]["Item_1"] = 181815
	tCoatWarehouse_Sale_Prob[18996][1][29]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][29]["Index"] = 29
	tCoatWarehouse_Sale_Prob[18996][1][29]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][29]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][29]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][30] = {}
	tCoatWarehouse_Sale_Prob[18996][1][30]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][30]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][30]["Item_1"] = 181905
	tCoatWarehouse_Sale_Prob[18996][1][30]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][30]["Index"] = 30
	tCoatWarehouse_Sale_Prob[18996][1][30]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][30]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][30]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][31] = {}
	tCoatWarehouse_Sale_Prob[18996][1][31]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][31]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][31]["Item_1"] = 181305
	tCoatWarehouse_Sale_Prob[18996][1][31]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][31]["Index"] = 31
	tCoatWarehouse_Sale_Prob[18996][1][31]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][31]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][31]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][32] = {}
	tCoatWarehouse_Sale_Prob[18996][1][32]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][32]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][32]["Item_1"] = 181405
	tCoatWarehouse_Sale_Prob[18996][1][32]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][32]["Index"] = 32
	tCoatWarehouse_Sale_Prob[18996][1][32]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][32]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][32]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][33] = {}
	tCoatWarehouse_Sale_Prob[18996][1][33]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][33]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][33]["Item_1"] = 181505
	tCoatWarehouse_Sale_Prob[18996][1][33]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][33]["Index"] = 33
	tCoatWarehouse_Sale_Prob[18996][1][33]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][33]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][33]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][34] = {}
	tCoatWarehouse_Sale_Prob[18996][1][34]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][34]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][34]["Item_1"] = 181605
	tCoatWarehouse_Sale_Prob[18996][1][34]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][34]["Index"] = 34
	tCoatWarehouse_Sale_Prob[18996][1][34]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][34]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][34]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][35] = {}
	tCoatWarehouse_Sale_Prob[18996][1][35]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][35]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][35]["Item_1"] = 181705
	tCoatWarehouse_Sale_Prob[18996][1][35]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][35]["Index"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][35]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][35]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][35]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][36] = {}
	tCoatWarehouse_Sale_Prob[18996][1][36]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][36]["ItemChance"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][36]["Item_1"] = 181805
	tCoatWarehouse_Sale_Prob[18996][1][36]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][36]["Index"] = 36
	tCoatWarehouse_Sale_Prob[18996][1][36]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][36]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][36]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][37] = {}
	tCoatWarehouse_Sale_Prob[18996][1][37]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][37]["ItemChance"] = 39
	tCoatWarehouse_Sale_Prob[18996][1][37]["Item_1"] = 200000
	tCoatWarehouse_Sale_Prob[18996][1][37]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][37]["Index"] = 37
	tCoatWarehouse_Sale_Prob[18996][1][37]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][37]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][37]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][38] = {}
	tCoatWarehouse_Sale_Prob[18996][1][38]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][38]["ItemChance"] = 39
	tCoatWarehouse_Sale_Prob[18996][1][38]["Item_1"] = 200001
	tCoatWarehouse_Sale_Prob[18996][1][38]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][38]["Index"] = 38
	tCoatWarehouse_Sale_Prob[18996][1][38]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][38]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][38]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][39] = {}
	tCoatWarehouse_Sale_Prob[18996][1][39]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][39]["ItemChance"] = 39
	tCoatWarehouse_Sale_Prob[18996][1][39]["Item_1"] = 200004
	tCoatWarehouse_Sale_Prob[18996][1][39]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][39]["Index"] = 39
	tCoatWarehouse_Sale_Prob[18996][1][39]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][39]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][39]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][40] = {}
	tCoatWarehouse_Sale_Prob[18996][1][40]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][40]["ItemChance"] = 39
	tCoatWarehouse_Sale_Prob[18996][1][40]["Item_1"] = 200006
	tCoatWarehouse_Sale_Prob[18996][1][40]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][40]["Index"] = 40
	tCoatWarehouse_Sale_Prob[18996][1][40]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][40]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][40]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][41] = {}
	tCoatWarehouse_Sale_Prob[18996][1][41]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][41]["ItemChance"] = 39
	tCoatWarehouse_Sale_Prob[18996][1][41]["Item_1"] = 200018
	tCoatWarehouse_Sale_Prob[18996][1][41]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][41]["Index"] = 41
	tCoatWarehouse_Sale_Prob[18996][1][41]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][41]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][41]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][42] = {}
	tCoatWarehouse_Sale_Prob[18996][1][42]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][42]["ItemChance"] = 39
	tCoatWarehouse_Sale_Prob[18996][1][42]["Item_1"] = 200019
	tCoatWarehouse_Sale_Prob[18996][1][42]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][42]["Index"] = 42
	tCoatWarehouse_Sale_Prob[18996][1][42]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][42]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][42]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][43] = {}
	tCoatWarehouse_Sale_Prob[18996][1][43]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][43]["ItemChance"] = 39
	tCoatWarehouse_Sale_Prob[18996][1][43]["Item_1"] = 200020
	tCoatWarehouse_Sale_Prob[18996][1][43]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][43]["Index"] = 43
	tCoatWarehouse_Sale_Prob[18996][1][43]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][43]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][43]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][44] = {}
	tCoatWarehouse_Sale_Prob[18996][1][44]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][44]["ItemChance"] = 39
	tCoatWarehouse_Sale_Prob[18996][1][44]["Item_1"] = 200015
	tCoatWarehouse_Sale_Prob[18996][1][44]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][44]["Index"] = 44
	tCoatWarehouse_Sale_Prob[18996][1][44]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][44]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][44]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][45] = {}
	tCoatWarehouse_Sale_Prob[18996][1][45]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][45]["ItemChance"] = 39
	tCoatWarehouse_Sale_Prob[18996][1][45]["Item_1"] = 200016
	tCoatWarehouse_Sale_Prob[18996][1][45]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][45]["Index"] = 45
	tCoatWarehouse_Sale_Prob[18996][1][45]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][45]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][45]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][46] = {}
	tCoatWarehouse_Sale_Prob[18996][1][46]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][46]["ItemChance"] = 39
	tCoatWarehouse_Sale_Prob[18996][1][46]["Item_1"] = 200125
	tCoatWarehouse_Sale_Prob[18996][1][46]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][46]["Index"] = 46
	tCoatWarehouse_Sale_Prob[18996][1][46]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][46]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][46]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][47] = {}
	tCoatWarehouse_Sale_Prob[18996][1][47]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][47]["ItemChance"] = 39
	tCoatWarehouse_Sale_Prob[18996][1][47]["Item_1"] = 200101
	tCoatWarehouse_Sale_Prob[18996][1][47]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][47]["Index"] = 47
	tCoatWarehouse_Sale_Prob[18996][1][47]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][47]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][47]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][48] = {}
	tCoatWarehouse_Sale_Prob[18996][1][48]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][48]["ItemChance"] = 39
	tCoatWarehouse_Sale_Prob[18996][1][48]["Item_1"] = 200102
	tCoatWarehouse_Sale_Prob[18996][1][48]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][48]["Index"] = 48
	tCoatWarehouse_Sale_Prob[18996][1][48]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][48]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][48]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][49] = {}
	tCoatWarehouse_Sale_Prob[18996][1][49]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][49]["ItemChance"] = 39
	tCoatWarehouse_Sale_Prob[18996][1][49]["Item_1"] = 200120
	tCoatWarehouse_Sale_Prob[18996][1][49]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][49]["Index"] = 49
	tCoatWarehouse_Sale_Prob[18996][1][49]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][49]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][49]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][50] = {}
	tCoatWarehouse_Sale_Prob[18996][1][50]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][50]["ItemChance"] = 39
	tCoatWarehouse_Sale_Prob[18996][1][50]["Item_1"] = 200121
	tCoatWarehouse_Sale_Prob[18996][1][50]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][50]["Index"] = 50
	tCoatWarehouse_Sale_Prob[18996][1][50]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][50]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][50]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][51] = {}
	tCoatWarehouse_Sale_Prob[18996][1][51]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][51]["ItemChance"] = 39
	tCoatWarehouse_Sale_Prob[18996][1][51]["Item_1"] = 200122
	tCoatWarehouse_Sale_Prob[18996][1][51]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][51]["Index"] = 51
	tCoatWarehouse_Sale_Prob[18996][1][51]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][51]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][51]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][52] = {}
	tCoatWarehouse_Sale_Prob[18996][1][52]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][52]["ItemChance"] = 39
	tCoatWarehouse_Sale_Prob[18996][1][52]["Item_1"] = 200123
	tCoatWarehouse_Sale_Prob[18996][1][52]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][52]["Index"] = 52
	tCoatWarehouse_Sale_Prob[18996][1][52]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][52]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][52]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][53] = {}
	tCoatWarehouse_Sale_Prob[18996][1][53]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][53]["ItemChance"] = 39
	tCoatWarehouse_Sale_Prob[18996][1][53]["Item_1"] = 200124
	tCoatWarehouse_Sale_Prob[18996][1][53]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][53]["Index"] = 53
	tCoatWarehouse_Sale_Prob[18996][1][53]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][53]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][53]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][54] = {}
	tCoatWarehouse_Sale_Prob[18996][1][54]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][54]["ItemChance"] = 39
	tCoatWarehouse_Sale_Prob[18996][1][54]["Item_1"] = 200125
	tCoatWarehouse_Sale_Prob[18996][1][54]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][54]["Index"] = 54
	tCoatWarehouse_Sale_Prob[18996][1][54]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][54]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][54]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][55] = {}
	tCoatWarehouse_Sale_Prob[18996][1][55]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][55]["ItemChance"] = 39
	tCoatWarehouse_Sale_Prob[18996][1][55]["Item_1"] = 200126
	tCoatWarehouse_Sale_Prob[18996][1][55]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][55]["Index"] = 55
	tCoatWarehouse_Sale_Prob[18996][1][55]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][55]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][55]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][56] = {}
	tCoatWarehouse_Sale_Prob[18996][1][56]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][56]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][56]["Item_1"] = 183475
	tCoatWarehouse_Sale_Prob[18996][1][56]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][56]["Index"] = 56
	tCoatWarehouse_Sale_Prob[18996][1][56]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][56]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][56]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][57] = {}
	tCoatWarehouse_Sale_Prob[18996][1][57]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][57]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][57]["Item_1"] = 183425
	tCoatWarehouse_Sale_Prob[18996][1][57]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][57]["Index"] = 57
	tCoatWarehouse_Sale_Prob[18996][1][57]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][57]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][57]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][58] = {}
	tCoatWarehouse_Sale_Prob[18996][1][58]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][58]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][58]["Item_1"] = 191405
	tCoatWarehouse_Sale_Prob[18996][1][58]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][58]["Index"] = 58
	tCoatWarehouse_Sale_Prob[18996][1][58]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][58]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][58]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][59] = {}
	tCoatWarehouse_Sale_Prob[18996][1][59]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][59]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][59]["Item_1"] = 191305
	tCoatWarehouse_Sale_Prob[18996][1][59]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][59]["Index"] = 59
	tCoatWarehouse_Sale_Prob[18996][1][59]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][59]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][59]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][60] = {}
	tCoatWarehouse_Sale_Prob[18996][1][60]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][60]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][60]["Item_1"] = 192185
	tCoatWarehouse_Sale_Prob[18996][1][60]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][60]["Index"] = 60
	tCoatWarehouse_Sale_Prob[18996][1][60]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][60]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][60]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][61] = {}
	tCoatWarehouse_Sale_Prob[18996][1][61]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][61]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][61]["Item_1"] = 181335
	tCoatWarehouse_Sale_Prob[18996][1][61]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][61]["Index"] = 61
	tCoatWarehouse_Sale_Prob[18996][1][61]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][61]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][61]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][62] = {}
	tCoatWarehouse_Sale_Prob[18996][1][62]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][62]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][62]["Item_1"] = 184335
	tCoatWarehouse_Sale_Prob[18996][1][62]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][62]["Index"] = 62
	tCoatWarehouse_Sale_Prob[18996][1][62]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][62]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][62]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][63] = {}
	tCoatWarehouse_Sale_Prob[18996][1][63]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][63]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][63]["Item_1"] = 181355
	tCoatWarehouse_Sale_Prob[18996][1][63]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][63]["Index"] = 63
	tCoatWarehouse_Sale_Prob[18996][1][63]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][63]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][63]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][64] = {}
	tCoatWarehouse_Sale_Prob[18996][1][64]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][64]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][64]["Item_1"] = 184375
	tCoatWarehouse_Sale_Prob[18996][1][64]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][64]["Index"] = 64
	tCoatWarehouse_Sale_Prob[18996][1][64]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][64]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][64]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][65] = {}
	tCoatWarehouse_Sale_Prob[18996][1][65]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][65]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][65]["Item_1"] = 184305
	tCoatWarehouse_Sale_Prob[18996][1][65]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][65]["Index"] = 65
	tCoatWarehouse_Sale_Prob[18996][1][65]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][65]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][65]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][66] = {}
	tCoatWarehouse_Sale_Prob[18996][1][66]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][66]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][66]["Item_1"] = 183365
	tCoatWarehouse_Sale_Prob[18996][1][66]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][66]["Index"] = 66
	tCoatWarehouse_Sale_Prob[18996][1][66]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][66]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][66]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][67] = {}
	tCoatWarehouse_Sale_Prob[18996][1][67]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][67]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][67]["Item_1"] = 188345
	tCoatWarehouse_Sale_Prob[18996][1][67]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][67]["Index"] = 67
	tCoatWarehouse_Sale_Prob[18996][1][67]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][67]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][67]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][68] = {}
	tCoatWarehouse_Sale_Prob[18996][1][68]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][68]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][68]["Item_1"] = 183375
	tCoatWarehouse_Sale_Prob[18996][1][68]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][68]["Index"] = 68
	tCoatWarehouse_Sale_Prob[18996][1][68]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][68]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][68]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][69] = {}
	tCoatWarehouse_Sale_Prob[18996][1][69]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][69]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][69]["Item_1"] = 183335
	tCoatWarehouse_Sale_Prob[18996][1][69]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][69]["Index"] = 69
	tCoatWarehouse_Sale_Prob[18996][1][69]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][69]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][69]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][70] = {}
	tCoatWarehouse_Sale_Prob[18996][1][70]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][70]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][70]["Item_1"] = 183325
	tCoatWarehouse_Sale_Prob[18996][1][70]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][70]["Index"] = 70
	tCoatWarehouse_Sale_Prob[18996][1][70]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][70]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][70]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][71] = {}
	tCoatWarehouse_Sale_Prob[18996][1][71]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][71]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][71]["Item_1"] = 183315
	tCoatWarehouse_Sale_Prob[18996][1][71]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][71]["Index"] = 71
	tCoatWarehouse_Sale_Prob[18996][1][71]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][71]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][71]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][72] = {}
	tCoatWarehouse_Sale_Prob[18996][1][72]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][72]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][72]["Item_1"] = 187455
	tCoatWarehouse_Sale_Prob[18996][1][72]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][72]["Index"] = 72
	tCoatWarehouse_Sale_Prob[18996][1][72]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][72]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][72]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][73] = {}
	tCoatWarehouse_Sale_Prob[18996][1][73]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][73]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][73]["Item_1"] = 187465
	tCoatWarehouse_Sale_Prob[18996][1][73]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][73]["Index"] = 73
	tCoatWarehouse_Sale_Prob[18996][1][73]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][73]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][73]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][74] = {}
	tCoatWarehouse_Sale_Prob[18996][1][74]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][74]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][74]["Item_1"] = 188335
	tCoatWarehouse_Sale_Prob[18996][1][74]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][74]["Index"] = 74
	tCoatWarehouse_Sale_Prob[18996][1][74]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][74]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][74]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][75] = {}
	tCoatWarehouse_Sale_Prob[18996][1][75]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][75]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][75]["Item_1"] = 187315
	tCoatWarehouse_Sale_Prob[18996][1][75]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][75]["Index"] = 75
	tCoatWarehouse_Sale_Prob[18996][1][75]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][75]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][75]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][76] = {}
	tCoatWarehouse_Sale_Prob[18996][1][76]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][76]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][76]["Item_1"] = 184325
	tCoatWarehouse_Sale_Prob[18996][1][76]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][76]["Index"] = 76
	tCoatWarehouse_Sale_Prob[18996][1][76]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][76]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][76]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][77] = {}
	tCoatWarehouse_Sale_Prob[18996][1][77]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][77]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][77]["Item_1"] = 193300
	tCoatWarehouse_Sale_Prob[18996][1][77]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][77]["Index"] = 77
	tCoatWarehouse_Sale_Prob[18996][1][77]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][77]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][77]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][78] = {}
	tCoatWarehouse_Sale_Prob[18996][1][78]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][78]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][78]["Item_1"] = 187505
	tCoatWarehouse_Sale_Prob[18996][1][78]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][78]["Index"] = 78
	tCoatWarehouse_Sale_Prob[18996][1][78]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][78]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][78]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][79] = {}
	tCoatWarehouse_Sale_Prob[18996][1][79]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][79]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][79]["Item_1"] = 193085
	tCoatWarehouse_Sale_Prob[18996][1][79]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][79]["Index"] = 79
	tCoatWarehouse_Sale_Prob[18996][1][79]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][79]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][79]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][80] = {}
	tCoatWarehouse_Sale_Prob[18996][1][80]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][80]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][80]["Item_1"] = 193075
	tCoatWarehouse_Sale_Prob[18996][1][80]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][80]["Index"] = 80
	tCoatWarehouse_Sale_Prob[18996][1][80]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][80]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][80]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][81] = {}
	tCoatWarehouse_Sale_Prob[18996][1][81]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][81]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][81]["Item_1"] = 193055
	tCoatWarehouse_Sale_Prob[18996][1][81]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][81]["Index"] = 81
	tCoatWarehouse_Sale_Prob[18996][1][81]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][81]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][81]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][82] = {}
	tCoatWarehouse_Sale_Prob[18996][1][82]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][82]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][82]["Item_1"] = 193105
	tCoatWarehouse_Sale_Prob[18996][1][82]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][82]["Index"] = 82
	tCoatWarehouse_Sale_Prob[18996][1][82]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][82]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][82]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][83] = {}
	tCoatWarehouse_Sale_Prob[18996][1][83]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][83]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18996][1][83]["Item_1"] = 193135
	tCoatWarehouse_Sale_Prob[18996][1][83]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][83]["Index"] = 83
	tCoatWarehouse_Sale_Prob[18996][1][83]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][83]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][83]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][84] = {}
	tCoatWarehouse_Sale_Prob[18996][1][84]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][84]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18996][1][84]["Item_1"] = 193065
	tCoatWarehouse_Sale_Prob[18996][1][84]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][84]["Index"] = 84
	tCoatWarehouse_Sale_Prob[18996][1][84]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][84]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][84]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][85] = {}
	tCoatWarehouse_Sale_Prob[18996][1][85]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][85]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18996][1][85]["Item_1"] = 193045
	tCoatWarehouse_Sale_Prob[18996][1][85]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][85]["Index"] = 85
	tCoatWarehouse_Sale_Prob[18996][1][85]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][85]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][85]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][86] = {}
	tCoatWarehouse_Sale_Prob[18996][1][86]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][86]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][86]["Item_1"] = 188665
	tCoatWarehouse_Sale_Prob[18996][1][86]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][86]["Index"] = 86
	tCoatWarehouse_Sale_Prob[18996][1][86]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][86]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][86]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][87] = {}
	tCoatWarehouse_Sale_Prob[18996][1][87]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][87]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][87]["Item_1"] = 188155
	tCoatWarehouse_Sale_Prob[18996][1][87]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][87]["Index"] = 87
	tCoatWarehouse_Sale_Prob[18996][1][87]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][87]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][87]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][88] = {}
	tCoatWarehouse_Sale_Prob[18996][1][88]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][88]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][88]["Item_1"] = 188165
	tCoatWarehouse_Sale_Prob[18996][1][88]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][88]["Index"] = 88
	tCoatWarehouse_Sale_Prob[18996][1][88]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][88]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][88]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][89] = {}
	tCoatWarehouse_Sale_Prob[18996][1][89]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][89]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][89]["Item_1"] = 188175
	tCoatWarehouse_Sale_Prob[18996][1][89]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][89]["Index"] = 89
	tCoatWarehouse_Sale_Prob[18996][1][89]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][89]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][89]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][90] = {}
	tCoatWarehouse_Sale_Prob[18996][1][90]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][90]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][90]["Item_1"] = 188255
	tCoatWarehouse_Sale_Prob[18996][1][90]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][90]["Index"] = 90
	tCoatWarehouse_Sale_Prob[18996][1][90]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][90]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][90]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][91] = {}
	tCoatWarehouse_Sale_Prob[18996][1][91]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][91]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][91]["Item_1"] = 188295
	tCoatWarehouse_Sale_Prob[18996][1][91]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][91]["Index"] = 91
	tCoatWarehouse_Sale_Prob[18996][1][91]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][91]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][91]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][92] = {}
	tCoatWarehouse_Sale_Prob[18996][1][92]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][92]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][92]["Item_1"] = 188545
	tCoatWarehouse_Sale_Prob[18996][1][92]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][92]["Index"] = 92
	tCoatWarehouse_Sale_Prob[18996][1][92]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][92]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][92]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][93] = {}
	tCoatWarehouse_Sale_Prob[18996][1][93]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][93]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18996][1][93]["Item_1"] = 193235
	tCoatWarehouse_Sale_Prob[18996][1][93]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][93]["Index"] = 93
	tCoatWarehouse_Sale_Prob[18996][1][93]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][93]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][93]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][94] = {}
	tCoatWarehouse_Sale_Prob[18996][1][94]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][94]["ItemChance"] = 33
	tCoatWarehouse_Sale_Prob[18996][1][94]["Item_1"] = 200002
	tCoatWarehouse_Sale_Prob[18996][1][94]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][94]["Index"] = 94
	tCoatWarehouse_Sale_Prob[18996][1][94]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][94]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][94]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][95] = {}
	tCoatWarehouse_Sale_Prob[18996][1][95]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][95]["ItemChance"] = 33
	tCoatWarehouse_Sale_Prob[18996][1][95]["Item_1"] = 200003
	tCoatWarehouse_Sale_Prob[18996][1][95]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][95]["Index"] = 95
	tCoatWarehouse_Sale_Prob[18996][1][95]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][95]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][95]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][96] = {}
	tCoatWarehouse_Sale_Prob[18996][1][96]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][96]["ItemChance"] = 33
	tCoatWarehouse_Sale_Prob[18996][1][96]["Item_1"] = 200005
	tCoatWarehouse_Sale_Prob[18996][1][96]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][96]["Index"] = 96
	tCoatWarehouse_Sale_Prob[18996][1][96]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][96]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][96]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][97] = {}
	tCoatWarehouse_Sale_Prob[18996][1][97]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][97]["ItemChance"] = 33
	tCoatWarehouse_Sale_Prob[18996][1][97]["Item_1"] = 200007
	tCoatWarehouse_Sale_Prob[18996][1][97]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][97]["Index"] = 97
	tCoatWarehouse_Sale_Prob[18996][1][97]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][97]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][97]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][98] = {}
	tCoatWarehouse_Sale_Prob[18996][1][98]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][98]["ItemChance"] = 33
	tCoatWarehouse_Sale_Prob[18996][1][98]["Item_1"] = 200008
	tCoatWarehouse_Sale_Prob[18996][1][98]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][98]["Index"] = 98
	tCoatWarehouse_Sale_Prob[18996][1][98]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][98]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][98]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][99] = {}
	tCoatWarehouse_Sale_Prob[18996][1][99]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][99]["ItemChance"] = 33
	tCoatWarehouse_Sale_Prob[18996][1][99]["Item_1"] = 200103
	tCoatWarehouse_Sale_Prob[18996][1][99]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][99]["Index"] = 99
	tCoatWarehouse_Sale_Prob[18996][1][99]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][99]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][99]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][100] = {}
	tCoatWarehouse_Sale_Prob[18996][1][100]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][100]["ItemChance"] = 33
	tCoatWarehouse_Sale_Prob[18996][1][100]["Item_1"] = 200104
	tCoatWarehouse_Sale_Prob[18996][1][100]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][100]["Index"] = 100
	tCoatWarehouse_Sale_Prob[18996][1][100]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][100]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][100]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][101] = {}
	tCoatWarehouse_Sale_Prob[18996][1][101]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][101]["ItemChance"] = 33
	tCoatWarehouse_Sale_Prob[18996][1][101]["Item_1"] = 200105
	tCoatWarehouse_Sale_Prob[18996][1][101]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][101]["Index"] = 101
	tCoatWarehouse_Sale_Prob[18996][1][101]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][101]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][101]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][102] = {}
	tCoatWarehouse_Sale_Prob[18996][1][102]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][102]["ItemChance"] = 33
	tCoatWarehouse_Sale_Prob[18996][1][102]["Item_1"] = 200106
	tCoatWarehouse_Sale_Prob[18996][1][102]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][102]["Index"] = 102
	tCoatWarehouse_Sale_Prob[18996][1][102]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][102]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][102]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][103] = {}
	tCoatWarehouse_Sale_Prob[18996][1][103]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][103]["ItemChance"] = 33
	tCoatWarehouse_Sale_Prob[18996][1][103]["Item_1"] = 200109
	tCoatWarehouse_Sale_Prob[18996][1][103]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][103]["Index"] = 103
	tCoatWarehouse_Sale_Prob[18996][1][103]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][103]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][103]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][104] = {}
	tCoatWarehouse_Sale_Prob[18996][1][104]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][104]["ItemChance"] = 33
	tCoatWarehouse_Sale_Prob[18996][1][104]["Item_1"] = 200538
	tCoatWarehouse_Sale_Prob[18996][1][104]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][104]["Index"] = 104
	tCoatWarehouse_Sale_Prob[18996][1][104]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][104]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][104]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][105] = {}
	tCoatWarehouse_Sale_Prob[18996][1][105]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][105]["ItemChance"] = 33
	tCoatWarehouse_Sale_Prob[18996][1][105]["Item_1"] = 200431
	tCoatWarehouse_Sale_Prob[18996][1][105]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][105]["Index"] = 105
	tCoatWarehouse_Sale_Prob[18996][1][105]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][105]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][105]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][106] = {}
	tCoatWarehouse_Sale_Prob[18996][1][106]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][106]["ItemChance"] = 33
	tCoatWarehouse_Sale_Prob[18996][1][106]["Item_1"] = 200012
	tCoatWarehouse_Sale_Prob[18996][1][106]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][106]["Index"] = 106
	tCoatWarehouse_Sale_Prob[18996][1][106]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][106]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][106]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][107] = {}
	tCoatWarehouse_Sale_Prob[18996][1][107]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][107]["ItemChance"] = 33
	tCoatWarehouse_Sale_Prob[18996][1][107]["Item_1"] = 200110
	tCoatWarehouse_Sale_Prob[18996][1][107]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][107]["Index"] = 107
	tCoatWarehouse_Sale_Prob[18996][1][107]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][107]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][107]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][108] = {}
	tCoatWarehouse_Sale_Prob[18996][1][108]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][108]["ItemChance"] = 33
	tCoatWarehouse_Sale_Prob[18996][1][108]["Item_1"] = 200323
	tCoatWarehouse_Sale_Prob[18996][1][108]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][108]["Index"] = 108
	tCoatWarehouse_Sale_Prob[18996][1][108]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][108]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][108]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][109] = {}
	tCoatWarehouse_Sale_Prob[18996][1][109]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][109]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][109]["Item_1"] = 194300
	tCoatWarehouse_Sale_Prob[18996][1][109]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][109]["Index"] = 109
	tCoatWarehouse_Sale_Prob[18996][1][109]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][109]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][109]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][110] = {}
	tCoatWarehouse_Sale_Prob[18996][1][110]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][110]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][110]["Item_1"] = 193515
	tCoatWarehouse_Sale_Prob[18996][1][110]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][110]["Index"] = 110
	tCoatWarehouse_Sale_Prob[18996][1][110]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][110]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][110]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][111] = {}
	tCoatWarehouse_Sale_Prob[18996][1][111]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][111]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][111]["Item_1"] = 192555
	tCoatWarehouse_Sale_Prob[18996][1][111]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][111]["Index"] = 111
	tCoatWarehouse_Sale_Prob[18996][1][111]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][111]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][111]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][112] = {}
	tCoatWarehouse_Sale_Prob[18996][1][112]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][112]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][112]["Item_1"] = 192345
	tCoatWarehouse_Sale_Prob[18996][1][112]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][112]["Index"] = 112
	tCoatWarehouse_Sale_Prob[18996][1][112]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][112]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][112]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][113] = {}
	tCoatWarehouse_Sale_Prob[18996][1][113]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][113]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][113]["Item_1"] = 189095
	tCoatWarehouse_Sale_Prob[18996][1][113]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][113]["Index"] = 113
	tCoatWarehouse_Sale_Prob[18996][1][113]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][113]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][113]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][114] = {}
	tCoatWarehouse_Sale_Prob[18996][1][114]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][114]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][114]["Item_1"] = 189055
	tCoatWarehouse_Sale_Prob[18996][1][114]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][114]["Index"] = 114
	tCoatWarehouse_Sale_Prob[18996][1][114]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][114]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][114]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][115] = {}
	tCoatWarehouse_Sale_Prob[18996][1][115]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][115]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][115]["Item_1"] = 188905
	tCoatWarehouse_Sale_Prob[18996][1][115]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][115]["Index"] = 115
	tCoatWarehouse_Sale_Prob[18996][1][115]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][115]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][115]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][116] = {}
	tCoatWarehouse_Sale_Prob[18996][1][116]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][116]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][116]["Item_1"] = 184355
	tCoatWarehouse_Sale_Prob[18996][1][116]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][116]["Index"] = 116
	tCoatWarehouse_Sale_Prob[18996][1][116]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][116]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][116]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][117] = {}
	tCoatWarehouse_Sale_Prob[18996][1][117]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][117]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][117]["Item_1"] = 184365
	tCoatWarehouse_Sale_Prob[18996][1][117]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][117]["Index"] = 117
	tCoatWarehouse_Sale_Prob[18996][1][117]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][117]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][117]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][118] = {}
	tCoatWarehouse_Sale_Prob[18996][1][118]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][118]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][118]["Item_1"] = 187475
	tCoatWarehouse_Sale_Prob[18996][1][118]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][118]["Index"] = 118
	tCoatWarehouse_Sale_Prob[18996][1][118]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][118]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][118]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][119] = {}
	tCoatWarehouse_Sale_Prob[18996][1][119]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][119]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][119]["Item_1"] = 184385
	tCoatWarehouse_Sale_Prob[18996][1][119]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][119]["Index"] = 119
	tCoatWarehouse_Sale_Prob[18996][1][119]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][119]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][119]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][120] = {}
	tCoatWarehouse_Sale_Prob[18996][1][120]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][120]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][120]["Item_1"] = 183485
	tCoatWarehouse_Sale_Prob[18996][1][120]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][120]["Index"] = 120
	tCoatWarehouse_Sale_Prob[18996][1][120]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][120]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][120]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][121] = {}
	tCoatWarehouse_Sale_Prob[18996][1][121]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][121]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][121]["Item_1"] = 188575
	tCoatWarehouse_Sale_Prob[18996][1][121]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][121]["Index"] = 121
	tCoatWarehouse_Sale_Prob[18996][1][121]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][121]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][121]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][122] = {}
	tCoatWarehouse_Sale_Prob[18996][1][122]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][122]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][122]["Item_1"] = 192685
	tCoatWarehouse_Sale_Prob[18996][1][122]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][122]["Index"] = 122
	tCoatWarehouse_Sale_Prob[18996][1][122]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][122]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][122]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][123] = {}
	tCoatWarehouse_Sale_Prob[18996][1][123]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][123]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][123]["Item_1"] = 192675
	tCoatWarehouse_Sale_Prob[18996][1][123]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][123]["Index"] = 123
	tCoatWarehouse_Sale_Prob[18996][1][123]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][123]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][123]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][124] = {}
	tCoatWarehouse_Sale_Prob[18996][1][124]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][124]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][124]["Item_1"] = 192665
	tCoatWarehouse_Sale_Prob[18996][1][124]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][124]["Index"] = 124
	tCoatWarehouse_Sale_Prob[18996][1][124]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][124]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][124]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][125] = {}
	tCoatWarehouse_Sale_Prob[18996][1][125]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][125]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][125]["Item_1"] = 192655
	tCoatWarehouse_Sale_Prob[18996][1][125]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][125]["Index"] = 125
	tCoatWarehouse_Sale_Prob[18996][1][125]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][125]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][125]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][126] = {}
	tCoatWarehouse_Sale_Prob[18996][1][126]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][126]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][126]["Item_1"] = 192300
	tCoatWarehouse_Sale_Prob[18996][1][126]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][126]["Index"] = 126
	tCoatWarehouse_Sale_Prob[18996][1][126]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][126]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][126]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][127] = {}
	tCoatWarehouse_Sale_Prob[18996][1][127]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][127]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][127]["Item_1"] = 189105
	tCoatWarehouse_Sale_Prob[18996][1][127]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][127]["Index"] = 127
	tCoatWarehouse_Sale_Prob[18996][1][127]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][127]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][127]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][128] = {}
	tCoatWarehouse_Sale_Prob[18996][1][128]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][128]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][128]["Item_1"] = 188285
	tCoatWarehouse_Sale_Prob[18996][1][128]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][128]["Index"] = 128
	tCoatWarehouse_Sale_Prob[18996][1][128]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][128]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][128]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][129] = {}
	tCoatWarehouse_Sale_Prob[18996][1][129]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][129]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][129]["Item_1"] = 183385
	tCoatWarehouse_Sale_Prob[18996][1][129]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][129]["Index"] = 129
	tCoatWarehouse_Sale_Prob[18996][1][129]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][129]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][129]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][130] = {}
	tCoatWarehouse_Sale_Prob[18996][1][130]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][130]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][130]["Item_1"] = 183395
	tCoatWarehouse_Sale_Prob[18996][1][130]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][130]["Index"] = 130
	tCoatWarehouse_Sale_Prob[18996][1][130]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][130]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][130]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][131] = {}
	tCoatWarehouse_Sale_Prob[18996][1][131]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][131]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][131]["Item_1"] = 183345
	tCoatWarehouse_Sale_Prob[18996][1][131]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][131]["Index"] = 131
	tCoatWarehouse_Sale_Prob[18996][1][131]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][131]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][131]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][132] = {}
	tCoatWarehouse_Sale_Prob[18996][1][132]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][132]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][132]["Item_1"] = 184345
	tCoatWarehouse_Sale_Prob[18996][1][132]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][132]["Index"] = 132
	tCoatWarehouse_Sale_Prob[18996][1][132]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][132]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][132]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][133] = {}
	tCoatWarehouse_Sale_Prob[18996][1][133]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][133]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][133]["Item_1"] = 184315
	tCoatWarehouse_Sale_Prob[18996][1][133]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][133]["Index"] = 133
	tCoatWarehouse_Sale_Prob[18996][1][133]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][133]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][133]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][134] = {}
	tCoatWarehouse_Sale_Prob[18996][1][134]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][134]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][134]["Item_1"] = 183465
	tCoatWarehouse_Sale_Prob[18996][1][134]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][134]["Index"] = 134
	tCoatWarehouse_Sale_Prob[18996][1][134]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][134]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][134]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][135] = {}
	tCoatWarehouse_Sale_Prob[18996][1][135]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][135]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][135]["Item_1"] = 192395
	tCoatWarehouse_Sale_Prob[18996][1][135]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][135]["Index"] = 135
	tCoatWarehouse_Sale_Prob[18996][1][135]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][135]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][135]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][136] = {}
	tCoatWarehouse_Sale_Prob[18996][1][136]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][136]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][136]["Item_1"] = 187605
	tCoatWarehouse_Sale_Prob[18996][1][136]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][136]["Index"] = 136
	tCoatWarehouse_Sale_Prob[18996][1][136]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][136]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][136]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][137] = {}
	tCoatWarehouse_Sale_Prob[18996][1][137]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][137]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18996][1][137]["Item_1"] = 189155
	tCoatWarehouse_Sale_Prob[18996][1][137]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][137]["Index"] = 137
	tCoatWarehouse_Sale_Prob[18996][1][137]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][137]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][137]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][138] = {}
	tCoatWarehouse_Sale_Prob[18996][1][138]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][138]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][138]["Item_1"] = 192575
	tCoatWarehouse_Sale_Prob[18996][1][138]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][138]["Index"] = 138
	tCoatWarehouse_Sale_Prob[18996][1][138]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][138]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][138]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][139] = {}
	tCoatWarehouse_Sale_Prob[18996][1][139]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][139]["ItemChance"] = 35
	tCoatWarehouse_Sale_Prob[18996][1][139]["Item_1"] = 192565
	tCoatWarehouse_Sale_Prob[18996][1][139]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][139]["Index"] = 139
	tCoatWarehouse_Sale_Prob[18996][1][139]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][139]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][139]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][140] = {}
	tCoatWarehouse_Sale_Prob[18996][1][140]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][140]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18996][1][140]["Item_1"] = 188085
	tCoatWarehouse_Sale_Prob[18996][1][140]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][140]["Index"] = 140
	tCoatWarehouse_Sale_Prob[18996][1][140]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][140]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][140]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][141] = {}
	tCoatWarehouse_Sale_Prob[18996][1][141]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][141]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18996][1][141]["Item_1"] = 193025
	tCoatWarehouse_Sale_Prob[18996][1][141]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][141]["Index"] = 141
	tCoatWarehouse_Sale_Prob[18996][1][141]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][141]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][141]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][142] = {}
	tCoatWarehouse_Sale_Prob[18996][1][142]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][142]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18996][1][142]["Item_1"] = 193035
	tCoatWarehouse_Sale_Prob[18996][1][142]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][142]["Index"] = 142
	tCoatWarehouse_Sale_Prob[18996][1][142]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][142]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][142]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][143] = {}
	tCoatWarehouse_Sale_Prob[18996][1][143]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][143]["ItemChance"] = 18
	tCoatWarehouse_Sale_Prob[18996][1][143]["Item_1"] = 200010
	tCoatWarehouse_Sale_Prob[18996][1][143]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][143]["Index"] = 143
	tCoatWarehouse_Sale_Prob[18996][1][143]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][143]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][143]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][144] = {}
	tCoatWarehouse_Sale_Prob[18996][1][144]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][144]["ItemChance"] = 18
	tCoatWarehouse_Sale_Prob[18996][1][144]["Item_1"] = 200108
	tCoatWarehouse_Sale_Prob[18996][1][144]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][144]["Index"] = 144
	tCoatWarehouse_Sale_Prob[18996][1][144]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][144]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][144]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][145] = {}
	tCoatWarehouse_Sale_Prob[18996][1][145]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][145]["ItemChance"] = 18
	tCoatWarehouse_Sale_Prob[18996][1][145]["Item_1"] = 200009
	tCoatWarehouse_Sale_Prob[18996][1][145]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][145]["Index"] = 145
	tCoatWarehouse_Sale_Prob[18996][1][145]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][145]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][145]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][146] = {}
	tCoatWarehouse_Sale_Prob[18996][1][146]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][146]["ItemChance"] = 18
	tCoatWarehouse_Sale_Prob[18996][1][146]["Item_1"] = 200107
	tCoatWarehouse_Sale_Prob[18996][1][146]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][146]["Index"] = 146
	tCoatWarehouse_Sale_Prob[18996][1][146]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][146]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][146]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][147] = {}
	tCoatWarehouse_Sale_Prob[18996][1][147]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][147]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][147]["Item_1"] = 200407
	tCoatWarehouse_Sale_Prob[18996][1][147]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][147]["Index"] = 147
	tCoatWarehouse_Sale_Prob[18996][1][147]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][147]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][147]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][148] = {}
	tCoatWarehouse_Sale_Prob[18996][1][148]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][148]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][148]["Item_1"] = 200413
	tCoatWarehouse_Sale_Prob[18996][1][148]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][148]["Index"] = 148
	tCoatWarehouse_Sale_Prob[18996][1][148]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][148]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][148]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][149] = {}
	tCoatWarehouse_Sale_Prob[18996][1][149]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][149]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][149]["Item_1"] = 200420
	tCoatWarehouse_Sale_Prob[18996][1][149]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][149]["Index"] = 149
	tCoatWarehouse_Sale_Prob[18996][1][149]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][149]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][149]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][150] = {}
	tCoatWarehouse_Sale_Prob[18996][1][150]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][150]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][150]["Item_1"] = 200403
	tCoatWarehouse_Sale_Prob[18996][1][150]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][150]["Index"] = 150
	tCoatWarehouse_Sale_Prob[18996][1][150]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][150]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][150]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][151] = {}
	tCoatWarehouse_Sale_Prob[18996][1][151]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][151]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][151]["Item_1"] = 200411
	tCoatWarehouse_Sale_Prob[18996][1][151]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][151]["Index"] = 151
	tCoatWarehouse_Sale_Prob[18996][1][151]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][151]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][151]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][152] = {}
	tCoatWarehouse_Sale_Prob[18996][1][152]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][152]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][152]["Item_1"] = 200414
	tCoatWarehouse_Sale_Prob[18996][1][152]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][152]["Index"] = 152
	tCoatWarehouse_Sale_Prob[18996][1][152]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][152]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][152]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][153] = {}
	tCoatWarehouse_Sale_Prob[18996][1][153]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][153]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][153]["Item_1"] = 200415
	tCoatWarehouse_Sale_Prob[18996][1][153]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][153]["Index"] = 153
	tCoatWarehouse_Sale_Prob[18996][1][153]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][153]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][153]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][154] = {}
	tCoatWarehouse_Sale_Prob[18996][1][154]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][154]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][154]["Item_1"] = 200418
	tCoatWarehouse_Sale_Prob[18996][1][154]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][154]["Index"] = 154
	tCoatWarehouse_Sale_Prob[18996][1][154]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][154]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][154]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][155] = {}
	tCoatWarehouse_Sale_Prob[18996][1][155]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][155]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][155]["Item_1"] = 200562
	tCoatWarehouse_Sale_Prob[18996][1][155]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][155]["Index"] = 155
	tCoatWarehouse_Sale_Prob[18996][1][155]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][155]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][155]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][156] = {}
	tCoatWarehouse_Sale_Prob[18996][1][156]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][156]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][156]["Item_1"] = 200438
	tCoatWarehouse_Sale_Prob[18996][1][156]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][156]["Index"] = 156
	tCoatWarehouse_Sale_Prob[18996][1][156]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][156]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][156]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][157] = {}
	tCoatWarehouse_Sale_Prob[18996][1][157]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][157]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][157]["Item_1"] = 200444
	tCoatWarehouse_Sale_Prob[18996][1][157]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][157]["Index"] = 157
	tCoatWarehouse_Sale_Prob[18996][1][157]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][157]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][157]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][158] = {}
	tCoatWarehouse_Sale_Prob[18996][1][158]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][158]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][158]["Item_1"] = 200443
	tCoatWarehouse_Sale_Prob[18996][1][158]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][158]["Index"] = 158
	tCoatWarehouse_Sale_Prob[18996][1][158]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][158]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][158]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][159] = {}
	tCoatWarehouse_Sale_Prob[18996][1][159]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][159]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][159]["Item_1"] = 200476
	tCoatWarehouse_Sale_Prob[18996][1][159]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][159]["Index"] = 159
	tCoatWarehouse_Sale_Prob[18996][1][159]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][159]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][159]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][160] = {}
	tCoatWarehouse_Sale_Prob[18996][1][160]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][160]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][160]["Item_1"] = 200491
	tCoatWarehouse_Sale_Prob[18996][1][160]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][160]["Index"] = 160
	tCoatWarehouse_Sale_Prob[18996][1][160]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][160]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][160]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][161] = {}
	tCoatWarehouse_Sale_Prob[18996][1][161]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][161]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][161]["Item_1"] = 200492
	tCoatWarehouse_Sale_Prob[18996][1][161]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][161]["Index"] = 161
	tCoatWarehouse_Sale_Prob[18996][1][161]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][161]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][161]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][162] = {}
	tCoatWarehouse_Sale_Prob[18996][1][162]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][162]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][162]["Item_1"] = 200503
	tCoatWarehouse_Sale_Prob[18996][1][162]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][162]["Index"] = 162
	tCoatWarehouse_Sale_Prob[18996][1][162]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][162]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][162]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][163] = {}
	tCoatWarehouse_Sale_Prob[18996][1][163]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][163]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][163]["Item_1"] = 200514
	tCoatWarehouse_Sale_Prob[18996][1][163]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][163]["Index"] = 163
	tCoatWarehouse_Sale_Prob[18996][1][163]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][163]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][163]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][164] = {}
	tCoatWarehouse_Sale_Prob[18996][1][164]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][164]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][164]["Item_1"] = 200528
	tCoatWarehouse_Sale_Prob[18996][1][164]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][164]["Index"] = 164
	tCoatWarehouse_Sale_Prob[18996][1][164]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][164]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][164]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][165] = {}
	tCoatWarehouse_Sale_Prob[18996][1][165]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][165]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][165]["Item_1"] = 200421
	tCoatWarehouse_Sale_Prob[18996][1][165]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][165]["Index"] = 165
	tCoatWarehouse_Sale_Prob[18996][1][165]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][165]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][165]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][166] = {}
	tCoatWarehouse_Sale_Prob[18996][1][166]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][166]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][166]["Item_1"] = 200499
	tCoatWarehouse_Sale_Prob[18996][1][166]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][166]["Index"] = 166
	tCoatWarehouse_Sale_Prob[18996][1][166]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][166]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][166]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][167] = {}
	tCoatWarehouse_Sale_Prob[18996][1][167]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][167]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][167]["Item_1"] = 200481
	tCoatWarehouse_Sale_Prob[18996][1][167]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][167]["Index"] = 167
	tCoatWarehouse_Sale_Prob[18996][1][167]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][167]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][167]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][168] = {}
	tCoatWarehouse_Sale_Prob[18996][1][168]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][168]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][168]["Item_1"] = 200417
	tCoatWarehouse_Sale_Prob[18996][1][168]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][168]["Index"] = 168
	tCoatWarehouse_Sale_Prob[18996][1][168]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][168]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][168]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][169] = {}
	tCoatWarehouse_Sale_Prob[18996][1][169]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][169]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][169]["Item_1"] = 200490
	tCoatWarehouse_Sale_Prob[18996][1][169]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][169]["Index"] = 169
	tCoatWarehouse_Sale_Prob[18996][1][169]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][169]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][169]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][170] = {}
	tCoatWarehouse_Sale_Prob[18996][1][170]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][170]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][170]["Item_1"] = 200426
	tCoatWarehouse_Sale_Prob[18996][1][170]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][170]["Index"] = 170
	tCoatWarehouse_Sale_Prob[18996][1][170]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][170]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][170]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][171] = {}
	tCoatWarehouse_Sale_Prob[18996][1][171]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][171]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][171]["Item_1"] = 200474
	tCoatWarehouse_Sale_Prob[18996][1][171]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][171]["Index"] = 171
	tCoatWarehouse_Sale_Prob[18996][1][171]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][171]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][171]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][172] = {}
	tCoatWarehouse_Sale_Prob[18996][1][172]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][172]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][172]["Item_1"] = 200487
	tCoatWarehouse_Sale_Prob[18996][1][172]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][172]["Index"] = 172
	tCoatWarehouse_Sale_Prob[18996][1][172]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][172]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][172]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][173] = {}
	tCoatWarehouse_Sale_Prob[18996][1][173]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][173]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][173]["Item_1"] = 200488
	tCoatWarehouse_Sale_Prob[18996][1][173]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][173]["Index"] = 173
	tCoatWarehouse_Sale_Prob[18996][1][173]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][173]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][173]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][174] = {}
	tCoatWarehouse_Sale_Prob[18996][1][174]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][174]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][174]["Item_1"] = 200433
	tCoatWarehouse_Sale_Prob[18996][1][174]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][174]["Index"] = 174
	tCoatWarehouse_Sale_Prob[18996][1][174]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][174]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][174]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][175] = {}
	tCoatWarehouse_Sale_Prob[18996][1][175]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][175]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][175]["Item_1"] = 200459
	tCoatWarehouse_Sale_Prob[18996][1][175]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][175]["Index"] = 175
	tCoatWarehouse_Sale_Prob[18996][1][175]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][175]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][175]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][176] = {}
	tCoatWarehouse_Sale_Prob[18996][1][176]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][176]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][176]["Item_1"] = 200412
	tCoatWarehouse_Sale_Prob[18996][1][176]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][176]["Index"] = 176
	tCoatWarehouse_Sale_Prob[18996][1][176]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][176]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][176]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][177] = {}
	tCoatWarehouse_Sale_Prob[18996][1][177]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][177]["ItemChance"] = 17
	tCoatWarehouse_Sale_Prob[18996][1][177]["Item_1"] = 200493
	tCoatWarehouse_Sale_Prob[18996][1][177]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][177]["Index"] = 177
	tCoatWarehouse_Sale_Prob[18996][1][177]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][177]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][177]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][178] = {}
	tCoatWarehouse_Sale_Prob[18996][1][178]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][178]["ItemChance"] = 28
	tCoatWarehouse_Sale_Prob[18996][1][178]["Item_1"] = 189085
	tCoatWarehouse_Sale_Prob[18996][1][178]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][178]["Index"] = 178
	tCoatWarehouse_Sale_Prob[18996][1][178]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18996][1][178]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][178]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][179] = {}
	tCoatWarehouse_Sale_Prob[18996][1][179]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][179]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18996][1][179]["Item_1"] = 189145
	tCoatWarehouse_Sale_Prob[18996][1][179]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][179]["Index"] = 179
	tCoatWarehouse_Sale_Prob[18996][1][179]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18996][1][179]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][179]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][180] = {}
	tCoatWarehouse_Sale_Prob[18996][1][180]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][180]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18996][1][180]["Item_1"] = 187575
	tCoatWarehouse_Sale_Prob[18996][1][180]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][180]["Index"] = 180
	tCoatWarehouse_Sale_Prob[18996][1][180]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18996][1][180]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][180]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][181] = {}
	tCoatWarehouse_Sale_Prob[18996][1][181]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][181]["ItemChance"] = 28
	tCoatWarehouse_Sale_Prob[18996][1][181]["Item_1"] = 193115
	tCoatWarehouse_Sale_Prob[18996][1][181]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][181]["Index"] = 181
	tCoatWarehouse_Sale_Prob[18996][1][181]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18996][1][181]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][181]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][182] = {}
	tCoatWarehouse_Sale_Prob[18996][1][182]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][182]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18996][1][182]["Item_1"] = 192495
	tCoatWarehouse_Sale_Prob[18996][1][182]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][182]["Index"] = 182
	tCoatWarehouse_Sale_Prob[18996][1][182]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18996][1][182]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][182]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][183] = {}
	tCoatWarehouse_Sale_Prob[18996][1][183]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][183]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18996][1][183]["Item_1"] = 192425
	tCoatWarehouse_Sale_Prob[18996][1][183]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][183]["Index"] = 183
	tCoatWarehouse_Sale_Prob[18996][1][183]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18996][1][183]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][183]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][184] = {}
	tCoatWarehouse_Sale_Prob[18996][1][184]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][184]["ItemChance"] = 28
	tCoatWarehouse_Sale_Prob[18996][1][184]["Item_1"] = 193195
	tCoatWarehouse_Sale_Prob[18996][1][184]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][184]["Index"] = 184
	tCoatWarehouse_Sale_Prob[18996][1][184]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18996][1][184]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][184]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][185] = {}
	tCoatWarehouse_Sale_Prob[18996][1][185]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][185]["ItemChance"] = 28
	tCoatWarehouse_Sale_Prob[18996][1][185]["Item_1"] = 195375
	tCoatWarehouse_Sale_Prob[18996][1][185]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][185]["Index"] = 185
	tCoatWarehouse_Sale_Prob[18996][1][185]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18996][1][185]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][185]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][186] = {}
	tCoatWarehouse_Sale_Prob[18996][1][186]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][186]["ItemChance"] = 28
	tCoatWarehouse_Sale_Prob[18996][1][186]["Item_1"] = 192615
	tCoatWarehouse_Sale_Prob[18996][1][186]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][186]["Index"] = 186
	tCoatWarehouse_Sale_Prob[18996][1][186]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18996][1][186]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][186]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][187] = {}
	tCoatWarehouse_Sale_Prob[18996][1][187]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][187]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18996][1][187]["Item_1"] = 192635
	tCoatWarehouse_Sale_Prob[18996][1][187]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][187]["Index"] = 187
	tCoatWarehouse_Sale_Prob[18996][1][187]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18996][1][187]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][187]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][188] = {}
	tCoatWarehouse_Sale_Prob[18996][1][188]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][188]["ItemChance"] = 28
	tCoatWarehouse_Sale_Prob[18996][1][188]["Item_1"] = 192695
	tCoatWarehouse_Sale_Prob[18996][1][188]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][188]["Index"] = 188
	tCoatWarehouse_Sale_Prob[18996][1][188]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18996][1][188]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][188]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][189] = {}
	tCoatWarehouse_Sale_Prob[18996][1][189]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][189]["ItemChance"] = 28
	tCoatWarehouse_Sale_Prob[18996][1][189]["Item_1"] = 187325
	tCoatWarehouse_Sale_Prob[18996][1][189]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][189]["Index"] = 189
	tCoatWarehouse_Sale_Prob[18996][1][189]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18996][1][189]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][189]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][190] = {}
	tCoatWarehouse_Sale_Prob[18996][1][190]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][190]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18996][1][190]["Item_1"] = 200549
	tCoatWarehouse_Sale_Prob[18996][1][190]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][190]["Index"] = 190
	tCoatWarehouse_Sale_Prob[18996][1][190]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18996][1][190]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][190]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][191] = {}
	tCoatWarehouse_Sale_Prob[18996][1][191]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][191]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18996][1][191]["Item_1"] = 200480
	tCoatWarehouse_Sale_Prob[18996][1][191]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][191]["Index"] = 191
	tCoatWarehouse_Sale_Prob[18996][1][191]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18996][1][191]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][191]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][192] = {}
	tCoatWarehouse_Sale_Prob[18996][1][192]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][192]["ItemChance"] = 71
	tCoatWarehouse_Sale_Prob[18996][1][192]["Item_1"] = 200495
	tCoatWarehouse_Sale_Prob[18996][1][192]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][192]["Index"] = 192
	tCoatWarehouse_Sale_Prob[18996][1][192]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18996][1][192]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][192]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][193] = {}
	tCoatWarehouse_Sale_Prob[18996][1][193]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][193]["ItemChance"] = 71
	tCoatWarehouse_Sale_Prob[18996][1][193]["Item_1"] = 200500
	tCoatWarehouse_Sale_Prob[18996][1][193]["Attr"] = "0 0 3 1440 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][193]["Index"] = 193
	tCoatWarehouse_Sale_Prob[18996][1][193]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18996][1][193]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][193]["bSaveTime"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][194] = {}
	tCoatWarehouse_Sale_Prob[18996][1][194]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][194]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][194]["Item_1"] = 181345
	tCoatWarehouse_Sale_Prob[18996][1][194]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][194]["Index"] = 194
	tCoatWarehouse_Sale_Prob[18996][1][194]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][194]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][195] = {}
	tCoatWarehouse_Sale_Prob[18996][1][195]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][195]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][195]["Item_1"] = 181365
	tCoatWarehouse_Sale_Prob[18996][1][195]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][195]["Index"] = 195
	tCoatWarehouse_Sale_Prob[18996][1][195]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][195]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][196] = {}
	tCoatWarehouse_Sale_Prob[18996][1][196]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][196]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][196]["Item_1"] = 181375
	tCoatWarehouse_Sale_Prob[18996][1][196]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][196]["Index"] = 196
	tCoatWarehouse_Sale_Prob[18996][1][196]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][196]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][197] = {}
	tCoatWarehouse_Sale_Prob[18996][1][197]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][197]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][197]["Item_1"] = 181385
	tCoatWarehouse_Sale_Prob[18996][1][197]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][197]["Index"] = 197
	tCoatWarehouse_Sale_Prob[18996][1][197]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][197]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][198] = {}
	tCoatWarehouse_Sale_Prob[18996][1][198]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][198]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][198]["Item_1"] = 181395
	tCoatWarehouse_Sale_Prob[18996][1][198]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][198]["Index"] = 198
	tCoatWarehouse_Sale_Prob[18996][1][198]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][198]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][199] = {}
	tCoatWarehouse_Sale_Prob[18996][1][199]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][199]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][199]["Item_1"] = 182305
	tCoatWarehouse_Sale_Prob[18996][1][199]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][199]["Index"] = 199
	tCoatWarehouse_Sale_Prob[18996][1][199]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][199]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][200] = {}
	tCoatWarehouse_Sale_Prob[18996][1][200]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][200]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][200]["Item_1"] = 182315
	tCoatWarehouse_Sale_Prob[18996][1][200]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][200]["Index"] = 200
	tCoatWarehouse_Sale_Prob[18996][1][200]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][200]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][201] = {}
	tCoatWarehouse_Sale_Prob[18996][1][201]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][201]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][201]["Item_1"] = 182325
	tCoatWarehouse_Sale_Prob[18996][1][201]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][201]["Index"] = 201
	tCoatWarehouse_Sale_Prob[18996][1][201]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][201]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][202] = {}
	tCoatWarehouse_Sale_Prob[18996][1][202]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][202]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][202]["Item_1"] = 183305
	tCoatWarehouse_Sale_Prob[18996][1][202]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][202]["Index"] = 202
	tCoatWarehouse_Sale_Prob[18996][1][202]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][202]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][203] = {}
	tCoatWarehouse_Sale_Prob[18996][1][203]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][203]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][203]["Item_1"] = 182385
	tCoatWarehouse_Sale_Prob[18996][1][203]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][203]["Index"] = 203
	tCoatWarehouse_Sale_Prob[18996][1][203]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][203]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][204] = {}
	tCoatWarehouse_Sale_Prob[18996][1][204]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][204]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][204]["Item_1"] = 182375
	tCoatWarehouse_Sale_Prob[18996][1][204]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][204]["Index"] = 204
	tCoatWarehouse_Sale_Prob[18996][1][204]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][204]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][205] = {}
	tCoatWarehouse_Sale_Prob[18996][1][205]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][205]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][205]["Item_1"] = 182365
	tCoatWarehouse_Sale_Prob[18996][1][205]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][205]["Index"] = 205
	tCoatWarehouse_Sale_Prob[18996][1][205]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][205]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][206] = {}
	tCoatWarehouse_Sale_Prob[18996][1][206]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][206]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][206]["Item_1"] = 182355
	tCoatWarehouse_Sale_Prob[18996][1][206]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][206]["Index"] = 206
	tCoatWarehouse_Sale_Prob[18996][1][206]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][206]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][207] = {}
	tCoatWarehouse_Sale_Prob[18996][1][207]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][207]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][207]["Item_1"] = 182345
	tCoatWarehouse_Sale_Prob[18996][1][207]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][207]["Index"] = 207
	tCoatWarehouse_Sale_Prob[18996][1][207]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][207]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][208] = {}
	tCoatWarehouse_Sale_Prob[18996][1][208]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][208]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][208]["Item_1"] = 182335
	tCoatWarehouse_Sale_Prob[18996][1][208]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][208]["Index"] = 208
	tCoatWarehouse_Sale_Prob[18996][1][208]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][208]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][209] = {}
	tCoatWarehouse_Sale_Prob[18996][1][209]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][209]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][209]["Item_1"] = 181925
	tCoatWarehouse_Sale_Prob[18996][1][209]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][209]["Index"] = 209
	tCoatWarehouse_Sale_Prob[18996][1][209]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][209]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][210] = {}
	tCoatWarehouse_Sale_Prob[18996][1][210]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][210]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][210]["Item_1"] = 181825
	tCoatWarehouse_Sale_Prob[18996][1][210]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][210]["Index"] = 210
	tCoatWarehouse_Sale_Prob[18996][1][210]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][210]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][211] = {}
	tCoatWarehouse_Sale_Prob[18996][1][211]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][211]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][211]["Item_1"] = 181325
	tCoatWarehouse_Sale_Prob[18996][1][211]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][211]["Index"] = 211
	tCoatWarehouse_Sale_Prob[18996][1][211]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][211]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][212] = {}
	tCoatWarehouse_Sale_Prob[18996][1][212]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][212]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][212]["Item_1"] = 181425
	tCoatWarehouse_Sale_Prob[18996][1][212]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][212]["Index"] = 212
	tCoatWarehouse_Sale_Prob[18996][1][212]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][212]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][213] = {}
	tCoatWarehouse_Sale_Prob[18996][1][213]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][213]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][213]["Item_1"] = 181525
	tCoatWarehouse_Sale_Prob[18996][1][213]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][213]["Index"] = 213
	tCoatWarehouse_Sale_Prob[18996][1][213]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][213]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][214] = {}
	tCoatWarehouse_Sale_Prob[18996][1][214]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][214]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][214]["Item_1"] = 181625
	tCoatWarehouse_Sale_Prob[18996][1][214]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][214]["Index"] = 214
	tCoatWarehouse_Sale_Prob[18996][1][214]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][214]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][215] = {}
	tCoatWarehouse_Sale_Prob[18996][1][215]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][215]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][215]["Item_1"] = 181725
	tCoatWarehouse_Sale_Prob[18996][1][215]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][215]["Index"] = 215
	tCoatWarehouse_Sale_Prob[18996][1][215]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][215]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][216] = {}
	tCoatWarehouse_Sale_Prob[18996][1][216]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][216]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][216]["Item_1"] = 181915
	tCoatWarehouse_Sale_Prob[18996][1][216]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][216]["Index"] = 216
	tCoatWarehouse_Sale_Prob[18996][1][216]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][216]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][217] = {}
	tCoatWarehouse_Sale_Prob[18996][1][217]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][217]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][217]["Item_1"] = 181615
	tCoatWarehouse_Sale_Prob[18996][1][217]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][217]["Index"] = 217
	tCoatWarehouse_Sale_Prob[18996][1][217]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][217]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][218] = {}
	tCoatWarehouse_Sale_Prob[18996][1][218]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][218]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][218]["Item_1"] = 181315
	tCoatWarehouse_Sale_Prob[18996][1][218]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][218]["Index"] = 218
	tCoatWarehouse_Sale_Prob[18996][1][218]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][218]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][219] = {}
	tCoatWarehouse_Sale_Prob[18996][1][219]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][219]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][219]["Item_1"] = 181415
	tCoatWarehouse_Sale_Prob[18996][1][219]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][219]["Index"] = 219
	tCoatWarehouse_Sale_Prob[18996][1][219]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][219]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][220] = {}
	tCoatWarehouse_Sale_Prob[18996][1][220]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][220]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][220]["Item_1"] = 181515
	tCoatWarehouse_Sale_Prob[18996][1][220]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][220]["Index"] = 220
	tCoatWarehouse_Sale_Prob[18996][1][220]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][220]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][221] = {}
	tCoatWarehouse_Sale_Prob[18996][1][221]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][221]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][221]["Item_1"] = 181715
	tCoatWarehouse_Sale_Prob[18996][1][221]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][221]["Index"] = 221
	tCoatWarehouse_Sale_Prob[18996][1][221]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][221]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][222] = {}
	tCoatWarehouse_Sale_Prob[18996][1][222]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][222]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][222]["Item_1"] = 181815
	tCoatWarehouse_Sale_Prob[18996][1][222]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][222]["Index"] = 222
	tCoatWarehouse_Sale_Prob[18996][1][222]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][222]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][223] = {}
	tCoatWarehouse_Sale_Prob[18996][1][223]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][223]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][223]["Item_1"] = 181905
	tCoatWarehouse_Sale_Prob[18996][1][223]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][223]["Index"] = 223
	tCoatWarehouse_Sale_Prob[18996][1][223]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][223]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][224] = {}
	tCoatWarehouse_Sale_Prob[18996][1][224]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][224]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][224]["Item_1"] = 181305
	tCoatWarehouse_Sale_Prob[18996][1][224]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][224]["Index"] = 224
	tCoatWarehouse_Sale_Prob[18996][1][224]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][224]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][225] = {}
	tCoatWarehouse_Sale_Prob[18996][1][225]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][225]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][225]["Item_1"] = 181405
	tCoatWarehouse_Sale_Prob[18996][1][225]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][225]["Index"] = 225
	tCoatWarehouse_Sale_Prob[18996][1][225]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][225]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][226] = {}
	tCoatWarehouse_Sale_Prob[18996][1][226]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][226]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][226]["Item_1"] = 181505
	tCoatWarehouse_Sale_Prob[18996][1][226]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][226]["Index"] = 226
	tCoatWarehouse_Sale_Prob[18996][1][226]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][226]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][227] = {}
	tCoatWarehouse_Sale_Prob[18996][1][227]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][227]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][227]["Item_1"] = 181605
	tCoatWarehouse_Sale_Prob[18996][1][227]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][227]["Index"] = 227
	tCoatWarehouse_Sale_Prob[18996][1][227]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][227]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][228] = {}
	tCoatWarehouse_Sale_Prob[18996][1][228]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][228]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][228]["Item_1"] = 181705
	tCoatWarehouse_Sale_Prob[18996][1][228]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][228]["Index"] = 228
	tCoatWarehouse_Sale_Prob[18996][1][228]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][228]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][229] = {}
	tCoatWarehouse_Sale_Prob[18996][1][229]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][229]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18996][1][229]["Item_1"] = 181805
	tCoatWarehouse_Sale_Prob[18996][1][229]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][229]["Index"] = 229
	tCoatWarehouse_Sale_Prob[18996][1][229]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][229]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][230] = {}
	tCoatWarehouse_Sale_Prob[18996][1][230]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][230]["ItemChance"] = 24
	tCoatWarehouse_Sale_Prob[18996][1][230]["Item_1"] = 200000
	tCoatWarehouse_Sale_Prob[18996][1][230]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][230]["Index"] = 230
	tCoatWarehouse_Sale_Prob[18996][1][230]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][230]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][231] = {}
	tCoatWarehouse_Sale_Prob[18996][1][231]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][231]["ItemChance"] = 24
	tCoatWarehouse_Sale_Prob[18996][1][231]["Item_1"] = 200001
	tCoatWarehouse_Sale_Prob[18996][1][231]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][231]["Index"] = 231
	tCoatWarehouse_Sale_Prob[18996][1][231]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][231]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][232] = {}
	tCoatWarehouse_Sale_Prob[18996][1][232]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][232]["ItemChance"] = 24
	tCoatWarehouse_Sale_Prob[18996][1][232]["Item_1"] = 200004
	tCoatWarehouse_Sale_Prob[18996][1][232]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][232]["Index"] = 232
	tCoatWarehouse_Sale_Prob[18996][1][232]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][232]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][233] = {}
	tCoatWarehouse_Sale_Prob[18996][1][233]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][233]["ItemChance"] = 24
	tCoatWarehouse_Sale_Prob[18996][1][233]["Item_1"] = 200006
	tCoatWarehouse_Sale_Prob[18996][1][233]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][233]["Index"] = 233
	tCoatWarehouse_Sale_Prob[18996][1][233]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][233]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][234] = {}
	tCoatWarehouse_Sale_Prob[18996][1][234]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][234]["ItemChance"] = 24
	tCoatWarehouse_Sale_Prob[18996][1][234]["Item_1"] = 200018
	tCoatWarehouse_Sale_Prob[18996][1][234]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][234]["Index"] = 234
	tCoatWarehouse_Sale_Prob[18996][1][234]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][234]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][235] = {}
	tCoatWarehouse_Sale_Prob[18996][1][235]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][235]["ItemChance"] = 24
	tCoatWarehouse_Sale_Prob[18996][1][235]["Item_1"] = 200019
	tCoatWarehouse_Sale_Prob[18996][1][235]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][235]["Index"] = 235
	tCoatWarehouse_Sale_Prob[18996][1][235]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][235]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][236] = {}
	tCoatWarehouse_Sale_Prob[18996][1][236]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][236]["ItemChance"] = 24
	tCoatWarehouse_Sale_Prob[18996][1][236]["Item_1"] = 200020
	tCoatWarehouse_Sale_Prob[18996][1][236]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][236]["Index"] = 236
	tCoatWarehouse_Sale_Prob[18996][1][236]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][236]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][237] = {}
	tCoatWarehouse_Sale_Prob[18996][1][237]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][237]["ItemChance"] = 24
	tCoatWarehouse_Sale_Prob[18996][1][237]["Item_1"] = 200015
	tCoatWarehouse_Sale_Prob[18996][1][237]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][237]["Index"] = 237
	tCoatWarehouse_Sale_Prob[18996][1][237]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][237]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][238] = {}
	tCoatWarehouse_Sale_Prob[18996][1][238]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][238]["ItemChance"] = 24
	tCoatWarehouse_Sale_Prob[18996][1][238]["Item_1"] = 200016
	tCoatWarehouse_Sale_Prob[18996][1][238]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][238]["Index"] = 238
	tCoatWarehouse_Sale_Prob[18996][1][238]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][238]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][239] = {}
	tCoatWarehouse_Sale_Prob[18996][1][239]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][239]["ItemChance"] = 24
	tCoatWarehouse_Sale_Prob[18996][1][239]["Item_1"] = 200125
	tCoatWarehouse_Sale_Prob[18996][1][239]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][239]["Index"] = 239
	tCoatWarehouse_Sale_Prob[18996][1][239]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][239]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][240] = {}
	tCoatWarehouse_Sale_Prob[18996][1][240]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][240]["ItemChance"] = 24
	tCoatWarehouse_Sale_Prob[18996][1][240]["Item_1"] = 200101
	tCoatWarehouse_Sale_Prob[18996][1][240]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][240]["Index"] = 240
	tCoatWarehouse_Sale_Prob[18996][1][240]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][240]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][241] = {}
	tCoatWarehouse_Sale_Prob[18996][1][241]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][241]["ItemChance"] = 24
	tCoatWarehouse_Sale_Prob[18996][1][241]["Item_1"] = 200102
	tCoatWarehouse_Sale_Prob[18996][1][241]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][241]["Index"] = 241
	tCoatWarehouse_Sale_Prob[18996][1][241]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][241]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][242] = {}
	tCoatWarehouse_Sale_Prob[18996][1][242]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][242]["ItemChance"] = 24
	tCoatWarehouse_Sale_Prob[18996][1][242]["Item_1"] = 200120
	tCoatWarehouse_Sale_Prob[18996][1][242]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][242]["Index"] = 242
	tCoatWarehouse_Sale_Prob[18996][1][242]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][242]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][243] = {}
	tCoatWarehouse_Sale_Prob[18996][1][243]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][243]["ItemChance"] = 24
	tCoatWarehouse_Sale_Prob[18996][1][243]["Item_1"] = 200121
	tCoatWarehouse_Sale_Prob[18996][1][243]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][243]["Index"] = 243
	tCoatWarehouse_Sale_Prob[18996][1][243]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][243]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][244] = {}
	tCoatWarehouse_Sale_Prob[18996][1][244]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][244]["ItemChance"] = 24
	tCoatWarehouse_Sale_Prob[18996][1][244]["Item_1"] = 200122
	tCoatWarehouse_Sale_Prob[18996][1][244]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][244]["Index"] = 244
	tCoatWarehouse_Sale_Prob[18996][1][244]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][244]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][245] = {}
	tCoatWarehouse_Sale_Prob[18996][1][245]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][245]["ItemChance"] = 24
	tCoatWarehouse_Sale_Prob[18996][1][245]["Item_1"] = 200123
	tCoatWarehouse_Sale_Prob[18996][1][245]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][245]["Index"] = 245
	tCoatWarehouse_Sale_Prob[18996][1][245]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][245]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][246] = {}
	tCoatWarehouse_Sale_Prob[18996][1][246]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][246]["ItemChance"] = 24
	tCoatWarehouse_Sale_Prob[18996][1][246]["Item_1"] = 200124
	tCoatWarehouse_Sale_Prob[18996][1][246]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][246]["Index"] = 246
	tCoatWarehouse_Sale_Prob[18996][1][246]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][246]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][247] = {}
	tCoatWarehouse_Sale_Prob[18996][1][247]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][247]["ItemChance"] = 24
	tCoatWarehouse_Sale_Prob[18996][1][247]["Item_1"] = 200125
	tCoatWarehouse_Sale_Prob[18996][1][247]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][247]["Index"] = 247
	tCoatWarehouse_Sale_Prob[18996][1][247]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][247]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][248] = {}
	tCoatWarehouse_Sale_Prob[18996][1][248]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][248]["ItemChance"] = 24
	tCoatWarehouse_Sale_Prob[18996][1][248]["Item_1"] = 200126
	tCoatWarehouse_Sale_Prob[18996][1][248]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][248]["Index"] = 248
	tCoatWarehouse_Sale_Prob[18996][1][248]["Stars"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][248]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][249] = {}
	tCoatWarehouse_Sale_Prob[18996][1][249]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][249]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][249]["Item_1"] = 183475
	tCoatWarehouse_Sale_Prob[18996][1][249]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][249]["Index"] = 249
	tCoatWarehouse_Sale_Prob[18996][1][249]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][249]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][250] = {}
	tCoatWarehouse_Sale_Prob[18996][1][250]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][250]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][250]["Item_1"] = 183425
	tCoatWarehouse_Sale_Prob[18996][1][250]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][250]["Index"] = 250
	tCoatWarehouse_Sale_Prob[18996][1][250]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][250]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][251] = {}
	tCoatWarehouse_Sale_Prob[18996][1][251]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][251]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][251]["Item_1"] = 191405
	tCoatWarehouse_Sale_Prob[18996][1][251]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][251]["Index"] = 251
	tCoatWarehouse_Sale_Prob[18996][1][251]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][251]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][252] = {}
	tCoatWarehouse_Sale_Prob[18996][1][252]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][252]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][252]["Item_1"] = 191305
	tCoatWarehouse_Sale_Prob[18996][1][252]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][252]["Index"] = 252
	tCoatWarehouse_Sale_Prob[18996][1][252]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][252]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][253] = {}
	tCoatWarehouse_Sale_Prob[18996][1][253]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][253]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][253]["Item_1"] = 192185
	tCoatWarehouse_Sale_Prob[18996][1][253]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][253]["Index"] = 253
	tCoatWarehouse_Sale_Prob[18996][1][253]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][253]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][254] = {}
	tCoatWarehouse_Sale_Prob[18996][1][254]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][254]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][254]["Item_1"] = 181335
	tCoatWarehouse_Sale_Prob[18996][1][254]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][254]["Index"] = 254
	tCoatWarehouse_Sale_Prob[18996][1][254]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][254]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][255] = {}
	tCoatWarehouse_Sale_Prob[18996][1][255]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][255]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][255]["Item_1"] = 184335
	tCoatWarehouse_Sale_Prob[18996][1][255]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][255]["Index"] = 255
	tCoatWarehouse_Sale_Prob[18996][1][255]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][255]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][256] = {}
	tCoatWarehouse_Sale_Prob[18996][1][256]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][256]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][256]["Item_1"] = 181355
	tCoatWarehouse_Sale_Prob[18996][1][256]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][256]["Index"] = 256
	tCoatWarehouse_Sale_Prob[18996][1][256]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][256]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][257] = {}
	tCoatWarehouse_Sale_Prob[18996][1][257]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][257]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][257]["Item_1"] = 184375
	tCoatWarehouse_Sale_Prob[18996][1][257]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][257]["Index"] = 257
	tCoatWarehouse_Sale_Prob[18996][1][257]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][257]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][258] = {}
	tCoatWarehouse_Sale_Prob[18996][1][258]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][258]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][258]["Item_1"] = 184305
	tCoatWarehouse_Sale_Prob[18996][1][258]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][258]["Index"] = 258
	tCoatWarehouse_Sale_Prob[18996][1][258]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][258]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][259] = {}
	tCoatWarehouse_Sale_Prob[18996][1][259]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][259]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][259]["Item_1"] = 183365
	tCoatWarehouse_Sale_Prob[18996][1][259]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][259]["Index"] = 259
	tCoatWarehouse_Sale_Prob[18996][1][259]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][259]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][260] = {}
	tCoatWarehouse_Sale_Prob[18996][1][260]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][260]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][260]["Item_1"] = 188345
	tCoatWarehouse_Sale_Prob[18996][1][260]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][260]["Index"] = 260
	tCoatWarehouse_Sale_Prob[18996][1][260]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][260]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][261] = {}
	tCoatWarehouse_Sale_Prob[18996][1][261]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][261]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][261]["Item_1"] = 183375
	tCoatWarehouse_Sale_Prob[18996][1][261]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][261]["Index"] = 261
	tCoatWarehouse_Sale_Prob[18996][1][261]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][261]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][262] = {}
	tCoatWarehouse_Sale_Prob[18996][1][262]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][262]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][262]["Item_1"] = 183335
	tCoatWarehouse_Sale_Prob[18996][1][262]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][262]["Index"] = 262
	tCoatWarehouse_Sale_Prob[18996][1][262]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][262]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][263] = {}
	tCoatWarehouse_Sale_Prob[18996][1][263]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][263]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][263]["Item_1"] = 183325
	tCoatWarehouse_Sale_Prob[18996][1][263]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][263]["Index"] = 263
	tCoatWarehouse_Sale_Prob[18996][1][263]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][263]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][264] = {}
	tCoatWarehouse_Sale_Prob[18996][1][264]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][264]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][264]["Item_1"] = 183315
	tCoatWarehouse_Sale_Prob[18996][1][264]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][264]["Index"] = 264
	tCoatWarehouse_Sale_Prob[18996][1][264]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][264]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][265] = {}
	tCoatWarehouse_Sale_Prob[18996][1][265]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][265]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][265]["Item_1"] = 187455
	tCoatWarehouse_Sale_Prob[18996][1][265]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][265]["Index"] = 265
	tCoatWarehouse_Sale_Prob[18996][1][265]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][265]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][266] = {}
	tCoatWarehouse_Sale_Prob[18996][1][266]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][266]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][266]["Item_1"] = 187465
	tCoatWarehouse_Sale_Prob[18996][1][266]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][266]["Index"] = 266
	tCoatWarehouse_Sale_Prob[18996][1][266]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][266]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][267] = {}
	tCoatWarehouse_Sale_Prob[18996][1][267]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][267]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][267]["Item_1"] = 188335
	tCoatWarehouse_Sale_Prob[18996][1][267]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][267]["Index"] = 267
	tCoatWarehouse_Sale_Prob[18996][1][267]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][267]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][268] = {}
	tCoatWarehouse_Sale_Prob[18996][1][268]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][268]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][268]["Item_1"] = 187315
	tCoatWarehouse_Sale_Prob[18996][1][268]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][268]["Index"] = 268
	tCoatWarehouse_Sale_Prob[18996][1][268]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][268]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][269] = {}
	tCoatWarehouse_Sale_Prob[18996][1][269]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][269]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][269]["Item_1"] = 184325
	tCoatWarehouse_Sale_Prob[18996][1][269]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][269]["Index"] = 269
	tCoatWarehouse_Sale_Prob[18996][1][269]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][269]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][270] = {}
	tCoatWarehouse_Sale_Prob[18996][1][270]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][270]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][270]["Item_1"] = 193300
	tCoatWarehouse_Sale_Prob[18996][1][270]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][270]["Index"] = 270
	tCoatWarehouse_Sale_Prob[18996][1][270]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][270]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][271] = {}
	tCoatWarehouse_Sale_Prob[18996][1][271]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][271]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][271]["Item_1"] = 187505
	tCoatWarehouse_Sale_Prob[18996][1][271]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][271]["Index"] = 271
	tCoatWarehouse_Sale_Prob[18996][1][271]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][271]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][272] = {}
	tCoatWarehouse_Sale_Prob[18996][1][272]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][272]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][272]["Item_1"] = 193085
	tCoatWarehouse_Sale_Prob[18996][1][272]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][272]["Index"] = 272
	tCoatWarehouse_Sale_Prob[18996][1][272]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][272]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][273] = {}
	tCoatWarehouse_Sale_Prob[18996][1][273]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][273]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][273]["Item_1"] = 193075
	tCoatWarehouse_Sale_Prob[18996][1][273]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][273]["Index"] = 273
	tCoatWarehouse_Sale_Prob[18996][1][273]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][273]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][274] = {}
	tCoatWarehouse_Sale_Prob[18996][1][274]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][274]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][274]["Item_1"] = 193055
	tCoatWarehouse_Sale_Prob[18996][1][274]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][274]["Index"] = 274
	tCoatWarehouse_Sale_Prob[18996][1][274]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][274]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][275] = {}
	tCoatWarehouse_Sale_Prob[18996][1][275]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][275]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][275]["Item_1"] = 193105
	tCoatWarehouse_Sale_Prob[18996][1][275]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][275]["Index"] = 275
	tCoatWarehouse_Sale_Prob[18996][1][275]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][275]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][276] = {}
	tCoatWarehouse_Sale_Prob[18996][1][276]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][276]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18996][1][276]["Item_1"] = 193135
	tCoatWarehouse_Sale_Prob[18996][1][276]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][276]["Index"] = 276
	tCoatWarehouse_Sale_Prob[18996][1][276]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][276]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][277] = {}
	tCoatWarehouse_Sale_Prob[18996][1][277]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][277]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18996][1][277]["Item_1"] = 193065
	tCoatWarehouse_Sale_Prob[18996][1][277]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][277]["Index"] = 277
	tCoatWarehouse_Sale_Prob[18996][1][277]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][277]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][278] = {}
	tCoatWarehouse_Sale_Prob[18996][1][278]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][278]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18996][1][278]["Item_1"] = 193045
	tCoatWarehouse_Sale_Prob[18996][1][278]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][278]["Index"] = 278
	tCoatWarehouse_Sale_Prob[18996][1][278]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][278]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][279] = {}
	tCoatWarehouse_Sale_Prob[18996][1][279]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][279]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][279]["Item_1"] = 188665
	tCoatWarehouse_Sale_Prob[18996][1][279]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][279]["Index"] = 279
	tCoatWarehouse_Sale_Prob[18996][1][279]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][279]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][280] = {}
	tCoatWarehouse_Sale_Prob[18996][1][280]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][280]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][280]["Item_1"] = 188155
	tCoatWarehouse_Sale_Prob[18996][1][280]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][280]["Index"] = 280
	tCoatWarehouse_Sale_Prob[18996][1][280]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][280]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][281] = {}
	tCoatWarehouse_Sale_Prob[18996][1][281]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][281]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][281]["Item_1"] = 188165
	tCoatWarehouse_Sale_Prob[18996][1][281]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][281]["Index"] = 281
	tCoatWarehouse_Sale_Prob[18996][1][281]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][281]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][282] = {}
	tCoatWarehouse_Sale_Prob[18996][1][282]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][282]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][282]["Item_1"] = 188175
	tCoatWarehouse_Sale_Prob[18996][1][282]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][282]["Index"] = 282
	tCoatWarehouse_Sale_Prob[18996][1][282]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][282]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][283] = {}
	tCoatWarehouse_Sale_Prob[18996][1][283]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][283]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][283]["Item_1"] = 188255
	tCoatWarehouse_Sale_Prob[18996][1][283]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][283]["Index"] = 283
	tCoatWarehouse_Sale_Prob[18996][1][283]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][283]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][284] = {}
	tCoatWarehouse_Sale_Prob[18996][1][284]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][284]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][284]["Item_1"] = 188295
	tCoatWarehouse_Sale_Prob[18996][1][284]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][284]["Index"] = 284
	tCoatWarehouse_Sale_Prob[18996][1][284]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][284]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][285] = {}
	tCoatWarehouse_Sale_Prob[18996][1][285]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][285]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][285]["Item_1"] = 188545
	tCoatWarehouse_Sale_Prob[18996][1][285]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][285]["Index"] = 285
	tCoatWarehouse_Sale_Prob[18996][1][285]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][285]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][286] = {}
	tCoatWarehouse_Sale_Prob[18996][1][286]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][286]["ItemChance"] = 10
	tCoatWarehouse_Sale_Prob[18996][1][286]["Item_1"] = 193235
	tCoatWarehouse_Sale_Prob[18996][1][286]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][286]["Index"] = 286
	tCoatWarehouse_Sale_Prob[18996][1][286]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][286]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][287] = {}
	tCoatWarehouse_Sale_Prob[18996][1][287]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][287]["ItemChance"] = 15
	tCoatWarehouse_Sale_Prob[18996][1][287]["Item_1"] = 200002
	tCoatWarehouse_Sale_Prob[18996][1][287]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][287]["Index"] = 287
	tCoatWarehouse_Sale_Prob[18996][1][287]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][287]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][288] = {}
	tCoatWarehouse_Sale_Prob[18996][1][288]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][288]["ItemChance"] = 15
	tCoatWarehouse_Sale_Prob[18996][1][288]["Item_1"] = 200003
	tCoatWarehouse_Sale_Prob[18996][1][288]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][288]["Index"] = 288
	tCoatWarehouse_Sale_Prob[18996][1][288]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][288]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][289] = {}
	tCoatWarehouse_Sale_Prob[18996][1][289]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][289]["ItemChance"] = 15
	tCoatWarehouse_Sale_Prob[18996][1][289]["Item_1"] = 200005
	tCoatWarehouse_Sale_Prob[18996][1][289]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][289]["Index"] = 289
	tCoatWarehouse_Sale_Prob[18996][1][289]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][289]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][290] = {}
	tCoatWarehouse_Sale_Prob[18996][1][290]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][290]["ItemChance"] = 15
	tCoatWarehouse_Sale_Prob[18996][1][290]["Item_1"] = 200007
	tCoatWarehouse_Sale_Prob[18996][1][290]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][290]["Index"] = 290
	tCoatWarehouse_Sale_Prob[18996][1][290]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][290]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][291] = {}
	tCoatWarehouse_Sale_Prob[18996][1][291]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][291]["ItemChance"] = 15
	tCoatWarehouse_Sale_Prob[18996][1][291]["Item_1"] = 200008
	tCoatWarehouse_Sale_Prob[18996][1][291]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][291]["Index"] = 291
	tCoatWarehouse_Sale_Prob[18996][1][291]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][291]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][292] = {}
	tCoatWarehouse_Sale_Prob[18996][1][292]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][292]["ItemChance"] = 15
	tCoatWarehouse_Sale_Prob[18996][1][292]["Item_1"] = 200103
	tCoatWarehouse_Sale_Prob[18996][1][292]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][292]["Index"] = 292
	tCoatWarehouse_Sale_Prob[18996][1][292]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][292]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][293] = {}
	tCoatWarehouse_Sale_Prob[18996][1][293]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][293]["ItemChance"] = 15
	tCoatWarehouse_Sale_Prob[18996][1][293]["Item_1"] = 200104
	tCoatWarehouse_Sale_Prob[18996][1][293]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][293]["Index"] = 293
	tCoatWarehouse_Sale_Prob[18996][1][293]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][293]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][294] = {}
	tCoatWarehouse_Sale_Prob[18996][1][294]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][294]["ItemChance"] = 15
	tCoatWarehouse_Sale_Prob[18996][1][294]["Item_1"] = 200105
	tCoatWarehouse_Sale_Prob[18996][1][294]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][294]["Index"] = 294
	tCoatWarehouse_Sale_Prob[18996][1][294]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][294]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][295] = {}
	tCoatWarehouse_Sale_Prob[18996][1][295]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][295]["ItemChance"] = 15
	tCoatWarehouse_Sale_Prob[18996][1][295]["Item_1"] = 200106
	tCoatWarehouse_Sale_Prob[18996][1][295]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][295]["Index"] = 295
	tCoatWarehouse_Sale_Prob[18996][1][295]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][295]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][296] = {}
	tCoatWarehouse_Sale_Prob[18996][1][296]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][296]["ItemChance"] = 15
	tCoatWarehouse_Sale_Prob[18996][1][296]["Item_1"] = 200109
	tCoatWarehouse_Sale_Prob[18996][1][296]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][296]["Index"] = 296
	tCoatWarehouse_Sale_Prob[18996][1][296]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][296]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][297] = {}
	tCoatWarehouse_Sale_Prob[18996][1][297]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][297]["ItemChance"] = 15
	tCoatWarehouse_Sale_Prob[18996][1][297]["Item_1"] = 200538
	tCoatWarehouse_Sale_Prob[18996][1][297]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][297]["Index"] = 297
	tCoatWarehouse_Sale_Prob[18996][1][297]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][297]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][298] = {}
	tCoatWarehouse_Sale_Prob[18996][1][298]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][298]["ItemChance"] = 15
	tCoatWarehouse_Sale_Prob[18996][1][298]["Item_1"] = 200431
	tCoatWarehouse_Sale_Prob[18996][1][298]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][298]["Index"] = 298
	tCoatWarehouse_Sale_Prob[18996][1][298]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][298]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][299] = {}
	tCoatWarehouse_Sale_Prob[18996][1][299]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][299]["ItemChance"] = 15
	tCoatWarehouse_Sale_Prob[18996][1][299]["Item_1"] = 200012
	tCoatWarehouse_Sale_Prob[18996][1][299]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][299]["Index"] = 299
	tCoatWarehouse_Sale_Prob[18996][1][299]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][299]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][300] = {}
	tCoatWarehouse_Sale_Prob[18996][1][300]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][300]["ItemChance"] = 15
	tCoatWarehouse_Sale_Prob[18996][1][300]["Item_1"] = 200110
	tCoatWarehouse_Sale_Prob[18996][1][300]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][300]["Index"] = 300
	tCoatWarehouse_Sale_Prob[18996][1][300]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][300]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][301] = {}
	tCoatWarehouse_Sale_Prob[18996][1][301]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][301]["ItemChance"] = 15
	tCoatWarehouse_Sale_Prob[18996][1][301]["Item_1"] = 200323
	tCoatWarehouse_Sale_Prob[18996][1][301]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][301]["Index"] = 301
	tCoatWarehouse_Sale_Prob[18996][1][301]["Stars"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][301]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][302] = {}
	tCoatWarehouse_Sale_Prob[18996][1][302]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][302]["ItemChance"] = 350
	tCoatWarehouse_Sale_Prob[18996][1][302]["Item_1"] = 3008270
	tCoatWarehouse_Sale_Prob[18996][1][302]["Index"] = 302
	tCoatWarehouse_Sale_Prob[18996][1][302]["Stars"] = 0
	tCoatWarehouse_Sale_Prob[18996][1][302]["Type"] = 0

	tCoatWarehouse_Sale_Prob[18996][1][303] = {}
	tCoatWarehouse_Sale_Prob[18996][1][303]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][303]["ItemChance"] = 186
	tCoatWarehouse_Sale_Prob[18996][1][303]["Item_1"] = 3008323
	tCoatWarehouse_Sale_Prob[18996][1][303]["Index"] = 303
	tCoatWarehouse_Sale_Prob[18996][1][303]["Stars"] = 0
	tCoatWarehouse_Sale_Prob[18996][1][303]["Type"] = 0

	tCoatWarehouse_Sale_Prob[18996][1][304] = {}
	tCoatWarehouse_Sale_Prob[18996][1][304]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][304]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][304]["Item_1"] = 194300
	tCoatWarehouse_Sale_Prob[18996][1][304]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][304]["Index"] = 304
	tCoatWarehouse_Sale_Prob[18996][1][304]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][304]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][305] = {}
	tCoatWarehouse_Sale_Prob[18996][1][305]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][305]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][305]["Item_1"] = 193515
	tCoatWarehouse_Sale_Prob[18996][1][305]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][305]["Index"] = 305
	tCoatWarehouse_Sale_Prob[18996][1][305]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][305]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][306] = {}
	tCoatWarehouse_Sale_Prob[18996][1][306]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][306]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][306]["Item_1"] = 192555
	tCoatWarehouse_Sale_Prob[18996][1][306]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][306]["Index"] = 306
	tCoatWarehouse_Sale_Prob[18996][1][306]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][306]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][307] = {}
	tCoatWarehouse_Sale_Prob[18996][1][307]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][307]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][307]["Item_1"] = 192345
	tCoatWarehouse_Sale_Prob[18996][1][307]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][307]["Index"] = 307
	tCoatWarehouse_Sale_Prob[18996][1][307]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][307]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][308] = {}
	tCoatWarehouse_Sale_Prob[18996][1][308]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][308]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][308]["Item_1"] = 189095
	tCoatWarehouse_Sale_Prob[18996][1][308]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][308]["Index"] = 308
	tCoatWarehouse_Sale_Prob[18996][1][308]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][308]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][309] = {}
	tCoatWarehouse_Sale_Prob[18996][1][309]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][309]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][309]["Item_1"] = 189055
	tCoatWarehouse_Sale_Prob[18996][1][309]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][309]["Index"] = 309
	tCoatWarehouse_Sale_Prob[18996][1][309]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][309]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][310] = {}
	tCoatWarehouse_Sale_Prob[18996][1][310]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][310]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][310]["Item_1"] = 188905
	tCoatWarehouse_Sale_Prob[18996][1][310]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][310]["Index"] = 310
	tCoatWarehouse_Sale_Prob[18996][1][310]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][310]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][311] = {}
	tCoatWarehouse_Sale_Prob[18996][1][311]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][311]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][311]["Item_1"] = 184355
	tCoatWarehouse_Sale_Prob[18996][1][311]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][311]["Index"] = 311
	tCoatWarehouse_Sale_Prob[18996][1][311]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][311]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][312] = {}
	tCoatWarehouse_Sale_Prob[18996][1][312]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][312]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][312]["Item_1"] = 184365
	tCoatWarehouse_Sale_Prob[18996][1][312]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][312]["Index"] = 312
	tCoatWarehouse_Sale_Prob[18996][1][312]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][312]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][313] = {}
	tCoatWarehouse_Sale_Prob[18996][1][313]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][313]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][313]["Item_1"] = 187475
	tCoatWarehouse_Sale_Prob[18996][1][313]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][313]["Index"] = 313
	tCoatWarehouse_Sale_Prob[18996][1][313]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][313]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][314] = {}
	tCoatWarehouse_Sale_Prob[18996][1][314]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][314]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][314]["Item_1"] = 184385
	tCoatWarehouse_Sale_Prob[18996][1][314]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][314]["Index"] = 314
	tCoatWarehouse_Sale_Prob[18996][1][314]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][314]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][315] = {}
	tCoatWarehouse_Sale_Prob[18996][1][315]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][315]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][315]["Item_1"] = 183485
	tCoatWarehouse_Sale_Prob[18996][1][315]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][315]["Index"] = 315
	tCoatWarehouse_Sale_Prob[18996][1][315]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][315]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][316] = {}
	tCoatWarehouse_Sale_Prob[18996][1][316]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][316]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][316]["Item_1"] = 188575
	tCoatWarehouse_Sale_Prob[18996][1][316]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][316]["Index"] = 316
	tCoatWarehouse_Sale_Prob[18996][1][316]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][316]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][317] = {}
	tCoatWarehouse_Sale_Prob[18996][1][317]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][317]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][317]["Item_1"] = 192685
	tCoatWarehouse_Sale_Prob[18996][1][317]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][317]["Index"] = 317
	tCoatWarehouse_Sale_Prob[18996][1][317]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][317]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][318] = {}
	tCoatWarehouse_Sale_Prob[18996][1][318]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][318]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][318]["Item_1"] = 192675
	tCoatWarehouse_Sale_Prob[18996][1][318]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][318]["Index"] = 318
	tCoatWarehouse_Sale_Prob[18996][1][318]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][318]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][319] = {}
	tCoatWarehouse_Sale_Prob[18996][1][319]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][319]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][319]["Item_1"] = 192665
	tCoatWarehouse_Sale_Prob[18996][1][319]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][319]["Index"] = 319
	tCoatWarehouse_Sale_Prob[18996][1][319]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][319]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][320] = {}
	tCoatWarehouse_Sale_Prob[18996][1][320]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][320]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][320]["Item_1"] = 192655
	tCoatWarehouse_Sale_Prob[18996][1][320]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][320]["Index"] = 320
	tCoatWarehouse_Sale_Prob[18996][1][320]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][320]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][321] = {}
	tCoatWarehouse_Sale_Prob[18996][1][321]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][321]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][321]["Item_1"] = 192300
	tCoatWarehouse_Sale_Prob[18996][1][321]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][321]["Index"] = 321
	tCoatWarehouse_Sale_Prob[18996][1][321]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][321]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][322] = {}
	tCoatWarehouse_Sale_Prob[18996][1][322]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][322]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][322]["Item_1"] = 189105
	tCoatWarehouse_Sale_Prob[18996][1][322]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][322]["Index"] = 322
	tCoatWarehouse_Sale_Prob[18996][1][322]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][322]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][323] = {}
	tCoatWarehouse_Sale_Prob[18996][1][323]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][323]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][323]["Item_1"] = 188285
	tCoatWarehouse_Sale_Prob[18996][1][323]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][323]["Index"] = 323
	tCoatWarehouse_Sale_Prob[18996][1][323]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][323]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][324] = {}
	tCoatWarehouse_Sale_Prob[18996][1][324]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][324]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][324]["Item_1"] = 183385
	tCoatWarehouse_Sale_Prob[18996][1][324]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][324]["Index"] = 324
	tCoatWarehouse_Sale_Prob[18996][1][324]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][324]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][325] = {}
	tCoatWarehouse_Sale_Prob[18996][1][325]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][325]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][325]["Item_1"] = 183395
	tCoatWarehouse_Sale_Prob[18996][1][325]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][325]["Index"] = 325
	tCoatWarehouse_Sale_Prob[18996][1][325]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][325]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][326] = {}
	tCoatWarehouse_Sale_Prob[18996][1][326]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][326]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][326]["Item_1"] = 183345
	tCoatWarehouse_Sale_Prob[18996][1][326]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][326]["Index"] = 326
	tCoatWarehouse_Sale_Prob[18996][1][326]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][326]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][327] = {}
	tCoatWarehouse_Sale_Prob[18996][1][327]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][327]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][327]["Item_1"] = 184345
	tCoatWarehouse_Sale_Prob[18996][1][327]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][327]["Index"] = 327
	tCoatWarehouse_Sale_Prob[18996][1][327]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][327]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][328] = {}
	tCoatWarehouse_Sale_Prob[18996][1][328]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][328]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][328]["Item_1"] = 184315
	tCoatWarehouse_Sale_Prob[18996][1][328]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][328]["Index"] = 328
	tCoatWarehouse_Sale_Prob[18996][1][328]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][328]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][329] = {}
	tCoatWarehouse_Sale_Prob[18996][1][329]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][329]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][329]["Item_1"] = 183465
	tCoatWarehouse_Sale_Prob[18996][1][329]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][329]["Index"] = 329
	tCoatWarehouse_Sale_Prob[18996][1][329]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][329]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][330] = {}
	tCoatWarehouse_Sale_Prob[18996][1][330]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][330]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][330]["Item_1"] = 192395
	tCoatWarehouse_Sale_Prob[18996][1][330]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][330]["Index"] = 330
	tCoatWarehouse_Sale_Prob[18996][1][330]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][330]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][331] = {}
	tCoatWarehouse_Sale_Prob[18996][1][331]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][331]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][331]["Item_1"] = 187605
	tCoatWarehouse_Sale_Prob[18996][1][331]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][331]["Index"] = 331
	tCoatWarehouse_Sale_Prob[18996][1][331]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][331]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][332] = {}
	tCoatWarehouse_Sale_Prob[18996][1][332]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][332]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18996][1][332]["Item_1"] = 189155
	tCoatWarehouse_Sale_Prob[18996][1][332]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][332]["Index"] = 332
	tCoatWarehouse_Sale_Prob[18996][1][332]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][332]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][333] = {}
	tCoatWarehouse_Sale_Prob[18996][1][333]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][333]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][333]["Item_1"] = 192575
	tCoatWarehouse_Sale_Prob[18996][1][333]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][333]["Index"] = 333
	tCoatWarehouse_Sale_Prob[18996][1][333]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][333]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][334] = {}
	tCoatWarehouse_Sale_Prob[18996][1][334]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][334]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][334]["Item_1"] = 192565
	tCoatWarehouse_Sale_Prob[18996][1][334]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][334]["Index"] = 334
	tCoatWarehouse_Sale_Prob[18996][1][334]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][334]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][335] = {}
	tCoatWarehouse_Sale_Prob[18996][1][335]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][335]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18996][1][335]["Item_1"] = 188085
	tCoatWarehouse_Sale_Prob[18996][1][335]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][335]["Index"] = 335
	tCoatWarehouse_Sale_Prob[18996][1][335]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][335]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][336] = {}
	tCoatWarehouse_Sale_Prob[18996][1][336]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][336]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18996][1][336]["Item_1"] = 193025
	tCoatWarehouse_Sale_Prob[18996][1][336]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][336]["Index"] = 336
	tCoatWarehouse_Sale_Prob[18996][1][336]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][336]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][337] = {}
	tCoatWarehouse_Sale_Prob[18996][1][337]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][337]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18996][1][337]["Item_1"] = 193035
	tCoatWarehouse_Sale_Prob[18996][1][337]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][337]["Index"] = 337
	tCoatWarehouse_Sale_Prob[18996][1][337]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][337]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18996][1][338] = {}
	tCoatWarehouse_Sale_Prob[18996][1][338]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][338]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][338]["Item_1"] = 200010
	tCoatWarehouse_Sale_Prob[18996][1][338]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][338]["Index"] = 338
	tCoatWarehouse_Sale_Prob[18996][1][338]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][338]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][339] = {}
	tCoatWarehouse_Sale_Prob[18996][1][339]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][339]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][339]["Item_1"] = 200108
	tCoatWarehouse_Sale_Prob[18996][1][339]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][339]["Index"] = 339
	tCoatWarehouse_Sale_Prob[18996][1][339]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][339]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][340] = {}
	tCoatWarehouse_Sale_Prob[18996][1][340]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][340]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][340]["Item_1"] = 200009
	tCoatWarehouse_Sale_Prob[18996][1][340]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][340]["Index"] = 340
	tCoatWarehouse_Sale_Prob[18996][1][340]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][340]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][341] = {}
	tCoatWarehouse_Sale_Prob[18996][1][341]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][341]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][341]["Item_1"] = 200107
	tCoatWarehouse_Sale_Prob[18996][1][341]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][341]["Index"] = 341
	tCoatWarehouse_Sale_Prob[18996][1][341]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][341]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][342] = {}
	tCoatWarehouse_Sale_Prob[18996][1][342]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][342]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][342]["Item_1"] = 200407
	tCoatWarehouse_Sale_Prob[18996][1][342]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][342]["Index"] = 342
	tCoatWarehouse_Sale_Prob[18996][1][342]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][342]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][343] = {}
	tCoatWarehouse_Sale_Prob[18996][1][343]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][343]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][343]["Item_1"] = 200413
	tCoatWarehouse_Sale_Prob[18996][1][343]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][343]["Index"] = 343
	tCoatWarehouse_Sale_Prob[18996][1][343]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][343]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][344] = {}
	tCoatWarehouse_Sale_Prob[18996][1][344]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][344]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][344]["Item_1"] = 200420
	tCoatWarehouse_Sale_Prob[18996][1][344]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][344]["Index"] = 344
	tCoatWarehouse_Sale_Prob[18996][1][344]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][344]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][345] = {}
	tCoatWarehouse_Sale_Prob[18996][1][345]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][345]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][345]["Item_1"] = 200403
	tCoatWarehouse_Sale_Prob[18996][1][345]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][345]["Index"] = 345
	tCoatWarehouse_Sale_Prob[18996][1][345]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][345]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][346] = {}
	tCoatWarehouse_Sale_Prob[18996][1][346]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][346]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][346]["Item_1"] = 200411
	tCoatWarehouse_Sale_Prob[18996][1][346]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][346]["Index"] = 346
	tCoatWarehouse_Sale_Prob[18996][1][346]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][346]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][347] = {}
	tCoatWarehouse_Sale_Prob[18996][1][347]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][347]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][347]["Item_1"] = 200414
	tCoatWarehouse_Sale_Prob[18996][1][347]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][347]["Index"] = 347
	tCoatWarehouse_Sale_Prob[18996][1][347]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][347]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][348] = {}
	tCoatWarehouse_Sale_Prob[18996][1][348]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][348]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][348]["Item_1"] = 200415
	tCoatWarehouse_Sale_Prob[18996][1][348]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][348]["Index"] = 348
	tCoatWarehouse_Sale_Prob[18996][1][348]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][348]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][349] = {}
	tCoatWarehouse_Sale_Prob[18996][1][349]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][349]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][349]["Item_1"] = 200418
	tCoatWarehouse_Sale_Prob[18996][1][349]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][349]["Index"] = 349
	tCoatWarehouse_Sale_Prob[18996][1][349]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][349]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][350] = {}
	tCoatWarehouse_Sale_Prob[18996][1][350]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][350]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][350]["Item_1"] = 200562
	tCoatWarehouse_Sale_Prob[18996][1][350]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][350]["Index"] = 350
	tCoatWarehouse_Sale_Prob[18996][1][350]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][350]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][351] = {}
	tCoatWarehouse_Sale_Prob[18996][1][351]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][351]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][351]["Item_1"] = 200438
	tCoatWarehouse_Sale_Prob[18996][1][351]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][351]["Index"] = 351
	tCoatWarehouse_Sale_Prob[18996][1][351]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][351]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][352] = {}
	tCoatWarehouse_Sale_Prob[18996][1][352]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][352]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][352]["Item_1"] = 200444
	tCoatWarehouse_Sale_Prob[18996][1][352]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][352]["Index"] = 352
	tCoatWarehouse_Sale_Prob[18996][1][352]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][352]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][353] = {}
	tCoatWarehouse_Sale_Prob[18996][1][353]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][353]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][353]["Item_1"] = 200443
	tCoatWarehouse_Sale_Prob[18996][1][353]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][353]["Index"] = 353
	tCoatWarehouse_Sale_Prob[18996][1][353]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][353]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][354] = {}
	tCoatWarehouse_Sale_Prob[18996][1][354]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][354]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][354]["Item_1"] = 200476
	tCoatWarehouse_Sale_Prob[18996][1][354]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][354]["Index"] = 354
	tCoatWarehouse_Sale_Prob[18996][1][354]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][354]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][355] = {}
	tCoatWarehouse_Sale_Prob[18996][1][355]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][355]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][355]["Item_1"] = 200491
	tCoatWarehouse_Sale_Prob[18996][1][355]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][355]["Index"] = 355
	tCoatWarehouse_Sale_Prob[18996][1][355]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][355]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][356] = {}
	tCoatWarehouse_Sale_Prob[18996][1][356]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][356]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][356]["Item_1"] = 200492
	tCoatWarehouse_Sale_Prob[18996][1][356]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][356]["Index"] = 356
	tCoatWarehouse_Sale_Prob[18996][1][356]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][356]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][357] = {}
	tCoatWarehouse_Sale_Prob[18996][1][357]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][357]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][357]["Item_1"] = 200503
	tCoatWarehouse_Sale_Prob[18996][1][357]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][357]["Index"] = 357
	tCoatWarehouse_Sale_Prob[18996][1][357]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][357]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][358] = {}
	tCoatWarehouse_Sale_Prob[18996][1][358]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][358]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][358]["Item_1"] = 200514
	tCoatWarehouse_Sale_Prob[18996][1][358]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][358]["Index"] = 358
	tCoatWarehouse_Sale_Prob[18996][1][358]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][358]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][359] = {}
	tCoatWarehouse_Sale_Prob[18996][1][359]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][359]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][359]["Item_1"] = 200528
	tCoatWarehouse_Sale_Prob[18996][1][359]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][359]["Index"] = 359
	tCoatWarehouse_Sale_Prob[18996][1][359]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][359]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][360] = {}
	tCoatWarehouse_Sale_Prob[18996][1][360]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][360]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][360]["Item_1"] = 200421
	tCoatWarehouse_Sale_Prob[18996][1][360]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][360]["Index"] = 360
	tCoatWarehouse_Sale_Prob[18996][1][360]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][360]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][361] = {}
	tCoatWarehouse_Sale_Prob[18996][1][361]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][361]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][361]["Item_1"] = 200499
	tCoatWarehouse_Sale_Prob[18996][1][361]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][361]["Index"] = 361
	tCoatWarehouse_Sale_Prob[18996][1][361]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][361]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][362] = {}
	tCoatWarehouse_Sale_Prob[18996][1][362]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][362]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][362]["Item_1"] = 200481
	tCoatWarehouse_Sale_Prob[18996][1][362]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][362]["Index"] = 362
	tCoatWarehouse_Sale_Prob[18996][1][362]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][362]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][363] = {}
	tCoatWarehouse_Sale_Prob[18996][1][363]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][363]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][363]["Item_1"] = 200417
	tCoatWarehouse_Sale_Prob[18996][1][363]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][363]["Index"] = 363
	tCoatWarehouse_Sale_Prob[18996][1][363]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][363]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][364] = {}
	tCoatWarehouse_Sale_Prob[18996][1][364]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][364]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][364]["Item_1"] = 200490
	tCoatWarehouse_Sale_Prob[18996][1][364]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][364]["Index"] = 364
	tCoatWarehouse_Sale_Prob[18996][1][364]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][364]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][365] = {}
	tCoatWarehouse_Sale_Prob[18996][1][365]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][365]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][365]["Item_1"] = 200426
	tCoatWarehouse_Sale_Prob[18996][1][365]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][365]["Index"] = 365
	tCoatWarehouse_Sale_Prob[18996][1][365]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][365]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][366] = {}
	tCoatWarehouse_Sale_Prob[18996][1][366]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][366]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][366]["Item_1"] = 200474
	tCoatWarehouse_Sale_Prob[18996][1][366]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][366]["Index"] = 366
	tCoatWarehouse_Sale_Prob[18996][1][366]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][366]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][367] = {}
	tCoatWarehouse_Sale_Prob[18996][1][367]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][367]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][367]["Item_1"] = 200487
	tCoatWarehouse_Sale_Prob[18996][1][367]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][367]["Index"] = 367
	tCoatWarehouse_Sale_Prob[18996][1][367]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][367]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][368] = {}
	tCoatWarehouse_Sale_Prob[18996][1][368]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][368]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][368]["Item_1"] = 200488
	tCoatWarehouse_Sale_Prob[18996][1][368]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][368]["Index"] = 368
	tCoatWarehouse_Sale_Prob[18996][1][368]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][368]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][369] = {}
	tCoatWarehouse_Sale_Prob[18996][1][369]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][369]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][369]["Item_1"] = 200433
	tCoatWarehouse_Sale_Prob[18996][1][369]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][369]["Index"] = 369
	tCoatWarehouse_Sale_Prob[18996][1][369]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][369]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][370] = {}
	tCoatWarehouse_Sale_Prob[18996][1][370]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][370]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][370]["Item_1"] = 200459
	tCoatWarehouse_Sale_Prob[18996][1][370]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][370]["Index"] = 370
	tCoatWarehouse_Sale_Prob[18996][1][370]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][370]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][371] = {}
	tCoatWarehouse_Sale_Prob[18996][1][371]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][371]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][371]["Item_1"] = 200412
	tCoatWarehouse_Sale_Prob[18996][1][371]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][371]["Index"] = 371
	tCoatWarehouse_Sale_Prob[18996][1][371]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][371]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][372] = {}
	tCoatWarehouse_Sale_Prob[18996][1][372]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][372]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18996][1][372]["Item_1"] = 200493
	tCoatWarehouse_Sale_Prob[18996][1][372]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18996][1][372]["Index"] = 372
	tCoatWarehouse_Sale_Prob[18996][1][372]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18996][1][372]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18996][1][373] = {}
	tCoatWarehouse_Sale_Prob[18996][1][373]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][373]["ItemChance"] = 1500
	tCoatWarehouse_Sale_Prob[18996][1][373]["Item_1"] = 3008224
	tCoatWarehouse_Sale_Prob[18996][1][373]["Index"] = 373
	tCoatWarehouse_Sale_Prob[18996][1][373]["Stars"] = 0
	tCoatWarehouse_Sale_Prob[18996][1][373]["Type"] = 0

	tCoatWarehouse_Sale_Prob[18996][1][374] = {}
	tCoatWarehouse_Sale_Prob[18996][1][374]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][374]["ItemChance"] = 100
	tCoatWarehouse_Sale_Prob[18996][1][374]["Item_1"] = 3008223
	tCoatWarehouse_Sale_Prob[18996][1][374]["Index"] = 374
	tCoatWarehouse_Sale_Prob[18996][1][374]["Stars"] = 0
	tCoatWarehouse_Sale_Prob[18996][1][374]["Type"] = 0

	tCoatWarehouse_Sale_Prob[18996][1][375] = {}
	tCoatWarehouse_Sale_Prob[18996][1][375]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18996][1][375]["ItemChance"] = 400
	tCoatWarehouse_Sale_Prob[18996][1][375]["Item_1"] = 3008226
	tCoatWarehouse_Sale_Prob[18996][1][375]["Index"] = 375
	tCoatWarehouse_Sale_Prob[18996][1][375]["Stars"] = 0
	tCoatWarehouse_Sale_Prob[18996][1][375]["Type"] = 0



	--锦衣阁
	tCoatWarehouse_Sale_Prob[18997] = {}
	tCoatWarehouse_Sale_Prob[18997][1] = {}
	tCoatWarehouse_Sale_Prob[18997][1]["ItemChanceSum"] = 10000

	tCoatWarehouse_Sale_Prob[18997][1][1] = {}
	tCoatWarehouse_Sale_Prob[18997][1][1]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][1]["ItemChance"] = 87
	tCoatWarehouse_Sale_Prob[18997][1][1]["Item_1"] = 194300
	tCoatWarehouse_Sale_Prob[18997][1][1]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][1]["Index"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][1]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][1]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][1]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][1]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][2] = {}
	tCoatWarehouse_Sale_Prob[18997][1][2]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][2]["ItemChance"] = 87
	tCoatWarehouse_Sale_Prob[18997][1][2]["Item_1"] = 193515
	tCoatWarehouse_Sale_Prob[18997][1][2]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][2]["Index"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][2]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][2]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][2]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][2]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][3] = {}
	tCoatWarehouse_Sale_Prob[18997][1][3]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][3]["ItemChance"] = 87
	tCoatWarehouse_Sale_Prob[18997][1][3]["Item_1"] = 192555
	tCoatWarehouse_Sale_Prob[18997][1][3]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][3]["Index"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][3]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][3]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][3]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][3]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][4] = {}
	tCoatWarehouse_Sale_Prob[18997][1][4]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][4]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][4]["Item_1"] = 192345
	tCoatWarehouse_Sale_Prob[18997][1][4]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][4]["Index"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][4]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][4]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][4]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][4]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][5] = {}
	tCoatWarehouse_Sale_Prob[18997][1][5]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][5]["ItemChance"] = 87
	tCoatWarehouse_Sale_Prob[18997][1][5]["Item_1"] = 189095
	tCoatWarehouse_Sale_Prob[18997][1][5]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][5]["Index"] = 5
	tCoatWarehouse_Sale_Prob[18997][1][5]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][5]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][5]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][5]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][6] = {}
	tCoatWarehouse_Sale_Prob[18997][1][6]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][6]["ItemChance"] = 87
	tCoatWarehouse_Sale_Prob[18997][1][6]["Item_1"] = 189055
	tCoatWarehouse_Sale_Prob[18997][1][6]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][6]["Index"] = 6
	tCoatWarehouse_Sale_Prob[18997][1][6]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][6]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][6]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][6]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][7] = {}
	tCoatWarehouse_Sale_Prob[18997][1][7]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][7]["ItemChance"] = 87
	tCoatWarehouse_Sale_Prob[18997][1][7]["Item_1"] = 188905
	tCoatWarehouse_Sale_Prob[18997][1][7]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][7]["Index"] = 7
	tCoatWarehouse_Sale_Prob[18997][1][7]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][7]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][7]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][7]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][8] = {}
	tCoatWarehouse_Sale_Prob[18997][1][8]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][8]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][8]["Item_1"] = 184355
	tCoatWarehouse_Sale_Prob[18997][1][8]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][8]["Index"] = 8
	tCoatWarehouse_Sale_Prob[18997][1][8]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][8]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][8]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][8]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][9] = {}
	tCoatWarehouse_Sale_Prob[18997][1][9]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][9]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][9]["Item_1"] = 184365
	tCoatWarehouse_Sale_Prob[18997][1][9]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][9]["Index"] = 9
	tCoatWarehouse_Sale_Prob[18997][1][9]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][9]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][9]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][9]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][10] = {}
	tCoatWarehouse_Sale_Prob[18997][1][10]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][10]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][10]["Item_1"] = 187475
	tCoatWarehouse_Sale_Prob[18997][1][10]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][10]["Index"] = 10
	tCoatWarehouse_Sale_Prob[18997][1][10]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][10]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][10]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][10]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][11] = {}
	tCoatWarehouse_Sale_Prob[18997][1][11]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][11]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][11]["Item_1"] = 184385
	tCoatWarehouse_Sale_Prob[18997][1][11]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][11]["Index"] = 11
	tCoatWarehouse_Sale_Prob[18997][1][11]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][11]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][11]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][11]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][12] = {}
	tCoatWarehouse_Sale_Prob[18997][1][12]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][12]["ItemChance"] = 87
	tCoatWarehouse_Sale_Prob[18997][1][12]["Item_1"] = 183485
	tCoatWarehouse_Sale_Prob[18997][1][12]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][12]["Index"] = 12
	tCoatWarehouse_Sale_Prob[18997][1][12]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][12]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][12]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][12]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][13] = {}
	tCoatWarehouse_Sale_Prob[18997][1][13]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][13]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][13]["Item_1"] = 188575
	tCoatWarehouse_Sale_Prob[18997][1][13]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][13]["Index"] = 13
	tCoatWarehouse_Sale_Prob[18997][1][13]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][13]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][13]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][13]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][14] = {}
	tCoatWarehouse_Sale_Prob[18997][1][14]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][14]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][14]["Item_1"] = 192685
	tCoatWarehouse_Sale_Prob[18997][1][14]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][14]["Index"] = 14
	tCoatWarehouse_Sale_Prob[18997][1][14]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][14]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][14]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][14]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][15] = {}
	tCoatWarehouse_Sale_Prob[18997][1][15]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][15]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][15]["Item_1"] = 192675
	tCoatWarehouse_Sale_Prob[18997][1][15]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][15]["Index"] = 15
	tCoatWarehouse_Sale_Prob[18997][1][15]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][15]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][15]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][15]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][16] = {}
	tCoatWarehouse_Sale_Prob[18997][1][16]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][16]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][16]["Item_1"] = 192665
	tCoatWarehouse_Sale_Prob[18997][1][16]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][16]["Index"] = 16
	tCoatWarehouse_Sale_Prob[18997][1][16]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][16]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][16]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][16]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][17] = {}
	tCoatWarehouse_Sale_Prob[18997][1][17]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][17]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][17]["Item_1"] = 192655
	tCoatWarehouse_Sale_Prob[18997][1][17]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][17]["Index"] = 17
	tCoatWarehouse_Sale_Prob[18997][1][17]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][17]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][17]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][17]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][18] = {}
	tCoatWarehouse_Sale_Prob[18997][1][18]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][18]["ItemChance"] = 92
	tCoatWarehouse_Sale_Prob[18997][1][18]["Item_1"] = 192300
	tCoatWarehouse_Sale_Prob[18997][1][18]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][18]["Index"] = 18
	tCoatWarehouse_Sale_Prob[18997][1][18]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][18]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][18]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][18]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][19] = {}
	tCoatWarehouse_Sale_Prob[18997][1][19]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][19]["ItemChance"] = 87
	tCoatWarehouse_Sale_Prob[18997][1][19]["Item_1"] = 189105
	tCoatWarehouse_Sale_Prob[18997][1][19]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][19]["Index"] = 19
	tCoatWarehouse_Sale_Prob[18997][1][19]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][19]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][19]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][19]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][20] = {}
	tCoatWarehouse_Sale_Prob[18997][1][20]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][20]["ItemChance"] = 87
	tCoatWarehouse_Sale_Prob[18997][1][20]["Item_1"] = 188285
	tCoatWarehouse_Sale_Prob[18997][1][20]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][20]["Index"] = 20
	tCoatWarehouse_Sale_Prob[18997][1][20]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][20]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][20]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][20]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][21] = {}
	tCoatWarehouse_Sale_Prob[18997][1][21]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][21]["ItemChance"] = 87
	tCoatWarehouse_Sale_Prob[18997][1][21]["Item_1"] = 183385
	tCoatWarehouse_Sale_Prob[18997][1][21]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][21]["Index"] = 21
	tCoatWarehouse_Sale_Prob[18997][1][21]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][21]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][21]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][21]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][22] = {}
	tCoatWarehouse_Sale_Prob[18997][1][22]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][22]["ItemChance"] = 87
	tCoatWarehouse_Sale_Prob[18997][1][22]["Item_1"] = 183395
	tCoatWarehouse_Sale_Prob[18997][1][22]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][22]["Index"] = 22
	tCoatWarehouse_Sale_Prob[18997][1][22]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][22]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][22]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][22]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][23] = {}
	tCoatWarehouse_Sale_Prob[18997][1][23]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][23]["ItemChance"] = 87
	tCoatWarehouse_Sale_Prob[18997][1][23]["Item_1"] = 183345
	tCoatWarehouse_Sale_Prob[18997][1][23]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][23]["Index"] = 23
	tCoatWarehouse_Sale_Prob[18997][1][23]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][23]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][23]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][23]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][24] = {}
	tCoatWarehouse_Sale_Prob[18997][1][24]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][24]["ItemChance"] = 87
	tCoatWarehouse_Sale_Prob[18997][1][24]["Item_1"] = 184345
	tCoatWarehouse_Sale_Prob[18997][1][24]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][24]["Index"] = 24
	tCoatWarehouse_Sale_Prob[18997][1][24]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][24]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][24]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][24]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][25] = {}
	tCoatWarehouse_Sale_Prob[18997][1][25]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][25]["ItemChance"] = 87
	tCoatWarehouse_Sale_Prob[18997][1][25]["Item_1"] = 184315
	tCoatWarehouse_Sale_Prob[18997][1][25]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][25]["Index"] = 25
	tCoatWarehouse_Sale_Prob[18997][1][25]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][25]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][25]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][25]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][26] = {}
	tCoatWarehouse_Sale_Prob[18997][1][26]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][26]["ItemChance"] = 87
	tCoatWarehouse_Sale_Prob[18997][1][26]["Item_1"] = 183465
	tCoatWarehouse_Sale_Prob[18997][1][26]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][26]["Index"] = 26
	tCoatWarehouse_Sale_Prob[18997][1][26]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][26]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][26]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][26]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][27] = {}
	tCoatWarehouse_Sale_Prob[18997][1][27]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][27]["ItemChance"] = 87
	tCoatWarehouse_Sale_Prob[18997][1][27]["Item_1"] = 192395
	tCoatWarehouse_Sale_Prob[18997][1][27]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][27]["Index"] = 27
	tCoatWarehouse_Sale_Prob[18997][1][27]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][27]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][27]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][27]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][28] = {}
	tCoatWarehouse_Sale_Prob[18997][1][28]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][28]["ItemChance"] = 87
	tCoatWarehouse_Sale_Prob[18997][1][28]["Item_1"] = 187605
	tCoatWarehouse_Sale_Prob[18997][1][28]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][28]["Index"] = 28
	tCoatWarehouse_Sale_Prob[18997][1][28]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][28]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][28]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][28]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][29] = {}
	tCoatWarehouse_Sale_Prob[18997][1][29]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][29]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][29]["Item_1"] = 189155
	tCoatWarehouse_Sale_Prob[18997][1][29]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][29]["Index"] = 29
	tCoatWarehouse_Sale_Prob[18997][1][29]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][29]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][29]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][29]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][30] = {}
	tCoatWarehouse_Sale_Prob[18997][1][30]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][30]["ItemChance"] = 87
	tCoatWarehouse_Sale_Prob[18997][1][30]["Item_1"] = 192575
	tCoatWarehouse_Sale_Prob[18997][1][30]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][30]["Index"] = 30
	tCoatWarehouse_Sale_Prob[18997][1][30]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][30]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][30]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][30]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][31] = {}
	tCoatWarehouse_Sale_Prob[18997][1][31]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][31]["ItemChance"] = 87
	tCoatWarehouse_Sale_Prob[18997][1][31]["Item_1"] = 192565
	tCoatWarehouse_Sale_Prob[18997][1][31]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][31]["Index"] = 31
	tCoatWarehouse_Sale_Prob[18997][1][31]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][31]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][31]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][31]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][32] = {}
	tCoatWarehouse_Sale_Prob[18997][1][32]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][32]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][32]["Item_1"] = 188085
	tCoatWarehouse_Sale_Prob[18997][1][32]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][32]["Index"] = 32
	tCoatWarehouse_Sale_Prob[18997][1][32]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][32]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][32]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][32]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][33] = {}
	tCoatWarehouse_Sale_Prob[18997][1][33]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][33]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][33]["Item_1"] = 193025
	tCoatWarehouse_Sale_Prob[18997][1][33]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][33]["Index"] = 33
	tCoatWarehouse_Sale_Prob[18997][1][33]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][33]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][33]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][33]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][34] = {}
	tCoatWarehouse_Sale_Prob[18997][1][34]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][34]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][34]["Item_1"] = 193035
	tCoatWarehouse_Sale_Prob[18997][1][34]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][34]["Index"] = 34
	tCoatWarehouse_Sale_Prob[18997][1][34]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][34]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][34]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][34]["Item_2"] = 3008270

	tCoatWarehouse_Sale_Prob[18997][1][35] = {}
	tCoatWarehouse_Sale_Prob[18997][1][35]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][35]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][35]["Item_1"] = 200010
	tCoatWarehouse_Sale_Prob[18997][1][35]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][35]["Index"] = 35
	tCoatWarehouse_Sale_Prob[18997][1][35]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][35]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][35]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][35]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][36] = {}
	tCoatWarehouse_Sale_Prob[18997][1][36]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][36]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][36]["Item_1"] = 200108
	tCoatWarehouse_Sale_Prob[18997][1][36]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][36]["Index"] = 36
	tCoatWarehouse_Sale_Prob[18997][1][36]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][36]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][36]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][36]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][37] = {}
	tCoatWarehouse_Sale_Prob[18997][1][37]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][37]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][37]["Item_1"] = 200009
	tCoatWarehouse_Sale_Prob[18997][1][37]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][37]["Index"] = 37
	tCoatWarehouse_Sale_Prob[18997][1][37]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][37]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][37]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][37]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][38] = {}
	tCoatWarehouse_Sale_Prob[18997][1][38]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][38]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][38]["Item_1"] = 200107
	tCoatWarehouse_Sale_Prob[18997][1][38]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][38]["Index"] = 38
	tCoatWarehouse_Sale_Prob[18997][1][38]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][38]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][38]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][38]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][39] = {}
	tCoatWarehouse_Sale_Prob[18997][1][39]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][39]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][39]["Item_1"] = 200407
	tCoatWarehouse_Sale_Prob[18997][1][39]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][39]["Index"] = 39
	tCoatWarehouse_Sale_Prob[18997][1][39]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][39]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][39]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][39]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][40] = {}
	tCoatWarehouse_Sale_Prob[18997][1][40]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][40]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][40]["Item_1"] = 200413
	tCoatWarehouse_Sale_Prob[18997][1][40]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][40]["Index"] = 40
	tCoatWarehouse_Sale_Prob[18997][1][40]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][40]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][40]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][40]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][41] = {}
	tCoatWarehouse_Sale_Prob[18997][1][41]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][41]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][41]["Item_1"] = 200420
	tCoatWarehouse_Sale_Prob[18997][1][41]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][41]["Index"] = 41
	tCoatWarehouse_Sale_Prob[18997][1][41]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][41]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][41]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][41]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][42] = {}
	tCoatWarehouse_Sale_Prob[18997][1][42]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][42]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][42]["Item_1"] = 200403
	tCoatWarehouse_Sale_Prob[18997][1][42]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][42]["Index"] = 42
	tCoatWarehouse_Sale_Prob[18997][1][42]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][42]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][42]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][42]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][43] = {}
	tCoatWarehouse_Sale_Prob[18997][1][43]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][43]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][43]["Item_1"] = 200411
	tCoatWarehouse_Sale_Prob[18997][1][43]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][43]["Index"] = 43
	tCoatWarehouse_Sale_Prob[18997][1][43]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][43]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][43]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][43]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][44] = {}
	tCoatWarehouse_Sale_Prob[18997][1][44]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][44]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][44]["Item_1"] = 200414
	tCoatWarehouse_Sale_Prob[18997][1][44]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][44]["Index"] = 44
	tCoatWarehouse_Sale_Prob[18997][1][44]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][44]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][44]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][44]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][45] = {}
	tCoatWarehouse_Sale_Prob[18997][1][45]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][45]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][45]["Item_1"] = 200415
	tCoatWarehouse_Sale_Prob[18997][1][45]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][45]["Index"] = 45
	tCoatWarehouse_Sale_Prob[18997][1][45]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][45]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][45]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][45]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][46] = {}
	tCoatWarehouse_Sale_Prob[18997][1][46]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][46]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][46]["Item_1"] = 200418
	tCoatWarehouse_Sale_Prob[18997][1][46]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][46]["Index"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][46]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][46]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][46]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][46]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][47] = {}
	tCoatWarehouse_Sale_Prob[18997][1][47]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][47]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][47]["Item_1"] = 200562
	tCoatWarehouse_Sale_Prob[18997][1][47]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][47]["Index"] = 47
	tCoatWarehouse_Sale_Prob[18997][1][47]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][47]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][47]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][47]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][48] = {}
	tCoatWarehouse_Sale_Prob[18997][1][48]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][48]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][48]["Item_1"] = 200438
	tCoatWarehouse_Sale_Prob[18997][1][48]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][48]["Index"] = 48
	tCoatWarehouse_Sale_Prob[18997][1][48]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][48]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][48]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][48]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][49] = {}
	tCoatWarehouse_Sale_Prob[18997][1][49]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][49]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][49]["Item_1"] = 200444
	tCoatWarehouse_Sale_Prob[18997][1][49]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][49]["Index"] = 49
	tCoatWarehouse_Sale_Prob[18997][1][49]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][49]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][49]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][49]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][50] = {}
	tCoatWarehouse_Sale_Prob[18997][1][50]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][50]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][50]["Item_1"] = 200443
	tCoatWarehouse_Sale_Prob[18997][1][50]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][50]["Index"] = 50
	tCoatWarehouse_Sale_Prob[18997][1][50]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][50]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][50]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][50]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][51] = {}
	tCoatWarehouse_Sale_Prob[18997][1][51]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][51]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][51]["Item_1"] = 200476
	tCoatWarehouse_Sale_Prob[18997][1][51]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][51]["Index"] = 51
	tCoatWarehouse_Sale_Prob[18997][1][51]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][51]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][51]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][51]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][52] = {}
	tCoatWarehouse_Sale_Prob[18997][1][52]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][52]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][52]["Item_1"] = 200491
	tCoatWarehouse_Sale_Prob[18997][1][52]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][52]["Index"] = 52
	tCoatWarehouse_Sale_Prob[18997][1][52]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][52]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][52]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][52]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][53] = {}
	tCoatWarehouse_Sale_Prob[18997][1][53]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][53]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][53]["Item_1"] = 200492
	tCoatWarehouse_Sale_Prob[18997][1][53]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][53]["Index"] = 53
	tCoatWarehouse_Sale_Prob[18997][1][53]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][53]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][53]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][53]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][54] = {}
	tCoatWarehouse_Sale_Prob[18997][1][54]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][54]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][54]["Item_1"] = 200503
	tCoatWarehouse_Sale_Prob[18997][1][54]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][54]["Index"] = 54
	tCoatWarehouse_Sale_Prob[18997][1][54]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][54]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][54]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][54]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][55] = {}
	tCoatWarehouse_Sale_Prob[18997][1][55]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][55]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][55]["Item_1"] = 200514
	tCoatWarehouse_Sale_Prob[18997][1][55]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][55]["Index"] = 55
	tCoatWarehouse_Sale_Prob[18997][1][55]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][55]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][55]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][55]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][56] = {}
	tCoatWarehouse_Sale_Prob[18997][1][56]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][56]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][56]["Item_1"] = 200528
	tCoatWarehouse_Sale_Prob[18997][1][56]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][56]["Index"] = 56
	tCoatWarehouse_Sale_Prob[18997][1][56]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][56]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][56]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][56]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][57] = {}
	tCoatWarehouse_Sale_Prob[18997][1][57]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][57]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][57]["Item_1"] = 200421
	tCoatWarehouse_Sale_Prob[18997][1][57]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][57]["Index"] = 57
	tCoatWarehouse_Sale_Prob[18997][1][57]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][57]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][57]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][57]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][58] = {}
	tCoatWarehouse_Sale_Prob[18997][1][58]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][58]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][58]["Item_1"] = 200499
	tCoatWarehouse_Sale_Prob[18997][1][58]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][58]["Index"] = 58
	tCoatWarehouse_Sale_Prob[18997][1][58]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][58]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][58]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][58]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][59] = {}
	tCoatWarehouse_Sale_Prob[18997][1][59]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][59]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][59]["Item_1"] = 200481
	tCoatWarehouse_Sale_Prob[18997][1][59]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][59]["Index"] = 59
	tCoatWarehouse_Sale_Prob[18997][1][59]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][59]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][59]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][59]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][60] = {}
	tCoatWarehouse_Sale_Prob[18997][1][60]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][60]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][60]["Item_1"] = 200417
	tCoatWarehouse_Sale_Prob[18997][1][60]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][60]["Index"] = 60
	tCoatWarehouse_Sale_Prob[18997][1][60]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][60]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][60]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][60]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][61] = {}
	tCoatWarehouse_Sale_Prob[18997][1][61]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][61]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][61]["Item_1"] = 200490
	tCoatWarehouse_Sale_Prob[18997][1][61]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][61]["Index"] = 61
	tCoatWarehouse_Sale_Prob[18997][1][61]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][61]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][61]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][61]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][62] = {}
	tCoatWarehouse_Sale_Prob[18997][1][62]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][62]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][62]["Item_1"] = 200426
	tCoatWarehouse_Sale_Prob[18997][1][62]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][62]["Index"] = 62
	tCoatWarehouse_Sale_Prob[18997][1][62]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][62]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][62]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][62]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][63] = {}
	tCoatWarehouse_Sale_Prob[18997][1][63]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][63]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][63]["Item_1"] = 200474
	tCoatWarehouse_Sale_Prob[18997][1][63]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][63]["Index"] = 63
	tCoatWarehouse_Sale_Prob[18997][1][63]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][63]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][63]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][63]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][64] = {}
	tCoatWarehouse_Sale_Prob[18997][1][64]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][64]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][64]["Item_1"] = 200487
	tCoatWarehouse_Sale_Prob[18997][1][64]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][64]["Index"] = 64
	tCoatWarehouse_Sale_Prob[18997][1][64]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][64]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][64]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][64]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][65] = {}
	tCoatWarehouse_Sale_Prob[18997][1][65]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][65]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][65]["Item_1"] = 200488
	tCoatWarehouse_Sale_Prob[18997][1][65]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][65]["Index"] = 65
	tCoatWarehouse_Sale_Prob[18997][1][65]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][65]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][65]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][65]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][66] = {}
	tCoatWarehouse_Sale_Prob[18997][1][66]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][66]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][66]["Item_1"] = 200433
	tCoatWarehouse_Sale_Prob[18997][1][66]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][66]["Index"] = 66
	tCoatWarehouse_Sale_Prob[18997][1][66]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][66]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][66]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][66]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][67] = {}
	tCoatWarehouse_Sale_Prob[18997][1][67]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][67]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][67]["Item_1"] = 200459
	tCoatWarehouse_Sale_Prob[18997][1][67]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][67]["Index"] = 67
	tCoatWarehouse_Sale_Prob[18997][1][67]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][67]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][67]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][67]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][68] = {}
	tCoatWarehouse_Sale_Prob[18997][1][68]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][68]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][68]["Item_1"] = 200412
	tCoatWarehouse_Sale_Prob[18997][1][68]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][68]["Index"] = 68
	tCoatWarehouse_Sale_Prob[18997][1][68]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][68]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][68]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][68]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][69] = {}
	tCoatWarehouse_Sale_Prob[18997][1][69]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][69]["ItemChance"] = 46
	tCoatWarehouse_Sale_Prob[18997][1][69]["Item_1"] = 200493
	tCoatWarehouse_Sale_Prob[18997][1][69]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][69]["Index"] = 69
	tCoatWarehouse_Sale_Prob[18997][1][69]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][69]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][69]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][69]["Item_2"] = 3008323

	tCoatWarehouse_Sale_Prob[18997][1][70] = {}
	tCoatWarehouse_Sale_Prob[18997][1][70]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][70]["ItemChance"] = 109
	tCoatWarehouse_Sale_Prob[18997][1][70]["Item_1"] = 189085
	tCoatWarehouse_Sale_Prob[18997][1][70]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][70]["Index"] = 70
	tCoatWarehouse_Sale_Prob[18997][1][70]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][70]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][70]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][70]["Item_2"] = 3008266

	tCoatWarehouse_Sale_Prob[18997][1][71] = {}
	tCoatWarehouse_Sale_Prob[18997][1][71]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][71]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][71]["Item_1"] = 189145
	tCoatWarehouse_Sale_Prob[18997][1][71]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][71]["Index"] = 71
	tCoatWarehouse_Sale_Prob[18997][1][71]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][71]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][71]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][71]["Item_2"] = 3008266

	tCoatWarehouse_Sale_Prob[18997][1][72] = {}
	tCoatWarehouse_Sale_Prob[18997][1][72]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][72]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][72]["Item_1"] = 187575
	tCoatWarehouse_Sale_Prob[18997][1][72]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][72]["Index"] = 72
	tCoatWarehouse_Sale_Prob[18997][1][72]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][72]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][72]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][72]["Item_2"] = 3008266

	tCoatWarehouse_Sale_Prob[18997][1][73] = {}
	tCoatWarehouse_Sale_Prob[18997][1][73]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][73]["ItemChance"] = 109
	tCoatWarehouse_Sale_Prob[18997][1][73]["Item_1"] = 193115
	tCoatWarehouse_Sale_Prob[18997][1][73]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][73]["Index"] = 73
	tCoatWarehouse_Sale_Prob[18997][1][73]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][73]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][73]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][73]["Item_2"] = 3008266

	tCoatWarehouse_Sale_Prob[18997][1][74] = {}
	tCoatWarehouse_Sale_Prob[18997][1][74]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][74]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][74]["Item_1"] = 192495
	tCoatWarehouse_Sale_Prob[18997][1][74]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][74]["Index"] = 74
	tCoatWarehouse_Sale_Prob[18997][1][74]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][74]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][74]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][74]["Item_2"] = 3008266

	tCoatWarehouse_Sale_Prob[18997][1][75] = {}
	tCoatWarehouse_Sale_Prob[18997][1][75]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][75]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][75]["Item_1"] = 192425
	tCoatWarehouse_Sale_Prob[18997][1][75]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][75]["Index"] = 75
	tCoatWarehouse_Sale_Prob[18997][1][75]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][75]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][75]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][75]["Item_2"] = 3008266

	tCoatWarehouse_Sale_Prob[18997][1][76] = {}
	tCoatWarehouse_Sale_Prob[18997][1][76]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][76]["ItemChance"] = 109
	tCoatWarehouse_Sale_Prob[18997][1][76]["Item_1"] = 193195
	tCoatWarehouse_Sale_Prob[18997][1][76]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][76]["Index"] = 76
	tCoatWarehouse_Sale_Prob[18997][1][76]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][76]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][76]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][76]["Item_2"] = 3008266

	tCoatWarehouse_Sale_Prob[18997][1][77] = {}
	tCoatWarehouse_Sale_Prob[18997][1][77]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][77]["ItemChance"] = 109
	tCoatWarehouse_Sale_Prob[18997][1][77]["Item_1"] = 195375
	tCoatWarehouse_Sale_Prob[18997][1][77]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][77]["Index"] = 77
	tCoatWarehouse_Sale_Prob[18997][1][77]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][77]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][77]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][77]["Item_2"] = 3008266

	tCoatWarehouse_Sale_Prob[18997][1][78] = {}
	tCoatWarehouse_Sale_Prob[18997][1][78]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][78]["ItemChance"] = 109
	tCoatWarehouse_Sale_Prob[18997][1][78]["Item_1"] = 192615
	tCoatWarehouse_Sale_Prob[18997][1][78]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][78]["Index"] = 78
	tCoatWarehouse_Sale_Prob[18997][1][78]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][78]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][78]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][78]["Item_2"] = 3008266

	tCoatWarehouse_Sale_Prob[18997][1][79] = {}
	tCoatWarehouse_Sale_Prob[18997][1][79]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][79]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][79]["Item_1"] = 192635
	tCoatWarehouse_Sale_Prob[18997][1][79]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][79]["Index"] = 79
	tCoatWarehouse_Sale_Prob[18997][1][79]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][79]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][79]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][79]["Item_2"] = 3008266

	tCoatWarehouse_Sale_Prob[18997][1][80] = {}
	tCoatWarehouse_Sale_Prob[18997][1][80]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][80]["ItemChance"] = 109
	tCoatWarehouse_Sale_Prob[18997][1][80]["Item_1"] = 192695
	tCoatWarehouse_Sale_Prob[18997][1][80]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][80]["Index"] = 80
	tCoatWarehouse_Sale_Prob[18997][1][80]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][80]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][80]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][80]["Item_2"] = 3008266

	tCoatWarehouse_Sale_Prob[18997][1][81] = {}
	tCoatWarehouse_Sale_Prob[18997][1][81]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][81]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][81]["Item_1"] = 192785
	tCoatWarehouse_Sale_Prob[18997][1][81]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][81]["Index"] = 81
	tCoatWarehouse_Sale_Prob[18997][1][81]["Stars"] = 5
	tCoatWarehouse_Sale_Prob[18997][1][81]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][81]["bSaveTime"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][82] = {}
	tCoatWarehouse_Sale_Prob[18997][1][82]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][82]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][82]["Item_1"] = 192625
	tCoatWarehouse_Sale_Prob[18997][1][82]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][82]["Index"] = 82
	tCoatWarehouse_Sale_Prob[18997][1][82]["Stars"] = 5
	tCoatWarehouse_Sale_Prob[18997][1][82]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][82]["bSaveTime"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][83] = {}
	tCoatWarehouse_Sale_Prob[18997][1][83]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][83]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][83]["Item_1"] = 188675
	tCoatWarehouse_Sale_Prob[18997][1][83]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][83]["Index"] = 83
	tCoatWarehouse_Sale_Prob[18997][1][83]["Stars"] = 5
	tCoatWarehouse_Sale_Prob[18997][1][83]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][83]["bSaveTime"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][84] = {}
	tCoatWarehouse_Sale_Prob[18997][1][84]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][84]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][84]["Item_1"] = 192525
	tCoatWarehouse_Sale_Prob[18997][1][84]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][84]["Index"] = 84
	tCoatWarehouse_Sale_Prob[18997][1][84]["Stars"] = 5
	tCoatWarehouse_Sale_Prob[18997][1][84]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][84]["bSaveTime"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][85] = {}
	tCoatWarehouse_Sale_Prob[18997][1][85]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][85]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][85]["Item_1"] = 192311
	tCoatWarehouse_Sale_Prob[18997][1][85]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][85]["Index"] = 85
	tCoatWarehouse_Sale_Prob[18997][1][85]["Stars"] = 5
	tCoatWarehouse_Sale_Prob[18997][1][85]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][85]["bSaveTime"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][86] = {}
	tCoatWarehouse_Sale_Prob[18997][1][86]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][86]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][86]["Item_1"] = 188495
	tCoatWarehouse_Sale_Prob[18997][1][86]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][86]["Index"] = 86
	tCoatWarehouse_Sale_Prob[18997][1][86]["Stars"] = 5
	tCoatWarehouse_Sale_Prob[18997][1][86]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][86]["bSaveTime"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][87] = {}
	tCoatWarehouse_Sale_Prob[18997][1][87]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][87]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][87]["Item_1"] = 193295
	tCoatWarehouse_Sale_Prob[18997][1][87]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][87]["Index"] = 87
	tCoatWarehouse_Sale_Prob[18997][1][87]["Stars"] = 5
	tCoatWarehouse_Sale_Prob[18997][1][87]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][87]["bSaveTime"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][88] = {}
	tCoatWarehouse_Sale_Prob[18997][1][88]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][88]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][88]["Item_1"] = 192605
	tCoatWarehouse_Sale_Prob[18997][1][88]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][88]["Index"] = 88
	tCoatWarehouse_Sale_Prob[18997][1][88]["Stars"] = 5
	tCoatWarehouse_Sale_Prob[18997][1][88]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][88]["bSaveTime"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][89] = {}
	tCoatWarehouse_Sale_Prob[18997][1][89]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][89]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][89]["Item_1"] = 188265
	tCoatWarehouse_Sale_Prob[18997][1][89]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][89]["Index"] = 89
	tCoatWarehouse_Sale_Prob[18997][1][89]["Stars"] = 5
	tCoatWarehouse_Sale_Prob[18997][1][89]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][89]["bSaveTime"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][90] = {}
	tCoatWarehouse_Sale_Prob[18997][1][90]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][90]["ItemChance"] = 109
	tCoatWarehouse_Sale_Prob[18997][1][90]["Item_1"] = 187325
	tCoatWarehouse_Sale_Prob[18997][1][90]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][90]["Index"] = 90
	tCoatWarehouse_Sale_Prob[18997][1][90]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][90]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][90]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][90]["Item_2"] = 3008266

	tCoatWarehouse_Sale_Prob[18997][1][91] = {}
	tCoatWarehouse_Sale_Prob[18997][1][91]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][91]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][91]["Item_1"] = 200549
	tCoatWarehouse_Sale_Prob[18997][1][91]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][91]["Index"] = 91
	tCoatWarehouse_Sale_Prob[18997][1][91]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][91]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][91]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][91]["Item_2"] = 3008268

	tCoatWarehouse_Sale_Prob[18997][1][92] = {}
	tCoatWarehouse_Sale_Prob[18997][1][92]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][92]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][92]["Item_1"] = 200480
	tCoatWarehouse_Sale_Prob[18997][1][92]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][92]["Index"] = 92
	tCoatWarehouse_Sale_Prob[18997][1][92]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][92]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][92]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][92]["Item_2"] = 3008268

	tCoatWarehouse_Sale_Prob[18997][1][93] = {}
	tCoatWarehouse_Sale_Prob[18997][1][93]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][93]["ItemChance"] = 100
	tCoatWarehouse_Sale_Prob[18997][1][93]["Item_1"] = 200495
	tCoatWarehouse_Sale_Prob[18997][1][93]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][93]["Index"] = 93
	tCoatWarehouse_Sale_Prob[18997][1][93]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][93]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][93]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][93]["Item_2"] = 3008268

	tCoatWarehouse_Sale_Prob[18997][1][94] = {}
	tCoatWarehouse_Sale_Prob[18997][1][94]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][94]["ItemChance"] = 100
	tCoatWarehouse_Sale_Prob[18997][1][94]["Item_1"] = 200500
	tCoatWarehouse_Sale_Prob[18997][1][94]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][94]["Index"] = 94
	tCoatWarehouse_Sale_Prob[18997][1][94]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][94]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][94]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][94]["Item_2"] = 3008268

	tCoatWarehouse_Sale_Prob[18997][1][95] = {}
	tCoatWarehouse_Sale_Prob[18997][1][95]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][95]["ItemChance"] = 75
	tCoatWarehouse_Sale_Prob[18997][1][95]["Item_1"] = 194300
	tCoatWarehouse_Sale_Prob[18997][1][95]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][95]["Index"] = 95
	tCoatWarehouse_Sale_Prob[18997][1][95]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][95]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][96] = {}
	tCoatWarehouse_Sale_Prob[18997][1][96]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][96]["ItemChance"] = 50
	tCoatWarehouse_Sale_Prob[18997][1][96]["Item_1"] = 193515
	tCoatWarehouse_Sale_Prob[18997][1][96]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][96]["Index"] = 96
	tCoatWarehouse_Sale_Prob[18997][1][96]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][96]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][97] = {}
	tCoatWarehouse_Sale_Prob[18997][1][97]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][97]["ItemChance"] = 65
	tCoatWarehouse_Sale_Prob[18997][1][97]["Item_1"] = 192555
	tCoatWarehouse_Sale_Prob[18997][1][97]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][97]["Index"] = 97
	tCoatWarehouse_Sale_Prob[18997][1][97]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][97]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][98] = {}
	tCoatWarehouse_Sale_Prob[18997][1][98]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][98]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][98]["Item_1"] = 192345
	tCoatWarehouse_Sale_Prob[18997][1][98]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][98]["Index"] = 98
	tCoatWarehouse_Sale_Prob[18997][1][98]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][98]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][99] = {}
	tCoatWarehouse_Sale_Prob[18997][1][99]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][99]["ItemChance"] = 65
	tCoatWarehouse_Sale_Prob[18997][1][99]["Item_1"] = 189095
	tCoatWarehouse_Sale_Prob[18997][1][99]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][99]["Index"] = 99
	tCoatWarehouse_Sale_Prob[18997][1][99]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][99]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][100] = {}
	tCoatWarehouse_Sale_Prob[18997][1][100]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][100]["ItemChance"] = 65
	tCoatWarehouse_Sale_Prob[18997][1][100]["Item_1"] = 189055
	tCoatWarehouse_Sale_Prob[18997][1][100]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][100]["Index"] = 100
	tCoatWarehouse_Sale_Prob[18997][1][100]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][100]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][101] = {}
	tCoatWarehouse_Sale_Prob[18997][1][101]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][101]["ItemChance"] = 65
	tCoatWarehouse_Sale_Prob[18997][1][101]["Item_1"] = 188905
	tCoatWarehouse_Sale_Prob[18997][1][101]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][101]["Index"] = 101
	tCoatWarehouse_Sale_Prob[18997][1][101]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][101]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][102] = {}
	tCoatWarehouse_Sale_Prob[18997][1][102]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][102]["ItemChance"] = 50
	tCoatWarehouse_Sale_Prob[18997][1][102]["Item_1"] = 184355
	tCoatWarehouse_Sale_Prob[18997][1][102]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][102]["Index"] = 102
	tCoatWarehouse_Sale_Prob[18997][1][102]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][102]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][103] = {}
	tCoatWarehouse_Sale_Prob[18997][1][103]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][103]["ItemChance"] = 60
	tCoatWarehouse_Sale_Prob[18997][1][103]["Item_1"] = 184365
	tCoatWarehouse_Sale_Prob[18997][1][103]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][103]["Index"] = 103
	tCoatWarehouse_Sale_Prob[18997][1][103]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][103]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][104] = {}
	tCoatWarehouse_Sale_Prob[18997][1][104]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][104]["ItemChance"] = 55
	tCoatWarehouse_Sale_Prob[18997][1][104]["Item_1"] = 187475
	tCoatWarehouse_Sale_Prob[18997][1][104]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][104]["Index"] = 104
	tCoatWarehouse_Sale_Prob[18997][1][104]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][104]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][105] = {}
	tCoatWarehouse_Sale_Prob[18997][1][105]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][105]["ItemChance"] = 55
	tCoatWarehouse_Sale_Prob[18997][1][105]["Item_1"] = 184385
	tCoatWarehouse_Sale_Prob[18997][1][105]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][105]["Index"] = 105
	tCoatWarehouse_Sale_Prob[18997][1][105]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][105]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][106] = {}
	tCoatWarehouse_Sale_Prob[18997][1][106]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][106]["ItemChance"] = 65
	tCoatWarehouse_Sale_Prob[18997][1][106]["Item_1"] = 183485
	tCoatWarehouse_Sale_Prob[18997][1][106]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][106]["Index"] = 106
	tCoatWarehouse_Sale_Prob[18997][1][106]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][106]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][107] = {}
	tCoatWarehouse_Sale_Prob[18997][1][107]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][107]["ItemChance"] = 60
	tCoatWarehouse_Sale_Prob[18997][1][107]["Item_1"] = 188575
	tCoatWarehouse_Sale_Prob[18997][1][107]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][107]["Index"] = 107
	tCoatWarehouse_Sale_Prob[18997][1][107]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][107]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][108] = {}
	tCoatWarehouse_Sale_Prob[18997][1][108]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][108]["ItemChance"] = 65
	tCoatWarehouse_Sale_Prob[18997][1][108]["Item_1"] = 192685
	tCoatWarehouse_Sale_Prob[18997][1][108]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][108]["Index"] = 108
	tCoatWarehouse_Sale_Prob[18997][1][108]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][108]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][109] = {}
	tCoatWarehouse_Sale_Prob[18997][1][109]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][109]["ItemChance"] = 65
	tCoatWarehouse_Sale_Prob[18997][1][109]["Item_1"] = 192675
	tCoatWarehouse_Sale_Prob[18997][1][109]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][109]["Index"] = 109
	tCoatWarehouse_Sale_Prob[18997][1][109]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][109]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][110] = {}
	tCoatWarehouse_Sale_Prob[18997][1][110]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][110]["ItemChance"] = 65
	tCoatWarehouse_Sale_Prob[18997][1][110]["Item_1"] = 192665
	tCoatWarehouse_Sale_Prob[18997][1][110]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][110]["Index"] = 110
	tCoatWarehouse_Sale_Prob[18997][1][110]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][110]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][111] = {}
	tCoatWarehouse_Sale_Prob[18997][1][111]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][111]["ItemChance"] = 65
	tCoatWarehouse_Sale_Prob[18997][1][111]["Item_1"] = 192655
	tCoatWarehouse_Sale_Prob[18997][1][111]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][111]["Index"] = 111
	tCoatWarehouse_Sale_Prob[18997][1][111]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][111]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][112] = {}
	tCoatWarehouse_Sale_Prob[18997][1][112]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][112]["ItemChance"] = 75
	tCoatWarehouse_Sale_Prob[18997][1][112]["Item_1"] = 192300
	tCoatWarehouse_Sale_Prob[18997][1][112]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][112]["Index"] = 112
	tCoatWarehouse_Sale_Prob[18997][1][112]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][112]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][113] = {}
	tCoatWarehouse_Sale_Prob[18997][1][113]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][113]["ItemChance"] = 45
	tCoatWarehouse_Sale_Prob[18997][1][113]["Item_1"] = 189105
	tCoatWarehouse_Sale_Prob[18997][1][113]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][113]["Index"] = 113
	tCoatWarehouse_Sale_Prob[18997][1][113]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][113]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][114] = {}
	tCoatWarehouse_Sale_Prob[18997][1][114]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][114]["ItemChance"] = 50
	tCoatWarehouse_Sale_Prob[18997][1][114]["Item_1"] = 188285
	tCoatWarehouse_Sale_Prob[18997][1][114]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][114]["Index"] = 114
	tCoatWarehouse_Sale_Prob[18997][1][114]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][114]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][115] = {}
	tCoatWarehouse_Sale_Prob[18997][1][115]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][115]["ItemChance"] = 75
	tCoatWarehouse_Sale_Prob[18997][1][115]["Item_1"] = 183385
	tCoatWarehouse_Sale_Prob[18997][1][115]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][115]["Index"] = 115
	tCoatWarehouse_Sale_Prob[18997][1][115]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][115]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][116] = {}
	tCoatWarehouse_Sale_Prob[18997][1][116]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][116]["ItemChance"] = 70
	tCoatWarehouse_Sale_Prob[18997][1][116]["Item_1"] = 183395
	tCoatWarehouse_Sale_Prob[18997][1][116]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][116]["Index"] = 116
	tCoatWarehouse_Sale_Prob[18997][1][116]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][116]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][117] = {}
	tCoatWarehouse_Sale_Prob[18997][1][117]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][117]["ItemChance"] = 65
	tCoatWarehouse_Sale_Prob[18997][1][117]["Item_1"] = 183345
	tCoatWarehouse_Sale_Prob[18997][1][117]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][117]["Index"] = 117
	tCoatWarehouse_Sale_Prob[18997][1][117]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][117]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][118] = {}
	tCoatWarehouse_Sale_Prob[18997][1][118]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][118]["ItemChance"] = 55
	tCoatWarehouse_Sale_Prob[18997][1][118]["Item_1"] = 184345
	tCoatWarehouse_Sale_Prob[18997][1][118]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][118]["Index"] = 118
	tCoatWarehouse_Sale_Prob[18997][1][118]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][118]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][119] = {}
	tCoatWarehouse_Sale_Prob[18997][1][119]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][119]["ItemChance"] = 65
	tCoatWarehouse_Sale_Prob[18997][1][119]["Item_1"] = 184315
	tCoatWarehouse_Sale_Prob[18997][1][119]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][119]["Index"] = 119
	tCoatWarehouse_Sale_Prob[18997][1][119]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][119]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][120] = {}
	tCoatWarehouse_Sale_Prob[18997][1][120]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][120]["ItemChance"] = 65
	tCoatWarehouse_Sale_Prob[18997][1][120]["Item_1"] = 183465
	tCoatWarehouse_Sale_Prob[18997][1][120]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][120]["Index"] = 120
	tCoatWarehouse_Sale_Prob[18997][1][120]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][120]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][121] = {}
	tCoatWarehouse_Sale_Prob[18997][1][121]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][121]["ItemChance"] = 65
	tCoatWarehouse_Sale_Prob[18997][1][121]["Item_1"] = 192395
	tCoatWarehouse_Sale_Prob[18997][1][121]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][121]["Index"] = 121
	tCoatWarehouse_Sale_Prob[18997][1][121]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][121]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][122] = {}
	tCoatWarehouse_Sale_Prob[18997][1][122]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][122]["ItemChance"] = 50
	tCoatWarehouse_Sale_Prob[18997][1][122]["Item_1"] = 187605
	tCoatWarehouse_Sale_Prob[18997][1][122]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][122]["Index"] = 122
	tCoatWarehouse_Sale_Prob[18997][1][122]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][122]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][123] = {}
	tCoatWarehouse_Sale_Prob[18997][1][123]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][123]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][123]["Item_1"] = 189155
	tCoatWarehouse_Sale_Prob[18997][1][123]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][123]["Index"] = 123
	tCoatWarehouse_Sale_Prob[18997][1][123]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][123]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][124] = {}
	tCoatWarehouse_Sale_Prob[18997][1][124]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][124]["ItemChance"] = 45
	tCoatWarehouse_Sale_Prob[18997][1][124]["Item_1"] = 192575
	tCoatWarehouse_Sale_Prob[18997][1][124]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][124]["Index"] = 124
	tCoatWarehouse_Sale_Prob[18997][1][124]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][124]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][125] = {}
	tCoatWarehouse_Sale_Prob[18997][1][125]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][125]["ItemChance"] = 45
	tCoatWarehouse_Sale_Prob[18997][1][125]["Item_1"] = 192565
	tCoatWarehouse_Sale_Prob[18997][1][125]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][125]["Index"] = 125
	tCoatWarehouse_Sale_Prob[18997][1][125]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][125]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][126] = {}
	tCoatWarehouse_Sale_Prob[18997][1][126]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][126]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][126]["Item_1"] = 188085
	tCoatWarehouse_Sale_Prob[18997][1][126]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][126]["Index"] = 126
	tCoatWarehouse_Sale_Prob[18997][1][126]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][126]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][127] = {}
	tCoatWarehouse_Sale_Prob[18997][1][127]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][127]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][127]["Item_1"] = 193025
	tCoatWarehouse_Sale_Prob[18997][1][127]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][127]["Index"] = 127
	tCoatWarehouse_Sale_Prob[18997][1][127]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][127]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][128] = {}
	tCoatWarehouse_Sale_Prob[18997][1][128]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][128]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][128]["Item_1"] = 193035
	tCoatWarehouse_Sale_Prob[18997][1][128]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][128]["Index"] = 128
	tCoatWarehouse_Sale_Prob[18997][1][128]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][128]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][129] = {}
	tCoatWarehouse_Sale_Prob[18997][1][129]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][129]["ItemChance"] = 32
	tCoatWarehouse_Sale_Prob[18997][1][129]["Item_1"] = 200010
	tCoatWarehouse_Sale_Prob[18997][1][129]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][129]["Index"] = 129
	tCoatWarehouse_Sale_Prob[18997][1][129]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][129]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][130] = {}
	tCoatWarehouse_Sale_Prob[18997][1][130]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][130]["ItemChance"] = 32
	tCoatWarehouse_Sale_Prob[18997][1][130]["Item_1"] = 200108
	tCoatWarehouse_Sale_Prob[18997][1][130]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][130]["Index"] = 130
	tCoatWarehouse_Sale_Prob[18997][1][130]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][130]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][131] = {}
	tCoatWarehouse_Sale_Prob[18997][1][131]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][131]["ItemChance"] = 30
	tCoatWarehouse_Sale_Prob[18997][1][131]["Item_1"] = 200009
	tCoatWarehouse_Sale_Prob[18997][1][131]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][131]["Index"] = 131
	tCoatWarehouse_Sale_Prob[18997][1][131]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][131]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][132] = {}
	tCoatWarehouse_Sale_Prob[18997][1][132]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][132]["ItemChance"] = 30
	tCoatWarehouse_Sale_Prob[18997][1][132]["Item_1"] = 200107
	tCoatWarehouse_Sale_Prob[18997][1][132]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][132]["Index"] = 132
	tCoatWarehouse_Sale_Prob[18997][1][132]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][132]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][133] = {}
	tCoatWarehouse_Sale_Prob[18997][1][133]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][133]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18997][1][133]["Item_1"] = 200407
	tCoatWarehouse_Sale_Prob[18997][1][133]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][133]["Index"] = 133
	tCoatWarehouse_Sale_Prob[18997][1][133]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][133]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][134] = {}
	tCoatWarehouse_Sale_Prob[18997][1][134]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][134]["ItemChance"] = 20
	tCoatWarehouse_Sale_Prob[18997][1][134]["Item_1"] = 200413
	tCoatWarehouse_Sale_Prob[18997][1][134]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][134]["Index"] = 134
	tCoatWarehouse_Sale_Prob[18997][1][134]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][134]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][135] = {}
	tCoatWarehouse_Sale_Prob[18997][1][135]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][135]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18997][1][135]["Item_1"] = 200420
	tCoatWarehouse_Sale_Prob[18997][1][135]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][135]["Index"] = 135
	tCoatWarehouse_Sale_Prob[18997][1][135]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][135]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][136] = {}
	tCoatWarehouse_Sale_Prob[18997][1][136]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][136]["ItemChance"] = 25
	tCoatWarehouse_Sale_Prob[18997][1][136]["Item_1"] = 200403
	tCoatWarehouse_Sale_Prob[18997][1][136]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][136]["Index"] = 136
	tCoatWarehouse_Sale_Prob[18997][1][136]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][136]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][137] = {}
	tCoatWarehouse_Sale_Prob[18997][1][137]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][137]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18997][1][137]["Item_1"] = 200411
	tCoatWarehouse_Sale_Prob[18997][1][137]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][137]["Index"] = 137
	tCoatWarehouse_Sale_Prob[18997][1][137]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][137]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][138] = {}
	tCoatWarehouse_Sale_Prob[18997][1][138]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][138]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18997][1][138]["Item_1"] = 200414
	tCoatWarehouse_Sale_Prob[18997][1][138]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][138]["Index"] = 138
	tCoatWarehouse_Sale_Prob[18997][1][138]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][138]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][139] = {}
	tCoatWarehouse_Sale_Prob[18997][1][139]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][139]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18997][1][139]["Item_1"] = 200415
	tCoatWarehouse_Sale_Prob[18997][1][139]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][139]["Index"] = 139
	tCoatWarehouse_Sale_Prob[18997][1][139]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][139]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][140] = {}
	tCoatWarehouse_Sale_Prob[18997][1][140]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][140]["ItemChance"] = 23
	tCoatWarehouse_Sale_Prob[18997][1][140]["Item_1"] = 200418
	tCoatWarehouse_Sale_Prob[18997][1][140]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][140]["Index"] = 140
	tCoatWarehouse_Sale_Prob[18997][1][140]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][140]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][141] = {}
	tCoatWarehouse_Sale_Prob[18997][1][141]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][141]["ItemChance"] = 20
	tCoatWarehouse_Sale_Prob[18997][1][141]["Item_1"] = 200562
	tCoatWarehouse_Sale_Prob[18997][1][141]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][141]["Index"] = 141
	tCoatWarehouse_Sale_Prob[18997][1][141]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][141]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][142] = {}
	tCoatWarehouse_Sale_Prob[18997][1][142]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][142]["ItemChance"] = 20
	tCoatWarehouse_Sale_Prob[18997][1][142]["Item_1"] = 200438
	tCoatWarehouse_Sale_Prob[18997][1][142]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][142]["Index"] = 142
	tCoatWarehouse_Sale_Prob[18997][1][142]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][142]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][143] = {}
	tCoatWarehouse_Sale_Prob[18997][1][143]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][143]["ItemChance"] = 15
	tCoatWarehouse_Sale_Prob[18997][1][143]["Item_1"] = 200444
	tCoatWarehouse_Sale_Prob[18997][1][143]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][143]["Index"] = 143
	tCoatWarehouse_Sale_Prob[18997][1][143]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][143]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][144] = {}
	tCoatWarehouse_Sale_Prob[18997][1][144]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][144]["ItemChance"] = 20
	tCoatWarehouse_Sale_Prob[18997][1][144]["Item_1"] = 200443
	tCoatWarehouse_Sale_Prob[18997][1][144]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][144]["Index"] = 144
	tCoatWarehouse_Sale_Prob[18997][1][144]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][144]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][145] = {}
	tCoatWarehouse_Sale_Prob[18997][1][145]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][145]["ItemChance"] = 20
	tCoatWarehouse_Sale_Prob[18997][1][145]["Item_1"] = 200476
	tCoatWarehouse_Sale_Prob[18997][1][145]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][145]["Index"] = 145
	tCoatWarehouse_Sale_Prob[18997][1][145]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][145]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][146] = {}
	tCoatWarehouse_Sale_Prob[18997][1][146]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][146]["ItemChance"] = 15
	tCoatWarehouse_Sale_Prob[18997][1][146]["Item_1"] = 200491
	tCoatWarehouse_Sale_Prob[18997][1][146]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][146]["Index"] = 146
	tCoatWarehouse_Sale_Prob[18997][1][146]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][146]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][147] = {}
	tCoatWarehouse_Sale_Prob[18997][1][147]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][147]["ItemChance"] = 15
	tCoatWarehouse_Sale_Prob[18997][1][147]["Item_1"] = 200492
	tCoatWarehouse_Sale_Prob[18997][1][147]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][147]["Index"] = 147
	tCoatWarehouse_Sale_Prob[18997][1][147]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][147]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][148] = {}
	tCoatWarehouse_Sale_Prob[18997][1][148]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][148]["ItemChance"] = 15
	tCoatWarehouse_Sale_Prob[18997][1][148]["Item_1"] = 200503
	tCoatWarehouse_Sale_Prob[18997][1][148]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][148]["Index"] = 148
	tCoatWarehouse_Sale_Prob[18997][1][148]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][148]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][149] = {}
	tCoatWarehouse_Sale_Prob[18997][1][149]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][149]["ItemChance"] = 20
	tCoatWarehouse_Sale_Prob[18997][1][149]["Item_1"] = 200514
	tCoatWarehouse_Sale_Prob[18997][1][149]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][149]["Index"] = 149
	tCoatWarehouse_Sale_Prob[18997][1][149]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][149]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][150] = {}
	tCoatWarehouse_Sale_Prob[18997][1][150]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][150]["ItemChance"] = 18
	tCoatWarehouse_Sale_Prob[18997][1][150]["Item_1"] = 200528
	tCoatWarehouse_Sale_Prob[18997][1][150]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][150]["Index"] = 150
	tCoatWarehouse_Sale_Prob[18997][1][150]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][150]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][151] = {}
	tCoatWarehouse_Sale_Prob[18997][1][151]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][151]["ItemChance"] = 20
	tCoatWarehouse_Sale_Prob[18997][1][151]["Item_1"] = 200421
	tCoatWarehouse_Sale_Prob[18997][1][151]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][151]["Index"] = 151
	tCoatWarehouse_Sale_Prob[18997][1][151]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][151]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][152] = {}
	tCoatWarehouse_Sale_Prob[18997][1][152]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][152]["ItemChance"] = 15
	tCoatWarehouse_Sale_Prob[18997][1][152]["Item_1"] = 200499
	tCoatWarehouse_Sale_Prob[18997][1][152]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][152]["Index"] = 152
	tCoatWarehouse_Sale_Prob[18997][1][152]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][152]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][153] = {}
	tCoatWarehouse_Sale_Prob[18997][1][153]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][153]["ItemChance"] = 18
	tCoatWarehouse_Sale_Prob[18997][1][153]["Item_1"] = 200481
	tCoatWarehouse_Sale_Prob[18997][1][153]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][153]["Index"] = 153
	tCoatWarehouse_Sale_Prob[18997][1][153]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][153]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][154] = {}
	tCoatWarehouse_Sale_Prob[18997][1][154]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][154]["ItemChance"] = 20
	tCoatWarehouse_Sale_Prob[18997][1][154]["Item_1"] = 200417
	tCoatWarehouse_Sale_Prob[18997][1][154]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][154]["Index"] = 154
	tCoatWarehouse_Sale_Prob[18997][1][154]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][154]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][155] = {}
	tCoatWarehouse_Sale_Prob[18997][1][155]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][155]["ItemChance"] = 20
	tCoatWarehouse_Sale_Prob[18997][1][155]["Item_1"] = 200490
	tCoatWarehouse_Sale_Prob[18997][1][155]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][155]["Index"] = 155
	tCoatWarehouse_Sale_Prob[18997][1][155]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][155]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][156] = {}
	tCoatWarehouse_Sale_Prob[18997][1][156]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][156]["ItemChance"] = 21
	tCoatWarehouse_Sale_Prob[18997][1][156]["Item_1"] = 200426
	tCoatWarehouse_Sale_Prob[18997][1][156]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][156]["Index"] = 156
	tCoatWarehouse_Sale_Prob[18997][1][156]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][156]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][157] = {}
	tCoatWarehouse_Sale_Prob[18997][1][157]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][157]["ItemChance"] = 21
	tCoatWarehouse_Sale_Prob[18997][1][157]["Item_1"] = 200474
	tCoatWarehouse_Sale_Prob[18997][1][157]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][157]["Index"] = 157
	tCoatWarehouse_Sale_Prob[18997][1][157]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][157]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][158] = {}
	tCoatWarehouse_Sale_Prob[18997][1][158]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][158]["ItemChance"] = 18
	tCoatWarehouse_Sale_Prob[18997][1][158]["Item_1"] = 200487
	tCoatWarehouse_Sale_Prob[18997][1][158]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][158]["Index"] = 158
	tCoatWarehouse_Sale_Prob[18997][1][158]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][158]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][159] = {}
	tCoatWarehouse_Sale_Prob[18997][1][159]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][159]["ItemChance"] = 18
	tCoatWarehouse_Sale_Prob[18997][1][159]["Item_1"] = 200488
	tCoatWarehouse_Sale_Prob[18997][1][159]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][159]["Index"] = 159
	tCoatWarehouse_Sale_Prob[18997][1][159]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][159]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][160] = {}
	tCoatWarehouse_Sale_Prob[18997][1][160]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][160]["ItemChance"] = 20
	tCoatWarehouse_Sale_Prob[18997][1][160]["Item_1"] = 200433
	tCoatWarehouse_Sale_Prob[18997][1][160]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][160]["Index"] = 160
	tCoatWarehouse_Sale_Prob[18997][1][160]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][160]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][161] = {}
	tCoatWarehouse_Sale_Prob[18997][1][161]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][161]["ItemChance"] = 20
	tCoatWarehouse_Sale_Prob[18997][1][161]["Item_1"] = 200459
	tCoatWarehouse_Sale_Prob[18997][1][161]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][161]["Index"] = 161
	tCoatWarehouse_Sale_Prob[18997][1][161]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][161]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][162] = {}
	tCoatWarehouse_Sale_Prob[18997][1][162]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][162]["ItemChance"] = 20
	tCoatWarehouse_Sale_Prob[18997][1][162]["Item_1"] = 200412
	tCoatWarehouse_Sale_Prob[18997][1][162]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][162]["Index"] = 162
	tCoatWarehouse_Sale_Prob[18997][1][162]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][162]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][163] = {}
	tCoatWarehouse_Sale_Prob[18997][1][163]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][163]["ItemChance"] = 15
	tCoatWarehouse_Sale_Prob[18997][1][163]["Item_1"] = 200493
	tCoatWarehouse_Sale_Prob[18997][1][163]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][163]["Index"] = 163
	tCoatWarehouse_Sale_Prob[18997][1][163]["Stars"] = 3
	tCoatWarehouse_Sale_Prob[18997][1][163]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][164] = {}
	tCoatWarehouse_Sale_Prob[18997][1][164]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][164]["ItemChance"] = 6
	tCoatWarehouse_Sale_Prob[18997][1][164]["Item_1"] = 189085
	tCoatWarehouse_Sale_Prob[18997][1][164]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][164]["Index"] = 164
	tCoatWarehouse_Sale_Prob[18997][1][164]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][164]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][165] = {}
	tCoatWarehouse_Sale_Prob[18997][1][165]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][165]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][165]["Item_1"] = 189145
	tCoatWarehouse_Sale_Prob[18997][1][165]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][165]["Index"] = 165
	tCoatWarehouse_Sale_Prob[18997][1][165]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][165]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][166] = {}
	tCoatWarehouse_Sale_Prob[18997][1][166]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][166]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][166]["Item_1"] = 187575
	tCoatWarehouse_Sale_Prob[18997][1][166]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][166]["Index"] = 166
	tCoatWarehouse_Sale_Prob[18997][1][166]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][166]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][167] = {}
	tCoatWarehouse_Sale_Prob[18997][1][167]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][167]["ItemChance"] = 8
	tCoatWarehouse_Sale_Prob[18997][1][167]["Item_1"] = 193115
	tCoatWarehouse_Sale_Prob[18997][1][167]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][167]["Index"] = 167
	tCoatWarehouse_Sale_Prob[18997][1][167]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][167]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][168] = {}
	tCoatWarehouse_Sale_Prob[18997][1][168]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][168]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][168]["Item_1"] = 192495
	tCoatWarehouse_Sale_Prob[18997][1][168]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][168]["Index"] = 168
	tCoatWarehouse_Sale_Prob[18997][1][168]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][168]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][169] = {}
	tCoatWarehouse_Sale_Prob[18997][1][169]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][169]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][169]["Item_1"] = 192425
	tCoatWarehouse_Sale_Prob[18997][1][169]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][169]["Index"] = 169
	tCoatWarehouse_Sale_Prob[18997][1][169]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][169]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][170] = {}
	tCoatWarehouse_Sale_Prob[18997][1][170]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][170]["ItemChance"] = 5
	tCoatWarehouse_Sale_Prob[18997][1][170]["Item_1"] = 193195
	tCoatWarehouse_Sale_Prob[18997][1][170]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][170]["Index"] = 170
	tCoatWarehouse_Sale_Prob[18997][1][170]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][170]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][171] = {}
	tCoatWarehouse_Sale_Prob[18997][1][171]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][171]["ItemChance"] = 9
	tCoatWarehouse_Sale_Prob[18997][1][171]["Item_1"] = 195375
	tCoatWarehouse_Sale_Prob[18997][1][171]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][171]["Index"] = 171
	tCoatWarehouse_Sale_Prob[18997][1][171]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][171]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][172] = {}
	tCoatWarehouse_Sale_Prob[18997][1][172]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][172]["ItemChance"] = 5
	tCoatWarehouse_Sale_Prob[18997][1][172]["Item_1"] = 192615
	tCoatWarehouse_Sale_Prob[18997][1][172]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][172]["Index"] = 172
	tCoatWarehouse_Sale_Prob[18997][1][172]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][172]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][173] = {}
	tCoatWarehouse_Sale_Prob[18997][1][173]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][173]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][173]["Item_1"] = 192635
	tCoatWarehouse_Sale_Prob[18997][1][173]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][173]["Index"] = 173
	tCoatWarehouse_Sale_Prob[18997][1][173]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][173]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][174] = {}
	tCoatWarehouse_Sale_Prob[18997][1][174]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][174]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][174]["Item_1"] = 192785
	tCoatWarehouse_Sale_Prob[18997][1][174]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][174]["Index"] = 174
	tCoatWarehouse_Sale_Prob[18997][1][174]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][174]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][175] = {}
	tCoatWarehouse_Sale_Prob[18997][1][175]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][175]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][175]["Item_1"] = 192625
	tCoatWarehouse_Sale_Prob[18997][1][175]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][175]["Index"] = 175
	tCoatWarehouse_Sale_Prob[18997][1][175]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][175]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][176] = {}
	tCoatWarehouse_Sale_Prob[18997][1][176]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][176]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][176]["Item_1"] = 188675
	tCoatWarehouse_Sale_Prob[18997][1][176]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][176]["Index"] = 176
	tCoatWarehouse_Sale_Prob[18997][1][176]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][176]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][177] = {}
	tCoatWarehouse_Sale_Prob[18997][1][177]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][177]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][177]["Item_1"] = 192525
	tCoatWarehouse_Sale_Prob[18997][1][177]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][177]["Index"] = 177
	tCoatWarehouse_Sale_Prob[18997][1][177]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][177]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][178] = {}
	tCoatWarehouse_Sale_Prob[18997][1][178]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][178]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][178]["Item_1"] = 192311
	tCoatWarehouse_Sale_Prob[18997][1][178]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][178]["Index"] = 178
	tCoatWarehouse_Sale_Prob[18997][1][178]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][178]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][179] = {}
	tCoatWarehouse_Sale_Prob[18997][1][179]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][179]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][179]["Item_1"] = 188495
	tCoatWarehouse_Sale_Prob[18997][1][179]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][179]["Index"] = 179
	tCoatWarehouse_Sale_Prob[18997][1][179]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][179]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][180] = {}
	tCoatWarehouse_Sale_Prob[18997][1][180]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][180]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][180]["Item_1"] = 193295
	tCoatWarehouse_Sale_Prob[18997][1][180]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][180]["Index"] = 180
	tCoatWarehouse_Sale_Prob[18997][1][180]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][180]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][181] = {}
	tCoatWarehouse_Sale_Prob[18997][1][181]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][181]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][181]["Item_1"] = 192605
	tCoatWarehouse_Sale_Prob[18997][1][181]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][181]["Index"] = 181
	tCoatWarehouse_Sale_Prob[18997][1][181]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][181]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][182] = {}
	tCoatWarehouse_Sale_Prob[18997][1][182]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][182]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][182]["Item_1"] = 188265
	tCoatWarehouse_Sale_Prob[18997][1][182]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][182]["Index"] = 182
	tCoatWarehouse_Sale_Prob[18997][1][182]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][182]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][183] = {}
	tCoatWarehouse_Sale_Prob[18997][1][183]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][183]["ItemChance"] = 9
	tCoatWarehouse_Sale_Prob[18997][1][183]["Item_1"] = 192695
	tCoatWarehouse_Sale_Prob[18997][1][183]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][183]["Index"] = 183
	tCoatWarehouse_Sale_Prob[18997][1][183]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][183]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][184] = {}
	tCoatWarehouse_Sale_Prob[18997][1][184]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][184]["ItemChance"] = 7
	tCoatWarehouse_Sale_Prob[18997][1][184]["Item_1"] = 187325
	tCoatWarehouse_Sale_Prob[18997][1][184]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][184]["Index"] = 184
	tCoatWarehouse_Sale_Prob[18997][1][184]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][184]["Type"] = 1

	tCoatWarehouse_Sale_Prob[18997][1][185] = {}
	tCoatWarehouse_Sale_Prob[18997][1][185]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][185]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][185]["Item_1"] = 200549
	tCoatWarehouse_Sale_Prob[18997][1][185]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][185]["Index"] = 185
	tCoatWarehouse_Sale_Prob[18997][1][185]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][185]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][186] = {}
	tCoatWarehouse_Sale_Prob[18997][1][186]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][186]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][186]["Item_1"] = 200480
	tCoatWarehouse_Sale_Prob[18997][1][186]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][186]["Index"] = 186
	tCoatWarehouse_Sale_Prob[18997][1][186]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][186]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][187] = {}
	tCoatWarehouse_Sale_Prob[18997][1][187]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][187]["ItemChance"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][187]["Item_1"] = 200495
	tCoatWarehouse_Sale_Prob[18997][1][187]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][187]["Index"] = 187
	tCoatWarehouse_Sale_Prob[18997][1][187]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][187]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][188] = {}
	tCoatWarehouse_Sale_Prob[18997][1][188]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][188]["ItemChance"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][188]["Item_1"] = 200500
	tCoatWarehouse_Sale_Prob[18997][1][188]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][188]["Index"] = 188
	tCoatWarehouse_Sale_Prob[18997][1][188]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][188]["Type"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][189] = {}
	tCoatWarehouse_Sale_Prob[18997][1][189]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][189]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][189]["Item_1"] = 189135
	tCoatWarehouse_Sale_Prob[18997][1][189]["Attr"] = "0 0 3 10080 1 0 0 0"
	tCoatWarehouse_Sale_Prob[18997][1][189]["Index"] = 189
	tCoatWarehouse_Sale_Prob[18997][1][189]["Stars"] = 5
	tCoatWarehouse_Sale_Prob[18997][1][189]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][189]["bSaveTime"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][190] = {}
	tCoatWarehouse_Sale_Prob[18997][1][190]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][190]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][190]["Item_1"] = 189065
	tCoatWarehouse_Sale_Prob[18997][1][190]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][190]["Index"] = 190
	tCoatWarehouse_Sale_Prob[18997][1][190]["Stars"] = 5
	tCoatWarehouse_Sale_Prob[18997][1][190]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][190]["bSaveTime"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][191] = {}
	tCoatWarehouse_Sale_Prob[18997][1][191]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][191]["ItemChance"] = 90
	tCoatWarehouse_Sale_Prob[18997][1][191]["Item_1"] = 188915
	tCoatWarehouse_Sale_Prob[18997][1][191]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][191]["Index"] = 191
	tCoatWarehouse_Sale_Prob[18997][1][191]["Stars"] = 5
	tCoatWarehouse_Sale_Prob[18997][1][191]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][191]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][191]["Item_2"] = 3008232

	tCoatWarehouse_Sale_Prob[18997][1][192] = {}
	tCoatWarehouse_Sale_Prob[18997][1][192]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][192]["ItemChance"] = 90
	tCoatWarehouse_Sale_Prob[18997][1][192]["Item_1"] = 193445
	tCoatWarehouse_Sale_Prob[18997][1][192]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][192]["Index"] = 192
	tCoatWarehouse_Sale_Prob[18997][1][192]["Stars"] = 5
	tCoatWarehouse_Sale_Prob[18997][1][192]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][192]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][192]["Item_2"] = 3008254

	tCoatWarehouse_Sale_Prob[18997][1][193] = {}
	tCoatWarehouse_Sale_Prob[18997][1][193]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][193]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][193]["Item_1"] = 193525
	tCoatWarehouse_Sale_Prob[18997][1][193]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][193]["Index"] = 193
	tCoatWarehouse_Sale_Prob[18997][1][193]["Stars"] = 5
	tCoatWarehouse_Sale_Prob[18997][1][193]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][193]["bSaveTime"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][194] = {}
	tCoatWarehouse_Sale_Prob[18997][1][194]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][194]["ItemChance"] = 80
	tCoatWarehouse_Sale_Prob[18997][1][194]["Item_1"] = 200494
	tCoatWarehouse_Sale_Prob[18997][1][194]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][194]["Index"] = 194
	tCoatWarehouse_Sale_Prob[18997][1][194]["Stars"] = 5
	tCoatWarehouse_Sale_Prob[18997][1][194]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][194]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][194]["Item_2"] = 3008256

	tCoatWarehouse_Sale_Prob[18997][1][195] = {}
	tCoatWarehouse_Sale_Prob[18997][1][195]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][195]["ItemChance"] = 90
	tCoatWarehouse_Sale_Prob[18997][1][195]["Item_1"] = 200517
	tCoatWarehouse_Sale_Prob[18997][1][195]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][195]["Index"] = 195
	tCoatWarehouse_Sale_Prob[18997][1][195]["Stars"] = 5
	tCoatWarehouse_Sale_Prob[18997][1][195]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][195]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][195]["Item_2"] = 3008260

	tCoatWarehouse_Sale_Prob[18997][1][196] = {}
	tCoatWarehouse_Sale_Prob[18997][1][196]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][196]["ItemChance"] = 90
	tCoatWarehouse_Sale_Prob[18997][1][196]["Item_1"] = 200531
	tCoatWarehouse_Sale_Prob[18997][1][196]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][196]["Index"] = 196
	tCoatWarehouse_Sale_Prob[18997][1][196]["Stars"] = 5
	tCoatWarehouse_Sale_Prob[18997][1][196]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][196]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][196]["Item_2"] = 3008262

	tCoatWarehouse_Sale_Prob[18997][1][197] = {}
	tCoatWarehouse_Sale_Prob[18997][1][197]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][197]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][197]["Item_1"] = 200540
	tCoatWarehouse_Sale_Prob[18997][1][197]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][197]["Index"] = 197
	tCoatWarehouse_Sale_Prob[18997][1][197]["Stars"] = 5
	tCoatWarehouse_Sale_Prob[18997][1][197]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][197]["bSaveTime"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][198] = {}
	tCoatWarehouse_Sale_Prob[18997][1][198]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][198]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][198]["Item_1"] = 200482
	tCoatWarehouse_Sale_Prob[18997][1][198]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][198]["Index"] = 198
	tCoatWarehouse_Sale_Prob[18997][1][198]["Stars"] = 5
	tCoatWarehouse_Sale_Prob[18997][1][198]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][198]["bSaveTime"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][199] = {}
	tCoatWarehouse_Sale_Prob[18997][1][199]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][199]["ItemChance"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][199]["Item_1"] = 200449
	tCoatWarehouse_Sale_Prob[18997][1][199]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][199]["Index"] = 199
	tCoatWarehouse_Sale_Prob[18997][1][199]["Stars"] = 5
	tCoatWarehouse_Sale_Prob[18997][1][199]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][199]["bSaveTime"] = 2

	tCoatWarehouse_Sale_Prob[18997][1][200] = {}
	tCoatWarehouse_Sale_Prob[18997][1][200]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][200]["ItemChance"] = 1200
	tCoatWarehouse_Sale_Prob[18997][1][200]["Item_1"] = 3008226
	tCoatWarehouse_Sale_Prob[18997][1][200]["Attr"] = "0 10"
	tCoatWarehouse_Sale_Prob[18997][1][200]["Index"] = 200
	tCoatWarehouse_Sale_Prob[18997][1][200]["Stars"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][200]["Type"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][200]["Num"] = 10

	tCoatWarehouse_Sale_Prob[18997][1][201] = {}
	tCoatWarehouse_Sale_Prob[18997][1][201]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][201]["ItemChance"] = 150
	tCoatWarehouse_Sale_Prob[18997][1][201]["Item_1"] = 3008225
	tCoatWarehouse_Sale_Prob[18997][1][201]["Index"] = 201
	tCoatWarehouse_Sale_Prob[18997][1][201]["Stars"] = 0
	tCoatWarehouse_Sale_Prob[18997][1][201]["Type"] = 0
	
-- 新增4星外套
	-- 粉 永久
	tCoatWarehouse_Sale_Prob[18997][1][202] = {}
	tCoatWarehouse_Sale_Prob[18997][1][202]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][202]["ItemChance"] = 8
	tCoatWarehouse_Sale_Prob[18997][1][202]["Item_1"] = 200589
	tCoatWarehouse_Sale_Prob[18997][1][202]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][202]["Index"] = 202
	tCoatWarehouse_Sale_Prob[18997][1][202]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][202]["Type"] = 2
	-- 粉 时效
	tCoatWarehouse_Sale_Prob[18997][1][203] = {}
	tCoatWarehouse_Sale_Prob[18997][1][203]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][203]["ItemChance"] = 110
	tCoatWarehouse_Sale_Prob[18997][1][203]["Item_1"] = 200589
	tCoatWarehouse_Sale_Prob[18997][1][203]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][203]["Index"] = 203
	tCoatWarehouse_Sale_Prob[18997][1][203]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][203]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][203]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][203]["Item_2"] = 3008323
	-- 紫 永久
	tCoatWarehouse_Sale_Prob[18997][1][204] = {}
	tCoatWarehouse_Sale_Prob[18997][1][204]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][204]["ItemChance"] = 8
	tCoatWarehouse_Sale_Prob[18997][1][204]["Item_1"] = 200590
	tCoatWarehouse_Sale_Prob[18997][1][204]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][204]["Index"] = 204
	tCoatWarehouse_Sale_Prob[18997][1][204]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][204]["Type"] = 2
	-- 紫 时效
	tCoatWarehouse_Sale_Prob[18997][1][205] = {}
	tCoatWarehouse_Sale_Prob[18997][1][205]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][205]["ItemChance"] = 110
	tCoatWarehouse_Sale_Prob[18997][1][205]["Item_1"] = 200590
	tCoatWarehouse_Sale_Prob[18997][1][205]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][205]["Index"] = 205
	tCoatWarehouse_Sale_Prob[18997][1][205]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][205]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][205]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][205]["Item_2"] = 3008323
	-- 绿 永久
	tCoatWarehouse_Sale_Prob[18997][1][206] = {}
	tCoatWarehouse_Sale_Prob[18997][1][206]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][206]["ItemChance"] = 8
	tCoatWarehouse_Sale_Prob[18997][1][206]["Item_1"] = 200591
	tCoatWarehouse_Sale_Prob[18997][1][206]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][206]["Index"] = 206
	tCoatWarehouse_Sale_Prob[18997][1][206]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][206]["Type"] = 2
	-- 绿 时效
	tCoatWarehouse_Sale_Prob[18997][1][207] = {}
	tCoatWarehouse_Sale_Prob[18997][1][207]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][207]["ItemChance"] = 110
	tCoatWarehouse_Sale_Prob[18997][1][207]["Item_1"] = 200591
	tCoatWarehouse_Sale_Prob[18997][1][207]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][207]["Index"] = 207
	tCoatWarehouse_Sale_Prob[18997][1][207]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][207]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][207]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][207]["Item_2"] = 3008323
	-- 黄 永久
	tCoatWarehouse_Sale_Prob[18997][1][208] = {}
	tCoatWarehouse_Sale_Prob[18997][1][208]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][208]["ItemChance"] = 8
	tCoatWarehouse_Sale_Prob[18997][1][208]["Item_1"] = 200593
	tCoatWarehouse_Sale_Prob[18997][1][208]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][208]["Index"] = 208
	tCoatWarehouse_Sale_Prob[18997][1][208]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][208]["Type"] = 2
	-- 黄 时效
	tCoatWarehouse_Sale_Prob[18997][1][209] = {}
	tCoatWarehouse_Sale_Prob[18997][1][209]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][209]["ItemChance"] = 110
	tCoatWarehouse_Sale_Prob[18997][1][209]["Item_1"] = 200593
	tCoatWarehouse_Sale_Prob[18997][1][209]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][209]["Index"] = 209
	tCoatWarehouse_Sale_Prob[18997][1][209]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][209]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][209]["bSaveTime"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][209]["Item_2"] = 3008323
	
	
-- 新增四星人物外套和骑宠外套共6件
	-- DivineFox 物品 ID 200539  永久
	tCoatWarehouse_Sale_Prob[18997][1][210] = {}
	tCoatWarehouse_Sale_Prob[18997][1][210]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][210]["ItemChance"] = 5
	tCoatWarehouse_Sale_Prob[18997][1][210]["Item_1"] = 200539
	tCoatWarehouse_Sale_Prob[18997][1][210]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][210]["Index"] = 210
	tCoatWarehouse_Sale_Prob[18997][1][210]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][210]["Type"] = 2
	-- DivineFox 物品 ID 200539  时效
	tCoatWarehouse_Sale_Prob[18997][1][211] = {}
	tCoatWarehouse_Sale_Prob[18997][1][211]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][211]["ItemChance"] = 70
	tCoatWarehouse_Sale_Prob[18997][1][211]["Item_1"] = 200539
	tCoatWarehouse_Sale_Prob[18997][1][211]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][211]["Index"] = 211
	tCoatWarehouse_Sale_Prob[18997][1][211]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][211]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][211]["bSaveTime"] = 2
	-- SnowFox 物品 ID 200480  永久
	tCoatWarehouse_Sale_Prob[18997][1][212] = {}
	tCoatWarehouse_Sale_Prob[18997][1][212]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][212]["ItemChance"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][212]["Item_1"] = 200480
	tCoatWarehouse_Sale_Prob[18997][1][212]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][212]["Index"] = 212
	tCoatWarehouse_Sale_Prob[18997][1][212]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][212]["Type"] = 2
	-- SnowFox 物品 ID 200480  时效
	tCoatWarehouse_Sale_Prob[18997][1][213] = {}
	tCoatWarehouse_Sale_Prob[18997][1][213]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][213]["ItemChance"] = 70
	tCoatWarehouse_Sale_Prob[18997][1][213]["Item_1"] = 200480
	tCoatWarehouse_Sale_Prob[18997][1][213]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][213]["Index"] = 213
	tCoatWarehouse_Sale_Prob[18997][1][213]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][213]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][213]["bSaveTime"] = 2
	-- GotTalent 物品 ID 187325  永久
	tCoatWarehouse_Sale_Prob[18997][1][214] = {}
	tCoatWarehouse_Sale_Prob[18997][1][214]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][214]["ItemChance"] = 8
	tCoatWarehouse_Sale_Prob[18997][1][214]["Item_1"] = 187325
	tCoatWarehouse_Sale_Prob[18997][1][214]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][214]["Index"] = 214
	tCoatWarehouse_Sale_Prob[18997][1][214]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][214]["Type"] = 1
	-- GotTalent 物品 ID 187325  时效
	tCoatWarehouse_Sale_Prob[18997][1][215] = {}
	tCoatWarehouse_Sale_Prob[18997][1][215]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][215]["ItemChance"] = 100
	tCoatWarehouse_Sale_Prob[18997][1][215]["Item_1"] = 187325
	tCoatWarehouse_Sale_Prob[18997][1][215]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][215]["Index"] = 215
	tCoatWarehouse_Sale_Prob[18997][1][215]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][215]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][215]["bSaveTime"] = 2
	-- FlameDance 物品 ID 192785  永久
	tCoatWarehouse_Sale_Prob[18997][1][216] = {}
	tCoatWarehouse_Sale_Prob[18997][1][216]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][216]["ItemChance"] = 8
	tCoatWarehouse_Sale_Prob[18997][1][216]["Item_1"] = 192785
	tCoatWarehouse_Sale_Prob[18997][1][216]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][216]["Index"] = 216
	tCoatWarehouse_Sale_Prob[18997][1][216]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][216]["Type"] = 1
	-- FlameDance 物品 ID 192785  时效
	tCoatWarehouse_Sale_Prob[18997][1][217] = {}
	tCoatWarehouse_Sale_Prob[18997][1][217]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][217]["ItemChance"] = 100
	tCoatWarehouse_Sale_Prob[18997][1][217]["Item_1"] = 192785
	tCoatWarehouse_Sale_Prob[18997][1][217]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][217]["Index"] = 217
	tCoatWarehouse_Sale_Prob[18997][1][217]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][217]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][217]["bSaveTime"] = 2
	-- ChivalrousDream 物品 ID 192625  永久
	tCoatWarehouse_Sale_Prob[18997][1][218] = {}
	tCoatWarehouse_Sale_Prob[18997][1][218]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][218]["ItemChance"] = 8
	tCoatWarehouse_Sale_Prob[18997][1][218]["Item_1"] = 192625
	tCoatWarehouse_Sale_Prob[18997][1][218]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][218]["Index"] = 218
	tCoatWarehouse_Sale_Prob[18997][1][218]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][218]["Type"] = 1
	-- ChivalrousDream 物品 ID 192625    时效
	tCoatWarehouse_Sale_Prob[18997][1][219] = {}
	tCoatWarehouse_Sale_Prob[18997][1][219]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][219]["ItemChance"] = 100
	tCoatWarehouse_Sale_Prob[18997][1][219]["Item_1"] = 192625
	tCoatWarehouse_Sale_Prob[18997][1][219]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][219]["Index"] = 219
	tCoatWarehouse_Sale_Prob[18997][1][219]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][219]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][219]["bSaveTime"] = 2
	-- DreamofYouth 物品 ID 188675  永久
	tCoatWarehouse_Sale_Prob[18997][1][220] = {}
	tCoatWarehouse_Sale_Prob[18997][1][220]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][220]["ItemChance"] = 8
	tCoatWarehouse_Sale_Prob[18997][1][220]["Item_1"] = 188675
	tCoatWarehouse_Sale_Prob[18997][1][220]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][220]["Index"] = 220
	tCoatWarehouse_Sale_Prob[18997][1][220]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][220]["Type"] = 1
	-- DreamofYouth 物品 ID 188675    时效
	tCoatWarehouse_Sale_Prob[18997][1][221] = {}
	tCoatWarehouse_Sale_Prob[18997][1][221]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][221]["ItemChance"] = 100
	tCoatWarehouse_Sale_Prob[18997][1][221]["Item_1"] = 188675
	tCoatWarehouse_Sale_Prob[18997][1][221]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][221]["Index"] = 221
	tCoatWarehouse_Sale_Prob[18997][1][221]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][221]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][221]["bSaveTime"] = 2
-- 增加五星坐骑外套SolarMonkey和LunarMonkey到锦衣阁
	-- SolarMonkey 物品 ID 200559  永久
	tCoatWarehouse_Sale_Prob[18997][1][222] = {}
	tCoatWarehouse_Sale_Prob[18997][1][222]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][222]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][222]["Item_1"] = 200559
	tCoatWarehouse_Sale_Prob[18997][1][222]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][222]["Index"] = 222
	tCoatWarehouse_Sale_Prob[18997][1][222]["Stars"] = 5
	tCoatWarehouse_Sale_Prob[18997][1][222]["Type"] = 2
	-- SolarMonkey 物品 ID 200559    时效
	tCoatWarehouse_Sale_Prob[18997][1][223] = {}
	tCoatWarehouse_Sale_Prob[18997][1][223]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][223]["ItemChance"] = 100
	tCoatWarehouse_Sale_Prob[18997][1][223]["Item_1"] = 200559
	tCoatWarehouse_Sale_Prob[18997][1][223]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][223]["Index"] = 223
	tCoatWarehouse_Sale_Prob[18997][1][223]["Stars"] = 5
	tCoatWarehouse_Sale_Prob[18997][1][223]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][223]["bSaveTime"] = 2
	-- LunarMonkey 物品 ID 200560  永久
	tCoatWarehouse_Sale_Prob[18997][1][224] = {}
	tCoatWarehouse_Sale_Prob[18997][1][224]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][224]["ItemChance"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][224]["Item_1"] = 200560
	tCoatWarehouse_Sale_Prob[18997][1][224]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][224]["Index"] = 224
	tCoatWarehouse_Sale_Prob[18997][1][224]["Stars"] = 5
	tCoatWarehouse_Sale_Prob[18997][1][224]["Type"] = 2
	-- LunarMonkey 物品 ID 200560    时效
	tCoatWarehouse_Sale_Prob[18997][1][225] = {}
	tCoatWarehouse_Sale_Prob[18997][1][225]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][225]["ItemChance"] = 100
	tCoatWarehouse_Sale_Prob[18997][1][225]["Item_1"] = 200560
	tCoatWarehouse_Sale_Prob[18997][1][225]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][225]["Index"] = 225
	tCoatWarehouse_Sale_Prob[18997][1][225]["Stars"] = 5
	tCoatWarehouse_Sale_Prob[18997][1][225]["Type"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][225]["bSaveTime"] = 2
-- 新增四星人物外套
	-- PrideofSuccess 物品 ID 192465  永久
	tCoatWarehouse_Sale_Prob[18997][1][226] = {}
	tCoatWarehouse_Sale_Prob[18997][1][226]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][226]["ItemChance"] = 5
	tCoatWarehouse_Sale_Prob[18997][1][226]["Item_1"] = 192465
	tCoatWarehouse_Sale_Prob[18997][1][226]["Attr"] = "0 0 3 0 0 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][226]["Index"] = 226
	tCoatWarehouse_Sale_Prob[18997][1][226]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][226]["Type"] = 1
	-- PrideofSuccess 物品 ID 192465    时效
	tCoatWarehouse_Sale_Prob[18997][1][227] = {}
	tCoatWarehouse_Sale_Prob[18997][1][227]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_Prob[18997][1][227]["ItemChance"] = 80
	tCoatWarehouse_Sale_Prob[18997][1][227]["Item_1"] = 192465
	tCoatWarehouse_Sale_Prob[18997][1][227]["Attr"] = "0 0 3 10080 1 0 0 1"
	tCoatWarehouse_Sale_Prob[18997][1][227]["Index"] = 227
	tCoatWarehouse_Sale_Prob[18997][1][227]["Stars"] = 4
	tCoatWarehouse_Sale_Prob[18997][1][227]["Type"] = 1
	tCoatWarehouse_Sale_Prob[18997][1][227]["bSaveTime"] = 2




	
local tCoatWarehouse_Sale_FistProb = {}
	tCoatWarehouse_Sale_FistProb[18996] = {}
	tCoatWarehouse_Sale_FistProb[18996][1] = {}
	tCoatWarehouse_Sale_FistProb[18996][1]["ItemChanceSum"] = 10000

	tCoatWarehouse_Sale_FistProb[18996][1][1] = {}
	tCoatWarehouse_Sale_FistProb[18996][1][1]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_FistProb[18996][1][1]["ItemChance"] = 1000
	tCoatWarehouse_Sale_FistProb[18996][1][1]["Item_1"] = 183475
	tCoatWarehouse_Sale_FistProb[18996][1][1]["Index"] = 249

	tCoatWarehouse_Sale_FistProb[18996][1][2] = {}
	tCoatWarehouse_Sale_FistProb[18996][1][2]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_FistProb[18996][1][2]["ItemChance"] = 1000
	tCoatWarehouse_Sale_FistProb[18996][1][2]["Item_1"] = 183425
	tCoatWarehouse_Sale_FistProb[18996][1][2]["Index"] = 250

	tCoatWarehouse_Sale_FistProb[18996][1][3] = {}
	tCoatWarehouse_Sale_FistProb[18996][1][3]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_FistProb[18996][1][3]["ItemChance"] = 1000
	tCoatWarehouse_Sale_FistProb[18996][1][3]["Item_1"] = 191405
	tCoatWarehouse_Sale_FistProb[18996][1][3]["Index"] = 251

	tCoatWarehouse_Sale_FistProb[18996][1][4] = {}
	tCoatWarehouse_Sale_FistProb[18996][1][4]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_FistProb[18996][1][4]["ItemChance"] = 1000
	tCoatWarehouse_Sale_FistProb[18996][1][4]["Item_1"] = 191305
	tCoatWarehouse_Sale_FistProb[18996][1][4]["Index"] = 252

	tCoatWarehouse_Sale_FistProb[18996][1][5] = {}
	tCoatWarehouse_Sale_FistProb[18996][1][5]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_FistProb[18996][1][5]["ItemChance"] = 1000
	tCoatWarehouse_Sale_FistProb[18996][1][5]["Item_1"] = 184335
	tCoatWarehouse_Sale_FistProb[18996][1][5]["Index"] = 255

	tCoatWarehouse_Sale_FistProb[18996][1][6] = {}
	tCoatWarehouse_Sale_FistProb[18996][1][6]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_FistProb[18996][1][6]["ItemChance"] = 1000
	tCoatWarehouse_Sale_FistProb[18996][1][6]["Item_1"] = 184305
	tCoatWarehouse_Sale_FistProb[18996][1][6]["Index"] = 258

	tCoatWarehouse_Sale_FistProb[18996][1][7] = {}
	tCoatWarehouse_Sale_FistProb[18996][1][7]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_FistProb[18996][1][7]["ItemChance"] = 1000
	tCoatWarehouse_Sale_FistProb[18996][1][7]["Item_1"] = 183375
	tCoatWarehouse_Sale_FistProb[18996][1][7]["Index"] = 261

	tCoatWarehouse_Sale_FistProb[18996][1][8] = {}
	tCoatWarehouse_Sale_FistProb[18996][1][8]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_FistProb[18996][1][8]["ItemChance"] = 1000
	tCoatWarehouse_Sale_FistProb[18996][1][8]["Item_1"] = 183335
	tCoatWarehouse_Sale_FistProb[18996][1][8]["Index"] = 262

	tCoatWarehouse_Sale_FistProb[18996][1][9] = {}
	tCoatWarehouse_Sale_FistProb[18996][1][9]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_FistProb[18996][1][9]["ItemChance"] = 1000
	tCoatWarehouse_Sale_FistProb[18996][1][9]["Item_1"] = 183325
	tCoatWarehouse_Sale_FistProb[18996][1][9]["Index"] = 263

	tCoatWarehouse_Sale_FistProb[18996][1][10] = {}
	tCoatWarehouse_Sale_FistProb[18996][1][10]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_FistProb[18996][1][10]["ItemChance"] = 1000
	tCoatWarehouse_Sale_FistProb[18996][1][10]["Item_1"] = 183315
	tCoatWarehouse_Sale_FistProb[18996][1][10]["Index"] = 264


	tCoatWarehouse_Sale_FistProb[18997] = {}
	tCoatWarehouse_Sale_FistProb[18997][1] = {}
	tCoatWarehouse_Sale_FistProb[18997][1]["ItemChanceSum"] = 10000

	tCoatWarehouse_Sale_FistProb[18997][1][1] = {}
	tCoatWarehouse_Sale_FistProb[18997][1][1]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_FistProb[18997][1][1]["ItemChance"] = 1000
	tCoatWarehouse_Sale_FistProb[18997][1][1]["Item_1"] = 194300
	tCoatWarehouse_Sale_FistProb[18997][1][1]["Index"] = 95

	tCoatWarehouse_Sale_FistProb[18997][1][2] = {}
	tCoatWarehouse_Sale_FistProb[18997][1][2]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_FistProb[18997][1][2]["ItemChance"] = 1000
	tCoatWarehouse_Sale_FistProb[18997][1][2]["Item_1"] = 192345
	tCoatWarehouse_Sale_FistProb[18997][1][2]["Index"] = 98

	tCoatWarehouse_Sale_FistProb[18997][1][3] = {}
	tCoatWarehouse_Sale_FistProb[18997][1][3]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_FistProb[18997][1][3]["ItemChance"] = 1000
	tCoatWarehouse_Sale_FistProb[18997][1][3]["Item_1"] = 184365
	tCoatWarehouse_Sale_FistProb[18997][1][3]["Index"] = 103

	tCoatWarehouse_Sale_FistProb[18997][1][4] = {}
	tCoatWarehouse_Sale_FistProb[18997][1][4]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_FistProb[18997][1][4]["ItemChance"] = 1000
	tCoatWarehouse_Sale_FistProb[18997][1][4]["Item_1"] = 183485
	tCoatWarehouse_Sale_FistProb[18997][1][4]["Index"] = 106

	tCoatWarehouse_Sale_FistProb[18997][1][5] = {}
	tCoatWarehouse_Sale_FistProb[18997][1][5]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_FistProb[18997][1][5]["ItemChance"] = 1000
	tCoatWarehouse_Sale_FistProb[18997][1][5]["Item_1"] = 192300
	tCoatWarehouse_Sale_FistProb[18997][1][5]["Index"] = 112

	tCoatWarehouse_Sale_FistProb[18997][1][6] = {}
	tCoatWarehouse_Sale_FistProb[18997][1][6]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_FistProb[18997][1][6]["ItemChance"] = 1000
	tCoatWarehouse_Sale_FistProb[18997][1][6]["Item_1"] = 183385
	tCoatWarehouse_Sale_FistProb[18997][1][6]["Index"] = 115

	tCoatWarehouse_Sale_FistProb[18997][1][7] = {}
	tCoatWarehouse_Sale_FistProb[18997][1][7]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_FistProb[18997][1][7]["ItemChance"] = 1000
	tCoatWarehouse_Sale_FistProb[18997][1][7]["Item_1"] = 183395
	tCoatWarehouse_Sale_FistProb[18997][1][7]["Index"] = 116

	tCoatWarehouse_Sale_FistProb[18997][1][8] = {}
	tCoatWarehouse_Sale_FistProb[18997][1][8]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_FistProb[18997][1][8]["ItemChance"] = 1000
	tCoatWarehouse_Sale_FistProb[18997][1][8]["Item_1"] = 183345
	tCoatWarehouse_Sale_FistProb[18997][1][8]["Index"] = 117

	tCoatWarehouse_Sale_FistProb[18997][1][9] = {}
	tCoatWarehouse_Sale_FistProb[18997][1][9]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_FistProb[18997][1][9]["ItemChance"] = 1000
	tCoatWarehouse_Sale_FistProb[18997][1][9]["Item_1"] = 184315
	tCoatWarehouse_Sale_FistProb[18997][1][9]["Index"] = 119

	tCoatWarehouse_Sale_FistProb[18997][1][10] = {}
	tCoatWarehouse_Sale_FistProb[18997][1][10]["RandomItemChanceType"] = 2
	tCoatWarehouse_Sale_FistProb[18997][1][10]["ItemChance"] = 1000
	tCoatWarehouse_Sale_FistProb[18997][1][10]["Item_1"] = 183465
	tCoatWarehouse_Sale_FistProb[18997][1][10]["Index"] = 120




	
	
--外套物品ID对应的信息
local tCoatWarehouse_Sale_CotaItemInfo = {}
	--星级
	tCoatWarehouse_Sale_CotaItemInfo["Stars"] = {}
	--时装/骑宠 时装为1 骑宠为2
	tCoatWarehouse_Sale_CotaItemInfo["Type"] = {}

for i,v in pairs(tCoatWarehouse_Sale_Prob[18996][1]) do
	if type(v) == "table" then
		local nCoatId = v["Item_1"]
		local nStar = v["Stars"]
		local nCoatType = v["Type"]
		if nStar ~= 0 then
			tCoatWarehouse_Sale_CotaItemInfo["Stars"][nCoatId] = nStar
			tCoatWarehouse_Sale_CotaItemInfo["Type"][nCoatId] = nCoatType
		end
	end
end

for i,v in pairs(tCoatWarehouse_Sale_Prob[18997][1]) do
	if type(v) == "table" then
		local nCoatId = v["Item_1"]
		local nStar = v["Stars"]
		local nCoatType = v["Type"]
		if nStar ~= 0 then
			tCoatWarehouse_Sale_CotaItemInfo["Stars"][nCoatId] = nStar
			tCoatWarehouse_Sale_CotaItemInfo["Type"][nCoatId] = nCoatType
		end
	end
end
	--五星时装外套
	tCoatWarehouse_Sale_CotaItemInfo["Stars"][189065] = 5
	tCoatWarehouse_Sale_CotaItemInfo["Type"][189065] = 1
	
	tCoatWarehouse_Sale_CotaItemInfo["Stars"][188915] = 5
	tCoatWarehouse_Sale_CotaItemInfo["Type"][188915] = 1
	
	tCoatWarehouse_Sale_CotaItemInfo["Stars"][193445] = 5
	tCoatWarehouse_Sale_CotaItemInfo["Type"][193445] = 1
	
	tCoatWarehouse_Sale_CotaItemInfo["Stars"][192605] = 4
	tCoatWarehouse_Sale_CotaItemInfo["Type"][192605] = 1
	
	-- tCoatWarehouse_Sale_CotaItemInfo["Stars"][188395] = 4
	-- tCoatWarehouse_Sale_CotaItemInfo["Type"][188395] = 1
	
	tCoatWarehouse_Sale_CotaItemInfo["Stars"][193525] = 5
	tCoatWarehouse_Sale_CotaItemInfo["Type"][193525] = 1
	
	tCoatWarehouse_Sale_CotaItemInfo["Stars"][189675] = 5
	tCoatWarehouse_Sale_CotaItemInfo["Type"][189675] = 1
	
	--五星骑宠外套
	tCoatWarehouse_Sale_CotaItemInfo["Stars"][200494] = 5
	tCoatWarehouse_Sale_CotaItemInfo["Type"][200494] = 2
	
	tCoatWarehouse_Sale_CotaItemInfo["Stars"][200524] = 5
	tCoatWarehouse_Sale_CotaItemInfo["Type"][200524] = 2
	
	tCoatWarehouse_Sale_CotaItemInfo["Stars"][200517] = 5
	tCoatWarehouse_Sale_CotaItemInfo["Type"][200517] = 2
	
	tCoatWarehouse_Sale_CotaItemInfo["Stars"][200531] = 5
	tCoatWarehouse_Sale_CotaItemInfo["Type"][200531] = 2
	
	tCoatWarehouse_Sale_CotaItemInfo["Stars"][200540] = 5
	tCoatWarehouse_Sale_CotaItemInfo["Type"][200540] = 2
	
	tCoatWarehouse_Sale_CotaItemInfo["Stars"][200544] = 5
	tCoatWarehouse_Sale_CotaItemInfo["Type"][200544] = 2
	
	tCoatWarehouse_Sale_CotaItemInfo["Stars"][200592] = 5
	tCoatWarehouse_Sale_CotaItemInfo["Type"][200592] = 2
	
	tCoatWarehouse_Sale_CotaItemInfo["Stars"][200559] = 5
	tCoatWarehouse_Sale_CotaItemInfo["Type"][200559] = 2
	
	tCoatWarehouse_Sale_CotaItemInfo["Stars"][200560] = 5
	tCoatWarehouse_Sale_CotaItemInfo["Type"][200560] = 2

	
	--200595,'新狐妖骑宠外套',
	tCoatWarehouse_Sale_CotaItemInfo["Stars"][200595] = 3
	tCoatWarehouse_Sale_CotaItemInfo["Type"][200595] = 2
	--200596,'新狐妖骑宠外套（光效版）',
	tCoatWarehouse_Sale_CotaItemInfo["Stars"][200596] = 5
	tCoatWarehouse_Sale_CotaItemInfo["Type"][200596] = 2
	
	--200539,'DivineFox',
	tCoatWarehouse_Sale_CotaItemInfo["Stars"][200539] = 4
	tCoatWarehouse_Sale_CotaItemInfo["Type"][200539] = 2
	
	--200527,'Anniversary~Lotus~Base',
	tCoatWarehouse_Sale_CotaItemInfo["Stars"][200527] = 3
	tCoatWarehouse_Sale_CotaItemInfo["Type"][200527] = 2
	
	--200570,'Azure~Lotus.',
	tCoatWarehouse_Sale_CotaItemInfo["Stars"][200570] = 3
	tCoatWarehouse_Sale_CotaItemInfo["Type"][200570] = 2
	
	--200571,'Solar~Lotus.',
	tCoatWarehouse_Sale_CotaItemInfo["Stars"][200571] = 3
	tCoatWarehouse_Sale_CotaItemInfo["Type"][200571] = 2
	
	--200574,'Snow~Lotus',
	tCoatWarehouse_Sale_CotaItemInfo["Stars"][200574] = 4
	tCoatWarehouse_Sale_CotaItemInfo["Type"][200574] = 2
	
	--200537,'Holy~Lotus~(Goddess)',
	tCoatWarehouse_Sale_CotaItemInfo["Stars"][200537] = 5
	tCoatWarehouse_Sale_CotaItemInfo["Type"][200537] = 2
	
	--200572,'Pure~Lotus'
	tCoatWarehouse_Sale_CotaItemInfo["Stars"][200572] = 5
	tCoatWarehouse_Sale_CotaItemInfo["Type"][200572] = 2
	
	--200573,'Radiant~Lotus.',
	tCoatWarehouse_Sale_CotaItemInfo["Stars"][200573] = 5
	tCoatWarehouse_Sale_CotaItemInfo["Type"][200573] = 2
	
----------------------------------------------------------LOG部分--------------------------------------------------------
-- 获得幽兰莲花 	350 20359
-- 获得幻雪白莲花 	350 20360
-- 获得净世白莲 	350 20361
-- 获得璀璨金莲 	350 20362
-- 普通金莲花合成 	350 20363
-- 进阶给圣莲子 	350 20364
-- 新增EMONEYLog
local tCoatWarehouse_Sale_Log = {}
	
	--EmoneyLog部分
	tCoatWarehouse_Sale_Log[18996] = {}
	tCoatWarehouse_Sale_Log[18997] = {}
	
	
	--玩家使用岫山玉抽取普通外套阁
	tCoatWarehouse_Sale_Log[18996]["ELItemDraw"] = "350	4397	0	0	1	"
	--玩家使用昆仑玉抽取稀有外套阁
	tCoatWarehouse_Sale_Log[18997]["ELItemDraw"] = "350	4398	0	0	1	"
	--玩家使用岫山玉抽三连取普通外套阁
	tCoatWarehouse_Sale_Log[18996]["ELItemDrawTre"] = "350	4399	0	0	1	"
	--玩家使用昆仑玉三连抽取稀有外套阁
	tCoatWarehouse_Sale_Log[18997]["ELItemDrawTre"] = "350	4400	0	0	1	"
	
	--玩家付费抽取普通外套阁
	tCoatWarehouse_Sale_Log[18996]["ELEmDraw"] = "350	4401	27	27	1	"
	--玩家付费三连抽取普通外套阁
	tCoatWarehouse_Sale_Log[18996]["ELEmDrawTre"] = "350	4402	81	81	1	"

	--玩家付费抽取稀有外套阁
	tCoatWarehouse_Sale_Log[18997]["ELEmDraw"] = "350	4403	198	198	1	"
	--玩家付费抽取稀有外套阁
	tCoatWarehouse_Sale_Log[18997]["ELEmDrawTre"] = "350	4404	588	588	1	"
	
	--碎片合成
	tCoatWarehouse_Sale_Log["PieceCompose"] = "0,0,%d,%d,12000286,2,%d,1"
	
	--玩家参加活动获得岫山玉
	tCoatWarehouse_Sale_Log["ActAwXiuJade"] = "0,0,0,0,12000286,1[1],0,0"
	--玩家使用碎片获得岫山玉
	tCoatWarehouse_Sale_Log["CompAwXiuJade"] = "0,0,0,0,12000286,1[2],0,0"
	--玩家在普通外套阁抽得昆仑玉
	tCoatWarehouse_Sale_Log["ActAwKunJade"] = "0,0,0,0,12000286,1[3],0,0"
	--玩家使用碎片获得昆仑玉
	tCoatWarehouse_Sale_Log["CompAwKunJade"] = "0,0,0,0,12000286,1[4],0,0"
	--玩家在稀有外套阁抽得千年血玉
	tCoatWarehouse_Sale_Log["ActAwBloodJade"] = "0,0,0,0,12000286,1[5],0,0"
	--玩家使用碎片获得千年血玉
	tCoatWarehouse_Sale_Log["CompAwBloodJade"] = "0,0,0,0,12000286,1[6],0,0"
	--玩家在普通外套阁抽奖
	tCoatWarehouse_Sale_Log["ComDraw"] = "0,0,0,0,12000286,1[7],0,0"
	--玩家在普通外套阁三连抽
	tCoatWarehouse_Sale_Log["ComDrawTre"] = "0,0,0,0,12000286,1[8],0,0"
	--玩家在普通外套阁抽到三星外套
	tCoatWarehouse_Sale_Log["ComDrawAw3"] = "0,0,0,0,12000286,1[9],0,0"
	--玩家在稀有外套阁抽奖
	tCoatWarehouse_Sale_Log["RareDraw"] = "0,0,0,0,12000286,1[10],0,0"
	--玩家在稀有外套阁抽奖三连抽
	tCoatWarehouse_Sale_Log["RareDrawTre"] = "0,0,0,0,12000286,1[11],0,0"
	--玩家在稀有外套阁抽得5星外套图纸碎片
	tCoatWarehouse_Sale_Log["RareDrawAw5"] = "0,0,0,0,12000286,1[12],0,0"
	--玩家使用图纸制作五星外套
	tCoatWarehouse_Sale_Log["MapTo5Star"] = "0,0,0,0,12000286,1[13],0,0"
	--玩家使用千年血玉兑换5星外套
	tCoatWarehouse_Sale_Log["RareExAw5"] = "0,0,0,0,12000286,1[14],0,0"
	
	--玩家抽取物品及特殊log
	tCoatWarehouse_Sale_Log["DrawSp"] = {}
	tCoatWarehouse_Sale_Log["DrawSp"][18996] = {}
	--玩家在普通外套阁抽得昆仑玉
	tCoatWarehouse_Sale_Log["DrawSp"][18996][3008223] = tCoatWarehouse_Sale_Log["ActAwKunJade"]
	
	tCoatWarehouse_Sale_Log["DrawSp"][18997] = {}
	--玩家在稀有外套阁抽得5星外套图纸碎片
	tCoatWarehouse_Sale_Log["DrawSp"][18997][3008230] = tCoatWarehouse_Sale_Log["RareDrawAw5"]
	tCoatWarehouse_Sale_Log["DrawSp"][18997][3008232] = tCoatWarehouse_Sale_Log["RareDrawAw5"]
	tCoatWarehouse_Sale_Log["DrawSp"][18997][3008254] = tCoatWarehouse_Sale_Log["RareDrawAw5"]
	tCoatWarehouse_Sale_Log["DrawSp"][18997][3008256] = tCoatWarehouse_Sale_Log["RareDrawAw5"]
	tCoatWarehouse_Sale_Log["DrawSp"][18997][3008258] = tCoatWarehouse_Sale_Log["RareDrawAw5"]
	tCoatWarehouse_Sale_Log["DrawSp"][18997][3008260] = tCoatWarehouse_Sale_Log["RareDrawAw5"]
	tCoatWarehouse_Sale_Log["DrawSp"][18997][3008262] = tCoatWarehouse_Sale_Log["RareDrawAw5"]
	tCoatWarehouse_Sale_Log["DrawSp"][18997][3008264] = tCoatWarehouse_Sale_Log["RareDrawAw5"]
	--玩家在稀有外套阁抽得千年血玉
	tCoatWarehouse_Sale_Log["DrawSp"][18997][3008225] = tCoatWarehouse_Sale_Log["ActAwBloodJade"]
	
	
	tCoatWarehouse_Sale_Log["Process"] = {}
	tCoatWarehouse_Sale_Log["Process"][18996] = tCoatWarehouse_Sale_Log["ComDraw"]
	tCoatWarehouse_Sale_Log["Process"][18997] = tCoatWarehouse_Sale_Log["RareDraw"]
	
	--合成log
	tCoatWarehouse_Sale_Log["ComPoseSp"] = {}
	tCoatWarehouse_Sale_Log["ComPoseSp"][3008222] = tCoatWarehouse_Sale_Log["CompAwXiuJade"]
	tCoatWarehouse_Sale_Log["ComPoseSp"][3008224] = tCoatWarehouse_Sale_Log["CompAwKunJade"]
	tCoatWarehouse_Sale_Log["ComPoseSp"][3008226] = tCoatWarehouse_Sale_Log["CompAwBloodJade"]
	
	--三连抽log
	tCoatWarehouse_Sale_Log["SpDrawTre"] = {}
	tCoatWarehouse_Sale_Log["SpDrawTre"][18996] = tCoatWarehouse_Sale_Log["ComDrawTre"]
	tCoatWarehouse_Sale_Log["SpDrawTre"][18997] = tCoatWarehouse_Sale_Log["RareDrawTre"]
	
	--活动时间后删除物品
	tCoatWarehouse_Sale_Log["AfterTimeDel"] = "0,0,%d,1,12000286,2,0,0"
	
	--使用岫山玉/昆仑玉 入阁
	tCoatWarehouse_Sale_Log["EnterUseJade"] = "0,0,%d,1,12000286,2,0,0"
	
	--使用三个岫山玉/昆仑玉 入阁
	tCoatWarehouse_Sale_Log["EnterUseThreeJade"] = "0,0,%d,3,12000286,2,0,0"
	
	--获得材料
	tCoatWarehouse_Sale_Log["AwardMeta"] = "0,0,0,0,12000286,2,%d,%d"
	
	--使用背包信
	tCoatWarehouse_Sale_Log["UseBpLetter"] = {}
	tCoatWarehouse_Sale_Log["UseBpLetter"][1] = "0,0,3008220,1,12000286,2,4,30"
	tCoatWarehouse_Sale_Log["UseBpLetter"][2] = "0,0,3008220,1,12000286,2,6,15"
	--合成外套
	tCoatWarehouse_Sale_Log["ListToCoat"] = "0,0,3008227[3008228][%d],%d[%d][1],12000286,2,%d,1"
	--拆解外套
	tCoatWarehouse_Sale_Log["SplitTheCoat"] = "0,0,%d,1,12000286,2,0,0"
	
	--抽奖得到物品
	tCoatWarehouse_Sale_Log["DrawAwItem"] = "0,0,%d,1,12000286,2,%d,1"
	
	--抽奖得到三个物品
	tCoatWarehouse_Sale_Log["DrawAwThreeItem"] = "0,0,0,0,12000286,2,%d[%d][%d],1[1][1]"
	
	--兑换五星外套
	tCoatWarehouse_Sale_Log["Exchange5Star"] = "0,0,%d,%d,12000286,2,%d,1"
	
	tCoatWarehouse_Sale_Log["NewSerAwExp"] = "0,0,%d,%d,12000286,2,4[3002926][3008221],%d[%d][%d]"
	
	tCoatWarehouse_Sale_Log["NewSerAw"] = "0,0,%d,%d,12000286,2,3002926[3008221],%d[%d]"
	
local tCoatWarehouse_Sale_NewLog = {}
	tCoatWarehouse_Sale_NewLog["Split"] = {}
	--时装
	tCoatWarehouse_Sale_NewLog["Split"][1] = {}
	--1星时装
	tCoatWarehouse_Sale_NewLog["Split"][1][1] = "0,0,0,0,12000305,1[1],0,0"
	--2星时装
	tCoatWarehouse_Sale_NewLog["Split"][1][2] = "0,0,0,0,12000305,1[2],0,0"
	--3星时装
	tCoatWarehouse_Sale_NewLog["Split"][1][3] = "0,0,0,0,12000305,1[3],0,0"
	--4星时装
	tCoatWarehouse_Sale_NewLog["Split"][1][4] = "0,0,0,0,12000305,1[4],0,0"
	--5星时装
	tCoatWarehouse_Sale_NewLog["Split"][1][5] = "0,0,0,0,12000305,1[5],0,0"
	--骑宠
	tCoatWarehouse_Sale_NewLog["Split"][2] = {}
	--1星骑宠
	tCoatWarehouse_Sale_NewLog["Split"][2][1] = "0,0,0,0,12000305,1[6],0,0"
	--2星骑宠
	tCoatWarehouse_Sale_NewLog["Split"][2][2] = "0,0,0,0,12000305,1[7],0,0"
	--3星骑宠
	tCoatWarehouse_Sale_NewLog["Split"][2][3] = "0,0,0,0,12000305,1[8],0,0"
	--4星骑宠
	tCoatWarehouse_Sale_NewLog["Split"][2][4] = "0,0,0,0,12000305,1[9],0,0"
	--5星骑宠
	tCoatWarehouse_Sale_NewLog["Split"][2][5] = "0,0,0,0,12000305,1[10],0,0"
	
	
-- 新增七夕

local tCoatWarehouse_Sale_NewCoat = {}
	tCoatWarehouse_Sale_NewCoat["Attr"] = "0 %d 3 0 0 0 0 1"
	-- 幽兰莲花
	tCoatWarehouse_Sale_NewCoat[1] = {}
	tCoatWarehouse_Sale_NewCoat[1]["DeleteItem"] = {3200880,4}
	tCoatWarehouse_Sale_NewCoat[1]["AwardItem"] = {200570,1}
	tCoatWarehouse_Sale_NewCoat[1]["AwardItemLog"] = "0,0,3200880,4,12000476,1[3],200570,1"
	tCoatWarehouse_Sale_NewCoat[1]["EmoneyLog"] = "350	20359	0	0	1	"
	tCoatWarehouse_Sale_NewCoat[1]["DeleteStrength"] = 1000
	tCoatWarehouse_Sale_NewCoat[1]["DeleteItemLog"] = "0,0,3200880,1,12000476,2,12,1000"
	
	-- 幻雪白莲花
	tCoatWarehouse_Sale_NewCoat[2] = {}
	tCoatWarehouse_Sale_NewCoat[2]["DeleteItem"] = {200570,3}
	tCoatWarehouse_Sale_NewCoat[2]["AwardItem"] = {200574,1}
	tCoatWarehouse_Sale_NewCoat[2]["AwardItemLog"] = "0,0,200570,3,12000476,1[4],200574,1"
	tCoatWarehouse_Sale_NewCoat[2]["EmoneyLog"] = "350	20360	0	0	1	"
	
	-- 【净世白莲】坐骑外套
	tCoatWarehouse_Sale_NewCoat[3] = {}
	tCoatWarehouse_Sale_NewCoat[3]["DeleteItem"] = {200574,3}
	tCoatWarehouse_Sale_NewCoat[3]["AwardItem"] = {200572,1}
	tCoatWarehouse_Sale_NewCoat[3]["AwardItemLog"] = "0,0,200574,3,12000476,1[5],200572,1"	
	tCoatWarehouse_Sale_NewCoat[3]["EmoneyLog"] = "350	20361	0	0	1	"
	
    -- 【璀璨金莲】坐骑外套	
	tCoatWarehouse_Sale_NewCoat[4] = {}
	tCoatWarehouse_Sale_NewCoat[4]["DeleteItem"] = {200571,3}
	tCoatWarehouse_Sale_NewCoat[4]["AwardItem"] = {200573,1}
	tCoatWarehouse_Sale_NewCoat[4]["AwardItemLog"] = "0,0,200571,3,12000476,1[7],200573,1"	
	tCoatWarehouse_Sale_NewCoat[4]["EmoneyLog"] = "350	20362	0	0	1	"	

	
-- 普通金莲花合成数据
local tCoatWarehouse_Sale_PTJLH = {}
	tCoatWarehouse_Sale_PTJLH["NeedNum"] = 149
	tCoatWarehouse_Sale_PTJLH["RewardItem"] = 200571
	tCoatWarehouse_Sale_PTJLH["Attr"] = "0 1 3 0 0 0 0 1"
	tCoatWarehouse_Sale_PTJLH["AwardItemLog"] = "0,0,3200881,149,12000476,1[6],200571,1"
	tCoatWarehouse_Sale_PTJLH["EmoneyLog"] = "350	20363	0	0	1	"
	
	tCoatWarehouse_Sale_PTJLH["Strength"] = 30
	tCoatWarehouse_Sale_PTJLH["DelItemLog"] = "0,0,3200881,1,12000476,2,12,30"

	

	
local tCoatWarehouse_Sale_TongYiCont = {}
	tCoatWarehouse_Sale_TongYiCont["Attr"] = "0 %d"
	tCoatWarehouse_Sale_TongYiCont["Log"] = "0,0,0,0,12000476,2,%d,%d"
	
local tCoatWarehouse_Sale_LZNum = {}
	
	tCoatWarehouse_Sale_LZNum[1] = {}
	tCoatWarehouse_Sale_LZNum[1]["RewardItem"] = {}
	tCoatWarehouse_Sale_LZNum[1]["RewardItem"][1] = {}
	tCoatWarehouse_Sale_LZNum[1]["RewardItem"][1]["Id"] = 3200880
	tCoatWarehouse_Sale_LZNum[1]["RewardItem"][1]["Attr"] = "0 %d"
	tCoatWarehouse_Sale_LZNum[1]["Log"] = "0,0,0,0,12000476,1[2],3200880,%d"
	tCoatWarehouse_Sale_LZNum[1]["EmoneyLog"] = "350	20364	0	0	1	"
	tCoatWarehouse_Sale_LZNum[1]["Talk"] = tCoatWarehouse_Sale_Text["JJSuccess"]
	
	tCoatWarehouse_Sale_LZNum[2] = {}
	tCoatWarehouse_Sale_LZNum[2][1] = 1
	tCoatWarehouse_Sale_LZNum[2][2] = 1
	tCoatWarehouse_Sale_LZNum[2][3] = 1
	tCoatWarehouse_Sale_LZNum[2][4] = 2
	tCoatWarehouse_Sale_LZNum[2][5] = 2
	tCoatWarehouse_Sale_LZNum[2][6] = 2
	tCoatWarehouse_Sale_LZNum[2][7] = 4
	tCoatWarehouse_Sale_LZNum[2][8] = 4
	
-- 新增打宝区掉落（指的是古神灵境）：每天限制20个岫山玉碎片，概率3%掉落
local tCoatWarehouse_Sale_MonsterDrop = {}
tCoatWarehouse_Sale_MonsterDrop[1] = {}
tCoatWarehouse_Sale_MonsterDrop[1]["ItemChanceSum"] = 10000
-- 掉落
tCoatWarehouse_Sale_MonsterDrop[1][1] = {}
tCoatWarehouse_Sale_MonsterDrop[1][1]["RandomItemChanceType"] = 2
tCoatWarehouse_Sale_MonsterDrop[1][1]["ItemChance"] = 300
tCoatWarehouse_Sale_MonsterDrop[1][1]["RewardItem"] = {}
tCoatWarehouse_Sale_MonsterDrop[1][1]["RewardItem"][1] = {}
tCoatWarehouse_Sale_MonsterDrop[1][1]["RewardItem"][1]["Id"] = 3008222
tCoatWarehouse_Sale_MonsterDrop[1][1]["RewardItem"][1]["Attr"] = "0 1"
tCoatWarehouse_Sale_MonsterDrop[1][1]["EventType"] = tCoatWarehouse_Sale_Stc["Event"][1]
tCoatWarehouse_Sale_MonsterDrop[1][1]["DataType"] = tCoatWarehouse_Sale_Stc["Data"][1]
tCoatWarehouse_Sale_MonsterDrop[1][1]["RewardData"] = 20
tCoatWarehouse_Sale_MonsterDrop[1][1]["RewardDelay"] = 1
tCoatWarehouse_Sale_MonsterDrop[1][1]["RewardTimeType"] = 4
tCoatWarehouse_Sale_MonsterDrop[1][1]["LogId"] = 12001088
tCoatWarehouse_Sale_MonsterDrop[1][1]["LogStep"] = "1[1]"
-- 不掉落
tCoatWarehouse_Sale_MonsterDrop[1][2] = {}
tCoatWarehouse_Sale_MonsterDrop[1][2]["RandomItemChanceType"] = 2
tCoatWarehouse_Sale_MonsterDrop[1][2]["ItemChance"] = 9700
tCoatWarehouse_Sale_MonsterDrop[1][2]["LogId"] = 12001088
	
-- 可选包数据
local tCoatWarehouse_Sale_SelectPack = {}
	tCoatWarehouse_Sale_SelectPack[3200883] = {}
	tCoatWarehouse_Sale_SelectPack[3200883][1] = {}
	tCoatWarehouse_Sale_SelectPack[3200883][1]["DeleteItem"] = {}
	tCoatWarehouse_Sale_SelectPack[3200883][1]["DeleteItem"][1] = {}	
	tCoatWarehouse_Sale_SelectPack[3200883][1]["DeleteItem"][1]["Id"] = 3200883	
	tCoatWarehouse_Sale_SelectPack[3200883][1]["RewardStrengthValue"] = {}
	tCoatWarehouse_Sale_SelectPack[3200883][1]["RewardStrengthValue"]["Value"] = 100
	tCoatWarehouse_Sale_SelectPack[3200883][1]["Log"] = "0,0,3200883,1,12000476,2,12,100"
	tCoatWarehouse_Sale_SelectPack[3200883][1]["Talk"] = tCoatWarehouse_Sale_Text["RewardQX"][3200883][1]
	
	tCoatWarehouse_Sale_SelectPack[3200883][2] = {}
	tCoatWarehouse_Sale_SelectPack[3200883][2]["DeleteItem"] = {}
	tCoatWarehouse_Sale_SelectPack[3200883][2]["DeleteItem"][1] = {}	
	tCoatWarehouse_Sale_SelectPack[3200883][2]["DeleteItem"][1]["Id"] = 3200883
	tCoatWarehouse_Sale_SelectPack[3200883][2]["RewardExpTime"] = {}
	tCoatWarehouse_Sale_SelectPack[3200883][2]["RewardExpTime"]["Value"] = 600
	tCoatWarehouse_Sale_SelectPack[3200883][2]["Log"] = "0,0,3200883,1,12000476,2,4,600"
	tCoatWarehouse_Sale_SelectPack[3200883][2]["Talk"] = tCoatWarehouse_Sale_Text["RewardQX"][3200883][2]
	
	tCoatWarehouse_Sale_SelectPack[3200883][3] = {}
	tCoatWarehouse_Sale_SelectPack[3200883][3]["DeleteItem"] = {}
	tCoatWarehouse_Sale_SelectPack[3200883][3]["DeleteItem"][1] = {}	
	tCoatWarehouse_Sale_SelectPack[3200883][3]["DeleteItem"][1]["Id"] = 3200883
	tCoatWarehouse_Sale_SelectPack[3200883][3]["RewardItem"] = {}
	tCoatWarehouse_Sale_SelectPack[3200883][3]["RewardItem"][1] = {}
	tCoatWarehouse_Sale_SelectPack[3200883][3]["RewardItem"][1]["Id"] = 3003126
	tCoatWarehouse_Sale_SelectPack[3200883][3]["RewardItem"][1]["Attr"] = "0 3 3"
	tCoatWarehouse_Sale_SelectPack[3200883][3]["Log"] = "0,0,3200883,1,12000476,2,3003126,3"
	tCoatWarehouse_Sale_SelectPack[3200883][3]["Talk"] = tCoatWarehouse_Sale_Text["RewardQX"][3200883][3]
	
	tCoatWarehouse_Sale_SelectPack[3200883][4] = {}
	tCoatWarehouse_Sale_SelectPack[3200883][4]["DeleteItem"] = {}
	tCoatWarehouse_Sale_SelectPack[3200883][4]["DeleteItem"][1] = {}	
	tCoatWarehouse_Sale_SelectPack[3200883][4]["DeleteItem"][1]["Id"] = 3200883
	tCoatWarehouse_Sale_SelectPack[3200883][4]["RewardItem"] = {}
	tCoatWarehouse_Sale_SelectPack[3200883][4]["RewardItem"][1] = {}
	tCoatWarehouse_Sale_SelectPack[3200883][4]["RewardItem"][1]["Id"] = 3009000
	tCoatWarehouse_Sale_SelectPack[3200883][4]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tCoatWarehouse_Sale_SelectPack[3200883][4]["Log"] = "0,0,3200883,1,12000476,2,3009000,3"
	tCoatWarehouse_Sale_SelectPack[3200883][4]["Talk"] = tCoatWarehouse_Sale_Text["RewardQX"][3200883][4]
	
	
	tCoatWarehouse_Sale_SelectPack[3200882] = {}
	tCoatWarehouse_Sale_SelectPack[3200882][1] = {}
	tCoatWarehouse_Sale_SelectPack[3200882][1]["DeleteItem"] = {}
	tCoatWarehouse_Sale_SelectPack[3200882][1]["DeleteItem"][1] = {}	
	tCoatWarehouse_Sale_SelectPack[3200882][1]["DeleteItem"][1]["Id"] = 3200882
	tCoatWarehouse_Sale_SelectPack[3200882][1]["RewardItem"] = {}
	tCoatWarehouse_Sale_SelectPack[3200882][1]["RewardItem"][1] = {}
	tCoatWarehouse_Sale_SelectPack[3200882][1]["RewardItem"][1]["Id"] = 3200880
	tCoatWarehouse_Sale_SelectPack[3200882][1]["RewardItem"][1]["Attr"] = "0 1"
	tCoatWarehouse_Sale_SelectPack[3200882][1]["Log"] = "0,0,3200882,1,12000476,2,3200880,1"
	tCoatWarehouse_Sale_SelectPack[3200882][1]["Talk"] = tCoatWarehouse_Sale_Text["RewardQX"][3200782][1]
	
	tCoatWarehouse_Sale_SelectPack[3200882][2] = {}
	tCoatWarehouse_Sale_SelectPack[3200882][2]["DeleteItem"] = {}
	tCoatWarehouse_Sale_SelectPack[3200882][2]["DeleteItem"][1] = {}	
	tCoatWarehouse_Sale_SelectPack[3200882][2]["DeleteItem"][1]["Id"] = 3200882
	tCoatWarehouse_Sale_SelectPack[3200882][2]["RewardItem"] = {}
	tCoatWarehouse_Sale_SelectPack[3200882][2]["RewardItem"][1] = {}
	tCoatWarehouse_Sale_SelectPack[3200882][2]["RewardItem"][1]["Id"] = 3008225
	tCoatWarehouse_Sale_SelectPack[3200882][2]["RewardItem"][1]["Attr"] = "0 1"
	tCoatWarehouse_Sale_SelectPack[3200882][2]["Log"] = "0,0,3200882,1,12000476,2,3008225,1"
	tCoatWarehouse_Sale_SelectPack[3200882][2]["Talk"] = tCoatWarehouse_Sale_Text["RewardQX"][3200782][2]
	

	
local tCoatWarehouse_Sale_SpecailLog = {}
	tCoatWarehouse_Sale_SpecailLog[1] = "0,0,0,0,12000476,1[1],0,0"
	
-- 新增礼包
local tCoatWarehouse_Sale_FirstItem = {}
	tCoatWarehouse_Sale_FirstItem[3301053] = {}
	
	tCoatWarehouse_Sale_FirstItem[3301053][1] = {}
	tCoatWarehouse_Sale_FirstItem[3301053][1]["DeleteItem"] = {}
	tCoatWarehouse_Sale_FirstItem[3301053][1]["DeleteItem"][1] = {}	
	tCoatWarehouse_Sale_FirstItem[3301053][1]["DeleteItem"][1]["Id"] = 3301053
	tCoatWarehouse_Sale_FirstItem[3301053][1]["RewardItem"] = {}
	tCoatWarehouse_Sale_FirstItem[3301053][1]["RewardItem"][1] = {}
	tCoatWarehouse_Sale_FirstItem[3301053][1]["RewardItem"][1]["Id"] = 193445
	tCoatWarehouse_Sale_FirstItem[3301053][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tCoatWarehouse_Sale_FirstItem[3301053][1]["Log"] = "0,0,3301053,1,12000476,2,193445,1"
	tCoatWarehouse_Sale_FirstItem[3301053][1]["Talk"] = tCoatWarehouse_Sale_Text["RewardQX"][3301053][1]
	
	tCoatWarehouse_Sale_FirstItem[3301053][2] = {}
	tCoatWarehouse_Sale_FirstItem[3301053][2]["DeleteItem"] = {}
	tCoatWarehouse_Sale_FirstItem[3301053][2]["DeleteItem"][1] = {}	
	tCoatWarehouse_Sale_FirstItem[3301053][2]["DeleteItem"][1]["Id"] = 3301053
	tCoatWarehouse_Sale_FirstItem[3301053][2]["RewardItem"] = {}
	tCoatWarehouse_Sale_FirstItem[3301053][2]["RewardItem"][1] = {}
	tCoatWarehouse_Sale_FirstItem[3301053][2]["RewardItem"][1]["Id"] = 193525
	tCoatWarehouse_Sale_FirstItem[3301053][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tCoatWarehouse_Sale_FirstItem[3301053][2]["Log"] = "0,0,3301053,1,12000476,2,193525,1"
	tCoatWarehouse_Sale_FirstItem[3301053][2]["Talk"] = tCoatWarehouse_Sale_Text["RewardQX"][3301053][2]
	
	tCoatWarehouse_Sale_FirstItem[3301053][3] = {}
	tCoatWarehouse_Sale_FirstItem[3301053][3]["DeleteItem"] = {}
	tCoatWarehouse_Sale_FirstItem[3301053][3]["DeleteItem"][1] = {}	
	tCoatWarehouse_Sale_FirstItem[3301053][3]["DeleteItem"][1]["Id"] = 3301053
	tCoatWarehouse_Sale_FirstItem[3301053][3]["RewardItem"] = {}
	tCoatWarehouse_Sale_FirstItem[3301053][3]["RewardItem"][1] = {}
	tCoatWarehouse_Sale_FirstItem[3301053][3]["RewardItem"][1]["Id"] = 193565
	tCoatWarehouse_Sale_FirstItem[3301053][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tCoatWarehouse_Sale_FirstItem[3301053][3]["Log"] = "0,0,3301053,1,12000476,2,193565,1"
	tCoatWarehouse_Sale_FirstItem[3301053][3]["Talk"] = tCoatWarehouse_Sale_Text["RewardQX"][3301053][3]
	
local tCoatWarehouse_Sale_KFPackage = {}
tCoatWarehouse_Sale_KFPackage["PKReward"] = {}
-- 单人排位赛竞技场礼包：赢四场获得一个岫山玉；
tCoatWarehouse_Sale_KFPackage["PKReward"][3] = {}
tCoatWarehouse_Sale_KFPackage["PKReward"][3]["RewardItem"] = {}
tCoatWarehouse_Sale_KFPackage["PKReward"][3]["RewardItem"][1] = {}
tCoatWarehouse_Sale_KFPackage["PKReward"][3]["RewardItem"][1]["Id"] = 3008221
tCoatWarehouse_Sale_KFPackage["PKReward"][3]["RewardItem"][1]["Attr"] = "0 1"
tCoatWarehouse_Sale_KFPackage["PKReward"][3]["LogId"] = 12001088
tCoatWarehouse_Sale_KFPackage["PKReward"][3]["LogStep"] = "1[3]"
-- tCoatWarehouse_Sale_KFPackage["PKReward"][3]["EventType"] = tCoatWarehouse_Sale_Stc["Event"][3]
-- tCoatWarehouse_Sale_KFPackage["PKReward"][3]["DataType"] = tCoatWarehouse_Sale_Stc["Data"][3]
-- tCoatWarehouse_Sale_KFPackage["PKReward"][3]["RewardData"] = 1
-- tCoatWarehouse_Sale_KFPackage["PKReward"][3]["RewardDelay"] = 1
-- tCoatWarehouse_Sale_KFPackage["PKReward"][3]["RewardTimeType"] = 4
-- 组队排位赛竞技场礼包：赢四场获得一个岫山玉；
tCoatWarehouse_Sale_KFPackage["PKReward"][4] = {}
tCoatWarehouse_Sale_KFPackage["PKReward"][4]["RewardItem"] = {}
tCoatWarehouse_Sale_KFPackage["PKReward"][4]["RewardItem"][1] = {}
tCoatWarehouse_Sale_KFPackage["PKReward"][4]["RewardItem"][1]["Id"] = 3008221
tCoatWarehouse_Sale_KFPackage["PKReward"][4]["RewardItem"][1]["Attr"] = "0 1"
tCoatWarehouse_Sale_KFPackage["PKReward"][4]["LogId"] = 12001088
tCoatWarehouse_Sale_KFPackage["PKReward"][4]["LogStep"] = "1[4]"
-- tCoatWarehouse_Sale_KFPackage["PKReward"][4]["EventType"] = tCoatWarehouse_Sale_Stc["Event"][4]
-- tCoatWarehouse_Sale_KFPackage["PKReward"][4]["DataType"] = tCoatWarehouse_Sale_Stc["Data"][4]
-- tCoatWarehouse_Sale_KFPackage["PKReward"][4]["RewardData"] = 1
-- tCoatWarehouse_Sale_KFPackage["PKReward"][4]["RewardDelay"] = 1
-- tCoatWarehouse_Sale_KFPackage["PKReward"][4]["RewardTimeType"] = 4

-- 新增打宝区掉落（指的是古神灵境）：每天限制20个岫山玉碎片，概率3%掉落
function CoatWarehouse_Sale_KillMonsterDrop()
	if not Sys_ChkFullTime(tActivityTime["CoatWarehouse_Sale"]["MonsterDrop"]) then
		return
	end
	local nEvent = tCoatWarehouse_Sale_Stc["Event"][1]
	local nData = tCoatWarehouse_Sale_Stc["Data"][1]
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent,nData, 0, 1)
		Task_SetStcTimestamp(nEvent,nData, 0)
	end
	-- 概率掉落岫山玉碎片
	if not RewardTemplate_ChkRandomSpace(tCoatWarehouse_Sale_MonsterDrop, 1) then
		return
	end
	RewardTemplate_NewRandom(tCoatWarehouse_Sale_MonsterDrop, 1)
end


-- 单人排位赛竞技场礼包：赢四场获得一个岫山玉；
-- 组队排位赛竞技场礼包：赢四场获得一个岫山玉；
function CoatWarehouse_Sale_ArenicWins(nIndex, nUserId)
	if not Sys_ChkFullTime(tActivityTime["CoatWarehouse_Sale"]["MonsterDrop"]) then
		return
	end
	local nEvent = tCoatWarehouse_Sale_Stc["Event"][nIndex]
	local nData = tCoatWarehouse_Sale_Stc["Data"][nIndex]
	if Task_StcInterval(nEvent, nData, 1, 4, nUserId) then
		Task_SetStatistic(nEvent,nData, 0, 1, nUserId)
		Task_SetStcTimestamp(nEvent,nData, 0, nUserId)
	end
	if Task_ChkStcValue(nEvent, nData, ">", 0, nUserId) then
		return
	end
	if not User_CheckLeftSpace(1, nUserId) then
		return
	end
	Task_SetStatistic(nEvent,nData, 1, 1, nUserId)
	Task_SetStcTimestamp(nEvent,nData, 0, nUserId)
	RewardTemplate_UseItemAndMsg(tCoatWarehouse_Sale_KFPackage["PKReward"][nIndex], nUserId)
end

-- 物品可选包逻辑
function CoatWarehouse_Sale_OpenSelectPack(nItemId,nFlag)
	if not Item_ChkItem(nItemId) then
		return
	end

	tItem[3200883]["Text211"] = string.format(tCoatWarehouse_Sale_Text[3200883]["Text211"],tCoatWarehouse_Sale_Text["ItemName"][1][nFlag])
	tItem[3200883]["OptionFunc6"] = "CoatWarehouse_Sale_SureOpenPack</N>3200883</N>" .. nFlag
	LinkItemGossipFunc_New(nItemId,"2-1")
end

function CoatWarehouse_Sale_SureOpenPack(nItemId,nFlag)
	if not Item_ChkItem(nItemId) then
		return
	end
	if nFlag == 2 then
		if Get_UserLevel() >= G_User_MaxLev then
			User_TalkChannel2005(tCoatWarehouse_Sale_Text["RewardQX"]["FullLevwl"])
			return
		end
	end

	RewardTemplate_UseItem(tCoatWarehouse_Sale_SelectPack[3200883][nFlag])
end

-- 圣莲子包
function CoatWarehouse_Sale_OpenSlXy(nItemId,nFlag)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	tItem[3200882]["Text211"] = string.format(tCoatWarehouse_Sale_Text[3200882]["Text211"],tCoatWarehouse_Sale_Text["ItemName"][2][nFlag])
	tItem[3200882]["OptionFunc4"] = "CoatWarehouse_Sale_SureOpenSlXy</N>3200882</N>" .. nFlag
	LinkItemGossipFunc_New(nItemId,"2-1")
end

function CoatWarehouse_Sale_SureOpenSlXy(nItemId,nFlag)
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItem(tCoatWarehouse_Sale_SelectPack[3200882][nFlag])
end


-- 莲子合成
function CoatWarehouse_Sale_ItemHC(nItemId,sItemName)
	if not Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"]) then
		-- 判断是点击的那个物品
		if Item_ChkItem(nItemId) then
			if Item_DelItem(nItemId) then
				User_AddStrengthValue(tCoatWarehouse_Sale_NewCoat[1]["DeleteStrength"])
				
				Sys_SaveActionFestivalLog(tCoatWarehouse_Sale_NewCoat[1]["DeleteItemLog"])
				User_TalkChannel2005(string.format(tCoatWarehouse_Sale_Text["SysMess"]["DeleteItem"],tCoatWarehouse_Sale_NewCoat[1]["DeleteStrength"]))
			end
		end
		return
	end
	local nItemNum = tCoatWarehouse_Sale_NewCoat[1]["DeleteItem"][2]
	local nRewardItem = tCoatWarehouse_Sale_NewCoat[1]["AwardItem"][1]
	-- 活动时间内直接合成
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		
		User_TalkChannel2005(string.format(tCoatWarehouse_Sale_Text["SysMess"]["NoItem"],Get_ItemtypeName(nItemId),Get_ItemtypeName(nRewardItem)))
		return
	end
	
	if not Item_DelMulItem(nItemId,nItemId,nItemNum) then
		return
	end
	
	local sAttr = string.format(tCoatWarehouse_Sale_NewCoat["Attr"],tCoatWarehouse_Sale_NewCoat[1]["AwardItem"][2])
	if Item_AddNewItem(nRewardItem,sAttr) then
	
		Sys_SaveEmoneyBuy(tCoatWarehouse_Sale_NewCoat[1]["EmoneyLog"])
		Sys_SaveActionFestivalLog(tCoatWarehouse_Sale_NewCoat[1]["AwardItemLog"])
		User_TalkChannel2005(string.format(tCoatWarehouse_Sale_Text["SysMess"]["Success"],Get_ItemtypeName(nRewardItem)))
	end	
end

-- 金莲花碎片
function CoatWarehouse_Sale_JLHItemHC(nItemId,sItemName)
	local nItemNum = tCoatWarehouse_Sale_PTJLH["NeedNum"]
	local nRewardItem = tCoatWarehouse_Sale_PTJLH["RewardItem"]
	
	if Sys_ChkFullTime(tCoatWarehouse_Sale_Const["BeforeActivityTime"]) then	
		return
	end

	if Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"]) then
		if not (Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum)) then	
			User_TalkChannel2005(string.format(tCoatWarehouse_Sale_Text["SysMess"]["NoItem"],Get_ItemtypeName(nItemId),Get_ItemtypeName(nRewardItem)))
			return
		end
	
		local sAttr = tCoatWarehouse_Sale_PTJLH["Attr"]
		if Item_AddNewItem(nRewardItem,sAttr) then
			Sys_SaveActionFestivalLog(tCoatWarehouse_Sale_PTJLH["AwardItemLog"])
			Sys_SaveEmoneyBuy(tCoatWarehouse_Sale_PTJLH["EmoneyLog"])
			User_TalkChannel2005(string.format(tCoatWarehouse_Sale_Text["SysMess"]["Success"],Get_ItemtypeName(nRewardItem)))
		end
	else
		-- 过期给气力值
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_AddStrengthValue(tCoatWarehouse_Sale_PTJLH["Strength"])
			Sys_SaveActionFestivalLog(tCoatWarehouse_Sale_PTJLH["DelItemLog"])
			User_TalkChannel2005(tCoatWarehouse_Sale_Text["DelStrength"])
		end
	end
end
	
--碎片合成XX
function CoatWarehouse_Sale_PieceCompose(nItemId)
	--背包空间不足
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tCoatWarehouse_Sale_Text["PieceComposeNotSpace"])
		return
	end
	
	local nNeedNum = 	tCoatWarehouse_Sale_ComposeInfo[nItemId]["NeedNum"]
	local nAwardItemId = tCoatWarehouse_Sale_ComposeInfo[nItemId]["AwardItem"]
	
	--碎片数量不足
	if not Item_ChkMulItem(nItemId,nItemId,nNeedNum,1) then
		User_TalkChannel2005(tCoatWarehouse_Sale_Text["NotEnoughPiece"][nItemId])
		return
	end
	
	if not Item_DelMulItem(nItemId,nItemId,nNeedNum,1) then
		return
	end
	
	if not Item_AddNewItem(nAwardItemId,"") then
		return
	end
	
	local sLog = string.format(tCoatWarehouse_Sale_Log["PieceCompose"],nItemId,nNeedNum,nAwardItemId)
	Sys_SaveActionFestivalLog(sLog)
	
	if tCoatWarehouse_Sale_Log["ComPoseSp"][nItemId] ~= nil then
		local sComSpLog = tCoatWarehouse_Sale_Log["ComPoseSp"][nItemId]
		Sys_SaveActionFestivalLog(sComSpLog)
	end
	
	local efEffect = tCoatWarehouse_Sale_Const["Effect"][nItemId]
	local efObj = tCoatWarehouse_Sale_Const["Effect"]["Obj"]
	User_EffectAdd(efObj,efEffect)
	User_TalkChannel2005(tCoatWarehouse_Sale_Text["PieceComposeSucc"][nItemId])
	
end

--使用五星外套制衣手册
function CoatWarehouse_Sale_UseCoatList(nItemId)
	
	local nCoatItemId = tCoatWarehouse_Sale_FiveStarCoatInfo[nItemId]["AwardItemId"]
	local sCoatName = Get_ItemtypeName(nCoatItemId)
	--需求的散花绫数量
	local nNeedFlowerNum = tCoatWarehouse_Sale_FiveStarCoatInfo[nItemId]["NeedFlowerNum"]
	--需求的天蚕锦数量
	local nNeedSilkwormNum = tCoatWarehouse_Sale_FiveStarCoatInfo[nItemId]["NeedSilkwormNum "]
	
	
	tItem["FiveStarCoat"]["Text111"] = string.format(tCoatWarehouse_Sale_Text["FiveStarCoat"]["Text111"],sCoatName)
	
	tItem["FiveStarCoat"]["Text112"] = string.format(tCoatWarehouse_Sale_Text["FiveStarCoat"]["Text112"],nNeedFlowerNum,nNeedSilkwormNum)
	
	tItem["FiveStarCoat"]["OptionFunc111"] = "CoatWarehouse_Sale_DressMake</N>"..nItemId.."</N>"..nCoatItemId.."</S>"..sCoatName.."</N>"..nNeedFlowerNum.."</N>"..nNeedSilkwormNum
	
	LinkItemGossipFunc_New("FiveStarCoat","1-1")
	
end

--五星外套 开始制衣
function CoatWarehouse_Sale_DressMake(nItemId,nCoatItemId,sCoatName,nNeedFlowerNum,nNeedSilkwormNum)
	--背包空间不足
	-- if not User_CheckLeftSpace(1) then
		-- LinkItemGossipFunc_New("FiveStarCoat","2-2")
		-- return
	-- end
	local nItemMetaFlower = tCoatWarehouse_Sale_Const["ItemId"]["MetaFlower"]
	--天蚕锦
	local nItemSilkworm = tCoatWarehouse_Sale_Const["ItemId"]["Silkworm"]
	
	tItem["FiveStarCoat"]["Text211"] = string.format(tCoatWarehouse_Sale_Text["FiveStarCoat"]["Text211"],sCoatName,nNeedFlowerNum,nNeedSilkwormNum)

	if not Item_ChkMulItem(nItemMetaFlower,nItemMetaFlower,nNeedFlowerNum,1) then
		LinkItemGossipFunc_New("FiveStarCoat","2-1")
		return
	end
	
	if not Item_ChkMulItem(nItemSilkworm,nItemSilkworm,nNeedSilkwormNum,1) then
		LinkItemGossipFunc_New("FiveStarCoat","2-1")
		return
	end
	
	if not Item_ChkItem(nItemId) then
		return
	end
	if not Item_DelItem(nItemId) then
		return
	end
	
	if not Item_DelMulItem(nItemMetaFlower,nItemMetaFlower,nNeedFlowerNum,1) then
		return
	end
	
	if not Item_DelMulItem(nItemSilkworm,nItemSilkworm,nNeedSilkwormNum,1) then
		return
	end
	
	if not Item_AddNewItem(nCoatItemId,tCoatWarehouse_Sale_Const["ItemNorAttr"]) then
		return
	end
	
	local sAwardText = string.format(tCoatWarehouse_Sale_Text["FiveStarCoat"]["AwardText"],sCoatName)
	User_TalkChannel2005(sAwardText)
	
	local sLog = string.format(tCoatWarehouse_Sale_Log["ListToCoat"],nItemId,nNeedFlowerNum,nNeedSilkwormNum,nCoatItemId)
	Sys_SaveActionFestivalLog(sLog)
	
	local sSpLog = tCoatWarehouse_Sale_Log["MapTo5Star"]
	Sys_SaveActionFestivalLog(sSpLog)
	
	local efEffect = tCoatWarehouse_Sale_Const["Effect"]["Make"]
	local efObj = tCoatWarehouse_Sale_Const["Effect"]["Obj"]

	User_EffectAdd(efObj,efEffect)
end

--活动获得岫山玉
function CoatWarehouse_Sale_ActAwardXiuJade(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	if not Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"]) then
		return false
	end
	
	local nDataAc = tCoatWarehouse_Sale_Const["GlobalAc"]
	-- 判断新服
	-- if Get_SysDynaGlobalData0(nDataAc) ~= 1 then
		-- return false
	-- end
	
	local nData0 = Get_SysDynaGlobalData0(nDataAc)
	--已经不在那个月了
	-- if nData0 == 0 then
		-- return
	-- end
	--新服时间获得3个
	local nSel = 1
	-- if Get_SysDynaGlobalData1(nDataAc) > 0 then
		-- nSel = 2
	-- end
	
	local sAttr = tCoatWarehouse_Sale_Const["NewSevTime"][nSel] or ""
	
	local nXiuJade = tCoatWarehouse_Sale_Const["ItemId"]["XiuJade"]
	
	local bSpace = true
	if not User_CheckLeftSpace(1,nUserId) then
		User_TalkChannel2005(tCoatWarehouse_Sale_Text["QAdd"],nUserId)
		bSpace = false
	end
	
	if not Item_AddNewItem(nXiuJade,sAttr,nUserId) then
		return false
	end
	
	if bSpace == true then
		User_TalkChannel2005(tCoatWarehouse_Sale_Text["AwardXiu"][nSel],nUserId)
	end
	local sXiuLog = tCoatWarehouse_Sale_Log["ActAwXiuJade"]
	Sys_SaveActionFestivalLog(sXiuLog,nUserId)
	return true
end

--战场杀敌获得
--活动获得岫山玉
function CoatWarehouse_Zhanchang_ActAwardXiuJade(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	if not Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"]) then
		return false
	end
	
	local nDataAc = tCoatWarehouse_Sale_Const["GlobalAc"]
	-- 判断新服
	-- if Get_SysDynaGlobalData0(nDataAc) ~= 1 then
		-- return false
	-- end
	
	local nData0 = Get_SysDynaGlobalData0(nDataAc)
	local nSel = 3
	-- if Get_SysDynaGlobalData1(nDataAc) > 0 then
		-- nSel = 4
	-- end
	
	local sAttr = tCoatWarehouse_Sale_Const["NewSevTime"][nSel] or ""
	
	local nXiuJade = tCoatWarehouse_Sale_Const["ItemId"]["XiuJade"]

	if not Item_AddNewItem(nXiuJade,sAttr,nUserId) then
		return false
	end
	
	User_TalkChannel2005(tCoatWarehouse_Sale_Text["AwardXiu"][nSel],nUserId)
	local sXiuLog = tCoatWarehouse_Sale_Log["ActAwXiuJade"]
	Sys_SaveActionFestivalLog(sXiuLog,nUserId)
	return true
end


--使用背包信
function CoatWarehouse_Sale_BackpackLetter(nItemId)
	--活动时间前
	if Sys_ChkFullTime(tCoatWarehouse_Sale_Const["BeforeActivityTime"]) then
		User_TalkChannel2005(tCoatWarehouse_Sale_Text[nItemId]["BeforeTime"])
		return
	end
	--活动时间后
	if not Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"]) then
		if not Item_ChkItem(nItemId) then
			return
		end
		if not Item_DelItem(nItemId) then
			return
		end
		local sDelLog = string.format(tCoatWarehouse_Sale_Log["AfterTimeDel"],nItemId)
		Sys_SaveActionFestivalLog(sDelLog)
		User_TalkChannel2005(tCoatWarehouse_Sale_Text[nItemId]["AfterTime"])
		return
	end
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end

--阅后即焚
function CoatWarehouse_Sale_DelAfterRead(nItemId)
	--活动时间前
	if Sys_ChkFullTime(tCoatWarehouse_Sale_Const["BeforeActivityTime"]) then
		User_TalkChannel2005(tCoatWarehouse_Sale_Text[nItemId]["BeforeTime"])
		return
	end
	--活动时间后
	if not Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"]) then
		if not Item_ChkItem(nItemId) then
			return
		end
		if not Item_DelItem(nItemId) then
			return
		end
		local sDelLog = string.format(tCoatWarehouse_Sale_Log["AfterTimeDel"],nItemId)
		Sys_SaveActionFestivalLog(sDelLog)
		User_TalkChannel2005(tCoatWarehouse_Sale_Text[nItemId]["AfterTime"])
		return
	end
	if not Item_ChkItem(nItemId) then
		return
	end
	if not Item_DelItem(nItemId) then
		return
	end
	local nNpcId = tCoatWarehouse_Sale_Const["NpcInfo"]["Nangong"]["NpcId"]
	local nMapId = tCoatWarehouse_Sale_Const["NpcInfo"]["Nangong"]["MapId"]
	local nCellx = tCoatWarehouse_Sale_Const["NpcInfo"]["Nangong"]["Cellx"]
	local nCelly = tCoatWarehouse_Sale_Const["NpcInfo"]["Nangong"]["Celly"]
	
	
	local nType = User_AddExpOrCultureValue(tCoatWarehouse_Sale_Const["BpLetterAddExp"])
	local sLog = tCoatWarehouse_Sale_Log["UseBpLetter"][nType]
	Sys_SaveActionFestivalLog(sLog)
	User_TalkChannel2005(tCoatWarehouse_Sale_Text[nItemId]["AwardText"][nType])
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tCoatWarehouse_Sale_Const["NpGiftNpcInfo"]["Nangong"]["MapId"]
		nCellx = tCoatWarehouse_Sale_Const["NpGiftNpcInfo"]["Nangong"]["Cellx"]
		nCelly = tCoatWarehouse_Sale_Const["NpGiftNpcInfo"]["Nangong"]["Celly"]
	end
	Sys_GotoSomeWhere(nCellx,nCelly,nMapId,nNpcId)
end

--使用1个玉入阁
function CoatWarehouse_Sale_UseOneJade(nNpcId)
	--不在活动时间
	if not Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	--等级不满足
	-- if not User_JudgeLevelAndMetempsychosis(tCoatWarehouse_Sale_Const["Level"],tCoatWarehouse_Sale_Const["Mete"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"1-3")
		-- return
	-- end

	local nNeedItem = tCoatWarehouse_Sale_Const["NPCToItem"][nNpcId]
	
	--无岫山玉
	if not Item_ChkItem(nNeedItem) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	--背包空间不足
	-- if not User_CheckLeftSpace(1) then
		-- LinkNpcGossipFunc_New(nNpcId,"2-2")
		-- return
	-- end
	
	local nEvent = tCoatWarehouse_Sale_Stc["EventType"]
	local nType = tCoatWarehouse_Sale_Const["NPCToFirstDraw"][nNpcId]
	
	
	local flat,tItem = 0,{}
	--如果是首抽
	if Task_ChkStcValue(nEvent,nType,"==",0) then
		flat,tItem = Probabil_RandomAward(tCoatWarehouse_Sale_FistProb[nNpcId],1)
		Task_SetStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	else
		flat,tItem = Probabil_RandomAward(tCoatWarehouse_Sale_Prob[nNpcId],1)
	end
	
	local nAwardIndex = tItem[1]["tAward"][1]["Index"]
	local nAwardItem = tItem[1]["tAward"][1]["Item_1"]
	local sAttr = tItem[1]["tAward"][1]["Attr"] or ""
	local nStars = tItem[1]["tAward"][1]["Stars"] or tCoatWarehouse_Sale_Const["NPCToStar"][nNpcId]
	local bSaveTime = tItem[1]["tAward"][1]["bSaveTime"] or 0
	local nTypeCache = tCoatWarehouse_Sale_Const["NPCToSingleCache"][nNpcId]
	
	if not Item_DelItem(nNeedItem) then
		return
	end
	
	Task_SetStatistic(nEvent,nTypeCache,nAwardIndex,1)
	Task_SetStcTimestamp(nEvent,nTypeCache,0)
	
	local sLog = string.format(tCoatWarehouse_Sale_Log["EnterUseJade"],nNeedItem)
	local sEmoneyLog = tCoatWarehouse_Sale_Log[nNpcId]["ELItemDraw"]
	
	
	local efObj = tCoatWarehouse_Sale_Const["Effect"]["Obj"]
	local efEffect = ""
	efEffect = tCoatWarehouse_Sale_Const["Effect"]["Draw"][nNpcId]
	User_EffectAdd(efObj,efEffect)
	
	local nNorBoxId = tCoatWarehouse_Sale_Const["NpcInfo"]["NorBox"]["NpcId"]
	local nWhiteJade = tCoatWarehouse_Sale_Const["ItemId"]["WhiteJade"]
	
	--如果在普通阁抽到三星永久外套
	if nNpcId == nNorBoxId and nStars == tCoatWarehouse_Sale_Const["ThreeStar"] and bSaveTime == 0 then
		local efSpEffect = tCoatWarehouse_Sale_Const["Effect"]["NorDrawSp"]
		User_EffectAdd(efObj,efSpEffect)
		local sCoatLog = tCoatWarehouse_Sale_Log["ComDrawAw3"]
		Sys_SaveActionFestivalLog(sCoatLog)
	end
	--抽到昆仑玉也给光效
	if nNpcId == nNorBoxId and nAwardItem == nWhiteJade then
		local efSpEffect = tCoatWarehouse_Sale_Const["Effect"]["NorDrawSp"]
		User_EffectAdd(efObj,efSpEffect)
	end
	
	--普通阁抽奖log
	local sProcessLog = tCoatWarehouse_Sale_Log["Process"][nNpcId]
	Sys_SaveActionFestivalLog(sProcessLog)
	
	--其他特殊log
	if tCoatWarehouse_Sale_Log["DrawSp"][nNpcId][nAwardItem] ~= nil then
		local sSpLog = tCoatWarehouse_Sale_Log["DrawSp"][nNpcId][nAwardItem]
		Sys_SaveActionFestivalLog(sSpLog)
	end
	Sys_SaveEmoneyBuy(sEmoneyLog)
	Sys_SaveActionFestivalLog(sLog)
	LinkNpcGossipFunc_New(nNpcId,"2-3")
	
end

--重设获得物品文字
function CoatWarehouse_Sale_ResetText23(nNpcId)
	local nEvent = tCoatWarehouse_Sale_Stc["EventType"]
	local nTypeCache = tCoatWarehouse_Sale_Const["NPCToSingleCache"][nNpcId]
	
	local nCacheData = Get_UserStatisticValue(nEvent,nTypeCache)
	
	if nCacheData == 0 then
		return false
	end
	
	local nItemId = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData]["Item_1"]
	local sAttr = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData]["Attr"] or ""
	local nStars = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData]["Stars"] or tCoatWarehouse_Sale_Const["NPCToStar"][nNpcId]
	local bSaveTime = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData]["bSaveTime"] or 0
	local nAwardNum = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData]["Num"] or 1
	local Item2 = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData]["Item_2"] or 0
	local sItemName = Get_ItemtypeName(nItemId)
	local sItemHead = ""
	local sStars = ""
	local sExraOutput = ""
	local sExraSpace = " "
	--为时效物品
	if bSaveTime ~= 0 then
		sItemHead = tCoatWarehouse_Sale_Text["SaveTime"][bSaveTime]
	else
		sItemHead = tCoatWarehouse_Sale_Text["Forever"]
	end
	
	
	--如果是材料
	if nStars == 0 then
		sStars = tCoatWarehouse_Sale_Text["Meta"]
		sItemHead = ""
	else
		--不是材料则对星级进行拓展
		sStars = string.format(tCoatWarehouse_Sale_Text["ForeverStars"],nStars)
	
		--再加上一个赠字
		sItemName = sItemName .. tCoatWarehouse_Sale_Text["Zeng"]
		
		--如果有额外的物品
		if Item2 ~= 0 then
			-- sItemName = sItemName .. tCoatWarehouse_Sale_Text["Add"]
			local sExraName  = Get_ItemtypeName(Item2)
			sExraSpace=string.rep(sExraSpace,tCoatWarehouse_Sale_Const["ExraSpaceNum"] - string.len(sExraName))
			sExraOutput = string.format(tCoatWarehouse_Sale_Text["AddText"],sExraName)
		end
		
	end
	
	--如果数量不为1的话，添加*2 如  千年血玉碎片*10
	if nAwardNum ~= 1 then
		sItemName = sItemName ..tCoatWarehouse_Sale_Text["Asterisk"]..nAwardNum
	end
	
	
	local sTab = " "
	local sTabEnd = " "
	local nLoopNum = 4
	local nLen = string.len(sItemHead..sItemName)
	if nStars == 0 then
		nLoopNum = 4
	else
		nLoopNum = 9
	end
	
	local nLoopNum = tCoatWarehouse_Sale_Const["BeginSpaceNum"]-nLen
	sTab = string.rep(sTab,nLoopNum)
	
	local nStarLen =string.len(sStars)
	local nLoopEndNum =tCoatWarehouse_Sale_Const["EndSpaceNum"]-nStarLen
	sTabEnd = string.rep(sTabEnd,nLoopEndNum)
	
	tNpcGossip[nNpcId]["Text233"] = string.format(tCoatWarehouse_Sale_Text[nNpcId]["Text233"],sStars,sTab,sItemHead,sItemName,sTabEnd,sExraOutput)
	
	return true
	
end

--直接领取
function CoatWarehouse_Sale_DirectReceive(nNpcId)
	
	--等级不满足
	-- if not User_JudgeLevelAndMetempsychosis(tCoatWarehouse_Sale_Const["Level"],tCoatWarehouse_Sale_Const["Mete"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"1-3")
		-- return
	-- end
	
	local nNeedItem = tCoatWarehouse_Sale_Const["NPCToItem"][nNpcId]
	local nNeedBag = tCoatWarehouse_Sale_Const["OneReceiveBag"][nNpcId]
	
	--背包空间不足
	if not User_CheckLeftSpace(nNeedBag) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	local nEvent = tCoatWarehouse_Sale_Stc["EventType"]
	local nTypeCache = tCoatWarehouse_Sale_Const["NPCToSingleCache"][nNpcId]
	
	local nCacheData = Get_UserStatisticValue(nEvent,nTypeCache)
	
	if nCacheData == 0 then
		return
	end
	
	local nItemId = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData]["Item_1"]
	local sAttr = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData]["Attr"] or ""
	local nAwardNum = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData]["Num"] or 1
	local nStars = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData]["Stars"] or 0
	local Item2 = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData]["Item_2"] or 0
	local sItemName = Get_ItemtypeName(nItemId)
	
	Task_SetStatistic(nEvent,nTypeCache,0,1)
	Task_SetStcTimestamp(nEvent,nTypeCache,0)
	
	if not Item_AddNewItem(nItemId,sAttr) then
		return
	end
	
	--有第二个物品的话
	if Item2 ~=0 then
		if not Item_AddNewItem(Item2,"") then
			return
		end
	end
	
	local sLog = string.format(tCoatWarehouse_Sale_Log["DrawAwItem"],nNeedItem,nItemId)
	Sys_SaveActionFestivalLog(sLog)
	
	if nStars ~= 0 then
		sItemName = tCoatWarehouse_Sale_Text["god"]..sItemName
		sItemName = sItemName ..tCoatWarehouse_Sale_Text["Zeng"]
	end
	
	--如果数量不为1的话，添加*2 如  千年血玉碎片*10
	if nAwardNum ~= 1 then
		sItemName = sItemName ..tCoatWarehouse_Sale_Text["Asterisk"]..nAwardNum
	end
	
	--添加文字提示
	if Item2 ~= 0 then
		sItemName = sItemName..tCoatWarehouse_Sale_Text["Comma"].. 1 ..tCoatWarehouse_Sale_Text["Classifier"]..Get_ItemtypeName(Item2)
	end
	
	local sAwardText = string.format(tCoatWarehouse_Sale_Text["AwardCoat"],sItemName)
	User_TalkChannel2005(sAwardText)
	local efEffect = tCoatWarehouse_Sale_Const["Effect"]["Receive"]
	local efObj = tCoatWarehouse_Sale_Const["Effect"]["Obj"]
	User_EffectAdd(efObj,efEffect)
	
	--不在活动时间
	if not Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"]) then
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"1-2")
end

--我要拆解

--控制是否显示我要拆解选项
function CoatWarehouse_Sale_CtlShowSplit(nNpcId)
	local nEvent = tCoatWarehouse_Sale_Stc["EventType"]
	local nTypeCache = tCoatWarehouse_Sale_Const["NPCToSingleCache"][nNpcId]
	local nCacheData = Get_UserStatisticValue(nEvent,nTypeCache)
	if nCacheData == 0 then
		return false
	end
	local nStars = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData]["Stars"] or tCoatWarehouse_Sale_Const["NPCToStar"][nNpcId]
	--等于0 为材料，不用显示我要拆解选项
	return nStars ~= 0
end

--重设3-1选项文字
function CoatWarehouse_Sale_ResetText31(nNpcId)
	
	local nEvent = tCoatWarehouse_Sale_Stc["EventType"]
	local nTypeCache = tCoatWarehouse_Sale_Const["NPCToSingleCache"][nNpcId]
	local nCacheData = Get_UserStatisticValue(nEvent,nTypeCache)
	if nCacheData == 0 then
		return false
	end
	local nItemId = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData]["Item_1"]
	local sItemName = Get_ItemtypeName(nItemId)
	
	tNpcGossip[nNpcId]["Text311"] = string.format(tCoatWarehouse_Sale_Text[nNpcId]["Text311"],sItemName)
	
	tNpcGossip[nNpcId]["OptionFunc311"] = "CoatWarehouse_Sale_ConfirmToSplit</N>"..nNpcId.."</N>"..nCacheData
	
	return true
end

--确认拆解
function CoatWarehouse_Sale_ConfirmToSplit(nNpcId,nCacheData)
	--不在活动时间
	if not Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	--等级不满足
	-- if not User_JudgeLevelAndMetempsychosis(tCoatWarehouse_Sale_Const["Level"],tCoatWarehouse_Sale_Const["Mete"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"1-3")
		-- return
	-- end
	local nItemId = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData]["Item_1"]
	local sAttr = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData]["Attr"] or ""
	local nStar = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData]["Stars"] or tCoatWarehouse_Sale_Const["NPCToStar"][nNpcId]
	--该外套的类型 1为时装 2为骑宠
	local nCoatType = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData]["Type"] or 0
	local bSaveTime = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData]["bSaveTime"] or 0
	local Item2 = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData]["Item_2"] or 0
	local nEvent = tCoatWarehouse_Sale_Stc["EventType"]
	local nTypeCache = tCoatWarehouse_Sale_Const["NPCToSingleCache"][nNpcId]
	
	local tTable = {}

	--时效
	if bSaveTime ~= 0 then
		tTable = tCoatWarehouse_Sale_SplitCoatA["SaveTime"][bSaveTime][nStar]
	else
		-- 判断是否四星五星外套
		if nStar < 4 then
			tTable = tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][nCoatType][nStar]
		else
			-- 修改拆解4星和5星外套拆解必出千年血玉的机制，改为50%出，剩下50%出3个岫山玉
			local nRandomNum = math.random(1, 2)
			if nRandomNum == 1 then
				tTable = tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][nCoatType][nStar]
			else
				tTable = tCoatWarehouse_Sale_SplitCoatA["NotSaveTimeRandom"][nCoatType][nStar]
			end
		end
	end
	
	local nNeedSpace = tTable["Space"]
	
	--背包空间不足
	if not User_CheckLeftSpace(3) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	Task_SetStatistic(nEvent,nTypeCache,0,1)
	Task_SetStcTimestamp(nEvent,nTypeCache,0)
	
	--获得物品的文字
	local sAwardItemIext = ""
	
	for i ,v in pairs(tTable["Item"]) do
		if not Item_AddNewItem(v,tTable["Attr"][i]) then
			return
		end
		local sLog = string.format(tCoatWarehouse_Sale_Log["AwardMeta"],v,tTable["Num"][i])
		Sys_SaveActionFestivalLog(sLog)
		sAwardItemIext = sAwardItemIext .. tTable["Num"][i] .. tCoatWarehouse_Sale_Text["Classifier"] .. Get_ItemtypeName(v)..tCoatWarehouse_Sale_Text["Comma"]
	end
	
	
	
	--还有配置额外掉落
	if tTable["Random"] ~= nil then
		local nBaseProb = tCoatWarehouse_Sale_Const["BaseProb"]
		local nProb = tTable["Random"]["ItemChance"]
		--如果走到概率了
		if Sys_Random(nProb,nBaseProb) then
			local nProbItem = tTable["Random"]["Item_1"]
			if not Item_AddNewItem(nProbItem,"") then
				return
			end
			sAwardItemIext = sAwardItemIext .. 1 ..tCoatWarehouse_Sale_Text["Classifier"] .. Get_ItemtypeName(nProbItem)..tCoatWarehouse_Sale_Text["Comma"]
			local sLog = string.format(tCoatWarehouse_Sale_Log["AwardMeta"],nProbItem,1)
			Sys_SaveActionFestivalLog(sLog)
		end
	end
	
	--有第二个物品
	if Item2 ~= 0 then
		if not Item_AddNewItem(Item2,"") then
			return
		end
		sAwardItemIext = sAwardItemIext .. 1 ..tCoatWarehouse_Sale_Text["Classifier"] .. Get_ItemtypeName(Item2)..tCoatWarehouse_Sale_Text["Comma"]
		local sLog = string.format(tCoatWarehouse_Sale_Log["AwardMeta"],Item2,1)
		Sys_SaveActionFestivalLog(sLog)
	end
	
	--去掉最后的顿号
	sAwardItemIext = string.sub(sAwardItemIext,1,string.len(sAwardItemIext)-2)
	
	local sAwardText = string.format(tCoatWarehouse_Sale_Text["SplitTextAward"],sAwardItemIext)
	User_TalkChannel2005(sAwardText)
	local efEffect = tCoatWarehouse_Sale_Const["Effect"]["Split"]
	local efObj = tCoatWarehouse_Sale_Const["Effect"]["Obj"]
	User_EffectAdd(efObj,efEffect)
	LinkNpcGossipFunc_New(nNpcId,"1-2")
end

function CoatWarehouse_Sale_UseEmoney(nNpcId)
		--不在活动时间
	if not Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	--等级不满足
	-- if not User_JudgeLevelAndMetempsychosis(tCoatWarehouse_Sale_Const["Level"],tCoatWarehouse_Sale_Const["Mete"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"1-3")
		-- return
	-- end

	local nNeedEmoney = tCoatWarehouse_Sale_Const["NpcToEmoney"][nNpcId]
	local nUserEmoney = Get_UserEMoney()
	
	--天石不足
	if nUserEmoney < nNeedEmoney then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	local nNeedBag = tCoatWarehouse_Sale_Const["OneReceiveBag"][nNpcId]
	--背包空间不足
	if not User_CheckLeftSpace(nNeedBag) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	--进入二次确认
	LinkNpcGossipFunc_New(nNpcId,"2-5")
	
end

--使用天石入阁二次确认
function CoatWarehouse_Sale_ConfirmUseEmoney(nNpcId)
	--不在活动时间
	if not Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	--等级不满足
	-- if not User_JudgeLevelAndMetempsychosis(tCoatWarehouse_Sale_Const["Level"],tCoatWarehouse_Sale_Const["Mete"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"1-3")
		-- return
	-- end
	
	local nNeedEmoney = tCoatWarehouse_Sale_Const["NpcToEmoney"][nNpcId]
	local nUserEmoney = Get_UserEMoney()
	
	--天石不足
	if nUserEmoney < nNeedEmoney then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	local nNeedBag = tCoatWarehouse_Sale_Const["OneReceiveBag"][nNpcId]
	--背包空间不足
	if not User_CheckLeftSpace(nNeedBag) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	local nEvent = tCoatWarehouse_Sale_Stc["EventType"]
	local nType = tCoatWarehouse_Sale_Const["NPCToFirstDraw"][nNpcId]
	
	local flat,tItem = 0,{}
	--如果是首抽
	if Task_ChkStcValue(nEvent,nType,"==",0) then
		flat,tItem = Probabil_RandomAward(tCoatWarehouse_Sale_FistProb[nNpcId],1)
		Task_SetStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	else
		flat,tItem = Probabil_RandomAward(tCoatWarehouse_Sale_Prob[nNpcId],1)
	end
	
	local nAwardIndex = tItem[1]["tAward"][1]["Index"]
	local nAwardItem = tItem[1]["tAward"][1]["Item_1"]
	local sAttr = tItem[1]["tAward"][1]["Attr"] or ""
	local nStars = tItem[1]["tAward"][1]["Stars"] or tCoatWarehouse_Sale_Const["NPCToStar"][nNpcId]
	local nTypeCache = tCoatWarehouse_Sale_Const["NPCToSingleCache"][nNpcId]
	
	User_AddEMoney(-1*nNeedEmoney)
	
	Task_SetStatistic(nEvent,nTypeCache,nAwardIndex,1)
	Task_SetStcTimestamp(nEvent,nTypeCache,0)
	
	local efObj = tCoatWarehouse_Sale_Const["Effect"]["Obj"]
	local efEffect = ""
	efEffect = tCoatWarehouse_Sale_Const["Effect"]["Draw"][nNpcId]
	User_EffectAdd(efObj,efEffect)
	
	local nNorBoxId = tCoatWarehouse_Sale_Const["NpcInfo"]["NorBox"]["NpcId"]
	local nWhiteJade = tCoatWarehouse_Sale_Const["ItemId"]["WhiteJade"]
	
	--如果在普通阁抽到三星永久外套
	if nNpcId == nNorBoxId and nStars == tCoatWarehouse_Sale_Const["ThreeStar"] and bSaveTime == 0 then
		local efSpEffect = tCoatWarehouse_Sale_Const["Effect"]["NorDrawSp"]
		User_EffectAdd(efObj,efSpEffect)
		local sCoatLog = tCoatWarehouse_Sale_Log["ComDrawAw3"]
		Sys_SaveActionFestivalLog(sCoatLog)
	end
	
	--抽到昆仑玉也给光效
	if nNpcId == nNorBoxId and nAwardItem == nWhiteJade then
		local efSpEffect = tCoatWarehouse_Sale_Const["Effect"]["NorDrawSp"]
		User_EffectAdd(efObj,efSpEffect)
	end
	
	if tCoatWarehouse_Sale_Log["DrawSp"][nNpcId][nAwardItem] ~= nil then
		local sSpLog = tCoatWarehouse_Sale_Log["DrawSp"][nNpcId][nAwardItem]
		Sys_SaveActionFestivalLog(sSpLog)
	end
	
	local sEmoneyLog = tCoatWarehouse_Sale_Log[nNpcId]["ELEmDraw"]
	Sys_SaveEmoneyBuy(sEmoneyLog)
	
	local sProcessLog = tCoatWarehouse_Sale_Log["Process"][nNpcId]
	Sys_SaveActionFestivalLog(sProcessLog)
	
	LinkNpcGossipFunc_New(nNpcId,"2-3")
	
end

--使用三个岫山玉/昆仑玉 入阁
function CoatWarehouse_Sale_UseThreeJade(nNpcId)
	--不在活动时间
	if not Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	--等级不满足
	-- if not User_JudgeLevelAndMetempsychosis(tCoatWarehouse_Sale_Const["Level"],tCoatWarehouse_Sale_Const["Mete"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"1-3")
		-- return
	-- end

	local nNeedItem = tCoatWarehouse_Sale_Const["NPCToItem"][nNpcId]
	
	--无岫山玉/昆仑玉
	if not Item_ChkMulItem(nNeedItem,nNeedItem,3) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	--背包空间不足
	-- if not User_CheckLeftSpace(3) then
		-- LinkNpcGossipFunc_New(nNpcId,"3-3")
		-- return
	-- end
	
	if not Item_DelMulItem(nNeedItem,nNeedItem,3) then
		return
	end
	
	 local nNorBoxId = tCoatWarehouse_Sale_Const["NpcInfo"]["NorBox"]["NpcId"]
	 local nWhiteJade = tCoatWarehouse_Sale_Const["ItemId"]["WhiteJade"]
	
	local nEvent = tCoatWarehouse_Sale_Stc["EventType"]
	local efObj = tCoatWarehouse_Sale_Const["Effect"]["Obj"]
	for i=1,3 do
		local flat,tItem = Probabil_RandomAward(tCoatWarehouse_Sale_Prob[nNpcId],1)
		local nAwardIndex = tItem[1]["tAward"][1]["Index"]
		local nAwardItem = tItem[1]["tAward"][1]["Item_1"]
		local sAttr= tItem[1]["tAward"][1]["Attr"] or ""
		local nStars = tItem[1]["tAward"][1]["Stars"] or tCoatWarehouse_Sale_Const["NPCToStar"][nNpcId]
		local bSaveTime = tItem[1]["tAward"][1]["bSaveTime"] or 0
		local nType = tCoatWarehouse_Sale_Const["NPCToTripleCache"][nNpcId][i]
		Task_SetStatistic(nEvent,nType,nAwardIndex,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		--其他特殊处理
		--如果在普通阁抽到三星永久外套
		if nNpcId == nNorBoxId and nStars == tCoatWarehouse_Sale_Const["ThreeStar"] and bSaveTime == 0 then
			local efSpEffect = tCoatWarehouse_Sale_Const["Effect"]["NorDrawSp"]
			User_EffectAdd(efObj,efSpEffect)
			local sCoatLog = tCoatWarehouse_Sale_Log["ComDrawAw3"]
			Sys_SaveActionFestivalLog(sCoatLog)
		end
		--普通阁抽到昆仑玉也给光效
		if nNpcId == nNorBoxId and nAwardItem == nWhiteJade then
			local efSpEffect = tCoatWarehouse_Sale_Const["Effect"]["NorDrawSp"]
			User_EffectAdd(efObj,efSpEffect)
		end
		--其他特殊log处理
		if tCoatWarehouse_Sale_Log["DrawSp"][nNpcId][nAwardItem] ~= nil then
			local sSpLog = tCoatWarehouse_Sale_Log["DrawSp"][nNpcId][nAwardItem]
			Sys_SaveActionFestivalLog(sSpLog)
		end
		
	end
	
	local efEffect = tCoatWarehouse_Sale_Const["Effect"]["Draw"][nNpcId]
	User_EffectAdd(efObj,efEffect)
	
	local sLog = string.format(tCoatWarehouse_Sale_Log["EnterUseThreeJade"],nNeedItem)
	local sEmoneyLog = tCoatWarehouse_Sale_Log[nNpcId]["ELItemDrawTre"]
	local sSpDrawTreLog = tCoatWarehouse_Sale_Log["SpDrawTre"][nNpcId]
	
	Sys_SaveEmoneyBuy(sEmoneyLog)
	Sys_SaveActionFestivalLog(sLog)
	Sys_SaveActionFestivalLog(sSpDrawTreLog)
	LinkNpcGossipFunc_New(nNpcId,"3-4")
	
end

--重设3-4文字
function CoatWarehouse_Sale_ResetText34(nNpcId)
	
	local nEvent = tCoatWarehouse_Sale_Stc["EventType"]
	local nType = {}
	
	local nCacheData = {}
	
	for i = 1,3 do
		nType[i] = tCoatWarehouse_Sale_Const["NPCToTripleCache"][nNpcId][i]
		nCacheData[i] = Get_UserStatisticValue(nEvent,nType[i])
	end
	
	if nCacheData[1] == 0 or nCacheData[2] == 0 or nCacheData[3] == 0 then
		return false
	end
	
	local nItemId = {}
	local sAttr = {}
	local nStars = {}
	local sItemName = {}
	local sItemHead = {}
	local sStars = {}
	local sTab = {}
	local sTabEnd = {}
	local bSaveTime = {}
	local sExraOutput = {}
	for i = 1,3 do
		nItemId[i] = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData[i]]["Item_1"]
		sAttr[i] = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData[i]]["Attr"] or ""
		nStars[i] = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData[i]]["Stars"]
		bSaveTime[i] = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData[i]]["bSaveTime"] or 0
		local nAwardNum = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData[i]]["Num"] or 1
		local Item2 = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData[i]]["Item_2"] or 0
		sItemName[i] = Get_ItemtypeName(nItemId[i])
		sItemHead[i] = ""
		sStars[i] = ""
		sTab[i] = " "
		sTabEnd[i] = " "
		sExraOutput[i] = ""
		local sExraSpace = " "
		--为时效物品
		if bSaveTime[i] ~= 0 then
			sItemHead[i] = tCoatWarehouse_Sale_Text["SaveTime"][bSaveTime[i]]
		else
			sItemHead[i] = tCoatWarehouse_Sale_Text["Forever"]
		end
		if nAwardNum ~= 1 then
			sItemName[i] = sItemName[i] ..tCoatWarehouse_Sale_Text["Asterisk"]..nAwardNum
		end
		--如果是材料
		if nStars[i] == 0 then
			sStars[i] = tCoatWarehouse_Sale_Text["Meta"]
			sItemHead[i] = ""
			
		else
			--不是材料则对星级进行拓展
			--sStars[i] = string.rep (sStars[i],nStars[i])
			sStars[i] = string.format(tCoatWarehouse_Sale_Text["ForeverStars"],nStars[i])
			-- sItemName[i] = tCoatWarehouse_Sale_Text["god"]..sItemName[i]
			--再加上一个赠字
			sItemName[i] = sItemName[i] .. tCoatWarehouse_Sale_Text["Zeng"]
			
				--如果有额外的物品
			if Item2 ~= 0 then
				-- sItemName[i] = sItemName[i] .. tCoatWarehouse_Sale_Text["Add"]
				local sExraName  = Get_ItemtypeName(Item2)
				sExraSpace =string.rep(sExraSpace,tCoatWarehouse_Sale_Const["ExraSpaceNum"] - string.len(sExraName))
				sExraOutput[i] = string.format(tCoatWarehouse_Sale_Text["AddText"],sExraName)
				-- sExraOutput[i] = string.format(tCoatWarehouse_Sale_Text["AddText"],Get_ItemtypeName(Item2))
			end
		end
		
		local nLen = string.len(sItemHead[i]..sItemName[i])
		local nLoopNum
		if nStars[i] == 0 then
			nLoopNum = 4
		else
			nLoopNum = 9
		end
		
		sTab[i] = string.rep(sTab[i],nLoopNum)
		
		local nStarLen =string.len(sStars[i])
		local nLoopEndNum =tCoatWarehouse_Sale_Const["EndSpaceNum"]-nStarLen
		sTabEnd[i] = string.rep(sTabEnd[i],nLoopEndNum)
	end
	
	
	tNpcGossip[nNpcId]["Text343"] = string.format(tCoatWarehouse_Sale_Text[nNpcId]["Text343"],sStars[1],sTab[1],sItemHead[1],sItemName[1],sTabEnd[1],sExraOutput[1])
	tNpcGossip[nNpcId]["Text344"] = string.format(tCoatWarehouse_Sale_Text[nNpcId]["Text344"],sStars[2],sTab[2],sItemHead[2],sItemName[2],sTabEnd[2],sExraOutput[2])
	tNpcGossip[nNpcId]["Text345"] = string.format(tCoatWarehouse_Sale_Text[nNpcId]["Text345"],sStars[3],sTab[3],sItemHead[3],sItemName[3],sTabEnd[3],sExraOutput[3])
	
	return true
	
end

--全部领取
function CoatWarehouse_Sale_AllReceive(nNpcId)
	
	--等级不满足
	-- if not User_JudgeLevelAndMetempsychosis(tCoatWarehouse_Sale_Const["Level"],tCoatWarehouse_Sale_Const["Mete"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"1-3")
		-- return
	-- end

	local NeedSpace = tCoatWarehouse_Sale_Const["AllReceiveBag"][nNpcId]
	--背包空间不足
	if not User_CheckLeftSpace(NeedSpace) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	
	local nEvent = tCoatWarehouse_Sale_Stc["EventType"]
	local nType = {}
	
	local nCacheData = {}
	local nItemId = {}
	local sAttr = {}
	local sItemName = {}
	for i = 1,3 do
		nType[i] = tCoatWarehouse_Sale_Const["NPCToTripleCache"][nNpcId][i]
		nCacheData[i] = Get_UserStatisticValue(nEvent,nType[i])
		nItemId[i] = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData[i]]["Item_1"]
		sAttr[i] = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData[i]]["Attr"] or ""
		local nAwardNum = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData[i]]["Num"] or 1
		local nStars = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData[i]]["Stars"] or 0
		local Item2 = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData[i]]["Item_2"] or 0
		sItemName[i] = Get_ItemtypeName(nItemId[i])
		
		--加上赠字
		if nStars ~= 0 then
			sItemName[i] = tCoatWarehouse_Sale_Text["god"]..sItemName[i]
			sItemName[i] = sItemName[i] .. tCoatWarehouse_Sale_Text["Zeng"]
		end
		
		if nAwardNum ~= 1 then
			sItemName[i] = sItemName[i] ..tCoatWarehouse_Sale_Text["Asterisk"]..nAwardNum
		end
		
		Task_SetStatistic(nEvent,nType[i],0,1)
		Task_SetStcTimestamp(nEvent,nType[i],0)
		
		if not Item_AddNewItem(nItemId[i],sAttr[i]) then
			return
		end
		
		--如果有额外物品
		if Item2 ~= 0 then
			if not Item_AddNewItem(Item2,"") then
				return
			end
			local sExraText = string.format(tCoatWarehouse_Sale_Text["ExraAward"],Get_ItemtypeName(Item2))
			User_TalkChannel2005(sExraText)
		end
	end
	
	local sLog = string.format(tCoatWarehouse_Sale_Log["DrawAwThreeItem"],nItemId[1],nItemId[2],nItemId[3])
	Sys_SaveActionFestivalLog(sLog)
	
	local sAwardText = string.format(tCoatWarehouse_Sale_Text["DrawAwardThree"],sItemName[1],sItemName[2],sItemName[3])
	User_TalkChannel2005(sAwardText)
	local efEffect = tCoatWarehouse_Sale_Const["Effect"]["Receive"]
	local efObj = tCoatWarehouse_Sale_Const["Effect"]["Obj"]
	User_EffectAdd(efObj,efEffect)
	
	
	--不在活动时间，就不再弹出对话框
	if not Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"]) then
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"1-2")
end

--一键拆解
function CoatWarehouse_Sale_OneKeyToSplit(nNpcId)
	local nEvent = tCoatWarehouse_Sale_Stc["EventType"]
	local nTypeOneKey = tCoatWarehouse_Sale_Const["NpcToOneKeySplit"][nNpcId]
	
	--隔天掩码清零
	if Task_ChkStcValue(nEvent,nTypeOneKey,">=",1) then
		if Task_StcInterval(nEvent,nTypeOneKey,1,4) then
			Task_SetStatistic(nEvent,nTypeOneKey,0,1)
			Task_SetStcTimestamp(nEvent,nTypeOneKey,0)
		end
	end
	
	--一键拆解没有屏蔽二次确认，则跳转至二次确认
	if Task_ChkStcValue(nEvent,nTypeOneKey,"==",0) then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	end
	
	--如果已经屏蔽了就直接拆解
	CoatWarehouse_Sale_OneKeyToSplitReal(nNpcId)
	
end

--一键拆解
function CoatWarehouse_Sale_OneKeyToSplitReal(nNpcId)

	--背包空间不足
	if not User_CheckLeftSpace(5) then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end

	local nEvent = tCoatWarehouse_Sale_Stc["EventType"]
	local nType = {}
	local nCacheData = {}
	local nItemId = {}
	local sAttr = {}
	local sItemName = {}
	local tSplit = {}
	local tAwardItem = {}
	local tNum = {}
	local nStars = {}
	local nCoatType = {}
	local tTable = {}
	local bSaveTime = {}
	for i = 1,3 do
		nType[i] = tCoatWarehouse_Sale_Const["NPCToTripleCache"][nNpcId][i]
		nCacheData[i] = Get_UserStatisticValue(nEvent,nType[i])
		nItemId[i] = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData[i]]["Item_1"]
		sAttr[i] = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData[i]]["Attr"] or ""
		nStars[i] = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData[i]]["Stars"]
		tNum[i] = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData[i]]["Num"] or 1
		nCoatType[i] = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData[i]]["Type"] or 0
		bSaveTime[i] = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData[i]]["bSaveTime"] or 0
		local Item2 = tCoatWarehouse_Sale_Prob[nNpcId][1][nCacheData[i]]["Item_2"] or 0
		
		--额外获得的，肯定是材料直接插入到获得表中
		if Item2 ~= 0 then
			if tAwardItem[Item2] == nil then
				tAwardItem[Item2] = 1
			else
				tAwardItem[Item2] = tAwardItem[Item2] + 1
			end
		end
		
		
		--如果是材料就直接插入表中
		if nStars[i] == 0 then
			--获得物品表没有这个物品，则直接算上数量
			if tAwardItem[nItemId[i]] == nil then
				tAwardItem[nItemId[i]] = tNum[i]
			--有的话追加数量
			else
				tAwardItem[nItemId[i]] = tAwardItem[nItemId[i]] + tNum[i]
			end
		else
			--取拆解表
			tTable[i] = {}
			if bSaveTime[i] ~= 0 then
				tTable[i] = tCoatWarehouse_Sale_SplitCoatA["SaveTime"][bSaveTime[i]][nStars[i]]
			else
				-- tTable[i] = tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][nCoatType[i]][nStars[i]]
				-- 判断是否四星五星外套
				if nStars[i] < 4 then
					tTable[i] = tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][nCoatType[i]][nStars[i]]
				else
					-- 修改拆解4星和5星外套拆解必出千年血玉的机制，改为50%出，剩下50%出3个岫山玉
					local nRandomNum = math.random(1, 2)
					if nRandomNum == 1 then
						tTable[i] = tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][nCoatType[i]][nStars[i]]
					else
						tTable[i] = tCoatWarehouse_Sale_SplitCoatA["NotSaveTimeRandom"][nCoatType[i]][nStars[i]]
					end
				end
			end
			
			for j ,v in pairs(tTable[i]["Item"]) do
				if tAwardItem[v] == nil then
					tAwardItem[v] = tTable[i]["Num"][j]
				--有的话追加数量
				else
					tAwardItem[v] = tAwardItem[v] + tTable[i]["Num"][j]
				end
			end
			--还有配置额外掉落
			if tTable[i]["Random"] ~= nil then
				local nBaseProb = tCoatWarehouse_Sale_Const["BaseProb"]
				local nProb = tTable[i]["Random"]["ItemChance"]
				--如果走到概率了
				if Sys_Random(nProb,nBaseProb) then
					local nProbItem = tTable[i]["Random"]["Item_1"]
					if tAwardItem[nProbItem] == nil then
					tAwardItem[nProbItem] = 1
					--有的话追加数量
					else
						tAwardItem[nProbItem] = tAwardItem[nProbItem] + 1
					end
				end
			end

		end
	end
	
	--掩码清除
	for i =1,3 do
		Task_SetStatistic(nEvent,nType[i],0,1)
		Task_SetStcTimestamp(nEvent,nType[i],0)
	end
	
	--获得物品、记log、文字
	local sAwardItemIext = ""
	for i,v in pairs(tAwardItem) do
		if not Item_AddItem(i,0,v) then
			return
		end
		sAwardItemIext = sAwardItemIext..v..tCoatWarehouse_Sale_Text["Classifier"]..Get_ItemtypeName(i)..tCoatWarehouse_Sale_Text["Comma"]
		local sLog = string.format(tCoatWarehouse_Sale_Log["AwardMeta"],i,v)
		Sys_SaveActionFestivalLog(sLog)
	end
		
	sAwardItemIext = string.sub(sAwardItemIext,1,string.len(sAwardItemIext)-2)

	
	local sAwardText = string.format(tCoatWarehouse_Sale_Text["SplitTextAward"],sAwardItemIext)
	User_TalkChannel2005(sAwardText)
	local efEffect = tCoatWarehouse_Sale_Const["Effect"]["Split"]
	local efObj = tCoatWarehouse_Sale_Const["Effect"]["Obj"]
	User_EffectAdd(efObj,efEffect)
	
	--不在活动时间，就不再弹出对话框
	if not Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"]) then
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"1-2")
end

--屏蔽一键拆解的二次确认
function CoatWarehouse_Sale_ShieldTheConfirm(nNpcId)
	
	local nEvent = tCoatWarehouse_Sale_Stc["EventType"]
	local nTypeOneKey = tCoatWarehouse_Sale_Const["NpcToOneKeySplit"][nNpcId]
	
	Task_SetStatistic(nEvent,nTypeOneKey,1,1)
	Task_SetStcTimestamp(nEvent,nTypeOneKey,0)
	
	LinkNpcGossipFunc_New(nNpcId,"3-4")
	
end

--重新进阁
function CoatWarehouse_Sale_ReEnter(nNpcId)
	--不在活动时间
	-- if not Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"1-1")
		-- return
	-- end
	--等级不满足
	-- if not User_JudgeLevelAndMetempsychosis(tCoatWarehouse_Sale_Const["Level"],tCoatWarehouse_Sale_Const["Mete"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"1-3")
		-- return
	-- end
	local nEvent = tCoatWarehouse_Sale_Stc["EventType"]
	local nType = tCoatWarehouse_Sale_Const["NPCToFirstDraw"][nNpcId]
	
	
	local flat,tItem = 0,{}
	--如果是首抽
	if Task_ChkStcValue(nEvent,nType,"==",0) then
		flat,tItem = Probabil_RandomAward(tCoatWarehouse_Sale_FistProb[nNpcId],1)
		Task_SetStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	else
		flat,tItem = Probabil_RandomAward(tCoatWarehouse_Sale_Prob[nNpcId],1)
	end
	
	local nAwardIndex = tItem[1]["tAward"][1]["Index"]
	local nAwardItem = tItem[1]["tAward"][1]["Item_1"]
	local sAttr = tItem[1]["tAward"][1]["Attr"] or ""
	
	local nTypeCache = {}
	
	for i = 1,3 do
		nTypeCache[i] = tCoatWarehouse_Sale_Const["NPCToTripleCache"][nNpcId][i]
		Task_SetStatistic(nEvent,nTypeCache[i],0,1)
		Task_SetStcTimestamp(nEvent,nTypeCache[i],0)
	end
	Task_SetStatistic(nEvent,nTypeCache[1],nAwardIndex,1)
	Task_SetStcTimestamp(nEvent,nTypeCache[1],0)
	
	LinkNpcGossipFunc_New(nNpcId,"2-3")
	
end

--使用XX天石入阁三次
function CoatWarehouse_Sale_UseTripleEMoney(nNpcId)
	--不在活动时间
	if not Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	--等级不满足
	-- if not User_JudgeLevelAndMetempsychosis(tCoatWarehouse_Sale_Const["Level"],tCoatWarehouse_Sale_Const["Mete"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"1-3")
		-- return
	-- end

	local nNeedEmoney = tCoatWarehouse_Sale_Const["NpcToTriEmoney"][nNpcId]
	local nUserEmoney = Get_UserEMoney()
	
	--天石不足
	if nUserEmoney < nNeedEmoney then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	local NeedSpace = tCoatWarehouse_Sale_Const["AllReceiveBag"][nNpcId]
	--背包空间不足
	if not User_CheckLeftSpace(NeedSpace) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	
	--进入二次确认
	LinkNpcGossipFunc_New(nNpcId,"3-5")
end

--确认使用天石入阁三次
function CoatWarehouse_Sale_ConfirmUseTripleEMoney(nNpcId)
	--不在活动时间
	if not Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	--等级不满足
	-- if not User_JudgeLevelAndMetempsychosis(tCoatWarehouse_Sale_Const["Level"],tCoatWarehouse_Sale_Const["Mete"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"1-3")
		-- return
	-- end

	local nNeedEmoney = tCoatWarehouse_Sale_Const["NpcToTriEmoney"][nNpcId]
	local nUserEmoney = Get_UserEMoney()
	
	--天石不足
	if nUserEmoney < nNeedEmoney then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	local NeedSpace = tCoatWarehouse_Sale_Const["AllReceiveBag"][nNpcId]
	--背包空间不足
	if not User_CheckLeftSpace(NeedSpace) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	
	User_AddEMoney(-1*nNeedEmoney)
	
	 local nNorBoxId = tCoatWarehouse_Sale_Const["NpcInfo"]["NorBox"]["NpcId"]
	 local nWhiteJade = tCoatWarehouse_Sale_Const["ItemId"]["WhiteJade"]
	
	local nEvent = tCoatWarehouse_Sale_Stc["EventType"]
	local efObj = tCoatWarehouse_Sale_Const["Effect"]["Obj"]
	for i=1,3 do
		local flat,tItem = Probabil_RandomAward(tCoatWarehouse_Sale_Prob[nNpcId],1)
		local nAwardIndex = tItem[1]["tAward"][1]["Index"]
		local nAwardItem = tItem[1]["tAward"][1]["Item_1"]
		local sAttr= tItem[1]["tAward"][1]["Attr"] or ""
		local nStars = tItem[1]["tAward"][1]["Stars"] or tCoatWarehouse_Sale_Const["NPCToStar"][nNpcId]
		local bSaveTime = tItem[1]["tAward"][1]["bSaveTime"] or 0
		local nType = tCoatWarehouse_Sale_Const["NPCToTripleCache"][nNpcId][i]
		Task_SetStatistic(nEvent,nType,nAwardIndex,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		--其他特殊处理
		--如果在普通阁抽到三星永久外套
		if nNpcId == nNorBoxId and nStars == tCoatWarehouse_Sale_Const["ThreeStar"] and bSaveTime == 0 then
			local efSpEffect = tCoatWarehouse_Sale_Const["Effect"]["NorDrawSp"]
			User_EffectAdd(efObj,efSpEffect)
			local sCoatLog = tCoatWarehouse_Sale_Log["ComDrawAw3"]
			Sys_SaveActionFestivalLog(sCoatLog)
		end
		--普通阁抽到昆仑玉也给光效
		if nNpcId == nNorBoxId and nAwardItem == nWhiteJade then
			local efSpEffect = tCoatWarehouse_Sale_Const["Effect"]["NorDrawSp"]
			User_EffectAdd(efObj,efSpEffect)
		end
		--其他特殊log处理
		if tCoatWarehouse_Sale_Log["DrawSp"][nNpcId][nAwardItem] ~= nil then
			local sSpLog = tCoatWarehouse_Sale_Log["DrawSp"][nNpcId][nAwardItem]
			Sys_SaveActionFestivalLog(sSpLog)
		end

	end
	
	local sEmoneyLog = tCoatWarehouse_Sale_Log[nNpcId]["ELEmDrawTre"]
	Sys_SaveEmoneyBuy(sEmoneyLog)
	local sSpDrawTreLog = tCoatWarehouse_Sale_Log["SpDrawTre"][nNpcId]
	Sys_SaveActionFestivalLog(sSpDrawTreLog)
	
	local efEffect = tCoatWarehouse_Sale_Const["Effect"]["Draw"][nNpcId]
	User_EffectAdd(efObj,efEffect)
	LinkNpcGossipFunc_New(nNpcId,"3-4")
end


--选择兑换5星外套
function CoatWarehouse_Sale_Exchange5Star(nNpcId,nSelItemId)
	local nNeedNum = tCoatWarehouse_Sale_5StarExchangeInfo[nSelItemId]
	local nNeedItemId = tCoatWarehouse_Sale_Const["ItemId"]["BooldJade"]
	
	if not Item_ChkMulItem(nNeedItemId,nNeedItemId,nNeedNum,1) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	--背包空间不足
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	tNpcGossip[nNpcId]["Text331"] = string.format(tCoatWarehouse_Sale_Text[nNpcId]["Text331"],nNeedNum,Get_ItemtypeName(nSelItemId))
	tNpcGossip[nNpcId]["OptionFunc331"] = "CoatWarehouse_Sale_ConfirmExchange</N>"..nNpcId.."</N>"..nSelItemId
	LinkNpcGossipFunc_New(nNpcId,"3-3")
	
end

--确认兑换
function CoatWarehouse_Sale_ConfirmExchange(nNpcId,nSelItemId)
	local nNeedNum = tCoatWarehouse_Sale_5StarExchangeInfo[nSelItemId]
	local nNeedItemId = tCoatWarehouse_Sale_Const["ItemId"]["BooldJade"]
	
	if not Item_ChkMulItem(nNeedItemId,nNeedItemId,nNeedNum,1) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	--背包空间不足
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	if not Item_DelMulItem(nNeedItemId,nNeedItemId,nNeedNum,1) then
		return
	end
	
	if not Item_AddNewItem(nSelItemId,tCoatWarehouse_Sale_Const["ItemNorAttr"]) then
		return
	end
	
	
	local sAwardText = string.format(tCoatWarehouse_Sale_Text["SelSucc"],Get_ItemtypeName(nSelItemId))
	User_TalkChannel2005(sAwardText)
	local sLog = string.format(tCoatWarehouse_Sale_Log["Exchange5Star"],nNeedItemId,nNeedNum,nSelItemId)
	Sys_SaveActionFestivalLog(sLog)
	local sSpLog = tCoatWarehouse_Sale_Log["RareExAw5"]
	Sys_SaveActionFestivalLog(sSpLog)
	
	local efEffect = tCoatWarehouse_Sale_Const["Effect"]["For5Star"]
	local efObj = tCoatWarehouse_Sale_Const["Effect"]["Obj"]
	User_EffectAdd(efObj,efEffect)
end

--四星手册、三星手册选择外套
function CoatWarehouse_Sale_SelCoat(nThisItemId,nSelItemId)
	tItem[nThisItemId]["Text211"] = string.format(tCoatWarehouse_Sale_Text[nThisItemId]["Text211"],Get_ItemtypeName(nSelItemId))
	local nNeedFlowerNum = tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][nSelItemId]
	local nNeedSilkwormNum = tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][nSelItemId]
	tItem[nThisItemId]["Text212"] = string.format(tCoatWarehouse_Sale_Text[nThisItemId]["Text212"],nNeedFlowerNum,nNeedSilkwormNum)
	
	tItem[nThisItemId]["OptionFunc211"] = "CoatWarehouse_Sale_BeginMakeCoat</N>"..nThisItemId.."</N>"..nSelItemId
	LinkItemGossipFunc_New(nThisItemId,"2-1")
	
end

--开始制衣
function CoatWarehouse_Sale_BeginMakeCoat(nThisItemId,nSelItemId)
	local nNeedFlowerNum = tCoatWarehouse_Sale_StarCoatInfo["NeedFlowerNum"][nSelItemId]
	local nNeedSilkwormNum = tCoatWarehouse_Sale_StarCoatInfo["NeedSilkwormNum"][nSelItemId]
	--散花绫
	local nItemFlower = tCoatWarehouse_Sale_Const["ItemId"]["MetaFlower"]
	--天蚕锦
	local nItemSilkworm = tCoatWarehouse_Sale_Const["ItemId"]["Silkworm"]
	
	tItem[nThisItemId]["Text311"] = string.format(tCoatWarehouse_Sale_Text[nThisItemId]["Text311"],Get_ItemtypeName(nSelItemId),nNeedFlowerNum,nNeedSilkwormNum)
	if not Item_ChkMulItem(nItemFlower,nItemFlower,nNeedFlowerNum,1) then
		LinkItemGossipFunc_New(nThisItemId,"3-1")
		return
	end
	
	if not Item_ChkMulItem(nItemSilkworm,nItemSilkworm,nNeedSilkwormNum,1) then
		LinkItemGossipFunc_New(nThisItemId,"3-1")
		return
	end
	
	if not User_CheckLeftSpace(1) then
		LinkItemGossipFunc_New(nThisItemId,"3-2")
		return
	end
	if not Item_ChkItem(nThisItemId) then
		return
	end
	if not Item_DelItem(nThisItemId) then
		return
	end
	
	if not Item_DelMulItem(nItemFlower,nItemFlower,nNeedFlowerNum,1) then
		return
	end
	
	if not Item_DelMulItem(nItemSilkworm,nItemSilkworm,nNeedSilkwormNum,1) then
		return
	end
	--给赠品
	if not Item_AddNewItem(nSelItemId,tCoatWarehouse_Sale_Const["ItemNorAttr"]) then
		return
	end
	
	local sAwardText = string.format(tCoatWarehouse_Sale_Text["AwardForCoat"],Get_ItemtypeName(nSelItemId))
	User_TalkChannel2005(sAwardText)
	
	local sLog = string.format(tCoatWarehouse_Sale_Log["ListToCoat"],nThisItemId,nNeedFlowerNum,nNeedSilkwormNum,nSelItemId)
	Sys_SaveActionFestivalLog(sLog)
	
	local efEffect = tCoatWarehouse_Sale_Const["Effect"]["Make"]
	local efObj = tCoatWarehouse_Sale_Const["Effect"]["Obj"]

	User_EffectAdd(efObj,efEffect)
end

--素衣阁和锦衣阁
function CoatWarehouse_Sale_NpcBegin(nNpcId)
	--不在活动时间
	if not Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	--去掉等级限制
	-- if not User_JudgeLevelAndMetempsychosis(tCoatWarehouse_Sale_Const["Level"],tCoatWarehouse_Sale_Const["Mete"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"1-3")
		-- return
	-- end

	local nEvent = tCoatWarehouse_Sale_Stc["EventType"]
	local nTypeFir = tCoatWarehouse_Sale_Const["NPCToTripleCache"][nNpcId][1]
	local nTypeSec = tCoatWarehouse_Sale_Const["NPCToTripleCache"][nNpcId][2]
	local nTypeThi = tCoatWarehouse_Sale_Const["NPCToTripleCache"][nNpcId][3]
	
	local nCacheData1 = Get_UserStatisticValue(nEvent,nTypeFir)
	local nCacheData2 = Get_UserStatisticValue(nEvent,nTypeSec)
	local nCacheData3 = Get_UserStatisticValue(nEvent,nTypeThi)
	
	--没有缓存物品
	if nCacheData1 == 0 then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--只有单次抽取
	if nCacheData2 == 0 then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"3-4")

end

--拆解外套
function CoatWarehouse_Sale_SplitTheCoat(nNpcId,nSelCoatId)
	
	local bChecked = false
	--没有配置多个id
	if tCoatWarehouse_Sale_CoatToCoat[nSelCoatId] == nil then
		--没有检测到该永久外套
		if Item_ChkMulItem(nSelCoatId,nSelCoatId,1,1,0,0,0) then
			bChecked = true
		end
	else
		for i,v in pairs(tCoatWarehouse_Sale_CoatToCoat[nSelCoatId]) do
			--检测到任意一件，就算有外套
			if Item_ChkMulItem(v,v,1,1,0,0,0) then
				bChecked = true
			end
		end
	end
	
	if bChecked == false then
		tNpcGossip[nNpcId]["Text951"] = string.format(tCoatWarehouse_Sale_Text[nNpcId]["Text951"],Get_ItemtypeName(nSelCoatId))
		LinkNpcGossipFunc_New(nNpcId,"9-5")
		return
	end
	
	
	tNpcGossip[nNpcId]["Text971"] = string.format(tCoatWarehouse_Sale_Text[nNpcId]["Text971"],Get_ItemtypeName(nSelCoatId))
	tNpcGossip[nNpcId]["OptionFunc971"] = "CoatWarehouse_Sale_ConfirmSplitTheCoat</N>"..nNpcId.."</N>"..nSelCoatId
	LinkNpcGossipFunc_New(nNpcId,"9-7")
	
end

function CoatWarehouse_Sale_ConfirmSplitTheCoat(nNpcId,nSelCoatId)

	local bChecked = false
	local nCheckId = 0
	--没有配置多个id
	if tCoatWarehouse_Sale_CoatToCoat[nSelCoatId] == nil then
		--没有检测到该永久外套
		if Item_ChkMulItem(nSelCoatId,nSelCoatId,1,1,0,0,0) then
			nCheckId = nSelCoatId
			bChecked = true
		end
	else
		for i,v in pairs(tCoatWarehouse_Sale_CoatToCoat[nSelCoatId]) do
			--检测到任意一件，就算有外套
			if Item_ChkMulItem(v,v,1,1,0,0,0) then
				nCheckId = v
				bChecked = true
			end
		end
	end

	--没有检测到该永久外套
	if bChecked == false then
		tNpcGossip[nNpcId]["Text951"] = string.format(tCoatWarehouse_Sale_Text[nNpcId]["Text951"],Get_ItemtypeName(nSelCoatId))
		LinkNpcGossipFunc_New(nNpcId,"9-5")
		return
	end
	
	--该外套的星级
	local nStar = tCoatWarehouse_Sale_CotaItemInfo["Stars"][nSelCoatId]
	--该外套的类型 1为时装 2为骑宠
	local nCoatType =tCoatWarehouse_Sale_CotaItemInfo["Type"][nSelCoatId]
	
	local tTable = tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][nCoatType][nStar]
	-- 判断是否四星五星外套
	if nStar < 4 then
		tTable = tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][nCoatType][nStar]
	else
		-- 修改拆解4星和5星外套拆解必出千年血玉的机制，改为50%出，剩下50%出3个岫山玉
		local nRandomNum = math.random(1, 2)
		if nRandomNum == 1 then
			tTable = tCoatWarehouse_Sale_SplitCoatA["NotSaveTime"][nCoatType][nStar]
		else
			tTable = tCoatWarehouse_Sale_SplitCoatA["NotSaveTimeRandom"][nCoatType][nStar]
		end
	end
	
	local nNeedSpace = tTable["Space"]
	
	--背包空间不足
	if not User_CheckLeftSpace(nNeedSpace) then
		tNpcGossip[nNpcId]["Text961"] = string.format(tCoatWarehouse_Sale_Text[nNpcId]["Text961"],nNeedSpace)
		LinkNpcGossipFunc_New(nNpcId,"9-6")
		return
	end
	--删除永久的
	if not Item_DelMulItem(nCheckId,nCheckId,1,1,0,0,0) then
		return
	end
	local sDelLog = string.format(tCoatWarehouse_Sale_Log["SplitTheCoat"],nCheckId)
	Sys_SaveActionFestivalLog(sDelLog)
	
	--获得物品的文字
	local sAwardItemIext = ""
	
	for i ,v in pairs(tTable["Item"]) do
		if not Item_AddNewItem(v,tTable["Attr"][i]) then
			return
		end
		local sLog = string.format(tCoatWarehouse_Sale_Log["AwardMeta"],v,tTable["Num"][i])
		Sys_SaveActionFestivalLog(sLog)
		sAwardItemIext = sAwardItemIext .. tTable["Num"][i] .. tCoatWarehouse_Sale_Text["Classifier"] .. Get_ItemtypeName(v)..tCoatWarehouse_Sale_Text["Comma"]
	end
	
	--还有配置额外掉落
	if tTable["Random"] ~= nil then
		local nBaseProb = tCoatWarehouse_Sale_Const["BaseProb"]
		local nProb = tTable["Random"]["ItemChance"]
		--如果走到概率了
		if Sys_Random(nProb,nBaseProb) then
			local nProbItem = tTable["Random"]["Item_1"]
			if not Item_AddNewItem(nProbItem,"") then
				return
			end
			sAwardItemIext = sAwardItemIext .. 1 ..tCoatWarehouse_Sale_Text["Classifier"] .. Get_ItemtypeName(nProbItem)..tCoatWarehouse_Sale_Text["Comma"]
			local sLog = string.format(tCoatWarehouse_Sale_Log["AwardMeta"],nProbItem,1)
			Sys_SaveActionFestivalLog(sLog)
		end
	end
	
	--去掉最后的顿号
	sAwardItemIext = string.sub(sAwardItemIext,1,string.len(sAwardItemIext)-2)
	local efEffect = tCoatWarehouse_Sale_Const["Effect"]["Split"]
	local efObj = tCoatWarehouse_Sale_Const["Effect"]["Obj"]
	User_EffectAdd(efObj,efEffect)
	local sAwardText = string.format(tCoatWarehouse_Sale_Text["SplitTextAward"],sAwardItemIext)
	User_TalkChannel2005(sAwardText)

end

--传送到活动地点
function CoatWarehouse_Sale_TPToCoat()
	
	if Get_UserLife() < 1 then
		return
	end
	
	local nUserMapId =Get_UserMapId()
	
	local bInCity = false
	--在主城和市场
	for i=1,6 do
		if nUserMapId == tCoatWarehouse_Sale_Const["MapCanTran"][i] then
			bInCity = true
			break
		end
	end
	
	local nMapId = tCoatWarehouse_Sale_Const["MapCanTran"]["MapId"]
	local nCellx = tCoatWarehouse_Sale_Const["MapCanTran"]["Cellx"]
	local nCelly = tCoatWarehouse_Sale_Const["MapCanTran"]["Celly"]
	local nRange = tCoatWarehouse_Sale_Const["MapCanTran"]["Range"]
	local nNpcId = tCoatWarehouse_Sale_Const["MapCanTran"]["NpcId"]
	
	--在各大主城，则传送
	if bInCity == true then
		--不在市场，则记录位置
		if tCoatWarehouse_Sale_Const["Maket"] ~= nUserMapId then
		local nPosX = Get_UserPositionX()
		local nPosY = Get_UserPositionY()
		User_RecordPoint(nUserMapId,nPosX,nPosY)
		end
		User_UserRandBoundTrans(nMapId,nCellx,nCelly,nRange,nRange,1)
	else
		Sys_GotoSomeWhere(nCellx,nCelly,nMapId,nNpcId)
	end
end

--物品的自动寻路
function CoatWarehouse_Sale_FindWayByItem(nItemId)
	
	if not Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"]) then
		User_TalkChannel2005(tCoatWarehouse_Sale_Text["NoTimeFindWay"])
		return
	end
	
	local nDataAc = tCoatWarehouse_Sale_Const["GlobalAc"]
	-- 判断新服
	-- if Get_SysDynaGlobalData0(nDataAc) ~= 1 then
		-- return false
	-- end
	
	local nNpcId = tCoatWarehouse_Sale_Const["ItemToNpcInfo"][nItemId]["NpcId"]
	local nMapId = tCoatWarehouse_Sale_Const["ItemToNpcInfo"][nItemId]["MapId"]
	local nCellx = tCoatWarehouse_Sale_Const["ItemToNpcInfo"][nItemId]["Cellx"]
	local nCelly = tCoatWarehouse_Sale_Const["ItemToNpcInfo"][nItemId]["CellY"]
	
	Sys_GotoSomeWhere(nCellx,nCelly,nMapId,nNpcId)
end

--深海寻宝部分
--三个铜币兑换岫山玉
function CoatWarehouse_Sale_ExchangXiuJade(nNpcId)
	local nItemCopper = tCoatWarehouse_Sale_Const["ItemId"]["Copper"]
	-- 不在活动时间
	if not Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	-- 铜币不足
	if not Item_ChkMulItem(nItemCopper,nItemCopper,3,1) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- if not User_CheckLeftSpace(1) then
		-- LinkNpcGossipFunc_New(nNpcId,"2-3")
		-- return
	-- end
	
	local nEvent = tCoatWarehouse_Sale_Stc["EventType"]
	local nType = tCoatWarehouse_Sale_Stc["DataType"]["Copper"]
	
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		if not Task_StcInterval(nEvent,nType,1,4) then
			LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
		end
	end
	
	Task_SetStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	if not Item_DelMulItem(nItemCopper,nItemCopper,3,1) then
		return
	end
	if not CoatWarehouse_Sale_ActAwardXiuJade() then
		return
	end
	local efEffect = tCoatWarehouse_Sale_Const["Effect"]["ExchangeXiu"]
	local efObj = tCoatWarehouse_Sale_Const["Effect"]["Obj"]
	User_EffectAdd(efObj,efEffect)
	LinkNpcGossipFunc_New(nNpcId,"2-4")
end

function CoatWarehouse_Sale_UseXiuJadePack(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	--活动时间前
	if Sys_ChkFullTime(tCoatWarehouse_Sale_Const["BeforeActivityTime"]) then
		User_TalkChannel2005(tCoatWarehouse_Sale_Text[nItemId]["BeforeTime"])
		return
	end
	--活动时间后
	if not Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"]) then
		if not Item_DelItem(nItemId) then
			return
		end
		local sDelLog = string.format(tCoatWarehouse_Sale_Log["AfterTimeDel"],nItemId)
		Sys_SaveActionFestivalLog(sDelLog)
		User_TalkChannel2005(tCoatWarehouse_Sale_Text[nItemId]["AfterTime"])
		return
	end
	
	local nEvent = tCoatWarehouse_Sale_Stc["EventType"]
	local nType = tCoatWarehouse_Sale_Const["XiuJadePack"][nItemId]
	
	--如果有使用过
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		if not Task_StcInterval(nEvent,nType,1,4) then
			User_TalkChannel2005(tCoatWarehouse_Sale_Text[nItemId]["OneTime"])
			return
		end
	end
	
	Task_SetStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	if not Item_DelItem(nItemId) then
		return
	end
	
	CoatWarehouse_Sale_ActAwardXiuJade()
	
	local efEffect = tCoatWarehouse_Sale_Const["Effect"]["OpenXiuJadePack"]
	local efObj = tCoatWarehouse_Sale_Const["Effect"]["Obj"]
	User_EffectAdd(efObj,efEffect)
	
end

function CoatWarehouse_Sale_NewExXiuJade(nNpcId,nItemId,nNum,nContain)
	--不在整个活动时间
	if not Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nDataAc = tCoatWarehouse_Sale_Const["GlobalAc"]
	--不在新服活动时间
	if Get_SysDynaGlobalData1(nDataAc) == 0 then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	--不在新服活动时间
	-- if not Sys_ChkFullTime(tCoatWarehouse_Sale_Const["NewServerTime"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"1-3")
		-- return
	-- end
	
	local nEvent = tCoatWarehouse_Sale_Stc["NewSerEvent"]
	local nType = tCoatWarehouse_Sale_Stc["NewSerType"]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	local nData = Get_UserStatisticValue(nEvent,nType)
	
	--包含那个数字，表示已经兑换过了
	if Sys_ParseNumbersContain(nContain,nData) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	--钱币不足
	if not Item_ChkMulItem(nItemId,nItemId,nNum,1) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	--只删一个物品，且背包空间不足
	if not User_CheckLeftSpace(1) and nNum == 1 then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	--删物品
	if not Item_DelMulItem(nItemId,nItemId,nNum,1) then
		return
	end
	--记掩码
	Task_AddStatistic(nEvent,nType,nContain,1)
	
	local tAward = tCoatWarehouse_Sale_Const["NewSerAward"][nItemId]
	local nExp = tAward["Exp"]
	local nItem1Id = tAward["Item1"][1]
	local sItem1Attr = tAward["Item1"][2]
	local nItem2Id = tAward["Item2"][1]
	local sItem2Attr = tAward["Item2"][2]
	
	local nUserLev = Get_UserLevel()
	
	local sLog = string.format(tCoatWarehouse_Sale_Log["NewSerAwExp"],nItemId,nNum,nExp,4-nNum,4-nNum)
	
	
	
	local sText = string.format(tCoatWarehouse_Sale_Text["NewSerNoExp"],4-nNum,4-nNum)
	--未满级
	if nUserLev < G_User_MaxLev then
		User_AddExpTime(nExp)
		sLog = string.format(tCoatWarehouse_Sale_Log["NewSerAw"],nItemId,nNum,4-nNum,4-nNum)
		sText = string.format(tCoatWarehouse_Sale_Text["NewSerNAw"],nExp,4-nNum,4-nNum)
	end
	
	if not Item_AddNewItem(nItem1Id,sItem1Attr) then
		return
	end
	
	if not Item_AddNewItem(nItem2Id,sItem2Attr) then
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"3-4")
	User_TalkChannel2005(sText)
	Sys_SaveActionFestivalLog(sLog)
end

function CoatWarehouse_Sale_OpenWebSite()
	User_SendWebDialog("http://co.99.com/comail/rainbow_fashion_deals.shtml")
end

function CoatWarehouse_Sale_GlobalDataSet()
	
	local nGlobAc = tCoatWarehouse_Sale_Const["GlobalAc"]
	--data0未整个活动持续时间
	local nData0 = Get_SysDynaGlobalData0(nGlobAc)
	--整个活动未开启，则不能设7天活动开启
	if nData0 == 0 then
		Sys_SetSynaGlobalData1(nGlobAc,0)
		Sys_SetSynaGlobalDataStr0(nGlobAc,"")
		return
	end
	
	--获取开启时间
	local sStr0 = Get_SysDynaGlobalDataStr0(nGlobAc)
	--还未设置
	local sTime = os.date("%Y-%m-%d %H:%M")
	if ("" == sStr0) then
		Sys_SetSynaGlobalData1(nGlobAc,1)
		Sys_SetSynaGlobalDataStr0(nGlobAc,sTime)
		return
	end
	--获取15天后的时间
	local sTimeEnd = CoatWarehouse_Sale_GetNewDate(sStr0,15)
	
	local sFullTime = sStr0.." "..sTimeEnd
	--在新服开服15天内
	if Sys_ChkFullTime(sFullTime) then
		Sys_SetSynaGlobalData1(nGlobAc,1)
	else
		Sys_SetSynaGlobalData1(nGlobAc,0)
	end
	
end

function CoatWarehouse_Sale_GetNewDate(srcDateTime,interval)  
	--去掉当天时间
	interval = interval-1
    --从日期字符串中截取出年月日时分秒  
    local Y = string.sub(srcDateTime,1,4)  
    local M = string.sub(srcDateTime,6,7)  
    local D = string.sub(srcDateTime,9,10)  
    local H = string.sub(srcDateTime,12,13)  
    local MM = string.sub(srcDateTime,15,16)  
  
    --把日期时间字符串转换成对应的日期时间  
    local dt1 = os.time{year=Y, month=M, day=D, hour=H,min=MM}  
  
    --根据时间单位和偏移量得到具体的偏移数据  
	local ofset = 86400*interval
  
    --指定的时间+时间偏移量  
    local newTime = os.date("%Y-%m-%d 23:59", dt1 + tonumber(ofset))  
    return newTime  
end  

--时间自检，判断是否在活动时间内
function CoatWarehouse_Sale_Check()
	local nDataAc = tCoatWarehouse_Sale_Const["GlobalAc"]
	local SActivityTime  = Get_SysDynaGlobalDataStr0(nDataAc)
	local SBeforeActivityTime  = Get_SysDynaGlobalDataStr1(nDataAc)
	if Sys_ChkFullTime(SActivityTime) then
		-- if Get_SysDynaGlobalData0(nDataAc) ~= 1 then
			tCoatWarehouse_Sale_Const["ActivityTime"] = SActivityTime
			tCoatWarehouse_Sale_Const["BeforeActivityTime"] = SBeforeActivityTime
			Sys_SetSynaGlobalData0(nDataAc,1) 		--控制南宫促衣活动是否开始
			
			local sNewServerTime = Get_SysDynaGlobalDataStr3(nDataAc)
			if Sys_ChkFullTime(sNewServerTime) then
				Sys_SetSynaGlobalData1(nDataAc,1) 		-- 控制新服狂欢时间
			else
				Sys_SetSynaGlobalData1(nDataAc,0) 		-- 控制新服狂欢时间
			end
			
		--end
	else
		if Get_SysDynaGlobalData0(nDataAc) ~= 0 then
			Sys_SetSynaGlobalData0(nDataAc,0) 		-- 控制南宫促衣活动是否开始
			Sys_SetSynaGlobalData1(nDataAc,0)		-- 控制新服狂欢时间
		end
	end
end


--新增一个礼包
function CoatWarehouse_Sale_GetFirst(nItemId,nFlag)
	if not Item_ChkItem(nItemId) then
		return
	end

	RewardTemplate_UseItem(tCoatWarehouse_Sale_FirstItem[nItemId][nFlag])
end

-- 取消拆解对白
function CoatWarehouse_Sale_CancleSplit()
	Sys_MsgBox(tCoatWarehouse_Sale_Text["CancleSplit"])
end

------------------------------------------------------------对白配置---------------------------------------------------------

--活动时间前
tNpcFace[3935] = 303
tNpcGossip[18994] = tNpcGossip[18994] or DefaultNpc:new{}
tNpcGossip[18994]["OptionHidden"] = 1

tNpcGossip[18994]["Text1-1"] = {111,112,113}
tNpcGossip[18994]["Text111"] = tCoatWarehouse_Sale_Text[18994]["Text111"]
tNpcGossip[18994]["Text112"] = tCoatWarehouse_Sale_Text[18994]["Text112"]
tNpcGossip[18994]["Text113"] = tCoatWarehouse_Sale_Text[18994]["Text113"]
tNpcGossip[18994]["tOption1-1"] = {111}
tNpcGossip[18994]["ChkFunc1-1"] = function()
	return not Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"])
end
tNpcGossip[18994]["Option111"] = tCoatWarehouse_Sale_Text[18994]["Option111"]


--活动时间内，等级不满足
tNpcGossip[18994]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[18994]["Text121"] = tCoatWarehouse_Sale_Text[18994]["Text121"]
tNpcGossip[18994]["Text122"] = tCoatWarehouse_Sale_Text[18994]["Text122"]
tNpcGossip[18994]["Text123"] = tCoatWarehouse_Sale_Text[18994]["Text123"]
tNpcGossip[18994]["Text124"] = tCoatWarehouse_Sale_Text[18994]["Text124"]
tNpcGossip[18994]["Text125"] = tCoatWarehouse_Sale_Text[18994]["Text125"]
tNpcGossip[18994]["tOption1-2"] = {121}
tNpcGossip[18994]["ChkFunc1-2"] = function()
	-- return not User_JudgeLevelAndMetempsychosis(tCoatWarehouse_Sale_Const["Level"],tCoatWarehouse_Sale_Const["Mete"])
	--不进行等级判断，直接进入满足等级要求的对白
	return false
end

tNpcGossip[18994]["Option121"] = tCoatWarehouse_Sale_Text[18994]["Option121"]

--活动时间内，等级满足
tNpcGossip[18994]["Text1-3"] = {131,132,133,134}
tNpcGossip[18994]["Text131"] = tCoatWarehouse_Sale_Text[18994]["Text131"]
tNpcGossip[18994]["Text132"] = tCoatWarehouse_Sale_Text[18994]["Text132"]
tNpcGossip[18994]["Text133"] = tCoatWarehouse_Sale_Text[18994]["Text133"]
tNpcGossip[18994]["Text134"] = tCoatWarehouse_Sale_Text[18994]["Text134"]
tNpcGossip[18994]["tOption1-3"] = {131,132}

tNpcGossip[18994]["Option131"] = tCoatWarehouse_Sale_Text[18994]["Option131"]
tNpcGossip[18994]["OptionFunc131"] = "CoatWarehouse_Sale_OpenWebSite"
tNpcGossip[18994]["Option132"] = tCoatWarehouse_Sale_Text[18994]["Option132"]

tNpcGossip[18994]["ChkFunc1-3"] = function()
	local nDataAc = tCoatWarehouse_Sale_Const["GlobalAc"]
	local nData0 = Get_SysDynaGlobalData0(nDataAc)
	
	--[[
	if nData0 == 0 then
		tNpcGossip[18994]["Text133"] = tCoatWarehouse_Sale_Text[18994]["Time"]
	end
	if tNpcGossip[18994]["Text133"] then
		return true
	end
	]]--
	tNpcGossip[18994]["Text133"] = tCoatWarehouse_Sale_Text[18994]["Time"]
	return true
	
end



tNpcGossip[18994]["Text2-1"] = {211,212,213,214}
tNpcGossip[18994]["Text211"] = tCoatWarehouse_Sale_Text[18994]["Text211"]
tNpcGossip[18994]["Text212"] = tCoatWarehouse_Sale_Text[18994]["Text212"]
tNpcGossip[18994]["Text213"] = tCoatWarehouse_Sale_Text[18994]["Text213"]
tNpcGossip[18994]["Text214"] = tCoatWarehouse_Sale_Text[18994]["Text214"]
tNpcGossip[18994]["tOption2-1"] = {211}
tNpcGossip[18994]["Option211"] = tCoatWarehouse_Sale_Text[18994]["Option211"]


--吕绣娘
tNpcFace[3936] =302

tNpcGossip[18995] = tNpcGossip[18995] or DefaultNpc:new{}
tNpcGossip[18995]["OptionHidden"] = 1
tNpcGossip[18995]["nPageNum"] = 10

tNpcGossip[18995]["Text1-1"] = {111,112,113}
tNpcGossip[18995]["Text111"] = tCoatWarehouse_Sale_Text[18995]["Text111"]
tNpcGossip[18995]["Text112"] = tCoatWarehouse_Sale_Text[18995]["Text112"]
tNpcGossip[18995]["Text113"] = tCoatWarehouse_Sale_Text[18995]["Text113"]
tNpcGossip[18995]["tOption1-1"] = {111,112,113}
tNpcGossip[18995]["ChkFunc1-1"] = function()
	return true
end

tNpcGossip[18995]["Option111"] = tCoatWarehouse_Sale_Text[18995]["Option111"]
tNpcGossip[18995]["OptionPoint111"] = "2-1"
tNpcGossip[18995]["Option112"] = tCoatWarehouse_Sale_Text[18995]["Option112"]
tNpcGossip[18995]["OptionPoint112"] = "2-2"
tNpcGossip[18995]["Option113"] = tCoatWarehouse_Sale_Text[18995]["Option113"]

tNpcGossip[18995]["Text2-1"] = {211}
tNpcGossip[18995]["Text211"] = tCoatWarehouse_Sale_Text[18995]["Text211"]
tNpcGossip[18995]["tOption2-1"] = {211,212,213,214,215,216}
tNpcGossip[18995]["Option211"] = tCoatWarehouse_Sale_Text[18995]["Option211"]
tNpcGossip[18995]["OptionPoint211"] = "3-1"
tNpcGossip[18995]["Option212"] = tCoatWarehouse_Sale_Text[18995]["Option212"]
tNpcGossip[18995]["OptionPoint212"] = "5-1"
tNpcGossip[18995]["Option213"] = tCoatWarehouse_Sale_Text[18995]["Option213"]
tNpcGossip[18995]["OptionPoint213"] = "7-1"
tNpcGossip[18995]["Option214"] = tCoatWarehouse_Sale_Text[18995]["Option214"]
tNpcGossip[18995]["OptionPoint214"] = "8-1"
tNpcGossip[18995]["Option215"] = tCoatWarehouse_Sale_Text[18995]["Option215"]
tNpcGossip[18995]["OptionPoint215"] = "9-1"
tNpcGossip[18995]["Option216"] = tCoatWarehouse_Sale_Text[18995]["Option216"]

tNpcGossip[18995]["Text2-2"] = {221}
tNpcGossip[18995]["Text221"] = tCoatWarehouse_Sale_Text[18995]["Text221"]
tNpcGossip[18995]["tOption2-2"] = {221,222,223,224,225,226}
tNpcGossip[18995]["Option221"] = tCoatWarehouse_Sale_Text[18995]["Option221"]
tNpcGossip[18995]["OptionPoint221"] = "4-1"
tNpcGossip[18995]["Option222"] = tCoatWarehouse_Sale_Text[18995]["Option222"]
tNpcGossip[18995]["OptionPoint222"] = "6-1"
tNpcGossip[18995]["Option223"] = tCoatWarehouse_Sale_Text[18995]["Option223"]
tNpcGossip[18995]["OptionPoint223"] = "7-5"
tNpcGossip[18995]["Option224"] = tCoatWarehouse_Sale_Text[18995]["Option224"]
tNpcGossip[18995]["OptionPoint224"] = "8-2"
tNpcGossip[18995]["Option225"] = tCoatWarehouse_Sale_Text[18995]["Option225"]
tNpcGossip[18995]["OptionPoint225"] = "9-2"
tNpcGossip[18995]["Option226"] = tCoatWarehouse_Sale_Text[18995]["Option226"]


--一星人物外套 3开头
--已校验顺序
tNpcGossip[18995]["Text3-1"] = {311}
tNpcGossip[18995]["Text311"] = tCoatWarehouse_Sale_Text[18995]["Text311"]
tNpcGossip[18995]["tOption3-1"] = {311,312,313,314,315,316,317,318,319,3110}
tNpcGossip[18995]["Option311"] = tCoatWarehouse_Sale_Text[18995]["Option311"]
tNpcGossip[18995]["OptionFunc311"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>182325"
tNpcGossip[18995]["Option312"] = tCoatWarehouse_Sale_Text[18995]["Option312"]
tNpcGossip[18995]["OptionFunc312"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>181525"
tNpcGossip[18995]["Option313"] = tCoatWarehouse_Sale_Text[18995]["Option313"]
tNpcGossip[18995]["OptionFunc313"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>181515"
tNpcGossip[18995]["Option314"] = tCoatWarehouse_Sale_Text[18995]["Option314"]
tNpcGossip[18995]["OptionFunc314"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>181505"
tNpcGossip[18995]["Option315"] = tCoatWarehouse_Sale_Text[18995]["Option315"]
tNpcGossip[18995]["OptionFunc315"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>181825"
tNpcGossip[18995]["Option316"] = tCoatWarehouse_Sale_Text[18995]["Option316"]
tNpcGossip[18995]["OptionFunc316"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>182335"
tNpcGossip[18995]["Option317"] = tCoatWarehouse_Sale_Text[18995]["Option317"]
tNpcGossip[18995]["OptionFunc317"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>181815"
tNpcGossip[18995]["Option318"] = tCoatWarehouse_Sale_Text[18995]["Option318"]
tNpcGossip[18995]["OptionFunc318"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>181805"
tNpcGossip[18995]["Option319"] = tCoatWarehouse_Sale_Text[18995]["Option319"]
tNpcGossip[18995]["OptionFunc319"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>182315"
tNpcGossip[18995]["Option3110"] = tCoatWarehouse_Sale_Text[18995]["Option3110"]
tNpcGossip[18995]["OptionPoint3110"] = "3-2"

tNpcGossip[18995]["Text3-2"] = {321}
tNpcGossip[18995]["Text321"] = tCoatWarehouse_Sale_Text[18995]["Text321"]
tNpcGossip[18995]["tOption3-2"] = {321,322,323,324,325,326,327,328,329,3210}
tNpcGossip[18995]["Option321"] = tCoatWarehouse_Sale_Text[18995]["Option321"]
tNpcGossip[18995]["OptionFunc321"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>181425"
tNpcGossip[18995]["Option322"] = tCoatWarehouse_Sale_Text[18995]["Option322"]
tNpcGossip[18995]["OptionFunc322"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>181415"
tNpcGossip[18995]["Option323"] = tCoatWarehouse_Sale_Text[18995]["Option323"]
tNpcGossip[18995]["OptionFunc323"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>181405"
tNpcGossip[18995]["Option324"] = tCoatWarehouse_Sale_Text[18995]["Option324"]
tNpcGossip[18995]["OptionFunc324"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>182375"
tNpcGossip[18995]["Option325"] = tCoatWarehouse_Sale_Text[18995]["Option325"]
tNpcGossip[18995]["OptionFunc325"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>181345"
tNpcGossip[18995]["Option326"] = tCoatWarehouse_Sale_Text[18995]["Option326"]
tNpcGossip[18995]["OptionFunc326"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>181725"
tNpcGossip[18995]["Option327"] = tCoatWarehouse_Sale_Text[18995]["Option327"]
tNpcGossip[18995]["OptionFunc327"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>182385"
tNpcGossip[18995]["Option328"] = tCoatWarehouse_Sale_Text[18995]["Option328"]
tNpcGossip[18995]["OptionFunc328"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>182355"
tNpcGossip[18995]["Option329"] = tCoatWarehouse_Sale_Text[18995]["Option329"]
tNpcGossip[18995]["OptionPoint329"] = "3-1"
tNpcGossip[18995]["Option3210"] = tCoatWarehouse_Sale_Text[18995]["Option3210"]
tNpcGossip[18995]["OptionPoint3210"] = "3-3"

tNpcGossip[18995]["Text3-3"] = {331}
tNpcGossip[18995]["Text331"] = tCoatWarehouse_Sale_Text[18995]["Text331"]
tNpcGossip[18995]["tOption3-3"] = {331,332,333,334,335,336,337,338,339,3310}
tNpcGossip[18995]["Option331"] = tCoatWarehouse_Sale_Text[18995]["Option331"]
tNpcGossip[18995]["OptionFunc331"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>181715"
tNpcGossip[18995]["Option332"] = tCoatWarehouse_Sale_Text[18995]["Option332"]
tNpcGossip[18995]["OptionFunc332"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>181705"
tNpcGossip[18995]["Option333"] = tCoatWarehouse_Sale_Text[18995]["Option333"]
tNpcGossip[18995]["OptionFunc333"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>182365"
tNpcGossip[18995]["Option334"] = tCoatWarehouse_Sale_Text[18995]["Option334"]
tNpcGossip[18995]["OptionFunc334"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>182345"
tNpcGossip[18995]["Option335"] = tCoatWarehouse_Sale_Text[18995]["Option335"]
tNpcGossip[18995]["OptionFunc335"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>181365"
tNpcGossip[18995]["Option336"] = tCoatWarehouse_Sale_Text[18995]["Option336"]
tNpcGossip[18995]["OptionFunc336"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>181925"
tNpcGossip[18995]["Option337"] = tCoatWarehouse_Sale_Text[18995]["Option337"]
tNpcGossip[18995]["OptionFunc337"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>181915"
tNpcGossip[18995]["Option338"] = tCoatWarehouse_Sale_Text[18995]["Option338"]
tNpcGossip[18995]["OptionFunc338"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>181905"
tNpcGossip[18995]["Option339"] = tCoatWarehouse_Sale_Text[18995]["Option339"]
tNpcGossip[18995]["OptionPoint339"] = "3-2"
tNpcGossip[18995]["Option3310"] = tCoatWarehouse_Sale_Text[18995]["Option3310"]
tNpcGossip[18995]["OptionPoint3310"] = "3-4"

tNpcGossip[18995]["Text3-4"] = {341}
tNpcGossip[18995]["Text341"] = tCoatWarehouse_Sale_Text[18995]["Text341"]
tNpcGossip[18995]["tOption3-4"] = {341,342,343,344,345,346,347,348,349,3410}
tNpcGossip[18995]["Option341"] = tCoatWarehouse_Sale_Text[18995]["Option341"]
tNpcGossip[18995]["OptionFunc341"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>181625"
tNpcGossip[18995]["Option342"] = tCoatWarehouse_Sale_Text[18995]["Option342"]
tNpcGossip[18995]["OptionFunc342"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>181615"
tNpcGossip[18995]["Option343"] = tCoatWarehouse_Sale_Text[18995]["Option343"]
tNpcGossip[18995]["OptionFunc343"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>181605"
tNpcGossip[18995]["Option344"] = tCoatWarehouse_Sale_Text[18995]["Option344"]
tNpcGossip[18995]["OptionFunc344"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>181385"
tNpcGossip[18995]["Option345"] = tCoatWarehouse_Sale_Text[18995]["Option345"]
tNpcGossip[18995]["OptionFunc345"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>183305"
tNpcGossip[18995]["Option346"] = tCoatWarehouse_Sale_Text[18995]["Option346"]
tNpcGossip[18995]["OptionFunc346"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>181375"
tNpcGossip[18995]["Option347"] = tCoatWarehouse_Sale_Text[18995]["Option347"]
tNpcGossip[18995]["OptionFunc347"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>182305"
tNpcGossip[18995]["Option348"] = tCoatWarehouse_Sale_Text[18995]["Option348"]
tNpcGossip[18995]["OptionFunc348"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>181395"
tNpcGossip[18995]["Option349"] = tCoatWarehouse_Sale_Text[18995]["Option349"]
tNpcGossip[18995]["OptionPoint349"] = "3-3"
tNpcGossip[18995]["Option3410"] = tCoatWarehouse_Sale_Text[18995]["Option3410"]
tNpcGossip[18995]["OptionPoint3410"] = "3-5"

tNpcGossip[18995]["Text3-5"] = {351}
tNpcGossip[18995]["Text351"] = tCoatWarehouse_Sale_Text[18995]["Text351"]
tNpcGossip[18995]["tOption3-5"] = {351,352,353,354,355}
tNpcGossip[18995]["Option351"] = tCoatWarehouse_Sale_Text[18995]["Option351"]
tNpcGossip[18995]["OptionFunc351"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>181325"
tNpcGossip[18995]["Option352"] = tCoatWarehouse_Sale_Text[18995]["Option352"]
tNpcGossip[18995]["OptionFunc352"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>181315"
tNpcGossip[18995]["Option353"] = tCoatWarehouse_Sale_Text[18995]["Option353"]
tNpcGossip[18995]["OptionFunc353"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>181305"
tNpcGossip[18995]["Option354"] = tCoatWarehouse_Sale_Text[18995]["Option354"]
tNpcGossip[18995]["OptionPoint354"] = "3-4"
tNpcGossip[18995]["Option355"] = tCoatWarehouse_Sale_Text[18995]["Option355"]

--已排序
tNpcGossip[18995]["Text4-1"] = {411}
tNpcGossip[18995]["Text411"] = tCoatWarehouse_Sale_Text[18995]["Text411"]
tNpcGossip[18995]["tOption4-1"] = {411,412,413,414,415,416,417,418,419,4110}
tNpcGossip[18995]["Option411"] = tCoatWarehouse_Sale_Text[18995]["Option411"]
tNpcGossip[18995]["OptionFunc411"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200016"
tNpcGossip[18995]["Option412"] = tCoatWarehouse_Sale_Text[18995]["Option412"]
tNpcGossip[18995]["OptionFunc412"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200126"
tNpcGossip[18995]["Option413"] = tCoatWarehouse_Sale_Text[18995]["Option413"]
tNpcGossip[18995]["OptionFunc413"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200121"
tNpcGossip[18995]["Option414"] = tCoatWarehouse_Sale_Text[18995]["Option414"]
tNpcGossip[18995]["OptionFunc414"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200120"
tNpcGossip[18995]["Option415"] = tCoatWarehouse_Sale_Text[18995]["Option415"]
tNpcGossip[18995]["OptionFunc415"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200015"
tNpcGossip[18995]["Option416"] = tCoatWarehouse_Sale_Text[18995]["Option416"]
tNpcGossip[18995]["OptionFunc416"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200122"
tNpcGossip[18995]["Option417"] = tCoatWarehouse_Sale_Text[18995]["Option417"]
tNpcGossip[18995]["OptionFunc417"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200019"
tNpcGossip[18995]["Option418"] = tCoatWarehouse_Sale_Text[18995]["Option418"]
tNpcGossip[18995]["OptionFunc418"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200004"
tNpcGossip[18995]["Option419"] = tCoatWarehouse_Sale_Text[18995]["Option419"]
tNpcGossip[18995]["OptionFunc419"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200125"
tNpcGossip[18995]["Option4110"] = tCoatWarehouse_Sale_Text[18995]["Option4110"]
tNpcGossip[18995]["OptionPoint4110"] = "4-2"

tNpcGossip[18995]["Text4-2"] = {421}
tNpcGossip[18995]["Text421"] = tCoatWarehouse_Sale_Text[18995]["Text421"]
tNpcGossip[18995]["tOption4-2"] = {422,423,424,425,426,427,428,429,4210}
tNpcGossip[18995]["Option422"] = tCoatWarehouse_Sale_Text[18995]["Option422"]
tNpcGossip[18995]["OptionFunc422"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200101"
tNpcGossip[18995]["Option423"] = tCoatWarehouse_Sale_Text[18995]["Option423"]
tNpcGossip[18995]["OptionFunc423"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200124"
tNpcGossip[18995]["Option424"] = tCoatWarehouse_Sale_Text[18995]["Option424"]
tNpcGossip[18995]["OptionFunc424"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200123"
tNpcGossip[18995]["Option425"] = tCoatWarehouse_Sale_Text[18995]["Option425"]
tNpcGossip[18995]["OptionFunc425"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200000"
tNpcGossip[18995]["Option426"] = tCoatWarehouse_Sale_Text[18995]["Option426"]
tNpcGossip[18995]["OptionFunc426"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200006"
tNpcGossip[18995]["Option427"] = tCoatWarehouse_Sale_Text[18995]["Option427"]
tNpcGossip[18995]["OptionFunc427"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200001"
tNpcGossip[18995]["Option428"] = tCoatWarehouse_Sale_Text[18995]["Option428"]
tNpcGossip[18995]["OptionFunc428"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200102"
tNpcGossip[18995]["Option429"] = tCoatWarehouse_Sale_Text[18995]["Option429"]
tNpcGossip[18995]["OptionFunc429"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200018"
tNpcGossip[18995]["Option4210"] = tCoatWarehouse_Sale_Text[18995]["Option4210"]
tNpcGossip[18995]["OptionPoint4210"] = "4-1"

-- tNpcGossip[18995]["Text4-3"] = {431}
-- tNpcGossip[18995]["Text431"] = tCoatWarehouse_Sale_Text[18995]["Text431"]
-- tNpcGossip[18995]["tOption4-3"] = {411,416,433,434}
-- tNpcGossip[18995]["Option431"] = tCoatWarehouse_Sale_Text[18995]["Option431"]
-- tNpcGossip[18995]["OptionFunc431"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200125"
-- tNpcGossip[18995]["Option432"] = tCoatWarehouse_Sale_Text[18995]["Option432"]
-- tNpcGossip[18995]["OptionFunc432"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200126"
-- tNpcGossip[18995]["Option433"] = tCoatWarehouse_Sale_Text[18995]["Option433"]
-- tNpcGossip[18995]["OptionPoint433"] = "4-2"
-- tNpcGossip[18995]["Option434"] = tCoatWarehouse_Sale_Text[18995]["Option434"]

--已排序
tNpcGossip[18995]["Text5-1"] = {511}
tNpcGossip[18995]["Text511"] = tCoatWarehouse_Sale_Text[18995]["Text511"]
tNpcGossip[18995]["tOption5-1"] = {511,512,513,514,515,516,517,518,519,5110}
tNpcGossip[18995]["Option511"] = tCoatWarehouse_Sale_Text[18995]["Option511"]
tNpcGossip[18995]["OptionFunc511"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>187455"
tNpcGossip[18995]["Option512"] = tCoatWarehouse_Sale_Text[18995]["Option512"]
tNpcGossip[18995]["OptionFunc512"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>187465"
tNpcGossip[18995]["Option513"] = tCoatWarehouse_Sale_Text[18995]["Option513"]
tNpcGossip[18995]["OptionFunc513"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>193105"
tNpcGossip[18995]["Option514"] = tCoatWarehouse_Sale_Text[18995]["Option514"]
tNpcGossip[18995]["OptionFunc514"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>192185"
tNpcGossip[18995]["Option515"] = tCoatWarehouse_Sale_Text[18995]["Option515"]
tNpcGossip[18995]["OptionFunc515"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>193300"
tNpcGossip[18995]["Option516"] = tCoatWarehouse_Sale_Text[18995]["Option516"]
tNpcGossip[18995]["OptionFunc516"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>183375"
tNpcGossip[18995]["Option517"] = tCoatWarehouse_Sale_Text[18995]["Option517"]
tNpcGossip[18995]["OptionFunc517"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>188295"
tNpcGossip[18995]["Option518"] = tCoatWarehouse_Sale_Text[18995]["Option518"]
tNpcGossip[18995]["OptionFunc518"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>181355"
tNpcGossip[18995]["Option519"] = tCoatWarehouse_Sale_Text[18995]["Option519"]
tNpcGossip[18995]["OptionFunc519"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>191405"
tNpcGossip[18995]["Option5110"] = tCoatWarehouse_Sale_Text[18995]["Option5110"]
tNpcGossip[18995]["OptionPoint5110"] = "5-2"

tNpcGossip[18995]["Text5-2"] = {521}
tNpcGossip[18995]["Text521"] = tCoatWarehouse_Sale_Text[18995]["Text521"]
tNpcGossip[18995]["tOption5-2"] = {521,522,523,524,525,526,527,528,529,5210}
tNpcGossip[18995]["Option521"] = tCoatWarehouse_Sale_Text[18995]["Option521"]
tNpcGossip[18995]["OptionFunc521"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>193085"
tNpcGossip[18995]["Option522"] = tCoatWarehouse_Sale_Text[18995]["Option522"]
tNpcGossip[18995]["OptionFunc522"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>183325"
tNpcGossip[18995]["Option523"] = tCoatWarehouse_Sale_Text[18995]["Option523"]
tNpcGossip[18995]["OptionFunc523"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>188155"
tNpcGossip[18995]["Option524"] = tCoatWarehouse_Sale_Text[18995]["Option524"]
tNpcGossip[18995]["OptionFunc524"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>184325"
tNpcGossip[18995]["Option525"] = tCoatWarehouse_Sale_Text[18995]["Option525"]
tNpcGossip[18995]["OptionFunc525"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>183425"
tNpcGossip[18995]["Option526"] = tCoatWarehouse_Sale_Text[18995]["Option526"]
tNpcGossip[18995]["OptionFunc526"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>184305"
tNpcGossip[18995]["Option527"] = tCoatWarehouse_Sale_Text[18995]["Option527"]
tNpcGossip[18995]["OptionFunc527"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>188335"
tNpcGossip[18995]["Option528"] = tCoatWarehouse_Sale_Text[18995]["Option528"]
tNpcGossip[18995]["OptionFunc528"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>183475"
tNpcGossip[18995]["Option529"] = tCoatWarehouse_Sale_Text[18995]["Option529"]
tNpcGossip[18995]["OptionPoint529"] = "5-1"
tNpcGossip[18995]["Option5210"] = tCoatWarehouse_Sale_Text[18995]["Option5210"]
tNpcGossip[18995]["OptionPoint5210"] = "5-3"

tNpcGossip[18995]["Text5-3"] = {531}
tNpcGossip[18995]["Text531"] = tCoatWarehouse_Sale_Text[18995]["Text531"]
tNpcGossip[18995]["tOption5-3"] = {531,532,533,534,535,536,537,538,539,5310}
tNpcGossip[18995]["Option531"] = tCoatWarehouse_Sale_Text[18995]["Option531"]
tNpcGossip[18995]["OptionFunc531"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>191305"
tNpcGossip[18995]["Option532"] = tCoatWarehouse_Sale_Text[18995]["Option532"]
tNpcGossip[18995]["OptionFunc532"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>193055"
tNpcGossip[18995]["Option533"] = tCoatWarehouse_Sale_Text[18995]["Option533"]
tNpcGossip[18995]["OptionFunc533"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>188545"
tNpcGossip[18995]["Option534"] = tCoatWarehouse_Sale_Text[18995]["Option534"]
tNpcGossip[18995]["OptionFunc534"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>188175"
tNpcGossip[18995]["Option535"] = tCoatWarehouse_Sale_Text[18995]["Option535"]
tNpcGossip[18995]["OptionFunc535"] ="CoatWarehouse_Sale_SplitTheCoat</N>18995</N>193075"
tNpcGossip[18995]["Option536"] = tCoatWarehouse_Sale_Text[18995]["Option536"]
tNpcGossip[18995]["OptionFunc536"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>193235"
tNpcGossip[18995]["Option537"] = tCoatWarehouse_Sale_Text[18995]["Option537"]
tNpcGossip[18995]["OptionFunc537"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>188165"
tNpcGossip[18995]["Option538"] = tCoatWarehouse_Sale_Text[18995]["Option538"]
tNpcGossip[18995]["OptionFunc538"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>187315"
tNpcGossip[18995]["Option539"] = tCoatWarehouse_Sale_Text[18995]["Option539"]
tNpcGossip[18995]["OptionPoint539"] = "5-2"
tNpcGossip[18995]["Option5310"] = tCoatWarehouse_Sale_Text[18995]["Option5310"]
tNpcGossip[18995]["OptionPoint5310"] = "5-4"

tNpcGossip[18995]["Text5-4"] = {541}
tNpcGossip[18995]["Text541"] = tCoatWarehouse_Sale_Text[18995]["Text541"]
tNpcGossip[18995]["tOption5-4"] = {541,542,543,544,545,546,547,548,549,5410}
tNpcGossip[18995]["Option541"] = tCoatWarehouse_Sale_Text[18995]["Option541"]
tNpcGossip[18995]["OptionFunc541"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>188345"
tNpcGossip[18995]["Option542"] = tCoatWarehouse_Sale_Text[18995]["Option542"]
tNpcGossip[18995]["OptionFunc542"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>183365"
tNpcGossip[18995]["Option543"] = tCoatWarehouse_Sale_Text[18995]["Option543"]
tNpcGossip[18995]["OptionFunc543"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>188255"
tNpcGossip[18995]["Option544"] = tCoatWarehouse_Sale_Text[18995]["Option544"]
tNpcGossip[18995]["OptionFunc544"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>184335"
tNpcGossip[18995]["Option545"] = tCoatWarehouse_Sale_Text[18995]["Option545"]
tNpcGossip[18995]["OptionFunc545"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>183335"
tNpcGossip[18995]["Option546"] = tCoatWarehouse_Sale_Text[18995]["Option546"]
tNpcGossip[18995]["OptionFunc546"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>183315"
tNpcGossip[18995]["Option547"] = tCoatWarehouse_Sale_Text[18995]["Option547"]
tNpcGossip[18995]["OptionFunc547"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>188665"
tNpcGossip[18995]["Option548"] = tCoatWarehouse_Sale_Text[18995]["Option548"]
tNpcGossip[18995]["OptionFunc548"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>184375"
tNpcGossip[18995]["Option549"] = tCoatWarehouse_Sale_Text[18995]["Option549"]
tNpcGossip[18995]["OptionPoint549"] = "5-3"
tNpcGossip[18995]["Option5410"] = tCoatWarehouse_Sale_Text[18995]["Option5410"]
tNpcGossip[18995]["OptionPoint5410"] = "5-5"

tNpcGossip[18995]["Text5-5"] = {551}
tNpcGossip[18995]["Text551"] = tCoatWarehouse_Sale_Text[18995]["Text551"]
tNpcGossip[18995]["tOption5-5"] = {551,552,555,556,553,554}
tNpcGossip[18995]["Option551"] = tCoatWarehouse_Sale_Text[18995]["Option551"]
tNpcGossip[18995]["OptionFunc551"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>187505"
tNpcGossip[18995]["Option552"] = tCoatWarehouse_Sale_Text[18995]["Option552"]
tNpcGossip[18995]["OptionFunc552"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>181335"
tNpcGossip[18995]["Option555"] = tCoatWarehouse_Sale_Text[18995]["Option555"]
tNpcGossip[18995]["OptionFunc555"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>193045"
tNpcGossip[18995]["Option556"] = tCoatWarehouse_Sale_Text[18995]["Option556"]
tNpcGossip[18995]["OptionFunc556"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>193065"
tNpcGossip[18995]["Option553"] = tCoatWarehouse_Sale_Text[18995]["Option553"]
tNpcGossip[18995]["OptionPoint553"] = "5-4"
tNpcGossip[18995]["Option554"] = tCoatWarehouse_Sale_Text[18995]["Option554"]

tNpcGossip[18995]["Text6-1"] = {611}
tNpcGossip[18995]["Text611"] = tCoatWarehouse_Sale_Text[18995]["Text611"]
tNpcGossip[18995]["tOption6-1"] = {611,612,613,614,615,616,617,618,619,6110}
tNpcGossip[18995]["Option611"] = tCoatWarehouse_Sale_Text[18995]["Option611"]
tNpcGossip[18995]["OptionFunc611"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200109"
tNpcGossip[18995]["Option612"] = tCoatWarehouse_Sale_Text[18995]["Option612"]
tNpcGossip[18995]["OptionFunc612"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200003"
tNpcGossip[18995]["Option613"] = tCoatWarehouse_Sale_Text[18995]["Option613"]
tNpcGossip[18995]["OptionFunc613"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200538"
tNpcGossip[18995]["Option614"] = tCoatWarehouse_Sale_Text[18995]["Option614"]
tNpcGossip[18995]["OptionFunc614"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200106"
tNpcGossip[18995]["Option615"] = tCoatWarehouse_Sale_Text[18995]["Option615"]
tNpcGossip[18995]["OptionFunc615"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200005"
tNpcGossip[18995]["Option616"] = tCoatWarehouse_Sale_Text[18995]["Option616"]
tNpcGossip[18995]["OptionFunc616"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200103"
tNpcGossip[18995]["Option617"] = tCoatWarehouse_Sale_Text[18995]["Option617"]
tNpcGossip[18995]["OptionFunc617"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200007"
tNpcGossip[18995]["Option618"] = tCoatWarehouse_Sale_Text[18995]["Option618"]
tNpcGossip[18995]["OptionFunc618"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200104"
tNpcGossip[18995]["Option619"] = tCoatWarehouse_Sale_Text[18995]["Option619"]
tNpcGossip[18995]["OptionFunc619"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200105"
tNpcGossip[18995]["Option6110"] = tCoatWarehouse_Sale_Text[18995]["Option6110"]
tNpcGossip[18995]["OptionPoint6110"] = "6-2"

tNpcGossip[18995]["Text6-2"] = {621}
tNpcGossip[18995]["Text621"] = tCoatWarehouse_Sale_Text[18995]["Text621"]
tNpcGossip[18995]["tOption6-2"] = {621,622,623,624,625,626,627,628}
tNpcGossip[18995]["Option621"] = tCoatWarehouse_Sale_Text[18995]["Option621"]
tNpcGossip[18995]["OptionFunc621"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200008"
tNpcGossip[18995]["Option622"] = tCoatWarehouse_Sale_Text[18995]["Option622"]
tNpcGossip[18995]["OptionFunc622"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200110"
tNpcGossip[18995]["Option623"] = tCoatWarehouse_Sale_Text[18995]["Option623"]
tNpcGossip[18995]["OptionFunc623"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200002"
tNpcGossip[18995]["Option624"] = tCoatWarehouse_Sale_Text[18995]["Option624"]
tNpcGossip[18995]["OptionFunc624"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200012"
tNpcGossip[18995]["Option625"] = tCoatWarehouse_Sale_Text[18995]["Option625"]
tNpcGossip[18995]["OptionFunc625"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200431"
tNpcGossip[18995]["Option626"] = tCoatWarehouse_Sale_Text[18995]["Option626"]
tNpcGossip[18995]["OptionFunc626"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200323"
tNpcGossip[18995]["Option627"] = tCoatWarehouse_Sale_Text[18995]["Option627"]
tNpcGossip[18995]["OptionPoint627"] = "6-1"
tNpcGossip[18995]["Option628"] = tCoatWarehouse_Sale_Text[18995]["Option628"]


--已排序
tNpcGossip[18995]["Text7-1"] = {711}
tNpcGossip[18995]["Text711"] = tCoatWarehouse_Sale_Text[18995]["Text711"]
tNpcGossip[18995]["tOption7-1"] = {711,712,713,714,715,716,717,718,719,7110}
tNpcGossip[18995]["Option711"] = tCoatWarehouse_Sale_Text[18995]["Option711"]
tNpcGossip[18995]["OptionFunc711"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>192675"
tNpcGossip[18995]["Option712"] = tCoatWarehouse_Sale_Text[18995]["Option712"]
tNpcGossip[18995]["OptionFunc712"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>184345"
tNpcGossip[18995]["Option713"] = tCoatWarehouse_Sale_Text[18995]["Option713"]
tNpcGossip[18995]["OptionFunc713"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>187475"
tNpcGossip[18995]["Option714"] = tCoatWarehouse_Sale_Text[18995]["Option714"]
tNpcGossip[18995]["OptionFunc714"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>192685"
tNpcGossip[18995]["Option715"] = tCoatWarehouse_Sale_Text[18995]["Option715"]
tNpcGossip[18995]["OptionFunc715"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>183485"
tNpcGossip[18995]["Option716"] = tCoatWarehouse_Sale_Text[18995]["Option716"]
tNpcGossip[18995]["OptionFunc716"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>184315"
tNpcGossip[18995]["Option717"] = tCoatWarehouse_Sale_Text[18995]["Option717"]
tNpcGossip[18995]["OptionFunc717"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>183465"
tNpcGossip[18995]["Option718"] = tCoatWarehouse_Sale_Text[18995]["Option718"]
tNpcGossip[18995]["OptionFunc718"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>189095"
tNpcGossip[18995]["Option719"] = tCoatWarehouse_Sale_Text[18995]["Option719"]
tNpcGossip[18995]["OptionFunc719"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>192565"
tNpcGossip[18995]["Option7110"] = tCoatWarehouse_Sale_Text[18995]["Option7110"]
tNpcGossip[18995]["OptionPoint7110"] = "7-2"

tNpcGossip[18995]["Text7-2"] = {721}
tNpcGossip[18995]["Text721"] = tCoatWarehouse_Sale_Text[18995]["Text721"]
tNpcGossip[18995]["tOption7-2"] = {721,722,723,724,725,726,727,728,729,7210}
tNpcGossip[18995]["Option721"] = tCoatWarehouse_Sale_Text[18995]["Option721"]
tNpcGossip[18995]["OptionFunc721"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>192395"
tNpcGossip[18995]["Option722"] = tCoatWarehouse_Sale_Text[18995]["Option722"]
tNpcGossip[18995]["OptionFunc722"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>188285"
tNpcGossip[18995]["Option723"] = tCoatWarehouse_Sale_Text[18995]["Option723"]
tNpcGossip[18995]["OptionFunc723"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>183395"
tNpcGossip[18995]["Option724"] = tCoatWarehouse_Sale_Text[18995]["Option724"]
tNpcGossip[18995]["OptionFunc724"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>183385"
tNpcGossip[18995]["Option725"] = tCoatWarehouse_Sale_Text[18995]["Option725"]
tNpcGossip[18995]["OptionFunc725"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>188575"
tNpcGossip[18995]["Option726"] = tCoatWarehouse_Sale_Text[18995]["Option726"]
tNpcGossip[18995]["OptionFunc726"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>184355"
tNpcGossip[18995]["Option727"] = tCoatWarehouse_Sale_Text[18995]["Option727"]
tNpcGossip[18995]["OptionFunc727"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>192300"
tNpcGossip[18995]["Option728"] = tCoatWarehouse_Sale_Text[18995]["Option728"]
tNpcGossip[18995]["OptionFunc728"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>192345"
tNpcGossip[18995]["Option729"] = tCoatWarehouse_Sale_Text[18995]["Option729"]
tNpcGossip[18995]["OptionPoint729"] = "7-1"
tNpcGossip[18995]["Option7210"] = tCoatWarehouse_Sale_Text[18995]["Option7210"]
tNpcGossip[18995]["OptionPoint7210"] = "7-3"

tNpcGossip[18995]["Text7-3"] = {731}
tNpcGossip[18995]["Text731"] = tCoatWarehouse_Sale_Text[18995]["Text731"]
tNpcGossip[18995]["tOption7-3"] = {731,732,733,734,735,736,737,738,739,7310}
tNpcGossip[18995]["Option731"] = tCoatWarehouse_Sale_Text[18995]["Option731"]
tNpcGossip[18995]["OptionFunc731"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>193515"
tNpcGossip[18995]["Option732"] = tCoatWarehouse_Sale_Text[18995]["Option732"]
tNpcGossip[18995]["OptionFunc732"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>192655"
tNpcGossip[18995]["Option733"] = tCoatWarehouse_Sale_Text[18995]["Option733"]
tNpcGossip[18995]["OptionFunc733"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>188905"
tNpcGossip[18995]["Option734"] = tCoatWarehouse_Sale_Text[18995]["Option734"]
tNpcGossip[18995]["OptionFunc734"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>189105"
tNpcGossip[18995]["Option735"] = tCoatWarehouse_Sale_Text[18995]["Option735"]
tNpcGossip[18995]["OptionFunc735"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>187605"
tNpcGossip[18995]["Option736"] = tCoatWarehouse_Sale_Text[18995]["Option736"]
tNpcGossip[18995]["OptionFunc736"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>189055"
tNpcGossip[18995]["Option737"] = tCoatWarehouse_Sale_Text[18995]["Option737"]
tNpcGossip[18995]["OptionFunc737"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>194300"
tNpcGossip[18995]["Option738"] = tCoatWarehouse_Sale_Text[18995]["Option738"]
tNpcGossip[18995]["OptionFunc738"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>184385"
tNpcGossip[18995]["Option739"] = tCoatWarehouse_Sale_Text[18995]["Option739"]
tNpcGossip[18995]["OptionPoint739"] = "7-2"
tNpcGossip[18995]["Option7310"] = tCoatWarehouse_Sale_Text[18995]["Option7310"]
tNpcGossip[18995]["OptionPoint7310"] = "7-4"

tNpcGossip[18995]["Text7-4"] = {741}
tNpcGossip[18995]["Text741"] = tCoatWarehouse_Sale_Text[18995]["Text741"]
tNpcGossip[18995]["tOption7-4"] = {741,742,743,744,745,748,749,750,746,747}
tNpcGossip[18995]["Option741"] = tCoatWarehouse_Sale_Text[18995]["Option741"]
tNpcGossip[18995]["OptionFunc741"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>192665"
tNpcGossip[18995]["Option742"] = tCoatWarehouse_Sale_Text[18995]["Option742"]
tNpcGossip[18995]["OptionFunc742"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>183345"
tNpcGossip[18995]["Option743"] = tCoatWarehouse_Sale_Text[18995]["Option743"]
tNpcGossip[18995]["OptionFunc743"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>192575"
tNpcGossip[18995]["Option744"] = tCoatWarehouse_Sale_Text[18995]["Option744"]
tNpcGossip[18995]["OptionFunc744"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>184365"
tNpcGossip[18995]["Option745"] = tCoatWarehouse_Sale_Text[18995]["Option745"]
tNpcGossip[18995]["OptionFunc745"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>192555"
tNpcGossip[18995]["Option748"] = tCoatWarehouse_Sale_Text[18995]["Option748"]
tNpcGossip[18995]["OptionFunc748"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>189155"
tNpcGossip[18995]["Option749"] = tCoatWarehouse_Sale_Text[18995]["Option749"]
tNpcGossip[18995]["OptionFunc749"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>193025"
tNpcGossip[18995]["Option750"] = tCoatWarehouse_Sale_Text[18995]["Option750"]
tNpcGossip[18995]["OptionFunc750"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>193035"
tNpcGossip[18995]["Option746"] = tCoatWarehouse_Sale_Text[18995]["Option746"]
tNpcGossip[18995]["OptionPoint746"] = "7-3"
tNpcGossip[18995]["Option747"] = tCoatWarehouse_Sale_Text[18995]["Option747"]



--三星骑宠外套
--已排序
tNpcGossip[18995]["Text7-5"] = {751}
tNpcGossip[18995]["Text751"] = tCoatWarehouse_Sale_Text[18995]["Text751"]
tNpcGossip[18995]["tOption7-5"] = {751,752,753,754,755,756,757,758,759,7510}
tNpcGossip[18995]["Option751"] = tCoatWarehouse_Sale_Text[18995]["Option751"]
tNpcGossip[18995]["OptionFunc751"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200492"
tNpcGossip[18995]["Option752"] = tCoatWarehouse_Sale_Text[18995]["Option752"]
tNpcGossip[18995]["OptionFunc752"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200418"
tNpcGossip[18995]["Option753"] = tCoatWarehouse_Sale_Text[18995]["Option753"]
tNpcGossip[18995]["OptionFunc753"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200417"
tNpcGossip[18995]["Option754"] = tCoatWarehouse_Sale_Text[18995]["Option754"]
tNpcGossip[18995]["OptionFunc754"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200420"
tNpcGossip[18995]["Option755"] = tCoatWarehouse_Sale_Text[18995]["Option755"]
tNpcGossip[18995]["OptionFunc755"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200411"
tNpcGossip[18995]["Option756"] = tCoatWarehouse_Sale_Text[18995]["Option756"]
tNpcGossip[18995]["OptionFunc756"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200107"
tNpcGossip[18995]["Option757"] = tCoatWarehouse_Sale_Text[18995]["Option757"]
tNpcGossip[18995]["OptionFunc757"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200010"
tNpcGossip[18995]["Option758"] = tCoatWarehouse_Sale_Text[18995]["Option758"]
tNpcGossip[18995]["OptionFunc758"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200459"
tNpcGossip[18995]["Option759"] = tCoatWarehouse_Sale_Text[18995]["Option759"]
tNpcGossip[18995]["OptionFunc759"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200476"
tNpcGossip[18995]["Option7510"] = tCoatWarehouse_Sale_Text[18995]["Option7510"]
tNpcGossip[18995]["OptionPoint7510"] = "7-6"


tNpcGossip[18995]["Text7-6"] = {761}
tNpcGossip[18995]["Text761"] = tCoatWarehouse_Sale_Text[18995]["Text761"]
tNpcGossip[18995]["tOption7-6"] = {761,762,763,764,765,766,767,768,769,7610}
tNpcGossip[18995]["Option761"] = tCoatWarehouse_Sale_Text[18995]["Option761"]
tNpcGossip[18995]["OptionFunc761"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200499"
tNpcGossip[18995]["Option762"] = tCoatWarehouse_Sale_Text[18995]["Option762"]
tNpcGossip[18995]["OptionFunc762"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200528"
tNpcGossip[18995]["Option763"] = tCoatWarehouse_Sale_Text[18995]["Option763"]
tNpcGossip[18995]["OptionFunc763"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200474"
tNpcGossip[18995]["Option764"] = tCoatWarehouse_Sale_Text[18995]["Option764"]
tNpcGossip[18995]["OptionFunc764"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200009"
tNpcGossip[18995]["Option765"] = tCoatWarehouse_Sale_Text[18995]["Option765"]
tNpcGossip[18995]["OptionFunc765"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200562"
tNpcGossip[18995]["Option766"] = tCoatWarehouse_Sale_Text[18995]["Option766"]
tNpcGossip[18995]["OptionFunc766"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200413"
tNpcGossip[18995]["Option767"] = tCoatWarehouse_Sale_Text[18995]["Option767"]
tNpcGossip[18995]["OptionFunc767"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200487"
tNpcGossip[18995]["Option768"] = tCoatWarehouse_Sale_Text[18995]["Option768"]
tNpcGossip[18995]["OptionFunc768"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200444"
tNpcGossip[18995]["Option769"] = tCoatWarehouse_Sale_Text[18995]["Option769"]
tNpcGossip[18995]["OptionPoint769"] = "7-5"
tNpcGossip[18995]["Option7610"] = tCoatWarehouse_Sale_Text[18995]["Option7610"]
tNpcGossip[18995]["OptionPoint7610"] = "7-7"



tNpcGossip[18995]["Text7-7"] = {771}
tNpcGossip[18995]["Text771"] = tCoatWarehouse_Sale_Text[18995]["Text771"]
tNpcGossip[18995]["tOption7-7"] = {771,772,773,774,775,776,777,778,779,7710}
tNpcGossip[18995]["Option771"] = tCoatWarehouse_Sale_Text[18995]["Option771"]
tNpcGossip[18995]["OptionFunc771"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200108"
tNpcGossip[18995]["Option772"] = tCoatWarehouse_Sale_Text[18995]["Option772"]
tNpcGossip[18995]["OptionFunc772"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200407"
tNpcGossip[18995]["Option773"] = tCoatWarehouse_Sale_Text[18995]["Option773"]
tNpcGossip[18995]["OptionFunc773"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200514"
tNpcGossip[18995]["Option774"] = tCoatWarehouse_Sale_Text[18995]["Option774"]
tNpcGossip[18995]["OptionFunc774"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200433"
tNpcGossip[18995]["Option775"] = tCoatWarehouse_Sale_Text[18995]["Option775"]
tNpcGossip[18995]["OptionFunc775"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200438"
tNpcGossip[18995]["Option776"] = tCoatWarehouse_Sale_Text[18995]["Option776"]
tNpcGossip[18995]["OptionFunc776"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200415"
tNpcGossip[18995]["Option777"] = tCoatWarehouse_Sale_Text[18995]["Option777"]
tNpcGossip[18995]["OptionFunc777"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200426"
tNpcGossip[18995]["Option778"] = tCoatWarehouse_Sale_Text[18995]["Option778"]
tNpcGossip[18995]["OptionFunc778"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200414"
tNpcGossip[18995]["Option779"] = tCoatWarehouse_Sale_Text[18995]["Option779"]
tNpcGossip[18995]["OptionPoint779"] = "7-6"
tNpcGossip[18995]["Option7710"] = tCoatWarehouse_Sale_Text[18995]["Option7710"]
tNpcGossip[18995]["OptionPoint7710"] = "7-8"

tNpcGossip[18995]["Text7-8"] = {781}
tNpcGossip[18995]["Text781"] = tCoatWarehouse_Sale_Text[18995]["Text781"]
tNpcGossip[18995]["tOption7-8"] = {781,782,783,784,785,786,787,788,789,7810}
tNpcGossip[18995]["Option781"] = tCoatWarehouse_Sale_Text[18995]["Option781"]
tNpcGossip[18995]["OptionFunc781"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200421"
tNpcGossip[18995]["Option782"] = tCoatWarehouse_Sale_Text[18995]["Option782"]
tNpcGossip[18995]["OptionFunc782"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200488"
tNpcGossip[18995]["Option783"] = tCoatWarehouse_Sale_Text[18995]["Option783"]
tNpcGossip[18995]["OptionFunc783"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200412"
tNpcGossip[18995]["Option784"] = tCoatWarehouse_Sale_Text[18995]["Option784"]
tNpcGossip[18995]["OptionFunc784"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200481"
tNpcGossip[18995]["Option785"] = tCoatWarehouse_Sale_Text[18995]["Option785"]
tNpcGossip[18995]["OptionFunc785"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200490"
tNpcGossip[18995]["Option786"] = tCoatWarehouse_Sale_Text[18995]["Option786"]
tNpcGossip[18995]["OptionFunc786"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200493"
tNpcGossip[18995]["Option787"] = tCoatWarehouse_Sale_Text[18995]["Option787"]
tNpcGossip[18995]["OptionFunc787"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200403"
tNpcGossip[18995]["Option788"] = tCoatWarehouse_Sale_Text[18995]["Option788"]
tNpcGossip[18995]["OptionFunc788"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200443"
tNpcGossip[18995]["Option789"] = tCoatWarehouse_Sale_Text[18995]["Option789"]
tNpcGossip[18995]["OptionPoint789"] = "7-7"
tNpcGossip[18995]["Option7810"] = tCoatWarehouse_Sale_Text[18995]["Option7810"]
tNpcGossip[18995]["OptionPoint7810"] = "7-9"

tNpcGossip[18995]["Text7-9"] = {791}
tNpcGossip[18995]["Text791"] = tCoatWarehouse_Sale_Text[18995]["Text791"]
tNpcGossip[18995]["tOption7-9"] = {791,792,795,796,797,798,793,794}
tNpcGossip[18995]["Option791"] = tCoatWarehouse_Sale_Text[18995]["Option791"]
tNpcGossip[18995]["OptionFunc791"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200503"
tNpcGossip[18995]["Option792"] = tCoatWarehouse_Sale_Text[18995]["Option792"]
tNpcGossip[18995]["OptionFunc792"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200491"
tNpcGossip[18995]["Option793"] = tCoatWarehouse_Sale_Text[18995]["Option793"]
tNpcGossip[18995]["OptionPoint793"] = "7-8"
tNpcGossip[18995]["Option794"] = tCoatWarehouse_Sale_Text[18995]["Option794"]
tNpcGossip[18995]["Option795"] = tCoatWarehouse_Sale_Text[18995]["Option795"]
tNpcGossip[18995]["OptionFunc795"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200595"
tNpcGossip[18995]["Option796"] = tCoatWarehouse_Sale_Text[18995]["Option796"]
tNpcGossip[18995]["OptionFunc796"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200527"
tNpcGossip[18995]["Option797"] = tCoatWarehouse_Sale_Text[18995]["Option797"]
tNpcGossip[18995]["OptionFunc797"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200570"
tNpcGossip[18995]["Option798"] = tCoatWarehouse_Sale_Text[18995]["Option798"]
tNpcGossip[18995]["OptionFunc798"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200571"


tNpcGossip[18995]["Text8-1"] = {811}
tNpcGossip[18995]["Text811"] = tCoatWarehouse_Sale_Text[18995]["Text811"]
tNpcGossip[18995]["tOption8-1"] = {811,812,813,814,815,816,817,819,8110,8111,8112,8113,8114,8115,8116,8117,8118,8119,8120,8121,8122,8123,8124,8125,818}
tNpcGossip[18995]["Option811"] = tCoatWarehouse_Sale_Text[18995]["Option811"]
tNpcGossip[18995]["OptionFunc811"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>195375"
tNpcGossip[18995]["Option812"] = tCoatWarehouse_Sale_Text[18995]["Option812"]
tNpcGossip[18995]["OptionFunc812"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>192695"
tNpcGossip[18995]["Option813"] = tCoatWarehouse_Sale_Text[18995]["Option813"]
tNpcGossip[18995]["OptionFunc813"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>189085"
tNpcGossip[18995]["Option814"] = tCoatWarehouse_Sale_Text[18995]["Option814"]
tNpcGossip[18995]["OptionFunc814"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>193195"
tNpcGossip[18995]["Option815"] = tCoatWarehouse_Sale_Text[18995]["Option815"]
tNpcGossip[18995]["OptionFunc815"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>187325"
tNpcGossip[18995]["Option816"] = tCoatWarehouse_Sale_Text[18995]["Option816"]
tNpcGossip[18995]["OptionFunc816"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>192615"
tNpcGossip[18995]["Option817"] = tCoatWarehouse_Sale_Text[18995]["Option817"]
tNpcGossip[18995]["OptionFunc817"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>193115"
tNpcGossip[18995]["Option818"] = tCoatWarehouse_Sale_Text[18995]["Option818"]
tNpcGossip[18995]["Option819"] = tCoatWarehouse_Sale_Text[18995]["Option819"]
tNpcGossip[18995]["OptionFunc819"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>194405"
tNpcGossip[18995]["Option8110"] = tCoatWarehouse_Sale_Text[18995]["Option8110"]
tNpcGossip[18995]["OptionFunc8110"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>187575"
tNpcGossip[18995]["Option8111"] = tCoatWarehouse_Sale_Text[18995]["Option8111"]
tNpcGossip[18995]["OptionFunc8111"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>188265"
tNpcGossip[18995]["Option8112"] = tCoatWarehouse_Sale_Text[18995]["Option8112"]
tNpcGossip[18995]["OptionFunc8112"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>188675"
tNpcGossip[18995]["Option8113"] = tCoatWarehouse_Sale_Text[18995]["Option8113"]
tNpcGossip[18995]["OptionFunc8113"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>188755"
tNpcGossip[18995]["Option8114"] = tCoatWarehouse_Sale_Text[18995]["Option8114"]
tNpcGossip[18995]["OptionFunc8114"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>189145"
tNpcGossip[18995]["Option8115"] = tCoatWarehouse_Sale_Text[18995]["Option8115"]
tNpcGossip[18995]["OptionFunc8115"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>192425"
-- Midsummer~Suit.取消拆解
tNpcGossip[18995]["Option8116"] = tCoatWarehouse_Sale_Text[18995]["Option8116"]
tNpcGossip[18995]["OptionFunc8116"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>192495"
-- tNpcGossip[18995]["OptionFunc8116"] = "CoatWarehouse_Sale_CancleSplit"
tNpcGossip[18995]["Option8117"] = tCoatWarehouse_Sale_Text[18995]["Option8117"]
tNpcGossip[18995]["OptionFunc8117"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>192525"
tNpcGossip[18995]["Option8118"] = tCoatWarehouse_Sale_Text[18995]["Option8118"]
tNpcGossip[18995]["OptionFunc8118"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>192625"
tNpcGossip[18995]["Option8119"] = tCoatWarehouse_Sale_Text[18995]["Option8119"]
tNpcGossip[18995]["OptionFunc8119"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>192635"
tNpcGossip[18995]["Option8120"] = tCoatWarehouse_Sale_Text[18995]["Option8120"]
tNpcGossip[18995]["OptionFunc8120"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>192311"
tNpcGossip[18995]["Option8121"] = tCoatWarehouse_Sale_Text[18995]["Option8121"]
tNpcGossip[18995]["OptionFunc8121"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>192785"
tNpcGossip[18995]["Option8122"] = tCoatWarehouse_Sale_Text[18995]["Option8122"]
tNpcGossip[18995]["OptionFunc8122"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>193295"
tNpcGossip[18995]["Option8123"] = tCoatWarehouse_Sale_Text[18995]["Option8123"]
tNpcGossip[18995]["OptionFunc8123"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>192605"
tNpcGossip[18995]["Option8124"] = tCoatWarehouse_Sale_Text[18995]["Option8124"]
tNpcGossip[18995]["OptionFunc8124"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>192465"
tNpcGossip[18995]["Option8125"] = tCoatWarehouse_Sale_Text[18995]["Option8125"]
tNpcGossip[18995]["OptionFunc8125"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>188495"

tNpcGossip[18995]["Text8-2"] = {821}
tNpcGossip[18995]["Text821"] = tCoatWarehouse_Sale_Text[18995]["Text821"]
tNpcGossip[18995]["tOption8-2"] = {821,822,823,825,826,827,828,829,8210,8211,824}
tNpcGossip[18995]["Option821"] = tCoatWarehouse_Sale_Text[18995]["Option821"]
tNpcGossip[18995]["OptionFunc821"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200500"
tNpcGossip[18995]["Option822"] = tCoatWarehouse_Sale_Text[18995]["Option822"]
tNpcGossip[18995]["OptionFunc822"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200495"
tNpcGossip[18995]["Option823"] = tCoatWarehouse_Sale_Text[18995]["Option823"]
tNpcGossip[18995]["OptionFunc823"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200539"
tNpcGossip[18995]["Option824"] = tCoatWarehouse_Sale_Text[18995]["Option824"]
tNpcGossip[18995]["Option825"] = tCoatWarehouse_Sale_Text[18995]["Option825"]
tNpcGossip[18995]["OptionFunc825"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200574"
tNpcGossip[18995]["Option826"] = tCoatWarehouse_Sale_Text[18995]["Option826"]
tNpcGossip[18995]["OptionFunc826"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200593"
tNpcGossip[18995]["Option827"] = tCoatWarehouse_Sale_Text[18995]["Option827"]
tNpcGossip[18995]["OptionFunc827"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200591"
tNpcGossip[18995]["Option828"] = tCoatWarehouse_Sale_Text[18995]["Option828"]
tNpcGossip[18995]["OptionFunc828"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200590"
tNpcGossip[18995]["Option829"] = tCoatWarehouse_Sale_Text[18995]["Option829"]
tNpcGossip[18995]["OptionFunc829"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200589"
tNpcGossip[18995]["Option8210"] = tCoatWarehouse_Sale_Text[18995]["Option8210"]
tNpcGossip[18995]["OptionFunc8210"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200549"
tNpcGossip[18995]["Option8211"] = tCoatWarehouse_Sale_Text[18995]["Option8211"]
tNpcGossip[18995]["OptionFunc8211"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200480"

tNpcGossip[18995]["Text9-1"] = {911}
tNpcGossip[18995]["Text911"] = tCoatWarehouse_Sale_Text[18995]["Text911"]
tNpcGossip[18995]["tOption9-1"] = {911,912,914,915,916,918,913}
tNpcGossip[18995]["Option911"] = tCoatWarehouse_Sale_Text[18995]["Option911"]
tNpcGossip[18995]["OptionFunc911"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>193445"
tNpcGossip[18995]["Option912"] = tCoatWarehouse_Sale_Text[18995]["Option912"]
tNpcGossip[18995]["OptionFunc912"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>188915"
tNpcGossip[18995]["Option913"] = tCoatWarehouse_Sale_Text[18995]["Option913"]
tNpcGossip[18995]["Option914"] = tCoatWarehouse_Sale_Text[18995]["Option914"]
tNpcGossip[18995]["OptionFunc914"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>193525"
tNpcGossip[18995]["Option915"] = tCoatWarehouse_Sale_Text[18995]["Option915"]
tNpcGossip[18995]["OptionFunc915"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>189135"
tNpcGossip[18995]["Option916"] = tCoatWarehouse_Sale_Text[18995]["Option916"]
tNpcGossip[18995]["OptionFunc916"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>189065"
tNpcGossip[18995]["Option918"] = tCoatWarehouse_Sale_Text[18995]["Option918"]
tNpcGossip[18995]["OptionFunc918"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>189675"

tNpcGossip[18995]["Text9-2"] = {921}
tNpcGossip[18995]["Text921"] = tCoatWarehouse_Sale_Text[18995]["Text921"]
tNpcGossip[18995]["tOption9-2"] = {921,922,923,925,926,927,928,929,9210,9211,9212,9213,9214,9215,9216,924}
tNpcGossip[18995]["Option921"] = tCoatWarehouse_Sale_Text[18995]["Option921"]
tNpcGossip[18995]["OptionFunc921"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200531"
tNpcGossip[18995]["Option922"] = tCoatWarehouse_Sale_Text[18995]["Option922"]
tNpcGossip[18995]["OptionFunc922"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200517"
tNpcGossip[18995]["Option923"] = tCoatWarehouse_Sale_Text[18995]["Option923"]
tNpcGossip[18995]["OptionFunc923"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200494"
tNpcGossip[18995]["Option924"] = tCoatWarehouse_Sale_Text[18995]["Option924"]
tNpcGossip[18995]["Option925"] = tCoatWarehouse_Sale_Text[18995]["Option925"]
tNpcGossip[18995]["OptionFunc925"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200596"
tNpcGossip[18995]["Option926"] = tCoatWarehouse_Sale_Text[18995]["Option926"]
tNpcGossip[18995]["OptionFunc926"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200537"
tNpcGossip[18995]["Option927"] = tCoatWarehouse_Sale_Text[18995]["Option927"]
tNpcGossip[18995]["OptionFunc927"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200572"
tNpcGossip[18995]["Option928"] = tCoatWarehouse_Sale_Text[18995]["Option928"]
tNpcGossip[18995]["OptionFunc928"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200573"
tNpcGossip[18995]["Option929"] = tCoatWarehouse_Sale_Text[18995]["Option929"]
tNpcGossip[18995]["OptionFunc929"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200540"
tNpcGossip[18995]["Option9210"] = tCoatWarehouse_Sale_Text[18995]["Option9210"]
tNpcGossip[18995]["OptionFunc9210"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200524"
tNpcGossip[18995]["Option9211"] = tCoatWarehouse_Sale_Text[18995]["Option9211"]
tNpcGossip[18995]["OptionFunc9211"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200482"
tNpcGossip[18995]["Option9212"] = tCoatWarehouse_Sale_Text[18995]["Option9212"]
tNpcGossip[18995]["OptionFunc9212"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200449"
tNpcGossip[18995]["Option9213"] = tCoatWarehouse_Sale_Text[18995]["Option9213"]
tNpcGossip[18995]["OptionFunc9213"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200544"
tNpcGossip[18995]["Option9214"] = tCoatWarehouse_Sale_Text[18995]["Option9214"]
tNpcGossip[18995]["OptionFunc9214"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200592"
tNpcGossip[18995]["Option9215"] = tCoatWarehouse_Sale_Text[18995]["Option9215"]
tNpcGossip[18995]["OptionFunc9215"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200559"
tNpcGossip[18995]["Option9216"] = tCoatWarehouse_Sale_Text[18995]["Option9216"]
tNpcGossip[18995]["OptionFunc9216"] = "CoatWarehouse_Sale_SplitTheCoat</N>18995</N>200560"

tNpcGossip[18995]["Text9-5"] = {951}
tNpcGossip[18995]["Text951"] = tCoatWarehouse_Sale_Text[18995]["Text951"]
tNpcGossip[18995]["tOption9-5"] = {951}
tNpcGossip[18995]["Option951"] = tCoatWarehouse_Sale_Text[18995]["Option951"]

tNpcGossip[18995]["Text9-6"] = {961}
tNpcGossip[18995]["Text961"] = tCoatWarehouse_Sale_Text[18995]["Text961"]
tNpcGossip[18995]["tOption9-6"] = {961}
tNpcGossip[18995]["Option961"] = tCoatWarehouse_Sale_Text[18995]["Option961"]

tNpcGossip[18995]["Text9-7"] = {971}
tNpcGossip[18995]["Text971"] = tCoatWarehouse_Sale_Text[18995]["Text971"]
tNpcGossip[18995]["tOption9-7"] = {971,972}
tNpcGossip[18995]["Option971"] = tCoatWarehouse_Sale_Text[18995]["Option971"]
tNpcGossip[18995]["OptionFunc971"] = ""
tNpcGossip[18995]["Option972"] = tCoatWarehouse_Sale_Text[18995]["Option972"]

--素衣阁
tNpcFace[3937] = 417
tNpcGossip[18996] = tNpcGossip[18996] or DefaultNpc:new{}
tNpcGossip[18996]["OptionHidden"] = 1

--活动时间外
tNpcGossip[18996]["Text1-1"] = {111}
tNpcGossip[18996]["Text111"] = tCoatWarehouse_Sale_Text[18996]["Text111"]
tNpcGossip[18996]["tOption1-1"] = {111}
tNpcGossip[18996]["ChkFunc1-1"] = function()
	return not Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"])
end

tNpcGossip[18996]["Option111"] = tCoatWarehouse_Sale_Text[18996]["Option111"]

--活动时间内
tNpcGossip[18996]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[18996]["Text121"] = tCoatWarehouse_Sale_Text[18996]["Text121"]
tNpcGossip[18996]["Text122"] = tCoatWarehouse_Sale_Text[18996]["Text122"]
tNpcGossip[18996]["Text123"] = tCoatWarehouse_Sale_Text[18996]["Text123"]
tNpcGossip[18996]["Text124"] = tCoatWarehouse_Sale_Text[18996]["Text124"]
tNpcGossip[18996]["Text125"] = tCoatWarehouse_Sale_Text[18996]["Text125"]
tNpcGossip[18996]["tOption1-2"] = {121,122,123}
tNpcGossip[18996]["ChkFunc1-2"] = function()
	-- return User_JudgeLevelAndMetempsychosis(tCoatWarehouse_Sale_Const["Level"],tCoatWarehouse_Sale_Const["Mete"])
	--改为无等级限制
	return true
end

tNpcGossip[18996]["Option121"] = tCoatWarehouse_Sale_Text[18996]["Option121"]
tNpcGossip[18996]["OptionFunc121"] = "CoatWarehouse_Sale_UseOneJade</N>18996"
tNpcGossip[18996]["Option122"] = tCoatWarehouse_Sale_Text[18996]["Option122"]
tNpcGossip[18996]["OptionFunc122"] = "CoatWarehouse_Sale_UseThreeJade</N>18996"
tNpcGossip[18996]["Option123"] = tCoatWarehouse_Sale_Text[18996]["Option123"]
tNpcGossip[18996]["OptionPoint123"] = "6-1"



--活动时间内，等级不满足
tNpcGossip[18996]["Text1-3"] = {131}
tNpcGossip[18996]["Text131"] = tCoatWarehouse_Sale_Text[18996]["Text131"]
tNpcGossip[18996]["tOption1-3"] = {131}
tNpcGossip[18996]["Option131"] = tCoatWarehouse_Sale_Text[18996]["Option131"]

--使用1个岫山玉入阁->岫山玉数量不足
tNpcGossip[18996]["Text2-1"] = {211}
tNpcGossip[18996]["Text211"] = tCoatWarehouse_Sale_Text[18996]["Text211"]
tNpcGossip[18996]["tOption2-1"] = {211}
tNpcGossip[18996]["Option211"] = tCoatWarehouse_Sale_Text[18996]["Option211"]
tNpcGossip[18996]["OptionFunc211"] = "CoatWarehouse_Sale_UseEmoney</N>18996"

--使用1个岫山玉入阁->背包空间满
tNpcGossip[18996]["Text2-2"] = {221}
tNpcGossip[18996]["Text221"] = tCoatWarehouse_Sale_Text[18996]["Text221"]
tNpcGossip[18996]["tOption2-2"] = {221}
tNpcGossip[18996]["Option221"] = tCoatWarehouse_Sale_Text[18996]["Option221"]

--使用1个岫山玉入阁->成功
tNpcGossip[18996]["Text2-3"] = {231,232,233,234,235,236}
tNpcGossip[18996]["Text231"] = tCoatWarehouse_Sale_Text[18996]["Text231"]
tNpcGossip[18996]["Text232"] = tCoatWarehouse_Sale_Text[18996]["Text232"]
tNpcGossip[18996]["Text233"] = tCoatWarehouse_Sale_Text[18996]["Text233"]
tNpcGossip[18996]["Text234"] = tCoatWarehouse_Sale_Text[18996]["Text234"]
tNpcGossip[18996]["Text235"] = tCoatWarehouse_Sale_Text[18996]["Text235"]
tNpcGossip[18996]["Text236"] = tCoatWarehouse_Sale_Text[18996]["Text236"]
tNpcGossip[18996]["tOption2-3"] = {231,232}
tNpcGossip[18996]["Option231"] = tCoatWarehouse_Sale_Text[18996]["Option231"]
tNpcGossip[18996]["OptionFunc231"] = "CoatWarehouse_Sale_DirectReceive</N>18996"
tNpcGossip[18996]["Option232"] = tCoatWarehouse_Sale_Text[18996]["Option232"]
tNpcGossip[18996]["OptionPoint232"] = "3-1"
tNpcGossip[18996]["OptionChkFunc232"] = function()
	return CoatWarehouse_Sale_CtlShowSplit(18996)
end
tNpcGossip[18996]["Option233"] = tCoatWarehouse_Sale_Text[18996]["Option233"]
tNpcGossip[18996]["ChkFunc2-3"] = function()
	return CoatWarehouse_Sale_ResetText23(18996)
end

--使用N点天石入阁->天石不足
tNpcGossip[18996]["Text2-4"] = {241}
tNpcGossip[18996]["Text241"] = tCoatWarehouse_Sale_Text[18996]["Text241"]
tNpcGossip[18996]["tOption2-4"] = {241}
tNpcGossip[18996]["Option241"] = tCoatWarehouse_Sale_Text[18996]["Option241"]

--使用N点天石入阁->成功，二次确认
tNpcGossip[18996]["Text2-5"] = {251}
tNpcGossip[18996]["Text251"] = tCoatWarehouse_Sale_Text[18996]["Text251"]
tNpcGossip[18996]["tOption2-5"] = {251,252}
tNpcGossip[18996]["Option251"] = tCoatWarehouse_Sale_Text[18996]["Option251"]
tNpcGossip[18996]["OptionFunc251"] = "CoatWarehouse_Sale_ConfirmUseEmoney</N>18996"
tNpcGossip[18996]["Option252"] = tCoatWarehouse_Sale_Text[18996]["Option252"]

--我想要入阁3次
tNpcGossip[18996]["Text2-6"] = {261}
tNpcGossip[18996]["Text261"] = tCoatWarehouse_Sale_Text[18996]["Text261"]
tNpcGossip[18996]["tOption2-6"] = {261,262,263,264}
tNpcGossip[18996]["Option261"] = tCoatWarehouse_Sale_Text[18996]["Option261"]
tNpcGossip[18996]["OptionFunc261"] = "CoatWarehouse_Sale_UseThreeJade</N>18996"
tNpcGossip[18996]["Option262"] = tCoatWarehouse_Sale_Text[18996]["Option262"]
tNpcGossip[18996]["OptionFunc262"] = "CoatWarehouse_Sale_UseTripleEMoney</N>18996"
tNpcGossip[18996]["Option263"] = tCoatWarehouse_Sale_Text[18996]["Option263"]
tNpcGossip[18996]["OptionPoint263"] = "1-2"
tNpcGossip[18996]["Option264"] = tCoatWarehouse_Sale_Text[18996]["Option264"]

----使用1个岫山玉入阁->成功->我要拆解
tNpcGossip[18996]["Text3-1"] = {311,312,313,314,315}
tNpcGossip[18996]["Text311"] = tCoatWarehouse_Sale_Text[18996]["Text311"]
tNpcGossip[18996]["Text312"] = tCoatWarehouse_Sale_Text[18996]["Text312"]
tNpcGossip[18996]["Text313"] = tCoatWarehouse_Sale_Text[18996]["Text313"]
tNpcGossip[18996]["Text314"] = tCoatWarehouse_Sale_Text[18996]["Text314"]
tNpcGossip[18996]["Text315"] = tCoatWarehouse_Sale_Text[18996]["Text315"]
tNpcGossip[18996]["tOption3-1"] = {311,312}
tNpcGossip[18996]["Option311"] = tCoatWarehouse_Sale_Text[18996]["Option311"]
tNpcGossip[18996]["OptionFunc311"] = "CoatWarehouse_Sale_ConfirmToSplit</N>18996"
tNpcGossip[18996]["Option312"] = tCoatWarehouse_Sale_Text[18996]["Option312"]
tNpcGossip[18996]["ChkFunc3-1"] = function()
	return CoatWarehouse_Sale_ResetText31(18996)
end


--我想要入阁3次->使用3个岫山玉入阁->岫山玉数量不足
tNpcGossip[18996]["Text3-2"] = {321}
tNpcGossip[18996]["Text321"] = tCoatWarehouse_Sale_Text[18996]["Text321"]
tNpcGossip[18996]["tOption3-2"] = {321}
tNpcGossip[18996]["Option321"] = tCoatWarehouse_Sale_Text[18996]["Option321"]
tNpcGossip[18996]["OptionFunc321"] = "CoatWarehouse_Sale_UseTripleEMoney</N>18996"

--我想要入阁3次->使用3个岫山玉入阁->背包空间满
tNpcGossip[18996]["Text3-3"] = {331}
tNpcGossip[18996]["Text331"] = tCoatWarehouse_Sale_Text[18996]["Text331"]
tNpcGossip[18996]["tOption3-3"] = {331}
tNpcGossip[18996]["Option331"] = tCoatWarehouse_Sale_Text[18996]["Option331"]

tNpcGossip[18996]["Text3-4"] = {341,342,343,344,345,346,347,348}
tNpcGossip[18996]["Text341"] = tCoatWarehouse_Sale_Text[18996]["Text341"]
tNpcGossip[18996]["Text342"] = tCoatWarehouse_Sale_Text[18996]["Text342"]
tNpcGossip[18996]["Text343"] = tCoatWarehouse_Sale_Text[18996]["Text343"]
tNpcGossip[18996]["Text344"] = tCoatWarehouse_Sale_Text[18996]["Text344"]
tNpcGossip[18996]["Text345"] = tCoatWarehouse_Sale_Text[18996]["Text345"]
tNpcGossip[18996]["Text346"] = tCoatWarehouse_Sale_Text[18996]["Text346"]
tNpcGossip[18996]["Text347"] = tCoatWarehouse_Sale_Text[18996]["Text347"]
tNpcGossip[18996]["Text348"] = tCoatWarehouse_Sale_Text[18996]["Text348"]
tNpcGossip[18996]["tOption3-4"] = {341,342,343}
tNpcGossip[18996]["Option341"] = tCoatWarehouse_Sale_Text[18996]["Option341"]
tNpcGossip[18996]["OptionFunc341"] = "CoatWarehouse_Sale_AllReceive</N>18996"
tNpcGossip[18996]["Option342"] = tCoatWarehouse_Sale_Text[18996]["Option342"]
tNpcGossip[18996]["OptionFunc342"] = "CoatWarehouse_Sale_OneKeyToSplit</N>18996"
tNpcGossip[18996]["Option343"] = tCoatWarehouse_Sale_Text[18996]["Option343"]
tNpcGossip[18996]["OptionPoint343"] = "4-3"
tNpcGossip[18996]["Option344"] = tCoatWarehouse_Sale_Text[18996]["Option344"]
tNpcGossip[18996]["ChkFunc3-4"] = function()
	return CoatWarehouse_Sale_ResetText34(18996)
end

--使用天石二次确认
tNpcGossip[18996]["Text3-5"] = {351}
tNpcGossip[18996]["Text351"] = tCoatWarehouse_Sale_Text[18996]["Text351"]
tNpcGossip[18996]["tOption3-5"] = {351,352}
tNpcGossip[18996]["Option351"] = tCoatWarehouse_Sale_Text[18996]["Option351"]
tNpcGossip[18996]["OptionFunc351"] = "CoatWarehouse_Sale_ConfirmUseTripleEMoney</N>18996"
tNpcGossip[18996]["Option352"] = tCoatWarehouse_Sale_Text[18996]["Option352"]


----使用1个岫山玉入阁->成功->我要拆解->失败，背包满
tNpcGossip[18996]["Text4-1"] = {411}
tNpcGossip[18996]["Text411"] = tCoatWarehouse_Sale_Text[18996]["Text411"]
tNpcGossip[18996]["tOption4-1"] = {411}
tNpcGossip[18996]["Option411"] = tCoatWarehouse_Sale_Text[18996]["Option411"]

--使用3个岫山玉入阁->成功->一键拆解
tNpcGossip[18996]["Text4-2"] = {421,422}
tNpcGossip[18996]["Text421"] = tCoatWarehouse_Sale_Text[18996]["Text421"]
tNpcGossip[18996]["Text422"] = tCoatWarehouse_Sale_Text[18996]["Text422"]
tNpcGossip[18996]["tOption4-2"] = {421,422,423}
tNpcGossip[18996]["Option421"] = tCoatWarehouse_Sale_Text[18996]["Option421"]
tNpcGossip[18996]["OptionFunc421"] = "CoatWarehouse_Sale_OneKeyToSplitReal</N>18996"
tNpcGossip[18996]["Option422"] = tCoatWarehouse_Sale_Text[18996]["Option422"]
tNpcGossip[18996]["OptionFunc422"] = "CoatWarehouse_Sale_ShieldTheConfirm</N>18996"
tNpcGossip[18996]["Option423"] = tCoatWarehouse_Sale_Text[18996]["Option423"]

tNpcGossip[18996]["Text4-3"] = {431}
tNpcGossip[18996]["Text431"] = tCoatWarehouse_Sale_Text[18996]["Text431"]
tNpcGossip[18996]["tOption4-3"] = {431,432}
tNpcGossip[18996]["Option431"] = tCoatWarehouse_Sale_Text[18996]["Option431"]
tNpcGossip[18996]["OptionFunc431"] = "CoatWarehouse_Sale_ReEnter</N>18996"
tNpcGossip[18996]["Option432"] = tCoatWarehouse_Sale_Text[18996]["Option432"]


--使用3个岫山玉入阁->成功->一键拆解
tNpcGossip[18996]["Text5-1"] = {511}
tNpcGossip[18996]["Text511"] = tCoatWarehouse_Sale_Text[18996]["Text511"]
tNpcGossip[18996]["tOption5-1"] = {511}
tNpcGossip[18996]["Option511"] = tCoatWarehouse_Sale_Text[18996]["Option511"]

tNpcGossip[18996]["Text6-1"] = {611}
tNpcGossip[18996]["Text611"] = tCoatWarehouse_Sale_Text[18996]["Text611"]
tNpcGossip[18996]["tOption6-1"] = {611,612,613,614,615,616}
tNpcGossip[18996]["Option611"] = tCoatWarehouse_Sale_Text[18996]["Option611"]
tNpcGossip[18996]["OptionPoint611"] = "6-2"
tNpcGossip[18996]["Option612"] = tCoatWarehouse_Sale_Text[18996]["Option612"]
tNpcGossip[18996]["OptionPoint612"] = "6-5"
tNpcGossip[18996]["Option613"] = tCoatWarehouse_Sale_Text[18996]["Option613"]
tNpcGossip[18996]["OptionPoint613"] = "7-1"
tNpcGossip[18996]["Option614"] = tCoatWarehouse_Sale_Text[18996]["Option614"]
tNpcGossip[18996]["OptionPoint614"] = "7-4"
tNpcGossip[18996]["Option615"] = tCoatWarehouse_Sale_Text[18996]["Option615"]
tNpcGossip[18996]["OptionPoint615"] = "8-1"
tNpcGossip[18996]["Option616"] = tCoatWarehouse_Sale_Text[18996]["Option616"]
tNpcGossip[18996]["OptionPoint616"] = "8-4"

tNpcGossip[18996]["Text6-2"] = {622,623,624,625,626,627,628}
tNpcGossip[18996]["Text621"] = tCoatWarehouse_Sale_Text[18996]["Text621"]
tNpcGossip[18996]["Text622"] = tCoatWarehouse_Sale_Text[18996]["Text622"]
tNpcGossip[18996]["Text623"] = tCoatWarehouse_Sale_Text[18996]["Text623"]
tNpcGossip[18996]["Text624"] = tCoatWarehouse_Sale_Text[18996]["Text624"]
tNpcGossip[18996]["Text625"] = tCoatWarehouse_Sale_Text[18996]["Text625"]
tNpcGossip[18996]["Text626"] = tCoatWarehouse_Sale_Text[18996]["Text626"]
tNpcGossip[18996]["Text627"] = tCoatWarehouse_Sale_Text[18996]["Text627"]
tNpcGossip[18996]["Text628"] = tCoatWarehouse_Sale_Text[18996]["Text628"]
tNpcGossip[18996]["tOption6-2"] = {621,622}
tNpcGossip[18996]["Option621"] = tCoatWarehouse_Sale_Text[18996]["Option621"]
tNpcGossip[18996]["OptionPoint621"] = "6-1"
tNpcGossip[18996]["Option622"] = tCoatWarehouse_Sale_Text[18996]["Option622"]
tNpcGossip[18996]["OptionPoint622"] = "6-3"

tNpcGossip[18996]["Text6-3"] = {632,633,634,635,636,637,638}
tNpcGossip[18996]["Text631"] = tCoatWarehouse_Sale_Text[18996]["Text631"]
tNpcGossip[18996]["Text632"] = tCoatWarehouse_Sale_Text[18996]["Text632"]
tNpcGossip[18996]["Text633"] = tCoatWarehouse_Sale_Text[18996]["Text633"]
tNpcGossip[18996]["Text634"] = tCoatWarehouse_Sale_Text[18996]["Text634"]
tNpcGossip[18996]["Text635"] = tCoatWarehouse_Sale_Text[18996]["Text635"]
tNpcGossip[18996]["Text636"] = tCoatWarehouse_Sale_Text[18996]["Text636"]
tNpcGossip[18996]["Text637"] = tCoatWarehouse_Sale_Text[18996]["Text637"]
tNpcGossip[18996]["Text638"] = tCoatWarehouse_Sale_Text[18996]["Text638"]
tNpcGossip[18996]["tOption6-3"] = {631,632}
tNpcGossip[18996]["Option631"] = tCoatWarehouse_Sale_Text[18996]["Option631"]
tNpcGossip[18996]["OptionPoint631"] = "6-2"
tNpcGossip[18996]["Option632"] = tCoatWarehouse_Sale_Text[18996]["Option632"]
tNpcGossip[18996]["OptionPoint632"] = "6-4"

tNpcGossip[18996]["Text6-4"] = {642}
tNpcGossip[18996]["Text641"] = tCoatWarehouse_Sale_Text[18996]["Text641"]
tNpcGossip[18996]["Text642"] = tCoatWarehouse_Sale_Text[18996]["Text642"]
-- tNpcGossip[18996]["Text643"] = tCoatWarehouse_Sale_Text[18996]["Text643"]
-- tNpcGossip[18996]["Text644"] = tCoatWarehouse_Sale_Text[18996]["Text644"]
-- tNpcGossip[18996]["Text645"] = tCoatWarehouse_Sale_Text[18996]["Text645"]
-- tNpcGossip[18996]["Text646"] = tCoatWarehouse_Sale_Text[18996]["Text646"]
tNpcGossip[18996]["tOption6-4"] = {641,642}
tNpcGossip[18996]["Option641"] = tCoatWarehouse_Sale_Text[18996]["Option641"]
tNpcGossip[18996]["OptionPoint641"] = "6-3"
tNpcGossip[18996]["Option642"] = tCoatWarehouse_Sale_Text[18996]["Option642"]


tNpcGossip[18996]["Text6-5"] = {652,653,654,655,656,657,658}
tNpcGossip[18996]["Text651"] = tCoatWarehouse_Sale_Text[18996]["Text651"]
tNpcGossip[18996]["Text652"] = tCoatWarehouse_Sale_Text[18996]["Text652"]
tNpcGossip[18996]["Text653"] = tCoatWarehouse_Sale_Text[18996]["Text653"]
tNpcGossip[18996]["Text654"] = tCoatWarehouse_Sale_Text[18996]["Text654"]
tNpcGossip[18996]["Text655"] = tCoatWarehouse_Sale_Text[18996]["Text655"]
tNpcGossip[18996]["Text656"] = tCoatWarehouse_Sale_Text[18996]["Text656"]
tNpcGossip[18996]["Text657"] = tCoatWarehouse_Sale_Text[18996]["Text657"]
tNpcGossip[18996]["Text658"] = tCoatWarehouse_Sale_Text[18996]["Text658"]
tNpcGossip[18996]["tOption6-5"] = {651,652}
tNpcGossip[18996]["Option651"] = tCoatWarehouse_Sale_Text[18996]["Option651"]
tNpcGossip[18996]["OptionPoint651"] = "6-1"
tNpcGossip[18996]["Option652"] = tCoatWarehouse_Sale_Text[18996]["Option652"]
tNpcGossip[18996]["OptionPoint652"] = "6-6"

tNpcGossip[18996]["Text6-6"] = {662,663,664,665,666,667,668}
tNpcGossip[18996]["Text661"] = tCoatWarehouse_Sale_Text[18996]["Text661"]
tNpcGossip[18996]["Text662"] = tCoatWarehouse_Sale_Text[18996]["Text662"]
tNpcGossip[18996]["Text663"] = tCoatWarehouse_Sale_Text[18996]["Text663"]
tNpcGossip[18996]["Text664"] = tCoatWarehouse_Sale_Text[18996]["Text664"]
tNpcGossip[18996]["Text665"] = tCoatWarehouse_Sale_Text[18996]["Text665"]
tNpcGossip[18996]["Text666"] = tCoatWarehouse_Sale_Text[18996]["Text666"]
tNpcGossip[18996]["Text667"] = tCoatWarehouse_Sale_Text[18996]["Text667"]
tNpcGossip[18996]["Text668"] = tCoatWarehouse_Sale_Text[18996]["Text668"]
tNpcGossip[18996]["tOption6-6"] = {661,662}
tNpcGossip[18996]["Option661"] = tCoatWarehouse_Sale_Text[18996]["Option661"]
tNpcGossip[18996]["OptionPoint661"] = "6-5"
tNpcGossip[18996]["Option662"] = tCoatWarehouse_Sale_Text[18996]["Option662"]
tNpcGossip[18996]["OptionPoint662"] = "6-7"

tNpcGossip[18996]["Text6-7"] = {672,673,674,675}
tNpcGossip[18996]["Text671"] = tCoatWarehouse_Sale_Text[18996]["Text671"]
tNpcGossip[18996]["Text672"] = tCoatWarehouse_Sale_Text[18996]["Text672"]
tNpcGossip[18996]["Text673"] = tCoatWarehouse_Sale_Text[18996]["Text673"]
tNpcGossip[18996]["Text674"] = tCoatWarehouse_Sale_Text[18996]["Text674"]
tNpcGossip[18996]["Text675"] = tCoatWarehouse_Sale_Text[18996]["Text675"]
tNpcGossip[18996]["tOption6-7"] = {671,672}
tNpcGossip[18996]["Option671"] = tCoatWarehouse_Sale_Text[18996]["Option671"]
tNpcGossip[18996]["OptionPoint671"] = "6-6"
tNpcGossip[18996]["Option672"] = tCoatWarehouse_Sale_Text[18996]["Option672"]


tNpcGossip[18996]["Text7-1"] = {712,713,714,715,716,717,718}
tNpcGossip[18996]["Text711"] = tCoatWarehouse_Sale_Text[18996]["Text711"]
tNpcGossip[18996]["Text712"] = tCoatWarehouse_Sale_Text[18996]["Text712"]
tNpcGossip[18996]["Text713"] = tCoatWarehouse_Sale_Text[18996]["Text713"]
tNpcGossip[18996]["Text714"] = tCoatWarehouse_Sale_Text[18996]["Text714"]
tNpcGossip[18996]["Text715"] = tCoatWarehouse_Sale_Text[18996]["Text715"]
tNpcGossip[18996]["Text716"] = tCoatWarehouse_Sale_Text[18996]["Text716"]
tNpcGossip[18996]["Text717"] = tCoatWarehouse_Sale_Text[18996]["Text717"]
tNpcGossip[18996]["Text718"] = tCoatWarehouse_Sale_Text[18996]["Text718"]
tNpcGossip[18996]["tOption7-1"] = {711,712}
tNpcGossip[18996]["Option711"] = tCoatWarehouse_Sale_Text[18996]["Option711"]
tNpcGossip[18996]["OptionPoint711"] = "6-1"
tNpcGossip[18996]["Option712"] = tCoatWarehouse_Sale_Text[18996]["Option712"]
tNpcGossip[18996]["OptionPoint712"] = "7-2"

tNpcGossip[18996]["Text7-2"] = {722,723,724,725,726}
tNpcGossip[18996]["Text721"] = tCoatWarehouse_Sale_Text[18996]["Text721"]
tNpcGossip[18996]["Text722"] = tCoatWarehouse_Sale_Text[18996]["Text722"]
tNpcGossip[18996]["Text723"] = tCoatWarehouse_Sale_Text[18996]["Text723"]
tNpcGossip[18996]["Text724"] = tCoatWarehouse_Sale_Text[18996]["Text724"]
tNpcGossip[18996]["Text725"] = tCoatWarehouse_Sale_Text[18996]["Text725"]
tNpcGossip[18996]["Text726"] = tCoatWarehouse_Sale_Text[18996]["Text726"]
tNpcGossip[18996]["tOption7-2"] = {721,722}
tNpcGossip[18996]["Option721"] = tCoatWarehouse_Sale_Text[18996]["Option721"]
tNpcGossip[18996]["OptionPoint721"] = "7-1"
tNpcGossip[18996]["Option722"] = tCoatWarehouse_Sale_Text[18996]["Option722"]
tNpcGossip[18996]["OptionPoint722"] = "7-3"

tNpcGossip[18996]["Text7-3"] = {732,733,734,735,736,737}
tNpcGossip[18996]["Text731"] = tCoatWarehouse_Sale_Text[18996]["Text731"]
tNpcGossip[18996]["Text732"] = tCoatWarehouse_Sale_Text[18996]["Text732"]
tNpcGossip[18996]["Text733"] = tCoatWarehouse_Sale_Text[18996]["Text733"]
tNpcGossip[18996]["Text734"] = tCoatWarehouse_Sale_Text[18996]["Text734"]
tNpcGossip[18996]["Text735"] = tCoatWarehouse_Sale_Text[18996]["Text735"]
tNpcGossip[18996]["Text736"] = tCoatWarehouse_Sale_Text[18996]["Text736"]
tNpcGossip[18996]["Text737"] = tCoatWarehouse_Sale_Text[18996]["Text737"]
tNpcGossip[18996]["tOption7-3"] = {731,732}
tNpcGossip[18996]["Option731"] = tCoatWarehouse_Sale_Text[18996]["Option731"]
tNpcGossip[18996]["OptionPoint731"] = "7-2"
tNpcGossip[18996]["Option732"] = tCoatWarehouse_Sale_Text[18996]["Option732"]


tNpcGossip[18996]["Text7-4"] = {742,743,744,745,746}
tNpcGossip[18996]["Text741"] = tCoatWarehouse_Sale_Text[18996]["Text741"]
tNpcGossip[18996]["Text742"] = tCoatWarehouse_Sale_Text[18996]["Text742"]
tNpcGossip[18996]["Text743"] = tCoatWarehouse_Sale_Text[18996]["Text743"]
tNpcGossip[18996]["Text744"] = tCoatWarehouse_Sale_Text[18996]["Text744"]
tNpcGossip[18996]["Text745"] = tCoatWarehouse_Sale_Text[18996]["Text745"]
tNpcGossip[18996]["Text746"] = tCoatWarehouse_Sale_Text[18996]["Text746"]
tNpcGossip[18996]["tOption7-4"] = {741,742}
tNpcGossip[18996]["Option741"] = tCoatWarehouse_Sale_Text[18996]["Option741"]
tNpcGossip[18996]["OptionPoint741"] = "6-1"
tNpcGossip[18996]["Option742"] = tCoatWarehouse_Sale_Text[18996]["Option742"]
tNpcGossip[18996]["OptionPoint742"] = "7-5"

tNpcGossip[18996]["Text7-5"] = {752,753,754}
tNpcGossip[18996]["Text751"] = tCoatWarehouse_Sale_Text[18996]["Text751"]
tNpcGossip[18996]["Text752"] = tCoatWarehouse_Sale_Text[18996]["Text752"]
tNpcGossip[18996]["Text753"] = tCoatWarehouse_Sale_Text[18996]["Text753"]
tNpcGossip[18996]["Text754"] = tCoatWarehouse_Sale_Text[18996]["Text754"]
tNpcGossip[18996]["tOption7-5"] = {751,752}
tNpcGossip[18996]["Option751"] = tCoatWarehouse_Sale_Text[18996]["Option751"]
tNpcGossip[18996]["OptionPoint751"] = "7-4"
tNpcGossip[18996]["Option752"] = tCoatWarehouse_Sale_Text[18996]["Option752"]


tNpcGossip[18996]["Text8-1"] = {812,813,814,815,816,817,818}
tNpcGossip[18996]["Text811"] = tCoatWarehouse_Sale_Text[18996]["Text811"]
tNpcGossip[18996]["Text812"] = tCoatWarehouse_Sale_Text[18996]["Text812"]
tNpcGossip[18996]["Text813"] = tCoatWarehouse_Sale_Text[18996]["Text813"]
tNpcGossip[18996]["Text814"] = tCoatWarehouse_Sale_Text[18996]["Text814"]
tNpcGossip[18996]["Text815"] = tCoatWarehouse_Sale_Text[18996]["Text815"]
tNpcGossip[18996]["Text816"] = tCoatWarehouse_Sale_Text[18996]["Text816"]
tNpcGossip[18996]["Text817"] = tCoatWarehouse_Sale_Text[18996]["Text817"]
tNpcGossip[18996]["Text818"] = tCoatWarehouse_Sale_Text[18996]["Text818"]
tNpcGossip[18996]["tOption8-1"] = {811,812}
tNpcGossip[18996]["Option811"] = tCoatWarehouse_Sale_Text[18996]["Option811"]
tNpcGossip[18996]["OptionPoint811"] = "6-1"
tNpcGossip[18996]["Option812"] = tCoatWarehouse_Sale_Text[18996]["Option812"]
tNpcGossip[18996]["OptionPoint812"] = "8-2"

tNpcGossip[18996]["Text8-2"] = {822,823,824,825,826,827,828}
tNpcGossip[18996]["Text821"] = tCoatWarehouse_Sale_Text[18996]["Text821"]
tNpcGossip[18996]["Text822"] = tCoatWarehouse_Sale_Text[18996]["Text822"]
tNpcGossip[18996]["Text823"] = tCoatWarehouse_Sale_Text[18996]["Text823"]
tNpcGossip[18996]["Text824"] = tCoatWarehouse_Sale_Text[18996]["Text824"]
tNpcGossip[18996]["Text825"] = tCoatWarehouse_Sale_Text[18996]["Text825"]
tNpcGossip[18996]["Text826"] = tCoatWarehouse_Sale_Text[18996]["Text826"]
tNpcGossip[18996]["Text827"] = tCoatWarehouse_Sale_Text[18996]["Text827"]
tNpcGossip[18996]["Text828"] = tCoatWarehouse_Sale_Text[18996]["Text828"]
tNpcGossip[18996]["tOption8-2"] = {821,822}
tNpcGossip[18996]["Option821"] = tCoatWarehouse_Sale_Text[18996]["Option821"]
tNpcGossip[18996]["OptionPoint821"] = "8-1"
tNpcGossip[18996]["Option822"] = tCoatWarehouse_Sale_Text[18996]["Option822"]
tNpcGossip[18996]["OptionPoint822"] = "8-3"

tNpcGossip[18996]["Text8-3"] = {832,833,834,835}
tNpcGossip[18996]["Text831"] = tCoatWarehouse_Sale_Text[18996]["Text831"]
tNpcGossip[18996]["Text832"] = tCoatWarehouse_Sale_Text[18996]["Text832"]
tNpcGossip[18996]["Text833"] = tCoatWarehouse_Sale_Text[18996]["Text833"]
tNpcGossip[18996]["Text834"] = tCoatWarehouse_Sale_Text[18996]["Text834"]
tNpcGossip[18996]["Text835"] = tCoatWarehouse_Sale_Text[18996]["Text835"]
tNpcGossip[18996]["tOption8-3"] = {831,832}
tNpcGossip[18996]["Option831"] = tCoatWarehouse_Sale_Text[18996]["Option831"]
tNpcGossip[18996]["OptionPoint831"] = "8-2"
tNpcGossip[18996]["Option832"] = tCoatWarehouse_Sale_Text[18996]["Option832"]


tNpcGossip[18996]["Text8-4"] = {842,843,844,845,846,847,848}
tNpcGossip[18996]["Text841"] = tCoatWarehouse_Sale_Text[18996]["Text841"]
tNpcGossip[18996]["Text842"] = tCoatWarehouse_Sale_Text[18996]["Text842"]
tNpcGossip[18996]["Text843"] = tCoatWarehouse_Sale_Text[18996]["Text843"]
tNpcGossip[18996]["Text844"] = tCoatWarehouse_Sale_Text[18996]["Text844"]
tNpcGossip[18996]["Text845"] = tCoatWarehouse_Sale_Text[18996]["Text845"]
tNpcGossip[18996]["Text846"] = tCoatWarehouse_Sale_Text[18996]["Text846"]
tNpcGossip[18996]["Text847"] = tCoatWarehouse_Sale_Text[18996]["Text847"]
tNpcGossip[18996]["Text848"] = tCoatWarehouse_Sale_Text[18996]["Text848"]
tNpcGossip[18996]["tOption8-4"] = {841,842}
tNpcGossip[18996]["Option841"] = tCoatWarehouse_Sale_Text[18996]["Option841"]
tNpcGossip[18996]["OptionPoint841"] = "6-1"
tNpcGossip[18996]["Option842"] = tCoatWarehouse_Sale_Text[18996]["Option842"]
tNpcGossip[18996]["OptionPoint842"] = "8-5"

tNpcGossip[18996]["Text8-5"] = {852,853,854}
tNpcGossip[18996]["Text851"] = tCoatWarehouse_Sale_Text[18996]["Text851"]
tNpcGossip[18996]["Text852"] = tCoatWarehouse_Sale_Text[18996]["Text852"]
tNpcGossip[18996]["Text853"] = tCoatWarehouse_Sale_Text[18996]["Text853"]
tNpcGossip[18996]["Text854"] = tCoatWarehouse_Sale_Text[18996]["Text854"]
tNpcGossip[18996]["tOption8-5"] = {851,852}
tNpcGossip[18996]["Option851"] = tCoatWarehouse_Sale_Text[18996]["Option851"]
tNpcGossip[18996]["OptionPoint851"] = "8-4"
tNpcGossip[18996]["Option852"] = tCoatWarehouse_Sale_Text[18996]["Option852"]


tNpcFace[3938] = 416
tNpcGossip[18997] = tNpcGossip[18997] or DefaultNpc:new{}
tNpcGossip[18997]["OptionHidden"] = 1


--活动时间外
tNpcGossip[18997]["Text1-1"] = {111}
tNpcGossip[18997]["Text111"] = tCoatWarehouse_Sale_Text[18997]["Text111"]
tNpcGossip[18997]["tOption1-1"] = {111}
tNpcGossip[18997]["ChkFunc1-1"] = function()
	return not Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"])
end

tNpcGossip[18997]["Option111"] = tCoatWarehouse_Sale_Text[18997]["Option111"]

--活动时间内
tNpcGossip[18997]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[18997]["Text121"] = tCoatWarehouse_Sale_Text[18997]["Text121"]
tNpcGossip[18997]["Text122"] = tCoatWarehouse_Sale_Text[18997]["Text122"]
tNpcGossip[18997]["Text123"] = tCoatWarehouse_Sale_Text[18997]["Text123"]
tNpcGossip[18997]["Text124"] = tCoatWarehouse_Sale_Text[18997]["Text124"]
tNpcGossip[18997]["Text125"] = tCoatWarehouse_Sale_Text[18997]["Text125"]
tNpcGossip[18997]["tOption1-2"] = {121,122,123,124}
tNpcGossip[18997]["ChkFunc1-2"] = function()
	-- return User_JudgeLevelAndMetempsychosis(tCoatWarehouse_Sale_Const["Level"],tCoatWarehouse_Sale_Const["Mete"])
	--改为无等级限制
	return true
end

tNpcGossip[18997]["Option121"] = tCoatWarehouse_Sale_Text[18997]["Option121"]
tNpcGossip[18997]["OptionFunc121"] = "CoatWarehouse_Sale_UseOneJade</N>18997"
tNpcGossip[18997]["Option122"] = tCoatWarehouse_Sale_Text[18997]["Option122"]
tNpcGossip[18997]["OptionFunc122"] = "CoatWarehouse_Sale_UseThreeJade</N>18997"
tNpcGossip[18997]["Option123"] = tCoatWarehouse_Sale_Text[18997]["Option123"]
tNpcGossip[18997]["OptionPoint123"] = "6-1"


--活动时间内，等级不满足
tNpcGossip[18997]["Text1-3"] = {131}
tNpcGossip[18997]["Text131"] = tCoatWarehouse_Sale_Text[18997]["Text131"]
tNpcGossip[18997]["tOption1-3"] = {131}

tNpcGossip[18997]["Option131"] = tCoatWarehouse_Sale_Text[18997]["Option131"]
--昆仑玉数量不足
tNpcGossip[18997]["Text2-1"] = {211}
tNpcGossip[18997]["Text211"] = tCoatWarehouse_Sale_Text[18997]["Text211"]
tNpcGossip[18997]["tOption2-1"] = {211}
tNpcGossip[18997]["Option211"] = tCoatWarehouse_Sale_Text[18997]["Option211"]
tNpcGossip[18997]["OptionFunc211"] = "CoatWarehouse_Sale_UseEmoney</N>18997"

--背包空间满
tNpcGossip[18997]["Text2-2"] = {221}
tNpcGossip[18997]["Text221"] = tCoatWarehouse_Sale_Text[18997]["Text221"]
tNpcGossip[18997]["tOption2-2"] = {221}
tNpcGossip[18997]["Option221"] = tCoatWarehouse_Sale_Text[18997]["Option221"]

tNpcGossip[18997]["Text2-3"] = {231,232,233,234,235,236}
tNpcGossip[18997]["Text231"] = tCoatWarehouse_Sale_Text[18997]["Text231"]
tNpcGossip[18997]["Text232"] = tCoatWarehouse_Sale_Text[18997]["Text232"]
tNpcGossip[18997]["Text233"] = tCoatWarehouse_Sale_Text[18997]["Text233"]
tNpcGossip[18997]["Text234"] = tCoatWarehouse_Sale_Text[18997]["Text234"]
tNpcGossip[18997]["Text235"] = tCoatWarehouse_Sale_Text[18997]["Text235"]
tNpcGossip[18997]["Text236"] = tCoatWarehouse_Sale_Text[18997]["Text236"]

tNpcGossip[18997]["tOption2-3"] = {231,232}
tNpcGossip[18997]["Option231"] = tCoatWarehouse_Sale_Text[18997]["Option231"]
tNpcGossip[18997]["OptionFunc231"] = "CoatWarehouse_Sale_DirectReceive</N>18997"
tNpcGossip[18997]["Option232"] = tCoatWarehouse_Sale_Text[18997]["Option232"]
tNpcGossip[18997]["OptionPoint232"] = "3-1"
tNpcGossip[18997]["OptionChkFunc232"] = function()
	return CoatWarehouse_Sale_CtlShowSplit(18997)
end
tNpcGossip[18997]["Option233"] = tCoatWarehouse_Sale_Text[18997]["Option233"]
tNpcGossip[18997]["ChkFunc2-3"] = function()
	return CoatWarehouse_Sale_ResetText23(18997)
end

tNpcGossip[18997]["Text2-4"] = {241}
tNpcGossip[18997]["Text241"] = tCoatWarehouse_Sale_Text[18997]["Text241"]
tNpcGossip[18997]["tOption2-4"] = {241}
tNpcGossip[18997]["Option241"] = tCoatWarehouse_Sale_Text[18997]["Option241"]

tNpcGossip[18997]["Text2-5"] = {251}
tNpcGossip[18997]["Text251"] = tCoatWarehouse_Sale_Text[18997]["Text251"]
tNpcGossip[18997]["tOption2-5"] = {251,252}
tNpcGossip[18997]["Option251"] = tCoatWarehouse_Sale_Text[18997]["Option251"]
tNpcGossip[18997]["OptionFunc251"] = "CoatWarehouse_Sale_ConfirmUseEmoney</N>18997"
tNpcGossip[18997]["Option252"] = tCoatWarehouse_Sale_Text[18997]["Option252"]

tNpcGossip[18997]["Text2-6"] = {261}
tNpcGossip[18997]["Text261"] = tCoatWarehouse_Sale_Text[18997]["Text261"]
tNpcGossip[18997]["tOption2-6"] = {261,262,263,264}
tNpcGossip[18997]["Option261"] = tCoatWarehouse_Sale_Text[18997]["Option261"]
tNpcGossip[18997]["OptionFunc261"] = "CoatWarehouse_Sale_UseThreeJade</N>18997"
tNpcGossip[18997]["Option262"] = tCoatWarehouse_Sale_Text[18997]["Option262"]
tNpcGossip[18997]["OptionFunc262"] = "CoatWarehouse_Sale_UseTripleEMoney</N>18997"
tNpcGossip[18997]["Option263"] = tCoatWarehouse_Sale_Text[18997]["Option263"]
tNpcGossip[18997]["OptionPoint263"] = "1-2"
tNpcGossip[18997]["Option264"] = tCoatWarehouse_Sale_Text[18997]["Option264"]

tNpcGossip[18997]["Text3-1"] = {311,312,313,314,315}
tNpcGossip[18997]["Text311"] = tCoatWarehouse_Sale_Text[18997]["Text311"]
tNpcGossip[18997]["Text312"] = tCoatWarehouse_Sale_Text[18997]["Text312"]
tNpcGossip[18997]["Text313"] = tCoatWarehouse_Sale_Text[18997]["Text313"]
tNpcGossip[18997]["Text314"] = tCoatWarehouse_Sale_Text[18997]["Text314"]
tNpcGossip[18997]["Text315"] = tCoatWarehouse_Sale_Text[18997]["Text315"]
tNpcGossip[18997]["tOption3-1"] = {311,312}
tNpcGossip[18997]["Option311"] = tCoatWarehouse_Sale_Text[18997]["Option311"]
tNpcGossip[18997]["OptionFunc311"] = "CoatWarehouse_Sale_ConfirmToSplit</N>18997"
tNpcGossip[18997]["Option312"] = tCoatWarehouse_Sale_Text[18997]["Option312"]
tNpcGossip[18997]["ChkFunc3-1"] = function()
	return CoatWarehouse_Sale_ResetText31(18997)
end

tNpcGossip[18997]["Text3-2"] = {321}
tNpcGossip[18997]["Text321"] = tCoatWarehouse_Sale_Text[18997]["Text321"]
tNpcGossip[18997]["tOption3-2"] = {321}
tNpcGossip[18997]["Option321"] = tCoatWarehouse_Sale_Text[18997]["Option321"]
tNpcGossip[18997]["OptionFunc321"] = "CoatWarehouse_Sale_UseTripleEMoney</N>18997"

tNpcGossip[18997]["Text3-3"] = {331}
tNpcGossip[18997]["Text331"] = tCoatWarehouse_Sale_Text[18997]["Text331"]
tNpcGossip[18997]["tOption3-3"] = {331}
tNpcGossip[18997]["Option331"] = tCoatWarehouse_Sale_Text[18997]["Option331"]

tNpcGossip[18997]["Text3-4"] = {341,342,343,344,345,346,347,348}
tNpcGossip[18997]["Text341"] = tCoatWarehouse_Sale_Text[18997]["Text341"]
tNpcGossip[18997]["Text342"] = tCoatWarehouse_Sale_Text[18997]["Text342"]
tNpcGossip[18997]["Text343"] = tCoatWarehouse_Sale_Text[18997]["Text343"]
tNpcGossip[18997]["Text344"] = tCoatWarehouse_Sale_Text[18997]["Text344"]
tNpcGossip[18997]["Text345"] = tCoatWarehouse_Sale_Text[18997]["Text345"]
tNpcGossip[18997]["Text346"] = tCoatWarehouse_Sale_Text[18997]["Text346"]
tNpcGossip[18997]["Text347"] = tCoatWarehouse_Sale_Text[18997]["Text347"]
tNpcGossip[18997]["Text348"] = tCoatWarehouse_Sale_Text[18997]["Text348"]
tNpcGossip[18997]["tOption3-4"] = {341,342,343}
tNpcGossip[18997]["Option341"] = tCoatWarehouse_Sale_Text[18997]["Option341"]
tNpcGossip[18997]["OptionFunc341"] = "CoatWarehouse_Sale_AllReceive</N>18997"
tNpcGossip[18997]["Option342"] = tCoatWarehouse_Sale_Text[18997]["Option342"]
tNpcGossip[18997]["OptionFunc342"] = "CoatWarehouse_Sale_OneKeyToSplit</N>18997"
tNpcGossip[18997]["Option343"] = tCoatWarehouse_Sale_Text[18997]["Option343"]
tNpcGossip[18997]["OptionPoint343"] = "4-3"
tNpcGossip[18997]["Option344"] = tCoatWarehouse_Sale_Text[18997]["Option344"]
tNpcGossip[18997]["ChkFunc3-4"] = function()
	return CoatWarehouse_Sale_ResetText34(18997)
end


--使用天石二次确认
tNpcGossip[18997]["Text3-5"] = {351}
tNpcGossip[18997]["Text351"] = tCoatWarehouse_Sale_Text[18997]["Text351"]
tNpcGossip[18997]["tOption3-5"] = {351,352}
tNpcGossip[18997]["Option351"] = tCoatWarehouse_Sale_Text[18997]["Option351"]
tNpcGossip[18997]["OptionFunc351"] = "CoatWarehouse_Sale_ConfirmUseTripleEMoney</N>18997"
tNpcGossip[18997]["Option352"] = tCoatWarehouse_Sale_Text[18997]["Option352"]


tNpcGossip[18997]["Text4-1"] = {411}
tNpcGossip[18997]["Text411"] = tCoatWarehouse_Sale_Text[18997]["Text411"]
tNpcGossip[18997]["tOption4-1"] = {411}
tNpcGossip[18997]["Option411"] = tCoatWarehouse_Sale_Text[18997]["Option411"]

tNpcGossip[18997]["Text4-2"] = {421,422}
tNpcGossip[18997]["Text421"] = tCoatWarehouse_Sale_Text[18997]["Text421"]
tNpcGossip[18997]["Text422"] = tCoatWarehouse_Sale_Text[18997]["Text422"]
tNpcGossip[18997]["tOption4-2"] = {421,422,423}
tNpcGossip[18997]["Option421"] = tCoatWarehouse_Sale_Text[18997]["Option421"]
tNpcGossip[18997]["OptionFunc421"] = "CoatWarehouse_Sale_OneKeyToSplitReal</N>18997"
tNpcGossip[18997]["Option422"] = tCoatWarehouse_Sale_Text[18997]["Option422"]
tNpcGossip[18997]["OptionFunc422"] = "CoatWarehouse_Sale_ShieldTheConfirm</N>18997"
tNpcGossip[18997]["Option423"] = tCoatWarehouse_Sale_Text[18997]["Option423"]

tNpcGossip[18997]["Text4-3"] = {431}
tNpcGossip[18997]["Text431"] = tCoatWarehouse_Sale_Text[18997]["Text431"]
tNpcGossip[18997]["tOption4-3"] = {431,432}
tNpcGossip[18997]["Option431"] = tCoatWarehouse_Sale_Text[18997]["Option431"]
tNpcGossip[18997]["OptionFunc431"] = "CoatWarehouse_Sale_ReEnter</N>18997"
tNpcGossip[18997]["Option432"] = tCoatWarehouse_Sale_Text[18997]["Option432"]

tNpcGossip[18997]["Text5-1"] = {511}
tNpcGossip[18997]["Text511"] = tCoatWarehouse_Sale_Text[18997]["Text511"]
tNpcGossip[18997]["tOption5-1"] = {511}
tNpcGossip[18997]["Option511"] = tCoatWarehouse_Sale_Text[18997]["Option511"]

tNpcGossip[18997]["Text6-1"] = {611}
tNpcGossip[18997]["Text611"] = tCoatWarehouse_Sale_Text[18997]["Text611"]
tNpcGossip[18997]["tOption6-1"] = {611,612,613,614,615,616}
tNpcGossip[18997]["Option611"] = tCoatWarehouse_Sale_Text[18997]["Option611"]
tNpcGossip[18997]["OptionPoint611"] = "6-2"
tNpcGossip[18997]["Option612"] = tCoatWarehouse_Sale_Text[18997]["Option612"]
tNpcGossip[18997]["OptionPoint612"] = "6-5"
tNpcGossip[18997]["Option613"] = tCoatWarehouse_Sale_Text[18997]["Option613"]
tNpcGossip[18997]["OptionPoint613"] = "7-1"
tNpcGossip[18997]["Option614"] = tCoatWarehouse_Sale_Text[18997]["Option614"]
tNpcGossip[18997]["OptionPoint614"] = "7-2"
tNpcGossip[18997]["Option615"] = tCoatWarehouse_Sale_Text[18997]["Option615"]
tNpcGossip[18997]["OptionPoint615"] = "8-1"
tNpcGossip[18997]["Option616"] = tCoatWarehouse_Sale_Text[18997]["Option616"]
tNpcGossip[18997]["OptionPoint616"] = "8-2"

tNpcGossip[18997]["Text6-2"] = {622,623,624,625,626,627,628}
tNpcGossip[18997]["Text621"] = tCoatWarehouse_Sale_Text[18997]["Text621"]
tNpcGossip[18997]["Text622"] = tCoatWarehouse_Sale_Text[18997]["Text622"]
tNpcGossip[18997]["Text623"] = tCoatWarehouse_Sale_Text[18997]["Text623"]
tNpcGossip[18997]["Text624"] = tCoatWarehouse_Sale_Text[18997]["Text624"]
tNpcGossip[18997]["Text625"] = tCoatWarehouse_Sale_Text[18997]["Text625"]
tNpcGossip[18997]["Text626"] = tCoatWarehouse_Sale_Text[18997]["Text626"]
tNpcGossip[18997]["Text627"] = tCoatWarehouse_Sale_Text[18997]["Text627"]
tNpcGossip[18997]["Text628"] = tCoatWarehouse_Sale_Text[18997]["Text628"]
tNpcGossip[18997]["tOption6-2"] = {621,622}
tNpcGossip[18997]["Option621"] = tCoatWarehouse_Sale_Text[18997]["Option621"]
tNpcGossip[18997]["OptionPoint621"] = "6-1"
tNpcGossip[18997]["Option622"] = tCoatWarehouse_Sale_Text[18997]["Option622"]
tNpcGossip[18997]["OptionPoint622"] = "6-3"

tNpcGossip[18997]["Text6-3"] = {632,633,634,635,636,637,638}
tNpcGossip[18997]["Text631"] = tCoatWarehouse_Sale_Text[18997]["Text631"]
tNpcGossip[18997]["Text632"] = tCoatWarehouse_Sale_Text[18997]["Text632"]
tNpcGossip[18997]["Text633"] = tCoatWarehouse_Sale_Text[18997]["Text633"]
tNpcGossip[18997]["Text634"] = tCoatWarehouse_Sale_Text[18997]["Text634"]
tNpcGossip[18997]["Text635"] = tCoatWarehouse_Sale_Text[18997]["Text635"]
tNpcGossip[18997]["Text636"] = tCoatWarehouse_Sale_Text[18997]["Text636"]
tNpcGossip[18997]["Text637"] = tCoatWarehouse_Sale_Text[18997]["Text637"]
tNpcGossip[18997]["Text638"] = tCoatWarehouse_Sale_Text[18997]["Text638"]
tNpcGossip[18997]["tOption6-3"] = {631,632}
tNpcGossip[18997]["Option631"] = tCoatWarehouse_Sale_Text[18997]["Option631"]
tNpcGossip[18997]["OptionPoint631"] = "6-2"
tNpcGossip[18997]["Option632"] = tCoatWarehouse_Sale_Text[18997]["Option632"]
tNpcGossip[18997]["OptionPoint632"] = "6-4"

tNpcGossip[18997]["Text6-4"] = {642}
tNpcGossip[18997]["Text641"] = tCoatWarehouse_Sale_Text[18997]["Text641"]
tNpcGossip[18997]["Text642"] = tCoatWarehouse_Sale_Text[18997]["Text642"]

tNpcGossip[18997]["tOption6-4"] = {641,642}
tNpcGossip[18997]["Option641"] = tCoatWarehouse_Sale_Text[18997]["Option641"]
tNpcGossip[18997]["OptionPoint641"] = "6-3"
tNpcGossip[18997]["Option642"] = tCoatWarehouse_Sale_Text[18997]["Option642"]


tNpcGossip[18997]["Text6-5"] = {652,653,654,655,656,657,658}
tNpcGossip[18997]["Text651"] = tCoatWarehouse_Sale_Text[18997]["Text651"]
tNpcGossip[18997]["Text652"] = tCoatWarehouse_Sale_Text[18997]["Text652"]
tNpcGossip[18997]["Text653"] = tCoatWarehouse_Sale_Text[18997]["Text653"]
tNpcGossip[18997]["Text654"] = tCoatWarehouse_Sale_Text[18997]["Text654"]
tNpcGossip[18997]["Text655"] = tCoatWarehouse_Sale_Text[18997]["Text655"]
tNpcGossip[18997]["Text656"] = tCoatWarehouse_Sale_Text[18997]["Text656"]
tNpcGossip[18997]["Text657"] = tCoatWarehouse_Sale_Text[18997]["Text657"]
tNpcGossip[18997]["Text658"] = tCoatWarehouse_Sale_Text[18997]["Text658"]
tNpcGossip[18997]["tOption6-5"] = {651,652}
tNpcGossip[18997]["Option651"] = tCoatWarehouse_Sale_Text[18997]["Option651"]
tNpcGossip[18997]["OptionPoint651"] = "6-4"
tNpcGossip[18997]["Option652"] = tCoatWarehouse_Sale_Text[18997]["Option652"]
tNpcGossip[18997]["OptionPoint652"] = "6-6"

tNpcGossip[18997]["Text6-6"] = {662,663,664,665,666,667,668}
tNpcGossip[18997]["Text661"] = tCoatWarehouse_Sale_Text[18997]["Text661"]
tNpcGossip[18997]["Text662"] = tCoatWarehouse_Sale_Text[18997]["Text662"]
tNpcGossip[18997]["Text663"] = tCoatWarehouse_Sale_Text[18997]["Text663"]
tNpcGossip[18997]["Text664"] = tCoatWarehouse_Sale_Text[18997]["Text664"]
tNpcGossip[18997]["Text665"] = tCoatWarehouse_Sale_Text[18997]["Text665"]
tNpcGossip[18997]["Text666"] = tCoatWarehouse_Sale_Text[18997]["Text666"]
tNpcGossip[18997]["Text667"] = tCoatWarehouse_Sale_Text[18997]["Text667"]
tNpcGossip[18997]["Text668"] = tCoatWarehouse_Sale_Text[18997]["Text668"]
tNpcGossip[18997]["tOption6-6"] = {661,662}
tNpcGossip[18997]["Option661"] = tCoatWarehouse_Sale_Text[18997]["Option661"]
tNpcGossip[18997]["OptionPoint661"] = "6-5"
tNpcGossip[18997]["Option662"] = tCoatWarehouse_Sale_Text[18997]["Option662"]
tNpcGossip[18997]["OptionPoint662"] = "6-7"

tNpcGossip[18997]["Text6-7"] = {672,673,674,675}
tNpcGossip[18997]["Text671"] = tCoatWarehouse_Sale_Text[18997]["Text671"]
tNpcGossip[18997]["Text672"] = tCoatWarehouse_Sale_Text[18997]["Text672"]
tNpcGossip[18997]["Text673"] = tCoatWarehouse_Sale_Text[18997]["Text673"]
tNpcGossip[18997]["Text674"] = tCoatWarehouse_Sale_Text[18997]["Text674"]
tNpcGossip[18997]["Text675"] = tCoatWarehouse_Sale_Text[18997]["Text675"]
tNpcGossip[18997]["tOption6-7"] = {671,672}
tNpcGossip[18997]["Option671"] = tCoatWarehouse_Sale_Text[18997]["Option671"]
tNpcGossip[18997]["OptionPoint671"] = "6-6"
tNpcGossip[18997]["Option672"] = tCoatWarehouse_Sale_Text[18997]["Option672"]



tNpcGossip[18997]["Text7-1"] = {711,712,713,714,715,716,717,718,7110,7111,7112}
tNpcGossip[18997]["Text711"] = tCoatWarehouse_Sale_Text[18997]["Text711"]
tNpcGossip[18997]["Text712"] = tCoatWarehouse_Sale_Text[18997]["Text712"]
tNpcGossip[18997]["Text713"] = tCoatWarehouse_Sale_Text[18997]["Text713"]
tNpcGossip[18997]["Text714"] = tCoatWarehouse_Sale_Text[18997]["Text714"]
tNpcGossip[18997]["Text715"] = tCoatWarehouse_Sale_Text[18997]["Text715"]
tNpcGossip[18997]["Text716"] = tCoatWarehouse_Sale_Text[18997]["Text716"]
tNpcGossip[18997]["Text717"] = tCoatWarehouse_Sale_Text[18997]["Text717"]
tNpcGossip[18997]["Text718"] = tCoatWarehouse_Sale_Text[18997]["Text718"]
-- tNpcGossip[18997]["Text719"] = tCoatWarehouse_Sale_Text[18997]["Text719"]
tNpcGossip[18997]["Text7110"] = tCoatWarehouse_Sale_Text[18997]["Text7110"]
tNpcGossip[18997]["Text7111"] = tCoatWarehouse_Sale_Text[18997]["Text7111"]
tNpcGossip[18997]["Text7112"] = tCoatWarehouse_Sale_Text[18997]["Text7112"]
tNpcGossip[18997]["tOption7-1"] = {711,712}
tNpcGossip[18997]["Option711"] = tCoatWarehouse_Sale_Text[18997]["Option711"]
tNpcGossip[18997]["OptionPoint711"] = "6-1"
tNpcGossip[18997]["Option712"] = tCoatWarehouse_Sale_Text[18997]["Option712"]

tNpcGossip[18997]["Text7-2"] = {721,722, 723, 724, 725, 726, 727, 728}
tNpcGossip[18997]["Text721"] = tCoatWarehouse_Sale_Text[18997]["Text721"]
tNpcGossip[18997]["Text722"] = tCoatWarehouse_Sale_Text[18997]["Text722"]
tNpcGossip[18997]["Text723"] = tCoatWarehouse_Sale_Text[18997]["Text723"]
tNpcGossip[18997]["Text724"] = tCoatWarehouse_Sale_Text[18997]["Text724"]
tNpcGossip[18997]["Text725"] = tCoatWarehouse_Sale_Text[18997]["Text725"]
tNpcGossip[18997]["Text726"] = tCoatWarehouse_Sale_Text[18997]["Text726"]
tNpcGossip[18997]["Text727"] = tCoatWarehouse_Sale_Text[18997]["Text727"]
tNpcGossip[18997]["Text728"] = tCoatWarehouse_Sale_Text[18997]["Text728"]
tNpcGossip[18997]["tOption7-2"] = {721,722}
tNpcGossip[18997]["Option721"] = tCoatWarehouse_Sale_Text[18997]["Option721"]
tNpcGossip[18997]["OptionPoint721"] = "6-1"
tNpcGossip[18997]["Option722"] = tCoatWarehouse_Sale_Text[18997]["Option722"]


tNpcGossip[18997]["Text8-1"] = {811,813}
tNpcGossip[18997]["Text811"] = tCoatWarehouse_Sale_Text[18997]["Text811"]
tNpcGossip[18997]["Text812"] = tCoatWarehouse_Sale_Text[18997]["Text812"]
tNpcGossip[18997]["Text813"] = tCoatWarehouse_Sale_Text[18997]["Text813"]
tNpcGossip[18997]["tOption8-1"] = {811,812}
tNpcGossip[18997]["Option811"] = tCoatWarehouse_Sale_Text[18997]["Option811"]
tNpcGossip[18997]["OptionPoint811"] = "6-1"
tNpcGossip[18997]["Option812"] = tCoatWarehouse_Sale_Text[18997]["Option812"]

tNpcGossip[18997]["Text8-2"] = {821,822,823}
tNpcGossip[18997]["Text821"] = tCoatWarehouse_Sale_Text[18997]["Text821"]
tNpcGossip[18997]["Text822"] = tCoatWarehouse_Sale_Text[18997]["Text822"]
tNpcGossip[18997]["Text823"] = tCoatWarehouse_Sale_Text[18997]["Text823"]
tNpcGossip[18997]["tOption8-2"] = {821,822}
tNpcGossip[18997]["Option821"] = tCoatWarehouse_Sale_Text[18997]["Option821"]
tNpcGossip[18997]["OptionPoint821"] = "6-1"
tNpcGossip[18997]["Option822"] = tCoatWarehouse_Sale_Text[18997]["Option822"]



tNpcFace[3939] = 418
tNpcGossip[18998] = tNpcGossip[18998] or DefaultNpc:new{}
tNpcGossip[18998]["OptionHidden"] = 1

--活动时间外
tNpcGossip[18998]["Text1-1"] = {111}
tNpcGossip[18998]["Text111"] = tCoatWarehouse_Sale_Text[18998]["Text111"]
tNpcGossip[18998]["tOption1-1"] = {111}
tNpcGossip[18998]["ChkFunc1-1"] = function()
	return not Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"])
end

tNpcGossip[18998]["Option111"] = tCoatWarehouse_Sale_Text[18998]["Option111"]

--活动时间内
tNpcGossip[18998]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[18998]["Text121"] = tCoatWarehouse_Sale_Text[18998]["Text121"]
tNpcGossip[18998]["Text122"] = tCoatWarehouse_Sale_Text[18998]["Text122"]
tNpcGossip[18998]["Text123"] = tCoatWarehouse_Sale_Text[18998]["Text123"]
tNpcGossip[18998]["Text124"] = tCoatWarehouse_Sale_Text[18998]["Text124"]
tNpcGossip[18998]["Text125"] = tCoatWarehouse_Sale_Text[18998]["Text125"]
tNpcGossip[18998]["tOption1-2"] = {121,122}
tNpcGossip[18998]["ChkFunc1-2"] = function()
	return true
end

tNpcGossip[18998]["Option121"] = tCoatWarehouse_Sale_Text[18998]["Option121"]
tNpcGossip[18998]["OptionPoint121"] = "2-1"
tNpcGossip[18998]["Option122"] = tCoatWarehouse_Sale_Text[18998]["Option122"]
tNpcGossip[18998]["OptionPoint122"] = "2-2"


tNpcGossip[18998]["Text2-1"] = {211}
tNpcGossip[18998]["Text211"] = tCoatWarehouse_Sale_Text[18998]["Text211"]
tNpcGossip[18998]["tOption2-1"] = {211,213,216,217,218,215,219,2110,2111,214}
tNpcGossip[18998]["Option211"] = tCoatWarehouse_Sale_Text[18998]["Option211"]
tNpcGossip[18998]["OptionFunc211"] = "CoatWarehouse_Sale_Exchange5Star</N>18998</N>188915"
tNpcGossip[18998]["Option212"] = tCoatWarehouse_Sale_Text[18998]["Option212"]
tNpcGossip[18998]["OptionFunc212"] = "CoatWarehouse_Sale_Exchange5Star</N>18998</N>192605"
tNpcGossip[18998]["Option213"] = tCoatWarehouse_Sale_Text[18998]["Option213"]
tNpcGossip[18998]["OptionFunc213"] = "CoatWarehouse_Sale_Exchange5Star</N>18998</N>193445"
tNpcGossip[18998]["Option215"] = tCoatWarehouse_Sale_Text[18998]["Option215"]
tNpcGossip[18998]["OptionFunc215"] = "CoatWarehouse_Sale_Exchange5Star</N>18998</N>189065"
tNpcGossip[18998]["Option216"] = tCoatWarehouse_Sale_Text[18998]["Option216"]
tNpcGossip[18998]["OptionFunc216"] = "CoatWarehouse_Sale_Exchange5Star</N>18998</N>193565"
tNpcGossip[18998]["Option217"] = tCoatWarehouse_Sale_Text[18998]["Option217"]
tNpcGossip[18998]["OptionFunc217"] = "CoatWarehouse_Sale_Exchange5Star</N>18998</N>193525"
tNpcGossip[18998]["Option218"] = tCoatWarehouse_Sale_Text[18998]["Option218"]
tNpcGossip[18998]["OptionFunc218"] = "CoatWarehouse_Sale_Exchange5Star</N>18998</N>189675"
tNpcGossip[18998]["Option219"] = tCoatWarehouse_Sale_Text[18998]["Option219"]
tNpcGossip[18998]["OptionFunc219"] = "CoatWarehouse_Sale_Exchange5Star</N>18998</N>195755"
tNpcGossip[18998]["Option2110"] = tCoatWarehouse_Sale_Text[18998]["Option2110"]
tNpcGossip[18998]["OptionFunc2110"] = "CoatWarehouse_Sale_Exchange5Star</N>18998</N>195365"
tNpcGossip[18998]["Option2111"] = tCoatWarehouse_Sale_Text[18998]["Option2111"]
tNpcGossip[18998]["OptionFunc2111"] = "CoatWarehouse_Sale_Exchange5Star</N>18998</N>195765"
tNpcGossip[18998]["Option214"] = tCoatWarehouse_Sale_Text[18998]["Option214"]


tNpcGossip[18998]["Text2-2"] = {221}
tNpcGossip[18998]["Text221"] = tCoatWarehouse_Sale_Text[18998]["Text221"]
tNpcGossip[18998]["tOption2-2"] = {221,222,223,225,226,227,228,229,2210,2211,2212,224}
tNpcGossip[18998]["Option221"] = tCoatWarehouse_Sale_Text[18998]["Option221"]
tNpcGossip[18998]["OptionFunc221"] = "CoatWarehouse_Sale_Exchange5Star</N>18998</N>200494"
tNpcGossip[18998]["Option222"] = tCoatWarehouse_Sale_Text[18998]["Option222"]
tNpcGossip[18998]["OptionFunc222"] = "CoatWarehouse_Sale_Exchange5Star</N>18998</N>200517"
tNpcGossip[18998]["Option223"] = tCoatWarehouse_Sale_Text[18998]["Option223"]
tNpcGossip[18998]["OptionFunc223"] = "CoatWarehouse_Sale_Exchange5Star</N>18998</N>200531"
tNpcGossip[18998]["Option225"] = tCoatWarehouse_Sale_Text[18998]["Option225"]
tNpcGossip[18998]["OptionFunc225"] = "CoatWarehouse_Sale_Exchange5Star</N>18998</N>200559"
tNpcGossip[18998]["Option226"] = tCoatWarehouse_Sale_Text[18998]["Option226"]
tNpcGossip[18998]["OptionFunc226"] = "CoatWarehouse_Sale_Exchange5Star</N>18998</N>200560"
tNpcGossip[18998]["Option227"] = tCoatWarehouse_Sale_Text[18998]["Option227"]
tNpcGossip[18998]["OptionFunc227"] = "CoatWarehouse_Sale_Exchange5Star</N>18998</N>200544"
tNpcGossip[18998]["Option228"] = tCoatWarehouse_Sale_Text[18998]["Option228"]
tNpcGossip[18998]["OptionFunc228"] = "CoatWarehouse_Sale_Exchange5Star</N>18998</N>200592"
tNpcGossip[18998]["Option229"] = tCoatWarehouse_Sale_Text[18998]["Option229"]
tNpcGossip[18998]["OptionFunc229"] = "CoatWarehouse_Sale_Exchange5Star</N>18998</N>200639"
tNpcGossip[18998]["Option2210"] = tCoatWarehouse_Sale_Text[18998]["Option2210"]
tNpcGossip[18998]["OptionFunc2210"] = "CoatWarehouse_Sale_Exchange5Star</N>18998</N>200640"
tNpcGossip[18998]["Option2211"] = tCoatWarehouse_Sale_Text[18998]["Option2211"]
tNpcGossip[18998]["OptionFunc2211"] = "CoatWarehouse_Sale_Exchange5Star</N>18998</N>200623"
tNpcGossip[18998]["Option2212"] = tCoatWarehouse_Sale_Text[18998]["Option2212"]
tNpcGossip[18998]["OptionFunc2212"] = "CoatWarehouse_Sale_Exchange5Star</N>18998</N>200624"
tNpcGossip[18998]["Option224"] = tCoatWarehouse_Sale_Text[18998]["Option224"]


--千年血玉数量不足
tNpcGossip[18998]["Text3-1"] = {311}
tNpcGossip[18998]["Text311"] = tCoatWarehouse_Sale_Text[18998]["Text311"]
tNpcGossip[18998]["tOption3-1"] = {311}
tNpcGossip[18998]["Option311"] = tCoatWarehouse_Sale_Text[18998]["Option311"]

--背包空间不足
tNpcGossip[18998]["Text3-2"] = {321}
tNpcGossip[18998]["Text321"] = tCoatWarehouse_Sale_Text[18998]["Text321"]
tNpcGossip[18998]["tOption3-2"] = {321}
tNpcGossip[18998]["Option321"] = tCoatWarehouse_Sale_Text[18998]["Option321"]

--二次确认
tNpcGossip[18998]["Text3-3"] = {331}
tNpcGossip[18998]["Text331"] = tCoatWarehouse_Sale_Text[18998]["Text331"]
tNpcGossip[18998]["tOption3-3"] = {331,332}
tNpcGossip[18998]["Option331"] = tCoatWarehouse_Sale_Text[18998]["Option331"]
tNpcGossip[18998]["OptionFunc331"] = "CoatWarehouse_Sale_ConfirmExchange</N>18998"
tNpcGossip[18998]["Option332"] = tCoatWarehouse_Sale_Text[18998]["Option332"]



--深海寻宝部分，后面上
tNpcFace[3975] = 156
tNpcGossip[19082] = tNpcGossip[19082] or DefaultNpc:new{}
tNpcGossip[19082]["OptionHidden"] = 1

--活动时间前
tNpcGossip[19082]["Text1-1"] = {111,112,113}
tNpcGossip[19082]["Text111"] = tCoatWarehouse_Sale_Text[19082]["Text111"]
tNpcGossip[19082]["Text112"] = tCoatWarehouse_Sale_Text[19082]["Text112"]
tNpcGossip[19082]["Text113"] = tCoatWarehouse_Sale_Text[19082]["Text113"]
tNpcGossip[19082]["tOption1-1"] = {111}
tNpcGossip[19082]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tCoatWarehouse_Sale_Const["BeforeActivityTime"])
end

tNpcGossip[19082]["Option111"] = tCoatWarehouse_Sale_Text[19082]["Option111"]
--活动时间后
tNpcGossip[19082]["Text1-2"] = {121,122}
tNpcGossip[19082]["Text121"] = tCoatWarehouse_Sale_Text[19082]["Text121"]
tNpcGossip[19082]["Text122"] = tCoatWarehouse_Sale_Text[19082]["Text122"]
tNpcGossip[19082]["tOption1-2"] = {121}
tNpcGossip[19082]["ChkFunc1-2"] = function()
	return not Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"])
end

tNpcGossip[19082]["Option121"] = tCoatWarehouse_Sale_Text[19082]["Option121"]

--活动时间内
tNpcGossip[19082]["Text1-3"] = {131,132,133}
tNpcGossip[19082]["Text131"] = tCoatWarehouse_Sale_Text[19082]["Text131"]
tNpcGossip[19082]["Text132"] = tCoatWarehouse_Sale_Text[19082]["Text132"]
tNpcGossip[19082]["Text133"] = tCoatWarehouse_Sale_Text[19082]["Text133"]
tNpcGossip[19082]["tOption1-3"] = {131,132}
tNpcGossip[19082]["ChkFunc1-3"] = function()
	--不是在新服活动期间，返回true
	local nDataAc = tCoatWarehouse_Sale_Const["GlobalAc"]
	--不在新服活动时间
	return Get_SysDynaGlobalData1(nDataAc) == 0
end

tNpcGossip[19082]["Option131"] = tCoatWarehouse_Sale_Text[19082]["Option131"]
tNpcGossip[19082]["OptionFunc131"] = "CoatWarehouse_Sale_ExchangXiuJade</N>19082"
tNpcGossip[19082]["Option132"] = tCoatWarehouse_Sale_Text[19082]["Option132"]

--新服狂欢活动
tNpcGossip[19082]["Text1-4"] = {141,142,143,144}
tNpcGossip[19082]["Text141"] = tCoatWarehouse_Sale_Text[19082]["Text141"]
tNpcGossip[19082]["Text142"] = tCoatWarehouse_Sale_Text[19082]["Text142"]
tNpcGossip[19082]["Text143"] = tCoatWarehouse_Sale_Text[19082]["Text143"]
tNpcGossip[19082]["Text144"] = tCoatWarehouse_Sale_Text[19082]["Text144"]
tNpcGossip[19082]["tOption1-4"] = {141,142,143,144}
tNpcGossip[19082]["ChkFunc1-4"] = function()
	
	local nEvent = tCoatWarehouse_Sale_Stc["NewSerEvent"]
	local nType = tCoatWarehouse_Sale_Stc["NewSerType"]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	local nData = Get_UserStatisticValue(nEvent,nType)
	
	--包含那个数字，表示已经兑换过了
	local sText1 = ""
	local sText2 = ""
	local sText3 = ""
	if Sys_ParseNumbersContain(1,nData) then
		sText1 = tCoatWarehouse_Sale_Text["ExchangeDone"]
	end
	if Sys_ParseNumbersContain(2,nData) then
		sText2 = tCoatWarehouse_Sale_Text["ExchangeDone"]
	end
	if Sys_ParseNumbersContain(4,nData) then
		sText3 = tCoatWarehouse_Sale_Text["ExchangeDone"]
	end
	
	tNpcGossip[19082]["Option141"] = string.format(tCoatWarehouse_Sale_Text[19082]["Option141"],sText1)
	tNpcGossip[19082]["Option142"] = string.format(tCoatWarehouse_Sale_Text[19082]["Option142"],sText2)
	tNpcGossip[19082]["Option143"] = string.format(tCoatWarehouse_Sale_Text[19082]["Option143"],sText3)
	
	return true
end


tNpcGossip[19082]["Option141"] = tCoatWarehouse_Sale_Text[19082]["Option141"]
tNpcGossip[19082]["OptionFunc141"] = "CoatWarehouse_Sale_NewExXiuJade</N>19082</N>711609</N>1</N>1"
tNpcGossip[19082]["Option142"] = tCoatWarehouse_Sale_Text[19082]["Option142"]
tNpcGossip[19082]["OptionFunc142"] = "CoatWarehouse_Sale_NewExXiuJade</N>19082</N>711610</N>2</N>2"
tNpcGossip[19082]["Option143"] = tCoatWarehouse_Sale_Text[19082]["Option143"]
tNpcGossip[19082]["OptionFunc143"] = "CoatWarehouse_Sale_NewExXiuJade</N>19082</N>711611</N>3</N>4"
tNpcGossip[19082]["Option144"] = tCoatWarehouse_Sale_Text[19082]["Option144"]


--失败，铜币数量不足
tNpcGossip[19082]["Text2-1"] = {211}
tNpcGossip[19082]["Text211"] = tCoatWarehouse_Sale_Text[19082]["Text211"]
tNpcGossip[19082]["tOption2-1"] = {211}
tNpcGossip[19082]["Option211"] = tCoatWarehouse_Sale_Text[19082]["Option211"]

--失败，当天已兑换
tNpcGossip[19082]["Text2-2"] = {221}
tNpcGossip[19082]["Text221"] = tCoatWarehouse_Sale_Text[19082]["Text221"]
tNpcGossip[19082]["tOption2-2"] = {221}
tNpcGossip[19082]["Option221"] = tCoatWarehouse_Sale_Text[19082]["Option221"]

--失败，背包满
tNpcGossip[19082]["Text2-3"] = {231}
tNpcGossip[19082]["Text231"] = tCoatWarehouse_Sale_Text[19082]["Text231"]
tNpcGossip[19082]["tOption2-3"] = {231}
tNpcGossip[19082]["Option231"] = tCoatWarehouse_Sale_Text[19082]["Option231"]

--成功
tNpcGossip[19082]["Text2-4"] = {241}
tNpcGossip[19082]["Text241"] = tCoatWarehouse_Sale_Text[19082]["Text241"]
tNpcGossip[19082]["tOption2-4"] = {241}
tNpcGossip[19082]["Option241"] = tCoatWarehouse_Sale_Text[19082]["Option241"]


tNpcGossip[19082]["Text3-1"] = {311}
tNpcGossip[19082]["Text311"] = tCoatWarehouse_Sale_Text[19082]["Text311"]
tNpcGossip[19082]["tOption3-1"] = {311}
tNpcGossip[19082]["Option311"] = tCoatWarehouse_Sale_Text[19082]["Option311"]

tNpcGossip[19082]["Text3-2"] = {321}
tNpcGossip[19082]["Text321"] = tCoatWarehouse_Sale_Text[19082]["Text321"]
tNpcGossip[19082]["tOption3-2"] = {321}
tNpcGossip[19082]["Option321"] = tCoatWarehouse_Sale_Text[19082]["Option321"]

tNpcGossip[19082]["Text3-3"] = {331}
tNpcGossip[19082]["Text331"] = tCoatWarehouse_Sale_Text[19082]["Text331"]
tNpcGossip[19082]["tOption3-3"] = {331}
tNpcGossip[19082]["Option331"] = tCoatWarehouse_Sale_Text[19082]["Option331"]

tNpcGossip[19082]["Text3-4"] = {341}
tNpcGossip[19082]["Text341"] = tCoatWarehouse_Sale_Text[19082]["Text341"]
tNpcGossip[19082]["tOption3-4"] = {341}
tNpcGossip[19082]["Option341"] = tCoatWarehouse_Sale_Text[19082]["Option341"]


--------------------------------------------------------------物品配置----------------------------------------------------------------

 --南宫三阁邀请函
tItemFace[3008220] = 641
tItem[3008220] = tItem[3008220] or {}
tItem[3008220]["Function"] = function(nItemId,sItemName)
	CoatWarehouse_Sale_BackpackLetter(nItemId)
end

tItem[3008220]["Text1-1"] = {111,112,113}
tItem[3008220]["Text111"] = tCoatWarehouse_Sale_Text[3008220]["Text111"]
tItem[3008220]["Text112"] = tCoatWarehouse_Sale_Text[3008220]["Text112"]
tItem[3008220]["Text113"] = tCoatWarehouse_Sale_Text[3008220]["Text113"]
tItem[3008220]["tOption1-1"] = {111}
tItem[3008220]["Option111"] = tCoatWarehouse_Sale_Text[3008220]["Option111"]
tItem[3008220]["OptionFunc111"] = "CoatWarehouse_Sale_DelAfterRead</N>3008220"


tItem[3008221] = tItem[3008221] or {}
tItem[3008221]["Function"] = function(nItemId,sItemName)
	CoatWarehouse_Sale_FindWayByItem(nItemId)
end

tItem[3008223] = tItem[3008223] or {}
tItem[3008223]["Function"] = function(nItemId,sItemName)
	CoatWarehouse_Sale_FindWayByItem(nItemId)
end

tItem[3008225] = tItem[3008225] or {}
tItem[3008225]["Function"] = function(nItemId,sItemName)
	CoatWarehouse_Sale_FindWayByItem(nItemId)
end



--岫山玉碎片
tItem[3008222] = tItem[3008222] or {}
tItem[3008222]["Function"] = function(nItemId,sItemName)
	CoatWarehouse_Sale_PieceCompose(nItemId)
end

--昆仑玉碎片
tItem[3008224] = tItem[3008224] or {}
tItem[3008224]["Function"] = function(nItemId,sItemName)
	CoatWarehouse_Sale_PieceCompose(nItemId)
end

--千年血玉碎片
tItem[3008226] = tItem[3008226] or {}
tItem[3008226]["Function"] = function(nItemId,sItemName)
	CoatWarehouse_Sale_PieceCompose(nItemId)
end

--暗黑魔龙制衣册残页
-- tItem[3008230] = tItem[3008230] or {}
-- tItem[3008230]["Function"] = function(nItemId,sItemName)
	-- CoatWarehouse_Sale_PieceCompose(nItemId)
-- end

--辉耀之刺制衣册残页
-- tItem[3008232] = tItem[3008232] or {}
-- tItem[3008232]["Function"] = function(nItemId,sItemName)
	-- CoatWarehouse_Sale_PieceCompose(nItemId)
-- end

--冰雪奇缘制衣册残页
-- tItem[3008254] = tItem[3008254] or {}
-- tItem[3008254]["Function"] = function(nItemId,sItemName)
	-- CoatWarehouse_Sale_PieceCompose(nItemId)
-- end

--马上有人民币制衣册残页
-- tItem[3008256] = tItem[3008256] or {}
-- tItem[3008256]["Function"] = function(nItemId,sItemName)
	-- CoatWarehouse_Sale_PieceCompose(nItemId)
-- end

--至善神羚制衣册残页
-- tItem[3008258] = tItem[3008258] or {}
-- tItem[3008258]["Function"] = function(nItemId,sItemName)
	-- CoatWarehouse_Sale_PieceCompose(nItemId)
-- end

--辉耀星辰之蝎制衣册残页
-- tItem[3008260] = tItem[3008260] or {}
-- tItem[3008260]["Function"] = function(nItemId,sItemName)
	-- CoatWarehouse_Sale_PieceCompose(nItemId)
-- end

--暗黑赤炎魔龙制衣册残页
-- tItem[3008262] = tItem[3008262] or {}
-- tItem[3008262]["Function"] = function(nItemId,sItemName)
	-- CoatWarehouse_Sale_PieceCompose(nItemId)
-- end

--七节尾蛮荒兽制衣册残页
-- tItem[3008264] = tItem[3008264] or {}
-- tItem[3008264]["Function"] = function(nItemId,sItemName)
	-- CoatWarehouse_Sale_PieceCompose(nItemId)
-- end

--四星时装制衣册残页
-- tItem[3008266] = tItem[3008266] or {}
-- tItem[3008266]["Function"] = function(nItemId,sItemName)
	-- CoatWarehouse_Sale_PieceCompose(nItemId)
-- end

--四星骑宠制衣册残页
-- tItem[3008268] = tItem[3008268] or {}
-- tItem[3008268]["Function"] = function(nItemId,sItemName)
	-- CoatWarehouse_Sale_PieceCompose(nItemId)
-- end

--三星时装制衣册残页
-- tItem[3008270] = tItem[3008270] or {}
-- tItem[3008270]["Function"] = function(nItemId,sItemName)
	-- CoatWarehouse_Sale_PieceCompose(nItemId)
-- end

--三星骑宠制衣册残页
-- tItem[3008323] = tItem[3008323] or {}
-- tItem[3008323]["Function"] = function(nItemId,sItemName)
	-- CoatWarehouse_Sale_PieceCompose(nItemId)
-- end

--《御风逍遥制衣册》
-- tItem[3008801] = tItem[3008801] or {}
-- tItem[3008801]["Function"] = function(nItemId,sItemName)
	-- CoatWarehouse_Sale_UseCoatList(nItemId)
-- end

--《暗黑魔龙制衣册》
tItem[3008229] = tItem[3008229] or {}
tItem[3008229]["Function"] = function(nItemId,sItemName)
	CoatWarehouse_Sale_UseCoatList(nItemId)
end

--《辉耀之刺制衣册》
tItem[3008231] = tItem[3008231] or {}
tItem[3008231]["Function"] = function(nItemId,sItemName)
	CoatWarehouse_Sale_UseCoatList(nItemId)
end

--《冰雪奇缘制衣册》
tItem[3008253] = tItem[3008253] or {}
tItem[3008253]["Function"] = function(nItemId,sItemName)
	CoatWarehouse_Sale_UseCoatList(nItemId)
end

--《马上有人民币制衣册》
tItem[3008255] = tItem[3008255] or {}
tItem[3008255]["Function"] = function(nItemId,sItemName)
	CoatWarehouse_Sale_UseCoatList(nItemId)
end

--《至善神羚制衣册》
tItem[3008257] = tItem[3008257] or {}
tItem[3008257]["Function"] = function(nItemId,sItemName)
	CoatWarehouse_Sale_UseCoatList(nItemId)
end

--《辉耀星辰之蝎制衣册》
tItem[3008259] = tItem[3008259] or {}
tItem[3008259]["Function"] = function(nItemId,sItemName)
	CoatWarehouse_Sale_UseCoatList(nItemId)
end

--《暗黑赤炎魔龙制衣册》
tItem[3008261] = tItem[3008261] or {}
tItem[3008261]["Function"] = function(nItemId,sItemName)
	CoatWarehouse_Sale_UseCoatList(nItemId)
end

--《七节尾蛮荒兽制衣册》
tItem[3008263] = tItem[3008263] or {}
tItem[3008263]["Function"] = function(nItemId,sItemName)
	CoatWarehouse_Sale_UseCoatList(nItemId)
end



--五星外套制衣册主对白
tItem["FiveStarCoat"] = {}
tItem["FiveStarCoat"]["Text1-1"] = {111,112}
tItem["FiveStarCoat"]["Text111"] = tCoatWarehouse_Sale_Text["FiveStarCoat"]["Text111"]
tItem["FiveStarCoat"]["Text112"] = tCoatWarehouse_Sale_Text["FiveStarCoat"]["Text112"]
tItem["FiveStarCoat"]["tOption1-1"] = {111,112}
tItem["FiveStarCoat"]["Option111"] = tCoatWarehouse_Sale_Text["FiveStarCoat"]["Option111"]
tItem["FiveStarCoat"]["OptionFunc111"] = "CoatWarehouse_Sale_DressMake"
tItem["FiveStarCoat"]["Option112"] = tCoatWarehouse_Sale_Text["FiveStarCoat"]["Option112"]

--材料不足
tItem["FiveStarCoat"]["Text2-1"] = {211,212}
tItem["FiveStarCoat"]["Text211"] = tCoatWarehouse_Sale_Text["FiveStarCoat"]["Text211"]
tItem["FiveStarCoat"]["Text212"] = tCoatWarehouse_Sale_Text["FiveStarCoat"]["Text212"]
tItem["FiveStarCoat"]["tOption2-1"] = {211}
tItem["FiveStarCoat"]["Option211"] = tCoatWarehouse_Sale_Text["FiveStarCoat"]["Option211"]

--背包空间不足
tItem["FiveStarCoat"]["Text2-2"] = {221}
tItem["FiveStarCoat"]["Text221"] = tCoatWarehouse_Sale_Text["FiveStarCoat"]["Text221"]
tItem["FiveStarCoat"]["tOption2-2"] = {221}
tItem["FiveStarCoat"]["Option221"] = tCoatWarehouse_Sale_Text["FiveStarCoat"]["Option221"]

--4星人物外套制衣册
tItem[3008265] = tItem[3008265] or {}
tItem[3008265]["Text1-1"] = {111}
tItem[3008265]["Text111"] = tCoatWarehouse_Sale_Text[3008265]["Text111"]
tItem[3008265]["tOption1-1"] = {111,112,113,114,115,116,117}
tItem[3008265]["Option111"] = tCoatWarehouse_Sale_Text[3008265]["Option111"]
tItem[3008265]["OptionFunc111"] = "CoatWarehouse_Sale_SelCoat</N>3008265</N>195375"
tItem[3008265]["Option112"] = tCoatWarehouse_Sale_Text[3008265]["Option112"]
tItem[3008265]["OptionFunc112"] = "CoatWarehouse_Sale_SelCoat</N>3008265</N>192695"
tItem[3008265]["Option113"] = tCoatWarehouse_Sale_Text[3008265]["Option113"]
tItem[3008265]["OptionFunc113"] = "CoatWarehouse_Sale_SelCoat</N>3008265</N>189085"
tItem[3008265]["Option114"] = tCoatWarehouse_Sale_Text[3008265]["Option114"]
tItem[3008265]["OptionFunc114"] = "CoatWarehouse_Sale_SelCoat</N>3008265</N>193195"
tItem[3008265]["Option115"] = tCoatWarehouse_Sale_Text[3008265]["Option115"]
tItem[3008265]["OptionFunc115"] = "CoatWarehouse_Sale_SelCoat</N>3008265</N>187325"
tItem[3008265]["Option116"] = tCoatWarehouse_Sale_Text[3008265]["Option116"]
tItem[3008265]["OptionFunc116"] = "CoatWarehouse_Sale_SelCoat</N>3008265</N>192615"
tItem[3008265]["Option117"] = tCoatWarehouse_Sale_Text[3008265]["Option117"]
tItem[3008265]["OptionFunc117"] = "CoatWarehouse_Sale_SelCoat</N>3008265</N>193115"


tItem[3008265]["Text2-1"] = {211,212}
tItem[3008265]["Text211"] = tCoatWarehouse_Sale_Text[3008265]["Text211"]
tItem[3008265]["Text212"] = tCoatWarehouse_Sale_Text[3008265]["Text212"]
tItem[3008265]["tOption2-1"] = {211,212}
tItem[3008265]["Option211"] = tCoatWarehouse_Sale_Text[3008265]["Option211"]
tItem[3008265]["OptionFunc211"] = "CoatWarehouse_Sale_BeginMakeCoat</N>3008265"
tItem[3008265]["Option212"] = tCoatWarehouse_Sale_Text[3008265]["Option212"]
tItem[3008265]["OptionPoint212"] = "1-1"

--材料不足
tItem[3008265]["Text3-1"] = {311,312}
tItem[3008265]["Text311"] = tCoatWarehouse_Sale_Text[3008265]["Text311"]
tItem[3008265]["Text312"] = tCoatWarehouse_Sale_Text[3008265]["Text312"]
tItem[3008265]["tOption3-1"] = {311}
tItem[3008265]["Option311"] = tCoatWarehouse_Sale_Text[3008265]["Option311"]

--背包空间已满
tItem[3008265]["Text3-2"] = {321}
tItem[3008265]["Text321"] = tCoatWarehouse_Sale_Text[3008265]["Text321"]
tItem[3008265]["tOption3-2"] = {321}
tItem[3008265]["Option321"] = tCoatWarehouse_Sale_Text[3008265]["Option321"]

tItem[3008267] = tItem[3008267] or {}
tItem[3008267]["Text1-1"] = {111}
tItem[3008267]["Text111"] = tCoatWarehouse_Sale_Text[3008267]["Text111"]
tItem[3008267]["tOption1-1"] = {111,112}
tItem[3008267]["Option111"] = tCoatWarehouse_Sale_Text[3008267]["Option111"]
tItem[3008267]["OptionFunc111"] = "CoatWarehouse_Sale_SelCoat</N>3008267</N>200500"
tItem[3008267]["Option112"] = tCoatWarehouse_Sale_Text[3008267]["Option112"]
tItem[3008267]["OptionFunc112"] = "CoatWarehouse_Sale_SelCoat</N>3008267</N>200495"

tItem[3008267]["Text2-1"] = {211,212}
tItem[3008267]["Text211"] = tCoatWarehouse_Sale_Text[3008267]["Text211"]
tItem[3008267]["Text212"] = tCoatWarehouse_Sale_Text[3008267]["Text212"]
tItem[3008267]["tOption2-1"] = {211,212}
tItem[3008267]["Option211"] = tCoatWarehouse_Sale_Text[3008267]["Option211"]
tItem[3008267]["OptionFunc211"] = "CoatWarehouse_Sale_BeginMakeCoat</N>3008265"
tItem[3008267]["Option212"] = tCoatWarehouse_Sale_Text[3008267]["Option212"]
tItem[3008267]["OptionPoint212"] = "1-1"

--材料不足
tItem[3008267]["Text3-1"] = {311,312}
tItem[3008267]["Text311"] = tCoatWarehouse_Sale_Text[3008267]["Text311"]
tItem[3008267]["Text312"] = tCoatWarehouse_Sale_Text[3008267]["Text312"]
tItem[3008267]["tOption3-1"] = {311}
tItem[3008267]["Option311"] = tCoatWarehouse_Sale_Text[3008267]["Option311"]

--背包空间已满
tItem[3008267]["Text3-2"] = {321}
tItem[3008267]["Text321"] = tCoatWarehouse_Sale_Text[3008267]["Text321"]
tItem[3008267]["tOption3-2"] = {321}
tItem[3008267]["Option321"] = tCoatWarehouse_Sale_Text[3008267]["Option321"]

tItem[3008269] = {}
tItem[3008269]["Text1-1"] = {111}
tItem[3008269]["Text111"] = tCoatWarehouse_Sale_Text[3008269]["Text111"]
tItem[3008269]["tOption1-1"] = {111,112,113,114,115,116,117,118}
tItem[3008269]["Option111"] = tCoatWarehouse_Sale_Text[3008269]["Option111"]
tItem[3008269]["OptionFunc111"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>192675"
tItem[3008269]["Option112"] = tCoatWarehouse_Sale_Text[3008269]["Option112"]
tItem[3008269]["OptionFunc112"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>184345"
tItem[3008269]["Option113"] = tCoatWarehouse_Sale_Text[3008269]["Option113"]
tItem[3008269]["OptionFunc113"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>187475"
tItem[3008269]["Option114"] = tCoatWarehouse_Sale_Text[3008269]["Option114"]
tItem[3008269]["OptionFunc114"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>192685"
tItem[3008269]["Option115"] = tCoatWarehouse_Sale_Text[3008269]["Option115"]
tItem[3008269]["OptionFunc115"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>183485"
tItem[3008269]["Option116"] = tCoatWarehouse_Sale_Text[3008269]["Option116"]
tItem[3008269]["OptionFunc116"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>184315"
tItem[3008269]["Option117"] = tCoatWarehouse_Sale_Text[3008269]["Option117"]
tItem[3008269]["OptionFunc117"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>183465"
tItem[3008269]["Option118"] = tCoatWarehouse_Sale_Text[3008269]["Option118"]
tItem[3008269]["OptionPoint118"] = "1-2"

tItem[3008269]["Text1-2"] = {121}
tItem[3008269]["Text121"] = tCoatWarehouse_Sale_Text[3008269]["Text121"]
tItem[3008269]["tOption1-2"] = {121,122,123,124,125,126,127,128}
tItem[3008269]["Option121"] = tCoatWarehouse_Sale_Text[3008269]["Option121"]
tItem[3008269]["OptionFunc121"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>189095"
tItem[3008269]["Option122"] = tCoatWarehouse_Sale_Text[3008269]["Option122"]
tItem[3008269]["OptionFunc122"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>192565"
tItem[3008269]["Option123"] = tCoatWarehouse_Sale_Text[3008269]["Option123"]
tItem[3008269]["OptionFunc123"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>192395"
tItem[3008269]["Option124"] = tCoatWarehouse_Sale_Text[3008269]["Option124"]
tItem[3008269]["OptionFunc124"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>188285"
tItem[3008269]["Option125"] = tCoatWarehouse_Sale_Text[3008269]["Option125"]
tItem[3008269]["OptionFunc125"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>183395"
tItem[3008269]["Option126"] = tCoatWarehouse_Sale_Text[3008269]["Option126"]
tItem[3008269]["OptionFunc126"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>183385"
tItem[3008269]["Option127"] = tCoatWarehouse_Sale_Text[3008269]["Option127"]
tItem[3008269]["OptionPoint127"] = "1-1"
tItem[3008269]["Option128"] = tCoatWarehouse_Sale_Text[3008269]["Option128"]
tItem[3008269]["OptionPoint128"] = "1-3"

tItem[3008269]["Text1-3"] = {131}
tItem[3008269]["Text131"] = tCoatWarehouse_Sale_Text[3008269]["Text131"]
tItem[3008269]["tOption1-3"] = {131,132,133,134,135,136,137,138}
tItem[3008269]["Option131"] = tCoatWarehouse_Sale_Text[3008269]["Option131"]
tItem[3008269]["OptionFunc131"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>188575"
tItem[3008269]["Option132"] = tCoatWarehouse_Sale_Text[3008269]["Option132"]
tItem[3008269]["OptionFunc132"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>184355"
tItem[3008269]["Option133"] = tCoatWarehouse_Sale_Text[3008269]["Option133"]
tItem[3008269]["OptionFunc133"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>192300"
tItem[3008269]["Option134"] = tCoatWarehouse_Sale_Text[3008269]["Option134"]
tItem[3008269]["OptionFunc134"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>192345"
tItem[3008269]["Option135"] = tCoatWarehouse_Sale_Text[3008269]["Option135"]
tItem[3008269]["OptionFunc135"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>193515"
tItem[3008269]["Option136"] = tCoatWarehouse_Sale_Text[3008269]["Option136"]
tItem[3008269]["OptionFunc136"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>192655"
tItem[3008269]["Option137"] = tCoatWarehouse_Sale_Text[3008269]["Option137"]
tItem[3008269]["OptionPoint137"] = "1-2"
tItem[3008269]["Option138"] = tCoatWarehouse_Sale_Text[3008269]["Option138"]
tItem[3008269]["OptionPoint138"] = "1-4"

tItem[3008269]["Text1-4"] = {141}
tItem[3008269]["Text141"] = tCoatWarehouse_Sale_Text[3008269]["Text141"]
tItem[3008269]["tOption1-4"] = {141,142,143,144,145,146,147,148}
tItem[3008269]["Option141"] = tCoatWarehouse_Sale_Text[3008269]["Option141"]
tItem[3008269]["OptionFunc141"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>188905"
tItem[3008269]["Option142"] = tCoatWarehouse_Sale_Text[3008269]["Option142"]
tItem[3008269]["OptionFunc142"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>189105"
tItem[3008269]["Option143"] = tCoatWarehouse_Sale_Text[3008269]["Option143"]
tItem[3008269]["OptionFunc143"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>187605"
tItem[3008269]["Option144"] = tCoatWarehouse_Sale_Text[3008269]["Option144"]
tItem[3008269]["OptionFunc144"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>189055"
tItem[3008269]["Option145"] = tCoatWarehouse_Sale_Text[3008269]["Option145"]
tItem[3008269]["OptionFunc145"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>194300"
tItem[3008269]["Option146"] = tCoatWarehouse_Sale_Text[3008269]["Option146"]
tItem[3008269]["OptionFunc146"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>184385"
tItem[3008269]["Option147"] = tCoatWarehouse_Sale_Text[3008269]["Option147"]
tItem[3008269]["OptionPoint147"] = "1-3"
tItem[3008269]["Option148"] = tCoatWarehouse_Sale_Text[3008269]["Option148"]
tItem[3008269]["OptionPoint148"] = "1-5"

tItem[3008269]["Text1-5"] = {151}
tItem[3008269]["Text151"] = tCoatWarehouse_Sale_Text[3008269]["Text151"]
tItem[3008269]["tOption1-5"] = {151,152,153,154,155,157}
tItem[3008269]["Option151"] = tCoatWarehouse_Sale_Text[3008269]["Option151"]
tItem[3008269]["OptionFunc151"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>192665"
tItem[3008269]["Option152"] = tCoatWarehouse_Sale_Text[3008269]["Option152"]
tItem[3008269]["OptionFunc152"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>183345"
tItem[3008269]["Option153"] = tCoatWarehouse_Sale_Text[3008269]["Option153"]
tItem[3008269]["OptionFunc153"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>192575"
tItem[3008269]["Option154"] = tCoatWarehouse_Sale_Text[3008269]["Option154"]
tItem[3008269]["OptionFunc154"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>184365"
tItem[3008269]["Option155"] = tCoatWarehouse_Sale_Text[3008269]["Option155"]
tItem[3008269]["OptionFunc155"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>192555"

tItem[3008269]["Option157"] = tCoatWarehouse_Sale_Text[3008269]["Option157"]
tItem[3008269]["OptionPoint157"] = "1-4"

tItem[3008269]["Text1-6"] = {161}
tItem[3008269]["Text161"] = tCoatWarehouse_Sale_Text[3008269]["Text161"]
tItem[3008269]["tOption1-6"] = {161,162,163,164,165,166,167,168}
tItem[3008269]["Option161"] = tCoatWarehouse_Sale_Text[3008269]["Option161"]
tItem[3008269]["OptionFunc161"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>184345"
tItem[3008269]["Option162"] = tCoatWarehouse_Sale_Text[3008269]["Option162"]
tItem[3008269]["OptionFunc162"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>184315"
tItem[3008269]["Option163"] = tCoatWarehouse_Sale_Text[3008269]["Option163"]
tItem[3008269]["OptionFunc163"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>183465"
tItem[3008269]["Option164"] = tCoatWarehouse_Sale_Text[3008269]["Option164"]
tItem[3008269]["OptionFunc164"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>192425"
tItem[3008269]["Option165"] = tCoatWarehouse_Sale_Text[3008269]["Option165"]
tItem[3008269]["OptionFunc165"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>192395"
tItem[3008269]["Option166"] = tCoatWarehouse_Sale_Text[3008269]["Option166"]
tItem[3008269]["OptionFunc166"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>187605"
tItem[3008269]["Option167"] = tCoatWarehouse_Sale_Text[3008269]["Option167"]
tItem[3008269]["OptionFunc167"] = "CoatWarehouse_Sale_SelCoat</N>3008269</N>193095"
tItem[3008269]["Option168"] = tCoatWarehouse_Sale_Text[3008269]["Option168"]
tItem[3008269]["OptionPoint168"] = "1-5"


tItem[3008269]["Text2-1"] = {211,212}
tItem[3008269]["Text211"] = tCoatWarehouse_Sale_Text[3008269]["Text211"]
tItem[3008269]["Text212"] = tCoatWarehouse_Sale_Text[3008269]["Text212"]
tItem[3008269]["tOption2-1"] = {211,212}
tItem[3008269]["Option211"] = tCoatWarehouse_Sale_Text[3008269]["Option211"]
tItem[3008269]["OptionFunc211"] = "CoatWarehouse_Sale_BeginMakeCoat</N>3008269"
tItem[3008269]["Option212"] = tCoatWarehouse_Sale_Text[3008269]["Option212"]
tItem[3008269]["OptionPoint212"] = "1-1"

--材料不足
tItem[3008269]["Text3-1"] = {311,312}
tItem[3008269]["Text311"] = tCoatWarehouse_Sale_Text[3008269]["Text311"]
tItem[3008269]["Text312"] = tCoatWarehouse_Sale_Text[3008269]["Text312"]
tItem[3008269]["tOption3-1"] = {311}
tItem[3008269]["Option311"] = tCoatWarehouse_Sale_Text[3008269]["Option311"]

--背包空间已满
tItem[3008269]["Text3-2"] = {321}
tItem[3008269]["Text321"] = tCoatWarehouse_Sale_Text[3008269]["Text321"]
tItem[3008269]["tOption3-2"] = {321}
tItem[3008269]["Option321"] = tCoatWarehouse_Sale_Text[3008269]["Option321"]

tItem[3008322] = tItem[3008322] or {}
tItem[3008322]["Text1-1"] = {111}
tItem[3008322]["Text111"] = tCoatWarehouse_Sale_Text[3008322]["Text111"]
tItem[3008322]["tOption1-1"] = {111,112,113,114,115,116,117,118}
tItem[3008322]["Option111"] = tCoatWarehouse_Sale_Text[3008322]["Option111"]
tItem[3008322]["OptionFunc111"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200492"
tItem[3008322]["Option112"] = tCoatWarehouse_Sale_Text[3008322]["Option112"]
tItem[3008322]["OptionFunc112"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200418"
tItem[3008322]["Option113"] = tCoatWarehouse_Sale_Text[3008322]["Option113"]
tItem[3008322]["OptionFunc113"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200417"
tItem[3008322]["Option114"] = tCoatWarehouse_Sale_Text[3008322]["Option114"]
tItem[3008322]["OptionFunc114"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200420"
tItem[3008322]["Option115"] = tCoatWarehouse_Sale_Text[3008322]["Option115"]
tItem[3008322]["OptionFunc115"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200411"
tItem[3008322]["Option116"] = tCoatWarehouse_Sale_Text[3008322]["Option116"]
tItem[3008322]["OptionFunc116"] ="CoatWarehouse_Sale_SelCoat</N>3008322</N>200107"
tItem[3008322]["Option117"] = tCoatWarehouse_Sale_Text[3008322]["Option117"]
tItem[3008322]["OptionFunc117"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200010"
tItem[3008322]["Option118"] = tCoatWarehouse_Sale_Text[3008322]["Option118"]
tItem[3008322]["OptionPoint118"] = "1-2"

tItem[3008322]["Text1-2"] = {121}
tItem[3008322]["Text121"] = tCoatWarehouse_Sale_Text[3008322]["Text121"]
tItem[3008322]["tOption1-2"] = {121,122,123,124,125,126,127,128}
tItem[3008322]["Option121"] = tCoatWarehouse_Sale_Text[3008322]["Option121"]
tItem[3008322]["OptionFunc121"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200459"
tItem[3008322]["Option122"] = tCoatWarehouse_Sale_Text[3008322]["Option122"]
tItem[3008322]["OptionFunc122"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200476"
tItem[3008322]["Option123"] = tCoatWarehouse_Sale_Text[3008322]["Option123"]
tItem[3008322]["OptionFunc123"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200499"
tItem[3008322]["Option124"] = tCoatWarehouse_Sale_Text[3008322]["Option124"]
tItem[3008322]["OptionFunc124"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200528"
tItem[3008322]["Option125"] = tCoatWarehouse_Sale_Text[3008322]["Option125"]
tItem[3008322]["OptionFunc125"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200474"
tItem[3008322]["Option126"] = tCoatWarehouse_Sale_Text[3008322]["Option126"]
tItem[3008322]["OptionFunc126"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200009"
tItem[3008322]["Option127"] = tCoatWarehouse_Sale_Text[3008322]["Option127"]
tItem[3008322]["OptionPoint127"] = "1-1"
tItem[3008322]["Option128"] = tCoatWarehouse_Sale_Text[3008322]["Option128"]
tItem[3008322]["OptionPoint128"] = "1-3"


tItem[3008322]["Text1-3"] = {131}
tItem[3008322]["Text131"] = tCoatWarehouse_Sale_Text[3008322]["Text131"]
tItem[3008322]["tOption1-3"] = {131,132,133,134,135,136,137,138}
tItem[3008322]["Option131"] = tCoatWarehouse_Sale_Text[3008322]["Option131"]
tItem[3008322]["OptionFunc131"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200562"
tItem[3008322]["Option132"] = tCoatWarehouse_Sale_Text[3008322]["Option132"]
tItem[3008322]["OptionFunc132"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200413"
tItem[3008322]["Option133"] = tCoatWarehouse_Sale_Text[3008322]["Option133"]
tItem[3008322]["OptionFunc133"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200487"
tItem[3008322]["Option134"] = tCoatWarehouse_Sale_Text[3008322]["Option134"]
tItem[3008322]["OptionFunc134"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200444"
tItem[3008322]["Option135"] = tCoatWarehouse_Sale_Text[3008322]["Option135"]
tItem[3008322]["OptionFunc135"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200108"
tItem[3008322]["Option136"] = tCoatWarehouse_Sale_Text[3008322]["Option136"]
tItem[3008322]["OptionFunc136"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200407"
tItem[3008322]["Option137"] = tCoatWarehouse_Sale_Text[3008322]["Option137"]
tItem[3008322]["OptionPoint137"] = "1-2"
tItem[3008322]["Option138"] = tCoatWarehouse_Sale_Text[3008322]["Option138"]
tItem[3008322]["OptionPoint138"] = "1-4"


tItem[3008322]["Text1-4"] = {141}
tItem[3008322]["Text141"] = tCoatWarehouse_Sale_Text[3008322]["Text141"]
tItem[3008322]["tOption1-4"] = {141,142,143,144,145,146,147,148}
tItem[3008322]["Option141"] = tCoatWarehouse_Sale_Text[3008322]["Option141"]
tItem[3008322]["OptionFunc141"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200514"
tItem[3008322]["Option142"] = tCoatWarehouse_Sale_Text[3008322]["Option142"]
tItem[3008322]["OptionFunc142"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200433"
tItem[3008322]["Option143"] = tCoatWarehouse_Sale_Text[3008322]["Option143"]
tItem[3008322]["OptionFunc143"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200438"
tItem[3008322]["Option144"] = tCoatWarehouse_Sale_Text[3008322]["Option144"]
tItem[3008322]["OptionFunc144"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200415"
tItem[3008322]["Option145"] = tCoatWarehouse_Sale_Text[3008322]["Option145"]
tItem[3008322]["OptionFunc145"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200426"
tItem[3008322]["Option146"] = tCoatWarehouse_Sale_Text[3008322]["Option146"]
tItem[3008322]["OptionFunc146"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200414"
tItem[3008322]["Option147"] = tCoatWarehouse_Sale_Text[3008322]["Option147"]
tItem[3008322]["OptionPoint147"] = "1-3"
tItem[3008322]["Option148"] = tCoatWarehouse_Sale_Text[3008322]["Option148"]
tItem[3008322]["OptionPoint148"] = "1-5"

tItem[3008322]["Text1-5"] = {151}
tItem[3008322]["Text151"] = tCoatWarehouse_Sale_Text[3008322]["Text151"]
tItem[3008322]["tOption1-5"] = {151,152,153,154,155,156,157,158}
tItem[3008322]["Option151"] = tCoatWarehouse_Sale_Text[3008322]["Option151"]
tItem[3008322]["OptionFunc151"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200421"
tItem[3008322]["Option152"] = tCoatWarehouse_Sale_Text[3008322]["Option152"]
tItem[3008322]["OptionFunc152"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200488"
tItem[3008322]["Option153"] = tCoatWarehouse_Sale_Text[3008322]["Option153"]
tItem[3008322]["OptionFunc153"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200412"
tItem[3008322]["Option154"] = tCoatWarehouse_Sale_Text[3008322]["Option154"]
tItem[3008322]["OptionFunc154"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200481"
tItem[3008322]["Option155"] = tCoatWarehouse_Sale_Text[3008322]["Option155"]
tItem[3008322]["OptionFunc155"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200490"
tItem[3008322]["Option156"] = tCoatWarehouse_Sale_Text[3008322]["Option156"]
tItem[3008322]["OptionFunc156"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200493"
tItem[3008322]["Option157"] = tCoatWarehouse_Sale_Text[3008322]["Option157"]
tItem[3008322]["OptionPoint157"] = "1-4"
tItem[3008322]["Option158"] = tCoatWarehouse_Sale_Text[3008322]["Option158"]
tItem[3008322]["OptionPoint158"] = "1-6"


tItem[3008322]["Text1-6"] = {161}
tItem[3008322]["Text161"] = tCoatWarehouse_Sale_Text[3008322]["Text161"]
tItem[3008322]["tOption1-6"] = {161,162,163,164,165,166,167,168}
tItem[3008322]["Option161"] = tCoatWarehouse_Sale_Text[3008322]["Option161"]
tItem[3008322]["OptionFunc161"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200403"
tItem[3008322]["Option162"] = tCoatWarehouse_Sale_Text[3008322]["Option162"]
tItem[3008322]["OptionFunc162"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200443"
tItem[3008322]["Option163"] = tCoatWarehouse_Sale_Text[3008322]["Option163"]
tItem[3008322]["OptionFunc163"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200503"
tItem[3008322]["Option164"] = tCoatWarehouse_Sale_Text[3008322]["Option164"]
tItem[3008322]["OptionFunc164"] = "CoatWarehouse_Sale_SelCoat</N>3008322</N>200491"
tItem[3008322]["Option165"] = tCoatWarehouse_Sale_Text[3008322]["Option165"]
tItem[3008322]["OptionPoint165"] = "1-5"



tItem[3008322]["Text2-1"] = {211,212}
tItem[3008322]["Text211"] = tCoatWarehouse_Sale_Text[3008322]["Text211"]
tItem[3008322]["Text212"] = tCoatWarehouse_Sale_Text[3008322]["Text212"]
tItem[3008322]["tOption2-1"] = {211,212}
tItem[3008322]["Option211"] = tCoatWarehouse_Sale_Text[3008322]["Option211"]
tItem[3008322]["OptionFunc211"] = "CoatWarehouse_Sale_BeginMakeCoat</N>3008322"
tItem[3008322]["Option212"] = tCoatWarehouse_Sale_Text[3008322]["Option212"]
tItem[3008322]["OptionPoint212"] = "1-1"

--材料不足
tItem[3008322]["Text3-1"] = {311,312}
tItem[3008322]["Text311"] = tCoatWarehouse_Sale_Text[3008322]["Text311"]
tItem[3008322]["Text312"] = tCoatWarehouse_Sale_Text[3008322]["Text312"]
tItem[3008322]["tOption3-1"] = {311}
tItem[3008322]["Option311"] = tCoatWarehouse_Sale_Text[3008322]["Option311"]

--背包空间已满
tItem[3008322]["Text3-2"] = {321}
tItem[3008322]["Text321"] = tCoatWarehouse_Sale_Text[3008322]["Text321"]
tItem[3008322]["tOption3-2"] = {321}
tItem[3008322]["Option321"] = tCoatWarehouse_Sale_Text[3008322]["Option321"]


--特制岫山玉礼包
tItem[3008610] = tItem[3008610] or {}
tItem[3008610]["Function"] = function(nItemId,sItemName)
	CoatWarehouse_Sale_UseXiuJadePack(nItemId)
end

--特制岫山玉礼包
tItem[3008611] = tItem[3008611] or {}
tItem[3008611]["Function"] = function(nItemId,sItemName)
	CoatWarehouse_Sale_UseXiuJadePack(nItemId)
end

--莲子合成
tItem[3200880] = tItem[3200880] or {}
tItem[3200880]["Function"] = function(nItemId,sItemName)
	CoatWarehouse_Sale_ItemHC(nItemId,sItemName)
end

-- 金莲花碎片
tItem[3200881] = tItem[3200881] or {}
tItem[3200881]["Function"] = function(nItemId,sItemName)
	CoatWarehouse_Sale_JLHItemHC(nItemId,sItemName)
end

-- 可选包
tItem[3200883] = tItem[3200883] or {}
tItem[3200883]["Text1-1"] = {111}
tItem[3200883]["Text111"] = tCoatWarehouse_Sale_Text[3200883]["Text111"]

tItem[3200883]["tOption1-1"] = {1,2,3,4,5}

tItem[3200883]["Option1"] = tCoatWarehouse_Sale_Text[3200883]["Option1"]
tItem[3200883]["OptionFunc1"] = "CoatWarehouse_Sale_OpenSelectPack</N>3200883</N>1"

tItem[3200883]["Option2"] = tCoatWarehouse_Sale_Text[3200883]["Option2"]
tItem[3200883]["OptionFunc2"] = "CoatWarehouse_Sale_OpenSelectPack</N>3200883</N>2"
tItem[3200883]["OptionChkFunc2"] = function()
	local nUserLevel = Get_UserLevel()
	
	return nUserLevel < G_User_MaxLev
end

tItem[3200883]["Option3"] = tCoatWarehouse_Sale_Text[3200883]["Option3"]
tItem[3200883]["OptionFunc3"] = "CoatWarehouse_Sale_OpenSelectPack</N>3200883</N>3"

tItem[3200883]["Option4"] = tCoatWarehouse_Sale_Text[3200883]["Option4"]
tItem[3200883]["OptionFunc4"] = "CoatWarehouse_Sale_OpenSelectPack</N>3200883</N>4"

tItem[3200883]["Option5"] = tCoatWarehouse_Sale_Text[3200883]["Option5"]


tItem[3200883]["Text2-1"] = {211}
tItem[3200883]["Text211"] = tCoatWarehouse_Sale_Text[3200883]["Text211"]

tItem[3200883]["tOption2-1"] = {6,7}

tItem[3200883]["Option6"] = tCoatWarehouse_Sale_Text[3200883]["Option6"]
tItem[3200883]["OptionFunc6"] = ""

tItem[3200883]["Option7"] = tCoatWarehouse_Sale_Text[3200883]["Option7"]


--
tItem[3200882] = tItem[3200882] or {}
tItem[3200882]["Text1-1"] = {111}
tItem[3200882]["Text111"] = tCoatWarehouse_Sale_Text[3200882]["Text111"]
tItem[3200882]["tOption1-1"] = {1,2,3}

tItem[3200882]["Option1"] = tCoatWarehouse_Sale_Text[3200882]["Option1"]
tItem[3200882]["OptionFunc1"] = "CoatWarehouse_Sale_OpenSlXy</N>3200882</N>1"

tItem[3200882]["Option2"] = tCoatWarehouse_Sale_Text[3200882]["Option2"]
tItem[3200882]["OptionFunc2"] = "CoatWarehouse_Sale_OpenSlXy</N>3200882</N>2"

tItem[3200882]["Option3"] = tCoatWarehouse_Sale_Text[3200882]["Option3"]

-- 二次确认
tItem[3200882]["Text2-1"] = {211}
tItem[3200882]["Text211"] = tCoatWarehouse_Sale_Text[3200882]["Text211"]
tItem[3200882]["tOption2-1"] = {4,5}

tItem[3200882]["Option4"] = tCoatWarehouse_Sale_Text[3200882]["Option4"]
tItem[3200882]["OptionFunc4"] = ""

tItem[3200882]["Option5"] = tCoatWarehouse_Sale_Text[3200882]["Option5"]


tItem[3301053] = tItem[3301053] or {}
tItem[3301053]["Text1-1"] = {111}
tItem[3301053]["Text111"] = tCoatWarehouse_Sale_Text[3301053]["Text111"]
tItem[3301053]["tOption1-1"] = {1,2,3}

tItem[3301053]["Option1"] = tCoatWarehouse_Sale_Text[3301053]["Option1"]
tItem[3301053]["OptionFunc1"] = "CoatWarehouse_Sale_GetFirst</N>3301053</N>1"

tItem[3301053]["Option2"] = tCoatWarehouse_Sale_Text[3301053]["Option2"]
tItem[3301053]["OptionFunc2"] = "CoatWarehouse_Sale_GetFirst</N>3301053</N>2"

tItem[3301053]["Option3"] = tCoatWarehouse_Sale_Text[3301053]["Option3"]
tItem[3301053]["OptionFunc3"] = "CoatWarehouse_Sale_GetFirst</N>3301053</N>3"




------------------------------------------------------------------------------------------------------------

-- 服务器启动触发
tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],CoatWarehouse_Sale_Check)
--时间自检
--'00:00 00:07'
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],CoatWarehouse_Sale_Check)
-- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
-- table.insert(tOntimerMin_HM[0001],CoatWarehouse_Sale_Check)
-- tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
-- table.insert(tOntimerMin_HM[0002],CoatWarehouse_Sale_Check)
-- tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
-- table.insert(tOntimerMin_HM[0003],CoatWarehouse_Sale_Check)
-- tOntimerMin_HM[0004] = tOntimerMin_HM[0004] or {}
-- table.insert(tOntimerMin_HM[0004],CoatWarehouse_Sale_Check)
-- tOntimerMin_HM[0005] = tOntimerMin_HM[0005] or {}
-- table.insert(tOntimerMin_HM[0005],CoatWarehouse_Sale_Check)

-- tSystem_Prompet_Func = tSystem_Prompet_Func or {}
-- table.insert(tSystem_Prompet_Func,CoatWarehouse_Sale_Check)

