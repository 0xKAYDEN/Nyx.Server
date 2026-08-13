------------------------------------------------------------------------------------
--Name:			180827[英文征服][活动脚本]时装盛会活动
--Purpose:		外套活动
--Creator:		wzh
--Created:		2018-08-27
------------------------------------------------------------------------------------
-- 前缀
-- FashionEvent_

-- LogId 12001156

-- stc掩码说明 
-- stc 182,59	记录背包信是否领取
-- stc 182,86	记录竞标天石数
-- stc 182,87	记录竞标外套id
-- stc 182,88	是否屏蔽出价二次确认·登录重置
-- stc 182,89	是否屏蔽加价二次确认·登录重置
-- stc 182,90	是否发放过凭证
-- stc 182,91	玩家累计时尚值
-- stc 182,92	是否屏蔽洗赠二次确认·登录重置
-- stc 182,93	阶段奖励
-- stc 182,94	是否成功学习时尚秘诀·维多利亚
-- stc 182,95	求教小礼序号·维多利亚
-- stc 182,96	是否成功学习时尚秘诀·贝克汉姆
-- stc 182,97	求教小礼序号·贝克汉姆
-- stc 182,98	每日上线给1个1星时装碎片
-- stc 182,99	每日杀怪获得1星时装碎片数
-- stc 183,00	每日杀怪获得2星时装碎片数


-- 全局表说明
-- global 52986	记录玩家上交的五件最高星级外套的id
-- global 52987	记录玩家上交的五件最高星级外套的星级
-- global 52988	记录进入竞拍外套的id
-- global 52989	记录进入竞拍外套的星级
-- global 52990	记录竞拍价格
-- global 52991	记录玩家ID
-- global 52999	记录玩家名
-- global 52992~52995	时尚值排行榜

---------------------------------------------常量配置部分---------------------------------------
-- 常量表
local tFashionEvent_Cont = {}
	-- 等级限制
	tFashionEvent_Cont["Level"] = 80
	tFashionEvent_Cont["Metempsychosis"] = 0
	
	-- 输入框长度
	tFashionEvent_Cont["Length"] = 15
	
	-- 凭证发奖
	tFashionEvent_Cont["Voucher"] = {}
	tFashionEvent_Cont["Voucher"]["ActionId"] = 569837
	tFashionEvent_Cont["Voucher"]["MailExistDay"] = 1
	
	-- 邮件存在时间
	tFashionEvent_Cont["MailExistDay"] = 30
	
	-- 洗赠所需天石
	tFashionEvent_Cont["WashCost"] = 10000
	
	-- 掩码对应
	tFashionEvent_Cont["StcIndex"] = {}
	tFashionEvent_Cont["StcIndex"][23189] = 9
	tFashionEvent_Cont["StcIndex"][23190] = 11
	
	-- Global
	-- 玩家上交的外套前五
	tFashionEvent_Cont["NoAuctionGlobal"] = {}
	tFashionEvent_Cont["NoAuctionGlobal"]["CoatId"] = 52986				-- 记录玩家上交的五件最高星级外套的id
	tFashionEvent_Cont["NoAuctionGlobal"]["CoatLevel"] = 52987			-- 记录玩家上交的五件最高星级外套的星级
	-- 进入竞拍的外套
	tFashionEvent_Cont["AuctionGlobal"] = {}
	tFashionEvent_Cont["AuctionGlobal"]["CoatId"] = 52988				-- 记录进入竞拍外套的id
	tFashionEvent_Cont["AuctionGlobal"]["CoatLevel"] = 52989			-- 记录进入竞拍外套的星级
	-- 竞拍得主
	tFashionEvent_Cont["AuctionGainer"] = {}
	tFashionEvent_Cont["AuctionGainer"]["Price"] = 52990				-- 记录竞拍价格
	tFashionEvent_Cont["AuctionGainer"]["UserId"] = 52991				-- 记录玩家ID
	tFashionEvent_Cont["AuctionGainer"]["UserName"] = 52999				-- 记录玩家名
	
	-- 时尚值
	tFashionEvent_Cont["FashionValue"] = {}
	-- 上交
	tFashionEvent_Cont["FashionValue"]["HandIn"] = {}
	tFashionEvent_Cont["FashionValue"]["HandIn"][1] = 300
	tFashionEvent_Cont["FashionValue"]["HandIn"][2] = 1500
	tFashionEvent_Cont["FashionValue"]["HandIn"][3] = 4500
	tFashionEvent_Cont["FashionValue"]["HandIn"][4] = 15000
	tFashionEvent_Cont["FashionValue"]["HandIn"][5] = 60000
	-- 阶段
	tFashionEvent_Cont["FashionValue"]["Stage"] = {}
	tFashionEvent_Cont["FashionValue"]["Stage"][1] = 100
	tFashionEvent_Cont["FashionValue"]["Stage"][2] = 500
	tFashionEvent_Cont["FashionValue"]["Stage"][3] = 1500
	tFashionEvent_Cont["FashionValue"]["Stage"][4] = 5000
	tFashionEvent_Cont["FashionValue"]["Stage"][5] = 20000
	-- 合成
	tFashionEvent_Cont["FashionValue"]["Compound"] = {}
	tFashionEvent_Cont["FashionValue"]["Compound"][3310695] = 100
	tFashionEvent_Cont["FashionValue"]["Compound"][3310696] = 500
	tFashionEvent_Cont["FashionValue"]["Compound"][3310697] = 1500
	tFashionEvent_Cont["FashionValue"]["Compound"][3310698] = 5000
	tFashionEvent_Cont["FashionValue"]["Compound"][3310699] = 20000
	
	-- 求教小礼
	tFashionEvent_Cont["NeedItem"] = {}
	tFashionEvent_Cont["NeedItem"][1] = {}
	tFashionEvent_Cont["NeedItem"][1]["ItemId"] = 3003125
	tFashionEvent_Cont["NeedItem"][1]["Num"] = 5
	tFashionEvent_Cont["NeedItem"][2] = {}
	tFashionEvent_Cont["NeedItem"][2]["ItemId"] = 3003125
	tFashionEvent_Cont["NeedItem"][2]["Num"] = 10
	tFashionEvent_Cont["NeedItem"][3] = {}
	tFashionEvent_Cont["NeedItem"][3]["ItemId"] = 3002030
	tFashionEvent_Cont["NeedItem"][3]["Num"] = 5
	tFashionEvent_Cont["NeedItem"][4] = {}
	tFashionEvent_Cont["NeedItem"][4]["ItemId"] = 3002030
	tFashionEvent_Cont["NeedItem"][4]["Num"] = 10
	tFashionEvent_Cont["NeedItem"][5] = {}
	tFashionEvent_Cont["NeedItem"][5]["ItemId"] = 754009
	tFashionEvent_Cont["NeedItem"][5]["Num"] = 1
	tFashionEvent_Cont["NeedItem"][6] = {}
	tFashionEvent_Cont["NeedItem"][6]["ItemId"] = 753009
	tFashionEvent_Cont["NeedItem"][6]["Num"] = 1
	tFashionEvent_Cont["NeedItem"][7] = {}
	tFashionEvent_Cont["NeedItem"][7]["ItemId"] = 752009
	tFashionEvent_Cont["NeedItem"][7]["Num"] = 1
	tFashionEvent_Cont["NeedItem"][8] = {}
	tFashionEvent_Cont["NeedItem"][8]["ItemId"] = 751009
	tFashionEvent_Cont["NeedItem"][8]["Num"] = 1
	tFashionEvent_Cont["NeedItem"][9] = {}
	tFashionEvent_Cont["NeedItem"][9]["ItemId"] = 754099
	tFashionEvent_Cont["NeedItem"][9]["Num"] = 1
	tFashionEvent_Cont["NeedItem"][10] = {}
	tFashionEvent_Cont["NeedItem"][10]["ItemId"] = 753099
	tFashionEvent_Cont["NeedItem"][10]["Num"] = 1
	tFashionEvent_Cont["NeedItem"][11] = {}
	tFashionEvent_Cont["NeedItem"][11]["ItemId"] = 752099
	tFashionEvent_Cont["NeedItem"][11]["Num"] = 1
	tFashionEvent_Cont["NeedItem"][12] = {}
	tFashionEvent_Cont["NeedItem"][12]["ItemId"] = 751099
	tFashionEvent_Cont["NeedItem"][12]["Num"] = 1
	tFashionEvent_Cont["NeedItem"][13] = {}
	tFashionEvent_Cont["NeedItem"][13]["ItemId"] = 754999
	tFashionEvent_Cont["NeedItem"][13]["Num"] = 1
	tFashionEvent_Cont["NeedItem"][14] = {}
	tFashionEvent_Cont["NeedItem"][14]["ItemId"] = 753999
	tFashionEvent_Cont["NeedItem"][14]["Num"] = 1
	tFashionEvent_Cont["NeedItem"][15] = {}
	tFashionEvent_Cont["NeedItem"][15]["ItemId"] = 752999
	tFashionEvent_Cont["NeedItem"][15]["Num"] = 1
	tFashionEvent_Cont["NeedItem"][16] = {}
	tFashionEvent_Cont["NeedItem"][16]["ItemId"] = 751999
	tFashionEvent_Cont["NeedItem"][16]["Num"] = 1
	
	-- 外套
	tFashionEvent_Cont["Coat"] = {}
	-- 一星外套
	tFashionEvent_Cont["Coat"][1] = {}
	-- 苗家风情
	tFashionEvent_Cont["Coat"][1][1]= 181345
	-- 草原之风
	tFashionEvent_Cont["Coat"][1][2] = 181365
	-- 天山情韵
	tFashionEvent_Cont["Coat"][1][3] = 181475
	-- 满清王风
	tFashionEvent_Cont["Coat"][1][4] = 181385
	-- 景颇彩装
	tFashionEvent_Cont["Coat"][1][5] = 182305
	-- 塔吉克盛装
	tFashionEvent_Cont["Coat"][1][6] = 182315
	-- 回乡风情
	tFashionEvent_Cont["Coat"][1][7] = 182325
	-- 霓裳花影
	tFashionEvent_Cont["Coat"][1][8] = 182385
	-- 幽兰夜月
	tFashionEvent_Cont["Coat"][1][9] = 182345
	-- 吉祥天香
	tFashionEvent_Cont["Coat"][1][10] = 182365
	
	-- 二星外套
	tFashionEvent_Cont["Coat"][2] = {}
	-- 金色富贵长袍
	tFashionEvent_Cont["Coat"][2][1] = 191405
	-- 红色富贵长袍
	tFashionEvent_Cont["Coat"][2][2] = 191905
	-- 锦绣富贵长袍
	tFashionEvent_Cont["Coat"][2][3] = 183425
	-- 暗夜侠套装
	tFashionEvent_Cont["Coat"][2][4] = 192185
	-- 百年好合
	tFashionEvent_Cont["Coat"][2][5] = 181535
	-- 斯巴达战神套装
	tFashionEvent_Cont["Coat"][2][6] = 184375
	-- 巫师暗袍
	tFashionEvent_Cont["Coat"][2][7] = 181355
	-- NOBODY套装
	tFashionEvent_Cont["Coat"][2][8] = 183365
	-- 加勒比传说套装
	tFashionEvent_Cont["Coat"][2][9] = 183375
	-- 铁血警星套装
	tFashionEvent_Cont["Coat"][2][10] = 183335
	
	-- 三星外套
	tFashionEvent_Cont["Coat"][3] = {}
	-- 轻舞飞扬
	tFashionEvent_Cont["Coat"][3][1] = 195055
	-- 紫音青衫
	tFashionEvent_Cont["Coat"][3][2] = 194865
	-- 天仙子
	tFashionEvent_Cont["Coat"][3][3] = 194375
	-- 冰雪奇缘
	tFashionEvent_Cont["Coat"][3][4] = 193515
	-- 喵基尼
	tFashionEvent_Cont["Coat"][3][5] = 193545
	-- FoxSpirit
	tFashionEvent_Cont["Coat"][3][6] = 192345
	-- 夏威夷阳光
	tFashionEvent_Cont["Coat"][3][7] = 189665
	-- 夜舞未央
	tFashionEvent_Cont["Coat"][3][8] = 188575
	-- 时尚魅力套装
	tFashionEvent_Cont["Coat"][3][9] = 183485
	-- 优雅晚装
	tFashionEvent_Cont["Coat"][3][10] = 184355
	
	-- 四星外套
	tFashionEvent_Cont["Coat"][4] = {}
	-- 洋洋得意套装
	tFashionEvent_Cont["Coat"][4][1] = 193205
	-- 春风得意
	tFashionEvent_Cont["Coat"][4][2] = 193225
	-- 江山一统
	tFashionEvent_Cont["Coat"][4][3] = 193325
	-- 孔雀东南飞
	tFashionEvent_Cont["Coat"][4][4] = 193295
	-- 浪客剑魂
	tFashionEvent_Cont["Coat"][4][5] = 188185
	-- 蝶恋花
	tFashionEvent_Cont["Coat"][4][6] = 193695
	-- 天仙子·星灵
	tFashionEvent_Cont["Coat"][4][7] = 194385
	-- 狐妖装【魅彩版】
	tFashionEvent_Cont["Coat"][4][8] = 194405
	-- GotTalent
	tFashionEvent_Cont["Coat"][4][9] = 187325
	-- Winner-take-all
	tFashionEvent_Cont["Coat"][4][10] = 192635
	
	-- 五星外套
	tFashionEvent_Cont["Coat"][5] = {}
	-- 蝶恋花·玫语
	tFashionEvent_Cont["Coat"][5][1] = 193625
	-- 天仙子·月华
	tFashionEvent_Cont["Coat"][5][2] = 194395
	-- 轻舞飞扬·盈波
	tFashionEvent_Cont["Coat"][5][3] = 195045
	-- 紫音青衫【霞光】
	tFashionEvent_Cont["Coat"][5][4] = 194875
	-- 喵基尼【璀璨版】
	tFashionEvent_Cont["Coat"][5][5] = 193565
	
	-- 外套发奖
	tFashionEvent_Cont["CoatAction"] = {}
	-- 一星外套发奖id
	tFashionEvent_Cont["CoatAction"][181345] = 569838
	tFashionEvent_Cont["CoatAction"][181365] = 569839
	tFashionEvent_Cont["CoatAction"][181475] = 569840
	tFashionEvent_Cont["CoatAction"][181385] = 569841
	tFashionEvent_Cont["CoatAction"][182305] = 569842
	tFashionEvent_Cont["CoatAction"][182315] = 569843
	tFashionEvent_Cont["CoatAction"][182325] = 569844
	tFashionEvent_Cont["CoatAction"][182385] = 569845
	tFashionEvent_Cont["CoatAction"][182345] = 569846
	tFashionEvent_Cont["CoatAction"][182365] = 569847
	-- 二星外套发奖id 
	tFashionEvent_Cont["CoatAction"][191405] = 569848
	tFashionEvent_Cont["CoatAction"][191905] = 569849
	tFashionEvent_Cont["CoatAction"][183425] = 569850
	tFashionEvent_Cont["CoatAction"][192185] = 569851
	tFashionEvent_Cont["CoatAction"][181535] = 569852
	tFashionEvent_Cont["CoatAction"][184375] = 569853
	tFashionEvent_Cont["CoatAction"][181355] = 569854
	tFashionEvent_Cont["CoatAction"][183365] = 569855
	tFashionEvent_Cont["CoatAction"][183375] = 569856
	tFashionEvent_Cont["CoatAction"][183335] = 569857
	-- 三星外套发奖id 
	tFashionEvent_Cont["CoatAction"][195055] = 569858
	tFashionEvent_Cont["CoatAction"][194865] = 569859
	tFashionEvent_Cont["CoatAction"][194375] = 569860
	tFashionEvent_Cont["CoatAction"][193515] = 569861
	tFashionEvent_Cont["CoatAction"][193545] = 569862
	tFashionEvent_Cont["CoatAction"][192345] = 569863
	tFashionEvent_Cont["CoatAction"][189665] = 569864
	tFashionEvent_Cont["CoatAction"][188575] = 569865
	tFashionEvent_Cont["CoatAction"][183485] = 569866
	tFashionEvent_Cont["CoatAction"][184355] = 569867
	-- 四星外套发奖id 
	tFashionEvent_Cont["CoatAction"][193205] = 569868
	tFashionEvent_Cont["CoatAction"][193225] = 569869
	tFashionEvent_Cont["CoatAction"][187325] = 569870
	tFashionEvent_Cont["CoatAction"][192635] = 569871
	tFashionEvent_Cont["CoatAction"][193325] = 569872
	tFashionEvent_Cont["CoatAction"][193295] = 569873
	tFashionEvent_Cont["CoatAction"][188185] = 569874
	tFashionEvent_Cont["CoatAction"][193695] = 569875
	tFashionEvent_Cont["CoatAction"][194385] = 569876
	tFashionEvent_Cont["CoatAction"][194405] = 569877
	-- 五星外套发奖id 
	tFashionEvent_Cont["CoatAction"][193625] = 569878
	tFashionEvent_Cont["CoatAction"][194395] = 569879
	tFashionEvent_Cont["CoatAction"][195045] = 569880
	tFashionEvent_Cont["CoatAction"][194875] = 569881
	tFashionEvent_Cont["CoatAction"][193565] = 569882
	
	-- 前十发奖
	tFashionEvent_Cont["RankAction"] = {}
	tFashionEvent_Cont["RankAction"][1] = 569883
	tFashionEvent_Cont["RankAction"][2] = 569884
	tFashionEvent_Cont["RankAction"][3] = 569885
	tFashionEvent_Cont["RankAction"][4] = 569886
	tFashionEvent_Cont["RankAction"][5] = 569887
	tFashionEvent_Cont["RankAction"][6] = 569888
	tFashionEvent_Cont["RankAction"][7] = 569889
	tFashionEvent_Cont["RankAction"][8] = 569890
	tFashionEvent_Cont["RankAction"][9] = 569890
	tFashionEvent_Cont["RankAction"][10] = 569890
	
	-- 前十奖励ID
	tFashionEvent_Cont["RankItem"] = {}
	tFashionEvent_Cont["RankItem"][1] = 3310701
	tFashionEvent_Cont["RankItem"][2] = 3310702
	tFashionEvent_Cont["RankItem"][3] = 3310703
	tFashionEvent_Cont["RankItem"][4] = 3310704
	tFashionEvent_Cont["RankItem"][5] = 3310705
	tFashionEvent_Cont["RankItem"][6] = 3310706
	tFashionEvent_Cont["RankItem"][7] = 3310707
	tFashionEvent_Cont["RankItem"][8] = 3310708
	tFashionEvent_Cont["RankItem"][9] = 3310708
	tFashionEvent_Cont["RankItem"][10] = 3310708
	
	
-- 掩码表
local tFashionEvent_Stc = {}
	-- 记录竞标天石数
	tFashionEvent_Stc[1] = {}
	tFashionEvent_Stc[1]["EventType"] = 182
	tFashionEvent_Stc[1]["DataType"] = 86
	tFashionEvent_Stc[1]["Clear"] = 1
	-- 记录竞标外套id
	tFashionEvent_Stc[2] = {}
	tFashionEvent_Stc[2]["EventType"] = 182
	tFashionEvent_Stc[2]["DataType"] = 87
	tFashionEvent_Stc[2]["Clear"] = 1
	-- 是否屏蔽出价二次确认·登录重置
	tFashionEvent_Stc[3] = {}
	tFashionEvent_Stc[3]["EventType"] = 182
	tFashionEvent_Stc[3]["DataType"] = 88
	-- 是否屏蔽加价二次确认·登录重置
	tFashionEvent_Stc[4] = {}
	tFashionEvent_Stc[4]["EventType"] = 182
	tFashionEvent_Stc[4]["DataType"] = 89
	-- 是否发放过凭证
	tFashionEvent_Stc[5] = {}
	tFashionEvent_Stc[5]["EventType"] = 182
	tFashionEvent_Stc[5]["DataType"] = 90
	tFashionEvent_Stc[5]["Clear"] = 1
	-- 时尚值
	tFashionEvent_Stc[6] = {}
	tFashionEvent_Stc[6]["EventType"] = 182
	tFashionEvent_Stc[6]["DataType"] = 91
	-- 是否屏蔽洗赠二次确认·登录重置
	tFashionEvent_Stc[7] = {}
	tFashionEvent_Stc[7]["EventType"] = 182
	tFashionEvent_Stc[7]["DataType"] = 92
	-- 阶段奖励
	tFashionEvent_Stc[8] = {}
	tFashionEvent_Stc[8]["EventType"] = 182
	tFashionEvent_Stc[8]["DataType"] = 93
	-- 是否成功学习时尚秘诀·维多利亚
	tFashionEvent_Stc[9] = {}
	tFashionEvent_Stc[9]["EventType"] = 182
	tFashionEvent_Stc[9]["DataType"] = 94
	tFashionEvent_Stc[9]["Clear"] = 1
	-- 求教小礼序号·维多利亚
	tFashionEvent_Stc[10] = {}
	tFashionEvent_Stc[10]["EventType"] = 182
	tFashionEvent_Stc[10]["DataType"] = 95
	-- 是否成功学习时尚秘诀·贝克汉姆
	tFashionEvent_Stc[11] = {}
	tFashionEvent_Stc[11]["EventType"] = 182
	tFashionEvent_Stc[11]["DataType"] = 96
	tFashionEvent_Stc[11]["Clear"] = 1
	-- 求教小礼序号·贝克汉姆
	tFashionEvent_Stc[12] = {}
	tFashionEvent_Stc[12]["EventType"] = 182
	tFashionEvent_Stc[12]["DataType"] = 97
	-- 每日上线给1个1星时装碎片
	tFashionEvent_Stc[13] = {}
	tFashionEvent_Stc[13]["EventType"] = 182
	tFashionEvent_Stc[13]["DataType"] = 98
	tFashionEvent_Stc[13]["Clear"] = 1
	-- 每日杀怪获得1星时装碎片数
	tFashionEvent_Stc[14] = {}
	tFashionEvent_Stc[14]["EventType"] = 182
	tFashionEvent_Stc[14]["DataType"] = 99
	tFashionEvent_Stc[14]["Clear"] = 1
	tFashionEvent_Stc[14]["Limit"] = 10
	-- 每日杀怪获得2星时装碎片数
	tFashionEvent_Stc[15] = {}
	tFashionEvent_Stc[15]["EventType"] = 183
	tFashionEvent_Stc[15]["DataType"] = 00
	tFashionEvent_Stc[15]["Clear"] = 1
	tFashionEvent_Stc[15]["Limit"] = 5
	
	
--Log表
local tFashionEvent_Log = {}
	tFashionEvent_Log["Del"] = "0,0,%d,%d,12001156,0,0,0"
	tFashionEvent_Log["FashionValue"] = "0,0,%d,1,12001156,1[6],0,0"
	tFashionEvent_Log["AuctionMail"] = "0,0,0,0,12001156,1[7],%d,1"
	tFashionEvent_Log["RankMail"] = "0,0,0,0,12001156,1[8],%d,0"
	-- EmoneyLog
	tFashionEvent_Log["EmoneyLog"] = {}
	-- 天石消费
	tFashionEvent_Log["EmoneyLog"][1] = "350	21717	%d	%d	1	"
	tFashionEvent_Log["EmoneyLog"][2] = "350	21718	%d	%d	1	"
	-- 合成外套
	tFashionEvent_Log["CompoundDebris"] = {}
	tFashionEvent_Log["CompoundDebris"][3310695] = "350	21891	0	0	1	"
	tFashionEvent_Log["CompoundDebris"][3310696] = "350	21892	0	0	1	"
	tFashionEvent_Log["CompoundDebris"][3310697] = "350	21893	0	0	1	"
	tFashionEvent_Log["CompoundDebris"][3310698] = "350	21894	0	0	1	"
	tFashionEvent_Log["CompoundDebris"][3310699] = "350	21895	0	0	1	"
	-- 使用碎片
	tFashionEvent_Log["UseDebris"] = {}
	tFashionEvent_Log["UseDebris"][3310695] = "350	21896	0	0	1	"
	tFashionEvent_Log["UseDebris"][3310696] = "350	21897	0	0	1	"
	tFashionEvent_Log["UseDebris"][3310697] = "350	21898	0	0	1	"
	tFashionEvent_Log["UseDebris"][3310698] = "350	21899	0	0	1	"
	tFashionEvent_Log["UseDebris"][3310699] = "350	21900	0	0	1	"  
	-- 上交外套
	tFashionEvent_Log["HandIn"] = "350	21901	0	0	1	"
	-- 竞拍获得外套
	tFashionEvent_Log["GetCoat"] = "350	21902	0	0	1	"
	
	
