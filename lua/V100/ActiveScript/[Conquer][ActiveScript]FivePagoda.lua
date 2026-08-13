------------------------------------------------------------------------------------
--Name:			[ios英文征服][活动脚本]每日寻宝副本（7.16-8.15）
--Creator:		翁清海
--Created:		2019/07/01
------------------------------------------------------------------------------------

--命名前缀
--FivePagoda_

--logid:12001492

--掩码说明
--Stc(196,22)		保存玩家当前层是否进入（隔天重置）
--Stc(196,23)		保存玩家当前层奖励是否领取（隔天重置）
--Stc(196,24)		保存玩家打怪掉落第一层宝图数量（隔天重置）

--------------------------------------------数据部分配置--------------------------------------------
--玩家表
local tFivePagoda_Floor = {}

--常量表
local tFivePagoda_Cont = {}
	--活动时间
	tFivePagoda_Cont["ActTime"] = tActivityTime["FivePagoda"]["ActTime"]
	--副本id
	tFivePagoda_Cont["InstanceType"] = 327
	--第一层宝图
	tFivePagoda_Cont["TowerMap"] = 3322166
	--第一层宝图
	tFivePagoda_Cont["EMoney"] = {}
	tFivePagoda_Cont["EMoney"][1] = 9
	tFivePagoda_Cont["EMoney"][2] = 19
	tFivePagoda_Cont["EMoney"][3] = 29
	tFivePagoda_Cont["EMoney"][4] = 49
	tFivePagoda_Cont["EMoney"][5] = 99
	--传送坐标
	tFivePagoda_Cont["BoundTrans"] = {}
	tFivePagoda_Cont["BoundTrans"]["MapId"] = 1002
	tFivePagoda_Cont["BoundTrans"]["PosX"] = 372
	tFivePagoda_Cont["BoundTrans"]["PosY"] = 438
	tFivePagoda_Cont["BoundTransNoGift"] = {}
	tFivePagoda_Cont["BoundTransNoGift"]["MapId"] = 1036
	tFivePagoda_Cont["BoundTransNoGift"]["PosX"] = 205
	tFivePagoda_Cont["BoundTransNoGift"]["PosY"] = 182
	--动态NPC配置
	tFivePagoda_Cont["DynNpc"] = {}
	--宝箱
	tFivePagoda_Cont["DynNpc"]["Sort"] = 1
	tFivePagoda_Cont["DynNpc"]["Type"] = 2
	tFivePagoda_Cont["DynNpc"]["Action"] = 94489963
	tFivePagoda_Cont["DynNpc"]["Pos"] = {}
	tFivePagoda_Cont["DynNpc"]["Pos"][1] = {}
	tFivePagoda_Cont["DynNpc"]["Pos"][1]["PosX"] = 53
	tFivePagoda_Cont["DynNpc"]["Pos"][1]["PosY"] = 52
	tFivePagoda_Cont["DynNpc"]["Pos"][2] = {}
	tFivePagoda_Cont["DynNpc"]["Pos"][2]["PosX"] = 53
	tFivePagoda_Cont["DynNpc"]["Pos"][2]["PosY"] = 58
	tFivePagoda_Cont["DynNpc"]["Pos"][3] = {}
	tFivePagoda_Cont["DynNpc"]["Pos"][3]["PosX"] = 53
	tFivePagoda_Cont["DynNpc"]["Pos"][3]["PosY"] = 64
	tFivePagoda_Cont["DynNpc"]["Pos"][4] = {}
	tFivePagoda_Cont["DynNpc"]["Pos"][4]["PosX"] = 47
	tFivePagoda_Cont["DynNpc"]["Pos"][4]["PosY"] = 52
	tFivePagoda_Cont["DynNpc"]["Pos"][5] = {}
	tFivePagoda_Cont["DynNpc"]["Pos"][5]["PosX"] = 47
	tFivePagoda_Cont["DynNpc"]["Pos"][5]["PosY"] = 58
	tFivePagoda_Cont["DynNpc"]["Pos"][6] = {}
	tFivePagoda_Cont["DynNpc"]["Pos"][6]["PosX"] = 47
	tFivePagoda_Cont["DynNpc"]["Pos"][6]["PosY"] = 64
	tFivePagoda_Cont["DynNpc"]["LookFace"] = {}
	tFivePagoda_Cont["DynNpc"]["LookFace"][1] = 22440
	tFivePagoda_Cont["DynNpc"]["LookFace"][2] = 22450
	tFivePagoda_Cont["DynNpc"]["LookFace"][3] = 22460
	tFivePagoda_Cont["DynNpc"]["LookFace"][4] = 22470
	tFivePagoda_Cont["DynNpc"]["LookFace"][5] = 22480
	
--掩码表
local tFivePagoda_Stc = {}
	--保存玩家当前层是否进入（隔天重置）
	tFivePagoda_Stc[1] = {}
	tFivePagoda_Stc[1]["Event"] = 196
	tFivePagoda_Stc[1]["Type"] = 22
	tFivePagoda_Stc[1]["TimeType"] = 4
	tFivePagoda_Stc[1]["Delay"] = 1
	--保存玩家当前层奖励是否领取（隔天重置）
	tFivePagoda_Stc[2] = {}
	tFivePagoda_Stc[2]["Event"] = 196
	tFivePagoda_Stc[2]["Type"] = 23
	tFivePagoda_Stc[2]["TimeType"] = 4
	tFivePagoda_Stc[2]["Delay"] = 1
	
--二进制对应值
local tFivePagoda_ParseNumber = {}
	tFivePagoda_ParseNumber[1] = 1
	tFivePagoda_ParseNumber[2] = 2
	tFivePagoda_ParseNumber[3] = 4
	tFivePagoda_ParseNumber[4] = 8
	tFivePagoda_ParseNumber[5] = 16
	tFivePagoda_ParseNumber[6] = 32
	tFivePagoda_ParseNumber[7] = 64
	tFivePagoda_ParseNumber[8] = 128
	tFivePagoda_ParseNumber[9] = 256
	tFivePagoda_ParseNumber[10] = 512
	
local tFivePagoda_Log = {}
	tFivePagoda_Log["DelItem"] = "0,0,%d,%d,12001492,2,0,0"
	tFivePagoda_Log["Into"] = "0,0,0,0,12001492,1[1],0,0"
	
