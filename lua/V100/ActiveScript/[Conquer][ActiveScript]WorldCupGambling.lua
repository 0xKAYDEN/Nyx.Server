------------------------------------------------------------------------------------
--Name：            180515[英文征服][活动脚本]6月世界杯竞猜活动线上部分制作
--Creator:      吴帆
--Created:     2018/05/15
------------------------------------------------------------------------------------
--任务需求：
--请安排英文征服6月世界杯竞猜活动线上部分制作，具体需求在附件中。
--
--更新范围：全区全服
--
--计划更新时间：6.12
--
--活动时间：6.12-7.15
--
--如有问题，请及时沟通，谢谢！
--
--备注：为了方便活动数据统计，部分 log 需要做成 emoney buy log，具体情况制作时再沟通下。
------------------------------------------------------------------------------------
---stc(176,87) 购买普通筹码二次确认
---stc(176,88) 购买金筹码二次确认（100天石）
---stc(176,89) 购买银筹码二次确认（800w银两）
---stc(176,90) 上交数 普通筹码
---stc(176,91) 上交数 金筹码
---stc(176,96) 登录获得筹码
---stc(176,97) 背包信

---stc(177,21) 上交数 银筹码

--LOGid 12001079

--	命名规范
--	WorldCupGambling_
----------------------------------表配置部分--------------------------------------------
local tWorldCupGambling_Data = {}
	tWorldCupGambling_Data["ActivityTime"] = tActivityTime["WorldCupGambling"]["ActivityTime"]
	tWorldCupGambling_Data["ScheduleTime"] = tActivityTime["WorldCupGambling"]["ScheduleTime"]
	tWorldCupGambling_Data["Level"] = 0
	tWorldCupGambling_Data["Metempsychosis"] = 2
	tWorldCupGambling_Data["NpcData"] = {}
	tWorldCupGambling_Data["NpcData"][1] = {}
	tWorldCupGambling_Data["NpcData"][1]["NpcId"] = 21499
	tWorldCupGambling_Data["NpcData"][1]["MapId"] = 1002
	tWorldCupGambling_Data["NpcData"][1]["PosX"] = 362
	tWorldCupGambling_Data["NpcData"][1]["PosY"] = 435
	tWorldCupGambling_Data["NpcData"][2] = {}
	tWorldCupGambling_Data["NpcData"][2]["NpcId"] = 21500
	tWorldCupGambling_Data["NpcData"][2]["MapId"] = 3053
	tWorldCupGambling_Data["NpcData"][2]["PosX"] = 209
	tWorldCupGambling_Data["NpcData"][2]["PosY"] = 138
	-- 报名所需的银两
	tWorldCupGambling_Data["NeedMoney"] = 200000
	tWorldCupGambling_Data["MoneyLog"] = "0,0,1,200000,12001079,1[1],0,0"
local tWorldCupGambling_Stc = {}
	tWorldCupGambling_Stc["TwiceConfirm"] = {}
	--购买普通筹码二次确认
	tWorldCupGambling_Stc["TwiceConfirm"][3308950] = {}
	tWorldCupGambling_Stc["TwiceConfirm"][3308950]["EventType"] = 176
	tWorldCupGambling_Stc["TwiceConfirm"][3308950]["DataType"] = 87
	--购买金筹码二次确认（100天石）
	tWorldCupGambling_Stc["TwiceConfirm"][3308951] = {}
	tWorldCupGambling_Stc["TwiceConfirm"][3308951]["EventType"] = 176
	tWorldCupGambling_Stc["TwiceConfirm"][3308951]["DataType"] = 88
	--购买银筹码二次确认（800w银两）
	tWorldCupGambling_Stc["TwiceConfirm"][3309064] = {}
	tWorldCupGambling_Stc["TwiceConfirm"][3309064]["EventType"] = 176
	tWorldCupGambling_Stc["TwiceConfirm"][3309064]["DataType"] = 89
	--上交数 普通筹码
	tWorldCupGambling_Stc[3308950] = {}
	tWorldCupGambling_Stc[3308950]["EventType"] = 176
	tWorldCupGambling_Stc[3308950]["DataType"] = 90
	--上交数 金筹码
	tWorldCupGambling_Stc[3308951] = {}
	tWorldCupGambling_Stc[3308951]["EventType"] = 176
	tWorldCupGambling_Stc[3308951]["DataType"] = 91
	--上交数 银筹码
	tWorldCupGambling_Stc[3309064] = {}
	tWorldCupGambling_Stc[3309064]["EventType"] = 177
	tWorldCupGambling_Stc[3309064]["DataType"] = 21
	--登录获得筹码
	tWorldCupGambling_Stc["Login"] = {}
	tWorldCupGambling_Stc["Login"]["EventType"] = 176
	tWorldCupGambling_Stc["Login"]["DataType"] = 96
	-- 上交20w银两确认
	tWorldCupGambling_Stc["Silver"] = {}
	tWorldCupGambling_Stc["Silver"]["EventType"] = 178
	tWorldCupGambling_Stc["Silver"]["DataType"] = 00
