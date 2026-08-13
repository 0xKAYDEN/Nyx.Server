---Name:160704[简体征服][活动脚本]怪物攻城活动制作
--Creator: 	陈莺
--Created:	2016-07-04
--------------------------------------------------------------------------------
--npc 
-- 19371,'飞将军李光'

---logid 12000453

--物品
-- 3200717,'义勇奋战赤炼包'
-- 3200718,'除魔卫道赤炼包'
-- 3200719,'正气浩然星陨包'
-- 3200720,'驱邪扶正星陨包'
-- 3200721,'守城急诏'


--掩码说明  14704 - 14708
--147,04  =1 记录是否参加战斗 =2 已领参与奖 
--147,05  场次 1,2,3
--147,06  背包信
--147,07 
--147,08 
---动态存储表
-- 51279	记录第一名玩家数据	data1	玩家伤害值	data2	记录玩家ID	datastr1	玩家名字	datastr2	表示是否领奖（1	领取	0	未领）
-- 51280	记录第二名玩家数据	data1	玩家伤害值	data2	记录玩家ID	datastr1	玩家名字	datastr2	表示是否领奖（1	领取	0	未领）
-- 51281	记录第三名玩家数据	data1	玩家伤害值	data2	记录玩家ID	datastr1	玩家名字	datastr2	表示是否领奖（1	领取	0	未领）
-- 51282	记录第四名玩家数据	data1	玩家伤害值	data2	记录玩家ID	datastr1	玩家名字	datastr2	表示是否领奖（1	领取	0	未领）
-- 51283	记录第五名玩家数据	data1	玩家伤害值	data2	记录玩家ID	datastr1	玩家名字	datastr2	表示是否领奖（1	领取	0	未领）
-- 51284	记录第六名玩家数据	data1	玩家伤害值	data2	记录玩家ID	datastr1	玩家名字	datastr2	表示是否领奖（1	领取	0	未领）
-- 51285	记录第七名玩家数据	data1	玩家伤害值	data2	记录玩家ID	datastr1	玩家名字	datastr2	表示是否领奖（1	领取	0	未领）
-- 51286	记录第八名玩家数据	data1	玩家伤害值	data2	记录玩家ID	datastr1	玩家名字	datastr2	表示是否领奖（1	领取	0	未领）
-- 51287	记录第九名玩家数据	data1	玩家伤害值	data2	记录玩家ID	datastr1	玩家名字	datastr2	表示是否领奖（1	领取	0	未领）
-- 51288	记录第十名玩家数据	data1	玩家伤害值	data2	记录玩家ID	datastr1	玩家名字	datastr2	表示是否领奖（1	领取	0	未领）
	--data5	记录刷怪波数 (=16	表示刷出世界boss（"1"表示刷出)	datastr5	标记是否清零
	-- data4	记录boss被杀死
-- 51352 data1	记录赤炼石+8整个活动期间一个 	data2	璀璨星陨石整个活动期间一个
-- 51354 data1	=1表示旧服	=2表示新服
--命名规范
--MonsterSiege_
------------------------------------------------------------------------------------------
local tMonsterSiege_Data = {}
	-- tMonsterSiege_Data["Bef_Time"]= "2015-05-18 00:00 2016-07-31 23:59"
	-- tMonsterSiege_Data["Now_Time"] = "2016-08-01 00:00 2016-08-15 23:59"
	-- tMonsterSiege_Data["Aft_Time"] = "2016-08-16 22:30 2016-08-16 23:59"
	-- tMonsterSiege_Data["Last_Time"] = "2016-08-15 22:00 2016-08-15 22:29"  --活动最后一波
	
	tMonsterSiege_Data["Bef_Time"]= "2015-05-18 00:00 2016-11-30 23:59"
	tMonsterSiege_Data["Now_Time"] = "2016-12-01 00:00 2016-12-07 23:59"
	tMonsterSiege_Data["Aft_Time"] = "2016-12-07 22:30 2016-12-08 23:59"  --最后一场排行榜保留一天
	tMonsterSiege_Data["Last_Time"] = "2016-12-07 22:00 2016-12-07 22:29"  --活动最后一波
	
	--战斗时间内
	tMonsterSiege_Data["Now_Time1"] = "12:30 12:45"
	tMonsterSiege_Data["Now_Time2"] = "19:30 19:45"
	tMonsterSiege_Data["Now_Time3"] = "22:00 22:15"
	--非战斗时间内
	tMonsterSiege_Data["Now_Time11"] = "00:00 12:29"
	tMonsterSiege_Data["Now_Time12"] = "12:46 19:29"
	tMonsterSiege_Data["Now_Time13"] = "19:46 21:59"
	tMonsterSiege_Data["Now_Time14"] = "22:16 23:59"
---清掩码、动态码时间
	tMonsterSiege_Data["Now_Time21"] = "00:01 00:03"
	tMonsterSiege_Data["Now_Time22"] = "19:27 19:29"
	tMonsterSiege_Data["Now_Time23"] = "21:57 21:59"
	-- tMonsterSiege_Data["Now_Time24"] = "23:57 23:59"

	--场次判断时间
	tMonsterSiege_Data["Now_Time31"] = "12:30 19:26"
	tMonsterSiege_Data["Now_Time32"] = "19:30 21:56"
	tMonsterSiege_Data["Now_Time33"] = "22:00 23:59"

	tMonsterSiege_Data["Level"] = 100 
	tMonsterSiege_Data["Metempsychosis"] = 0
	tMonsterSiege_Data["Effect"] = "angelwing"
	tMonsterSiege_Data["MapId"] = 1002
	tMonsterSiege_Data["Posx"] = 307
	tMonsterSiege_Data["Posy"] = 392

	tMonsterSiege_Data["BossEffect"] = "zf2-e280"  ---世界BOSS刷新
	tMonsterSiege_Data[3937] = "accession6"  -- 普通头目刷新
	tMonsterSiege_Data[3938] = "accession6"  -- 小头目刷新
	tMonsterSiege_Data[3939] = "recovery"  -- 精英头目刷新
	-- tMonsterSiege_Data["GenId"] = 19181
	tMonsterSiege_Data["Times"] = 15
	
	tMonsterSiege_Data["Emoneylog"] = {}
	tMonsterSiege_Data["Emoneylog"][1] = "350	20405	0	0	1	"  --boss
	tMonsterSiege_Data["Emoneylog"][2] = "350	20406	0	0	1	"  --参与奖

	tMonsterSiege_Data["GenId"] = {}
	tMonsterSiege_Data["GenId"][3938] = {19181,20141,20143,20144,20145}
	tMonsterSiege_Data["GenId"][3939] = {20146,20147}
	tMonsterSiege_Data["GenId"][3940] = {20142}
	
	tMonsterSiege_Data["Invite_Pos"] ={}
	tMonsterSiege_Data["Invite_Pos"][1] = {}
	tMonsterSiege_Data["Invite_Pos"][1]["X"] = 311--311
	tMonsterSiege_Data["Invite_Pos"][1]["Y"] = 395--351
	
	tMonsterSiege_Data["Invite_Pos"][2] = {}
	tMonsterSiege_Data["Invite_Pos"][2]["X"] = 312--312
	tMonsterSiege_Data["Invite_Pos"][2]["Y"] = 396--350
	
	tMonsterSiege_Data["Invite_Pos"][3] = {}
	tMonsterSiege_Data["Invite_Pos"][3]["X"] = 312--312
	tMonsterSiege_Data["Invite_Pos"][3]["Y"] = 389--348
	
	tMonsterSiege_Data["Invite_Pos"][4] = {}
	tMonsterSiege_Data["Invite_Pos"][4]["X"] = 313--313
	tMonsterSiege_Data["Invite_Pos"][4]["Y"] = 391--346
	
	tMonsterSiege_Data["Invite_Pos"][5] = {}
	tMonsterSiege_Data["Invite_Pos"][5]["X"] = 314--314
	tMonsterSiege_Data["Invite_Pos"][5]["Y"] = 390--349
	
	tMonsterSiege_Data["Invite_Pos"][6] = {}
	tMonsterSiege_Data["Invite_Pos"][6]["X"] = 313--313
	tMonsterSiege_Data["Invite_Pos"][6]["Y"] = 395--351
	
	tMonsterSiege_Data["Invite_Pos"][7] = {}
	tMonsterSiege_Data["Invite_Pos"][7]["X"] = 311--311
	tMonsterSiege_Data["Invite_Pos"][7]["Y"] = 398--342
	
	tMonsterSiege_Data["Invite_Pos"][8] = {}
	tMonsterSiege_Data["Invite_Pos"][8]["X"] = 314--314
	tMonsterSiege_Data["Invite_Pos"][8]["Y"] = 393--344

	
local tMonsterSiege_Stc = {}
	tMonsterSiege_Stc[1] = {}
	tMonsterSiege_Stc[1]["EventType"] = 147
	tMonsterSiege_Stc[1]["DataType"] = 04

	tMonsterSiege_Stc[2] = {}
	tMonsterSiege_Stc[2]["EventType"] = 147
	tMonsterSiege_Stc[2]["DataType"] = 05

local tMonsterSiege_GlobId = {}
	tMonsterSiege_GlobId[1] = 51279
	tMonsterSiege_GlobId[2] = 51280
	tMonsterSiege_GlobId[3] = 51281
	tMonsterSiege_GlobId[4] = 51282
	tMonsterSiege_GlobId[5] = 51283
	tMonsterSiege_GlobId[6] = 51284
	tMonsterSiege_GlobId[7] = 51285
	tMonsterSiege_GlobId[8] = 51286
	tMonsterSiege_GlobId[9] = 51287
	tMonsterSiege_GlobId[10] = 51288
	tMonsterSiege_GlobId["Limit"] = 51352
	tMonsterSiege_GlobId["NewServeyLimit"] = 51354


------------------------------------------物品数据------------------------------------------------
local tMonsterSiege_StrengthValue = {}
	tMonsterSiege_StrengthValue[3200717] = {}
	tMonsterSiege_StrengthValue[3200717]["RewardStrengthValue"] = {}
	tMonsterSiege_StrengthValue[3200717]["RewardStrengthValue"]["Value"] = 30
	tMonsterSiege_StrengthValue[3200717]["Log"] = "0,0,3200717,1,12000453,1[5],12,30"
	
	tMonsterSiege_StrengthValue[3200718] = {}
	tMonsterSiege_StrengthValue[3200718]["RewardStrengthValue"] = {}
	tMonsterSiege_StrengthValue[3200718]["RewardStrengthValue"]["Value"] = 150
	tMonsterSiege_StrengthValue[3200718]["Log"] = "0,0,3200718,1,12000453,1[6],12,150"

	tMonsterSiege_StrengthValue[3200719] = {}
	tMonsterSiege_StrengthValue[3200719]["RewardStrengthValue"] = {}
	tMonsterSiege_StrengthValue[3200719]["RewardStrengthValue"]["Value"] = 30
	tMonsterSiege_StrengthValue[3200719]["Log"] = "0,0,3200719,1,12000453,1[3],12,30"

	tMonsterSiege_StrengthValue[3200720] = {}
	tMonsterSiege_StrengthValue[3200720]["RewardStrengthValue"] = {}
	tMonsterSiege_StrengthValue[3200720]["RewardStrengthValue"]["Value"] = 150
	tMonsterSiege_StrengthValue[3200720]["Log"] = "0,0,3200720,1,12000453,1[4],12,150"


