------------------------------------------------------------------------------------
--Name:			180109[英文征服][活动脚本]2月情人节大作战
--Purpose:		2月情人节大作战
--Creator:		陈琳
--Created:		2018/01/09
------------------------------------------------------------------------------------
-- lua.ini
-- 40800

-- logid
-- 12000982

-- 掩码说明
-- stc(172,06) 背包信
-- stc(172,07) 记录玩家阵营
-- stc(172,12) 记录玩家CP
-- stc(172,13) 记录玩家每日上交鲜花获得的魅力值
-- stc(172,14) 记录玩家总魅力值
-- stc(172,20) 记录任务1
-- stc(172,21) 记录任务2
-- stc(172,27) 记录任务3
-- stc(173,27) 记录玩家每日杀怪掉落定情信物
-- stc(173,28) 记录玩家是否为贵宾
-- stc(173,29) 记录玩家是否是私人Party举办人
-- stc(173,30) 记录玩家每日参加私人Party的次数
-- stc(173,31) 记录玩家每日打怪获得礼包数量
-- stc(173,32) 记录玩家每日打怪获得包装纸数量
-- stc(173,52) 记录玩家参加Party的编号（时间戳） 编号相等则入场过本场Party 入场官方Party记为1
-- stc(173,53) 记录玩家每场宴会打开贵宾宝箱次数
-- stc(173,56) 记录玩家每日打爱情信使的数量
-- stc(173,91) 记录打怪获得礼包达到上限的提示
-- stc(173,92) 记录打怪获得包装纸达到上限的提示

-- cq_dyna_global_data
-- 【 51997 】
-- data0 单身贵族活力值
-- data1 减少CP阵营活力值
-- data2 CP阵营活力值
-- data3 减少单身阵营活力值
-- 【 52036 】
-- data0 是否开启Party（阵营活力值满足或官方主办时间到了）
-- data1
-- data2 是否单身Party中 0为否 1为官方Party >1为私人Party中及时间戳
-- data3 是否CPParty中 0为否 1为官方Party >1为私人Party中及时间戳
-- data4 单身私人Party密钥
-- data5 CP私人Party密钥
-- datastr0 提前开启Party的时间
-- datastr1 提前开启Party的阵营
-- 【 52037 】
-- data0 
-- data1 
-- data2 单身Party总氛围
-- data3 CPParty总氛围
-- data4 单身Party已用氛围
-- data5 CPParty已用氛围
-- 【 52038 】
-- data0 天石雨状态 单身Party 开启时赋值为5 5为第1场开始 4为第1场结束 3为第2场开始 2为第2场结束 1为第3场开始 0为第3场结束
-- data1 天石雨状态 CPParty
-- data2 天石雨开启时间戳 单身Party
-- data3 天石雨开启时间戳 CPParty

-- npc
-- 21358 单身王子
-- 21359 单身公主
-- 21360 情人节礼官
-- 21361 恋爱男神
-- 21362 恋爱女神
-- 21363 火焰贵族
-- 21364 葬爱贵族
-- 21365 孤高贵族
-- 21366 爱情园丁
-- 21367 爱情舞者
-- 21368 爱情果农
-- 21392 22637 秘境传送使
-- 21393 定情信物保管人
-- 21394 Party主持人
-- 21395 单身狂欢夜主办方
-- 21396 CP狂欢Party主办方
-- 21403 21404 21405 21406 晕倒的单身贵族
-- 21407 点火
-- 21408 21409 21410 21411 21412爱情果
-- 21443 爱情树

-- itemtype
-- 3307147 面具
-- 3307148 香槟
-- 3307149 礼服
-- 3307150 包装纸
-- 3307151 我心永恒外套碎片
-- 3307152 火把
-- 3307153 爱情露水
-- 3307154 爱情果
-- 3307160 定情信物
-- 3307161 单身狂欢夜主办卡
-- 3307162 CP狂欢夜主办卡
-- 3307164 情人节精装礼盒
-- 3307165 情人节豪华礼盒
-- 3307166 情人节尊享礼盒
-- 3307167 狂欢派对礼盒
-- 3307168 贵宾礼盒
-- 3307169 单身贵族一阶礼包
-- 3307170 CP一阶礼包
-- 3307171 单身贵族二阶礼包
-- 3307172 CP二阶礼包
-- 3307173 单身贵族三阶礼包
-- 3307174 CP三阶礼包
-- 3307175 单身贵族四阶礼包
-- 3307176 CP四阶礼包
-- 3307177 情人节外套大礼包
-- 3307178 情人节外套礼包
-- 3307180 情人节大作战邀请函
-- 3307329 99朵郁金香
-- 3307330 999朵郁金香礼包
-- 3307331 999朵百合礼包
-- 3307332 999朵兰花礼包
-- 3307333  999朵玫瑰礼包
-- 3307334 情人节称号礼包
-- 3307561 一阶助威礼盒
-- 3307562 二阶助威礼盒
-- 3307563 三阶助威礼盒
-- 3307564 四阶助威礼盒
-- 3307565 五阶助威礼盒
-- 3307566 六阶助威礼盒
-- 3307567 七阶助威礼盒
-- 3307568 八阶助威礼盒
-- 3307569 九阶助威礼盒
-- 3307570 十阶助威礼盒
-- 3307571 宴会主办卡可选包
-- 3307572 蝶语之恋翅膀礼包

-- 195045 我心永恒·神眷
-- 195055 我心永恒

-- 前缀	ChineseValentinesOperation_
--------------------------------------数据部分-------------------------------------------
local tChineseValentinesOperation_Data = {}
	
	-- 等级限制
	tChineseValentinesOperation_Data["Level"] = 80
	tChineseValentinesOperation_Data["Metempsychosis"] = 0
	
	-- 背包空间 1个
	tChineseValentinesOperation_Data["Space"] = 1
	
	-- 添加物品 属性
	tChineseValentinesOperation_Data["Attr"] = "0 %d"
	
	-- 定情信物 掉落概率
	tChineseValentinesOperation_Data["Random"] = {}
	tChineseValentinesOperation_Data["Random"]["Start"] = 5
	tChineseValentinesOperation_Data["Random"]["End"] = 100
	-- Party密钥 生成数据 
	tChineseValentinesOperation_Data["RandomKey"] = {}
	tChineseValentinesOperation_Data["RandomKey"]["Start"] = 1000
	tChineseValentinesOperation_Data["RandomKey"]["End"] = 9999
	-- 3307151 我心永恒碎片 翻倍概率
	tChineseValentinesOperation_Data["RandomFragment"] = {}
	tChineseValentinesOperation_Data["RandomFragment"]["StartNum"] = 50
	tChineseValentinesOperation_Data["RandomFragment"]["EndNum"] = 100
	
	-- 掩码
	tChineseValentinesOperation_Data["Stc"] = {}
	-- stc(172,07) 记录玩家阵营
	tChineseValentinesOperation_Data["Stc"]["Camp"] = {}
	tChineseValentinesOperation_Data["Stc"]["Camp"]["EventType"] = 172
	tChineseValentinesOperation_Data["Stc"]["Camp"]["DataType"] = 07
	tChineseValentinesOperation_Data["Stc"]["Camp"]["Single"] = 1
	tChineseValentinesOperation_Data["Stc"]["Camp"]["Couple"] = 2
	-- stc(172,12) 记录玩家CP
	tChineseValentinesOperation_Data["Stc"]["CP"] = {}
	tChineseValentinesOperation_Data["Stc"]["CP"]["EventType"] = 172
	tChineseValentinesOperation_Data["Stc"]["CP"]["DataType"] = 12
	-- stc(172,13) 记录玩家每日上交鲜花获得的魅力值
	tChineseValentinesOperation_Data["Stc"]["Flowers"] = {}
	tChineseValentinesOperation_Data["Stc"]["Flowers"]["EventType"] = 172
	tChineseValentinesOperation_Data["Stc"]["Flowers"]["DataType"] = 13
	tChineseValentinesOperation_Data["Stc"]["Flowers"]["Limit"] = 20000
	-- stc(172,14) 记录玩家总魅力值
	tChineseValentinesOperation_Data["Stc"]["Charming"] = {}
	tChineseValentinesOperation_Data["Stc"]["Charming"]["EventType"] = 172
	tChineseValentinesOperation_Data["Stc"]["Charming"]["DataType"] = 14
	-- 任务 1为接受（单身任务，CP任务组队做） 2为接受（CP任务单人带信物） 3为完成
	-- stc(172,20) 火炬任务 浇灌任务
	tChineseValentinesOperation_Data["Stc"][1] = {}
	tChineseValentinesOperation_Data["Stc"][1]["EventType"] = 172
	tChineseValentinesOperation_Data["Stc"][1]["DataType"] = 20
	tChineseValentinesOperation_Data["Stc"][1]["Accept"] = 1
	tChineseValentinesOperation_Data["Stc"][1]["CPAccept"] = 2
	tChineseValentinesOperation_Data["Stc"][1]["Complete"] = 3
	-- stc(172,21) 驱赶任务 秀恩爱任务
	tChineseValentinesOperation_Data["Stc"][2] = {}
	tChineseValentinesOperation_Data["Stc"][2]["EventType"] = 172
	tChineseValentinesOperation_Data["Stc"][2]["DataType"] = 21
	tChineseValentinesOperation_Data["Stc"][2]["Accept"] = 1
	tChineseValentinesOperation_Data["Stc"][2]["CPAccept"] = 2
	tChineseValentinesOperation_Data["Stc"][2]["Complete"] = 3
	-- stc(172,27) 拯救任务 采摘任务
	tChineseValentinesOperation_Data["Stc"][3] = {}
	tChineseValentinesOperation_Data["Stc"][3]["EventType"] = 172
	tChineseValentinesOperation_Data["Stc"][3]["DataType"] = 27
	tChineseValentinesOperation_Data["Stc"][3]["Accept"] = 1
	tChineseValentinesOperation_Data["Stc"][3]["CPAccept"] = 2
	tChineseValentinesOperation_Data["Stc"][3]["Complete"] = 3
	-- stc(173,27) 记录玩家每日杀怪掉落定情信物
	tChineseValentinesOperation_Data["Stc"][3119] = {}
	tChineseValentinesOperation_Data["Stc"][3119]["EventType"] = 173
	tChineseValentinesOperation_Data["Stc"][3119]["DataType"] = 27
	tChineseValentinesOperation_Data["Stc"][3119]["Complete"] = 3
	-- stc(173,28) 记录玩家是否为贵宾
	tChineseValentinesOperation_Data["Stc"]["VIP"] = {}
	tChineseValentinesOperation_Data["Stc"]["VIP"]["EventType"] = 173
	tChineseValentinesOperation_Data["Stc"]["VIP"]["DataType"] = 28
	tChineseValentinesOperation_Data["Stc"]["VIP"]["Complete"] = 1
	-- stc(173,29) 记录玩家是否是私人Party举办人
	tChineseValentinesOperation_Data["Stc"]["HostParty"] = {}
	tChineseValentinesOperation_Data["Stc"]["HostParty"]["EventType"] = 173
	tChineseValentinesOperation_Data["Stc"]["HostParty"]["DataType"] = 29
	tChineseValentinesOperation_Data["Stc"]["HostParty"]["Complete"] = 1
	-- stc(173,30) 记录玩家每日参加私人Party的次数
	tChineseValentinesOperation_Data["Stc"]["PartyTimes"] = {}
	tChineseValentinesOperation_Data["Stc"]["PartyTimes"]["EventType"] = 173
	tChineseValentinesOperation_Data["Stc"]["PartyTimes"]["DataType"] = 30
	tChineseValentinesOperation_Data["Stc"]["PartyTimes"]["Complete"] = 3
	-- stc(173,31) 记录玩家每日打怪获得礼包数量
	tChineseValentinesOperation_Data["Stc"]["Monster"] = {}
	tChineseValentinesOperation_Data["Stc"]["Monster"][1] = {}
	tChineseValentinesOperation_Data["Stc"]["Monster"][1]["EventType"] = 173
	tChineseValentinesOperation_Data["Stc"]["Monster"][1]["DataType"] = 31
	tChineseValentinesOperation_Data["Stc"]["Monster"][1]["Complete"] = 15
	-- stc(173,32) 记录玩家每日打怪获得包装纸数量
	tChineseValentinesOperation_Data["Stc"]["Monster"][2] = {}
	tChineseValentinesOperation_Data["Stc"]["Monster"][2]["EventType"] = 173
	tChineseValentinesOperation_Data["Stc"]["Monster"][2]["DataType"] = 32
	tChineseValentinesOperation_Data["Stc"]["Monster"][2]["Complete"] = 30
	-- stc(173,52) 记录玩家参加Party的编号（时间戳）
	tChineseValentinesOperation_Data["Stc"]["PartyNum"] = {}
	tChineseValentinesOperation_Data["Stc"]["PartyNum"]["EventType"] = 173
	tChineseValentinesOperation_Data["Stc"]["PartyNum"]["DataType"] = 52
	tChineseValentinesOperation_Data["Stc"]["PartyNum"]["Complete"] = 1
	-- stc(173,53) 记录玩家每场宴会打开贵宾宝箱次数
	tChineseValentinesOperation_Data["Stc"]["Chest"] = {}
	tChineseValentinesOperation_Data["Stc"]["Chest"]["EventType"] = 173
	tChineseValentinesOperation_Data["Stc"]["Chest"]["DataType"] = 53
	tChineseValentinesOperation_Data["Stc"]["Chest"]["Complete"] = 10
	-- stc(173,56) 记录玩家每日打爱情信使的数量
	tChineseValentinesOperation_Data["Stc"]["Letter"] = {}
	tChineseValentinesOperation_Data["Stc"]["Letter"]["EventType"] = 173
	tChineseValentinesOperation_Data["Stc"]["Letter"]["DataType"] = 56
	tChineseValentinesOperation_Data["Stc"]["Letter"]["Complete"] = 10
	-- stc(173,91) 记录打怪获得礼包达到上限的提示
	tChineseValentinesOperation_Data["Stc"]["Msg"] = {}
	tChineseValentinesOperation_Data["Stc"]["Msg"][1] = {}
	tChineseValentinesOperation_Data["Stc"]["Msg"][1]["EventType"] = 173
	tChineseValentinesOperation_Data["Stc"]["Msg"][1]["DataType"] = 91
	tChineseValentinesOperation_Data["Stc"]["Msg"][1]["Complete"] = 1
	-- stc(173,92) 记录打怪获得包装纸达到上限的提示
	tChineseValentinesOperation_Data["Stc"]["Msg"][2] = {}
	tChineseValentinesOperation_Data["Stc"]["Msg"][2]["EventType"] = 173
	tChineseValentinesOperation_Data["Stc"]["Msg"][2]["DataType"] = 92
	tChineseValentinesOperation_Data["Stc"]["Msg"][2]["Complete"] = 1
	
	-- globalid
	tChineseValentinesOperation_Data["GlobalId"] = {}
	tChineseValentinesOperation_Data["GlobalId"]["Energy"] = 51997
	tChineseValentinesOperation_Data["GlobalId"]["Party"] = 52036
	tChineseValentinesOperation_Data["GlobalId"]["Air"] = 52037
	tChineseValentinesOperation_Data["GlobalId"]["Rain"] = 52038
	-- pos
	tChineseValentinesOperation_Data["GlobalIdPos"] = {}
	tChineseValentinesOperation_Data["GlobalIdPos"]["Energy"] = {}
	tChineseValentinesOperation_Data["GlobalIdPos"]["Energy"][1] = 0 -- data0 单身贵族活力值
	tChineseValentinesOperation_Data["GlobalIdPos"]["Energy"][2] = 2  -- data2 CP阵营活力值
	tChineseValentinesOperation_Data["GlobalIdPos"]["MinusEnergy"] = {}
	tChineseValentinesOperation_Data["GlobalIdPos"]["MinusEnergy"][1] = 1 -- data1 减少CP阵营活力值
	tChineseValentinesOperation_Data["GlobalIdPos"]["MinusEnergy"][2] = 3 -- data3 减少单身阵营活力值
	
	tChineseValentinesOperation_Data["GlobalIdPos"]["Party"] = {}
	tChineseValentinesOperation_Data["GlobalIdPos"]["Party"][1] = 2 -- data2 是否单身Party中
	tChineseValentinesOperation_Data["GlobalIdPos"]["Party"][2] = 3 -- data3 是否CPParty中
	tChineseValentinesOperation_Data["GlobalIdPos"]["Key"] = {}
	tChineseValentinesOperation_Data["GlobalIdPos"]["Key"][1] = 4 -- data4 单身私人Party密钥
	tChineseValentinesOperation_Data["GlobalIdPos"]["Key"][2] = 5 -- data5 CP私人Party密钥
	
	tChineseValentinesOperation_Data["GlobalIdPos"]["Rain"] = {}
	tChineseValentinesOperation_Data["GlobalIdPos"]["Rain"][1] = 0 -- data0 单身Party是否在下天石雨
	tChineseValentinesOperation_Data["GlobalIdPos"]["Rain"][2] = 1 -- data1 CPParty是否在下天石雨
	tChineseValentinesOperation_Data["GlobalIdPos"]["Air"] = {}
	tChineseValentinesOperation_Data["GlobalIdPos"]["Air"][1] = 2 -- data2 单身Party总氛围
	tChineseValentinesOperation_Data["GlobalIdPos"]["Air"][2] = 3 -- data3 CPParty总氛围
	tChineseValentinesOperation_Data["GlobalIdPos"]["UseAir"] = {}
	tChineseValentinesOperation_Data["GlobalIdPos"]["UseAir"][1] = 4 -- data4 单身Party已用氛围
	tChineseValentinesOperation_Data["GlobalIdPos"]["UseAir"][2] = 5 -- data5 CPParty已用氛围
	
	tChineseValentinesOperation_Data["GlobalIdPos"]["RainTimes"] = {}
	tChineseValentinesOperation_Data["GlobalIdPos"]["RainTimes"][1] = 0 -- 天石雨状态 单身Party
	tChineseValentinesOperation_Data["GlobalIdPos"]["RainTimes"][2] = 1 -- 天石雨状态 CPParty
	tChineseValentinesOperation_Data["GlobalIdPos"]["RainTimestamp"] = {}
	tChineseValentinesOperation_Data["GlobalIdPos"]["RainTimestamp"][1] = 2 -- 天石雨时间戳 单身Party
	tChineseValentinesOperation_Data["GlobalIdPos"]["RainTimestamp"][2] = 3 -- 天石雨时间戳 CPParty
	
	-- 完成单身/CP任务增减点数
	tChineseValentinesOperation_Data["Gain"] = {}
	tChineseValentinesOperation_Data["Gain"][1] = 50 -- 魅力值
	tChineseValentinesOperation_Data["Gain"][2] = 50 -- 增加本阵营活力值
	tChineseValentinesOperation_Data["Gain"][3] = 5 -- 减少敌对阵营活力值
	
	tChineseValentinesOperation_Data["NeedEnergy"] = 100000 -- 开启Party所需活力值
	tChineseValentinesOperation_Data["ExtraEnergy"] = 1000 -- 额外增加活力值
	tChineseValentinesOperation_Data["HostPoint"] = 1000 -- 主办人获得魅力值
	tChineseValentinesOperation_Data["VIPFee"] = 27 -- 贵宾费用 天石
	tChineseValentinesOperation_Data["FireFee"] = 100 -- 烟花费用 天石
	tChineseValentinesOperation_Data["RainTimes"] = 5 -- 开启Party时天石雨状态赋值
	
	-- Party氛围
	tChineseValentinesOperation_Data["AirPoint"] = {}
	tChineseValentinesOperation_Data["AirPoint"][1] = 50 -- 贵宾入场
	tChineseValentinesOperation_Data["AirPoint"][2] = 10 -- 普通观众入场
	tChineseValentinesOperation_Data["FirePoint"] = 100 -- 烟花
	tChineseValentinesOperation_Data["CallRain"] = 500 -- 召唤天石雨
	
	-- 倒计时时间 单位秒
	tChineseValentinesOperation_Data["PartyDelayTime"] = 1800 -- 一场Party持续时间
	tChineseValentinesOperation_Data["BeforeRainTime"] = 60 -- 公告1分钟后开始下天石雨
	tChineseValentinesOperation_Data["RainTime"] = 300 -- 每场天石雨持续时间
	tChineseValentinesOperation_Data["MissionTime"] = 3 -- 爱情秘境 任务读条时间
	
	-- NPC
	-- 报名加入阵营的npc
	tChineseValentinesOperation_Data["JoinNPC"] = {}
	tChineseValentinesOperation_Data["JoinNPC"][1] = 21358
	tChineseValentinesOperation_Data["JoinNPC"][2] = 21361
	-- 上交鲜花/道具的npc
	tChineseValentinesOperation_Data["MissionNPC"] = {}
	tChineseValentinesOperation_Data["MissionNPC"][1] = 21359
	tChineseValentinesOperation_Data["MissionNPC"][2] = 21362
	-- Party主持人
	tChineseValentinesOperation_Data["PartyNpc"] = {}
	tChineseValentinesOperation_Data["PartyNpc"][1] = 21394
	tChineseValentinesOperation_Data["PartyNpc"][2] = 21444
	
	-- npc阵营 1为单身 2为CP
	tChineseValentinesOperation_Data["NPCCamp"] = {}
	-- 双龙城 报名npc 上交鲜花/道具npc
	tChineseValentinesOperation_Data["NPCCamp"][21358] = 1
	tChineseValentinesOperation_Data["NPCCamp"][21359] = 1
	tChineseValentinesOperation_Data["NPCCamp"][21361] = 2
	tChineseValentinesOperation_Data["NPCCamp"][21362] = 2
	-- 单身/CP任务接任务npc
	tChineseValentinesOperation_Data["NPCCamp"][21363] = 1
	tChineseValentinesOperation_Data["NPCCamp"][21364] = 1
	tChineseValentinesOperation_Data["NPCCamp"][21365] = 1
	tChineseValentinesOperation_Data["NPCCamp"][21366] = 2
	tChineseValentinesOperation_Data["NPCCamp"][21367] = 2
	tChineseValentinesOperation_Data["NPCCamp"][21368] = 2
	tChineseValentinesOperation_Data["NPCCamp"][21393] = 2 -- 定情性物保管人
	-- 单身任务做任务npc
	tChineseValentinesOperation_Data["NPCCamp"][21407] = 1 -- 火炬任务 爱情树
	tChineseValentinesOperation_Data["NPCCamp"][3118] = 1 -- 驱赶任务 爱情信使
	tChineseValentinesOperation_Data["NPCCamp"][21403] = 1 -- 拯救任务 晕倒的单身贵族
	tChineseValentinesOperation_Data["NPCCamp"][21404] = 1 -- 拯救任务 晕倒的单身贵族
	tChineseValentinesOperation_Data["NPCCamp"][21405] = 1 -- 拯救任务 晕倒的单身贵族
	tChineseValentinesOperation_Data["NPCCamp"][21406] = 1 -- 拯救任务 晕倒的单身贵族
	-- CP任务做任务npc
	tChineseValentinesOperation_Data["NPCCamp"][21443] = 2 -- 浇灌任务 爱情树
	tChineseValentinesOperation_Data["NPCCamp"][1893] = 2 -- 秀恩爱任务
	tChineseValentinesOperation_Data["NPCCamp"][21408] = 2 -- 采摘任务 爱情果
	tChineseValentinesOperation_Data["NPCCamp"][21409] = 2 -- 采摘任务 爱情果
	tChineseValentinesOperation_Data["NPCCamp"][21410] = 2 -- 采摘任务 爱情果
	tChineseValentinesOperation_Data["NPCCamp"][21411] = 2 -- 采摘任务 爱情果
	tChineseValentinesOperation_Data["NPCCamp"][21412] = 2 -- 采摘任务 爱情果
	-- 双龙城 Party入场npc
	tChineseValentinesOperation_Data["NPCCamp"][21395] = 1 -- 单身狂欢夜主办方
	tChineseValentinesOperation_Data["NPCCamp"][21396] = 2 -- CP狂欢Party主办方
	-- Party主持人
	tChineseValentinesOperation_Data["NPCCamp"][21394] = 1
	tChineseValentinesOperation_Data["NPCCamp"][21444] = 2
	-- Party 贵宾宝箱
	for i = 21397,21402 do
	tChineseValentinesOperation_Data["NPCCamp"][i] = 1
	end
	for i = 21435,21440 do
	tChineseValentinesOperation_Data["NPCCamp"][i] = 2
	end
	-- Party 地图
	tChineseValentinesOperation_Data["NPCCamp"][10259] = 1
	tChineseValentinesOperation_Data["NPCCamp"][10264] = 2
	
	-- npc敌对阵营
	tChineseValentinesOperation_Data["NPCOpposedCamp"] = {}
	-- 双龙城 报名npc 上交鲜花/道具npc
	tChineseValentinesOperation_Data["NPCOpposedCamp"][21358] = 2
	tChineseValentinesOperation_Data["NPCOpposedCamp"][21359] = 2
	tChineseValentinesOperation_Data["NPCOpposedCamp"][21361] = 1
	tChineseValentinesOperation_Data["NPCOpposedCamp"][21362] = 1
	-- 单身/CP任务接任务npc
	tChineseValentinesOperation_Data["NPCOpposedCamp"][21363] = 2
	tChineseValentinesOperation_Data["NPCOpposedCamp"][21364] = 2
	tChineseValentinesOperation_Data["NPCOpposedCamp"][21365] = 2
	tChineseValentinesOperation_Data["NPCOpposedCamp"][21366] = 1
	tChineseValentinesOperation_Data["NPCOpposedCamp"][21367] = 1
	tChineseValentinesOperation_Data["NPCOpposedCamp"][21368] = 1
	tChineseValentinesOperation_Data["NPCOpposedCamp"][21393] = 1
	-- 单身任务做任务npc
	tChineseValentinesOperation_Data["NPCOpposedCamp"][21407] = 2  -- 火炬任务 爱情树
	tChineseValentinesOperation_Data["NPCOpposedCamp"][3118] = 2 -- 驱赶任务 爱情信使
	tChineseValentinesOperation_Data["NPCOpposedCamp"][21403] = 2 -- 拯救任务 晕倒的单身贵族
	tChineseValentinesOperation_Data["NPCOpposedCamp"][21404] = 2 -- 拯救任务 晕倒的单身贵族
	tChineseValentinesOperation_Data["NPCOpposedCamp"][21405] = 2 -- 拯救任务 晕倒的单身贵族
	tChineseValentinesOperation_Data["NPCOpposedCamp"][21406] = 2 -- 拯救任务 晕倒的单身贵族
	-- CP任务做任务npc
	tChineseValentinesOperation_Data["NPCOpposedCamp"][21443] = 1 -- 浇灌任务 爱情树
	tChineseValentinesOperation_Data["NPCOpposedCamp"][1893] = 1 -- 秀恩爱任务
	tChineseValentinesOperation_Data["NPCOpposedCamp"][21408] = 1 -- 采摘任务 爱情果
	tChineseValentinesOperation_Data["NPCOpposedCamp"][21409] = 1 -- 采摘任务 爱情果
	tChineseValentinesOperation_Data["NPCOpposedCamp"][21410] = 1 -- 采摘任务 爱情果
	tChineseValentinesOperation_Data["NPCOpposedCamp"][21411] = 1 -- 采摘任务 爱情果
	tChineseValentinesOperation_Data["NPCOpposedCamp"][21412] = 1 -- 采摘任务 爱情果
	-- 双龙城 Party入场npc
	tChineseValentinesOperation_Data["NPCOpposedCamp"][21395] = 2 -- 单身狂欢夜主办方
	tChineseValentinesOperation_Data["NPCOpposedCamp"][21396] = 1 -- CP狂欢Party主办方
	-- Party主持人
	tChineseValentinesOperation_Data["NPCOpposedCamp"][21394] = 2
	tChineseValentinesOperation_Data["NPCOpposedCamp"][21444] = 1
	-- Party 贵宾宝箱
	for i = 21397,21402 do
	tChineseValentinesOperation_Data["NPCOpposedCamp"][i] = 1
	end
	for i = 21435,21440 do
	tChineseValentinesOperation_Data["NPCOpposedCamp"][i] = 2
	end
	
	-- 爱情秘境 npc任务掩码索引
	-- 单身/CP任务接任务npc
	tChineseValentinesOperation_Data["StcIndex"] = {}
	tChineseValentinesOperation_Data["StcIndex"][21363] = 1
	tChineseValentinesOperation_Data["StcIndex"][21364] = 2
	tChineseValentinesOperation_Data["StcIndex"][21365] = 3
	tChineseValentinesOperation_Data["StcIndex"][21366] = 1
	tChineseValentinesOperation_Data["StcIndex"][21367] = 2
	tChineseValentinesOperation_Data["StcIndex"][21368] = 3
	-- 单身任务做任务npc
	tChineseValentinesOperation_Data["StcIndex"][21407] = 1 -- 火炬任务
	tChineseValentinesOperation_Data["StcIndex"][3118] = 2 -- 驱赶任务 怪物
	tChineseValentinesOperation_Data["StcIndex"][21403] = 3 -- 拯救任务
	tChineseValentinesOperation_Data["StcIndex"][21404] = 3 -- 拯救任务
	tChineseValentinesOperation_Data["StcIndex"][21405] = 3 -- 拯救任务
	tChineseValentinesOperation_Data["StcIndex"][21406] = 3 -- 拯救任务
	-- CP任务做任务npc
	tChineseValentinesOperation_Data["StcIndex"][21443] = 1 -- 浇灌任务
	tChineseValentinesOperation_Data["StcIndex"][1893] = 2 -- 秀恩爱任务
	tChineseValentinesOperation_Data["StcIndex"][21408] = 3 -- 采摘任务
	tChineseValentinesOperation_Data["StcIndex"][21409] = 3 -- 采摘任务
	tChineseValentinesOperation_Data["StcIndex"][21410] = 3 -- 采摘任务
	tChineseValentinesOperation_Data["StcIndex"][21411] = 3 -- 采摘任务
	tChineseValentinesOperation_Data["StcIndex"][21412] = 3 -- 采摘任务
	
	-- 单身/CP任务接任务是否会获得道具
	tChineseValentinesOperation_Data["NeedItem"] = {}
	tChineseValentinesOperation_Data["NeedItem"][21363] = 1
	tChineseValentinesOperation_Data["NeedItem"][21364] = 0
	tChineseValentinesOperation_Data["NeedItem"][21365] = 0
	tChineseValentinesOperation_Data["NeedItem"][21366] = 1
	tChineseValentinesOperation_Data["NeedItem"][21367] = 0
	tChineseValentinesOperation_Data["NeedItem"][21368] = 0
	
	-- 道具数量
	tChineseValentinesOperation_Data["PropsNum"] = 1
	tChineseValentinesOperation_Data["FruitsNum"] = 3
	
	-- cp阵营组队人数
	tChineseValentinesOperation_Data["TeamMembers"] = 2
	
	-- 报名费 加入阵营
	tChineseValentinesOperation_Data["Fee"] = {}
	tChineseValentinesOperation_Data["Fee"][1] = {}
	tChineseValentinesOperation_Data["Fee"][1][1] = 99
	tChineseValentinesOperation_Data["Fee"][1][2] = 18000000
	tChineseValentinesOperation_Data["Fee"][1][3] = 2
	tChineseValentinesOperation_Data["Fee"][2] = {}
	tChineseValentinesOperation_Data["Fee"][2][1] = 198
	tChineseValentinesOperation_Data["Fee"][2][2] = 36000000
	tChineseValentinesOperation_Data["Fee"][2][3] = 4
	
	-- 对白
	-- 3种报名方式
	tChineseValentinesOperation_Data["ConfirmFee"] = {}
	tChineseValentinesOperation_Data["ConfirmFee"][1] = "3-1"
	tChineseValentinesOperation_Data["ConfirmFee"][2] = "3-2"
	tChineseValentinesOperation_Data["ConfirmFee"][3] = "3-3"
	-- 单身/CP开启私人Party
	tChineseValentinesOperation_Data["Host"] = {}
	tChineseValentinesOperation_Data["Host"][1] = "4-1"
	tChineseValentinesOperation_Data["Host"][2] = "4-2"
	
	-- 上交的鲜花id
	tChineseValentinesOperation_Data["FlowersNumType"] = 5
	tChineseValentinesOperation_Data["Flower"] = {}
	tChineseValentinesOperation_Data["Flower"][1] = {751001,751003,751009,751099,751999}
	tChineseValentinesOperation_Data["Flower"][2] = {752001,752003,752009,752099,752999}
	tChineseValentinesOperation_Data["Flower"][3] = {753001,753003,753009,753099,753999}
	tChineseValentinesOperation_Data["Flower"][4] = {754001,754003,754009,754099,754999}
	-- 上交的道具id
	tChineseValentinesOperation_Data["Item"] = {3307147,3307148,3307149}
	
	-- 鲜花点数
	tChineseValentinesOperation_Data["FlowersNum"] = {1,3,9,99,999}
	tChineseValentinesOperation_Data["FlowerPoint"] = {5,5,5,10}
	-- 道具点数
	tChineseValentinesOperation_Data["ItemPoint"] = {5,10,20}
	
	-- 输入字符长度
	tChineseValentinesOperation_Data["Length"] = 15
	
	-- 寻路
	tChineseValentinesOperation_Data["Location"] = {}
	tChineseValentinesOperation_Data["Location"][3307152] = {}
	tChineseValentinesOperation_Data["Location"][3307152]["PosX"] = 84
	tChineseValentinesOperation_Data["Location"][3307152]["PosY"] = 92
	tChineseValentinesOperation_Data["Location"][3307152]["MapId"] = 10273
	tChineseValentinesOperation_Data["Location"][3307152]["NpcId"] = 0
	tChineseValentinesOperation_Data["Location"][3307153] = {}
	tChineseValentinesOperation_Data["Location"][3307153]["PosX"] = 95
	tChineseValentinesOperation_Data["Location"][3307153]["PosY"] = 82
	tChineseValentinesOperation_Data["Location"][3307153]["MapId"] = 10273
	tChineseValentinesOperation_Data["Location"][3307153]["NpcId"] = 0
	tChineseValentinesOperation_Data["Location"][3307154] = {}
	tChineseValentinesOperation_Data["Location"][3307154]["PosX"] = 132
	tChineseValentinesOperation_Data["Location"][3307154]["PosY"] = 56
	tChineseValentinesOperation_Data["Location"][3307154]["MapId"] = 10273
	tChineseValentinesOperation_Data["Location"][3307154]["NpcId"] = 21366 -- 爱情园丁
	tChineseValentinesOperation_Data["Location"][3307160] = {}
	tChineseValentinesOperation_Data["Location"][3307160]["PosX"] = 132
	tChineseValentinesOperation_Data["Location"][3307160]["PosY"] = 56
	tChineseValentinesOperation_Data["Location"][3307160]["MapId"] = 10273
	tChineseValentinesOperation_Data["Location"][3307160]["NpcId"] = 21366
	tChineseValentinesOperation_Data["Location"][3307161] = {}
	tChineseValentinesOperation_Data["Location"][3307161]["PosX"] = 340
	tChineseValentinesOperation_Data["Location"][3307161]["PosY"] = 475
	tChineseValentinesOperation_Data["Location"][3307161]["MapId"] = 1002
	tChineseValentinesOperation_Data["Location"][3307161]["NpcId"] = 21395
	tChineseValentinesOperation_Data["Location"][3307162] = {}
	tChineseValentinesOperation_Data["Location"][3307162]["PosX"] = 355
	tChineseValentinesOperation_Data["Location"][3307162]["PosY"] = 475
	tChineseValentinesOperation_Data["Location"][3307162]["MapId"] = 1002
	tChineseValentinesOperation_Data["Location"][3307162]["NpcId"] = 21396
	-- 火焰贵族 火炬任务
	tChineseValentinesOperation_Data["Location"][21363] = {}
	tChineseValentinesOperation_Data["Location"][21363]["PosX"] = 81
	tChineseValentinesOperation_Data["Location"][21363]["PosY"] = 75
	tChineseValentinesOperation_Data["Location"][21363]["MapId"] = 10273
	-- 葬爱贵族 驱赶任务
	tChineseValentinesOperation_Data["Location"][21364] = {}
	tChineseValentinesOperation_Data["Location"][21364]["PosX"] = 81
	tChineseValentinesOperation_Data["Location"][21364]["PosY"] = 94
	tChineseValentinesOperation_Data["Location"][21364]["MapId"] = 10273
	-- 孤高贵族 拯救任务
	tChineseValentinesOperation_Data["Location"][21365] = {}
	tChineseValentinesOperation_Data["Location"][21365]["PosX"] = 133
	tChineseValentinesOperation_Data["Location"][21365]["PosY"] = 135
	tChineseValentinesOperation_Data["Location"][21365]["MapId"] = 10273
	-- 爱情园丁 浇灌任务
	tChineseValentinesOperation_Data["Location"][21366] = {}
	tChineseValentinesOperation_Data["Location"][21366]["PosX"] = 95
	tChineseValentinesOperation_Data["Location"][21366]["PosY"] = 82
	tChineseValentinesOperation_Data["Location"][21366]["MapId"] = 10273
	-- 爱情舞者 秀恩爱任务
	tChineseValentinesOperation_Data["Location"][21367] = {}
	tChineseValentinesOperation_Data["Location"][21367]["PosX"] = 110
	tChineseValentinesOperation_Data["Location"][21367]["PosY"] = 110
	tChineseValentinesOperation_Data["Location"][21367]["MapId"] = 10273
	-- 爱情果农 采摘任务
	tChineseValentinesOperation_Data["Location"][21368] = {}
	tChineseValentinesOperation_Data["Location"][21368]["PosX"] = 76
	tChineseValentinesOperation_Data["Location"][21368]["PosY"] = 99
	tChineseValentinesOperation_Data["Location"][21368]["MapId"] = 10273
	-- 定情信物保管人 定情信物
	tChineseValentinesOperation_Data["Location"][21393] = {}
	tChineseValentinesOperation_Data["Location"][21393]["PosX"] = 102
	tChineseValentinesOperation_Data["Location"][21393]["PosY"] = 155
	tChineseValentinesOperation_Data["Location"][21393]["MapId"] = 10273
	-- 爱情秘境
	tChineseValentinesOperation_Data["Location"][1] = {}
	tChineseValentinesOperation_Data["Location"][1]["PosX"] = 60
	tChineseValentinesOperation_Data["Location"][1]["PosY"] = 125
	tChineseValentinesOperation_Data["Location"][1]["MapId"] = 10273
	tChineseValentinesOperation_Data["Location"][2] = {}
	tChineseValentinesOperation_Data["Location"][2]["PosX"] = 127
	tChineseValentinesOperation_Data["Location"][2]["PosY"] = 60
	tChineseValentinesOperation_Data["Location"][2]["MapId"] = 10273
	-- 回双龙城
	tChineseValentinesOperation_Data["Location"]["Back"] = {}
	tChineseValentinesOperation_Data["Location"]["Back"]["PosX"] = 347
	tChineseValentinesOperation_Data["Location"]["Back"]["PosY"] = 476
	tChineseValentinesOperation_Data["Location"]["Back"]["MapId"] = 1002
	tChineseValentinesOperation_Data["Location"]["Back"]["NewMapId"] = 10273
	-- Party
	tChineseValentinesOperation_Data["Party"] = {}
	tChineseValentinesOperation_Data["Party"][1] = {}
	tChineseValentinesOperation_Data["Party"][1]["PosX"] = 57
	tChineseValentinesOperation_Data["Party"][1]["PosY"] = 59
	tChineseValentinesOperation_Data["Party"][1]["MapId"] = 10259
	tChineseValentinesOperation_Data["Party"][2] = {}
	tChineseValentinesOperation_Data["Party"][2]["PosX"] = 57
	tChineseValentinesOperation_Data["Party"][2]["PosY"] = 59
	tChineseValentinesOperation_Data["Party"][2]["MapId"] = 10264
	
	-- 光效
	tChineseValentinesOperation_Data["Effect"] = {}
	tChineseValentinesOperation_Data["Effect"]["Normal"] = "zf2-e128"
	tChineseValentinesOperation_Data["Effect"]["Fire"] = "FF17"
	
	-- itemtype
	tChineseValentinesOperation_Data["Itemtype"] = {}
	tChineseValentinesOperation_Data["Itemtype"]["Update"] = 3307150
	tChineseValentinesOperation_Data["Itemtype"]["DragonBall"] = 1088000
	tChineseValentinesOperation_Data["Itemtype"]["Substitute"] = 3307160 -- 定情信物
	-- 任务道具
	tChineseValentinesOperation_Data["Itemtype"][1] = {}
	tChineseValentinesOperation_Data["Itemtype"][1][1] = 3307152 -- 火把
	tChineseValentinesOperation_Data["Itemtype"][1][2] = 0
	tChineseValentinesOperation_Data["Itemtype"][1][3] = 0
	tChineseValentinesOperation_Data["Itemtype"][2] = {}
	tChineseValentinesOperation_Data["Itemtype"][2][1] = 3307153 -- 爱情露水
	tChineseValentinesOperation_Data["Itemtype"][2][2] = 0
	tChineseValentinesOperation_Data["Itemtype"][2][3] = 3307154 -- 爱情果
	-- 读条动作
	tChineseValentinesOperation_Data["ActionId"] = {}
	tChineseValentinesOperation_Data["ActionId"][1] = {}
	tChineseValentinesOperation_Data["ActionId"][1][1] = 100
	tChineseValentinesOperation_Data["ActionId"][1][2] = 0
	tChineseValentinesOperation_Data["ActionId"][1][3] = 100
	tChineseValentinesOperation_Data["ActionId"][2] = {}
	tChineseValentinesOperation_Data["ActionId"][2][1] = 100
	tChineseValentinesOperation_Data["ActionId"][2][2] = 003
	tChineseValentinesOperation_Data["ActionId"][2][3] = 100
	
	tChineseValentinesOperation_Data["Itemtype"]["HostCard"] = {}
	tChineseValentinesOperation_Data["Itemtype"]["HostCard"][1] = 3307161
	tChineseValentinesOperation_Data["Itemtype"]["HostCard"][2] = 3307162
	
	-- 升级
	tChineseValentinesOperation_Data["Update"] = {}
	tChineseValentinesOperation_Data["Update"][3307164] = 1
	tChineseValentinesOperation_Data["Update"][3307165] = 4
	
	-- 链接
	tChineseValentinesOperation_Data["Web"] = "https://coevent.99.com/2018valentinesday/"
	
	-- log
	tChineseValentinesOperation_Data["LogId"] = 12000982
	tChineseValentinesOperation_Data["Log"] = {}
	tChineseValentinesOperation_Data["Log"]["Timeout"] = "0,0,%d,%d,12000982,1,0,0"
	tChineseValentinesOperation_Data["Log"]["InTheMap"] = "0,0,0,0,12000982,1[%d],0,0"
	tChineseValentinesOperation_Data["Log"]["SubmitFlowers"] = "0,0,%d,%d,12000982,1[1],0,0"
	tChineseValentinesOperation_Data["Log"]["SubmitItems"] = "0,0,%d,%d,12000982,1[2],0,0"
	tChineseValentinesOperation_Data["Log"]["DeliverProps"] = "0,0,0,0,12000982,1[3],%d,%d"
	tChineseValentinesOperation_Data["Log"]["SubmitProps"] = "0,0,0,0,12000982,1[3],0,0"
	tChineseValentinesOperation_Data["Log"]["Substitute"] = "0,0,3307160,1,12000982,1[3],0,0"
	tChineseValentinesOperation_Data["Log"]["HostParty"] = "0,0,%d,1,12000982,1[4],0,0"
	
	-- Emoneylog
	tChineseValentinesOperation_Data["Emoneylog"] = {}
	tChineseValentinesOperation_Data["Emoneylog"]["EmoneySignUp"] = "350	21080	%d	%d	1	"
	tChineseValentinesOperation_Data["Emoneylog"]["MoneySignUp"] = "350	21082	0	0	%d	"
	tChineseValentinesOperation_Data["Emoneylog"]["BallSignUp"] = "350	21083	0	0	%d	"
	tChineseValentinesOperation_Data["Emoneylog"]["VIP"] = "350	21081	%d	%d	1	"
	tChineseValentinesOperation_Data["Emoneylog"]["Fire"] = "350	21168	100	100	1	"
	
	-- 天石雨
	-- 物品 微光星陨石 15个 50气力值 15个 赤练石+1 15个 30赠点 5个
	tChineseValentinesOperation_Data["RainItemId"] = {3307483,3006539,3307484,3304307}
	tChineseValentinesOperation_Data["RainItemNum"] = {15,15,15,5}
	-- 物品刷新坐标
	tChineseValentinesOperation_Data["RainItemData"] = {}
	tChineseValentinesOperation_Data["RainItemData"]["PosX"] = 37
	tChineseValentinesOperation_Data["RainItemData"]["PosY"] = 48
	tChineseValentinesOperation_Data["RainItemData"]["Cellx"] = 75
	tChineseValentinesOperation_Data["RainItemData"]["Celly"] = 70
	-- 宝箱
	tChineseValentinesOperation_Data["BoxId"] = {}
	tChineseValentinesOperation_Data["BoxId"][1] = {21397,21398,21399,21400,21401,21402}
	tChineseValentinesOperation_Data["BoxId"][2] = {21435,21436,21437,21438,21439,21440}
	tChineseValentinesOperation_Data["BoxPos"] = {}
	tChineseValentinesOperation_Data["BoxPos"][1] = {{47,62},{46,56},{53,55},{53,63},{54,69},{54,75}}
	tChineseValentinesOperation_Data["BoxPos"][2] = {{62,73},{61,66},{64,61},{64,55},{71,63},{69,54}}
	-- 烟花
	tChineseValentinesOperation_Data["FirePos"] = {
		{51,43},{58,43},{64,43},{75,43},{38,43},{45,52},{45,66},
		{64,48},{71,52},{77,59},{72,66},{65,71},{51,71},{38,58}
	}
	
	-- 天石雨结束 移到5000地图
	tChineseValentinesOperation_Data["RainIOver"] = {}
	tChineseValentinesOperation_Data["RainIOver"]["PosX"] = 100
	tChineseValentinesOperation_Data["RainIOver"]["PosY"] = 100
	tChineseValentinesOperation_Data["RainIOver"]["MapId"] = 5000
	
local tChineseValentinesOperation_Reward = {}
	-- 3307151 我心永恒碎片
	tChineseValentinesOperation_Reward[3307151] = {}
	-- 翻倍
	tChineseValentinesOperation_Reward[3307151][1] = {}
	tChineseValentinesOperation_Reward[3307151][1]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307151][1]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307151][1]["RewardItem"][1]["Id"] = 3307151
	tChineseValentinesOperation_Reward[3307151][1]["RewardItem"][1]["Attr"] = "0 2"
	tChineseValentinesOperation_Reward[3307151][1]["Log"] = "0,0,3307151,1,12000982,3307151,2"
	tChineseValentinesOperation_Reward[3307151][1]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307151][1]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	-- 合成
	tChineseValentinesOperation_Reward[3307151][30] = {}
	tChineseValentinesOperation_Reward[3307151][30]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307151][30]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307151][30]["RewardItem"][1]["Id"] = 195055
	tChineseValentinesOperation_Reward[3307151][30]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tChineseValentinesOperation_Reward[3307151][30]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307151][30]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307151][30]["DeleteItem"][1]["Id"] = 3307151
	tChineseValentinesOperation_Reward[3307151][30]["DeleteItem"][1]["ItemNum"] = 30
	tChineseValentinesOperation_Reward[3307151][30]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307151][30]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307151][30]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	tChineseValentinesOperation_Reward[3307151][30]["Talk"] = tChineseValentinesOperation_Text[3307151]["Success"]
	tChineseValentinesOperation_Reward[3307151][30]["RewardBroadCast"] = tChineseValentinesOperation_Text[3307151]["Broadcast"]
	-- 兑换气力值
	tChineseValentinesOperation_Reward[3307151]["Enchange"] = {}
	tChineseValentinesOperation_Reward[3307151]["Enchange"]["RewardStrengthValue"] = {}
	tChineseValentinesOperation_Reward[3307151]["Enchange"]["RewardStrengthValue"]["Value"] = 500
	tChineseValentinesOperation_Reward[3307151]["Enchange"]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307151]["Enchange"]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307151]["Enchange"]["DeleteItem"][1]["Id"] = 3307151
	tChineseValentinesOperation_Reward[3307151]["Enchange"]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307151]["Enchange"]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307151]["Enchange"]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307164 情人节精装礼盒
	tChineseValentinesOperation_Reward[3307164] = {}
	-- 升级
	tChineseValentinesOperation_Reward[3307164]["Update"] = {}
	tChineseValentinesOperation_Reward[3307164]["Update"]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307164]["Update"]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307164]["Update"]["RewardItem"][1]["Id"] = 3307165
	tChineseValentinesOperation_Reward[3307164]["Update"]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307164]["Update"]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307164]["Update"]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307164]["Update"]["DeleteItem"][1]["Id"] = 3307164
	tChineseValentinesOperation_Reward[3307164]["Update"]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307164]["Update"]["DeleteItem"][2] = {}
	tChineseValentinesOperation_Reward[3307164]["Update"]["DeleteItem"][2]["Id"] = 3307150
	tChineseValentinesOperation_Reward[3307164]["Update"]["DeleteItem"][2]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307164]["Update"]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307164]["Update"]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307164]["Update"]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	-- 打开
	tChineseValentinesOperation_Reward[3307164][1] = {}
	tChineseValentinesOperation_Reward[3307164][1]["ItemChanceSum"] = 10000
	-- 面具	新物品	1			60.00%
	tChineseValentinesOperation_Reward[3307164][1][1] = {}
	tChineseValentinesOperation_Reward[3307164][1][1]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307164][1][1]["ItemChance"] = 6000
	tChineseValentinesOperation_Reward[3307164][1][1]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307164][1][1]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307164][1][1]["RewardItem"][1]["Id"] = 3307147
	tChineseValentinesOperation_Reward[3307164][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307164][1][1]["Log"] = "0,0,3307164,1,12000982,2,3307147,1"
	-- 香槟	新物品	1			30.00%
	tChineseValentinesOperation_Reward[3307164][1][2] = {}
	tChineseValentinesOperation_Reward[3307164][1][2]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307164][1][2]["ItemChance"] = 3000
	tChineseValentinesOperation_Reward[3307164][1][2]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307164][1][2]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307164][1][2]["RewardItem"][1]["Id"] = 3307148
	tChineseValentinesOperation_Reward[3307164][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307164][1][2]["Log"] = "0,0,3307164,1,12000982,2,3307148,1"
	-- 礼服	新物品	1			5.00%
	tChineseValentinesOperation_Reward[3307164][1][3] = {}
	tChineseValentinesOperation_Reward[3307164][1][3]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307164][1][3]["ItemChance"] = 500
	tChineseValentinesOperation_Reward[3307164][1][3]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307164][1][3]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307164][1][3]["RewardItem"][1]["Id"] = 3307149
	tChineseValentinesOperation_Reward[3307164][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307164][1][3]["Log"] = "0,0,3307164,1,12000982,2,3307149,1"
	-- 1天时效情人节外套	新物品	1			5.00%
	tChineseValentinesOperation_Reward[3307164][1][4] = {}
	tChineseValentinesOperation_Reward[3307164][1][4]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307164][1][4]["ItemChance"] = 500
	tChineseValentinesOperation_Reward[3307164][1][4]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307164][1][4]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307164][1][4]["RewardItem"][1]["Id"] = 195055
	tChineseValentinesOperation_Reward[3307164][1][4]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tChineseValentinesOperation_Reward[3307164][1][4]["Log"] = "0,0,3307164,1,12000982,2,195055,1"
	
	-- 3307165 情人节豪华礼盒
	tChineseValentinesOperation_Reward[3307165] = {}
	-- 升级
	tChineseValentinesOperation_Reward[3307165]["Update"] = {}
	tChineseValentinesOperation_Reward[3307165]["Update"]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307165]["Update"]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307165]["Update"]["RewardItem"][1]["Id"] = 3307166
	tChineseValentinesOperation_Reward[3307165]["Update"]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307165]["Update"]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307165]["Update"]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307165]["Update"]["DeleteItem"][1]["Id"] = 3307165
	tChineseValentinesOperation_Reward[3307165]["Update"]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307165]["Update"]["DeleteItem"][2] = {}
	tChineseValentinesOperation_Reward[3307165]["Update"]["DeleteItem"][2]["Id"] = 3307150
	tChineseValentinesOperation_Reward[3307165]["Update"]["DeleteItem"][2]["ItemNum"] = 4
	tChineseValentinesOperation_Reward[3307165]["Update"]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307165]["Update"]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307165]["Update"]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	-- 打开
	tChineseValentinesOperation_Reward[3307165][1] = {}
	tChineseValentinesOperation_Reward[3307165][1]["ItemChanceSum"] = 10000
	-- 面具	新物品	1			35.00%
	tChineseValentinesOperation_Reward[3307165][1][1] = {}
	tChineseValentinesOperation_Reward[3307165][1][1]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307165][1][1]["ItemChance"] = 3500
	tChineseValentinesOperation_Reward[3307165][1][1]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307165][1][1]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307165][1][1]["RewardItem"][1]["Id"] = 3307147
	tChineseValentinesOperation_Reward[3307165][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307165][1][1]["Log"] = "0,0,3307165,1,12000982,2,3307147,1"
	-- 面具	新物品	3			19.00%
	tChineseValentinesOperation_Reward[3307165][1][2] = {}
	tChineseValentinesOperation_Reward[3307165][1][2]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307165][1][2]["ItemChance"] = 1900
	tChineseValentinesOperation_Reward[3307165][1][2]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307165][1][2]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307165][1][2]["RewardItem"][1]["Id"] = 3307147
	tChineseValentinesOperation_Reward[3307165][1][2]["RewardItem"][1]["Attr"] = "0 3"
	tChineseValentinesOperation_Reward[3307165][1][2]["Log"] = "0,0,3307165,1,12000982,2,3307147,3"
	-- 香槟	新物品	1			25.00%
	tChineseValentinesOperation_Reward[3307165][1][3] = {}
	tChineseValentinesOperation_Reward[3307165][1][3]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307165][1][3]["ItemChance"] = 2500
	tChineseValentinesOperation_Reward[3307165][1][3]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307165][1][3]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307165][1][3]["RewardItem"][1]["Id"] = 3307148
	tChineseValentinesOperation_Reward[3307165][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307165][1][3]["Log"] = "0,0,3307165,1,12000982,2,3307148,1"
	-- 香槟	新物品	3			5.00%
	tChineseValentinesOperation_Reward[3307165][1][4] = {}
	tChineseValentinesOperation_Reward[3307165][1][4]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307165][1][4]["ItemChance"] = 500
	tChineseValentinesOperation_Reward[3307165][1][4]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307165][1][4]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307165][1][4]["RewardItem"][1]["Id"] = 3307148
	tChineseValentinesOperation_Reward[3307165][1][4]["RewardItem"][1]["Attr"] = "0 3"
	tChineseValentinesOperation_Reward[3307165][1][4]["Log"] = "0,0,3307165,1,12000982,2,3307148,3"
	-- 礼服	新物品	1			9.00%
	tChineseValentinesOperation_Reward[3307165][1][5] = {}
	tChineseValentinesOperation_Reward[3307165][1][5]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307165][1][5]["ItemChance"] = 900
	tChineseValentinesOperation_Reward[3307165][1][5]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307165][1][5]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307165][1][5]["RewardItem"][1]["Id"] = 3307149
	tChineseValentinesOperation_Reward[3307165][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307165][1][5]["Log"] = "0,0,3307165,1,12000982,2,3307149,1"
	-- 礼服	新物品	3			1.50%
	tChineseValentinesOperation_Reward[3307165][1][6] = {}
	tChineseValentinesOperation_Reward[3307165][1][6]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307165][1][6]["ItemChance"] = 150
	tChineseValentinesOperation_Reward[3307165][1][6]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307165][1][6]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307165][1][6]["RewardItem"][1]["Id"] = 3307149
	tChineseValentinesOperation_Reward[3307165][1][6]["RewardItem"][1]["Attr"] = "0 3"
	tChineseValentinesOperation_Reward[3307165][1][6]["Log"] = "0,0,3307165,1,12000982,2,3307149,3"
	-- 1天时效情人节外套	新物品	1			5.00%
	tChineseValentinesOperation_Reward[3307165][1][7] = {}
	tChineseValentinesOperation_Reward[3307165][1][7]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307165][1][7]["ItemChance"] = 500
	tChineseValentinesOperation_Reward[3307165][1][7]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307165][1][7]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307165][1][7]["RewardItem"][1]["Id"] = 195055
	tChineseValentinesOperation_Reward[3307165][1][7]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tChineseValentinesOperation_Reward[3307165][1][7]["Log"] = "0,0,3307165,1,12000982,2,195055,1"
	-- 情人节时装碎片	新物品	1			0.50%
	tChineseValentinesOperation_Reward[3307165][1][8] = {}
	tChineseValentinesOperation_Reward[3307165][1][8]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307165][1][8]["ItemChance"] = 50
	tChineseValentinesOperation_Reward[3307165][1][8]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307165][1][8]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307165][1][8]["RewardItem"][1]["Id"] = 3307151
	tChineseValentinesOperation_Reward[3307165][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307165][1][8]["Log"] = "0,0,3307165,1,12000982,2,3307151,1"
	tChineseValentinesOperation_Reward[3307165][1][8]["RewardBroadCast"] = tChineseValentinesOperation_Text["Msg"]["Fragment"]
	
	-- 3307166 情人节尊享礼盒
	tChineseValentinesOperation_Reward[3307166] = {}
	-- 打开
	tChineseValentinesOperation_Reward[3307166][1] = {}
	tChineseValentinesOperation_Reward[3307166][1]["ItemChanceSum"] = 10000
	-- 面具	新物品	3			15.00%
	tChineseValentinesOperation_Reward[3307166][1][1] = {}
	tChineseValentinesOperation_Reward[3307166][1][1]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307166][1][1]["ItemChance"] = 1500
	tChineseValentinesOperation_Reward[3307166][1][1]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307166][1][1]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307166][1][1]["RewardItem"][1]["Id"] = 3307147
	tChineseValentinesOperation_Reward[3307166][1][1]["RewardItem"][1]["Attr"] = "0 3"
	tChineseValentinesOperation_Reward[3307166][1][1]["Log"] = "0,0,3307166,1,12000982,2,3307147,3"
	-- 面具	新物品	5			10.00%
	tChineseValentinesOperation_Reward[3307166][1][2] = {}
	tChineseValentinesOperation_Reward[3307166][1][2]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307166][1][2]["ItemChance"] = 1000
	tChineseValentinesOperation_Reward[3307166][1][2]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307166][1][2]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307166][1][2]["RewardItem"][1]["Id"] = 3307147
	tChineseValentinesOperation_Reward[3307166][1][2]["RewardItem"][1]["Attr"] = "0 5"
	tChineseValentinesOperation_Reward[3307166][1][2]["Log"] = "0,0,3307166,1,12000982,2,3307147,5"
	-- 香槟	新物品	3			20.00%
	tChineseValentinesOperation_Reward[3307166][1][3] = {}
	tChineseValentinesOperation_Reward[3307166][1][3]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307166][1][3]["ItemChance"] = 2000
	tChineseValentinesOperation_Reward[3307166][1][3]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307166][1][3]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307166][1][3]["RewardItem"][1]["Id"] = 3307148
	tChineseValentinesOperation_Reward[3307166][1][3]["RewardItem"][1]["Attr"] = "0 3"
	tChineseValentinesOperation_Reward[3307166][1][3]["Log"] = "0,0,3307166,1,12000982,2,3307148,3"
	-- 香槟	新物品	5			10.00%
	tChineseValentinesOperation_Reward[3307166][1][4] = {}
	tChineseValentinesOperation_Reward[3307166][1][4]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307166][1][4]["ItemChance"] = 1000
	tChineseValentinesOperation_Reward[3307166][1][4]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307166][1][4]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307166][1][4]["RewardItem"][1]["Id"] = 3307148
	tChineseValentinesOperation_Reward[3307166][1][4]["RewardItem"][1]["Attr"] = "0 5"
	tChineseValentinesOperation_Reward[3307166][1][4]["Log"] = "0,0,3307166,1,12000982,2,3307148,5"
	-- 礼服	新物品	3			15.00%
	tChineseValentinesOperation_Reward[3307166][1][5] = {}
	tChineseValentinesOperation_Reward[3307166][1][5]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307166][1][5]["ItemChance"] = 1500
	tChineseValentinesOperation_Reward[3307166][1][5]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307166][1][5]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307166][1][5]["RewardItem"][1]["Id"] = 3307149
	tChineseValentinesOperation_Reward[3307166][1][5]["RewardItem"][1]["Attr"] = "0 3"
	tChineseValentinesOperation_Reward[3307166][1][5]["Log"] = "0,0,3307166,1,12000982,2,3307149,3"
	-- 礼服	新物品	5			10.00%
	tChineseValentinesOperation_Reward[3307166][1][6] = {}
	tChineseValentinesOperation_Reward[3307166][1][6]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307166][1][6]["ItemChance"] = 1000
	tChineseValentinesOperation_Reward[3307166][1][6]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307166][1][6]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307166][1][6]["RewardItem"][1]["Id"] = 3307149
	tChineseValentinesOperation_Reward[3307166][1][6]["RewardItem"][1]["Attr"] = "0 5"
	tChineseValentinesOperation_Reward[3307166][1][6]["Log"] = "0,0,3307166,1,12000982,2,3307149,5"
	-- 1天时效情人节外套	新物品	1			17.00%
	tChineseValentinesOperation_Reward[3307166][1][7] = {}
	tChineseValentinesOperation_Reward[3307166][1][7]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307166][1][7]["ItemChance"] = 1700
	tChineseValentinesOperation_Reward[3307166][1][7]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307166][1][7]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307166][1][7]["RewardItem"][1]["Id"] = 195055
	tChineseValentinesOperation_Reward[3307166][1][7]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tChineseValentinesOperation_Reward[3307166][1][7]["Log"] = "0,0,3307166,1,12000982,2,195055,1"
	-- 情人节时装碎片	新物品	1			3.00%
	tChineseValentinesOperation_Reward[3307166][1][8] = {}
	tChineseValentinesOperation_Reward[3307166][1][8]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307166][1][8]["ItemChance"] = 300
	tChineseValentinesOperation_Reward[3307166][1][8]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307166][1][8]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307166][1][8]["RewardItem"][1]["Id"] = 3307151
	tChineseValentinesOperation_Reward[3307166][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307166][1][8]["Log"] = "0,0,3307166,1,12000982,2,3307151,1"
	tChineseValentinesOperation_Reward[3307166][1][8]["RewardBroadCast"] = tChineseValentinesOperation_Text["Msg"]["Fragment"]
	
	-- 3307167 狂欢派对礼盒
	tChineseValentinesOperation_Reward[3307167] = {}
	tChineseValentinesOperation_Reward[3307167][1] = {}
	tChineseValentinesOperation_Reward[3307167][1]["ItemChanceSum"] = 10000
	-- 1天时效情人节光效版外套	新物品	1			35.00%
	tChineseValentinesOperation_Reward[3307167][1][1] = {}
	tChineseValentinesOperation_Reward[3307167][1][1]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307167][1][1]["ItemChance"] = 3500
	tChineseValentinesOperation_Reward[3307167][1][1]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307167][1][1]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307167][1][1]["RewardItem"][1]["Id"] = 195045
	tChineseValentinesOperation_Reward[3307167][1][1]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tChineseValentinesOperation_Reward[3307167][1][1]["Log"] = "0,0,3307167,1,12000982,2,195045,1"
	-- 7天时效情人节外套	新物品	1			35.00%
	tChineseValentinesOperation_Reward[3307167][1][2] = {}
	tChineseValentinesOperation_Reward[3307167][1][2]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307167][1][2]["ItemChance"] = 3500
	tChineseValentinesOperation_Reward[3307167][1][2]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307167][1][2]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307167][1][2]["RewardItem"][1]["Id"] = 195055
	tChineseValentinesOperation_Reward[3307167][1][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tChineseValentinesOperation_Reward[3307167][1][2]["Log"] = "0,0,3307167,1,12000982,2,195055,1"
	-- 情人节外套碎片	新物品	1			10.90%
	tChineseValentinesOperation_Reward[3307167][1][3] = {}
	tChineseValentinesOperation_Reward[3307167][1][3]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307167][1][3]["ItemChance"] = 1090
	tChineseValentinesOperation_Reward[3307167][1][3]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307167][1][3]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307167][1][3]["RewardItem"][1]["Id"] = 3307151
	tChineseValentinesOperation_Reward[3307167][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307167][1][3]["Log"] = "0,0,3307167,1,12000982,2,3307151,1"
	tChineseValentinesOperation_Reward[3307167][1][3]["RewardBroadCast"] = tChineseValentinesOperation_Text["Msg"]["Fragment"]
	-- 永久时效情人节外套	新物品	1			0.10%
	tChineseValentinesOperation_Reward[3307167][1][4] = {}
	tChineseValentinesOperation_Reward[3307167][1][4]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307167][1][4]["ItemChance"] = 10
	tChineseValentinesOperation_Reward[3307167][1][4]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307167][1][4]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307167][1][4]["RewardItem"][1]["Id"] = 195055
	tChineseValentinesOperation_Reward[3307167][1][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tChineseValentinesOperation_Reward[3307167][1][4]["Log"] = "0,0,3307167,1,12000982,2,195055,1"
	tChineseValentinesOperation_Reward[3307167][1][4]["RewardBroadCast"] = tChineseValentinesOperation_Text["Msg"]["Coat"]
	-- 礼服	新物品	10			19.00%
	tChineseValentinesOperation_Reward[3307167][1][5] = {}
	tChineseValentinesOperation_Reward[3307167][1][5]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307167][1][5]["ItemChance"] = 1900
	tChineseValentinesOperation_Reward[3307167][1][5]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307167][1][5]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307167][1][5]["RewardItem"][1]["Id"] = 3307149
	tChineseValentinesOperation_Reward[3307167][1][5]["RewardItem"][1]["Attr"] = "0 10"
	tChineseValentinesOperation_Reward[3307167][1][5]["Log"] = "0,0,3307167,1,12000982,2,3307149,10"
	
	-- 3307168 贵宾礼盒
	tChineseValentinesOperation_Reward[3307168] = {}
	tChineseValentinesOperation_Reward[3307168][1] = {}
	tChineseValentinesOperation_Reward[3307168][1]["ItemChanceSum"] = 10000
	-- 1天时效情人节光效版	新物品	1			100.00%
	tChineseValentinesOperation_Reward[3307168][1][1] = {}
	tChineseValentinesOperation_Reward[3307168][1][1]["RandomItemChanceType"] = 1
	tChineseValentinesOperation_Reward[3307168][1][1]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307168][1][1]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307168][1][1]["RewardItem"][1]["Id"] = 195045
	tChineseValentinesOperation_Reward[3307168][1][1]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	-- 情人节外套碎片	新物品	1			9.90%
	tChineseValentinesOperation_Reward[3307168][1][2] = {}
	tChineseValentinesOperation_Reward[3307168][1][2]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307168][1][2]["ItemChance"] = 990
	tChineseValentinesOperation_Reward[3307168][1][2]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307168][1][2]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307168][1][2]["RewardItem"][1]["Id"] = 3307151
	tChineseValentinesOperation_Reward[3307168][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307168][1][2]["Log"] = "0,0,3307168,1,12000982,2,195045[3307151],1[1]"
	tChineseValentinesOperation_Reward[3307168][1][2]["RewardBroadCast"] = tChineseValentinesOperation_Text["Msg"]["Fragment"]
	-- 面具	新物品	5			50.00%
	tChineseValentinesOperation_Reward[3307168][1][3] = {}
	tChineseValentinesOperation_Reward[3307168][1][3]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307168][1][3]["ItemChance"] = 5000
	tChineseValentinesOperation_Reward[3307168][1][3]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307168][1][3]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307168][1][3]["RewardItem"][1]["Id"] = 3307147
	tChineseValentinesOperation_Reward[3307168][1][3]["RewardItem"][1]["Attr"] = "0 5"
	tChineseValentinesOperation_Reward[3307168][1][3]["Log"] = "0,0,3307168,1,12000982,2,195045[3307147],1[5]"
	-- 香槟	新物品	5			30.00%
	tChineseValentinesOperation_Reward[3307168][1][4] = {}
	tChineseValentinesOperation_Reward[3307168][1][4]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307168][1][4]["ItemChance"] = 3000
	tChineseValentinesOperation_Reward[3307168][1][4]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307168][1][4]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307168][1][4]["RewardItem"][1]["Id"] = 3307148
	tChineseValentinesOperation_Reward[3307168][1][4]["RewardItem"][1]["Attr"] = "0 5"
	tChineseValentinesOperation_Reward[3307168][1][4]["Log"] = "0,0,3307168,1,12000982,2,195045[3307148],1[5]"
	-- 礼服	新物品	5			10.00%
	tChineseValentinesOperation_Reward[3307168][1][5] = {}
	tChineseValentinesOperation_Reward[3307168][1][5]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307168][1][5]["ItemChance"] = 1000
	tChineseValentinesOperation_Reward[3307168][1][5]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307168][1][5]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307168][1][5]["RewardItem"][1]["Id"] = 3307149
	tChineseValentinesOperation_Reward[3307168][1][5]["RewardItem"][1]["Attr"] = "0 5"
	tChineseValentinesOperation_Reward[3307168][1][5]["Log"] = "0,0,3307168,1,12000982,2,195045[3307149],1[5]"
	-- 永久时效情人节外套	新物品	1			0.10%
	tChineseValentinesOperation_Reward[3307168][1][6] = {}
	tChineseValentinesOperation_Reward[3307168][1][6]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward[3307168][1][6]["ItemChance"] = 10
	tChineseValentinesOperation_Reward[3307168][1][6]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307168][1][6]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307168][1][6]["RewardItem"][1]["Id"] = 195055
	tChineseValentinesOperation_Reward[3307168][1][6]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tChineseValentinesOperation_Reward[3307168][1][6]["Log"] = "0,0,3307168,1,12000982,2,195045[195055],1[1]"
	tChineseValentinesOperation_Reward[3307168][1][6]["RewardBroadCast"] = tChineseValentinesOperation_Text["Msg"]["Coat"]
	
	-- 3307169 单身贵族一阶礼包
	tChineseValentinesOperation_Reward[3307169] = {}
	
	tChineseValentinesOperation_Reward[3307169][1] = {}
	tChineseValentinesOperation_Reward[3307169][1]["RewardWing"] = {}
	tChineseValentinesOperation_Reward[3307169][1]["RewardWing"]["TitleType"] = 6012
	tChineseValentinesOperation_Reward[3307169][1]["RewardWing"]["TitleId"] = 6012
	tChineseValentinesOperation_Reward[3307169][1]["RewardWing"]["SaveTime"] = 0
	tChineseValentinesOperation_Reward[3307169][1]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307169][1]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307169][1]["RewardItem"][1]["Id"] = 3307177
	tChineseValentinesOperation_Reward[3307169][1]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307169][1]["RewardItem"][2] = {}
	tChineseValentinesOperation_Reward[3307169][1]["RewardItem"][2]["Id"] = 3307161
	tChineseValentinesOperation_Reward[3307169][1]["RewardItem"][2]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307169][1]["RewardItem"][3] = {}
	tChineseValentinesOperation_Reward[3307169][1]["RewardItem"][3]["Id"] = 3307334
	tChineseValentinesOperation_Reward[3307169][1]["RewardItem"][3]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307169][1]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307169][1]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307169][1]["DeleteItem"][1]["Id"] = 3307169
	tChineseValentinesOperation_Reward[3307169][1]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307169][1]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307169][1]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307169][1]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	tChineseValentinesOperation_Reward[3307169][2] = {}
	tChineseValentinesOperation_Reward[3307169][2]["RewardWing"] = {}
	tChineseValentinesOperation_Reward[3307169][2]["RewardWing"]["TitleType"] =  6012
	tChineseValentinesOperation_Reward[3307169][2]["RewardWing"]["TitleId"] = 6012
	tChineseValentinesOperation_Reward[3307169][2]["RewardWing"]["SaveTime"] = 0
	tChineseValentinesOperation_Reward[3307169][2]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307169][2]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307169][2]["RewardItem"][1]["Id"] = 3307177
	tChineseValentinesOperation_Reward[3307169][2]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307169][2]["RewardItem"][2] = {}
	tChineseValentinesOperation_Reward[3307169][2]["RewardItem"][2]["Id"] = 3000357
	tChineseValentinesOperation_Reward[3307169][2]["RewardItem"][2]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307169][2]["RewardItem"][3] = {}
	tChineseValentinesOperation_Reward[3307169][2]["RewardItem"][3]["Id"] = 3307334
	tChineseValentinesOperation_Reward[3307169][2]["RewardItem"][3]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307169][2]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307169][2]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307169][2]["DeleteItem"][1]["Id"] = 3307169
	tChineseValentinesOperation_Reward[3307169][2]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307169][2]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307169][2]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307169][2]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307170 CP一阶礼包
	tChineseValentinesOperation_Reward[3307170] = {}
	
	tChineseValentinesOperation_Reward[3307170][1] = {}
	tChineseValentinesOperation_Reward[3307170][1]["RewardWing"] = {}
	tChineseValentinesOperation_Reward[3307170][1]["RewardWing"]["TitleType"] =  6012
	tChineseValentinesOperation_Reward[3307170][1]["RewardWing"]["TitleId"] = 6012
	tChineseValentinesOperation_Reward[3307170][1]["RewardWing"]["SaveTime"] = 0
	tChineseValentinesOperation_Reward[3307170][1]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307170][1]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307170][1]["RewardItem"][1]["Id"] = 3307177
	tChineseValentinesOperation_Reward[3307170][1]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307170][1]["RewardItem"][2] = {}
	tChineseValentinesOperation_Reward[3307170][1]["RewardItem"][2]["Id"] = 3307162
	tChineseValentinesOperation_Reward[3307170][1]["RewardItem"][2]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307170][1]["RewardItem"][3] = {}
	tChineseValentinesOperation_Reward[3307170][1]["RewardItem"][3]["Id"] = 3307334
	tChineseValentinesOperation_Reward[3307170][1]["RewardItem"][3]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307170][1]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307170][1]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307170][1]["DeleteItem"][1]["Id"] = 3307170
	tChineseValentinesOperation_Reward[3307170][1]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307170][1]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307170][1]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307170][1]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	tChineseValentinesOperation_Reward[3307170][2] = {}
	tChineseValentinesOperation_Reward[3307170][2]["RewardWing"] = {}
	tChineseValentinesOperation_Reward[3307170][2]["RewardWing"]["TitleType"] =  6012
	tChineseValentinesOperation_Reward[3307170][2]["RewardWing"]["TitleId"] = 6012
	tChineseValentinesOperation_Reward[3307170][2]["RewardWing"]["SaveTime"] = 0
	tChineseValentinesOperation_Reward[3307170][2]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307170][2]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307170][2]["RewardItem"][1]["Id"] = 3307177
	tChineseValentinesOperation_Reward[3307170][2]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307170][2]["RewardItem"][2] = {}
	tChineseValentinesOperation_Reward[3307170][2]["RewardItem"][2]["Id"] = 3000357
	tChineseValentinesOperation_Reward[3307170][2]["RewardItem"][2]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307170][2]["RewardItem"][3] = {}
	tChineseValentinesOperation_Reward[3307170][2]["RewardItem"][3]["Id"] = 3307334
	tChineseValentinesOperation_Reward[3307170][2]["RewardItem"][3]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307170][2]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307170][2]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307170][2]["DeleteItem"][1]["Id"] = 3307170
	tChineseValentinesOperation_Reward[3307170][2]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307170][2]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307170][2]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307170][2]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307171 单身贵族二阶礼包
	tChineseValentinesOperation_Reward[3307171] = {}
	
	tChineseValentinesOperation_Reward[3307171][1] = {}
	tChineseValentinesOperation_Reward[3307171][1]["RewardWing"] = {}
	tChineseValentinesOperation_Reward[3307171][1]["RewardWing"]["TitleType"] =  6012
	tChineseValentinesOperation_Reward[3307171][1]["RewardWing"]["TitleId"] = 6012
	tChineseValentinesOperation_Reward[3307171][1]["RewardWing"]["SaveTime"] = 525600
	tChineseValentinesOperation_Reward[3307171][1]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307171][1]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307171][1]["RewardItem"][1]["Id"] = 3307177
	tChineseValentinesOperation_Reward[3307171][1]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307171][1]["RewardItem"][2] = {}
	tChineseValentinesOperation_Reward[3307171][1]["RewardItem"][2]["Id"] = 3307161
	tChineseValentinesOperation_Reward[3307171][1]["RewardItem"][2]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307171][1]["RewardItem"][3] = {}
	tChineseValentinesOperation_Reward[3307171][1]["RewardItem"][3]["Id"] = 3307334
	tChineseValentinesOperation_Reward[3307171][1]["RewardItem"][3]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307171][1]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307171][1]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307171][1]["DeleteItem"][1]["Id"] = 3307171
	tChineseValentinesOperation_Reward[3307171][1]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307171][1]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307171][1]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307171][1]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	tChineseValentinesOperation_Reward[3307171][2] = {}
	tChineseValentinesOperation_Reward[3307171][2]["RewardWing"] = {}
	tChineseValentinesOperation_Reward[3307171][2]["RewardWing"]["TitleType"] =  6012
	tChineseValentinesOperation_Reward[3307171][2]["RewardWing"]["TitleId"] = 6012
	tChineseValentinesOperation_Reward[3307171][2]["RewardWing"]["SaveTime"] = 525600
	tChineseValentinesOperation_Reward[3307171][2]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307171][2]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307171][2]["RewardItem"][1]["Id"] = 3307177
	tChineseValentinesOperation_Reward[3307171][2]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307171][2]["RewardItem"][2] = {}
	tChineseValentinesOperation_Reward[3307171][2]["RewardItem"][2]["Id"] = 3000357
	tChineseValentinesOperation_Reward[3307171][2]["RewardItem"][2]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307171][2]["RewardItem"][3] = {}
	tChineseValentinesOperation_Reward[3307171][2]["RewardItem"][3]["Id"] = 3307334
	tChineseValentinesOperation_Reward[3307171][2]["RewardItem"][3]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307171][2]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307171][2]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307171][2]["DeleteItem"][1]["Id"] = 3307171
	tChineseValentinesOperation_Reward[3307171][2]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307171][2]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307171][2]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307171][2]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307172 CP二阶礼包
	tChineseValentinesOperation_Reward[3307172] = {}
	
	tChineseValentinesOperation_Reward[3307172][1] = {}
	tChineseValentinesOperation_Reward[3307172][1]["RewardWing"] = {}
	tChineseValentinesOperation_Reward[3307172][1]["RewardWing"]["TitleType"] =  6012
	tChineseValentinesOperation_Reward[3307172][1]["RewardWing"]["TitleId"] = 6012
	tChineseValentinesOperation_Reward[3307172][1]["RewardWing"]["SaveTime"] = 525600
	tChineseValentinesOperation_Reward[3307172][1]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307172][1]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307172][1]["RewardItem"][1]["Id"] = 3307177
	tChineseValentinesOperation_Reward[3307172][1]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307172][1]["RewardItem"][2] = {}
	tChineseValentinesOperation_Reward[3307172][1]["RewardItem"][2]["Id"] = 3307162
	tChineseValentinesOperation_Reward[3307172][1]["RewardItem"][2]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307172][1]["RewardItem"][3] = {}
	tChineseValentinesOperation_Reward[3307172][1]["RewardItem"][3]["Id"] = 3307334
	tChineseValentinesOperation_Reward[3307172][1]["RewardItem"][3]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307172][1]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307172][1]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307172][1]["DeleteItem"][1]["Id"] = 3307172
	tChineseValentinesOperation_Reward[3307172][1]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307172][1]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307172][1]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307172][1]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	tChineseValentinesOperation_Reward[3307172][2] = {}
	tChineseValentinesOperation_Reward[3307172][2]["RewardWing"] = {}
	tChineseValentinesOperation_Reward[3307172][2]["RewardWing"]["TitleType"] =  6012
	tChineseValentinesOperation_Reward[3307172][2]["RewardWing"]["TitleId"] = 6012
	tChineseValentinesOperation_Reward[3307172][2]["RewardWing"]["SaveTime"] = 525600
	tChineseValentinesOperation_Reward[3307172][2]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307172][2]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307172][2]["RewardItem"][1]["Id"] = 3307177
	tChineseValentinesOperation_Reward[3307172][2]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307172][2]["RewardItem"][2] = {}
	tChineseValentinesOperation_Reward[3307172][2]["RewardItem"][2]["Id"] = 3000357
	tChineseValentinesOperation_Reward[3307172][2]["RewardItem"][2]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307172][2]["RewardItem"][3] = {}
	tChineseValentinesOperation_Reward[3307172][2]["RewardItem"][3]["Id"] = 3307334
	tChineseValentinesOperation_Reward[3307172][2]["RewardItem"][3]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307172][2]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307172][2]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307172][2]["DeleteItem"][1]["Id"] = 3307172
	tChineseValentinesOperation_Reward[3307172][2]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307172][2]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307172][2]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307172][2]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307173 单身贵族三阶礼包
	tChineseValentinesOperation_Reward[3307173] = {}
	
	tChineseValentinesOperation_Reward[3307173][1] = {}
	tChineseValentinesOperation_Reward[3307173][1]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307173][1]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307173][1]["RewardItem"][1]["Id"] = 3307177
	tChineseValentinesOperation_Reward[3307173][1]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307173][1]["RewardItem"][2] = {}
	tChineseValentinesOperation_Reward[3307173][1]["RewardItem"][2]["Id"] = 3307161
	tChineseValentinesOperation_Reward[3307173][1]["RewardItem"][2]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307173][1]["RewardItem"][3] = {}
	tChineseValentinesOperation_Reward[3307173][1]["RewardItem"][3]["Id"] = 3307334
	tChineseValentinesOperation_Reward[3307173][1]["RewardItem"][3]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307173][1]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307173][1]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307173][1]["DeleteItem"][1]["Id"] = 3307173
	tChineseValentinesOperation_Reward[3307173][1]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307173][1]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307173][1]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307173][1]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	tChineseValentinesOperation_Reward[3307173][2] = {}
	tChineseValentinesOperation_Reward[3307173][2]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307173][2]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307173][2]["RewardItem"][1]["Id"] = 3307177
	tChineseValentinesOperation_Reward[3307173][2]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307173][2]["RewardItem"][2] = {}
	tChineseValentinesOperation_Reward[3307173][2]["RewardItem"][2]["Id"] = 3000357
	tChineseValentinesOperation_Reward[3307173][2]["RewardItem"][2]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307173][2]["RewardItem"][3] = {}
	tChineseValentinesOperation_Reward[3307173][2]["RewardItem"][3]["Id"] = 3307334
	tChineseValentinesOperation_Reward[3307173][2]["RewardItem"][3]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307173][2]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307173][2]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307173][2]["DeleteItem"][1]["Id"] = 3307173
	tChineseValentinesOperation_Reward[3307173][2]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307173][2]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307173][2]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307173][2]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307174 CP三阶礼包
	tChineseValentinesOperation_Reward[3307174] = {}
	
	tChineseValentinesOperation_Reward[3307174][1] = {}
	tChineseValentinesOperation_Reward[3307174][1]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307174][1]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307174][1]["RewardItem"][1]["Id"] = 3307177
	tChineseValentinesOperation_Reward[3307174][1]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307174][1]["RewardItem"][2] = {}
	tChineseValentinesOperation_Reward[3307174][1]["RewardItem"][2]["Id"] = 3307162
	tChineseValentinesOperation_Reward[3307174][1]["RewardItem"][2]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307174][1]["RewardItem"][3] = {}
	tChineseValentinesOperation_Reward[3307174][1]["RewardItem"][3]["Id"] = 3307334
	tChineseValentinesOperation_Reward[3307174][1]["RewardItem"][3]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307174][1]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307174][1]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307174][1]["DeleteItem"][1]["Id"] = 3307174
	tChineseValentinesOperation_Reward[3307174][1]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307174][1]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307174][1]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307174][1]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	tChineseValentinesOperation_Reward[3307174][2] = {}
	tChineseValentinesOperation_Reward[3307174][2]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307174][2]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307174][2]["RewardItem"][1]["Id"] = 3307177
	tChineseValentinesOperation_Reward[3307174][2]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307174][2]["RewardItem"][2] = {}
	tChineseValentinesOperation_Reward[3307174][2]["RewardItem"][2]["Id"] = 3000357
	tChineseValentinesOperation_Reward[3307174][2]["RewardItem"][2]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307174][2]["RewardItem"][3] = {}
	tChineseValentinesOperation_Reward[3307174][2]["RewardItem"][3]["Id"] = 3307334
	tChineseValentinesOperation_Reward[3307174][2]["RewardItem"][3]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307174][2]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307174][2]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307174][2]["DeleteItem"][1]["Id"] = 3307174
	tChineseValentinesOperation_Reward[3307174][2]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307174][2]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307174][2]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307174][2]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307175 单身贵族四阶礼包
	tChineseValentinesOperation_Reward[3307175] = {}
	tChineseValentinesOperation_Reward[3307175]["RewardEMoneyMono"] = {}
	tChineseValentinesOperation_Reward[3307175]["RewardEMoneyMono"]["Value"] = 5000
	tChineseValentinesOperation_Reward[3307175]["RewardStrengthValue"] = {}
	tChineseValentinesOperation_Reward[3307175]["RewardStrengthValue"]["Value"] = 20000
	tChineseValentinesOperation_Reward[3307175]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307175]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307175]["RewardItem"][1]["Id"] = 3307178
	tChineseValentinesOperation_Reward[3307175]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307175]["RewardItem"][2] = {}
	tChineseValentinesOperation_Reward[3307175]["RewardItem"][2]["Id"] = 3307334
	tChineseValentinesOperation_Reward[3307175]["RewardItem"][2]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307175]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307175]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307175]["DeleteItem"][1]["Id"] = 3307175
	tChineseValentinesOperation_Reward[3307175]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307175]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307175]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307175]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307176 CP四阶礼包
	tChineseValentinesOperation_Reward[3307176] = {}
	tChineseValentinesOperation_Reward[3307176]["RewardEMoneyMono"] = {}
	tChineseValentinesOperation_Reward[3307176]["RewardEMoneyMono"]["Value"] = 5000
	tChineseValentinesOperation_Reward[3307176]["RewardStrengthValue"] = {}
	tChineseValentinesOperation_Reward[3307176]["RewardStrengthValue"]["Value"] = 20000
	tChineseValentinesOperation_Reward[3307176]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307176]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307176]["RewardItem"][1]["Id"] = 3307178
	tChineseValentinesOperation_Reward[3307176]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307176]["RewardItem"][2] = {}
	tChineseValentinesOperation_Reward[3307176]["RewardItem"][2]["Id"] = 3307334
	tChineseValentinesOperation_Reward[3307176]["RewardItem"][2]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307176]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307176]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307176]["DeleteItem"][1]["Id"] = 3307176
	tChineseValentinesOperation_Reward[3307176]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307176]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307176]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307176]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307177 情人节外套大礼包
	tChineseValentinesOperation_Reward[3307177] = {}
	
	tChineseValentinesOperation_Reward[3307177][1] = {}
	tChineseValentinesOperation_Reward[3307177][1]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307177][1]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307177][1]["RewardItem"][1]["Id"] = 195045
	tChineseValentinesOperation_Reward[3307177][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tChineseValentinesOperation_Reward[3307177][1]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307177][1]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307177][1]["DeleteItem"][1]["Id"] = 3307177
	tChineseValentinesOperation_Reward[3307177][1]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307177][1]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307177][1]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307177][1]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	tChineseValentinesOperation_Reward[3307177][2] = {}
	tChineseValentinesOperation_Reward[3307177][2]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307177][2]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307177][2]["RewardItem"][1]["Id"] = 193565
	tChineseValentinesOperation_Reward[3307177][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tChineseValentinesOperation_Reward[3307177][2]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307177][2]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307177][2]["DeleteItem"][1]["Id"] = 3307177
	tChineseValentinesOperation_Reward[3307177][2]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307177][2]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307177][2]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307177][2]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	tChineseValentinesOperation_Reward[3307177][3] = {}
	tChineseValentinesOperation_Reward[3307177][3]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307177][3]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307177][3]["RewardItem"][1]["Id"] = 193445
	tChineseValentinesOperation_Reward[3307177][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tChineseValentinesOperation_Reward[3307177][3]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307177][3]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307177][3]["DeleteItem"][1]["Id"] = 3307177
	tChineseValentinesOperation_Reward[3307177][3]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307177][3]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307177][3]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307177][3]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307178 情人节外套礼包
	tChineseValentinesOperation_Reward[3307178] = {}
	
	tChineseValentinesOperation_Reward[3307178][1] = {}
	tChineseValentinesOperation_Reward[3307178][1]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307178][1]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307178][1]["RewardItem"][1]["Id"] = 195055
	tChineseValentinesOperation_Reward[3307178][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tChineseValentinesOperation_Reward[3307178][1]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307178][1]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307178][1]["DeleteItem"][1]["Id"] = 3307178
	tChineseValentinesOperation_Reward[3307178][1]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307178][1]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307178][1]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307178][1]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	tChineseValentinesOperation_Reward[3307178][2] = {}
	tChineseValentinesOperation_Reward[3307178][2]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307178][2]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307178][2]["RewardItem"][1]["Id"] = 193535
	tChineseValentinesOperation_Reward[3307178][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tChineseValentinesOperation_Reward[3307178][2]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307178][2]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307178][2]["DeleteItem"][1]["Id"] = 3307178
	tChineseValentinesOperation_Reward[3307178][2]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307178][2]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307178][2]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307178][2]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	tChineseValentinesOperation_Reward[3307178][3] = {}
	tChineseValentinesOperation_Reward[3307178][3]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307178][3]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307178][3]["RewardItem"][1]["Id"] = 193505
	tChineseValentinesOperation_Reward[3307178][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tChineseValentinesOperation_Reward[3307178][3]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307178][3]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307178][3]["DeleteItem"][1]["Id"] = 3307178
	tChineseValentinesOperation_Reward[3307178][3]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307178][3]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307178][3]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307178][3]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307329 99朵郁金香
	tChineseValentinesOperation_Reward[3307329] = {}
	tChineseValentinesOperation_Reward[3307329]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307329]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307329]["RewardItem"][1]["Id"] = 754099
	tChineseValentinesOperation_Reward[3307329]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307329]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307329]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307329]["DeleteItem"][1]["Id"] = 3307329
	tChineseValentinesOperation_Reward[3307329]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307329]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307329]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307329]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307330 999朵郁金香礼包
	tChineseValentinesOperation_Reward[3307330] = {}
	tChineseValentinesOperation_Reward[3307330]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307330]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307330]["RewardItem"][1]["Id"] = 754999
	tChineseValentinesOperation_Reward[3307330]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307330]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307330]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307330]["DeleteItem"][1]["Id"] = 3307330
	tChineseValentinesOperation_Reward[3307330]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307330]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307330]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307330]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307331 999朵百合礼包
	tChineseValentinesOperation_Reward[3307331] = {}
	tChineseValentinesOperation_Reward[3307331]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307331]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307331]["RewardItem"][1]["Id"] = 752999
	tChineseValentinesOperation_Reward[3307331]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307331]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307331]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307331]["DeleteItem"][1]["Id"] = 3307331
	tChineseValentinesOperation_Reward[3307331]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307331]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307331]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307331]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307332 999朵兰花礼包
	tChineseValentinesOperation_Reward[3307332] = {}
	tChineseValentinesOperation_Reward[3307332]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307332]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307332]["RewardItem"][1]["Id"] = 753999
	tChineseValentinesOperation_Reward[3307332]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307332]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307332]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307332]["DeleteItem"][1]["Id"] = 3307332
	tChineseValentinesOperation_Reward[3307332]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307332]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307332]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307332]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307333  999朵玫瑰礼包
	tChineseValentinesOperation_Reward[3307333] = {}
	tChineseValentinesOperation_Reward[3307333]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307333]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307333]["RewardItem"][1]["Id"] = 751999
	tChineseValentinesOperation_Reward[3307333]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307333]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307333]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307333]["DeleteItem"][1]["Id"] = 3307333
	tChineseValentinesOperation_Reward[3307333]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307333]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307333]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307333]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307334 情人节称号礼包
	tChineseValentinesOperation_Reward[3307334] = {}
	-- 男性 
	tChineseValentinesOperation_Reward[3307334][1] = {}
	-- SuperIdol
	tChineseValentinesOperation_Reward[3307334][1][1] = {}
	tChineseValentinesOperation_Reward[3307334][1][1]["RewardTitle"] = {}
	tChineseValentinesOperation_Reward[3307334][1][1]["RewardTitle"]["TitleType"] = 2041
	tChineseValentinesOperation_Reward[3307334][1][1]["RewardTitle"]["TitleId"] = 2041
	tChineseValentinesOperation_Reward[3307334][1][1]["RewardTitle"]["SaveTime"] = 525600
	tChineseValentinesOperation_Reward[3307334][1][1]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307334][1][1]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307334][1][1]["DeleteItem"][1]["Id"] = 3307334
	tChineseValentinesOperation_Reward[3307334][1][1]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307334][1][1]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307334][1][1]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307334][1][1]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	-- Scholor
	tChineseValentinesOperation_Reward[3307334][1][2] = {}
	tChineseValentinesOperation_Reward[3307334][1][2]["RewardTitle"] = {}
	tChineseValentinesOperation_Reward[3307334][1][2]["RewardTitle"]["TitleType"] = 2023
	tChineseValentinesOperation_Reward[3307334][1][2]["RewardTitle"]["TitleId"] = 2023
	tChineseValentinesOperation_Reward[3307334][1][2]["RewardTitle"]["SaveTime"] = 525600
	tChineseValentinesOperation_Reward[3307334][1][2]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307334][1][2]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307334][1][2]["DeleteItem"][1]["Id"] = 3307334
	tChineseValentinesOperation_Reward[3307334][1][2]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307334][1][2]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307334][1][2]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307334][1][2]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	-- Love`sMadness
	tChineseValentinesOperation_Reward[3307334][1][3] = {}
	tChineseValentinesOperation_Reward[3307334][1][3]["RewardTitle"] = {}
	tChineseValentinesOperation_Reward[3307334][1][3]["RewardTitle"]["TitleType"] = 2065
	tChineseValentinesOperation_Reward[3307334][1][3]["RewardTitle"]["TitleId"] = 2065
	tChineseValentinesOperation_Reward[3307334][1][3]["RewardTitle"]["SaveTime"] = 525600
	tChineseValentinesOperation_Reward[3307334][1][3]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307334][1][3]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307334][1][3]["DeleteItem"][1]["Id"] = 3307334
	tChineseValentinesOperation_Reward[3307334][1][3]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307334][1][3]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307334][1][3]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307334][1][3]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	-- 女性
	tChineseValentinesOperation_Reward[3307334][2] = {}
	-- Peerless
	tChineseValentinesOperation_Reward[3307334][2][1] = {}
	tChineseValentinesOperation_Reward[3307334][2][1]["RewardTitle"] = {}
	tChineseValentinesOperation_Reward[3307334][2][1]["RewardTitle"]["TitleType"] = 2036
	tChineseValentinesOperation_Reward[3307334][2][1]["RewardTitle"]["TitleId"] = 2036
	tChineseValentinesOperation_Reward[3307334][2][1]["RewardTitle"]["SaveTime"] = 525600
	tChineseValentinesOperation_Reward[3307334][2][1]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307334][2][1]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307334][2][1]["DeleteItem"][1]["Id"] = 3307334
	tChineseValentinesOperation_Reward[3307334][2][1]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307334][2][1]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307334][2][1]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307334][2][1]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	-- Fairy
	tChineseValentinesOperation_Reward[3307334][2][2] = {}
	tChineseValentinesOperation_Reward[3307334][2][2]["RewardTitle"] = {}
	tChineseValentinesOperation_Reward[3307334][2][2]["RewardTitle"]["TitleType"] = 2020
	tChineseValentinesOperation_Reward[3307334][2][2]["RewardTitle"]["TitleId"] = 2020
	tChineseValentinesOperation_Reward[3307334][2][2]["RewardTitle"]["SaveTime"] = 525600
	tChineseValentinesOperation_Reward[3307334][2][2]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307334][2][2]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307334][2][2]["DeleteItem"][1]["Id"] = 3307334
	tChineseValentinesOperation_Reward[3307334][2][2]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307334][2][2]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307334][2][2]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307334][2][2]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	-- SweetFairy
	tChineseValentinesOperation_Reward[3307334][2][3] = {}
	tChineseValentinesOperation_Reward[3307334][2][3]["RewardTitle"] = {}
	tChineseValentinesOperation_Reward[3307334][2][3]["RewardTitle"]["TitleType"] = 2064
	tChineseValentinesOperation_Reward[3307334][2][3]["RewardTitle"]["TitleId"] = 2064
	tChineseValentinesOperation_Reward[3307334][2][3]["RewardTitle"]["SaveTime"] = 525600
	tChineseValentinesOperation_Reward[3307334][2][3]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307334][2][3]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307334][2][3]["DeleteItem"][1]["Id"] = 3307334
	tChineseValentinesOperation_Reward[3307334][2][3]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307334][2][3]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307334][2][3]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307334][2][3]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307483 微光幸运石包
	tChineseValentinesOperation_Reward[3307483] = {}
	tChineseValentinesOperation_Reward[3307483]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307483]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307483]["RewardItem"][1]["Id"] = 3009000
	tChineseValentinesOperation_Reward[3307483]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tChineseValentinesOperation_Reward[3307483]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307483]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307483]["DeleteItem"][1]["Id"] = 3307483
	tChineseValentinesOperation_Reward[3307483]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307483]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307483]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307483]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307484 赤炼石+1
	tChineseValentinesOperation_Reward[3307484] = {}
	tChineseValentinesOperation_Reward[3307484]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307484]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307484]["RewardItem"][1]["Id"] = 730001
	tChineseValentinesOperation_Reward[3307484]["RewardItem"][1]["Attr"] = "0 1 3"
	tChineseValentinesOperation_Reward[3307484]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307484]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307484]["DeleteItem"][1]["Id"] = 3307484
	tChineseValentinesOperation_Reward[3307484]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307484]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307484]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307484]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307561 一阶助威礼盒
	tChineseValentinesOperation_Reward[3307561] = {}
	tChineseValentinesOperation_Reward[3307561]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307561]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307561]["RewardItem"][1]["Id"] = 3307166
	tChineseValentinesOperation_Reward[3307561]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307561]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307561]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307561]["DeleteItem"][1]["Id"] = 3307561
	tChineseValentinesOperation_Reward[3307561]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307561]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307561]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307561]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307562 二阶助威礼盒
	tChineseValentinesOperation_Reward[3307562] = {}
	tChineseValentinesOperation_Reward[3307562]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307562]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307562]["RewardItem"][1]["Id"] = 3307166
	tChineseValentinesOperation_Reward[3307562]["RewardItem"][1]["Attr"] = "0 5"
	tChineseValentinesOperation_Reward[3307562]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307562]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307562]["DeleteItem"][1]["Id"] = 3307562
	tChineseValentinesOperation_Reward[3307562]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307562]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307562]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307562]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307563 三阶助威礼盒
	tChineseValentinesOperation_Reward[3307563] = {}
	tChineseValentinesOperation_Reward[3307563]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307563]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307563]["RewardItem"][1]["Id"] = 3307166
	tChineseValentinesOperation_Reward[3307563]["RewardItem"][1]["Attr"] = "0 10"
	tChineseValentinesOperation_Reward[3307563]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307563]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307563]["DeleteItem"][1]["Id"] = 3307563
	tChineseValentinesOperation_Reward[3307563]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307563]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307563]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307563]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307564 四阶助威礼盒
	tChineseValentinesOperation_Reward[3307564] = {}
	tChineseValentinesOperation_Reward[3307564]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307564]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307564]["RewardItem"][1]["Id"] = 3307166
	tChineseValentinesOperation_Reward[3307564]["RewardItem"][1]["Attr"] = "0 50"
	tChineseValentinesOperation_Reward[3307564]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307564]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307564]["DeleteItem"][1]["Id"] = 3307564
	tChineseValentinesOperation_Reward[3307564]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307564]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307564]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307564]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307565 五阶助威礼盒
	tChineseValentinesOperation_Reward[3307565] = {}
	tChineseValentinesOperation_Reward[3307565]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307565]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307565]["RewardItem"][1]["Id"] = 3307166
	tChineseValentinesOperation_Reward[3307565]["RewardItem"][1]["Attr"] = "0 100"
	tChineseValentinesOperation_Reward[3307565]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307565]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307565]["DeleteItem"][1]["Id"] = 3307565
	tChineseValentinesOperation_Reward[3307565]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307565]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307565]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307565]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307566 六阶助威礼盒
	tChineseValentinesOperation_Reward[3307566] = {}
	tChineseValentinesOperation_Reward[3307566]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307566]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307566]["RewardItem"][1]["Id"] = 3307166
	tChineseValentinesOperation_Reward[3307566]["RewardItem"][1]["Attr"] = "0 150"
	tChineseValentinesOperation_Reward[3307566]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307566]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307566]["DeleteItem"][1]["Id"] = 3307566
	tChineseValentinesOperation_Reward[3307566]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307566]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307566]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307566]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307567 七阶助威礼盒
	tChineseValentinesOperation_Reward[3307567] = {}
	tChineseValentinesOperation_Reward[3307567]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307567]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307567]["RewardItem"][1]["Id"] = 3307166
	tChineseValentinesOperation_Reward[3307567]["RewardItem"][1]["Attr"] = "0 50"
	tChineseValentinesOperation_Reward[3307567]["RewardItem"][2] = {}
	tChineseValentinesOperation_Reward[3307567]["RewardItem"][2]["Id"] = 3307571
	tChineseValentinesOperation_Reward[3307567]["RewardItem"][2]["Attr"] = "0 1"
	tChineseValentinesOperation_Reward[3307567]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307567]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307567]["DeleteItem"][1]["Id"] = 3307567
	tChineseValentinesOperation_Reward[3307567]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307567]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307567]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307567]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307568 八阶助威礼盒
	tChineseValentinesOperation_Reward[3307568] = {}
	tChineseValentinesOperation_Reward[3307568]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307568]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307568]["RewardItem"][1]["Id"] = 3307166
	tChineseValentinesOperation_Reward[3307568]["RewardItem"][1]["Attr"] = "0 100"
	tChineseValentinesOperation_Reward[3307568]["RewardItem"][2] = {}
	tChineseValentinesOperation_Reward[3307568]["RewardItem"][2]["Id"] = 3307571
	tChineseValentinesOperation_Reward[3307568]["RewardItem"][2]["Attr"] = "0 2"
	tChineseValentinesOperation_Reward[3307568]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307568]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307568]["DeleteItem"][1]["Id"] = 3307568
	tChineseValentinesOperation_Reward[3307568]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307568]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307568]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307568]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307569 九阶助威礼盒
	tChineseValentinesOperation_Reward[3307569] = {}
	tChineseValentinesOperation_Reward[3307569]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307569]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307569]["RewardItem"][1]["Id"] = 3307166
	tChineseValentinesOperation_Reward[3307569]["RewardItem"][1]["Attr"] = "0 150"
	tChineseValentinesOperation_Reward[3307569]["RewardItem"][2] = {}
	tChineseValentinesOperation_Reward[3307569]["RewardItem"][2]["Id"] = 3307571
	tChineseValentinesOperation_Reward[3307569]["RewardItem"][2]["Attr"] = "0 3"
	tChineseValentinesOperation_Reward[3307569]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307569]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307569]["DeleteItem"][1]["Id"] = 3307569
	tChineseValentinesOperation_Reward[3307569]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307569]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307569]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307569]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307570 十阶助威礼盒
	tChineseValentinesOperation_Reward[3307570] = {}
	tChineseValentinesOperation_Reward[3307570]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307570]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307570]["RewardItem"][1]["Id"] = 3307166
	tChineseValentinesOperation_Reward[3307570]["RewardItem"][1]["Attr"] = "0 200"
	tChineseValentinesOperation_Reward[3307570]["RewardItem"][2] = {}
	tChineseValentinesOperation_Reward[3307570]["RewardItem"][2]["Id"] = 3307571
	tChineseValentinesOperation_Reward[3307570]["RewardItem"][2]["Attr"] = "0 5"
	tChineseValentinesOperation_Reward[3307570]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307570]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307570]["DeleteItem"][1]["Id"] = 3307570
	tChineseValentinesOperation_Reward[3307570]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307570]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307570]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307570]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307571 宴会主办卡可选包
	tChineseValentinesOperation_Reward[3307571] = {}
	tChineseValentinesOperation_Reward[3307571][1] = {}
	tChineseValentinesOperation_Reward[3307571][1]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307571][1]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307571][1]["RewardItem"][1]["Id"] = 3307161
	tChineseValentinesOperation_Reward[3307571][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tChineseValentinesOperation_Reward[3307571][1]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307571][1]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307571][1]["DeleteItem"][1]["Id"] = 3307571
	tChineseValentinesOperation_Reward[3307571][1]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307571][1]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307571][1]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307571][1]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	tChineseValentinesOperation_Reward[3307571][2] = {}
	tChineseValentinesOperation_Reward[3307571][2]["RewardItem"] = {}
	tChineseValentinesOperation_Reward[3307571][2]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward[3307571][2]["RewardItem"][1]["Id"] = 3307162
	tChineseValentinesOperation_Reward[3307571][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tChineseValentinesOperation_Reward[3307571][2]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307571][2]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307571][2]["DeleteItem"][1]["Id"] = 3307571
	tChineseValentinesOperation_Reward[3307571][2]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307571][2]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307571][2]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307571][2]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3307572 蝶语之恋翅膀礼包
	tChineseValentinesOperation_Reward[3307572] = {}
	tChineseValentinesOperation_Reward[3307572]["RewardWing"] = {}
	tChineseValentinesOperation_Reward[3307572]["RewardWing"]["TitleType"] = 6020
	tChineseValentinesOperation_Reward[3307572]["RewardWing"]["TitleId"] = 6020
	tChineseValentinesOperation_Reward[3307572]["RewardWing"]["SaveTime"] = 0
	tChineseValentinesOperation_Reward[3307572]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3307572]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3307572]["DeleteItem"][1]["Id"] = 3307572
	tChineseValentinesOperation_Reward[3307572]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3307572]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3307572]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3307572]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 3320833 蝶语之恋翅膀礼包，非赠礼包新做
	tChineseValentinesOperation_Reward[3320833] = {}
	tChineseValentinesOperation_Reward[3320833]["RewardWing"] = {}
	tChineseValentinesOperation_Reward[3320833]["RewardWing"]["TitleType"] = 6020
	tChineseValentinesOperation_Reward[3320833]["RewardWing"]["TitleId"] = 6020
	tChineseValentinesOperation_Reward[3320833]["RewardWing"]["SaveTime"] = 0
	tChineseValentinesOperation_Reward[3320833]["DeleteItem"] = {}
	tChineseValentinesOperation_Reward[3320833]["DeleteItem"][1] = {}
	tChineseValentinesOperation_Reward[3320833]["DeleteItem"][1]["Id"] = 3320833
	tChineseValentinesOperation_Reward[3320833]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_Reward[3320833]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward[3320833]["RewardEffect"] = {}
	tChineseValentinesOperation_Reward[3320833]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
local tChineseValentinesOperation_MissionReward = {}

	tChineseValentinesOperation_MissionReward[1] = {}
	-- 火炬任务
	tChineseValentinesOperation_MissionReward[1][1] = {}
	tChineseValentinesOperation_MissionReward[1][1][1] = {}
	tChineseValentinesOperation_MissionReward[1][1][1]["RewardItem"] = {}
	tChineseValentinesOperation_MissionReward[1][1][1]["RewardItem"][1] = {}
	tChineseValentinesOperation_MissionReward[1][1][1]["RewardItem"][1]["Id"] = 3307166
	tChineseValentinesOperation_MissionReward[1][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_MissionReward[1][1][1]["DeleteItem"] = {}
	tChineseValentinesOperation_MissionReward[1][1][1]["DeleteItem"][1] = {}
	tChineseValentinesOperation_MissionReward[1][1][1]["DeleteItem"][1]["Id"] = 3307152
	tChineseValentinesOperation_MissionReward[1][1][1]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_MissionReward[1][1][1]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_MissionReward[1][1][1]["LogStep"] = "1[1][1]"
	tChineseValentinesOperation_MissionReward[1][1][1]["RewardEffect"] = {}
	tChineseValentinesOperation_MissionReward[1][1][1]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	-- 驱赶任务
	tChineseValentinesOperation_MissionReward[1][2] = {}
	tChineseValentinesOperation_MissionReward[1][2][1] = {}
	tChineseValentinesOperation_MissionReward[1][2][1]["RewardItem"] = {}
	tChineseValentinesOperation_MissionReward[1][2][1]["RewardItem"][1] = {}
	tChineseValentinesOperation_MissionReward[1][2][1]["RewardItem"][1]["Id"] = 3307166
	tChineseValentinesOperation_MissionReward[1][2][1]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_MissionReward[1][2][1]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_MissionReward[1][2][1]["LogStep"] = "1[1][2]"
	tChineseValentinesOperation_MissionReward[1][2][1]["RewardEffect"] = {}
	tChineseValentinesOperation_MissionReward[1][2][1]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	-- 拯救任务
	tChineseValentinesOperation_MissionReward[1][3] = {}
	tChineseValentinesOperation_MissionReward[1][3][1] = {}
	tChineseValentinesOperation_MissionReward[1][3][1]["RewardItem"] = {}
	tChineseValentinesOperation_MissionReward[1][3][1]["RewardItem"][1] = {}
	tChineseValentinesOperation_MissionReward[1][3][1]["RewardItem"][1]["Id"] = 3307166
	tChineseValentinesOperation_MissionReward[1][3][1]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_MissionReward[1][3][1]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_MissionReward[1][3][1]["LogStep"] = "1[1][3]"
	tChineseValentinesOperation_MissionReward[1][3][1]["RewardEffect"] = {}
	tChineseValentinesOperation_MissionReward[1][3][1]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	tChineseValentinesOperation_MissionReward[2] = {}
	-- 浇灌任务
	tChineseValentinesOperation_MissionReward[2][1] = {}
	tChineseValentinesOperation_MissionReward[2][1][1] = {}
	tChineseValentinesOperation_MissionReward[2][1][1]["RewardItem"] = {}
	tChineseValentinesOperation_MissionReward[2][1][1]["RewardItem"][1] = {}
	tChineseValentinesOperation_MissionReward[2][1][1]["RewardItem"][1]["Id"] = 3307166
	tChineseValentinesOperation_MissionReward[2][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_MissionReward[2][1][1]["DeleteItem"] = {}
	tChineseValentinesOperation_MissionReward[2][1][1]["DeleteItem"][1] = {}
	tChineseValentinesOperation_MissionReward[2][1][1]["DeleteItem"][1]["Id"] = 3307153
	tChineseValentinesOperation_MissionReward[2][1][1]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesOperation_MissionReward[2][1][1]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_MissionReward[2][1][1]["LogStep"] = "1[2][1]"
	tChineseValentinesOperation_MissionReward[2][1][1]["RewardEffect"] = {}
	tChineseValentinesOperation_MissionReward[2][1][1]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	tChineseValentinesOperation_MissionReward[2][1][2] = {}
	tChineseValentinesOperation_MissionReward[2][1][2]["RewardItem"] = {}
	tChineseValentinesOperation_MissionReward[2][1][2]["RewardItem"][1] = {}
	tChineseValentinesOperation_MissionReward[2][1][2]["RewardItem"][1]["Id"] = 3307166
	tChineseValentinesOperation_MissionReward[2][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_MissionReward[2][1][2]["DeleteItem"] = {}
	tChineseValentinesOperation_MissionReward[2][1][2]["DeleteItem"][1] = {}
	tChineseValentinesOperation_MissionReward[2][1][2]["DeleteItem"][1]["Id"] = 3307153
	tChineseValentinesOperation_MissionReward[2][1][2]["DeleteItem"][1]["ItemNum"] = 2
	tChineseValentinesOperation_MissionReward[2][1][2]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_MissionReward[2][1][2]["LogStep"] = "1[2][1]"
	tChineseValentinesOperation_MissionReward[2][1][2]["RewardEffect"] = {}
	tChineseValentinesOperation_MissionReward[2][1][2]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 秀恩爱任务
	tChineseValentinesOperation_MissionReward[2][2] = {}
	tChineseValentinesOperation_MissionReward[2][2][1] = {}
	tChineseValentinesOperation_MissionReward[2][2][1]["RewardItem"] = {}
	tChineseValentinesOperation_MissionReward[2][2][1]["RewardItem"][1] = {}
	tChineseValentinesOperation_MissionReward[2][2][1]["RewardItem"][1]["Id"] = 3307166
	tChineseValentinesOperation_MissionReward[2][2][1]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_MissionReward[2][2][1]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_MissionReward[2][2][1]["LogStep"] = "1[2][2]"
	tChineseValentinesOperation_MissionReward[2][2][1]["RewardEffect"] = {}
	tChineseValentinesOperation_MissionReward[2][2][1]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	tChineseValentinesOperation_MissionReward[2][2][2] = {}
	tChineseValentinesOperation_MissionReward[2][2][2]["RewardItem"] = {}
	tChineseValentinesOperation_MissionReward[2][2][2]["RewardItem"][1] = {}
	tChineseValentinesOperation_MissionReward[2][2][2]["RewardItem"][1]["Id"] = 3307166
	tChineseValentinesOperation_MissionReward[2][2][2]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_MissionReward[2][2][2]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_MissionReward[2][2][2]["LogStep"] = "1[2][2]"
	tChineseValentinesOperation_MissionReward[2][2][2]["RewardEffect"] = {}
	tChineseValentinesOperation_MissionReward[2][2][2]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 采摘任务
	tChineseValentinesOperation_MissionReward[2][3] = {}
	tChineseValentinesOperation_MissionReward[2][3][1] = {}
	tChineseValentinesOperation_MissionReward[2][3][1]["RewardItem"] = {}
	tChineseValentinesOperation_MissionReward[2][3][1]["RewardItem"][1] = {}
	tChineseValentinesOperation_MissionReward[2][3][1]["RewardItem"][1]["Id"] = 3307166
	tChineseValentinesOperation_MissionReward[2][3][1]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_MissionReward[2][3][1]["DeleteItem"] = {}
	tChineseValentinesOperation_MissionReward[2][3][1]["DeleteItem"][1] = {}
	tChineseValentinesOperation_MissionReward[2][3][1]["DeleteItem"][1]["Id"] = 3307154
	tChineseValentinesOperation_MissionReward[2][3][1]["DeleteItem"][1]["ItemNum"] = 3
	tChineseValentinesOperation_MissionReward[2][3][1]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_MissionReward[2][3][1]["LogStep"] = "1[2][3]"
	tChineseValentinesOperation_MissionReward[2][3][1]["RewardEffect"] = {}
	tChineseValentinesOperation_MissionReward[2][3][1]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	tChineseValentinesOperation_MissionReward[2][3][2] = {}
	tChineseValentinesOperation_MissionReward[2][3][2]["RewardItem"] = {}
	tChineseValentinesOperation_MissionReward[2][3][2]["RewardItem"][1] = {}
	tChineseValentinesOperation_MissionReward[2][3][2]["RewardItem"][1]["Id"] = 3307166
	tChineseValentinesOperation_MissionReward[2][3][2]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_MissionReward[2][3][2]["DeleteItem"] = {}
	tChineseValentinesOperation_MissionReward[2][3][2]["DeleteItem"][1] = {}
	tChineseValentinesOperation_MissionReward[2][3][2]["DeleteItem"][1]["Id"] = 3307154
	tChineseValentinesOperation_MissionReward[2][3][2]["DeleteItem"][1]["ItemNum"] = 6
	tChineseValentinesOperation_MissionReward[2][3][2]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_MissionReward[2][3][2]["LogStep"] = "1[2][3]"
	tChineseValentinesOperation_MissionReward[2][3][2]["RewardEffect"] = {}
	tChineseValentinesOperation_MissionReward[2][3][2]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 怪物掉落 定情信物
	tChineseValentinesOperation_MissionReward[3119] = {}
	tChineseValentinesOperation_MissionReward[3119]["RewardItem"] = {}
	tChineseValentinesOperation_MissionReward[3119]["RewardItem"][1] = {}
	tChineseValentinesOperation_MissionReward[3119]["RewardItem"][1]["Id"] = 3307160
	tChineseValentinesOperation_MissionReward[3119]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_MissionReward[3119]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_MissionReward[3119]["LogStep"] = "1[2]"
	tChineseValentinesOperation_MissionReward[3119]["RewardEffect"] = {}
	tChineseValentinesOperation_MissionReward[3119]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	-- 爱情果
	tChineseValentinesOperation_MissionReward[3307154] = {}
	tChineseValentinesOperation_MissionReward[3307154]["RewardItem"] = {}
	tChineseValentinesOperation_MissionReward[3307154]["RewardItem"][1] = {}
	tChineseValentinesOperation_MissionReward[3307154]["RewardItem"][1]["Id"] = 3307154
	tChineseValentinesOperation_MissionReward[3307154]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_MissionReward[3307154]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_MissionReward[3307154]["LogStep"] = "1[2]"
	tChineseValentinesOperation_MissionReward[3307154]["RewardEffect"] = {}
	tChineseValentinesOperation_MissionReward[3307154]["RewardEffect"]["Effect"] = tChineseValentinesOperation_Data["Effect"]["Normal"]
	
	tChineseValentinesOperation_MissionReward["Monster"] = {}
	tChineseValentinesOperation_MissionReward["Monster"][1] = {}
	tChineseValentinesOperation_MissionReward["Monster"][1]["RewardItem"] = {}
	tChineseValentinesOperation_MissionReward["Monster"][1]["RewardItem"][1] = {}
	tChineseValentinesOperation_MissionReward["Monster"][1]["RewardItem"][1]["Id"] = 3307164
	tChineseValentinesOperation_MissionReward["Monster"][1]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_MissionReward["Monster"][1]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_MissionReward["Monster"][1]["LogStep"] = "1[2]"
	
	tChineseValentinesOperation_MissionReward["Monster"][2] = {}
	tChineseValentinesOperation_MissionReward["Monster"][2]["RewardItem"] = {}
	tChineseValentinesOperation_MissionReward["Monster"][2]["RewardItem"][1] = {}
	tChineseValentinesOperation_MissionReward["Monster"][2]["RewardItem"][1]["Id"] = 3307150
	tChineseValentinesOperation_MissionReward["Monster"][2]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_MissionReward["Monster"][2]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_MissionReward["Monster"][2]["LogStep"] = "1[2]"
	
	-- 获得贵宾礼盒
	tChineseValentinesOperation_MissionReward["BeVIP"] = {}
	tChineseValentinesOperation_MissionReward["BeVIP"]["RewardItem"] = {}
	tChineseValentinesOperation_MissionReward["BeVIP"]["RewardItem"][1] = {}
	tChineseValentinesOperation_MissionReward["BeVIP"]["RewardItem"][1]["Id"] = 3307168
	tChineseValentinesOperation_MissionReward["BeVIP"]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesOperation_MissionReward["BeVIP"]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_MissionReward["BeVIP"]["LogStep"] = "1[4]"
	
	-- 贵宾宝箱
	tChineseValentinesOperation_Reward["Chest"] = {}
	tChineseValentinesOperation_Reward["Chest"][1] = {}
	tChineseValentinesOperation_Reward["Chest"][1]["ItemChanceSum"] = 10000
	tChineseValentinesOperation_Reward["Chest"][1]["LogId"] = tChineseValentinesOperation_Data["LogId"]
	tChineseValentinesOperation_Reward["Chest"][1]["LogStep"] = "1[4]"
	-- 明亮星陨石	3009001	1		2天时效	26.00%
	tChineseValentinesOperation_Reward["Chest"][1][1] = {}
	tChineseValentinesOperation_Reward["Chest"][1][1]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward["Chest"][1][1]["ItemChance"] = 2600
	tChineseValentinesOperation_Reward["Chest"][1][1]["RewardItem"] = {}
	tChineseValentinesOperation_Reward["Chest"][1][1]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward["Chest"][1][1]["RewardItem"][1]["Id"] = 3009001
	tChineseValentinesOperation_Reward["Chest"][1][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	-- 赤练石+3	730003	1	赠品		22.00%
	tChineseValentinesOperation_Reward["Chest"][1][2] = {}
	tChineseValentinesOperation_Reward["Chest"][1][2]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward["Chest"][1][2]["ItemChance"] = 2200
	tChineseValentinesOperation_Reward["Chest"][1][2]["RewardItem"] = {}
	tChineseValentinesOperation_Reward["Chest"][1][2]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward["Chest"][1][2]["RewardItem"][1]["Id"] = 730003
	tChineseValentinesOperation_Reward["Chest"][1][2]["RewardItem"][1]["Attr"] = "0 1 3"
	-- 150气力值	3008187	1	赠品		26.00%
	tChineseValentinesOperation_Reward["Chest"][1][3] = {}
	tChineseValentinesOperation_Reward["Chest"][1][3]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward["Chest"][1][3]["ItemChance"] = 2600
	tChineseValentinesOperation_Reward["Chest"][1][3]["RewardItem"] = {}
	tChineseValentinesOperation_Reward["Chest"][1][3]["RewardItem"][1] = {}
	tChineseValentinesOperation_Reward["Chest"][1][3]["RewardItem"][1]["Id"] = 3008187
	tChineseValentinesOperation_Reward["Chest"][1][3]["RewardItem"][1]["Attr"] = "0 1"
	-- 60赠点	3304310	1			26.00%
	tChineseValentinesOperation_Reward["Chest"][1][4] = {}
	tChineseValentinesOperation_Reward["Chest"][1][4]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Reward["Chest"][1][4]["ItemChance"] = 2600
	tChineseValentinesOperation_Reward["Chest"][1][4]["RewardEMoneyMono"] = {}
	tChineseValentinesOperation_Reward["Chest"][1][4]["RewardEMoneyMono"]["Value"] = 60
	
local tChineseValentinesOperation_Probabil = {}
	
	tChineseValentinesOperation_Probabil["Monster"] = {}
	tChineseValentinesOperation_Probabil["Monster"][1] = {}
	tChineseValentinesOperation_Probabil["Monster"][1]["ItemChanceSum"] = 10000
	tChineseValentinesOperation_Probabil["Monster"][1][1] = {}
	tChineseValentinesOperation_Probabil["Monster"][1][1]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Probabil["Monster"][1][1]["ItemChance"] = 100
	tChineseValentinesOperation_Probabil["Monster"][1][1]["Item_1"] = 1
	tChineseValentinesOperation_Probabil["Monster"][1][2] = {}
	tChineseValentinesOperation_Probabil["Monster"][1][2]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Probabil["Monster"][1][2]["ItemChance"] = 50
	tChineseValentinesOperation_Probabil["Monster"][1][2]["Item_1"] = 2
	tChineseValentinesOperation_Probabil["Monster"][1][3] = {}
	tChineseValentinesOperation_Probabil["Monster"][1][3]["RandomItemChanceType"] = 2
	tChineseValentinesOperation_Probabil["Monster"][1][3]["ItemChance"] = 9850
	tChineseValentinesOperation_Probabil["Monster"][1][3]["Item_1"] = 0
	
-- CP 的userid
local tChineseValentinesOperation_TeammatesUserId = {}
--------------------------------------npc逻辑--------------------------------------------
-- 基本前置判断 有对白 活动前 1-1 活动后 1-2 等级不足 1-3
function ChineseValentinesOperation_BasicJudge(nNpcId)
	-- 判断时间
	if CommonFunc_GetBeforeActivityTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return false
	end
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return false
	end
	
	return true
end

-- 基本前置判断（爱情秘境） 有对白 活动后 1-1 等级不足 1-2
function ChineseValentinesOperation_BasicJudgeInMap(nNpcId)
	-- 判断时间
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return false
	end
	
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	return true
end

-- 基本前置判断（Party） 有对白 活动后 1-1 等级不足 1-2
function ChineseValentinesOperation_BasicJudgeInPartyMap(nNpcId)
	-- 判断时间
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["NewActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return false
	end
	
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	return true
end

-- 获得玩家阵营
function ChineseValentinesOperation_UserCamp()
	-- stc(172,07) 记录玩家阵营
	local nEventType = tChineseValentinesOperation_Data["Stc"]["Camp"]["EventType"]
	local nDataType = tChineseValentinesOperation_Data["Stc"]["Camp"]["DataType"]
	if Task_ChkStcValue(nEventType,nDataType,"<=",0) then
		return 0
	end
	
	local nUserCamp = Get_UserStatisticValue(nEventType,nDataType)
	return nUserCamp
end

-- 加入阵营
function ChineseValentinesOperation_Join(nIndex)
	local nNpcId = Get_NpcId()
	
	-- 基本前置判断
	if not ChineseValentinesOperation_BasicJudge(nNpcId) then
		return
	end
	
	-- 判断阵营
	local nUserCamp = ChineseValentinesOperation_UserCamp()
	local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][nNpcId]
	local nOpposedCamp = tChineseValentinesOperation_Data["NPCOpposedCamp"][nNpcId]
	if nUserCamp == nSelfCamp then
		return
	elseif nUserCamp == nOpposedCamp then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	-- cp阵营需要判断队伍
	if nSelfCamp == tChineseValentinesOperation_Data["Stc"]["Camp"]["Couple"] then
		-- 是否是2人
		if not ChineseValentinesOperation_ChkTeamMembers() then
			LinkNpcGossipFunc_New(nNpcId,"3-4")
			return
		end
		-- 是否是队长
		if not User_IsTeamLeader() then
			LinkNpcGossipFunc_New(nNpcId,"3-5")
			return
		end
		-- 判断CP等级
		local nUserId = Get_UserId()
		local nTeamId = Get_UserTeamId(nUserId)
		tChineseValentinesOperation_TeammatesUserId[nTeamId] = {}
		User_TeamExeFuncByTeamer(3,string.format("ChineseValentinesOperation_TeammatesUserId</N>%d",nTeamId),nUserId)
		if not ChineseValentinesOperation_ChkLevel(nTeamId,nUserId) then
			Sys_MsgBox(tChineseValentinesOperation_Text["Msg"]["TeammateLevel"])
			return
		end
		-- 判断CP是否有阵营
		if ChineseValentinesOperation_ChkNoCamp(nTeamId,nUserId) then
			Sys_MsgBox(tChineseValentinesOperation_Text["Msg"]["TeammateCamp"])
			return
		end
	end
	
	-- 判断费用
	local nFee = tChineseValentinesOperation_Data["Fee"][nSelfCamp][nIndex]
	local nNeedItemId = tChineseValentinesOperation_Data["Itemtype"]["DragonBall"]
	if nIndex == 1 then
		if Get_UserEMoney() < nFee then
			Sys_MsgBox(tChineseValentinesOperation_Text["NotEnough"][nIndex])
			return
		end
	elseif nIndex == 2 then
		if not User_CanPutMoney2Bag(-nFee) then
			Sys_MsgBox(tChineseValentinesOperation_Text["NotEnough"][nIndex])
			return
		end
	elseif nIndex == 3 then
		if not Item_ChkMulItem(nNeedItemId,nNeedItemId,nFee,0) then
			Sys_MsgBox(tChineseValentinesOperation_Text["NotEnough"][nIndex])
			return
		end
	end
	
	local sText = tChineseValentinesOperation_Data["ConfirmFee"][nIndex]
	LinkNpcGossipFunc_New(nNpcId,sText)
end

-- 确认加入
function ChineseValentinesOperation_Confirm(nIndex)
	local nNpcId = Get_NpcId()
	
	-- 基本前置判断
	if not ChineseValentinesOperation_BasicJudge(nNpcId) then
		return
	end
	
	-- 判断阵营
	local nUserCamp = ChineseValentinesOperation_UserCamp()
	local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][nNpcId]
	local nOpposedCamp = tChineseValentinesOperation_Data["NPCOpposedCamp"][nNpcId]
	if nUserCamp == nSelfCamp then
		return
	elseif nUserCamp == nOpposedCamp then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	-- cp阵营需要判断队伍
	if nSelfCamp == tChineseValentinesOperation_Data["Stc"]["Camp"]["Couple"] then
		-- 是否是2人
		if not ChineseValentinesOperation_ChkTeamMembers() then
			LinkNpcGossipFunc_New(nNpcId,"3-4")
			return
		end
		-- 是否是队长
		if not User_IsTeamLeader() then
			LinkNpcGossipFunc_New(nNpcId,"3-5")
			return
		end
		-- 判断CP等级
		local nUserId = Get_UserId()
		local nTeamId = Get_UserTeamId(nUserId)
		tChineseValentinesOperation_TeammatesUserId[nTeamId] = {}
		User_TeamExeFuncByTeamer(3,string.format("ChineseValentinesOperation_TeammatesUserId</N>%d",nTeamId),nUserId)
		if not ChineseValentinesOperation_ChkLevel(nTeamId,nUserId) then
			Sys_MsgBox(tChineseValentinesOperation_Text["Msg"]["TeammateLevel"])
			return
		end
		-- 判断CP是否有阵营
		if ChineseValentinesOperation_ChkNoCamp(nTeamId,nUserId) then
			Sys_MsgBox(tChineseValentinesOperation_Text["Msg"]["TeammateCamp"])
			return
		end
	end
	
	-- 判断费用
	local nFee = tChineseValentinesOperation_Data["Fee"][nSelfCamp][nIndex]
	local nNeedItemId = tChineseValentinesOperation_Data["Itemtype"]["DragonBall"]
	if nIndex == 1 then
		if Get_UserEMoney() < nFee then
			Sys_MsgBox(tChineseValentinesOperation_Text["NotEnough"][nIndex])
			return
		end
	elseif nIndex == 2 then
		if not User_CanPutMoney2Bag(-nFee) then
			Sys_MsgBox(tChineseValentinesOperation_Text["NotEnough"][nIndex])
			return
		end
	elseif nIndex == 3 then
		if not Item_ChkMulItem(nNeedItemId,nNeedItemId,nFee,0) then
			Sys_MsgBox(tChineseValentinesOperation_Text["NotEnough"][nIndex])
			return
		end
	end
	
	-------------------------------- 报名
	-- 缴纳报名费
	if nIndex == 1 then
		if not User_AddEMoney(-nFee) then
			return
		end
		local sEmoneyLog1 = string.format(tChineseValentinesOperation_Data["Emoneylog"]["EmoneySignUp"],nFee,nFee)
		Sys_SaveEmoneyBuy(sEmoneyLog1)
	elseif nIndex == 2 then
		if not User_AddMoney(-nFee) then
			return
		end
		local sEmoneyLog2 = string.format(tChineseValentinesOperation_Data["Emoneylog"]["MoneySignUp"],nFee)
		Sys_SaveEmoneyBuy(sEmoneyLog2)
	elseif nIndex == 3 then
		if not Item_DelMulItem(nNeedItemId,nNeedItemId,nFee) then
			return
		end
		local sEmoneyLog3 = string.format(tChineseValentinesOperation_Data["Emoneylog"]["BallSignUp"],nFee)
		Sys_SaveEmoneyBuy(sEmoneyLog3)
	end
	
	-- 打掩码
	-- stc(172,07) 记录玩家阵营
	local nEventType = tChineseValentinesOperation_Data["Stc"]["Camp"]["EventType"]
	local nDataType = tChineseValentinesOperation_Data["Stc"]["Camp"]["DataType"]
	Task_SetStatistic(nEventType,nDataType,nSelfCamp,1)
	local sCPName = ""
	-- cp阵营需要记录CP的userid
	if nSelfCamp == tChineseValentinesOperation_Data["Stc"]["Camp"]["Couple"] then
		-- stc(172,12) 记录玩家CP
		local nCPEventType = tChineseValentinesOperation_Data["Stc"]["CP"]["EventType"]
		local nCPDataType = tChineseValentinesOperation_Data["Stc"]["CP"]["DataType"]
		local nUserId = Get_UserId()
		local nTeamId = Get_UserTeamId(nUserId)
		tChineseValentinesOperation_TeammatesUserId[nTeamId] = {}
		User_TeamExeFuncByTeamer(3,string.format("ChineseValentinesOperation_TeammatesUserId</N>%d",nTeamId),nUserId)
		for i,v in pairs(tChineseValentinesOperation_TeammatesUserId[nTeamId]) do
			if nUserId ~= v then
				Task_SetStatistic(nCPEventType,nCPDataType,v,1,nUserId)
				Task_SetStatistic(nCPEventType,nCPDataType,nUserId,1,v)
				Task_SetStatistic(nEventType,nDataType,nSelfCamp,1,v)
				sCPName = Get_UserName(v) -- 获取CP名字
			end
		end
	end
	-- 提示
	local sUserNmae = Get_UserName(nUserId)
	local sBroad = string.format(tChineseValentinesOperation_Text["Msg"]["Camp"][nSelfCamp],sUserNmae,sCPName)
	Sys_SystemBroadcast(sBroad)
	LinkNpcGossipFunc_New(nNpcId,"4-1")
	User_EffectDel("self",tChineseValentinesOperation_Data["Effect"]["Normal"])
	User_EffectAdd("self",tChineseValentinesOperation_Data["Effect"]["Normal"])
end

-- 判断队伍人数是否是2人
function ChineseValentinesOperation_ChkTeamMembers()
	local nUserId = Get_UserId()
	if Get_UserTeamNumbers(nUserId) == tChineseValentinesOperation_Data["TeamMembers"] then
		return true
	else
		return false
	end
end

-- 判断另1个队友是否是cp
function ChineseValentinesOperation_ChkCP(nTeamId,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nTeammateId = 0
	for i,v in pairs(tChineseValentinesOperation_TeammatesUserId[nTeamId]) do
		if nNowUserId ~= v then
			nTeammateId = v
		end
	end
	
	-- stc(172,12) 记录玩家CP
	local nCPEventType = tChineseValentinesOperation_Data["Stc"]["CP"]["EventType"]
	local nCPDataType = tChineseValentinesOperation_Data["Stc"]["CP"]["DataType"]
	return Task_ChkStcValue(nCPEventType,nCPDataType,"==",nTeammateId)
end

-- 判断CP等级
function ChineseValentinesOperation_ChkLevel(nTeamId,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nTeammateId = 0
	for i,v in pairs(tChineseValentinesOperation_TeammatesUserId[nTeamId]) do
		if nNowUserId ~= v then
			nTeammateId = v
		end
	end
	
	return User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"],nTeammateId)
end

-- 判断CP是否有阵营
function ChineseValentinesOperation_ChkNoCamp(nTeamId,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nTeammateId = 0
	for i,v in pairs(tChineseValentinesOperation_TeammatesUserId[nTeamId]) do
		if nNowUserId ~= v then
			nTeammateId = v
		end
	end
	
	-- stc(172,07) 记录玩家阵营
	local nEventType = tChineseValentinesOperation_Data["Stc"]["Camp"]["EventType"]
	local nDataType = tChineseValentinesOperation_Data["Stc"]["Camp"]["DataType"]
	return Task_ChkStcValue(nEventType,nDataType,">",0,nTeammateId)
end

-- 临时表 存入全部队员userid
function ChineseValentinesOperation_TeammatesUserId(nTeamId,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	table.insert(tChineseValentinesOperation_TeammatesUserId[nTeamId],nNowUserId)
end

-- 进入爱情秘境
function ChineseValentinesOperation_ChgMap(nIndex)
	local nNpcId = Get_NpcId()
	
	-- 基本前置判断
	if not ChineseValentinesOperation_BasicJudge(nNpcId) then
		return
	end
	
	-- 判断阵营
	local nUserCamp = ChineseValentinesOperation_UserCamp()
	if nUserCamp <= 0 then
		return
	end
	
	-- 进入活动地图 打log 出提示
	local nMapId = tChineseValentinesOperation_Data["Location"][nIndex]["MapId"]
	local nBoundX = tChineseValentinesOperation_Data["Location"][nIndex]["PosX"]
	local nBoundY = tChineseValentinesOperation_Data["Location"][nIndex]["PosY"]
	local sLog = string.format(tChineseValentinesOperation_Data["Log"]["InTheMap"],nMapId)
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,5,5,1)
	Sys_SaveActionFestivalLog(sLog)
	User_TalkChannel2005(tChineseValentinesOperation_Text["Msg"]["MissionMap"])
end

-- 上交鲜花
function ChineseValentinesOperation_Flower(nIndex)
	local nNpcId = Get_NpcId()
	
	-- 基本前置判断
	if not ChineseValentinesOperation_BasicJudge(nNpcId) then
		return
	end
	
	-- 判断阵营
	local nUserCamp = ChineseValentinesOperation_UserCamp()
	local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][nNpcId]
	if nUserCamp <= 0 then
		local nJoinNPC = tChineseValentinesOperation_Data["JoinNPC"][nSelfCamp]
		Sys_MsgBox(tChineseValentinesOperation_Text["Msg"]["JoinFirst"],"NpcPosition_PathFind</N>" .. nJoinNPC)
		return
	elseif nUserCamp ~= nSelfCamp then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	-- 判断鲜花
	local nNum = 0
	local sMsg = string.format(tChineseValentinesOperation_Text["Msg"]["NoItem"],tChineseValentinesOperation_Text["Flower"][nIndex])
	for i,v in pairs(tChineseValentinesOperation_Data["Flower"][nIndex]) do
		if not Item_ChkItem(v) then
			nNum = nNum + 1
		end
	end
	if nNum == tChineseValentinesOperation_Data["FlowersNumType"] then
		User_TalkChannel2005(sMsg)
		return
	end
	
	tNpcGossip[nNpcId]["Text311"] = string.format(tChineseValentinesOperation_Text[nNpcId]["Text311"],tChineseValentinesOperation_Text["Flower"][nIndex])
	tNpcGossip[nNpcId]["OptionFunc311"] = "ChineseValentinesOperation_FlowerType</N>1</N>" .. nIndex
	tNpcGossip[nNpcId]["OptionFunc312"] = "ChineseValentinesOperation_FlowerType</N>2</N>" .. nIndex
	tNpcGossip[nNpcId]["OptionFunc313"] = "ChineseValentinesOperation_FlowerType</N>3</N>" .. nIndex
	tNpcGossip[nNpcId]["OptionFunc314"] = "ChineseValentinesOperation_FlowerType</N>4</N>" .. nIndex
	tNpcGossip[nNpcId]["OptionFunc315"] = "ChineseValentinesOperation_FlowerType</N>5</N>" .. nIndex
	tNpcGossip[nNpcId]["tOption3-1"] = {}
	for i,v in pairs(tChineseValentinesOperation_Data["Flower"][nIndex]) do
		if Item_ChkItem(v) then
			table.insert(tNpcGossip[nNpcId]["tOption3-1"],310+i)
		end
	end
	table.insert(tNpcGossip[nNpcId]["tOption3-1"],316)
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end

-- 选择上交的鲜花份数
function ChineseValentinesOperation_FlowerType(nType,nIndex)
	local nNpcId = Get_NpcId()
	local nItemId = tChineseValentinesOperation_Data["Flower"][nIndex][nType]
	local sItemName = Get_ItemtypeName(nItemId)
	Sys_DialogText(string.format(tChineseValentinesOperation_Text[nNpcId]["Text411"],sItemName))
	Sys_DialogOptEdit(tChineseValentinesOperation_Text[nNpcId]["Option411"],tChineseValentinesOperation_Data["Length"],"ChineseValentinesOperation_SubmitFlowers</N>0</N>" .. nType .. "</N>" .. nIndex)
	Sys_DialogOption(tChineseValentinesOperation_Text[nNpcId]["Option412"],"</F>ChineseValentinesOperation_SubmitFlowers</N>1</N>" .. nType .. "</N>" .. nIndex)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

-- 确认上交鲜花
function ChineseValentinesOperation_SubmitFlowers(nNumType,nType,nIndex)
	local nNpcId = Get_NpcId()
	
	-- 基本前置判断
	if not ChineseValentinesOperation_BasicJudge(nNpcId) then
		return
	end
	
	-- 判断阵营
	local nUserCamp = ChineseValentinesOperation_UserCamp()
	local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][nNpcId]
	if nUserCamp <= 0 then
		local nJoinNPC = tChineseValentinesOperation_Data["JoinNPC"][nSelfCamp]
		Sys_MsgBox(tChineseValentinesOperation_Text["Msg"]["JoinFirst"],"NpcPosition_PathFind</N>" .. nJoinNPC)
		return
	elseif nUserCamp ~= nSelfCamp then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	-- 判断物品
	local nItemId = tChineseValentinesOperation_Data["Flower"][nIndex][nType]
	local nItemNum = 0
	-- 输入数量
	if nNumType == 0 then
		local nNum = tonumber(Get_SysAcceptStr())
		if nNum == nil or type(nNum) ~= "number" or nNum%1 ~= 0 or nNum <=0 then
			tNpcGossip[nNpcId]["OptionFunc511"] = "ChineseValentinesOperation_FlowerType</N>" .. nType .. "</N>" .. nIndex
			LinkNpcGossipFunc_New(nNpcId,"5-1")
			return
		else
			nItemNum = nNum
		end
	-- 全部上交
	elseif nNumType == 1 then
		local nNum1 = Get_CountItemType(nItemId,0)
		nItemNum = nNum1
	end
	
	local sItemName = Get_ItemtypeName(nItemId)
	tNpcGossip[nNpcId]["Text521"] = string.format(tChineseValentinesOperation_Text[nNpcId]["Text521"],sItemName)
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		tNpcGossip[nNpcId]["OptionFunc521"] = "ChineseValentinesOperation_FlowerType</N>" .. nType .. "</N>" .. nIndex
		LinkNpcGossipFunc_New(nNpcId,"5-2")
		return
	end
	
	--------------------------------------- 上交
	
	-- 删物品 打log
	if not Item_DelMulItem(nItemId,nItemId,nItemNum) then
		return
	end
	local sLog = string.format(tChineseValentinesOperation_Data["Log"]["SubmitFlowers"],nItemId,nItemNum)
	Sys_SaveActionRewardLog(sLog)
	
	-- 打掩码
	-- 个人魅力值
	-- stc(172,14) 记录玩家总魅力值
	local nCharmingEventType = tChineseValentinesOperation_Data["Stc"]["Charming"]["EventType"]
	local nCharmingDataType = tChineseValentinesOperation_Data["Stc"]["Charming"]["DataType"]
	-- stc(172,13) 记录玩家每日上交鲜花获得的魅力值
	local nFlowersEventType = tChineseValentinesOperation_Data["Stc"]["Flowers"]["EventType"]
	local nFlowersDataType = tChineseValentinesOperation_Data["Stc"]["Flowers"]["DataType"]
	local nFlowersDataType = tChineseValentinesOperation_Data["Stc"]["Flowers"]["DataType"]
	Task_StcReset(nFlowersEventType,nFlowersDataType)
	local nValue = 0
	local nLimit = tChineseValentinesOperation_Data["Stc"]["Flowers"]["Limit"]
	local nFlowerNum = tChineseValentinesOperation_Data["FlowersNum"][nType] -- 此物品是多少朵花
	local nSinglePoint = tChineseValentinesOperation_Data["FlowerPoint"][nIndex] -- 1朵花的点数
	local nPonts = nFlowerNum * nSinglePoint * nItemNum
	local nPointsSelf = nPonts
	-- 未到上限
	if not Task_ChkStcValue(nFlowersEventType,nFlowersDataType,"<=",0) then
		nValue = Get_UserStatisticValue(nFlowersEventType,nFlowersDataType)
	end
	if nValue < nLimit then
		if nPointsSelf + nValue > nLimit then
			nPointsSelf = nLimit - nValue
		end
		Task_AddStatistic(nFlowersEventType,nFlowersDataType,nPointsSelf,1)
		Task_SetStcTimestamp(nFlowersEventType,nFlowersDataType,0)
		Task_AddStatistic(nCharmingEventType,nCharmingDataType,nPointsSelf,1)
	else
		nPointsSelf = 0
	end
	-- 阵营活力值
	local nGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Energy"]
	local nPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Energy"][nSelfCamp]
	local nFormer = Get_SysDynaGlobalData(nGlobalId,nPos)
	Sys_SetSynaGlobalData(nGlobalId,nPos,nFormer+nPonts)
	ChineseValentinesOperation_EnergyChange(nSelfCamp)
	
	-- 出对白
	tNpcGossip[nNpcId]["Text531"] = string.format(tChineseValentinesOperation_Text[nNpcId]["Text531"],nItemNum,sItemName)
	tNpcGossip[nNpcId]["Text532"] = string.format(tChineseValentinesOperation_Text[nNpcId]["Text532"],nPointsSelf,nPonts)
	LinkNpcGossipFunc_New(nNpcId,"5-3")
	User_EffectDel("self",tChineseValentinesOperation_Data["Effect"]["Normal"])
	User_EffectAdd("self",tChineseValentinesOperation_Data["Effect"]["Normal"])
end

-- 上交道具
function ChineseValentinesOperation_Item(nIndex)
	local nNpcId = Get_NpcId()
	
	-- 基本前置判断
	if not ChineseValentinesOperation_BasicJudge(nNpcId) then
		return
	end
	
	-- 判断阵营
	local nUserCamp = ChineseValentinesOperation_UserCamp()
	local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][nNpcId]
	if nUserCamp <= 0 then
		local nJoinNPC = tChineseValentinesOperation_Data["JoinNPC"][nSelfCamp]
		Sys_MsgBox(tChineseValentinesOperation_Text["Msg"]["JoinFirst"],"NpcPosition_PathFind</N>" .. nJoinNPC)
		return
	elseif nUserCamp ~= nSelfCamp then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	-- 判断道具
	local nItemId = tChineseValentinesOperation_Data["Item"][nIndex]
	local sItemName = Get_ItemtypeName(nItemId)
	local sMsg = string.format(tChineseValentinesOperation_Text["Msg"]["NoItem"],sItemName)
	if not Item_ChkItem(nItemId) then
		User_TalkChannel2005(sMsg)
		return
	end
	
	Sys_DialogText(string.format(tChineseValentinesOperation_Text[nNpcId]["Text321"],sItemName))
	Sys_DialogOptEdit(tChineseValentinesOperation_Text[nNpcId]["Option321"],tChineseValentinesOperation_Data["Length"],"ChineseValentinesOperation_SubmitItem</N>0</N>" .. nIndex)
	Sys_DialogOption(tChineseValentinesOperation_Text[nNpcId]["Option322"],"</F>ChineseValentinesOperation_SubmitItem</N>1</N>" .. nIndex)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

function ChineseValentinesOperation_SubmitItem(nNumType,nIndex)
	local nNpcId = Get_NpcId()
	
	-- 基本前置判断
	if not ChineseValentinesOperation_BasicJudge(nNpcId) then
		return
	end
	
	-- 判断阵营
	local nUserCamp = ChineseValentinesOperation_UserCamp()
	local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][nNpcId]
	if nUserCamp <= 0 then
		local nJoinNPC = tChineseValentinesOperation_Data["JoinNPC"][nSelfCamp]
		Sys_MsgBox(tChineseValentinesOperation_Text["Msg"]["JoinFirst"],"NpcPosition_PathFind</N>" .. nJoinNPC)
		return
	elseif nUserCamp ~= nSelfCamp then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	-- 判断物品
	local nItemId = tChineseValentinesOperation_Data["Item"][nIndex]
	local nItemNum = 0
	-- 输入数量
	if nNumType == 0 then
		local nNum = tonumber(Get_SysAcceptStr())
		if nNum == nil or type(nNum) ~= "number" or nNum%1 ~= 0 or nNum <=0 then
			tNpcGossip[nNpcId]["OptionFunc421"] = "ChineseValentinesOperation_Item</N>" .. nIndex
			LinkNpcGossipFunc_New(nNpcId,"4-2")
			return
		else
			nItemNum = nNum
		end
	-- 全部上交
	elseif nNumType == 1 then
		local nNum1 = Get_CountItemType(nItemId,0)
		nItemNum = nNum1
	end
	
	local sItemName = Get_ItemtypeName(nItemId)
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		tNpcGossip[nNpcId]["Text431"] = string.format(tChineseValentinesOperation_Text[nNpcId]["Text431"],sItemName)
		tNpcGossip[nNpcId]["OptionFunc431"] = "ChineseValentinesOperation_Item</N>" .. nIndex
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	end
	
	--------------------------------------- 上交
	
	-- 删物品 打log
	if not Item_DelMulItem(nItemId,nItemId,nItemNum) then
		return
	end
	local sLog = string.format(tChineseValentinesOperation_Data["Log"]["SubmitItems"],nItemId,nItemNum)
	Sys_SaveActionRewardLog(sLog)
	
	-- 打掩码
	-- 个人魅力值
	-- stc(172,14) 记录玩家总魅力值
	local nCharmingEventType = tChineseValentinesOperation_Data["Stc"]["Charming"]["EventType"]
	local nCharmingDataType = tChineseValentinesOperation_Data["Stc"]["Charming"]["DataType"]
	local nSinglePoint = tChineseValentinesOperation_Data["ItemPoint"][nIndex]
	local nPonts = nItemNum * nSinglePoint
	Task_AddStatistic(nCharmingEventType,nCharmingDataType,nPonts,1)
	-- 阵营活力值
	local nGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Energy"]
	local nPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Energy"][nSelfCamp]
	local nFormer = Get_SysDynaGlobalData(nGlobalId,nPos)
	Sys_SetSynaGlobalData(nGlobalId,nPos,nFormer+nPonts)
	ChineseValentinesOperation_EnergyChange(nSelfCamp)
	
	-- 出对白
	tNpcGossip[nNpcId]["Text441"] = string.format(tChineseValentinesOperation_Text[nNpcId]["Text441"],nItemNum,sItemName)
	tNpcGossip[nNpcId]["Text442"] = string.format(tChineseValentinesOperation_Text[nNpcId]["Text442"],nPonts,nPonts)
	LinkNpcGossipFunc_New(nNpcId,"4-4")
	User_EffectDel("self",tChineseValentinesOperation_Data["Effect"]["Normal"])
	User_EffectAdd("self",tChineseValentinesOperation_Data["Effect"]["Normal"])
end

-- 打开页面
function ChineseValentinesOperation_Web(nNpcId)
	local nNpcId = Get_NpcId()
	
	-- 基本前置判断
	if not ChineseValentinesOperation_BasicJudge(nNpcId) then
		return
	end
	
	local sWebPage = tChineseValentinesOperation_Data["Web"]
	User_SendWebDialog(sWebPage)
end

-- 21360 情人节礼官
function ChineseValentinesOperation_Shop(nNpcId)
	-- 基本前置判断
	if not ChineseValentinesOperation_BasicJudge(nNpcId) then
		return
	end
	
	-- 打开天石商店
	User_OpenDialog()
end

-- 接单身/CP任务
function ChineseValentinesOperation_Mission()
	local nNpcId =  Get_NpcId()
	local nIndex = tChineseValentinesOperation_Data["NeedItem"][nNpcId]
	
	-- 基本前置判断（爱情秘境）
	if not ChineseValentinesOperation_BasicJudgeInMap(nNpcId) then
		return
	end
	
	-- 判断阵营 无阵营或敌对阵营
	local nUserCamp = ChineseValentinesOperation_UserCamp()
	local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][nNpcId]
	if nUserCamp ~= nSelfCamp then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	-- 判断任务进度
	local nStcIndex = tChineseValentinesOperation_Data["StcIndex"][nNpcId]
	local nMissionEventType = tChineseValentinesOperation_Data["Stc"][nStcIndex]["EventType"]
	local nMissionDataType = tChineseValentinesOperation_Data["Stc"][nStcIndex]["DataType"]
	Task_StcReset(nMissionEventType,nMissionDataType)
	local nMissionComplete = tChineseValentinesOperation_Data["Stc"][nStcIndex]["Complete"]
	-- 今日已完成
	if Task_ChkStcValue(nMissionEventType,nMissionDataType,">=",nMissionComplete) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- cp阵营需要判断队伍和定情信物
	local nUserId = Get_UserId()
	local nSubstitute = tChineseValentinesOperation_Data["Itemtype"]["Substitute"]
	local nMissionAccept = tChineseValentinesOperation_Data["Stc"][nStcIndex]["Accept"]
	if nSelfCamp == tChineseValentinesOperation_Data["Stc"]["Camp"]["Couple"] then
		-- 队伍不是2人
		if not ChineseValentinesOperation_ChkTeamMembers() then
			-- 没有定情信物
			if not Item_ChkItem(nSubstitute) then
				LinkNpcGossipFunc_New(nNpcId,"2-2")
				return
			-- 有定情信物
			else
				nMissionAccept = tChineseValentinesOperation_Data["Stc"][nStcIndex]["CPAccept"]
			end
		-- 队伍是2人
		else
			local nTeamId = Get_UserTeamId(nUserId)
			tChineseValentinesOperation_TeammatesUserId[nTeamId] = {}
			User_TeamExeFuncByTeamer(3,string.format("ChineseValentinesOperation_TeammatesUserId</N>%d",nTeamId),nUserId)
			-- 不是CP
			if not ChineseValentinesOperation_ChkCP(nTeamId,nUserId) then
				-- 没有定情信物
				if not Item_ChkItem(nSubstitute) then
					LinkNpcGossipFunc_New(nNpcId,"2-2")
					return
				-- 有定情信物
				else
					nMissionAccept = tChineseValentinesOperation_Data["Stc"][nStcIndex]["CPAccept"]
				end
			end
		end
	end
	
	-- 如果任务需要道具，要判断是否有道具，是否有背包空间
	local nItemId = 0
	local nItemNum = nMissionAccept
	if nIndex == 1 then
		nItemId = tChineseValentinesOperation_Data["Itemtype"][nSelfCamp][nStcIndex]
		if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
			if not User_CheckLeftSpace(tChineseValentinesOperation_Data["Space"]) then
				Sys_MsgBox(tChineseValentinesOperation_Text["Msg"]["NoSpace"])
				return
			end
		end
	end
	
	-----------------------------------------
	
	-- 删除信物
	if nMissionAccept == tChineseValentinesOperation_Data["Stc"][nStcIndex]["CPAccept"] then
		if not Item_DelItem(nSubstitute) then
			return
		else
			Sys_SaveActionRewardLog(tChineseValentinesOperation_Data["Log"]["Substitute"])
		end
	end
	
	-- 打掩码
	if Task_ChkStcValue(nMissionEventType,nMissionDataType,"<=",0) then
		Task_SetStatistic(nMissionEventType,nMissionDataType,nMissionAccept,1)
		Task_SetStcTimestamp(nMissionEventType,nMissionDataType,0)
	end
	
	-- 如果任务需要道具
	if nIndex == 1 then
		if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
			local nAddItemNum = nItemNum - Get_CountItemType(nItemId,0)
			local sAttr = string.format(tChineseValentinesOperation_Data["Attr"],nAddItemNum)
			local sLog = string.format(tChineseValentinesOperation_Data["Log"]["DeliverProps"],nItemId,nAddItemNum)
			Item_AddNewItem(nItemId,sAttr)
			Sys_SaveActionRewardLog(sLog)
			if nSelfCamp == tChineseValentinesOperation_Data["Stc"]["Camp"]["Couple"] then
				Sys_MsgBox(tChineseValentinesOperation_Text[nNpcId]["AcceptWithItem"][nMissionAccept],"ChineseValentinesOperation_FindTheWay</N>" .. nNpcId)
			else
				Sys_MsgBox(tChineseValentinesOperation_Text[nNpcId]["AcceptWithItem"],"ChineseValentinesOperation_FindTheWay</N>" .. nNpcId)
			end
			return
		end
	end
	
	-- 没道具直接出提示
	if nSelfCamp == tChineseValentinesOperation_Data["Stc"]["Camp"]["Couple"] then
		Sys_MsgBox(tChineseValentinesOperation_Text[nNpcId]["Accept"][nMissionAccept],"ChineseValentinesOperation_FindTheWay</N>" .. nNpcId)
	else
		Sys_MsgBox(tChineseValentinesOperation_Text[nNpcId]["Accept"],"ChineseValentinesOperation_FindTheWay</N>" .. nNpcId)
	end
end

-- 上交爱情果
function ChineseValentinesOperation_SubmitFruit()
	local nNpcId =  Get_NpcId()
	
	-- 基本前置判断（爱情秘境）
	if not ChineseValentinesOperation_BasicJudgeInMap(nNpcId) then
		return
	end
	
	-- 判断阵营 无阵营或敌对阵营
	local nUserCamp = ChineseValentinesOperation_UserCamp()
	local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][nNpcId]
	if nUserCamp ~= nSelfCamp then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	-- 判断任务
	local nStcIndex = tChineseValentinesOperation_Data["StcIndex"][nNpcId]
	local nMissionEventType = tChineseValentinesOperation_Data["Stc"][nStcIndex]["EventType"]
	local nMissionDataType = tChineseValentinesOperation_Data["Stc"][nStcIndex]["DataType"]
	Task_StcReset(nMissionEventType,nMissionDataType)
	local nMissionComplete = tChineseValentinesOperation_Data["Stc"][nStcIndex]["Complete"]
	-- 今日已完成
	if Task_ChkStcValue(nMissionEventType,nMissionDataType,">=",nMissionComplete) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	-- 未接任务
	if Task_ChkStcValue(nMissionEventType,nMissionDataType,"<=",0) then
		return
	end
	
	-- 判断队伍
	local nValue = Get_UserStatisticValue(nMissionEventType,nMissionDataType)
	local nItemNum = tChineseValentinesOperation_Data["FruitsNum"]
	local nCPAcceptWithItem = tChineseValentinesOperation_Data["Stc"][nStcIndex]["CPAccept"]
	local nUserId = Get_UserId()
	-- CP任务组队完成
	if nValue ~= tChineseValentinesOperation_Data["Stc"][nStcIndex]["CPAccept"] then
		-- 队伍不是2人
		if not ChineseValentinesOperation_ChkTeamMembers() then
			User_TalkChannel2005(tChineseValentinesOperation_Text["Msg"]["CPNotHere"])
			return
		-- 不是CP
		else
			local nTeamId = Get_UserTeamId(nUserId)
			tChineseValentinesOperation_TeammatesUserId[nTeamId] = {}
			User_TeamExeFuncByTeamer(3,string.format("ChineseValentinesOperation_TeammatesUserId</N>%d",nTeamId),nUserId)
			if not ChineseValentinesOperation_ChkCP(nTeamId,nUserId) then
				User_TalkChannel2005(tChineseValentinesOperation_Text["Msg"]["CPNotHere"])
				return
			end
		end
	-- CP任务使用信物单人完成
	else
		nItemNum = nItemNum * nCPAcceptWithItem
	end
	
	-- 判断物品
	local nItemId = tChineseValentinesOperation_Data["Itemtype"][nSelfCamp][nStcIndex]
	local sItemName = Get_ItemtypeName(nItemId)
	local sNoItem = string.format(tChineseValentinesOperation_Text["Msg"]["NoItem"],sItemName)
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		User_TalkChannel2005(sNoItem)
		return
	end
	
	-- 判断背包
	local nSpace = RewardTemplate_GetRewardSpace(tChineseValentinesOperation_MissionReward[nSelfCamp][nStcIndex][nValue])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tChineseValentinesOperation_Text["Msg"]["NoSpace"])
		return
	end
	
	-----------------------------------------
	
	RewardTemplate_UseItemAndMsg(tChineseValentinesOperation_MissionReward[nSelfCamp][nStcIndex][nValue])
	
	-- 任务掩码
	Task_SetStatistic(nMissionEventType,nMissionDataType,nMissionComplete,1)
	
	-- stc(172,14) 记录玩家总魅力值
	local nCharmingEventType = tChineseValentinesOperation_Data["Stc"]["Charming"]["EventType"]
	local nCharmingDataType = tChineseValentinesOperation_Data["Stc"]["Charming"]["DataType"]
	local nValue1 = tChineseValentinesOperation_Data["Gain"][1]
	Task_AddStatistic(nCharmingEventType,nCharmingDataType,nValue1,1,nUserId)
	
	-- 增减阵营活力值
	-- 增加
	local nGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Energy"]
	local nPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Energy"][nSelfCamp]
	local nValue2 = tChineseValentinesOperation_Data["Gain"][2] + Get_SysDynaGlobalData(nGlobalId,nPos)
	Sys_SetSynaGlobalData(nGlobalId,nPos,nValue2)
	-- 减少
	local nOpposedCamp =  tChineseValentinesOperation_Data["NPCOpposedCamp"][nNpcId]
	local nOpposedPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Energy"][nOpposedCamp]
	local nMinusPos = tChineseValentinesOperation_Data["GlobalIdPos"]["MinusEnergy"][nSelfCamp]
	local nTotalData = Get_SysDynaGlobalData(nGlobalId,nOpposedPos)
	local nMinusData = Get_SysDynaGlobalData(nGlobalId,nMinusPos)
	local nValue3 = tChineseValentinesOperation_Data["Gain"][3]
	if nTotalData == 0 then
		nValue3 = 0
	elseif nTotalData < nValue3 then
		nValue3 = nTotalData
	end
	Sys_SetSynaGlobalData(nGlobalId,nMinusPos,nMinusData+nValue3)
	Sys_SetSynaGlobalData(nGlobalId,nOpposedPos,nTotalData-nValue3)
	ChineseValentinesOperation_EnergyChange(nSelfCamp)
	
	local sMsg = string.format(tChineseValentinesOperation_Text["Msg"]["MissionReward"],nValue1,nValue2,nValue3)
	User_TalkChannel2005(sMsg)
end

-- 传送
function ChineseValentinesOperation_FindTheWay(nNpcId)
	local nMapId = tChineseValentinesOperation_Data["Location"][nNpcId]["MapId"]
	local nBoundX = tChineseValentinesOperation_Data["Location"][nNpcId]["PosX"]
	local nBoundY = tChineseValentinesOperation_Data["Location"][nNpcId]["PosY"]
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,5,5,1)
end

-- 完成任务 公共函数
-- 单身 火炬任务 驱赶任务 拯救任务
-- CP 浇灌任务 秀恩爱任务
function ChineseValentinesOperation_Complete(nNpcId)
	
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		return
	end
	
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
		return
	end
	
	-- 判断阵营 无阵营或敌对阵营
	local nUserCamp = ChineseValentinesOperation_UserCamp()
	local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][nNpcId]
	if nUserCamp ~= nSelfCamp then
		return
	end
	
	-- 判断任务
	local nStcIndex = tChineseValentinesOperation_Data["StcIndex"][nNpcId]
	local nMissionEventType = tChineseValentinesOperation_Data["Stc"][nStcIndex]["EventType"]
	local nMissionDataType = tChineseValentinesOperation_Data["Stc"][nStcIndex]["DataType"]
	Task_StcReset(nMissionEventType,nMissionDataType)
	local nMissionComplete = tChineseValentinesOperation_Data["Stc"][nStcIndex]["Complete"]
	-- 今日已完成
	if Task_ChkStcValue(nMissionEventType,nMissionDataType,">=",nMissionComplete) then
		return
	end
	-- 未接任务
	if Task_ChkStcValue(nMissionEventType,nMissionDataType,"<=",0) then
		return
	end
	
	-- CP阵营需要判断队伍
	local nItemNum = tChineseValentinesOperation_Data["PropsNum"]
	local nSecs = tChineseValentinesOperation_Data["MissionTime"]
	local nCPAcceptWithItem = tChineseValentinesOperation_Data["Stc"][nStcIndex]["CPAccept"]
	local nValue = Get_UserStatisticValue(nMissionEventType,nMissionDataType)
	local nUserId = Get_UserId()
	if nSelfCamp == tChineseValentinesOperation_Data["Stc"]["Camp"]["Couple"] then
		-- CP任务组队完成
		if Task_ChkStcValue(nMissionEventType,nMissionDataType,"~=",nCPAcceptWithItem) then
			-- 队伍不是2人
			if not ChineseValentinesOperation_ChkTeamMembers() then
				User_TalkChannel2005(tChineseValentinesOperation_Text["Msg"]["CPNotHere"])
				return
			-- 不是CP
			else
				local nTeamId = Get_UserTeamId(nUserId)
				tChineseValentinesOperation_TeammatesUserId[nTeamId] = {}
				User_TeamExeFuncByTeamer(3,string.format("ChineseValentinesOperation_TeammatesUserId</N>%d",nTeamId),nUserId)
				if not ChineseValentinesOperation_ChkCP(nTeamId,nUserId) then
					User_TalkChannel2005(tChineseValentinesOperation_Text["Msg"]["CPNotHere"])
					return
				end
			end
		-- CP任务使用信物单人完成
		else
			nItemNum = nCPAcceptWithItem
			nSecs = nSecs * nCPAcceptWithItem
		end
	end
	
	-- 判断物品 火炬任务 灌溉任务 需要道具
	local nItemId = tChineseValentinesOperation_Data["Itemtype"][nSelfCamp][nStcIndex]
	if nItemId ~= 0 then
		local sItemName = Get_ItemtypeName(nItemId)
		local sNoItem = string.format(tChineseValentinesOperation_Text["Msg"]["NoItem"],sItemName)
		if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
			User_TalkChannel2005(sNoItem)
			return
		end
	end
	
	-- 判断背包
	local nSpace = RewardTemplate_GetRewardSpace(tChineseValentinesOperation_MissionReward[nSelfCamp][nStcIndex][nValue])
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(tChineseValentinesOperation_Text["Msg"]["NoSpace"])
		return
	end
	
	-- 读条
	local sContent = tChineseValentinesOperation_Text["Msg"]["Ing"][nSelfCamp][nStcIndex]
	local nActionId = tChineseValentinesOperation_Data["ActionId"][nSelfCamp][nStcIndex]
	local sFunc = string.format("ChineseValentinesOperation_Completed</N>%d",nNpcId)
	User_SetExplore(nSecs,sContent,nActionId,sFunc)
end

-- 爱情信使
function ChineseValentinesOperation_LetterMonster(nNpcId)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		return
	end
	
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
		return
	end
	
	-- 判断阵营 无阵营或敌对阵营
	local nUserCamp = ChineseValentinesOperation_UserCamp()
	local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][nNpcId]
	if nUserCamp ~= nSelfCamp then
		return
	end
	
	-- 判断任务
	local nStcIndex = tChineseValentinesOperation_Data["StcIndex"][nNpcId]
	local nMissionEventType = tChineseValentinesOperation_Data["Stc"][nStcIndex]["EventType"]
	local nMissionDataType = tChineseValentinesOperation_Data["Stc"][nStcIndex]["DataType"]
	Task_StcReset(nMissionEventType,nMissionDataType)
	local nMissionComplete = tChineseValentinesOperation_Data["Stc"][nStcIndex]["Complete"]
	-- 今日已完成
	if Task_ChkStcValue(nMissionEventType,nMissionDataType,">=",nMissionComplete) then
		return
	end
	-- 未接任务
	if Task_ChkStcValue(nMissionEventType,nMissionDataType,"<=",0) then
		return
	end
	
	-- 判断背包
	local nValue = Get_UserStatisticValue(nMissionEventType,nMissionDataType)
	local nSpace = RewardTemplate_GetRewardSpace(tChineseValentinesOperation_MissionReward[nSelfCamp][nStcIndex][nValue])
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(tChineseValentinesOperation_Text["Msg"]["NoSpace"])
		return
	end
	
	-- 判断杀怪
	-- stc(173,56) 记录玩家每日打爱情信使的数量
	local nEventType = tChineseValentinesOperation_Data["Stc"]["Letter"]["EventType"]
	local nDataType = tChineseValentinesOperation_Data["Stc"]["Letter"]["DataType"]
	Task_StcReset(nEventType,nDataType)
	Task_AddStatistic(nEventType,nDataType,1,1)
	Task_SetStcTimestamp(nEventType,nDataType,0)
	local nComplete = tChineseValentinesOperation_Data["Stc"]["Letter"]["Complete"]
	local nUserId = Get_UserId()
	if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
		ChineseValentinesOperation_Completed(nNpcId,nUserId)
		return
	end
end

function ChineseValentinesOperation_Completed(nNpcId,nUserId)
	local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][nNpcId]
	local nStcIndex = tChineseValentinesOperation_Data["StcIndex"][nNpcId]
	local nMissionEventType = tChineseValentinesOperation_Data["Stc"][nStcIndex]["EventType"]
	local nMissionDataType = tChineseValentinesOperation_Data["Stc"][nStcIndex]["DataType"]
	Task_StcReset(nMissionEventType,nMissionDataType,nUserId)
	local nValue = Get_UserStatisticValue(nMissionEventType,nMissionDataType,nUserId)
	
	RewardTemplate_UseItemAndMsg(tChineseValentinesOperation_MissionReward[nSelfCamp][nStcIndex][nValue],nUserId)
	
	-- 任务掩码
	local nMissionComplete = tChineseValentinesOperation_Data["Stc"][nStcIndex]["Complete"]
	Task_SetStatistic(nMissionEventType,nMissionDataType,nMissionComplete,1,nUserId)
	
	-- stc(172,14) 记录玩家总魅力值
	local nCharmingEventType = tChineseValentinesOperation_Data["Stc"]["Charming"]["EventType"]
	local nCharmingDataType = tChineseValentinesOperation_Data["Stc"]["Charming"]["DataType"]
	local nValue1 = tChineseValentinesOperation_Data["Gain"][1]
	Task_AddStatistic(nCharmingEventType,nCharmingDataType,nValue1,1,nUserId)
	
	-- 增减阵营活力值
	-- 增加
	local nGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Energy"]
	local nPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Energy"][nSelfCamp]
	local nValue2 = tChineseValentinesOperation_Data["Gain"][2] + Get_SysDynaGlobalData(nGlobalId,nPos)
	Sys_SetSynaGlobalData(nGlobalId,nPos,nValue2)
	-- 减少
	local nOpposedCamp =  tChineseValentinesOperation_Data["NPCOpposedCamp"][nNpcId]
	local nOpposedPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Energy"][nOpposedCamp]
	local nMinusPos = tChineseValentinesOperation_Data["GlobalIdPos"]["MinusEnergy"][nSelfCamp]
	local nTotalData = Get_SysDynaGlobalData(nGlobalId,nOpposedPos)
	local nMinusData = Get_SysDynaGlobalData(nGlobalId,nMinusPos)
	local nValue3 = tChineseValentinesOperation_Data["Gain"][3]
	if nTotalData == 0 then
		nValue3 = 0
	elseif nTotalData < nValue3 then
		nValue3 = nTotalData
	end
	Sys_SetSynaGlobalData(nGlobalId,nMinusPos,nMinusData+nValue3)
	Sys_SetSynaGlobalData(nGlobalId,nOpposedPos,nTotalData-nValue3)
	ChineseValentinesOperation_EnergyChange(nSelfCamp)
	
	local sMsg = string.format(tChineseValentinesOperation_Text["Msg"]["MissionReward"],nValue1,tChineseValentinesOperation_Data["Gain"][2],nValue3)
	local sFunc = string.format("ChineseValentinesOperation_BackToNpc</N>%d</N>%d",nSelfCamp,nUserId)
	User_TalkChannel2005(sMsg,nUserId)
	Sys_MsgBox(tChineseValentinesOperation_Text["Msg"]["Completed"],sFunc,"NULL",nUserId)
end

-- 爱情秘境 传送回任务npc处
function ChineseValentinesOperation_BackToNpc(nSelfCamp,nNowUserId)
	-- 判断地图
	local nUserId = Get_UserId() or nNowUserId
	local nNewMapId = tChineseValentinesOperation_Data["Location"]["Back"]["NewMapId"]
	if Get_UserMapId(nUserId) ~= nNewMapId then
		return
	end
	
	local nBoundX = tChineseValentinesOperation_Data["Location"][nSelfCamp]["PosX"]
	local nBoundY = tChineseValentinesOperation_Data["Location"][nSelfCamp]["PosY"]
	User_UserRandBoundTrans(nNewMapId,nBoundX,nBoundY,5,5,1,nUserId)
end

-- 采摘任务
function ChineseValentinesOperation_Pick(nNpcId)
	-- 判断时间
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		return
	end
	
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
		return
	end
	
	-- 判断阵营 无阵营或敌对阵营
	local nUserCamp = ChineseValentinesOperation_UserCamp()
	local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][nNpcId]
	if nUserCamp ~= nSelfCamp then
		return
	end
	
	-- 判断任务
	local nStcIndex = tChineseValentinesOperation_Data["StcIndex"][nNpcId]
	local nMissionEventType = tChineseValentinesOperation_Data["Stc"][nStcIndex]["EventType"]
	local nMissionDataType = tChineseValentinesOperation_Data["Stc"][nStcIndex]["DataType"]
	Task_StcReset(nMissionEventType,nMissionDataType)
	local nMissionComplete = tChineseValentinesOperation_Data["Stc"][nStcIndex]["Complete"]
	-- 今日已完成
	if Task_ChkStcValue(nMissionEventType,nMissionDataType,">=",nMissionComplete) then
		return
	end
	-- 未接任务
	if Task_ChkStcValue(nMissionEventType,nMissionDataType,"<=",0) then
		return
	end
	
	-- 判断队伍
	local nValue = Get_UserStatisticValue(nMissionEventType,nMissionDataType)
	local nItemNum = tChineseValentinesOperation_Data["FruitsNum"]
	local nCPAcceptWithItem = tChineseValentinesOperation_Data["Stc"][nStcIndex]["CPAccept"]
	local nUserId = Get_UserId()
	-- CP任务组队完成
	if nValue ~= tChineseValentinesOperation_Data["Stc"][nStcIndex]["CPAccept"] then
		-- 队伍不是2人
		if not ChineseValentinesOperation_ChkTeamMembers() then
			User_TalkChannel2005(tChineseValentinesOperation_Text["Msg"]["CPNotHere"])
			return
		-- 不是CP
		else
			local nTeamId = Get_UserTeamId(nUserId)
			tChineseValentinesOperation_TeammatesUserId[nTeamId] = {}
			User_TeamExeFuncByTeamer(3,string.format("ChineseValentinesOperation_TeammatesUserId</N>%d",nTeamId),nUserId)
			if not ChineseValentinesOperation_ChkCP(nTeamId,nUserId) then
				User_TalkChannel2005(tChineseValentinesOperation_Text["Msg"]["CPNotHere"])
				return
			end
		end
	-- CP任务使用信物单人完成
	else
		nItemNum = nItemNum * nCPAcceptWithItem
	end
	
	-- 判断物品
	local nItemId = tChineseValentinesOperation_Data["Itemtype"][nSelfCamp][nStcIndex]
	if Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		User_TalkChannel2005(tChineseValentinesOperation_Text["Msg"]["HaveFruit"])
		return
	end
	
	-- 判断背包
	local nSpace = RewardTemplate_GetRewardSpace(tChineseValentinesOperation_MissionReward[nItemId])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tChineseValentinesOperation_Text["Msg"]["NoSpace"])
		return
	end
	
	-----------------------------------------
	
	local nSecs = tChineseValentinesOperation_Data["MissionTime"]
	local sContent = tChineseValentinesOperation_Text["Msg"]["Ing"][nSelfCamp][nStcIndex]
	local nActionId = tChineseValentinesOperation_Data["ActionId"][nSelfCamp][nStcIndex]
	local sFunc = string.format("ChineseValentinesOperation_PickFruit</N>%d",nItemId,nUserId)
	User_SetExplore(nSecs,sContent,nActionId,sFunc,"NULL",nUserId)
end

function ChineseValentinesOperation_PickFruit(nItemId,nUserId)
	RewardTemplate_UseItemAndMsg(tChineseValentinesOperation_MissionReward[nItemId],nUserId)
end

-- 21392 秘境传送使 回双龙城
function ChineseValentinesOperation_Back()
	-- 判断地图
	local nUserId = Get_UserId()
	local nNewMapId = tChineseValentinesOperation_Data["Location"]["Back"]["NewMapId"]
	if Get_UserMapId(nUserId) ~= nNewMapId then
		return
	end
	
	-- 传送
	local nMapId = tChineseValentinesOperation_Data["Location"]["Back"]["MapId"]
	local nBoundX = tChineseValentinesOperation_Data["Location"]["Back"]["PosX"]
	local nBoundY = tChineseValentinesOperation_Data["Location"]["Back"]["PosY"]
	local sLog = string.format(tChineseValentinesOperation_Data["Log"]["InTheMap"],nMapId)
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,5,5,1)
	Sys_SaveActionFestivalLog(sLog)
end

-- 进入Party前判断
function ChineseValentinesOperation_Before(nHost)
	local nNpcId =  Get_NpcId()
	local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][nNpcId]
	
	-- 基本前置判断（Party）
	if not ChineseValentinesOperation_BasicJudgeInPartyMap(nNpcId) then
		return
	end
	
	-- stc(173,52) 记录玩家参加Party的编号（时间戳）
	local nGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Party"]
	local nPartyEventType = tChineseValentinesOperation_Data["Stc"]["PartyNum"]["EventType"]
	local nPartyDataType = tChineseValentinesOperation_Data["Stc"]["PartyNum"]["DataType"]
	local nPartyComplete = tChineseValentinesOperation_Data["Stc"]["PartyNum"]["Complete"]
	if Task_StcInterval(nPartyEventType,nPartyDataType,30,1) then
		Task_SetStatistic(nPartyEventType,nPartyDataType,0,1)
		Task_SetStcTimestamp(nPartyEventType,nPartyDataType,0)
	end
	-- 官方
	if nHost == nPartyComplete then
		-- 非官方Party时间
		if not Sys_ChkDayTime(tActivityTime["ChineseValentinesOperation"]["Official"]) then
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		end
		-- 首次进入选择身份
		if Task_ChkStcValue(nPartyEventType,nPartyDataType,"~=",nPartyComplete) then
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return
		end
	-- 私人
	else
		local nPartyPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Party"][nSelfCamp]
		local nPartyNum = Get_SysDynaGlobalData(nGlobalId,nPartyPos)
		-- 非私人Party时间
		if Sys_ChkDayTime(tActivityTime["ChineseValentinesOperation"]["Official"]) then
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		end
		-- 输入密码
		ChineseValentinesOperation_PartyKey()
		return
	end
	
	--------------------------------------
	
	-- 非首次进入本场官方Party则直接传送
	local nMapId = tChineseValentinesOperation_Data["Party"][nSelfCamp]["MapId"]
	local nBoundX = tChineseValentinesOperation_Data["Party"][nSelfCamp]["PosX"]
	local nBoundY = tChineseValentinesOperation_Data["Party"][nSelfCamp]["PosY"]
	local sLog = string.format(tChineseValentinesOperation_Data["Log"]["InTheMap"],nMapId)
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,5,5,1)
	Sys_SaveActionFestivalLog(sLog)
end

function ChineseValentinesOperation_OfficialTime()
	local nNpcId = Get_NpcId()
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end

-- 贵宾
function ChineseValentinesOperation_VIP(nHost)
	local nNpcId =  Get_NpcId()
	local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][nNpcId]
	
	-- 基本前置判断（Party）
	if not ChineseValentinesOperation_BasicJudgeInPartyMap(nNpcId) then
		return
	end
	
	local nGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Party"]
	local nPartyPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Party"][nSelfCamp]
	-- 官方
	if nHost == 1 then
		if not Sys_ChkDayTime(tActivityTime["ChineseValentinesOperation"]["Official"]) then
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		end
	end
	-- 私人
	if nHost == 2 then
		if Sys_ChkDayTime(tActivityTime["ChineseValentinesOperation"]["Official"]) then
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		end
		-- 是否私人Party中
		if Get_SysDynaGlobalData(nGlobalId,nPartyPos) <= 1 then
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		end
		-- stc(173,30) 记录玩家每日参加私人Party的次数
		local nPartyTimesEventType = tChineseValentinesOperation_Data["Stc"]["PartyTimes"]["EventType"]
		local nPartyTimesDataTye = tChineseValentinesOperation_Data["Stc"]["PartyTimes"]["DataType"]
		local nPartyTimesComplete = tChineseValentinesOperation_Data["Stc"]["PartyTimes"]["Complete"]
		Task_StcReset(nPartyTimesEventType,nPartyTimesDataTye)
		if Task_ChkStcValue(nPartyTimesEventType,nPartyTimesDataTye,">=",nPartyTimesComplete) then
			Sys_MsgBox(tChineseValentinesOperation_Text["Msg"]["Parties"])
			return
		end
	end
	
	-- 判断天石
	-- local nFee = tChineseValentinesOperation_Data["VIPFee"]
	-- if Get_UserEMoney() < nFee then
		-- Sys_MsgBox(tChineseValentinesOperation_Text[nNpcId]["EmoneyNotEnough"])
		-- return
	-- end
	
	local sText = tChineseValentinesOperation_Data["Host"][nHost]
	LinkNpcGossipFunc_New(nNpcId,sText)
end

-- 成为贵宾/观众进入Party
function ChineseValentinesOperation_InPartyMap(nHost,nVisit)
	local nNpcId =  Get_NpcId()
	local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][nNpcId]
	
	-- 基本前置判断（Party）
	if not ChineseValentinesOperation_BasicJudgeInPartyMap(nNpcId) then
		return
	end
	
	local nGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Party"]
	local nPartyPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Party"][nSelfCamp]
	-- 官方
	if nHost == 1 then
		if not Sys_ChkDayTime(tActivityTime["ChineseValentinesOperation"]["Official"]) then
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		end
	end
	-- 私人
	-- stc(173,30) 记录玩家每日参加私人Party的次数
	local nPartyTimesEventType = tChineseValentinesOperation_Data["Stc"]["PartyTimes"]["EventType"]
	local nPartyTimesDataTye = tChineseValentinesOperation_Data["Stc"]["PartyTimes"]["DataType"]
	local nPartyTimesComplete = tChineseValentinesOperation_Data["Stc"]["PartyTimes"]["Complete"]
	Task_StcReset(nPartyTimesEventType,nPartyTimesDataTye)
	if nHost == 2 then
		if Sys_ChkDayTime(tActivityTime["ChineseValentinesOperation"]["Official"]) then
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		end
		-- 是否私人Party中
		if Get_SysDynaGlobalData(nGlobalId,nPartyPos) <= 1 then
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		end
		if Task_ChkStcValue(nPartyTimesEventType,nPartyTimesDataTye,">=",nPartyTimesComplete) then
			Sys_MsgBox(tChineseValentinesOperation_Text["Msg"]["Parties"])
			return
		end
	end
	
	-- 贵宾
	local nFee = tChineseValentinesOperation_Data["VIPFee"]
	if nVisit == 1 then
		-- 判断天石
		if Get_UserEMoney() < nFee then
			Sys_MsgBox(tChineseValentinesOperation_Text[nNpcId]["EmoneyNotEnough"])
			return
		end
		
		-- 背包空间
		local nSpace = RewardTemplate_GetRewardSpace(tChineseValentinesOperation_MissionReward["BeVIP"])
		if not User_CheckLeftSpace(nSpace) then
			Sys_MsgBox(tChineseValentinesOperation_Text["Msg"]["NoSpace"])
			return
		end
	end
	
	--------------------------------------扣天石 给奖 打掩码 传送 出提示 打log
	-- 贵宾
	if nVisit == 1 then
		-- 扣天石
		if not User_AddEMoney(-nFee) then
			return
		end
		local sEmoneyLog1 = string.format(tChineseValentinesOperation_Data["Emoneylog"]["VIP"],nFee,nFee)
		Sys_SaveEmoneyBuy(sEmoneyLog1)
		
		-- 打掩码
		-- stc(173,28) 记录玩家是否为贵宾
		local nVIPEventType = tChineseValentinesOperation_Data["Stc"]["VIP"]["EventType"]
		local nVIPDataType = tChineseValentinesOperation_Data["Stc"]["VIP"]["DataType"]
		local nVIPComplete = tChineseValentinesOperation_Data["Stc"]["VIP"]["Complete"]
		-- 是否超过30分钟
		if Task_StcInterval(nVIPEventType,nVIPDataType,30,1) then
			Task_SetStatistic(nVIPEventType,nVIPDataType,0,1)
			Task_SetStcTimestamp(nVIPEventType,nVIPDataType,0)
		end
		Task_SetStatistic(nVIPEventType,nVIPDataType,nVIPComplete,1)
		Task_SetStcTimestamp(nVIPEventType,nVIPDataType,0)
		-- stc(173,53) 记录玩家每场宴会打开贵宾宝箱次数
		local nTimesEventType = tChineseValentinesOperation_Data["Stc"]["Chest"]["EventType"]
		local nTimesDataType = tChineseValentinesOperation_Data["Stc"]["Chest"]["DataType"]
		local nTimesComplete = tChineseValentinesOperation_Data["Stc"]["Chest"]["Complete"]
		-- 是否超过30分钟
		if Task_StcInterval(nTimesEventType,nTimesDataType,30,1) then
			Task_SetStatistic(nTimesEventType,nTimesDataType,0,1)
			Task_SetStcTimestamp(nTimesEventType,nTimesDataType,0)
		end
		Task_SetStatistic(nTimesEventType,nTimesDataType,0,1)
		Task_SetStcTimestamp(nTimesEventType,nTimesDataType,0)
		-- 给奖
		RewardTemplate_UseItemAndMsg(tChineseValentinesOperation_MissionReward["BeVIP"])
	end
	
	-- stc(173,52) 记录玩家参加Party的编号（时间戳）
	local nPartyEventType = tChineseValentinesOperation_Data["Stc"]["PartyNum"]["EventType"]
	local nPartyDataType = tChineseValentinesOperation_Data["Stc"]["PartyNum"]["DataType"]
	local nPartyComplete = tChineseValentinesOperation_Data["Stc"]["PartyNum"]["Complete"]
	if Task_StcInterval(nPartyEventType,nPartyDataType,30,1) then
		Task_SetStatistic(nPartyEventType,nPartyDataType,0,1)
		Task_SetStcTimestamp(nPartyEventType,nPartyDataType,0)
	end
	if nHost == 1 then
		Task_SetStatistic(nPartyEventType,nPartyDataType,nPartyComplete,1)
		Task_SetStcTimestamp(nPartyEventType,nPartyDataType,0)
	else
		-- 记录私人Party编号（时间戳） 记录每日参加私人Party次数
		local nPartyNum = Get_SysDynaGlobalData(nGlobalId,nPartyPos)
		Task_SetStatistic(nPartyEventType,nPartyDataType,nPartyNum,1)
		Task_SetStcTimestamp(nPartyEventType,nPartyDataType,0)
		Task_AddStatistic(nPartyTimesEventType,nPartyTimesDataTye,1,1)
		Task_SetStcTimestamp(nPartyTimesEventType,nPartyTimesDataTye,0)
	end
	
	-- 气氛
	local nAirPoint = tChineseValentinesOperation_Data["AirPoint"][nVisit]
	local nAirGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Air"]
	local nAirPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Air"][nSelfCamp]
	local nTotalAir = nAirPoint + Get_SysDynaGlobalData(nAirGlobalId,nAirPos)
	Sys_SetSynaGlobalData(nAirGlobalId,nAirPos,nTotalAir)
	
	-- 传送
	local nMapId = tChineseValentinesOperation_Data["Party"][nSelfCamp]["MapId"]
	local nBoundX = tChineseValentinesOperation_Data["Party"][nSelfCamp]["PosX"]
	local nBoundY = tChineseValentinesOperation_Data["Party"][nSelfCamp]["PosY"]
	local sLog = string.format(tChineseValentinesOperation_Data["Log"]["InTheMap"],nMapId)
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,5,5,1)
	Sys_SaveActionFestivalLog(sLog)
	
	-- 提示
	if nVisit == 1 then
		User_TalkChannel2005(tChineseValentinesOperation_Text[nNpcId]["VIP"])
	else
		User_TalkChannel2005(tChineseValentinesOperation_Text[nNpcId]["Normal"])
	end
end

-- 密钥
function ChineseValentinesOperation_PartyKey()
	local nNpcId = Get_NpcId()
	local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][nNpcId]
	
	-- 基本前置判断（Party）
	if not ChineseValentinesOperation_BasicJudgeInPartyMap(nNpcId) then
		return
	end
	
	-- 官方Party时间
	if Sys_ChkDayTime(tActivityTime["ChineseValentinesOperation"]["Official"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	-- 是否私人Party中
	local nGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Party"]
	local nPartyPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Party"][nSelfCamp]
	if Get_SysDynaGlobalData(nGlobalId,nPartyPos) <= 1 then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	-- stc(173,30) 记录玩家每日参加私人Party的次数
	local nPartyTimesEventType = tChineseValentinesOperation_Data["Stc"]["PartyTimes"]["EventType"]
	local nPartyTimesDataTye = tChineseValentinesOperation_Data["Stc"]["PartyTimes"]["DataType"]
	local nPartyTimesComplete = tChineseValentinesOperation_Data["Stc"]["PartyTimes"]["Complete"]
	Task_StcReset(nPartyTimesEventType,nPartyTimesDataTye)
	if Task_ChkStcValue(nPartyTimesEventType,nPartyTimesDataTye,">=",nPartyTimesComplete) then
		Sys_MsgBox(tChineseValentinesOperation_Text["Msg"]["Parties"])
		return
	end
	
	Sys_DialogText(tChineseValentinesOperation_Text[nNpcId]["Text221"])
	Sys_DialogOptEdit(tChineseValentinesOperation_Text[nNpcId]["Option221"],tChineseValentinesOperation_Data["Length"],"ChineseValentinesOperation_ConfirmPartyKey")
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

-- 确认密钥
function ChineseValentinesOperation_ConfirmPartyKey()
	local nNpcId = Get_NpcId()
	local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][nNpcId]
	
	-- 基本前置判断（Party）
	if not ChineseValentinesOperation_BasicJudgeInPartyMap(nNpcId) then
		return
	end
	
	-- 私人
	if Sys_ChkDayTime(tActivityTime["ChineseValentinesOperation"]["Official"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	-- 是否私人Party中
	local nGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Party"]
	local nPartyPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Party"][nSelfCamp]
	local nPartyNum = Get_SysDynaGlobalData(nGlobalId,nPartyPos)
	if nPartyNum <= 1 then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	-- stc(173,30) 记录玩家每日参加私人Party的次数
	local nPartyTimesEventType = tChineseValentinesOperation_Data["Stc"]["PartyTimes"]["EventType"]
	local nPartyTimesDataTye = tChineseValentinesOperation_Data["Stc"]["PartyTimes"]["DataType"]
	local nPartyTimesComplete = tChineseValentinesOperation_Data["Stc"]["PartyTimes"]["Complete"]
	Task_StcReset(nPartyTimesEventType,nPartyTimesDataTye)
	if Task_ChkStcValue(nPartyTimesEventType,nPartyTimesDataTye,">=",nPartyTimesComplete) then
		Sys_MsgBox(tChineseValentinesOperation_Text["Msg"]["Parties"])
		return
	end
	
	-- 判断密钥
	local nNum = tonumber(Get_SysAcceptStr())
	if nNum == nil or type(nNum) ~= "number" or nNum%1 ~= 0 or nNum <=0 then
		tNpcGossip[nNpcId]["OptionFunc321"] = "ChineseValentinesOperation_PartyKey"
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	local nKeyPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Key"][nSelfCamp]
	if nNum ~= Get_SysDynaGlobalData(nGlobalId,nKeyPos) then
		tNpcGossip[nNpcId]["OptionFunc321"] = "ChineseValentinesOperation_PartyKey"
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	-- 判断是否是首次进入本场Party
	-- stc(173,52) 记录玩家参加Party的编号（时间戳）
	local nPartyEventType = tChineseValentinesOperation_Data["Stc"]["PartyNum"]["EventType"]
	local nPartyDataType = tChineseValentinesOperation_Data["Stc"]["PartyNum"]["DataType"]
	if Task_StcInterval(nPartyEventType,nPartyDataType,30,1) then
		Task_SetStatistic(nPartyEventType,nPartyDataType,0,1)
		Task_SetStcTimestamp(nPartyEventType,nPartyDataType,0)
	end
	if Task_ChkStcValue(nPartyEventType,nPartyDataType,"==",nPartyNum) then
		local nMapId = tChineseValentinesOperation_Data["Party"][nSelfCamp]["MapId"]
		local nBoundX = tChineseValentinesOperation_Data["Party"][nSelfCamp]["PosX"]
		local nBoundY = tChineseValentinesOperation_Data["Party"][nSelfCamp]["PosY"]
		local sLog = string.format(tChineseValentinesOperation_Data["Log"]["InTheMap"],nMapId)
		User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,5,5,1)
		Sys_SaveActionFestivalLog(sLog)
		return
	else
		Task_SetStatistic(nPartyEventType,nPartyDataType,0,1)
		Task_SetStcTimestamp(nPartyEventType,nPartyDataType,0)
	end
	
	LinkNpcGossipFunc_New(nNpcId,"2-9")
end

-- 主办私人Party
function ChineseValentinesOperation_Host()
	local nNpcId = Get_NpcId()
	local nUserId = Get_UserId()
	local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][nNpcId]
	
	-- 基本前置判断（Party）
	if not ChineseValentinesOperation_BasicJudgeInPartyMap(nNpcId) then
		return
	end
	
	-- 官方Party时间
	if Sys_ChkDayTime(tActivityTime["ChineseValentinesOperation"]["Personal"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	-- 判断是否Party中
	local nGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Party"]
	local nPartyPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Party"][nSelfCamp]
	if Get_SysDynaGlobalData(nGlobalId,nPartyPos) >= 1 then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	-- stc(173,30) 记录玩家每日参加私人Party的次数
	local nPartyTimesEventType = tChineseValentinesOperation_Data["Stc"]["PartyTimes"]["EventType"]
	local nPartyTimesDataTye = tChineseValentinesOperation_Data["Stc"]["PartyTimes"]["DataType"]
	local nPartyTimesComplete = tChineseValentinesOperation_Data["Stc"]["PartyTimes"]["Complete"]
	Task_StcReset(nPartyTimesEventType,nPartyTimesDataTye)
	if Task_ChkStcValue(nPartyTimesEventType,nPartyTimesDataTye,">=",nPartyTimesComplete) then
		Sys_MsgBox(tChineseValentinesOperation_Text["Msg"]["Parties"])
		return
	end
	
	-- 判断物品
	local nItemId = tChineseValentinesOperation_Data["Itemtype"]["HostCard"][nSelfCamp]
	if not Item_ChkItem(nItemId) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-------------------------------------- 删除物品 打log 打掩码 出提示 倒计时
	
	-- 删除物品
	if not Item_DelItem(nItemId) then
		return
	end
	local sLog = string.format(tChineseValentinesOperation_Data["Log"]["HostParty"],nItemId)
	Sys_SaveActionRewardLog(sLog)
	
	-- 打掩码
	-- stc(173,29) 记录玩家是否是私人Party举办人
	local nHostEventType = tChineseValentinesOperation_Data["Stc"]["HostParty"]["EventType"]
	local nHostDataType = tChineseValentinesOperation_Data["Stc"]["HostParty"]["DataType"]
	local nHostComplete = tChineseValentinesOperation_Data["Stc"]["HostParty"]["Complete"]
	-- 是否超过30分钟
	if Task_StcInterval(nHostEventType,nHostDataType,30,1) then
		Task_SetStatistic(nHostEventType,nHostDataType,0,1)
		Task_SetStcTimestamp(nHostEventType,nHostDataType,0)
	end
	Task_SetStatistic(nHostEventType,nHostDataType,nHostComplete,1)
	Task_SetStcTimestamp(nHostEventType,nHostDataType,0)
	
	-- stc(172,14) 记录玩家总魅力值
	local nCharmingEventType = tChineseValentinesOperation_Data["Stc"]["Charming"]["EventType"]
	local nCharmingDataType = tChineseValentinesOperation_Data["Stc"]["Charming"]["DataType"]
	local nHostPoint = tChineseValentinesOperation_Data["HostPoint"]
	Task_AddStatistic(nCharmingEventType,nCharmingDataType,nHostPoint,1)
	
	-- 出提示
	local nKey = math.random(tChineseValentinesOperation_Data["RandomKey"]["Start"],tChineseValentinesOperation_Data["RandomKey"]["End"])
	local nKeyPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Key"][nSelfCamp]
	Sys_SetSynaGlobalData(nGlobalId,nKeyPos,nKey)
	tNpcGossip[nNpcId]["Text251"] = string.format(tChineseValentinesOperation_Text[nNpcId]["Text251"],nKey)
	LinkNpcGossipFunc_New(nNpcId,"2-5")
	
	-- Party开启 首场天石雨开启
	if nSelfCamp == 1 then
		ChineseValentinesOperation_SinglePartyStart()
	else
		ChineseValentinesOperation_CPPartyStart()
	end
end

-- 贵宾宝箱
function ChineseValentinesOperation_SeniorGuestChest(nNpcId)
	-- 判断时间
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["NewPartyEndTime"]) then
		return false
	end
	
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
		return false
	end
	
	LinkNpcGossipFunc_New(nNpcId,"1-3")
end

-- 打开贵宾宝箱
function ChineseValentinesOperation_OpenSeniorGuestChest(nNpcId)
	
	-- 判断时间
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["NewPartyEndTime"]) then
		return false
	end
	
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
		return false
	end
	
	-- 判断阵营 无阵营或敌对阵营
	local nUserCamp = ChineseValentinesOperation_UserCamp()
	local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][nNpcId]
	if nUserCamp ~= nSelfCamp then
		return
	end
	-- stc(172,07) 记录玩家阵营
	local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][nNpcId]
	local nOpposedCamp = tChineseValentinesOperation_Data["NPCOpposedCamp"][nNpcId]
	local nCampEventType = tChineseValentinesOperation_Data["Stc"]["Camp"]["EventType"]
	local nCampDataType = tChineseValentinesOperation_Data["Stc"]["Camp"]["DataType"]
	if Task_ChkStcValue(nCampEventType,nCampDataType,"~=",nSelfCamp) then
		return
	end
	
	-- stc(173,28) 记录玩家是否为贵宾
	local nEventType = tChineseValentinesOperation_Data["Stc"]["VIP"]["EventType"]
	local nDataType = tChineseValentinesOperation_Data["Stc"]["VIP"]["DataType"]
	local nComplete = tChineseValentinesOperation_Data["Stc"]["VIP"]["Complete"]
	-- 是否超过30分钟
	if Task_StcInterval(nEventType,nDataType,30,1) then
		Task_SetStatistic(nEventType,nDataType,0,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end
	-- 不是贵宾
	if Task_ChkStcValue(nEventType,nDataType,"<=",0) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
		-- 私人Party 编号（时间戳）不对
		if not Sys_ChkDayTime(tActivityTime["ChineseValentinesOperation"]["Official"]) then
			local nGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Party"]
			local nPartyPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Party"][nSelfCamp]
			local nPartyNum = Get_SysDynaGlobalData(nGlobalId,nPartyPos)
			-- stc(173,52) 记录玩家参加Party的编号（时间戳）
			local nPartyEventType = tChineseValentinesOperation_Data["Stc"]["PartyNum"]["EventType"]
			local nPartyDataType = tChineseValentinesOperation_Data["Stc"]["PartyNum"]["DataType"]
			if Task_StcInterval(nPartyEventType,nPartyDataType,30,1) then
				Task_SetStatistic(nPartyEventType,nPartyDataType,0,1)
				Task_SetStcTimestamp(nPartyEventType,nPartyDataType,0)
			end
			if Task_ChkStcValue(nPartyEventType,nPartyDataType,"~=",nPartyNum) then
				LinkNpcGossipFunc_New(nNpcId,"2-1")
				return
			end
		end
	end
	
	-- 超过10次
	-- stc(173,53) 记录玩家每场宴会打开贵宾宝箱次数
	local nTimesEventType = tChineseValentinesOperation_Data["Stc"]["Chest"]["EventType"]
	local nTimesDataType = tChineseValentinesOperation_Data["Stc"]["Chest"]["DataType"]
	local nTimesComplete = tChineseValentinesOperation_Data["Stc"]["Chest"]["Complete"]
	-- 是否超过30分钟
	if Task_StcInterval(nTimesEventType,nTimesDataType,30,1) then
		Task_SetStatistic(nTimesEventType,nTimesDataType,0,1)
		Task_SetStcTimestamp(nTimesEventType,nTimesDataType,0)
	end
	if Task_ChkStcValue(nTimesEventType,nTimesDataType,">=",nTimesComplete) then
		User_TalkChannel2005(tChineseValentinesOperation_Text["Msg"]["Chest"])
		return
	end
	
	-- 背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tChineseValentinesOperation_Reward["Chest"],1)
	local sMsg = string.format(tChineseValentinesOperation_Text["Msg"]["NoSpaceToOpen"],nSpace)
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(sMsg)
		return
	end
	
	--------------------------------------
	
	-- 掩码
	Task_AddStatistic(nTimesEventType,nTimesDataType,1,1)
	Task_SetStcTimestamp(nTimesEventType,nTimesDataType,0)
	
	-- 给奖
	RewardTemplate_NewRandom(tChineseValentinesOperation_Reward["Chest"],1)
	
	-- 移走
	local nMapId = tChineseValentinesOperation_Data["RainIOver"]["MapId"]
	local nPosX = tChineseValentinesOperation_Data["RainIOver"]["PosY"]
	local nPosY = tChineseValentinesOperation_Data["RainIOver"]["PosX"]
	Npc_MoveNpcPos(nNpcId,nMapId,nPosX,nPosY)
end
--------------------------------------物品逻辑-------------------------------------------
-- 3307151 我心永恒碎片
-- 翻倍
function ChineseValentinesOperation_Double(nItemId,nNum)
	-- 判断物品
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(tChineseValentinesOperation_Text[nItemId]["NotOne"])
		return
	end
	
	-- 判断背包
	local nSpace = RewardTemplate_GetRewardSpace(tChineseValentinesOperation_Reward[nItemId][nNum])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tChineseValentinesOperation_Text[nItemId]["NoSpace"])
		return
	end
	
	-- 翻倍
	local nStartNum = tChineseValentinesOperation_Data["RandomFragment"]["StartNum"]
	local nEndNum = tChineseValentinesOperation_Data["RandomFragment"]["EndNum"]
	if Item_DelItem(nItemId) then
		if Sys_Random(nStartNum,nEndNum) then
			RewardTemplate_UseItemAndMsg(tChineseValentinesOperation_Reward[nItemId][nNum])
			LinkItemGossipFunc_New(nItemId,"2-1")
		else
			LinkItemGossipFunc_New(nItemId,"2-2")
		end
	end
end
-- 合成
function ChineseValentinesOperation_Compose(nItemId,nNum)
	-- 判断物品
	if not Item_ChkMulItem(nItemId,nItemId,nNum) then
		Sys_MsgBox(tChineseValentinesOperation_Text[nItemId]["NotEnough"])
		return
	end
	
	-- 判断背包
	local nSpace = RewardTemplate_GetRewardSpace(tChineseValentinesOperation_Reward[nItemId][nNum])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tChineseValentinesOperation_Text[nItemId]["NoSpace"])
		return
	end
	
	-- 合成
	RewardTemplate_UseItemAndMsg(tChineseValentinesOperation_Reward[nItemId][nNum])
end
-- 兑换
function ChineseValentinesOperation_Exchange(nItemId)
	-- 判断物品
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(tChineseValentinesOperation_Text[nItemId]["NotOne"])
		return
	end
	
	-- 兑换
	RewardTemplate_UseItemAndMsg(tChineseValentinesOperation_Reward[nItemId]["Enchange"])
	if Item_ChkItem(nItemId) then
		LinkItemGossipFunc_New(nItemId,"1-1")
	end
end

-- 返回主对白
function ChineseValentinesOperation_ReturnFragment(nItemId)
	if Item_ChkItem(nItemId) then
		LinkItemGossipFunc_New(nItemId,"1-1")
	end
end

-- 3307164 情人节精装礼盒
-- 打开
function ChineseValentinesOperation_Open()
	local nItemId = Get_ItemType()
	
	-- 过期删除
	local nItemNum = Get_CountItemType(nItemId,0)
	local sLog = string.format(tChineseValentinesOperation_Data["Log"]["Timeout"],nItemId,nItemNum)
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		Item_DelAllItemByType(nItemId)
		User_TalkChannel2005(tChineseValentinesOperation_Text["Msg"]["TimeOut"])
		Sys_SaveActionRewardLog(sLog)
		return
	end
	
	-- 判断背包
	local nSpace = RewardTemplate_GetRandomSpace(tChineseValentinesOperation_Reward[nItemId],1)
	local sMsg = string.format(tChineseValentinesOperation_Text["Msg"]["NoSpaceToOpen"],nSpace)
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(sMsg)
		return
	end
	
	-- 打开
	if Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tChineseValentinesOperation_Reward[nItemId],1)
		User_EffectDel("self",tChineseValentinesOperation_Data["Effect"]["Normal"])
		User_EffectAdd("self",tChineseValentinesOperation_Data["Effect"]["Normal"])
	end
end
-- 升级
function ChineseValentinesOperation_Update(nItemId)
	
	-- 过期删除
	local nItemNum = Get_CountItemType(nItemId,0)
	local sLog = string.format(tChineseValentinesOperation_Data["Log"]["Timeout"],nItemId,nItemNum)
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		Item_DelAllItemByType(nItemId)
		User_TalkChannel2005(tChineseValentinesOperation_Text["Msg"]["TimeOut"])
		Sys_SaveActionRewardLog(sLog)
		return
	end
	
	-- 判断升级材料
	local nUpdateItemId = tChineseValentinesOperation_Data["Itemtype"]["Update"]
	local nUpdateItemNum = tChineseValentinesOperation_Data["Update"][nItemId]
	if not Item_ChkMulItem(nUpdateItemId,nUpdateItemId,nUpdateItemNum) then
		Sys_MsgBox(tChineseValentinesOperation_Text[nItemId]["NotEnough"])
		return
	end
	
	-- 判断背包
	local nSpace = RewardTemplate_GetRewardSpace(tChineseValentinesOperation_Reward[nItemId]["Update"])
	local sMsg = string.format(tChineseValentinesOperation_Text["Msg"]["NoSpaceToUpdate"],nSpace)
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(sMsg)
		return
	end
	
	-- 升级
	RewardTemplate_UseItemAndMsg(tChineseValentinesOperation_Reward[nItemId]["Update"])
end

-- 3307168 贵宾礼盒
function ChineseValentinesOperation_NewOpen()
	local nItemId = Get_ItemType()
	
	-- 过期删除
	local nItemNum = Get_CountItemType(nItemId,0)
	local sLog = string.format(tChineseValentinesOperation_Data["Log"]["Timeout"],nItemId,nItemNum)
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["NewActivityTime"]) then
		Item_DelAllItemByType(nItemId)
		User_TalkChannel2005(tChineseValentinesOperation_Text["Msg"]["TimeOut"])
		Sys_SaveActionRewardLog(sLog)
		return
	end
	
	-- 判断背包
	local nSpace = RewardTemplate_GetRandomSpace(tChineseValentinesOperation_Reward[nItemId],1)
	local sMsg = string.format(tChineseValentinesOperation_Text["Msg"]["NoSpaceToOpen"],nSpace)
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(sMsg)
		return
	end
	
	-- 打开
	if Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tChineseValentinesOperation_Reward[nItemId],1)
		User_EffectDel("self",tChineseValentinesOperation_Data["Effect"]["Normal"])
		User_EffectAdd("self",tChineseValentinesOperation_Data["Effect"]["Normal"])
	end
end

-- 3307169 单身贵族一阶礼包
-- 3307170 CP一阶礼包
-- 3307171 单身贵族二阶礼包
-- 3307172 CP二阶礼包
-- 3307173 单身贵族三阶礼包
-- 3307174 CP三阶礼包
function ChineseValentinesOperation_Option(nIndex)
	local nItemId = Get_ItemType()
	RewardTemplate_UseItemAndMsg(tChineseValentinesOperation_Reward[nItemId][nIndex])
end

-- 3307334 情人节称号礼包
function ChineseValentinesOperation_TitlePack(nIndex,nSex)
	local nItemId = Get_ItemType()
	RewardTemplate_UseItemAndMsg(tChineseValentinesOperation_Reward[nItemId][nSex][nIndex])
end

-- 3307571 宴会主办卡可选包
function ChineseValentinesOperation_CardOption(nItemId,nIndex)
	-- 过期删除
	local nItemNum = Get_CountItemType(nItemId,0)
	local sLog = string.format(tChineseValentinesOperation_Data["Log"]["Timeout"],nItemId,nItemNum)
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		Item_DelAllItemByType(nItemId)
		User_TalkChannel2005(tChineseValentinesOperation_Text["Msg"]["TimeOut"])
		Sys_SaveActionRewardLog(sLog)
		return
	end
	
	RewardTemplate_UseItemAndMsg(tChineseValentinesOperation_Reward[nItemId][nIndex])
end
--------------------------------------时间自检-------------------------------------------
-- Party最迟开启时间
function ChineseValentinesOperation_OfficialPartyMustStart()
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		return
	end
	
	-- 判断开启
	local nGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Party"]
	if Get_SysDynaGlobalData0(nGlobalId) >= 1 then
		return
	end
	
	local sOfficial = tChineseValentinesOperation_Text["Msg"]["Official"]
	local sTime = tostring(os.time())
	Sys_SetSynaGlobalData0(nGlobalId,1)
	Sys_SetSynaGlobalDataStr0(nGlobalId,sTime)
	Sys_SetSynaGlobalDataStr1(nGlobalId,sOfficial)
end

-- 单身Party开启 首场天石雨开启
function ChineseValentinesOperation_SinglePartyStart()
	local nSelfCamp = 1
	
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["NewActivityTime"]) then
		return
	end
	
	-- 判断开启
	local nGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Party"]
	if Get_SysDynaGlobalData0(nGlobalId) < 1 then
		return
	end
	
	-------------------------------- 单身Party开启
	
	-- 全服公告
	Sys_SystemBroadcast(tChineseValentinesOperation_Text["Msg"]["Begin"])
	
	-- 标记Party是否进行中 打时间戳
	local nTimeStamp = os.time()
	local nPartyPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Party"][nSelfCamp]
	if Sys_ChkDayTime(tActivityTime["ChineseValentinesOperation"]["Official"]) then
		Sys_SetSynaGlobalData(nGlobalId,nPartyPos,1)
	else
		Sys_SetSynaGlobalData(nGlobalId,nPartyPos,nTimeStamp)
	end
	
	-- 私人Party需要记录Party举办人
	if not Sys_ChkDayTime(tActivityTime["ChineseValentinesOperation"]["Personal"]) then
		-- stc(173,29) 记录玩家是否是私人Party举办人
		local nHostEventType = tChineseValentinesOperation_Data["Stc"]["HostParty"]["EventType"]
		local nHostDataType = tChineseValentinesOperation_Data["Stc"]["HostParty"]["DataType"]
		local nHostComplete = tChineseValentinesOperation_Data["Stc"]["HostParty"]["Complete"]
		-- 是否超过30分钟
		if Task_StcInterval(nHostEventType,nHostDataType,30,1) then
			Task_SetStatistic(nHostEventType,nHostDataType,0,1)
			Task_SetStcTimestamp(nHostEventType,nHostDataType,0)
		end
		Task_SetStatistic(nHostEventType,nHostDataType,nHostComplete,1)
		Task_SetStcTimestamp(nHostEventType,nHostDataType,0)
	end
	
	-- 初始化天石雨状态
	local nRainGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Rain"]
	local nRainTimes = tChineseValentinesOperation_Data["RainTimes"]
	local nRainTimesPos = tChineseValentinesOperation_Data["GlobalIdPos"]["RainTimes"][nSelfCamp]
	Sys_SetSynaGlobalData(nRainGlobalId,nRainTimesPos,nRainTimes)
	
	-------------------------------- 首场天石雨开启
	
	-- 标记天石雨时间戳
	local nRainTimestampPos = tChineseValentinesOperation_Data["GlobalIdPos"]["RainTimestamp"][nSelfCamp]
	Sys_SetSynaGlobalData(nRainGlobalId,nRainTimestampPos,nTimeStamp)
	
	-- 天石雨 刷出
	local nMapId = tChineseValentinesOperation_Data["Party"][nSelfCamp]["MapId"]
	ChineseValentinesOperation_RushCPRain(nMapId)
end

-- CPParty开启 首场天石雨开启
function ChineseValentinesOperation_CPPartyStart()
	local nSelfCamp = 2
	
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["NewActivityTime"]) then
		return
	end
	
	-- 判断开启
	local nGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Party"]
	if Get_SysDynaGlobalData0(nGlobalId) < 1 then
		return
	end
	
	-------------------------------- CPParty开启
	
	-- 全服公告
	Sys_SystemBroadcast(tChineseValentinesOperation_Text["Msg"]["Begin"])
	
	-- 标记Party是否进行中 打时间戳
	local nTimeStamp = os.time()
	local nPartyPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Party"][nSelfCamp]
	if Sys_ChkDayTime(tActivityTime["ChineseValentinesOperation"]["Official"]) then
		Sys_SetSynaGlobalData(nGlobalId,nPartyPos,1)
	else
		Sys_SetSynaGlobalData(nGlobalId,nPartyPos,nTimeStamp)
	end
	
	-- 私人Party需要记录Party举办人
	if not Sys_ChkDayTime(tActivityTime["ChineseValentinesOperation"]["Personal"]) then
		-- stc(173,29) 记录玩家是否是私人Party举办人
		local nHostEventType = tChineseValentinesOperation_Data["Stc"]["HostParty"]["EventType"]
		local nHostDataType = tChineseValentinesOperation_Data["Stc"]["HostParty"]["DataType"]
		local nHostComplete = tChineseValentinesOperation_Data["Stc"]["HostParty"]["Complete"]
		-- 是否超过30分钟
		if Task_StcInterval(nHostEventType,nHostDataType,30,1) then
			Task_SetStatistic(nHostEventType,nHostDataType,0,1)
			Task_SetStcTimestamp(nHostEventType,nHostDataType,0)
		end
		Task_SetStatistic(nHostEventType,nHostDataType,nHostComplete,1)
		Task_SetStcTimestamp(nHostEventType,nHostDataType,0)
	end
	
	-- 初始化天石雨状态
	local nRainGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Rain"]
	local nRainTimes = tChineseValentinesOperation_Data["RainTimes"]
	local nRainTimesPos = tChineseValentinesOperation_Data["GlobalIdPos"]["RainTimes"][nSelfCamp]
	Sys_SetSynaGlobalData(nRainGlobalId,nRainTimesPos,nRainTimes)
	
	-------------------------------- 首场天石雨开启
	
	-- 标记天石雨时间戳
	local nRainTimestampPos = tChineseValentinesOperation_Data["GlobalIdPos"]["RainTimestamp"][nSelfCamp]
	Sys_SetSynaGlobalData(nRainGlobalId,nRainTimestampPos,nTimeStamp)
	
	-- 天石雨 刷出
	local nMapId = tChineseValentinesOperation_Data["Party"][nSelfCamp]["MapId"]
	ChineseValentinesOperation_RushCPRain(nMapId)
end

-- 官方Party结束
function ChineseValentinesOperation_OfficialPartyEnd()
	
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		return
	end
	
	-- 判断开启
	local nGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Party"]
	if Get_SysDynaGlobalData0(nGlobalId) < 1 then
		return
	end
	
	--------------------------------------
	
	local nRainGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Rain"]
	for i = 1,2 do
		-- 标记Party是否进行中 打时间戳
		local nPartyPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Party"][i]
		Sys_SetSynaGlobalData(nGlobalId,nPartyPos,0)
	
		-- 初始化天石雨状态
		local nRainTimesPos = tChineseValentinesOperation_Data["GlobalIdPos"]["RainTimes"][i]
		Sys_SetSynaGlobalData(nRainGlobalId,nRainTimesPos,0)
	
		-- 标记天石雨时间戳
		local nRainTimestampPos = tChineseValentinesOperation_Data["GlobalIdPos"]["RainTimestamp"][i]
		Sys_SetSynaGlobalData(nRainGlobalId,nRainTimestampPos,0)
	
		-- 天石雨 移走
		local nMapId = tChineseValentinesOperation_Data["Party"][i]["MapId"]
		ChineseValentinesOperation_MoveCPRain(nMapId)
	end
	
	-- 打掩码
	-- 宴会气氛转换成阵营活力值，官方Party其中气氛高的阵营额外增加1000阵营活力值
	local nAirGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Air"]
	local nEnergyGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Energy"]
	local nExtraEnergy = tChineseValentinesOperation_Data["ExtraEnergy"]
	local nValue1 = Get_SysDynaGlobalData2(nAirGlobalId)
	local nValue2 = Get_SysDynaGlobalData3(nAirGlobalId)
	if nValue1 > nValue2 then
		nValue1 = nValue1 + Get_SysDynaGlobalData0(nEnergyGlobalId) + nExtraEnergy
		nValue2 = nValue2 + Get_SysDynaGlobalData2(nEnergyGlobalId)
	elseif nValue1 < nValue2 then
		nValue1 = nValue1 + Get_SysDynaGlobalData0(nEnergyGlobalId)
		nValue2 = nValue2 + Get_SysDynaGlobalData2(nEnergyGlobalId) + nExtraEnergy
	elseif nValue1 == nValue2 then
		nValue1 = nValue1 + Get_SysDynaGlobalData0(nEnergyGlobalId)
		nValue2 = nValue2 + Get_SysDynaGlobalData2(nEnergyGlobalId)
	end
	Sys_SetSynaGlobalData0(nEnergyGlobalId,nValue1)
	Sys_SetSynaGlobalData2(nEnergyGlobalId,nValue2)
	Sys_SetSynaGlobalData2(nAirGlobalId,0)
	Sys_SetSynaGlobalData3(nAirGlobalId,0)
	
	-- 全地图触发 传送回双龙城
	for i = 1,2 do
		local nMapId = tChineseValentinesOperation_Data["Party"][i]["MapId"]
		Map_UserExeFunc(nMapId,-1,"ChineseValentinesOperation_BackToTown")
	end
end

-- 私人单身Party结束
function ChineseValentinesOperation_SinglePartyEnd()
	local nSelfCamp = 1
	
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["NewPartyEndTime"]) then
		return
	end
	
	-- 判断开启
	local nGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Party"]
	if Get_SysDynaGlobalData0(nGlobalId) < 1 then
		return
	end
	
	-- 判断是否Party中
	local nPartyPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Party"][nSelfCamp]
	if Get_SysDynaGlobalData(nGlobalId,nPartyPos) <= 1 then
		return
	end
	
	-- 判断是否是私人Party时间
	if Sys_ChkDayTime(tActivityTime["ChineseValentinesOperation"]["Official"]) then
		return
	end
	
	-- 私人Party需要判断是否达到30分钟
	local nTimeStamp = os.time()
	local nPartyDelayTime = tChineseValentinesOperation_Data["PartyDelayTime"]
	if nTimeStamp - Get_SysDynaGlobalData(nGlobalId,nPartyPos) < nPartyDelayTime then
		return
	end
	
	--------------------------------------
	
	-- 标记Party是否进行中 打时间戳
	Sys_SetSynaGlobalData(nGlobalId,nPartyPos,0)
	
	-- 初始化天石雨状态
	local nRainGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Rain"]
	local nRainTimesPos = tChineseValentinesOperation_Data["GlobalIdPos"]["RainTimes"][nSelfCamp]
	Sys_SetSynaGlobalData(nRainGlobalId,nRainTimesPos,0)
	
	-- 标记天石雨时间戳
	local nRainTimestampPos = tChineseValentinesOperation_Data["GlobalIdPos"]["RainTimestamp"][nSelfCamp]
	Sys_SetSynaGlobalData(nRainGlobalId,nRainTimestampPos,0)
	
	-- 天石雨 移走
	local nMapId = tChineseValentinesOperation_Data["Party"][nSelfCamp]["MapId"]
	ChineseValentinesOperation_MoveCPRain(nMapId)
	
	-- 宴会气氛转换成阵营活力值
	local nEnergyGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Energy"]
	local nEnergyPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Energy"][nSelfCamp]
	local nAirGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Air"]
	local nAirPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Air"][nSelfCamp]
	local nUsedPos = tChineseValentinesOperation_Data["GlobalIdPos"]["UseAir"][nSelfCamp]
	local nValue = Get_SysDynaGlobalData(nAirGlobalId,nAirPos) + Get_SysDynaGlobalData(nEnergyGlobalId,nEnergyPos)
	Sys_SetSynaGlobalData(nEnergyGlobalId,nEnergyPos,nValue)
	Sys_SetSynaGlobalData(nAirGlobalId,nAirPos,0)
	Sys_SetSynaGlobalData(nAirGlobalId,nUsedPos,0)
	
	-- 密钥清零
	local nKeyPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Key"][nSelfCamp]
	Sys_SetSynaGlobalData(nGlobalId,nKeyPos,0)
	
	-- 全地图触发 传送回双龙城
	Map_UserExeFunc(nMapId,-1,"ChineseValentinesOperation_BackToTown")
end

-- 私人CPParty结束
function ChineseValentinesOperation_CPPartyEnd()
	local nSelfCamp = 2
	
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["NewPartyEndTime"]) then
		return
	end
	
	-- 判断开启
	local nGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Party"]
	if Get_SysDynaGlobalData0(nGlobalId) < 1 then
		return
	end
	
	-- 判断是否Party中
	local nPartyPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Party"][nSelfCamp]
	if Get_SysDynaGlobalData(nGlobalId,nPartyPos) <= 1 then
		return
	end
	
	-- 判断是否是私人Party时间
	if Sys_ChkDayTime(tActivityTime["ChineseValentinesOperation"]["Official"]) then
		return
	end
	
	-- 私人Party需要判断是否达到30分钟
	local nTimeStamp = os.time()
	local nPartyDelayTime = tChineseValentinesOperation_Data["PartyDelayTime"]
	if nTimeStamp - Get_SysDynaGlobalData(nGlobalId,nPartyPos) < nPartyDelayTime then
		return
	end
	
	--------------------------------------
	
	-- 标记Party是否进行中 打时间戳
	Sys_SetSynaGlobalData(nGlobalId,nPartyPos,0)
	
	-- 初始化天石雨状态
	local nRainGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Rain"]
	local nRainTimesPos = tChineseValentinesOperation_Data["GlobalIdPos"]["RainTimes"][nSelfCamp]
	Sys_SetSynaGlobalData(nRainGlobalId,nRainTimesPos,0)
	
	-- 标记天石雨时间戳
	local nRainTimestampPos = tChineseValentinesOperation_Data["GlobalIdPos"]["RainTimestamp"][nSelfCamp]
	Sys_SetSynaGlobalData(nRainGlobalId,nRainTimestampPos,0)
	
	-- 天石雨 移走
	local nMapId = tChineseValentinesOperation_Data["Party"][nSelfCamp]["MapId"]
	ChineseValentinesOperation_MoveCPRain(nMapId)
	
	-- 宴会气氛转换成阵营活力值
	local nEnergyGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Energy"]
	local nEnergyPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Energy"][nSelfCamp]
	local nAirGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Air"]
	local nAirPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Air"][nSelfCamp]
	local nUsedPos = tChineseValentinesOperation_Data["GlobalIdPos"]["UseAir"][nSelfCamp]
	local nValue = Get_SysDynaGlobalData(nAirGlobalId,nAirPos) + Get_SysDynaGlobalData(nEnergyGlobalId,nEnergyPos)
	Sys_SetSynaGlobalData(nEnergyGlobalId,nEnergyPos,nValue)
	Sys_SetSynaGlobalData(nAirGlobalId,nAirPos,0)
	Sys_SetSynaGlobalData(nAirGlobalId,nUsedPos,0)
	
	-- 密钥清零
	local nKeyPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Key"][nSelfCamp]
	Sys_SetSynaGlobalData(nGlobalId,nKeyPos,0)
	
	-- 全地图触发 传送回双龙城
	Map_UserExeFunc(nMapId,-1,"ChineseValentinesOperation_BackToTown")
end

-- 传送回双龙城
function ChineseValentinesOperation_BackToTown(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nMapId = tChineseValentinesOperation_Data["Location"]["Back"]["MapId"]
	local nBoundX = tChineseValentinesOperation_Data["Location"]["Back"]["PosX"]
	local nBoundY = tChineseValentinesOperation_Data["Location"]["Back"]["PosY"]
	local sLog = string.format(tChineseValentinesOperation_Data["Log"]["InTheMap"],nMapId)
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,5,5,1,nUserId)
	Sys_SaveActionFestivalLog(sLog,nUserId)
end

-- 单身Party天石雨
function ChineseValentinesOperation_SingleCPRain()
	local nSelfCamp = 1
	
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["NewPartyEndTime"]) then
		return
	end
	
	-- 判断开启
	local nGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Party"]
	if Get_SysDynaGlobalData0(nGlobalId) < 1 then
		return
	end
	
	-- 判断是否Party中
	local nPartyPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Party"][nSelfCamp]
	if Get_SysDynaGlobalData(nGlobalId,nPartyPos) <= 0 then
		return
	end
	
	-- 判断天石雨状态
	local nRainGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Rain"]
	local nRainTimesPos = tChineseValentinesOperation_Data["GlobalIdPos"]["RainTimes"][nSelfCamp]
	local nRainTimes = Get_SysDynaGlobalData(nRainGlobalId,nRainTimesPos)
	if nRainTimes <= 0 then
		return
	end
	
	-- 判断天石雨时间戳
	local nTimeStamp = os.time()
	local nRainTimestampPos = tChineseValentinesOperation_Data["GlobalIdPos"]["RainTimestamp"][nSelfCamp]
	local nRainTimestamp = Get_SysDynaGlobalData(nRainGlobalId,nRainTimestampPos)
	local nRainTime = tChineseValentinesOperation_Data["RainTime"]
	if nRainTimestamp ~= 0 then
		if nTimeStamp - nRainTimestamp < nRainTime then
			return
		-- 天石雨结束
		else
			-- 标记天石雨状态
			Sys_SetSynaGlobalData(nRainGlobalId,nRainTimesPos,nRainTimes-1)
			-- 标记天石雨时间戳
			Sys_SetSynaGlobalData(nRainGlobalId,nRainTimestampPos,0)
			-- 天石雨 移走
			local nMapId = tChineseValentinesOperation_Data["Party"][nSelfCamp]["MapId"]
			ChineseValentinesOperation_MoveCPRain(nMapId)
		end
	end
	
	-- 判断天石雨状态
	local nNowRainTimes = Get_SysDynaGlobalData(nRainGlobalId,nRainTimesPos)
	if nNowRainTimes <= 0 then
		return
	end
	-- 下一场天石雨开始
	-- 全服公告
	Sys_SystemBroadcast(tChineseValentinesOperation_Text["Msg"]["Begin"])
	-- 标记天石雨状态
	local nNowTimeStamp = os.time()
	Sys_SetSynaGlobalData(nRainGlobalId,nRainTimesPos,nNowRainTimes-1)
	-- 标记天石雨时间戳
	Sys_SetSynaGlobalData(nRainGlobalId,nRainTimestampPos,nNowTimeStamp)
	-- 天石雨 刷出
	local nMapId = tChineseValentinesOperation_Data["Party"][nSelfCamp]["MapId"]
	ChineseValentinesOperation_RushCPRain(nMapId)
end

-- CPParty天石雨
function ChineseValentinesOperation_CPCPRain()
	local nSelfCamp = 2
	
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["NewPartyEndTime"]) then
		return
	end
	
	-- 判断开启
	local nGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Party"]
	if Get_SysDynaGlobalData0(nGlobalId) < 1 then
		return
	end
	
	-- 判断是否Party中
	local nPartyPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Party"][nSelfCamp]
	if Get_SysDynaGlobalData(nGlobalId,nPartyPos) <= 0 then
		return
	end
	
	-- 判断天石雨状态
	local nRainGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Rain"]
	local nRainTimesPos = tChineseValentinesOperation_Data["GlobalIdPos"]["RainTimes"][nSelfCamp]
	local nRainTimes = Get_SysDynaGlobalData(nRainGlobalId,nRainTimesPos)
	if nRainTimes <= 0 then
		return
	end
	
	-- 判断天石雨时间戳
	local nTimeStamp = os.time()
	local nRainTimestampPos = tChineseValentinesOperation_Data["GlobalIdPos"]["RainTimestamp"][nSelfCamp]
	local nRainTimestamp = Get_SysDynaGlobalData(nRainGlobalId,nRainTimestampPos)
	local nRainTime = tChineseValentinesOperation_Data["RainTime"]
	if nRainTimestamp ~= 0 then
		if nTimeStamp - nRainTimestamp < nRainTime then
			return
		-- 天石雨结束
		else
			-- 标记天石雨状态
			Sys_SetSynaGlobalData(nRainGlobalId,nRainTimesPos,nRainTimes-1)
			-- 标记天石雨时间戳
			Sys_SetSynaGlobalData(nRainGlobalId,nRainTimestampPos,0)
			-- 天石雨 移走
			local nMapId = tChineseValentinesOperation_Data["Party"][nSelfCamp]["MapId"]
			ChineseValentinesOperation_MoveCPRain(nMapId)
		end
	end
	
	-- 判断天石雨状态
	local nNowRainTimes = Get_SysDynaGlobalData(nRainGlobalId,nRainTimesPos)
	if nNowRainTimes <= 0 then
		return
	end
	-- 下一场天石雨开始
	-- 全服公告
	Sys_SystemBroadcast(tChineseValentinesOperation_Text["Msg"]["Begin"])
	-- 标记天石雨状态
	local nNowTimeStamp = os.time()
	Sys_SetSynaGlobalData(nRainGlobalId,nRainTimesPos,nNowRainTimes-1)
	-- 标记天石雨时间戳
	Sys_SetSynaGlobalData(nRainGlobalId,nRainTimestampPos,nNowTimeStamp)
	-- 天石雨 刷出
	local nMapId = tChineseValentinesOperation_Data["Party"][nSelfCamp]["MapId"]
	ChineseValentinesOperation_RushCPRain(nMapId)
end

-- 天石雨 刷出
function ChineseValentinesOperation_RushCPRain(nMapId)
	-- 物品
	local nPosX = tChineseValentinesOperation_Data["RainItemData"]["PosX"]
	local nPosY = tChineseValentinesOperation_Data["RainItemData"]["PosY"]
	local nCellx = tChineseValentinesOperation_Data["RainItemData"]["Cellx"]
	local nCelly = tChineseValentinesOperation_Data["RainItemData"]["Celly"]
	local nExistTime = tChineseValentinesOperation_Data["RainTime"]
	-- 物品
	for i = 1,4 do
		local nItemId = tChineseValentinesOperation_Data["RainItemId"][i]
		local nItemNum = tChineseValentinesOperation_Data["RainItemNum"][i]
		Map_DropMultiItems(nMapId,nItemId,nPosX,nPosY,nCellx,nCelly,nItemNum,nExistTime)
	end
	
	-- 箱子npc
	local nCampIndex = tChineseValentinesOperation_Data["NPCCamp"][nMapId]
	local tBoxId = tChineseValentinesOperation_Data["BoxId"][nCampIndex]
	local nRandomIndex = math.random(1,2)
	local tLocation = tChineseValentinesOperation_Data["BoxPos"][nRandomIndex]
	for i,v in ipairs(tBoxId) do
		local nXPos = tLocation[i][1]
		local nYPos = tLocation[i][2]
		Npc_MoveNpcPos(v,nMapId,nXPos,nYPos)
	end
end

-- 天石雨 移走
function ChineseValentinesOperation_MoveCPRain(nMapId)
	local nCampIndex = tChineseValentinesOperation_Data["NPCCamp"][nMapId]
	local tBoxId = tChineseValentinesOperation_Data["BoxId"][nCampIndex]
	local nPosX = tChineseValentinesOperation_Data["RainIOver"]["PosY"]
	local nPosY = tChineseValentinesOperation_Data["RainIOver"]["PosX"]
	local nMoveMapId = tChineseValentinesOperation_Data["RainIOver"]["MapId"]
	for i,v in ipairs(tBoxId) do
		Npc_MoveNpcPos(v,nMoveMapId,nPosX,nPosY)
	end
end

-- 主持人
-- 放烟花
function ChineseValentinesOperation_Fire()
	local nNpcId = Get_NpcId()
	
	-- 判断时间
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["NewPartyEndTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 判断天石
	local nFee = tChineseValentinesOperation_Data["FireFee"]
	if Get_UserEMoney() < nFee then
		Sys_MsgBox(tChineseValentinesOperation_Text[nNpcId]["EmoneyNotEnough"])
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"2-2")
end

function ChineseValentinesOperation_ConfirmFire()
	local nNpcId = Get_NpcId()
	
	-- 判断时间
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["NewPartyEndTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 判断天石
	local nFee = tChineseValentinesOperation_Data["FireFee"]
	if Get_UserEMoney() < nFee then
		Sys_MsgBox(tChineseValentinesOperation_Text[nNpcId]["EmoneyNotEnough"])
		return
	end
	
	--------------------------------
	
	if not User_AddEMoney(-nFee) then
		return
	end
	Sys_SaveEmoneyBuy(tChineseValentinesOperation_Data["Emoneylog"]["Fire"])
	
	-- 氛围
	local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][nNpcId]
	local nAirPoint = tChineseValentinesOperation_Data["FirePoint"]
	local nAirGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Air"]
	local nAirPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Air"][nSelfCamp]
	local nTotalAir = nAirPoint + Get_SysDynaGlobalData(nAirGlobalId,nAirPos)
	Sys_SetSynaGlobalData(nAirGlobalId,nAirPos,nTotalAir)
	
	-- 地图光效 烟花
	local nMapId = tChineseValentinesOperation_Data["Party"][nSelfCamp]["MapId"]
	local sEffectName = tChineseValentinesOperation_Data["Effect"]["Fire"]
	for i,v in pairs(tChineseValentinesOperation_Data["FirePos"]) do
		local nPosX = tChineseValentinesOperation_Data["FirePos"][i][1]
		local nPosY = tChineseValentinesOperation_Data["FirePos"][i][2]
		Map_Effect(nMapId,nPosX,nPosY,sEffectName)
	end
	
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end

-- 地图光效 烟花
function ChineseValentinesOperation_FireEffect(nMapId)
	local sEffectName = tChineseValentinesOperation_Data["Effect"]["Fire"]
	for i,v in pairs(tChineseValentinesOperation_Data["FirePos"]) do
		local nPosX = tChineseValentinesOperation_Data["FirePos"][i][1]
		local nPosY = tChineseValentinesOperation_Data["FirePos"][i][2]
		Map_Effect(nMapId,nPosX,nPosY,sEffectName)
	end
end

-- 召唤天石雨
function ChineseValentinesOperation_CallTheCPRain()
	local nNpcId = Get_NpcId()
	local nUserId = Get_UserId()
	
	-- 判断时间
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["NewPartyEndTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 天石雨状态
	if ChineseValentinesOperation_CPRainChkTimes(nNpcId) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	-- 氛围
	local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][nNpcId]
	local nAirGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Air"]
	local nAirPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Air"][nSelfCamp]
	local nUsedPos = tChineseValentinesOperation_Data["GlobalIdPos"]["UseAir"][nSelfCamp]
	local nAir = Get_SysDynaGlobalData(nAirGlobalId,nAirPos)
	local nUsed = Get_SysDynaGlobalData(nAirGlobalId,nUsedPos)
	local nNeedAir = tChineseValentinesOperation_Data["CallRain"]
	if (nAir - nUsed) < nNeedAir then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	--------------------------------------
	
	Sys_MsgBox(tChineseValentinesOperation_Text[nNpcId]["Success"])
	Sys_SetSynaGlobalData(nAirGlobalId,nUsedPos,nUsed+nNeedAir)
	
	-- 初始化天石雨状态
	local nRainGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Rain"]
	local nRainTimesPos = tChineseValentinesOperation_Data["GlobalIdPos"]["RainTimes"][nSelfCamp]
	Sys_SetSynaGlobalData(nRainGlobalId,nRainTimesPos,1)
	
	local nTimeStamp = os.time()
	local nRainTimestampPos = tChineseValentinesOperation_Data["GlobalIdPos"]["RainTimestamp"][nSelfCamp]
	Sys_SetSynaGlobalData(nRainGlobalId,nRainTimestampPos,nTimeStamp)
	
	local nMapId = tChineseValentinesOperation_Data["Party"][nSelfCamp]["MapId"]
	ChineseValentinesOperation_RushCPRain(nMapId)
end

function ChineseValentinesOperation_CPRainChkTimes(nNpcId)
	local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][nNpcId]
	local nRainGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Rain"]
	local nRainTimesPos = tChineseValentinesOperation_Data["GlobalIdPos"]["RainTimes"][nSelfCamp]
	return ( Get_SysDynaGlobalData(nRainGlobalId,nRainTimesPos) > 0 )
end

-- 活力值改变时判断是否要开启本服Party
function ChineseValentinesOperation_EnergyChange(nSelfCamp)
	-- 判断时间
	-- 非活动期间
	if not Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		return
	end
	-- 可提前开启时间
	if not Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["AdvancePartyTime"]) then
		return
	end
	
	-- 判断是否已经开启
	local nPartyGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Party"]
	if Get_SysDynaGlobalData0(nPartyGlobalId,nPos) >= 1 then
		return
	end
	
	local nEnergyGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Energy"]
	local nEnergyPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Energy"][nSelfCamp]
	local nNeedEnergy = tChineseValentinesOperation_Data["NeedEnergy"]
	if Get_SysDynaGlobalData(nEnergyGlobalId,nEnergyPos) >= nNeedEnergy then
		local sSelfCamp = tChineseValentinesOperation_Text["Msg"]["Advance"][nSelfCamp]
		local sTime = tostring(os.time())
		Sys_SetSynaGlobalData0(nPartyGlobalId,1)
		Sys_SetSynaGlobalDataStr0(nPartyGlobalId,sTime)
		Sys_SetSynaGlobalDataStr1(nPartyGlobalId,sSelfCamp)
	end
end

-- 本服Party是否开启
function ChineseValentinesOperation_PartyOn()
	local nGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Party"]
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["NewActivityTime"]) then
		if Get_SysDynaGlobalData0(nGlobalId) >= 1 then
			return true
		end
	end
	
	return false
end
--------------------------------------陷阱逻辑-------------------------------------------
function ChineseValentinesOperation_LeaveParty()
	Sys_MsgBox(tChineseValentinesOperation_Text["Msg"]["Leave"],"ChineseValentinesOperation_Leave")
end

function ChineseValentinesOperation_Leave()
	-- 判断地图
	local nUserId = Get_UserId()
	local nUserMapId = Get_UserMapId(nUserId)
	local nMapId1 = tChineseValentinesOperation_Data["Party"][1]["MapId"]
	local nMapId2 = tChineseValentinesOperation_Data["Party"][2]["MapId"]
	if nUserMapId ~= nMapId1 and nUserMapId ~= nMapId2 then
		return
	end
	
	-- 传送
	local nMapId = tChineseValentinesOperation_Data["Location"]["Back"]["MapId"]
	local nBoundX = tChineseValentinesOperation_Data["Location"]["Back"]["PosX"]
	local nBoundY = tChineseValentinesOperation_Data["Location"]["Back"]["PosY"]
	local sLog = string.format(tChineseValentinesOperation_Data["Log"]["InTheMap"],nMapId)
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,5,5,1)
	Sys_SaveActionFestivalLog(sLog)
end
--------------------------------------怪物掉落-------------------------------------------
-- 爱情盗匪
function ChineseValentinesOperation_MonsterDeath(nMonsterTypeId)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		return
	end
	
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
		return
	end
	
	-- 判断阵营
	local nUserCamp = ChineseValentinesOperation_UserCamp()
	local nOpposedCamp = tChineseValentinesOperation_Data["NPCOpposedCamp"][nMonsterTypeId]
	if nUserCamp == nOpposedCamp then
		return
	end
	
	-- 判断背包
	local nSpace = RewardTemplate_GetRewardSpace(tChineseValentinesOperation_MissionReward[nMonsterTypeId])
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(tChineseValentinesOperation_Text["Msg"]["NoSpace"])
		return
	end
	
	-- 判断掩码
	-- stc(173,27) 记录玩家每日杀怪掉落定情信物
	local nEventType = tChineseValentinesOperation_Data["Stc"][nMonsterTypeId]["EventType"]
	local nDataType = tChineseValentinesOperation_Data["Stc"][nMonsterTypeId]["DataType"]
	local nComplete = tChineseValentinesOperation_Data["Stc"][nMonsterTypeId]["Complete"]
	Task_StcReset(nEventType,nDataType)
	if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
		return
	end
	
	------------------------------------------
	
	local nStartNum = tChineseValentinesOperation_Data["Random"]["Start"]
	local nEndNum = tChineseValentinesOperation_Data["Random"]["End"]
	if Sys_Random(nStartNum,nEndNum) then
		Task_AddStatistic(nEventType,nDataType,1,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
		RewardTemplate_UseItemAndMsg(tChineseValentinesOperation_MissionReward[nMonsterTypeId])
	end
end

-- 片区怪物掉落
function ChineseValentinesOperation_NormalMonster()
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		return
	end
	
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
		return
	end
	
	-- 判断阵营 无阵营
	local nUserCamp = ChineseValentinesOperation_UserCamp()
	if nUserCamp == 0 then
		return
	end
	
	-- 判断背包
	local nSpace = RewardTemplate_GetRandomSpace(tChineseValentinesOperation_Probabil["Monster"],1)
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(tChineseValentinesOperation_Text["Msg"]["NoSpace"])
		return
	end
	
	--------------------------------------
	
	local nFlag,tAward = Probabil_RandomAward(tChineseValentinesOperation_Probabil["Monster"],1)
	nItemIndex = tAward[1]["tAward"][1]["Item_1"]
	if nItemIndex == 0 then
		return
	else
		local nEventType = tChineseValentinesOperation_Data["Stc"]["Monster"][nItemIndex]["EventType"]
		local nDataType = tChineseValentinesOperation_Data["Stc"]["Monster"][nItemIndex]["DataType"]
		local nComplete = tChineseValentinesOperation_Data["Stc"]["Monster"][nItemIndex]["Complete"]
		Task_StcReset(nEventType,nDataType)
		if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
			local nMsgEventType = tChineseValentinesOperation_Data["Stc"]["Msg"][nItemIndex]["EventType"]
			local nMsgDataType = tChineseValentinesOperation_Data["Stc"]["Msg"][nItemIndex]["DataType"]
			local nMsgComplete = tChineseValentinesOperation_Data["Stc"]["Msg"][nItemIndex]["Complete"]
			Task_StcReset(nMsgEventType,nMsgDataType)
			if Task_ChkStcValue(nMsgEventType,nMsgDataType,"<=",0) then
				Task_AddStatistic(nMsgEventType,nMsgDataType,nMsgComplete,1)
				Task_SetStcTimestamp(nMsgEventType,nMsgDataType,0)
				Sys_MsgBox(tChineseValentinesOperation_Text["Msg"][nItemIndex])
			end
			return
		end
		Task_AddStatistic(nEventType,nDataType,1,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
		RewardTemplate_UseItemAndMsg(tChineseValentinesOperation_MissionReward["Monster"][nItemIndex])
	end
end
--------------------------------------npc配置-------------------------------------------
-- 21358 单身王子
tNpcFace[5940] = 10

tNpcGossip[21358] = tNpcGossip[21358] or DefaultNpc:new{}
tNpcGossip[21358]["OptionHidden"] = 1
tNpcGossip[21358]["DialogueText"] = tChineseValentinesOperation_Text[21358]

-- 活动前
tNpcGossip[21358]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[21358]["tOption1-1"] = {1}
tNpcGossip[21358]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"])
end

-- 活动后
tNpcGossip[21358]["Text1-2"] = {121}
tNpcGossip[21358]["tOption1-2"] = {2}
tNpcGossip[21358]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"])
end

-- 活动中
-- 等级不足
tNpcGossip[21358]["Text1-3"] = {131,132,113,114,115}
tNpcGossip[21358]["tOption1-3"] = {3}
tNpcGossip[21358]["ChkFunc1-3"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		if not User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
			return true
		end
	end
	
	return false
end
-- 等级满足 敌对阵营
tNpcGossip[21358]["Text1-4"] = {141}
tNpcGossip[21358]["tOption1-4"] = {4}
tNpcGossip[21358]["ChkFunc1-4"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
			local nNpcId = Get_NpcId()
			local nOpposedCamp = tChineseValentinesOperation_Data["NPCOpposedCamp"][nNpcId]
			local nUserCamp = ChineseValentinesOperation_UserCamp()
			if nUserCamp == nOpposedCamp then
				return true
			end
		end
	end
	
	return false
end
-- 等级满足 非敌对阵营
tNpcGossip[21358]["Text1-5"] = {131,132,113,115}
tNpcGossip[21358]["tOption1-5"] = {5,6,7,8}
tNpcGossip[21358]["ChkFunc1-5"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
			local nNpcId = Get_NpcId()
			local nOpposedCamp = tChineseValentinesOperation_Data["NPCOpposedCamp"][nNpcId]
			local nUserCamp = ChineseValentinesOperation_UserCamp()
			if nUserCamp ~= nOpposedCamp then
				return true
			end
		end
	end
	
	return false
end
tNpcGossip[21358]["OptionChkFunc5"] = function ()
	local nNpcId = Get_NpcId()
	local nOpposedCamp = tChineseValentinesOperation_Data["NPCOpposedCamp"][nNpcId]
	local nUserCamp = ChineseValentinesOperation_UserCamp()
	if nUserCamp <= 0 then
		return true
	end
	
	return false
end
tNpcGossip[21358]["OptionChkFunc6"] = function ()
	local nNpcId = Get_NpcId()
	local nOpposedCamp = tChineseValentinesOperation_Data["NPCOpposedCamp"][nNpcId]
	local nUserCamp = ChineseValentinesOperation_UserCamp()
	if nUserCamp <= 0 then
		return false
	end
	
	return true
end
tNpcGossip[21358]["OptionPoint5"] = "2-2"
tNpcGossip[21358]["OptionFunc6"] = "ChineseValentinesOperation_ChgMap</N>1"
tNpcGossip[21358]["OptionPoint7"] = "2-1"

-- 查看阵营活力值
tNpcGossip[21358]["Text2-1"] = {211,212,213,214,215}
tNpcGossip[21358]["tOption2-1"] = {211}
tNpcGossip[21358]["ChkFunc2-1"] = function()
	local nNpcId = Get_NpcId()
	local nGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Energy"]
	local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][nNpcId]
	local nOpposedCamp = tChineseValentinesOperation_Data["NPCOpposedCamp"][nNpcId]
	local nSelfEnergy = Get_SysDynaGlobalData(nGlobalId,tChineseValentinesOperation_Data["GlobalIdPos"]["Energy"][nSelfCamp])
	local nMinus = Get_SysDynaGlobalData(nGlobalId,tChineseValentinesOperation_Data["GlobalIdPos"]["MinusEnergy"][nSelfCamp])
	local nOpposedEnergy = Get_SysDynaGlobalData(nGlobalId,tChineseValentinesOperation_Data["GlobalIdPos"]["Energy"][nOpposedCamp])
	tNpcGossip[nNpcId]["Text212"] = string.format(tChineseValentinesOperation_Text[nNpcId]["Text212"],nSelfEnergy)
	tNpcGossip[nNpcId]["Text213"] = string.format(tChineseValentinesOperation_Text[nNpcId]["Text213"],nMinus)
	tNpcGossip[nNpcId]["Text214"] = string.format(tChineseValentinesOperation_Text[nNpcId]["Text214"],nOpposedEnergy)
	return true
end

-- 加入单身贵族
tNpcGossip[21358]["Text2-2"] = {221,222}
tNpcGossip[21358]["tOption2-2"] = {221,222,223,224}
tNpcGossip[21358]["OptionFunc221"] = "ChineseValentinesOperation_Join</N>1"
tNpcGossip[21358]["OptionFunc222"] = "ChineseValentinesOperation_Join</N>2"
tNpcGossip[21358]["OptionFunc223"] = "ChineseValentinesOperation_Join</N>3"
-- 二次确认
tNpcGossip[21358]["Text3-1"] = {311}
tNpcGossip[21358]["tOption3-1"] = {311,312}
tNpcGossip[21358]["OptionFunc311"] = "ChineseValentinesOperation_Confirm</N>1"
tNpcGossip[21358]["Text3-2"] = {321}
tNpcGossip[21358]["tOption3-2"] = {321,322}
tNpcGossip[21358]["OptionFunc321"] = "ChineseValentinesOperation_Confirm</N>2"
tNpcGossip[21358]["Text3-3"] = {331}
tNpcGossip[21358]["tOption3-3"] = {331,332}
tNpcGossip[21358]["OptionFunc331"] = "ChineseValentinesOperation_Confirm</N>3"
-- 成功
tNpcGossip[21358]["Text4-1"] = {411}
tNpcGossip[21358]["tOption4-1"] = {411}

-- 21359 单身公主
tNpcFace[5941] = 120

tNpcGossip[21359] = tNpcGossip[21359] or DefaultNpc:new{}
tNpcGossip[21359]["OptionHidden"] = 1
tNpcGossip[21359]["DialogueText"] = tChineseValentinesOperation_Text[21359]

-- 活动前
tNpcGossip[21359]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[21359]["tOption1-1"] = {1}
tNpcGossip[21359]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"])
end

-- 活动后
tNpcGossip[21359]["Text1-2"] = {121}
tNpcGossip[21359]["tOption1-2"] = {2}
tNpcGossip[21359]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"])
end

-- 活动中
-- 等级不足
tNpcGossip[21359]["Text1-3"] = {131,132,113,114,115}
tNpcGossip[21359]["tOption1-3"] = {3}
tNpcGossip[21359]["ChkFunc1-3"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		if not User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
			return true
		end
	end
	
	return false
end
-- 等级满足 敌对阵营
tNpcGossip[21359]["Text1-4"] = {141}
tNpcGossip[21359]["tOption1-4"] = {4}
tNpcGossip[21359]["ChkFunc1-4"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
			local nNpcId = Get_NpcId()
			local nOpposedCamp = tChineseValentinesOperation_Data["NPCOpposedCamp"][nNpcId]
			local nUserCamp = ChineseValentinesOperation_UserCamp()
			if nUserCamp == nOpposedCamp then
				return true
			end
		end
	end
	
	return false
end
-- 等级满足 非敌对阵营
tNpcGossip[21359]["Text1-5"] = {131,132,113,115}
tNpcGossip[21359]["tOption1-5"] = {5,6,7,8}
tNpcGossip[21359]["ChkFunc1-5"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
			local nNpcId = Get_NpcId()
			local nOpposedCamp = tChineseValentinesOperation_Data["NPCOpposedCamp"][nNpcId]
			local nUserCamp = ChineseValentinesOperation_UserCamp()
			if nUserCamp ~= nOpposedCamp then
				return true
			end
		end
	end
	
	return false
end
tNpcGossip[21359]["OptionPoint5"] = "2-2"
tNpcGossip[21359]["OptionPoint6"] = "2-3"
tNpcGossip[21359]["OptionFunc7"] = "ChineseValentinesOperation_Web"
tNpcGossip[21359]["OptionPoint8"] = "2-1"

-- 作战攻略
tNpcGossip[21359]["Text2-1"] = {211,212,213,214,215,216,217,218}
tNpcGossip[21359]["tOption2-1"] = {211}

-- 上交鲜花
tNpcGossip[21359]["Text2-2"] = {221,222,223,224,225,226,227,228,229}
tNpcGossip[21359]["tOption2-2"] = {221,222,223,224,225}
tNpcGossip[21359]["OptionFunc221"] = "ChineseValentinesOperation_Flower</N>1"
tNpcGossip[21359]["OptionFunc222"] = "ChineseValentinesOperation_Flower</N>2"
tNpcGossip[21359]["OptionFunc223"] = "ChineseValentinesOperation_Flower</N>3"
tNpcGossip[21359]["OptionFunc224"] = "ChineseValentinesOperation_Flower</N>4"
tNpcGossip[21359]["ChkFunc2-2"] = function()
	-- stc(172,13) 记录玩家每日上交鲜花获得的魅力值
	local nFlowersEventType = tChineseValentinesOperation_Data["Stc"]["Flowers"]["EventType"]
	local nFlowersDataType = tChineseValentinesOperation_Data["Stc"]["Flowers"]["DataType"]
	local nValue = 0
	Task_StcReset(nFlowersEventType,nFlowersDataType)
	if Task_ChkStcValue(nFlowersEventType,nFlowersDataType,">",0) then
		nValue = Get_UserStatisticValue(nFlowersEventType,nFlowersDataType)
	end
	tNpcGossip[21359]["Text228"] = string.format(tChineseValentinesOperation_Text[21359]["Text228"],nValue)
	
	return true
end
-- 上交鲜花类型
tNpcGossip[21359]["Text3-1"] = {311}
tNpcGossip[21359]["tOption3-1"] = {311,312,313,314,315,316}
-- 上交的鲜花份数
tNpcGossip[21359]["Text4-1"] = {411}
tNpcGossip[21359]["tOption4-1"] = {411,412}
-- 输入有误
tNpcGossip[21359]["Text5-1"] = {511}
tNpcGossip[21359]["tOption5-1"] = {511}
-- 数量不足
tNpcGossip[21359]["Text5-2"] = {521}
tNpcGossip[21359]["tOption5-2"] = {521}
-- 成功上交
tNpcGossip[21359]["Text5-3"] = {531,532,533}
tNpcGossip[21359]["tOption5-3"] = {531,532}
tNpcGossip[21359]["OptionFunc531"] = "ChineseValentinesOperation_Web"
tNpcGossip[21359]["OptionPoint532"] = "2-2"

-- 上交宴会道具
tNpcGossip[21359]["Text2-3"] = {231,232,233,234,235,236}
tNpcGossip[21359]["tOption2-3"] = {231,232,233,234}
tNpcGossip[21359]["OptionFunc231"] = "ChineseValentinesOperation_Item</N>1"
tNpcGossip[21359]["OptionFunc232"] = "ChineseValentinesOperation_Item</N>2"
tNpcGossip[21359]["OptionFunc233"] = "ChineseValentinesOperation_Item</N>3"
-- 上交的道具数量
tNpcGossip[21359]["Text3-2"] = {321}
tNpcGossip[21359]["tOption3-2"] = {321,322}
-- 输入有误
tNpcGossip[21359]["Text4-2"] = {421}
tNpcGossip[21359]["tOption4-2"] = {421}
-- 数量不足
tNpcGossip[21359]["Text4-3"] = {431}
tNpcGossip[21359]["tOption4-3"] = {431}
-- 成功上交
tNpcGossip[21359]["Text4-4"] = {441,442,443}
tNpcGossip[21359]["tOption4-4"] = {441,442}
tNpcGossip[21359]["OptionFunc441"] = "ChineseValentinesOperation_Web"
tNpcGossip[21359]["OptionPoint442"] = "2-3"

-- 21360 情人节礼官
tNpcFace[525] = 184

tNpcGossip[21360] = tNpcGossip[21360] or DefaultNpc:new{}
tNpcGossip[21360]["OptionHidden"] = 1
tNpcGossip[21360]["DialogueText"] = tChineseValentinesOperation_Text[21360]

-- 活动前
tNpcGossip[21360]["Text1-1"] = {111,112,113}
tNpcGossip[21360]["tOption1-1"] = {1}

-- 活动后
tNpcGossip[21360]["Text1-2"] = {121}
tNpcGossip[21360]["tOption1-2"] = {2}

-- 活动中
-- 等级不足
tNpcGossip[21360]["Text1-3"] = {131,112,113}
tNpcGossip[21360]["tOption1-3"] = {3}

-- 21361 恋爱男神
tNpcFace[5942] = 72

tNpcGossip[21361] = tNpcGossip[21361] or DefaultNpc:new{}
tNpcGossip[21361]["OptionHidden"] = 1
tNpcGossip[21361]["DialogueText"] = tChineseValentinesOperation_Text[21361]

-- 活动前
tNpcGossip[21361]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[21361]["tOption1-1"] = {1}
tNpcGossip[21361]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"])
end

-- 活动后
tNpcGossip[21361]["Text1-2"] = {121}
tNpcGossip[21361]["tOption1-2"] = {2}
tNpcGossip[21361]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"])
end

-- 活动中
-- 等级不足
tNpcGossip[21361]["Text1-3"] = {131,132,113,114,115}
tNpcGossip[21361]["tOption1-3"] = {3}
tNpcGossip[21361]["ChkFunc1-3"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		if not User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
			return true
		end
	end
	
	return false
end
-- 等级满足 敌对阵营
tNpcGossip[21361]["Text1-4"] = {141}
tNpcGossip[21361]["tOption1-4"] = {4}
tNpcGossip[21361]["ChkFunc1-4"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
			local nNpcId = Get_NpcId()
			local nOpposedCamp = tChineseValentinesOperation_Data["NPCOpposedCamp"][nNpcId]
			local nUserCamp = ChineseValentinesOperation_UserCamp()
			if nUserCamp == nOpposedCamp then
				return true
			end
		end
	end
	
	return false
end
-- 等级满足 非敌对阵营
tNpcGossip[21361]["Text1-5"] = {131,132,113,115}
tNpcGossip[21361]["tOption1-5"] = {5,6,7,8}
tNpcGossip[21361]["ChkFunc1-5"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
			local nNpcId = Get_NpcId()
			local nOpposedCamp = tChineseValentinesOperation_Data["NPCOpposedCamp"][nNpcId]
			local nUserCamp = ChineseValentinesOperation_UserCamp()
			if nUserCamp ~= nOpposedCamp then
				return true
			end
		end
	end
	
	return false
end
tNpcGossip[21361]["OptionChkFunc5"] = function ()
	local nUserCamp = ChineseValentinesOperation_UserCamp()
	if nUserCamp <= 0 then
		return true
	end
	
	return false
end
tNpcGossip[21361]["OptionChkFunc6"] = function ()
	local nUserCamp = ChineseValentinesOperation_UserCamp()
	if nUserCamp <= 0 then
		return false
	end
	
	return true
end
tNpcGossip[21361]["OptionPoint5"] = "2-2"
tNpcGossip[21361]["OptionFunc6"] = "ChineseValentinesOperation_ChgMap</N>2"
tNpcGossip[21361]["OptionPoint7"] = "2-1"

-- 查看阵营活力值
tNpcGossip[21361]["Text2-1"] = {211,212,213,214,215}
tNpcGossip[21361]["tOption2-1"] = {211}
tNpcGossip[21361]["ChkFunc2-1"] = function()
	local nNpcId = Get_NpcId()
	local nGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Energy"]
	local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][nNpcId]
	local nOpposedCamp = tChineseValentinesOperation_Data["NPCOpposedCamp"][nNpcId]
	local nSelfEnergy = Get_SysDynaGlobalData(nGlobalId,tChineseValentinesOperation_Data["GlobalIdPos"]["Energy"][nSelfCamp])
	local nMinus = Get_SysDynaGlobalData(nGlobalId,tChineseValentinesOperation_Data["GlobalIdPos"]["MinusEnergy"][nSelfCamp])
	local nOpposedEnergy = Get_SysDynaGlobalData(nGlobalId,tChineseValentinesOperation_Data["GlobalIdPos"]["Energy"][nOpposedCamp])
	tNpcGossip[nNpcId]["Text212"] = string.format(tChineseValentinesOperation_Text[nNpcId]["Text212"],nSelfEnergy)
	tNpcGossip[nNpcId]["Text213"] = string.format(tChineseValentinesOperation_Text[nNpcId]["Text213"],nMinus)
	tNpcGossip[nNpcId]["Text214"] = string.format(tChineseValentinesOperation_Text[nNpcId]["Text214"],nOpposedEnergy)
	return true
end

-- 加入CP阵营
tNpcGossip[21361]["Text2-2"] = {221,222}
tNpcGossip[21361]["tOption2-2"] = {221,222,223,224}
tNpcGossip[21361]["OptionFunc221"] = "ChineseValentinesOperation_Join</N>1"
tNpcGossip[21361]["OptionFunc222"] = "ChineseValentinesOperation_Join</N>2"
tNpcGossip[21361]["OptionFunc223"] = "ChineseValentinesOperation_Join</N>3"
-- 二次确认
tNpcGossip[21361]["Text3-1"] = {311}
tNpcGossip[21361]["tOption3-1"] = {311,312}
tNpcGossip[21361]["OptionFunc311"] = "ChineseValentinesOperation_Confirm</N>1"
tNpcGossip[21361]["Text3-2"] = {321}
tNpcGossip[21361]["tOption3-2"] = {321,322}
tNpcGossip[21361]["OptionFunc321"] = "ChineseValentinesOperation_Confirm</N>2"
tNpcGossip[21361]["Text3-3"] = {331}
tNpcGossip[21361]["tOption3-3"] = {331,332}
tNpcGossip[21361]["OptionFunc331"] = "ChineseValentinesOperation_Confirm</N>3"
-- 成功
tNpcGossip[21361]["Text4-1"] = {411}
tNpcGossip[21361]["tOption4-1"] = {411}
-- 失败 没有组队、队里只有1人、队里2人以上
tNpcGossip[21361]["Text3-4"] = {341}
tNpcGossip[21361]["tOption3-4"] = {341}
-- 失败 报名的不是队长
tNpcGossip[21361]["Text3-5"] = {351}
tNpcGossip[21361]["tOption3-5"] = {351}

-- 21362 恋爱女神
tNpcFace[5943] = 123

tNpcGossip[21362] = tNpcGossip[21362] or DefaultNpc:new{}
tNpcGossip[21362]["OptionHidden"] = 1
tNpcGossip[21362]["DialogueText"] = tChineseValentinesOperation_Text[21362]

-- 活动前
tNpcGossip[21362]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[21362]["tOption1-1"] = {1}
tNpcGossip[21362]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"])
end

-- 活动后
tNpcGossip[21362]["Text1-2"] = {121}
tNpcGossip[21362]["tOption1-2"] = {2}
tNpcGossip[21362]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"])
end

-- 活动中
-- 等级不足
tNpcGossip[21362]["Text1-3"] = {131,132,113,114,115}
tNpcGossip[21362]["tOption1-3"] = {3}
tNpcGossip[21362]["ChkFunc1-3"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		if not User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
			return true
		end
	end
	
	return false
end
-- 等级满足 敌对阵营
tNpcGossip[21362]["Text1-4"] = {141}
tNpcGossip[21362]["tOption1-4"] = {4}
tNpcGossip[21362]["ChkFunc1-4"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
			local nNpcId = Get_NpcId()
			local nOpposedCamp = tChineseValentinesOperation_Data["NPCOpposedCamp"][nNpcId]
			local nUserCamp = ChineseValentinesOperation_UserCamp()
			if nUserCamp == nOpposedCamp then
				return true
			end
		end
	end
	
	return false
end
-- 等级满足 非敌对阵营
tNpcGossip[21362]["Text1-5"] = {131,132,113,115}
tNpcGossip[21362]["tOption1-5"] = {5,6,7,8}
tNpcGossip[21362]["ChkFunc1-5"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
			local nNpcId = Get_NpcId()
			local nOpposedCamp = tChineseValentinesOperation_Data["NPCOpposedCamp"][nNpcId]
			local nUserCamp = ChineseValentinesOperation_UserCamp()
			if nUserCamp ~= nOpposedCamp then
				return true
			end
		end
	end
	
	return false
end
tNpcGossip[21362]["OptionPoint5"] = "2-2"
tNpcGossip[21362]["OptionPoint6"] = "2-3"
tNpcGossip[21362]["OptionFunc7"] = "ChineseValentinesOperation_Web"
tNpcGossip[21362]["OptionPoint8"] = "2-1"

-- 作战攻略
tNpcGossip[21362]["Text2-1"] = {211,212,213,214,215,216,217,218}
tNpcGossip[21362]["tOption2-1"] = {211}

-- 上交鲜花
tNpcGossip[21362]["Text2-2"] = {221,222,223,224,225,226,227,228,229}
tNpcGossip[21362]["tOption2-2"] = {221,222,223,224,225}
tNpcGossip[21362]["OptionFunc221"] = "ChineseValentinesOperation_Flower</N>1"
tNpcGossip[21362]["OptionFunc222"] = "ChineseValentinesOperation_Flower</N>2"
tNpcGossip[21362]["OptionFunc223"] = "ChineseValentinesOperation_Flower</N>3"
tNpcGossip[21362]["OptionFunc224"] = "ChineseValentinesOperation_Flower</N>4"
tNpcGossip[21362]["ChkFunc2-2"] = function()
	-- stc(172,13) 记录玩家每日上交鲜花获得的魅力值
	local nFlowersEventType = tChineseValentinesOperation_Data["Stc"]["Flowers"]["EventType"]
	local nFlowersDataType = tChineseValentinesOperation_Data["Stc"]["Flowers"]["DataType"]
	local nValue = 0
	Task_StcReset(nFlowersEventType,nFlowersDataType)
	if Task_ChkStcValue(nFlowersEventType,nFlowersDataType,">",0) then
		nValue = Get_UserStatisticValue(nFlowersEventType,nFlowersDataType)
	end
	tNpcGossip[21362]["Text228"] = string.format(tChineseValentinesOperation_Text[21362]["Text228"],nValue)
	
	return true
end
-- 上交鲜花类型
tNpcGossip[21362]["Text3-1"] = {311}
tNpcGossip[21362]["tOption3-1"] = {311,312,313,314,315,316}
-- 上交的鲜花份数
tNpcGossip[21362]["Text4-1"] = {411}
tNpcGossip[21362]["tOption4-1"] = {411,412}
-- 输入有误
tNpcGossip[21362]["Text5-1"] = {511}
tNpcGossip[21362]["tOption5-1"] = {511}
-- 数量不足
tNpcGossip[21362]["Text5-2"] = {521}
tNpcGossip[21362]["tOption5-2"] = {521}
-- 成功上交
tNpcGossip[21362]["Text5-3"] = {531,532,533}
tNpcGossip[21362]["tOption5-3"] = {531,532}
tNpcGossip[21362]["OptionFunc531"] = "ChineseValentinesOperation_Web"
tNpcGossip[21362]["OptionPoint532"] = "2-2"

-- 上交宴会道具
tNpcGossip[21362]["Text2-3"] = {231,232,233,234,235,236}
tNpcGossip[21362]["tOption2-3"] = {231,232,233,234}
tNpcGossip[21362]["OptionFunc231"] = "ChineseValentinesOperation_Item</N>1"
tNpcGossip[21362]["OptionFunc232"] = "ChineseValentinesOperation_Item</N>2"
tNpcGossip[21362]["OptionFunc233"] = "ChineseValentinesOperation_Item</N>3"
-- 上交的道具数量
tNpcGossip[21362]["Text3-2"] = {321}
tNpcGossip[21362]["tOption3-2"] = {321,322}
-- 输入有误
tNpcGossip[21362]["Text4-2"] = {421}
tNpcGossip[21362]["tOption4-2"] = {421}
-- 数量不足
tNpcGossip[21362]["Text4-3"] = {431}
tNpcGossip[21362]["tOption4-3"] = {431}
-- 成功上交
tNpcGossip[21362]["Text4-4"] = {441,442,443}
tNpcGossip[21362]["tOption4-4"] = {441,442}
tNpcGossip[21362]["OptionFunc441"] = "ChineseValentinesOperation_Web"
tNpcGossip[21362]["OptionPoint442"] = "2-3"

-- 21363 火焰贵族
-- 21364 葬爱贵族
-- 21365 孤高贵族
tNpcFace[5944] = 82
tNpcFace[5945] = 68
tNpcFace[5946] = 35
for i = 21363,21365 do
tNpcGossip[i] = tNpcGossip[i] or DefaultNpc:new{}
tNpcGossip[i]["OptionHidden"] = 1
tNpcGossip[i]["DialogueText"] = tChineseValentinesOperation_Text[i]

-- 活动后
tNpcGossip[i]["Text1-1"] = {111}
tNpcGossip[i]["tOption1-1"] = {1}
tNpcGossip[i]["ChkFunc1-1"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"])
end

-- 活动中
-- 等级不足
tNpcGossip[i]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[i]["tOption1-2"] = {2}
tNpcGossip[i]["ChkFunc1-2"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		if not User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
			return true
		end
	end
	
	return false
end

-- 等级满足 敌对阵营 或 无阵营
tNpcGossip[i]["Text1-3"] = {131}
tNpcGossip[i]["tOption1-3"] = {3}
tNpcGossip[i]["ChkFunc1-3"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
			local nNpcId = Get_NpcId()
			local nOpposedCamp = tChineseValentinesOperation_Data["NPCOpposedCamp"][nNpcId]
			local nUserCamp = ChineseValentinesOperation_UserCamp()
			if nUserCamp == nOpposedCamp or nUserCamp <= 0 then
				return true
			end
		end
	end
	
	return false
end
-- 等级满足 非敌对阵营
tNpcGossip[i]["Text1-4"] = {121,122,123,125}
tNpcGossip[i]["tOption1-4"] = {4,5}
tNpcGossip[i]["ChkFunc1-4"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
			local nNpcId = Get_NpcId()
			local nOpposedCamp = tChineseValentinesOperation_Data["NPCOpposedCamp"][nNpcId]
			local nUserCamp = ChineseValentinesOperation_UserCamp()
			if nUserCamp ~= nOpposedCamp then
				return true
			end
		end
	end
	
	return false
end
tNpcGossip[i]["OptionChkFunc4"] = function ()
	local nNpcId =  Get_NpcId()
	local nStcIndex = tChineseValentinesOperation_Data["StcIndex"][nNpcId]
	local nEventType = tChineseValentinesOperation_Data["Stc"][nStcIndex]["EventType"]
	local nDataType = tChineseValentinesOperation_Data["Stc"][nStcIndex]["DataType"]
	Task_StcReset(nEventType,nDataType)
	local nComplete = tChineseValentinesOperation_Data["Stc"][nStcIndex]["Complete"]
	if Task_ChkStcValue(nEventType,nDataType,"<",nComplete) then
		tNpcGossip[nNpcId]["Option4"] = tChineseValentinesOperation_Text[nNpcId]["Option4"]
	else
		tNpcGossip[nNpcId]["Option4"] = tChineseValentinesOperation_Text[nNpcId]["Option4"] .. tChineseValentinesOperation_Text["Msg"]["Complete"]
	end
	
	return true
end
tNpcGossip[i]["OptionFunc4"] = "ChineseValentinesOperation_Mission"

-- 已完成
tNpcGossip[i]["Text2-1"] = {211}
tNpcGossip[i]["tOption2-1"] = {211}
end

-- 21366 爱情园丁
-- 21367 爱情舞者
tNpcFace[5947] = 39
tNpcFace[5948] = 186
for i = 21366,21367 do
tNpcGossip[i] = tNpcGossip[i] or DefaultNpc:new{}
tNpcGossip[i]["OptionHidden"] = 1
tNpcGossip[i]["DialogueText"] = tChineseValentinesOperation_Text[i]

-- 活动后
tNpcGossip[i]["Text1-1"] = {111}
tNpcGossip[i]["tOption1-1"] = {1}
tNpcGossip[i]["ChkFunc1-1"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"])
end

-- 活动中
-- 等级不足
tNpcGossip[i]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[i]["tOption1-2"] = {2}
tNpcGossip[i]["ChkFunc1-2"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		if not User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
			return true
		end
	end
	
	return false
end

-- 等级满足 敌对阵营 或 无阵营
tNpcGossip[i]["Text1-3"] = {131}
tNpcGossip[i]["tOption1-3"] = {3}
tNpcGossip[i]["ChkFunc1-3"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
			local nNpcId = Get_NpcId()
			local nOpposedCamp = tChineseValentinesOperation_Data["NPCOpposedCamp"][nNpcId]
			local nUserCamp = ChineseValentinesOperation_UserCamp()
			if nUserCamp == nOpposedCamp or nUserCamp <= 0 then
				return true
			end
		end
	end
	
	return false
end
-- 等级满足 非敌对阵营
tNpcGossip[i]["Text1-4"] = {121,122,123,125}
tNpcGossip[i]["tOption1-4"] = {4,5}
tNpcGossip[i]["ChkFunc1-4"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
			local nNpcId = Get_NpcId()
			local nOpposedCamp = tChineseValentinesOperation_Data["NPCOpposedCamp"][nNpcId]
			local nUserCamp = ChineseValentinesOperation_UserCamp()
			if nUserCamp ~= nOpposedCamp then
				return true
			end
		end
	end
	
	return false
end
tNpcGossip[i]["OptionChkFunc4"] = function ()
	local nNpcId =  Get_NpcId()
	local nStcIndex = tChineseValentinesOperation_Data["StcIndex"][nNpcId]
	local nEventType = tChineseValentinesOperation_Data["Stc"][nStcIndex]["EventType"]
	local nDataType = tChineseValentinesOperation_Data["Stc"][nStcIndex]["DataType"]
	Task_StcReset(nEventType,nDataType)
	local nComplete = tChineseValentinesOperation_Data["Stc"][nStcIndex]["Complete"]
	if Task_ChkStcValue(nEventType,nDataType,"<",nComplete) then
		tNpcGossip[nNpcId]["Option4"] = tChineseValentinesOperation_Text[nNpcId]["Option4"]
	else
		tNpcGossip[nNpcId]["Option4"] = tChineseValentinesOperation_Text[nNpcId]["Option4"] .. tChineseValentinesOperation_Text["Msg"]["Complete"]
	end
	
	return true
end
tNpcGossip[i]["OptionFunc4"] = "ChineseValentinesOperation_Mission"

-- 已完成
tNpcGossip[i]["Text2-1"] = {211}
tNpcGossip[i]["tOption2-1"] = {211}

-- 没有组队、队里只有1人、队里2人以上
tNpcGossip[i]["Text2-2"] = {221}
tNpcGossip[i]["tOption2-2"] = {221}
end

-- 21368 爱情果农
tNpcFace[5949] = 50
tNpcGossip[21368] = tNpcGossip[21368] or DefaultNpc:new{}
tNpcGossip[21368]["OptionHidden"] = 1
tNpcGossip[21368]["DialogueText"] = tChineseValentinesOperation_Text[21368]

-- 活动后
tNpcGossip[21368]["Text1-1"] = {111}
tNpcGossip[21368]["tOption1-1"] = {1}
tNpcGossip[21368]["ChkFunc1-1"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"])
end

-- 活动中
-- 等级不足
tNpcGossip[21368]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[21368]["tOption1-2"] = {2}
tNpcGossip[21368]["ChkFunc1-2"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		if not User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
			return true
		end
	end
	
	return false
end

-- 等级满足 敌对阵营 或 无阵营
tNpcGossip[21368]["Text1-3"] = {131}
tNpcGossip[21368]["tOption1-3"] = {3}
tNpcGossip[21368]["ChkFunc1-3"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
			local nNpcId = Get_NpcId()
			local nOpposedCamp = tChineseValentinesOperation_Data["NPCOpposedCamp"][nNpcId]
			local nUserCamp = ChineseValentinesOperation_UserCamp()
			if nUserCamp == nOpposedCamp or nUserCamp <= 0 then
				return true
			end
		end
	end
	
	return false
end
-- 等级满足 非敌对阵营
tNpcGossip[21368]["Text1-4"] = {121,122,123,125}
tNpcGossip[21368]["tOption1-4"] = {4,5,6}
tNpcGossip[21368]["ChkFunc1-4"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
			local nNpcId = Get_NpcId()
			local nOpposedCamp = tChineseValentinesOperation_Data["NPCOpposedCamp"][nNpcId]
			local nUserCamp = ChineseValentinesOperation_UserCamp()
			if nUserCamp ~= nOpposedCamp then
				return true
			end
		end
	end
	
	return false
end
tNpcGossip[21368]["OptionChkFunc4"] = function ()
	local nNpcId =  Get_NpcId()
	local nStcIndex = tChineseValentinesOperation_Data["StcIndex"][nNpcId]
	local nEventType = tChineseValentinesOperation_Data["Stc"][nStcIndex]["EventType"]
	local nDataType = tChineseValentinesOperation_Data["Stc"][nStcIndex]["DataType"]
	Task_StcReset(nEventType,nDataType)
	local nComplete = tChineseValentinesOperation_Data["Stc"][nStcIndex]["Complete"]
	if Task_ChkStcValue(nEventType,nDataType,"<",nComplete) then
		tNpcGossip[nNpcId]["Option4"] = tChineseValentinesOperation_Text[nNpcId]["Option4"]
	else
		tNpcGossip[nNpcId]["Option4"] = tChineseValentinesOperation_Text[nNpcId]["Option4"] .. tChineseValentinesOperation_Text["Msg"]["Complete"]
	end
	
	return true
end
tNpcGossip[21368]["OptionChkFunc5"] = function ()
	local nNpcId =  Get_NpcId()
	local nStcIndex = tChineseValentinesOperation_Data["StcIndex"][nNpcId]
	local nEventType = tChineseValentinesOperation_Data["Stc"][nStcIndex]["EventType"]
	local nDataType = tChineseValentinesOperation_Data["Stc"][nStcIndex]["DataType"]
	Task_StcReset(nEventType,nDataType)
	local nComplete = tChineseValentinesOperation_Data["Stc"][nStcIndex]["Complete"]
	if Task_ChkStcValue(nEventType,nDataType,"<",nComplete) and Task_ChkStcValue(nEventType,nDataType,">",0) then
		return true
	else
		return false
	end
end
tNpcGossip[21368]["OptionFunc4"] = "ChineseValentinesOperation_Mission"
tNpcGossip[21368]["OptionFunc5"] = "ChineseValentinesOperation_SubmitFruit"

-- 已完成
tNpcGossip[21368]["Text2-1"] = {211}
tNpcGossip[21368]["tOption2-1"] = {211}

-- 没有组队、队里只有1人、队里2人以上
tNpcGossip[21368]["Text2-2"] = {221}
tNpcGossip[21368]["tOption2-2"] = {221}

-- 21393 定情信物保管人
tNpcFace[5950] = 245
tNpcGossip[21393] = tNpcGossip[21393] or DefaultNpc:new{}
tNpcGossip[21393]["OptionHidden"] = 1
tNpcGossip[21393]["DialogueText"] = tChineseValentinesOperation_Text[21393]

-- 活动后
tNpcGossip[21393]["Text1-1"] = {111}
tNpcGossip[21393]["tOption1-1"] = {1}
tNpcGossip[21393]["ChkFunc1-1"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"])
end

-- 活动中
-- 等级不足
tNpcGossip[21393]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[21393]["tOption1-2"] = {2}
tNpcGossip[21393]["ChkFunc1-2"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		if not User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
			return true
		end
	end
	
	return false
end

-- 等级满足 敌对阵营 或 无阵营
tNpcGossip[21393]["Text1-3"] = {131}
tNpcGossip[21393]["tOption1-3"] = {3}
tNpcGossip[21393]["ChkFunc1-3"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
			local nNpcId = Get_NpcId()
			local nOpposedCamp = tChineseValentinesOperation_Data["NPCOpposedCamp"][nNpcId]
			local nUserCamp = ChineseValentinesOperation_UserCamp()
			if nUserCamp == nOpposedCamp or nUserCamp <= 0 then
				return true
			end
		end
	end
	
	return false
end
-- 等级满足 非敌对阵营
tNpcGossip[21393]["Text1-4"] = {121,122,123,125}
tNpcGossip[21393]["tOption1-4"] = {4,5}
tNpcGossip[21393]["ChkFunc1-4"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
			local nNpcId = Get_NpcId()
			local nOpposedCamp = tChineseValentinesOperation_Data["NPCOpposedCamp"][nNpcId]
			local nUserCamp = ChineseValentinesOperation_UserCamp()
			if nUserCamp ~= nOpposedCamp then
				return true
			end
		end
	end
	
	return false
end
tNpcGossip[21393]["OptionFunc4"] = string.format("</F>ChineseValentinesOperation_FindTheWay</N>21393")

-- 21392 22637 秘境传送使
tNpcFace[526] = 151
tNpcGossip[21392] = tNpcGossip[21392] or DefaultNpc:new{}
tNpcGossip[21392]["OptionHidden"] = 1
tNpcGossip[21392]["DialogueText"] = tChineseValentinesOperation_Text[21392]

tNpcGossip[21392]["Text1-1"] = {111}
tNpcGossip[21392]["tOption1-1"] = {1}
tNpcGossip[21392]["OptionFunc1"] = "ChineseValentinesOperation_Back"

tNpcGossip[22637] = tNpcGossip[22637] or DefaultNpc:new{}
tNpcGossip[22637]["OptionHidden"] = 1
tNpcGossip[22637]["DialogueText"] = tChineseValentinesOperation_Text[22637]

tNpcGossip[22637]["Text1-1"] = {111}
tNpcGossip[22637]["tOption1-1"] = {1}
tNpcGossip[22637]["OptionFunc1"] = "ChineseValentinesOperation_Back"

-- 21395 单身狂欢夜主办方
-- 21396 CP狂欢Party主办方
tNpcFace[5952] = 235
tNpcFace[5953] = 85
for i = 21395,21396 do
tNpcGossip[i] = tNpcGossip[i] or DefaultNpc:new{}
tNpcGossip[i]["OptionHidden"] = 1
tNpcGossip[i]["DialogueText"] = tChineseValentinesOperation_Text[i]

-- 活动后
tNpcGossip[i]["Text1-1"] = {111}
tNpcGossip[i]["tOption1-1"] = {1}
tNpcGossip[i]["ChkFunc1-1"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["NewActivityTime"])
end

-- 活动中
-- 等级不足
tNpcGossip[i]["Text1-2"] = {121,122,123,124,125,126}
tNpcGossip[i]["tOption1-2"] = {2}
tNpcGossip[i]["ChkFunc1-2"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["NewActivityTime"]) then
		if not User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
			return true
		end
	end
	
	return false
end

-- 等级满足 无阵营
tNpcGossip[i]["Text1-3"] = {131}
tNpcGossip[i]["tOption1-3"] = {131}
tNpcGossip[i]["ChkFunc1-3"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["NewActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
			local nUserCamp = ChineseValentinesOperation_UserCamp()
			if nUserCamp <= 0 then
				return true
			end
		end
	end
	
	return false
end

-- 等级满足 敌对阵营
tNpcGossip[i]["Text1-6"] = {161}
tNpcGossip[i]["tOption1-6"] = {161}
tNpcGossip[i]["ChkFunc1-6"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["NewActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
			local nNpcId = Get_NpcId()
			local nOpposedCamp = tChineseValentinesOperation_Data["NPCOpposedCamp"][nNpcId]
			local nUserCamp = ChineseValentinesOperation_UserCamp()
			if nUserCamp == nOpposedCamp then
				return true
			end
		end
	end
	
	return false
end

-- 等级满足 非敌对阵营 官方主办时间未到且阵营活力值不足
tNpcGossip[i]["Text1-4"] = {141,142,143,144}
tNpcGossip[i]["tOption1-4"] = {4}
tNpcGossip[i]["ChkFunc1-4"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["NewActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
			local nNpcId = Get_NpcId()
			local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][nNpcId]
			local nUserCamp = ChineseValentinesOperation_UserCamp()
			if nUserCamp == nSelfCamp then
				-- 本服Party是否开启
				if not ChineseValentinesOperation_PartyOn() then
					local nGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Energy"]
					local nPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Energy"][nSelfCamp]
					local nValue = Get_SysDynaGlobalData(nGlobalId,nPos)
					local nNeed = tChineseValentinesOperation_Data["NeedEnergy"] - nValue
					if nNeed < 0 then
						nNeed = 0
					end
					tNpcGossip[nNpcId]["Text144"] = string.format(tChineseValentinesOperation_Text[nNpcId]["Text144"],nValue,nNeed)
					return true
				end
				
			end
		end
	end
	
	return false
end

-- 等级满足 非敌对阵营 阵营活力值满足或官方主办时间到了
tNpcGossip[i]["Text1-5"] = {121,122,123,124,126}
tNpcGossip[i]["tOption1-5"] = {5,6,7,8,9,10}
tNpcGossip[i]["ChkFunc1-5"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["NewActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tChineseValentinesOperation_Data["Level"],tChineseValentinesOperation_Data["Metempsychosis"]) then
			local nNpcId = Get_NpcId()
			local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][nNpcId]
			local nUserCamp = ChineseValentinesOperation_UserCamp()
			if nUserCamp == nSelfCamp then
				-- 本服Party是否开启
				if ChineseValentinesOperation_PartyOn() then
					return true
				end
			end
		end
	end
	
	return false
end
tNpcGossip[i]["OptionChkFunc5"] = function ()
	if Sys_ChkDayTime(tActivityTime["ChineseValentinesOperation"]["Official"]) then
		return true
	end
	
	return false
end
tNpcGossip[i]["OptionChkFunc6"] = function ()
	if not Sys_ChkDayTime(tActivityTime["ChineseValentinesOperation"]["Official"]) then
		return true
	end
	
	return false
end
tNpcGossip[i]["OptionChkFunc7"] = function ()
	local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][i]
	local nGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Party"]
	local nPartyPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Party"][nSelfCamp]
	if not Sys_ChkDayTime(tActivityTime["ChineseValentinesOperation"]["Personal"]) then
		if Get_SysDynaGlobalData(nGlobalId,nPartyPos) <= 0 then
			return true
		end
	end
	
	return false
end
tNpcGossip[i]["OptionChkFunc9"] = function ()
	-- stc(173,29) 记录玩家是否是私人Party举办人
	local nHostEventType = tChineseValentinesOperation_Data["Stc"]["HostParty"]["EventType"]
	local nHostDataType = tChineseValentinesOperation_Data["Stc"]["HostParty"]["DataType"]
	local nHostComplete = tChineseValentinesOperation_Data["Stc"]["HostParty"]["Complete"]
	-- 是否超过30分钟
	if Task_StcInterval(nHostEventType,nHostDataType,30,1) then
		Task_SetStatistic(nHostEventType,nHostDataType,0,1)
		Task_SetStcTimestamp(nHostEventType,nHostDataType,0)
	end
	if Task_ChkStcValue(nHostEventType,nHostDataType,">=",nHostComplete) then
		return true
	end
	
	return false
end
-- tNpcGossip[i]["OptionFunc5"] = "ChineseValentinesOperation_Before</N>1" -- 1 官方
tNpcGossip[i]["OptionFunc5"] = "ChineseValentinesOperation_OfficialTime" -- 延长私人Party举办时间 官方举办时间统一出提示
tNpcGossip[i]["OptionFunc6"] = "ChineseValentinesOperation_Before</N>2" -- 2 私人
tNpcGossip[i]["OptionFunc7"] = "ChineseValentinesOperation_Host"
tNpcGossip[i]["OptionPoint8"] = "2-6"
tNpcGossip[i]["OptionPoint9"] = "2-8"

-- 【（官方）】
-- 选择身份
tNpcGossip[i]["Text2-1"] = {211}
tNpcGossip[i]["tOption2-1"] = {211,212}
tNpcGossip[i]["OptionFunc211"] = "ChineseValentinesOperation_VIP</N>1" -- 1 官方
tNpcGossip[i]["OptionFunc212"] = "ChineseValentinesOperation_InPartyMap</N>1</N>2" -- 官方 观众
-- 成功，二次确认
tNpcGossip[i]["Text4-1"] = {411}
tNpcGossip[i]["tOption4-1"] = {411,412}
tNpcGossip[i]["OptionFunc411"] = "ChineseValentinesOperation_InPartyMap</N>1</N>1" -- 官方 贵宾

-- 【（私人）】
-- 输入密码
tNpcGossip[i]["Text2-2"] = {221}
tNpcGossip[i]["tOption2-2"] = {221}
-- 选择身份
tNpcGossip[i]["Text2-9"] = {291}
tNpcGossip[i]["tOption2-9"] = {291,292}
tNpcGossip[i]["OptionFunc291"] = "ChineseValentinesOperation_VIP</N>2" -- 2 私人
tNpcGossip[i]["OptionFunc292"] = "ChineseValentinesOperation_InPartyMap</N>2</N>2" -- 私人 观众
-- 成功，二次确认
tNpcGossip[i]["Text4-2"] = {421}
tNpcGossip[i]["tOption4-2"] = {421,422}
tNpcGossip[i]["OptionFunc421"] = "ChineseValentinesOperation_InPartyMap</N>2</N>1" -- 私人 贵宾

-- 成为贵宾
tNpcGossip[i]["Text5-1"] = {511}
tNpcGossip[i]["tOption5-1"] = {511}

-- 失败，没有举办Party
tNpcGossip[i]["Text3-1"] = {311}
tNpcGossip[i]["tOption3-1"] = {311}

-- 密钥错误
tNpcGossip[i]["Text3-2"] = {321}
tNpcGossip[i]["tOption3-2"] = {321}

-- 【我要举办Party】
-- 失败，背包中没有主办卡
tNpcGossip[i]["Text2-3"] = {231}
tNpcGossip[i]["tOption2-3"] = {231}
-- 失败，已经有人在举办
tNpcGossip[i]["Text2-4"] = {241}
tNpcGossip[i]["tOption2-4"] = {241}
-- 成功
tNpcGossip[i]["Text2-5"] = {251}
tNpcGossip[i]["tOption2-5"] = {251}

-- 【Party指南】
tNpcGossip[i]["Text2-6"] = {261,262,263,264,265,266,267,268,269,270,271}
tNpcGossip[i]["tOption2-6"] = {261}

-- 【Party密钥】
tNpcGossip[i]["Text2-8"] = {281,282,283,284}
tNpcGossip[i]["tOption2-8"] = {281}
tNpcGossip[i]["ChkFunc2-8"] = function()
	local nNpcId = Get_NpcId()
	local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][nNpcId]
	local nGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Party"]
	local nKeyPos = tChineseValentinesOperation_Data["GlobalIdPos"]["Key"][nSelfCamp]
	local nKey = Get_SysDynaGlobalData(nGlobalId,nKeyPos)
	tNpcGossip[nNpcId]["Text282"] = string.format(tChineseValentinesOperation_Text[nNpcId]["Text282"],nKey)
	return true
end
end

-- 贵宾宝箱
tNpcFace[527] = 849
for i = 21397,21402 do
tNpcGossip[i] = tNpcGossip[i] or DefaultNpc:new{}
tNpcGossip[i]["OptionHidden"] = 1
tNpcGossip[i]["DialogueText"] = tChineseValentinesOperation_Text[i]
-- 活动后
tNpcGossip[i]["Text1-1"] = {111}
tNpcGossip[i]["tOption1-1"] = {1}
-- 活动中 等级不足
tNpcGossip[i]["Text1-2"] = {121,122,123}
tNpcGossip[i]["tOption1-2"] = {2}
-- 活动中 等级满足
tNpcGossip[i]["Text1-3"] = {121,122,123}
tNpcGossip[i]["tOption1-3"] = {3,4}
tNpcGossip[i]["OptionFunc3"] = string.format("</F>ChineseValentinesOperation_OpenSeniorGuestChest</N>%d",i)
-- 不是贵宾
tNpcGossip[i]["Text2-1"] = {211}
tNpcGossip[i]["tOption2-1"] = {211}
end
for i = 21435,21440 do
tNpcGossip[i] = tNpcGossip[i] or DefaultNpc:new{}
tNpcGossip[i]["OptionHidden"] = 1
tNpcGossip[i]["DialogueText"] = tChineseValentinesOperation_Text[i]
-- 活动后
tNpcGossip[i]["Text1-1"] = {111}
tNpcGossip[i]["tOption1-1"] = {1}
-- 活动中 等级不足
tNpcGossip[i]["Text1-2"] = {121,122,123}
tNpcGossip[i]["tOption1-2"] = {2}
-- 活动中 等级满足
tNpcGossip[i]["Text1-3"] = {121,122,123}
tNpcGossip[i]["tOption1-3"] = {3,4}
tNpcGossip[i]["OptionFunc3"] = string.format("</F>ChineseValentinesOperation_OpenSeniorGuestChest</N>%d",i)
-- 不是贵宾
tNpcGossip[i]["Text2-1"] = {211}
tNpcGossip[i]["tOption2-1"] = {211}
end

-- 21394 21444 Party主持人
tNpcFace[5951] = 237
for i,v in ipairs(tChineseValentinesOperation_Data["PartyNpc"]) do
tNpcGossip[v] = tNpcGossip[v] or DefaultNpc:new{}
tNpcGossip[v]["OptionHidden"] = 1
tNpcGossip[v]["DialogueText"] = tChineseValentinesOperation_Text[v]

-- 活动后
tNpcGossip[v]["Text1-1"] = {111}
tNpcGossip[v]["tOption1-1"] = {1}
tNpcGossip[v]["ChkFunc1-1"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["NewPartyEndTime"])
end

-- 活动中
tNpcGossip[v]["Text1-2"] = {121}
tNpcGossip[v]["tOption1-2"] = {121,122,123,124,125,126}
tNpcGossip[v]["ChkFunc1-2"] = function()
	return Sys_ChkFullTime(tActivityTime["ChineseValentinesOperation"]["NewPartyEndTime"])
end
tNpcGossip[v]["OptionChkFunc121"] = function ()
	return Sys_ChkDayTime(tActivityTime["ChineseValentinesOperation"]["Official"])
end
tNpcGossip[v]["OptionChkFunc122"] = function ()
	return not Sys_ChkDayTime(tActivityTime["ChineseValentinesOperation"]["Official"])
end
tNpcGossip[v]["OptionPoint121"] = "2-1"
tNpcGossip[v]["OptionPoint122"] = "2-1"
tNpcGossip[v]["OptionFunc123"] = "ChineseValentinesOperation_Fire"
tNpcGossip[v]["OptionFunc124"] = "ChineseValentinesOperation_CallTheCPRain"
tNpcGossip[v]["OptionPoint125"] = "2-5"

-- 官方 或 私人
tNpcGossip[v]["Text2-1"] = {211,212,213,214}
tNpcGossip[v]["tOption2-1"] = {211}
tNpcGossip[v]["ChkFunc2-1"] = function()
	local nNpcId = Get_NpcId()
	local nSelfCamp = tChineseValentinesOperation_Data["NPCCamp"][nNpcId]
	local nGlobalId = tChineseValentinesOperation_Data["GlobalId"]["Air"]
	local nPos1 = tChineseValentinesOperation_Data["GlobalIdPos"]["Air"][1]
	local nPos2 = tChineseValentinesOperation_Data["GlobalIdPos"]["Air"][2]
	local nValue1 = Get_SysDynaGlobalData(nGlobalId,nPos1)
	local nValue2 = Get_SysDynaGlobalData(nGlobalId,nPos2)
	tNpcGossip[nNpcId]["Text212"] = string.format(tChineseValentinesOperation_Text[nNpcId]["Text212"],nValue1)
	tNpcGossip[nNpcId]["Text213"] = string.format(tChineseValentinesOperation_Text[nNpcId]["Text213"],nValue2)
	-- 官方
	if Sys_ChkDayTime(tActivityTime["ChineseValentinesOperation"]["Official"]) then
		if nSelfCamp == 1 then
			tNpcGossip[nNpcId]["Text2-1"] = {211,212,213,214}
		else
			tNpcGossip[nNpcId]["Text2-1"] = {211,213,212,214}
		end
	-- 私人
	elseif nSelfCamp == 1 then
		tNpcGossip[nNpcId]["Text2-1"] = {211,212,214}
	else
		tNpcGossip[nNpcId]["Text2-1"] = {211,213,214}
	end
	return true
end

-- 放烟花
tNpcGossip[v]["Text2-2"] = {221}
tNpcGossip[v]["tOption2-2"] = {221,222}
tNpcGossip[v]["OptionFunc221"] = "ChineseValentinesOperation_ConfirmFire"
-- 燃放成功
tNpcGossip[v]["Text3-1"] = {311}
tNpcGossip[v]["tOption3-1"] = {311}

-- 召唤天石雨
tNpcGossip[v]["Text2-3"] = {231}
tNpcGossip[v]["tOption2-3"] = {231}
tNpcGossip[v]["Text2-4"] = {241}
tNpcGossip[v]["tOption2-4"] = {241}

-- 气氛攻略
tNpcGossip[v]["Text2-5"] = {251,252,253,254,255,256,257,258}
tNpcGossip[v]["tOption2-5"] = {251}
end

--------------------------------------物品配置-------------------------------------------
-- 3307147 面具
-- 3307148 香槟
-- 3307149 礼服
tItem[3307147] = tItem[3307147] or {}
tItem[3307148] = tItem[3307147] or {}
tItem[3307149] = tItem[3307147] or {}
tItem[3307147]["Function"] = function(nItemId,sItemName)
	-- 过期删除
	local nItemNum = Get_CountItemType(nItemId,0)
	local sLog = string.format(tChineseValentinesOperation_Data["Log"]["Timeout"],nItemId,nItemNum)
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		Item_DelAllItemByType(nItemId)
		User_TalkChannel2005(tChineseValentinesOperation_Text["Msg"]["TimeOut"])
		Sys_SaveActionRewardLog(sLog)
		return
	end
	
	-- 判断阵营 寻路
	local nUserCamp = ChineseValentinesOperation_UserCamp()
	if nUserCamp <= 0 then
		local nPosX = tChineseValentinesOperation_Data["Location"]["Back"]["PosX"]
		local nPosY = tChineseValentinesOperation_Data["Location"]["Back"]["PosY"]
		local nMapId = tChineseValentinesOperation_Data["Location"]["Back"]["MapId"]
		local sFunc = string.format("Sys_GotoSomeWhere</N>%d</N>%d</N>%d",nPosX,nPosY,nMapId)
		Sys_MsgBox(tChineseValentinesOperation_Text["Msg"]["NoCamp"],sFunc)
		return
	end
	
	local nNpcId = tChineseValentinesOperation_Data["MissionNPC"][nUserCamp]
	NpcPosition_PathFind(nNpcId)
end

-- 3307150 包装纸
tItem[3307150] = tItem[3307150] or {}
tItem[3307150]["Function"] = function(nItemId,sItemName)
	-- 过期删除
	local nItemNum = Get_CountItemType(nItemId,0)
	local sLog = string.format(tChineseValentinesOperation_Data["Log"]["Timeout"],nItemId,nItemNum)
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		Item_DelAllItemByType(nItemId)
		User_TalkChannel2005(tChineseValentinesOperation_Text["Msg"]["TimeOut"])
		Sys_SaveActionRewardLog(sLog)
		return
	end
end

-- 3307151 我心永恒碎片
tItemFace[3307151] = 1368
tItem[3307151] = tItem[3307151] or {}
tItem[3307151]["DialogueText"] = tChineseValentinesOperation_Text[3307151]
tItem[3307151]["Text1-1"] = {111,112,113}
tItem[3307151]["tOption1-1"] = {1,2,3}
tItem[3307151]["OptionFunc1"] = "ChineseValentinesOperation_Double</N>3307151</N>1"
tItem[3307151]["OptionFunc2"] = "ChineseValentinesOperation_Compose</N>3307151</N>30"
tItem[3307151]["OptionFunc3"] = "ChineseValentinesOperation_Exchange</N>3307151"
-- 成功翻倍
tItem[3307151]["Text2-1"] = {211}
tItem[3307151]["tOption2-1"] = {211}
tItem[3307151]["OptionFunc211"] = "ChineseValentinesOperation_ReturnFragment</N>3307151"
-- 碎片消失
tItem[3307151]["Text2-2"] = {221}
tItem[3307151]["tOption2-2"] = {221}
tItem[3307151]["OptionFunc221"] = "ChineseValentinesOperation_ReturnFragment</N>3307151"

-- 3307164 情人节精装礼盒
-- 3307165 情人节豪华礼盒
tItemFace[3307164] = 1333
tItemFace[3307165] = 1334
for i = 3307164,3307165 do
tItem[i] = tItem[i] or {}
tItem[i]["Function"] = function(nItemId,sItemName)
	-- 过期删除
	local nItemNum = Get_CountItemType(nItemId,0)
	local sLog = string.format(tChineseValentinesOperation_Data["Log"]["Timeout"],nItemId,nItemNum)
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		Item_DelAllItemByType(nItemId)
		User_TalkChannel2005(tChineseValentinesOperation_Text["Msg"]["TimeOut"])
		Sys_SaveActionRewardLog(sLog)
		return
	end
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[i]["DialogueText"] = tChineseValentinesOperation_Text[i]
tItem[i]["Text1-1"] = {111,112}
tItem[i]["tOption1-1"] = {1,2}
tItem[i]["OptionFunc1"] = "ChineseValentinesOperation_Open"
tItem[i]["OptionFunc2"] = string.format("ChineseValentinesOperation_Update</N>%d",i)
end

-- 过期删除 随机给奖
-- 3307166 情人节尊享礼盒
-- 3307167 狂欢派对礼盒
tItem[3307166] = tItem[3307166] or {}
tItem[3307167] = tItem[3307166] or {}
tItem[3307166]["Function"] = function(nItemId,sItemName)
	ChineseValentinesOperation_Open(nItemId)
end

-- 3307168 贵宾礼盒
tItem[3307168] = tItem[3307168] or {}
tItem[3307168]["Function"] = function(nItemId,sItemName)
	ChineseValentinesOperation_NewOpen(nItemId)
end

-- 3307152 火把
-- 3307153 爱情露水
-- 3307154 爱情果
-- 3307160 定情信物
tItem[3307152] = tItem[3307152] or {}
tItem[3307153] = tItem[3307152] or {}
tItem[3307154] = tItem[3307152] or {}
tItem[3307160] = tItem[3307152] or {}
tItem[3307152]["Function"] = function(nItemId,sItemName)
	-- 过期删除
	local nItemNum = Get_CountItemType(nItemId,0)
	local sLog = string.format(tChineseValentinesOperation_Data["Log"]["Timeout"],nItemId,nItemNum)
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		Item_DelAllItemByType(nItemId)
		User_TalkChannel2005(tChineseValentinesOperation_Text["Msg"]["TimeOut"])
		Sys_SaveActionRewardLog(sLog)
		return
	end
	
	-- 寻路
	local nPosX = tChineseValentinesOperation_Data["Location"][nItemId]["PosX"]
	local nPosY = tChineseValentinesOperation_Data["Location"][nItemId]["PosY"]
	local nMapId = tChineseValentinesOperation_Data["Location"][nItemId]["MapId"]
	local nNpcId = tChineseValentinesOperation_Data["Location"][nItemId]["NpcId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

-- 3307161 单身狂欢夜主办卡
-- 3307162 CP狂欢夜主办卡
tItem[3307161] = tItem[3307161] or {}
tItem[3307162] = tItem[3307161] or {}
tItem[3307161]["Function"] = function(nItemId,sItemName)
	-- 过期删除
	local nItemNum = Get_CountItemType(nItemId,0)
	local sLog = string.format(tChineseValentinesOperation_Data["Log"]["Timeout"],nItemId,nItemNum)
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["NewActivityTime"]) then
		Item_DelAllItemByType(nItemId)
		User_TalkChannel2005(tChineseValentinesOperation_Text["Msg"]["TimeOut"])
		Sys_SaveActionRewardLog(sLog)
		return
	end
	
	-- 寻路
	local nPosX = tChineseValentinesOperation_Data["Location"][nItemId]["PosX"]
	local nPosY = tChineseValentinesOperation_Data["Location"][nItemId]["PosY"]
	local nMapId = tChineseValentinesOperation_Data["Location"][nItemId]["MapId"]
	local nNpcId = tChineseValentinesOperation_Data["Location"][nItemId]["NpcId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

-- 3307169 单身贵族一阶礼包
-- 3307170 CP一阶礼包
-- 3307171 单身贵族二阶礼包
-- 3307172 CP二阶礼包
-- 3307173 单身贵族三阶礼包
-- 3307174 CP三阶礼包
tItemFace[3307169] = 1335
tItemFace[3307170] = 1335
tItemFace[3307171] = 1336
tItemFace[3307172] = 1336
tItemFace[3307173] = 1337
tItemFace[3307174] = 1337
for i = 3307169,3307174 do
tItem[i] = tItem[i] or {}
tItem[i]["DialogueText"] = tChineseValentinesOperation_Text[i]
tItem[i]["Text1-1"] = {111}
tItem[i]["tOption1-1"] = {1,2}
tItem[i]["OptionFunc1"] = "ChineseValentinesOperation_Option</N>1"
tItem[i]["OptionFunc2"] = "ChineseValentinesOperation_Option</N>2"
end

-- 3307175 单身贵族四阶礼包
-- 3307176 CP四阶礼包
-- 3307329 99朵郁金香
-- 3307330 999朵郁金香礼包
-- 3307331 999朵百合礼包
-- 3307332 999朵兰花礼包
-- 3307333 999朵玫瑰礼包
-- 3307483 TwilightStarStonePack
-- 3307484 1StonePack
-- 3307572 蝶语之恋翅膀礼包
tItem[3307175] = tItem[3307175] or {}
tItem[3307176] = tItem[3307175] or {}
tItem[3307329] = tItem[3307175] or {}
tItem[3307330] = tItem[3307175] or {}
tItem[3307331] = tItem[3307175] or {}
tItem[3307332] = tItem[3307175] or {}
tItem[3307333] = tItem[3307175] or {}
tItem[3307483] = tItem[3307175] or {}
tItem[3307484] = tItem[3307175] or {}
tItem[3307572] = tItem[3307175] or {}
tItem[3320833] = tItem[3307175] or {}
tItem[3307175]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tChineseValentinesOperation_Reward[nItemId])
	if not bJudge then
		return
	end
	
	--判断物品
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	--若不是打折物品，则直接打开该礼包
	-- local nCutTip = CommonPackage_ExitTicket() 
	local nReturnMoney,tMemoryBin,sEmoneyLog,nZhengItemId = CommonPackage_ReturnPrice(nItemId,1)
	local nSpace = RewardTemplate_GetRewardSpace(tChineseValentinesOperation_Reward[nItemId])+ WarriorsPromotion_JudgeSpace(nItemId)
	
	if tMemoryBin == nil and nReturnMoney == nil then
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItemAndMsg(tChineseValentinesOperation_Reward[nItemId],nUserId,bJudge) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return 
		end
		return
	end
	
	--判断是否在活动时间内
	if not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldActivityTime"]) then
		
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItemAndMsg(tChineseValentinesOperation_Reward[nItemId],nUserId,bJudge) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return 
		end
	else
		
		--有返利,给玩家返相应的天石
		-- if nCutTip == 2 then
		local nEmoney = Get_UserEMoney()
		if nEmoney + nReturnMoney > G_User_MaxEmoney then
			User_TalkChannel2005(tMayPKMonth_Text["Item"]["Text121"])
			Sys_MsgBox(tMayPKMonth_Text["Item"]["Text121"])
			return
		end
		-- end
		
		if User_CheckLeftSpace(nSpace) then
			RewardTemplate_UseItemAndMsg(tChineseValentinesOperation_Reward[nItemId],nUserId,bJudge)
			--给玩家对应的印记
			-- CommonPackage_LocationYing(nItemId,nCutTip)
		
			--若是玩家有打折卷则给玩家放对应的天石
			-- if nCutTip == 2  then
				--给对应的天石
			if CommonPackage_DeleteTicket(nZhengItemId,nItemId) and User_AddEMoney(nReturnMoney) then
				Sys_SaveEmoneyBuy(string.format(sEmoneyLog,nReturnMoney,nReturnMoney))
			end
			-- end
		else
			User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
			Sys_MsgBox(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		end
		
	end
	
end

-- 3307177 情人节外套大礼包
-- 3307178 情人节外套礼包
tItemFace[3307177] = 1349
tItemFace[3307178] = 1350
for i = 3307177,3307178 do
tItem[i] = tItem[i] or {}
tItem[i]["DialogueText"] = tChineseValentinesOperation_Text[i]
tItem[i]["Text1-1"] = {111}
tItem[i]["tOption1-1"] = {1,2,3}
tItem[i]["OptionFunc1"] = "ChineseValentinesOperation_Option</N>1"
tItem[i]["OptionFunc2"] = "ChineseValentinesOperation_Option</N>2"
tItem[i]["OptionFunc3"] = "ChineseValentinesOperation_Option</N>3"
end

-- 3307334 情人节称号礼包
tItemFace[3307334] = 1332
tItem[3307334] = tItem[3307334] or {}
tItem[3307334]["DialogueText"] = tChineseValentinesOperation_Text[3307334]
tItem[3307334]["Function"] = function(nItemId,sItemName)
	if Get_UserSex() == 1 then 
		LinkItemGossipFunc_New(nItemId,"1-1")
	else
		LinkItemGossipFunc_New(nItemId,"1-2")
	end 
end
tItem[3307334]["Text1-1"] = {111}
tItem[3307334]["tOption1-1"] = {111,112,113}
tItem[3307334]["OptionFunc111"] = "ChineseValentinesOperation_TitlePack</N>1</N>1"
tItem[3307334]["OptionFunc112"] = "ChineseValentinesOperation_TitlePack</N>2</N>1"
tItem[3307334]["OptionFunc113"] = "ChineseValentinesOperation_TitlePack</N>3</N>1"
tItem[3307334]["Text1-2"] = {121}
tItem[3307334]["tOption1-2"] = {121,122,123}
tItem[3307334]["OptionFunc121"] = "ChineseValentinesOperation_TitlePack</N>1</N>2"
tItem[3307334]["OptionFunc122"] = "ChineseValentinesOperation_TitlePack</N>2</N>2"
tItem[3307334]["OptionFunc123"] = "ChineseValentinesOperation_TitlePack</N>3</N>2"

-- 3307561 一阶助威礼盒
-- 3307562 二阶助威礼盒
-- 3307563 三阶助威礼盒
-- 3307564 四阶助威礼盒
-- 3307565 五阶助威礼盒
-- 3307566 六阶助威礼盒
-- 3307567 七阶助威礼盒
-- 3307568 八阶助威礼盒
-- 3307569 九阶助威礼盒
-- 3307570 十阶助威礼盒
tItem[3307561] = tItem[3307561] or {}
tItem[3307562] = tItem[3307561] or {}
tItem[3307563] = tItem[3307561] or {}
tItem[3307564] = tItem[3307561] or {}
tItem[3307565] = tItem[3307561] or {}
tItem[3307566] = tItem[3307561] or {}
tItem[3307567] = tItem[3307561] or {}
tItem[3307568] = tItem[3307561] or {}
tItem[3307569] = tItem[3307561] or {}
tItem[3307570] = tItem[3307561] or {}
tItem[3307561]["Function"] = function(nItemId,sItemName)
	-- 过期删除
	local nItemNum = Get_CountItemType(nItemId,0)
	local sLog = string.format(tChineseValentinesOperation_Data["Log"]["Timeout"],nItemId,nItemNum)
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		Item_DelAllItemByType(nItemId)
		User_TalkChannel2005(tChineseValentinesOperation_Text["Msg"]["TimeOut"])
		Sys_SaveActionRewardLog(sLog)
		return
	end
	
	RewardTemplate_UseItemAndMsg(tChineseValentinesOperation_Reward[nItemId])
end

-- 3307571 宴会主办卡可选包
tItemFace[3307571] = 1370
tItem[3307571] = tItem[3307571] or {}
tItem[3307571]["Function"] = function(nItemId,sItemName)
	-- 过期删除
	local nItemNum = Get_CountItemType(nItemId,0)
	local sLog = string.format(tChineseValentinesOperation_Data["Log"]["Timeout"],nItemId,nItemNum)
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesOperation"]["ActivityTime"]) then
		Item_DelAllItemByType(nItemId)
		User_TalkChannel2005(tChineseValentinesOperation_Text["Msg"]["TimeOut"])
		Sys_SaveActionRewardLog(sLog)
		return
	end
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3307571]["DialogueText"] = tChineseValentinesOperation_Text[3307571]
tItem[3307571]["Text1-1"] = {111}
tItem[3307571]["tOption1-1"] = {1,2}
tItem[3307571]["OptionFunc1"] = "ChineseValentinesOperation_CardOption</N>3307571</N>1"
tItem[3307571]["OptionFunc2"] = "ChineseValentinesOperation_CardOption</N>3307571</N>2"

-- 3307180 情人节大作战邀请函
tItemFace[3307180] = 1331
--------------------------------------陷阱模块-------------------------------------------
tTrap[1893]= tTrap[1893] or {}
tTrap[1893]["Function"] = function (nTrapId,nTrapType)
	ChineseValentinesOperation_Complete(nTrapType)
end

tTrap[1902]= tTrap[1902] or {}
tTrap[1902]["Function"] = function (nTrapId,nTrapType)
	ChineseValentinesOperation_LeaveParty(nTrapType)
end
--------------------------------------怪物模块-------------------------------------------
-- local tChineseValentinesOperation_Drop = {}
	-- -- 定情信物 爱情盗匪
	-- tChineseValentinesOperation_Drop[1] = {}
	-- tChineseValentinesOperation_Drop[1]["ActivityTime"] = tActivityTime["ChineseValentinesOperation"]["ActivityTime"]
	-- tChineseValentinesOperation_Drop[1]["Function"] = ChineseValentinesOperation_MonsterDeath
	-- tChineseValentinesOperation_Drop[1]["MonsterId"] = {3119}
	-- -- 驱赶任务 爱情信使
	-- tChineseValentinesOperation_Drop[2] = {}
	-- tChineseValentinesOperation_Drop[2]["ActivityTime"] = tActivityTime["ChineseValentinesOperation"]["ActivityTime"]
	-- tChineseValentinesOperation_Drop[2]["Function"] = ChineseValentinesOperation_LetterMonster
	-- tChineseValentinesOperation_Drop[2]["MonsterId"] = {3118}
	-- -- 掉落情人节精装礼盒、包装纸
	-- tChineseValentinesOperation_Drop[3] = {}
	-- tChineseValentinesOperation_Drop[3]["ActivityTime"] = tActivityTime["ChineseValentinesOperation"]["ActivityTime"]
	-- tChineseValentinesOperation_Drop[3]["Function"] = ChineseValentinesOperation_NormalMonster
-- table.insert(tMonsterDrop_AreaLoad,tChineseValentinesOperation_Drop[1])
-- table.insert(tMonsterDrop_AreaLoad,tChineseValentinesOperation_Drop[2])
-- table.insert(tMonsterDrop_AreaLoad,tChineseValentinesOperation_Drop[3])
--------------------------------------时间自检-------------------------------------------
local tChineseValentinesOperation_Time = {}
-- Party最迟开启时间
tChineseValentinesOperation_Time[1] = {}
tChineseValentinesOperation_Time[1]["Type"] = 2
tChineseValentinesOperation_Time[1]["TimeType"] = 1
tChineseValentinesOperation_Time[1]["Multiple"] = {}
tChineseValentinesOperation_Time[1]["Multiple"][1]  = "03-08 00:00 03-08 00:00"
tChineseValentinesOperation_Time[1]["Func"] = ChineseValentinesOperation_OfficialPartyMustStart
-- 单身Party开启
tChineseValentinesOperation_Time[2] = {}
tChineseValentinesOperation_Time[2]["Type"] = 2
tChineseValentinesOperation_Time[2]["TimeType"] = 4
tChineseValentinesOperation_Time[2]["Multiple"] = {}
tChineseValentinesOperation_Time[2]["Multiple"][1]  = "21:00 21:00"
tChineseValentinesOperation_Time[2]["Func"] = ChineseValentinesOperation_SinglePartyStart
-- CPParty开启
tChineseValentinesOperation_Time[3] = {}
tChineseValentinesOperation_Time[3]["Type"] = 2
tChineseValentinesOperation_Time[3]["TimeType"] = 4
tChineseValentinesOperation_Time[3]["Multiple"] = {}
tChineseValentinesOperation_Time[3]["Multiple"][1]  = "21:00 21:00"
tChineseValentinesOperation_Time[3]["Func"] = ChineseValentinesOperation_CPPartyStart
-- 官方Party结束
tChineseValentinesOperation_Time[4] = {}
tChineseValentinesOperation_Time[4]["Type"] = 2
tChineseValentinesOperation_Time[4]["TimeType"] = 4
tChineseValentinesOperation_Time[4]["Multiple"] = {}
tChineseValentinesOperation_Time[4]["Multiple"][1]  = "21:31 21:31"
tChineseValentinesOperation_Time[4]["Func"] = ChineseValentinesOperation_OfficialPartyEnd
-- 私人单身Party结束
tChineseValentinesOperation_Time[5] = {}
tChineseValentinesOperation_Time[5]["Type"] = 2
tChineseValentinesOperation_Time[5]["Func"] = ChineseValentinesOperation_SinglePartyEnd
-- 私人CPParty结束
tChineseValentinesOperation_Time[6] = {}
tChineseValentinesOperation_Time[6]["Type"] = 2
tChineseValentinesOperation_Time[6]["Func"] = ChineseValentinesOperation_CPPartyEnd
-- 单身Party天石雨
tChineseValentinesOperation_Time[7] = {}
tChineseValentinesOperation_Time[7]["Type"] = 2
tChineseValentinesOperation_Time[7]["Func"] = ChineseValentinesOperation_SingleCPRain
-- CPParty天石雨
tChineseValentinesOperation_Time[8] = {}
tChineseValentinesOperation_Time[8]["Type"] = 2
tChineseValentinesOperation_Time[8]["Func"] = ChineseValentinesOperation_CPCPRain

table.insert(tSystemTime_InitialData,tChineseValentinesOperation_Time[1])
-- table.insert(tSystemTime_InitialData,tChineseValentinesOperation_Time[2])
-- table.insert(tSystemTime_InitialData,tChineseValentinesOperation_Time[3])
-- table.insert(tSystemTime_InitialData,tChineseValentinesOperation_Time[4])
table.insert(tSystemTime_InitialData,tChineseValentinesOperation_Time[5])
table.insert(tSystemTime_InitialData,tChineseValentinesOperation_Time[6])
table.insert(tSystemTime_InitialData,tChineseValentinesOperation_Time[7])
table.insert(tSystemTime_InitialData,tChineseValentinesOperation_Time[8])