local tWorldCupGambling_Award = {}
	--普通筹码
	tWorldCupGambling_Award[3308950] = {}
	tWorldCupGambling_Award[3308950]["RewardEMoneyMono"] = {}
	tWorldCupGambling_Award[3308950]["RewardEMoneyMono"]["Value"] = -100
	tWorldCupGambling_Award[3308950]["RewardItem"] = {}
	tWorldCupGambling_Award[3308950]["RewardItem"][1] = {}
	tWorldCupGambling_Award[3308950]["RewardItem"][1]["Id"] = 3308950
	tWorldCupGambling_Award[3308950]["RewardItem"][1]["Attr"] = "0 100"
	tWorldCupGambling_Award[3308950]["Talk"] = tWorldCupGambling_Text[3308950]["Award"]
	tWorldCupGambling_Award[3308950]["LogId"] = 12001079
	tWorldCupGambling_Award[3308950]["Type"] = 1
	tWorldCupGambling_Award[3308950]["Spend"] = "RewardEMoneyMono"
	--100天石购买金筹码
	tWorldCupGambling_Award[3308951] = {}
	tWorldCupGambling_Award[3308951]["RewardEMoney"] = {}
	tWorldCupGambling_Award[3308951]["RewardEMoney"]["Value"] = -100
	tWorldCupGambling_Award[3308951]["RewardItem"] = {}
	tWorldCupGambling_Award[3308951]["RewardItem"][1] = {}
	tWorldCupGambling_Award[3308951]["RewardItem"][1]["Id"] = 3308951
	tWorldCupGambling_Award[3308951]["RewardItem"][1]["Attr"] = "0 100"
	tWorldCupGambling_Award[3308951]["Talk"] = tWorldCupGambling_Text[3308951]["Award"]
	tWorldCupGambling_Award[3308951]["LogId"] = 12001079
	tWorldCupGambling_Award[3308951]["Type"] = 2
	tWorldCupGambling_Award[3308951]["Spend"] = "RewardEMoney"
	--800w购买银筹码
	tWorldCupGambling_Award[3309064] = {}
	tWorldCupGambling_Award[3309064]["RewardMoney"] = {}
	tWorldCupGambling_Award[3309064]["RewardMoney"]["Value"] = -8000000
	tWorldCupGambling_Award[3309064]["RewardItem"] = {}
	tWorldCupGambling_Award[3309064]["RewardItem"][1] = {}
	tWorldCupGambling_Award[3309064]["RewardItem"][1]["Id"] = 3309064
	tWorldCupGambling_Award[3309064]["RewardItem"][1]["Attr"] = "0 100"
	tWorldCupGambling_Award[3309064]["Talk"] = tWorldCupGambling_Text[3309064]["Award"]
	tWorldCupGambling_Award[3309064]["LogId"] = 12001079
	tWorldCupGambling_Award[3309064]["Type"] = 3
	tWorldCupGambling_Award[3309064]["Spend"] = "RewardMoney"
	--50筹码包
	tWorldCupGambling_Award[3308952] = {}
	tWorldCupGambling_Award[3308952]["DeleteItem"] = {}
	tWorldCupGambling_Award[3308952]["DeleteItem"][1] = {}
	tWorldCupGambling_Award[3308952]["DeleteItem"][1]["Id"] = 3308952
	tWorldCupGambling_Award[3308952]["DeleteItem"][1]["ItemNum"] = 1
	tWorldCupGambling_Award[3308952]["RewardItem"] = {}
	tWorldCupGambling_Award[3308952]["RewardItem"][1] = {}
	tWorldCupGambling_Award[3308952]["RewardItem"][1]["Id"] = 3308951
	tWorldCupGambling_Award[3308952]["RewardItem"][1]["Attr"] = "0 50"
	tWorldCupGambling_Award[3308952]["Talk"] = tWorldCupGambling_Text[3308952]["Award"]
	tWorldCupGambling_Award[3308952]["LogId"] = 12001079
	--100筹码包
	tWorldCupGambling_Award[3308953] = {}
	tWorldCupGambling_Award[3308953]["DeleteItem"] = {}
	tWorldCupGambling_Award[3308953]["DeleteItem"][1] = {}
	tWorldCupGambling_Award[3308953]["DeleteItem"][1]["Id"] = 3308953
	tWorldCupGambling_Award[3308953]["DeleteItem"][1]["ItemNum"] = 1
	tWorldCupGambling_Award[3308953]["RewardItem"] = {}
	tWorldCupGambling_Award[3308953]["RewardItem"][1] = {}
	tWorldCupGambling_Award[3308953]["RewardItem"][1]["Id"] = 3308951
	tWorldCupGambling_Award[3308953]["RewardItem"][1]["Attr"] = "0 100"
	tWorldCupGambling_Award[3308953]["Talk"] = tWorldCupGambling_Text[3308953]["Award"]
	tWorldCupGambling_Award[3308953]["LogId"] = 12001079
	--200筹码包
	tWorldCupGambling_Award[3308954] = {}
	tWorldCupGambling_Award[3308954]["DeleteItem"] = {}
	tWorldCupGambling_Award[3308954]["DeleteItem"][1] = {}
	tWorldCupGambling_Award[3308954]["DeleteItem"][1]["Id"] = 3308954
	tWorldCupGambling_Award[3308954]["DeleteItem"][1]["ItemNum"] = 1
	tWorldCupGambling_Award[3308954]["RewardItem"] = {}
	tWorldCupGambling_Award[3308954]["RewardItem"][1] = {}
	tWorldCupGambling_Award[3308954]["RewardItem"][1]["Id"] = 3308951
	tWorldCupGambling_Award[3308954]["RewardItem"][1]["Attr"] = "0 200"
	tWorldCupGambling_Award[3308954]["Talk"] = tWorldCupGambling_Text[3308954]["Award"]
	tWorldCupGambling_Award[3308954]["LogId"] = 12001079
	--300筹码包
	tWorldCupGambling_Award[3308955] = {}
	tWorldCupGambling_Award[3308955]["DeleteItem"] = {}
	tWorldCupGambling_Award[3308955]["DeleteItem"][1] = {}
	tWorldCupGambling_Award[3308955]["DeleteItem"][1]["Id"] = 3308955
	tWorldCupGambling_Award[3308955]["DeleteItem"][1]["ItemNum"] = 1
	tWorldCupGambling_Award[3308955]["RewardItem"] = {}
	tWorldCupGambling_Award[3308955]["RewardItem"][1] = {}
	tWorldCupGambling_Award[3308955]["RewardItem"][1]["Id"] = 3308951
	tWorldCupGambling_Award[3308955]["RewardItem"][1]["Attr"] = "0 300"
	tWorldCupGambling_Award[3308955]["Talk"] = tWorldCupGambling_Text[3308955]["Award"]
	tWorldCupGambling_Award[3308955]["LogId"] = 12001079
	--500筹码包
	tWorldCupGambling_Award[3308956] = {}
	tWorldCupGambling_Award[3308956]["DeleteItem"] = {}
	tWorldCupGambling_Award[3308956]["DeleteItem"][1] = {}
	tWorldCupGambling_Award[3308956]["DeleteItem"][1]["Id"] = 3308956
	tWorldCupGambling_Award[3308956]["DeleteItem"][1]["ItemNum"] = 1
	tWorldCupGambling_Award[3308956]["RewardItem"] = {}
	tWorldCupGambling_Award[3308956]["RewardItem"][1] = {}
	tWorldCupGambling_Award[3308956]["RewardItem"][1]["Id"] = 3308951
	tWorldCupGambling_Award[3308956]["RewardItem"][1]["Attr"] = "0 500"
	tWorldCupGambling_Award[3308956]["Talk"] = tWorldCupGambling_Text[3308956]["Award"]
	tWorldCupGambling_Award[3308956]["LogId"] = 12001079
	--1000筹码包
	tWorldCupGambling_Award[3308957] = {}
	tWorldCupGambling_Award[3308957]["DeleteItem"] = {}
	tWorldCupGambling_Award[3308957]["DeleteItem"][1] = {}
	tWorldCupGambling_Award[3308957]["DeleteItem"][1]["Id"] = 3308957
	tWorldCupGambling_Award[3308957]["DeleteItem"][1]["ItemNum"] = 1
	tWorldCupGambling_Award[3308957]["RewardItem"] = {}
	tWorldCupGambling_Award[3308957]["RewardItem"][1] = {}
	tWorldCupGambling_Award[3308957]["RewardItem"][1]["Id"] = 3308951
	tWorldCupGambling_Award[3308957]["RewardItem"][1]["Attr"] = "0 1000"
	tWorldCupGambling_Award[3308957]["Talk"] = tWorldCupGambling_Text[3308957]["Award"]
	tWorldCupGambling_Award[3308957]["LogId"] = 12001079
	--2000筹码包
	tWorldCupGambling_Award[3308958] = {}
	tWorldCupGambling_Award[3308958]["DeleteItem"] = {}
	tWorldCupGambling_Award[3308958]["DeleteItem"][1] = {}
	tWorldCupGambling_Award[3308958]["DeleteItem"][1]["Id"] = 3308958
	tWorldCupGambling_Award[3308958]["DeleteItem"][1]["ItemNum"] = 1
	tWorldCupGambling_Award[3308958]["RewardItem"] = {}
	tWorldCupGambling_Award[3308958]["RewardItem"][1] = {}
	tWorldCupGambling_Award[3308958]["RewardItem"][1]["Id"] = 3308951
	tWorldCupGambling_Award[3308958]["RewardItem"][1]["Attr"] = "0 2000"
	tWorldCupGambling_Award[3308958]["Talk"] = tWorldCupGambling_Text[3308958]["Award"]
	tWorldCupGambling_Award[3308958]["LogId"] = 12001079
	--100普通筹码包
	tWorldCupGambling_Award[3308859] = {}
	tWorldCupGambling_Award[3308859]["DeleteItem"] = {}
	tWorldCupGambling_Award[3308859]["DeleteItem"][1] = {}
	tWorldCupGambling_Award[3308859]["DeleteItem"][1]["Id"] = 3308859
	tWorldCupGambling_Award[3308859]["DeleteItem"][1]["ItemNum"] = 1
	tWorldCupGambling_Award[3308859]["RewardItem"] = {}
	tWorldCupGambling_Award[3308859]["RewardItem"][1] = {}
	tWorldCupGambling_Award[3308859]["RewardItem"][1]["Id"] = 3308950
	tWorldCupGambling_Award[3308859]["RewardItem"][1]["Attr"] = "0 100"
	tWorldCupGambling_Award[3308859]["Talk"] = tWorldCupGambling_Text[3308859]["Award"]
	tWorldCupGambling_Award[3308859]["LogId"] = 12001079
	--100金筹码包
	tWorldCupGambling_Award[3309077] = {}
	tWorldCupGambling_Award[3309077]["DeleteItem"] = {}
	tWorldCupGambling_Award[3309077]["DeleteItem"][1] = {}
	tWorldCupGambling_Award[3309077]["DeleteItem"][1]["Id"] = 3309077
	tWorldCupGambling_Award[3309077]["DeleteItem"][1]["ItemNum"] = 1
	tWorldCupGambling_Award[3309077]["RewardItem"] = {}
	tWorldCupGambling_Award[3309077]["RewardItem"][1] = {}
	tWorldCupGambling_Award[3309077]["RewardItem"][1]["Id"] = 3308951
	tWorldCupGambling_Award[3309077]["RewardItem"][1]["Attr"] = "0 100"
	tWorldCupGambling_Award[3309077]["Talk"] = tWorldCupGambling_Text[3309077]["Award"]
	tWorldCupGambling_Award[3309077]["LogId"] = 12001079