local tMonsterSiege_Item = {}
	tMonsterSiege_Item[3200717] = {} --义勇奋战赤炼包
	tMonsterSiege_Item[3200717][1] = {}
	tMonsterSiege_Item[3200717][1]["Zeng"] = 1
	tMonsterSiege_Item[3200717][1]["ItemChanceSum"] = 10000
	tMonsterSiege_Item[3200717][1]["Space"] = 1
	
	tMonsterSiege_Item[3200717][1][1] = {}
	tMonsterSiege_Item[3200717][1][1]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200717][1][1]["ItemChance"] = 8000
	tMonsterSiege_Item[3200717][1][1]["RewardItem"] = {}
	tMonsterSiege_Item[3200717][1][1]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200717][1][1]["RewardItem"][1]["Id"] = 730001
	tMonsterSiege_Item[3200717][1][1]["RewardItem"][1]["Attr"] = "0 1 3 2880 1"
	tMonsterSiege_Item[3200717][1][1]["RewardItem"][1]["Num"] = 1
	tMonsterSiege_Item[3200717][1][1]["Log"] = "0,0,3200717,1,12000453,1[5],730001,1"
	tMonsterSiege_Item[3200717][1][1]["RewardNoNeedTip"] = 1
	
	tMonsterSiege_Item[3200717][1][2] = {}
	tMonsterSiege_Item[3200717][1][2]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200717][1][2]["ItemChance"] = 1600
	tMonsterSiege_Item[3200717][1][2]["RewardItem"] = {}
	tMonsterSiege_Item[3200717][1][2]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200717][1][2]["RewardItem"][1]["Id"] = 730002
	tMonsterSiege_Item[3200717][1][2]["RewardItem"][1]["Attr"] = "0 1 3 2880 1"
	tMonsterSiege_Item[3200717][1][2]["RewardItem"][1]["Num"] = 1
	tMonsterSiege_Item[3200717][1][2]["Log"] = "0,0,3200717,1,12000453,1[5],730002,1"
	tMonsterSiege_Item[3200717][1][2]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item[3200717][1][3] = {}
	tMonsterSiege_Item[3200717][1][3]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200717][1][3]["ItemChance"] = 300
	tMonsterSiege_Item[3200717][1][3]["RewardItem"] = {}
	tMonsterSiege_Item[3200717][1][3]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200717][1][3]["RewardItem"][1]["Id"] = 730003
	tMonsterSiege_Item[3200717][1][3]["RewardItem"][1]["Attr"] = "0 1 3 2880 1"
	tMonsterSiege_Item[3200717][1][3]["RewardItem"][1]["Num"] = 1
	tMonsterSiege_Item[3200717][1][3]["Log"] = "0,0,3200717,1,12000453,1[5],730003,1"
	tMonsterSiege_Item[3200717][1][3]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item[3200717][1][4] = {}
	tMonsterSiege_Item[3200717][1][4]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200717][1][4]["ItemChance"] = 90
	tMonsterSiege_Item[3200717][1][4]["RewardItem"] = {}
	tMonsterSiege_Item[3200717][1][4]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200717][1][4]["RewardItem"][1]["Id"] = 730004
	tMonsterSiege_Item[3200717][1][4]["RewardItem"][1]["Attr"] = "0 1 3 2880 1"
	tMonsterSiege_Item[3200717][1][4]["RewardItem"][1]["Num"] = 1
	tMonsterSiege_Item[3200717][1][4]["Log"] = "0,0,3200717,1,12000453,1[5],730004,1"
	tMonsterSiege_Item[3200717][1][4]["RewardNoNeedTip"] = 1
	
	tMonsterSiege_Item[3200717][1][5] = {}
	tMonsterSiege_Item[3200717][1][5]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200717][1][5]["ItemChance"] = 9
	tMonsterSiege_Item[3200717][1][5]["RewardItem"] = {}
	tMonsterSiege_Item[3200717][1][5]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200717][1][5]["RewardItem"][1]["Id"] = 730005
	tMonsterSiege_Item[3200717][1][5]["RewardItem"][1]["Attr"] = "0 1 3 2880 1"
	tMonsterSiege_Item[3200717][1][5]["RewardItem"][1]["Num"] = 1
	tMonsterSiege_Item[3200717][1][5]["Log"] = "0,0,3200717,1,12000453,1[5],730005,1"
	tMonsterSiege_Item[3200717][1][5]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item[3200717][1][6] = {}
	tMonsterSiege_Item[3200717][1][6]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200717][1][6]["ItemChance"] = 1
	tMonsterSiege_Item[3200717][1][6]["RewardItem"] = {}
	tMonsterSiege_Item[3200717][1][6]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200717][1][6]["RewardItem"][1]["Id"] = 730006
	tMonsterSiege_Item[3200717][1][6]["RewardItem"][1]["Attr"] = "0 1 3 2880 1"
	tMonsterSiege_Item[3200717][1][6]["RewardItem"][1]["Num"] = 1
	tMonsterSiege_Item[3200717][1][6]["Log"] = "0,0,3200717,1,12000453,1[5],730006,1"
	tMonsterSiege_Item[3200717][1][6]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item[3200718] = {}  --除魔卫道赤炼包
	tMonsterSiege_Item[3200718][1] = {}
	tMonsterSiege_Item[3200718][1]["Zeng"] = 1
	tMonsterSiege_Item[3200718][1]["ItemChanceSum"] = 10000
	tMonsterSiege_Item[3200718][1]["Space"] = 1
	
	tMonsterSiege_Item[3200718][1][1] = {}
	tMonsterSiege_Item[3200718][1][1]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200718][1][1]["ItemChance"] = 7000
	tMonsterSiege_Item[3200718][1][1]["RewardItem"] = {}
	tMonsterSiege_Item[3200718][1][1]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200718][1][1]["RewardItem"][1]["Id"] = 730002
	tMonsterSiege_Item[3200718][1][1]["RewardItem"][1]["Attr"] = "0 1 3 2880 1"
	tMonsterSiege_Item[3200718][1][1]["RewardItem"][1]["Num"] = 1
	tMonsterSiege_Item[3200718][1][1]["Log"] = "0,0,3200718,1,12000453,1[6],730002,1"
	tMonsterSiege_Item[3200718][1][1]["RewardNoNeedTip"] = 1
	
	tMonsterSiege_Item[3200718][1][2] = {}
	tMonsterSiege_Item[3200718][1][2]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200718][1][2]["ItemChance"] = 2200
	tMonsterSiege_Item[3200718][1][2]["RewardItem"] = {}
	tMonsterSiege_Item[3200718][1][2]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200718][1][2]["RewardItem"][1]["Id"] = 730003
	tMonsterSiege_Item[3200718][1][2]["RewardItem"][1]["Attr"] = "0 1 3 2880 1"
	tMonsterSiege_Item[3200718][1][2]["RewardItem"][1]["Num"] = 1
	tMonsterSiege_Item[3200718][1][2]["Log"] = "0,0,3200718,1,12000453,1[6],730003,1"
	tMonsterSiege_Item[3200718][1][2]["RewardNoNeedTip"] = 1
	
	tMonsterSiege_Item[3200718][1][3] = {}
	tMonsterSiege_Item[3200718][1][3]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200718][1][3]["ItemChance"] = 600
	tMonsterSiege_Item[3200718][1][3]["RewardItem"] = {}
	tMonsterSiege_Item[3200718][1][3]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200718][1][3]["RewardItem"][1]["Id"] = 730004
	tMonsterSiege_Item[3200718][1][3]["RewardItem"][1]["Attr"] = "0 1 3 2880 1"
	tMonsterSiege_Item[3200718][1][3]["RewardItem"][1]["Num"] = 1
	tMonsterSiege_Item[3200718][1][3]["Log"] = "0,0,3200718,1,12000453,1[6],730004,1"
	tMonsterSiege_Item[3200718][1][3]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item[3200718][1][4] = {}
	tMonsterSiege_Item[3200718][1][4]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200718][1][4]["ItemChance"] = 180
	tMonsterSiege_Item[3200718][1][4]["RewardItem"] = {}
	tMonsterSiege_Item[3200718][1][4]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200718][1][4]["RewardItem"][1]["Id"] = 730005
	tMonsterSiege_Item[3200718][1][4]["RewardItem"][1]["Attr"] = "0 1 3 2880 1"
	tMonsterSiege_Item[3200718][1][4]["RewardItem"][1]["Num"] = 1
	tMonsterSiege_Item[3200718][1][4]["Log"] = "0,0,3200718,1,12000453,1[6],730005,1"
	tMonsterSiege_Item[3200718][1][4]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item[3200718][1][5] = {}
	tMonsterSiege_Item[3200718][1][5]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200718][1][5]["ItemChance"] = 19
	tMonsterSiege_Item[3200718][1][5]["RewardItem"] = {}
	tMonsterSiege_Item[3200718][1][5]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200718][1][5]["RewardItem"][1]["Id"] = 730006
	tMonsterSiege_Item[3200718][1][5]["RewardItem"][1]["Attr"] = "0 1 3 2880 1"
	tMonsterSiege_Item[3200718][1][5]["RewardItem"][1]["Num"] = 1
	tMonsterSiege_Item[3200718][1][5]["Log"] = "0,0,3200718,1,12000453,1[6],730006,1"
	tMonsterSiege_Item[3200718][1][5]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item[3200718][1][6] = {}
	tMonsterSiege_Item[3200718][1][6]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200718][1][6]["ItemChance"] = 1
	tMonsterSiege_Item[3200718][1][6]["RewardItem"] = {}
	tMonsterSiege_Item[3200718][1][6]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200718][1][6]["RewardItem"][1]["Id"] = 730008
	tMonsterSiege_Item[3200718][1][6]["RewardItem"][1]["Attr"] = "0 1 3 2880 1"
	tMonsterSiege_Item[3200718][1][6]["RewardItem"][1]["Num"] = 1
	tMonsterSiege_Item[3200718][1][6]["Log"] = "0,0,3200718,1,12000453,1[6],730008,1"
	tMonsterSiege_Item[3200718][1][6]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item[3200719] = {}  --正气浩然星陨包
	tMonsterSiege_Item[3200719][1] = {}
	tMonsterSiege_Item[3200719][1]["ItemChanceSum"] = 10000
	tMonsterSiege_Item[3200719][1]["Space"] = 3
	
	tMonsterSiege_Item[3200719][1][1] = {}
	tMonsterSiege_Item[3200719][1][1]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200719][1][1]["ItemChance"] = 7200
	tMonsterSiege_Item[3200719][1][1]["RewardItem"] = {}
	tMonsterSiege_Item[3200719][1][1]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200719][1][1]["RewardItem"][1]["Id"] = 3009000
	tMonsterSiege_Item[3200719][1][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tMonsterSiege_Item[3200719][1][1]["RewardItem"][1]["Num"] = 1
	tMonsterSiege_Item[3200719][1][1]["Log"] = "0,0,3200719,1,12000453,1[3],3009000,1"
	tMonsterSiege_Item[3200719][1][1]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item[3200719][1][2] = {}
	tMonsterSiege_Item[3200719][1][2]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200719][1][2]["ItemChance"] = 2500
	tMonsterSiege_Item[3200719][1][2]["RewardItem"] = {}
	tMonsterSiege_Item[3200719][1][2]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200719][1][2]["RewardItem"][1]["Id"] = 3009000
	tMonsterSiege_Item[3200719][1][2]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tMonsterSiege_Item[3200719][1][2]["RewardItem"][1]["Num"] = 3
	tMonsterSiege_Item[3200719][1][2]["Log"] = "0,0,3200719,1,12000453,1[3],3009000,3"
	tMonsterSiege_Item[3200719][1][2]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item[3200719][1][3] = {}
	tMonsterSiege_Item[3200719][1][3]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200719][1][3]["ItemChance"] = 250
	tMonsterSiege_Item[3200719][1][3]["RewardItem"] = {}
	tMonsterSiege_Item[3200719][1][3]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200719][1][3]["RewardItem"][1]["Id"] = 3009001
	tMonsterSiege_Item[3200719][1][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tMonsterSiege_Item[3200719][1][3]["RewardItem"][1]["Num"] = 1
	tMonsterSiege_Item[3200719][1][3]["Log"] = "0,0,3200719,1,12000453,1[3],3009001,1"
	tMonsterSiege_Item[3200719][1][3]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item[3200719][1][4] = {}
	tMonsterSiege_Item[3200719][1][4]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200719][1][4]["ItemChance"] = 48
	tMonsterSiege_Item[3200719][1][4]["RewardItem"] = {}
	tMonsterSiege_Item[3200719][1][4]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200719][1][4]["RewardItem"][1]["Id"] = 3009001
	tMonsterSiege_Item[3200719][1][4]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tMonsterSiege_Item[3200719][1][4]["RewardItem"][1]["Num"] = 3
	tMonsterSiege_Item[3200719][1][4]["Log"] = "0,0,3200719,1,12000453,1[3],3009001,3"
	tMonsterSiege_Item[3200719][1][4]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item[3200719][1][5] = {}
	tMonsterSiege_Item[3200719][1][5]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200719][1][5]["ItemChance"] = 2
	tMonsterSiege_Item[3200719][1][5]["RewardItem"] = {}
	tMonsterSiege_Item[3200719][1][5]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200719][1][5]["RewardItem"][1]["Id"] = 3009002
	tMonsterSiege_Item[3200719][1][5]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tMonsterSiege_Item[3200719][1][5]["RewardItem"][1]["Num"] = 1
	tMonsterSiege_Item[3200719][1][5]["Log"] = "0,0,3200719,1,12000453,1[3],3009002,1"
	tMonsterSiege_Item[3200719][1][5]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item[3200720] = {}  -- 驱邪扶正星陨包
	tMonsterSiege_Item[3200720][1] = {}
	tMonsterSiege_Item[3200720][1]["ItemChanceSum"] = 10000
	tMonsterSiege_Item[3200720][1]["Space"] = 3

	tMonsterSiege_Item[3200720][1][1] = {}
	tMonsterSiege_Item[3200720][1][1]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200720][1][1]["ItemChance"] = 6000
	tMonsterSiege_Item[3200720][1][1]["RewardItem"] = {}
	tMonsterSiege_Item[3200720][1][1]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200720][1][1]["RewardItem"][1]["Id"] = 3009000
	tMonsterSiege_Item[3200720][1][1]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tMonsterSiege_Item[3200720][1][1]["RewardItem"][1]["Num"] = 3
	tMonsterSiege_Item[3200720][1][1]["Log"] = "0,0,3200720,1,12000453,1[4],3009000,3"
	tMonsterSiege_Item[3200720][1][1]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item[3200720][1][2] = {}
	tMonsterSiege_Item[3200720][1][2]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200720][1][2]["ItemChance"] = 2700
	tMonsterSiege_Item[3200720][1][2]["RewardItem"] = {}
	tMonsterSiege_Item[3200720][1][2]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200720][1][2]["RewardItem"][1]["Id"] = 3009001
	tMonsterSiege_Item[3200720][1][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tMonsterSiege_Item[3200720][1][2]["RewardItem"][1]["Num"] = 1
	tMonsterSiege_Item[3200720][1][2]["Log"] = "0,0,3200720,1,12000453,1[4],3009001,1"
	tMonsterSiege_Item[3200720][1][2]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item[3200720][1][3] = {}
	tMonsterSiege_Item[3200720][1][3]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200720][1][3]["ItemChance"] = 1200
	tMonsterSiege_Item[3200720][1][3]["RewardItem"] = {}
	tMonsterSiege_Item[3200720][1][3]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200720][1][3]["RewardItem"][1]["Id"] = 3009001
	tMonsterSiege_Item[3200720][1][3]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tMonsterSiege_Item[3200720][1][3]["RewardItem"][1]["Num"] = 3
	tMonsterSiege_Item[3200720][1][3]["Log"] = "0,0,3200720,1,12000453,1[4],3009001,3"
	tMonsterSiege_Item[3200720][1][3]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item[3200720][1][4] = {}
	tMonsterSiege_Item[3200720][1][4]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200720][1][4]["ItemChance"] = 97
	tMonsterSiege_Item[3200720][1][4]["RewardItem"] = {}
	tMonsterSiege_Item[3200720][1][4]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200720][1][4]["RewardItem"][1]["Id"] = 3009002
	tMonsterSiege_Item[3200720][1][4]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tMonsterSiege_Item[3200720][1][4]["RewardItem"][1]["Num"] = 1
	tMonsterSiege_Item[3200720][1][4]["Log"] = "0,0,3200720,1,12000453,1[4],3009002,1"
	tMonsterSiege_Item[3200720][1][4]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item[3200720][1][5] = {}
	tMonsterSiege_Item[3200720][1][5]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200720][1][5]["ItemChance"] = 3
	tMonsterSiege_Item[3200720][1][5]["RewardItem"] = {}
	tMonsterSiege_Item[3200720][1][5]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200720][1][5]["RewardItem"][1]["Id"] = 3009003
	tMonsterSiege_Item[3200720][1][5]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tMonsterSiege_Item[3200720][1][5]["RewardItem"][1]["Num"] = 1
	tMonsterSiege_Item[3200720][1][5]["Log"] = "0,0,3200720,1,12000453,1[4],3009003,1"
	tMonsterSiege_Item[3200720][1][5]["RewardNoNeedTip"] = 1
	
