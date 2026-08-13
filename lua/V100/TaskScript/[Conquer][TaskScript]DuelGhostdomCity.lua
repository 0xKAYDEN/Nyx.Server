------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]决战冥城
--Purpose:	决战冥城
--Creator: 	丁晨
--Created:	2015/07/15
------------------------------------------------------------------------------------
--任务需求：
---简体征服】决战冥城活动重新制作
---重新制作决战冥城活动，改为全天参加，活动分3个难度，设置通关时间排行榜

--掩码说明：
---cq_dyna_global_data 掩码：
---- 50921 ：data1~data5记录简单难度 第1~5名userId； datastr1~datastr5 记录简单难度 第1~5名闯关用时
---- 50922 ：data1~data5记录简单难度 第6~10名userId；datastr1~datastr5 记录简单难度 第6~10名闯关用时
---- 50928 ：data1~data5记录普通难度 第1~5名userId； datastr1~datastr5 记录普通难度 第1~5名闯关用时
---- 50929 ：data1~data5记录普通难度 第6~10名userId；datastr1~datastr5 记录普通难度 第6~10名闯关用时
---- 50930 ：data1~data5记录精英难度 第1~5名userId； datastr1~datastr5 记录精英难度 第1~5名闯关用时
---- 50931 ：data1~data5记录精英难度 第6~10名userId；datastr1~datastr5 记录精英难度 第6~10名闯关用时
---- 50984 ：data1~data5记录简单难度 第1~5名userName
---- 50985 ：data1~data5记录简单难度 第6~10名userName
---- 50986 ：data1~data5记录普通难度 第1~5名userName
---- 50987 ：data1~data5记录普通难度 第6~10名userName
---- 50988 ：data1~data5记录精英难度 第1~5名userName
---- 50989 ：data1~data5记录精英难度 第6~10名userName

---Stc掩码 :
----136段：
-----dataType:38 记录是否通关
-----dataType:39 记录当前选择的难度
-----dataType:40 记录今日是否领过排名奖励
-----dataType:41 记录当前所在的通关地图
-----dataType:42 记录入场时间 
-----dataType:43 记录出场时间
-----dataType:44 记录魔值
-----dataType:45 记录回廊顺序
-----dataType:46 记录是否击杀冥王
-----dataType:47 记录宝箱开启次数 14429-14430
-----dataType:48 记录完成时间
----138段：
-----dataType:93 记录第二关当前击杀的怪物数量，达到20后清0重记
--P.S:详细可参考 相关文档中的 150708[简体征服][活动脚本]决战冥城--测试流程.docx

------------------------------------------------------------------------------------------------
-- 新增stc掩码：
----144段：
-- 144 29 -30  新增宝箱的掩码  记录宝箱开启次数
-- 14459：记录玩家每周在周几参与活动，每周只可参与一次
-- 14486：记录本周是否领取通关奖励的关数
-- 修改内容：
-- #1.改为每周只可参与一次，开放时间还是周一周三周五。
-- #本周内，四关未全部完成，可以再在本周1 3 5继续参加，但每周4关奖励只可领取一次
-- #2.奖励为原先的2.5倍
-- #3.击杀六天冥王获得的冥王宝库钥匙数量调整为3把。
-- #4.排行榜仍为当日参与排行榜。
-- #5.冥王宝库的宝箱增加2个，一共3个宝箱，分别记不一样的掩码，玩家可打开3个宝库。
-- #6.修改冥城镇妖令的物品说明与逻辑  给三倍奖励，根据转世给对应奖励
------------------------------------------------------------------------------------

--命名规范
--DuelGhostdomCity_Match
local tDailypoint_Data = {}
	tDailypoint_Data["ActivetyTime"] = tActivityTime["LinLang"]["ActivityTime"]

local tDuelGhostdomCity_Match_MapConfig={}

	tDuelGhostdomCity_Match_MapConfig["nBound"] = 5

	--简单难度 
	--冥城鬼门 第一关
	tDuelGhostdomCity_Match_MapConfig[3955] ={}
	
	--传送入点
	tDuelGhostdomCity_Match_MapConfig[3955]["nPosX"] = 286 
	tDuelGhostdomCity_Match_MapConfig[3955]["nPosY"] = 500
	
	
	--邪鬼卒
	tDuelGhostdomCity_Match_MapConfig[3955][7804]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3955][7804]["Ghost"] = 3
	--冥魂玉石掉率
	tDuelGhostdomCity_Match_MapConfig[3955][7804]["StoneDrop"] = 3
	
	--冥鬼卒
	tDuelGhostdomCity_Match_MapConfig[3955][7805]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3955][7805]["Ghost"] = 3
	--冥魂玉石掉率
	tDuelGhostdomCity_Match_MapConfig[3955][7805]["StoneDrop"] = 3
	
	--邪鬼枪卒
	tDuelGhostdomCity_Match_MapConfig[3955][7806]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3955][7806]["Ghost"] = 4
	--冥魂玉石掉率
	tDuelGhostdomCity_Match_MapConfig[3955][7806]["StoneDrop"] = 6
	
	
	--冥鬼枪卒
	tDuelGhostdomCity_Match_MapConfig[3955][7807]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3955][7807]["Ghost"] = 4
	--冥魂玉石掉率
	tDuelGhostdomCity_Match_MapConfig[3955][7807]["StoneDrop"] = 6
	
	--冥卒统领 
	tDuelGhostdomCity_Match_MapConfig[3955][7808]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3955][7808]["Ghost"] = 5
	--冥魂玉石掉率
	tDuelGhostdomCity_Match_MapConfig[3955][7808]["StoneDrop"] = 15
	
	--冥王大殿 第二关
	tDuelGhostdomCity_Match_MapConfig[3956] ={}
	
	--传送入点
	tDuelGhostdomCity_Match_MapConfig[3956]["nPosX"] = 207  
	tDuelGhostdomCity_Match_MapConfig[3956]["nPosY"] =  334
	
	--幽冥犬
	tDuelGhostdomCity_Match_MapConfig[3956][7810]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3956][7810]["Ghost"] = 3
	--辟邪护符掉率
	tDuelGhostdomCity_Match_MapConfig[3956][7810]["AmuletDrop"] = 0.06
	--除魔值
	tDuelGhostdomCity_Match_MapConfig[3956][7810]["KillMonster"] = 1
	
	--恶鬼妇  5053
	tDuelGhostdomCity_Match_MapConfig[3956][7809]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3956][7809]["Ghost"] = 4
	--辟邪护符掉率
	tDuelGhostdomCity_Match_MapConfig[3956][7809]["AmuletDrop"] = 0.09
	--除魔值
	tDuelGhostdomCity_Match_MapConfig[3956][7809]["KillMonster"] = 2
	
	
	--冥蛇卫
	tDuelGhostdomCity_Match_MapConfig[3956][7812]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3956][7812]["Ghost"] = 5
	--辟邪护符掉率
	tDuelGhostdomCity_Match_MapConfig[3956][7812]["AmuletDrop"] = 0.12
	--除魔值
	tDuelGhostdomCity_Match_MapConfig[3956][7812]["KillMonster"] = 3
	
	
	--巨冥魔
	tDuelGhostdomCity_Match_MapConfig[3956][7811]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3956][7811]["Ghost"] = 6
	--辟邪护符掉率
	tDuelGhostdomCity_Match_MapConfig[3956][7811]["AmuletDrop"] = 0.15
	--除魔值
	tDuelGhostdomCity_Match_MapConfig[3956][7811]["KillMonster"] = 4
	
	
	--冥王回廊 第三关
	tDuelGhostdomCity_Match_MapConfig[3957] ={}
	
	--传送入点
	tDuelGhostdomCity_Match_MapConfig[3957]["nPosX"] = 587  
	tDuelGhostdomCity_Match_MapConfig[3957]["nPosY"] = 230
	
	--九冥护法
	tDuelGhostdomCity_Match_MapConfig[3957][7813]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3957][7813]["Ghost"] = 8
	--夜叉变身书掉率
	tDuelGhostdomCity_Match_MapConfig[3957][7813]["HagDrop"] = 0.1
	
	--冥王法阵 第四关
	tDuelGhostdomCity_Match_MapConfig[3958] ={}
	
	--传送入点
	tDuelGhostdomCity_Match_MapConfig[3958]["nPosX"] = 151  
	tDuelGhostdomCity_Match_MapConfig[3958]["nPosY"] = 279
	
	--护法妖姬
	tDuelGhostdomCity_Match_MapConfig[3958][7814]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3958][7814]["Ghost"]= 10
	--冥王令碎片掉率
	tDuelGhostdomCity_Match_MapConfig[3958][7814]["Chip"]= 20
	
	--六天冥王
	tDuelGhostdomCity_Match_MapConfig[3958][7815]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3958][7815]["Ghost"]= 100
	--冥王宝库钥匙
	tDuelGhostdomCity_Match_MapConfig[3958][7815]["key"] = 3006982
	--六天冥角
	tDuelGhostdomCity_Match_MapConfig[3958][7815]["AngleId"] = 790001
	--掉率
	tDuelGhostdomCity_Match_MapConfig[3958][7815]["AngleDrop"] = 5
	----------新加内容---
	-- 掉落六级房屋材料
	tDuelGhostdomCity_Match_MapConfig[3958][7815]["Resource"] = 1

	--七星宝剑
	tDuelGhostdomCity_Match_MapConfig[3958][7815]["SwordId"] = 723088
	--掉率
	tDuelGhostdomCity_Match_MapConfig[3958][7815]["SwordDrop"] = 1
	
	--冥王宝库地图
	 tDuelGhostdomCity_Match_MapConfig[3959] ={}
	 
	tDuelGhostdomCity_Match_MapConfig[3959]["nPosX"] = 53  
	tDuelGhostdomCity_Match_MapConfig[3959]["nPosY"] = 51
	 
	 tDuelGhostdomCity_Match_MapConfig[3959]["Angle"] = {}
	 tDuelGhostdomCity_Match_MapConfig[3959]["Angle"][1] = 300
	 tDuelGhostdomCity_Match_MapConfig[3959]["Angle"][2] = 150
	
	
	
	--普通
	--冥城鬼门 第一关
	tDuelGhostdomCity_Match_MapConfig[3960] ={}
	
	--传送入点
	tDuelGhostdomCity_Match_MapConfig[3960]["nPosX"] = 286 
	tDuelGhostdomCity_Match_MapConfig[3960]["nPosY"] = 500
	
	
	--邪鬼卒
	tDuelGhostdomCity_Match_MapConfig[3960][7816]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3960][7816]["Ghost"] = 3
	--冥魂玉石掉率
	tDuelGhostdomCity_Match_MapConfig[3960][7816]["StoneDrop"] = 3
	
	--冥鬼卒
	tDuelGhostdomCity_Match_MapConfig[3960][7817]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3960][7817]["Ghost"] = 3
	--冥魂玉石掉率
	tDuelGhostdomCity_Match_MapConfig[3960][7817]["StoneDrop"] = 3
	
	--邪鬼枪卒
	tDuelGhostdomCity_Match_MapConfig[3960][7818]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3960][7818]["Ghost"] = 4
	--冥魂玉石掉率
	tDuelGhostdomCity_Match_MapConfig[3960][7818]["StoneDrop"] = 6
	
	
	--冥鬼枪卒
	tDuelGhostdomCity_Match_MapConfig[3960][7819]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3960][7819]["Ghost"] = 4
	--冥魂玉石掉率
	tDuelGhostdomCity_Match_MapConfig[3960][7819]["StoneDrop"] = 6
	
	--冥卒统领 
	tDuelGhostdomCity_Match_MapConfig[3960][7820]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3960][7820]["Ghost"] = 5
	--冥魂玉石掉率
	tDuelGhostdomCity_Match_MapConfig[3960][7820]["StoneDrop"] = 15
	
	--冥王大殿 第二关
	tDuelGhostdomCity_Match_MapConfig[3961] ={}
	
	--传送入点
	tDuelGhostdomCity_Match_MapConfig[3961]["nPosX"] = 207  
	tDuelGhostdomCity_Match_MapConfig[3961]["nPosY"] =  334
	
	--幽冥犬
	tDuelGhostdomCity_Match_MapConfig[3961][7822]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3961][7822]["Ghost"] = 3
	--辟邪护符掉率
	tDuelGhostdomCity_Match_MapConfig[3961][7822]["AmuletDrop"] = 0.06
	--除魔值
	tDuelGhostdomCity_Match_MapConfig[3961][7822]["KillMonster"] = 1
	
	--恶鬼妇  5053
	tDuelGhostdomCity_Match_MapConfig[3961][7821]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3961][7821]["Ghost"] = 4
	--辟邪护符掉率
	tDuelGhostdomCity_Match_MapConfig[3961][7821]["AmuletDrop"] = 0.09
	--除魔值
	tDuelGhostdomCity_Match_MapConfig[3961][7821]["KillMonster"] = 2
	
	
	--冥蛇卫
	tDuelGhostdomCity_Match_MapConfig[3961][7824]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3961][7824]["Ghost"] = 5
	--辟邪护符掉率
	tDuelGhostdomCity_Match_MapConfig[3961][7824]["AmuletDrop"] = 0.12
	--除魔值
	tDuelGhostdomCity_Match_MapConfig[3961][7824]["KillMonster"] = 3
	
	
	--巨冥魔
	tDuelGhostdomCity_Match_MapConfig[3961][7823]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3961][7823]["Ghost"] = 6
	--辟邪护符掉率
	tDuelGhostdomCity_Match_MapConfig[3961][7823]["AmuletDrop"] = 0.15
	--除魔值
	tDuelGhostdomCity_Match_MapConfig[3961][7823]["KillMonster"] = 4
	
	
	--冥王回廊 第三关
	tDuelGhostdomCity_Match_MapConfig[3962] ={}
	
	--传送入点
	tDuelGhostdomCity_Match_MapConfig[3962]["nPosX"] = 587  
	tDuelGhostdomCity_Match_MapConfig[3962]["nPosY"] = 230
	
	--九冥护法
	tDuelGhostdomCity_Match_MapConfig[3962][7825]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3962][7825]["Ghost"] = 8
	--夜叉变身书掉率
	tDuelGhostdomCity_Match_MapConfig[3962][7825]["HagDrop"] = 0.15

	--冥王法阵 第四关
	
	tDuelGhostdomCity_Match_MapConfig[3963] ={}
	
	--传送入点
	tDuelGhostdomCity_Match_MapConfig[3963]["nPosX"] = 151  
	tDuelGhostdomCity_Match_MapConfig[3963]["nPosY"] = 279
	
	--护法妖姬
	tDuelGhostdomCity_Match_MapConfig[3963][7826]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3963][7826]["Ghost"]= 10
	--冥王令碎片掉率
	tDuelGhostdomCity_Match_MapConfig[3963][7826]["Chip"]= 20
	
	--六天冥王
	tDuelGhostdomCity_Match_MapConfig[3963][7827]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3963][7827]["Ghost"]= 100
	--冥王宝库钥匙
	tDuelGhostdomCity_Match_MapConfig[3963][7827]["key"] = 3006982
	--六天冥角
	tDuelGhostdomCity_Match_MapConfig[3963][7827]["AngleId"] = 790001
	--掉率
	tDuelGhostdomCity_Match_MapConfig[3963][7827]["AngleDrop"] = 10
	----------新加内容---
	-- 掉落六级房屋材料	
	tDuelGhostdomCity_Match_MapConfig[3963][7827]["Resource"] = 1
	
	--七星宝剑
	tDuelGhostdomCity_Match_MapConfig[3963][7827]["SwordId"] = 723088
	--掉率
	tDuelGhostdomCity_Match_MapConfig[3963][7827]["SwordDrop"] = 2
	
	--冥王宝库地图
	tDuelGhostdomCity_Match_MapConfig[3964] ={}

	tDuelGhostdomCity_Match_MapConfig[3964]["nPosX"] = 53  
	tDuelGhostdomCity_Match_MapConfig[3964]["nPosY"] = 51
	
	--困难模式
	--冥城鬼门 第一关
	tDuelGhostdomCity_Match_MapConfig[3965] ={}
	
	--传送入点
	tDuelGhostdomCity_Match_MapConfig[3965]["nPosX"] = 286 
	tDuelGhostdomCity_Match_MapConfig[3965]["nPosY"] = 500
	
	
	--邪鬼卒
	tDuelGhostdomCity_Match_MapConfig[3965][7828]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3965][7828]["Ghost"] = 3
	--冥魂玉石掉率
	tDuelGhostdomCity_Match_MapConfig[3965][7828]["StoneDrop"] = 3
	
	--冥鬼卒
	tDuelGhostdomCity_Match_MapConfig[3965][7829]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3965][7829]["Ghost"] = 3
	--冥魂玉石掉率
	tDuelGhostdomCity_Match_MapConfig[3965][7829]["StoneDrop"] = 3
	
	--邪鬼枪卒
	tDuelGhostdomCity_Match_MapConfig[3965][7830]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3965][7830]["Ghost"] = 4
	--冥魂玉石掉率
	tDuelGhostdomCity_Match_MapConfig[3965][7830]["StoneDrop"] = 6
	
	
	--冥鬼枪卒
	tDuelGhostdomCity_Match_MapConfig[3965][7831]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3965][7831]["Ghost"] = 4
	--冥魂玉石掉率
	tDuelGhostdomCity_Match_MapConfig[3965][7831]["StoneDrop"] = 6
	
	--冥卒统领 
	tDuelGhostdomCity_Match_MapConfig[3965][7832]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3965][7832]["Ghost"] = 5
	--冥魂玉石掉率
	tDuelGhostdomCity_Match_MapConfig[3965][7832]["StoneDrop"] = 15
	
	--冥王大殿 第二关
	tDuelGhostdomCity_Match_MapConfig[3966] ={}
	--传送入点
	tDuelGhostdomCity_Match_MapConfig[3966]["nPosX"] = 207  
	tDuelGhostdomCity_Match_MapConfig[3966]["nPosY"] =  334
	
	--幽冥犬
	tDuelGhostdomCity_Match_MapConfig[3966][7834]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3966][7834]["Ghost"] = 3
	--辟邪护符掉率
	tDuelGhostdomCity_Match_MapConfig[3966][7834]["AmuletDrop"] = 0.06
	--除魔值
	tDuelGhostdomCity_Match_MapConfig[3966][7834]["KillMonster"] = 1
	
	--恶鬼妇  5053
	tDuelGhostdomCity_Match_MapConfig[3966][7833]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3966][7833]["Ghost"] = 4
	--辟邪护符掉率
	tDuelGhostdomCity_Match_MapConfig[3966][7833]["AmuletDrop"] = 0.09
	--除魔值
	tDuelGhostdomCity_Match_MapConfig[3966][7833]["KillMonster"] = 2
	
	
	--冥蛇卫
	tDuelGhostdomCity_Match_MapConfig[3966][7836]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3966][7836]["Ghost"] = 5
	--辟邪护符掉率
	tDuelGhostdomCity_Match_MapConfig[3966][7836]["AmuletDrop"] = 0.12
	--除魔值
	tDuelGhostdomCity_Match_MapConfig[3966][7836]["KillMonster"] = 3
	
	
	--巨冥魔
	tDuelGhostdomCity_Match_MapConfig[3966][7835]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3966][7835]["Ghost"] = 6
	--辟邪护符掉率
	tDuelGhostdomCity_Match_MapConfig[3966][7835]["AmuletDrop"] = 0.15
	--除魔值
	tDuelGhostdomCity_Match_MapConfig[3966][7835]["KillMonster"] = 4
	
	
	--冥王回廊 第三关
	tDuelGhostdomCity_Match_MapConfig[3967] ={}
	--传送入点
	tDuelGhostdomCity_Match_MapConfig[3967]["nPosX"] = 587  
	tDuelGhostdomCity_Match_MapConfig[3967]["nPosY"] = 230
	
	--九冥护法
	tDuelGhostdomCity_Match_MapConfig[3967][7837]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3967][7837]["Ghost"] = 8
	--夜叉变身书掉率
	tDuelGhostdomCity_Match_MapConfig[3967][7837]["HagDrop"] = 0.2
	
	--冥王法阵 第四关
	tDuelGhostdomCity_Match_MapConfig[3968] ={}
	--传送入点
	tDuelGhostdomCity_Match_MapConfig[3968]["nPosX"] = 151  
	tDuelGhostdomCity_Match_MapConfig[3968]["nPosY"] = 279
	
	--护法妖姬
	tDuelGhostdomCity_Match_MapConfig[3968][7838]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3968][7838]["Ghost"]= 10
	--冥王令碎片掉率
	tDuelGhostdomCity_Match_MapConfig[3968][7838]["Chip"]= 20
	
	--六天冥王
	tDuelGhostdomCity_Match_MapConfig[3968][7839]= {}
	--魂珠妖值
	tDuelGhostdomCity_Match_MapConfig[3968][7839]["Ghost"]= 100
	--冥王宝库钥匙
	tDuelGhostdomCity_Match_MapConfig[3968][7839]["key"] = 3006982
	--六天冥角
	tDuelGhostdomCity_Match_MapConfig[3968][7839]["AngleId"] = 790001
	--掉率
	tDuelGhostdomCity_Match_MapConfig[3968][7839]["AngleDrop"] = 20
	----------新加内容---
	-- 掉落六级房屋材料
	tDuelGhostdomCity_Match_MapConfig[3968][7839]["Resource"] = 1

	--七星宝剑
	tDuelGhostdomCity_Match_MapConfig[3968][7839]["SwordId"] = 723088
	--掉率
	tDuelGhostdomCity_Match_MapConfig[3968][7839]["SwordDrop"] = 3
	
	tDuelGhostdomCity_Match_MapConfig[3969] ={}
	tDuelGhostdomCity_Match_MapConfig[3969]["nPosX"] = 53  
	tDuelGhostdomCity_Match_MapConfig[3969]["nPosY"] = 51
	
--难度分地图
local tDuelGhostdomCity_Match_ChkMap = {}
	
	--难度 简单
	tDuelGhostdomCity_Match_ChkMap[1] ={}
	tDuelGhostdomCity_Match_ChkMap[1][1]= 3955
	tDuelGhostdomCity_Match_ChkMap[1][2]= 3956
	tDuelGhostdomCity_Match_ChkMap[1][3]= 3957
	tDuelGhostdomCity_Match_ChkMap[1][4]= 3958
	tDuelGhostdomCity_Match_ChkMap[1][5]= 3959
	
	--难度 普通
	tDuelGhostdomCity_Match_ChkMap[2] ={}
	tDuelGhostdomCity_Match_ChkMap[2][1]= 3960
	tDuelGhostdomCity_Match_ChkMap[2][2]= 3961
	tDuelGhostdomCity_Match_ChkMap[2][3]= 3962
	tDuelGhostdomCity_Match_ChkMap[2][4]= 3963
	tDuelGhostdomCity_Match_ChkMap[2][5]= 3964
	
	--难度 困难
	tDuelGhostdomCity_Match_ChkMap[3] ={}
	tDuelGhostdomCity_Match_ChkMap[3][1]= 3965
	tDuelGhostdomCity_Match_ChkMap[3][2]= 3966
	tDuelGhostdomCity_Match_ChkMap[3][3]= 3967
	tDuelGhostdomCity_Match_ChkMap[3][4]= 3968
	tDuelGhostdomCity_Match_ChkMap[3][5]= 3969
	
local tDuelGhostdomCity_Match_ChkTask = {}
	--第一关 冥魂玉石 5个
	tDuelGhostdomCity_Match_ChkTask[1] = {}
	tDuelGhostdomCity_Match_ChkTask[1]["ItemId"] = 723085
	tDuelGhostdomCity_Match_ChkTask[1]["Num"] = 5
	
	--第二关 魔值计算 不记录
	
	--第三关记录 杀9个守卫
	tDuelGhostdomCity_Match_ChkTask[3] = {}
	tDuelGhostdomCity_Match_ChkTask[3]["Num"] = 9
	
	--第四关消灭冥王
	
	--第五关
	tDuelGhostdomCity_Match_ChkTask[5]={}
	--上交八天冥角
	tDuelGhostdomCity_Match_ChkTask[5]["Angle"] = 790001
	--上交七星宝剑
	tDuelGhostdomCity_Match_ChkTask[5]["Sword"] = 723088

local tDuelGhostdomCity_Match_TaskInfo = {}
	--一 三 五参赛时间
	tDuelGhostdomCity_Match_TaskInfo["JoinMatchTime"] ={}
	tDuelGhostdomCity_Match_TaskInfo["JoinMatchTime"][1] = "1 00:00 1 23:59"
	tDuelGhostdomCity_Match_TaskInfo["JoinMatchTime"][2] = "3 00:00 3 23:59"
	tDuelGhostdomCity_Match_TaskInfo["JoinMatchTime"][3] = "5 00:00 5 23:59"
	
	--排行榜清理时间
	tDuelGhostdomCity_Match_TaskInfo["ClearMatchTime"] ={}
	tDuelGhostdomCity_Match_TaskInfo["ClearMatchTime"][1] = "1 00:00 1 23:59"
	tDuelGhostdomCity_Match_TaskInfo["ClearMatchTime"][2] = "3 00:00 3 23:59"
	tDuelGhostdomCity_Match_TaskInfo["ClearMatchTime"][3] = "5 00:00 5 23:59"
	tDuelGhostdomCity_Match_TaskInfo["ClearMatchTime"][4] = "0 00:00 0 23:59"
	
	--参赛等级限制
	tDuelGhostdomCity_Match_TaskInfo["LevelLimit"]={}
	tDuelGhostdomCity_Match_TaskInfo["LevelLimit"]["Level"]= 110
	tDuelGhostdomCity_Match_TaskInfo["LevelLimit"]["Incarnation"] = 0
	tDuelGhostdomCity_Match_TaskInfo["LevelLimit"]["Incarnation1"] = 1
	tDuelGhostdomCity_Match_TaskInfo["LevelLimit"]["Incarnation2"] = 2
	
	
--Stc掩码 
local tDuelGhostdomCity_Match_Stc={}
	tDuelGhostdomCity_Match_Stc["EventType"] = 136
	
	tDuelGhostdomCity_Match_Stc["DataType"] = {}
	--是否已完成
	tDuelGhostdomCity_Match_Stc["DataType"][1] = 38
	--通过难度
	tDuelGhostdomCity_Match_Stc["DataType"][2] = 39
	--今日是否领过排名奖励
	tDuelGhostdomCity_Match_Stc["DataType"][3] = 40
	--通关地图
	tDuelGhostdomCity_Match_Stc["DataType"][4] = 41
	--入场时间
	tDuelGhostdomCity_Match_Stc["DataType"][5] = 42
	--出场时间
	tDuelGhostdomCity_Match_Stc["DataType"][6] = 43
	--记录魔值
	tDuelGhostdomCity_Match_Stc["DataType"][7] = 44
	--记录回廊顺序
	tDuelGhostdomCity_Match_Stc["DataType"][8] = 45
	--是否击杀冥王
	tDuelGhostdomCity_Match_Stc["DataType"][9] = 46
	--记录宝箱开启次数
	tDuelGhostdomCity_Match_Stc["DataType"][10] = 47
	--记录宝箱开启次数（用3个掩码分别记录）
	tDuelGhostdomCity_Match_Stc["EventType_2"] = 144
	tDuelGhostdomCity_Match_Stc["DataType"][12] = 29			-- 14429
	tDuelGhostdomCity_Match_Stc["DataType"][13] = 30			-- 14430
	--记录完成时间
	tDuelGhostdomCity_Match_Stc["DataType"][11] = 48
	
	-- 记录玩家每周在周几参与活动，每周只可参与一次
	tDuelGhostdomCity_Match_Stc["DataType_2"] = 59				-- 14459
	-- 记录本周是否领取通关奖励的关数
	tDuelGhostdomCity_Match_Stc["DataType_3"] = 86				-- 14486
	
	--获取除魔值是否显示总值标记
	tDuelGhostdomCity_Match_Stc["EventTypeMonster"] = 138
	tDuelGhostdomCity_Match_Stc["DataTypeMonster"] = 93
	
-- 前10名
local tDuelGhostdomCity_Match_GlobalData= {}
	tDuelGhostdomCity_Match_GlobalData["Rank"] = {}
	
	--简单
	tDuelGhostdomCity_Match_GlobalData["Rank"][1] = {}
	tDuelGhostdomCity_Match_GlobalData["Rank"][1][1] = 50921	--1-5名：userId,比赛用时
	tDuelGhostdomCity_Match_GlobalData["Rank"][1][2] = 50922	--6-10名：userId,比赛用时
	tDuelGhostdomCity_Match_GlobalData["Rank"][1][3] = 50984	--1-5名：userName
	tDuelGhostdomCity_Match_GlobalData["Rank"][1][4] = 50985	--6-10名：userName
	--普通
	tDuelGhostdomCity_Match_GlobalData["Rank"][2] = {}
	tDuelGhostdomCity_Match_GlobalData["Rank"][2][1] = 50928	--1-5名：userId,比赛用时
	tDuelGhostdomCity_Match_GlobalData["Rank"][2][2] = 50929    --6-10名：userId,比赛用时
	tDuelGhostdomCity_Match_GlobalData["Rank"][2][3] = 50986    --1-5名：userName
	tDuelGhostdomCity_Match_GlobalData["Rank"][2][4] = 50987    --6-10名：userName
	--困难
	tDuelGhostdomCity_Match_GlobalData["Rank"][3] = {}
	tDuelGhostdomCity_Match_GlobalData["Rank"][3][1] = 50930	--1-5名：userId,比赛用时
	tDuelGhostdomCity_Match_GlobalData["Rank"][3][2] = 50931    --6-10名：userId,比赛用时
	tDuelGhostdomCity_Match_GlobalData["Rank"][3][3] = 50988    --1-5名：userName
	tDuelGhostdomCity_Match_GlobalData["Rank"][3][4] = 50989    --6-10名：userName
	
--通关奖励配置
local tDuelGhostdomCity_Match_ExpReward={}
	--简单难度
	tDuelGhostdomCity_Match_ExpReward[1] = {}
	--简单难度第1关
	tDuelGhostdomCity_Match_ExpReward[1][1] ={}
	tDuelGhostdomCity_Match_ExpReward[1][1]["Exp"] = 125--50 --经验
	tDuelGhostdomCity_Match_ExpReward[1][1]["Level"] = 3200330--50 --经验
	--简单难度第2关
	tDuelGhostdomCity_Match_ExpReward[1][2] ={}
	tDuelGhostdomCity_Match_ExpReward[1][2]["Exp"] = 250--100 --经验
	tDuelGhostdomCity_Match_ExpReward[1][2]["Level"] = 3200331--100 --经验
	--简单难度第3关
	tDuelGhostdomCity_Match_ExpReward[1][3] ={}
	tDuelGhostdomCity_Match_ExpReward[1][3]["Exp"] = 375--150 --经验
	tDuelGhostdomCity_Match_ExpReward[1][3]["Level"] = 3200332--150 --经验
	--简单难度第4关
	tDuelGhostdomCity_Match_ExpReward[1][4] ={}
	tDuelGhostdomCity_Match_ExpReward[1][4]["Exp"] = 500--200 --经验
	tDuelGhostdomCity_Match_ExpReward[1][4]["Level"] = 3200325--200 --经验
	tDuelGhostdomCity_Match_ExpReward[1][4]["LeaguePoint"] = 300 --黄金积分
	
	--普通难度
	tDuelGhostdomCity_Match_ExpReward[2] = {}
	--普通难度第1关
	tDuelGhostdomCity_Match_ExpReward[2][1] ={}
	tDuelGhostdomCity_Match_ExpReward[2][1]["Exp"] = 150--60
	tDuelGhostdomCity_Match_ExpReward[2][1]["Level"] = 3200333--60
	--普通难度第2关
	tDuelGhostdomCity_Match_ExpReward[2][2] = {}
	tDuelGhostdomCity_Match_ExpReward[2][2]["Exp"] = 300--120
	tDuelGhostdomCity_Match_ExpReward[2][2]["Level"] = 3200334--120
	--普通难度第3关
	tDuelGhostdomCity_Match_ExpReward[2][3] = {}
	tDuelGhostdomCity_Match_ExpReward[2][3]["Exp"] = 450--180
	tDuelGhostdomCity_Match_ExpReward[2][3]["Level"] = 3200335--180
	--普通难度第4关
	tDuelGhostdomCity_Match_ExpReward[2][4] = {}
	tDuelGhostdomCity_Match_ExpReward[2][4]["Exp"] = 600--240
	tDuelGhostdomCity_Match_ExpReward[2][4]["Level"] = 3200336--240
	tDuelGhostdomCity_Match_ExpReward[2][4]["LeaguePoint"] = 400 --黄金积分
	tDuelGhostdomCity_Match_ExpReward[2][4]["Item"] = {} --物品
	tDuelGhostdomCity_Match_ExpReward[2][4]["Item"][1] = {} --物品1
	tDuelGhostdomCity_Match_ExpReward[2][4]["Item"][1]["ItemId"] = 3008059 --阴之玉（72小时）
	tDuelGhostdomCity_Match_ExpReward[2][4]["Item"][1]["Num"] = 3--1
	tDuelGhostdomCity_Match_ExpReward[2][4]["Item"][1]["SaveTime"] = 10080 --4320 --有效时间（分钟）
	tDuelGhostdomCity_Match_ExpReward[2][4]["Item"][1]["Active"] = 1 --激活
	
	--精英难度
	tDuelGhostdomCity_Match_ExpReward[3] = {}
	--精英难度第1关
	tDuelGhostdomCity_Match_ExpReward[3][1] ={}
    tDuelGhostdomCity_Match_ExpReward[3][1]["Exp"] = 300--120
    tDuelGhostdomCity_Match_ExpReward[3][1]["Level"] = 3200337--120
	--精英难度第2关
	tDuelGhostdomCity_Match_ExpReward[3][2] ={}
    tDuelGhostdomCity_Match_ExpReward[3][2]["Exp"] = 600--240
    tDuelGhostdomCity_Match_ExpReward[3][2]["Level"] = 3200338--240
	--精英难度第3关
	tDuelGhostdomCity_Match_ExpReward[3][3] ={}
	tDuelGhostdomCity_Match_ExpReward[3][3]["Exp"] = 900--360
	tDuelGhostdomCity_Match_ExpReward[3][3]["Level"] = 3200339--360
	--精英难度第4关
	tDuelGhostdomCity_Match_ExpReward[3][4] ={}
    tDuelGhostdomCity_Match_ExpReward[3][4]["Exp"] = 1200--480
    tDuelGhostdomCity_Match_ExpReward[3][4]["Level"] = 3200329--480
	tDuelGhostdomCity_Match_ExpReward[3][4]["LeaguePoint"] = 500 --黄金积分
	tDuelGhostdomCity_Match_ExpReward[3][4]["Item"] = {} --物品
	tDuelGhostdomCity_Match_ExpReward[3][4]["Item"][1] = {} --物品1
	tDuelGhostdomCity_Match_ExpReward[3][4]["Item"][1]["ItemId"] = 3008059 --阴之玉（72小时）
	tDuelGhostdomCity_Match_ExpReward[3][4]["Item"][1]["Num"] = 3--1
	tDuelGhostdomCity_Match_ExpReward[3][4]["Item"][1]["SaveTime"] = 10080--4320 --有效时间（分钟）
	tDuelGhostdomCity_Match_ExpReward[3][4]["Item"][1]["Active"] = 1 --激活
	
--满级通关奖励
local tDuelGhostdomCity_Match_CulReward ={}
	--简单难度
	tDuelGhostdomCity_Match_CulReward[1] = {}
	--简单难度第1关
	tDuelGhostdomCity_Match_CulReward[1][1] ={}
	tDuelGhostdomCity_Match_CulReward[1][1]["Cul"] = 50--20 --修行值
	--简单难度第2关
	tDuelGhostdomCity_Match_CulReward[1][2] ={}
	tDuelGhostdomCity_Match_CulReward[1][2]["Cul"] = 100--40 --修行值
	--简单难度第3关
	tDuelGhostdomCity_Match_CulReward[1][3] ={} 
	tDuelGhostdomCity_Match_CulReward[1][3]["Cul"] = 150--60 --修行值
	--简单难度第4关
	tDuelGhostdomCity_Match_CulReward[1][4] ={}
	tDuelGhostdomCity_Match_CulReward[1][4]["Cul"] = 200--80 --修行值
	tDuelGhostdomCity_Match_CulReward[1][4]["LeaguePoint"] = 300 --黄金积分
	
	--普通难度
	tDuelGhostdomCity_Match_CulReward[2] = {}
	--普通难度第1关
	tDuelGhostdomCity_Match_CulReward[2][1] = {}
	tDuelGhostdomCity_Match_CulReward[2][1]["Cul"] = 75--30 --修行值
	--普通难度第2关
	tDuelGhostdomCity_Match_CulReward[2][2] = {}
	tDuelGhostdomCity_Match_CulReward[2][2]["Cul"] = 150--60 --修行值
	--普通难度第3关
	tDuelGhostdomCity_Match_CulReward[2][3] = {}
	tDuelGhostdomCity_Match_CulReward[2][3]["Cul"] = 225--90 --修行值
	--普通难度第4关
	tDuelGhostdomCity_Match_CulReward[2][4] = {}
	tDuelGhostdomCity_Match_CulReward[2][4]["Cul"] = 300--120 --修行值
	tDuelGhostdomCity_Match_CulReward[2][4]["LeaguePoint"] = 400 --黄金积分
	tDuelGhostdomCity_Match_CulReward[2][4]["Item"] = {} --物品
	tDuelGhostdomCity_Match_CulReward[2][4]["Item"][1] = {} --物品1
	tDuelGhostdomCity_Match_CulReward[2][4]["Item"][1]["ItemId"] = 3008059 --阴之玉（72小时）
	tDuelGhostdomCity_Match_CulReward[2][4]["Item"][1]["Num"] = 3--1
	tDuelGhostdomCity_Match_CulReward[2][4]["Item"][1]["SaveTime"] = 10080--4320 --有效时间（分钟）
	tDuelGhostdomCity_Match_CulReward[2][4]["Item"][1]["Active"] = 1 --激活
	
	--精英难度
	tDuelGhostdomCity_Match_CulReward[3] = {}
	--精英难度第1关
	tDuelGhostdomCity_Match_CulReward[3][1] = {}
    tDuelGhostdomCity_Match_CulReward[3][1]["StrValue"] = 150--60 --气力值
	--精英难度第2关
	tDuelGhostdomCity_Match_CulReward[3][2] = {}
    tDuelGhostdomCity_Match_CulReward[3][2]["StrValue"] = 300--120 --气力值
	--精英难度第3关
	tDuelGhostdomCity_Match_CulReward[3][3] = {}
	tDuelGhostdomCity_Match_CulReward[3][3]["StrValue"] = 450--180 --气力值
	--精英难度第4关
	tDuelGhostdomCity_Match_CulReward[3][4] = {}
    tDuelGhostdomCity_Match_CulReward[3][4]["StrValue"] = 600--240 --气力值
	tDuelGhostdomCity_Match_CulReward[3][4]["LeaguePoint"] = 500 --黄金积分
	tDuelGhostdomCity_Match_CulReward[3][4]["Item"] = {} --物品
	tDuelGhostdomCity_Match_CulReward[3][4]["Item"][1] = {} --物品1
	tDuelGhostdomCity_Match_CulReward[3][4]["Item"][1]["ItemId"] = 3008059 --阴之玉（72小时）
	tDuelGhostdomCity_Match_CulReward[3][4]["Item"][1]["Num"] = 3--1
	tDuelGhostdomCity_Match_CulReward[3][4]["Item"][1]["SaveTime"] = 10080--4320 --有效时间（分钟）
	tDuelGhostdomCity_Match_CulReward[3][4]["Item"][1]["Active"] = 1 --激活

	
