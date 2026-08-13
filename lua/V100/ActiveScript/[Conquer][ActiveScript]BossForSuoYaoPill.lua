------------------------------------------------------------------------------------
--Name:			181220[简体征服][活动脚本]镇魂珠BOSS活动制作
--Purpose:		镇魂珠活动
--Creator:		吴志宏
--Created:		2018/12/20
------------------------------------------------------------------------------------
-- ===============================================
-- 备注：2019.02.15修改为龙冢试炼！！！！！！
-- ===============================================
-- 前缀
-- BossForSuoYaoPill_

-- LogId 12001247

-- stc掩码说明 
-- stc 188,42		是否领取背包信
-- stc 188,43		记录刷新宝箱的id
-- stc 188,44		记录每日掉落镇魂珠（赠）的数量
-- stc 190,19		是否第一次点开npc
-- stc 191,07		记录冥界刷新宝箱对应的物品
-- stc 191,08		是否第一次点开宝箱

-- 全局表记录
-- global	

--------------------------------------常量配置部分---------------------------------------
-- 常量表
local tBossForSuoYaoPill_Cont = {}
	-- 10连抽所需背包空间
	tBossForSuoYaoPill_Cont["TenNeedSpace"] = 5
	
	-- 九阶灵珠id
	tBossForSuoYaoPill_Cont["DragonSoul9"] = 4200009
	
	-- 光效
	tBossForSuoYaoPill_Cont["EffectObj"] = "self"
	tBossForSuoYaoPill_Cont["Effect"] = "zf2-e128"
	tBossForSuoYaoPill_Cont["EffectForGood"] = "accession"
	
	-- 进入副本光效
	tBossForSuoYaoPill_Cont["InsEffect"] = {}
	-- 龙冢
	tBossForSuoYaoPill_Cont["InsEffect"][1] = "tm_01"
	tBossForSuoYaoPill_Cont["InsEffect"][2] = "tm_02"
	tBossForSuoYaoPill_Cont["InsEffect"][3] = "tm_03"
	tBossForSuoYaoPill_Cont["InsEffect"][4] = "tm_04"
	tBossForSuoYaoPill_Cont["InsEffect"][5] = "tm_05"
	tBossForSuoYaoPill_Cont["InsEffect"][6] = "tm_06"
	tBossForSuoYaoPill_Cont["InsEffect"][7] = "tm_07"
	-- 龙冢深处
	tBossForSuoYaoPill_Cont["InsEffect"][4200009] = {}
	tBossForSuoYaoPill_Cont["InsEffect"][4200009][1] = "tmxy_01"
	tBossForSuoYaoPill_Cont["InsEffect"][4200009][2] = "tmxy_02"
	tBossForSuoYaoPill_Cont["InsEffect"][4200009][3] = "tmxy_03"
	tBossForSuoYaoPill_Cont["InsEffect"][4200009][4] = "tmxy_04"
	tBossForSuoYaoPill_Cont["InsEffect"][4200009][5] = "tmxy_05"
	tBossForSuoYaoPill_Cont["InsEffect"][4200009][6] = "tmxy_06"
	
	-- 10连抽光效
	tBossForSuoYaoPill_Cont["EffectForTen"] = {}
	tBossForSuoYaoPill_Cont["EffectForTen"]["Name"] = "card_beacon"
	-- 播放位置
	tBossForSuoYaoPill_Cont["EffectForTen"]["PosX"] = {}
	tBossForSuoYaoPill_Cont["EffectForTen"]["PosX"][1] = 28
	tBossForSuoYaoPill_Cont["EffectForTen"]["PosX"][2] = 33
	tBossForSuoYaoPill_Cont["EffectForTen"]["PosX"][3] = 26
	tBossForSuoYaoPill_Cont["EffectForTen"]["PosY"] = {}
	tBossForSuoYaoPill_Cont["EffectForTen"]["PosY"][1] = 38
	tBossForSuoYaoPill_Cont["EffectForTen"]["PosY"][2] = 28
	tBossForSuoYaoPill_Cont["EffectForTen"]["PosY"][3] = 30
	
	-- 炼化光效
	tBossForSuoYaoPill_Cont["EffectForDZ"] = {}
	-- 光效·对应奖励序号
	tBossForSuoYaoPill_Cont["EffectForDZ"][1] = "DragonSoul_dzsb"
	tBossForSuoYaoPill_Cont["EffectForDZ"][2] = "DragonSoul_dzcg"
	tBossForSuoYaoPill_Cont["EffectForDZ"][3] = "DragonSoul_dzsb"
	tBossForSuoYaoPill_Cont["EffectForDZ"][4] = "DragonSoul_dzcg"
	tBossForSuoYaoPill_Cont["EffectForDZ"][5] = "DragonSoul_dzcg"
	tBossForSuoYaoPill_Cont["EffectForDZ"][6] = "DragonSoul_dzcg"
	tBossForSuoYaoPill_Cont["EffectForDZ"][7] = "DragonSoul_dzcg"
	
	-- 读条配置
	tBossForSuoYaoPill_Cont["Explore"] = {}
	tBossForSuoYaoPill_Cont["Explore"]["Secs"] = 1
	tBossForSuoYaoPill_Cont["Explore"]["ActionId"] = 220
	
	-- 双龙城Id`激情服改到市场
	tBossForSuoYaoPill_Cont["TwinCity"] = {}
	tBossForSuoYaoPill_Cont["TwinCity"]["Normal"] = 1002
	tBossForSuoYaoPill_Cont["TwinCity"]["Special"] = 1036
	
	-- 进入副本所需灵珠数量
	tBossForSuoYaoPill_Cont["NeedItemNum"] = {}
	tBossForSuoYaoPill_Cont["NeedItemNum"][1] = 2
	tBossForSuoYaoPill_Cont["NeedItemNum"][2] = 4
	tBossForSuoYaoPill_Cont["NeedItemNum"][3] = 8
	tBossForSuoYaoPill_Cont["NeedItemNum"][4] = 16
	tBossForSuoYaoPill_Cont["NeedItemNum"][5] = 32
	tBossForSuoYaoPill_Cont["NeedItemNum"][6] = 64
	tBossForSuoYaoPill_Cont["NeedItemNum"][7] = 128
	
	-- 副本ID
	tBossForSuoYaoPill_Cont["InstanceId"] = {}
	-- 龙冢1-7层
	tBossForSuoYaoPill_Cont["InstanceId"][1] = 197
	tBossForSuoYaoPill_Cont["InstanceId"][2] = 198
	tBossForSuoYaoPill_Cont["InstanceId"][3] = 199
	tBossForSuoYaoPill_Cont["InstanceId"][4] = 200
	tBossForSuoYaoPill_Cont["InstanceId"][5] = 201
	tBossForSuoYaoPill_Cont["InstanceId"][6] = 202
	tBossForSuoYaoPill_Cont["InstanceId"][7] = 203
	-- 龙冢深处1-6层
	tBossForSuoYaoPill_Cont["InstanceId"][4200009] = {}
	tBossForSuoYaoPill_Cont["InstanceId"][4200009][1] = 204
	tBossForSuoYaoPill_Cont["InstanceId"][4200009][2] = 205
	tBossForSuoYaoPill_Cont["InstanceId"][4200009][3] = 206
	tBossForSuoYaoPill_Cont["InstanceId"][4200009][4] = 207
	tBossForSuoYaoPill_Cont["InstanceId"][4200009][5] = 208
	tBossForSuoYaoPill_Cont["InstanceId"][4200009][6] = 209
	-- 冥界第1~8狱
	tBossForSuoYaoPill_Cont["InstanceId"][3320186] = 236
	tBossForSuoYaoPill_Cont["InstanceId"][3320187] = 237
	tBossForSuoYaoPill_Cont["InstanceId"][3320188] = 238
	tBossForSuoYaoPill_Cont["InstanceId"][3320189] = 239
	tBossForSuoYaoPill_Cont["InstanceId"][3320190] = 240
	tBossForSuoYaoPill_Cont["InstanceId"][3320191] = 241
	tBossForSuoYaoPill_Cont["InstanceId"][3320192] = 242
	tBossForSuoYaoPill_Cont["InstanceId"][3320193] = 243
	
	-- 怪物刷新配置
	tBossForSuoYaoPill_Cont["Monster"] = {}
	tBossForSuoYaoPill_Cont["Monster"]["PosX"] = 30
	tBossForSuoYaoPill_Cont["Monster"]["PosY"] = 32
	-- Generator表
	tBossForSuoYaoPill_Cont["Monster"]["GenId"] = {}
	-- 龙冢1-7层
	tBossForSuoYaoPill_Cont["Monster"]["GenId"][4937] = 26540
	tBossForSuoYaoPill_Cont["Monster"]["GenId"][4938] = 26541
	tBossForSuoYaoPill_Cont["Monster"]["GenId"][4939] = 26542
	tBossForSuoYaoPill_Cont["Monster"]["GenId"][4940] = 26543
	tBossForSuoYaoPill_Cont["Monster"]["GenId"][4941] = 26544
	tBossForSuoYaoPill_Cont["Monster"]["GenId"][4942] = 26545
	tBossForSuoYaoPill_Cont["Monster"]["GenId"][4943] = 26546
	-- 龙冢深处1-6层
	tBossForSuoYaoPill_Cont["Monster"]["GenId"][4944] = 26547
	tBossForSuoYaoPill_Cont["Monster"]["GenId"][4945] = 26548
	tBossForSuoYaoPill_Cont["Monster"]["GenId"][4946] = 26549
	tBossForSuoYaoPill_Cont["Monster"]["GenId"][4947] = 26550
	tBossForSuoYaoPill_Cont["Monster"]["GenId"][4948] = 26551
	tBossForSuoYaoPill_Cont["Monster"]["GenId"][4949] = 26552
	
	-- 宝箱对应层数
	tBossForSuoYaoPill_Cont["Floor"] = {}
	-- 龙冢1-7层
	tBossForSuoYaoPill_Cont["Floor"][23611] = 1
	tBossForSuoYaoPill_Cont["Floor"][23612] = 2
	tBossForSuoYaoPill_Cont["Floor"][23613] = 3
	tBossForSuoYaoPill_Cont["Floor"][23614] = 4
	tBossForSuoYaoPill_Cont["Floor"][23615] = 5
	tBossForSuoYaoPill_Cont["Floor"][23616] = 6
	tBossForSuoYaoPill_Cont["Floor"][23617] = 7
	-- tBossForSuoYaoPill_Cont["Floor"][23618] = 1
	-- tBossForSuoYaoPill_Cont["Floor"][23619] = 2
	-- tBossForSuoYaoPill_Cont["Floor"][23620] = 3
	-- tBossForSuoYaoPill_Cont["Floor"][23621] = 4
	-- tBossForSuoYaoPill_Cont["Floor"][23622] = 5
	-- tBossForSuoYaoPill_Cont["Floor"][23623] = 6
	-- tBossForSuoYaoPill_Cont["Floor"][23624] = 7
	-- 龙冢深处1-6层
	tBossForSuoYaoPill_Cont["Floor"][23635] = 1
	tBossForSuoYaoPill_Cont["Floor"][23636] = 2
	tBossForSuoYaoPill_Cont["Floor"][23637] = 3
	tBossForSuoYaoPill_Cont["Floor"][23638] = 4
	tBossForSuoYaoPill_Cont["Floor"][23639] = 5
	tBossForSuoYaoPill_Cont["Floor"][23640] = 6
	
	-- 宝箱对应赠与非赠
	tBossForSuoYaoPill_Cont["Present"] = {}
	tBossForSuoYaoPill_Cont["Present"][23611] = 1
	tBossForSuoYaoPill_Cont["Present"][23612] = 1
	tBossForSuoYaoPill_Cont["Present"][23613] = 1
	tBossForSuoYaoPill_Cont["Present"][23614] = 1
	tBossForSuoYaoPill_Cont["Present"][23615] = 1
	tBossForSuoYaoPill_Cont["Present"][23616] = 1
	tBossForSuoYaoPill_Cont["Present"][23617] = 1
	-- tBossForSuoYaoPill_Cont["Present"][23618] = 2
	-- tBossForSuoYaoPill_Cont["Present"][23619] = 2
	-- tBossForSuoYaoPill_Cont["Present"][23620] = 2
	-- tBossForSuoYaoPill_Cont["Present"][23621] = 2
	-- tBossForSuoYaoPill_Cont["Present"][23622] = 2
	-- tBossForSuoYaoPill_Cont["Present"][23623] = 2
	-- tBossForSuoYaoPill_Cont["Present"][23624] = 2
	
	-- 宝箱对应层物品
	tBossForSuoYaoPill_Cont["ItemId"] = {}
	-- 龙冢1-7层
	tBossForSuoYaoPill_Cont["ItemId"][23611] = 4200005
	tBossForSuoYaoPill_Cont["ItemId"][23612] = 4200005
	tBossForSuoYaoPill_Cont["ItemId"][23613] = 4200005
	tBossForSuoYaoPill_Cont["ItemId"][23614] = 4200005
	tBossForSuoYaoPill_Cont["ItemId"][23615] = 4200005
	tBossForSuoYaoPill_Cont["ItemId"][23616] = 4200005
	tBossForSuoYaoPill_Cont["ItemId"][23617] = 4200005
	-- tBossForSuoYaoPill_Cont["ItemId"][23618] = 3319024
	-- tBossForSuoYaoPill_Cont["ItemId"][23619] = 3319024
	-- tBossForSuoYaoPill_Cont["ItemId"][23620] = 3319024
	-- tBossForSuoYaoPill_Cont["ItemId"][23621] = 3319024
	-- tBossForSuoYaoPill_Cont["ItemId"][23622] = 3319024
	-- tBossForSuoYaoPill_Cont["ItemId"][23623] = 3319024
	-- tBossForSuoYaoPill_Cont["ItemId"][23624] = 3319024
	-- 龙冢深处1-6层
	tBossForSuoYaoPill_Cont["ItemId"][23635] = 4200009
	tBossForSuoYaoPill_Cont["ItemId"][23636] = 4200009
	tBossForSuoYaoPill_Cont["ItemId"][23637] = 4200009
	tBossForSuoYaoPill_Cont["ItemId"][23638] = 4200009
	tBossForSuoYaoPill_Cont["ItemId"][23639] = 4200009
	tBossForSuoYaoPill_Cont["ItemId"][23640] = 4200009
	
	-- 灵珠及进入层数对应的npcid和怪物id
	tBossForSuoYaoPill_Cont["Link"] = {}
	-- 龙冢1-7层
	tBossForSuoYaoPill_Cont["Link"][4200005] = {}
	tBossForSuoYaoPill_Cont["Link"][4200005][1] = {}
	tBossForSuoYaoPill_Cont["Link"][4200005][1]["NpcId"] = 23611
	tBossForSuoYaoPill_Cont["Link"][4200005][1]["MonsterId"] = 4937
	tBossForSuoYaoPill_Cont["Link"][4200005][2] = {}
	tBossForSuoYaoPill_Cont["Link"][4200005][2]["NpcId"] = 23612
	tBossForSuoYaoPill_Cont["Link"][4200005][2]["MonsterId"] = 4938
	tBossForSuoYaoPill_Cont["Link"][4200005][3] = {}
	tBossForSuoYaoPill_Cont["Link"][4200005][3]["NpcId"] = 23613
	tBossForSuoYaoPill_Cont["Link"][4200005][3]["MonsterId"] = 4939
	tBossForSuoYaoPill_Cont["Link"][4200005][4] = {}
	tBossForSuoYaoPill_Cont["Link"][4200005][4]["NpcId"] = 23614
	tBossForSuoYaoPill_Cont["Link"][4200005][4]["MonsterId"] = 4940
	tBossForSuoYaoPill_Cont["Link"][4200005][5] = {}
	tBossForSuoYaoPill_Cont["Link"][4200005][5]["NpcId"] = 23615
	tBossForSuoYaoPill_Cont["Link"][4200005][5]["MonsterId"] = 4941
	tBossForSuoYaoPill_Cont["Link"][4200005][6] = {}
	tBossForSuoYaoPill_Cont["Link"][4200005][6]["NpcId"] = 23616
	tBossForSuoYaoPill_Cont["Link"][4200005][6]["MonsterId"] = 4942
	tBossForSuoYaoPill_Cont["Link"][4200005][7] = {}
	tBossForSuoYaoPill_Cont["Link"][4200005][7]["NpcId"] = 23617
	tBossForSuoYaoPill_Cont["Link"][4200005][7]["MonsterId"] = 4943
	-- tBossForSuoYaoPill_Cont["Link"][3319024] = {}
	-- tBossForSuoYaoPill_Cont["Link"][3319024][1] = {}
	-- tBossForSuoYaoPill_Cont["Link"][3319024][1]["NpcId"] = 23618
	-- tBossForSuoYaoPill_Cont["Link"][3319024][1]["MonsterId"] = 4937
	-- tBossForSuoYaoPill_Cont["Link"][3319024][2] = {}
	-- tBossForSuoYaoPill_Cont["Link"][3319024][2]["NpcId"] = 23619
	-- tBossForSuoYaoPill_Cont["Link"][3319024][2]["MonsterId"] = 4938
	-- tBossForSuoYaoPill_Cont["Link"][3319024][3] = {}
	-- tBossForSuoYaoPill_Cont["Link"][3319024][3]["NpcId"] = 23620
	-- tBossForSuoYaoPill_Cont["Link"][3319024][3]["MonsterId"] = 4939
	-- tBossForSuoYaoPill_Cont["Link"][3319024][4] = {}
	-- tBossForSuoYaoPill_Cont["Link"][3319024][4]["NpcId"] = 23621
	-- tBossForSuoYaoPill_Cont["Link"][3319024][4]["MonsterId"] = 4940
	-- tBossForSuoYaoPill_Cont["Link"][3319024][5] = {}
	-- tBossForSuoYaoPill_Cont["Link"][3319024][5]["NpcId"] = 23622
	-- tBossForSuoYaoPill_Cont["Link"][3319024][5]["MonsterId"] = 4941
	-- tBossForSuoYaoPill_Cont["Link"][3319024][6] = {}
	-- tBossForSuoYaoPill_Cont["Link"][3319024][6]["NpcId"] = 23623
	-- tBossForSuoYaoPill_Cont["Link"][3319024][6]["MonsterId"] = 4942
	-- tBossForSuoYaoPill_Cont["Link"][3319024][7] = {}
	-- tBossForSuoYaoPill_Cont["Link"][3319024][7]["NpcId"] = 23624
	-- tBossForSuoYaoPill_Cont["Link"][3319024][7]["MonsterId"] = 4943
	-- 龙冢深处
	tBossForSuoYaoPill_Cont["Link"][4200009] = {}
	tBossForSuoYaoPill_Cont["Link"][4200009][1] = {}
	tBossForSuoYaoPill_Cont["Link"][4200009][1]["NpcId"] = 23635
	tBossForSuoYaoPill_Cont["Link"][4200009][1]["MonsterId"] = 4944
	tBossForSuoYaoPill_Cont["Link"][4200009][2] = {}
	tBossForSuoYaoPill_Cont["Link"][4200009][2]["NpcId"] = 23636
	tBossForSuoYaoPill_Cont["Link"][4200009][2]["MonsterId"] = 4945
	tBossForSuoYaoPill_Cont["Link"][4200009][3] = {}
	tBossForSuoYaoPill_Cont["Link"][4200009][3]["NpcId"] = 23637
	tBossForSuoYaoPill_Cont["Link"][4200009][3]["MonsterId"] = 4946
	tBossForSuoYaoPill_Cont["Link"][4200009][4] = {}
	tBossForSuoYaoPill_Cont["Link"][4200009][4]["NpcId"] = 23638
	tBossForSuoYaoPill_Cont["Link"][4200009][4]["MonsterId"] = 4947
	tBossForSuoYaoPill_Cont["Link"][4200009][5] = {}
	tBossForSuoYaoPill_Cont["Link"][4200009][5]["NpcId"] = 23639
	tBossForSuoYaoPill_Cont["Link"][4200009][5]["MonsterId"] = 4948
	tBossForSuoYaoPill_Cont["Link"][4200009][6] = {}
	tBossForSuoYaoPill_Cont["Link"][4200009][6]["NpcId"] = 23640
	tBossForSuoYaoPill_Cont["Link"][4200009][6]["MonsterId"] = 4949
	
	-- 传送配置
	tBossForSuoYaoPill_Cont["ChgMap"] = {}
	-- 双龙城·普通服
	tBossForSuoYaoPill_Cont["ChgMap"][1002] = {}
	tBossForSuoYaoPill_Cont["ChgMap"][1002]["MapId"] = 1002
	tBossForSuoYaoPill_Cont["ChgMap"][1002]["CellX"] = 348
	tBossForSuoYaoPill_Cont["ChgMap"][1002]["CellY"] = 411
	-- 双龙城·激情服
	tBossForSuoYaoPill_Cont["ChgMap"][1036] = {}
	tBossForSuoYaoPill_Cont["ChgMap"][1036]["MapId"] = 1036
	tBossForSuoYaoPill_Cont["ChgMap"][1036]["CellX"] = 302
	tBossForSuoYaoPill_Cont["ChgMap"][1036]["CellY"] = 264
	
	-- 动态Npc
	tBossForSuoYaoPill_Cont["DynaNpc"] = {}
	-- 统一坐标
	tBossForSuoYaoPill_Cont["DynaNpc"]["PosX"] = 30
	tBossForSuoYaoPill_Cont["DynaNpc"]["PosY"] = 32
	-- 龙冢1-7层
	-- 1阶BOSS宝箱（非赠参与）
	tBossForSuoYaoPill_Cont["DynaNpc"][23611] = {}
	tBossForSuoYaoPill_Cont["DynaNpc"][23611]["Lookface"] = 43226
	tBossForSuoYaoPill_Cont["DynaNpc"][23611]["Task0"] = 94487720
	-- 2阶BOSS宝箱（非赠参与）
	tBossForSuoYaoPill_Cont["DynaNpc"][23612] = {}
	tBossForSuoYaoPill_Cont["DynaNpc"][23612]["Lookface"] = 43236
	tBossForSuoYaoPill_Cont["DynaNpc"][23612]["Task0"] = 94487721
	-- 3阶BOSS宝箱（非赠参与）
	tBossForSuoYaoPill_Cont["DynaNpc"][23613] = {}
	tBossForSuoYaoPill_Cont["DynaNpc"][23613]["Lookface"] = 43246
	tBossForSuoYaoPill_Cont["DynaNpc"][23613]["Task0"] = 94487722
	-- 4阶BOSS宝箱（非赠参与）
	tBossForSuoYaoPill_Cont["DynaNpc"][23614] = {}
	tBossForSuoYaoPill_Cont["DynaNpc"][23614]["Lookface"] = 43256
	tBossForSuoYaoPill_Cont["DynaNpc"][23614]["Task0"] = 94487723
	-- 5阶BOSS宝箱（非赠参与）
	tBossForSuoYaoPill_Cont["DynaNpc"][23615] = {}
	tBossForSuoYaoPill_Cont["DynaNpc"][23615]["Lookface"] = 43266
	tBossForSuoYaoPill_Cont["DynaNpc"][23615]["Task0"] = 94487724
	-- 6阶BOSS宝箱（非赠参与）
	tBossForSuoYaoPill_Cont["DynaNpc"][23616] = {}
	tBossForSuoYaoPill_Cont["DynaNpc"][23616]["Lookface"] = 43276
	tBossForSuoYaoPill_Cont["DynaNpc"][23616]["Task0"] = 94487725
	-- 7阶BOSS宝箱（非赠参与）
	tBossForSuoYaoPill_Cont["DynaNpc"][23617] = {}
	tBossForSuoYaoPill_Cont["DynaNpc"][23617]["Lookface"] = 43286
	tBossForSuoYaoPill_Cont["DynaNpc"][23617]["Task0"] = 94487726
	-- -- 1阶BOSS宝箱（赠品参与）
	-- tBossForSuoYaoPill_Cont["DynaNpc"][23618] = {}
	-- tBossForSuoYaoPill_Cont["DynaNpc"][23618]["Lookface"] = 43226
	-- tBossForSuoYaoPill_Cont["DynaNpc"][23618]["Task0"] = 94487727
	-- -- 2阶BOSS宝箱（赠品参与）
	-- tBossForSuoYaoPill_Cont["DynaNpc"][23619] = {}
	-- tBossForSuoYaoPill_Cont["DynaNpc"][23619]["Lookface"] = 43236
	-- tBossForSuoYaoPill_Cont["DynaNpc"][23619]["Task0"] = 94487728
	-- -- 3阶BOSS宝箱（赠品参与）
	-- tBossForSuoYaoPill_Cont["DynaNpc"][23620] = {}
	-- tBossForSuoYaoPill_Cont["DynaNpc"][23620]["Lookface"] = 43246
	-- tBossForSuoYaoPill_Cont["DynaNpc"][23620]["Task0"] = 94487729
	-- -- 4阶BOSS宝箱（赠品参与）
	-- tBossForSuoYaoPill_Cont["DynaNpc"][23621] = {}
	-- tBossForSuoYaoPill_Cont["DynaNpc"][23621]["Lookface"] = 43256
	-- tBossForSuoYaoPill_Cont["DynaNpc"][23621]["Task0"] = 94487730
	-- -- 5阶BOSS宝箱（赠品参与）
	-- tBossForSuoYaoPill_Cont["DynaNpc"][23622] = {}
	-- tBossForSuoYaoPill_Cont["DynaNpc"][23622]["Lookface"] = 43266
	-- tBossForSuoYaoPill_Cont["DynaNpc"][23622]["Task0"] = 94487731
	-- -- 6阶BOSS宝箱（赠品参与）
	-- tBossForSuoYaoPill_Cont["DynaNpc"][23623] = {}
	-- tBossForSuoYaoPill_Cont["DynaNpc"][23623]["Lookface"] = 43276
	-- tBossForSuoYaoPill_Cont["DynaNpc"][23623]["Task0"] = 94487732
	-- -- 7阶BOSS宝箱（赠品参与）
	-- tBossForSuoYaoPill_Cont["DynaNpc"][23624] = {}
	-- tBossForSuoYaoPill_Cont["DynaNpc"][23624]["Lookface"] = 43286
	-- tBossForSuoYaoPill_Cont["DynaNpc"][23624]["Task0"] = 94487733
	-- 龙冢深处1-6层
	-- 1阶至宝
	tBossForSuoYaoPill_Cont["DynaNpc"][23635] = {}
	tBossForSuoYaoPill_Cont["DynaNpc"][23635]["Lookface"] = 43296
	tBossForSuoYaoPill_Cont["DynaNpc"][23635]["Task0"] = 94487770
	-- 2阶至宝
	tBossForSuoYaoPill_Cont["DynaNpc"][23636] = {}
	tBossForSuoYaoPill_Cont["DynaNpc"][23636]["Lookface"] = 43306
	tBossForSuoYaoPill_Cont["DynaNpc"][23636]["Task0"] = 94487771
	-- 3阶至宝
	tBossForSuoYaoPill_Cont["DynaNpc"][23637] = {}
	tBossForSuoYaoPill_Cont["DynaNpc"][23637]["Lookface"] = 43316
	tBossForSuoYaoPill_Cont["DynaNpc"][23637]["Task0"] = 94487772
	-- 4阶至宝
	tBossForSuoYaoPill_Cont["DynaNpc"][23638] = {}
	tBossForSuoYaoPill_Cont["DynaNpc"][23638]["Lookface"] = 43326
	tBossForSuoYaoPill_Cont["DynaNpc"][23638]["Task0"] = 94487773
	-- 5阶至宝
	tBossForSuoYaoPill_Cont["DynaNpc"][23639] = {}
	tBossForSuoYaoPill_Cont["DynaNpc"][23639]["Lookface"] = 43336
	tBossForSuoYaoPill_Cont["DynaNpc"][23639]["Task0"] = 94487774
	-- 6阶至宝
	tBossForSuoYaoPill_Cont["DynaNpc"][23640] = {}
	tBossForSuoYaoPill_Cont["DynaNpc"][23640]["Lookface"] = 43346
	tBossForSuoYaoPill_Cont["DynaNpc"][23640]["Task0"] = 94487775
	
	-- 冥界相关配置
	tBossForSuoYaoPill_Cont["Ghostdom"] = {}
	-- 宝箱数
	tBossForSuoYaoPill_Cont["Ghostdom"]["Total"] = 3
	-- 宝箱坐标
	tBossForSuoYaoPill_Cont["Ghostdom"]["PosX"] = {}
	tBossForSuoYaoPill_Cont["Ghostdom"]["PosX"][1] = 39
	tBossForSuoYaoPill_Cont["Ghostdom"]["PosX"][2] = 45
	tBossForSuoYaoPill_Cont["Ghostdom"]["PosX"][3] = 54
	tBossForSuoYaoPill_Cont["Ghostdom"]["PosY"] = {}
	tBossForSuoYaoPill_Cont["Ghostdom"]["PosY"][1] = 39
	tBossForSuoYaoPill_Cont["Ghostdom"]["PosY"][2] = 54
	tBossForSuoYaoPill_Cont["Ghostdom"]["PosY"][3] = 44
	-- 宝箱逻辑
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"] = {}
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][1] = {}
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][1][1] = 94488094
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][1][2] = 94488102
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][1][3] = 94488110
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][2] = {}
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][2][1] = 94488095
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][2][2] = 94488103
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][2][3] = 94488111
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][3] = {}
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][3][1] = 94488096
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][3][2] = 94488104
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][3][3] = 94488112
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][4] = {}
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][4][1] = 94488097
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][4][2] = 94488105
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][4][3] = 94488113
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][5] = {}
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][5][1] = 94488098
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][5][2] = 94488106
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][5][3] = 94488114
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][6] = {}
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][6][1] = 94488099
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][6][2] = 94488107
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][6][3] = 94488115
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][7] = {}
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][7][1] = 94488100
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][7][2] = 94488108
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][7][3] = 94488116
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][8] = {}
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][8][1] = 94488101
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][8][2] = 94488109
	tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][8][3] = 94488117
	-- 对应层数
	tBossForSuoYaoPill_Cont["Ghostdom"]["Floor"] = {}
	tBossForSuoYaoPill_Cont["Ghostdom"]["Floor"][3320186] = 1
	tBossForSuoYaoPill_Cont["Ghostdom"]["Floor"][3320187] = 2
	tBossForSuoYaoPill_Cont["Ghostdom"]["Floor"][3320188] = 3
	tBossForSuoYaoPill_Cont["Ghostdom"]["Floor"][3320189] = 4
	tBossForSuoYaoPill_Cont["Ghostdom"]["Floor"][3320190] = 5
	tBossForSuoYaoPill_Cont["Ghostdom"]["Floor"][3320191] = 6
	tBossForSuoYaoPill_Cont["Ghostdom"]["Floor"][3320192] = 7
	tBossForSuoYaoPill_Cont["Ghostdom"]["Floor"][3320193] = 8
	-- 外观
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"] = {}
	-- 冥界第1狱
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][1] = {}
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][1][1] = 19517
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][1][2] = 19594
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][1][3] = 19672
	-- 冥界第2狱
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][2] = {}
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][2][1] = 19527
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][2][2] = 19604
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][2][3] = 19682
	-- 冥界第3狱
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][3] = {}
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][3][1] = 19537
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][3][2] = 19614
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][3][3] = 19692
	-- 冥界第4狱
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][4] = {}
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][4][1] = 19547
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][4][2] = 19624
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][4][3] = 19702
	-- 冥界第5狱
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][5] = {}
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][5][1] = 19557
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][5][2] = 19634
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][5][3] = 19712
	-- 冥界第6狱
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][6] = {}
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][6][1] = 19567
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][6][2] = 19644
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][6][3] = 19722
	-- 冥界第7狱
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][7] = {}
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][7][1] = 19577
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][7][2] = 19654
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][7][3] = 19742
	-- 冥界第8狱
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][8] = {}
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][8][1] = 19587
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][8][2] = 19664
	tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][8][3] = 19752
	
	
-- Log
local tBossForSuoYaoPill_Log = {}
	-- 删除log
	tBossForSuoYaoPill_Log["Delete"] = "0,0,%d,%d,12001247,0,0,0"
	-- 运营新增Emoneylog
	tBossForSuoYaoPill_Log["EmoneyLog"] = {}
	-- 炼化一次
	tBossForSuoYaoPill_Log["EmoneyLog"]["OpenBox"] = {}
	-- 炼化龙冢1层灵珠
	tBossForSuoYaoPill_Log["EmoneyLog"]["OpenBox"][23611] = "350	22107	0	0	1	"
	-- 炼化龙冢2层灵珠
	tBossForSuoYaoPill_Log["EmoneyLog"]["OpenBox"][23612] = "350	22108	0	0	1	"
	-- 炼化龙冢3层灵珠
	tBossForSuoYaoPill_Log["EmoneyLog"]["OpenBox"][23613] = "350	22109	0	0	1	"
	-- 炼化龙冢4层灵珠
	tBossForSuoYaoPill_Log["EmoneyLog"]["OpenBox"][23614] = "350	22110	0	0	1	"
	-- 炼化龙冢5层灵珠
	tBossForSuoYaoPill_Log["EmoneyLog"]["OpenBox"][23615] = "350	22111	0	0	1	"
	-- 炼化龙冢6层灵珠
	tBossForSuoYaoPill_Log["EmoneyLog"]["OpenBox"][23616] = "350	22112	0	0	1	"
	-- 炼化龙冢7层灵珠
	tBossForSuoYaoPill_Log["EmoneyLog"]["OpenBox"][23617] = "350	22113	0	0	1	"
	-- 炼化龙冢深处1层灵珠
	tBossForSuoYaoPill_Log["EmoneyLog"]["OpenBox"][23635] = "350	22114	0	0	1	"
	-- 炼化龙冢深处2层灵珠
	tBossForSuoYaoPill_Log["EmoneyLog"]["OpenBox"][23636] = "350	22115	0	0	1	"
	-- 炼化龙冢深处3层灵珠
	tBossForSuoYaoPill_Log["EmoneyLog"]["OpenBox"][23637] = "350	22116	0	0	1	"
	-- 炼化龙冢深处4层灵珠
	tBossForSuoYaoPill_Log["EmoneyLog"]["OpenBox"][23638] = "350	22117	0	0	1	"
	-- 炼化龙冢深处5层灵珠
	tBossForSuoYaoPill_Log["EmoneyLog"]["OpenBox"][23639] = "350	22118	0	0	1	"
	-- 炼化龙冢深处6层灵珠
	tBossForSuoYaoPill_Log["EmoneyLog"]["OpenBox"][23640] = "350	22119	0	0	1	"
	-- 炼化十次
	tBossForSuoYaoPill_Log["EmoneyLog"]["TenMulOpenBox"] = {}
	-- 10倍炼化龙冢深处1层灵珠
	tBossForSuoYaoPill_Log["EmoneyLog"]["TenMulOpenBox"][23635] = "350	22120	0	0	1	"
	-- 10倍炼化龙冢深处2层灵珠
	tBossForSuoYaoPill_Log["EmoneyLog"]["TenMulOpenBox"][23636] = "350	22121	0	0	1	"
	-- 10倍炼化龙冢深处3层灵珠
	tBossForSuoYaoPill_Log["EmoneyLog"]["TenMulOpenBox"][23637] = "350	22122	0	0	1	"
	-- 10倍炼化龙冢深处4层灵珠
	tBossForSuoYaoPill_Log["EmoneyLog"]["TenMulOpenBox"][23638] = "350	22123	0	0	1	"
	-- 10倍炼化龙冢深处5层灵珠
	tBossForSuoYaoPill_Log["EmoneyLog"]["TenMulOpenBox"][23639] = "350	22124	0	0	1	"
	-- 10倍炼化龙冢深处6层灵珠
	tBossForSuoYaoPill_Log["EmoneyLog"]["TenMulOpenBox"][23640] = "350	22125	0	0	1	"
	-- 获得冥界第1狱诏令
	tBossForSuoYaoPill_Log["EmoneyLog"][3320186] = "350	22126	0	0	1	"
	-- 获得冥界第2狱诏令
	tBossForSuoYaoPill_Log["EmoneyLog"][3320187] = "350	22127	0	0	1	"
	-- 获得冥界第3狱诏令
	tBossForSuoYaoPill_Log["EmoneyLog"][3320188] = "350	22128	0	0	1	"
	-- 获得冥界第4狱诏令
	tBossForSuoYaoPill_Log["EmoneyLog"][3320189] = "350	22129	0	0	1	"
	-- 获得冥界第5狱诏令
	tBossForSuoYaoPill_Log["EmoneyLog"][3320190] = "350	22130	0	0	1	"
	-- 获得冥界第6狱诏令
	tBossForSuoYaoPill_Log["EmoneyLog"][3320191] = "350	22131	0	0	1	"
	-- 获得冥界第7狱诏令
	tBossForSuoYaoPill_Log["EmoneyLog"][3320192] = "350	22132	0	0	1	"
	-- 获得冥界第8狱诏令
	tBossForSuoYaoPill_Log["EmoneyLog"][3320193] = "350	22133	0	0	1	"
	-- 获得一元灯
	tBossForSuoYaoPill_Log["EmoneyLog"][2168665] = "350	22134	0	0	1	"
	-- 获得两仪灯
	tBossForSuoYaoPill_Log["EmoneyLog"][2168675] = "350	22135	0	0	1	"
	-- 获得三才灯
	tBossForSuoYaoPill_Log["EmoneyLog"][2168685] = "350	22136	0	0	1	"
	-- 获得四象灯
	tBossForSuoYaoPill_Log["EmoneyLog"][2168695] = "350	22137	0	0	1	"
	-- 获得五行灵灯
	tBossForSuoYaoPill_Log["EmoneyLog"][2168705] = "350	22138	0	0	1	"
	-- 获得六合冥灯
	tBossForSuoYaoPill_Log["EmoneyLog"][2168715] = "350	22139	0	0	1	"
	-- 获得七星琉璃灯
	tBossForSuoYaoPill_Log["EmoneyLog"][2168725] = "350	22140	0	0	1	"
	-- 获得八卦乾坤灯
	tBossForSuoYaoPill_Log["EmoneyLog"][2168735] = "350	22141	0	0	1	"
	-- 200517[英文征服][活动脚本]灵珠试炼添加删除普通log
	tBossForSuoYaoPill_Log["PearlDeleleLog"] = "0,0,%d,%d,12001997,0,0,0"
	
-- 掩码表
local tBossForSuoYaoPill_Stc = {}
	-- 记录刷新宝箱的id
	tBossForSuoYaoPill_Stc[1] = {}
	tBossForSuoYaoPill_Stc[1]["EventType"] = 188
	tBossForSuoYaoPill_Stc[1]["DataType"] = 43
	-- 是否第一次点开npc
	tBossForSuoYaoPill_Stc[3] = {}
	tBossForSuoYaoPill_Stc[3]["EventType"] = 190
	tBossForSuoYaoPill_Stc[3]["DataType"] = 19
	-- 记录冥界刷新宝箱对应的物品
	tBossForSuoYaoPill_Stc[4] = {}
	tBossForSuoYaoPill_Stc[4]["EventType"] = 191
	tBossForSuoYaoPill_Stc[4]["DataType"] = 07
	-- 是否第一次点开宝箱
	tBossForSuoYaoPill_Stc[5] = {}
	tBossForSuoYaoPill_Stc[5]["EventType"] = 191
	tBossForSuoYaoPill_Stc[5]["DataType"] = 08
	
	
-- 奖励表
local tBossForSuoYaoPill_Reward = {}
	-- 打开宝箱
	tBossForSuoYaoPill_Reward["OpenBox"] = {}
	-- 1阶BOSS宝箱·非赠参与的奖励
	tBossForSuoYaoPill_Reward["OpenBox"][23611] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23611]["ItemChanceSum"] = 10000
	-- 100气力
	tBossForSuoYaoPill_Reward["OpenBox"][23611][1] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23611][1]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23611][1]["ItemChance"] = 3900
	tBossForSuoYaoPill_Reward["OpenBox"][23611][1]["RewardStrengthValue"] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23611][1]["RewardStrengthValue"]["Value"] = 100
	tBossForSuoYaoPill_Reward["OpenBox"][23611][1]["Index"] = 1
	-- 删除
	tBossForSuoYaoPill_Reward["OpenBox"][23611][2] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23611][2]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23611][2]["ItemChance"] = 0
	tBossForSuoYaoPill_Reward["OpenBox"][23611][2]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23611][2]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23611][2]["RewardItem"][1]["Id"] = 4200005
	tBossForSuoYaoPill_Reward["OpenBox"][23611][2]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23611][2]["Index"] = 2
	-- 5阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23611][3] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23611][3]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23611][3]["ItemChance"] = 900
	tBossForSuoYaoPill_Reward["OpenBox"][23611][3]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23611][3]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23611][3]["RewardItem"][1]["Id"] = 4200005
	tBossForSuoYaoPill_Reward["OpenBox"][23611][3]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23611][3]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23611][3]["Index"] = 3
	-- 6阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23611][4] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23611][4]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23611][4]["ItemChance"] = 980
	tBossForSuoYaoPill_Reward["OpenBox"][23611][4]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23611][4]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23611][4]["RewardItem"][1]["Id"] = 4200006
	tBossForSuoYaoPill_Reward["OpenBox"][23611][4]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23611][4]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23611][4]["Index"] = 4
	-- 5阶灵珠*3
	tBossForSuoYaoPill_Reward["OpenBox"][23611][5] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23611][5]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23611][5]["ItemChance"] = 800
	tBossForSuoYaoPill_Reward["OpenBox"][23611][5]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23611][5]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23611][5]["RewardItem"][1]["Id"] = 4200005
	tBossForSuoYaoPill_Reward["OpenBox"][23611][5]["RewardItem"][1]["Attr"] = "0 3"
	tBossForSuoYaoPill_Reward["OpenBox"][23611][5]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23611][5]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23611][5]["Index"] = 5
	-- 7阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23611][6] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23611][6]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23611][6]["ItemChance"] = 3400
	tBossForSuoYaoPill_Reward["OpenBox"][23611][6]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23611][6]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23611][6]["RewardItem"][1]["Id"] = 4200007
	tBossForSuoYaoPill_Reward["OpenBox"][23611][6]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23611][6]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23611][6]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23611][6]["Index"] = 6
	-- 9阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23611][7] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23611][7]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23611][7]["ItemChance"] = 20
	tBossForSuoYaoPill_Reward["OpenBox"][23611][7]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23611][7]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23611][7]["RewardItem"][1]["Id"] = 4200009
	tBossForSuoYaoPill_Reward["OpenBox"][23611][7]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23611][7]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23611][7]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23611][7]["Index"] = 7
	tBossForSuoYaoPill_Reward["OpenBox"][23611]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["OpenBox"][23611]["LogStep"] = "1[1]"

	-- 2阶BOSS宝箱·非赠参与的奖励
	tBossForSuoYaoPill_Reward["OpenBox"][23612] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23612]["ItemChanceSum"] = 10000
	-- 200气力
	tBossForSuoYaoPill_Reward["OpenBox"][23612][1] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23612][1]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23612][1]["ItemChance"] = 3900
	tBossForSuoYaoPill_Reward["OpenBox"][23612][1]["RewardStrengthValue"] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23612][1]["RewardStrengthValue"]["Value"] = 200
	tBossForSuoYaoPill_Reward["OpenBox"][23612][1]["Index"] = 1
	-- 删除
	tBossForSuoYaoPill_Reward["OpenBox"][23612][2] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23612][2]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23612][2]["ItemChance"] = 0
	tBossForSuoYaoPill_Reward["OpenBox"][23612][2]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23612][2]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23612][2]["RewardItem"][1]["Id"] = 4200006
	tBossForSuoYaoPill_Reward["OpenBox"][23612][2]["RewardItem"][1]["Attr"] = "0 2"
	tBossForSuoYaoPill_Reward["OpenBox"][23612][2]["Index"] = 2
	-- 6阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23612][3] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23612][3]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23612][3]["ItemChance"] = 900
	tBossForSuoYaoPill_Reward["OpenBox"][23612][3]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23612][3]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23612][3]["RewardItem"][1]["Id"] = 4200006
	tBossForSuoYaoPill_Reward["OpenBox"][23612][3]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23612][3]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23612][3]["Index"] = 3
	-- 7阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23612][4] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23612][4]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23612][4]["ItemChance"] = 980
	tBossForSuoYaoPill_Reward["OpenBox"][23612][4]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23612][4]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23612][4]["RewardItem"][1]["Id"] = 4200007
	tBossForSuoYaoPill_Reward["OpenBox"][23612][4]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23612][4]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23612][4]["Index"] = 4
	-- 6阶灵珠*3
	tBossForSuoYaoPill_Reward["OpenBox"][23612][5] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23612][5]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23612][5]["ItemChance"] = 800
	tBossForSuoYaoPill_Reward["OpenBox"][23612][5]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23612][5]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23612][5]["RewardItem"][1]["Id"] = 4200006
	tBossForSuoYaoPill_Reward["OpenBox"][23612][5]["RewardItem"][1]["Attr"] = "0 3"
	tBossForSuoYaoPill_Reward["OpenBox"][23612][5]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23612][5]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23612][5]["Index"] = 5
	-- 8阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23612][6] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23612][6]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23612][6]["ItemChance"] = 3400
	tBossForSuoYaoPill_Reward["OpenBox"][23612][6]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23612][6]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23612][6]["RewardItem"][1]["Id"] = 4200008
	tBossForSuoYaoPill_Reward["OpenBox"][23612][6]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23612][6]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23612][6]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23612][6]["Index"] = 6
	-- 10阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23612][7] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23612][7]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23612][7]["ItemChance"] = 20
	tBossForSuoYaoPill_Reward["OpenBox"][23612][7]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23612][7]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23612][7]["RewardItem"][1]["Id"] = 4200010
	tBossForSuoYaoPill_Reward["OpenBox"][23612][7]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23612][7]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23612][7]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23612][7]["Index"] = 7
	tBossForSuoYaoPill_Reward["OpenBox"][23612]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["OpenBox"][23612]["LogStep"] = "1[2]"

	-- 3阶BOSS宝箱·非赠参与的奖励
	tBossForSuoYaoPill_Reward["OpenBox"][23613] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23613]["ItemChanceSum"] = 10000
	-- 400气力
	tBossForSuoYaoPill_Reward["OpenBox"][23613][1] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23613][1]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23613][1]["ItemChance"] = 3900
	tBossForSuoYaoPill_Reward["OpenBox"][23613][1]["RewardStrengthValue"] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23613][1]["RewardStrengthValue"]["Value"] = 400
	tBossForSuoYaoPill_Reward["OpenBox"][23613][1]["Index"] = 1
	-- 冥界第1狱通行证
	tBossForSuoYaoPill_Reward["OpenBox"][23613][2] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23613][2]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23613][2]["ItemChance"] = 90
	tBossForSuoYaoPill_Reward["OpenBox"][23613][2]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23613][2]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23613][2]["RewardItem"][1]["Id"] = 3320186
	tBossForSuoYaoPill_Reward["OpenBox"][23613][2]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23613][2]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23613][2]["Index"] = 2
	-- 7阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23613][3] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23613][3]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23613][3]["ItemChance"] = 1000
	tBossForSuoYaoPill_Reward["OpenBox"][23613][3]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23613][3]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23613][3]["RewardItem"][1]["Id"] = 4200007
	tBossForSuoYaoPill_Reward["OpenBox"][23613][3]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23613][3]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23613][3]["Index"] = 3
	-- 8阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23613][4] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23613][4]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23613][4]["ItemChance"] = 900
	tBossForSuoYaoPill_Reward["OpenBox"][23613][4]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23613][4]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23613][4]["RewardItem"][1]["Id"] = 4200008
	tBossForSuoYaoPill_Reward["OpenBox"][23613][4]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23613][4]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23613][4]["Index"] = 4
	-- 7阶灵珠*3
	tBossForSuoYaoPill_Reward["OpenBox"][23613][5] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23613][5]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23613][5]["ItemChance"] = 900
	tBossForSuoYaoPill_Reward["OpenBox"][23613][5]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23613][5]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23613][5]["RewardItem"][1]["Id"] = 4200007
	tBossForSuoYaoPill_Reward["OpenBox"][23613][5]["RewardItem"][1]["Attr"] = "0 3"
	tBossForSuoYaoPill_Reward["OpenBox"][23613][5]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23613][5]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23613][5]["Index"] = 5
	-- 9阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23613][6] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23613][6]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23613][6]["ItemChance"] = 3200
	tBossForSuoYaoPill_Reward["OpenBox"][23613][6]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23613][6]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23613][6]["RewardItem"][1]["Id"] = 4200009
	tBossForSuoYaoPill_Reward["OpenBox"][23613][6]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23613][6]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23613][6]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23613][6]["Index"] = 6
	-- 11阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23613][7] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23613][7]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23613][7]["ItemChance"] = 10
	tBossForSuoYaoPill_Reward["OpenBox"][23613][7]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23613][7]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23613][7]["RewardItem"][1]["Id"] = 4200011
	tBossForSuoYaoPill_Reward["OpenBox"][23613][7]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23613][7]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23613][7]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23613][7]["Index"] = 7
	tBossForSuoYaoPill_Reward["OpenBox"][23613]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["OpenBox"][23613]["LogStep"] = "1[3]"

	-- 4阶BOSS宝箱·非赠参与的奖励
	tBossForSuoYaoPill_Reward["OpenBox"][23614] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23614]["ItemChanceSum"] = 10000
	-- 800气力
	tBossForSuoYaoPill_Reward["OpenBox"][23614][1] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23614][1]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23614][1]["ItemChance"] = 3900
	tBossForSuoYaoPill_Reward["OpenBox"][23614][1]["RewardStrengthValue"] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23614][1]["RewardStrengthValue"]["Value"] = 800
	tBossForSuoYaoPill_Reward["OpenBox"][23614][1]["Index"] = 1
	-- 冥界第2狱通行证
	tBossForSuoYaoPill_Reward["OpenBox"][23614][2] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23614][2]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23614][2]["ItemChance"] = 90
	tBossForSuoYaoPill_Reward["OpenBox"][23614][2]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23614][2]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23614][2]["RewardItem"][1]["Id"] = 3320187
	tBossForSuoYaoPill_Reward["OpenBox"][23614][2]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23614][2]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23614][2]["Index"] = 2
	-- 8阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23614][3] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23614][3]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23614][3]["ItemChance"] = 1000
	tBossForSuoYaoPill_Reward["OpenBox"][23614][3]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23614][3]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23614][3]["RewardItem"][1]["Id"] = 4200008
	tBossForSuoYaoPill_Reward["OpenBox"][23614][3]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23614][3]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23614][3]["Index"] = 3
	-- 9阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23614][4] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23614][4]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23614][4]["ItemChance"] = 900
	tBossForSuoYaoPill_Reward["OpenBox"][23614][4]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23614][4]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23614][4]["RewardItem"][1]["Id"] = 4200009
	tBossForSuoYaoPill_Reward["OpenBox"][23614][4]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23614][4]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23614][4]["Index"] = 4
	-- 8阶灵珠*3
	tBossForSuoYaoPill_Reward["OpenBox"][23614][5] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23614][5]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23614][5]["ItemChance"] = 900
	tBossForSuoYaoPill_Reward["OpenBox"][23614][5]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23614][5]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23614][5]["RewardItem"][1]["Id"] = 4200008
	tBossForSuoYaoPill_Reward["OpenBox"][23614][5]["RewardItem"][1]["Attr"] = "0 3"
	tBossForSuoYaoPill_Reward["OpenBox"][23614][5]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23614][5]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23614][5]["Index"] = 5
	-- 10阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23614][6] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23614][6]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23614][6]["ItemChance"] = 3200
	tBossForSuoYaoPill_Reward["OpenBox"][23614][6]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23614][6]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23614][6]["RewardItem"][1]["Id"] = 4200010
	tBossForSuoYaoPill_Reward["OpenBox"][23614][6]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23614][6]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23614][6]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23614][6]["Index"] = 6
	-- 12阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23614][7] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23614][7]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23614][7]["ItemChance"] = 10
	tBossForSuoYaoPill_Reward["OpenBox"][23614][7]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23614][7]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23614][7]["RewardItem"][1]["Id"] = 4200012
	tBossForSuoYaoPill_Reward["OpenBox"][23614][7]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23614][7]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23614][7]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23614][7]["Index"] = 7
	tBossForSuoYaoPill_Reward["OpenBox"][23614]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["OpenBox"][23614]["LogStep"] = "1[4]"

	-- 5阶BOSS宝箱·非赠参与的奖励
	tBossForSuoYaoPill_Reward["OpenBox"][23615] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23615]["ItemChanceSum"] = 10000
	-- 1600气力
	tBossForSuoYaoPill_Reward["OpenBox"][23615][1] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23615][1]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23615][1]["ItemChance"] = 3900
	tBossForSuoYaoPill_Reward["OpenBox"][23615][1]["RewardStrengthValue"] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23615][1]["RewardStrengthValue"]["Value"] = 1600
	tBossForSuoYaoPill_Reward["OpenBox"][23615][1]["Index"] = 1
	-- 冥界第3狱通行证
	tBossForSuoYaoPill_Reward["OpenBox"][23615][2] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23615][2]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23615][2]["ItemChance"] = 90
	tBossForSuoYaoPill_Reward["OpenBox"][23615][2]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23615][2]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23615][2]["RewardItem"][1]["Id"] = 3320188
	tBossForSuoYaoPill_Reward["OpenBox"][23615][2]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23615][2]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23615][2]["Index"] = 2
	-- 9阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23615][3] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23615][3]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23615][3]["ItemChance"] = 1000
	tBossForSuoYaoPill_Reward["OpenBox"][23615][3]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23615][3]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23615][3]["RewardItem"][1]["Id"] = 4200009
	tBossForSuoYaoPill_Reward["OpenBox"][23615][3]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23615][3]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23615][3]["Index"] = 3
	-- 10阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23615][4] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23615][4]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23615][4]["ItemChance"] = 900
	tBossForSuoYaoPill_Reward["OpenBox"][23615][4]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23615][4]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23615][4]["RewardItem"][1]["Id"] = 4200010
	tBossForSuoYaoPill_Reward["OpenBox"][23615][4]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23615][4]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23615][4]["Index"] = 4
	-- 9阶灵珠*3
	tBossForSuoYaoPill_Reward["OpenBox"][23615][5] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23615][5]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23615][5]["ItemChance"] = 900
	tBossForSuoYaoPill_Reward["OpenBox"][23615][5]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23615][5]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23615][5]["RewardItem"][1]["Id"] = 4200009
	tBossForSuoYaoPill_Reward["OpenBox"][23615][5]["RewardItem"][1]["Attr"] = "0 3"
	tBossForSuoYaoPill_Reward["OpenBox"][23615][5]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23615][5]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23615][5]["Index"] = 5
	-- 11阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23615][6] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23615][6]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23615][6]["ItemChance"] = 3200
	tBossForSuoYaoPill_Reward["OpenBox"][23615][6]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23615][6]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23615][6]["RewardItem"][1]["Id"] = 4200011
	tBossForSuoYaoPill_Reward["OpenBox"][23615][6]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23615][6]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23615][6]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23615][6]["Index"] = 6
	-- 13阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23615][7] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23615][7]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23615][7]["ItemChance"] = 10
	tBossForSuoYaoPill_Reward["OpenBox"][23615][7]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23615][7]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23615][7]["RewardItem"][1]["Id"] = 4200013
	tBossForSuoYaoPill_Reward["OpenBox"][23615][7]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23615][7]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23615][7]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23615][7]["Index"] = 7
	tBossForSuoYaoPill_Reward["OpenBox"][23615]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["OpenBox"][23615]["LogStep"] = "1[5]"

	-- 6阶BOSS宝箱·非赠参与的奖励
	tBossForSuoYaoPill_Reward["OpenBox"][23616] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23616]["ItemChanceSum"] = 10000
	-- 3200气力
	tBossForSuoYaoPill_Reward["OpenBox"][23616][1] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23616][1]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23616][1]["ItemChance"] = 3900
	tBossForSuoYaoPill_Reward["OpenBox"][23616][1]["RewardStrengthValue"] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23616][1]["RewardStrengthValue"]["Value"] = 3200
	tBossForSuoYaoPill_Reward["OpenBox"][23616][1]["Index"] = 1
	-- 冥界第4狱通行证
	tBossForSuoYaoPill_Reward["OpenBox"][23616][2] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23616][2]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23616][2]["ItemChance"] = 90
	tBossForSuoYaoPill_Reward["OpenBox"][23616][2]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23616][2]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23616][2]["RewardItem"][1]["Id"] = 3320189
	tBossForSuoYaoPill_Reward["OpenBox"][23616][2]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23616][2]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23616][2]["Index"] = 2
	-- 10阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23616][3] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23616][3]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23616][3]["ItemChance"] = 1000
	tBossForSuoYaoPill_Reward["OpenBox"][23616][3]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23616][3]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23616][3]["RewardItem"][1]["Id"] = 4200010
	tBossForSuoYaoPill_Reward["OpenBox"][23616][3]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23616][3]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23616][3]["Index"] = 3
	-- 11阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23616][4] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23616][4]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23616][4]["ItemChance"] = 900
	tBossForSuoYaoPill_Reward["OpenBox"][23616][4]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23616][4]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23616][4]["RewardItem"][1]["Id"] = 4200011
	tBossForSuoYaoPill_Reward["OpenBox"][23616][4]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23616][4]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23616][4]["Index"] = 4
	-- 10阶灵珠*3
	tBossForSuoYaoPill_Reward["OpenBox"][23616][5] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23616][5]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23616][5]["ItemChance"] = 900
	tBossForSuoYaoPill_Reward["OpenBox"][23616][5]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23616][5]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23616][5]["RewardItem"][1]["Id"] = 4200010
	tBossForSuoYaoPill_Reward["OpenBox"][23616][5]["RewardItem"][1]["Attr"] = "0 3"
	tBossForSuoYaoPill_Reward["OpenBox"][23616][5]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23616][5]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23616][5]["Index"] = 5
	-- 12阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23616][6] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23616][6]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23616][6]["ItemChance"] = 3200
	tBossForSuoYaoPill_Reward["OpenBox"][23616][6]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23616][6]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23616][6]["RewardItem"][1]["Id"] = 4200012
	tBossForSuoYaoPill_Reward["OpenBox"][23616][6]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23616][6]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23616][6]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23616][6]["Index"] = 6
	-- 14阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23616][7] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23616][7]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23616][7]["ItemChance"] = 10
	tBossForSuoYaoPill_Reward["OpenBox"][23616][7]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23616][7]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23616][7]["RewardItem"][1]["Id"] = 4200014
	tBossForSuoYaoPill_Reward["OpenBox"][23616][7]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23616][7]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23616][7]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23616][7]["Index"] = 7
	tBossForSuoYaoPill_Reward["OpenBox"][23616]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["OpenBox"][23616]["LogStep"] = "1[6]"

	-- 7阶BOSS宝箱·非赠参与的奖励
	tBossForSuoYaoPill_Reward["OpenBox"][23617] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23617]["ItemChanceSum"] = 10000
	-- 6400气力
	tBossForSuoYaoPill_Reward["OpenBox"][23617][1] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23617][1]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23617][1]["ItemChance"] = 3900
	tBossForSuoYaoPill_Reward["OpenBox"][23617][1]["RewardStrengthValue"] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23617][1]["RewardStrengthValue"]["Value"] = 6400
	tBossForSuoYaoPill_Reward["OpenBox"][23617][1]["Index"] = 1
	-- 冥界第5狱通行证
	tBossForSuoYaoPill_Reward["OpenBox"][23617][2] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23617][2]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23617][2]["ItemChance"] = 90
	tBossForSuoYaoPill_Reward["OpenBox"][23617][2]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23617][2]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23617][2]["RewardItem"][1]["Id"] = 3320190
	tBossForSuoYaoPill_Reward["OpenBox"][23617][2]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23617][2]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23617][2]["Index"] = 2
	-- 11阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23617][3] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23617][3]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23617][3]["ItemChance"] = 1000
	tBossForSuoYaoPill_Reward["OpenBox"][23617][3]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23617][3]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23617][3]["RewardItem"][1]["Id"] = 4200011
	tBossForSuoYaoPill_Reward["OpenBox"][23617][3]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23617][3]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23617][3]["Index"] = 3
	-- 12阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23617][4] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23617][4]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23617][4]["ItemChance"] = 900
	tBossForSuoYaoPill_Reward["OpenBox"][23617][4]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23617][4]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23617][4]["RewardItem"][1]["Id"] = 4200012
	tBossForSuoYaoPill_Reward["OpenBox"][23617][4]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23617][4]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23617][4]["Index"] = 4
	-- 11阶灵珠*3
	tBossForSuoYaoPill_Reward["OpenBox"][23617][5] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23617][5]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23617][5]["ItemChance"] = 900
	tBossForSuoYaoPill_Reward["OpenBox"][23617][5]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23617][5]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23617][5]["RewardItem"][1]["Id"] = 4200011
	tBossForSuoYaoPill_Reward["OpenBox"][23617][5]["RewardItem"][1]["Attr"] = "0 3"
	tBossForSuoYaoPill_Reward["OpenBox"][23617][5]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23617][5]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23617][5]["Index"] = 5
	-- 13阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23617][6] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23617][6]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23617][6]["ItemChance"] = 3200
	tBossForSuoYaoPill_Reward["OpenBox"][23617][6]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23617][6]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23617][6]["RewardItem"][1]["Id"] = 4200013
	tBossForSuoYaoPill_Reward["OpenBox"][23617][6]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23617][6]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23617][6]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23617][6]["Index"] = 6
	-- 15阶灵珠
	tBossForSuoYaoPill_Reward["OpenBox"][23617][7] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23617][7]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23617][7]["ItemChance"] = 10
	tBossForSuoYaoPill_Reward["OpenBox"][23617][7]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23617][7]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23617][7]["RewardItem"][1]["Id"] = 4200015
	tBossForSuoYaoPill_Reward["OpenBox"][23617][7]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23617][7]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23617][7]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23617][7]["Index"] = 7
	tBossForSuoYaoPill_Reward["OpenBox"][23617]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["OpenBox"][23617]["LogStep"] = "1[7]"

	-- -- 1阶BOSS宝箱·赠品参与的奖励
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618]["ItemChanceSum"] = 10000
	-- -- 50气力
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][1] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][1]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][1]["ItemChance"] = 3900
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][1]["RewardStrengthValue"] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][1]["RewardStrengthValue"]["Value"] = 50
	-- -- 删除
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][2] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][2]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][2]["ItemChance"] = 0
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][2]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][2]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][2]["RewardItem"][1]["Id"] = 3319024
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][2]["RewardItem"][1]["Attr"] = "0 1"
	-- -- 镇魂珠（赠）*1
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][3] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][3]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][3]["ItemChance"] = 900
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][3]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][3]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][3]["RewardItem"][1]["Id"] = 3319024
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][3]["RewardItem"][1]["Attr"] = "0 1"
	-- -- 镇魂珠（赠）*2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][4] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][4]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][4]["ItemChance"] = 980
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][4]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][4]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][4]["RewardItem"][1]["Id"] = 3319024
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][4]["RewardItem"][1]["Attr"] = "0 2"
	-- -- 佩饰碎片（赠）*3
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][5] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][5]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][5]["ItemChance"] = 800
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][5]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][5]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][5]["RewardItem"][1]["Id"] = 3319026
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][5]["RewardItem"][1]["Attr"] = "0 3"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][5]["Good"] = 1
	-- -- 佩饰碎片（赠）*4
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][6] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][6]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][6]["ItemChance"] = 3400
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][6]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][6]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][6]["RewardItem"][1]["Id"] = 3319026
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][6]["RewardItem"][1]["Attr"] = "0 4"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][6]["Good"] = 1
	-- -- 佩饰碎片（赠）*16
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][7] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][7]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][7]["ItemChance"] = 20
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][7]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][7]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][7]["RewardItem"][1]["Id"] = 3319026
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][7]["RewardItem"][1]["Attr"] = "0 16"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618][7]["Good"] = 1
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618]["LogId"] = 12001247
	-- tBossForSuoYaoPill_Reward["OpenBox"][23618]["LogStep"] = "1[8]"

	-- -- 2阶BOSS宝箱·赠品参与的奖励
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619]["ItemChanceSum"] = 10000
	-- -- 100气力
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][1] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][1]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][1]["ItemChance"] = 3900
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][1]["RewardStrengthValue"] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][1]["RewardStrengthValue"]["Value"] = 100
	-- -- 删除
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][2] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][2]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][2]["ItemChance"] = 0
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][2]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][2]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][2]["RewardItem"][1]["Id"] = 3319024
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][2]["RewardItem"][1]["Attr"] = "0 2"
	-- -- 镇魂珠（赠）*2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][3] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][3]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][3]["ItemChance"] = 900
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][3]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][3]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][3]["RewardItem"][1]["Id"] = 3319024
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][3]["RewardItem"][1]["Attr"] = "0 2"
	-- -- 镇魂珠（赠）*4
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][4] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][4]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][4]["ItemChance"] = 980
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][4]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][4]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][4]["RewardItem"][1]["Id"] = 3319024
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][4]["RewardItem"][1]["Attr"] = "0 4"
	-- -- 佩饰碎片（赠）*6
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][5] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][5]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][5]["ItemChance"] = 800
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][5]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][5]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][5]["RewardItem"][1]["Id"] = 3319026
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][5]["RewardItem"][1]["Attr"] = "0 6"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][5]["Good"] = 1
	-- -- 佩饰碎片（赠）*8
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][6] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][6]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][6]["ItemChance"] = 3400
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][6]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][6]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][6]["RewardItem"][1]["Id"] = 3319026
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][6]["RewardItem"][1]["Attr"] = "0 8"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][6]["Good"] = 1
	-- -- 佩饰碎片（赠）*32
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][7] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][7]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][7]["ItemChance"] = 20
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][7]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][7]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][7]["RewardItem"][1]["Id"] = 3319026
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][7]["RewardItem"][1]["Attr"] = "0 32"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619][7]["Good"] = 1
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619]["LogId"] = 12001247
	-- tBossForSuoYaoPill_Reward["OpenBox"][23619]["LogStep"] = "1[9]"

	-- -- 3阶BOSS宝箱·赠品参与的奖励
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620]["ItemChanceSum"] = 10000
	-- -- 200气力
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][1] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][1]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][1]["ItemChance"] = 3900
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][1]["RewardStrengthValue"] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][1]["RewardStrengthValue"]["Value"] = 200
	-- -- 删除
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][2] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][2]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][2]["ItemChance"] = 0
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][2]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][2]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][2]["RewardItem"][1]["Id"] = 3319024
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][2]["RewardItem"][1]["Attr"] = "0 4"
	-- -- 镇魂珠（赠）*4
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][3] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][3]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][3]["ItemChance"] = 900
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][3]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][3]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][3]["RewardItem"][1]["Id"] = 3319024
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][3]["RewardItem"][1]["Attr"] = "0 4"
	-- -- 镇魂珠（赠）*8
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][4] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][4]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][4]["ItemChance"] = 980
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][4]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][4]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][4]["RewardItem"][1]["Id"] = 3319024
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][4]["RewardItem"][1]["Attr"] = "0 8"
	-- -- 佩饰碎片（赠）*12
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][5] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][5]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][5]["ItemChance"] = 800
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][5]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][5]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][5]["RewardItem"][1]["Id"] = 3319026
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][5]["RewardItem"][1]["Attr"] = "0 12"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][5]["Good"] = 1
	-- -- 佩饰碎片（赠）*16
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][6] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][6]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][6]["ItemChance"] = 3400
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][6]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][6]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][6]["RewardItem"][1]["Id"] = 3319026
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][6]["RewardItem"][1]["Attr"] = "0 16"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][6]["Good"] = 1
	-- -- 佩饰碎片（赠）*64
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][7] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][7]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][7]["ItemChance"] = 20
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][7]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][7]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][7]["RewardItem"][1]["Id"] = 3319026
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][7]["RewardItem"][1]["Attr"] = "0 64"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620][7]["Good"] = 1
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620]["LogId"] = 12001247
	-- tBossForSuoYaoPill_Reward["OpenBox"][23620]["LogStep"] = "1[10]"

	-- -- 4阶BOSS宝箱·赠品参与的奖励
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621]["ItemChanceSum"] = 10000
	-- -- 400气力
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][1] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][1]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][1]["ItemChance"] = 3900
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][1]["RewardStrengthValue"] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][1]["RewardStrengthValue"]["Value"] = 400
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][1]["Index"] = 1
	-- -- 删除
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][2] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][2]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][2]["ItemChance"] = 0
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][2]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][2]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][2]["RewardItem"][1]["Id"] = 3319024
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][2]["RewardItem"][1]["Attr"] = "0 8"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][2]["Index"] = 2
	-- -- 镇魂珠（赠）*8
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][3] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][3]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][3]["ItemChance"] = 900
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][3]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][3]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][3]["RewardItem"][1]["Id"] = 3319024
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][3]["RewardItem"][1]["Attr"] = "0 8"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][3]["Index"] = 3
	-- -- 镇魂珠（赠）*16
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][4] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][4]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][4]["ItemChance"] = 980
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][4]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][4]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][4]["RewardItem"][1]["Id"] = 3319024
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][4]["RewardItem"][1]["Attr"] = "0 16"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][4]["Index"] = 4
	-- -- 佩饰碎片（赠）*24
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][5] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][5]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][5]["ItemChance"] = 800
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][5]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][5]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][5]["RewardItem"][1]["Id"] = 3319026
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][5]["RewardItem"][1]["Attr"] = "0 24"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][5]["Good"] = 1
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][5]["Index"] = 5
	-- -- 佩饰碎片（赠）*32
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][6] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][6]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][6]["ItemChance"] = 3400
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][6]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][6]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][6]["RewardItem"][1]["Id"] = 3319026
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][6]["RewardItem"][1]["Attr"] = "0 32"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][6]["Good"] = 1
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][6]["Index"] = 6
	-- -- 佩饰碎片（赠）*128
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][7] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][7]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][7]["ItemChance"] = 20
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][7]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][7]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][7]["RewardItem"][1]["Id"] = 3319026
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][7]["RewardItem"][1]["Attr"] = "0 128"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][7]["Good"] = 1
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621][7]["Index"] = 7
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621]["LogId"] = 12001247
	-- tBossForSuoYaoPill_Reward["OpenBox"][23621]["LogStep"] = "1[11]"

	-- -- 5阶BOSS宝箱·赠品参与的奖励
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622]["ItemChanceSum"] = 10000
	-- -- 800气力
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][1] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][1]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][1]["ItemChance"] = 3900
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][1]["RewardStrengthValue"] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][1]["RewardStrengthValue"]["Value"] = 800
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][1]["Index"] = 1
	-- -- 删除
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][2] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][2]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][2]["ItemChance"] = 0
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][2]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][2]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][2]["RewardItem"][1]["Id"] = 3319024
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][2]["RewardItem"][1]["Attr"] = "0 16"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][2]["Index"] = 2
	-- -- 镇魂珠（赠）*16
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][3] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][3]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][3]["ItemChance"] = 900
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][3]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][3]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][3]["RewardItem"][1]["Id"] = 3319024
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][3]["RewardItem"][1]["Attr"] = "0 16"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][3]["Index"] = 3
	-- -- 镇魂珠（赠）*32
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][4] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][4]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][4]["ItemChance"] = 980
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][4]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][4]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][4]["RewardItem"][1]["Id"] = 3319024
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][4]["RewardItem"][1]["Attr"] = "0 32"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][4]["Index"] = 4
	-- -- 佩饰碎片（赠）*48
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][5] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][5]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][5]["ItemChance"] = 800
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][5]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][5]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][5]["RewardItem"][1]["Id"] = 3319026
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][5]["RewardItem"][1]["Attr"] = "0 48"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][5]["Good"] = 1
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][5]["Index"] = 5
	-- -- 佩饰碎片（赠）*64
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][6] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][6]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][6]["ItemChance"] = 3400
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][6]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][6]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][6]["RewardItem"][1]["Id"] = 3319026
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][6]["RewardItem"][1]["Attr"] = "0 64"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][6]["Good"] = 1
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][6]["Index"] = 6
	-- -- 佩饰碎片（赠）*256
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][7] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][7]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][7]["ItemChance"] = 20
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][7]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][7]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][7]["RewardItem"][1]["Id"] = 3319026
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][7]["RewardItem"][1]["Attr"] = "0 256"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][7]["Good"] = 1
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622][7]["Index"] = 7
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622]["LogId"] = 12001247
	-- tBossForSuoYaoPill_Reward["OpenBox"][23622]["LogStep"] = "1[12]"

	-- -- 6阶BOSS宝箱·赠品参与的奖励
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623]["ItemChanceSum"] = 10000
	-- -- 1600气力
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][1] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][1]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][1]["ItemChance"] = 3900
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][1]["RewardStrengthValue"] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][1]["RewardStrengthValue"]["Value"] = 1600
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][1]["Index"] = 1
	-- -- 删除
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][2] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][2]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][2]["ItemChance"] = 0
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][2]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][2]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][2]["RewardItem"][1]["Id"] = 3319024
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][2]["RewardItem"][1]["Attr"] = "0 32"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][2]["Index"] = 2
	-- -- 镇魂珠（赠）*32
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][3] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][3]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][3]["ItemChance"] = 900
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][3]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][3]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][3]["RewardItem"][1]["Id"] = 3319024
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][3]["RewardItem"][1]["Attr"] = "0 32"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][3]["Index"] = 3
	-- -- 镇魂珠（赠）*64
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][4] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][4]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][4]["ItemChance"] = 980
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][4]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][4]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][4]["RewardItem"][1]["Id"] = 3319024
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][4]["RewardItem"][1]["Attr"] = "0 64"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][4]["Index"] = 4
	-- -- 佩饰碎片（赠）*96
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][5] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][5]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][5]["ItemChance"] = 800
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][5]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][5]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][5]["RewardItem"][1]["Id"] = 3319026
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][5]["RewardItem"][1]["Attr"] = "0 96"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][5]["Good"] = 1
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][5]["Index"] = 5
	-- -- 佩饰碎片（赠）*128
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][6] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][6]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][6]["ItemChance"] = 3400
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][6]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][6]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][6]["RewardItem"][1]["Id"] = 3319026
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][6]["RewardItem"][1]["Attr"] = "0 128"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][6]["Good"] = 1
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][6]["Index"] = 6
	-- -- 佩饰碎片（赠）*512
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][7] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][7]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][7]["ItemChance"] = 20
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][7]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][7]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][7]["RewardItem"][1]["Id"] = 3319026
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][7]["RewardItem"][1]["Attr"] = "0 512"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][7]["Good"] = 1
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623][7]["Index"] = 7
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623]["LogId"] = 12001247
	-- tBossForSuoYaoPill_Reward["OpenBox"][23623]["LogStep"] = "1[13]"

	-- -- 7阶BOSS宝箱·赠品参与的奖励
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624]["ItemChanceSum"] = 10000
	-- -- 3200气力
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][1] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][1]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][1]["ItemChance"] = 3900
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][1]["RewardStrengthValue"] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][1]["RewardStrengthValue"]["Value"] = 3200
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][1]["Index"] = 1
	-- -- 删除
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][2] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][2]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][2]["ItemChance"] = 0
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][2]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][2]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][2]["RewardItem"][1]["Id"] = 3319024
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][2]["RewardItem"][1]["Attr"] = "0 64"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][2]["Index"] = 2
	-- -- 镇魂珠（赠）*64
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][3] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][3]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][3]["ItemChance"] = 900
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][3]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][3]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][3]["RewardItem"][1]["Id"] = 3319024
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][3]["RewardItem"][1]["Attr"] = "0 64"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][3]["Index"] = 3
	-- -- 镇魂珠（赠）*128
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][4] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][4]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][4]["ItemChance"] = 980
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][4]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][4]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][4]["RewardItem"][1]["Id"] = 3319024
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][4]["RewardItem"][1]["Attr"] = "0 128"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][4]["Index"] = 4
	-- -- 佩饰碎片（赠）*192
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][5] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][5]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][5]["ItemChance"] = 800
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][5]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][5]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][5]["RewardItem"][1]["Id"] = 3319026
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][5]["RewardItem"][1]["Attr"] = "0 192"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][5]["Good"] = 1
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][5]["Index"] = 5
	-- -- 佩饰碎片（赠）*256
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][6] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][6]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][6]["ItemChance"] = 3400
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][6]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][6]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][6]["RewardItem"][1]["Id"] = 3319026
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][6]["RewardItem"][1]["Attr"] = "0 256"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][6]["Good"] = 1
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][6]["Index"] = 6
	-- -- 佩饰*1
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][7] = {} 
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][7]["RandomItemChanceType"] = 2
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][7]["ItemChance"] = 20
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][7]["RewardItem"] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][7]["RewardItem"][1] = {}
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][7]["RewardItem"][1]["Id"] = 2168776
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][7]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][7]["Good"] = 1
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624][7]["Index"] = 7
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624]["LogId"] = 12001247
	-- tBossForSuoYaoPill_Reward["OpenBox"][23624]["LogStep"] = "1[14]"
	
	-- 1阶至宝
	tBossForSuoYaoPill_Reward["OpenBox"][23635] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23635]["ItemChanceSum"] = 10000
	-- 8阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23635][1] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23635][1]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23635][1]["ItemChance"] = 2300
	tBossForSuoYaoPill_Reward["OpenBox"][23635][1]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23635][1]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23635][1]["RewardItem"][1]["Id"] = 4200008
	tBossForSuoYaoPill_Reward["OpenBox"][23635][1]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23635][1]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23635][1]["Index"] = 1
	-- 冥界第3狱通行证
	tBossForSuoYaoPill_Reward["OpenBox"][23635][2] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23635][2]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23635][2]["ItemChance"] = 52
	tBossForSuoYaoPill_Reward["OpenBox"][23635][2]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23635][2]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23635][2]["RewardItem"][1]["Id"] = 3320188
	tBossForSuoYaoPill_Reward["OpenBox"][23635][2]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23635][2]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23635][2]["Index"] = 2
	-- 9阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23635][3] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23635][3]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23635][3]["ItemChance"] = 2200
	tBossForSuoYaoPill_Reward["OpenBox"][23635][3]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23635][3]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23635][3]["RewardItem"][1]["Id"] = 4200009
	tBossForSuoYaoPill_Reward["OpenBox"][23635][3]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23635][3]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23635][3]["Index"] = 3
	-- 10阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23635][4] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23635][4]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23635][4]["ItemChance"] = 1600
	tBossForSuoYaoPill_Reward["OpenBox"][23635][4]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23635][4]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23635][4]["RewardItem"][1]["Id"] = 4200010
	tBossForSuoYaoPill_Reward["OpenBox"][23635][4]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23635][4]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23635][4]["Index"] = 4
	-- 10阶灵珠*1+8阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23635][5] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23635][5]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23635][5]["ItemChance"] = 2100
	tBossForSuoYaoPill_Reward["OpenBox"][23635][5]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23635][5]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23635][5]["RewardItem"][1]["Id"] = 4200010
	tBossForSuoYaoPill_Reward["OpenBox"][23635][5]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23635][5]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23635][5]["RewardItem"][2] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23635][5]["RewardItem"][2]["Id"] = 4200008
	tBossForSuoYaoPill_Reward["OpenBox"][23635][5]["RewardItem"][2]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23635][5]["RewardItem"][2]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23635][5]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23635][5]["Index"] = 5
	-- 11阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23635][6] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23635][6]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23635][6]["ItemChance"] = 1740
	tBossForSuoYaoPill_Reward["OpenBox"][23635][6]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23635][6]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23635][6]["RewardItem"][1]["Id"] = 4200011
	tBossForSuoYaoPill_Reward["OpenBox"][23635][6]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23635][6]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23635][6]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23635][6]["Index"] = 6
	-- 13阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23635][7] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23635][7]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23635][7]["ItemChance"] = 8
	tBossForSuoYaoPill_Reward["OpenBox"][23635][7]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23635][7]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23635][7]["RewardItem"][1]["Id"] = 4200013
	tBossForSuoYaoPill_Reward["OpenBox"][23635][7]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23635][7]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23635][7]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23635][7]["Index"] = 7
	tBossForSuoYaoPill_Reward["OpenBox"][23635]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["OpenBox"][23635]["LogStep"] = "1[21]"
	
	-- 2阶至宝
	tBossForSuoYaoPill_Reward["OpenBox"][23636] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23636]["ItemChanceSum"] = 10000
	-- 9阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23636][1] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23636][1]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23636][1]["ItemChance"] = 2300
	tBossForSuoYaoPill_Reward["OpenBox"][23636][1]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23636][1]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23636][1]["RewardItem"][1]["Id"] = 4200009
	tBossForSuoYaoPill_Reward["OpenBox"][23636][1]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23636][1]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23636][1]["Index"] = 1
	-- 冥界第4狱通行证
	tBossForSuoYaoPill_Reward["OpenBox"][23636][2] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23636][2]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23636][2]["ItemChance"] = 52
	tBossForSuoYaoPill_Reward["OpenBox"][23636][2]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23636][2]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23636][2]["RewardItem"][1]["Id"] = 3320189
	tBossForSuoYaoPill_Reward["OpenBox"][23636][2]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23636][2]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23636][2]["Index"] = 2
	-- 10阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23636][3] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23636][3]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23636][3]["ItemChance"] = 2200
	tBossForSuoYaoPill_Reward["OpenBox"][23636][3]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23636][3]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23636][3]["RewardItem"][1]["Id"] = 4200010
	tBossForSuoYaoPill_Reward["OpenBox"][23636][3]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23636][3]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23636][3]["Index"] = 3
	-- 11阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23636][4] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23636][4]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23636][4]["ItemChance"] = 1600
	tBossForSuoYaoPill_Reward["OpenBox"][23636][4]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23636][4]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23636][4]["RewardItem"][1]["Id"] = 4200011
	tBossForSuoYaoPill_Reward["OpenBox"][23636][4]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23636][4]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23636][4]["Index"] = 4
	-- 11阶灵珠*1+9阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23636][5] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23636][5]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23636][5]["ItemChance"] = 2100
	tBossForSuoYaoPill_Reward["OpenBox"][23636][5]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23636][5]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23636][5]["RewardItem"][1]["Id"] = 4200011
	tBossForSuoYaoPill_Reward["OpenBox"][23636][5]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23636][5]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23636][5]["RewardItem"][2] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23636][5]["RewardItem"][2]["Id"] = 4200009
	tBossForSuoYaoPill_Reward["OpenBox"][23636][5]["RewardItem"][2]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23636][5]["RewardItem"][2]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23636][5]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23636][5]["Index"] = 5
	-- 12阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23636][6] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23636][6]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23636][6]["ItemChance"] = 1740
	tBossForSuoYaoPill_Reward["OpenBox"][23636][6]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23636][6]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23636][6]["RewardItem"][1]["Id"] = 4200012
	tBossForSuoYaoPill_Reward["OpenBox"][23636][6]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23636][6]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23636][6]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23636][6]["Index"] = 6
	-- 14阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23636][7] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23636][7]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23636][7]["ItemChance"] = 8
	tBossForSuoYaoPill_Reward["OpenBox"][23636][7]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23636][7]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23636][7]["RewardItem"][1]["Id"] = 4200014
	tBossForSuoYaoPill_Reward["OpenBox"][23636][7]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23636][7]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23636][7]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23636][7]["Index"] = 7
	tBossForSuoYaoPill_Reward["OpenBox"][23636]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["OpenBox"][23636]["LogStep"] = "1[22]"
	
	-- 3阶至宝
	tBossForSuoYaoPill_Reward["OpenBox"][23637] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23637]["ItemChanceSum"] = 10000
	-- 10阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23637][1] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23637][1]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23637][1]["ItemChance"] = 2300
	tBossForSuoYaoPill_Reward["OpenBox"][23637][1]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23637][1]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23637][1]["RewardItem"][1]["Id"] = 4200010
	tBossForSuoYaoPill_Reward["OpenBox"][23637][1]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23637][1]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23637][1]["Index"] = 1
	-- 冥界第5狱通行证
	tBossForSuoYaoPill_Reward["OpenBox"][23637][2] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23637][2]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23637][2]["ItemChance"] = 52
	tBossForSuoYaoPill_Reward["OpenBox"][23637][2]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23637][2]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23637][2]["RewardItem"][1]["Id"] = 3320190
	tBossForSuoYaoPill_Reward["OpenBox"][23637][2]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23637][2]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23637][2]["Index"] = 2
	-- 11阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23637][3] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23637][3]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23637][3]["ItemChance"] = 2200
	tBossForSuoYaoPill_Reward["OpenBox"][23637][3]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23637][3]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23637][3]["RewardItem"][1]["Id"] = 4200011
	tBossForSuoYaoPill_Reward["OpenBox"][23637][3]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23637][3]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23637][3]["Index"] = 3
	-- 12阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23637][4] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23637][4]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23637][4]["ItemChance"] = 1600
	tBossForSuoYaoPill_Reward["OpenBox"][23637][4]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23637][4]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23637][4]["RewardItem"][1]["Id"] = 4200012
	tBossForSuoYaoPill_Reward["OpenBox"][23637][4]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23637][4]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23637][4]["Index"] = 4
	-- 12阶灵珠*1+10阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23637][5] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23637][5]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23637][5]["ItemChance"] = 2100
	tBossForSuoYaoPill_Reward["OpenBox"][23637][5]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23637][5]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23637][5]["RewardItem"][1]["Id"] = 4200012
	tBossForSuoYaoPill_Reward["OpenBox"][23637][5]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23637][5]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23637][5]["RewardItem"][2] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23637][5]["RewardItem"][2]["Id"] = 4200010
	tBossForSuoYaoPill_Reward["OpenBox"][23637][5]["RewardItem"][2]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23637][5]["RewardItem"][2]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23637][5]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23637][5]["Index"] = 5
	-- 13阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23637][6] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23637][6]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23637][6]["ItemChance"] = 1740
	tBossForSuoYaoPill_Reward["OpenBox"][23637][6]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23637][6]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23637][6]["RewardItem"][1]["Id"] = 4200013
	tBossForSuoYaoPill_Reward["OpenBox"][23637][6]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23637][6]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23637][6]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23637][6]["Index"] = 6
	-- 15阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23637][7] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23637][7]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23637][7]["ItemChance"] = 8
	tBossForSuoYaoPill_Reward["OpenBox"][23637][7]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23637][7]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23637][7]["RewardItem"][1]["Id"] = 4200015
	tBossForSuoYaoPill_Reward["OpenBox"][23637][7]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23637][7]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23637][7]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23637][7]["Index"] = 7
	tBossForSuoYaoPill_Reward["OpenBox"][23637]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["OpenBox"][23637]["LogStep"] = "1[23]"
	
	-- 4阶至宝
	tBossForSuoYaoPill_Reward["OpenBox"][23638] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23638]["ItemChanceSum"] = 10000
	-- 11阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23638][1] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23638][1]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23638][1]["ItemChance"] = 2300
	tBossForSuoYaoPill_Reward["OpenBox"][23638][1]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23638][1]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23638][1]["RewardItem"][1]["Id"] = 4200011
	tBossForSuoYaoPill_Reward["OpenBox"][23638][1]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23638][1]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23638][1]["Index"] = 1
	-- 冥界第6狱通行证
	tBossForSuoYaoPill_Reward["OpenBox"][23638][2] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23638][2]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23638][2]["ItemChance"] = 52
	tBossForSuoYaoPill_Reward["OpenBox"][23638][2]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23638][2]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23638][2]["RewardItem"][1]["Id"] = 3320191
	tBossForSuoYaoPill_Reward["OpenBox"][23638][2]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23638][2]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23638][2]["Index"] = 2
	-- 12阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23638][3] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23638][3]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23638][3]["ItemChance"] = 2200
	tBossForSuoYaoPill_Reward["OpenBox"][23638][3]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23638][3]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23638][3]["RewardItem"][1]["Id"] = 4200012
	tBossForSuoYaoPill_Reward["OpenBox"][23638][3]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23638][3]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23638][3]["Index"] = 3
	-- 13阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23638][4] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23638][4]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23638][4]["ItemChance"] = 1600
	tBossForSuoYaoPill_Reward["OpenBox"][23638][4]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23638][4]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23638][4]["RewardItem"][1]["Id"] = 4200013
	tBossForSuoYaoPill_Reward["OpenBox"][23638][4]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23638][4]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23638][4]["Index"] = 4
	-- 13阶灵珠*1+11阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23638][5] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23638][5]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23638][5]["ItemChance"] = 2100
	tBossForSuoYaoPill_Reward["OpenBox"][23638][5]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23638][5]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23638][5]["RewardItem"][1]["Id"] = 4200013
	tBossForSuoYaoPill_Reward["OpenBox"][23638][5]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23638][5]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23638][5]["RewardItem"][2] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23638][5]["RewardItem"][2]["Id"] = 4200011
	tBossForSuoYaoPill_Reward["OpenBox"][23638][5]["RewardItem"][2]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23638][5]["RewardItem"][2]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23638][5]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23638][5]["Index"] = 5
	-- 14阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23638][6] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23638][6]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23638][6]["ItemChance"] = 1740
	tBossForSuoYaoPill_Reward["OpenBox"][23638][6]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23638][6]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23638][6]["RewardItem"][1]["Id"] = 4200014
	tBossForSuoYaoPill_Reward["OpenBox"][23638][6]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23638][6]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23638][6]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23638][6]["Index"] = 6
	-- 16阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23638][7] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23638][7]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23638][7]["ItemChance"] = 8
	tBossForSuoYaoPill_Reward["OpenBox"][23638][7]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23638][7]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23638][7]["RewardItem"][1]["Id"] = 4200016
	tBossForSuoYaoPill_Reward["OpenBox"][23638][7]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23638][7]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23638][7]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23638][7]["Index"] = 7
	tBossForSuoYaoPill_Reward["OpenBox"][23638]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["OpenBox"][23638]["LogStep"] = "1[24]"
	
	-- 5阶至宝
	tBossForSuoYaoPill_Reward["OpenBox"][23639] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23639]["ItemChanceSum"] = 10000
	-- 12阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23639][1] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23639][1]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23639][1]["ItemChance"] = 2300
	tBossForSuoYaoPill_Reward["OpenBox"][23639][1]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23639][1]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23639][1]["RewardItem"][1]["Id"] = 4200012
	tBossForSuoYaoPill_Reward["OpenBox"][23639][1]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23639][1]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23639][1]["Index"] = 1
	-- 冥界第7狱通行证
	tBossForSuoYaoPill_Reward["OpenBox"][23639][2] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23639][2]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23639][2]["ItemChance"] = 52
	tBossForSuoYaoPill_Reward["OpenBox"][23639][2]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23639][2]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23639][2]["RewardItem"][1]["Id"] = 3320192
	tBossForSuoYaoPill_Reward["OpenBox"][23639][2]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23639][2]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23639][2]["Index"] = 2
	-- 13阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23639][3] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23639][3]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23639][3]["ItemChance"] = 2200
	tBossForSuoYaoPill_Reward["OpenBox"][23639][3]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23639][3]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23639][3]["RewardItem"][1]["Id"] = 4200013
	tBossForSuoYaoPill_Reward["OpenBox"][23639][3]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23639][3]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23639][3]["Index"] = 3
	-- 14阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23639][4] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23639][4]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23639][4]["ItemChance"] = 1600
	tBossForSuoYaoPill_Reward["OpenBox"][23639][4]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23639][4]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23639][4]["RewardItem"][1]["Id"] = 4200014
	tBossForSuoYaoPill_Reward["OpenBox"][23639][4]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23639][4]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23639][4]["Index"] = 4
	-- 14阶灵珠*1+12阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23639][5] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23639][5]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23639][5]["ItemChance"] = 2100
	tBossForSuoYaoPill_Reward["OpenBox"][23639][5]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23639][5]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23639][5]["RewardItem"][1]["Id"] = 4200014
	tBossForSuoYaoPill_Reward["OpenBox"][23639][5]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23639][5]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23639][5]["RewardItem"][2] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23639][5]["RewardItem"][2]["Id"] = 4200012
	tBossForSuoYaoPill_Reward["OpenBox"][23639][5]["RewardItem"][2]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23639][5]["RewardItem"][2]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23639][5]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23639][5]["Index"] = 5
	-- 15阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23639][6] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23639][6]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23639][6]["ItemChance"] = 1740
	tBossForSuoYaoPill_Reward["OpenBox"][23639][6]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23639][6]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23639][6]["RewardItem"][1]["Id"] = 4200015
	tBossForSuoYaoPill_Reward["OpenBox"][23639][6]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23639][6]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23639][6]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23639][6]["Index"] = 6
	-- 17阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23639][7] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23639][7]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23639][7]["ItemChance"] = 8
	tBossForSuoYaoPill_Reward["OpenBox"][23639][7]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23639][7]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23639][7]["RewardItem"][1]["Id"] = 4200017
	tBossForSuoYaoPill_Reward["OpenBox"][23639][7]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23639][7]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23639][7]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23639][7]["Index"] = 7
	tBossForSuoYaoPill_Reward["OpenBox"][23639]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["OpenBox"][23639]["LogStep"] = "1[25]"
	
	-- 6阶至宝
	tBossForSuoYaoPill_Reward["OpenBox"][23640] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23640]["ItemChanceSum"] = 10000
	-- 13阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23640][1] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23640][1]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23640][1]["ItemChance"] = 2300
	tBossForSuoYaoPill_Reward["OpenBox"][23640][1]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23640][1]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23640][1]["RewardItem"][1]["Id"] = 4200013
	tBossForSuoYaoPill_Reward["OpenBox"][23640][1]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23640][1]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23640][1]["Index"] = 1
	-- 冥界第8狱通行证
	tBossForSuoYaoPill_Reward["OpenBox"][23640][2] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23640][2]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23640][2]["ItemChance"] = 52
	tBossForSuoYaoPill_Reward["OpenBox"][23640][2]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23640][2]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23640][2]["RewardItem"][1]["Id"] = 3320193
	tBossForSuoYaoPill_Reward["OpenBox"][23640][2]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23640][2]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23640][2]["Index"] = 2
	-- 14阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23640][3] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23640][3]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23640][3]["ItemChance"] = 2200
	tBossForSuoYaoPill_Reward["OpenBox"][23640][3]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23640][3]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23640][3]["RewardItem"][1]["Id"] = 4200014
	tBossForSuoYaoPill_Reward["OpenBox"][23640][3]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23640][3]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23640][3]["Index"] = 3
	-- 15阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23640][4] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23640][4]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23640][4]["ItemChance"] = 1600
	tBossForSuoYaoPill_Reward["OpenBox"][23640][4]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23640][4]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23640][4]["RewardItem"][1]["Id"] = 4200015
	tBossForSuoYaoPill_Reward["OpenBox"][23640][4]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23640][4]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23640][4]["Index"] = 4
	-- 15阶灵珠*1+13阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23640][5] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23640][5]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23640][5]["ItemChance"] = 2100
	tBossForSuoYaoPill_Reward["OpenBox"][23640][5]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23640][5]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23640][5]["RewardItem"][1]["Id"] = 4200015
	tBossForSuoYaoPill_Reward["OpenBox"][23640][5]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23640][5]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23640][5]["RewardItem"][2] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23640][5]["RewardItem"][2]["Id"] = 4200013
	tBossForSuoYaoPill_Reward["OpenBox"][23640][5]["RewardItem"][2]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23640][5]["RewardItem"][2]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23640][5]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23640][5]["Index"] = 5
	-- 16阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23640][6] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23640][6]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23640][6]["ItemChance"] = 1740
	tBossForSuoYaoPill_Reward["OpenBox"][23640][6]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23640][6]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23640][6]["RewardItem"][1]["Id"] = 4200016
	tBossForSuoYaoPill_Reward["OpenBox"][23640][6]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23640][6]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23640][6]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23640][6]["Index"] = 6
	-- 18阶灵珠*1
	tBossForSuoYaoPill_Reward["OpenBox"][23640][7] = {} 
	tBossForSuoYaoPill_Reward["OpenBox"][23640][7]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["OpenBox"][23640][7]["ItemChance"] = 8
	tBossForSuoYaoPill_Reward["OpenBox"][23640][7]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23640][7]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["OpenBox"][23640][7]["RewardItem"][1]["Id"] = 4200018
	tBossForSuoYaoPill_Reward["OpenBox"][23640][7]["RewardItem"][1]["Attr"] = "0 1"
	tBossForSuoYaoPill_Reward["OpenBox"][23640][7]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["OpenBox"][23640][7]["Good"] = 1
	tBossForSuoYaoPill_Reward["OpenBox"][23640][7]["Index"] = 7
	tBossForSuoYaoPill_Reward["OpenBox"][23640]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["OpenBox"][23640]["LogStep"] = "1[26]"
	
	tBossForSuoYaoPill_Reward["TenMulOpenBox"] = {}
	-- 1阶至宝·十倍
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635]["ItemChanceSum"] = 10000
	-- 8阶灵珠 - 23.00%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][1]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][1]["ItemChance"] = 2300
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][1]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][1]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][1]["RewardItem"][1]["Id"] = 4200008 -- 【库】8阶灵珠[属性:8]【表格】8阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][1]["RewardItem"][1]["Attr"] = "0 10" -- 8阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][1]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][1]["Index"] = 1
	-- 冥界第3狱通行证 - 0.52%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][2] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][2]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][2]["ItemChance"] = 52
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][2]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][2]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][2]["RewardItem"][1]["Id"] = 3320188 -- 【库】冥界第3狱诏令[属性:9]【表格】冥界第3狱通行证
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][2]["RewardItem"][1]["Attr"] = "0 10" -- 冥界第3狱诏令*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][2]["Good"] = 1
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][2]["Index"] = 2
	-- 9阶灵珠 - 22.00%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][3] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][3]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][3]["ItemChance"] = 2200
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][3]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][3]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][3]["RewardItem"][1]["Id"] = 4200009 -- 【库】9阶灵珠[属性:8]【表格】9阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][3]["RewardItem"][1]["Attr"] = "0 10" -- 9阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][3]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][3]["Index"] = 3
	-- 10阶灵珠 - 16.00%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][4] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][4]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][4]["ItemChance"] = 1600
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][4]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][4]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][4]["RewardItem"][1]["Id"] = 4200010 -- 【库】10阶灵珠[属性:8]【表格】10阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][4]["RewardItem"][1]["Attr"] = "0 10" -- 10阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][4]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][4]["Index"] = 4
	-- 10阶灵珠+8阶灵珠 - 21.00%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][5] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][5]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][5]["ItemChance"] = 2100
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][5]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][5]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][5]["RewardItem"][1]["Id"] = 4200010 -- 【库】10阶灵珠[属性:8]【表格】10阶灵珠+8阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][5]["RewardItem"][1]["Attr"] = "0 10" -- 10阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][5]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][5]["RewardItem"][2] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][5]["RewardItem"][2]["Id"] = 4200008 -- 【库】8阶灵珠[属性:8]
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][5]["RewardItem"][2]["Attr"] = "0 10" -- 8阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][5]["RewardItem"][2]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][5]["Good"] = 1
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][5]["Index"] = 5
	-- 11阶灵珠 - 17.40%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][6] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][6]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][6]["ItemChance"] = 1740
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][6]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][6]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][6]["RewardItem"][1]["Id"] = 4200011 -- 【库】11阶灵珠[属性:8]【表格】11阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][6]["RewardItem"][1]["Attr"] = "0 10" -- 11阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][6]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][6]["Good"] = 1
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][6]["Index"] = 6
	-- 13阶灵珠 - 0.08%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][7] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][7]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][7]["ItemChance"] = 8
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][7]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][7]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][7]["RewardItem"][1]["Id"] = 4200013 -- 【库】13阶灵珠[属性:8]【表格】13阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][7]["RewardItem"][1]["Attr"] = "0 10" -- 13阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][7]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][7]["Good"] = 1
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635][7]["Index"] = 7
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23635]["LogStep"] = "1[29]"
	
	-- 2阶至宝·十倍
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636]["ItemChanceSum"] = 10000
	-- 9阶灵珠冥界 - 23.00%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][1]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][1]["ItemChance"] = 2300
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][1]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][1]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][1]["RewardItem"][1]["Id"] = 4200009 -- 【库】9阶灵珠[属性:8]【表格】9阶灵珠冥界
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][1]["RewardItem"][1]["Attr"] = "0 10" -- 9阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][1]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][1]["Index"] = 1
	-- 第4狱通行证 - 0.52%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][2] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][2]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][2]["ItemChance"] = 52
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][2]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][2]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][2]["RewardItem"][1]["Id"] = 3320189 -- 【库】冥界第4狱诏令[属性:9]【表格】第4狱通行证
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][2]["RewardItem"][1]["Attr"] = "0 10" -- 冥界第4狱诏令*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][2]["Good"] = 1
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][2]["Index"] = 2
	-- 10阶灵珠 - 22.00%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][3] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][3]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][3]["ItemChance"] = 2200
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][3]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][3]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][3]["RewardItem"][1]["Id"] = 4200010 -- 【库】10阶灵珠[属性:8]【表格】10阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][3]["RewardItem"][1]["Attr"] = "0 10" -- 10阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][3]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][3]["Index"] = 3
	-- 11阶灵珠 - 16.00%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][4] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][4]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][4]["ItemChance"] = 1600
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][4]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][4]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][4]["RewardItem"][1]["Id"] = 4200011 -- 【库】11阶灵珠[属性:8]【表格】11阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][4]["RewardItem"][1]["Attr"] = "0 10" -- 11阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][4]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][4]["Index"] = 4
	-- 11阶灵珠+9阶灵珠 - 21.00%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][5] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][5]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][5]["ItemChance"] = 2100
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][5]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][5]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][5]["RewardItem"][1]["Id"] = 4200011 -- 【库】11阶灵珠[属性:8]【表格】11阶灵珠+9阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][5]["RewardItem"][1]["Attr"] = "0 10" -- 11阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][5]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][5]["RewardItem"][2] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][5]["RewardItem"][2]["Id"] = 4200009 -- 【库】9阶灵珠[属性:8]
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][5]["RewardItem"][2]["Attr"] = "0 10" -- 9阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][5]["RewardItem"][2]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][5]["Good"] = 1
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][5]["Index"] = 5
	-- 12阶灵珠 - 17.40%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][6] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][6]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][6]["ItemChance"] = 1740
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][6]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][6]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][6]["RewardItem"][1]["Id"] = 4200012 -- 【库】12阶灵珠[属性:8]【表格】12阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][6]["RewardItem"][1]["Attr"] = "0 10" -- 12阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][6]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][6]["Good"] = 1
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][6]["Index"] = 6
	-- 14阶灵珠 - 0.08%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][7] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][7]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][7]["ItemChance"] = 8
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][7]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][7]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][7]["RewardItem"][1]["Id"] = 4200014 -- 【库】14阶灵珠[属性:8]【表格】14阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][7]["RewardItem"][1]["Attr"] = "0 10" -- 14阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][7]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][7]["Good"] = 1
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636][7]["Index"] = 7
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23636]["LogStep"] = "1[30]"
	
	-- 3阶至宝·十倍
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637]["ItemChanceSum"] = 10000
	-- 10阶灵珠 - 23.00%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][1]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][1]["ItemChance"] = 2300
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][1]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][1]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][1]["RewardItem"][1]["Id"] = 4200010 -- 【库】10阶灵珠[属性:8]【表格】10阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][1]["RewardItem"][1]["Attr"] = "0 10" -- 10阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][1]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][1]["Index"] = 1
	-- 冥界第5狱通行证 - 0.52%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][2] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][2]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][2]["ItemChance"] = 52
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][2]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][2]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][2]["RewardItem"][1]["Id"] = 3320190 -- 【库】冥界第5狱诏令[属性:9]【表格】冥界第5狱通行证
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][2]["RewardItem"][1]["Attr"] = "0 10" -- 冥界第5狱诏令*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][2]["Good"] = 1
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][2]["Index"] = 2
	-- 11阶灵珠 - 22.00%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][3] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][3]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][3]["ItemChance"] = 2200
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][3]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][3]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][3]["RewardItem"][1]["Id"] = 4200011 -- 【库】11阶灵珠[属性:8]【表格】11阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][3]["RewardItem"][1]["Attr"] = "0 10" -- 11阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][3]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][3]["Index"] = 3
	-- 12阶灵珠 - 16.00%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][4] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][4]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][4]["ItemChance"] = 1600
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][4]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][4]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][4]["RewardItem"][1]["Id"] = 4200012 -- 【库】12阶灵珠[属性:8]【表格】12阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][4]["RewardItem"][1]["Attr"] = "0 10" -- 12阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][4]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][4]["Index"] = 4
	-- 12阶灵珠+10阶灵珠 - 21.00%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][5] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][5]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][5]["ItemChance"] = 2100
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][5]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][5]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][5]["RewardItem"][1]["Id"] = 4200012 -- 【库】12阶灵珠[属性:8]【表格】12阶灵珠+10阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][5]["RewardItem"][1]["Attr"] = "0 10" -- 12阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][5]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][5]["RewardItem"][2] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][5]["RewardItem"][2]["Id"] = 4200010 -- 【库】10阶灵珠[属性:8]
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][5]["RewardItem"][2]["Attr"] = "0 10" -- 10阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][5]["RewardItem"][2]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][5]["Good"] = 1
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][5]["Index"] = 5
	-- 13阶灵珠 - 17.40%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][6] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][6]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][6]["ItemChance"] = 1740
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][6]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][6]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][6]["RewardItem"][1]["Id"] = 4200013 -- 【库】13阶灵珠[属性:8]【表格】13阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][6]["RewardItem"][1]["Attr"] = "0 10" -- 13阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][6]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][6]["Good"] = 1
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][6]["Index"] = 6
	-- 15阶灵珠 - 0.08%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][7] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][7]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][7]["ItemChance"] = 8
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][7]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][7]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][7]["RewardItem"][1]["Id"] = 4200015 -- 【库】15阶灵珠[属性:8]【表格】15阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][7]["RewardItem"][1]["Attr"] = "0 10" -- 15阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][7]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][7]["Good"] = 1
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637][7]["Index"] = 7
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23637]["LogStep"] = "1[31]"
	
	-- 4阶至宝·十倍
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638]["ItemChanceSum"] = 10000
	-- 11阶灵珠 - 23.00%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][1]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][1]["ItemChance"] = 2300
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][1]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][1]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][1]["RewardItem"][1]["Id"] = 4200011 -- 【库】11阶灵珠[属性:8]【表格】11阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][1]["RewardItem"][1]["Attr"] = "0 10" -- 11阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][1]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][1]["Index"] = 1
	-- 冥界第6狱通行证 - 0.52%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][2] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][2]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][2]["ItemChance"] = 52
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][2]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][2]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][2]["RewardItem"][1]["Id"] = 3320191 -- 【库】冥界第6狱诏令[属性:9]【表格】冥界第6狱通行证
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][2]["RewardItem"][1]["Attr"] = "0 10" -- 冥界第6狱诏令*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][2]["Good"] = 1
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][2]["Index"] = 2
	-- 12阶灵珠 - 22.00%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][3] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][3]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][3]["ItemChance"] = 2200
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][3]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][3]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][3]["RewardItem"][1]["Id"] = 4200012 -- 【库】12阶灵珠[属性:8]【表格】12阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][3]["RewardItem"][1]["Attr"] = "0 10" -- 12阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][3]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][3]["Index"] = 3
	-- 13阶灵珠 - 16.00%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][4] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][4]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][4]["ItemChance"] = 1600
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][4]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][4]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][4]["RewardItem"][1]["Id"] = 4200013 -- 【库】13阶灵珠[属性:8]【表格】13阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][4]["RewardItem"][1]["Attr"] = "0 10" -- 13阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][4]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][4]["Index"] = 4
	-- 13阶灵珠+11阶灵珠 - 21.00%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][5] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][5]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][5]["ItemChance"] = 2100
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][5]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][5]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][5]["RewardItem"][1]["Id"] = 4200013 -- 【库】13阶灵珠[属性:8]【表格】13阶灵珠+11阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][5]["RewardItem"][1]["Attr"] = "0 10" -- 13阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][5]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][5]["RewardItem"][2] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][5]["RewardItem"][2]["Id"] = 4200011 -- 【库】11阶灵珠[属性:8]
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][5]["RewardItem"][2]["Attr"] = "0 10" -- 11阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][5]["RewardItem"][2]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][5]["Good"] = 1
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][5]["Index"] = 5
	-- 14阶灵珠 - 17.40%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][6] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][6]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][6]["ItemChance"] = 1740
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][6]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][6]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][6]["RewardItem"][1]["Id"] = 4200014 -- 【库】14阶灵珠[属性:8]【表格】14阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][6]["RewardItem"][1]["Attr"] = "0 10" -- 14阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][6]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][6]["Good"] = 1
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][6]["Index"] = 6
	-- 16阶灵珠 - 0.08%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][7] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][7]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][7]["ItemChance"] = 8
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][7]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][7]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][7]["RewardItem"][1]["Id"] = 4200016 -- 【库】16阶灵珠[属性:8]【表格】16阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][7]["RewardItem"][1]["Attr"] = "0 10" -- 16阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][7]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][7]["Good"] = 1
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638][7]["Index"] = 7
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23638]["LogStep"] = "1[32]"
	
	-- 5阶至宝·十倍
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639]["ItemChanceSum"] = 10000
	-- 12阶灵珠 - 23.00%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][1]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][1]["ItemChance"] = 2300
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][1]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][1]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][1]["RewardItem"][1]["Id"] = 4200012 -- 【库】12阶灵珠[属性:8]【表格】12阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][1]["RewardItem"][1]["Attr"] = "0 10" -- 12阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][1]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][1]["Index"] = 1
	-- 冥界第7狱通行证 - 0.52%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][2] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][2]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][2]["ItemChance"] = 52
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][2]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][2]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][2]["RewardItem"][1]["Id"] = 3320192 -- 【库】冥界第7狱诏令[属性:9]【表格】冥界第7狱通行证
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][2]["RewardItem"][1]["Attr"] = "0 10" -- 冥界第7狱诏令*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][2]["Good"] = 1
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][2]["Index"] = 2
	-- 13阶灵珠 - 22.00%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][3] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][3]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][3]["ItemChance"] = 2200
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][3]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][3]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][3]["RewardItem"][1]["Id"] = 4200013 -- 【库】13阶灵珠[属性:8]【表格】13阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][3]["RewardItem"][1]["Attr"] = "0 10" -- 13阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][3]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][3]["Index"] = 3
	-- 14阶灵珠 - 16.00%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][4] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][4]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][4]["ItemChance"] = 1600
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][4]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][4]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][4]["RewardItem"][1]["Id"] = 4200014 -- 【库】14阶灵珠[属性:8]【表格】14阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][4]["RewardItem"][1]["Attr"] = "0 10" -- 14阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][4]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][4]["Index"] = 4
	-- 14阶灵珠+12阶灵珠 - 21.00%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][5] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][5]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][5]["ItemChance"] = 2100
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][5]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][5]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][5]["RewardItem"][1]["Id"] = 4200014 -- 【库】14阶灵珠[属性:8]【表格】14阶灵珠+12阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][5]["RewardItem"][1]["Attr"] = "0 10" -- 14阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][5]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][5]["RewardItem"][2] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][5]["RewardItem"][2]["Id"] = 4200012 -- 【库】12阶灵珠[属性:8]
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][5]["RewardItem"][2]["Attr"] = "0 10" -- 12阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][5]["RewardItem"][2]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][5]["Good"] = 1
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][5]["Index"] = 5
	-- 15阶灵珠 - 17.40%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][6] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][6]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][6]["ItemChance"] = 1740
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][6]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][6]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][6]["RewardItem"][1]["Id"] = 4200015 -- 【库】15阶灵珠[属性:8]【表格】15阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][6]["RewardItem"][1]["Attr"] = "0 10" -- 15阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][6]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][6]["Good"] = 1
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][6]["Index"] = 6
	-- 17阶灵珠 - 0.08%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][7] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][7]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][7]["ItemChance"] = 8
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][7]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][7]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][7]["RewardItem"][1]["Id"] = 4200017 -- 【库】17阶灵珠[属性:8]【表格】17阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][7]["RewardItem"][1]["Attr"] = "0 10" -- 17阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][7]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][7]["Good"] = 1
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639][7]["Index"] = 7
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23639]["LogStep"] = "1[33]"
	
	-- 6阶至宝·10倍
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640]["ItemChanceSum"] = 10000
	-- 13阶灵珠 - 23.00%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][1]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][1]["ItemChance"] = 2300
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][1]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][1]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][1]["RewardItem"][1]["Id"] = 4200013 -- 【库】13阶灵珠[属性:8]【表格】13阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][1]["RewardItem"][1]["Attr"] = "0 10" -- 13阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][1]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][1]["Index"] = 1
	-- 冥界第8狱通行证 - 0.52%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][2] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][2]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][2]["ItemChance"] = 52
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][2]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][2]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][2]["RewardItem"][1]["Id"] = 3320193 -- 【库】冥界第8狱诏令[属性:9]【表格】冥界第8狱通行证
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][2]["RewardItem"][1]["Attr"] = "0 10" -- 冥界第8狱诏令*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][2]["Good"] = 1
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][2]["Index"] = 2
	-- 14阶灵珠 - 22.00%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][3] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][3]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][3]["ItemChance"] = 2200
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][3]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][3]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][3]["RewardItem"][1]["Id"] = 4200014 -- 【库】14阶灵珠[属性:8]【表格】14阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][3]["RewardItem"][1]["Attr"] = "0 10" -- 14阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][3]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][3]["Index"] = 3
	-- 15阶灵珠 - 16.00%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][4] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][4]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][4]["ItemChance"] = 1600
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][4]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][4]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][4]["RewardItem"][1]["Id"] = 4200015 -- 【库】15阶灵珠[属性:8]【表格】15阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][4]["RewardItem"][1]["Attr"] = "0 10" -- 15阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][4]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][4]["Index"] = 4
	-- 15阶灵珠+13阶灵珠 - 21.00%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][5] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][5]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][5]["ItemChance"] = 2100
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][5]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][5]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][5]["RewardItem"][1]["Id"] = 4200015 -- 【库】15阶灵珠[属性:8]【表格】15阶灵珠+13阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][5]["RewardItem"][1]["Attr"] = "0 10" -- 15阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][5]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][5]["RewardItem"][2] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][5]["RewardItem"][2]["Id"] = 4200013 -- 【库】13阶灵珠[属性:8]
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][5]["RewardItem"][2]["Attr"] = "0 10" -- 13阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][5]["RewardItem"][2]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][5]["Good"] = 1
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][5]["Index"] = 5
	-- 16阶灵珠 - 17.40%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][6] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][6]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][6]["ItemChance"] = 1740
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][6]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][6]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][6]["RewardItem"][1]["Id"] = 4200016 -- 【库】16阶灵珠[属性:8]【表格】16阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][6]["RewardItem"][1]["Attr"] = "0 10" -- 16阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][6]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][6]["Good"] = 1
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][6]["Index"] = 6
	-- 18阶灵珠 - 0.08%
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][7] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][7]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][7]["ItemChance"] = 8
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][7]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][7]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][7]["RewardItem"][1]["Id"] = 4200018 -- 【库】18阶灵珠[属性:8]【表格】18阶灵珠
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][7]["RewardItem"][1]["Attr"] = "0 10" -- 18阶灵珠*10
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][7]["RewardItem"][1]["PreciousType"] = 305
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][7]["Good"] = 1
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640][7]["Index"] = 7
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["TenMulOpenBox"][23640]["LogStep"] = "1[34]"
	
	-- 诏令
	tBossForSuoYaoPill_Reward["Token"] = {}
	-- 第1狱
	tBossForSuoYaoPill_Reward["Token"][3320186] = {}
	tBossForSuoYaoPill_Reward["Token"][3320186]["ItemChanceSum"] = 10000
	-- 一元灯
	tBossForSuoYaoPill_Reward["Token"][3320186][1] = {} 
	tBossForSuoYaoPill_Reward["Token"][3320186][1]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["Token"][3320186][1]["ItemChance"] = 7863
	tBossForSuoYaoPill_Reward["Token"][3320186][1]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["Token"][3320186][1]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["Token"][3320186][1]["RewardItem"][1]["Id"] = 2168665
	tBossForSuoYaoPill_Reward["Token"][3320186][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	-- 两仪灯
	tBossForSuoYaoPill_Reward["Token"][3320186][2] = {} 
	tBossForSuoYaoPill_Reward["Token"][3320186][2]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["Token"][3320186][2]["ItemChance"] = 2137
	tBossForSuoYaoPill_Reward["Token"][3320186][2]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["Token"][3320186][2]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["Token"][3320186][2]["RewardItem"][1]["Id"] = 2168675
	tBossForSuoYaoPill_Reward["Token"][3320186][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tBossForSuoYaoPill_Reward["Token"][3320186]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["Token"][3320186]["LogStep"] = "1[38]"
	-- 第2狱
	tBossForSuoYaoPill_Reward["Token"][3320187] = {}
	tBossForSuoYaoPill_Reward["Token"][3320187]["ItemChanceSum"] = 10000
	-- 一元灯
	tBossForSuoYaoPill_Reward["Token"][3320187][1] = {} 
	tBossForSuoYaoPill_Reward["Token"][3320187][1]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["Token"][3320187][1]["ItemChance"] = 4475
	tBossForSuoYaoPill_Reward["Token"][3320187][1]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["Token"][3320187][1]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["Token"][3320187][1]["RewardItem"][1]["Id"] = 2168665
	tBossForSuoYaoPill_Reward["Token"][3320187][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	-- 两仪灯
	tBossForSuoYaoPill_Reward["Token"][3320187][2] = {} 
	tBossForSuoYaoPill_Reward["Token"][3320187][2]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["Token"][3320187][2]["ItemChance"] = 4525
	tBossForSuoYaoPill_Reward["Token"][3320187][2]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["Token"][3320187][2]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["Token"][3320187][2]["RewardItem"][1]["Id"] = 2168675
	tBossForSuoYaoPill_Reward["Token"][3320187][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	-- 三才灯
	tBossForSuoYaoPill_Reward["Token"][3320187][3] = {} 
	tBossForSuoYaoPill_Reward["Token"][3320187][3]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["Token"][3320187][3]["ItemChance"] = 1000
	tBossForSuoYaoPill_Reward["Token"][3320187][3]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["Token"][3320187][3]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["Token"][3320187][3]["RewardItem"][1]["Id"] = 2168685
	tBossForSuoYaoPill_Reward["Token"][3320187][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tBossForSuoYaoPill_Reward["Token"][3320187]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["Token"][3320187]["LogStep"] = "1[39]"
	-- 第3狱
	tBossForSuoYaoPill_Reward["Token"][3320188] = {}
	tBossForSuoYaoPill_Reward["Token"][3320188]["ItemChanceSum"] = 10000
	-- 两仪灯
	tBossForSuoYaoPill_Reward["Token"][3320188][1] = {} 
	tBossForSuoYaoPill_Reward["Token"][3320188][1]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["Token"][3320188][1]["ItemChance"] = 6160
	tBossForSuoYaoPill_Reward["Token"][3320188][1]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["Token"][3320188][1]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["Token"][3320188][1]["RewardItem"][1]["Id"] = 2168675
	tBossForSuoYaoPill_Reward["Token"][3320188][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	-- 三才灯
	tBossForSuoYaoPill_Reward["Token"][3320188][2] = {} 
	tBossForSuoYaoPill_Reward["Token"][3320188][2]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["Token"][3320188][2]["ItemChance"] = 3340
	tBossForSuoYaoPill_Reward["Token"][3320188][2]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["Token"][3320188][2]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["Token"][3320188][2]["RewardItem"][1]["Id"] = 2168685
	tBossForSuoYaoPill_Reward["Token"][3320188][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	-- 四象灯
	tBossForSuoYaoPill_Reward["Token"][3320188][3] = {} 
	tBossForSuoYaoPill_Reward["Token"][3320188][3]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["Token"][3320188][3]["ItemChance"] = 500
	tBossForSuoYaoPill_Reward["Token"][3320188][3]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["Token"][3320188][3]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["Token"][3320188][3]["RewardItem"][1]["Id"] = 2168695
	tBossForSuoYaoPill_Reward["Token"][3320188][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tBossForSuoYaoPill_Reward["Token"][3320188]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["Token"][3320188]["LogStep"] = "1[40]"
	-- 第4狱
	tBossForSuoYaoPill_Reward["Token"][3320189] = {}
	tBossForSuoYaoPill_Reward["Token"][3320189]["ItemChanceSum"] = 10000
	-- 三才灯
	tBossForSuoYaoPill_Reward["Token"][3320189][1] = {} 
	tBossForSuoYaoPill_Reward["Token"][3320189][1]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["Token"][3320189][1]["ItemChance"] = 6060
	tBossForSuoYaoPill_Reward["Token"][3320189][1]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["Token"][3320189][1]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["Token"][3320189][1]["RewardItem"][1]["Id"] = 2168685
	tBossForSuoYaoPill_Reward["Token"][3320189][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	-- 四象灯
	tBossForSuoYaoPill_Reward["Token"][3320189][2] = {} 
	tBossForSuoYaoPill_Reward["Token"][3320189][2]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["Token"][3320189][2]["ItemChance"] = 3640
	tBossForSuoYaoPill_Reward["Token"][3320189][2]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["Token"][3320189][2]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["Token"][3320189][2]["RewardItem"][1]["Id"] = 2168695
	tBossForSuoYaoPill_Reward["Token"][3320189][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	-- 五行灵灯
	tBossForSuoYaoPill_Reward["Token"][3320189][3] = {} 
	tBossForSuoYaoPill_Reward["Token"][3320189][3]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["Token"][3320189][3]["ItemChance"] = 300
	tBossForSuoYaoPill_Reward["Token"][3320189][3]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["Token"][3320189][3]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["Token"][3320189][3]["RewardItem"][1]["Id"] = 2168705
	tBossForSuoYaoPill_Reward["Token"][3320189][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tBossForSuoYaoPill_Reward["Token"][3320189]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["Token"][3320189]["LogStep"] = "1[41]"
	-- 第5狱
	tBossForSuoYaoPill_Reward["Token"][3320190] = {}
	tBossForSuoYaoPill_Reward["Token"][3320190]["ItemChanceSum"] = 10000
	-- 三才灯
	tBossForSuoYaoPill_Reward["Token"][3320190][1] = {} 
	tBossForSuoYaoPill_Reward["Token"][3320190][1]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["Token"][3320190][1]["ItemChance"] = 1520
	tBossForSuoYaoPill_Reward["Token"][3320190][1]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["Token"][3320190][1]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["Token"][3320190][1]["RewardItem"][1]["Id"] = 2168685
	tBossForSuoYaoPill_Reward["Token"][3320190][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	-- 四象灯
	tBossForSuoYaoPill_Reward["Token"][3320190][2] = {} 
	tBossForSuoYaoPill_Reward["Token"][3320190][2]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["Token"][3320190][2]["ItemChance"] = 5080
	tBossForSuoYaoPill_Reward["Token"][3320190][2]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["Token"][3320190][2]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["Token"][3320190][2]["RewardItem"][1]["Id"] = 2168695
	tBossForSuoYaoPill_Reward["Token"][3320190][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	-- 五行灵灯
	tBossForSuoYaoPill_Reward["Token"][3320190][3] = {} 
	tBossForSuoYaoPill_Reward["Token"][3320190][3]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["Token"][3320190][3]["ItemChance"] = 3200
	tBossForSuoYaoPill_Reward["Token"][3320190][3]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["Token"][3320190][3]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["Token"][3320190][3]["RewardItem"][1]["Id"] = 2168705
	tBossForSuoYaoPill_Reward["Token"][3320190][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	-- 六合冥灯
	tBossForSuoYaoPill_Reward["Token"][3320190][4] = {} 
	tBossForSuoYaoPill_Reward["Token"][3320190][4]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["Token"][3320190][4]["ItemChance"] = 200
	tBossForSuoYaoPill_Reward["Token"][3320190][4]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["Token"][3320190][4]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["Token"][3320190][4]["RewardItem"][1]["Id"] = 2168715
	tBossForSuoYaoPill_Reward["Token"][3320190][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tBossForSuoYaoPill_Reward["Token"][3320190]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["Token"][3320190]["LogStep"] = "1[42]"
	-- 第6狱
	tBossForSuoYaoPill_Reward["Token"][3320191] = {}
	tBossForSuoYaoPill_Reward["Token"][3320191]["ItemChanceSum"] = 10000
	-- 四象灯
	tBossForSuoYaoPill_Reward["Token"][3320191][1] = {} 
	tBossForSuoYaoPill_Reward["Token"][3320191][1]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["Token"][3320191][1]["ItemChance"] = 2712
	tBossForSuoYaoPill_Reward["Token"][3320191][1]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["Token"][3320191][1]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["Token"][3320191][1]["RewardItem"][1]["Id"] = 2168695
	tBossForSuoYaoPill_Reward["Token"][3320191][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	-- 五行灵灯
	tBossForSuoYaoPill_Reward["Token"][3320191][2] = {} 
	tBossForSuoYaoPill_Reward["Token"][3320191][2]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["Token"][3320191][2]["ItemChance"] = 4188
	tBossForSuoYaoPill_Reward["Token"][3320191][2]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["Token"][3320191][2]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["Token"][3320191][2]["RewardItem"][1]["Id"] = 2168705
	tBossForSuoYaoPill_Reward["Token"][3320191][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	-- 六合冥灯
	tBossForSuoYaoPill_Reward["Token"][3320191][3] = {} 
	tBossForSuoYaoPill_Reward["Token"][3320191][3]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["Token"][3320191][3]["ItemChance"] = 2900
	tBossForSuoYaoPill_Reward["Token"][3320191][3]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["Token"][3320191][3]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["Token"][3320191][3]["RewardItem"][1]["Id"] = 2168715
	tBossForSuoYaoPill_Reward["Token"][3320191][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	-- 七星琉璃灯
	tBossForSuoYaoPill_Reward["Token"][3320191][4] = {} 
	tBossForSuoYaoPill_Reward["Token"][3320191][4]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["Token"][3320191][4]["ItemChance"] = 200
	tBossForSuoYaoPill_Reward["Token"][3320191][4]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["Token"][3320191][4]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["Token"][3320191][4]["RewardItem"][1]["Id"] = 2168725
	tBossForSuoYaoPill_Reward["Token"][3320191][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tBossForSuoYaoPill_Reward["Token"][3320191]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["Token"][3320191]["LogStep"] = "1[43]"
	-- 第7狱
	tBossForSuoYaoPill_Reward["Token"][3320192] = {}
	tBossForSuoYaoPill_Reward["Token"][3320192]["ItemChanceSum"] = 10000
	-- 五行灵灯
	tBossForSuoYaoPill_Reward["Token"][3320192][1] = {} 
	tBossForSuoYaoPill_Reward["Token"][3320192][1]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["Token"][3320192][1]["ItemChance"] = 2255
	tBossForSuoYaoPill_Reward["Token"][3320192][1]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["Token"][3320192][1]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["Token"][3320192][1]["RewardItem"][1]["Id"] = 2168705
	tBossForSuoYaoPill_Reward["Token"][3320192][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	-- 六合冥灯
	tBossForSuoYaoPill_Reward["Token"][3320192][2] = {} 
	tBossForSuoYaoPill_Reward["Token"][3320192][2]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["Token"][3320192][2]["ItemChance"] = 5045
	tBossForSuoYaoPill_Reward["Token"][3320192][2]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["Token"][3320192][2]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["Token"][3320192][2]["RewardItem"][1]["Id"] = 2168715
	tBossForSuoYaoPill_Reward["Token"][3320192][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	-- 七星琉璃灯
	tBossForSuoYaoPill_Reward["Token"][3320192][3] = {} 
	tBossForSuoYaoPill_Reward["Token"][3320192][3]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["Token"][3320192][3]["ItemChance"] = 2600
	tBossForSuoYaoPill_Reward["Token"][3320192][3]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["Token"][3320192][3]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["Token"][3320192][3]["RewardItem"][1]["Id"] = 2168725
	tBossForSuoYaoPill_Reward["Token"][3320192][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	-- 八卦乾坤灯
	tBossForSuoYaoPill_Reward["Token"][3320192][4] = {} 
	tBossForSuoYaoPill_Reward["Token"][3320192][4]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["Token"][3320192][4]["ItemChance"] = 100
	tBossForSuoYaoPill_Reward["Token"][3320192][4]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["Token"][3320192][4]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["Token"][3320192][4]["RewardItem"][1]["Id"] = 2168735
	tBossForSuoYaoPill_Reward["Token"][3320192][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tBossForSuoYaoPill_Reward["Token"][3320192]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["Token"][3320192]["LogStep"] = "1[44]"
	-- 第8狱
	tBossForSuoYaoPill_Reward["Token"][3320193] = {}
	tBossForSuoYaoPill_Reward["Token"][3320193]["ItemChanceSum"] = 10000
	-- 六合冥灯
	tBossForSuoYaoPill_Reward["Token"][3320193][1] = {} 
	tBossForSuoYaoPill_Reward["Token"][3320193][1]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["Token"][3320193][1]["ItemChance"] = 3755
	tBossForSuoYaoPill_Reward["Token"][3320193][1]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["Token"][3320193][1]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["Token"][3320193][1]["RewardItem"][1]["Id"] = 2168715
	tBossForSuoYaoPill_Reward["Token"][3320193][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	-- 七星琉璃灯
	tBossForSuoYaoPill_Reward["Token"][3320193][2] = {} 
	tBossForSuoYaoPill_Reward["Token"][3320193][2]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["Token"][3320193][2]["ItemChance"] = 3745
	tBossForSuoYaoPill_Reward["Token"][3320193][2]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["Token"][3320193][2]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["Token"][3320193][2]["RewardItem"][1]["Id"] = 2168725
	tBossForSuoYaoPill_Reward["Token"][3320193][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	-- 八卦乾坤灯
	tBossForSuoYaoPill_Reward["Token"][3320193][3] = {} 
	tBossForSuoYaoPill_Reward["Token"][3320193][3]["RandomItemChanceType"] = 2
	tBossForSuoYaoPill_Reward["Token"][3320193][3]["ItemChance"] = 2500
	tBossForSuoYaoPill_Reward["Token"][3320193][3]["RewardItem"] = {}
	tBossForSuoYaoPill_Reward["Token"][3320193][3]["RewardItem"][1] = {}
	tBossForSuoYaoPill_Reward["Token"][3320193][3]["RewardItem"][1]["Id"] = 2168735
	tBossForSuoYaoPill_Reward["Token"][3320193][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tBossForSuoYaoPill_Reward["Token"][3320193]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["Token"][3320193]["LogStep"] = "1[45]"
	
	
	--------------------------工具生成------------------------------------------
	-- 上交佩饰
	tBossForSuoYaoPill_Reward["HandInLamp"] = {}
	-- ===WonderLamp,2168665
	-- ===索引: 2168665
	-- ===删除: 2168665,1
	-- ===EMoneyLog: 10000,0326
	tBossForSuoYaoPill_Reward["HandInLamp"][2168665] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168665]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["HandInLamp"][2168665]["DeleteItem"] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168665]["DeleteItem"][1] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168665]["DeleteItem"][1]["Id"] = 2168665 -- 【库】一元灯[属性:9]
	tBossForSuoYaoPill_Reward["HandInLamp"][2168665]["RewardEMoney"] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168665]["RewardEMoney"]["Value"] = 1380 -- 天石
	tBossForSuoYaoPill_Reward["HandInLamp"][2168665]["EmoneyLog"] = "10000	326	-1380	-1380	1	"
	tBossForSuoYaoPill_Reward["HandInLamp"][2168665]["RewardEffect"] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168665]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBossForSuoYaoPill_Reward["HandInLamp"][2168665]["RewardEffect"]["Effect"] = "angelwing"


	-- ===PolarLamp,2168675
	-- ===索引: 2168675
	-- ===删除: 2168675,1
	-- ===EMoneyLog: 10000,0327
	tBossForSuoYaoPill_Reward["HandInLamp"][2168675] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168675]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["HandInLamp"][2168675]["DeleteItem"] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168675]["DeleteItem"][1] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168675]["DeleteItem"][1]["Id"] = 2168675 -- 【库】两仪灯[属性:9]
	tBossForSuoYaoPill_Reward["HandInLamp"][2168675]["RewardEMoney"] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168675]["RewardEMoney"]["Value"] = 6900 -- 天石
	tBossForSuoYaoPill_Reward["HandInLamp"][2168675]["EmoneyLog"] = "10000	327	-6900	-6900	1	"
	tBossForSuoYaoPill_Reward["HandInLamp"][2168675]["RewardEffect"] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168675]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBossForSuoYaoPill_Reward["HandInLamp"][2168675]["RewardEffect"]["Effect"] = "angelwing"


	-- ===TalentLamp,2168685
	-- ===索引: 2168685
	-- ===删除: 2168685,1
	-- ===EMoneyLog: 10000,0328
	tBossForSuoYaoPill_Reward["HandInLamp"][2168685] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168685]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["HandInLamp"][2168685]["DeleteItem"] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168685]["DeleteItem"][1] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168685]["DeleteItem"][1]["Id"] = 2168685 -- 【库】三才灯[属性:9]
	tBossForSuoYaoPill_Reward["HandInLamp"][2168685]["RewardEMoney"] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168685]["RewardEMoney"]["Value"] = 13800 -- 天石
	tBossForSuoYaoPill_Reward["HandInLamp"][2168685]["EmoneyLog"] = "10000	328	-13800	-13800	1	"
	tBossForSuoYaoPill_Reward["HandInLamp"][2168685]["RewardEffect"] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168685]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBossForSuoYaoPill_Reward["HandInLamp"][2168685]["RewardEffect"]["Effect"] = "angelwing"


	-- ===OrientLamp,2168695
	-- ===索引: 2168695
	-- ===删除: 2168695,1
	-- ===EMoneyLog: 10000,0329
	tBossForSuoYaoPill_Reward["HandInLamp"][2168695] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168695]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["HandInLamp"][2168695]["DeleteItem"] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168695]["DeleteItem"][1] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168695]["DeleteItem"][1]["Id"] = 2168695 -- 【库】四象灯[属性:9]
	tBossForSuoYaoPill_Reward["HandInLamp"][2168695]["RewardEMoney"] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168695]["RewardEMoney"]["Value"] = 27600 -- 天石
	tBossForSuoYaoPill_Reward["HandInLamp"][2168695]["EmoneyLog"] = "10000	329	-27600	-27600	1	"
	tBossForSuoYaoPill_Reward["HandInLamp"][2168695]["RewardEffect"] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168695]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBossForSuoYaoPill_Reward["HandInLamp"][2168695]["RewardEffect"]["Effect"] = "angelwing"


	-- ===ElementLamp,2168705
	-- ===索引: 2168705
	-- ===删除: 2168705,1
	-- ===EMoneyLog: 10000,0330
	tBossForSuoYaoPill_Reward["HandInLamp"][2168705] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168705]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["HandInLamp"][2168705]["DeleteItem"] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168705]["DeleteItem"][1] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168705]["DeleteItem"][1]["Id"] = 2168705 -- 【库】五行灵灯[属性:9]
	tBossForSuoYaoPill_Reward["HandInLamp"][2168705]["RewardEMoney"] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168705]["RewardEMoney"]["Value"] = 69000 -- 天石
	tBossForSuoYaoPill_Reward["HandInLamp"][2168705]["EmoneyLog"] = "10000	330	-69000	-69000	1	"
	tBossForSuoYaoPill_Reward["HandInLamp"][2168705]["RewardEffect"] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168705]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBossForSuoYaoPill_Reward["HandInLamp"][2168705]["RewardEffect"]["Effect"] = "angelwing"


	-- ===BalanceLamp,2168715
	-- ===索引: 2168715
	-- ===删除: 2168715,1
	-- ===EMoneyLog: 10000,0331
	tBossForSuoYaoPill_Reward["HandInLamp"][2168715] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168715]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["HandInLamp"][2168715]["DeleteItem"] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168715]["DeleteItem"][1] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168715]["DeleteItem"][1]["Id"] = 2168715 -- 【库】六合冥灯[属性:9]
	tBossForSuoYaoPill_Reward["HandInLamp"][2168715]["RewardEMoney"] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168715]["RewardEMoney"]["Value"] = 138000 -- 天石
	tBossForSuoYaoPill_Reward["HandInLamp"][2168715]["EmoneyLog"] = "10000	331	-138000	-138000	1	"
	tBossForSuoYaoPill_Reward["HandInLamp"][2168715]["RewardEffect"] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168715]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBossForSuoYaoPill_Reward["HandInLamp"][2168715]["RewardEffect"]["Effect"] = "angelwing"


	-- ===StarLamp,2168725
	-- ===索引: 2168725
	-- ===删除: 2168725,1
	-- ===EMoneyLog: 10000,0332
	tBossForSuoYaoPill_Reward["HandInLamp"][2168725] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168725]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["HandInLamp"][2168725]["DeleteItem"] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168725]["DeleteItem"][1] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168725]["DeleteItem"][1]["Id"] = 2168725 -- 【库】七星琉璃灯[属性:9]
	tBossForSuoYaoPill_Reward["HandInLamp"][2168725]["RewardEMoney"] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168725]["RewardEMoney"]["Value"] = 276000 -- 天石
	tBossForSuoYaoPill_Reward["HandInLamp"][2168725]["EmoneyLog"] = "10000	332	-276000	-276000	1	"
	tBossForSuoYaoPill_Reward["HandInLamp"][2168725]["RewardEffect"] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168725]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBossForSuoYaoPill_Reward["HandInLamp"][2168725]["RewardEffect"]["Effect"] = "angelwing"


	-- ===UniversalLamp,2168735
	-- ===索引: 2168735
	-- ===删除: 2168735,1
	-- ===EMoneyLog: 10000,0333
	tBossForSuoYaoPill_Reward["HandInLamp"][2168735] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168735]["LogId"] = 12001247
	tBossForSuoYaoPill_Reward["HandInLamp"][2168735]["DeleteItem"] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168735]["DeleteItem"][1] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168735]["DeleteItem"][1]["Id"] = 2168735 -- 【库】八卦乾坤灯[属性:9]
	tBossForSuoYaoPill_Reward["HandInLamp"][2168735]["RewardEMoney"] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168735]["RewardEMoney"]["Value"] = 690000 -- 天石
	tBossForSuoYaoPill_Reward["HandInLamp"][2168735]["EmoneyLog"] = "10000	333	-690000	-690000	1	"
	tBossForSuoYaoPill_Reward["HandInLamp"][2168735]["RewardEffect"] = {}
	tBossForSuoYaoPill_Reward["HandInLamp"][2168735]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBossForSuoYaoPill_Reward["HandInLamp"][2168735]["RewardEffect"]["Effect"] = "angelwing"
	
	
	
----------------------------------------逻辑部分-------------------------------------
-- 打开商店
function BossForSuoYaoPill_Shop(nNpcId)
	-- 活动过期
	if not Sys_ChkFullTime(tActivityTime["BossForSuoYaoPill"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	-- 打开天石商店
	User_OpenDialog(0,nNpcId)
	return true
end

-- 击杀BOSS
function BossForSuoYaoPill_KillBoss(nMonsterId)
	local nMapId = Get_UserMapId()
	Monster_DelMonster(nMapId,nMonsterId)
	Monster_Death(nMonsterId,nMapId)
	
	-- 刷新宝箱
	local nEvent = tBossForSuoYaoPill_Stc[1]["EventType"]
	local nType = tBossForSuoYaoPill_Stc[1]["DataType"]
	local nNpdId = Get_UserStatisticValue(nEvent,nType)
	
	BossForSuoYaoPill_BrushBox(nNpdId)
	return true
end

-- 动态刷新宝箱
function BossForSuoYaoPill_BrushBox(nNpcId)
	local sName = tBossForSuoYaoPill_Text["NpcName"][nNpcId]
	local nLookface = tBossForSuoYaoPill_Cont["DynaNpc"][nNpcId]["Lookface"]
	local nMapId = Get_UserMapId()
	local nPosX = tBossForSuoYaoPill_Cont["DynaNpc"]["PosX"]
	local nPosY = tBossForSuoYaoPill_Cont["DynaNpc"]["PosY"]
	local nTask0 = tBossForSuoYaoPill_Cont["DynaNpc"][nNpcId]["Task0"]
	
	Npc_CreateDynaNpc(sName,2,0,nLookface,0,0,nMapId,nPosX,nPosY,0,0,0,nTask0)
	return true
end	

-- 龙冢4-7层·打开前判断10倍灵珠·先取消
function BossForSuoYaoPill_Normal_BeforeOpenBox(nNpcId)
	local nFloor = tBossForSuoYaoPill_Cont["Floor"][nNpcId]
	local nItemId = tBossForSuoYaoPill_Cont["ItemId"][nNpcId]
	local nItemNum = tBossForSuoYaoPill_Cont["NeedItemNum"][nFloor]
	local sItemName = Get_ItemtypeName(nItemId)
	
	-- 判断10倍灵珠
	-- if Item_ChkMulItem(nItemId,nItemId,nItemNum*10) then
		-- -- 显示宝箱对白
		-- local sText111 = string.format(tBossForSuoYaoPill_Text["Box"]["Text111"],nFloor)
		-- local sText112 = string.format(tBossForSuoYaoPill_Text["Box"]["Text112"],nFloor)
		-- -- 保底奖励
		-- local sText114 = string.format(tBossForSuoYaoPill_Text["Box"]["Text114"],tBossForSuoYaoPill_Text["Box"]["Reward"][nNpcId][1])
		-- sText114 = Sys_CenterAline(sText114,30)
		-- -- 最高奖励
		-- local nLen = #tBossForSuoYaoPill_Text["Box"]["Reward"][nNpcId]
		-- local sText115 = string.format(tBossForSuoYaoPill_Text["Box"]["Text115"],tBossForSuoYaoPill_Text["Box"]["Reward"][nNpcId][nLen])
		-- sText115 = Sys_CenterAline(sText115,30)
		-- -- 特殊奖励
		-- local sText116 = ""
		-- if tBossForSuoYaoPill_Text["Box"]["Reward"][nNpcId]["Special"] ~= nil then
			-- sText116 = string.format(tBossForSuoYaoPill_Text["Box"]["Text116"],tBossForSuoYaoPill_Text["Box"]["Reward"][nNpcId]["Special"])
			-- sText116 = Sys_CenterAline(sText116,30)
		-- end
		
		-- local sOption111 = string.format(tBossForSuoYaoPill_Text["Box"]["Option111"],nItemNum,sItemName)
		-- local sOption112 = string.format(tBossForSuoYaoPill_Text["Box"]["Option112"],nItemNum*10,sItemName)
		
		-- Sys_DialogText(sText111)
		-- Sys_DialogText(sText112)
		-- Sys_DialogText(tBossForSuoYaoPill_Text["Box"]["Text113"])
		-- Sys_DialogText(sText114)
		-- Sys_DialogText(sText115)
		-- Sys_DialogText(sText116)
		-- Sys_DialogText(tBossForSuoYaoPill_Text["Box"]["Text117"])
		-- Sys_DialogOption(sOption111,"</F>BossForSuoYaoPill_Normal_OpenBoxForOne</N>" .. nNpcId)
		-- Sys_DialogOption(sOption112,"</F>BossForSuoYaoPill_Normal_OpenBoxForTenConfirm</N>" .. nNpcId)
		-- Sys_DialogFace(nNpcId)
		-- Sys_DialogEnd()
		-- return true
	-- else
		BossForSuoYaoPill_Normal_OpenBoxForOne(nNpcId)
		return true
	-- end
end

-- 龙冢1-7层·打开1次宝箱
function BossForSuoYaoPill_Normal_OpenBoxForOne(nNpcId)
	local nFloor = tBossForSuoYaoPill_Cont["Floor"][nNpcId]
	local nItemId = tBossForSuoYaoPill_Cont["ItemId"][nNpcId]
	local sItemName = Get_ItemtypeName(nItemId)
	local nItemNum = tBossForSuoYaoPill_Cont["NeedItemNum"][nFloor]
	
	-- 灵珠不足
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["NoEnoughItemToOpen"],sItemName,nItemNum))
		return false
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tBossForSuoYaoPill_Reward["OpenBox"],nNpcId)
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["FullBag2"],nSpace))
		return false
	end
	
	-- -- 显示宝箱对白
	-- local sText111 = string.format(tBossForSuoYaoPill_Text["Box"]["Text111"],nFloor)
	-- local sText112 = string.format(tBossForSuoYaoPill_Text["Box"]["Text112"],nFloor)
	-- -- 保底奖励
	-- local sText114 = string.format(tBossForSuoYaoPill_Text["Box"]["Text114"],tBossForSuoYaoPill_Text["Box"]["Reward"][nNpcId][1])
	-- sText114 = Sys_CenterAline(sText114,30)
	-- -- 最高奖励
	-- local nLen = #tBossForSuoYaoPill_Text["Box"]["Reward"][nNpcId]
	-- local sText115 = string.format(tBossForSuoYaoPill_Text["Box"]["Text115"],tBossForSuoYaoPill_Text["Box"]["Reward"][nNpcId][nLen])
	-- sText115 = Sys_CenterAline(sText115,30)
	-- -- 特殊奖励
	-- local sText116 = ""
	-- if tBossForSuoYaoPill_Text["Box"]["Reward"][nNpcId]["Special"] ~= nil then
		-- sText116 = string.format(tBossForSuoYaoPill_Text["Box"]["Text116"],tBossForSuoYaoPill_Text["Box"]["Reward"][nNpcId]["Special"])
		-- sText116 = Sys_CenterAline(sText116,30)
	-- end
		
	-- Sys_DialogText(sText111)
	-- Sys_DialogText(sText112)
	-- Sys_DialogText(tBossForSuoYaoPill_Text["Box"]["Text113"])
	-- Sys_DialogText(sText114)
	-- Sys_DialogText(sText115)
	-- Sys_DialogText(sText116)
	-- Sys_DialogText(tBossForSuoYaoPill_Text["Box"]["Text117"])
	-- Sys_DialogFace(nNpcId)
	-- Sys_DialogEnd()
	
	-- 修改为点击宝箱直接开始读条
	local nUserId = Get_UserId()
	local nSecs = tBossForSuoYaoPill_Cont["Explore"]["Secs"]
	local sContent = tBossForSuoYaoPill_Text["ExploreContent"]
	local nActionId = tBossForSuoYaoPill_Cont["Explore"]["ActionId"]
	local sFunc = string.format("BossForSuoYaoPill_Normal_ExploreSuccessForOne</N>%d",nNpcId)
	User_SetExplore(nSecs,sContent,nActionId,sFunc,"NULL",nUserId)
	return true
end

-- 龙冢1-7层·打开1次读条成功
function BossForSuoYaoPill_Normal_ExploreSuccessForOne(nNpcId,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nFloor = tBossForSuoYaoPill_Cont["Floor"][nNpcId]
	local nItemId = tBossForSuoYaoPill_Cont["ItemId"][nNpcId]
	local sItemName = Get_ItemtypeName(nItemId)
	local nItemNum = tBossForSuoYaoPill_Cont["NeedItemNum"][nFloor]
	
	-- 灵珠不足
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum,1,0,nNowUserId) then
		Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["NoEnoughItemToOpen"],sItemName,nItemNum),"NULL","NULL",nNowUserId)
		return false
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tBossForSuoYaoPill_Reward["OpenBox"],nNpcId,nNowUserId)
	if not User_CheckLeftSpace(nSpace,nNowUserId) then
		Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["FullBag2"],nSpace),"NULL","NULL",nNowUserId)
		return false
	end
	
	-- 判断掩码
	local nEvent = tBossForSuoYaoPill_Stc[1]["EventType"]
	local nType = tBossForSuoYaoPill_Stc[1]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nNowUserId)
	
	-- 掩码异常
	if nData ~= nNpcId then
		return false
	end
	
	-- 删除灵珠
	if Item_ChkMulItem(nItemId,nItemId,nItemNum,1,0,nNowUserId) and Item_DelMulItem(nItemId,nItemId,nItemNum,1,0,nNowUserId) then
		-- 贵重物品统计
		if nItemId >= 4200001 and nItemId <= 4200018 then
			Sys_DecNosuchStatisticCount(355,nItemId,nItemNum)
		end
		Task_SetStatistic(nEvent,nType,0,1,nNowUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nNowUserId)
		local nDelLog = string.format(tBossForSuoYaoPill_Log["PearlDeleleLog"],nItemId,nItemNum)
		Sys_SaveActionRewardLog(nDelLog,nNowUserId)
		-- 给奖励
		local tAward,sReward = RewardTemplate_NewRandom(tBossForSuoYaoPill_Reward["OpenBox"],nNpcId,nNowUserId)
		
		-- 宝箱上播放光效
		local nMapId = Get_UserMapId(nNowUserId)
		local nPosX = tBossForSuoYaoPill_Cont["DynaNpc"]["PosX"]
		local nPosY = tBossForSuoYaoPill_Cont["DynaNpc"]["PosY"]
		local sEffectName = tBossForSuoYaoPill_Cont["Effect"]
		
		-- 好奖励给不同光效
		if tAward[1]["tAward"][1]["Good"] ~= nil then
			sEffectName = tBossForSuoYaoPill_Cont["EffectForGood"]
		end
		
		Map_Effect(nMapId, nPosX, nPosY, sEffectName)
		
		-- 添加失败或成功光效
		local nIndex = tAward[1]["tAward"][1]["Index"]
		local sDZEffect = tBossForSuoYaoPill_Cont["EffectForDZ"][nIndex]
		local nDZPosX = Get_UserPositionX(nNowUserId) - 6
		local nDZPosY = Get_UserPositionY(nNowUserId) - 6
		
		-- Map_Effect(nMapId, nDZPosX, nDZPosY, sDZEffect)
		
		-- 删除动态npc
		local sNpcName = tBossForSuoYaoPill_Text["NpcName"][nNpcId]
		Npc_DelDynaNpc(nMapId, "name" , sNpcName)
		
		-- 弹框提示·是否返回双龙城
		-- if tAward[1]["tAward"][1]["RewardStrengthValue"] ~= nil and tAward[1]["tAward"][1]["RewardItem"] ~= nil then
			-- local nRewardItemId = tAward[1]["tAward"][1]["RewardItem"][1]["Id"]
			-- local sRewardItemName = Get_ItemtypeName(nRewardItemId)
			-- local nNum = CommonFunc_GetItemNum(tAward[1]["tAward"][1]["RewardItem"][1]["Attr"])
			-- local sRewardItem = string.format(tBossForSuoYaoPill_Text[105]["Item"],sRewardItemName,nNum)
			
			-- sReward = sReward .. sRewardItem
		-- end
		
		-- sReward = string.format(tBossForSuoYaoPill_Text[105]["AutoBackCity"],sReward)
		-- Sys_MsgBox(sReward,"BossForSuoYaoPill_TrapBackCityConfirm</N>" .. nNowUserId,"NULL",nNowUserId)
		
		
		-- 修改为对白显示奖励·颜色区分奖励好坏
		local sText111 = string.format(tBossForSuoYaoPill_Text["Box"]["Text111"],nFloor)
		local sText112 = string.format(tBossForSuoYaoPill_Text["Box"]["Text112"],nFloor)
		-- 保底奖励
		local sText114 = string.format(tBossForSuoYaoPill_Text["Box"]["Text114"],tBossForSuoYaoPill_Text["Box"]["Reward"][nNpcId][1])
		sText114 = Sys_CenterAline(sText114,42)
		-- 最高奖励
		local nLen = #tBossForSuoYaoPill_Text["Box"]["Reward"][nNpcId]
		local sText115 = string.format(tBossForSuoYaoPill_Text["Box"]["Text115"],tBossForSuoYaoPill_Text["Box"]["Reward"][nNpcId][nLen])
		sText115 = Sys_CenterAline(sText115,42)
		-- 特殊奖励
		local sText116 = ""
		if tBossForSuoYaoPill_Text["Box"]["Reward"][nNpcId]["Special"] ~= nil then
			sText116 = string.format(tBossForSuoYaoPill_Text["Box"]["Text116"],tBossForSuoYaoPill_Text["Box"]["Reward"][nNpcId]["Special"])
			sText116 = Sys_CenterAline(sText116,40)
		end
		-- 本次获得的奖励
		sReward = string.format(tBossForSuoYaoPill_Text["Box"]["Color"][nIndex],sReward)
		local sText118 = string.format(tBossForSuoYaoPill_Text["Box"]["Text118"],sReward)
		
		Sys_DialogText(sText111,nil,nNowUserId)
		Sys_DialogText(sText112,nil,nNowUserId)
		Sys_DialogText(tBossForSuoYaoPill_Text["Box"]["Text113"],nil,nNowUserId)
		Sys_DialogText(sText114,nil,nNowUserId)
		Sys_DialogText(sText115,nil,nNowUserId)
		Sys_DialogText(sText116,nil,nNowUserId)
		Sys_DialogText(tBossForSuoYaoPill_Text["Box"]["Text117"],nil,nNowUserId)
		Sys_DialogText(sText118,nil,nNowUserId)
		Sys_DialogOption(tBossForSuoYaoPill_Text["Box"]["Option114"],"</F>BossForSuoYaoPill_TrapBackCityConfirm</N>" .. nNowUserId,nil,nNowUserId)
		-- Sys_DialogOption(tBossForSuoYaoPill_Text["Box"]["Option113"],"</F>User_SendWebPage</S>" ..  tBossForSuoYaoPill_Text["Web"] .. "</N>" .. nNowUserId,nil,nNowUserId)
		Sys_DialogFace(nNpcId,nNowUserId)
		Sys_DialogEnd(nNowUserId)
		
		-- 新增emoneylog统计数据
		Sys_SaveEmoneyBuy(tBossForSuoYaoPill_Log["EmoneyLog"]["OpenBox"][nNpcId],nNowUserId)
		if tAward[1]["tAward"][1]["RewardItem"] ~= nil then
			local nItemId = tAward[1]["tAward"][1]["RewardItem"][1]["Id"] 
			if tBossForSuoYaoPill_Log["EmoneyLog"][nItemId] ~= nil then
				Sys_SaveEmoneyBuy(tBossForSuoYaoPill_Log["EmoneyLog"][nItemId],nNowUserId)
			end
		end
		
		return true
	end
end

-- 龙冢4-7层·打开10次·二次确认·先取消
function BossForSuoYaoPill_Normal_OpenBoxForTenConfirm(nNpcId)
	local nFloor = tBossForSuoYaoPill_Cont["Floor"][nNpcId]
	local nItemId = tBossForSuoYaoPill_Cont["ItemId"][nNpcId]
	local sItemName = Get_ItemtypeName(nItemId)
	local nItemNum = tBossForSuoYaoPill_Cont["NeedItemNum"][nFloor] * 10
	
	-- 镇魂珠不足
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["NoEnoughItemToOpen"],sItemName,nItemNum))
		return false
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tBossForSuoYaoPill_Reward["OpenBox"],nNpcId) * 10
	
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["FullBag2"],nSpace))
		return false
	end
	
	Sys_DialogText(string.format(tBossForSuoYaoPill_Text["Box"]["Text221"],nFloor))
	Sys_DialogText(tBossForSuoYaoPill_Text["Box"]["Text222"])
	Sys_DialogText(string.format(tBossForSuoYaoPill_Text["Box"]["Text223"],nItemNum,sItemName))
	Sys_DialogText(tBossForSuoYaoPill_Text["Box"]["Text224"])
	Sys_DialogOption(tBossForSuoYaoPill_Text["Box"]["Option221"],"</F>BossForSuoYaoPill_Normal_OpenBoxForTen</N>" .. nNpcId)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
	return true
end

-- 龙冢4-7层·打开10次宝箱·先取消
function BossForSuoYaoPill_Normal_OpenBoxForTen(nNpcId)
	local nFloor = tBossForSuoYaoPill_Cont["Floor"][nNpcId]
	local nItemId = tBossForSuoYaoPill_Cont["ItemId"][nNpcId]
	local sItemName = Get_ItemtypeName(nItemId)
	local nItemNum = tBossForSuoYaoPill_Cont["NeedItemNum"][nFloor] * 10
	
	-- 镇魂珠不足
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["NoEnoughItemToOpen"],sItemName,nItemNum))
		return false
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tBossForSuoYaoPill_Reward["OpenBox"],nNpcId) * 10
	
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["FullBag2"],nSpace))
		return false
	end
	
	-- 10连抽不读条
	BossForSuoYaoPill_Normal_ExploreSuccessForTen(nNpcId)
	return true
end

-- 龙冢4-7层·成功打开10次宝箱·先取消
function BossForSuoYaoPill_Normal_ExploreSuccessForTen(nNpcId)
	local nNowUserId = Get_UserId()
	local nFloor = tBossForSuoYaoPill_Cont["Floor"][nNpcId]
	local nItemId = tBossForSuoYaoPill_Cont["ItemId"][nNpcId]
	local sItemName = Get_ItemtypeName(nItemId)
	local nItemNum = tBossForSuoYaoPill_Cont["NeedItemNum"][nFloor] * 10
	
	-- 镇魂珠不足
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum,1,0,nNowUserId) then
		Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["NoEnoughItemToOpen"],sItemName,nItemNum),"NULL","NULL",nNowUserId)
		return false
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tBossForSuoYaoPill_Reward["OpenBox"],nNpcId) * 10
	
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["FullBag2"],nSpace))
		return false
	end
	
	-- 判断掩码
	local nEvent = tBossForSuoYaoPill_Stc[1]["EventType"]
	local nType = tBossForSuoYaoPill_Stc[1]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nNowUserId)
	
	-- 掩码异常
	if nData ~= nNpcId then
		return false
	end
	
	-- 删除镇魂珠
	if Item_ChkMulItem(nItemId,nItemId,nItemNum,1,0,nNowUserId) and Item_DelMulItem(nItemId,nItemId,nItemNum,1,0,nNowUserId) then
		-- 贵重物品统计
		if nItemId >= 4200001 and nItemId <= 4200018 then
			Sys_DecNosuchStatisticCount(355,nItemId,nItemNum)
		end

		Task_SetStatistic(nEvent,nType,0,1,nNowUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nNowUserId)
		local nDelLog = string.format(tBossForSuoYaoPill_Log["PearlDeleleLog"],nItemId,nItemNum)
		Sys_SaveActionRewardLog(nDelLog,nNowUserId)
		Sys_DialogText(string.format(tBossForSuoYaoPill_Text["Box"]["Text211"],nFloor,tBossForSuoYaoPill_Cont["NeedItemNum"][nFloor],sItemName))
		Sys_DialogText(tBossForSuoYaoPill_Text["Box"]["Text212"])
		-- 给十次奖励`对白赋值
		for i = 1, 10 do
			-- 给奖励
			local tAward = RewardTemplate_NewRandom(tBossForSuoYaoPill_Reward["OpenBox"],nNpcId,nNowUserId)
			local nIndex = tAward[1]["tAward"][1]["Index"]
			local nPresent = tBossForSuoYaoPill_Cont["Present"][nNpcId]
			local sReward = tBossForSuoYaoPill_Text["Box"]["TenReward"][nPresent][nIndex]
			local sText = string.format(tBossForSuoYaoPill_Text["Box"]["Text21" .. 3+i],tBossForSuoYaoPill_Cont["NeedItemNum"][nFloor],sReward)
			sText = string.format(tBossForSuoYaoPill_Text["Box"]["Color"][nIndex],sText)
			Sys_DialogText(sText)
		end
		
		Sys_DialogText(tBossForSuoYaoPill_Text["Box"]["Text2114"])
		
		Sys_DialogOption(tBossForSuoYaoPill_Text["Box"]["Option211"],"</F>BossForSuoYaoPill_TrapBackCityConfirm</N>" .. nNowUserId)
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		
		-- 宝箱上播放光效
		local nMapId = Get_UserMapId(nNowUserId)
		local nPosX = tBossForSuoYaoPill_Cont["DynaNpc"]["PosX"]
		local nPosY = tBossForSuoYaoPill_Cont["DynaNpc"]["PosY"]
		local sEffectName = tBossForSuoYaoPill_Cont["EffectForGood"]
		
		Map_Effect(nMapId, nPosX, nPosY, sEffectName)
		
		-- 添加十连抽额外光效
		local sTenEffectName = tBossForSuoYaoPill_Cont["EffectForTen"]["Name"]
		for i=1,#tBossForSuoYaoPill_Cont["EffectForTen"]["PosX"] do
			local nTenPosX = tBossForSuoYaoPill_Cont["EffectForTen"]["PosX"][i]
			local nTenPosY = tBossForSuoYaoPill_Cont["EffectForTen"]["PosY"][i]
			
			Map_Effect(nMapId, nTenPosX, nTenPosY, sTenEffectName)
		end
		
		-- 删除动态npc
		local sNpcName = tBossForSuoYaoPill_Text["NpcName"][nNpcId]
		Npc_DelDynaNpc(nMapId, "name" , sNpcName)
		
		return true
	end