--------------------限制满的情况下把赤炼石+8跟璀璨星陨石的概率给前一个
	tMonsterSiege_Item[3200718][2] = {}
	tMonsterSiege_Item[3200718][2]["Zeng"] = 1
	tMonsterSiege_Item[3200718][2]["ItemChanceSum"] = 10000

	tMonsterSiege_Item[3200718][2][1] = {}
	tMonsterSiege_Item[3200718][2][1]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200718][2][1]["ItemChance"] = 7000
	tMonsterSiege_Item[3200718][2][1]["RewardItem"] = {}
	tMonsterSiege_Item[3200718][2][1]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200718][2][1]["RewardItem"][1]["Id"] = 730002
	tMonsterSiege_Item[3200718][2][1]["RewardItem"][1]["Attr"] = "0 1 3 2880 1"
	tMonsterSiege_Item[3200718][2][1]["RewardItem"][1]["Num"] = 1
	tMonsterSiege_Item[3200718][2][1]["Log"] = "0,0,3200718,1,12000453,1[6],730002,1"
	tMonsterSiege_Item[3200718][2][1]["RewardNoNeedTip"] = 1
	
	tMonsterSiege_Item[3200718][2][2] = {}
	tMonsterSiege_Item[3200718][2][2]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200718][2][2]["ItemChance"] = 2200
	tMonsterSiege_Item[3200718][2][2]["RewardItem"] = {}
	tMonsterSiege_Item[3200718][2][2]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200718][2][2]["RewardItem"][1]["Id"] = 730003
	tMonsterSiege_Item[3200718][2][2]["RewardItem"][1]["Attr"] = "0 1 3 2880 1"
	tMonsterSiege_Item[3200718][2][2]["RewardItem"][1]["Num"] = 1
	tMonsterSiege_Item[3200718][2][2]["Log"] = "0,0,3200718,1,12000453,1[6],730003,1"
	tMonsterSiege_Item[3200718][2][2]["RewardNoNeedTip"] = 1
	
	tMonsterSiege_Item[3200718][2][3] = {}
	tMonsterSiege_Item[3200718][2][3]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200718][2][3]["ItemChance"] = 600
	tMonsterSiege_Item[3200718][2][3]["RewardItem"] = {}
	tMonsterSiege_Item[3200718][2][3]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200718][2][3]["RewardItem"][1]["Id"] = 730004
	tMonsterSiege_Item[3200718][2][3]["RewardItem"][1]["Attr"] = "0 1 3 2880 1"
	tMonsterSiege_Item[3200718][2][3]["RewardItem"][1]["Num"] = 1
	tMonsterSiege_Item[3200718][2][3]["Log"] = "0,0,3200718,1,12000453,1[6],730004,1"
	tMonsterSiege_Item[3200718][2][3]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item[3200718][2][4] = {}
	tMonsterSiege_Item[3200718][2][4]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200718][2][4]["ItemChance"] = 180
	tMonsterSiege_Item[3200718][2][4]["RewardItem"] = {}
	tMonsterSiege_Item[3200718][2][4]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200718][2][4]["RewardItem"][1]["Id"] = 730005
	tMonsterSiege_Item[3200718][2][4]["RewardItem"][1]["Attr"] = "0 1 3 2880 1"
	tMonsterSiege_Item[3200718][2][4]["RewardItem"][1]["Num"] = 1
	tMonsterSiege_Item[3200718][2][4]["Log"] = "0,0,3200718,1,12000453,1[6],730005,1"
	tMonsterSiege_Item[3200718][2][4]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item[3200718][2][5] = {}
	tMonsterSiege_Item[3200718][2][5]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200718][2][5]["ItemChance"] = 20
	tMonsterSiege_Item[3200718][2][5]["RewardItem"] = {}
	tMonsterSiege_Item[3200718][2][5]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200718][2][5]["RewardItem"][1]["Id"] = 730006
	tMonsterSiege_Item[3200718][2][5]["RewardItem"][1]["Attr"] = "0 1 3 2880 1"
	tMonsterSiege_Item[3200718][2][5]["RewardItem"][1]["Num"] = 1
	tMonsterSiege_Item[3200718][2][5]["Log"] = "0,0,3200718,1,12000453,1[6],730006,1"
	tMonsterSiege_Item[3200718][2][5]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item[3200720][2] = {}
	tMonsterSiege_Item[3200720][2]["ItemChanceSum"] = 10000
	tMonsterSiege_Item[3200720][2]["Space"] = 2

	tMonsterSiege_Item[3200720][2][1] = {}
	tMonsterSiege_Item[3200720][2][1]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200720][2][1]["ItemChance"] = 6000
	tMonsterSiege_Item[3200720][2][1]["RewardItem"] = {}
	tMonsterSiege_Item[3200720][2][1]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200720][2][1]["RewardItem"][1]["Id"] = 3009000
	tMonsterSiege_Item[3200720][2][1]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tMonsterSiege_Item[3200720][2][1]["RewardItem"][1]["Num"] = 3
	tMonsterSiege_Item[3200720][2][1]["Log"] = "0,0,3200720,1,12000453,1[4],3009000,3"
	tMonsterSiege_Item[3200720][2][1]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item[3200720][2][2] = {}
	tMonsterSiege_Item[3200720][2][2]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200720][2][2]["ItemChance"] = 2700
	tMonsterSiege_Item[3200720][2][2]["RewardItem"] = {}
	tMonsterSiege_Item[3200720][2][2]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200720][2][2]["RewardItem"][1]["Id"] = 3009001
	tMonsterSiege_Item[3200720][2][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tMonsterSiege_Item[3200720][2][2]["RewardItem"][1]["Num"] = 1
	tMonsterSiege_Item[3200720][2][2]["Log"] = "0,0,3200720,1,12000453,1[4],3009001,1"
	tMonsterSiege_Item[3200720][2][2]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item[3200720][2][3] = {}
	tMonsterSiege_Item[3200720][2][3]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200720][2][3]["ItemChance"] = 1200
	tMonsterSiege_Item[3200720][2][3]["RewardItem"] = {}
	tMonsterSiege_Item[3200720][2][3]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200720][2][3]["RewardItem"][1]["Id"] = 3009001
	tMonsterSiege_Item[3200720][2][3]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tMonsterSiege_Item[3200720][2][3]["RewardItem"][1]["Num"] = 3
	tMonsterSiege_Item[3200720][2][3]["Log"] = "0,0,3200720,1,12000453,1[4],3009001,3"
	tMonsterSiege_Item[3200720][2][3]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item[3200720][2][4] = {}
	tMonsterSiege_Item[3200720][2][4]["RandomItemChanceType"] = 2
	tMonsterSiege_Item[3200720][2][4]["ItemChance"] = 100
	tMonsterSiege_Item[3200720][2][4]["RewardItem"] = {}
	tMonsterSiege_Item[3200720][2][4]["RewardItem"][1] = {}
	tMonsterSiege_Item[3200720][2][4]["RewardItem"][1]["Id"] = 3009002
	tMonsterSiege_Item[3200720][2][4]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tMonsterSiege_Item[3200720][2][4]["RewardItem"][1]["Num"] = 1
	tMonsterSiege_Item[3200720][2][4]["Log"] = "0,0,3200720,1,12000453,1[4],3009002,1"
	tMonsterSiege_Item[3200720][2][4]["RewardNoNeedTip"] = 1


	----全服公告物品
	tMonsterSiege_ItemBroadcast = {}
	tMonsterSiege_ItemBroadcast["Id"] = {730004,730005,730006,730008,3009001,3009002,3009003}
	tMonsterSiege_ItemBroadcast[730004] = 1
	tMonsterSiege_ItemBroadcast[730005] = 1
	tMonsterSiege_ItemBroadcast[730006] = 1
	tMonsterSiege_ItemBroadcast[730008] = 1
	tMonsterSiege_ItemBroadcast[3009001] = 3
	tMonsterSiege_ItemBroadcast[3009002] = 1
	tMonsterSiege_ItemBroadcast[3009003] = 1

	---参与奖励
	tMonsterSiege_Item["Participate"] = {}
	tMonsterSiege_Item["Participate"]["Space"] = 2
	tMonsterSiege_Item["Participate"]["RewardItem"] = {}
	tMonsterSiege_Item["Participate"]["RewardItem"][1] = {}
	tMonsterSiege_Item["Participate"]["RewardItem"][1]["Id"] = 3200346
	tMonsterSiege_Item["Participate"]["RewardItem"][1]["Attr"] = "0 1"
	tMonsterSiege_Item["Participate"]["RewardItem"][2] = {}
	tMonsterSiege_Item["Participate"]["RewardItem"][2]["Id"] = 3009001
	tMonsterSiege_Item["Participate"]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tMonsterSiege_Item["Participate"]["Log"] = "0,0,0,0,12000453,1[1],3200346[3009001],1[1]"
	--排行榜前十奖励
	tMonsterSiege_Item["RankingItem"] = {}
	tMonsterSiege_Item["RankingItem"][1] = {}  --第一名
	tMonsterSiege_Item["RankingItem"][1]["Space"] = 2
	tMonsterSiege_Item["RankingItem"][1]["RewardItem"] = {}
	tMonsterSiege_Item["RankingItem"][1]["RewardItem"][1] = {}
	tMonsterSiege_Item["RankingItem"][1]["RewardItem"][1]["Id"] = 3200720  --高级星陨石包
	tMonsterSiege_Item["RankingItem"][1]["RewardItem"][1]["Attr"] = "0 5"
	tMonsterSiege_Item["RankingItem"][1]["RewardItem"][1]["Num"] = 5
	tMonsterSiege_Item["RankingItem"][1]["RewardItem"][2] = {}
	tMonsterSiege_Item["RankingItem"][1]["RewardItem"][2]["Id"] = 3200719
	tMonsterSiege_Item["RankingItem"][1]["RewardItem"][2]["Attr"] = "0 10"
	tMonsterSiege_Item["RankingItem"][1]["RewardItem"][2]["Num"] = 10
	tMonsterSiege_Item["RankingItem"][1]["Log"] = "0,0,0,0,12000453,2,3200719[3200720],10[5]"
	tMonsterSiege_Item["RankingItem"][1]["RewardNoNeedTip"] = 1
	
	tMonsterSiege_Item["RankingItem"][2] = {}  --第二名
	tMonsterSiege_Item["RankingItem"][2]["Space"] = 2
	tMonsterSiege_Item["RankingItem"][2]["RewardItem"] = {}
	tMonsterSiege_Item["RankingItem"][2]["RewardItem"][1] = {}
	tMonsterSiege_Item["RankingItem"][2]["RewardItem"][1]["Id"] = 3200720  --高级星陨石包
	tMonsterSiege_Item["RankingItem"][2]["RewardItem"][1]["Attr"] = "0 5"
	tMonsterSiege_Item["RankingItem"][2]["RewardItem"][1]["Num"] = 5
	tMonsterSiege_Item["RankingItem"][2]["RewardItem"][2] = {}
	tMonsterSiege_Item["RankingItem"][2]["RewardItem"][2]["Id"] = 3200719
	tMonsterSiege_Item["RankingItem"][2]["RewardItem"][2]["Attr"] = "0 8"
	tMonsterSiege_Item["RankingItem"][2]["RewardItem"][2]["Num"] = 8
	tMonsterSiege_Item["RankingItem"][2]["Log"] = "0,0,0,0,12000453,2,3200719[3200720],8[5]"
	tMonsterSiege_Item["RankingItem"][2]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item["RankingItem"][3] = {}  --第三名
	tMonsterSiege_Item["RankingItem"][3]["Space"] = 2
	tMonsterSiege_Item["RankingItem"][3]["RewardItem"] = {}
	tMonsterSiege_Item["RankingItem"][3]["RewardItem"][1] = {}
	tMonsterSiege_Item["RankingItem"][3]["RewardItem"][1]["Id"] = 3200720  --高级星陨石包
	tMonsterSiege_Item["RankingItem"][3]["RewardItem"][1]["Attr"] = "0 5"
	tMonsterSiege_Item["RankingItem"][3]["RewardItem"][1]["Num"] = 5
	tMonsterSiege_Item["RankingItem"][3]["RewardItem"][2] = {}
	tMonsterSiege_Item["RankingItem"][3]["RewardItem"][2]["Id"] = 3200719
	tMonsterSiege_Item["RankingItem"][3]["RewardItem"][2]["Attr"] = "0 6"
	tMonsterSiege_Item["RankingItem"][3]["RewardItem"][2]["Num"] = 6
	tMonsterSiege_Item["RankingItem"][3]["Log"] = "0,0,0,0,12000453,2,3200719[3200720],6[5]"
	tMonsterSiege_Item["RankingItem"][3]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item["RankingItem"][4] = {}  --第四名
	tMonsterSiege_Item["RankingItem"][4]["Space"] = 6
	tMonsterSiege_Item["RankingItem"][4]["RewardItem"] = {}
	tMonsterSiege_Item["RankingItem"][4]["RewardItem"][1] = {}
	tMonsterSiege_Item["RankingItem"][4]["RewardItem"][1]["Id"] = 3200720  --高级星陨石包
	tMonsterSiege_Item["RankingItem"][4]["RewardItem"][1]["Attr"] = "0 3"
	tMonsterSiege_Item["RankingItem"][4]["RewardItem"][1]["Num"] = 3
	tMonsterSiege_Item["RankingItem"][4]["RewardItem"][2] = {}
	tMonsterSiege_Item["RankingItem"][4]["RewardItem"][2]["Id"] = 720027  --流星卷
	tMonsterSiege_Item["RankingItem"][4]["RewardItem"][2]["Attr"] = "0 5"
	tMonsterSiege_Item["RankingItem"][4]["RewardItem"][2]["Num"] = 5
	tMonsterSiege_Item["RankingItem"][4]["Log"] = "0,0,0,0,12000453,2,720027[3200720],5[3]"
	tMonsterSiege_Item["RankingItem"][4]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item["RankingItem"][5] = {}  --第五名
	tMonsterSiege_Item["RankingItem"][5]["Space"] = 4
	tMonsterSiege_Item["RankingItem"][5]["RewardItem"] = {}
	tMonsterSiege_Item["RankingItem"][5]["RewardItem"][1] = {}
	tMonsterSiege_Item["RankingItem"][5]["RewardItem"][1]["Id"] = 3200720  --高级星陨石包
	tMonsterSiege_Item["RankingItem"][5]["RewardItem"][1]["Attr"] = "0 3"
	tMonsterSiege_Item["RankingItem"][5]["RewardItem"][1]["Num"] = 3
	tMonsterSiege_Item["RankingItem"][5]["RewardItem"][2] = {}
	tMonsterSiege_Item["RankingItem"][5]["RewardItem"][2]["Id"] = 720027
	tMonsterSiege_Item["RankingItem"][5]["RewardItem"][2]["Attr"] = "0 3"
	tMonsterSiege_Item["RankingItem"][5]["RewardItem"][2]["Num"] = 3
	tMonsterSiege_Item["RankingItem"][5]["Log"] = "0,0,0,0,12000453,2,720027[3200720],3[3]"
	tMonsterSiege_Item["RankingItem"][5]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item["RankingItem"][6] = {}  --第六名
	tMonsterSiege_Item["RankingItem"][6]["Space"] = 4
	tMonsterSiege_Item["RankingItem"][6]["RewardItem"] = {}
	tMonsterSiege_Item["RankingItem"][6]["RewardItem"][1] = {}
	tMonsterSiege_Item["RankingItem"][6]["RewardItem"][1]["Id"] = 3200720  --高级星陨石包
	tMonsterSiege_Item["RankingItem"][6]["RewardItem"][1]["Attr"] = "0 2"
	tMonsterSiege_Item["RankingItem"][6]["RewardItem"][1]["Num"] = 2
	tMonsterSiege_Item["RankingItem"][6]["RewardItem"][2] = {}
	tMonsterSiege_Item["RankingItem"][6]["RewardItem"][2]["Id"] = 720027
	tMonsterSiege_Item["RankingItem"][6]["RewardItem"][2]["Attr"] = "0 3"
	tMonsterSiege_Item["RankingItem"][6]["RewardItem"][2]["Num"] = 3
	tMonsterSiege_Item["RankingItem"][6]["Log"] = "0,0,0,0,12000453,2,720027[3200720],3[2]"
	tMonsterSiege_Item["RankingItem"][6]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item["RankingItem"][7] = {}  --第七名
	tMonsterSiege_Item["RankingItem"][7]["Space"] = 3
	tMonsterSiege_Item["RankingItem"][7]["RewardItem"] = {}
	tMonsterSiege_Item["RankingItem"][7]["RewardItem"][1] = {}
	tMonsterSiege_Item["RankingItem"][7]["RewardItem"][1]["Id"] = 3200720  --高级星陨石包
	tMonsterSiege_Item["RankingItem"][7]["RewardItem"][1]["Attr"] = "0 2"
	tMonsterSiege_Item["RankingItem"][7]["RewardItem"][1]["Num"] = 2
	tMonsterSiege_Item["RankingItem"][7]["RewardItem"][2] = {}
	tMonsterSiege_Item["RankingItem"][7]["RewardItem"][2]["Id"] = 720027
	tMonsterSiege_Item["RankingItem"][7]["RewardItem"][2]["Attr"] = "0 2"
	tMonsterSiege_Item["RankingItem"][7]["RewardItem"][2]["Num"] = 2
	tMonsterSiege_Item["RankingItem"][7]["Log"] = "0,0,0,0,12000453,2,720027[3200720],2[2]"
	tMonsterSiege_Item["RankingItem"][7]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item["RankingItem"][8] = {}  --第八名
	tMonsterSiege_Item["RankingItem"][8]["Space"] = 3
	tMonsterSiege_Item["RankingItem"][8]["RewardItem"] = {}
	tMonsterSiege_Item["RankingItem"][8]["RewardItem"][1] = {}
	tMonsterSiege_Item["RankingItem"][8]["RewardItem"][1]["Id"] = 3200720  --高级星陨石包
	tMonsterSiege_Item["RankingItem"][8]["RewardItem"][1]["Attr"] = "0 1"
	tMonsterSiege_Item["RankingItem"][8]["RewardItem"][1]["Num"] = 1
	tMonsterSiege_Item["RankingItem"][8]["RewardItem"][2] = {}
	tMonsterSiege_Item["RankingItem"][8]["RewardItem"][2]["Id"] = 720027
	tMonsterSiege_Item["RankingItem"][8]["RewardItem"][2]["Attr"] = "0 2"
	tMonsterSiege_Item["RankingItem"][8]["RewardItem"][2]["Num"] = 2
	tMonsterSiege_Item["RankingItem"][8]["Log"] = "0,0,0,0,12000453,2,720027[3200720],2[1]"
	tMonsterSiege_Item["RankingItem"][8]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item["RankingItem"][9] = {}  --第九名
	tMonsterSiege_Item["RankingItem"][9]["Space"] = 2
	tMonsterSiege_Item["RankingItem"][9]["RewardItem"] = {}
	tMonsterSiege_Item["RankingItem"][9]["RewardItem"][1] = {}
	tMonsterSiege_Item["RankingItem"][9]["RewardItem"][1]["Id"] = 3200720  --高级星陨石包
	tMonsterSiege_Item["RankingItem"][9]["RewardItem"][1]["Attr"] = "0 1"
	tMonsterSiege_Item["RankingItem"][9]["RewardItem"][1]["Num"] = 1
	tMonsterSiege_Item["RankingItem"][9]["RewardItem"][2] = {}
	tMonsterSiege_Item["RankingItem"][9]["RewardItem"][2]["Id"] = 720027  --
	tMonsterSiege_Item["RankingItem"][9]["RewardItem"][2]["Attr"] = "0 1"
	tMonsterSiege_Item["RankingItem"][9]["RewardItem"][2]["Num"] = 1
	tMonsterSiege_Item["RankingItem"][9]["Log"] = "0,0,0,0,12000453,2,3200720[720027],1[1]"
	tMonsterSiege_Item["RankingItem"][9]["RewardNoNeedTip"] = 1

	tMonsterSiege_Item["RankingItem"][10] = {}  --第十名
	tMonsterSiege_Item["RankingItem"][10]["Space"] = 2
	tMonsterSiege_Item["RankingItem"][10]["RewardItem"] = {}
	tMonsterSiege_Item["RankingItem"][10]["RewardItem"][1] = {}
	tMonsterSiege_Item["RankingItem"][10]["RewardItem"][1]["Id"] = 3200720  --高级星陨石包
	tMonsterSiege_Item["RankingItem"][10]["RewardItem"][1]["Attr"] = "0 1"
	tMonsterSiege_Item["RankingItem"][10]["RewardItem"][1]["Num"] = 1
	tMonsterSiege_Item["RankingItem"][10]["RewardItem"][2] = {}
	tMonsterSiege_Item["RankingItem"][10]["RewardItem"][2]["Id"] = 720027  --
	tMonsterSiege_Item["RankingItem"][10]["RewardItem"][2]["Attr"] = "0 1"
	tMonsterSiege_Item["RankingItem"][10]["RewardItem"][2]["Num"] = 1
	tMonsterSiege_Item["RankingItem"][10]["Log"] = "0,0,0,0,12000453,2,3200720[720027],1[1]"
	tMonsterSiege_Item["RankingItem"][10]["RewardNoNeedTip"] = 1