--领奖满级判断
local tDuelGhostdomCity_Match_GetLimit ={}
	tDuelGhostdomCity_Match_GetLimit["Level"] = G_User_MaxLev
	tDuelGhostdomCity_Match_GetLimit["BagFull"] = 1
	-- 129级及以下玩家将获得时效经验包，130级及以上依然直接获得经验
	tDuelGhostdomCity_Match_GetLimit["LevelTime"] = 129

--返回黑虎城（英文返回双龙城）
local tDuelGhostdomCity_Match_BackCity ={}
	tDuelGhostdomCity_Match_BackCity["MapId"] = 1002
	tDuelGhostdomCity_Match_BackCity["PosX"] = 278 
	tDuelGhostdomCity_Match_BackCity["PosY"] = 477  
	
	tDuelGhostdomCity_Match_BackCity["Bound"] = 5
	
	
--玩家职业 魔值需求
local tDuelGhostdomCity_Match_ProMagic={}
	tDuelGhostdomCity_Match_ProMagic["Profession"] = {}
	--勇士
	tDuelGhostdomCity_Match_ProMagic["Profession"][1] = 400
	--战士
	tDuelGhostdomCity_Match_ProMagic["Profession"][2] = 400
	--弓手
	tDuelGhostdomCity_Match_ProMagic["Profession"][4] = 600
	--忍者
	tDuelGhostdomCity_Match_ProMagic["Profession"][5] = 400
	--武僧
	tDuelGhostdomCity_Match_ProMagic["Profession"][6] = 400
	--海盗
	tDuelGhostdomCity_Match_ProMagic["Profession"][7] = 400
	--截拳师
	tDuelGhostdomCity_Match_ProMagic["Profession"][8] = 400
	--道士
	tDuelGhostdomCity_Match_ProMagic["Profession"][10] = 300
	--水道
	tDuelGhostdomCity_Match_ProMagic["Profession"][13] = 300
	--火道
 	tDuelGhostdomCity_Match_ProMagic["Profession"][14] = 300
	
	--铁扇门
	tDuelGhostdomCity_Match_ProMagic["Profession"][16] = 400
	
	--雷神
	tDuelGhostdomCity_Match_ProMagic["Profession"][9] = 400
--回廊顺序 水晶点
local tDuelGhostdomCity_Match_Corridor ={}
	tDuelGhostdomCity_Match_Corridor["Bound"] = 15
	
	tDuelGhostdomCity_Match_Corridor["MonsterId"]={}
	tDuelGhostdomCity_Match_Corridor["MonsterId"][1] = 7813
	tDuelGhostdomCity_Match_Corridor["MonsterId"][2] = 7825
	tDuelGhostdomCity_Match_Corridor["MonsterId"][3] = 7837
	
	tDuelGhostdomCity_Match_Corridor["Crystal"] = {}
	
	
	tDuelGhostdomCity_Match_Corridor["Crystal"][1] ={}
	tDuelGhostdomCity_Match_Corridor["Crystal"][1]["PosX"] = 501
	tDuelGhostdomCity_Match_Corridor["Crystal"][1]["PosY"] = 217
	
	tDuelGhostdomCity_Match_Corridor["Crystal"][2] ={}
	tDuelGhostdomCity_Match_Corridor["Crystal"][2]["PosX"] = 335
	tDuelGhostdomCity_Match_Corridor["Crystal"][2]["PosY"] = 119
	
	
	tDuelGhostdomCity_Match_Corridor["Crystal"][3] ={}
	tDuelGhostdomCity_Match_Corridor["Crystal"][3]["PosX"] = 234
	tDuelGhostdomCity_Match_Corridor["Crystal"][3]["PosY"] = 216
	
	
	tDuelGhostdomCity_Match_Corridor["Crystal"][4] ={}
	tDuelGhostdomCity_Match_Corridor["Crystal"][4]["PosX"] = 128
	tDuelGhostdomCity_Match_Corridor["Crystal"][4]["PosY"] = 322
	
	
	tDuelGhostdomCity_Match_Corridor["Crystal"][5] ={}
	tDuelGhostdomCity_Match_Corridor["Crystal"][5]["PosX"] = 164
	tDuelGhostdomCity_Match_Corridor["Crystal"][5]["PosY"] = 473
	
	
	tDuelGhostdomCity_Match_Corridor["Crystal"][6] ={}
	tDuelGhostdomCity_Match_Corridor["Crystal"][6]["PosX"] = 260
	tDuelGhostdomCity_Match_Corridor["Crystal"][6]["PosY"] = 413
	
	
	tDuelGhostdomCity_Match_Corridor["Crystal"][7] ={}
	tDuelGhostdomCity_Match_Corridor["Crystal"][7]["PosX"] = 277
	tDuelGhostdomCity_Match_Corridor["Crystal"][7]["PosY"] = 286
	
	
	tDuelGhostdomCity_Match_Corridor["Crystal"][8] ={}
	tDuelGhostdomCity_Match_Corridor["Crystal"][8]["PosX"] = 360
	tDuelGhostdomCity_Match_Corridor["Crystal"][8]["PosY"] = 279
	
	
	tDuelGhostdomCity_Match_Corridor["Crystal"][9] ={}
	tDuelGhostdomCity_Match_Corridor["Crystal"][9]["PosX"] = 416
	tDuelGhostdomCity_Match_Corridor["Crystal"][9]["PosY"] = 371
	
--各个水晶点播放光效
local tDuelGhostdomCity_Match_SjCorridor ={}
	tDuelGhostdomCity_Match_SjCorridor["Crystal"]={}
	tDuelGhostdomCity_Match_SjCorridor["Crystal"][1]={}
	tDuelGhostdomCity_Match_SjCorridor["Crystal"][1]["PosX"] = 501
	tDuelGhostdomCity_Match_SjCorridor["Crystal"][1]["PosY"] = 217
	
	tDuelGhostdomCity_Match_SjCorridor["Crystal"][2]={}
	tDuelGhostdomCity_Match_SjCorridor["Crystal"][2]["PosX"] = 333
	tDuelGhostdomCity_Match_SjCorridor["Crystal"][2]["PosY"] = 119
	
	tDuelGhostdomCity_Match_SjCorridor["Crystal"][3]={}
	tDuelGhostdomCity_Match_SjCorridor["Crystal"][3]["PosX"] = 234
	tDuelGhostdomCity_Match_SjCorridor["Crystal"][3]["PosY"] = 216
	
	tDuelGhostdomCity_Match_SjCorridor["Crystal"][4]={}
	tDuelGhostdomCity_Match_SjCorridor["Crystal"][4]["PosX"] = 128
	tDuelGhostdomCity_Match_SjCorridor["Crystal"][4]["PosY"] = 322
	
	tDuelGhostdomCity_Match_SjCorridor["Crystal"][5]={}
	tDuelGhostdomCity_Match_SjCorridor["Crystal"][5]["PosX"] = 164
	tDuelGhostdomCity_Match_SjCorridor["Crystal"][5]["PosY"] = 473
	
	tDuelGhostdomCity_Match_SjCorridor["Crystal"][6]={}
	tDuelGhostdomCity_Match_SjCorridor["Crystal"][6]["PosX"] = 260
	tDuelGhostdomCity_Match_SjCorridor["Crystal"][6]["PosY"] = 413
	
	tDuelGhostdomCity_Match_SjCorridor["Crystal"][7]={}
	tDuelGhostdomCity_Match_SjCorridor["Crystal"][7]["PosX"] = 277
	tDuelGhostdomCity_Match_SjCorridor["Crystal"][7]["PosY"] = 286	
	
	tDuelGhostdomCity_Match_SjCorridor["Crystal"][8]={}
	tDuelGhostdomCity_Match_SjCorridor["Crystal"][8]["PosX"] = 360
	tDuelGhostdomCity_Match_SjCorridor["Crystal"][8]["PosY"] = 279
	
	tDuelGhostdomCity_Match_SjCorridor["Crystal"][9]={}
	tDuelGhostdomCity_Match_SjCorridor["Crystal"][9]["PosX"] = 416
	tDuelGhostdomCity_Match_SjCorridor["Crystal"][9]["PosY"] = 371

--钥匙随机奖励 前4个
local tDuelGhostdomCity_Match_KeyReward={}
	--难度1
	tDuelGhostdomCity_Match_KeyReward[1]={}
	--辟邪护符
	tDuelGhostdomCity_Match_KeyReward[1][1]={}
	tDuelGhostdomCity_Match_KeyReward[1][1]["ItemId"] = 723087
	tDuelGhostdomCity_Match_KeyReward[1][1]["Num"] = 1
	tDuelGhostdomCity_Match_KeyReward[1][1]["Probability"] = 10
	tDuelGhostdomCity_Match_KeyReward[1][1]["Present"] = 0
	--日常材料包
	tDuelGhostdomCity_Match_KeyReward[1][2]={}
	tDuelGhostdomCity_Match_KeyReward[1][2]["ItemId"] = 3006985
	tDuelGhostdomCity_Match_KeyReward[1][2]["Num"] = 1
	tDuelGhostdomCity_Match_KeyReward[1][2]["Probability"] = 10
	tDuelGhostdomCity_Match_KeyReward[1][2]["Present"] = 0
	--物资募集符
	tDuelGhostdomCity_Match_KeyReward[1][3]={}
	tDuelGhostdomCity_Match_KeyReward[1][3]["ItemId"] = 3007311
	tDuelGhostdomCity_Match_KeyReward[1][3]["Num"] = 1
	tDuelGhostdomCity_Match_KeyReward[1][3]["Probability"] = 10
	tDuelGhostdomCity_Match_KeyReward[1][3]["Present"] = 0
	--天道酬勤卷轴（赠）
	tDuelGhostdomCity_Match_KeyReward[1][4]={}
	tDuelGhostdomCity_Match_KeyReward[1][4]["ItemId"] = 3001407
	tDuelGhostdomCity_Match_KeyReward[1][4]["Num"] = 1
	tDuelGhostdomCity_Match_KeyReward[1][4]["Probability"] = 10
	tDuelGhostdomCity_Match_KeyReward[1][4]["Present"] = 3
	--200分钟经验
	tDuelGhostdomCity_Match_KeyReward[1][5]={}
	tDuelGhostdomCity_Match_KeyReward[1][5]["Exp"] = 200
	tDuelGhostdomCity_Match_KeyReward[1][5]["Probability"] = 25
	--300点修行值
	tDuelGhostdomCity_Match_KeyReward[1][6]={}
	tDuelGhostdomCity_Match_KeyReward[1][6]["Cul"] = 300
	tDuelGhostdomCity_Match_KeyReward[1][6]["Probability"] = 18
	--3000点骑马积分礼包（赠）
	tDuelGhostdomCity_Match_KeyReward[1][7]={}
	tDuelGhostdomCity_Match_KeyReward[1][7]["ItemId"] = 720880
	tDuelGhostdomCity_Match_KeyReward[1][7]["Num"] = 1
	tDuelGhostdomCity_Match_KeyReward[1][7]["Probability"] = 7
	tDuelGhostdomCity_Match_KeyReward[1][7]["Present"] = 3
	--极品淬炼礼包（激活72小时）
	tDuelGhostdomCity_Match_KeyReward[1][8]={}
	tDuelGhostdomCity_Match_KeyReward[1][8]["ItemId"] = 3008057
	tDuelGhostdomCity_Match_KeyReward[1][8]["Num"] = 1
	tDuelGhostdomCity_Match_KeyReward[1][8]["Probability"] = 10
	tDuelGhostdomCity_Match_KeyReward[1][8]["Present"] = 0
	tDuelGhostdomCity_Match_KeyReward[1][8]["Active"] = 1
	tDuelGhostdomCity_Match_KeyReward[1][8]["Savetime"] = 4320
	
	--难度2
	tDuelGhostdomCity_Match_KeyReward[2]={}
	--辟邪护符*2
	tDuelGhostdomCity_Match_KeyReward[2][1]={}
	tDuelGhostdomCity_Match_KeyReward[2][1]["ItemId"] = 723087
	tDuelGhostdomCity_Match_KeyReward[2][1]["Num"] = 2
	tDuelGhostdomCity_Match_KeyReward[2][1]["Probability"] = 10
	tDuelGhostdomCity_Match_KeyReward[2][1]["Present"] = 0
	--日常材料包*2
	tDuelGhostdomCity_Match_KeyReward[2][2]={}
	tDuelGhostdomCity_Match_KeyReward[2][2]["ItemId"] = 3006985
	tDuelGhostdomCity_Match_KeyReward[2][2]["Num"] = 2
	tDuelGhostdomCity_Match_KeyReward[2][2]["Probability"] = 10
	tDuelGhostdomCity_Match_KeyReward[2][2]["Present"] = 0
	--物资募集符*2
	tDuelGhostdomCity_Match_KeyReward[2][3]={}
	tDuelGhostdomCity_Match_KeyReward[2][3]["ItemId"] = 3007311
	tDuelGhostdomCity_Match_KeyReward[2][3]["Num"] = 2
	tDuelGhostdomCity_Match_KeyReward[2][3]["Probability"] = 10
	tDuelGhostdomCity_Match_KeyReward[2][3]["Present"] = 0
	--天道酬勤卷轴
	tDuelGhostdomCity_Match_KeyReward[2][4]={}
	tDuelGhostdomCity_Match_KeyReward[2][4]["ItemId"] = 3001407
	tDuelGhostdomCity_Match_KeyReward[2][4]["Num"] = 1
	tDuelGhostdomCity_Match_KeyReward[2][4]["Probability"] = 15
	tDuelGhostdomCity_Match_KeyReward[2][4]["Present"] = 0
	--200点气力值
	tDuelGhostdomCity_Match_KeyReward[2][5]={}
	tDuelGhostdomCity_Match_KeyReward[2][5]["Power"] = 200
	tDuelGhostdomCity_Match_KeyReward[2][5]["Probability"] = 15
	--300点修行值
	tDuelGhostdomCity_Match_KeyReward[2][6]={}
	tDuelGhostdomCity_Match_KeyReward[2][6]["Cul"] = 300
	tDuelGhostdomCity_Match_KeyReward[2][6]["Probability"] = 15
	--3000点骑马积分礼包
	tDuelGhostdomCity_Match_KeyReward[2][7]={}
	tDuelGhostdomCity_Match_KeyReward[2][7]["ItemId"] = 720880
	tDuelGhostdomCity_Match_KeyReward[2][7]["Num"] = 1
	tDuelGhostdomCity_Match_KeyReward[2][7]["Probability"] = 10
	tDuelGhostdomCity_Match_KeyReward[2][7]["Present"] = 0
	--极品淬炼礼包（激活72小时）
	tDuelGhostdomCity_Match_KeyReward[2][8]={}
	tDuelGhostdomCity_Match_KeyReward[2][8]["ItemId"] = 3008057
	tDuelGhostdomCity_Match_KeyReward[2][8]["Num"] = 1
	tDuelGhostdomCity_Match_KeyReward[2][8]["Probability"] = 15
	tDuelGhostdomCity_Match_KeyReward[2][8]["Present"] = 0
	tDuelGhostdomCity_Match_KeyReward[2][8]["Active"] = 1
	tDuelGhostdomCity_Match_KeyReward[2][8]["Savetime"] = 4320
	
	--难度3
	tDuelGhostdomCity_Match_KeyReward[3]={}
	--200点气力值
	tDuelGhostdomCity_Match_KeyReward[3][1]={}
	tDuelGhostdomCity_Match_KeyReward[3][1]["Power"] = 200
	tDuelGhostdomCity_Match_KeyReward[3][1]["Probability"] = 24
	--300点修行值
	tDuelGhostdomCity_Match_KeyReward[3][2]={}
	tDuelGhostdomCity_Match_KeyReward[3][2]["Cul"] = 300
	tDuelGhostdomCity_Match_KeyReward[3][2]["Probability"] = 24
	--3000点骑马积分礼包
	tDuelGhostdomCity_Match_KeyReward[3][3]={}
	tDuelGhostdomCity_Match_KeyReward[3][3]["ItemId"] = 720880
	tDuelGhostdomCity_Match_KeyReward[3][3]["Num"] = 1
	tDuelGhostdomCity_Match_KeyReward[3][3]["Probability"] = 12
	tDuelGhostdomCity_Match_KeyReward[3][3]["Present"] = 0
	--王母果篮
	tDuelGhostdomCity_Match_KeyReward[3][4]={}
	tDuelGhostdomCity_Match_KeyReward[3][4]["ItemId"] = 3000430
	tDuelGhostdomCity_Match_KeyReward[3][4]["Num"] = 1
	tDuelGhostdomCity_Match_KeyReward[3][4]["Probability"] = 10
	tDuelGhostdomCity_Match_KeyReward[3][4]["Present"] = 0
	--神品淬炼礼包碎片
	tDuelGhostdomCity_Match_KeyReward[3][5]={}
	tDuelGhostdomCity_Match_KeyReward[3][5]["ItemId"] = 3004245
	tDuelGhostdomCity_Match_KeyReward[3][5]["Num"] = 1
	tDuelGhostdomCity_Match_KeyReward[3][5]["Probability"] = 8
	tDuelGhostdomCity_Match_KeyReward[3][5]["Present"] = 0
	--九转聚神丹碎片（激活72小时）
	tDuelGhostdomCity_Match_KeyReward[3][6]={}
	tDuelGhostdomCity_Match_KeyReward[3][6]["ItemId"] = 728596
	tDuelGhostdomCity_Match_KeyReward[3][6]["Num"] = 1
	tDuelGhostdomCity_Match_KeyReward[3][6]["Probability"] = 2
	tDuelGhostdomCity_Match_KeyReward[3][6]["Present"] = 0
	tDuelGhostdomCity_Match_KeyReward[3][6]["Active"] = 1
	tDuelGhostdomCity_Match_KeyReward[3][6]["Savetime"] = 4320
	--极品淬炼礼包（激活72小时）
	tDuelGhostdomCity_Match_KeyReward[3][7]={}
	tDuelGhostdomCity_Match_KeyReward[3][7]["ItemId"] = 3008057
	tDuelGhostdomCity_Match_KeyReward[3][7]["Num"] = 1
	tDuelGhostdomCity_Match_KeyReward[3][7]["Probability"] = 20
	tDuelGhostdomCity_Match_KeyReward[3][7]["Present"] = 0
	tDuelGhostdomCity_Match_KeyReward[3][7]["Active"] = 1
	tDuelGhostdomCity_Match_KeyReward[3][7]["Savetime"] = 4320
	
--打开宝箱检测
local tDuelGhostdomCity_Match_OpenTreasury ={}
	tDuelGhostdomCity_Match_OpenTreasury["ItemId"] = 3006982
	tDuelGhostdomCity_Match_OpenTreasury["BagFull"] = 3

--第5次打开宝箱
local tDuelGhostdomCity_Match_PerfectKeyReward={}
	--简单难度
	tDuelGhostdomCity_Match_PerfectKeyReward[1]={}
	tDuelGhostdomCity_Match_PerfectKeyReward[1]["Exp"] = 1000
	tDuelGhostdomCity_Match_PerfectKeyReward[1]["Item"] = {}
	--3000点骑马积分礼包
	tDuelGhostdomCity_Match_PerfectKeyReward[1]["Item"][1] ={}
	tDuelGhostdomCity_Match_PerfectKeyReward[1]["Item"][1]["ItemId"] = 720880
	tDuelGhostdomCity_Match_PerfectKeyReward[1]["Item"][1]["Num"] = 1
	
	--普通难度
	tDuelGhostdomCity_Match_PerfectKeyReward[2]={}
	tDuelGhostdomCity_Match_PerfectKeyReward[2]["Item"] ={}
	--3000点骑马积分礼包
	tDuelGhostdomCity_Match_PerfectKeyReward[2]["Item"][1] = {}
	tDuelGhostdomCity_Match_PerfectKeyReward[2]["Item"][1]["ItemId"] = 720880
	tDuelGhostdomCity_Match_PerfectKeyReward[2]["Item"][1]["Num"] = 1
	--极品淬炼礼包（激活72小时）
	tDuelGhostdomCity_Match_PerfectKeyReward[2]["Item"][2] = {}
	tDuelGhostdomCity_Match_PerfectKeyReward[2]["Item"][2]["ItemId"] = 3008057
	tDuelGhostdomCity_Match_PerfectKeyReward[2]["Item"][2]["Num"] = 1
	tDuelGhostdomCity_Match_PerfectKeyReward[2]["Item"][2]["Active"] = 1
	tDuelGhostdomCity_Match_PerfectKeyReward[2]["Item"][2]["Savetime"] = 4320
	--阴之玉（激活72小时）         
	tDuelGhostdomCity_Match_PerfectKeyReward[2]["Item"][3] = {}
	tDuelGhostdomCity_Match_PerfectKeyReward[2]["Item"][3]["ItemId"] = 3008059
	tDuelGhostdomCity_Match_PerfectKeyReward[2]["Item"][3]["Num"] = 1
	tDuelGhostdomCity_Match_PerfectKeyReward[2]["Item"][3]["Active"] = 1
	tDuelGhostdomCity_Match_PerfectKeyReward[2]["Item"][3]["Savetime"] = 4320
	
	--精英难度
	--3000点骑马积分礼包
	tDuelGhostdomCity_Match_PerfectKeyReward[3] = {}
	tDuelGhostdomCity_Match_PerfectKeyReward[3]["Item"] = {}
	--3000点骑马积分礼包
	tDuelGhostdomCity_Match_PerfectKeyReward[3]["Item"][1] = {}
	tDuelGhostdomCity_Match_PerfectKeyReward[3]["Item"][1]["ItemId"] = 720880
	tDuelGhostdomCity_Match_PerfectKeyReward[3]["Item"][1]["Num"] = 1
	--极品淬炼礼包（激活72小时）75% or 神品淬炼礼包（激活72小时）25%
	tDuelGhostdomCity_Match_PerfectKeyReward[3]["Item"][2] = {}
	tDuelGhostdomCity_Match_PerfectKeyReward[3]["Item"][2]["randtable"] = {75,100} --随机概率表
	-----极品淬炼礼包（激活72小时）
	tDuelGhostdomCity_Match_PerfectKeyReward[3]["Item"][2][1] = {}
	tDuelGhostdomCity_Match_PerfectKeyReward[3]["Item"][2][1]["ItemId"] = 3008057
	tDuelGhostdomCity_Match_PerfectKeyReward[3]["Item"][2][1]["Num"] = 1
	tDuelGhostdomCity_Match_PerfectKeyReward[3]["Item"][2][1]["Active"] = 1
	tDuelGhostdomCity_Match_PerfectKeyReward[3]["Item"][2][1]["Savetime"] = 4320
	-----神品淬炼礼包（激活72小时）
	tDuelGhostdomCity_Match_PerfectKeyReward[3]["Item"][2][2] = {}
	tDuelGhostdomCity_Match_PerfectKeyReward[3]["Item"][2][2]["ItemId"] = 3008058
	tDuelGhostdomCity_Match_PerfectKeyReward[3]["Item"][2][2]["Num"] = 1
	tDuelGhostdomCity_Match_PerfectKeyReward[3]["Item"][2][2]["Active"] = 1
	tDuelGhostdomCity_Match_PerfectKeyReward[3]["Item"][2][2]["Savetime"] = 4320
	--阴之玉（激活72小时）
	tDuelGhostdomCity_Match_PerfectKeyReward[3]["Item"][3] = {}
	tDuelGhostdomCity_Match_PerfectKeyReward[3]["Item"][3]["ItemId"] = 3008059
	tDuelGhostdomCity_Match_PerfectKeyReward[3]["Item"][3]["Num"] = 1
	tDuelGhostdomCity_Match_PerfectKeyReward[3]["Item"][3]["Active"] = 1
	tDuelGhostdomCity_Match_PerfectKeyReward[3]["Item"][3]["Savetime"] = 4320
	
--缺少钥匙配置
local tDuelGhostdomCity_Match_MissKey ={}
	tDuelGhostdomCity_Match_MissKey[1] = 27
	tDuelGhostdomCity_Match_MissKey[2] = 27
	tDuelGhostdomCity_Match_MissKey[3] = 27
	tDuelGhostdomCity_Match_MissKey[4] = 27
	tDuelGhostdomCity_Match_MissKey[5] = 27
	
--幽冥古镜
local tDuelGhostdomCity_Match_Mirror ={}
	tDuelGhostdomCity_Match_Mirror["Mirror"] = 3006981
	tDuelGhostdomCity_Match_Mirror["Save_Time"] = 60
	
	
	--旋风药水
	tDuelGhostdomCity_Match_Mirror["Item"] = {}
	tDuelGhostdomCity_Match_Mirror["Item"][3006986]={}
	tDuelGhostdomCity_Match_Mirror["Item"][3006986]["Num"] = 5
	tDuelGhostdomCity_Match_Mirror["Item"][3006986]["Ts"] = 2
	
	tDuelGhostdomCity_Match_Mirror["DefenceType"] = 18
	tDuelGhostdomCity_Match_Mirror["Power"] = 30020 
	tDuelGhostdomCity_Match_Mirror["DefenceSec"] = 60
	tDuelGhostdomCity_Match_Mirror["Times"] = 1
	tDuelGhostdomCity_Match_Mirror["RemainTime"] = 2
	tDuelGhostdomCity_Match_Mirror["EndTime"] = 1
	tDuelGhostdomCity_Match_Mirror["Recordable"] = 0
	
	--体力药水
	tDuelGhostdomCity_Match_Mirror["Item"][3006987]={}
	tDuelGhostdomCity_Match_Mirror["Item"][3006987]["Num"] = 5
	tDuelGhostdomCity_Match_Mirror["Item"][3006987]["Ts"] = 2
	
	tDuelGhostdomCity_Match_Mirror["ePower"] = 150 
	
	
	tDuelGhostdomCity_Match_Mirror["FindWay"] ={}
	--简单难度前4关
	tDuelGhostdomCity_Match_Mirror["FindWay"][3955]={}
	tDuelGhostdomCity_Match_Mirror["FindWay"][3955]["NpcId"] = 18716
	tDuelGhostdomCity_Match_Mirror["FindWay"][3955]["PosX"] = 253
	tDuelGhostdomCity_Match_Mirror["FindWay"][3955]["PosY"] = 57
	
	tDuelGhostdomCity_Match_Mirror["FindWay"][3956]={}
	tDuelGhostdomCity_Match_Mirror["FindWay"][3956]["NpcId"] = 18717
	tDuelGhostdomCity_Match_Mirror["FindWay"][3956]["PosX"] = 215
	tDuelGhostdomCity_Match_Mirror["FindWay"][3956]["PosY"] = 344
	
	tDuelGhostdomCity_Match_Mirror["FindWay"][3957]={}
	tDuelGhostdomCity_Match_Mirror["FindWay"][3957]["NpcId"] = 18718
	tDuelGhostdomCity_Match_Mirror["FindWay"][3957]["PosX"] = 341
	tDuelGhostdomCity_Match_Mirror["FindWay"][3957]["PosY"] = 383
	
	tDuelGhostdomCity_Match_Mirror["FindWay"][3958]={}
	tDuelGhostdomCity_Match_Mirror["FindWay"][3958]["NpcId"] = 18719
	tDuelGhostdomCity_Match_Mirror["FindWay"][3958]["PosX"] = 147
	tDuelGhostdomCity_Match_Mirror["FindWay"][3958]["PosY"] = 27
	
	--困难难度前4关
	tDuelGhostdomCity_Match_Mirror["FindWay"][3960]={}
	tDuelGhostdomCity_Match_Mirror["FindWay"][3960]["NpcId"] = 18721
	tDuelGhostdomCity_Match_Mirror["FindWay"][3960]["PosX"] = 253
	tDuelGhostdomCity_Match_Mirror["FindWay"][3960]["PosY"] = 57
	
	tDuelGhostdomCity_Match_Mirror["FindWay"][3961]={}
	tDuelGhostdomCity_Match_Mirror["FindWay"][3961]["NpcId"] = 18722
	tDuelGhostdomCity_Match_Mirror["FindWay"][3961]["PosX"] = 215
	tDuelGhostdomCity_Match_Mirror["FindWay"][3961]["PosY"] = 344
	
	tDuelGhostdomCity_Match_Mirror["FindWay"][3962]={}
	tDuelGhostdomCity_Match_Mirror["FindWay"][3962]["NpcId"] = 18723
	tDuelGhostdomCity_Match_Mirror["FindWay"][3962]["PosX"] = 341
	tDuelGhostdomCity_Match_Mirror["FindWay"][3962]["PosY"] = 383
	
	tDuelGhostdomCity_Match_Mirror["FindWay"][3963]={}
	tDuelGhostdomCity_Match_Mirror["FindWay"][3963]["NpcId"] = 18724
	tDuelGhostdomCity_Match_Mirror["FindWay"][3963]["PosX"] = 147
	tDuelGhostdomCity_Match_Mirror["FindWay"][3963]["PosY"] = 27
	
	--精英难度前4关
	tDuelGhostdomCity_Match_Mirror["FindWay"][3965]={}
	tDuelGhostdomCity_Match_Mirror["FindWay"][3965]["NpcId"] = 18726
	tDuelGhostdomCity_Match_Mirror["FindWay"][3965]["PosX"] = 253
	tDuelGhostdomCity_Match_Mirror["FindWay"][3965]["PosY"] = 57
	
	tDuelGhostdomCity_Match_Mirror["FindWay"][3966]={}
	tDuelGhostdomCity_Match_Mirror["FindWay"][3966]["NpcId"] = 18727
	tDuelGhostdomCity_Match_Mirror["FindWay"][3966]["PosX"] = 215
	tDuelGhostdomCity_Match_Mirror["FindWay"][3966]["PosY"] = 344
	
	tDuelGhostdomCity_Match_Mirror["FindWay"][3967]={}
	tDuelGhostdomCity_Match_Mirror["FindWay"][3967]["NpcId"] = 18728
	tDuelGhostdomCity_Match_Mirror["FindWay"][3967]["PosX"] = 341
	tDuelGhostdomCity_Match_Mirror["FindWay"][3967]["PosY"] = 383
	
	tDuelGhostdomCity_Match_Mirror["FindWay"][3968]={}
	tDuelGhostdomCity_Match_Mirror["FindWay"][3968]["NpcId"] = 18729
	tDuelGhostdomCity_Match_Mirror["FindWay"][3968]["PosX"] = 147
	tDuelGhostdomCity_Match_Mirror["FindWay"][3968]["PosY"] = 27
   
   --城外
	tDuelGhostdomCity_Match_Mirror["FindWay"]["MapId"] = 1002
	tDuelGhostdomCity_Match_Mirror["FindWay"]["NpcId"] = 3215
	tDuelGhostdomCity_Match_Mirror["FindWay"]["PosX"] = 278
	tDuelGhostdomCity_Match_Mirror["FindWay"]["PosY"] = 478
	
--冥王令碎片
local tDuelGhostdomCity_Match_Sp ={}
	tDuelGhostdomCity_Match_Sp["Limit"] = 4
	tDuelGhostdomCity_Match_Sp["ItemId"] = 3006984
	
--妖魂值任务判断
local tDuelGhostdomCity_Match_YhTask ={}
	tDuelGhostdomCity_Match_YhTask["Yh"] = 2375
	tDuelGhostdomCity_Match_YhTask["EventType"] = 108
	tDuelGhostdomCity_Match_YhTask["DataType"] = 57
	
--杀怪掉落
local tDuelGhostdomCity_Match_KillMonsterDrop = {}
	--冥魂玉石
	tDuelGhostdomCity_Match_KillMonsterDrop[1] =  723085
	--辟邪护符
	tDuelGhostdomCity_Match_KillMonsterDrop[2] =  723087
	--夜叉变身书
	tDuelGhostdomCity_Match_KillMonsterDrop[3] =  725016
	--冥王令碎片
	tDuelGhostdomCity_Match_KillMonsterDrop[4] = 3006983
	--冥王金钥
	tDuelGhostdomCity_Match_KillMonsterDrop[5] = 3006982
	--六天冥角
	tDuelGhostdomCity_Match_KillMonsterDrop[6] = 790001
	--七星宝剑
	tDuelGhostdomCity_Match_KillMonsterDrop[7] = 723088
	
--冥王宝库钥匙
local tDuelGhostdomCity_Match_KeyProbability ={}
	tDuelGhostdomCity_Match_KeyProbability[0] = 0.04
	tDuelGhostdomCity_Match_KeyProbability[1] = 0.02
	tDuelGhostdomCity_Match_KeyProbability[2] = 0.01
	tDuelGhostdomCity_Match_KeyProbability[3] = 0.01
	tDuelGhostdomCity_Match_KeyProbability[4] = 0
	
--冥王刷怪范围
local tDuelGhostdomCity_Match_BossBron={}
	
	tDuelGhostdomCity_Match_BossBron["Bound"] = 15
	tDuelGhostdomCity_Match_BossBron["PosX"] = 149
	tDuelGhostdomCity_Match_BossBron["PosY"] = 139
	
	tDuelGhostdomCity_Match_BossBron[3958] = {}
	tDuelGhostdomCity_Match_BossBron[3958]["MonsterId"] =7815
	tDuelGhostdomCity_Match_BossBron[3958]["generatorId"] =17765
	
	tDuelGhostdomCity_Match_BossBron[3963] = {}
	tDuelGhostdomCity_Match_BossBron[3963]["MonsterId"] =7827
	tDuelGhostdomCity_Match_BossBron[3963]["generatorId"] =17766
	
	tDuelGhostdomCity_Match_BossBron[3968] = {}
	tDuelGhostdomCity_Match_BossBron[3968]["MonsterId"] =7839
	tDuelGhostdomCity_Match_BossBron[3968]["generatorId"] =17767
	
--排名奖励
local tDuelGhostdomCity_Match_RankReward ={}
	--简单难度 排名奖励
	tDuelGhostdomCity_Match_RankReward[1]={}
	tDuelGhostdomCity_Match_RankReward[1][1] = 1600--900
	tDuelGhostdomCity_Match_RankReward[1][2] = 1200--700
	tDuelGhostdomCity_Match_RankReward[1][3] = 1000--600
	tDuelGhostdomCity_Match_RankReward[1][4] = 800--500
	tDuelGhostdomCity_Match_RankReward[1][5] = 600--400
	tDuelGhostdomCity_Match_RankReward[1][6] = 400--300
	tDuelGhostdomCity_Match_RankReward[1][7] = 400--300
	tDuelGhostdomCity_Match_RankReward[1][8] = 200--200
	tDuelGhostdomCity_Match_RankReward[1][9] = 200--200
	tDuelGhostdomCity_Match_RankReward[1][10] = 200--200
	
	--普通难度 排名奖励
	tDuelGhostdomCity_Match_RankReward[2]={}
	tDuelGhostdomCity_Match_RankReward[2][1] = 2000--1000
	tDuelGhostdomCity_Match_RankReward[2][2] = 1600--800 
	tDuelGhostdomCity_Match_RankReward[2][3] = 1400--700 
	tDuelGhostdomCity_Match_RankReward[2][4] = 1200--600
	tDuelGhostdomCity_Match_RankReward[2][5] = 1000--500
	tDuelGhostdomCity_Match_RankReward[2][6] = 800--400
	tDuelGhostdomCity_Match_RankReward[2][7] = 800--400
	tDuelGhostdomCity_Match_RankReward[2][8] = 600--300
	tDuelGhostdomCity_Match_RankReward[2][9] = 600--300
	tDuelGhostdomCity_Match_RankReward[2][10] = 600--300
	
	--困难难度 排名奖励
	tDuelGhostdomCity_Match_RankReward[3]={}
	tDuelGhostdomCity_Match_RankReward[3][1] = 0.02--0.01
	tDuelGhostdomCity_Match_RankReward[3][2] = 0.016--0.008
	tDuelGhostdomCity_Match_RankReward[3][3] = 0.014--0.007
	tDuelGhostdomCity_Match_RankReward[3][4] = 0.012--0.006
	tDuelGhostdomCity_Match_RankReward[3][5] = 0.01--0.005
	tDuelGhostdomCity_Match_RankReward[3][6] = 0.008--0.004
	tDuelGhostdomCity_Match_RankReward[3][7] = 0.008--0.004
	tDuelGhostdomCity_Match_RankReward[3][8] = 0.006--0.003
	tDuelGhostdomCity_Match_RankReward[3][9] = 0.006--0.003
	tDuelGhostdomCity_Match_RankReward[3][10] = 0.006--0.003
	