end

-- 龙冢深处1-6层·打开前判断10倍灵珠
function BossForSuoYaoPill_BeforeOpenBox(nNpcId)
	local nFloor = tBossForSuoYaoPill_Cont["Floor"][nNpcId]
	local nItemId = tBossForSuoYaoPill_Cont["ItemId"][nNpcId]
	local nItemNum = tBossForSuoYaoPill_Cont["NeedItemNum"][nFloor]
	
	-- 判断10倍灵珠
	if Item_ChkMulItem(nItemId,nItemId,nItemNum*10) then
		-- 显示宝箱对白
		local sText114 = string.format(tBossForSuoYaoPill_Text["Box2"]["Text114"],tBossForSuoYaoPill_Text["Box2"]["Reward"][nNpcId][1])
		-- 保底奖励
		sText114 = Sys_CenterAline(sText114,42)
		local nLen = #tBossForSuoYaoPill_Text["Box2"]["Reward"][nNpcId]
		-- 最高奖励
		local sText115 = string.format(tBossForSuoYaoPill_Text["Box2"]["Text115"],tBossForSuoYaoPill_Text["Box2"]["Reward"][nNpcId][nLen])
		sText115 = Sys_CenterAline(sText115,42)
		-- 特殊奖励
		local sText116 = ""
		if tBossForSuoYaoPill_Text["Box2"]["Reward"][nNpcId]["Special"] ~= nil then
			sText116 = string.format(tBossForSuoYaoPill_Text["Box2"]["Text116"],tBossForSuoYaoPill_Text["Box2"]["Reward"][nNpcId]["Special"])
			sText116 = Sys_CenterAline(sText116,40)
		end
		
		local sText118 = Sys_CenterAline(tBossForSuoYaoPill_Text["Box2"]["Text118"],40)
		local sOption111 = string.format(tBossForSuoYaoPill_Text["Box2"]["Option111"],nItemNum)
		-- local sOption112 = string.format(tBossForSuoYaoPill_Text["Box2"]["Option112"],nItemNum*10)
		local sOption113 = string.format(tBossForSuoYaoPill_Text["Box2"]["Option113"],nItemNum*10)
		
		Sys_DialogText(string.format(tBossForSuoYaoPill_Text["Box2"]["Text111"],nFloor))
		Sys_DialogText(string.format(tBossForSuoYaoPill_Text["Box2"]["Text112"],nFloor))
		Sys_DialogText(tBossForSuoYaoPill_Text["Box2"]["Text113"])
		Sys_DialogText(sText114)
		Sys_DialogText(sText115)
		Sys_DialogText(sText116)
		Sys_DialogText(tBossForSuoYaoPill_Text["Box2"]["Text117"])
		Sys_DialogText(sText118)
		Sys_DialogOption(sOption111,"</F>BossForSuoYaoPill_OpenBoxForOne</N>" .. nNpcId .. "</N>1")
		-- Sys_DialogOption(sOption112,"</F>BossForSuoYaoPill_OpenBoxForTenConfirm</N>" .. nNpcId)
		-- 1-5层有10倍镇魂珠可显示·添加6层10倍抽
		-- if nNpcId ~= 23640 then
			Sys_DialogOption(sOption113,"</F>BossForSuoYaoPill_TenMulOpenBoxConfirm</N>" .. nNpcId .. "</N>10")
		-- end
		-- Sys_DialogOption(tBossForSuoYaoPill_Text["Box2"]["Option114"],"</F>User_SendWebPage</S>" ..  tBossForSuoYaoPill_Text["Web"],nil)
		
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return true
	else
		BossForSuoYaoPill_OpenBoxForOne(nNpcId,1)
		return true
	end