---------------------------------------------怪物数据---------------------------------------------
local tMonsterSiege_MonsterItem = {}
	tMonsterSiege_MonsterItem[1] = {}
	
local tMonsterSiege_MonsterNum = {}
	tMonsterSiege_MonsterNum["MonsterId"] = {}
	tMonsterSiege_MonsterNum["MonsterId"][1] = 3937
	tMonsterSiege_MonsterNum["MonsterId"][2] = 3938
	tMonsterSiege_MonsterNum["MonsterId"][3] = 3939
	tMonsterSiege_MonsterNum["MonsterId"][4] = 3940

	---正常刷怪数量
	tMonsterSiege_MonsterNum[1] = {}
	tMonsterSiege_MonsterNum[1][3938] = {}
	tMonsterSiege_MonsterNum[1][3938][2] = 2
	tMonsterSiege_MonsterNum[1][3938][3] = 2
	tMonsterSiege_MonsterNum[1][3938][5] = 3
	tMonsterSiege_MonsterNum[1][3938][6] = 3
	tMonsterSiege_MonsterNum[1][3938][8] = 4
	tMonsterSiege_MonsterNum[1][3938][9] = 4
	tMonsterSiege_MonsterNum[1][3938][11] =5
	tMonsterSiege_MonsterNum[1][3938][12] =5
	tMonsterSiege_MonsterNum[1][3938][14] =6
	tMonsterSiege_MonsterNum[1][3938][15] =6

	tMonsterSiege_MonsterNum[1][3939] = {}
	tMonsterSiege_MonsterNum[1][3939][3] = 1
	tMonsterSiege_MonsterNum[1][3939][6] = 2
	tMonsterSiege_MonsterNum[1][3939][9] = 3
	tMonsterSiege_MonsterNum[1][3939][12] =4
	tMonsterSiege_MonsterNum[1][3939][15] =4

---狂欢时候刷怪数量
	tMonsterSiege_MonsterNum[2] = {}
	tMonsterSiege_MonsterNum[2][3938] = {}
	tMonsterSiege_MonsterNum[2][3938][1] = 6
	tMonsterSiege_MonsterNum[2][3938][2] = 7
	tMonsterSiege_MonsterNum[2][3938][3] = 8
	tMonsterSiege_MonsterNum[2][3938][4] = 7
	tMonsterSiege_MonsterNum[2][3938][5] = 8
	tMonsterSiege_MonsterNum[2][3938][6] = 9
	tMonsterSiege_MonsterNum[2][3938][7] = 8
	tMonsterSiege_MonsterNum[2][3938][8] = 9
	tMonsterSiege_MonsterNum[2][3938][9] = 10
	tMonsterSiege_MonsterNum[2][3938][10] =10
	tMonsterSiege_MonsterNum[2][3938][11] =11
	tMonsterSiege_MonsterNum[2][3938][12] =12
	tMonsterSiege_MonsterNum[2][3938][13] =12 
	tMonsterSiege_MonsterNum[2][3938][14] =13
	tMonsterSiege_MonsterNum[2][3938][15] =14

	tMonsterSiege_MonsterNum[2][3939] = {}
	tMonsterSiege_MonsterNum[2][3939][2] = 2
	tMonsterSiege_MonsterNum[2][3939][3] = 4
	tMonsterSiege_MonsterNum[2][3939][5] = 3
	tMonsterSiege_MonsterNum[2][3939][6] = 5
	tMonsterSiege_MonsterNum[2][3939][8] = 4
	tMonsterSiege_MonsterNum[2][3939][9] = 6
	tMonsterSiege_MonsterNum[2][3939][11] =5
	tMonsterSiege_MonsterNum[2][3939][12] =7
	tMonsterSiege_MonsterNum[2][3939][14] =6
	tMonsterSiege_MonsterNum[2][3939][15] =8
	
local tMonsterSiege_MonsterDrop = {}
---随机掉
	tMonsterSiege_MonsterDrop[3937] = {}
	tMonsterSiege_MonsterDrop[3937]["ItemChanceSum"] = 10000
	
	tMonsterSiege_MonsterDrop[3937][1] = {}
	tMonsterSiege_MonsterDrop[3937][1]["RandomItemChanceType"] = 2
	tMonsterSiege_MonsterDrop[3937][1]["ItemChance"] = 800
	tMonsterSiege_MonsterDrop[3937][1]["Item_1"] = 1088001

	tMonsterSiege_MonsterDrop[3937][2] = {}
	tMonsterSiege_MonsterDrop[3937][2]["RandomItemChanceType"] = 2
	tMonsterSiege_MonsterDrop[3937][2]["ItemChance"] = 300
	tMonsterSiege_MonsterDrop[3937][2]["Item_1"] = 3006531

	tMonsterSiege_MonsterDrop[3937][3] = {}
	tMonsterSiege_MonsterDrop[3937][3]["RandomItemChanceType"] = 2
	tMonsterSiege_MonsterDrop[3937][3]["ItemChance"] = 300
	tMonsterSiege_MonsterDrop[3937][3]["Item_1"] = 3006537

	tMonsterSiege_MonsterDrop[3937][4] = {}
	tMonsterSiege_MonsterDrop[3937][4]["RandomItemChanceType"] = 2
	tMonsterSiege_MonsterDrop[3937][4]["ItemChance"] = 300
	tMonsterSiege_MonsterDrop[3937][4]["Item_1"] = 3006534

	tMonsterSiege_MonsterDrop[3937][5] = {}
	tMonsterSiege_MonsterDrop[3937][5]["RandomItemChanceType"] = 2
	tMonsterSiege_MonsterDrop[3937][5]["ItemChance"] = 150
	tMonsterSiege_MonsterDrop[3937][5]["Item_1"] = 3200719

	tMonsterSiege_MonsterDrop[3937][6] = {}
	tMonsterSiege_MonsterDrop[3937][6]["RandomItemChanceType"] = 2
	tMonsterSiege_MonsterDrop[3937][6]["ItemChance"] = 150
	tMonsterSiege_MonsterDrop[3937][6]["Item_1"] = 3200717

	tMonsterSiege_MonsterDrop[3937][7] = {}
	tMonsterSiege_MonsterDrop[3937][7]["RandomItemChanceType"] = 2
	tMonsterSiege_MonsterDrop[3937][7]["ItemChance"] = 8000
	tMonsterSiege_MonsterDrop[3937][7]["Item_1"] = 0
