------------------------------------------------------------------------------------
--Name:		170605[简体征服][任务脚本]神龙岛打宝区制作
--Purpose:		神龙岛打宝区制作
--Creator:		许乐
--Created:		2017/06/05
------------------------------------------------------------------------------------
-- 前缀
-- TreasureArea_

-- 【简体征服】神龙岛打宝区设计
-- 1、打宝区用海底地图（问一下能不能稍微拼不一样），PK场属性，不能用神龙岛药水
-- 2、打宝区设置人品值作为稀有奖励的总限量，人品值消耗完50%不掉东西，50%掉普通奖励
-- 3、打宝区杀人获得幸运状态加成，幸运值越高，打怪掉落奖励的概率越高，打BOSS掉落稀有奖励的概率也越高
-- 4、限时击杀BOSS奖励会更好（掉落和参与奖都会更好），打宝区的BOSS血量比神龙岛翻倍，同时免疫无双
-- 5、设置兑换商店，会掉落兑换代币，每日限量兑换稀有奖励，另外还会掉3000天石兑换卡（每60天1张）和3000赠点兑换卡（每6天1张）（这段限量要着重测试！）
-- 6、稀有增益怪，可以获得短时间强力增益状态（这个后面有空再做）

-- 【简体征服】打宝区修改单
-- 1、幸运状态功能已在骰宝版本里，可以配进去测试了
-- 2、调整BOSS刷新坐标，详见附件excel
-- 3、删除部分兑换商店的内容，详见附件excel
-- 4、增加小BOSS和召唤券，少量刷新在地图中，击杀必定可获得1份奖励和BUFF，使用召唤券可在当前位置召唤1只小BOSS
-- 5、增加参与奖，击杀100只怪物即可在入口处领取，每天1次
-- 6、增加神秘宝箱和钥匙，分为大小2种，宝箱每次被开启随机更换位置
-- 7、普通奖池中增加小BOSS召唤券和小钥匙，稀有奖池中增加大钥匙
-- 8、兑换商店NPC的主对白最后加2句显示最近打开了3000天石奖励的是谁，打开了3000赠点奖励的是谁

-- 【简体征服】打宝区霸主玩法及其他调整
-- 1、打宝区杀怪累积战绩积分，在打宝区每次死亡会损失20%
--    积分规则：小怪1分，小BOSS 30分，大BOSS 300分，瑶姬妖后 1000分
-- 2、战绩积分每日结算，第1名为霸主1000气力、第2-3名800气力、第4-10名500气力，奖励通过邮件发放
-- 3、玩家可在NPC处领取1个气运补充包（激活2个小时），个人战绩积分超过100才可开启，增加3层气运并刷新持续时间，霸主帮派成员可领取2个
-- 4、玩家未消耗的幸运值的80%可累积至下一天，最多累积至250%
-- 5、大奖展示除了3000天石、赠点，再加一行展示最近1个获得2洞装备的玩家的名字（根据潜龙渊精品装备包）
-- 6、新增打宝区保护药水，复制神龙之泪效果改为只能打宝区用；新增打宝区回城卷，可返回打宝区入口安全区；都在药铺出售，价格见数据文档
-- 7、BOSS奖励增加佩饰积分礼包和保护药水，普通奖励增加少量佩饰积分礼包
-- 所有数据详见附件文档中标黄部分（6个新增物品，1个掉落奖池修改，5个BOSS奖池修改，2个参与奖礼包修改）

-- 【简体征服】神纹玄宝版本打宝区
-- 1、使用水魔岛外岛地图重新刷怪，原有打宝区废弃地图：island-snail，麻烦接单脚本刷下地图。我提供坐标 
-- 2.神纹排行榜
-- 增加神纹材料排行榜玩法，玩家上交材料，每天上交最多的前10个玩家获得排名奖励（随机黄色神纹、碎片），
-- 材料在打宝区掉落，可交易
-- 3.【简体征服】神纹玄宝版本打宝区-地图属性
-- 调整地图属性、NPC站位和BOSS
-- ·位置：左下大岛下方为入口，设置一小块安全区，NPC包括原潜龙渊的NPC，卫兵看看要不要放第2个，传送提供另外3个大岛的快捷传送
-- 禁天妖兽放右下大岛，异域邪龙放左上大岛，晶魄雪妖放右上大岛，啸海巨魔刷在随机中岛上（记得公告），所有的BOSS控制技能频率降低到一半
-- ·文字：地图的背景故事文字重新包装一下，可以继续往下续
-- ·地图属性：正常PK（会增加PK值）、无战斗力、禁止挂机、禁止帮派驿站和记忆宝珠、禁止常规传送观战邀请
-- ·清心符处理：在该地图中使用清心符无论VIP都有30分钟的CD，离开地图可以正常使用（例如在地图中15分时用了1次，下一次在地图中要45分后才能用，中间离开地图使用对这个时间没有影响）
-- 地图属性：25139243523055686
-- 4.优化打宝奖励，提高奖励价值每日人品值降低到100点人品值消耗光后可获得完成令，与BOSS参与奖不同渠道但共同限量 

-- 需要使用新功能，全服公告使用超链接

-----------------------------------------------------------
-- stc掩码说明          
-- stc(159,34)		参与击杀boss的玩家 每天限制给予5次
-- stc(161,50)		记录玩家的人品值
-- stc(161,51)		第一次上线 设置玩家的人品值 为200  （只加一次）
-- stc(161,52)		普通奖池中掉落内容  50点气力包*1 每人每天限掉3个
-- stc(161,53)		普通奖池中掉落内容  微光星陨石*1 每人每天限掉3个
-- stc(161,54)		使用礼包的限制（3000天石礼包）3303526
-- stc(161,55)		使用礼包的限制（3000赠点礼包）3303527
-- stc(161,56)		背包信
-- stc(161,57)		使用潜龙渊随机传送卷时间间隔
-- stc(163,14)		判断玩家当前杀怪数量是否超过100
-- stc(163,15)		判断玩家当天是否已开启过百胜宝箱
-- 新增掩码
-- stc(167,12)		记录玩家战绩积分		每日重置
-- stc(167,13)		记录玩家已领取气运补充包的次数		每日重置
-- stc(167,14)		普通奖池中掉落内容 佩饰积分幸运包*1 每人每天限掉5个

-- stc(171,38)		记录玩家献玉数		每日重置
-- stc(171,40)		记录玩家当天是否领取过上榜奖励		每日重置
-- stc(172,19)		记录玩家进入的哪个秘境

-- 动态码说明
-- 51580		-- 记录击杀boss的时间

-- data0 记录天数，data1 记录是否物品获得的个数  
-- 51581		-- 3000天石赠点兑换卡 掉落限制   6天1个
-- 51582		-- 3000天石兑换卡 掉落限制  60天1个

-- 新增稀有奖池中的三种奖励 单服每日限量
-- data0 记录金玉满堂礼包3005121  单服每天80个，满了给魔武通玄丹碎片
-- data1 记录星陨石礼包 单服每天500个，满了给魔武通玄丹碎片
-- data2 记录龙珠 单服每天80个，满了给魔武通玄丹碎片
-- 51640

-- 新增动态码
-- 记录每日战绩积分霸主榜1-10名
-- （记录信息包括：玩家id，玩家名字，战绩数值，玩家所在的帮派名字）
-- 51746 51748	data1-data5 战绩数值  str1-str5 玩家名字
-- 51747 51749	data1-data5 玩家id	 	str1-str5 玩家所在的帮派名字  time1-time5  玩家所在的帮派id

-- 记录前一天的战绩积分霸主榜1-10名
-- 51758-51761

-- 记录每日祭神1-10名
-- （记录信息包括：玩家id，玩家名字，献玉数）
-- 51967 51969	data1-data5 献玉数  str1-str5 玩家名字
-- 51968 51970	data1-data5 玩家id	 	

-- 记录boss当前刷新的位置		
-- data0-data1- 3978 啸海狂魔的xy刷新坐标
-- data2-data3- 3970  妖后瑶姬的xy刷新坐标
-- 51971

-- 记录宝箱怪是否被打出大奖   
-- data0 = 0/1
-- 51972

-- 记录大奖获得者的信息(共10名，依次轮流显示，满10名，从头开始覆盖信息)
-- data1-data5 玩家id   str1-str5 玩家名称  time1-time5 奖励类型
-- 51972
-- data1-data5 玩家id   str1-str5 玩家名称  time1-time5 奖励类型
-- 51583

-- logid: 18000160
---------------------------------------------------------------
--记录玩家每日获得参与礼包的次数 临时表
local tTreasureArea_TempTable = {}
local tTreasureArea_TempLuckTable = {}

local tTreasureArea_Cont = {}
	-- 全天修改为10:00-23:59
	tTreasureArea_Cont["RealDayTime"] = "05:00 23:59"
	-- 刷新时间
	tTreasureArea_Cont["BrushTime"] = {}
	tTreasureArea_Cont["BrushTime"][1] = "57 59"		-- 3976	晶魄血妖
	tTreasureArea_Cont["BrushTime"][2] = "30 35"     	-- 3977	禁天邪兽 
	tTreasureArea_Cont["BrushTime"][3] = "45 50"     	-- 3978	啸海狂魔 
	tTreasureArea_Cont["BrushTime"][4] = "05 09"     	-- 3971		邪龙护法 
	tTreasureArea_Cont["BrushTime"][5] = "19:10 19:15"     	-- 3970	妖后瑶姬 
	tTreasureArea_Cont["BrushTime"][6] = "21:10 21:15"		-- 3970	妖后瑶姬 

	-- 限制进行掩码和记录排行的操作 时间
	tTreasureArea_Cont["LimitTime"] = {}
	tTreasureArea_Cont["LimitTime"][1] = "00:00 00:02"
	tTreasureArea_Cont["LimitTime"][2] = "23:58 23:59"
	
	tTreasureArea_Cont["LimitTime"][3] = "00:00 00:01"
	tTreasureArea_Cont["LimitTime"][4] = "23:59 23:59"
	
	-- 等级限制
	tTreasureArea_Cont["Level"] = 120
	tTreasureArea_Cont["Metempsychosis"] = 2
	
	tTreasureArea_Cont["TaskId"] = 3944

	-- 地图
	-- tTreasureArea_Cont["MapId"] = 10166  --潜龙渊
	tTreasureArea_Cont["MapId"] = 10250  -- 古神灵境
	
	-- 古神灵境幻界
	tTreasureArea_Cont["InstanceMapId"] = 10261  
	-- 古神灵境幻界  副本
	tTreasureArea_Cont["Instance"] = 137
	
	-- 神龙岛
	tTreasureArea_Cont["MapId_1"] = 10137
	
	tTreasureArea_Cont["Bound"] = 20
	tTreasureArea_Cont["ExistTime"] = 180
	
	--预支幸运值花费
	tTreasureArea_Cont["AdvanceLuckyMoney"] = 1000000
	tTreasureArea_Cont["AdvanceLuckyEMoney"] = 300
	
	
	tTreasureArea_Cont["NeedSpace"] = 1
	tTreasureArea_Cont["SourceChipId"] = 3306885 --神器源晶
	tTreasureArea_Cont["NeedSourceChip"] = 300 --数量
	
	-- 碎片合成
	tTreasureArea_Cont["ScrapNum"] = {}
	tTreasureArea_Cont["ScrapNum"][3303519] = 10	-- 魔武通玄丹碎片  3303519  10合1 
	tTreasureArea_Cont["ScrapNum"][3307088] = 3		-- 邪龙陨星  3307088  3合1 
	tTreasureArea_Cont["ScrapNum"][3307089] = 5		-- 妖兽气晶  3307089  5合1 
	tTreasureArea_Cont["ScrapNum"][3307090] = 6		-- 雪妖赤石  3307090  6合1 
	
	-- 幸运状态
	tTreasureArea_Cont["StatusType"] = 208
	tTreasureArea_Cont["StatusTime"] = 300		-- 状态持续时间
	
	-- 神纹转换
	tTreasureArea_Cont["ShenWen"] = {}
	tTreasureArea_Cont["ShenWen"][1] = 4031301	-- 夺魂
	tTreasureArea_Cont["ShenWen"][2] = 4031001	-- 追命
	tTreasureArea_Cont["ExShenWen"] = {}
	tTreasureArea_Cont["ExShenWen"][1] = 4031001	-- 追命
	tTreasureArea_Cont["ExShenWen"][2] = 4031301	-- 夺魂
	
	-- boss 刷新位置
	-- 3976	晶魄血妖
	tTreasureArea_Cont[3976] = {}
	tTreasureArea_Cont[3976]["CellX"] = 484
	tTreasureArea_Cont[3976]["CellY"] = 176
	tTreasureArea_Cont[3976]["GenId"] = 22121
	-- tTreasureArea_Cont[3976]["TransNpc"] = 20861
	-- 3977	禁天邪兽
	tTreasureArea_Cont[3977] = {}
	tTreasureArea_Cont[3977]["CellX"] = 1020
	tTreasureArea_Cont[3977]["CellY"] = 698
	tTreasureArea_Cont[3977]["GenId"] = 22122
	-- tTreasureArea_Cont[3977]["TransNpc"] = 20862
	-- 3978	啸海狂魔
	tTreasureArea_Cont[3978] = {}
	tTreasureArea_Cont[3978]["CellX"] = 593
	tTreasureArea_Cont[3978]["CellY"] = 603
	tTreasureArea_Cont[3978]["GenId"] = 22123
	tTreasureArea_Cont[3978]["TransNpc"] = 20863
	-- 改为3选1 刷新
	tTreasureArea_Cont[3978]["RandPos"] = {}
	tTreasureArea_Cont[3978]["RandPos"][1] = {593,603}
	tTreasureArea_Cont[3978]["RandPos"][2] = {620,843}
	tTreasureArea_Cont[3978]["RandPos"][3] = {930,908}
	-- 传送阵的位置
	tTreasureArea_Cont[3978]["TransPos"] = {}
	tTreasureArea_Cont[3978]["TransPos"][1] = {603,618}
	tTreasureArea_Cont[3978]["TransPos"][2] = {637,865}
	tTreasureArea_Cont[3978]["TransPos"][3] = {946,921}
	
	-- 3971		邪龙护法
	tTreasureArea_Cont[3971] = {}
	tTreasureArea_Cont[3971]["CellX"] = 163
	tTreasureArea_Cont[3971]["CellY"] = 415
	tTreasureArea_Cont[3971]["GenId"] = 22124
	-- tTreasureArea_Cont[3971]["TransNpc"] = 20864
	-- 3970	妖后瑶姬
	tTreasureArea_Cont[3970] = {}
	tTreasureArea_Cont[3970]["CellX"] = 285
	tTreasureArea_Cont[3970]["CellY"] = 214
	tTreasureArea_Cont[3970]["GenId"] = 22125
	tTreasureArea_Cont[3970]["TransNpc"] = 20865
	-- 改为5选1 刷新
	tTreasureArea_Cont[3970]["RandPos"] = {}
	tTreasureArea_Cont[3970]["RandPos"][1] = {285,214}
	tTreasureArea_Cont[3970]["RandPos"][2] = {627,597}
	tTreasureArea_Cont[3970]["RandPos"][3] = {654,908}
	tTreasureArea_Cont[3970]["RandPos"][4] = {971,960}
	tTreasureArea_Cont[3970]["RandPos"][5] = {1210,972}
	-- 传送阵的位置
	tTreasureArea_Cont[3970]["TransPos"] = {}
	tTreasureArea_Cont[3970]["TransPos"][1] = {297,230}
	tTreasureArea_Cont[3970]["TransPos"][2] = {640,613}
	tTreasureArea_Cont[3970]["TransPos"][3] = {663,925}
	tTreasureArea_Cont[3970]["TransPos"][4] = {990,974}
	tTreasureArea_Cont[3970]["TransPos"][5] = {1223,987}
	
	-- boss 所在岛屿的传送位点
	-- 3976	晶魄血妖
	tTreasureArea_Cont[3976]["IslandCellX"] = 466
	tTreasureArea_Cont[3976]["IslandCellY"] = 295
	-- 3977	禁天邪兽
	tTreasureArea_Cont[3977]["IslandCellX"] = 922
	tTreasureArea_Cont[3977]["IslandCellY"] = 817
	-- 3978	啸海狂魔
	tTreasureArea_Cont[3978]["IslandCellX"] = 634
	tTreasureArea_Cont[3978]["IslandCellY"] = 609
	-- 3971		邪龙护法
	tTreasureArea_Cont[3971]["IslandCellX"] = 358
	tTreasureArea_Cont[3971]["IslandCellY"] = 642
	-- 3970	妖后瑶姬
	tTreasureArea_Cont[3970]["IslandCellX"] = 634
	tTreasureArea_Cont[3970]["IslandCellY"] = 609
	
	-- 3978	啸海狂魔(随机位置 所在的岛屿传送点)
	tTreasureArea_Cont[3978]["IslandPos"] = {}
	tTreasureArea_Cont[3978]["IslandPos"][1] = {634,609}
	tTreasureArea_Cont[3978]["IslandPos"][2] = {668,899}
	tTreasureArea_Cont[3978]["IslandPos"][3] = {968,959}
	-- 3970	妖后瑶姬(随机位置 所在的岛屿传送点)
	tTreasureArea_Cont[3970]["IslandPos"] = {}
	tTreasureArea_Cont[3970]["IslandPos"][1] = {278,207}
	tTreasureArea_Cont[3970]["IslandPos"][2] = {618,561}
	tTreasureArea_Cont[3970]["IslandPos"][3] = {622,876}
	tTreasureArea_Cont[3970]["IslandPos"][4] = {939,946}
	tTreasureArea_Cont[3970]["IslandPos"][5] = {1189,938}
	

	tTreasureArea_Cont["GenId"] = {}
	-- 盗宝小妖
	tTreasureArea_Cont["GenId"][3979] = 22232
	tTreasureArea_Cont["GenId"][3980] = 22233
	tTreasureArea_Cont["GenId"][3981] = 22234
	tTreasureArea_Cont["GenId"][3982] = 22235
	tTreasureArea_Cont["GenId"][3983] = 22236
	tTreasureArea_Cont["GenId"][3984] = 22237
	tTreasureArea_Cont["GenId"][3985] = 22238
	tTreasureArea_Cont["GenId"][3986] = 22239
	tTreasureArea_Cont["GenId"][3992] = 23345
	--宝箱怪
	tTreasureArea_Cont["GenId"][4613] = 23356
	tTreasureArea_Cont["GenId"][4614] = 23357
	tTreasureArea_Cont["GenId"][4615] = 23358

	--宝箱npcid
	tTreasureArea_Cont["BoxNpc"] = {}
	tTreasureArea_Cont["BoxNpc"][1] = 21973
	tTreasureArea_Cont["BoxNpc"][2] = 21975
	tTreasureArea_Cont["BoxNpc"][3] = 21976
	tTreasureArea_Cont["BoxNpc"][4] = 21974
	tTreasureArea_Cont["BoxNpc"][5] = 22598
	tTreasureArea_Cont["BoxNpc"][6] = 22599
	tTreasureArea_Cont["BoxNpc"][7] = 22600
	tTreasureArea_Cont["BoxNpc"][8] = 22601
	tTreasureArea_Cont["BoxNpc"][9] = 22602
	tTreasureArea_Cont["BoxNpc"][10] = 22603
	tTreasureArea_Cont["BoxNpc"][11] = 22604
	tTreasureArea_Cont["BoxNpc"][12] = 22605
	tTreasureArea_Cont["BoxNpc"][13] = 22606
	tTreasureArea_Cont["BoxNpc"][14] = 22607
	tTreasureArea_Cont["BoxNpc"][15] = 22608
	tTreasureArea_Cont["BoxNpc"][16] = 22609
	
	--宝箱怪id
	tTreasureArea_Cont["BoxMonster"] = {}
	tTreasureArea_Cont["BoxMonster"][1] = 4613
	tTreasureArea_Cont["BoxMonster"][2] = 4614
	tTreasureArea_Cont["BoxMonster"][3] = 4615
	
	-- 宝箱刷新坐标
	tTreasureArea_Cont["BoxPos"] = {}  -- 每个npc都是四个点中随机一个
	-- 潜龙珍宝 21973
	tTreasureArea_Cont["BoxPos"][21973] = {}-----4大岛 各一个
	tTreasureArea_Cont["BoxPos"][21973][1] = {207,498}
	tTreasureArea_Cont["BoxPos"][21973][2] = {493,208}
	tTreasureArea_Cont["BoxPos"][21973][3] = {848,1129}
	tTreasureArea_Cont["BoxPos"][21973][4] = {867,652}
	-- 潜龙珍宝 21975
	tTreasureArea_Cont["BoxPos"][21975] = {}-----4大岛 各一个
	tTreasureArea_Cont["BoxPos"][21975][1] = {230,584}
	tTreasureArea_Cont["BoxPos"][21975][2] = {888,1217}
	tTreasureArea_Cont["BoxPos"][21975][3] = {461,221}
	tTreasureArea_Cont["BoxPos"][21975][4] = {961,756}
	-- 潜龙珍宝 21976
	tTreasureArea_Cont["BoxPos"][21976] = {}  --  左上大岛
	tTreasureArea_Cont["BoxPos"][21976][1] = {293,635}  
	tTreasureArea_Cont["BoxPos"][21976][2] = {332,596} 
	tTreasureArea_Cont["BoxPos"][21976][3] = {292,556} 
	tTreasureArea_Cont["BoxPos"][21976][4] = {178,516}  
	-- 潜龙珍宝 22598
	tTreasureArea_Cont["BoxPos"][22598] = {}  -- 左上大岛
	tTreasureArea_Cont["BoxPos"][22598][1] = {262,589}
	tTreasureArea_Cont["BoxPos"][22598][2] = {181,455}
	tTreasureArea_Cont["BoxPos"][22598][3] = {302,514}
	tTreasureArea_Cont["BoxPos"][22598][4] = {319,582}
	-- 潜龙珍宝 22599
	tTreasureArea_Cont["BoxPos"][22599] = {}  -- 左下大岛
	tTreasureArea_Cont["BoxPos"][22599][1] = {825,1175}
	tTreasureArea_Cont["BoxPos"][22599][2] = {900,1243}
	tTreasureArea_Cont["BoxPos"][22599][3] = {927,1197}
	tTreasureArea_Cont["BoxPos"][22599][4] = {865,1074}
	-- 潜龙珍宝 22600
	tTreasureArea_Cont["BoxPos"][22600] = {}  -- 右上大岛
	tTreasureArea_Cont["BoxPos"][22600][1] = {457,206}
	tTreasureArea_Cont["BoxPos"][22600][2] = {549,206}
	tTreasureArea_Cont["BoxPos"][22600][3] = {453,133}
	tTreasureArea_Cont["BoxPos"][22600][4] = {444,235}
	-- 潜龙珍宝 22601
	tTreasureArea_Cont["BoxPos"][22601] = {}  -- 右下大岛
	tTreasureArea_Cont["BoxPos"][22601][1] = {888,687}
	tTreasureArea_Cont["BoxPos"][22601][2] = {940,741}
	tTreasureArea_Cont["BoxPos"][22601][3] = {998,728}
	tTreasureArea_Cont["BoxPos"][22601][4] = {928,721}
	-- 潜龙珍宝 22602
	tTreasureArea_Cont["BoxPos"][22602] = {}  --    左下大岛
	tTreasureArea_Cont["BoxPos"][22602][1] = {865,1181}
	tTreasureArea_Cont["BoxPos"][22602][2] = {884,1221}  
	tTreasureArea_Cont["BoxPos"][22602][3] = {875,1270}   
	tTreasureArea_Cont["BoxPos"][22602][4] = {950,1284}  
	-- 潜龙珍宝 22603
	tTreasureArea_Cont["BoxPos"][22603] = {}  --   右上大岛
	tTreasureArea_Cont["BoxPos"][22603][1] = {440,139}   
	tTreasureArea_Cont["BoxPos"][22603][2] = {377,123} 
	tTreasureArea_Cont["BoxPos"][22603][3] = {489,129} 
	tTreasureArea_Cont["BoxPos"][22603][4] = {380,43}   
	-- 潜龙珍宝 22604
	tTreasureArea_Cont["BoxPos"][22604] = {}  --   右下大岛
	tTreasureArea_Cont["BoxPos"][22604][1] = {893,786}   
	tTreasureArea_Cont["BoxPos"][22604][2] = {936,822}  
	tTreasureArea_Cont["BoxPos"][22604][3] = {951,788}  
	tTreasureArea_Cont["BoxPos"][22604][4] = {1029,778}  
	-- 潜龙珍宝 22605
	tTreasureArea_Cont["BoxPos"][22605] = {}   --    4大岛 各一个
	tTreasureArea_Cont["BoxPos"][22605][1] = {936,1244}    
	tTreasureArea_Cont["BoxPos"][22605][2] = {371,71}   
	tTreasureArea_Cont["BoxPos"][22605][3] = {878,726}   
	tTreasureArea_Cont["BoxPos"][22605][4] = {187,525}   
	-- 潜龙珍宝 22606
	tTreasureArea_Cont["BoxPos"][22606] = {}  --   4大岛 各一个
	tTreasureArea_Cont["BoxPos"][22606][1] = {971,1234}   
	tTreasureArea_Cont["BoxPos"][22606][2] = {375,109}  
	tTreasureArea_Cont["BoxPos"][22606][3] = {899,754}  
	tTreasureArea_Cont["BoxPos"][22606][4] = {280,566}  
	
	-- 潜龙至宝 21974
	tTreasureArea_Cont["BoxPos"][21974] = {}  -- 左下大岛
	tTreasureArea_Cont["BoxPos"][21974][1] = {801,1070}
	tTreasureArea_Cont["BoxPos"][21974][2] = {813,1119}
	tTreasureArea_Cont["BoxPos"][21974][3] = {923,1210}
	tTreasureArea_Cont["BoxPos"][21974][4] = {854,1218}
	-- 潜龙至宝 22607
	tTreasureArea_Cont["BoxPos"][22607] = {}  -- 左上大岛
	tTreasureArea_Cont["BoxPos"][22607][1] = {251,538}
	tTreasureArea_Cont["BoxPos"][22607][2] = {255,587}
	tTreasureArea_Cont["BoxPos"][22607][3] = {311,606}
	tTreasureArea_Cont["BoxPos"][22607][4] = {308,541}
	-- 潜龙至宝 22608
	tTreasureArea_Cont["BoxPos"][22608] = {}  -- 右上大岛
	tTreasureArea_Cont["BoxPos"][22608][1] = {472,219}
	tTreasureArea_Cont["BoxPos"][22608][2] = {519,266}
	tTreasureArea_Cont["BoxPos"][22608][3] = {413,176}
	tTreasureArea_Cont["BoxPos"][22608][4] = {418,129}
	-- 潜龙至宝 22609
	tTreasureArea_Cont["BoxPos"][22609] = {}  -- 右下大岛
	tTreasureArea_Cont["BoxPos"][22609][1] = {880,659}
	tTreasureArea_Cont["BoxPos"][22609][2] = {822,582}
	tTreasureArea_Cont["BoxPos"][22609][3] = {859,685}
	tTreasureArea_Cont["BoxPos"][22609][4] = {955,812}
	
	-- 4613	固化石幸运宝箱
	tTreasureArea_Cont["BoxPos"][4613] = {}
	tTreasureArea_Cont["BoxPos"][4613][1] = {}
	tTreasureArea_Cont["BoxPos"][4613][1][1] = {286,223}
	tTreasureArea_Cont["BoxPos"][4613][1][2] = {274,221}
	tTreasureArea_Cont["BoxPos"][4613][1][3] = {270,206}
	tTreasureArea_Cont["BoxPos"][4613][1][4] = {295,213}
	tTreasureArea_Cont["BoxPos"][4613][1][5] = {312,255}
	tTreasureArea_Cont["BoxPos"][4613][2] = {}
	tTreasureArea_Cont["BoxPos"][4613][2][1] = {637,594}
	tTreasureArea_Cont["BoxPos"][4613][2][2] = {635,615}
	tTreasureArea_Cont["BoxPos"][4613][2][3] = {620,628}
	tTreasureArea_Cont["BoxPos"][4613][2][4] = {602,614}
	tTreasureArea_Cont["BoxPos"][4613][2][5] = {615,596}
	tTreasureArea_Cont["BoxPos"][4613][3] = {}
	tTreasureArea_Cont["BoxPos"][4613][3][1] = {646,922}
	tTreasureArea_Cont["BoxPos"][4613][3][2] = {625,911}
	tTreasureArea_Cont["BoxPos"][4613][3][3] = {632,892}
	tTreasureArea_Cont["BoxPos"][4613][3][4] = {666,901}
	tTreasureArea_Cont["BoxPos"][4613][3][5] = {679,926}
	tTreasureArea_Cont["BoxPos"][4613][4] = {}
	tTreasureArea_Cont["BoxPos"][4613][4][1] = {959,943}
	tTreasureArea_Cont["BoxPos"][4613][4][2] = {951,956}
	tTreasureArea_Cont["BoxPos"][4613][4][3] = {950,978}
	tTreasureArea_Cont["BoxPos"][4613][4][4] = {976,1003}
	tTreasureArea_Cont["BoxPos"][4613][4][5] = {984,990}
	tTreasureArea_Cont["BoxPos"][4613][5] = {}
	tTreasureArea_Cont["BoxPos"][4613][5][1] = {1211,989}
	tTreasureArea_Cont["BoxPos"][4613][5][2] = {1181,974}
	tTreasureArea_Cont["BoxPos"][4613][5][3] = {1182,952}
	tTreasureArea_Cont["BoxPos"][4613][5][4] = {1211,966}
	tTreasureArea_Cont["BoxPos"][4613][5][5] = {1208,984}
	
	-- 4614	金钢坚钻幸运宝箱
	tTreasureArea_Cont["BoxPos"][4614] = {}
	tTreasureArea_Cont["BoxPos"][4614][1] = {}
	tTreasureArea_Cont["BoxPos"][4614][1][1] = {286,223}
	tTreasureArea_Cont["BoxPos"][4614][1][2] = {274,221}
	tTreasureArea_Cont["BoxPos"][4614][1][3] = {270,206}
	tTreasureArea_Cont["BoxPos"][4614][1][4] = {295,213}
	tTreasureArea_Cont["BoxPos"][4614][1][5] = {312,255}
	tTreasureArea_Cont["BoxPos"][4614][2] = {}  
	tTreasureArea_Cont["BoxPos"][4614][2][1] = {637,594}
	tTreasureArea_Cont["BoxPos"][4614][2][2] = {635,615}
	tTreasureArea_Cont["BoxPos"][4614][2][3] = {620,628}
	tTreasureArea_Cont["BoxPos"][4614][2][4] = {602,614}
	tTreasureArea_Cont["BoxPos"][4614][2][5] = {615,596}
	tTreasureArea_Cont["BoxPos"][4614][3] = {}  
	tTreasureArea_Cont["BoxPos"][4614][3][1] = {646,922}
	tTreasureArea_Cont["BoxPos"][4614][3][2] = {625,911}
	tTreasureArea_Cont["BoxPos"][4614][3][3] = {632,892}
	tTreasureArea_Cont["BoxPos"][4614][3][4] = {666,901}
	tTreasureArea_Cont["BoxPos"][4614][3][5] = {679,926}
	tTreasureArea_Cont["BoxPos"][4614][4] = {}  
	tTreasureArea_Cont["BoxPos"][4614][4][1] = {959,943}
	tTreasureArea_Cont["BoxPos"][4614][4][2] = {951,956}
	tTreasureArea_Cont["BoxPos"][4614][4][3] = {950,978}
	tTreasureArea_Cont["BoxPos"][4614][4][4] = {976,1003}
	tTreasureArea_Cont["BoxPos"][4614][4][5] = {984,990}
	tTreasureArea_Cont["BoxPos"][4614][5] = {}  
	tTreasureArea_Cont["BoxPos"][4614][5][1] = {1211,989}
	tTreasureArea_Cont["BoxPos"][4614][5][2] = {1181,974}
	tTreasureArea_Cont["BoxPos"][4614][5][3] = {1182,952}
	tTreasureArea_Cont["BoxPos"][4614][5][4] = {1211,966}
	tTreasureArea_Cont["BoxPos"][4614][5][5] = {1208,984}
	-- 4615	玄元宝石幸运宝箱
	tTreasureArea_Cont["BoxPos"][4615] = {}
	tTreasureArea_Cont["BoxPos"][4615][1] = {}
	tTreasureArea_Cont["BoxPos"][4615][1][1] = {286,223}
	tTreasureArea_Cont["BoxPos"][4615][1][2] = {274,221}
	tTreasureArea_Cont["BoxPos"][4615][1][3] = {270,206}
	tTreasureArea_Cont["BoxPos"][4615][1][4] = {295,213}
	tTreasureArea_Cont["BoxPos"][4615][1][5] = {312,255}
	tTreasureArea_Cont["BoxPos"][4615][2] = {}  
	tTreasureArea_Cont["BoxPos"][4615][2][1] = {637,594}
	tTreasureArea_Cont["BoxPos"][4615][2][2] = {635,615}
	tTreasureArea_Cont["BoxPos"][4615][2][3] = {620,628}
	tTreasureArea_Cont["BoxPos"][4615][2][4] = {602,614}
	tTreasureArea_Cont["BoxPos"][4615][2][5] = {615,596}
	tTreasureArea_Cont["BoxPos"][4615][3] = {}  
	tTreasureArea_Cont["BoxPos"][4615][3][1] = {646,922}
	tTreasureArea_Cont["BoxPos"][4615][3][2] = {625,911}
	tTreasureArea_Cont["BoxPos"][4615][3][3] = {632,892}
	tTreasureArea_Cont["BoxPos"][4615][3][4] = {666,901}
	tTreasureArea_Cont["BoxPos"][4615][3][5] = {679,926}
	tTreasureArea_Cont["BoxPos"][4615][4] = {}  
	tTreasureArea_Cont["BoxPos"][4615][4][1] = {959,943}
	tTreasureArea_Cont["BoxPos"][4615][4][2] = {951,956}
	tTreasureArea_Cont["BoxPos"][4615][4][3] = {950,978}
	tTreasureArea_Cont["BoxPos"][4615][4][4] = {976,1003}
	tTreasureArea_Cont["BoxPos"][4615][4][5] = {984,990}
	tTreasureArea_Cont["BoxPos"][4615][5] = {}  
	tTreasureArea_Cont["BoxPos"][4615][5][1] = {1211,989}
	tTreasureArea_Cont["BoxPos"][4615][5][2] = {1181,974}
	tTreasureArea_Cont["BoxPos"][4615][5][3] = {1182,952}
	tTreasureArea_Cont["BoxPos"][4615][5][4] = {1211,966}
	tTreasureArea_Cont["BoxPos"][4615][5][5] = {1208,984}
	
	-- npc位置
	-- 20824	于观海
	tTreasureArea_Cont[20824] = {}
	tTreasureArea_Cont[20824]["CellX"] = 1016
	tTreasureArea_Cont[20824]["CellY"] = 1294
	-- 20825	风不平
	tTreasureArea_Cont[20825] = {}
	tTreasureArea_Cont[20825]["CellX"] = 1004
	tTreasureArea_Cont[20825]["CellY"] = 1283
	-- 21875	侯勤
	tTreasureArea_Cont[21875] = {}
	tTreasureArea_Cont[21875]["CellX"] = 998
	tTreasureArea_Cont[21875]["CellY"] = 1292
	-- 22560	祭神台
	tTreasureArea_Cont[22560] = {}
	tTreasureArea_Cont[22560]["CellX"] = 1018 
	tTreasureArea_Cont[22560]["CellY"] = 1288
	
	-- 返回栖侠镇
	tTreasureArea_Cont["Safe"] = {}
	tTreasureArea_Cont["Safe"]["MapId"] = 10137
	tTreasureArea_Cont["Safe"]["CellX"] = 98
	tTreasureArea_Cont["Safe"]["CellY"] = 408
	tTreasureArea_Cont["Safe"]["Bound"] = 5
	
	-- 兑换商店npc
	tTreasureArea_Cont["ExchangeNpc"] = 21875
	tTreasureArea_Cont["RankNpc"] = 22560
	
	-- 传送位置
	tTreasureArea_Cont["Send"] = {}
	tTreasureArea_Cont["Send"]["CellX"] = 1012 --63
	tTreasureArea_Cont["Send"]["CellY"] = 1288 --129
	tTreasureArea_Cont["Send"]["Bound"] = 5
	
	-- 返回神龙岛位置
	tTreasureArea_Cont["Back"] = {}
	tTreasureArea_Cont["Back"]["CellX"] = 453
	tTreasureArea_Cont["Back"]["CellY"] = 480
	tTreasureArea_Cont["Back"]["Bound"] = 5
	tTreasureArea_Cont["Back"]["MapId"] = 10137
	
	-- bossId
	tTreasureArea_Cont["BossId"] = {}
	tTreasureArea_Cont["BossId"][1] = 3976		-- 晶魄血妖
	tTreasureArea_Cont["BossId"][2] = 3977     -- 禁天邪兽
	tTreasureArea_Cont["BossId"][3] = 3978     -- 啸海狂魔
	tTreasureArea_Cont["BossId"][4] = 3971     -- 邪龙护法 
	tTreasureArea_Cont["BossId"][5] = 3970     -- 妖后瑶姬
	
	-- 奖励类型
	tTreasureArea_Cont["BigPrize"] = {}
	tTreasureArea_Cont["BigPrize"][3303526] = 1	-- 冥界诏令礼盒
	tTreasureArea_Cont["BigPrize"][3303527] = 2	-- 潜龙渊豪华天石赠礼包
	tTreasureArea_Cont["BigPrize"][3307088] = 3	-- 邪龙陨星
	tTreasureArea_Cont["BigPrize"][3307089] = 4	-- 妖兽气晶
	tTreasureArea_Cont["BigPrize"][3307090] = 5	-- 雪妖赤石
	tTreasureArea_Cont["BigPrize"][4613] = 6	-- 固化石幸运宝箱
	tTreasureArea_Cont["BigPrize"][4614] = 7	-- 金钢坚钻幸运宝箱
	tTreasureArea_Cont["BigPrize"][4615] = 8	-- 玄元宝石幸运宝箱
	
	-- 动态码
	tTreasureArea_Cont["Global"] = {}
	tTreasureArea_Cont["Global"][1] = 51580		-- 记录击杀boss时间
	
	-- data0 记录天数，data1 记录是否物品获得的个数
	tTreasureArea_Cont["Global"][2] = 51581		-- 3000天石赠点兑换卡 掉落限制   6天1个
	tTreasureArea_Cont["Global"][3] = 51582	-- 3000天石兑换卡 掉落限制  60天1个 
	
	-- 记录大奖获得者的信息(共10名，依次轮流显示，满10名，从头开始覆盖信息)
	-- data1-data5 玩家id   str1-str5 玩家名称  time1-time5 奖励类型
	tTreasureArea_Cont["Global"][4] = {51972,51583}
	
	-- 新增稀有奖池中的三种奖励 单服每日限量
	-- data0 记录金玉满堂礼包3005121  单服每天80个，满了给魔武通玄丹碎片
	-- data1 记录星陨石礼包 单服每天500个，满了给魔武通玄丹碎片
	-- data2 记录龙珠 单服每天80个，满了给魔武通玄丹碎片
	tTreasureArea_Cont["Global"][5] = 51640
	
	-- 动态码Pos
	tTreasureArea_Cont["Global"][3976] = 0		-- 晶魄血妖
	tTreasureArea_Cont["Global"][3977] = 1      -- 禁天邪兽 
	tTreasureArea_Cont["Global"][3978] = 2      -- 啸海狂魔
	tTreasureArea_Cont["Global"][3971] = 3		-- 邪龙护法
	tTreasureArea_Cont["Global"][3970] = 4		-- 妖后瑶姬
	
	-- 记录每日战绩积分霸主榜1-10名
	-- （记录信息包括：玩家id，玩家名字，战绩数值，玩家所在的帮派名字）
	-- 51746 51748	data1-data5 战绩数值  str1-str5 玩家名字
	-- 51747 51749	data1-data5 玩家id	 	str1-str5 玩家所在的帮派名字  time1-time5  玩家所在的帮派id
	tTreasureArea_Cont["Rank"] = {}
	tTreasureArea_Cont["Rank"][1] = {51746,51747}	-- 1-5
	tTreasureArea_Cont["Rank"][2] = {51748,51749}	-- 6-10
	-- 记录前一天的战绩积分霸主榜1-10名
	tTreasureArea_Cont["LastRank"] = {}
	tTreasureArea_Cont["LastRank"][1] = {51758,51759}	-- 1-5
	tTreasureArea_Cont["LastRank"][2] = {51760,51761}	-- 6-10
	
	-- 记录每日祭神1-10名
	-- （记录信息包括：玩家id，玩家名字，献玉数）
	-- 51967 51969	data1-data5 献玉数  str1-str5 玩家名字
	-- 51968 51970	data1-data5 玩家id	
	tTreasureArea_Cont["JadeRank"] = {}
	tTreasureArea_Cont["JadeRank"][1] = {51967,51968}	-- 1-5
	tTreasureArea_Cont["JadeRank"][2] = {51969,51970}	-- 6-10
	
	-- 记录boss当前刷新的位置
	tTreasureArea_Cont["BossGlobal"] = 51971
	
	-- 记录宝箱怪是否被打出大奖  data0 = 0/1
	tTreasureArea_Cont["BoxGlobal"] = 51972
	
	-- 动态码对应的物品id
	tTreasureArea_Cont[51581] = 3303486
	tTreasureArea_Cont[51582] = 3303485
	
	-- 宝箱npc 对应的物品id
	tTreasureArea_Cont[21973] = 3303973
	tTreasureArea_Cont[21975] = 3303973
	tTreasureArea_Cont[21976] = 3303973
	tTreasureArea_Cont[22598] = 3303973
	tTreasureArea_Cont[22599] = 3303973
	tTreasureArea_Cont[22600] = 3303973
	tTreasureArea_Cont[22601] = 3303973
	tTreasureArea_Cont[22602] = 3303973
	tTreasureArea_Cont[22603] = 3303973
	tTreasureArea_Cont[22604] = 3303973
	tTreasureArea_Cont[22605] = 3303973
	tTreasureArea_Cont[22606] = 3303973

	tTreasureArea_Cont[21974] = 3303974
	tTreasureArea_Cont[22607] = 3303974
	tTreasureArea_Cont[22608] = 3303974
	tTreasureArea_Cont[22609] = 3303974
	
	-- 献上所有神明玉
	tTreasureArea_Cont["HandIn"] = 3307083

local tTreasureArea_BrushBoss = {}
	tTreasureArea_BrushBoss["MonsterId"] = {}
	tTreasureArea_BrushBoss["MonsterId"][1] = 3971			-- 邪龙护法
	tTreasureArea_BrushBoss["MonsterId"][2] = 3977          -- 禁天邪兽
	tTreasureArea_BrushBoss["MonsterId"][3] = 3978          -- 啸海狂魔
	tTreasureArea_BrushBoss["MonsterId"][4] = 3976          -- 晶魄血妖
	tTreasureArea_BrushBoss["MonsterId"][5] = 3970          -- 妖后瑶姬
	
	-- 怪物对应 显示的对白和选项
	tTreasureArea_BrushBoss["BossDialog"] = {}
	tTreasureArea_BrushBoss["BossDialog"][1] = {3971,133,2}			-- 邪龙护法
	tTreasureArea_BrushBoss["BossDialog"][2] = {3977,134,3}          -- 禁天邪兽
	tTreasureArea_BrushBoss["BossDialog"][3] = {3978,135,4}          -- 啸海狂魔
	tTreasureArea_BrushBoss["BossDialog"][4] = {3976,136,5}          -- 晶魄血妖
	tTreasureArea_BrushBoss["BossDialog"][5] = {3970,137,6}          -- 妖后瑶姬

local tTreasureArea_FreshBox = {}
	tTreasureArea_FreshBox["BoxId"] = 21385
	tTreasureArea_FreshBox["GlobalId"] = 52962
	tTreasureArea_FreshBox["Received"] = 0
	tTreasureArea_FreshBox["Time"] = 4
	tTreasureArea_FreshBox["CD"] = 30
	tTreasureArea_FreshBox["Random"] = {}
	tTreasureArea_FreshBox["Random"]["StartNum"] = 7
	tTreasureArea_FreshBox["Random"]["EndNum"] = 10000
	tTreasureArea_FreshBox["MapId"] = {1002,10250,10137}
	tTreasureArea_FreshBox["RefreshBoxMonster"] = {}
	tTreasureArea_FreshBox["RefreshBoxMonster"]["MonsterId"] = 4912
	tTreasureArea_FreshBox["RefreshBoxMonster"]["GenId"] = 26464
	
local tTreasureArea_AwardItem = {}
	tTreasureArea_AwardItem["BossBox"] = {}
	tTreasureArea_AwardItem["BossBox"][1] = {}
	tTreasureArea_AwardItem["BossBox"][1]["ItemChanceSum"] = 10000
	-- 赤炼石+4(赠)
	tTreasureArea_AwardItem["BossBox"][1][1] = {}
	tTreasureArea_AwardItem["BossBox"][1][1]["RandomItemChanceType"] = 2
	tTreasureArea_AwardItem["BossBox"][1][1]["ItemChance"] = 1250
	tTreasureArea_AwardItem["BossBox"][1][1]["RewardEffect"] = {}
	tTreasureArea_AwardItem["BossBox"][1][1]["RewardEffect"]["SzObj"] = "self"
	tTreasureArea_AwardItem["BossBox"][1][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tTreasureArea_AwardItem["BossBox"][1][1]["RewardItem"] = {}
	tTreasureArea_AwardItem["BossBox"][1][1]["RewardItem"][1] = {}
	tTreasureArea_AwardItem["BossBox"][1][1]["RewardItem"][1]["Id"] = 730004
	tTreasureArea_AwardItem["BossBox"][1][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tTreasureArea_AwardItem["BossBox"][1][1]["LogId"] = 18000160
	tTreasureArea_AwardItem["BossBox"][1][1]["LogStep"] = "2"
	tTreasureArea_AwardItem["BossBox"][1][1]["RewardBroadCast"] = tTreasureArea_Text["Broadcast"]["BossBox"][1]
	tTreasureArea_AwardItem["BossBox"][1][1]["RewardBroadCastType"] = 2007
	-- 赤炼石+5(赠)
	tTreasureArea_AwardItem["BossBox"][1][2] = {}
	tTreasureArea_AwardItem["BossBox"][1][2]["RandomItemChanceType"] = 2
	tTreasureArea_AwardItem["BossBox"][1][2]["ItemChance"] = 1125
	tTreasureArea_AwardItem["BossBox"][1][2]["RewardEffect"] = {}
	tTreasureArea_AwardItem["BossBox"][1][2]["RewardEffect"]["SzObj"] = "self"
	tTreasureArea_AwardItem["BossBox"][1][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tTreasureArea_AwardItem["BossBox"][1][2]["RewardItem"] = {}
	tTreasureArea_AwardItem["BossBox"][1][2]["RewardItem"][1] = {}
	tTreasureArea_AwardItem["BossBox"][1][2]["RewardItem"][1]["Id"] = 730005
	tTreasureArea_AwardItem["BossBox"][1][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tTreasureArea_AwardItem["BossBox"][1][2]["LogId"] = 18000160
	tTreasureArea_AwardItem["BossBox"][1][2]["LogStep"] = "2"
	tTreasureArea_AwardItem["BossBox"][1][2]["RewardBroadCast"] = tTreasureArea_Text["Broadcast"]["BossBox"][2]
	tTreasureArea_AwardItem["BossBox"][1][2]["RewardBroadCastType"] = 2007
	-- 赤炼石+6(赠)
	tTreasureArea_AwardItem["BossBox"][1][3] = {}
	tTreasureArea_AwardItem["BossBox"][1][3]["RandomItemChanceType"] = 2
	tTreasureArea_AwardItem["BossBox"][1][3]["ItemChance"] = 125
	tTreasureArea_AwardItem["BossBox"][1][3]["RewardEffect"] = {}
	tTreasureArea_AwardItem["BossBox"][1][3]["RewardEffect"]["SzObj"] = "self"
	tTreasureArea_AwardItem["BossBox"][1][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tTreasureArea_AwardItem["BossBox"][1][3]["RewardItem"] = {}
	tTreasureArea_AwardItem["BossBox"][1][3]["RewardItem"][1] = {}
	tTreasureArea_AwardItem["BossBox"][1][3]["RewardItem"][1]["Id"] = 730006
	tTreasureArea_AwardItem["BossBox"][1][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tTreasureArea_AwardItem["BossBox"][1][3]["LogId"] = 18000160
	tTreasureArea_AwardItem["BossBox"][1][3]["LogStep"] = "2"
	tTreasureArea_AwardItem["BossBox"][1][3]["RewardBroadCast"] = tTreasureArea_Text["Broadcast"]["BossBox"][3]
	tTreasureArea_AwardItem["BossBox"][1][3]["RewardBroadCastType"] = 2007
	-- 明亮星陨石*5
	tTreasureArea_AwardItem["BossBox"][1][4] = {}
	tTreasureArea_AwardItem["BossBox"][1][4]["RandomItemChanceType"] = 2
	tTreasureArea_AwardItem["BossBox"][1][4]["ItemChance"] = 1250
	tTreasureArea_AwardItem["BossBox"][1][4]["RewardEffect"] = {}
	tTreasureArea_AwardItem["BossBox"][1][4]["RewardEffect"]["SzObj"] = "self"
	tTreasureArea_AwardItem["BossBox"][1][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tTreasureArea_AwardItem["BossBox"][1][4]["RewardItem"] = {}
	tTreasureArea_AwardItem["BossBox"][1][4]["RewardItem"][1] = {}
	tTreasureArea_AwardItem["BossBox"][1][4]["RewardItem"][1]["Id"] = 3009001
	tTreasureArea_AwardItem["BossBox"][1][4]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tTreasureArea_AwardItem["BossBox"][1][4]["LogId"] = 18000160
	tTreasureArea_AwardItem["BossBox"][1][4]["LogStep"] = "2"
	tTreasureArea_AwardItem["BossBox"][1][4]["RewardBroadCast"] = tTreasureArea_Text["Broadcast"]["BossBox"][4]
	tTreasureArea_AwardItem["BossBox"][1][4]["RewardBroadCastType"] = 2007
	-- 晶莹星陨石
	tTreasureArea_AwardItem["BossBox"][1][5] = {}
	tTreasureArea_AwardItem["BossBox"][1][5]["RandomItemChanceType"] = 2
	tTreasureArea_AwardItem["BossBox"][1][5]["ItemChance"] = 1125
	tTreasureArea_AwardItem["BossBox"][1][5]["RewardEffect"] = {}
	tTreasureArea_AwardItem["BossBox"][1][5]["RewardEffect"]["SzObj"] = "self"
	tTreasureArea_AwardItem["BossBox"][1][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tTreasureArea_AwardItem["BossBox"][1][5]["RewardItem"] = {}
	tTreasureArea_AwardItem["BossBox"][1][5]["RewardItem"][1] = {}
	tTreasureArea_AwardItem["BossBox"][1][5]["RewardItem"][1]["Id"] = 3009002
	tTreasureArea_AwardItem["BossBox"][1][5]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tTreasureArea_AwardItem["BossBox"][1][5]["LogId"] = 18000160
	tTreasureArea_AwardItem["BossBox"][1][5]["LogStep"] = "2"
	tTreasureArea_AwardItem["BossBox"][1][5]["RewardBroadCast"] = tTreasureArea_Text["Broadcast"]["BossBox"][5]
	tTreasureArea_AwardItem["BossBox"][1][5]["RewardBroadCastType"] = 2007
	-- 晶莹星陨石*5
	tTreasureArea_AwardItem["BossBox"][1][6] = {}
	tTreasureArea_AwardItem["BossBox"][1][6]["RandomItemChanceType"] = 2
	tTreasureArea_AwardItem["BossBox"][1][6]["ItemChance"] = 125
	tTreasureArea_AwardItem["BossBox"][1][6]["RewardEffect"] = {}
	tTreasureArea_AwardItem["BossBox"][1][6]["RewardEffect"]["SzObj"] = "self"
	tTreasureArea_AwardItem["BossBox"][1][6]["RewardEffect"]["Effect"] = "zf2-e128"
	tTreasureArea_AwardItem["BossBox"][1][6]["RewardItem"] = {}
	tTreasureArea_AwardItem["BossBox"][1][6]["RewardItem"][1] = {}
	tTreasureArea_AwardItem["BossBox"][1][6]["RewardItem"][1]["Id"] = 3009002
	tTreasureArea_AwardItem["BossBox"][1][6]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tTreasureArea_AwardItem["BossBox"][1][6]["LogId"] = 18000160
	tTreasureArea_AwardItem["BossBox"][1][6]["LogStep"] = "2"
	tTreasureArea_AwardItem["BossBox"][1][6]["RewardBroadCast"] = tTreasureArea_Text["Broadcast"]["BossBox"][6]
	tTreasureArea_AwardItem["BossBox"][1][6]["RewardBroadCastType"] = 2007
	-- 500气力值
	tTreasureArea_AwardItem["BossBox"][1][7] = {}
	tTreasureArea_AwardItem["BossBox"][1][7]["RandomItemChanceType"] = 2
	tTreasureArea_AwardItem["BossBox"][1][7]["ItemChance"] = 1250
	tTreasureArea_AwardItem["BossBox"][1][7]["RewardEffect"] = {}
	tTreasureArea_AwardItem["BossBox"][1][7]["RewardEffect"]["SzObj"] = "self"
	tTreasureArea_AwardItem["BossBox"][1][7]["RewardEffect"]["Effect"] = "zf2-e128"
	tTreasureArea_AwardItem["BossBox"][1][7]["RewardStrengthValue"] = {}
	tTreasureArea_AwardItem["BossBox"][1][7]["RewardStrengthValue"]["Value"] = 500
	tTreasureArea_AwardItem["BossBox"][1][7]["LogId"] = 18000160
	tTreasureArea_AwardItem["BossBox"][1][7]["LogStep"] = "2"
	tTreasureArea_AwardItem["BossBox"][1][7]["RewardBroadCast"] = tTreasureArea_Text["Broadcast"]["BossBox"][7]
	tTreasureArea_AwardItem["BossBox"][1][7]["RewardBroadCastType"] = 2007
	-- 1000气力值
	tTreasureArea_AwardItem["BossBox"][1][8] = {}
	tTreasureArea_AwardItem["BossBox"][1][8]["RandomItemChanceType"] = 2
	tTreasureArea_AwardItem["BossBox"][1][8]["ItemChance"] = 1125
	tTreasureArea_AwardItem["BossBox"][1][8]["RewardEffect"] = {}
	tTreasureArea_AwardItem["BossBox"][1][8]["RewardEffect"]["SzObj"] = "self"
	tTreasureArea_AwardItem["BossBox"][1][8]["RewardEffect"]["Effect"] = "zf2-e128"
	tTreasureArea_AwardItem["BossBox"][1][8]["RewardStrengthValue"] = {}
	tTreasureArea_AwardItem["BossBox"][1][8]["RewardStrengthValue"]["Value"] = 1000
	tTreasureArea_AwardItem["BossBox"][1][8]["LogId"] = 18000160
	tTreasureArea_AwardItem["BossBox"][1][8]["LogStep"] = "2"
	tTreasureArea_AwardItem["BossBox"][1][8]["RewardBroadCast"] = tTreasureArea_Text["Broadcast"]["BossBox"][8]
	tTreasureArea_AwardItem["BossBox"][1][8]["RewardBroadCastType"] = 2007
	-- 3000气力值
	tTreasureArea_AwardItem["BossBox"][1][9] = {}
	tTreasureArea_AwardItem["BossBox"][1][9]["RandomItemChanceType"] = 2
	tTreasureArea_AwardItem["BossBox"][1][9]["ItemChance"] = 125
	tTreasureArea_AwardItem["BossBox"][1][9]["RewardEffect"] = {}
	tTreasureArea_AwardItem["BossBox"][1][9]["RewardEffect"]["SzObj"] = "self"
	tTreasureArea_AwardItem["BossBox"][1][9]["RewardEffect"]["Effect"] = "zf2-e128"
	tTreasureArea_AwardItem["BossBox"][1][9]["RewardStrengthValue"] = {}
	tTreasureArea_AwardItem["BossBox"][1][9]["RewardStrengthValue"]["Value"] = 3000
	tTreasureArea_AwardItem["BossBox"][1][9]["LogId"] = 18000160
	tTreasureArea_AwardItem["BossBox"][1][9]["LogStep"] = "2"
	tTreasureArea_AwardItem["BossBox"][1][9]["RewardBroadCast"] = tTreasureArea_Text["Broadcast"]["BossBox"][9]
	tTreasureArea_AwardItem["BossBox"][1][9]["RewardBroadCastType"] = 2007
	-- 300赠点
	tTreasureArea_AwardItem["BossBox"][1][10] = {}
	tTreasureArea_AwardItem["BossBox"][1][10]["RandomItemChanceType"] = 2
	tTreasureArea_AwardItem["BossBox"][1][10]["ItemChance"] = 1250
	tTreasureArea_AwardItem["BossBox"][1][10]["RewardEffect"] = {}
	tTreasureArea_AwardItem["BossBox"][1][10]["RewardEffect"]["SzObj"] = "self"
	tTreasureArea_AwardItem["BossBox"][1][10]["RewardEffect"]["Effect"] = "zf2-e128"
	tTreasureArea_AwardItem["BossBox"][1][10]["RewardEMoneyMono"] = {}
	tTreasureArea_AwardItem["BossBox"][1][10]["RewardEMoneyMono"]["Value"] = 300
	tTreasureArea_AwardItem["BossBox"][1][10]["LogId"] = 18000160
	tTreasureArea_AwardItem["BossBox"][1][10]["LogStep"] = "2"
	tTreasureArea_AwardItem["BossBox"][1][10]["RewardBroadCast"] = tTreasureArea_Text["Broadcast"]["BossBox"][10]
	tTreasureArea_AwardItem["BossBox"][1][10]["RewardBroadCastType"] = 2007
	-- 500赠点
	tTreasureArea_AwardItem["BossBox"][1][11] = {}
	tTreasureArea_AwardItem["BossBox"][1][11]["RandomItemChanceType"] = 2
	tTreasureArea_AwardItem["BossBox"][1][11]["ItemChance"] = 1125
	tTreasureArea_AwardItem["BossBox"][1][11]["RewardEffect"] = {}
	tTreasureArea_AwardItem["BossBox"][1][11]["RewardEffect"]["SzObj"] = "self"
	tTreasureArea_AwardItem["BossBox"][1][11]["RewardEffect"]["Effect"] = "zf2-e128"
	tTreasureArea_AwardItem["BossBox"][1][11]["RewardEMoneyMono"] = {}
	tTreasureArea_AwardItem["BossBox"][1][11]["RewardEMoneyMono"]["Value"] = 500
	tTreasureArea_AwardItem["BossBox"][1][11]["LogId"] = 18000160
	tTreasureArea_AwardItem["BossBox"][1][11]["LogStep"] = "2"
	tTreasureArea_AwardItem["BossBox"][1][11]["RewardBroadCast"] = tTreasureArea_Text["Broadcast"]["BossBox"][11]
	tTreasureArea_AwardItem["BossBox"][1][11]["RewardBroadCastType"] = 2007
	-- 2000赠点
	tTreasureArea_AwardItem["BossBox"][1][12] = {}
	tTreasureArea_AwardItem["BossBox"][1][12]["RandomItemChanceType"] = 2
	tTreasureArea_AwardItem["BossBox"][1][12]["ItemChance"] = 125
	tTreasureArea_AwardItem["BossBox"][1][12]["RewardEffect"] = {}
	tTreasureArea_AwardItem["BossBox"][1][12]["RewardEffect"]["SzObj"] = "self"
	tTreasureArea_AwardItem["BossBox"][1][12]["RewardEffect"]["Effect"] = "zf2-e128"
	tTreasureArea_AwardItem["BossBox"][1][12]["RewardEMoneyMono"] = {}
	tTreasureArea_AwardItem["BossBox"][1][12]["RewardEMoneyMono"]["Value"] = 2000
	tTreasureArea_AwardItem["BossBox"][1][12]["LogId"] = 18000160
	tTreasureArea_AwardItem["BossBox"][1][12]["LogStep"] = "2"
	tTreasureArea_AwardItem["BossBox"][1][12]["RewardBroadCast"] = tTreasureArea_Text["Broadcast"]["BossBox"][12]
	tTreasureArea_AwardItem["BossBox"][1][12]["RewardBroadCastType"] = 2007
	
	
local tTreasureArea_Stc = {}
	-- stc(159,34)		参与击杀boss的玩家 每天限制给予5次
	tTreasureArea_Stc[1] = {}
	tTreasureArea_Stc[1]["EventType"] = 159
	tTreasureArea_Stc[1]["DataType"] = 34
	-- stc(161,50)		记录玩家的人品值
	-- 人品值初始值 由200 改为 100
	tTreasureArea_Stc[2] = {}
	tTreasureArea_Stc[2]["EventType"] = 161
	tTreasureArea_Stc[2]["DataType"] = 50
	-- stc(161,51)		第一次上线 设置玩家的人品值 为100  （只加一次）
	tTreasureArea_Stc[3] = {}
	tTreasureArea_Stc[3]["EventType"] = 161
	tTreasureArea_Stc[3]["DataType"] = 51
	-- stc(161,52)		普通奖池中掉落内容  50点气力包*1 每人每天限掉3个
	tTreasureArea_Stc[4] = {}
	tTreasureArea_Stc[4]["EventType"] = 161
	tTreasureArea_Stc[4]["DataType"] = 52
	-- stc(161,53)		普通奖池中掉落内容  微光星陨石*1 每人每天限掉3个
	tTreasureArea_Stc[5] = {}
	tTreasureArea_Stc[5]["EventType"] = 161
	tTreasureArea_Stc[5]["DataType"] = 53
	-- stc(161,54)		使用礼包的限制
	tTreasureArea_Stc[6] = {}
	tTreasureArea_Stc[6]["EventType"] = 161
	tTreasureArea_Stc[6]["DataType"] = 54
	-- stc(161,55)		使用礼包的限制
	tTreasureArea_Stc[7] = {}
	tTreasureArea_Stc[7]["EventType"] = 161
	tTreasureArea_Stc[7]["DataType"] = 55
	--  stc(161,57)		使用潜龙渊随机传送卷时间间隔
	tTreasureArea_Stc[8] = {}
	tTreasureArea_Stc[8]["EventType"] = 161
	tTreasureArea_Stc[8]["DataType"] = 57
	--  stc(163,14)		判断玩家当前杀怪数量是否超过100
	tTreasureArea_Stc[9] = {}
	tTreasureArea_Stc[9]["EventType"] = 163
	tTreasureArea_Stc[9]["DataType"] = 14
	--  stc(163,15)		判断玩家当天是否已开启过百胜宝箱
	tTreasureArea_Stc[10] = {}
	tTreasureArea_Stc[10]["EventType"] = 163
	tTreasureArea_Stc[10]["DataType"] = 15
	-- stc(167,12)		记录玩家战绩积分		每日重置
	tTreasureArea_Stc[11] = {}
	tTreasureArea_Stc[11]["EventType"] = 167
	tTreasureArea_Stc[11]["DataType"] = 12
	-- stc(167,13)		记录玩家已领取气运补充包的次数		每日重置
	tTreasureArea_Stc[12] = {}
	tTreasureArea_Stc[12]["EventType"] = 167
	tTreasureArea_Stc[12]["DataType"] = 13
	-- stc(171,38)		记录玩家献玉数		每日重置
	tTreasureArea_Stc[13] = {}
	tTreasureArea_Stc[13]["EventType"] = 171
	tTreasureArea_Stc[13]["DataType"] = 38
	-- stc(171,40)		记录玩家当天是否领取过上榜奖励		每日重置
	tTreasureArea_Stc[14] = {}
	tTreasureArea_Stc[14]["EventType"] = 171
	tTreasureArea_Stc[14]["DataType"] = 40
	-- stc(172,19)		记录玩家进入的哪个秘境
	tTreasureArea_Stc[15] = {}
	tTreasureArea_Stc[15]["EventType"] = 172
	tTreasureArea_Stc[15]["DataType"] = 19
	
		-- stc(179,47)		记录预支3天人品值
	tTreasureArea_Stc[16] = {}
	tTreasureArea_Stc[16]["EventType"] = 179
	tTreasureArea_Stc[16]["DataType"] = 47
	
	-- stc(179,48)		记录预支6天人品值
	tTreasureArea_Stc[17] = {}
	tTreasureArea_Stc[17]["EventType"] = 179
	tTreasureArea_Stc[17]["DataType"] = 48
	
	
-- 邮件发奖
local tTreasureArea_SendMail = {}
	-- 排行榜数量
	tTreasureArea_SendMail["RankTotal"] = 10

	tTreasureArea_SendMail["ExistDay"] = 30 --持续天数
	-- 晶魄血妖 伤害排名奖励
	tTreasureArea_SendMail[3976] = {}
	tTreasureArea_SendMail[3976][1] = 565643
	tTreasureArea_SendMail[3976][2] = 565644
	tTreasureArea_SendMail[3976][3] = 565644
	tTreasureArea_SendMail[3976][4] = 565645
	tTreasureArea_SendMail[3976][5] = 565645
	tTreasureArea_SendMail[3976][6] = 565645
	tTreasureArea_SendMail[3976][7] = 565645
	tTreasureArea_SendMail[3976][8] = 565645
	tTreasureArea_SendMail[3976][9] = 565645
	tTreasureArea_SendMail[3976][10] = 565645
	
	-- 禁天邪兽  伤害排名奖励
	tTreasureArea_SendMail[3977] = {}
	tTreasureArea_SendMail[3977][1] = 565646
	tTreasureArea_SendMail[3977][2] = 565647
	tTreasureArea_SendMail[3977][3] = 565647
	tTreasureArea_SendMail[3977][4] = 565648
	tTreasureArea_SendMail[3977][5] = 565648
	tTreasureArea_SendMail[3977][6] = 565648
	tTreasureArea_SendMail[3977][7] = 565648
	tTreasureArea_SendMail[3977][8] = 565648
	tTreasureArea_SendMail[3977][9] = 565648
	tTreasureArea_SendMail[3977][10] = 565648

	-- 啸海狂魔 伤害排名奖励
	tTreasureArea_SendMail[3978] = {}
	tTreasureArea_SendMail[3978][1] = 565649
	tTreasureArea_SendMail[3978][2] = 565650
	tTreasureArea_SendMail[3978][3] = 565650
	tTreasureArea_SendMail[3978][4] = 565651
	tTreasureArea_SendMail[3978][5] = 565651
	tTreasureArea_SendMail[3978][6] = 565651
	tTreasureArea_SendMail[3978][7] = 565651
	tTreasureArea_SendMail[3978][8] = 565651
	tTreasureArea_SendMail[3978][9] = 565651
	tTreasureArea_SendMail[3978][10] = 565651
	
	-- 异域邪龙 伤害排名奖励
	tTreasureArea_SendMail[3971] = {}
	tTreasureArea_SendMail[3971][1] = 565652
	tTreasureArea_SendMail[3971][2] = 565653
	tTreasureArea_SendMail[3971][3] = 565653
	tTreasureArea_SendMail[3971][4] = 565654
	tTreasureArea_SendMail[3971][5] = 565654
	tTreasureArea_SendMail[3971][6] = 565654
	tTreasureArea_SendMail[3971][7] = 565654
	tTreasureArea_SendMail[3971][8] = 565654
	tTreasureArea_SendMail[3971][9] = 565654
	tTreasureArea_SendMail[3971][10] = 565654
	
	-- 妖后 伤害排名奖励
	tTreasureArea_SendMail[3970] = {}
	tTreasureArea_SendMail[3970][1] = 565655
	tTreasureArea_SendMail[3970][2] = 565656
	tTreasureArea_SendMail[3970][3] = 565656
	tTreasureArea_SendMail[3970][4] = 565657
	tTreasureArea_SendMail[3970][5] = 565657
	tTreasureArea_SendMail[3970][6] = 565657
	tTreasureArea_SendMail[3970][7] = 565657
	tTreasureArea_SendMail[3970][8] = 565657
	tTreasureArea_SendMail[3970][9] = 565657
	tTreasureArea_SendMail[3970][10] = 565657
	
	-- 宝箱怪奖励，背包满发邮件
	-- 4613	固化石幸运宝箱
	tTreasureArea_SendMail[4613] = {}
	tTreasureArea_SendMail[4613][1] = 567627
	tTreasureArea_SendMail[4613][2] = 567624
	-- 4614	金钢坚钻幸运宝箱
	tTreasureArea_SendMail[4614] = {}
	tTreasureArea_SendMail[4614][1] = 567628
	tTreasureArea_SendMail[4614][2] = 567624
	-- 4615	玄元宝石幸运宝箱
	tTreasureArea_SendMail[4615] = {}
	tTreasureArea_SendMail[4615][1] = 567629
	tTreasureArea_SendMail[4615][2] = 567624
	
	-- 参与奖礼包
	tTreasureArea_SendMail["Join"] = {}
	tTreasureArea_SendMail["Join"][1] = 565658		-- 发打宝区普通参与礼包
	tTreasureArea_SendMail["Join"][2] = 565659		-- 发打宝区高级参与礼包
	
	tTreasureArea_SendMail["SixLuckyReward"] = {}
	tTreasureArea_SendMail["SixLuckyReward"][1] = 569672
	tTreasureArea_SendMail["SixLuckyReward"][2] = 569673
	tTreasureArea_SendMail["SixLuckyReward"][3] = 569674
	tTreasureArea_SendMail["SixLuckyReward"][4] = 569675
	tTreasureArea_SendMail["SixLuckyReward"][5] = 569676
	tTreasureArea_SendMail["SixLuckyReward"][6] = 569677
	tTreasureArea_SendMail["SixLuckyReward"][7] = 569678
	tTreasureArea_SendMail["SixLuckyReward"][8] = 569679
	tTreasureArea_SendMail["SixLuckyReward"][9] = 569680
	tTreasureArea_SendMail["SixLuckyReward"][10] = 569681
	
	tTreasureArea_SendMail["Rank"] = {}
	tTreasureArea_SendMail["Rank"]["ExistDay"] = 30
	tTreasureArea_SendMail["Rank"]["Action"] = {}
	tTreasureArea_SendMail["Rank"]["Action"][1] = 566685
	tTreasureArea_SendMail["Rank"]["Action"][2] = 566686
	tTreasureArea_SendMail["Rank"]["Action"][3] = 566686
	tTreasureArea_SendMail["Rank"]["Action"][4] = 566687
	tTreasureArea_SendMail["Rank"]["Action"][5] = 566687
	tTreasureArea_SendMail["Rank"]["Action"][6] = 566687
	tTreasureArea_SendMail["Rank"]["Action"][7] = 566687
	tTreasureArea_SendMail["Rank"]["Action"][8] = 566687
	tTreasureArea_SendMail["Rank"]["Action"][9] = 566687
	tTreasureArea_SendMail["Rank"]["Action"][10] = 566687
	
	tTreasureArea_SendMail["Rank"]["Strength"] = {}
	tTreasureArea_SendMail["Rank"]["Strength"][1] = 1000
	tTreasureArea_SendMail["Rank"]["Strength"][2] = 800
	tTreasureArea_SendMail["Rank"]["Strength"][3] = 800
	tTreasureArea_SendMail["Rank"]["Strength"][4] = 500
	tTreasureArea_SendMail["Rank"]["Strength"][5] = 500
	tTreasureArea_SendMail["Rank"]["Strength"][6] = 500
	tTreasureArea_SendMail["Rank"]["Strength"][7] = 500
	tTreasureArea_SendMail["Rank"]["Strength"][8] = 500
	tTreasureArea_SendMail["Rank"]["Strength"][9] = 500
	tTreasureArea_SendMail["Rank"]["Strength"][10] = 500
	
	-- 祭神台排行榜奖励
	tTreasureArea_SendMail["JadeRank"] = {}
	tTreasureArea_SendMail["JadeRank"]["ExistDay"] = 30
	tTreasureArea_SendMail["JadeRank"]["Action"] = {}
	tTreasureArea_SendMail["JadeRank"]["Action"]["HandIn"] = 567618
	tTreasureArea_SendMail["JadeRank"]["Action"][1] = 567619
	tTreasureArea_SendMail["JadeRank"]["Action"][2] = 567620
	tTreasureArea_SendMail["JadeRank"]["Action"][3] = 567621
	tTreasureArea_SendMail["JadeRank"]["Action"][4] = 567622
	tTreasureArea_SendMail["JadeRank"]["Action"][5] = 567622
	tTreasureArea_SendMail["JadeRank"]["Action"][6] = 567622
	tTreasureArea_SendMail["JadeRank"]["Action"][7] = 567623
	tTreasureArea_SendMail["JadeRank"]["Action"][8] = 567623
	tTreasureArea_SendMail["JadeRank"]["Action"][9] = 567623
	tTreasureArea_SendMail["JadeRank"]["Action"][10] = 567623
	
	
-- 奖池概率与次数
local tTreasureArea_RandData = {}
	-- 规定时间内击杀BOSS的额外奖池 奖池次数
	tTreasureArea_RandData["Times"] = {}
	tTreasureArea_RandData["Times"][3976] = 10		 -- 3976	强化晶魄雪妖
	tTreasureArea_RandData["Times"][3977] = 8        -- 3977	强化禁天妖兽
	tTreasureArea_RandData["Times"][3978] = 12      -- 3978	强化啸海巨魔
	tTreasureArea_RandData["Times"][3971] = 5        -- 3971	邪龙护法 
	tTreasureArea_RandData["Times"][3970] = 15      -- 3970	妖后瑶姬 
	
	tTreasureArea_RandData["RandSum"] = 10000
	-- 在幸运状态下，小怪掉落几率变化
	-- 当玩家没有人品值时，随机到稀有奖池时不掉落	
	tTreasureArea_RandData["SmallMonster"] = {}
	-- 普通奖池几率
	tTreasureArea_RandData["SmallMonster"]["Normal"] = {}
	-- 0战  3973  紫魔龙
	tTreasureArea_RandData["SmallMonster"]["Normal"][3973] = {}
	tTreasureArea_RandData["SmallMonster"]["Normal"][3973][0] = 800 -- 8.00%
	tTreasureArea_RandData["SmallMonster"]["Normal"][3973][1] = 930 --  9.30% 
	tTreasureArea_RandData["SmallMonster"]["Normal"][3973][2] = 1060 -- 10.60%
	tTreasureArea_RandData["SmallMonster"]["Normal"][3973][3] = 1200 --12.00%
	tTreasureArea_RandData["SmallMonster"]["Normal"][3973][4] = 1330 --13.30%
	tTreasureArea_RandData["SmallMonster"]["Normal"][3973][5] = 1460 --14.60%
	tTreasureArea_RandData["SmallMonster"]["Normal"][3973][6] = 1600 --16.00%
	tTreasureArea_RandData["SmallMonster"]["Normal"][3973][7] = 1730 --17.30%
	tTreasureArea_RandData["SmallMonster"]["Normal"][3973][8] = 1860 --18.60%
	tTreasureArea_RandData["SmallMonster"]["Normal"][3973][9] = 2000 --20.00%
	-- 300战  3974   鬼冥蛟
	tTreasureArea_RandData["SmallMonster"]["Normal"][3974] = {}
	tTreasureArea_RandData["SmallMonster"]["Normal"][3974][0] = 880	-- 8.80%
	tTreasureArea_RandData["SmallMonster"]["Normal"][3974][1] = 1023 	-- 10.23% 
	tTreasureArea_RandData["SmallMonster"]["Normal"][3974][2] = 1166	-- 11.66%
	tTreasureArea_RandData["SmallMonster"]["Normal"][3974][3] = 1320	-- 13.20%
	tTreasureArea_RandData["SmallMonster"]["Normal"][3974][4] = 1463	-- 14.63%
	tTreasureArea_RandData["SmallMonster"]["Normal"][3974][5] = 1606	-- 16.06%
	tTreasureArea_RandData["SmallMonster"]["Normal"][3974][6] = 1760	 -- 17.60%
	tTreasureArea_RandData["SmallMonster"]["Normal"][3974][7] = 1903	 -- 19.03%
	tTreasureArea_RandData["SmallMonster"]["Normal"][3974][8] = 2046	-- 20.46%
	tTreasureArea_RandData["SmallMonster"]["Normal"][3974][9] = 2200	-- 22.00%	
	-- 350战  3975   青翼蛊雕
	tTreasureArea_RandData["SmallMonster"]["Normal"][3975] = {}
	tTreasureArea_RandData["SmallMonster"]["Normal"][3975][0] = 960	-- 9.60%
	tTreasureArea_RandData["SmallMonster"]["Normal"][3975][1] = 1116   -- 11.16% 
	tTreasureArea_RandData["SmallMonster"]["Normal"][3975][2] = 1272  -- 12.72%
	tTreasureArea_RandData["SmallMonster"]["Normal"][3975][3] = 1440  -- 14.40%
	tTreasureArea_RandData["SmallMonster"]["Normal"][3975][4] = 1596  -- 15.96%
	tTreasureArea_RandData["SmallMonster"]["Normal"][3975][5] = 1752  -- 17.52%
	tTreasureArea_RandData["SmallMonster"]["Normal"][3975][6] = 1920  -- 19.20%
	tTreasureArea_RandData["SmallMonster"]["Normal"][3975][7] = 2076  -- 20.76%
	tTreasureArea_RandData["SmallMonster"]["Normal"][3975][8] = 2232  -- 22.32%
	tTreasureArea_RandData["SmallMonster"]["Normal"][3975][9] = 2400 -- 24.00%
	-- 380战  4709   青翼蛟
	tTreasureArea_RandData["SmallMonster"]["Normal"][4709] = {}
	tTreasureArea_RandData["SmallMonster"]["Normal"][4709][0] = 1040		-- 10.40%
	tTreasureArea_RandData["SmallMonster"]["Normal"][4709][1] = 1209      -- 12.09% 
	tTreasureArea_RandData["SmallMonster"]["Normal"][4709][2] = 1378      -- 13.78%
	tTreasureArea_RandData["SmallMonster"]["Normal"][4709][3] = 1560      -- 15.60%
	tTreasureArea_RandData["SmallMonster"]["Normal"][4709][4] = 1729      -- 17.29%
	tTreasureArea_RandData["SmallMonster"]["Normal"][4709][5] = 1898      -- 18.98%
	tTreasureArea_RandData["SmallMonster"]["Normal"][4709][6] = 2080      -- 20.80%
	tTreasureArea_RandData["SmallMonster"]["Normal"][4709][7] = 2249      -- 22.49%
	tTreasureArea_RandData["SmallMonster"]["Normal"][4709][8] = 2418     -- 24.18%
	tTreasureArea_RandData["SmallMonster"]["Normal"][4709][9] = 2600      -- 26.00%
	-- 特殊强力怪  4720   天魇神将
	tTreasureArea_RandData["SmallMonster"]["Normal"][4720] = {}
	tTreasureArea_RandData["SmallMonster"]["Normal"][4720][0] = 1120		--11.20%
	tTreasureArea_RandData["SmallMonster"]["Normal"][4720][1] = 1302      -- 13.02%
	tTreasureArea_RandData["SmallMonster"]["Normal"][4720][2] = 1484      -- 14.84% 
	tTreasureArea_RandData["SmallMonster"]["Normal"][4720][3] = 1680      -- 16.80% 
	tTreasureArea_RandData["SmallMonster"]["Normal"][4720][4] = 1862      -- 18.62% 
	tTreasureArea_RandData["SmallMonster"]["Normal"][4720][5] = 2044      -- 20.44% 
	tTreasureArea_RandData["SmallMonster"]["Normal"][4720][6] = 2240      --22.40%
	tTreasureArea_RandData["SmallMonster"]["Normal"][4720][7] = 2422      --24.22%
	tTreasureArea_RandData["SmallMonster"]["Normal"][4720][8] = 2604       -- 26.04% 
	tTreasureArea_RandData["SmallMonster"]["Normal"][4720][9] = 2800      --28.00%
	
	-- 稀有奖池几率
	tTreasureArea_RandData["SmallMonster"]["Special"] = {}
	-- 0战  3973  紫魔龙
	tTreasureArea_RandData["SmallMonster"]["Special"][3973] = {}
	tTreasureArea_RandData["SmallMonster"]["Special"][3973][0] = 60 -- 1.00% 改为  0.60%
	tTreasureArea_RandData["SmallMonster"]["Special"][3973][1] = 70 -- 1.15%   改为  0.70% 
	tTreasureArea_RandData["SmallMonster"]["Special"][3973][2] = 80 -- 1.30%  改为 0.80%
	tTreasureArea_RandData["SmallMonster"]["Special"][3973][3] = 90 -- 1.50%  改为 0.90%
	tTreasureArea_RandData["SmallMonster"]["Special"][3973][4] = 100 -- 1.65%  改为 1.00%
	tTreasureArea_RandData["SmallMonster"]["Special"][3973][5] = 110 -- 1.80%  改为 1.10%
	tTreasureArea_RandData["SmallMonster"]["Special"][3973][6] = 120 -- 2.00% 改为  1.20% 
	tTreasureArea_RandData["SmallMonster"]["Special"][3973][7] = 130 -- 2.15%  改为 1.30%
	tTreasureArea_RandData["SmallMonster"]["Special"][3973][8] = 140 -- 2.30% 改为  1.40% 
	tTreasureArea_RandData["SmallMonster"]["Special"][3973][9] = 150 -- 2.50% 改为  1.50% 
	-- 300战  3974   鬼冥蛟
	tTreasureArea_RandData["SmallMonster"]["Special"][3974] = {}
	tTreasureArea_RandData["SmallMonster"]["Special"][3974][0] = 66	-- 0.66%
	tTreasureArea_RandData["SmallMonster"]["Special"][3974][1] = 77  -- 0.77%
	tTreasureArea_RandData["SmallMonster"]["Special"][3974][2] = 88  -- 0.88% 
	tTreasureArea_RandData["SmallMonster"]["Special"][3974][3] = 99   -- 0.99% 
	tTreasureArea_RandData["SmallMonster"]["Special"][3974][4] = 110   -- 1.10% 
	tTreasureArea_RandData["SmallMonster"]["Special"][3974][5] = 121   -- 1.21% 
	tTreasureArea_RandData["SmallMonster"]["Special"][3974][6] = 132   -- 1.32% 
	tTreasureArea_RandData["SmallMonster"]["Special"][3974][7] = 143   -- 1.43% 
	tTreasureArea_RandData["SmallMonster"]["Special"][3974][8] = 154   -- 1.54% 
	tTreasureArea_RandData["SmallMonster"]["Special"][3974][9] = 165   -- 1.65% 
	-- 350战  3975   青翼蛊雕
	tTreasureArea_RandData["SmallMonster"]["Special"][3975] = {}
	tTreasureArea_RandData["SmallMonster"]["Special"][3975][0] = 72	-- 0.72%
	tTreasureArea_RandData["SmallMonster"]["Special"][3975][1] = 84   -- 0.84%
	tTreasureArea_RandData["SmallMonster"]["Special"][3975][2] = 96   -- 0.96% 
	tTreasureArea_RandData["SmallMonster"]["Special"][3975][3] = 108   -- 1.08% 
	tTreasureArea_RandData["SmallMonster"]["Special"][3975][4] = 120   -- 1.20% 
	tTreasureArea_RandData["SmallMonster"]["Special"][3975][5] = 132   -- 1.32% 
	tTreasureArea_RandData["SmallMonster"]["Special"][3975][6] = 144   -- 1.44% 
	tTreasureArea_RandData["SmallMonster"]["Special"][3975][7] = 156   -- 1.56% 
	tTreasureArea_RandData["SmallMonster"]["Special"][3975][8] = 168   -- 1.68% 
	tTreasureArea_RandData["SmallMonster"]["Special"][3975][9] = 180   -- 1.80% 
	-- 380战  4709   青翼蛟
	tTreasureArea_RandData["SmallMonster"]["Special"][4709] = {}
	tTreasureArea_RandData["SmallMonster"]["Special"][4709][0] = 78	-- 0.78%
	tTreasureArea_RandData["SmallMonster"]["Special"][4709][1] = 91    -- 0.91%
	tTreasureArea_RandData["SmallMonster"]["Special"][4709][2] = 104   -- 1.04% 
	tTreasureArea_RandData["SmallMonster"]["Special"][4709][3] = 117   -- 1.17% 
	tTreasureArea_RandData["SmallMonster"]["Special"][4709][4] = 130   -- 1.30% 
	tTreasureArea_RandData["SmallMonster"]["Special"][4709][5] = 143   -- 1.43% 
	tTreasureArea_RandData["SmallMonster"]["Special"][4709][6] = 156  -- 1.56% 
	tTreasureArea_RandData["SmallMonster"]["Special"][4709][7] = 169   -- 1.69% 
	tTreasureArea_RandData["SmallMonster"]["Special"][4709][8] = 182   -- 1.82% 
	tTreasureArea_RandData["SmallMonster"]["Special"][4709][9] = 195   -- 1.95% 
	-- 特殊强力怪  4720   天魇神将
	tTreasureArea_RandData["SmallMonster"]["Special"][4720] = {}
	tTreasureArea_RandData["SmallMonster"]["Special"][4720][0] = 84		-- 0.84%
	tTreasureArea_RandData["SmallMonster"]["Special"][4720][1] = 98      -- 0.98%
	tTreasureArea_RandData["SmallMonster"]["Special"][4720][2] = 112      -- 1.12%
	tTreasureArea_RandData["SmallMonster"]["Special"][4720][3] = 126      -- 1.26%
	tTreasureArea_RandData["SmallMonster"]["Special"][4720][4] = 140      -- 1.40%
	tTreasureArea_RandData["SmallMonster"]["Special"][4720][5] = 154      -- 1.54% 
	tTreasureArea_RandData["SmallMonster"]["Special"][4720][6] = 168      -- 1.68% 
	tTreasureArea_RandData["SmallMonster"]["Special"][4720][7] = 182      -- 1.82% 
	tTreasureArea_RandData["SmallMonster"]["Special"][4720][8] = 196       -- 1.96%
	tTreasureArea_RandData["SmallMonster"]["Special"][4720][9] = 210      -- 2.10% 
	
	-- 在幸运状态下，BOSS掉落几率变化
	-- 在规定时间内击杀BOSS：若玩家有人品值，稀有奖池额外加200%
	-- 若玩家没有人品值，普通奖池额外加200%				
	tTreasureArea_RandData["Boss"] = {}
	-- 普通奖池几率（次数之后 再走随机）
	tTreasureArea_RandData["Boss"]["Normal"] = {}
	tTreasureArea_RandData["Boss"]["Normal"][0] = 2000 -- 120.00%
	tTreasureArea_RandData["Boss"]["Normal"][1] = 4000 -- 140.00% 
	tTreasureArea_RandData["Boss"]["Normal"][2] = 6000 -- 160.00%
	tTreasureArea_RandData["Boss"]["Normal"][3] = 8000 -- 180.00%
	tTreasureArea_RandData["Boss"]["Normal"][4] = 0 -- 200.00%
	tTreasureArea_RandData["Boss"]["Normal"][5] = 2000 -- 220.00%
	tTreasureArea_RandData["Boss"]["Normal"][6] = 4000 -- 240.00%
	tTreasureArea_RandData["Boss"]["Normal"][7] = 6000 -- 260.00%
	tTreasureArea_RandData["Boss"]["Normal"][8] = 8000 -- 280.00%
	tTreasureArea_RandData["Boss"]["Normal"][9] = 0 -- 300.00%
	-- 普通奖池 执行次数
	tTreasureArea_RandData["Boss"]["NormalTime"] = {}
	tTreasureArea_RandData["Boss"]["NormalTime"][0] = 1 -- 120.00%
	tTreasureArea_RandData["Boss"]["NormalTime"][1] = 1 -- 140.00% 
	tTreasureArea_RandData["Boss"]["NormalTime"][2] = 1 -- 160.00%
	tTreasureArea_RandData["Boss"]["NormalTime"][3] = 1 -- 180.00%
	tTreasureArea_RandData["Boss"]["NormalTime"][4] = 2 -- 200.00%
	tTreasureArea_RandData["Boss"]["NormalTime"][5] = 2 -- 220.00%
	tTreasureArea_RandData["Boss"]["NormalTime"][6] = 2 -- 240.00%
	tTreasureArea_RandData["Boss"]["NormalTime"][7] = 2 -- 260.00%
	tTreasureArea_RandData["Boss"]["NormalTime"][8] = 2 -- 280.00%
	tTreasureArea_RandData["Boss"]["NormalTime"][9] = 3 -- 300.00%

	-- 稀有奖池几率（次数之后 再走随机）
	tTreasureArea_RandData["Boss"]["Special"] = {}
	tTreasureArea_RandData["Boss"]["Special"][0] = 3000 -- 130.00%
	tTreasureArea_RandData["Boss"]["Special"][1] = 6000 -- 160.00% 
	tTreasureArea_RandData["Boss"]["Special"][2] = 9000 -- 190.00%
	tTreasureArea_RandData["Boss"]["Special"][3] = 2000 -- 220.00%
	tTreasureArea_RandData["Boss"]["Special"][4] = 5000 -- 250.00%
	tTreasureArea_RandData["Boss"]["Special"][5] = 8000 -- 280.00%
	tTreasureArea_RandData["Boss"]["Special"][6] = 1000 -- 310.00%
	tTreasureArea_RandData["Boss"]["Special"][7] = 4000 -- 340.00%
	tTreasureArea_RandData["Boss"]["Special"][8] = 7000 -- 370.00%
	tTreasureArea_RandData["Boss"]["Special"][9] = 0 -- 400.00%
	-- 稀有奖池 执行次数
	tTreasureArea_RandData["Boss"]["SpecialTime"] = {}
	tTreasureArea_RandData["Boss"]["SpecialTime"][0] = 1 -- 130.00%
	tTreasureArea_RandData["Boss"]["SpecialTime"][1] = 1 -- 160.00% 
	tTreasureArea_RandData["Boss"]["SpecialTime"][2] = 1 -- 190.00%
	tTreasureArea_RandData["Boss"]["SpecialTime"][3] = 2 -- 220.00%
	tTreasureArea_RandData["Boss"]["SpecialTime"][4] = 2 -- 250.00%
	tTreasureArea_RandData["Boss"]["SpecialTime"][5] = 2 -- 280.00%
	tTreasureArea_RandData["Boss"]["SpecialTime"][6] = 3 -- 310.00%
	tTreasureArea_RandData["Boss"]["SpecialTime"][7] = 3 -- 340.00%
	tTreasureArea_RandData["Boss"]["SpecialTime"][8] = 3 -- 370.00%
	tTreasureArea_RandData["Boss"]["SpecialTime"][9] = 4 -- 400.00%
	
	-- 在规定时间内击杀BOSS  两个随机奖池概率+200%
	tTreasureArea_RandData["Boss"]["AddTime"] = 2

	-- 限时击杀 时间（秒）
	tTreasureArea_RandData["KillTimeLimit"] = {}
	tTreasureArea_RandData["KillTimeLimit"][1] = 180		-- 除妖后瑶姬  3分钟
	tTreasureArea_RandData["KillTimeLimit"][2] = 480		-- 妖后瑶姬  8分钟
	

-- 击杀怪物奖励
local tTreasureArea_MonsterDrop = {}
	------------------------- 必定掉落
	tTreasureArea_MonsterDrop["MustDrop"] = {}
	-- 3976	晶魄血妖
	-- 龙虎回力丸*3  729252
	-- 灵力精魄*1  3008735
	-- 片区兑换道具*3	3303483
	-- 打宝区保护药水	3304960	1
	tTreasureArea_MonsterDrop["MustDrop"][3976] = {}
	tTreasureArea_MonsterDrop["MustDrop"][3976][1] = 729252
	tTreasureArea_MonsterDrop["MustDrop"][3976][2] = 729252
	tTreasureArea_MonsterDrop["MustDrop"][3976][3] = 729252
	tTreasureArea_MonsterDrop["MustDrop"][3976][4] = 3008735
	tTreasureArea_MonsterDrop["MustDrop"][3976][5] = 3303483
	tTreasureArea_MonsterDrop["MustDrop"][3976][6] = 3303483
	tTreasureArea_MonsterDrop["MustDrop"][3976][7] = 3303483	
	tTreasureArea_MonsterDrop["MustDrop"][3976][8] = 3304960	
	
	-- 3977	禁天邪兽
	-- 护心丹*2  3002029
	-- 真气礼包*5  3314911
	-- 秘制免费修炼丹*1  3002926
	-- 片区兑换道具*3		3303483
	-- 打宝区保护药水	3304960	1
	tTreasureArea_MonsterDrop["MustDrop"][3977] = {}
	tTreasureArea_MonsterDrop["MustDrop"][3977][1] = 3002029
	tTreasureArea_MonsterDrop["MustDrop"][3977][2] = 3002029
	tTreasureArea_MonsterDrop["MustDrop"][3977][3] = 3314911
	tTreasureArea_MonsterDrop["MustDrop"][3977][4] = 3314911
	tTreasureArea_MonsterDrop["MustDrop"][3977][5] = 3314911
	tTreasureArea_MonsterDrop["MustDrop"][3977][6] = 3314911
	tTreasureArea_MonsterDrop["MustDrop"][3977][7] = 3314911
	tTreasureArea_MonsterDrop["MustDrop"][3977][8] = 3002926
	tTreasureArea_MonsterDrop["MustDrop"][3977][9] = 3303483
	tTreasureArea_MonsterDrop["MustDrop"][3977][10] = 3303483
	tTreasureArea_MonsterDrop["MustDrop"][3977][11] = 3303483	
	tTreasureArea_MonsterDrop["MustDrop"][3977][12] = 3304960	
	
	-- 3978	啸海狂魔
	-- 蛮荒骨符（3004181）*2
	-- 富贵财富包（50w）（728232）*1
	-- 萌系武器外套碎片礼包（3004257）*3
	-- 流星（1088001）*5
	-- 护心丹（3002029）*3
	-- 片区兑换道具*5  3303483
	-- 打宝区保护药水	3304960	1
	tTreasureArea_MonsterDrop["MustDrop"][3978] = {}
	tTreasureArea_MonsterDrop["MustDrop"][3978][1] = 3004181
	tTreasureArea_MonsterDrop["MustDrop"][3978][2] = 3004181
	tTreasureArea_MonsterDrop["MustDrop"][3978][3] = 728232
	tTreasureArea_MonsterDrop["MustDrop"][3978][4] = 3004257
	tTreasureArea_MonsterDrop["MustDrop"][3978][5] = 3004257
	tTreasureArea_MonsterDrop["MustDrop"][3978][6] = 3004257
	tTreasureArea_MonsterDrop["MustDrop"][3978][7] = 1088001
	tTreasureArea_MonsterDrop["MustDrop"][3978][8] = 1088001
	tTreasureArea_MonsterDrop["MustDrop"][3978][9] = 1088001
	tTreasureArea_MonsterDrop["MustDrop"][3978][10] = 3002029
	tTreasureArea_MonsterDrop["MustDrop"][3978][11] = 3002029
	tTreasureArea_MonsterDrop["MustDrop"][3978][12] = 3002029
	tTreasureArea_MonsterDrop["MustDrop"][3978][13] = 3303483
	tTreasureArea_MonsterDrop["MustDrop"][3978][14] = 3303483
	tTreasureArea_MonsterDrop["MustDrop"][3978][15] = 3303483
	tTreasureArea_MonsterDrop["MustDrop"][3978][16] = 3303483
	tTreasureArea_MonsterDrop["MustDrop"][3978][17] = 3303483
	tTreasureArea_MonsterDrop["MustDrop"][3978][18] = 1088001
	tTreasureArea_MonsterDrop["MustDrop"][3978][19] = 1088001
	tTreasureArea_MonsterDrop["MustDrop"][3978][20] = 3304960
	
	---金币服掉落
	-- 3978	啸海狂魔
	-- 蛮荒骨符（3004181）*2
	-- 富贵财富包（50w）（728232）*1
	-- 萌系武器外套碎片礼包（3004257）*3
	-- 流星（1088001）*5
	-- 护心丹（3002029）*3
	-- 片区兑换道具*5  3303483
	-- 打宝区保护药水	3304960	1
	tTreasureArea_MonsterDrop["GoldMustDrop"] = {}
	tTreasureArea_MonsterDrop["GoldMustDrop"][3978] = {}
	tTreasureArea_MonsterDrop["GoldMustDrop"][3978][1] = 3004181
	tTreasureArea_MonsterDrop["GoldMustDrop"][3978][2] = 3004181
	tTreasureArea_MonsterDrop["GoldMustDrop"][3978][3] = 3004181
	tTreasureArea_MonsterDrop["GoldMustDrop"][3978][4] = 3004257
	tTreasureArea_MonsterDrop["GoldMustDrop"][3978][5] = 3004257
	tTreasureArea_MonsterDrop["GoldMustDrop"][3978][6] = 3004257
	tTreasureArea_MonsterDrop["GoldMustDrop"][3978][7] = 1088001
	tTreasureArea_MonsterDrop["GoldMustDrop"][3978][8] = 1088001
	tTreasureArea_MonsterDrop["GoldMustDrop"][3978][9] = 1088001
	tTreasureArea_MonsterDrop["GoldMustDrop"][3978][10] = 3002029
	tTreasureArea_MonsterDrop["GoldMustDrop"][3978][11] = 3002029
	tTreasureArea_MonsterDrop["GoldMustDrop"][3978][12] = 3002029
	tTreasureArea_MonsterDrop["GoldMustDrop"][3978][13] = 3303483
	tTreasureArea_MonsterDrop["GoldMustDrop"][3978][14] = 3303483
	tTreasureArea_MonsterDrop["GoldMustDrop"][3978][15] = 3303483
	tTreasureArea_MonsterDrop["GoldMustDrop"][3978][16] = 3303483
	tTreasureArea_MonsterDrop["GoldMustDrop"][3978][17] = 3303483
	tTreasureArea_MonsterDrop["GoldMustDrop"][3978][18] = 1088001
	tTreasureArea_MonsterDrop["GoldMustDrop"][3978][19] = 1088001
	tTreasureArea_MonsterDrop["GoldMustDrop"][3978][20] = 3304960
	
	-- 3970	妖后瑶姬
	-- 高级特殊经验丹（3303018）*1		改为 150气力值
	-- 50点气力包（3008186）*5
	-- 玄灵秘录礼包（720895）*5
	-- 护心丹*3  3002029
	-- 赤炼石+2*1  730002
	-- 清心符*3  720128
	-- 龙珠*1  1088000
	-- 片区兑换*30礼包*1  3303484
	tTreasureArea_MonsterDrop["MustDrop"][3970] = {}
	tTreasureArea_MonsterDrop["MustDrop"][3970][1] = 3008187 --3303018
	tTreasureArea_MonsterDrop["MustDrop"][3970][2] = 3008186
	tTreasureArea_MonsterDrop["MustDrop"][3970][3] = 3008186
	tTreasureArea_MonsterDrop["MustDrop"][3970][4] = 3008186
	tTreasureArea_MonsterDrop["MustDrop"][3970][5] = 3008186
	tTreasureArea_MonsterDrop["MustDrop"][3970][6] = 3008186
	tTreasureArea_MonsterDrop["MustDrop"][3970][7] = 720895
	tTreasureArea_MonsterDrop["MustDrop"][3970][8] = 720895
	tTreasureArea_MonsterDrop["MustDrop"][3970][9] = 720895
	tTreasureArea_MonsterDrop["MustDrop"][3970][10] = 720895
	tTreasureArea_MonsterDrop["MustDrop"][3970][11] = 720895
	tTreasureArea_MonsterDrop["MustDrop"][3970][12] = 3002029
	tTreasureArea_MonsterDrop["MustDrop"][3970][13] = 3002029
	tTreasureArea_MonsterDrop["MustDrop"][3970][14] = 3002029
	tTreasureArea_MonsterDrop["MustDrop"][3970][15] = 3306909		--730002 1.14cy 改为赤炼石礼包
	tTreasureArea_MonsterDrop["MustDrop"][3970][16] = 720128
	tTreasureArea_MonsterDrop["MustDrop"][3970][17] = 720128
	tTreasureArea_MonsterDrop["MustDrop"][3970][18] = 720128
	tTreasureArea_MonsterDrop["MustDrop"][3970][19] = 1088000
	tTreasureArea_MonsterDrop["MustDrop"][3970][20] = 3303484
	
	-- 3971		邪龙护法
	-- 流星（1088001）*3
	-- 经验复原丹（3302881）*1
	-- 片区兑换道具*3		3303483
	-- 打宝区保护药水	3304960	1
	tTreasureArea_MonsterDrop["MustDrop"][3971] = {}
	tTreasureArea_MonsterDrop["MustDrop"][3971][1] = 1088001
	tTreasureArea_MonsterDrop["MustDrop"][3971][2] = 1088001
	tTreasureArea_MonsterDrop["MustDrop"][3971][3] = 3008186 --3302881
	tTreasureArea_MonsterDrop["MustDrop"][3971][4] = 3303483
	tTreasureArea_MonsterDrop["MustDrop"][3971][5] = 3303483
	tTreasureArea_MonsterDrop["MustDrop"][3971][6] = 3303483
	tTreasureArea_MonsterDrop["MustDrop"][3971][7] = 1088001
	tTreasureArea_MonsterDrop["MustDrop"][3971][8] = 3304960
	
	------------------------- Boss概率掉落
	tTreasureArea_MonsterDrop["RandomDrop"] = {}	
	-- 3976	晶魄血妖
	-- 分母 780000
	tTreasureArea_MonsterDrop["RandomDrop"][3976] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976]["ItemChanceSum"] = 780000
	-- 85800	龙珠*1	  1088000
	tTreasureArea_MonsterDrop["RandomDrop"][3976][1] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][1]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][1]["ItemChance"] = 85800
	tTreasureArea_MonsterDrop["RandomDrop"][3976][1]["Item_1"] = 1088000
	-- 195000	赤炼石+2*1  730002
	tTreasureArea_MonsterDrop["RandomDrop"][3976][2] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][2]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][2]["ItemChance"] = 195000
	tTreasureArea_MonsterDrop["RandomDrop"][3976][2]["Item_1"] = 3306909--730002 1.14cy 改为赤炼石礼包
	tTreasureArea_MonsterDrop["RandomDrop"][3976][2]["Bag"] = 1
	-- 62336	特殊经验丹（3303017）*1		改为 50气力值  3008186
	tTreasureArea_MonsterDrop["RandomDrop"][3976][3] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][3]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][3]["ItemChance"] = 62336
	tTreasureArea_MonsterDrop["RandomDrop"][3976][3]["Item_1"] = 3008186 --3303017
	-- 15584	高级特殊经验丹（3303018）*1  改为 150气力值  3008187
	tTreasureArea_MonsterDrop["RandomDrop"][3976][4] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][4]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][4]["ItemChance"] = 15584
	tTreasureArea_MonsterDrop["RandomDrop"][3976][4]["Item_1"] = 3008187 --3303018
	-- 28500	坐骑外套*1  噬灵霸虎外套  200200
	tTreasureArea_MonsterDrop["RandomDrop"][3976][5] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][5]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][5]["ItemChance"] = 28500
	tTreasureArea_MonsterDrop["RandomDrop"][3976][5]["Item_1"] = 200200
	-- 28500	坐骑外套*1  紫焰冰虎外套  200201
	tTreasureArea_MonsterDrop["RandomDrop"][3976][6] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][6]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][6]["ItemChance"] = 28500
	tTreasureArea_MonsterDrop["RandomDrop"][3976][6]["Item_1"] = 200201
	-- 28500	坐骑外套*1  紫岚玄虎外套  200202
	tTreasureArea_MonsterDrop["RandomDrop"][3976][7] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][7]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][7]["ItemChance"] = 28500
	tTreasureArea_MonsterDrop["RandomDrop"][3976][7]["Item_1"] = 200202
	-- 28500	坐骑外套*1  赤灵玄鹿外套  200302
	tTreasureArea_MonsterDrop["RandomDrop"][3976][8] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][8]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][8]["ItemChance"] = 28500
	tTreasureArea_MonsterDrop["RandomDrop"][3976][8]["Item_1"] = 200302
	-- 28500	坐骑外套*1  幻霜灵鹿外套  200303
	tTreasureArea_MonsterDrop["RandomDrop"][3976][9] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][9]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][9]["ItemChance"] = 28500
	tTreasureArea_MonsterDrop["RandomDrop"][3976][9]["Item_1"] = 200303
	-- 28000	坐骑外套*1  幻彤灵鹿外套  200304
	tTreasureArea_MonsterDrop["RandomDrop"][3976][10] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][10]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][10]["ItemChance"] = 28000
	tTreasureArea_MonsterDrop["RandomDrop"][3976][10]["Item_1"] = 200304
	-- 28000	坐骑外套*1  凌云仙鹿外套  200306
	tTreasureArea_MonsterDrop["RandomDrop"][3976][11] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][11]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][11]["ItemChance"] = 28000
	tTreasureArea_MonsterDrop["RandomDrop"][3976][11]["Item_1"] = 200306
	-- 400	坐骑外套*1  凝脂雪鹿外套  200106
	tTreasureArea_MonsterDrop["RandomDrop"][3976][12] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][12]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][12]["ItemChance"] = 400
	tTreasureArea_MonsterDrop["RandomDrop"][3976][12]["Item_1"] = 200106
	-- 400	坐骑外套*1  云纹灵虎外套  200010
	tTreasureArea_MonsterDrop["RandomDrop"][3976][13] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][13]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][13]["ItemChance"] = 400
	tTreasureArea_MonsterDrop["RandomDrop"][3976][13]["Item_1"] = 200010
	-- 400	坐骑外套*1  符纹灵虎外套  200008
	tTreasureArea_MonsterDrop["RandomDrop"][3976][14] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][14]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][14]["ItemChance"] = 400
	tTreasureArea_MonsterDrop["RandomDrop"][3976][14]["Item_1"] = 200008
	-- 11000	武器外套*1		芭蕉扇 350007
	tTreasureArea_MonsterDrop["RandomDrop"][3976][15] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][15]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][15]["ItemChance"] = 400
	tTreasureArea_MonsterDrop["RandomDrop"][3976][15]["Item_1"] = 200008
	-- 11000	武器外套*1		断魂琵琶	350006
	tTreasureArea_MonsterDrop["RandomDrop"][3976][16] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][16]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][16]["ItemChance"] = 11000
	tTreasureArea_MonsterDrop["RandomDrop"][3976][16]["Item_1"] = 350006
	-- 11000	武器外套*1		武神铁扳手	360001
	tTreasureArea_MonsterDrop["RandomDrop"][3976][17] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][17]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][17]["ItemChance"] = 11000
	tTreasureArea_MonsterDrop["RandomDrop"][3976][17]["Item_1"] = 360001
	-- 11000	武器外套*1		河豚鱼	360004
	tTreasureArea_MonsterDrop["RandomDrop"][3976][18] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][18]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][18]["ItemChance"] = 11000
	tTreasureArea_MonsterDrop["RandomDrop"][3976][18]["Item_1"] = 360004
	-- 11000	武器外套*1		狱野兔	360013
	tTreasureArea_MonsterDrop["RandomDrop"][3976][19] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][19]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][19]["ItemChance"] = 11000
	tTreasureArea_MonsterDrop["RandomDrop"][3976][19]["Item_1"] = 360013
	-- 11000	武器外套*1		幸福拍拍手	360016
	tTreasureArea_MonsterDrop["RandomDrop"][3976][20] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][20]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][20]["ItemChance"] = 11000
	tTreasureArea_MonsterDrop["RandomDrop"][3976][20]["Item_1"] = 360016
	-- 11000	武器外套*1		爱心神盾	380003
	tTreasureArea_MonsterDrop["RandomDrop"][3976][21] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][21]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][21]["ItemChance"] = 11000
	tTreasureArea_MonsterDrop["RandomDrop"][3976][21]["Item_1"] = 380003
	-- 11000	武器外套*1		太阳花	380004
	tTreasureArea_MonsterDrop["RandomDrop"][3976][22] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][22]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][22]["ItemChance"] = 11000
	tTreasureArea_MonsterDrop["RandomDrop"][3976][22]["Item_1"] = 380004
	-- 11000	武器外套*1		爱神金箭	370002
	tTreasureArea_MonsterDrop["RandomDrop"][3976][23] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][23]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][23]["ItemChance"] = 11000
	tTreasureArea_MonsterDrop["RandomDrop"][3976][23]["Item_1"] = 370002
	-- 3500	武器外套*1		追风海马	370003
	tTreasureArea_MonsterDrop["RandomDrop"][3976][24] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][24]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][24]["ItemChance"] = 3500
	tTreasureArea_MonsterDrop["RandomDrop"][3976][24]["Item_1"] = 370003
	-- 5720	随机五至六阶神魂*1	翳日仙扇	801306
	tTreasureArea_MonsterDrop["RandomDrop"][3976][25] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][25]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][25]["ItemChance"] = 5720
	tTreasureArea_MonsterDrop["RandomDrop"][3976][25]["Item_1"] = 801306
	-- 5720	随机五至六阶神魂*1	勾魂神镰		800254
	tTreasureArea_MonsterDrop["RandomDrop"][3976][26] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][26]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][26]["ItemChance"] = 5720
	tTreasureArea_MonsterDrop["RandomDrop"][3976][26]["Item_1"] = 800254
	-- 5720	随机五至六阶神魂*1	帝青龙牙		800916
	tTreasureArea_MonsterDrop["RandomDrop"][3976][27] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][27]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][27]["ItemChance"] = 5720
	tTreasureArea_MonsterDrop["RandomDrop"][3976][27]["Item_1"] = 800916
	-- 5720	随机五至六阶神魂*1	岁月之枪		800804
	tTreasureArea_MonsterDrop["RandomDrop"][3976][28] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][28]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][28]["ItemChance"] = 5720
	tTreasureArea_MonsterDrop["RandomDrop"][3976][28]["Item_1"] = 800804
	-- 5720	随机五至六阶神魂*1	命运之剑		800809
	tTreasureArea_MonsterDrop["RandomDrop"][3976][29] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][29]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][29]["ItemChance"] = 5720
	tTreasureArea_MonsterDrop["RandomDrop"][3976][29]["Item_1"] = 800809
	-- 5720	随机五至六阶神魂*1	定海玄珠		800722
	tTreasureArea_MonsterDrop["RandomDrop"][3976][30] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][30]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][30]["ItemChance"] = 5720
	tTreasureArea_MonsterDrop["RandomDrop"][3976][30]["Item_1"] = 800722
	-- 7800	随机五至六阶神魂*1	冰凝灵盔		820056
	tTreasureArea_MonsterDrop["RandomDrop"][3976][31] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][31]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][31]["ItemChance"] = 7800
	tTreasureArea_MonsterDrop["RandomDrop"][3976][31]["Item_1"] = 820056
	-- 7800	随机五至六阶神魂*1	六阳灵冠		820057
	tTreasureArea_MonsterDrop["RandomDrop"][3976][32] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][32]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][32]["ItemChance"] = 7800
	tTreasureArea_MonsterDrop["RandomDrop"][3976][32]["Item_1"] = 820057
	-- 7800	随机五至六阶神魂*1	雷纹盾		800415
	tTreasureArea_MonsterDrop["RandomDrop"][3976][33] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][33]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][33]["ItemChance"] = 7800
	tTreasureArea_MonsterDrop["RandomDrop"][3976][33]["Item_1"] = 800415
	-- 5720	随机五至六阶神魂*1	紫魔刃		800000
	tTreasureArea_MonsterDrop["RandomDrop"][3976][34] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][34]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][34]["ItemChance"] = 5720
	tTreasureArea_MonsterDrop["RandomDrop"][3976][34]["Item_1"] = 800000
	-- 5720	随机五至六阶神魂*1	魔吕锤		800110
	tTreasureArea_MonsterDrop["RandomDrop"][3976][35] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][35]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][35]["ItemChance"] = 5720
	tTreasureArea_MonsterDrop["RandomDrop"][3976][35]["Item_1"] = 800110
	-- 5720	随机五至六阶神魂*1	隐夜忍刀		800017
	tTreasureArea_MonsterDrop["RandomDrop"][3976][36] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][36]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][36]["ItemChance"] = 5720
	tTreasureArea_MonsterDrop["RandomDrop"][3976][36]["Item_1"] = 800017
	-- 5720	随机五至六阶神魂*1	龙翼长棍		800320
	tTreasureArea_MonsterDrop["RandomDrop"][3976][37] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][37]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][37]["ItemChance"] = 5720
	tTreasureArea_MonsterDrop["RandomDrop"][3976][37]["Item_1"] = 800320
	-- 5720	随机五至六阶神魂*1	影灵宝剑		800513
	tTreasureArea_MonsterDrop["RandomDrop"][3976][38] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][38]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][38]["ItemChance"] = 5720
	tTreasureArea_MonsterDrop["RandomDrop"][3976][38]["Item_1"] = 800513
	-- 5720	随机五至六阶神魂*1	天翼弓			800616
	tTreasureArea_MonsterDrop["RandomDrop"][3976][39] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][39]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][39]["ItemChance"] = 5720
	tTreasureArea_MonsterDrop["RandomDrop"][3976][39]["Item_1"] = 800616
	-- 5720	随机五至六阶神魂*1	沧海龙吟		801003
	tTreasureArea_MonsterDrop["RandomDrop"][3976][40] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][40]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][40]["ItemChance"] = 5720
	tTreasureArea_MonsterDrop["RandomDrop"][3976][40]["Item_1"] = 801003
	-- 5720	随机五至六阶神魂*1	太极天机拂尘		801103
	tTreasureArea_MonsterDrop["RandomDrop"][3976][41] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][41]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][41]["ItemChance"] = 5720
	tTreasureArea_MonsterDrop["RandomDrop"][3976][41]["Item_1"] = 801103
	-- 5720	随机五至六阶神魂*1	烈拳·碎空		801212
	tTreasureArea_MonsterDrop["RandomDrop"][3976][42] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][42]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][42]["ItemChance"] = 5720
	tTreasureArea_MonsterDrop["RandomDrop"][3976][42]["Item_1"] = 801212
	-- 5720	随机五至六阶神魂*1	烈拳·撼地		801214
	tTreasureArea_MonsterDrop["RandomDrop"][3976][43] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][43]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][43]["ItemChance"] = 5720
	tTreasureArea_MonsterDrop["RandomDrop"][3976][43]["Item_1"] = 801214
	-- 剩下概率 配空  14760
	tTreasureArea_MonsterDrop["RandomDrop"][3976][44] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3976][44]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3976][44]["ItemChance"] = 14760
	tTreasureArea_MonsterDrop["RandomDrop"][3976][44]["Item_1"] = 0
	
	-- 3977	禁天邪兽
	tTreasureArea_MonsterDrop["RandomDrop"][3977] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3977]["ItemChanceSum"] = 10000
	-- 5%	龙珠（1088000）*1
	tTreasureArea_MonsterDrop["RandomDrop"][3977][1] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3977][1]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3977][1]["ItemChance"] = 500
	tTreasureArea_MonsterDrop["RandomDrop"][3977][1]["Item_1"] = 1088000
	-- 20%	星月宝盒（3008732）*1
	tTreasureArea_MonsterDrop["RandomDrop"][3977][2] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3977][2]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3977][2]["ItemChance"] = 2000
	tTreasureArea_MonsterDrop["RandomDrop"][3977][2]["Item_1"] = 3008732
	-- 16%	赤龙除妖令（3200280）*1
	tTreasureArea_MonsterDrop["RandomDrop"][3977][3] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3977][3]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3977][3]["ItemChance"] = 1600
	tTreasureArea_MonsterDrop["RandomDrop"][3977][3]["Item_1"] = 3200280
	-- 10%	特殊经验丹（3303017）*1		改为 50气力值	3008186
	tTreasureArea_MonsterDrop["RandomDrop"][3977][4] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3977][4]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3977][4]["ItemChance"] = 1000
	tTreasureArea_MonsterDrop["RandomDrop"][3977][4]["Item_1"] = 3008186 --3303017
	-- 4%	高级特殊经验丹（3303018）*1		改为  150气力值	3008187
	tTreasureArea_MonsterDrop["RandomDrop"][3977][5] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3977][5]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3977][5]["ItemChance"] = 400
	tTreasureArea_MonsterDrop["RandomDrop"][3977][5]["Item_1"] = 3008187 --3303018
	-- 45%	随机六阶神魂*1
	-- 5%	盘龙玄戒		823055
	tTreasureArea_MonsterDrop["RandomDrop"][3977][6] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3977][6]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3977][6]["ItemChance"] = 500
	tTreasureArea_MonsterDrop["RandomDrop"][3977][6]["Item_1"] = 823055
	-- 5%	蟠龙玄镯		823056
	tTreasureArea_MonsterDrop["RandomDrop"][3977][7] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3977][7]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3977][7]["ItemChance"] = 500
	tTreasureArea_MonsterDrop["RandomDrop"][3977][7]["Item_1"] = 823056
	-- 5%	九曜玄羽		820071
	tTreasureArea_MonsterDrop["RandomDrop"][3977][8] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3977][8]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3977][8]["ItemChance"] = 500
	tTreasureArea_MonsterDrop["RandomDrop"][3977][8]["Item_1"] = 820071
	-- 5%	天瀑玄羽		820072
	tTreasureArea_MonsterDrop["RandomDrop"][3977][9] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3977][9]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3977][9]["ItemChance"] = 500
	tTreasureArea_MonsterDrop["RandomDrop"][3977][9]["Item_1"] = 820072
	-- 5%	蛰龙玄盾		800421
	tTreasureArea_MonsterDrop["RandomDrop"][3977][10] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3977][10]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3977][10]["ItemChance"] = 500
	tTreasureArea_MonsterDrop["RandomDrop"][3977][10]["Item_1"] = 800421
	-- 5%	晶魄玄坠		821031
	tTreasureArea_MonsterDrop["RandomDrop"][3977][11] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3977][11]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3977][11]["ItemChance"] = 500
	tTreasureArea_MonsterDrop["RandomDrop"][3977][11]["Item_1"] = 821031
	-- 5%	灵檀玄囊		821032
	tTreasureArea_MonsterDrop["RandomDrop"][3977][12] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3977][12]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3977][12]["ItemChance"] = 500
	tTreasureArea_MonsterDrop["RandomDrop"][3977][12]["Item_1"] = 824017
	-- 5%	天行玄履		824017
	tTreasureArea_MonsterDrop["RandomDrop"][3977][13] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3977][13]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3977][13]["ItemChance"] = 500
	tTreasureArea_MonsterDrop["RandomDrop"][3977][13]["Item_1"] = 824017
	-- 5%	玄玉扳指		823057
	tTreasureArea_MonsterDrop["RandomDrop"][3977][14] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3977][14]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3977][14]["ItemChance"] = 500
	tTreasureArea_MonsterDrop["RandomDrop"][3977][14]["Item_1"] = 823057
	
	
	-- 3978	啸海狂魔
	tTreasureArea_MonsterDrop["RandomDrop"][3978] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3978]["Space"] = 1
	tTreasureArea_MonsterDrop["RandomDrop"][3978]["ItemChanceSum"] = 10000
	-- 15%	七阶武器神魂礼包碎片（3315497）*1
	tTreasureArea_MonsterDrop["RandomDrop"][3978][1] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3978][1]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3978][1]["ItemChance"] = 1500
	tTreasureArea_MonsterDrop["RandomDrop"][3978][1]["Item_1"] = 3315497
	-- 10%	七阶防具配饰神魂礼包碎片（3315498）*1
	tTreasureArea_MonsterDrop["RandomDrop"][3978][2] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3978][2]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3978][2]["ItemChance"] = 1000
	tTreasureArea_MonsterDrop["RandomDrop"][3978][2]["Item_1"] = 3315498
	-- 10%	特殊经验丹（3303017）*1	改为  50气力值		3008186
	tTreasureArea_MonsterDrop["RandomDrop"][3978][3] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3978][3]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3978][3]["ItemChance"] = 1000
	tTreasureArea_MonsterDrop["RandomDrop"][3978][3]["Item_1"] = 3008186 --3303017
	-- 4%	高级特殊经验丹（3303018）*1		改为 150气力值	3008187
	tTreasureArea_MonsterDrop["RandomDrop"][3978][4] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3978][4]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3978][4]["ItemChance"] = 400
	tTreasureArea_MonsterDrop["RandomDrop"][3978][4]["Item_1"] = 3008187 --3303018
	-- 15%	星月宝盒（3008732）*1
	tTreasureArea_MonsterDrop["RandomDrop"][3978][5] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3978][5]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3978][5]["ItemChance"] = 1500
	tTreasureArea_MonsterDrop["RandomDrop"][3978][5]["Item_1"] = 3008732
	-- 15%	赤龙除妖令（3200280）*1
	tTreasureArea_MonsterDrop["RandomDrop"][3978][6] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3978][6]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3978][6]["ItemChance"] = 1500
	tTreasureArea_MonsterDrop["RandomDrop"][3978][6]["Item_1"] = 3200280
	-- 31%	打宝区保护药水	3304960	1
	tTreasureArea_MonsterDrop["RandomDrop"][3978][7] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3978][7]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3978][7]["ItemChance"] = 3100
	tTreasureArea_MonsterDrop["RandomDrop"][3978][7]["Item_1"] = 3304960
	

	-- 3970	妖后瑶姬
	tTreasureArea_MonsterDrop["RandomDrop"][3970] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3970]["Space"] = 1
	tTreasureArea_MonsterDrop["RandomDrop"][3970]["ItemChanceSum"] = 10000
	-- 20%	灵力精魄（3008735）*3
	tTreasureArea_MonsterDrop["RandomDrop"][3970][1] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3970][1]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3970][1]["ItemChance"] = 2000
	tTreasureArea_MonsterDrop["RandomDrop"][3970][1]["Item_1"] = 3008735
	tTreasureArea_MonsterDrop["RandomDrop"][3970][1]["Num"] = 3
	-- 20%	炽热天石碎片（3008727）*3
	tTreasureArea_MonsterDrop["RandomDrop"][3970][2] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3970][2]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3970][2]["ItemChance"] = 2000
	tTreasureArea_MonsterDrop["RandomDrop"][3970][2]["Item_1"] = 3008727
	tTreasureArea_MonsterDrop["RandomDrop"][3970][2]["Num"] = 3
	-- 15%	特殊经验丹（3303017）*3		改为 50气力值*3 3008186
	tTreasureArea_MonsterDrop["RandomDrop"][3970][3] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3970][3]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3970][3]["ItemChance"] = 1500
	tTreasureArea_MonsterDrop["RandomDrop"][3970][3]["Item_1"] = 3008186 --3303017
	tTreasureArea_MonsterDrop["RandomDrop"][3970][3]["Num"] = 3
	-- 5%	高级特殊经验丹（3303018）*1		改为 150气力值	3008187
	tTreasureArea_MonsterDrop["RandomDrop"][3970][4] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3970][4]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3970][4]["ItemChance"] = 500
	tTreasureArea_MonsterDrop["RandomDrop"][3970][4]["Item_1"] = 3008187 --3303018
	-- 20%	星月宝盒（3008732）*1
	tTreasureArea_MonsterDrop["RandomDrop"][3970][5] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3970][5]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3970][5]["ItemChance"] = 2000
	tTreasureArea_MonsterDrop["RandomDrop"][3970][5]["Item_1"] = 3008732
	-- 20%	赤龙除妖令（3200280）*1
	tTreasureArea_MonsterDrop["RandomDrop"][3970][6] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3970][6]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3970][6]["ItemChance"] = 2000
	tTreasureArea_MonsterDrop["RandomDrop"][3970][6]["Item_1"] = 3200280
	
	
	-- 3971		邪龙护法
	-- 分母390000
	tTreasureArea_MonsterDrop["RandomDrop"][3971] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3971]["Space"] = 1
	tTreasureArea_MonsterDrop["RandomDrop"][3971]["ItemChanceSum"] = 390000
	-- 97500	高级淬炼礼包*1  728919
	tTreasureArea_MonsterDrop["RandomDrop"][3971][1] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3971][1]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3971][1]["ItemChance"] = 97500
	tTreasureArea_MonsterDrop["RandomDrop"][3971][1]["Item_1"] = 728919
	-- 107150	神魂卷轴*1	3004260
	tTreasureArea_MonsterDrop["RandomDrop"][3971][2] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3971][2]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3971][2]["ItemChance"] = 107150
	tTreasureArea_MonsterDrop["RandomDrop"][3971][2]["Item_1"] = 3004260
	-- 30030	经验复原丹（新做）*1  3302881		改为 50气力值	3008186
	tTreasureArea_MonsterDrop["RandomDrop"][3971][3] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3971][3]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3971][3]["ItemChance"] = 30030
	tTreasureArea_MonsterDrop["RandomDrop"][3971][3]["Item_1"] = 3008186 --3302881
	-- 117000	灵力精魄（3008735）*1	
	tTreasureArea_MonsterDrop["RandomDrop"][3971][4] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3971][4]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3971][4]["ItemChance"] = 117000
	tTreasureArea_MonsterDrop["RandomDrop"][3971][4]["Item_1"] = 3008735
	-- 30600	特殊经验丹（3303017）*1		改为 50气力值	3008186
	tTreasureArea_MonsterDrop["RandomDrop"][3971][5] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3971][5]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3971][5]["ItemChance"] = 30600
	tTreasureArea_MonsterDrop["RandomDrop"][3971][5]["Item_1"] = 3008186 --3303017
	-- 7648	高级特殊经验丹（3303018）*1	改为 150气力值	3008187
	tTreasureArea_MonsterDrop["RandomDrop"][3971][6] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3971][6]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3971][6]["ItemChance"] = 7648
	tTreasureArea_MonsterDrop["RandomDrop"][3971][6]["Item_1"] = 3008187 --3303018
	-- 72  接空
	tTreasureArea_MonsterDrop["RandomDrop"][3971][7] = {}
	tTreasureArea_MonsterDrop["RandomDrop"][3971][7]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomDrop"][3971][7]["ItemChance"] = 72
	tTreasureArea_MonsterDrop["RandomDrop"][3971][7]["Item_1"] = 0	
	
	------------------------- 神纹版本 boss额外概率掉落奖励
	tTreasureArea_MonsterDrop["RandomExtraDrop"] = {}
	-- 3976  晶魄雪妖
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3976] = {}
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3976]["ItemChanceSum"] = 10000
	-- 额外奖励（地面刷新）					
	-- 赤炼石结晶	新制作	1		3307090
	-- 赤炼石+1	3301223	10				5%
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3976][1] = {}
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3976][1]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3976][1]["ItemChance"] = 500
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3976][1]["Item_1"] = 1 -- 表示掉落物品
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3976][1]["ItemReward"] = {}
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3976][1]["Num"] = {}
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3976][1]["ItemReward"][1] = 3307090
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3976][1]["Num"][1] = 1
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3976][1]["ItemReward"][2] = 3301223
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3976][1]["Num"][2] = 10
	-- 空
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3976][2] = {}
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3976][2]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3976][2]["ItemChance"] = 9500
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3976][2]["Item_1"] = 0 -- 表示不掉
	
	-- 3977	禁天邪兽
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3977] = {}
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3977]["ItemChanceSum"] = 10000
	-- 额外掉落（地面刷新）					
	-- 气力结晶	新制作	1		3307089
	-- 龙虎回力丸	729252	10				5%
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3977][1] = {}
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3977][1]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3977][1]["ItemChance"] = 500
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3977][1]["Item_1"] = 1 -- 表示掉落物品
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3977][1]["ItemReward"] = {}
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3977][1]["Num"] = {}
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3977][1]["ItemReward"][1] = 3307089
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3977][1]["Num"][1] = 1
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3977][1]["ItemReward"][2] = 729252
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3977][1]["Num"][2] = 10
	-- 空
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3977][2] = {}
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3977][2]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3977][2]["ItemChance"] = 9500
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3977][2]["Item_1"] = 0 -- 表示不掉
	
	-- 3978	啸海狂魔
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3978] = {}
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3978]["ItemChanceSum"] = 10000
	-- 额外掉落					
	-- 玄宝		1			5个随机一个
	-- 玄宝碎片		10		3307116	5.00%
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3978][1] = {}
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3978][1]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3978][1]["ItemChance"] = 500
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3978][1]["Item_1"] = 2  -- 表示玄宝
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3978][1]["ItemReward"] = 3307116
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3978][1]["Num"] = 10
	-- 空
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3978][2] = {}
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3978][2]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3978][2]["ItemChance"] = 9500
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3978][2]["Item_1"] = 0 -- 表示不掉
	
	-- 3970	妖后瑶姬
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3970] = {}
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3970]["ItemChanceSum"] = 10000
	-- 额外刷新		
	-- 3个宝箱怪物		40%
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3970][1] = {}
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3970][1]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3970][1]["ItemChance"] = 4000
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3970][1]["Item_1"] = 3  --表示刷怪	
	-- 空
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3970][2] = {}
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3970][2]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3970][2]["ItemChance"] = 6000
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3970][2]["Item_1"] = 0 -- 表示不掉
	
	-- 3971		邪龙护法
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3971] = {}
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3971]["ItemChanceSum"] = 10000
	-- 额外掉落（地面刷新）	5%
	-- 星陨石结晶	新制作		3307088	
	-- 奇门秘籍	723340	10			
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3971][1] = {}
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3971][1]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3971][1]["ItemChance"] = 500
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3971][1]["Item_1"] = 1 -- 表示掉落物品
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3971][1]["ItemReward"] = {}
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3971][1]["Num"] = {}
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3971][1]["ItemReward"][1] = 3307088
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3971][1]["Num"][1] = 1
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3971][1]["ItemReward"][2] = 723340
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3971][1]["Num"][2] = 10
	-- 空
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3971][2] = {}
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3971][2]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3971][2]["ItemChance"] = 9500
	tTreasureArea_MonsterDrop["RandomExtraDrop"][3971][2]["Item_1"] = 0 -- 表示不掉
	
	------------------------ 玄宝随机
	tTreasureArea_MonsterDrop["XuanBao"] = {}
	tTreasureArea_MonsterDrop["XuanBao"][1] = {}
	tTreasureArea_MonsterDrop["XuanBao"][1]["ItemChanceSum"] = 10000
	-- 4100001	昆仑镜
	tTreasureArea_MonsterDrop["XuanBao"][1][1] = {}
	tTreasureArea_MonsterDrop["XuanBao"][1][1]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["XuanBao"][1][1]["ItemChance"] = 2000
	tTreasureArea_MonsterDrop["XuanBao"][1][1]["Item_1"] = 4100001
	-- 4100002	神农鼎
	tTreasureArea_MonsterDrop["XuanBao"][1][2] = {}
	tTreasureArea_MonsterDrop["XuanBao"][1][2]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["XuanBao"][1][2]["ItemChance"] = 2000
	tTreasureArea_MonsterDrop["XuanBao"][1][2]["Item_1"] = 4100002
	-- 4100003	定海珠
	tTreasureArea_MonsterDrop["XuanBao"][1][3] = {}
	tTreasureArea_MonsterDrop["XuanBao"][1][3]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["XuanBao"][1][3]["ItemChance"] = 2000
	tTreasureArea_MonsterDrop["XuanBao"][1][3]["Item_1"] = 4100003
	-- 4100004	番天印
	tTreasureArea_MonsterDrop["XuanBao"][1][4] = {}
	tTreasureArea_MonsterDrop["XuanBao"][1][4]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["XuanBao"][1][4]["ItemChance"] = 2000
	tTreasureArea_MonsterDrop["XuanBao"][1][4]["Item_1"] = 4100004
	-- 4100005	东皇钟
	tTreasureArea_MonsterDrop["XuanBao"][1][5] = {}
	tTreasureArea_MonsterDrop["XuanBao"][1][5]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["XuanBao"][1][5]["ItemChance"] = 2000
	tTreasureArea_MonsterDrop["XuanBao"][1][5]["Item_1"] = 4100005
	
	------------------------ 随机刷哪种宝箱怪
	tTreasureArea_MonsterDrop["BrushBox"] = {}
	tTreasureArea_MonsterDrop["BrushBox"][1] = {}
	tTreasureArea_MonsterDrop["BrushBox"][1]["ItemChanceSum"] = 10000
	-- 4613	固化石幸运宝箱  30%
	tTreasureArea_MonsterDrop["BrushBox"][1][1] = {}
	tTreasureArea_MonsterDrop["BrushBox"][1][1]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["BrushBox"][1][1]["ItemChance"] = 3000
	tTreasureArea_MonsterDrop["BrushBox"][1][1]["Item_1"] = 4613
	-- 4614	金钢坚钻幸运宝箱 30%
	tTreasureArea_MonsterDrop["BrushBox"][1][2] = {}
	tTreasureArea_MonsterDrop["BrushBox"][1][2]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["BrushBox"][1][2]["ItemChance"] = 3000
	tTreasureArea_MonsterDrop["BrushBox"][1][2]["Item_1"] = 4614
	-- 4615	玄元宝石幸运宝箱 40%
	tTreasureArea_MonsterDrop["BrushBox"][1][3] = {}
	tTreasureArea_MonsterDrop["BrushBox"][1][3]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["BrushBox"][1][3]["ItemChance"] = 4000
	tTreasureArea_MonsterDrop["BrushBox"][1][3]["Item_1"] = 4615
	
	------------------------------ 4613	固化石幸运宝箱
	tTreasureArea_MonsterDrop[4613] = {}
	-- 大奖  固化石升级包 3307095
	tTreasureArea_MonsterDrop[4613][1] = {}
	tTreasureArea_MonsterDrop[4613][1]["RewardItem"] = {}
	tTreasureArea_MonsterDrop[4613][1]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop[4613][1]["RewardItem"][1]["Id"] = 3307095
	tTreasureArea_MonsterDrop[4613][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop[4613][1]["Log"] = "0,0,0,0,18000160,2[4613],3307095,1"
	-- tTreasureArea_MonsterDrop[4613][1]["Talk"] = 
	-- tTreasureArea_MonsterDrop[4613][1]["RewardBroadCast"] = 
	-- 小奖  500气力值  3306155
	tTreasureArea_MonsterDrop[4613][2] = {}
	tTreasureArea_MonsterDrop[4613][2]["RewardItem"] = {}
	tTreasureArea_MonsterDrop[4613][2]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop[4613][2]["RewardItem"][1]["Id"] = 3306155
	tTreasureArea_MonsterDrop[4613][2]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop[4613][2]["Log"] = "0,0,0,0,18000160,2[4613],3306155,1"
	
	------------------------------ 4614	金钢坚钻幸运宝箱
	tTreasureArea_MonsterDrop[4614] = {}
	-- 大奖  金钢坚钻升级包 3307096
	tTreasureArea_MonsterDrop[4614][1] = {}
	tTreasureArea_MonsterDrop[4614][1]["RewardItem"] = {}
	tTreasureArea_MonsterDrop[4614][1]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop[4614][1]["RewardItem"][1]["Id"] = 3307096
	tTreasureArea_MonsterDrop[4614][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop[4614][1]["Log"] = "0,0,0,0,18000160,2[4614],3307096,1"
	-- tTreasureArea_MonsterDrop[4614][1]["Talk"] = 
	-- tTreasureArea_MonsterDrop[4614][1]["RewardBroadCast"] = 
	-- 小奖  500气力值  3306155
	tTreasureArea_MonsterDrop[4614][2] = {}
	tTreasureArea_MonsterDrop[4614][2]["RewardItem"] = {}
	tTreasureArea_MonsterDrop[4614][2]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop[4614][2]["RewardItem"][1]["Id"] = 3306155
	tTreasureArea_MonsterDrop[4614][2]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop[4614][2]["Log"] = "0,0,0,0,18000160,2[4614],3306155,1"
	
	------------------------------ 4615	玄元宝石幸运宝箱
	tTreasureArea_MonsterDrop[4615] = {}
	-- 大奖  优质玄元升级包 3307097
	tTreasureArea_MonsterDrop[4615][1] = {}
	tTreasureArea_MonsterDrop[4615][1]["RewardItem"] = {}
	tTreasureArea_MonsterDrop[4615][1]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop[4615][1]["RewardItem"][1]["Id"] = 3307097
	tTreasureArea_MonsterDrop[4615][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop[4615][1]["Log"] = "0,0,0,0,18000160,2[4615],3307097,1"
	-- tTreasureArea_MonsterDrop[4615][1]["Talk"] = 
	-- tTreasureArea_MonsterDrop[4615][1]["RewardBroadCast"] = 
	-- 小奖  500气力值  3306155
	tTreasureArea_MonsterDrop[4615][2] = {}
	tTreasureArea_MonsterDrop[4615][2]["RewardItem"] = {}
	tTreasureArea_MonsterDrop[4615][2]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop[4615][2]["RewardItem"][1]["Id"] = 3306155
	tTreasureArea_MonsterDrop[4615][2]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop[4615][2]["Log"] = "0,0,0,0,18000160,2[4615],3306155,1"
	
	---------------------------- 人品值消耗完，给剩余参与奖
	tTreasureArea_MonsterDrop["StcLeft"] = {}
	tTreasureArea_MonsterDrop["StcLeft"]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["StcLeft"]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["StcLeft"]["RewardItem"][1]["Id"] = 3303520
	tTreasureArea_MonsterDrop["StcLeft"]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["StcLeft"]["LogId"] = 18000160
	-- tTreasureArea_MonsterDrop["StcLeft"]["Talk"] = 
	-- tTreasureArea_MonsterDrop["StcLeft"]["RewardBroadCast"] = 
	
	------------------------ 小怪和boss共用的普通奖池
	tTreasureArea_MonsterDrop["Normal"] = {}
	tTreasureArea_MonsterDrop["Normal"][1] = {}
	tTreasureArea_MonsterDrop["Normal"][1]["Space"] = 1
	tTreasureArea_MonsterDrop["Normal"][1]["ItemChanceSum"] = 10000
	-- 特殊经验丹*1	3303017	0.5	4.00%   改为2.50%
	tTreasureArea_MonsterDrop["Normal"][1][1] = {}
	tTreasureArea_MonsterDrop["Normal"][1][1]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Normal"][1][1]["ItemChance"] = 250
	tTreasureArea_MonsterDrop["Normal"][1][1]["Item_1"] = 3008186 --3303017
	tTreasureArea_MonsterDrop["Normal"][1][1]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Normal"][1][1]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Normal"][1][1]["RewardItem"][1]["Id"] = 3008186 --3303017
	tTreasureArea_MonsterDrop["Normal"][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Normal"][1][1]["Log"] = "0,0,0,0,18000160,2,3008186,1"
	-- 高级特殊经验丹*1	3303018		1.00%
	tTreasureArea_MonsterDrop["Normal"][1][2] = {}
	tTreasureArea_MonsterDrop["Normal"][1][2]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Normal"][1][2]["ItemChance"] = 100
	tTreasureArea_MonsterDrop["Normal"][1][2]["Item_1"] = 3008187 --3303018
	tTreasureArea_MonsterDrop["Normal"][1][2]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Normal"][1][2]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Normal"][1][2]["RewardItem"][1]["Id"] = 3008187 --3303018
	tTreasureArea_MonsterDrop["Normal"][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Normal"][1][2]["Log"] = "0,0,0,0,18000160,2,3008187,1"
	-- 六阳聚神丹碎片*1	3303101	2	0.50%
	tTreasureArea_MonsterDrop["Normal"][1][3] = {}
	tTreasureArea_MonsterDrop["Normal"][1][3]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Normal"][1][3]["ItemChance"] = 50
	tTreasureArea_MonsterDrop["Normal"][1][3]["Item_1"] = 3008188 --3303101
	tTreasureArea_MonsterDrop["Normal"][1][3]["Bag"] = 1
	tTreasureArea_MonsterDrop["Normal"][1][3]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Normal"][1][3]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Normal"][1][3]["RewardItem"][1]["Id"] = 3008188 --3303101
	tTreasureArea_MonsterDrop["Normal"][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Normal"][1][3]["Log"] = "0,0,0,0,18000160,2,3008188,1"
	-- 经验复原丹*1	3302881	3	1.50%
	tTreasureArea_MonsterDrop["Normal"][1][4] = {}
	tTreasureArea_MonsterDrop["Normal"][1][4]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Normal"][1][4]["ItemChance"] = 150
	tTreasureArea_MonsterDrop["Normal"][1][4]["Item_1"] = 3008186 --3302881
	tTreasureArea_MonsterDrop["Normal"][1][4]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Normal"][1][4]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Normal"][1][4]["RewardItem"][1]["Id"] = 3008186 --3302881
	tTreasureArea_MonsterDrop["Normal"][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Normal"][1][4]["Log"] = "0,0,0,0,18000160,2,3008186,1"
	-- 流星*1	1088001	0.2	2.00%
	tTreasureArea_MonsterDrop["Normal"][1][5] = {}
	tTreasureArea_MonsterDrop["Normal"][1][5]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Normal"][1][5]["ItemChance"] = 200
	tTreasureArea_MonsterDrop["Normal"][1][5]["Item_1"] = 1088001
	tTreasureArea_MonsterDrop["Normal"][1][5]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Normal"][1][5]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Normal"][1][5]["RewardItem"][1]["Id"] = 1088001
	tTreasureArea_MonsterDrop["Normal"][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Normal"][1][5]["Log"] = "0,0,0,0,18000160,2,1088001,1"
	-- 强效护心丹*1	3002030		3.00%改为 2%
	tTreasureArea_MonsterDrop["Normal"][1][6] = {}
	tTreasureArea_MonsterDrop["Normal"][1][6]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Normal"][1][6]["ItemChance"] = 200
	tTreasureArea_MonsterDrop["Normal"][1][6]["Item_1"] = 3002030
	tTreasureArea_MonsterDrop["Normal"][1][6]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Normal"][1][6]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Normal"][1][6]["RewardItem"][1]["Id"] = 3002030
	tTreasureArea_MonsterDrop["Normal"][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Normal"][1][6]["Log"] = "0,0,0,0,18000160,2,3002030,1"
	-- 免费强炼丹（赠）*1	3003124	2.5	2.00%  直接塞背包  改为  0
	tTreasureArea_MonsterDrop["Normal"][1][7] = {}
	tTreasureArea_MonsterDrop["Normal"][1][7]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Normal"][1][7]["ItemChance"] = 0
	tTreasureArea_MonsterDrop["Normal"][1][7]["Item_1"] = 3003124
	tTreasureArea_MonsterDrop["Normal"][1][7]["Bag"] = 1
	tTreasureArea_MonsterDrop["Normal"][1][7]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Normal"][1][7]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Normal"][1][7]["RewardItem"][1]["Id"] = 3003124
	tTreasureArea_MonsterDrop["Normal"][1][7]["RewardItem"][1]["Attr"] = "0 1 3"
	tTreasureArea_MonsterDrop["Normal"][1][7]["Log"] = "0,0,0,0,18000160,2,3003124,1"
	-- 7天武器外套碎片*1	3007106		2.00% 改为 1%
	tTreasureArea_MonsterDrop["Normal"][1][8] = {}
	tTreasureArea_MonsterDrop["Normal"][1][8]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Normal"][1][8]["ItemChance"] = 100
	tTreasureArea_MonsterDrop["Normal"][1][8]["Item_1"] = 3007106
	tTreasureArea_MonsterDrop["Normal"][1][8]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Normal"][1][8]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Normal"][1][8]["RewardItem"][1]["Id"] = 3007106
	tTreasureArea_MonsterDrop["Normal"][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Normal"][1][8]["Log"] = "0,0,0,0,18000160,2,3007106,1"
	-- 萌系武器外套碎片礼包*1	3004257		2.00%改为 1%
	tTreasureArea_MonsterDrop["Normal"][1][9] = {}
	tTreasureArea_MonsterDrop["Normal"][1][9]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Normal"][1][9]["ItemChance"] = 100
	tTreasureArea_MonsterDrop["Normal"][1][9]["Item_1"] = 3004257
	tTreasureArea_MonsterDrop["Normal"][1][9]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Normal"][1][9]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Normal"][1][9]["RewardItem"][1]["Id"] = 3004257
	tTreasureArea_MonsterDrop["Normal"][1][9]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Normal"][1][9]["Log"] = "0,0,0,0,18000160,2,3004257,1"
	-- +1赤炼石福运包	3301223	4	3.00%   改为2%改为 1%
	tTreasureArea_MonsterDrop["Normal"][1][10] = {}
	tTreasureArea_MonsterDrop["Normal"][1][10]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Normal"][1][10]["ItemChance"] = 100
	tTreasureArea_MonsterDrop["Normal"][1][10]["Item_1"] = 3301223
	tTreasureArea_MonsterDrop["Normal"][1][10]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Normal"][1][10]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Normal"][1][10]["RewardItem"][1]["Id"] = 3301223
	tTreasureArea_MonsterDrop["Normal"][1][10]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Normal"][1][10]["Log"] = "0,0,0,0,18000160,2,3301223,1"
	-- 龙血精石*1	3008994	4.5	2.50% 改为 0.5%
	tTreasureArea_MonsterDrop["Normal"][1][11] = {}
	tTreasureArea_MonsterDrop["Normal"][1][11]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Normal"][1][11]["ItemChance"] = 50
	tTreasureArea_MonsterDrop["Normal"][1][11]["Item_1"] = 3008994
	tTreasureArea_MonsterDrop["Normal"][1][11]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Normal"][1][11]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Normal"][1][11]["RewardItem"][1]["Id"] = 3008994
	tTreasureArea_MonsterDrop["Normal"][1][11]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Normal"][1][11]["Log"] = "0,0,0,0,18000160,2,3008994,1"
	-- 神魂卷轴*1	3004260		2.00% 改为 1%
	tTreasureArea_MonsterDrop["Normal"][1][12] = {}
	tTreasureArea_MonsterDrop["Normal"][1][12]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Normal"][1][12]["ItemChance"] = 100
	tTreasureArea_MonsterDrop["Normal"][1][12]["Item_1"] = 3004260
	tTreasureArea_MonsterDrop["Normal"][1][12]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Normal"][1][12]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Normal"][1][12]["RewardItem"][1]["Id"] = 3004260
	tTreasureArea_MonsterDrop["Normal"][1][12]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Normal"][1][12]["Log"] = "0,0,0,0,18000160,2,3004260,1"
	-- 50点气力包*1	3008186	12	3.50%  改为 2%		每人每天限掉3个，满了不掉东西  
	tTreasureArea_MonsterDrop["Normal"][1][13] = {}
	tTreasureArea_MonsterDrop["Normal"][1][13]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Normal"][1][13]["ItemChance"] = 200
	tTreasureArea_MonsterDrop["Normal"][1][13]["Item_1"] = 3008186
	tTreasureArea_MonsterDrop["Normal"][1][13]["Limit"] = 3
	tTreasureArea_MonsterDrop["Normal"][1][13]["StcIndex"] = 4
	tTreasureArea_MonsterDrop["Normal"][1][13]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Normal"][1][13]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Normal"][1][13]["RewardItem"][1]["Id"] = 3008186
	tTreasureArea_MonsterDrop["Normal"][1][13]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Normal"][1][13]["Log"] = "0,0,0,0,18000160,2,3008186,1"
	tTreasureArea_MonsterDrop["Normal"][1][13]["EventType"] = 161
	tTreasureArea_MonsterDrop["Normal"][1][13]["DataType"] = 52
	tTreasureArea_MonsterDrop["Normal"][1][13]["RewardData"] = 1
	tTreasureArea_MonsterDrop["Normal"][1][13]["RewardTotalData"] = 3
	tTreasureArea_MonsterDrop["Normal"][1][13]["RewardDelay"] = 1
	tTreasureArea_MonsterDrop["Normal"][1][13]["RewardTimeType"] = 4
	tTreasureArea_MonsterDrop["Normal"][1][13]["FullIndex"] = 20
	-- 50点修行包*1	3006536	2.5	4.00%   改为 2.0%  
	tTreasureArea_MonsterDrop["Normal"][1][14] = {}
	tTreasureArea_MonsterDrop["Normal"][1][14]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Normal"][1][14]["ItemChance"] = 200
	tTreasureArea_MonsterDrop["Normal"][1][14]["Item_1"] = 3006536
	tTreasureArea_MonsterDrop["Normal"][1][14]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Normal"][1][14]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Normal"][1][14]["RewardItem"][1]["Id"] = 3006536
	tTreasureArea_MonsterDrop["Normal"][1][14]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Normal"][1][14]["Log"] = "0,0,0,0,18000160,2,3006536,1"
	-- 微光星陨石*1	3009000	8	3.00%		直接塞背包		每人每天限掉3个，满了不掉东西   改为1%
	tTreasureArea_MonsterDrop["Normal"][1][15] = {}
	tTreasureArea_MonsterDrop["Normal"][1][15]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Normal"][1][15]["ItemChance"] = 100
	tTreasureArea_MonsterDrop["Normal"][1][15]["Item_1"] = 3009000
	tTreasureArea_MonsterDrop["Normal"][1][15]["Limit"] = 3
	tTreasureArea_MonsterDrop["Normal"][1][15]["StcIndex"] = 5
	tTreasureArea_MonsterDrop["Normal"][1][15]["Bag"] = 1
	tTreasureArea_MonsterDrop["Normal"][1][15]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Normal"][1][15]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Normal"][1][15]["RewardItem"][1]["Id"] = 3009000
	tTreasureArea_MonsterDrop["Normal"][1][15]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tTreasureArea_MonsterDrop["Normal"][1][15]["Log"] = "0,0,0,0,18000160,2,3009000,1"
	tTreasureArea_MonsterDrop["Normal"][1][15]["EventType"] = 161
	tTreasureArea_MonsterDrop["Normal"][1][15]["DataType"] = 53
	tTreasureArea_MonsterDrop["Normal"][1][15]["RewardData"] = 1
	tTreasureArea_MonsterDrop["Normal"][1][15]["RewardTotalData"] = 3
	tTreasureArea_MonsterDrop["Normal"][1][15]["RewardDelay"] = 1
	tTreasureArea_MonsterDrop["Normal"][1][15]["RewardTimeType"] = 4
	tTreasureArea_MonsterDrop["Normal"][1][15]["FullIndex"] = 20
	-- 龙虎回力丸*1	729252	2.5	3.00%  改为1%
	tTreasureArea_MonsterDrop["Normal"][1][16] = {}
	tTreasureArea_MonsterDrop["Normal"][1][16]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Normal"][1][16]["ItemChance"] = 100
	tTreasureArea_MonsterDrop["Normal"][1][16]["Item_1"] = 729252
	tTreasureArea_MonsterDrop["Normal"][1][16]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Normal"][1][16]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Normal"][1][16]["RewardItem"][1]["Id"] = 729252
	tTreasureArea_MonsterDrop["Normal"][1][16]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Normal"][1][16]["Log"] = "0,0,0,0,18000160,2,729252,1"
	-- 时效清心符*1		1.8	2.00%  3303481			直接塞背包  获得时激活24小时时效  改为 1%
	tTreasureArea_MonsterDrop["Normal"][1][17] = {}
	tTreasureArea_MonsterDrop["Normal"][1][17]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Normal"][1][17]["ItemChance"] = 100
	tTreasureArea_MonsterDrop["Normal"][1][17]["Item_1"] = 3303481
	tTreasureArea_MonsterDrop["Normal"][1][17]["Bag"] = 1
	tTreasureArea_MonsterDrop["Normal"][1][17]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Normal"][1][17]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Normal"][1][17]["RewardItem"][1]["Id"] = 3303481
	tTreasureArea_MonsterDrop["Normal"][1][17]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tTreasureArea_MonsterDrop["Normal"][1][17]["Log"] = "0,0,0,0,18000160,2,3303481,1"
	-- 小BOSS召唤券*1	新制作	3303972	1.00%		直接塞背包  激活60分钟时效
	tTreasureArea_MonsterDrop["Normal"][1][18] = {}
	tTreasureArea_MonsterDrop["Normal"][1][18]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Normal"][1][18]["ItemChance"] = 100
	tTreasureArea_MonsterDrop["Normal"][1][18]["Item_1"] = 3303972
	tTreasureArea_MonsterDrop["Normal"][1][18]["Bag"] = 1
	tTreasureArea_MonsterDrop["Normal"][1][18]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Normal"][1][18]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Normal"][1][18]["RewardItem"][1]["Id"] = 3303972
	tTreasureArea_MonsterDrop["Normal"][1][18]["RewardItem"][1]["Attr"] = "0 1 0 60 1"
	tTreasureArea_MonsterDrop["Normal"][1][18]["Log"] = "0,0,0,0,18000160,2,3303972,1"
	-- 怪物掉落 给小钥匙*1	新制作   3303973		3.00%		直接塞背包  激活60分钟时效（走随机表）
	-- 开宝箱 不能出钥匙，改为给小BOSS召唤券*1	新制作	3303972	3.00%		直接塞背包  激活60分钟时效（走奖励模板表）
	tTreasureArea_MonsterDrop["Normal"][1][19] = {}
	tTreasureArea_MonsterDrop["Normal"][1][19]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Normal"][1][19]["ItemChance"] = 300
	tTreasureArea_MonsterDrop["Normal"][1][19]["Item_1"] = 3303973
	tTreasureArea_MonsterDrop["Normal"][1][19]["Bag"] = 1
	tTreasureArea_MonsterDrop["Normal"][1][19]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Normal"][1][19]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Normal"][1][19]["RewardItem"][1]["Id"] = 3303972
	tTreasureArea_MonsterDrop["Normal"][1][19]["RewardItem"][1]["Attr"] = "0 1 0 60 1"
	tTreasureArea_MonsterDrop["Normal"][1][19]["Log"] = "0,0,0,0,18000160,2,3303972,1"	
	-- 片区兑换道具*1	新制作	0.2	47.00%    3303483		直接塞背包  改为 50%
	tTreasureArea_MonsterDrop["Normal"][1][20] = {}
	tTreasureArea_MonsterDrop["Normal"][1][20]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Normal"][1][20]["ItemChance"] = 5000
	tTreasureArea_MonsterDrop["Normal"][1][20]["Item_1"] = 3303483
	tTreasureArea_MonsterDrop["Normal"][1][20]["Bag"] = 1
	tTreasureArea_MonsterDrop["Normal"][1][20]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Normal"][1][20]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Normal"][1][20]["RewardItem"][1]["Id"] = 3303483
	tTreasureArea_MonsterDrop["Normal"][1][20]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Normal"][1][20]["Log"] = "0,0,0,0,18000160,2,3303483,1"
	-- 随机卷		3303482	1.50%
	tTreasureArea_MonsterDrop["Normal"][1][21] = {}
	tTreasureArea_MonsterDrop["Normal"][1][21]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Normal"][1][21]["ItemChance"] = 150
	tTreasureArea_MonsterDrop["Normal"][1][21]["Item_1"] = 3303482
	tTreasureArea_MonsterDrop["Normal"][1][21]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Normal"][1][21]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Normal"][1][21]["RewardItem"][1]["Id"] = 3303482
	tTreasureArea_MonsterDrop["Normal"][1][21]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Normal"][1][21]["Log"] = "0,0,0,0,18000160,2,3303482,1"
	-- 神明玉	新制作	1		  3307083	20.00%
	tTreasureArea_MonsterDrop["Normal"][1][22] = {}
	tTreasureArea_MonsterDrop["Normal"][1][22]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Normal"][1][22]["ItemChance"] = 2000
	tTreasureArea_MonsterDrop["Normal"][1][22]["Item_1"] = 3307083
	tTreasureArea_MonsterDrop["Normal"][1][22]["Bag"] = 1
	tTreasureArea_MonsterDrop["Normal"][1][22]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Normal"][1][22]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Normal"][1][22]["RewardItem"][1]["Id"] = 3307083
	tTreasureArea_MonsterDrop["Normal"][1][22]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Normal"][1][22]["Log"] = "0,0,0,0,18000160,2,3307083,1"
	-- 黄色神纹(赠)礼包	1	3306363		  1.00% 
	tTreasureArea_MonsterDrop["Normal"][1][23] = {}
	tTreasureArea_MonsterDrop["Normal"][1][23]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Normal"][1][23]["ItemChance"] = 100
	tTreasureArea_MonsterDrop["Normal"][1][23]["Item_1"] = 3306363
	tTreasureArea_MonsterDrop["Normal"][1][23]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Normal"][1][23]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Normal"][1][23]["RewardItem"][1]["Id"] = 3306363
	tTreasureArea_MonsterDrop["Normal"][1][23]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Normal"][1][23]["Log"] = "0,0,0,0,18000160,2,3306363,1"
	-- 安全区回城卷 		3304961	1.50%
	tTreasureArea_MonsterDrop["Normal"][1][24] = {}
	tTreasureArea_MonsterDrop["Normal"][1][24]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Normal"][1][24]["ItemChance"] = 150
	tTreasureArea_MonsterDrop["Normal"][1][24]["Item_1"] = 3304961
	tTreasureArea_MonsterDrop["Normal"][1][24]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Normal"][1][24]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Normal"][1][24]["RewardItem"][1]["Id"] = 3304961
	tTreasureArea_MonsterDrop["Normal"][1][24]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Normal"][1][24]["Log"] = "0,0,0,0,18000160,2,3304961,1"
	-- 3307099  古神灵境粉碎药水  0.5%
	tTreasureArea_MonsterDrop["Normal"][1][25] = {}
	tTreasureArea_MonsterDrop["Normal"][1][25]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Normal"][1][25]["ItemChance"] = 50
	tTreasureArea_MonsterDrop["Normal"][1][25]["Item_1"] = 3307099
	tTreasureArea_MonsterDrop["Normal"][1][25]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Normal"][1][25]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Normal"][1][25]["RewardItem"][1]["Id"] = 3307099
	tTreasureArea_MonsterDrop["Normal"][1][25]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Normal"][1][25]["Log"] = "0,0,0,0,18000160,2,3307099,1"
	
	-- 3309970  1小时高级神器锻造图  0.5%
	tTreasureArea_MonsterDrop["Normal"][1][26] = {}
	tTreasureArea_MonsterDrop["Normal"][1][26]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Normal"][1][26]["ItemChance"] = 50
	tTreasureArea_MonsterDrop["Normal"][1][26]["Bag"] = 1
	tTreasureArea_MonsterDrop["Normal"][1][26]["Item_1"] = 3309970
	tTreasureArea_MonsterDrop["Normal"][1][26]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Normal"][1][26]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Normal"][1][26]["RewardItem"][1]["Id"] = 3309970
	tTreasureArea_MonsterDrop["Normal"][1][26]["RewardItem"][1]["Attr"] = "0 1 0 60 1"
	tTreasureArea_MonsterDrop["Normal"][1][26]["Log"] = "0,0,0,0,18000160,2,3309970,1"

	------------------------------- 小怪和boss共用的稀有奖池
	tTreasureArea_MonsterDrop["Special"] = {}
	tTreasureArea_MonsterDrop["Special"][1] = {}
	tTreasureArea_MonsterDrop["Special"][1]["Space"] = 1
	tTreasureArea_MonsterDrop["Special"][1]["ItemChanceSum"] = 100000
	-- 神明玉宝盒	新制作	1		3307084	10.00%	1
	tTreasureArea_MonsterDrop["Special"][1][1] = {}
	tTreasureArea_MonsterDrop["Special"][1][1]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Special"][1][1]["ItemChance"] = 10000
	tTreasureArea_MonsterDrop["Special"][1][1]["Item_1"] = 3307084
	tTreasureArea_MonsterDrop["Special"][1][1]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Special"][1][1]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Special"][1][1]["RewardItem"][1]["Id"] = 3307084
	tTreasureArea_MonsterDrop["Special"][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Special"][1][1]["Log"] = "0,0,0,0,18000160,2,3307084,1"
	-- 豪华防具神魂转盘	新制作		  3307092  3%
	tTreasureArea_MonsterDrop["Special"][1][2] = {}
	tTreasureArea_MonsterDrop["Special"][1][2]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Special"][1][2]["ItemChance"] = 3000
	tTreasureArea_MonsterDrop["Special"][1][2]["Item_1"] = 3307092
	tTreasureArea_MonsterDrop["Special"][1][2]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Special"][1][2]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Special"][1][2]["RewardItem"][1]["Id"] = 3307092
	tTreasureArea_MonsterDrop["Special"][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Special"][1][2]["Log"] = "0,0,0,0,18000160,2,3307092,1"
	-- 豪华武器神魂转盘	新制作		 3307093   3%
	tTreasureArea_MonsterDrop["Special"][1][3] = {}
	tTreasureArea_MonsterDrop["Special"][1][3]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Special"][1][3]["ItemChance"] = 3000
	tTreasureArea_MonsterDrop["Special"][1][3]["Item_1"] = 3307093
	tTreasureArea_MonsterDrop["Special"][1][3]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Special"][1][3]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Special"][1][3]["RewardItem"][1]["Id"] = 3307093
	tTreasureArea_MonsterDrop["Special"][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Special"][1][3]["Log"] = "0,0,0,0,18000160,2,3307093,1"
	-- 豪华淬炼道具转盘	新制作		3307094    4%
	tTreasureArea_MonsterDrop["Special"][1][4] = {}
	tTreasureArea_MonsterDrop["Special"][1][4]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Special"][1][4]["ItemChance"] = 4000
	tTreasureArea_MonsterDrop["Special"][1][4]["Item_1"] = 3307094
	tTreasureArea_MonsterDrop["Special"][1][4]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Special"][1][4]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Special"][1][4]["RewardItem"][1]["Id"] = 3307094
	tTreasureArea_MonsterDrop["Special"][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Special"][1][4]["Log"] = "0,0,0,0,18000160,2,3307094,1"
	-- 【财富类】三元聚宝包（120w）	723715   8.000% 
	-- 改为 金玉满堂礼包 10W  3005121  4%		单服每天80个，满了给魔武通玄丹碎片   改为0.5%
	tTreasureArea_MonsterDrop["Special"][1][5] = {}
	tTreasureArea_MonsterDrop["Special"][1][5]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Special"][1][5]["ItemChance"] = 500
	tTreasureArea_MonsterDrop["Special"][1][5]["Item_1"] = 3005121
	tTreasureArea_MonsterDrop["Special"][1][5]["Global"] = 51640
	tTreasureArea_MonsterDrop["Special"][1][5]["Day"] = 1
	tTreasureArea_MonsterDrop["Special"][1][5]["GlobalPos"] = 0
	tTreasureArea_MonsterDrop["Special"][1][5]["GlobalLimit"] = 80
	tTreasureArea_MonsterDrop["Special"][1][5]["Replace"] = 3303519
	tTreasureArea_MonsterDrop["Special"][1][5]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Special"][1][5]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Special"][1][5]["RewardItem"][1]["Id"] = 3005121
	tTreasureArea_MonsterDrop["Special"][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Special"][1][5]["Log"] = "0,0,0,0,18000160,2,3005121,1"
	tTreasureArea_MonsterDrop["Special"][1][5]["GlobalId"] = 51640
	tTreasureArea_MonsterDrop["Special"][1][5]["Pos"] = 0
	tTreasureArea_MonsterDrop["Special"][1][5]["MaxData"] = 80
	tTreasureArea_MonsterDrop["Special"][1][5]["FullIndex"] = 7
	-- 古神灵境星陨石礼包	新制作		3307085   7.000%  	获得时激活2小时时效   改为12%		单服每天500个，满了给魔武通玄丹碎片
	tTreasureArea_MonsterDrop["Special"][1][6] = {}
	tTreasureArea_MonsterDrop["Special"][1][6]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Special"][1][6]["ItemChance"] = 12000
	tTreasureArea_MonsterDrop["Special"][1][6]["Item_1"] = 3307085
	tTreasureArea_MonsterDrop["Special"][1][6]["Bag"] = 1
	tTreasureArea_MonsterDrop["Special"][1][6]["Global"] = 51640
	tTreasureArea_MonsterDrop["Special"][1][6]["Day"] = 1
	tTreasureArea_MonsterDrop["Special"][1][6]["GlobalPos"] = 1
	tTreasureArea_MonsterDrop["Special"][1][6]["GlobalLimit"] = 500
	tTreasureArea_MonsterDrop["Special"][1][6]["Replace"] = 3303519
	tTreasureArea_MonsterDrop["Special"][1][6]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Special"][1][6]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Special"][1][6]["RewardItem"][1]["Id"] = 3307085
	tTreasureArea_MonsterDrop["Special"][1][6]["RewardItem"][1]["Attr"] = "0 1 0 120 1"
	tTreasureArea_MonsterDrop["Special"][1][6]["Log"] = "0,0,0,0,18000160,2,3307085,1"
	tTreasureArea_MonsterDrop["Special"][1][6]["GlobalId"] = 51640
	tTreasureArea_MonsterDrop["Special"][1][6]["Pos"] = 1
	tTreasureArea_MonsterDrop["Special"][1][6]["MaxData"] = 500
	tTreasureArea_MonsterDrop["Special"][1][6]["FullIndex"] = 7
	-- 魔武通玄丹碎片	新制作		10.000%   3303519   改为12%  改为5.5%
	tTreasureArea_MonsterDrop["Special"][1][7] = {}
	tTreasureArea_MonsterDrop["Special"][1][7]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Special"][1][7]["ItemChance"] = 5500
	tTreasureArea_MonsterDrop["Special"][1][7]["Item_1"] = 3303519
	tTreasureArea_MonsterDrop["Special"][1][7]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Special"][1][7]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Special"][1][7]["RewardItem"][1]["Id"] = 3303519
	tTreasureArea_MonsterDrop["Special"][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Special"][1][7]["Log"] = "0,0,0,0,18000160,2,3303519,1"
	-- 龙珠	1088000	45	8.000%   改为4%		单服每天80个，满了给魔武通玄丹碎片   改为0.5%
	tTreasureArea_MonsterDrop["Special"][1][8] = {}
	tTreasureArea_MonsterDrop["Special"][1][8]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Special"][1][8]["ItemChance"] = 500
	tTreasureArea_MonsterDrop["Special"][1][8]["Item_1"] = 1088000
	tTreasureArea_MonsterDrop["Special"][1][8]["Global"] = 51640
	tTreasureArea_MonsterDrop["Special"][1][8]["Day"] = 1
	tTreasureArea_MonsterDrop["Special"][1][8]["GlobalPos"] = 2
	tTreasureArea_MonsterDrop["Special"][1][8]["GlobalLimit"] = 80
	tTreasureArea_MonsterDrop["Special"][1][8]["Replace"] = 3303519
	tTreasureArea_MonsterDrop["Special"][1][8]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Special"][1][8]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Special"][1][8]["RewardItem"][1]["Id"] = 1088000
	tTreasureArea_MonsterDrop["Special"][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Special"][1][8]["Log"] = "0,0,0,0,18000160,2,1088000,1"
	tTreasureArea_MonsterDrop["Special"][1][8]["GlobalId"] = 51640
	tTreasureArea_MonsterDrop["Special"][1][8]["Pos"] = 2
	tTreasureArea_MonsterDrop["Special"][1][8]["MaxData"] = 80
	tTreasureArea_MonsterDrop["Special"][1][8]["FullIndex"] = 7
	-- 八宝护气丹碎片	3007269	120	5.000%
	tTreasureArea_MonsterDrop["Special"][1][9] = {}
	tTreasureArea_MonsterDrop["Special"][1][9]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Special"][1][9]["ItemChance"] = 5000
	tTreasureArea_MonsterDrop["Special"][1][9]["Item_1"] = 3007269
	tTreasureArea_MonsterDrop["Special"][1][9]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Special"][1][9]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Special"][1][9]["RewardItem"][1]["Id"] = 3007269
	tTreasureArea_MonsterDrop["Special"][1][9]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Special"][1][9]["Log"] = "0,0,0,0,18000160,2,3007269,1"
	-- 时效技能外套抽奖礼包		3303136	10.000%  改为0
	tTreasureArea_MonsterDrop["Special"][1][10] = {}
	tTreasureArea_MonsterDrop["Special"][1][10]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Special"][1][10]["ItemChance"] = 0
	tTreasureArea_MonsterDrop["Special"][1][10]["Item_1"] = 3303136
	tTreasureArea_MonsterDrop["Special"][1][10]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Special"][1][10]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Special"][1][10]["RewardItem"][1]["Id"] = 3303136
	tTreasureArea_MonsterDrop["Special"][1][10]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Special"][1][10]["Log"] = "0,0,0,0,18000160,2,3303136,1"
	-- 赤炼石幸运包	新制作	1		3307086	6.00%  
	tTreasureArea_MonsterDrop["Special"][1][11] = {}
	tTreasureArea_MonsterDrop["Special"][1][11]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Special"][1][11]["ItemChance"] = 6000
	tTreasureArea_MonsterDrop["Special"][1][11]["Item_1"] = 3307086
	tTreasureArea_MonsterDrop["Special"][1][11]["Bag"] = 1
	tTreasureArea_MonsterDrop["Special"][1][11]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Special"][1][11]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Special"][1][11]["RewardItem"][1]["Id"] = 3307086
	tTreasureArea_MonsterDrop["Special"][1][11]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Special"][1][11]["Log"] = "0,0,0,0,18000160,2,3307086,1"
	-- +3赤炼石福运包	3301225	45	5.000%  改为0  
	tTreasureArea_MonsterDrop["Special"][1][12] = {}
	tTreasureArea_MonsterDrop["Special"][1][12]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Special"][1][12]["ItemChance"] = 0
	tTreasureArea_MonsterDrop["Special"][1][12]["Item_1"] = 3301225
	tTreasureArea_MonsterDrop["Special"][1][12]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Special"][1][12]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Special"][1][12]["RewardItem"][1]["Id"] = 3301225
	tTreasureArea_MonsterDrop["Special"][1][12]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Special"][1][12]["Log"] = "0,0,0,0,18000160,2,3301225,1"
	-- 兑换道具*30礼包	新制作	6	8.000%	3303484   改为 12%
	tTreasureArea_MonsterDrop["Special"][1][13] = {}
	tTreasureArea_MonsterDrop["Special"][1][13]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Special"][1][13]["ItemChance"] = 12000 --16000
	tTreasureArea_MonsterDrop["Special"][1][13]["Item_1"] = 3303484
	tTreasureArea_MonsterDrop["Special"][1][13]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Special"][1][13]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Special"][1][13]["RewardItem"][1]["Id"] = 3303484
	tTreasureArea_MonsterDrop["Special"][1][13]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Special"][1][13]["Log"] = "0,0,0,0,18000160,2,3303484,1"
	-- 200点气力包（可交易）	3001411	5.000%
	tTreasureArea_MonsterDrop["Special"][1][14] = {}
	tTreasureArea_MonsterDrop["Special"][1][14]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Special"][1][14]["ItemChance"] = 5000
	tTreasureArea_MonsterDrop["Special"][1][14]["Item_1"] = 3001411
	tTreasureArea_MonsterDrop["Special"][1][14]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Special"][1][14]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Special"][1][14]["RewardItem"][1]["Id"] = 3001411
	tTreasureArea_MonsterDrop["Special"][1][14]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Special"][1][14]["Log"] = "0,0,0,0,18000160,2,3001411,1"
	-- 1000点气力包	3008193	2.990%
	tTreasureArea_MonsterDrop["Special"][1][15] = {}
	tTreasureArea_MonsterDrop["Special"][1][15]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Special"][1][15]["ItemChance"] = 2990
	tTreasureArea_MonsterDrop["Special"][1][15]["Item_1"] = 3008193
	tTreasureArea_MonsterDrop["Special"][1][15]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Special"][1][15]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Special"][1][15]["RewardItem"][1]["Id"] = 3008193
	tTreasureArea_MonsterDrop["Special"][1][15]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Special"][1][15]["Log"] = "0,0,0,0,18000160,2,3008193,1"
	-- 怪物掉落奖励 大钥匙	新制作	3303974	3.000%		激活60分钟时效  直接塞背包（走随机表）
	-- 开宝箱 不能出钥匙，改为给150点气力包	3008187	36	3.000%（走奖励模板表）
	tTreasureArea_MonsterDrop["Special"][1][16] = {}
	tTreasureArea_MonsterDrop["Special"][1][16]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Special"][1][16]["ItemChance"] = 3000
	tTreasureArea_MonsterDrop["Special"][1][16]["Item_1"] = 3303974   ---"0 1 0 60 1"
	tTreasureArea_MonsterDrop["Special"][1][16]["Bag"] = 1
	tTreasureArea_MonsterDrop["Special"][1][16]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Special"][1][16]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Special"][1][16]["RewardItem"][1]["Id"] = 3008187
	tTreasureArea_MonsterDrop["Special"][1][16]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Special"][1][16]["Log"] = "0,0,0,0,18000160,2,3008187,1"
	-- 3000赠点兑换券	新制作	1500	0.009%	3303486		单服每6天限掉1个，满了不掉东西
	tTreasureArea_MonsterDrop["Special"][1][17] = {}
	tTreasureArea_MonsterDrop["Special"][1][17]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Special"][1][17]["ItemChance"] = 9
	tTreasureArea_MonsterDrop["Special"][1][17]["Item_1"] = 3303486
	tTreasureArea_MonsterDrop["Special"][1][17]["Global"] = 51581
	tTreasureArea_MonsterDrop["Special"][1][17]["Day"] = 6
	tTreasureArea_MonsterDrop["Special"][1][17]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Special"][1][17]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Special"][1][17]["RewardItem"][1]["Id"] = 3303486
	tTreasureArea_MonsterDrop["Special"][1][17]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Special"][1][17]["Log"] = "0,0,0,0,18000160,2,3303486,1"
	tTreasureArea_MonsterDrop["Special"][1][17]["GlobalId"] = 51581
	tTreasureArea_MonsterDrop["Special"][1][17]["Pos"] = 1
	tTreasureArea_MonsterDrop["Special"][1][17]["MaxData"] = 1
	tTreasureArea_MonsterDrop["Special"][1][17]["FullIndex"] = 19
	-- 冥界诏令兑换券	新制作	3000	0.001%  3303485		单服每60天限掉1个，满了不掉东西
	tTreasureArea_MonsterDrop["Special"][1][18] = {}
	tTreasureArea_MonsterDrop["Special"][1][18]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Special"][1][18]["ItemChance"] = 1
	tTreasureArea_MonsterDrop["Special"][1][18]["Item_1"] = 3303485
	tTreasureArea_MonsterDrop["Special"][1][18]["Global"] = 51582
	tTreasureArea_MonsterDrop["Special"][1][18]["Day"] = 60
	tTreasureArea_MonsterDrop["Special"][1][18]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Special"][1][18]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Special"][1][18]["RewardItem"][1]["Id"] = 3303485
	tTreasureArea_MonsterDrop["Special"][1][18]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Special"][1][18]["Log"] = "0,0,0,0,18000160,2,3303485,1"
	tTreasureArea_MonsterDrop["Special"][1][18]["GlobalId"] = 51582
	tTreasureArea_MonsterDrop["Special"][1][18]["Pos"] = 1
	tTreasureArea_MonsterDrop["Special"][1][18]["MaxData"] = 1
	tTreasureArea_MonsterDrop["Special"][1][18]["FullIndex"] = 19
	-- 属性点抽奖包	新制作	1		3307087	4.50%
	tTreasureArea_MonsterDrop["Special"][1][19] = {}
	tTreasureArea_MonsterDrop["Special"][1][19]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Special"][1][19]["ItemChance"] = 4500
	tTreasureArea_MonsterDrop["Special"][1][19]["Item_1"] = 3307087
	tTreasureArea_MonsterDrop["Special"][1][19]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Special"][1][19]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Special"][1][19]["RewardItem"][1]["Id"] = 3307087
	tTreasureArea_MonsterDrop["Special"][1][19]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Special"][1][19]["Log"] = "0,0,0,0,18000160,2,3307087,1"
	-- 古神灵境黄色神纹包	新制作	1		3307098	14.00%   非赠的
	tTreasureArea_MonsterDrop["Special"][1][20] = {}
	tTreasureArea_MonsterDrop["Special"][1][20]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Special"][1][20]["ItemChance"] = 14000
	tTreasureArea_MonsterDrop["Special"][1][20]["Item_1"] = 3307098
	tTreasureArea_MonsterDrop["Special"][1][20]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Special"][1][20]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Special"][1][20]["RewardItem"][1]["Id"] = 3307098
	tTreasureArea_MonsterDrop["Special"][1][20]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_MonsterDrop["Special"][1][20]["Log"] = "0,0,0,0,18000160,2,3307098,1"
	-- 幻界玄旗	新制作	3307244	9.000%	激活60分钟时效  直接塞背包（走随机表）
	tTreasureArea_MonsterDrop["Special"][1][21] = {}
	tTreasureArea_MonsterDrop["Special"][1][21]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Special"][1][21]["ItemChance"] = 9000
	tTreasureArea_MonsterDrop["Special"][1][21]["Item_1"] = 3307244   ---"0 1 0 60 1"
	tTreasureArea_MonsterDrop["Special"][1][21]["Bag"] = 1
	tTreasureArea_MonsterDrop["Special"][1][21]["RewardItem"] = {}
	tTreasureArea_MonsterDrop["Special"][1][21]["RewardItem"][1] = {}
	tTreasureArea_MonsterDrop["Special"][1][21]["RewardItem"][1]["Id"] = 3307244
	tTreasureArea_MonsterDrop["Special"][1][21]["RewardItem"][1]["Attr"] = "0 1 0 60 1"
	tTreasureArea_MonsterDrop["Special"][1][21]["Log"] = "0,0,0,0,18000160,2,3008187,1"
	
	----------------------- 限时击杀boss  额外掉落
	tTreasureArea_MonsterDrop["Extra"] = {}
	tTreasureArea_MonsterDrop["Extra"][1] = {}
	tTreasureArea_MonsterDrop["Extra"][1]["Space"] = 1
	tTreasureArea_MonsterDrop["Extra"][1]["ItemChanceSum"] = 10000
	-- 8.00%	流星（1088001）*5
	tTreasureArea_MonsterDrop["Extra"][1][1] = {}
	tTreasureArea_MonsterDrop["Extra"][1][1]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Extra"][1][1]["ItemChance"] = 800
	tTreasureArea_MonsterDrop["Extra"][1][1]["Item_1"] = 1088001
	tTreasureArea_MonsterDrop["Extra"][1][1]["Num"] = 5
	-- 10.00%	强效护心丹（3002030）*3
	tTreasureArea_MonsterDrop["Extra"][1][2] = {}
	tTreasureArea_MonsterDrop["Extra"][1][2]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Extra"][1][2]["ItemChance"] = 1000
	tTreasureArea_MonsterDrop["Extra"][1][2]["Item_1"] = 3002030
	tTreasureArea_MonsterDrop["Extra"][1][2]["Num"] = 3
	-- 10.00%	天香续命包（725067）*5
	tTreasureArea_MonsterDrop["Extra"][1][3] = {}
	tTreasureArea_MonsterDrop["Extra"][1][3]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Extra"][1][3]["ItemChance"] = 1000
	tTreasureArea_MonsterDrop["Extra"][1][3]["Item_1"] = 725067
	tTreasureArea_MonsterDrop["Extra"][1][3]["Num"] = 5
	-- 10.00%	玄灵秘录（723341）*5
	tTreasureArea_MonsterDrop["Extra"][1][4] = {}
	tTreasureArea_MonsterDrop["Extra"][1][4]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Extra"][1][4]["ItemChance"] = 1000
	tTreasureArea_MonsterDrop["Extra"][1][4]["Item_1"] = 723341
	tTreasureArea_MonsterDrop["Extra"][1][4]["Num"] = 5
	-- 10.00%	60分钟经验礼包（3006245）*5
	tTreasureArea_MonsterDrop["Extra"][1][5] = {}
	tTreasureArea_MonsterDrop["Extra"][1][5]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Extra"][1][5]["ItemChance"] = 1000
	tTreasureArea_MonsterDrop["Extra"][1][5]["Item_1"] = 3006245
	tTreasureArea_MonsterDrop["Extra"][1][5]["Num"] = 5
	-- 15.00%	流星（1088001）*1
	tTreasureArea_MonsterDrop["Extra"][1][6] = {}
	tTreasureArea_MonsterDrop["Extra"][1][6]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Extra"][1][6]["ItemChance"] = 1500
	tTreasureArea_MonsterDrop["Extra"][1][6]["Item_1"] = 1088001
	tTreasureArea_MonsterDrop["Extra"][1][6]["Num"] = 1
	-- 15.00%	片区兑换道具*10  3303483
	tTreasureArea_MonsterDrop["Extra"][1][7] = {}
	tTreasureArea_MonsterDrop["Extra"][1][7]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Extra"][1][7]["ItemChance"] = 1500
	tTreasureArea_MonsterDrop["Extra"][1][7]["Item_1"] = 3303483
	tTreasureArea_MonsterDrop["Extra"][1][7]["Num"] = 10
	-- 10.00%	龙虎回力丸（729252）*10
	tTreasureArea_MonsterDrop["Extra"][1][8] = {}
	tTreasureArea_MonsterDrop["Extra"][1][8]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Extra"][1][8]["ItemChance"] = 1000
	tTreasureArea_MonsterDrop["Extra"][1][8]["Item_1"] = 729252
	tTreasureArea_MonsterDrop["Extra"][1][8]["Num"] = 10
	-- 1.00%	炽热天石碎片（3008727）*1
	tTreasureArea_MonsterDrop["Extra"][1][9] = {}
	tTreasureArea_MonsterDrop["Extra"][1][9]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Extra"][1][9]["ItemChance"] = 100
	tTreasureArea_MonsterDrop["Extra"][1][9]["Item_1"] = 3008727
	-- 1.50%	200气力值包（3008188）*1
	tTreasureArea_MonsterDrop["Extra"][1][10] = {}
	tTreasureArea_MonsterDrop["Extra"][1][10]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Extra"][1][10]["ItemChance"] = 150
	tTreasureArea_MonsterDrop["Extra"][1][10]["Item_1"] = 3008188
	-- 2.00%	 +1赤炼石福运包（3301223）*1
	tTreasureArea_MonsterDrop["Extra"][1][11] = {}
	tTreasureArea_MonsterDrop["Extra"][1][11]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Extra"][1][11]["ItemChance"] = 200
	tTreasureArea_MonsterDrop["Extra"][1][11]["Item_1"] = 3301223
	-- 2.00%	 +2赤炼石福运包（3301224）*1
	tTreasureArea_MonsterDrop["Extra"][1][12] = {}
	tTreasureArea_MonsterDrop["Extra"][1][12]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Extra"][1][12]["ItemChance"] = 200
	tTreasureArea_MonsterDrop["Extra"][1][12]["Item_1"] = 3301224
	
	-- 3.00%	兑换道具*30礼包*1  3303484
	tTreasureArea_MonsterDrop["Extra"][1][13] = {}
	tTreasureArea_MonsterDrop["Extra"][1][13]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Extra"][1][13]["ItemChance"] = 300
	tTreasureArea_MonsterDrop["Extra"][1][13]["Item_1"] = 3303484
	-- 1.00%	龙珠（1088000）*1
	tTreasureArea_MonsterDrop["Extra"][1][14] = {}
	tTreasureArea_MonsterDrop["Extra"][1][14]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Extra"][1][14]["ItemChance"] = 100
	tTreasureArea_MonsterDrop["Extra"][1][14]["Item_1"] = 1088000
	-- 1.50%	魔武通玄丹碎片*5  3303519
	tTreasureArea_MonsterDrop["Extra"][1][15] = {}
	tTreasureArea_MonsterDrop["Extra"][1][15]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["Extra"][1][15]["ItemChance"] = 150
	tTreasureArea_MonsterDrop["Extra"][1][15]["Item_1"] = 3303519
	tTreasureArea_MonsterDrop["Extra"][1][15]["Num"] = 5
	
	-- 随机获得BUFF
	tTreasureArea_MonsterDrop["BUFF"] = {}
	-- 380战以下    Get_UserBattleLevel(nUserId)
	tTreasureArea_MonsterDrop["BUFF"][1] = {}
	tTreasureArea_MonsterDrop["BUFF"][1]["ItemChanceSum"] = 8000
	-- 增加10000攻击力，30000魔法攻击力	139  140  90秒	20.00%
	tTreasureArea_MonsterDrop["BUFF"][1][1] = {}
	tTreasureArea_MonsterDrop["BUFF"][1][1]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["BUFF"][1][1]["ItemChance"] = 2000
	tTreasureArea_MonsterDrop["BUFF"][1][1]["Item_1"] = 1
	-- 增加100000点生命	  138  90秒	20.00%
	-- tTreasureArea_MonsterDrop["BUFF"][1][2] = {}
	-- tTreasureArea_MonsterDrop["BUFF"][1][2]["RandomItemChanceType"] = 2
	-- tTreasureArea_MonsterDrop["BUFF"][1][2]["ItemChance"] = 2000
	-- tTreasureArea_MonsterDrop["BUFF"][1][2]["Item_1"] = 2
	-- 增加200%粉碎攻击	136 	90秒	20.00%
	tTreasureArea_MonsterDrop["BUFF"][1][2] = {}
	tTreasureArea_MonsterDrop["BUFF"][1][2]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["BUFF"][1][2]["ItemChance"] = 2000
	tTreasureArea_MonsterDrop["BUFF"][1][2]["Item_1"] = 3
	-- 增加200%抵抗暴击	135	90秒	20.00%
	tTreasureArea_MonsterDrop["BUFF"][1][3] = {}
	tTreasureArea_MonsterDrop["BUFF"][1][3]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["BUFF"][1][3]["ItemChance"] = 2000
	tTreasureArea_MonsterDrop["BUFF"][1][3]["Item_1"] = 4
	-- 旋风状态	150	90秒	20.00%
	tTreasureArea_MonsterDrop["BUFF"][1][4] = {}
	tTreasureArea_MonsterDrop["BUFF"][1][4]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["BUFF"][1][4]["ItemChance"] = 2000
	tTreasureArea_MonsterDrop["BUFF"][1][4]["Item_1"] = 5
	
	-- 380战以上
	tTreasureArea_MonsterDrop["BUFF"][2] = {}
	tTreasureArea_MonsterDrop["BUFF"][2]["ItemChanceSum"] = 8500
	-- 增加10000攻击力，30000魔法攻击力	90秒	15.00%
	tTreasureArea_MonsterDrop["BUFF"][2][1] = {}
	tTreasureArea_MonsterDrop["BUFF"][2][1]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["BUFF"][2][1]["ItemChance"] = 1500
	tTreasureArea_MonsterDrop["BUFF"][2][1]["Item_1"] = 1
	-- 增加100000点生命	90秒	15.00%
	-- tTreasureArea_MonsterDrop["BUFF"][2][2] = {}
	-- tTreasureArea_MonsterDrop["BUFF"][2][2]["RandomItemChanceType"] = 2
	-- tTreasureArea_MonsterDrop["BUFF"][2][2]["ItemChance"] = 1500
	-- tTreasureArea_MonsterDrop["BUFF"][2][2]["Item_1"] = 2
	-- 增加200%粉碎攻击	90秒	15.00%
	tTreasureArea_MonsterDrop["BUFF"][2][2] = {}
	tTreasureArea_MonsterDrop["BUFF"][2][2]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["BUFF"][2][2]["ItemChance"] = 1500
	tTreasureArea_MonsterDrop["BUFF"][2][2]["Item_1"] = 3
	-- 增加200%抵抗暴击	90秒	15.00%
	tTreasureArea_MonsterDrop["BUFF"][2][3] = {}
	tTreasureArea_MonsterDrop["BUFF"][2][3]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["BUFF"][2][3]["ItemChance"] = 1500
	tTreasureArea_MonsterDrop["BUFF"][2][3]["Item_1"] = 4
	-- 旋风状态	90秒		40.00%
	tTreasureArea_MonsterDrop["BUFF"][2][4] = {}
	tTreasureArea_MonsterDrop["BUFF"][2][4]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["BUFF"][2][4]["ItemChance"] = 4000
	tTreasureArea_MonsterDrop["BUFF"][2][4]["Item_1"] = 5
	
	
	------- 小boss奖池
	tTreasureArea_MonsterDrop["SmallBoss"] = {}
	------- 流星小BOSS	3979	随机流星卷（720027）1-3个	1个60%，2个30%，3个10%		
	tTreasureArea_MonsterDrop["SmallBoss"][3979] = {}
	tTreasureArea_MonsterDrop["SmallBoss"][3979]["ItemChanceSum"] = 10000
	-- 随机流星卷（720027）	1个60%
	tTreasureArea_MonsterDrop["SmallBoss"][3979][1] = {}
	tTreasureArea_MonsterDrop["SmallBoss"][3979][1]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["SmallBoss"][3979][1]["ItemChance"] = 6000
	tTreasureArea_MonsterDrop["SmallBoss"][3979][1]["Item_1"] = 720027
	-- 随机流星卷（720027）	2个30%
	tTreasureArea_MonsterDrop["SmallBoss"][3979][2] = {}
	tTreasureArea_MonsterDrop["SmallBoss"][3979][2]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["SmallBoss"][3979][2]["ItemChance"] = 3000
	tTreasureArea_MonsterDrop["SmallBoss"][3979][2]["Item_1"] = 720027
	tTreasureArea_MonsterDrop["SmallBoss"][3979][2]["Num"] = 2
	-- 随机流星卷（720027）	3个10%
	tTreasureArea_MonsterDrop["SmallBoss"][3979][3] = {}
	tTreasureArea_MonsterDrop["SmallBoss"][3979][3]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["SmallBoss"][3979][3]["ItemChance"] = 1000
	tTreasureArea_MonsterDrop["SmallBoss"][3979][3]["Item_1"] = 720027
	tTreasureArea_MonsterDrop["SmallBoss"][3979][3]["Num"] = 3
	
	
	-- ------- 经验小BOSS    3980    随机六阳碎片（3303101）或特殊经验丹（3303017）1-3个	看经验表
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980] = {}
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980]["ItemChanceSum"] = 10000
	-- -- 六阳聚神丹碎片*1	3303101	16.00%
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980][1] = {}
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980][1]["RandomItemChanceType"] = 2
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980][1]["ItemChance"] = 1600
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980][1]["Item_1"] = 3008188 --3303101
	-- -- 六阳聚神丹碎片*2	3303101	8.00%
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980][2] = {}
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980][2]["RandomItemChanceType"] = 2
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980][2]["ItemChance"] = 800
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980][2]["Item_1"] = 3008188 --3303101
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980][2]["Num"] = 2
	-- -- 六阳聚神丹碎片*3	3303101	1.00%
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980][3] = {}
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980][3]["RandomItemChanceType"] = 2
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980][3]["ItemChance"] = 100
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980][3]["Item_1"] = 3008188 --3303101
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980][3]["Num"] = 3
	-- -- 特殊经验丹*1	3303017	40.00%
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980][4] = {}
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980][4]["RandomItemChanceType"] = 2
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980][4]["ItemChance"] = 4000
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980][4]["Item_1"] = 3008186 --3303017
	-- -- 特殊经验丹*2	3303017	30.00%
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980][5] = {}
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980][5]["RandomItemChanceType"] = 2
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980][5]["ItemChance"] = 3000
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980][5]["Item_1"] = 3008186 --3303017
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980][5]["Num"] = 2
	-- -- 特殊经验丹*3	3303017	5.00%
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980][6] = {}
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980][6]["RandomItemChanceType"] = 2
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980][6]["ItemChance"] = 500
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980][6]["Item_1"] = 3008186 --3303017
	-- tTreasureArea_MonsterDrop["SmallBoss"][3980][6]["Num"] = 3
	
	
	------ 龙珠小BOSS    3981    龙珠礼盒  新制作  3303975 （1个龙珠赠，5%概率出非赠）			
	tTreasureArea_MonsterDrop["SmallBoss"][3981] = {}
	tTreasureArea_MonsterDrop["SmallBoss"][3981]["DropItem"] = 3303975
	
	
	------ 气力小BOSS    3982    随机50-250点气力包（不可交易）	看气力表		
	tTreasureArea_MonsterDrop["SmallBoss"][3982] = {}
	tTreasureArea_MonsterDrop["SmallBoss"][3982]["ItemChanceSum"] = 10000
	-- 50气力包	3008186	12.5	60.00%
	tTreasureArea_MonsterDrop["SmallBoss"][3982][1] = {}
	tTreasureArea_MonsterDrop["SmallBoss"][3982][1]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["SmallBoss"][3982][1]["ItemChance"] = 6000
	tTreasureArea_MonsterDrop["SmallBoss"][3982][1]["Item_1"] = 3008186
	-- 150气力包	3008187	37.5	30.00%
	tTreasureArea_MonsterDrop["SmallBoss"][3982][2] = {}
	tTreasureArea_MonsterDrop["SmallBoss"][3982][2]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["SmallBoss"][3982][2]["ItemChance"] = 3000
	tTreasureArea_MonsterDrop["SmallBoss"][3982][2]["Item_1"] = 3008187
	-- 250气力包	3008189	62.5	10.00%
	tTreasureArea_MonsterDrop["SmallBoss"][3982][3] = {}
	tTreasureArea_MonsterDrop["SmallBoss"][3982][3]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["SmallBoss"][3982][3]["ItemChance"] = 1000
	tTreasureArea_MonsterDrop["SmallBoss"][3982][3]["Item_1"] = 3008189


	------- 赤炼小BOSS    3983    随机+1到+2赤炼石福运包	 +1赤炼石80%，+2赤炼石20%		
	tTreasureArea_MonsterDrop["SmallBoss"][3983] = {}
	tTreasureArea_MonsterDrop["SmallBoss"][3983]["ItemChanceSum"] = 10000
	-- +1赤炼石福运包  80%  	3301223
	tTreasureArea_MonsterDrop["SmallBoss"][3983][1] = {}
	tTreasureArea_MonsterDrop["SmallBoss"][3983][1]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["SmallBoss"][3983][1]["ItemChance"] = 8000
	tTreasureArea_MonsterDrop["SmallBoss"][3983][1]["Item_1"] = 3301223
	-- +2赤炼石福运包 20% 	3301224
	tTreasureArea_MonsterDrop["SmallBoss"][3983][2] = {}
	tTreasureArea_MonsterDrop["SmallBoss"][3983][2]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["SmallBoss"][3983][2]["ItemChance"] = 2000
	tTreasureArea_MonsterDrop["SmallBoss"][3983][2]["Item_1"] = 3301224
	
	
	------- 神魂小BOSS    3984    随机蛮荒骨符*1-3个	1个60%，2个30%，3个10%		
	tTreasureArea_MonsterDrop["SmallBoss"][3984] = {}
	tTreasureArea_MonsterDrop["SmallBoss"][3984]["ItemChanceSum"] = 10000
	-- 蛮荒骨符*1  3004181		1个60%
	tTreasureArea_MonsterDrop["SmallBoss"][3984][1] = {}
	tTreasureArea_MonsterDrop["SmallBoss"][3984][1]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["SmallBoss"][3984][1]["ItemChance"] = 6000
	tTreasureArea_MonsterDrop["SmallBoss"][3984][1]["Item_1"] = 3004181
	-- 蛮荒骨符*2  3004181		2个30%
	tTreasureArea_MonsterDrop["SmallBoss"][3984][2] = {}
	tTreasureArea_MonsterDrop["SmallBoss"][3984][2]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["SmallBoss"][3984][2]["ItemChance"] = 3000
	tTreasureArea_MonsterDrop["SmallBoss"][3984][2]["Item_1"] = 3004181
	tTreasureArea_MonsterDrop["SmallBoss"][3984][2]["Num"] = 2
	-- 蛮荒骨符*3  3004181		3个10%		
	tTreasureArea_MonsterDrop["SmallBoss"][3984][3] = {}
	tTreasureArea_MonsterDrop["SmallBoss"][3984][3]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["SmallBoss"][3984][3]["ItemChance"] = 1000
	tTreasureArea_MonsterDrop["SmallBoss"][3984][3]["Item_1"] = 3004181
	tTreasureArea_MonsterDrop["SmallBoss"][3984][3]["Num"] = 3
	
	------- 银两小BOSS    3985    10万银两（10个1万一堆的）			
	tTreasureArea_MonsterDrop["SmallBoss"][3985] = {}
	tTreasureArea_MonsterDrop["SmallBoss"][3985]["DropMoney"] = 10000
	tTreasureArea_MonsterDrop["SmallBoss"][3985]["Times"] = 10
	
	------- 装备小BOSS    3986  潜龙渊精品装备包  3304049	
	tTreasureArea_MonsterDrop["SmallBoss"][3986] = {}
	tTreasureArea_MonsterDrop["SmallBoss"][3986]["DropItem"] = 3304049
	
	-- 19.03.18新增BOSS额外掉落 -- by wzh
	-- 19.0322 修改boss掉落  ---fwl
	tTreasureArea_MonsterDrop["ExtraDrop"] = {}
	tTreasureArea_MonsterDrop["ExtraDrop"][1] = {}
	tTreasureArea_MonsterDrop["ExtraDrop"][1]["ItemChanceSum"] = 10000
	-- 蛮荒骨符*2	3004181		45% 	修改为0%
	tTreasureArea_MonsterDrop["ExtraDrop"][1][1] = {}
	tTreasureArea_MonsterDrop["ExtraDrop"][1][1]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["ExtraDrop"][1][1]["ItemChance"] = 0
	tTreasureArea_MonsterDrop["ExtraDrop"][1][1]["Item_1"] = 3004181
	tTreasureArea_MonsterDrop["ExtraDrop"][1][1]["Num"] = 2
	-- 人参果*2		3009100		30%	 	修改为44%
	tTreasureArea_MonsterDrop["ExtraDrop"][1][2] = {}
	tTreasureArea_MonsterDrop["ExtraDrop"][1][2]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["ExtraDrop"][1][2]["ItemChance"] = 4400
	tTreasureArea_MonsterDrop["ExtraDrop"][1][2]["Item_1"] = 3009100
	tTreasureArea_MonsterDrop["ExtraDrop"][1][2]["Num"] = 2
	-- 龙鳞果*1		3009101		17%		修改为51%
	tTreasureArea_MonsterDrop["ExtraDrop"][1][3] = {}
	tTreasureArea_MonsterDrop["ExtraDrop"][1][3]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["ExtraDrop"][1][3]["ItemChance"] = 5100
	tTreasureArea_MonsterDrop["ExtraDrop"][1][3]["Item_1"] = 3009101
	-- 辉月果*1		3009102		8%		修改为5%
	tTreasureArea_MonsterDrop["ExtraDrop"][1][4] = {}
	tTreasureArea_MonsterDrop["ExtraDrop"][1][4]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["ExtraDrop"][1][4]["ItemChance"] = 500
	tTreasureArea_MonsterDrop["ExtraDrop"][1][4]["Item_1"] = 3009102
	
	tTreasureArea_MonsterDrop["ExtraDrop"][2] = {}
	tTreasureArea_MonsterDrop["ExtraDrop"][2]["ItemChanceSum"] = 10000
	-- 蛮荒骨符*2	3004181		45% 	修改为0%
	tTreasureArea_MonsterDrop["ExtraDrop"][2][1] = {}
	tTreasureArea_MonsterDrop["ExtraDrop"][2][1]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["ExtraDrop"][2][1]["ItemChance"] = 0
	tTreasureArea_MonsterDrop["ExtraDrop"][2][1]["Item_1"] = 3004181
	tTreasureArea_MonsterDrop["ExtraDrop"][2][1]["Num"] = 2
	-- 人参果*2		3009100		30%	 	修改为100%
	tTreasureArea_MonsterDrop["ExtraDrop"][2][2] = {}
	tTreasureArea_MonsterDrop["ExtraDrop"][2][2]["RandomItemChanceType"] = 2
	tTreasureArea_MonsterDrop["ExtraDrop"][2][2]["ItemChance"] = 10000
	tTreasureArea_MonsterDrop["ExtraDrop"][2][2]["Item_1"] = 3009100
	tTreasureArea_MonsterDrop["ExtraDrop"][2][2]["Num"] = 2
	
	local tTreasureArea_ExtraDrop ={}
	tTreasureArea_ExtraDrop["Global"] = 53301
	
	
	--------------------------------------------------------------测试模块-------------------------------------------------------------
	-- tProbabil_Test["MonsterDrop"] = {}
	-- tProbabil_Test["MonsterDrop"]["Table"] = tTreasureArea_MonsterDrop["Normal"]
	-- tProbabil_Test["MonsterDrop"]["Index"] = {1}
	-- tProbabil_Test["MonsterDrop"]["Times"] = 100000
	-- tProbabil_Test["MonsterDrop"]["LogName"] = "测试log"

	-- 测试命令
	-- /callluafunc </F>Probabil_Main</S>MonsterDrop
	
	
-- BUFF数据配置
local tTreasureArea_BUFF = {}	
	tTreasureArea_BUFF["Status"] = {}
	tTreasureArea_BUFF["Status"][1] = {139,140}		-- 增加10000攻击力，30000魔法攻击力	90秒
	tTreasureArea_BUFF["Status"][2] = 138        -- 增加100000点生命	90秒
	tTreasureArea_BUFF["Status"][3] = 136        -- 增加200%粉碎攻击	90秒
	tTreasureArea_BUFF["Status"][4] = 135        -- 增加200%抵抗暴击	90秒
	tTreasureArea_BUFF["Status"][5] = 150        -- 旋风状态	90秒
	
	tTreasureArea_BUFF["Time"] = 90

	-- tTreasureArea_BUFF["Secs"] = 90
	-- tTreasureArea_BUFF["Times"] = 1
	-- tTreasureArea_BUFF["RemainTime"] = 90
	-- tTreasureArea_BUFF["EndTime"] = 1
	-- tTreasureArea_BUFF["Recordable"] = 0
	
	-- 状态对应的数值
	tTreasureArea_BUFF["Num"] = {}
	tTreasureArea_BUFF["Num"][139] = 10000
	tTreasureArea_BUFF["Num"][140] = 30000
	tTreasureArea_BUFF["Num"][138] = 100000
	tTreasureArea_BUFF["Num"][136] = 200
	tTreasureArea_BUFF["Num"][135] = 200
	tTreasureArea_BUFF["Num"][150] = 1


-- 宝箱奖池
local tTreasureArea_BoxReward = {}
	tTreasureArea_BoxReward["Box"] = {}
	-- 必定获得	明亮星陨石精装包（3200864）*1
	tTreasureArea_BoxReward["Box"][1] = {}
	tTreasureArea_BoxReward["Box"][1]["RewardItem"] = {}
	tTreasureArea_BoxReward["Box"][1]["RewardItem"][1] = {}
	tTreasureArea_BoxReward["Box"][1]["RewardItem"][1]["Id"] = 3200864
	tTreasureArea_BoxReward["Box"][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_BoxReward["Box"][1]["Log"] = "0,0,0,0,18000160,2,3200864,1"
	-- 概率获得	
	tTreasureArea_BoxReward["Box"][2] = {}
	tTreasureArea_BoxReward["Box"][2]["Space"] = 2
	tTreasureArea_BoxReward["Box"][2]["ItemChanceSum"] = 10000
	-- 20.00%	灵力晶魄（3008735）*1
	tTreasureArea_BoxReward["Box"][2][1] = {}
	tTreasureArea_BoxReward["Box"][2][1]["RandomItemChanceType"] = 2
	tTreasureArea_BoxReward["Box"][2][1]["ItemChance"] = 2000
	tTreasureArea_BoxReward["Box"][2][1]["RewardItem"] = {}
	tTreasureArea_BoxReward["Box"][2][1]["RewardItem"][1] = {}
	tTreasureArea_BoxReward["Box"][2][1]["RewardItem"][1]["Id"] = 3008735
	tTreasureArea_BoxReward["Box"][2][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_BoxReward["Box"][2][1]["Log"] = "0,0,0,0,18000160,2,3008735,1"
	-- 22.00%	六阳聚神丹碎片（赠）（3303101）*1
	tTreasureArea_BoxReward["Box"][2][2] = {}
	tTreasureArea_BoxReward["Box"][2][2]["RandomItemChanceType"] = 2
	tTreasureArea_BoxReward["Box"][2][2]["ItemChance"] = 2200
	tTreasureArea_BoxReward["Box"][2][2]["RewardItem"] = {}
	tTreasureArea_BoxReward["Box"][2][2]["RewardItem"][1] = {}
	tTreasureArea_BoxReward["Box"][2][2]["RewardItem"][1]["Id"] = 3008188 --3303101
	tTreasureArea_BoxReward["Box"][2][2]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_BoxReward["Box"][2][2]["Log"] = "0,0,0,0,18000160,2,3008188,1"
	-- 22.00%	特殊经验丹（赠）（3303017）*1
	tTreasureArea_BoxReward["Box"][2][3] = {}
	tTreasureArea_BoxReward["Box"][2][3]["RandomItemChanceType"] = 2
	tTreasureArea_BoxReward["Box"][2][3]["ItemChance"] = 2200
	tTreasureArea_BoxReward["Box"][2][3]["RewardItem"] = {}
	tTreasureArea_BoxReward["Box"][2][3]["RewardItem"][1] = {}
	tTreasureArea_BoxReward["Box"][2][3]["RewardItem"][1]["Id"] = 3008186 --3303017
	tTreasureArea_BoxReward["Box"][2][3]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_BoxReward["Box"][2][3]["Log"] = "0,0,0,0,18000160,2,3008186,1"
	-- 12.00%	炽热天石碎片（3008727）*1
	tTreasureArea_BoxReward["Box"][2][4] = {}
	tTreasureArea_BoxReward["Box"][2][4]["RandomItemChanceType"] = 2
	tTreasureArea_BoxReward["Box"][2][4]["ItemChance"] = 1200
	tTreasureArea_BoxReward["Box"][2][4]["RewardItem"] = {}
	tTreasureArea_BoxReward["Box"][2][4]["RewardItem"][1] = {}
	tTreasureArea_BoxReward["Box"][2][4]["RewardItem"][1]["Id"] = 3008727
	tTreasureArea_BoxReward["Box"][2][4]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_BoxReward["Box"][2][4]["Log"] = "0,0,0,0,18000160,2,3008727,1"
	-- 12.00%	150气力包（3008187）*1
	tTreasureArea_BoxReward["Box"][2][5] = {}
	tTreasureArea_BoxReward["Box"][2][5]["RandomItemChanceType"] = 2
	tTreasureArea_BoxReward["Box"][2][5]["ItemChance"] = 1200
	tTreasureArea_BoxReward["Box"][2][5]["RewardItem"] = {}
	tTreasureArea_BoxReward["Box"][2][5]["RewardItem"][1] = {}
	tTreasureArea_BoxReward["Box"][2][5]["RewardItem"][1]["Id"] = 3008187
	tTreasureArea_BoxReward["Box"][2][5]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_BoxReward["Box"][2][5]["Log"] = "0,0,0,0,18000160,2,3008187,1"
	-- 12.00%	+2赤炼石福运包（3301224）*1
	tTreasureArea_BoxReward["Box"][2][6] = {}
	tTreasureArea_BoxReward["Box"][2][6]["RandomItemChanceType"] = 2
	tTreasureArea_BoxReward["Box"][2][6]["ItemChance"] = 1200
	tTreasureArea_BoxReward["Box"][2][6]["RewardItem"] = {}
	tTreasureArea_BoxReward["Box"][2][6]["RewardItem"][1] = {}
	tTreasureArea_BoxReward["Box"][2][6]["RewardItem"][1]["Id"] = 3301224
	tTreasureArea_BoxReward["Box"][2][6]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_BoxReward["Box"][2][6]["Log"] = "0,0,0,0,18000160,2,3301224,1"
	
	
-- 使用礼包
local tTreasureArea_UsePack = {}
	-- 潜龙渊伏魔嘉奖包   3303520
	tTreasureArea_UsePack[3303520] = {}
	-- 必定获得	
	-- 国境任务完成令（3303085）*1
	-- 600分钟经验礼包（3200336）*2
	-- 片区兑换道具*3		3303483
	tTreasureArea_UsePack[3303520][1] = {}
	tTreasureArea_UsePack[3303520][1]["RewardItem"] = {}
	tTreasureArea_UsePack[3303520][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303520][1]["RewardItem"][1]["Id"] = 3303085
	tTreasureArea_UsePack[3303520][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303520][1]["RewardItem"][2] = {}
	tTreasureArea_UsePack[3303520][1]["RewardItem"][2]["Id"] = 3200336
	tTreasureArea_UsePack[3303520][1]["RewardItem"][2]["Attr"] = "0 2"
	tTreasureArea_UsePack[3303520][1]["RewardItem"][3] = {}
	tTreasureArea_UsePack[3303520][1]["RewardItem"][3]["Id"] = 3303483
	tTreasureArea_UsePack[3303520][1]["RewardItem"][3]["Attr"] = "0 3"
	tTreasureArea_UsePack[3303520][1]["Log"] = "0,0,3303520,1,18000160,2,3303085[3200336][3303483],1[2][3]"
	-- 概率获得
	tTreasureArea_UsePack[3303520][2] = {}
	tTreasureArea_UsePack[3303520][2]["Space"] = 5
	tTreasureArea_UsePack[3303520][2]["ItemChanceSum"] = 10000
	-- 8.00%	炽热天石碎片（3008727）*1
	tTreasureArea_UsePack[3303520][2][1] = {}
	tTreasureArea_UsePack[3303520][2][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303520][2][1]["ItemChance"] = 800
	tTreasureArea_UsePack[3303520][2][1]["RewardItem"] = {}
	tTreasureArea_UsePack[3303520][2][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303520][2][1]["RewardItem"][1]["Id"] = 3008727
	tTreasureArea_UsePack[3303520][2][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303520][2][1]["Log"] = "0,0,3303520,1,18000160,2,3008727,1"
	-- 15.00%	灵力晶魄（3008735）*1
	tTreasureArea_UsePack[3303520][2][2] = {}
	tTreasureArea_UsePack[3303520][2][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303520][2][2]["ItemChance"] = 1500
	tTreasureArea_UsePack[3303520][2][2]["RewardItem"] = {}
	tTreasureArea_UsePack[3303520][2][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303520][2][2]["RewardItem"][1]["Id"] = 3008735
	tTreasureArea_UsePack[3303520][2][2]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303520][2][2]["Log"] = "0,0,3303520,1,18000160,2,3008735,1"
	-- 18.00%	日常任务完成令（3303084）*1
	tTreasureArea_UsePack[3303520][2][3] = {}
	tTreasureArea_UsePack[3303520][2][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303520][2][3]["ItemChance"] = 1800
	tTreasureArea_UsePack[3303520][2][3]["RewardItem"] = {}
	tTreasureArea_UsePack[3303520][2][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303520][2][3]["RewardItem"][1]["Id"] = 3303084
	tTreasureArea_UsePack[3303520][2][3]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303520][2][3]["Log"] = "0,0,3303520,1,18000160,2,3303084,1"
	-- 8.00%	六阳聚神丹碎片（赠）（3303101）*1		改为200气力值 	3008188
	tTreasureArea_UsePack[3303520][2][4] = {}
	tTreasureArea_UsePack[3303520][2][4]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303520][2][4]["ItemChance"] = 800
	tTreasureArea_UsePack[3303520][2][4]["RewardItem"] = {}
	tTreasureArea_UsePack[3303520][2][4]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303520][2][4]["RewardItem"][1]["Id"] = 3008188 --3303101
	tTreasureArea_UsePack[3303520][2][4]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303520][2][4]["Log"] = "0,0,3303520,1,18000160,2,3008188,1"
	-- 18.00%	特殊经验丹（赠）（3303017）*1		改为 50气力值	3008186
	tTreasureArea_UsePack[3303520][2][5] = {}
	tTreasureArea_UsePack[3303520][2][5]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303520][2][5]["ItemChance"] = 1800
	tTreasureArea_UsePack[3303520][2][5]["RewardItem"] = {}
	tTreasureArea_UsePack[3303520][2][5]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303520][2][5]["RewardItem"][1]["Id"] = 3008186 --3303017
	tTreasureArea_UsePack[3303520][2][5]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303520][2][5]["Log"] = "0,0,3303520,1,18000160,2,3008186,1"
	-- 11.00%	50气力值包（3008186）*1
	tTreasureArea_UsePack[3303520][2][6] = {}
	tTreasureArea_UsePack[3303520][2][6]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303520][2][6]["ItemChance"] = 1100
	tTreasureArea_UsePack[3303520][2][6]["RewardItem"] = {}
	tTreasureArea_UsePack[3303520][2][6]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303520][2][6]["RewardItem"][1]["Id"] = 3008186
	tTreasureArea_UsePack[3303520][2][6]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303520][2][6]["Log"] = "0,0,3303520,1,18000160,2,3008186,1"
	-- 6.00%	150气力值包（3008187）*1
	tTreasureArea_UsePack[3303520][2][7] = {}
	tTreasureArea_UsePack[3303520][2][7]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303520][2][7]["ItemChance"] = 600
	tTreasureArea_UsePack[3303520][2][7]["RewardItem"] = {}
	tTreasureArea_UsePack[3303520][2][7]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303520][2][7]["RewardItem"][1]["Id"] = 3008187
	tTreasureArea_UsePack[3303520][2][7]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303520][2][7]["Log"] = "0,0,3303520,1,18000160,2,3008187,1"
	-- 4.00%	微光星陨石（3009000）*1
	tTreasureArea_UsePack[3303520][2][8] = {}
	tTreasureArea_UsePack[3303520][2][8]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303520][2][8]["ItemChance"] = 400
	tTreasureArea_UsePack[3303520][2][8]["RewardItem"] = {}
	tTreasureArea_UsePack[3303520][2][8]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303520][2][8]["RewardItem"][1]["Id"] = 3009000
	tTreasureArea_UsePack[3303520][2][8]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tTreasureArea_UsePack[3303520][2][8]["Log"] = "0,0,3303520,1,18000160,2,3009000,1"
	-- 12.00%	 +1赤炼石福运包（3301223）*1
	tTreasureArea_UsePack[3303520][2][9] = {}
	tTreasureArea_UsePack[3303520][2][9]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303520][2][9]["ItemChance"] = 1200
	tTreasureArea_UsePack[3303520][2][9]["RewardItem"] = {}
	tTreasureArea_UsePack[3303520][2][9]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303520][2][9]["RewardItem"][1]["Id"] = 3301223
	tTreasureArea_UsePack[3303520][2][9]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303520][2][9]["Log"] = "0,0,3303520,1,18000160,2,3301223,1"

	-- 潜龙渊降妖嘉奖包   3303521
	tTreasureArea_UsePack[3303521] = {}
	-- 必定获得	
	-- 六阳聚神丹碎片（赠）（3303101）*1		改为200气力值  3008188
	-- 日常任务完成令（3303084）*1
	-- 600分钟经验礼包（3200336）*2
	-- 片区兑换道具*5 	3303483
	tTreasureArea_UsePack[3303521][1] = {}
	tTreasureArea_UsePack[3303521][1]["RewardItem"] = {}
	tTreasureArea_UsePack[3303521][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303521][1]["RewardItem"][1]["Id"] = 3008188 --3303101
	tTreasureArea_UsePack[3303521][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303521][1]["RewardItem"][2] = {}
	tTreasureArea_UsePack[3303521][1]["RewardItem"][2]["Id"] = 3303084
	tTreasureArea_UsePack[3303521][1]["RewardItem"][2]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303521][1]["RewardItem"][3] = {}
	tTreasureArea_UsePack[3303521][1]["RewardItem"][3]["Id"] = 3200336
	tTreasureArea_UsePack[3303521][1]["RewardItem"][3]["Attr"] = "0 2"
	tTreasureArea_UsePack[3303521][1]["RewardItem"][4] = {}
	tTreasureArea_UsePack[3303521][1]["RewardItem"][4]["Id"] = 3303483
	tTreasureArea_UsePack[3303521][1]["RewardItem"][4]["Attr"] = "0 5"
	tTreasureArea_UsePack[3303521][1]["Log"] = "0,0,3303521,1,18000160,2,3008188[3303084][3200336][3303483],1[1][2][5]"
	-- 概率获得
	tTreasureArea_UsePack[3303521][2] = {}
	tTreasureArea_UsePack[3303521][2]["Space"] = 6
	tTreasureArea_UsePack[3303521][2]["ItemChanceSum"] = 10000
	-- 18.00%	蛮荒骨符（3004181）*1
	tTreasureArea_UsePack[3303521][2][1] = {}
	tTreasureArea_UsePack[3303521][2][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303521][2][1]["ItemChance"] = 1800
	tTreasureArea_UsePack[3303521][2][1]["RewardItem"] = {}
	tTreasureArea_UsePack[3303521][2][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303521][2][1]["RewardItem"][1]["Id"] = 3004181
	tTreasureArea_UsePack[3303521][2][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303521][2][1]["Log"] = "0,0,3303521,1,18000160,2,3004181,1"
	-- 10.00%	炽热天石碎片（3008727）*2
	tTreasureArea_UsePack[3303521][2][2] = {}
	tTreasureArea_UsePack[3303521][2][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303521][2][2]["ItemChance"] = 1000
	tTreasureArea_UsePack[3303521][2][2]["RewardItem"] = {}
	tTreasureArea_UsePack[3303521][2][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303521][2][2]["RewardItem"][1]["Id"] = 3008727
	tTreasureArea_UsePack[3303521][2][2]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303521][2][2]["Log"] = "0,0,3303521,1,18000160,2,3008727,2"
	-- 15.00%	八宝护气丹碎片*1  3007269
	tTreasureArea_UsePack[3303521][2][3] = {}
	tTreasureArea_UsePack[3303521][2][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303521][2][3]["ItemChance"] = 1500
	tTreasureArea_UsePack[3303521][2][3]["RewardItem"] = {}
	tTreasureArea_UsePack[3303521][2][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303521][2][3]["RewardItem"][1]["Id"] = 3007269
	tTreasureArea_UsePack[3303521][2][3]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303521][2][3]["Log"] = "0,0,3303521,1,18000160,2,3007269,1"
	-- 20.00%	 3千点骑宠比赛积分礼包(赠)*1     720880
	tTreasureArea_UsePack[3303521][2][4] = {}
	tTreasureArea_UsePack[3303521][2][4]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303521][2][4]["ItemChance"] = 2000
	tTreasureArea_UsePack[3303521][2][4]["RewardItem"] = {}
	tTreasureArea_UsePack[3303521][2][4]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303521][2][4]["RewardItem"][1]["Id"] = 720880
	tTreasureArea_UsePack[3303521][2][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tTreasureArea_UsePack[3303521][2][4]["Log"] = "0,0,3303521,1,18000160,2,720880,1"
	-- 25.00%	高级特殊经验丹（赠）（3303018）*1  改为  150气力值	3008187
	tTreasureArea_UsePack[3303521][2][5] = {}
	tTreasureArea_UsePack[3303521][2][5]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303521][2][5]["ItemChance"] = 2500
	tTreasureArea_UsePack[3303521][2][5]["RewardItem"] = {}
	tTreasureArea_UsePack[3303521][2][5]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303521][2][5]["RewardItem"][1]["Id"] = 3008187 --3303018
	tTreasureArea_UsePack[3303521][2][5]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303521][2][5]["Log"] = "0,0,3303521,1,18000160,2,3008187,1"
	-- 12.00%	 +3赤炼石福运包（3301225）*1
	tTreasureArea_UsePack[3303521][2][6] = {}
	tTreasureArea_UsePack[3303521][2][6]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303521][2][6]["ItemChance"] = 1200
	tTreasureArea_UsePack[3303521][2][6]["RewardItem"] = {}
	tTreasureArea_UsePack[3303521][2][6]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303521][2][6]["RewardItem"][1]["Id"] = 3301225
	tTreasureArea_UsePack[3303521][2][6]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303521][2][6]["Log"] = "0,0,3303521,1,18000160,2,3301225,1"
	
	-- 星陨石礼包   3303480
	tTreasureArea_UsePack[3303480] = {}
	tTreasureArea_UsePack[3303480][1] = {}
	tTreasureArea_UsePack[3303480][1]["Space"] = 3
	tTreasureArea_UsePack[3303480][1]["ItemChanceSum"] = 10000
	-- 明亮星陨石*1	3009001	80	48.00%
	tTreasureArea_UsePack[3303480][1][1] = {}
	tTreasureArea_UsePack[3303480][1][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303480][1][1]["ItemChance"] = 4800
	tTreasureArea_UsePack[3303480][1][1]["RewardItem"] = {}
	tTreasureArea_UsePack[3303480][1][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303480][1][1]["RewardItem"][1]["Id"] = 3009001
	tTreasureArea_UsePack[3303480][1][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tTreasureArea_UsePack[3303480][1][1]["Log"] = "0,0,3303480,1,18000160,2,3009001,1"
	-- 明亮星陨石*2	3009001	160	36.00%
	tTreasureArea_UsePack[3303480][1][2] = {}
	tTreasureArea_UsePack[3303480][1][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303480][1][2]["ItemChance"] = 3600
	tTreasureArea_UsePack[3303480][1][2]["RewardItem"] = {}
	tTreasureArea_UsePack[3303480][1][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303480][1][2]["RewardItem"][1]["Id"] = 3009001
	tTreasureArea_UsePack[3303480][1][2]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tTreasureArea_UsePack[3303480][1][2]["Log"] = "0,0,3303480,1,18000160,2,3009001,2"
	-- 明亮星陨石*3	3009001	240	15.00%
	tTreasureArea_UsePack[3303480][1][3] = {}
	tTreasureArea_UsePack[3303480][1][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303480][1][3]["ItemChance"] = 1500
	tTreasureArea_UsePack[3303480][1][3]["RewardItem"] = {}
	tTreasureArea_UsePack[3303480][1][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303480][1][3]["RewardItem"][1]["Id"] = 3009001
	tTreasureArea_UsePack[3303480][1][3]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tTreasureArea_UsePack[3303480][1][3]["Log"] = "0,0,3303480,1,18000160,2,3009001,3"
	-- 晶莹星陨石*1	3009002	800	1.00%
	tTreasureArea_UsePack[3303480][1][4] = {}
	tTreasureArea_UsePack[3303480][1][4]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303480][1][4]["ItemChance"] = 100
	tTreasureArea_UsePack[3303480][1][4]["RewardItem"] = {}
	tTreasureArea_UsePack[3303480][1][4]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303480][1][4]["RewardItem"][1]["Id"] = 3009002
	tTreasureArea_UsePack[3303480][1][4]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tTreasureArea_UsePack[3303480][1][4]["Log"] = "0,0,3303480,1,18000160,2,3009002,1"
	
	-- 古神灵境星陨石礼包   3307085
	tTreasureArea_UsePack[3307085] = {}
	tTreasureArea_UsePack[3307085][1] = {}
	tTreasureArea_UsePack[3307085][1]["Space"] = 1
	tTreasureArea_UsePack[3307085][1]["ItemChanceSum"] = 10000
	-- 明亮星陨石*1	3009001	80	80.00%
	tTreasureArea_UsePack[3307085][1][1] = {}
	tTreasureArea_UsePack[3307085][1][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3307085][1][1]["ItemChance"] = 8000
	tTreasureArea_UsePack[3307085][1][1]["RewardItem"] = {}
	tTreasureArea_UsePack[3307085][1][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3307085][1][1]["RewardItem"][1]["Id"] = 3009001
	tTreasureArea_UsePack[3307085][1][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tTreasureArea_UsePack[3307085][1][1]["Log"] = "0,0,3307085,1,18000160,2,3009001,1"
	-- 晶莹星陨石*1	3009002	800	20.00% 全服公告
	tTreasureArea_UsePack[3307085][1][2] = {}
	tTreasureArea_UsePack[3307085][1][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3307085][1][2]["ItemChance"] = 2000
	tTreasureArea_UsePack[3307085][1][2]["RewardItem"] = {}
	tTreasureArea_UsePack[3307085][1][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3307085][1][2]["RewardItem"][1]["Id"] = 3009002
	tTreasureArea_UsePack[3307085][1][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tTreasureArea_UsePack[3307085][1][2]["Log"] = "0,0,3307085,1,18000160,2,3009002,1"
	tTreasureArea_UsePack[3307085][1][2]["RewardBroadCast"] = tTreasureArea_Text[3307085]["BroadCast"]

	-- 3307086	古神灵境赤炼石礼包
	tTreasureArea_UsePack[3307086] = {}
	tTreasureArea_UsePack[3307086][1] = {}
	tTreasureArea_UsePack[3307086][1]["Space"] = 1
	tTreasureArea_UsePack[3307086][1]["ItemChanceSum"] = 10000
	-- 赤炼石+3	730003	1	赠		80.00%
	tTreasureArea_UsePack[3307086][1][1] = {}
	tTreasureArea_UsePack[3307086][1][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3307086][1][1]["ItemChance"] = 8000
	tTreasureArea_UsePack[3307086][1][1]["RewardItem"] = {}
	tTreasureArea_UsePack[3307086][1][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3307086][1][1]["RewardItem"][1]["Id"] = 730003
	tTreasureArea_UsePack[3307086][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tTreasureArea_UsePack[3307086][1][1]["Log"] = "0,0,3307086,1,18000160,2,730003,1"
	-- 赤炼石+5	730005	1	赠		20.00%	全服公告
	tTreasureArea_UsePack[3307086][1][2] = {}
	tTreasureArea_UsePack[3307086][1][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3307086][1][2]["ItemChance"] = 2000
	tTreasureArea_UsePack[3307086][1][2]["RewardItem"] = {}
	tTreasureArea_UsePack[3307086][1][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3307086][1][2]["RewardItem"][1]["Id"] = 730005
	tTreasureArea_UsePack[3307086][1][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tTreasureArea_UsePack[3307086][1][2]["Log"] = "0,0,3307086,1,18000160,2,730005,1"
	tTreasureArea_UsePack[3307086][1][2]["RewardBroadCast"] = tTreasureArea_Text[3307086]["BroadCast"]
	
	-- 3307087	古神灵境属性随机包
	tTreasureArea_UsePack[3307087] = {}
	tTreasureArea_UsePack[3307087][1] = {}
	tTreasureArea_UsePack[3307087][1]["Space"] = 1
	tTreasureArea_UsePack[3307087][1]["ItemChanceSum"] = 10000
	-- 10属性点道具	新制作	1		3307091	1.00%	全服公告
	tTreasureArea_UsePack[3307087][1][1] = {}
	tTreasureArea_UsePack[3307087][1][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3307087][1][1]["ItemChance"] = 100
	tTreasureArea_UsePack[3307087][1][1]["RewardItem"] = {}
	tTreasureArea_UsePack[3307087][1][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3307087][1][1]["RewardItem"][1]["Id"] = 3307091
	tTreasureArea_UsePack[3307087][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3307087][1][1]["Log"] = "0,0,3307087,1,18000160,2,3307091,1"
	tTreasureArea_UsePack[3307087][1][1]["RewardBroadCast"] = tTreasureArea_Text[3307087]["BroadCast"][3307091]
	-- 百炼天机果	3001044	1			19.00%	全服公告
	tTreasureArea_UsePack[3307087][1][2] = {}
	tTreasureArea_UsePack[3307087][1][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3307087][1][2]["ItemChance"] = 1900
	tTreasureArea_UsePack[3307087][1][2]["RewardItem"] = {}
	tTreasureArea_UsePack[3307087][1][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3307087][1][2]["RewardItem"][1]["Id"] = 3001044
	tTreasureArea_UsePack[3307087][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3307087][1][2]["Log"] = "0,0,3307087,1,18000160,2,3001044,1"
	tTreasureArea_UsePack[3307087][1][2]["RewardBroadCast"] = tTreasureArea_Text[3307087]["BroadCast"][3001044]
	-- 体质密令	3004897	1			20.00%
	tTreasureArea_UsePack[3307087][1][3] = {}
	tTreasureArea_UsePack[3307087][1][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3307087][1][3]["ItemChance"] = 2000
	tTreasureArea_UsePack[3307087][1][3]["RewardItem"] = {}
	tTreasureArea_UsePack[3307087][1][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3307087][1][3]["RewardItem"][1]["Id"] = 3004897
	tTreasureArea_UsePack[3307087][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3307087][1][3]["Log"] = "0,0,3307087,1,18000160,2,3004897,1"
	-- 精神密令	3004896	1			20.00%
	tTreasureArea_UsePack[3307087][1][4] = {}
	tTreasureArea_UsePack[3307087][1][4]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3307087][1][4]["ItemChance"] = 2000
	tTreasureArea_UsePack[3307087][1][4]["RewardItem"] = {}
	tTreasureArea_UsePack[3307087][1][4]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3307087][1][4]["RewardItem"][1]["Id"] = 3004896
	tTreasureArea_UsePack[3307087][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3307087][1][4]["Log"] = "0,0,3307087,1,18000160,2,3004896,1"
	-- 力量密令	3004895	1			20.00%
	tTreasureArea_UsePack[3307087][1][5] = {}
	tTreasureArea_UsePack[3307087][1][5]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3307087][1][5]["ItemChance"] = 2000
	tTreasureArea_UsePack[3307087][1][5]["RewardItem"] = {}
	tTreasureArea_UsePack[3307087][1][5]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3307087][1][5]["RewardItem"][1]["Id"] = 3004895
	tTreasureArea_UsePack[3307087][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3307087][1][5]["Log"] = "0,0,3307087,1,18000160,2,3004895,1"
	-- 灵巧密令	3004898	1			20.00%
	tTreasureArea_UsePack[3307087][1][6] = {}
	tTreasureArea_UsePack[3307087][1][6]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3307087][1][6]["ItemChance"] = 2000
	tTreasureArea_UsePack[3307087][1][6]["RewardItem"] = {}
	tTreasureArea_UsePack[3307087][1][6]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3307087][1][6]["RewardItem"][1]["Id"] = 3004898
	tTreasureArea_UsePack[3307087][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3307087][1][6]["Log"] = "0,0,3307087,1,18000160,2,3004898,1"
	
	-- 3303484	潜龙灵石包	
	tTreasureArea_UsePack[3303484] = {}
	tTreasureArea_UsePack[3303484]["DeleteItem"] = {}
	tTreasureArea_UsePack[3303484]["DeleteItem"][1] = {}
	tTreasureArea_UsePack[3303484]["DeleteItem"][1]["Id"] = 3303484
	tTreasureArea_UsePack[3303484]["RewardItem"] = {}
	tTreasureArea_UsePack[3303484]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303484]["RewardItem"][1]["Id"] = 3303483
	tTreasureArea_UsePack[3303484]["RewardItem"][1]["Attr"] = "0 30"
	tTreasureArea_UsePack[3303484]["LogId"] = 18000160
	tTreasureArea_UsePack[3303484]["RewardEffect"] = {}
	tTreasureArea_UsePack[3303484]["RewardEffect"]["SzObj"] = "self"
	tTreasureArea_UsePack[3303484]["RewardEffect"]["Effect"] = "zf2-e280"
	
	-- 3307084	玄神明玉宝盒	打开后可获得100枚神明玉
	tTreasureArea_UsePack[3307084] = {}
	tTreasureArea_UsePack[3307084]["DeleteItem"] = {}
	tTreasureArea_UsePack[3307084]["DeleteItem"][1] = {}
	tTreasureArea_UsePack[3307084]["DeleteItem"][1]["Id"] = 3307084
	tTreasureArea_UsePack[3307084]["RewardItem"] = {}
	tTreasureArea_UsePack[3307084]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3307084]["RewardItem"][1]["Id"] = 3307083
	tTreasureArea_UsePack[3307084]["RewardItem"][1]["Attr"] = "0 100"
	tTreasureArea_UsePack[3307084]["LogId"] = 18000160
	tTreasureArea_UsePack[3307084]["RewardEffect"] = {}
	tTreasureArea_UsePack[3307084]["RewardEffect"]["SzObj"] = "self"
	tTreasureArea_UsePack[3307084]["RewardEffect"]["Effect"] = "zf2-e280"

	-- 3307091	天元固体丹
	tTreasureArea_UsePack[3307091] = {}
	tTreasureArea_UsePack[3307091]["DeleteItem"] = {}
	tTreasureArea_UsePack[3307091]["DeleteItem"][1] = {}
	tTreasureArea_UsePack[3307091]["DeleteItem"][1]["Id"] = 3307091
	tTreasureArea_UsePack[3307091]["RewardHealthAttr"] = {}
	tTreasureArea_UsePack[3307091]["RewardHealthAttr"]["Value"] = 10
	tTreasureArea_UsePack[3307091]["LogId"] = 18000160
	tTreasureArea_UsePack[3307091]["Talk"] = tTreasureArea_Text[3307091]["RewardItem"]
	tTreasureArea_UsePack[3307091]["RewardEffect"] = {}
	tTreasureArea_UsePack[3307091]["RewardEffect"]["SzObj"] = "self"
	tTreasureArea_UsePack[3307091]["RewardEffect"]["Effect"] = "zf2-e280"
	
	-- 3303519	魔武通玄丹碎片  (3303373 魔武通玄丹)
	tTreasureArea_UsePack[3303519] = {}
	tTreasureArea_UsePack[3303519]["RewardItem"] = {}
	tTreasureArea_UsePack[3303519]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303519]["RewardItem"][1]["Id"] = 3303373
	tTreasureArea_UsePack[3303519]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303519]["Log"] = "0,0,3303519,10,18000160,2,3303373,1"
	tTreasureArea_UsePack[3303519]["Talk"] = tTreasureArea_Text[3303519]["RewardItem"]
	
	-- 微光星陨石包	3307272
	tTreasureArea_UsePack[3307272] = {}
	tTreasureArea_UsePack[3307272]["RewardItem"] = {}
	tTreasureArea_UsePack[3307272]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3307272]["RewardItem"][1]["Id"] = 3009000
	tTreasureArea_UsePack[3307272]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tTreasureArea_UsePack[3307272]["Log"] = "0,0,3307272,1,18000160,2,3009000,1"
	
	-- 3307088	邪龙陨星
	tTreasureArea_UsePack[3307088] = {}
	tTreasureArea_UsePack[3307088]["RewardItem"] = {}
	tTreasureArea_UsePack[3307088]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3307088]["RewardItem"][1]["Id"] = 3009002
	tTreasureArea_UsePack[3307088]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tTreasureArea_UsePack[3307088]["Log"] = "0,0,3307088,10,18000160,2,3009002,1"
	tTreasureArea_UsePack[3307088]["Talk"] = tTreasureArea_Text[3307088]["RewardItem"]
	tTreasureArea_UsePack[3307088]["RewardBroadCast"] = tTreasureArea_Text[3307088]["BroadCast"]
	
	-- 3307089	妖兽气晶
	tTreasureArea_UsePack[3307089] = {}
	tTreasureArea_UsePack[3307089]["RewardItem"] = {}
	tTreasureArea_UsePack[3307089]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3307089]["RewardItem"][1]["Id"] = 3304335
	tTreasureArea_UsePack[3307089]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3307089]["Log"] = "0,0,3307089,10,18000160,2,3304335,1"
	tTreasureArea_UsePack[3307089]["Talk"] = tTreasureArea_Text[3307089]["RewardItem"]
	tTreasureArea_UsePack[3307089]["RewardBroadCast"] = tTreasureArea_Text[3307089]["BroadCast"]
	
	-- 3307090	雪妖赤石
	tTreasureArea_UsePack[3307090] = {}
	tTreasureArea_UsePack[3307090]["RewardItem"] = {}
	tTreasureArea_UsePack[3307090]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3307090]["RewardItem"][1]["Id"] = 730006
	tTreasureArea_UsePack[3307090]["RewardItem"][1]["Attr"] = "0 1 3"
	tTreasureArea_UsePack[3307090]["Log"] = "0,0,3307090,10,18000160,2,730006,1"
	tTreasureArea_UsePack[3307090]["Talk"] = tTreasureArea_Text[3307090]["RewardItem"]
	tTreasureArea_UsePack[3307090]["RewardBroadCast"] = tTreasureArea_Text[3307090]["BroadCast"]
	
	-- 3303523	四阶防具神魂
	tTreasureArea_UsePack[3303523] = {}
	tTreasureArea_UsePack[3303523][1] = {}
	tTreasureArea_UsePack[3303523][1]["Space"] = 1
	tTreasureArea_UsePack[3303523][1]["ItemChanceSum"] = 10000
	-- 823052	紫郢宝戒	34.00%
	tTreasureArea_UsePack[3303523][1][1] = {}
	tTreasureArea_UsePack[3303523][1][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303523][1][1]["ItemChance"] = 3400
	tTreasureArea_UsePack[3303523][1][1]["RewardItem"] = {}
	tTreasureArea_UsePack[3303523][1][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303523][1][1]["RewardItem"][1]["Id"] = 823052
	tTreasureArea_UsePack[3303523][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303523][1][1]["Log"] = "0,0,3303523,1,18000160,2,823052,1"
	-- 823053	凌岳宝指	33.00%
	tTreasureArea_UsePack[3303523][1][2] = {}
	tTreasureArea_UsePack[3303523][1][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303523][1][2]["ItemChance"] = 3300
	tTreasureArea_UsePack[3303523][1][2]["RewardItem"] = {}
	tTreasureArea_UsePack[3303523][1][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303523][1][2]["RewardItem"][1]["Id"] = 823053
	tTreasureArea_UsePack[3303523][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303523][1][2]["Log"] = "0,0,3303523,1,18000160,2,823053,1"
	-- 823054	泣月宝镯	33.00%
	tTreasureArea_UsePack[3303523][1][3] = {}
	tTreasureArea_UsePack[3303523][1][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303523][1][3]["ItemChance"] = 3300
	tTreasureArea_UsePack[3303523][1][3]["RewardItem"] = {}
	tTreasureArea_UsePack[3303523][1][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303523][1][3]["RewardItem"][1]["Id"] = 823054
	tTreasureArea_UsePack[3303523][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303523][1][3]["Log"] = "0,0,3303523,1,18000160,2,823054,1"

	-- 3303524	五阶防具神魂
	tTreasureArea_UsePack[3303524] = {}
	tTreasureArea_UsePack[3303524][1] = {}
	tTreasureArea_UsePack[3303524][1]["Space"] = 1
	tTreasureArea_UsePack[3303524][1]["ItemChanceSum"] = 10000
	-- 820056	冰凝头饰	12.50%
	tTreasureArea_UsePack[3303524][1][1] = {}
	tTreasureArea_UsePack[3303524][1][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303524][1][1]["ItemChance"] = 1250
	tTreasureArea_UsePack[3303524][1][1]["RewardItem"] = {}
	tTreasureArea_UsePack[3303524][1][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303524][1][1]["RewardItem"][1]["Id"] = 820056
	tTreasureArea_UsePack[3303524][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303524][1][1]["Log"] = "0,0,3303524,1,18000160,2,820056,1"
	-- 820057	六阳头饰	12.50%
	tTreasureArea_UsePack[3303524][1][2] = {}
	tTreasureArea_UsePack[3303524][1][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303524][1][2]["ItemChance"] = 1250
	tTreasureArea_UsePack[3303524][1][2]["RewardItem"] = {}
	tTreasureArea_UsePack[3303524][1][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303524][1][2]["RewardItem"][1]["Id"] = 820057
	tTreasureArea_UsePack[3303524][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303524][1][2]["Log"] = "0,0,3303524,1,18000160,2,820057,1"
	-- 800415		雷纹盾	25.00%
	tTreasureArea_UsePack[3303524][1][3] = {}
	tTreasureArea_UsePack[3303524][1][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303524][1][3]["ItemChance"] = 2500
	tTreasureArea_UsePack[3303524][1][3]["RewardItem"] = {}
	tTreasureArea_UsePack[3303524][1][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303524][1][3]["RewardItem"][1]["Id"] = 800415
	tTreasureArea_UsePack[3303524][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303524][1][3]["Log"] = "0,0,3303524,1,18000160,2,800415,1"
	-- 821030		苍木仙囊	25.00%
	tTreasureArea_UsePack[3303524][1][4] = {}
	tTreasureArea_UsePack[3303524][1][4]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303524][1][4]["ItemChance"] = 2500
	tTreasureArea_UsePack[3303524][1][4]["RewardItem"] = {}
	tTreasureArea_UsePack[3303524][1][4]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303524][1][4]["RewardItem"][1]["Id"] = 821030
	tTreasureArea_UsePack[3303524][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303524][1][4]["Log"] = "0,0,3303524,1,18000160,2,821030,1"
	-- 821028		御灵仙坠	25.00%
	tTreasureArea_UsePack[3303524][1][5] = {}
	tTreasureArea_UsePack[3303524][1][5]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303524][1][5]["ItemChance"] = 2500
	tTreasureArea_UsePack[3303524][1][5]["RewardItem"] = {}
	tTreasureArea_UsePack[3303524][1][5]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303524][1][5]["RewardItem"][1]["Id"] = 821028
	tTreasureArea_UsePack[3303524][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303524][1][5]["Log"] = "0,0,3303524,1,18000160,2,821028,1"
	
	-- 3303525	四阶武器神魂
	tTreasureArea_UsePack[3303525] = {}
	tTreasureArea_UsePack[3303525][1] = {}
	tTreasureArea_UsePack[3303525][1]["Space"] = 1
	tTreasureArea_UsePack[3303525][1]["ItemChanceSum"] = 11000
	-- 801304		辟月仙扇	10.00%
	tTreasureArea_UsePack[3303525][1][1] = {}
	tTreasureArea_UsePack[3303525][1][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303525][1][1]["ItemChance"] = 1000
	tTreasureArea_UsePack[3303525][1][1]["RewardItem"] = {}
	tTreasureArea_UsePack[3303525][1][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303525][1][1]["RewardItem"][1]["Id"] = 801304
	tTreasureArea_UsePack[3303525][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303525][1][1]["Log"] = "0,0,3303525,1,18000160,2,801304,1"
	-- 801210		怒拳·断流	5.00%
	tTreasureArea_UsePack[3303525][1][2] = {}
	tTreasureArea_UsePack[3303525][1][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303525][1][2]["ItemChance"] = 500
	tTreasureArea_UsePack[3303525][1][2]["RewardItem"] = {}
	tTreasureArea_UsePack[3303525][1][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303525][1][2]["RewardItem"][1]["Id"] = 801210
	tTreasureArea_UsePack[3303525][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303525][1][2]["Log"] = "0,0,3303525,1,18000160,2,801210,1"
	-- 801208		怒拳·开山	5.00%
	tTreasureArea_UsePack[3303525][1][3] = {}
	tTreasureArea_UsePack[3303525][1][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303525][1][3]["ItemChance"] = 500
	tTreasureArea_UsePack[3303525][1][3]["RewardItem"] = {}
	tTreasureArea_UsePack[3303525][1][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303525][1][3]["RewardItem"][1]["Id"] = 801208
	tTreasureArea_UsePack[3303525][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303525][1][3]["Log"] = "0,0,3303525,1,18000160,2,801208,1"
	-- 801002		炽焰赤鳞	10.00%
	tTreasureArea_UsePack[3303525][1][4] = {}
	tTreasureArea_UsePack[3303525][1][4]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303525][1][4]["ItemChance"] = 1000
	tTreasureArea_UsePack[3303525][1][4]["RewardItem"] = {}
	tTreasureArea_UsePack[3303525][1][4]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303525][1][4]["RewardItem"][1]["Id"] = 801002
	tTreasureArea_UsePack[3303525][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303525][1][4]["Log"] = "0,0,3303525,1,18000160,2,801002,1"
	-- 800014		掩日灵剑	5.00%
	tTreasureArea_UsePack[3303525][1][5] = {}
	tTreasureArea_UsePack[3303525][1][5]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303525][1][5]["ItemChance"] = 500
	tTreasureArea_UsePack[3303525][1][5]["RewardItem"] = {}
	tTreasureArea_UsePack[3303525][1][5]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303525][1][5]["RewardItem"][1]["Id"] = 800014
	tTreasureArea_UsePack[3303525][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303525][1][5]["Log"] = "0,0,3303525,1,18000160,2,800014,1"
	-- 800015		银月灵锤	5.00%
	tTreasureArea_UsePack[3303525][1][6] = {}
	tTreasureArea_UsePack[3303525][1][6]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303525][1][6]["ItemChance"] = 500
	tTreasureArea_UsePack[3303525][1][6]["RewardItem"] = {}
	tTreasureArea_UsePack[3303525][1][6]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303525][1][6]["RewardItem"][1]["Id"] = 800015
	tTreasureArea_UsePack[3303525][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303525][1][6]["Log"] = "0,0,3303525,1,18000160,2,800015,1"
	-- 800214		寒螭灵戟	10.00%
	tTreasureArea_UsePack[3303525][1][7] = {}
	tTreasureArea_UsePack[3303525][1][7]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303525][1][7]["ItemChance"] = 1000
	tTreasureArea_UsePack[3303525][1][7]["RewardItem"] = {}
	tTreasureArea_UsePack[3303525][1][7]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303525][1][7]["RewardItem"][1]["Id"] = 800214
	tTreasureArea_UsePack[3303525][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303525][1][7]["Log"] = "0,0,3303525,1,18000160,2,800214,1"
	-- 800613		潜龙灵弓	5.00%
	tTreasureArea_UsePack[3303525][1][8] = {}
	tTreasureArea_UsePack[3303525][1][8]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303525][1][8]["ItemChance"] = 500
	tTreasureArea_UsePack[3303525][1][8]["RewardItem"] = {}
	tTreasureArea_UsePack[3303525][1][8]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303525][1][8]["RewardItem"][1]["Id"] = 800613
	tTreasureArea_UsePack[3303525][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303525][1][8]["Log"] = "0,0,3303525,1,18000160,2,800613,1"
	-- 800913		冥判虎翼	5.00%
	tTreasureArea_UsePack[3303525][1][9] = {}
	tTreasureArea_UsePack[3303525][1][9]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303525][1][9]["ItemChance"] = 500
	tTreasureArea_UsePack[3303525][1][9]["RewardItem"] = {}
	tTreasureArea_UsePack[3303525][1][9]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303525][1][9]["RewardItem"][1]["Id"] = 800913
	tTreasureArea_UsePack[3303525][1][9]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303525][1][9]["Log"] = "0,0,3303525,1,18000160,2,800913,1"
	-- 800803	暗黑之枪	5.00%
	tTreasureArea_UsePack[3303525][1][10] = {}
	tTreasureArea_UsePack[3303525][1][10]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303525][1][10]["ItemChance"] = 500
	tTreasureArea_UsePack[3303525][1][10]["RewardItem"] = {}
	tTreasureArea_UsePack[3303525][1][10]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303525][1][10]["RewardItem"][1]["Id"] = 800803
	tTreasureArea_UsePack[3303525][1][10]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303525][1][10]["Log"] = "0,0,3303525,1,18000160,2,800803,1"
	-- 800808	泰坦之剑	5.00%
	tTreasureArea_UsePack[3303525][1][11] = {}
	tTreasureArea_UsePack[3303525][1][11]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303525][1][11]["ItemChance"] = 500
	tTreasureArea_UsePack[3303525][1][11]["RewardItem"] = {}
	tTreasureArea_UsePack[3303525][1][11]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303525][1][11]["RewardItem"][1]["Id"] = 800808
	tTreasureArea_UsePack[3303525][1][11]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303525][1][11]["Log"] = "0,0,3303525,1,18000160,2,800808,1"
	-- 800720	乾火灵珠	10.00%
	tTreasureArea_UsePack[3303525][1][12] = {}
	tTreasureArea_UsePack[3303525][1][12]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303525][1][12]["ItemChance"] = 1000
	tTreasureArea_UsePack[3303525][1][12]["RewardItem"] = {}
	tTreasureArea_UsePack[3303525][1][12]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303525][1][12]["RewardItem"][1]["Id"] = 800720
	tTreasureArea_UsePack[3303525][1][12]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303525][1][12]["Log"] = "0,0,3303525,1,18000160,2,800720,1"
	-- 800016		鬼丸国纲	5.00%
	tTreasureArea_UsePack[3303525][1][13] = {}
	tTreasureArea_UsePack[3303525][1][13]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303525][1][13]["ItemChance"] = 500
	tTreasureArea_UsePack[3303525][1][13]["RewardItem"] = {}
	tTreasureArea_UsePack[3303525][1][13]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303525][1][13]["RewardItem"][1]["Id"] = 800016
	tTreasureArea_UsePack[3303525][1][13]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303525][1][13]["Log"] = "0,0,3303525,1,18000160,2,800016,1"
	-- 800253	灭绝邪镰	5.00%
	tTreasureArea_UsePack[3303525][1][14] = {}
	tTreasureArea_UsePack[3303525][1][14]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303525][1][14]["ItemChance"] = 500
	tTreasureArea_UsePack[3303525][1][14]["RewardItem"] = {}
	tTreasureArea_UsePack[3303525][1][14]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303525][1][14]["RewardItem"][1]["Id"] = 800253
	tTreasureArea_UsePack[3303525][1][14]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303525][1][14]["Log"] = "0,0,3303525,1,18000160,2,800253,1"
	-- 801102		两仪万灵拂尘	5.00%
	tTreasureArea_UsePack[3303525][1][15] = {}
	tTreasureArea_UsePack[3303525][1][15]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303525][1][15]["ItemChance"] = 500
	tTreasureArea_UsePack[3303525][1][15]["RewardItem"] = {}
	tTreasureArea_UsePack[3303525][1][15]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303525][1][15]["RewardItem"][1]["Id"] = 801102
	tTreasureArea_UsePack[3303525][1][15]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303525][1][15]["Log"] = "0,0,3303525,1,18000160,2,801102,1"
	-- 800512		莲华灵剑	5.00%
	tTreasureArea_UsePack[3303525][1][16] = {}
	tTreasureArea_UsePack[3303525][1][16]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303525][1][16]["ItemChance"] = 500
	tTreasureArea_UsePack[3303525][1][16]["RewardItem"] = {}
	tTreasureArea_UsePack[3303525][1][16]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303525][1][16]["RewardItem"][1]["Id"] = 800512
	tTreasureArea_UsePack[3303525][1][16]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303525][1][16]["Log"] = "0,0,3303525,1,18000160,2,800512,1"
	-- 827004		天锤·摘星	5.00%
	tTreasureArea_UsePack[3303525][1][17] = {}
	tTreasureArea_UsePack[3303525][1][17]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303525][1][17]["ItemChance"] = 500
	tTreasureArea_UsePack[3303525][1][17]["RewardItem"] = {}
	tTreasureArea_UsePack[3303525][1][17]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303525][1][17]["RewardItem"][1]["Id"] = 827004
	tTreasureArea_UsePack[3303525][1][17]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303525][1][17]["Log"] = "0,0,3303525,1,18000160,2,827004,1"
	-- 827005		天斧·逐月	5.00%
	tTreasureArea_UsePack[3303525][1][18] = {}
	tTreasureArea_UsePack[3303525][1][18]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303525][1][18]["ItemChance"] = 500
	tTreasureArea_UsePack[3303525][1][18]["RewardItem"] = {}
	tTreasureArea_UsePack[3303525][1][18]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303525][1][18]["RewardItem"][1]["Id"] = 827005
	tTreasureArea_UsePack[3303525][1][18]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303525][1][18]["Log"] = "0,0,3303525,1,18000160,2,827005,1"
	
	-- -- 3303526	潜龙渊奢华天石礼包
	tTreasureArea_UsePack[3303526] = {}
	tTreasureArea_UsePack[3303526]["DeleteItem"] = {}
	tTreasureArea_UsePack[3303526]["DeleteItem"][1] = {}
	tTreasureArea_UsePack[3303526]["DeleteItem"][1]["Id"] = 3303526
	tTreasureArea_UsePack[3303526]["RewardEMoney"] = {}
	tTreasureArea_UsePack[3303526]["RewardEMoney"]["Value"] = 3000
	tTreasureArea_UsePack[3303526]["LogId"] = 18000160
	tTreasureArea_UsePack[3303526]["EmoneyLog"] = "350	4470	3000	3000	1	"
	tTreasureArea_UsePack[3303526]["RewardEffect"] = {}
	tTreasureArea_UsePack[3303526]["RewardEffect"]["SzObj"] = "self"
	tTreasureArea_UsePack[3303526]["RewardEffect"]["Effect"] = "zf2-e280"
	tTreasureArea_UsePack[3303526]["RewardBroadCast"] = tTreasureArea_Text["Msg"]["GetEmoney"]
	
	-- 3303527	潜龙渊豪华天石赠礼包
	tTreasureArea_UsePack[3303527] = {}
	tTreasureArea_UsePack[3303527]["DeleteItem"] = {}
	tTreasureArea_UsePack[3303527]["DeleteItem"][1] = {}
	tTreasureArea_UsePack[3303527]["DeleteItem"][1]["Id"] = 3303527
	tTreasureArea_UsePack[3303527]["RewardEMoneyMono"] = {}
	tTreasureArea_UsePack[3303527]["RewardEMoneyMono"]["Value"] = 3000
	tTreasureArea_UsePack[3303527]["LogId"] = 18000160
	tTreasureArea_UsePack[3303527]["EmoneyLog"] = "350	4471	0	0	3000	"
	tTreasureArea_UsePack[3303527]["RewardEffect"] = {}
	tTreasureArea_UsePack[3303527]["RewardEffect"]["SzObj"] = "self"
	tTreasureArea_UsePack[3303527]["RewardEffect"]["Effect"] = "zf2-e280" 
	tTreasureArea_UsePack[3303527]["RewardBroadCast"] = tTreasureArea_Text["Msg"]["GetEmoneyMono"]
	
	-- 3307095	固化石升级包 
	tTreasureArea_UsePack[3307095] = {}
	-- 723694	固化石（赠）
	tTreasureArea_UsePack[3307095][1] = {}
	tTreasureArea_UsePack[3307095][1]["RewardItem"] = {}
	tTreasureArea_UsePack[3307095][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3307095][1]["RewardItem"][1]["Id"] = 723694
	tTreasureArea_UsePack[3307095][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tTreasureArea_UsePack[3307095][1]["Log"] = "0,0,3307095,1,18000160,2[1],723694,1"
	tTreasureArea_UsePack[3307095][1]["RewardNoNeedTip"] = 1
	-- 723694	固化石
	tTreasureArea_UsePack[3307095][2] = {}
	tTreasureArea_UsePack[3307095][2]["RewardItem"] = {}
	tTreasureArea_UsePack[3307095][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3307095][2]["RewardItem"][1]["Id"] = 723694
	tTreasureArea_UsePack[3307095][2]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3307095][2]["EmoneyLog"] = "350	4472	399	399	1	"
	tTreasureArea_UsePack[3307095][2]["Log"] = "0,0,3307095,1,18000160,2[2],723694,1"
	tTreasureArea_UsePack[3307095][2]["RewardNoNeedTip"] = 1
	-- 3307096	金钢坚钻升级包
	tTreasureArea_UsePack[3307096] = {}
	-- 1200005	金钢坚钻（赠）
	tTreasureArea_UsePack[3307096][1] = {}
	tTreasureArea_UsePack[3307096][1]["RewardItem"] = {}
	tTreasureArea_UsePack[3307096][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3307096][1]["RewardItem"][1]["Id"] = 1200005
	tTreasureArea_UsePack[3307096][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tTreasureArea_UsePack[3307096][1]["Log"] = "0,0,3307096,1,18000160,2[1],1200005,1"
	tTreasureArea_UsePack[3307096][1]["RewardNoNeedTip"] = 1
	-- 1200005	金钢坚钻
	tTreasureArea_UsePack[3307096][2] = {}
	tTreasureArea_UsePack[3307096][2]["RewardItem"] = {}
	tTreasureArea_UsePack[3307096][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3307096][2]["RewardItem"][1]["Id"] = 1200005
	tTreasureArea_UsePack[3307096][2]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3307096][2]["EmoneyLog"] = "350	4472	799	799	1	"
	tTreasureArea_UsePack[3307096][2]["Log"] = "0,0,3307096,1,18000160,2[2],1200005,1"
	tTreasureArea_UsePack[3307096][2]["RewardNoNeedTip"] = 1

	-- 3307097	优质玄元升级包
	tTreasureArea_UsePack[3307097] = {}
	-- 700073	优质玄元宝石（赠）
	tTreasureArea_UsePack[3307097][1] = {}
	tTreasureArea_UsePack[3307097][1]["RewardItem"] = {}
	tTreasureArea_UsePack[3307097][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3307097][1]["RewardItem"][1]["Id"] = 700073
	tTreasureArea_UsePack[3307097][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tTreasureArea_UsePack[3307097][1]["Log"] = "0,0,3307097,1,18000160,2[1],700073,1"
	tTreasureArea_UsePack[3307097][1]["RewardNoNeedTip"] = 1
	-- 700073	优质玄元宝石
	tTreasureArea_UsePack[3307097][2] = {}
	tTreasureArea_UsePack[3307097][2]["RewardItem"] = {}
	tTreasureArea_UsePack[3307097][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3307097][2]["RewardItem"][1]["Id"] = 700073
	tTreasureArea_UsePack[3307097][2]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3307097][2]["EmoneyLog"] = "350	4472	199	199	1	"
	tTreasureArea_UsePack[3307097][2]["Log"] = "0,0,3307097,1,18000160,2[2],700073,1"
	tTreasureArea_UsePack[3307097][2]["RewardNoNeedTip"] = 1

	-- 召唤券  3303972  召唤券找出BOSS类型的概率
	tTreasureArea_UsePack[3303972] = {}
	tTreasureArea_UsePack[3303972][1] = {}
	tTreasureArea_UsePack[3303972][1]["ItemChanceSum"] = 7000
	-- 流星小BOSS	12.50%		3979
	tTreasureArea_UsePack[3303972][1][1] = {}
	tTreasureArea_UsePack[3303972][1][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303972][1][1]["ItemChance"] = 1000
	tTreasureArea_UsePack[3303972][1][1]["Item_1"] = 3979
	-- -- 经验小BOSS	12.50%     3980		去掉经验小boss
	-- tTreasureArea_UsePack[3303972][1][2] = {}
	-- tTreasureArea_UsePack[3303972][1][2]["RandomItemChanceType"] = 2
	-- tTreasureArea_UsePack[3303972][1][2]["ItemChance"] = 0
	-- tTreasureArea_UsePack[3303972][1][2]["Item_1"] = 3980
	-- 龙珠小BOSS	12.50%     3981
	tTreasureArea_UsePack[3303972][1][2] = {}
	tTreasureArea_UsePack[3303972][1][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303972][1][2]["ItemChance"] = 1000
	tTreasureArea_UsePack[3303972][1][2]["Item_1"] = 3981
	-- 气力小BOSS	12.50%     3982
	tTreasureArea_UsePack[3303972][1][3] = {}
	tTreasureArea_UsePack[3303972][1][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303972][1][3]["ItemChance"] = 1000
	tTreasureArea_UsePack[3303972][1][3]["Item_1"] = 3982
	-- 赤炼小BOSS	12.50%     3983
	tTreasureArea_UsePack[3303972][1][4] = {}
	tTreasureArea_UsePack[3303972][1][4]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303972][1][4]["ItemChance"] = 1000
	tTreasureArea_UsePack[3303972][1][4]["Item_1"] = 3983
	-- 神魂小BOSS	12.50%     3984
	tTreasureArea_UsePack[3303972][1][5] = {}
	tTreasureArea_UsePack[3303972][1][5]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303972][1][5]["ItemChance"] = 1000
	tTreasureArea_UsePack[3303972][1][5]["Item_1"] = 3984
	-- 银两小BOSS	12.50%     3985
	tTreasureArea_UsePack[3303972][1][6] = {}
	tTreasureArea_UsePack[3303972][1][6]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303972][1][6]["ItemChance"] = 0
	tTreasureArea_UsePack[3303972][1][6]["Item_1"] = 3985
	-- 装备小BOSS	12.50%     3986
	tTreasureArea_UsePack[3303972][1][7] = {}
	tTreasureArea_UsePack[3303972][1][7]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303972][1][7]["ItemChance"] = 1000
	tTreasureArea_UsePack[3303972][1][7]["Item_1"] = 3986
	-- 神器小BOSS	12.50%     3992
	tTreasureArea_UsePack[3303972][1][8] = {}
	tTreasureArea_UsePack[3303972][1][8]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303972][1][8]["ItemChance"] = 1000
	tTreasureArea_UsePack[3303972][1][8]["Item_1"] = 3992
	
	
	-- 3303975	龙珠礼盒
	tTreasureArea_UsePack[3303975] = {}
	tTreasureArea_UsePack[3303975][1] = {}
	tTreasureArea_UsePack[3303975][1]["Space"] = 1
	tTreasureArea_UsePack[3303975][1]["ItemChanceSum"] = 10000
	-- 5%概率出龙珠 非赠
	tTreasureArea_UsePack[3303975][1][1] = {}
	tTreasureArea_UsePack[3303975][1][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303975][1][1]["ItemChance"] = 500
	tTreasureArea_UsePack[3303975][1][1]["RewardItem"] = {}
	tTreasureArea_UsePack[3303975][1][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303975][1][1]["RewardItem"][1]["Id"] = 1088000
	tTreasureArea_UsePack[3303975][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack[3303975][1][1]["Log"] = "0,0,3303975,1,18000160,2,1088000,1"
	tTreasureArea_UsePack[3303975][1][1]["RewardBroadCast"] = tTreasureArea_Text[3303975]["BroadCast"]
	-- 95%概率  龙珠 赠
	tTreasureArea_UsePack[3303975][1][2] = {}
	tTreasureArea_UsePack[3303975][1][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3303975][1][2]["ItemChance"] = 9500
	tTreasureArea_UsePack[3303975][1][2]["RewardItem"] = {}
	tTreasureArea_UsePack[3303975][1][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack[3303975][1][2]["RewardItem"][1]["Id"] = 1088000
	tTreasureArea_UsePack[3303975][1][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tTreasureArea_UsePack[3303975][1][2]["Log"] = "0,0,3303975,1,18000160,2,1088000,1"
	
	-- 3304049	潜龙渊精品装备包
	tTreasureArea_UsePack[3304049] = {}
	tTreasureArea_UsePack[3304049][1] = {}
	tTreasureArea_UsePack[3304049][1]["Space"] = 1
	tTreasureArea_UsePack[3304049][1]["ItemChanceSum"] = 10000
	-- 浑铁盔	111008		1.00%
	tTreasureArea_UsePack[3304049][1][1] = {}
	tTreasureArea_UsePack[3304049][1][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][1]["ItemChance"] = 100
	tTreasureArea_UsePack[3304049][1][1]["Item_1"] = 111008
	-- 百忍之护	112008		1.00%
	tTreasureArea_UsePack[3304049][1][2] = {}
	tTreasureArea_UsePack[3304049][1][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][2]["ItemChance"] = 100
	tTreasureArea_UsePack[3304049][1][2]["Item_1"] = 112008
	-- 獾皮帽	113008		1.00%
	tTreasureArea_UsePack[3304049][1][3] = {}
	tTreasureArea_UsePack[3304049][1][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][3]["ItemChance"] = 100
	tTreasureArea_UsePack[3304049][1][3]["Item_1"] = 113008
	-- 阴阳冠	114008		1.00%
	tTreasureArea_UsePack[3304049][1][4] = {}
	tTreasureArea_UsePack[3304049][1][4]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][4]["ItemChance"] = 100
	tTreasureArea_UsePack[3304049][1][4]["Item_1"] = 114008
	-- 坠青耳环	117008	1.00%
	tTreasureArea_UsePack[3304049][1][5] = {}
	tTreasureArea_UsePack[3304049][1][5]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][5]["ItemChance"] = 100
	tTreasureArea_UsePack[3304049][1][5]["Item_1"] = 117008
	-- 蓝布护额	123008	1.00%
	tTreasureArea_UsePack[3304049][1][6] = {}
	tTreasureArea_UsePack[3304049][1][6]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][6]["ItemChance"] = 100
	tTreasureArea_UsePack[3304049][1][6]["Item_1"] = 123008
	-- 粗布头带	141008		1.00%
	tTreasureArea_UsePack[3304049][1][7] = {}
	tTreasureArea_UsePack[3304049][1][7]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][7]["ItemChance"] = 100
	tTreasureArea_UsePack[3304049][1][7]["Item_1"] = 141008
	-- 夷情之羽	142008	1.00%
	tTreasureArea_UsePack[3304049][1][8] = {}
	tTreasureArea_UsePack[3304049][1][8]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][8]["ItemChance"] = 100
	tTreasureArea_UsePack[3304049][1][8]["Item_1"] = 142008
	-- 巡海者头饰	144008	1.00%
	tTreasureArea_UsePack[3304049][1][9] = {}
	tTreasureArea_UsePack[3304049][1][9]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][9]["ItemChance"] = 100
	tTreasureArea_UsePack[3304049][1][9]["Item_1"] = 144008
	-- 海潮头巾	145008	1.00%
	tTreasureArea_UsePack[3304049][1][10] = {}
	tTreasureArea_UsePack[3304049][1][10]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][10]["ItemChance"] = 100
	tTreasureArea_UsePack[3304049][1][10]["Item_1"] = 145008
	-- 护首铁	118008		2.00%
	tTreasureArea_UsePack[3304049][1][11] = {}
	tTreasureArea_UsePack[3304049][1][11]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][11]["ItemChance"] = 200
	tTreasureArea_UsePack[3304049][1][11]["Item_1"] = 118008
	-- 黄铜法箍	143008	2.00%
	tTreasureArea_UsePack[3304049][1][12] = {}
	tTreasureArea_UsePack[3304049][1][12]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][12]["ItemChance"] = 200
	tTreasureArea_UsePack[3304049][1][12]["Item_1"] = 143008
	-- 棉麻头巾	148008	2.00%
	tTreasureArea_UsePack[3304049][1][13] = {}
	tTreasureArea_UsePack[3304049][1][13]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][13]["ItemChance"] = 200
	tTreasureArea_UsePack[3304049][1][13]["Item_1"] = 148008
	-- 墨云冠	170008	2.00%
	tTreasureArea_UsePack[3304049][1][14] = {}
	tTreasureArea_UsePack[3304049][1][14]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][14]["ItemChance"] = 200
	tTreasureArea_UsePack[3304049][1][14]["Item_1"] = 170008
	-- 玄素袍	101008		2.00%
	tTreasureArea_UsePack[3304049][1][15] = {}
	tTreasureArea_UsePack[3304049][1][15]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][15]["ItemChance"] = 200
	tTreasureArea_UsePack[3304049][1][15]["Item_1"] = 101008
	-- 皮护甲	130008	2.00%
	tTreasureArea_UsePack[3304049][1][16] = {}
	tTreasureArea_UsePack[3304049][1][16]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][16]["ItemChance"] = 200
	tTreasureArea_UsePack[3304049][1][16]["Item_1"] = 130008
	-- 牛皮铠	131008		2.00%
	tTreasureArea_UsePack[3304049][1][17] = {}
	tTreasureArea_UsePack[3304049][1][17]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][17]["ItemChance"] = 200
	tTreasureArea_UsePack[3304049][1][17]["Item_1"] = 131008
	-- 鹿皮猎褂	133008	2.00%
	tTreasureArea_UsePack[3304049][1][18] = {}
	tTreasureArea_UsePack[3304049][1][18]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][18]["ItemChance"] = 200
	tTreasureArea_UsePack[3304049][1][18]["Item_1"] = 133008
	-- 混元道袍	134008	2.00%
	tTreasureArea_UsePack[3304049][1][19] = {}
	tTreasureArea_UsePack[3304049][1][19]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][19]["ItemChance"] = 200
	tTreasureArea_UsePack[3304049][1][19]["Item_1"] = 134008
	-- 下忍服	135008	2.00%
	tTreasureArea_UsePack[3304049][1][20] = {}
	tTreasureArea_UsePack[3304049][1][20]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][20]["ItemChance"] = 200
	tTreasureArea_UsePack[3304049][1][20]["Item_1"] = 135008
	-- 粗葛布袍	136008	2.00%
	tTreasureArea_UsePack[3304049][1][21] = {}
	tTreasureArea_UsePack[3304049][1][21]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][21]["ItemChance"] = 200
	tTreasureArea_UsePack[3304049][1][21]["Item_1"] = 136008
	-- 连身战衣【15级】	138008	2.00%
	tTreasureArea_UsePack[3304049][1][22] = {}
	tTreasureArea_UsePack[3304049][1][22]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][22]["ItemChance"] = 200
	tTreasureArea_UsePack[3304049][1][22]["Item_1"] = 138008
	-- 淘浪裳	139008	2.00%
	tTreasureArea_UsePack[3304049][1][23] = {}
	tTreasureArea_UsePack[3304049][1][23]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][23]["ItemChance"] = 200
	tTreasureArea_UsePack[3304049][1][23]["Item_1"] = 139008
	-- 鸡心项链	120028	4.00%
	tTreasureArea_UsePack[3304049][1][24] = {}
	tTreasureArea_UsePack[3304049][1][24]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][24]["ItemChance"] = 400
	tTreasureArea_UsePack[3304049][1][24]["Item_1"] = 120028
	-- 百花囊	121028	2.00%
	tTreasureArea_UsePack[3304049][1][25] = {}
	tTreasureArea_UsePack[3304049][1][25]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][25]["ItemChance"] = 200
	tTreasureArea_UsePack[3304049][1][25]["Item_1"] = 121028
	-- 银戒	150038	4.00%
	tTreasureArea_UsePack[3304049][1][26] = {}
	tTreasureArea_UsePack[3304049][1][26]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][26]["ItemChance"] = 400
	tTreasureArea_UsePack[3304049][1][26]["Item_1"] = 150038
	-- 桃木镯	152018	2.00%
	tTreasureArea_UsePack[3304049][1][27] = {}
	tTreasureArea_UsePack[3304049][1][27]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][27]["ItemChance"] = 200
	tTreasureArea_UsePack[3304049][1][27]["Item_1"] = 152018
	-- 鹿皮靴	160038	4.00%
	tTreasureArea_UsePack[3304049][1][28] = {}
	tTreasureArea_UsePack[3304049][1][28]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][28]["ItemChance"] = 400
	tTreasureArea_UsePack[3304049][1][28]["Item_1"] = 160038
	-- 修罗刀	410028	3.00%
	tTreasureArea_UsePack[3304049][1][29] = {}
	tTreasureArea_UsePack[3304049][1][29]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][29]["ItemChance"] = 300
	tTreasureArea_UsePack[3304049][1][29]["Item_1"] = 410028
	-- 青冥剑	420028	3.00%
	tTreasureArea_UsePack[3304049][1][30] = {}
	tTreasureArea_UsePack[3304049][1][30]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][30]["ItemChance"] = 300
	tTreasureArea_UsePack[3304049][1][30]["Item_1"] = 420028
	-- 驱邪剑	421028	3.00%
	tTreasureArea_UsePack[3304049][1][31] = {}
	tTreasureArea_UsePack[3304049][1][31]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][31]["ItemChance"] = 300
	tTreasureArea_UsePack[3304049][1][31]["Item_1"] = 421028
	-- 短木棒	480028	3.00%
	tTreasureArea_UsePack[3304049][1][32] = {}
	tTreasureArea_UsePack[3304049][1][32]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][32]["ItemChance"] = 300
	tTreasureArea_UsePack[3304049][1][32]["Item_1"] = 480028
	-- 猎弓	500018	3.00%
	tTreasureArea_UsePack[3304049][1][33] = {}
	tTreasureArea_UsePack[3304049][1][33]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][33]["ItemChance"] = 300
	tTreasureArea_UsePack[3304049][1][33]["Item_1"] = 500018
	-- 武藏钩镰	511028	3.00%
	tTreasureArea_UsePack[3304049][1][34] = {}
	tTreasureArea_UsePack[3304049][1][34]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][34]["ItemChance"] = 300
	tTreasureArea_UsePack[3304049][1][34]["Item_1"] = 511028
	-- 朱缨枪	560028	3.00%
	tTreasureArea_UsePack[3304049][1][35] = {}
	tTreasureArea_UsePack[3304049][1][35]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][35]["ItemChance"] = 300
	tTreasureArea_UsePack[3304049][1][35]["Item_1"] = 560028
	-- 蜡木棍	561028	3.00%
	tTreasureArea_UsePack[3304049][1][36] = {}
	tTreasureArea_UsePack[3304049][1][36]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][36]["ItemChance"] = 300
	tTreasureArea_UsePack[3304049][1][36]["Item_1"] = 561028
	-- 精钢切	601028	3.00%
	tTreasureArea_UsePack[3304049][1][37] = {}
	tTreasureArea_UsePack[3304049][1][37]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][37]["ItemChance"] = 300
	tTreasureArea_UsePack[3304049][1][37]["Item_1"] = 601028
	-- 金蝉念珠	610028	3.00%
	tTreasureArea_UsePack[3304049][1][38] = {}
	tTreasureArea_UsePack[3304049][1][38]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][38]["ItemChance"] = 300
	tTreasureArea_UsePack[3304049][1][38]["Item_1"] = 610028
	-- 勇者佩剑	611028	3.00%
	tTreasureArea_UsePack[3304049][1][39] = {}
	tTreasureArea_UsePack[3304049][1][39]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][39]["ItemChance"] = 300
	tTreasureArea_UsePack[3304049][1][39]["Item_1"] = 611028
	-- 中级火枪	612028	3.00%
	tTreasureArea_UsePack[3304049][1][40] = {}
	tTreasureArea_UsePack[3304049][1][40]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][40]["ItemChance"] = 300
	tTreasureArea_UsePack[3304049][1][40]["Item_1"] = 612028
	-- 狼牙飞刀	613018	3.00%
	tTreasureArea_UsePack[3304049][1][41] = {}
	tTreasureArea_UsePack[3304049][1][41]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][41]["ItemChance"] = 300
	tTreasureArea_UsePack[3304049][1][41]["Item_1"] = 613018
	-- 枣木双截棍	617028	3.00%
	tTreasureArea_UsePack[3304049][1][42] = {}
	tTreasureArea_UsePack[3304049][1][42]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][42]["ItemChance"] = 300
	tTreasureArea_UsePack[3304049][1][42]["Item_1"] = 617028
	-- 苍之怒焰	624028	3.00%
	tTreasureArea_UsePack[3304049][1][43] = {}
	tTreasureArea_UsePack[3304049][1][43]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][43]["ItemChance"] = 300
	tTreasureArea_UsePack[3304049][1][43]["Item_1"] = 624028
	-- 傲雪凌霜扇	626028	3.00%
	tTreasureArea_UsePack[3304049][1][44] = {}
	tTreasureArea_UsePack[3304049][1][44]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack[3304049][1][44]["ItemChance"] = 300
	tTreasureArea_UsePack[3304049][1][44]["Item_1"] = 626028
	
	
	-- 随机装备
	tTreasureArea_UsePack["Equip"] = {}
--浑铁盔111008 1.00%
	tTreasureArea_UsePack["Equip"][111008] = {}
	tTreasureArea_UsePack["Equip"][111008]["ItemChanceSum"] = 10000
-- 无洞90%
	tTreasureArea_UsePack["Equip"][111008][1] = {}
	tTreasureArea_UsePack["Equip"][111008][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][111008][1]["ItemChance"] = 9000
	tTreasureArea_UsePack["Equip"][111008][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][111008][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][111008][1]["RewardItem"][1]["Id"] = 111008
	tTreasureArea_UsePack["Equip"][111008][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][111008][1]["Log"] = "0,0,0,0,18000160,2[0],111008,1"
-- 1洞9.5%
	tTreasureArea_UsePack["Equip"][111008][2] = {}
	tTreasureArea_UsePack["Equip"][111008][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][111008][2]["ItemChance"] = 950
	tTreasureArea_UsePack["Equip"][111008][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][111008][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][111008][2]["RewardItem"][1]["Id"] = 111008
	tTreasureArea_UsePack["Equip"][111008][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][111008][2]["Log"] = "0,0,0,0,18000160,2[1],111008,1"
-- 2洞0.5%
	tTreasureArea_UsePack["Equip"][111008][3] = {}
	tTreasureArea_UsePack["Equip"][111008][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][111008][3]["ItemChance"] = 50
	tTreasureArea_UsePack["Equip"][111008][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][111008][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][111008][3]["RewardItem"][1]["Id"] = 111008
	tTreasureArea_UsePack["Equip"][111008][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][111008][3]["Log"] = "0,0,0,0,18000160,2[2],111008,1"

--百忍之护112008 1.00%
	tTreasureArea_UsePack["Equip"][112008] = {}
	tTreasureArea_UsePack["Equip"][112008]["ItemChanceSum"] = 10000
-- 无洞90%
	tTreasureArea_UsePack["Equip"][112008][1] = {}
	tTreasureArea_UsePack["Equip"][112008][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][112008][1]["ItemChance"] = 9000
	tTreasureArea_UsePack["Equip"][112008][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][112008][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][112008][1]["RewardItem"][1]["Id"] = 112008
	tTreasureArea_UsePack["Equip"][112008][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][112008][1]["Log"] = "0,0,0,0,18000160,2[0],112008,1"
-- 1洞9.5%
	tTreasureArea_UsePack["Equip"][112008][2] = {}
	tTreasureArea_UsePack["Equip"][112008][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][112008][2]["ItemChance"] = 950
	tTreasureArea_UsePack["Equip"][112008][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][112008][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][112008][2]["RewardItem"][1]["Id"] = 112008
	tTreasureArea_UsePack["Equip"][112008][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][112008][2]["Log"] = "0,0,0,0,18000160,2[1],112008,1"
-- 2洞0.5%
	tTreasureArea_UsePack["Equip"][112008][3] = {}
	tTreasureArea_UsePack["Equip"][112008][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][112008][3]["ItemChance"] = 50
	tTreasureArea_UsePack["Equip"][112008][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][112008][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][112008][3]["RewardItem"][1]["Id"] = 112008
	tTreasureArea_UsePack["Equip"][112008][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][112008][3]["Log"] = "0,0,0,0,18000160,2[2],112008,1"

--獾皮帽113008 1.00%
	tTreasureArea_UsePack["Equip"][113008] = {}
	tTreasureArea_UsePack["Equip"][113008]["ItemChanceSum"] = 10000
-- 无洞90%
	tTreasureArea_UsePack["Equip"][113008][1] = {}
	tTreasureArea_UsePack["Equip"][113008][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][113008][1]["ItemChance"] = 9000
	tTreasureArea_UsePack["Equip"][113008][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][113008][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][113008][1]["RewardItem"][1]["Id"] = 113008
	tTreasureArea_UsePack["Equip"][113008][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][113008][1]["Log"] = "0,0,0,0,18000160,2[0],113008,1"
-- 1洞9.5%
	tTreasureArea_UsePack["Equip"][113008][2] = {}
	tTreasureArea_UsePack["Equip"][113008][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][113008][2]["ItemChance"] = 950
	tTreasureArea_UsePack["Equip"][113008][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][113008][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][113008][2]["RewardItem"][1]["Id"] = 113008
	tTreasureArea_UsePack["Equip"][113008][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][113008][2]["Log"] = "0,0,0,0,18000160,2[1],113008,1"
-- 2洞0.5%
	tTreasureArea_UsePack["Equip"][113008][3] = {}
	tTreasureArea_UsePack["Equip"][113008][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][113008][3]["ItemChance"] = 50
	tTreasureArea_UsePack["Equip"][113008][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][113008][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][113008][3]["RewardItem"][1]["Id"] = 113008
	tTreasureArea_UsePack["Equip"][113008][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][113008][3]["Log"] = "0,0,0,0,18000160,2[2],113008,1"


--阴阳冠114008 1.00%
	tTreasureArea_UsePack["Equip"][114008] = {}
	tTreasureArea_UsePack["Equip"][114008]["ItemChanceSum"] = 10000
-- 无洞90%
	tTreasureArea_UsePack["Equip"][114008][1] = {}
	tTreasureArea_UsePack["Equip"][114008][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][114008][1]["ItemChance"] = 9000
	tTreasureArea_UsePack["Equip"][114008][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][114008][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][114008][1]["RewardItem"][1]["Id"] = 114008
	tTreasureArea_UsePack["Equip"][114008][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][114008][1]["Log"] = "0,0,0,0,18000160,2[0],114008,1"
-- 1洞9.5%
	tTreasureArea_UsePack["Equip"][114008][2] = {}
	tTreasureArea_UsePack["Equip"][114008][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][114008][2]["ItemChance"] = 950
	tTreasureArea_UsePack["Equip"][114008][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][114008][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][114008][2]["RewardItem"][1]["Id"] = 114008
	tTreasureArea_UsePack["Equip"][114008][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][114008][2]["Log"] = "0,0,0,0,18000160,2[1],114008,1"
-- 2洞0.5%
	tTreasureArea_UsePack["Equip"][114008][3] = {}
	tTreasureArea_UsePack["Equip"][114008][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][114008][3]["ItemChance"] = 50
	tTreasureArea_UsePack["Equip"][114008][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][114008][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][114008][3]["RewardItem"][1]["Id"] = 114008
	tTreasureArea_UsePack["Equip"][114008][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][114008][3]["Log"] = "0,0,0,0,18000160,2[2],114008,1"


--坠青耳环117008 1.00%
	tTreasureArea_UsePack["Equip"][117008] = {}
	tTreasureArea_UsePack["Equip"][117008]["ItemChanceSum"] = 10000
-- 无洞90%
	tTreasureArea_UsePack["Equip"][117008][1] = {}
	tTreasureArea_UsePack["Equip"][117008][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][117008][1]["ItemChance"] = 9000
	tTreasureArea_UsePack["Equip"][117008][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][117008][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][117008][1]["RewardItem"][1]["Id"] = 117008
	tTreasureArea_UsePack["Equip"][117008][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][117008][1]["Log"] = "0,0,0,0,18000160,2[0],117008,1"
-- 1洞9.5%
	tTreasureArea_UsePack["Equip"][117008][2] = {}
	tTreasureArea_UsePack["Equip"][117008][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][117008][2]["ItemChance"] = 950
	tTreasureArea_UsePack["Equip"][117008][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][117008][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][117008][2]["RewardItem"][1]["Id"] = 117008
	tTreasureArea_UsePack["Equip"][117008][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][117008][2]["Log"] = "0,0,0,0,18000160,2[1],117008,1"
-- 2洞0.5%
	tTreasureArea_UsePack["Equip"][117008][3] = {}
	tTreasureArea_UsePack["Equip"][117008][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][117008][3]["ItemChance"] = 50
	tTreasureArea_UsePack["Equip"][117008][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][117008][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][117008][3]["RewardItem"][1]["Id"] = 117008
	tTreasureArea_UsePack["Equip"][117008][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][117008][3]["Log"] = "0,0,0,0,18000160,2[2],117008,1"


--蓝布护额123008 1.00%
	tTreasureArea_UsePack["Equip"][123008] = {}
	tTreasureArea_UsePack["Equip"][123008]["ItemChanceSum"] = 10000
-- 无洞90%
	tTreasureArea_UsePack["Equip"][123008][1] = {}
	tTreasureArea_UsePack["Equip"][123008][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][123008][1]["ItemChance"] = 9000
	tTreasureArea_UsePack["Equip"][123008][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][123008][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][123008][1]["RewardItem"][1]["Id"] = 123008
	tTreasureArea_UsePack["Equip"][123008][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][123008][1]["Log"] = "0,0,0,0,18000160,2[0],123008,1"
-- 1洞9.5%
	tTreasureArea_UsePack["Equip"][123008][2] = {}
	tTreasureArea_UsePack["Equip"][123008][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][123008][2]["ItemChance"] = 950
	tTreasureArea_UsePack["Equip"][123008][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][123008][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][123008][2]["RewardItem"][1]["Id"] = 123008
	tTreasureArea_UsePack["Equip"][123008][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][123008][2]["Log"] = "0,0,0,0,18000160,2[1],123008,1"
-- 2洞0.5%
	tTreasureArea_UsePack["Equip"][123008][3] = {}
	tTreasureArea_UsePack["Equip"][123008][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][123008][3]["ItemChance"] = 50
	tTreasureArea_UsePack["Equip"][123008][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][123008][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][123008][3]["RewardItem"][1]["Id"] = 123008
	tTreasureArea_UsePack["Equip"][123008][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][123008][3]["Log"] = "0,0,0,0,18000160,2[2],123008,1"


--粗布头带141008 1.00%
	tTreasureArea_UsePack["Equip"][141008] = {}
	tTreasureArea_UsePack["Equip"][141008]["ItemChanceSum"] = 10000
-- 无洞90%
	tTreasureArea_UsePack["Equip"][141008][1] = {}
	tTreasureArea_UsePack["Equip"][141008][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][141008][1]["ItemChance"] = 9000
	tTreasureArea_UsePack["Equip"][141008][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][141008][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][141008][1]["RewardItem"][1]["Id"] = 141008
	tTreasureArea_UsePack["Equip"][141008][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][141008][1]["Log"] = "0,0,0,0,18000160,2[0],141008,1"
-- 1洞9.5%
	tTreasureArea_UsePack["Equip"][141008][2] = {}
	tTreasureArea_UsePack["Equip"][141008][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][141008][2]["ItemChance"] = 950
	tTreasureArea_UsePack["Equip"][141008][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][141008][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][141008][2]["RewardItem"][1]["Id"] = 141008
	tTreasureArea_UsePack["Equip"][141008][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][141008][2]["Log"] = "0,0,0,0,18000160,2[1],141008,1"
-- 2洞0.5%
	tTreasureArea_UsePack["Equip"][141008][3] = {}
	tTreasureArea_UsePack["Equip"][141008][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][141008][3]["ItemChance"] = 50
	tTreasureArea_UsePack["Equip"][141008][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][141008][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][141008][3]["RewardItem"][1]["Id"] = 141008
	tTreasureArea_UsePack["Equip"][141008][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][141008][3]["Log"] = "0,0,0,0,18000160,2[2],141008,1"


--夷情之羽142008 1.00%
	tTreasureArea_UsePack["Equip"][142008] = {}
	tTreasureArea_UsePack["Equip"][142008]["ItemChanceSum"] = 10000
-- 无洞90%
	tTreasureArea_UsePack["Equip"][142008][1] = {}
	tTreasureArea_UsePack["Equip"][142008][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][142008][1]["ItemChance"] = 9000
	tTreasureArea_UsePack["Equip"][142008][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][142008][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][142008][1]["RewardItem"][1]["Id"] = 142008
	tTreasureArea_UsePack["Equip"][142008][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][142008][1]["Log"] = "0,0,0,0,18000160,2[0],142008,1"
-- 1洞9.5%
	tTreasureArea_UsePack["Equip"][142008][2] = {}
	tTreasureArea_UsePack["Equip"][142008][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][142008][2]["ItemChance"] = 950
	tTreasureArea_UsePack["Equip"][142008][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][142008][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][142008][2]["RewardItem"][1]["Id"] = 142008
	tTreasureArea_UsePack["Equip"][142008][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][142008][2]["Log"] = "0,0,0,0,18000160,2[1],142008,1"
-- 2洞0.5%
	tTreasureArea_UsePack["Equip"][142008][3] = {}
	tTreasureArea_UsePack["Equip"][142008][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][142008][3]["ItemChance"] = 50
	tTreasureArea_UsePack["Equip"][142008][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][142008][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][142008][3]["RewardItem"][1]["Id"] = 142008
	tTreasureArea_UsePack["Equip"][142008][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][142008][3]["Log"] = "0,0,0,0,18000160,2[2],142008,1"


--巡海者头饰144008 1.00%
	tTreasureArea_UsePack["Equip"][144008] = {}
	tTreasureArea_UsePack["Equip"][144008]["ItemChanceSum"] = 10000
-- 无洞90%
	tTreasureArea_UsePack["Equip"][144008][1] = {}
	tTreasureArea_UsePack["Equip"][144008][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][144008][1]["ItemChance"] = 9000
	tTreasureArea_UsePack["Equip"][144008][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][144008][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][144008][1]["RewardItem"][1]["Id"] = 144008
	tTreasureArea_UsePack["Equip"][144008][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][144008][1]["Log"] = "0,0,0,0,18000160,2[0],144008,1"
-- 1洞9.5%
	tTreasureArea_UsePack["Equip"][144008][2] = {}
	tTreasureArea_UsePack["Equip"][144008][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][144008][2]["ItemChance"] = 950
	tTreasureArea_UsePack["Equip"][144008][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][144008][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][144008][2]["RewardItem"][1]["Id"] = 144008
	tTreasureArea_UsePack["Equip"][144008][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][144008][2]["Log"] = "0,0,0,0,18000160,2[1],144008,1"
-- 2洞0.5%
	tTreasureArea_UsePack["Equip"][144008][3] = {}
	tTreasureArea_UsePack["Equip"][144008][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][144008][3]["ItemChance"] = 50
	tTreasureArea_UsePack["Equip"][144008][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][144008][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][144008][3]["RewardItem"][1]["Id"] = 144008
	tTreasureArea_UsePack["Equip"][144008][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][144008][3]["Log"] = "0,0,0,0,18000160,2[2],144008,1"


--海潮头巾145008 1.00%
	tTreasureArea_UsePack["Equip"][145008] = {}
	tTreasureArea_UsePack["Equip"][145008]["ItemChanceSum"] = 10000
-- 无洞90%
	tTreasureArea_UsePack["Equip"][145008][1] = {}
	tTreasureArea_UsePack["Equip"][145008][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][145008][1]["ItemChance"] = 9000
	tTreasureArea_UsePack["Equip"][145008][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][145008][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][145008][1]["RewardItem"][1]["Id"] = 145008
	tTreasureArea_UsePack["Equip"][145008][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][145008][1]["Log"] = "0,0,0,0,18000160,2[0],145008,1"
-- 1洞9.5%
	tTreasureArea_UsePack["Equip"][145008][2] = {}
	tTreasureArea_UsePack["Equip"][145008][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][145008][2]["ItemChance"] = 950
	tTreasureArea_UsePack["Equip"][145008][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][145008][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][145008][2]["RewardItem"][1]["Id"] = 145008
	tTreasureArea_UsePack["Equip"][145008][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][145008][2]["Log"] = "0,0,0,0,18000160,2[1],145008,1"
-- 2洞0.5%
	tTreasureArea_UsePack["Equip"][145008][3] = {}
	tTreasureArea_UsePack["Equip"][145008][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][145008][3]["ItemChance"] = 50
	tTreasureArea_UsePack["Equip"][145008][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][145008][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][145008][3]["RewardItem"][1]["Id"] = 145008
	tTreasureArea_UsePack["Equip"][145008][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][145008][3]["Log"] = "0,0,0,0,18000160,2[2],145008,1"


--护首铁118008 2.00%
	tTreasureArea_UsePack["Equip"][118008] = {}
	tTreasureArea_UsePack["Equip"][118008]["ItemChanceSum"] = 10000
-- 无洞90%
	tTreasureArea_UsePack["Equip"][118008][1] = {}
	tTreasureArea_UsePack["Equip"][118008][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][118008][1]["ItemChance"] = 9000
	tTreasureArea_UsePack["Equip"][118008][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][118008][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][118008][1]["RewardItem"][1]["Id"] = 118008
	tTreasureArea_UsePack["Equip"][118008][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][118008][1]["Log"] = "0,0,0,0,18000160,2[0],118008,1"
-- 1洞9.5%
	tTreasureArea_UsePack["Equip"][118008][2] = {}
	tTreasureArea_UsePack["Equip"][118008][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][118008][2]["ItemChance"] = 950
	tTreasureArea_UsePack["Equip"][118008][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][118008][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][118008][2]["RewardItem"][1]["Id"] = 118008
	tTreasureArea_UsePack["Equip"][118008][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][118008][2]["Log"] = "0,0,0,0,18000160,2[1],118008,1"
-- 2洞0.5%
	tTreasureArea_UsePack["Equip"][118008][3] = {}
	tTreasureArea_UsePack["Equip"][118008][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][118008][3]["ItemChance"] = 50
	tTreasureArea_UsePack["Equip"][118008][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][118008][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][118008][3]["RewardItem"][1]["Id"] = 118008
	tTreasureArea_UsePack["Equip"][118008][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][118008][3]["Log"] = "0,0,0,0,18000160,2[2],118008,1"


--黄铜法箍143008 2.00%
	tTreasureArea_UsePack["Equip"][143008] = {}
	tTreasureArea_UsePack["Equip"][143008]["ItemChanceSum"] = 10000
-- 无洞90%
	tTreasureArea_UsePack["Equip"][143008][1] = {}
	tTreasureArea_UsePack["Equip"][143008][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][143008][1]["ItemChance"] = 9000
	tTreasureArea_UsePack["Equip"][143008][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][143008][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][143008][1]["RewardItem"][1]["Id"] = 143008
	tTreasureArea_UsePack["Equip"][143008][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][143008][1]["Log"] = "0,0,0,0,18000160,2[0],143008,1"
-- 1洞9.5%
	tTreasureArea_UsePack["Equip"][143008][2] = {}
	tTreasureArea_UsePack["Equip"][143008][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][143008][2]["ItemChance"] = 950
	tTreasureArea_UsePack["Equip"][143008][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][143008][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][143008][2]["RewardItem"][1]["Id"] = 143008
	tTreasureArea_UsePack["Equip"][143008][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][143008][2]["Log"] = "0,0,0,0,18000160,2[1],143008,1"
-- 2洞0.5%
	tTreasureArea_UsePack["Equip"][143008][3] = {}
	tTreasureArea_UsePack["Equip"][143008][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][143008][3]["ItemChance"] = 50
	tTreasureArea_UsePack["Equip"][143008][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][143008][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][143008][3]["RewardItem"][1]["Id"] = 143008
	tTreasureArea_UsePack["Equip"][143008][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][143008][3]["Log"] = "0,0,0,0,18000160,2[2],143008,1"


--棉麻头巾148008 2.00%
	tTreasureArea_UsePack["Equip"][148008] = {}
	tTreasureArea_UsePack["Equip"][148008]["ItemChanceSum"] = 10000
-- 无洞90%
	tTreasureArea_UsePack["Equip"][148008][1] = {}
	tTreasureArea_UsePack["Equip"][148008][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][148008][1]["ItemChance"] = 9000
	tTreasureArea_UsePack["Equip"][148008][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][148008][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][148008][1]["RewardItem"][1]["Id"] = 148008
	tTreasureArea_UsePack["Equip"][148008][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][148008][1]["Log"] = "0,0,0,0,18000160,2[0],148008,1"
-- 1洞9.5%
	tTreasureArea_UsePack["Equip"][148008][2] = {}
	tTreasureArea_UsePack["Equip"][148008][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][148008][2]["ItemChance"] = 950
	tTreasureArea_UsePack["Equip"][148008][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][148008][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][148008][2]["RewardItem"][1]["Id"] = 148008
	tTreasureArea_UsePack["Equip"][148008][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][148008][2]["Log"] = "0,0,0,0,18000160,2[1],148008,1"
-- 2洞0.5%
	tTreasureArea_UsePack["Equip"][148008][3] = {}
	tTreasureArea_UsePack["Equip"][148008][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][148008][3]["ItemChance"] = 50
	tTreasureArea_UsePack["Equip"][148008][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][148008][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][148008][3]["RewardItem"][1]["Id"] = 148008
	tTreasureArea_UsePack["Equip"][148008][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][148008][3]["Log"] = "0,0,0,0,18000160,2[2],148008,1"


--墨云冠170008 2.00%
	tTreasureArea_UsePack["Equip"][170008] = {}
	tTreasureArea_UsePack["Equip"][170008]["ItemChanceSum"] = 10000
-- 无洞90%
	tTreasureArea_UsePack["Equip"][170008][1] = {}
	tTreasureArea_UsePack["Equip"][170008][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][170008][1]["ItemChance"] = 9000
	tTreasureArea_UsePack["Equip"][170008][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][170008][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][170008][1]["RewardItem"][1]["Id"] = 170008
	tTreasureArea_UsePack["Equip"][170008][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][170008][1]["Log"] = "0,0,0,0,18000160,2[0],170008,1"
-- 1洞9.5%
	tTreasureArea_UsePack["Equip"][170008][2] = {}
	tTreasureArea_UsePack["Equip"][170008][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][170008][2]["ItemChance"] = 950
	tTreasureArea_UsePack["Equip"][170008][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][170008][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][170008][2]["RewardItem"][1]["Id"] = 170008
	tTreasureArea_UsePack["Equip"][170008][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][170008][2]["Log"] = "0,0,0,0,18000160,2[1],170008,1"
-- 2洞0.5%
	tTreasureArea_UsePack["Equip"][170008][3] = {}
	tTreasureArea_UsePack["Equip"][170008][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][170008][3]["ItemChance"] = 50
	tTreasureArea_UsePack["Equip"][170008][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][170008][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][170008][3]["RewardItem"][1]["Id"] = 170008
	tTreasureArea_UsePack["Equip"][170008][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][170008][3]["Log"] = "0,0,0,0,18000160,2[2],170008,1"



--玄素袍101008 2.00%
	tTreasureArea_UsePack["Equip"][101008] = {}
	tTreasureArea_UsePack["Equip"][101008]["ItemChanceSum"] = 10000
-- 无洞90%
	tTreasureArea_UsePack["Equip"][101008][1] = {}
	tTreasureArea_UsePack["Equip"][101008][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][101008][1]["ItemChance"] = 9000
	tTreasureArea_UsePack["Equip"][101008][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][101008][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][101008][1]["RewardItem"][1]["Id"] = 101008
	tTreasureArea_UsePack["Equip"][101008][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][101008][1]["Log"] = "0,0,0,0,18000160,2[0],101008,1"
-- 1洞9.5%
	tTreasureArea_UsePack["Equip"][101008][2] = {}
	tTreasureArea_UsePack["Equip"][101008][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][101008][2]["ItemChance"] = 950
	tTreasureArea_UsePack["Equip"][101008][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][101008][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][101008][2]["RewardItem"][1]["Id"] = 101008
	tTreasureArea_UsePack["Equip"][101008][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][101008][2]["Log"] = "0,0,0,0,18000160,2[1],101008,1"
-- 2洞0.5%
	tTreasureArea_UsePack["Equip"][101008][3] = {}
	tTreasureArea_UsePack["Equip"][101008][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][101008][3]["ItemChance"] = 50
	tTreasureArea_UsePack["Equip"][101008][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][101008][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][101008][3]["RewardItem"][1]["Id"] = 101008
	tTreasureArea_UsePack["Equip"][101008][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][101008][3]["Log"] = "0,0,0,0,18000160,2[2],101008,1"


--皮护甲130008 2.00%
	tTreasureArea_UsePack["Equip"][130008] = {}
	tTreasureArea_UsePack["Equip"][130008]["ItemChanceSum"] = 10000
-- 无洞90%
	tTreasureArea_UsePack["Equip"][130008][1] = {}
	tTreasureArea_UsePack["Equip"][130008][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][130008][1]["ItemChance"] = 9000
	tTreasureArea_UsePack["Equip"][130008][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][130008][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][130008][1]["RewardItem"][1]["Id"] = 130008
	tTreasureArea_UsePack["Equip"][130008][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][130008][1]["Log"] = "0,0,0,0,18000160,2[0],130008,1"
-- 1洞9.5%
	tTreasureArea_UsePack["Equip"][130008][2] = {}
	tTreasureArea_UsePack["Equip"][130008][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][130008][2]["ItemChance"] = 950
	tTreasureArea_UsePack["Equip"][130008][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][130008][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][130008][2]["RewardItem"][1]["Id"] = 130008
	tTreasureArea_UsePack["Equip"][130008][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][130008][2]["Log"] = "0,0,0,0,18000160,2[1],130008,1"
-- 2洞0.5%
	tTreasureArea_UsePack["Equip"][130008][3] = {}
	tTreasureArea_UsePack["Equip"][130008][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][130008][3]["ItemChance"] = 50
	tTreasureArea_UsePack["Equip"][130008][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][130008][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][130008][3]["RewardItem"][1]["Id"] = 130008
	tTreasureArea_UsePack["Equip"][130008][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][130008][3]["Log"] = "0,0,0,0,18000160,2[2],130008,1"


--牛皮铠131008 2.00%
	tTreasureArea_UsePack["Equip"][131008] = {}
	tTreasureArea_UsePack["Equip"][131008]["ItemChanceSum"] = 10000
-- 无洞90%
	tTreasureArea_UsePack["Equip"][131008][1] = {}
	tTreasureArea_UsePack["Equip"][131008][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][131008][1]["ItemChance"] = 9000
	tTreasureArea_UsePack["Equip"][131008][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][131008][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][131008][1]["RewardItem"][1]["Id"] = 131008
	tTreasureArea_UsePack["Equip"][131008][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][131008][1]["Log"] = "0,0,0,0,18000160,2[0],131008,1"
-- 1洞9.5%
	tTreasureArea_UsePack["Equip"][131008][2] = {}
	tTreasureArea_UsePack["Equip"][131008][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][131008][2]["ItemChance"] = 950
	tTreasureArea_UsePack["Equip"][131008][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][131008][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][131008][2]["RewardItem"][1]["Id"] = 131008
	tTreasureArea_UsePack["Equip"][131008][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][131008][2]["Log"] = "0,0,0,0,18000160,2[1],131008,1"
-- 2洞0.5%
	tTreasureArea_UsePack["Equip"][131008][3] = {}
	tTreasureArea_UsePack["Equip"][131008][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][131008][3]["ItemChance"] = 50
	tTreasureArea_UsePack["Equip"][131008][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][131008][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][131008][3]["RewardItem"][1]["Id"] = 131008
	tTreasureArea_UsePack["Equip"][131008][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][131008][3]["Log"] = "0,0,0,0,18000160,2[2],131008,1"


--鹿皮猎褂133008 2.00%
	tTreasureArea_UsePack["Equip"][133008] = {}
	tTreasureArea_UsePack["Equip"][133008]["ItemChanceSum"] = 10000
-- 无洞90%
	tTreasureArea_UsePack["Equip"][133008][1] = {}
	tTreasureArea_UsePack["Equip"][133008][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][133008][1]["ItemChance"] = 9000
	tTreasureArea_UsePack["Equip"][133008][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][133008][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][133008][1]["RewardItem"][1]["Id"] = 133008
	tTreasureArea_UsePack["Equip"][133008][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][133008][1]["Log"] = "0,0,0,0,18000160,2[0],133008,1"
-- 1洞9.5%
	tTreasureArea_UsePack["Equip"][133008][2] = {}
	tTreasureArea_UsePack["Equip"][133008][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][133008][2]["ItemChance"] = 950
	tTreasureArea_UsePack["Equip"][133008][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][133008][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][133008][2]["RewardItem"][1]["Id"] = 133008
	tTreasureArea_UsePack["Equip"][133008][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][133008][2]["Log"] = "0,0,0,0,18000160,2[1],133008,1"
-- 2洞0.5%
	tTreasureArea_UsePack["Equip"][133008][3] = {}
	tTreasureArea_UsePack["Equip"][133008][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][133008][3]["ItemChance"] = 50
	tTreasureArea_UsePack["Equip"][133008][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][133008][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][133008][3]["RewardItem"][1]["Id"] = 133008
	tTreasureArea_UsePack["Equip"][133008][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][133008][3]["Log"] = "0,0,0,0,18000160,2[2],133008,1"


--混元道袍134008 2.00%
	tTreasureArea_UsePack["Equip"][134008] = {}
	tTreasureArea_UsePack["Equip"][134008]["ItemChanceSum"] = 10000
-- 无洞90%
	tTreasureArea_UsePack["Equip"][134008][1] = {}
	tTreasureArea_UsePack["Equip"][134008][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][134008][1]["ItemChance"] = 9000
	tTreasureArea_UsePack["Equip"][134008][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][134008][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][134008][1]["RewardItem"][1]["Id"] = 134008
	tTreasureArea_UsePack["Equip"][134008][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][134008][1]["Log"] = "0,0,0,0,18000160,2[0],134008,1"
-- 1洞9.5%
	tTreasureArea_UsePack["Equip"][134008][2] = {}
	tTreasureArea_UsePack["Equip"][134008][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][134008][2]["ItemChance"] = 950
	tTreasureArea_UsePack["Equip"][134008][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][134008][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][134008][2]["RewardItem"][1]["Id"] = 134008
	tTreasureArea_UsePack["Equip"][134008][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][134008][2]["Log"] = "0,0,0,0,18000160,2[1],134008,1"
-- 2洞0.5%
	tTreasureArea_UsePack["Equip"][134008][3] = {}
	tTreasureArea_UsePack["Equip"][134008][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][134008][3]["ItemChance"] = 50
	tTreasureArea_UsePack["Equip"][134008][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][134008][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][134008][3]["RewardItem"][1]["Id"] = 134008
	tTreasureArea_UsePack["Equip"][134008][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][134008][3]["Log"] = "0,0,0,0,18000160,2[2],134008,1"


--下忍服135008 2.00%
	tTreasureArea_UsePack["Equip"][135008] = {}
	tTreasureArea_UsePack["Equip"][135008]["ItemChanceSum"] = 10000
-- 无洞90%
	tTreasureArea_UsePack["Equip"][135008][1] = {}
	tTreasureArea_UsePack["Equip"][135008][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][135008][1]["ItemChance"] = 9000
	tTreasureArea_UsePack["Equip"][135008][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][135008][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][135008][1]["RewardItem"][1]["Id"] = 135008
	tTreasureArea_UsePack["Equip"][135008][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][135008][1]["Log"] = "0,0,0,0,18000160,2[0],135008,1"
-- 1洞9.5%
	tTreasureArea_UsePack["Equip"][135008][2] = {}
	tTreasureArea_UsePack["Equip"][135008][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][135008][2]["ItemChance"] = 950
	tTreasureArea_UsePack["Equip"][135008][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][135008][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][135008][2]["RewardItem"][1]["Id"] = 135008
	tTreasureArea_UsePack["Equip"][135008][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][135008][2]["Log"] = "0,0,0,0,18000160,2[1],135008,1"
-- 2洞0.5%
	tTreasureArea_UsePack["Equip"][135008][3] = {}
	tTreasureArea_UsePack["Equip"][135008][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][135008][3]["ItemChance"] = 50
	tTreasureArea_UsePack["Equip"][135008][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][135008][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][135008][3]["RewardItem"][1]["Id"] = 135008
	tTreasureArea_UsePack["Equip"][135008][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][135008][3]["Log"] = "0,0,0,0,18000160,2[2],135008,1"


--粗葛布袍136008 2.00%
	tTreasureArea_UsePack["Equip"][136008] = {}
	tTreasureArea_UsePack["Equip"][136008]["ItemChanceSum"] = 10000
-- 无洞90%
	tTreasureArea_UsePack["Equip"][136008][1] = {}
	tTreasureArea_UsePack["Equip"][136008][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][136008][1]["ItemChance"] = 9000
	tTreasureArea_UsePack["Equip"][136008][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][136008][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][136008][1]["RewardItem"][1]["Id"] = 136008
	tTreasureArea_UsePack["Equip"][136008][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][136008][1]["Log"] = "0,0,0,0,18000160,2[0],136008,1"
-- 1洞9.5%
	tTreasureArea_UsePack["Equip"][136008][2] = {}
	tTreasureArea_UsePack["Equip"][136008][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][136008][2]["ItemChance"] = 950
	tTreasureArea_UsePack["Equip"][136008][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][136008][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][136008][2]["RewardItem"][1]["Id"] = 136008
	tTreasureArea_UsePack["Equip"][136008][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][136008][2]["Log"] = "0,0,0,0,18000160,2[1],136008,1"
-- 2洞0.5%
	tTreasureArea_UsePack["Equip"][136008][3] = {}
	tTreasureArea_UsePack["Equip"][136008][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][136008][3]["ItemChance"] = 50
	tTreasureArea_UsePack["Equip"][136008][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][136008][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][136008][3]["RewardItem"][1]["Id"] = 136008
	tTreasureArea_UsePack["Equip"][136008][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][136008][3]["Log"] = "0,0,0,0,18000160,2[2],136008,1"


--连身战衣【15级】138008 2.00%
	tTreasureArea_UsePack["Equip"][138008] = {}
	tTreasureArea_UsePack["Equip"][138008]["ItemChanceSum"] = 10000
-- 无洞90%
	tTreasureArea_UsePack["Equip"][138008][1] = {}
	tTreasureArea_UsePack["Equip"][138008][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][138008][1]["ItemChance"] = 9000
	tTreasureArea_UsePack["Equip"][138008][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][138008][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][138008][1]["RewardItem"][1]["Id"] = 138008
	tTreasureArea_UsePack["Equip"][138008][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][138008][1]["Log"] = "0,0,0,0,18000160,2[0],138008,1"
-- 1洞9.5%
	tTreasureArea_UsePack["Equip"][138008][2] = {}
	tTreasureArea_UsePack["Equip"][138008][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][138008][2]["ItemChance"] = 950
	tTreasureArea_UsePack["Equip"][138008][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][138008][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][138008][2]["RewardItem"][1]["Id"] = 138008
	tTreasureArea_UsePack["Equip"][138008][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][138008][2]["Log"] = "0,0,0,0,18000160,2[1],138008,1"
-- 2洞0.5%
	tTreasureArea_UsePack["Equip"][138008][3] = {}
	tTreasureArea_UsePack["Equip"][138008][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][138008][3]["ItemChance"] = 50
	tTreasureArea_UsePack["Equip"][138008][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][138008][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][138008][3]["RewardItem"][1]["Id"] = 138008
	tTreasureArea_UsePack["Equip"][138008][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][138008][3]["Log"] = "0,0,0,0,18000160,2[2],138008,1"


--淘浪裳139008 2.00%
	tTreasureArea_UsePack["Equip"][139008] = {}
	tTreasureArea_UsePack["Equip"][139008]["ItemChanceSum"] = 10000
-- 无洞90%
	tTreasureArea_UsePack["Equip"][139008][1] = {}
	tTreasureArea_UsePack["Equip"][139008][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][139008][1]["ItemChance"] = 9000
	tTreasureArea_UsePack["Equip"][139008][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][139008][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][139008][1]["RewardItem"][1]["Id"] = 139008
	tTreasureArea_UsePack["Equip"][139008][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][139008][1]["Log"] = "0,0,0,0,18000160,2[0],139008,1"
-- 1洞9.5%
	tTreasureArea_UsePack["Equip"][139008][2] = {}
	tTreasureArea_UsePack["Equip"][139008][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][139008][2]["ItemChance"] = 950
	tTreasureArea_UsePack["Equip"][139008][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][139008][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][139008][2]["RewardItem"][1]["Id"] = 139008
	tTreasureArea_UsePack["Equip"][139008][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][139008][2]["Log"] = "0,0,0,0,18000160,2[1],139008,1"
-- 2洞0.5%
	tTreasureArea_UsePack["Equip"][139008][3] = {}
	tTreasureArea_UsePack["Equip"][139008][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][139008][3]["ItemChance"] = 50
	tTreasureArea_UsePack["Equip"][139008][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][139008][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][139008][3]["RewardItem"][1]["Id"] = 139008
	tTreasureArea_UsePack["Equip"][139008][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][139008][3]["Log"] = "0,0,0,0,18000160,2[2],139008,1"



--鸡心项链120028 4.00%
	tTreasureArea_UsePack["Equip"][120028] = {}
	tTreasureArea_UsePack["Equip"][120028]["ItemChanceSum"] = 10000
-- 无洞97%
	tTreasureArea_UsePack["Equip"][120028][1] = {}
	tTreasureArea_UsePack["Equip"][120028][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][120028][1]["ItemChance"] = 9700
	tTreasureArea_UsePack["Equip"][120028][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][120028][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][120028][1]["RewardItem"][1]["Id"] = 120028
	tTreasureArea_UsePack["Equip"][120028][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][120028][1]["Log"] = "0,0,0,0,18000160,2[0],120028,1"
-- 1洞2.9%
	tTreasureArea_UsePack["Equip"][120028][2] = {}
	tTreasureArea_UsePack["Equip"][120028][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][120028][2]["ItemChance"] = 290
	tTreasureArea_UsePack["Equip"][120028][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][120028][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][120028][2]["RewardItem"][1]["Id"] = 120028
	tTreasureArea_UsePack["Equip"][120028][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][120028][2]["Log"] = "0,0,0,0,18000160,2[1],120028,1"
-- 2洞0.1%
	tTreasureArea_UsePack["Equip"][120028][3] = {}
	tTreasureArea_UsePack["Equip"][120028][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][120028][3]["ItemChance"] = 10
	tTreasureArea_UsePack["Equip"][120028][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][120028][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][120028][3]["RewardItem"][1]["Id"] = 120028
	tTreasureArea_UsePack["Equip"][120028][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][120028][3]["Log"] = "0,0,0,0,18000160,2[2],120028,1"


--百花囊121028 2.00%
	tTreasureArea_UsePack["Equip"][121028] = {}
	tTreasureArea_UsePack["Equip"][121028]["ItemChanceSum"] = 10000
-- 无洞97%
	tTreasureArea_UsePack["Equip"][121028][1] = {}
	tTreasureArea_UsePack["Equip"][121028][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][121028][1]["ItemChance"] = 9700
	tTreasureArea_UsePack["Equip"][121028][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][121028][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][121028][1]["RewardItem"][1]["Id"] = 121028
	tTreasureArea_UsePack["Equip"][121028][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][121028][1]["Log"] = "0,0,0,0,18000160,2[0],121028,1"
-- 1洞2.9%
	tTreasureArea_UsePack["Equip"][121028][2] = {}
	tTreasureArea_UsePack["Equip"][121028][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][121028][2]["ItemChance"] = 290
	tTreasureArea_UsePack["Equip"][121028][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][121028][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][121028][2]["RewardItem"][1]["Id"] = 121028
	tTreasureArea_UsePack["Equip"][121028][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][121028][2]["Log"] = "0,0,0,0,18000160,2[1],121028,1"
-- 2洞0.1%
	tTreasureArea_UsePack["Equip"][121028][3] = {}
	tTreasureArea_UsePack["Equip"][121028][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][121028][3]["ItemChance"] = 10
	tTreasureArea_UsePack["Equip"][121028][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][121028][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][121028][3]["RewardItem"][1]["Id"] = 121028
	tTreasureArea_UsePack["Equip"][121028][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][121028][3]["Log"] = "0,0,0,0,18000160,2[2],121028,1"


--银戒150038 4.00%
	tTreasureArea_UsePack["Equip"][150038] = {}
	tTreasureArea_UsePack["Equip"][150038]["ItemChanceSum"] = 10000
-- 无洞97%
	tTreasureArea_UsePack["Equip"][150038][1] = {}
	tTreasureArea_UsePack["Equip"][150038][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][150038][1]["ItemChance"] = 9700
	tTreasureArea_UsePack["Equip"][150038][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][150038][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][150038][1]["RewardItem"][1]["Id"] = 150038
	tTreasureArea_UsePack["Equip"][150038][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][150038][1]["Log"] = "0,0,0,0,18000160,2[0],150038,1"
-- 1洞2.9%
	tTreasureArea_UsePack["Equip"][150038][2] = {}
	tTreasureArea_UsePack["Equip"][150038][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][150038][2]["ItemChance"] = 290
	tTreasureArea_UsePack["Equip"][150038][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][150038][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][150038][2]["RewardItem"][1]["Id"] = 150038
	tTreasureArea_UsePack["Equip"][150038][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][150038][2]["Log"] = "0,0,0,0,18000160,2[1],150038,1"
-- 2洞0.1%
	tTreasureArea_UsePack["Equip"][150038][3] = {}
	tTreasureArea_UsePack["Equip"][150038][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][150038][3]["ItemChance"] = 10
	tTreasureArea_UsePack["Equip"][150038][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][150038][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][150038][3]["RewardItem"][1]["Id"] = 150038
	tTreasureArea_UsePack["Equip"][150038][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][150038][3]["Log"] = "0,0,0,0,18000160,2[2],150038,1"


--桃木镯152018 2.00%
	tTreasureArea_UsePack["Equip"][152018] = {}
	tTreasureArea_UsePack["Equip"][152018]["ItemChanceSum"] = 10000
-- 无洞97%
	tTreasureArea_UsePack["Equip"][152018][1] = {}
	tTreasureArea_UsePack["Equip"][152018][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][152018][1]["ItemChance"] = 9700
	tTreasureArea_UsePack["Equip"][152018][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][152018][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][152018][1]["RewardItem"][1]["Id"] = 152018
	tTreasureArea_UsePack["Equip"][152018][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][152018][1]["Log"] = "0,0,0,0,18000160,2[0],152018,1"
-- 1洞2.9%
	tTreasureArea_UsePack["Equip"][152018][2] = {}
	tTreasureArea_UsePack["Equip"][152018][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][152018][2]["ItemChance"] = 290
	tTreasureArea_UsePack["Equip"][152018][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][152018][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][152018][2]["RewardItem"][1]["Id"] = 152018
	tTreasureArea_UsePack["Equip"][152018][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][152018][2]["Log"] = "0,0,0,0,18000160,2[1],152018,1"
-- 2洞0.1%
	tTreasureArea_UsePack["Equip"][152018][3] = {}
	tTreasureArea_UsePack["Equip"][152018][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][152018][3]["ItemChance"] = 10
	tTreasureArea_UsePack["Equip"][152018][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][152018][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][152018][3]["RewardItem"][1]["Id"] = 152018
	tTreasureArea_UsePack["Equip"][152018][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][152018][3]["Log"] = "0,0,0,0,18000160,2[2],152018,1"


--鹿皮靴160038 4.00%
	tTreasureArea_UsePack["Equip"][160038] = {}
	tTreasureArea_UsePack["Equip"][160038]["ItemChanceSum"] = 10000
-- 无洞97%
	tTreasureArea_UsePack["Equip"][160038][1] = {}
	tTreasureArea_UsePack["Equip"][160038][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][160038][1]["ItemChance"] = 9700
	tTreasureArea_UsePack["Equip"][160038][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][160038][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][160038][1]["RewardItem"][1]["Id"] = 160038
	tTreasureArea_UsePack["Equip"][160038][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][160038][1]["Log"] = "0,0,0,0,18000160,2[0],160038,1"
-- 1洞2.9%
	tTreasureArea_UsePack["Equip"][160038][2] = {}
	tTreasureArea_UsePack["Equip"][160038][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][160038][2]["ItemChance"] = 290
	tTreasureArea_UsePack["Equip"][160038][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][160038][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][160038][2]["RewardItem"][1]["Id"] = 160038
	tTreasureArea_UsePack["Equip"][160038][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][160038][2]["Log"] = "0,0,0,0,18000160,2[1],160038,1"
-- 2洞0.1%
	tTreasureArea_UsePack["Equip"][160038][3] = {}
	tTreasureArea_UsePack["Equip"][160038][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][160038][3]["ItemChance"] = 10
	tTreasureArea_UsePack["Equip"][160038][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][160038][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][160038][3]["RewardItem"][1]["Id"] = 160038
	tTreasureArea_UsePack["Equip"][160038][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][160038][3]["Log"] = "0,0,0,0,18000160,2[2],160038,1"



--修罗刀410028 3.00%
	tTreasureArea_UsePack["Equip"][410028] = {}
	tTreasureArea_UsePack["Equip"][410028]["ItemChanceSum"] = 10000
-- 无洞0.65
	tTreasureArea_UsePack["Equip"][410028][1] = {}
	tTreasureArea_UsePack["Equip"][410028][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][410028][1]["ItemChance"] = 6500
	tTreasureArea_UsePack["Equip"][410028][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][410028][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][410028][1]["RewardItem"][1]["Id"] = 410028
	tTreasureArea_UsePack["Equip"][410028][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][410028][1]["Log"] = "0,0,0,0,18000160,2[0],410028,1"
-- 1洞0.3
	tTreasureArea_UsePack["Equip"][410028][2] = {}
	tTreasureArea_UsePack["Equip"][410028][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][410028][2]["ItemChance"] = 3000
	tTreasureArea_UsePack["Equip"][410028][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][410028][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][410028][2]["RewardItem"][1]["Id"] = 410028
	tTreasureArea_UsePack["Equip"][410028][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][410028][2]["Log"] = "0,0,0,0,18000160,2[1],410028,1"
-- 2洞0.05
	tTreasureArea_UsePack["Equip"][410028][3] = {}
	tTreasureArea_UsePack["Equip"][410028][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][410028][3]["ItemChance"] = 500
	tTreasureArea_UsePack["Equip"][410028][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][410028][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][410028][3]["RewardItem"][1]["Id"] = 410028
	tTreasureArea_UsePack["Equip"][410028][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][410028][3]["Log"] = "0,0,0,0,18000160,2[2],410028,1"


--青冥剑420028 3.00%
	tTreasureArea_UsePack["Equip"][420028] = {}
	tTreasureArea_UsePack["Equip"][420028]["ItemChanceSum"] = 10000
-- 无洞0.65
	tTreasureArea_UsePack["Equip"][420028][1] = {}
	tTreasureArea_UsePack["Equip"][420028][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][420028][1]["ItemChance"] = 6500
	tTreasureArea_UsePack["Equip"][420028][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][420028][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][420028][1]["RewardItem"][1]["Id"] = 420028
	tTreasureArea_UsePack["Equip"][420028][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][420028][1]["Log"] = "0,0,0,0,18000160,2[0],420028,1"
-- 1洞0.3
	tTreasureArea_UsePack["Equip"][420028][2] = {}
	tTreasureArea_UsePack["Equip"][420028][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][420028][2]["ItemChance"] = 3000
	tTreasureArea_UsePack["Equip"][420028][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][420028][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][420028][2]["RewardItem"][1]["Id"] = 420028
	tTreasureArea_UsePack["Equip"][420028][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][420028][2]["Log"] = "0,0,0,0,18000160,2[1],420028,1"
-- 2洞0.05
	tTreasureArea_UsePack["Equip"][420028][3] = {}
	tTreasureArea_UsePack["Equip"][420028][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][420028][3]["ItemChance"] = 500
	tTreasureArea_UsePack["Equip"][420028][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][420028][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][420028][3]["RewardItem"][1]["Id"] = 420028
	tTreasureArea_UsePack["Equip"][420028][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][420028][3]["Log"] = "0,0,0,0,18000160,2[2],420028,1"


--驱邪剑421028 3.00%
	tTreasureArea_UsePack["Equip"][421028] = {}
	tTreasureArea_UsePack["Equip"][421028]["ItemChanceSum"] = 10000
-- 无洞0.65
	tTreasureArea_UsePack["Equip"][421028][1] = {}
	tTreasureArea_UsePack["Equip"][421028][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][421028][1]["ItemChance"] = 6500
	tTreasureArea_UsePack["Equip"][421028][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][421028][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][421028][1]["RewardItem"][1]["Id"] = 421028
	tTreasureArea_UsePack["Equip"][421028][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][421028][1]["Log"] = "0,0,0,0,18000160,2[0],421028,1"
-- 1洞0.3
	tTreasureArea_UsePack["Equip"][421028][2] = {}
	tTreasureArea_UsePack["Equip"][421028][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][421028][2]["ItemChance"] = 3000
	tTreasureArea_UsePack["Equip"][421028][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][421028][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][421028][2]["RewardItem"][1]["Id"] = 421028
	tTreasureArea_UsePack["Equip"][421028][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][421028][2]["Log"] = "0,0,0,0,18000160,2[1],421028,1"
-- 2洞0.05
	tTreasureArea_UsePack["Equip"][421028][3] = {}
	tTreasureArea_UsePack["Equip"][421028][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][421028][3]["ItemChance"] = 500
	tTreasureArea_UsePack["Equip"][421028][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][421028][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][421028][3]["RewardItem"][1]["Id"] = 421028
	tTreasureArea_UsePack["Equip"][421028][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][421028][3]["Log"] = "0,0,0,0,18000160,2[2],421028,1"


--短木棒480028 3.00%
	tTreasureArea_UsePack["Equip"][480028] = {}
	tTreasureArea_UsePack["Equip"][480028]["ItemChanceSum"] = 10000
-- 无洞0.65
	tTreasureArea_UsePack["Equip"][480028][1] = {}
	tTreasureArea_UsePack["Equip"][480028][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][480028][1]["ItemChance"] = 6500
	tTreasureArea_UsePack["Equip"][480028][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][480028][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][480028][1]["RewardItem"][1]["Id"] = 480028
	tTreasureArea_UsePack["Equip"][480028][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][480028][1]["Log"] = "0,0,0,0,18000160,2[0],480028,1"
-- 1洞0.3
	tTreasureArea_UsePack["Equip"][480028][2] = {}
	tTreasureArea_UsePack["Equip"][480028][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][480028][2]["ItemChance"] = 3000
	tTreasureArea_UsePack["Equip"][480028][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][480028][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][480028][2]["RewardItem"][1]["Id"] = 480028
	tTreasureArea_UsePack["Equip"][480028][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][480028][2]["Log"] = "0,0,0,0,18000160,2[1],480028,1"
-- 2洞0.05
	tTreasureArea_UsePack["Equip"][480028][3] = {}
	tTreasureArea_UsePack["Equip"][480028][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][480028][3]["ItemChance"] = 500
	tTreasureArea_UsePack["Equip"][480028][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][480028][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][480028][3]["RewardItem"][1]["Id"] = 480028
	tTreasureArea_UsePack["Equip"][480028][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][480028][3]["Log"] = "0,0,0,0,18000160,2[2],480028,1"


--猎弓500018 3.00%
	tTreasureArea_UsePack["Equip"][500018] = {}
	tTreasureArea_UsePack["Equip"][500018]["ItemChanceSum"] = 10000
-- 无洞0.65
	tTreasureArea_UsePack["Equip"][500018][1] = {}
	tTreasureArea_UsePack["Equip"][500018][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][500018][1]["ItemChance"] = 6500
	tTreasureArea_UsePack["Equip"][500018][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][500018][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][500018][1]["RewardItem"][1]["Id"] = 500018
	tTreasureArea_UsePack["Equip"][500018][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][500018][1]["Log"] = "0,0,0,0,18000160,2[0],500018,1"
-- 1洞0.3
	tTreasureArea_UsePack["Equip"][500018][2] = {}
	tTreasureArea_UsePack["Equip"][500018][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][500018][2]["ItemChance"] = 3000
	tTreasureArea_UsePack["Equip"][500018][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][500018][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][500018][2]["RewardItem"][1]["Id"] = 500018
	tTreasureArea_UsePack["Equip"][500018][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][500018][2]["Log"] = "0,0,0,0,18000160,2[1],500018,1"
-- 2洞0.05
	tTreasureArea_UsePack["Equip"][500018][3] = {}
	tTreasureArea_UsePack["Equip"][500018][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][500018][3]["ItemChance"] = 500
	tTreasureArea_UsePack["Equip"][500018][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][500018][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][500018][3]["RewardItem"][1]["Id"] = 500018
	tTreasureArea_UsePack["Equip"][500018][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][500018][3]["Log"] = "0,0,0,0,18000160,2[2],500018,1"


--武藏钩镰511028 3.00%
	tTreasureArea_UsePack["Equip"][511028] = {}
	tTreasureArea_UsePack["Equip"][511028]["ItemChanceSum"] = 10000
-- 无洞0.65
	tTreasureArea_UsePack["Equip"][511028][1] = {}
	tTreasureArea_UsePack["Equip"][511028][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][511028][1]["ItemChance"] = 6500
	tTreasureArea_UsePack["Equip"][511028][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][511028][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][511028][1]["RewardItem"][1]["Id"] = 511028
	tTreasureArea_UsePack["Equip"][511028][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][511028][1]["Log"] = "0,0,0,0,18000160,2[0],511028,1"
-- 1洞0.3
	tTreasureArea_UsePack["Equip"][511028][2] = {}
	tTreasureArea_UsePack["Equip"][511028][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][511028][2]["ItemChance"] = 3000
	tTreasureArea_UsePack["Equip"][511028][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][511028][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][511028][2]["RewardItem"][1]["Id"] = 511028
	tTreasureArea_UsePack["Equip"][511028][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][511028][2]["Log"] = "0,0,0,0,18000160,2[1],511028,1"
-- 2洞0.05
	tTreasureArea_UsePack["Equip"][511028][3] = {}
	tTreasureArea_UsePack["Equip"][511028][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][511028][3]["ItemChance"] = 500
	tTreasureArea_UsePack["Equip"][511028][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][511028][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][511028][3]["RewardItem"][1]["Id"] = 511028
	tTreasureArea_UsePack["Equip"][511028][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][511028][3]["Log"] = "0,0,0,0,18000160,2[2],511028,1"


--朱缨枪560028 3.00%
	tTreasureArea_UsePack["Equip"][560028] = {}
	tTreasureArea_UsePack["Equip"][560028]["ItemChanceSum"] = 10000
-- 无洞0.65
	tTreasureArea_UsePack["Equip"][560028][1] = {}
	tTreasureArea_UsePack["Equip"][560028][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][560028][1]["ItemChance"] = 6500
	tTreasureArea_UsePack["Equip"][560028][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][560028][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][560028][1]["RewardItem"][1]["Id"] = 560028
	tTreasureArea_UsePack["Equip"][560028][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][560028][1]["Log"] = "0,0,0,0,18000160,2[0],560028,1"
-- 1洞0.3
	tTreasureArea_UsePack["Equip"][560028][2] = {}
	tTreasureArea_UsePack["Equip"][560028][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][560028][2]["ItemChance"] = 3000
	tTreasureArea_UsePack["Equip"][560028][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][560028][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][560028][2]["RewardItem"][1]["Id"] = 560028
	tTreasureArea_UsePack["Equip"][560028][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][560028][2]["Log"] = "0,0,0,0,18000160,2[1],560028,1"
-- 2洞0.05
	tTreasureArea_UsePack["Equip"][560028][3] = {}
	tTreasureArea_UsePack["Equip"][560028][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][560028][3]["ItemChance"] = 500
	tTreasureArea_UsePack["Equip"][560028][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][560028][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][560028][3]["RewardItem"][1]["Id"] = 560028
	tTreasureArea_UsePack["Equip"][560028][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][560028][3]["Log"] = "0,0,0,0,18000160,2[2],560028,1"


--蜡木棍561028 3.00%
	tTreasureArea_UsePack["Equip"][561028] = {}
	tTreasureArea_UsePack["Equip"][561028]["ItemChanceSum"] = 10000
-- 无洞0.65
	tTreasureArea_UsePack["Equip"][561028][1] = {}
	tTreasureArea_UsePack["Equip"][561028][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][561028][1]["ItemChance"] = 6500
	tTreasureArea_UsePack["Equip"][561028][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][561028][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][561028][1]["RewardItem"][1]["Id"] = 561028
	tTreasureArea_UsePack["Equip"][561028][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][561028][1]["Log"] = "0,0,0,0,18000160,2[0],561028,1"
-- 1洞0.3
	tTreasureArea_UsePack["Equip"][561028][2] = {}
	tTreasureArea_UsePack["Equip"][561028][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][561028][2]["ItemChance"] = 3000
	tTreasureArea_UsePack["Equip"][561028][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][561028][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][561028][2]["RewardItem"][1]["Id"] = 561028
	tTreasureArea_UsePack["Equip"][561028][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][561028][2]["Log"] = "0,0,0,0,18000160,2[1],561028,1"
-- 2洞0.05
	tTreasureArea_UsePack["Equip"][561028][3] = {}
	tTreasureArea_UsePack["Equip"][561028][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][561028][3]["ItemChance"] = 500
	tTreasureArea_UsePack["Equip"][561028][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][561028][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][561028][3]["RewardItem"][1]["Id"] = 561028
	tTreasureArea_UsePack["Equip"][561028][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][561028][3]["Log"] = "0,0,0,0,18000160,2[2],561028,1"


--精钢切601028 3.00%
	tTreasureArea_UsePack["Equip"][601028] = {}
	tTreasureArea_UsePack["Equip"][601028]["ItemChanceSum"] = 10000
-- 无洞0.65
	tTreasureArea_UsePack["Equip"][601028][1] = {}
	tTreasureArea_UsePack["Equip"][601028][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][601028][1]["ItemChance"] = 6500
	tTreasureArea_UsePack["Equip"][601028][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][601028][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][601028][1]["RewardItem"][1]["Id"] = 601028
	tTreasureArea_UsePack["Equip"][601028][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][601028][1]["Log"] = "0,0,0,0,18000160,2[0],601028,1"
-- 1洞0.3
	tTreasureArea_UsePack["Equip"][601028][2] = {}
	tTreasureArea_UsePack["Equip"][601028][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][601028][2]["ItemChance"] = 3000
	tTreasureArea_UsePack["Equip"][601028][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][601028][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][601028][2]["RewardItem"][1]["Id"] = 601028
	tTreasureArea_UsePack["Equip"][601028][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][601028][2]["Log"] = "0,0,0,0,18000160,2[1],601028,1"
-- 2洞0.05
	tTreasureArea_UsePack["Equip"][601028][3] = {}
	tTreasureArea_UsePack["Equip"][601028][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][601028][3]["ItemChance"] = 500
	tTreasureArea_UsePack["Equip"][601028][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][601028][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][601028][3]["RewardItem"][1]["Id"] = 601028
	tTreasureArea_UsePack["Equip"][601028][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][601028][3]["Log"] = "0,0,0,0,18000160,2[2],601028,1"


--金蝉念珠610028 3.00%
	tTreasureArea_UsePack["Equip"][610028] = {}
	tTreasureArea_UsePack["Equip"][610028]["ItemChanceSum"] = 10000
-- 无洞0.65
	tTreasureArea_UsePack["Equip"][610028][1] = {}
	tTreasureArea_UsePack["Equip"][610028][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][610028][1]["ItemChance"] = 6500
	tTreasureArea_UsePack["Equip"][610028][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][610028][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][610028][1]["RewardItem"][1]["Id"] = 610028
	tTreasureArea_UsePack["Equip"][610028][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][610028][1]["Log"] = "0,0,0,0,18000160,2[0],610028,1"
-- 1洞0.3
	tTreasureArea_UsePack["Equip"][610028][2] = {}
	tTreasureArea_UsePack["Equip"][610028][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][610028][2]["ItemChance"] = 3000
	tTreasureArea_UsePack["Equip"][610028][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][610028][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][610028][2]["RewardItem"][1]["Id"] = 610028
	tTreasureArea_UsePack["Equip"][610028][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][610028][2]["Log"] = "0,0,0,0,18000160,2[1],610028,1"
-- 2洞0.05
	tTreasureArea_UsePack["Equip"][610028][3] = {}
	tTreasureArea_UsePack["Equip"][610028][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][610028][3]["ItemChance"] = 500
	tTreasureArea_UsePack["Equip"][610028][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][610028][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][610028][3]["RewardItem"][1]["Id"] = 610028
	tTreasureArea_UsePack["Equip"][610028][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][610028][3]["Log"] = "0,0,0,0,18000160,2[2],610028,1"


--勇者佩剑611028 3.00%
	tTreasureArea_UsePack["Equip"][611028] = {}
	tTreasureArea_UsePack["Equip"][611028]["ItemChanceSum"] = 10000
-- 无洞0.65
	tTreasureArea_UsePack["Equip"][611028][1] = {}
	tTreasureArea_UsePack["Equip"][611028][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][611028][1]["ItemChance"] = 6500
	tTreasureArea_UsePack["Equip"][611028][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][611028][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][611028][1]["RewardItem"][1]["Id"] = 611028
	tTreasureArea_UsePack["Equip"][611028][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][611028][1]["Log"] = "0,0,0,0,18000160,2[0],611028,1"
-- 1洞0.3
	tTreasureArea_UsePack["Equip"][611028][2] = {}
	tTreasureArea_UsePack["Equip"][611028][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][611028][2]["ItemChance"] = 3000
	tTreasureArea_UsePack["Equip"][611028][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][611028][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][611028][2]["RewardItem"][1]["Id"] = 611028
	tTreasureArea_UsePack["Equip"][611028][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][611028][2]["Log"] = "0,0,0,0,18000160,2[1],611028,1"
-- 2洞0.05
	tTreasureArea_UsePack["Equip"][611028][3] = {}
	tTreasureArea_UsePack["Equip"][611028][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][611028][3]["ItemChance"] = 500
	tTreasureArea_UsePack["Equip"][611028][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][611028][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][611028][3]["RewardItem"][1]["Id"] = 611028
	tTreasureArea_UsePack["Equip"][611028][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][611028][3]["Log"] = "0,0,0,0,18000160,2[2],611028,1"


--中级火枪612028 3.00%
	tTreasureArea_UsePack["Equip"][612028] = {}
	tTreasureArea_UsePack["Equip"][612028]["ItemChanceSum"] = 10000
-- 无洞0.65
	tTreasureArea_UsePack["Equip"][612028][1] = {}
	tTreasureArea_UsePack["Equip"][612028][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][612028][1]["ItemChance"] = 6500
	tTreasureArea_UsePack["Equip"][612028][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][612028][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][612028][1]["RewardItem"][1]["Id"] = 612028
	tTreasureArea_UsePack["Equip"][612028][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][612028][1]["Log"] = "0,0,0,0,18000160,2[0],612028,1"
-- 1洞0.3
	tTreasureArea_UsePack["Equip"][612028][2] = {}
	tTreasureArea_UsePack["Equip"][612028][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][612028][2]["ItemChance"] = 3000
	tTreasureArea_UsePack["Equip"][612028][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][612028][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][612028][2]["RewardItem"][1]["Id"] = 612028
	tTreasureArea_UsePack["Equip"][612028][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][612028][2]["Log"] = "0,0,0,0,18000160,2[1],612028,1"
-- 2洞0.05
	tTreasureArea_UsePack["Equip"][612028][3] = {}
	tTreasureArea_UsePack["Equip"][612028][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][612028][3]["ItemChance"] = 500
	tTreasureArea_UsePack["Equip"][612028][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][612028][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][612028][3]["RewardItem"][1]["Id"] = 612028
	tTreasureArea_UsePack["Equip"][612028][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][612028][3]["Log"] = "0,0,0,0,18000160,2[2],612028,1"


--狼牙飞刀613018 3.00%
	tTreasureArea_UsePack["Equip"][613018] = {}
	tTreasureArea_UsePack["Equip"][613018]["ItemChanceSum"] = 10000
-- 无洞0.65
	tTreasureArea_UsePack["Equip"][613018][1] = {}
	tTreasureArea_UsePack["Equip"][613018][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][613018][1]["ItemChance"] = 6500
	tTreasureArea_UsePack["Equip"][613018][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][613018][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][613018][1]["RewardItem"][1]["Id"] = 613018
	tTreasureArea_UsePack["Equip"][613018][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][613018][1]["Log"] = "0,0,0,0,18000160,2[0],613018,1"
-- 1洞0.3
	tTreasureArea_UsePack["Equip"][613018][2] = {}
	tTreasureArea_UsePack["Equip"][613018][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][613018][2]["ItemChance"] = 3000
	tTreasureArea_UsePack["Equip"][613018][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][613018][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][613018][2]["RewardItem"][1]["Id"] = 613018
	tTreasureArea_UsePack["Equip"][613018][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][613018][2]["Log"] = "0,0,0,0,18000160,2[1],613018,1"
-- 2洞0.05
	tTreasureArea_UsePack["Equip"][613018][3] = {}
	tTreasureArea_UsePack["Equip"][613018][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][613018][3]["ItemChance"] = 500
	tTreasureArea_UsePack["Equip"][613018][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][613018][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][613018][3]["RewardItem"][1]["Id"] = 613018
	tTreasureArea_UsePack["Equip"][613018][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][613018][3]["Log"] = "0,0,0,0,18000160,2[2],613018,1"


--枣木双截棍617028 3.00%
	tTreasureArea_UsePack["Equip"][617028] = {}
	tTreasureArea_UsePack["Equip"][617028]["ItemChanceSum"] = 10000
-- 无洞0.65
	tTreasureArea_UsePack["Equip"][617028][1] = {}
	tTreasureArea_UsePack["Equip"][617028][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][617028][1]["ItemChance"] = 6500
	tTreasureArea_UsePack["Equip"][617028][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][617028][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][617028][1]["RewardItem"][1]["Id"] = 617028
	tTreasureArea_UsePack["Equip"][617028][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][617028][1]["Log"] = "0,0,0,0,18000160,2[0],617028,1"
-- 1洞0.3
	tTreasureArea_UsePack["Equip"][617028][2] = {}
	tTreasureArea_UsePack["Equip"][617028][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][617028][2]["ItemChance"] = 3000
	tTreasureArea_UsePack["Equip"][617028][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][617028][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][617028][2]["RewardItem"][1]["Id"] = 617028
	tTreasureArea_UsePack["Equip"][617028][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][617028][2]["Log"] = "0,0,0,0,18000160,2[1],617028,1"
-- 2洞0.05
	tTreasureArea_UsePack["Equip"][617028][3] = {}
	tTreasureArea_UsePack["Equip"][617028][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][617028][3]["ItemChance"] = 500
	tTreasureArea_UsePack["Equip"][617028][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][617028][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][617028][3]["RewardItem"][1]["Id"] = 617028
	tTreasureArea_UsePack["Equip"][617028][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][617028][3]["Log"] = "0,0,0,0,18000160,2[2],617028,1"


--苍之怒焰624028 3.00%
	tTreasureArea_UsePack["Equip"][624028] = {}
	tTreasureArea_UsePack["Equip"][624028]["ItemChanceSum"] = 10000
-- 无洞0.65
	tTreasureArea_UsePack["Equip"][624028][1] = {}
	tTreasureArea_UsePack["Equip"][624028][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][624028][1]["ItemChance"] = 6500
	tTreasureArea_UsePack["Equip"][624028][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][624028][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][624028][1]["RewardItem"][1]["Id"] = 624028
	tTreasureArea_UsePack["Equip"][624028][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][624028][1]["Log"] = "0,0,0,0,18000160,2[0],624028,1"
-- 1洞0.3
	tTreasureArea_UsePack["Equip"][624028][2] = {}
	tTreasureArea_UsePack["Equip"][624028][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][624028][2]["ItemChance"] = 3000
	tTreasureArea_UsePack["Equip"][624028][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][624028][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][624028][2]["RewardItem"][1]["Id"] = 624028
	tTreasureArea_UsePack["Equip"][624028][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][624028][2]["Log"] = "0,0,0,0,18000160,2[1],624028,1"
-- 2洞0.05
	tTreasureArea_UsePack["Equip"][624028][3] = {}
	tTreasureArea_UsePack["Equip"][624028][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][624028][3]["ItemChance"] = 500
	tTreasureArea_UsePack["Equip"][624028][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][624028][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][624028][3]["RewardItem"][1]["Id"] = 624028
	tTreasureArea_UsePack["Equip"][624028][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][624028][3]["Log"] = "0,0,0,0,18000160,2[2],624028,1"


--傲雪凌霜扇626028 3.00%
	tTreasureArea_UsePack["Equip"][626028] = {}
	tTreasureArea_UsePack["Equip"][626028]["ItemChanceSum"] = 10000
-- 无洞0.65
	tTreasureArea_UsePack["Equip"][626028][1] = {}
	tTreasureArea_UsePack["Equip"][626028][1]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][626028][1]["ItemChance"] = 6500
	tTreasureArea_UsePack["Equip"][626028][1]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][626028][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][626028][1]["RewardItem"][1]["Id"] = 626028
	tTreasureArea_UsePack["Equip"][626028][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["Equip"][626028][1]["Log"] = "0,0,0,0,18000160,2[0],626028,1"
-- 1洞0.3
	tTreasureArea_UsePack["Equip"][626028][2] = {}
	tTreasureArea_UsePack["Equip"][626028][2]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][626028][2]["ItemChance"] = 3000
	tTreasureArea_UsePack["Equip"][626028][2]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][626028][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][626028][2]["RewardItem"][1]["Id"] = 626028
	tTreasureArea_UsePack["Equip"][626028][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tTreasureArea_UsePack["Equip"][626028][2]["Log"] = "0,0,0,0,18000160,2[1],626028,1"
-- 2洞0.05
	tTreasureArea_UsePack["Equip"][626028][3] = {}
	tTreasureArea_UsePack["Equip"][626028][3]["RandomItemChanceType"] = 2
	tTreasureArea_UsePack["Equip"][626028][3]["ItemChance"] = 500
	tTreasureArea_UsePack["Equip"][626028][3]["RewardItem"] = {}
	tTreasureArea_UsePack["Equip"][626028][3]["RewardItem"][1] = {}
	tTreasureArea_UsePack["Equip"][626028][3]["RewardItem"][1]["Id"] = 626028
	tTreasureArea_UsePack["Equip"][626028][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
	tTreasureArea_UsePack["Equip"][626028][3]["Log"] = "0,0,0,0,18000160,2[2],626028,1"

	-- 出全服公告标志
	tTreasureArea_UsePack["Equip"][111008][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][112008][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][113008][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][114008][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][117008][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][123008][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][141008][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][142008][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][144008][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][145008][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][118008][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][143008][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][148008][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][170008][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][101008][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][130008][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][131008][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][133008][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][134008][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][135008][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][136008][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][138008][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][139008][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][120028][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][121028][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][150038][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][152018][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][160038][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][410028][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][420028][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][421028][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][480028][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][500018][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][511028][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][560028][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][561028][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][601028][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][610028][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][611028][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][612028][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][613018][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][617028][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][624028][3]["Broad"] = 1
	tTreasureArea_UsePack["Equip"][626028][3]["Broad"] = 1	
	
	-- 4031301  夺魂  换  4031001 追命
	tTreasureArea_UsePack["ExchangeShenWen"] = {}
	tTreasureArea_UsePack["ExchangeShenWen"][4031301] = {}
	-- 非赠换非赠
	tTreasureArea_UsePack["ExchangeShenWen"][4031301][1] = {}
	tTreasureArea_UsePack["ExchangeShenWen"][4031301][1]["RewardItem"] = {}
	tTreasureArea_UsePack["ExchangeShenWen"][4031301][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["ExchangeShenWen"][4031301][1]["RewardItem"][1]["Id"] = 4031001
	tTreasureArea_UsePack["ExchangeShenWen"][4031301][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["ExchangeShenWen"][4031301][1]["Log"] = "0,0,4031301,1,18000160,2,4031001,1"
	tTreasureArea_UsePack["ExchangeShenWen"][4031301][1]["RewardNoNeedTip"] = 1
	-- 赠换赠
	tTreasureArea_UsePack["ExchangeShenWen"][4031301][2] = {}
	tTreasureArea_UsePack["ExchangeShenWen"][4031301][2]["RewardItem"] = {}
	tTreasureArea_UsePack["ExchangeShenWen"][4031301][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["ExchangeShenWen"][4031301][2]["RewardItem"][1]["Id"] = 4031001
	tTreasureArea_UsePack["ExchangeShenWen"][4031301][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tTreasureArea_UsePack["ExchangeShenWen"][4031301][2]["Log"] = "0,0,4031301,1,18000160,2[3],4031001,1"
	tTreasureArea_UsePack["ExchangeShenWen"][4031301][2]["RewardNoNeedTip"] = 1
	
	-- 4031001 追命  换  4031301  夺魂
	tTreasureArea_UsePack["ExchangeShenWen"][4031001] = {}
	-- 非赠换非赠
	tTreasureArea_UsePack["ExchangeShenWen"][4031001][1] = {}
	tTreasureArea_UsePack["ExchangeShenWen"][4031001][1]["RewardItem"] = {}
	tTreasureArea_UsePack["ExchangeShenWen"][4031001][1]["RewardItem"][1] = {}
	tTreasureArea_UsePack["ExchangeShenWen"][4031001][1]["RewardItem"][1]["Id"] = 4031301
	tTreasureArea_UsePack["ExchangeShenWen"][4031001][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureArea_UsePack["ExchangeShenWen"][4031001][1]["Log"] = "0,0,4031001,1,18000160,2,4031301,1"
	tTreasureArea_UsePack["ExchangeShenWen"][4031001][1]["RewardNoNeedTip"] = 1
	-- 赠换赠
	tTreasureArea_UsePack["ExchangeShenWen"][4031001][2] = {}
	tTreasureArea_UsePack["ExchangeShenWen"][4031001][2]["RewardItem"] = {}
	tTreasureArea_UsePack["ExchangeShenWen"][4031001][2]["RewardItem"][1] = {}
	tTreasureArea_UsePack["ExchangeShenWen"][4031001][2]["RewardItem"][1]["Id"] = 4031301
	tTreasureArea_UsePack["ExchangeShenWen"][4031001][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tTreasureArea_UsePack["ExchangeShenWen"][4031001][2]["Log"] = "0,0,4031001,1,18000160,2[3],4031301,1"
	tTreasureArea_UsePack["ExchangeShenWen"][4031001][2]["RewardNoNeedTip"] = 1
	
-- 随机副本类型
local tTreasureArea_MagicWorld = {}
	-- 副本限制时间
	tTreasureArea_MagicWorld["Time"] = 20
	-- 使用幻界玄旗 随机出现一种秘境
	tTreasureArea_MagicWorld["BrushMapType"] = {}
	tTreasureArea_MagicWorld["BrushMapType"][1] = {}
	tTreasureArea_MagicWorld["BrushMapType"][1]["ItemChanceSum"] = 30000
	-- 流星秘境
	tTreasureArea_MagicWorld["BrushMapType"][1][1] = {}
	tTreasureArea_MagicWorld["BrushMapType"][1][1]["RandomItemChanceType"] = 2
	tTreasureArea_MagicWorld["BrushMapType"][1][1]["ItemChance"] = 0
	tTreasureArea_MagicWorld["BrushMapType"][1][1]["Item_1"] = 1
	-- 经验秘境
	tTreasureArea_MagicWorld["BrushMapType"][1][2] = {}
	tTreasureArea_MagicWorld["BrushMapType"][1][2]["RandomItemChanceType"] = 2
	tTreasureArea_MagicWorld["BrushMapType"][1][2]["ItemChance"] = 0
	tTreasureArea_MagicWorld["BrushMapType"][1][2]["Item_1"] = 2
	-- 财富秘境
	tTreasureArea_MagicWorld["BrushMapType"][1][3] = {}
	tTreasureArea_MagicWorld["BrushMapType"][1][3]["RandomItemChanceType"] = 2
	tTreasureArea_MagicWorld["BrushMapType"][1][3]["ItemChance"] = 0
	tTreasureArea_MagicWorld["BrushMapType"][1][3]["Item_1"] = 3
	-- 赤练秘境
	tTreasureArea_MagicWorld["BrushMapType"][1][4] = {}
	tTreasureArea_MagicWorld["BrushMapType"][1][4]["RandomItemChanceType"] = 2
	tTreasureArea_MagicWorld["BrushMapType"][1][4]["ItemChance"] = 10000
	tTreasureArea_MagicWorld["BrushMapType"][1][4]["Item_1"] = 4
	-- 星陨秘境
	tTreasureArea_MagicWorld["BrushMapType"][1][5] = {}
	tTreasureArea_MagicWorld["BrushMapType"][1][5]["RandomItemChanceType"] = 2
	tTreasureArea_MagicWorld["BrushMapType"][1][5]["ItemChance"] = 10000
	tTreasureArea_MagicWorld["BrushMapType"][1][5]["Item_1"] = 5
	-- 气力秘境
	tTreasureArea_MagicWorld["BrushMapType"][1][6] = {}
	tTreasureArea_MagicWorld["BrushMapType"][1][6]["RandomItemChanceType"] = 2
	tTreasureArea_MagicWorld["BrushMapType"][1][6]["ItemChance"] = 10000
	tTreasureArea_MagicWorld["BrushMapType"][1][6]["Item_1"] = 6
	-- 对应的怪物id
	tTreasureArea_MagicWorld["MonsterType"] = {}
	tTreasureArea_MagicWorld["MonsterType"][1] = 4714		-- 流星圣犼
	tTreasureArea_MagicWorld["MonsterType"][2] = 4715        -- 经验圣犼 
	tTreasureArea_MagicWorld["MonsterType"][3] = 4716        -- 财富圣犼 
	tTreasureArea_MagicWorld["MonsterType"][4] = 4717        -- 赤练圣犼 
	tTreasureArea_MagicWorld["MonsterType"][5] = 4718        -- 星陨圣犼 
	tTreasureArea_MagicWorld["MonsterType"][6] = 4719        -- 气力圣犼 
	-- 对应的怪物genid
	tTreasureArea_MagicWorld["GenId"] = {}
	tTreasureArea_MagicWorld["GenId"][4714] = 24264			-- 流星圣犼
	tTreasureArea_MagicWorld["GenId"][4715] = 24265        -- 经验圣犼 
	tTreasureArea_MagicWorld["GenId"][4716] = 24266        -- 财富圣犼 
	tTreasureArea_MagicWorld["GenId"][4717] = 24267        -- 赤练圣犼 
	tTreasureArea_MagicWorld["GenId"][4718] = 24268        -- 星陨圣犼 
	tTreasureArea_MagicWorld["GenId"][4719] = 24269        -- 气力圣犼 
	-- 怪物掉落
	tTreasureArea_MagicWorld["MonsDrop"] = {}
	tTreasureArea_MagicWorld["MonsDrop"][4714] = 1088001		-- 流星圣犼
	tTreasureArea_MagicWorld["MonsDrop"][4715] = 3006531      -- 经验圣犼
	tTreasureArea_MagicWorld["MonsDrop"][4716] = 10000          -- 财富圣犼  直接掉金币
	tTreasureArea_MagicWorld["MonsDrop"][4717] = 3301223      -- 赤练圣犼
	tTreasureArea_MagicWorld["MonsDrop"][4718] = 3307272      -- 星陨圣犼
	tTreasureArea_MagicWorld["MonsDrop"][4719] = 3304317      -- 气力圣犼

local tTreasureArea_GhostTask = {}
	-- 修行值
	tTreasureArea_GhostTask["Cul"] = {}
	tTreasureArea_GhostTask["Cul"][3976] = 100
	tTreasureArea_GhostTask["Cul"][3977] = 150
	tTreasureArea_GhostTask["Cul"][3978] = 200
	-- 魂值
	tTreasureArea_GhostTask["Ghost"] = {}
	tTreasureArea_GhostTask["Ghost"][3976] = 700
	tTreasureArea_GhostTask["Ghost"][3977] = 700
	tTreasureArea_GhostTask["Ghost"][3978] = 1500
	
	tTreasureArea_GhostTask["TaskId"] = 2375
	tTreasureArea_GhostTask["EventType"] = 108
	tTreasureArea_GhostTask["DataType"] = 57
	
	tTreasureArea_GhostTask["ItemId"] = {}
	tTreasureArea_GhostTask["ItemId"][1] = 729611
	tTreasureArea_GhostTask["ItemId"][2] = 729612
	tTreasureArea_GhostTask["ItemId"][3] = 729613
	tTreasureArea_GhostTask["ItemId"][4] = 729614
	tTreasureArea_GhostTask["ItemId"][5] = 729703
	
	tTreasureArea_GhostTask["Limit"] = {}
	tTreasureArea_GhostTask["Limit"][729611] = 2500
	tTreasureArea_GhostTask["Limit"][729612] = 2000
	tTreasureArea_GhostTask["Limit"][729613] = 1500
	tTreasureArea_GhostTask["Limit"][729614] = 1000
	tTreasureArea_GhostTask["Limit"][729703] = 500
	
local tTreasureArea_Log = {}
	-- 发送邮件log
	tTreasureArea_Log["SendMail"] = "0,0,0,0,18000160,1[%d],%d,%d"
	tTreasureArea_Log["InsertBag"] = "0,0,0,0,18000160,2,%d,1"
	tTreasureArea_Log["TeamReward"] = "0,0,0,0,18000160,2,6,%d"
	-- 付费去找boss
	tTreasureArea_Log["FindBossPay"] = "1,2,0,0,18000160,2,0,0"
	-- 使用召唤券召唤小boss
	tTreasureArea_Log["ShowBoss"] = "0,0,3303972,1,18000160,2,%d,0"
	-- 使用气运灵符获得气运状态
	tTreasureArea_Log["GetPrecious"] = "0,0,0,0,18000160,2[%d],0,0"
	-- 上交神明玉
	tTreasureArea_Log["HandInJade"] = "0,0,%d,%d,18000160,2[10],0,0"
	-- 使用药水
	tTreasureArea_Log["Medicine"] = "0,0,0,0,18000160,3,%d,1"
	-- 使用物品
	tTreasureArea_Log["UseItem"] = "0,0,0,0,18000160,2,%d,1"
	--使用神器礼包
	tTreasureArea_Log["UseAftiaItem"] = "0,0,%d,0,12001490,2,%s,1"
	
local tTreasureArea_Medicine = {}
	tTreasureArea_Medicine["Secs"] = 80
	tTreasureArea_Medicine["Secs1"] = 600
	-- 3304960	古神灵境免疫药水	
	tTreasureArea_Medicine[3304960] = {}
	tTreasureArea_Medicine[3304960]["StatusType"] = {54}
	tTreasureArea_Medicine[3304960]["StatusPower"] = {200}
	-- 3307099 古神灵境粉碎药水
	tTreasureArea_Medicine[3307099] = {}
	tTreasureArea_Medicine[3307099]["StatusType"] = {136}
	tTreasureArea_Medicine[3307099]["StatusPower"] = {400}

	local tTreasureArea_AttributeNum = {}
	tTreasureArea_AttributeNum[1] = {}
	tTreasureArea_AttributeNum[1][1] = {}
	tTreasureArea_AttributeNum[1][1]["ItemChanceSum"] = 10000
	tTreasureArea_AttributeNum[1][1][1] = {}
	tTreasureArea_AttributeNum[1][1][1]["RandomItemChanceType"] = 2
	tTreasureArea_AttributeNum[1][1][1]["ItemChance"] = 6500
	tTreasureArea_AttributeNum[1][1][1]["Item_1"] = 3 
	tTreasureArea_AttributeNum[1][1][2] = {}
	tTreasureArea_AttributeNum[1][1][2]["RandomItemChanceType"] = 2
	tTreasureArea_AttributeNum[1][1][2]["ItemChance"] = 3000
	tTreasureArea_AttributeNum[1][1][2]["Item_1"] = 4 
	tTreasureArea_AttributeNum[1][1][3] = {}
	tTreasureArea_AttributeNum[1][1][3]["RandomItemChanceType"] = 2
	tTreasureArea_AttributeNum[1][1][3]["ItemChance"] = 500
	tTreasureArea_AttributeNum[1][1][3]["Item_1"] = 5 
	
	local tTreasureArea_GoldAttributeNum = {}
	
	tTreasureArea_GoldAttributeNum[1] = {}
	-- tTreasureArea_GoldAttributeNum[1]["GivenNum"] = 0
	-- tTreasureArea_GoldAttributeNum[1]["NeedEmoney"] = 50
	tTreasureArea_GoldAttributeNum[1][5] = {} --此处5代表随机出来的属性条数
	tTreasureArea_GoldAttributeNum[1][5]["ItemChanceSum"] = 10000
	tTreasureArea_GoldAttributeNum[1][5][1] = {}
	tTreasureArea_GoldAttributeNum[1][5][1]["RandomItemChanceType"] = 2
	tTreasureArea_GoldAttributeNum[1][5][1]["ItemChance"] = 500
	tTreasureArea_GoldAttributeNum[1][5][1]["Item_1"] = 5 
	tTreasureArea_GoldAttributeNum[1][5][2] = {}
	tTreasureArea_GoldAttributeNum[1][5][2]["RandomItemChanceType"] = 2
	tTreasureArea_GoldAttributeNum[1][5][2]["ItemChance"] = 3000
	tTreasureArea_GoldAttributeNum[1][5][2]["Item_1"] = 4 
	tTreasureArea_GoldAttributeNum[1][5][3] = {}
	tTreasureArea_GoldAttributeNum[1][5][3]["RandomItemChanceType"] = 2
	tTreasureArea_GoldAttributeNum[1][5][3]["ItemChance"] = 6500
	tTreasureArea_GoldAttributeNum[1][5][3]["Item_1"] = 3 

	tTreasureArea_GoldAttributeNum[1][4] = {} --此处4代表随机出来的属性条数
	tTreasureArea_GoldAttributeNum[1][4]["ItemChanceSum"] = 10000
	tTreasureArea_GoldAttributeNum[1][4][1] = {}
	tTreasureArea_GoldAttributeNum[1][4][1]["RandomItemChanceType"] = 2
	tTreasureArea_GoldAttributeNum[1][4][1]["ItemChance"] = 3000
	tTreasureArea_GoldAttributeNum[1][4][1]["Item_1"] = 4 
	tTreasureArea_GoldAttributeNum[1][4][2] = {}
	tTreasureArea_GoldAttributeNum[1][4][2]["RandomItemChanceType"] = 2
	tTreasureArea_GoldAttributeNum[1][4][2]["ItemChance"] = 7000
	tTreasureArea_GoldAttributeNum[1][4][2]["Item_1"] = 3 
	
	
	--豪华神器宝箱
	tTreasureArea_GoldAttributeNum[3322219] = {}
	tTreasureArea_GoldAttributeNum[3322219][5] = {} --此处5代表随机出来的属性条数
	tTreasureArea_GoldAttributeNum[3322219][5]["ItemChanceSum"] = 10000
	tTreasureArea_GoldAttributeNum[3322219][5][1] = {}
	tTreasureArea_GoldAttributeNum[3322219][5][1]["RandomItemChanceType"] = 2
	tTreasureArea_GoldAttributeNum[3322219][5][1]["ItemChance"] = 300
	tTreasureArea_GoldAttributeNum[3322219][5][1]["Item_1"] = 5 
	tTreasureArea_GoldAttributeNum[3322219][5][2] = {}
	tTreasureArea_GoldAttributeNum[3322219][5][2]["RandomItemChanceType"] = 2
	tTreasureArea_GoldAttributeNum[3322219][5][2]["ItemChance"] = 2700
	tTreasureArea_GoldAttributeNum[3322219][5][2]["Item_1"] = 4 
	tTreasureArea_GoldAttributeNum[3322219][5][3] = {}
	tTreasureArea_GoldAttributeNum[3322219][5][3]["RandomItemChanceType"] = 2
	tTreasureArea_GoldAttributeNum[3322219][5][3]["ItemChance"] = 7000
	tTreasureArea_GoldAttributeNum[3322219][5][3]["Item_1"] = 3 
	
	
	--使用级神器锻造图兑换5个神器源晶
	local TreasureArea_RewardItem = {}
	TreasureArea_RewardItem[3309970]={}
	TreasureArea_RewardItem[3309970][1]={}
	TreasureArea_RewardItem[3309970][1]["LogId"] = 10002434
	TreasureArea_RewardItem[3309970][1]["DeleteItem"] = {}
	TreasureArea_RewardItem[3309970][1]["DeleteItem"][1] = {}
	TreasureArea_RewardItem[3309970][1]["DeleteItem"][1]["Id"] = 3309970
	TreasureArea_RewardItem[3309970][1]["RewardItem"] = {}
	TreasureArea_RewardItem[3309970][1]["RewardItem"][1] = {}
	TreasureArea_RewardItem[3309970][1]["RewardItem"][1]["Id"] = 3306885
	TreasureArea_RewardItem[3309970][1]["RewardItem"][1]["Attr"] = "0 5"
	TreasureArea_RewardItem[3309970][1]["RewardEffect"] = {}
	TreasureArea_RewardItem[3309970][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	
	TreasureArea_RewardItem[3322219] = {}
	TreasureArea_RewardItem[3322219]["ItemId"] = {}
	TreasureArea_RewardItem[3322219]["ItemId"][1] = 4100001
	TreasureArea_RewardItem[3322219]["ItemId"][2] = 4100002
	TreasureArea_RewardItem[3322219]["ItemId"][3] = 4100003
	TreasureArea_RewardItem[3322219]["ItemId"][4] = 4100004
	TreasureArea_RewardItem[3322219]["ItemId"][5] = 4100005
	
	-- 随机礼包
	TreasureArea_RewardItem["RandomPack"] = {}
	-- 冥界诏令礼盒
	TreasureArea_RewardItem["RandomPack"][3303526] = {}
	TreasureArea_RewardItem["RandomPack"][3303526]["ItemChanceSum"] = 10000
	-- 冥界第1狱诏令
	TreasureArea_RewardItem["RandomPack"][3303526][1] = {} 
	TreasureArea_RewardItem["RandomPack"][3303526][1]["RandomItemChanceType"] = 2
	TreasureArea_RewardItem["RandomPack"][3303526][1]["ItemChance"] = 8480
	TreasureArea_RewardItem["RandomPack"][3303526][1]["RewardItem"] = {}
	TreasureArea_RewardItem["RandomPack"][3303526][1]["RewardItem"][1] = {}
	TreasureArea_RewardItem["RandomPack"][3303526][1]["RewardItem"][1]["Id"] = 3320186
	TreasureArea_RewardItem["RandomPack"][3303526][1]["RewardItem"][1]["Attr"] = "0 1"
	TreasureArea_RewardItem["RandomPack"][3303526][1]["RewardEffect"] = {}
	TreasureArea_RewardItem["RandomPack"][3303526][1]["RewardEffect"]["SzObj"] = "self"
	TreasureArea_RewardItem["RandomPack"][3303526][1]["RewardEffect"]["Effect"] = "zf2-e280"
	TreasureArea_RewardItem["RandomPack"][3303526][1]["RewardBroadCast"] = tTreasureArea_Text["Msg"]["GetToken"][1]
	-- 冥界第2狱诏令
	TreasureArea_RewardItem["RandomPack"][3303526][2] = {} 
	TreasureArea_RewardItem["RandomPack"][3303526][2]["RandomItemChanceType"] = 2
	TreasureArea_RewardItem["RandomPack"][3303526][2]["ItemChance"] = 1420
	TreasureArea_RewardItem["RandomPack"][3303526][2]["RewardItem"] = {}
	TreasureArea_RewardItem["RandomPack"][3303526][2]["RewardItem"][1] = {}
	TreasureArea_RewardItem["RandomPack"][3303526][2]["RewardItem"][1]["Id"] = 3320187
	TreasureArea_RewardItem["RandomPack"][3303526][2]["RewardItem"][1]["Attr"] = "0 1"
	TreasureArea_RewardItem["RandomPack"][3303526][2]["RewardEffect"] = {}
	TreasureArea_RewardItem["RandomPack"][3303526][2]["RewardEffect"]["SzObj"] = "self"
	TreasureArea_RewardItem["RandomPack"][3303526][2]["RewardEffect"]["Effect"] = "zf2-e280"
	TreasureArea_RewardItem["RandomPack"][3303526][2]["RewardBroadCast"] = tTreasureArea_Text["Msg"]["GetToken"][2]
	-- 冥界第3狱诏令
	TreasureArea_RewardItem["RandomPack"][3303526][3] = {} 
	TreasureArea_RewardItem["RandomPack"][3303526][3]["RandomItemChanceType"] = 2
	TreasureArea_RewardItem["RandomPack"][3303526][3]["ItemChance"] = 100
	TreasureArea_RewardItem["RandomPack"][3303526][3]["RewardItem"] = {}
	TreasureArea_RewardItem["RandomPack"][3303526][3]["RewardItem"][1] = {}
	TreasureArea_RewardItem["RandomPack"][3303526][3]["RewardItem"][1]["Id"] = 3320188
	TreasureArea_RewardItem["RandomPack"][3303526][3]["RewardItem"][1]["Attr"] = "0 1"
	TreasureArea_RewardItem["RandomPack"][3303526][3]["RewardEffect"] = {}
	TreasureArea_RewardItem["RandomPack"][3303526][3]["RewardEffect"]["SzObj"] = "self"
	TreasureArea_RewardItem["RandomPack"][3303526][3]["RewardEffect"]["Effect"] = "zf2-e280"
	TreasureArea_RewardItem["RandomPack"][3303526][3]["RewardBroadCast"] = tTreasureArea_Text["Msg"]["GetToken"][3]
	TreasureArea_RewardItem["RandomPack"][3303526]["LogId"] = 12001247
	TreasureArea_RewardItem["RandomPack"][3303526]["LogStep"] = "1[46]"
	
	
local tTreasureArea_Effect = {}
	tTreasureArea_Effect[1] = "self"
	tTreasureArea_Effect[2] = "angelwing"
	tTreasureArea_Effect[3] = "zf2-e128"
	
local tTreasureArea_AtrMonsterRank = {}
tTreasureArea_AtrMonsterRank["MonsterDrop"] = {}
tTreasureArea_AtrMonsterRank["MonsterDrop"][1] = {}
tTreasureArea_AtrMonsterRank["MonsterDrop"][1]["ItemChanceSum"] = 10000

tTreasureArea_AtrMonsterRank["MonsterDrop"][1][1] = {}
tTreasureArea_AtrMonsterRank["MonsterDrop"][1][1]["RandomItemChanceType"] = 2
tTreasureArea_AtrMonsterRank["MonsterDrop"][1][1]["ItemChance"] = 10
tTreasureArea_AtrMonsterRank["MonsterDrop"][1][1]["RewardItem"] = {}
tTreasureArea_AtrMonsterRank["MonsterDrop"][1][1]["RewardItem"][1] = {} 
tTreasureArea_AtrMonsterRank["MonsterDrop"][1][1]["RewardItem"][1]["Id"] = 3303972
tTreasureArea_AtrMonsterRank["MonsterDrop"][1][1]["RewardItem"][1]["Attr"] = "0 1 0 60 1"
tTreasureArea_AtrMonsterRank["MonsterDrop"][1][2] = {}
tTreasureArea_AtrMonsterRank["MonsterDrop"][1][2]["RandomItemChanceType"] = 2
tTreasureArea_AtrMonsterRank["MonsterDrop"][1][2]["ItemChance"] = 9990
tTreasureArea_AtrMonsterRank["MonsterDrop"][1][2]["RewardItem"] = {}

------------------------------------------------逻辑部分-------------------------------------------------
math.randomseed(os.time())

-- 等级判断
function TreasureArea_JudgeLevel(nUserId)
	local nLevel = tTreasureArea_Cont["Level"]
	local nMete = tTreasureArea_Cont["Metempsychosis"]
	if User_JudgeLevelAndMetempsychosis(nLevel,nMete,nUserId) then
		return true
	else
		return false
	end
end

-- function TreasureArea_FuHuo()
	-- local nUserId = Get_UserId()
	-- local nMapId = Get_UserMapId(nUserId)
	-- if nMapId == tTreasureArea_Cont["MapId"] and TreasureArea_JudgeLevel(nUserId) then
		-- -- 复活时候给玩家加10万血，20秒
		-- local nStatus = tTreasureArea_BUFF["Status"][2]	-- 增加100000点生命	20秒
		-- local nPower = tTreasureArea_BUFF["Num"][nStatus]
		-- if not User_ChkRoleStatus(nStatus,nUserId) then
			-- User_AddRoleStatus(nStatus,nPower,20,0,20,20,0,0,0,nUserId)
			-- User_AddLife(nPower,nUserId)
		-- end
	-- end
-- end

-- 杀人触发  添加幸运状态逻辑
function TreasureArea_KillPlayer(nUserId,nTargetId)
	-- 玩家死亡减层数，玩家杀人增层数。遵循先减层数再增层数的先后顺序
	-- 判断所在地图
	local nMapId = Get_UserMapId(nUserId)
	if nMapId == tTreasureArea_Cont["MapId"] and TreasureArea_JudgeLevel(nUserId) and TreasureArea_JudgeLevel(nTargetId) then
		local sTargetName = Get_UserName(nTargetId)
		local sKillerName = Get_UserName(nUserId)

		-- 新增霸主玩法
		-- 记录玩家战绩积分 在打宝区每次死亡会损失20%
		-- nTargetId
		local nEvent = tTreasureArea_Stc[11]["EventType"]
		local nType = tTreasureArea_Stc[11]["DataType"]
		
		-- 隔天重置
		if Task_StcInterval(nEvent,nType,1,4,nTargetId) then
			Task_SetStatistic(nEvent,nType,0,1,nTargetId)
			Task_SetStcTimestamp(nEvent,nType,0,nTargetId)
		end
		local nData = Get_UserStatisticValue(nEvent,nType,nTargetId)
		
		-- 限制进行掩码和记录排行的操作 时间
		if not (Sys_ChkDayTime(tTreasureArea_Cont["LimitTime"][3]) or Sys_ChkDayTime(tTreasureArea_Cont["LimitTime"][4])) then
			local nSetData = math.floor(nData*0.8)
			Task_SetStatistic(nEvent,nType,nSetData,1,nTargetId)
			Task_SetStcTimestamp(nEvent,nType,0,nTargetId)
			
			local nNewData = Get_UserStatisticValue(nEvent,nType,nTargetId)
			TreasureArea_SetRankList(nNewData,"Rank",nTargetId)
		end
		
		local nStatus = tTreasureArea_Cont["StatusType"]
		local nStatusTime = tTreasureArea_Cont["StatusTime"]
		local nPower = 0
		-- 取杀人者的层数
		if User_ChkRoleStatus(nStatus,nUserId) then
			nPower = Get_UserRoleStatusPower(nStatus,nUserId)
		end
		-- User_TalkChannel2005("1111111===" .. nPower,nUserId)
		
		-- 取被杀者的层数
		local nTargetPower  = 0
		if User_ChkRoleStatus(nStatus,nTargetId) then
			nTargetPower = Get_UserRoleStatusPower(nStatus,nTargetId)
		end
		-- User_TalkChannel2005("2222222===" .. nTargetPower,nTargetId)
		
		-- 是否仇人
		if User_CheckUserEnemy(nTargetId,nUserId) then  -- or User_CheckUserEnemy(nUserId,nTargetId)
			if nTargetPower <= 0 then
				if nPower >= 9 then
					User_AddRoleStatus(nStatus, 9, nStatusTime, 0, nStatusTime, nStatusTime, 0, 0, 0, nUserId)
					User_TalkChannel2005(string.format(tTreasureArea_Text["FullPower"],sTargetName),nUserId)
				else
					User_AddRoleStatus(nStatus, nPower + 1, nStatusTime, 0, nStatusTime, nStatusTime, 0, 0, 0, nUserId)
					User_DelRoleStatus(nStatus,nTargetId)
					local nNowPower = Get_UserRoleStatusPower(nStatus,nUserId)
					User_TalkChannel2005(string.format(tTreasureArea_Text["GetPower"],sTargetName,nNowPower),nUserId)
				end
			elseif nTargetPower <= 3 then
				if nPower >= 9 then
					User_AddRoleStatus(nStatus, 9, nStatusTime, 0, nStatusTime, nStatusTime, 0, 0, 0, nUserId)
					User_TalkChannel2005(string.format(tTreasureArea_Text["FullPower"],sTargetName),nUserId)
				else
					if nPower + nTargetPower > 9 then
						User_AddRoleStatus(nStatus, 9, nStatusTime, 0, nStatusTime, nStatusTime, 0, 0, 0, nUserId)
						User_DelRoleStatus(nStatus,nTargetId)
						User_TalkChannel2005(string.format(tTreasureArea_Text["AddPower"],sTargetName,9 - nPower),nUserId)
						User_TalkChannel2005(string.format(tTreasureArea_Text["DelPower"],sKillerName,nTargetPower),nTargetId)
					else
						User_AddRoleStatus(nStatus, nPower + nTargetPower, nStatusTime, 0, nStatusTime, nStatusTime, 0, 0, 0, nUserId)
						User_DelRoleStatus(nStatus,nTargetId)
						User_TalkChannel2005(string.format(tTreasureArea_Text["AddPower"],sTargetName,nTargetPower),nUserId)
						User_TalkChannel2005(string.format(tTreasureArea_Text["DelPower"],sKillerName,nTargetPower),nTargetId)
					end
				end
			else
				if nPower >= 9 then
					User_AddRoleStatus(nStatus, 9, nStatusTime, 0, nStatusTime, nStatusTime, 0, 0, 0, nUserId)
					User_TalkChannel2005(string.format(tTreasureArea_Text["FullPower"],sTargetName),nUserId)
				else
					if nPower + nTargetPower > 9 then
						User_AddRoleStatus(nStatus, 9, nStatusTime, 0, nStatusTime, nStatusTime, 0, 0, 0, nUserId)
						User_SetRoleStatusPower(nStatus, nTargetPower - 3, nTargetId)
						User_TalkChannel2005(string.format(tTreasureArea_Text["AddPower"],sTargetName,9 - nPower),nUserId)
						User_TalkChannel2005(string.format(tTreasureArea_Text["DelPower"],sKillerName,3),nTargetId)
					else
						User_AddRoleStatus(nStatus, nPower + 3, nStatusTime, 0, nStatusTime, nStatusTime, 0, 0, 0, nUserId)
						User_SetRoleStatusPower(nStatus, nTargetPower - 3, nTargetId)
						User_TalkChannel2005(string.format(tTreasureArea_Text["AddPower"],sTargetName,3),nUserId)
						User_TalkChannel2005(string.format(tTreasureArea_Text["DelPower"],sKillerName,3),nTargetId)
					end
				end
			end

		else		-- 不是仇人
			if nPower >= 9 then
				User_AddRoleStatus(nStatus, 9, nStatusTime, 0, nStatusTime, nStatusTime, 0, 0, 0, nUserId)
				User_TalkChannel2005(string.format(tTreasureArea_Text["FullPower"],sTargetName),nUserId)
			else
				User_AddRoleStatus(nStatus, nPower + 1, nStatusTime, 0, nStatusTime, nStatusTime, 0, 0, 0, nUserId)
				if nTargetPower <= 0 then
					User_DelRoleStatus(nStatus,nTargetId)
					-- local nNowPower = Get_UserRoleStatusPower(nStatus,nUserId)
					User_TalkChannel2005(string.format(tTreasureArea_Text["GetPower"],sTargetName,tonumber(nPower + 1)),nUserId)
				elseif nTargetPower == 1 then
					User_DelRoleStatus(nStatus,nTargetId)
					User_TalkChannel2005(string.format(tTreasureArea_Text["AddPower"],sTargetName,1),nUserId)
					User_TalkChannel2005(string.format(tTreasureArea_Text["DelPower"],sKillerName,1),nTargetId)
				else
					User_SetRoleStatusPower(nStatus, nTargetPower - 1, nTargetId)
					User_TalkChannel2005(string.format(tTreasureArea_Text["AddPower"],sTargetName,1),nUserId)
					User_TalkChannel2005(string.format(tTreasureArea_Text["DelPower"],sKillerName,1),nTargetId)
				end
			end
		end
		
		-- 广播交互消息
		-- usAction填59表示夺宝层数光效
		Sys_BrocastInteractMsg(59,nUserId,nTargetId)
	end
end

-- 前往潜龙渊
function TreasureArea_SendInMapAsk()
	if not TreasureArea_JudgeLevel() then
		User_TalkChannel2005(tTreasureArea_Text[20823]["LevelLimit"])
		return
	end
	
	local nMapId = Get_UserMapId()
	if nMapId == 10137 then
		Sys_MsgBox(tTreasureArea_Text[20823]["MsgAsk"],"</F>TreasureArea_SendInMap")
	end
end

-- 105确认  进入地图
function TreasureArea_SendInMap()
	if not TreasureArea_JudgeLevel() then
		User_TalkChannel2005(tTreasureArea_Text[20823]["LevelLimit"])
		return
	end

	local nMapId = tTreasureArea_Cont["MapId"]
	local nPosX = tTreasureArea_Cont["Send"]["CellX"]
	local nPosY = tTreasureArea_Cont["Send"]["CellY"]
	local nBound = tTreasureArea_Cont["Send"]["Bound"]
	if User_UserRandBoundTransByShenlongIsland(nMapId,nPosX,nPosY,nBound,nBound) then
		-- 进入地图，删除在神龙岛的所有状态
		local nUserId =  Get_UserId()
		User_DelAllAttribStatus(nUserId)
		local nStatus = 54
		User_DelRoleStatus(nStatus,nUserId)
		-- 玄宝活动接受任务
		XuanBaoFuncNpc_AcceptTask()
		-- 每日杀怪 百胜宝箱 接受任务
		TreasureArea_AcceptTask()
		
		User_TalkChannel2005(tTreasureArea_Text[20823]["SendIn"])
		Sys_MsgBox(tTreasureArea_Text[20823]["MsgSure"])
		
		-- 隔天重置人品值
		local nEvent16 = tTreasureArea_Stc[16]["EventType"]
		local nType16 = tTreasureArea_Stc[16]["DataType"]
		local nEvent17 = tTreasureArea_Stc[17]["EventType"]
		local nType17 = tTreasureArea_Stc[17]["DataType"]
		--隔4天重置   预支3天人品值
		if Task_StcInterval(nEvent16,nType16,4,4) then
			Task_SetStatistic(nEvent16,nType16,0,1)
			Task_SetStcTimestamp(nEvent16,nType16,0)
		end
		
		--隔7天重置  预支6天幸运奖励
		if Task_StcInterval(nEvent17,nType17,7,4) then
			Task_SetStatistic(nEvent17,nType17,0,1)
			Task_SetStcTimestamp(nEvent17,nType17,0)
		end
		
		local nEvent = tTreasureArea_Stc[2]["EventType"]
		local nType = tTreasureArea_Stc[2]["DataType"]
		
		if (not Task_ChkStcValue(nEvent16,nType16,"==",1)) and (not Task_ChkStcValue(nEvent17,nType17,"==",1)) then
			
			if Task_StcInterval(nEvent,nType,1,4) then
				-- 玩家未消耗的幸运值的80%可累积至下一天，最多累积至250%
				-- 人品值初始值 由200 改为 100
				local nNowData = Get_UserStatisticValue(nEvent,nType)
				local nAddData = nNowData * 0.8
				local nSetData = 100
				if nAddData > 0 then
					if nSetData + nAddData <= 250 then
						nSetData = nSetData + nAddData
					elseif nSetData + nAddData > 250 then
						nSetData = 250
					end
				end
				nSetData = math.floor(nSetData)
				Task_SetStatistic(nEvent,nType,nSetData,1)
				Task_SetStcTimestamp(nEvent,nType,0)
				if nNowData ~= 0 then
					User_TalkChannel2005(string.format(tTreasureArea_Text["LuckyTip"],nNowData))
				end			
			end
		end
	end
end

-- 接受任务逻辑 3944  每日杀怪 百胜宝箱 接受任务
function TreasureArea_AcceptTask()
	-- 击杀100只普通小怪即可开启百胜宝箱
	local nEvent = tTreasureArea_Stc[9]["EventType"]
	local nType = tTreasureArea_Stc[9]["DataType"]
	
	-- 任务面板显示
	local nTaskId = tTreasureArea_Cont["TaskId"]
	
	if Task_StcInterval(nEvent,nType,1,4,0) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
		
		-- 判断任务是否隔天
		if not Task_ChkTaskDetail(nTaskId) then
			if Task_AddTaskDetail(nTaskId) then
				Task_SetTaskDetailData1(nTaskId,0)  --置杀怪数量
				Task_SetTaskDetailCompleteFlag(nTaskId,0) --置完成标示为0
				Task_SetTaskDetailData7(nTaskId,os.time())
			end
		else
			Task_SetTaskDetailData1(nTaskId,0)  --置杀怪数量
			Task_SetTaskDetailCompleteFlag(nTaskId,0) --置完成标示为0
			Task_SetTaskDetailData7(nTaskId,os.time())
		end
	end
	
	-- 开启宝箱的掩码
	local nEvent1 = tTreasureArea_Stc[10]["EventType"]
	local nType1 = tTreasureArea_Stc[10]["DataType"]
	if Task_StcInterval(nEvent1,nType1,1,4,0) then
		Task_SetStatistic(nEvent1,nType1,0,1,0)
		Task_SetStcTimestamp(nEvent1,nType1,0,0)
	end

	-- 杀怪数
	local nStcData = Get_UserStatisticValue(nEvent,nType)
	-- 是否开启宝箱
	local nStcData1 = Get_UserStatisticValue(nEvent1,nType1)
	
	if not Task_ChkTaskDetail(nTaskId) then
		if Task_AddTaskDetail(nTaskId) then
			if nStcData >= 100 then
				Task_SetTaskDetailData1(nTaskId,nStcData)  --置杀怪数量
				if nStcData1 >= 1 then
					Task_SetTaskDetailCompleteFlag(nTaskId,1) --置完成标示为 已完成
				else
					Task_SetTaskDetailCompleteFlag(nTaskId,0) --置完成标示为0
				end
			else
				Task_SetTaskDetailData1(nTaskId,nStcData)  --置杀怪数量
				Task_SetTaskDetailCompleteFlag(nTaskId,0) --置完成标示为0
			end
			Task_SetTaskDetailData7(nTaskId,os.time())
		end
	else
		if not Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then
			if nStcData >= 100 then
				Task_SetTaskDetailData1(nTaskId,nStcData)  --置杀怪数量
				if nStcData1 >= 1 then
					Task_SetTaskDetailCompleteFlag(nTaskId,1) --置完成标示为 已完成
				else
					Task_SetTaskDetailCompleteFlag(nTaskId,0) --置完成标示为0
				end
			else
				Task_SetTaskDetailData1(nTaskId,nStcData)  --置杀怪数量
				Task_SetTaskDetailCompleteFlag(nTaskId,0) --置完成标示为0
			end
		end
	end
end

-- 回到神龙岛
function TreasureArea_SendBack()
	-- 判断打宝状态  出打宝区 清除状态和buff
	local nUserId = Get_UserId()
	local nStatus = tTreasureArea_Cont["StatusType"]
	if User_ChkRoleStatus(nStatus,nUserId) then
		User_DelRoleStatus(nStatus,nUserId)
	end
	
	local nStatus_1 = tTreasureArea_BUFF["Status"][1][1]
	local nStatus_2 = tTreasureArea_BUFF["Status"][1][2]
	if User_ChkRoleStatus(nStatus_1,nUserId) then
		User_DelRoleStatus(nStatus_1,nUserId)
	end
	if User_ChkRoleStatus(nStatus_2,nUserId) then
		User_DelRoleStatus(nStatus_2,nUserId)
	end
	
	for i = 2,5 do
		local nStatusType = tTreasureArea_BUFF["Status"][i]
		if User_ChkRoleStatus(nStatusType,nUserId) then
			User_DelRoleStatus(nStatusType,nUserId)
		end
	end
	
	User_DelAllAttribStatus(nUserId)
	local nStatus = 54
	User_DelRoleStatus(nStatus,nUserId)

	local nMapId = tTreasureArea_Cont["Back"]["MapId"]
	local nPosX = tTreasureArea_Cont["Back"]["CellX"]
	local nPosY = tTreasureArea_Cont["Back"]["CellY"]
	local nBound = tTreasureArea_Cont["Back"]["Bound"]
	User_UserRandBoundTransByShenlongIsland(nMapId,nPosX,nPosY,nBound,nBound)
end

-- 返回栖侠镇
function TreasureArea_SendToUnderground(nNpcId)
	local nMapId = tTreasureArea_Cont["Safe"]["MapId"]
	local nPosX = tTreasureArea_Cont["Safe"]["CellX"]
	local nPosY = tTreasureArea_Cont["Safe"]["CellY"]
	local nBound = tTreasureArea_Cont["Safe"]["Bound"]
	User_UserRandBoundTransByShenlongIsland(nMapId,nPosX,nPosY,nBound,nBound)
end

-- 传送阵返回
function TreasureArea_TransToNpc()
	local nMapId = tTreasureArea_Cont["MapId"]
	local nUserMapId = Get_UserMapId()
	if nUserMapId ~= nMapId then
		return
	end
	local nPosX = tTreasureArea_Cont["Send"]["CellX"]
	local nPosY = tTreasureArea_Cont["Send"]["CellY"]
	local nBound = tTreasureArea_Cont["Send"]["Bound"]
	User_UserRandBoundTransByShenlongIsland(nMapId,nPosX,nPosY,nBound,nBound)
end

-- boss存在时的传送 寻路到boss位置
function TreasureArea_FindBoss(nNowNpcId,nChoose)
	local nNpcId = nNowNpcId or Get_NpcId()
	-- 判断要找的boss已经不见了
	local bExist = true
	local nMonsterId = tTreasureArea_BrushBoss["MonsterId"][nChoose]
	local sMonsterName = tTreasureArea_Text["BossName"][nMonsterId]
	local nMapId = tTreasureArea_Cont["MapId"]
	local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
	if nMonsterNum == 0 then
		bExist = false
		local nText = tonumber(220 + nChoose)
		tNpcGossip[20825]["Text2-2"] = {nText}
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	if bExist then
		Sys_DialogFace(nNpcId)
		Sys_DialogText(string.format(tTreasureArea_Text[20825]["Text141"],sMonsterName))
		Sys_DialogOption(tTreasureArea_Text[20825]["Option2" .. nChoose],"</F>TreasureArea_FindBossFree</N>" .. nNpcId .. "</N>" .. nChoose .. "</N>0")
		Sys_DialogOption(string.format(tTreasureArea_Text[20825]["Option9"],sMonsterName),"</F>TreasureArea_FindBossPay</N>" .. nNpcId .. "</N>" .. nChoose)
		Sys_DialogEnd()
	end
end

-- boss不存在时的 传送
function TreasureArea_FindBossNoExist(nNowNpcId,nChoose)
	local nNpcId = nNowNpcId or Get_NpcId()
	local nMonsterId = tTreasureArea_BrushBoss["MonsterId"][nChoose]
	local sMonsterName = tTreasureArea_Text["BossName"][nMonsterId]
	Sys_DialogFace(nNpcId)
	Sys_DialogText(string.format(tTreasureArea_Text[20825]["Text142"],sMonsterName))
	Sys_DialogOption(tTreasureArea_Text[20825]["Option2" .. nChoose],"</F>TreasureArea_FindBossFree</N>" .. nNpcId .. "</N>" .. nChoose .. "</N>1")
	Sys_DialogEnd()
end

-- 寻路去找boss    改为传送到boss所在的岛上
function TreasureArea_FindBossFree(nNowNpcId,nChoose,nType)
	local nNpcId = nNowNpcId or Get_NpcId()
	local bExist = true
	-- 判断要找的boss已经不见了
	local nMonsterId = tTreasureArea_BrushBoss["MonsterId"][nChoose]
	local nMapId = tTreasureArea_Cont["MapId"]
	local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
	if nType == 0 then
		if nMonsterNum == 0 then
			bExist = false
			local nText = tonumber(220 + nChoose)
			tNpcGossip[nNpcId]["Text2-2"] = {nText}
			LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
		end
	end
	
	if bExist then
		-- boss所在的岛上
		local nMapId = tTreasureArea_Cont["MapId"]
		local nPosX = tTreasureArea_Cont[nMonsterId]["IslandCellX"]
		local nPosY = tTreasureArea_Cont[nMonsterId]["IslandCellY"]
		
		-- -- 3978	啸海狂魔(随机位置 所在的岛屿传送点)
		-- tTreasureArea_Cont[3978]["IslandPos"] = {}
		-- tTreasureArea_Cont[3978]["IslandPos"][1] = {634,609}
		-- tTreasureArea_Cont[3978]["IslandPos"][2] = {668,899}
		-- tTreasureArea_Cont[3978]["IslandPos"][3] = {968,959}
		-- -- 3970	妖后瑶姬(随机位置 所在的岛屿传送点)
		-- tTreasureArea_Cont[3970]["IslandPos"] = {}
		-- tTreasureArea_Cont[3970]["IslandPos"][1] = {278,207}
		-- tTreasureArea_Cont[3970]["IslandPos"][2] = {618,561}
		-- tTreasureArea_Cont[3970]["IslandPos"][3] = {622,876}
		-- tTreasureArea_Cont[3970]["IslandPos"][4] = {939,946}
		-- tTreasureArea_Cont[3970]["IslandPos"][5] = {1189,938}
	
		-- 检查boss的随机位置，获取boss 在哪个岛屿的位置
		if nMonsterId == 3978 or nMonsterId == 3970 then -- 3978 啸海狂魔   3970  妖后瑶姬
			local nGlobalId = tTreasureArea_Cont["BossGlobal"]
			local nIndex = 1
			local nBossPosX = 0
			local nBossPosY = 0
			if nMonsterId == 3978 then -- 3978 啸海狂魔
				nBossPosX = Get_SysDynaGlobalData0(nGlobalId)
				nBossPosY = Get_SysDynaGlobalData1(nGlobalId)
			elseif nMonsterId == 3970 then  -- 3970  妖后瑶姬
				nBossPosX = Get_SysDynaGlobalData2(nGlobalId)
				nBossPosY = Get_SysDynaGlobalData3(nGlobalId)
			end
			
			for x,y in pairs(tTreasureArea_Cont[nMonsterId]["RandPos"]) do
				if nBossPosX == y[1] and nBossPosY == y[2] then
					nIndex = x
				end
			end
			
			nPosX = tTreasureArea_Cont[nMonsterId]["IslandPos"][nIndex][1]
			nPosY = tTreasureArea_Cont[nMonsterId]["IslandPos"][nIndex][2]
		end
		
		local nRange = tTreasureArea_Cont["Send"]["Bound"]
		-- Sys_GotoSomeWhere(nPosX,nPosY,nMapId)
		User_UserRandBoundTransByShenlongIsland(nMapId,nPosX,nPosY,nRange,nRange)
	end
end

-- 付费去找boss  改为传送到 boss身边
function TreasureArea_FindBossPay(nNowNpcId,nChoose)
	local nNpcId = nNowNpcId or Get_NpcId()
	-- 判断要找的boss已经不见了
	local bExist = true
	local nMonsterId = tTreasureArea_BrushBoss["MonsterId"][nChoose]
	local nMapId = tTreasureArea_Cont["MapId"]
	local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
	if nMonsterNum == 0 then
		bExist = false
		local nText = tonumber(220 + nChoose)
		tNpcGossip[nNpcId]["Text2-2"] = {nText}
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- 判断玩家的天石数量
	local nEmoney = Get_UserEMoney()
	if nEmoney < 1 then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end

	if bExist then
		local nMapId = tTreasureArea_Cont["MapId"]
		local nPosX = tTreasureArea_Cont[nMonsterId]["CellX"]
		local nPosY = tTreasureArea_Cont[nMonsterId]["CellY"]
		
		local nGlobalId = tTreasureArea_Cont["BossGlobal"]
		if nMonsterId == 3978 then -- 3978 啸海狂魔
			nPosX = Get_SysDynaGlobalData0(nGlobalId)
			nPosY = Get_SysDynaGlobalData1(nGlobalId)
		elseif nMonsterId == 3970 then  -- 3970  妖后瑶姬
			nPosX = Get_SysDynaGlobalData2(nGlobalId)
			nPosY = Get_SysDynaGlobalData3(nGlobalId)
		end
		
		local nRange = tTreasureArea_Cont["Send"]["Bound"]
		if User_AddEMoney(-1) then
			User_UserRandBoundTransByShenlongIsland(nMapId,nPosX,nPosY,nRange,nRange)
			Sys_SaveActionFestivalLog(tTreasureArea_Log["FindBossPay"])
		end
	end	
end

-- 打开兑换商店
function TreasureArea_OpenExchangeShop(nNowNpcId)
	local nNpcId = Get_NpcId() or nNowNpcId
	User_OpenExchangeShop(nNpcId)
end

-- 开启宝箱
function TreasureArea_OpenBox()
	local nNpcId = Get_NpcId()
	-- 百胜宝箱  21972  22577
	if nNpcId == 21972 or nNpcId == 22577 then
		local nEvent = tTreasureArea_Stc[9]["EventType"]
		local nType = tTreasureArea_Stc[9]["DataType"]
		
		-- 完成面板任务
		local nTaskId = tTreasureArea_Cont["TaskId"]
		
		if Task_StcInterval(nEvent,nType,1,4,0) then
			Task_SetStatistic(nEvent,nType,0,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)
			
			-- 判断任务是否隔天
			if not Task_ChkTaskDetail(nTaskId) then
				if Task_AddTaskDetail(nTaskId) then
					Task_SetTaskDetailData1(nTaskId,0)  --置杀怪数量
					Task_SetTaskDetailCompleteFlag(nTaskId,0) --置完成标示为0
					Task_SetTaskDetailData7(nTaskId,os.time())
				end
			else
				Task_SetTaskDetailData1(nTaskId,0)  --置杀怪数量
				Task_SetTaskDetailCompleteFlag(nTaskId,0) --置完成标示为0
				Task_SetTaskDetailData7(nTaskId,os.time())
			end
		end
		
		-- 开启宝箱的掩码
		local nEvent1 = tTreasureArea_Stc[10]["EventType"]
		local nType1 = tTreasureArea_Stc[10]["DataType"]
		if Task_StcInterval(nEvent1,nType1,1,4,0) then
			Task_SetStatistic(nEvent1,nType1,0,1,0)
			Task_SetStcTimestamp(nEvent1,nType1,0,0)
		end
		
		if Task_ChkStcValue(nEvent,nType,"<",100) then
			Sys_MsgBox(tTreasureArea_Text[21972]["Cannot"])
			return
		end
	
		-- 当天已开启过
		if Task_ChkStcValue(nEvent1,nType1,">=",1) then
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return
		end
		
		local nSpace = tTreasureArea_BoxReward["Box"][2]["Space"]		
		if not User_CheckLeftSpace(nSpace) then
			Sys_MsgBox(string.format(tTreasureArea_Text[21972]["BagFull"],nSpace))
			return
		end
		
		Task_SetStatistic(nEvent1,nType1,1,1,0)
		Task_SetStcTimestamp(nEvent1,nType1,0,0)
		RewardTemplate_Reward(tTreasureArea_BoxReward["Box"][1])
		RewardTemplate_NewRandom(tTreasureArea_BoxReward["Box"],2)
		User_EffectAdd(tTreasureArea_Effect[1],tTreasureArea_Effect[2])
		
		local nStcData = Get_UserStatisticValue(nEvent,nType)
		if not Task_ChkTaskDetail(nTaskId) then
			if Task_AddTaskDetail(nTaskId) then
				Task_SetTaskDetailData1(nTaskId,nStcData)  --置杀怪数量
				Task_SetTaskDetailCompleteFlag(nTaskId,1) --置完成标示为0
				Task_SetTaskDetailData7(nTaskId,os.time())
			end
		else
			if not Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then
				Task_SetTaskDetailData1(nTaskId,nStcData)  --置杀怪数量
				Task_SetTaskDetailCompleteFlag(nTaskId,1) --置完成标示为0
				Task_SetTaskDetailData7(nTaskId,os.time())
			end
		end

		-- 百胜宝箱不移动
		-- 每次成功开启宝箱  随机换1个位置
		-- TreasureArea_TransBox(nNpcId)
	else
		-- 小宝箱奖励走普通奖池，大宝箱奖励走稀有奖池
		local sType = "Normal"
		local nTextId = 21973
		if nNpcId == 21973 or (nNpcId >= 21975 and nNpcId <= 21976) or (nNpcId >= 22598 and nNpcId <= 22606) then
			-- 灵境珍宝  21973  21975  21976  22598-22606
			sType = "Normal"
			nTextId = 21973
		elseif nNpcId == 21974 or (nNpcId >= 22607 and nNpcId <= 22609) then
			-- 灵境至宝  21974 22607 22608 22609
			sType = "Special"
			nTextId = 21974
		end
		local nItemId = tTreasureArea_Cont[nNpcId]
		if Item_ChkItem(nItemId) then
			local nSpace = tTreasureArea_MonsterDrop[sType][1]["Space"]
			if sType == "Normal" then
				nSpace = nSpace*2
			end
			
			if not User_CheckLeftSpace(nSpace) then
				User_TalkChannel2005(string.format(tTreasureArea_Text["Msg"]["Full"],nSpace))
				return
			end
			
			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then	
				if sType == "Normal" then	-- 小宝箱 走两次普通奖池
					RewardTemplate_NewRandom(tTreasureArea_MonsterDrop[sType],1)
					RewardTemplate_NewRandom(tTreasureArea_MonsterDrop[sType],1)
				else
					RewardTemplate_NewRandom(tTreasureArea_MonsterDrop[sType],1)
				end
				
				-- 每次成功开启宝箱  随机换1个位置
				TreasureArea_TransBox(nNpcId)
			end
		else
			Sys_MsgBox(tTreasureArea_Text[nTextId]["Cannot"])
			return
		end
	end
end

-- 每次成功开启宝箱  随机换1个位置
function TreasureArea_TransBox(nNpcId)
	-- local nNpcMapId,nPosX,nPosY = NpcPosition_Get(nNpcId)
	local nMapId = tTreasureArea_Cont["MapId"]
	-- -- 避免重新移动的位置重复，先将当前宝箱npc所在的位置去掉 保留其他三个位置再随机
	-- local tTable = {}
	-- tTable[1] = {}
	-- tTable[2] = {}
	-- for i,v in pairs(tTreasureArea_Cont["BoxPos"][nNpcId]) do
		-- if v[1] ~= nPosX and v[2] ~= nPosY then
			-- table.insert(tTable[1],v[1])
			-- table.insert(tTable[2],v[2])
		-- end
	-- end
	
	local nRand = math.random(1,4)
	local nNewPosX = tTreasureArea_Cont["BoxPos"][nNpcId][nRand][1]
	local nNewPosY = tTreasureArea_Cont["BoxPos"][nNpcId][nRand][2]

	Npc_MoveNpcPos(nNpcId,nMapId,nNewPosX,nNewPosY)
	-- User_TalkChannel2005("===x==" .. nNewPosX .. "===y==" .. nNewPosY)
end

-- 领取气运  非霸主帮派+3层，霸主帮派+6层
function TreasureArea_GetLuckyReward(nNowNpcId)
	local nNpcId = nNowNpcId or Get_NpcId()
	-- 记录玩家是否领取气运
	local nEvent = tTreasureArea_Stc[12]["EventType"]
	local nType = tTreasureArea_Stc[12]["DataType"]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	
	-- 今日已领取气运
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		LinkNpcGossipFunc_New(nNpcId,"5-2")
		return
	end
	
	-- 二次确认
	LinkNpcGossipFunc_New(nNpcId,"6-1")
end

-- 二次确认，领取气运
function TreasureArea_GetLuckyRewardSure(nNowNpcId)
	local nNpcId = nNowNpcId or Get_NpcId()
	-- 记录玩家是否领取气运
	local nEvent = tTreasureArea_Stc[12]["EventType"]
	local nType = tTreasureArea_Stc[12]["DataType"]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	
	-- 今日已领取气运
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		LinkNpcGossipFunc_New(nNpcId,"5-2")
		return
	end
	
	-- 玩家可在NPC处领取1个气运灵符
	local nUserData = 1
	local nGlobalId = tTreasureArea_Cont["LastRank"][1][2]
	local nWinnerId = Get_SysDynaGlobalData(nGlobalId,1)
	local nWinnerSynId = Get_SysDynaGlobalTime(nGlobalId,1)
	if nWinnerId > 0 then
		-- if Get_UserGuildId() > 0 and Get_UserGuildId(nWinnerId) > 0 then
			-- if Get_UserGuildId() == Get_UserGuildId(nWinnerId) then
		if Get_UserGuildId() > 0 and nWinnerSynId > 0 then
			if Get_UserGuildId() == nWinnerSynId then
				-- 霸主帮派成员可领取2个
				nUserData = 2
			end
		end
	end

	local nStatus = tTreasureArea_Cont["StatusType"]
	local nStatusTime = tTreasureArea_Cont["StatusTime"]
	local nPower = 0
	local nAddPower = nUserData*3
	local nUserId = Get_UserId()
	
	if User_ChkRoleStatus(nStatus,nUserId) then
		nPower = Get_UserRoleStatusPower(nStatus,nUserId)
	end
	
	local nLimit = 9 - nAddPower + 1
	if nPower >= nLimit then
		Sys_MsgBox(string.format(tTreasureArea_Text[22071]["RushTime"],nLimit),"</F>TreasureArea_Sure</N>" .. nNpcId)
	else
		-- 成功领取气运
		Task_SetStatistic(nEvent,nType,1,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)

		User_AddRoleStatus(nStatus, nPower + nAddPower, nStatusTime, 0, nStatusTime, nStatusTime, 0, 0, 0, nUserId)
		User_TalkChannel2005(string.format(tTreasureArea_Text[22071]["Get"],nAddPower))
		Sys_SaveActionFestivalLog(string.format(tTreasureArea_Log["GetPrecious"],nAddPower))
		User_EffectAdd(tTreasureArea_Effect[1],tTreasureArea_Effect[3])
	end
end

-- 气运已满，刷新时间
function TreasureArea_Sure(nNowNpcId)
	local nNpcId = nNowNpcId or Get_NpcId()
	local nEvent = tTreasureArea_Stc[12]["EventType"]
	local nType = tTreasureArea_Stc[12]["DataType"]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	
	-- 玩家可在NPC处领取1个气运灵符
	local nUserData = 1
	local nGlobalId = tTreasureArea_Cont["LastRank"][1][2]
	local nWinnerId = Get_SysDynaGlobalData(nGlobalId,1)
	local nWinnerSynId = Get_SysDynaGlobalTime(nGlobalId,1)
	if nWinnerId > 0 then
		-- if Get_UserGuildId() > 0 and Get_UserGuildId(nWinnerId) > 0 then
			-- if Get_UserGuildId() == Get_UserGuildId(nWinnerId) then
		if Get_UserGuildId() > 0 and nWinnerSynId > 0 then
			if Get_UserGuildId() == nWinnerSynId then
				-- 霸主帮派成员可领取2个
				nUserData = 2
			end
		end
	end

	local nStatus = tTreasureArea_Cont["StatusType"]
	local nStatusTime = tTreasureArea_Cont["StatusTime"]
	local nPower = 0
	local nAddPower = nUserData*3
	local nUserId = Get_UserId()
	
	if User_ChkRoleStatus(nStatus,nUserId) then
		nPower = Get_UserRoleStatusPower(nStatus,nUserId)
	end
	
	local nLimit = 9 - nAddPower + 1
	
	-- 成功领取气运
	Task_SetStatistic(nEvent,nType,1,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,0)

	if nPower >= nLimit then
		User_AddRoleStatus(nStatus, 9, nStatusTime, 0, nStatusTime, nStatusTime, 0, 0, 0, nUserId)
	else
		User_AddRoleStatus(nStatus, nPower + nAddPower, nStatusTime, 0, nStatusTime, nStatusTime, 0, 0, 0, nUserId)
	end
	User_TalkChannel2005(string.format(tTreasureArea_Text[22071]["Get"],nAddPower))
	Sys_SaveActionFestivalLog(string.format(tTreasureArea_Log["GetPrecious"],nAddPower))
	User_EffectAdd(tTreasureArea_Effect[1],tTreasureArea_Effect[3])
end

-- 记录排名信息
-- sType == "Rank"      sType == "JadeRank" 
function TreasureArea_SetRankList(nNewData,sType,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	-- 判断玩家积分是否大于第十名玩家
	local nGlobalId = tTreasureArea_Cont[sType][2][1]
	local nTopTenNum = Get_SysDynaGlobalData(nGlobalId, 5)
	if nNewData <= nTopTenNum then
		return
	end
	
	-- User_TalkChannel2005("1111111==" .. nNewData,nUserId)
	
	local tRankUserData = {}
	-- 取前10名玩家积分与玩家名称
	-- 取前10名玩家id 和玩家 帮派名字
	local nIndex = 0
	for j = 1,2 do
		for i = 1, 5 do
			local nGlobalId_1 = tTreasureArea_Cont[sType][j][1]
			local nGradeNum = Get_SysDynaGlobalData(nGlobalId_1,i)
			local sPlayerName = Get_SysDynaGlobalDataStr(nGlobalId_1,i)
			
			local nGlobalId_2 = tTreasureArea_Cont[sType][j][2]
			local nPlayerId = Get_SysDynaGlobalData(nGlobalId_2,i)
			local sPlayerSynName = Get_SysDynaGlobalDataStr(nGlobalId_2,i)
			local nPlayerSynId = Get_SysDynaGlobalTime(nGlobalId_2,i)

			nIndex = nIndex +1
			tRankUserData[nIndex] = {}
			tRankUserData[nIndex]["GradeNum"] = nGradeNum == "" and 0 or nGradeNum
			tRankUserData[nIndex]["PlayerName"] = sPlayerName == "" and "null" or sPlayerName
			tRankUserData[nIndex]["PlayerId"] = nPlayerId
			tRankUserData[nIndex]["SynName"] = sPlayerSynName == "" and "null" or sPlayerSynName
			tRankUserData[nIndex]["PlayerSynId"] = nPlayerSynId == "" and 0 or nPlayerSynId
		end
	end

	-- 将玩家加入到临时排行表中
	local nIndex = #tRankUserData + 1
	for i = 1,10 do
		if nUserId == tRankUserData[i]["PlayerId"] then
			nIndex = i
		end
	end
	tRankUserData[nIndex] = {}
	tRankUserData[nIndex]["GradeNum"] = nNewData
	tRankUserData[nIndex]["PlayerName"] = Get_UserName(nUserId)
	tRankUserData[nIndex]["PlayerId"] = nUserId
	if Get_UserGuildId(nUserId) > 0 then
		local nGuildId = Get_UserGuildId(nUserId)
		tRankUserData[nIndex]["SynName"] =  Get_UserSynDicateName(nGuildId,nUserId)
		tRankUserData[nIndex]["PlayerSynId"] =  Get_UserGuildId(nUserId)
	else
		tRankUserData[nIndex]["SynName"] = tTreasureArea_Text[22071]["None_1"]
		tRankUserData[nIndex]["PlayerSynId"] =  0
	end
	
	local t = {}
	for i = 1,#tRankUserData do
		for j = 1, #tRankUserData - i do	
			if tRankUserData[j]["PlayerId"] == 0 or (tRankUserData[j]["GradeNum"] < tRankUserData[j+1]["GradeNum"] and tRankUserData[j+1]["PlayerId"] ~= 0) then
				t = tRankUserData[j]
				tRankUserData[j] = tRankUserData[j+1]
				tRankUserData[j+1] = t
			end
		end
	end
	
	-- 将排序完的数据更新到全局表中
	for i = 1,10 do
		local nGradeNum = tRankUserData[i]["GradeNum"]
		local sUserName = tRankUserData[i]["PlayerName"]
		local nUserId = tRankUserData[i]["PlayerId"]
		local sSynName = tRankUserData[i]["SynName"]
		local sSynId = tRankUserData[i]["PlayerSynId"]
		
		if nGradeNum == 0 then
			sUserName = ""
			nUserId = 0
			sSynName = ""
			sSynId = 0
		end
		
		if i <= 5 then
			Sys_SetSynaGlobalData(tTreasureArea_Cont[sType][1][1],i,nGradeNum)
			Sys_SetSynaGlobalDataStr(tTreasureArea_Cont[sType][1][1],i,sUserName)
			Sys_SetSynaGlobalData(tTreasureArea_Cont[sType][1][2],i,nUserId)
			Sys_SetSynaGlobalDataStr(tTreasureArea_Cont[sType][1][2],i,sSynName)
			Sys_SetSynaGlobalTime(tTreasureArea_Cont[sType][1][2],i,sSynId)
		elseif i > 5 and i <= 10 then
			Sys_SetSynaGlobalData(tTreasureArea_Cont[sType][2][1],i-5,nGradeNum)
			Sys_SetSynaGlobalDataStr(tTreasureArea_Cont[sType][2][1],i-5,sUserName)
			Sys_SetSynaGlobalData(tTreasureArea_Cont[sType][2][2],i-5,nUserId)
			Sys_SetSynaGlobalDataStr(tTreasureArea_Cont[sType][2][2],i-5,sSynName)
			Sys_SetSynaGlobalTime(tTreasureArea_Cont[sType][2][2],i-5,sSynId)
		end
	end	
end

-- 判断玩家是否在1-10排名内
function TreasureArea_JudgeRank(sType)
	local nRank = 0
	for j = 1,2 do
		for i = 1,5 do
			local nGlobalId = tTreasureArea_Cont[sType][j][2]
			if Get_SysDynaGlobalData(nGlobalId,i) == Get_UserId() then
				--当前玩家所在名次
				nRank = i + (j-1) * 5
				break
			end
		end
	end
	return nRank
end

-- 献上所有神明玉
function TreasureArea_HandInJade(nNowNpcId,nNum)
	local nNpcId = nNowNpcId or Get_NpcId()

	-- 限制进行掩码和记录排行的操作 时间
	if Sys_ChkDayTime(tTreasureArea_Cont["LimitTime"][1]) or Sys_ChkDayTime(tTreasureArea_Cont["LimitTime"][2]) then
		--禁止上交神明玉
		Sys_MsgBox(tTreasureArea_Text[22560]["LimitHandId"])
		return
	end
	
	-- 上交物品掩码
	local nEvent = tTreasureArea_Stc[13]["EventType"]
	local nType = tTreasureArea_Stc[13]["DataType"]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end

	-- 领奖掩码
	local nEvent1 = tTreasureArea_Stc[14]["EventType"]
	local nType1 = tTreasureArea_Stc[14]["DataType"]
	if Task_StcInterval(nEvent1,nType1,1,4) then
		Task_SetStatistic(nEvent1,nType1,0,1,0)
		Task_SetStcTimestamp(nEvent1,nType1,0,0)
	end
	
	local nItemId = tTreasureArea_Cont["HandIn"]
	if not Item_ChkItem(nItemId) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	local nItemNum = Get_CountItemType(nItemId,0)
	if nNum > 0 then
		if not Item_ChkMulItem(nItemId,nItemId,nNum) then
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		end
		nItemNum = nNum
	end
	
	local nUserId = Get_UserId()
	local nExistDay = tTreasureArea_SendMail["JadeRank"]["ExistDay"]
	local sSender = tTreasureArea_Text["JadeMail"]["Sender"]
	local sTitle = tTreasureArea_Text["JadeMail"]["Title"]
	local sContent = tTreasureArea_Text["JadeMail"]["Content"][1]
	local nActionId = tTreasureArea_SendMail["JadeRank"]["Action"]["HandIn"]

	--上交前的掩码值
	local nOldData = Get_UserStatisticValue(nEvent,nType)
	if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
		Task_AddStatistic(nEvent,nType,nItemNum,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
		-- 记录排名信息
		-- 上交后的掩码值
		local nNewData = Get_UserStatisticValue(nEvent,nType)
		if nNewData >= 30 then  -- 上交材料大于30才可以登上排行榜
			TreasureArea_SetRankList(nNewData,"JadeRank")
		end
		
		Sys_SaveActionFestivalLog(string.format(tTreasureArea_Log["HandInJade"],nItemId,nItemNum))
		User_EffectAdd(tTreasureArea_Effect[1],tTreasureArea_Effect[3])
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		
		-- 获得奖励 发邮件
		if nOldData < 10 and nNewData >= 10 then
			local sContent = tTreasureArea_Text["JadeMail"]["Content"][1]
			Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
			User_TalkChannel2005(tTreasureArea_Text["JadeMail"][10],nUserId)
		end
		
		if nNewData >= 30 then
			-- 判断是否上榜
			local nRank = TreasureArea_JudgeRank("JadeRank")
			if nRank >= 1 and nRank <= 10 then
				if Task_ChkStcValue(nEvent1,nType1,">=",1) then
					return
				end
				Task_SetStatistic(nEvent1,nType1,1,1,0)
				Task_SetStcTimestamp(nEvent1,nType1,0,0)
				local sContent = tTreasureArea_Text["JadeMail"]["Content"][2]
				Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
				User_TalkChannel2005(string.format(tTreasureArea_Text["JadeMail"][1],nRank),nUserId)
			else
				if nOldData < 30 then 
					User_TalkChannel2005(tTreasureArea_Text["JadeMail"][30],nUserId)
				end
			end
		end
		
	end
end

-- 记录大奖产生时 写入动态码的逻辑
function TreasureArea_RecordBigPrize(nType,nData)
	-- -- 奖励类型
	-- tTreasureArea_Cont["BigPrize"] = {}
	-- tTreasureArea_Cont["BigPrize"][3303526] = 1	-- 潜龙渊奢华天石礼包
	-- tTreasureArea_Cont["BigPrize"][3303527] = 2	-- 潜龙渊豪华天石赠礼包
	-- tTreasureArea_Cont["BigPrize"][3307088] = 3	-- 邪龙陨星
	-- tTreasureArea_Cont["BigPrize"][3307089] = 4	-- 妖兽气晶
	-- tTreasureArea_Cont["BigPrize"][3307090] = 5	-- 雪妖赤石
	-- tTreasureArea_Cont["BigPrize"][4613] = 6	-- 固化石幸运宝箱
	-- tTreasureArea_Cont["BigPrize"][4614] = 7	-- 金钢坚钻幸运宝箱
	-- tTreasureArea_Cont["BigPrize"][4615] = 8	-- 玄元宝石幸运宝箱
	-- -- 记录大奖获得者的信息(共10名，依次轮流显示，满10名，从头开始覆盖信息)
	-- -- data1-data5 玩家id   str1-str5 玩家名称  time1-time5 奖励类型
	-- tTreasureArea_Cont["Global"][4] = {51972,51583}

	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	local nItemId = 0
	local nMonsterId = 0
	local nPrize = 0
	if nType == 1 then
		-- 使用物品获得的大奖
		nItemId = nData
		nPrize = tTreasureArea_Cont["BigPrize"][nItemId]
	elseif nType == 2 then
		-- 击杀怪物获得的大奖
		nMonsterId = nData
		nPrize = tTreasureArea_Cont["BigPrize"][nMonsterId]
	end
	
	local nGlobalId_1 = tTreasureArea_Cont["Global"][4][1]
	local nGlobalId_2 = tTreasureArea_Cont["Global"][4][2]
	
	-- 获取未记录信息的位置，从后往前找
	local nGlobalId = 0
	local nPos = 0
	for i = 5,1,-1 do
		if Get_SysDynaGlobalData(nGlobalId_2,i) == 0 then
			nGlobalId = nGlobalId_2
			nPos = i
		end
	end
	for j = 5,1,-1 do
		if Get_SysDynaGlobalData(nGlobalId_1,j) == 0 then
			nGlobalId = nGlobalId_1
			nPos = j
		end
	end
	
	-- 10个名额已满，删掉第一个，在最后一个插入最新的记录
	local tPlayerTable = {}
	local tNameTable = {}
	local tPrizeTable = {}
	if nGlobalId == 0 then
		for i = 1,5 do
			local nPlayer = Get_SysDynaGlobalData(nGlobalId_1,i)
			local sName = Get_SysDynaGlobalDataStr(nGlobalId_1,i)
			local nPrizeType = Get_SysDynaGlobalTime(nGlobalId_1,i)
			table.insert(tPlayerTable,nPlayer)
			table.insert(tNameTable,sName)
			table.insert(tPrizeTable,tonumber(nPrizeType))
		end
		
		for j = 1,5 do
			local nPlayer = Get_SysDynaGlobalData(nGlobalId_2,j)
			local sName = Get_SysDynaGlobalDataStr(nGlobalId_2,j)
			local nPrizeType = Get_SysDynaGlobalTime(nGlobalId_2,j)
			table.insert(tPlayerTable,nPlayer)
			table.insert(tNameTable,sName)
			table.insert(tPrizeTable,tonumber(nPrizeType))
		end
		
		-- 删掉第一个记录
		table.remove(tPlayerTable,1)
		table.remove(tNameTable,1)
		table.remove(tPrizeTable,1)
	end
	
	-- 写入信息
	if nGlobalId == 0 then
		table.insert(tPlayerTable,10,nUserId)
		table.insert(tNameTable,10,sUserName)
		table.insert(tPrizeTable,10,nPrize)
		for m,n in pairs(tPlayerTable) do
			if m <= 5 then
				Sys_SetSynaGlobalData(nGlobalId_1,m,n)
			else
				local nm = m - 5
				Sys_SetSynaGlobalData(nGlobalId_2,nm,n)		
			end
		end
		for k,v in pairs(tNameTable) do
			if k <= 5 then
				Sys_SetSynaGlobalDataStr(nGlobalId_1,k,v)
			else
				local nk = k - 5
				Sys_SetSynaGlobalDataStr(nGlobalId_2,nk,v)		
			end
		end
		for x,y in pairs(tPrizeTable) do
			if x <= 5 then
				Sys_SetSynaGlobalTime(nGlobalId_1,x,tonumber(y))
			else
				local nx = x - 5
				Sys_SetSynaGlobalTime(nGlobalId_2,nx,tonumber(y))		
			end
		end
	else
		Sys_SetSynaGlobalData(nGlobalId,nPos,nUserId)
		Sys_SetSynaGlobalDataStr(nGlobalId,nPos,sUserName)
		Sys_SetSynaGlobalTime(nGlobalId,nPos,tonumber(nPrize))		
	end
end

-- 将1级夺魂转换为追命
-- 将1级追命转换为夺魂
function TreasureArea_ExchangeShenWen(nNowNpcId,nChoose)
	local nNpcId = nNowNpcId or Get_NpcId()
	-- 4031301  夺魂
	-- 4031001 追命
	local nItemId = tTreasureArea_Cont["ShenWen"][nChoose]
	local nExItem = tTreasureArea_Cont["ExShenWen"][nChoose]
	local sItemName = tTreasureArea_Text[22560]["ItemName"][nItemId]
	local sExItemName = tTreasureArea_Text[22560]["ItemName"][nExItem]
	local sStrNone = tTreasureArea_Text["Msg"]["None"]
	-- 有赠的 优先删除赠的
	if Item_ChkItem(nItemId,2) then
		-- sItemName = sItemName .. tTreasureArea_Text[22560]["Zeng"]
		-- sExItemName = sExItemName .. tTreasureArea_Text[22560]["Zeng"]
		sItemName = string.format(sStrNone,sItemName,tTreasureArea_Text[22560]["Zeng"])
		sExItemName = string.format(sStrNone,sExItemName,tTreasureArea_Text[22560]["Zeng"])
		
		Sys_DialogText(string.format(tTreasureArea_Text[22560]["Text411"],sItemName,sExItemName))
		Sys_DialogOption(tTreasureArea_Text[22560]["Option411"],"</F>TreasureArea_ExchangeSure</N>" .. nNpcId .. "</N>" .. nChoose)
		Sys_DialogOption(tTreasureArea_Text[22560]["Option412"],nil)
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
	elseif Item_ChkItem(nItemId,0) then
		-- 换非赠的
		Sys_DialogText(string.format(tTreasureArea_Text[22560]["Text411"],sItemName,sExItemName))
		Sys_DialogOption(tTreasureArea_Text[22560]["Option411"],"</F>TreasureArea_ExchangeSure</N>" .. nNpcId .. "</N>" .. nChoose)
		Sys_DialogOption(tTreasureArea_Text[22560]["Option412"],nil)
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
	else
		Sys_MsgBox(string.format(tTreasureArea_Text[22560]["NoItem"],sItemName))
	end	
end

-- 二次确认转换
function TreasureArea_ExchangeSure(nNowNpcId,nChoose)
	local nNpcId = nNowNpcId or Get_NpcId()
	-- 4031301  夺魂
	-- 4031001 追命
	local nItemId = tTreasureArea_Cont["ShenWen"][nChoose]
	local nExItem = tTreasureArea_Cont["ExShenWen"][nChoose]
	local sItemName = tTreasureArea_Text[22560]["ItemName"][nItemId]
	local sExItemName = tTreasureArea_Text[22560]["ItemName"][nExItem]
	local sStrNone = tTreasureArea_Text["Msg"]["None"]
	-- 有赠的 优先删除赠的
	if Item_ChkItem(nItemId,2) and Item_DelItem(nItemId,2) then
		RewardTemplate_Reward(tTreasureArea_UsePack["ExchangeShenWen"][nItemId][2])
		-- sItemName = sItemName .. tTreasureArea_Text[22560]["Zeng"]
		-- sExItemName = sExItemName .. tTreasureArea_Text[22560]["Zeng"]
		
		sItemName = string.format(sStrNone,sItemName,tTreasureArea_Text[22560]["Zeng"])
		sExItemName = string.format(sStrNone,sExItemName,tTreasureArea_Text[22560]["Zeng"])
		User_TalkChannel2005(string.format(tTreasureArea_Text[22560]["Success"],sItemName,sExItemName))
	elseif Item_ChkItem(nItemId,0) and Item_DelItem(nItemId,0) then
		-- 换非赠的
		RewardTemplate_Reward(tTreasureArea_UsePack["ExchangeShenWen"][nItemId][1])
		User_TalkChannel2005(string.format(tTreasureArea_Text[22560]["Success"],sItemName,sExItemName))
	else
		Sys_MsgBox(string.format(tTreasureArea_Text[22560]["NoItem"],sItemName))
	end	
end

--检测是否可以预支人品值
function TreasureArea_ChkAdvanceLuckyNum(nNpcId)
	
	local nEvent16 = tTreasureArea_Stc[16]["EventType"]
	local nType16 = tTreasureArea_Stc[16]["DataType"]
	local nEvent17 = tTreasureArea_Stc[17]["EventType"]
	local nType17 = tTreasureArea_Stc[17]["DataType"]
	--隔4天重置   预支3天人品值
	if Task_StcInterval(nEvent16,nType16,4,4) then
		Task_SetStatistic(nEvent16,nType16,0,1)
		Task_SetStcTimestamp(nEvent16,nType16,0)
	end
	
	--隔7天重置  预支6天幸运奖励
	if Task_StcInterval(nEvent17,nType17,7,4) then
		Task_SetStatistic(nEvent17,nType17,0,1)
		Task_SetStcTimestamp(nEvent17,nType17,0)
	end
	
	--今日已人品值已被预支
	if Task_ChkStcValue(nEvent16,nType16,"==",1) then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return false
	end
	
	if Task_ChkStcValue(nEvent17,nType17,"==",1) then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return false
	end
	
	-- 隔天重置人品值
	local nEvent16 = tTreasureArea_Stc[16]["EventType"]
	local nType16 = tTreasureArea_Stc[16]["DataType"]
	local nEvent17 = tTreasureArea_Stc[17]["EventType"]
	local nType17 = tTreasureArea_Stc[17]["DataType"]
	--隔4天重置   预支3天人品值
	if Task_StcInterval(nEvent16,nType16,4,4) then
		Task_SetStatistic(nEvent16,nType16,0,1)
		Task_SetStcTimestamp(nEvent16,nType16,0)
	end
	
	--隔7天重置  预支6天幸运奖励
	if Task_StcInterval(nEvent17,nType17,7,4) then
		Task_SetStatistic(nEvent17,nType17,0,1)
		Task_SetStcTimestamp(nEvent17,nType17,0)
	end
	
	local nEvent = tTreasureArea_Stc[2]["EventType"]
	local nType = tTreasureArea_Stc[2]["DataType"]
	
	if (not Task_ChkStcValue(nEvent16,nType16,"==",1)) and (not Task_ChkStcValue(nEvent17,nType17,"==",1)) then
		if Task_StcInterval(nEvent,nType,1,4) then
			-- 玩家未消耗的幸运值的80%可累积至下一天，最多累积至250%
			-- 人品值初始值 由200 改为 100
			local nNowData = Get_UserStatisticValue(nEvent,nType)
			local nAddData = nNowData * 0.8
			local nSetData = 100
			if nAddData > 0 then
				if nSetData + nAddData <= 250 then
					nSetData = nSetData + nAddData
				elseif nSetData + nAddData > 250 then
					nSetData = 250
				end
			end
			nSetData = math.floor(nSetData)
			Task_SetStatistic(nEvent,nType,nSetData,1)
			Task_SetStcTimestamp(nEvent,nType,0)
			if nNowData ~= 0 then
				User_TalkChannel2005(string.format(tTreasureArea_Text["LuckyTip"],nNowData))
			end			
		end
	end
	--人品值未消耗完
	if Task_ChkStcValue(nEvent,nType,">",0) then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return false
	end
	return true
end

function TreasureArea_AdvanceLuckyNum(nNpcId,nIndex)
	if TreasureArea_ChkAdvanceLuckyNum(nNpcId) then
		if nIndex == 1 then
			LinkNpcGossipFunc_New(nNpcId,"4-4")
		else
			LinkNpcGossipFunc_New(nNpcId,"4-5")
		end
	end
end

function TreasureArea_AdvanceLuckyNumConfirm(nNpcId)
	if TreasureArea_ChkAdvanceLuckyNum(nNpcId) then
		local nMoney = tTreasureArea_Cont["AdvanceLuckyMoney"]
		if not User_CanPutMoney2Bag(-nMoney) then
			LinkNpcGossipFunc_New(nNpcId,"4-6")
			return 
		end
		--预支3天人品值
		if User_AddMoney(-nMoney) then
			local nEvent = tTreasureArea_Stc[2]["EventType"]
			local nType = tTreasureArea_Stc[2]["DataType"]
			local nEvent16 = tTreasureArea_Stc[16]["EventType"]
			local nType16 = tTreasureArea_Stc[16]["DataType"]
			--打掩码
			Task_SetStatistic(nEvent16,nType16,1,0)
			Task_SetStcTimestamp(nEvent16,nType16,0)
			--设置人品值
			Task_SetStatistic(nEvent,nType,300,0)
			Task_SetStcTimestamp(nEvent,nType,0)
			User_TalkChannel2005(tTreasureArea_Text["TalkReward"])
			Sys_MsgBox(tTreasureArea_Text["MsgReward"])
		end
	end
end

function TreasureArea_AdvanceLuckyRewardConfirm(nNpcId)
	local nUserId = Get_UserId()
	
	if TreasureArea_ChkAdvanceLuckyNum(nNpcId) then
		local nEmoney = tTreasureArea_Cont["AdvanceLuckyEMoney"]
		local nUserEmoney = Get_UserEMoney()
		if not (nUserEmoney >= nEmoney) then
			LinkNpcGossipFunc_New(nNpcId,"4-7")
			return
		end
		--预支6天奖励
		
		if User_AddEMoney(-nEmoney) then
			
			local nEvent17 = tTreasureArea_Stc[17]["EventType"]
			local nType17 = tTreasureArea_Stc[17]["DataType"]
			--打掩码
			Task_SetStatistic(nEvent17,nType17,1,0)
			Task_SetStcTimestamp(nEvent17,nType17,0)
			
			for i = 1, 30 do
				local nExistDay = tTreasureArea_SendMail["ExistDay"]
				local sSender = tTreasureArea_Text["SixLuckyMail"]["Sender"]
				local sTitle = tTreasureArea_Text["SixLuckyMail"]["Title"]
				local sContent = tTreasureArea_Text["SixLuckyMail"]["Content"]
				local nActionId = tTreasureArea_SendMail["Join"][1]
				Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
			end
			
			for i = 1, 10 do
				local nExistDay = tTreasureArea_SendMail["ExistDay"]
				local sSender = tTreasureArea_Text["SixLuckyMail"]["Sender"]
				local sTitle = tTreasureArea_Text["SixLuckyMail"]["Title"]
				local sContent = tTreasureArea_Text["SixLuckyMail"]["Content"]
				local nActionId = tTreasureArea_SendMail["SixLuckyReward"][i]
				Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
			end
			
			Sys_MsgBox(tTreasureArea_Text["MsgRewardSix"])
		end
	end
end
------------------------------------------------物品逻辑部分-------------------------------------------------
-- 背包信   神谕令  3303476
function TreasureArea_UseLetter(nItemId)
	if Item_ChkItem(nItemId) then
		if Item_DelItem(nItemId) then
			-- 给修行值
			local nCultivation = 30
			User_AddCultivation(nCultivation)
			Sys_SaveActionFestivalLog(string.format("0,0,%d,1,12000106,2,6,%d",nItemId,nCultivation))
			local str = tBackpackLetter_Text[nItemId]["Cultivation"] or string.format(tBackpackLetter_Text["Cultivation"],nCultivation)
			User_TalkChannel2005(str)
			
			if ActivityNotice_Map(0) or Get_UserMapId() == 10137 then
			-- if Get_UserMapId() ~= tTreasureArea_Cont["MapId"] then
				-- 传送到打宝区
				TreasureArea_SendInMap()
			else
				User_TalkChannel2005(tActivityNotice_Text["Map"])
			end
		end
	end
end

--	3303520	古神灵境伏魔嘉奖包
-- 3303521 	古神灵境降妖嘉奖包
function TreasureArea_UseJoinItem(nItemId)
	if Item_ChkItem(nItemId) then
		local nSpace = tTreasureArea_UsePack[nItemId][2]["Space"]
		--神兵灵魄活动 背包空间+1
		if EpicWeaponsInNewServer_IsInTime() then
			nSpace = nSpace + 1
		end
		
		if not User_CheckLeftSpace(nSpace) then
			User_TalkChannel2005(string.format(tTreasureArea_Text["Msg"]["Full"],nSpace))
			return
		end
		
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then			
			RewardTemplate_Reward(tTreasureArea_UsePack[nItemId][1])
			RewardTemplate_NewRandom(tTreasureArea_UsePack[nItemId],2)
			--神兵灵魄活动 多开出一个神兵灵魄 每日限量5个
			if EpicWeaponsInNewServer_IsInTime() then
				EpicWeaponsInNewServer_KillBossPackage(nItemId)
			end
			User_EffectAdd(tTreasureArea_Effect[1],tTreasureArea_Effect[2])
		end
	end
end

-- 3303480	潜龙渊星陨石礼包
-- 3303523	四阶防具神魂随机包
-- 3303524	五阶防具神魂随机包
-- 3303525	四阶武器神魂随机包
-- 3307085	古神灵境星陨石礼包
-- 3307086	古神灵境赤炼石礼包
-- 3307087	古神灵境属性随机包
function TreasureArea_UseStoneItem(nItemId)
	if Item_ChkItem(nItemId) then
		local nSpace = RewardTemplate_GetRandomSpace(tTreasureArea_UsePack[nItemId],1)
		if not User_CheckLeftSpace(nSpace) then
			User_TalkChannel2005(string.format(tTreasureArea_Text["Msg"]["Full"],nSpace))
			return
		end
		
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			RewardTemplate_NewRandom(tTreasureArea_UsePack[nItemId],1)
			User_EffectAdd(tTreasureArea_Effect[1],tTreasureArea_Effect[2])
		end
	end
end

-- 3303483	灵境神草
-- 3303485	3000天石兑换券
-- 3303486	3000天石（赠）兑换券
-- 3307083	神明玉    寻路到对应NPC
function TreasureArea_UseExchangeItem(nItemId)
	if Item_ChkItem(nItemId) then
		-- 使用寻路
		local nNpcId = tTreasureArea_Cont["ExchangeNpc"]
		if nItemId == 3307083 then
			nNpcId = tTreasureArea_Cont["RankNpc"]
		end
		local nMapId = tTreasureArea_Cont["MapId"]
		local nPosX = tTreasureArea_Cont[nNpcId]["CellX"]
		local nPosY = tTreasureArea_Cont[nNpcId]["CellY"]
		Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
	end
end

-- 3303519	魔武通玄丹碎片
-- 3307088	邪龙陨星
-- 3307089	妖兽气晶
-- 3307090	雪妖赤石
function TreasureArea_UseScrapItem(nItemId)
	local nNum = tTreasureArea_Cont["ScrapNum"][nItemId]
	if Item_ChkMulItem(nItemId,nItemId,nNum) then
		if not User_CheckLeftSpace(1) then
			User_TalkChannel2005(tTreasureArea_Text[3303519]["Space"])
			return
		end
		
		if Item_ChkMulItem(nItemId,nItemId,nNum) and Item_DelMulItem(nItemId,nItemId,nNum) then
			RewardTemplate_Reward(tTreasureArea_UsePack[nItemId])
			if nItemId ~= 3303519 then
				-- 记录最近合成结晶的玩家信息
				TreasureArea_RecordBigPrize(1,nItemId)
			end
		end
	else
		User_TalkChannel2005(tTreasureArea_Text[nItemId]["NoScrap"])
	end
end

-- 3303482	古神灵境随机传送卷
-- 3304961	古神灵境传送符
function TreasureArea_UseTransItem(nItemId)
	if Item_ChkItem(nItemId) then
		local nMapId = Get_UserMapId()
		if nMapId == tTreasureArea_Cont["MapId"] then
			-- 3304961	潜龙渊传送符
			if nItemId == 3304961 then
				if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
					local nMapId = tTreasureArea_Cont["MapId"]
					local nPosX = tTreasureArea_Cont["Send"]["CellX"]
					local nPosY = tTreasureArea_Cont["Send"]["CellY"]
					local nBound = tTreasureArea_Cont["Send"]["Bound"]
					User_UserRandBoundTransByShenlongIsland(nMapId,nPosX,nPosY,nBound,nBound)
					User_TalkChannel2005(tTreasureArea_Text[nItemId]["Use"])
					return
				end
			end
			
			-- 3303482	潜龙渊随机传送卷
			local nEvent = tTreasureArea_Stc[8]["EventType"]
			local nType = tTreasureArea_Stc[8]["DataType"]
			if Task_ChkStcValue(nEvent,nType,">=",1) then
				if	not Task_StcInterval(nEvent,nType,1,0) then
					Sys_MsgBox(tTreasureArea_Text[nItemId]["TimeLimit"])
					return
				else
					Task_SetStatistic(nEvent,nType,0,1,0)
					Task_SetStcTimestamp(nEvent,nType,0,0)
				end
			end

			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
				Task_SetStatistic(nEvent,nType,1,1,0)
				Task_SetStcTimestamp(nEvent,nType,0,0)
				-- 随机传送
				User_UserRandTransByShenlongIsland(nMapId)
			end
		else
			Sys_MsgBox(tTreasureArea_Text[nItemId]["NotInMap"])
		end
	end
end

-- 3303527	古神灵境豪华天石赠礼包
function TreasureArea_UseEmoneyPack(nItemId)
	if Item_ChkItem(nItemId) then
		-- 判断天石与天石赠的数量上限
		if nItemId == 3303526 then
			local nEmoney = Get_UserEMoney()
			local nAddEmoney = 3000
			if nEmoney + nAddEmoney > G_User_MaxEmoney then
				User_TalkChannel2005(tRewardTemplate_Text["EMoney"])
				return
			end
		else
			local nEmoneyMono = Get_UserMonoEMoney()
			local nAddEmoneyMono = 3000
			if nEmoneyMono + nAddEmoneyMono > G_User_MaxEmoneyMono then
				User_TalkChannel2005(tRewardTemplate_Text["EMoneyMono"])
				return
			end
		end
		
		local nUserId = Get_UserId()
		local nUserName = Get_UserName(nUserId)
		
		RewardTemplate_UseItem(tTreasureArea_UsePack[nItemId])
		
		-- 记录最近使用3000天石或天石赠的玩家信息
		-- local nGlobalId = tTreasureArea_Cont["Global"][4]
		-- local nPos = 0
		-- if nItemId == 3303526 then
			-- nPos = 0
		-- else
			-- nPos = 1
		-- end
		-- Sys_SetSynaGlobalData(nGlobalId,nPos,nUserId)
		-- Sys_SetSynaGlobalDataStr(nGlobalId,nPos,nUserName)
		TreasureArea_RecordBigPrize(1,nItemId)		
	end
end

-- 3303972	引魔香
function TreasureArea_RushBossItem(nItemId)
	if Item_ChkItem(nItemId) then
		local nMapId = Get_UserMapId()
		if nMapId == tTreasureArea_Cont["MapId"] then
			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
				local nFlag,tAward = Probabil_RandomAward(tTreasureArea_UsePack[nItemId],1)
				local nMonsterId = tAward[1]["tAward"][1]["Item_1"]
				local nPosX = Get_UserPositionX() - 2
				local nPosY = Get_UserPositionY() - 2
				local nGenId = tTreasureArea_Cont["GenId"][nMonsterId]
				Monster_AddMonster(nMapId,nPosX,nPosY,nGenId,nMonsterId,0,0,0)
				User_TalkChannel2005(tTreasureArea_Text[nItemId]["UseItem"])
				Sys_SaveActionFestivalLog(string.format(tTreasureArea_Log["ShowBoss"],nMonsterId))
			end
		else
			User_TalkChannel2005(tTreasureArea_Text[nItemId]["NotInMap"])
		end
	end
end

-- 3303975	古神灵境龙珠袋
function TreasureArea_UseDragonPack(nItemId)
	if Item_ChkItem(nItemId) then
		local nSpace = RewardTemplate_GetRandomSpace(tTreasureArea_UsePack[nItemId],1)
		if not User_CheckLeftSpace(nSpace) then
			User_TalkChannel2005(string.format(tTreasureArea_Text["Msg"]["Full"],nSpace))
			return
		end
		
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			RewardTemplate_NewRandom(tTreasureArea_UsePack[nItemId],1)
		end
	end
end

-- 3304049	古神灵境精品装备包
function TreasureArea_UseWeaponPack(nItemId)
	if Item_ChkItem(nItemId) then
		if not User_CheckLeftSpace(1) then
			User_TalkChannel2005(string.format(tTreasureArea_Text["Msg"]["Full"],1))
			return
		end
		
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then			
			local nFlag,tAward = Probabil_RandomAward(tTreasureArea_UsePack[nItemId],1)
			local nItem = tAward[1]["tAward"][1]["Item_1"]
			if tTreasureArea_UsePack["Equip"][nItem] then
				local tReward = RewardTemplate_NewRandom(tTreasureArea_UsePack["Equip"],nItem)
				if tReward[1]["tAward"][1]["Broad"] ~= nil then
					Sys_SystemBroadcast(string.format(tTreasureArea_Text[nItemId]["BroadCast"],Get_UserName()))
					-- -- 记录最近获得了精品2洞装备的玩家信息
					-- local nUserId = Get_UserId()
					-- local nUserName = Get_UserName(nUserId)					
					-- local nGlobalId = tTreasureArea_Cont["Global"][4]
					-- local nPos = 2
					-- Sys_SetSynaGlobalData(nGlobalId,nPos,nUserId)
					-- Sys_SetSynaGlobalDataStr(nGlobalId,nPos,nUserName)
				end
			end
		end
	end
end

-- 3307095	固化石升级包
-- 3307096	金钢坚钻升级包
-- 3307097	优质玄元升级包  直接开启
function TreasureArea_WashZengItem(nItemId)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_Reward(tTreasureArea_UsePack[nItemId][1])
		User_TalkChannel2005(tTreasureArea_Text[nItemId]["RewardItem"])
	end
end

-- 确认花费
function TreasureArea_PayForSure(nItemId,nEmoney)
	if Item_ChkItem(nItemId) then
		local nUserEmoney = Get_UserEMoney()
		if nUserEmoney < nEmoney then
			User_TalkChannel2005(tTreasureArea_Text[nItemId]["NoEmoney"])
			return
		end
		
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) and User_AddEMoney(-nEmoney) then
			RewardTemplate_Reward(tTreasureArea_UsePack[nItemId][2])
			User_TalkChannel2005(tTreasureArea_Text[nItemId]["BuyItem"])
		end
	end
end

-- 3304960	古神灵境免疫药水	
function TreasureArea_UseMedicine(nItemId)
	if Item_ChkItem(nItemId) then
		local nMapId = Get_UserMapId()
		if nMapId ~= tTreasureArea_Cont["MapId"] then
			Sys_MsgBox(tTreasureArea_Text["MedicineLimit"])
			return
		end
		Sys_DialogText(tTreasureArea_Text[nItemId]["Text111"])
		Sys_DialogText(tTreasureArea_Text[nItemId]["Text112"])
		Sys_DialogText(tTreasureArea_Text[nItemId]["Text113"])
		Sys_DialogText(tTreasureArea_Text[nItemId]["Text114"])
		Sys_DialogText(tTreasureArea_Text[nItemId]["Text115"])
		Sys_DialogOption(tTreasureArea_Text[nItemId]["Option1"],"</F>TreasureArea_AddStatus</N>" .. nItemId)
		Sys_DialogOption(tTreasureArea_Text[nItemId]["Option2"],nil)
		Sys_DialogItemFace(nItemId)
		Sys_DialogEnd()
	end
end

-- 105弹框确认
function TreasureArea_AddStatus(nItemId)
	if Item_ChkItem(nItemId) then
		local nMapId = Get_UserMapId()
		if nMapId ~= tTreasureArea_Cont["MapId"] then
			Sys_MsgBox(tTreasureArea_Text["MedicineLimit"])
			return
		end
		
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			local nUserId = Get_UserId()
			if tTreasureArea_Medicine[nItemId] then
				local nSecs = tTreasureArea_Medicine["Secs"]
				if nItemId == 3307099 then
					nSecs = tTreasureArea_Medicine["Secs1"]
				end
				for i,v in pairs(tTreasureArea_Medicine[nItemId]["StatusType"]) do
					local nStatus = tTreasureArea_Medicine[nItemId]["StatusType"][i]
					local nPower = tTreasureArea_Medicine[nItemId]["StatusPower"][i]
					User_AddRoleStatus(nStatus,nPower,nSecs,0,nSecs,0,0,0,0,nUserId)
				end
			end
			User_EffectAdd(tTreasureArea_Effect[1],tTreasureArea_Effect[3])
			Sys_MsgBox(tTreasureArea_Text[nItemId]["Msg"])
			User_TalkChannel2005(tTreasureArea_Text[nItemId]["Talk"])
			Sys_SaveActionFestivalLog(string.format(tTreasureArea_Log["Medicine"],nItemId))
			-- 神纹版本
			Activity2015TheBestHero_DelRoleStatus()
		end
	end
end

-- 3303973	珍宝密钥
-- 3303974	至宝密钥
function TreasureArea_UseBoxKey(nItemId)
	if Item_ChkItem(nItemId) then
		Sys_MsgBox(tTreasureArea_Text["Msg"]["UseKey"][nItemId])
	end
end

-- 3307244	幻界玄旗
function TreasureArea_UseMagicWorldItem(nItemId)
	if Item_ChkItem(nItemId) then
		local nUserId = Get_UserId()		
		-- 判断地图限制
		local nUserMapId = Get_UserMapId(nUserId)
		-- if not (ActivityNotice_Map(0) or nUserMapId == 10137 or nUserMapId == tTreasureArea_Cont["MapId"]) then
		if nUserMapId ~= tTreasureArea_Cont["MapId"] then
			Sys_MsgBox(tTreasureArea_Text[nItemId]["MapLimit"])
			return
		end
		
		-- 判断等级
		if not TreasureArea_JudgeLevel(nUserId) then
			Sys_MsgBox(tTreasureArea_Text[nItemId]["LevelLimit"])
			return
		end
		
		-- 判断是否有组队
		-- 组队无法进入副本
		if Get_UserTeamNumbers(nUserId) > 0 then  
			Sys_MsgBox(tTreasureArea_Text[nItemId]["TeamTip"])
			return
		end

		-- 闪蓝玩家不让进入副本
		if Get_UserCrimeTime(nUserId) == 1 then
			User_TalkChannel2005(tTreasureArea_Text[3307244]["BlueNamedStatus"])
			return
		end
		
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			-- 随机进入其中一种秘境
			local nFlag,tAward = Probabil_RandomAward(tTreasureArea_MagicWorld["BrushMapType"],1)
			local nMapType = tAward[1]["tAward"][1]["Item_1"]
			
			local nMonsterId = tTreasureArea_MagicWorld["MonsterType"][nMapType]
			local nGenId = tTreasureArea_MagicWorld["GenId"][nMonsterId]
			
			-- 进副本
			if User_EnterInstanceByShenlongIsland(tTreasureArea_Cont["Instance"]) then
				-- 用于记录玩家当前进入的是哪个秘境
				local nEvent = tTreasureArea_Stc[15]["EventType"]
				local nType = tTreasureArea_Stc[15]["DataType"]
				Task_SetStatistic(nEvent,nType,nMapType,1,nUserId)
				Task_SetStcTimestamp(nEvent,nType,0,nUserId)
				
				User_TalkChannel2005(tTreasureArea_Text[nItemId]["Into"])
				Sys_SaveActionFestivalLog(string.format(tTreasureArea_Log["UseItem"],nItemId))
				-- 刷怪物
				local nMapId = Get_UserMapId(nUserId)
				local nNum = Get_SysTempData(1,nMapId,nMonsterId)
				for i = 1,20 do
					local nPosX = math.random(39,43)
					local nPosY = math.random(30,58)
					Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)
				end
				
				for i = 1,20 do
					local nPosX = math.random(54,69)
					local nPosY = math.random(56,64)
					Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)
				end
				
				-- 进入副本补满体力，直接给XP状态
				User_AddXp(100)
				User_AddEp(150)
				-- 倒计时
				local nTime = tTreasureArea_MagicWorld["Time"]
				User_SetTimer(nTime,"TreasureArea_KickOut",1)
			end
		end
	end
end

--将玩家踢出地图
function TreasureArea_KickOut(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	if not (Get_UserMapId(nUserId) == 1002) then
		local nMapId = tTreasureArea_Cont["MapId"]
		local nPosX = tTreasureArea_Cont["Send"]["CellX"]
		local nPosY = tTreasureArea_Cont["Send"]["CellY"]
		local nBound = tTreasureArea_Cont["Send"]["Bound"]
		User_UserRandBoundTransByShenlongIsland(nMapId,nPosX,nPosY,nBound,nBound,nil,nUserId)
		local nEvent = tTreasureArea_Stc[15]["EventType"]
		local nType = tTreasureArea_Stc[15]["DataType"]
		local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
		local sName = tTreasureArea_Text["MagicWorld"][nData]
		User_TalkChannel2005(string.format(tTreasureArea_Text["LeaveMagicWorld"],sName),nUserId)
	end
end

-- 3307272	微光星陨石包
function TreasureArea_UseAllStone(nItemId)
	if Item_ChkItem(nItemId) then
		local nItemSum = Get_CountItemType(nItemId,0)
		if Item_ChkMulItem(nItemId,nItemId,nItemSum) and Item_DelMulItem(nItemId,nItemId,nItemSum) then
			local tReward = CommonFunc_Copy(tTreasureArea_UsePack[nItemId])
			tReward["RewardItem"][1]["Attr"] = string.format("0 %d 0 2880 1",nItemSum)
			tReward["Log"] = string.format("0,0,%d,%d,18000160,2,3009000,%d",nItemId,nItemSum,nItemSum)
			RewardTemplate_Reward(tReward)
		end
	end
end

--检测神器源
function TreasureArea_ChkItemCasting(nItemId)
	local nItemId1 = tTreasureArea_Cont["SourceChipId"]
	local nItemNum = tTreasureArea_Cont["NeedSourceChip"]
	if not Item_ChkMulItem(nItemId1,nItemId1,nItemNum) then
		LinkItemGossipFunc_New(nItemId,"2-1")
		return false
	end
	
	--判断背包空间
	if not User_CheckLeftSpace(tTreasureArea_Cont["NeedSpace"]) then
		User_TalkChannel2005(tTreasureArea_Text["NoSpace"])
		return false
	end

	return true
end

--铸造神器
function TreasureArea_Casting(nItemId)
	
	if TreasureArea_ChkItemCasting(nItemId) then 
		LinkItemGossipFunc_New(nItemId,"2-2")
		return
	end
end

-- 获取获得的玄宝属性数量
function TreasureArea_GetAttrNum()
	local nFlag,tReward = Probabil_RandomAward(tTreasureArea_AttributeNum[1],1)
	
	return tReward[1]["tAward"][1]["Item_1"]
end
-- 获取获得的玄宝黄金属性数量
function TreasureArea_GetGoldAttrNum(nAttributeNum)
	local nFlag,tReward = Probabil_RandomAward(tTreasureArea_GoldAttributeNum[1],nAttributeNum)
	
	return tReward[1]["tAward"][1]["Item_1"]
end

function TreasureArea_CastingComfirm(nItemId)
	if TreasureArea_ChkItemCasting(nItemId) then
		if Item_ChkItem(nItemId) then
			local nItemId1 = tTreasureArea_Cont["SourceChipId"]
			local nItemNum = tTreasureArea_Cont["NeedSourceChip"]
			if Item_DelMulItem(nItemId1,nItemId1,nItemNum) and Item_DelItem(nItemId) then
				
				local nAttributeNum = TreasureArea_GetAttrNum()
				
				local nGoldAttrNum = 3
				if not (nAttributeNum == 3) then
					 nGoldAttrNum = TreasureArea_GetGoldAttrNum(nAttributeNum)
				end
				
				
				local nXuanBaoId,nItem = Xuanbao_Reward(0,0,10,0,0,nAttributeNum,0,0,nGoldAttrNum,0)
				local sItemName = Get_ItemtypeName(nXuanBaoId)
				
				Sys_MsgBox(string.format(tTreasureArea_Text["MsgRewardItem"],sItemName))
				User_TalkChannel2005(string.format(tTreasureArea_Text["MsgRewardItem"],sItemName))
			end
		else
			Sys_MsgBox(tTreasureArea_Text["MsgNoItem"])
		end
	end
end

function TreasureArea_ConvertReward(nItemId)
	if Item_ChkItem(nItemId) then
		RewardTemplate_UseItem(TreasureArea_RewardItem[nItemId][1])
	else
		User_TalkChannel2005(tTreasureArea_Text["MsgNoItem"])
	end
end
--打开二次确认
function TreasureArea_ChosseArtifact(nItemId,nIndex)

	local nRewardItemId = TreasureArea_RewardItem[3322219]["ItemId"][nIndex]
	local sItemName = Get_ItemtypeName(nRewardItemId)
	tItem[3322219]["Text211"] = string.format(tTreasureArea_Text[3322219]["Text211"],sItemName)
	tItem[3322219]["OptionFunc211"] = "TreasureArea_OpenArtifactBox</N>" .. nItemId .. "</N>" .. nIndex
	
	LinkItemGossipFunc_New(nItemId,"2-1")
end
--确认选择神器
function TreasureArea_OpenArtifactBox(nItemId,nIndex)
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		
		local nFlag,tReward = Probabil_RandomAward(tTreasureArea_GoldAttributeNum[3322219],5)
		local nGoldAttrNum = tReward[1]["tAward"][1]["Item_1"]
		local nRewardItemId = TreasureArea_RewardItem[3322219]["ItemId"][nIndex]
		
		local nXuanBaoId,nItem = Xuanbao_Reward(nRewardItemId,0,10,0,0,5,0,0,nGoldAttrNum,0)
		local sItemName = Get_ItemtypeName(nXuanBaoId)
		Sys_MsgBox(string.format(tTreasureArea_Text["MsgRewardItem"],sItemName))
		User_TalkChannel2005(string.format(tTreasureArea_Text["MsgRewardItem"],sItemName))
		
		local sStr1 = Get_ItemData1(nItem)
		local sStr2 = Get_ItemData2(nItem)
		local sStr3 = Get_ItemData3(nItem)
		local sStr4 = Get_ItemData4(nItem)
		local sStr5 = Get_ItemData5(nItem)
		local sAttr = nXuanBaoId .. "{" .. sStr1 .. "&" .. sStr2 .. "&" .. sStr3 .. "&" .. sStr4 .. "&" .. sStr5 .. "}"
		
		Sys_SaveActionFestivalLog(string.format(tTreasureArea_Log["UseAftiaItem"],nItemId,sAttr))
	end
	
end

------------------------------------------------怪物逻辑部分-------------------------------------------------
-- 小怪死亡触发
function TreasureArea_MonsterDie()
	local nMonsterId = Get_MonsterType()
	
	-- 新增霸主玩法
	-- 记录玩家战绩积分 在打宝区每次死亡会损失20%
	local nNewEvent = tTreasureArea_Stc[11]["EventType"]
	local nNewType = tTreasureArea_Stc[11]["DataType"]
	-- 隔天重置
	if Task_StcInterval(nNewEvent,nNewType,1,4) then
		Task_SetStatistic(nNewEvent,nNewType,0,1)
		Task_SetStcTimestamp(nNewEvent,nNewType,0)
	end
	-- 积分规则：小怪1分，小BOSS 30分，大BOSS 300分，瑶姬妖后 1000分
	
	-- 限制进行掩码和记录排行的操作 时间
	if not (Sys_ChkDayTime(tTreasureArea_Cont["LimitTime"][3]) or Sys_ChkDayTime(tTreasureArea_Cont["LimitTime"][4])) then
		Task_AddStatistic(nNewEvent,nNewType,1,0)
		Task_SetStcTimestamp(nNewEvent,nNewType,0)
		local nNewData = Get_UserStatisticValue(nNewEvent,nNewType)
		TreasureArea_SetRankList(nNewData,"Rank")
	end
	
	-- 击杀100只普通小怪即可开启百胜宝箱
	local nEvent = tTreasureArea_Stc[9]["EventType"]
	local nType = tTreasureArea_Stc[9]["DataType"]
	
	-- 任务面板显示
	local nTaskId = tTreasureArea_Cont["TaskId"]
	
	if Task_StcInterval(nEvent,nType,1,4,0) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)

		-- 判断任务是否隔天
		if not Task_ChkTaskDetail(nTaskId) then
			if Task_AddTaskDetail(nTaskId) then
				Task_SetTaskDetailData1(nTaskId,0)  --置杀怪数量
				Task_SetTaskDetailCompleteFlag(nTaskId,0) --置完成标示为0
				Task_SetTaskDetailData7(nTaskId,os.time())
			end
		else
			Task_SetTaskDetailData1(nTaskId,0)  --置杀怪数量
			Task_SetTaskDetailCompleteFlag(nTaskId,0) --置完成标示为0
			Task_SetTaskDetailData7(nTaskId,os.time())
		end
	end
	
	if Task_ChkStcValue(nEvent,nType,"<=",100) then
		Task_AddStatistic(nEvent,nType,1,0,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
		
		local nStcData = Get_UserStatisticValue(nEvent,nType)
		if not Task_ChkTaskDetail(nTaskId) then
			if Task_AddTaskDetail(nTaskId) then
				Task_SetTaskDetailData1(nTaskId,nStcData)  --置杀怪数量
				Task_SetTaskDetailCompleteFlag(nTaskId,0) --置完成标示为0
				Task_SetTaskDetailData7(nTaskId,os.time())
			end
		else
			if not Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then
				Task_SetTaskDetailData1(nTaskId,nStcData)  --置杀怪数量
				Task_SetTaskDetailCompleteFlag(nTaskId,0) --置完成标示为0
				Task_SetTaskDetailData7(nTaskId,os.time())
			end
		end
	end
	
	-- 打怪满100只，满足打开宝箱的条件
	if Task_ChkStcValue(nEvent,nType,"==",100) then
		User_TalkChannel2005(tTreasureArea_Text[21972]["Open"])
	end
	
	-- 与人品值和幸运值相关判断 普通和稀有奖励 概率掉落（地面与背包需判断）
	-- 获取幸运值
	local nLuckyLevel = 0
	local nUserId = Get_UserId()
	local nStatus = tTreasureArea_Cont["StatusType"]
	if not User_ChkRoleStatus(nStatus,nUserId) then
		nLuckyLevel = 0
	else
		nLuckyLevel = Get_UserRoleStatusPower(nStatus,nUserId)
	end
	
	-- 隔天重置人品值
	local nEvent16 = tTreasureArea_Stc[16]["EventType"]
	local nType16 = tTreasureArea_Stc[16]["DataType"]
	local nEvent17 = tTreasureArea_Stc[17]["EventType"]
	local nType17 = tTreasureArea_Stc[17]["DataType"]
	--隔4天重置   预支3天人品值
	if Task_StcInterval(nEvent16,nType16,4,4) then
		Task_SetStatistic(nEvent16,nType16,0,1)
		Task_SetStcTimestamp(nEvent16,nType16,0)
	end
	
	--隔7天重置  预支6天幸运奖励
	if Task_StcInterval(nEvent17,nType17,7,4) then
		Task_SetStatistic(nEvent17,nType17,0,1)
		Task_SetStcTimestamp(nEvent17,nType17,0)
	end
	
	local nEvent = tTreasureArea_Stc[2]["EventType"]
	local nType = tTreasureArea_Stc[2]["DataType"]
	
	if (not Task_ChkStcValue(nEvent16,nType16,"==",1)) and (not Task_ChkStcValue(nEvent17,nType17,"==",1)) then
		
		if Task_StcInterval(nEvent,nType,1,4) then
			-- 玩家未消耗的幸运值的80%可累积至下一天，最多累积至250%
			-- 人品值初始值 由200 改为 100
			local nNowData = Get_UserStatisticValue(nEvent,nType)
			local nAddData = nNowData * 0.8
			local nSetData = 100
			if nAddData > 0 then
				if nSetData + nAddData <= 250 then
					nSetData = nSetData + nAddData
				elseif nSetData + nAddData > 250 then
					nSetData = 250
				end
			end
			nSetData = math.floor(nSetData)
			Task_SetStatistic(nEvent,nType,nSetData,0)
			Task_SetStcTimestamp(nEvent,nType,0)
			if nNowData ~= 0 then
				User_TalkChannel2005(string.format(tTreasureArea_Text["LuckyTip"],nNowData))
			end			
		end
		
	end
	
	-- 获取人品值
	local nData = Get_UserStatisticValue(nEvent,nType)
	
	-- 小怪掉落 先走奖池几率 走到稀有奖池 才扣人品值！！！
	local nRandSum = tTreasureArea_RandData["RandSum"]
	local nSpecialRand = tTreasureArea_RandData["SmallMonster"]["Special"][3973][nLuckyLevel]
	local nNormalRand = tTreasureArea_RandData["SmallMonster"]["Normal"][3973][nLuckyLevel]
	
	-- 区分战斗力怪的 奖池几率
	-- 4720	天魇神将		特殊强力怪 爆率比常规怪物高，但一样还是有幸运值限制
	if nMonsterId == 3974 or nMonsterId == 3975 or nMonsterId == 4709 or nMonsterId == 4720 then
		nSpecialRand = tTreasureArea_RandData["SmallMonster"]["Special"][nMonsterId][nLuckyLevel]
		nNormalRand = tTreasureArea_RandData["SmallMonster"]["Normal"][nMonsterId][nLuckyLevel]
	end
	
	local sType = "none"
	if Sys_Random(nSpecialRand,nRandSum) then
		if nData > 0 then
			sType = "Special"
		end
	elseif Sys_Random(nNormalRand,tonumber(nRandSum-nSpecialRand)) then
		sType = "Normal"
	end
	
	-- 特殊怪   必定掉幸运值奖励，没幸运值掉普通奖励
	-- 4710		紫魇龙
	-- 4711		鬼瞑蛟
	-- 4712		青翼盅雕
	-- 4713		清翼蛟	
	if nMonsterId >= 4710 and nMonsterId <= 4713 then
		if nData > 0 then
			sType = "Special"
		else
			sType = "Normal"
		end
	end
	
	if sType == "Normal" or sType == "Special" then
		if sType == "Special" then
			local nSetData = nData - 10
			if nSetData <= 0 then
				nSetData = 0
				--奖励被预支
				if Task_ChkStcValue(nEvent17,nType17,"==",1) then
					return
				end
				
				-- 玩家击杀BOSS或怪物导致“人品值”归零  出提示
				User_TalkChannel2005(tTreasureArea_Text["Msg"]["NoLucky"])
				Sys_MsgBox(tTreasureArea_Text["Msg"]["NoLucky"])
				-- 每日人品值消耗光后可获得完成令(5-x个)，与BOSS参与奖不同渠道但共同限量 
				-- 判断是否可获得参与礼包
				if TreasureArea_ChkTempLimit(nUserId) then
					-- 成功加掩码
					local nAddNum = 5 - tTreasureArea_TempTable[nUserId][2]
					tTreasureArea_TempTable[nUserId][2] = 5
					-- -- 判断背包，满了发邮件
					-- if User_CheckLeftSpace(1) then
						-- -- 给nAddNum个参与礼包
						-- local tTab = CommonFunc_Copy(tTreasureArea_MonsterDrop["StcLeft"])
						-- tTab["RewardItem"][1]["Attr"] = string.format("0 %d",nAddNum)
						-- RewardTemplate_Reward(tTab)
					-- else
						-- 发nAddNum个参与礼包的邮件
						for i = 1, nAddNum do
							local nExistDay = tTreasureArea_SendMail["ExistDay"]
							local sSender = tTreasureArea_Text["LuckyMail"]["Sender"]
							local sTitle = tTreasureArea_Text["LuckyMail"]["Title"]
							local sContent = tTreasureArea_Text["LuckyMail"]["Content"]
							local nActionId = tTreasureArea_SendMail["Join"][1]
							Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
						end
						-- User_TalkChannel2005(tTreasureArea_Text["BoxMons"]["BagFull"],nUserId)
					-- end
				end
			end
			Task_SetStatistic(nEvent,nType,nSetData,0,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)
			if nSetData > 0  then
				User_TalkChannel2005(string.format(tTreasureArea_Text["Msg"]["DelLucky"],nSetData))
			end
		end
		TreasureArea_RandRewardTable(sType,nMonsterId)
	end
	
	-- 刷出璇玑宝箱
	TreasureArea_KillMonsterFreshBox(nMonsterId)
	
	-- 新增打宝区掉落（指的是古神灵境）：每天限制20个岫山玉碎片，概率3%掉落
	CoatWarehouse_Sale_KillMonsterDrop()
	
	-- 血色矿山掉落矿山开奖卷
	OhterNpc_KillMonsterDrop(nMonsterId)
	
	-- 2018七夕节掉落七夕礼盒
	-- ValentinesDay2018_KillMonsterDrop(nMonsterId)
	
	--黑五狂欢周击杀奖励
	BlackFiveCarnivalWeek_KillMonsterGod()
	--1月神纹月 古神灵境 击杀200只怪物 额外奖励
	JanRuneImproveMon_TreasureAreaReward()
	
	ThanksGiving2019MapGuess_TreasureArea()
	---------测试-------------------------------------------------------
	-- local sTeststr = "--------small monster-------\n"
	-- -- 状态层数
	-- sTeststr = sTeststr .. "nLuckyLevel==" .. nLuckyLevel .. "\n"
	-- -- 人品值
	-- sTeststr = sTeststr .. "nData==" .. nData .. "\n"
	-- -- 小怪的奖池概率
	-- sTeststr = sTeststr .. "nSpecialRand/nRandSum==" .. nSpecialRand .. "/" .. nRandSum .. "\n"
	-- sTeststr = sTeststr .. "nNormalRand/nRandSum==" .. nNormalRand .. "/" .. nRandSum .. "\n"
	-- -- 小怪走哪个奖池
	-- sTeststr = sTeststr .. "sType==" .. sType .. "\n"
	-- -- 怪物id
	-- sTeststr = sTeststr .. "nMonsterId==" .. nMonsterId .. "\n"
	-- -- 击杀小怪后的人品值
	-- local nNowData = Get_UserStatisticValue(nEvent,nType)
	-- sTeststr = sTeststr .. "nNowData==" .. nNowData .. "\n"
	
	-- -- 测试输出 
	-- User_TalkChannel2005(sTeststr)
	----------------------------------------------------------------

end

-- Boss死亡触发
function TreasureArea_BossDie()
	local nMapId = tTreasureArea_Cont["MapId"]
	local nMonsterId = Get_MonsterType()
	local sMonsterName = tTreasureArea_Text["BossName"][nMonsterId]
	Monster_Death(nMonsterId,nMapId)
	
	-- 新增霸主玩法
	-- 记录玩家战绩积分 在打宝区每次死亡会损失20%
	local nNewEvent = tTreasureArea_Stc[11]["EventType"]
	local nNewType = tTreasureArea_Stc[11]["DataType"]
	-- 隔天重置
	if Task_StcInterval(nNewEvent,nNewType,1,4) then
		Task_SetStatistic(nNewEvent,nNewType,0,1)
		Task_SetStcTimestamp(nNewEvent,nNewType,0)
	end
	-- 积分规则：小怪1分，小BOSS 30分，大BOSS 300分，瑶姬妖后 1000分
	local nAddData = 300
	if nMonsterId == 3970 then		-- 3970	妖后瑶姬
		nAddData = 1000
	end
	
	-- 限制进行掩码和记录排行的操作 时间
	if not (Sys_ChkDayTime(tTreasureArea_Cont["LimitTime"][3]) or Sys_ChkDayTime(tTreasureArea_Cont["LimitTime"][4])) then
		Task_AddStatistic(nNewEvent,nNewType,nAddData,0)
		Task_SetStcTimestamp(nNewEvent,nNewType,0)
		local nNewData = Get_UserStatisticValue(nNewEvent,nNewType)
		TreasureArea_SetRankList(nNewData,"Rank")
	end

	local nUserId = Get_UserId()
	-- 击杀奖励(魂值，队伍修行值)
	-- 3976	晶魄血妖		100修行值  700妖魂
	-- 3977	禁天邪兽		150修行值  700妖魂
	-- 3978	啸海狂魔		200修行值  1200妖魂
	if nMonsterId == 3976 or nMonsterId == 3977 or nMonsterId == 3978 then	
		if tTreasureArea_GhostTask["Ghost"][nMonsterId] then
			local nGhost = tTreasureArea_GhostTask["Ghost"][nMonsterId]
			local nTask = tTreasureArea_GhostTask["TaskId"]
			local nEvent = tTreasureArea_GhostTask["EventType"]
			local nType = tTreasureArea_GhostTask["DataType"]
			local nItemId = 0
			if Task_ChkTaskDetail(nTask) and Get_TaskDetailData3(nTask,nUserId) ~= 1 then
				for k,v in pairs(tTreasureArea_GhostTask["ItemId"]) do
					if Item_ChkItem(v) then
						nItemId = v
						break
					end
				end
				
				if nItemId ~= 0 then
					if Get_UserStatisticValue(nEvent,nType,nUserId) >= tTreasureArea_GhostTask["Limit"][nItemId] then
						Sys_MsgBox(tTreasureArea_Text["Msg"]["FullHZ"])
						Task_SetTaskDetailData3(nTask,1,nUserId)
					else
						Task_AddStatistic(nEvent,nType,nGhost,1,nUserId)
						User_TalkChannel2005(string.format(tTreasureArea_Text["Msg"]["GetHZ"],nGhost))
						
						if Get_UserStatisticValue(nEvent,nType,nUserId) >= tTreasureArea_GhostTask["Limit"][nItemId] then
							Sys_MsgBox(tTreasureArea_Text["Msg"]["FullHZ"])
							Task_SetTaskDetailData3(nTask,1,nUserId)				
						end			
					end
				end
			end
		end
		
		if tTreasureArea_GhostTask["Cul"][nMonsterId] then
			local nCul = tTreasureArea_GhostTask["Cul"][nMonsterId]
			-- 组队共享
			local nPlayerNumber = Get_UserTeamNumbers()
			if  nPlayerNumber >= 2 then
				-- 队员
				User_TeamExeFuncByTeamer(2,"TreasureArea_TeamReward</N>" .. nCul)
			else
				-- 击杀BOSS的玩家所在队伍的所有成员获得%d修行值
				User_AddCultivation(nCul,nUserId)
				User_TalkChannel2005(string.format(tTreasureArea_Text["Msg"]["TeamReward"],Get_UserName(nUserId),Get_MonsterName(),nCul))
				Sys_SaveActionFestivalLog(string.format(tTreasureArea_Log["TeamReward"],nCul))
			end
		end
	end	
	
	local nMapId = tTreasureArea_Cont["MapId"]
	local nPosX = tTreasureArea_Cont[nMonsterId]["CellX"]
	local nPosY = tTreasureArea_Cont[nMonsterId]["CellY"]
	local nGlobalId = tTreasureArea_Cont["BossGlobal"]
	if nMonsterId == 3978 then -- 3978 啸海狂魔
		nPosX = Get_SysDynaGlobalData0(nGlobalId)
		nPosY = Get_SysDynaGlobalData1(nGlobalId)
	elseif nMonsterId == 3970 then  -- 3970  妖后瑶姬
		nPosX = Get_SysDynaGlobalData2(nGlobalId)
		nPosY = Get_SysDynaGlobalData3(nGlobalId)
	end
	
	local nBound = tTreasureArea_Cont["Bound"]
	local nExistTime = tTreasureArea_Cont["ExistTime"]
	-- 必定掉落(地面)
	if nMonsterId == 3978 and CommonFunc_ChkGoldServer() ~= 0 then
		-- 金币服
		-- 必定掉落(地面)
		if tTreasureArea_MonsterDrop["GoldMustDrop"][nMonsterId] then
			for i,v in pairs(tTreasureArea_MonsterDrop["GoldMustDrop"][nMonsterId]) do
				-- Monster_SysDropItem(v)
				-- Map_DropMultiItems(nMapId,v,nPosX,nPosY,nBound,nBound,1,nExistTime)
				if v == 3306909 then
					Item_AddNewItem(v,"0 1 0 10080 1")   -- 赤炼石包 改为插入背包给时效的
					Sys_SaveActionFestivalLog(string.format(tTreasureArea_Log["UseItem"],v))
				elseif v == 1088000 or v == 3004181 then
					-- 龙珠 蛮荒骨符 改为掉落有保护
					Monster_SysDropItem(v)
				else
					local nDropPosX = nPosX + math.random(-10,10)
					local nDropPosY = nPosY + math.random(-10,10)
					Map_DropItem(nMapId, nDropPosX, nDropPosY, v)
				end
			end
			local sRewardName = tTreasureArea_Text["Msg"]["GoldMustDropReward"][nMonsterId]
			User_TalkChannel2005(string.format(tTreasureArea_Text["Msg"]["BossDrop"][1],sMonsterName,sRewardName))
		end
		
	else
	-- 必定掉落(地面)
		if tTreasureArea_MonsterDrop["MustDrop"][nMonsterId] then
			for i,v in pairs(tTreasureArea_MonsterDrop["MustDrop"][nMonsterId]) do
				-- Monster_SysDropItem(v)
				-- Map_DropMultiItems(nMapId,v,nPosX,nPosY,nBound,nBound,1,nExistTime)
				if v == 3306909 then
					Item_AddNewItem(v,"0 1 0 10080 1")   -- 赤炼石包 改为插入背包给时效的
					Sys_SaveActionFestivalLog(string.format(tTreasureArea_Log["UseItem"],v))
				elseif v == 1088000 or v == 3004181 then
					-- 龙珠 蛮荒骨符 改为掉落有保护
					Monster_SysDropItem(v)
				else
					local nDropPosX = nPosX + math.random(-10,10)
					local nDropPosY = nPosY + math.random(-10,10)
					Map_DropItem(nMapId, nDropPosX, nDropPosY, v)
				end
			end
			local sRewardName = tTreasureArea_Text["Msg"]["MustDropReward"][nMonsterId]
			User_TalkChannel2005(string.format(tTreasureArea_Text["Msg"]["BossDrop"][1],sMonsterName,sRewardName))
		end
	end
	
	-- 额外奖励（地面刷新）
	if tTreasureArea_MonsterDrop["RandomExtraDrop"][nMonsterId] then
		local nFlag,tAward = Probabil_RandomAward(tTreasureArea_MonsterDrop["RandomExtraDrop"],nMonsterId)
		local nDropType = tAward[1]["tAward"][1]["Item_1"]
		
		if nDropType == 0 then
			-- 概率掉落(地面)
			if tTreasureArea_MonsterDrop["RandomDrop"][nMonsterId] then
				local nFlag,tAward = Probabil_RandomAward(tTreasureArea_MonsterDrop["RandomDrop"],nMonsterId)
				local nItemId = tAward[1]["tAward"][1]["Item_1"]
				local nNum = tAward[1]["tAward"][1]["Num"] or 1
				if nItemId ~= 0 then
					if nItemId == 3306909 then
						Item_AddNewItem(nItemId,"0 1 0 10080 1")   -- 赤炼石包 改为插入背包给时效的
						Sys_SaveActionFestivalLog(string.format(tTreasureArea_Log["UseItem"],nItemId))
					else
						for i = 1,nNum do
							Monster_SysDropItem(nItemId)
						end
					end
					User_TalkChannel2005(string.format(tTreasureArea_Text["Msg"]["BossDrop"][2],sMonsterName,sMonsterName,Get_ItemtypeName(nItemId)))
				end
			end
		end
		
		if nDropType == 1 then
			local nItemId1 = tAward[1]["tAward"][1]["ItemReward"][1]
			
			local nMapId = tTreasureArea_Cont["MapId"]
			local nPosX = tTreasureArea_Cont[nMonsterId]["CellX"] - 10
			local nPosY = tTreasureArea_Cont[nMonsterId]["CellY"] - 10
			local nGlobalId = tTreasureArea_Cont["BossGlobal"]
			if nMonsterId == 3978 then -- 3978 啸海狂魔
				nPosX = Get_SysDynaGlobalData0(nGlobalId) - 10
				nPosY = Get_SysDynaGlobalData1(nGlobalId) - 10
			elseif nMonsterId == 3970 then  -- 3970  妖后瑶姬
				nPosX = Get_SysDynaGlobalData2(nGlobalId) - 10
				nPosY = Get_SysDynaGlobalData3(nGlobalId) - 10
			end
			local nBound = tTreasureArea_Cont["Bound"]
			local nExistTime = tTreasureArea_Cont["ExistTime"]
			Monster_SysDropItem(nItemId1)
			
			local nItemId2 = tAward[1]["tAward"][1]["ItemReward"][2]
			local nNum2 = tAward[1]["tAward"][1]["Num"][2]
			for i = 1,nNum2 do
				-- Monster_SysDropItem(nItemId2)
				local nDropPosX1 = nPosX + math.random(-10,10)
				local nDropPosY1 = nPosY + math.random(-10,10)
				Map_DropItem(nMapId, nDropPosX1, nDropPosY1, nItemId2)
			end
			local sDropReward = tTreasureArea_Text["Msg"]["RandomExtraDrop"][nMonsterId]
			User_TalkChannel2005(string.format(tTreasureArea_Text["Msg"]["BossDrop"][2],sMonsterName,sMonsterName,sDropReward))
		
		elseif nDropType == 2 then
			-- 啸海巨魔
			if nMonsterId == 3978 then
				-- 掉落玄宝
				local nItemId1 = tAward[1]["tAward"][1]["ItemReward"]
				local nNum1 = tAward[1]["tAward"][1]["Num"]
				
				local nMapId = tTreasureArea_Cont["MapId"]
				local nPosX = tTreasureArea_Cont[nMonsterId]["CellX"] - 10
				local nPosY = tTreasureArea_Cont[nMonsterId]["CellY"] - 10
				local nGlobalId = tTreasureArea_Cont["BossGlobal"]
				if nMonsterId == 3978 then -- 3978 啸海狂魔
					nPosX = Get_SysDynaGlobalData0(nGlobalId) - 10
					nPosY = Get_SysDynaGlobalData1(nGlobalId) - 10
				elseif nMonsterId == 3970 then  -- 3970  妖后瑶姬
					nPosX = Get_SysDynaGlobalData2(nGlobalId) - 10
					nPosY = Get_SysDynaGlobalData3(nGlobalId) - 10
				end
				local nBound = tTreasureArea_Cont["Bound"]
				local nExistTime = tTreasureArea_Cont["ExistTime"]
				for i = 1,nNum1 do
					-- Monster_SysDropItem(nItemId1)
					local nDropPosX = nPosX + math.random(-10,10)
					local nDropPosY = nPosY + math.random(-10,10)
					Map_DropItem(nMapId, nDropPosX, nDropPosY, nItemId1)
				end
				
				local nItemId = Monster_SysDropRandomXuanbao()
				local sDropReward = string.format(tTreasureArea_Text["Msg"]["RandomExtraDrop"][nMonsterId],Get_ItemtypeName(nItemId))
				User_TalkChannel2005(string.format(tTreasureArea_Text["Msg"]["BossDrop"][2],sMonsterName,sMonsterName,sDropReward))
			
				-- 全服公告
				Sys_SystemBroadcast(string.format(tTreasureArea_Text["Msg"][nMonsterId],sDropReward))
			end
		elseif nDropType == 3 then
			-- 妖后瑶姬
			if nMonsterId == 3970 then
				-- 刷出3个宝箱怪物
				local nFlag2,tAward2 = Probabil_RandomAward(tTreasureArea_MonsterDrop["BrushBox"],1)
				local nBoxId = tAward2[1]["tAward"][1]["Item_1"]
				local nMapId = tTreasureArea_Cont["MapId"]
				local nGenId = tTreasureArea_Cont["GenId"][nBoxId]
				
				-- 刷宝箱前 将是否出大奖的标志清空
				local nGlobalId = tTreasureArea_Cont["BoxGlobal"]
				Sys_SetSynaGlobalData0(nGlobalId,0)

				-- 判断地图内是否有宝箱怪  先删后刷
				for i,v in pairs(tTreasureArea_Cont["BoxMonster"]) do
					local nNum = Get_SysTempData(1,nMapId,v)
					if nNum > 0  then
						for j = 1,nNum do
							Monster_DelMonster(nMapId,v)
							Monster_Death(v,nMapId)
						end
					end
				end
				
				-- 5个位置随机3个位置 刷宝箱
				local tTable = {}
				local nCalLoop = 0
				while(#tTable < 3) do
					if nCalLoop > G_CalculateLoop then
						Sys_SaveAbnormalLog("函数 TreasureArea_BossDie 中 [while]循环超过1000次！")
						break
					end
					nCalLoop = nCalLoop + 1
					local nRand = math.random(1,5)
					if #tTable > 0  then
						local nCount = 0
						for m,n in pairs(tTable) do
							if n == nRand then
								nCount = nCount + 1
							end
						end
						if nCount == 0 then
							table.insert(tTable,nRand)
						end
					else
						table.insert(tTable,nRand)
					end
				end
	
				-- 检查妖后瑶姬的随机位置，在妖后瑶姬周围刷宝箱怪
				local nBossGlobalId = tTreasureArea_Cont["BossGlobal"]
				local nBossPosX = Get_SysDynaGlobalData2(nBossGlobalId)
				local nBossPosY = Get_SysDynaGlobalData3(nBossGlobalId)
				local nIndex = 1
				for x,y in pairs(tTreasureArea_Cont[3970]["RandPos"]) do
					if nBossPosX == y[1] and nBossPosY == y[2] then
						nIndex = x
					end
				end
				
				local nPosX = tTreasureArea_Cont["BoxPos"][nBoxId][nIndex][1][1]
				local nPosY = tTreasureArea_Cont["BoxPos"][nBoxId][nIndex][1][2]
				for k,v in pairs(tTable) do
					nPosX = tTreasureArea_Cont["BoxPos"][nBoxId][nIndex][v][1]
					nPosY = tTreasureArea_Cont["BoxPos"][nBoxId][nIndex][v][2]
					Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nBoxId,0,0,0,3)
				end
				
				local sFunc = string.format("TreasureArea_ShowMsg</N>%d</N>%d</N>%d</N>%d",nMapId,nPosX,nPosY,nBoxId)
				Map_UserExeFunc(nMapId,-1,sFunc)
				-- 全服公告
				Sys_TalkBroadcast(string.format(tTreasureArea_Text["Msg"][nBoxId],nMapId,nPosX,nPosY))
			end
		end
	end

	-- 限时击杀奖励（掉落地面）
	-- 记录boss被击杀的时间
	-- 5个boss 分别用 0-4段   boss刷新时间用 “data” 击杀时间用 “str”  时间差用 “time” 记录
	local nGlobalId = tTreasureArea_Cont["Global"][1]
	local nPos = tTreasureArea_Cont["Global"][nMonsterId]
	local nTime = os.time()
	Sys_SetSynaGlobalDataStr(nGlobalId,nPos,tostring(nTime))
	-- local nEndTime = Get_SysDynaGlobalDataStr(nGlobalId,nPos)
	local nBeginTime = Get_SysDynaGlobalData(nGlobalId,nPos)
	local nDiff = tonumber(nTime) - tonumber(nBeginTime)
	local nDiffTime = Sys_SetSynaGlobalTime(nGlobalId,nPos,nDiff)
	
	-- 判断是否超过对应击杀时间  限时击杀奖励（单位：秒）
	local nChoose = 1
	if nMonsterId ~= 3970 then
		nChoose = 1			-- 除妖后瑶姬
	else
		nChoose = 2			-- 妖后瑶姬
	end
	local nLimitTime = tTreasureArea_RandData["KillTimeLimit"][nChoose]

	if tonumber(nDiff) <= nLimitTime then
		-- 在规定时间内击杀  获得额外奖励
		local nTimes = tTreasureArea_RandData["Times"][nMonsterId]
		for i = 1, nTimes do
			local nFlag,tAward = Probabil_RandomAward(tTreasureArea_MonsterDrop["Extra"],1)
			local nItemId = tAward[1]["tAward"][1]["Item_1"]
			local nNum = tAward[1]["tAward"][1]["Num"] or 1
			local nMapId = tTreasureArea_Cont["MapId"]
			local nPosX = tTreasureArea_Cont[nMonsterId]["CellX"] - 10
			local nPosY = tTreasureArea_Cont[nMonsterId]["CellY"] - 10
			
			local nGlobalId = tTreasureArea_Cont["BossGlobal"]
			if nMonsterId == 3978 then -- 3978 啸海狂魔
				nPosX = Get_SysDynaGlobalData0(nGlobalId) - 10
				nPosY = Get_SysDynaGlobalData1(nGlobalId) - 10
			elseif nMonsterId == 3970 then  -- 3970  妖后瑶姬
				nPosX = Get_SysDynaGlobalData2(nGlobalId) - 10
				nPosY = Get_SysDynaGlobalData3(nGlobalId) - 10
			end
			
			local nBound = tTreasureArea_Cont["Bound"]
			local nExistTime = tTreasureArea_Cont["ExistTime"]
			Map_DropMultiItems(nMapId,nItemId,nPosX,nPosY,nBound,nBound,nNum,nExistTime)
		end
		
		-- 限时内击杀BOSS，需要单服全服公告
		Sys_SystemBroadcast(string.format(tTreasureArea_Text["Msg"]["BossDie"][nMonsterId],Get_UserName(nUserId)))		
	end
	-- 19.03.18新增BOSS额外掉落 -- by wzh 
	if Get_UserMapId() == nMapId then
		local nExtraGlobal = tTreasureArea_ExtraDrop["Global"]
		local nExtraData = Get_SysDynaGlobalData0(nExtraGlobal)
		local nExtraDropFlag,tExtraDropAward = Probabil_RandomAward(tTreasureArea_MonsterDrop["ExtraDrop"],1)
		
		if nExtraData >= 10 then
			nExtraDropFlag,tExtraDropAward = Probabil_RandomAward(tTreasureArea_MonsterDrop["ExtraDrop"],2)
		end
		
		local nExtraDropItemId = tExtraDropAward[1]["tAward"][1]["Item_1"]
		local nExtraDropNum = tExtraDropAward[1]["tAward"][1]["Num"] or 1
		
		-- 限时击杀掉落翻倍
		if tonumber(nDiff) <= nLimitTime then
			nExtraDropNum = nExtraDropNum * 2
		end
		
		
		nExtraData = nExtraData + 1
		Sys_SetSynaGlobalData0(nExtraGlobal,nExtraData)
		
		for i=1, nExtraDropNum do
			Monster_SysDropItem(nExtraDropItemId)
		end
		
		
		
		User_TalkChannel2005(string.format(tTreasureArea_Text["Msg"]["ExtraDrop"],sMonsterName,sMonsterName,nExtraDropNum,Get_ItemtypeName(nExtraDropItemId)))
	end
	
	-- 与人品值和幸运值相关判断 普通和稀有奖励 概率掉落（地面与背包需判断）
	-- 获取幸运值
	local nLuckyLevel = 0
	local nStatus = tTreasureArea_Cont["StatusType"]
	if not User_ChkRoleStatus(nStatus,nUserId) then
		nLuckyLevel = 0
	else
		nLuckyLevel = Get_UserRoleStatusPower(nStatus,nUserId)
	end
	
	-- 隔天重置人品值
	local nEvent16 = tTreasureArea_Stc[16]["EventType"]
	local nType16 = tTreasureArea_Stc[16]["DataType"]
	local nEvent17 = tTreasureArea_Stc[17]["EventType"]
	local nType17 = tTreasureArea_Stc[17]["DataType"]
	--隔4天重置   预支3天人品值
	if Task_StcInterval(nEvent16,nType16,4,4) then
		Task_SetStatistic(nEvent16,nType16,0,1)
		Task_SetStcTimestamp(nEvent16,nType16,0)
	end
	
	--隔7天重置  预支6天幸运奖励
	if Task_StcInterval(nEvent17,nType17,7,4) then
		Task_SetStatistic(nEvent17,nType17,0,1)
		Task_SetStcTimestamp(nEvent17,nType17,0)
	end
	
	local nEvent = tTreasureArea_Stc[2]["EventType"]
	local nType = tTreasureArea_Stc[2]["DataType"]
	
	if (not Task_ChkStcValue(nEvent16,nType16,"==",1)) and (not Task_ChkStcValue(nEvent17,nType17,"==",1)) then
		if Task_StcInterval(nEvent,nType,1,4) then
			-- 玩家未消耗的幸运值的80%可累积至下一天，最多累积至250%
			-- 人品值初始值 由200 改为 100
			local nNowData = Get_UserStatisticValue(nEvent,nType)
			local nAddData = nNowData * 0.8
			local nSetData = 100
			if nAddData > 0 then
				if nSetData + nAddData <= 250 then
					nSetData = nSetData + nAddData
				elseif nSetData + nAddData > 250 then
					nSetData = 250
				end
			end
			nSetData = math.floor(nSetData)
			Task_SetStatistic(nEvent,nType,nSetData,0)
			Task_SetStcTimestamp(nEvent,nType,0)
			if nNowData ~= 0 then
				User_TalkChannel2005(string.format(tTreasureArea_Text["LuckyTip"],nNowData))
			end			
		end
		
	end
	
	-- 获取人品值
	local nData = Get_UserStatisticValue(nEvent,nType)
	local nRand = 0		-- 概率
	local nTimes = 0		-- 执行次数
	local sType = "Normal"		-- 奖励类型
	if nData <= 0 then
		-- 当玩家“人品值”归零时，击杀BOSS或怪物掉落的奖励奖池走普通奖池
		-- 普通奖池几率
		nRand = tTreasureArea_RandData["Boss"]["Normal"][nLuckyLevel]
		nTimes = tTreasureArea_RandData["Boss"]["NormalTime"][nLuckyLevel]
		sType = "Normal"
	else
		-- 有人品值时，走稀有奖池
		-- 稀有奖池几率
		nRand = tTreasureArea_RandData["Boss"]["Special"][nLuckyLevel]
		nTimes = tTreasureArea_RandData["Boss"]["SpecialTime"][nLuckyLevel]
		sType = "Special"
	end
	
	-- 在规定时间内击杀BOSS  两个随机奖池概率+200%
	local nAddTime = tTreasureArea_RandData["Boss"]["AddTime"]
	if nDiff <= nLimitTime then
		nTimes = nTimes + nAddTime
	end
	
	for i = 1,nTimes do
		-- 每次从稀有奖池中掉落1件道具，扣除玩家10点“人品值”
		if sType == "Special" then
			local nSetData = nData - 10
			if nSetData <= 0 then
				nSetData = 0
				
				if Task_ChkStcValue(nEvent17,nType17,"==",1) then
					return
				end
				-- 玩家击杀BOSS或怪物导致“人品值”归零  出提示
				User_TalkChannel2005(tTreasureArea_Text["Msg"]["NoLucky"])
				Sys_MsgBox(tTreasureArea_Text["Msg"]["NoLucky"])
				
				-- 每日人品值消耗光后可获得完成令(5-x个)，与BOSS参与奖不同渠道但共同限量 
				-- 判断是否可获得参与礼包
				if TreasureArea_ChkTempLimit(nUserId) then
					-- 成功加掩码
					local nAddNum = 5 - tTreasureArea_TempTable[nUserId][2]
					tTreasureArea_TempTable[nUserId][2] = 5
					-- -- 判断背包，满了发邮件
					-- if User_CheckLeftSpace(1) then
						-- -- 给nAddNum个参与礼包
						-- local tTab = CommonFunc_Copy(tTreasureArea_MonsterDrop["StcLeft"])
						-- tTab["RewardItem"][1]["Attr"] = string.format("0 %d",nAddNum)
						-- RewardTemplate_Reward(tTab)
					-- else
						-- 发nAddNum个参与礼包的邮件
						for i = 1, nAddNum do
							local nExistDay = tTreasureArea_SendMail["ExistDay"]
							local sSender = tTreasureArea_Text["LuckyMail"]["Sender"]
							local sTitle = tTreasureArea_Text["LuckyMail"]["Title"]
							local sContent = tTreasureArea_Text["LuckyMail"]["Content"]
							local nActionId = tTreasureArea_SendMail["Join"][1]
							Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
						end
						-- User_TalkChannel2005(tTreasureArea_Text["BoxMons"]["BagFull"],nUserId)
					-- end
				end
				
			end
			Task_SetStatistic(nEvent,nType,nSetData,0,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)
			if nSetData > 0  then
				User_TalkChannel2005(string.format(tTreasureArea_Text["Msg"]["DelLucky"],nSetData))
			end
		end
		TreasureArea_RandRewardTable(sType,nMonsterId)
	end
	
	local nRandSum = tTreasureArea_RandData["RandSum"]
	if Sys_Random(nRand,nRandSum) then
		-- 每次从稀有奖池中掉落1件道具，扣除玩家10点“人品值”
		if sType == "Special" then
			local nSetData = nData - 10
			if nSetData <= 0 then
				nSetData = 0
				--奖励被预支
				if Task_ChkStcValue(nEvent17,nType17,"==",1) then
					return
				end
				
				-- 玩家击杀BOSS或怪物导致“人品值”归零  出提示
				User_TalkChannel2005(tTreasureArea_Text["Msg"]["NoLucky"])
				Sys_MsgBox(tTreasureArea_Text["Msg"]["NoLucky"])
				
				-- 每日人品值消耗光后可获得完成令(5-x个)，与BOSS参与奖不同渠道但共同限量 
				-- 判断是否可获得参与礼包
				if TreasureArea_ChkTempLimit(nUserId) then
					-- 成功加掩码
					local nAddNum = 5 - tTreasureArea_TempTable[nUserId][2]
					tTreasureArea_TempTable[nUserId][2] = 5
					-- -- 判断背包，满了发邮件
					-- if User_CheckLeftSpace(1) then
						-- -- 给nAddNum个参与礼包
						-- local tTab = CommonFunc_Copy(tTreasureArea_MonsterDrop["StcLeft"])
						-- tTab["RewardItem"][1]["Attr"] = string.format("0 %d",nAddNum)
						-- RewardTemplate_Reward(tTab)
					-- else
						-- 发nAddNum个参与礼包的邮件
						for i = 1, nAddNum do
							local nExistDay = tTreasureArea_SendMail["ExistDay"]
							local sSender =tTreasureArea_Text["LuckyMail"]["Sender"]
							local sTitle = tTreasureArea_Text["LuckyMail"]["Title"]
							local sContent = tTreasureArea_Text["LuckyMail"]["Content"]
							local nActionId = tTreasureArea_SendMail["Join"][1]
							Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
						end
						-- User_TalkChannel2005(tTreasureArea_Text["BoxMons"]["BagFull"],nUserId)
					-- end
				end
				
			end
			Task_SetStatistic(nEvent,nType,nSetData,0,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)
			if nSetData > 0  then
				User_TalkChannel2005(string.format(tTreasureArea_Text["Msg"]["DelLucky"],nSetData))
			end
		end

		TreasureArea_RandRewardTable(sType,nMonsterId)
	end
	
	-- 刷出璇玑宝箱
	TreasureArea_KillMonsterFreshBox(nMonsterId)

	---------测试-------------------------------------------------------
	-- local sTeststr = "--------Boss-------\n"
	-- -- 状态层数
	-- sTeststr = sTeststr .. "nLuckyLevel==" .. nLuckyLevel .. "\n"
	-- -- 人品值
	-- sTeststr = sTeststr .. "nData==" .. nData .. "\n"
	-- -- boss的奖池概率
	-- sTeststr = sTeststr .. "nRand==" .. nRand .. "\n"
	-- -- boss奖池的执行次数
	-- sTeststr = sTeststr .. "nTimes==" .. nTimes .. "\n"
	-- -- boss走哪个奖池
	-- sTeststr = sTeststr .. "sType==" .. sType .. "\n"
	-- -- 击杀boss的时间 (是否达到限制时间)
	-- sTeststr = sTeststr .. "nDiff/nLimitTime==" .. nDiff .. "/" .. nLimitTime .."\n"
	-- -- 怪物id
	-- sTeststr = sTeststr .. "nMonsterId==" .. nMonsterId .. "\n"
	-- -- 击杀小怪后的人品值
	-- local nNowData = Get_UserStatisticValue(nEvent,nType)
	-- sTeststr = sTeststr .. "nNowData==" .. nNowData .. "\n"
	
	-- -- 测试输出 
	-- User_TalkChannel2005(sTeststr)
	----------------------------------------------------------------	
	-- 移出传送阵  
	if tTreasureArea_Cont[nMonsterId]["TransNpc"] ~= nil then
		local nNpcId = tTreasureArea_Cont[nMonsterId]["TransNpc"]
		local nNpcMapId,nPosX,nPosY = NpcPosition_Get(nNpcId)
		local nPosX = tTreasureArea_Cont[nMonsterId]["CellX"]
		local nPosY = tTreasureArea_Cont[nMonsterId]["CellY"]

		local nGlobalId = tTreasureArea_Cont["BossGlobal"]
		if nMonsterId == 3978 then -- 3978 啸海狂魔
			nPosX = Get_SysDynaGlobalData0(nGlobalId)
			nPosY = Get_SysDynaGlobalData1(nGlobalId)
		elseif nMonsterId == 3970 then  -- 3970  妖后瑶姬
			nPosX = Get_SysDynaGlobalData2(nGlobalId)
			nPosY = Get_SysDynaGlobalData3(nGlobalId)
		end

		local nIndex = 1
		for x,y in pairs(tTreasureArea_Cont[nMonsterId]["RandPos"]) do
			if nPosX == y[1] and nPosY == y[2] then
				nIndex = x
			end
		end
		
		local nMapId = tTreasureArea_Cont["MapId"]
		if nNpcMapId ~= nMapId then
			local nTransPosX = tTreasureArea_Cont[nMonsterId]["TransPos"][nIndex][1]
			local nTransPosY = tTreasureArea_Cont[nMonsterId]["TransPos"][nIndex][2]
			Npc_MoveNpcPos(nNpcId,nMapId,nTransPosX,nTransPosY)
		end
	end
end

-- 全地图弹框
function TreasureArea_ShowMsg(nMapId,nPosX,nPosY,nMonsterId,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nUserMapId = Get_UserMapId(nUserId)
	if nMapId == nUserMapId then
		local sFunc = string.format("TreasureArea_TransToBox1</N>%d</N>%d</N>%d</N>%d",nMapId,nPosX,nPosY,nUserId)
		Sys_MsgBox(tTreasureArea_Text["MapMsg"][nMonsterId],sFunc,nil,nUserId)
	end
end

-- 点击公告提示，传送到宝箱怪附近
function TreasureArea_TransToBox1(nMapId,nPosX,nPosY,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nUserMapId = Get_UserMapId(nUserId)
	if nMapId == nUserMapId then
		User_UserRandBoundTransByShenlongIsland(nMapId,nPosX,nPosY,5,5,nil,nUserId)
	else
		Sys_MsgBox(tTreasureArea_Text["MapMsg"]["No"],nil,nil,nUserId)
	end
end

-- 点击公告提示，传送到宝箱怪附近
function TreasureArea_TransToBox(nMapId,nPosX,nPosY)
	local nUserMapId = Get_UserMapId()
	if nMapId == nUserMapId then
		User_UserRandBoundTransByShenlongIsland(nMapId,nPosX,nPosY,5,5)
	else
		Sys_MsgBox(tTreasureArea_Text["MapMsg"]["No"])
	end
end

-- 宝箱怪死亡触发
function TreasureArea_BoxDie()
	local nMapId = tTreasureArea_Cont["MapId"]
	local nMonsterId = Get_MonsterType()
	local sMonsterName = tTreasureArea_Text["BossName"][nMonsterId]
	Monster_Death(nMonsterId,nMapId)
	
	local nGlobalId = tTreasureArea_Cont["BoxGlobal"]
	local nData0 = Get_SysDynaGlobalData0(nGlobalId)
	
	local nUserId = Get_UserId()
	-- 判断背包，满了发邮件
	if User_CheckLeftSpace(1) then
		if nData0 == 0 then
			-- 还未出过大奖，先出大奖
			Sys_SetSynaGlobalData0(nGlobalId,1)
			RewardTemplate_Reward(tTreasureArea_MonsterDrop[nMonsterId][1])
			-- 记录大奖获得者的信息
			TreasureArea_RecordBigPrize(2,nMonsterId)
		else
			-- 已出大奖，给气力包
			RewardTemplate_Reward(tTreasureArea_MonsterDrop[nMonsterId][2])
		end
	else
		local nExistDay = tTreasureArea_SendMail["ExistDay"]
		local sSender = tTreasureArea_Text["BoxMons"]["Sender"]
		local sTitle = tTreasureArea_Text["BoxMons"]["Title"]
		local sContent = string.format(tTreasureArea_Text["BoxMons"]["Content"],tTreasureArea_Text["BossName"][nMonsterId])
		if nData0 == 0 then
			-- 还未出过大奖，先出大奖
			Sys_SetSynaGlobalData0(nGlobalId,1)
			local nActionId = tTreasureArea_SendMail[nMonsterId][1]
			Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
			-- 记录大奖获得者的信息
			TreasureArea_RecordBigPrize(2,nMonsterId)
		else
			-- 已出大奖，给气力包
			local nActionId = tTreasureArea_SendMail[nMonsterId][2]
			Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
		end
		User_TalkChannel2005(tTreasureArea_Text["BoxMons"]["BagFull"],nUserId)
	end
end

-- 随机奖池判断
function TreasureArea_RandRewardTable(sType,nMonsterId)
	local sMonsterName = tTreasureArea_Text["BossName"][nMonsterId]
	local nFlag,tAward = Probabil_RandomAward(tTreasureArea_MonsterDrop[sType],1)
	local nItemId = tAward[1]["tAward"][1]["Item_1"]
	local nNum = tAward[1]["tAward"][1]["Num"] or 1
	
	-- 掉落或获得 随机到的奖励
	if tAward[1]["tAward"][1]["Replace"] then
		-- 新增稀有奖池中的三种奖励 单服每日限量
		-- data0 记录金玉满堂礼包3005121  单服每天80个，满了给魔武通玄丹碎片
		-- data1 记录星陨石礼包 单服每天100个，满了给魔武通玄丹碎片
		-- data2 记录龙珠 单服每天80个，满了给魔武通玄丹碎片
		-- 51640
		local nGlobalId = tAward[1]["tAward"][1]["Global"]
		local nGlobalPos = tAward[1]["tAward"][1]["GlobalPos"]
		local nGlobalLimit = tAward[1]["tAward"][1]["GlobalLimit"]
		local nReplace = tAward[1]["tAward"][1]["Replace"]
		
		local nNowData = Get_SysDynaGlobalData(nGlobalId,nGlobalPos)
		if nNowData >= nGlobalLimit then
			-- 每日限量已满
			nItemId = nReplace
			Monster_SysDropItem(nItemId)
			User_TalkChannel2005(string.format(tTreasureArea_Text["Msg"]["DropItem"],sMonsterName,1,Get_ItemtypeName(nItemId)))
		else
			if tAward[1]["tAward"][1]["Bag"] then
				Item_AddNewItem(nItemId,"0 1 0 120 1")		-- 星陨石礼包*1  3303480  3307085
				User_TalkChannel2005(string.format(tTreasureArea_Text["Msg"]["GetReward"],1,Get_ItemtypeName(nItemId)))
				Sys_SaveActionFestivalLog(string.format(tTreasureArea_Log["InsertBag"],nItemId))
			else
				Monster_SysDropItem(nItemId)
				User_TalkChannel2005(string.format(tTreasureArea_Text["Msg"]["DropItem"],sMonsterName,1,Get_ItemtypeName(nItemId)))
			end
			-- 获得限制的奖励，限制数量+1
			local nAddData = nNowData + 1
			Sys_SetSynaGlobalData(nGlobalId,nGlobalPos,nAddData)
		end
		
	elseif tAward[1]["tAward"][1]["Global"] then
		-- 单服限制判断
		local nGlobalId = tAward[1]["tAward"][1]["Global"]
		local nLimitDay = tAward[1]["tAward"][1]["Day"]
		if nGlobalId ~= 51640 then
			local nDay = Get_SysDynaGlobalData(nGlobalId,0)
			-- 判断限量周期
			if nDay >= nLimitDay then
				Sys_SetSynaGlobalData(nGlobalId,0,0)
				Sys_SetSynaGlobalData(nGlobalId,1,0)
			end
		end
		local nDropData = Get_SysDynaGlobalData(nGlobalId,1)
		if nDropData < 1 then  
			-- 未掉落过  值+1
			Sys_SetSynaGlobalData(nGlobalId,1,1)
			--天石兑换券直接掉进背包
			if nItemId == 3303485 or nItemId == 3303486 then 
				Item_AddNewItem(nItemId,"0 1")
				Sys_SaveActionFestivalLog(string.format(tTreasureArea_Log["InsertBag"],nItemId))
			else  
				Monster_SysDropItem(nItemId)
			end 
			User_TalkChannel2005(string.format(tTreasureArea_Text["Msg"]["DropItem"],sMonsterName,1,Get_ItemtypeName(nItemId)))
			local sUserName = Get_UserName()
			Sys_SystemBroadcast(string.format(tTreasureArea_Text["Msg"]["EmoneyItem"],sUserName,Get_ItemtypeName(nItemId)))

			-- 小怪掉稀有奖池的奖励时，出全服公告
			if (nMonsterId >= 3973 and nMonsterId <= 3975) or nMonsterId == 4709 or (nMonsterId >= 4710 and nMonsterId <= 4713) then
				if sType == "Special" then
					local sUserName = Get_UserName()
					Sys_SystemBroadcast(string.format(tTreasureArea_Text["Msg"]["BroadCast"],sUserName,Get_ItemtypeName(nItemId)))
				end
			end
		end

	elseif tAward[1]["tAward"][1]["Limit"] then
		-- 每人每天限掉3个，满了不掉东西
		local nLimit = tAward[1]["tAward"][1]["Limit"]
		local nIndex = tAward[1]["tAward"][1]["StcIndex"]
		local nIndexEvent = tTreasureArea_Stc[nIndex]["EventType"]
		local nIndexType = tTreasureArea_Stc[nIndex]["DataType"]
		
		-- 隔天重置
		if Task_StcInterval(nIndexEvent,nIndexType,1,4) then
			Task_SetStatistic(nIndexEvent,nIndexType,0,1)
			Task_SetStcTimestamp(nIndexEvent,nIndexType,0)
		end
		
		if not Task_ChkStcValue(nIndexEvent,nIndexType,">=",nLimit) then
			Task_AddStatistic(nIndexEvent,nIndexType,1,0)
			Task_SetStcTimestamp(nIndexEvent,nIndexType,0)
			if tAward[1]["tAward"][1]["Bag"] then
				-- 判断需要直接插入背包的物品
				-- RewardTemplate_Reward(tTreasureArea_MonsterDrop["Normal"][1][15])
				Item_AddNewItem(nItemId,"0 1 0 2880 1")		-- 微光星陨石*1  3009000
				User_TalkChannel2005(string.format(tTreasureArea_Text["Msg"]["GetReward"],1,Get_ItemtypeName(nItemId)))
				Sys_SaveActionFestivalLog(string.format(tTreasureArea_Log["InsertBag"],nItemId))
			else
				Monster_SysDropItem(nItemId)
				User_TalkChannel2005(string.format(tTreasureArea_Text["Msg"]["DropItem"],sMonsterName,1,Get_ItemtypeName(nItemId)))
			end
		end
	elseif tAward[1]["tAward"][1]["Bag"] then
		-- 判断需要直接插入背包的物品
		if nItemId == 3303481 then		-- 时效清心符*1   获得时激活24小时时效
			Item_AddNewItem(nItemId,"0 1 0 1440 1")
		elseif nItemId == 3303480 or nItemId == 3307085 then	-- 星陨石礼包 3303480   获得时激活2小时时效  3307085
			Item_AddNewItem(nItemId,"0 1 0 120 1")
		elseif nItemId == 3003124 or nItemId == 3303101 then	-- 3003124  免费强炼丹（赠）*1   or  六阳聚神丹碎片*1(赠)  3303101
			Item_AddNewItem(nItemId,"0 1 3")
		elseif nItemId == 3303483 or nItemId == 3307083 or nItemId == 3008186 or nItemId == 3008187 or nItemId == 3008188 or nItemId == 3307086 then	-- 3303483  潜龙灵石*1      3307083  神明玉 or 50 100 200气力值  3008186 3008187  3008188 3307086赤炼石幸运包
			Item_AddNewItem(nItemId,"0 1")
		else	-- 召唤券   神秘小钥匙   神秘大钥匙    幻界玄旗 3307244  激活60分钟时效 
			Item_AddNewItem(nItemId,"0 1 0 60 1")
		end
		User_TalkChannel2005(string.format(tTreasureArea_Text["Msg"]["GetReward"],1,Get_ItemtypeName(nItemId)))
		Sys_SaveActionFestivalLog(string.format(tTreasureArea_Log["InsertBag"],nItemId))
	else
		-- 单服限制判断
		-- 51581		-- 3000天石赠点兑换卡 掉落限制   6天1个
		local nGlobalId = tTreasureArea_MonsterDrop["Special"][1][17]["Global"]
		local nLimitDay = tTreasureArea_MonsterDrop["Special"][1][17]["Day"]
		local nDay = Get_SysDynaGlobalData(nGlobalId,0)
		local nDropData = Get_SysDynaGlobalData(nGlobalId,1)
		
		-- 51582		-- 冥界诏令兑换券 掉落限制  60天1个
		local nGlobalId_1 = tTreasureArea_MonsterDrop["Special"][1][18]["Global"]
		local nLimitDay_1 = tTreasureArea_MonsterDrop["Special"][1][18]["Day"]
		local nDay_1 = Get_SysDynaGlobalData(nGlobalId_1,0)
		local nDropData_1 = Get_SysDynaGlobalData(nGlobalId_1,1)
		
		-- 没有掉落过，最后一天 在瑶姬身上 100%出这个限量的奖励  值+1
		if nMonsterId == 3970 and nDay == nLimitDay then
			if nDropData < 1 then		-- 判断是否已掉落过
				nItemId = tTreasureArea_Cont[nGlobalId]
				Sys_SetSynaGlobalData(nGlobalId,1,1)
			end
		elseif nMonsterId == 3970 and nDay_1 == nLimitDay_1 then
			if nDropData_1 < 1 then		-- 判断是否已掉落过
				nItemId = tTreasureArea_Cont[nGlobalId_1]
				Sys_SetSynaGlobalData(nGlobalId_1,1,1)
			end
		end
		
		-- 直接掉落
		for i = 1, nNum do
			--天石兑换券直接掉进背包
			if nItemId == 3303485 or nItemId == 3303486 then 
				Item_AddNewItem(nItemId,"0 1")
				Sys_SaveActionFestivalLog(string.format(tTreasureArea_Log["InsertBag"],nItemId))
			else  
				Monster_SysDropItem(nItemId)
			end 
		end
		User_TalkChannel2005(string.format(tTreasureArea_Text["Msg"]["DropItem"],sMonsterName,nNum,Get_ItemtypeName(nItemId)))
		

		if nDropData < 1 or nDropData_1 < 1 then		-- 判断是否已掉落过
			-- 掉落天石兑换券 出全服公告
			if nItemId == 3303485 or nItemId == 3303486 then
				local sUserName = Get_UserName()
				Sys_SystemBroadcast(string.format(tTreasureArea_Text["Msg"]["EmoneyItem"],sUserName,Get_ItemtypeName(nItemId)))
			end
		end
	end
	
	if not (nItemId == 3303485 or nItemId == 3303486) then
		-- 小怪掉稀有奖池的奖励时，出全服公告
		if (nMonsterId >= 3973 and nMonsterId <= 3975) or nMonsterId == 4709 or (nMonsterId >= 4710 and nMonsterId <= 4713) then
			if sType == "Special" then
				local sUserName = Get_UserName()
				Sys_SystemBroadcast(string.format(tTreasureArea_Text["Msg"]["BroadCast"],sUserName,Get_ItemtypeName(nItemId)))
			end
		end
	end
	User_EffectAdd(tTreasureArea_Effect[1],tTreasureArea_Effect[2])
end

function TreasureArea_TeamReward(nCul,nNowUserId)
	-- 击杀BOSS的玩家所在队伍的所有成员获得%d修行值
	local nUserId = nNowUserId or Get_UserId()
	User_AddCultivation(nCul,nUserId)
	User_TalkChannel2005(string.format(tTreasureArea_Text["Msg"]["TeamReward"],Get_UserName(nUserId),Get_MonsterName(),nCul),nUserId)
	Sys_SaveActionFestivalLog(string.format(tTreasureArea_Log["TeamReward"],nCul),nUserId)
end

-- 幻界副本怪物死亡触发
function TreasureArea_MagicWorldMonster()
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	local nMonsterId = Get_MonsterType()
	local sMonsterName = tTreasureArea_Text["BossName"][nMonsterId]
	Monster_Death(nMonsterId,nMapId)
	
	-- 掉落奖励
	local sType = "Item"
	local nItemId = tTreasureArea_MagicWorld["MonsDrop"][nMonsterId]
	-- 直接掉金币
	if nMonsterId == 4716 then
		sType = "Money"
	end
	
	-- 每只怪死亡刷3个礼包
	if sType == "Item" then
		Monster_SysDropItem(nItemId)
		Monster_SysDropItem(nItemId)
		Monster_SysDropItem(nItemId)
	-- elseif sType == "Money" then
		-- -- 掉落随机数量的三堆金币
		-- for i = 1, 3 do
			-- local nRandMoney = math.random(1000,10000)
			-- Monster_SysDropMoney(nRandMoney)
		-- end
	end
end

-- Boss伤害排名奖励
function TreasureArea_BossDamgRank(nServerId,nUserId,nRank,nDmg,nMonsterId)
	local nRankTotal = tTreasureArea_SendMail["RankTotal"]
	for nNum = 1, nRankTotal do
		if nNum == nRank then
			local nActionId = tTreasureArea_SendMail[nMonsterId][nRank]
			local nExistDay = tTreasureArea_SendMail["ExistDay"]
			local sSender = tTreasureArea_Text["Hurt"]["Sender"]
			local sMonsterName = tTreasureArea_Text["BossName"][nMonsterId]
			local sTitle = string.format(tTreasureArea_Text["Hurt"]["Title"],sMonsterName)
			local sRewardName = tTreasureArea_Text["Hurt"][nMonsterId][nActionId]
			local sContent = string.format(tTreasureArea_Text["Hurt"]["Content"],nRank,sRewardName)
			Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent,nServerId)
			-- Sys_SaveActionFestivalLog(string.format(tTreasureArea_Log["SendMail"],nRank,nActionId,nDmg),nUserId)
		end
	end
end

-- 判断该玩家是否可以获得参与礼包
function TreasureArea_ChkTempLimit(nUserId)
	if tTreasureArea_TempTable[nUserId] == nil then
		tTreasureArea_TempTable[nUserId] = {}
		tTreasureArea_TempTable[nUserId][1] = nUserId
		tTreasureArea_TempTable[nUserId][2] = 0
		return true
	else
		if tTreasureArea_TempTable[nUserId][2] >= 5 then
			return false
		else
			return true
		end
	end
end

-- 给玩家加次数
function TreasureArea_AddTempLimit(nUserId)
	--奖励被预支
	local nEvent17 = tTreasureArea_Stc[17]["EventType"]
	local nType17 = tTreasureArea_Stc[17]["DataType"]
	if Task_ChkStcValue(nEvent17,nType17,"==",1,nUserId) then
		return false
	end

	if tTreasureArea_TempTable[nUserId] == nil then
		tTreasureArea_TempTable[nUserId] = {}
		tTreasureArea_TempTable[nUserId][1] = nUserId
		tTreasureArea_TempTable[nUserId][2] = 1
		return true
	else
		if tTreasureArea_TempTable[nUserId][2] >= 5 then
			return false
		else
			tTreasureArea_TempTable[nUserId][2] = tTreasureArea_TempTable[nUserId][2] + 1
			return true
		end
	end
end

-- 重置临时表
function TreasureArea_ClearTempTable()
	tTreasureArea_TempTable = {}
	tTreasureArea_TempLuckTable = {}
end

-- Boss参与奖励
function TreasureArea_KillBossJoin(nServerId,nUserId,nRank,nDmg,nMonsterId)
	if nMonsterId ~= 3970 then
		-- 判断是否可获得
		if not TreasureArea_ChkTempLimit(nUserId) then
			return
		end
		
		-- 成功加掩码
		if TreasureArea_AddTempLimit(nUserId) then
			local nActionId = tTreasureArea_SendMail["Join"][1]
			local sMonsterName = tTreasureArea_Text["BossName"][nMonsterId]
			local sRewardName = tTreasureArea_Text["Join"]["Item"][1]
			
			local nExistDay = tTreasureArea_SendMail["ExistDay"]
			local sSender = tTreasureArea_Text["Join"]["Sender"]
			local sTitle = string.format(tTreasureArea_Text["Join"]["Title"],sMonsterName)
			local sContent = string.format(tTreasureArea_Text["Join"]["Content_1"],sMonsterName)
			Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent,nServerId)
			-- Sys_SaveActionFestivalLog(string.format(tTreasureArea_Log["SendMail"],11,nActionId,1),nUserId)
		end
		
	else
		-- 妖后瑶姬  给高级参与礼包，不限制次数
		local nActionId = tTreasureArea_SendMail["Join"][2]
		local sMonsterName = tTreasureArea_Text["BossName"][nMonsterId]
		local sRewardName = tTreasureArea_Text["Join"]["Item"][2]
		
		local nExistDay = tTreasureArea_SendMail["ExistDay"]
		local sSender = tTreasureArea_Text["Join"]["Sender"]
		local sTitle = string.format(tTreasureArea_Text["Join"]["Title"],sMonsterName)
		local sContent = string.format(tTreasureArea_Text["Join"]["Content"],sRewardName)
		
		Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent,nServerId)
		-- Sys_SaveActionFestivalLog(string.format(tTreasureArea_Log["SendMail"],11,nActionId,1),nUserId)
	end
end

-- 小boss掉落
function TreasureArea_SmallBoss()
	local nMonsterId = Get_MonsterType()
	local sMonsterName = tTreasureArea_Text["BossName"][nMonsterId]
	local nMapId = tTreasureArea_Cont["MapId"]
	
	local nUserId = Get_UserId()
	
	-- 新增霸主玩法
	-- 记录玩家战绩积分 在打宝区每次死亡会损失20%
	local nNewEvent = tTreasureArea_Stc[11]["EventType"]
	local nNewType = tTreasureArea_Stc[11]["DataType"]
	-- 隔天重置
	if Task_StcInterval(nNewEvent,nNewType,1,4) then
		Task_SetStatistic(nNewEvent,nNewType,0,1)
		Task_SetStcTimestamp(nNewEvent,nNewType,0)
	end
	-- 积分规则：小怪1分，小BOSS 30分，大BOSS 300分，瑶姬妖后 1000分
	local nAddData = 30
	
	-- 限制进行掩码和记录排行的操作 时间
	if not (Sys_ChkDayTime(tTreasureArea_Cont["LimitTime"][3]) or Sys_ChkDayTime(tTreasureArea_Cont["LimitTime"][4])) then
		Task_AddStatistic(nNewEvent,nNewType,nAddData,0)
		Task_SetStcTimestamp(nNewEvent,nNewType,0)
		local nNewData = Get_UserStatisticValue(nNewEvent,nNewType)
		TreasureArea_SetRankList(nNewData,"Rank")
	end

	-- 随机掉落奖励
	if nMonsterId == 3981 or nMonsterId == 3986 then
		-- 只掉一个物品
		local nItemId = tTreasureArea_MonsterDrop["SmallBoss"][nMonsterId]["DropItem"]
		Monster_SysDropItem(nItemId)
		User_TalkChannel2005(string.format(tTreasureArea_Text["Msg"]["DropItem"],sMonsterName,1,Get_ItemtypeName(nItemId)))
	
	elseif nMonsterId == 3985 then
		-- -- 掉金币
		-- local nMoney = tTreasureArea_MonsterDrop["SmallBoss"][nMonsterId]["DropMoney"]
		-- local nNum = tTreasureArea_MonsterDrop["SmallBoss"][nMonsterId]["Times"]
		-- for i = 1, nNum do
			-- Monster_SysDropMoney(nMoney)
		-- end
		-- User_TalkChannel2005(tTreasureArea_Text["Msg"]["DropMoney"])
	elseif nMonsterId == 3992 then	
	else
		local nFlag,tAward = Probabil_RandomAward(tTreasureArea_MonsterDrop["SmallBoss"],nMonsterId)
		local nItemId = tAward[1]["tAward"][1]["Item_1"]
		local nNum = tAward[1]["tAward"][1]["Num"] or 1
		for i = 1, nNum do
			Monster_SysDropItem(nItemId)
		end
		User_TalkChannel2005(string.format(tTreasureArea_Text["Msg"]["DropItem"],sMonsterName,nNum,Get_ItemtypeName(nItemId)))
	end
	User_EffectAdd(tTreasureArea_Effect[1],tTreasureArea_Effect[2])

	-- 随机获得buff状态
	local nBattleLevel = Get_UserBattleLevel(nUserId)
	local nType = 1
	if nBattleLevel >= 380 then
		nType = 2
	end
	
	local nFlag,tAward = Probabil_RandomAward(tTreasureArea_MonsterDrop["BUFF"],nType)
	local nBuffIndex = tAward[1]["tAward"][1]["Item_1"]
	
	if nBuffIndex == 1 then
		local nStatus_1 = tTreasureArea_BUFF["Status"][nBuffIndex][1]
		local nStatus_2 = tTreasureArea_BUFF["Status"][nBuffIndex][2]
		local nPower_1 = tTreasureArea_BUFF["Num"][nStatus_1]
		local nPower_2 = tTreasureArea_BUFF["Num"][nStatus_2]
		local nStatusTime = tTreasureArea_BUFF["Time"]
		
		if User_ChkRoleStatus(nStatus_1,nUserId) or User_ChkRoleStatus(nStatus_2,nUserId) then
			return
		end
		
		User_DelRoleStatus(nStatus_1,nUserId)
		User_DelRoleStatus(nStatus_2,nUserId)
		
		User_AddRoleStatus(nStatus_1,nPower_1,nStatusTime,0,nStatusTime,nStatusTime,0,0,0,nUserId)
		User_AddRoleStatus(nStatus_2,nPower_2,nStatusTime,0,nStatusTime,nStatusTime,0,0,0,nUserId)
		User_TalkChannel2005(tTreasureArea_Text["Msg"]["Status"][nStatus_1])
	else
		local nStatus = tTreasureArea_BUFF["Status"][nBuffIndex]
		local nPower = tTreasureArea_BUFF["Num"][nStatus]
		local nStatusTime = tTreasureArea_BUFF["Time"]
		
		if User_ChkRoleStatus(nStatus,nUserId) then
			return
		end	
		
		User_DelRoleStatus(nStatus,nUserId)
		User_AddRoleStatus(nStatus,nPower,nStatusTime,0,nStatusTime,nStatusTime,0,0,0,nUserId)
		User_TalkChannel2005(tTreasureArea_Text["Msg"]["Status"][nStatus])
		
		if nStatus == 138 then
			User_AddLife(nPower,nUserId)
		end
	end
	
	-- 刷出璇玑宝箱
	TreasureArea_KillMonsterFreshBox(nMonsterId)
	
end

-- 杀怪刷宝箱
function TreasureArea_KillMonsterFreshBox(nMonsterId)
	local nUserId = Get_UserId()
	local nGlobalId = tTreasureArea_FreshBox["GlobalId"]
	local nReceivedPos = tTreasureArea_FreshBox["Received"]
	if Get_SysDynaGlobalData(nGlobalId,nReceivedPos) > 0 then
		return
	end
	if Sys_Random(tTreasureArea_FreshBox["Random"]["StartNum"],tTreasureArea_FreshBox["Random"]["EndNum"]) then
		local nMapId = Get_UserMapId(nUserId)
		local nBossPosX = Get_MonsterPosX()
		local nBossPosY = Get_MonsterPosY()
		TreasureArea_FreshBox(tTreasureArea_FreshBox["BoxId"],nMapId,nBossPosX,nBossPosY)
	end
end

-- 刷新璇玑宝箱 
function TreasureArea_FreshBox(nNpcId,nMapId,nPosX,nPosY)
	for i,v in pairs(tTreasureArea_FreshBox["MapId"]) do
		if Get_NpcMapID(nNpcId) == v then
			return
		end
	end
	local nGlobalId = tTreasureArea_FreshBox["GlobalId"]
	local nReceivedPos = tTreasureArea_FreshBox["Received"]
	local nTimePos = tTreasureArea_FreshBox["Time"]
	Sys_SetSynaGlobalData(nGlobalId,nReceivedPos,0)
	Sys_SetSynaGlobalData(nGlobalId,nTimePos,os.time())
	Npc_MoveNpcPos(nNpcId,nMapId,nPosX,nPosY)
	Map_UserExeFunc(nMapId,-1,string.format("TreasureArea_MapInvite</N>%d</N>%d</N>%d",nMapId,nPosX,nPosY))
end

--地图邀请
function TreasureArea_MapInvite(nMapId,nPosX,nPosY,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local sMapName = Get_MapName(nMapId)
	local sFunc = string.format("TreasureArea_MapCross</N>%d</N>%d</N>%d</N>%d",nMapId,nPosX,nPosY,nUserId)
	local sText = string.format(tTreasureArea_Text["MsgBox"]["MapInvite"],sMapName,nPosX,nPosY)
	Sys_MsgBox(sText,sFunc,nil,nUserId)
end	

-- 地图传送
function TreasureArea_MapCross(nMapId,nPosX,nPosY,nUserId)
	if Get_UserMapId(nUserId) ~= nMapId then
		return
	end
	User_UserRandBoundTransByShenlongIsland(nMapId,nPosX,nPosY,5,5,0,nUserId)
end

--验证码
function TreasureArea_ChkCaptcha(nNpcId)
	local nGlobalId = tTreasureArea_FreshBox["GlobalId"]
	local nReceivedPos = tTreasureArea_FreshBox["Received"]
	local nTimePos = tTreasureArea_FreshBox["Time"]
	local nCD = tTreasureArea_FreshBox["CD"]
	local nReceived = Get_SysDynaGlobalData(nGlobalId,nReceivedPos)
	local nTime = Get_SysDynaGlobalData(nGlobalId,nTimePos)
	local nNowTime = os.time()
	local nUserId = Get_UserId()
	-- 已被领走
	if nReceived >= 1 then
		Sys_MsgBox(tTreasureArea_Text["MsgBox"]["Received"],nil,nil,nUserId)
		return
	end
	-- 时间未到
	local nCrossTime = nNowTime - nTime
	if nCrossTime < nCD then
		Sys_MsgBox(string.format(tTreasureArea_Text["MsgBox"]["CD"],nCD - nCrossTime),nil,nil,nUserId)
		return
	 end
	
		
	-- 背包判断
	local nSpace = RewardTemplate_GetRandomSpace(tTreasureArea_AwardItem["BossBox"],1,nUserId)
	if not User_CheckLeftSpace(nSpace,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	local nRandNum = math.random(100,999)
	
	User_SetVarData(1,nRandNum)
	
	local sStr = ""
	local sText = tTreasureArea_Text[21385]["InPut"]
	sStr = string.format(tTreasureArea_Text[21385]["Text222"],Get_UserVarData(1))
	Sys_DialogText(tTreasureArea_Text[21385]["Text221"])
	Sys_DialogText(sStr)
	Sys_DialogText(tTreasureArea_Text[21385]["Text223"])
	
	Sys_DialogOptEdit(sText,3,string.format("TreasureArea_ChkPsw</N>21385</N>%d",nRandNum))
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

function TreasureArea_ChkCaptchaFalse(nNpcId)
	local nGlobalId = tTreasureArea_FreshBox["GlobalId"]
	local nReceivedPos = tTreasureArea_FreshBox["Received"]
	local nTimePos = tTreasureArea_FreshBox["Time"]
	local nCD = tTreasureArea_FreshBox["CD"]
	local nReceived = Get_SysDynaGlobalData(nGlobalId,nReceivedPos)
	local nTime = Get_SysDynaGlobalData(nGlobalId,nTimePos)
	local nNowTime = os.time()
	local nUserId = Get_UserId()
	-- 已被领走
	if nReceived >= 1 then
		Sys_MsgBox(tTreasureArea_Text["MsgBox"]["Received"],nil,nil,nUserId)
		return
	end
	-- 时间未到
	local nCrossTime = nNowTime - nTime
	if nCrossTime < nCD then
		Sys_MsgBox(string.format(tTreasureArea_Text["MsgBox"]["CD"],nCD - nCrossTime),nil,nil,nUserId)
		return
	 end
	
	
	-- 背包判断
	local nSpace = RewardTemplate_GetRandomSpace(tTreasureArea_AwardItem["BossBox"],1,nUserId)
	if not User_CheckLeftSpace(nSpace,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	-- local nRandNum = math.random(100,999)
	
	-- User_SetVarData(1,nRandNum)
	
	local sStr = ""
	local sText = tTreasureArea_Text[21385]["InPut"]
	sStr = string.format(tTreasureArea_Text[21385]["Text312"],Get_UserVarData(1))
	Sys_DialogText(tTreasureArea_Text[21385]["Text311"])
	Sys_DialogText(sStr)
	
	Sys_DialogOptEdit(sText,3,string.format("TreasureArea_ChkPsw</N>21385</N>%d",Get_UserVarData(1)))
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

function TreasureArea_ChkPsw(nNpcId,nRandNum)
	
	if tonumber(Get_SysAcceptStr()) ~= nRandNum then
		TreasureArea_ChkCaptchaFalse(nNpcId)
		return
	end
	
	TreasureArea_OpenXuanJiBox(nNpcId)
end

-- 打开璇玑宝箱
function TreasureArea_OpenXuanJiBox(nNpcId)
	local nGlobalId = tTreasureArea_FreshBox["GlobalId"]
	local nReceivedPos = tTreasureArea_FreshBox["Received"]
	local nTimePos = tTreasureArea_FreshBox["Time"]
	local nCD = tTreasureArea_FreshBox["CD"]
	local nReceived = Get_SysDynaGlobalData(nGlobalId,nReceivedPos)
	local nTime = Get_SysDynaGlobalData(nGlobalId,nTimePos)
	local nNowTime = os.time()
	local nUserId = Get_UserId()
	-- 已被领走
	if nReceived >= 1 then
		Sys_MsgBox(tTreasureArea_Text["MsgBox"]["Received"],nil,nil,nUserId)
		return
	end
	-- 时间未到
	local nCrossTime = nNowTime - nTime
	if nCrossTime < nCD then
		Sys_MsgBox(string.format(tTreasureArea_Text["MsgBox"]["CD"],nCD - nCrossTime),nil,nil,nUserId)
		return
	end
	-- 赠点数量
	-- if Get_UserMonoEMoney(nUserId) + 2000 > G_User_MaxEmoneyMono then
		-- Sys_MsgBox(tTreasureArea_Text["MsgBox"]["MonoEMoneyFull"],nil,nil,nUserId)
		-- return
	-- end		
	-- 背包判断
	-- local nSpace = RewardTemplate_GetRandomSpace(tTreasureArea_AwardItem["BossBox"],1,nUserId)
	-- if not User_CheckLeftSpace(nSpace,nUserId) then
		-- LinkNpcGossipFunc_New(nNpcId,"2-1")
		-- return
	-- end
	Sys_SetSynaGlobalData(nGlobalId,nReceivedPos,1)
	
	local nMapId = Get_UserMapId(nUserId)
	local nPosX = Get_NpcPositionX(nNpcId)
	local nPosY = Get_NpcPositionY(nNpcId)
	
	Npc_MoveNpcPos(nNpcId,5000,100,100)
	
	--刷宝箱怪
	TreasureArea_RefreshBoxMonster(nMapId,nPosX,nPosY)
	
	-- RewardTemplate_NewRandom(tTreasureArea_AwardItem["BossBox"],1,nUserId)
end

--刷宝箱怪
function TreasureArea_RefreshBoxMonster(nMapId,nPosX,nPosY)
	local nMonsterId = tTreasureArea_FreshBox["RefreshBoxMonster"]["MonsterId"]
	local nGenId = tTreasureArea_FreshBox["RefreshBoxMonster"]["GenId"]
	
	--判断是否已经有怪物
	local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
	
	if nMonsterNum > 0 then
		return
	end
	
	Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)
end

--宝箱怪掉落
function TreasureArea_KillBoxMonster(nMonsterId)
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	
	Monster_Death(nMonsterId,nMapId)
	
	RewardTemplate_NewRandom(tTreasureArea_AwardItem["BossBox"],1,nUserId)
end

-- 使用冥界诏令礼盒随机1种冥界诏令
function TreasureArea_UseGhostdomPack(nItemId)
	-- 判断物品存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRandomSpace(TreasureArea_RewardItem["RandomPack"],nItemId) - 1
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tTreasureArea_Text["Msg"]["Full"],nSpace))
		return false
	end
	
	-- 删礼包·给奖励
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(TreasureArea_RewardItem["RandomPack"],nItemId)
		
		TreasureArea_RecordBigPrize(1,nItemId)
		return true
	end
end

------------------------------------------------时间自检逻辑-------------------------------------------------
-- 刷新boss
-- 3976 	晶魄血妖
-- 3977 	禁天邪兽	
-- 3978 	啸海狂魔
-- 3971		异域邪龙
-- 3970	瑶姬妖后
function TreasureArea_BrushBoss()
	-- 全天修改为10:00-23:59
	if not Sys_ChkDayTime(tTreasureArea_Cont["RealDayTime"]) then
		return
	end
	
	-- 根据当前时间判断刷新哪个boss
	local nChoose = 0
	if Sys_ChkDayTime(tTreasureArea_Cont["BrushTime"][5]) or Sys_ChkDayTime(tTreasureArea_Cont["BrushTime"][6]) then
		nChoose = 5
	elseif Sys_ChkMinute(tTreasureArea_Cont["BrushTime"][1]) then
		nChoose = 1
	elseif Sys_ChkMinute(tTreasureArea_Cont["BrushTime"][2]) then
		nChoose = 2
	elseif Sys_ChkMinute(tTreasureArea_Cont["BrushTime"][3]) then
		nChoose = 3
	elseif Sys_ChkMinute(tTreasureArea_Cont["BrushTime"][4]) then
		nChoose = 4
	else
		return
	end
	
	if nChoose ~= 0 then
		local nMonsterId = tTreasureArea_Cont["BossId"][nChoose]
		-- 移走 传送阵 
		local nMapId = tTreasureArea_Cont["MapId"]
		local nGenId = tTreasureArea_Cont[nMonsterId]["GenId"]
		local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
		
		if nMonsterNum <= 0 then
			if tTreasureArea_Cont[nMonsterId]["TransNpc"] ~= nil then
				local nNpcId = tTreasureArea_Cont[nMonsterId]["TransNpc"]
				local nNpcMapId,nPosX,nPosY = NpcPosition_Get(nNpcId)
				
				local nMapId_1 = 5000
				local nNpcPosX = 100
				local nNpcPosY = 100
				if nNpcMapId ~= nMapId_1 then
					Npc_MoveNpcPos(nNpcId,nMapId_1,nNpcPosX,nNpcPosY)
				end
			end
			
			local nPosX = tTreasureArea_Cont[nMonsterId]["CellX"]
			local nPosY = tTreasureArea_Cont[nMonsterId]["CellY"]
			local nGlobalId = tTreasureArea_Cont["BossGlobal"]
			if nMonsterId == 3978 then
				local nRand = math.random(1,3)
				nPosX = tTreasureArea_Cont[nMonsterId]["RandPos"][nRand][1]
				nPosY = tTreasureArea_Cont[nMonsterId]["RandPos"][nRand][2]			
				Sys_SetSynaGlobalData0(nGlobalId,nPosX)
				Sys_SetSynaGlobalData1(nGlobalId,nPosY)
			elseif nMonsterId == 3970 then
				local nRand = math.random(1,5)
				nPosX = tTreasureArea_Cont[nMonsterId]["RandPos"][nRand][1]
				nPosY = tTreasureArea_Cont[nMonsterId]["RandPos"][nRand][2]
				Sys_SetSynaGlobalData2(nGlobalId,nPosX)
				Sys_SetSynaGlobalData3(nGlobalId,nPosY)
				
				-- 判断地图内是否有宝箱怪  刷大boss前就删掉
				for i,v in pairs(tTreasureArea_Cont["BoxMonster"]) do
					local nNum = Get_SysTempData(1,nMapId,v)
					if nNum > 0  then
						for j = 1,nNum do
							Monster_DelMonster(nMapId,v)
							Monster_Death(v,nMapId)
						end
					end
				end
			end
			
			Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId,0,0,0,1)
			
			-- 记录boss刷新的时间
			-- 5个boss 分别用 0-4段   boss刷新时间用 “data” 击杀时间用 “str”  时间差用 “time” 记录
			local nGlobalId = tTreasureArea_Cont["Global"][1]
			local nPos = tTreasureArea_Cont["Global"][nMonsterId]
			local nTime = os.time()
			Sys_SetSynaGlobalData(nGlobalId,nPos,tonumber(nTime))
			
			-- 全游服广播
			local sMonsterName = tTreasureArea_Text["BossName"][nMonsterId]
			Sys_SystemBroadcast(string.format(tTreasureArea_Text["Msg"]["BossShow"],sMonsterName,nPosX,nPosY))
		end
	end
end

-- 上线  设置掩码  人品值设置为200（只设置一次）
function TreasureArea_LogIn()
	-- 潜龙渊取消了，需要有一条脚本把潜龙渊的人移出来，更新的时候
	-- Map_UserExeFunc(10166,-1,"TreasureArea_ChangePoint")
	
	local nLimitEvent = tTreasureArea_Stc[3]["EventType"]
	local nLimitType = tTreasureArea_Stc[3]["DataType"]
	
	if Task_ChkStcValue(nLimitEvent,nLimitType,">=",1) then
		return
	end
	
	Task_AddStatistic(nLimitEvent,nLimitType,1,1)
	Task_SetStcTimestamp(nLimitEvent,nLimitType,0)

	-- 设置玩家人品值
	-- 人品值初始值 由200 改为 100
	local nEvent = tTreasureArea_Stc[2]["EventType"]
	local nType = tTreasureArea_Stc[2]["DataType"]
	Task_SetStatistic(nEvent,nType,100,1)
	Task_SetStcTimestamp(nEvent,nType,0)
end

function TreasureArea_LogInChkLuck()
	local nEvent17 = tTreasureArea_Stc[17]["EventType"]
	local nType17 = tTreasureArea_Stc[17]["DataType"]
	local nUserId = Get_UserId()
	--隔7天重置  预支6天幸运奖励
	if Task_StcInterval(nEvent17,nType17,7,4) then
		Task_SetStatistic(nEvent17,nType17,0,1)
		Task_SetStcTimestamp(nEvent17,nType17,0)
	end
	
	if Task_ChkStcValue(nEvent17,nType17,"==",1,nUserId) then
		if tTreasureArea_TempLuckTable[nUserId] == nil then
			tTreasureArea_TempLuckTable[nUserId] = {}
			tTreasureArea_TempLuckTable[nUserId][1] = nUserId
			tTreasureArea_TempLuckTable[nUserId][2] = 1
		end
	else
		return
	end
end

-- 潜龙渊取消了，需要有一条脚本把潜龙渊的人移出来，更新的时候
function TreasureArea_ChangePoint(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	User_UserRandBoundTransByShenlongIsland(10250,1011,1288,5,5,0,nUserId)
	-- 设置记录点		
	-- User_RecordPoint(10250,1011,1288,nUserId)
end

-- 天石兑换卡限制 动态码 +1天  6 或60天到期 则清空
function TreasureArea_SetStcAndGlobal()
	-- 3000天石赠点兑换卡 掉落限制   6天1个
	local nGlobalId_1 = tTreasureArea_Cont["Global"][2]
	local nDay_1 = Get_SysDynaGlobalData(nGlobalId_1,0)
	-- 判断限量周期
	if nDay_1 >= 6 then
		Sys_SetSynaGlobalData(nGlobalId_1,0,0)
		Sys_SetSynaGlobalData(nGlobalId_1,1,0)
	else
		nDay_1 = nDay_1 + 1
		Sys_SetSynaGlobalData(nGlobalId_1,0,nDay_1)
	end
	
	-- 3000天石兑换卡 掉落限制  60天1个
	local nGlobalId_2 = tTreasureArea_Cont["Global"][3]
	local nDay_2 = Get_SysDynaGlobalData(nGlobalId_2,0)
	-- 判断限量周期
	if nDay_2 >= 60 then
		Sys_SetSynaGlobalData(nGlobalId_2,0,0)
		Sys_SetSynaGlobalData(nGlobalId_2,1,0)
	else
		nDay_2 = nDay_2 + 1
		Sys_SetSynaGlobalData(nGlobalId_2,0,nDay_2)
	end
	
	-- 51640  新增稀有奖池中的三种奖励 单服每日限量
	local nGlobalId_3 = tTreasureArea_Cont["Global"][5]
	Sys_ResetAllSynaGlobalData(nGlobalId_3)
end

-- 每日 23:59时 截止计算除魔战绩
function TreasureArea_ClearRankList()
	local nGlobalIdChk = tTreasureArea_Cont["Rank"][1][2]
	local nPlayerIdChk = Get_SysDynaGlobalData(nGlobalIdChk, 1)
	if nPlayerIdChk == 0 or nPlayerIdChk == nil then
		return
	end
	-- 积分榜 发排名奖励  
	for j = 1, 10 do
		local nGlobalId = 0
		local nPlayerId = 0
		if j <= 5 then
			nGlobalId = tTreasureArea_Cont["Rank"][1][2]
			nPlayerId = Get_SysDynaGlobalData(nGlobalId, j)
		else
			nGlobalId = tTreasureArea_Cont["Rank"][2][2]
			nPlayerId = Get_SysDynaGlobalData(nGlobalId, j - 5)
		end
		
		if nPlayerId ~= nil and nPlayerId ~= 0 then
			local nActionId = tTreasureArea_SendMail["Rank"]["Action"][j]
			local nStrength = tTreasureArea_SendMail["Rank"]["Strength"][j]
			local nExistDay = tTreasureArea_SendMail["Rank"]["ExistDay"]
			local sSender = tTreasureArea_Text["MailMsg"]["Sender"]
			local sTitle = tTreasureArea_Text["MailMsg"]["Title"]
			local sContent = string.format(tTreasureArea_Text["MailMsg"]["Content"], j, nStrength)
			Sys_SendMail(nPlayerId, 0, 0, nActionId, 0, nExistDay, sSender, sTitle, sContent)
		end
	end
	
	-- 祭神排行榜 发排名奖励  
	for k = 1, 10 do
		local nJadeGlobalId = 0
		local nJadePlayerId = 0
		if k <= 5 then
			nJadeGlobalId = tTreasureArea_Cont["JadeRank"][1][2]
			nJadePlayerId = Get_SysDynaGlobalData(nJadeGlobalId, k)
		else
			nJadeGlobalId = tTreasureArea_Cont["JadeRank"][2][2]
			nJadePlayerId = Get_SysDynaGlobalData(nJadeGlobalId, k - 5)
		end
		
		if nJadePlayerId ~= nil and nJadePlayerId ~= 0 then
			local nJadeActionId = tTreasureArea_SendMail["JadeRank"]["Action"][k]
			local nJadeExistDay = tTreasureArea_SendMail["JadeRank"]["ExistDay"]
			local sJadeSender = tTreasureArea_Text["JadeMail"]["Sender"]
			local sJadeTitle = tTreasureArea_Text["JadeMail"]["Title"]
			local sReward = tTreasureArea_Text[22560]["RewardTip"][k]
			local sJadeContent = string.format(tTreasureArea_Text["JadeMail"]["Content"][3],k,sReward)
			Sys_SendMail(nJadePlayerId, 0, 0, nJadeActionId, 0, nJadeExistDay, sJadeSender, sJadeTitle, sJadeContent)
		end
	end
	
	-- 重置昨日排行榜，清空当天的排行榜
	for i = 1, 10 do
		if i <= 5 then
			local nTopKillNumLast = Get_SysDynaGlobalData(tTreasureArea_Cont["Rank"][1][1], i)
			local sPlayerNameLast = Get_SysDynaGlobalDataStr(tTreasureArea_Cont["Rank"][1][1], i)
			local nPlayerIdLast = Get_SysDynaGlobalData(tTreasureArea_Cont["Rank"][1][2], i)
			local sPlayerSynNameLast = Get_SysDynaGlobalDataStr(tTreasureArea_Cont["Rank"][1][2], i)
			local nPlayerSynIdLast = Get_SysDynaGlobalTime(tTreasureArea_Cont["Rank"][1][2], i)
			-- 赋值昨日排行榜
			Sys_SetSynaGlobalData(tTreasureArea_Cont["LastRank"][1][1], i, nTopKillNumLast)
			Sys_SetSynaGlobalDataStr(tTreasureArea_Cont["LastRank"][1][1], i, sPlayerNameLast)
			Sys_SetSynaGlobalData(tTreasureArea_Cont["LastRank"][1][2], i, nPlayerIdLast)
			Sys_SetSynaGlobalDataStr(tTreasureArea_Cont["LastRank"][1][2], i, sPlayerSynNameLast)
			Sys_SetSynaGlobalTime(tTreasureArea_Cont["LastRank"][1][2], i, nPlayerSynIdLast)
		else
			local nTopKillNumLast = Get_SysDynaGlobalData(tTreasureArea_Cont["Rank"][2][1], i - 5)
			local sPlayerNameLast = Get_SysDynaGlobalDataStr(tTreasureArea_Cont["Rank"][2][1], i - 5)
			local nPlayerIdLast = Get_SysDynaGlobalData(tTreasureArea_Cont["Rank"][2][2], i - 5)
			local sPlayerSynNameLast = Get_SysDynaGlobalDataStr(tTreasureArea_Cont["Rank"][2][2], i - 5)
			local nPlayerSynIdLast = Get_SysDynaGlobalTime(tTreasureArea_Cont["Rank"][2][2], i - 5)
			-- 赋值昨日排行榜
			Sys_SetSynaGlobalData(tTreasureArea_Cont["LastRank"][2][1], i - 5, nTopKillNumLast)
			Sys_SetSynaGlobalDataStr(tTreasureArea_Cont["LastRank"][2][1], i - 5, sPlayerNameLast)
			Sys_SetSynaGlobalData(tTreasureArea_Cont["LastRank"][2][2], i - 5, nPlayerIdLast)
			Sys_SetSynaGlobalDataStr(tTreasureArea_Cont["LastRank"][2][2], i - 5, sPlayerSynNameLast)
			Sys_SetSynaGlobalTime(tTreasureArea_Cont["LastRank"][2][2], i - 5, nPlayerSynIdLast)
		end
	end
	
	-- 清空昨日的排行榜
	Sys_ResetAllSynaGlobalData(tTreasureArea_Cont["Rank"][1][1])
	Sys_ResetAllSynaGlobalData(tTreasureArea_Cont["Rank"][1][2])
	Sys_ResetAllSynaGlobalData(tTreasureArea_Cont["Rank"][2][1])
	Sys_ResetAllSynaGlobalData(tTreasureArea_Cont["Rank"][2][2])
	
	Sys_ResetAllSynaGlobalDataStr(tTreasureArea_Cont["Rank"][1][1])
	Sys_ResetAllSynaGlobalDataStr(tTreasureArea_Cont["Rank"][1][2])
	Sys_ResetAllSynaGlobalDataStr(tTreasureArea_Cont["Rank"][2][1])
	Sys_ResetAllSynaGlobalDataStr(tTreasureArea_Cont["Rank"][2][2])
	
	Sys_ResetAllSynaGlobalTime(tTreasureArea_Cont["Rank"][1][1])
	Sys_ResetAllSynaGlobalTime(tTreasureArea_Cont["Rank"][1][2])
	Sys_ResetAllSynaGlobalTime(tTreasureArea_Cont["Rank"][2][1])
	Sys_ResetAllSynaGlobalTime(tTreasureArea_Cont["Rank"][2][2])
	
	-- 清空祭神排行榜
	Sys_ResetAllSynaGlobalData(tTreasureArea_Cont["JadeRank"][1][1])
	Sys_ResetAllSynaGlobalData(tTreasureArea_Cont["JadeRank"][1][2])
	Sys_ResetAllSynaGlobalData(tTreasureArea_Cont["JadeRank"][2][1])
	Sys_ResetAllSynaGlobalData(tTreasureArea_Cont["JadeRank"][2][2])
	
	Sys_ResetAllSynaGlobalDataStr(tTreasureArea_Cont["JadeRank"][1][1])
	Sys_ResetAllSynaGlobalDataStr(tTreasureArea_Cont["JadeRank"][1][2])
	Sys_ResetAllSynaGlobalDataStr(tTreasureArea_Cont["JadeRank"][2][1])
	Sys_ResetAllSynaGlobalDataStr(tTreasureArea_Cont["JadeRank"][2][2])
	
	--清空每日boss掉落限制
	local nExtraGlobal = tTreasureArea_ExtraDrop["Global"]
	Sys_SetSynaGlobalData0(nExtraGlobal,0)
	
end

-- 服务器启动触发  刷出宝箱(12个小宝箱，4个大宝箱)
function TreasureArea_ServerStart()
	for i,v in pairs(tTreasureArea_Cont["BoxNpc"]) do
		local nNpcMapId,nPosX,nPosY = NpcPosition_Get(v)
		local nMapId = tTreasureArea_Cont["MapId"]
		if nNpcMapId ~= nMapId then
			local nRand = math.random(1,4)
			local nNewPosX = tTreasureArea_Cont["BoxPos"][v][nRand][1]
			local nNewPosY = tTreasureArea_Cont["BoxPos"][v][nRand][2]
			Npc_MoveNpcPos(v,nMapId,nNewPosX,nNewPosY)
			-- local nUserId = Get_UserId()
			-- User_TalkChannel2005("npc===" .. v .. "===x==" .. nNewPosX .. "===y==" .. nNewPosY,nUserId)
		end
	end
	
	--判断若是金币服则更改3005121 Class5FortunePack概率
	if CommonFunc_ChkGoldServer() then
		tTreasureArea_MonsterDrop["Special"][1][5]["ItemChance"] = 0
		tTreasureArea_MonsterDrop["Special"][1][1]["ItemChance"] = 10500
	else
		tTreasureArea_MonsterDrop["Special"][1][5]["ItemChance"] = 500
		tTreasureArea_MonsterDrop["Special"][1][1]["ItemChance"] = 10000
	end
end

--掉落3303972 引魔香的怪
function TreasureArea_AttractMonster()
	
	--判断玩家背包空间
	if User_CheckLeftSpace(1) then
		RewardTemplate_NewRandom(tTreasureArea_AtrMonsterRank["MonsterDrop"],1)
	end
end

-- 整点清理
function TreasureArea_ClearBoxLimit()
	local nGlobalId = tTreasureArea_FreshBox["GlobalId"]
	local nReceivedPos = tTreasureArea_FreshBox["Received"]
	Sys_SetSynaGlobalData(nGlobalId,nReceivedPos,0)
end

------------------------------------------------NPC模板--------------------------------------------------
-- 于观海 20823（神龙岛）
tNpcFace[4869] = 102
tNpcFace[4939] = 102
tNpcGossip[20823] = tNpcGossip[20823] or DefaultNpc:new{}
tNpcGossip[20823]["OptionHidden"] = 1
tNpcGossip[20823]["DialogueText"] = tTreasureArea_Text[20823]
-- 玩家等级不足
tNpcGossip[20823]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[20823]["tOption1-1"] = {1}
tNpcGossip[20823]["ChkFunc1-1"] = function ()
	return not TreasureArea_JudgeLevel()
end
-- 玩家等级达到
tNpcGossip[20823]["Text1-2"] = {121,122,123,124,125,126,127}
tNpcGossip[20823]["tOption1-2"] = {2,5,3}
tNpcGossip[20823]["ChkFunc1-2"] = function ()
	return TreasureArea_JudgeLevel()
end
-- 前往潜龙渊
tNpcGossip[20823]["OptionFunc2"] = "TreasureArea_SendInMapAsk"
-- 混战须知
tNpcGossip[20823]["OptionPoint3"] = "2-1"
-- 返回栖侠镇
tNpcGossip[20823]["OptionFunc5"] = "TreasureArea_SendToUnderground</N>20823"

-- 接3：混战须知
tNpcGossip[20823]["Text2-1"] = {211,212,213,214,215,216,217,218,219,220}
tNpcGossip[20823]["tOption2-1"] = {4}
tNpcGossip[20823]["OptionPoint4"] = "1-2"

-- 于观海 20824 （打宝区）
tNpcGossip[20824] = tNpcGossip[20824] or DefaultNpc:new{}
tNpcGossip[20824]["OptionHidden"] = 1
tNpcGossip[20824]["DialogueText"] = tTreasureArea_Text[20824]

tNpcGossip[20824]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[20824]["tOption1-1"] = {1,2}
-- 回到神龙岛
tNpcGossip[20824]["OptionFunc1"] = "TreasureArea_SendBack"
-- 混战须知
tNpcGossip[20824]["OptionPoint2"] = "2-1"

-- 接2：混战须知
tNpcGossip[20824]["Text2-1"] = {211,212,213,214,215,216,217,218,219,220}
tNpcGossip[20824]["tOption2-1"] = {3}
tNpcGossip[20824]["OptionPoint3"] = "1-1"

-- 22573	于观海  岛上
tNpcGossip[22573] = tNpcGossip[20824]

-- 风不平   20825
tNpcFace[4750] = 53
tNpcGossip[20825] = tNpcGossip[20825] or DefaultNpc:new{}
tNpcGossip[20825]["OptionHidden"] = 1
tNpcGossip[20825]["DialogueText"] = tTreasureArea_Text[20825]
-- 主对白（闲聊）  boss 未出现
tNpcGossip[20825]["Text1-1"] = {111,112,113,114,115,116,117,118,119,120,121,122,123}
tNpcGossip[20825]["tOption1-1"] = {11,12,13,1}
tNpcGossip[20825]["ChkFunc1-1"] = function ()
	-- 判断地宫内 有出现哪个boss
	-- 3971		邪龙护法
	-- 3977	禁天邪兽
	-- 3978	啸海狂魔
	-- 3976	晶魄血妖
	-- 3970	妖后瑶姬
	local nNpcId = Get_NpcId()
	local nExist = 0
	for i = 1,5 do
		local nMonsterId = tTreasureArea_BrushBoss["MonsterId"][i]
		local nMapId = tTreasureArea_Cont["MapId"]
		-- 删除上次遗留的BOSS
		local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
		if nMonsterNum ~= 0 then
			nExist = 1
			break
		end
	end
	
	if	nExist == 1 then
		return false
	else
		local nNowHour = os.date("%H")
		local nNowMin = os.date("%M")
		nNowHour = tonumber(nNowHour)
		nNowMin = tonumber(nNowMin)
		local sShowIndex = "119"
		local sTime = "05"
		local nStartHour = 10
		if nNowHour < nStartHour then
			nNowHour = nStartHour
		end
		if nNowMin >= 0 and nNowMin < 5 then
			sShowIndex = "119"
			sTime = "05"
		elseif nNowMin >= 5 and nNowMin < 30 then
			if nNowHour == 19 or nNowHour == 21 then
				if nNowMin >= 5 and nNowMin < 10 then
					sShowIndex = "123"
					sTime = "10"
				else
					sShowIndex = "120"
					sTime = "30"
				end
			else
				sShowIndex = "120"
				sTime = "30"
			end
		elseif nNowMin >= 30 and nNowMin < 45 then
			sShowIndex = "121"
			sTime = "45"
		elseif nNowMin >= 45 and nNowMin < 57 then
			sShowIndex = "122"
			sTime = "57"
		else
			nNowHour = nNowHour + 1
			sShowIndex = "119"
			sTime = "05"
		end
		tNpcGossip[nNpcId]["Text".. sShowIndex] = string.format(tTreasureArea_Text[20825]["Text".. sShowIndex],tostring(nNowHour),tostring(sTime))
		tNpcGossip[nNpcId]["Text1-1"] = {111,112,113,114,115,116,117,118,tonumber(sShowIndex)}
		return true
	end
end
-- 魔头详细情报
tNpcGossip[20825]["OptionPoint1"] = "2-1"
tNpcGossip[20825]["OptionFunc11"] = "TreasureArea_FindBossNoExist</N>20825</N>1"
tNpcGossip[20825]["OptionFunc12"] = "TreasureArea_FindBossNoExist</N>20825</N>2"
tNpcGossip[20825]["OptionFunc13"] = "TreasureArea_FindBossNoExist</N>20825</N>4"

-- 主对白（BOSS出现中）
tNpcGossip[20825]["Text1-2"] = {131,132,133,134,135,136,137,138}
tNpcGossip[20825]["tOption1-2"] = {2,3,4,5,6}
tNpcGossip[20825]["ChkFunc1-2"] = function ()
	-- 判断地宫内 有出现哪个boss
	-- 3971		邪龙护法
	-- 3977	禁天邪兽
	-- 3978	啸海狂魔
	-- 3976	晶魄血妖
	-- 3970	妖后瑶姬
	local nNpcId = Get_NpcId()
	local nExist = 0
	local tExist = {}
 	for i = 1,5 do
		local nMonsterId = tTreasureArea_BrushBoss["MonsterId"][i]
		local nMapId = tTreasureArea_Cont["MapId"]
		-- 删除上次遗留的BOSS
		local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
		if nMonsterNum > 0 then
			-- 已出现的boss
			table.insert(tExist,nMonsterId)
			nExist = nExist + 1
		end
	end
	
	if	nExist == 0 then
		-- 没有出现的boss
		return false
	else
		tNpcGossip[nNpcId]["Text1-2"] = {}
		tNpcGossip[nNpcId]["tOption1-2"] = {}
		table.insert(tNpcGossip[nNpcId]["Text1-2"],131)
		table.insert(tNpcGossip[nNpcId]["Text1-2"],132)
		
		-- 记录boss随机刷新的坐标
		local nGlobalId = tTreasureArea_Cont["BossGlobal"]
		local nPosX = 0
		local nPosY = 0
		for i,v in pairs(tExist) do
		 	for j = 1,5 do
				local nMonsterId = tTreasureArea_BrushBoss["BossDialog"][j][1]
				if nMonsterId == v then
					if nMonsterId == 3978 then -- 3978 啸海狂魔
						nPosX = Get_SysDynaGlobalData0(nGlobalId)
						nPosY = Get_SysDynaGlobalData1(nGlobalId)
						tNpcGossip[nNpcId]["Text135"] = string.format(tTreasureArea_Text[20825]["Text135"],tostring(nPosX),tostring(nPosY))
					elseif nMonsterId == 3970 then  -- 3970  妖后瑶姬
						nPosX = Get_SysDynaGlobalData2(nGlobalId)
						nPosY = Get_SysDynaGlobalData3(nGlobalId)
						tNpcGossip[nNpcId]["Text137"] = string.format(tTreasureArea_Text[20825]["Text137"],tostring(nPosX),tostring(nPosY))
					end
					local nText = tTreasureArea_BrushBoss["BossDialog"][j][2]
					local nOption = tTreasureArea_BrushBoss["BossDialog"][j][3]
					table.insert(tNpcGossip[nNpcId]["Text1-2"],nText)
					table.insert(tNpcGossip[nNpcId]["tOption1-2"],nOption)
				end
			end
		end
		table.insert(tNpcGossip[nNpcId]["Text1-2"],138)
		return true	
	end
end
-- 前去诛灭xxx
tNpcGossip[20825]["OptionFunc2"] = "TreasureArea_FindBoss</N>20825</N>1"
tNpcGossip[20825]["OptionFunc3"] = "TreasureArea_FindBoss</N>20825</N>2"
tNpcGossip[20825]["OptionFunc4"] = "TreasureArea_FindBoss</N>20825</N>3"
tNpcGossip[20825]["OptionFunc5"] = "TreasureArea_FindBoss</N>20825</N>4"
tNpcGossip[20825]["OptionFunc6"] = "TreasureArea_FindBoss</N>20825</N>5"
-- 失败，BOSS已被击杀
tNpcGossip[20825]["Text1-5"] = {151}
tNpcGossip[20825]["tOption1-5"] = {10}
-- 接1：魔头详细情报
tNpcGossip[20825]["Text2-1"] = {211,212,213,214,215,216,217,218,219}
tNpcGossip[20825]["tOption2-1"] = {7}
-- 接 Option2-6前去诛除boss
-- 失败，BOSS已被击杀
tNpcGossip[20825]["Text2-2"] = {221,222,223,224,225}
tNpcGossip[20825]["tOption2-2"] = {10}

-- 天石不足
tNpcGossip[20825]["Text3-1"] = {311}
tNpcGossip[20825]["tOption3-1"] = {311}

-- 22574	风不平  岛上
tNpcGossip[22574] = tNpcGossip[20825]

--  侯勤   21875
tNpcFace[4870] = 67
tNpcGossip[21875] = tNpcGossip[21875] or DefaultNpc:new{}
tNpcGossip[21875]["OptionHidden"] = 1
tNpcGossip[21875]["DialogueText"] = tTreasureArea_Text[21875]

tNpcGossip[21875]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[21875]["tOption1-1"] = {1,2}
tNpcGossip[21875]["OptionFunc1"] = "TreasureArea_OpenExchangeShop</N>21875"
tNpcGossip[21875]["OptionPoint2"] = "2-1"

tNpcGossip[21875]["Text2-1"] = {211,212,213,212}
tNpcGossip[21875]["tOption2-1"] = {3}
tNpcGossip[21875]["ChkFunc2-1"] = function ()
	local nNpcId = Get_NpcId()
	local nGlobalId_1 = tTreasureArea_Cont["Global"][4][1]
	local nGlobalId_2 = tTreasureArea_Cont["Global"][4][2]
	
	local tNameTable = {}
	local tPrizeTable = {}
	for i = 1,5 do
		local sName = Get_SysDynaGlobalDataStr(nGlobalId_1,i)
		local nPrizeType = Get_SysDynaGlobalTime(nGlobalId_1,i)
		table.insert(tNameTable,sName)
		table.insert(tPrizeTable,tonumber(nPrizeType))
	end
	
	for j = 1,5 do
		local sName = Get_SysDynaGlobalDataStr(nGlobalId_2,j)
		local nPrizeType = Get_SysDynaGlobalTime(nGlobalId_2,j)
		table.insert(tNameTable,sName)
		table.insert(tPrizeTable,tonumber(nPrizeType))
	end

	local nCounter = 0
	local tPrize = {}
	local tName = {}
	for m,n in pairs(tPrizeTable) do
		if n > 0 then
			nCounter =  nCounter + 1
			table.insert(tPrize,n)
			table.insert(tName,tNameTable[m])
		end
	end
	
	if nCounter > 0 then
		tNpcGossip[nNpcId]["Text2-1"] = {211,212}
		for k,v in pairs(tPrize) do
			tNpcGossip[nNpcId]["Text31" .. k] = string.format(tTreasureArea_Text[21875]["Prize"][v],tName[k])
			table.insert(tNpcGossip[nNpcId]["Text2-1"],tonumber("31" .. k))
		end
		table.insert(tNpcGossip[nNpcId]["Text2-1"],212)
	else
		tNpcGossip[nNpcId]["Text2-1"] = {211,212,213,212}
	end
	return true
end

-- 22575	侯勤  岛上
tNpcGossip[22575] = tNpcGossip[21875]


-- 传送阵  20861
tNpcGossip[20861] = tNpcGossip[20861] or DefaultNpc:new{}
tNpcGossip[20861]["OptionHidden"] = 1
tNpcGossip[20861]["DialogueText"] = tTreasureArea_Text[20861]

tNpcGossip[20861]["Text1-1"] = {111}
tNpcGossip[20861]["tOption1-1"] = {1,2}
tNpcGossip[20861]["OptionFunc1"] = "TreasureArea_TransToNpc"

tNpcGossip[20862] = tNpcGossip[20861]
tNpcGossip[20863] = tNpcGossip[20861]
tNpcGossip[20864] = tNpcGossip[20861]
tNpcGossip[20865] = tNpcGossip[20861]
-- 超小岛屿的传送阵
tNpcGossip[22582] = tNpcGossip[20861]
tNpcGossip[22583] = tNpcGossip[20861]
tNpcGossip[22584] = tNpcGossip[20861]
tNpcGossip[22585] = tNpcGossip[20861]
tNpcGossip[22586] = tNpcGossip[20861]
tNpcGossip[22587] = tNpcGossip[20861]
tNpcGossip[22588] = tNpcGossip[20861]
tNpcGossip[22589] = tNpcGossip[20861]
tNpcGossip[22590] = tNpcGossip[20861]
tNpcGossip[22591] = tNpcGossip[20861]
tNpcGossip[22592] = tNpcGossip[20861]
tNpcGossip[22593] = tNpcGossip[20861]
tNpcGossip[22594] = tNpcGossip[20861]
tNpcGossip[22595] = tNpcGossip[20861]
tNpcGossip[22596] = tNpcGossip[20861]
tNpcGossip[22597] = tNpcGossip[20861]

-- 百胜宝箱  21972
tNpcGossip[21972] = tNpcGossip[21972] or DefaultNpc:new{}
tNpcGossip[21972]["OptionHidden"] = 1
tNpcGossip[21972]["DialogueText"] = tTreasureArea_Text[21972]

tNpcGossip[21972]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[21972]["tOption1-1"] = {1,2}
tNpcGossip[21972]["OptionFunc1"] = "TreasureArea_OpenBox"
tNpcGossip[21972]["OptionChkFunc1"] = function ()
	-- （玩家击杀了100个妖魔，方显示此选项）
	local nEvent = tTreasureArea_Stc[9]["EventType"]
	local nType = tTreasureArea_Stc[9]["DataType"]
	if Task_ChkStcValue(nEvent,nType,">=",100) then
		return true
	else
		return false
	end
end
-- 【接1，玩家已开启此宝箱，NPC对白】
tNpcGossip[21972]["Text2-1"] = {211}
tNpcGossip[21972]["tOption2-1"] = {3}

-- 22577	百胜宝箱  岛上
tNpcGossip[22577] = tNpcGossip[21972]

-- 潜龙珍宝  21973
tNpcGossip[21973] = tNpcGossip[21973] or DefaultNpc:new{}
tNpcGossip[21973]["OptionHidden"] = 1
tNpcGossip[21973]["DialogueText"] = tTreasureArea_Text[21973]

tNpcGossip[21973]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[21973]["tOption1-1"] = {1,2}
tNpcGossip[21973]["OptionFunc1"] = "TreasureArea_OpenBox"
tNpcGossip[21973]["OptionChkFunc1"] = function ()
	-- 玩家有钥匙则显示此选项
	-- 3303973	珍宝密钥
	local nItemId = tTreasureArea_Cont[21973]
	if Item_ChkItem(nItemId) then
		return true
	else
		return false
	end
end
tNpcGossip[21975] = tNpcGossip[21973]
tNpcGossip[21976] = tNpcGossip[21973]
-- 增加 灵境珍宝 数量
tNpcGossip[22598] = tNpcGossip[21973]
tNpcGossip[22599] = tNpcGossip[21973]
tNpcGossip[22600] = tNpcGossip[21973]
tNpcGossip[22601] = tNpcGossip[21973]
tNpcGossip[22602] = tNpcGossip[21973]
tNpcGossip[22603] = tNpcGossip[21973]
tNpcGossip[22604] = tNpcGossip[21973]
tNpcGossip[22605] = tNpcGossip[21973]
tNpcGossip[22606] = tNpcGossip[21973]


-- 潜龙至宝  21974
tNpcGossip[21974] = tNpcGossip[21974] or DefaultNpc:new{}
tNpcGossip[21974]["OptionHidden"] = 1
tNpcGossip[21974]["DialogueText"] = tTreasureArea_Text[21974]

tNpcGossip[21974]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[21974]["tOption1-1"] = {1,2}
tNpcGossip[21974]["OptionFunc1"] = "TreasureArea_OpenBox"
tNpcGossip[21974]["OptionChkFunc1"] = function ()
	-- 玩家有钥匙则显示此选项
	-- 3303974	至宝密钥
	local nItemId = tTreasureArea_Cont[21974]
	if Item_ChkItem(nItemId) then
		return true
	else
		return false
	end
end
-- 增加 灵境至宝 数量
tNpcGossip[22607] = tNpcGossip[21974]
tNpcGossip[22608] = tNpcGossip[21974]
tNpcGossip[22609] = tNpcGossip[21974]

-- 【潜龙争霸】江海流  22071
-- tNpcFace[5759] = 29
tNpcFace[4981] = 29
tNpcGossip[22071] = tNpcGossip[22071] or DefaultNpc:new{}
tNpcGossip[22071]["OptionHidden"] = 1
tNpcGossip[22071]["DialogueText"] = tTreasureArea_Text[22071]

-- 潜龙霸主榜
tNpcGossip[22071]["Text1-1"] = {211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226}
tNpcGossip[22071]["tOption1-1"] = {1,11,211,101,3}
tNpcGossip[22071]["ChkFunc1-1"] = function ()
	local nNpcId = Get_NpcId()
	local tRankUserData = {}
	-- 取排行榜玩家杀人数和名称还有帮派名称
	local nIndex = 0
	for j = 1, 2  do
		for i = 1, 5 do
			local nGlobalId_1 = tTreasureArea_Cont["Rank"][j][1]
			local nGlobalId_2 = tTreasureArea_Cont["Rank"][j][2]
			nIndex = nIndex + 1
			tRankUserData[nIndex] = {}
			tRankUserData[nIndex][1] = Get_SysDynaGlobalData(nGlobalId_1, i)
			tRankUserData[nIndex][2] = Get_SysDynaGlobalDataStr(nGlobalId_1, i)
			tRankUserData[nIndex][3] = Get_SysDynaGlobalDataStr(nGlobalId_2, i)
		end
	end
	
	local nTextNum = 213
	local nKillNum = 0
	local sPlayerSynName = ""
	local sUserName = ""
	local sTopSynUser = ""
	local sStr = tTreasureArea_Text[22071]["Rank"]
	for i = 1 ,10 do
		-- 获取排行榜玩家信息
		nKillNum = tRankUserData[i][1]
		sUserName  = (tRankUserData[i][2] == "" or tRankUserData[i][2] == "null") and tTreasureArea_Text[22071]["None"] or tRankUserData[i][2]
		sUserName = Sys_ChkStrLen(sUserName)
		sPlayerSynName  = (tRankUserData[i][3] == "" or tRankUserData[i][3] == "null") and tTreasureArea_Text[22071]["None_1"] or tRankUserData[i][3]
		tNpcGossip[nNpcId]["Text" ..nTextNum + i] = string.format(tTreasureArea_Text[22071]["Rank1"],Sys_Alignment(string.format(sStr,tostring(i)), 1, tostring(nKillNum), 10, sUserName, 24, sPlayerSynName, 40))
	end
	return true
end
tNpcGossip[22071]["OptionPoint101"] = "10-1"
tNpcGossip[22071]["OptionFunc1"] = "TreasureArea_GetLuckyReward</N>22071"
tNpcGossip[22071]["OptionChkFunc1"] = function ()
	local nEvent = tTreasureArea_Stc[12]["EventType"]
	local nType = tTreasureArea_Stc[12]["DataType"]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	local nData = Get_UserStatisticValue(nEvent,nType)
	if nData >= 1 then
		return false
	else
		return true
	end
end
tNpcGossip[22071]["OptionFunc11"] = "TreasureArea_GetLuckyReward</N>22071"
tNpcGossip[22071]["OptionChkFunc11"] = function ()
	local nEvent = tTreasureArea_Stc[12]["EventType"]
	local nType = tTreasureArea_Stc[12]["DataType"]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	local nData = Get_UserStatisticValue(nEvent,nType)
	if nData >= 1 then
		return true
	else
		return false
	end
end
-- tNpcGossip[22071]["OptionPoint2"] = "2-1"
tNpcGossip[22071]["OptionPoint3"] = "4-1"

-- 昨日潜龙争霸榜
tNpcGossip[22071]["Text10-1"] = {111,112,113,114,115,116,117}
tNpcGossip[22071]["tOption10-1"] = {4,5}
tNpcGossip[22071]["ChkFunc10-1"] = function ()
	local nNpcId = Get_NpcId()

	local nGlobalId_1 = tTreasureArea_Cont["LastRank"][1][1]
	local nGlobalId_2 = tTreasureArea_Cont["LastRank"][1][2]
	
	local sStr1 = Get_SysDynaGlobalDataStr(nGlobalId_1,1)
	local nPlayerId1 = Get_SysDynaGlobalData(nGlobalId_2,1)
	local sSynName1 = Get_SysDynaGlobalDataStr(nGlobalId_2,1)
	
	local sStr2 = Get_SysDynaGlobalDataStr(nGlobalId_1,2)
	local nPlayerId2 = Get_SysDynaGlobalData(nGlobalId_2,2)
	local sSynName2 = Get_SysDynaGlobalDataStr(nGlobalId_2,2)
	
	local sStr3 = Get_SysDynaGlobalDataStr(nGlobalId_1,3)
	local nPlayerId3 = Get_SysDynaGlobalData(nGlobalId_2,3)
	local sSynName3 = Get_SysDynaGlobalDataStr(nGlobalId_2,3)
	
	-- 判断此时排行榜是否有信息
	if nPlayerId1 == 0 then
		sStr1 = tTreasureArea_Text[22071]["None"]
		sStr2 = tTreasureArea_Text[22071]["None"]
		sStr3 = tTreasureArea_Text[22071]["None"]
		sSynName1 = tTreasureArea_Text[22071]["None_1"]
		sSynName2 = tTreasureArea_Text[22071]["None_1"]
		sSynName3 = tTreasureArea_Text[22071]["None_1"]
	elseif nPlayerId2 == 0 then
		sStr2 = tTreasureArea_Text[22071]["None"]
		sStr3 = tTreasureArea_Text[22071]["None"]
		sSynName2 = tTreasureArea_Text[22071]["None_1"]
		sSynName3 = tTreasureArea_Text[22071]["None_1"]
	elseif nPlayerId3 == 0 then
		sStr3 = tTreasureArea_Text[22071]["None"]
		sSynName3 = tTreasureArea_Text[22071]["None_1"]
	end

	sStr1 = string.format(tTreasureArea_Text[22071]["Text113"],sStr1)
	sStr2 = string.format(tTreasureArea_Text[22071]["Text114"],sStr2)
	sStr3 = string.format(tTreasureArea_Text[22071]["Text115"],sStr3)
	sSynName1 = string.format(tTreasureArea_Text[22071]["Guild"],sSynName1)
	sSynName2 = string.format(tTreasureArea_Text[22071]["Guild"],sSynName2)
	sSynName3 = string.format(tTreasureArea_Text[22071]["Guild"],sSynName3)

	tNpcGossip[nNpcId]["Text113"] = string.format(tTreasureArea_Text[22071]["Rank1"],Sys_Alignment(sStr1, 2, sSynName1, 32))
	tNpcGossip[nNpcId]["Text114"] = string.format(tTreasureArea_Text[22071]["Rank1"],Sys_Alignment(sStr2, 2, sSynName2, 32))
	tNpcGossip[nNpcId]["Text115"] = string.format(tTreasureArea_Text[22071]["Rank1"],Sys_Alignment(sStr3, 2, sSynName3, 32))
	
	-- 阁下今日积分
	local nEvent = tTreasureArea_Stc[11]["EventType"]
	local nType = tTreasureArea_Stc[11]["DataType"]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	local nData = Get_UserStatisticValue(nEvent,nType)
	tNpcGossip[nNpcId]["Text117"] = string.format(tTreasureArea_Text[22071]["Text117"],nData)
	
	-- 判断是否为霸主所在帮派的成员
	local nWinnerId = Get_SysDynaGlobalData(nGlobalId_2,1)
	local nWinnerSynId = Get_SysDynaGlobalTime(nGlobalId_2,1)
	-- if nWinnerId > 0 and Get_UserGuildId() > 0 and Get_UserGuildId(nWinnerId) > 0 then
		-- if Get_UserGuildId() == Get_UserGuildId(nWinnerId) then
	if nWinnerId > 0 and Get_UserGuildId() > 0 and nWinnerSynId > 0 then
		if Get_UserGuildId() == nWinnerSynId then
			tNpcGossip[nNpcId]["Text10-1"] = {111,112,113,114,115,116,117,118}
		else
			tNpcGossip[nNpcId]["Text10-1"] = {111,112,113,114,115,116,117}
		end
	else
		tNpcGossip[nNpcId]["Text10-1"] = {111,112,113,114,115,116,117}
	end
	return true
end
tNpcGossip[22071]["OptionPoint4"] = "3-1"
tNpcGossip[22071]["OptionPoint5"] = "1-1"
tNpcGossip[22071]["OptionPoint211"] = "3-2"

 -- 接4、查看排名奖励
tNpcGossip[22071]["Text3-1"] = {311,312,313,314,315,316,317}
tNpcGossip[22071]["tOption3-1"] = {6}
tNpcGossip[22071]["OptionPoint6"] = "1-1"

--接221 预支幸运值
tNpcGossip[22071]["Text3-2"] = {321,322,323,324,325,326,327}
tNpcGossip[22071]["tOption3-2"] = {321,322}
tNpcGossip[22071]["OptionFunc321"] = "TreasureArea_AdvanceLuckyNum</N>22071</N>1"
tNpcGossip[22071]["OptionFunc322"] = "TreasureArea_AdvanceLuckyNum</N>22071</N>2"
tNpcGossip[22071]["ChkFunc3-2"] = function ()
	-- 
	local nEvent = tTreasureArea_Stc[2]["EventType"]
	local nType = tTreasureArea_Stc[2]["DataType"]
	
	local nLuckData = Get_UserStatisticValue(nEvent,nType)
	tNpcGossip[22071]["Text327"] = string.format(tTreasureArea_Text[22071]["Text327"],nLuckData)
	return true
end

-- 接3、了解规则
tNpcGossip[22071]["Text4-1"] = {411,412,413,414,415,416,417,418,419,420,421,422}
tNpcGossip[22071]["tOption4-1"] = {7}
tNpcGossip[22071]["OptionPoint7"] = "1-1"

-- 幸运值已经被预支
tNpcGossip[22071]["Text4-2"] = {4210}
tNpcGossip[22071]["tOption4-2"] = {4210}

-- 幸运值未消耗完
tNpcGossip[22071]["Text4-3"] = {431,432}
tNpcGossip[22071]["tOption4-3"] = {431}
tNpcGossip[22071]["ChkFunc4-3"] = function ()
	-- 
	local nEvent = tTreasureArea_Stc[2]["EventType"]
	local nType = tTreasureArea_Stc[2]["DataType"]
	
	local nLuckData = Get_UserStatisticValue(nEvent,nType)
	tNpcGossip[22071]["Text431"] = string.format(tTreasureArea_Text[22071]["Text431"],nLuckData)
	return true
end

-- 预支3天幸运值
tNpcGossip[22071]["Text4-4"] = {441}
tNpcGossip[22071]["tOption4-4"] = {441,442}
tNpcGossip[22071]["OptionFunc441"] = "TreasureArea_AdvanceLuckyNumConfirm</N>22071"

-- 预支6天奖励
tNpcGossip[22071]["Text4-5"] = {451}
tNpcGossip[22071]["tOption4-5"] = {451,452}
tNpcGossip[22071]["OptionFunc451"] = "TreasureArea_AdvanceLuckyRewardConfirm</N>22071"

-- 金币不足
tNpcGossip[22071]["Text4-6"] = {461}
tNpcGossip[22071]["tOption4-6"] = {461}

-- 天石不够
tNpcGossip[22071]["Text4-7"] = {471}
tNpcGossip[22071]["tOption4-6"] = {471}

-- 除魔战绩未达100点
tNpcGossip[22071]["Text5-1"] = {511}
tNpcGossip[22071]["tOption5-1"] = {8}
-- 今日已领取
tNpcGossip[22071]["Text5-2"] = {521}
tNpcGossip[22071]["tOption5-2"] = {8}

-- 今日未领取，二次确认
tNpcGossip[22071]["Text6-1"] = {611,612,613,614,615,616}
tNpcGossip[22071]["tOption6-1"] = {9,10}
tNpcGossip[22071]["ChkFunc6-1"] = function ()
	local nNpcId = Get_NpcId()
	-- 玩家可在NPC处领取1个气运灵符
	local nUserData = 1
	local nGlobalId = tTreasureArea_Cont["LastRank"][1][2]
	local nWinnerId = Get_SysDynaGlobalData(nGlobalId,1)
	local nWinnerSynId = Get_SysDynaGlobalTime(nGlobalId,1)
	if nWinnerId > 0 then
		-- if Get_UserGuildId() > 0 and Get_UserGuildId(nWinnerId) > 0 then
			-- if Get_UserGuildId() == Get_UserGuildId(nWinnerId) then
		if Get_UserGuildId() > 0 and nWinnerSynId > 0 then
			if Get_UserGuildId() == nWinnerSynId then
				-- 霸主帮派成员可领取2个
				nUserData = 2
			end
		end
	end

	local nStatus = tTreasureArea_Cont["StatusType"]
	local nPower = 0
	local nAddPower = nUserData*3
	local nUserId = Get_UserId()
	
	if User_ChkRoleStatus(nStatus,nUserId) then
		nPower = Get_UserRoleStatusPower(nStatus,nUserId)
	end
	
	local nLimit = 9 - nAddPower + 1	
	tNpcGossip[nNpcId]["Text613"] = string.format(tTreasureArea_Text[22071]["Text613"],nPower)
	if nPower >= nLimit then
		tNpcGossip[nNpcId]["Text614"] = string.format(tTreasureArea_Text[22071]["Text614"],9)
	else
		tNpcGossip[nNpcId]["Text614"] = string.format(tTreasureArea_Text[22071]["Text614"],nPower + nAddPower)
	end
	return true
end
tNpcGossip[22071]["OptionFunc9"] = "TreasureArea_GetLuckyRewardSure</N>22071"
-- 22580		江海流  岛上
tNpcGossip[22580] = tNpcGossip[22071]


-- 22560  【排行】祭神台
tNpcFace[4982] = 1258
tNpcGossip[22560] = tNpcGossip[22560] or DefaultNpc:new{}
tNpcGossip[22560]["OptionHidden"] = 1
tNpcGossip[22560]["DialogueText"] = tTreasureArea_Text[22560]
-- 祭神排行榜
tNpcGossip[22560]["Text1-1"] = {111,112,113,114,115,116,117,118,119,120,121,122,123,124,125}
tNpcGossip[22560]["tOption1-1"] = {1,111}
tNpcGossip[22560]["ChkFunc1-1"] = function ()
	local nNpcId = Get_NpcId()
	local tRankUserData = {}
	-- 取排行榜玩家杀人数和名称还有帮派名称
	local nIndex = 0
	for j = 1, 2  do
		for i = 1, 5 do
			local nGlobalId_1 = tTreasureArea_Cont["JadeRank"][j][1]
			nIndex = nIndex + 1
			tRankUserData[nIndex] = {}
			tRankUserData[nIndex][1] = Get_SysDynaGlobalData(nGlobalId_1, i)
			tRankUserData[nIndex][2] = Get_SysDynaGlobalDataStr(nGlobalId_1, i)
		end
	end
	
	local nTextNum = 113
	local nHandNum = 0
	local sUserName = ""
	local sRewardTip = ""
	local sStr = tTreasureArea_Text[22560]["Rank"]
	for i = 1 ,10 do
		-- 获取排行榜玩家信息
		nHandNum = tRankUserData[i][1]
		sUserName  = (tRankUserData[i][2] == "" or tRankUserData[i][2] == "null") and tTreasureArea_Text[22560]["None"] or tRankUserData[i][2]
		sUserName = Sys_ChkStrLen(sUserName,14)
		
		--名字处理
		sUserName = string.gsub(sUserName, "<", " ")
		sUserName = string.gsub(sUserName, ">", " ")
		
		sRewardTip  = tTreasureArea_Text[22560]["RewardTip"][i]
		tNpcGossip[nNpcId]["Text" ..nTextNum + i] = string.format(tTreasureArea_Text[22560]["Rank1"],Sys_Alignment(string.format(sStr,tostring(i)), 1, tostring(nHandNum), 10, sUserName, 18, sRewardTip, 38))
		
		
	end
	
	-- 玩家献玉数
	local nEvent = tTreasureArea_Stc[13]["EventType"]
	local nType = tTreasureArea_Stc[13]["DataType"]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	local nData = Get_UserStatisticValue(nEvent,nType)
	
	-- 判断玩家是否进入排行榜
	local nRank = TreasureArea_JudgeRank("JadeRank")
	if nRank > 0 then
		tNpcGossip[nNpcId]["Text126"] = string.format(tTreasureArea_Text[22560]["Text126"],nData,nRank)
		tNpcGossip[nNpcId]["Text1-1"] = {111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126}
	else
		tNpcGossip[nNpcId]["Text127"] = string.format(tTreasureArea_Text[22560]["Text127"],nData)
		tNpcGossip[nNpcId]["Text1-1"] = {111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,127}
	end
	return true
end
tNpcGossip[22560]["OptionPoint1"] = "2-1"
tNpcGossip[22560]["OptionPoint111"] = "5-1"

-- 接1、献上神明玉
tNpcGossip[22560]["Text2-1"] = {211,212,213,214,215,216,217,218}
tNpcGossip[22560]["tOption2-1"] = {11,13,10}
tNpcGossip[22560]["OptionFunc10"] = "TreasureArea_HandInJade</N>22560</N>0"
tNpcGossip[22560]["OptionFunc11"] = "TreasureArea_HandInJade</N>22560</N>1"
-- tNpcGossip[22560]["OptionFunc12"] = "TreasureArea_HandInJade</N>22560</N>5"
tNpcGossip[22560]["OptionFunc13"] = "TreasureArea_HandInJade</N>22560</N>10"
-- 没有神明玉
tNpcGossip[22560]["Text3-1"] = {311,312}
tNpcGossip[22560]["tOption3-1"] = {4}
-- 神纹转换
tNpcGossip[22560]["Text5-1"] = {511,512,513}
tNpcGossip[22560]["tOption5-1"] = {2,3}
tNpcGossip[22560]["OptionFunc2"] = "TreasureArea_ExchangeShenWen</N>22560</N>1"
tNpcGossip[22560]["OptionFunc3"] = "TreasureArea_ExchangeShenWen</N>22560</N>2"

-- 22561		祭神台  岛上
tNpcGossip[22561] = tNpcGossip[22560]

-- 璇玑宝箱
tNpcGossip[21385] = tNpcGossip[21385] or DefaultNpc:new{}
tNpcGossip[21385]["OptionHidden"] = 1

tNpcGossip[21385]["DialogueText"] = tTreasureArea_Text[21385]
tNpcGossip[21385]["Text1-1"] = {112,113}
tNpcGossip[21385]["tOption1-1"] = {111}
tNpcGossip[21385]["OptionFunc111"] = "TreasureArea_ChkCaptcha</N>21385"

tNpcGossip[21385]["Text2-1"] = {211,112,113}
tNpcGossip[21385]["tOption2-1"] = {211}

tNpcGossip[21385]["Text2-2"] = {221,222,223}

tNpcGossip[21385]["Text3-1"] = {311,312}

--------------------------------------------物品模板---------------------------------------
-- 背包信   神谕令 3303476
tItemFace[3303476] = 745
tItem[3303476] = tItem[3303476] or {}
tItem[3303476]["DialogueText"] = tTreasureArea_Text[3303476]
tItem[3303476]["Text1-1"] = {111,112}
tItem[3303476]["tOption1-1"] = {1}
tItem[3303476]["OptionFunc1"]="TreasureArea_UseLetter</N>3303476"

-- 3303520	古神灵境伏魔嘉奖包
tItem[3303520] = tItem[3303520] or {}
tItem[3303520]["Function"] = function (nItemId,sItemName)
	TreasureArea_UseJoinItem(nItemId)
end
tItem[3303521] = tItem[3303520]	-- 3303521	古神灵境降妖嘉奖包

-- 3303480	星陨石礼包
tItem[3303480] = tItem[3303480] or {}
tItem[3303480]["Function"] = function (nItemId,sItemName)
	TreasureArea_UseStoneItem(nItemId)
end
tItem[3303523] = tItem[3303480] 	-- 3303523	四阶防具神魂
tItem[3303524] = tItem[3303480] 	-- 3303524	五阶防具神魂
tItem[3303525] = tItem[3303480] 	-- 3303525	四阶武器神魂
tItem[3307085] = tItem[3303480]  	-- 3307085	古神灵境星陨石礼包
tItem[3307086] = tItem[3303480]  	-- 3307086	古神灵境赤炼石礼包
tItem[3307087] = tItem[3303480]  	-- 3307087	古神灵境属性随机包

-- 3303482	古神灵境随机传送卷
tItem[3303482] = tItem[3303482] or {}
tItem[3303482]["Function"] = function (nItemId,sItemName)
	TreasureArea_UseTransItem(nItemId)
end

-- 3303483	灵境神草
tItem[3303483] = tItem[3303483] or {}
tItem[3303483]["Function"] = function (nItemId,sItemName)
	TreasureArea_UseExchangeItem(nItemId)
end
tItem[3303485] = tItem[3303483]		-- 3303485	冥界诏令兑换券
tItem[3303486] = tItem[3303483]		-- 3303486	3000天石（赠）兑换券
tItem[3307083] = tItem[3303483]		-- 3307083	神明玉

-- 3303519	魔武通玄丹碎片
tItem[3303519] = tItem[3303519] or {}
tItem[3303519]["Function"] = function (nItemId,sItemName)
	TreasureArea_UseScrapItem(nItemId)
end
tItem[3307088] = tItem[3303519]		-- 3307088	邪龙陨星
tItem[3307089] = tItem[3303519]		-- 3307089	妖兽气晶
tItem[3307090] = tItem[3303519]		-- 3307090	雪妖赤石

-- 3303484	灵境神草包
tItem[3303484] = tItem[3303484] or {}
tItem[3303484]["Function"] = function (nItemId,sItemName)
	RewardTemplate_UseItem(tTreasureArea_UsePack[nItemId])
end
tItem[3307084] = tItem[3303484]		-- 3307084	神明玉宝盒
tItem[3307091] = tItem[3303484]		-- 3307091	天元固体丹

-- 冥界诏令礼盒
tItem[3303526] = tItem[3303526] or {}
tItemFace[3303526] = 490
tItem[3303526]["DialogueText"] = tTreasureArea_Text[3303526]

tItem[3303526]["Text1-1"] = {111}
tItem[3303526]["tOption1-1"] = {111,112}

tItem[3303526]["OptionFunc111"] = "TreasureArea_UseGhostdomPack</N>3303526"
tItem[3303526]["OptionFunc112"] = "TreasureArea_UseEmoneyPack</N>3303526"

-- 3303527	古神灵境豪华天石赠礼包
tItem[3303527] = tItem[3303527] or {}
tItem[3303527]["Function"] = function (nItemId,sItemName)
	TreasureArea_UseEmoneyPack(nItemId)
end

-- 3303972	引魔香
tItem[3303972] = tItem[3303972] or {}
tItem[3303972]["Function"] = function (nItemId,sItemName)
	TreasureArea_RushBossItem(nItemId)
end

-- 3303975	古神灵境龙珠袋
tItem[3303975] = tItem[3303975] or {}
tItem[3303975]["Function"] = function (nItemId,sItemName)
	TreasureArea_UseDragonPack(nItemId)
end

-- 3304049	古神灵境精品装备包
tItem[3304049] = tItem[3304049] or {}
tItem[3304049]["Function"] = function (nItemId,sItemName)
	TreasureArea_UseWeaponPack(nItemId)
end

-- 3304961	古神灵境传送符
tItem[3304961] = tItem[3304961] or {}
tItem[3304961]["Function"] = function (nItemId,sItemName)
	TreasureArea_UseTransItem(nItemId)
end

-- 3307095	固化石升级包
tItemFace[3307095] = 1187
tItem[3307095] = tItem[3307095] or {}
tItem[3307095]["DialogueText"] = tTreasureArea_Text[3307095]
tItem[3307095]["Text1-1"] = {111}
tItem[3307095]["tOption1-1"] = {1,2}
tItem[3307095]["OptionPoint1"]="2-1"
tItem[3307095]["OptionFunc2"]="TreasureArea_WashZengItem</N>3307095"

tItem[3307095]["Text2-1"] = {211}
tItem[3307095]["tOption2-1"] = {3,4}
tItem[3307095]["OptionFunc3"]="TreasureArea_PayForSure</N>3307095</N>399"

-- 3307096	金钢坚钻升级包
tItemFace[3307096] = 1188
tItem[3307096] = tItem[3307096] or {}
tItem[3307096]["DialogueText"] = tTreasureArea_Text[3307096]
tItem[3307096]["Text1-1"] = {111}
tItem[3307096]["tOption1-1"] = {1,2}
tItem[3307096]["OptionPoint1"]="2-1"
tItem[3307096]["OptionFunc2"]="TreasureArea_WashZengItem</N>3307096"

tItem[3307096]["Text2-1"] = {211}
tItem[3307096]["tOption2-1"] = {3,4}
tItem[3307096]["OptionFunc3"]="TreasureArea_PayForSure</N>3307096</N>799"

-- 3307097	优质玄元升级包
tItemFace[3307097] = 1189
tItem[3307097] = tItem[3307097] or {}
tItem[3307097]["DialogueText"] = tTreasureArea_Text[3307097]
tItem[3307097]["Text1-1"] = {111}
tItem[3307097]["tOption1-1"] = {1,2}
tItem[3307097]["OptionPoint1"]="2-1"
tItem[3307097]["OptionFunc2"]="TreasureArea_WashZengItem</N>3307097"

tItem[3307097]["Text2-1"] = {211}
tItem[3307097]["tOption2-1"] = {3,4}
tItem[3307097]["OptionFunc3"]="TreasureArea_PayForSure</N>3307097</N>199"

-- 3304960	古神灵境免疫药水	
tItemFace[3304960] = 1107
tItem[3304960] = tItem[3304960] or {}
tItem[3304960]["Function"] = function (nItemId,sItemName)
	TreasureArea_UseMedicine(nItemId)
end
tItemFace[3307099] = 1109
tItem[3307099] = tItem[3304960]		-- 3307099 古神灵境粉碎药水

-- 3303973	珍宝密钥
tItem[3303973] = tItem[3303973] or {}
tItem[3303973]["Function"] = function (nItemId,sItemName)
	TreasureArea_UseBoxKey(nItemId)
end
tItem[3303974] = tItem[3303973]		-- 3303974	至宝密钥

-- 3307244	幻界玄旗
tItemFace[3307244] = 1271
tItem[3307244] = tItem[3307244] or {}
tItem[3307244]["DialogueText"] = tTreasureArea_Text[3307244]
tItem[3307244]["Text1-1"] = {111,112,113,114}
tItem[3307244]["tOption1-1"] = {1}
tItem[3307244]["OptionFunc1"]="TreasureArea_UseMagicWorldItem</N>3307244"

-- 3307272	微光星陨石包
tItem[3307272] = tItem[3307272] or {}
tItem[3307272]["Function"] = function (nItemId,sItemName)
	TreasureArea_UseAllStone(nItemId)
end

-- 3307244	高级神器锻造图
tItemFace[3309970] = 1626
tItem[3309970] = tItem[3309970] or {}
tItem[3309970]["DialogueText"] = tTreasureArea_Text[3309970]
tItem[3309970]["Text1-1"] = {111,112,113,114,115}
tItem[3309970]["tOption1-1"] = {111,112}
tItem[3309970]["OptionFunc111"]="TreasureArea_Casting</N>3309970"
tItem[3309970]["OptionFunc112"]="TreasureArea_ConvertReward</N>3309970"

tItem[3309970]["Text2-1"] = {211}
tItem[3309970]["tOption2-1"] = {211}

tItem[3309970]["Text2-2"] = {221}
tItem[3309970]["tOption2-2"] = {221,222}
tItem[3309970]["OptionFunc221"]="TreasureArea_CastingComfirm</N>3309970"

tItemFace[3322219] = 2401
tItem[3322219] = tItem[3322219] or {}
tItem[3322219]["DialogueText"] = tTreasureArea_Text[3322219]
tItem[3322219]["Text1-1"] = {111,112}
tItem[3322219]["tOption1-1"] = {111,112,113,114,115}
tItem[3322219]["OptionFunc111"]="TreasureArea_ChosseArtifact</N>3322219</N>1"
tItem[3322219]["OptionFunc112"]="TreasureArea_ChosseArtifact</N>3322219</N>2"
tItem[3322219]["OptionFunc113"]="TreasureArea_ChosseArtifact</N>3322219</N>3"
tItem[3322219]["OptionFunc114"]="TreasureArea_ChosseArtifact</N>3322219</N>4"
tItem[3322219]["OptionFunc115"]="TreasureArea_ChosseArtifact</N>3322219</N>5"

tItem[3322219]["Text2-1"] = {211}
tItem[3322219]["tOption2-1"] = {211}
--------------------------------------------怪物模板---------------------------------------
-- 3973	水魔兽
-- 3974	300星水魔兽
-- 3975	350星水魔兽
-- 4709	380星水魔兽
-- 4710		水魇兽
-- 4711		300星水魇兽
-- 4712		350星水魇兽
-- 4713		380星水魇兽
-- 4720	天魇神将		特殊强力怪 爆率比常规怪物高，但一样还是有幸运值限制
local tTreasureArea_AreaLoad = {}
	tTreasureArea_AreaLoad["Function"] = TreasureArea_MonsterDie
	tTreasureArea_AreaLoad["MonsterId"] = {3973,3974,3975,4709,4710,4711,4712,4713,4720}
table.insert(tMonsterDrop_AreaLoad,tTreasureArea_AreaLoad)

--掉落3303972 引魔香的怪
local tTreasureArea_AttractMonster = {}
	tTreasureArea_AttractMonster["Function"] = TreasureArea_AttractMonster
	tTreasureArea_AttractMonster["MonsterId"] = {3973,3974,3975,4709,4710,4711,4712,4713}
table.insert(tMonsterDrop_AreaLoad,tTreasureArea_AttractMonster)

-- 4714		流星圣犼
-- 4715     经验圣犼 
-- 4716     财富圣犼 
-- 4717     赤练圣犼 
-- 4718     星陨圣犼 
-- 4719     气力圣犼 
local tTreasureArea_MagicWorldMons = {}
	tTreasureArea_MagicWorldMons["Function"] = TreasureArea_MagicWorldMonster
	tTreasureArea_MagicWorldMons["MonsterId"] = {4717,4718,4719}
table.insert(tMonsterDrop_AreaLoad,tTreasureArea_MagicWorldMons)

-- 3971		邪龙护法
-- 3977	禁天邪兽
-- 3978	啸海狂魔
-- 3976	晶魄血妖
-- 3970	妖后瑶姬
local tTreasureArea_Boss = {}
	tTreasureArea_Boss["Function"] = TreasureArea_BossDie
	tTreasureArea_Boss["MonsterId"] = {3976,3977,3978,3970,3971}
table.insert(tMonsterDrop_AreaLoad,tTreasureArea_Boss)

-- 4613	固化石幸运宝箱
-- 4614	金钢坚钻幸运宝箱
-- 4615	玄元宝石幸运宝箱
local tTreasureArea_Box = {}
	tTreasureArea_Box["Function"] = TreasureArea_BoxDie
	tTreasureArea_Box["MonsterId"] = {4613,4614,4615}
table.insert(tMonsterDrop_AreaLoad,tTreasureArea_Box)

-- 小boss掉落
-- 3979	盗宝小妖【流星】
-- 3980	盗宝小妖【经验】
-- 3981		盗宝小妖【龙珠】
-- 3982	盗宝小妖【气力】
-- 3983	盗宝小妖【赤炼】
-- 3984	盗宝小妖【神魂】
-- 3985	盗宝小妖【银两】
-- 3986	盗宝小妖【装备】
-- 3992	盗宝小妖【神器】
local tTreasureArea_SmallBoss = {}
	tTreasureArea_SmallBoss["Function"] = TreasureArea_SmallBoss
	tTreasureArea_SmallBoss["MonsterId"] = {3979,3981,3982,3983,3984,3986,3992}
table.insert(tMonsterDrop_AreaLoad,tTreasureArea_SmallBoss)

local tTreasureArea_BoxBoss = {}
	tTreasureArea_BoxBoss["Function"] = TreasureArea_KillBoxMonster
	tTreasureArea_BoxBoss["MonsterId"] = {4912}
table.insert(tMonsterDrop_AreaLoad,tTreasureArea_BoxBoss)


-- BossDamageBonus 伤害排名奖励
-- 3976	晶魄血妖
tBossDamageBonus[3976] = tBossDamageBonus[3976] or {}
tBossDamageBonus[3976]["tFunction"] = tBossDamageBonus[3976]["tFunction"] or {}
table.insert(tBossDamageBonus[3976]["tFunction"],TreasureArea_BossDamgRank)
-- 3977	禁天邪兽
tBossDamageBonus[3977] = tBossDamageBonus[3977] or {}
tBossDamageBonus[3977]["tFunction"] = tBossDamageBonus[3977]["tFunction"] or {}
table.insert(tBossDamageBonus[3977]["tFunction"],TreasureArea_BossDamgRank)
-- 3978	啸海狂魔
tBossDamageBonus[3978] = tBossDamageBonus[3978] or {}
tBossDamageBonus[3978]["tFunction"] = tBossDamageBonus[3978]["tFunction"] or {}
table.insert(tBossDamageBonus[3978]["tFunction"],TreasureArea_BossDamgRank)
-- 3970	妖后瑶姬
tBossDamageBonus[3970] = tBossDamageBonus[3970] or {}
tBossDamageBonus[3970]["tFunction"] = tBossDamageBonus[3970]["tFunction"] or {}
table.insert(tBossDamageBonus[3970]["tFunction"],TreasureArea_BossDamgRank)
-- 3971		邪龙护法
tBossDamageBonus[3971] = tBossDamageBonus[3971] or {}
tBossDamageBonus[3971]["tFunction"] = tBossDamageBonus[3971]["tFunction"] or {}
table.insert(tBossDamageBonus[3971]["tFunction"],TreasureArea_BossDamgRank)

-- BossRewardEnd 保底奖励
-- 3976	晶魄血妖
tBossRewardEnd[3976] = tBossRewardEnd[3976] or {}
tBossRewardEnd[3976]["tFunction"] = tBossRewardEnd[3976]["tFunction"] or {}
table.insert(tBossRewardEnd[3976]["tFunction"],TreasureArea_KillBossJoin)
-- 3977	禁天邪兽
tBossRewardEnd[3977] = tBossRewardEnd[3977] or {}
tBossRewardEnd[3977]["tFunction"] = tBossRewardEnd[3977]["tFunction"] or {}
table.insert(tBossRewardEnd[3977]["tFunction"],TreasureArea_KillBossJoin)
-- 3978	啸海狂魔
tBossRewardEnd[3978] = tBossRewardEnd[3978] or {}
tBossRewardEnd[3978]["tFunction"] = tBossRewardEnd[3978]["tFunction"] or {}
table.insert(tBossRewardEnd[3978]["tFunction"],TreasureArea_KillBossJoin)
-- 3970	妖后瑶姬
tBossRewardEnd[3970] = tBossRewardEnd[3970] or {}
tBossRewardEnd[3970]["tFunction"] = tBossRewardEnd[3970]["tFunction"] or {}
table.insert(tBossRewardEnd[3970]["tFunction"],TreasureArea_KillBossJoin)
-- 3971		邪龙护法
tBossRewardEnd[3971] = tBossRewardEnd[3971] or {}
tBossRewardEnd[3971]["tFunction"] = tBossRewardEnd[3971]["tFunction"] or {}
table.insert(tBossRewardEnd[3971]["tFunction"],TreasureArea_KillBossJoin)

--------------------------------------------时间自检模板---------------------------------------
-- -- 3976	晶魄血妖
-- tOntimerMin_M[57] = tOntimerMin_M[57] or {}
-- table.insert(tOntimerMin_M[57],TreasureArea_BrushBoss)
-- -- 3977	禁天邪兽
-- tOntimerMin_M[30] = tOntimerMin_M[30] or {}
-- table.insert(tOntimerMin_M[30],TreasureArea_BrushBoss)
-- -- 3978	啸海狂魔
-- tOntimerMin_M[45] = tOntimerMin_M[45] or {}
-- table.insert(tOntimerMin_M[45],TreasureArea_BrushBoss)
-- -- 3971		异域邪龙
-- tOntimerMin_M[05] = tOntimerMin_M[05] or {}
-- table.insert(tOntimerMin_M[05],TreasureArea_BrushBoss)
local tTreasureArea_BrushBoss1 = {}
tTreasureArea_BrushBoss1["Type"] = 3  -- 刷怪
tTreasureArea_BrushBoss1["TimeType"] = 5  -- 小时时间
tTreasureArea_BrushBoss1["Multiple"] = {}
tTreasureArea_BrushBoss1["Multiple"][1] = "05 05"
tTreasureArea_BrushBoss1["Multiple"][2] = "30 30"
tTreasureArea_BrushBoss1["Multiple"][3] = "45 45"
tTreasureArea_BrushBoss1["Multiple"][4] = "57 57"
tTreasureArea_BrushBoss1["Func"] = TreasureArea_BrushBoss
table.insert(tSystemTime_InitialData,tTreasureArea_BrushBoss1)

-- 3970	瑶姬妖后
local tTreasureArea_BrushBoss2 = {}
tTreasureArea_BrushBoss2["Type"] = 3  -- 刷怪
tTreasureArea_BrushBoss2["TimeType"] = 4  -- 日时间
tTreasureArea_BrushBoss2["Multiple"] = {}
tTreasureArea_BrushBoss2["Multiple"][1] = "19:10 19:10"
tTreasureArea_BrushBoss2["Multiple"][2] = "21:10 21:10"
tTreasureArea_BrushBoss2["Func"] = TreasureArea_BrushBoss
table.insert(tSystemTime_InitialData,tTreasureArea_BrushBoss2)
-- tOntimerMin_HM[1910] = tOntimerMin_HM[1910] or {}
-- table.insert(tOntimerMin_HM[1910],TreasureArea_BrushBoss)
-- tOntimerMin_HM[2110] = tOntimerMin_HM[2110] or {}
-- table.insert(tOntimerMin_HM[2110],TreasureArea_BrushBoss)

-- 天石兑换卡限制 动态码 +1天  6 或60天到期 则清空
local tTreasureArea_SetStcAndGlobal = {}
tTreasureArea_SetStcAndGlobal["Type"] = 2  -- 重置动态存储值
tTreasureArea_SetStcAndGlobal["TimeType"] = 4  -- 日时间
tTreasureArea_SetStcAndGlobal["Time"] = "00:00 00:00"
tTreasureArea_SetStcAndGlobal["Func"] = TreasureArea_SetStcAndGlobal
table.insert(tSystemTime_InitialData,tTreasureArea_SetStcAndGlobal)
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],TreasureArea_SetStcAndGlobal)

-- 重置临时表
local tTreasureArea_ClearTempTable = {}
tTreasureArea_ClearTempTable["Type"] = 6  -- 其他
tTreasureArea_ClearTempTable["TimeType"] = 4  -- 日时间
tTreasureArea_ClearTempTable["Time"] = "00:00 00:05"
tTreasureArea_ClearTempTable["Func"] = TreasureArea_ClearTempTable
table.insert(tSystemTime_InitialData,tTreasureArea_ClearTempTable)
-- tOntimerMin_HM[0700] = tOntimerMin_HM[0700] or {}
-- table.insert(tOntimerMin_HM[0700],TreasureArea_ClearTempTable)

-- 每日 23:59时 截止计算除魔战绩
local tTreasureArea_ClearRankList = {}
tTreasureArea_ClearRankList["Type"] = 2  -- 重置动态存储值
tTreasureArea_ClearRankList["TimeType"] = 4  -- 日时间
tTreasureArea_ClearRankList["Time"] = "23:59 23:59"
tTreasureArea_ClearRankList["Func"] = TreasureArea_ClearRankList
table.insert(tSystemTime_InitialData,tTreasureArea_ClearRankList)
-- 每日 23:59时 截止计算除魔战绩
local tTreasureArea_ClearRankList1 = {}
tTreasureArea_ClearRankList1["Type"] = 2  -- 重置动态存储值
tTreasureArea_ClearRankList1["TimeType"] = 4  -- 日时间
tTreasureArea_ClearRankList1["Time"] = "00:00 00:01"
tTreasureArea_ClearRankList1["Func"] = TreasureArea_ClearRankList
table.insert(tSystemTime_InitialData,tTreasureArea_ClearRankList1)
-- tOntimerMin_HM[2359] = tOntimerMin_HM[2359] or {}
-- table.insert(tOntimerMin_HM[2359],TreasureArea_ClearRankList)

-- 清宝箱限制
local tTreasureArea_OnTime = {}
	tTreasureArea_OnTime["Type"] = 2
	tTreasureArea_OnTime["TimeType"] = 5
	tTreasureArea_OnTime["Multiple"] = {}
	tTreasureArea_OnTime["Multiple"][1]  = "00 00"
	tTreasureArea_OnTime["Func"] = TreasureArea_ClearBoxLimit
table.insert(tSystemTime_InitialData,tTreasureArea_OnTime)

-- 上线 每日一次 设置掩码  人品值设置为100
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,TreasureArea_LogIn)
table.insert(tSystem_PlayLogin_Func,TreasureArea_LogInChkLuck)
--------------------------------------------杀人触发模板---------------------------------------
-- 杀人触发，获得打宝状态逻辑
tUserKilled["tFunction"] = tUserKilled["tFunction"] or {}
table.insert(tUserKilled["tFunction"],TreasureArea_KillPlayer)

---------------------------------------------------------------------------------------------
-- 服务器启动触发
tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],TreasureArea_ServerStart)