end

-- 龙冢深处1-6层·10倍打开1次·二次确认
function BossForSuoYaoPill_TenMulOpenBoxConfirm(nNpcId,nMultiple)
	local nFloor = tBossForSuoYaoPill_Cont["Floor"][nNpcId]
	local nItemId = tBossForSuoYaoPill_Cont["ItemId"][nNpcId]
	local sItemName = Get_ItemtypeName(nItemId)
	local nItemNum = tBossForSuoYaoPill_Cont["NeedItemNum"][nFloor] * nMultiple
	
	-- 灵珠不足
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["NoEnoughItemToOpen"],sItemName,nItemNum))
		return false
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tBossForSuoYaoPill_Reward["TenMulOpenBox"],nNpcId)
	
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["FullBag2"],nSpace))
		return false
	end
	
	local sText231 = string.format(tBossForSuoYaoPill_Text["Box2"]["Text231"],nFloor)
	-- 保底奖励
	local sText233 = string.format(tBossForSuoYaoPill_Text["Box2"]["Text233"],tBossForSuoYaoPill_Text["Box2"]["TenMulReward"][nNpcId][1])
	sText233 = Sys_CenterAline(sText233,42)
	local nLen = #tBossForSuoYaoPill_Text["Box2"]["TenMulReward"][nNpcId]
	-- 最高奖励
	local sText234 = string.format(tBossForSuoYaoPill_Text["Box2"]["Text234"],tBossForSuoYaoPill_Text["Box2"]["TenMulReward"][nNpcId][nLen])
	sText234 = Sys_CenterAline(sText234,42)
	-- 特殊奖励
	local sText235 = string.format(tBossForSuoYaoPill_Text["Box2"]["Text235"],tBossForSuoYaoPill_Text["Box2"]["TenMulReward"][nNpcId]["Special"])
	sText235 = Sys_CenterAline(sText235,40)
	local sText237 = string.format(tBossForSuoYaoPill_Text["Box2"]["Text237"],nItemNum)
	-- sText237 = Sys_CenterAline(sText237,40)
	
	Sys_DialogText(sText231)
	Sys_DialogText(tBossForSuoYaoPill_Text["Box2"]["Text232"])
	Sys_DialogText(sText233)
	Sys_DialogText(sText234)
	Sys_DialogText(sText235)
	Sys_DialogText(tBossForSuoYaoPill_Text["Box2"]["Text236"])
	Sys_DialogText(sText237)
	Sys_DialogOption(tBossForSuoYaoPill_Text["Box2"]["Option231"],"</F>BossForSuoYaoPill_OpenBoxForOne</N>" .. nNpcId .. "</N>" .. nMultiple)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
	return true