--满级排名奖励
local tDuelGhostdomCity_Match_MaxRankReward ={}
	--简单难度 排名奖励
	tDuelGhostdomCity_Match_MaxRankReward[1]={}
	tDuelGhostdomCity_Match_MaxRankReward[1][1] = 800--400
	tDuelGhostdomCity_Match_MaxRankReward[1][2] = 600--300
	tDuelGhostdomCity_Match_MaxRankReward[1][3] = 500--250
	tDuelGhostdomCity_Match_MaxRankReward[1][4] = 400--200
	tDuelGhostdomCity_Match_MaxRankReward[1][5] = 300--150
	tDuelGhostdomCity_Match_MaxRankReward[1][6] = 200--100
	tDuelGhostdomCity_Match_MaxRankReward[1][7] = 200--100
	tDuelGhostdomCity_Match_MaxRankReward[1][8] = 100--50
	tDuelGhostdomCity_Match_MaxRankReward[1][9] = 100--50
	tDuelGhostdomCity_Match_MaxRankReward[1][10] = 100--50
	
	--普通难度 排名奖励
	tDuelGhostdomCity_Match_MaxRankReward[2]={}
	tDuelGhostdomCity_Match_MaxRankReward[2][1] = 1000--500
	tDuelGhostdomCity_Match_MaxRankReward[2][2] = 800--400 
	tDuelGhostdomCity_Match_MaxRankReward[2][3] = 700--350 
	tDuelGhostdomCity_Match_MaxRankReward[2][4] = 600--300
	tDuelGhostdomCity_Match_MaxRankReward[2][5] = 500--250
	tDuelGhostdomCity_Match_MaxRankReward[2][6] = 400--200
	tDuelGhostdomCity_Match_MaxRankReward[2][7] = 400--200
	tDuelGhostdomCity_Match_MaxRankReward[2][8] = 300--150
	tDuelGhostdomCity_Match_MaxRankReward[2][9] = 300--150
	tDuelGhostdomCity_Match_MaxRankReward[2][10] = 300--150
	
	--困难难度 排名奖励
	tDuelGhostdomCity_Match_MaxRankReward[3]={}
	tDuelGhostdomCity_Match_MaxRankReward[3][1] = 2500--1000
	tDuelGhostdomCity_Match_MaxRankReward[3][2] = 2000--800
	tDuelGhostdomCity_Match_MaxRankReward[3][3] = 1750--700
	tDuelGhostdomCity_Match_MaxRankReward[3][4] = 1500--600
	tDuelGhostdomCity_Match_MaxRankReward[3][5] = 1250--500
	tDuelGhostdomCity_Match_MaxRankReward[3][6] = 1000--400
	tDuelGhostdomCity_Match_MaxRankReward[3][7] = 1000--400
	tDuelGhostdomCity_Match_MaxRankReward[3][8] = 750--300
	tDuelGhostdomCity_Match_MaxRankReward[3][9] = 750--300
	tDuelGhostdomCity_Match_MaxRankReward[3][10] = 750--300 
	
--面板地图检测
local tDuelGhostdomCity_Match_BoardMapChk = {}
	tDuelGhostdomCity_Match_BoardMapChk[1] = 1002
	tDuelGhostdomCity_Match_BoardMapChk[2] = 1011
	tDuelGhostdomCity_Match_BoardMapChk[3] = 1020
	tDuelGhostdomCity_Match_BoardMapChk[4] = 1000
	tDuelGhostdomCity_Match_BoardMapChk[5] = 1015
	tDuelGhostdomCity_Match_BoardMapChk[6] = 1036
	tDuelGhostdomCity_Match_BoardMapChk[7] = 1068
	tDuelGhostdomCity_Match_BoardMapChk[8] = 1201
	tDuelGhostdomCity_Match_BoardMapChk[9] = 1202
	tDuelGhostdomCity_Match_BoardMapChk[10] = 1204
	tDuelGhostdomCity_Match_BoardMapChk[11] = 1205
	tDuelGhostdomCity_Match_BoardMapChk[12] = 1207
	tDuelGhostdomCity_Match_BoardMapChk[13] = 1208
	tDuelGhostdomCity_Match_BoardMapChk[14] = 1213
	tDuelGhostdomCity_Match_BoardMapChk[15] = 1214
	tDuelGhostdomCity_Match_BoardMapChk[16] = 1215
	tDuelGhostdomCity_Match_BoardMapChk[17] = 1216
	tDuelGhostdomCity_Match_BoardMapChk[18] = 1217
	tDuelGhostdomCity_Match_BoardMapChk[19] = 1210
	tDuelGhostdomCity_Match_BoardMapChk[20] = 1785
	tDuelGhostdomCity_Match_BoardMapChk[21] = 1786
	tDuelGhostdomCity_Match_BoardMapChk[22] = 1787
	tDuelGhostdomCity_Match_BoardMapChk[23] = 3056
	tDuelGhostdomCity_Match_BoardMapChk[24] = 3055
	tDuelGhostdomCity_Match_BoardMapChk[25] = 1927
	tDuelGhostdomCity_Match_BoardMapChk[26] = 1926
	tDuelGhostdomCity_Match_BoardMapChk[27] = 1999
	tDuelGhostdomCity_Match_BoardMapChk[28] = 2055
	tDuelGhostdomCity_Match_BoardMapChk[29] = 2056
	tDuelGhostdomCity_Match_BoardMapChk[30] = 2054
	tDuelGhostdomCity_Match_BoardMapChk[31] = 1076
	tDuelGhostdomCity_Match_BoardMapChk[32] = 1075
	tDuelGhostdomCity_Match_BoardMapChk[33] = 1077
	tDuelGhostdomCity_Match_BoardMapChk[34] = 1063
	tDuelGhostdomCity_Match_BoardMapChk[35] = 1052
	tDuelGhostdomCity_Match_BoardMapChk[36] = 1351
	tDuelGhostdomCity_Match_BoardMapChk[37] = 1352
	tDuelGhostdomCity_Match_BoardMapChk[38] = 1353
	tDuelGhostdomCity_Match_BoardMapChk[39] = 1354

--面板地图Doc
local tDuelGhostdomCity_Match_BoardMapDocChk ={}
	tDuelGhostdomCity_Match_BoardMapDocChk[1] = 1098
	tDuelGhostdomCity_Match_BoardMapDocChk[2] = 1099
	tDuelGhostdomCity_Match_BoardMapDocChk[3] = 2080

--面板地图混合检测组合
local tDuelGhostdomCity_Match_BoardChk ={}
	tDuelGhostdomCity_Match_BoardChk[1] = 601
	tDuelGhostdomCity_Match_BoardChk[2] = 601
	tDuelGhostdomCity_Match_BoardChk[3] = 1784 
	tDuelGhostdomCity_Match_BoardChk[4] = 3024 
	
--日常材料包
local tDuelGhostdomCity_Match_EverydayTask ={}
	tDuelGhostdomCity_Match_EverydayTask[1] ={}
	--巨猿皮
	tDuelGhostdomCity_Match_EverydayTask[1]["ItemId"] = 729088
	tDuelGhostdomCity_Match_EverydayTask[1]["Num"] = 60
	tDuelGhostdomCity_Match_EverydayTask[1]["Percent"] = 8

	--紫蛇胆
	tDuelGhostdomCity_Match_EverydayTask[2] ={}
	tDuelGhostdomCity_Match_EverydayTask[2]["ItemId"] = 729089
	tDuelGhostdomCity_Match_EverydayTask[2]["Num"] = 60
	tDuelGhostdomCity_Match_EverydayTask[2]["Percent"] = 8
	
	--沙精
	tDuelGhostdomCity_Match_EverydayTask[3] ={}
	tDuelGhostdomCity_Match_EverydayTask[3]["ItemId"] = 729090
	tDuelGhostdomCity_Match_EverydayTask[3]["Num"] = 60
	tDuelGhostdomCity_Match_EverydayTask[3]["Percent"] = 7
	
	--巨锤柄
	tDuelGhostdomCity_Match_EverydayTask[4] ={}
	tDuelGhostdomCity_Match_EverydayTask[4]["ItemId"] = 729091
	tDuelGhostdomCity_Match_EverydayTask[4]["Num"] = 50
	tDuelGhostdomCity_Match_EverydayTask[4]["Percent"] = 7
	
	--彩石
	tDuelGhostdomCity_Match_EverydayTask[5] ={}
	tDuelGhostdomCity_Match_EverydayTask[5]["ItemId"] = 729092
	tDuelGhostdomCity_Match_EverydayTask[5]["Num"] = 50
	tDuelGhostdomCity_Match_EverydayTask[5]["Percent"] = 7
	
	--利刃
	tDuelGhostdomCity_Match_EverydayTask[6] ={}
	tDuelGhostdomCity_Match_EverydayTask[6]["ItemId"] = 729093
	tDuelGhostdomCity_Match_EverydayTask[6]["Num"] = 50
	tDuelGhostdomCity_Match_EverydayTask[6]["Percent"] = 7
	
	--金臂利爪
	tDuelGhostdomCity_Match_EverydayTask[7] ={}
	tDuelGhostdomCity_Match_EverydayTask[7]["ItemId"] = 729094
	tDuelGhostdomCity_Match_EverydayTask[7]["Num"] = 40
	tDuelGhostdomCity_Match_EverydayTask[7]["Percent"] = 7
	
	--银色羽毛
	tDuelGhostdomCity_Match_EverydayTask[8] ={}
	tDuelGhostdomCity_Match_EverydayTask[8]["ItemId"] = 729095
	tDuelGhostdomCity_Match_EverydayTask[8]["Num"] = 40
	tDuelGhostdomCity_Match_EverydayTask[8]["Percent"] = 7
	
	--陌刀
	tDuelGhostdomCity_Match_EverydayTask[9] ={}
	tDuelGhostdomCity_Match_EverydayTask[9]["ItemId"] = 729096
	tDuelGhostdomCity_Match_EverydayTask[9]["Num"] = 40
	tDuelGhostdomCity_Match_EverydayTask[9]["Percent"] = 7
	
	--蝙蝠翅
	tDuelGhostdomCity_Match_EverydayTask[10] ={}
	tDuelGhostdomCity_Match_EverydayTask[10]["ItemId"] = 729098
	tDuelGhostdomCity_Match_EverydayTask[10]["Num"] = 30
	tDuelGhostdomCity_Match_EverydayTask[10]["Percent"] = 7
	
	--蝙蝠血
	tDuelGhostdomCity_Match_EverydayTask[11] ={}
	tDuelGhostdomCity_Match_EverydayTask[11]["ItemId"] = 729099
	tDuelGhostdomCity_Match_EverydayTask[11]["Num"] = 30
	tDuelGhostdomCity_Match_EverydayTask[11]["Percent"] = 7
	
	--蛮牛角
	tDuelGhostdomCity_Match_EverydayTask[12] ={}
	tDuelGhostdomCity_Match_EverydayTask[12]["ItemId"] = 729100
	tDuelGhostdomCity_Match_EverydayTask[12]["Num"] = 30
	tDuelGhostdomCity_Match_EverydayTask[12]["Percent"] = 7
	
	--血魔牙
	tDuelGhostdomCity_Match_EverydayTask[13] ={}
	tDuelGhostdomCity_Match_EverydayTask[13]["ItemId"] = 729101
	tDuelGhostdomCity_Match_EverydayTask[13]["Num"] = 20
	tDuelGhostdomCity_Match_EverydayTask[13]["Percent"] = 7
	
	--万年寒冰
	tDuelGhostdomCity_Match_EverydayTask[14] ={}
	tDuelGhostdomCity_Match_EverydayTask[14]["ItemId"] = 729102
	tDuelGhostdomCity_Match_EverydayTask[14]["Num"] = 20
	tDuelGhostdomCity_Match_EverydayTask[14]["Percent"] = 7

local tDuelGhostdomCity_Match_Clear ={}
	--冥王令
	tDuelGhostdomCity_Match_Clear[1] = 3006984
	--冥王令碎片
	tDuelGhostdomCity_Match_Clear[2] = 3006983
	--冥王金钥
	tDuelGhostdomCity_Match_Clear[3] = 3006982
	--冥魂玉石
	tDuelGhostdomCity_Match_Clear[4] = 723085

--光效配置
local tDuelGhostdomCity_Match_Effect ={}
	tDuelGhostdomCity_Match_Effect["BossBorn"] = "zf2-e285"
	tDuelGhostdomCity_Match_Effect["NextMap"] = "zf2-e300"
	tDuelGhostdomCity_Match_Effect["Treasure1"] = "zf2-e280"
	tDuelGhostdomCity_Match_Effect["Treasure2"] = "accession"
	tDuelGhostdomCity_Match_Effect["Treasure3"] = "break_start"
	tDuelGhostdomCity_Match_Effect["Treasure4"] = "angelwing"
	tDuelGhostdomCity_Match_Effect["GetStone"] = "angelwing"

--镇魂珠魂值上线
local tDuelGhostdomCity_Match_GhostLimit={}
	tDuelGhostdomCity_Match_GhostLimit[729611] = 2500
	tDuelGhostdomCity_Match_GhostLimit[729612] = 2000
	tDuelGhostdomCity_Match_GhostLimit[729613] = 1500
	tDuelGhostdomCity_Match_GhostLimit[729614] = 1000
	tDuelGhostdomCity_Match_GhostLimit[729703] = 500
	
--log
local tDuelGhostdomCity_Match_Log ={}
	--记录已选择难度
	tDuelGhostdomCity_Match_Log["JoinAct"] ="0,0,0,0,%s,1[1],0,0"
	tDuelGhostdomCity_Match_Log["Join"] ="0,0,0,0,12000369,1,0,0"
	--记录通关层数
	tDuelGhostdomCity_Match_Log["ActStep"] ="0,0,0,0,%s,1[%s],0,0"
	--打开宝库次数
	tDuelGhostdomCity_Match_Log["OpenBox"] ="0,0,0,0,%s,1[%s],0,0"
	--打开宝库领取奖励
	tDuelGhostdomCity_Match_Log["BoxReward"] ="0,0,0,0,%s,2[1],%s,%s"
	--领取排名奖励
	tDuelGhostdomCity_Match_Log["RankReward"] ="0,0,0,0,%s,2[2],%s,%s"
	--购买药水
	tDuelGhostdomCity_Match_Log["BuyMedicine"] ="2,0,0,0,%s,2[3],%s,%s"
	--开启宝箱(天石开)
	tDuelGhostdomCity_Match_Log["OpenBoxFlagTs"] ="27,0,0,0,%s,2[4],1,0"
	--开启宝箱(钥匙开)
	tDuelGhostdomCity_Match_Log["OpenBoxFlagYs"] ="0,0,3006982,1,%s,2[4],1,0"
	--达成 成就
	tDuelGhostdomCity_Match_Log["Achievement"] ="0,0,0,0,%s,2[5],%s,1"
	
	--新服活动用
	tDuelGhostdomCity_Match_Log["NewSeverAc"] = "0,0,0,0,12000215,2,3002926[3002030],30[15]"
	
	--使用冥王令刷boss失败log  地图id，boss id
	tDuelGhostdomCity_Match_Log["FailBoss"] = "0,0,0,0,12000215,2[4],%d,%d"
	
	local tDuelGhostdomCity_Match_Const = {}
	--新服开启标示，大等于1表示开启
	tDuelGhostdomCity_Match_Const["GlobalData"] = 51131
	
	--新服活动用
	local tDuelGhostdomCity_Match_Item = {}
	--秘制免费修炼丹
	tDuelGhostdomCity_Match_Item["Mizhi"] = 3002926
	tDuelGhostdomCity_Match_Item["MizhiAttr"] = "0 30"
	--强效护心丹
	tDuelGhostdomCity_Match_Item["QHuxindan"] = 3002030
	tDuelGhostdomCity_Match_Item["QHuxindanAttr"] = "0 15"
	
-- 获得岫山玉部分配置
local tDuelGhostdomCity_Match_XiuJade = {}
	tDuelGhostdomCity_Match_XiuJade["ActivityTime"] = "2016-10-18 00:00 2016-11-02 23:59"
	tDuelGhostdomCity_Match_XiuJade["NewSevTime"] = {}
	tDuelGhostdomCity_Match_XiuJade["NewSevTime"][1] = "0 3"
	tDuelGhostdomCity_Match_XiuJade["NewSevTime"][2] = "0 9"
	--岫山玉
	tDuelGhostdomCity_Match_XiuJade["XiuJade"] = 3008221
	--玩家参加活动获得岫山玉
	tDuelGhostdomCity_Match_XiuJade["ActAwXiuJade"] = "0,0,0,0,12000286,1[1],0,0"

--不同难度的logid = nLogBaceId + 难度系数
local nLogBaceId = 12000176
	
--EmoneyLOG 
local tDuelGhostdomCity_Match_EmoneyLOG = {}
	--购买旋风药水
	tDuelGhostdomCity_Match_EmoneyLOG["XuanFeng"] = "350	4373	2	2	1	"
	--购买体力药水
	tDuelGhostdomCity_Match_EmoneyLOG["TiLi"] = "350	4374	2	2	1	"
	--开宝箱
	tDuelGhostdomCity_Match_EmoneyLOG["OpenBox"] = "350	4375	27	27	1	"
	
local tDuelGhostdomCity_Match_TaskPassId = {}
	tDuelGhostdomCity_Match_TaskPassId[1] = 6472
	tDuelGhostdomCity_Match_TaskPassId[2] = 6473
	tDuelGhostdomCity_Match_TaskPassId[3] = 6474
	tDuelGhostdomCity_Match_TaskPassId[4] = 6475

--/10 表示升级所需分钟数
local tDuelGhostdomCity_Match_UpLevTime = {
	[130]=102106,
	[131]=153159,
	[132]=229739,
	[133]=344608,
	[134]=516912,
	[135]=775368,
	[136]=1163052,
	[137]=1744578,
	[138]=2616867,
	[139]=3925301,
}
	
	
--决战冥城成就表
local tDuelGhostdomCity_Match_Achievement = {
	[1] = 11002, --决战冥城第1关：鬼？我才不怕！
	[2] = 11003, --决战冥城第2关：捉鬼大师
	[3] = 11004, --决战冥城第3关：恐怖回廊
	[4] = 11005, --决战冥城第4关：冥王之殇
}


--黄金圣衣活动期间额外获得战衣碎片礼包
--3004915	战衣碎片礼包
local tDuelGhostdomCity_Match_GoldClothes = {}
	tDuelGhostdomCity_Match_GoldClothes["ActivityTime"] = "2016-12-08 00:00 2016-12-21 23:59"
	tDuelGhostdomCity_Match_GoldClothes["Item"] = {}
	tDuelGhostdomCity_Match_GoldClothes["Item"][1] = {}
	tDuelGhostdomCity_Match_GoldClothes["Item"][1]["ItemId"] = 3004915
	tDuelGhostdomCity_Match_GoldClothes["Item"][1]["Num"] = 1
	tDuelGhostdomCity_Match_GoldClothes["Item"][1]["SaveTime"] = 0
	tDuelGhostdomCity_Match_GoldClothes["Item"][1]["Active"] = 0
	tDuelGhostdomCity_Match_GoldClothes["EventType"] = 153
	tDuelGhostdomCity_Match_GoldClothes["DataType"] = 55

	tDuelGhostdomCity_Match_GoldClothes["Log"] = {}
	tDuelGhostdomCity_Match_GoldClothes["Log"][3100069] = "0,0,0,0,10002346,2[4],3004915,1"
	tDuelGhostdomCity_Match_GoldClothes["Log"][3100070] = "0,0,0,0,10002346,2[5],3004915,1"
	
local tDuelGhostdomCity_Match_Const = {}
tDuelGhostdomCity_Match_Const["GlobalData"] = 51131