----固定掉
	tMonsterSiege_MonsterDrop[3938] = {}
	tMonsterSiege_MonsterDrop[3938][1] = {}
	tMonsterSiege_MonsterDrop[3938][1]["ItemId"] = 720027
	tMonsterSiege_MonsterDrop[3938][1]["Num"] = 1
	tMonsterSiege_MonsterDrop[3938][2] = {}
	tMonsterSiege_MonsterDrop[3938][2]["ItemId"] = 3006531
	tMonsterSiege_MonsterDrop[3938][2]["Num"] = 5
	tMonsterSiege_MonsterDrop[3938][3] = {}
	tMonsterSiege_MonsterDrop[3938][3]["ItemId"] = 3006537
	tMonsterSiege_MonsterDrop[3938][3]["Num"] = 5
	tMonsterSiege_MonsterDrop[3938][4] = {}
	tMonsterSiege_MonsterDrop[3938][4]["ItemId"] = 3006534
	tMonsterSiege_MonsterDrop[3938][4]["Num"] = 5
	tMonsterSiege_MonsterDrop[3938][5] = {}
	tMonsterSiege_MonsterDrop[3938][5]["ItemId"] = 3200717
	tMonsterSiege_MonsterDrop[3938][5]["Num"] = 3
	tMonsterSiege_MonsterDrop[3938][6] = {}
	tMonsterSiege_MonsterDrop[3938][6]["ItemId"] = 3200719
	tMonsterSiege_MonsterDrop[3938][6]["Num"] = 3
	
	tMonsterSiege_MonsterDrop[3939] = {}
	tMonsterSiege_MonsterDrop[3939][1] = {}
	tMonsterSiege_MonsterDrop[3939][1]["ItemId"] = 720027
	tMonsterSiege_MonsterDrop[3939][1]["Num"] = 2
	
	tMonsterSiege_MonsterDrop[3939][2] = {}
	tMonsterSiege_MonsterDrop[3939][2]["ItemId"] = 3006531
	tMonsterSiege_MonsterDrop[3939][2]["Num"] = 5
	
	tMonsterSiege_MonsterDrop[3939][3] = {}
	tMonsterSiege_MonsterDrop[3939][3]["ItemId"] = 3006537
	tMonsterSiege_MonsterDrop[3939][3]["Num"] = 5
	
	tMonsterSiege_MonsterDrop[3939][4] = {}
	tMonsterSiege_MonsterDrop[3939][4]["ItemId"] = 3006534
	tMonsterSiege_MonsterDrop[3939][4]["Num"] = 5
	
	tMonsterSiege_MonsterDrop[3939][5] = {}
	tMonsterSiege_MonsterDrop[3939][5]["ItemId"] = 3200717
	tMonsterSiege_MonsterDrop[3939][5]["Num"] = 5
	
	tMonsterSiege_MonsterDrop[3939][6] = {}
	tMonsterSiege_MonsterDrop[3939][6]["ItemId"] = 3200718
	tMonsterSiege_MonsterDrop[3939][6]["Num"] = 1
	
	tMonsterSiege_MonsterDrop[3939][7] = {}
	tMonsterSiege_MonsterDrop[3939][7]["ItemId"] = 3200719
	tMonsterSiege_MonsterDrop[3939][7]["Num"] = 5
	
	tMonsterSiege_MonsterDrop[3939][8] = {}
	tMonsterSiege_MonsterDrop[3939][8]["ItemId"] = 3200720
	tMonsterSiege_MonsterDrop[3939][8]["Num"] = 1
	
	-- tMonsterSiege_MonsterDrop[3939][9] = {}
	-- tMonsterSiege_MonsterDrop[3939][9]["ItemId"] = 1088000  --45%概率获得
	-- tMonsterSiege_MonsterDrop[3939][9]["Num"] = 1
	-- tMonsterSiege_MonsterDrop[3939][9]["Random"] = 4500

	tMonsterSiege_MonsterDrop[3940] = {}
	tMonsterSiege_MonsterDrop[3940][1] = {}
	tMonsterSiege_MonsterDrop[3940][1]["ItemId"] = 1088001
	tMonsterSiege_MonsterDrop[3940][1]["Num"] = 50
	tMonsterSiege_MonsterDrop[3940][2] = {}
	tMonsterSiege_MonsterDrop[3940][2]["ItemId"] = 3200718
	tMonsterSiege_MonsterDrop[3940][2]["Num"] = 10
	tMonsterSiege_MonsterDrop[3940][3] = {}
	tMonsterSiege_MonsterDrop[3940][3]["ItemId"] = 3200720
	tMonsterSiege_MonsterDrop[3940][3]["Num"] = 10
	tMonsterSiege_MonsterDrop[3940][4] = {}
	tMonsterSiege_MonsterDrop[3940][4]["ItemId"] = 3006539
	tMonsterSiege_MonsterDrop[3940][4]["Num"] = 10
	tMonsterSiege_MonsterDrop[3940][5] = {}
	tMonsterSiege_MonsterDrop[3940][5]["ItemId"] = 3006536
	tMonsterSiege_MonsterDrop[3940][5]["Num"] = 10
	tMonsterSiege_MonsterDrop[3940][6] = {}
	tMonsterSiege_MonsterDrop[3940][6]["ItemId"] = 1088000
	tMonsterSiege_MonsterDrop[3940][6]["Num"] = 3
	
	tMonsterSiege_MonsterDrop["Log"] = {}
	tMonsterSiege_MonsterDrop["Log"][3938] = "0,0,0,0,12000453,1[2],0,0"
	tMonsterSiege_MonsterDrop["Log"][3939] = "0,0,0,0,12000453,1[2],0,0"
	tMonsterSiege_MonsterDrop["Log"][3940] = "0,0,0,0,12000453,1[2],0,0"
	tMonsterSiege_MonsterDrop["Log"]["longzhu"] = "0,0,0,0,12000453,3[3],1088000,1"
	-- 刷怪坐标
	tMonsterSiege_MonsterPos = {}
	tMonsterSiege_MonsterPos[3938] = {}
	tMonsterSiege_MonsterPos[3938][1] = {312,419}--{296,337}
	tMonsterSiege_MonsterPos[3938][2] = {323,413}--{283,341}
	tMonsterSiege_MonsterPos[3938][3] = {329,404}--{311,361}
	tMonsterSiege_MonsterPos[3938][4] = {339,410}--{315,385}
	tMonsterSiege_MonsterPos[3938][5] = {351,408}--{336,379}
	tMonsterSiege_MonsterPos[3938][6] = {352,390}--{323,372}
	tMonsterSiege_MonsterPos[3938][7] = {350,376}--{352,376}
	tMonsterSiege_MonsterPos[3938][8] = {361,404}--{343,361}
	tMonsterSiege_MonsterPos[3938][9] = {347,413}--{345,341}
	tMonsterSiege_MonsterPos[3938][10] = {332,415}-- {360,357}
	tMonsterSiege_MonsterPos[3938][11] = {318,415}--{357,369}
	tMonsterSiege_MonsterPos[3938][12] = {307,427}--{339,367}
	tMonsterSiege_MonsterPos[3938][13] = {329,416}--{331,359}
	tMonsterSiege_MonsterPos[3938][14] = {343,402}--{334,342}
	
	tMonsterSiege_MonsterPos[3938][15] = {369,386}
	tMonsterSiege_MonsterPos[3938][16] = {308,407}
	tMonsterSiege_MonsterPos[3938][17] = {324,426}
	tMonsterSiege_MonsterPos[3938][18] = {347,423}
	tMonsterSiege_MonsterPos[3938][19] = {299,418}
	tMonsterSiege_MonsterPos[3938][20] = {327,425}
	tMonsterSiege_MonsterPos[3938][21] = {370,406}
	tMonsterSiege_MonsterPos[3938][22] = {352,408}
	tMonsterSiege_MonsterPos[3938][23] = {320,441}
	tMonsterSiege_MonsterPos[3938][24] = {336,444}
	tMonsterSiege_MonsterPos[3938][25] = {353,447}
	tMonsterSiege_MonsterPos[3938][26] = {366,435}
	tMonsterSiege_MonsterPos[3938][27] = {347,437}
	tMonsterSiege_MonsterPos[3938][28] = {342,447}
	tMonsterSiege_MonsterPos[3938][29] = {331,450}
	tMonsterSiege_MonsterPos[3938][30] = {322,449}
	
	
	tMonsterSiege_MonsterPos[3939] = {}
	tMonsterSiege_MonsterPos[3939][1] = {320,414}--{298,343}
	tMonsterSiege_MonsterPos[3939][2] = {335,407}--{310,359}
	tMonsterSiege_MonsterPos[3939][3] = {345,422}--{317,372}
	tMonsterSiege_MonsterPos[3939][4] = {348,437}--{332,371}
	tMonsterSiege_MonsterPos[3939][5] = {331,435}--{337,361}
	tMonsterSiege_MonsterPos[3939][6] = {335,417}--{334,345}
	tMonsterSiege_MonsterPos[3939][7] = {369,424}--{350,352}
	tMonsterSiege_MonsterPos[3939][8] = {367,440}--{349,379}
	
	tMonsterSiege_MonsterPos[3939][9] = {347,434}
	tMonsterSiege_MonsterPos[3939][10] = {361,404}
	tMonsterSiege_MonsterPos[3939][11] = {372,420}
	tMonsterSiege_MonsterPos[3939][12] = {366,396}
	tMonsterSiege_MonsterPos[3939][13] = {366,414}
	tMonsterSiege_MonsterPos[3939][14] = {360,425}

	tMonsterSiege_MonsterPos[3940] = {}
	tMonsterSiege_MonsterPos[3940][1] = {329,419} --{318,347}  --平常
	-- tMonsterSiege_MonsterPos[3940][2] = {299,342}--{299,342}
	-- tMonsterSiege_MonsterPos[3940][3] = {334,344}--{334,344}


---------------------------------------------npc逻辑部分---------------------------------------------
function MonsterSiege_ChkLevel()
	if not User_JudgeLevelAndMetempsychosis(tMonsterSiege_Data["Level"],tMonsterSiege_Data["Metempsychosis"]) then 
		return true
	else
		return false
	end
end
---检测掩码
function MonsterSiege_ChkStc(nNum,sIndex,nData,nUserId)
	local nEvent = tMonsterSiege_Stc[nNum]["EventType"]
	local nType = tMonsterSiege_Stc[nNum]["DataType"]
	if Task_ChkStcValue(nEvent,nType,sIndex,nData,nUserId) then
		return true
	else
		return false
	end
end
--掩码加1
-- function MonsterSiege_AddStc(nNum)
	-- local nEvent = tMonsterSiege_Stc[nNum]["EventType"]
	-- local nType = tMonsterSiege_Stc[nNum]["DataType"]
	-- Task_AddStatistic(nEvent,nType,1,1)
	-- Task_SetStcTimestamp(nEvent,nType,0)