end

-- 龙冢深处1-6层·打开1次至宝
function BossForSuoYaoPill_OpenBoxForOne(nNpcId,nMultiple)
	local nFloor = tBossForSuoYaoPill_Cont["Floor"][nNpcId]
	local nItemId = tBossForSuoYaoPill_Cont["ItemId"][nNpcId]
	local sItemName = Get_ItemtypeName(nItemId)
	local nItemNum = tBossForSuoYaoPill_Cont["NeedItemNum"][nFloor] * nMultiple
	
	-- 灵珠不足
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["NoEnoughItemToOpen"],sItemName,nItemNum))
		return false
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tBossForSuoYaoPill_Reward["OpenBox"],nNpcId)
	if nMultiple == 10 then
		nSpace = RewardTemplate_GetRandomSpace(tBossForSuoYaoPill_Reward["TenMulOpenBox"],nNpcId)
	end
	
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["FullBag2"],nSpace))
		return false
	end
	
	-- -- 显示宝箱对白
	-- -- 保底奖励
	-- local sText114 = string.format(tBossForSuoYaoPill_Text["Box2"]["Text114"],tBossForSuoYaoPill_Text["Box2"]["Reward"][nNpcId][1])
	-- local nLen = #tBossForSuoYaoPill_Text["Box2"]["Reward"][nNpcId]
	-- -- 最高奖励
	-- local sText115 = string.format(tBossForSuoYaoPill_Text["Box2"]["Text115"],tBossForSuoYaoPill_Text["Box2"]["Reward"][nNpcId][nLen])
	-- if nMultiple == 10 then
		-- sText114 = string.format(tBossForSuoYaoPill_Text["Box2"]["Text114"],tBossForSuoYaoPill_Text["Box2"]["TenMulReward"][nNpcId][1])
		-- nLen = #tBossForSuoYaoPill_Text["Box2"]["TenMulReward"][nNpcId]
		-- sText115 = string.format(tBossForSuoYaoPill_Text["Box2"]["Text115"],tBossForSuoYaoPill_Text["Box2"]["TenMulReward"][nNpcId][nLen])
	-- end
	-- sText114 = Sys_CenterAline(sText114,30)
	-- sText115 = Sys_CenterAline(sText115,30)
	-- -- 特殊奖励
	-- local sText116 = ""
	-- if tBossForSuoYaoPill_Text["Box2"]["Reward"][nNpcId]["Special"] ~= nil then
		-- sText116 = string.format(tBossForSuoYaoPill_Text["Box2"]["Text116"],tBossForSuoYaoPill_Text["Box2"]["Reward"][nNpcId]["Special"])
		-- sText116 = Sys_CenterAline(sText116,30)
	-- end
	
	-- Sys_DialogText(string.format(tBossForSuoYaoPill_Text["Box2"]["Text111"],nFloor))
	-- Sys_DialogText(string.format(tBossForSuoYaoPill_Text["Box2"]["Text112"],nFloor))
	-- Sys_DialogText(tBossForSuoYaoPill_Text["Box2"]["Text113"])
	-- Sys_DialogText(sText114)
	-- Sys_DialogText(sText115)
	-- Sys_DialogText(sText116)
	-- Sys_DialogText(tBossForSuoYaoPill_Text["Box2"]["Text117"])
	-- Sys_DialogFace(nNpcId)
	-- Sys_DialogEnd()
	
	-- 修改为点击宝箱直接开始读条
	local nUserId = Get_UserId()
	local nSecs = tBossForSuoYaoPill_Cont["Explore"]["Secs"]
	local sContent = tBossForSuoYaoPill_Text["ExploreContent"]
	local nActionId = tBossForSuoYaoPill_Cont["Explore"]["ActionId"]
	local sFunc = string.format("BossForSuoYaoPill_ExploreSuccessForOne</N>%d</N>%d",nNpcId,nMultiple)
	User_SetExplore(nSecs,sContent,nActionId,sFunc,"NULL",nUserId)
	return true