--九阳SQL 接LUA
function DuelGhostdomCity_Match_NpcAction(nNpcId)
	local nEvent = tDuelGhostdomCity_Match_Stc["EventType"]
	local nType = tDuelGhostdomCity_Match_Stc["DataType"][1]
	
	local nFlag = false
	--不在活动期间
	for k ,v in pairs(tDuelGhostdomCity_Match_TaskInfo["JoinMatchTime"])do
		if  Sys_ChkWeedTime(v) then
			nFlag = true
		end
	end
	
	-- if   nFlag then
		-- LinkNpcGossipFunc_New(nNpcId,"1-2")
		-- return
	-- end
	
	-- 判断每周是否已参与过
	local nEvent_2 = tDuelGhostdomCity_Match_Stc["EventType_2"]
	local nWeekType = tDuelGhostdomCity_Match_Stc["DataType_2"]
	local nIndexType = tDuelGhostdomCity_Match_Stc["DataType_3"]
	local nKillType = tDuelGhostdomCity_Match_Stc["DataType"][9]
	
	if Task_StcInterval(nEvent,nKillType,1,5) then
		Task_SetStatistic(nEvent,nKillType,0,1,0)
		Task_SetStcTimestamp(nEvent,nKillType,0,0)
	end
	
	if Task_ChkStcValue(nEvent_2,nWeekType,">",0) then
		if Task_StcInterval(nEvent_2,nWeekType,1,5) and nFlag then
			-- 隔周
			Task_SetStatistic(nEvent_2,nWeekType,0,1,0)
			Task_SetStcTimestamp(nEvent_2,nWeekType,0,0)
		
			Task_SetStatistic(nEvent_2,nIndexType,0,1,0)
			Task_SetStcTimestamp(nEvent_2,nIndexType,0,0)
			
			Task_SetStatistic(nEvent,nKillType,0,1,0)
			Task_SetStcTimestamp(nEvent,nKillType,0,0)

			-- 隔周 清理开启宝箱的掩码
			local nType1 = tDuelGhostdomCity_Match_Stc["DataType"][10]
			local nType2 = tDuelGhostdomCity_Match_Stc["DataType"][12]
			local nType3 = tDuelGhostdomCity_Match_Stc["DataType"][13]
			
			Task_SetStatistic(nEvent,nType1,0,1,0)
			Task_SetStcTimestamp(nEvent,nType1,0,0)
			
			Task_SetStatistic(nEvent_2,nType2,0,1,0)
			Task_SetStcTimestamp(nEvent_2,nType2,0,0)
			
			Task_SetStatistic(nEvent_2,nType3,0,1,0)
			Task_SetStcTimestamp(nEvent_2,nType3,0,0)
			
		elseif Task_ChkStcValue(nEvent_2,nIndexType,">=",4) then
			LinkNpcGossipFunc_New(nNpcId,"1-4")
			return
		end
	end
	
	--隔2天清空用户已领取的记录
	if  Task_StcInterval(nEvent,nType,1,4) then
		
		if nFlag then
			-- for k,v in pairs(tDuelGhostdomCity_Match_Stc["DataType"])do
				-- Task_SetStatistic(nEvent,v,0,1)
				-- Task_SetStcTimestamp(nEvent,v,0)
			-- end
			
			for k = 1,8 do
				local nClearType = tDuelGhostdomCity_Match_Stc["DataType"][k]
				Task_SetStatistic(nEvent,nClearType,0,1)
				Task_SetStcTimestamp(nEvent,nClearType,0)
			end
			
			local nType11 = tDuelGhostdomCity_Match_Stc["DataType"][11]
			Task_SetStatistic(nEvent,nType11,0,1)
			Task_SetStcTimestamp(nEvent,nType11,0)
			
			Task_SetStatistic(tDuelGhostdomCity_Match_Stc["EventTypeMonster"],tDuelGhostdomCity_Match_Stc["DataTypeMonster"],0,1)
			Task_SetStcTimestamp(tDuelGhostdomCity_Match_Stc["EventTypeMonster"],tDuelGhostdomCity_Match_Stc["DataTypeMonster"],0)
			--删除task_detail掩码
			for o,p in pairs(tDuelGhostdomCity_Match_TaskPassId) do 
				if Task_ChkTaskDetail(p) then
					Task_SetTaskDetailCompleteFlag(p,0)
					Task_DelTaskDetail(p) 
				end
			end
		end
	end
			 
	
	--是否110级或已转世
	if not User_JudgeLevelAndMetempsychosis(tDuelGhostdomCity_Match_TaskInfo["LevelLimit"]["Level"],tDuelGhostdomCity_Match_TaskInfo["LevelLimit"]["Incarnation"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return 
	end
	
	-- local nEvent = tDuelGhostdomCity_Match_Stc["EventType"]
	-- local nType = tDuelGhostdomCity_Match_Stc["DataType"][1]
	--是否接过任务
	-- if not Task_ChkStcValue(nEvent,nType,"==",0) then
		-- LinkNpcGossipFunc_New(nNpcId,"1-4")
		-- return 
	-- end
	
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

-- 判断当天是周几（1 3 5）
function DuelGhostdomCity_Match_JudgeWeekDay()
	local nIndex = 0
	local nWeekDay = 0
	for k ,v in pairs(tDuelGhostdomCity_Match_TaskInfo["JoinMatchTime"])do
		if Sys_ChkWeedTime(v) then
			nIndex = k
		end
	end
	if nIndex == 1 then
		nWeekDay = 1
	elseif nIndex == 2 then
		nWeekDay = 3
	elseif nIndex == 3 then
		nWeekDay = 5
	end
	return nWeekDay
end

--领取排名奖励
function tDuelGhostdomCity_Match_GetRankReward(nNpcId)
	--不在前10名中
	local nFlag = 0
	local nEvent = tDuelGhostdomCity_Match_Stc["EventType"]
	local nDiff =Get_UserStatisticValue(nEvent,tDuelGhostdomCity_Match_Stc["DataType"][2])
	if nDiff~= 0 then
		for k,v in pairs(tDuelGhostdomCity_Match_GlobalData["Rank"][nDiff]) do
			for i = 1, 5 do 
				--User_TalkChannel2005(tostring(Get_SysDynaGlobalData(v,i)))
				--User_TalkChannel2005(tostring(Get_UserId()))
				if  Get_SysDynaGlobalData(v,i) == Get_UserId() then
					nFlag = i+(k-1)*5
					break
				end
			end
		end
	end
	--User_TalkChannel2005("1")
	--不在领奖时间
	--周天不让领
	local sSunDay = "0 00:00 0 23:59"
	if Sys_ChkWeedTime(sSunDay) then
		nFlag = 0
	end
	--不在前10名中
	if  nFlag == 0 then
		
		LinkNpcGossipFunc_New(nNpcId,"100-6")
		return 
	end
	
	local nEvent = tDuelGhostdomCity_Match_Stc["EventType"]
	--今日是否领取过排名奖励
	local nType = tDuelGhostdomCity_Match_Stc["DataType"][3]
	
	--隔天清空用户已领取的记录
	if  Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	if Task_ChkStcValue(nEvent,nType,"==",1) then
		--已领取
		LinkNpcGossipFunc_New(nNpcId,"100-8")
		return
	end
	
	
	local nType = tDuelGhostdomCity_Match_Stc["DataType"][1]
	
	if  Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	if Task_ChkStcValue(nEvent,nType,"==",1) then
		--次日才能领奖
		LinkNpcGossipFunc_New(nNpcId,"100-7")
		return 
	end
	
	--log id
	local nLogFlag = nDiff + nLogBaceId
	
	
	local nLev = Get_UserLevel()
	local sStr= ""
	local nValue = 0
	if nLev < tDuelGhostdomCity_Match_GetLimit["Level"] then
		nValue =  tDuelGhostdomCity_Match_RankReward[nDiff][nFlag]
		
		if nDiff == 3 then
			--大于等于130级，换成时间加经验
			if nLev <= 129 then
				local nExpNum = math.floor(Get_UserLevupExp()* nValue)
				User_AddExp(nExpNum)
			else
				local expTime = 0
				if  tDuelGhostdomCity_Match_UpLevTime[nLev] then
					expTime = math.floor(tDuelGhostdomCity_Match_UpLevTime[nLev]*nValue/10)
				end
				User_AddExpTime(expTime)
			end
			
			sStr =(nValue*100)..tDuelGhostdomCity_Match_Text["ExpPreText"]
		else
			User_AddExpTime(nValue)
			sStr = nValue..tDuelGhostdomCity_Match_Text["ExpText"]
		end
		
		Sys_SaveActionFestivalLog(string.format(tDuelGhostdomCity_Match_Log["RankReward"],tostring(nLogFlag),"4",tostring(nValue)))
	else
		--满级排行奖励
		if nDiff == 3 then
			--精英难度给气力值
			nValue =  tDuelGhostdomCity_Match_MaxRankReward[nDiff][nFlag]
			sStr = nValue..tDuelGhostdomCity_Match_Text["PowerText"]
			User_AddStrengthValue(nValue)
			Sys_SaveActionFestivalLog(string.format(tDuelGhostdomCity_Match_Log["RankReward"],tostring(nLogFlag),"12",tostring(nValue)))	
		else
			nValue =  tDuelGhostdomCity_Match_MaxRankReward[nDiff][nFlag]
			sStr = nValue..tDuelGhostdomCity_Match_Text["CulText"]
			User_AddCultivation(nValue)
			Sys_SaveActionFestivalLog(string.format(tDuelGhostdomCity_Match_Log["RankReward"],tostring(nLogFlag),"6",tostring(nValue)))	
		end
	end
	
	--设置成已领取奖励
	local nType = tDuelGhostdomCity_Match_Stc["DataType"][3]
	Task_SetStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	tNpcGossip[3215]["Text154"] = string.format(tDuelGhostdomCity_Match_Text[3215]["Text133"],sStr)
	--领取成功
	LinkNpcGossipFunc_New(nNpcId,"100-5")
end

--进入冥城
function DuelGhostdomCity_Match_EnterMap(nNpcId,nDifficulty,nMapId)
	
	local nFlag = false
	--不在活动期间
	for k ,v in pairs(tDuelGhostdomCity_Match_TaskInfo["JoinMatchTime"])do
		if  Sys_ChkWeedTime(v) then
			nFlag = true
		end
	end
	
	if  not nFlag then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--检测是否有幽冥古镜，且任务还没完成
	local bIsFinish = Get_UserStatisticValue(tDuelGhostdomCity_Match_Stc["EventType"],tDuelGhostdomCity_Match_Stc["DataType"][1])	
	if not Item_ChkItem(tDuelGhostdomCity_Match_Mirror["Mirror"]) and bIsFinish ~= 1 then
		if not User_CheckLeftSpace(tDuelGhostdomCity_Match_GetLimit["BagFull"]) then
			User_TalkChannel2005(tDuelGhostdomCity_Match_Text["MirrorFull"])
		else
			Item_AddItem(tDuelGhostdomCity_Match_Mirror["Mirror"],0,0,0,tDuelGhostdomCity_Match_Mirror["Save_Time"],1)
			User_TalkChannel2005(tDuelGhostdomCity_Match_Text["EnterMirror"])
		end
	end

	-----------------------------------------------------
	-- 判断每周是否已参与过
	local nEvent_2 = tDuelGhostdomCity_Match_Stc["EventType_2"]
	local nWeekType = tDuelGhostdomCity_Match_Stc["DataType_2"]
	local nIndexType = tDuelGhostdomCity_Match_Stc["DataType_3"]
	
	local nEvent = tDuelGhostdomCity_Match_Stc["EventType"]
	local nKillType = tDuelGhostdomCity_Match_Stc["DataType"][9]

	if Task_StcInterval(nEvent,nKillType,1,5) then
		Task_SetStatistic(nEvent,nKillType,0,1,0)
		Task_SetStcTimestamp(nEvent,nKillType,0,0)
	end

	if Task_ChkStcValue(nEvent_2,nWeekType,">",0) then
		if Task_StcInterval(nEvent_2,nWeekType,1,5) and nFlag then
			-- 隔周
			Task_SetStatistic(nEvent_2,nWeekType,0,1,0)
			Task_SetStcTimestamp(nEvent_2,nWeekType,0,0)
		
			Task_SetStatistic(nEvent_2,nIndexType,0,1,0)
			Task_SetStcTimestamp(nEvent_2,nIndexType,0,0)
			
			Task_SetStatistic(nEvent,nKillType,0,1,0)
			Task_SetStcTimestamp(nEvent,nKillType,0,0)

			-- 隔周 清理开启宝箱的掩码
			local nType1 = tDuelGhostdomCity_Match_Stc["DataType"][10]
			local nType2 = tDuelGhostdomCity_Match_Stc["DataType"][12]
			local nType3 = tDuelGhostdomCity_Match_Stc["DataType"][13]
			
			Task_SetStatistic(nEvent,nType1,0,1,0)
			Task_SetStcTimestamp(nEvent,nType1,0,0)
			
			Task_SetStatistic(nEvent_2,nType2,0,1,0)
			Task_SetStcTimestamp(nEvent_2,nType2,0,0)
			
			Task_SetStatistic(nEvent_2,nType3,0,1,0)
			Task_SetStcTimestamp(nEvent_2,nType3,0,0)
			
		elseif Task_ChkStcValue(nEvent_2,nIndexType,">=",4) then
			LinkNpcGossipFunc_New(nNpcId,"1-4")
			return
		end
	end
	
	-- 每周参与过一次
	local nWeekDay = DuelGhostdomCity_Match_JudgeWeekDay()
	Task_SetStatistic(nEvent_2,nWeekType,nWeekDay,1,0)
	Task_SetStcTimestamp(nEvent_2,nWeekType,0,0)
	--------------------------------------------------------

	--第一次进入
	if not nMapId  and nDifficulty ~= 0 then
	
		--记录难度
		local nEvent = tDuelGhostdomCity_Match_Stc["EventType"]
		local nType = tDuelGhostdomCity_Match_Stc["DataType"][2]
		
		Task_SetStatistic(nEvent,nType,nDifficulty,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		--记录难度LOG
		local nDifficultyFlag = nDifficulty + nLogBaceId
		Sys_SaveActionFestivalLog(string.format(tDuelGhostdomCity_Match_Log["JoinAct"],tostring(nDifficultyFlag)))
		--老玩家回归活动新增log
		Sys_SaveActionFestivalLog(tDuelGhostdomCity_Match_Log["Join"])
		
		--记录进度
		local nEvent = tDuelGhostdomCity_Match_Stc["EventType"]
		local nType = tDuelGhostdomCity_Match_Stc["DataType"][4]
		local nMapDiffId = tDuelGhostdomCity_Match_ChkMap[nDifficulty][1]
		
		Task_SetStatistic(nEvent,nType,nMapDiffId,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		--记录入场时间
		local nEvent = tDuelGhostdomCity_Match_Stc["EventType"]
		local nType = tDuelGhostdomCity_Match_Stc["DataType"][5]
		Task_SetStatistic(nEvent,nType,os.time(),1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		local nPosX = tDuelGhostdomCity_Match_MapConfig[nMapDiffId]["nPosX"]
		local nPosY = tDuelGhostdomCity_Match_MapConfig[nMapDiffId]["nPosY"]
		
		local nBound = tDuelGhostdomCity_Match_MapConfig["nBound"]
		
		User_UserRandBoundTrans(nMapDiffId,nPosX,nPosY,nBound,nBound)
		User_TalkChannel2005(tDuelGhostdomCity_Match_Text["MatchMap"][1])
		--副职业修行月，决战冥城
		SecondProGrowth_SendTicket(2)
		--删除已有道具(钥匙不删)
		for k,v in pairs(tDuelGhostdomCity_Match_Clear)do
			if v ~= 3006982 and Item_ChkItem(v) then
				Item_DelAllItemByType(v)
				User_TalkChannel2005(tDuelGhostdomCity_Match_Text["ItemDel"]) 
			end
		end
		
		if not Task_ChkTaskDetail(tDuelGhostdomCity_Match_TaskPassId[1]) then
			Task_AddTaskDetail(tDuelGhostdomCity_Match_TaskPassId[1])
			Task_SetTaskDetailData5(tDuelGhostdomCity_Match_TaskPassId[1],1)
		end
		
		--第一次进给一个体力药水
		if  User_CheckLeftSpace(1) then
			Item_AddItem(3006987,1)
			User_TalkChannel2005(string.format(tDuelGhostdomCity_Match_Text["GongXi"],string.format(tDuelGhostdomCity_Match_Text["Str"][2],Get_ItemtypeName(3006987),"1")))
		end
	end
	
	--已选难度 并且有地图
	if nMapId then
		
		local nMapValue = Get_UserStatisticValue(tDuelGhostdomCity_Match_Stc["EventType"],tDuelGhostdomCity_Match_Stc["DataType"][4])
		local bFlag = false
		local nIndex = 1
		--地图是否正确
		for k,v in pairs(tDuelGhostdomCity_Match_ChkMap)do
			for z,l in pairs(v)do
				
				if l == nMapValue then
					bFlag = true
					nIndex = z
				end
			end
		end
		
		--地图错误
		if not bFlag then
			User_TalkChannel2005(tDuelGhostdomCity_Match_Text["MapError"])
			return 
		end
		
		local nPosX = tDuelGhostdomCity_Match_MapConfig[nMapValue]["nPosX"]
		local nPosY = tDuelGhostdomCity_Match_MapConfig[nMapValue]["nPosY"]
		
		local nBound = tDuelGhostdomCity_Match_MapConfig["nBound"]
		
		User_UserRandBoundTrans(nMapValue,nPosX,nPosY,nBound,nBound)
		User_TalkChannel2005(tDuelGhostdomCity_Match_Text["MatchMap"][nIndex])
	
		if nMapValue == 3958 or nMapValue == 3963 or nMapValue == 3968 then
			--是否击杀冥王
			local nEvent = tDuelGhostdomCity_Match_Stc["EventType"]
			local nType = tDuelGhostdomCity_Match_Stc["DataType"][9] 
			--检测物品
			if Item_ChkMulItem(tDuelGhostdomCity_Match_KillMonsterDrop[4],tDuelGhostdomCity_Match_KillMonsterDrop[4],tDuelGhostdomCity_Match_Sp["Limit"])
			or Item_ChkMulItem(tDuelGhostdomCity_Match_Clear[1],tDuelGhostdomCity_Match_Clear[1],1) 
			or Task_ChkStcValue(nEvent,nType,"~=",0) then
			
				--User_TalkChannel2005(tDuelGhostdomCity_Match_Text["GhostChip"])
			else
				local nFindPosX = 145
				local nFindPosY = 226
				Sys_MsgBox(tDuelGhostdomCity_Match_Text["FourFindWay"],"DuelGhostdomCity_Match_SjCorridor</N>"..nFindPosX.."</N>"..nFindPosY)
			end
		end
		
		-- 比较时间(防止玩家转服到时间较前的服务器 继续进行游戏)
		local nNowTime = os.time()
		local nEvent = tDuelGhostdomCity_Match_Stc["EventType"]
		local nType = tDuelGhostdomCity_Match_Stc["DataType"][5]
		local nStcTime = Get_UserStatisticValue(nEvent,nType)
		if nNowTime < nStcTime then
			Task_SetStatistic(nEvent,nType,os.time(),1)
			Task_SetStcTimestamp(nEvent,nType,0)
		end
		
	end
	-- 决战冥城获得活跃币
	NewHandInHand_GetReward(2,4)
end

-- 进入地图开宝箱
function DuelGhostdomCity_Match_EnterBoxMap(nNpcId)
	local nEvent = tDuelGhostdomCity_Match_Stc["EventType"]
	local nType1 = tDuelGhostdomCity_Match_Stc["DataType"][2]
	local nType2 = tDuelGhostdomCity_Match_Stc["DataType"][4]
	
	-- tDuelGhostdomCity_Match_ChkMap[3][5]= 3969
	-- tDuelGhostdomCity_Match_ChkMap[1][5]= 3959

	if User_JudgeLevelAndMetempsychosis(15,2) then
		-- Task_SetStatistic(nEvent,nType1,3,1)
		-- Task_SetStcTimestamp(nEvent,nType1,0)
		Task_SetStatistic(nEvent,nType2,tDuelGhostdomCity_Match_ChkMap[3][5],1)
		Task_SetStcTimestamp(nEvent,nType2,0)
	else
		-- Task_SetStatistic(nEvent,nType1,1,1)
		-- Task_SetStcTimestamp(nEvent,nType1,0)
		Task_SetStatistic(nEvent,nType2,tDuelGhostdomCity_Match_ChkMap[1][5],1)
		Task_SetStcTimestamp(nEvent,nType2,0)	
	end

	local nMapValue = Get_UserStatisticValue(tDuelGhostdomCity_Match_Stc["EventType"],tDuelGhostdomCity_Match_Stc["DataType"][4])
	local bFlag = false
	local nIndex = 1
	--地图是否正确
	for k,v in pairs(tDuelGhostdomCity_Match_ChkMap)do
		for z,l in pairs(v)do
			if l == nMapValue then
				bFlag = true
				nIndex = z
			end
		end
	end
	--地图错误
	if not bFlag then
		User_TalkChannel2005(tDuelGhostdomCity_Match_Text["MapError"])
		return 
	end
	local nPosX = tDuelGhostdomCity_Match_MapConfig[nMapValue]["nPosX"]
	local nPosY = tDuelGhostdomCity_Match_MapConfig[nMapValue]["nPosY"]

	local nBound = tDuelGhostdomCity_Match_MapConfig["nBound"]

	User_UserRandBoundTrans(nMapValue,nPosX,nPosY,nBound,nBound)
	User_TalkChannel2005(tDuelGhostdomCity_Match_Text["MatchMap"][nIndex])

end

--冥城鬼门过关条件
function DuelGhostdomCity_Match_GhostDoor(nNpcId,nIndex)
	
	local nItemId =tDuelGhostdomCity_Match_ChkTask[1]["ItemId"]
	local nNum = tDuelGhostdomCity_Match_ChkTask[1]["Num"]
	
	local bFlag = false
	--不在活动期间
	for k ,v in pairs(tDuelGhostdomCity_Match_TaskInfo["JoinMatchTime"])do
		if  Sys_ChkWeedTime(v) then
			bFlag = true
		end
	end
	
	--不在活动期间
	if not bFlag then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	--是否有5个玉石
	if Item_ChkMulItem(nItemId,nItemId,nNum) then
		
		--获取难度
		local nEvent =tDuelGhostdomCity_Match_Stc["EventType"]
		local nType =tDuelGhostdomCity_Match_Stc["DataType"][2]
		
		--文字说明
		local sStr = tDuelGhostdomCity_Match_Text["Str"][5]
		local sJianGe = tDuelGhostdomCity_Match_Text["Str"][3] --多个奖励之间间隔
		local nDiff =Get_UserStatisticValue(nEvent,nType)
		local nLev = Get_UserLevel()
		--奖励table
		local tAward = {} 
		if nLev < tDuelGhostdomCity_Match_GetLimit["Level"] then
			tAward = tDuelGhostdomCity_Match_ExpReward[nDiff][nIndex]
		else
			tAward = tDuelGhostdomCity_Match_CulReward[nDiff][nIndex]
		end
		--经验奖励
		if tAward["Exp"] then		
			if nLev <= tDuelGhostdomCity_Match_GetLimit["LevelTime"] then
				local sitemname = Get_ItemtypeName(tAward["Level"])
				sStr = string.format(tDuelGhostdomCity_Match_Text["Str"][1],sStr,sitemname)
			else
				sStr = string.format(sJianGe,sStr,tAward["Exp"],tDuelGhostdomCity_Match_Text["ExpText"])
			end
			
			sJianGe = tDuelGhostdomCity_Match_Text["Str"][4]
		end
		
		--修行值
		if tAward["Cul"] then 
			sStr = string.format(sJianGe,sStr,tAward["Cul"],tDuelGhostdomCity_Match_Text["CulText"])
			sJianGe = tDuelGhostdomCity_Match_Text["Str"][4]
		end
		--气力值
		if tAward["StrValue"] then 
			sStr = string.format(sJianGe,sStr,tAward["StrValue"],tDuelGhostdomCity_Match_Text["PowerText"])
			sJianGe = tDuelGhostdomCity_Match_Text["Str"][4]
		end
		--物品
		if tAward["Item"] then
			if sStr == tDuelGhostdomCity_Match_Text["Str"][5] then
				sJianGe = tDuelGhostdomCity_Match_Text["Str"][6]
			else
				sJianGe = tDuelGhostdomCity_Match_Text["Str"][7]
			end
			for i,v in pairs(tAward["Item"]) do
				local sitemname = Get_ItemtypeName(v["ItemId"])
				
				sStr = string.format(sJianGe,sStr,sitemname,v["Num"])
				sJianGe = tDuelGhostdomCity_Match_Text["Str"][7]
			end
		end
		-----------------------------------
		-- if nLev < tDuelGhostdomCity_Match_GetLimit["Level"] then
			-- sStr = tDuelGhostdomCity_Match_ExpReward[nDiff][nIndex]..tDuelGhostdomCity_Match_Text["ExpText"]
		-- else
			-- if nDiff == 3 then
				--精英难度奖励 气力值
				-- sStr = tDuelGhostdomCity_Match_CulReward[nDiff][nIndex]..tDuelGhostdomCity_Match_Text["PowerText"]
			-- else
				--普通，简单难度奖励 修行值
				-- sStr = tDuelGhostdomCity_Match_CulReward[nDiff][nIndex]..tDuelGhostdomCity_Match_Text["CulText"]
			-- end	
		-- end
		---------------------------------------
		
		tNpcGossip[18716]["Text113"] = string.format(tDuelGhostdomCity_Match_Text[18716]["Text113"],sStr)
		LinkNpcGossipFunc_New(nNpcId,"1-2")
	else
		LinkNpcGossipFunc_New(nNpcId,"1-3")
	end
end

--冥王大殿
function DuelGhostdomCity_Match_Palace(nNpcId,nIndex)
	local bFlag = false
	--不在活动期间
	for k ,v in pairs(tDuelGhostdomCity_Match_TaskInfo["JoinMatchTime"])do
		if  Sys_ChkWeedTime(v) then
			bFlag = true
		end
	end
	
	--不在活动期间
	if not bFlag then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end

	local nMagic = Get_UserStatisticValue(tDuelGhostdomCity_Match_Stc["EventType"],tDuelGhostdomCity_Match_Stc["DataType"][7])
	local nNeedMag = DuelGhostdomCity_Match_GetMagic()
	
	
	
	--魔值足够
	if nMagic >= nNeedMag then
	
		--获取难度
		local nEvent =tDuelGhostdomCity_Match_Stc["EventType"]
		local nType =tDuelGhostdomCity_Match_Stc["DataType"][2]
		
		--文字说明
		local sStr = tDuelGhostdomCity_Match_Text["Str"][5]
		local sJianGe = tDuelGhostdomCity_Match_Text["Str"][3] --多个奖励之间间隔
		local nDiff =Get_UserStatisticValue(nEvent,nType)
		local nLev = Get_UserLevel()
		
		--奖励table
		local tAward = {} 
		if nLev < tDuelGhostdomCity_Match_GetLimit["Level"] then
			tAward = tDuelGhostdomCity_Match_ExpReward[nDiff][nIndex]
		else
			tAward = tDuelGhostdomCity_Match_CulReward[nDiff][nIndex]
		end
		--经验奖励
		if tAward["Exp"] then		
			if nLev <= tDuelGhostdomCity_Match_GetLimit["LevelTime"] then
				local sitemname = Get_ItemtypeName(tAward["Level"])
				sStr = string.format(tDuelGhostdomCity_Match_Text["Str"][1],sStr,sitemname)
			else
				sStr = string.format(sJianGe,sStr,tAward["Exp"],tDuelGhostdomCity_Match_Text["ExpText"])
			end
			
			sJianGe = tDuelGhostdomCity_Match_Text["Str"][4]
		end
		
		--修行值
		if tAward["Cul"] then 
			sStr = string.format(sJianGe,sStr,tAward["Cul"],tDuelGhostdomCity_Match_Text["CulText"])
			sJianGe = tDuelGhostdomCity_Match_Text["Str"][4]
		end
		--气力值
		if tAward["StrValue"] then 
			sStr = string.format(sJianGe,sStr,tAward["StrValue"],tDuelGhostdomCity_Match_Text["PowerText"])
			sJianGe = tDuelGhostdomCity_Match_Text["Str"][4]
		end
		--物品
		if tAward["Item"] then
			if sStr == tDuelGhostdomCity_Match_Text["Str"][5] then
				sJianGe = tDuelGhostdomCity_Match_Text["Str"][6]
			else
				sJianGe = tDuelGhostdomCity_Match_Text["Str"][7]
			end
			for i,v in pairs(tAward["Item"]) do
				local sitemname = Get_ItemtypeName(v["ItemId"])
				
				sStr = string.format(sJianGe,sStr,sitemname,v["Num"])
				sJianGe = tDuelGhostdomCity_Match_Text["Str"][7]
			end
		end
		
		----------------------------------------------------------
		-- if nLev < tDuelGhostdomCity_Match_GetLimit["Level"] then
			-- sStr = tDuelGhostdomCity_Match_ExpReward[nDiff][nIndex]..tDuelGhostdomCity_Match_Text["ExpText"]
		-- else     
			-- if nDiff == 3 then
				-- sStr = tDuelGhostdomCity_Match_CulReward[nDiff][nIndex]..tDuelGhostdomCity_Match_Text["PowerText"]
			-- else
				-- sStr = tDuelGhostdomCity_Match_CulReward[nDiff][nIndex]..tDuelGhostdomCity_Match_Text["CulText"]
			-- end
			
		-- end
		----------------------------------------------------------
		tNpcGossip[18717]["Text113"] = string.format(tDuelGhostdomCity_Match_Text[18717]["Text113"],sStr)
		
		LinkNpcGossipFunc_New(nNpcId,"1-2")
	else
		tNpcGossip[18717]["Text114"] = string.format(tDuelGhostdomCity_Match_Text[18717]["Text114"],nNeedMag)
		LinkNpcGossipFunc_New(nNpcId,"1-3")
	end
end

--冥界回廊
function DuelGhostdomCity_Match_Enchantment(nNpcId,nIndex)
	local bFlag = false
	--不在活动期间
	for k ,v in pairs(tDuelGhostdomCity_Match_TaskInfo["JoinMatchTime"])do
		if  Sys_ChkWeedTime(v) then
			bFlag = true
		end
	end
	
	--不在活动期间
	if not bFlag then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end

	local nCorridor = Get_UserStatisticValue(tDuelGhostdomCity_Match_Stc["EventType"],tDuelGhostdomCity_Match_Stc["DataType"][8])
	local nNum = tDuelGhostdomCity_Match_ChkTask[3]["Num"]
	
	if nCorridor >= nNum then
		--获取难度
		local nEvent =tDuelGhostdomCity_Match_Stc["EventType"]
		local nType =tDuelGhostdomCity_Match_Stc["DataType"][2]
		
		--文字说明
		local sStr = tDuelGhostdomCity_Match_Text["Str"][5]
		local sJianGe = tDuelGhostdomCity_Match_Text["Str"][3] --多个奖励之间间隔
		local nDiff =Get_UserStatisticValue(nEvent,nType)
		local nLev = Get_UserLevel()
		
		--奖励table
		local tAward = {} 
		if nLev < tDuelGhostdomCity_Match_GetLimit["Level"] then
			tAward = tDuelGhostdomCity_Match_ExpReward[nDiff][nIndex]
		else
			tAward = tDuelGhostdomCity_Match_CulReward[nDiff][nIndex]
		end
		--经验奖励
		if tAward["Exp"] then		
			if nLev <= tDuelGhostdomCity_Match_GetLimit["LevelTime"] then
				local sitemname = Get_ItemtypeName(tAward["Level"])
				sStr = string.format(tDuelGhostdomCity_Match_Text["Str"][1],sStr,sitemname)
			else
				sStr = string.format(sJianGe,sStr,tAward["Exp"],tDuelGhostdomCity_Match_Text["ExpText"])
			end
			sJianGe = tDuelGhostdomCity_Match_Text["Str"][4]
		end
		
		--修行值
		if tAward["Cul"] then 
			sStr = string.format(sJianGe,sStr,tAward["Cul"],tDuelGhostdomCity_Match_Text["CulText"])
			sJianGe = tDuelGhostdomCity_Match_Text["Str"][4]
		end
		--气力值
		if tAward["StrValue"] then 
			sStr = string.format(sJianGe,sStr,tAward["StrValue"],tDuelGhostdomCity_Match_Text["PowerText"])
			sJianGe = tDuelGhostdomCity_Match_Text["Str"][4]
		end
		--物品
		if tAward["Item"] then
			if sStr == tDuelGhostdomCity_Match_Text["Str"][5] then
				sJianGe = tDuelGhostdomCity_Match_Text["Str"][6]
			else
				sJianGe = tDuelGhostdomCity_Match_Text["Str"][7]
			end
			for i,v in pairs(tAward["Item"]) do
				local sitemname = Get_ItemtypeName(v["ItemId"])
				
				sStr = string.format(sJianGe,sStr,sitemname,v["Num"])
				sJianGe = tDuelGhostdomCity_Match_Text["Str"][7]
			end
		end
		
		-----------------------------------------
		-- if nLev < tDuelGhostdomCity_Match_GetLimit["Level"] then
			-- sStr = tDuelGhostdomCity_Match_ExpReward[nDiff][nIndex]..tDuelGhostdomCity_Match_Text["ExpText"]
		-- else       
			-- if nDiff == 3 then
				-- sStr = tDuelGhostdomCity_Match_CulReward[nDiff][nIndex]..tDuelGhostdomCity_Match_Text["PowerText"]
			-- else
				-- sStr = tDuelGhostdomCity_Match_CulReward[nDiff][nIndex]..tDuelGhostdomCity_Match_Text["CulText"]
			-- end
			
		-- end
		---------------------------------------
		tNpcGossip[18718]["Text113"] = string.format(tDuelGhostdomCity_Match_Text[18718]["Text113"],sStr)
		LinkNpcGossipFunc_New(nNpcId,"1-2")
	else
		if nCorridor == 0 then
			LinkNpcGossipFunc_New(nNpcId,"1-5")
		else
			tNpcGossip[18718]["Text114"] = string.format(tDuelGhostdomCity_Match_Text[18718]["Text114"],nCorridor)
			LinkNpcGossipFunc_New(nNpcId,"1-3")
		end
		
	end
end



--进入下一个地图
function DuelGhostdomCity_Match_Next(nNpcId,nIndex)
	--成就标记
	local nAchievementFlag = nIndex
	--获取难度
	local nEvent =tDuelGhostdomCity_Match_Stc["EventType"]
	local nType =tDuelGhostdomCity_Match_Stc["DataType"][2]
	local nDiff =Get_UserStatisticValue(nEvent,nType)
	
	local nIndexEvent = tDuelGhostdomCity_Match_Stc["EventType_2"]
	local nIndexType = tDuelGhostdomCity_Match_Stc["DataType_3"]
	local nLev = Get_UserLevel()
	
	--奖励table
	local tAward = {} 
	if nLev < tDuelGhostdomCity_Match_GetLimit["Level"] then
		tAward = tDuelGhostdomCity_Match_ExpReward[nDiff][nIndex]
	else
		tAward = tDuelGhostdomCity_Match_CulReward[nDiff][nIndex]
	end
	
	-- 判断背包空间
	if not Task_ChkStcValue(nIndexEvent,nIndexType,">=",nIndex) then
		local nSpace = 0
		if tAward["Item"] then
			for i,v in pairs(tAward["Item"]) do
				nSpace = nSpace + v["Num"]
			end
		end
		
		if tAward["Exp"] then		
			if nLev <= tDuelGhostdomCity_Match_GetLimit["LevelTime"] then
				nSpace = nSpace + 1
			end
		end
		
		if nIndex == 4 then
			if Sys_ChkFullTime("2016-06-12 00:00 2016-07-11 23:59") then
				nSpace = nSpace + 1
			end
			--鸡年年兽活动获得 稀有课本随机包
			if Sys_ChkFullTime(tItemOutputOfNien_Constant["ActivityTime"]) then
				nSpace = nSpace +1
			end
			-- 日常得积分
			-- if Sys_ChkFullTime(tDailypoint_Data["ActivetyTime"]) then
				-- if not CommonFunc_ChkGoldServer() then
					-- nSpace = nSpace +1
				-- end
			-- end
			
			--新服主题周 每周额外产出部分
			if Sys_ChkFullTime(NewServerWeeks_GetActTime("ActAllTime")) then
				local nWeek = NewServerWeeks_ChkWeekTime()
				nSpace = nSpace + tNewSeverActivity_GetActSpace(2,nWeek)
			end

		end
		
		if (nSpace > 0) and (not User_CheckLeftSpace(nSpace)) then
			Sys_MsgBox(tDuelGhostdomCity_Match_Text["NoSpace"])
			return
		end
	end

	local nMapId = tDuelGhostdomCity_Match_ChkMap[nDiff][nIndex+1] 
	--User_TalkChannel2005(tostring(nMapId))
	local nPosX = tDuelGhostdomCity_Match_MapConfig[nMapId]["nPosX"]
	local nPosY = tDuelGhostdomCity_Match_MapConfig[nMapId]["nPosY"]
	local nBound = tDuelGhostdomCity_Match_MapConfig["nBound"]

	if nIndex == 1 then
		local nItemId =tDuelGhostdomCity_Match_ChkTask[nIndex]["ItemId"]
		local nNum = tDuelGhostdomCity_Match_ChkTask[nIndex]["Num"]
		if Item_ChkMulItem(nItemId,nItemId,nNum) and Item_DelAllItemByType(nItemId) then
			
		else
			LinkNpcGossipFunc_New(nNpcId,"1-3")
			return
		end
	end
	
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,nBound,nBound)
	User_TalkChannel2005(tDuelGhostdomCity_Match_Text["MatchMap"][nIndex+1])

	User_EffectAdd("self",tDuelGhostdomCity_Match_Effect["NextMap"])
	
	--记录进度
	local nEvent = tDuelGhostdomCity_Match_Stc["EventType"]
	local nType = tDuelGhostdomCity_Match_Stc["DataType"][4]	
	Task_SetStatistic(nEvent,nType,nMapId,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	--记录通关层数
	local nDifficultyFlag = nDiff + nLogBaceId
	Sys_SaveActionFestivalLog(string.format(tDuelGhostdomCity_Match_Log["ActStep"],tostring(nDifficultyFlag),tostring(nIndex+1)))
	
	
	-- 记录本周当前关是否已领过通关奖励
	-- 哪关奖励拿了，这周的这关奖励就不能再次拿到
	if not Task_ChkStcValue(nIndexEvent,nIndexType,">=",nIndex) then
		Task_SetStatistic(nIndexEvent,nIndexType,nIndex,1)
		Task_SetStcTimestamp(nIndexEvent,nIndexType,0)

		--经验奖励
		if tAward["Exp"] then		
			if nLev <= tDuelGhostdomCity_Match_GetLimit["LevelTime"] then
				Item_AddNewItem(tAward["Level"],"0 1 0 1440 1")
				local sitemname = Get_ItemtypeName(tAward["Level"])
				User_TalkChannel2005(string.format(tDuelGhostdomCity_Match_Text["GongXi"],sitemname))
			else
				User_AddExpTime(tAward["Exp"])
				User_TalkChannel2005(string.format(tDuelGhostdomCity_Match_Text["GongXi"],string.format(tDuelGhostdomCity_Match_Text["Str"][1],tAward["Exp"],tDuelGhostdomCity_Match_Text["ExpText"])))
			end
		end
		--黄金积分奖励
		if tAward["LeaguePoint"] then	
			GoldenLeaguePoints_Add(tAward["LeaguePoint"],0)
		end
		--修行值
		if tAward["Cul"] then 
			User_AddCultivation(tAward["Cul"])
			User_TalkChannel2005(string.format(tDuelGhostdomCity_Match_Text["GongXi"],string.format(tDuelGhostdomCity_Match_Text["Str"][1],tAward["Cul"],tDuelGhostdomCity_Match_Text["CulText"])))
		end
		--气力值
		if tAward["StrValue"] then 
			User_AddStrengthValue(tAward["StrValue"])
			User_TalkChannel2005(string.format(tDuelGhostdomCity_Match_Text["GongXi"],string.format(tDuelGhostdomCity_Match_Text["Str"][1],tAward["StrValue"],tDuelGhostdomCity_Match_Text["PowerText"])))
		end
		--物品
		if tAward["Item"] then
			for i,v in pairs(tAward["Item"]) do
				local sitemname = Get_ItemtypeName(v["ItemId"])
				
				sitemname = string.format(tDuelGhostdomCity_Match_Text["Str"][2],sitemname,v["Num"])
				--添加物品
				Item_AddItem(v["ItemId"],0,v["Num"],0,v["SaveTime"],v["Active"])		
				User_TalkChannel2005(string.format(tDuelGhostdomCity_Match_Text["GongXi"],sitemname))
				-- if not User_CheckLeftSpace(v["Num"]) then
					-- User_TalkChannel2005(string.format(tDuelGhostdomCity_Match_Text["BagFullJl"],Get_ItemtypeName(v["ItemId"])))
				-- end
			end
		end
		--黄金圣衣活动时间内第一关额外给奖励
		if nIndex == 1 then
			DuelGhostdomCity_Match_GetClothesChip(3100069)
		end
	end
	---------------------------------------------------
	-- if nLev < tDuelGhostdomCity_Match_GetLimit["Level"] then
		-- local nExp = tDuelGhostdomCity_Match_ExpReward[nDiff][nIndex]
		-- User_AddExpTime(nExp)
		-- User_TalkChannel2005(string.format(tDuelGhostdomCity_Match_Text["GongXi"],nExp..tDuelGhostdomCity_Match_Text["ExpText"]))
	-- else
		-- local nCul = tDuelGhostdomCity_Match_CulReward[nDiff][nIndex]
		-- if nDiff == 3 then
			--精英难度奖励 气力值
			-- User_AddStrengthValue(nCul)
			-- User_TalkChannel2005(string.format(tDuelGhostdomCity_Match_Text["GongXi"],nCul..tDuelGhostdomCity_Match_Text["PowerText"]))
		-- else
			--普通，简单难度奖励 修行值
			-- User_AddCultivation(nCul)
			-- User_TalkChannel2005(string.format(tDuelGhostdomCity_Match_Text["GongXi"],nCul..tDuelGhostdomCity_Match_Text["CulText"]))
		-- end
		
	-- end
	--------------------------------------------------------
	if tDuelGhostdomCity_Match_TaskPassId[nIndex+1] then
		if not Task_ChkTaskDetail(tDuelGhostdomCity_Match_TaskPassId[nIndex+1]) then
			Task_AddTaskDetail(tDuelGhostdomCity_Match_TaskPassId[nIndex+1])
			Task_SetTaskDetailData5(tDuelGhostdomCity_Match_TaskPassId[nIndex+1],1)
		end
	end
	if tDuelGhostdomCity_Match_TaskPassId[nIndex] then
		if Task_ChkTaskDetail(tDuelGhostdomCity_Match_TaskPassId[nIndex]) then
			--Task_DelTaskDetail(tDuelGhostdomCity_Match_TaskPassId[nIndex]) 
			--设置CompleteFlag为1
			Task_SetTaskDetailData1(tDuelGhostdomCity_Match_TaskPassId[nIndex],1)
			Task_SetTaskDetailData6(tDuelGhostdomCity_Match_TaskPassId[nIndex],1)
			Task_SetTaskDetailCompleteFlag(tDuelGhostdomCity_Match_TaskPassId[nIndex],1)
		end
	end
	
	--记录完成时间
	if nIndex == 4 then
		
		--完成任务
		local nEvent = tDuelGhostdomCity_Match_Stc["EventType"]
		local nType = tDuelGhostdomCity_Match_Stc["DataType"][1]
		Task_SetStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		--设置成未领奖
		local nType = tDuelGhostdomCity_Match_Stc["DataType"][3]
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		local nEvent = tDuelGhostdomCity_Match_Stc["EventType"]
		local nType = tDuelGhostdomCity_Match_Stc["DataType"][6]
		local nOsTime = os.time()
		Task_SetStatistic(nEvent,nType,nOsTime,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		--入场时间
		local nTime = Get_UserStatisticValue(nEvent,tDuelGhostdomCity_Match_Stc["DataType"][5])
		local nFinishTime = nOsTime - nTime
		
		--总共用时
		
		local nType = tDuelGhostdomCity_Match_Stc["DataType"][11]

		Task_SetStatistic(nEvent,nType,nFinishTime,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
	

		local nDiff =Get_UserStatisticValue(nEvent,tDuelGhostdomCity_Match_Stc["DataType"][2])
		
		local tRankUserData={}
		--前10名
		local nIndex = 0
		for j = 1,2  do
			for i= 1, 5 do
				local nGolbalId = tDuelGhostdomCity_Match_GlobalData["Rank"][nDiff][j]
				local nPlayerId = Get_SysDynaGlobalData(nGolbalId,i)
				local nYTime = Get_SysDynaGlobalDataStr(nGolbalId,i)
				nIndex = nIndex +1
				tRankUserData[nIndex]={}
				tRankUserData[nIndex]["PlayerId"]= nPlayerId
				tRankUserData[nIndex]["YTime"] = nYTime == "" and 0 or tonumber(nYTime)
			end
		end
		--取排行榜玩家名字
		nIndex = 0
		for j = 3,4 do
			for i= 1, 5 do
				local nGolbalId = tDuelGhostdomCity_Match_GlobalData["Rank"][nDiff][j]
				local sPlayerName = Get_SysDynaGlobalDataStr(nGolbalId,i)
				nIndex = nIndex +1
				tRankUserData[nIndex]["PlayerName"] = sPlayerName == "" and "null" or sPlayerName
			end
		end
		--User_TalkChannel2005("11111111111111111")
		--账号相同退出
		-- local nFlag = true
		-- for i = 1, 10 do 
			-- if tRankUserData[i]["PlayerId"] == Get_UserId()   then
			   -- tRankUserData[i]["KillNum"] = nFinishTime
			   -- nFlag =false
			-- end
		-- end
		
		
		
		local nIndex = #tRankUserData +1
		tRankUserData[nIndex]={}
		tRankUserData[nIndex]["PlayerId"]= Get_UserId()
		tRankUserData[nIndex]["YTime"] = nFinishTime
		tRankUserData[nIndex]["PlayerName"] = Get_UserName()
		
		local t={}
	
		for i=1,#tRankUserData do
			for j=1, #tRankUserData-i do
				
				if  tRankUserData[j]["PlayerId"] == 0 or ( tRankUserData[j]["YTime"] > tRankUserData[j+1]["YTime"] and tRankUserData[j+1]["PlayerId"] ~= 0)   then
					t=tRankUserData[j];

					tRankUserData[j]=tRankUserData[j+1];

					tRankUserData[j+1]=t;
				end
			end
		 end
		
		
		for i =1 , 10 do
			local nUserId = tRankUserData[i]["PlayerId"]
			local nYTime = tRankUserData[i]["YTime"]
			local sUserName = tRankUserData[i]["PlayerName"]
			if i >5 then
				Sys_SetSynaGlobalData(tDuelGhostdomCity_Match_GlobalData["Rank"][nDiff][2],i-5,nUserId)
				Sys_SetSynaGlobalDataStr(tDuelGhostdomCity_Match_GlobalData["Rank"][nDiff][2],i-5,tostring(nYTime))
				Sys_SetSynaGlobalDataStr(tDuelGhostdomCity_Match_GlobalData["Rank"][nDiff][4],i-5,sUserName)
			else
				Sys_SetSynaGlobalData(tDuelGhostdomCity_Match_GlobalData["Rank"][nDiff][1],i,nUserId)
				Sys_SetSynaGlobalDataStr(tDuelGhostdomCity_Match_GlobalData["Rank"][nDiff][1],i,tostring(nYTime))
				Sys_SetSynaGlobalDataStr(tDuelGhostdomCity_Match_GlobalData["Rank"][nDiff][3],i,sUserName)
			end
		end
		
		--删除幽冥古镜
		if Item_ChkItem(tDuelGhostdomCity_Match_Mirror["Mirror"]) then
			Item_DelItem(tDuelGhostdomCity_Match_Mirror["Mirror"])
			User_TalkChannel2005(tDuelGhostdomCity_Match_Text["MirrorMiss"])
		end
		
		--删除多余任务道具
		for k,v in pairs(tDuelGhostdomCity_Match_Clear)do
			if Item_ChkItem(v) and v ~= tDuelGhostdomCity_Match_Clear[3] then
				Item_DelAllItemByType(v)
				User_TalkChannel2005(tDuelGhostdomCity_Match_Text["ItemDel"])
			end
		end
		
		-- 改为 *3倍岫山玉
		-- CoatWarehouse_Sale_ActAwardXiuJade()
		--DuelGhostdomCity_Match_ActAwardXiuJade()已改成同一个接口
		CoatWarehouse_Zhanchang_ActAwardXiuJade()
		-- AdventureOfMine_New_NewServerAc()
		-- 新服活动中奖励
		-- 新服狂欢活动中决战冥城的额外奖励翻3倍，改成30颗秘制免费修炼丹，15颗强效护心丹 
		DuelGhostdomCity_Match_NewServerAc()
		-- 欧洲杯
		EuropeanCup_Promot_RewardItem(3)
		--鸡年年兽活动获得 稀有课本随机包,一周3个
		ItemOutputOfNien_AwardBookRandomPack(3)
		
		----新服主题周 每周额外产出部分
		tNewSeverActivity_GetAward(2)
		
		--获得随机积分卡
		-- Dailypoint_RewardDraw(4)
		--bp二期
		BattlePassTaskTest_TaskAddProgress(23,1)
	end
	
	--进入第3关给个寻路框
	if nIndex == 2 then
		local nEvent =tDuelGhostdomCity_Match_Stc["EventType"]
		local nType =tDuelGhostdomCity_Match_Stc["DataType"][8]
		local nDiff =Get_UserStatisticValue(nEvent,nType) + 1
		if nDiff == 1 then
			local nFindPosX = tDuelGhostdomCity_Match_SjCorridor["Crystal"][nDiff]["PosX"]
			local nFindPosY = tDuelGhostdomCity_Match_SjCorridor["Crystal"][nDiff]["PosY"]
			Sys_MsgBox(tDuelGhostdomCity_Match_Text["ThereFindWay"],"DuelGhostdomCity_Match_SjCorridor</N>"..nFindPosX.."</N>"..nFindPosY)
		end
	end
	--进入第4关给个寻路框
	if nIndex == 3 then
		--是否击杀冥王
		local nEvent = tDuelGhostdomCity_Match_Stc["EventType"]
		local nType = tDuelGhostdomCity_Match_Stc["DataType"][9] 
		--检测物品
		if Item_ChkMulItem(tDuelGhostdomCity_Match_KillMonsterDrop[4],tDuelGhostdomCity_Match_KillMonsterDrop[4],tDuelGhostdomCity_Match_Sp["Limit"])
		   or Item_ChkMulItem(tDuelGhostdomCity_Match_Clear[1],tDuelGhostdomCity_Match_Clear[1],1) 
		   or Task_ChkStcValue(nEvent,nType,"~=",0) then
		   
			--User_TalkChannel2005(tDuelGhostdomCity_Match_Text["GhostChip"])
		else
			local nFindPosX = 145
			local nFindPosY = 226
			Sys_MsgBox(tDuelGhostdomCity_Match_Text["FourFindWay"],"DuelGhostdomCity_Match_SjCorridor</N>"..nFindPosX.."</N>"..nFindPosY)
		end
	end
		
	--成就判断
	--检测玩家是否已完成该成就
	local nAchPos = tDuelGhostdomCity_Match_Achievement[nAchievementFlag]
	if nAchPos then
		if not User_ChkAchByAchPosition(nAchPos)then
			--获取难度
			local nEvent =tDuelGhostdomCity_Match_Stc["EventType"]
			local nType =tDuelGhostdomCity_Match_Stc["DataType"][2]
			local nDifferent = 1
			nDifferent = Get_UserStatisticValue(nEvent,nType)
			local nLogFlag = nDifferent + nLogBaceId
			Sys_SaveActionFestivalLog(string.format(tDuelGhostdomCity_Match_Log["Achievement"],tostring(nLogFlag),tostring(nAchPos)))
			User_AddAchByAchPosition(nAchPos)
			
		end
	end
end

--黄金圣衣活动时间内第一关额外给奖励
function DuelGhostdomCity_Match_GetClothesChip(nItemId)
	if Sys_ChkFullTime(tDuelGhostdomCity_Match_GoldClothes["ActivityTime"]) then
		if nItemId == 3100069 then
			local nEvent = tDuelGhostdomCity_Match_GoldClothes["EventType"]
			local nType = tDuelGhostdomCity_Match_GoldClothes["DataType"]
			if not Task_ChkStcValue(nEvent,nType,"==",0) then
				if Task_StcInterval(nEvent,nType,1,4) then
					Task_SetStatistic(nEvent,nType,0,1,0)
					Task_SetStcTimestamp(nEvent,nType,0,0)
				else
					return
				end
			end
			Task_SetStatistic(nEvent,nType,1,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)
		end
		
		for i,v in pairs(tDuelGhostdomCity_Match_GoldClothes["Item"]) do
			local sitemname = Get_ItemtypeName(v["ItemId"])
			sitemname= sitemname.."*"..v["Num"] 
			--添加物品
			Item_AddItem(v["ItemId"],0,v["Num"],0,v["SaveTime"],v["Active"])		
			User_TalkChannel2005(string.format(tDuelGhostdomCity_Match_Text["GongXi"],sitemname))
			Sys_SaveActionFestivalLog(tDuelGhostdomCity_Match_GoldClothes["Log"][nItemId])
			if not User_CheckLeftSpace(v["Num"]) then
				User_TalkChannel2005(string.format(tDuelGhostdomCity_Match_Text["BagFullJl"],Get_ItemtypeName(v["ItemId"])))
			end
		end
	end
end

-- 改为 *3倍岫山玉
function DuelGhostdomCity_Match_ActAwardXiuJade()
	-- if not Sys_ChkFullTime(tDuelGhostdomCity_Match_XiuJade["ActivityTime"]) then
		-- return false
	-- end
	
	--新服活动标示
	local nDataAc = tDuelGhostdomCity_Match_Const["GlobalData"]
	local nData0 = Get_SysDynaGlobalData0(nDataAc)
	--已经不在那个月了
	if nData0 == 0 then
		return
	end
	--新服时间获得9个
	local nSel = 1
	if Get_SysDynaGlobalData1(nDataAc) > 0 then
		nSel = 2
	end

	local sAttr = tDuelGhostdomCity_Match_XiuJade["NewSevTime"][nSel]
	local nXiuJade = tDuelGhostdomCity_Match_XiuJade["XiuJade"]
	
	local bSpace = true
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tCoatWarehouse_Sale_Text["QAdd"])
		bSpace = false
	end
	
	if not Item_AddNewItem(nXiuJade,sAttr) then
		return false
	end
	if bSpace == true then
		User_TalkChannel2005(tDuelGhostdomCity_Match_Text["AwardXiu"][nSel])
	end
	local sXiuLog = tDuelGhostdomCity_Match_XiuJade["ActAwXiuJade"]
	Sys_SaveActionFestivalLog(sXiuLog)
	return true
end

--新服活动用,额外获得10颗秘制免费修炼丹，和5颗强效护心丹
function DuelGhostdomCity_Match_NewServerAc()
	-- if not Sys_ChkFullTime(tAdventureOfMine_New_Const["NewSevTime"]) then
		-- return
	-- end
	
	--新服活动
	local nGloAc = tDuelGhostdomCity_Match_Const["GlobalData"]
	local nDataOpen = Get_SysDynaGlobalData1(nGloAc)
	--未开启
	if nDataOpen == 0 then
		return
	end
	
	--秘制免费修炼丹
	local nItem1 = tDuelGhostdomCity_Match_Item["Mizhi"]
	local nItem1Attr = tDuelGhostdomCity_Match_Item["MizhiAttr"]
	--强效护心丹
	local nItem2 = tDuelGhostdomCity_Match_Item["QHuxindan"]
	local nItem2Attr = tDuelGhostdomCity_Match_Item["QHuxindanAttr"]
	
	if not Item_AddNewItem(nItem1,nItem1Attr) then
		return
	end
	
	if not Item_AddNewItem(nItem2,nItem2Attr) then
		return
	end
	
	local sText = tDuelGhostdomCity_Match_Text["NewAcAw"]
	User_TalkChannel2005(sText)
	
	local sLog = tDuelGhostdomCity_Match_Log["NewSeverAc"]
	Sys_SaveActionFestivalLog(sLog)
end

--返回黑虎城
function DuelGhostdomCity_Match_BackCity(nNpcId)
	local nMapId = tDuelGhostdomCity_Match_BackCity["MapId"] 
	local nPosX = tDuelGhostdomCity_Match_BackCity["PosX"] 
	local nPosY = tDuelGhostdomCity_Match_BackCity["PosY"]
	
	local nBound = tDuelGhostdomCity_Match_BackCity["Bound"]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,nBound,nBound)
	
	--返回黑虎城提示
	User_TalkChannel2005(tDuelGhostdomCity_Match_Text["BackCity"])
end

--非活动时间返回黑虎城
function DuelGhostdomCity_Match_BackCityNotTime(nUserId)
	local nMapId = tDuelGhostdomCity_Match_BackCity["MapId"] 
	local nPosX = tDuelGhostdomCity_Match_BackCity["PosX"] 
	local nPosY = tDuelGhostdomCity_Match_BackCity["PosY"]
	
	local nBound = tDuelGhostdomCity_Match_BackCity["Bound"]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,nBound,nBound,0,nUserId)
	
	--返回黑虎城提示
	User_TalkChannel2005(tDuelGhostdomCity_Match_Text["BackCity"],nUserId)
end

--职业 判定  收集魔值
function DuelGhostdomCity_Match_GetMagic()
	local nMagic = 0
	local nProfession = Get_UserProfession()
	
	local nChkPro = nProfession % 10

	if nProfession <= 10 or nChkPro == 0 then
		return nMagic
	end
	
	local nIndex = math.floor(nProfession / 10)
	
	nMagic = tDuelGhostdomCity_Match_ProMagic["Profession"][nIndex]

	return nMagic
end

--冥界法阵
function DuelGhostdomCity_Match_KillBoss(nNpcId,nIndex)
	local nEvent = tDuelGhostdomCity_Match_Stc["EventType"]
	local nType = tDuelGhostdomCity_Match_Stc["DataType"][9]
	--击杀成功
	if not Task_ChkStcValue(nEvent,nType,"==",0) then
		--获取难度
		local nEvent =tDuelGhostdomCity_Match_Stc["EventType"]
		local nType =tDuelGhostdomCity_Match_Stc["DataType"][2]
		
		--文字说明
		local sStr = tDuelGhostdomCity_Match_Text["Str"][5]
		local sJianGe = tDuelGhostdomCity_Match_Text["Str"][3] --多个奖励之间间隔
		local nDiff =Get_UserStatisticValue(nEvent,nType)
		local nLev = Get_UserLevel()
		
		--奖励table
		local tAward = {} 
		if nLev < tDuelGhostdomCity_Match_GetLimit["Level"] then
			tAward = tDuelGhostdomCity_Match_ExpReward[nDiff][nIndex]
		else
			tAward = tDuelGhostdomCity_Match_CulReward[nDiff][nIndex]
		end
		--经验奖励
		if tAward["Exp"] then		
			if nLev <= tDuelGhostdomCity_Match_GetLimit["LevelTime"] then
				local sitemname = Get_ItemtypeName(tAward["Level"])
				sStr = string.format(tDuelGhostdomCity_Match_Text["Str"][1],sStr,sitemname)
			else
				sStr = string.format(tDuelGhostdomCity_Match_Text["Str"][3],sStr,tAward["Exp"],tDuelGhostdomCity_Match_Text["ExpText"])
			end
			sJianGe = tDuelGhostdomCity_Match_Text["Str"][4]
		end
		
		--修行值
		if tAward["Cul"] then 
			sStr = string.format(sJianGe,sStr,tAward["Cul"],tDuelGhostdomCity_Match_Text["CulText"])
			sJianGe = tDuelGhostdomCity_Match_Text["Str"][4]
		end
		--气力值
		if tAward["StrValue"] then 
			sStr = string.format(sJianGe,sStr,tAward["StrValue"],tDuelGhostdomCity_Match_Text["PowerText"])
			sJianGe = tDuelGhostdomCity_Match_Text["Str"][4]
		end
		--物品
		if tAward["Item"] then
			if sStr == tDuelGhostdomCity_Match_Text["Str"][5] then
				sJianGe = tDuelGhostdomCity_Match_Text["Str"][6]
			else
				sJianGe = tDuelGhostdomCity_Match_Text["Str"][7]
			end
			for i,v in pairs(tAward["Item"]) do
				local sitemname = Get_ItemtypeName(v["ItemId"])
				
				sStr = string.format(sJianGe,sStr,sitemname,v["Num"])
				sJianGe = tDuelGhostdomCity_Match_Text["Str"][7]
			end
		end
		----------------------------------------------
		--文字说明
		-- local sStr = ""
		-- local nDiff =Get_UserStatisticValue(nEvent,nType)
		-- local nLev = Get_UserLevel()
		-- if nLev < tDuelGhostdomCity_Match_GetLimit["Level"] then
			-- sStr = tDuelGhostdomCity_Match_ExpReward[nDiff][nIndex]..tDuelGhostdomCity_Match_Text["ExpText"]
		-- else
			-- if nDiff == 3 then
				-- sStr = tDuelGhostdomCity_Match_CulReward[nDiff][nIndex]..tDuelGhostdomCity_Match_Text["PowerText"]
			-- else
				-- sStr = tDuelGhostdomCity_Match_CulReward[nDiff][nIndex]..tDuelGhostdomCity_Match_Text["CulText"]
			-- end
			
		-- end
		----------------------------------------------
		tNpcGossip[18719]["Text115"] = string.format(tDuelGhostdomCity_Match_Text[18719]["Text115"],sStr)
		LinkNpcGossipFunc_New(nNpcId,"1-2")
	else
		LinkNpcGossipFunc_New(nNpcId,"1-3")
	end
end

--上交冥王角
function DuelGhostdomCity_Match_SubmitAngle(nNpcId)
	local nLev = Get_UserLevel()
	
	if Item_ChkItem(tDuelGhostdomCity_Match_ChkTask[5]["Angle"]) and Item_DelItem(tDuelGhostdomCity_Match_ChkTask[5]["Angle"]) then
		--Item_DelItem(tDuelGhostdomCity_Match_ChkTask[5]["Angle"])
		
		
		if nLev < tDuelGhostdomCity_Match_GetLimit["Level"] then
			local nExp = tDuelGhostdomCity_Match_MapConfig[3959]["Angle"][1]
			User_AddExpTime(nExp)
			User_TalkChannel2005(string.format(tDuelGhostdomCity_Match_Text["GongXi"],tDuelGhostdomCity_Match_Text["LiuTianNotMax"]))
		
			LinkNpcGossipFunc_New(nNpcId,"1-2")
		else
			local nCul = tDuelGhostdomCity_Match_MapConfig[3959]["Angle"][2]
			User_AddCultivation(nCul)
			User_TalkChannel2005(string.format(tDuelGhostdomCity_Match_Text["GongXi"],tDuelGhostdomCity_Match_Text["LiuTianMax"]))
		
			LinkNpcGossipFunc_New(nNpcId,"1-3")
		end
	else
		LinkNpcGossipFunc_New(nNpcId,"1-4")
	end
end

--上交七星宝剑
function DuelGhostdomCity_Match_SubmitSword(nNpcId)
	
	
	local nItemId = tDuelGhostdomCity_Match_ChkTask[5]["Sword"]
	
	if Item_ChkItem(nItemId) then
		LinkNpcGossipFunc_New(nNpcId,"1-5")
	else
		LinkNpcGossipFunc_New(nNpcId,"1-9")
	end
end


--我要装
function DuelGhostdomCity_Match_Clothes(nNpcId,nItemId)
	local nColor =math.random(3,9)
	local nSword = tDuelGhostdomCity_Match_ChkTask[5]["Sword"]
	if Item_ChkItem(nSword) and Item_DelItem(nSword) then
		local nIndex = nItemId/10 %10 +4
		local sItemName = Get_ItemtypeName(nItemId).."*1"
		Item_AddItem(nItemId,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,nColor)
		User_TalkChannel2005(string.format(tDuelGhostdomCity_Match_Text["GongXi"],sItemName))
		
		LinkNpcGossipFunc_New(nNpcId,"1-"..nIndex)
	else
		LinkNpcGossipFunc_New(nNpcId,"1-9")
	end
	
end


--打开宝库第几次
function DuelGhostdomCity_Match_OpenTreasury()
	local nNpcId = Get_NpcId()
	
	--获取开启宝箱次数
	local nEvent =tDuelGhostdomCity_Match_Stc["EventType"]
	local nType =tDuelGhostdomCity_Match_Stc["DataType"][10]

	if nNpcId >= 18731 and nNpcId <= 18733 then
		nEvent = tDuelGhostdomCity_Match_Stc["EventType"]
		nType = tDuelGhostdomCity_Match_Stc["DataType"][10]
	elseif nNpcId >= 19245 and nNpcId <= 19247 then
		nEvent = tDuelGhostdomCity_Match_Stc["EventType_2"]
		nType = tDuelGhostdomCity_Match_Stc["DataType"][12]
	elseif nNpcId >= 19248 and nNpcId <= 19250 then
		nEvent = tDuelGhostdomCity_Match_Stc["EventType_2"]
		nType = tDuelGhostdomCity_Match_Stc["DataType"][13]
	end
	
	local nDiff =Get_UserStatisticValue(nEvent,nType) + 1
	
	--开启超过5次
	if nDiff-1 >= 5 then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end

	--是否有钥匙
	if not Item_ChkItem(tDuelGhostdomCity_Match_OpenTreasury["ItemId"]) then
		local nNeedTs = tDuelGhostdomCity_Match_MissKey[nDiff]
		tNpcGossip[nNpcId]["Text118"] = string.format(tDuelGhostdomCity_Match_Text[18731]["Text133"],nNeedTs)
		LinkNpcGossipFunc_New(nNpcId,"1-6")
		return 
	end
	
	--判断背包空间
	if not User_CheckLeftSpace(tDuelGhostdomCity_Match_OpenTreasury["BagFull"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-5")
		return
	end
	
	
	
	Task_SetStatistic(nEvent,nType,nDiff,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	--删除钥匙失败
	if not Item_DelItem(tDuelGhostdomCity_Match_OpenTreasury["ItemId"]) then
		local nNeedTs = tDuelGhostdomCity_Match_MissKey[nDiff]
		tNpcGossip[nNpcId]["Text118"] = string.format(tDuelGhostdomCity_Match_Text[18731]["Text133"],nNeedTs)
		LinkNpcGossipFunc_New(nNpcId,"1-6")
		return 
	end

	if nDiff <= 4  then
		local sName = DuelGhostdomCity_Match_getKeyReward()
		tNpcGossip[nNpcId]["Text114"] =string.format(tDuelGhostdomCity_Match_Text[18731]["Text129"],sName)
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		User_EffectAdd("self",tDuelGhostdomCity_Match_Effect["Treasure1"])
		
	elseif nDiff == 5 then
		local sStr = DuelGhostdomCity_Match_getPerfectKeyReward()
		tNpcGossip[nNpcId]["Text115"] = string.format(tDuelGhostdomCity_Match_Text[18731]["Text130"],sStr)
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		User_EffectAdd("self",tDuelGhostdomCity_Match_Effect["Treasure2"])
	end

	--获取难度
	local nEvent =tDuelGhostdomCity_Match_Stc["EventType"]
	local nType =tDuelGhostdomCity_Match_Stc["DataType"][2]
	local nDifferent = 1
	nDifferent = Get_UserStatisticValue(nEvent,nType)
	
	local nLogFlag = nDifferent + nLogBaceId
	--log
	Sys_SaveActionFestivalLog(string.format(tDuelGhostdomCity_Match_Log["OpenBox"],tostring(nLogFlag),tostring(nDiff+5)))
	Sys_SaveActionFestivalLog(string.format(tDuelGhostdomCity_Match_Log["OpenBoxFlagYs"],tostring(nLogFlag)))
end

--缺少钥匙
function DuelGhostdomCity_Match_MissKey()
	local nNpcId = Get_NpcId()
	
	--获取开启宝箱次数
	local nEvent =tDuelGhostdomCity_Match_Stc["EventType"]
	local nType =tDuelGhostdomCity_Match_Stc["DataType"][10]

	if nNpcId >= 18731 and nNpcId <= 18733 then
		nEvent = tDuelGhostdomCity_Match_Stc["EventType"]
		nType = tDuelGhostdomCity_Match_Stc["DataType"][10]
	elseif nNpcId >= 19245 and nNpcId <= 19247 then
		nEvent = tDuelGhostdomCity_Match_Stc["EventType_2"]
		nType = tDuelGhostdomCity_Match_Stc["DataType"][12]
	elseif nNpcId >= 19248 and nNpcId <= 19250 then
		nEvent = tDuelGhostdomCity_Match_Stc["EventType_2"]
		nType = tDuelGhostdomCity_Match_Stc["DataType"][13]
	end

	local nDiff =Get_UserStatisticValue(nEvent,nType) + 1
	local nNeedTs = tDuelGhostdomCity_Match_MissKey[nDiff]
	
	
	if Get_UserEMoney() < nNeedTs then
		LinkNpcGossipFunc_New(nNpcId,"1-7")
		return
	end
	tNpcGossip[nNpcId]["Text120"] = string.format(tDuelGhostdomCity_Match_Text[18731]["Text135"],nNeedTs)
	LinkNpcGossipFunc_New(nNpcId,"1-8")
	
end

--确定用天石开启宝箱
function DuelGhostdomCity_Match_TsOpen()
	local nNpcId = Get_NpcId()
	
	--获取开启宝箱次数
	local nEvent =tDuelGhostdomCity_Match_Stc["EventType"]
	local nType =tDuelGhostdomCity_Match_Stc["DataType"][10]

	if nNpcId >= 18731 and nNpcId <= 18733 then
		nEvent = tDuelGhostdomCity_Match_Stc["EventType"]
		nType = tDuelGhostdomCity_Match_Stc["DataType"][10]
	elseif nNpcId >= 19245 and nNpcId <= 19247 then
		nEvent = tDuelGhostdomCity_Match_Stc["EventType_2"]
		nType = tDuelGhostdomCity_Match_Stc["DataType"][12]
	elseif nNpcId >= 19248 and nNpcId <= 19250 then
		nEvent = tDuelGhostdomCity_Match_Stc["EventType_2"]
		nType = tDuelGhostdomCity_Match_Stc["DataType"][13]
	end

	local nDiff =Get_UserStatisticValue(nEvent,nType) + 1
	local nNeedTs = tDuelGhostdomCity_Match_MissKey[nDiff]
	
	--判断背包空间
	if not User_CheckLeftSpace(tDuelGhostdomCity_Match_OpenTreasury["BagFull"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-5")
		return
	end
	
	User_AddEMoney(nNeedTs*-1)
	Task_SetStatistic(nEvent,nType,nDiff,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	if nDiff <= 4  then
		local sName = DuelGhostdomCity_Match_getKeyReward()
		tNpcGossip[nNpcId]["Text114"] =string.format(tDuelGhostdomCity_Match_Text[18731]["Text129"],sName)
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		User_EffectAdd("self",tDuelGhostdomCity_Match_Effect["Treasure1"])
	elseif nDiff == 5 then
	
		local sStr = DuelGhostdomCity_Match_getPerfectKeyReward()
		tNpcGossip[nNpcId]["Text115"] = string.format(tDuelGhostdomCity_Match_Text[18731]["Text130"],sStr)
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		User_EffectAdd("self",tDuelGhostdomCity_Match_Effect["Treasure2"])
	end
	
	--获取难度
	local nEvent =tDuelGhostdomCity_Match_Stc["EventType"]
	local nType =tDuelGhostdomCity_Match_Stc["DataType"][2]
	local nDifferent = 1
	nDifferent = Get_UserStatisticValue(nEvent,nType)	
	local nLogFlag = nDifferent + nLogBaceId
	
	Sys_SaveActionFestivalLog(string.format(tDuelGhostdomCity_Match_Log["OpenBox"],tostring(nLogFlag),tostring(nDiff+5)))
	Sys_SaveActionFestivalLog(string.format(tDuelGhostdomCity_Match_Log["OpenBoxFlagTs"],tostring(nLogFlag)))
	
	--Emoney Log
	Sys_SaveEmoneyBuy(tDuelGhostdomCity_Match_EmoneyLOG["OpenBox"])
end


--随机规则
function DuelGhostdomCity_Match_Rule(nMinIndex,nMaxIndex)
	if nMinIndex < 0.1 then
		nMinIndex = nMinIndex *100
		nMaxIndex = nMaxIndex *100
	elseif  nMinIndex < 1 then
		nMinIndex = nMinIndex * 10
		nMaxIndex = nMaxIndex * 10
	end
	
	local nNum = math.random(1,nMaxIndex)
	if nNum <= nMinIndex then
		return true
	else
		return false
	end
end

--获取钥匙奖励
function DuelGhostdomCity_Match_getKeyRewardKey()
	--获取难度
	local nEvent =tDuelGhostdomCity_Match_Stc["EventType"]
	local nType =tDuelGhostdomCity_Match_Stc["DataType"][2]
	
	local nDiff = 1
	nDiff = Get_UserStatisticValue(nEvent,nType)
	local nIndex = 100

	for k, v in pairs(tDuelGhostdomCity_Match_KeyReward[nDiff])do
		local bFlag = DuelGhostdomCity_Match_Rule(v["Probability"],nIndex)
		nIndex =nIndex - v["Probability"]
		if bFlag then

			return nDiff,k
		end
	end
end

--获取奖励具体值
function DuelGhostdomCity_Match_getKeyReward()
	local nDiff,nIndex = DuelGhostdomCity_Match_getKeyRewardKey()
	--测试
	--User_TalkChannel2005(tostring(nDiff))
	--User_TalkChannel2005(tostring(nIndex))
	local nKeyData =tDuelGhostdomCity_Match_KeyReward[nDiff][nIndex]
	local nLev = Get_UserLevel()
	
	--获取难度
	local nEvent =tDuelGhostdomCity_Match_Stc["EventType"]
	local nType =tDuelGhostdomCity_Match_Stc["DataType"][2]	
	local nDifferent = Get_UserStatisticValue(nEvent,nType)
	local nLogFlag = nDifferent + nLogBaceId
	
		if nKeyData["ItemId"] and nKeyData["ItemId"] == 728596 then
			if nLev == tDuelGhostdomCity_Match_GetLimit["Level"] then
				--满级，如果随机到九转聚神丹，就改成气力值
				nKeyData = tDuelGhostdomCity_Match_KeyReward[3][1]
			end
		end

	--经验奖励
	if nKeyData["Exp"] then
		
		if nLev < tDuelGhostdomCity_Match_GetLimit["Level"]  then
			User_AddExpTime(nKeyData["Exp"])
			Sys_SaveActionFestivalLog(string.format(tDuelGhostdomCity_Match_Log["BoxReward"],tostring(nLogFlag),"4",tostring(nKeyData["Exp"])))
			return string.format(tDuelGhostdomCity_Match_Text["Str"][1],nKeyData["Exp"],tDuelGhostdomCity_Match_Text["ExpText"])
			
		else
			User_AddCultivation(tDuelGhostdomCity_Match_KeyReward[1][6]["Cul"])
			Sys_SaveActionFestivalLog(string.format(tDuelGhostdomCity_Match_Log["BoxReward"],tostring(nLogFlag),"6",tostring(tDuelGhostdomCity_Match_KeyReward[1][2]["Cul"])))
			return string.format(tDuelGhostdomCity_Match_Text["Str"][1],tDuelGhostdomCity_Match_KeyReward[1][6]["Cul"],tDuelGhostdomCity_Match_Text["CulText"])
		end
		 
	end
	
	--修行值
	if nKeyData["Cul"] then
		User_AddCultivation(nKeyData["Cul"])
		Sys_SaveActionFestivalLog(string.format(tDuelGhostdomCity_Match_Log["BoxReward"],tostring(nLogFlag),"6",tostring(nKeyData["Cul"])))
		return string.format(tDuelGhostdomCity_Match_Text["Str"][1],nKeyData["Cul"],tDuelGhostdomCity_Match_Text["CulText"])
	end
	
	--一天祝福
	if nKeyData["Bless"] then
		User_AddBless(nKeyData["Bless"])
		Sys_SaveActionFestivalLog(string.format(tDuelGhostdomCity_Match_Log["BoxReward"],tostring(nLogFlag),"5",tostring(nKeyData["Bless"])))
		return string.format(tDuelGhostdomCity_Match_Text["Str"][1],nKeyData["Bless"],tDuelGhostdomCity_Match_Text["BlessText"])
	end
	
	--气力值
	if nKeyData["Power"] then
		User_AddStrengthValue(nKeyData["Power"])
		Sys_SaveActionFestivalLog(string.format(tDuelGhostdomCity_Match_Log["BoxReward"],tostring(nLogFlag),"12",tostring(nKeyData["Bless"])))
		return string.format(tDuelGhostdomCity_Match_Text["Str"][1],nKeyData["Power"],tDuelGhostdomCity_Match_Text["PowerText"])
	end
	
	--物品
	if nKeyData["ItemId"] then	
		local nActive = nKeyData["Active"] or 0
		local nSavetime = nKeyData["Savetime"] or 0
		Item_AddItem(nKeyData["ItemId"],0,nKeyData["Num"],nKeyData["Present"],nSavetime,nActive)
		Sys_SaveActionFestivalLog(string.format(tDuelGhostdomCity_Match_Log["BoxReward"],tostring(nLogFlag),tostring(nKeyData["ItemId"]),tostring(nKeyData["Num"])))
		local sName = Get_ItemtypeName(nKeyData["ItemId"])
		if nKeyData["Present"] == 3 then
			sName = string.format(tDuelGhostdomCity_Match_Text["Str"][1],sName,tDuelGhostdomCity_Match_Text["zeng"])
		end
		
		return string.format(tDuelGhostdomCity_Match_Text["Str"][2],sName,nKeyData["Num"])
	end
end

--随机函数
--传入参数必须是概率表，返回随机到的概率下标
--tTable ={1,33,99,100}
--以上配置概率为：1%，32%，65%，1%
function DuelGhostdomCity_Match_RandomProbability(tTable)
	if tTable ~= nil and type(tTable) == "table" and #tTable >0 then
		local nValue = tTable[#tTable]
		local nRandomValue 

		nRandomValue = math.random(1,nValue)

		for n = 1, #tTable do
			if tTable[n] >= nRandomValue then
				return n;
			end
		end
	end
	return 0;
end


--第5次打开宝箱
function DuelGhostdomCity_Match_getPerfectKeyReward()
	--获取难度
	local nEvent =tDuelGhostdomCity_Match_Stc["EventType"]
	local nType =tDuelGhostdomCity_Match_Stc["DataType"][2]
	
	local nDiff = Get_UserStatisticValue(nEvent,nType)
	local nData = tDuelGhostdomCity_Match_PerfectKeyReward[nDiff]
	
	local nLogFlag = nDiff + nLogBaceId
	
	local nLev = Get_UserLevel()
	
	local sStr = tDuelGhostdomCity_Match_Text["Str"][5]
	local sJianGe = tDuelGhostdomCity_Match_Text["Str"][3]
	local nCul = 0
	--经验奖励
	if nData["Exp"] then
		
		if nLev < tDuelGhostdomCity_Match_GetLimit["Level"]  then
			User_AddExpTime(nData["Exp"])
			Sys_SaveActionFestivalLog(string.format(tDuelGhostdomCity_Match_Log["BoxReward"],tostring(nLogFlag),"4",tostring(nData["Exp"])))
			sStr = string.format(sJianGe,sStr,nData["Exp"],tDuelGhostdomCity_Match_Text["ExpText"])
			sJianGe = tDuelGhostdomCity_Match_Text["Str"][4]
		else
			local nExp = math.floor(nData["Exp"]/2)
			User_AddCultivation(nExp)
			Sys_SaveActionFestivalLog(string.format(tDuelGhostdomCity_Match_Log["BoxReward"],tostring(nLogFlag),"6",tostring(nExp)))
			sStr = string.format(sJianGe,sStr,nExp,tDuelGhostdomCity_Match_Text["CulText"])
			sJianGe = tDuelGhostdomCity_Match_Text["Str"][4]
		end
		
	end
	
	--修行奖励
	
	if nData["Cul"] then
		User_AddCultivation(nData["Cul"])
		Sys_SaveActionFestivalLog(string.format(tDuelGhostdomCity_Match_Log["BoxReward"],tostring(nLogFlag),"6",tostring(nData["Cul"])))
		sStr = string.format(sJianGe,sStr,nData["Cul"],tDuelGhostdomCity_Match_Text["CulText"])
		sJianGe = tDuelGhostdomCity_Match_Text["Str"][4]
	end
	
	--气力值
	if nData["Power"] then
		User_AddStrengthValue(nData["Power"])
		Sys_SaveActionFestivalLog(string.format(tDuelGhostdomCity_Match_Log["BoxReward"],tostring(nLogFlag),"12",tostring(nData["Power"])))
		sStr = string.format(sJianGe,sStr,nData["Power"],tDuelGhostdomCity_Match_Text["PowerText"])
		sJianGe = tDuelGhostdomCity_Match_Text["Str"][4]
	end
	--物品
	local tItemTab
	if nData["Item"] then
		if sStr == tDuelGhostdomCity_Match_Text["Str"][5] then
			sJianGe = tDuelGhostdomCity_Match_Text["Str"][6]
		else
			sJianGe = tDuelGhostdomCity_Match_Text["Str"][7]
		end
		for i,v in pairs(nData["Item"]) do 
			if v.randtable then
				--随机一个
				local nIndex = DuelGhostdomCity_Match_RandomProbability(v.randtable)
				tItemTab = v[nIndex]
			else
				tItemTab = v
			end
			local nPresent = tItemTab["Present"] or 0
			local nActive = tItemTab["Active"] or 0
			local nSavetime = tItemTab["Savetime"] or 0
			Item_AddItem(tItemTab["ItemId"],0,tItemTab["Num"],nPresent,nSavetime,nActive)
			Sys_SaveActionFestivalLog(string.format(tDuelGhostdomCity_Match_Log["BoxReward"],tostring(nLogFlag),tostring(tItemTab["ItemId"]),tostring(tItemTab["Num"])))
			local sName = Get_ItemtypeName(tItemTab["ItemId"])
			if nPresent == 3 then
				sName = string.format(tDuelGhostdomCity_Match_Text["Str"][1],sName,tDuelGhostdomCity_Match_Text["zeng"])
			end
			
			sStr = string.format(sJianGe,sStr,sName,tItemTab["Num"])
			sJianGe = tDuelGhostdomCity_Match_Text["Str"][7]
		end
	end
	---------------------------
	--物品
	-- if nData["ItemId"] then
		-- Item_AddItem(nData["ItemId"],0,nData["Num"],nData["Present"])
		-- Sys_SaveActionFestivalLog(string.format(tDuelGhostdomCity_Match_Log["BoxReward"],tostring(nLogFlag),tostring(nData["ItemId"]),tostring(nData["Num"])))
		-- local sName = Get_ItemtypeName(nData["ItemId"])
		-- if nData["Present"] == 3 then
			-- sName = sName..tDuelGhostdomCity_Match_Text["zeng"]
		-- end
		-- sStr =sStr .."、"..sName.."*"..nData["Num"]
	-- end
	---------------------------------
	--自创武功
	if nData["MaKi"] then
		--是否自创武功
		if User_IsAlreadyCreateGongFu(0) then
			local nMaki = Get_UserGongFuInt(G_GONGFU_ATTR_GENUINEQI_LV,0)
			
			if nMaki < nData["MaKi"] then
				local nAddMaKi = nData["MaKi"] - nMaki
				User_AddGongFuInt(G_GONGFU_ATTR_GENUINEQI_LV,nAddMaKi,0)
				Sys_SaveActionFestivalLog(string.format(tDuelGhostdomCity_Match_Log["BoxReward"],tostring(nLogFlag),"16",tostring(nAddMaKi)))
			end
		end
	end
	
	--修炼次数
	if nData["FreeCul"] then
		local nCult = Get_UserGongFuInt(G_GONGFU_ATTR_FREE_CULTIVATE_PARAM,0)
		local nCultNum = nData["FreeMax"] - nData["FreeCul"]
		if nCult <= nCultNum   then
			--增加一次免费修炼次数
			User_AddGongFuInt(G_GONGFU_ATTR_FREE_CULTIVATE_PARAM,nData["FreeCul"],0)
			Sys_SaveActionFestivalLog(string.format(tDuelGhostdomCity_Match_Log["BoxReward"],tostring(nLogFlag),"17",tostring(nData["FreeCul"])))
			sStr = string.format(tDuelGhostdomCity_Match_Text["Str"][4],sStr,tDuelGhostdomCity_Match_Text["FreeCulText"],tDuelGhostdomCity_Match_Text["ZhenqiText"])
		end
	end
	return sStr
end

--击杀怪物
function DuelGhostdomCity_Match_KillMonster(nMonsterTypeId)
	local nMapId = Get_UserMapId()
	
	--如果是boss
	if nMonsterTypeId == 7815 or nMonsterTypeId == 7827 or nMonsterTypeId == 7839 then
		Sys_SetTempData(1,nMapId,nMonsterTypeId,0)
	end
	
	local nGhost = tDuelGhostdomCity_Match_MapConfig[nMapId][nMonsterTypeId]["Ghost"] 
	--妖魂
	if nGhost then
		if Task_ChkTaskDetail(tDuelGhostdomCity_Match_YhTask["Yh"]) then
			for k , v in pairs(tDuelGhostdomCity_Match_GhostLimit)do
				if Item_ChkItem(k) then
					local nEvent = tDuelGhostdomCity_Match_YhTask["EventType"]
					local nType = tDuelGhostdomCity_Match_YhTask["DataType"]
					local nMagic = Get_UserStatisticValue(nEvent,nType)
					if nMagic > v then
						break
					end
					nMagic = nMagic + nGhost
					Task_SetStatistic(nEvent,nType,nMagic,1)
					Task_SetStcTimestamp(nEvent,nType,0)
					User_TalkChannel2005(string.format(tDuelGhostdomCity_Match_Text["Enchantress"],nGhost))
					break
				end
			end
		end
	end
	--冥魂玉石
	local nStoneDrop = tDuelGhostdomCity_Match_MapConfig[nMapId][nMonsterTypeId]["StoneDrop"]
	if nStoneDrop then
		if Item_ChkMulItem(tDuelGhostdomCity_Match_ChkTask[1]["ItemId"],tDuelGhostdomCity_Match_ChkTask[1]["ItemId"],tDuelGhostdomCity_Match_ChkTask[1]["Num"]) then
			--User_TalkChannel2005(tDuelGhostdomCity_Match_Text["KillStroeDrop"])
			Sys_MsgBox(tDuelGhostdomCity_Match_Text["KillStroeDrop"],"DuelGhostdomCity_Match_FindWay_OneAndTwo")
		
		elseif DuelGhostdomCity_Match_Rule(nStoneDrop,100) then
			--Monster_SysDropItem(tDuelGhostdomCity_Match_KillMonsterDrop[1])
			if not User_CheckLeftSpace(1) then
				if Item_ChkItem(tDuelGhostdomCity_Match_KillMonsterDrop[1]) then
					Item_AddItem(tDuelGhostdomCity_Match_KillMonsterDrop[1])
					User_TalkChannel2005(tDuelGhostdomCity_Match_Text["GetStoneTip"])
					--播放光效
					User_EffectAdd("self",tDuelGhostdomCity_Match_Effect["GetStone"])
				else
					User_TalkChannel2005(tDuelGhostdomCity_Match_Text["BagFull"])
				end
			else
				Item_AddItem(tDuelGhostdomCity_Match_KillMonsterDrop[1])
				User_TalkChannel2005(tDuelGhostdomCity_Match_Text["GetStoneTip"])
				--播放光效
				User_EffectAdd("self",tDuelGhostdomCity_Match_Effect["GetStone"])
			end
		end
	end
	
	--辟邪护符掉率
	local nAmuletDrop =  tDuelGhostdomCity_Match_MapConfig[nMapId][nMonsterTypeId]["AmuletDrop"]
	if nAmuletDrop then
		if DuelGhostdomCity_Match_Rule(nAmuletDrop,100) then
			Monster_SysDropItem(tDuelGhostdomCity_Match_KillMonsterDrop[2])
		end
	end
	
	--夜叉变身书
	local nHagDrop =  tDuelGhostdomCity_Match_MapConfig[nMapId][nMonsterTypeId]["HagDrop"]
	if nHagDrop then
		if DuelGhostdomCity_Match_Rule(nHagDrop,100) then
			Monster_SysDropItem(tDuelGhostdomCity_Match_KillMonsterDrop[3])
		end
	end
	
	--冥王令碎片
	local nChipDrop =  tDuelGhostdomCity_Match_MapConfig[nMapId][nMonsterTypeId]["Chip"]
	if nChipDrop then
		--是否击杀冥王
		local nEvent = tDuelGhostdomCity_Match_Stc["EventType"]
		local nType = tDuelGhostdomCity_Match_Stc["DataType"][9] 
		--检测物品
		if Item_ChkMulItem(tDuelGhostdomCity_Match_KillMonsterDrop[4],tDuelGhostdomCity_Match_KillMonsterDrop[4],tDuelGhostdomCity_Match_Sp["Limit"]) then
			User_TalkChannel2005(tDuelGhostdomCity_Match_Text["GhostChip"])
		elseif Item_ChkMulItem(tDuelGhostdomCity_Match_Clear[1],tDuelGhostdomCity_Match_Clear[1],1) then
			User_TalkChannel2005(tDuelGhostdomCity_Match_Text["OwnerMWL"])
		elseif Task_ChkStcValue(nEvent,nType,"~=",0) then
			
		else
			if DuelGhostdomCity_Match_Rule(nChipDrop,100) then
				--Monster_SysDropItem(tDuelGhostdomCity_Match_KillMonsterDrop[4])
				if not User_CheckLeftSpace(1) then
					if Item_ChkItem(tDuelGhostdomCity_Match_KillMonsterDrop[4]) then
						Item_AddItem(tDuelGhostdomCity_Match_KillMonsterDrop[4])
					else
						local nUserId = Get_UserId()
						if nUserId == 0 then
							Sys_SaveAbnormalLog("FlagID is 1")
						end
						
						User_TalkChannel2005(tDuelGhostdomCity_Match_Text["BagFull"])
					end
				else
					Item_AddItem(tDuelGhostdomCity_Match_KillMonsterDrop[4])
				end
				
			end
		end
		
	end
	
	--冥王宝库钥匙
	for i= 4 , 0 ,-1 do
		if i==0 then
			if not Item_ChkItem(tDuelGhostdomCity_Match_KillMonsterDrop[5]) then
				if DuelGhostdomCity_Match_Rule(tDuelGhostdomCity_Match_KeyProbability[i],100) then
					if not User_CheckLeftSpace(tDuelGhostdomCity_Match_GetLimit["BagFull"]) then
						User_TalkChannel2005(tDuelGhostdomCity_Match_Text["GxBbJy"])
					else
						Item_AddItem(tDuelGhostdomCity_Match_KillMonsterDrop[5])
						User_TalkChannel2005(tDuelGhostdomCity_Match_Text["GoldKey"])
					end
				end
				break
			end
		else
			if Item_ChkMulItem(tDuelGhostdomCity_Match_KillMonsterDrop[5],tDuelGhostdomCity_Match_KillMonsterDrop[5],i) then
			
				if DuelGhostdomCity_Match_Rule(tDuelGhostdomCity_Match_KeyProbability[i],100) then
					if not User_CheckLeftSpace(tDuelGhostdomCity_Match_GetLimit["BagFull"]) then
						User_TalkChannel2005(tDuelGhostdomCity_Match_Text["GxBbJy"])
						
					else
						Item_AddItem(tDuelGhostdomCity_Match_KillMonsterDrop[5])
						User_TalkChannel2005(tDuelGhostdomCity_Match_Text["GoldKey"])
						
					end
				end
				break
			end
		end
	end
	-- for k ,v in pairs(tDuelGhostdomCity_Match_KeyProbability)do
	
		-- if not Item_ChkItem(tDuelGhostdomCity_Match_KillMonsterDrop[5]) then
			
			-- if DuelGhostdomCity_Match_Rule(tDuelGhostdomCity_Match_KeyProbability[0],100) then
				-- if not User_CheckLeftSpace(tDuelGhostdomCity_Match_GetLimit["BagFull"]) then
					-- User_TalkChannel2005(tDuelGhostdomCity_Match_Text["GxBbJy"])
				-- else
					-- Item_AddItem(tDuelGhostdomCity_Match_KillMonsterDrop[5])
					-- User_TalkChannel2005(tDuelGhostdomCity_Match_Text["GoldKey"])
				-- end
			-- end
			-- break
		-- end
		-- if  k~= 0 and  Item_ChkMulItem(tDuelGhostdomCity_Match_KillMonsterDrop[5],tDuelGhostdomCity_Match_KillMonsterDrop[5],k) then
			-- if DuelGhostdomCity_Match_Rule(v,100) then
				-- if not User_CheckLeftSpace(tDuelGhostdomCity_Match_GetLimit["BagFull"]) then
					-- User_TalkChannel2005(tDuelGhostdomCity_Match_Text["GxBbJy"])
				-- else
					-- Item_AddItem(tDuelGhostdomCity_Match_KillMonsterDrop[5])
					-- User_TalkChannel2005(tDuelGhostdomCity_Match_Text["GoldKey"])
				-- end
			-- end
		-- end
	-- end
	
	--除魔值
	local nKillMonster =  tDuelGhostdomCity_Match_MapConfig[nMapId][nMonsterTypeId]["KillMonster"]
	if nKillMonster then
		local nEvent =tDuelGhostdomCity_Match_Stc["EventType"]
		local nType =tDuelGhostdomCity_Match_Stc["DataType"][7]

		local nMagic =Get_UserStatisticValue(nEvent,nType)
		nMagic = nMagic + nKillMonster
		
		Task_SetStatistic(nEvent,nType,nMagic,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		--显示击杀%s怪物，获得%s除魔值。
		local sMonsterName = Get_MonsterName()
		User_TalkChannel2005(string.format(tDuelGhostdomCity_Match_Text["ChuMoZhi"],sMonsterName,nKillMonster))
		
		--显示当前已获得%s除魔值。
		local nEvent =tDuelGhostdomCity_Match_Stc["EventTypeMonster"]
		local nType =tDuelGhostdomCity_Match_Stc["DataTypeMonster"]
		local nKillNum = Get_UserStatisticValue(nEvent,nType)
		nKillNum = nKillNum +1
		if nKillNum >= 20 then
			User_TalkChannel2005(string.format(tDuelGhostdomCity_Match_Text["ChuMoZhiTotle"],nMagic))
			nKillNum = 0	
		end
		Task_SetStatistic(nEvent,nType,nKillNum,1)
		local nNeedMag = DuelGhostdomCity_Match_GetMagic()
		if nMagic >= nNeedMag then
			Sys_MsgBox(string.format(tDuelGhostdomCity_Match_Text["ChuMoZhiMax"],nNeedMag),"DuelGhostdomCity_Match_FindWay_OneAndTwo")
		end
	end
	
	
	for k,v in pairs(tDuelGhostdomCity_Match_Corridor["MonsterId"])do
		if nMonsterTypeId == v  then
			--回廊
			local nEvent =tDuelGhostdomCity_Match_Stc["EventType"]
			local nType =tDuelGhostdomCity_Match_Stc["DataType"][8]
			local nDiff =Get_UserStatisticValue(nEvent,nType) + 1
			
			local nPlayerPosX = Get_UserPositionX()
	        local nPlayerPosY = Get_UserPositionY()
			--local nMapId = Get_UserMapId()
			
			if nDiff < tDuelGhostdomCity_Match_ChkTask[3]["Num"]+1 then
				local nPosX = tDuelGhostdomCity_Match_Corridor["Crystal"][nDiff]["PosX"]
				local nPosY = tDuelGhostdomCity_Match_Corridor["Crystal"][nDiff]["PosY"] 
				
				local nEffectPosX = tDuelGhostdomCity_Match_SjCorridor["Crystal"][nDiff]["PosX"]
				local nEffectPosY = tDuelGhostdomCity_Match_SjCorridor["Crystal"][nDiff]["PosY"]
				
				
				--判断X坐标
				if nPlayerPosX > nPosX -tDuelGhostdomCity_Match_Corridor["Bound"]  and nPlayerPosX <= nPosX + tDuelGhostdomCity_Match_Corridor["Bound"]  then
					
					--判断Y坐标
					if nPlayerPosY > nPosY - tDuelGhostdomCity_Match_Corridor["Bound"]  and nPlayerPosY <= nPosY + tDuelGhostdomCity_Match_Corridor["Bound"]   then
						
						Task_SetStatistic(nEvent,nType,nDiff,1)
						Task_SetStcTimestamp(nEvent,nType,0)
						if nDiff ~= tDuelGhostdomCity_Match_ChkTask[3]["Num"] then
							--寻路
							local nFindPosX = tDuelGhostdomCity_Match_SjCorridor["Crystal"][nDiff+1]["PosX"]
							local nFindPosY = tDuelGhostdomCity_Match_SjCorridor["Crystal"][nDiff+1]["PosY"]
							Sys_MsgBox(tDuelGhostdomCity_Match_Text["OkMapPos"],"DuelGhostdomCity_Match_SjCorridor</N>"..nFindPosX.."</N>"..nFindPosY)
						else
							Sys_MsgBox(tDuelGhostdomCity_Match_Text["OkMapPos1"],"DuelGhostdomCity_Match_FindWay")
							--Sys_MsgBox(tDuelGhostdomCity_Match_Text["OkMapPos1"])
						end
						Map_Effect(nMapId,nEffectPosX,nEffectPosY,tDuelGhostdomCity_Match_Effect["Treasure3"])
					else
						--不在范围
						User_TalkChannel2005(string.format(tDuelGhostdomCity_Match_Text["NoMapPos"],nDiff))
					end
				else
					--不在范围
					User_TalkChannel2005(string.format(tDuelGhostdomCity_Match_Text["NoMapPos"],nDiff))
				end
			else
				Sys_MsgBox(tDuelGhostdomCity_Match_Text["OkMapPos1"],"DuelGhostdomCity_Match_FindWay")
			end
		end
	end
	
	--冥王掉落 冥王角
	local Angle= tDuelGhostdomCity_Match_MapConfig[nMapId][nMonsterTypeId]["AngleDrop"]
	if Angle then
		
		local nEvent =tDuelGhostdomCity_Match_Stc["EventType"]
		local nType =tDuelGhostdomCity_Match_Stc["DataType"][9]
		
		if not Task_ChkStcValue(nEvent,nType,"==",0) then
			return
		end
		
		--检测是否有冥王令
		if Item_ChkItem(tDuelGhostdomCity_Match_Sp["ItemId"]) then
			 Item_DelItem(tDuelGhostdomCity_Match_Sp["ItemId"])
		else
			--没有冥王令击杀无效
			Sys_MsgBox(tDuelGhostdomCity_Match_Text["NoItemKillTip"])
			return
		end
		
		if DuelGhostdomCity_Match_Rule(Angle,100) then
			--Monster_SysDropItem(tDuelGhostdomCity_Match_KillMonsterDrop[6])
			Item_AddItem(tDuelGhostdomCity_Match_KillMonsterDrop[6])
			User_TalkChannel2005(string.format(tDuelGhostdomCity_Match_Text["GongXi"],string.format(tDuelGhostdomCity_Match_Text["Str"][2],Get_ItemtypeName(tDuelGhostdomCity_Match_KillMonsterDrop[6]),"1")))
			if not User_CheckLeftSpace(tDuelGhostdomCity_Match_GetLimit["BagFull"]) then
				User_TalkChannel2005(string.format(tDuelGhostdomCity_Match_Text["BagFullJl"],Get_ItemtypeName(tDuelGhostdomCity_Match_KillMonsterDrop[6])))
			end
			
		end
			
		--User_TalkChannel2005(tDuelGhostdomCity_Match_Text["KillBoss"])
		Sys_MsgBox(tDuelGhostdomCity_Match_Text["KillBoss"],"DuelGhostdomCity_Match_FindWay")
		User_EffectAdd("self",tDuelGhostdomCity_Match_Effect["NextMap"])
	end
	
	----------新加内容---
	--掉落六级房屋材料
	local Resource= tDuelGhostdomCity_Match_MapConfig[nMapId][nMonsterTypeId]["Resource"]
	if Resource then
		local nEvent =tDuelGhostdomCity_Match_Stc["EventType"]
		local nType =tDuelGhostdomCity_Match_Stc["DataType"][9]
		
		if not Task_ChkStcValue(nEvent,nType,"==",0) then
			return
		end

		local nItemId = 3008100
		if not User_CheckLeftSpace(1) then
			User_TalkChannel2005(tTheSixthHouse_Text["FullBag"])
		else
			Item_AddNewItem(nItemId,"0 3")
			local sStr = "0,0,0,0,10003003,2[2],3008100,3"   --决战冥城中获得建材log
			Sys_SaveActionFestivalLog(sStr)
			User_TalkChannel2005(tDuelGhostdomCity_Match_Text["GetResource"])
		end
	end
	
	--冥王 七星宝剑
	local Sword= tDuelGhostdomCity_Match_MapConfig[nMapId][nMonsterTypeId]["SwordDrop"]
	if Sword then
		local nEvent =tDuelGhostdomCity_Match_Stc["EventType"]
		local nType =tDuelGhostdomCity_Match_Stc["DataType"][9]
		
		if not Task_ChkStcValue(nEvent,nType,"==",0) then
			return
		end
			
		Task_SetStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		if tDuelGhostdomCity_Match_TaskPassId[4] then
			if Task_ChkTaskDetail(tDuelGhostdomCity_Match_TaskPassId[4]) then
				--Task_DelTaskDetail(tDuelGhostdomCity_Match_TaskPassId[nIndex]) 
				--设置CompleteFlag为1
				Task_SetTaskDetailData1(tDuelGhostdomCity_Match_TaskPassId[4],1)
				Task_SetTaskDetailData6(tDuelGhostdomCity_Match_TaskPassId[4],1)
				Task_SetTaskDetailCompleteFlag(tDuelGhostdomCity_Match_TaskPassId[4],1)
			end
		end
		
		if DuelGhostdomCity_Match_Rule(Sword,100) then
			Item_AddItem(tDuelGhostdomCity_Match_KillMonsterDrop[7])
			User_TalkChannel2005(string.format(tDuelGhostdomCity_Match_Text["GongXi"],string.format(tDuelGhostdomCity_Match_Text["Str"][2],Get_ItemtypeName(tDuelGhostdomCity_Match_KillMonsterDrop[7]),"1")))
			if not User_CheckLeftSpace(tDuelGhostdomCity_Match_GetLimit["BagFull"]) then
				User_TalkChannel2005(string.format(tDuelGhostdomCity_Match_Text["BagFullJl"],Get_ItemtypeName(tDuelGhostdomCity_Match_KillMonsterDrop[7])))
			end
		end
		
		if not User_CheckLeftSpace(tDuelGhostdomCity_Match_GetLimit["BagFull"]) then
			User_TalkChannel2005(tDuelGhostdomCity_Match_Text["GxBbJy"])
		else
			-- 击杀六天冥王获得的冥王宝库钥匙数量调整为3把
			Item_AddNewItem(tDuelGhostdomCity_Match_KillMonsterDrop[5],"0 3")
			User_TalkChannel2005(tDuelGhostdomCity_Match_Text["GoldKey_1"])
		end
		
		Sys_MsgBox(tDuelGhostdomCity_Match_Text["KillBoss"],"DuelGhostdomCity_Match_FindWay")
		User_EffectAdd("self",tDuelGhostdomCity_Match_Effect["NextMap"])
	end
	
end

--回廊水晶寻路
function DuelGhostdomCity_Match_SjCorridor(nPosX,nPosY)
	local nMapId = Get_UserMapId()
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,0)
end

--物品 
function DuelGhostdomCity_Match_FindWay(nItemId)
	
	local nMapId = Get_UserMapId()
	local nPosX = 0
	local nPosY = 0
	local nNpcId =0
	
	if tDuelGhostdomCity_Match_Mirror["FindWay"][nMapId] then
		nPosX =tDuelGhostdomCity_Match_Mirror["FindWay"][nMapId]["PosX"]
		nPosY =tDuelGhostdomCity_Match_Mirror["FindWay"][nMapId]["PosY"]
		nNpcId = tDuelGhostdomCity_Match_Mirror["FindWay"][nMapId]["NpcId"]
	else
		nMapId = tDuelGhostdomCity_Match_Mirror["FindWay"]["MapId"]
		nPosX = tDuelGhostdomCity_Match_Mirror["FindWay"]["PosX"]
		nPosY = tDuelGhostdomCity_Match_Mirror["FindWay"]["PosY"]
		nNpcId = tDuelGhostdomCity_Match_Mirror["FindWay"]["NpcId"]
	end
	
	
	
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

--第一关第二关完成寻路
function DuelGhostdomCity_Match_FindWay_OneAndTwo()
	
	local nMapId = Get_UserMapId()
	local nPosX = 0
	local nPosY = 0
	local nNpcId =0
	--第一关和第二关，点确定寻路的时候额外增加旋风状态
	if nMapId == 3955 or nMapId == 3956 or nMapId == 3960 or nMapId == 3961 or nMapId == 3965 or nMapId == 3966 then
		local nStatus = tDuelGhostdomCity_Match_Mirror["DefenceType"] 
		local nPower = tDuelGhostdomCity_Match_Mirror["Power"] 
		local nSecs = 20
		local nTimes = tDuelGhostdomCity_Match_Mirror["Times"] 
		local nRemainTime = tDuelGhostdomCity_Match_Mirror["RemainTime"] 
		local nEndTime = tDuelGhostdomCity_Match_Mirror["EndTime"] 
		local nRecordable = tDuelGhostdomCity_Match_Mirror["Recordable"] 
		local nUserId = Get_UserId()
	
		if not User_ChkRoleStatus(nStatus,nUserId) then 
			User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,nRecordable,0,0,nUserId)
		end
	end
	
	if tDuelGhostdomCity_Match_Mirror["FindWay"][nMapId] then
		nPosX =tDuelGhostdomCity_Match_Mirror["FindWay"][nMapId]["PosX"]
		nPosY =tDuelGhostdomCity_Match_Mirror["FindWay"][nMapId]["PosY"]
		nNpcId = tDuelGhostdomCity_Match_Mirror["FindWay"][nMapId]["NpcId"]
	else
		nMapId = tDuelGhostdomCity_Match_Mirror["FindWay"]["MapId"]
		nPosX = tDuelGhostdomCity_Match_Mirror["FindWay"]["PosX"]
		nPosY = tDuelGhostdomCity_Match_Mirror["FindWay"]["PosY"]
		nNpcId = tDuelGhostdomCity_Match_Mirror["FindWay"]["NpcId"]
	end
	
	
	
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

--购买药水
function DuelGhostdomCity_Match_Buy(nNpcId,nItemId)
	local nNeedTs = tDuelGhostdomCity_Match_Mirror["Item"][nItemId]["Ts"]
	
	if Get_UserEMoney() < nNeedTs then
		LinkItemGossipFunc_New(nNpcId,"100-3")
	else
		local sName = Get_ItemtypeName(nItemId)
		
		
		--购买确认
	
		tItem[3006981]["Text127"] = string.format(tDuelGhostdomCity_Match_Text["Goods"][3006981]["Text125"],sName)
	
		--确定
		tItem[3006981]["OptionFunc7"]="DuelGhostdomCity_Match_BuyAffirm</N>"..nNpcId.."</N>"..nItemId
		
		LinkItemGossipFunc_New(nNpcId,"100-4")
	end
end

--确定购买
function DuelGhostdomCity_Match_BuyAffirm(nNpcId,nItemId)
	local nNeedTs = tDuelGhostdomCity_Match_Mirror["Item"][nItemId]["Ts"]
	local nNum = tDuelGhostdomCity_Match_Mirror["Item"][nItemId]["Num"]
	local sName = Get_ItemtypeName(nItemId)
	if Get_UserEMoney() < nNeedTs then
		LinkItemGossipFunc_New(nNpcId,"100-3")
	else
		if not User_CheckLeftSpace(tDuelGhostdomCity_Match_GetLimit["BagFull"]) then
			LinkItemGossipFunc_New(nNpcId,"100-2")
			return
		end
		
		User_AddEMoney(nNeedTs*-1)
		
		Item_AddItem(nItemId,0,nNum)
		tItem[3006981]["Text128"] =string.format(tDuelGhostdomCity_Match_Text["Goods"][3006981]["Text126"],sName)
		LinkItemGossipFunc_New(nNpcId,"100-5")
		
		--获取难度
		local nEvent =tDuelGhostdomCity_Match_Stc["EventType"]
		local nType =tDuelGhostdomCity_Match_Stc["DataType"][2]

		local nDiff =Get_UserStatisticValue(nEvent,nType)
		local nLogFlag = nDiff + nLogBaceId
		Sys_SaveActionFestivalLog(string.format(tDuelGhostdomCity_Match_Log["BuyMedicine"],tostring(nLogFlag),tostring(nItemId),tostring(nNum)))
		--Emoney Log
		local sText = ""
		if nItemId == 3006986 then
			sText = tDuelGhostdomCity_Match_EmoneyLOG["XuanFeng"]
		elseif nItemId == 3006987 then
			sText = tDuelGhostdomCity_Match_EmoneyLOG["TiLi"]
		end
		Sys_SaveEmoneyBuy(sText)
	end
end

--旋风药水
function DuelGhostdomCity_Match_XfUseItemBox(nItemId)
	
	local nMapValue = Get_UserMapId()
	local bFlag = false
	--地图是否正确
	for k,v in pairs(tDuelGhostdomCity_Match_ChkMap)do
		for z,l in pairs(v)do
			
			if l == nMapValue then
				bFlag = true
			end
		end
	end
	
	--地图错误
	if not bFlag then
		User_TalkChannel2005(tDuelGhostdomCity_Match_Text["MapError1"])
		return 
	end
	
	local nStatus = tDuelGhostdomCity_Match_Mirror["DefenceType"] 
	local nPower = tDuelGhostdomCity_Match_Mirror["Power"] 
	local nSecs = tDuelGhostdomCity_Match_Mirror["DefenceSec"]
	local nTimes = tDuelGhostdomCity_Match_Mirror["Times"] 
	local nRemainTime = tDuelGhostdomCity_Match_Mirror["RemainTime"] 
	local nEndTime = tDuelGhostdomCity_Match_Mirror["EndTime"] 
	local nRecordable = tDuelGhostdomCity_Match_Mirror["Recordable"] 
	local nUserId = Get_UserId()
	
	if Item_DelItem(nItemId) then
		User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,nRecordable,0,0,nUserId)
		User_TalkChannel2005(tDuelGhostdomCity_Match_Text["UseXFwater"])
	end
end

--体力药水
function DuelGhostdomCity_Match_TlUseItemBox(nItemId)
	local nMapValue = Get_UserMapId()
	local bFlag = false
		--地图是否正确
	for k,v in pairs(tDuelGhostdomCity_Match_ChkMap)do
		for z,l in pairs(v)do
			
			if l == nMapValue then
				bFlag = true
			end
		end
	end
	
	--地图错误
	if not bFlag then
		User_TalkChannel2005(tDuelGhostdomCity_Match_Text["MapError1"])
		return 
	end
	if Item_DelItem(nItemId) then
		User_AddEp(tDuelGhostdomCity_Match_Mirror["ePower"])
		User_TalkChannel2005(tDuelGhostdomCity_Match_Text["UseTLwater"])
	end
end

--冥王令碎片
function DuelGhostdomCity_Match_SpUseItemBox(nItemId)
	--检测物品
	if not Item_ChkMulItem(nItemId,nItemId,tDuelGhostdomCity_Match_Sp["Limit"]) then
		User_TalkChannel2005(tDuelGhostdomCity_Match_Text["MwlSpFail"])
		return 
	end
	--删除碎片
	if Item_DelMulItem(nItemId,nItemId,tDuelGhostdomCity_Match_Sp["Limit"]) then 
		Item_AddItem(tDuelGhostdomCity_Match_Sp["ItemId"])
		User_EffectAdd("self",tDuelGhostdomCity_Match_Effect["Treasure4"])
		User_TalkChannel2005(tDuelGhostdomCity_Match_Text["MwlSpSucc"])
	end
end

--冥王令使用寻路
function DuelGhostdomCity_Match_FindwayMw()
	local nPosX,nPosY = 149,139
	local nMapId = Get_UserMapId()
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,0)
end

--冥王令使用
function DuelGhostdomCity_Match_MwlUseItemBox(nItemId)
	local nEvent =tDuelGhostdomCity_Match_Stc["EventType"]
	local nType =tDuelGhostdomCity_Match_Stc["DataType"][9]
	
	if not Task_ChkStcValue(nEvent,nType,"==",0) then
		User_TalkChannel2005(tDuelGhostdomCity_Match_Text["MwlBossFail"])
		return
	end
	
	local nMapId = Get_UserMapId()
	
	
	if tDuelGhostdomCity_Match_BossBron[nMapId] then
	
		local nPosX =tDuelGhostdomCity_Match_BossBron["PosX"]
		local nPosY = tDuelGhostdomCity_Match_BossBron["PosY"]
		
		local nPlayerPosX = Get_UserPositionX()
	    local nPlayerPosY = Get_UserPositionY()
		
		--判断X坐标
		if nPlayerPosX > nPosX -tDuelGhostdomCity_Match_BossBron["Bound"]  and nPlayerPosX <= nPosX + tDuelGhostdomCity_Match_BossBron["Bound"]  then
			
			--判断Y坐标
			if nPlayerPosY > nPosY - tDuelGhostdomCity_Match_BossBron["Bound"]  and nPlayerPosY <= nPosY + tDuelGhostdomCity_Match_BossBron["Bound"]  then
				--判断六天冥王
				-- local nMonsterNum =  Monster_GetMonsterByName(nMapId,tDuelGhostdomCity_Match_Text["MonsterName"][nMapId])
				
				local nMonsterNum = Get_SysTempData(1,nMapId,tDuelGhostdomCity_Match_BossBron[nMapId]["MonsterId"])
				-- local nMonsterNum1 = Monster_GetMonsterByName(nMapId,tDuelGhostdomCity_Match_Text["BossName1"]) 
				-- local nMonsterNum2 = Monster_GetMonsterByName(nMapId,tDuelGhostdomCity_Match_Text["BossName2"]) 
				if nMonsterNum < 1 then
					User_EffectAdd("self",tDuelGhostdomCity_Match_Effect["BossBorn"])
					Monster_AddMonster(nMapId,tDuelGhostdomCity_Match_BossBron["PosX"],tDuelGhostdomCity_Match_BossBron["PosY"],tDuelGhostdomCity_Match_BossBron[nMapId]["generatorId"],tDuelGhostdomCity_Match_BossBron[nMapId]["MonsterId"])
					Sys_SetTempData(1,nMapId,tDuelGhostdomCity_Match_BossBron[nMapId]["MonsterId"],1)
				end
				User_TalkChannel2005(tDuelGhostdomCity_Match_Text["BossBornSucc"])
				
			else
				--不在范围
				--User_TalkChannel2005(tDuelGhostdomCity_Match_Text["BossBornFail"])
				Sys_MsgBox(tDuelGhostdomCity_Match_Text["BossBornFail"],"DuelGhostdomCity_Match_FindwayMw")
			end
		else
			--不在范围
			--User_TalkChannel2005(tDuelGhostdomCity_Match_Text["BossBornFail"])
			Sys_MsgBox(tDuelGhostdomCity_Match_Text["BossBornFail"],"DuelGhostdomCity_Match_FindwayMw")
		end
		
	else
		--User_TalkChannel2005(tDuelGhostdomCity_Match_Text["BossBornFail"])
		Sys_MsgBox(tDuelGhostdomCity_Match_Text["BossBornFail"],"DuelGhostdomCity_Match_FindwayMw")
	end
end

--心花怒放
function DuelGhostdomCity_Match_XhfUseItemBox(nItemId)
	local nIndex = 100
	if Item_DelItem(nItemId) then
		for k , v in pairs(tDuelGhostdomCity_Match_EverydayTask) do
			if  DuelGhostdomCity_Match_Rule(v["Percent"],nIndex) then
				Item_AddItem(v["ItemId"],0,v["Num"])
				
				User_TalkChannel2005(string.format(tDuelGhostdomCity_Match_Text["GongXi"],string.format(tDuelGhostdomCity_Match_Text["Str"][2],Get_ItemtypeName(v["ItemId"]),v["Num"])))
				break
			end
			nIndex =nIndex - v["Percent"]
		end
	end
end

--时间换算
function DuelGhostdomCity_Match_NdCalculateTime(timeNum)
	local nSec=timeNum
	local h=0
	local m=0
	local s=0
	if timeNum > 0 then
		h=math.floor(nSec/ 3600)
		m=math.floor((nSec%3600) /60)
		s=nSec%60
	end

	return h,m,s
end

--传送到黑虎城 九阳处
function DuelGhostdomCity_Match_BoardChkPlay()

	local nBound = tDuelGhostdomCity_Match_MapConfig["nBound"]
	local nMapId = tDuelGhostdomCity_Match_Mirror["FindWay"]["MapId"]
	local nPosX = tDuelGhostdomCity_Match_Mirror["FindWay"]["PosX"]
	local nPosY = tDuelGhostdomCity_Match_Mirror["FindWay"]["PosY"]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,nBound,nBound)
	
end

function DuelGhostdomCity_Match_Board()

	---血量判断
	if Get_UserLife() < 1 then
		return 
	end
	
	--地图检测指定地图才能传送
	for k,v in pairs(tDuelGhostdomCity_Match_BoardMapChk)do
		if Get_UserMapId() ==  v then
			DuelGhostdomCity_Match_BoardChkPlay()
			return
		end
		
	end
	
	--检测地图mapdoc
	
	for k,v in pairs(tDuelGhostdomCity_Match_BoardMapDocChk)do
		if Get_MapDoc() ==  v then
			DuelGhostdomCity_Match_BoardChkPlay()
			return
		end
	end
	
	--混合检测
	--检测 是否为 601mapdoc
	if Get_MapDoc() == tDuelGhostdomCity_Match_BoardChk[1] then
		--检测 是否为 601地图
		if Get_UserMapId() ~= tDuelGhostdomCity_Match_BoardChk[2] then
		
			if  Get_UserMapId() ~= tDuelGhostdomCity_Match_BoardChk[3] then
				DuelGhostdomCity_Match_BoardChkPlay()
				return
			end
			
		end
	else
		--检测是否是 3024mapdoc
		if Get_MapDoc() == tDuelGhostdomCity_Match_BoardChk[4] then
			DuelGhostdomCity_Match_BoardChkPlay()
			return
		end
	end
	Sys_MsgBox(tDuelGhostdomCity_Match_Text["NotMove"])
end

--清理排行榜
function DuelGhostdomCity_Match_ClearAllRank()
	
	local nFlag = false
	--清理排行榜时间
	for k ,v in pairs(tDuelGhostdomCity_Match_TaskInfo["ClearMatchTime"])do
		if  Sys_ChkWeedTime(v) then
			nFlag = true
		end
	end
	
	--周天也清除
	-- local sSunDay = "0 00:00 0 23:59"
	-- if Sys_ChkWeedTime(sSunDay) then
		-- nFlag = true
	-- end
	
	if nFlag then
		for o, p in pairs(tDuelGhostdomCity_Match_GlobalData["Rank"])do
			for z, l in pairs(p)do
				Sys_ResetAllSynaGlobalData(l)
				Sys_ResetAllSynaGlobalDataStr(l)
			end
		end
	end

	--非活动时间将玩家移出地图
	if not nFlag then
		for i,v in pairs(tDuelGhostdomCity_Match_ChkMap) do 
			for o,p in pairs(v) do
				Map_UserExeFunc(p,-1,"</F>DuelGhostdomCity_Match_BackCityNotTime")
			end
		end
	end
	
end

--自动寻路
-- function DuelGhostdomCity_Match_FindWayNpc()
	
-- end


--黑虎城九阳真人
tNpcFace[131] = 67
tNpcFace[5503] = 67
tNpcGossip[3215] = tNpcGossip[3215] or DefaultNpc:new{}
tNpcGossip[3215]["OptionHidden"] = 1


--活动主对白，玩家等级达到
tNpcGossip[3215]["Text1-1"] = {111,112,113}
tNpcGossip[3215]["Text111"] = tDuelGhostdomCity_Match_Text[3215]["Text111"]
tNpcGossip[3215]["Text112"] = tDuelGhostdomCity_Match_Text[3215]["Text112"]
tNpcGossip[3215]["Text113"] = tDuelGhostdomCity_Match_Text[3215]["Text113"]
tNpcGossip[3215]["tOption1-1"] = {1,2,3,4,5}

tNpcGossip[3215]["Option1"] = tDuelGhostdomCity_Match_Text[3215]["Option1"]
tNpcGossip[3215]["Option2"] = tDuelGhostdomCity_Match_Text[3215]["Option2"]
tNpcGossip[3215]["Option3"] = tDuelGhostdomCity_Match_Text[3215]["Option3"]
tNpcGossip[3215]["Option4"] = tDuelGhostdomCity_Match_Text[3215]["Option4"]
tNpcGossip[3215]["Option5"] = tDuelGhostdomCity_Match_Text[3215]["Option5"]
tNpcGossip[3215]["Option6"] = tDuelGhostdomCity_Match_Text[3215]["Option6"]

--当天未选择过难度的玩家显示
tNpcGossip[3215]["OptionChkFunc1"] = function ()
	local nFlag = false
	--不在活动期间
	for k ,v in pairs(tDuelGhostdomCity_Match_TaskInfo["JoinMatchTime"])do
		if  Sys_ChkWeedTime(v) then
			nFlag = true
		end
	end
	
	if  not nFlag then
		return false
	end
	

    local nEvent = tDuelGhostdomCity_Match_Stc["EventType"]
	local nType = tDuelGhostdomCity_Match_Stc["DataType"][2]
	--是否接过任务
	if  Task_ChkStcValue(nEvent,nType,"==",0) then
		
		return true
	else
		return false
	end
	
	
end

--我要参加除魔义军。
tNpcGossip[3215]["OptionFunc1"] ="LinkNpcGossipFunc_New</N>3215</S>1-5"



--当天已选择过难度的玩家显示
tNpcGossip[3215]["OptionChkFunc2"] = function ()
	local nFlag = false
	--不在活动期间
	for k ,v in pairs(tDuelGhostdomCity_Match_TaskInfo["JoinMatchTime"])do
		if  Sys_ChkWeedTime(v) then
			nFlag = true
		end
	end
	
	
	if  not nFlag then
		return false
	end
	

	local nEvent = tDuelGhostdomCity_Match_Stc["EventType"]
	local nType = tDuelGhostdomCity_Match_Stc["DataType"][2]
	--是否接过任务
	if  Task_ChkStcValue(nEvent,nType,"~=",0) then
		
		-- local nEvent = tDuelGhostdomCity_Match_Stc["EventType"]
		-- local nType = tDuelGhostdomCity_Match_Stc["DataType"][1]
		--是否接过任务
		-- if not Task_ChkStcValue(nEvent,nType,"==",0) then
			-- return false
		-- end
		
		return true
	else
		return false
	end
end
tNpcGossip[3215]["OptionFunc2"] = "DuelGhostdomCity_Match_EnterMap</N>3215</N>0</S>true"

--当天已选择过难度的玩家显示
-- tNpcGossip[3215]["OptionChkFunc3"] = function ()
	-- local nEvent = tDuelGhostdomCity_Match_Stc["EventType"]
	-- local nType = tDuelGhostdomCity_Match_Stc["DataType"][2]
	--是否接过任务
	-- if  Task_ChkStcValue(nEvent,nType,"~=",0) then
		
		-- return true
	-- else
		-- return false
	-- end
-- end

--当天已选择过难度的玩家显示
tNpcGossip[3215]["OptionFunc3"] ="LinkNpcGossipFunc_New</N>3215</S>100-1"


--领取排名奖励
tNpcGossip[3215]["OptionFunc4"] ="tDuelGhostdomCity_Match_GetRankReward</N>3215"
tNpcGossip[3215]["OptionChkFunc4"] = function ()
	local nFlag = true
	--不在活动期间
	for k ,v in pairs(tDuelGhostdomCity_Match_TaskInfo["JoinMatchTime"])do
		if  Sys_ChkWeedTime(v) then
			nFlag = false
		end
	end
	
	return  nFlag
end

--了解详情
tNpcGossip[3215]["OptionFunc5"] = "LinkNpcGossipFunc_New</N>3215</S>100-9"


-- tNpcGossip[3215]["ChkFunc1-1"] = function ()
-- end

--不在活动期间
tNpcGossip[3215]["Text1-2"] = {114}
tNpcGossip[3215]["Text114"] = tDuelGhostdomCity_Match_Text[3215]["Text115"]
tNpcGossip[3215]["Option7"] = tDuelGhostdomCity_Match_Text[3215]["Option8"]
tNpcGossip[3215]["tOption1-2"] = {7}


--等级不足或已转世
tNpcGossip[3215]["Text1-3"] = {115,116}
tNpcGossip[3215]["Text115"] = tDuelGhostdomCity_Match_Text[3215]["Text114"]
tNpcGossip[3215]["Text116"] = tDuelGhostdomCity_Match_Text[3215]["Text175"]
tNpcGossip[3215]["Option8"] = tDuelGhostdomCity_Match_Text[3215]["Option7"]
tNpcGossip[3215]["tOption1-3"] = {8}

--当天已经完成任务
tNpcGossip[3215]["Text1-4"] = {117}
tNpcGossip[3215]["Text117"] = tDuelGhostdomCity_Match_Text[3215]["Text116"]

tNpcGossip[3215]["Option9"] = tDuelGhostdomCity_Match_Text[3215]["Option9"]
tNpcGossip[3215]["Option116"] = tDuelGhostdomCity_Match_Text[3215]["Option116"]
--当天已选择过难度的玩家显示
tNpcGossip[3215]["OptionChkFunc116"] = function ()
	local nFlag = false
	--不在活动期间
	for k ,v in pairs(tDuelGhostdomCity_Match_TaskInfo["JoinMatchTime"])do
		if  Sys_ChkWeedTime(v) then
			nFlag = true
		end
	end

	if  not nFlag then
		return false
	end
	
	local nEvent = tDuelGhostdomCity_Match_Stc["EventType"]
	local nType = tDuelGhostdomCity_Match_Stc["DataType"][2]
	--是否接过任务
	if  Task_ChkStcValue(nEvent,nType,"~=",0) then
		return true
	else
		return false
	end
end
tNpcGossip[3215]["OptionFunc116"] = "DuelGhostdomCity_Match_EnterBoxMap</N>3215"
tNpcGossip[3215]["tOption1-4"] = {116,3,4,5,9}
-- tNpcGossip[3215]["ChkFunc1-4"] = function ()

-- end

--成功 选择难度
tNpcGossip[3215]["Text1-5"] = {118,119,120}
tNpcGossip[3215]["Text118"] = tDuelGhostdomCity_Match_Text[3215]["Text117"]
tNpcGossip[3215]["Text119"] = tDuelGhostdomCity_Match_Text[3215]["Text118"]
tNpcGossip[3215]["Text120"] = tDuelGhostdomCity_Match_Text[3215]["Text119"]

tNpcGossip[3215]["Option10"] = tDuelGhostdomCity_Match_Text[3215]["Option10"]
tNpcGossip[3215]["Option11"] = tDuelGhostdomCity_Match_Text[3215]["Option11"]
tNpcGossip[3215]["Option12"] = tDuelGhostdomCity_Match_Text[3215]["Option12"]
tNpcGossip[3215]["Option13"] = tDuelGhostdomCity_Match_Text[3215]["Option13"]
tNpcGossip[3215]["Option14"] = tDuelGhostdomCity_Match_Text[3215]["Option14"]
tNpcGossip[3215]["tOption1-5"] = {10,11,12,13}

--未转、一转的玩家显示
tNpcGossip[3215]["OptionChkFunc10"] = function ()
	--未转、一转的玩家显示
	local nUserId = Get_UserId()
	local nUserMetempsychosis = Get_UserMetempsychosis(nUserId)
	
	if nUserMetempsychosis <= tDuelGhostdomCity_Match_TaskInfo["LevelLimit"]["Incarnation1"] then
		return true
	end
	return false
end

--从难度进入FB
tNpcGossip[3215]["OptionFunc10"]="DuelGhostdomCity_Match_EnterMap</N>3215</N>1"
 
--二转的玩家显示
tNpcGossip[3215]["OptionChkFunc11"] = function ()
	local nUserId = Get_UserId()
	local nUserMetempsychosis = Get_UserMetempsychosis(nUserId)
	
	if nUserMetempsychosis >= tDuelGhostdomCity_Match_TaskInfo["LevelLimit"]["Incarnation2"] then
		return true
	end
	return false
end
--普通难度，二次确认
tNpcGossip[3215]["OptionFunc11"] = "LinkNpcGossipFunc_New</N>3215</S>100-20"

--普通难度，二次确认页面
tNpcGossip[3215]["Text100-20"] = {230,231}
tNpcGossip[3215]["Text230"] = tDuelGhostdomCity_Match_Text[3215]["Text230"]
tNpcGossip[3215]["Text231"] = tDuelGhostdomCity_Match_Text[3215]["Text231"]

tNpcGossip[3215]["Option200"] = tDuelGhostdomCity_Match_Text[3215]["Option200"]
tNpcGossip[3215]["Option201"] = tDuelGhostdomCity_Match_Text[3215]["Option201"]
tNpcGossip[3215]["tOption100-20"] = {200,201}
--挑战普通难度
tNpcGossip[3215]["OptionFunc200"]="DuelGhostdomCity_Match_EnterMap</N>3215</N>2"


--二转的玩家显示
tNpcGossip[3215]["OptionChkFunc12"] = function ()
	local nUserId = Get_UserId()
	local nUserMetempsychosis = Get_UserMetempsychosis(nUserId)
	
	if nUserMetempsychosis >= tDuelGhostdomCity_Match_TaskInfo["LevelLimit"]["Incarnation2"] then
		return true
	end
	return false
end
tNpcGossip[3215]["OptionFunc12"]="DuelGhostdomCity_Match_EnterMap</N>3215</N>3"

-- tNpcGossip[3215]["OptionFunc13"]="LinkNpcGossipFunc_New</N>3215</S>1-1"
tNpcGossip[3215]["OptionFunc13"]="DuelGhostdomCity_Match_NpcAction</N>3215"


--查看通关排行榜
tNpcGossip[3215]["Text100-1"] = {121,122,123}
tNpcGossip[3215]["Text121"] = tDuelGhostdomCity_Match_Text[3215]["Text120"]
tNpcGossip[3215]["Text122"] = tDuelGhostdomCity_Match_Text[3215]["Text121"]
tNpcGossip[3215]["Text123"] = tDuelGhostdomCity_Match_Text[3215]["Text122"]

tNpcGossip[3215]["Option15"] = tDuelGhostdomCity_Match_Text[3215]["Option15"]
tNpcGossip[3215]["Option16"] = tDuelGhostdomCity_Match_Text[3215]["Option16"]
tNpcGossip[3215]["Option17"] = tDuelGhostdomCity_Match_Text[3215]["Option17"]
tNpcGossip[3215]["Option18"] = tDuelGhostdomCity_Match_Text[3215]["Option18"]
tNpcGossip[3215]["Option19"] = tDuelGhostdomCity_Match_Text[3215]["Option19"]
tNpcGossip[3215]["Option99"] = tDuelGhostdomCity_Match_Text[3215]["Option28"]
tNpcGossip[3215]["tOption100-1"] = {15,16,17,99,18,19}

--简单难度排行榜
tNpcGossip[3215]["OptionFunc15"]="LinkNpcGossipFunc_New</N>3215</S>100-2"
--普通难度排行榜
tNpcGossip[3215]["OptionFunc16"]="LinkNpcGossipFunc_New</N>3215</S>100-3"
--精英难度排行榜
tNpcGossip[3215]["OptionFunc17"]="LinkNpcGossipFunc_New</N>3215</S>100-4"
--上一页
-- tNpcGossip[3215]["OptionFunc18"]="LinkNpcGossipFunc_New</N>3215</S>1-1"
tNpcGossip[3215]["OptionFunc18"]="DuelGhostdomCity_Match_NpcAction</N>3215"

tNpcGossip[3215]["OptionFunc99"]="LinkNpcGossipFunc_New</N>3215</S>100-18"


--简单排行难度关排行榜
tNpcGossip[3215]["Text100-2"] ={1002,1005,124,125,126,127,128,129,130,131,132,133,1006}
tNpcGossip[3215]["Text1002"] = tDuelGhostdomCity_Match_Text[3215]["Text1002"]
tNpcGossip[3215]["Text1005"] = tDuelGhostdomCity_Match_Text[3215]["Text1005"]
tNpcGossip[3215]["Text124"] = tDuelGhostdomCity_Match_Text[3215]["Text123"]
tNpcGossip[3215]["Text125"] = tDuelGhostdomCity_Match_Text[3215]["Text124"]
tNpcGossip[3215]["Text126"] = tDuelGhostdomCity_Match_Text[3215]["Text125"]
tNpcGossip[3215]["Text127"] = tDuelGhostdomCity_Match_Text[3215]["Text126"]
tNpcGossip[3215]["Text128"] = tDuelGhostdomCity_Match_Text[3215]["Text127"]
tNpcGossip[3215]["Text129"] = tDuelGhostdomCity_Match_Text[3215]["Text128"]
tNpcGossip[3215]["Text130"] = tDuelGhostdomCity_Match_Text[3215]["Text129"]
tNpcGossip[3215]["Text131"] = tDuelGhostdomCity_Match_Text[3215]["Text130"]
tNpcGossip[3215]["Text132"] = tDuelGhostdomCity_Match_Text[3215]["Text131"]
tNpcGossip[3215]["Text133"] = tDuelGhostdomCity_Match_Text[3215]["Text132"]
tNpcGossip[3215]["Text1006"] = tDuelGhostdomCity_Match_Text[3215]["Text1005"]
tNpcGossip[3215]["tOption100-2"] = {20}

tNpcGossip[3215]["Option20"] = tDuelGhostdomCity_Match_Text[3215]["Option20"]
tNpcGossip[3215]["Option21"] = tDuelGhostdomCity_Match_Text[3215]["Option21"]

--上一页
tNpcGossip[3215]["OptionFunc20"]="LinkNpcGossipFunc_New</N>3215</S>100-1"
tNpcGossip[3215]["ChkFunc100-2"] =function ()
	local nEvent =tDuelGhostdomCity_Match_Stc["EventType"]
	local nType =tDuelGhostdomCity_Match_Stc["DataType"][11]
	
	local nDiff = 1
	
	local tRankUserData={}
	--取排行榜玩家id，和用时
	local nIndex = 0
	for j = 1,2  do
		for i= 1, 5 do
			local nGolbalId = tDuelGhostdomCity_Match_GlobalData["Rank"][nDiff][j]
			local n = Get_SysDynaGlobalData(nGolbalId,i)
			local nYTime = Get_SysDynaGlobalDataStr(nGolbalId,i)
			nIndex = nIndex +1
			tRankUserData[nIndex]={}
			tRankUserData[nIndex][1]= n
			tRankUserData[nIndex][2] = nYTime == "" and 0 or tonumber(nYTime)
			
		end
	end
	--取排行榜玩家名字
	nIndex = 0
	for j = 3,4 do
		for i =1,5 do 
			local nGolbalId = tDuelGhostdomCity_Match_GlobalData["Rank"][nDiff][j]
			nIndex = nIndex +1
			tRankUserData[nIndex][3] = Get_SysDynaGlobalDataStr(nGolbalId,i)
		end
	end
	
	local leftNum = 123
	for i = 1 ,10 do
		local nHour,nMin,nSec = DuelGhostdomCity_Match_NdCalculateTime(tRankUserData[i][2])
		local sUserName  = (tRankUserData[i][3] == "" or tRankUserData[i][3] == "null") and tDuelGhostdomCity_Match_Text["UserMiss"] or tRankUserData[i][3]
		
		local sTime = tRankUserData[i][2] == 0 and "" or string.format(tDuelGhostdomCity_Match_Text[3215]["Text176"],nHour,nMin,nSec)
		
		local nUserNameLen = string.len(sUserName)
		for i=1,15 - nUserNameLen do
			sUserName = sUserName.." "
		end
		tNpcGossip[3215]["Text"..leftNum+i]=string.format(tDuelGhostdomCity_Match_Text[3215]["Text"..leftNum-1+i],sUserName,sTime)
	end
	

	return true
end

--普通难度通关排行榜
tNpcGossip[3215]["Text100-3"] ={1003,1007,134,135,136,137,138,139,140,141,142,143,1008}
tNpcGossip[3215]["Text1003"] = tDuelGhostdomCity_Match_Text[3215]["Text1003"]
tNpcGossip[3215]["Text1007"] = tDuelGhostdomCity_Match_Text[3215]["Text1005"]
tNpcGossip[3215]["Text134"] = tDuelGhostdomCity_Match_Text[3215]["Text123"]
tNpcGossip[3215]["Text135"] = tDuelGhostdomCity_Match_Text[3215]["Text124"]
tNpcGossip[3215]["Text136"] = tDuelGhostdomCity_Match_Text[3215]["Text125"]
tNpcGossip[3215]["Text137"] = tDuelGhostdomCity_Match_Text[3215]["Text126"]
tNpcGossip[3215]["Text138"] = tDuelGhostdomCity_Match_Text[3215]["Text127"]
tNpcGossip[3215]["Text139"] = tDuelGhostdomCity_Match_Text[3215]["Text128"]
tNpcGossip[3215]["Text140"] = tDuelGhostdomCity_Match_Text[3215]["Text129"]
tNpcGossip[3215]["Text141"] = tDuelGhostdomCity_Match_Text[3215]["Text130"]
tNpcGossip[3215]["Text142"] = tDuelGhostdomCity_Match_Text[3215]["Text131"]
tNpcGossip[3215]["Text143"] = tDuelGhostdomCity_Match_Text[3215]["Text132"]
tNpcGossip[3215]["Text1008"] = tDuelGhostdomCity_Match_Text[3215]["Text1005"]
tNpcGossip[3215]["tOption100-3"] = {22}

tNpcGossip[3215]["Option22"] = tDuelGhostdomCity_Match_Text[3215]["Option20"]
tNpcGossip[3215]["Option23"] = tDuelGhostdomCity_Match_Text[3215]["Option21"]

tNpcGossip[3215]["ChkFunc100-3"] =function ()
	local nEvent =tDuelGhostdomCity_Match_Stc["EventType"]
	local nType =tDuelGhostdomCity_Match_Stc["DataType"][11]
	
	local nDiff = 2
	
	local tRankUserData={}
	--取排行榜玩家id，和用时
	local nIndex = 0
	for j = 1,2  do
		for i= 1, 5 do
			local nGolbalId = tDuelGhostdomCity_Match_GlobalData["Rank"][nDiff][j]
			local n = Get_SysDynaGlobalData(nGolbalId,i)
			local nYTime = Get_SysDynaGlobalDataStr(nGolbalId,i)
			nIndex = nIndex +1
			tRankUserData[nIndex]={}
			tRankUserData[nIndex][1]= n
			tRankUserData[nIndex][2] = nYTime == "" and 0 or tonumber(nYTime)
			
		end
	end
	--取排行榜玩家名字
	nIndex = 0
	for j = 3,4 do
		for i =1,5 do 
			local nGolbalId = tDuelGhostdomCity_Match_GlobalData["Rank"][nDiff][j]
			nIndex = nIndex +1
			tRankUserData[nIndex][3] = Get_SysDynaGlobalDataStr(nGolbalId,i)
		end
	end	
	
	local leftNum = 133
	local rightNum = 122
	for i = 1 ,10 do
		local nHour,nMin,nSec = DuelGhostdomCity_Match_NdCalculateTime(tRankUserData[i][2])
		local sUserName  = (tRankUserData[i][3] == "" or tRankUserData[i][3] == "null") and tDuelGhostdomCity_Match_Text["UserMiss"] or tRankUserData[i][3]
	
		local sTime = tRankUserData[i][2] == 0 and "" or string.format(tDuelGhostdomCity_Match_Text[3215]["Text176"],nHour,nMin,nSec)
		
		local nUserNameLen = string.len(sUserName)
		for i=1,15 - nUserNameLen do
			sUserName = sUserName.." "
		end
		tNpcGossip[3215]["Text"..leftNum+i]=string.format(tDuelGhostdomCity_Match_Text[3215]["Text"..rightNum+i],sUserName,sTime)
	end

	return true
end

--上一页
tNpcGossip[3215]["OptionFunc22"]="LinkNpcGossipFunc_New</N>3215</S>100-1"



--精英难度通关排行榜

tNpcGossip[3215]["Text100-4"] ={1004,1009,144,145,146,147,148,149,150,151,152,153,1010}
tNpcGossip[3215]["Text1004"] = tDuelGhostdomCity_Match_Text[3215]["Text1004"]
tNpcGossip[3215]["Text1009"] = tDuelGhostdomCity_Match_Text[3215]["Text1005"]
tNpcGossip[3215]["Text144"] = tDuelGhostdomCity_Match_Text[3215]["Text123"]
tNpcGossip[3215]["Text145"] = tDuelGhostdomCity_Match_Text[3215]["Text124"]
tNpcGossip[3215]["Text146"] = tDuelGhostdomCity_Match_Text[3215]["Text125"]
tNpcGossip[3215]["Text147"] = tDuelGhostdomCity_Match_Text[3215]["Text126"]
tNpcGossip[3215]["Text148"] = tDuelGhostdomCity_Match_Text[3215]["Text127"]
tNpcGossip[3215]["Text149"] = tDuelGhostdomCity_Match_Text[3215]["Text128"]
tNpcGossip[3215]["Text150"] = tDuelGhostdomCity_Match_Text[3215]["Text129"]
tNpcGossip[3215]["Text151"] = tDuelGhostdomCity_Match_Text[3215]["Text130"]
tNpcGossip[3215]["Text152"] = tDuelGhostdomCity_Match_Text[3215]["Text131"]
tNpcGossip[3215]["Text153"] = tDuelGhostdomCity_Match_Text[3215]["Text132"]
tNpcGossip[3215]["Text1010"] = tDuelGhostdomCity_Match_Text[3215]["Text1005"]
tNpcGossip[3215]["tOption100-4"] = {24}

tNpcGossip[3215]["Option24"] = tDuelGhostdomCity_Match_Text[3215]["Option20"]
tNpcGossip[3215]["Option25"] = tDuelGhostdomCity_Match_Text[3215]["Option21"]


tNpcGossip[3215]["ChkFunc100-4"] =function ()
	local nEvent =tDuelGhostdomCity_Match_Stc["EventType"]
	local nType =tDuelGhostdomCity_Match_Stc["DataType"][11]
	
	local nDiff = 3
	
	local tRankUserData={}
	--取排行榜玩家id，和用时
	local nIndex = 0
	for j = 1,2  do
		for i= 1, 5 do
			local nGolbalId = tDuelGhostdomCity_Match_GlobalData["Rank"][nDiff][j]
			local n = Get_SysDynaGlobalData(nGolbalId,i)
			local nYTime = Get_SysDynaGlobalDataStr(nGolbalId,i)
			nIndex = nIndex +1
			tRankUserData[nIndex]={}
			tRankUserData[nIndex][1]= n
			tRankUserData[nIndex][2] =  nYTime == "" and 0 or tonumber(nYTime)
			
		end
	end
	--取排行榜玩家名字
	nIndex = 0
	for j = 3,4 do
		for i =1,5 do 
			local nGolbalId = tDuelGhostdomCity_Match_GlobalData["Rank"][nDiff][j]
			nIndex = nIndex +1
			tRankUserData[nIndex][3] = Get_SysDynaGlobalDataStr(nGolbalId,i)
		end
	end
	
	local leftNum = 143
	local rightNum = 122
	for i = 1 ,10 do
		local nHour,nMin,nSec = DuelGhostdomCity_Match_NdCalculateTime(tRankUserData[i][2])
		local sUserName  = (tRankUserData[i][3] == "" or tRankUserData[i][3] == "null") and tDuelGhostdomCity_Match_Text["UserMiss"] or tRankUserData[i][3]
	
		local sTime = tRankUserData[i][2] == 0 and "" or string.format(tDuelGhostdomCity_Match_Text[3215]["Text176"],nHour,nMin,nSec)
		
		local nUserNameLen = string.len(sUserName)
		for i=1,15 - nUserNameLen do
			sUserName = sUserName.." "
		end
		tNpcGossip[3215]["Text"..leftNum+i]=string.format(tDuelGhostdomCity_Match_Text[3215]["Text"..rightNum+i],sUserName,sTime)
	end
	

	return true
end

--上一页
tNpcGossip[3215]["OptionFunc24"]="LinkNpcGossipFunc_New</N>3215</S>100-1"

--成功，领取排名奖励
tNpcGossip[3215]["Text100-5"] ={154}
tNpcGossip[3215]["Text154"] = tDuelGhostdomCity_Match_Text[3215]["Text133"]
tNpcGossip[3215]["Option26"] = tDuelGhostdomCity_Match_Text[3215]["Option22"]
tNpcGossip[3215]["tOption100-5"] = {26}

--失败，未达到前10
tNpcGossip[3215]["Text100-6"] ={155}
tNpcGossip[3215]["Text155"] = tDuelGhostdomCity_Match_Text[3215]["Text134"]
tNpcGossip[3215]["Option27"] = tDuelGhostdomCity_Match_Text[3215]["Option23"]
tNpcGossip[3215]["tOption100-6"] = {27}

--失败，不在领奖时间内
tNpcGossip[3215]["Text100-7"] ={156}
tNpcGossip[3215]["Text156"] = tDuelGhostdomCity_Match_Text[3215]["Text136"]
tNpcGossip[3215]["Option28"] = tDuelGhostdomCity_Match_Text[3215]["Option24"]
tNpcGossip[3215]["tOption100-7"] = {28}

--失败，已领取过当天排名奖励
tNpcGossip[3215]["Text100-8"] ={157}
tNpcGossip[3215]["Text157"] = tDuelGhostdomCity_Match_Text[3215]["Text137"]
tNpcGossip[3215]["Option29"] = tDuelGhostdomCity_Match_Text[3215]["Option25"]
tNpcGossip[3215]["tOption100-8"] = {29}

--活动详情介绍
tNpcGossip[3215]["Text100-9"] ={158,159,160}
tNpcGossip[3215]["Text158"] = tDuelGhostdomCity_Match_Text[3215]["Text138"]
tNpcGossip[3215]["Text159"] = tDuelGhostdomCity_Match_Text[3215]["Text139"]
tNpcGossip[3215]["Text160"] = tDuelGhostdomCity_Match_Text[3215]["Text140"]
tNpcGossip[3215]["Option30"] = tDuelGhostdomCity_Match_Text[3215]["Option26"]
tNpcGossip[3215]["Option31"] = tDuelGhostdomCity_Match_Text[3215]["Option27"]
tNpcGossip[3215]["Option32"] = tDuelGhostdomCity_Match_Text[3215]["Option28"]
tNpcGossip[3215]["Option33"] = tDuelGhostdomCity_Match_Text[3215]["Option29"]
tNpcGossip[3215]["Option34"] = tDuelGhostdomCity_Match_Text[3215]["Option30"]
tNpcGossip[3215]["Option35"] = tDuelGhostdomCity_Match_Text[3215]["Option31"]
tNpcGossip[3215]["tOption100-9"] = {30,31,32,33,34,35}

--查看通关条件。
tNpcGossip[3215]["OptionFunc30"]="LinkNpcGossipFunc_New</N>3215</S>100-10"
--查看通关奖励。
tNpcGossip[3215]["OptionFunc31"]="LinkNpcGossipFunc_New</N>3215</S>100-11"
--查看排名奖励。
tNpcGossip[3215]["OptionFunc32"]="LinkNpcGossipFunc_New</N>3215</S>100-16"
--查看冥王宝库奖励。
tNpcGossip[3215]["OptionFunc33"]="LinkNpcGossipFunc_New</N>3215</S>100-13"
--上一页
-- tNpcGossip[3215]["OptionFunc34"]="LinkNpcGossipFunc_New</N>3215</S>1-1"
tNpcGossip[3215]["OptionFunc34"]="DuelGhostdomCity_Match_NpcAction</N>3215"

--查看通关条件。
tNpcGossip[3215]["Text100-10"] ={1410,161,162,163,1411}
tNpcGossip[3215]["Text1410"] = tDuelGhostdomCity_Match_Text[3215]["Text1410"]
tNpcGossip[3215]["Text161"] = tDuelGhostdomCity_Match_Text[3215]["Text141"]
tNpcGossip[3215]["Text162"] = tDuelGhostdomCity_Match_Text[3215]["Text142"]
tNpcGossip[3215]["Text163"] = tDuelGhostdomCity_Match_Text[3215]["Text143"]
tNpcGossip[3215]["Option36"] = tDuelGhostdomCity_Match_Text[3215]["Option45"]
tNpcGossip[3215]["Text1411"] = tDuelGhostdomCity_Match_Text[3215]["Text1410"]
tNpcGossip[3215]["tOption100-10"] = {36}
tNpcGossip[3215]["OptionFunc36"]="LinkNpcGossipFunc_New</N>3215</S>100-9"

--查看通关奖励
tNpcGossip[3215]["Text100-11"] ={164,165,166,167,168,300,301}
tNpcGossip[3215]["Text164"] = tDuelGhostdomCity_Match_Text[3215]["Text144"]
tNpcGossip[3215]["Text165"] = tDuelGhostdomCity_Match_Text[3215]["Text145"]
tNpcGossip[3215]["Text166"] = tDuelGhostdomCity_Match_Text[3215]["Text146"]
tNpcGossip[3215]["Text167"] = tDuelGhostdomCity_Match_Text[3215]["Text147"]
tNpcGossip[3215]["Text168"] = tDuelGhostdomCity_Match_Text[3215]["Text148"]
-- tNpcGossip[3215]["Text169"] = tDuelGhostdomCity_Match_Text[3215]["Text149"]
tNpcGossip[3215]["Text300"] = tDuelGhostdomCity_Match_Text[3215]["Text300"]
tNpcGossip[3215]["Text301"] = tDuelGhostdomCity_Match_Text[3215]["Text301"]
tNpcGossip[3215]["Option37"] = tDuelGhostdomCity_Match_Text[3215]["Option32"]
tNpcGossip[3215]["Option47"] = tDuelGhostdomCity_Match_Text[3215]["Option33"]

tNpcGossip[3215]["tOption100-11"] = {37,47}

--查看满级通关奖励。
tNpcGossip[3215]["OptionFunc37"]="LinkNpcGossipFunc_New</N>3215</S>100-12"
tNpcGossip[3215]["OptionFunc47"] = "LinkNpcGossipFunc_New</N>3215</S>100-9"

--满级通关奖励
tNpcGossip[3215]["Text100-12"] ={170,171,172,173,174,305,306}
tNpcGossip[3215]["Text170"] = tDuelGhostdomCity_Match_Text[3215]["Text150"]
tNpcGossip[3215]["Text171"] = tDuelGhostdomCity_Match_Text[3215]["Text151"]
tNpcGossip[3215]["Text172"] = tDuelGhostdomCity_Match_Text[3215]["Text152"]
tNpcGossip[3215]["Text173"] = tDuelGhostdomCity_Match_Text[3215]["Text153"]
tNpcGossip[3215]["Text174"] = tDuelGhostdomCity_Match_Text[3215]["Text154"]
tNpcGossip[3215]["Text305"] = tDuelGhostdomCity_Match_Text[3215]["Text305"]
tNpcGossip[3215]["Text306"] = tDuelGhostdomCity_Match_Text[3215]["Text306"]
-- tNpcGossip[3215]["Text175"] = tDuelGhostdomCity_Match_Text[3215]["Text155"]
tNpcGossip[3215]["Option38"] = tDuelGhostdomCity_Match_Text[3215]["Option33"]
tNpcGossip[3215]["Option39"] = tDuelGhostdomCity_Match_Text[3215]["Option34"]

tNpcGossip[3215]["tOption100-12"] = {38,39}

--上一页
tNpcGossip[3215]["OptionFunc38"]="LinkNpcGossipFunc_New</N>3215</S>100-11"

--查看冥王宝库奖励
tNpcGossip[3215]["Text100-13"] ={176,177}  
tNpcGossip[3215]["Text176"] = tDuelGhostdomCity_Match_Text[3215]["Text167"]
tNpcGossip[3215]["Text177"] = tDuelGhostdomCity_Match_Text[3215]["Text168"]

tNpcGossip[3215]["Option40"] = tDuelGhostdomCity_Match_Text[3215]["Option37"] 
tNpcGossip[3215]["Option41"] = tDuelGhostdomCity_Match_Text[3215]["Option38"] 
tNpcGossip[3215]["Option42"] = tDuelGhostdomCity_Match_Text[3215]["Option39"] 
tNpcGossip[3215]["Option43"] = tDuelGhostdomCity_Match_Text[3215]["Option40"] 

tNpcGossip[3215]["tOption100-13"] = {40,41,42,43}

--前4次开启随机奖励。
tNpcGossip[3215]["OptionFunc40"]="LinkNpcGossipFunc_New</N>3215</S>100-14"
--第5次开启终极大奖。
tNpcGossip[3215]["OptionFunc41"]="LinkNpcGossipFunc_New</N>3215</S>100-15"
--上一页
tNpcGossip[3215]["OptionFunc42"]="LinkNpcGossipFunc_New</N>3215</S>100-9"


--前4次开启随机奖励。
tNpcGossip[3215]["Text100-14"] ={3701,178,179,180,3702}
tNpcGossip[3215]["Text3701"] = tDuelGhostdomCity_Match_Text[3215]["Text3701"]
tNpcGossip[3215]["Text178"] = tDuelGhostdomCity_Match_Text[3215]["Text169"]
tNpcGossip[3215]["Text179"] = tDuelGhostdomCity_Match_Text[3215]["Text170"]
tNpcGossip[3215]["Text180"] = tDuelGhostdomCity_Match_Text[3215]["Text171"]
tNpcGossip[3215]["Text3702"] = tDuelGhostdomCity_Match_Text[3215]["Text3702"]
tNpcGossip[3215]["Option44"] = tDuelGhostdomCity_Match_Text[3215]["Option41"]
tNpcGossip[3215]["Option45"] = tDuelGhostdomCity_Match_Text[3215]["Option42"]

tNpcGossip[3215]["tOption100-14"] = {44,45}

--上一页
tNpcGossip[3215]["OptionFunc44"]="LinkNpcGossipFunc_New</N>3215</S>100-13"


--第5次开启终极大奖。
tNpcGossip[3215]["Text100-15"] ={3801,181,182,183,3802}
tNpcGossip[3215]["Text3801"] = tDuelGhostdomCity_Match_Text[3215]["Text3801"]
tNpcGossip[3215]["Text181"] = tDuelGhostdomCity_Match_Text[3215]["Text172"]
tNpcGossip[3215]["Text182"] = tDuelGhostdomCity_Match_Text[3215]["Text173"]
tNpcGossip[3215]["Text183"] = tDuelGhostdomCity_Match_Text[3215]["Text174"]
tNpcGossip[3215]["Text3802"] = tDuelGhostdomCity_Match_Text[3215]["Text3802"]
tNpcGossip[3215]["Option52"] = tDuelGhostdomCity_Match_Text[3215]["Option43"]
tNpcGossip[3215]["Option59"] = tDuelGhostdomCity_Match_Text[3215]["Option44"]

tNpcGossip[3215]["tOption100-15"] = {52,59}

--上一页
tNpcGossip[3215]["OptionFunc52"]="LinkNpcGossipFunc_New</N>3215</S>100-13"


--查看排名奖励
tNpcGossip[3215]["Text100-16"] ={184,185,186,187,188,189,190,191,192,193,194,195} 
tNpcGossip[3215]["Text184"] = tDuelGhostdomCity_Match_Text[3215]["Text156"]
tNpcGossip[3215]["Text185"] = tDuelGhostdomCity_Match_Text[3215]["Text157"]
tNpcGossip[3215]["Text186"] = tDuelGhostdomCity_Match_Text[3215]["Text158"]
tNpcGossip[3215]["Text187"] = tDuelGhostdomCity_Match_Text[3215]["Text159"]
tNpcGossip[3215]["Text188"] = tDuelGhostdomCity_Match_Text[3215]["Text160"]
tNpcGossip[3215]["Text189"] = tDuelGhostdomCity_Match_Text[3215]["Text161"]
tNpcGossip[3215]["Text191"] = tDuelGhostdomCity_Match_Text[3215]["Text162"]
tNpcGossip[3215]["Text192"] = tDuelGhostdomCity_Match_Text[3215]["Text163"]
tNpcGossip[3215]["Text193"] = tDuelGhostdomCity_Match_Text[3215]["Text164"]
tNpcGossip[3215]["Text194"] = tDuelGhostdomCity_Match_Text[3215]["Text165"]
tNpcGossip[3215]["Text195"] = tDuelGhostdomCity_Match_Text[3215]["Text166"]

tNpcGossip[3215]["tOption100-16"] = {49,48}
tNpcGossip[3215]["Option48"] = tDuelGhostdomCity_Match_Text[3215]["Option35"]
tNpcGossip[3215]["Option49"] = tDuelGhostdomCity_Match_Text[3215]["Option36"]

--上一页
tNpcGossip[3215]["OptionFunc48"]="LinkNpcGossipFunc_New</N>3215</S>100-9"
tNpcGossip[3215]["OptionFunc49"]="LinkNpcGossipFunc_New</N>3215</S>100-17"


tNpcGossip[3215]["Text100-17"] ={196,197,198,199,200,201,202,203,204,205,206} 
tNpcGossip[3215]["Text196"] = tDuelGhostdomCity_Match_Text[3215]["Text177"]
tNpcGossip[3215]["Text197"] = tDuelGhostdomCity_Match_Text[3215]["Text178"]
tNpcGossip[3215]["Text198"] = tDuelGhostdomCity_Match_Text[3215]["Text179"]
tNpcGossip[3215]["Text199"] = tDuelGhostdomCity_Match_Text[3215]["Text180"]
tNpcGossip[3215]["Text200"] = tDuelGhostdomCity_Match_Text[3215]["Text181"]
tNpcGossip[3215]["Text201"] = tDuelGhostdomCity_Match_Text[3215]["Text182"]
tNpcGossip[3215]["Text202"] = tDuelGhostdomCity_Match_Text[3215]["Text183"]
tNpcGossip[3215]["Text203"] = tDuelGhostdomCity_Match_Text[3215]["Text184"]
tNpcGossip[3215]["Text204"] = tDuelGhostdomCity_Match_Text[3215]["Text185"]
tNpcGossip[3215]["Text205"] = tDuelGhostdomCity_Match_Text[3215]["Text186"]
tNpcGossip[3215]["Text206"] = tDuelGhostdomCity_Match_Text[3215]["Text187"]

tNpcGossip[3215]["tOption100-17"] = {50,51}
tNpcGossip[3215]["Option50"] = tDuelGhostdomCity_Match_Text[3215]["Option35"]
tNpcGossip[3215]["Option51"] = tDuelGhostdomCity_Match_Text[3215]["Option14"]

tNpcGossip[3215]["OptionFunc50"]="LinkNpcGossipFunc_New</N>3215</S>100-16"


--查看排名奖励
tNpcGossip[3215]["Text100-18"] ={207,208,209,210,211,212,213,214,215,216,217} 
tNpcGossip[3215]["Text207"] = tDuelGhostdomCity_Match_Text[3215]["Text156"]
tNpcGossip[3215]["Text208"] = tDuelGhostdomCity_Match_Text[3215]["Text157"]
tNpcGossip[3215]["Text209"] = tDuelGhostdomCity_Match_Text[3215]["Text158"]
tNpcGossip[3215]["Text210"] = tDuelGhostdomCity_Match_Text[3215]["Text159"]
tNpcGossip[3215]["Text211"] = tDuelGhostdomCity_Match_Text[3215]["Text160"]
tNpcGossip[3215]["Text212"] = tDuelGhostdomCity_Match_Text[3215]["Text161"]
tNpcGossip[3215]["Text213"] = tDuelGhostdomCity_Match_Text[3215]["Text162"]
tNpcGossip[3215]["Text214"] = tDuelGhostdomCity_Match_Text[3215]["Text163"]
tNpcGossip[3215]["Text215"] = tDuelGhostdomCity_Match_Text[3215]["Text164"]
tNpcGossip[3215]["Text216"] = tDuelGhostdomCity_Match_Text[3215]["Text165"]
tNpcGossip[3215]["Text217"] = tDuelGhostdomCity_Match_Text[3215]["Text166"]

tNpcGossip[3215]["tOption100-18"] = {97,98}
tNpcGossip[3215]["Option98"] = tDuelGhostdomCity_Match_Text[3215]["Option35"]
tNpcGossip[3215]["Option97"] = tDuelGhostdomCity_Match_Text[3215]["Option36"]

--上一页
tNpcGossip[3215]["OptionFunc98"]="LinkNpcGossipFunc_New</N>3215</S>100-1"
tNpcGossip[3215]["OptionFunc97"]="LinkNpcGossipFunc_New</N>3215</S>100-19"

--满级奖励
tNpcGossip[3215]["Text100-19"] ={218,219,220,221,222,223,224,225,226,227,228} 
tNpcGossip[3215]["Text218"] = tDuelGhostdomCity_Match_Text[3215]["Text177"]
tNpcGossip[3215]["Text219"] = tDuelGhostdomCity_Match_Text[3215]["Text178"]
tNpcGossip[3215]["Text220"] = tDuelGhostdomCity_Match_Text[3215]["Text179"]
tNpcGossip[3215]["Text221"] = tDuelGhostdomCity_Match_Text[3215]["Text180"]
tNpcGossip[3215]["Text222"] = tDuelGhostdomCity_Match_Text[3215]["Text181"]
tNpcGossip[3215]["Text223"] = tDuelGhostdomCity_Match_Text[3215]["Text182"]
tNpcGossip[3215]["Text224"] = tDuelGhostdomCity_Match_Text[3215]["Text183"]
tNpcGossip[3215]["Text225"] = tDuelGhostdomCity_Match_Text[3215]["Text184"]
tNpcGossip[3215]["Text226"] = tDuelGhostdomCity_Match_Text[3215]["Text185"]
tNpcGossip[3215]["Text227"] = tDuelGhostdomCity_Match_Text[3215]["Text186"]
tNpcGossip[3215]["Text228"] = tDuelGhostdomCity_Match_Text[3215]["Text187"]

tNpcGossip[3215]["tOption100-19"] = {96,95}
tNpcGossip[3215]["Option96"] = tDuelGhostdomCity_Match_Text[3215]["Option35"]
tNpcGossip[3215]["Option95"] = tDuelGhostdomCity_Match_Text[3215]["Option14"]

tNpcGossip[3215]["OptionFunc96"]="LinkNpcGossipFunc_New</N>3215</S>100-18"

--幽冥古镜
tItem[3006981] = tItem[3006981] or {}

--第一关
tItem[3006981]["Text1-1"] = {111,112,113}
tItem[3006981]["Text111"] =tDuelGhostdomCity_Match_Text["Goods"][3006981]["Text111"]
tItem[3006981]["Text112"] =tDuelGhostdomCity_Match_Text["Goods"][3006981]["Text112"]
tItem[3006981]["Text113"] =tDuelGhostdomCity_Match_Text["Goods"][3006981]["Text113"]
tItem[3006981]["ChkFunc1-1"] = function () 
	
	local nMapId = Get_UserMapId()
	for k ,v in pairs(tDuelGhostdomCity_Match_ChkMap)do
		if v[1] == nMapId then
			return true
		end
	end
	return false
end

tItem[3006981]["Option1"] = tDuelGhostdomCity_Match_Text["Goods"][3006981]["Option1"]
tItem[3006981]["Option2"] = tDuelGhostdomCity_Match_Text["Goods"][3006981]["Option2"]
tItem[3006981]["Option3"] = tDuelGhostdomCity_Match_Text["Goods"][3006981]["Option3"]
tItem[3006981]["tOption1-1"] = {1,2,3}
--前往寻找九阳真人。
tItem[3006981]["OptionFunc1"]="DuelGhostdomCity_Match_FindWay</N>3006981"
--购买药水。
tItem[3006981]["OptionFunc2"]="LinkItemGossipFunc_New</N>3006981</S>100-1"

--第二关
tItem[3006981]["Text1-2"] = {114,115,116}
tItem[3006981]["Text114"] =tDuelGhostdomCity_Match_Text["Goods"][3006981]["Text114"]
tItem[3006981]["Text115"] =tDuelGhostdomCity_Match_Text["Goods"][3006981]["Text115"]
tItem[3006981]["Text116"] =tDuelGhostdomCity_Match_Text["Goods"][3006981]["Text116"]
tItem[3006981]["ChkFunc1-2"] = function () 
	local nMapId = Get_UserMapId()
	tItem[3006981]["Text114"] =string.format(tDuelGhostdomCity_Match_Text["Goods"][3006981]["Text114"],DuelGhostdomCity_Match_GetMagic())

	local nCurrMagic = Get_UserStatisticValue(tDuelGhostdomCity_Match_Stc["EventType"],tDuelGhostdomCity_Match_Stc["DataType"][7])
	tItem[3006981]["Text115"] = string.format(tDuelGhostdomCity_Match_Text["Goods"][3006981]["Text115"],nCurrMagic)
	for k ,v in pairs(tDuelGhostdomCity_Match_ChkMap)do
		if v[2] == nMapId then
			return true
		end
	end
	return false
end
tItem[3006981]["tOption1-2"] = {1,2,3}

--第三关
tItem[3006981]["Text1-3"] = {117,118}
tItem[3006981]["Text117"] =tDuelGhostdomCity_Match_Text["Goods"][3006981]["Text117"]
tItem[3006981]["Text118"] =tDuelGhostdomCity_Match_Text["Goods"][3006981]["Text118"]
tItem[3006981]["ChkFunc1-3"] = function () 
	local nMapId = Get_UserMapId()
	for k ,v in pairs(tDuelGhostdomCity_Match_ChkMap)do
		if v[3] == nMapId then
			return true
		end
	end
	return false
end
tItem[3006981]["tOption1-3"] = {1,2,3}

--第四关
tItem[3006981]["Text1-4"] = {119,120,121}
tItem[3006981]["Text119"] =tDuelGhostdomCity_Match_Text["Goods"][3006981]["Text119"]
tItem[3006981]["Text120"] =tDuelGhostdomCity_Match_Text["Goods"][3006981]["Text120"]
tItem[3006981]["Text121"] =tDuelGhostdomCity_Match_Text["Goods"][3006981]["Text121"]
tItem[3006981]["ChkFunc1-4"] = function () 
	local nMapId = Get_UserMapId()
	for k ,v in pairs(tDuelGhostdomCity_Match_ChkMap)do
		if v[4] == nMapId then
			return true
		end
	end
	return false
end
tItem[3006981]["tOption1-4"] = {1,2,3}

--幽冥城外
tItem[3006981]["Text1-5"] = {122,123}
tItem[3006981]["Text122"] =tDuelGhostdomCity_Match_Text["Goods"][3006981]["Text122"]
tItem[3006981]["Text123"] =tDuelGhostdomCity_Match_Text["Goods"][3006981]["Text123"]

tItem[3006981]["tOption1-5"] = {1,3}


--购买药水
tItem[3006981]["Text100-1"] = {124}
tItem[3006981]["Text124"] =tDuelGhostdomCity_Match_Text["Goods"][3006981]["Text124"]

tItem[3006981]["Option5"] = tDuelGhostdomCity_Match_Text["Goods"][3006981]["Option5"]
tItem[3006981]["Option6"] = tDuelGhostdomCity_Match_Text["Goods"][3006981]["Option6"]

tItem[3006981]["tOption100-1"] = {5,6}
--前往寻找九阳真人。
tItem[3006981]["OptionFunc5"]="DuelGhostdomCity_Match_Buy</N>3006981</N>3006986"
tItem[3006981]["OptionFunc6"]="DuelGhostdomCity_Match_Buy</N>3006981</N>3006987"

--背包已满
tItem[3006981]["Text100-2"] = {125}
tItem[3006981]["Text125"] =tDuelGhostdomCity_Match_Text["Goods"][3006981]["BagFull"]

tItem[3006981]["Option3"] = tDuelGhostdomCity_Match_Text["Goods"][3006981]["Option4"]

tItem[3006981]["tOption100-2"] = {3}



--天石不足
tItem[3006981]["Text100-3"] = {126}
tItem[3006981]["Text126"] =tDuelGhostdomCity_Match_Text["Goods"][3006981]["StoneMiss"]
tItem[3006981]["Option4"] = tDuelGhostdomCity_Match_Text["Goods"][3006981]["Option4"]
tItem[3006981]["tOption100-3"] = {4}


--购买确认
tItem[3006981]["Text100-4"] = {127}
tItem[3006981]["Text127"] =tDuelGhostdomCity_Match_Text["Goods"][3006981]["Text125"]
tItem[3006981]["Option7"] = tDuelGhostdomCity_Match_Text["Goods"][3006981]["Option7"]
tItem[3006981]["Option8"] = tDuelGhostdomCity_Match_Text["Goods"][3006981]["Option9"]
tItem[3006981]["tOption100-4"] = {7,8}

--确定
tItem[3006981]["OptionFunc7"]="DuelGhostdomCity_Match_BuyAffirm</N>3006981</N>3006981"

--购买成功
tItem[3006981]["Text100-5"] = {128}
tItem[3006981]["Text128"] =tDuelGhostdomCity_Match_Text["Goods"][3006981]["Text126"]
tItem[3006981]["Option9"] = tDuelGhostdomCity_Match_Text["Goods"][3006981]["Option10"]
tItem[3006981]["tOption100-5"] = {9}


--冥城鬼门NPC--九阳真人
tNpcFace[131] = 67
tNpcGossip[18716] = tNpcGossip[18716] or DefaultNpc:new{}
tNpcGossip[18716]["OptionHidden"] = 1

--活动主对白
tNpcGossip[18716]["Text1-1"] = {111,112}
tNpcGossip[18716]["Text111"] = tDuelGhostdomCity_Match_Text[18716]["Text111"]
tNpcGossip[18716]["Text112"] = tDuelGhostdomCity_Match_Text[18716]["Text112"]

tNpcGossip[18716]["Option1"] = tDuelGhostdomCity_Match_Text[18716]["Option1"]
tNpcGossip[18716]["Option2"] = tDuelGhostdomCity_Match_Text[18716]["Option2"]
tNpcGossip[18716]["Option66"] = tDuelGhostdomCity_Match_Text[18716]["Option5"]

tNpcGossip[18716]["tOption1-1"] = {1,66,2}

--上交5颗冥魂玉石。
tNpcGossip[18716]["OptionFunc1"] = "DuelGhostdomCity_Match_GhostDoor</N>18716</N>1"
tNpcGossip[18716]["OptionFunc66"]="DuelGhostdomCity_Match_BackCity</N>18716"


--上交成功获得奖励传送下一关
tNpcGossip[18716]["Text1-2"] = {113}
tNpcGossip[18716]["Text113"] = tDuelGhostdomCity_Match_Text[18716]["Text113"]
tNpcGossip[18716]["Option3"] = tDuelGhostdomCity_Match_Text[18716]["Option3"]
tNpcGossip[18716]["tOption1-2"] = {3}

--盛情难却。
tNpcGossip[18716]["OptionFunc3"] = "DuelGhostdomCity_Match_Next</N>18716</N>1"

--失败玉石不足
tNpcGossip[18716]["Text1-3"] = {114}
tNpcGossip[18716]["Text114"] = tDuelGhostdomCity_Match_Text[18716]["Text114"]
tNpcGossip[18716]["Option4"] = tDuelGhostdomCity_Match_Text[18716]["Option4"]
tNpcGossip[18716]["tOption1-3"] = {4}

--失败 非活动时间
tNpcGossip[18716]["Text1-4"] = {115}
tNpcGossip[18716]["Text115"] = tDuelGhostdomCity_Match_Text[18716]["Text115"]
tNpcGossip[18716]["Option5"] = tDuelGhostdomCity_Match_Text[18716]["Option5"]
tNpcGossip[18716]["tOption1-4"] = {5}

tNpcGossip[18716]["OptionFunc5"]="DuelGhostdomCity_Match_BackCity</N>18716"

tNpcGossip[18721] = tNpcGossip[18716] 
tNpcGossip[18726] = tNpcGossip[18716] 

--冥王大殿NPC——九阳真人
tNpcGossip[18717] = tNpcGossip[18717] or DefaultNpc:new{}
tNpcGossip[18717]["OptionHidden"] = 1

--活动主对白
tNpcGossip[18717]["Text1-1"] = {111,112}
tNpcGossip[18717]["Text111"] = tDuelGhostdomCity_Match_Text[18717]["Text111"]
tNpcGossip[18717]["Text112"] = tDuelGhostdomCity_Match_Text[18717]["Text112"]

tNpcGossip[18717]["Option1"] = tDuelGhostdomCity_Match_Text[18717]["Option1"]
tNpcGossip[18717]["Option2"] = tDuelGhostdomCity_Match_Text[18717]["Option2"]
tNpcGossip[18717]["Option66"] = tDuelGhostdomCity_Match_Text[18716]["Option5"]
tNpcGossip[18717]["tOption1-1"] = {1,66,2}
tNpcGossip[18717]["OptionFunc66"]="DuelGhostdomCity_Match_BackCity</N>18717"

tNpcGossip[18717]["ChkFunc1-1"] = function ()
	local nMagic = DuelGhostdomCity_Match_GetMagic()
	local nCurrMagic = Get_UserStatisticValue(tDuelGhostdomCity_Match_Stc["EventType"],tDuelGhostdomCity_Match_Stc["DataType"][7])
	tNpcGossip[18717]["Text112"] = string.format(tDuelGhostdomCity_Match_Text[18717]["Text112"],nMagic,nCurrMagic)
	return true
end

--除魔成功。
tNpcGossip[18717]["OptionFunc1"] = "DuelGhostdomCity_Match_Palace</N>18717</N>2"

--除魔成功. 传送过去
tNpcGossip[18717]["Text1-2"] = {113}
tNpcGossip[18717]["Text113"] = tDuelGhostdomCity_Match_Text[18717]["Text113"]

tNpcGossip[18717]["Option3"] = tDuelGhostdomCity_Match_Text[18717]["Option3"]
tNpcGossip[18717]["tOption1-2"] = {3}

tNpcGossip[18717]["OptionFunc3"] ="DuelGhostdomCity_Match_Next</N>18717</N>2"

--失败 除魔值数量不对
tNpcGossip[18717]["Text1-3"] = {114}
tNpcGossip[18717]["Text114"] = tDuelGhostdomCity_Match_Text[18717]["Text114"]

tNpcGossip[18717]["Option4"] = tDuelGhostdomCity_Match_Text[18717]["Option4"]
tNpcGossip[18717]["tOption1-3"] = {4}


--非活动时间
tNpcGossip[18717]["Text1-4"] = {115}
tNpcGossip[18717]["Text115"] = tDuelGhostdomCity_Match_Text[18716]["Text115"]
tNpcGossip[18717]["Option5"] = tDuelGhostdomCity_Match_Text[18716]["Option5"]
tNpcGossip[18717]["tOption1-4"] = {5}
tNpcGossip[18717]["OptionFunc5"]="DuelGhostdomCity_Match_BackCity</N>18717"

tNpcGossip[18722] = tNpcGossip[18717] 
tNpcGossip[18727] = tNpcGossip[18717] 



--冥宫回廊NPC——九阳真人
tNpcGossip[18718] = tNpcGossip[18718] or DefaultNpc:new{}
tNpcGossip[18718]["OptionHidden"] = 1

--活动主对白
tNpcGossip[18718]["Text1-1"] = {111,112}
tNpcGossip[18718]["Text111"] = tDuelGhostdomCity_Match_Text[18718]["Text111"]
tNpcGossip[18718]["Text112"] = tDuelGhostdomCity_Match_Text[18718]["Text112"]

tNpcGossip[18718]["tOption1-1"] = {1,66,2}

tNpcGossip[18718]["Option1"] = tDuelGhostdomCity_Match_Text[18718]["Option1"]
tNpcGossip[18718]["Option2"] = tDuelGhostdomCity_Match_Text[18718]["Option2"]
tNpcGossip[18718]["Option66"] = tDuelGhostdomCity_Match_Text[18716]["Option5"]
--已然扫清结界。
tNpcGossip[18718]["OptionFunc1"]= "DuelGhostdomCity_Match_Enchantment</N>18718</N>3"
tNpcGossip[18718]["OptionFunc66"]="DuelGhostdomCity_Match_BackCity</N>18718"

--成功 进入冥王法阵
tNpcGossip[18718]["Text1-2"] = {113}
tNpcGossip[18718]["Text113"] = tDuelGhostdomCity_Match_Text[18718]["Text113"]
tNpcGossip[18718]["Option3"] = tDuelGhostdomCity_Match_Text[18718]["Option3"]

tNpcGossip[18718]["tOption1-2"] = {3}
--盛情难却。
tNpcGossip[18718]["OptionFunc3"] ="DuelGhostdomCity_Match_Next</N>18717</N>3"

--失败 未完成清除任务
tNpcGossip[18718]["Text1-3"] = {114}
tNpcGossip[18718]["Text114"] = tDuelGhostdomCity_Match_Text[18718]["Text114"]

tNpcGossip[18718]["Option4"] = tDuelGhostdomCity_Match_Text[18718]["Option4"]
tNpcGossip[18718]["tOption1-3"] = {4}


--非活动时间
tNpcGossip[18718]["Text1-4"] = {115}
tNpcGossip[18718]["Text115"] = tDuelGhostdomCity_Match_Text[18716]["Text115"]
tNpcGossip[18718]["Option5"] = tDuelGhostdomCity_Match_Text[18716]["Option5"]
tNpcGossip[18718]["tOption1-4"] = {5}
tNpcGossip[18718]["OptionFunc5"]="DuelGhostdomCity_Match_BackCity</N>18718"

--失败 未完成清除任何一道任务
tNpcGossip[18718]["Text1-5"] = {116}
tNpcGossip[18718]["Text116"] = tDuelGhostdomCity_Match_Text[18718]["Text115"]

tNpcGossip[18718]["Option6"] = tDuelGhostdomCity_Match_Text[18718]["Option5"]
tNpcGossip[18718]["tOption1-5"] = {6}

tNpcGossip[18723] = tNpcGossip[18718]   
tNpcGossip[18728] = tNpcGossip[18718]   


--冥王法阵NPC -- 九阳真人

tNpcGossip[18719] = tNpcGossip[18719] or DefaultNpc:new{}
tNpcGossip[18719]["OptionHidden"] = 1

--活动主对白
tNpcGossip[18719]["Text1-1"] = {111,112,113}
tNpcGossip[18719]["Text111"] = tDuelGhostdomCity_Match_Text[18719]["Text111"]
tNpcGossip[18719]["Text112"] = tDuelGhostdomCity_Match_Text[18719]["Text112"]
tNpcGossip[18719]["Text113"] = tDuelGhostdomCity_Match_Text[18719]["Text113"]

tNpcGossip[18719]["tOption1-1"] = {1,66,2}

tNpcGossip[18719]["Option1"] = tDuelGhostdomCity_Match_Text[18719]["Option1"]
tNpcGossip[18719]["Option2"] = tDuelGhostdomCity_Match_Text[18719]["Option2"]
tNpcGossip[18719]["Option66"] = tDuelGhostdomCity_Match_Text[18716]["Option5"]

--已经消灭冥王。
tNpcGossip[18719]["OptionFunc1"] = "DuelGhostdomCity_Match_KillBoss</N>18719</N>4"
tNpcGossip[18719]["OptionFunc66"]="DuelGhostdomCity_Match_BackCity</N>18716"

--成功 进入冥王法阵
tNpcGossip[18719]["Text1-2"] = {114,115}
tNpcGossip[18719]["Text114"] = tDuelGhostdomCity_Match_Text[18719]["Text114"]
tNpcGossip[18719]["Text115"] = tDuelGhostdomCity_Match_Text[18719]["Text115"]
tNpcGossip[18719]["Option3"] = tDuelGhostdomCity_Match_Text[18719]["Option3"]

tNpcGossip[18719]["tOption1-2"] = {3}
--盛情难却。
tNpcGossip[18719]["OptionFunc3"] = "DuelGhostdomCity_Match_Next</N>18719</N>4"

--失败 未完成清除任务
tNpcGossip[18719]["Text1-3"] = {116}
tNpcGossip[18719]["Text116"] = tDuelGhostdomCity_Match_Text[18719]["Text116"]

tNpcGossip[18719]["Option4"] = tDuelGhostdomCity_Match_Text[18719]["Option4"]
tNpcGossip[18719]["tOption1-3"] = {4}


--非活动时间
tNpcGossip[18719]["Text1-4"] = {117}
tNpcGossip[18719]["Text117"] = tDuelGhostdomCity_Match_Text[18716]["Text115"]
tNpcGossip[18719]["Option5"] = tDuelGhostdomCity_Match_Text[18716]["Option5"]
tNpcGossip[18719]["tOption1-4"] = {5}
tNpcGossip[18719]["OptionFunc5"]="DuelGhostdomCity_Match_BackCity</N>18719"


tNpcGossip[18724] = tNpcGossip[18719]
tNpcGossip[18729] = tNpcGossip[18719]


tNpcGossip[18720] = tNpcGossip[18720] or DefaultNpc:new{}
tNpcGossip[18720]["OptionHidden"] = 1


--冥王宝库NPC——九阳真人
tNpcGossip[18720]["Text1-1"] = {111,112,113,114}
tNpcGossip[18720]["Text111"] = tDuelGhostdomCity_Match_Text[18720]["Text111"]
tNpcGossip[18720]["Text112"] = tDuelGhostdomCity_Match_Text[18720]["Text112"]
tNpcGossip[18720]["Text113"] = tDuelGhostdomCity_Match_Text[18720]["Text113"]
tNpcGossip[18720]["Text114"] = tDuelGhostdomCity_Match_Text[18720]["Text114"]

--判断玩家是否满级，满级显示150点修行值
tNpcGossip[18720]["ChkFunc1-1"] =function ()
	local nLev = Get_UserLevel()
	if nLev < tDuelGhostdomCity_Match_GetLimit["Level"] then
		tNpcGossip[18720]["Text112"] = string.format(tDuelGhostdomCity_Match_Text[18720]["Text112"],tDuelGhostdomCity_Match_Text["LiuTianNotMax"])
	else
		--满级
		tNpcGossip[18720]["Text112"] = string.format(tDuelGhostdomCity_Match_Text[18720]["Text112"],tDuelGhostdomCity_Match_Text["LiuTianMax"])
	end
	return true
end

tNpcGossip[18720]["tOption1-1"] = {1,2,66}

tNpcGossip[18720]["Option1"] = tDuelGhostdomCity_Match_Text[18720]["Option1"]
tNpcGossip[18720]["Option2"] = tDuelGhostdomCity_Match_Text[18720]["Option2"]
tNpcGossip[18720]["Option3"] = tDuelGhostdomCity_Match_Text[18720]["Option3"]
tNpcGossip[18720]["Option66"] = tDuelGhostdomCity_Match_Text[18716]["Option5"]

--上交六天冥角。
tNpcGossip[18720]["OptionFunc1"] = "DuelGhostdomCity_Match_SubmitAngle</N>18720"

--上交七星宝剑。
tNpcGossip[18720]["OptionFunc2"] = "DuelGhostdomCity_Match_SubmitSword</N>18720"
tNpcGossip[18720]["OptionFunc66"]="DuelGhostdomCity_Match_BackCity</N>18716"

--成功上交六天冥角，获得300分数经验
tNpcGossip[18720]["Text1-2"] = {115,116}
tNpcGossip[18720]["Text115"] = tDuelGhostdomCity_Match_Text[18720]["Text115"]
tNpcGossip[18720]["Text116"] = tDuelGhostdomCity_Match_Text[18720]["Text116"]
tNpcGossip[18720]["Option4"] = tDuelGhostdomCity_Match_Text[18720]["Option4"]

tNpcGossip[18720]["tOption1-2"] = {4} 

--成功，获得150修行值
tNpcGossip[18720]["Text1-3"] = {117,118}
tNpcGossip[18720]["Text117"] = tDuelGhostdomCity_Match_Text[18720]["Text117"]
tNpcGossip[18720]["Text118"] = tDuelGhostdomCity_Match_Text[18720]["Text118"]
tNpcGossip[18720]["Option5"] = tDuelGhostdomCity_Match_Text[18720]["Option5"]
tNpcGossip[18720]["tOption1-3"] = {5} 


--失败，没有六天冥角
tNpcGossip[18720]["Text1-4"] = {119}
tNpcGossip[18720]["Text119"] = tDuelGhostdomCity_Match_Text[18720]["Text119"]
tNpcGossip[18720]["Option6"] = tDuelGhostdomCity_Match_Text[18720]["Option6"]
tNpcGossip[18720]["tOption1-4"] = {6} 

--成功上交七星宝剑，选择外套
tNpcGossip[18720]["Text1-5"] = {120,121}
tNpcGossip[18720]["Text120"] = tDuelGhostdomCity_Match_Text[18720]["Text120"]
tNpcGossip[18720]["Text121"] = tDuelGhostdomCity_Match_Text[18720]["Text121"]
tNpcGossip[18720]["Option7"] = tDuelGhostdomCity_Match_Text[18720]["Option7"]
tNpcGossip[18720]["Option8"] = tDuelGhostdomCity_Match_Text[18720]["Option8"]
tNpcGossip[18720]["Option9"] = tDuelGhostdomCity_Match_Text[18720]["Option9"]
tNpcGossip[18720]["Option10"] = tDuelGhostdomCity_Match_Text[18720]["Option10"]
tNpcGossip[18720]["tOption1-5"] = {7,8,9,10} 

--我想要彩凤装。
tNpcGossip[18720]["OptionFunc7"]="DuelGhostdomCity_Match_Clothes</N>18720</N>137020"
--我想要飞燕服。
tNpcGossip[18720]["OptionFunc8"]="DuelGhostdomCity_Match_Clothes</N>18720</N>137030"
--我想要仙羽裳。
tNpcGossip[18720]["OptionFunc9"]="DuelGhostdomCity_Match_Clothes</N>18720</N>137040"


--我想要彩凤装。
tNpcGossip[18720]["Text1-6"] = {122}
tNpcGossip[18720]["Text122"] = tDuelGhostdomCity_Match_Text[18720]["Text122"]
tNpcGossip[18720]["Option11"] = tDuelGhostdomCity_Match_Text[18720]["Option11"]
tNpcGossip[18720]["tOption1-6"] = {11} 

--我想要飞燕服。
tNpcGossip[18720]["Text1-7"] = {123}
tNpcGossip[18720]["Text123"] = tDuelGhostdomCity_Match_Text[18720]["Text123"]
tNpcGossip[18720]["Option12"] = tDuelGhostdomCity_Match_Text[18720]["Option12"]
tNpcGossip[18720]["tOption1-7"] = {11} 

--我想要飞燕服。
tNpcGossip[18720]["Text1-8"] = {124}
tNpcGossip[18720]["Text124"] = tDuelGhostdomCity_Match_Text[18720]["Text124"]
tNpcGossip[18720]["Option13"] = tDuelGhostdomCity_Match_Text[18720]["Option13"]
tNpcGossip[18720]["tOption1-8"] = {13} 



--失败，没有七星宝剑
tNpcGossip[18720]["Text1-9"] = {125}
tNpcGossip[18720]["Text125"] = tDuelGhostdomCity_Match_Text[18720]["Text125"]
tNpcGossip[18720]["Option14"] = tDuelGhostdomCity_Match_Text[18720]["Option14"]
tNpcGossip[18720]["tOption1-9"] = {14} 

--失败，非活动时间
tNpcGossip[18720]["Text1-10"] = {126}
tNpcGossip[18720]["Text126"] = tDuelGhostdomCity_Match_Text[18716]["Text115"]
tNpcGossip[18720]["Option15"] = tDuelGhostdomCity_Match_Text[18716]["Option5"]
tNpcGossip[18720]["tOption1-10"] = {15} 
tNpcGossip[18720]["OptionFunc15"]="DuelGhostdomCity_Match_BackCity</N>18720"

tNpcGossip[18725] = tNpcGossip[18720] 
tNpcGossip[18730] = tNpcGossip[18720] 


--NPC -- 冥王宝库
tNpcGossip[18731] = tNpcGossip[18731] or DefaultNpc:new{}
tNpcGossip[18731]["OptionHidden"] = 1
tNpcGossip[18731]["Text1-1"] = {111,112,113}
tNpcGossip[18731]["Text111"] = tDuelGhostdomCity_Match_Text[18731]["Text126"]
tNpcGossip[18731]["Text112"] = tDuelGhostdomCity_Match_Text[18731]["Text127"]
tNpcGossip[18731]["Text113"] = tDuelGhostdomCity_Match_Text[18731]["Text128"]

tNpcGossip[18731]["Option1"] = tDuelGhostdomCity_Match_Text[18731]["Option1"]
tNpcGossip[18731]["Option2"] = tDuelGhostdomCity_Match_Text[18731]["Option2"]
tNpcGossip[18731]["Option3"] = tDuelGhostdomCity_Match_Text[18731]["Option3"]

tNpcGossip[18731]["tOption1-1"] = {1,2,3} 
--开启宝库（已开启%s次）
tNpcGossip[18731]["OptionFunc1"]="DuelGhostdomCity_Match_OpenTreasury"
--查看奖励
tNpcGossip[18731]["OptionFunc2"]="LinkNpcGossipFunc_New</N>18731</S>1-12"

tNpcGossip[18731]["ChkFunc1-1"] = function ()
	local nNpcId = Get_NpcId()
	
	--获取开启宝箱次数
	local nEvent =tDuelGhostdomCity_Match_Stc["EventType"]
	local nType =tDuelGhostdomCity_Match_Stc["DataType"][10]

	if nNpcId >= 18731 and nNpcId <= 18733 then
		nEvent = tDuelGhostdomCity_Match_Stc["EventType"]
		nType = tDuelGhostdomCity_Match_Stc["DataType"][10]
	elseif nNpcId >= 19245 and nNpcId <= 19247 then
		nEvent = tDuelGhostdomCity_Match_Stc["EventType_2"]
		nType = tDuelGhostdomCity_Match_Stc["DataType"][12]
	elseif nNpcId >= 19248 and nNpcId <= 19250 then
		nEvent = tDuelGhostdomCity_Match_Stc["EventType_2"]
		nType = tDuelGhostdomCity_Match_Stc["DataType"][13]
	end
	
	local nCount = Get_UserStatisticValue(nEvent,nType)
	tNpcGossip[18731]["Option1"] = string.format(tDuelGhostdomCity_Match_Text[18731]["Option1"],nCount)
	
	tNpcGossip[18731]["OptionFunc1"]="DuelGhostdomCity_Match_OpenTreasury"
	return true
end

--成功，扣除1把钥匙，获得奖励
tNpcGossip[18731]["Text1-2"] = {114}
tNpcGossip[18731]["Text114"] = tDuelGhostdomCity_Match_Text[18731]["Text129"]
tNpcGossip[18731]["Option4"] = tDuelGhostdomCity_Match_Text[18731]["Option4"]

tNpcGossip[18731]["tOption1-2"] = {4} 
tNpcGossip[18731]["OptionFunc4"]="LinkNpcGossipFunc_New</N>18731</S>1-1"

--第五次开启，获得奖励
tNpcGossip[18731]["Text1-3"] = {115}
tNpcGossip[18731]["Text115"] = tDuelGhostdomCity_Match_Text[18731]["Text130"]
tNpcGossip[18731]["Option5"] = tDuelGhostdomCity_Match_Text[18731]["Option5"]

tNpcGossip[18731]["tOption1-3"] = {5} 

--失败，已开启五次

tNpcGossip[18731]["Text1-4"] = {116}
tNpcGossip[18731]["Text116"] = tDuelGhostdomCity_Match_Text[18731]["Text131"]
tNpcGossip[18731]["Option6"] = tDuelGhostdomCity_Match_Text[18731]["Option6"]

tNpcGossip[18731]["tOption1-4"] = {6} 

--失败，背包空间不足
tNpcGossip[18731]["Text1-5"] = {117}
tNpcGossip[18731]["Text117"] = tDuelGhostdomCity_Match_Text[18731]["Text132"]
tNpcGossip[18731]["Option7"] = tDuelGhostdomCity_Match_Text[18731]["Option7"]

tNpcGossip[18731]["tOption1-5"] = {7} 

--失败钥匙不足
tNpcGossip[18731]["Text1-6"] = {118}
tNpcGossip[18731]["Text118"] = tDuelGhostdomCity_Match_Text[18731]["Text133"]
tNpcGossip[18731]["Option8"] = tDuelGhostdomCity_Match_Text[18731]["Option8"]
tNpcGossip[18731]["Option9"] = tDuelGhostdomCity_Match_Text[18731]["Option9"]

tNpcGossip[18731]["tOption1-6"] = {8,9} 
--借用天石开宝库
tNpcGossip[18731]["OptionFunc8"]="DuelGhostdomCity_Match_MissKey"

--失败 天石不足
tNpcGossip[18731]["Text1-7"] = {119}
tNpcGossip[18731]["Text119"] = tDuelGhostdomCity_Match_Text[18731]["Text134"]
tNpcGossip[18731]["Option10"] = tDuelGhostdomCity_Match_Text[18731]["Option10"]

tNpcGossip[18731]["tOption1-7"] = {10} 

--话费天石，二次确认

tNpcGossip[18731]["Text1-8"] = {120}
tNpcGossip[18731]["Text120"] = tDuelGhostdomCity_Match_Text[18731]["Text135"]
tNpcGossip[18731]["Option11"] = tDuelGhostdomCity_Match_Text[18731]["Option11"]
tNpcGossip[18731]["Option12"] = tDuelGhostdomCity_Match_Text[18731]["Option12"]

tNpcGossip[18731]["tOption1-8"] = {11,12} 
--确定
tNpcGossip[18731]["OptionFunc11"]="DuelGhostdomCity_Match_TsOpen"


--成功，获得奖励

tNpcGossip[18731]["Text1-9"] = {120}
tNpcGossip[18731]["Text120"] = tDuelGhostdomCity_Match_Text[18731]["Text136"]
tNpcGossip[18731]["Option13"] = tDuelGhostdomCity_Match_Text[18731]["Option13"]

tNpcGossip[18731]["tOption1-9"] = {13} 
--幸甚至哉。
tNpcGossip[18731]["OptionFunc13"]="LinkNpcGossipFunc_New</N>18731</S>1-1"


--查看奖励
tNpcGossip[18731]["Text1-10"] = {121,122}
tNpcGossip[18731]["Text121"] = tDuelGhostdomCity_Match_Text[18731]["Text137"]
tNpcGossip[18731]["Text122"] = tDuelGhostdomCity_Match_Text[18731]["Text138"]
tNpcGossip[18731]["Option14"] = tDuelGhostdomCity_Match_Text[18731]["Option14"]
tNpcGossip[18731]["Option15"] = tDuelGhostdomCity_Match_Text[18731]["Option15"]
tNpcGossip[18731]["Option20"] = tDuelGhostdomCity_Match_Text[18731]["Option18"]
tNpcGossip[18731]["Option21"] = tDuelGhostdomCity_Match_Text[18731]["Option19"]

tNpcGossip[18731]["tOption1-10"] = {14,15,20,21} 
--前4次开启随机奖励。
tNpcGossip[18731]["OptionFunc14"]="LinkNpcGossipFunc_New</N>18731</S>1-11"
--第5次开启终极大奖。
tNpcGossip[18731]["OptionFunc15"]="LinkNpcGossipFunc_New</N>18731</S>1-12"
--上一页
tNpcGossip[18731]["OptionFunc20"]="LinkNpcGossipFunc_New</N>18731</S>1-1"



--前4次开启随机奖励。
tNpcGossip[18731]["Text1-11"] = {1401,123,124,125,1402}
tNpcGossip[18731]["Text1401"] = tDuelGhostdomCity_Match_Text[18731]["Text1401"]
tNpcGossip[18731]["Text123"] = tDuelGhostdomCity_Match_Text[18731]["Text139"]
tNpcGossip[18731]["Text124"] = tDuelGhostdomCity_Match_Text[18731]["Text140"]
tNpcGossip[18731]["Text125"] = tDuelGhostdomCity_Match_Text[18731]["Text141"]
tNpcGossip[18731]["Text1402"] = tDuelGhostdomCity_Match_Text[18731]["Text1402"]
tNpcGossip[18731]["Option16"] = tDuelGhostdomCity_Match_Text[18731]["Option16"]
tNpcGossip[18731]["Option17"] = tDuelGhostdomCity_Match_Text[18731]["Option17"]
tNpcGossip[18731]["tOption1-11"] = {16,17} 
--上一页。
tNpcGossip[18731]["OptionFunc16"]="LinkNpcGossipFunc_New</N>18731</S>1-10"


--查看终极大奖。
tNpcGossip[18731]["Text1-12"] = {1501,126,127,128,1502}
tNpcGossip[18731]["Text1501"] = tDuelGhostdomCity_Match_Text[18731]["Text1501"]
tNpcGossip[18731]["Text126"] = tDuelGhostdomCity_Match_Text[18731]["Text142"]
tNpcGossip[18731]["Text127"] = tDuelGhostdomCity_Match_Text[18731]["Text143"]
tNpcGossip[18731]["Text128"] = tDuelGhostdomCity_Match_Text[18731]["Text144"]
tNpcGossip[18731]["Text1502"] = tDuelGhostdomCity_Match_Text[18731]["Text1502"]
tNpcGossip[18731]["Option18"] = tDuelGhostdomCity_Match_Text[18731]["Option18"]
tNpcGossip[18731]["Option19"] = tDuelGhostdomCity_Match_Text[18731]["Option19"]
tNpcGossip[18731]["tOption1-12"] = {18,19} 
--上一页。
tNpcGossip[18731]["OptionFunc18"]="LinkNpcGossipFunc_New</N>18731</S>1-1"
tNpcGossip[18732] = tNpcGossip[18731]
tNpcGossip[18733] = tNpcGossip[18731]

-- 新增宝库
tNpcGossip[19245] = tNpcGossip[18731]
tNpcGossip[19246] = tNpcGossip[18731]
tNpcGossip[19247] = tNpcGossip[18731]
tNpcGossip[19248] = tNpcGossip[18731]
tNpcGossip[19249] = tNpcGossip[18731]
tNpcGossip[19250] = tNpcGossip[18731]

--旋风药水
tItem[3006986] = tItem[3006986] or {}
tItem[3006986]["Function"] = function(nItemId,sItemName)
	DuelGhostdomCity_Match_XfUseItemBox(nItemId)
end

--体力药水
tItem[3006987] = tItem[3006987] or {}
tItem[3006987]["Function"] = function(nItemId,sItemName)
	DuelGhostdomCity_Match_TlUseItemBox(nItemId)
end

--冥王令碎片
tItem[3006983] = tItem[3006983] or {}
tItem[3006983]["Function"] = function(nItemId,sItemName)
	DuelGhostdomCity_Match_SpUseItemBox(nItemId)
end
--冥王令使用

tItem[3006984] = tItem[3006984] or {}
tItem[3006984]["Function"] = function(nItemId,sItemName)
	DuelGhostdomCity_Match_MwlUseItemBox(nItemId)
end

--心花怒放礼包

tItem[3006985] = tItem[3006985] or {}
tItem[3006985]["Function"] = function(nItemId,sItemName)
	DuelGhostdomCity_Match_XhfUseItemBox(nItemId)
end

 
--怪物配置
-- //邪鬼卒(简单)
tMonster[7804] = tMonster[7804] or {}
tMonster[7804]["tFunction"] = tMonster[7804]["tFunction"] or {}
table.insert(tMonster[7804]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //冥鬼卒(简单)
tMonster[7805] = tMonster[7805] or {}
tMonster[7805]["tFunction"] = tMonster[7805]["tFunction"] or {}
table.insert(tMonster[7805]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //邪鬼枪卒(简单)
tMonster[7806] = tMonster[7806] or {}
tMonster[7806]["tFunction"] = tMonster[7806]["tFunction"] or {}
table.insert(tMonster[7806]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //冥鬼枪卒(简单)
tMonster[7807] = tMonster[7807] or {}
tMonster[7807]["tFunction"] = tMonster[7807]["tFunction"] or {}
table.insert(tMonster[7807]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //冥卒统领(简单)
tMonster[7808] = tMonster[7808] or {}
tMonster[7808]["tFunction"] = tMonster[7808]["tFunction"] or {}
table.insert(tMonster[7808]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //恶鬼妇(简单)
tMonster[7809] = tMonster[7809] or {}
tMonster[7809]["tFunction"] = tMonster[7809]["tFunction"] or {}
table.insert(tMonster[7809]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //幽冥犬(简单)
tMonster[7810] = tMonster[7810] or {}
tMonster[7810]["tFunction"] = tMonster[7810]["tFunction"] or {}
table.insert(tMonster[7810]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //巨冥魔(简单)
tMonster[7811] = tMonster[7811] or {}
tMonster[7811]["tFunction"] = tMonster[7811]["tFunction"] or {}
table.insert(tMonster[7811]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //冥蛇卫(简单)
tMonster[7812] = tMonster[7812] or {}
tMonster[7812]["tFunction"] = tMonster[7812]["tFunction"] or {}
table.insert(tMonster[7812]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //九冥护法(简单)
tMonster[7813] = tMonster[7813] or {}
tMonster[7813]["tFunction"] = tMonster[7813]["tFunction"] or {}
table.insert(tMonster[7813]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //护阵妖姬(简单)
tMonster[7814] = tMonster[7814] or {}
tMonster[7814]["tFunction"] = tMonster[7814]["tFunction"] or {}
table.insert(tMonster[7814]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //六天冥王(简单)
tMonster[7815] = tMonster[7815] or {}
tMonster[7815]["tFunction"] = tMonster[7815]["tFunction"] or {}
table.insert(tMonster[7815]["tFunction"],DuelGhostdomCity_Match_KillMonster)




-- //邪鬼卒(普通)
tMonster[7816] = tMonster[7816] or {}
tMonster[7816]["tFunction"] = tMonster[7816]["tFunction"] or {}
table.insert(tMonster[7816]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //冥鬼卒(普通)
tMonster[7817] = tMonster[7817] or {}
tMonster[7817]["tFunction"] = tMonster[7817]["tFunction"] or {}
table.insert(tMonster[7817]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //邪鬼枪卒(普通)
tMonster[7818] = tMonster[7818] or {}
tMonster[7818]["tFunction"] = tMonster[7818]["tFunction"] or {}
table.insert(tMonster[7818]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //冥鬼枪卒(普通)
tMonster[7819] = tMonster[7819] or {}
tMonster[7819]["tFunction"] = tMonster[7819]["tFunction"] or {}
table.insert(tMonster[7819]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //冥卒统领(普通)
tMonster[7820] = tMonster[7820] or {}
tMonster[7820]["tFunction"] = tMonster[7820]["tFunction"] or {}
table.insert(tMonster[7820]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //恶鬼妇(普通)
tMonster[7821] = tMonster[7821] or {}
tMonster[7821]["tFunction"] = tMonster[7821]["tFunction"] or {}
table.insert(tMonster[7821]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //幽冥犬(普通)
tMonster[7822] = tMonster[7822] or {}
tMonster[7822]["tFunction"] = tMonster[7822]["tFunction"] or {}
table.insert(tMonster[7822]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //巨冥魔(普通)
tMonster[7823] = tMonster[7823] or {}
tMonster[7823]["tFunction"] = tMonster[7823]["tFunction"] or {}
table.insert(tMonster[7823]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //冥蛇卫(普通)
tMonster[7824] = tMonster[7824] or {}
tMonster[7824]["tFunction"] = tMonster[7824]["tFunction"] or {}
table.insert(tMonster[7824]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //九冥护法(普通)
tMonster[7825] = tMonster[7825] or {}
tMonster[7825]["tFunction"] = tMonster[7825]["tFunction"] or {}
table.insert(tMonster[7825]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //护阵妖姬(普通)
tMonster[7826] = tMonster[7826] or {}
tMonster[7826]["tFunction"] = tMonster[7826]["tFunction"] or {}
table.insert(tMonster[7826]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //六天冥王(普通)
tMonster[7827] = tMonster[7827] or {}
tMonster[7827]["tFunction"] = tMonster[7827]["tFunction"] or {}
table.insert(tMonster[7827]["tFunction"],DuelGhostdomCity_Match_KillMonster)




-- //邪鬼卒(精英)
tMonster[7828] = tMonster[7828] or {}
tMonster[7828]["tFunction"] = tMonster[7828]["tFunction"] or {}
table.insert(tMonster[7828]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //冥鬼卒(精英)
tMonster[7829] = tMonster[7829] or {}
tMonster[7829]["tFunction"] = tMonster[7829]["tFunction"] or {}
table.insert(tMonster[7829]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //邪鬼枪卒(精英)
tMonster[7830] = tMonster[7830] or {}
tMonster[7830]["tFunction"] = tMonster[7830]["tFunction"] or {}
table.insert(tMonster[7830]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //冥鬼枪卒(精英)
tMonster[7831] = tMonster[7831] or {}
tMonster[7831]["tFunction"] = tMonster[7831]["tFunction"] or {}
table.insert(tMonster[7831]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //冥卒统领(精英)
tMonster[7832] = tMonster[7832] or {}
tMonster[7832]["tFunction"] = tMonster[7832]["tFunction"] or {}
table.insert(tMonster[7832]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //恶鬼妇(精英)
tMonster[7833] = tMonster[7833] or {}
tMonster[7833]["tFunction"] = tMonster[7833]["tFunction"] or {}
table.insert(tMonster[7833]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //幽冥犬(精英)
tMonster[7834] = tMonster[7834] or {}
tMonster[7834]["tFunction"] = tMonster[7834]["tFunction"] or {}
table.insert(tMonster[7834]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //巨冥魔(精英)
tMonster[7835] = tMonster[7835] or {}
tMonster[7835]["tFunction"] = tMonster[7835]["tFunction"] or {}
table.insert(tMonster[7835]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //冥蛇卫(精英)
tMonster[7836] = tMonster[7836] or {}
tMonster[7836]["tFunction"] = tMonster[7836]["tFunction"] or {}
table.insert(tMonster[7836]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //九冥护法(精英)
tMonster[7837] = tMonster[7837] or {}
tMonster[7837]["tFunction"] = tMonster[7837]["tFunction"] or {}
table.insert(tMonster[7837]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //护阵妖姬(精英)
tMonster[7838] = tMonster[7838] or {}
tMonster[7838]["tFunction"] = tMonster[7838]["tFunction"] or {}
table.insert(tMonster[7838]["tFunction"],DuelGhostdomCity_Match_KillMonster)

-- //六天冥王(精英)
tMonster[7839] = tMonster[7839] or {}
tMonster[7839]["tFunction"] = tMonster[7839]["tFunction"] or {}
table.insert(tMonster[7839]["tFunction"],DuelGhostdomCity_Match_KillMonster)

tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
table.insert(tOntimerMin_HM[0000],DuelGhostdomCity_Match_ClearAllRank)
tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
table.insert(tOntimerMin_HM[0001],DuelGhostdomCity_Match_ClearAllRank)
tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
table.insert(tOntimerMin_HM[0002],DuelGhostdomCity_Match_ClearAllRank)