-- end
--设置掩码
function MonsterSiege_SetStc(nData,nNum,nUserId)
	local nEvent = tMonsterSiege_Stc[nData]["EventType"]
	local nType = tMonsterSiege_Stc[nData]["DataType"]
	Task_SetStatistic(nEvent,nType,nNum,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end
--取掩码值
function MonsterSiege_GetStc(nNum,nUserId)
	local nEvent = tMonsterSiege_Stc[nNum]["EventType"]
	local nType = tMonsterSiege_Stc[nNum]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	return nData
end

---动态表
function MonsterSiege_SetGlobal(nNum,nGoldNum,nRecordUserId)
	local nSysDyGlobId = tMonsterSiege_GlobId[nNum]
	local sUserName = Get_UserName(nRecordUserId)
		Sys_SetSynaGlobalData1(nSysDyGlobId,nGoldNum) --伤害值
		Sys_SetSynaGlobalData2(nSysDyGlobId,nRecordUserId) --玩家id
		Sys_SetSynaGlobalDataStr1(nSysDyGlobId,sUserName)  --玩家名字
end
--取动态表值
function MonsterSiege_GetGlobal(nNum)
	local nSysDyGlobId = tMonsterSiege_GlobId[nNum]
	local nGoldNum = Get_SysDynaGlobalData1(nSysDyGlobId)
	local nUserId = Get_SysDynaGlobalData2(nSysDyGlobId)
	local sUserName = Get_SysDynaGlobalDataStr1(nSysDyGlobId)
	local sFlag = Get_SysDynaGlobalDataStr2(nSysDyGlobId)
	return nGoldNum,nUserId,sUserName,sFlag
end


---输出排行榜
function MonsterSiege_PutRanking(nNpcId)
	local nData = Get_SysDynaGlobalData5(tMonsterSiege_GlobId[10])  --场次
	local nMdg1,nUserId1,sName1,nNum1 = MonsterSiege_GetGlobal(1)
	-- Boss没刷出来
	-- if nData < tMonsterSiege_Data["Times"]  or nUserId1 == nil then
		-- return
	-- end
	local nNum11 = Get_SysDynaGlobalData4(tMonsterSiege_GlobId[10])
	local nNum33 = 1
	if nNum11 < nNum33 then
		LinkNpcGossipFunc_New(nNpcId,"7-1")
		return
	end
	Sys_DialogText(tMonsterSiege_Text[19371]["Text411"])
	Sys_DialogText(tMonsterSiege_Text[19371]["Text412"])
	Sys_DialogText(tMonsterSiege_Text[19371]["Text413"])
---出排名
	local nFlag = 0  --标志第几名
	local nUserId2 = Get_UserId()  --查看排行榜的玩家id
	for i = 1,10 do
		local nMdg,nUserId,sName,sNum = MonsterSiege_GetGlobal(i)
		local sText = string.format(tMonsterSiege_Text[19371]["Text415"],i)
		local nlen = 10 - string.len(nMdg)
		if nlen >= 1 then
			for a=1,nlen do
				local sStr = " "
				nMdg = nMdg .. sStr
			end
		end
		if nUserId ~= 0 then
			sText = string.format(tMonsterSiege_Text[19371]["Text414"],i,nMdg,sName)
		end
		if i == 10 then
			if nUserId == 0 then
				sText = string.format(tMonsterSiege_Text[19371]["Text417"],i)
			else
				sText = string.format(tMonsterSiege_Text[19371]["Text416"],i,nMdg,sName)
			end
		end
		if nUserId2 == nUserId then
			nFlag = i  --标志玩家有有上榜前10名
		end
		Sys_DialogText(sText)
	end
	Sys_DialogText(tMonsterSiege_Text[19371]["Text412"])
----出选项
	if nFlag >= 1 then  --已领or没有上榜的选项不让出
		local nMdg2,nUserId2,sName2,sNum2 = MonsterSiege_GetGlobal(nFlag)
		if  sNum2 < "1"  then  
			Sys_DialogOption(tMonsterSiege_Text[19371]["Option52"],"</F>MonsterSiege_RankingReward</N>" .. nNpcId .. "</N>" .. nFlag .. "</S>" .. sName2)
		end
	end
	Sys_DialogOption(tMonsterSiege_Text[19371]["Option53"],"</F>LinkNpcGossipFunc_New</N>" .. nNpcId .. "</S>" .. "5-1")
	Sys_DialogOption(tMonsterSiege_Text[19371]["Option54"],"</F>NULL")
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()

end
----领取排行榜奖励
function MonsterSiege_RankingReward(nNpcId,nFlag,sName2)

--不在活动时间内
	if not (Sys_ChkFullTime(tMonsterSiege_Data["Now_Time"]) or Sys_ChkFullTime(tMonsterSiege_Data["Aft_Time"])) then
		return
	end
	local nData = Get_SysDynaGlobalData5(tMonsterSiege_GlobId[10])  --场次
	if nData < tMonsterSiege_Data["Times"] then  --小于15退出，怪没刷出来
		return
	end

	--不在领奖的时间内
	local nNum11 = Get_SysDynaGlobalData4(tMonsterSiege_GlobId[10])
	local nNum33 = 1
	if nNum11 < nNum33 then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end

	local sTemp = Get_SysDynaGlobalDataStr2(tMonsterSiege_GlobId[nFlag])
	if sTemp == "1" then
		Sys_MsgBox(tMonsterSiege_Text["MsgBox"]["Rewarded"])
		return
	end
	-- 【背包空间不足】
	local nSpace = tMonsterSiege_Item["RankingItem"][nFlag]["Space"]
	if not User_CheckLeftSpace(nSpace) then
		local sText = string.format(tMonsterSiege_Text[19371]["Text431"],nSpace)
		Sys_DialogText(sText)
		Sys_DialogOption(tMonsterSiege_Text[19371]["Option55"],"</F>NULL")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end

	Sys_SetSynaGlobalDataStr2(tMonsterSiege_GlobId[nFlag],"1")  --动态存储表str2置1
	RewardTemplate_Reward(tMonsterSiege_Item["RankingItem"][nFlag])  --获得奖励
	User_EffectAdd("self",tMonsterSiege_Data["Effect"])  --光效
	--提示
	local sItemName = ""
	for i = 1,#tMonsterSiege_Item["RankingItem"][nFlag]["RewardItem"] do
		local sItem = Get_ItemtypeName(tMonsterSiege_Item["RankingItem"][nFlag]["RewardItem"][i]["Id"])
		local nNum = tMonsterSiege_Item["RankingItem"][nFlag]["RewardItem"][i]["Num"]
		local sNum  = string.format(tMonsterSiege_Text["MsgBox"]["Num"],nNum,sItem)
		sItemName  = sItemName .. sNum
		if i < #tMonsterSiege_Item["RankingItem"][nFlag]["RewardItem"] then
			sItemName = sItemName .. tMonsterSiege_Text["Flag"]
		end
	end
	local sStr = string.format(tMonsterSiege_Text["MsgBox"]["RewardItem"],sName2,nFlag,sItemName)
	Sys_GmBroadcast(sStr)
	-- User_TalkChannel2005(sStr)  --排行榜领奖系统提示
end

---领取犒赏
function MonsterSiege_Reward(nNpcId)
	if not (Sys_ChkFullTime(tMonsterSiege_Data["Now_Time"]) or Sys_ChkFullTime(tMonsterSiege_Data["Aft_Time"])) then
		return
	end
	---等级不足
	if MonsterSiege_ChkLevel() then
		return
	end

	if MonsterSiege_ChkStc(1,"<",1) then  --判断是否参加战斗
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		
		return
	end
	if MonsterSiege_ChkStc(1,">=",2) then  --判断是否已经领过奖
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end

	local nNum11 = Get_SysDynaGlobalData4(tMonsterSiege_GlobId[10])
	-- local nNum22 = Get_SysDynaGlobalData5(tMonsterSiege_GlobId[10])
	local nNum33 = 1
	---战斗时间内
	if nNum11 < nNum33  then
		if Sys_ChkDayTime(tMonsterSiege_Data["Now_Time21"]) or Sys_ChkDayTime(tMonsterSiege_Data["Now_Time22"]) or Sys_ChkDayTime(tMonsterSiege_Data["Now_Time23"]) then
			LinkNpcGossipFunc_New(nNpcId,"2-4")
		else
			LinkNpcGossipFunc_New(nNpcId,"2-5")
		end
		return
	end
	
	---没有刷出boss
	-- local nData = Get_SysDynaGlobalData5(tMonsterSiege_GlobId[10])  --场次
	-- if nData < tMonsterSiege_Data["Times"] then
		-- LinkNpcGossipFunc_New(nNpcId,"2-4")
		-- return
	-- end
	----------判断场次对不对
	-- if MonsterSiege_JudgeTimes() then
		-- LinkNpcGossipFunc_New(nNpcId,"2-1")
		-- return
	-- end
	-- 【背包空间不足】
	if not User_CheckLeftSpace(tMonsterSiege_Item["Participate"]["Space"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	MonsterSiege_SetStc(1,2)  --打掩码
	RewardTemplate_Reward(tMonsterSiege_Item["Participate"])
	local sUserName = Get_UserName()
	User_TalkChannel2005(string.format(tMonsterSiege_Text["MsgBox"]["GetReward"],sUserName))
	User_EffectAdd("self",tMonsterSiege_Data["Effect"])  --光效
	Sys_SaveEmoneyBuy(tMonsterSiege_Data["Emoneylog"][2])  ---emoneybuglog
end
---判断在哪个非战斗时间段内
function MonsterSiege_JudgeTime()
	local nIndex = 0  --表示在战斗时间内
	if Sys_ChkDayTime(tMonsterSiege_Data["Now_Time11"]) then
		nIndex = 1
	end
	if Sys_ChkDayTime(tMonsterSiege_Data["Now_Time12"]) then
		nIndex = 2
	end
	if Sys_ChkDayTime(tMonsterSiege_Data["Now_Time13"]) then
		nIndex = 3
	end
	if Sys_ChkDayTime(tMonsterSiege_Data["Now_Time14"]) then
		nIndex = 4
	end
	return nIndex
end
---清动态表
function MonsterSiege_ClearGlobal()
	--不在活动时间内
	if not Sys_ChkFullTime(tMonsterSiege_Data["Now_Time"]) then
		return
	end
	--判断时间
	if Sys_ChkDayTime(tMonsterSiege_Data["Now_Time21"]) or Sys_ChkDayTime(tMonsterSiege_Data["Now_Time22"]) or Sys_ChkDayTime(tMonsterSiege_Data["Now_Time23"])then
	
	---判断是否已清
		local sDataStr5 = Get_SysDynaGlobalDataStr5(tMonsterSiege_GlobId[10])
		if sDataStr5 == "1" then
			return
		end
	--动态存储表
		for i=1,10 do
			local nSysDyGlobId = tMonsterSiege_GlobId[i]
			Sys_SetSynaGlobalData1(nSysDyGlobId,0) --伤害值
			Sys_SetSynaGlobalData2(nSysDyGlobId,0) --玩家id
			Sys_SetSynaGlobalDataStr1(nSysDyGlobId,"0")  --玩家名字
			Sys_SetSynaGlobalDataStr2(nSysDyGlobId,"0")
		end
		Sys_SetSynaGlobalDataStr5(tMonsterSiege_GlobId[10],"1") 
		Sys_SetSynaGlobalData5(tMonsterSiege_GlobId[10],0)  --动态码标志刷出大boss
		Sys_SetSynaGlobalData4(tMonsterSiege_GlobId[10],0)
		--清怪物
		MonsterSiege_MoveMonster()
	else
		Sys_SetSynaGlobalDataStr5(tMonsterSiege_GlobId[10],"0")
	end
end
--清掩码
function MonsterSiege_ClearStc()
	local nEvent = tMonsterSiege_Stc[1]["EventType"]
	local nType = tMonsterSiege_Stc[1]["DataType"]
	if Task_StcInterval(nEvent,nType,1,4) then  --隔天
		MonsterSiege_SetStc(1,0)
		-- MonsterSiege_SetStc(2,0)
	end
	-- if Sys_ChkDayTime(tMonsterSiege_Data["Now_Time21"]) or Sys_ChkDayTime(tMonsterSiege_Data["Now_Time22"]) or Sys_ChkDayTime(tMonsterSiege_Data["Now_Time23"])then
		-- MonsterSiege_SetStc(1,0)
		-- MonsterSiege_SetStc(2,0)
	-- end
end

	----------判断场次对不对
-- function MonsterSiege_JudgeTimes()
	-- local nIndex = 0 
	-- if  Sys_ChkDayTime(tMonsterSiege_Data["Now_Time31"]) then
		-- nIndex = 1
	-- end
	-- if Sys_ChkDayTime(tMonsterSiege_Data["Now_Time32"]) then
		-- nIndex = 2
	-- end
	-- if  Sys_ChkDayTime(tMonsterSiege_Data["Now_Time33"]) then
		-- nIndex = 3
	-- end
	-- local nNumber = MonsterSiege_GetStc(2)
	-- if nIndex ~= nNumber then
		-- return true
	-- else
		-- return false
	-- end
-- end



---------------------------------------------物品逻辑---------------------------------------------
function MonsterSiege_UseItem(nItemId)
	Sys_DialogTaskClear()
	Sys_DialogText(tMonsterSiege_Text[nItemId])
	Sys_DialogOption(tMonsterSiege_Text["Option1"][nItemId],"</F>MonsterSiege_UseItem11</N>" .. nItemId)
	Sys_DialogOption(tMonsterSiege_Text["Option2"],"</F>MonsterSiege_UseItem12</N>" .. nItemId)
	Sys_DialogEnd()
end
function MonsterSiege_UseItem11(nItemId)
	if tMonsterSiege_Item[nItemId][1]["Space"] then
		local nSpcae = tMonsterSiege_Item[nItemId][1]["Space"]
		if not User_CheckLeftSpace(nSpcae) then
			local sSpace = string.format(tMonsterSiege_Text["MsgBox"]["NoSpace"],nSpcae)
			Sys_MsgBox(sSpace)
			return
		end
	end
	local nData1 = Get_SysDynaGlobalData1(tMonsterSiege_GlobId["Limit"])
	local nData2 = Get_SysDynaGlobalData2(tMonsterSiege_GlobId["Limit"])
	local nNumber = 1  ---标志限制是否满了
	if nItemId == 3200718 and nData1 == 1 then
		nNumber = 2
	end
	if nItemId == 3200720 and nData2 == 1 then
		nNumber = 2
	end

	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local tGetReward = {}
		if nNumber == 2 then
			tGetReward = RewardTemplate_Random(tMonsterSiege_Item[nItemId],2)
		else 
			tGetReward = RewardTemplate_Random(tMonsterSiege_Item[nItemId],1)
		end
		local nRewardId = tGetReward[1]["tAward"][1]["RewardItem"][1]["Id"]
		local nRewardNum = tGetReward[1]["tAward"][1]["RewardItem"][1]["Num"]
		if nRewardId == 730008 then
			Sys_SetSynaGlobalData1(tMonsterSiege_GlobId["Limit"],1)
		end
		if nRewardId == 3009003 then
			Sys_SetSynaGlobalData2(tMonsterSiege_GlobId["Limit"],1)
		end
		local sName = ""
		if tMonsterSiege_Text["Stone"][nRewardId] then
			sName = tMonsterSiege_Text["Stone"][nRewardId]
		end
		sName = sName .. Get_ItemtypeName(nRewardId)
		if tMonsterSiege_Item[nItemId][1]["Zeng"] then
			sName = sName .. tMonsterSiege_Text["Zeng"]
		end
		local sText = string.format(tMonsterSiege_Text["GetItem"],nRewardNum,sName)
		local nFlag = 0
		local nTemp = 0
		for k,v in pairs(tMonsterSiege_ItemBroadcast["Id"]) do
			if nRewardId == v then
				nFlag = 1
			end
		end
		if nFlag == 1 then
			if nRewardNum == tMonsterSiege_ItemBroadcast[nRewardId] then
				nTemp = 1
			end
		end
		if nTemp == 1 then
			local nUserId = Get_UserId()
			local sUserName = Get_UserName(nUserId)
			local sItemName = Get_ItemtypeName(nItemId)
			local sStr = string.format(tMonsterSiege_Text["GetItemBroad"],sUserName,sItemName,nRewardNum,sName)
			-- Sys_SystemBroadcast(sStr)
			Sys_NormalBroadcast(sStr)
		end
		User_EffectAdd("self",tMonsterSiege_Data["Effect"])  --光效
		User_TalkChannel2005(sText)
	end
end
function MonsterSiege_UseItem12(nItemId)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_Reward(tMonsterSiege_StrengthValue[nItemId])
		User_EffectAdd("self",tMonsterSiege_Data["Effect"])  --光效
	end
end
---------------------------------------------怪物逻辑---------------------------------------------
--每分钟刷出一个怪
function MonsterSiege_BrushMonster()
	local nSysDyGlobId = tMonsterSiege_GlobId["NewServeyLimit"]
	local nData = Get_SysDynaGlobalData0(nSysDyGlobId)  --场次
	if nData == 0 then
		return
	end

	MonsterSiege_ClearGlobal()  --是否动态表
	--不在活动时间内
	if not Sys_ChkFullTime(tMonsterSiege_Data["Now_Time"]) then
		return
	end

	local nNumber = MonsterSiege_JudgeTime()
	if nNumber > 0 then --不在战斗时间内
		return
	end
	local nTimes =Get_SysDynaGlobalData5(tMonsterSiege_GlobId[10]) + 1 -- 第几波
	if nTimes > tMonsterSiege_Data["Times"] then
		return
	end
	local nTemp = 1 --表示正常怪物数量
	local nBossNum = 1
	local nMapId = tMonsterSiege_Data["MapId"]
	-- local nGenId = tMonsterSiege_Data["GenId"][]
	if Sys_ChkFullTime(tMonsterSiege_Data["Last_Time"]) then
		nTemp = 2
	end

-------------------------------------------精英怪和头目------------------------------------------------
	----精英
	for i = 3938,3939 do
		
		if tMonsterSiege_MonsterNum[nTemp][i][nTimes] ~= nil then

			local tTab = MonsterSiege_MonsterPosition(tMonsterSiege_MonsterPos[i])
			for j = 1,tMonsterSiege_MonsterNum[nTemp][i][nTimes] do
				local nPosX = tTab[j][1]
				local nPosY = tTab[j][2]
				local nFlag1 = math.random(1,#tMonsterSiege_Data["GenId"][i])
				Monster_AddMonster(nMapId,nPosX,nPosY,tMonsterSiege_Data["GenId"][i][nFlag1],i)  --刷出boss
				Map_Effect(nMapId,nPosX+2,nPosY,tMonsterSiege_Data[i]) --光效
				-- local nMonsterNum = Get_SysTempData(1,nMapId,i)
				-- Sys_SetTempData(1,nMapId,i,nMonsterNum+1)
			if i == tMonsterSiege_MonsterNum["MonsterId"][3] then
				Sys_GmBroadcast(tMonsterSiege_Text["MsgBox"]["Broadcast2"])  --精英怪全服公告
			end
			if i == tMonsterSiege_MonsterNum["MonsterId"][2] then
				Sys_GmBroadcast(tMonsterSiege_Text["MsgBox"]["Broadcast4"])  --小头目全服公告
			end

			end
		end
	end
--------------------------------------判断是否刷新世界boss--------------------------------------
	if nTimes == tMonsterSiege_Data["Times"] then  --判断是否15波

		for i = 1,nBossNum do
			local nPosX = tMonsterSiege_MonsterPos[3940][i][1]
			local nPosY = tMonsterSiege_MonsterPos[3940][i][2]
			local nMonsterId = tMonsterSiege_MonsterNum["MonsterId"][4]
			local nFlag2 = math.random(1,#tMonsterSiege_Data["GenId"][nMonsterId])
			Monster_AddMonster(nMapId,nPosX,nPosY,tMonsterSiege_Data["GenId"][nMonsterId][nFlag2],nMonsterId)  --刷出boss
			--播放光效
			Map_Effect(nMapId,nPosX+2,nPosY,tMonsterSiege_Data["BossEffect"]) --光效
		end
		Sys_GmBroadcast(tMonsterSiege_Text["MsgBox"]["Broadcast1"])  --全服公告
		-- local nMonsterNum = Get_SysTempData(1,nMapId,tMonsterSiege_MonsterNum["MonsterId"][4])
		-- Sys_SetTempData(1,nMapId,tMonsterSiege_MonsterNum["MonsterId"][4],nMonsterNum+nBossNum)
		Sys_SetSynaGlobalData5(tMonsterSiege_GlobId[10],nTimes)  --场次

	end

	Sys_SetSynaGlobalData5(tMonsterSiege_GlobId[10],nTimes)  --记录场次
end
---随机坐标
function MonsterSiege_MonsterPosition(tPos)
	local tAward = {}
	for i= 1,#tPos do
		tAward[i] = tPos[i]
	end
	local tTemp={} 
	for i=1,#tAward do  
		local na = math.random(#tAward)
		table.insert(tTemp,tAward[na])
		table.remove(tAward,na)
	end
	return tTemp
end
---杀死boss  		Sys_MsgBox(tostring(nUserId)) --测试
function MonsterSiege_Monster(nMonsterId)

	MonsterSiege_ClearStc() --清掩码
	--不在活动时间内
	if not Sys_ChkFullTime(tMonsterSiege_Data["Now_Time"]) then
		return
	end
	--打掩码
	if MonsterSiege_ChkStc(1,"<",1) then
		MonsterSiege_SetStc(1,1)
	end

--置动态码
	if nMonsterId == tMonsterSiege_MonsterNum["MonsterId"][4] then
		local nNum11 = 1

		Sys_SetSynaGlobalData4(tMonsterSiege_GlobId[10],nNum11)
	end
	if nMonsterId == tMonsterSiege_MonsterNum["MonsterId"][1] then  ---小怪
		local flat,tNum = Probabil_RandomAward(tMonsterSiege_MonsterDrop,3937)  
		local nItemId = tNum[1]["tAward"][1]["Item_1"]
		if nItemId ~= 0 then
			local nPosX = Get_MonsterPosX()
			local nPosY = Get_MonsterPosY()
			local nMapId = tMonsterSiege_Data["MapId"]

			--怪物掉落物品
			Map_DropMultiItems(nMapId,nItemId,nPosX,nPosY,2,2,1,60)
			local sItem = Get_ItemtypeName(nItemId)
			local sStr = string.format(tMonsterSiege_Text["MsgBox"]["KillMonster2"],sItem)
			User_TalkChannel2005(sStr)
		end

		return
	end
	local nNumber = #tMonsterSiege_MonsterDrop[nMonsterId]  --物品种类
	-- if nMonsterId == tMonsterSiege_MonsterNum["MonsterId"][3] then  --精英怪物掉落龙珠
		-- local nRandom = math.random(1,10000)
		-- if nRandom > tMonsterSiege_MonsterDrop[3939][9]["Random"] then
			-- nNumber = nNumber - 1
		-- else
		-- 打log
			-- Sys_SaveActionFestivalLog(tMonsterSiege_MonsterDrop["Log"]["longzhu"])
		-- end
	-- end
---掉落物品
	if nMonsterId ~= tMonsterSiege_MonsterNum["MonsterId"][4] then
		for i = 1,nNumber do
			local nPosX = Get_MonsterPosX()
			local nPosY = Get_MonsterPosY()
			local nMapId = tMonsterSiege_Data["MapId"]
			local nItemId = tMonsterSiege_MonsterDrop[nMonsterId][i]["ItemId"]
			local nItemNum = tMonsterSiege_MonsterDrop[nMonsterId][i]["Num"]
			Map_DropMultiItems(nMapId,nItemId,nPosX,nPosY,8,8,nItemNum,60)--12
		end
	end
--出提示
	if nMonsterId == tMonsterSiege_MonsterNum["MonsterId"][4] then  --世界boss
		User_TalkChannel2005(tMonsterSiege_Text["MsgBox"]["KillMonster1"])
		local sName = Get_UserName()
		local sIndex = string.format(tMonsterSiege_Text["MsgBox"]["Broadcast3"],sName)
		Sys_GmBroadcast(sIndex)
		Sys_SaveEmoneyBuy(tMonsterSiege_Data["Emoneylog"][1])  ---emoneybuglog
	end
	--怪物数量
	-- local nMonsterNum = Get_SysTempData(1,tMonsterSiege_Data["MapId"],nMonsterId)
	-- Sys_SetTempData(1,tMonsterSiege_Data["MapId"],nMonsterId,nMonsterNum-1)
	--打log
	if tMonsterSiege_MonsterDrop["Log"][nMonsterId] ~= nil then
		Sys_SaveActionFestivalLog(tMonsterSiege_MonsterDrop["Log"][nMonsterId])
	end
end

function MonsterSiege_KillBoss(nServerId,nUserId,nRank,nDmg,nMonsterId)
	if nRank == 1 then
		MonsterSiege_SetGlobal(1,nDmg,nUserId)
	elseif nRank == 2 then
		MonsterSiege_SetGlobal(2,nDmg,nUserId)
	elseif nRank == 3 then
		MonsterSiege_SetGlobal(3,nDmg,nUserId)
	elseif nRank == 4 then
		MonsterSiege_SetGlobal(4,nDmg,nUserId)
	elseif nRank == 5 then
		MonsterSiege_SetGlobal(5,nDmg,nUserId)
	elseif nRank == 6 then
		MonsterSiege_SetGlobal(6,nDmg,nUserId)
	elseif nRank == 7 then
		MonsterSiege_SetGlobal(7,nDmg,nUserId)
	elseif nRank == 8 then
		MonsterSiege_SetGlobal(8,nDmg,nUserId)
	elseif nRank == 9 then
		MonsterSiege_SetGlobal(9,nDmg,nUserId)
	else
		MonsterSiege_SetGlobal(10,nDmg,nUserId)
	end
end

---变化对白
function MonsterSiege_Text15()
	local nNumber = MonsterSiege_JudgeTime()
	if nNumber > 0  then
		local sStr = string.format(tMonsterSiege_Text[19371]["Text151"],tMonsterSiege_Text[nNumber])
		tNpcGossip[19371]["Text151"] = sStr
	elseif Sys_ChkFullTime(tMonsterSiege_Data["Last_Time"]) then
			tNpcGossip[19371]["Text151"] = tMonsterSiege_Text[19371]["Text621"]
	else 
		tNpcGossip[19371]["Text151"] = tMonsterSiege_Text[19371]["Text131"]
	end

	return true

end

function MonsterSiege_KillBossAward(nServerId,nUserId,nRank,nDmg,nMonsterId)
	-- 打掩码
	if MonsterSiege_ChkStc(1,"<",1,nUserId) then
		MonsterSiege_SetStc(1,1,nUserId)
	end
end

----全服公告
function MonsterSiege_SendInMap()
	local nSysDyGlobId = tMonsterSiege_GlobId["NewServeyLimit"]
	local nData = Get_SysDynaGlobalData0(nSysDyGlobId)  --场次
	if nData == 0 then
		return
	end
	Sys_InviteFilter(2,"level >= 100")
	Sys_InviteTrans(tMonsterSiege_Data["MapId"],tMonsterSiege_Data["Invite_Pos"],10556,10557,2,30)
end
----隔天移走怪物
function MonsterSiege_MoveMonster()
	for i= 3937,3940 do
		Monster_DelMonster(1002,i)
		Sys_GmBroadcast(tMonsterSiege_Text["DelMonster"])
	end

end

---最后一天清怪
function MonsterSiege_ClearMonster()
	if not Sys_ChkFullTime(tMonsterSiege_Data["Aft_Time"]) then
		return
	end
	for i= 3937,3940 do
		Monster_DelMonster(1002,i)
	end
end
---------------------------------------------npc模板---------------------------------------------
---------------------------飞将军李光 19371
tNpcFace[4263] = 107

tNpcGossip[19371] = tNpcGossip[19371] or DefaultNpc:new{}
tNpcGossip[19371]["OptionHidden"] = 1
--活动时间前
tNpcGossip[19371]["Text1-1"] = {111,112,115,113,114}
tNpcGossip[19371]["Text111"] = tMonsterSiege_Text[19371]["Text111"]
tNpcGossip[19371]["Text112"] = tMonsterSiege_Text[19371]["Text112"]
tNpcGossip[19371]["Text115"] = tMonsterSiege_Text[19371]["Text115"]
tNpcGossip[19371]["Text113"] = tMonsterSiege_Text[19371]["Text113"]
tNpcGossip[19371]["Text114"] = tMonsterSiege_Text[19371]["Text114"]

tNpcGossip[19371]["tOption1-1"] = {1}
tNpcGossip[19371]["Option1"] = tMonsterSiege_Text[19371]["Option1"]
tNpcGossip[19371]["ChkFunc1-1"] = function()
	MonsterSiege_ClearStc()
	MonsterSiege_ClearGlobal()
	return Sys_ChkFullTime(tMonsterSiege_Data["Bef_Time"])
end
-- Sys_ChkDayTime(sParam)
--活动时间后一天内
tNpcGossip[19371]["Text1-2"] = {121,122}
tNpcGossip[19371]["Text121"] = tMonsterSiege_Text[19371]["Text711"]
tNpcGossip[19371]["Text122"] = tMonsterSiege_Text[19371]["Text712"]
tNpcGossip[19371]["tOption1-2"] = {71,72,73}
tNpcGossip[19371]["Option71"] = tMonsterSiege_Text[19371]["Option71"]
tNpcGossip[19371]["OptionFunc71"] = "MonsterSiege_Reward</N>19371"  --领奖励
tNpcGossip[19371]["Option72"] = tMonsterSiege_Text[19371]["Option72"]
tNpcGossip[19371]["OptionFunc72"] = "MonsterSiege_PutRanking</N>19371"  ---函数出
tNpcGossip[19371]["Option73"] = tMonsterSiege_Text[19371]["Option73"]
tNpcGossip[19371]["ChkFunc1-2"] = function()
	MonsterSiege_ClearStc()
	MonsterSiege_ClearGlobal()
	return Sys_ChkFullTime(tMonsterSiege_Data["Aft_Time"])
end
--活动时间后
tNpcGossip[19371]["Text1-3"] = {131}
tNpcGossip[19371]["Text131"] = tMonsterSiege_Text[19371]["Text161"]
tNpcGossip[19371]["tOption1-3"] = {21}
tNpcGossip[19371]["Option21"] = tMonsterSiege_Text[19371]["Option21"]
tNpcGossip[19371]["ChkFunc1-3"] = function()
	return not Sys_ChkFullTime(tMonsterSiege_Data["Now_Time"])
end

-----活动中（战斗时间内）
--等级不足
tNpcGossip[19371]["Text1-4"] = {141,142,144,143,144}
tNpcGossip[19371]["Text141"] = tMonsterSiege_Text[19371]["Text121"]
tNpcGossip[19371]["Text142"] = tMonsterSiege_Text[19371]["Text122"]
tNpcGossip[19371]["Text143"] = tMonsterSiege_Text[19371]["Text123"]
tNpcGossip[19371]["Text144"] = tMonsterSiege_Text[19371]["Text125"]

tNpcGossip[19371]["tOption1-4"] = {31}
tNpcGossip[19371]["Option31"] = tMonsterSiege_Text[19371]["Option1"]
tNpcGossip[19371]["ChkFunc1-4"] = function()
	return MonsterSiege_ChkLevel()
end

--等级满足
tNpcGossip[19371]["Text1-5"] = {151,152,154,153}
tNpcGossip[19371]["Text151"] = tMonsterSiege_Text[19371]["Text131"]
tNpcGossip[19371]["Text152"] = tMonsterSiege_Text[19371]["Text132"]
tNpcGossip[19371]["Text153"] = tMonsterSiege_Text[19371]["Text133"]
tNpcGossip[19371]["Text154"] = tMonsterSiege_Text[19371]["Text135"]

tNpcGossip[19371]["tOption1-5"] = {32,33,34,35}
tNpcGossip[19371]["Option32"] = tMonsterSiege_Text[19371]["Option42"]
tNpcGossip[19371]["OptionFunc32"] = "MonsterSiege_Reward</N>19371"  --领奖励
-- tNpcGossip[19371]["OptionChkFunc32"] = function()
	-- local nNumber = MonsterSiege_JudgeTime()
	-- return  (nNumber > 0)
-- end
tNpcGossip[19371]["Option33"] = tMonsterSiege_Text[19371]["Option32"]  --了解详情
tNpcGossip[19371]["OptionPoint33"] = "3-1"
tNpcGossip[19371]["Option34"] = tMonsterSiege_Text[19371]["Option33"]  ---查看守城英雄榜
tNpcGossip[19371]["OptionFunc34"] = "MonsterSiege_PutRanking</N>19371"  ---函数出
-- tNpcGossip[19371]["OptionChkFunc34"] = function()
	-- local nData = Get_SysDynaGlobalData5(tMonsterSiege_GlobId[10])
	-- return nData >= tMonsterSiege_Data["Times"]
-- end
tNpcGossip[19371]["Option35"] = tMonsterSiege_Text[19371]["Option34"]

tNpcGossip[19371]["ChkFunc1-5"] = function()

	MonsterSiege_ClearStc()  --清掩码
	MonsterSiege_ClearGlobal()  --清动态表

	return MonsterSiege_Text15()
end
------ 接1、领取犒赏
-- 【未参加战斗】
tNpcGossip[19371]["Text2-1"] = {211}
tNpcGossip[19371]["Text211"] = tMonsterSiege_Text[19371]["Text211"]
tNpcGossip[19371]["tOption2-1"] = {45}
tNpcGossip[19371]["Option45"] = tMonsterSiege_Text[19371]["Option45"]

-- 【已领犒赏】
tNpcGossip[19371]["Text2-2"] = {221}
tNpcGossip[19371]["Text221"] = tMonsterSiege_Text[19371]["Text221"]
tNpcGossip[19371]["tOption2-2"] = {46}
tNpcGossip[19371]["Option46"] = tMonsterSiege_Text[19371]["Option46"]
-- 【背包空间不足】
tNpcGossip[19371]["Text2-3"] = {231}
tNpcGossip[19371]["Text231"] = tMonsterSiege_Text[19371]["Text231"]
tNpcGossip[19371]["tOption2-3"] = {47}
tNpcGossip[19371]["Option47"] = tMonsterSiege_Text[19371]["Option47"]
-- 【活动结束前未刷新boss】
tNpcGossip[19371]["Text2-4"] = {241}
tNpcGossip[19371]["Text241"] = tMonsterSiege_Text[19371]["Text241"]
tNpcGossip[19371]["tOption2-4"] = {48}
tNpcGossip[19371]["Option48"] = tMonsterSiege_Text[19371]["Option48"]
-- 【接1、战斗中无法领取奖励】
tNpcGossip[19371]["Text2-5"] = {251}
tNpcGossip[19371]["Text251"] = tMonsterSiege_Text[19371]["Text251"]
tNpcGossip[19371]["tOption2-5"] = {49}
tNpcGossip[19371]["Option49"] = tMonsterSiege_Text[19371]["Option49"]

-------接2、了解详情
tNpcGossip[19371]["Text3-1"] = {311,312,313,314,318,315,316,317}
tNpcGossip[19371]["Text311"] = tMonsterSiege_Text[19371]["Text311"]
tNpcGossip[19371]["Text312"] = tMonsterSiege_Text[19371]["Text312"]
tNpcGossip[19371]["Text313"] = tMonsterSiege_Text[19371]["Text313"]
tNpcGossip[19371]["Text314"] = tMonsterSiege_Text[19371]["Text314"]
tNpcGossip[19371]["Text318"] = tMonsterSiege_Text[19371]["Text318"]
tNpcGossip[19371]["Text315"] = tMonsterSiege_Text[19371]["Text315"]
tNpcGossip[19371]["Text316"] = tMonsterSiege_Text[19371]["Text316"]
tNpcGossip[19371]["Text317"] = tMonsterSiege_Text[19371]["Text317"]
tNpcGossip[19371]["tOption3-1"] = {51}
tNpcGossip[19371]["Option51"] = tMonsterSiege_Text[19371]["Option51"]

-- 接A、领取排名奖赏。
-- 【背包空间不足】
tNpcGossip[19371]["Text4-1"] = {411}
tNpcGossip[19371]["Text411"] = tMonsterSiege_Text[19371]["Text431"]
tNpcGossip[19371]["tOption4-1"] = {55}
tNpcGossip[19371]["Option55"] = tMonsterSiege_Text[19371]["Option55"]
-- 接B、查看排名奖赏
tNpcGossip[19371]["Text5-1"] = {511,512,513,514,515,516,517,518,519,520,521,522,523,524,525}
tNpcGossip[19371]["Text511"] = tMonsterSiege_Text[19371]["Text511"]
tNpcGossip[19371]["Text512"] = tMonsterSiege_Text[19371]["Text512"]
tNpcGossip[19371]["Text513"] = tMonsterSiege_Text[19371]["Text513"]
tNpcGossip[19371]["Text514"] = tMonsterSiege_Text[19371]["Text514"]
tNpcGossip[19371]["Text515"] = tMonsterSiege_Text[19371]["Text515"]
tNpcGossip[19371]["Text516"] = tMonsterSiege_Text[19371]["Text516"]
tNpcGossip[19371]["Text517"] = tMonsterSiege_Text[19371]["Text517"]
tNpcGossip[19371]["Text518"] = tMonsterSiege_Text[19371]["Text518"]
tNpcGossip[19371]["Text519"] = tMonsterSiege_Text[19371]["Text519"]
tNpcGossip[19371]["Text520"] = tMonsterSiege_Text[19371]["Text520"]
tNpcGossip[19371]["Text521"] = tMonsterSiege_Text[19371]["Text521"]
tNpcGossip[19371]["Text522"] = tMonsterSiege_Text[19371]["Text522"]
tNpcGossip[19371]["Text523"] = tMonsterSiege_Text[19371]["Text523"]
tNpcGossip[19371]["Text524"] = tMonsterSiege_Text[19371]["Text524"]
tNpcGossip[19371]["Text525"] = tMonsterSiege_Text[19371]["Text525"]
tNpcGossip[19371]["tOption5-1"] = {61}
tNpcGossip[19371]["Option61"] = tMonsterSiege_Text[19371]["Option61"]

---【尚未击杀血煞夜帝】
tNpcGossip[19371]["Text7-1"] = {711}
tNpcGossip[19371]["Text711"] = tMonsterSiege_Text[19371]["Text721"]
tNpcGossip[19371]["tOption7-1"] = {75,74}
tNpcGossip[19371]["Option74"] = tMonsterSiege_Text[19371]["Option74"]
tNpcGossip[19371]["Option75"] = tMonsterSiege_Text[19371]["Option53"]
tNpcGossip[19371]["OptionPoint75"]="5-1"


---------------------------------------------物品模板---------------------------------------------
-- 3200717 - 3200720 义勇奋战赤炼包 - 驱邪扶正星陨包
tItem[3200717] = tItem[3200717] or {}
tItem[3200717]["Function"] = function (nItemId,sItemName)
	MonsterSiege_UseItem(nItemId)
end

for i= 3200718,3200720 do
	tItem[i] = tItem[3200717] or {}
end

---------------------------------------------怪物模板---------------------------------------------

 -- tMonster[3937] = tMonster[3937] or {}  -- 普通怪物
 -- tMonster[3937]["tFunction"] = tMonster[3937]["tFunction"] or {}
-- table.insert(tMonster[3937]["tFunction"],MonsterSiege_Monster)

 -- tMonster[3938] = tMonster[3938] or {}  --小头目
 -- tMonster[3938]["tFunction"] = tMonster[3938]["tFunction"] or {}
-- table.insert(tMonster[3938]["tFunction"],MonsterSiege_Monster)

 -- tMonster[3939] = tMonster[3939] or {}  --精英头目
 -- tMonster[3939]["tFunction"] = tMonster[3939]["tFunction"] or {}
-- table.insert(tMonster[3939]["tFunction"],MonsterSiege_Monster)

 -- tMonster[3940] = tMonster[3940] or {}  --世界BOSS
 -- tMonster[3940]["tFunction"] = tMonster[3940]["tFunction"] or {}
-- table.insert(tMonster[3940]["tFunction"],MonsterSiege_Monster)


------------------伤害排行榜
-- tBossDamageBonus[3940] = tBossDamageBonus[3940] or {}
-- tBossDamageBonus[3940]["tFunction"] = tBossDamageBonus[3940]["tFunction"] or {}
-- table.insert(tBossDamageBonus[3940]["tFunction"],MonsterSiege_KillBoss)


-- tBossRewardEnd[3940] = tBossRewardEnd[3940] or {}
-- tBossRewardEnd[3940]["tFunction"] = tBossRewardEnd[3940]["tFunction"] or {}
-- table.insert(tBossRewardEnd[3940]["tFunction"],MonsterSiege_KillBossAward)


-------------------时间检测(每分钟刷一波)
-- table.insert(tSystem_Prompet_Func,MonsterSiege_BrushMonster)

-- ---第一波
-- tOntimerMin_HM[1230] = tOntimerMin_HM[1230] or {}
-- table.insert(tOntimerMin_HM[1230],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1231] = tOntimerMin_HM[1231] or {}
-- table.insert(tOntimerMin_HM[1231],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1232] = tOntimerMin_HM[1232] or {}
-- table.insert(tOntimerMin_HM[1232],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1233] = tOntimerMin_HM[1233] or {}
-- table.insert(tOntimerMin_HM[1233],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1234] = tOntimerMin_HM[1234] or {}
-- table.insert(tOntimerMin_HM[1234],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1235] = tOntimerMin_HM[1235] or {}
-- table.insert(tOntimerMin_HM[1235],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1236] = tOntimerMin_HM[1236] or {}
-- table.insert(tOntimerMin_HM[1236],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1237] = tOntimerMin_HM[1237] or {}
-- table.insert(tOntimerMin_HM[1237],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1238] = tOntimerMin_HM[1238] or {}
-- table.insert(tOntimerMin_HM[1238],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1239] = tOntimerMin_HM[1239] or {}
-- table.insert(tOntimerMin_HM[1239],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1240] = tOntimerMin_HM[1240] or {}
-- table.insert(tOntimerMin_HM[1240],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1241] = tOntimerMin_HM[1241] or {}
-- table.insert(tOntimerMin_HM[1241],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1242] = tOntimerMin_HM[1242] or {}
-- table.insert(tOntimerMin_HM[1242],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1243] = tOntimerMin_HM[1243] or {}
-- table.insert(tOntimerMin_HM[1243],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1244] = tOntimerMin_HM[1244] or {}
-- table.insert(tOntimerMin_HM[1244],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1245] = tOntimerMin_HM[1245] or {}
-- table.insert(tOntimerMin_HM[1245],MonsterSiege_BrushMonster)

-- ---第二波
-- tOntimerMin_HM[1930] = tOntimerMin_HM[1930] or {}
-- table.insert(tOntimerMin_HM[1930],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1931] = tOntimerMin_HM[1931] or {}
-- table.insert(tOntimerMin_HM[1931],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1932] = tOntimerMin_HM[1932] or {}
-- table.insert(tOntimerMin_HM[1932],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1933] = tOntimerMin_HM[1933] or {}
-- table.insert(tOntimerMin_HM[1933],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1934] = tOntimerMin_HM[1934] or {}
-- table.insert(tOntimerMin_HM[1934],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1935] = tOntimerMin_HM[1935] or {}
-- table.insert(tOntimerMin_HM[1935],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1936] = tOntimerMin_HM[1936] or {}
-- table.insert(tOntimerMin_HM[1936],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1937] = tOntimerMin_HM[1937] or {}
-- table.insert(tOntimerMin_HM[1937],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1938] = tOntimerMin_HM[1938] or {}
-- table.insert(tOntimerMin_HM[1938],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1939] = tOntimerMin_HM[1939] or {}
-- table.insert(tOntimerMin_HM[1939],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1940] = tOntimerMin_HM[1940] or {}
-- table.insert(tOntimerMin_HM[1940],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1941] = tOntimerMin_HM[1941] or {}
-- table.insert(tOntimerMin_HM[1941],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1942] = tOntimerMin_HM[1942] or {}
-- table.insert(tOntimerMin_HM[1942],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1943] = tOntimerMin_HM[1943] or {}
-- table.insert(tOntimerMin_HM[1943],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1944] = tOntimerMin_HM[1944] or {}
-- table.insert(tOntimerMin_HM[1944],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1945] = tOntimerMin_HM[1945] or {}
-- table.insert(tOntimerMin_HM[1945],MonsterSiege_BrushMonster)

-- ---第3波
-- tOntimerMin_HM[2200] = tOntimerMin_HM[2200] or {}
-- table.insert(tOntimerMin_HM[2200],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[2201] = tOntimerMin_HM[2201] or {}
-- table.insert(tOntimerMin_HM[2201],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[2202] = tOntimerMin_HM[2202] or {}
-- table.insert(tOntimerMin_HM[2202],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[2203] = tOntimerMin_HM[2203] or {}
-- table.insert(tOntimerMin_HM[2203],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[2204] = tOntimerMin_HM[2204] or {}
-- table.insert(tOntimerMin_HM[2204],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[2205] = tOntimerMin_HM[2205] or {}
-- table.insert(tOntimerMin_HM[2205],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[2206] = tOntimerMin_HM[2206] or {}
-- table.insert(tOntimerMin_HM[2206],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[2207] = tOntimerMin_HM[2207] or {}
-- table.insert(tOntimerMin_HM[2207],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[2208] = tOntimerMin_HM[2208] or {}
-- table.insert(tOntimerMin_HM[2208],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[2209] = tOntimerMin_HM[2209] or {}
-- table.insert(tOntimerMin_HM[2209],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[2210] = tOntimerMin_HM[2210] or {}
-- table.insert(tOntimerMin_HM[2210],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[2211] = tOntimerMin_HM[2211] or {}
-- table.insert(tOntimerMin_HM[2211],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[2212] = tOntimerMin_HM[2212] or {}
-- table.insert(tOntimerMin_HM[2212],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[2213] = tOntimerMin_HM[2213] or {}
-- table.insert(tOntimerMin_HM[2213],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[2214] = tOntimerMin_HM[2214] or {}
-- table.insert(tOntimerMin_HM[2214],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[2215] = tOntimerMin_HM[2215] or {}
-- table.insert(tOntimerMin_HM[2215],MonsterSiege_BrushMonster)

-- ---清动态表
-- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
-- table.insert(tOntimerMin_HM[0001],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
-- table.insert(tOntimerMin_HM[0002],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
-- table.insert(tOntimerMin_HM[0003],MonsterSiege_BrushMonster)

-- tOntimerMin_HM[1927] = tOntimerMin_HM[1927] or {}
-- table.insert(tOntimerMin_HM[1927],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1928] = tOntimerMin_HM[1928] or {}
-- table.insert(tOntimerMin_HM[1928],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[1929] = tOntimerMin_HM[1929] or {}
-- table.insert(tOntimerMin_HM[1929],MonsterSiege_BrushMonster)

-- tOntimerMin_HM[2157] = tOntimerMin_HM[2157] or {}
-- table.insert(tOntimerMin_HM[2157],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[2158] = tOntimerMin_HM[2158] or {}
-- table.insert(tOntimerMin_HM[2158],MonsterSiege_BrushMonster)
-- tOntimerMin_HM[2159] = tOntimerMin_HM[2159] or {}
-- table.insert(tOntimerMin_HM[2159],MonsterSiege_BrushMonster)
----最后一天清怪
-- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
-- table.insert(tOntimerMin_HM[0001],MonsterSiege_ClearMonster)
-- tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
-- table.insert(tOntimerMin_HM[0002],MonsterSiege_ClearMonster)
-- tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
-- table.insert(tOntimerMin_HM[0003],MonsterSiege_ClearMonster)

--全服公告
-- tOntimerMin_HM[1229] = tOntimerMin_HM[1229] or {}
-- table.insert(tOntimerMin_HM[1229],MonsterSiege_SendInMap)
-- tOntimerMin_HM[1929] = tOntimerMin_HM[1929] or {}
-- table.insert(tOntimerMin_HM[1929],MonsterSiege_SendInMap)
-- tOntimerMin_HM[2159] = tOntimerMin_HM[2159] or {}
-- table.insert(tOntimerMin_HM[2159],MonsterSiege_SendInMap)

