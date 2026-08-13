----------------------------------------------------------------------------
--Name:		[征服][任务脚本]夏日大作战.lua
--Purpose:	夏日大作战
--Creator: 	郑鋆
--Created:	2017/06/21
----------------------------------------------------------------------------

-- 命名前缀
-- SummerBattle_

-- stc掩码说明
-- 162 24	收纳包里热力沙滩时装碎片的数量
-- 162 25	收纳包里盛夏海风时装碎片的数量
-- 162 26	收纳包里夏威夷阳光时装碎片的数量
-- 162 27	收纳包里梦幻泡泡液碎片的数量
-- 162 28	收纳包里泳装外套洗赠液碎片的数量
-- 162 29	收纳包里沙滩武器外套碎片的数量
-- 162 30	收纳包里沙滩武器升级工具碎片的数量
-- 162 31	收纳包里沙滩武器外套洗赠液碎片的数量
-- 162 32	收纳包里霓虹翅翅膀外套碎片的数量
-- 162 33	收纳包里海妖之歌翅膀外套碎片的数量
-- 162 34	收纳包里流光换色碎片的数量
-- 162 35	收纳包里夏日翅膀外套洗赠液碎片的数量
-- 162 36	泳装魅力值
-- 162 37	翅膀魅力值
-- 162 38	武器外套魅力值
-- 162 39	魅力值总榜
-- 162 40	首次参与领取兑换券

-- 162 51	使用130级组冠军礼包时间以及次数
-- 162 52	使用130级组亚军礼包时间以及次数
-- 162 53	使用130级组季军礼包时间以及次数
-- 162 54	使用130级组八强礼包时间以及次数
-- 162 55	使用120级组冠军礼包时间以及次数
-- 162 56	使用120级组亚军礼包时间以及次数
-- 162 57	使用120级组季军礼包时间以及次数
-- 162 58	使用120级组八强礼包时间以及次数
-- 162 59	使用110级组冠军礼包时间以及次数
-- 162 60	使用110级组亚军礼包时间以及次数
-- 162 61	使用110级组季军礼包时间以及次数
-- 162 62	使用110级组八强礼包时间以及次数

-- 常量表
local tSummerBattle_Constant = {}
	-- 参赛的等级要求
	tSummerBattle_Constant["Level"] = 80
	tSummerBattle_Constant["Metempsychosis"] = 0
	-- 收纳包ID
	tSummerBattle_Constant["StorageBag"] = 3303761
	-- 泳装魅力值
	tSummerBattle_Constant["SwimsuitCharm"] = 3000
	--活动时间
	tSummerBattle_Constant["UseItemTime"] = tActivityTime["ServerTeamPk"]["UseTicket"]

-- 碎片赌的概率
local tSummerBattle_Bet = {}
	tSummerBattle_Bet["BeginNum"] = 4800
	tSummerBattle_Bet["EndNum"] = 10000
	
-- stc掩码
local tSummerBattle_Stc = {}
	-- 162 24	收纳包里热力沙滩时装碎片的数量
	tSummerBattle_Stc[3303696] = {}
	tSummerBattle_Stc[3303696]["EventType"] = 162
	tSummerBattle_Stc[3303696]["DataType"] = 24
	
	-- 162 25	收纳包里盛夏海风时装碎片的数量
	tSummerBattle_Stc[3303697] = {}
	tSummerBattle_Stc[3303697]["EventType"] = 162
	tSummerBattle_Stc[3303697]["DataType"] = 25
	
	-- 162 26	收纳包里夏威夷阳光时装碎片的数量
	tSummerBattle_Stc[3303698] = {}
	tSummerBattle_Stc[3303698]["EventType"] = 162
	tSummerBattle_Stc[3303698]["DataType"] = 26
	
	-- 162 27	收纳包里梦幻泡泡液碎片的数量
	tSummerBattle_Stc[3303699] = {}
	tSummerBattle_Stc[3303699]["EventType"] = 162
	tSummerBattle_Stc[3303699]["DataType"] = 27
	
	-- 162 28	收纳包里泳装外套洗赠液碎片的数量
	tSummerBattle_Stc[3303700] = {}
	tSummerBattle_Stc[3303700]["EventType"] = 162
	tSummerBattle_Stc[3303700]["DataType"] = 28
	
	-- 162 29	收纳包里沙滩武器外套碎片的数量
	tSummerBattle_Stc[3303701] = {}
	tSummerBattle_Stc[3303701]["EventType"] = 162
	tSummerBattle_Stc[3303701]["DataType"] = 29
	
	-- 162 30	收纳包里沙滩武器升级工具碎片的数量	
	tSummerBattle_Stc[3303702] = {}
	tSummerBattle_Stc[3303702]["EventType"] = 162
	tSummerBattle_Stc[3303702]["DataType"] = 30
	
	-- 162 31	收纳包里沙滩武器外套洗赠液碎片的数量
	tSummerBattle_Stc[3303703] = {}
	tSummerBattle_Stc[3303703]["EventType"] = 162
	tSummerBattle_Stc[3303703]["DataType"] = 31
	
	-- 162 32	收纳包里霓虹翅翅膀外套碎片的数量	
	tSummerBattle_Stc[3303704] = {}
	tSummerBattle_Stc[3303704]["EventType"] = 162
	tSummerBattle_Stc[3303704]["DataType"] = 32
	
	-- 162 33	收纳包里海妖之歌翅膀外套碎片的数量	
	tSummerBattle_Stc[3303705] = {}
	tSummerBattle_Stc[3303705]["EventType"] = 162
	tSummerBattle_Stc[3303705]["DataType"] = 33
	
	-- 162 34	收纳包里百变霓虹魔术棒碎片的数量	
    tSummerBattle_Stc[3303706] = {}
	tSummerBattle_Stc[3303706]["EventType"] = 162
	tSummerBattle_Stc[3303706]["DataType"] = 34
	
	-- 162 35	收纳包里夏日翅膀外套洗赠液碎片的数量
	tSummerBattle_Stc[3303707] = {}
	tSummerBattle_Stc[3303707]["EventType"] = 162
	tSummerBattle_Stc[3303707]["DataType"] = 35
	
	-- 首次参与领取兑换券
	tSummerBattle_Stc[1] = {}
	tSummerBattle_Stc[1]["EventType"] = 162
	tSummerBattle_Stc[1]["DataType"] = 40
	
	-- 神龙岛掉落
	tSummerBattle_Stc[2] = {}
	tSummerBattle_Stc[2]["EventType"] = 162
	tSummerBattle_Stc[2]["DataType"] = 70
	tSummerBattle_Stc[2]["MaxData"] = 5

	-- 162 36	泳装魅力值
	tSummerBattle_Stc[21903] = {}
	tSummerBattle_Stc[21903]["EventType"] = 162
	tSummerBattle_Stc[21903]["DataType"] = 36
	
	-- 162 37	翅膀魅力值
	tSummerBattle_Stc[21904] = {}
	tSummerBattle_Stc[21904]["EventType"] = 162
	tSummerBattle_Stc[21904]["DataType"] = 37
	
	-- 162 38	武器外套魅力值
	tSummerBattle_Stc[21905] = {}
	tSummerBattle_Stc[21905]["EventType"] = 162
	tSummerBattle_Stc[21905]["DataType"] = 38
	
	-- 162 39	魅力值总榜
	tSummerBattle_Stc[21906] = {}
	tSummerBattle_Stc[21906]["EventType"] = 162
	tSummerBattle_Stc[21906]["DataType"] = 39
	
	-- 162 51	使用130级组冠军礼包时间以及次数
	tSummerBattle_Stc[3303777] = {}
	tSummerBattle_Stc[3303777]["EventType"] = 162
	tSummerBattle_Stc[3303777]["DataType"] = 51
	
	-- 162 52	使用130级组亚军礼包时间以及次数
	tSummerBattle_Stc[3303778] = {}
	tSummerBattle_Stc[3303778]["EventType"] = 162
	tSummerBattle_Stc[3303778]["DataType"] = 52
	
	-- 162 53	使用130级组季军礼包时间以及次数
	tSummerBattle_Stc[3303779] = {}
	tSummerBattle_Stc[3303779]["EventType"] = 162
	tSummerBattle_Stc[3303779]["DataType"] = 53
	
	-- 162 54	使用130级组八强礼包时间以及次数
	tSummerBattle_Stc[3303780] = {}
	tSummerBattle_Stc[3303780]["EventType"] = 162
	tSummerBattle_Stc[3303780]["DataType"] = 54
	
	-- 162 55	使用120级组冠军礼包时间以及次数
	tSummerBattle_Stc[3303781] = {}
	tSummerBattle_Stc[3303781]["EventType"] = 162
	tSummerBattle_Stc[3303781]["DataType"] = 55
	
	-- 162 56	使用120级组亚军礼包时间以及次数
	tSummerBattle_Stc[3303782] = {}
	tSummerBattle_Stc[3303782]["EventType"] = 162
	tSummerBattle_Stc[3303782]["DataType"] = 56
	
	-- 162 57	使用120级组季军礼包时间以及次数
	tSummerBattle_Stc[3303783] = {}
	tSummerBattle_Stc[3303783]["EventType"] = 162
	tSummerBattle_Stc[3303783]["DataType"] = 57
	
	-- 162 58	使用120级组八强礼包时间以及次数
	tSummerBattle_Stc[3303784] = {}
	tSummerBattle_Stc[3303784]["EventType"] = 162
	tSummerBattle_Stc[3303784]["DataType"] = 58
	
	-- 162 59	使用110级组冠军礼包时间以及次数
	tSummerBattle_Stc[3303785] = {}
	tSummerBattle_Stc[3303785]["EventType"] = 162
	tSummerBattle_Stc[3303785]["DataType"] = 59
	
	-- 162 60	使用110级组亚军礼包时间以及次数
	tSummerBattle_Stc[3303786] = {}
	tSummerBattle_Stc[3303786]["EventType"] = 162
	tSummerBattle_Stc[3303786]["DataType"] = 60
	
	-- 162 61	使用110级组季军礼包时间以及次数
	tSummerBattle_Stc[3303787] = {}
	tSummerBattle_Stc[3303787]["EventType"] = 162
	tSummerBattle_Stc[3303787]["DataType"] = 61
	
	-- 162 62	使用110级组八强礼包时间以及次数
	tSummerBattle_Stc[3303788] = {}
	tSummerBattle_Stc[3303788]["EventType"] = 162
	tSummerBattle_Stc[3303788]["DataType"] = 62
	
	-- 170 57	使用130级组冠军礼包时间以及次数
	tSummerBattle_Stc[3306823] = {}
	tSummerBattle_Stc[3306823]["EventType"] = 170
	tSummerBattle_Stc[3306823]["DataType"] = 57
	-- 170 58	使用130级组亚军礼包时间以及次数
	tSummerBattle_Stc[3306824] = {}
	tSummerBattle_Stc[3306824]["EventType"] = 170
	tSummerBattle_Stc[3306824]["DataType"] = 58
	-- 170 59	使用130级组季军礼包时间以及次数
	tSummerBattle_Stc[3306825] = {}
	tSummerBattle_Stc[3306825]["EventType"] = 170
	tSummerBattle_Stc[3306825]["DataType"] = 59
	-- 170 60	使用130级组八强礼包时间以及次数
	tSummerBattle_Stc[3306826] = {}
	tSummerBattle_Stc[3306826]["EventType"] = 170
	tSummerBattle_Stc[3306826]["DataType"] = 60
	-- 170 61	使用120级组冠军礼包时间以及次数
	tSummerBattle_Stc[3306827] = {}
	tSummerBattle_Stc[3306827]["EventType"] = 170
	tSummerBattle_Stc[3306827]["DataType"] = 61
	-- 170 62	使用120级组亚军礼包时间以及次数
	tSummerBattle_Stc[3306828] = {}
	tSummerBattle_Stc[3306828]["EventType"] = 170
	tSummerBattle_Stc[3306828]["DataType"] = 62
	-- 170 63	使用120级组季军礼包时间以及次数
	tSummerBattle_Stc[3306829] = {}
	tSummerBattle_Stc[3306829]["EventType"] = 170
	tSummerBattle_Stc[3306829]["DataType"] = 63
	-- 170 64	使用120级组八强礼包时间以及次数
	tSummerBattle_Stc[3306830] = {}
	tSummerBattle_Stc[3306830]["EventType"] = 170
	tSummerBattle_Stc[3306830]["DataType"] = 64
	-- 170 65	使用110级组冠军礼包时间以及次数
	tSummerBattle_Stc[3306831] = {}
	tSummerBattle_Stc[3306831]["EventType"] = 170
	tSummerBattle_Stc[3306831]["DataType"] = 65
	
	-- 170 66	使用110级组亚军礼包时间以及次数
	tSummerBattle_Stc[3306832] = {}
	tSummerBattle_Stc[3306832]["EventType"] = 170
	tSummerBattle_Stc[3306832]["DataType"] = 66
	
	-- 170 67	使用110级组季军礼包时间以及次数
	tSummerBattle_Stc[3306833] = {}
	tSummerBattle_Stc[3306833]["EventType"] = 170
	tSummerBattle_Stc[3306833]["DataType"] = 67
	
	-- 170 68	使用110级组八强礼包时间以及次数
	tSummerBattle_Stc[3306834] = {}
	tSummerBattle_Stc[3306834]["EventType"] = 170
	tSummerBattle_Stc[3306834]["DataType"] = 68
		--神纹版本
	-- 170 19	使用130级组冠军礼包时间以及次数
	tSummerBattle_Stc[3306685] = {}
	tSummerBattle_Stc[3306685]["EventType"] = 170
	tSummerBattle_Stc[3306685]["DataType"] = 19
	
	-- 170 20	使用130级组亚军礼包时间以及次数
	tSummerBattle_Stc[3306686] = {}
	tSummerBattle_Stc[3306686]["EventType"] = 170
	tSummerBattle_Stc[3306686]["DataType"] = 20
	
	-- 170 21	使用130级组季军礼包时间以及次数
	tSummerBattle_Stc[3306687] = {}
	tSummerBattle_Stc[3306687]["EventType"] = 170
	tSummerBattle_Stc[3306687]["DataType"] = 21
	
	-- 170 22	使用130级组八强礼包时间以及次数
	tSummerBattle_Stc[3306688] = {}
	tSummerBattle_Stc[3306688]["EventType"] = 170
	tSummerBattle_Stc[3306688]["DataType"] = 22
	
	-- 170 23	使用120级组冠军礼包时间以及次数
	tSummerBattle_Stc[3306689] = {}
	tSummerBattle_Stc[3306689]["EventType"] = 170
	tSummerBattle_Stc[3306689]["DataType"] = 23
	
	-- 170 24	使用120级组亚军礼包时间以及次数
	tSummerBattle_Stc[3306690] = {}
	tSummerBattle_Stc[3306690]["EventType"] = 170
	tSummerBattle_Stc[3306690]["DataType"] = 24
	
	-- 170 25	使用120级组季军礼包时间以及次数
	tSummerBattle_Stc[3306691] = {}
	tSummerBattle_Stc[3306691]["EventType"] = 170
	tSummerBattle_Stc[3306691]["DataType"] = 25
	
	-- 170 26	使用120级组八强礼包时间以及次数
	tSummerBattle_Stc[3306692] = {}
	tSummerBattle_Stc[3306692]["EventType"] = 170
	tSummerBattle_Stc[3306692]["DataType"] = 26
	
	-- 170 27	使用110级组冠军礼包时间以及次数
	tSummerBattle_Stc[3306693] = {}
	tSummerBattle_Stc[3306693]["EventType"] = 170
	tSummerBattle_Stc[3306693]["DataType"] = 27
	
	-- 170 28	使用110级组亚军礼包时间以及次数
	tSummerBattle_Stc[3306694] = {}
	tSummerBattle_Stc[3306694]["EventType"] = 170
	tSummerBattle_Stc[3306694]["DataType"] = 28
	
	-- 170 29	使用110级组季军礼包时间以及次数
	tSummerBattle_Stc[3306695] = {}
	tSummerBattle_Stc[3306695]["EventType"] = 170
	tSummerBattle_Stc[3306695]["DataType"] = 29
	
	-- 170 30	使用110级组八强礼包时间以及次数
	tSummerBattle_Stc[3306696] = {}
	tSummerBattle_Stc[3306696]["EventType"] = 170
	tSummerBattle_Stc[3306696]["DataType"] = 30
-- 碎片物品ID
local tSummerBattle_Pieces = {3303696,3303697,3303698,3303699,3303700,3303701,3303702,3303703,3303704,3303705,3303706,3303707}
	
-- 礼包配置	
local tSummerBattle_Package = {}
	-- 热力沙滩时装碎片
	-- 集齐15个合成赠品热力沙滩套装
	tSummerBattle_Package[3303696] = {}
	tSummerBattle_Package[3303696][1] = {}
	tSummerBattle_Package[3303696][1]["LogId"] = 12000760
	tSummerBattle_Package[3303696][1]["LogStep"] = "1[4]"
	tSummerBattle_Package[3303696][1]["DeleteItem"] = {}
	tSummerBattle_Package[3303696][1]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303696][1]["DeleteItem"][1]["Id"] = 3303696
	tSummerBattle_Package[3303696][1]["DeleteItem"][1]["ItemNum"] = 15
	tSummerBattle_Package[3303696][1]["DeleteItem"][1]["NoItem"] = tSummerBattle_Text[3303696]["NoItem"]
	tSummerBattle_Package[3303696][1]["RewardItem"] = {}
	tSummerBattle_Package[3303696][1]["RewardItem"][1] = {}
	tSummerBattle_Package[3303696][1]["RewardItem"][1]["Id"] = 184345
	tSummerBattle_Package[3303696][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	
	tSummerBattle_Package[3303696][2] = {}
	tSummerBattle_Package[3303696][2]["Log"] = "0,0,3303696,1,12000760,2,3303696,2"
	tSummerBattle_Package[3303696][2]["RewardItem"] = {}
	tSummerBattle_Package[3303696][2]["RewardItem"][1] = {}
	tSummerBattle_Package[3303696][2]["RewardItem"][1]["Id"] = 3303696
	tSummerBattle_Package[3303696][2]["RewardItem"][1]["Attr"] = "0 2"

	-- 盛夏海风时装碎片
	-- 集齐15个合成赠品盛夏海风泳装
	tSummerBattle_Package[3303697] = {}
	tSummerBattle_Package[3303697][1] = {}
	tSummerBattle_Package[3303697][1]["LogId"] = 12000760
	tSummerBattle_Package[3303697][1]["LogStep"] = "1[4]"
	tSummerBattle_Package[3303697][1]["DeleteItem"] = {}
	tSummerBattle_Package[3303697][1]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303697][1]["DeleteItem"][1]["Id"] = 3303697
	tSummerBattle_Package[3303697][1]["DeleteItem"][1]["ItemNum"] = 15
	tSummerBattle_Package[3303697][1]["DeleteItem"][1]["NoItem"] = tSummerBattle_Text[3303697]["NoItem"]
	tSummerBattle_Package[3303697][1]["RewardItem"] = {}
	tSummerBattle_Package[3303697][1]["RewardItem"][1] = {}
	tSummerBattle_Package[3303697][1]["RewardItem"][1]["Id"] = 192495
	tSummerBattle_Package[3303697][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	
	tSummerBattle_Package[3303697][2] = {}
	tSummerBattle_Package[3303697][2]["Log"] = "0,0,3303697,1,12000760,2,3303697,2"
	tSummerBattle_Package[3303697][2]["RewardItem"] = {}
	tSummerBattle_Package[3303697][2]["RewardItem"][1] = {}
	tSummerBattle_Package[3303697][2]["RewardItem"][1]["Id"] = 3303697
	tSummerBattle_Package[3303697][2]["RewardItem"][1]["Attr"] = "0 2"

	-- 夏威夷阳光时装碎片
	-- 集齐25个合成夏威夷阳光
	tSummerBattle_Package[3303698] = {}
	tSummerBattle_Package[3303698][1] = {}
	tSummerBattle_Package[3303698][1]["LogId"] = 12000760
	tSummerBattle_Package[3303698][1]["LogStep"] = "1[4]"
	tSummerBattle_Package[3303698][1]["DeleteItem"] = {}
	tSummerBattle_Package[3303698][1]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303698][1]["DeleteItem"][1]["Id"] = 3303698
	tSummerBattle_Package[3303698][1]["DeleteItem"][1]["ItemNum"] = 25
	tSummerBattle_Package[3303698][1]["DeleteItem"][1]["NoItem"] = tSummerBattle_Text[3303698]["NoItem"]
	tSummerBattle_Package[3303698][1]["RewardItem"] = {}
	tSummerBattle_Package[3303698][1]["RewardItem"][1] = {}
	tSummerBattle_Package[3303698][1]["RewardItem"][1]["Id"] = 189665
	tSummerBattle_Package[3303698][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	
	tSummerBattle_Package[3303698][2] = {}
	tSummerBattle_Package[3303698][2]["Log"] = "0,0,3303698,1,12000760,2,3303698,2"
	tSummerBattle_Package[3303698][2]["RewardItem"] = {}
	tSummerBattle_Package[3303698][2]["RewardItem"][1] = {}
	tSummerBattle_Package[3303698][2]["RewardItem"][1]["Id"] = 3303698
	tSummerBattle_Package[3303698][2]["RewardItem"][1]["Attr"] = "0 2"

	-- 梦幻泡泡液碎片
	-- 5个合成1个梦幻泡泡液
	tSummerBattle_Package[3303699] = {}
	tSummerBattle_Package[3303699][1] = {}
	tSummerBattle_Package[3303699][1]["LogId"] = 12000760
	tSummerBattle_Package[3303699][1]["DeleteItem"] = {}
	tSummerBattle_Package[3303699][1]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303699][1]["DeleteItem"][1]["Id"] = 3303699
	tSummerBattle_Package[3303699][1]["DeleteItem"][1]["ItemNum"] = 5
	tSummerBattle_Package[3303699][1]["DeleteItem"][1]["NoItem"] = tSummerBattle_Text[3303699]["NoItem"]
	tSummerBattle_Package[3303699][1]["RewardItem"] = {}
	tSummerBattle_Package[3303699][1]["RewardItem"][1] = {}
	tSummerBattle_Package[3303699][1]["RewardItem"][1]["Id"] = 3303759
	tSummerBattle_Package[3303699][1]["RewardItem"][1]["Attr"] = "0 1"
	
	tSummerBattle_Package[3303699][2] = {}
	tSummerBattle_Package[3303699][2]["Log"] = "0,0,3303699,1,12000760,2,3303699,2"
	tSummerBattle_Package[3303699][2]["RewardItem"] = {}
	tSummerBattle_Package[3303699][2]["RewardItem"][1] = {}
	tSummerBattle_Package[3303699][2]["RewardItem"][1]["Id"] = 3303699
	tSummerBattle_Package[3303699][2]["RewardItem"][1]["Attr"] = "0 2"

	-- 泳装外套洗赠液碎片
	-- 5个合成1个泳装外套洗赠液
	tSummerBattle_Package[3303700] = {}
	tSummerBattle_Package[3303700][1] = {}
	tSummerBattle_Package[3303700][1]["LogId"] = 12000760
	tSummerBattle_Package[3303700][1]["DeleteItem"] = {}
	tSummerBattle_Package[3303700][1]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303700][1]["DeleteItem"][1]["Id"] = 3303700
	tSummerBattle_Package[3303700][1]["DeleteItem"][1]["ItemNum"] = 5
	tSummerBattle_Package[3303700][1]["DeleteItem"][1]["NoItem"] = tSummerBattle_Text[3303700]["NoItem"]
	tSummerBattle_Package[3303700][1]["RewardItem"] = {}
	tSummerBattle_Package[3303700][1]["RewardItem"][1] = {}
	tSummerBattle_Package[3303700][1]["RewardItem"][1]["Id"] = 3303760
	tSummerBattle_Package[3303700][1]["RewardItem"][1]["Attr"] = "0 1"
	
	tSummerBattle_Package[3303700][2] = {}
	tSummerBattle_Package[3303700][2]["Log"] = "0,0,3303700,1,12000760,2,3303700,2"
	tSummerBattle_Package[3303700][2]["RewardItem"] = {}
	tSummerBattle_Package[3303700][2]["RewardItem"][1] = {}
	tSummerBattle_Package[3303700][2]["RewardItem"][1]["Id"] = 3303700
	tSummerBattle_Package[3303700][2]["RewardItem"][1]["Attr"] = "0 2"

	-- 沙滩武器外套碎片
	-- 集齐15个合成1个30天赠品武器外套可选包
	tSummerBattle_Package[3303701] = {}
	tSummerBattle_Package[3303701][1] = {}
	tSummerBattle_Package[3303701][1]["LogId"] = 12000760
	tSummerBattle_Package[3303701][1]["LogStep"] = "1[5]"
	tSummerBattle_Package[3303701][1]["DeleteItem"] = {}
	tSummerBattle_Package[3303701][1]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303701][1]["DeleteItem"][1]["Id"] = 3303701
	tSummerBattle_Package[3303701][1]["DeleteItem"][1]["ItemNum"] = 15
	tSummerBattle_Package[3303701][1]["DeleteItem"][1]["NoItem"] = tSummerBattle_Text[3303701]["NoItem"]
	tSummerBattle_Package[3303701][1]["RewardItem"] = {}
	tSummerBattle_Package[3303701][1]["RewardItem"][1] = {}
	tSummerBattle_Package[3303701][1]["RewardItem"][1]["Id"] = 3303766
	tSummerBattle_Package[3303701][1]["RewardItem"][1]["Attr"] = "0 1"
	
	tSummerBattle_Package[3303701][2] = {}
	tSummerBattle_Package[3303701][2]["Log"] = "0,0,3303701,1,12000760,2,3303701,2"
	tSummerBattle_Package[3303701][2]["RewardItem"] = {}
	tSummerBattle_Package[3303701][2]["RewardItem"][1] = {}
	tSummerBattle_Package[3303701][2]["RewardItem"][1]["Id"] = 3303701
	tSummerBattle_Package[3303701][2]["RewardItem"][1]["Attr"] = "0 2"

	-- 沙滩武器升级工具碎片
	-- 5个合成1个光效道具
	tSummerBattle_Package[3303702] = {}
	tSummerBattle_Package[3303702][1] = {}
	tSummerBattle_Package[3303702][1]["LogId"] = 12000760
	tSummerBattle_Package[3303702][1]["DeleteItem"] = {}
	tSummerBattle_Package[3303702][1]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303702][1]["DeleteItem"][1]["Id"] = 3303702
	tSummerBattle_Package[3303702][1]["DeleteItem"][1]["ItemNum"] = 5
	tSummerBattle_Package[3303702][1]["DeleteItem"][1]["NoItem"] = tSummerBattle_Text[3303702]["NoItem"]
	tSummerBattle_Package[3303702][1]["RewardItem"] = {}
	tSummerBattle_Package[3303702][1]["RewardItem"][1] = {}
	tSummerBattle_Package[3303702][1]["RewardItem"][1]["Id"] = 3303762
	tSummerBattle_Package[3303702][1]["RewardItem"][1]["Attr"] = "0 1"
	
	tSummerBattle_Package[3303702][2] = {}
	tSummerBattle_Package[3303702][2]["Log"] = "0,0,3303702,1,12000760,2,3303702,2"
	tSummerBattle_Package[3303702][2]["RewardItem"] = {}
	tSummerBattle_Package[3303702][2]["RewardItem"][1] = {}
	tSummerBattle_Package[3303702][2]["RewardItem"][1]["Id"] = 3303702
	tSummerBattle_Package[3303702][2]["RewardItem"][1]["Attr"] = "0 2"

	-- 沙滩武器外套洗赠液碎片
	-- 5个合成1个洗赠道具
	tSummerBattle_Package[3303703] = {}
	tSummerBattle_Package[3303703][1] = {}
	tSummerBattle_Package[3303703][1]["LogId"] = 12000760
	tSummerBattle_Package[3303703][1]["DeleteItem"] = {}
	tSummerBattle_Package[3303703][1]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303703][1]["DeleteItem"][1]["Id"] = 3303703
	tSummerBattle_Package[3303703][1]["DeleteItem"][1]["ItemNum"] = 5
	tSummerBattle_Package[3303703][1]["DeleteItem"][1]["NoItem"] = tSummerBattle_Text[3303703]["NoItem"]
	tSummerBattle_Package[3303703][1]["RewardItem"] = {}
	tSummerBattle_Package[3303703][1]["RewardItem"][1] = {}
	tSummerBattle_Package[3303703][1]["RewardItem"][1]["Id"] = 3303763
	tSummerBattle_Package[3303703][1]["RewardItem"][1]["Attr"] = "0 1"
	
	tSummerBattle_Package[3303703][2] = {}
	tSummerBattle_Package[3303703][2]["Log"] = "0,0,3303703,1,12000760,2,3303703,2"
	tSummerBattle_Package[3303703][2]["RewardItem"] = {}
	tSummerBattle_Package[3303703][2]["RewardItem"][1] = {}
	tSummerBattle_Package[3303703][2]["RewardItem"][1]["Id"] = 3303703
	tSummerBattle_Package[3303703][2]["RewardItem"][1]["Attr"] = "0 2"

	-- 霓虹翅翅膀外套碎片
	-- 集齐30个，各25%几率出A/B/C/D色流光翅膀
	tSummerBattle_Package[3303704] = {}
	tSummerBattle_Package[3303704]["IsRandom"] = true
	tSummerBattle_Package[3303704]["Index"] = 1
	
	tSummerBattle_Package[3303704][1] = {}
	tSummerBattle_Package[3303704][1]["LogId"] = 12000760
	tSummerBattle_Package[3303704][1]["LogStep"] = "1[6]"
	tSummerBattle_Package[3303704][1]["ItemChanceSum"] = 10000
	tSummerBattle_Package[3303704][1]["DeleteItem"] = {}
	tSummerBattle_Package[3303704][1]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303704][1]["DeleteItem"][1]["Id"] = 3303704
	tSummerBattle_Package[3303704][1]["DeleteItem"][1]["ItemNum"] = 30
	tSummerBattle_Package[3303704][1]["DeleteItem"][1]["NoItem"] = tSummerBattle_Text[3303704]["NoItem"]
	
	tSummerBattle_Package[3303704][1][1] = {}
	tSummerBattle_Package[3303704][1][1]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3303704][1][1]["ItemChance"] = 2500
	tSummerBattle_Package[3303704][1][1]["Log"] = "0,0,3303704,30,12000760,2,3303772,1"
	tSummerBattle_Package[3303704][1][1]["RewardItem"] = {}
	tSummerBattle_Package[3303704][1][1]["RewardItem"][1] = {}
	tSummerBattle_Package[3303704][1][1]["RewardItem"][1]["Id"] = 3303772
	tSummerBattle_Package[3303704][1][1]["RewardItem"][1]["Attr"] = "0 1"
	
	tSummerBattle_Package[3303704][1][2] = {}
	tSummerBattle_Package[3303704][1][2]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3303704][1][2]["ItemChance"] = 2500
	tSummerBattle_Package[3303704][1][2]["Log"] = "0,0,3303704,30,12000760,2,3303773,1"
	tSummerBattle_Package[3303704][1][2]["RewardItem"] = {}
	tSummerBattle_Package[3303704][1][2]["RewardItem"][1] = {}
	tSummerBattle_Package[3303704][1][2]["RewardItem"][1]["Id"] = 3303773
	tSummerBattle_Package[3303704][1][2]["RewardItem"][1]["Attr"] = "0 1"
	
	tSummerBattle_Package[3303704][1][3] = {}
	tSummerBattle_Package[3303704][1][3]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3303704][1][3]["ItemChance"] = 2500
	tSummerBattle_Package[3303704][1][3]["Log"] = "0,0,3303704,30,12000760,2,3303774,1"
	tSummerBattle_Package[3303704][1][3]["RewardItem"] = {}
	tSummerBattle_Package[3303704][1][3]["RewardItem"][1] = {}
	tSummerBattle_Package[3303704][1][3]["RewardItem"][1]["Id"] = 3303774
	tSummerBattle_Package[3303704][1][3]["RewardItem"][1]["Attr"] = "0 1"
	
	tSummerBattle_Package[3303704][1][4] = {}
	tSummerBattle_Package[3303704][1][4]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3303704][1][4]["ItemChance"] = 2500
	tSummerBattle_Package[3303704][1][4]["Log"] = "0,0,3303704,30,12000760,2,3303775,1"
	tSummerBattle_Package[3303704][1][4]["RewardItem"] = {}
	tSummerBattle_Package[3303704][1][4]["RewardItem"][1] = {}
	tSummerBattle_Package[3303704][1][4]["RewardItem"][1]["Id"] = 3303775
	tSummerBattle_Package[3303704][1][4]["RewardItem"][1]["Attr"] = "0 1"

	tSummerBattle_Package[3303704][2] = {}
	tSummerBattle_Package[3303704][2]["Log"] = "0,0,3303704,1,12000760,2,3303704,2"
	tSummerBattle_Package[3303704][2]["RewardItem"] = {}
	tSummerBattle_Package[3303704][2]["RewardItem"][1] = {}
	tSummerBattle_Package[3303704][2]["RewardItem"][1]["Id"] = 3303704
	tSummerBattle_Package[3303704][2]["RewardItem"][1]["Attr"] = "0 2"

	-- 蝴蝶翅膀碎片
	-- 集齐99个合成蝴蝶翅膀
	tSummerBattle_Package[3303705] = {}
	tSummerBattle_Package[3303705][1] = {}
	tSummerBattle_Package[3303705][1]["LogId"] = 12000760
	tSummerBattle_Package[3303705][1]["LogStep"] = "1[6]"
	tSummerBattle_Package[3303705][1]["DeleteItem"] = {}
	tSummerBattle_Package[3303705][1]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303705][1]["DeleteItem"][1]["Id"] = 3303705
	tSummerBattle_Package[3303705][1]["DeleteItem"][1]["ItemNum"] = 99
	tSummerBattle_Package[3303705][1]["DeleteItem"][1]["NoItem"] = tSummerBattle_Text[3303705]["NoItem"]
	tSummerBattle_Package[3303705][1]["RewardItem"] = {}
	tSummerBattle_Package[3303705][1]["RewardItem"][1] = {}
	tSummerBattle_Package[3303705][1]["RewardItem"][1]["Id"] = 3303776
	tSummerBattle_Package[3303705][1]["RewardItem"][1]["Attr"] = "0 1"
	
	tSummerBattle_Package[3303705][2] = {}
	tSummerBattle_Package[3303705][2]["Log"] = "0,0,3303705,1,12000760,2,3303705,2"
	tSummerBattle_Package[3303705][2]["RewardItem"] = {}
	tSummerBattle_Package[3303705][2]["RewardItem"][1] = {}
	tSummerBattle_Package[3303705][2]["RewardItem"][1]["Id"] = 3303705
	tSummerBattle_Package[3303705][2]["RewardItem"][1]["Attr"] = "0 2"

	-- 百变霓虹魔术棒碎片
	-- 集齐10个合成一个换色道具
	tSummerBattle_Package[3303706] = {}
	tSummerBattle_Package[3303706][1] = {}
	tSummerBattle_Package[3303706][1]["LogId"] = 12000760
	tSummerBattle_Package[3303706][1]["DeleteItem"] = {}
	tSummerBattle_Package[3303706][1]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303706][1]["DeleteItem"][1]["Id"] = 3303706
	tSummerBattle_Package[3303706][1]["DeleteItem"][1]["ItemNum"] = 10
	tSummerBattle_Package[3303706][1]["DeleteItem"][1]["NoItem"] = tSummerBattle_Text[3303706]["NoItem"]
	tSummerBattle_Package[3303706][1]["RewardItem"] = {}
	tSummerBattle_Package[3303706][1]["RewardItem"][1] = {}
	tSummerBattle_Package[3303706][1]["RewardItem"][1]["Id"] = 3303764
	tSummerBattle_Package[3303706][1]["RewardItem"][1]["Attr"] = "0 1"
	
	tSummerBattle_Package[3303706][2] = {}
	tSummerBattle_Package[3303706][2]["Log"] = "0,0,3303706,1,12000760,2,3303706,2"
	tSummerBattle_Package[3303706][2]["RewardItem"] = {}
	tSummerBattle_Package[3303706][2]["RewardItem"][1] = {}
	tSummerBattle_Package[3303706][2]["RewardItem"][1]["Id"] = 3303706
	tSummerBattle_Package[3303706][2]["RewardItem"][1]["Attr"] = "0 2"

	-- 翅膀洗赠碎片
	-- 集齐5个合成一个
	tSummerBattle_Package[3303707] = {}
	tSummerBattle_Package[3303707][1] = {}
	tSummerBattle_Package[3303707][1]["LogId"] = 12000760
	tSummerBattle_Package[3303707][1]["DeleteItem"] = {}
	tSummerBattle_Package[3303707][1]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303707][1]["DeleteItem"][1]["Id"] = 3303707
	tSummerBattle_Package[3303707][1]["DeleteItem"][1]["ItemNum"] = 5
	tSummerBattle_Package[3303707][1]["DeleteItem"][1]["NoItem"] = tSummerBattle_Text[3303707]["NoItem"]
	tSummerBattle_Package[3303707][1]["RewardItem"] = {}
	tSummerBattle_Package[3303707][1]["RewardItem"][1] = {}
	tSummerBattle_Package[3303707][1]["RewardItem"][1]["Id"] = 3303765
	tSummerBattle_Package[3303707][1]["RewardItem"][1]["Attr"] = "0 1"
	
	tSummerBattle_Package[3303707][2] = {}
	tSummerBattle_Package[3303707][2]["Log"] = "0,0,3303707,1,12000760,2,3303707,2"
	tSummerBattle_Package[3303707][2]["RewardItem"] = {}
	tSummerBattle_Package[3303707][2]["RewardItem"][1] = {}
	tSummerBattle_Package[3303707][2]["RewardItem"][1]["Id"] = 3303707
	tSummerBattle_Package[3303707][2]["RewardItem"][1]["Attr"] = "0 2"

	-- 夏日外套终极礼包
	tSummerBattle_Package[3303708] = {}
	tSummerBattle_Package[3303708]["IsRandom"] = true
	tSummerBattle_Package[3303708]["Index"] = 1
	
	tSummerBattle_Package[3303708][1] = {}
	tSummerBattle_Package[3303708][1]["LogId"] = 12000760
	tSummerBattle_Package[3303708][1]["ItemChanceSum"] = 10000
	tSummerBattle_Package[3303708][1]["DeleteItem"] = {}
	tSummerBattle_Package[3303708][1]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303708][1]["DeleteItem"][1]["Id"] = 3303708
	
	-- 外套碎片1+1天时效外套1	30%
	tSummerBattle_Package[3303708][1][1] = {}
	tSummerBattle_Package[3303708][1][1]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3303708][1][1]["ItemChance"] = 3000
	tSummerBattle_Package[3303708][1][1]["RewardItem"] = {}
	tSummerBattle_Package[3303708][1][1]["RewardItem"][1] = {}
	tSummerBattle_Package[3303708][1][1]["RewardItem"][1]["Id"] = 184345
	tSummerBattle_Package[3303708][1][1]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tSummerBattle_Package[3303708][1][1]["RewardItem"][2] = {}
	tSummerBattle_Package[3303708][1][1]["RewardItem"][2]["Id"] = 3303696
	tSummerBattle_Package[3303708][1][1]["RewardItem"][2]["Attr"] = "0 1"

	-- 外套碎片2+1天时效外套2	30%
	tSummerBattle_Package[3303708][1][2] = {}
	tSummerBattle_Package[3303708][1][2]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3303708][1][2]["ItemChance"] = 3000
	tSummerBattle_Package[3303708][1][2]["RewardItem"] = {}
	tSummerBattle_Package[3303708][1][2]["RewardItem"][1] = {}
	tSummerBattle_Package[3303708][1][2]["RewardItem"][1]["Id"] = 192495
	tSummerBattle_Package[3303708][1][2]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tSummerBattle_Package[3303708][1][2]["RewardItem"][2] = {}
	tSummerBattle_Package[3303708][1][2]["RewardItem"][2]["Id"] = 3303697
	tSummerBattle_Package[3303708][1][2]["RewardItem"][2]["Attr"] = "0 1"

	-- 外套碎片3+1天时效外套3	10%
	tSummerBattle_Package[3303708][1][3] = {}
	tSummerBattle_Package[3303708][1][3]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3303708][1][3]["ItemChance"] = 1000
	tSummerBattle_Package[3303708][1][3]["RewardItem"] = {}
	tSummerBattle_Package[3303708][1][3]["RewardItem"][1] = {}
	tSummerBattle_Package[3303708][1][3]["RewardItem"][1]["Id"] = 189665
	tSummerBattle_Package[3303708][1][3]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tSummerBattle_Package[3303708][1][3]["RewardItem"][2] = {}
	tSummerBattle_Package[3303708][1][3]["RewardItem"][2]["Id"] = 3303698
	tSummerBattle_Package[3303708][1][3]["RewardItem"][2]["Attr"] = "0 1"

	-- 通用流光翅膀碎片+1天翅膀A/B/C/D	5%
	tSummerBattle_Package[3303708][1][4] = {}
	tSummerBattle_Package[3303708][1][4]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3303708][1][4]["ItemChance"] = 500
	tSummerBattle_Package[3303708][1][4]["RewardItem"] = {}
	tSummerBattle_Package[3303708][1][4]["RewardItem"][1] = {}
	tSummerBattle_Package[3303708][1][4]["RewardItem"][1]["Id"] = 3303704
	tSummerBattle_Package[3303708][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3303708][1][4]["RewardItem"][2] = {}
	tSummerBattle_Package[3303708][1][4]["RewardItem"][2]["Id"] = 3303731
	tSummerBattle_Package[3303708][1][4]["RewardItem"][2]["Attr"] = "0 1"

	-- 蝴蝶翅膀碎片+1天翅膀A/B/C/D	5%
	tSummerBattle_Package[3303708][1][5] = {}
	tSummerBattle_Package[3303708][1][5]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3303708][1][5]["ItemChance"] = 500
	tSummerBattle_Package[3303708][1][5]["RewardItem"] = {}
	tSummerBattle_Package[3303708][1][5]["RewardItem"][1] = {}
	tSummerBattle_Package[3303708][1][5]["RewardItem"][1]["Id"] = 3303705
	tSummerBattle_Package[3303708][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3303708][1][5]["RewardItem"][2] = {}
	tSummerBattle_Package[3303708][1][5]["RewardItem"][2]["Id"] = 3303731
	tSummerBattle_Package[3303708][1][5]["RewardItem"][2]["Attr"] = "0 1"

	-- 武器外套碎片+1天时效武器外套	20%
	tSummerBattle_Package[3303708][1][6] = {}
	tSummerBattle_Package[3303708][1][6]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3303708][1][6]["ItemChance"] = 2000
	tSummerBattle_Package[3303708][1][6]["RewardItem"] = {}
	tSummerBattle_Package[3303708][1][6]["RewardItem"][1] = {}
	tSummerBattle_Package[3303708][1][6]["RewardItem"][1]["Id"] = 3303701
	tSummerBattle_Package[3303708][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3303708][1][6]["RewardItem"][2] = {}
	tSummerBattle_Package[3303708][1][6]["RewardItem"][2]["Id"] = 3303721
	tSummerBattle_Package[3303708][1][6]["RewardItem"][2]["Attr"] = "0 1"

	-- 稀有材料大礼包
	tSummerBattle_Package[3303709] = {}
	tSummerBattle_Package[3303709]["IsRandom"] = true
	tSummerBattle_Package[3303709]["Index"] = 1
	
	tSummerBattle_Package[3303709][1] = {}
	tSummerBattle_Package[3303709][1]["ItemChanceSum"] = 10000
	tSummerBattle_Package[3303709][1]["DeleteItem"] = {}
	tSummerBattle_Package[3303709][1]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303709][1]["DeleteItem"][1]["Id"] = 3303709
	
	-- 时装洗赠道具碎片	5%
	tSummerBattle_Package[3303709][1][1] = {}
	tSummerBattle_Package[3303709][1][1]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3303709][1][1]["ItemChance"] = 500
	tSummerBattle_Package[3303709][1][1]["Log"] = "0,0,3303709,1,12000760,2,3303700,1"
	tSummerBattle_Package[3303709][1][1]["RewardItem"] = {}
	tSummerBattle_Package[3303709][1][1]["RewardItem"][1] = {}
	tSummerBattle_Package[3303709][1][1]["RewardItem"][1]["Id"] = 3303700
	tSummerBattle_Package[3303709][1][1]["RewardItem"][1]["Attr"] = "0 1"

	-- 时装光效道具碎片	1.00%
	tSummerBattle_Package[3303709][1][2] = {}
	tSummerBattle_Package[3303709][1][2]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3303709][1][2]["ItemChance"] = 100
	tSummerBattle_Package[3303709][1][2]["Log"] = "0,0,3303709,1,12000760,2,3303699,1"
	tSummerBattle_Package[3303709][1][2]["RewardItem"] = {}
	tSummerBattle_Package[3303709][1][2]["RewardItem"][1] = {}
	tSummerBattle_Package[3303709][1][2]["RewardItem"][1]["Id"] = 3303699
	tSummerBattle_Package[3303709][1][2]["RewardItem"][1]["Attr"] = "0 1"

	-- 百变霓虹魔术棒碎片	5.00%
	tSummerBattle_Package[3303709][1][3] = {}
	tSummerBattle_Package[3303709][1][3]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3303709][1][3]["ItemChance"] = 500
	tSummerBattle_Package[3303709][1][3]["Log"] = "0,0,3303709,1,12000760,2,3303706,1"
	tSummerBattle_Package[3303709][1][3]["RewardItem"] = {}
	tSummerBattle_Package[3303709][1][3]["RewardItem"][1] = {}
	tSummerBattle_Package[3303709][1][3]["RewardItem"][1]["Id"] = 3303706
	tSummerBattle_Package[3303709][1][3]["RewardItem"][1]["Attr"] = "0 1"

	-- 夏日翅膀外套洗赠液碎片	0.50%
	tSummerBattle_Package[3303709][1][4] = {}
	tSummerBattle_Package[3303709][1][4]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3303709][1][4]["ItemChance"] = 50
	tSummerBattle_Package[3303709][1][4]["Log"] = "0,0,3303709,1,12000760,2,3303707,1"
	tSummerBattle_Package[3303709][1][4]["RewardItem"] = {}
	tSummerBattle_Package[3303709][1][4]["RewardItem"][1] = {}
	tSummerBattle_Package[3303709][1][4]["RewardItem"][1]["Id"] = 3303707
	tSummerBattle_Package[3303709][1][4]["RewardItem"][1]["Attr"] = "0 1"

	-- 微光星陨石*5	24.5%
	tSummerBattle_Package[3303709][1][5] = {}
	tSummerBattle_Package[3303709][1][5]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3303709][1][5]["ItemChance"] = 2450
	tSummerBattle_Package[3303709][1][5]["Log"] = "0,0,3303709,1,12000760,2,3009000,5"
	tSummerBattle_Package[3303709][1][5]["RewardItem"] = {}
	tSummerBattle_Package[3303709][1][5]["RewardItem"][1] = {}
	tSummerBattle_Package[3303709][1][5]["RewardItem"][1]["Id"] = 3009000
	tSummerBattle_Package[3303709][1][5]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"

	-- 明亮星陨石	15%
	tSummerBattle_Package[3303709][1][6] = {}
	tSummerBattle_Package[3303709][1][6]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3303709][1][6]["ItemChance"] = 1500
	tSummerBattle_Package[3303709][1][6]["Log"] = "0,0,3303709,1,12000760,2,3009001,1"
	tSummerBattle_Package[3303709][1][6]["RewardItem"] = {}
	tSummerBattle_Package[3303709][1][6]["RewardItem"][1] = {}
	tSummerBattle_Package[3303709][1][6]["RewardItem"][1]["Id"] = 3009001
	tSummerBattle_Package[3303709][1][6]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"

	-- 明亮星陨石*2	10%
	tSummerBattle_Package[3303709][1][7] = {}
	tSummerBattle_Package[3303709][1][7]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3303709][1][7]["ItemChance"] = 1000
	tSummerBattle_Package[3303709][1][7]["Log"] = "0,0,3303709,1,12000760,2,3009001,2"
	tSummerBattle_Package[3303709][1][7]["RewardItem"] = {}
	tSummerBattle_Package[3303709][1][7]["RewardItem"][1] = {}
	tSummerBattle_Package[3303709][1][7]["RewardItem"][1]["Id"] = 3009001
	tSummerBattle_Package[3303709][1][7]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"

	-- 50气力值	29%
	tSummerBattle_Package[3303709][1][8] = {}
	tSummerBattle_Package[3303709][1][8]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3303709][1][8]["ItemChance"] = 2900
	tSummerBattle_Package[3303709][1][8]["Log"] = "0,0,3303709,1,12000760,2,12,50"
	tSummerBattle_Package[3303709][1][8]["RewardStrengthValue"] = {}
	tSummerBattle_Package[3303709][1][8]["RewardStrengthValue"]["Value"] = 50

	-- 100气力值	10%
	tSummerBattle_Package[3303709][1][9] = {}
	tSummerBattle_Package[3303709][1][9]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3303709][1][9]["ItemChance"] = 1000
	tSummerBattle_Package[3303709][1][9]["Log"] = "0,0,3303709,1,12000760,2,12,100"
	tSummerBattle_Package[3303709][1][9]["RewardStrengthValue"] = {}
	tSummerBattle_Package[3303709][1][9]["RewardStrengthValue"]["Value"] = 100

	-- 九天玄鸟豪华包
	tSummerBattle_Package[3303719] = {}
	tSummerBattle_Package[3303719]["LogId"] = 12000760
	tSummerBattle_Package[3303719]["DeleteItem"] = {}
	tSummerBattle_Package[3303719]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303719]["DeleteItem"][1]["Id"] = 3303719
	tSummerBattle_Package[3303719]["RewardItem"] = {}
	tSummerBattle_Package[3303719]["RewardItem"][1] = {}
	tSummerBattle_Package[3303719]["RewardItem"][1]["Id"] = 3300036
	tSummerBattle_Package[3303719]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3303719]["RewardItem"][2] = {}
	tSummerBattle_Package[3303719]["RewardItem"][2]["Id"] = 200575
	tSummerBattle_Package[3303719]["RewardItem"][2]["Attr"] = "0 1 3 10080 1 0 0 1"
	
	-- 1天沙滩武器豪华可选包
	tSummerBattle_Package[3303720] = {}
	-- 长武器外套
	tSummerBattle_Package[3303720][1] = {}
	tSummerBattle_Package[3303720][1]["LogId"] = 12000760
	tSummerBattle_Package[3303720][1]["DeleteItem"] = {}
	tSummerBattle_Package[3303720][1]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303720][1]["DeleteItem"][1]["Id"] = 3303720
	tSummerBattle_Package[3303720][1]["RewardItem"] = {}
	tSummerBattle_Package[3303720][1]["RewardItem"][1] = {}
	tSummerBattle_Package[3303720][1]["RewardItem"][1]["Id"] = 350119
	tSummerBattle_Package[3303720][1]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	-- 短武器外套
	tSummerBattle_Package[3303720][2] = {}
	tSummerBattle_Package[3303720][2]["LogId"] = 12000760
	tSummerBattle_Package[3303720][2]["DeleteItem"] = {}
	tSummerBattle_Package[3303720][2]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303720][2]["DeleteItem"][1]["Id"] = 3303720
	tSummerBattle_Package[3303720][2]["RewardItem"] = {}
	tSummerBattle_Package[3303720][2]["RewardItem"][1] = {}
	tSummerBattle_Package[3303720][2]["RewardItem"][1]["Id"] = 360217
	tSummerBattle_Package[3303720][2]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	-- 弓外套
	tSummerBattle_Package[3303720][3] = {}
	tSummerBattle_Package[3303720][3]["LogId"] = 12000760
	tSummerBattle_Package[3303720][3]["DeleteItem"] = {}
	tSummerBattle_Package[3303720][3]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303720][3]["DeleteItem"][1]["Id"] = 3303720
	tSummerBattle_Package[3303720][3]["RewardItem"] = {}
	tSummerBattle_Package[3303720][3]["RewardItem"][1] = {}
	tSummerBattle_Package[3303720][3]["RewardItem"][1]["Id"] = 370050
	tSummerBattle_Package[3303720][3]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	-- 盾外套
	tSummerBattle_Package[3303720][4] = {}
	tSummerBattle_Package[3303720][4]["LogId"] = 12000760
	tSummerBattle_Package[3303720][4]["DeleteItem"] = {}
	tSummerBattle_Package[3303720][4]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303720][4]["DeleteItem"][1]["Id"] = 3303720
	tSummerBattle_Package[3303720][4]["RewardItem"] = {}
	tSummerBattle_Package[3303720][4]["RewardItem"][1] = {}
	tSummerBattle_Package[3303720][4]["RewardItem"][1]["Id"] = 380056
	tSummerBattle_Package[3303720][4]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"

	-- 1天沙滩武器外套可选包
	tSummerBattle_Package[3303721] = {}
	-- 长武器外套
	tSummerBattle_Package[3303721][1] = {}
	tSummerBattle_Package[3303721][1]["LogId"] = 12000760
	tSummerBattle_Package[3303721][1]["DeleteItem"] = {}
	tSummerBattle_Package[3303721][1]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303721][1]["DeleteItem"][1]["Id"] = 3303721
	tSummerBattle_Package[3303721][1]["RewardItem"] = {}
	tSummerBattle_Package[3303721][1]["RewardItem"][1] = {}
	tSummerBattle_Package[3303721][1]["RewardItem"][1]["Id"] = 350118
	tSummerBattle_Package[3303721][1]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	-- 短武器外套
	tSummerBattle_Package[3303721][2] = {}
	tSummerBattle_Package[3303721][2]["LogId"] = 12000760
	tSummerBattle_Package[3303721][2]["DeleteItem"] = {}
	tSummerBattle_Package[3303721][2]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303721][2]["DeleteItem"][1]["Id"] = 3303721
	tSummerBattle_Package[3303721][2]["RewardItem"] = {}
	tSummerBattle_Package[3303721][2]["RewardItem"][1] = {}
	tSummerBattle_Package[3303721][2]["RewardItem"][1]["Id"] = 360216
	tSummerBattle_Package[3303721][2]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	-- 弓外套
	tSummerBattle_Package[3303721][3] = {}
	tSummerBattle_Package[3303721][3]["LogId"] = 12000760
	tSummerBattle_Package[3303721][3]["DeleteItem"] = {}
	tSummerBattle_Package[3303721][3]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303721][3]["DeleteItem"][1]["Id"] = 3303721
	tSummerBattle_Package[3303721][3]["RewardItem"] = {}
	tSummerBattle_Package[3303721][3]["RewardItem"][1] = {}
	tSummerBattle_Package[3303721][3]["RewardItem"][1]["Id"] = 370049
	tSummerBattle_Package[3303721][3]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	-- 盾外套
	tSummerBattle_Package[3303721][4] = {}
	tSummerBattle_Package[3303721][4]["LogId"] = 12000760
	tSummerBattle_Package[3303721][4]["DeleteItem"] = {}
	tSummerBattle_Package[3303721][4]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303721][4]["DeleteItem"][1]["Id"] = 3303721
	tSummerBattle_Package[3303721][4]["RewardItem"] = {}
	tSummerBattle_Package[3303721][4]["RewardItem"][1] = {}
	tSummerBattle_Package[3303721][4]["RewardItem"][1]["Id"] = 380055
	tSummerBattle_Package[3303721][4]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"

	-- 沙滩武器外套材料包
	tSummerBattle_Package[3303722] = {}
	tSummerBattle_Package[3303722]["LogId"] = 12000760
	tSummerBattle_Package[3303722]["DeleteItem"] = {}
	tSummerBattle_Package[3303722]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303722]["DeleteItem"][1]["Id"] = 3303722
	tSummerBattle_Package[3303722]["RewardItem"] = {}
	tSummerBattle_Package[3303722]["RewardItem"][1] = {}
	tSummerBattle_Package[3303722]["RewardItem"][1]["Id"] = 3303701
	tSummerBattle_Package[3303722]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3303722]["RewardItem"][2] = {}
	tSummerBattle_Package[3303722]["RewardItem"][2]["Id"] = 3303703
	tSummerBattle_Package[3303722]["RewardItem"][2]["Attr"] = "0 1"
	
	-- 1天沙滩武器外套礼包
	tSummerBattle_Package[3303723] = {}
	-- 长武器外套
	tSummerBattle_Package[3303723][1] = {}
	tSummerBattle_Package[3303723][1]["LogId"] = 12000760
	tSummerBattle_Package[3303723][1]["DeleteItem"] = {}
	tSummerBattle_Package[3303723][1]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303723][1]["DeleteItem"][1]["Id"] = 3303723
	tSummerBattle_Package[3303723][1]["RewardItem"] = {}
	tSummerBattle_Package[3303723][1]["RewardItem"][1] = {}
	tSummerBattle_Package[3303723][1]["RewardItem"][1]["Id"] = 350118
	tSummerBattle_Package[3303723][1]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tSummerBattle_Package[3303723][1]["RewardItem"][2] = {}
	tSummerBattle_Package[3303723][1]["RewardItem"][2]["Id"] = 3303701
	tSummerBattle_Package[3303723][1]["RewardItem"][2]["Attr"] = "0 1"
	-- 短武器外套
	tSummerBattle_Package[3303723][2] = {}
	tSummerBattle_Package[3303723][2]["LogId"] = 12000760
	tSummerBattle_Package[3303723][2]["DeleteItem"] = {}
	tSummerBattle_Package[3303723][2]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303723][2]["DeleteItem"][1]["Id"] = 3303723
	tSummerBattle_Package[3303723][2]["RewardItem"] = {}
	tSummerBattle_Package[3303723][2]["RewardItem"][1] = {}
	tSummerBattle_Package[3303723][2]["RewardItem"][1]["Id"] = 360216
	tSummerBattle_Package[3303723][2]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tSummerBattle_Package[3303723][2]["RewardItem"][2] = {}
	tSummerBattle_Package[3303723][2]["RewardItem"][2]["Id"] = 3303701
	tSummerBattle_Package[3303723][2]["RewardItem"][2]["Attr"] = "0 1"
	-- 弓外套
	tSummerBattle_Package[3303723][3] = {}
	tSummerBattle_Package[3303723][3]["LogId"] = 12000760
	tSummerBattle_Package[3303723][3]["DeleteItem"] = {}
	tSummerBattle_Package[3303723][3]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303723][3]["DeleteItem"][1]["Id"] = 3303723
	tSummerBattle_Package[3303723][3]["RewardItem"] = {}
	tSummerBattle_Package[3303723][3]["RewardItem"][1] = {}
	tSummerBattle_Package[3303723][3]["RewardItem"][1]["Id"] = 370049
	tSummerBattle_Package[3303723][3]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tSummerBattle_Package[3303723][3]["RewardItem"][2] = {}
	tSummerBattle_Package[3303723][3]["RewardItem"][2]["Id"] = 3303701
	tSummerBattle_Package[3303723][3]["RewardItem"][2]["Attr"] = "0 1"
	-- 盾外套
	tSummerBattle_Package[3303723][4] = {}
	tSummerBattle_Package[3303723][4]["LogId"] = 12000760
	tSummerBattle_Package[3303723][4]["DeleteItem"] = {}
	tSummerBattle_Package[3303723][4]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303723][4]["DeleteItem"][1]["Id"] = 3303723
	tSummerBattle_Package[3303723][4]["RewardItem"] = {}
	tSummerBattle_Package[3303723][4]["RewardItem"][1] = {}
	tSummerBattle_Package[3303723][4]["RewardItem"][1]["Id"] = 380055
	tSummerBattle_Package[3303723][4]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tSummerBattle_Package[3303723][4]["RewardItem"][2] = {}
	tSummerBattle_Package[3303723][4]["RewardItem"][2]["Id"] = 3303701
	tSummerBattle_Package[3303723][4]["RewardItem"][2]["Attr"] = "0 1"

	-- 1天沙滩武器外套豪华包
	tSummerBattle_Package[3303724] = {}
	-- 长武器外套
	tSummerBattle_Package[3303724][1] = {}
	tSummerBattle_Package[3303724][1]["LogId"] = 12000760
	tSummerBattle_Package[3303724][1]["DeleteItem"] = {}
	tSummerBattle_Package[3303724][1]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303724][1]["DeleteItem"][1]["Id"] = 3303724
	tSummerBattle_Package[3303724][1]["RewardItem"] = {}
	tSummerBattle_Package[3303724][1]["RewardItem"][1] = {}
	tSummerBattle_Package[3303724][1]["RewardItem"][1]["Id"] = 350119
	tSummerBattle_Package[3303724][1]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tSummerBattle_Package[3303724][1]["RewardItem"][2] = {}
	tSummerBattle_Package[3303724][1]["RewardItem"][2]["Id"] = 3303701
	tSummerBattle_Package[3303724][1]["RewardItem"][2]["Attr"] = "0 1"
	-- 短武器外套
	tSummerBattle_Package[3303724][2] = {}
	tSummerBattle_Package[3303724][2]["LogId"] = 12000760
	tSummerBattle_Package[3303724][2]["DeleteItem"] = {}
	tSummerBattle_Package[3303724][2]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303724][2]["DeleteItem"][1]["Id"] = 3303724
	tSummerBattle_Package[3303724][2]["RewardItem"] = {}
	tSummerBattle_Package[3303724][2]["RewardItem"][1] = {}
	tSummerBattle_Package[3303724][2]["RewardItem"][1]["Id"] = 360217
	tSummerBattle_Package[3303724][2]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tSummerBattle_Package[3303724][2]["RewardItem"][2] = {}
	tSummerBattle_Package[3303724][2]["RewardItem"][2]["Id"] = 3303701
	tSummerBattle_Package[3303724][2]["RewardItem"][2]["Attr"] = "0 1"
	-- 弓外套
	tSummerBattle_Package[3303724][3] = {}
	tSummerBattle_Package[3303724][3]["LogId"] = 12000760
	tSummerBattle_Package[3303724][3]["DeleteItem"] = {}
	tSummerBattle_Package[3303724][3]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303724][3]["DeleteItem"][1]["Id"] = 3303724
	tSummerBattle_Package[3303724][3]["RewardItem"] = {}
	tSummerBattle_Package[3303724][3]["RewardItem"][1] = {}
	tSummerBattle_Package[3303724][3]["RewardItem"][1]["Id"] = 370050
	tSummerBattle_Package[3303724][3]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tSummerBattle_Package[3303724][3]["RewardItem"][2] = {}
	tSummerBattle_Package[3303724][3]["RewardItem"][2]["Id"] = 3303701
	tSummerBattle_Package[3303724][3]["RewardItem"][2]["Attr"] = "0 1"
	-- 盾外套
	tSummerBattle_Package[3303724][4] = {}
	tSummerBattle_Package[3303724][4]["LogId"] = 12000760
	tSummerBattle_Package[3303724][4]["DeleteItem"] = {}
	tSummerBattle_Package[3303724][4]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303724][4]["DeleteItem"][1]["Id"] = 3303724
	tSummerBattle_Package[3303724][4]["RewardItem"] = {}
	tSummerBattle_Package[3303724][4]["RewardItem"][1] = {}
	tSummerBattle_Package[3303724][4]["RewardItem"][1]["Id"] = 380056
	tSummerBattle_Package[3303724][4]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tSummerBattle_Package[3303724][4]["RewardItem"][2] = {}
	tSummerBattle_Package[3303724][4]["RewardItem"][2]["Id"] = 3303701
	tSummerBattle_Package[3303724][4]["RewardItem"][2]["Attr"] = "0 1"

	-- 1天热力沙滩时装包
	tSummerBattle_Package[3303725] = {}
	tSummerBattle_Package[3303725]["LogId"] = 12000760
	tSummerBattle_Package[3303725]["DeleteItem"] = {}
	tSummerBattle_Package[3303725]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303725]["DeleteItem"][1]["Id"] = 3303725
	tSummerBattle_Package[3303725]["RewardItem"] = {}
	tSummerBattle_Package[3303725]["RewardItem"][1] = {}
	tSummerBattle_Package[3303725]["RewardItem"][1]["Id"] = 184345
	tSummerBattle_Package[3303725]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"

	-- 1天盛夏海风时装包
	tSummerBattle_Package[3303726] = {}
	tSummerBattle_Package[3303726]["LogId"] = 12000760
	tSummerBattle_Package[3303726]["DeleteItem"] = {}
	tSummerBattle_Package[3303726]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303726]["DeleteItem"][1]["Id"] = 3303726
	tSummerBattle_Package[3303726]["RewardItem"] = {}
	tSummerBattle_Package[3303726]["RewardItem"][1] = {}
	tSummerBattle_Package[3303726]["RewardItem"][1]["Id"] = 192495
	tSummerBattle_Package[3303726]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	
	-- 1天夏威夷阳光时装包
	tSummerBattle_Package[3303727] = {}
	tSummerBattle_Package[3303727]["LogId"] = 12000760
	tSummerBattle_Package[3303727]["DeleteItem"] = {}
	tSummerBattle_Package[3303727]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303727]["DeleteItem"][1]["Id"] = 3303727
	tSummerBattle_Package[3303727]["RewardItem"] = {}
	tSummerBattle_Package[3303727]["RewardItem"][1] = {}
	tSummerBattle_Package[3303727]["RewardItem"][1]["Id"] = 189665
	tSummerBattle_Package[3303727]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	
	-- 外套碎片1*5
	tSummerBattle_Package[3303728] = {}
	tSummerBattle_Package[3303728]["LogId"] = 12000760
	tSummerBattle_Package[3303728]["DeleteItem"] = {}
	tSummerBattle_Package[3303728]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303728]["DeleteItem"][1]["Id"] = 3303728
	tSummerBattle_Package[3303728]["RewardItem"] = {}
	tSummerBattle_Package[3303728]["RewardItem"][1] = {}
	tSummerBattle_Package[3303728]["RewardItem"][1]["Id"] = 3303696
	tSummerBattle_Package[3303728]["RewardItem"][1]["Attr"] = "0 5"
	
	-- 外套碎片2*5
	tSummerBattle_Package[3303729] = {}
	tSummerBattle_Package[3303729]["LogId"] = 12000760
	tSummerBattle_Package[3303729]["DeleteItem"] = {}
	tSummerBattle_Package[3303729]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303729]["DeleteItem"][1]["Id"] = 3303729
	tSummerBattle_Package[3303729]["RewardItem"] = {}
	tSummerBattle_Package[3303729]["RewardItem"][1] = {}
	tSummerBattle_Package[3303729]["RewardItem"][1]["Id"] = 3303697
	tSummerBattle_Package[3303729]["RewardItem"][1]["Attr"] = "0 5"
	
	-- 外套碎片3*5
	tSummerBattle_Package[3303730] = {}
	tSummerBattle_Package[3303730]["LogId"] = 12000760
	tSummerBattle_Package[3303730]["DeleteItem"] = {}
	tSummerBattle_Package[3303730]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303730]["DeleteItem"][1]["Id"] = 3303730
	tSummerBattle_Package[3303730]["RewardItem"] = {}
	tSummerBattle_Package[3303730]["RewardItem"][1] = {}
	tSummerBattle_Package[3303730]["RewardItem"][1]["Id"] = 3303698
	tSummerBattle_Package[3303730]["RewardItem"][1]["Attr"] = "0 5"
	
	-- 1天夏日翅膀外套时尚包
	-- 2%几率出E，24.5%几率出各个颜色翅膀		
	tSummerBattle_Package[3303731] = {}
	tSummerBattle_Package[3303731]["IsRandom"] = true
	tSummerBattle_Package[3303731]["Index"] = 1
	
	tSummerBattle_Package[3303731][1] = {}
	tSummerBattle_Package[3303731][1]["ItemChanceSum"] = 10000
	tSummerBattle_Package[3303731][1]["DeleteItem"] = {}
	tSummerBattle_Package[3303731][1]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303731][1]["DeleteItem"][1]["Id"] = 3303731

	tSummerBattle_Package[3303731][1][1] = {}
	tSummerBattle_Package[3303731][1][1]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3303731][1][1]["ItemChance"] = 2450
	tSummerBattle_Package[3303731][1][1]["Log"] = "0,0,3303731,1,12000760,2,6013,1"
	tSummerBattle_Package[3303731][1][1]["RewardWing"] = {}
	tSummerBattle_Package[3303731][1][1]["RewardWing"]["TitleType"] = 6013
	tSummerBattle_Package[3303731][1][1]["RewardWing"]["TitleId"] = 6013
	tSummerBattle_Package[3303731][1][1]["RewardWing"]["SaveTime"] = 1440

	tSummerBattle_Package[3303731][1][2] = {}
	tSummerBattle_Package[3303731][1][2]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3303731][1][2]["ItemChance"] = 2450
	tSummerBattle_Package[3303731][1][2]["Log"] = "0,0,3303731,1,12000760,2,6014,1"
	tSummerBattle_Package[3303731][1][2]["RewardWing"] = {}
	tSummerBattle_Package[3303731][1][2]["RewardWing"]["TitleType"] = 6014
	tSummerBattle_Package[3303731][1][2]["RewardWing"]["TitleId"] = 6014
	tSummerBattle_Package[3303731][1][2]["RewardWing"]["SaveTime"] = 1440

	tSummerBattle_Package[3303731][1][3] = {}
	tSummerBattle_Package[3303731][1][3]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3303731][1][3]["ItemChance"] = 2450
	tSummerBattle_Package[3303731][1][3]["Log"] = "0,0,3303731,1,12000760,2,6015,1"
	tSummerBattle_Package[3303731][1][3]["RewardWing"] = {}
	tSummerBattle_Package[3303731][1][3]["RewardWing"]["TitleType"] = 6015
	tSummerBattle_Package[3303731][1][3]["RewardWing"]["TitleId"] = 6015
	tSummerBattle_Package[3303731][1][3]["RewardWing"]["SaveTime"] = 1440

	tSummerBattle_Package[3303731][1][4] = {}
	tSummerBattle_Package[3303731][1][4]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3303731][1][4]["ItemChance"] = 2450
	tSummerBattle_Package[3303731][1][4]["Log"] = "0,0,3303731,1,12000760,2,6016,1"
	tSummerBattle_Package[3303731][1][4]["RewardWing"] = {}
	tSummerBattle_Package[3303731][1][4]["RewardWing"]["TitleType"] = 6016
	tSummerBattle_Package[3303731][1][4]["RewardWing"]["TitleId"] = 6016
	tSummerBattle_Package[3303731][1][4]["RewardWing"]["SaveTime"] = 1440

	tSummerBattle_Package[3303731][1][5] = {}
	tSummerBattle_Package[3303731][1][5]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3303731][1][5]["ItemChance"] = 200
	tSummerBattle_Package[3303731][1][5]["Log"] = "0,0,3303731,1,12000760,2,6016,1"
	tSummerBattle_Package[3303731][1][5]["RewardWing"] = {}
	tSummerBattle_Package[3303731][1][5]["RewardWing"]["TitleType"] = 6016
	tSummerBattle_Package[3303731][1][5]["RewardWing"]["TitleId"] = 6016
	tSummerBattle_Package[3303731][1][5]["RewardWing"]["SaveTime"] = 1440

	-- 3303732,'1天【A】霓虹翅时尚包'
	tSummerBattle_Package[3303732] = {}
	tSummerBattle_Package[3303732]["LogId"] = 12000760
	tSummerBattle_Package[3303732]["DeleteItem"] = {}
	tSummerBattle_Package[3303732]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303732]["DeleteItem"][1]["Id"] = 3303732
	tSummerBattle_Package[3303732]["RewardItem"] = {}
	tSummerBattle_Package[3303732]["RewardItem"][1] = {}
	tSummerBattle_Package[3303732]["RewardItem"][1]["Id"] = 3303704
	tSummerBattle_Package[3303732]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3303732]["RewardWing"] = {}
	tSummerBattle_Package[3303732]["RewardWing"]["TitleType"] = 6013
	tSummerBattle_Package[3303732]["RewardWing"]["TitleId"] = 6013
	tSummerBattle_Package[3303732]["RewardWing"]["SaveTime"] = 1440
	tSummerBattle_Package[3303732]["Talk"] = tSummerBattle_Text[3303732]["Talk"]

	-- 3303733,'1天【B】霓虹翅时尚包'
	tSummerBattle_Package[3303733] = {}
	tSummerBattle_Package[3303733]["LogId"] = 12000760
	tSummerBattle_Package[3303733]["DeleteItem"] = {}
	tSummerBattle_Package[3303733]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303733]["DeleteItem"][1]["Id"] = 3303733
	tSummerBattle_Package[3303733]["RewardItem"] = {}
	tSummerBattle_Package[3303733]["RewardItem"][1] = {}
	tSummerBattle_Package[3303733]["RewardItem"][1]["Id"] = 3303704
	tSummerBattle_Package[3303733]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3303733]["RewardWing"] = {}
	tSummerBattle_Package[3303733]["RewardWing"]["TitleType"] = 6014
	tSummerBattle_Package[3303733]["RewardWing"]["TitleId"] = 6014
	tSummerBattle_Package[3303733]["RewardWing"]["SaveTime"] = 1440
	tSummerBattle_Package[3303733]["Talk"] = tSummerBattle_Text[3303733]["Talk"]

	-- 3303734,'1天【C】霓虹翅时尚包'
	tSummerBattle_Package[3303734] = {}
	tSummerBattle_Package[3303734]["LogId"] = 12000760
	tSummerBattle_Package[3303734]["DeleteItem"] = {}
	tSummerBattle_Package[3303734]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303734]["DeleteItem"][1]["Id"] = 3303734
	tSummerBattle_Package[3303734]["RewardItem"] = {}
	tSummerBattle_Package[3303734]["RewardItem"][1] = {}
	tSummerBattle_Package[3303734]["RewardItem"][1]["Id"] = 3303704
	tSummerBattle_Package[3303734]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3303734]["RewardWing"] = {}
	tSummerBattle_Package[3303734]["RewardWing"]["TitleType"] = 6015
	tSummerBattle_Package[3303734]["RewardWing"]["TitleId"] = 6015
	tSummerBattle_Package[3303734]["RewardWing"]["SaveTime"] = 1440
	tSummerBattle_Package[3303734]["Talk"] = tSummerBattle_Text[3303734]["Talk"]

	-- 3303735,'1天【D】霓虹翅时尚包'
	tSummerBattle_Package[3303735] = {}
	tSummerBattle_Package[3303735]["LogId"] = 12000760
	tSummerBattle_Package[3303735]["DeleteItem"] = {}
	tSummerBattle_Package[3303735]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303735]["DeleteItem"][1]["Id"] = 3303735
	tSummerBattle_Package[3303735]["RewardItem"] = {}
	tSummerBattle_Package[3303735]["RewardItem"][1] = {}
	tSummerBattle_Package[3303735]["RewardItem"][1]["Id"] = 3303704
	tSummerBattle_Package[3303735]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3303735]["RewardWing"] = {}
	tSummerBattle_Package[3303735]["RewardWing"]["TitleType"] = 6016
	tSummerBattle_Package[3303735]["RewardWing"]["TitleId"] = 6016
	tSummerBattle_Package[3303735]["RewardWing"]["SaveTime"] = 1440
	tSummerBattle_Package[3303735]["Talk"] = tSummerBattle_Text[3303735]["Talk"]

	-- 3303736 1天【A】霓虹翅典藏包
	tSummerBattle_Package[3303736] = {}
	tSummerBattle_Package[3303736]["LogId"] = 12000760
	tSummerBattle_Package[3303736]["DeleteItem"] = {}
	tSummerBattle_Package[3303736]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303736]["DeleteItem"][1]["Id"] = 3303736
	tSummerBattle_Package[3303736]["RewardItem"] = {}
	tSummerBattle_Package[3303736]["RewardItem"][1] = {}
	tSummerBattle_Package[3303736]["RewardItem"][1]["Id"] = 3303704
	tSummerBattle_Package[3303736]["RewardItem"][1]["Attr"] = "0 2"
	tSummerBattle_Package[3303736]["RewardWing"] = {}
	tSummerBattle_Package[3303736]["RewardWing"]["TitleType"] = 6013
	tSummerBattle_Package[3303736]["RewardWing"]["TitleId"] = 6013
	tSummerBattle_Package[3303736]["RewardWing"]["SaveTime"] = 1440
	tSummerBattle_Package[3303736]["Talk"] = tSummerBattle_Text[3303736]["Talk"]

	-- 3303737 1天【B】霓虹翅典藏包
	tSummerBattle_Package[3303737] = {}
	tSummerBattle_Package[3303737]["LogId"] = 12000760
	tSummerBattle_Package[3303737]["DeleteItem"] = {}
	tSummerBattle_Package[3303737]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303737]["DeleteItem"][1]["Id"] = 3303737
	tSummerBattle_Package[3303737]["RewardItem"] = {}
	tSummerBattle_Package[3303737]["RewardItem"][1] = {}
	tSummerBattle_Package[3303737]["RewardItem"][1]["Id"] = 3303704
	tSummerBattle_Package[3303737]["RewardItem"][1]["Attr"] = "0 2"
	tSummerBattle_Package[3303737]["RewardWing"] = {}
	tSummerBattle_Package[3303737]["RewardWing"]["TitleType"] = 6014
	tSummerBattle_Package[3303737]["RewardWing"]["TitleId"] = 6014
	tSummerBattle_Package[3303737]["RewardWing"]["SaveTime"] = 1440
	tSummerBattle_Package[3303737]["Talk"] = tSummerBattle_Text[3303737]["Talk"]

	-- 3303738 1天【C】霓虹翅典藏包
	tSummerBattle_Package[3303738] = {}
	tSummerBattle_Package[3303738]["LogId"] = 12000760
	tSummerBattle_Package[3303738]["DeleteItem"] = {}
	tSummerBattle_Package[3303738]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303738]["DeleteItem"][1]["Id"] = 3303738
	tSummerBattle_Package[3303738]["RewardItem"] = {}
	tSummerBattle_Package[3303738]["RewardItem"][1] = {}
	tSummerBattle_Package[3303738]["RewardItem"][1]["Id"] = 3303704
	tSummerBattle_Package[3303738]["RewardItem"][1]["Attr"] = "0 2"
	tSummerBattle_Package[3303738]["RewardWing"] = {}
	tSummerBattle_Package[3303738]["RewardWing"]["TitleType"] = 6015
	tSummerBattle_Package[3303738]["RewardWing"]["TitleId"] = 6015
	tSummerBattle_Package[3303738]["RewardWing"]["SaveTime"] = 1440
	tSummerBattle_Package[3303738]["Talk"] = tSummerBattle_Text[3303738]["Talk"]

	-- 3303739 1天【D】霓虹翅典藏包
	tSummerBattle_Package[3303739] = {}
	tSummerBattle_Package[3303739]["LogId"] = 12000760
	tSummerBattle_Package[3303739]["DeleteItem"] = {}
	tSummerBattle_Package[3303739]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303739]["DeleteItem"][1]["Id"] = 3303739
	tSummerBattle_Package[3303739]["RewardItem"] = {}
	tSummerBattle_Package[3303739]["RewardItem"][1] = {}
	tSummerBattle_Package[3303739]["RewardItem"][1]["Id"] = 3303704
	tSummerBattle_Package[3303739]["RewardItem"][1]["Attr"] = "0 2"
	tSummerBattle_Package[3303739]["RewardWing"] = {}
	tSummerBattle_Package[3303739]["RewardWing"]["TitleType"] = 6016
	tSummerBattle_Package[3303739]["RewardWing"]["TitleId"] = 6016
	tSummerBattle_Package[3303739]["RewardWing"]["SaveTime"] = 1440
	tSummerBattle_Package[3303739]["Talk"] = tSummerBattle_Text[3303739]["Talk"]

	-- 1天海妖之歌典藏包
	tSummerBattle_Package[3303740] = {}
	tSummerBattle_Package[3303740]["LogId"] = 12000760
	tSummerBattle_Package[3303740]["DeleteItem"] = {}
	tSummerBattle_Package[3303740]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303740]["DeleteItem"][1]["Id"] = 3303740
	tSummerBattle_Package[3303740]["RewardItem"] = {}
	tSummerBattle_Package[3303740]["RewardItem"][1] = {}
	tSummerBattle_Package[3303740]["RewardItem"][1]["Id"] = 3303705
	tSummerBattle_Package[3303740]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3303740]["RewardWing"] = {}
	tSummerBattle_Package[3303740]["RewardWing"]["TitleType"] = 6017
	tSummerBattle_Package[3303740]["RewardWing"]["TitleId"] = 6017
	tSummerBattle_Package[3303740]["RewardWing"]["SaveTime"] = 1440
	tSummerBattle_Package[3303740]["Talk"] = tSummerBattle_Text[3303740]["Talk"]

	-- 1天夏日翅膀外套典藏包
	tSummerBattle_Package[3303741] = {}
	tSummerBattle_Package[3303741]["LogId"] = 12000760
	tSummerBattle_Package[3303741]["DeleteItem"] = {}
	tSummerBattle_Package[3303741]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303741]["DeleteItem"][1]["Id"] = 3303741
	tSummerBattle_Package[3303741]["RewardItem"] = {}
	tSummerBattle_Package[3303741]["RewardItem"][1] = {}
	tSummerBattle_Package[3303741]["RewardItem"][1]["Id"] = 3303731
	tSummerBattle_Package[3303741]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3303741]["RewardItem"][2] = {}
	tSummerBattle_Package[3303741]["RewardItem"][2]["Id"] = 3303704
	tSummerBattle_Package[3303741]["RewardItem"][2]["Attr"] = "0 1"
	
	-- 翅膀E碎片*2
	tSummerBattle_Package[3303742] = {}
	tSummerBattle_Package[3303742]["LogId"] = 12000760
	tSummerBattle_Package[3303742]["DeleteItem"] = {}
	tSummerBattle_Package[3303742]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303742]["DeleteItem"][1]["Id"] = 3303742
	tSummerBattle_Package[3303742]["RewardItem"] = {}
	tSummerBattle_Package[3303742]["RewardItem"][1] = {}
	tSummerBattle_Package[3303742]["RewardItem"][1]["Id"] = 3303705
	tSummerBattle_Package[3303742]["RewardItem"][1]["Attr"] = "0 2"
	
	-- 3303743 普通兑换券*10
	tSummerBattle_Package[3303743] = {}
	tSummerBattle_Package[3303743]["LogId"] = 12000760
	tSummerBattle_Package[3303743]["LogStep"] = "1[3]"
	tSummerBattle_Package[3303743]["DeleteItem"] = {}
	tSummerBattle_Package[3303743]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303743]["DeleteItem"][1]["Id"] = 3303743
	tSummerBattle_Package[3303743]["RewardItem"] = {}
	tSummerBattle_Package[3303743]["RewardItem"][1] = {}
	tSummerBattle_Package[3303743]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Package[3303743]["RewardItem"][1]["Attr"] = "0 10"
	
	-- 3303744 普通兑换券*30
	tSummerBattle_Package[3303744] = {}
	tSummerBattle_Package[3303744]["LogId"] = 12000760
	tSummerBattle_Package[3303744]["LogStep"] = "1[3]"
	tSummerBattle_Package[3303744]["DeleteItem"] = {}
	tSummerBattle_Package[3303744]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303744]["DeleteItem"][1]["Id"] = 3303744
	tSummerBattle_Package[3303744]["RewardItem"] = {}
	tSummerBattle_Package[3303744]["RewardItem"][1] = {}
	tSummerBattle_Package[3303744]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Package[3303744]["RewardItem"][1]["Attr"] = "0 30"
	
	-- 3303745 普通兑换券*50
	tSummerBattle_Package[3303745] = {}
	tSummerBattle_Package[3303745]["LogId"] = 12000760
	tSummerBattle_Package[3303745]["LogStep"] = "1[3]"
	tSummerBattle_Package[3303745]["DeleteItem"] = {}
	tSummerBattle_Package[3303745]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303745]["DeleteItem"][1]["Id"] = 3303745
	tSummerBattle_Package[3303745]["RewardItem"] = {}
	tSummerBattle_Package[3303745]["RewardItem"][1] = {}
	tSummerBattle_Package[3303745]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Package[3303745]["RewardItem"][1]["Attr"] = "0 50"
	         
	-- 3303746 普通兑换券*150
	tSummerBattle_Package[3303746] = {}
	tSummerBattle_Package[3303746]["LogId"] = 12000760
	tSummerBattle_Package[3303746]["LogStep"] = "1[3]"
	tSummerBattle_Package[3303746]["DeleteItem"] = {}
	tSummerBattle_Package[3303746]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303746]["DeleteItem"][1]["Id"] = 3303746
	tSummerBattle_Package[3303746]["RewardItem"] = {}
	tSummerBattle_Package[3303746]["RewardItem"][1] = {}
	tSummerBattle_Package[3303746]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Package[3303746]["RewardItem"][1]["Attr"] = "0 150"
	           
	-- 3303747 普通兑换券*180
	tSummerBattle_Package[3303747] = {}
	tSummerBattle_Package[3303747]["LogId"] = 12000760
	tSummerBattle_Package[3303747]["LogStep"] = "1[3]"
	tSummerBattle_Package[3303747]["DeleteItem"] = {}
	tSummerBattle_Package[3303747]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303747]["DeleteItem"][1]["Id"] = 3303747
	tSummerBattle_Package[3303747]["RewardItem"] = {}
	tSummerBattle_Package[3303747]["RewardItem"][1] = {}
	tSummerBattle_Package[3303747]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Package[3303747]["RewardItem"][1]["Attr"] = "0 180"
	          
	-- 3303748 普通兑换券*200
	tSummerBattle_Package[3303748] = {}
	tSummerBattle_Package[3303748]["LogId"] = 12000760
	tSummerBattle_Package[3303748]["LogStep"] = "1[3]"
	tSummerBattle_Package[3303748]["DeleteItem"] = {}
	tSummerBattle_Package[3303748]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303748]["DeleteItem"][1]["Id"] = 3303748
	tSummerBattle_Package[3303748]["RewardItem"] = {}
	tSummerBattle_Package[3303748]["RewardItem"][1] = {}
	tSummerBattle_Package[3303748]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Package[3303748]["RewardItem"][1]["Attr"] = "0 200"
	           
	-- 3303749 普通兑换券*300
	tSummerBattle_Package[3303749] = {}
	tSummerBattle_Package[3303749]["LogId"] = 12000760
	tSummerBattle_Package[3303749]["LogStep"] = "1[3]"
	tSummerBattle_Package[3303749]["DeleteItem"] = {}
	tSummerBattle_Package[3303749]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303749]["DeleteItem"][1]["Id"] = 3303749
	tSummerBattle_Package[3303749]["RewardItem"] = {}
	tSummerBattle_Package[3303749]["RewardItem"][1] = {}
	tSummerBattle_Package[3303749]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Package[3303749]["RewardItem"][1]["Attr"] = "0 300"
	           
	-- 3303750 普通兑换券*500
	tSummerBattle_Package[3303750] = {}
	tSummerBattle_Package[3303750]["LogId"] = 12000760
	tSummerBattle_Package[3303750]["LogStep"] = "1[3]"
	tSummerBattle_Package[3303750]["DeleteItem"] = {}
	tSummerBattle_Package[3303750]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303750]["DeleteItem"][1]["Id"] = 3303750
	tSummerBattle_Package[3303750]["RewardItem"] = {}
	tSummerBattle_Package[3303750]["RewardItem"][1] = {}
	tSummerBattle_Package[3303750]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Package[3303750]["RewardItem"][1]["Attr"] = "0 500"
	           
	-- 3303751 普通兑换券*600
	tSummerBattle_Package[3303751] = {}
	tSummerBattle_Package[3303751]["LogId"] = 12000760
	tSummerBattle_Package[3303751]["LogStep"] = "1[3]"
	tSummerBattle_Package[3303751]["DeleteItem"] = {}
	tSummerBattle_Package[3303751]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303751]["DeleteItem"][1]["Id"] = 3303751
	tSummerBattle_Package[3303751]["RewardItem"] = {}
	tSummerBattle_Package[3303751]["RewardItem"][1] = {}
	tSummerBattle_Package[3303751]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Package[3303751]["RewardItem"][1]["Attr"] = "0 600"
	           
	-- 3303752 普通兑换券*1000
	tSummerBattle_Package[3303752] = {}
	tSummerBattle_Package[3303752]["LogId"] = 12000760
	tSummerBattle_Package[3303752]["LogStep"] = "1[3]"
	tSummerBattle_Package[3303752]["DeleteItem"] = {}
	tSummerBattle_Package[3303752]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303752]["DeleteItem"][1]["Id"] = 3303752
	tSummerBattle_Package[3303752]["RewardItem"] = {}
	tSummerBattle_Package[3303752]["RewardItem"][1] = {}
	tSummerBattle_Package[3303752]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Package[3303752]["RewardItem"][1]["Attr"] = "0 1000"
	           
	-- 3303753 普通兑换券*2500
	tSummerBattle_Package[3303753] = {}
	tSummerBattle_Package[3303753]["LogId"] = 12000760
	tSummerBattle_Package[3303753]["LogStep"] = "1[3]"
	tSummerBattle_Package[3303753]["DeleteItem"] = {}
	tSummerBattle_Package[3303753]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303753]["DeleteItem"][1]["Id"] = 3303753
	tSummerBattle_Package[3303753]["RewardItem"] = {}
	tSummerBattle_Package[3303753]["RewardItem"][1] = {}
	tSummerBattle_Package[3303753]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Package[3303753]["RewardItem"][1]["Attr"] = "0 2500"
	           
	-- 3303754 普通兑换券*3000
	tSummerBattle_Package[3303754] = {}
	tSummerBattle_Package[3303754]["LogId"] = 12000760
	tSummerBattle_Package[3303754]["LogStep"] = "1[3]"
	tSummerBattle_Package[3303754]["DeleteItem"] = {}
	tSummerBattle_Package[3303754]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303754]["DeleteItem"][1]["Id"] = 3303754
	tSummerBattle_Package[3303754]["RewardItem"] = {}
	tSummerBattle_Package[3303754]["RewardItem"][1] = {}
	tSummerBattle_Package[3303754]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Package[3303754]["RewardItem"][1]["Attr"] = "0 3000"
	           
	-- 3303755 普通兑换券*5000
	tSummerBattle_Package[3303755] = {}
	tSummerBattle_Package[3303755]["LogId"] = 12000760
	tSummerBattle_Package[3303755]["LogStep"] = "1[3]"
	tSummerBattle_Package[3303755]["DeleteItem"] = {}
	tSummerBattle_Package[3303755]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303755]["DeleteItem"][1]["Id"] = 3303755
	tSummerBattle_Package[3303755]["RewardItem"] = {}
	tSummerBattle_Package[3303755]["RewardItem"][1] = {}
	tSummerBattle_Package[3303755]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Package[3303755]["RewardItem"][1]["Attr"] = "0 5000"
	           
	-- 3303756 普通兑换券*8000
	tSummerBattle_Package[3303756] = {}
	tSummerBattle_Package[3303756]["LogId"] = 12000760
	tSummerBattle_Package[3303756]["LogStep"] = "1[3]"
	tSummerBattle_Package[3303756]["DeleteItem"] = {}
	tSummerBattle_Package[3303756]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303756]["DeleteItem"][1]["Id"] = 3303756
	tSummerBattle_Package[3303756]["RewardItem"] = {}
	tSummerBattle_Package[3303756]["RewardItem"][1] = {}
	tSummerBattle_Package[3303756]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Package[3303756]["RewardItem"][1]["Attr"] = "0 8000"
	           
	-- 3303757 普通兑换券*10000
	tSummerBattle_Package[3303757] = {}
	tSummerBattle_Package[3303757]["LogId"] = 12000760
	tSummerBattle_Package[3303757]["LogStep"] = "1[3]"
	tSummerBattle_Package[3303757]["DeleteItem"] = {}
	tSummerBattle_Package[3303757]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303757]["DeleteItem"][1]["Id"] = 3303757
	tSummerBattle_Package[3303757]["RewardItem"] = {}
	tSummerBattle_Package[3303757]["RewardItem"][1] = {}
	tSummerBattle_Package[3303757]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Package[3303757]["RewardItem"][1]["Attr"] = "0 10000"
	          
	-- 3303758 普通兑换券*990
	tSummerBattle_Package[3303758] = {}
	tSummerBattle_Package[3303758]["LogId"] = 12000760
	tSummerBattle_Package[3303758]["LogStep"] = "1[3]"
	tSummerBattle_Package[3303758]["DeleteItem"] = {}
	tSummerBattle_Package[3303758]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303758]["DeleteItem"][1]["Id"] = 3303758
	tSummerBattle_Package[3303758]["RewardItem"] = {}
	tSummerBattle_Package[3303758]["RewardItem"][1] = {}
	tSummerBattle_Package[3303758]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Package[3303758]["RewardItem"][1]["Attr"] = "0 990"
	
	-- 3303860 100张夏日外套材料券
	tSummerBattle_Package[3303860] = {}
	tSummerBattle_Package[3303860]["LogId"] = 12000760
	tSummerBattle_Package[3303860]["LogStep"] = "1[3]"
	tSummerBattle_Package[3303860]["DeleteItem"] = {}
	tSummerBattle_Package[3303860]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303860]["DeleteItem"][1]["Id"] = 3303860
	tSummerBattle_Package[3303860]["RewardItem"] = {}
	tSummerBattle_Package[3303860]["RewardItem"][1] = {}
	tSummerBattle_Package[3303860]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Package[3303860]["RewardItem"][1]["Attr"] = "0 100"
	
	-- 梦幻泡泡液
	tSummerBattle_Package[3303759] = {}
	tSummerBattle_Package[3303759]["WashId"] = 189665
	tSummerBattle_Package[3303759]["UseNum"] = 1
	tSummerBattle_Package[3303759]["UseMaxNum"] = 6
	tSummerBattle_Package[3303759]["StartNum"] = 10000
	-- 泳装魅力值在3000分以下时使用单个的概率
	tSummerBattle_Package[3303759]["NewStartNum"] = 3000
	tSummerBattle_Package[3303759]["EndNum"] = 60000
	tSummerBattle_Package[3303759]["LogId"] = 12000760
	tSummerBattle_Package[3303759]["RewardItem"] = {}
	tSummerBattle_Package[3303759]["RewardItem"][1] = {}
	tSummerBattle_Package[3303759]["RewardItem"][1]["Id"] = 189675
	tSummerBattle_Package[3303759]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	
	-- 3303760	泳装外套洗赠液
	tSummerBattle_Package[3303760] = {}
	-- 盛夏海风（赠）洗赠：
	tSummerBattle_Package[3303760][1] = {}
	tSummerBattle_Package[3303760][1]["WashId"] = 192495
	tSummerBattle_Package[3303760][1]["Option"] = 1
	tSummerBattle_Package[3303760][1]["UseNum"] = 1
	tSummerBattle_Package[3303760][1]["LogId"] = 12000760
	tSummerBattle_Package[3303760][1]["RewardItem"] = {}
	tSummerBattle_Package[3303760][1]["RewardItem"][1] = {}
	tSummerBattle_Package[3303760][1]["RewardItem"][1]["Id"] = 192495
	tSummerBattle_Package[3303760][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	-- 热力沙滩（赠）洗赠：
	tSummerBattle_Package[3303760][2] = {}
	tSummerBattle_Package[3303760][2]["WashId"] = 184345
	tSummerBattle_Package[3303760][2]["Option"] = 2
	tSummerBattle_Package[3303760][2]["UseNum"] = 1
	tSummerBattle_Package[3303760][2]["LogId"] = 12000760
	tSummerBattle_Package[3303760][2]["RewardItem"] = {}
	tSummerBattle_Package[3303760][2]["RewardItem"][1] = {}
	tSummerBattle_Package[3303760][2]["RewardItem"][1]["Id"] = 184345
	tSummerBattle_Package[3303760][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	-- 夏威夷阳光（赠）洗赠：
	tSummerBattle_Package[3303760][3] = {}
	tSummerBattle_Package[3303760][3]["Confirm"] = true
	tSummerBattle_Package[3303760][3]["WashId"] = 189665
	tSummerBattle_Package[3303760][3]["Option"] = 3
	tSummerBattle_Package[3303760][3]["UseNum"] = 1
	tSummerBattle_Package[3303760][3]["UseMaxNum"] = 6
	tSummerBattle_Package[3303760][3]["StartNum"] = 10000
	tSummerBattle_Package[3303760][3]["EndNum"] = 60000
	tSummerBattle_Package[3303760][3]["LogId"] = 12000760
	tSummerBattle_Package[3303760][3]["RewardItem"] = {}
	tSummerBattle_Package[3303760][3]["RewardItem"][1] = {}
	tSummerBattle_Package[3303760][3]["RewardItem"][1]["Id"] = 189665
	tSummerBattle_Package[3303760][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	
	-- 3303762	沙滩武器升级工具
	tSummerBattle_Package[3303762] = {}
	tSummerBattle_Package[3303762]["LogId"] = 12000760
	tSummerBattle_Package[3303762]["DeleteItem"] = {}
	tSummerBattle_Package[3303762]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303762]["DeleteItem"][1]["Id"] = 3303762
	tSummerBattle_Package[3303762]["DeleteItem"][1]["NoItem"] = tSummerBattle_Text[3303762]["NoItem"][3303762]
	tSummerBattle_Package[3303762]["DeleteItem"][2] = {}
	tSummerBattle_Package[3303762]["DeleteItem"][2]["Id"] = 3303767
	tSummerBattle_Package[3303762]["DeleteItem"][2]["NoItem"] = tSummerBattle_Text[3303762]["NoItem"][3303767]
	tSummerBattle_Package[3303762]["RewardItem"] = {}
	tSummerBattle_Package[3303762]["RewardItem"][1] = {}
	tSummerBattle_Package[3303762]["RewardItem"][1]["Id"] = 3303789
	tSummerBattle_Package[3303762]["RewardItem"][1]["Attr"] = "0 1"

	-- 3303763	沙滩武器外套洗赠液
	tSummerBattle_Package[3303763] = {}
	-- 30天沙滩武器外套包（赠）洗赠：
	tSummerBattle_Package[3303763][1] = {}
	tSummerBattle_Package[3303763][1]["WashId"] = 3303766
	tSummerBattle_Package[3303763][1]["Option"] = 1
	tSummerBattle_Package[3303763][1]["UseNum"] = 1
	tSummerBattle_Package[3303763][1]["Monopoly"] = 0
	tSummerBattle_Package[3303763][1]["LogId"] = 12000760
	tSummerBattle_Package[3303763][1]["RewardItem"] = {}
	tSummerBattle_Package[3303763][1]["RewardItem"][1] = {}
	tSummerBattle_Package[3303763][1]["RewardItem"][1]["Id"] = 3303767
	tSummerBattle_Package[3303763][1]["RewardItem"][1]["Attr"] = "0 1"
	
	-- 百变霓虹魔术棒
	tSummerBattle_Package[3303764] = {}
	-- 赠品翅膀
	tSummerBattle_Package[3303764]["Gift"] = {}
	tSummerBattle_Package[3303764]["Gift"][9] = {}
	tSummerBattle_Package[3303764]["Gift"][9]["LogId"] = 12000760
	tSummerBattle_Package[3303764]["Gift"][9]["RewardItem"] = {}
	tSummerBattle_Package[3303764]["Gift"][9]["RewardItem"][1] = {}
	tSummerBattle_Package[3303764]["Gift"][9]["RewardItem"][1]["Id"] = 3303772
	tSummerBattle_Package[3303764]["Gift"][9]["RewardItem"][1]["Attr"] = "0 1"
	
	tSummerBattle_Package[3303764]["Gift"][10] = {}
	tSummerBattle_Package[3303764]["Gift"][10]["LogId"] = 12000760
	tSummerBattle_Package[3303764]["Gift"][10]["RewardItem"] = {}
	tSummerBattle_Package[3303764]["Gift"][10]["RewardItem"][1] = {}
	tSummerBattle_Package[3303764]["Gift"][10]["RewardItem"][1]["Id"] = 3303773
	tSummerBattle_Package[3303764]["Gift"][10]["RewardItem"][1]["Attr"] = "0 1"
	
	tSummerBattle_Package[3303764]["Gift"][11] = {}
	tSummerBattle_Package[3303764]["Gift"][11]["LogId"] = 12000760
	tSummerBattle_Package[3303764]["Gift"][11]["RewardItem"] = {}
	tSummerBattle_Package[3303764]["Gift"][11]["RewardItem"][1] = {}
	tSummerBattle_Package[3303764]["Gift"][11]["RewardItem"][1]["Id"] = 3303774
	tSummerBattle_Package[3303764]["Gift"][11]["RewardItem"][1]["Attr"] = "0 1"
	
	tSummerBattle_Package[3303764]["Gift"][12] = {}
	tSummerBattle_Package[3303764]["Gift"][12]["LogId"] = 12000760
	tSummerBattle_Package[3303764]["Gift"][12]["RewardItem"] = {}
	tSummerBattle_Package[3303764]["Gift"][12]["RewardItem"][1] = {}
	tSummerBattle_Package[3303764]["Gift"][12]["RewardItem"][1]["Id"] = 3303775
	tSummerBattle_Package[3303764]["Gift"][12]["RewardItem"][1]["Attr"] = "0 1"

	-- 非赠品翅膀
	tSummerBattle_Package[3303764]["NoGift"] = {}
	tSummerBattle_Package[3303764]["NoGift"][9] = {}
	tSummerBattle_Package[3303764]["NoGift"][9]["LogId"] = 12000760
	tSummerBattle_Package[3303764]["NoGift"][9]["RewardItem"] = {}
	tSummerBattle_Package[3303764]["NoGift"][9]["RewardItem"][1] = {}
	tSummerBattle_Package[3303764]["NoGift"][9]["RewardItem"][1]["Id"] = 3303797
	tSummerBattle_Package[3303764]["NoGift"][9]["RewardItem"][1]["Attr"] = "0 1"
	
	tSummerBattle_Package[3303764]["NoGift"][10] = {}
	tSummerBattle_Package[3303764]["NoGift"][10]["LogId"] = 12000760
	tSummerBattle_Package[3303764]["NoGift"][10]["RewardItem"] = {}
	tSummerBattle_Package[3303764]["NoGift"][10]["RewardItem"][1] = {}
	tSummerBattle_Package[3303764]["NoGift"][10]["RewardItem"][1]["Id"] = 3303798
	tSummerBattle_Package[3303764]["NoGift"][10]["RewardItem"][1]["Attr"] = "0 1"
	
	tSummerBattle_Package[3303764]["NoGift"][11] = {}
	tSummerBattle_Package[3303764]["NoGift"][11]["LogId"] = 12000760
	tSummerBattle_Package[3303764]["NoGift"][11]["RewardItem"] = {}
	tSummerBattle_Package[3303764]["NoGift"][11]["RewardItem"][1] = {}
	tSummerBattle_Package[3303764]["NoGift"][11]["RewardItem"][1]["Id"] = 3303799
	tSummerBattle_Package[3303764]["NoGift"][11]["RewardItem"][1]["Attr"] = "0 1"
	
	tSummerBattle_Package[3303764]["NoGift"][12] = {}
	tSummerBattle_Package[3303764]["NoGift"][12]["LogId"] = 12000760
	tSummerBattle_Package[3303764]["NoGift"][12]["RewardItem"] = {}
	tSummerBattle_Package[3303764]["NoGift"][12]["RewardItem"][1] = {}
	tSummerBattle_Package[3303764]["NoGift"][12]["RewardItem"][1]["Id"] = 3303800
	tSummerBattle_Package[3303764]["NoGift"][12]["RewardItem"][1]["Attr"] = "0 1"

	-- 翅膀A（赠）
	tSummerBattle_Package[3303764][1] = {}
	tSummerBattle_Package[3303764][1]["ChangeId"] = 3303772
	tSummerBattle_Package[3303764][1]["tOption"] = {10,11,12}
	tSummerBattle_Package[3303764][1]["RewardIndex"] = "Gift"
	tSummerBattle_Package[3303764][1]["DeleteItem"] = {}
	tSummerBattle_Package[3303764][1]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303764][1]["DeleteItem"][1]["Id"] = 3303764
	tSummerBattle_Package[3303764][1]["DeleteItem"][2] = {}
	tSummerBattle_Package[3303764][1]["DeleteItem"][2]["Id"] = 3303772

	-- 翅膀B（赠）
	tSummerBattle_Package[3303764][2] = {}
	tSummerBattle_Package[3303764][2]["ChangeId"] = 3303773
	tSummerBattle_Package[3303764][2]["tOption"] = {9,11,12}
	tSummerBattle_Package[3303764][2]["RewardIndex"] = "Gift"
	tSummerBattle_Package[3303764][2]["DeleteItem"] = {}
	tSummerBattle_Package[3303764][2]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303764][2]["DeleteItem"][1]["Id"] = 3303764
	tSummerBattle_Package[3303764][2]["DeleteItem"][2] = {}
	tSummerBattle_Package[3303764][2]["DeleteItem"][2]["Id"] = 3303773

	-- 翅膀C（赠）
	tSummerBattle_Package[3303764][3] = {}
	tSummerBattle_Package[3303764][3]["ChangeId"] = 3303774
	tSummerBattle_Package[3303764][3]["tOption"] = {9,10,12}
	tSummerBattle_Package[3303764][3]["RewardIndex"] = "Gift"
	tSummerBattle_Package[3303764][3]["DeleteItem"] = {}
	tSummerBattle_Package[3303764][3]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303764][3]["DeleteItem"][1]["Id"] = 3303764
	tSummerBattle_Package[3303764][3]["DeleteItem"][2] = {}
	tSummerBattle_Package[3303764][3]["DeleteItem"][2]["Id"] = 3303774

	-- 翅膀D（赠）
	tSummerBattle_Package[3303764][4] = {}
	tSummerBattle_Package[3303764][4]["ChangeId"] = 3303775
	tSummerBattle_Package[3303764][4]["tOption"] = {9,10,11}
	tSummerBattle_Package[3303764][4]["RewardIndex"] = "Gift"
	tSummerBattle_Package[3303764][4]["DeleteItem"] = {}
	tSummerBattle_Package[3303764][4]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303764][4]["DeleteItem"][1]["Id"] = 3303764
	tSummerBattle_Package[3303764][4]["DeleteItem"][2] = {}
	tSummerBattle_Package[3303764][4]["DeleteItem"][2]["Id"] = 3303775

	-- 翅膀A
	tSummerBattle_Package[3303764][5] = {}
	tSummerBattle_Package[3303764][5]["ChangeId"] = 3303797
	tSummerBattle_Package[3303764][5]["tOption"] = {10,11,12}
	tSummerBattle_Package[3303764][5]["RewardIndex"] = "NoGift"
	tSummerBattle_Package[3303764][5]["DeleteItem"] = {}
	tSummerBattle_Package[3303764][5]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303764][5]["DeleteItem"][1]["Id"] = 3303764
	tSummerBattle_Package[3303764][5]["DeleteItem"][2] = {}
	tSummerBattle_Package[3303764][5]["DeleteItem"][2]["Id"] = 3303797

	-- 翅膀B
	tSummerBattle_Package[3303764][6] = {}
	tSummerBattle_Package[3303764][6]["ChangeId"] = 3303798
	tSummerBattle_Package[3303764][6]["tOption"] = {9,11,12}
	tSummerBattle_Package[3303764][6]["RewardIndex"] = "NoGift"
	tSummerBattle_Package[3303764][6]["DeleteItem"] = {}
	tSummerBattle_Package[3303764][6]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303764][6]["DeleteItem"][1]["Id"] = 3303764
	tSummerBattle_Package[3303764][6]["DeleteItem"][2] = {}
	tSummerBattle_Package[3303764][6]["DeleteItem"][2]["Id"] = 3303798

	-- 翅膀C
	tSummerBattle_Package[3303764][7] = {}
	tSummerBattle_Package[3303764][7]["ChangeId"] = 3303799
	tSummerBattle_Package[3303764][7]["tOption"] = {9,10,12}
	tSummerBattle_Package[3303764][7]["RewardIndex"] = "NoGift"
	tSummerBattle_Package[3303764][7]["DeleteItem"] = {}
	tSummerBattle_Package[3303764][7]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303764][7]["DeleteItem"][1]["Id"] = 3303764
	tSummerBattle_Package[3303764][7]["DeleteItem"][2] = {}
	tSummerBattle_Package[3303764][7]["DeleteItem"][2]["Id"] = 3303799

	-- 翅膀D
	tSummerBattle_Package[3303764][8] = {}
	tSummerBattle_Package[3303764][8]["ChangeId"] = 3303800
	tSummerBattle_Package[3303764][8]["tOption"] = {9,10,11}
	tSummerBattle_Package[3303764][8]["RewardIndex"] = "NoGift"
	tSummerBattle_Package[3303764][8]["DeleteItem"] = {}
	tSummerBattle_Package[3303764][8]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303764][8]["DeleteItem"][1]["Id"] = 3303764
	tSummerBattle_Package[3303764][8]["DeleteItem"][2] = {}
	tSummerBattle_Package[3303764][8]["DeleteItem"][2]["Id"] = 3303800

	-- 3303765	夏日翅膀外套洗赠液
	tSummerBattle_Package[3303765] = {}
	-- 翅膀A（赠）
	tSummerBattle_Package[3303765][1] = {}
	tSummerBattle_Package[3303765][1]["WashId"] = 3303772
	tSummerBattle_Package[3303765][1]["Option"] = 1
	tSummerBattle_Package[3303765][1]["UseNum"] = 1
	tSummerBattle_Package[3303765][1]["Monopoly"] = 0
	tSummerBattle_Package[3303765][1]["LogId"] = 12000760
	tSummerBattle_Package[3303765][1]["RewardItem"] = {}
	tSummerBattle_Package[3303765][1]["RewardItem"][1] = {}
	tSummerBattle_Package[3303765][1]["RewardItem"][1]["Id"] = 3303797
	tSummerBattle_Package[3303765][1]["RewardItem"][1]["Attr"] = "0 1"
	-- 翅膀B（赠）
	tSummerBattle_Package[3303765][2] = {}
	tSummerBattle_Package[3303765][2]["WashId"] = 3303773
	tSummerBattle_Package[3303765][2]["Option"] = 2
	tSummerBattle_Package[3303765][2]["UseNum"] = 1
	tSummerBattle_Package[3303765][2]["Monopoly"] = 0
	tSummerBattle_Package[3303765][2]["LogId"] = 12000760
	tSummerBattle_Package[3303765][2]["RewardItem"] = {}
	tSummerBattle_Package[3303765][2]["RewardItem"][1] = {}
	tSummerBattle_Package[3303765][2]["RewardItem"][1]["Id"] = 3303798
	tSummerBattle_Package[3303765][2]["RewardItem"][1]["Attr"] = "0 1"
	-- 翅膀C（赠）
	tSummerBattle_Package[3303765][3] = {}
	tSummerBattle_Package[3303765][3]["WashId"] = 3303774
	tSummerBattle_Package[3303765][3]["Option"] = 3
	tSummerBattle_Package[3303765][3]["UseNum"] = 1
	tSummerBattle_Package[3303765][3]["Monopoly"] = 0
	tSummerBattle_Package[3303765][3]["LogId"] = 12000760
	tSummerBattle_Package[3303765][3]["RewardItem"] = {}
	tSummerBattle_Package[3303765][3]["RewardItem"][1] = {}
	tSummerBattle_Package[3303765][3]["RewardItem"][1]["Id"] = 3303799
	tSummerBattle_Package[3303765][3]["RewardItem"][1]["Attr"] = "0 1"
	-- 翅膀D（赠）
	tSummerBattle_Package[3303765][4] = {}
	tSummerBattle_Package[3303765][4]["WashId"] = 3303775
	tSummerBattle_Package[3303765][4]["Option"] = 4
	tSummerBattle_Package[3303765][4]["UseNum"] = 1
	tSummerBattle_Package[3303765][4]["Monopoly"] = 0
	tSummerBattle_Package[3303765][4]["LogId"] = 12000760
	tSummerBattle_Package[3303765][4]["RewardItem"] = {}
	tSummerBattle_Package[3303765][4]["RewardItem"][1] = {}
	tSummerBattle_Package[3303765][4]["RewardItem"][1]["Id"] = 3303800
	tSummerBattle_Package[3303765][4]["RewardItem"][1]["Attr"] = "0 1"
	-- 翅膀E（赠）
	tSummerBattle_Package[3303765][5] = {}
	tSummerBattle_Package[3303765][5]["Confirm"] = true
	tSummerBattle_Package[3303765][5]["WashId"] = 3303776
	tSummerBattle_Package[3303765][5]["Option"] = 12
	tSummerBattle_Package[3303765][5]["UseNum"] = 1
	tSummerBattle_Package[3303765][5]["Monopoly"] = 0
	tSummerBattle_Package[3303765][5]["LogId"] = 12000760
	tSummerBattle_Package[3303765][5]["UseMaxNum"] = 6
	tSummerBattle_Package[3303765][5]["StartNum"] = 10000
	tSummerBattle_Package[3303765][5]["EndNum"] = 60000
	tSummerBattle_Package[3303765][5]["RewardItem"] = {}
	tSummerBattle_Package[3303765][5]["RewardItem"][1] = {}
	tSummerBattle_Package[3303765][5]["RewardItem"][1]["Id"] = 3303801
	tSummerBattle_Package[3303765][5]["RewardItem"][1]["Attr"] = "0 1"

	-- 3303766	30天沙滩武器外套包（赠）
	tSummerBattle_Package[3303766] = {}
	-- "长武器外套（赠）"
	tSummerBattle_Package[3303766][1] = {}
	tSummerBattle_Package[3303766][1]["LogId"] = 12000760
	tSummerBattle_Package[3303766][1]["DeleteItem"] = {}
	tSummerBattle_Package[3303766][1]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303766][1]["DeleteItem"][1]["Id"] = 3303766
	tSummerBattle_Package[3303766][1]["RewardItem"] = {}
	tSummerBattle_Package[3303766][1]["RewardItem"][1] = {}
	tSummerBattle_Package[3303766][1]["RewardItem"][1]["Id"] = 350118
	tSummerBattle_Package[3303766][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	-- "短武器外套（赠）"
	tSummerBattle_Package[3303766][2] = {}
	tSummerBattle_Package[3303766][2]["LogId"] = 12000760
	tSummerBattle_Package[3303766][2]["DeleteItem"] = {}
	tSummerBattle_Package[3303766][2]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303766][2]["DeleteItem"][1]["Id"] = 3303766
	tSummerBattle_Package[3303766][2]["RewardItem"] = {}
	tSummerBattle_Package[3303766][2]["RewardItem"][1] = {}
	tSummerBattle_Package[3303766][2]["RewardItem"][1]["Id"] = 360216
	tSummerBattle_Package[3303766][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	-- "弓外套（赠）"
	tSummerBattle_Package[3303766][3] = {}
	tSummerBattle_Package[3303766][3]["LogId"] = 12000760
	tSummerBattle_Package[3303766][3]["DeleteItem"] = {}
	tSummerBattle_Package[3303766][3]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303766][3]["DeleteItem"][1]["Id"] = 3303766
	tSummerBattle_Package[3303766][3]["RewardItem"] = {}
	tSummerBattle_Package[3303766][3]["RewardItem"][1] = {}
	tSummerBattle_Package[3303766][3]["RewardItem"][1]["Id"] = 370049
	tSummerBattle_Package[3303766][3]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	-- "盾外套（赠）"
	tSummerBattle_Package[3303766][4] = {}
	tSummerBattle_Package[3303766][4]["LogId"] = 12000760
	tSummerBattle_Package[3303766][4]["DeleteItem"] = {}
	tSummerBattle_Package[3303766][4]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303766][4]["DeleteItem"][1]["Id"] = 3303766
	tSummerBattle_Package[3303766][4]["RewardItem"] = {}
	tSummerBattle_Package[3303766][4]["RewardItem"][1] = {}
	tSummerBattle_Package[3303766][4]["RewardItem"][1]["Id"] = 380055
	tSummerBattle_Package[3303766][4]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	
	-- 3303767	30天沙滩武器外套包
	tSummerBattle_Package[3303767] = {}
	-- "长武器外套"
	tSummerBattle_Package[3303767][1] = {}
	tSummerBattle_Package[3303767][1]["LogId"] = 12000760
	tSummerBattle_Package[3303767][1]["DeleteItem"] = {}
	tSummerBattle_Package[3303767][1]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303767][1]["DeleteItem"][1]["Id"] = 3303767
	tSummerBattle_Package[3303767][1]["RewardItem"] = {}
	tSummerBattle_Package[3303767][1]["RewardItem"][1] = {}
	tSummerBattle_Package[3303767][1]["RewardItem"][1]["Id"] = 350118
	tSummerBattle_Package[3303767][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1"
	-- "短武器外套"
	tSummerBattle_Package[3303767][2] = {}
	tSummerBattle_Package[3303767][2]["LogId"] = 12000760
	tSummerBattle_Package[3303767][2]["DeleteItem"] = {}
	tSummerBattle_Package[3303767][2]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303767][2]["DeleteItem"][1]["Id"] = 3303767
	tSummerBattle_Package[3303767][2]["RewardItem"] = {}
	tSummerBattle_Package[3303767][2]["RewardItem"][1] = {}
	tSummerBattle_Package[3303767][2]["RewardItem"][1]["Id"] = 360216
	tSummerBattle_Package[3303767][2]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1"
	-- "弓外套"
	tSummerBattle_Package[3303767][3] = {}
	tSummerBattle_Package[3303767][3]["LogId"] = 12000760
	tSummerBattle_Package[3303767][3]["DeleteItem"] = {}
	tSummerBattle_Package[3303767][3]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303767][3]["DeleteItem"][1]["Id"] = 3303767
	tSummerBattle_Package[3303767][3]["RewardItem"] = {}
	tSummerBattle_Package[3303767][3]["RewardItem"][1] = {}
	tSummerBattle_Package[3303767][3]["RewardItem"][1]["Id"] = 370049
	tSummerBattle_Package[3303767][3]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1"
	-- "盾外套"
	tSummerBattle_Package[3303767][4] = {}
	tSummerBattle_Package[3303767][4]["LogId"] = 12000760
	tSummerBattle_Package[3303767][4]["DeleteItem"] = {}
	tSummerBattle_Package[3303767][4]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303767][4]["DeleteItem"][1]["Id"] = 3303767
	tSummerBattle_Package[3303767][4]["RewardItem"] = {}
	tSummerBattle_Package[3303767][4]["RewardItem"][1] = {}
	tSummerBattle_Package[3303767][4]["RewardItem"][1]["Id"] = 380055
	tSummerBattle_Package[3303767][4]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1"

	-- 3303789	90天沙滩武器豪华包
	tSummerBattle_Package[3303789] = {}
	-- "长武器外套"
	tSummerBattle_Package[3303789][1] = {}
	tSummerBattle_Package[3303789][1]["LogId"] = 12000760
	tSummerBattle_Package[3303789][1]["DeleteItem"] = {}
	tSummerBattle_Package[3303789][1]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303789][1]["DeleteItem"][1]["Id"] = 3303789
	tSummerBattle_Package[3303789][1]["RewardItem"] = {}
	tSummerBattle_Package[3303789][1]["RewardItem"][1] = {}
	tSummerBattle_Package[3303789][1]["RewardItem"][1]["Id"] = 350119
	tSummerBattle_Package[3303789][1]["RewardItem"][1]["Attr"] = "0 1 0 129600 1 0 0 1"
	-- "短武器外套"
	tSummerBattle_Package[3303789][2] = {}
	tSummerBattle_Package[3303789][2]["LogId"] = 12000760
	tSummerBattle_Package[3303789][2]["DeleteItem"] = {}
	tSummerBattle_Package[3303789][2]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303789][2]["DeleteItem"][1]["Id"] = 3303789
	tSummerBattle_Package[3303789][2]["RewardItem"] = {}
	tSummerBattle_Package[3303789][2]["RewardItem"][1] = {}
	tSummerBattle_Package[3303789][2]["RewardItem"][1]["Id"] = 360217
	tSummerBattle_Package[3303789][2]["RewardItem"][1]["Attr"] = "0 1 0 129600 1 0 0 1"
	-- "弓外套"
	tSummerBattle_Package[3303789][3] = {}
	tSummerBattle_Package[3303789][3]["LogId"] = 12000760
	tSummerBattle_Package[3303789][3]["DeleteItem"] = {}
	tSummerBattle_Package[3303789][3]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303789][3]["DeleteItem"][1]["Id"] = 3303789
	tSummerBattle_Package[3303789][3]["RewardItem"] = {}
	tSummerBattle_Package[3303789][3]["RewardItem"][1] = {}
	tSummerBattle_Package[3303789][3]["RewardItem"][1]["Id"] = 370050
	tSummerBattle_Package[3303789][3]["RewardItem"][1]["Attr"] = "0 1 0 129600 1 0 0 1"
	-- "盾外套"
	tSummerBattle_Package[3303789][4] = {}
	tSummerBattle_Package[3303789][4]["LogId"] = 12000760
	tSummerBattle_Package[3303789][4]["DeleteItem"] = {}
	tSummerBattle_Package[3303789][4]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303789][4]["DeleteItem"][1]["Id"] = 3303789
	tSummerBattle_Package[3303789][4]["RewardItem"] = {}
	tSummerBattle_Package[3303789][4]["RewardItem"][1] = {}
	tSummerBattle_Package[3303789][4]["RewardItem"][1]["Id"] = 380056
	tSummerBattle_Package[3303789][4]["RewardItem"][1]["Attr"] = "0 1 0 129600 1 0 0 1"

	-- 3303777 130级组冠军礼包
	-- 独有称号“王者战队”14天时效					
	-- 打开可获得2W点气力值、5颗晶莹星陨石、150颗秘制免费修炼丹。					
	-- 5000张普通兑换券	
	tSummerBattle_Package[3303777] = {}
	tSummerBattle_Package[3303777]["LogId"] = 12000760
	tSummerBattle_Package[3303777]["EventType"] = 162
	tSummerBattle_Package[3303777]["DataType"] = 51
	tSummerBattle_Package[3303777]["DeleteItem"] = {}
	tSummerBattle_Package[3303777]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303777]["DeleteItem"][1]["Id"] = 3303777
	tSummerBattle_Package[3303777]["RewardStrengthValue"] = {}
	tSummerBattle_Package[3303777]["RewardStrengthValue"]["Value"] = 20000
	tSummerBattle_Package[3303777]["RewardItem"] = {}
	tSummerBattle_Package[3303777]["RewardItem"][1] = {}
	tSummerBattle_Package[3303777]["RewardItem"][1]["Id"] = 3009002
	tSummerBattle_Package[3303777]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tSummerBattle_Package[3303777]["RewardItem"][2] = {}
	tSummerBattle_Package[3303777]["RewardItem"][2]["Id"] = 3002926
	tSummerBattle_Package[3303777]["RewardItem"][2]["Attr"] = "0 150"
	tSummerBattle_Package[3303777]["RewardItem"][3] = {}
	tSummerBattle_Package[3303777]["RewardItem"][3]["Id"] = 3303695
	tSummerBattle_Package[3303777]["RewardItem"][3]["Attr"] = "0 5000"
	tSummerBattle_Package[3303777]["RewardTitle"] = {}
	tSummerBattle_Package[3303777]["RewardTitle"]["TitleType"] = 2059
	tSummerBattle_Package[3303777]["RewardTitle"]["TitleId"] = 2059
	tSummerBattle_Package[3303777]["RewardTitle"]["SaveTime"] = 20160

	-- 3303778 130级组亚军礼包
	-- 独有称号“霸者战队”14天时效					
	-- 打开可获得1W点气力值、3颗晶莹星陨石、100颗秘制免费修炼丹。					
	-- 4000张普通兑换券					
	tSummerBattle_Package[3303778] = {}
	tSummerBattle_Package[3303778]["LogId"] = 12000760
	tSummerBattle_Package[3303778]["EventType"] = 162
	tSummerBattle_Package[3303778]["DataType"] = 52
	tSummerBattle_Package[3303778]["DeleteItem"] = {}
	tSummerBattle_Package[3303778]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303778]["DeleteItem"][1]["Id"] = 3303778
	tSummerBattle_Package[3303778]["RewardStrengthValue"] = {}
	tSummerBattle_Package[3303778]["RewardStrengthValue"]["Value"] = 10000
	tSummerBattle_Package[3303778]["RewardItem"] = {}
	tSummerBattle_Package[3303778]["RewardItem"][1] = {}
	tSummerBattle_Package[3303778]["RewardItem"][1]["Id"] = 3009002
	tSummerBattle_Package[3303778]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tSummerBattle_Package[3303778]["RewardItem"][2] = {}
	tSummerBattle_Package[3303778]["RewardItem"][2]["Id"] = 3002926
	tSummerBattle_Package[3303778]["RewardItem"][2]["Attr"] = "0 100"
	tSummerBattle_Package[3303778]["RewardItem"][3] = {}
	tSummerBattle_Package[3303778]["RewardItem"][3]["Id"] = 3303695
	tSummerBattle_Package[3303778]["RewardItem"][3]["Attr"] = "0 4000"
	tSummerBattle_Package[3303778]["RewardTitle"] = {}
	tSummerBattle_Package[3303778]["RewardTitle"]["TitleType"] = 2060
	tSummerBattle_Package[3303778]["RewardTitle"]["TitleId"] = 2060
	tSummerBattle_Package[3303778]["RewardTitle"]["SaveTime"] = 20160

	-- 3303779 130级组季军礼包
	-- 独有称号“出类拔萃”14天时效					
	-- 打开可获得5000点气力值、1颗晶莹星陨石、50颗秘制免费修炼丹。					
	-- 3500张普通兑换券					
	tSummerBattle_Package[3303779] = {}
	tSummerBattle_Package[3303779]["LogId"] = 12000760
	tSummerBattle_Package[3303779]["EventType"] = 162
	tSummerBattle_Package[3303779]["DataType"] = 53
	tSummerBattle_Package[3303779]["DeleteItem"] = {}
	tSummerBattle_Package[3303779]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303779]["DeleteItem"][1]["Id"] = 3303779
	tSummerBattle_Package[3303779]["RewardStrengthValue"] = {}
	tSummerBattle_Package[3303779]["RewardStrengthValue"]["Value"] = 5000
	tSummerBattle_Package[3303779]["RewardItem"] = {}
	tSummerBattle_Package[3303779]["RewardItem"][1] = {}
	tSummerBattle_Package[3303779]["RewardItem"][1]["Id"] = 3009002
	tSummerBattle_Package[3303779]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tSummerBattle_Package[3303779]["RewardItem"][2] = {}
	tSummerBattle_Package[3303779]["RewardItem"][2]["Id"] = 3002926
	tSummerBattle_Package[3303779]["RewardItem"][2]["Attr"] = "0 50"
	tSummerBattle_Package[3303779]["RewardItem"][3] = {}
	tSummerBattle_Package[3303779]["RewardItem"][3]["Id"] = 3303695
	tSummerBattle_Package[3303779]["RewardItem"][3]["Attr"] = "0 3500"
	tSummerBattle_Package[3303779]["RewardTitle"] = {}
	tSummerBattle_Package[3303779]["RewardTitle"]["TitleType"] = 2061
	tSummerBattle_Package[3303779]["RewardTitle"]["TitleId"] = 2061
	tSummerBattle_Package[3303779]["RewardTitle"]["SaveTime"] = 20160

	-- 3303780 130级组八强礼包
	-- 独有称号“强者战队”14天时效					
	-- 打开可获得3000点气力值、8颗明亮星陨石、40颗秘制免费修炼丹。					
	-- 3000张普通兑换券					
	tSummerBattle_Package[3303780] = {}
	tSummerBattle_Package[3303780]["LogId"] = 12000760
	tSummerBattle_Package[3303780]["EventType"] = 162
	tSummerBattle_Package[3303780]["DataType"] = 54
	tSummerBattle_Package[3303780]["DeleteItem"] = {}
	tSummerBattle_Package[3303780]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303780]["DeleteItem"][1]["Id"] = 3303780
	tSummerBattle_Package[3303780]["RewardStrengthValue"] = {}
	tSummerBattle_Package[3303780]["RewardStrengthValue"]["Value"] = 3000
	tSummerBattle_Package[3303780]["RewardItem"] = {}
	tSummerBattle_Package[3303780]["RewardItem"][1] = {}
	tSummerBattle_Package[3303780]["RewardItem"][1]["Id"] = 3009001
	tSummerBattle_Package[3303780]["RewardItem"][1]["Attr"] = "0 8 0 2880 1"
	tSummerBattle_Package[3303780]["RewardItem"][2] = {}
	tSummerBattle_Package[3303780]["RewardItem"][2]["Id"] = 3002926
	tSummerBattle_Package[3303780]["RewardItem"][2]["Attr"] = "0 40"
	tSummerBattle_Package[3303780]["RewardItem"][3] = {}
	tSummerBattle_Package[3303780]["RewardItem"][3]["Id"] = 3303695
	tSummerBattle_Package[3303780]["RewardItem"][3]["Attr"] = "0 3000"
	tSummerBattle_Package[3303780]["RewardTitle"] = {}
	tSummerBattle_Package[3303780]["RewardTitle"]["TitleType"] = 2062
	tSummerBattle_Package[3303780]["RewardTitle"]["TitleId"] = 2062
	tSummerBattle_Package[3303780]["RewardTitle"]["SaveTime"] = 20160

	-- 3303781 120级组冠军礼包
	-- 打开可获得1.5W点气力值、3颗晶莹星陨石、100颗秘制免费修炼丹。					
	-- 3000张普通兑换券					
	tSummerBattle_Package[3303781] = {}
	tSummerBattle_Package[3303781]["LogId"] = 12000760
	tSummerBattle_Package[3303781]["EventType"] = 162
	tSummerBattle_Package[3303781]["DataType"] = 55
	tSummerBattle_Package[3303781]["DeleteItem"] = {}
	tSummerBattle_Package[3303781]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303781]["DeleteItem"][1]["Id"] = 3303781
	tSummerBattle_Package[3303781]["RewardStrengthValue"] = {}
	tSummerBattle_Package[3303781]["RewardStrengthValue"]["Value"] = 15000
	tSummerBattle_Package[3303781]["RewardItem"] = {}
	tSummerBattle_Package[3303781]["RewardItem"][1] = {}
	tSummerBattle_Package[3303781]["RewardItem"][1]["Id"] = 3009002
	tSummerBattle_Package[3303781]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tSummerBattle_Package[3303781]["RewardItem"][2] = {}
	tSummerBattle_Package[3303781]["RewardItem"][2]["Id"] = 3002926
	tSummerBattle_Package[3303781]["RewardItem"][2]["Attr"] = "0 100"
	tSummerBattle_Package[3303781]["RewardItem"][3] = {}
	tSummerBattle_Package[3303781]["RewardItem"][3]["Id"] = 3303695
	tSummerBattle_Package[3303781]["RewardItem"][3]["Attr"] = "0 3000"
	

	-- 3303782 120级组亚军礼包
	-- 打开可获得8000点气力值、2颗晶莹星陨石、50颗秘制免费修炼丹。					
	-- 2000张普通兑换券					
	tSummerBattle_Package[3303782] = {}
	tSummerBattle_Package[3303782]["LogId"] = 12000760
	tSummerBattle_Package[3303782]["EventType"] = 162
	tSummerBattle_Package[3303782]["DataType"] = 56
	tSummerBattle_Package[3303782]["DeleteItem"] = {}
	tSummerBattle_Package[3303782]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303782]["DeleteItem"][1]["Id"] = 3303782
	tSummerBattle_Package[3303782]["RewardStrengthValue"] = {}
	tSummerBattle_Package[3303782]["RewardStrengthValue"]["Value"] = 8000
	tSummerBattle_Package[3303782]["RewardItem"] = {}
	tSummerBattle_Package[3303782]["RewardItem"][1] = {}
	tSummerBattle_Package[3303782]["RewardItem"][1]["Id"] = 3009002
	tSummerBattle_Package[3303782]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tSummerBattle_Package[3303782]["RewardItem"][2] = {}
	tSummerBattle_Package[3303782]["RewardItem"][2]["Id"] = 3002926
	tSummerBattle_Package[3303782]["RewardItem"][2]["Attr"] = "0 50"
	tSummerBattle_Package[3303782]["RewardItem"][3] = {}
	tSummerBattle_Package[3303782]["RewardItem"][3]["Id"] = 3303695
	tSummerBattle_Package[3303782]["RewardItem"][3]["Attr"] = "0 2000"


	-- 3303783 120级组季军礼包
	-- 打开可获得4000点气力值、8颗明亮星陨石、40颗秘制免费修炼丹。					
	-- 1500张普通兑换券					
	tSummerBattle_Package[3303783] = {}
	tSummerBattle_Package[3303783]["LogId"] = 12000760
	tSummerBattle_Package[3303783]["EventType"] = 162
	tSummerBattle_Package[3303783]["DataType"] = 57
	tSummerBattle_Package[3303783]["DeleteItem"] = {}
	tSummerBattle_Package[3303783]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303783]["DeleteItem"][1]["Id"] = 3303783
	tSummerBattle_Package[3303783]["RewardStrengthValue"] = {}
	tSummerBattle_Package[3303783]["RewardStrengthValue"]["Value"] = 4000
	tSummerBattle_Package[3303783]["RewardItem"] = {}
	tSummerBattle_Package[3303783]["RewardItem"][1] = {}
	tSummerBattle_Package[3303783]["RewardItem"][1]["Id"] = 3009001
	tSummerBattle_Package[3303783]["RewardItem"][1]["Attr"] = "0 8 0 2880 1"
	tSummerBattle_Package[3303783]["RewardItem"][2] = {}
	tSummerBattle_Package[3303783]["RewardItem"][2]["Id"] = 3002926
	tSummerBattle_Package[3303783]["RewardItem"][2]["Attr"] = "0 40"
	tSummerBattle_Package[3303783]["RewardItem"][3] = {}
	tSummerBattle_Package[3303783]["RewardItem"][3]["Id"] = 3303695
	tSummerBattle_Package[3303783]["RewardItem"][3]["Attr"] = "0 1500"


	-- 3303784 120级组八强礼包
	-- 打开可获得2000点气力值、5颗明亮星陨石、25颗秘制免费修炼丹。					
	-- 1000张普通兑换券					
	tSummerBattle_Package[3303784] = {}
	tSummerBattle_Package[3303784]["LogId"] = 12000760
	tSummerBattle_Package[3303784]["EventType"] = 162
	tSummerBattle_Package[3303784]["DataType"] = 58
	tSummerBattle_Package[3303784]["DeleteItem"] = {}
	tSummerBattle_Package[3303784]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303784]["DeleteItem"][1]["Id"] = 3303784
	tSummerBattle_Package[3303784]["RewardStrengthValue"] = {}
	tSummerBattle_Package[3303784]["RewardStrengthValue"]["Value"] = 2000
	tSummerBattle_Package[3303784]["RewardItem"] = {}
	tSummerBattle_Package[3303784]["RewardItem"][1] = {}
	tSummerBattle_Package[3303784]["RewardItem"][1]["Id"] = 3009001
	tSummerBattle_Package[3303784]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tSummerBattle_Package[3303784]["RewardItem"][2] = {}
	tSummerBattle_Package[3303784]["RewardItem"][2]["Id"] = 3002926
	tSummerBattle_Package[3303784]["RewardItem"][2]["Attr"] = "0 25"
	tSummerBattle_Package[3303784]["RewardItem"][3] = {}
	tSummerBattle_Package[3303784]["RewardItem"][3]["Id"] = 3303695
	tSummerBattle_Package[3303784]["RewardItem"][3]["Attr"] = "0 1000"

	-- 3303785 110级组冠军礼包
	-- 打开可获得1W点气力值、2颗晶莹星陨石、50颗秘制免费修炼丹。，3000张普通兑换券			
	tSummerBattle_Package[3303785] = {}
	tSummerBattle_Package[3303785]["LogId"] = 12000760
	tSummerBattle_Package[3303785]["EventType"] = 162
	tSummerBattle_Package[3303785]["DataType"] = 59
	tSummerBattle_Package[3303785]["DeleteItem"] = {}
	tSummerBattle_Package[3303785]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303785]["DeleteItem"][1]["Id"] = 3303785
	tSummerBattle_Package[3303785]["RewardStrengthValue"] = {}
	tSummerBattle_Package[3303785]["RewardStrengthValue"]["Value"] = 10000
	tSummerBattle_Package[3303785]["RewardItem"] = {}
	tSummerBattle_Package[3303785]["RewardItem"][1] = {}
	tSummerBattle_Package[3303785]["RewardItem"][1]["Id"] = 3009002
	tSummerBattle_Package[3303785]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tSummerBattle_Package[3303785]["RewardItem"][2] = {}
	tSummerBattle_Package[3303785]["RewardItem"][2]["Id"] = 3002926
	tSummerBattle_Package[3303785]["RewardItem"][2]["Attr"] = "0 50"
	tSummerBattle_Package[3303785]["RewardItem"][3] = {}
	tSummerBattle_Package[3303785]["RewardItem"][3]["Id"] = 3303695
	tSummerBattle_Package[3303785]["RewardItem"][3]["Attr"] = "0 3000"

	-- 3303786 110级组亚军礼包
	-- 打开可获得6000点气力值、1颗晶莹星陨石、40颗秘制免费修炼丹。2000张普通兑换券			
	tSummerBattle_Package[3303786] = {}
	tSummerBattle_Package[3303786]["LogId"] = 12000760
	tSummerBattle_Package[3303786]["EventType"] = 162
	tSummerBattle_Package[3303786]["DataType"] = 60
	tSummerBattle_Package[3303786]["DeleteItem"] = {}
	tSummerBattle_Package[3303786]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303786]["DeleteItem"][1]["Id"] = 3303786
	tSummerBattle_Package[3303786]["RewardStrengthValue"] = {}
	tSummerBattle_Package[3303786]["RewardStrengthValue"]["Value"] = 6000
	tSummerBattle_Package[3303786]["RewardItem"] = {}
	tSummerBattle_Package[3303786]["RewardItem"][1] = {}
	tSummerBattle_Package[3303786]["RewardItem"][1]["Id"] = 3009002
	tSummerBattle_Package[3303786]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tSummerBattle_Package[3303786]["RewardItem"][2] = {}
	tSummerBattle_Package[3303786]["RewardItem"][2]["Id"] = 3002926
	tSummerBattle_Package[3303786]["RewardItem"][2]["Attr"] = "0 40"
	tSummerBattle_Package[3303786]["RewardItem"][3] = {}
	tSummerBattle_Package[3303786]["RewardItem"][3]["Id"] = 3303695
	tSummerBattle_Package[3303786]["RewardItem"][3]["Attr"] = "0 2000"

	-- 3303787 110级组季军礼包
	--打开可获得3000点气力值、5颗明亮星陨石、25颗秘制免费修炼丹。1500张普通兑换券			
	tSummerBattle_Package[3303787] = {}
	tSummerBattle_Package[3303787]["LogId"] = 12000760
	tSummerBattle_Package[3303787]["EventType"] = 162
	tSummerBattle_Package[3303787]["DataType"] = 61
	tSummerBattle_Package[3303787]["DeleteItem"] = {}
	tSummerBattle_Package[3303787]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303787]["DeleteItem"][1]["Id"] = 3303787
	tSummerBattle_Package[3303787]["RewardStrengthValue"] = {}
	tSummerBattle_Package[3303787]["RewardStrengthValue"]["Value"] = 3000
	tSummerBattle_Package[3303787]["RewardItem"] = {}
	tSummerBattle_Package[3303787]["RewardItem"][1] = {}
	tSummerBattle_Package[3303787]["RewardItem"][1]["Id"] = 3009001
	tSummerBattle_Package[3303787]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tSummerBattle_Package[3303787]["RewardItem"][2] = {}
	tSummerBattle_Package[3303787]["RewardItem"][2]["Id"] = 3002926
	tSummerBattle_Package[3303787]["RewardItem"][2]["Attr"] = "0 25"
	tSummerBattle_Package[3303787]["RewardItem"][3] = {}
	tSummerBattle_Package[3303787]["RewardItem"][3]["Id"] = 3303695
	tSummerBattle_Package[3303787]["RewardItem"][3]["Attr"] = "0 1500"

	-- 3303788 110级组八强礼包
	-- 打开可获得1000点气力值、3颗明亮星陨石、15颗秘制免费修炼丹。1000张普通兑换券			
	tSummerBattle_Package[3303788] = {}
	tSummerBattle_Package[3303788]["LogId"] = 12000760
	tSummerBattle_Package[3303788]["EventType"] = 162
	tSummerBattle_Package[3303788]["DataType"] = 62
	tSummerBattle_Package[3303788]["DeleteItem"] = {}
	tSummerBattle_Package[3303788]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303788]["DeleteItem"][1]["Id"] = 3303788
	tSummerBattle_Package[3303788]["RewardStrengthValue"] = {}
	tSummerBattle_Package[3303788]["RewardStrengthValue"]["Value"] = 1000
	tSummerBattle_Package[3303788]["RewardItem"] = {}
	tSummerBattle_Package[3303788]["RewardItem"][1] = {}
	tSummerBattle_Package[3303788]["RewardItem"][1]["Id"] = 3009001
	tSummerBattle_Package[3303788]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tSummerBattle_Package[3303788]["RewardItem"][2] = {}
	tSummerBattle_Package[3303788]["RewardItem"][2]["Id"] = 3002926
	tSummerBattle_Package[3303788]["RewardItem"][2]["Attr"] = "0 15"
	tSummerBattle_Package[3303788]["RewardItem"][3] = {}
	tSummerBattle_Package[3303788]["RewardItem"][3]["Id"] = 3303695
	tSummerBattle_Package[3303788]["RewardItem"][3]["Attr"] = "0 1000"
	
	--(+1)稀有黄色神纹随机包(赠)
	tSummerBattle_Package[3319013] = {}
	
	tSummerBattle_Package[3319013][1] = {}
	tSummerBattle_Package[3319013][1]["ItemChanceSum"] = 10000
	
	-- 5.00%  【[4032001]- 神罗天尊(+1)*1】
	tSummerBattle_Package[3319013][1][1] = {}
	tSummerBattle_Package[3319013][1][1]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319013][1][1]["ItemChance"] = 500
	tSummerBattle_Package[3319013][1][1]["RewardItem"] = {}
	tSummerBattle_Package[3319013][1][1]["RewardItem"][1] = {}
	tSummerBattle_Package[3319013][1][1]["RewardItem"][1]["Id"] = 4032001
	tSummerBattle_Package[3319013][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerBattle_Package[3319013][1][1]["LogId"] = 12000760
	-- 5.00%  【[4032101]- 爆炎诀(+1)*1】
	tSummerBattle_Package[3319013][1][2] = {}
	tSummerBattle_Package[3319013][1][2]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319013][1][2]["ItemChance"] = 500
	tSummerBattle_Package[3319013][1][2]["RewardItem"] = {}
	tSummerBattle_Package[3319013][1][2]["RewardItem"][1] = {}
	tSummerBattle_Package[3319013][1][2]["RewardItem"][1]["Id"] = 4032101
	tSummerBattle_Package[3319013][1][2]["RewardItem"][1]["Attr"] = "0 1 3 "
	tSummerBattle_Package[3319013][1][2]["LogId"] = 12000760
	--5.00%  【[4032201]- 清心诀(+1)*1】
	tSummerBattle_Package[3319013][1][3] = {}
	tSummerBattle_Package[3319013][1][3]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319013][1][3]["ItemChance"] = 500
	tSummerBattle_Package[3319013][1][3]["RewardItem"] = {}
	tSummerBattle_Package[3319013][1][3]["RewardItem"][1] = {}
	tSummerBattle_Package[3319013][1][3]["RewardItem"][1]["Id"] = 4032201
	tSummerBattle_Package[3319013][1][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerBattle_Package[3319013][1][3]["LogId"] = 12000760
	--5.00%  【[4032301]- 天衣无缝(+1)*1】
	tSummerBattle_Package[3319013][1][4] = {}
	tSummerBattle_Package[3319013][1][4]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319013][1][4]["ItemChance"] = 500
	tSummerBattle_Package[3319013][1][4]["RewardItem"] = {}
	tSummerBattle_Package[3319013][1][4]["RewardItem"][1] = {}
	tSummerBattle_Package[3319013][1][4]["RewardItem"][1]["Id"] = 4032301
	tSummerBattle_Package[3319013][1][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerBattle_Package[3319013][1][4]["LogId"] = 12000760
	-- 1.00%  【[4032401]- 祭灵诀(+1)*1】
	tSummerBattle_Package[3319013][1][5] = {}
	tSummerBattle_Package[3319013][1][5]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319013][1][5]["ItemChance"] = 150
	tSummerBattle_Package[3319013][1][5]["RewardItem"] = {}
	tSummerBattle_Package[3319013][1][5]["RewardItem"][1] = {}
	tSummerBattle_Package[3319013][1][5]["RewardItem"][1]["Id"] = 4032401
	tSummerBattle_Package[3319013][1][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerBattle_Package[3319013][1][5]["LogId"] = 12000760
	-- 1.00%  【[4032501]- 横扫千军(+1)*1】
	tSummerBattle_Package[3319013][1][6] = {}
	tSummerBattle_Package[3319013][1][6]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319013][1][6]["ItemChance"] = 150
	tSummerBattle_Package[3319013][1][6]["RewardItem"] = {}
	tSummerBattle_Package[3319013][1][6]["RewardItem"][1] = {}
	tSummerBattle_Package[3319013][1][6]["RewardItem"][1]["Id"] = 4032501
	tSummerBattle_Package[3319013][1][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerBattle_Package[3319013][1][6]["LogId"] = 12000760
	--5.00%  【[4032601]- 涅槃重生(+1)*1】
	tSummerBattle_Package[3319013][1][7] = {}
	tSummerBattle_Package[3319013][1][7]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319013][1][7]["ItemChance"] = 500
	tSummerBattle_Package[3319013][1][7]["RewardItem"] = {}
	tSummerBattle_Package[3319013][1][7]["RewardItem"][1] = {}
	tSummerBattle_Package[3319013][1][7]["RewardItem"][1]["Id"] = 4032601
	tSummerBattle_Package[3319013][1][7]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerBattle_Package[3319013][1][7]["LogId"] = 12000760
	--1.00%  【[4032701]- 锋芒毕露(+1)*1】
	tSummerBattle_Package[3319013][1][8] = {}
	tSummerBattle_Package[3319013][1][8]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319013][1][8]["ItemChance"] = 150
	tSummerBattle_Package[3319013][1][8]["RewardItem"] = {}
	tSummerBattle_Package[3319013][1][8]["RewardItem"][1] = {}
	tSummerBattle_Package[3319013][1][8]["RewardItem"][1]["Id"] = 4032701
	tSummerBattle_Package[3319013][1][8]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerBattle_Package[3319013][1][8]["LogId"] = 12000760
	-- 5.00%  【[4032801]- 魂兮归来(+1)*1】
	tSummerBattle_Package[3319013][1][9] = {}
	tSummerBattle_Package[3319013][1][9]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319013][1][9]["ItemChance"] = 500
	tSummerBattle_Package[3319013][1][9]["RewardItem"] = {}
	tSummerBattle_Package[3319013][1][9]["RewardItem"][1] = {}
	tSummerBattle_Package[3319013][1][9]["RewardItem"][1]["Id"] = 4032801
	tSummerBattle_Package[3319013][1][9]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerBattle_Package[3319013][1][9]["LogId"] = 12000760
	-- 1.00%  【[4031601]- 玄武护体(+1)*1】
	tSummerBattle_Package[3319013][1][10] = {}
	tSummerBattle_Package[3319013][1][10]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319013][1][10]["ItemChance"] = 150
	tSummerBattle_Package[3319013][1][10]["RewardItem"] = {}
	tSummerBattle_Package[3319013][1][10]["RewardItem"][1] = {}
	tSummerBattle_Package[3319013][1][10]["RewardItem"][1]["Id"] = 4031601
	tSummerBattle_Package[3319013][1][10]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerBattle_Package[3319013][1][10]["LogId"] = 12000760
	-- 5.00%  【[4031501]- 攻城掠地(+1)*1】
	tSummerBattle_Package[3319013][1][11] = {}
	tSummerBattle_Package[3319013][1][11]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319013][1][11]["ItemChance"] = 500
	tSummerBattle_Package[3319013][1][11]["RewardItem"] = {}
	tSummerBattle_Package[3319013][1][11]["RewardItem"][1] = {}
	tSummerBattle_Package[3319013][1][11]["RewardItem"][1]["Id"] = 4031501
	tSummerBattle_Package[3319013][1][11]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerBattle_Package[3319013][1][11]["LogId"] = 12000760
	--5.00%  【[4031401]- 策马扬鞭(+1)*1】
	tSummerBattle_Package[3319013][1][12] = {}
	tSummerBattle_Package[3319013][1][12]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319013][1][12]["ItemChance"] = 500
	tSummerBattle_Package[3319013][1][12]["RewardItem"] = {}
	tSummerBattle_Package[3319013][1][12]["RewardItem"][1] = {}
	tSummerBattle_Package[3319013][1][12]["RewardItem"][1]["Id"] = 4031401
	tSummerBattle_Package[3319013][1][12]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerBattle_Package[3319013][1][12]["LogId"] = 12000760
	
	--5.00%  【[4034001]- 乾坤护法(+1)*1】
	tSummerBattle_Package[3319013][1][13] = {}
	tSummerBattle_Package[3319013][1][13]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319013][1][13]["ItemChance"] = 500
	tSummerBattle_Package[3319013][1][13]["RewardItem"] = {}
	tSummerBattle_Package[3319013][1][13]["RewardItem"][1] = {}
	tSummerBattle_Package[3319013][1][13]["RewardItem"][1]["Id"] = 4034001
	tSummerBattle_Package[3319013][1][13]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerBattle_Package[3319013][1][13]["LogId"] = 12000760
	
	--5.00%  【[4033901]- 斗转星移(+1)*1】
	tSummerBattle_Package[3319013][1][14] = {}
	tSummerBattle_Package[3319013][1][14]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319013][1][14]["ItemChance"] = 500
	tSummerBattle_Package[3319013][1][14]["RewardItem"] = {}
	tSummerBattle_Package[3319013][1][14]["RewardItem"][1] = {}
	tSummerBattle_Package[3319013][1][14]["RewardItem"][1]["Id"] = 4033901
	tSummerBattle_Package[3319013][1][14]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerBattle_Package[3319013][1][14]["LogId"] = 12000760
	
	-- 5.00%  【[4033401]- 会心一击(+1)*1】
	tSummerBattle_Package[3319013][1][15] = {}
	tSummerBattle_Package[3319013][1][15]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319013][1][15]["ItemChance"] = 500
	tSummerBattle_Package[3319013][1][15]["RewardItem"] = {}
	tSummerBattle_Package[3319013][1][15]["RewardItem"][1] = {}
	tSummerBattle_Package[3319013][1][15]["RewardItem"][1]["Id"] = 4033401
	tSummerBattle_Package[3319013][1][15]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerBattle_Package[3319013][1][15]["LogId"] = 12000760
	
	--5.00%  【[4034101]- 威慑(+1)*1】
	tSummerBattle_Package[3319013][1][16] = {}
	tSummerBattle_Package[3319013][1][16]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319013][1][16]["ItemChance"] = 500
	tSummerBattle_Package[3319013][1][16]["RewardItem"] = {}
	tSummerBattle_Package[3319013][1][16]["RewardItem"][1] = {}
	tSummerBattle_Package[3319013][1][16]["RewardItem"][1]["Id"] = 4034101
	tSummerBattle_Package[3319013][1][16]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerBattle_Package[3319013][1][16]["LogId"] = 12000760
	
	--5.00%  【[4033301]- 致命准星(+1)*1】
	tSummerBattle_Package[3319013][1][17] = {}
	tSummerBattle_Package[3319013][1][17]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319013][1][17]["ItemChance"] = 500
	tSummerBattle_Package[3319013][1][17]["RewardItem"] = {}
	tSummerBattle_Package[3319013][1][17]["RewardItem"][1] = {}
	tSummerBattle_Package[3319013][1][17]["RewardItem"][1]["Id"] = 4033301
	tSummerBattle_Package[3319013][1][17]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerBattle_Package[3319013][1][17]["LogId"] = 12000760
	
	--5.00%  【[4032901]- 例无虚发(+1)*1】
	tSummerBattle_Package[3319013][1][18] = {}
	tSummerBattle_Package[3319013][1][18]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319013][1][18]["ItemChance"] = 500
	tSummerBattle_Package[3319013][1][18]["RewardItem"] = {}
	tSummerBattle_Package[3319013][1][18]["RewardItem"][1] = {}
	tSummerBattle_Package[3319013][1][18]["RewardItem"][1]["Id"] = 4032901
	tSummerBattle_Package[3319013][1][18]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerBattle_Package[3319013][1][18]["LogId"] = 12000760
	
	--5.00%  【[4033001]- 审判(+1)*1】
	tSummerBattle_Package[3319013][1][19] = {}
	tSummerBattle_Package[3319013][1][19]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319013][1][19]["ItemChance"] = 500
	tSummerBattle_Package[3319013][1][19]["RewardItem"] = {}
	tSummerBattle_Package[3319013][1][19]["RewardItem"][1] = {}
	tSummerBattle_Package[3319013][1][19]["RewardItem"][1]["Id"] = 4033001
	tSummerBattle_Package[3319013][1][19]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerBattle_Package[3319013][1][19]["LogId"] = 12000760

	-- 4034201	乾坤妙法(+1)	2.75%
	tSummerBattle_Package[3319013][1][20] = {}
	tSummerBattle_Package[3319013][1][20]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319013][1][20]["ItemChance"] = 275
	tSummerBattle_Package[3319013][1][20]["RewardItem"] = {}
	tSummerBattle_Package[3319013][1][20]["RewardItem"][1] = {}
	tSummerBattle_Package[3319013][1][20]["RewardItem"][1]["Id"] = 4034201
	tSummerBattle_Package[3319013][1][20]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerBattle_Package[3319013][1][20]["LogId"] = 12000760
-- 4034301	罡气护体(+1)	2.75%
	tSummerBattle_Package[3319013][1][21] = {}
	tSummerBattle_Package[3319013][1][21]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319013][1][21]["ItemChance"] = 275
	tSummerBattle_Package[3319013][1][21]["RewardItem"] = {}
	tSummerBattle_Package[3319013][1][21]["RewardItem"][1] = {}
	tSummerBattle_Package[3319013][1][21]["RewardItem"][1]["Id"] = 4034301
	tSummerBattle_Package[3319013][1][21]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerBattle_Package[3319013][1][21]["LogId"] = 12000760
-- 4034401	沧澜破(+1)	2.75%
	tSummerBattle_Package[3319013][1][22] = {}
	tSummerBattle_Package[3319013][1][22]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319013][1][22]["ItemChance"] = 275
	tSummerBattle_Package[3319013][1][22]["RewardItem"] = {}
	tSummerBattle_Package[3319013][1][22]["RewardItem"][1] = {}
	tSummerBattle_Package[3319013][1][22]["RewardItem"][1]["Id"] = 4034401
	tSummerBattle_Package[3319013][1][22]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerBattle_Package[3319013][1][22]["LogId"] = 12000760
-- 4034501	妙手回春(+1)	2.75%
	tSummerBattle_Package[3319013][1][23] = {}
	tSummerBattle_Package[3319013][1][23]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319013][1][23]["ItemChance"] = 275
	tSummerBattle_Package[3319013][1][23]["RewardItem"] = {}
	tSummerBattle_Package[3319013][1][23]["RewardItem"][1] = {}
	tSummerBattle_Package[3319013][1][23]["RewardItem"][1]["Id"] = 4034501
	tSummerBattle_Package[3319013][1][23]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerBattle_Package[3319013][1][23]["LogId"] = 12000760
-- 4034601	最终法伤免疫(+1)	2.750%
	tSummerBattle_Package[3319013][1][24] = {}
	tSummerBattle_Package[3319013][1][24]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319013][1][24]["ItemChance"] = 275
	tSummerBattle_Package[3319013][1][24]["RewardItem"] = {}
	tSummerBattle_Package[3319013][1][24]["RewardItem"][1] = {}
	tSummerBattle_Package[3319013][1][24]["RewardItem"][1]["Id"] = 4034601
	tSummerBattle_Package[3319013][1][24]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerBattle_Package[3319013][1][24]["LogId"] = 12000760
-- 4034701	最终物伤免疫(+1)	2.750%
	tSummerBattle_Package[3319013][1][25] = {}
	tSummerBattle_Package[3319013][1][25]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319013][1][25]["ItemChance"] = 275
	tSummerBattle_Package[3319013][1][25]["RewardItem"] = {}
	tSummerBattle_Package[3319013][1][25]["RewardItem"][1] = {}
	tSummerBattle_Package[3319013][1][25]["RewardItem"][1]["Id"] = 4034701
	tSummerBattle_Package[3319013][1][25]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerBattle_Package[3319013][1][25]["LogId"] = 12000760
-- 4034801	碎玄元(+1)	2.50%
	tSummerBattle_Package[3319013][1][26] = {}
	tSummerBattle_Package[3319013][1][26]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319013][1][26]["ItemChance"] = 250
	tSummerBattle_Package[3319013][1][26]["RewardItem"] = {}
	tSummerBattle_Package[3319013][1][26]["RewardItem"][1] = {}
	tSummerBattle_Package[3319013][1][26]["RewardItem"][1]["Id"] = 4034801
	tSummerBattle_Package[3319013][1][26]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerBattle_Package[3319013][1][26]["LogId"] = 12000760
-- 4034901	不死之身(+1)	0%
	tSummerBattle_Package[3319013][1][27] = {}
	tSummerBattle_Package[3319013][1][27]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319013][1][27]["ItemChance"] = 0
	tSummerBattle_Package[3319013][1][27]["RewardItem"] = {}
	tSummerBattle_Package[3319013][1][27]["RewardItem"][1] = {}
	tSummerBattle_Package[3319013][1][27]["RewardItem"][1]["Id"] = 4034901
	tSummerBattle_Package[3319013][1][27]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerBattle_Package[3319013][1][27]["LogId"] = 12000760
	
	--(+1)稀有黄色神纹随机包
	tSummerBattle_Package[3319464] = {}
	
	tSummerBattle_Package[3319464][1] = {}
	tSummerBattle_Package[3319464][1]["ItemChanceSum"] = 10000
	
	tSummerBattle_Package[3319464][1][1] = {}
	tSummerBattle_Package[3319464][1][1]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319464][1][1]["ItemChance"] = 500
	tSummerBattle_Package[3319464][1][1]["RewardItem"] = {}
	tSummerBattle_Package[3319464][1][1]["RewardItem"][1] = {}
	tSummerBattle_Package[3319464][1][1]["RewardItem"][1]["Id"] = 4032001
	tSummerBattle_Package[3319464][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3319464][1][1]["LogId"] = 12000760
	
	tSummerBattle_Package[3319464][1][2] = {}
	tSummerBattle_Package[3319464][1][2]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319464][1][2]["ItemChance"] = 500
	tSummerBattle_Package[3319464][1][2]["RewardItem"] = {}
	tSummerBattle_Package[3319464][1][2]["RewardItem"][1] = {}
	tSummerBattle_Package[3319464][1][2]["RewardItem"][1]["Id"] = 4032101
	tSummerBattle_Package[3319464][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3319464][1][2]["LogId"] = 12000760
	
	tSummerBattle_Package[3319464][1][3] = {}
	tSummerBattle_Package[3319464][1][3]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319464][1][3]["ItemChance"] = 500
	tSummerBattle_Package[3319464][1][3]["RewardItem"] = {}
	tSummerBattle_Package[3319464][1][3]["RewardItem"][1] = {}
	tSummerBattle_Package[3319464][1][3]["RewardItem"][1]["Id"] = 4032201
	tSummerBattle_Package[3319464][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3319464][1][3]["LogId"] = 12000760
	
	tSummerBattle_Package[3319464][1][4] = {}
	tSummerBattle_Package[3319464][1][4]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319464][1][4]["ItemChance"] = 500
	tSummerBattle_Package[3319464][1][4]["RewardItem"] = {}
	tSummerBattle_Package[3319464][1][4]["RewardItem"][1] = {}
	tSummerBattle_Package[3319464][1][4]["RewardItem"][1]["Id"] = 4032301
	tSummerBattle_Package[3319464][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3319464][1][4]["LogId"] = 12000760
	
	tSummerBattle_Package[3319464][1][5] = {}
	tSummerBattle_Package[3319464][1][5]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319464][1][5]["ItemChance"] = 150
	tSummerBattle_Package[3319464][1][5]["RewardItem"] = {}
	tSummerBattle_Package[3319464][1][5]["RewardItem"][1] = {}
	tSummerBattle_Package[3319464][1][5]["RewardItem"][1]["Id"] = 4032401
	tSummerBattle_Package[3319464][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3319464][1][5]["LogId"] = 12000760
	
	tSummerBattle_Package[3319464][1][6] = {}
	tSummerBattle_Package[3319464][1][6]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319464][1][6]["ItemChance"] = 150
	tSummerBattle_Package[3319464][1][6]["RewardItem"] = {}
	tSummerBattle_Package[3319464][1][6]["RewardItem"][1] = {}
	tSummerBattle_Package[3319464][1][6]["RewardItem"][1]["Id"] = 4032501
	tSummerBattle_Package[3319464][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3319464][1][6]["LogId"] = 12000760
	
	tSummerBattle_Package[3319464][1][7] = {}
	tSummerBattle_Package[3319464][1][7]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319464][1][7]["ItemChance"] = 500
	tSummerBattle_Package[3319464][1][7]["RewardItem"] = {}
	tSummerBattle_Package[3319464][1][7]["RewardItem"][1] = {}
	tSummerBattle_Package[3319464][1][7]["RewardItem"][1]["Id"] = 4032601
	tSummerBattle_Package[3319464][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3319464][1][7]["LogId"] = 12000760
	
	tSummerBattle_Package[3319464][1][8] = {}
	tSummerBattle_Package[3319464][1][8]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319464][1][8]["ItemChance"] = 150
	tSummerBattle_Package[3319464][1][8]["RewardItem"] = {}
	tSummerBattle_Package[3319464][1][8]["RewardItem"][1] = {}
	tSummerBattle_Package[3319464][1][8]["RewardItem"][1]["Id"] = 4032701
	tSummerBattle_Package[3319464][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3319464][1][8]["LogId"] = 12000760
	
	tSummerBattle_Package[3319464][1][9] = {}
	tSummerBattle_Package[3319464][1][9]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319464][1][9]["ItemChance"] = 500
	tSummerBattle_Package[3319464][1][9]["RewardItem"] = {}
	tSummerBattle_Package[3319464][1][9]["RewardItem"][1] = {}
	tSummerBattle_Package[3319464][1][9]["RewardItem"][1]["Id"] = 4032801
	tSummerBattle_Package[3319464][1][9]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3319464][1][9]["LogId"] = 12000760
	
	tSummerBattle_Package[3319464][1][10] = {}
	tSummerBattle_Package[3319464][1][10]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319464][1][10]["ItemChance"] = 150
	tSummerBattle_Package[3319464][1][10]["RewardItem"] = {}
	tSummerBattle_Package[3319464][1][10]["RewardItem"][1] = {}
	tSummerBattle_Package[3319464][1][10]["RewardItem"][1]["Id"] = 4031601
	tSummerBattle_Package[3319464][1][10]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3319464][1][10]["LogId"] = 12000760
	
	tSummerBattle_Package[3319464][1][11] = {}
	tSummerBattle_Package[3319464][1][11]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319464][1][11]["ItemChance"] = 500
	tSummerBattle_Package[3319464][1][11]["RewardItem"] = {}
	tSummerBattle_Package[3319464][1][11]["RewardItem"][1] = {}
	tSummerBattle_Package[3319464][1][11]["RewardItem"][1]["Id"] = 4031501
	tSummerBattle_Package[3319464][1][11]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3319464][1][11]["LogId"] = 12000760
	
	tSummerBattle_Package[3319464][1][12] = {}
	tSummerBattle_Package[3319464][1][12]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319464][1][12]["ItemChance"] = 500
	tSummerBattle_Package[3319464][1][12]["RewardItem"] = {}
	tSummerBattle_Package[3319464][1][12]["RewardItem"][1] = {}
	tSummerBattle_Package[3319464][1][12]["RewardItem"][1]["Id"] = 4031401
	tSummerBattle_Package[3319464][1][12]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3319464][1][12]["LogId"] = 12000760

	--5.00%  【[4034001]- 乾坤护法(+1)*1】
	tSummerBattle_Package[3319464][1][13] = {}
	tSummerBattle_Package[3319464][1][13]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319464][1][13]["ItemChance"] = 500
	tSummerBattle_Package[3319464][1][13]["RewardItem"] = {}
	tSummerBattle_Package[3319464][1][13]["RewardItem"][1] = {}
	tSummerBattle_Package[3319464][1][13]["RewardItem"][1]["Id"] = 4034001
	tSummerBattle_Package[3319464][1][13]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3319464][1][13]["LogId"] = 12000760
	
	--5.00%  【[4033901]- 斗转星移(+1)*1】
	tSummerBattle_Package[3319464][1][14] = {}
	tSummerBattle_Package[3319464][1][14]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319464][1][14]["ItemChance"] = 500
	tSummerBattle_Package[3319464][1][14]["RewardItem"] = {}
	tSummerBattle_Package[3319464][1][14]["RewardItem"][1] = {}
	tSummerBattle_Package[3319464][1][14]["RewardItem"][1]["Id"] = 4033901
	tSummerBattle_Package[3319464][1][14]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3319464][1][14]["LogId"] = 12000760
	
	-- 5.00%  【[4033401]- 会心一击(+1)*1】
	tSummerBattle_Package[3319464][1][15] = {}
	tSummerBattle_Package[3319464][1][15]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319464][1][15]["ItemChance"] = 500
	tSummerBattle_Package[3319464][1][15]["RewardItem"] = {}
	tSummerBattle_Package[3319464][1][15]["RewardItem"][1] = {}
	tSummerBattle_Package[3319464][1][15]["RewardItem"][1]["Id"] = 4033401
	tSummerBattle_Package[3319464][1][15]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3319464][1][15]["LogId"] = 12000760
	
	--5.00%  【[4034101]- 威慑(+1)*1】
	tSummerBattle_Package[3319464][1][16] = {}
	tSummerBattle_Package[3319464][1][16]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319464][1][16]["ItemChance"] = 500
	tSummerBattle_Package[3319464][1][16]["RewardItem"] = {}
	tSummerBattle_Package[3319464][1][16]["RewardItem"][1] = {}
	tSummerBattle_Package[3319464][1][16]["RewardItem"][1]["Id"] = 4034101
	tSummerBattle_Package[3319464][1][16]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3319464][1][16]["LogId"] = 12000760
	
	--5.00%  【[4033301]- 致命准星(+1)*1】
	tSummerBattle_Package[3319464][1][17] = {}
	tSummerBattle_Package[3319464][1][17]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319464][1][17]["ItemChance"] = 500
	tSummerBattle_Package[3319464][1][17]["RewardItem"] = {}
	tSummerBattle_Package[3319464][1][17]["RewardItem"][1] = {}
	tSummerBattle_Package[3319464][1][17]["RewardItem"][1]["Id"] = 4033301
	tSummerBattle_Package[3319464][1][17]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3319464][1][17]["LogId"] = 12000760
	
	--5.00%  【[4032901]- 例无虚发(+1)*1】
	tSummerBattle_Package[3319464][1][18] = {}
	tSummerBattle_Package[3319464][1][18]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319464][1][18]["ItemChance"] = 500
	tSummerBattle_Package[3319464][1][18]["RewardItem"] = {}
	tSummerBattle_Package[3319464][1][18]["RewardItem"][1] = {}
	tSummerBattle_Package[3319464][1][18]["RewardItem"][1]["Id"] = 4032901
	tSummerBattle_Package[3319464][1][18]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3319464][1][18]["LogId"] = 12000760
	
	--5.00%  【[4033001]- 审判(+1)*1】
	tSummerBattle_Package[3319464][1][19] = {}
	tSummerBattle_Package[3319464][1][19]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319464][1][19]["ItemChance"] = 500
	tSummerBattle_Package[3319464][1][19]["RewardItem"] = {}
	tSummerBattle_Package[3319464][1][19]["RewardItem"][1] = {}
	tSummerBattle_Package[3319464][1][19]["RewardItem"][1]["Id"] = 4033001
	tSummerBattle_Package[3319464][1][19]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3319464][1][19]["LogId"] = 12000760
	
	-- 4034201	乾坤妙法(+1)	2.75%
	tSummerBattle_Package[3319464][1][20] = {}
	tSummerBattle_Package[3319464][1][20]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319464][1][20]["ItemChance"] = 275
	tSummerBattle_Package[3319464][1][20]["RewardItem"] = {}
	tSummerBattle_Package[3319464][1][20]["RewardItem"][1] = {}
	tSummerBattle_Package[3319464][1][20]["RewardItem"][1]["Id"] = 4034201
	tSummerBattle_Package[3319464][1][20]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3319464][1][20]["LogId"] = 12000760
-- 4034301	罡气护体(+1)	2.75%
	tSummerBattle_Package[3319464][1][21] = {}
	tSummerBattle_Package[3319464][1][21]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319464][1][21]["ItemChance"] = 275
	tSummerBattle_Package[3319464][1][21]["RewardItem"] = {}
	tSummerBattle_Package[3319464][1][21]["RewardItem"][1] = {}
	tSummerBattle_Package[3319464][1][21]["RewardItem"][1]["Id"] = 4034301
	tSummerBattle_Package[3319464][1][21]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3319464][1][21]["LogId"] = 12000760
-- 4034401	沧澜破(+1)	2.75%
	tSummerBattle_Package[3319464][1][22] = {}
	tSummerBattle_Package[3319464][1][22]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319464][1][22]["ItemChance"] = 275
	tSummerBattle_Package[3319464][1][22]["RewardItem"] = {}
	tSummerBattle_Package[3319464][1][22]["RewardItem"][1] = {}
	tSummerBattle_Package[3319464][1][22]["RewardItem"][1]["Id"] = 4034401
	tSummerBattle_Package[3319464][1][22]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3319464][1][22]["LogId"] = 12000760
-- 4034501	妙手回春(+1)	2.750%
	tSummerBattle_Package[3319464][1][23] = {}
	tSummerBattle_Package[3319464][1][23]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319464][1][23]["ItemChance"] = 275
	tSummerBattle_Package[3319464][1][23]["RewardItem"] = {}
	tSummerBattle_Package[3319464][1][23]["RewardItem"][1] = {}
	tSummerBattle_Package[3319464][1][23]["RewardItem"][1]["Id"] = 4034501
	tSummerBattle_Package[3319464][1][23]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3319464][1][23]["LogId"] = 12000760
-- 4034601	最终法伤免疫(+1)	2.750%
	tSummerBattle_Package[3319464][1][24] = {}
	tSummerBattle_Package[3319464][1][24]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319464][1][24]["ItemChance"] = 275
	tSummerBattle_Package[3319464][1][24]["RewardItem"] = {}
	tSummerBattle_Package[3319464][1][24]["RewardItem"][1] = {}
	tSummerBattle_Package[3319464][1][24]["RewardItem"][1]["Id"] = 4034601
	tSummerBattle_Package[3319464][1][24]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3319464][1][24]["LogId"] = 12000760
-- 4034701	最终物伤免疫(+1)	2.750%
	tSummerBattle_Package[3319464][1][25] = {}
	tSummerBattle_Package[3319464][1][25]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319464][1][25]["ItemChance"] = 275
	tSummerBattle_Package[3319464][1][25]["RewardItem"] = {}
	tSummerBattle_Package[3319464][1][25]["RewardItem"][1] = {}
	tSummerBattle_Package[3319464][1][25]["RewardItem"][1]["Id"] = 4034701
	tSummerBattle_Package[3319464][1][25]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3319464][1][25]["LogId"] = 12000760
-- 4034801	碎玄元(+1)	2.50%
	tSummerBattle_Package[3319464][1][26] = {}
	tSummerBattle_Package[3319464][1][26]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319464][1][26]["ItemChance"] = 250
	tSummerBattle_Package[3319464][1][26]["RewardItem"] = {}
	tSummerBattle_Package[3319464][1][26]["RewardItem"][1] = {}
	tSummerBattle_Package[3319464][1][26]["RewardItem"][1]["Id"] = 4034801
	tSummerBattle_Package[3319464][1][26]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3319464][1][26]["LogId"] = 12000760
-- 4034901	不死之身(+1)	0%
	tSummerBattle_Package[3319464][1][27] = {}
	tSummerBattle_Package[3319464][1][27]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3319464][1][27]["ItemChance"] = 0
	tSummerBattle_Package[3319464][1][27]["RewardItem"] = {}
	tSummerBattle_Package[3319464][1][27]["RewardItem"][1] = {}
	tSummerBattle_Package[3319464][1][27]["RewardItem"][1]["Id"] = 4034901
	tSummerBattle_Package[3319464][1][27]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3319464][1][27]["LogId"] = 12000760
	-- 3303858	7天沙滩武器外套包（赠）
	tSummerBattle_Package[3303858] = {}
	-- "长武器外套（赠）"
	tSummerBattle_Package[3303858][1] = {}
	tSummerBattle_Package[3303858][1]["LogId"] = 12000760
	tSummerBattle_Package[3303858][1]["DeleteItem"] = {}
	tSummerBattle_Package[3303858][1]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303858][1]["DeleteItem"][1]["Id"] = 3303858
	tSummerBattle_Package[3303858][1]["RewardItem"] = {}
	tSummerBattle_Package[3303858][1]["RewardItem"][1] = {}
	tSummerBattle_Package[3303858][1]["RewardItem"][1]["Id"] = 350118
	tSummerBattle_Package[3303858][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	-- "短武器外套（赠）"
	tSummerBattle_Package[3303858][2] = {}
	tSummerBattle_Package[3303858][2]["LogId"] = 12000760
	tSummerBattle_Package[3303858][2]["DeleteItem"] = {}
	tSummerBattle_Package[3303858][2]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303858][2]["DeleteItem"][1]["Id"] = 3303858
	tSummerBattle_Package[3303858][2]["RewardItem"] = {}
	tSummerBattle_Package[3303858][2]["RewardItem"][1] = {}
	tSummerBattle_Package[3303858][2]["RewardItem"][1]["Id"] = 360216
	tSummerBattle_Package[3303858][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	-- "弓外套（赠）"
	tSummerBattle_Package[3303858][3] = {}
	tSummerBattle_Package[3303858][3]["LogId"] = 12000760
	tSummerBattle_Package[3303858][3]["DeleteItem"] = {}
	tSummerBattle_Package[3303858][3]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303858][3]["DeleteItem"][1]["Id"] = 3303858
	tSummerBattle_Package[3303858][3]["RewardItem"] = {}
	tSummerBattle_Package[3303858][3]["RewardItem"][1] = {}
	tSummerBattle_Package[3303858][3]["RewardItem"][1]["Id"] = 370049
	tSummerBattle_Package[3303858][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	-- "盾外套（赠）"
	tSummerBattle_Package[3303858][4] = {}
	tSummerBattle_Package[3303858][4]["LogId"] = 12000760
	tSummerBattle_Package[3303858][4]["DeleteItem"] = {}
	tSummerBattle_Package[3303858][4]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303858][4]["DeleteItem"][1]["Id"] = 3303858
	tSummerBattle_Package[3303858][4]["RewardItem"] = {}
	tSummerBattle_Package[3303858][4]["RewardItem"][1] = {}
	tSummerBattle_Package[3303858][4]["RewardItem"][1]["Id"] = 380055
	tSummerBattle_Package[3303858][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"

	-- 3303976	7天沙滩武器外套包（赠）
	tSummerBattle_Package[3303976] = {}
	-- "长武器外套（赠）"
	tSummerBattle_Package[3303976][1] = {}
	tSummerBattle_Package[3303976][1]["LogId"] = 12000760
	tSummerBattle_Package[3303976][1]["DeleteItem"] = {}
	tSummerBattle_Package[3303976][1]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303976][1]["DeleteItem"][1]["Id"] = 3303976
	tSummerBattle_Package[3303976][1]["RewardItem"] = {}
	tSummerBattle_Package[3303976][1]["RewardItem"][1] = {}
	tSummerBattle_Package[3303976][1]["RewardItem"][1]["Id"] = 350119
	tSummerBattle_Package[3303976][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	-- "短武器外套（赠）"
	tSummerBattle_Package[3303976][2] = {}
	tSummerBattle_Package[3303976][2]["LogId"] = 12000760
	tSummerBattle_Package[3303976][2]["DeleteItem"] = {}
	tSummerBattle_Package[3303976][2]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303976][2]["DeleteItem"][1]["Id"] = 3303976
	tSummerBattle_Package[3303976][2]["RewardItem"] = {}
	tSummerBattle_Package[3303976][2]["RewardItem"][1] = {}
	tSummerBattle_Package[3303976][2]["RewardItem"][1]["Id"] = 360217
	tSummerBattle_Package[3303976][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	-- "弓外套（赠）"
	tSummerBattle_Package[3303976][3] = {}
	tSummerBattle_Package[3303976][3]["LogId"] = 12000760
	tSummerBattle_Package[3303976][3]["DeleteItem"] = {}
	tSummerBattle_Package[3303976][3]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303976][3]["DeleteItem"][1]["Id"] = 3303976
	tSummerBattle_Package[3303976][3]["RewardItem"] = {}
	tSummerBattle_Package[3303976][3]["RewardItem"][1] = {}
	tSummerBattle_Package[3303976][3]["RewardItem"][1]["Id"] = 370050
	tSummerBattle_Package[3303976][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	-- "盾外套（赠）"
	tSummerBattle_Package[3303976][4] = {}
	tSummerBattle_Package[3303976][4]["LogId"] = 12000760
	tSummerBattle_Package[3303976][4]["DeleteItem"] = {}
	tSummerBattle_Package[3303976][4]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303976][4]["DeleteItem"][1]["Id"] = 3303976
	tSummerBattle_Package[3303976][4]["RewardItem"] = {}
	tSummerBattle_Package[3303976][4]["RewardItem"][1] = {}
	tSummerBattle_Package[3303976][4]["RewardItem"][1]["Id"] = 380056
	tSummerBattle_Package[3303976][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"

	-- 3303772 碧痕霓虹羽（赠）
	tSummerBattle_Package[3303772] = {}
	tSummerBattle_Package[3303772]["LogId"] = 12000760
	tSummerBattle_Package[3303772]["DeleteItem"] = {}
	tSummerBattle_Package[3303772]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303772]["DeleteItem"][1]["Id"] = 3303772
	tSummerBattle_Package[3303772]["RewardWing"] = {}
	tSummerBattle_Package[3303772]["RewardWing"]["TitleType"] = 6013
	tSummerBattle_Package[3303772]["RewardWing"]["TitleId"] = 6013
	tSummerBattle_Package[3303772]["Talk"] = tSummerBattle_Text[3303772]["Talk"]
	
	-- 3303773 橙光霓虹羽（赠）
	tSummerBattle_Package[3303773] = {}
	tSummerBattle_Package[3303773]["LogId"] = 12000760
	tSummerBattle_Package[3303773]["DeleteItem"] = {}
	tSummerBattle_Package[3303773]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303773]["DeleteItem"][1]["Id"] = 3303773
	tSummerBattle_Package[3303773]["RewardWing"] = {}
	tSummerBattle_Package[3303773]["RewardWing"]["TitleType"] = 6014
	tSummerBattle_Package[3303773]["RewardWing"]["TitleId"] = 6014
	tSummerBattle_Package[3303773]["Talk"] = tSummerBattle_Text[3303773]["Talk"]
	
	-- 3303774 流焰霓虹羽（赠）
	tSummerBattle_Package[3303774] = {}
	tSummerBattle_Package[3303774]["LogId"] = 12000760
	tSummerBattle_Package[3303774]["DeleteItem"] = {}
	tSummerBattle_Package[3303774]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303774]["DeleteItem"][1]["Id"] = 3303774
	tSummerBattle_Package[3303774]["RewardWing"] = {}
	tSummerBattle_Package[3303774]["RewardWing"]["TitleType"] = 6015
	tSummerBattle_Package[3303774]["RewardWing"]["TitleId"] = 6015
	tSummerBattle_Package[3303774]["Talk"] = tSummerBattle_Text[3303774]["Talk"]
	
	-- 3303775 明光霓虹羽（赠）
	tSummerBattle_Package[3303775] = {}
	tSummerBattle_Package[3303775]["LogId"] = 12000760
	tSummerBattle_Package[3303775]["DeleteItem"] = {}
	tSummerBattle_Package[3303775]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303775]["DeleteItem"][1]["Id"] = 3303775
	tSummerBattle_Package[3303775]["RewardWing"] = {}
	tSummerBattle_Package[3303775]["RewardWing"]["TitleType"] = 6016
	tSummerBattle_Package[3303775]["RewardWing"]["TitleId"] = 6016
	tSummerBattle_Package[3303775]["Talk"] = tSummerBattle_Text[3303775]["Talk"]
	
	-- 3303776 海妖之歌翅膀外套（赠）
	tSummerBattle_Package[3303776] = {}
	tSummerBattle_Package[3303776]["LogId"] = 12000760
	tSummerBattle_Package[3303776]["DeleteItem"] = {}
	tSummerBattle_Package[3303776]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303776]["DeleteItem"][1]["Id"] = 3303776
	tSummerBattle_Package[3303776]["RewardWing"] = {}
	tSummerBattle_Package[3303776]["RewardWing"]["TitleType"] = 6017
	tSummerBattle_Package[3303776]["RewardWing"]["TitleId"] = 6017
	tSummerBattle_Package[3303776]["Talk"] = tSummerBattle_Text[3303776]["Talk"]
	
	-- 3303797 碧痕霓虹羽（绿色）
	tSummerBattle_Package[3303797] = {}
	tSummerBattle_Package[3303797]["LogId"] = 12000760
	tSummerBattle_Package[3303797]["DeleteItem"] = {}
	tSummerBattle_Package[3303797]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303797]["DeleteItem"][1]["Id"] = 3303797
	tSummerBattle_Package[3303797]["RewardWing"] = {}
	tSummerBattle_Package[3303797]["RewardWing"]["TitleType"] = 6013
	tSummerBattle_Package[3303797]["RewardWing"]["TitleId"] = 6013
	tSummerBattle_Package[3303797]["Talk"] = tSummerBattle_Text[3303797]["Talk"]
	
	-- 3303798 橙光霓虹羽（橙色）
	tSummerBattle_Package[3303798] = {}
	tSummerBattle_Package[3303798]["LogId"] = 12000760
	tSummerBattle_Package[3303798]["DeleteItem"] = {}
	tSummerBattle_Package[3303798]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303798]["DeleteItem"][1]["Id"] = 3303798
	tSummerBattle_Package[3303798]["RewardWing"] = {}
	tSummerBattle_Package[3303798]["RewardWing"]["TitleType"] = 6014
	tSummerBattle_Package[3303798]["RewardWing"]["TitleId"] = 6014
	tSummerBattle_Package[3303798]["Talk"] = tSummerBattle_Text[3303798]["Talk"]
	
	-- 3303799 流焰霓虹羽（红色）
	tSummerBattle_Package[3303799] = {}
	tSummerBattle_Package[3303799]["LogId"] = 12000760
	tSummerBattle_Package[3303799]["DeleteItem"] = {}
	tSummerBattle_Package[3303799]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303799]["DeleteItem"][1]["Id"] = 3303799
	tSummerBattle_Package[3303799]["RewardWing"] = {}
	tSummerBattle_Package[3303799]["RewardWing"]["TitleType"] = 6015
	tSummerBattle_Package[3303799]["RewardWing"]["TitleId"] = 6015
	tSummerBattle_Package[3303799]["Talk"] = tSummerBattle_Text[3303799]["Talk"]
	
	-- 3303800 明光霓虹羽（黄色）
	tSummerBattle_Package[3303800] = {}
	tSummerBattle_Package[3303800]["LogId"] = 12000760
	tSummerBattle_Package[3303800]["DeleteItem"] = {}
	tSummerBattle_Package[3303800]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303800]["DeleteItem"][1]["Id"] = 3303800
	tSummerBattle_Package[3303800]["RewardWing"] = {}
	tSummerBattle_Package[3303800]["RewardWing"]["TitleType"] = 6016
	tSummerBattle_Package[3303800]["RewardWing"]["TitleId"] = 6016
	tSummerBattle_Package[3303800]["Talk"] = tSummerBattle_Text[3303800]["Talk"]
	
	-- 3303801 海妖之歌翅膀外套
	tSummerBattle_Package[3303801] = {}
	tSummerBattle_Package[3303801]["LogId"] = 12000760
	tSummerBattle_Package[3303801]["DeleteItem"] = {}
	tSummerBattle_Package[3303801]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303801]["DeleteItem"][1]["Id"] = 3303801
	tSummerBattle_Package[3303801]["RewardWing"] = {}
	tSummerBattle_Package[3303801]["RewardWing"]["TitleType"] = 6017
	tSummerBattle_Package[3303801]["RewardWing"]["TitleId"] = 6017
	tSummerBattle_Package[3303801]["Talk"] = tSummerBattle_Text[3303801]["Talk"]
	
	-- 骑马积分礼包
	tSummerBattle_Package[3303861] = {}
	tSummerBattle_Package[3303861]["LogId"] = 12000760
	tSummerBattle_Package[3303861]["LogStep"] = "1[3]"
	tSummerBattle_Package[3303861]["EventType"] = 162
	tSummerBattle_Package[3303861]["DataType"] = 71
	tSummerBattle_Package[3303861]["RewardDelay"] = 1
	tSummerBattle_Package[3303861]["RewardTimeType"] = 4
	tSummerBattle_Package[3303861]["RewardData"] = 1
	tSummerBattle_Package[3303861]["DeleteItem"] = {}
	tSummerBattle_Package[3303861]["DeleteItem"][1] = {}
	tSummerBattle_Package[3303861]["DeleteItem"][1]["Id"] = 3303861
	tSummerBattle_Package[3303861]["RewardItem"] = {}
	tSummerBattle_Package[3303861]["RewardItem"][1] = {}
	tSummerBattle_Package[3303861]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Package[3303861]["RewardItem"][1]["Attr"] = "0 150"
	
	-- 3304246  明亮星陨石包
	tSummerBattle_Package[3304246] = {}
	tSummerBattle_Package[3304246]["LogId"] = 12000760
	tSummerBattle_Package[3304246]["DeleteItem"] = {}
	tSummerBattle_Package[3304246]["DeleteItem"][1] = {}
	tSummerBattle_Package[3304246]["DeleteItem"][1]["Id"] = 3304246
	tSummerBattle_Package[3304246]["RewardItem"] = {}
	tSummerBattle_Package[3304246]["RewardItem"][1] = {}
	tSummerBattle_Package[3304246]["RewardItem"][1]["Id"] = 3009001
	tSummerBattle_Package[3304246]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tSummerBattle_Package[3304246]["RewardEffect"] = {}
	tSummerBattle_Package[3304246]["RewardEffect"]["SzObj"] = "self"
	tSummerBattle_Package[3304246]["RewardEffect"]["Effect"] = "angelwing"
--神纹版本跨服组队PK赛礼包
----110级组冠军奖励
	tSummerBattle_Package[3306693] = {}
	tSummerBattle_Package[3306693]["LogId"] = 12000943
	tSummerBattle_Package[3306693]["SzObj"] = "self"
	tSummerBattle_Package[3306693]["RewardEffect"] = {}
	tSummerBattle_Package[3306693]["RewardEffect"]["Effect"] = "zf2-e128"
	tSummerBattle_Package[3306693]["EventType"] = 170
	tSummerBattle_Package[3306693]["DataType"] = 27
	tSummerBattle_Package[3306693]["DeleteItem"] = {}
	tSummerBattle_Package[3306693]["DeleteItem"][1] = {}
	tSummerBattle_Package[3306693]["DeleteItem"][1]["Id"] = 3306693
	tSummerBattle_Package[3306693]["RewardItem"] = {}
	tSummerBattle_Package[3306693]["RewardItem"][1] = {}
	tSummerBattle_Package[3306693]["RewardItem"][1]["Id"] = 3306697 --通用符文精粹包 
	tSummerBattle_Package[3306693]["RewardItem"][1]["Attr"] = "0 5"
	tSummerBattle_Package[3306693]["RewardStrengthValue"] = {}
	tSummerBattle_Package[3306693]["RewardStrengthValue"]["Value"] = 10000 --10000气力值
	-- tSummerBattle_Package[3306693]["RewardItem"] = {}
	-- tSummerBattle_Package[3306693]["RewardItem"][1] = {}
	-- tSummerBattle_Package[3306693]["RewardItem"][1]["Id"] = 3009002 -- 【库】PiedraEstrellaRadiante[属性:9], 【表格】晶莹星陨石
	-- tSummerBattle_Package[3306693]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的PiedraEstrellaRadiante*5
	-- tSummerBattle_Package[3306693]["RewardEMoneyMono"] = {}
	-- tSummerBattle_Package[3306693]["RewardEMoneyMono"]["Value"] = 500 -- 赠点, 【需求】赠点

	----110级组亚军奖励
	tSummerBattle_Package[3306694] = {}
	tSummerBattle_Package[3306694]["LogId"] = 12000943
	tSummerBattle_Package[3306694]["SzObj"] = "self"
	tSummerBattle_Package[3306694]["RewardEffect"] = {}
	tSummerBattle_Package[3306694]["RewardEffect"]["Effect"] = "zf2-e128"
	tSummerBattle_Package[3306694]["EventType"] = 170
	tSummerBattle_Package[3306694]["DataType"] = 28
	tSummerBattle_Package[3306694]["DeleteItem"] = {}
	tSummerBattle_Package[3306694]["DeleteItem"][1] = {}
	tSummerBattle_Package[3306694]["DeleteItem"][1]["Id"] = 3306694
	tSummerBattle_Package[3306694]["RewardItem"] = {}
	tSummerBattle_Package[3306694]["RewardItem"][1] = {}
	tSummerBattle_Package[3306694]["RewardItem"][1]["Id"] = 3306697 --通用符文精粹包 
	tSummerBattle_Package[3306694]["RewardItem"][1]["Attr"] = "0 3"
	tSummerBattle_Package[3306694]["RewardStrengthValue"] = {}
	tSummerBattle_Package[3306694]["RewardStrengthValue"]["Value"] = 8000 --80000气力值
	-- tSummerBattle_Package[3306694]["RewardItem"] = {}
	-- tSummerBattle_Package[3306694]["RewardItem"][1] = {}
	-- tSummerBattle_Package[3306694]["RewardItem"][1]["Id"] = 3009002 -- 【库】PiedraEstrellaRadiante[属性:9], 【表格】晶莹星陨石
	-- tSummerBattle_Package[3306694]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的PiedraEstrellaRadiante*3
	-- tSummerBattle_Package[3306694]["RewardEMoneyMono"] = {}
	-- tSummerBattle_Package[3306694]["RewardEMoneyMono"]["Value"] = 200 -- 赠点, 【需求】赠点

	----110级组季军奖励
	tSummerBattle_Package[3306695] = {}
	tSummerBattle_Package[3306695]["LogId"] = 12000943
	tSummerBattle_Package[3306695]["SzObj"] = "self"
	tSummerBattle_Package[3306695]["RewardEffect"] = {}
	tSummerBattle_Package[3306695]["RewardEffect"]["Effect"] = "zf2-e128"
	tSummerBattle_Package[3306695]["EventType"] = 170
	tSummerBattle_Package[3306695]["DataType"] = 29
	tSummerBattle_Package[3306695]["DeleteItem"] = {}
	tSummerBattle_Package[3306695]["DeleteItem"][1] = {}
	tSummerBattle_Package[3306695]["DeleteItem"][1]["Id"] = 3306695
	tSummerBattle_Package[3306695]["RewardItem"] = {}
	tSummerBattle_Package[3306695]["RewardItem"][1] = {}
	tSummerBattle_Package[3306695]["RewardItem"][1]["Id"] = 3306697 --通用符文精粹包 
	tSummerBattle_Package[3306695]["RewardItem"][1]["Attr"] = "0 2"
	tSummerBattle_Package[3306695]["RewardStrengthValue"] = {}
	tSummerBattle_Package[3306695]["RewardStrengthValue"]["Value"] = 6000 --60000气力值
	-- tSummerBattle_Package[3306695]["RewardStrengthValue"] = {}
	-- tSummerBattle_Package[3306695]["RewardStrengthValue"]["Value"] = 6000 -- 气力值, 【需求】6000点气力值
	-- tSummerBattle_Package[3306695]["RewardItem"] = {}
	-- tSummerBattle_Package[3306695]["RewardItem"][1] = {}
	-- tSummerBattle_Package[3306695]["RewardItem"][1]["Id"] = 3009002 -- 【库】PiedraEstrellaRadiante[属性:9], 【表格】晶莹星陨石
	-- tSummerBattle_Package[3306695]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的PiedraEstrellaRadiante*2
	-- tSummerBattle_Package[3306695]["RewardEMoneyMono"] = {}
	-- tSummerBattle_Package[3306695]["RewardEMoneyMono"]["Value"] = 100 -- 赠点, 【需求】赠点

	----110级组4-8名奖励
	tSummerBattle_Package[3306696] = {}
	tSummerBattle_Package[3306696]["LogId"] = 12000943
	tSummerBattle_Package[3306696]["SzObj"] = "self"
	tSummerBattle_Package[3306696]["RewardEffect"] = {}
	tSummerBattle_Package[3306696]["RewardEffect"]["Effect"] = "zf2-e128"
	tSummerBattle_Package[3306696]["EventType"] = 170
	tSummerBattle_Package[3306696]["DataType"] = 30
	tSummerBattle_Package[3306696]["DeleteItem"] = {}
	tSummerBattle_Package[3306696]["DeleteItem"][1] = {}
	tSummerBattle_Package[3306696]["DeleteItem"][1]["Id"] = 3306696
	tSummerBattle_Package[3306696]["RewardItem"] = {}
	tSummerBattle_Package[3306696]["RewardItem"][1] = {}
	tSummerBattle_Package[3306696]["RewardItem"][1]["Id"] = 3306697 --通用符文精粹包 
	tSummerBattle_Package[3306696]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3306696]["RewardStrengthValue"] = {}
	tSummerBattle_Package[3306696]["RewardStrengthValue"]["Value"] = 3000 --3000气力值
	-- tSummerBattle_Package[3306696]["RewardStrengthValue"] = {}
	-- tSummerBattle_Package[3306696]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000点气力值
	-- tSummerBattle_Package[3306696]["RewardItem"] = {}
	-- tSummerBattle_Package[3306696]["RewardItem"][1] = {}
	-- tSummerBattle_Package[3306696]["RewardItem"][1]["Id"] = 3009002 -- 【库】PiedraEstrellaRadiante[属性:9], 【表格】晶莹星陨石
	-- tSummerBattle_Package[3306696]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的PiedraEstrellaRadiante*1


	----120级组冠军奖励
	tSummerBattle_Package[3306689] = {}
	tSummerBattle_Package[3306689]["LogId"] = 12000943
	tSummerBattle_Package[3306689]["SzObj"] = "self"
	tSummerBattle_Package[3306689]["RewardEffect"] = {}
	tSummerBattle_Package[3306689]["RewardEffect"]["Effect"] = "zf2-e128"
	tSummerBattle_Package[3306689]["EventType"] = 170
	tSummerBattle_Package[3306689]["DataType"] = 23
	tSummerBattle_Package[3306689]["DeleteItem"] = {}
	tSummerBattle_Package[3306689]["DeleteItem"][1] = {}
	tSummerBattle_Package[3306689]["DeleteItem"][1]["Id"] = 3306689
	-- tSummerBattle_Package[3306689]["RewardItem"] = {}
	-- tSummerBattle_Package[3306689]["RewardItem"][1] = {}
	-- tSummerBattle_Package[3306689]["RewardItem"][1]["Id"] = 3306697 --通用符文精粹包 
	-- tSummerBattle_Package[3306689]["RewardItem"][1]["Attr"] = "0 5"
	-- tSummerBattle_Package[3306689]["RewardStrengthValue"] = {}
	-- tSummerBattle_Package[3306689]["RewardStrengthValue"]["Value"] = 10000 --10000气力值
	tSummerBattle_Package[3306689]["RewardStrengthValue"] = {}
	tSummerBattle_Package[3306689]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力值
	tSummerBattle_Package[3306689]["RewardItem"] = {}
	tSummerBattle_Package[3306689]["RewardItem"][1] = {}
	tSummerBattle_Package[3306689]["RewardItem"][1]["Id"] = 3306697 -- 【库】UniversalRuneEssencePack[属性:0], 【表格】通用神纹精粹包*5
	tSummerBattle_Package[3306689]["RewardItem"][1]["Attr"] = "0 5" -- UniversalRuneEssencePack*5
	tSummerBattle_Package[3306689]["RewardItem"][2] = {}
	tSummerBattle_Package[3306689]["RewardItem"][2]["Id"] = 3319014 -- 【库】+2RandomRareYellowRunePack(B)[属性:9], 【表格】（+2）稀有黄色神纹随机包（赠）*1
	tSummerBattle_Package[3306689]["RewardItem"][2]["Attr"] = "0 1" -- +2RandomRareYellowRunePack(B)*1
	-- tSummerBattle_Package[3306689]["RewardStrengthValue"] = {}
	-- tSummerBattle_Package[3306689]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000点气力值
	-- tSummerBattle_Package[3306689]["RewardItem"] = {}
	-- tSummerBattle_Package[3306689]["RewardItem"][1] = {}
	-- tSummerBattle_Package[3306689]["RewardItem"][1]["Id"] = 3009002 -- 【库】PiedraEstrellaRadiante[属性:9], 【表格】晶莹星陨石
	-- tSummerBattle_Package[3306689]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的PiedraEstrellaRadiante*5
	-- tSummerBattle_Package[3306689]["RewardEMoneyMono"] = {}
	-- tSummerBattle_Package[3306689]["RewardEMoneyMono"]["Value"] = 500 -- 赠点, 【需求】赠点

	----120级组亚军奖励
	tSummerBattle_Package[3306690] = {}
	tSummerBattle_Package[3306690]["LogId"] = 12000943
	tSummerBattle_Package[3306690]["SzObj"] = "self"
	tSummerBattle_Package[3306690]["RewardEffect"] = {}
	tSummerBattle_Package[3306690]["RewardEffect"]["Effect"] = "zf2-e128"
	tSummerBattle_Package[3306690]["EventType"] = 170
	tSummerBattle_Package[3306690]["DataType"] = 24
	tSummerBattle_Package[3306690]["DeleteItem"] = {}
	tSummerBattle_Package[3306690]["DeleteItem"][1] = {}
	tSummerBattle_Package[3306690]["DeleteItem"][1]["Id"] = 3306690
	tSummerBattle_Package[3306690]["RewardItem"] = {}
	tSummerBattle_Package[3306690]["RewardItem"][1] = {}
	tSummerBattle_Package[3306690]["RewardItem"][1]["Id"] = 3306697 --通用符文精粹包 
	tSummerBattle_Package[3306690]["RewardItem"][1]["Attr"] = "0 3"
	tSummerBattle_Package[3306690]["RewardItem"][2] = {}
	tSummerBattle_Package[3306690]["RewardItem"][2]["Id"] = 3319013 -- 【库】RareRandomYellowRunePack(B)[属性:9], 【表格】（+1）稀有黄色神纹随机包（赠）*1
	tSummerBattle_Package[3306690]["RewardItem"][2]["Attr"] = "0 1" -- RareRandomYellowRunePack(B)*1
	tSummerBattle_Package[3306690]["RewardStrengthValue"] = {}
	tSummerBattle_Package[3306690]["RewardStrengthValue"]["Value"] = 8000 --80000气力值
	-- tSummerBattle_Package[3306690]["RewardItem"] = {}
	-- tSummerBattle_Package[3306690]["RewardItem"][1] = {}
	-- tSummerBattle_Package[3306690]["RewardItem"][1]["Id"] = 3306697 -- 【库】UniversalRuneEssencePack[属性:0], 【表格】通用神纹精粹包*3
	-- tSummerBattle_Package[3306690]["RewardItem"][1]["Attr"] = "0 3" -- UniversalRuneEssencePack*3
	-- tSummerBattle_Package[3306690]["RewardStrengthValue"] = {}
	-- tSummerBattle_Package[3306690]["RewardStrengthValue"]["Value"] = 8000 -- 气力值, 【需求】8000点气力值
	-- tSummerBattle_Package[3306690]["RewardItem"] = {}
	-- tSummerBattle_Package[3306690]["RewardItem"][1] = {}
	-- tSummerBattle_Package[3306690]["RewardItem"][1]["Id"] = 3009002 -- 【库】PiedraEstrellaRadiante[属性:9], 【表格】晶莹星陨石
	-- tSummerBattle_Package[3306690]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的PiedraEstrellaRadiante*3
	-- tSummerBattle_Package[3306690]["RewardEMoneyMono"] = {}
	-- tSummerBattle_Package[3306690]["RewardEMoneyMono"]["Value"] = 200 -- 赠点, 【需求】赠点

	----120级组季军奖励
	tSummerBattle_Package[3306691] = {}
	tSummerBattle_Package[3306691]["LogId"] = 12000943
	tSummerBattle_Package[3306691]["SzObj"] = "self"
	tSummerBattle_Package[3306691]["RewardEffect"] = {}
	tSummerBattle_Package[3306691]["RewardEffect"]["Effect"] = "zf2-e128"
	tSummerBattle_Package[3306691]["EventType"] = 170
	tSummerBattle_Package[3306691]["DataType"] = 25
	tSummerBattle_Package[3306691]["DeleteItem"] = {}
	tSummerBattle_Package[3306691]["DeleteItem"][1] = {}
	tSummerBattle_Package[3306691]["DeleteItem"][1]["Id"] = 3306691
	tSummerBattle_Package[3306691]["RewardItem"] = {}
	tSummerBattle_Package[3306691]["RewardItem"][1] = {}
	tSummerBattle_Package[3306691]["RewardItem"][1]["Id"] = 3306697 --通用符文精粹包 
	tSummerBattle_Package[3306691]["RewardItem"][1]["Attr"] = "0 2"
	tSummerBattle_Package[3306691]["RewardItem"][2] = {}
	tSummerBattle_Package[3306691]["RewardItem"][2]["Id"] = 3311744 -- 【库】RareYellowRuneFragment[属性:8], 【表格】稀有黄色神纹碎片（赠）*5
	tSummerBattle_Package[3306691]["RewardItem"][2]["Attr"] = "0 5 3" -- RareYellowRuneFragment（赠）*5	
	tSummerBattle_Package[3306691]["RewardStrengthValue"] = {}
	tSummerBattle_Package[3306691]["RewardStrengthValue"]["Value"] = 6000 --60000气力值
	-- tSummerBattle_Package[3306691]["RewardItem"] = {}
	-- tSummerBattle_Package[3306691]["RewardItem"][1] = {}
	-- tSummerBattle_Package[3306691]["RewardItem"][1]["Id"] = 3306697 -- 【库】UniversalRuneEssencePack[属性:0], 【表格】通用神纹精粹包*2
	-- tSummerBattle_Package[3306691]["RewardItem"][1]["Attr"] = "0 2" -- UniversalRuneEssencePack*2
	-- tSummerBattle_Package[3306691]["RewardStrengthValue"] = {}
	-- tSummerBattle_Package[3306691]["RewardStrengthValue"]["Value"] = 6000 -- 气力值, 【需求】6000点气力值
	-- tSummerBattle_Package[3306691]["RewardItem"] = {}
	-- tSummerBattle_Package[3306691]["RewardItem"][1] = {}
	-- tSummerBattle_Package[3306691]["RewardItem"][1]["Id"] = 3009002 -- 【库】PiedraEstrellaRadiante[属性:9], 【表格】晶莹星陨石
	-- tSummerBattle_Package[3306691]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的PiedraEstrellaRadiante*2
	-- tSummerBattle_Package[3306691]["RewardEMoneyMono"] = {}
	-- tSummerBattle_Package[3306691]["RewardEMoneyMono"]["Value"] = 100 -- 赠点, 【需求】赠点

	----120级组4-8名奖励
	tSummerBattle_Package[3306692] = {}
	tSummerBattle_Package[3306692]["LogId"] = 12000943
	tSummerBattle_Package[3306692]["SzObj"] = "self"
	tSummerBattle_Package[3306692]["RewardEffect"] = {}
	tSummerBattle_Package[3306692]["RewardEffect"]["Effect"] = "zf2-e128"
	tSummerBattle_Package[3306692]["EventType"] = 170
	tSummerBattle_Package[3306692]["DataType"] = 26
	tSummerBattle_Package[3306692]["DeleteItem"] = {}
	tSummerBattle_Package[3306692]["DeleteItem"][1] = {}
	tSummerBattle_Package[3306692]["DeleteItem"][1]["Id"] = 3306692
	tSummerBattle_Package[3306692]["RewardItem"] = {}
	tSummerBattle_Package[3306692]["RewardItem"][1] = {}
	tSummerBattle_Package[3306692]["RewardItem"][1]["Id"] = 3306697 --通用符文精粹包 
	tSummerBattle_Package[3306692]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Package[3306692]["RewardStrengthValue"] = {}
	tSummerBattle_Package[3306692]["RewardStrengthValue"]["Value"] = 3000 --3000气力值
	-- tSummerBattle_Package[3306692]["RewardStrengthValue"] = {}
	-- tSummerBattle_Package[3306692]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000点气力值
	-- tSummerBattle_Package[3306692]["RewardItem"] = {}
	-- tSummerBattle_Package[3306692]["RewardItem"][1] = {}
	-- tSummerBattle_Package[3306692]["RewardItem"][1]["Id"] = 3009002 -- 【库】PiedraEstrellaRadiante[属性:9], 【表格】晶莹星陨石
	-- tSummerBattle_Package[3306692]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的PiedraEstrellaRadiante*1

	----130级组冠军奖励
	tSummerBattle_Package[3306685] = {}
	tSummerBattle_Package[3306685]["LogId"] = 12000943
	tSummerBattle_Package[3306685]["SzObj"] = "self"
	tSummerBattle_Package[3306685]["RewardEffect"] = {}
	tSummerBattle_Package[3306685]["RewardEffect"]["Effect"] = "zf2-e128"
	tSummerBattle_Package[3306685]["EventType"] = 170
	tSummerBattle_Package[3306685]["DataType"] = 19
	tSummerBattle_Package[3306685]["DeleteItem"] = {}
	tSummerBattle_Package[3306685]["DeleteItem"][1] = {}
	tSummerBattle_Package[3306685]["DeleteItem"][1]["Id"] = 3306685
	-- tSummerBattle_Package[3306685]["RewardItem"] = {}
	-- tSummerBattle_Package[3306685]["RewardItem"][1] = {}
	-- tSummerBattle_Package[3306685]["RewardItem"][1]["Id"] = 3306697 --通用符文精粹包 
	-- tSummerBattle_Package[3306685]["RewardItem"][1]["Attr"] = "0 5"
	-- tSummerBattle_Package[3306685]["RewardItem"][2] = {}
	-- tSummerBattle_Package[3306685]["RewardItem"][2]["Id"] = 3306510 --黄色符文随机包
	-- tSummerBattle_Package[3306685]["RewardItem"][2]["Attr"] = "0 1"
	-- tSummerBattle_Package[3306685]["RewardStrengthValue"] = {}
	-- tSummerBattle_Package[3306685]["RewardStrengthValue"]["Value"] = 10000 --10000气力值
	-- tSummerBattle_Package[3306685]["RewardTitle"] = {}
	-- tSummerBattle_Package[3306685]["RewardTitle"]["TitleType"] = 2059
	-- tSummerBattle_Package[3306685]["RewardTitle"]["TitleId"] = 2059
	-- tSummerBattle_Package[3306685]["RewardTitle"]["SaveTime"] = 20160
	tSummerBattle_Package[3306685]["RewardTitle"] = {}
	tSummerBattle_Package[3306685]["RewardTitle"]["TitleType"] = 2059 -- 【库】KingTeam, 【表格】“王者战队”称号（14天）
	tSummerBattle_Package[3306685]["RewardTitle"]["TitleId"] = 2059
	tSummerBattle_Package[3306685]["RewardTitle"]["SaveTime"] = 20160 -- 14天时效的[称号]:KingTeam, 【需求】“王者战队”称号（14天）
	tSummerBattle_Package[3306685]["RewardStrengthValue"] = {}
	tSummerBattle_Package[3306685]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000点气力值
	tSummerBattle_Package[3306685]["RewardItem"] = {}
	tSummerBattle_Package[3306685]["RewardItem"][1] = {}
	tSummerBattle_Package[3306685]["RewardItem"][1]["Id"] = 3306837 -- 【库】30-dayGoldenDragonslayerPack[属性:9], 【表格】30天金屠龙刀*2
	tSummerBattle_Package[3306685]["RewardItem"][1]["Attr"] = "0 2" -- 30-dayGoldenDragonslayerPack*2
	tSummerBattle_Package[3306685]["RewardItem"][2] = {}
	tSummerBattle_Package[3306685]["RewardItem"][2]["Id"] = 3306697 -- 【库】UniversalRuneEssencePack[属性:0], 【表格】通用神纹精粹包*5
	tSummerBattle_Package[3306685]["RewardItem"][2]["Attr"] = "0 5" -- UniversalRuneEssencePack*5
	tSummerBattle_Package[3306685]["RewardItem"][3] = {}
	tSummerBattle_Package[3306685]["RewardItem"][3]["Id"] = 3319015 -- 【库】+3RandomRareYellowRunePack(B)[属性:9], 【表格】（+3）稀有黄色神纹随机包（赠）*1
	tSummerBattle_Package[3306685]["RewardItem"][3]["Attr"] = "0 1" -- +3RandomRareYellowRunePack(B)*1
	-- tSummerBattle_Package[3306685]["RewardTitle"] = {}
	-- tSummerBattle_Package[3306685]["RewardTitle"]["TitleType"] = 2035 -- 【库】Legendario, 【表格】武功盖世
	-- tSummerBattle_Package[3306685]["RewardTitle"]["TitleId"] = 2035
	-- tSummerBattle_Package[3306685]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:Legendario, 【需求】武功盖世
	-- tSummerBattle_Package[3306685]["RewardStrengthValue"] = {}
	-- tSummerBattle_Package[3306685]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000点气力值
	-- tSummerBattle_Package[3306685]["RewardItem"] = {}
	-- tSummerBattle_Package[3306685]["RewardItem"][1] = {}
	-- tSummerBattle_Package[3306685]["RewardItem"][1]["Id"] = 3009002 -- 【库】PiedraEstrellaRadiante[属性:9], 【表格】晶莹星陨石
	-- tSummerBattle_Package[3306685]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的PiedraEstrellaRadiante*5
	-- tSummerBattle_Package[3306685]["RewardEMoneyMono"] = {}
	-- tSummerBattle_Package[3306685]["RewardEMoneyMono"]["Value"] = 2000 -- 赠点, 【需求】赠点
	-- tSummerBattle_Package[3306685]["RewardItem"][2] = {}
	-- tSummerBattle_Package[3306685]["RewardItem"][2]["Id"] = 200575 -- 【库】FenixAstral[属性:0], 【表格】九天玄鸟
	-- tSummerBattle_Package[3306685]["RewardItem"][2]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的FenixAstral*1

	----130级组亚军奖励
	tSummerBattle_Package[3306686] = {}
	tSummerBattle_Package[3306686]["LogId"] = 12000943
	tSummerBattle_Package[3306686]["SzObj"] = "self"
	tSummerBattle_Package[3306686]["RewardEffect"] = {}
	tSummerBattle_Package[3306686]["RewardEffect"]["Effect"] = "zf2-e128"
	tSummerBattle_Package[3306686]["EventType"] = 170
	tSummerBattle_Package[3306686]["DataType"] = 20
	tSummerBattle_Package[3306686]["DeleteItem"] = {}
	tSummerBattle_Package[3306686]["DeleteItem"][1] = {}
	tSummerBattle_Package[3306686]["DeleteItem"][1]["Id"] = 3306686
	-- tSummerBattle_Package[3306686]["RewardItem"] = {}
	-- tSummerBattle_Package[3306686]["RewardItem"][1] = {}
	-- tSummerBattle_Package[3306686]["RewardItem"][1]["Id"] = 3306697 --通用符文精粹包 
	-- tSummerBattle_Package[3306686]["RewardItem"][1]["Attr"] = "0 3"
	-- tSummerBattle_Package[3306686]["RewardItem"][2] = {}
	-- tSummerBattle_Package[3306686]["RewardItem"][2]["Id"] = 3306510 --黄色符文随机包
	-- tSummerBattle_Package[3306686]["RewardItem"][2]["Attr"] = "0 1"
	-- tSummerBattle_Package[3306686]["RewardStrengthValue"] = {}
	-- tSummerBattle_Package[3306686]["RewardStrengthValue"]["Value"] = 8000 --80000气力值
	-- tSummerBattle_Package[3306686]["RewardTitle"] = {}
	-- tSummerBattle_Package[3306686]["RewardTitle"]["TitleType"] = 2060
	-- tSummerBattle_Package[3306686]["RewardTitle"]["TitleId"] = 2060
	-- tSummerBattle_Package[3306686]["RewardTitle"]["SaveTime"] = 20160
	tSummerBattle_Package[3306686]["RewardTitle"] = {}
	tSummerBattle_Package[3306686]["RewardTitle"]["TitleType"] = 2060 -- 【库】DominatorTeam, 【表格】“霸者战队”称号（14天）
	tSummerBattle_Package[3306686]["RewardTitle"]["TitleId"] = 2060
	tSummerBattle_Package[3306686]["RewardTitle"]["SaveTime"] = 20160 -- 14天时效的[称号]:DominatorTeam, 【需求】“霸者战队”称号（14天）
	tSummerBattle_Package[3306686]["RewardStrengthValue"] = {}
	tSummerBattle_Package[3306686]["RewardStrengthValue"]["Value"] = 8000 -- 气力值, 【需求】8000点气力值
	tSummerBattle_Package[3306686]["RewardItem"] = {}
	tSummerBattle_Package[3306686]["RewardItem"][1] = {}
	tSummerBattle_Package[3306686]["RewardItem"][1]["Id"] = 3306838 -- 【库】30-daySilverDragonslayerPack[属性:9], 【表格】30天银屠龙刀*2
	tSummerBattle_Package[3306686]["RewardItem"][1]["Attr"] = "0 2" -- 30-daySilverDragonslayerPack*2
	tSummerBattle_Package[3306686]["RewardItem"][2] = {}
	tSummerBattle_Package[3306686]["RewardItem"][2]["Id"] = 3306697 -- 【库】UniversalRuneEssencePack[属性:0], 【表格】通用神纹精粹包*3
	tSummerBattle_Package[3306686]["RewardItem"][2]["Attr"] = "0 3" -- UniversalRuneEssencePack*3
	tSummerBattle_Package[3306686]["RewardItem"][3] = {}
	tSummerBattle_Package[3306686]["RewardItem"][3]["Id"] = 3319014 -- 【库】+2RandomRareYellowRunePack(B)[属性:9], 【表格】（+2）稀有黄色神纹随机包（赠）*1
	tSummerBattle_Package[3306686]["RewardItem"][3]["Attr"] = "0 1" -- +2RandomRareYellowRunePack(B)*1
	-- tSummerBattle_Package[3306686]["RewardTitle"] = {}
	-- tSummerBattle_Package[3306686]["RewardTitle"]["TitleType"] = 2036 -- 【库】Extraordinario, 【表格】武艺绝伦
	-- tSummerBattle_Package[3306686]["RewardTitle"]["TitleId"] = 2036
	-- tSummerBattle_Package[3306686]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:Extraordinario, 【需求】武艺绝伦
	-- tSummerBattle_Package[3306686]["RewardStrengthValue"] = {}
	-- tSummerBattle_Package[3306686]["RewardStrengthValue"]["Value"] = 8000 -- 气力值, 【需求】8000点气力值
	-- tSummerBattle_Package[3306686]["RewardItem"] = {}
	-- tSummerBattle_Package[3306686]["RewardItem"][1] = {}
	-- tSummerBattle_Package[3306686]["RewardItem"][1]["Id"] = 3009002 -- 【库】PiedraEstrellaRadiante[属性:9], 【表格】晶莹星陨石
	-- tSummerBattle_Package[3306686]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的PiedraEstrellaRadiante*3
	-- tSummerBattle_Package[3306686]["RewardEMoneyMono"] = {}
	-- tSummerBattle_Package[3306686]["RewardEMoneyMono"]["Value"] = 1000 -- 赠点, 【需求】赠点
	-- tSummerBattle_Package[3306686]["RewardItem"][2] = {}
	-- tSummerBattle_Package[3306686]["RewardItem"][2]["Id"] = 200575 -- 【库】FenixAstral[属性:0], 【表格】九天玄鸟
	-- tSummerBattle_Package[3306686]["RewardItem"][2]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的FenixAstral*1

	----130级组季军奖励
	tSummerBattle_Package[3306687] = {}
	tSummerBattle_Package[3306687]["LogId"] = 12000943
	tSummerBattle_Package[3306687]["SzObj"] = "self"
	tSummerBattle_Package[3306687]["RewardEffect"] = {}
	tSummerBattle_Package[3306687]["RewardEffect"]["Effect"] = "zf2-e128"
	tSummerBattle_Package[3306687]["EventType"] = 170
	tSummerBattle_Package[3306687]["DataType"] = 21
	tSummerBattle_Package[3306687]["DeleteItem"] = {}
	tSummerBattle_Package[3306687]["DeleteItem"][1] = {}
	tSummerBattle_Package[3306687]["DeleteItem"][1]["Id"] = 3306687
	-- tSummerBattle_Package[3306687]["RewardItem"] = {}
	-- tSummerBattle_Package[3306687]["RewardItem"][1] = {}
	-- tSummerBattle_Package[3306687]["RewardItem"][1]["Id"] = 3306697 --通用符文精粹包 
	-- tSummerBattle_Package[3306687]["RewardItem"][1]["Attr"] = "0 2"
	-- tSummerBattle_Package[3306687]["RewardItem"][2] = {}
	-- tSummerBattle_Package[3306687]["RewardItem"][2]["Id"] = 3306510 --黄色符文随机包
	-- tSummerBattle_Package[3306687]["RewardItem"][2]["Attr"] = "0 1"
	-- tSummerBattle_Package[3306687]["RewardStrengthValue"] = {}
	-- tSummerBattle_Package[3306687]["RewardStrengthValue"]["Value"] = 6000 --60000气力值
	-- tSummerBattle_Package[3306687]["RewardTitle"] = {}
	-- tSummerBattle_Package[3306687]["RewardTitle"]["TitleType"] = 2061
	-- tSummerBattle_Package[3306687]["RewardTitle"]["TitleId"] = 2061
	-- tSummerBattle_Package[3306687]["RewardTitle"]["SaveTime"] = 20160
	tSummerBattle_Package[3306687]["RewardTitle"] = {}
	tSummerBattle_Package[3306687]["RewardTitle"]["TitleType"] = 2061 -- 【库】PowerTeam, 【表格】“强者战队”称号（14天）
	tSummerBattle_Package[3306687]["RewardTitle"]["TitleId"] = 2061
	tSummerBattle_Package[3306687]["RewardTitle"]["SaveTime"] = 20160 -- 14天时效的[称号]:PowerTeam, 【需求】“强者战队”称号（14天）
	tSummerBattle_Package[3306687]["RewardStrengthValue"] = {}
	tSummerBattle_Package[3306687]["RewardStrengthValue"]["Value"] = 6000 -- 气力值, 【需求】6000点气力值
	tSummerBattle_Package[3306687]["RewardItem"] = {}
	tSummerBattle_Package[3306687]["RewardItem"][1] = {}
	tSummerBattle_Package[3306687]["RewardItem"][1]["Id"] = 3306839 -- 【库】30-dayBronzeDragonslayerPack[属性:9], 【表格】30天铜屠龙刀*2
	tSummerBattle_Package[3306687]["RewardItem"][1]["Attr"] = "0 2" -- 30-dayBronzeDragonslayerPack*2
	tSummerBattle_Package[3306687]["RewardItem"][2] = {}
	tSummerBattle_Package[3306687]["RewardItem"][2]["Id"] = 3306697 -- 【库】UniversalRuneEssencePack[属性:0], 【表格】通用神纹精粹包*2
	tSummerBattle_Package[3306687]["RewardItem"][2]["Attr"] = "0 2" -- UniversalRuneEssencePack*2
	tSummerBattle_Package[3306687]["RewardItem"][3] = {}
	tSummerBattle_Package[3306687]["RewardItem"][3]["Id"] = 3319013 -- 【库】RareRandomYellowRunePack(B)[属性:9], 【表格】（+1）稀有黄色神纹随机包（赠）*1
	tSummerBattle_Package[3306687]["RewardItem"][3]["Attr"] = "0 1" -- RareRandomYellowRunePack(B)*1
	-- tSummerBattle_Package[3306687]["RewardTitle"] = {}
	-- tSummerBattle_Package[3306687]["RewardTitle"]["TitleType"] = 2037 -- 【库】Relevante, 【表格】武技超群
	-- tSummerBattle_Package[3306687]["RewardTitle"]["TitleId"] = 2037
	-- tSummerBattle_Package[3306687]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:Relevante, 【需求】武技超群
	-- tSummerBattle_Package[3306687]["RewardStrengthValue"] = {}
	-- tSummerBattle_Package[3306687]["RewardStrengthValue"]["Value"] = 6000 -- 气力值, 【需求】6000点气力值
	-- tSummerBattle_Package[3306687]["RewardItem"] = {}
	-- tSummerBattle_Package[3306687]["RewardItem"][1] = {}
	-- tSummerBattle_Package[3306687]["RewardItem"][1]["Id"] = 3009002 -- 【库】PiedraEstrellaRadiante[属性:9], 【表格】晶莹星陨石
	-- tSummerBattle_Package[3306687]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的PiedraEstrellaRadiante*1
	-- tSummerBattle_Package[3306687]["RewardEMoneyMono"] = {}
	-- tSummerBattle_Package[3306687]["RewardEMoneyMono"]["Value"] = 750 -- 赠点, 【需求】赠点
	-- tSummerBattle_Package[3306687]["RewardItem"][2] = {}
	-- tSummerBattle_Package[3306687]["RewardItem"][2]["Id"] = 200575 -- 【库】FenixAstral[属性:0], 【表格】九天玄鸟
	-- tSummerBattle_Package[3306687]["RewardItem"][2]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的FenixAstral*1

	
	----130级组4-8名奖励
	tSummerBattle_Package[3306688] = {}
	tSummerBattle_Package[3306688]["LogId"] = 12000943
	tSummerBattle_Package[3306688]["SzObj"] = "self"
	tSummerBattle_Package[3306688]["RewardEffect"] = {}
	tSummerBattle_Package[3306688]["RewardEffect"]["Effect"] = "zf2-e128"
	tSummerBattle_Package[3306688]["EventType"] = 170
	tSummerBattle_Package[3306688]["DataType"] = 22
	tSummerBattle_Package[3306688]["DeleteItem"] = {}
	tSummerBattle_Package[3306688]["DeleteItem"][1] = {}
	tSummerBattle_Package[3306688]["DeleteItem"][1]["Id"] = 3306688
	-- tSummerBattle_Package[3306688]["RewardItem"] = {}
	-- tSummerBattle_Package[3306688]["RewardItem"][1] = {}
	-- tSummerBattle_Package[3306688]["RewardItem"][1]["Id"] = 3306697 --通用符文精粹包 
	-- tSummerBattle_Package[3306688]["RewardItem"][1]["Attr"] = "0 1"
	-- tSummerBattle_Package[3306688]["RewardItem"][2] = {}
	-- tSummerBattle_Package[3306688]["RewardItem"][2]["Id"] = 3306510 --黄色符文随机包
	-- tSummerBattle_Package[3306688]["RewardItem"][2]["Attr"] = "0 1"
	-- tSummerBattle_Package[3306688]["RewardStrengthValue"] = {}
	-- tSummerBattle_Package[3306688]["RewardStrengthValue"]["Value"] = 3000 --30000气力值
	-- tSummerBattle_Package[3306688]["RewardTitle"] = {}
	-- tSummerBattle_Package[3306688]["RewardTitle"]["TitleType"] = 2062
	-- tSummerBattle_Package[3306688]["RewardTitle"]["TitleId"] = 2062
	-- tSummerBattle_Package[3306688]["RewardTitle"]["SaveTime"] = 20160
	tSummerBattle_Package[3306688]["RewardTitle"] = {}
	tSummerBattle_Package[3306688]["RewardTitle"]["TitleType"] = 2062 -- 【库】EliteTeam, 【表格】“精英战队”称号（14天）
	tSummerBattle_Package[3306688]["RewardTitle"]["TitleId"] = 2062
	tSummerBattle_Package[3306688]["RewardTitle"]["SaveTime"] = 20160 -- 14天时效的[称号]:EliteTeam, 【需求】“精英战队”称号（14天）
	tSummerBattle_Package[3306688]["RewardStrengthValue"] = {}
	tSummerBattle_Package[3306688]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000点气力值
	tSummerBattle_Package[3306688]["RewardItem"] = {}
	tSummerBattle_Package[3306688]["RewardItem"][1] = {}
	tSummerBattle_Package[3306688]["RewardItem"][1]["Id"] = 3306840 -- 【库】15-dayBronzeDragonslayerPack[属性:9], 【表格】15天铜屠龙刀*2
	tSummerBattle_Package[3306688]["RewardItem"][1]["Attr"] = "0 2" -- 15-dayBronzeDragonslayerPack*2
	tSummerBattle_Package[3306688]["RewardItem"][2] = {}
	tSummerBattle_Package[3306688]["RewardItem"][2]["Id"] = 3306697 -- 【库】UniversalRuneEssencePack[属性:0], 【表格】通用神纹精粹包*1
	tSummerBattle_Package[3306688]["RewardItem"][2]["Attr"] = "0 1" -- UniversalRuneEssencePack*1
	tSummerBattle_Package[3306688]["RewardItem"][3] = {}
	tSummerBattle_Package[3306688]["RewardItem"][3]["Id"] = 3311744 -- 【库】RareYellowRuneFragment[属性:8], 【表格】稀有黄色神纹碎片（赠）*10
	tSummerBattle_Package[3306688]["RewardItem"][3]["Attr"] = "0 10 3" -- RareYellowRuneFragment（赠）*10
	-- tSummerBattle_Package[3306688]["RewardTitle"] = {}
	-- tSummerBattle_Package[3306688]["RewardTitle"]["TitleType"] = 2038 -- 【库】Experto, 【表格】武林高手
	-- tSummerBattle_Package[3306688]["RewardTitle"]["TitleId"] = 2038
	-- tSummerBattle_Package[3306688]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:Experto, 【需求】武林高手
	-- tSummerBattle_Package[3306688]["RewardStrengthValue"] = {}
	-- tSummerBattle_Package[3306688]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000点气力值
	-- tSummerBattle_Package[3306688]["RewardItem"] = {}
	-- tSummerBattle_Package[3306688]["RewardItem"][1] = {}
	-- tSummerBattle_Package[3306688]["RewardItem"][1]["Id"] = 3009001 -- 【库】PiedraEstrellaBrillante[属性:9], 【表格】明亮星陨石
	-- tSummerBattle_Package[3306688]["RewardItem"][1]["Attr"] = "0 8 0 2880 1" -- 2天时效(激活)的PiedraEstrellaBrillante*5
	-- tSummerBattle_Package[3306688]["RewardEMoneyMono"] = {}
	-- tSummerBattle_Package[3306688]["RewardEMoneyMono"]["Value"] = 500 -- 赠点, 【需求】赠点
	-- tSummerBattle_Package[3306688]["RewardItem"][2] = {}
	-- tSummerBattle_Package[3306688]["RewardItem"][2]["Id"] = 200575 -- 【库】FenixAstral[属性:0], 【表格】九天玄鸟
	-- tSummerBattle_Package[3306688]["RewardItem"][2]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的FenixAstral*1

	-- ===（+3）稀有黄色神纹随机包
	-- ===索引: tSummerBattle_Package[3323515][1]
	-- ===删除: 3323515,1
	tSummerBattle_Package[3323515] = {}
	tSummerBattle_Package[3323515][1] = {}
	tSummerBattle_Package[3323515][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tSummerBattle_Package[3323515][1]["DeleteItem"] = {}
	tSummerBattle_Package[3323515][1]["DeleteItem"][1] = {}
	tSummerBattle_Package[3323515][1]["DeleteItem"][1]["Id"] = 3323515 -- 【库】(+3)稀有黄色神纹随机包[属性:8]
	tSummerBattle_Package[3323515][1]["LogId"] = 12000760
	-- 神罗天征（+3） - 5.00%
	tSummerBattle_Package[3323515][1][1] = {}
	tSummerBattle_Package[3323515][1][1]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3323515][1][1]["ItemChance"] = 500
	tSummerBattle_Package[3323515][1][1]["RewardItem"] = {}
	tSummerBattle_Package[3323515][1][1]["RewardItem"][1] = {}
	tSummerBattle_Package[3323515][1][1]["RewardItem"][1]["Id"] = 4032003 -- 神罗天征(+3)[4032003][属性:8][叠加:0][金币:0], 【表格】神罗天征（+3）
	tSummerBattle_Package[3323515][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 神罗天征(+3)*1
	-- 爆炎诀（+3） - 5.00%
	tSummerBattle_Package[3323515][1][2] = {}
	tSummerBattle_Package[3323515][1][2]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3323515][1][2]["ItemChance"] = 500
	tSummerBattle_Package[3323515][1][2]["RewardItem"] = {}
	tSummerBattle_Package[3323515][1][2]["RewardItem"][1] = {}
	tSummerBattle_Package[3323515][1][2]["RewardItem"][1]["Id"] = 4032103 -- 爆炎诀(+3)[4032103][属性:8][叠加:0][金币:0], 【表格】爆炎诀（+3）
	tSummerBattle_Package[3323515][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 爆炎诀(+3)*1
	-- 清心诀（+3） - 5.00%
	tSummerBattle_Package[3323515][1][3] = {}
	tSummerBattle_Package[3323515][1][3]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3323515][1][3]["ItemChance"] = 500
	tSummerBattle_Package[3323515][1][3]["RewardItem"] = {}
	tSummerBattle_Package[3323515][1][3]["RewardItem"][1] = {}
	tSummerBattle_Package[3323515][1][3]["RewardItem"][1]["Id"] = 4032203 -- 清心诀(+3)[4032203][属性:8][叠加:0][金币:0], 【表格】清心诀（+3）
	tSummerBattle_Package[3323515][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 清心诀(+3)*1
	-- 天衣无缝（+3） - 5.00%
	tSummerBattle_Package[3323515][1][4] = {}
	tSummerBattle_Package[3323515][1][4]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3323515][1][4]["ItemChance"] = 500
	tSummerBattle_Package[3323515][1][4]["RewardItem"] = {}
	tSummerBattle_Package[3323515][1][4]["RewardItem"][1] = {}
	tSummerBattle_Package[3323515][1][4]["RewardItem"][1]["Id"] = 4032303 -- 天衣无缝(+3)[4032303][属性:8][叠加:0][金币:0], 【表格】天衣无缝（+3）
	tSummerBattle_Package[3323515][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 天衣无缝(+3)*1
	-- 祭灵诀（+3） - 1.50%
	tSummerBattle_Package[3323515][1][5] = {}
	tSummerBattle_Package[3323515][1][5]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3323515][1][5]["ItemChance"] = 150
	tSummerBattle_Package[3323515][1][5]["RewardItem"] = {}
	tSummerBattle_Package[3323515][1][5]["RewardItem"][1] = {}
	tSummerBattle_Package[3323515][1][5]["RewardItem"][1]["Id"] = 4032403 -- 祭灵诀(+3)[4032403][属性:8][叠加:0][金币:0], 【表格】祭灵诀（+3）
	tSummerBattle_Package[3323515][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 祭灵诀(+3)*1
	-- 横扫千军（+3） - 1.50%
	tSummerBattle_Package[3323515][1][6] = {}
	tSummerBattle_Package[3323515][1][6]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3323515][1][6]["ItemChance"] = 150
	tSummerBattle_Package[3323515][1][6]["RewardItem"] = {}
	tSummerBattle_Package[3323515][1][6]["RewardItem"][1] = {}
	tSummerBattle_Package[3323515][1][6]["RewardItem"][1]["Id"] = 4032503 -- 横扫千军(+3)[4032503][属性:8][叠加:0][金币:0], 【表格】横扫千军（+3）
	tSummerBattle_Package[3323515][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 横扫千军(+3)*1
	-- 涅槃重生（+3） - 5.00%
	tSummerBattle_Package[3323515][1][7] = {}
	tSummerBattle_Package[3323515][1][7]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3323515][1][7]["ItemChance"] = 500
	tSummerBattle_Package[3323515][1][7]["RewardItem"] = {}
	tSummerBattle_Package[3323515][1][7]["RewardItem"][1] = {}
	tSummerBattle_Package[3323515][1][7]["RewardItem"][1]["Id"] = 4032603 -- 涅槃重生(+3)[4032603][属性:8][叠加:0][金币:0], 【表格】涅槃重生（+3）
	tSummerBattle_Package[3323515][1][7]["RewardItem"][1]["Attr"] = "0 1" -- 涅槃重生(+3)*1
	-- 锋芒毕露（+3） - 1.50%
	tSummerBattle_Package[3323515][1][8] = {}
	tSummerBattle_Package[3323515][1][8]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3323515][1][8]["ItemChance"] = 150
	tSummerBattle_Package[3323515][1][8]["RewardItem"] = {}
	tSummerBattle_Package[3323515][1][8]["RewardItem"][1] = {}
	tSummerBattle_Package[3323515][1][8]["RewardItem"][1]["Id"] = 4032703 -- 锋芒毕露(+3)[4032703][属性:8][叠加:0][金币:0], 【表格】锋芒毕露（+3）
	tSummerBattle_Package[3323515][1][8]["RewardItem"][1]["Attr"] = "0 1" -- 锋芒毕露(+3)*1
	-- 魂兮归来（+3） - 5.00%
	tSummerBattle_Package[3323515][1][9] = {}
	tSummerBattle_Package[3323515][1][9]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3323515][1][9]["ItemChance"] = 500
	tSummerBattle_Package[3323515][1][9]["RewardItem"] = {}
	tSummerBattle_Package[3323515][1][9]["RewardItem"][1] = {}
	tSummerBattle_Package[3323515][1][9]["RewardItem"][1]["Id"] = 4032803 -- 魂兮归来(+3)[4032803][属性:8][叠加:0][金币:0], 【表格】魂兮归来（+3）
	tSummerBattle_Package[3323515][1][9]["RewardItem"][1]["Attr"] = "0 1" -- 魂兮归来(+3)*1
	-- 玄武护体（+3） - 1.50%
	tSummerBattle_Package[3323515][1][10] = {}
	tSummerBattle_Package[3323515][1][10]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3323515][1][10]["ItemChance"] = 150
	tSummerBattle_Package[3323515][1][10]["RewardItem"] = {}
	tSummerBattle_Package[3323515][1][10]["RewardItem"][1] = {}
	tSummerBattle_Package[3323515][1][10]["RewardItem"][1]["Id"] = 4031603 -- 玄武护体(+3)[4031603][属性:8][叠加:0][金币:0], 【表格】玄武护体（+3）
	tSummerBattle_Package[3323515][1][10]["RewardItem"][1]["Attr"] = "0 1" -- 玄武护体(+3)*1
	-- 攻城掠地（+3） - 5.00%
	tSummerBattle_Package[3323515][1][11] = {}
	tSummerBattle_Package[3323515][1][11]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3323515][1][11]["ItemChance"] = 500
	tSummerBattle_Package[3323515][1][11]["RewardItem"] = {}
	tSummerBattle_Package[3323515][1][11]["RewardItem"][1] = {}
	tSummerBattle_Package[3323515][1][11]["RewardItem"][1]["Id"] = 4031503 -- 攻城掠地(+3)[4031503][属性:8][叠加:0][金币:0], 【表格】攻城掠地（+3）
	tSummerBattle_Package[3323515][1][11]["RewardItem"][1]["Attr"] = "0 1" -- 攻城掠地(+3)*1
	-- 策马扬鞭（+3） - 5.00%
	tSummerBattle_Package[3323515][1][12] = {}
	tSummerBattle_Package[3323515][1][12]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3323515][1][12]["ItemChance"] = 500
	tSummerBattle_Package[3323515][1][12]["RewardItem"] = {}
	tSummerBattle_Package[3323515][1][12]["RewardItem"][1] = {}
	tSummerBattle_Package[3323515][1][12]["RewardItem"][1]["Id"] = 4031403 -- 策马扬鞭(+3)[4031403][属性:8][叠加:0][金币:0], 【表格】策马扬鞭（+3）
	tSummerBattle_Package[3323515][1][12]["RewardItem"][1]["Attr"] = "0 1" -- 策马扬鞭(+3)*1
	-- 乾坤护法（+3） - 5.00%
	tSummerBattle_Package[3323515][1][13] = {}
	tSummerBattle_Package[3323515][1][13]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3323515][1][13]["ItemChance"] = 500
	tSummerBattle_Package[3323515][1][13]["RewardItem"] = {}
	tSummerBattle_Package[3323515][1][13]["RewardItem"][1] = {}
	tSummerBattle_Package[3323515][1][13]["RewardItem"][1]["Id"] = 4034003 -- 乾坤护法(+3)[4034003][属性:8][叠加:0][金币:0], 【表格】乾坤护法（+3）
	tSummerBattle_Package[3323515][1][13]["RewardItem"][1]["Attr"] = "0 1" -- 乾坤护法(+3)*1
	-- 斗转星移（+3） - 5.00%
	tSummerBattle_Package[3323515][1][14] = {}
	tSummerBattle_Package[3323515][1][14]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3323515][1][14]["ItemChance"] = 500
	tSummerBattle_Package[3323515][1][14]["RewardItem"] = {}
	tSummerBattle_Package[3323515][1][14]["RewardItem"][1] = {}
	tSummerBattle_Package[3323515][1][14]["RewardItem"][1]["Id"] = 4033903 -- 斗转星移(+3)[4033903][属性:8][叠加:0][金币:0], 【表格】斗转星移（+3）
	tSummerBattle_Package[3323515][1][14]["RewardItem"][1]["Attr"] = "0 1" -- 斗转星移(+3)*1
	-- 会心一击（+3） - 5.00%
	tSummerBattle_Package[3323515][1][15] = {}
	tSummerBattle_Package[3323515][1][15]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3323515][1][15]["ItemChance"] = 500
	tSummerBattle_Package[3323515][1][15]["RewardItem"] = {}
	tSummerBattle_Package[3323515][1][15]["RewardItem"][1] = {}
	tSummerBattle_Package[3323515][1][15]["RewardItem"][1]["Id"] = 4033403 -- 会心一击(+3)[4033403][属性:8][叠加:0][金币:0], 【表格】会心一击（+3）
	tSummerBattle_Package[3323515][1][15]["RewardItem"][1]["Attr"] = "0 1" -- 会心一击(+3)*1
	-- 威慑（+3） - 5.00%
	tSummerBattle_Package[3323515][1][16] = {}
	tSummerBattle_Package[3323515][1][16]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3323515][1][16]["ItemChance"] = 500
	tSummerBattle_Package[3323515][1][16]["RewardItem"] = {}
	tSummerBattle_Package[3323515][1][16]["RewardItem"][1] = {}
	tSummerBattle_Package[3323515][1][16]["RewardItem"][1]["Id"] = 4034103 -- 威慑(+3)[4034103][属性:8][叠加:0][金币:0], 【表格】威慑（+3）
	tSummerBattle_Package[3323515][1][16]["RewardItem"][1]["Attr"] = "0 1" -- 威慑(+3)*1
	-- 致命准星（+3） - 5.00%
	tSummerBattle_Package[3323515][1][17] = {}
	tSummerBattle_Package[3323515][1][17]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3323515][1][17]["ItemChance"] = 500
	tSummerBattle_Package[3323515][1][17]["RewardItem"] = {}
	tSummerBattle_Package[3323515][1][17]["RewardItem"][1] = {}
	tSummerBattle_Package[3323515][1][17]["RewardItem"][1]["Id"] = 4033303 -- 致命准星(+3)[4033303][属性:8][叠加:0][金币:0], 【表格】致命准星（+3）
	tSummerBattle_Package[3323515][1][17]["RewardItem"][1]["Attr"] = "0 1" -- 致命准星(+3)*1
	-- 例无虚发（+3） - 5.00%
	tSummerBattle_Package[3323515][1][18] = {}
	tSummerBattle_Package[3323515][1][18]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3323515][1][18]["ItemChance"] = 500
	tSummerBattle_Package[3323515][1][18]["RewardItem"] = {}
	tSummerBattle_Package[3323515][1][18]["RewardItem"][1] = {}
	tSummerBattle_Package[3323515][1][18]["RewardItem"][1]["Id"] = 4032903 -- 例无虚发(+3)[4032903][属性:8][叠加:0][金币:0], 【表格】例无虚发（+3）
	tSummerBattle_Package[3323515][1][18]["RewardItem"][1]["Attr"] = "0 1" -- 例无虚发(+3)*1
	-- 审判（+3） - 5.00%
	tSummerBattle_Package[3323515][1][19] = {}
	tSummerBattle_Package[3323515][1][19]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3323515][1][19]["ItemChance"] = 500
	tSummerBattle_Package[3323515][1][19]["RewardItem"] = {}
	tSummerBattle_Package[3323515][1][19]["RewardItem"][1] = {}
	tSummerBattle_Package[3323515][1][19]["RewardItem"][1]["Id"] = 4033003 -- 审判(+3)[4033003][属性:8][叠加:0][金币:0], 【表格】审判（+3）
	tSummerBattle_Package[3323515][1][19]["RewardItem"][1]["Attr"] = "0 1" -- 审判(+3)*1
	-- 乾坤妙法（+3） - 2.75%
	tSummerBattle_Package[3323515][1][20] = {}
	tSummerBattle_Package[3323515][1][20]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3323515][1][20]["ItemChance"] = 275
	tSummerBattle_Package[3323515][1][20]["RewardItem"] = {}
	tSummerBattle_Package[3323515][1][20]["RewardItem"][1] = {}
	tSummerBattle_Package[3323515][1][20]["RewardItem"][1]["Id"] = 4034203 -- 乾坤妙法(+3)[4034203][属性:8][叠加:0][金币:0], 【表格】乾坤妙法（+3）
	tSummerBattle_Package[3323515][1][20]["RewardItem"][1]["Attr"] = "0 1" -- 乾坤妙法(+3)*1
	-- 罡气护体（+3） - 2.75%
	tSummerBattle_Package[3323515][1][21] = {}
	tSummerBattle_Package[3323515][1][21]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3323515][1][21]["ItemChance"] = 275
	tSummerBattle_Package[3323515][1][21]["RewardItem"] = {}
	tSummerBattle_Package[3323515][1][21]["RewardItem"][1] = {}
	tSummerBattle_Package[3323515][1][21]["RewardItem"][1]["Id"] = 4034303 -- 罡气护体(+3)[4034303][属性:8][叠加:0][金币:0], 【表格】罡气护体（+3）
	tSummerBattle_Package[3323515][1][21]["RewardItem"][1]["Attr"] = "0 1" -- 罡气护体(+3)*1
	-- 沧澜破（+3） - 2.75%
	tSummerBattle_Package[3323515][1][22] = {}
	tSummerBattle_Package[3323515][1][22]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3323515][1][22]["ItemChance"] = 275
	tSummerBattle_Package[3323515][1][22]["RewardItem"] = {}
	tSummerBattle_Package[3323515][1][22]["RewardItem"][1] = {}
	tSummerBattle_Package[3323515][1][22]["RewardItem"][1]["Id"] = 4034403 -- 沧澜破(+3)[4034403][属性:8][叠加:0][金币:0], 【表格】沧澜破（+3）
	tSummerBattle_Package[3323515][1][22]["RewardItem"][1]["Attr"] = "0 1" -- 沧澜破(+3)*1
	-- 妙手回春（+3） - 2.75%
	tSummerBattle_Package[3323515][1][23] = {}
	tSummerBattle_Package[3323515][1][23]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3323515][1][23]["ItemChance"] = 275
	tSummerBattle_Package[3323515][1][23]["RewardItem"] = {}
	tSummerBattle_Package[3323515][1][23]["RewardItem"][1] = {}
	tSummerBattle_Package[3323515][1][23]["RewardItem"][1]["Id"] = 4034503 -- 妙手回春(+3)[4034503][属性:8][叠加:0][金币:0], 【表格】妙手回春（+3）
	tSummerBattle_Package[3323515][1][23]["RewardItem"][1]["Attr"] = "0 1" -- 妙手回春(+3)*1
	-- 碎魔屏障（+3） - 2.75%
	tSummerBattle_Package[3323515][1][24] = {}
	tSummerBattle_Package[3323515][1][24]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3323515][1][24]["ItemChance"] = 275
	tSummerBattle_Package[3323515][1][24]["RewardItem"] = {}
	tSummerBattle_Package[3323515][1][24]["RewardItem"][1] = {}
	tSummerBattle_Package[3323515][1][24]["RewardItem"][1]["Id"] = 4034603 -- 碎魔屏障(+3)[4034603][属性:8][叠加:0][金币:0], 【表格】碎魔屏障（+3）
	tSummerBattle_Package[3323515][1][24]["RewardItem"][1]["Attr"] = "0 1" -- 碎魔屏障(+3)*1
	-- 天地化盾（+3） - 2.75%
	tSummerBattle_Package[3323515][1][25] = {}
	tSummerBattle_Package[3323515][1][25]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3323515][1][25]["ItemChance"] = 275
	tSummerBattle_Package[3323515][1][25]["RewardItem"] = {}
	tSummerBattle_Package[3323515][1][25]["RewardItem"][1] = {}
	tSummerBattle_Package[3323515][1][25]["RewardItem"][1]["Id"] = 4034703 -- 天地化盾(+3)[4034703][属性:8][叠加:0][金币:0], 【表格】天地化盾（+3）
	tSummerBattle_Package[3323515][1][25]["RewardItem"][1]["Attr"] = "0 1" -- 天地化盾(+3)*1
	-- 碎玄元（+3） - 2.50%
	tSummerBattle_Package[3323515][1][26] = {}
	tSummerBattle_Package[3323515][1][26]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3323515][1][26]["ItemChance"] = 250
	tSummerBattle_Package[3323515][1][26]["RewardItem"] = {}
	tSummerBattle_Package[3323515][1][26]["RewardItem"][1] = {}
	tSummerBattle_Package[3323515][1][26]["RewardItem"][1]["Id"] = 4034803 -- 碎玄元(+3)[4034803][属性:8][叠加:0][金币:0], 【表格】碎玄元（+3）
	tSummerBattle_Package[3323515][1][26]["RewardItem"][1]["Attr"] = "0 1" -- 碎玄元(+3)*1
-- 4034901	不死之身(+1)	0%
	tSummerBattle_Package[3323515][1][27] = {}
	tSummerBattle_Package[3323515][1][27]["RandomItemChanceType"] = 2
	tSummerBattle_Package[3323515][1][27]["ItemChance"] = 0
	tSummerBattle_Package[3323515][1][27]["RewardItem"] = {}
	tSummerBattle_Package[3323515][1][27]["RewardItem"][1] = {}
	tSummerBattle_Package[3323515][1][27]["RewardItem"][1]["Id"] = 4034901
	tSummerBattle_Package[3323515][1][27]["RewardItem"][1]["Attr"] = "0 1 "

	
	-- stc掩码
local tSummerBattl_UniversalRunesPackStc = {}
	tSummerBattl_UniversalRunesPackStc["EventType"] = 170
	tSummerBattl_UniversalRunesPackStc["DataType"] = 18
-- 通用符文精粹包	
local tSummerBattl_UniversalRunesPack = {}
	tSummerBattl_UniversalRunesPack[3306697] = {}
	tSummerBattl_UniversalRunesPack[3306697]["LogId"] = 12000943
	tSummerBattl_UniversalRunesPack[3306697]["ItemChanceSum"] = 10000
	tSummerBattl_UniversalRunesPack[3306697][1] = {}
	tSummerBattl_UniversalRunesPack[3306697][1]["SzObj"] = "self"
	tSummerBattl_UniversalRunesPack[3306697][1]["RewardEffect"] = {}
	tSummerBattl_UniversalRunesPack[3306697][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tSummerBattl_UniversalRunesPack[3306697][1]["RandomItemChanceType"] = 2
	tSummerBattl_UniversalRunesPack[3306697][1]["ItemChance"] = 5000
	tSummerBattl_UniversalRunesPack[3306697][1]["RewardItem"] = {}
	tSummerBattl_UniversalRunesPack[3306697][1]["RewardItem"][1] = {}
	tSummerBattl_UniversalRunesPack[3306697][1]["RewardItem"][1]["Id"] = 4060001
	tSummerBattl_UniversalRunesPack[3306697][1]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattl_UniversalRunesPack[3306697][2] = {}
	tSummerBattl_UniversalRunesPack[3306697][2]["SzObj"] = "self"
	tSummerBattl_UniversalRunesPack[3306697][2]["RewardEffect"] = {}
	tSummerBattl_UniversalRunesPack[3306697][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tSummerBattl_UniversalRunesPack[3306697][2]["RandomItemChanceType"] = 2
	tSummerBattl_UniversalRunesPack[3306697][2]["ItemChance"] = 3000
	tSummerBattl_UniversalRunesPack[3306697][2]["RewardItem"] = {}
	tSummerBattl_UniversalRunesPack[3306697][2]["RewardItem"][1] = {}
	tSummerBattl_UniversalRunesPack[3306697][2]["RewardItem"][1]["Id"] = 4060001
	tSummerBattl_UniversalRunesPack[3306697][2]["RewardItem"][1]["Attr"] = "0 5"
	tSummerBattl_UniversalRunesPack[3306697][3] = {}
	tSummerBattl_UniversalRunesPack[3306697][3]["SzObj"] = "self"
	tSummerBattl_UniversalRunesPack[3306697][3]["RewardEffect"] = {}
	tSummerBattl_UniversalRunesPack[3306697][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tSummerBattl_UniversalRunesPack[3306697][3]["RandomItemChanceType"] = 2
	tSummerBattl_UniversalRunesPack[3306697][3]["ItemChance"] = 1500
	tSummerBattl_UniversalRunesPack[3306697][3]["RewardItem"] = {}
	tSummerBattl_UniversalRunesPack[3306697][3]["RewardItem"][1] = {}
	tSummerBattl_UniversalRunesPack[3306697][3]["RewardItem"][1]["Id"] = 4060001
	tSummerBattl_UniversalRunesPack[3306697][3]["RewardItem"][1]["Attr"] = "0 10"
	tSummerBattl_UniversalRunesPack[3306697][4] = {}
	tSummerBattl_UniversalRunesPack[3306697][4]["SzObj"] = "self"
	tSummerBattl_UniversalRunesPack[3306697][4]["RewardEffect"] = {}
	tSummerBattl_UniversalRunesPack[3306697][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tSummerBattl_UniversalRunesPack[3306697][4]["RandomItemChanceType"] = 2
	tSummerBattl_UniversalRunesPack[3306697][4]["ItemChance"] = 500
	tSummerBattl_UniversalRunesPack[3306697][4]["RewardItem"] = {}
	tSummerBattl_UniversalRunesPack[3306697][4]["RewardItem"][1] = {}
	tSummerBattl_UniversalRunesPack[3306697][4]["RewardItem"][1]["Id"] = 4060001
	tSummerBattl_UniversalRunesPack[3306697][4]["RewardItem"][1]["Attr"] = "0 20"

-- 收纳包配置
local tSummerBattle_StorageBag = {}
	-- 热力沙滩时装碎片
	tSummerBattle_StorageBag[3303696] = {}
	tSummerBattle_StorageBag[3303696]["ItemNum"] = 15
	-- 对应收纳包里的选项
	tSummerBattle_StorageBag[3303696]["Option"] = 11
	tSummerBattle_StorageBag[3303696]["RewardId"] = 184345
	tSummerBattle_StorageBag[3303696]["Text"] = "Text103"
	tSummerBattle_StorageBag[3303696]["Len"] = 0

	-- 3303697 盛夏海风时装碎片
	tSummerBattle_StorageBag[3303697] = {}
	tSummerBattle_StorageBag[3303697]["ItemNum"] = 15
	-- 对应收纳包里的选项
	tSummerBattle_StorageBag[3303697]["Option"] = 12
	tSummerBattle_StorageBag[3303697]["RewardId"] = 192495
	tSummerBattle_StorageBag[3303697]["Text"] = "Text105"
	tSummerBattle_StorageBag[3303697]["Len"] = 0

	-- 3303698 夏威夷阳光时装碎片
	tSummerBattle_StorageBag[3303698] = {}
	tSummerBattle_StorageBag[3303698]["ItemNum"] = 25
	-- 对应收纳包里的选项
	tSummerBattle_StorageBag[3303698]["Option"] = 13
	tSummerBattle_StorageBag[3303698]["RewardId"] = 189665
	tSummerBattle_StorageBag[3303698]["Text"] = "Text107"
	tSummerBattle_StorageBag[3303698]["Len"] = 0

	-- 3303699 梦幻泡泡液碎片
	tSummerBattle_StorageBag[3303699] = {}
	tSummerBattle_StorageBag[3303699]["ItemNum"] = 5
	-- 对应收纳包里的选项
	tSummerBattle_StorageBag[3303699]["Option"] = 17
	tSummerBattle_StorageBag[3303699]["RewardId"] = 3303759
	tSummerBattle_StorageBag[3303699]["Text"] = "Text106"
	tSummerBattle_StorageBag[3303699]["Len"] = 10
	tSummerBattle_StorageBag[3303699]["Front"] = 3303697

	-- 3303700 泳装外套洗赠液碎片
	tSummerBattle_StorageBag[3303700] = {}
	tSummerBattle_StorageBag[3303700]["ItemNum"] = 5
	-- 对应收纳包里的选项
	tSummerBattle_StorageBag[3303700]["Option"] = 19
	tSummerBattle_StorageBag[3303700]["RewardId"] = 3303760
	tSummerBattle_StorageBag[3303700]["Text"] = "Text104"
	tSummerBattle_StorageBag[3303700]["Len"] = 10
	tSummerBattle_StorageBag[3303700]["Front"] = 3303696

	-- 3303701 沙滩武器外套碎片
	tSummerBattle_StorageBag[3303701] = {}
	tSummerBattle_StorageBag[3303701]["ItemNum"] = 15
	-- 对应收纳包里的选项
	tSummerBattle_StorageBag[3303701]["Option"] = 14
	tSummerBattle_StorageBag[3303701]["RewardId"] = 3303766
	tSummerBattle_StorageBag[3303701]["Text"] = "Text109"
	tSummerBattle_StorageBag[3303701]["Len"] = 0

	-- 3303702 沙滩武器升级工具碎片
	tSummerBattle_StorageBag[3303702] = {}
	tSummerBattle_StorageBag[3303702]["ItemNum"] = 5
	-- 对应收纳包里的选项
	tSummerBattle_StorageBag[3303702]["Option"] = 18
	tSummerBattle_StorageBag[3303702]["RewardId"] = 3303762
	tSummerBattle_StorageBag[3303702]["Text"] = "Text110"
	tSummerBattle_StorageBag[3303702]["Len"] = 10
	tSummerBattle_StorageBag[3303702]["Front"] = 3303701

	-- 3303703 沙滩武器外套洗赠液碎片
	tSummerBattle_StorageBag[3303703] = {}
	tSummerBattle_StorageBag[3303703]["ItemNum"] = 5
	-- 对应收纳包里的选项
	tSummerBattle_StorageBag[3303703]["Option"] = 20
	tSummerBattle_StorageBag[3303703]["RewardId"] = 3303763
	tSummerBattle_StorageBag[3303703]["Text"] = "Text108"
	tSummerBattle_StorageBag[3303703]["Len"] = 10
	tSummerBattle_StorageBag[3303703]["Front"] = 3303698

	-- 3303704 霓虹翅翅膀外套碎片
	tSummerBattle_StorageBag[3303704] = {}
	tSummerBattle_StorageBag[3303704]["ItemNum"] = 30
	-- 对应收纳包里的选项
	tSummerBattle_StorageBag[3303704]["Option"] = 15
	tSummerBattle_StorageBag[3303704]["RewardId"] = 3303772
	tSummerBattle_StorageBag[3303704]["Text"] = "Text111"
	tSummerBattle_StorageBag[3303704]["Len"] = 0

	-- 3303705 海妖之歌翅膀外套碎片
	tSummerBattle_StorageBag[3303705] = {}
	tSummerBattle_StorageBag[3303705]["ItemNum"] = 99
	-- 对应收纳包里的选项
	tSummerBattle_StorageBag[3303705]["Option"] = 16
	tSummerBattle_StorageBag[3303705]["RewardId"] = 3303776
	tSummerBattle_StorageBag[3303705]["Text"] = "Text113"
	tSummerBattle_StorageBag[3303705]["Len"] = 0

	-- 3303706 百变霓虹魔术棒碎片
	tSummerBattle_StorageBag[3303706] = {}
	tSummerBattle_StorageBag[3303706]["ItemNum"] = 10
	-- 对应收纳包里的选项
	tSummerBattle_StorageBag[3303706]["Option"] = 21
	tSummerBattle_StorageBag[3303706]["RewardId"] = 3303764
	tSummerBattle_StorageBag[3303706]["Text"] = "Text112"
	tSummerBattle_StorageBag[3303706]["Len"] = 10
	tSummerBattle_StorageBag[3303706]["Front"] = 3303704

	-- 3303707 夏日翅膀外套洗赠液碎片
	tSummerBattle_StorageBag[3303707] = {}
	tSummerBattle_StorageBag[3303707]["ItemNum"] = 5
	-- 对应收纳包里的选项
	tSummerBattle_StorageBag[3303707]["Option"] = 22
	tSummerBattle_StorageBag[3303707]["RewardId"] = 3303765
	tSummerBattle_StorageBag[3303707]["Text"] = "Text114"
	tSummerBattle_StorageBag[3303707]["Len"] = 10
	tSummerBattle_StorageBag[3303707]["Front"] = 3303705

-- 拆解外套
local tSummerBattle_Dismantling = {}
	-- 盛夏海风时装外套
	tSummerBattle_Dismantling[192495] = {}
	tSummerBattle_Dismantling[192495]["Option"] = 13
	tSummerBattle_Dismantling[192495]["RewardNum"] = 3000
	tSummerBattle_Dismantling[192495]["LogId"] = 12000760
	tSummerBattle_Dismantling[192495]["LogStep"] = "1[3]"
	tSummerBattle_Dismantling[192495]["DeleteItem"] = {}
	tSummerBattle_Dismantling[192495]["DeleteItem"][1] = {}
	tSummerBattle_Dismantling[192495]["DeleteItem"][1]["Id"] = 192495
	tSummerBattle_Dismantling[192495]["DeleteItem"][1]["SaveTime"] = 0
	tSummerBattle_Dismantling[192495]["RewardItem"] = {}
	tSummerBattle_Dismantling[192495]["RewardItem"][1] = {}
	tSummerBattle_Dismantling[192495]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Dismantling[192495]["RewardItem"][1]["Attr"] = "0 3000"
	
	-- 热力沙滩时装外套
	tSummerBattle_Dismantling[184345] = {}
	tSummerBattle_Dismantling[184345]["Option"] = 14
	tSummerBattle_Dismantling[184345]["RewardNum"] = 2000
	tSummerBattle_Dismantling[184345]["LogId"] = 12000760
	tSummerBattle_Dismantling[184345]["LogStep"] = "1[3]"
	tSummerBattle_Dismantling[184345]["DeleteItem"] = {}
	tSummerBattle_Dismantling[184345]["DeleteItem"][1] = {}
	tSummerBattle_Dismantling[184345]["DeleteItem"][1]["Id"] = 184345
	tSummerBattle_Dismantling[184345]["DeleteItem"][1]["SaveTime"] = 0
	tSummerBattle_Dismantling[184345]["RewardItem"] = {}
	tSummerBattle_Dismantling[184345]["RewardItem"][1] = {}
	tSummerBattle_Dismantling[184345]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Dismantling[184345]["RewardItem"][1]["Attr"] = "0 2000"
	
	-- 夏威夷阳光时装外套
	tSummerBattle_Dismantling[189665] = {}
	tSummerBattle_Dismantling[189665]["Option"] = 15
	tSummerBattle_Dismantling[189665]["RewardNum"] = 9000
	tSummerBattle_Dismantling[189665]["LogId"] = 12000760
	tSummerBattle_Dismantling[189665]["LogStep"] = "1[3]"
	tSummerBattle_Dismantling[189665]["DeleteItem"] = {}
	tSummerBattle_Dismantling[189665]["DeleteItem"][1] = {}
	tSummerBattle_Dismantling[189665]["DeleteItem"][1]["Id"] = 189665
	tSummerBattle_Dismantling[189665]["DeleteItem"][1]["SaveTime"] = 0
	tSummerBattle_Dismantling[189665]["RewardItem"] = {}
	tSummerBattle_Dismantling[189665]["RewardItem"][1] = {}
	tSummerBattle_Dismantling[189665]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Dismantling[189665]["RewardItem"][1]["Attr"] = "0 9000"
	
	-- 30天沙滩武器外套包（赠）
	tSummerBattle_Dismantling[3303766] = {}
	tSummerBattle_Dismantling[3303766]["Option"] = 31
	tSummerBattle_Dismantling[3303766]["RewardNum"] = 4500
	tSummerBattle_Dismantling[3303766]["LogId"] = 12000760
	tSummerBattle_Dismantling[3303766]["LogStep"] = "1[3]"
	tSummerBattle_Dismantling[3303766]["DeleteItem"] = {}
	tSummerBattle_Dismantling[3303766]["DeleteItem"][1] = {}
	tSummerBattle_Dismantling[3303766]["DeleteItem"][1]["Id"] = 3303766
	tSummerBattle_Dismantling[3303766]["DeleteItem"][1]["SaveTime"] = 0
	tSummerBattle_Dismantling[3303766]["RewardItem"] = {}
	tSummerBattle_Dismantling[3303766]["RewardItem"][1] = {}
	tSummerBattle_Dismantling[3303766]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Dismantling[3303766]["RewardItem"][1]["Attr"] = "0 4500"
	
	-- 30天沙滩武器外套包
	tSummerBattle_Dismantling[3303767] = {}
	tSummerBattle_Dismantling[3303767]["Option"] = 16
	tSummerBattle_Dismantling[3303767]["RewardNum"] = 4500
	tSummerBattle_Dismantling[3303767]["LogId"] = 12000760
	tSummerBattle_Dismantling[3303767]["LogStep"] = "1[3]"
	tSummerBattle_Dismantling[3303767]["DeleteItem"] = {}
	tSummerBattle_Dismantling[3303767]["DeleteItem"][1] = {}
	tSummerBattle_Dismantling[3303767]["DeleteItem"][1]["Id"] = 3303767
	tSummerBattle_Dismantling[3303767]["DeleteItem"][1]["SaveTime"] = 0
	tSummerBattle_Dismantling[3303767]["RewardItem"] = {}
	tSummerBattle_Dismantling[3303767]["RewardItem"][1] = {}
	tSummerBattle_Dismantling[3303767]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Dismantling[3303767]["RewardItem"][1]["Attr"] = "0 4500"
	
	-- 霓虹翅A
	tSummerBattle_Dismantling[3303797] = {}
	tSummerBattle_Dismantling[3303797]["Option"] = 17
	tSummerBattle_Dismantling[3303797]["RewardNum"] = 90000
	tSummerBattle_Dismantling[3303797]["LogId"] = 12000760
	tSummerBattle_Dismantling[3303797]["LogStep"] = "1[3]"
	tSummerBattle_Dismantling[3303797]["DeleteItem"] = {}
	tSummerBattle_Dismantling[3303797]["DeleteItem"][1] = {}
	tSummerBattle_Dismantling[3303797]["DeleteItem"][1]["Id"] = 3303797
	tSummerBattle_Dismantling[3303797]["DeleteItem"][1]["SaveTime"] = 0
	tSummerBattle_Dismantling[3303797]["RewardItem"] = {}
	tSummerBattle_Dismantling[3303797]["RewardItem"][1] = {}
	tSummerBattle_Dismantling[3303797]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Dismantling[3303797]["RewardItem"][1]["Attr"] = "0 90000"
	
	-- 霓虹翅B
	tSummerBattle_Dismantling[3303798] = {}
	tSummerBattle_Dismantling[3303798]["Option"] = 18
	tSummerBattle_Dismantling[3303798]["RewardNum"] = 90000
	tSummerBattle_Dismantling[3303798]["LogId"] = 12000760
	tSummerBattle_Dismantling[3303798]["LogStep"] = "1[3]"
	tSummerBattle_Dismantling[3303798]["DeleteItem"] = {}
	tSummerBattle_Dismantling[3303798]["DeleteItem"][1] = {}
	tSummerBattle_Dismantling[3303798]["DeleteItem"][1]["Id"] = 3303798
	tSummerBattle_Dismantling[3303798]["DeleteItem"][1]["SaveTime"] = 0
	tSummerBattle_Dismantling[3303798]["RewardItem"] = {}
	tSummerBattle_Dismantling[3303798]["RewardItem"][1] = {}
	tSummerBattle_Dismantling[3303798]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Dismantling[3303798]["RewardItem"][1]["Attr"] = "0 90000"
	
	-- 霓虹翅C
	tSummerBattle_Dismantling[3303799] = {}
	tSummerBattle_Dismantling[3303799]["Option"] = 19
	tSummerBattle_Dismantling[3303799]["RewardNum"] = 90000
	tSummerBattle_Dismantling[3303799]["LogId"] = 12000760
	tSummerBattle_Dismantling[3303799]["LogStep"] = "1[3]"
	tSummerBattle_Dismantling[3303799]["DeleteItem"] = {}
	tSummerBattle_Dismantling[3303799]["DeleteItem"][1] = {}
	tSummerBattle_Dismantling[3303799]["DeleteItem"][1]["Id"] = 3303799
	tSummerBattle_Dismantling[3303799]["DeleteItem"][1]["SaveTime"] = 0
	tSummerBattle_Dismantling[3303799]["RewardItem"] = {}
	tSummerBattle_Dismantling[3303799]["RewardItem"][1] = {}
	tSummerBattle_Dismantling[3303799]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Dismantling[3303799]["RewardItem"][1]["Attr"] = "0 90000"

	-- 霓虹翅D
	tSummerBattle_Dismantling[3303800] = {}
	tSummerBattle_Dismantling[3303800]["Option"] = 20
	tSummerBattle_Dismantling[3303800]["RewardNum"] = 90000
	tSummerBattle_Dismantling[3303800]["LogId"] = 12000760
	tSummerBattle_Dismantling[3303800]["LogStep"] = "1[3]"
	tSummerBattle_Dismantling[3303800]["DeleteItem"] = {}
	tSummerBattle_Dismantling[3303800]["DeleteItem"][1] = {}
	tSummerBattle_Dismantling[3303800]["DeleteItem"][1]["Id"] = 3303800
	tSummerBattle_Dismantling[3303800]["DeleteItem"][1]["SaveTime"] = 0
	tSummerBattle_Dismantling[3303800]["RewardItem"] = {}
	tSummerBattle_Dismantling[3303800]["RewardItem"][1] = {}
	tSummerBattle_Dismantling[3303800]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Dismantling[3303800]["RewardItem"][1]["Attr"] = "0 90000"

	-- 碧痕霓虹羽（赠）
	tSummerBattle_Dismantling[3303772] = {}
	tSummerBattle_Dismantling[3303772]["Option"] = 32
	tSummerBattle_Dismantling[3303772]["RewardNum"] = 90000
	tSummerBattle_Dismantling[3303772]["LogId"] = 12000760
	tSummerBattle_Dismantling[3303772]["LogStep"] = "1[3]"
	tSummerBattle_Dismantling[3303772]["DeleteItem"] = {}
	tSummerBattle_Dismantling[3303772]["DeleteItem"][1] = {}
	tSummerBattle_Dismantling[3303772]["DeleteItem"][1]["Id"] = 3303772
	tSummerBattle_Dismantling[3303772]["DeleteItem"][1]["SaveTime"] = 0
	tSummerBattle_Dismantling[3303772]["RewardItem"] = {}
	tSummerBattle_Dismantling[3303772]["RewardItem"][1] = {}
	tSummerBattle_Dismantling[3303772]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Dismantling[3303772]["RewardItem"][1]["Attr"] = "0 90000"
	
	-- 橙光霓虹羽（赠）
	tSummerBattle_Dismantling[3303773] = {}
	tSummerBattle_Dismantling[3303773]["Option"] = 33
	tSummerBattle_Dismantling[3303773]["RewardNum"] = 90000
	tSummerBattle_Dismantling[3303773]["LogId"] = 12000760
	tSummerBattle_Dismantling[3303773]["LogStep"] = "1[3]"
	tSummerBattle_Dismantling[3303773]["DeleteItem"] = {}
	tSummerBattle_Dismantling[3303773]["DeleteItem"][1] = {}
	tSummerBattle_Dismantling[3303773]["DeleteItem"][1]["Id"] = 3303773
	tSummerBattle_Dismantling[3303773]["DeleteItem"][1]["SaveTime"] = 0
	tSummerBattle_Dismantling[3303773]["RewardItem"] = {}
	tSummerBattle_Dismantling[3303773]["RewardItem"][1] = {}
	tSummerBattle_Dismantling[3303773]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Dismantling[3303773]["RewardItem"][1]["Attr"] = "0 90000"
	
	-- 流焰霓虹羽（赠）
	tSummerBattle_Dismantling[3303774] = {}
	tSummerBattle_Dismantling[3303774]["Option"] = 34
	tSummerBattle_Dismantling[3303774]["RewardNum"] = 90000
	tSummerBattle_Dismantling[3303774]["LogId"] = 12000760
	tSummerBattle_Dismantling[3303774]["LogStep"] = "1[3]"
	tSummerBattle_Dismantling[3303774]["DeleteItem"] = {}
	tSummerBattle_Dismantling[3303774]["DeleteItem"][1] = {}
	tSummerBattle_Dismantling[3303774]["DeleteItem"][1]["Id"] = 3303774
	tSummerBattle_Dismantling[3303774]["DeleteItem"][1]["SaveTime"] = 0
	tSummerBattle_Dismantling[3303774]["RewardItem"] = {}
	tSummerBattle_Dismantling[3303774]["RewardItem"][1] = {}
	tSummerBattle_Dismantling[3303774]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Dismantling[3303774]["RewardItem"][1]["Attr"] = "0 90000"

	-- 明光霓虹羽（赠）
	tSummerBattle_Dismantling[3303775] = {}
	tSummerBattle_Dismantling[3303775]["Option"] = 35
	tSummerBattle_Dismantling[3303775]["RewardNum"] = 90000
	tSummerBattle_Dismantling[3303775]["LogId"] = 12000760
	tSummerBattle_Dismantling[3303775]["LogStep"] = "1[3]"
	tSummerBattle_Dismantling[3303775]["DeleteItem"] = {}
	tSummerBattle_Dismantling[3303775]["DeleteItem"][1] = {}
	tSummerBattle_Dismantling[3303775]["DeleteItem"][1]["Id"] = 3303775
	tSummerBattle_Dismantling[3303775]["DeleteItem"][1]["SaveTime"] = 0
	tSummerBattle_Dismantling[3303775]["RewardItem"] = {}
	tSummerBattle_Dismantling[3303775]["RewardItem"][1] = {}
	tSummerBattle_Dismantling[3303775]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Dismantling[3303775]["RewardItem"][1]["Attr"] = "0 90000"


-- 奖励配置
local tSummerBattle_Reward = {}
	-- 首次参与奖励
	tSummerBattle_Reward[1] = {}
	tSummerBattle_Reward[1]["LogId"] = 12000760
	tSummerBattle_Reward[1]["LogStep"] = "1[3]"
	tSummerBattle_Reward[1]["RewardItem"] = {}
	tSummerBattle_Reward[1]["RewardItem"][1] = {}
	tSummerBattle_Reward[1]["RewardItem"][1]["Id"] = 3303761
	tSummerBattle_Reward[1]["RewardItem"][1]["Attr"] = "0 1"
	tSummerBattle_Reward[1]["RewardItem"][2] = {}
	tSummerBattle_Reward[1]["RewardItem"][2]["Id"] = 3303695
	tSummerBattle_Reward[1]["RewardItem"][2]["Attr"] = "0 500"
	
	-- 补领收纳包
	tSummerBattle_Reward[2] = {}
	tSummerBattle_Reward[2]["LogId"] = 12000760
	tSummerBattle_Reward[2]["RewardItem"] = {}
	tSummerBattle_Reward[2]["RewardItem"][1] = {}
	tSummerBattle_Reward[2]["RewardItem"][1]["Id"] = 3303761
	tSummerBattle_Reward[2]["RewardItem"][1]["Attr"] = "0 1"

	-- 神龙岛掉落
	tSummerBattle_Reward[3] = {}
	tSummerBattle_Reward[3]["LogId"] = 12000760
	tSummerBattle_Reward[3]["RewardItem"] = {}
	tSummerBattle_Reward[3]["RewardItem"][1] = {}
	tSummerBattle_Reward[3]["RewardItem"][1]["Id"] = 3303715
	tSummerBattle_Reward[3]["RewardItem"][1]["Attr"] = "0 1"
	
	-- 显著功勋礼包
	tSummerBattle_Reward[4] = {}
	tSummerBattle_Reward[4]["LogId"] = 12000760
	tSummerBattle_Reward[4]["LogStep"] = "1[3]"
	tSummerBattle_Reward[4]["RewardItem"] = {}
	tSummerBattle_Reward[4]["RewardItem"][1] = {}
	tSummerBattle_Reward[4]["RewardItem"][1]["Id"] = 3303695
	tSummerBattle_Reward[4]["RewardItem"][1]["Attr"] = "0 150"

	-- ===30天金色屠龙礼包
	-- ===索引: tSummerBattle_Reward[3306837][1]
	-- ===删除: 3306837,1
	tSummerBattle_Reward[3306837] = {}
	tSummerBattle_Reward[3306837][1] = {}
	tSummerBattle_Reward[3306837][1]["LogId"] = 12000400
	tSummerBattle_Reward[3306837][1]["DeleteItem"] = {}
	tSummerBattle_Reward[3306837][1]["DeleteItem"][1] = {}
	tSummerBattle_Reward[3306837][1]["DeleteItem"][1]["Id"] = 3306837 -- 【库】30-dayGoldenDragonslayerPack[属性:9]
	tSummerBattle_Reward[3306837][1]["RewardItem"] = {}
	tSummerBattle_Reward[3306837][1]["RewardItem"][1] = {}
	tSummerBattle_Reward[3306837][1]["RewardItem"][1]["Id"] = 350104 -- 【库】GoldenDragonslayer(2-handed)[属性:0], 【表格】鎏金屠龙短武
	tSummerBattle_Reward[3306837][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑GoldenDragonslayer(2-handed)*1
	-- ===30天金色屠龙礼包
	-- ===索引: tSummerBattle_Reward[3306837][2]
	-- ===删除: 3306837,1
	tSummerBattle_Reward[3306837][2] = {}
	tSummerBattle_Reward[3306837][2]["LogId"] = 12000400
	tSummerBattle_Reward[3306837][2]["DeleteItem"] = {}
	tSummerBattle_Reward[3306837][2]["DeleteItem"][1] = {}
	tSummerBattle_Reward[3306837][2]["DeleteItem"][1]["Id"] = 3306837 -- 【库】30-dayGoldenDragonslayerPack[属性:9]
	tSummerBattle_Reward[3306837][2]["RewardItem"] = {}
	tSummerBattle_Reward[3306837][2]["RewardItem"][1] = {}
	tSummerBattle_Reward[3306837][2]["RewardItem"][1]["Id"] = 360202 -- 【库】GoldenDragonslayer(1-handed)[属性:0], 【表格】鎏金屠龙长武
	tSummerBattle_Reward[3306837][2]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑GoldenDragonslayer(1-handed)*1
	-- ===30天白银屠龙礼包
	-- ===索引:tSummerBattle_Reward[3306838][1]
	-- ===删除: 3306838,1
	tSummerBattle_Reward[3306838] = {}
	tSummerBattle_Reward[3306838][1] = {}
	tSummerBattle_Reward[3306838][1]["LogId"] = 12000400
	tSummerBattle_Reward[3306838][1]["DeleteItem"] = {}
	tSummerBattle_Reward[3306838][1]["DeleteItem"][1] = {}
	tSummerBattle_Reward[3306838][1]["DeleteItem"][1]["Id"] = 3306838 -- 【库】30-daySilverDragonslayerPack[属性:9]
	tSummerBattle_Reward[3306838][1]["RewardItem"] = {}
	tSummerBattle_Reward[3306838][1]["RewardItem"][1] = {}
	tSummerBattle_Reward[3306838][1]["RewardItem"][1]["Id"] = 350103 -- 【库】30-daySilverDragonslayerPack[属性:9], 【表格】鎏金屠龙短武
	tSummerBattle_Reward[3306838][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的30-daySilverDragonslayerPack*1
	-- ===30天白银屠龙礼包
	-- ===索引:tSummerBattle_Reward[3306838][2]
	-- ===删除: 3306838,1
	tSummerBattle_Reward[3306838][2] = {}
	tSummerBattle_Reward[3306838][2]["LogId"] = 12000400
	tSummerBattle_Reward[3306838][2]["DeleteItem"] = {}
	tSummerBattle_Reward[3306838][2]["DeleteItem"][1] = {}
	tSummerBattle_Reward[3306838][2]["DeleteItem"][1]["Id"] = 3306838 -- 【库】30-daySilverDragonslayerPack[属性:9]
	tSummerBattle_Reward[3306838][2]["RewardItem"] = {}
	tSummerBattle_Reward[3306838][2]["RewardItem"][1] = {}
	tSummerBattle_Reward[3306838][2]["RewardItem"][1]["Id"] = 360201 -- 【库】SilverDragonslayer(1-handed)[属性:0], 【表格】鎏金屠龙长武
	tSummerBattle_Reward[3306838][2]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑SilverDragonslayer(1-handed)*1
	-- ===30天古铜屠龙礼包
	-- ===索引:tSummerBattle_Reward[3306839][1]
	-- ===删除: 3306839,1
	tSummerBattle_Reward[3306839] = {}
	tSummerBattle_Reward[3306839][1] = {}
	tSummerBattle_Reward[3306839][1]["LogId"] = 12000400
	tSummerBattle_Reward[3306839][1]["DeleteItem"] = {}
	tSummerBattle_Reward[3306839][1]["DeleteItem"][1] = {}
	tSummerBattle_Reward[3306839][1]["DeleteItem"][1]["Id"] = 3306839 -- 【库】30-dayBronzeDragonslayerPack[属性:9]
	tSummerBattle_Reward[3306839][1]["RewardItem"] = {}
	tSummerBattle_Reward[3306839][1]["RewardItem"][1] = {}
	tSummerBattle_Reward[3306839][1]["RewardItem"][1]["Id"] = 350105 -- 【库】BronzeDragonslayer(2-handed)[属性:0], 【表格】鎏金屠龙短武
	tSummerBattle_Reward[3306839][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑BronzeDragonslayer(2-handed)*1
	-- ===30天古铜屠龙礼包
	-- ===索引:tSummerBattle_Reward[3306839][2]
	-- ===删除: 3306839,1
	tSummerBattle_Reward[3306839][2] = {}
	tSummerBattle_Reward[3306839][2]["LogId"] = 12000400
	tSummerBattle_Reward[3306839][2]["DeleteItem"] = {}
	tSummerBattle_Reward[3306839][2]["DeleteItem"][1] = {}
	tSummerBattle_Reward[3306839][2]["DeleteItem"][1]["Id"] = 3306839 -- 【库】30-dayBronzeDragonslayerPack[属性:9]
	tSummerBattle_Reward[3306839][2]["RewardItem"] = {}
	tSummerBattle_Reward[3306839][2]["RewardItem"][1] = {}
	tSummerBattle_Reward[3306839][2]["RewardItem"][1]["Id"] = 360203 -- 【库】BronzeDragonslayer(1-handed)[属性:0], 【表格】鎏金屠龙长武
	tSummerBattle_Reward[3306839][2]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑BronzeDragonslayer(1-handed)*1
	-- ===15天古铜屠龙礼包
	-- ===索引:tSummerBattle_Reward[3306840][1]
	-- ===删除: 3306840,1
	tSummerBattle_Reward[3306840] = {}
	tSummerBattle_Reward[3306840][1] = {}
	tSummerBattle_Reward[3306840][1]["LogId"] = 12000400
	tSummerBattle_Reward[3306840][1]["DeleteItem"] = {}
	tSummerBattle_Reward[3306840][1]["DeleteItem"][1] = {}
	tSummerBattle_Reward[3306840][1]["DeleteItem"][1]["Id"] = 3306840 -- 【库】15-dayBronzeDragonslayerPack[属性:9]
	tSummerBattle_Reward[3306840][1]["RewardItem"] = {}
	tSummerBattle_Reward[3306840][1]["RewardItem"][1] = {}
	tSummerBattle_Reward[3306840][1]["RewardItem"][1]["Id"] = 350105 -- 【库】BronzeDragonslayer(2-handed)[属性:0], 【表格】鎏金屠龙短武
	tSummerBattle_Reward[3306840][1]["RewardItem"][1]["Attr"] = "0 1 0 21600 1 0 0 1" -- 15天时效(激活)的1%神佑BronzeDragonslayer(2-handed)*1
	-- ===15天古铜屠龙礼包
	-- ===索引:tSummerBattle_Reward[3306840][2]
	-- ===删除: 3306840,1
	tSummerBattle_Reward[3306840][2] = {}
	tSummerBattle_Reward[3306840][2]["LogId"] = 12000400
	tSummerBattle_Reward[3306840][2]["DeleteItem"] = {}
	tSummerBattle_Reward[3306840][2]["DeleteItem"][1] = {}
	tSummerBattle_Reward[3306840][2]["DeleteItem"][1]["Id"] = 3306840 -- 【库】15-dayBronzeDragonslayerPack[属性:9]
	tSummerBattle_Reward[3306840][2]["RewardItem"] = {}
	tSummerBattle_Reward[3306840][2]["RewardItem"][1] = {}
	tSummerBattle_Reward[3306840][2]["RewardItem"][1]["Id"] = 360203 -- 【库】BronzeDragonslayer(1-handed)[属性:0], 【表格】鎏金屠龙长武
	tSummerBattle_Reward[3306840][2]["RewardItem"][1]["Attr"] = "0 1 0 21600 1 0 0 1" -- 15天时效(激活)的1%神佑BronzeDragonslayer(1-handed)*1
	
-- 动态存储表
local tSummerBattle_Global = {}
	-- 泳装外套魅力榜
	tSummerBattle_Global[21903] = {}
	tSummerBattle_Global[21903]["Time"] = tActivityTime["Summer"]["Rank"]
	tSummerBattle_Global[21903][1] = {}
	tSummerBattle_Global[21903][1]["GlobalId"] = 51601
	tSummerBattle_Global[21903][1]["Pos"] = 0
	tSummerBattle_Global[21903][1]["Text"] = "Text124"
	tSummerBattle_Global[21903][1]["ActionId"] = 565721
	tSummerBattle_Global[21903][2] = {}
	tSummerBattle_Global[21903][2]["GlobalId"] = 51601
	tSummerBattle_Global[21903][2]["Pos"] = 2
	tSummerBattle_Global[21903][2]["Text"] = "Text125"
	tSummerBattle_Global[21903][2]["ActionId"] = 565722
	tSummerBattle_Global[21903][3] = {}
	tSummerBattle_Global[21903][3]["GlobalId"] = 51601
	tSummerBattle_Global[21903][3]["Pos"] = 4
	tSummerBattle_Global[21903][3]["Text"] = "Text126"
	tSummerBattle_Global[21903][3]["ActionId"] = 565723
	tSummerBattle_Global[21903][4] = {}
	tSummerBattle_Global[21903][4]["GlobalId"] = 51602
	tSummerBattle_Global[21903][4]["Pos"] = 0
	tSummerBattle_Global[21903][4]["Text"] = "Text127"
	tSummerBattle_Global[21903][4]["ActionId"] = 565724
	tSummerBattle_Global[21903][5] = {}
	tSummerBattle_Global[21903][5]["GlobalId"] = 51602
	tSummerBattle_Global[21903][5]["Pos"] = 2
	tSummerBattle_Global[21903][5]["Text"] = "Text128"
	tSummerBattle_Global[21903][5]["ActionId"] = 565724
	tSummerBattle_Global[21903][6] = {}
	tSummerBattle_Global[21903][6]["GlobalId"] = 51602
	tSummerBattle_Global[21903][6]["Pos"] = 4
	tSummerBattle_Global[21903][6]["Text"] = "Text129"
	tSummerBattle_Global[21903][6]["ActionId"] = 565724
	tSummerBattle_Global[21903][7] = {}
	tSummerBattle_Global[21903][7]["GlobalId"] = 51603
	tSummerBattle_Global[21903][7]["Pos"] = 0
	tSummerBattle_Global[21903][7]["Text"] = "Text130"
	tSummerBattle_Global[21903][7]["ActionId"] = 565725
	tSummerBattle_Global[21903][8] = {}
	tSummerBattle_Global[21903][8]["GlobalId"] = 51603
	tSummerBattle_Global[21903][8]["Pos"] = 2
	tSummerBattle_Global[21903][8]["Text"] = "Text131"
	tSummerBattle_Global[21903][8]["ActionId"] = 565725
	tSummerBattle_Global[21903][9] = {}
	tSummerBattle_Global[21903][9]["GlobalId"] = 51603
	tSummerBattle_Global[21903][9]["Pos"] = 4
	tSummerBattle_Global[21903][9]["Text"] = "Text132"
	tSummerBattle_Global[21903][9]["ActionId"] = 565725
	tSummerBattle_Global[21903][10] = {}
	tSummerBattle_Global[21903][10]["GlobalId"] = 51604
	tSummerBattle_Global[21903][10]["Pos"] = 0
	tSummerBattle_Global[21903][10]["Text"] = "Text133"
	tSummerBattle_Global[21903][10]["ActionId"] = 565725
	
	-- 武器外套魅力榜
	tSummerBattle_Global[21904] = {}
	tSummerBattle_Global[21904]["Time"] = tActivityTime["Summer"]["Rank"]
	tSummerBattle_Global[21904][1] = {}
	tSummerBattle_Global[21904][1]["GlobalId"] = 51605
	tSummerBattle_Global[21904][1]["Pos"] = 0
	tSummerBattle_Global[21904][1]["Text"] = "Text124"
	tSummerBattle_Global[21904][1]["ActionId"] = 565726
	tSummerBattle_Global[21904][2] = {}
	tSummerBattle_Global[21904][2]["GlobalId"] = 51605
	tSummerBattle_Global[21904][2]["Pos"] = 2
	tSummerBattle_Global[21904][2]["Text"] = "Text125"
	tSummerBattle_Global[21904][2]["ActionId"] = 565727
	tSummerBattle_Global[21904][3] = {}
	tSummerBattle_Global[21904][3]["GlobalId"] = 51605
	tSummerBattle_Global[21904][3]["Pos"] = 4
	tSummerBattle_Global[21904][3]["Text"] = "Text126"
	tSummerBattle_Global[21904][3]["ActionId"] = 565728
	tSummerBattle_Global[21904][4] = {}
	tSummerBattle_Global[21904][4]["GlobalId"] = 51606
	tSummerBattle_Global[21904][4]["Pos"] = 0
	tSummerBattle_Global[21904][4]["Text"] = "Text127"
	tSummerBattle_Global[21904][4]["ActionId"] = 565729
	tSummerBattle_Global[21904][5] = {}
	tSummerBattle_Global[21904][5]["GlobalId"] = 51606
	tSummerBattle_Global[21904][5]["Pos"] = 2
	tSummerBattle_Global[21904][5]["Text"] = "Text128"
	tSummerBattle_Global[21904][5]["ActionId"] = 565729
	tSummerBattle_Global[21904][6] = {}
	tSummerBattle_Global[21904][6]["GlobalId"] = 51606
	tSummerBattle_Global[21904][6]["Pos"] = 4
	tSummerBattle_Global[21904][6]["Text"] = "Text129"
	tSummerBattle_Global[21904][6]["ActionId"] = 565729
	tSummerBattle_Global[21904][7] = {}
	tSummerBattle_Global[21904][7]["GlobalId"] = 51607
	tSummerBattle_Global[21904][7]["Pos"] = 0
	tSummerBattle_Global[21904][7]["Text"] = "Text130"
	tSummerBattle_Global[21904][7]["ActionId"] = 565730
	tSummerBattle_Global[21904][8] = {}
	tSummerBattle_Global[21904][8]["GlobalId"] = 51607
	tSummerBattle_Global[21904][8]["Pos"] = 2
	tSummerBattle_Global[21904][8]["Text"] = "Text131"
	tSummerBattle_Global[21904][8]["ActionId"] = 565730
	tSummerBattle_Global[21904][9] = {}
	tSummerBattle_Global[21904][9]["GlobalId"] = 51607
	tSummerBattle_Global[21904][9]["Pos"] = 4
	tSummerBattle_Global[21904][9]["Text"] = "Text132"
	tSummerBattle_Global[21904][9]["ActionId"] = 565730
	tSummerBattle_Global[21904][10] = {}
	tSummerBattle_Global[21904][10]["GlobalId"] = 51608
	tSummerBattle_Global[21904][10]["Pos"] = 0
	tSummerBattle_Global[21904][10]["Text"] = "Text133"
	tSummerBattle_Global[21904][10]["ActionId"] = 565730

	-- 翅膀外套魅力榜
	tSummerBattle_Global[21905] = {}
	tSummerBattle_Global[21905]["Time"] = tActivityTime["Summer"]["Rank"]
	tSummerBattle_Global[21905][1] = {}
	tSummerBattle_Global[21905][1]["GlobalId"] = 51609
	tSummerBattle_Global[21905][1]["Pos"] = 0
	tSummerBattle_Global[21905][1]["Text"] = "Text124"
	tSummerBattle_Global[21905][1]["ActionId"] = 565731
	tSummerBattle_Global[21905][2] = {}
	tSummerBattle_Global[21905][2]["GlobalId"] = 51609
	tSummerBattle_Global[21905][2]["Pos"] = 2
	tSummerBattle_Global[21905][2]["Text"] = "Text125"
	tSummerBattle_Global[21905][2]["ActionId"] = 565732
	tSummerBattle_Global[21905][3] = {}
	tSummerBattle_Global[21905][3]["GlobalId"] = 51609
	tSummerBattle_Global[21905][3]["Pos"] = 4
	tSummerBattle_Global[21905][3]["Text"] = "Text126"
	tSummerBattle_Global[21905][3]["ActionId"] = 565733
	tSummerBattle_Global[21905][4] = {}
	tSummerBattle_Global[21905][4]["GlobalId"] = 51610
	tSummerBattle_Global[21905][4]["Pos"] = 0
	tSummerBattle_Global[21905][4]["Text"] = "Text127"
	tSummerBattle_Global[21905][4]["ActionId"] = 565734
	tSummerBattle_Global[21905][5] = {}
	tSummerBattle_Global[21905][5]["GlobalId"] = 51610
	tSummerBattle_Global[21905][5]["Pos"] = 2
	tSummerBattle_Global[21905][5]["Text"] = "Text128"
	tSummerBattle_Global[21905][5]["ActionId"] = 565734
	tSummerBattle_Global[21905][6] = {}
	tSummerBattle_Global[21905][6]["GlobalId"] = 51610
	tSummerBattle_Global[21905][6]["Pos"] = 4
	tSummerBattle_Global[21905][6]["Text"] = "Text129"
	tSummerBattle_Global[21905][6]["ActionId"] = 565734
	tSummerBattle_Global[21905][7] = {}
	tSummerBattle_Global[21905][7]["GlobalId"] = 51611
	tSummerBattle_Global[21905][7]["Pos"] = 0
	tSummerBattle_Global[21905][7]["Text"] = "Text130"
	tSummerBattle_Global[21905][7]["ActionId"] = 565735
	tSummerBattle_Global[21905][8] = {}
	tSummerBattle_Global[21905][8]["GlobalId"] = 51611
	tSummerBattle_Global[21905][8]["Pos"] = 2
	tSummerBattle_Global[21905][8]["Text"] = "Text131"
	tSummerBattle_Global[21905][8]["ActionId"] = 565735
	tSummerBattle_Global[21905][9] = {}
	tSummerBattle_Global[21905][9]["GlobalId"] = 51611
	tSummerBattle_Global[21905][9]["Pos"] = 4
	tSummerBattle_Global[21905][9]["Text"] = "Text132"
	tSummerBattle_Global[21905][9]["ActionId"] = 565735
	tSummerBattle_Global[21905][10] = {}
	tSummerBattle_Global[21905][10]["GlobalId"] = 51612
	tSummerBattle_Global[21905][10]["Pos"] = 0
	tSummerBattle_Global[21905][10]["Text"] = "Text133"
	tSummerBattle_Global[21905][10]["ActionId"] = 565735

	-- 夏日魅力总榜
	tSummerBattle_Global[21906] = {}
	tSummerBattle_Global[21906]["Time"] = tActivityTime["Summer"]["TotalRank"]
	tSummerBattle_Global[21906][1] = {}
	tSummerBattle_Global[21906][1]["GlobalId"] = 51613
	tSummerBattle_Global[21906][1]["Pos"] = 0
	tSummerBattle_Global[21906][1]["Text"] = "Text124"
	tSummerBattle_Global[21906][1]["ActionId"] = 565736
	tSummerBattle_Global[21906][2] = {}
	tSummerBattle_Global[21906][2]["GlobalId"] = 51613
	tSummerBattle_Global[21906][2]["Pos"] = 2
	tSummerBattle_Global[21906][2]["Text"] = "Text125"
	tSummerBattle_Global[21906][2]["ActionId"] = 565737
	tSummerBattle_Global[21906][3] = {}
	tSummerBattle_Global[21906][3]["GlobalId"] = 51613
	tSummerBattle_Global[21906][3]["Pos"] = 4
	tSummerBattle_Global[21906][3]["Text"] = "Text126"
	tSummerBattle_Global[21906][3]["ActionId"] = 565738
	tSummerBattle_Global[21906][4] = {}
	tSummerBattle_Global[21906][4]["GlobalId"] = 51614
	tSummerBattle_Global[21906][4]["Pos"] = 0
	tSummerBattle_Global[21906][4]["Text"] = "Text127"
	tSummerBattle_Global[21906][4]["ActionId"] = 565739
	tSummerBattle_Global[21906][5] = {}
	tSummerBattle_Global[21906][5]["GlobalId"] = 51614
	tSummerBattle_Global[21906][5]["Pos"] = 2
	tSummerBattle_Global[21906][5]["Text"] = "Text128"
	tSummerBattle_Global[21906][5]["ActionId"] = 565739
	tSummerBattle_Global[21906][6] = {}
	tSummerBattle_Global[21906][6]["GlobalId"] = 51614
	tSummerBattle_Global[21906][6]["Pos"] = 4
	tSummerBattle_Global[21906][6]["Text"] = "Text129"
	tSummerBattle_Global[21906][6]["ActionId"] = 565739
	tSummerBattle_Global[21906][7] = {}
	tSummerBattle_Global[21906][7]["GlobalId"] = 51615
	tSummerBattle_Global[21906][7]["Pos"] = 0
	tSummerBattle_Global[21906][7]["Text"] = "Text130"
	tSummerBattle_Global[21906][7]["ActionId"] = 565740
	tSummerBattle_Global[21906][8] = {}
	tSummerBattle_Global[21906][8]["GlobalId"] = 51615
	tSummerBattle_Global[21906][8]["Pos"] = 2
	tSummerBattle_Global[21906][8]["Text"] = "Text131"
	tSummerBattle_Global[21906][8]["ActionId"] = 565740
	tSummerBattle_Global[21906][9] = {}
	tSummerBattle_Global[21906][9]["GlobalId"] = 51615
	tSummerBattle_Global[21906][9]["Pos"] = 4
	tSummerBattle_Global[21906][9]["Text"] = "Text132"
	tSummerBattle_Global[21906][9]["ActionId"] = 565740
	tSummerBattle_Global[21906][10] = {}
	tSummerBattle_Global[21906][10]["GlobalId"] = 51616
	tSummerBattle_Global[21906][10]["Pos"] = 0
	tSummerBattle_Global[21906][10]["Text"] = "Text133"
	tSummerBattle_Global[21906][10]["ActionId"] = 565740

-- lua临时表，用来存放排行版数据
local tSummerBattle_GlamourList = {}
	-- tSummerBattle_GlamourList[21903][1] = {}
	-- tSummerBattle_GlamourList[21903][1]["Text"] = "Text124"
	-- tSummerBattle_GlamourList[21903][1]["Score"] = 123
	-- tSummerBattle_GlamourList[21903][1]["UserName"] = "名字"
	-- tSummerBattle_GlamourList[21903][1]["UserId"] = 0
	
	-- 泳装外套魅力榜
	tSummerBattle_GlamourList[21903] = {}
	-- 武器外套魅力榜
	tSummerBattle_GlamourList[21904] = {}
	-- 翅膀外套魅力榜
	tSummerBattle_GlamourList[21905] = {}
	-- 夏日魅力总榜
	tSummerBattle_GlamourList[21906] = {}


-- 制作对应的魅力表
local tSummerBattle_Charm = {}
	-- 热力沙滩时装碎片
	tSummerBattle_Charm[3303696] = {}
	tSummerBattle_Charm[3303696]["Value"] = 500
	tSummerBattle_Charm[3303696]["Index"] = 21903
	
	-- 盛夏海风时装碎片
	tSummerBattle_Charm[3303697] = {}
	tSummerBattle_Charm[3303697]["Value"] = 1000
	tSummerBattle_Charm[3303697]["Index"] = 21903
	
	-- 夏威夷阳光时装碎片
	tSummerBattle_Charm[3303698] = {}
	tSummerBattle_Charm[3303698]["Value"] = 3000
	tSummerBattle_Charm[3303698]["Index"] = 21903
	
	-- 梦幻泡泡液
	tSummerBattle_Charm[3303759] = {}
	tSummerBattle_Charm[3303759]["Value"] = 24000
	tSummerBattle_Charm[3303759]["Index"] = 21903
	
	-- 沙滩武器外套碎片
	tSummerBattle_Charm[3303701] = {}
	tSummerBattle_Charm[3303701]["Value"] = 1000
	tSummerBattle_Charm[3303701]["Index"] = 21904
	
	-- 沙滩武器升级工具
	tSummerBattle_Charm[3303762] = {}
	tSummerBattle_Charm[3303762]["Value"] = 6000
	tSummerBattle_Charm[3303762]["Index"] = 21904
	
	-- 霓虹羽翅膀外套碎片
	tSummerBattle_Charm[3303704] = {}
	tSummerBattle_Charm[3303704]["Value"] = 20000
	tSummerBattle_Charm[3303704]["Index"] = 21905
	
	-- 海妖之歌翅膀外套碎片
	tSummerBattle_Charm[3303705] = {}
	tSummerBattle_Charm[3303705]["Value"] = 88888
	tSummerBattle_Charm[3303705]["Index"] = 21905
	
	-- 1天沙滩武器豪华可选包
	tSummerBattle_Charm[3303720] = {}
	tSummerBattle_Charm[3303720]["Value"] = 1
	tSummerBattle_Charm[3303720]["Index"] = 21904
	
	-- 1天沙滩武器外套可选包
	tSummerBattle_Charm[3303721] = {}
	tSummerBattle_Charm[3303721]["Value"] = 1
	tSummerBattle_Charm[3303721]["Index"] = 21904
	
	-- 1天沙滩武器外套礼包
	tSummerBattle_Charm[3303723] = {}
	tSummerBattle_Charm[3303723]["Value"] = 1
	tSummerBattle_Charm[3303723]["Index"] = 21904
	
	-- 1天沙滩武器外套豪华包
	tSummerBattle_Charm[3303724] = {}
	tSummerBattle_Charm[3303724]["Value"] = 1
	tSummerBattle_Charm[3303724]["Index"] = 21904
	
	-- 1天热力沙滩时装包
	tSummerBattle_Charm[3303725] = {}
	tSummerBattle_Charm[3303725]["Value"] = 1
	tSummerBattle_Charm[3303725]["Index"] = 21903
	
	-- 1天盛夏海风时装包
	tSummerBattle_Charm[3303726] = {}
	tSummerBattle_Charm[3303726]["Value"] = 1
	tSummerBattle_Charm[3303726]["Index"] = 21903
	
	-- 1天夏威夷阳光时装包
	tSummerBattle_Charm[3303727] = {}
	tSummerBattle_Charm[3303727]["Value"] = 1
	tSummerBattle_Charm[3303727]["Index"] = 21903
	
	-- 1天夏日翅膀外套时尚包
	tSummerBattle_Charm[3303731] = {}
	tSummerBattle_Charm[3303731]["Value"] = 1
	tSummerBattle_Charm[3303731]["Index"] = 21905
	
	-- 1天【绿色】霓虹羽时尚包
	tSummerBattle_Charm[3303732] = {}
	tSummerBattle_Charm[3303732]["Value"] = 1
	tSummerBattle_Charm[3303732]["Index"] = 21905
	
	-- 1天【橙色】霓虹羽时尚包
	tSummerBattle_Charm[3303733] = {}
	tSummerBattle_Charm[3303733]["Value"] = 1
	tSummerBattle_Charm[3303733]["Index"] = 21905
	
	-- 1天【红色】霓虹羽时尚包
	tSummerBattle_Charm[3303734] = {}
	tSummerBattle_Charm[3303734]["Value"] = 1
	tSummerBattle_Charm[3303734]["Index"] = 21905
	
	-- 1天【黄色】霓虹羽时尚包
	tSummerBattle_Charm[3303735] = {}
	tSummerBattle_Charm[3303735]["Value"] = 1
	tSummerBattle_Charm[3303735]["Index"] = 21905
	
	-- 1天【绿色】霓虹羽典藏包
	tSummerBattle_Charm[3303736] = {}
	tSummerBattle_Charm[3303736]["Value"] = 1
	tSummerBattle_Charm[3303736]["Index"] = 21905
	
	-- 1天【橙色】霓虹羽典藏包
	tSummerBattle_Charm[3303737] = {}
	tSummerBattle_Charm[3303737]["Value"] = 1
	tSummerBattle_Charm[3303737]["Index"] = 21905
	
	-- 1天【红色】霓虹羽典藏包
	tSummerBattle_Charm[3303738] = {}
	tSummerBattle_Charm[3303738]["Value"] = 1
	tSummerBattle_Charm[3303738]["Index"] = 21905
	
	-- 1天【黄色】霓虹羽典藏包
	tSummerBattle_Charm[3303739] = {}
	tSummerBattle_Charm[3303739]["Value"] = 1
	tSummerBattle_Charm[3303739]["Index"] = 21905
	
	-- 1天海妖之歌典藏包
	tSummerBattle_Charm[3303740] = {}
	tSummerBattle_Charm[3303740]["Value"] = 1
	tSummerBattle_Charm[3303740]["Index"] = 21905
	
	-- 1天夏日翅膀外套典藏包
	tSummerBattle_Charm[3303741] = {}
	tSummerBattle_Charm[3303741]["Value"] = 1
	tSummerBattle_Charm[3303741]["Index"] = 21905

	-- 30天沙滩武器外套包（赠）
	tSummerBattle_Charm[3303766] = {}
	tSummerBattle_Charm[3303766]["Value"] = 1
	tSummerBattle_Charm[3303766]["Index"] = 21904
	
	-- 30天沙滩武器外套包
	tSummerBattle_Charm[3303767] = {}
	tSummerBattle_Charm[3303767]["Value"] = 1
	tSummerBattle_Charm[3303767]["Index"] = 21904
	
	-- 90天沙滩武器豪华包
	tSummerBattle_Charm[3303789] = {}
	tSummerBattle_Charm[3303789]["Value"] = 1
	tSummerBattle_Charm[3303789]["Index"] = 21904
	
	-- 7天沙滩武器外套包（赠）
	tSummerBattle_Charm[3303858] = {}
	tSummerBattle_Charm[3303858]["Value"] = 1
	tSummerBattle_Charm[3303858]["Index"] = 21904
	
	-- 7天沙滩武器外套包（赠）
	tSummerBattle_Charm[3303976] = {}
	tSummerBattle_Charm[3303976]["Value"] = 1
	tSummerBattle_Charm[3303976]["Index"] = 21904
	
-- 4个NPC合成1个对白选项配置
local tSummerBattle_Info = {}
	-- 魅力总榜
	tSummerBattle_Info[21906] = {}
	tSummerBattle_Info[21906][1] = {}
	tSummerBattle_Info[21906][1]["Option"] = "Option3"
	tSummerBattle_Info[21906][1]["Func"] = "</F>LinkNpcGossipFunc_New</N>21906</S>2-1"
	tSummerBattle_Info[21906][2] = {}
	tSummerBattle_Info[21906][2]["Option"] = "Option4"
	tSummerBattle_Info[21906][2]["Func"] = "</F>LinkNpcGossipFunc_New</N>21906</S>2-2"
	tSummerBattle_Info[21906][3] = {}
	tSummerBattle_Info[21906][3]["Option"] = "Option7"
	tSummerBattle_Info[21906][3]["Func"] = "</F>SummerBattle_GlamourList</N>21903"
	tSummerBattle_Info[21906][4] = {}
	tSummerBattle_Info[21906][4]["Option"] = "Option8"
	tSummerBattle_Info[21906][4]["Func"] = "</F>SummerBattle_GlamourList</N>21904"
	tSummerBattle_Info[21906][5] = {}
	tSummerBattle_Info[21906][5]["Option"] = "Option9"
	tSummerBattle_Info[21906][5]["Func"] = "</F>SummerBattle_GlamourList</N>21905"
	-- 泳装外套魅力榜
	tSummerBattle_Info[21903] = {}
	tSummerBattle_Info[21903][1] = {}
	tSummerBattle_Info[21903][1]["Option"] = "Option11"
	tSummerBattle_Info[21903][1]["Func"] = "</F>LinkNpcGossipFunc_New</N>21906</S>3-2"
	tSummerBattle_Info[21903][2] = {}
	tSummerBattle_Info[21903][2]["Option"] = "Option16"
	tSummerBattle_Info[21903][2]["Func"] = "</F>SummerBattle_GlamourList</N>21906"
	-- 武器外套魅力榜
	tSummerBattle_Info[21904] = {}
	tSummerBattle_Info[21904][1] = {}
	tSummerBattle_Info[21904][1]["Option"] = "Option13"
	tSummerBattle_Info[21904][1]["Func"] = "</F>LinkNpcGossipFunc_New</N>21906</S>4-2"
	tSummerBattle_Info[21904][2] = {}
	tSummerBattle_Info[21904][2]["Option"] = "Option16"
	tSummerBattle_Info[21904][2]["Func"] = "</F>SummerBattle_GlamourList</N>21906"
	-- 翅膀外套魅力榜
	tSummerBattle_Info[21905] = {}
	tSummerBattle_Info[21905][1] = {}
	tSummerBattle_Info[21905][1]["Option"] = "Option15"
	tSummerBattle_Info[21905][1]["Func"] = "</F>LinkNpcGossipFunc_New</N>21906</S>5-2"
	tSummerBattle_Info[21905][2] = {}
	tSummerBattle_Info[21905][2]["Option"] = "Option16"
	tSummerBattle_Info[21905][2]["Func"] = "</F>SummerBattle_GlamourList</N>21906"
------------------------------------------------------------------逻辑配置-----------------------------------------------------------------------
-- 物品过期处理
function SummerBattle_BeOverdue(nItemId)
	if Sys_ChkFullTime(tActivityTime["Summer"]["UseItem"]) then
		return true
	end
	
	if tItem[nItemId]["OverdueReward"] ~= nil then
		LinkItemOverdueReward(nItemId)
		return false
	end
	
	-- 判断是否是收纳包
	if nItemId == tSummerBattle_Constant["StorageBag"] then
		SummerBattle_StorageBag(nItemId)
		return false
	end
	
	-- 过期删除
	Item_DelAllItemByType(nItemId)
	User_TalkChannel2005(tSummerBattle_Text["BeOverdue"])
	return false
end

-- 返回主对白
function SummerBattle_Return(nItemId)
	if not SummerBattle_BeOverdue(nItemId) then
		return
	end
	
	if Item_ChkItem(nItemId) then
		LinkItemGossipFunc_New(nItemId,"1-1")
	end
end

-- 碎片合成
function SummerBattle_Synthesis(nItemId)
	-- 判断活动时间
	if not SummerBattle_BeOverdue(nItemId) then
		return
	end
	
	local nUserId = Get_UserId()
	local bRandom = tSummerBattle_Package[nItemId]["IsRandom"]

	if bRandom then
		-- 物品使用条件判断
		if not TermsOfUse_Main(nItemId,tSummerBattle_Package[nItemId],nUserId) then
			return
		end
	
		-- 删除物品判断
		if not RewardTemplate_DelItem(tSummerBattle_Package[nItemId][1],nUserId) then
			return
		end
		
		-- 获得奖励
		RewardTemplate_NewRandom(tSummerBattle_Package[nItemId],1,nUserId)
		User_EffectAdd("self","zf2-e128",nUserId)
		SummerBattle_ChkPlusCharm(nItemId)
	else
		-- 物品使用条件判断
		local bUse = TermsOfUse_Main(nItemId,tSummerBattle_Package[nItemId][1],nUserId)
		
		if not bUse then
			return
		end
	
		if RewardTemplate_UseItemAndMsg(tSummerBattle_Package[nItemId][1],nUserId,bUse) then
			SummerBattle_ChkPlusCharm(nItemId)
		end
	end
end

-- 碎片单个赌
function SummerBattle_SingleBet(nItemId)
	-- 判断活动时间
	if not SummerBattle_BeOverdue(nItemId) then
		return
	end
	
	-- 判断是否有该物品
	if not Item_ChkItem(nItemId) then
		
		return
	end
	
	if Item_DelItem(nItemId) then
		local nStartNum = tSummerBattle_Bet["BeginNum"]
		local nEndNum = tSummerBattle_Bet["EndNum"]

		if Sys_Random(nStartNum,nEndNum) then
			RewardTemplate_UseItemAndMsg(tSummerBattle_Package[nItemId][2])
			LinkItemGossipFunc_New(nItemId,"2-1")
		else
			LinkItemGossipFunc_New(nItemId,"2-2")
		end
	end
end

-- 普通物品使用
function SummerBattle_UseItem(nItemId)
	-- 判断活动时间
	if not SummerBattle_BeOverdue(nItemId) then
		return
	end
	
	if RewardTemplate_UseItemAndMsg(tSummerBattle_Package[nItemId]) then
		-- 加魅力值
		SummerBattle_ChkPlusCharm(nItemId)
	end
end

-- 翅膀物品使用
function SummerBattle_UseWingItem(nItemId)
	-- 判断活动时间
	-- if not SummerBattle_BeOverdue(nItemId) then
		-- return
	-- end
	
	local nTitleType = tSummerBattle_Package[nItemId]["RewardWing"]["TitleType"]
	local nTitleId = tSummerBattle_Package[nItemId]["RewardWing"]["TitleId"]
	local nUserId = Get_UserId()
	
	-- 判断是否有该翅膀
	if User_CheckTitle(nTitleType,nTitleId,nUserId) then
		User_TalkChannel2005(tSummerBattle_Text["Wing"],nUserId)
		return
	end
	
	if RewardTemplate_UseItemAndMsg(tSummerBattle_Package[nItemId]) then
		-- 加魅力值
		SummerBattle_ChkPlusCharm(nItemId)
	end
end

-- 可选武器包
function SummerBattle_Optional(nItemId,nChoose)
	-- 判断活动时间
	if not SummerBattle_BeOverdue(nItemId) then
		return
	end
	
	if RewardTemplate_UseItemAndMsg(tSummerBattle_Package[nItemId][nChoose]) then
		-- 加魅力值
		SummerBattle_ChkPlusCharm(nItemId)
	end
end

-- 随机礼包使用
function SummerBattle_UseRandomItem(nItemId)
	-- 判断活动时间
	if not SummerBattle_BeOverdue(nItemId) then
		return
	end
	
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tSummerBattle_Package[nItemId],nUserId)
	local nIndex = tSummerBattle_Package[nItemId]["Index"]
	
	if not bJudge then
		return
	end

	-- 删除物品判断
	if not RewardTemplate_DelItem(tSummerBattle_Package[nItemId][1],nUserId) then
		return
	end
		
	RewardTemplate_NewRandom(tSummerBattle_Package[nItemId],nIndex,nUserId)
	-- 加魅力值
	SummerBattle_ChkPlusCharm(nItemId)
end

----------------------------------------------------------------------- 洗赠 -----------------------------------------------------------------
-- 选择洗赠道具
function SummerBattle_ChooseProp(nItemId,nChoose)
	-- 判断活动时间
	if not SummerBattle_BeOverdue(nItemId) then
		return
	end
	
	-- 判断是否有配置数据
	if tSummerBattle_Package[nItemId] == nil or tSummerBattle_Package[nItemId][nChoose] == nil then
		return
	end

	-- 判断是否需要二次确认
	if tSummerBattle_Package[nItemId][nChoose]["Confirm"] ~= nil then
		SummerBattle_Confirm(nItemId,nChoose,true)
		return
	end
	
	SummerBattle_Wash(nItemId,nChoose)
end

function SummerBattle_Wash(nItemId,nChoose,nNum)
	-- 判断活动时间
	if not SummerBattle_BeOverdue(nItemId) then
		return
	end
	
	-- 判断是否有配置数据
	if tSummerBattle_Package[nItemId] == nil or tSummerBattle_Package[nItemId][nChoose] == nil then
		return
	end

	local nWashId = tSummerBattle_Package[nItemId][nChoose]["WashId"]
	local nUserId = Get_UserId()
	local sWashName = Get_ItemtypeName(nWashId)
	local nUseNum = nNum or tSummerBattle_Package[nItemId][nChoose]["UseNum"]
	local nMonopoly = tSummerBattle_Package[nItemId][nChoose]["Monopoly"] or 2
	
	-- 判断洗赠道具数量是否满足
	if not Item_ChkMulItem(nItemId,nItemId,nUseNum,1,0,nUserId) then
		if tSummerBattle_Package[nItemId][nChoose]["Confirm"] ~= nil then
			tItem[nItemId]["Text441"] = string.format(tSummerBattle_Text[nItemId]["Text441"],nUseNum)
			LinkItemGossipFunc_New(nItemId,"4-4")
		else
			tItem[nItemId]["Text221"] = string.format(tSummerBattle_Text[nItemId]["Text221"],nUseNum,sWashName)
			LinkItemGossipFunc_New(nItemId,"2-2")
		end
		
		return
	end
	
	-- 判断背包空间
	local nWashLimit = Get_ItemtypeAccumulateLimit(nWashId)
	if nWashLimit == 0 then
		nWashLimit = 1
	end
	
	local nItemLimit = Get_ItemtypeAccumulateLimit(nItemId)
	if nItemLimit == 0 then
		nItemLimit = 1
	end
	local nWashSpace = math.floor(1/nWashLimit)
	local nItemSpace = math.floor(nUseNum/nItemLimit)
	local nSubSpace = nWashSpace + nItemSpace
	local nSpace = RewardTemplate_GetRewardSpace(tSummerBattle_Package[nItemId][nChoose],nUserId) - nSubSpace
	
	if nSpace > 0 and not User_CheckLeftSpace(nSpace,nUserId) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace),nUserId)
		return
	end
	
	-- 判断是否有对应的洗赠物品
	if not Item_ChkMulItem(nWashId,nWashId,1,nMonopoly,0,nUserId,0) then
		tItem[nItemId]["Text211"] = string.format(tSummerBattle_Text[nItemId]["Text211"],sWashName)
		LinkItemGossipFunc_New(nItemId,"2-1")
		return
	end
	
	-- 判断是否删除物品成功
	if not Item_DelMulItem(nItemId,nItemId,nUseNum,1,0,nUserId) then
		return
	end
	
	-- 有概率的
	if tSummerBattle_Package[nItemId][nChoose]["Confirm"] ~= nil then
		local nStartNum = tSummerBattle_Package[nItemId][nChoose]["StartNum"] * nUseNum
		local nEndNum = tSummerBattle_Package[nItemId][nChoose]["EndNum"]
		
		if nStartNum < nEndNum then
			if not Sys_Random(nStartNum,nEndNum) then
				tItem[nItemId]["Text421"] = string.format(tSummerBattle_Text[nItemId]["Text421"],nUseNum)
				LinkItemGossipFunc_New(nItemId,"4-2")
				return
			end
		end
	end
	
	-- 删除赠品的道具
	if not Item_DelMulItem(nWashId,nWashId,1,nMonopoly,0,nUserId,0) then
		return
	end
	
	-- 获得奖励
	RewardTemplate_UseItemAndMsg(tSummerBattle_Package[nItemId][nChoose])
	
	-- 获得提示
	tItem[nItemId]["Text411"] = string.format(tSummerBattle_Text[nItemId]["Text411"],nUseNum,sWashName)
	LinkItemGossipFunc_New(nItemId,"4-1")
end

-- 二次确认的对白
function SummerBattle_Confirm(nItemId,nChoose,bJudge)
	-- 检查是否判断过活动时间
	if not bJudge then
		if not SummerBattle_BeOverdue(nItemId) then
			return
		end
	end
	
	Sys_DialogTaskClear()
	Sys_DialogText(tSummerBattle_Text[nItemId]["Text311"])
	Sys_DialogText(tSummerBattle_Text[nItemId]["Text312"])
	Sys_DialogText(tSummerBattle_Text[nItemId]["Text313"])
	Sys_DialogOptEdit(tSummerBattle_Text["Input"],5,string.format("SummerBattle_InputJudge</N>%d</N>%d",nItemId,nChoose))
	Sys_DialogItemFace(nItemId)
	Sys_DialogEnd()
end

-- 洗赠输入框判断
function SummerBattle_InputJudge(nItemId,nChoose)
	-- 判断活动时间
	if not SummerBattle_BeOverdue(nItemId) then
		return
	end
	
	local str = Get_SysAcceptStr()
	local nNum = tonumber(str)
	
	if nNum == nil or nNum < tSummerBattle_Package[nItemId][nChoose]["UseNum"] or nNum > tSummerBattle_Package[nItemId][nChoose]["UseMaxNum"] then
		LinkItemGossipFunc_New(nItemId,"4-3")
		return
	end

	SummerBattle_Wash(nItemId,nChoose,nNum)
end

----------------------------------------------------------------- 升级光效---------------------------------------------------------------
-- 升级光效版外套主对白
function SummerBattle_LightEffect(nItemId)
	-- 判断活动时间
	if not SummerBattle_BeOverdue(nItemId) then
		return
	end
	
	-- 判断是否有对应的外套物品
	local nWashId = tSummerBattle_Package[nItemId]["WashId"]
	local nUserId = Get_UserId()
	if not Item_ChkMulItem(nWashId,nWashId,1,0,0,nUserId,0) then
		LinkItemGossipFunc_New(nItemId,"2-5")
		return
	end
	
	Sys_DialogTaskClear()
	Sys_DialogText(tSummerBattle_Text[nItemId]["Text111"])
	Sys_DialogText(tSummerBattle_Text[nItemId]["Text112"])
	Sys_DialogText(tSummerBattle_Text[nItemId]["Text113"])
	Sys_DialogOptEdit(tSummerBattle_Text["Input"],5,string.format("SummerBattle_EffectInput</N>%d",nItemId))
	Sys_DialogItemFace(nItemId)
	Sys_DialogEnd()
end

-- 光效输入框判断
function SummerBattle_EffectInput(nItemId)
	-- 判断活动时间
	if not SummerBattle_BeOverdue(nItemId) then
		return
	end
	
	local str = Get_SysAcceptStr()
	local nNum = tonumber(str)
	
	if nNum == nil or nNum < tSummerBattle_Package[nItemId]["UseNum"] or nNum > tSummerBattle_Package[nItemId]["UseMaxNum"] then
		LinkItemGossipFunc_New(nItemId,"2-3")
		return
	end

	SummerBattle_Effect(nItemId,nNum)
end

-- 升级光效版外套
function SummerBattle_Effect(nItemId,nUseNum)
	-- 判断活动时间
	if not SummerBattle_BeOverdue(nItemId) then
		return
	end
	
	-- 判断是否有配置数据
	if tSummerBattle_Package[nItemId] == nil then
		return
	end

	local nWashId = tSummerBattle_Package[nItemId]["WashId"]
	local nUserId = Get_UserId()

	-- 判断洗赠道具数量是否满足
	if not Item_ChkMulItem(nItemId,nItemId,nUseNum,1,0,nUserId) then
		LinkItemGossipFunc_New(nItemId,"2-4")
		return
	end
	
	-- 判断是否有对应的非赠永久外套
	if not Item_ChkMulItem(nWashId,nWashId,1,0,0,nUserId,0) then
		LinkItemGossipFunc_New(nItemId,"2-5")
		return
	end
	
	-- 判断是否删除物品成功
	if not Item_DelMulItem(nItemId,nItemId,nUseNum,1,0,nUserId) then
		return
	end
	
	-- 概率判断
	local nStartNum = tSummerBattle_Package[nItemId]["StartNum"] * nUseNum
	local nEndNum = tSummerBattle_Package[nItemId]["EndNum"]
	local nEvent = tSummerBattle_Stc[21903]["EventType"]
	local nType = tSummerBattle_Stc[21903]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	if nStartNum < nEndNum then
		if nUseNum == 1 and nData < tSummerBattle_Constant["SwimsuitCharm"] then
			nStartNum = tSummerBattle_Package[nItemId]["NewStartNum"]
		end
		
		if not Sys_Random(nStartNum,nEndNum) then
			tItem[nItemId]["Text221"] = string.format(tSummerBattle_Text[nItemId]["Text221"],nUseNum)
			LinkItemGossipFunc_New(nItemId,"2-2")
			return
		end
	end
	
	-- 删除非赠的外套
	if not Item_DelMulItem(nWashId,nWashId,1,0,0,nUserId,0) then
		return
	end
	
	-- 获得奖励
	if RewardTemplate_UseItemAndMsg(tSummerBattle_Package[nItemId]) then
		-- 加魅力值
		SummerBattle_ChkPlusCharm(nItemId)
	end
	
	-- 获得提示
	tItem[nItemId]["Text211"] = string.format(tSummerBattle_Text[nItemId]["Text211"],nUseNum)
	LinkItemGossipFunc_New(nItemId,"2-1")
end

------------------------------------------------------------------换色-------------------------------------------------------------------------
function SummerBattle_ChangeColor(nItemId,nChoose)
	-- 判断活动时间
	if not SummerBattle_BeOverdue(nItemId) then
		return
	end
	
	local nChangeId = tSummerBattle_Package[nItemId][nChoose]["ChangeId"]
	local sItemName = Get_ItemtypeName(nItemId)
	tItem[nItemId]["Text211"] = string.format(tSummerBattle_Text[nItemId]["Text211"],sItemName)
	tItem[nItemId]["tOption2-1"] = tSummerBattle_Package[nItemId][nChoose]["tOption"]
	
	for i,v in pairs(tSummerBattle_Package[nItemId][nChoose]["tOption"]) do
		tItem[nItemId]["OptionFunc" .. v] = string.format("SummerBattle_RewardNewColor</N>%d</N>%d</N>%d",nItemId,nChoose,v)
	end
	
	LinkItemGossipFunc_New(nItemId,"2-1")
end

function SummerBattle_RewardNewColor(nItemId,nChoose,nNewColor)
	-- 判断活动时间
	if not SummerBattle_BeOverdue(nItemId) then
		return
	end
	
	local nChangeId = tSummerBattle_Package[nItemId][nChoose]["ChangeId"]
	local sItemName = Get_ItemtypeName(nItemId)
	
	-- 判断是否有对应的翅膀颜色
	if not Item_ChkItem(nChangeId) then
		tItem[nItemId]["Text221"] = string.format(tSummerBattle_Text[nItemId]["Text221"],sItemName)
		LinkItemGossipFunc_New(nItemId,"2-2")
		return
	end
	
	-- 判断是否有百变霓虹魔术棒
	if not Item_ChkItem(nItemId) then
		tItem[nItemId]["Text231"] = string.format(tSummerBattle_Text[nItemId]["Text231"],sItemName)
		LinkItemGossipFunc_New(nItemId,"2-3")
		return
	end
	
	local sIndex = tSummerBattle_Package[nItemId][nChoose]["RewardIndex"]
	local nSubSpace = RewardTemplate_GetDelSpace(tSummerBattle_Package[nItemId][nChoose])
	local nRewardSpace = RewardTemplate_GetRewardSpace(tSummerBattle_Package[nItemId][sIndex][nNewColor])
	local nSpace = nRewardSpace - nSubSpace
	
	-- 判断背包空间
	if (nSpace > 0) and (not User_CheckLeftSpace(nSpace)) then
		User_TalkChannel2005(string.format(tSummerBattle_Text["NoSpace"],nSpace))
		return
	end
	
	-- 删除物品
	local nUserId = Get_UserId()
	if not RewardTemplate_DelItem(tSummerBattle_Package[nItemId][nChoose],nUserId) then
		return
	end
	
	-- 获得奖励
	RewardTemplate_UseItemAndMsg(tSummerBattle_Package[nItemId][sIndex][nNewColor])
end

------------------------------------------------------------------夏日时尚收纳包----------------------------------------------------------------
-- 获取碎片物品的数量
function SummerBattle_GetPieces()
	local tPiece = {}
	local nPiece = 0
	
	for i,v in pairs(tSummerBattle_Pieces) do
		local nItemNum = Get_CountItemType(v,0)
		
		if nItemNum > 0 then
			tPiece[v] = nItemNum
			nPiece = nPiece + nItemNum
		end
	end
	
	return tPiece,nPiece
end

-- 获取收纳包里的碎片物品数量
function SummerBattle_GetBagPieces()
	local tPiece = {}
	local nPiece = 0
	
	for i,v in pairs(tSummerBattle_Pieces) do
		local nEvent = tSummerBattle_Stc[v]["EventType"]
		local nType = tSummerBattle_Stc[v]["DataType"]
		local nData = Get_UserStatisticValue(nEvent,nType)
		
		if nData > 0 then
			tPiece[v] = nData
			nPiece = nPiece + nData
		end
	end
	
	return tPiece,nPiece
end

-- 碎片掩码值清理
function SummerBattle_PiecesStc()
	for i,v in pairs(tSummerBattle_Pieces) do
		local nEvent = tSummerBattle_Stc[v]["EventType"]
		local nType = tSummerBattle_Stc[v]["DataType"]
		Task_SetStatistic(nEvent,nType,0,1)
	end
end

-- 收纳所有碎片
function SummerBattle_TakeAllPieces(nItemId)
	-- 判断活动时间
	if not SummerBattle_BeOverdue(nItemId) then
		return
	end
	
	-- 获取碎片数量
	local tPiece,nPieceNum = SummerBattle_GetPieces()
	
	-- 检测是否有碎片物品
	if nPieceNum <= 0 then
		LinkItemGossipFunc_New(nItemId,"2-2")
		return
	end
	
	-- 删除物品
	for i,v in pairs(tPiece) do
		if not Item_DelMulItem(i,i,v) then
			return
		end
		
		-- 加掩码
		local nEvent = tSummerBattle_Stc[i]["EventType"]
		local nType = tSummerBattle_Stc[i]["DataType"]
		
		Task_AddStatistic(nEvent,nType,v,1)
	end
	
	LinkItemGossipFunc_New(nItemId,"2-1")
end

-- 取出所有碎片
function SummerBattle_TakeOutAllPieces(nItemId)
	-- 判断活动时间
	if not SummerBattle_BeOverdue(nItemId) then
		return
	end
	
	-- 获取碎片数量
	local tPiece,nPieceNum = SummerBattle_GetBagPieces()
	
	-- 检测是否有物品
	if nPieceNum <= 0 then
		LinkItemGossipFunc_New(nItemId,"3-3")
		return
	end

	-- 制作碎片奖励表
	local nIndex = 1
	local tReward = {}
	tReward["LogId"] = 12000760
	tReward["RewardItem"] = {}
	
	for i,v in pairs(tPiece) do
		tReward["RewardItem"][nIndex] = {}
		tReward["RewardItem"][nIndex]["Id"] = i
		tReward["RewardItem"][nIndex]["Attr"] = string.format("0 %d",v)
		nIndex = nIndex + 1
	end
	
	local nUserId = Get_UserId()
	local nSpace = RewardTemplate_GetRewardSpace(tReward,nUserId)
	
	-- 判断背包空间
	if not User_CheckLeftSpace(nSpace,nUserId) then
		tItem[nItemId]["Text321"] = string.format(tSummerBattle_Text[nItemId]["Text321"],nSpace)
		LinkItemGossipFunc_New(nItemId,"3-2")
		return
	end
	
	-- 掩码值清理
	SummerBattle_PiecesStc()
	
	-- 获得碎片
	RewardTemplate_UseItemAndMsg(tReward,nUserId,true)
	
	LinkItemGossipFunc_New(nItemId,"3-1")
end

function SummerBattle_MakeDialogue(nItemId)
	-- 判断活动时间
	if not SummerBattle_BeOverdue(nItemId) then
		return
	end
	
	-- 获取碎片数量
	local tPiece,nPieceNum = SummerBattle_GetBagPieces()
	local nCanMakeNum = 0
	local tOption = {}
	
	-- 检测是否有物品
	if nPieceNum <= 0 then
		LinkItemGossipFunc_New(nItemId,"4-1")
		return
	end
	
	-- 检测是否有可满足制作的外套
	for i,v in pairs(tPiece) do
		local tReward = tSummerBattle_StorageBag[i]
		local nItemNum = tReward["ItemNum"]
		
		if v >= nItemNum then
			local nOption = tReward["Option"]
			table.insert(tOption,nOption)
			nCanMakeNum = nCanMakeNum + 1
		end
	end
	
	-- 判断是否有可制作的外套
	if nCanMakeNum <= 0 then
		LinkItemGossipFunc_New(nItemId,"4-1")
		return
	end
	
	table.sort(tOption)
	tItem[nItemId]["tOption4-2"] = tOption
	LinkItemGossipFunc_New(nItemId,"4-2")
end

-- 制作外套
function SummerBattle_MakeCoat(nItemId,nChoose)
	-- 判断活动时间
	if not SummerBattle_BeOverdue(nItemId) then
		return
	end
	
	local nEvent = tSummerBattle_Stc[nChoose]["EventType"]
	local nType = tSummerBattle_Stc[nChoose]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	local tConfig = tSummerBattle_StorageBag[nChoose]
	
	-- 获取碎片数量
	if nData < tConfig["ItemNum"] then
		return
	end
	
	-- 定义外套奖励表
	local tReward = {}
	tReward["LogId"] = 12000760
	tReward["LogStep"] = tSummerBattle_Package[nChoose][1]["LogStep"]
	
	if tSummerBattle_Package[nChoose]["IsRandom"] then
		local nFlag,tAward = Probabil_RandomAward(tSummerBattle_Package[nChoose],1)
		tReward["RewardItem"] = CommonFunc_Copy(tAward[1]["tAward"][1]["RewardItem"])
	else
		tReward["RewardItem"] = CommonFunc_Copy(tSummerBattle_Package[nChoose][1]["RewardItem"])
	end

	local nUserId = Get_UserId()
	local nSpace = RewardTemplate_GetRewardSpace(tReward,nUserId)
	
	-- 判断背包空间
	if not User_CheckLeftSpace(nSpace,nUserId) then
		LinkItemGossipFunc_New(nItemId,"5-3")
		return
	end
	
	-- 删除掩码值
	Task_SetStatistic(nEvent,nType,nData - tConfig["ItemNum"],1)
	-- 获得外套
	RewardTemplate_UseItemAndMsg(tReward,nUserId,true)
	User_EffectAdd("self","zf2-e128",nUserId)
	
	local sItemName = Get_ItemtypeName(tConfig["RewardId"])
	local nCostItemName = Get_ItemtypeName(nChoose)
	-- 加魅力值
	if SummerBattle_ChkPlusCharm(nChoose) then
		local nIndex = tSummerBattle_Charm[nChoose]["Index"]
		tItem[nItemId]["Text511"] = string.format(tSummerBattle_Text[nItemId]["Text511"],tConfig["ItemNum"],nCostItemName,sItemName,tSummerBattle_Charm[nChoose]["Value"],tSummerBattle_Text["CharmType"][nIndex])
		LinkItemGossipFunc_New(nItemId,"5-1")
	else
		tItem[nItemId]["Text521"] = string.format(tSummerBattle_Text[nItemId]["Text521"],tConfig["ItemNum"],nCostItemName,sItemName)
		LinkItemGossipFunc_New(nItemId,"5-2")
	end
end

-- 检测是否需要加魅力值
function SummerBattle_ChkPlusCharm(nItemId)
	if tSummerBattle_Charm[nItemId] == nil then
		return false
	end
	
	local nValues = tSummerBattle_Charm[nItemId]["Value"]
	local nIndex = tSummerBattle_Charm[nItemId]["Index"]

	SummerBattle_PlusCharm(nValues,nIndex)
	
	return true
end

-- 收纳包过期处理
function SummerBattle_StorageBag(nItemId)
	local tReward = {}
	tReward["LogId"] = 12000760
	tReward["DeleteItem"] = {}
	tReward["DeleteItem"][1] = {}
	tReward["DeleteItem"][1]["Id"] = nItemId

	-- 获取碎片数量
	local tPiece,nPieceNum = SummerBattle_GetBagPieces()

	for i,v in pairs(tPiece) do
		if tItem[i]["OverdueReward"] ~= nil then
			local sIndex = tItem[i]["OverdueReward"]["RewardIndex"]
			local nValue = tItem[i]["OverdueReward"]["RewardValue"]
			
			if tReward[sIndex] == nil then
				tReward[sIndex] = {}
				tReward[sIndex]["Value"] = nValue*v
			else
				tReward[sIndex]["Value"] = tReward[sIndex]["Value"] + nValue*v
			end
		end
	end
	
	RewardTemplate_UseItemAndMsg(tReward)
end
----------------------------------------------------------跨服组队PK赛奖励礼包-----------------------------------------------------------------------
function SummerBattle_TeamPk(nItemId)
	local nEvent = tSummerBattle_Stc[nItemId]["EventType"]
	local nType = tSummerBattle_Stc[nItemId]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	
	-- 判断是否间隔12天
	if (nData > 0) and (not Task_StcInterval(nEvent,nType,12,4)) then
		User_TalkChannel2005(tSummerBattle_Text["TimeUp"])
		return
	elseif nData > 0 then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	RewardTemplate_UseItemAndMsg(tSummerBattle_Package[nItemId])
end

--打开通用符文精粹包
function SummerBattle_OpenUniversalRunesPack(nItemId)
	local tReward = tSummerBattl_UniversalRunesPack[nItemId]
	local nUserId = Get_UserId()
	local nEvent = tSummerBattl_UniversalRunesPackStc["EventType"]
	local nData = tSummerBattl_UniversalRunesPackStc["DataType"]
	local nValue = Get_UserStatisticValue(nEvent,nData,nUserId)
	if Task_StcInterval(nEvent,nData,12,4) then
		Task_SetStatistic(nEvent,nData,0,1)
		Task_SetStcTimestamp(nEvent,nData,0)
	end
	if nValue >= 5 then
		User_TalkChannel2005(tSummerBattle_Text["TimeUp2"])
		return 
	end
	if nValue < 1 then
		Task_SetStcTimestamp(nEvent,nData,0)
	end
	if Item_DelItem(nItemId) then
		Task_AddStatistic(nEvent,nData,1,1,nUserId)
		RewardTemplate_NewRandom(tSummerBattl_UniversalRunesPack,nItemId)
	end
end
------------------------------------------------------------------NPC逻辑-----------------------------------------------------------------------
-- NPC活动时间判断
function SummerBattle_ChkTime(nNpcId,sIndex)
	if not Sys_ChkFullTime(tActivityTime["Summer"]["BigBattle"]) then
		LinkNpcGossipFunc_New(nNpcId,sIndex)
		return false
	end
	
	return true
end

-- 参与活动
function SummerBattle_Join(nNpcId)
	-- 判断活动时间
	if not SummerBattle_ChkTime(nNpcId,"1-2") then
		return
	end
	
	local nEvent = tSummerBattle_Stc[1]["EventType"]
	local nType = tSummerBattle_Stc[1]["DataType"]
	local nUserId = Get_UserId()
	
	-- 判断是否参与过
	if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
		return
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tSummerBattle_Reward[1],nUserId)
	if not User_CheckLeftSpace(nSpace,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- 设掩码值
	Task_SetStatistic(nEvent,nType,1,1,nUserId)
	
	-- 给奖励
	RewardTemplate_UseItemAndMsg(tSummerBattle_Reward[1],nUserId,true)
	
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

-- 补领收纳包
function SummerBattle_Replacement(nNpcId)
	-- 判断活动时间
	if not SummerBattle_ChkTime(nNpcId,"1-2") then
		return
	end
	
	local nItemId = tSummerBattle_Constant["StorageBag"]
	local nUserId = Get_UserId()
	
	-- 判断是否有收纳包
	if Item_ChkItem(nItemId) then
		return
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tSummerBattle_Reward[2],nUserId)
	if not User_CheckLeftSpace(nSpace,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	-- 给奖励
	RewardTemplate_UseItemAndMsg(tSummerBattle_Reward[2],nUserId,true)
	
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end

-- 确认拆解外套
function SummerBattle_ConfirmDismantling(nNpcId,nChoose)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["Summer"]["UseItem"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nNum = tSummerBattle_Dismantling[nChoose]["RewardNum"]
	local sItemName = Get_ItemtypeName(nChoose)
	tNpcGossip[nNpcId]["Text421"] = string.format(tSummerBattle_Text[nNpcId]["Text421"],sItemName,nNum)
	tNpcGossip[nNpcId]["OptionFunc23"] = string.format("</F>SummerBattle_Dismantling</N>%d</N>%d",nNpcId,nChoose)
	LinkNpcGossipFunc_New(nNpcId,"4-2")
end

-- 拆解外套
function SummerBattle_Dismantling(nNpcId,nChoose)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["Summer"]["UseItem"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 判断外套物品是否存在
	if not Item_ChkMulItem(nChoose,nChoose,1,1,0,nUserId,0) then
		LinkItemGossipFunc_New(nNpcId,"4-4")
		return
	end
	
	-- 判断背包空间
	local nUserId = Get_UserId()
	local nSpace = RewardTemplate_GetRewardSpace(tSummerBattle_Dismantling[nChoose],nUserId)
	if not User_CheckLeftSpace(nSpace,nUserId) then
		tNpcGossip[nNpcId]["Text431"] = string.format(tSummerBattle_Text[nNpcId]["Text431"],nSpace)
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	end
	
	-- 给奖励
	RewardTemplate_UseItemAndMsg(tSummerBattle_Dismantling[nChoose],nUserId,true)
	User_EffectAdd("self","angelwing",nUserId)
	LinkNpcGossipFunc_New(nNpcId,"4-1")
end

-- 寻路功能
function SummerBattle_PathFind(nNpcId,nChoose)
	if nNpcId ~= nil then
		-- 判断活动时间
		if not SummerBattle_ChkTime(nNpcId,"1-2") then
			return
		end
	end
	
	NpcPosition_PathFind(nChoose)
end

-- 魅力榜对白
function SummerBattle_GlamourList(nChoose)
	local nNpcId = Get_NpcId()
	if nChoose == nil then
		nChoose = nNpcId
	end
	
	-- 判断是否在活动前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["Summer"]["BigBattle"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 判断魅力榜的数据是否有，没有则去获取数据
	if tSummerBattle_GlamourList[nChoose] == nil or next(tSummerBattle_GlamourList[nChoose]) == nil then
		SummerBattle_GetGlamourList()
	end
	
	local nUserId = Get_UserId()
	local nRank = 0
	local str = ""
	
	Sys_DialogTaskClear()
	Sys_DialogText(tSummerBattle_Text[nChoose]["Text140"])
	Sys_DialogText(tSummerBattle_Text[nChoose]["Text121"])
	Sys_DialogText(tSummerBattle_Text[nChoose]["Text122"])
	Sys_DialogText(tSummerBattle_Text[nChoose]["Text123"])
	-- 显示名次对白
	for i,v in pairs(tSummerBattle_GlamourList[nChoose]) do
		local sText = v["Text"]
		local nScore = v["Score"] or 0
		local sUserName = v["UserName"]
		if sUserName == nil or sUserName == "" then
			sUserName = tSummerBattle_Text["Nothing"]
		end
		
		local sScoreText = Sys_Alignment(nScore,0,sUserName .. "\n",40)
		
		if sUserName == nil or sUserName == "" then
			sUserName = tSummerBattle_Text["NoUser"]
		end
		
		Sys_DialogText(tSummerBattle_Text[nChoose][sText])
		Sys_DialogText(sScoreText)
		
		if v["UserId"] == nUserId then
			nRank = i
			str = string.format(tSummerBattle_Text[nChoose]["Rank"],nRank)
		end
	end
	
	if nRank == 0 then
		str = tSummerBattle_Text[nChoose]["NotListed"]	
	end

	Sys_DialogText(tSummerBattle_Text[nChoose]["Text141"])
	
	-- 判断是否在活动中
	if Sys_ChkFullTime(tActivityTime["Summer"]["BigBattle"]) then
		local nEvent = tSummerBattle_Stc[nChoose]["EventType"]
		local nType = tSummerBattle_Stc[nChoose]["DataType"]
		local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
		
		local sCoent = string.format(tSummerBattle_Text[nChoose]["Text136"],nData,str)
		Sys_DialogText(sCoent)
		Sys_DialogText(tSummerBattle_Text[nChoose]["Text137"])
		for i = 1,5 do
			if tSummerBattle_Info[nChoose][i] ~= nil then
				local sOption = tSummerBattle_Info[nChoose][i]["Option"]
				local sFunc = tSummerBattle_Info[nChoose][i]["Func"]
				Sys_DialogOption(tSummerBattle_Text[21906][sOption],sFunc)
			else
				break
			end
		end
	else
		local sCoent = string.format(tSummerBattle_Text[nChoose]["Text135"],str)
		Sys_DialogText(sCoent)
		for i = 3,5 do
			if tSummerBattle_Info[nChoose][i] ~= nil then
				local sOption = tSummerBattle_Info[nChoose][i]["Option"]
				local sFunc = tSummerBattle_Info[nChoose][i]["Func"]
				Sys_DialogOption(tSummerBattle_Text[21906][sOption],sFunc)
			else
				break
			end
		end
		Sys_DialogOption(tSummerBattle_Text[21906]["Option2"])
	end
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

-- 获取魅力排行版数据
function SummerBattle_GetGlamourList()
	for i,v in pairs(tSummerBattle_Global) do
		tSummerBattle_GlamourList[i] = {}
		
		for nIndex = 1,10 do
			tSummerBattle_GlamourList[i][nIndex] = {}
			
			local nGlobalId = v[nIndex]["GlobalId"]
			local nPos = v[nIndex]["Pos"]
			local nUserId = Get_SysDynaGlobalData(nGlobalId,nPos)
			local nScore = Get_SysDynaGlobalData(nGlobalId,nPos+1)
			local sUserName = Get_SysDynaGlobalDataStr(nGlobalId,nPos)
			
			tSummerBattle_GlamourList[i][nIndex]["UserId"] = nUserId
			tSummerBattle_GlamourList[i][nIndex]["Score"] = nScore
			tSummerBattle_GlamourList[i][nIndex]["UserName"] = sUserName
			tSummerBattle_GlamourList[i][nIndex]["Text"] = v[nIndex]["Text"]
		end
	end
end

-- 加魅力值
function SummerBattle_PlusCharm(nScore,nNpcId)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tActivityTime["Summer"]["BigBattle"]) then
		return
	end
	
	local nUserId = Get_UserId()
	local nEvent = tSummerBattle_Stc[nNpcId]["EventType"]
	local nType = tSummerBattle_Stc[nNpcId]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	local nTotalEvent = tSummerBattle_Stc[21906]["EventType"]
	local nTotalType = tSummerBattle_Stc[21906]["DataType"]
	local nTotalData = Get_UserStatisticValue(nTotalEvent,nTotalType,nUserId)
	
	-- 加对应的魅力值
	Task_AddStatistic(nEvent,nType,nScore,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	User_TalkChannel2005(string.format(tSummerBattle_Text["CharmValue"],nScore,tSummerBattle_Text["CharmType"][nNpcId]),nUserId)
	
	-- 加魅力总值
	Task_AddStatistic(nTotalEvent,nTotalType,nScore,1,nUserId)
	Task_SetStcTimestamp(nTotalEvent,nTotalType,0,nUserId)
	
	-- 刷新对应魅力值排行榜
	SummerBattle_RefreshList(nData+nScore,nNpcId,nUserId)
	-- 刷新魅力值总榜
	SummerBattle_RefreshList(nTotalData+nScore,21906,nUserId)
end

-- 刷新排行榜
function SummerBattle_RefreshList(nScore,nNpcId,nUserId)
	-- 判断魅力榜的数据是否有，没有则去获取数据
	if tSummerBattle_GlamourList[nNpcId] == nil or next(tSummerBattle_GlamourList[nNpcId]) == nil then
		SummerBattle_GetGlamourList()
	end
	
	-- 复制排行版数据
	local tCopy = CommonFunc_Copy(tSummerBattle_GlamourList[nNpcId])
	local nIndex = 0
	local bChange = false
	
	-- 判断该玩家是否已在排行版里
	for i=1,10 do
		if tCopy[i]["UserId"] == nUserId then
			tCopy[i]["Score"] = nScore
			nIndex = i
			bChange = true
			break
		elseif tCopy[i]["UserId"] == 0 then
			tCopy[i]["UserId"] = nUserId
			tCopy[i]["Score"] = nScore
			tCopy[i]["UserName"] = Get_UserName(nUserId)
			nIndex = i
			bChange = true
			break
		end
	end
	
	-- 无数据则插入
	if nIndex == 0 then
		nIndex = #tCopy + 1
		tCopy[nIndex] = {}
		tCopy[nIndex]["UserId"] = nUserId
		tCopy[nIndex]["Score"] = nScore
		tCopy[nIndex]["UserName"] = Get_UserName(nUserId)
	end
	
	-- 比较数据
	if nIndex > 1 then
		for i = nIndex,2,-1 do
			local nScoreA = tCopy[i]["Score"]
			local nScoreB = tCopy[i-1]["Score"]
			
			if nScoreA > nScoreB then
				local tTable = CommonFunc_Copy(tCopy[i-1])
				tCopy[i-1]["UserId"] = tCopy[i]["UserId"]
				tCopy[i-1]["Score"] = tCopy[i]["Score"]
				tCopy[i-1]["UserName"] = tCopy[i]["UserName"]
				
				tCopy[i]["UserId"] = tTable["UserId"]
				tCopy[i]["Score"] = tTable["Score"]
				tCopy[i]["UserName"] = tTable["UserName"]
				bChange = true
			else
				break
			end
		end
	end
	
	-- 排行版数据有变化，更新动态存储表
	if bChange then
		SummerBattle_Change(tCopy,nNpcId)
	end
end

-- 更新动态存储表
function SummerBattle_Change(tTable,nNpcId)
	for i = 1,10 do
		local nUserId = tTable[i]["UserId"]
		local nScore = tTable[i]["Score"]
		local sUserName = tTable[i]["UserName"]
		
		tSummerBattle_GlamourList[nNpcId][i]["UserId"] = nUserId
		tSummerBattle_GlamourList[nNpcId][i]["Score"] = nScore
		tSummerBattle_GlamourList[nNpcId][i]["UserName"] = sUserName
		
		local nGlobalId = tSummerBattle_Global[nNpcId][i]["GlobalId"]
		local nPos = tSummerBattle_Global[nNpcId][i]["Pos"]
		Sys_SetSynaGlobalData(nGlobalId,nPos,nUserId)
		Sys_SetSynaGlobalData(nGlobalId,nPos + 1,nScore)
		Sys_SetSynaGlobalDataStr(nGlobalId,nPos,sUserName)
	end
end

-- 领取排行版奖励
function SummerBattle_SelfTime()
	for i,v in pairs(tSummerBattle_Global) do
		local sTime = v["Time"]
		
		if Sys_ChkFullTime(sTime) then
			SummerBattle_RewardRank(i)
		end
	end
end

function SummerBattle_RewardRank(nIndex)
	local tReward = tSummerBattle_Global[nIndex]
	-- 发放排名奖励
	for i = 1,10 do
		local nGlobalId = tReward[i]["GlobalId"]
		local nPos = tReward[i]["Pos"]
		local sReward = Get_SysDynaGlobalDataStr(nGlobalId,nPos + 1)
		
		if sReward ~= tSummerBattle_Text["Reward"] then
			local nUserId = Get_SysDynaGlobalData(nGlobalId,nPos)
			local nActionId = tReward[i]["ActionId"]
			local sSender = tSummerBattle_Text["Sender"]
			local sTitle = tSummerBattle_Text["Title"][nIndex]
			local sContent = tSummerBattle_Text["Content"][nIndex][i]

			if nUserId ~= 0 and nUserId ~= nil then
				if Sys_SendMail(nUserId,0,0,nActionId,0,7,sSender,sTitle,sContent) then
					Sys_SetSynaGlobalDataStr(nGlobalId,nPos+1,tSummerBattle_Text["Reward"])
				end
			end
		end
	end
end

function SummerBattle_Reset()
	for i,v in pairs(tSummerBattle_Global) do
		local sTime = v["Time"]
		
		if Sys_ChkFullTime(sTime) then
			SummerBattle_ResetReward(i)
		end
	end
end

function SummerBattle_ResetReward(nIndex)
	local tReward = tSummerBattle_Global[nIndex]
	
	for i = 1,10 do
		local nGlobalId = tReward[i]["GlobalId"]
		local nPos = tReward[i]["Pos"]
		local sReward = Get_SysDynaGlobalDataStr(nGlobalId,nPos + 1)
		
		if sReward == tSummerBattle_Text["Reward"] then
			Sys_SetSynaGlobalDataStr(nGlobalId,nPos+1,"")
		end
	end
end


-- 兑换商店
function SummerBattle_Exchange()
	local nNpcId = Get_NpcId()
	--修改为神纹版本跨服组队PK赛新兑换商店时间
	if CommonFunc_GetBeforeActivityTime(tActivityTime["Summer"]["NewExchange"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	if not Sys_ChkFullTime(tActivityTime["Summer"]["NewExchange"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	User_OpenExchangeShop(nNpcId)
end
-- 可选武器礼包
function SummerBattle_FullServiceInvitat(nItemId,nIndex)
	RewardTemplate_UseItemAndMsg(tSummerBattle_Reward[nItemId][nIndex])
end
------------------------------------------------------------------怪物掉落-----------------------------------------------------------------------
function SummerBattle_KillMonster()
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tActivityTime["Summer"]["BigBattle"]) then
		return
	end
	
	local nEvent = tSummerBattle_Stc[2]["EventType"]
	local nType = tSummerBattle_Stc[2]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	
	-- 判断是否隔天
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,0)
		Task_SetStcTimestamp(nEvent,nType,0)
		nData = 0
	end
	
	-- 判断是否已掉落5个
	if nData >= tSummerBattle_Stc[2]["MaxData"] then
		return
	end
	
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tSummerBattle_Reward[3]) then
		return
	end
	
	-- 加掩码
	nData = nData + 1
	Task_AddStatistic(nEvent,nType,1,0)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	-- 给奖励
	RewardTemplate_UseItemAndMsg(tSummerBattle_Reward[3],nil,true)
	
	-- 打满给提示
	if nData >= tSummerBattle_Stc[2]["MaxData"] then
	
	end
end

-- 获得兑换材料
function SummerBattle_RewardMaterial(nIndex)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tActivityTime["Summer"]["BigBattle"]) then
		return
	end
	
	-- 给奖励
	RewardTemplate_UseItemAndMsg(tSummerBattle_Reward[nIndex])
end

function SummerBattle_GetSpace(nIndex)
	return RewardTemplate_GetRewardSpace(tSummerBattle_Reward[nIndex])
end

function SummerBattle_LookWeb()
	User_SendWebDialog("http://zf.99.com/activity/2017/summer/index.shtml")
end

------------------------------------------------------------------NPC配置-----------------------------------------------------------------------
-- NPC头像
tNpcFace[5663] = 5
tNpcFace[5664] = 2
tNpcFace[5665] = 3
-- tNpcFace[5666] = 23
-- tNpcFace[5667] = 24
-- tNpcFace[5668] = 16
tNpcFace[5669] = 29

-- 宋清凉
tNpcGossip[21900] = tNpcGossip[21900] or DefaultNpc:new{}
tNpcGossip[21900]["OptionHidden"] = 1
tNpcGossip[21900]["DialogueText"] = tSummerBattle_Text[21900]

tNpcGossip[21900]["Text1-1"] = {101,112,113,114,115,116}
tNpcGossip[21900]["tOption1-1"] = {1}
tNpcGossip[21900]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["Summer"]["BigBattle"])
end

tNpcGossip[21900]["Text1-2"] = {101,121}
tNpcGossip[21900]["tOption1-2"] = {2}
tNpcGossip[21900]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tActivityTime["Summer"]["UseItem"])
end

tNpcGossip[21900]["Text1-3"] = {101,131,132,133,134,135}
tNpcGossip[21900]["tOption1-3"] = {3}
tNpcGossip[21900]["ChkFunc1-3"] = function ()
	if not Sys_ChkFullTime(tActivityTime["Summer"]["BigBattle"]) then
		return false
	end
	
	return not User_JudgeLevelAndMetempsychosis(tSummerBattle_Constant["Level"],tSummerBattle_Constant["Metempsychosis"])
end

tNpcGossip[21900]["Text1-4"] = {101,141,142,143,144}
-- tNpcGossip[21900]["tOption1-4"] = {4,5,6,7}
tNpcGossip[21900]["tOption1-4"] = {4,5,6}
tNpcGossip[21900]["ChkFunc1-4"] = function ()
	return Sys_ChkFullTime(tActivityTime["Summer"]["BigBattle"])
end

tNpcGossip[21900]["OptionChkFunc4"] = function ()
	local nEvent = tSummerBattle_Stc[1]["EventType"]
	local nType = tSummerBattle_Stc[1]["DataType"]
	
	return not Task_ChkStcValue(nEvent,nType,">=",1)
end
tNpcGossip[21900]["OptionFunc4"] = "SummerBattle_Join</N>21900"

tNpcGossip[21900]["OptionChkFunc5"] = function ()
	local nEvent = tSummerBattle_Stc[1]["EventType"]
	local nType = tSummerBattle_Stc[1]["DataType"]
	
	if not Task_ChkStcValue(nEvent,nType,">=",1) then
		return false
	end
	
	local nItemId = tSummerBattle_Constant["StorageBag"]
	return not Item_ChkItem(nItemId)
end
tNpcGossip[21900]["OptionFunc5"] = "SummerBattle_Replacement</N>21900"
tNpcGossip[21900]["OptionFunc7"] = "SummerBattle_LookWeb"
tNpcGossip[21900]["OptionPoint6"] = "4-1"
tNpcGossip[21900]["OptionPoint8"] = "5-1"

tNpcGossip[21900]["Text1-5"] = {151}
tNpcGossip[21900]["tOption1-5"] = {6}

tNpcGossip[21900]["Text2-1"] = {211,212,213}
tNpcGossip[21900]["tOption2-1"] = {9}

tNpcGossip[21900]["Text2-2"] = {221}
tNpcGossip[21900]["tOption2-2"] = {10}

tNpcGossip[21900]["Text3-1"] = {311}
tNpcGossip[21900]["tOption3-1"] = {11}

tNpcGossip[21900]["Text3-2"] = {321}
tNpcGossip[21900]["tOption3-2"] = {12}

tNpcGossip[21900]["Text4-1"] = {401,402,403,404,405,406,407,408,409,410,411,412,413,414,415}
tNpcGossip[21900]["tOption4-1"] = {13,14,15,16,17,18,19,20,31,32,33,34,35,21}
tNpcGossip[21900]["ChkFunc4-1"] = function ()
	tNpcGossip[21900]["tOption4-1"] = {}
	local tOption = {}
	
	for i,v in pairs(tSummerBattle_Dismantling) do
		if Item_ChkMulItem(i,i,1,1,0,0,0) then
			table.insert(tOption,v["Option"])
		end
	end
	
	if #tOption == 0 then
		tNpcGossip[21900]["tOption4-1"] = {21}
	else
		table.sort(tOption)
		tNpcGossip[21900]["tOption4-1"] = tOption
	end
	
	return true
end

tNpcGossip[21900]["OptionFunc13"] = "SummerBattle_ConfirmDismantling</N>21900</N>192495"
tNpcGossip[21900]["OptionFunc14"] = "SummerBattle_ConfirmDismantling</N>21900</N>184345"
tNpcGossip[21900]["OptionFunc15"] = "SummerBattle_ConfirmDismantling</N>21900</N>189665"
tNpcGossip[21900]["OptionFunc16"] = "SummerBattle_ConfirmDismantling</N>21900</N>3303767"
tNpcGossip[21900]["OptionFunc17"] = "SummerBattle_ConfirmDismantling</N>21900</N>3303797"
tNpcGossip[21900]["OptionFunc18"] = "SummerBattle_ConfirmDismantling</N>21900</N>3303798"
tNpcGossip[21900]["OptionFunc19"] = "SummerBattle_ConfirmDismantling</N>21900</N>3303799"
tNpcGossip[21900]["OptionFunc20"] = "SummerBattle_ConfirmDismantling</N>21900</N>3303800"
tNpcGossip[21900]["OptionFunc31"] = "SummerBattle_ConfirmDismantling</N>21900</N>3303766"
tNpcGossip[21900]["OptionFunc32"] = "SummerBattle_ConfirmDismantling</N>21900</N>3303772"
tNpcGossip[21900]["OptionFunc33"] = "SummerBattle_ConfirmDismantling</N>21900</N>3303773"
tNpcGossip[21900]["OptionFunc34"] = "SummerBattle_ConfirmDismantling</N>21900</N>3303774"
tNpcGossip[21900]["OptionFunc35"] = "SummerBattle_ConfirmDismantling</N>21900</N>3303775"



tNpcGossip[21900]["Text4-2"] = {421}
tNpcGossip[21900]["tOption4-2"] = {23,24}

tNpcGossip[21900]["Text4-3"] = {431}
tNpcGossip[21900]["tOption4-3"] = {25}

tNpcGossip[21900]["Text4-4"] = {441}
tNpcGossip[21900]["tOption4-4"] = {26}

tNpcGossip[21900]["Text5-1"] = {511,512,513,514,515,516,517,518,519}
tNpcGossip[21900]["tOption5-1"] = {27,28,29,30}
tNpcGossip[21900]["OptionFunc27"] = "SummerBattle_PathFind</N>21900</N>21903"
tNpcGossip[21900]["OptionFunc28"] = "SummerBattle_PathFind</N>21900</N>21904"
tNpcGossip[21900]["OptionFunc29"] = "SummerBattle_PathFind</N>21900</N>21905"
tNpcGossip[21900]["OptionFunc30"] = "SummerBattle_PathFind</N>21900</N>21906"

-- 21901,'时尚泳装商'
tNpcFace[4942] = 871
tNpcGossip[21901] = tNpcGossip[21901] or DefaultNpc:new{}
tNpcGossip[21901]["OptionHidden"] = 1
tNpcGossip[21901]["DialogueText"] = tSummerBattle_Text[21901]

-- 活动前
tNpcGossip[21901]["Text1-1"] = {101,111,112,113,114,115}
tNpcGossip[21901]["tOption1-1"] = {1}
tNpcGossip[21901]["OptionFunc1"] = "SummerBattle_ExchangeNew</N>21901"

function SummerBattle_ExchangeNew(nNpcId)
--修改为新兑换商店时间
	if Sys_ChkFullTime(tActivityTime["Summer"]["NewExchange"]) then
		User_OpenExchangeShop(nNpcId)
	end
end

-- 活动后
tNpcGossip[21901]["Text1-2"] = {101,121}
tNpcGossip[21901]["tOption1-2"] = {2}

-- 21902,'典藏泳装商'
tNpcGossip[21902] = tNpcGossip[21902] or DefaultNpc:new{}
tNpcGossip[21902]["OptionHidden"] = 1
tNpcGossip[21902]["DialogueText"] = tSummerBattle_Text[21902]

-- 活动前
tNpcGossip[21902]["Text1-1"] = {101,111,112,113,114,115}
tNpcGossip[21902]["tOption1-1"] = {1}

-- 活动后
tNpcGossip[21902]["Text1-2"] = {101,121}
tNpcGossip[21902]["tOption1-2"] = {2}

-- 夏日魅力总榜
tNpcGossip[21906] = tNpcGossip[21906] or DefaultNpc:new{}
tNpcGossip[21906]["OptionHidden"] = 1
tNpcGossip[21906]["DialogueText"] = tSummerBattle_Text[21906]

-- 活动前
tNpcGossip[21906]["Text1-1"] = {101,111,112,113,114,115}
tNpcGossip[21906]["tOption1-1"] = {1}

tNpcGossip[21906]["Text2-1"] = {211,212,213,214,215,216,217,218}
tNpcGossip[21906]["tOption2-1"] = {10,12,14,5}
tNpcGossip[21906]["OptionPoint10"] = "3-1"
tNpcGossip[21906]["OptionPoint12"] = "4-1"
tNpcGossip[21906]["OptionPoint14"] = "5-1"
tNpcGossip[21906]["OptionFunc5"] = "SummerBattle_GlamourList</N>21906"

tNpcGossip[21906]["Text2-2"] = {221,222,223,224,225,226,227,228,229}
tNpcGossip[21906]["tOption2-2"] = {5}

tNpcGossip[21906]["Text3-1"] = {311,312,313,314,315,316,317,318}
tNpcGossip[21906]["tOption3-1"] = {5}

tNpcGossip[21906]["Text3-2"] = {321,322,323,324,325,326,327,328,329}
tNpcGossip[21906]["tOption3-2"] = {17}
tNpcGossip[21906]["OptionFunc17"] = "SummerBattle_GlamourList</N>21903"

tNpcGossip[21906]["Text4-1"] = {411,412,413,414,415,416,417,418}
tNpcGossip[21906]["tOption4-1"] = {5}

tNpcGossip[21906]["Text4-2"] = {421,422,423,424,425,426,427,428,429}
tNpcGossip[21906]["tOption4-2"] = {18}
tNpcGossip[21906]["OptionFunc18"] = "SummerBattle_GlamourList</N>21904"

tNpcGossip[21906]["Text5-1"] = {511,512,513,514,515,516,517,518}
tNpcGossip[21906]["tOption5-1"] = {5}

tNpcGossip[21906]["Text5-2"] = {521,522,523,524,525,526,527,528,529}
tNpcGossip[21906]["tOption5-2"] = {19}
tNpcGossip[21906]["OptionFunc19"] = "SummerBattle_GlamourList</N>21905"


------------------------------------------------------------------物品头像----------------------------------------------------------------------
tItemFace[3303696] = 696
tItemFace[3303697] = 697
tItemFace[3303698] = 698
tItemFace[3303699] = 699
tItemFace[3303700] = 700
tItemFace[3303701] = 701
tItemFace[3303702] = 702
tItemFace[3303703] = 703
tItemFace[3303704] = 704
tItemFace[3303705] = 705
tItemFace[3303706] = 706
tItemFace[3303707] = 707
tItemFace[3303720] = 708
tItemFace[3303721] = 709
tItemFace[3303723] = 710
tItemFace[3303724] = 711
tItemFace[3303759] = 712
tItemFace[3303760] = 713
tItemFace[3303761] = 714
tItemFace[3303763] = 715
tItemFace[3303764] = 716
tItemFace[3303765] = 717
tItemFace[3303766] = 718
tItemFace[3303767] = 719
tItemFace[3303789] = 720
tItemFace[3303858] = 721
tItemFace[3303976] = 721
tItemFace[3303859] = 722
------------------------------------------------------------------物品配置----------------------------------------------------------------------
-- 夏日外套材料券，171025调整为跨服组队PK赛兑换券
tItem[3303695] = tItem[3303695] or {}
tItem[3303695]["Function"] = function(nItemId,sItemName)
	if Sys_ChkFullTime(tActivityTime["Summer"]["UseItem"]) then
		SummerBattle_PathFind(nil,21901)
	end
	if not Sys_ChkFullTime(tActivityTime["Summer"]["UseItem"]) then
		Item_DelAllItemByType(nItemId)
		User_TalkChannel2005(tInterServiceTeamPk_Text[3303237]["OutOfTime"])
		return
	end
end

-- 热力沙滩时装碎片
tItem[3303696] = tItem[3303696] or {}
tItem[3303696]["DialogueText"] = tSummerBattle_Text[3303696]
tItem[3303696]["Text1-1"] = {111,112,113}
tItem[3303696]["tOption1-1"] = {1,2}
tItem[3303696]["OptionFunc1"] = "SummerBattle_SingleBet</N>3303696"
tItem[3303696]["OptionFunc2"] = "SummerBattle_Synthesis</N>3303696"

tItem[3303696]["Text2-1"] = {211}
tItem[3303696]["tOption2-1"] = {3}
tItem[3303696]["OptionFunc3"] = "SummerBattle_Return</N>3303696"

tItem[3303696]["Text2-2"] = {221}
tItem[3303696]["tOption2-2"] = {4}
tItem[3303696]["OptionFunc4"] = "SummerBattle_Return</N>3303696"

-- 盛夏海风时装碎片
tItem[3303697] = tItem[3303697] or {}
tItem[3303697]["DialogueText"] = tSummerBattle_Text[3303697]
tItem[3303697]["Text1-1"] = {111,112,113}
tItem[3303697]["tOption1-1"] = {1,2}
tItem[3303697]["OptionFunc1"] = "SummerBattle_SingleBet</N>3303697"
tItem[3303697]["OptionFunc2"] = "SummerBattle_Synthesis</N>3303697"

tItem[3303697]["Text2-1"] = {211}
tItem[3303697]["tOption2-1"] = {3}
tItem[3303697]["OptionFunc3"] = "SummerBattle_Return</N>3303697"

tItem[3303697]["Text2-2"] = {221}
tItem[3303697]["tOption2-2"] = {4}
tItem[3303697]["OptionPoint4"] = "1-1"
tItem[3303697]["OptionFunc4"] = "SummerBattle_Return</N>3303697"

-- 夏威夷阳光时装碎片
tItem[3303698] = tItem[3303698] or {}
tItem[3303698]["DialogueText"] = tSummerBattle_Text[3303698]
tItem[3303698]["Text1-1"] = {111,112,113}
tItem[3303698]["tOption1-1"] = {1,2}
tItem[3303698]["OptionFunc1"] = "SummerBattle_SingleBet</N>3303698"
tItem[3303698]["OptionFunc2"] = "SummerBattle_Synthesis</N>3303698"

tItem[3303698]["Text2-1"] = {211}
tItem[3303698]["tOption2-1"] = {3}
tItem[3303698]["OptionFunc3"] = "SummerBattle_Return</N>3303698"

tItem[3303698]["Text2-2"] = {221}
tItem[3303698]["tOption2-2"] = {4}
tItem[3303698]["OptionPoint4"] = "1-1"
tItem[3303698]["OptionFunc4"] = "SummerBattle_Return</N>3303698"

-- 梦幻泡泡液碎片
tItem[3303699] = tItem[3303699] or {}
tItem[3303699]["DialogueText"] = tSummerBattle_Text[3303699]
tItem[3303699]["Text1-1"] = {111,112,113}
tItem[3303699]["tOption1-1"] = {1,2}
tItem[3303699]["OptionFunc1"] = "SummerBattle_SingleBet</N>3303699"
tItem[3303699]["OptionFunc2"] = "SummerBattle_Synthesis</N>3303699"

tItem[3303699]["Text2-1"] = {211}
tItem[3303699]["tOption2-1"] = {3}
tItem[3303699]["OptionFunc3"] = "SummerBattle_Return</N>3303699"

tItem[3303699]["Text2-2"] = {221}
tItem[3303699]["tOption2-2"] = {4}
tItem[3303699]["OptionFunc4"] = "SummerBattle_Return</N>3303699"

-- 泳装外套洗赠液碎片
tItem[3303700] = tItem[3303700] or {}
tItem[3303700]["DialogueText"] = tSummerBattle_Text[3303700]
tItem[3303700]["Text1-1"] = {111,112,113}
tItem[3303700]["tOption1-1"] = {1,2}
tItem[3303700]["OptionFunc1"] = "SummerBattle_SingleBet</N>3303700"
tItem[3303700]["OptionFunc2"] = "SummerBattle_Synthesis</N>3303700"

tItem[3303700]["Text2-1"] = {211}
tItem[3303700]["tOption2-1"] = {3}
tItem[3303700]["OptionFunc3"] = "SummerBattle_Return</N>3303700"

tItem[3303700]["Text2-2"] = {221}
tItem[3303700]["tOption2-2"] = {4}
tItem[3303700]["OptionFunc4"] = "SummerBattle_Return</N>3303700"

-- 沙滩武器外套碎片
tItem[3303701] = tItem[3303701] or {}
tItem[3303701]["DialogueText"] = tSummerBattle_Text[3303701]
tItem[3303701]["Text1-1"] = {111,112,113}
tItem[3303701]["tOption1-1"] = {1,2}
tItem[3303701]["OptionFunc1"] = "SummerBattle_SingleBet</N>3303701"
tItem[3303701]["OptionFunc2"] = "SummerBattle_Synthesis</N>3303701"

tItem[3303701]["Text2-1"] = {211}
tItem[3303701]["tOption2-1"] = {3}
tItem[3303701]["OptionFunc3"] = "SummerBattle_Return</N>3303701"

tItem[3303701]["Text2-2"] = {221}
tItem[3303701]["tOption2-2"] = {4}
tItem[3303701]["OptionFunc4"] = "SummerBattle_Return</N>3303701"

-- 沙滩武器升级工具碎片
tItem[3303702] = tItem[3303702] or {}
tItem[3303702]["DialogueText"] = tSummerBattle_Text[3303702]
tItem[3303702]["Text1-1"] = {111,112,113}
tItem[3303702]["tOption1-1"] = {1,2}
tItem[3303702]["OptionFunc1"] = "SummerBattle_SingleBet</N>3303702"
tItem[3303702]["OptionFunc2"] = "SummerBattle_Synthesis</N>3303702"

tItem[3303702]["Text2-1"] = {211}
tItem[3303702]["tOption2-1"] = {3}
tItem[3303702]["OptionFunc3"] = "SummerBattle_Return</N>3303702"

tItem[3303702]["Text2-2"] = {221}
tItem[3303702]["tOption2-2"] = {4}
tItem[3303702]["OptionFunc4"] = "SummerBattle_Return</N>3303702"

-- 沙滩武器外套洗赠液碎片
tItem[3303703] = tItem[3303703] or {}
tItem[3303703]["DialogueText"] = tSummerBattle_Text[3303703]
tItem[3303703]["Text1-1"] = {111,112,113}
tItem[3303703]["tOption1-1"] = {1,2}
tItem[3303703]["OptionFunc1"] = "SummerBattle_SingleBet</N>3303703"
tItem[3303703]["OptionFunc2"] = "SummerBattle_Synthesis</N>3303703"

tItem[3303703]["Text2-1"] = {211}
tItem[3303703]["tOption2-1"] = {3}
tItem[3303703]["OptionFunc3"] = "SummerBattle_Return</N>3303703"

tItem[3303703]["Text2-2"] = {221}
tItem[3303703]["tOption2-2"] = {4}
tItem[3303703]["OptionFunc4"] = "SummerBattle_Return</N>3303703"

-- 霓虹翅翅膀外套碎片
tItem[3303704] = tItem[3303704] or {}
tItem[3303704]["DialogueText"] = tSummerBattle_Text[3303704]
tItem[3303704]["Text1-1"] = {111,112,113}
tItem[3303704]["tOption1-1"] = {1,2}
tItem[3303704]["OptionFunc1"] = "SummerBattle_SingleBet</N>3303704"
tItem[3303704]["OptionFunc2"] = "SummerBattle_Synthesis</N>3303704"

tItem[3303704]["Text2-1"] = {211}
tItem[3303704]["tOption2-1"] = {3}
tItem[3303704]["OptionFunc3"] = "SummerBattle_Return</N>3303704"

tItem[3303704]["Text2-2"] = {221}
tItem[3303704]["tOption2-2"] = {4}
tItem[3303704]["OptionFunc4"] = "SummerBattle_Return</N>3303704"

-- 海妖之歌翅膀外套碎片
tItem[3303705] = tItem[3303705] or {}
tItem[3303705]["DialogueText"] = tSummerBattle_Text[3303705]
tItem[3303705]["Text1-1"] = {111,112,113}
tItem[3303705]["tOption1-1"] = {1,2}
tItem[3303705]["OptionFunc1"] = "SummerBattle_SingleBet</N>3303705"
tItem[3303705]["OptionFunc2"] = "SummerBattle_Synthesis</N>3303705"

tItem[3303705]["Text2-1"] = {211}
tItem[3303705]["tOption2-1"] = {3}
tItem[3303705]["OptionFunc3"] = "SummerBattle_Return</N>3303705"

tItem[3303705]["Text2-2"] = {221}
tItem[3303705]["tOption2-2"] = {4}
tItem[3303705]["OptionFunc4"] = "SummerBattle_Return</N>3303705"

-- 百变霓虹魔术棒碎片
tItem[3303706] = tItem[3303706] or {}
tItem[3303706]["DialogueText"] = tSummerBattle_Text[3303706]
tItem[3303706]["Text1-1"] = {111,112,113}
tItem[3303706]["tOption1-1"] = {1,2}
tItem[3303706]["OptionFunc1"] = "SummerBattle_SingleBet</N>3303706"
tItem[3303706]["OptionFunc2"] = "SummerBattle_Synthesis</N>3303706"

tItem[3303706]["Text2-1"] = {211}
tItem[3303706]["tOption2-1"] = {3}
tItem[3303706]["OptionFunc3"] = "SummerBattle_Return</N>3303706"

tItem[3303706]["Text2-2"] = {221}
tItem[3303706]["tOption2-2"] = {4}
tItem[3303706]["OptionFunc4"] = "SummerBattle_Return</N>3303706"

-- 夏日翅膀外套洗赠液碎片
tItem[3303707] = tItem[3303707] or {}
tItem[3303707]["DialogueText"] = tSummerBattle_Text[3303707]
tItem[3303707]["Text1-1"] = {111,112,113}
tItem[3303707]["tOption1-1"] = {1,2}
tItem[3303707]["OptionFunc1"] = "SummerBattle_SingleBet</N>3303707"
tItem[3303707]["OptionFunc2"] = "SummerBattle_Synthesis</N>3303707"

tItem[3303707]["Text2-1"] = {211}
tItem[3303707]["tOption2-1"] = {3}
tItem[3303707]["OptionFunc3"] = "SummerBattle_Return</N>3303707"

tItem[3303707]["Text2-2"] = {221}
tItem[3303707]["tOption2-2"] = {4}
tItem[3303707]["OptionFunc4"] = "SummerBattle_Return</N>3303707"

-- 夏日外套终极礼包
tItem[3303708] = tItem[3303708] or {}
tItem[3303708]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseRandomItem(nItemId)
end

-- 稀有材料大礼包
tItem[3303709] = tItem[3303709] or {}
tItem[3303709]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseRandomItem(nItemId)
end

-- 3303710 沙滩武器外套时尚包
tItem[3303710] = tItem[3303710] or {}
tItem[3303710]["Function"] = function(nItemId,sItemName)
	RouletteMould_Main(3893)
end

-- 3303711 泳装外套时尚包
tItem[3303711] = tItem[3303711] or {}
tItem[3303711]["Function"] = function(nItemId,sItemName)
	RouletteMould_Main(3894)
end

-- 3303712 夏日翅膀外套时尚包
tItem[3303712] = tItem[3303712] or {}
tItem[3303712]["Function"] = function(nItemId,sItemName)
	RouletteMould_Main(3896)
end

-- 3303713 夏日外套材料券礼包
tItem[3303713] = tItem[3303713] or {}
tItem[3303713]["Function"] = function(nItemId,sItemName)
	RouletteMould_Main(3898)
end

-- 3303714 夏日外套材料券豪华包
tItem[3303714] = tItem[3303714] or {}
tItem[3303714]["Function"] = function(nItemId,sItemName)
	RouletteMould_Main(3899)
end

-- 3303716 泳装外套典藏包
tItem[3303716] = tItem[3303716] or {}
tItem[3303716]["Function"] = function(nItemId,sItemName)
	RouletteMould_Main(3895)
end

-- 3303717 夏日翅膀外套典藏包
tItem[3303717] = tItem[3303717] or {}
tItem[3303717]["Function"] = function(nItemId,sItemName)
	RouletteMould_Main(3897)
end

-- 九天玄鸟豪华包
tItem[3303719] = tItem[3303719] or {}
tItem[3303719]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 1天沙滩武器豪华可选包
tItem[3303720] = tItem[3303720] or {}
tItem[3303720]["DialogueText"] = tSummerBattle_Text[3303720]
tItem[3303720]["Text1-1"] = {111}
tItem[3303720]["tOption1-1"] = {1,2,3,4}
tItem[3303720]["OptionFunc1"] = "SummerBattle_Optional</N>3303720</N>1"
tItem[3303720]["OptionFunc2"] = "SummerBattle_Optional</N>3303720</N>2"
tItem[3303720]["OptionFunc3"] = "SummerBattle_Optional</N>3303720</N>3"
tItem[3303720]["OptionFunc4"] = "SummerBattle_Optional</N>3303720</N>4"

-- 1天沙滩武器外套可选包
tItem[3303721] = tItem[3303721] or {}
tItem[3303721]["DialogueText"] = tSummerBattle_Text[3303721]
tItem[3303721]["Text1-1"] = {111}
tItem[3303721]["tOption1-1"] = {1,2,3,4}
tItem[3303721]["OptionFunc1"] = "SummerBattle_Optional</N>3303721</N>1"
tItem[3303721]["OptionFunc2"] = "SummerBattle_Optional</N>3303721</N>2"
tItem[3303721]["OptionFunc3"] = "SummerBattle_Optional</N>3303721</N>3"
tItem[3303721]["OptionFunc4"] = "SummerBattle_Optional</N>3303721</N>4"

-- 沙滩武器外套材料包
tItem[3303722] = tItem[3303722] or {}
tItem[3303722]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 1天沙滩武器外套礼包
tItem[3303723] = tItem[3303723] or {}
tItem[3303723]["DialogueText"] = tSummerBattle_Text[3303723]
tItem[3303723]["Text1-1"] = {111}
tItem[3303723]["tOption1-1"] = {1,2,3,4}
tItem[3303723]["OptionFunc1"] = "SummerBattle_Optional</N>3303723</N>1"
tItem[3303723]["OptionFunc2"] = "SummerBattle_Optional</N>3303723</N>2"
tItem[3303723]["OptionFunc3"] = "SummerBattle_Optional</N>3303723</N>3"
tItem[3303723]["OptionFunc4"] = "SummerBattle_Optional</N>3303723</N>4"

-- 1天沙滩武器外套豪华包
tItem[3303724] = tItem[3303724] or {}
tItem[3303724]["DialogueText"] = tSummerBattle_Text[3303724]
tItem[3303724]["Text1-1"] = {111}
tItem[3303724]["tOption1-1"] = {1,2,3,4}
tItem[3303724]["OptionFunc1"] = "SummerBattle_Optional</N>3303724</N>1"
tItem[3303724]["OptionFunc2"] = "SummerBattle_Optional</N>3303724</N>2"
tItem[3303724]["OptionFunc3"] = "SummerBattle_Optional</N>3303724</N>3"
tItem[3303724]["OptionFunc4"] = "SummerBattle_Optional</N>3303724</N>4"

-- 1天热力沙滩时装包
tItem[3303725] = tItem[3303725] or {}
tItem[3303725]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 1天盛夏海风时装包
tItem[3303726] = tItem[3303726] or {}
tItem[3303726]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 1天夏威夷阳光时装包
tItem[3303727] = tItem[3303727] or {}
tItem[3303727]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 5个【热力沙滩时装碎片】
tItem[3303728] = tItem[3303728] or {}
tItem[3303728]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 5个【盛夏海风时装碎片】
tItem[3303729] = tItem[3303729] or {}
tItem[3303729]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 5个【夏威夷阳光时装碎片】
tItem[3303730] = tItem[3303730] or {}
tItem[3303730]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 1天夏日翅膀外套时尚包
tItem[3303731] = tItem[3303731] or {}
tItem[3303731]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseRandomItem(nItemId)
end

-- 1天【A】霓虹翅时尚包
tItem[3303732] = tItem[3303732] or {}
tItem[3303732]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 1天【B】霓虹翅时尚包
tItem[3303733] = tItem[3303733] or {}
tItem[3303733]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 1天【C】霓虹翅时尚包
tItem[3303734] = tItem[3303734] or {}
tItem[3303734]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 1天【D】霓虹翅时尚包
tItem[3303735] = tItem[3303735] or {}
tItem[3303735]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 1天【A】霓虹翅典藏包
tItem[3303736] = tItem[3303736] or {}
tItem[3303736]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 1天【B】霓虹翅典藏包
tItem[3303737] = tItem[3303737] or {}
tItem[3303737]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 1天【C】霓虹翅典藏包
tItem[3303738] = tItem[3303738] or {}
tItem[3303738]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 1天【D】霓虹翅典藏包
tItem[3303739] = tItem[3303739] or {}
tItem[3303739]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 1天海妖之歌典藏包
tItem[3303740] = tItem[3303740] or {}
tItem[3303740]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 1天夏日翅膀外套典藏包
tItem[3303741] = tItem[3303741] or {}
tItem[3303741]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 2个【海妖之歌翅膀外套碎片】
tItem[3303742] = tItem[3303742] or {}
tItem[3303742]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 10张夏日外套材料券
tItem[3303743] = tItem[3303743] or {}
tItem[3303743]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 30张夏日外套材料券
tItem[3303744] = tItem[3303744] or {}
tItem[3303744]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 50张夏日外套材料券
tItem[3303745] = tItem[3303745] or {}
tItem[3303745]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 150张夏日外套材料券
tItem[3303746] = tItem[3303746] or {}
tItem[3303746]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 180张夏日外套材料券
tItem[3303747] = tItem[3303747] or {}
tItem[3303747]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 200张夏日外套材料券
tItem[3303748] = tItem[3303748] or {}
tItem[3303748]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 300张夏日外套材料券
tItem[3303749] = tItem[3303749] or {}
tItem[3303749]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 500张夏日外套材料券
tItem[3303750] = tItem[3303750] or {}
tItem[3303750]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 600张夏日外套材料券
tItem[3303751] = tItem[3303751] or {}
tItem[3303751]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 1000张夏日外套材料券
tItem[3303752] = tItem[3303752] or {}
tItem[3303752]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 2500张夏日外套材料券
tItem[3303753] = tItem[3303753] or {}
tItem[3303753]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 3000张夏日外套材料券
tItem[3303754] = tItem[3303754] or {}
tItem[3303754]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 5000张夏日外套材料券
tItem[3303755] = tItem[3303755] or {}
tItem[3303755]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 8000张夏日外套材料券
tItem[3303756] = tItem[3303756] or {}
tItem[3303756]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 10000张夏日外套材料券
tItem[3303757] = tItem[3303757] or {}
tItem[3303757]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 990张夏日外套材料券
tItem[3303758] = tItem[3303758] or {}
tItem[3303758]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 100张夏日外套材料券
tItem[3303860] = tItem[3303860] or {}
tItem[3303860]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 梦幻泡泡液
tItem[3303759] = tItem[3303759] or {}
tItem[3303759]["DialogueText"] = tSummerBattle_Text[3303759]
tItem[3303759]["Function"] = function(nItemId,sItemName)
	SummerBattle_LightEffect(nItemId)
end

tItem[3303759]["Text2-1"] = {211}
tItem[3303759]["tOption2-1"] = {2}

tItem[3303759]["Text2-2"] = {221}
tItem[3303759]["tOption2-2"] = {3}

tItem[3303759]["Text2-3"] = {231}
tItem[3303759]["tOption2-3"] = {4}
tItem[3303759]["OptionFunc4"] = "SummerBattle_LightEffect</N>3303759"

tItem[3303759]["Text2-4"] = {241}
tItem[3303759]["tOption2-4"] = {5}
tItem[3303759]["OptionFunc5"] = "SummerBattle_LightEffect</N>3303759"

tItem[3303759]["Text2-5"] = {251}
tItem[3303759]["tOption2-5"] = {6}

-- 泳装外套洗赠液
tItem[3303760] = tItem[3303760] or {}
tItem[3303760]["DialogueText"] = tSummerBattle_Text[3303760]
tItem[3303760]["Text1-1"] = {111,112,113,114,115,116,117}
tItem[3303760]["tOption1-1"] = {1,2,3,4}
tItem[3303760]["ChkFunc1-1"] = function ()
	tItem[3303760]["tOption1-1"] = {}
	
	for i = 1,3 do
		local nWashId = tSummerBattle_Package[3303760][i]["WashId"]
		if Item_ChkMulItem(nWashId,nWashId,1,2,0,0,0) then
			table.insert(tItem[3303760]["tOption1-1"],tSummerBattle_Package[3303760][i]["Option"])
		end
	end
	
	if #tItem[3303760]["tOption1-1"] == 0 then
		tItem[3303760]["tOption1-1"] = {4}
	end
	
	return true
end

tItem[3303760]["OptionFunc1"] = "SummerBattle_ChooseProp</N>3303760</N>1"
tItem[3303760]["OptionFunc2"] = "SummerBattle_ChooseProp</N>3303760</N>2"
tItem[3303760]["OptionFunc3"] = "SummerBattle_ChooseProp</N>3303760</N>3"

tItem[3303760]["Text2-1"] = {211}
tItem[3303760]["tOption2-1"] = {5}

tItem[3303760]["Text2-2"] = {221}
tItem[3303760]["tOption2-2"] = {6}

tItem[3303760]["Text4-1"] = {411}
tItem[3303760]["tOption4-1"] = {8}
tItem[3303760]["OptionFunc8"] = "SummerBattle_Return</N>3303760"

tItem[3303760]["Text4-2"] = {421}
tItem[3303760]["tOption4-2"] = {9}

tItem[3303760]["Text4-3"] = {431}
tItem[3303760]["tOption4-3"] = {10}
tItem[3303760]["OptionFunc10"] = "SummerBattle_Confirm</N>3303760</N>3"

tItem[3303760]["Text4-4"] = {441}
tItem[3303760]["tOption4-4"] = {11}
tItem[3303760]["OptionFunc11"] = "SummerBattle_Confirm</N>3303760</N>3"

-- 夏日时尚收纳包
tItem[3303761] = tItem[3303761] or {}
tItem[3303761]["DialogueText"] = tSummerBattle_Text[3303761]
tItem[3303761]["Function"] = function(nItemId,sItemName)
	-- 判断活动时间
	if not SummerBattle_BeOverdue(nItemId) then
		return
	end
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end

tItem[3303761]["Text1-1"] = {101,102,103,104,105,106,107,108,109,110,111,112,113,114,115}
tItem[3303761]["tOption1-1"] = {1,2,3,4}
tItem[3303761]["ChkFunc1-1"] = function ()
	local tPieces,nPieces = SummerBattle_GetBagPieces()
	
	for i,v in pairs(tSummerBattle_Pieces) do
		local nData = tPieces[v] or 0
		local sIndex = tSummerBattle_StorageBag[v]["Text"]
		local nLen = tSummerBattle_StorageBag[v]["Len"]
		
		if nLen > 0 then
			local nFront = tSummerBattle_StorageBag[v]["Front"]
			local nFrontData = tPieces[nFront] or 0
			nLen = nLen - string.len(tostring(nFrontData))*2
		end

		local sText = Sys_Alignment(string.format(tSummerBattle_Text[3303761][sIndex],nData),nLen)
		tItem[3303761][sIndex] = sText
	end
	
	return true
end

tItem[3303761]["OptionFunc1"] = "SummerBattle_TakeAllPieces</N>3303761"
tItem[3303761]["OptionFunc2"] = "SummerBattle_TakeOutAllPieces</N>3303761"
tItem[3303761]["OptionFunc3"] = "SummerBattle_MakeDialogue</N>3303761"

tItem[3303761]["Text2-1"] = {211}
tItem[3303761]["tOption2-1"] = {5}
tItem[3303761]["OptionPoint5"] = "1-1"

tItem[3303761]["Text2-2"] = {221}
tItem[3303761]["tOption2-2"] = {6}
tItem[3303761]["OptionPoint6"] = "1-1"

tItem[3303761]["Text3-1"] = {311}
tItem[3303761]["tOption3-1"] = {7}

tItem[3303761]["Text3-2"] = {321}
tItem[3303761]["tOption3-2"] = {8}

tItem[3303761]["Text3-3"] = {331}
tItem[3303761]["tOption3-3"] = {23}

tItem[3303761]["Text4-1"] = {401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416}
-- tItem[3303761]["tOption4-1"] = {9,10}
tItem[3303761]["tOption4-1"] = {10}
tItem[3303761]["OptionFunc9"] = "SummerBattle_LookWeb"

tItem[3303761]["Text4-2"] = {401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,417}
tItem[3303761]["tOption4-2"] = {11,12,13,14,15,16,17,18,19,20,21,22}

tItem[3303761]["OptionFunc11"] = "SummerBattle_MakeCoat</N>3303761</N>3303696"
tItem[3303761]["OptionFunc12"] = "SummerBattle_MakeCoat</N>3303761</N>3303697"
tItem[3303761]["OptionFunc13"] = "SummerBattle_MakeCoat</N>3303761</N>3303698"
tItem[3303761]["OptionFunc14"] = "SummerBattle_MakeCoat</N>3303761</N>3303701"
tItem[3303761]["OptionFunc15"] = "SummerBattle_MakeCoat</N>3303761</N>3303704"
tItem[3303761]["OptionFunc16"] = "SummerBattle_MakeCoat</N>3303761</N>3303705"
tItem[3303761]["OptionFunc17"] = "SummerBattle_MakeCoat</N>3303761</N>3303699"
tItem[3303761]["OptionFunc18"] = "SummerBattle_MakeCoat</N>3303761</N>3303702"
tItem[3303761]["OptionFunc19"] = "SummerBattle_MakeCoat</N>3303761</N>3303700"
tItem[3303761]["OptionFunc20"] = "SummerBattle_MakeCoat</N>3303761</N>3303703"
tItem[3303761]["OptionFunc21"] = "SummerBattle_MakeCoat</N>3303761</N>3303706"
tItem[3303761]["OptionFunc22"] = "SummerBattle_MakeCoat</N>3303761</N>3303707"

tItem[3303761]["Text5-1"] = {511}
tItem[3303761]["tOption5-1"] = {24}
tItem[3303761]["OptionFunc24"] = "SummerBattle_MakeDialogue</N>3303761"

tItem[3303761]["Text5-2"] = {521}
tItem[3303761]["tOption5-2"] = {25}
tItem[3303761]["OptionFunc25"] = "SummerBattle_MakeDialogue</N>3303761"

tItem[3303761]["Text5-3"] = {531}
tItem[3303761]["tOption5-3"] = {26}

-- 沙滩武器升级工具
tItem[3303762] = tItem[3303762] or {}
tItem[3303762]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 沙滩武器外套洗赠液
tItem[3303763] = tItem[3303763] or {}
tItem[3303763]["DialogueText"] = tSummerBattle_Text[3303763]
tItem[3303763]["Text1-1"] = {111,112,113,114,115,116,117}
tItem[3303763]["tOption1-1"] = {1,2}
tItem[3303763]["ChkFunc1-1"] = function ()
	tItem[3303763]["tOption1-1"] = {}
	local nWashId = tSummerBattle_Package[3303763][1]["WashId"]
	if Item_ChkMulItem(nWashId,nWashId,1) then
		tItem[3303763]["tOption1-1"] = {1}
	else
		tItem[3303763]["tOption1-1"] = {2}
	end

	return true
end

tItem[3303763]["OptionFunc1"] = "SummerBattle_ChooseProp</N>3303763</N>1"

tItem[3303763]["Text2-1"] = {211}
tItem[3303763]["tOption2-1"] = {5}

tItem[3303763]["Text2-2"] = {221}
tItem[3303763]["tOption2-2"] = {6}

tItem[3303763]["Text4-1"] = {411}
tItem[3303763]["tOption4-1"] = {8}
tItem[3303763]["OptionFunc8"] = "SummerBattle_Return</N>3303763"

-- 百变霓虹魔术棒
tItem[3303764] = tItem[3303764] or {}
tItem[3303764]["DialogueText"] = tSummerBattle_Text[3303764]
tItem[3303764]["Text1-1"] = {111}
tItem[3303764]["tOption1-1"] = {1,2,3,4,5,6,7,8,15}
tItem[3303764]["ChkFunc1-1"] = function ()
	tItem[3303764]["tOption1-1"] = {}
	
	for i = 1,8 do
		local nItemId = tSummerBattle_Package[3303764][i]["ChangeId"]
		
		if Item_ChkItem(nItemId) then
			table.insert(tItem[3303764]["tOption1-1"],i)
		end
	end
	
	if #tItem[3303764]["tOption1-1"] == 0 then
		tItem[3303764]["tOption1-1"] = {15}
	end
	
	return true
end
tItem[3303764]["OptionFunc1"] = "SummerBattle_ChangeColor</N>3303764</N>1"
tItem[3303764]["OptionFunc2"] = "SummerBattle_ChangeColor</N>3303764</N>2"
tItem[3303764]["OptionFunc3"] = "SummerBattle_ChangeColor</N>3303764</N>3"
tItem[3303764]["OptionFunc4"] = "SummerBattle_ChangeColor</N>3303764</N>4"
tItem[3303764]["OptionFunc5"] = "SummerBattle_ChangeColor</N>3303764</N>5"
tItem[3303764]["OptionFunc6"] = "SummerBattle_ChangeColor</N>3303764</N>6"
tItem[3303764]["OptionFunc7"] = "SummerBattle_ChangeColor</N>3303764</N>7"
tItem[3303764]["OptionFunc8"] = "SummerBattle_ChangeColor</N>3303764</N>8"

tItem[3303764]["Text2-1"] = {211}
tItem[3303764]["tOption2-1"] = {9,10,11,12}

tItem[3303764]["Text2-2"] = {221}
tItem[3303764]["tOption2-2"] = {13}

tItem[3303764]["Text2-3"] = {231}
tItem[3303764]["tOption2-3"] = {14}


-- 夏日翅膀外套洗赠液
tItem[3303765] = tItem[3303765] or {}
tItem[3303765]["DialogueText"] = tSummerBattle_Text[3303765]
tItem[3303765]["Text1-1"] = {111,112,113,114,115,116}
tItem[3303765]["tOption1-1"] = {1,2,3,4,12,13}
tItem[3303765]["ChkFunc1-1"] = function ()
	tItem[3303765]["tOption1-1"] = {}
	
	for i = 1,5 do
		local nWashId = tSummerBattle_Package[3303765][i]["WashId"]
		if Item_ChkMulItem(nWashId,nWashId,1) then
			table.insert(tItem[3303765]["tOption1-1"],tSummerBattle_Package[3303765][i]["Option"])
		end
	end
	
	if #tItem[3303765]["tOption1-1"] == 0 then
		tItem[3303765]["tOption1-1"] = {13}
	end
	
	return true
end

tItem[3303765]["OptionFunc1"] = "SummerBattle_ChooseProp</N>3303765</N>1"
tItem[3303765]["OptionFunc2"] = "SummerBattle_ChooseProp</N>3303765</N>2"
tItem[3303765]["OptionFunc3"] = "SummerBattle_ChooseProp</N>3303765</N>3"
tItem[3303765]["OptionFunc4"] = "SummerBattle_ChooseProp</N>3303765</N>4"
tItem[3303765]["OptionFunc12"] = "SummerBattle_ChooseProp</N>3303765</N>5"

tItem[3303765]["Text2-1"] = {211}
tItem[3303765]["tOption2-1"] = {5}

tItem[3303765]["Text2-2"] = {221}
tItem[3303765]["tOption2-2"] = {6}

tItem[3303765]["Text4-1"] = {411}
tItem[3303765]["tOption4-1"] = {8}
tItem[3303765]["OptionFunc8"] = "SummerBattle_Return</N>3303765"

tItem[3303765]["Text4-2"] = {421}
tItem[3303765]["tOption4-2"] = {9}

tItem[3303765]["Text4-3"] = {431}
tItem[3303765]["tOption4-3"] = {10}
tItem[3303765]["OptionFunc10"] = "SummerBattle_Confirm</N>3303765</N>3"

tItem[3303765]["Text4-4"] = {441}
tItem[3303765]["tOption4-4"] = {11}
tItem[3303765]["OptionFunc11"] = "SummerBattle_Confirm</N>3303765</N>3"


-- 30天沙滩武器外套包（赠）
tItem[3303766] = tItem[3303766] or {}
tItem[3303766]["DialogueText"] = tSummerBattle_Text[3303766]
tItem[3303766]["Text1-1"] = {111,112,113,114,115,116,117,118}
tItem[3303766]["tOption1-1"] = {1,2,3,4}
tItem[3303766]["OptionFunc1"] = "SummerBattle_Optional</N>3303766</N>1"
tItem[3303766]["OptionFunc2"] = "SummerBattle_Optional</N>3303766</N>2"
tItem[3303766]["OptionFunc3"] = "SummerBattle_Optional</N>3303766</N>3"
tItem[3303766]["OptionFunc4"] = "SummerBattle_Optional</N>3303766</N>4"

-- 30天沙滩武器外套包
tItem[3303767] = tItem[3303767] or {}
tItem[3303767]["DialogueText"] = tSummerBattle_Text[3303767]
tItem[3303767]["Text1-1"] = {111,112,113,114,115,116,117,118}
tItem[3303767]["tOption1-1"] = {1,2,3,4}
tItem[3303767]["OptionFunc1"] = "SummerBattle_Optional</N>3303767</N>1"
tItem[3303767]["OptionFunc2"] = "SummerBattle_Optional</N>3303767</N>2"
tItem[3303767]["OptionFunc3"] = "SummerBattle_Optional</N>3303767</N>3"
tItem[3303767]["OptionFunc4"] = "SummerBattle_Optional</N>3303767</N>4"

-- 3303777 130级组冠军礼包
tItem[3303777] = tItem[3303777] or {}
tItem[3303777]["Function"] = function(nItemId,sItemName)
	SummerBattle_TeamPk(nItemId)
end

-- 3303778 130级组亚军礼包
tItem[3303778] = tItem[3303778] or {}
tItem[3303778]["Function"] = function(nItemId,sItemName)
	SummerBattle_TeamPk(nItemId)
end

-- 3303779 130级组季军礼包
tItem[3303779] = tItem[3303779] or {}
tItem[3303779]["Function"] = function(nItemId,sItemName)
	SummerBattle_TeamPk(nItemId)
end

-- 3303780 130级组八强礼包
tItem[3303780] = tItem[3303780] or {}
tItem[3303780]["Function"] = function(nItemId,sItemName)
	SummerBattle_TeamPk(nItemId)
end

-- 3303781 120级组冠军礼包
tItem[3303781] = tItem[3303781] or {}
tItem[3303781]["Function"] = function(nItemId,sItemName)
	SummerBattle_TeamPk(nItemId)
end

-- 3303782 120级组亚军礼包
tItem[3303782] = tItem[3303782] or {}
tItem[3303782]["Function"] = function(nItemId,sItemName)
	SummerBattle_TeamPk(nItemId)
end

-- 3303783 120级组季军礼包
tItem[3303783] = tItem[3303783] or {}
tItem[3303783]["Function"] = function(nItemId,sItemName)
	SummerBattle_TeamPk(nItemId)
end

-- 3303784 120级组八强礼包
tItem[3303784] = tItem[3303784] or {}
tItem[3303784]["Function"] = function(nItemId,sItemName)
	SummerBattle_TeamPk(nItemId)
end

-- 3303785 110级组冠军礼包
tItem[3303785] = tItem[3303785] or {}
tItem[3303785]["Function"] = function(nItemId,sItemName)
	SummerBattle_TeamPk(nItemId)
end

-- 3303786 110级组亚军礼包
tItem[3303786] = tItem[3303786] or {}
tItem[3303786]["Function"] = function(nItemId,sItemName)
	SummerBattle_TeamPk(nItemId)
end

-- 3303787 110级组季军礼包
tItem[3303787] = tItem[3303787] or {}
tItem[3303787]["Function"] = function(nItemId,sItemName)
	SummerBattle_TeamPk(nItemId)
end

-- 3303788 110级组八强礼包
tItem[3303788] = tItem[3303788] or {}
tItem[3303788]["Function"] = function(nItemId,sItemName)
	SummerBattle_TeamPk(nItemId)
end

--神纹版本跨服组队PK赛礼包
-- 3306685 130级组冠军礼包
tItem[3306685] = tItem[3306685] or {}
tItem[3306685]["Function"] = function(nItemId,sItemName)
	SummerBattle_TeamPk(nItemId)
end
-- 3306686 130级组亚军礼包
tItem[3306686] = tItem[3306686] or {}
tItem[3306686]["Function"] = function(nItemId,sItemName)
	SummerBattle_TeamPk(nItemId)
end
-- 3303779 130级组季军礼包
tItem[3306687] = tItem[3306687] or {}
tItem[3306687]["Function"] = function(nItemId,sItemName)
	SummerBattle_TeamPk(nItemId)
end

-- 3306688 130级组八强礼包
tItem[3306688] = tItem[3306688] or {}
tItem[3306688]["Function"] = function(nItemId,sItemName)
	SummerBattle_TeamPk(nItemId)
end

-- 3306689 120级组冠军礼包
tItem[3306689] = tItem[3306689] or {}
tItem[3306689]["Function"] = function(nItemId,sItemName)
	SummerBattle_TeamPk(nItemId)
end

-- 3306690 120级组亚军礼包
tItem[3306690] = tItem[3306690] or {}
tItem[3306690]["Function"] = function(nItemId,sItemName)
	SummerBattle_TeamPk(nItemId)
end

-- 3306691 120级组季军礼包
tItem[3306691] = tItem[3306691] or {}
tItem[3306691]["Function"] = function(nItemId,sItemName)
	SummerBattle_TeamPk(nItemId)
end

-- 3306692 120级组八强礼包
tItem[3306692] = tItem[3306692] or {}
tItem[3306692]["Function"] = function(nItemId,sItemName)
	SummerBattle_TeamPk(nItemId)
end

-- 3306693 110级组冠军礼包
tItem[3306693] = tItem[3306693] or {}
tItem[3306693]["Function"] = function(nItemId,sItemName)
	SummerBattle_TeamPk(nItemId)
end

-- 3306694 110级组亚军礼包
tItem[3306694] = tItem[3306694] or {}
tItem[3306694]["Function"] = function(nItemId,sItemName)
	SummerBattle_TeamPk(nItemId)
end

-- 3306695 110级组季军礼包
tItem[3306695] = tItem[3306695] or {}
tItem[3306695]["Function"] = function(nItemId,sItemName)
	SummerBattle_TeamPk(nItemId)
end

-- 3306696 110级组八强礼包
tItem[3306696] = tItem[3306696] or {}
tItem[3306696]["Function"] = function(nItemId,sItemName)
	SummerBattle_TeamPk(nItemId)
end
--3306697 通用符文精粹包
tItem[3306697] = tItem[3306697] or {}
tItem[3306697]["Function"] = function(nItemId,sItemName)
	SummerBattle_OpenUniversalRunesPack(nItemId)
end
--3303695 战火重燃兑换券
tItem[3303695] = tItem[3303695] or {}
tItem[3303695]["Function"] = function(nItemId,sItemName)
	--判断活动时间
	 if not Sys_ChkFullTime(tSummerBattle_Constant["UseItemTime"]) then
			if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId,nUserId) then
				User_TalkChannel2005(tSummerBattle_Text["OutTime"])
			end
		return true
	 end
end

-- 90天沙滩武器豪华包
tItem[3303789] = tItem[3303789] or {}
tItem[3303789]["DialogueText"] = tSummerBattle_Text[3303789]
tItem[3303789]["Text1-1"] = {111,112,113,114,115,116,117,118}
tItem[3303789]["tOption1-1"] = {1,2,3,4}
tItem[3303789]["OptionFunc1"] = "SummerBattle_Optional</N>3303789</N>1"
tItem[3303789]["OptionFunc2"] = "SummerBattle_Optional</N>3303789</N>2"
tItem[3303789]["OptionFunc3"] = "SummerBattle_Optional</N>3303789</N>3"
tItem[3303789]["OptionFunc4"] = "SummerBattle_Optional</N>3303789</N>4"

-- 7天沙滩武器外套包（赠）
tItem[3303858] = tItem[3303858] or {}
tItem[3303858]["DialogueText"] = tSummerBattle_Text[3303858]
tItem[3303858]["Text1-1"] = {111,112,113,114,115,116,117,118}
tItem[3303858]["tOption1-1"] = {1,2,3,4}
tItem[3303858]["OptionFunc1"] = "SummerBattle_Optional</N>3303858</N>1"
tItem[3303858]["OptionFunc2"] = "SummerBattle_Optional</N>3303858</N>2"
tItem[3303858]["OptionFunc3"] = "SummerBattle_Optional</N>3303858</N>3"
tItem[3303858]["OptionFunc4"] = "SummerBattle_Optional</N>3303858</N>4"

-- 7天沙滩武器外套包（赠）
tItem[3303976] = tItem[3303976] or {}
tItem[3303976]["DialogueText"] = tSummerBattle_Text[3303976]
tItem[3303976]["Text1-1"] = {111,112,113,114,115,116,117,118}
tItem[3303976]["tOption1-1"] = {1,2,3,4}
tItem[3303976]["OptionFunc1"] = "SummerBattle_Optional</N>3303976</N>1"
tItem[3303976]["OptionFunc2"] = "SummerBattle_Optional</N>3303976</N>2"
tItem[3303976]["OptionFunc3"] = "SummerBattle_Optional</N>3303976</N>3"
tItem[3303976]["OptionFunc4"] = "SummerBattle_Optional</N>3303976</N>4"

-- 3303861	骑马积分礼包
tItem[3303861] = tItem[3303861] or {}
tItem[3303861]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end

-- 3303772	碧痕霓虹羽（赠）
tItem[3303772] = tItem[3303772] or {}
tItem[3303772]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseWingItem(nItemId)
end

-- 3303773	橙光霓虹羽（赠）
tItem[3303773] = tItem[3303773] or {}
tItem[3303773]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseWingItem(nItemId)
end

-- 3303774	流焰霓虹羽（赠）
tItem[3303774] = tItem[3303774] or {}
tItem[3303774]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseWingItem(nItemId)
end

-- 3303775	明光霓虹羽（赠）
tItem[3303775] = tItem[3303775] or {}
tItem[3303775]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseWingItem(nItemId)
end

-- 3303776	海妖之歌翅膀外套（赠）
tItem[3303776] = tItem[3303776] or {}
tItem[3303776]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseWingItem(nItemId)
end

-- 3303797	碧痕霓虹羽（绿色）
tItem[3303797] = tItem[3303797] or {}
tItem[3303797]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseWingItem(nItemId)
end

-- 3303798	橙光霓虹羽（橙色）
tItem[3303798] = tItem[3303798] or {}
tItem[3303798]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseWingItem(nItemId)
end

-- 3303799	流焰霓虹羽（红色）
tItem[3303799] = tItem[3303799] or {}
tItem[3303799]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseWingItem(nItemId)
end

-- 3303800	明光霓虹羽（黄色）
tItem[3303800] = tItem[3303800] or {}
tItem[3303800]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseWingItem(nItemId)
end

-- 3303801	海妖之歌翅膀外套
tItem[3303801] = tItem[3303801] or {}
tItem[3303801]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseWingItem(nItemId)
end

-- 3304246	明亮星陨石包
tItem[3304246] = tItem[3304246] or {}
tItem[3304246]["Function"] = function(nItemId,sItemName)
	SummerBattle_UseItem(nItemId)
end
tItem[3319013] = tItem[3319013] or {}
tItem[3319013]["Function"] = function(nItemId,sItemName)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tSummerBattle_Package[nItemId],1)
	end
end
-- (+1)稀有黄色神纹随机包【给非赠的】
tItem[3319464] = tItem[3319013]
-- 3323515	(+3)稀有黄色神纹随机包
tItem[3323515] = tItem[3323515] or {}
tItem[3323515]["Function"] = function(nItemId,sItemName)
	RewardTemplate_RandomReward(tSummerBattle_Package[nItemId],1)
end

------------------------------------------------------------------过期物品奖励配置----------------------------------------------------------------------
-- 热力沙滩时装碎片
tItem[3303696]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303696]["OverdueReward"] = {}
tItem[3303696]["OverdueReward"]["RewardIndex"] = "RewardStrengthValue"
tItem[3303696]["OverdueReward"]["RewardValue"] = 15

-- 盛夏海风时装碎片
tItem[3303697]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303697]["OverdueReward"] = {}
tItem[3303697]["OverdueReward"]["RewardIndex"] = "RewardStrengthValue"
tItem[3303697]["OverdueReward"]["RewardValue"] = 20

-- 夏威夷阳光时装碎片
tItem[3303698]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303698]["OverdueReward"] = {}
tItem[3303698]["OverdueReward"]["RewardIndex"] = "RewardStrengthValue"
tItem[3303698]["OverdueReward"]["RewardValue"] = 30

-- 梦幻泡泡液碎片
tItem[3303699]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303699]["OverdueReward"] = {}
tItem[3303699]["OverdueReward"]["RewardIndex"] = "RewardStrengthValue"
tItem[3303699]["OverdueReward"]["RewardValue"] = 139

-- 泳装外套洗赠液碎片
tItem[3303700]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303700]["OverdueReward"] = {}
tItem[3303700]["OverdueReward"]["RewardIndex"] = "RewardStrengthValue"
tItem[3303700]["OverdueReward"]["RewardValue"] = 39

-- 沙滩武器外套碎片
tItem[3303701]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303701]["OverdueReward"] = {}
tItem[3303701]["OverdueReward"]["RewardIndex"] = "RewardStrengthValue"
tItem[3303701]["OverdueReward"]["RewardValue"] = 15

-- 沙滩武器升级工具碎片
tItem[3303702]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303702]["OverdueReward"] = {}
tItem[3303702]["OverdueReward"]["RewardIndex"] = "RewardStrengthValue"
tItem[3303702]["OverdueReward"]["RewardValue"] = 139

-- 沙滩武器升级工具碎片
tItem[3303703]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303703]["OverdueReward"] = {}
tItem[3303703]["OverdueReward"]["RewardIndex"] = "RewardStrengthValue"
tItem[3303703]["OverdueReward"]["RewardValue"] = 39

-- 霓虹羽翅膀外套碎片
tItem[3303704]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303704]["OverdueReward"] = {}
tItem[3303704]["OverdueReward"]["RewardIndex"] = "RewardStrengthValue"
tItem[3303704]["OverdueReward"]["RewardValue"] = 150

-- 海妖之歌翅膀外套碎片
tItem[3303705]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303705]["OverdueReward"] = {}
tItem[3303705]["OverdueReward"]["RewardIndex"] = "RewardStrengthValue"
tItem[3303705]["OverdueReward"]["RewardValue"] = 150

-- 百变霓虹魔术棒碎片
tItem[3303706]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303706]["OverdueReward"] = {}
tItem[3303706]["OverdueReward"]["RewardIndex"] = "RewardStrengthValue"
tItem[3303706]["OverdueReward"]["RewardValue"] = 80

-- 夏日翅膀外套洗赠液碎片
tItem[3303707]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303707]["OverdueReward"] = {}
tItem[3303707]["OverdueReward"]["RewardIndex"] = "RewardStrengthValue"
tItem[3303707]["OverdueReward"]["RewardValue"] = 1600

-- 1天沙滩武器豪华可选包
tItem[3303720]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303720]["OverdueReward"] = {}
tItem[3303720]["OverdueReward"]["RewardIndex"] = "RewardCultivation"
tItem[3303720]["OverdueReward"]["RewardValue"] = 5

-- 1天沙滩武器外套可选包
tItem[3303721]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303721]["OverdueReward"] = {}
tItem[3303721]["OverdueReward"]["RewardIndex"] = "RewardCultivation"
tItem[3303721]["OverdueReward"]["RewardValue"] = 5

-- 沙滩武器外套材料包
tItem[3303722]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303722]["OverdueReward"] = {}
tItem[3303722]["OverdueReward"]["RewardIndex"] = "RewardCultivation"
tItem[3303722]["OverdueReward"]["RewardValue"] = 5

-- 1天沙滩武器外套礼包
tItem[3303723]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303723]["OverdueReward"] = {}
tItem[3303723]["OverdueReward"]["RewardIndex"] = "RewardCultivation"
tItem[3303723]["OverdueReward"]["RewardValue"] = 5

-- 1天沙滩武器外套豪华包
tItem[3303724]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303724]["OverdueReward"] = {}
tItem[3303724]["OverdueReward"]["RewardIndex"] = "RewardCultivation"
tItem[3303724]["OverdueReward"]["RewardValue"] = 5

-- 1天热力沙滩时装包
tItem[3303725]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303725]["OverdueReward"] = {}
tItem[3303725]["OverdueReward"]["RewardIndex"] = "RewardCultivation"
tItem[3303725]["OverdueReward"]["RewardValue"] = 5

-- 1天盛夏海风时装包
tItem[3303726]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303726]["OverdueReward"] = {}
tItem[3303726]["OverdueReward"]["RewardIndex"] = "RewardCultivation"
tItem[3303726]["OverdueReward"]["RewardValue"] = 5

-- 1天夏威夷阳光时装包
tItem[3303727]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303727]["OverdueReward"] = {}
tItem[3303727]["OverdueReward"]["RewardIndex"] = "RewardCultivation"
tItem[3303727]["OverdueReward"]["RewardValue"] = 5

-- 1天夏日翅膀外套时尚包
tItem[3303731]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303731]["OverdueReward"] = {}
tItem[3303731]["OverdueReward"]["RewardIndex"] = "RewardCultivation"
tItem[3303731]["OverdueReward"]["RewardValue"] = 5

-- 1天【绿色】霓虹羽时尚包
tItem[3303732]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303732]["OverdueReward"] = {}
tItem[3303732]["OverdueReward"]["RewardIndex"] = "RewardCultivation"
tItem[3303732]["OverdueReward"]["RewardValue"] = 5

-- 1天【橙色】霓虹羽时尚包
tItem[3303733]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303733]["OverdueReward"] = {}
tItem[3303733]["OverdueReward"]["RewardIndex"] = "RewardCultivation"
tItem[3303733]["OverdueReward"]["RewardValue"] = 5

-- 1天【红色】霓虹羽时尚包
tItem[3303734]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303734]["OverdueReward"] = {}
tItem[3303734]["OverdueReward"]["RewardIndex"] = "RewardCultivation"
tItem[3303734]["OverdueReward"]["RewardValue"] = 5

-- 1天【黄色】霓虹羽时尚包
tItem[3303735]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303735]["OverdueReward"] = {}
tItem[3303735]["OverdueReward"]["RewardIndex"] = "RewardCultivation"
tItem[3303735]["OverdueReward"]["RewardValue"] = 5

-- 1天【绿色】霓虹羽典藏包
tItem[3303736]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303736]["OverdueReward"] = {}
tItem[3303736]["OverdueReward"]["RewardIndex"] = "RewardCultivation"
tItem[3303736]["OverdueReward"]["RewardValue"] = 5

-- 1天【橙色】霓虹羽典藏包
tItem[3303737]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303737]["OverdueReward"] = {}
tItem[3303737]["OverdueReward"]["RewardIndex"] = "RewardCultivation"
tItem[3303737]["OverdueReward"]["RewardValue"] = 5

-- 1天【红色】霓虹羽典藏包
tItem[3303738]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303738]["OverdueReward"] = {}
tItem[3303738]["OverdueReward"]["RewardIndex"] = "RewardCultivation"
tItem[3303738]["OverdueReward"]["RewardValue"] = 5

-- 1天【黄色】霓虹羽典藏包
tItem[3303739]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303739]["OverdueReward"] = {}
tItem[3303739]["OverdueReward"]["RewardIndex"] = "RewardCultivation"
tItem[3303739]["OverdueReward"]["RewardValue"] = 5

-- 1天海妖之歌典藏包
tItem[3303740]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303740]["OverdueReward"] = {}
tItem[3303740]["OverdueReward"]["RewardIndex"] = "RewardCultivation"
tItem[3303740]["OverdueReward"]["RewardValue"] = 5

-- 1天夏日翅膀外套典藏包
tItem[3303741]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303741]["OverdueReward"] = {}
tItem[3303741]["OverdueReward"]["RewardIndex"] = "RewardCultivation"
tItem[3303741]["OverdueReward"]["RewardValue"] = 5

-- 梦幻泡泡液
tItem[3303759]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303759]["OverdueReward"] = {}
tItem[3303759]["OverdueReward"]["RewardIndex"] = "RewardStrengthValue"
tItem[3303759]["OverdueReward"]["RewardValue"] = 695

-- 泳装外套洗赠液
tItem[3303760]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303760]["OverdueReward"] = {}
tItem[3303760]["OverdueReward"]["RewardIndex"] = "RewardStrengthValue"
tItem[3303760]["OverdueReward"]["RewardValue"] = 195

-- 沙滩武器升级工具
tItem[3303762]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303762]["OverdueReward"] = {}
tItem[3303762]["OverdueReward"]["RewardIndex"] = "RewardStrengthValue"
tItem[3303762]["OverdueReward"]["RewardValue"] = 695

-- 沙滩武器外套洗赠液
tItem[3303763]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303763]["OverdueReward"] = {}
tItem[3303763]["OverdueReward"]["RewardIndex"] = "RewardStrengthValue"
tItem[3303763]["OverdueReward"]["RewardValue"] = 195

-- 百变霓虹魔术棒
tItem[3303764]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303764]["OverdueReward"] = {}
tItem[3303764]["OverdueReward"]["RewardIndex"] = "RewardStrengthValue"
tItem[3303764]["OverdueReward"]["RewardValue"] = 400

-- 夏日翅膀外套洗赠液
tItem[3303765]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303765]["OverdueReward"] = {}
tItem[3303765]["OverdueReward"]["RewardIndex"] = "RewardStrengthValue"
tItem[3303765]["OverdueReward"]["RewardValue"] = 8000

-- 30天沙滩武器外套包（赠）
tItem[3303766]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303766]["OverdueReward"] = {}
tItem[3303766]["OverdueReward"]["RewardIndex"] = "RewardCultivation"
tItem[3303766]["OverdueReward"]["RewardValue"] = 5

-- 30天沙滩武器外套包
tItem[3303767]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303767]["OverdueReward"] = {}
tItem[3303767]["OverdueReward"]["RewardIndex"] = "RewardCultivation"
tItem[3303767]["OverdueReward"]["RewardValue"] = 5

-- 90天沙滩武器豪华包
tItem[3303789]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303789]["OverdueReward"] = {}
tItem[3303789]["OverdueReward"]["RewardIndex"] = "RewardCultivation"
tItem[3303789]["OverdueReward"]["RewardValue"] = 5

-- 7天沙滩武器外套包（赠）
tItem[3303858]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303858]["OverdueReward"] = {}
tItem[3303858]["OverdueReward"]["RewardIndex"] = "RewardCultivation"
tItem[3303858]["OverdueReward"]["RewardValue"] = 5

-- 7天沙滩武器外套包（赠）
tItem[3303976]["Time"] = tActivityTime["Summer"]["UseItem"]
tItem[3303976]["OverdueReward"] = {}
tItem[3303976]["OverdueReward"]["RewardIndex"] = "RewardCultivation"
tItem[3303976]["OverdueReward"]["RewardValue"] = 5

-- 3303715	夏日幸运星
tItem[3303715] = tItem[3303715] or {}
tItem[3303715]["Function"] = function(nItemId,sItemName)
end
tItem[3303715]["Time"] = tActivityTime["Summer"]["BigBattle"]
tItem[3303715]["OverdueReward"] = {}
tItem[3303715]["OverdueReward"]["RewardIndex"] = "RewardCultivation"
tItem[3303715]["OverdueReward"]["RewardValue"] = 10

tItemFace[3306837] = 2363
tItemFace[3306838] = 2363
tItemFace[3306839] = 555
tItemFace[3306840] = 2365
-- 3306837	30天金色屠龙礼包
tItem[3306837] = tItem[3306837] or {}
tItem[3306837]["DialogueText"] = tInterServicePK_Text[3306837]
tItem[3306837]["Text1-1"] = {111}
tItem[3306837]["tOption1-1"] = {1,2,3}
tItem[3306837]["OptionFunc1"] = "SummerBattle_FullServiceInvitat</N>3306837</N>1"
tItem[3306837]["OptionFunc2"] = "SummerBattle_FullServiceInvitat</N>3306837</N>2"

-- 3306838	30天白银屠龙礼包
tItem[3306838] = tItem[3306838] or {}
tItem[3306838]["DialogueText"] = tInterServicePK_Text[3306838]
tItem[3306838]["Text1-1"] = {111}
tItem[3306838]["tOption1-1"] = {1,2,3}
tItem[3306838]["OptionFunc1"] = "SummerBattle_FullServiceInvitat</N>3306838</N>1"
tItem[3306838]["OptionFunc2"] = "SummerBattle_FullServiceInvitat</N>3306838</N>2"
-- 3306839	30天古铜屠龙礼包
tItem[3306839] = tItem[3306839] or {}
tItem[3306839]["DialogueText"] = tInterServicePK_Text[3306839]
tItem[3306839]["Text1-1"] = {111}
tItem[3306839]["tOption1-1"] = {1,2,3}
tItem[3306839]["OptionFunc1"] = "SummerBattle_FullServiceInvitat</N>3306839</N>1"
tItem[3306839]["OptionFunc2"] = "SummerBattle_FullServiceInvitat</N>3306839</N>2"
-- 3306840	15天古铜屠龙礼包
tItem[3306840] = tItem[3306840] or {}
tItem[3306840]["DialogueText"] = tInterServicePK_Text[3306840]
tItem[3306840]["Text1-1"] = {111}
tItem[3306840]["tOption1-1"] = {1,2,3}
tItem[3306840]["OptionFunc1"] = "SummerBattle_FullServiceInvitat</N>3306840</N>1"
tItem[3306840]["OptionFunc2"] = "SummerBattle_FullServiceInvitat</N>3306840</N>2"

-- 时间自检
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],SummerBattle_SelfTime)
-- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
-- table.insert(tOntimerMin_HM[0001],SummerBattle_SelfTime)
-- tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
-- table.insert(tOntimerMin_HM[0002],SummerBattle_SelfTime)
-- tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
-- table.insert(tOntimerMin_HM[0003],SummerBattle_Reset)
-- tOntimerMin_HM[0004] = tOntimerMin_HM[0004] or {}
-- table.insert(tOntimerMin_HM[0004],SummerBattle_Reset)

-- 服务器启动时加载
-- tServerStart["tFunction"] = tServerStart["tFunction"] or {}
-- table.insert(tServerStart["tFunction"],SummerBattle_GetGlamourList)

-- 怪物掉落
-- local tSummerBattle_KillMonster = {}
-- tSummerBattle_KillMonster["ActivityTime"] = tActivityTime["Summer"]["BigBattle"]
-- tSummerBattle_KillMonster["Function"] = SummerBattle_KillMonster
-- tSummerBattle_KillMonster["Area"] = {11}

-- table.insert(tMonsterDrop_AreaLoad,tSummerBattle_KillMonster)