--登录触发
local tWorldCupGambling_LoginAward = {}
	tWorldCupGambling_LoginAward[1] = {}
	tWorldCupGambling_LoginAward[1]["RewardItem"] = {}
	tWorldCupGambling_LoginAward[1]["RewardItem"][1] = {}
	tWorldCupGambling_LoginAward[1]["RewardItem"][1]["Id"] = 3308950
	tWorldCupGambling_LoginAward[1]["RewardItem"][1]["Attr"] = "0 10"
	tWorldCupGambling_LoginAward[1]["EventType"] = 176
	tWorldCupGambling_LoginAward[1]["DataType"] = 96
	tWorldCupGambling_LoginAward[1]["RewardData"] = 1
	tWorldCupGambling_LoginAward[1]["RewardDelay"] = 1
	tWorldCupGambling_LoginAward[1]["RewardTimeType"] = 4
	tWorldCupGambling_LoginAward[1]["HaveReceive"] = ""
	tWorldCupGambling_LoginAward[1]["LogId"] = 12001079
	tWorldCupGambling_LoginAward[2] = {}
	tWorldCupGambling_LoginAward[2]["RewardItem"] = {}
	tWorldCupGambling_LoginAward[2]["RewardItem"][1] = {}
	tWorldCupGambling_LoginAward[2]["RewardItem"][1]["Id"] = 3308950
	tWorldCupGambling_LoginAward[2]["RewardItem"][1]["Attr"] = "0 20"
	tWorldCupGambling_LoginAward[2]["EventType"] = 176
	tWorldCupGambling_LoginAward[2]["DataType"] = 96
	tWorldCupGambling_LoginAward[2]["RewardData"] = 1
	tWorldCupGambling_LoginAward[2]["RewardDelay"] = 1
	tWorldCupGambling_LoginAward[2]["RewardTimeType"] = 4
	tWorldCupGambling_LoginAward[2]["HaveReceive"] = ""
	tWorldCupGambling_LoginAward[2]["LogId"] = 12001079