-- 奖励表
local tFashionEvent_Reward = {}
	-- 取回天石
	tFashionEvent_Reward["GetBack"] = {}
	tFashionEvent_Reward["GetBack"]["RewardEMoney"] = {}
	tFashionEvent_Reward["GetBack"]["RewardEMoney"]["Value"] = 0
	tFashionEvent_Reward["GetBack"]["EmoneyLog"] = "350	21890	-%d	-%d	1	"
	tFashionEvent_Reward["GetBack"]["LogId"] = 12001156
	
	-- 使用凭证取回天石
	tFashionEvent_Reward["GetBackByItem"] = {}
	tFashionEvent_Reward["GetBackByItem"]["DeleteItem"] = {}
	tFashionEvent_Reward["GetBackByItem"]["DeleteItem"][1] = {}
	tFashionEvent_Reward["GetBackByItem"]["DeleteItem"][1]["Id"] = 3310694
	tFashionEvent_Reward["GetBackByItem"]["RewardEMoney"] = {}
	tFashionEvent_Reward["GetBackByItem"]["RewardEMoney"]["Value"] = 0
	tFashionEvent_Reward["GetBackByItem"]["RewardNoNeedTip"] = 1
	tFashionEvent_Reward["GetBackByItem"]["EmoneyLog"] = "350	21890	-%d	-%d	1	"
	tFashionEvent_Reward["GetBackByItem"]["LogId"] = 12001156
	
	-- 给凭证
	tFashionEvent_Reward["Voucher"] = {}
	tFashionEvent_Reward["Voucher"]["RewardItem"] = {}
	tFashionEvent_Reward["Voucher"]["RewardItem"][1] = {}
	tFashionEvent_Reward["Voucher"]["RewardItem"][1]["Id"] = 3310694
	tFashionEvent_Reward["Voucher"]["RewardItem"][1]["Attr"] = "0 1 0 300 1"
	tFashionEvent_Reward["Voucher"]["LogId"] = 12001156
	
	-- 洗赠
	tFashionEvent_Reward["Wash"] = {}
	tFashionEvent_Reward["Wash"]["RewardItem"] = {}
	tFashionEvent_Reward["Wash"]["RewardItem"][1] = {}
	tFashionEvent_Reward["Wash"]["RewardItem"][1]["Id"] = 0
	tFashionEvent_Reward["Wash"]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tFashionEvent_Reward["Wash"]["LogId"] = 12001156
	
	-- 阶段奖励
	tFashionEvent_Reward["Stage"] = {}
	-- 一阶段
	tFashionEvent_Reward["Stage"][1] = {}
	tFashionEvent_Reward["Stage"][1]["RewardItem"] = {}
	tFashionEvent_Reward["Stage"][1]["RewardItem"][1] = {}
	tFashionEvent_Reward["Stage"][1]["RewardItem"][1]["Id"] = 730003
	tFashionEvent_Reward["Stage"][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tFashionEvent_Reward["Stage"][1]["RewardItem"][2] = {}
	tFashionEvent_Reward["Stage"][1]["RewardItem"][2]["Id"] = 3009001
	tFashionEvent_Reward["Stage"][1]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tFashionEvent_Reward["Stage"][1]["RewardStrengthValue"] = {}    
	tFashionEvent_Reward["Stage"][1]["RewardStrengthValue"]["Value"] = 1000
	tFashionEvent_Reward["Stage"][1]["LogId"] = 12001156
	-- 二阶段
	tFashionEvent_Reward["Stage"][2] = {}
	tFashionEvent_Reward["Stage"][2]["RewardItem"] = {}
	tFashionEvent_Reward["Stage"][2]["RewardItem"][1] = {}
	tFashionEvent_Reward["Stage"][2]["RewardItem"][1]["Id"] = 730004
	tFashionEvent_Reward["Stage"][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tFashionEvent_Reward["Stage"][2]["RewardItem"][2] = {}
	tFashionEvent_Reward["Stage"][2]["RewardItem"][2]["Id"] = 3009002
	tFashionEvent_Reward["Stage"][2]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tFashionEvent_Reward["Stage"][2]["RewardStrengthValue"] = {}    
	tFashionEvent_Reward["Stage"][2]["RewardStrengthValue"]["Value"] = 2000
	tFashionEvent_Reward["Stage"][2]["LogId"] = 12001156
	-- 三阶段
	tFashionEvent_Reward["Stage"][3] = {}
	tFashionEvent_Reward["Stage"][3]["RewardItem"] = {}
	tFashionEvent_Reward["Stage"][3]["RewardItem"][1] = {}
	tFashionEvent_Reward["Stage"][3]["RewardItem"][1]["Id"] = 730005
	tFashionEvent_Reward["Stage"][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tFashionEvent_Reward["Stage"][3]["RewardItem"][2] = {}
	tFashionEvent_Reward["Stage"][3]["RewardItem"][2]["Id"] = 3009002
	tFashionEvent_Reward["Stage"][3]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tFashionEvent_Reward["Stage"][3]["RewardStrengthValue"] = {}    
	tFashionEvent_Reward["Stage"][3]["RewardStrengthValue"]["Value"] = 5000
	tFashionEvent_Reward["Stage"][3]["LogId"] = 12001156
	-- 四阶段
	tFashionEvent_Reward["Stage"][4] = {}
	tFashionEvent_Reward["Stage"][4]["RewardItem"] = {}
	tFashionEvent_Reward["Stage"][4]["RewardItem"][1] = {}
	tFashionEvent_Reward["Stage"][4]["RewardItem"][1]["Id"] = 730005
	tFashionEvent_Reward["Stage"][4]["RewardItem"][1]["Attr"] = "0 2 3 10080 1"
	tFashionEvent_Reward["Stage"][4]["RewardItem"][2] = {}
	tFashionEvent_Reward["Stage"][4]["RewardItem"][2]["Id"] = 3009002
	tFashionEvent_Reward["Stage"][4]["RewardItem"][2]["Attr"] = "0 2 0 2880 1"
	tFashionEvent_Reward["Stage"][4]["RewardStrengthValue"] = {}    
	tFashionEvent_Reward["Stage"][4]["RewardStrengthValue"]["Value"] = 8000
	tFashionEvent_Reward["Stage"][4]["LogId"] = 12001156
	-- 五阶段
	tFashionEvent_Reward["Stage"][5] = {}
	tFashionEvent_Reward["Stage"][5]["RewardItem"] = {}
	tFashionEvent_Reward["Stage"][5]["RewardItem"][1] = {}
	tFashionEvent_Reward["Stage"][5]["RewardItem"][1]["Id"] = 730006
	tFashionEvent_Reward["Stage"][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tFashionEvent_Reward["Stage"][5]["RewardItem"][2] = {}
	tFashionEvent_Reward["Stage"][5]["RewardItem"][2]["Id"] = 3009002
	tFashionEvent_Reward["Stage"][5]["RewardItem"][2]["Attr"] = "0 5 0 2880 1"
	tFashionEvent_Reward["Stage"][5]["RewardStrengthValue"] = {}    
	tFashionEvent_Reward["Stage"][5]["RewardStrengthValue"]["Value"] = 10000
	tFashionEvent_Reward["Stage"][5]["LogId"] = 12001156
	
	-- 给摩登礼盒
	tFashionEvent_Reward[3310700] = {}
	tFashionEvent_Reward[3310700]["DeleteItem"] = {}
	tFashionEvent_Reward[3310700]["DeleteItem"][1] = {}
	tFashionEvent_Reward[3310700]["DeleteItem"][1]["Id"] = 0
	tFashionEvent_Reward[3310700]["DeleteItem"][1]["ItemNum"] = 0
	tFashionEvent_Reward[3310700]["RewardItem"] = {}
	tFashionEvent_Reward[3310700]["RewardItem"][1] = {}
	tFashionEvent_Reward[3310700]["RewardItem"][1]["Id"] = 3310700
	tFashionEvent_Reward[3310700]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tFashionEvent_Reward[3310700]["LogId"] = 12001156
	
	-- 使用碎片
	tFashionEvent_Reward["UseDebris"] = {}
	-- 使用1星碎片
	tFashionEvent_Reward["UseDebris"][3310695] = {}
	tFashionEvent_Reward["UseDebris"][3310695]["ItemChanceSum"] = 10000
	-- 获得2星碎片
	tFashionEvent_Reward["UseDebris"][3310695][1] = {} 
	tFashionEvent_Reward["UseDebris"][3310695][1]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["UseDebris"][3310695][1]["ItemChance"] = 2500
	tFashionEvent_Reward["UseDebris"][3310695][1]["RewardItem"] = {}
	tFashionEvent_Reward["UseDebris"][3310695][1]["RewardItem"][1] = {}
	tFashionEvent_Reward["UseDebris"][3310695][1]["RewardItem"][1]["Id"] = 3310696
	tFashionEvent_Reward["UseDebris"][3310695][1]["RewardItem"][1]["Attr"] = "0 1"
	tFashionEvent_Reward["UseDebris"][3310695][1]["Log"] = "0,0,3310695,1,12001156,1[4],3310696,1"
	-- 获得3星碎片
	tFashionEvent_Reward["UseDebris"][3310695][2] = {} 
	tFashionEvent_Reward["UseDebris"][3310695][2]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["UseDebris"][3310695][2]["ItemChance"] = 1
	tFashionEvent_Reward["UseDebris"][3310695][2]["RewardItem"] = {}
	tFashionEvent_Reward["UseDebris"][3310695][2]["RewardItem"][1] = {}
	tFashionEvent_Reward["UseDebris"][3310695][2]["RewardItem"][1]["Id"] = 3310697
	tFashionEvent_Reward["UseDebris"][3310695][2]["RewardItem"][1]["Attr"] = "0 1"
	tFashionEvent_Reward["UseDebris"][3310695][2]["Log"] = "0,0,3310695,1,12001156,1[4],3310697,1"
	-- 获得4星碎片
	tFashionEvent_Reward["UseDebris"][3310695][3] = {} 
	tFashionEvent_Reward["UseDebris"][3310695][3]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["UseDebris"][3310695][3]["ItemChance"] = 99
	tFashionEvent_Reward["UseDebris"][3310695][3]["RewardItem"] = {}
	tFashionEvent_Reward["UseDebris"][3310695][3]["RewardItem"][1] = {}
	tFashionEvent_Reward["UseDebris"][3310695][3]["RewardItem"][1]["Id"] = 3310698
	tFashionEvent_Reward["UseDebris"][3310695][3]["RewardItem"][1]["Attr"] = "0 1"
	tFashionEvent_Reward["UseDebris"][3310695][3]["Log"] = "0,0,3310695,1,12001156,1[4],3310698,1"
	-- 100点气力值
	tFashionEvent_Reward["UseDebris"][3310695][4] = {} 
	tFashionEvent_Reward["UseDebris"][3310695][4]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["UseDebris"][3310695][4]["ItemChance"] = 7400
	tFashionEvent_Reward["UseDebris"][3310695][4]["RewardStrengthValue"] = {}    
	tFashionEvent_Reward["UseDebris"][3310695][4]["RewardStrengthValue"]["Value"] = 100
	tFashionEvent_Reward["UseDebris"][3310695][4]["Log"] = "0,0,3310695,1,12001156,1[3],12,100"
	
	-- 使用2星碎片
	tFashionEvent_Reward["UseDebris"][3310696] = {}
	tFashionEvent_Reward["UseDebris"][3310696]["ItemChanceSum"] = 10000
	-- 获得3星碎片
	tFashionEvent_Reward["UseDebris"][3310696][1] = {} 
	tFashionEvent_Reward["UseDebris"][3310696][1]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["UseDebris"][3310696][1]["ItemChance"] = 2500
	tFashionEvent_Reward["UseDebris"][3310696][1]["RewardItem"] = {}
	tFashionEvent_Reward["UseDebris"][3310696][1]["RewardItem"][1] = {}
	tFashionEvent_Reward["UseDebris"][3310696][1]["RewardItem"][1]["Id"] = 3310697
	tFashionEvent_Reward["UseDebris"][3310696][1]["RewardItem"][1]["Attr"] = "0 1"
	tFashionEvent_Reward["UseDebris"][3310696][1]["Log"] = "0,0,3310696,1,12001156,1[4],3310697,1"
	-- 获得4星碎片
	tFashionEvent_Reward["UseDebris"][3310696][2] = {} 
	tFashionEvent_Reward["UseDebris"][3310696][2]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["UseDebris"][3310696][2]["ItemChance"] = 549
	tFashionEvent_Reward["UseDebris"][3310696][2]["RewardItem"] = {}
	tFashionEvent_Reward["UseDebris"][3310696][2]["RewardItem"][1] = {}
	tFashionEvent_Reward["UseDebris"][3310696][2]["RewardItem"][1]["Id"] = 3310698
	tFashionEvent_Reward["UseDebris"][3310696][2]["RewardItem"][1]["Attr"] = "0 1"
	tFashionEvent_Reward["UseDebris"][3310696][2]["Log"] = "0,0,3310696,1,12001156,1[4],3310698,1"
	-- 获得5星碎片
	tFashionEvent_Reward["UseDebris"][3310696][3] = {} 
	tFashionEvent_Reward["UseDebris"][3310696][3]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["UseDebris"][3310696][3]["ItemChance"] = 1
	tFashionEvent_Reward["UseDebris"][3310696][3]["RewardItem"] = {}
	tFashionEvent_Reward["UseDebris"][3310696][3]["RewardItem"][1] = {}
	tFashionEvent_Reward["UseDebris"][3310696][3]["RewardItem"][1]["Id"] = 3310699
	tFashionEvent_Reward["UseDebris"][3310696][3]["RewardItem"][1]["Attr"] = "0 1"
	tFashionEvent_Reward["UseDebris"][3310696][3]["Log"] = "0,0,3310696,1,12001156,1[4],3310699,1"
	-- 150点气力值
	tFashionEvent_Reward["UseDebris"][3310696][4] = {} 
	tFashionEvent_Reward["UseDebris"][3310696][4]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["UseDebris"][3310696][4]["ItemChance"] = 6950
	tFashionEvent_Reward["UseDebris"][3310696][4]["RewardStrengthValue"] = {}    
	tFashionEvent_Reward["UseDebris"][3310696][4]["RewardStrengthValue"]["Value"] = 150
	tFashionEvent_Reward["UseDebris"][3310696][4]["Log"] = "0,0,3310696,1,12001156,1[3],12,150"
	
	-- 使用3星碎片
	tFashionEvent_Reward["UseDebris"][3310697] = {}
	tFashionEvent_Reward["UseDebris"][3310697]["ItemChanceSum"] = 10000
	-- 获得4星碎片
	tFashionEvent_Reward["UseDebris"][3310697][1] = {} 
	tFashionEvent_Reward["UseDebris"][3310697][1]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["UseDebris"][3310697][1]["ItemChance"] = 2000
	tFashionEvent_Reward["UseDebris"][3310697][1]["RewardItem"] = {}
	tFashionEvent_Reward["UseDebris"][3310697][1]["RewardItem"][1] = {}
	tFashionEvent_Reward["UseDebris"][3310697][1]["RewardItem"][1]["Id"] = 3310698
	tFashionEvent_Reward["UseDebris"][3310697][1]["RewardItem"][1]["Attr"] = "0 1"
	tFashionEvent_Reward["UseDebris"][3310697][1]["Log"] = "0,0,3310697,1,12001156,1[4],3310698,1"
	-- 获得5星碎片
	tFashionEvent_Reward["UseDebris"][3310697][2] = {} 
	tFashionEvent_Reward["UseDebris"][3310697][2]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["UseDebris"][3310697][2]["ItemChance"] = 5
	tFashionEvent_Reward["UseDebris"][3310697][2]["RewardItem"] = {}
	tFashionEvent_Reward["UseDebris"][3310697][2]["RewardItem"][1] = {}
	tFashionEvent_Reward["UseDebris"][3310697][2]["RewardItem"][1]["Id"] = 3310699
	tFashionEvent_Reward["UseDebris"][3310697][2]["RewardItem"][1]["Attr"] = "0 1"
	tFashionEvent_Reward["UseDebris"][3310697][2]["Log"] = "0,0,3310697,1,12001156,1[4],3310699,1"
	-- 200点气力值
	tFashionEvent_Reward["UseDebris"][3310697][3] = {} 
	tFashionEvent_Reward["UseDebris"][3310697][3]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["UseDebris"][3310697][3]["ItemChance"] = 7995
	tFashionEvent_Reward["UseDebris"][3310697][3]["RewardStrengthValue"] = {}    
	tFashionEvent_Reward["UseDebris"][3310697][3]["RewardStrengthValue"]["Value"] = 200
	tFashionEvent_Reward["UseDebris"][3310697][3]["Log"] = "0,0,3310697,1,12001156,1[3],12,200"
	
	-- 使用4星碎片
	tFashionEvent_Reward["UseDebris"][3310698] = {}
	tFashionEvent_Reward["UseDebris"][3310698]["ItemChanceSum"] = 10000
	-- 获得5星碎片
	tFashionEvent_Reward["UseDebris"][3310698][1] = {} 
	tFashionEvent_Reward["UseDebris"][3310698][1]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["UseDebris"][3310698][1]["ItemChance"] = 2000
	tFashionEvent_Reward["UseDebris"][3310698][1]["RewardItem"] = {}
	tFashionEvent_Reward["UseDebris"][3310698][1]["RewardItem"][1] = {}
	tFashionEvent_Reward["UseDebris"][3310698][1]["RewardItem"][1]["Id"] = 3310699
	tFashionEvent_Reward["UseDebris"][3310698][1]["RewardItem"][1]["Attr"] = "0 1"
	tFashionEvent_Reward["UseDebris"][3310698][1]["Log"] = "0,0,3310698,1,12001156,1[4],3310699,1"
	-- 300点气力值
	tFashionEvent_Reward["UseDebris"][3310698][2] = {} 
	tFashionEvent_Reward["UseDebris"][3310698][2]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["UseDebris"][3310698][2]["ItemChance"] = 8000
	tFashionEvent_Reward["UseDebris"][3310698][2]["RewardStrengthValue"] = {}    
	tFashionEvent_Reward["UseDebris"][3310698][2]["RewardStrengthValue"]["Value"] = 300
	tFashionEvent_Reward["UseDebris"][3310698][2]["Log"] = "0,0,3310698,1,12001156,1[3],12,300"
	
	-- 合成外套
	tFashionEvent_Reward["CompoundDebris"] = {}
	-- 合成一星外套
	tFashionEvent_Reward["CompoundDebris"][3310695] = {}
	tFashionEvent_Reward["CompoundDebris"][3310695]["ItemChanceSum"] = 10000
	-- 苗家风情
	tFashionEvent_Reward["CompoundDebris"][3310695][1] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310695][1]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310695][1]["ItemChance"] = 1000
	tFashionEvent_Reward["CompoundDebris"][3310695][1]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310695][1]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310695][1]["RewardItem"][1]["Id"] = 181345
	tFashionEvent_Reward["CompoundDebris"][3310695][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310695][1]["Log"] = "0,0,3310695,15,12001156,1[5],181345,1"
	-- 草原之风
	tFashionEvent_Reward["CompoundDebris"][3310695][2] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310695][2]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310695][2]["ItemChance"] = 1000
	tFashionEvent_Reward["CompoundDebris"][3310695][2]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310695][2]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310695][2]["RewardItem"][1]["Id"] = 181365
	tFashionEvent_Reward["CompoundDebris"][3310695][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310695][2]["Log"] = "0,0,3310695,15,12001156,1[5],181365,1"
	-- 天山情韵
	tFashionEvent_Reward["CompoundDebris"][3310695][3] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310695][3]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310695][3]["ItemChance"] = 1000
	tFashionEvent_Reward["CompoundDebris"][3310695][3]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310695][3]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310695][3]["RewardItem"][1]["Id"] = 181475
	tFashionEvent_Reward["CompoundDebris"][3310695][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310695][3]["Log"] = "0,0,3310695,15,12001156,1[5],181475,1"
	-- 满清王风
	tFashionEvent_Reward["CompoundDebris"][3310695][4] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310695][4]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310695][4]["ItemChance"] = 1000
	tFashionEvent_Reward["CompoundDebris"][3310695][4]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310695][4]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310695][4]["RewardItem"][1]["Id"] = 181385
	tFashionEvent_Reward["CompoundDebris"][3310695][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310695][4]["Log"] = "0,0,3310695,15,12001156,1[5],181385,1"
	-- 景颇彩装
	tFashionEvent_Reward["CompoundDebris"][3310695][5] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310695][5]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310695][5]["ItemChance"] = 1000
	tFashionEvent_Reward["CompoundDebris"][3310695][5]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310695][5]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310695][5]["RewardItem"][1]["Id"] = 182305
	tFashionEvent_Reward["CompoundDebris"][3310695][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310695][5]["Log"] = "0,0,3310695,15,12001156,1[5],182305,1"
	-- 塔吉克盛装
	tFashionEvent_Reward["CompoundDebris"][3310695][6] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310695][6]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310695][6]["ItemChance"] = 1000
	tFashionEvent_Reward["CompoundDebris"][3310695][6]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310695][6]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310695][6]["RewardItem"][1]["Id"] = 182315
	tFashionEvent_Reward["CompoundDebris"][3310695][6]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310695][6]["Log"] = "0,0,3310695,15,12001156,1[5],182315,1"
	-- 回乡风情
	tFashionEvent_Reward["CompoundDebris"][3310695][7] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310695][7]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310695][7]["ItemChance"] = 1000
	tFashionEvent_Reward["CompoundDebris"][3310695][7]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310695][7]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310695][7]["RewardItem"][1]["Id"] = 182325
	tFashionEvent_Reward["CompoundDebris"][3310695][7]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310695][7]["Log"] = "0,0,3310695,15,12001156,1[5],182325,1"
	-- 霓裳花影
	tFashionEvent_Reward["CompoundDebris"][3310695][8] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310695][8]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310695][8]["ItemChance"] = 1000
	tFashionEvent_Reward["CompoundDebris"][3310695][8]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310695][8]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310695][8]["RewardItem"][1]["Id"] = 182385
	tFashionEvent_Reward["CompoundDebris"][3310695][8]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310695][8]["Log"] = "0,0,3310695,15,12001156,1[5],182385,1"
	-- 幽兰夜月
	tFashionEvent_Reward["CompoundDebris"][3310695][9] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310695][9]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310695][9]["ItemChance"] = 1000
	tFashionEvent_Reward["CompoundDebris"][3310695][9]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310695][9]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310695][9]["RewardItem"][1]["Id"] = 182345
	tFashionEvent_Reward["CompoundDebris"][3310695][9]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310695][9]["Log"] = "0,0,3310695,15,12001156,1[5],182345,1"
	-- 吉祥天香
	tFashionEvent_Reward["CompoundDebris"][3310695][10] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310695][10]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310695][10]["ItemChance"] = 1000
	tFashionEvent_Reward["CompoundDebris"][3310695][10]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310695][10]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310695][10]["RewardItem"][1]["Id"] = 182365
	tFashionEvent_Reward["CompoundDebris"][3310695][10]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310695][10]["Log"] = "0,0,3310695,15,12001156,1[5],182365,1"
	
	-- 合成二星外套
	tFashionEvent_Reward["CompoundDebris"][3310696] = {}
	tFashionEvent_Reward["CompoundDebris"][3310696]["ItemChanceSum"] = 10000
	-- 金色富贵长袍
	tFashionEvent_Reward["CompoundDebris"][3310696][1] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310696][1]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310696][1]["ItemChance"] = 1000
	tFashionEvent_Reward["CompoundDebris"][3310696][1]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310696][1]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310696][1]["RewardItem"][1]["Id"] = 191405
	tFashionEvent_Reward["CompoundDebris"][3310696][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310696][1]["Log"] = "0,0,3310696,15,12001156,1[5],191405,1"
	-- 红色富贵长袍
	tFashionEvent_Reward["CompoundDebris"][3310696][2] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310696][2]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310696][2]["ItemChance"] = 1000
	tFashionEvent_Reward["CompoundDebris"][3310696][2]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310696][2]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310696][2]["RewardItem"][1]["Id"] = 191905
	tFashionEvent_Reward["CompoundDebris"][3310696][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310696][2]["Log"] = "0,0,3310696,15,12001156,1[5],191905,1"
	-- 锦绣富贵长袍
	tFashionEvent_Reward["CompoundDebris"][3310696][3] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310696][3]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310696][3]["ItemChance"] = 1000
	tFashionEvent_Reward["CompoundDebris"][3310696][3]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310696][3]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310696][3]["RewardItem"][1]["Id"] = 183425
	tFashionEvent_Reward["CompoundDebris"][3310696][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310696][3]["Log"] = "0,0,3310696,15,12001156,1[5],183425,1"
	-- 暗夜侠套装
	tFashionEvent_Reward["CompoundDebris"][3310696][4] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310696][4]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310696][4]["ItemChance"] = 1000
	tFashionEvent_Reward["CompoundDebris"][3310696][4]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310696][4]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310696][4]["RewardItem"][1]["Id"] = 192185
	tFashionEvent_Reward["CompoundDebris"][3310696][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310696][4]["Log"] = "0,0,3310696,15,12001156,1[5],192185,1"
	-- 百年好合
	tFashionEvent_Reward["CompoundDebris"][3310696][5] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310696][5]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310696][5]["ItemChance"] = 1000
	tFashionEvent_Reward["CompoundDebris"][3310696][5]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310696][5]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310696][5]["RewardItem"][1]["Id"] = 181535
	tFashionEvent_Reward["CompoundDebris"][3310696][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310696][5]["Log"] = "0,0,3310696,15,12001156,1[5],181535,1"
	-- 斯巴达战神套装
	tFashionEvent_Reward["CompoundDebris"][3310696][6] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310696][6]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310696][6]["ItemChance"] = 1000
	tFashionEvent_Reward["CompoundDebris"][3310696][6]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310696][6]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310696][6]["RewardItem"][1]["Id"] = 184375
	tFashionEvent_Reward["CompoundDebris"][3310696][6]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310696][6]["Log"] = "0,0,3310696,15,12001156,1[5],184375,1"
	-- 巫师暗袍
	tFashionEvent_Reward["CompoundDebris"][3310696][7] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310696][7]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310696][7]["ItemChance"] = 1000
	tFashionEvent_Reward["CompoundDebris"][3310696][7]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310696][7]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310696][7]["RewardItem"][1]["Id"] = 181355
	tFashionEvent_Reward["CompoundDebris"][3310696][7]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310696][7]["Log"] = "0,0,3310696,15,12001156,1[5],181355,1"
	-- NOBODY套装
	tFashionEvent_Reward["CompoundDebris"][3310696][8] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310696][8]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310696][8]["ItemChance"] = 1000
	tFashionEvent_Reward["CompoundDebris"][3310696][8]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310696][8]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310696][8]["RewardItem"][1]["Id"] = 183365
	tFashionEvent_Reward["CompoundDebris"][3310696][8]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310696][8]["Log"] = "0,0,3310696,15,12001156,1[5],183365,1"
	-- 加勒比传说套装
	tFashionEvent_Reward["CompoundDebris"][3310696][9] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310696][9]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310696][9]["ItemChance"] = 1000
	tFashionEvent_Reward["CompoundDebris"][3310696][9]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310696][9]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310696][9]["RewardItem"][1]["Id"] = 183375
	tFashionEvent_Reward["CompoundDebris"][3310696][9]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310696][9]["Log"] = "0,0,3310696,15,12001156,1[5],183375,1"
	-- 铁血警星套装
	tFashionEvent_Reward["CompoundDebris"][3310696][10] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310696][10]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310696][10]["ItemChance"] = 1000
	tFashionEvent_Reward["CompoundDebris"][3310696][10]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310696][10]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310696][10]["RewardItem"][1]["Id"] = 183335
	tFashionEvent_Reward["CompoundDebris"][3310696][10]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310696][10]["Log"] = "0,0,3310696,15,12001156,1[5],183335,1"
	
	-- 合成三星外套
	tFashionEvent_Reward["CompoundDebris"][3310697] = {}
	tFashionEvent_Reward["CompoundDebris"][3310697]["ItemChanceSum"] = 10000
	-- 轻舞飞扬
	tFashionEvent_Reward["CompoundDebris"][3310697][1] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310697][1]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310697][1]["ItemChance"] = 700
	tFashionEvent_Reward["CompoundDebris"][3310697][1]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310697][1]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310697][1]["RewardItem"][1]["Id"] = 195055
	tFashionEvent_Reward["CompoundDebris"][3310697][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310697][1]["Log"] = "0,0,3310697,20,12001156,1[5],195055,1"
	-- 紫音青衫
	tFashionEvent_Reward["CompoundDebris"][3310697][2] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310697][2]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310697][2]["ItemChance"] = 600
	tFashionEvent_Reward["CompoundDebris"][3310697][2]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310697][2]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310697][2]["RewardItem"][1]["Id"] = 194865
	tFashionEvent_Reward["CompoundDebris"][3310697][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310697][2]["Log"] = "0,0,3310697,20,12001156,1[5],194865,1"
	-- 天仙子
	tFashionEvent_Reward["CompoundDebris"][3310697][3] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310697][3]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310697][3]["ItemChance"] = 700
	tFashionEvent_Reward["CompoundDebris"][3310697][3]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310697][3]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310697][3]["RewardItem"][1]["Id"] = 194375
	tFashionEvent_Reward["CompoundDebris"][3310697][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310697][3]["Log"] = "0,0,3310697,20,12001156,1[5],194375,1"
	-- 冰雪奇缘
	tFashionEvent_Reward["CompoundDebris"][3310697][4] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310697][4]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310697][4]["ItemChance"] = 1100
	tFashionEvent_Reward["CompoundDebris"][3310697][4]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310697][4]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310697][4]["RewardItem"][1]["Id"] = 193515
	tFashionEvent_Reward["CompoundDebris"][3310697][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310697][4]["Log"] = "0,0,3310697,20,12001156,1[5],193515,1"
	-- 喵基尼
	tFashionEvent_Reward["CompoundDebris"][3310697][5] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310697][5]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310697][5]["ItemChance"] = 1100
	tFashionEvent_Reward["CompoundDebris"][3310697][5]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310697][5]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310697][5]["RewardItem"][1]["Id"] = 193545
	tFashionEvent_Reward["CompoundDebris"][3310697][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310697][5]["Log"] = "0,0,3310697,20,12001156,1[5],193545,1"
	-- FoxSpirit
	tFashionEvent_Reward["CompoundDebris"][3310697][6] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310697][6]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310697][6]["ItemChance"] = 1100
	tFashionEvent_Reward["CompoundDebris"][3310697][6]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310697][6]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310697][6]["RewardItem"][1]["Id"] = 192345
	tFashionEvent_Reward["CompoundDebris"][3310697][6]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310697][6]["Log"] = "0,0,3310697,20,12001156,1[5],192345,1"
	-- 夏威夷阳光
	tFashionEvent_Reward["CompoundDebris"][3310697][7] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310697][7]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310697][7]["ItemChance"] = 1100
	tFashionEvent_Reward["CompoundDebris"][3310697][7]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310697][7]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310697][7]["RewardItem"][1]["Id"] = 189665
	tFashionEvent_Reward["CompoundDebris"][3310697][7]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310697][7]["Log"] = "0,0,3310697,20,12001156,1[5],189665,1"
	-- 夜舞未央
	tFashionEvent_Reward["CompoundDebris"][3310697][8] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310697][8]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310697][8]["ItemChance"] = 1200
	tFashionEvent_Reward["CompoundDebris"][3310697][8]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310697][8]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310697][8]["RewardItem"][1]["Id"] = 188575
	tFashionEvent_Reward["CompoundDebris"][3310697][8]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310697][8]["Log"] = "0,0,3310697,20,12001156,1[5],188575,1"
	-- 时尚魅力套装
	tFashionEvent_Reward["CompoundDebris"][3310697][9] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310697][9]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310697][9]["ItemChance"] = 1200
	tFashionEvent_Reward["CompoundDebris"][3310697][9]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310697][9]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310697][9]["RewardItem"][1]["Id"] = 183485
	tFashionEvent_Reward["CompoundDebris"][3310697][9]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310697][9]["Log"] = "0,0,3310697,20,12001156,1[5],183485,1"
	-- 优雅晚装
	tFashionEvent_Reward["CompoundDebris"][3310697][10] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310697][10]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310697][10]["ItemChance"] = 1200
	tFashionEvent_Reward["CompoundDebris"][3310697][10]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310697][10]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310697][10]["RewardItem"][1]["Id"] = 184355
	tFashionEvent_Reward["CompoundDebris"][3310697][10]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310697][10]["Log"] = "0,0,3310697,20,12001156,1[5],184355,1"
	
	-- 合成四星外套
	tFashionEvent_Reward["CompoundDebris"][3310698] = {}
	tFashionEvent_Reward["CompoundDebris"][3310698]["ItemChanceSum"] = 10000
	-- 洋洋得意套装
	tFashionEvent_Reward["CompoundDebris"][3310698][1] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310698][1]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310698][1]["ItemChance"] = 1250
	tFashionEvent_Reward["CompoundDebris"][3310698][1]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310698][1]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310698][1]["RewardItem"][1]["Id"] = 193205
	tFashionEvent_Reward["CompoundDebris"][3310698][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310698][1]["Log"] = "0,0,3310698,20,12001156,1[5],193205,1"
	-- 春风得意
	tFashionEvent_Reward["CompoundDebris"][3310698][2] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310698][2]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310698][2]["ItemChance"] = 1250
	tFashionEvent_Reward["CompoundDebris"][3310698][2]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310698][2]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310698][2]["RewardItem"][1]["Id"] = 193225
	tFashionEvent_Reward["CompoundDebris"][3310698][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310698][2]["Log"] = "0,0,3310698,20,12001156,1[5],193225,1"
	-- GotTalent
	tFashionEvent_Reward["CompoundDebris"][3310698][3] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310698][3]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310698][3]["ItemChance"] = 1200
	tFashionEvent_Reward["CompoundDebris"][3310698][3]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310698][3]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310698][3]["RewardItem"][1]["Id"] = 187325
	tFashionEvent_Reward["CompoundDebris"][3310698][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310698][3]["Log"] = "0,0,3310698,20,12001156,1[5],187325,1"
	-- 情人之泪
	tFashionEvent_Reward["CompoundDebris"][3310698][4] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310698][4]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310698][4]["ItemChance"] = 1200
	tFashionEvent_Reward["CompoundDebris"][3310698][4]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310698][4]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310698][4]["RewardItem"][1]["Id"] = 192635
	tFashionEvent_Reward["CompoundDebris"][3310698][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310698][4]["Log"] = "0,0,3310698,20,12001156,1[5],192635,1"
	-- 江山一统
	tFashionEvent_Reward["CompoundDebris"][3310698][5] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310698][5]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310698][5]["ItemChance"] = 1200
	tFashionEvent_Reward["CompoundDebris"][3310698][5]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310698][5]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310698][5]["RewardItem"][1]["Id"] = 193325
	tFashionEvent_Reward["CompoundDebris"][3310698][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310698][5]["Log"] = "0,0,3310698,20,12001156,1[5],193325,1"
	-- 孔雀东南飞
	tFashionEvent_Reward["CompoundDebris"][3310698][6] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310698][6]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310698][6]["ItemChance"] = 1200
	tFashionEvent_Reward["CompoundDebris"][3310698][6]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310698][6]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310698][6]["RewardItem"][1]["Id"] = 193295
	tFashionEvent_Reward["CompoundDebris"][3310698][6]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310698][6]["Log"] = "0,0,3310698,20,12001156,1[5],193295,1"
	-- 浪客剑魂
	tFashionEvent_Reward["CompoundDebris"][3310698][7] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310698][7]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310698][7]["ItemChance"] = 1200
	tFashionEvent_Reward["CompoundDebris"][3310698][7]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310698][7]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310698][7]["RewardItem"][1]["Id"] = 188185
	tFashionEvent_Reward["CompoundDebris"][3310698][7]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310698][7]["Log"] = "0,0,3310698,20,12001156,1[5],188185,1"
	-- 蝶恋花
	tFashionEvent_Reward["CompoundDebris"][3310698][8] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310698][8]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310698][8]["ItemChance"] = 500
	tFashionEvent_Reward["CompoundDebris"][3310698][8]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310698][8]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310698][8]["RewardItem"][1]["Id"] = 193695
	tFashionEvent_Reward["CompoundDebris"][3310698][8]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310698][8]["Log"] = "0,0,3310698,20,12001156,1[5],193695,1"
	-- 天仙子·星灵
	tFashionEvent_Reward["CompoundDebris"][3310698][9] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310698][9]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310698][9]["ItemChance"] = 500
	tFashionEvent_Reward["CompoundDebris"][3310698][9]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310698][9]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310698][9]["RewardItem"][1]["Id"] = 194385
	tFashionEvent_Reward["CompoundDebris"][3310698][9]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310698][9]["Log"] = "0,0,3310698,20,12001156,1[5],194385,1"
	-- 狐妖装【魅彩版】
	tFashionEvent_Reward["CompoundDebris"][3310698][10] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310698][10]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310698][10]["ItemChance"] = 500
	tFashionEvent_Reward["CompoundDebris"][3310698][10]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310698][10]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310698][10]["RewardItem"][1]["Id"] = 194405
	tFashionEvent_Reward["CompoundDebris"][3310698][10]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310698][10]["Log"] = "0,0,3310698,20,12001156,1[5],194405,1"
	
	-- 合成五星外套
	tFashionEvent_Reward["CompoundDebris"][3310699] = {}
	tFashionEvent_Reward["CompoundDebris"][3310699]["ItemChanceSum"] = 10000
	-- 蝶恋花·玫语
	tFashionEvent_Reward["CompoundDebris"][3310699][1] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310699][1]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310699][1]["ItemChance"] = 1500
	tFashionEvent_Reward["CompoundDebris"][3310699][1]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310699][1]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310699][1]["RewardItem"][1]["Id"] = 193625
	tFashionEvent_Reward["CompoundDebris"][3310699][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310699][1]["Log"] = "0,0,3310699,30,12001156,1[5],193625,1"
	-- 天仙子·月华
	tFashionEvent_Reward["CompoundDebris"][3310699][2] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310699][2]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310699][2]["ItemChance"] = 2300
	tFashionEvent_Reward["CompoundDebris"][3310699][2]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310699][2]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310699][2]["RewardItem"][1]["Id"] = 194395
	tFashionEvent_Reward["CompoundDebris"][3310699][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310699][2]["Log"] = "0,0,3310699,30,12001156,1[5],194395,1"
	-- 轻舞飞扬·盈波
	tFashionEvent_Reward["CompoundDebris"][3310699][3] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310699][3]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310699][3]["ItemChance"] = 2250
	tFashionEvent_Reward["CompoundDebris"][3310699][3]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310699][3]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310699][3]["RewardItem"][1]["Id"] = 195045
	tFashionEvent_Reward["CompoundDebris"][3310699][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310699][3]["Log"] = "0,0,3310699,30,12001156,1[5],195045,1"
	-- 紫音青衫【霞光】
	tFashionEvent_Reward["CompoundDebris"][3310699][4] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310699][4]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310699][4]["ItemChance"] = 1700
	tFashionEvent_Reward["CompoundDebris"][3310699][4]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310699][4]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310699][4]["RewardItem"][1]["Id"] = 194875
	tFashionEvent_Reward["CompoundDebris"][3310699][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310699][4]["Log"] = "0,0,3310699,30,12001156,1[5],194875,1"
	-- 喵基尼【璀璨版】
	tFashionEvent_Reward["CompoundDebris"][3310699][5] = {} 
	tFashionEvent_Reward["CompoundDebris"][3310699][5]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["CompoundDebris"][3310699][5]["ItemChance"] = 2250
	tFashionEvent_Reward["CompoundDebris"][3310699][5]["RewardItem"] = {}
	tFashionEvent_Reward["CompoundDebris"][3310699][5]["RewardItem"][1] = {}
	tFashionEvent_Reward["CompoundDebris"][3310699][5]["RewardItem"][1]["Id"] = 193565
	tFashionEvent_Reward["CompoundDebris"][3310699][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["CompoundDebris"][3310699][5]["Log"] = "0,0,3310699,30,12001156,1[5],193565,1"
	
	-- 使用礼盒
	tFashionEvent_Reward["UsePack"] = {}
	-- 使用摩登礼盒
	tFashionEvent_Reward["UsePack"][3310700] = {}
	tFashionEvent_Reward["UsePack"][3310700]["ItemChanceSum"] = 10000
	-- +1赤炼石
	tFashionEvent_Reward["UsePack"][3310700][1] = {} 
	tFashionEvent_Reward["UsePack"][3310700][1]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["UsePack"][3310700][1]["ItemChance"] = 2000
	tFashionEvent_Reward["UsePack"][3310700][1]["RewardItem"] = {}
	tFashionEvent_Reward["UsePack"][3310700][1]["RewardItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310700][1]["RewardItem"][1]["Id"] = 730001
	tFashionEvent_Reward["UsePack"][3310700][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tFashionEvent_Reward["UsePack"][3310700][1]["Log"] = "0,0,3310700,1,12001156,2[3],730001,1"
	-- +2赤炼石
	tFashionEvent_Reward["UsePack"][3310700][2] = {} 
	tFashionEvent_Reward["UsePack"][3310700][2]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["UsePack"][3310700][2]["ItemChance"] = 1000
	tFashionEvent_Reward["UsePack"][3310700][2]["RewardItem"] = {}
	tFashionEvent_Reward["UsePack"][3310700][2]["RewardItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310700][2]["RewardItem"][1]["Id"] = 730002
	tFashionEvent_Reward["UsePack"][3310700][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tFashionEvent_Reward["UsePack"][3310700][2]["Log"] = "0,0,3310700,1,12001156,2[3],730002,1"
	-- +3赤炼石
	tFashionEvent_Reward["UsePack"][3310700][3] = {} 
	tFashionEvent_Reward["UsePack"][3310700][3]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["UsePack"][3310700][3]["ItemChance"] = 200
	tFashionEvent_Reward["UsePack"][3310700][3]["RewardItem"] = {}
	tFashionEvent_Reward["UsePack"][3310700][3]["RewardItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310700][3]["RewardItem"][1]["Id"] = 730003
	tFashionEvent_Reward["UsePack"][3310700][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tFashionEvent_Reward["UsePack"][3310700][3]["Log"] = "0,0,3310700,1,12001156,2[3],730003,1"
	-- 微光星陨石*1
	tFashionEvent_Reward["UsePack"][3310700][4] = {} 
	tFashionEvent_Reward["UsePack"][3310700][4]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["UsePack"][3310700][4]["ItemChance"] = 2000
	tFashionEvent_Reward["UsePack"][3310700][4]["RewardItem"] = {}
	tFashionEvent_Reward["UsePack"][3310700][4]["RewardItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310700][4]["RewardItem"][1]["Id"] = 3009000
	tFashionEvent_Reward["UsePack"][3310700][4]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tFashionEvent_Reward["UsePack"][3310700][4]["Log"] = "0,0,3310700,1,12001156,2[3],3009000,1"
	-- 微光星陨石*3
	tFashionEvent_Reward["UsePack"][3310700][5] = {} 
	tFashionEvent_Reward["UsePack"][3310700][5]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["UsePack"][3310700][5]["ItemChance"] = 1000
	tFashionEvent_Reward["UsePack"][3310700][5]["RewardItem"] = {}
	tFashionEvent_Reward["UsePack"][3310700][5]["RewardItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310700][5]["RewardItem"][1]["Id"] = 3009000
	tFashionEvent_Reward["UsePack"][3310700][5]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tFashionEvent_Reward["UsePack"][3310700][5]["Log"] = "0,0,3310700,1,12001156,2[3],3009000,3"
	-- 明亮星陨石*1
	tFashionEvent_Reward["UsePack"][3310700][6] = {} 
	tFashionEvent_Reward["UsePack"][3310700][6]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["UsePack"][3310700][6]["ItemChance"] = 300
	tFashionEvent_Reward["UsePack"][3310700][6]["RewardItem"] = {}
	tFashionEvent_Reward["UsePack"][3310700][6]["RewardItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310700][6]["RewardItem"][1]["Id"] = 3009001
	tFashionEvent_Reward["UsePack"][3310700][6]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tFashionEvent_Reward["UsePack"][3310700][6]["Log"] = "0,0,3310700,1,12001156,2[3],3009001,1"
	-- 50点气力值
	tFashionEvent_Reward["UsePack"][3310700][7] = {} 
	tFashionEvent_Reward["UsePack"][3310700][7]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["UsePack"][3310700][7]["ItemChance"] = 2000
	tFashionEvent_Reward["UsePack"][3310700][7]["RewardItem"] = {}
	tFashionEvent_Reward["UsePack"][3310700][7]["RewardItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310700][7]["RewardItem"][1]["Id"] = 3006539
	tFashionEvent_Reward["UsePack"][3310700][7]["RewardItem"][1]["Attr"] = "0 1"
	tFashionEvent_Reward["UsePack"][3310700][7]["Log"] = "0,0,3310700,1,12001156,2[3],3006539,1"
	-- 100点气力值
	tFashionEvent_Reward["UsePack"][3310700][8] = {} 
	tFashionEvent_Reward["UsePack"][3310700][8]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["UsePack"][3310700][8]["ItemChance"] = 1000
	tFashionEvent_Reward["UsePack"][3310700][8]["RewardItem"] = {}
	tFashionEvent_Reward["UsePack"][3310700][8]["RewardItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310700][8]["RewardItem"][1]["Id"] = 3004579
	tFashionEvent_Reward["UsePack"][3310700][8]["RewardItem"][1]["Attr"] = "0 1"
	tFashionEvent_Reward["UsePack"][3310700][8]["Log"] = "0,0,3310700,1,12001156,2[3],3004579,1"
	-- 200点气力值
	tFashionEvent_Reward["UsePack"][3310700][9] = {} 
	tFashionEvent_Reward["UsePack"][3310700][9]["RandomItemChanceType"] = 2
	tFashionEvent_Reward["UsePack"][3310700][9]["ItemChance"] = 500
	tFashionEvent_Reward["UsePack"][3310700][9]["RewardItem"] = {}
	tFashionEvent_Reward["UsePack"][3310700][9]["RewardItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310700][9]["RewardItem"][1]["Id"] = 3003313
	tFashionEvent_Reward["UsePack"][3310700][9]["RewardItem"][1]["Attr"] = "0 1"
	tFashionEvent_Reward["UsePack"][3310700][9]["Log"] = "0,0,3310700,1,12001156,2[3],3003313,1"
	
	-- 时尚王者礼盒
	tFashionEvent_Reward["UsePack"][3310701] = {}
	tFashionEvent_Reward["UsePack"][3310701]["DeleteItem"] = {}
	tFashionEvent_Reward["UsePack"][3310701]["DeleteItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310701]["DeleteItem"][1]["Id"] = 3310701
	tFashionEvent_Reward["UsePack"][3310701]["RewardItem"] = {}
	tFashionEvent_Reward["UsePack"][3310701]["RewardItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310701]["RewardItem"][1]["Id"] = 200532
	tFashionEvent_Reward["UsePack"][3310701]["RewardItem"][1]["Attr"] = "0 1 3 0 1 0 0 1"
	tFashionEvent_Reward["UsePack"][3310701]["RewardItem"][2] = {}
	tFashionEvent_Reward["UsePack"][3310701]["RewardItem"][2]["Id"] = 3303244
	tFashionEvent_Reward["UsePack"][3310701]["RewardItem"][2]["Attr"] = "0 1"
	tFashionEvent_Reward["UsePack"][3310701]["Talk"] = tFashionEvent_Text[2005]["Item"][3310701]
	tFashionEvent_Reward["UsePack"][3310701]["LogId"] = 12001156
	
	-- 时尚大师礼盒
	tFashionEvent_Reward["UsePack"][3310702] = {}
	tFashionEvent_Reward["UsePack"][3310702]["DeleteItem"] = {}
	tFashionEvent_Reward["UsePack"][3310702]["DeleteItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310702]["DeleteItem"][1]["Id"] = 3310702
	tFashionEvent_Reward["UsePack"][3310702]["RewardItem"] = {}
	tFashionEvent_Reward["UsePack"][3310702]["RewardItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310702]["RewardItem"][1]["Id"] = 200532
	tFashionEvent_Reward["UsePack"][3310702]["RewardItem"][1]["Attr"] = "0 1 3 518400 1 0 0 1"
	tFashionEvent_Reward["UsePack"][3310702]["RewardItem"][2] = {}
	tFashionEvent_Reward["UsePack"][3310702]["RewardItem"][2]["Id"] = 3303245
	tFashionEvent_Reward["UsePack"][3310702]["RewardItem"][2]["Attr"] = "0 1"
	tFashionEvent_Reward["UsePack"][3310702]["Talk"] = tFashionEvent_Text[2005]["Item"][3310702]
	tFashionEvent_Reward["UsePack"][3310702]["LogId"] = 12001156
	
	-- 时尚领袖礼盒
	tFashionEvent_Reward["UsePack"][3310703] = {}
	tFashionEvent_Reward["UsePack"][3310703]["DeleteItem"] = {}
	tFashionEvent_Reward["UsePack"][3310703]["DeleteItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310703]["DeleteItem"][1]["Id"] = 3310703
	tFashionEvent_Reward["UsePack"][3310703]["RewardItem"] = {}
	tFashionEvent_Reward["UsePack"][3310703]["RewardItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310703]["RewardItem"][1]["Id"] = 200532
	tFashionEvent_Reward["UsePack"][3310703]["RewardItem"][1]["Attr"] = "0 1 3 259200 1 0 0 1"
	tFashionEvent_Reward["UsePack"][3310703]["RewardItem"][2] = {}
	tFashionEvent_Reward["UsePack"][3310703]["RewardItem"][2]["Id"] = 3306228
	tFashionEvent_Reward["UsePack"][3310703]["RewardItem"][2]["Attr"] = "0 1"
	tFashionEvent_Reward["UsePack"][3310703]["Talk"] = tFashionEvent_Text[2005]["Item"][3310703]
	tFashionEvent_Reward["UsePack"][3310703]["LogId"] = 12001156
	
	-- 时尚先锋礼盒
	tFashionEvent_Reward["UsePack"][3310704] = {}
	tFashionEvent_Reward["UsePack"][3310704]["DeleteItem"] = {}
	tFashionEvent_Reward["UsePack"][3310704]["DeleteItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310704]["DeleteItem"][1]["Id"] = 3310704
	tFashionEvent_Reward["UsePack"][3310704]["RewardItem"] = {}
	tFashionEvent_Reward["UsePack"][3310704]["RewardItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310704]["RewardItem"][1]["Id"] = 200532
	tFashionEvent_Reward["UsePack"][3310704]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1"
	tFashionEvent_Reward["UsePack"][3310704]["RewardItem"][2] = {}
	tFashionEvent_Reward["UsePack"][3310704]["RewardItem"][2]["Id"] = 3304201
	tFashionEvent_Reward["UsePack"][3310704]["RewardItem"][2]["Attr"] = "0 1"
	tFashionEvent_Reward["UsePack"][3310704]["Talk"] = tFashionEvent_Text[2005]["Item"][3310704]
	tFashionEvent_Reward["UsePack"][3310704]["LogId"] = 12001156
	
	-- 时尚精英礼盒
	tFashionEvent_Reward["UsePack"][3310705] = {}
	tFashionEvent_Reward["UsePack"][3310705]["DeleteItem"] = {}
	tFashionEvent_Reward["UsePack"][3310705]["DeleteItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310705]["DeleteItem"][1]["Id"] = 3310705
	tFashionEvent_Reward["UsePack"][3310705]["RewardItem"] = {}
	tFashionEvent_Reward["UsePack"][3310705]["RewardItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310705]["RewardItem"][1]["Id"] = 200532
	tFashionEvent_Reward["UsePack"][3310705]["RewardItem"][1]["Attr"] = "0 1 3 86400 1 0 0 1"
	tFashionEvent_Reward["UsePack"][3310705]["RewardItem"][2] = {}
	tFashionEvent_Reward["UsePack"][3310705]["RewardItem"][2]["Id"] = 3304335
	tFashionEvent_Reward["UsePack"][3310705]["RewardItem"][2]["Attr"] = "0 1"
	tFashionEvent_Reward["UsePack"][3310705]["Talk"] = tFashionEvent_Text[2005]["Item"][3310705]
	tFashionEvent_Reward["UsePack"][3310705]["LogId"] = 12001156
	
	-- 时尚达人礼盒
	tFashionEvent_Reward["UsePack"][3310706] = {}
	tFashionEvent_Reward["UsePack"][3310706]["DeleteItem"] = {}
	tFashionEvent_Reward["UsePack"][3310706]["DeleteItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310706]["DeleteItem"][1]["Id"] = 3310706
	tFashionEvent_Reward["UsePack"][3310706]["RewardItem"] = {}
	tFashionEvent_Reward["UsePack"][3310706]["RewardItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310706]["RewardItem"][1]["Id"] = 200532
	tFashionEvent_Reward["UsePack"][3310706]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tFashionEvent_Reward["UsePack"][3310706]["RewardItem"][2] = {}
	tFashionEvent_Reward["UsePack"][3310706]["RewardItem"][2]["Id"] = 3304335
	tFashionEvent_Reward["UsePack"][3310706]["RewardItem"][2]["Attr"] = "0 1"
	tFashionEvent_Reward["UsePack"][3310706]["Talk"] = tFashionEvent_Text[2005]["Item"][3310706]
	tFashionEvent_Reward["UsePack"][3310706]["LogId"] = 12001156
	
	-- 时尚新秀礼盒
	tFashionEvent_Reward["UsePack"][3310707] = {}
	tFashionEvent_Reward["UsePack"][3310707]["DeleteItem"] = {}
	tFashionEvent_Reward["UsePack"][3310707]["DeleteItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310707]["DeleteItem"][1]["Id"] = 3310707
	tFashionEvent_Reward["UsePack"][3310707]["RewardItem"] = {}
	tFashionEvent_Reward["UsePack"][3310707]["RewardItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310707]["RewardItem"][1]["Id"] = 200532
	tFashionEvent_Reward["UsePack"][3310707]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1"
	tFashionEvent_Reward["UsePack"][3310707]["RewardItem"][2] = {}
	tFashionEvent_Reward["UsePack"][3310707]["RewardItem"][2]["Id"] = 3304335
	tFashionEvent_Reward["UsePack"][3310707]["RewardItem"][2]["Attr"] = "0 1"
	tFashionEvent_Reward["UsePack"][3310707]["Talk"] = tFashionEvent_Text[2005]["Item"][3310707]
	tFashionEvent_Reward["UsePack"][3310707]["LogId"] = 12001156
	
	-- 时尚学徒礼盒
	tFashionEvent_Reward["UsePack"][3310708] = {}
	tFashionEvent_Reward["UsePack"][3310708]["DeleteItem"] = {}
	tFashionEvent_Reward["UsePack"][3310708]["DeleteItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310708]["DeleteItem"][1]["Id"] = 3310708
	tFashionEvent_Reward["UsePack"][3310708]["RewardItem"] = {}
	tFashionEvent_Reward["UsePack"][3310708]["RewardItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310708]["RewardItem"][1]["Id"] = 200532
	tFashionEvent_Reward["UsePack"][3310708]["RewardItem"][1]["Attr"] = "0 1 3 14400 1 0 0 1"
	tFashionEvent_Reward["UsePack"][3310708]["RewardItem"][2] = {}
	tFashionEvent_Reward["UsePack"][3310708]["RewardItem"][2]["Id"] = 3200348
	tFashionEvent_Reward["UsePack"][3310708]["RewardItem"][2]["Attr"] = "0 1"
	tFashionEvent_Reward["UsePack"][3310708]["Talk"] = tFashionEvent_Text[2005]["Item"][3310708]
	tFashionEvent_Reward["UsePack"][3310708]["LogId"] = 12001156
	
	-- 蝶恋花时尚包
	tFashionEvent_Reward["UsePack"][3310709] = {}
	tFashionEvent_Reward["UsePack"][3310709]["DeleteItem"] = {}
	tFashionEvent_Reward["UsePack"][3310709]["DeleteItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310709]["DeleteItem"][1]["Id"] = 3310709
	tFashionEvent_Reward["UsePack"][3310709]["RewardItem"] = {}
	tFashionEvent_Reward["UsePack"][3310709]["RewardItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310709]["RewardItem"][1]["Id"] = 193625
	tFashionEvent_Reward["UsePack"][3310709]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["UsePack"][3310709]["LogId"] = 12001156
	
	-- 天仙子时尚包
	tFashionEvent_Reward["UsePack"][3310710] = {}
	tFashionEvent_Reward["UsePack"][3310710]["DeleteItem"] = {}
	tFashionEvent_Reward["UsePack"][3310710]["DeleteItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310710]["DeleteItem"][1]["Id"] = 3310710
	tFashionEvent_Reward["UsePack"][3310710]["RewardItem"] = {}
	tFashionEvent_Reward["UsePack"][3310710]["RewardItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310710]["RewardItem"][1]["Id"] = 194395
	tFashionEvent_Reward["UsePack"][3310710]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["UsePack"][3310710]["LogId"] = 12001156
	
	-- 轻舞飞扬时尚包
	tFashionEvent_Reward["UsePack"][3310711] = {}
	tFashionEvent_Reward["UsePack"][3310711]["DeleteItem"] = {}
	tFashionEvent_Reward["UsePack"][3310711]["DeleteItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310711]["DeleteItem"][1]["Id"] = 3310711
	tFashionEvent_Reward["UsePack"][3310711]["RewardItem"] = {}
	tFashionEvent_Reward["UsePack"][3310711]["RewardItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310711]["RewardItem"][1]["Id"] = 195045
	tFashionEvent_Reward["UsePack"][3310711]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["UsePack"][3310711]["LogId"] = 12001156
	
	-- 紫音青衫时尚包
	tFashionEvent_Reward["UsePack"][3310712] = {}
	tFashionEvent_Reward["UsePack"][3310712]["DeleteItem"] = {}
	tFashionEvent_Reward["UsePack"][3310712]["DeleteItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310712]["DeleteItem"][1]["Id"] = 3310712
	tFashionEvent_Reward["UsePack"][3310712]["RewardItem"] = {}
	tFashionEvent_Reward["UsePack"][3310712]["RewardItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310712]["RewardItem"][1]["Id"] = 194875
	tFashionEvent_Reward["UsePack"][3310712]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["UsePack"][3310712]["LogId"] = 12001156
	
	-- 喵基尼时尚包
	tFashionEvent_Reward["UsePack"][3310713] = {}
	tFashionEvent_Reward["UsePack"][3310713]["DeleteItem"] = {}
	tFashionEvent_Reward["UsePack"][3310713]["DeleteItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310713]["DeleteItem"][1]["Id"] = 3310713
	tFashionEvent_Reward["UsePack"][3310713]["RewardItem"] = {}
	tFashionEvent_Reward["UsePack"][3310713]["RewardItem"][1] = {}
	tFashionEvent_Reward["UsePack"][3310713]["RewardItem"][1]["Id"] = 193565
	tFashionEvent_Reward["UsePack"][3310713]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFashionEvent_Reward["UsePack"][3310713]["LogId"] = 12001156
	
	-- 上线给一星时装碎片
	tFashionEvent_Reward["GetDebris"] = {}
	tFashionEvent_Reward["GetDebris"]["RewardItem"] = {}
	tFashionEvent_Reward["GetDebris"]["RewardItem"][1] = {}
	tFashionEvent_Reward["GetDebris"]["RewardItem"][1]["Id"] = 3310695
	tFashionEvent_Reward["GetDebris"]["RewardItem"][1]["Attr"] = "0 1"
	tFashionEvent_Reward["GetDebris"]["LogId"] = 12001156
	
	-- 怪物掉落
	tFashionEvent_Reward["Drop"] = {}
	-- 怪物掉落一星外套碎片
	tFashionEvent_Reward["Drop"][1] = {}
	tFashionEvent_Reward["Drop"][1]["RewardItem"] = {}
	tFashionEvent_Reward["Drop"][1]["RewardItem"][1] = {}
	tFashionEvent_Reward["Drop"][1]["RewardItem"][1]["Id"] = 3310695
	tFashionEvent_Reward["Drop"][1]["RewardItem"][1]["Attr"] = "0 1"
	tFashionEvent_Reward["Drop"][1]["LogId"] = 12001156
	tFashionEvent_Reward["Drop"][1]["LogStep"] = "1[2]"
	-- 怪物掉落二星外套碎片
	tFashionEvent_Reward["Drop"][2] = {}
	tFashionEvent_Reward["Drop"][2]["RewardItem"] = {}
	tFashionEvent_Reward["Drop"][2]["RewardItem"][1] = {}
	tFashionEvent_Reward["Drop"][2]["RewardItem"][1]["Id"] = 3310696
	tFashionEvent_Reward["Drop"][2]["RewardItem"][1]["Attr"] = "0 1"
	tFashionEvent_Reward["Drop"][2]["LogId"] = 12001156
	tFashionEvent_Reward["Drop"][2]["LogStep"] = "1[2]"
	
	
-- 概率表
local tFashionEvent_Random = {}
	-- 求教小礼
	tFashionEvent_Random["NeedItem"] = {}
	tFashionEvent_Random["NeedItem"][1] = {}
	tFashionEvent_Random["NeedItem"][1]["ItemChanceSum"] = 10000
	-- 通神丹*5              
	tFashionEvent_Random["NeedItem"][1][1] = {}
	tFashionEvent_Random["NeedItem"][1][1]["RandomItemChanceType"] = 2
	tFashionEvent_Random["NeedItem"][1][1]["ItemChance"] = 1000
	tFashionEvent_Random["NeedItem"][1][1]["ItemIndex"] = 1
	-- 通神丹*10         
	tFashionEvent_Random["NeedItem"][1][2] = {}
	tFashionEvent_Random["NeedItem"][1][2]["RandomItemChanceType"] = 2
	tFashionEvent_Random["NeedItem"][1][2]["ItemChance"] = 1000
	tFashionEvent_Random["NeedItem"][1][2]["ItemIndex"] = 2
	-- 强效护心丹*5         
	tFashionEvent_Random["NeedItem"][1][3] = {}
	tFashionEvent_Random["NeedItem"][1][3]["RandomItemChanceType"] = 2
	tFashionEvent_Random["NeedItem"][1][3]["ItemChance"] = 1000
	tFashionEvent_Random["NeedItem"][1][3]["ItemIndex"] = 3
	-- 强效护心丹*10         
	tFashionEvent_Random["NeedItem"][1][4] = {}
	tFashionEvent_Random["NeedItem"][1][4]["RandomItemChanceType"] = 2
	tFashionEvent_Random["NeedItem"][1][4]["ItemChance"] = 1000
	tFashionEvent_Random["NeedItem"][1][4]["ItemIndex"] = 4
	-- 9朵郁金香       
	tFashionEvent_Random["NeedItem"][1][5] = {}
	tFashionEvent_Random["NeedItem"][1][5]["RandomItemChanceType"] = 2
	tFashionEvent_Random["NeedItem"][1][5]["ItemChance"] = 700
	tFashionEvent_Random["NeedItem"][1][5]["ItemIndex"] = 5
	-- 9朵兰花       
	tFashionEvent_Random["NeedItem"][1][6] = {}
	tFashionEvent_Random["NeedItem"][1][6]["RandomItemChanceType"] = 2
	tFashionEvent_Random["NeedItem"][1][6]["ItemChance"] = 700
	tFashionEvent_Random["NeedItem"][1][6]["ItemIndex"] = 6
	-- 9朵百合花       
	tFashionEvent_Random["NeedItem"][1][7] = {}
	tFashionEvent_Random["NeedItem"][1][7]["RandomItemChanceType"] = 2
	tFashionEvent_Random["NeedItem"][1][7]["ItemChance"] = 700
	tFashionEvent_Random["NeedItem"][1][7]["ItemIndex"] = 7
	-- 9朵红玫瑰       
	tFashionEvent_Random["NeedItem"][1][8] = {}
	tFashionEvent_Random["NeedItem"][1][8]["RandomItemChanceType"] = 2
	tFashionEvent_Random["NeedItem"][1][8]["ItemChance"] = 700
	tFashionEvent_Random["NeedItem"][1][8]["ItemIndex"] = 8
	-- 99朵郁金香       
	tFashionEvent_Random["NeedItem"][1][9] = {}
	tFashionEvent_Random["NeedItem"][1][9]["RandomItemChanceType"] = 2
	tFashionEvent_Random["NeedItem"][1][9]["ItemChance"] = 500
	tFashionEvent_Random["NeedItem"][1][9]["ItemIndex"] = 9
	-- 99朵兰花       
	tFashionEvent_Random["NeedItem"][1][10] = {}
	tFashionEvent_Random["NeedItem"][1][10]["RandomItemChanceType"] = 2
	tFashionEvent_Random["NeedItem"][1][10]["ItemChance"] = 500
	tFashionEvent_Random["NeedItem"][1][10]["ItemIndex"] = 10
	-- 99朵百合花       
	tFashionEvent_Random["NeedItem"][1][11] = {}
	tFashionEvent_Random["NeedItem"][1][11]["RandomItemChanceType"] = 2
	tFashionEvent_Random["NeedItem"][1][11]["ItemChance"] = 500
	tFashionEvent_Random["NeedItem"][1][11]["ItemIndex"] = 11
	-- 99朵红玫瑰       
	tFashionEvent_Random["NeedItem"][1][12] = {}
	tFashionEvent_Random["NeedItem"][1][12]["RandomItemChanceType"] = 2
	tFashionEvent_Random["NeedItem"][1][12]["ItemChance"] = 500
	tFashionEvent_Random["NeedItem"][1][12]["ItemIndex"] = 12
	-- 999朵郁金香       
	tFashionEvent_Random["NeedItem"][1][13] = {}
	tFashionEvent_Random["NeedItem"][1][13]["RandomItemChanceType"] = 2
	tFashionEvent_Random["NeedItem"][1][13]["ItemChance"] = 300
	tFashionEvent_Random["NeedItem"][1][13]["ItemIndex"] = 13
	-- 999朵兰花       
	tFashionEvent_Random["NeedItem"][1][14] = {}
	tFashionEvent_Random["NeedItem"][1][14]["RandomItemChanceType"] = 2
	tFashionEvent_Random["NeedItem"][1][14]["ItemChance"] = 300
	tFashionEvent_Random["NeedItem"][1][14]["ItemIndex"] = 14
	-- 999朵百合花       
	tFashionEvent_Random["NeedItem"][1][15] = {}
	tFashionEvent_Random["NeedItem"][1][15]["RandomItemChanceType"] = 2
	tFashionEvent_Random["NeedItem"][1][15]["ItemChance"] = 300
	tFashionEvent_Random["NeedItem"][1][15]["ItemIndex"] = 15
	-- 999朵红玫瑰       
	tFashionEvent_Random["NeedItem"][1][16] = {}
	tFashionEvent_Random["NeedItem"][1][16]["RandomItemChanceType"] = 2
	tFashionEvent_Random["NeedItem"][1][16]["ItemChance"] = 300
	tFashionEvent_Random["NeedItem"][1][16]["ItemIndex"] = 16
	
	-- 怪物掉落
	tFashionEvent_Random["Drop"] = {}
	tFashionEvent_Random["Drop"][1] = {}
	tFashionEvent_Random["Drop"][1]["ItemChanceSum"] = 10000
	-- 掉落             
	tFashionEvent_Random["Drop"][1][1] = {}
	tFashionEvent_Random["Drop"][1][1]["RandomItemChanceType"] = 2
	tFashionEvent_Random["Drop"][1][1]["ItemChance"] = 100
	tFashionEvent_Random["Drop"][1][1]["Num"] = 1
	-- 无掉落         
	tFashionEvent_Random["Drop"][1][2] = {}
	tFashionEvent_Random["Drop"][1][2]["RandomItemChanceType"] = 2
	tFashionEvent_Random["Drop"][1][2]["ItemChance"] = 9900
	tFashionEvent_Random["Drop"][1][2]["Num"] = 0
	
	
-- 排行榜
	-- 时尚值排行
	tRankingFunc_Info[23187] = {}
	tRankingFunc_Info[23187]["ActiveTime"] = tActivityTime["FashionEvent"]["ActTime"]
	tRankingFunc_Info[23187]["DayTime"] = {}
	tRankingFunc_Info[23187]["DayTime"][1] = "00:00 23:59"
	tRankingFunc_Info[23187]["Reset"] = 1
	tRankingFunc_Info[23187]["Global"] = {52992,52993,52994,52995}
	tRankingFunc_Info[23187]["RankNum"] = 10
	
	
	
-----------------------------------------------逻辑部分-----------------------------------------
-- 是否为外套竞拍得主
function FashionEvent_IsGainer()
	for i=0, 4 do
		local nGainerId = Get_SysDynaGlobalData(tFashionEvent_Cont["AuctionGainer"]["UserId"],i)
		local nUserId = Get_UserId()
		
		if nUserId == nGainerId then
			return true
		end
	end
	
	return false
end

-- 取回天石
function FashionEvent_GetBack(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	-- 非领取时间
	if not Sys_ChkDayTime(tActivityTime["FashionEvent"]["GetTime"]) then
		Sys_MsgBox(tFashionEvent_Text[105]["GetBack"]["OutTime"])
		return false
	end
	
	-- 等级异常
	if not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"]) then
		return false
	end
	
	local nEvent_1 = tFashionEvent_Stc[1]["EventType"]
	local nType_1 = tFashionEvent_Stc[1]["DataType"]
	local nClearTime_1 = tFashionEvent_Stc[1]["Clear"]
	
	-- 隔1天重置掩码
	if Task_StcInterval(nEvent_1,nType_1,nClearTime_1,4) then
		Task_SetStatistic(nEvent_1,nType_1,0,1)
		Task_SetStcTimestamp(nEvent_1,nType_1,0)
	end
	
	local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
	
	-- 特殊操作导致竞标天石掩码已被清0·或者玩家为竞拍得主
	if nData_1 == 0 or FashionEvent_IsGainer() then
		return false
	end
	
	-- 天石达上限
	local nNowEmoney = Get_UserEMoney()
	if nNowEmoney + nData_1 > G_User_MaxEmoney then
		Sys_MsgBox(tFashionEvent_Text[105]["GetBack"]["FullEmoney"])
		return false
	end
	
	-- 置掩码
	Task_SetStatistic(nEvent_1,nType_1,0,1)
	Task_SetStcTimestamp(nEvent_1,nType_1,0)
	
	-- 给天石
	local tReward = CommonFunc_Copy(tFashionEvent_Reward["GetBack"])
	tReward["RewardEMoney"]["Value"] = nData_1
	tReward["EmoneyLog"] = string.format(tFashionEvent_Reward["GetBack"]["EmoneyLog"],nData_1,nData_1)
	
	RewardTemplate_UseItemAndMsg(tReward)
	
	local sMsg = string.format(tFashionEvent_Text[105]["GetBack"]["Success"],nData_1)
	Sys_MsgBox(sMsg)
	return true
end

-- 竞拍
function FashionEvent_Auction(nNpcId,nIndex)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	-- 非竞拍时间
	if not Sys_ChkDayTime(tActivityTime["FashionEvent"]["AuctionTime"]) then
		Sys_MsgBox(tFashionEvent_Text[105]["AuctionEnd"])
		return false
	end
	
	-- 等级异常
	if not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"]) then
		return false
	end
	
	local nEvent_1 = tFashionEvent_Stc[1]["EventType"]
	local nType_1 = tFashionEvent_Stc[1]["DataType"]
	local nClearTime_1 = tFashionEvent_Stc[1]["Clear"]
	local nEvent_2 = tFashionEvent_Stc[2]["EventType"]
	local nType_2 = tFashionEvent_Stc[2]["DataType"]
	local nClearTime_2 = tFashionEvent_Stc[2]["Clear"]
	
	-- 隔1天重置掩码
	if Task_StcInterval(nEvent_1,nType_1,nClearTime_1,4) then
		Task_SetStatistic(nEvent_1,nType_1,0,1)
		Task_SetStcTimestamp(nEvent_1,nType_1,0)
	end
	if Task_StcInterval(nEvent_2,nType_2,nClearTime_2,4) then
		Task_SetStatistic(nEvent_2,nType_2,0,1)
		Task_SetStcTimestamp(nEvent_2,nType_2,0)
	end
	
	local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
	local nData_2 = Get_UserStatisticValue(nEvent_2,nType_2)
	
	-- 取外套数据
	local nAuctionGlobal1 = tFashionEvent_Cont["AuctionGlobal"]["CoatId"]
	local nAuctionGlobal2 = tFashionEvent_Cont["AuctionGlobal"]["CoatLevel"]
	local nCoatId = Get_SysDynaGlobalData(nAuctionGlobal1,nIndex)
	local nCoatLevel = Get_SysDynaGlobalData(nAuctionGlobal2,nIndex)
	
	-- 无此拍卖
	if nCoatId == 0 then
		return false
	end
	
	-- 异常操作
	if nData_2 ~= 0 and nData_2 ~= nCoatId + 10000000*nIndex then
		return false
	end
	
	-- 外套名
	local sCoatName = Get_ItemtypeName(nCoatId)
	tNpcGossip[nNpcId]["Text223"] = string.format(tFashionEvent_Text[nNpcId]["Text223"],sCoatName)
	
	-- 星级
	local sLevel = ""
	for i=1, nCoatLevel do
		sLevel = sLevel .. tFashionEvent_Text[nNpcId]["Level"]
	end
	tNpcGossip[nNpcId]["Text224"] = string.format(tFashionEvent_Text[nNpcId]["Text224"],sLevel)
	
	-- 最高出价
	local nHighlest = Get_SysDynaGlobalData(tFashionEvent_Cont["AuctionGainer"]["Price"],nIndex)
	tNpcGossip[nNpcId]["Text225"] = string.format(tFashionEvent_Text[nNpcId]["Text225"],nHighlest)
	
	-- 我的出价
	if nData_1 ~= 0 then
		tNpcGossip[nNpcId]["Text226"] = string.format(tFashionEvent_Text[nNpcId]["Text226"],tostring(nData_1))
		
		tNpcGossip[nNpcId]["OptionFunc222"] = "FashionEvent_AuctionAdd</N>" .. nNpcId .. "</N>" .. nIndex
		tNpcGossip[nNpcId]["tOption2-2"] = {222,223}
		
	else
		tNpcGossip[nNpcId]["Text226"] = string.format(tFashionEvent_Text[nNpcId]["Text226"],tFashionEvent_Text[nNpcId]["NoAuction"])
		
		tNpcGossip[nNpcId]["OptionFunc221"] = "FashionEvent_AuctionBid</N>" .. nNpcId .. "</N>" .. nIndex
		tNpcGossip[nNpcId]["tOption2-2"] = {221,223}
	end
	
	LinkNpcGossipFunc_New(nNpcId,"2-2")
	return true
end

-- 初始出价
function FashionEvent_AuctionBid(nNpcId,nIndex)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	-- 非竞拍时间
	if not Sys_ChkDayTime(tActivityTime["FashionEvent"]["AuctionTime"]) then
		Sys_MsgBox(tFashionEvent_Text[105]["AuctionEnd"])
		return false
	end
	
	-- 等级异常
	if not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"]) then
		return false
	end
	
	Sys_DialogText(tFashionEvent_Text[nNpcId]["Text2210"] .. "\n")
	Sys_DialogText(tFashionEvent_Text[nNpcId]["Text228"])
	Sys_DialogText(tFashionEvent_Text[nNpcId]["Text229"])
	
	Sys_DialogOptEdit(tFashionEvent_Text[nNpcId]["Input"],tFashionEvent_Cont["Length"],"FashionEvent_BidInput</N>" .. nNpcId .. "</N>" .. nIndex)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

-- 初始出价输入框
function FashionEvent_BidInput(nNpcId,nIndex)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	-- 非竞拍时间
	if not Sys_ChkDayTime(tActivityTime["FashionEvent"]["AuctionTime"]) then
		Sys_MsgBox(tFashionEvent_Text[105]["AuctionEnd"])
		return false
	end
	
	-- 非竞拍时间
	if not Sys_ChkDayTime(tActivityTime["FashionEvent"]["AuctionTime"]) then
		Sys_MsgBox(tFashionEvent_Text[105]["AuctionEnd"])
		return false
	end
	
	-- 等级异常
	if not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"]) then
		return false
	end
	
	local nEvent_2 = tFashionEvent_Stc[2]["EventType"]
	local nType_2 = tFashionEvent_Stc[2]["DataType"]
	local nClearTime_2 = tFashionEvent_Stc[2]["Clear"]
	
	-- 隔1天重置掩码
	if Task_StcInterval(nEvent_2,nType_2,nClearTime_2,4) then
		Task_SetStatistic(nEvent_2,nType_2,0,1)
		Task_SetStcTimestamp(nEvent_2,nType_2,0)
	end
	
	local nData_2 = Get_UserStatisticValue(nEvent_2,nType_2)
	
	-- 取外套数据
	local nAuctionGlobal1 = tFashionEvent_Cont["AuctionGlobal"]["CoatId"]
	local nAuctionGlobal2 = tFashionEvent_Cont["AuctionGlobal"]["CoatLevel"]
	local nCoatId = Get_SysDynaGlobalData(nAuctionGlobal1,nIndex)
	
	-- 无此拍卖
	if nCoatId == 0 then
		return false
	end
	
	-- 异常操作
	if nData_2 ~= 0 then
		Sys_MsgBox(tFashionEvent_Text[105]["AreadyHaveAuction"])
		return false
	end
	
	-- 输入数值正确性判断
	local nMyPrice = tonumber(Get_SysAcceptStr())
	if nMyPrice == nil or type(nMyPrice) ~= "number" or nMyPrice%1 ~= 0 or nMyPrice <= 0 then
		Sys_MsgBox(tFashionEvent_Text[105]["InPutWrong"], "FashionEvent_AuctionBid</N>" .. nNpcId .. "</N>" .. nIndex, "NULL")
		return false
	end
	
	-- 天石不足
	local nNowEmoney = Get_UserEMoney()
	if nNowEmoney < nMyPrice then
		Sys_MsgBox(tFashionEvent_Text[105]["EmoneyNotEnough"], "FashionEvent_AuctionBid</N>" .. nNpcId .. "</N>" .. nIndex, "NULL")
		return false
	end	
	
	-- 出价低于最高价
	local nHighlest = Get_SysDynaGlobalData(tFashionEvent_Cont["AuctionGainer"]["Price"],nIndex)
	
	if nMyPrice <= nHighlest then
		Sys_MsgBox(tFashionEvent_Text[105]["UnderPrice"], "FashionEvent_AuctionBid</N>" .. nNpcId .. "</N>" .. nIndex, "NULL")
		return false
	end
	
	-- 二次确认
	local nEvent_3 = tFashionEvent_Stc[3]["EventType"]
	local nType_3 = tFashionEvent_Stc[3]["DataType"]
	local nData_3 = Get_UserStatisticValue(nEvent_3,nType_3)
	
	if nData_3 == 0 then			-- 未屏蔽
		local sCoatName = Get_ItemtypeName(nCoatId)
		tNpcGossip[nNpcId]["Text311"] = string.format(tFashionEvent_Text[nNpcId]["Text311"],nMyPrice,sCoatName)
		tNpcGossip[nNpcId]["OptionFunc311"] = "FashionEvent_BidConfirm</N>" .. nNpcId .. "</N>" .. nIndex .. "</N>" .. nMyPrice
		tNpcGossip[nNpcId]["OptionFunc312"] = "FashionEvent_Shield</N>" .. nNpcId .. "</N>3"
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return true
	else							-- 屏蔽
		FashionEvent_BidConfirm(nNpcId,nIndex,nMyPrice)
		return true
	end
end

-- 确认出价
function FashionEvent_BidConfirm(nNpcId,nIndex,nMyPrice)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	-- 非竞拍时间
	if not Sys_ChkDayTime(tActivityTime["FashionEvent"]["AuctionTime"]) then
		Sys_MsgBox(tFashionEvent_Text[105]["AuctionEnd"])
		return false
	end
	
	-- 等级异常
	if not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"]) then
		return false
	end
	
	local nEvent_2 = tFashionEvent_Stc[2]["EventType"]
	local nType_2 = tFashionEvent_Stc[2]["DataType"]
	local nClearTime_2 = tFashionEvent_Stc[2]["Clear"]
	
	-- 隔1天重置掩码
	if Task_StcInterval(nEvent_2,nType_2,nClearTime_2,4) then
		Task_SetStatistic(nEvent_2,nType_2,0,1)
		Task_SetStcTimestamp(nEvent_2,nType_2,0)
	end
	
	local nData_2 = Get_UserStatisticValue(nEvent_2,nType_2)
	
	-- 取外套数据
	local nAuctionGlobal1 = tFashionEvent_Cont["AuctionGlobal"]["CoatId"]
	local nAuctionGlobal2 = tFashionEvent_Cont["AuctionGlobal"]["CoatLevel"]
	local nCoatId = Get_SysDynaGlobalData(nAuctionGlobal1,nIndex)
	
	-- 无此拍卖
	if nCoatId == 0 then
		return false
	end
	
	-- 异常操作
	if nData_2 ~= 0 then
		Sys_MsgBox(tFashionEvent_Text[105]["AreadyHaveAuction"])
		return false
	end
	
	-- 天石不足
	local nNowEmoney = Get_UserEMoney()
	if nNowEmoney < nMyPrice then
		return false
	end	
	
	-- 出价低于最高价
	local nHighlest = Get_SysDynaGlobalData(tFashionEvent_Cont["AuctionGainer"]["Price"],nIndex)
	if nMyPrice <= nHighlest then
		Sys_MsgBox(tFashionEvent_Text[105]["UnderPrice"], "FashionEvent_AuctionBid</N>" .. nNpcId .. "</N>" .. nIndex, "NULL")
		return false
	end
	
	-- 扣天石
	if User_AddEMoney(-nMyPrice) then
		-- 置掩码
		local nEvent_1 = tFashionEvent_Stc[1]["EventType"]
		local nType_1 = tFashionEvent_Stc[1]["DataType"]
		
		Task_SetStatistic(nEvent_1,nType_1,nMyPrice,1)
		Task_SetStcTimestamp(nEvent_1,nType_1,0)
		Task_SetStatistic(nEvent_2,nType_2,nCoatId + 10000000*nIndex,1)
		Task_SetStcTimestamp(nEvent_2,nType_2,0)
		
		-- 设置Global
		Sys_SetSynaGlobalData(tFashionEvent_Cont["AuctionGainer"]["Price"],nIndex,nMyPrice)
		
		local nUserId = Get_UserId()
		local sUserName = Get_UserName(nUserId)
		Sys_SetSynaGlobalData(tFashionEvent_Cont["AuctionGainer"]["UserId"],nIndex,nUserId)
		Sys_SetSynaGlobalDataStr(tFashionEvent_Cont["AuctionGainer"]["UserName"],nIndex,sUserName)
		
		local sCoatName = Get_ItemtypeName(nCoatId)
		Sys_MsgBox(string.format(tFashionEvent_Text[105]["AuctionSuccess"],nMyPrice,sCoatName))
		
		local sEmoneyLog = string.format(tFashionEvent_Log["EmoneyLog"][1],nMyPrice,nMyPrice)
		Sys_SaveEmoneyBuy(sEmoneyLog)
		
		-- 是否发放过凭证
		local nEvent_5 = tFashionEvent_Stc[5]["EventType"]
		local nType_5 = tFashionEvent_Stc[5]["DataType"]
		local nClearTime_5 = tFashionEvent_Stc[5]["Clear"]
		
		-- 隔1天重置掩码
		if Task_StcInterval(nEvent_5,nType_5,nClearTime_5,4) then
			Task_SetStatistic(nEvent_5,nType_5,0,1)
			Task_SetStcTimestamp(nEvent_5,nType_5,0)
		end
		
		local nData_5 = Get_UserStatisticValue(nEvent_5,nType_5)
		
		if nData_5 == 0 then
			-- 判断背包空间
			local nSpace = RewardTemplate_GetRewardSpace(tFashionEvent_Reward["Voucher"])
			
			if User_CheckLeftSpace(nSpace) then
				RewardTemplate_UseItemAndMsg(tFashionEvent_Reward["Voucher"])
			else
				local nUserId = Get_UserId()
				local nActionId = tFashionEvent_Cont["Voucher"]["ActionId"]
				local nExistDay = tFashionEvent_Cont["Voucher"]["MailExistDay"]
				local sSender = tFashionEvent_Text["Mail"][23186]["Sender"]
				local sTitle = tFashionEvent_Text["Mail"][23186]["Title"]
				local sContent = tFashionEvent_Text["Mail"][23186]["Content"][2]
				
				Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
				User_TalkChannel2005(tFashionEvent_Text[2005]["FullBag"])
			end
			
			Task_SetStatistic(nEvent_5,nType_5,1,1)
			Task_SetStcTimestamp(nEvent_5,nType_5,0)
		end
		
		LinkNpcGossipFunc_New(nNpcId,"1")
		return true
	end
end

-- 加价
function FashionEvent_AuctionAdd(nNpcId,nIndex)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	-- 非竞拍时间
	if not Sys_ChkDayTime(tActivityTime["FashionEvent"]["AuctionTime"]) then
		Sys_MsgBox(tFashionEvent_Text[105]["AuctionEnd"])
		return false
	end
	
	-- 等级异常
	if not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"]) then
		return false
	end
	
	Sys_DialogText(tFashionEvent_Text[nNpcId]["Text2210"] .. "\n")
	Sys_DialogText(tFashionEvent_Text[nNpcId]["Text228"])
	Sys_DialogText(tFashionEvent_Text[nNpcId]["Text229"])
	
	Sys_DialogOptEdit(tFashionEvent_Text[nNpcId]["Input"],tFashionEvent_Cont["Length"],"FashionEvent_AddInput</N>" .. nNpcId .. "</N>" .. nIndex)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

-- 加价输入框
function FashionEvent_AddInput(nNpcId,nIndex)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	-- 非竞拍时间
	if not Sys_ChkDayTime(tActivityTime["FashionEvent"]["AuctionTime"]) then
		Sys_MsgBox(tFashionEvent_Text[105]["AuctionEnd"])
		return false
	end
	
	-- 等级异常
	if not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"]) then
		return false
	end
	
	local nEvent_1 = tFashionEvent_Stc[1]["EventType"]
	local nType_1 = tFashionEvent_Stc[1]["DataType"]
	local nClearTime_1 = tFashionEvent_Stc[1]["Clear"]
	local nEvent_2 = tFashionEvent_Stc[2]["EventType"]
	local nType_2 = tFashionEvent_Stc[2]["DataType"]
	local nClearTime_2 = tFashionEvent_Stc[2]["Clear"]
	
	-- 隔1天重置掩码
	if Task_StcInterval(nEvent_1,nType_1,nClearTime_1,4) then
		Task_SetStatistic(nEvent_1,nType_1,0,1)
		Task_SetStcTimestamp(nEvent_1,nType_1,0)
	end
	if Task_StcInterval(nEvent_2,nType_2,nClearTime_2,4) then
		Task_SetStatistic(nEvent_2,nType_2,0,1)
		Task_SetStcTimestamp(nEvent_2,nType_2,0)
	end
	
	local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
	local nData_2 = Get_UserStatisticValue(nEvent_2,nType_2)
	
	-- 取外套数据
	local nAuctionGlobal1 = tFashionEvent_Cont["AuctionGlobal"]["CoatId"]
	local nAuctionGlobal2 = tFashionEvent_Cont["AuctionGlobal"]["CoatLevel"]
	local nCoatId = Get_SysDynaGlobalData(nAuctionGlobal1,nIndex)
	
	-- 无此拍卖
	if nCoatId == 0 then
		return false
	end
	
	-- 异常操作
	if nData_2 ~= nCoatId + 10000000*nIndex or nData_1 == 0 then
		return false
	end
	
	-- 输入数值正确性判断
	local nAddPrice = tonumber(Get_SysAcceptStr())
	if nAddPrice == nil or type(nAddPrice) ~= "number" or nAddPrice%1 ~= 0 or nAddPrice <= 0 then
		Sys_MsgBox(tFashionEvent_Text[105]["InPutWrong"], "FashionEvent_AuctionAdd</N>" .. nNpcId .. "</N>" .. nIndex, "NULL")
		return false
	end
	
	-- 天石不足
	local nNowEmoney = Get_UserEMoney()
	if nNowEmoney < nAddPrice then
		Sys_MsgBox(tFashionEvent_Text[105]["EmoneyNotEnough"], "FashionEvent_AuctionAdd</N>" .. nNpcId .. "</N>" .. nIndex, "NULL")
		return false
	end	
	
	-- 加价后低于最高出价
	local nMyPrice = nAddPrice + nData_1
	local nHighlest = Get_SysDynaGlobalData(tFashionEvent_Cont["AuctionGainer"]["Price"],nIndex)
	
	if nMyPrice <= nHighlest then
		Sys_MsgBox(tFashionEvent_Text[105]["AddUnderPrice"], "FashionEvent_AuctionAdd</N>" .. nNpcId .. "</N>" .. nIndex, "NULL")
		return false
	end
	
	-- 二次确认
	local nEvent_4 = tFashionEvent_Stc[4]["EventType"]
	local nType_4 = tFashionEvent_Stc[4]["DataType"]
	local nData_4 = Get_UserStatisticValue(nEvent_4,nType_4)
	
	if nData_4 == 0 then			-- 未屏蔽
		local sCoatName = Get_ItemtypeName(nCoatId)
		tNpcGossip[nNpcId]["Text321"] = string.format(tFashionEvent_Text[nNpcId]["Text321"],nAddPrice,sCoatName)
		tNpcGossip[nNpcId]["OptionFunc321"] = "FashionEvent_AddConfirm</N>" .. nNpcId .. "</N>" .. nIndex .. "</N>" .. nAddPrice
		tNpcGossip[nNpcId]["OptionFunc322"] = "FashionEvent_Shield</N>" .. nNpcId .. "</N>4"
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return true
	else							-- 屏蔽
		FashionEvent_AddConfirm(nNpcId,nIndex,nAddPrice)
		return true
	end
end

-- 确认加价
function FashionEvent_AddConfirm(nNpcId,nIndex,nAddPrice)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	-- 非竞拍时间
	if not Sys_ChkDayTime(tActivityTime["FashionEvent"]["AuctionTime"]) then
		Sys_MsgBox(tFashionEvent_Text[105]["AuctionEnd"])
		return false
	end
	
	-- 等级异常
	if not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"]) then
		return false
	end
	
	local nEvent_1 = tFashionEvent_Stc[1]["EventType"]
	local nType_1 = tFashionEvent_Stc[1]["DataType"]
	local nClearTime_1 = tFashionEvent_Stc[1]["Clear"]
	local nEvent_2 = tFashionEvent_Stc[2]["EventType"]
	local nType_2 = tFashionEvent_Stc[2]["DataType"]
	local nClearTime_2 = tFashionEvent_Stc[2]["Clear"]
	
	-- 隔1天重置掩码
	if Task_StcInterval(nEvent_1,nType_1,nClearTime_1,4) then
		Task_SetStatistic(nEvent_1,nType_1,0,1)
		Task_SetStcTimestamp(nEvent_1,nType_1,0)
	end
	if Task_StcInterval(nEvent_2,nType_2,nClearTime_2,4) then
		Task_SetStatistic(nEvent_2,nType_2,0,1)
		Task_SetStcTimestamp(nEvent_2,nType_2,0)
	end
	
	local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
	local nData_2 = Get_UserStatisticValue(nEvent_2,nType_2)
	
	-- 取外套数据
	local nAuctionGlobal1 = tFashionEvent_Cont["AuctionGlobal"]["CoatId"]
	local nAuctionGlobal2 = tFashionEvent_Cont["AuctionGlobal"]["CoatLevel"]
	local nCoatId = Get_SysDynaGlobalData(nAuctionGlobal1,nIndex)
	
	-- 无此拍卖
	if nCoatId == 0 then
		return false
	end
	
	-- 异常操作
	if nData_2 ~= nCoatId + 10000000*nIndex or nData_1 == 0 then
		return false
	end
	
	-- 天石不足
	local nNowEmoney = Get_UserEMoney()
	if nNowEmoney < nAddPrice then
		return false
	end	
	
	-- 加价后低于最高出价
	local nHighlest = Get_SysDynaGlobalData(tFashionEvent_Cont["AuctionGainer"]["Price"],nIndex)
	local nMyPrice = nAddPrice + nData_1
	if nMyPrice <= nHighlest then
		Sys_MsgBox(tFashionEvent_Text[105]["AddUnderPrice"], "FashionEvent_AuctionAdd</N>" .. nNpcId .. "</N>" .. nIndex, "NULL")
		return false
	end
	
	-- 扣天石
	if User_AddEMoney(-nAddPrice) then
		-- 置掩码
		local nEvent_1 = tFashionEvent_Stc[1]["EventType"]
		local nType_1 = tFashionEvent_Stc[1]["DataType"]
		
		Task_SetStatistic(nEvent_1,nType_1,nMyPrice,1)
		Task_SetStcTimestamp(nEvent_1,nType_1,0)
		
		-- 设置Global
		Sys_SetSynaGlobalData(tFashionEvent_Cont["AuctionGainer"]["Price"],nIndex,nMyPrice)
		
		local nUserId = Get_UserId()
		local sUserName = Get_UserName(nUserId)
		Sys_SetSynaGlobalData(tFashionEvent_Cont["AuctionGainer"]["UserId"],nIndex,nUserId)
		Sys_SetSynaGlobalDataStr(tFashionEvent_Cont["AuctionGainer"]["UserName"],nIndex,sUserName)
		
		local sCoatName = Get_ItemtypeName(nCoatId)
		Sys_MsgBox(string.format(tFashionEvent_Text[105]["AddSuccess"],nAddPrice,sCoatName,nMyPrice))
		
		local sEmoneyLog = string.format(tFashionEvent_Log["EmoneyLog"][1],nAddPrice,nAddPrice)
		Sys_SaveEmoneyBuy(sEmoneyLog)
		
		-- 是否发放过凭证
		local nEvent_5 = tFashionEvent_Stc[5]["EventType"]
		local nType_5 = tFashionEvent_Stc[5]["DataType"]
		local nClearTime_5 = tFashionEvent_Stc[5]["Clear"]
		
		-- 隔1天重置掩码
		if Task_StcInterval(nEvent_5,nType_5,nClearTime_5,4) then
			Task_SetStatistic(nEvent_5,nType_5,0,1)
			Task_SetStcTimestamp(nEvent_5,nType_5,0)
		end
		
		local nData_5 = Get_UserStatisticValue(nEvent_5,nType_5)
		
		if nData_5 == 0 then
			-- 判断背包空间
			local nSpace = RewardTemplate_GetRewardSpace(tFashionEvent_Reward["Voucher"])
			
			if User_CheckLeftSpace(nSpace) then
				RewardTemplate_UseItemAndMsg(tFashionEvent_Reward["Voucher"])
			else
				local nUserId = Get_UserId()
				local nActionId = tFashionEvent_Cont["Voucher"]["ActionId"]
				local nExistDay = tFashionEvent_Cont["Voucher"]["MailExistDay"]
				local sSender = tFashionEvent_Text["Mail"][23186]["Sender"]
				local sTitle = tFashionEvent_Text["Mail"][23186]["Title"]
				local sContent = tFashionEvent_Text["Mail"][23186]["Content"][2]
				
				Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
				User_TalkChannel2005(tFashionEvent_Text[2005]["FullBag"])
			end
			
			Task_SetStatistic(nEvent_5,nType_5,1,1)
			Task_SetStcTimestamp(nEvent_5,nType_5,0)
		end
		
		LinkNpcGossipFunc_New(nNpcId,"1")
		return true
	end
end

-- 屏蔽二次确认
function FashionEvent_Shield(nNpcId,nIndex)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) then
		return false
	end
	
	-- 非竞拍时间
	if not Sys_ChkDayTime(tActivityTime["FashionEvent"]["AuctionTime"]) and nIndex ~= 7 then
		Sys_MsgBox(tFashionEvent_Text[105]["AuctionEnd"])
		return false
	end
	
	-- 等级异常
	if not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"]) then
		return false
	end
	
	local nEvent = tFashionEvent_Stc[nIndex]["EventType"]
	local nType = tFashionEvent_Stc[nIndex]["DataType"]
	
	Task_SetStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	LinkNpcGossipFunc_New(nNpcId,"1")
end	

-- 选择外套
function FashionEvent_ChooseCoat(nNpcId,nLevel)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	-- 等级异常
	if not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"]) then
		return false
	end
	
	-- 显示选项
	local tOption = {}
	for i=1, #tFashionEvent_Cont["Coat"][nLevel] do
		local nCoatId = tFashionEvent_Cont["Coat"][nLevel][i]
		if Item_ChkMulItem(nCoatId,nCoatId,1,1,0,0,0) then
			local sCoatName = Get_ItemtypeName(nCoatId)
			
			-- 标明赠与非赠
			if Item_ChkMulItem(nCoatId,nCoatId,1,2,0,0,0) then
				tNpcGossip[nNpcId]["Option31" .. #tOption+1] = sCoatName .. tFashionEvent_Text[nNpcId]["Present"]
				tNpcGossip[nNpcId]["OptionFunc31" .. #tOption+1] = "FashionEvent_HandInCoat</N>" .. nNpcId .. "</N>" .. nCoatId .. "</N>" .. nLevel .. "</N>2"
			elseif Item_ChkMulItem(nCoatId,nCoatId,1,0,0,0,0) then
				tNpcGossip[nNpcId]["Option31" .. #tOption+1] = sCoatName
				tNpcGossip[nNpcId]["OptionFunc31" .. #tOption+1] = "FashionEvent_HandInCoat</N>" .. nNpcId .. "</N>" .. nCoatId .. "</N>" .. nLevel .. "</N>0"
			end
			
			-- 超过十个选项
			if #tOption+1 >= 10 then
				tOption[#tOption+1] = 3101 + #tOption
			else
				tOption[#tOption+1] = 311 + #tOption
			end
		end
	end
	
	-- 异常情况·无外套
	if #tOption == 0 then
		return false
	end
	
	tNpcGossip[nNpcId]["Text311"] = string.format(tFashionEvent_Text[nNpcId]["Text311"],nLevel)
	tNpcGossip[nNpcId]["tOption3-1"] = tOption
	LinkNpcGossipFunc_New(nNpcId,"3-1")
	return true
end

-- 上交外套
function FashionEvent_HandInCoat(nNpcId,nCoatId,nLevel,nMonopoly)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	-- 等级异常
	if not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"]) then
		return false
	end
	
	-- 补充18.55-19.05不可上交提示
	if Sys_ChkDayTime(tActivityTime["FashionEvent"]["NotHandInTime"]) then
		Sys_MsgBox(tFashionEvent_Text[105]["NotHandInTime"])
		return false
	end
	
	-- 无该外套
	if not Item_ChkMulItem(nCoatId,nCoatId,1,nMonopoly,0,0,0) then
		Sys_MsgBox(tFashionEvent_Text[105]["NoCoat"])
		return false
	end
	
	local nEvent_6 = tFashionEvent_Stc[6]["EventType"]
	local nType_6 = tFashionEvent_Stc[6]["DataType"]
	local nData_6 = Get_UserStatisticValue(nEvent_6,nType_6)
	
	-- 删外套
	if Item_ChkMulItem(nCoatId,nCoatId,1,nMonopoly,0,0,0) and Item_DelMulItem(nCoatId,nCoatId,1,nMonopoly,0,0,0) then
		-- 置掩码
		local nFashionValue = nData_6 + tFashionEvent_Cont["FashionValue"]["HandIn"][nLevel]
		
		Task_SetStatistic(nEvent_6,nType_6,nFashionValue,1)
		Task_SetStcTimestamp(nEvent_6,nType_6,0)
		
		-- 时尚值排行榜
		RankingFunc_SetInfo(nNpcId,nFashionValue)
		
		User_TalkChannel2005(tFashionEvent_Text[105]["HandInSuccess"][nLevel])
		
		-- 上交的外套星级排行·前五进拍卖行
		if not Sys_ChkDayTime(tActivityTime["FashionEvent"]["NotHandInTime"]) then
			local nGlobal1 = tFashionEvent_Cont["NoAuctionGlobal"]["CoatId"]
			local nGlobal2 = tFashionEvent_Cont["NoAuctionGlobal"]["CoatLevel"]
			
			for i=4, 0 ,-1 do
				local nNowCoatId = Get_SysDynaGlobalData(nGlobal1,i)
				local nNowCoatLevel = Get_SysDynaGlobalData(nGlobal2,i)
				
				if nLevel > nNowCoatLevel then
					Sys_SetSynaGlobalData(nGlobal1,i,nCoatId)
					Sys_SetSynaGlobalData(nGlobal2,i,nLevel)
					Sys_SetSynaGlobalData(nGlobal1,i+1,nNowCoatId)
					Sys_SetSynaGlobalData(nGlobal2,i+1,nNowCoatLevel)
				end
			end
		end
		
		local sLog = string.format(tFashionEvent_Log["FashionValue"],nCoatId)
		Sys_SaveActionFestivalLog(sLog)
		
		-- 添加emoneylog记录
		Sys_SaveEmoneyBuy(tFashionEvent_Log["HandIn"])
		
		LinkNpcGossipFunc_New(nNpcId,"1")
		return true
	end
end

-- 五星外套洗赠
function FashionEvent_WashCoat(nNpcId,nCoatId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	-- 等级异常
	if not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"]) then
		return false
	end
	
	-- 无该赠外套
	local sCoatName = Get_ItemtypeName(nCoatId)
	if not Item_ChkMulItem(nCoatId,nCoatId,1,2,0,0,0) then
		Sys_MsgBox(string.format(tFashionEvent_Text[105]["BatheFail"]["NoCoat"],sCoatName))
		return false
	end
	
	-- 天石不足
	local nNowEmoney = Get_UserEMoney()
	if nNowEmoney < tFashionEvent_Cont["WashCost"] then
		Sys_MsgBox(tFashionEvent_Text[105]["BatheFail"]["NoEmoney"])
		return false
	end	
	
	-- 二次确认
	local nEvent_7 = tFashionEvent_Stc[7]["EventType"]
	local nType_7 = tFashionEvent_Stc[7]["DataType"]
	local nData_7 = Get_UserStatisticValue(nEvent_7,nType_7)
	
	if nData_7 == 0 then			-- 未屏蔽
		local sCoatName = Get_ItemtypeName(nCoatId)
		tNpcGossip[nNpcId]["Text321"] = string.format(tFashionEvent_Text[nNpcId]["Text321"],sCoatName)
		tNpcGossip[nNpcId]["OptionFunc321"] = "FashionEvent_WashConfirm</N>" .. nNpcId .. "</N>" .. nCoatId
		tNpcGossip[nNpcId]["OptionFunc322"] = "FashionEvent_Shield</N>" .. nNpcId .. "</N>7"
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return true
	else							-- 屏蔽
		FashionEvent_WashConfirm(nNpcId,nCoatId)
		return true
	end
	
	return true
end

-- 洗赠二次确认
function FashionEvent_WashConfirm(nNpcId,nCoatId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	-- 等级异常
	if not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"]) then
		return false
	end
	
	-- 无该赠外套
	local sCoatName = Get_ItemtypeName(nCoatId)
	if not Item_ChkMulItem(nCoatId,nCoatId,1,2,0,0,0) then
		Sys_MsgBox(string.format(tFashionEvent_Text[105]["BatheFail"]["NoCoat"],sCoatName))
		return false
	end
	
	-- 天石不足
	local nNowEmoney = Get_UserEMoney()
	local nCostEmoney = tFashionEvent_Cont["WashCost"]
	if nNowEmoney < nCostEmoney then
		Sys_MsgBox(tFashionEvent_Text[105]["BatheFail"]["NoEmoney"])
		return false
	end	
	
	-- 扣天石并删除赠外套
	if User_AddEMoney(-nCostEmoney) and Item_ChkMulItem(nCoatId,nCoatId,1,2,0,0,0) and Item_DelMulItem(nCoatId,nCoatId,1,2,0,0,0)then
		-- 给非赠外套
		local tReward = CommonFunc_Copy(tFashionEvent_Reward["Wash"])
		tReward["RewardItem"][1]["Id"] = nCoatId
		
		RewardTemplate_UseItemAndMsg(tReward)
		
		Sys_MsgBox(string.format(tFashionEvent_Text[105]["BatheSuccess"],sCoatName))
		
		local sEmoneyLog = string.format(tFashionEvent_Log["EmoneyLog"][2],nCostEmoney,nCostEmoney)
		Sys_SaveEmoneyBuy(sEmoneyLog)
		
		return true
	end
end

-- 领取阶段奖励
function FashionEvent_GetStageReward(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	-- 等级异常
	if not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"]) then
		return false
	end
	
	local nEvent_6 = tFashionEvent_Stc[6]["EventType"]
	local nType_6 = tFashionEvent_Stc[6]["DataType"]
	local nData_6 = Get_UserStatisticValue(nEvent_6,nType_6)
	local nEvent_8 = tFashionEvent_Stc[8]["EventType"]
	local nType_8 = tFashionEvent_Stc[8]["DataType"]
	local nData_8 = Get_UserStatisticValue(nEvent_8,nType_8)
	
	-- 异常情况·已领满
	if nData_8 >= 5 then
		return false
	end
	
	-- 异常情况·时尚值不足
	local nNext = nData_8 + 1
	if nData_6 < tFashionEvent_Cont["FashionValue"]["Stage"][nNext] then
		return false
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tFashionEvent_Reward["Stage"][nNext])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tFashionEvent_Text[105]["FullBag"],nSpace))
		return
	end
	
	-- 置掩码
	Task_SetStatistic(nEvent_8,nType_8,nNext,1)
	Task_SetStcTimestamp(nEvent_8,nType_8,0)
	
	RewardTemplate_UseItemAndMsg(tFashionEvent_Reward["Stage"][nNext])
	
	LinkNpcGossipFunc_New(nNpcId,"2-4")
	return true
end

-- 上交物品
function FashionEvent_HandInItem(nNpcId,nItemIndex)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	-- 等级异常
	if not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"]) then
		return false
	end
	
	local nItemId = tFashionEvent_Cont["NeedItem"][nItemIndex]["ItemId"]
	local nDelNum = tFashionEvent_Cont["NeedItem"][nItemIndex]["Num"]
	
	-- 材料不足
	if not Item_ChkMulItem(nItemId,nItemId,nDelNum,1) then
		local sItemName = Get_ItemtypeName(nItemId)
		Sys_MsgBox(string.format(tFashionEvent_Text[105]["NoMaterial"],sItemName))
		return false
	end
	
	local tReward = CommonFunc_Copy(tFashionEvent_Reward[3310700])
	tReward["DeleteItem"][1]["Id"] = nItemId
	tReward["DeleteItem"][1]["ItemNum"] = nDelNum
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tReward)
	
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tFashionEvent_Text[105]["FullBag2"])
		return false
	end
	
	-- 置掩码
	local nStcIndex = tFashionEvent_Cont["StcIndex"][nNpcId]
	local nEvent = tFashionEvent_Stc[nStcIndex]["EventType"]
	local nType = tFashionEvent_Stc[nStcIndex]["DataType"]
	Task_SetStatistic(nEvent,nType,0,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	RewardTemplate_UseItemAndMsg(tReward)
	
	local nRandom = math.random(1,5)
	LinkNpcGossipFunc_New(nNpcId,"2-" .. tostring(nRandom))
	return true
end

-- 使用凭证
function FashionEvent_UseVoucher(nItemId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			-- 记录删除log
			local sLog = string.format(tFashionEvent_Log["Del"],nItemId,1)
			Sys_SaveActionFestivalLog(sLog)
		end
		
		Sys_MsgBox(tFashionEvent_Text[105]["GetBackByItem"]["OutTime"])
		return false
	end
	
	-- 等级异常
	if not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"]) then
		return false
	end
	
	-- 判断取回天石时间
	if not Sys_ChkDayTime(tActivityTime["FashionEvent"]["GetTime"]) then
		Sys_MsgBox(tFashionEvent_Text[105]["GetBackByItem"]["BeforeTime"])
		return false
	end
	
	local nEvent_1 = tFashionEvent_Stc[1]["EventType"]
	local nType_1 = tFashionEvent_Stc[1]["DataType"]
	local nClearTime_1 = tFashionEvent_Stc[1]["Clear"]
	
	-- 隔1天重置掩码
	if Task_StcInterval(nEvent_1,nType_1,nClearTime_1,4) then
		Task_SetStatistic(nEvent_1,nType_1,0,1)
		Task_SetStcTimestamp(nEvent_1,nType_1,0)
	end
	
	local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
	
	-- 有可领取的退还天石·或者玩家为竞拍得主
	if nData_1 == 0 or FashionEvent_IsGainer() then
		Sys_MsgBox(tFashionEvent_Text[105]["GetBackByItem"]["NoEmoney"])
		return false
	end
	
	-- 天石达上限
	local nNowEmoney = Get_UserEMoney()
	if nNowEmoney + nData_1 > G_User_MaxEmoney then
		Sys_MsgBox(tFashionEvent_Text[105]["GetBackByItem"]["FullEmoney"])
		return false
	end
	
	-- 置掩码
	Task_SetStatistic(nEvent_1,nType_1,0,1)
	Task_SetStcTimestamp(nEvent_1,nType_1,0)
	
	-- 给天石
	local tReward = CommonFunc_Copy(tFashionEvent_Reward["GetBackByItem"])
	tReward["RewardEMoney"]["Value"] = nData_1
	tReward["EmoneyLog"] = string.format(tFashionEvent_Reward["GetBackByItem"]["EmoneyLog"],nData_1,nData_1)
	
	RewardTemplate_UseItemAndMsg(tReward)
	
	local sMsg = string.format(tFashionEvent_Text[105]["GetBackByItem"]["Success"],nData_1)
	local sTalk = string.format(tFashionEvent_Text[2005]["GetBackSuccess"],nData_1)
	Sys_MsgBox(sMsg)
	User_TalkChannel2005(sTalk)
	return true
end

-- 使用单个碎片
function FashionEvent_UseDebris(nItemId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			-- 记录删除log
			local sLog = string.format(tFashionEvent_Log["Del"],nItemId,1)
			Sys_SaveActionFestivalLog(sLog)
		end
		
		Sys_MsgBox(tFashionEvent_Text[2005]["Item"]["OutTime"])
		return false
	end
	
	-- 等级异常
	if not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"]) then
		return false
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tFashionEvent_Reward["UseDebris"],nItemId)
	
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tFashionEvent_Text[2005]["Item"]["FullBag"])
		return false
	end
	
	-- 删物品
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local tReward = RewardTemplate_NewRandomNoTip(tFashionEvent_Reward["UseDebris"],nItemId)
		if tReward["RewardItem"] ~= nil then
			local nRewardItemId = tReward["RewardItem"][1]["Id"]
			Sys_MsgBox(tFashionEvent_Text[105]["Item"]["UpLevel"][nRewardItemId])
		elseif tReward["RewardStrengthValue"] ~= nil then
			Sys_MsgBox(tFashionEvent_Text[105]["Item"]["GetStrength"][nItemId])
		end
		
		-- 添加log记录
		Sys_SaveEmoneyBuy(tFashionEvent_Log["UseDebris"][nItemId])
		
		return true
	end
end

-- 合成外套
function FashionEvent_CompoundDebris(nItemId,nItemNum)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			-- 记录删除log
			local sLog = string.format(tFashionEvent_Log["Del"],nItemId,1)
			Sys_SaveActionFestivalLog(sLog)
		end
		
		Sys_MsgBox(tFashionEvent_Text[2005]["Item"]["OutTime"])
		return false
	end
	
	-- 等级异常
	if not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"]) then
		return false
	end
	
	-- 碎片不足
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum,1) then
		Sys_MsgBox(tFashionEvent_Text[105]["Item"]["NotEnough"][nItemId])
		return false
	end
	
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tFashionEvent_Reward["CompoundDebris"],nItemId)
	
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tFashionEvent_Text[2005]["Item"]["FullBag"])
		return false
	end
	
	-- 删物品
	if Item_ChkMulItem(nItemId,nItemId,nItemNum,1) and Item_DelMulItem(nItemId,nItemId,nItemNum,1) then
		-- 加时尚值
		local nEvent_6 = tFashionEvent_Stc[6]["EventType"]
		local nType_6 = tFashionEvent_Stc[6]["DataType"]
		local nData_6 = Get_UserStatisticValue(nEvent_6,nType_6)
		local nFashionValue = nData_6 + tFashionEvent_Cont["FashionValue"]["Compound"][nItemId]
		
		Task_SetStatistic(nEvent_6,nType_6,nFashionValue,1)
		Task_SetStcTimestamp(nEvent_6,nType_6,0)
		
		-- 时尚值排行榜
		RankingFunc_SetInfo(23187,nFashionValue)
		
		-- 给奖励
		local tReward = RewardTemplate_NewRandomNoTip(tFashionEvent_Reward["CompoundDebris"],nItemId)
		if tReward["RewardItem"] ~= nil then
			local nRewardItemId = tReward["RewardItem"][1]["Id"]
			local sItemName = Get_ItemtypeName(nRewardItemId)
			local sMsg = string.format(tFashionEvent_Text[105]["Item"]["Success"][nItemId],sItemName)
			Sys_MsgBox(sMsg)
			User_TalkChannel2005(sMsg)
		end
		
		-- 添加emoneylog记录
		Sys_SaveEmoneyBuy(tFashionEvent_Log["CompoundDebris"][nItemId])
		
		return true
	end
end

-- 怪物掉落
function FashionEvent_MonsterDrop()
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) then
		return false
	end
	
	-- 等级不足
	if not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"]) then
		return false
	end
	
	local nEvent_14 = tFashionEvent_Stc[14]["EventType"]
	local nType_14 = tFashionEvent_Stc[14]["DataType"]
	local nClearTime_14 = tFashionEvent_Stc[14]["Clear"]
	local nLimit_14 = tFashionEvent_Stc[14]["Limit"]
	local nEvent_15 = tFashionEvent_Stc[15]["EventType"]
	local nType_15 = tFashionEvent_Stc[15]["DataType"]
	local nClearTime_15 = tFashionEvent_Stc[15]["Clear"]
	local nLimit_15 = tFashionEvent_Stc[15]["Limit"]
	
	-- 隔1天重置掩码
	if Task_StcInterval(nEvent_14,nType_14,nClearTime_14,4) then
		Task_SetStatistic(nEvent_14,nType_14,0,1)
		Task_SetStcTimestamp(nEvent_14,nType_14,0)
	end
	if Task_StcInterval(nEvent_15,nType_15,nClearTime_15,4) then
		Task_SetStatistic(nEvent_15,nType_15,0,1)
		Task_SetStcTimestamp(nEvent_15,nType_15,0)
	end
	
	local nData_14 = Get_UserStatisticValue(nEvent_14,nType_14)
	local nData_15 = Get_UserStatisticValue(nEvent_15,nType_15)
	
	-- 判断一星掉落数
	if nData_14 == nLimit_14 then
		Task_AddStatistic(nEvent_14,nType_14,1,1)
		Task_SetStcTimestamp(nEvent_14,nType_14,0)
		
		Sys_MsgBox(tFashionEvent_Text[105]["DropLimit1"])
	elseif nData_14 < nLimit_14 then
		local nFlag1,tAward1 = Probabil_RandomAward(tFashionEvent_Random["Drop"],1)
		local nDrop1 = tAward1[1]["tAward"][1]["Num"]
		
		-- 掉落一星外套碎片
		if nDrop1 == 1 then
			-- 判断背包空间
			local nSpace1 = RewardTemplate_GetRewardSpace(tFashionEvent_Reward["Drop"][1])
			
			if User_CheckLeftSpace(nSpace1) then
				Task_AddStatistic(nEvent_14,nType_14,1,1)
				Task_SetStcTimestamp(nEvent_14,nType_14,0)
				
				RewardTemplate_UseItemAndMsg(tFashionEvent_Reward["Drop"][1])
			end
		end
	end
	
	-- 判断二星掉落数
	if nData_15 == nLimit_15 then
		Task_AddStatistic(nEvent_15,nType_15,1,1)
		Task_SetStcTimestamp(nEvent_15,nType_15,0)
		
		Sys_MsgBox(tFashionEvent_Text[105]["DropLimit2"])
	elseif nData_15 < nLimit_15 then
		local nFlag2,tAward2 = Probabil_RandomAward(tFashionEvent_Random["Drop"],1)
		local nDrop2 = tAward2[1]["tAward"][1]["Num"]
		
		-- 掉落二星外套碎片
		if nDrop2 == 1 then
			-- 判断背包空间
			local nSpace2 = RewardTemplate_GetRewardSpace(tFashionEvent_Reward["Drop"][2])
			
			if User_CheckLeftSpace(nSpace2) then
				Task_AddStatistic(nEvent_15,nType_15,1,1)
				Task_SetStcTimestamp(nEvent_15,nType_15,0)
				
				RewardTemplate_UseItemAndMsg(tFashionEvent_Reward["Drop"][2])
			end
		end
	end
end

-- 18:55-18:59设置进入拍卖的最多五件外套并重置竞拍得主Global
function FashionEvent_ResetAuction()
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) then
		return false
	end
	
	-- 取上交外套排行的前五进入拍卖
	local nNoAuctionGlobal1 = tFashionEvent_Cont["NoAuctionGlobal"]["CoatId"]
	local nNoAuctionGlobal2 = tFashionEvent_Cont["NoAuctionGlobal"]["CoatLevel"]
	local nAuctionGlobal1 = tFashionEvent_Cont["AuctionGlobal"]["CoatId"]
	local nAuctionGlobal2 = tFashionEvent_Cont["AuctionGlobal"]["CoatLevel"]
	
	for i=0, 4 do
		local nCoatId = Get_SysDynaGlobalData(nNoAuctionGlobal1,i)
		local nCoatLevel = Get_SysDynaGlobalData(nNoAuctionGlobal2,i)
		
		Sys_SetSynaGlobalData(nAuctionGlobal1,i,nCoatId)
		Sys_SetSynaGlobalData(nAuctionGlobal2,i,nCoatLevel)
	end
	
	-- 重置
	Sys_ResetAllSynaGlobalData(tFashionEvent_Cont["AuctionGainer"]["Price"])
	Sys_ResetAllSynaGlobalData(tFashionEvent_Cont["AuctionGainer"]["UserId"])
	Sys_ResetAllSynaGlobalDataStr(tFashionEvent_Cont["AuctionGainer"]["UserName"])
	
	-- 无外套拍卖则随机一件
	local nCoatId = Get_SysDynaGlobalData(nAuctionGlobal1,0)
	if nCoatId == 0 then
		local nRandomLevel = math.random(1,#tFashionEvent_Cont["Coat"])
		local nRandomCoat = math.random(1,#tFashionEvent_Cont["Coat"][nRandomLevel])
		local nRandomCoatId = tFashionEvent_Cont["Coat"][nRandomLevel][nRandomCoat]
		
		Sys_SetSynaGlobalData(nAuctionGlobal1,0,nRandomCoatId)
		Sys_SetSynaGlobalData(nAuctionGlobal2,0,nRandomLevel)
	end
	
	return true
end

-- 19:01-19:05重置玩家上交的外套排行
function FashionEvent_ResetHandIn()
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) then
		return false
	end
	
	-- 重置
	local nNoAuctionGlobal1 = tFashionEvent_Cont["NoAuctionGlobal"]["CoatId"]
	local nNoAuctionGlobal2 = tFashionEvent_Cont["NoAuctionGlobal"]["CoatLevel"]
	
	Sys_ResetAllSynaGlobalData(nNoAuctionGlobal1)
	Sys_ResetAllSynaGlobalData(nNoAuctionGlobal2)
	
	return true
end

-- 20:00发拍卖到的外套
function FashionEvent_SendMail()
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) then
		return false
	end
	
	-- 取竞拍得主信息
	for i=0, 4 do
		local nCoatId = Get_SysDynaGlobalData(tFashionEvent_Cont["AuctionGlobal"]["CoatId"],i)
		local nUserId = Get_SysDynaGlobalData(tFashionEvent_Cont["AuctionGainer"]["UserId"],i)
		
		if nUserId ~= 0 then
			local sCoatName = Get_ItemtypeName(nCoatId)
			-- 发邮件
			local nActionId = tFashionEvent_Cont["CoatAction"][nCoatId]
			local nExistDay = tFashionEvent_Cont["MailExistDay"]
			local sSender = tFashionEvent_Text["Mail"][23186]["Sender"]
			local sTitle = tFashionEvent_Text["Mail"][23186]["Title"]
			local sContent = string.format(tFashionEvent_Text["Mail"][23186]["Content"][1],sCoatName)
			
			Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
			
			local sLog = string.format(tFashionEvent_Log["AuctionMail"],nCoatId)
			Sys_SaveActionFestivalLog(sLog,nUserId)
			
			-- 添加emoneylog记录
			Sys_SaveEmoneyBuy(tFashionEvent_Log["GetCoat"],nUserId)
		end
	end
	
	return true
end

-- 上线清掩码（二次确认用）·每日给一个1星时装碎片
function FashionEvent_StcClear()
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) then
		return false
	end
	
	local nEvent_3 = tFashionEvent_Stc[3]["EventType"]
	local nType_3 = tFashionEvent_Stc[3]["DataType"]
	local nEvent_4 = tFashionEvent_Stc[4]["EventType"]
	local nType_4 = tFashionEvent_Stc[4]["DataType"]
	local nEvent_7 = tFashionEvent_Stc[7]["EventType"]
	local nType_7 = tFashionEvent_Stc[7]["DataType"]
	
	Task_SetStatistic(nEvent_3,nType_3,0,1)
	Task_SetStcTimestamp(nEvent_3,nType_3,0)
	Task_SetStatistic(nEvent_4,nType_4,0,1)
	Task_SetStcTimestamp(nEvent_4,nType_4,0)
	Task_SetStatistic(nEvent_7,nType_7,0,1)
	Task_SetStcTimestamp(nEvent_7,nType_7,0)
	
	-- 每日给一个1星时装碎片
	-- 等级不足
	if not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"]) then
		return false
	end
	
	local nEvent_13 = tFashionEvent_Stc[13]["EventType"]
	local nType_13 = tFashionEvent_Stc[13]["DataType"]
	local nClearTime_13 = tFashionEvent_Stc[13]["Clear"]
	
	if Task_StcInterval(nEvent_13,nType_13,nClearTime_13,4) then
		Task_SetStatistic(nEvent_13,nType_13,0,1)
		Task_SetStcTimestamp(nEvent_13,nType_13,0)
	end
	
	local nData_13 = Get_UserStatisticValue(nEvent_13,nType_13)
	
	if nData_13 == 0 then
		-- 判断背包空间
		local nSpace = RewardTemplate_GetRewardSpace(tFashionEvent_Reward["GetDebris"])
		
		if User_CheckLeftSpace(nSpace) then
			-- 置掩码·给碎片
			Task_SetStatistic(nEvent_13,nType_13,1,1)
			Task_SetStcTimestamp(nEvent_13,nType_13,0)
			
			RewardTemplate_UseItemAndMsg(tFashionEvent_Reward["GetDebris"])
		else
			User_TalkChannel2005(tFashionEvent_Text[2005]["GetDebris"])
		end
	end
	
	return true
end

-- 发放时尚排行榜奖励
function FashionEvent_SendRankMail()
	-- 判断发邮件时间
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["MailTime"]) then
		return false
	end
	
	-- 是否已发放
	local nFlag = Get_SysDynaGlobalData(tRankingFunc_Info[23187]["Global"][4],5)
	
	if nFlag == 1 then
		return false
	else
		Sys_SetSynaGlobalData(tRankingFunc_Info[23187]["Global"][4],5,1)
	end
	
	-- 取排行榜玩家信息
	local tRank = RankingFunc_GetNowData(23187)
	
	for i=1,10 do
		if tRank[i] ~= nil then
			if tRank[i]["Score"] > 0 then
				local nUserId = tRank[i]["UserId"]
				local nActionId = tFashionEvent_Cont["RankAction"][i]
				local sItemName = Get_ItemtypeName(tFashionEvent_Cont["RankItem"][i])
				local nExistDay = tFashionEvent_Cont["MailExistDay"]
				local sSender = tFashionEvent_Text["Mail"][23187]["Sender"]
				local sTitle = tFashionEvent_Text["Mail"][23187]["Title"]
				local sContent = string.format(tFashionEvent_Text["Mail"][23187]["Content"][1],i,sItemName)
				
				-- 第一名时尚值低于80000则给第二名奖励
				if i == 1 and tRank[i]["Score"] < 80000 then
					nActionId = tFashionEvent_Cont["RankAction"][2]
					sItemName = Get_ItemtypeName(tFashionEvent_Cont["RankItem"][2])
					sContent = string.format(tFashionEvent_Text["Mail"][23187]["Content"][2],sItemName)
				end
				
				Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
				
				local sLog = string.format(tFashionEvent_Log["RankMail"],i)
				Sys_SaveActionFestivalLog(sLog,nUserId)
			end
		end
	end
end



-----------------------------------------------模板部分-----------------------------------------
-------------------------------NPC模板
-- 时装教父 23186
tNpcFace[6189] = 31
tNpcGossip[23186] = tNpcGossip[23186] or DefaultNpc:new{}
tNpcGossip[23186]["OptionHidden"] = 1
tNpcGossip[23186]["DialogueText"] = tFashionEvent_Text[23186]

-- 活动前
tNpcGossip[23186]["Text1-1"] = {111,112,113,114}
tNpcGossip[23186]["tOption1-1"] = {111}
tNpcGossip[23186]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["FashionEvent"]["BeforeTime"])
end

-- 活动后
tNpcGossip[23186]["Text1-2"] = {121}
tNpcGossip[23186]["tOption1-2"] = {121}
tNpcGossip[23186]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tActivityTime["FashionEvent"]["AfterTime"])
end

-- 活动中·等级不足
tNpcGossip[23186]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[23186]["tOption1-3"] = {131}
tNpcGossip[23186]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) and not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"])
end

-- 活动中·等级满足·非19：00-19:59
tNpcGossip[23186]["Text1-4"] = {141,142,143,144,145,146}
tNpcGossip[23186]["tOption1-4"] = {141,142,143}
tNpcGossip[23186]["ChkFunc1-4"] = function ()
	if Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) and User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"]) then
		-- 非拍卖期间
		if not Sys_ChkDayTime(tActivityTime["FashionEvent"]["AuctionTime"]) and not Sys_ChkDayTime(tActivityTime["FashionEvent"]["ShowTime"]) then
			local nEvent_1 = tFashionEvent_Stc[1]["EventType"]
			local nType_1 = tFashionEvent_Stc[1]["DataType"]
			local nClearTime_1 = tFashionEvent_Stc[1]["Clear"]
			
			-- 隔1天重置掩码
			if Task_StcInterval(nEvent_1,nType_1,nClearTime_1,4) then
				Task_SetStatistic(nEvent_1,nType_1,0,1)
				Task_SetStcTimestamp(nEvent_1,nType_1,0)
			end
			
			local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
			
			-- 竞标天石未领取则显示领取选项
			if nData_1 > 0 then
				-- 竞拍得主不可领取
				if FashionEvent_IsGainer() then
					tNpcGossip[23186]["tOption1-4"] = {142,143}
				else
					tNpcGossip[23186]["tOption1-4"] = {141,142,143}
				end
			else
				tNpcGossip[23186]["tOption1-4"] = {142,143}
			end
			
			return true
		end
	end
	
	return false
end

-- 活动中·等级满足·19：00-19：54
tNpcGossip[23186]["Text1-5"] = {151,152,153,154,155,156,157,158,159,1510}
tNpcGossip[23186]["tOption1-5"] = {151,152,153,154,155,156}
tNpcGossip[23186]["ChkFunc1-5"] = function ()
	if Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) and User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"]) then
		-- 竞拍期间
		if Sys_ChkDayTime(tActivityTime["FashionEvent"]["AuctionTime"]) then
			local nGlobalId = tFashionEvent_Cont["AuctionGlobal"]["CoatId"]
			local tText = {151,152,153}
			local tOption = {}
			
			local nEvent_1 = tFashionEvent_Stc[1]["EventType"]
			local nType_1 = tFashionEvent_Stc[1]["DataType"]
			local nClearTime_1 = tFashionEvent_Stc[1]["Clear"]
			local nEvent_2 = tFashionEvent_Stc[2]["EventType"]
			local nType_2 = tFashionEvent_Stc[2]["DataType"]
			local nClearTime_2 = tFashionEvent_Stc[2]["Clear"]
			
			-- 隔1天重置掩码
			if Task_StcInterval(nEvent_1,nType_1,nClearTime_1,4) then
				Task_SetStatistic(nEvent_1,nType_1,0,1)
				Task_SetStcTimestamp(nEvent_1,nType_1,0)
			end
			if Task_StcInterval(nEvent_2,nType_2,nClearTime_2,4) then
				Task_SetStatistic(nEvent_2,nType_2,0,1)
				Task_SetStcTimestamp(nEvent_2,nType_2,0)
			end
			
			local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
			local nData_2 = Get_UserStatisticValue(nEvent_2,nType_2)
			
			-- 外套1-5
			for i=0, 4 do
				local nCoatId = Get_SysDynaGlobalData(nGlobalId,i)
				-- 存在该竞拍
				if nCoatId ~= 0 then
					local sCoatName = Get_ItemtypeName(nCoatId) .. tFashionEvent_Text[23186]["Present"]
					local nHighlest = Get_SysDynaGlobalData(tFashionEvent_Cont["AuctionGainer"]["Price"],i)
					
					local sHighlest = string.format(tFashionEvent_Text[23186]["Price"],nHighlest)
					local sMyAuction = tFashionEvent_Text[23186]["NoAuction"]
					
					-- 参与该竞拍
					if nData_2 == nCoatId + 10000000*i then
						if nData_1 ~= 0 then
							sMyAuction = string.format(tFashionEvent_Text[23186]["Price"],nData_1)
						end
						
						local sOption = string.format(tFashionEvent_Text[23186]["Option15" .. i+1],sCoatName)
						
						-- 是否出价最高
						if nHighlest == nData_1 then
							sOption = sOption .. tFashionEvent_Text[23186]["Highest"]
						end
						
						tNpcGossip[23186]["Option15" .. i+1] = sOption
						tOption[#tOption+1] = 151 + i
					elseif nData_2 == 0 then			-- 未参与
						local sOption = string.format(tFashionEvent_Text[23186]["Option15" .. i+1],sCoatName)
						
						tNpcGossip[23186]["Option15" .. i+1] = sOption
						tOption[#tOption+1] = 151 + i
					end
					
					tNpcGossip[23186]["Text15" .. i+4] =  Sys_CenterAline(sCoatName,15,sHighlest,44,sMyAuction,62).. "\n"
					tText[#tText+1] = 154 + i
				end
			end
			
			tText[#tText+1] = 159
			tNpcGossip[23186]["Text1-5"] = tText
			
			tOption[#tOption+1] = 156
			tNpcGossip[23186]["tOption1-5"] = tOption
			
			return true
		end
	end
	
	return false
end

-- 活动中·等级满足·19：55-19：59
tNpcGossip[23186]["Text1-6"] = {161,162,163,164,165,166,167,168,169}
tNpcGossip[23186]["tOption1-6"] = {161,162}
tNpcGossip[23186]["ChkFunc1-6"] = function ()
	if Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) and User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"]) then
		-- 显示竞拍结果
		if Sys_ChkDayTime(tActivityTime["FashionEvent"]["ShowTime"]) then
			local nGlobalId = tFashionEvent_Cont["AuctionGlobal"]["CoatId"]
			local tText = {161,162,163}
			
			-- 外套1-5
			for i=0, 4 do
				local nCoatId = Get_SysDynaGlobalData(nGlobalId,i)
				-- 存在该竞拍
				if nCoatId ~= 0 then
					local sCoatName = Get_ItemtypeName(nCoatId) .. tFashionEvent_Text[23186]["Present"]
					local nHighlest = Get_SysDynaGlobalData(tFashionEvent_Cont["AuctionGainer"]["Price"],i)
					local nUserId = Get_SysDynaGlobalData(tFashionEvent_Cont["AuctionGainer"]["UserId"],i)
					-- 该竞拍有人参与
					if nUserId ~= 0 then
						local sUserName = Get_SysDynaGlobalDataStr(tFashionEvent_Cont["AuctionGainer"]["UserName"],i)
						local sHighlest = string.format(tFashionEvent_Text[23186]["Price"],nHighlest)
						
						if nHighlest == 0 then
							sHighlest = tFashionEvent_Text[23186]["None"]
						end
						
						tNpcGossip[23186]["Text16" .. i+4] =  Sys_CenterAline(sCoatName,15,sHighlest,43,sUserName,63).. "\n"
						tText[#tText+1] = 164 + i
					end
				end
			end
			
			tText[#tText+1] = 169
			tNpcGossip[23186]["Text1-6"] = tText
			
			local nEvent_1 = tFashionEvent_Stc[1]["EventType"]
			local nType_1 = tFashionEvent_Stc[1]["DataType"]
			local nClearTime_1 = tFashionEvent_Stc[1]["Clear"]
			
			-- 隔1天重置掩码
			if Task_StcInterval(nEvent_1,nType_1,nClearTime_1,4) then
				Task_SetStatistic(nEvent_1,nType_1,0,1)
				Task_SetStcTimestamp(nEvent_1,nType_1,0)
			end
			
			local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
			
			-- 竞标天石未领取则显示领取选项
			if nData_1 > 0 then
				-- 竞拍得主不可领取
				if FashionEvent_IsGainer() then
					tNpcGossip[23186]["tOption1-6"] = {162}
				else
					tNpcGossip[23186]["tOption1-6"] = {161,162}
				end
			else
				tNpcGossip[23186]["tOption1-6"] = {162}
			end
			
			return true
		end
	end
	
	return false
end

tNpcGossip[23186]["OptionFunc141"] = "FashionEvent_GetBack</N>23186"
tNpcGossip[23186]["OptionPoint142"] = "2-1"

tNpcGossip[23186]["OptionFunc151"] = "FashionEvent_Auction</N>23186</N>0"
tNpcGossip[23186]["OptionFunc152"] = "FashionEvent_Auction</N>23186</N>1"
tNpcGossip[23186]["OptionFunc153"] = "FashionEvent_Auction</N>23186</N>2"
tNpcGossip[23186]["OptionFunc154"] = "FashionEvent_Auction</N>23186</N>3"
tNpcGossip[23186]["OptionFunc155"] = "FashionEvent_Auction</N>23186</N>4"

tNpcGossip[23186]["OptionFunc161"] = "FashionEvent_GetBack</N>23186"


-- 时装盛会指南
tNpcGossip[23186]["Text2-1"] = {211,212,213,214,215,216,217,218}
tNpcGossip[23186]["tOption2-1"] = {211}

-- 竞拍
tNpcGossip[23186]["Text2-2"] = {221,222,223,224,225,226,227,228,229,2210}
tNpcGossip[23186]["tOption2-2"] = {221,222,223}

tNpcGossip[23186]["OptionPoint211"] = "1"

tNpcGossip[23186]["OptionPoint223"] = "1"


-- 出价二次确认
tNpcGossip[23186]["Text3-1"] = {311}
tNpcGossip[23186]["tOption3-1"] = {311,312,313}

-- 加价二次确认
tNpcGossip[23186]["Text3-2"] = {321}
tNpcGossip[23186]["tOption3-2"] = {321,322,323}



-- 首席时装设计师 23187
tNpcFace[6190] = 129
tNpcGossip[23187] = tNpcGossip[23187] or DefaultNpc:new{}
tNpcGossip[23187]["OptionHidden"] = 1
tNpcGossip[23187]["DialogueText"] = tFashionEvent_Text[23187]

-- 活动前
tNpcGossip[23187]["Text1-1"] = {111,112,113,114}
tNpcGossip[23187]["tOption1-1"] = {111}
tNpcGossip[23187]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["FashionEvent"]["BeforeTime"])
end

-- 活动后
tNpcGossip[23187]["Text1-2"] = {121}
tNpcGossip[23187]["tOption1-2"] = {121}
tNpcGossip[23187]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tActivityTime["FashionEvent"]["AfterTime"])
end

-- 活动中·等级不足
tNpcGossip[23187]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[23187]["tOption1-3"] = {131}
tNpcGossip[23187]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) and not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"])
end

-- 活动中·等级满足
tNpcGossip[23187]["Text1-4"] = {141,142,143,144,145,146,147}
tNpcGossip[23187]["tOption1-4"] = {141,142,143,144,145}
tNpcGossip[23187]["ChkFunc1-4"] = function ()
	return Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) and User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"])
end

tNpcGossip[23187]["OptionPoint141"] = "2-1"
tNpcGossip[23187]["OptionPoint142"] = "2-2"
tNpcGossip[23187]["OptionPoint143"] = "2-3"
tNpcGossip[23187]["OptionPoint144"] = "2-4"
tNpcGossip[23187]["OptionPoint145"] = "2-5"


-- 上交时装外套
tNpcGossip[23187]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110}
tNpcGossip[23187]["tOption2-1"] = {211,212,213,214,215}
tNpcGossip[23187]["ChkFunc2-1"] = function ()
	-- 判断活动时间与等级
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) or not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"]) then
		return false
	end
	
	local tOption = {}
	-- 判断背包中有的外套
	for i=1, 5 do
		local nFlag = 0
		for j=1, #tFashionEvent_Cont["Coat"][i] do
			local nCoatId = tFashionEvent_Cont["Coat"][i][j]
			if Item_ChkMulItem(nCoatId,nCoatId,1,1,0,0,0) then
				nFlag = 1
			end
		end
		
		if nFlag == 1 then
			tOption[#tOption+1] = 210 + i
		end
	end
	
	tNpcGossip[23187]["tOption2-1"] = tOption
	return true
end

-- 时装外套洗赠
tNpcGossip[23187]["Text2-2"] = {221,222,223,224,225,226,227,228}
tNpcGossip[23187]["tOption2-2"] = {221,222,223,224,225,226}
tNpcGossip[23187]["ChkFunc2-2"] = function ()
	-- 判断活动时间与等级
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) or not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"]) then
		return false
	end
	
	local tOption = {}
	-- 判断背包中有的五星外套（赠）
	for i=1, #tFashionEvent_Cont["Coat"][5] do
		local nCoatId = tFashionEvent_Cont["Coat"][5][i]
		
		if Item_ChkMulItem(nCoatId,nCoatId,1,2,0,0,0) then
			local sCoatName = Get_ItemtypeName(nCoatId)
			
			tNpcGossip[23187]["Option22" .. #tOption+2] = string.format(tFashionEvent_Text[23187]["Coat"],sCoatName)
			tNpcGossip[23187]["OptionFunc22" .. #tOption+2] = "FashionEvent_WashCoat</N>23187</N>" .. nCoatId
			tOption[#tOption+1] = 222 + #tOption
		end
	end
	
	
	tOption[#tOption+1] = 221
	tNpcGossip[23187]["tOption2-2"] = tOption
	return true
end

-- 查看时尚排行榜
tNpcGossip[23187]["Text2-3"] = {231,232,233,234,235,236,237,238,239,2310,2311,2312,2313,2314,2315,2316,2317}
tNpcGossip[23187]["tOption2-3"] = {231}
tNpcGossip[23187]["ChkFunc2-3"] = function ()
	-- 判断活动时间与等级
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) or not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"]) then
		return false
	end
	
	local nNowUserId = Get_UserId()
	local tRank = RankingFunc_GetNowData(23187)
	local nFlag = 0
	
	-- 取前十排行
	for i=1,10 do
		if tRank[i] == nil then
			tNpcGossip[23187]["Text23" .. i+3] = Sys_CenterAline(tFashionEvent_Text[23187]["Text23" .. i+3],4,tFashionEvent_Text[23187]["None"],36,tFashionEvent_Text[23187]["None"],66) .. "\n"
		elseif tRank[i]["Score"] == 0 then
			tNpcGossip[23187]["Text23" .. i+3] = Sys_CenterAline(tFashionEvent_Text[23187]["Text23" .. i+3],4,tFashionEvent_Text[23187]["None"],36,tFashionEvent_Text[23187]["None"],66) .. "\n"
		elseif tRank[i]["Score"] > 0 then
			local nScore = tRank[i]["Score"]
			local nUserId = tRank[i]["UserId"]
			local sUserName = tRank[i]["UserName"]
			tNpcGossip[23187]["Text23" .. i+3] = Sys_CenterAline(tFashionEvent_Text[23187]["Text23" .. i+3],4,tostring(nScore),36,sUserName,66) .. "\n"
			
			if nNowUserId == nUserId then
				nFlag = 1
			end
		end
	end
	
	local nEvent_6 = tFashionEvent_Stc[6]["EventType"]
	local nType_6 = tFashionEvent_Stc[6]["DataType"]
	local nData_6 = Get_UserStatisticValue(nEvent_6,nType_6)
	
	if nFlag == 0 then
		tNpcGossip[23187]["Text2316"] = string.format(tFashionEvent_Text[23187]["Text2316"],nData_6)
		tNpcGossip[23187]["Text2-3"] = {231,232,233,234,235,236,237,238,239,2310,2311,2312,2313,2314,2315,2316}
	elseif nFlag == 1 then
		tNpcGossip[23187]["Text2317"] = string.format(tFashionEvent_Text[23187]["Text2317"],nData_6)
		tNpcGossip[23187]["Text2-3"] = {231,232,233,234,235,236,237,238,239,2310,2311,2312,2313,2314,2315,2317}
	end
	
	return true
end

-- 查看时尚值阶段好礼
tNpcGossip[23187]["Text2-4"] = {241,242,243,244,245,246,247,248,249,2410}
tNpcGossip[23187]["tOption2-4"] = {241,242}
tNpcGossip[23187]["ChkFunc2-4"] = function ()
	-- 判断活动时间与等级
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) or not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"]) then
		return false
	end
	
	local nEvent_6 = tFashionEvent_Stc[6]["EventType"]
	local nType_6 = tFashionEvent_Stc[6]["DataType"]
	local nData_6 = Get_UserStatisticValue(nEvent_6,nType_6)
	local nEvent_8 = tFashionEvent_Stc[8]["EventType"]
	local nType_8 = tFashionEvent_Stc[8]["DataType"]
	local nData_8 = Get_UserStatisticValue(nEvent_8,nType_8)
	
	-- 显示是否已领取
	for i=1, 5 do
		if nData_8 >= i then
			tNpcGossip[23187]["Text24" .. i+3] = tFashionEvent_Text[23187]["Text24" .. i+3] .. tFashionEvent_Text[23187]["AlreadyGet"] .. "\n"
		else
			tNpcGossip[23187]["Text24" .. i+3] = tFashionEvent_Text[23187]["Text24" .. i+3] .. "\n"
		end
	end
	
	-- 可领取下一阶段奖励则出现选项
	local nNext = nData_8 + 1
	if tFashionEvent_Cont["FashionValue"]["Stage"][nNext] ~= nil then
		if nData_6 >= tFashionEvent_Cont["FashionValue"]["Stage"][nNext] then
			tNpcGossip[23187]["tOption2-4"] = {241,242}
		else
			tNpcGossip[23187]["tOption2-4"] = {242}
		end
	else
		tNpcGossip[23187]["tOption2-4"] = {242}
	end
	
	tNpcGossip[23187]["Text2410"] =  string.format(tFashionEvent_Text[23187]["Text2410"],nData_6)
	return true
end

-- 查看参展时装
tNpcGossip[23187]["Text2-5"] = {251,252,253,254,255,256,257,258,259}
tNpcGossip[23187]["tOption2-5"] = {251,252,253,254,255}

tNpcGossip[23187]["OptionFunc211"] = "FashionEvent_ChooseCoat</N>23187</N>1"
tNpcGossip[23187]["OptionFunc212"] = "FashionEvent_ChooseCoat</N>23187</N>2"
tNpcGossip[23187]["OptionFunc213"] = "FashionEvent_ChooseCoat</N>23187</N>3"
tNpcGossip[23187]["OptionFunc214"] = "FashionEvent_ChooseCoat</N>23187</N>4"
tNpcGossip[23187]["OptionFunc215"] = "FashionEvent_ChooseCoat</N>23187</N>5"

tNpcGossip[23187]["OptionPoint231"] = "3-3"

tNpcGossip[23187]["OptionFunc241"] = "FashionEvent_GetStageReward</N>23187"

tNpcGossip[23187]["OptionPoint251"] = "3-4"
tNpcGossip[23187]["OptionPoint252"] = "3-5"
tNpcGossip[23187]["OptionPoint253"] = "3-6"
tNpcGossip[23187]["OptionPoint254"] = "3-7"
tNpcGossip[23187]["OptionPoint255"] = "3-8"


-- 选择外套
tNpcGossip[23187]["Text3-1"] = {311}
tNpcGossip[23187]["tOption3-1"] = {311}

-- 洗赠二次确认
tNpcGossip[23187]["Text3-2"] = {321}
tNpcGossip[23187]["tOption3-2"] = {321,322,323}

-- 排名好礼
tNpcGossip[23187]["Text3-3"] = {331,332,333,334,335,336,337,338,339,3310,3311,3312,3313,3314}
tNpcGossip[23187]["tOption3-3"] = {331}

-- 1星参展时装
tNpcGossip[23187]["Text3-4"] = {341,342,343,344,345,346,347,348}
tNpcGossip[23187]["tOption3-4"] = {341,342,343,344,345}

-- 2星参展时装
tNpcGossip[23187]["Text3-5"] = {351,352,353,354,355,356,357,358}
tNpcGossip[23187]["tOption3-5"] = {351,352,353,354,355}

-- 3星参展时装
tNpcGossip[23187]["Text3-6"] = {361,362,363,364,365,366,367,368}
tNpcGossip[23187]["tOption3-6"] = {361,362,363,364,365}

-- 4星参展时装
tNpcGossip[23187]["Text3-7"] = {371,372,373,374,375,376,377,378}
tNpcGossip[23187]["tOption3-7"] = {371,372,373,374,375}

-- 5星参展时装
tNpcGossip[23187]["Text3-8"] = {381,382,383,384,385,386}
tNpcGossip[23187]["tOption3-8"] = {381,382,383,384,385}

tNpcGossip[23187]["OptionPoint341"] = "3-5"
tNpcGossip[23187]["OptionPoint342"] = "3-6"
tNpcGossip[23187]["OptionPoint343"] = "3-7"
tNpcGossip[23187]["OptionPoint344"] = "3-8"

tNpcGossip[23187]["OptionPoint351"] = "3-4"
tNpcGossip[23187]["OptionPoint352"] = "3-6"
tNpcGossip[23187]["OptionPoint353"] = "3-7"
tNpcGossip[23187]["OptionPoint354"] = "3-8"

tNpcGossip[23187]["OptionPoint361"] = "3-4"
tNpcGossip[23187]["OptionPoint362"] = "3-5"
tNpcGossip[23187]["OptionPoint363"] = "3-7"
tNpcGossip[23187]["OptionPoint364"] = "3-8"

tNpcGossip[23187]["OptionPoint371"] = "3-4"
tNpcGossip[23187]["OptionPoint372"] = "3-5"
tNpcGossip[23187]["OptionPoint373"] = "3-6"
tNpcGossip[23187]["OptionPoint374"] = "3-8"

tNpcGossip[23187]["OptionPoint381"] = "3-4"
tNpcGossip[23187]["OptionPoint382"] = "3-5"
tNpcGossip[23187]["OptionPoint383"] = "3-6"
tNpcGossip[23187]["OptionPoint384"] = "3-7"



-- 维多利亚 23189
tNpcFace[6191] = 151
tNpcGossip[23189] = tNpcGossip[23189] or DefaultNpc:new{}
tNpcGossip[23189]["OptionHidden"] = 1
tNpcGossip[23189]["DialogueText"] = tFashionEvent_Text[23189]

-- 活动前
tNpcGossip[23189]["Text1-1"] = {111,112,113,114}
tNpcGossip[23189]["tOption1-1"] = {111}
tNpcGossip[23189]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["FashionEvent"]["BeforeTime"])
end

-- 活动后
tNpcGossip[23189]["Text1-2"] = {121}
tNpcGossip[23189]["tOption1-2"] = {121}
tNpcGossip[23189]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tActivityTime["FashionEvent"]["AfterTime"])
end

-- 活动中·等级不足
tNpcGossip[23189]["Text1-3"] = {131,132,133,134}
tNpcGossip[23189]["tOption1-3"] = {131}
tNpcGossip[23189]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) and not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"])
end

-- 活动中·等级满足
tNpcGossip[23189]["Text1-4"] = {141,142,143,144}
tNpcGossip[23189]["tOption1-4"] = {141,142}
tNpcGossip[23189]["ChkFunc1-4"] = function ()
	-- 时间与等级判断
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) or not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"]) then
		return false
	end
	
	local nEvent_9 = tFashionEvent_Stc[9]["EventType"]
	local nType_9 = tFashionEvent_Stc[9]["DataType"]
	local nClearTime_9 = tFashionEvent_Stc[9]["Clear"]
	local nEvent_10 = tFashionEvent_Stc[10]["EventType"]
	local nType_10 = tFashionEvent_Stc[10]["DataType"]
	
	-- 隔天重置掩码
	if Task_StcInterval(nEvent_9,nType_9,nClearTime_9,4) then
		Task_SetStatistic(nEvent_9,nType_9,0,1)
		Task_SetStcTimestamp(nEvent_9,nType_9,0)
	end
	
	local nData_9 = Get_UserStatisticValue(nEvent_9,nType_9)
	
	-- 隔天或成功学习时尚秘诀则重新随机求教小礼
	if nData_9 == 0 then
		local nFlag,tAward = Probabil_RandomAward(tFashionEvent_Random["NeedItem"],1)
		local nIndex = tAward[1]["tAward"][1]["ItemIndex"]
		
		Task_SetStatistic(nEvent_9,nType_9,1,1)
		Task_SetStcTimestamp(nEvent_9,nType_9,0)
		Task_SetStatistic(nEvent_10,nType_10,nIndex,1)
		Task_SetStcTimestamp(nEvent_10,nType_10,0)
	end
	
	local nItemIndex = Get_UserStatisticValue(nEvent_10,nType_10)
	local sNeedItem = tFashionEvent_Text["NeedItem"][nItemIndex]
	tNpcGossip[23189]["Text142"] = string.format(tFashionEvent_Text[23189]["Text142"],sNeedItem)
	tNpcGossip[23189]["Option141"] = string.format(tFashionEvent_Text[23189]["Option141"],sNeedItem)
	tNpcGossip[23189]["OptionFunc141"] = "FashionEvent_HandInItem</N>23189</N>" .. nItemIndex
	
	return true
end



-- 随机对白1
tNpcGossip[23189]["Text2-1"] = {211,212,213,214,215}
tNpcGossip[23189]["tOption2-1"] = {211}

-- 随机对白2
tNpcGossip[23189]["Text2-2"] = {221,222,223,224,225}
tNpcGossip[23189]["tOption2-2"] = {221}

-- 随机对白3
tNpcGossip[23189]["Text2-3"] = {231,232,233,234,235}
tNpcGossip[23189]["tOption2-3"] = {231}

-- 随机对白4
tNpcGossip[23189]["Text2-4"] = {241,242,243,244,245}
tNpcGossip[23189]["tOption2-4"] = {241}

-- 随机对白5
tNpcGossip[23189]["Text2-5"] = {251,252,253,254,255}
tNpcGossip[23189]["tOption2-5"] = {251}

tNpcGossip[23189]["OptionPoint211"] = "1"
tNpcGossip[23189]["OptionPoint221"] = "1"
tNpcGossip[23189]["OptionPoint231"] = "1"
tNpcGossip[23189]["OptionPoint241"] = "1"
tNpcGossip[23189]["OptionPoint251"] = "1"



-- 贝克汉姆 23190
tNpcFace[6192] = 259
tNpcGossip[23190] = tNpcGossip[23190] or DefaultNpc:new{}
tNpcGossip[23190]["OptionHidden"] = 1
tNpcGossip[23190]["DialogueText"] = tFashionEvent_Text[23190]

-- 活动前
tNpcGossip[23190]["Text1-1"] = {111,112,113,114}
tNpcGossip[23190]["tOption1-1"] = {111}
tNpcGossip[23190]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["FashionEvent"]["BeforeTime"])
end

-- 活动后
tNpcGossip[23190]["Text1-2"] = {121}
tNpcGossip[23190]["tOption1-2"] = {121}
tNpcGossip[23190]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tActivityTime["FashionEvent"]["AfterTime"])
end

-- 活动中·等级不足
tNpcGossip[23190]["Text1-3"] = {131,132,133,134}
tNpcGossip[23190]["tOption1-3"] = {131}
tNpcGossip[23190]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) and not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"])
end

-- 活动中·等级满足
tNpcGossip[23190]["Text1-4"] = {141,142,143,144}
tNpcGossip[23190]["tOption1-4"] = {141,142}
tNpcGossip[23190]["ChkFunc1-4"] = function ()
	-- 时间与等级判断
	if not Sys_ChkFullTime(tActivityTime["FashionEvent"]["ActTime"]) or not User_JudgeLevelAndMetempsychosis(tFashionEvent_Cont["Level"],tFashionEvent_Cont["Metempsychosis"]) then
		return false
	end
	
	local nEvent_11 = tFashionEvent_Stc[11]["EventType"]
	local nType_11 = tFashionEvent_Stc[11]["DataType"]
	local nClearTime_11 = tFashionEvent_Stc[11]["Clear"]
	local nEvent_12 = tFashionEvent_Stc[12]["EventType"]
	local nType_12 = tFashionEvent_Stc[12]["DataType"]
	
	-- 隔天重置掩码
	if Task_StcInterval(nEvent_11,nType_11,nClearTime_11,4) then
		Task_SetStatistic(nEvent_11,nType_11,0,1)
		Task_SetStcTimestamp(nEvent_11,nType_11,0)
	end
	
	local nData_11 = Get_UserStatisticValue(nEvent_11,nType_11)
	
	-- 隔天或成功学习时尚秘诀则重新随机求教小礼
	if nData_11 == 0 then
		local nFlag,tAward = Probabil_RandomAward(tFashionEvent_Random["NeedItem"],1)
		local nIndex = tAward[1]["tAward"][1]["ItemIndex"]
		
		Task_SetStatistic(nEvent_11,nType_11,1,1)
		Task_SetStcTimestamp(nEvent_11,nType_11,0)
		Task_SetStatistic(nEvent_12,nType_12,nIndex,1)
		Task_SetStcTimestamp(nEvent_12,nType_12,0)
	end
	
	local nItemIndex = Get_UserStatisticValue(nEvent_12,nType_12)
	local sNeedItem = tFashionEvent_Text["NeedItem"][nItemIndex]
	tNpcGossip[23190]["Text142"] = string.format(tFashionEvent_Text[23190]["Text142"],sNeedItem)
	tNpcGossip[23190]["Option141"] = string.format(tFashionEvent_Text[23190]["Option141"],sNeedItem)
	tNpcGossip[23190]["OptionFunc141"] = "FashionEvent_HandInItem</N>23190</N>" .. nItemIndex
	
	return true
end


-- 随机对白1
tNpcGossip[23190]["Text2-1"] = {211,212,213,214,215}
tNpcGossip[23190]["tOption2-1"] = {211}

-- 随机对白2
tNpcGossip[23190]["Text2-2"] = {221,222,223,224,225}
tNpcGossip[23190]["tOption2-2"] = {221}

-- 随机对白3
tNpcGossip[23190]["Text2-3"] = {231,232,233,234,235}
tNpcGossip[23190]["tOption2-3"] = {231}

-- 随机对白4
tNpcGossip[23190]["Text2-4"] = {241,242,243,244,245}
tNpcGossip[23190]["tOption2-4"] = {241}

-- 随机对白5
tNpcGossip[23190]["Text2-5"] = {251,252,253,254,255}
tNpcGossip[23190]["tOption2-5"] = {251}

tNpcGossip[23190]["OptionPoint211"] = "1"
tNpcGossip[23190]["OptionPoint221"] = "1"
tNpcGossip[23190]["OptionPoint231"] = "1"
tNpcGossip[23190]["OptionPoint241"] = "1"
tNpcGossip[23190]["OptionPoint251"] = "1"



-------------------------------物品模板
-- 时装竞拍凭证
tItem[3310694] = tItem[3310694] or {}
tItem[3310694]["Function"] = function(nItemId,sItemName)
	FashionEvent_UseVoucher(nItemId)
end


-- 1星时装碎片
tItemFace[3310695] = 1765
tItem[3310695] = tItem[3310695] or {}
tItem[3310695]["OptionHidden"] = 1
tItem[3310695]["DialogueText"] = tFashionEvent_Text[3310695]

tItem[3310695]["Text1-1"] = {111,112,113}
tItem[3310695]["tOption1-1"] = {111,112}

tItem[3310695]["OptionFunc111"] = "FashionEvent_UseDebris</N>3310695"
tItem[3310695]["OptionFunc112"] = "FashionEvent_CompoundDebris</N>3310695</N>15"


-- 2星时装碎片
tItemFace[3310696] = 1766
tItem[3310696] = tItem[3310696] or {}
tItem[3310696]["OptionHidden"] = 1
tItem[3310696]["DialogueText"] = tFashionEvent_Text[3310696]

tItem[3310696]["Text1-1"] = {111,112,113}
tItem[3310696]["tOption1-1"] = {111,112}

tItem[3310696]["OptionFunc111"] = "FashionEvent_UseDebris</N>3310696"
tItem[3310696]["OptionFunc112"] = "FashionEvent_CompoundDebris</N>3310696</N>15"


-- 3星时装碎片
tItemFace[3310697] = 1767
tItem[3310697] = tItem[3310697] or {}
tItem[3310697]["OptionHidden"] = 1
tItem[3310697]["DialogueText"] = tFashionEvent_Text[3310697]

tItem[3310697]["Text1-1"] = {111,112,113}
tItem[3310697]["tOption1-1"] = {111,112}

tItem[3310697]["OptionFunc111"] = "FashionEvent_UseDebris</N>3310697"
tItem[3310697]["OptionFunc112"] = "FashionEvent_CompoundDebris</N>3310697</N>20"


-- 4星时装碎片
tItemFace[3310698] = 1768
tItem[3310698] = tItem[3310698] or {}
tItem[3310698]["OptionHidden"] = 1
tItem[3310698]["DialogueText"] = tFashionEvent_Text[3310698]

tItem[3310698]["Text1-1"] = {111,112,113}
tItem[3310698]["tOption1-1"] = {111,112}

tItem[3310698]["OptionFunc111"] = "FashionEvent_UseDebris</N>3310698"
tItem[3310698]["OptionFunc112"] = "FashionEvent_CompoundDebris</N>3310698</N>20"


-- 5星时装碎片
tItem[3310699] = tItem[3310699] or {}
tItem[3310699]["Function"] = function(nItemId,sItemName)
	FashionEvent_CompoundDebris(nItemId,30)
end


-- 摩登礼盒
tItem[3310700] = tItem[3310700] or {}
tItem[3310700]["Function"] = function(nItemId,sItemName)
	-- 判断物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tFashionEvent_Reward["UsePack"],nItemId)
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tFashionEvent_Text[2005]["Item"]["FullBag3"],nSpace))
		return false
	end
	
	-- 删物品
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tFashionEvent_Reward["UsePack"],nItemId)
	end
end


-- 时尚王者礼盒
tItem[3310701] = tItem[3310701] or {}
-- 时尚大师礼盒
tItem[3310702] = tItem[3310701] or {}
-- 时尚领袖礼盒
tItem[3310703] = tItem[3310701] or {}
-- 时尚先锋礼盒
tItem[3310704] = tItem[3310701] or {}
-- 时尚精英礼盒
tItem[3310705] = tItem[3310701] or {}
-- 时尚达人礼盒
tItem[3310706] = tItem[3310701] or {}
-- 时尚新秀礼盒
tItem[3310707] = tItem[3310701] or {}
-- 时尚学徒礼盒
tItem[3310708] = tItem[3310701] or {}
-- 蝶恋花时尚包
tItem[3310709] = tItem[3310701] or {}
-- 天仙子时尚包
tItem[3310710] = tItem[3310701] or {}
-- 轻舞飞扬时尚包
tItem[3310711] = tItem[3310701] or {}
-- 紫音青衫时尚包
tItem[3310712] = tItem[3310701] or {}
-- 喵基尼时尚包
tItem[3310713] = tItem[3310701] or {}
tItem[3310701]["Function"] = function(nItemId,sItemName)
	-- 判断物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tFashionEvent_Reward["UsePack"][nItemId])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tFashionEvent_Text[2005]["Item"]["FullBag2"])
		return false
	end
	
	RewardTemplate_UseItemAndMsg(tFashionEvent_Reward["UsePack"][nItemId])
	
	-- 第一名出全服公告
	if nItemId == 3310701 then
		local sUserName = Get_UserName()
		local sBroadcast = string.format(tFashionEvent_Text["Broadcast"],sUserName)
		Sys_TalkBroadcast(sBroadcast)
	end
end



-------------------------------时间自检
-- local tFashionEvent_OnTime = {}
	-- -- 18:55-18:59设置进入拍卖的最多五件外套并重置竞拍得主Global
	-- tFashionEvent_OnTime[1] = {}
	-- tFashionEvent_OnTime[1]["Type"] = 2
	-- tFashionEvent_OnTime[1]["TimeType"] = 4
	-- tFashionEvent_OnTime[1]["Multiple"] = {}
	-- tFashionEvent_OnTime[1]["Multiple"][1]  = "18:55 18:59"
	-- tFashionEvent_OnTime[1]["Func"] = FashionEvent_ResetAuction
	-- table.insert(tSystemTime_InitialData,tFashionEvent_OnTime[1])
	
	-- 19:01-19:05重置玩家上交的外套排行
	-- tFashionEvent_OnTime[2] = {}
	-- tFashionEvent_OnTime[2]["Type"] = 2
	-- tFashionEvent_OnTime[2]["TimeType"] = 4
	-- tFashionEvent_OnTime[2]["Multiple"] = {}
	-- tFashionEvent_OnTime[2]["Multiple"][1]  = "19:01 19:05"
	-- tFashionEvent_OnTime[2]["Func"] = FashionEvent_ResetHandIn
	-- table.insert(tSystemTime_InitialData,tFashionEvent_OnTime[2])
	
	-- 20:00发拍卖到的外套
	-- tFashionEvent_OnTime[3] = {}
	-- tFashionEvent_OnTime[3]["Type"] = 2
	-- tFashionEvent_OnTime[3]["TimeType"] = 4
	-- tFashionEvent_OnTime[3]["Multiple"] = {}
	-- tFashionEvent_OnTime[3]["Multiple"][1]  = "20:00 20:00"
	-- tFashionEvent_OnTime[3]["Func"] = FashionEvent_SendMail
	-- table.insert(tSystemTime_InitialData,tFashionEvent_OnTime[3])
	
	-- 活动后发时尚排行榜奖励
	-- tFashionEvent_OnTime[4] = {}
	-- tFashionEvent_OnTime[4]["ActivityTime"] = tActivityTime["FashionEvent"]["MailTime"]
	-- tFashionEvent_OnTime[4]["Type"] = 6
	-- tFashionEvent_OnTime[4]["TimeType"] = 4
	-- tFashionEvent_OnTime[4]["Multiple"] = {}
	-- tFashionEvent_OnTime[4]["Multiple"][1]  = "00:00 00:00"
	-- tFashionEvent_OnTime[4]["Multiple"][2]  = "00:01 00:01"
	-- tFashionEvent_OnTime[4]["Multiple"][3]  = "00:02 00:02"
	-- tFashionEvent_OnTime[4]["Func"] = FashionEvent_SendRankMail
	-- table.insert(tSystemTime_InitialData,tFashionEvent_OnTime[4])


-------------------------------怪物掉落
-- local tFashionEvent_Monster = {}
	-- -- 片区和地宫
	-- tFashionEvent_Monster[1] = {}
	-- tFashionEvent_Monster[1]["Function"] = FashionEvent_MonsterDrop
	-- tFashionEvent_Monster[1]["Area"] = {1,2,3,4,5,6,7,8,9,10,11}
	-- table.insert(tMonsterDrop_AreaLoad,tFashionEvent_Monster[1])


-------------------------------上线触发
-- tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- table.insert(tSystem_PlayLogin_Func,FashionEvent_StcClear)