end

-- 龙冢深处1-6层·打开10次·二次确认·先取消
function BossForSuoYaoPill_OpenBoxForTenConfirm(nNpcId)
	local nFloor = tBossForSuoYaoPill_Cont["Floor"][nNpcId]
	local nItemId = tBossForSuoYaoPill_Cont["ItemId"][nNpcId]
	local sItemName = Get_ItemtypeName(nItemId)
	local nItemNum = tBossForSuoYaoPill_Cont["NeedItemNum"][nFloor] * 10
	
	-- 灵珠不足
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["NoEnoughItemToOpen"],sItemName,nItemNum))
		return false
	end
	
	-- 判断背包空间
	local nSpace = tBossForSuoYaoPill_Cont["TenNeedSpace"]
	
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["FullBag2"],nSpace))
		return false
	end
	
	Sys_DialogText(string.format(tBossForSuoYaoPill_Text["Box2"]["Text221"],nFloor))
	Sys_DialogText(tBossForSuoYaoPill_Text["Box2"]["Text222"])
	Sys_DialogText(string.format(tBossForSuoYaoPill_Text["Box2"]["Text223"],nItemNum))
	Sys_DialogText(tBossForSuoYaoPill_Text["Box2"]["Text224"])
	Sys_DialogOption(tBossForSuoYaoPill_Text["Box2"]["Option221"],"</F>BossForSuoYaoPill_OpenBoxForTen</N>" .. nNpcId)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
	return true