local tFivePagoda_ELog = {}
	tFivePagoda_ELog["Into"] = {}
	tFivePagoda_ELog["Into"][1] = "350	22335	%d	%d	1	"
	tFivePagoda_ELog["Into"][2] = "350	22336	%d	%d	1	"
	tFivePagoda_ELog["Into"][3] = "350	22337	%d	%d	1	"
	tFivePagoda_ELog["Into"][4] = "350	22348	%d	%d	1	"
	tFivePagoda_ELog["Into"][5] = "350	22349	%d	%d	1	"
	
--奖励表配置
local tFivePagoda_Reward = {}
	-- ===第1层宝箱奖励
	-- ===索引: tFivePagoda_Reward[1]
	tFivePagoda_Reward[1] = {}
	tFivePagoda_Reward[1]["ItemChanceSum"] = 10000
	tFivePagoda_Reward[1]["LogId"] = 12001492
	-- +2赤练石赠 - 35%
	tFivePagoda_Reward[1][1] = {}
	tFivePagoda_Reward[1][1]["RandomItemChanceType"] = 2
	tFivePagoda_Reward[1][1]["ItemChance"] = 3500
	tFivePagoda_Reward[1][1]["RewardItem"] = {}
	tFivePagoda_Reward[1][1]["RewardItem"][1] = {}
	tFivePagoda_Reward[1][1]["RewardItem"][1]["Id"] = 3305436 -- 【库】System.Byte[][属性:9], 【表格】+2赤练石赠
	tFivePagoda_Reward[1][1]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*1
	-- 微光星陨石*20 - 34%
	tFivePagoda_Reward[1][2] = {}
	tFivePagoda_Reward[1][2]["RandomItemChanceType"] = 2
	tFivePagoda_Reward[1][2]["ItemChance"] = 3400
	tFivePagoda_Reward[1][2]["RewardItem"] = {}
	tFivePagoda_Reward[1][2]["RewardItem"][1] = {}
	tFivePagoda_Reward[1][2]["RewardItem"][1]["Id"] = 3322167 -- 【库】System.Byte[][属性:9], 【表格】微光星陨石*20
	tFivePagoda_Reward[1][2]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*1
	-- 30赠品天石 - 31%
	tFivePagoda_Reward[1][3] = {}
	tFivePagoda_Reward[1][3]["RandomItemChanceType"] = 2
	tFivePagoda_Reward[1][3]["ItemChance"] = 3100
	tFivePagoda_Reward[1][3]["RewardItem"] = {}
	tFivePagoda_Reward[1][3]["RewardItem"][1] = {}
	tFivePagoda_Reward[1][3]["RewardItem"][1]["Id"] = 3301187 -- 【库】System.Byte[][属性:9], 【表格】30赠品天石
	tFivePagoda_Reward[1][3]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*1
	-- 300赠品天石 - 0%
	tFivePagoda_Reward[1][4] = {}
	tFivePagoda_Reward[1][4]["RandomItemChanceType"] = 2
	tFivePagoda_Reward[1][4]["ItemChance"] = 0
	tFivePagoda_Reward[1][4]["RewardItem"] = {}
	tFivePagoda_Reward[1][4]["RewardItem"][1] = {}
	tFivePagoda_Reward[1][4]["RewardItem"][1]["Id"] = 3301245 -- 【库】System.Byte[][属性:9], 【表格】300赠品天石
	tFivePagoda_Reward[1][4]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*1


	tFivePagoda_Reward[2] = {}
	-- ===第2层宝箱奖励
	-- ===索引: tFivePagoda_Reward[2]
	tFivePagoda_Reward[2]["ItemChanceSum"] = 10000
	tFivePagoda_Reward[2]["LogId"] = 12001492
	-- +3赤练石*1赠 - 35%
	tFivePagoda_Reward[2][1] = {}
	tFivePagoda_Reward[2][1]["RandomItemChanceType"] = 2
	tFivePagoda_Reward[2][1]["ItemChance"] = 3500
	tFivePagoda_Reward[2][1]["RewardItem"] = {}
	tFivePagoda_Reward[2][1]["RewardItem"][1] = {}
	tFivePagoda_Reward[2][1]["RewardItem"][1]["Id"] = 3301408 -- 【库】System.Byte[][属性:9], 【表格】+3赤练石*1赠
	tFivePagoda_Reward[2][1]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*1
	-- 明亮星陨石*3 - 34%
	tFivePagoda_Reward[2][2] = {}
	tFivePagoda_Reward[2][2]["RandomItemChanceType"] = 2
	tFivePagoda_Reward[2][2]["ItemChance"] = 3400
	tFivePagoda_Reward[2][2]["RewardItem"] = {}
	tFivePagoda_Reward[2][2]["RewardItem"][1] = {}
	tFivePagoda_Reward[2][2]["RewardItem"][1]["Id"] = 3306980 -- 【库】System.Byte[][属性:0], 【表格】明亮星陨石*3
	tFivePagoda_Reward[2][2]["RewardItem"][1]["Attr"] = "0 1 3" -- System.Byte[]*1
	-- 80赠品天石礼包 - 31%
	tFivePagoda_Reward[2][3] = {}
	tFivePagoda_Reward[2][3]["RandomItemChanceType"] = 2
	tFivePagoda_Reward[2][3]["ItemChance"] = 3100
	tFivePagoda_Reward[2][3]["RewardItem"] = {}
	tFivePagoda_Reward[2][3]["RewardItem"][1] = {}
	tFivePagoda_Reward[2][3]["RewardItem"][1]["Id"] = 3301242 -- 【库】System.Byte[][属性:9], 【表格】80赠品天石礼包
	tFivePagoda_Reward[2][3]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*1
	-- 七星宝钻*赠 - 0%
	tFivePagoda_Reward[2][4] = {}
	tFivePagoda_Reward[2][4]["RandomItemChanceType"] = 2
	tFivePagoda_Reward[2][4]["ItemChance"] = 0
	tFivePagoda_Reward[2][4]["RewardItem"] = {}
	tFivePagoda_Reward[2][4]["RewardItem"][1] = {}
	tFivePagoda_Reward[2][4]["RewardItem"][1]["Id"] = 1200006 -- 【库】System.Byte[][属性:9], 【表格】七星宝钻*赠
	tFivePagoda_Reward[2][4]["RewardItem"][1]["Attr"] = "0 1 3" -- System.Byte[]*1


	tFivePagoda_Reward[3] = {}
	-- ===第3层宝箱奖励
	-- ===索引: tFivePagoda_Reward[3]
	tFivePagoda_Reward[3]["ItemChanceSum"] = 10000
	tFivePagoda_Reward[3]["LogId"] = 12001492
	-- +3赤练石*2赠 - 35%
	tFivePagoda_Reward[3][1] = {}
	tFivePagoda_Reward[3][1]["RandomItemChanceType"] = 2
	tFivePagoda_Reward[3][1]["ItemChance"] = 3500
	tFivePagoda_Reward[3][1]["RewardItem"] = {}
	tFivePagoda_Reward[3][1]["RewardItem"][1] = {}
	tFivePagoda_Reward[3][1]["RewardItem"][1]["Id"] = 3305385 -- 【库】System.Byte[][属性:9], 【表格】+3赤练石*2赠
	tFivePagoda_Reward[3][1]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*1
	-- 龙鳞果*1 - 34%
	tFivePagoda_Reward[3][2] = {}
	tFivePagoda_Reward[3][2]["RandomItemChanceType"] = 2
	tFivePagoda_Reward[3][2]["ItemChance"] = 3400
	tFivePagoda_Reward[3][2]["RewardItem"] = {}
	tFivePagoda_Reward[3][2]["RewardItem"][1] = {}
	tFivePagoda_Reward[3][2]["RewardItem"][1]["Id"] = 3009101 -- 【库】System.Byte[][属性:0], 【表格】龙鳞果*1
	tFivePagoda_Reward[3][2]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*1
	-- 4阶灵珠 - 31%
	tFivePagoda_Reward[3][3] = {}
	tFivePagoda_Reward[3][3]["RandomItemChanceType"] = 2
	tFivePagoda_Reward[3][3]["ItemChance"] = 3100
	tFivePagoda_Reward[3][3]["RewardItem"] = {}
	tFivePagoda_Reward[3][3]["RewardItem"][1] = {}
	tFivePagoda_Reward[3][3]["RewardItem"][1]["Id"] = 4200004 -- 【库】System.Byte[][属性:72], 【表格】4阶灵珠
	tFivePagoda_Reward[3][3]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*1
	tFivePagoda_Reward[3][3]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 7阶灵珠 - 0%
	tFivePagoda_Reward[3][4] = {}
	tFivePagoda_Reward[3][4]["RandomItemChanceType"] = 2
	tFivePagoda_Reward[3][4]["ItemChance"] = 0
	tFivePagoda_Reward[3][4]["RewardItem"] = {}
	tFivePagoda_Reward[3][4]["RewardItem"][1] = {}
	tFivePagoda_Reward[3][4]["RewardItem"][1]["Id"] = 4200007 -- 【库】System.Byte[][属性:72], 【表格】7阶灵珠
	tFivePagoda_Reward[3][4]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*1
	tFivePagoda_Reward[3][4]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得


	tFivePagoda_Reward[4] = {}
	-- ===第4层宝箱奖励
	-- ===索引: tFivePagoda_Reward[4]
	tFivePagoda_Reward[4]["ItemChanceSum"] = 10000
	tFivePagoda_Reward[4]["LogId"] = 12001492
	-- +4赤练石*1赠 - 35%
	tFivePagoda_Reward[4][1] = {}
	tFivePagoda_Reward[4][1]["RandomItemChanceType"] = 2
	tFivePagoda_Reward[4][1]["ItemChance"] = 3500
	tFivePagoda_Reward[4][1]["RewardItem"] = {}
	tFivePagoda_Reward[4][1]["RewardItem"][1] = {}
	tFivePagoda_Reward[4][1]["RewardItem"][1]["Id"] = 3303531 -- 【库】System.Byte[][属性:9], 【表格】+4赤练石*1赠
	tFivePagoda_Reward[4][1]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*1
	-- 龙鳞果*2 - 34%
	tFivePagoda_Reward[4][2] = {}
	tFivePagoda_Reward[4][2]["RandomItemChanceType"] = 2
	tFivePagoda_Reward[4][2]["ItemChance"] = 3400
	tFivePagoda_Reward[4][2]["RewardItem"] = {}
	tFivePagoda_Reward[4][2]["RewardItem"][1] = {}
	tFivePagoda_Reward[4][2]["RewardItem"][1]["Id"] = 3009101 -- 【库】System.Byte[][属性:9], 【表格】龙鳞果*2
	tFivePagoda_Reward[4][2]["RewardItem"][1]["Attr"] = "0 2" -- System.Byte[]*1
	-- 5阶灵珠 - 31%
	tFivePagoda_Reward[4][3] = {}
	tFivePagoda_Reward[4][3]["RandomItemChanceType"] = 2
	tFivePagoda_Reward[4][3]["ItemChance"] = 3100
	tFivePagoda_Reward[4][3]["RewardItem"] = {}
	tFivePagoda_Reward[4][3]["RewardItem"][1] = {}
	tFivePagoda_Reward[4][3]["RewardItem"][1]["Id"] = 4200005 -- 【库】System.Byte[][属性:72], 【表格】5阶灵珠
	tFivePagoda_Reward[4][3]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*1
	tFivePagoda_Reward[4][3]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 8阶灵珠 - 0%
	tFivePagoda_Reward[4][4] = {}
	tFivePagoda_Reward[4][4]["RandomItemChanceType"] = 2
	tFivePagoda_Reward[4][4]["ItemChance"] = 0
	tFivePagoda_Reward[4][4]["RewardItem"] = {}
	tFivePagoda_Reward[4][4]["RewardItem"][1] = {}
	tFivePagoda_Reward[4][4]["RewardItem"][1]["Id"] = 4200008 -- 【库】System.Byte[][属性:72], 【表格】8阶灵珠
	tFivePagoda_Reward[4][4]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*1
	tFivePagoda_Reward[4][4]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得


	tFivePagoda_Reward[5] = {}
	-- ===第5层宝箱奖励
	-- ===索引: tFivePagoda_Reward[5]
	tFivePagoda_Reward[5]["ItemChanceSum"] = 10000
	tFivePagoda_Reward[5]["LogId"] = 12001492
	-- +4赤练石*2赠 - 35%
	tFivePagoda_Reward[5][1] = {}
	tFivePagoda_Reward[5][1]["RandomItemChanceType"] = 2
	tFivePagoda_Reward[5][1]["ItemChance"] = 3500
	tFivePagoda_Reward[5][1]["RewardItem"] = {}
	tFivePagoda_Reward[5][1]["RewardItem"][1] = {}
	tFivePagoda_Reward[5][1]["RewardItem"][1]["Id"] = 3305386 -- 【库】System.Byte[][属性:9], 【表格】+4赤练石*2赠
	tFivePagoda_Reward[5][1]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*1
	-- 晶莹星陨石*1或者300赠品天石 - 34%
	tFivePagoda_Reward[5][2] = {}
	tFivePagoda_Reward[5][2]["RandomItemChanceType"] = 2
	tFivePagoda_Reward[5][2]["ItemChance"] = 3400
	tFivePagoda_Reward[5][2]["RewardItem"] = {}
	tFivePagoda_Reward[5][2]["RewardItem"][1] = {}
	tFivePagoda_Reward[5][2]["RewardItem"][1]["Id"] = 3322782 -- 【库】System.Byte[][属性:9], 【表格】晶莹星陨石*1或者300赠品天石
	tFivePagoda_Reward[5][2]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*1
	-- 6阶灵珠 - 31%
	tFivePagoda_Reward[5][3] = {}
	tFivePagoda_Reward[5][3]["RandomItemChanceType"] = 2
	tFivePagoda_Reward[5][3]["ItemChance"] = 3100
	tFivePagoda_Reward[5][3]["RewardItem"] = {}
	tFivePagoda_Reward[5][3]["RewardItem"][1] = {}
	tFivePagoda_Reward[5][3]["RewardItem"][1]["Id"] = 4200006 -- 【库】System.Byte[][属性:72], 【表格】6阶灵珠
	tFivePagoda_Reward[5][3]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*1
	tFivePagoda_Reward[5][3]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	-- 9阶灵珠 - 0%
	tFivePagoda_Reward[5][4] = {}
	tFivePagoda_Reward[5][4]["RandomItemChanceType"] = 2
	tFivePagoda_Reward[5][4]["ItemChance"] = 0
	tFivePagoda_Reward[5][4]["RewardItem"] = {}
	tFivePagoda_Reward[5][4]["RewardItem"][1] = {}
	tFivePagoda_Reward[5][4]["RewardItem"][1]["Id"] = 4200009 -- 【库】System.Byte[][属性:72], 【表格】9阶灵珠
	tFivePagoda_Reward[5][4]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*1
	tFivePagoda_Reward[5][4]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得

	tFivePagoda_Reward[3322167] = {}
	-- ===微光星陨石礼包
	-- ===索引: tFivePagoda_Reward[3322167]
	-- ===删除: 3322167,1
	tFivePagoda_Reward[3322167]["LogId"] = 12001492
	tFivePagoda_Reward[3322167]["DeleteItem"] = {}
	tFivePagoda_Reward[3322167]["DeleteItem"][1] = {}
	tFivePagoda_Reward[3322167]["DeleteItem"][1]["Id"] = 3322167 -- 【库】System.Byte[][属性:9]
	tFivePagoda_Reward[3322167]["RewardItem"] = {}
	tFivePagoda_Reward[3322167]["RewardItem"][1] = {}
	tFivePagoda_Reward[3322167]["RewardItem"][1]["Id"] = 3009000 -- 【库】System.Byte[][属性:9], 【表格】20个微光星陨石
	tFivePagoda_Reward[3322167]["RewardItem"][1]["Attr"] = "0 20 0 2880 1" -- 2天时效(激活)的System.Byte[]*20

	tFivePagoda_Reward[3322781] = {}
	-- ===FortunePack
	-- ===索引: tFivePagoda_Reward[3322781]
	-- ===删除: 3322781,1
	tFivePagoda_Reward[3322781][1] = {}
	tFivePagoda_Reward[3322781][1]["LogId"] = 12001492
	tFivePagoda_Reward[3322781][1]["DeleteItem"] = {}
	tFivePagoda_Reward[3322781][1]["DeleteItem"][1] = {}
	tFivePagoda_Reward[3322781][1]["DeleteItem"][1]["Id"] = 3322781
	tFivePagoda_Reward[3322781][1]["RewardItem"] = {}
	tFivePagoda_Reward[3322781][1]["RewardItem"][1] = {}
	tFivePagoda_Reward[3322781][1]["RewardItem"][1]["Id"] = 723694
	tFivePagoda_Reward[3322781][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tFivePagoda_Reward[3322781][2] = {}
	tFivePagoda_Reward[3322781][2]["LogId"] = 12001492
	tFivePagoda_Reward[3322781][2]["DeleteItem"] = {}
	tFivePagoda_Reward[3322781][2]["DeleteItem"][1] = {}
	tFivePagoda_Reward[3322781][2]["DeleteItem"][1]["Id"] = 3322781
	tFivePagoda_Reward[3322781][2]["RewardEMoneyMono"] = {}
	tFivePagoda_Reward[3322781][2]["RewardEMoneyMono"]["Value"] = 120
	
	tFivePagoda_Reward[3322782] = {}
	-- ===HappyPack
	-- ===索引: tFivePagoda_Reward[3322782]
	-- ===删除: 3322782,1
	tFivePagoda_Reward[3322782][1] = {}
	tFivePagoda_Reward[3322782][1]["LogId"] = 12001492
	tFivePagoda_Reward[3322782][1]["DeleteItem"] = {}
	tFivePagoda_Reward[3322782][1]["DeleteItem"][1] = {}
	tFivePagoda_Reward[3322782][1]["DeleteItem"][1]["Id"] = 3322782
	tFivePagoda_Reward[3322782][1]["RewardItem"] = {}
	tFivePagoda_Reward[3322782][1]["RewardItem"][1] = {}
	tFivePagoda_Reward[3322782][1]["RewardItem"][1]["Id"] = 3009002
	tFivePagoda_Reward[3322782][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tFivePagoda_Reward[3322782][2] = {}
	tFivePagoda_Reward[3322782][2]["LogId"] = 12001492
	tFivePagoda_Reward[3322782][2]["DeleteItem"] = {}
	tFivePagoda_Reward[3322782][2]["DeleteItem"][1] = {}
	tFivePagoda_Reward[3322782][2]["DeleteItem"][1]["Id"] = 3322782
	tFivePagoda_Reward[3322782][2]["RewardEMoneyMono"] = {}
	tFivePagoda_Reward[3322782][2]["RewardEMoneyMono"]["Value"] = 300
	
	tFivePagoda_Reward["MonsterDrop"] = {}
	-- ===片区怪物掉落
	-- ===索引: tFivePagoda_Reward["MonsterDrop"][1]
	tFivePagoda_Reward["MonsterDrop"][1] = {}
	tFivePagoda_Reward["MonsterDrop"][1]["ItemChanceSum"] = 10000
	tFivePagoda_Reward["MonsterDrop"][1]["LogId"] = 12001492
	-- TowerMapF1 - 0.05%
	tFivePagoda_Reward["MonsterDrop"][1][1] = {}
	tFivePagoda_Reward["MonsterDrop"][1][1]["RandomItemChanceType"] = 2
	tFivePagoda_Reward["MonsterDrop"][1][1]["ItemChance"] = 5
	tFivePagoda_Reward["MonsterDrop"][1][1]["RewardItem"] = {}
	tFivePagoda_Reward["MonsterDrop"][1][1]["RewardItem"][1] = {}
	tFivePagoda_Reward["MonsterDrop"][1][1]["RewardItem"][1]["Id"] = 3322166 -- 【库】System.Byte[][属性:9], 【表格】TowerMapF1
	tFivePagoda_Reward["MonsterDrop"][1][1]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*1
			-- 【stc（196,24）】1天（零点重置）1个, 最多可获得:（1）
	tFivePagoda_Reward["MonsterDrop"][1][1]["EventType"] = 196
	tFivePagoda_Reward["MonsterDrop"][1][1]["DataType"] = 24
	tFivePagoda_Reward["MonsterDrop"][1][1]["RewardDelay"] = 1
	tFivePagoda_Reward["MonsterDrop"][1][1]["RewardTimeType"] = 4
	tFivePagoda_Reward["MonsterDrop"][1][1]["RewardData"] = 1
			-- 【动态掩码（53460, data0）】全服限量:（100）, 超限给编号（2）
	tFivePagoda_Reward["MonsterDrop"][1][1]["GlobalId"] = 53460
	tFivePagoda_Reward["MonsterDrop"][1][1]["Pos"] = 0
	tFivePagoda_Reward["MonsterDrop"][1][1]["MaxData"] = 100
	tFivePagoda_Reward["MonsterDrop"][1][1]["FullIndex"] = 2
	-- 无 - 99.95%
	tFivePagoda_Reward["MonsterDrop"][1][2] = {}
	tFivePagoda_Reward["MonsterDrop"][1][2]["RandomItemChanceType"] = 2
	tFivePagoda_Reward["MonsterDrop"][1][2]["ItemChance"] = 9995
	
	--额外的奖励
	tFivePagoda_Reward["Other"] = {}
	-- 300点气力值赠
	tFivePagoda_Reward["Other"][1] = {}
	tFivePagoda_Reward["Other"][1]["LogId"] = 12001492
	tFivePagoda_Reward["Other"][1]["RewardItem"] = {}
	tFivePagoda_Reward["Other"][1]["RewardItem"][1] = {}
	tFivePagoda_Reward["Other"][1]["RewardItem"][1]["Id"] = 3304327
	tFivePagoda_Reward["Other"][1]["RewardItem"][1]["Attr"] = "0 1"
	-- 黄色神纹精粹（赠）*10
	tFivePagoda_Reward["Other"][2] = {}
	tFivePagoda_Reward["Other"][2]["LogId"] = 12001492
	tFivePagoda_Reward["Other"][2]["RewardItem"] = {}
	tFivePagoda_Reward["Other"][2]["RewardItem"][1] = {}
	tFivePagoda_Reward["Other"][2]["RewardItem"][1]["Id"] = 4050001
	tFivePagoda_Reward["Other"][2]["RewardItem"][1]["Attr"] = "0 10 3"
	-- 黄色神纹精粹（赠）*15
	tFivePagoda_Reward["Other"][3] = {}
	tFivePagoda_Reward["Other"][3]["LogId"] = 12001492
	tFivePagoda_Reward["Other"][3]["RewardItem"] = {}
	tFivePagoda_Reward["Other"][3]["RewardItem"][1] = {}
	tFivePagoda_Reward["Other"][3]["RewardItem"][1]["Id"] = 4050001
	tFivePagoda_Reward["Other"][3]["RewardItem"][1]["Attr"] = "0 15 3"
	-- 黄色神纹精粹（赠）*20
	tFivePagoda_Reward["Other"][4] = {}
	tFivePagoda_Reward["Other"][4]["LogId"] = 12001492
	tFivePagoda_Reward["Other"][4]["RewardItem"] = {}
	tFivePagoda_Reward["Other"][4]["RewardItem"][1] = {}
	tFivePagoda_Reward["Other"][4]["RewardItem"][1]["Id"] = 4050001
	tFivePagoda_Reward["Other"][4]["RewardItem"][1]["Attr"] = "0 20 3"
	-- 龙鳞果*1
	tFivePagoda_Reward["Other"][5] = {}
	tFivePagoda_Reward["Other"][5]["LogId"] = 12001492
	tFivePagoda_Reward["Other"][5]["RewardItem"] = {}
	tFivePagoda_Reward["Other"][5]["RewardItem"][1] = {}
	tFivePagoda_Reward["Other"][5]["RewardItem"][1]["Id"] = 3009101
	tFivePagoda_Reward["Other"][5]["RewardItem"][1]["Attr"] = "0 1"
	
	
--------------------------------------------逻辑部分配置--------------------------------------------
--二进制掩码设置
function FivePagoda_SetParseNumber(nIndex, nData, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nParse = tFivePagoda_ParseNumber[nData]
	
	local nEvent = tFivePagoda_Stc[nIndex]["Event"]
	local nType = tFivePagoda_Stc[nIndex]["Type"]
	local nDelay = tFivePagoda_Stc[nIndex]["Delay"]
	local nTimeType = tFivePagoda_Stc[nIndex]["TimeType"]
	
	--置零，打时间戳
	if nTimeType ~= nil and nDelay ~= nil then
		Task_StcReset(nEvent,nType,nUserId,nTimeType,nDelay)
	end
	
	return Task_AddStatistic(nEvent,nType,nParse,1,nUserId)
end

--二进制掩码判断
function FivePagoda_IsGetParseNumber(nIndex, nData, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nParse = tFivePagoda_ParseNumber[nData]
	
	local nEvent = tFivePagoda_Stc[nIndex]["Event"]
	local nType = tFivePagoda_Stc[nIndex]["Type"]
	local nDelay = tFivePagoda_Stc[nIndex]["Delay"]
	local nTimeType = tFivePagoda_Stc[nIndex]["TimeType"]
	
	--置零，打时间戳
	if nTimeType ~= nil and nDelay ~= nil then
		Task_StcReset(nEvent,nType,nUserId,nTimeType,nDelay)
	end
	
	local nNowData = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	if Sys_ParseNumbersContain(nParse,nNowData) then
		return true
	else
		return false
	end
end

--NPC对白检查
function FivePagoda_Chk(nNpcId)
	--活动时间后
	if CommonFunc_GetAfterActivityTime(tFivePagoda_Cont["ActTime"]) then
		return false
	end
	
	--活动时间前
	if CommonFunc_GetBeforeActivityTime(tFivePagoda_Cont["ActTime"]) then
		tNpcGossip[nNpcId]["tOption1-1"] = {117}
		return true
	end
	
	local nUserId = Get_UserId()
	
	for i = 1, 5 do
		if FivePagoda_IsGetParseNumber(2, i, nUserId) then
			tNpcGossip[nNpcId]["Option11".. i] = tFivePagoda_Text[nNpcId]["Option11" .. i] .. tFivePagoda_Text["AlreadyInto"]
		else
			tNpcGossip[nNpcId]["Option11".. i] = tFivePagoda_Text[nNpcId]["Option11" .. i]
		end
	end
	
	tNpcGossip[nNpcId]["tOption1-1"] = {111,112,113,114,115,116}
	
	return true
end

--选项进入宝塔前判断
function FivePagoda_OptionInto(nIndex)
	local nNpcId = Get_NpcId()
	
	--活动时间判断
	if not Sys_ChkFullTime(tFivePagoda_Cont["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	
	local nUserId = Get_UserId()
	
	--记录选择的地图层数
	tFivePagoda_Floor[nUserId] = nIndex
	
	--今日是否进入
	if FivePagoda_IsGetParseNumber(1, nIndex, nUserId) then
		--是否已经领奖
		if FivePagoda_IsGetParseNumber(2, nIndex, nUserId) then
			LinkNpcGossipFunc_New(nNpcId, "2-1")
		else
			FivePagoda_IntoInstance()
		end
		
		return
	end
	
	local nItemId = tFivePagoda_Cont["TowerMap"]
	local sAward = tFivePagoda_Text["Award"][nIndex]
	
	tNpcGossip[nNpcId]["Text231"] = string.format(tFivePagoda_Text[nNpcId]["Text231"], nIndex)
	tNpcGossip[nNpcId]["Text233"] = string.format(tFivePagoda_Text[nNpcId]["Text233"], sAward)
	
	--每层需要的天石
	local nNeedEMoney = tFivePagoda_Cont["EMoney"][nIndex]
	
	--判断是否第1层
	if nIndex == 1 then
		--判断是否有第一层宝图
		if Item_ChkItem(nItemId,nil,nil,nUserId) then
			LinkNpcGossipFunc_New(nNpcId, "2-2")
		else
			tNpcGossip[nNpcId]["Text235"] = string.format(tFivePagoda_Text[nNpcId]["Text235"], nNeedEMoney)
			tNpcGossip[nNpcId]["Text2-3"] = {231,232,233,234,235,237}
			LinkNpcGossipFunc_New(nNpcId, "2-3")
		end
	else
		tNpcGossip[nNpcId]["Text236"] = string.format(tFivePagoda_Text[nNpcId]["Text236"], nNeedEMoney)
		tNpcGossip[nNpcId]["Text2-3"] = {231,232,233,234,236,237}
		LinkNpcGossipFunc_New(nNpcId, "2-3")
	end
end

--选项进入宝塔前二次确认
function FivePagoda_OptionIntoConfirm()
	--活动时间判断
	if not Sys_ChkFullTime(tFivePagoda_Cont["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	
	local nNpcId = Get_NpcId()
	local nUserId = Get_UserId()
	
	--选择的层数是否还在
	if tFivePagoda_Floor[nUserId] == nil then
		return
	end
	
	local nIndex = tFivePagoda_Floor[nUserId]
	--每层需要的天石
	local nNeedEMoney = tFivePagoda_Cont["EMoney"][nIndex]
	
	--天石是否足够
	if Get_UserEMoney(nUserId) < nNeedEMoney then
		Sys_MsgBox(tFivePagoda_Text["MsgBox"]["NoEMoney"],nil,nil,nUserId)
		return
	end
	
	--不是第一层没有再一次的二次确认
	if nIndex ~= 1 then
		FivePagoda_IntoInstance()
		return
	end
	
	tNpcGossip[nNpcId]["Text311"] = string.format(tFivePagoda_Text[nNpcId]["Text311"], nNeedEMoney, nIndex)
	
	LinkNpcGossipFunc_New(nNpcId, "3-1")
end

--刷新宝箱
function FivePagoda_RefresBox(nIndex, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	--判断当前地图是否已经有宝箱
	if Get_NpcCount(nUserId) > 0 then
		return
	end
	
	local nMapId = Get_UserMapId(nUserId)
	local sName = tFivePagoda_Text["BoxName"][nIndex]
	local nSort = tFivePagoda_Cont["DynNpc"]["Sort"]
	local nType = tFivePagoda_Cont["DynNpc"]["Type"]
	local nLookFace = tFivePagoda_Cont["DynNpc"]["LookFace"][nIndex]
	local nAction = tFivePagoda_Cont["DynNpc"]["Action"]
	
	
	for i = 1, #tFivePagoda_Cont["DynNpc"]["Pos"] do
		local nPosX = tFivePagoda_Cont["DynNpc"]["Pos"][i]["PosX"]
		local nPosY = tFivePagoda_Cont["DynNpc"]["Pos"][i]["PosY"]
		
		Npc_CreateDynaNpc(sName, nType ,nSort ,nLookFace,0,0,nMapId, nPosX,nPosY,0,0,0,nAction)
	end
end

--进入宝塔
function FivePagoda_IntoInstance()
	local nNpcId = Get_NpcId()
	local nUserId = Get_UserId()
	
	--选择的层数是否还在
	if tFivePagoda_Floor[nUserId] == nil then
		return
	end
	
	local nIndex = tFivePagoda_Floor[nUserId]
	
	--活动时间判断
	if not Sys_ChkFullTime(tFivePagoda_Cont["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	
	--今日是否进入
	if FivePagoda_IsGetParseNumber(1, nIndex, nUserId) then
		--今日是否已经领奖
		if FivePagoda_IsGetParseNumber(2, nIndex, nUserId) then
			LinkNpcGossipFunc_New(nNpcId, "2-1")
		else
			--直接进入宝塔
			FivePagoda_IntoPagoda(nIndex, nUserId)
		end
		return
	end
	
	--第一层需要的地图
	local nItemId = tFivePagoda_Cont["TowerMap"]
	--每层需要的天石
	local nNeedEMoney = tFivePagoda_Cont["EMoney"][nIndex]
	
	--是否是第一层
	if nIndex == 1 and Item_ChkItem(nItemId,nil,nil,nUserId) then
		if not Item_DelItem(nItemId,nil,nil,nUserId) then
			return
		end
		
		--打删除log
		Sys_SaveActionFestivalLog(string.format(tFivePagoda_Log["DelItem"], nItemId, 1),nUserId)
	else
		--判断天石是否足够
		if Get_UserEMoney(nUserId) < nNeedEMoney then
			return
		end
		
		if not User_AddEMoney(-nNeedEMoney,nUserId) then
			return
		end
		
		--打天石log
		Sys_SaveEmoneyBuy(string.format(tFivePagoda_ELog["Into"][nIndex], nNeedEMoney, nNeedEMoney),nUserId)
	end
	
	--打进入的掩码
	FivePagoda_SetParseNumber(1, nIndex, nUserId)
	
	--进入宝塔
	FivePagoda_IntoPagoda(nIndex, nUserId)
end

--进入宝塔
function FivePagoda_IntoPagoda(nIndex, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nInstanceType = tFivePagoda_Cont["InstanceType"]
	
	--进入副本
	if User_EnterInstance(nInstanceType,0,0,0,nUserId) then
		--刷新宝箱
		FivePagoda_RefresBox(nIndex, nUserId)
		
		--打进入的log
		Sys_SaveActionFestivalLog(tFivePagoda_Log["Into"], nUserId)
		
		--提示
		Sys_MsgBox(string.format(tFivePagoda_Text["MsgBox"]["Into"], nIndex),nil,nil,nUserId)
	end
end

--宝箱接入
function FivePagoda_Link(nNpcId)
	local nUserId = Get_UserId()
	
	--选择的层数是否还在
	if tFivePagoda_Floor[nUserId] == nil then
		return
	end
	
	local nIndex = tFivePagoda_Floor[nUserId]
	local sAward = tFivePagoda_Text["Award"][nIndex]
	
	tNpcGossip[nNpcId]["Text111"] = string.format(tFivePagoda_Text[nNpcId]["Text111"], nIndex)
	tNpcGossip[nNpcId]["Text113"] = string.format(tFivePagoda_Text[nNpcId]["Text113"], sAward)
	
	LinkNpcGossipFunc_New(nNpcId, "1-1")
end

--获得宝箱奖励
function FivePagoda_BoxAward(nNpcId)
	local nUserId = Get_UserId()
	
	--选择的层数是否还在
	if tFivePagoda_Floor[nUserId] == nil then
		return
	end
	
	local nIndex = tFivePagoda_Floor[nUserId]
	
	--没有进来过
	if not FivePagoda_IsGetParseNumber(1, nIndex, nUserId) then
		return
	end
	
	-- 已经获得过奖励
	if FivePagoda_IsGetParseNumber(2, nIndex, nUserId) then
		LinkNpcGossipFunc_New(nNpcId, "2-1")
		return
	end
	
	--检查背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tFivePagoda_Reward,nIndex,nUserId)
	
	--检查固定奖励的空间
	nSpace = nSpace + RewardTemplate_GetRewardSpace(tFivePagoda_Reward["Other"][nIndex],nUserId)
	
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
		Sys_MsgBox(string.format(tRewardTemplate_Text["NoSpace"], nSpace),nil,nil,nUserId)
		return
	end
	
	--打领奖掩码
	if not FivePagoda_SetParseNumber(2, nIndex, nUserId) then
		return
	end
	
	local nMapId = Get_UserMapId(nUserId)
	local sName = tFivePagoda_Text["BoxName"][nIndex]
	
	--删除当前箱子
	Npc_DelDynaNpc(nMapId,"name",sName)
	
	--获得奖励
	local tNewReward,sRewardStr = RewardTemplate_NewRandom(tFivePagoda_Reward, nIndex, nUserId)
	
	--给固定奖励
	local bFlag,sReward = RewardTemplate_UseItemAndMsg(tFivePagoda_Reward["Other"][nIndex],nUserId)
	
	Sys_MsgBox(string.format(tRewardTemplate_Text["Main"], sRewardStr..","..sReward),nil,nil,nUserId)
end

--片区怪物掉落
function FivePagoda_MonsterDrop(nMonsterId)
	--活动时间判断
	if not Sys_ChkFullTime(tFivePagoda_Cont["ActTime"]) then
		return
	end
	
	local nUserId = Get_UserId()
	
	--背包空间判断
	local nSpace = RewardTemplate_GetRandomSpace(tFivePagoda_Reward["MonsterDrop"],1,nUserId)
	
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
		return
	end
	
	--给奖励
	RewardTemplate_NewRandom(tFivePagoda_Reward["MonsterDrop"],1,nUserId)
end

--时间自检限量清零
function FivePagoda_SysChk()
	local nGlobalId = tFivePagoda_Reward["MonsterDrop"][1][1]["GlobalId"]
	
	Sys_SetSynaGlobalData0(nGlobalId,0)
end

--切屏点
function FivePagoda_Trap(nTrapId,nTrapType)
	local sFunc = "FivePagoda_BoundTrans"
	
	local sText = tFivePagoda_Text["MsgBox"]["GoBack"]["Common"]
	
	if SpecialServer_ChkNoGiftServer() then
		sText = tFivePagoda_Text["MsgBox"]["GoBack"]["NoGift"]
	end
	
	Sys_MsgBox(sText,sFunc,nil,nUserId)
end

--传送
function FivePagoda_BoundTrans()
	if tFivePagoda_Cont["BoundTrans"] == nil then
		return
	end
	
	local nUserId = Get_UserId()
	local nMapId = tFivePagoda_Cont["BoundTrans"]["MapId"]
	local nBoundX = tFivePagoda_Cont["BoundTrans"]["PosX"]
	local nBoundY = tFivePagoda_Cont["BoundTrans"]["PosY"]
	
	--判断是否激情服
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tFivePagoda_Cont["BoundTransNoGift"]["MapId"]
		nBoundX = tFivePagoda_Cont["BoundTransNoGift"]["PosX"]
		nBoundY = tFivePagoda_Cont["BoundTransNoGift"]["PosY"]
	end
	
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,1,1,1,nUserId)
	
	User_TalkChannel2005(tFivePagoda_Text["Channel2005"]["GoBack"][nMapId],nUserId)
end

--物品使用
function FivePagoda_ItemUse(nItemId, nIndex)
	if tFivePagoda_Reward[nItemId] == nil then
		return
	end
	
	if tFivePagoda_Reward[nItemId][nIndex] == nil then
		return
	end
	
	local nUserId = Get_UserId()
	
	RewardTemplate_UseItemAndMsg(tFivePagoda_Reward[nItemId][nIndex],nUserId)
end

--------------------------------------------模块部分配置--------------------------------------------

---------------------------------------------NPC模块---------------------------------------------
--大金牙
tNpcFace[5657] = 85
tNpcGossip[24382]= tNpcGossip[24382] or DefaultNpc:new{}
tNpcGossip[24382]["DialogueText"] = tFivePagoda_Text[24382]
tNpcGossip[24382]["OptionHidden"] = 1

--活动时间前、中
tNpcGossip[24382]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[24382]["ChkFunc1-1"] = function ()
	return FivePagoda_Chk(24382)
end
tNpcGossip[24382]["tOption1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[24382]["OptionFunc111"] = "FivePagoda_OptionInto</N>1"
tNpcGossip[24382]["OptionFunc112"] = "FivePagoda_OptionInto</N>2"
tNpcGossip[24382]["OptionFunc113"] = "FivePagoda_OptionInto</N>3"
tNpcGossip[24382]["OptionFunc114"] = "FivePagoda_OptionInto</N>4"
tNpcGossip[24382]["OptionFunc115"] = "FivePagoda_OptionInto</N>5"

-- 活动时间后
tNpcGossip[24382]["Text1-2"] = {121}
tNpcGossip[24382]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tFivePagoda_Cont["ActTime"])
end
tNpcGossip[24382]["tOption1-2"] = {121}

-- 已经进入
tNpcGossip[24382]["Text2-1"] = {211}
tNpcGossip[24382]["tOption2-1"] = {211}

-- 有第一层地图
tNpcGossip[24382]["Text2-2"] = {221,222}
tNpcGossip[24382]["tOption2-2"] = {221,222}
tNpcGossip[24382]["OptionFunc221"] = "FivePagoda_IntoInstance"

-- 无第一层地图
tNpcGossip[24382]["Text2-3"] = {231,232,233,234,235,236,237}
tNpcGossip[24382]["tOption2-3"] = {231,232}
tNpcGossip[24382]["OptionFunc231"] = "FivePagoda_OptionIntoConfirm"

-- 花费天石进入地图
tNpcGossip[24382]["Text3-1"] = {311,312}
tNpcGossip[24382]["tOption3-1"] = {311,312}
tNpcGossip[24382]["OptionFunc311"] = "FivePagoda_IntoInstance"

--宝箱
tNpcFace[2244] = 384
tNpcGossip[24383]= tNpcGossip[24383] or DefaultNpc:new{}
tNpcGossip[24383]["DialogueText"] = tFivePagoda_Text[24383]
tNpcGossip[24383]["OptionHidden"] = 1

--宝箱对白
tNpcGossip[24383]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[24383]["tOption1-1"] = {111}
tNpcGossip[24383]["OptionFunc111"] = "FivePagoda_BoxAward</N>24383"

--已经领取过奖励
tNpcGossip[24383]["Text2-1"] = {211}
tNpcGossip[24383]["tOption2-1"] = {211}

---------------------------------------------物品模块---------------------------------------------
--第1层宝图
tItem[3322166] = tItem[3322166] or {}
tItem[3322166]["Function"] = function(nItemId,sItemName)
	if not Sys_ChkFullTime(tFivePagoda_Cont["ActTime"]) then
		local nCount = Get_CountItemType(nItemId, 0)
		
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tFivePagoda_Log["DelItem"], nItemId, nCount))
		end
		
		User_TalkChannel2005(tLuaRes[10004])
		
		return
	end
	
	NpcPosition_PathFind(24382)
end

--微光星陨石礼包
tItem[3322167] = tItem[3322167] or {}
tItem[3322167]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tFivePagoda_Reward[nItemId])
end

--FortunePack
tItemFace[3322781] = 580
tItem[3322781] = tItem[3322781] or {}
tItem[3322781]["DialogueText"] = tFivePagoda_Text[3322781]
tItem[3322781]["Text1-1"] = {111}
tItem[3322781]["ChkFunc1-1"] = function() return true end
tItem[3322781]["tOption1-1"] = {111,112}
tItem[3322781]["OptionFunc111"] = "FivePagoda_ItemUse</N>3322781</N>1"
tItem[3322781]["OptionFunc112"] = "FivePagoda_ItemUse</N>3322781</N>2"

--HappyPack
tItemFace[3322782] = 692
tItem[3322782] = tItem[3322782] or {}
tItem[3322782]["DialogueText"] = tFivePagoda_Text[3322782]
tItem[3322782]["Text1-1"] = {111}
tItem[3322782]["ChkFunc1-1"] = function() return true end
tItem[3322782]["tOption1-1"] = {111,112}
tItem[3322782]["OptionFunc111"] = "FivePagoda_ItemUse</N>3322782</N>1"
tItem[3322782]["OptionFunc112"] = "FivePagoda_ItemUse</N>3322782</N>2"

---------------------------------------------怪物模块---------------------------------------------
--全片区怪物
local tFivePagoda_Monster = {}
tFivePagoda_Monster["ActivityTime"] = tFivePagoda_Cont["ActTime"]
tFivePagoda_Monster["Function"] = FivePagoda_MonsterDrop

table.insert(tMonsterDrop_AreaLoad,tFivePagoda_Monster)

---------------------------------------------陷阱模块---------------------------------------------
tTrap[2450] = tTrap[2450] or {}
tTrap[2450]["Function"] = function(nTrapId,nTrapType)
	FivePagoda_Trap(nTrapId,nTrapType)
end

---------------------------------------------时间自检---------------------------------------------
tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
table.insert(tOntimerMin_HM[0000],FivePagoda_SysChk)