local tWorldCupGambling_NpcGossip = {}
	tWorldCupGambling_NpcGossip[3308950] = {}
	tWorldCupGambling_NpcGossip[3308950]["HandIn"] = {}
	tWorldCupGambling_NpcGossip[3308950]["HandIn"]["Index"] = "4-3"
	tWorldCupGambling_NpcGossip[3308950]["HandIn"]["Pos"] = "431"
	tWorldCupGambling_NpcGossip[3308950]["BuyConfirm"] = "2-2"
	tWorldCupGambling_NpcGossip[3308950]["Buy"] = "2-1"
	tWorldCupGambling_NpcGossip[3308950]["Cancel"] = "2-1"
	tWorldCupGambling_NpcGossip[3308951] = {}
	tWorldCupGambling_NpcGossip[3308951]["HandIn"] = {}
	tWorldCupGambling_NpcGossip[3308951]["HandIn"]["Index"] = "4-5"
	tWorldCupGambling_NpcGossip[3308951]["HandIn"]["Pos"] = "451"
	tWorldCupGambling_NpcGossip[3308951]["BuyConfirm"] = "2-4"
	tWorldCupGambling_NpcGossip[3308951]["Buy"] = "2-1"
	tWorldCupGambling_NpcGossip[3308951]["Cancel"] = "2-1"
	tWorldCupGambling_NpcGossip[3309064] = {}
	tWorldCupGambling_NpcGossip[3309064]["HandIn"] = {}
	tWorldCupGambling_NpcGossip[3309064]["HandIn"]["Index"] = "4-7"
	tWorldCupGambling_NpcGossip[3309064]["HandIn"]["Pos"] = "471"
	tWorldCupGambling_NpcGossip[3309064]["BuyConfirm"] = "2-5"
	tWorldCupGambling_NpcGossip[3309064]["Buy"] = "2-1"
	tWorldCupGambling_NpcGossip[3309064]["Cancel"] = "2-1"
--上交筹码emonelog
local tWorldCupGambling_EmoneyLogIndex = {}
	--普通筹码
	tWorldCupGambling_EmoneyLogIndex[3308950] = {}
	tWorldCupGambling_EmoneyLogIndex[3308950][10] = 4
	tWorldCupGambling_EmoneyLogIndex[3308950][100] = 5
	tWorldCupGambling_EmoneyLogIndex[3308950][500] = 6
	--金筹码
	tWorldCupGambling_EmoneyLogIndex[3308951] = {}
	tWorldCupGambling_EmoneyLogIndex[3308951][100] = 7
	tWorldCupGambling_EmoneyLogIndex[3308951][500] = 8
	tWorldCupGambling_EmoneyLogIndex[3308951][1000] = 9
	--银筹码
	tWorldCupGambling_EmoneyLogIndex[3309064] = {}
	tWorldCupGambling_EmoneyLogIndex[3309064][100] = 10
	tWorldCupGambling_EmoneyLogIndex[3309064][500] = 11
	tWorldCupGambling_EmoneyLogIndex[3309064][1000] = 12
local tWorldCupGambling_EmoneyLog = {}
	--100赠点购买100普通筹码
	tWorldCupGambling_EmoneyLog[1] = "350	21432	0	0	100	"
	--花100天石购买高级筹码
	tWorldCupGambling_EmoneyLog[2] = "350	21430	100	100	1	"
	--花800W金币购买高级筹码
	tWorldCupGambling_EmoneyLog[3] = "350	21431	0	0	8000000	"
	--上交10个普通筹码
	tWorldCupGambling_EmoneyLog[4] = "350	21433	0	0	1	"
	--上交100个普通筹码
	tWorldCupGambling_EmoneyLog[5] = "350	21434	0	0	1	"
	--上交500个普通筹码
	tWorldCupGambling_EmoneyLog[6] = "350	21435	0	0	1	"
	--上交100个高级筹码
	tWorldCupGambling_EmoneyLog[7] = "350	21436	0	0	1	"
	--上交500个高级筹码
	tWorldCupGambling_EmoneyLog[8] = "350	21437	0	0	1	"
	--上交1000个高级筹码
	tWorldCupGambling_EmoneyLog[9] = "350	21438	0	0	1	"
	--上交100个银筹码
	tWorldCupGambling_EmoneyLog[10] = "350	21443	0	0	1	"
	--上交500个银筹码
	tWorldCupGambling_EmoneyLog[11] = "350	21444	0	0	1	"
	--上交1000个银筹码
	tWorldCupGambling_EmoneyLog[12] = "350	21445	0	0	1	"