end

-- 龙冢深处1-6层·打开10次至宝·先取消
function BossForSuoYaoPill_OpenBoxForTen(nNpcId)
	local nFloor = tBossForSuoYaoPill_Cont["Floor"][nNpcId]
	local nItemId = tBossForSuoYaoPill_Cont["ItemId"][nNpcId]
	local sItemName = Get_ItemtypeName(nItemId)
	local nItemNum = tBossForSuoYaoPill_Cont["NeedItemNum"][nFloor] * 10
	
	-- 灵珠不足
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["NoEnoughItemToOpen"],sItemName,nItemNum))
		return false
	end
	
	-- 判断背包空间
	local nSpace = tBossForSuoYaoPill_Cont["TenNeedSpace"]
	
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["FullBag2"],nSpace))
		return false
	end
	
	-- 10连抽不读条
	BossForSuoYaoPill_ExploreSuccessForTen(nNpcId)
	return true
end

-- 龙冢深处1-6层·领取至宝`1次
function BossForSuoYaoPill_ExploreSuccessForOne(nNpcId,nMultiple,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nFloor = tBossForSuoYaoPill_Cont["Floor"][nNpcId]
	local nItemId = tBossForSuoYaoPill_Cont["ItemId"][nNpcId]
	local sItemName = Get_ItemtypeName(nItemId)
	local nItemNum = tBossForSuoYaoPill_Cont["NeedItemNum"][nFloor] * nMultiple
	
	-- 灵珠不足
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum,1,0,nNowUserId) then
		Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["NoEnoughItemToOpen"],sItemName,nItemNum),"NULL","NULL",nNowUserId)
		return false
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tBossForSuoYaoPill_Reward["OpenBox"],nNpcId,nNowUserId)
	if nMultiple == 10 then
		nSpace = RewardTemplate_GetRandomSpace(tBossForSuoYaoPill_Reward["TenMulOpenBox"],nNpcId,nNowUserId)
	end
	
	if not User_CheckLeftSpace(nSpace,nNowUserId) then
		Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["FullBag2"],nSpace),"NULL","NULL",nNowUserId)
		return false
	end
	
	-- 判断掩码
	local nEvent = tBossForSuoYaoPill_Stc[1]["EventType"]
	local nType = tBossForSuoYaoPill_Stc[1]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nNowUserId)
	
	-- 掩码异常
	if nData ~= nNpcId then
		return false
	end
	
	-- 删除灵珠
	if Item_ChkMulItem(nItemId,nItemId,nItemNum,1,0,nNowUserId) and Item_DelMulItem(nItemId,nItemId,nItemNum,1,0,nNowUserId) then
		-- 贵重物品统计
		if nItemId >= 4200001 and nItemId <= 4200018 then
			Sys_DecNosuchStatisticCount(355,nItemId,nItemNum)
		end

		Task_SetStatistic(nEvent,nType,0,1,nNowUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nNowUserId)
		local nDelLog = string.format(tBossForSuoYaoPill_Log["PearlDeleleLog"],nItemId,nItemNum)
		Sys_SaveActionRewardLog(nDelLog,nNowUserId)
		-- 给奖励
		local tAward = {}
		local sReward = ""
		if nMultiple == 10 then
			tAward,sReward = RewardTemplate_NewRandom(tBossForSuoYaoPill_Reward["TenMulOpenBox"],nNpcId,nNowUserId)
		else
			tAward,sReward = RewardTemplate_NewRandom(tBossForSuoYaoPill_Reward["OpenBox"],nNpcId,nNowUserId)
		end
		
		-- 宝箱上播放光效
		local nMapId = Get_UserMapId(nNowUserId)
		local nPosX = tBossForSuoYaoPill_Cont["DynaNpc"]["PosX"]
		local nPosY = tBossForSuoYaoPill_Cont["DynaNpc"]["PosY"]
		local sEffectName = tBossForSuoYaoPill_Cont["Effect"]
		
		-- 好奖励给不同光效
		if tAward[1]["tAward"][1]["Good"] ~= nil then
			sEffectName = tBossForSuoYaoPill_Cont["EffectForGood"]
		end
		
		Map_Effect(nMapId, nPosX, nPosY, sEffectName)
		
		-- 添加10倍抽额外光效
		if nMultiple == 10 then
			local sTenEffectName = tBossForSuoYaoPill_Cont["EffectForTen"]["Name"]
			for i=1,#tBossForSuoYaoPill_Cont["EffectForTen"]["PosX"] do
				local nTenPosX = tBossForSuoYaoPill_Cont["EffectForTen"]["PosX"][i]
				local nTenPosY = tBossForSuoYaoPill_Cont["EffectForTen"]["PosY"][i]
				
				Map_Effect(nMapId, nTenPosX, nTenPosY, sTenEffectName)
			end
		end
		
		-- 添加失败或成功光效
		local nIndex = tAward[1]["tAward"][1]["Index"]
		local sDZEffect = tBossForSuoYaoPill_Cont["EffectForDZ"][nIndex]
		local nDZPosX = Get_UserPositionX(nNowUserId) - 6
		local nDZPosY = Get_UserPositionY(nNowUserId) - 6
		
		-- Map_Effect(nMapId, nDZPosX, nDZPosY, sDZEffect)
		
		-- 删除动态npc
		local sNpcName = tBossForSuoYaoPill_Text["NpcName"][nNpcId]
		Npc_DelDynaNpc(nMapId, "name" , sNpcName)
		
		-- 弹框提示·是否返回双龙城
		-- if nMultiple == 10 then
			-- local nIndex = tAward[1]["tAward"][1]["Index"]
			-- sReward = Sys_CenterAline(tBossForSuoYaoPill_Text["Line"],1,sReward,18,tBossForSuoYaoPill_Text["Line"],35)
			-- sReward = string.format(tBossForSuoYaoPill_Text[105]["TenMulBackCity"],tBossForSuoYaoPill_Text["Box2"]["TenMul"][nIndex],sReward)
			-- Sys_MsgBox(sReward,"BossForSuoYaoPill_TrapBackCityConfirm</N>" .. nNowUserId,"NULL",nNowUserId)
		-- else
			-- sReward = string.format(tBossForSuoYaoPill_Text[105]["AutoBackCity"],sReward)
			-- Sys_MsgBox(sReward,"BossForSuoYaoPill_TrapBackCityConfirm</N>" .. nNowUserId,"NULL",nNowUserId)
			
		-- end
		
		-- 修改为对白显示奖励·颜色区分奖励好坏
		-- 保底奖励
		local sText114 = string.format(tBossForSuoYaoPill_Text["Box2"]["Text114"],tBossForSuoYaoPill_Text["Box2"]["Reward"][nNpcId][1])
		local nLen = #tBossForSuoYaoPill_Text["Box2"]["Reward"][nNpcId]
		-- 最高奖励
		local sText115 = string.format(tBossForSuoYaoPill_Text["Box2"]["Text115"],tBossForSuoYaoPill_Text["Box2"]["Reward"][nNpcId][nLen])
		-- 特殊奖励
		local sText116 = string.format(tBossForSuoYaoPill_Text["Box2"]["Text116"],tBossForSuoYaoPill_Text["Box2"]["Reward"][nNpcId]["Special"])
		-- 十倍抽调整对白
		if nMultiple == 10 then
			sText114 = string.format(tBossForSuoYaoPill_Text["Box2"]["Text114"],tBossForSuoYaoPill_Text["Box2"]["TenMulReward"][nNpcId][1])
			nLen = #tBossForSuoYaoPill_Text["Box2"]["TenMulReward"][nNpcId]
			sText115 = string.format(tBossForSuoYaoPill_Text["Box2"]["Text115"],tBossForSuoYaoPill_Text["Box2"]["TenMulReward"][nNpcId][nLen])
			sText116 = string.format(tBossForSuoYaoPill_Text["Box2"]["Text116"],tBossForSuoYaoPill_Text["Box2"]["TenMulReward"][nNpcId]["Special"])
		end
		
		sText114 = Sys_CenterAline(sText114,42)
		sText115 = Sys_CenterAline(sText115,42)
		sText116 = Sys_CenterAline(sText116,40)
		
		-- 本次获得的奖励
		sReward = string.format(tBossForSuoYaoPill_Text["Box2"]["Color"][nIndex],sReward)
		local sText119 = string.format(tBossForSuoYaoPill_Text["Box2"]["Text119"],sReward)
		
		Sys_DialogText(string.format(tBossForSuoYaoPill_Text["Box2"]["Text111"],nFloor),nil,nNowUserId)
		Sys_DialogText(string.format(tBossForSuoYaoPill_Text["Box2"]["Text112"],nFloor),nil,nNowUserId)
		Sys_DialogText(tBossForSuoYaoPill_Text["Box2"]["Text113"],nil,nNowUserId)
		Sys_DialogText(sText114,nil,nNowUserId)
		Sys_DialogText(sText115,nil,nNowUserId)
		Sys_DialogText(sText116,nil,nNowUserId)
		Sys_DialogText(tBossForSuoYaoPill_Text["Box2"]["Text117"],nil,nNowUserId)
		Sys_DialogText(sText119,nil,nNowUserId)
		Sys_DialogOption(tBossForSuoYaoPill_Text["Box2"]["Option115"],"</F>BossForSuoYaoPill_TrapBackCityConfirm</N>" .. nNowUserId,nil,nNowUserId)
		-- Sys_DialogOption(tBossForSuoYaoPill_Text["Box2"]["Option114"],"</F>User_SendWebPage</S>" ..  tBossForSuoYaoPill_Text["Web"] .. "</N>" .. nNowUserId,nil,nNowUserId)
		Sys_DialogFace(nNpcId,nNowUserId)
		Sys_DialogEnd(nNowUserId)
		
		-- 新增emoneylog统计数据
		if nMultiple == 10 then
			Sys_SaveEmoneyBuy(tBossForSuoYaoPill_Log["EmoneyLog"]["TenMulOpenBox"][nNpcId],nNowUserId)
		else
			Sys_SaveEmoneyBuy(tBossForSuoYaoPill_Log["EmoneyLog"]["OpenBox"][nNpcId],nNowUserId)
		end
		if tAward[1]["tAward"][1]["RewardItem"] ~= nil then
			local nItemId = tAward[1]["tAward"][1]["RewardItem"][1]["Id"] 
			if tBossForSuoYaoPill_Log["EmoneyLog"][nItemId] ~= nil then
				Sys_SaveEmoneyBuy(tBossForSuoYaoPill_Log["EmoneyLog"][nItemId],nNowUserId)
				if nMultiple == 10 then
					for i=1, 9 do
						Sys_SaveEmoneyBuy(tBossForSuoYaoPill_Log["EmoneyLog"][nItemId],nNowUserId)
					end
				end
			end
		end
		
		return true
	end
end

-- 龙冢深处1-6层·领取至宝`10次·先取消
function BossForSuoYaoPill_ExploreSuccessForTen(nNpcId)
	local nNowUserId = Get_UserId()
	local nFloor = tBossForSuoYaoPill_Cont["Floor"][nNpcId]
	local nItemId = tBossForSuoYaoPill_Cont["ItemId"][nNpcId]
	local sItemName = Get_ItemtypeName(nItemId)
	local nItemNum = tBossForSuoYaoPill_Cont["NeedItemNum"][nFloor] * 10
	
	-- 灵珠不足
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum,1,0,nNowUserId) then
		Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["NoEnoughItemToOpen"],sItemName,nItemNum),"NULL","NULL",nNowUserId)
		return false
	end
	
	-- 判断背包空间
	local nSpace = tBossForSuoYaoPill_Cont["TenNeedSpace"]
	
	if not User_CheckLeftSpace(nSpace,nNowUserId) then
		Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["FullBag2"],nSpace),"NULL","NULL",nNowUserId)
		return false
	end
	
	-- 判断掩码
	local nEvent = tBossForSuoYaoPill_Stc[1]["EventType"]
	local nType = tBossForSuoYaoPill_Stc[1]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nNowUserId)
	
	-- 掩码异常
	if nData ~= nNpcId then
		return false
	end
	
	-- 删除灵珠
	if Item_ChkMulItem(nItemId,nItemId,nItemNum,1,0,nNowUserId) and Item_DelMulItem(nItemId,nItemId,nItemNum,1,0,nNowUserId) then
		-- 贵重物品统计
		if nItemId >= 4200001 and nItemId <= 4200018 then
			Sys_DecNosuchStatisticCount(355,nItemId,nItemNum)
		end

		Task_SetStatistic(nEvent,nType,0,1,nNowUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nNowUserId)
		local nDelLog = string.format(tBossForSuoYaoPill_Log["PearlDeleleLog"],nItemId,nItemNum)
		Sys_SaveActionRewardLog(nDelLog,nNowUserId)
		
		Sys_DialogText(string.format(tBossForSuoYaoPill_Text["Box2"]["Text211"],nFloor,tBossForSuoYaoPill_Cont["NeedItemNum"][nFloor]))
		Sys_DialogText(tBossForSuoYaoPill_Text["Box2"]["Text212"])
		Sys_DialogText(tBossForSuoYaoPill_Text["Box2"]["Text213"])
		-- 给十次奖励`对白赋值
		-- local nSum = 0
		for i = 1, 10 do
			-- 给奖励
			local tAward,sReward = RewardTemplate_NewRandom(tBossForSuoYaoPill_Reward["OpenBox"],nNpcId,nNowUserId)
			local nIndex = tAward[1]["tAward"][1]["Index"]
			-- local sReward = tBossForSuoYaoPill_Text["Box2"]["TenReward"][nIndex]
			local sText = string.format(tBossForSuoYaoPill_Text["Box2"]["Text21" .. 3+i],sReward)
			-- local nColor = tAward[1]["tAward"][1]["Color"]
			sText = string.format(tBossForSuoYaoPill_Text["Box2"]["Color"][nIndex],sText)
			Sys_DialogText(sText)
			
			-- nSum = nSum + tBossForSuoYaoPill_Cont["Coe"][nIndex]
		end
		
		Sys_DialogText(tBossForSuoYaoPill_Text["Box2"]["Text2114"])
		
		-- 显示正负收益
		-- if nSum >= 10 then
			-- Sys_DialogText(tBossForSuoYaoPill_Text["Box2"]["Text2115"] .. tBossForSuoYaoPill_Text["Box2"]["Symbol1"] .. tostring(nSum-10))
			
		-- else
			-- Sys_DialogText(tBossForSuoYaoPill_Text["Box2"]["Text2115"] .. tBossForSuoYaoPill_Text["Box2"]["Symbol2"] .. tostring(10-nSum))
			
		-- end
		
		Sys_DialogOption(tBossForSuoYaoPill_Text["Box2"]["Option211"],"</F>BossForSuoYaoPill_TrapBackCityConfirm</N>" .. nNowUserId)
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		
		-- 宝箱上播放光效
		local nMapId = Get_UserMapId(nNowUserId)
		local nPosX = tBossForSuoYaoPill_Cont["DynaNpc"]["PosX"]
		local nPosY = tBossForSuoYaoPill_Cont["DynaNpc"]["PosY"]
		local sEffectName = tBossForSuoYaoPill_Cont["EffectForGood"]
		
		Map_Effect(nMapId, nPosX, nPosY, sEffectName)
		
		-- 添加十连抽额外光效
		local sTenEffectName = tBossForSuoYaoPill_Cont["EffectForTen"]["Name"]
		for i=1,#tBossForSuoYaoPill_Cont["EffectForTen"]["PosX"] do
			local nTenPosX = tBossForSuoYaoPill_Cont["EffectForTen"]["PosX"][i]
			local nTenPosY = tBossForSuoYaoPill_Cont["EffectForTen"]["PosY"][i]
			
			Map_Effect(nMapId, nTenPosX, nTenPosY, sTenEffectName)
		end
		
		-- 删除动态npc
		local sNpcName = tBossForSuoYaoPill_Text["NpcName"][nNpcId]
		Npc_DelDynaNpc(nMapId, "name" , sNpcName)
		
		-- 大于5层添加全服公告`屏蔽
		-- if nFloor >= 5 then
			-- local sUserName = Get_UserName(nNowUserId)
			-- local sBroadcast = string.format(tBossForSuoYaoPill_Text["Broadcast"]["RewardForTen"],sUserName,nFloor)
			-- Sys_SystemBroadcast(sBroadcast)
		-- end
		
		return true
	end