----------------------------------逻辑部分---------------------------------------------
-- 判断是否上交过20w金币
function WorldCupGambling_ChkHandInMoney()
	local nNpcId = Get_NpcId()
	if not Sys_ChkFullTime(tWorldCupGambling_Data["ScheduleTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-3")
		return
	end
	
	local nEventType = tWorldCupGambling_Stc["Silver"]["EventType"]
	local nDataType = tWorldCupGambling_Stc["Silver"]["DataType"]
	if not Task_ChkStcValue(nEventType, nDataType, ">", 0) then
		LinkNpcGossipFunc_New(nNpcId, "5-1")
		return
	else
		WorldCupGambling_OpenTheWebPage()
	end
end

-- 前往竞猜8强路线
function WorldCupGambling_OpenTheWebPage()
	local nNpcId = Get_NpcId()
	if not Sys_ChkFullTime(tWorldCupGambling_Data["ScheduleTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-3")
		return
	end
	User_SendWebPage("https://grandwinner.99.com/worldcup/")
end

-- 上交20w银两
function WorldCupGambling_HandInMoney()
	local nNpcId = Get_NpcId()
	if not Sys_ChkFullTime(tWorldCupGambling_Data["ScheduleTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-3")
		return
	end
	
	local nNeedMoney = tWorldCupGambling_Data["NeedMoney"]
	if not User_CanPutMoney2Bag(-nNeedMoney) then
		LinkNpcGossipFunc_New(nNpcId, "5-2")
		return
	end
	-- 扣除金币
	if User_AddMoney(-nNeedMoney) then
		Sys_SaveActionFestivalLog(tWorldCupGambling_Data["MoneyLog"])
		local nEventType = tWorldCupGambling_Stc["Silver"]["EventType"]
		local nDataType = tWorldCupGambling_Stc["Silver"]["DataType"]
		Task_SetStatistic(nEventType, nDataType, 1, 1)
		Task_SetStcTimestamp(nEventType, nDataType, 0)
		LinkNpcGossipFunc_New(nNpcId, "5-3")
	end
end

--网页跳转
function WorldCupGambling_ToGambling()
	User_SendWebPage("http://coevent.99.com/worldcup2018/")
end
--购买筹码 - 二次确认
function WorldCupGambling_ConfirmBuy(nItemId)
	local nNpcId = Get_NpcId()
	local nEventType = tWorldCupGambling_Stc["TwiceConfirm"][nItemId]["EventType"]
	local nDataType = tWorldCupGambling_Stc["TwiceConfirm"][nItemId]["DataType"]
	--清零二次确认
	WorldCupGambling_ResetTwice(nItemId)
	local nData = Get_UserStatisticValue(nEventType,nDataType)
	--已经屏蔽二次确认
	if nData >= 1 then
		--直接买
		WorldCupGambling_Buy(nItemId)
		return
	end
	--未屏蔽二次确认
	LinkNpcGossipFunc_New(nNpcId,tWorldCupGambling_NpcGossip[nItemId]["BuyConfirm"])
end
--购买筹码
function WorldCupGambling_Buy(nItemId)
	local nNpcId = Get_NpcId()
	local nType = tWorldCupGambling_Award[nItemId]["Type"]
	local nSpend = tWorldCupGambling_Award[nItemId]["Spend"]
	local nNeed = -tWorldCupGambling_Award[nItemId][nSpend]["Value"]
	--不在活动时间内
	if not Sys_ChkFullTime(tWorldCupGambling_Data["ActivityTime"]) then
		User_TalkChannel2005(tWorldCupGambling_Text["NoTime"])
		return
	end
	--赠天石
	if nType == 1 then
		if Get_UserMonoEMoney() < nNeed then
			Sys_MsgBox(tWorldCupGambling_Text[nItemId]["NoEMoneyMono"])
			return
		end
	--天石
	elseif nType == 2 then
		if Get_UserEMoney() < nNeed then
			Sys_MsgBox(tWorldCupGambling_Text[nItemId]["NoEMoney"])
			return
		end
	--金币
	elseif nType == 3 then
		if not User_CanPutMoney2Bag(-nNeed) then
			Sys_MsgBox(tWorldCupGambling_Text[nItemId]["NoMoney"])
			return
		end
	end
	--空间不足
	if not RewardTemplate_CheckSpace(tWorldCupGambling_Award[nItemId]) then
		Sys_MsgBox(tWorldCupGambling_Text[nItemId]["NoSpace"])
		return
	end
	--给物品
	RewardTemplate_UseItem(tWorldCupGambling_Award[nItemId])
	Sys_SaveEmoneyBuy(tWorldCupGambling_EmoneyLog[nType])
	LinkNpcGossipFunc_New(nNpcId,tWorldCupGambling_NpcGossip[nItemId]["Buy"])
end
--屏蔽二次确认
function WorldCupGambling_ToCancelConfirm(nItemId)
	local nNpcId = Get_NpcId()
	local nEventType = tWorldCupGambling_Stc["TwiceConfirm"][nItemId]["EventType"]
	local nDataType = tWorldCupGambling_Stc["TwiceConfirm"][nItemId]["DataType"]
	Task_SetStatistic(nEventType,nDataType,1,1)
	WorldCupGambling_Buy(nItemId)
	LinkNpcGossipFunc_New(nNpcId,tWorldCupGambling_NpcGossip[nItemId]["Cancel"])
end
--上交筹码
function WorldCupGambling_HandIn(nItemId,nNum)
	local nNpcId = Get_NpcId()
	local nEventType = tWorldCupGambling_Stc[nItemId]["EventType"]
	local nDataType = tWorldCupGambling_Stc[nItemId]["DataType"]
	local nData = Get_UserStatisticValue(nEventType,nDataType)
	local nPos = tWorldCupGambling_NpcGossip[nItemId]["HandIn"]["Pos"]
	local nEmoneyLogIndex = tWorldCupGambling_EmoneyLogIndex[nItemId][nNum]
	--不在活动时间内
	if not Sys_ChkFullTime(tWorldCupGambling_Data["ActivityTime"]) then
		User_TalkChannel2005(tWorldCupGambling_Text["NoTimeHandIn"])
		return
	end
	--筹码不足
	if not Item_ChkMulItem(nItemId,nItemId,nNum) then
		Sys_MsgBox(tWorldCupGambling_Text[nItemId]["NoItem"])
		return
	end
	--删除物品加掩码
	if Item_DelMulItem(nItemId,nItemId,nNum) then
		Task_AddStatistic(nEventType,nDataType,nNum,1)
		Sys_SaveEmoneyBuy(tWorldCupGambling_EmoneyLog[nEmoneyLogIndex])
		--提示
		tNpcGossip[nNpcId]["Text"..nPos] = string.format(tWorldCupGambling_Text[21499]["Text"..nPos],nNum,nData+nNum)
		LinkNpcGossipFunc_New(nNpcId,tWorldCupGambling_NpcGossip[nItemId]["HandIn"]["Index"])
	end
end
--使用筹码
function WorldCupGambling_UseChip(nItemId)
	local nUserMapId = Get_UserMapId()
	local nIndex = 1
	--如果在扑克大厅
	if nUserMapId == 3053 then
		nIndex = 2
	end
	local nNpcId = tWorldCupGambling_Data["NpcData"][nIndex]["NpcId"]
	local nMapId = tWorldCupGambling_Data["NpcData"][nIndex]["MapId"]
	local nPosX = tWorldCupGambling_Data["NpcData"][nIndex]["PosX"]
	local nPosY = tWorldCupGambling_Data["NpcData"][nIndex]["PosY"]
	--不在活动时间内
	if not Sys_ChkFullTime(tWorldCupGambling_Data["ActivityTime"]) then
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tWorldCupGambling_Text[nItemId]["OutTime"])
		end
		return
	end
	--寻路
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end
--使用筹码包
function WorldCupGambling_UseChipPack(nItemId)
	--不在活动时间内
	if not Sys_ChkFullTime(tWorldCupGambling_Data["ActivityTime"]) then
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tWorldCupGambling_Text[nItemId]["OutTime"])
		end
		return
	end
	--没有物品
	if not Item_ChkItem(nItemId) then
		return
	end
	--空间不足
	if not RewardTemplate_CheckSpace(tWorldCupGambling_Award[nItemId]) then
		Sys_MsgBox(tWorldCupGambling_Text[nItemId]["NoSpace"])
		return
	end
	--给物品
	RewardTemplate_UseItem(tWorldCupGambling_Award[nItemId])
end
--上线触发
function WorldCupGambling_Login()
	local nEventType = tWorldCupGambling_Stc["Login"]["EventType"]
	local nDataType = tWorldCupGambling_Stc["Login"]["DataType"]
	local nIndex = 1
	--不在活动时间内
	if not Sys_ChkFullTime(tActivityTime["WorldCupGambling"]["LoginActivityTime"]) then
		return
	end
	--等级达到2转则给20个
	if User_JudgeLevelAndMetempsychosis(tWorldCupGambling_Data["Level"],tWorldCupGambling_Data["Metempsychosis"]) then
		nIndex = 2
	end
	--隔天
	if Task_StcInterval(nEventType,nDataType,1,4) then
		Task_SetStatistic(nEventType,nDataType,0,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end
	--今天领过
	if Get_UserStatisticValue(nEventType,nDataType) >= 1 then
		return
	end
	--空间不足
	if not RewardTemplate_CheckSpace(tWorldCupGambling_LoginAward[nIndex]) then
		User_TalkChannel2005(tWorldCupGambling_Text["LoginNoSpace"])
		return
	end
	--给物品
	RewardTemplate_UseItem(tWorldCupGambling_LoginAward[nIndex])
end
--清零二次确认
function WorldCupGambling_ResetTwice(nItemId)
	local nEventType = tWorldCupGambling_Stc["TwiceConfirm"][nItemId]["EventType"]
	local nDataType = tWorldCupGambling_Stc["TwiceConfirm"][nItemId]["DataType"]
	--隔天
	if Task_StcInterval(nEventType,nDataType,1,4) then
		Task_SetStatistic(nEventType,nDataType,0,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end
end
----------------------------------NPC部分---------------------------------------------
tNpcFace[6073] = 71
tNpcGossip[21499]= tNpcGossip[21499] or DefaultNpc:new{}
tNpcGossip[21499]["OptionHidden"] = 1
--活动前
tNpcGossip[21499]["Text1-1"] = {111,112,113}
tNpcGossip[21499]["Text111"] = tWorldCupGambling_Text[21499]["Text111"]
tNpcGossip[21499]["Text112"] = tWorldCupGambling_Text[21499]["Text112"]
tNpcGossip[21499]["Text113"] = tWorldCupGambling_Text[21499]["Text113"]
tNpcGossip[21499]["ChkFunc1-1"]= function()
	return CommonFunc_GetBeforeActivityTime(tWorldCupGambling_Data["ActivityTime"])
end
tNpcGossip[21499]["tOption1-1"] = {111}
tNpcGossip[21499]["Option111"] = tWorldCupGambling_Text[21499]["Option111"]
--活动中
tNpcGossip[21499]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[21499]["Text121"] = tWorldCupGambling_Text[21499]["Text121"]
tNpcGossip[21499]["Text122"] = tWorldCupGambling_Text[21499]["Text122"]
tNpcGossip[21499]["Text123"] = tWorldCupGambling_Text[21499]["Text123"]
tNpcGossip[21499]["Text124"] = tWorldCupGambling_Text[21499]["Text124"]
tNpcGossip[21499]["Text125"] = tWorldCupGambling_Text[21499]["Text125"]
tNpcGossip[21499]["ChkFunc1-2"]= function()
	return Sys_ChkFullTime(tWorldCupGambling_Data["ActivityTime"])
end
tNpcGossip[21499]["tOption1-2"] = {121,122,123,124}
tNpcGossip[21499]["Option121"] = tWorldCupGambling_Text[21499]["Option121"]
tNpcGossip[21499]["Option122"] = tWorldCupGambling_Text[21499]["Option122"]
tNpcGossip[21499]["Option123"] = tWorldCupGambling_Text[21499]["Option123"]
tNpcGossip[21499]["Option125"] = tWorldCupGambling_Text[21499]["Option125"]
tNpcGossip[21499]["Option124"] = tWorldCupGambling_Text[21499]["Option124"]
tNpcGossip[21499]["OptionPoint121"] = "2-1"
tNpcGossip[21499]["OptionPoint122"] = "4-1"
tNpcGossip[21499]["OptionFunc123"] = "WorldCupGambling_ToGambling"
-- tNpcGossip[21499]["OptionChkFunc125"] = function()
	-- if not Sys_ChkFullTime(tWorldCupGambling_Data["ScheduleTime"]) then
		-- return false
	-- else
		-- return true
	-- end
-- end
-- tNpcGossip[21499]["OptionFunc125"] = "WorldCupGambling_ChkHandInMoney"
--活动后
tNpcGossip[21499]["Text1-3"] = {131}
tNpcGossip[21499]["Text131"] = tWorldCupGambling_Text[21499]["Text131"]
tNpcGossip[21499]["ChkFunc1-3"]= function()
	return CommonFunc_GetAfterActivityTime(tWorldCupGambling_Data["ActivityTime"])
end
tNpcGossip[21499]["tOption1-3"] = {131}
tNpcGossip[21499]["Option131"] = tWorldCupGambling_Text[21499]["Option131"]
--抢购筹码
tNpcGossip[21499]["Text2-1"] = {211,212}
tNpcGossip[21499]["Text211"] = tWorldCupGambling_Text[21499]["Text211"]
tNpcGossip[21499]["Text212"] = tWorldCupGambling_Text[21499]["Text212"]
tNpcGossip[21499]["tOption2-1"] = {211,212,213,214}
tNpcGossip[21499]["Option211"] = tWorldCupGambling_Text[21499]["Option211"]
tNpcGossip[21499]["Option212"] = tWorldCupGambling_Text[21499]["Option212"]
tNpcGossip[21499]["Option213"] = tWorldCupGambling_Text[21499]["Option213"]
tNpcGossip[21499]["Option214"] = tWorldCupGambling_Text[21499]["Option214"]
tNpcGossip[21499]["OptionFunc211"] = "WorldCupGambling_ConfirmBuy</N>3308950"
tNpcGossip[21499]["OptionFunc212"] = "WorldCupGambling_ConfirmBuy</N>3309064"
tNpcGossip[21499]["OptionFunc213"] = "WorldCupGambling_ConfirmBuy</N>3308951"
--购买100个普通筹码
tNpcGossip[21499]["Text2-2"] = {221}
tNpcGossip[21499]["Text221"] = tWorldCupGambling_Text[21499]["Text221"]
tNpcGossip[21499]["tOption2-2"] = {221,222}
tNpcGossip[21499]["Option221"] = tWorldCupGambling_Text[21499]["Option221"]
tNpcGossip[21499]["Option222"] = tWorldCupGambling_Text[21499]["Option222"]
tNpcGossip[21499]["OptionFunc221"] = "WorldCupGambling_Buy</N>3308950"
tNpcGossip[21499]["OptionFunc222"] = "WorldCupGambling_ToCancelConfirm</N>3308950"
--购买100个高级筹码
tNpcGossip[21499]["Text2-3"] = {231}
tNpcGossip[21499]["Text231"] = tWorldCupGambling_Text[21499]["Text231"]
tNpcGossip[21499]["tOption2-3"] = {231,232}
tNpcGossip[21499]["Option231"] = tWorldCupGambling_Text[21499]["Option231"]
tNpcGossip[21499]["Option232"] = tWorldCupGambling_Text[21499]["Option232"]
tNpcGossip[21499]["OptionFunc231"] = "WorldCupGambling_ConfirmBuy</N>3308951"
tNpcGossip[21499]["OptionFunc232"] = "WorldCupGambling_ConfirmBuy</N>3309064"
--购买100个高级筹码 - 100天石
tNpcGossip[21499]["Text2-4"] = {241}
tNpcGossip[21499]["Text241"] = tWorldCupGambling_Text[21499]["Text241"]
tNpcGossip[21499]["tOption2-4"] = {241,242}
tNpcGossip[21499]["Option241"] = tWorldCupGambling_Text[21499]["Option241"]
tNpcGossip[21499]["Option242"] = tWorldCupGambling_Text[21499]["Option242"]
tNpcGossip[21499]["OptionFunc241"] = "WorldCupGambling_Buy</N>3308951"
tNpcGossip[21499]["OptionFunc242"] = "WorldCupGambling_ToCancelConfirm</N>3308951"
--购买100个高级筹码 - 800w银两
tNpcGossip[21499]["Text2-5"] = {251}
tNpcGossip[21499]["Text251"] = tWorldCupGambling_Text[21499]["Text251"]
tNpcGossip[21499]["tOption2-5"] = {251,252}
tNpcGossip[21499]["Option251"] = tWorldCupGambling_Text[21499]["Option251"]
tNpcGossip[21499]["Option252"] = tWorldCupGambling_Text[21499]["Option252"]
tNpcGossip[21499]["OptionFunc251"] = "WorldCupGambling_Buy</N>3309064"
tNpcGossip[21499]["OptionFunc252"] = "WorldCupGambling_ToCancelConfirm</N>3309064"
--屏蔽二次确认
tNpcGossip[21499]["Text3-1"] = {311}
tNpcGossip[21499]["Text311"] = tWorldCupGambling_Text[21499]["Text311"]
tNpcGossip[21499]["tOption3-1"] = {311,312}
tNpcGossip[21499]["Option311"] = tWorldCupGambling_Text[21499]["Option311"]
tNpcGossip[21499]["Option312"] = tWorldCupGambling_Text[21499]["Option312"]
tNpcGossip[21499]["OptionFunc311"] = "WorldCupGambling_CancelConfirm"
--上交竞猜筹码
tNpcGossip[21499]["Text4-1"] = {411}
tNpcGossip[21499]["Text411"] = tWorldCupGambling_Text[21499]["Text411"]
tNpcGossip[21499]["tOption4-1"] = {411,412,413,414}
tNpcGossip[21499]["Option411"] = tWorldCupGambling_Text[21499]["Option411"]
tNpcGossip[21499]["Option412"] = tWorldCupGambling_Text[21499]["Option412"]
tNpcGossip[21499]["Option413"] = tWorldCupGambling_Text[21499]["Option413"]
tNpcGossip[21499]["Option414"] = tWorldCupGambling_Text[21499]["Option414"]
tNpcGossip[21499]["OptionPoint411"] = "4-2"
tNpcGossip[21499]["OptionPoint412"] = "4-6"
tNpcGossip[21499]["OptionPoint413"] = "4-4"
--上交竞猜筹码 -- 普通筹码
tNpcGossip[21499]["Text4-2"] = {421}
tNpcGossip[21499]["Text421"] = tWorldCupGambling_Text[21499]["Text421"]
tNpcGossip[21499]["tOption4-2"] = {421,422,423,424}
tNpcGossip[21499]["Option421"] = tWorldCupGambling_Text[21499]["Option421"]
tNpcGossip[21499]["Option422"] = tWorldCupGambling_Text[21499]["Option422"]
tNpcGossip[21499]["Option423"] = tWorldCupGambling_Text[21499]["Option423"]
tNpcGossip[21499]["Option424"] = tWorldCupGambling_Text[21499]["Option424"]
tNpcGossip[21499]["OptionFunc421"] = "WorldCupGambling_HandIn</N>3308950</N>10"
tNpcGossip[21499]["OptionFunc422"] = "WorldCupGambling_HandIn</N>3308950</N>100"
tNpcGossip[21499]["OptionFunc423"] = "WorldCupGambling_HandIn</N>3308950</N>500"
tNpcGossip[21499]["OptionPoint424"] = "4-1"
--上交竞猜筹码 -- 普通筹码 -- 上交成功
tNpcGossip[21499]["Text4-3"] = {431}
tNpcGossip[21499]["Text431"] = tWorldCupGambling_Text[21499]["Text431"]
tNpcGossip[21499]["tOption4-3"] = {431,432}
tNpcGossip[21499]["Option431"] = tWorldCupGambling_Text[21499]["Option431"]
tNpcGossip[21499]["Option432"] = tWorldCupGambling_Text[21499]["Option432"]
tNpcGossip[21499]["OptionPoint431"] = "4-2"
tNpcGossip[21499]["OptionFunc432"] = "WorldCupGambling_ToGambling"
--上交竞猜筹码 -- 高级筹码
tNpcGossip[21499]["Text4-4"] = {441}
tNpcGossip[21499]["Text441"] = tWorldCupGambling_Text[21499]["Text441"]
tNpcGossip[21499]["tOption4-4"] = {441,442,443,444}
tNpcGossip[21499]["Option441"] = tWorldCupGambling_Text[21499]["Option441"]
tNpcGossip[21499]["Option442"] = tWorldCupGambling_Text[21499]["Option442"]
tNpcGossip[21499]["Option443"] = tWorldCupGambling_Text[21499]["Option443"]
tNpcGossip[21499]["Option444"] = tWorldCupGambling_Text[21499]["Option444"]
tNpcGossip[21499]["OptionFunc441"] = "WorldCupGambling_HandIn</N>3308951</N>100"
tNpcGossip[21499]["OptionFunc442"] = "WorldCupGambling_HandIn</N>3308951</N>500"
tNpcGossip[21499]["OptionFunc443"] = "WorldCupGambling_HandIn</N>3308951</N>1000"
tNpcGossip[21499]["OptionPoint444"] = "4-1"
--上交竞猜筹码 -- 高级筹码 -- 上交成功
tNpcGossip[21499]["Text4-5"] = {451}
tNpcGossip[21499]["Text451"] = tWorldCupGambling_Text[21499]["Text451"]
tNpcGossip[21499]["tOption4-5"] = {451,452,453,454}
tNpcGossip[21499]["Option451"] = tWorldCupGambling_Text[21499]["Option451"]
tNpcGossip[21499]["Option452"] = tWorldCupGambling_Text[21499]["Option452"]
tNpcGossip[21499]["OptionPoint451"] = "4-4"
tNpcGossip[21499]["OptionFunc452"] = "WorldCupGambling_ToGambling"
--上交竞猜筹码 -- 银筹码
tNpcGossip[21499]["Text4-6"] = {461}
tNpcGossip[21499]["Text461"] = tWorldCupGambling_Text[21499]["Text461"]
tNpcGossip[21499]["tOption4-6"] = {461,462,463,464}
tNpcGossip[21499]["Option461"] = tWorldCupGambling_Text[21499]["Option461"]
tNpcGossip[21499]["Option462"] = tWorldCupGambling_Text[21499]["Option462"]
tNpcGossip[21499]["Option463"] = tWorldCupGambling_Text[21499]["Option463"]
tNpcGossip[21499]["Option464"] = tWorldCupGambling_Text[21499]["Option464"]
tNpcGossip[21499]["OptionFunc461"] = "WorldCupGambling_HandIn</N>3309064</N>100"
tNpcGossip[21499]["OptionFunc462"] = "WorldCupGambling_HandIn</N>3309064</N>500"
tNpcGossip[21499]["OptionFunc463"] = "WorldCupGambling_HandIn</N>3309064</N>1000"
tNpcGossip[21499]["OptionPoint464"] = "4-1"
--上交竞猜筹码 -- 银筹码 -- 上交成功
tNpcGossip[21499]["Text4-7"] = {471}
tNpcGossip[21499]["Text471"] = tWorldCupGambling_Text[21499]["Text471"]
tNpcGossip[21499]["tOption4-7"] = {471,472,473,474}
tNpcGossip[21499]["Option471"] = tWorldCupGambling_Text[21499]["Option471"]
tNpcGossip[21499]["Option472"] = tWorldCupGambling_Text[21499]["Option472"]
tNpcGossip[21499]["OptionPoint471"] = "4-6"
tNpcGossip[21499]["OptionFunc472"] = "WorldCupGambling_ToGambling"
-- 【未上交20w银两】
tNpcGossip[21499]["Text5-1"] = {511}
tNpcGossip[21499]["Text511"] = tWorldCupGambling_Text[21499]["Text511"]
tNpcGossip[21499]["tOption5-1"] = {511, 512}
tNpcGossip[21499]["Option511"] = tWorldCupGambling_Text[21499]["Option511"]
tNpcGossip[21499]["Option512"] = tWorldCupGambling_Text[21499]["Option512"]
tNpcGossip[21499]["OptionFunc511"] = "WorldCupGambling_HandInMoney"
tNpcGossip[21499]["OptionFunc512"] = "WorldCupGambling_OpenTheWebPage"
-- 【没有足够的银两】
tNpcGossip[21499]["Text5-2"] = {521}
tNpcGossip[21499]["Text521"] = tWorldCupGambling_Text[21499]["Text521"]
tNpcGossip[21499]["tOption5-2"] = {521}
tNpcGossip[21499]["Option521"] = tWorldCupGambling_Text[21499]["Option521"]
-- 【有足够的银两】
tNpcGossip[21499]["Text5-3"] = {531, 532}
tNpcGossip[21499]["Text531"] = tWorldCupGambling_Text[21499]["Text531"]
tNpcGossip[21499]["Text532"] = tWorldCupGambling_Text[21499]["Text532"]
tNpcGossip[21499]["tOption5-3"] = {531}
tNpcGossip[21499]["Option531"] = tWorldCupGambling_Text[21499]["Option531"]
tNpcGossip[21499]["OptionFunc531"] = "WorldCupGambling_OpenTheWebPage"



--扑克大厅npc
tNpcGossip[21500] = tNpcGossip[21499]
---------------------------------物品部分---------------------------------------------
tItemFace[3308949] = 1484
--普通筹码
tItem[3308950] = tItem[3308950] or {}
tItem[3308950]["Function"] = function(nItemId,sItemName)
	WorldCupGambling_UseChip(nItemId)
end
--金筹码
tItem[3308951] = tItem[3308951] or {}
tItem[3308951]["Function"] = function(nItemId,sItemName)
	WorldCupGambling_UseChip(nItemId)
end
--银筹码
tItem[3309064] = tItem[3309064] or {}
tItem[3309064]["Function"] = function(nItemId,sItemName)
	WorldCupGambling_UseChip(nItemId)
end
--50高级筹码
tItem[3308952] = tItem[3308952] or {}
tItem[3308952]["Function"] = function(nItemId,sItemName)
	WorldCupGambling_UseChipPack(nItemId)
end
--100高级筹码
tItem[3308953] = tItem[3308953] or {}
tItem[3308953]["Function"] = function(nItemId,sItemName)
	WorldCupGambling_UseChipPack(nItemId)
end
--200高级筹码
tItem[3308954] = tItem[3308954] or {}
tItem[3308954]["Function"] = function(nItemId,sItemName)
	WorldCupGambling_UseChipPack(nItemId)
end
--300高级筹码
tItem[3308955] = tItem[3308955] or {}
tItem[3308955]["Function"] = function(nItemId,sItemName)
	WorldCupGambling_UseChipPack(nItemId)
end
--500高级筹码
tItem[3308956] = tItem[3308956] or {}
tItem[3308956]["Function"] = function(nItemId,sItemName)
	WorldCupGambling_UseChipPack(nItemId)
end
--1000高级筹码
tItem[3308957] = tItem[3308957] or {}
tItem[3308957]["Function"] = function(nItemId,sItemName)
	WorldCupGambling_UseChipPack(nItemId)
end
--2000高级筹码
tItem[3308958] = tItem[3308958] or {}
tItem[3308958]["Function"] = function(nItemId,sItemName)
	WorldCupGambling_UseChipPack(nItemId)
end
--100普通筹码礼盒
tItem[3308859] = tItem[3308859] or {}
tItem[3308859]["Function"] = function(nItemId,sItemName)
	WorldCupGambling_UseChipPack(nItemId)
end
--100金筹码礼盒
tItem[3309077] = tItem[3309077] or {}
tItem[3309077]["Function"] = function(nItemId,sItemName)
	WorldCupGambling_UseChipPack(nItemId)
end
--上线触发
table.insert(tSystem_PlayLogin_Func,WorldCupGambling_Login)