end

-- 前往龙冢检测
function BossForSuoYaoPill_ChooseChk(nNpcId,nItemId,sLink)
	local sItemName = Get_ItemtypeName(nItemId)
	
	-- 无对应灵珠
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		-- Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["Nothing"],sItemName))
		BossForSuoYaoPill_Shop(nNpcId)
		return false
	end
	
	LinkNpcGossipFunc_New(nNpcId,sLink)
	return true
end

-- 使用灵珠进入副本
function BossForSuoYaoPill_IntoInstance(nItemId,nFloor)
	local sItemName = Get_ItemtypeName(nItemId)
	local nItemNum = tBossForSuoYaoPill_Cont["NeedItemNum"][nFloor]
	local sEffectName = tBossForSuoYaoPill_Cont["InsEffect"][nFloor]
	-- 区分龙冢深处的光效
	if tBossForSuoYaoPill_Cont["InsEffect"][nItemId] ~= nil then
		sEffectName = tBossForSuoYaoPill_Cont["InsEffect"][nItemId][nFloor]
	end
	
	-- 过期删除·改为长期物品提示暂时无法使用·改为过期可使用
	-- if not Sys_ChkFullTime(tActivityTime["BossForSuoYaoPill"]["ActTime"]) then
		-- local nNum = Get_CountItemType(nItemId,0)
		
		-- if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			-- -- 记录删除log
			-- local sLog = string.format(tBossForSuoYaoPill_Log["Delete"],nItemId,nNum)
			-- Sys_SaveActionFestivalLog(sLog)
		-- end
		
		-- User_TalkChannel2005(string.format(tBossForSuoYaoPill_Text[2005]["OutTime"],sItemName))
		-- User_TalkChannel2005(tBossForSuoYaoPill_Text[2005]["NotTime"])
		-- return false
	-- end
	
	-- 灵珠不足
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["NoEnoughItem"][nItemId],sItemName,nFloor))
		return false
	end
	
	-- 组队不能进入
	if Get_UserTeamNumbers() >= 2 then
		Sys_MsgBox(tBossForSuoYaoPill_Text[105]["HaveATeam"])
		return false
	end
	
	-- 判断激情服
	local nCityId = tBossForSuoYaoPill_Cont["TwinCity"]["Normal"]
	if SpecialServer_ChkNoGiftServer() then
		nCityId = tBossForSuoYaoPill_Cont["TwinCity"]["Special"]
	end
	
	-- 不在双龙城
	local nMapId = Get_UserMapId()
	if nMapId ~= nCityId then
		-- local sFunc = string.format("BossForSuoYaoPill_ChgMap</N>%d",nCityId)
		-- Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["NotInTwinCity"],sItemName),sFunc,"NULL")
		return true
	end
	
	local nInstanceId = tBossForSuoYaoPill_Cont["InstanceId"][nFloor]
	
	-- 龙冢深处`区分副本
	if tBossForSuoYaoPill_Cont["InstanceId"][nItemId] ~= nil then
		nInstanceId = tBossForSuoYaoPill_Cont["InstanceId"][nItemId][nFloor]
	end	
	
	-- 记录掩码
	local nEvent = tBossForSuoYaoPill_Stc[1]["EventType"]
	local nType = tBossForSuoYaoPill_Stc[1]["DataType"]
	
	local nBrushNpc = tBossForSuoYaoPill_Cont["Link"][nItemId][nFloor]["NpcId"]
	Task_SetStatistic(nEvent,nType,nBrushNpc,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	-- 进入副本
	if User_EnterInstance(nInstanceId,0,0,0) then
		local nMapId = Get_UserMapId()
		for i,v in pairs(tBossForSuoYaoPill_Cont["Link"]) do
			-- 龙冢深处没有7层·加个判断
			if v[nFloor] ~= nil then
				local nNpcId = v[nFloor]["NpcId"]
				local sName = tBossForSuoYaoPill_Text["NpcName"][nNpcId]
				Npc_DelDynaNpc(nMapId, "name" , sName)
			end
		end
		
		local nMonsterId = tBossForSuoYaoPill_Cont["Link"][nItemId][nFloor]["MonsterId"]
		local nPosX = tBossForSuoYaoPill_Cont["Monster"]["PosX"]
		local nPosY = tBossForSuoYaoPill_Cont["Monster"]["PosY"]
		local nGenId = tBossForSuoYaoPill_Cont["Monster"]["GenId"][nMonsterId]
		Monster_DelMonster(nMapId,nMonsterId)
		Monster_Death(nMonsterId,nMapId)
		
		-- 刷新怪物
		Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)
		User_EffectAdd(tBossForSuoYaoPill_Cont["EffectObj"],sEffectName)
		return true
	end
end

-- 传送
function BossForSuoYaoPill_ChgMap(nMapId)
	-- 活动过期
	-- if not Sys_ChkFullTime(tActivityTime["BossForSuoYaoPill"]["ActTime"]) then
		-- Sys_MsgBox(tBossForSuoYaoPill_Text[105]["OutTime"])
		-- return false
	-- end
	
	local nMapId = tBossForSuoYaoPill_Cont["ChgMap"][nMapId]["MapId"]
	local nCellX = tBossForSuoYaoPill_Cont["ChgMap"][nMapId]["CellX"]
	local nCellY = tBossForSuoYaoPill_Cont["ChgMap"][nMapId]["CellY"]
	
	User_UserRandBoundTrans(nMapId,nCellX,nCellY,5,5,1)
	return true
end

-- 陷阱触发
function BossForSuoYaoPill_TrapBackCity()
	Sys_MsgBox(tBossForSuoYaoPill_Text[105]["BackCity"],"BossForSuoYaoPill_TrapBackCityConfirm","NULL")
end

-- 确认返回
function BossForSuoYaoPill_TrapBackCityConfirm(nUserId)
	local nNowUserId = nUserId or Get_UserId()
	-- 判断激情服
	local nCityId = tBossForSuoYaoPill_Cont["TwinCity"]["Normal"]
	if SpecialServer_ChkNoGiftServer() then
		nCityId = tBossForSuoYaoPill_Cont["TwinCity"]["Special"]
	end
	
	local nMapId = tBossForSuoYaoPill_Cont["ChgMap"][nCityId]["MapId"]
	local nCellX = tBossForSuoYaoPill_Cont["ChgMap"][nCityId]["CellX"]
	local nCellY = tBossForSuoYaoPill_Cont["ChgMap"][nCityId]["CellY"]
	
	User_UserRandBoundTrans(nMapId,nCellX,nCellY,5,5,1,nNowUserId)
	return true
end

-- 打开冥界宝箱
function BossForSuoYaoPill_OpenGhostdomBox(nItemId,nNpcId)
	local nEvent_5 = tBossForSuoYaoPill_Stc[5]["EventType"]
	local nType_5 = tBossForSuoYaoPill_Stc[5]["DataType"]
	
	-- 隔天清掩码
	if Task_StcInterval(nEvent_5,nType_5,1,4) then
		Task_SetStatistic(nEvent_5,nType_5,0,1)
		Task_SetStcTimestamp(nEvent_5,nType_5,0)
	end
	
	local nData_5 = Get_UserStatisticValue(nEvent_5,nType_5)
	-- 是否第一次点开宝箱
	if nData_5 == 0 then
		Task_SetStatistic(nEvent_5,nType_5,1,1)
		Task_SetStcTimestamp(nEvent_5,nType_5,0)
		
		Sys_DialogText(tBossForSuoYaoPill_Text["GhostdomBox"]["Text111"])
		Sys_DialogOption(tBossForSuoYaoPill_Text["GhostdomBox"]["Option111"],"</F>BossForSuoYaoPill_OpenGhostdomBox</N>" .. nItemId .. "</N>" .. nNpcId)
	else
		Sys_DialogText(tBossForSuoYaoPill_Text["GhostdomBox"]["Text121"])
		Sys_DialogText(tBossForSuoYaoPill_Text["GhostdomBox"]["Text122"])
		for i,v in ipairs(tBossForSuoYaoPill_Text["GhostdomBox"]["Text123"][nItemId]) do
			Sys_DialogText(v)
		end
		Sys_DialogText(tBossForSuoYaoPill_Text["GhostdomBox"]["Text124"])
		Sys_DialogOption(tBossForSuoYaoPill_Text["GhostdomBox"]["Option121"],"</F>BossForSuoYaoPill_OpenGhostdomBoxConfirm</N>" .. nItemId)
		Sys_DialogOption(tBossForSuoYaoPill_Text["GhostdomBox"]["Option122"])
	end
	
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
	
	return true
end

-- 确认打开冥界宝箱
function BossForSuoYaoPill_OpenGhostdomBoxConfirm(nItemId)
	local sItemName = Get_ItemtypeName(nItemId)
	local nEvent_4 = tBossForSuoYaoPill_Stc[4]["EventType"]
	local nType_4 = tBossForSuoYaoPill_Stc[4]["DataType"]
	local nData_4 = Get_UserStatisticValue(nEvent_4,nType_4)
	
	-- 掩码异常
	if nData_4 ~= nItemId then
		return false
	end
	
	-- 无诏令
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["NoEnoughItemToOpen2"],sItemName))
		return false
	end
	
	local nUserId = Get_UserId()
	local nSecs = tBossForSuoYaoPill_Cont["Explore"]["Secs"]
	local sContent = tBossForSuoYaoPill_Text["ExploreContent2"]
	local nActionId = tBossForSuoYaoPill_Cont["Explore"]["ActionId"]
	local sFunc = string.format("BossForSuoYaoPill_GhostdomBoxExplore</N>%d",nItemId)
	User_SetExplore(nSecs,sContent,nActionId,sFunc,"NULL",nUserId)
	
	return true
end

-- 打开冥界宝箱读条成功
function BossForSuoYaoPill_GhostdomBoxExplore(nItemId,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local sItemName = Get_ItemtypeName(nItemId)
	local nEvent_4 = tBossForSuoYaoPill_Stc[4]["EventType"]
	local nType_4 = tBossForSuoYaoPill_Stc[4]["DataType"]
	local nData_4 = Get_UserStatisticValue(nEvent_4,nType_4,nNowUserId)
	
	-- 掩码异常
	if nData_4 ~= nItemId then
		return false
	end
	
	-- 无诏令
	if not Item_ChkItem(nItemId,nil,nil,nNowUserId) then
		Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["NoEnoughItemToOpen2"],sItemName),"NULL","NULL",nNowUserId)
		return false
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tBossForSuoYaoPill_Reward["Token"],nItemId,nNowUserId)
	if not User_CheckLeftSpace(nSpace,nNowUserId) then
		Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["FullBag4"],nSpace),"NULL","NULL",nNowUserId)
		return false
	end
	
	-- 删诏令·给奖励
	if Item_ChkItem(nItemId,nil,nil,nNowUserId) and Item_DelItem(nItemId,nil,nil,nNowUserId) then
		local tAward,sReward = RewardTemplate_NewRandom(tBossForSuoYaoPill_Reward["Token"],nItemId,nNowUserId)
		local sMsg = string.format(tBossForSuoYaoPill_Text[105]["GetReward"],sReward)
		Sys_MsgBox(sMsg,"BossForSuoYaoPill_TrapBackCityConfirm","NULL",nNowUserId)
		
		local sEffect = tBossForSuoYaoPill_Cont["EffectForGood"]
		User_EffectAdd("self",sEffect,nNowUserId)
		
		-- 新增emoneylog统计数据
		if tAward[1]["tAward"][1]["RewardItem"] ~= nil then
			local nItemId = tAward[1]["tAward"][1]["RewardItem"][1]["Id"] 
			if tBossForSuoYaoPill_Log["EmoneyLog"][nItemId] ~= nil then
				Sys_SaveEmoneyBuy(tBossForSuoYaoPill_Log["EmoneyLog"][nItemId],nNowUserId)
			end
		end
		
		return true
	end
end

-- 选择佩饰
function BossForSuoYaoPill_ChooseLamp(nNpcId,nItemId)
	-- 物品不存在
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		Sys_MsgBox(tBossForSuoYaoPill_Text[105]["NoItem"])
		return false
	end
	
	local sItemName = Get_ItemtypeName(nItemId)
	tNpcGossip[nNpcId]["Text311"] = string.format(tBossForSuoYaoPill_Text[nNpcId]["Text311"],sItemName)
	tNpcGossip[nNpcId]["Option311"] = string.format(tBossForSuoYaoPill_Text[nNpcId]["Option311"],sItemName)
	tNpcGossip[nNpcId]["OptionFunc311"] = "BossForSuoYaoPill_HandInLamp</N>" .. nNpcId .. "</N>" .. nItemId
	
	LinkNpcGossipFunc_New(nNpcId,"3-1")
	return true
end

-- 确认选择
function BossForSuoYaoPill_HandInLamp(nNpcId,nItemId)
	-- 物品不存在
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		Sys_MsgBox(tBossForSuoYaoPill_Text[105]["NoItem"])
		return false
	end
	
	local sItemName = Get_ItemtypeName(nItemId)
	local nValue = tBossForSuoYaoPill_Reward["HandInLamp"][nItemId]["RewardEMoney"]["Value"]
	
	tNpcGossip[nNpcId]["Text411"] = string.format(tBossForSuoYaoPill_Text[nNpcId]["Text411"],sItemName)
	tNpcGossip[nNpcId]["Text414"] = string.format(tBossForSuoYaoPill_Text[nNpcId]["Text414"],nValue)
	tNpcGossip[nNpcId]["OptionFunc411"] = "BossForSuoYaoPill_HandInLampConfirm</N>" .. nNpcId .. "</N>" .. nItemId
	
	LinkNpcGossipFunc_New(nNpcId,"4-1")
	return true
end

-- 确认上交
function BossForSuoYaoPill_HandInLampConfirm(nNpcId,nItemId)
	-- 物品不存在
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		Sys_MsgBox(tBossForSuoYaoPill_Text[105]["NoItem"])
		return false
	end
	
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tBossForSuoYaoPill_Reward["HandInLamp"][nItemId])
	
	if not bJudge then
		return false
	end
	
	RewardTemplate_UseItemAndMsg(tBossForSuoYaoPill_Reward["HandInLamp"][nItemId],nUserId,bJudge)
	
	local nValue = tBossForSuoYaoPill_Reward["HandInLamp"][nItemId]["RewardEMoney"]["Value"]
	Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["HandInSuccess"],nValue))
	return true
end



----------------------------------------模板部分-------------------------------------
-------------------------------NPC模板
-- 南海仙翁 23610
tNpcFace[4321] = 67
tNpcGossip[23610] = tNpcGossip[23610] or DefaultNpc:new{}
tNpcGossip[23610]["OptionHidden"] = 1
tNpcGossip[23610]["DialogueText"] = tBossForSuoYaoPill_Text[23610]

-- 活动前
tNpcGossip[23610]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[23610]["tOption1-1"] = {111}
tNpcGossip[23610]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["BossForSuoYaoPill"]["ActTime"])
end

-- 活动后
tNpcGossip[23610]["Text1-2"] = {121,122,123}
tNpcGossip[23610]["tOption1-2"] = {121}
tNpcGossip[23610]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["BossForSuoYaoPill"]["ActTime"])
end

-- 活动中
-- 每日第一次点击
tNpcGossip[23610]["Text1-3"] = {131,132,133,134}
tNpcGossip[23610]["tOption1-3"] = {131}
tNpcGossip[23610]["ChkFunc1-3"] = function ()
	local nEvent_3 = tBossForSuoYaoPill_Stc[3]["EventType"]
	local nType_3 = tBossForSuoYaoPill_Stc[3]["DataType"]
	
	-- 隔天清掩码
	if Task_StcInterval(nEvent_3,nType_3,1,4) then
		Task_SetStatistic(nEvent_3,nType_3,0,1)
		Task_SetStcTimestamp(nEvent_3,nType_3,0)
	end
	
	local nData_3 = Get_UserStatisticValue(nEvent_3,nType_3)
	if nData_3 == 0 then
		Task_SetStatistic(nEvent_3,nType_3,1,1)
		Task_SetStcTimestamp(nEvent_3,nType_3,0)
	else
		return false
	end
	
	return Sys_ChkFullTime(tActivityTime["BossForSuoYaoPill"]["ActTime"])
end

-- 非第一次点击
tNpcGossip[23610]["Text1-4"] = {141,142,143,144}
-- tNpcGossip[23610]["tOption1-4"] = {144,145,141,146,147,148}
tNpcGossip[23610]["tOption1-4"] = {144,145,141,147,148}
tNpcGossip[23610]["ChkFunc1-4"] = function ()
	return Sys_ChkFullTime(tActivityTime["BossForSuoYaoPill"]["ActTime"])
end

tNpcGossip[23610]["OptionPoint131"] = "1-4"
tNpcGossip[23610]["OptionFunc141"] = "BossForSuoYaoPill_Shop</N>23610" 
tNpcGossip[23610]["OptionFunc144"] = "BossForSuoYaoPill_ChooseChk</N>23610</N>4200005</S>" .. "2-3"
tNpcGossip[23610]["OptionFunc145"] = "BossForSuoYaoPill_ChooseChk</N>23610</N>4200009</S>" .. "2-4"
-- tNpcGossip[23610]["OptionFunc146"] = "User_SendWebPage</S>" ..  tBossForSuoYaoPill_Text["Web"]
tNpcGossip[23610]["OptionPoint147"] = "2-5"

-- 前往龙冢（5阶灵珠）
tNpcGossip[23610]["Text2-3"] = {231}
tNpcGossip[23610]["tOption2-3"] = {231,232,233,234,235,236,237,238}

-- 前往龙冢深处（9阶灵珠）
tNpcGossip[23610]["Text2-4"] = {241}
tNpcGossip[23610]["tOption2-4"] = {241,242,243,244,245,246,247}
tNpcGossip[23610]["ChkFunc2-4"] = function ()
	local tOption = {241,242}
	local nItemId = tBossForSuoYaoPill_Cont["DragonSoul9"]
	for i=3, 6 do
		local nItemNum = tBossForSuoYaoPill_Cont["NeedItemNum"][i]
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) then
			tOption[#tOption+1] = 240 + i
		end
	end
	
	tOption[#tOption+1] = 247
	tNpcGossip[23610]["tOption2-4"] = tOption
	return true
end

-- 神秘佩饰分解
tNpcGossip[23610]["Text2-5"] = {251}
tNpcGossip[23610]["tOption2-5"] = {251,252,253,254,255,256,257,258,259}

tNpcGossip[23610]["OptionFunc231"] = "BossForSuoYaoPill_IntoInstance</N>4200005</N>1"
tNpcGossip[23610]["OptionFunc232"] = "BossForSuoYaoPill_IntoInstance</N>4200005</N>2"
tNpcGossip[23610]["OptionFunc233"] = "BossForSuoYaoPill_IntoInstance</N>4200005</N>3"
tNpcGossip[23610]["OptionFunc234"] = "BossForSuoYaoPill_IntoInstance</N>4200005</N>4"
tNpcGossip[23610]["OptionFunc235"] = "BossForSuoYaoPill_IntoInstance</N>4200005</N>5"
tNpcGossip[23610]["OptionFunc236"] = "BossForSuoYaoPill_IntoInstance</N>4200005</N>6"
tNpcGossip[23610]["OptionFunc237"] = "BossForSuoYaoPill_IntoInstance</N>4200005</N>7"
tNpcGossip[23610]["OptionPoint238"] = "1"
tNpcGossip[23610]["OptionFunc241"] = "BossForSuoYaoPill_IntoInstance</N>4200009</N>1"
tNpcGossip[23610]["OptionFunc242"] = "BossForSuoYaoPill_IntoInstance</N>4200009</N>2"
tNpcGossip[23610]["OptionFunc243"] = "BossForSuoYaoPill_IntoInstance</N>4200009</N>3"
tNpcGossip[23610]["OptionFunc244"] = "BossForSuoYaoPill_IntoInstance</N>4200009</N>4"
tNpcGossip[23610]["OptionFunc245"] = "BossForSuoYaoPill_IntoInstance</N>4200009</N>5"
tNpcGossip[23610]["OptionFunc246"] = "BossForSuoYaoPill_IntoInstance</N>4200009</N>6"
tNpcGossip[23610]["OptionPoint247"] = "1"
tNpcGossip[23610]["OptionFunc251"] = "BossForSuoYaoPill_ChooseLamp</N>23610</N>2168665"
tNpcGossip[23610]["OptionFunc252"] = "BossForSuoYaoPill_ChooseLamp</N>23610</N>2168675"
tNpcGossip[23610]["OptionFunc253"] = "BossForSuoYaoPill_ChooseLamp</N>23610</N>2168685"
tNpcGossip[23610]["OptionFunc254"] = "BossForSuoYaoPill_ChooseLamp</N>23610</N>2168695"
tNpcGossip[23610]["OptionFunc255"] = "BossForSuoYaoPill_ChooseLamp</N>23610</N>2168705"
tNpcGossip[23610]["OptionFunc256"] = "BossForSuoYaoPill_ChooseLamp</N>23610</N>2168715"
tNpcGossip[23610]["OptionFunc257"] = "BossForSuoYaoPill_ChooseLamp</N>23610</N>2168725"
tNpcGossip[23610]["OptionFunc258"] = "BossForSuoYaoPill_ChooseLamp</N>23610</N>2168735"

-- 选择佩饰上交
tNpcGossip[23610]["Text3-1"] = {311}
tNpcGossip[23610]["tOption3-1"] = {311}

-- 确认上交
tNpcGossip[23610]["Text4-1"] = {411,412,413,414,415}
tNpcGossip[23610]["tOption4-1"] = {411,412}


-- 宝箱 23611~23624
tNpcFace[4322] = 2093
tNpcFace[4323] = 2093
tNpcFace[4324] = 2093
tNpcFace[4325] = 2093
tNpcFace[4326] = 2093
tNpcFace[4327] = 2093
tNpcFace[4328] = 2093
-- 至宝
tNpcFace[4329] = 2093
tNpcFace[4330] = 2093
tNpcFace[4331] = 2093
tNpcFace[4332] = 2093
tNpcFace[4333] = 2093
tNpcFace[4334] = 2093
tNpcFace[4335] = 2093
-- 冥界第1~8狱秘宝
tNpcFace[4427] = 418
tNpcFace[4428] = 418
tNpcFace[4429] = 418
tNpcFace[4430] = 418
tNpcFace[4431] = 418
tNpcFace[4432] = 418
tNpcFace[4433] = 418
tNpcFace[4434] = 418
-- 冥界第1~8狱珍宝
tNpcFace[4435] = 416
tNpcFace[4436] = 416
tNpcFace[4437] = 416
tNpcFace[4438] = 416
tNpcFace[4439] = 416
tNpcFace[4440] = 416
tNpcFace[4441] = 416
tNpcFace[4442] = 416
-- 冥界第1~8狱至宝
tNpcFace[4443] = 417
tNpcFace[4444] = 417
tNpcFace[4445] = 417
tNpcFace[4446] = 417
tNpcFace[4447] = 417
tNpcFace[4448] = 417
tNpcFace[4449] = 417
tNpcFace[4450] = 417


-------------------------------物品模板
-- 冥界第1狱诏令 ~ 冥界第8狱诏令
tItem[3320186] = tItem[3320186] or {}
tItem[3320187] = tItem[3320186] or {}
tItem[3320188] = tItem[3320186] or {}
tItem[3320189] = tItem[3320186] or {}
tItem[3320190] = tItem[3320186] or {}
tItem[3320191] = tItem[3320186] or {}
tItem[3320192] = tItem[3320186] or {}
tItem[3320193] = tItem[3320186] or {}
tItem[3320186]["Function"] = function(nItemId,sItemName)
	-- 组队不能进入
	if Get_UserTeamNumbers() >= 2 then
		Sys_MsgBox(tBossForSuoYaoPill_Text[105]["HaveATeam"])
		return false
	end
	
	-- 判断激情服
	local nCityId = tBossForSuoYaoPill_Cont["TwinCity"]["Normal"]
	if SpecialServer_ChkNoGiftServer() then
		nCityId = tBossForSuoYaoPill_Cont["TwinCity"]["Special"]
	end
	
	-- 不在双龙城
	local nMapId = Get_UserMapId()
	if nMapId ~= nCityId then
		-- local sFunc = string.format("BossForSuoYaoPill_ChgMap</N>%d",nCityId)
		Sys_MsgBox(string.format(tBossForSuoYaoPill_Text[105]["NotInTwinCity"],sItemName),"NULL","NULL")
		return true
	end
	
	local nInstanceId = tBossForSuoYaoPill_Cont["InstanceId"][nItemId]
	
	-- 记录掩码
	local nEvent = tBossForSuoYaoPill_Stc[4]["EventType"]
	local nType = tBossForSuoYaoPill_Stc[4]["DataType"]
	
	Task_SetStatistic(nEvent,nType,nItemId,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	-- 进入副本
	if User_EnterInstance(nInstanceId,0,0,0) then
		local nFloor = tBossForSuoYaoPill_Cont["Ghostdom"]["Floor"][nItemId]
		local nMapId = Get_UserMapId()
		-- 刷新冥界宝箱
		for i=1, tBossForSuoYaoPill_Cont["Ghostdom"]["Total"] do
			local sName = string.format(tBossForSuoYaoPill_Text["NpcName"]["Ghostdom"][i],nFloor)
			Npc_DelDynaNpc(nMapId,"name",sName)
			
			local nLookface = tBossForSuoYaoPill_Cont["Ghostdom"]["Lookface"][nFloor][i]
			local nPosX = tBossForSuoYaoPill_Cont["Ghostdom"]["PosX"][i]
			local nPosY = tBossForSuoYaoPill_Cont["Ghostdom"]["PosY"][i]
			local nTask0 = tBossForSuoYaoPill_Cont["Ghostdom"]["Task0"][nFloor][i]
			
			Npc_CreateDynaNpc(sName,2,0,nLookface,0,0,nMapId,nPosX,nPosY,0,0,0,nTask0)
		end
		
		return true
	end
end


-------------------------------怪物掉落
local tBossForSuoYaoPill_Monster = {}
	-- 任务怪
	tBossForSuoYaoPill_Monster[1] = {}
	tBossForSuoYaoPill_Monster[1]["Function"] = BossForSuoYaoPill_KillBoss
	tBossForSuoYaoPill_Monster[1]["MonsterId"] = {4937,4938,4939,4940,4941,4942,4943,4944,4945,4946,4947,4948,4949}
	table.insert(tMonsterDrop_AreaLoad,tBossForSuoYaoPill_Monster[1])
	
	
	