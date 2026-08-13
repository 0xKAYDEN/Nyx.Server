------------------------------------------------------------------------------------
--Name:			181107[英文征服][活动脚本]12月日签有礼活动制作
--Creator:		江宇君
--Created:		2018/11/09
------------------------------------------------------------------------------------

-- 命名前缀： DaySignGift_

-- emoney buy log
-- 1转120级以下玩家领取签到礼包 350 21903 0 0 1
-- 1转120级及以上玩家领取签到礼包 350 21904
-- 玩家打开1转120级以下签到礼包 350 21905 0 0 1
-- 玩家打开1转120级及以上签到礼包 350 21906

-- stc掩码
-- 185,71 表示玩家收到背包信
-- 185,99 表示玩家领取良品包
-- 186,00 表示玩家打开礼包
-- 186,01 表示玩家领取极品包

-- 玩家等级
-- 100级以下不参与活动
-- 100级以上-1转120级以下领良品礼包
-- 1转120级以上领极品礼包

-- 等级
local tDaySignGift_Level = {}
	
	tDaySignGift_Level["Level"] = {}
	tDaySignGift_Level["Level"][1] = 100
	tDaySignGift_Level["Level"][2] = 120
	tDaySignGift_Level["Metempsychosis"] = {}
	tDaySignGift_Level["Metempsychosis"][1] = 0
	tDaySignGift_Level["Metempsychosis"][2] = 1

-- stc掩码
local tDaySignGift_Stc = {}
	tDaySignGift_Stc["EventType"] = {}
	tDaySignGift_Stc["EventType"][1] = 185
	tDaySignGift_Stc["EventType"][2] = 186
	tDaySignGift_Stc["EventType"][3] = 186
	-- tDaySignGift_Stc["EventType"][4] = 186
	tDaySignGift_Stc["DataType"] = {}
	tDaySignGift_Stc["DataType"][1] = 99
	tDaySignGift_Stc["DataType"][2] = 00
	tDaySignGift_Stc["DataType"][3] = 01
	-- tDaySignGift_Stc["DataType"][4] = 02
	
-- emoney buy log
local tDaySignGift_EmoneyLog = {}
	tDaySignGift_EmoneyLog[1] = "350	21903	0	0	1	" -- 玩家领取良品包
	tDaySignGift_EmoneyLog[2] = "350	21904	0	0	1	" -- 玩家打开良品包
	tDaySignGift_EmoneyLog[3] = "350	21905	0	0	1	" -- 玩家领取极品包
	tDaySignGift_EmoneyLog[4] = "350	21906	0	0	1	" -- 玩家打开极品包
	
	
-- local nDaySignGift_NeedSpace = 1

-- 礼包奖励
local tDaySignGift_Reward = {}
	
	-- 良品圣诞月签到礼包  3311493
	tDaySignGift_Reward[3311493] = {}
	tDaySignGift_Reward[3311493]["LogId"] = 12001215
	
	tDaySignGift_Reward[3311493][1] = {}
	tDaySignGift_Reward[3311493][1]["ItemChanceSum"] = 10000 -- 相同概率基数的总数
	
	-- 良品圣诞月签到礼包，经验球 20%
	tDaySignGift_Reward[3311493][1][1] ={}
	tDaySignGift_Reward[3311493][1][1]["RandomItemChanceType"] = 2 -- 概率的类型（1为绝对概率触发，2为相同概率基数，3为各自概率基数）
	tDaySignGift_Reward[3311493][1][1]["ItemChance"] = 2000
	tDaySignGift_Reward[3311493][1][1]["RewardItem"] = {}
	tDaySignGift_Reward[3311493][1][1]["RewardItem"][1] = {}
	tDaySignGift_Reward[3311493][1][1]["RewardItem"][1]["Id"] = 723700 -- 聚神丹
	tDaySignGift_Reward[3311493][1][1]["RewardItem"][1]["Attr"] = "0 3 3" -- 3个 赠品
	tDaySignGift_Reward[3311493][1][1]["RewardEffect"] = {}
	tDaySignGift_Reward[3311493][1][1]["RewardEffect"]["SzObj"] = "self"
	tDaySignGift_Reward[3311493][1][1]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 良品圣诞月签到礼包，微光星陨石 10%
	tDaySignGift_Reward[3311493][1][2] ={}
	tDaySignGift_Reward[3311493][1][2]["RandomItemChanceType"] = 2 -- 概率的类型（1为绝对概率触发，2为相同概率基数，3为各自概率基数）
	tDaySignGift_Reward[3311493][1][2]["ItemChance"] = 1000
	tDaySignGift_Reward[3311493][1][2]["RewardItem"] = {}
	tDaySignGift_Reward[3311493][1][2]["RewardItem"][1] = {}
	tDaySignGift_Reward[3311493][1][2]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石
	tDaySignGift_Reward[3311493][1][2]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 5个 非赠 激活2天
	tDaySignGift_Reward[3311493][1][2]["RewardEffect"] = {}
	tDaySignGift_Reward[3311493][1][2]["RewardEffect"]["SzObj"] = "self"
	tDaySignGift_Reward[3311493][1][2]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 良品圣诞月签到礼包，给祈愿石（小） 10%
	tDaySignGift_Reward[3311493][1][3] ={}
	tDaySignGift_Reward[3311493][1][3]["RandomItemChanceType"] = 2 -- 概率的类型（1为绝对概率触发，2为相同概率基数，3为各自概率基数）
	tDaySignGift_Reward[3311493][1][3]["ItemChance"] = 1000
	tDaySignGift_Reward[3311493][1][3]["RewardItem"] = {}
	tDaySignGift_Reward[3311493][1][3]["RewardItem"][1] = {}
	tDaySignGift_Reward[3311493][1][3]["RewardItem"][1]["Id"] = 1200000 -- 祈愿石（小）
	tDaySignGift_Reward[3311493][1][3]["RewardItem"][1]["Attr"] = "0 3 3" -- 3个 赠品
	tDaySignGift_Reward[3311493][1][3]["RewardEffect"] = {}
	tDaySignGift_Reward[3311493][1][3]["RewardEffect"]["SzObj"] = "self"
	tDaySignGift_Reward[3311493][1][3]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 良品圣诞月签到礼包，P6武器神魂礼包 15%
	tDaySignGift_Reward[3311493][1][4] ={}
	tDaySignGift_Reward[3311493][1][4]["RandomItemChanceType"] = 2 -- 概率的类型（1为绝对概率触发，2为相同概率基数，3为各自概率基数）
	tDaySignGift_Reward[3311493][1][4]["ItemChance"] = 1500
	tDaySignGift_Reward[3311493][1][4]["RewardItem"] = {}
	tDaySignGift_Reward[3311493][1][4]["RewardItem"][1] = {}
	tDaySignGift_Reward[3311493][1][4]["RewardItem"][1]["Id"] = 3006236 -- P6武器神魂礼包
	tDaySignGift_Reward[3311493][1][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 1个
	tDaySignGift_Reward[3311493][1][4]["RewardEffect"] = {}
	tDaySignGift_Reward[3311493][1][4]["RewardEffect"]["SzObj"] = "self"
	tDaySignGift_Reward[3311493][1][4]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 良品圣诞月签到礼包，日常任务重置符 10%
	tDaySignGift_Reward[3311493][1][5] ={}
	tDaySignGift_Reward[3311493][1][5]["RandomItemChanceType"] = 2 -- 概率的类型（1为绝对概率触发，2为相同概率基数，3为各自概率基数）
	tDaySignGift_Reward[3311493][1][5]["ItemChance"] = 1000
	tDaySignGift_Reward[3311493][1][5]["RewardItem"] = {}
	tDaySignGift_Reward[3311493][1][5]["RewardItem"][1] = {}
	tDaySignGift_Reward[3311493][1][5]["RewardItem"][1]["Id"] = 3001407 -- 日常任务重置符
	tDaySignGift_Reward[3311493][1][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 1个
	tDaySignGift_Reward[3311493][1][5]["RewardEffect"] = {}
	tDaySignGift_Reward[3311493][1][5]["RewardEffect"]["SzObj"] = "self"
	tDaySignGift_Reward[3311493][1][5]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 良品圣诞月签到礼包，P6防具神魂礼包 15%
	tDaySignGift_Reward[3311493][1][6] ={}
	tDaySignGift_Reward[3311493][1][6]["RandomItemChanceType"] = 2 -- 概率的类型（1为绝对概率触发，2为相同概率基数，3为各自概率基数）
	tDaySignGift_Reward[3311493][1][6]["ItemChance"] = 1500
	tDaySignGift_Reward[3311493][1][6]["RewardItem"] = {}
	tDaySignGift_Reward[3311493][1][6]["RewardItem"][1] = {}
	tDaySignGift_Reward[3311493][1][6]["RewardItem"][1]["Id"] = 3300000 -- P6防具神魂礼包
	tDaySignGift_Reward[3311493][1][6]["RewardItem"][1]["Attr"] = "0 1 3" -- 1个 赠品
	tDaySignGift_Reward[3311493][1][6]["RewardEffect"] = {}
	tDaySignGift_Reward[3311493][1][6]["RewardEffect"]["SzObj"] = "self"
	tDaySignGift_Reward[3311493][1][6]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 良品圣诞月签到礼包，龙珠 5%
	tDaySignGift_Reward[3311493][1][7] ={}
	tDaySignGift_Reward[3311493][1][7]["RandomItemChanceType"] = 2 -- 概率的类型（1为绝对概率触发，2为相同概率基数，3为各自概率基数）
	tDaySignGift_Reward[3311493][1][7]["ItemChance"] = 500
	tDaySignGift_Reward[3311493][1][7]["RewardItem"] = {}
	tDaySignGift_Reward[3311493][1][7]["RewardItem"][1] = {}
	tDaySignGift_Reward[3311493][1][7]["RewardItem"][1]["Id"] = 1088000 -- 龙珠
	tDaySignGift_Reward[3311493][1][7]["RewardItem"][1]["Attr"] = "0 1 3" -- 1个 赠品
	tDaySignGift_Reward[3311493][1][7]["RewardEffect"] = {}
	tDaySignGift_Reward[3311493][1][7]["RewardEffect"]["SzObj"] = "self"
	tDaySignGift_Reward[3311493][1][7]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 良品圣诞月签到礼包，赤炼石+2 15%
	tDaySignGift_Reward[3311493][1][8] ={}
	tDaySignGift_Reward[3311493][1][8]["RandomItemChanceType"] = 2 -- 概率的类型（1为绝对概率触发，2为相同概率基数，3为各自概率基数）
	tDaySignGift_Reward[3311493][1][8]["ItemChance"] = 1500
	tDaySignGift_Reward[3311493][1][8]["RewardItem"] = {}
	tDaySignGift_Reward[3311493][1][8]["RewardItem"][1] = {}
	tDaySignGift_Reward[3311493][1][8]["RewardItem"][1]["Id"] = 730002 -- 赤炼石
	tDaySignGift_Reward[3311493][1][8]["RewardItem"][1]["Attr"] = "0 1 3" -- 1个
	tDaySignGift_Reward[3311493][1][8]["RewardEffect"] = {}
	tDaySignGift_Reward[3311493][1][8]["RewardEffect"]["SzObj"] = "self"
	tDaySignGift_Reward[3311493][1][8]["RewardEffect"]["Effect"] = "angelwing"


	-- 极品圣诞月签到礼包  3311494
	tDaySignGift_Reward[3311494] = {}
	tDaySignGift_Reward[3311494]["LogId"] = 12001215
	
	tDaySignGift_Reward[3311494][1] = {}
	tDaySignGift_Reward[3311494][1]["ItemChanceSum"] = 10000 -- 相同概率基数的总数
	
	-- 极品圣诞月签到礼包，500气力值 25%
	tDaySignGift_Reward[3311494][1][1] ={}
	tDaySignGift_Reward[3311494][1][1]["RandomItemChanceType"] = 2 -- 概率的类型（1为绝对概率触发，2为相同概率基数，3为各自概率基数）
	tDaySignGift_Reward[3311494][1][1]["ItemChance"] = 2500
	tDaySignGift_Reward[3311494][1][1]["RewardStrengthValue"] = {}
	tDaySignGift_Reward[3311494][1][1]["RewardStrengthValue"]["Value"] = 500 -- 500点气力值
	tDaySignGift_Reward[3311494][1][1]["RewardEffect"] = {}
	tDaySignGift_Reward[3311494][1][1]["RewardEffect"]["SzObj"] = "self"
	tDaySignGift_Reward[3311494][1][1]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 极品圣诞月签到礼包，强练丹 10%
	tDaySignGift_Reward[3311494][1][2] ={}
	tDaySignGift_Reward[3311494][1][2]["RandomItemChanceType"] = 2 -- 概率的类型（1为绝对概率触发，2为相同概率基数，3为各自概率基数）
	tDaySignGift_Reward[3311494][1][2]["ItemChance"] = 1000
	tDaySignGift_Reward[3311494][1][2]["RewardItem"] = {}
	tDaySignGift_Reward[3311494][1][2]["RewardItem"][1] = {}
	tDaySignGift_Reward[3311494][1][2]["RewardItem"][1]["Id"] = 3003124 -- 强练丹
	tDaySignGift_Reward[3311494][1][2]["RewardItem"][1]["Attr"] = "0 10 3" -- 10个 赠品
	tDaySignGift_Reward[3311494][1][2]["RewardEffect"] = {}
	tDaySignGift_Reward[3311494][1][2]["RewardEffect"]["SzObj"] = "self"
	tDaySignGift_Reward[3311494][1][2]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 极品圣诞月签到礼包，明亮星陨石 15%
	tDaySignGift_Reward[3311494][1][3] ={}
	tDaySignGift_Reward[3311494][1][3]["RandomItemChanceType"] = 2 -- 概率的类型（1为绝对概率触发，2为相同概率基数，3为各自概率基数）
	tDaySignGift_Reward[3311494][1][3]["ItemChance"] = 1500
	tDaySignGift_Reward[3311494][1][3]["RewardItem"] = {}
	tDaySignGift_Reward[3311494][1][3]["RewardItem"][1] = {}
	tDaySignGift_Reward[3311494][1][3]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石 赠品
	tDaySignGift_Reward[3311494][1][3]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2个 非赠 激活2天
	tDaySignGift_Reward[3311494][1][3]["RewardEffect"] = {}
	tDaySignGift_Reward[3311494][1][3]["RewardEffect"]["SzObj"] = "self"
	tDaySignGift_Reward[3311494][1][3]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 极品圣诞月签到礼包，龙珠 5%
	tDaySignGift_Reward[3311494][1][4] ={}
	tDaySignGift_Reward[3311494][1][4]["RandomItemChanceType"] = 2 -- 概率的类型（1为绝对概率触发，2为相同概率基数，3为各自概率基数）
	tDaySignGift_Reward[3311494][1][4]["ItemChance"] = 500
	tDaySignGift_Reward[3311494][1][4]["RewardItem"] = {}
	tDaySignGift_Reward[3311494][1][4]["RewardItem"][1] = {}
	tDaySignGift_Reward[3311494][1][4]["RewardItem"][1]["Id"] = 1088000 -- 龙珠
	tDaySignGift_Reward[3311494][1][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 1个 赠品
	tDaySignGift_Reward[3311494][1][4]["RewardEffect"] = {}
	tDaySignGift_Reward[3311494][1][4]["RewardEffect"]["SzObj"] = "self"
	tDaySignGift_Reward[3311494][1][4]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 极品圣诞月签到礼包，日常任务重置符 10%
	tDaySignGift_Reward[3311494][1][5] ={}
	tDaySignGift_Reward[3311494][1][5]["RandomItemChanceType"] = 2 -- 概率的类型（1为绝对概率触发，2为相同概率基数，3为各自概率基数）
	tDaySignGift_Reward[3311494][1][5]["ItemChance"] = 1000
	tDaySignGift_Reward[3311494][1][5]["RewardItem"] = {}
	tDaySignGift_Reward[3311494][1][5]["RewardItem"][1] = {}
	tDaySignGift_Reward[3311494][1][5]["RewardItem"][1]["Id"] = 3001407 -- 日常任务重置符
	tDaySignGift_Reward[3311494][1][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 1个 赠品
	tDaySignGift_Reward[3311494][1][5]["RewardEffect"] = {}
	tDaySignGift_Reward[3311494][1][5]["RewardEffect"]["SzObj"] = "self"
	tDaySignGift_Reward[3311494][1][5]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 极品圣诞月签到礼包，P7防具神魂礼包 15%
	tDaySignGift_Reward[3311494][1][6] ={}
	tDaySignGift_Reward[3311494][1][6]["RandomItemChanceType"] = 2 -- 概率的类型（1为绝对概率触发，2为相同概率基数，3为各自概率基数）
	tDaySignGift_Reward[3311494][1][6]["ItemChance"] = 1500
	tDaySignGift_Reward[3311494][1][6]["RewardItem"] = {}
	tDaySignGift_Reward[3311494][1][6]["RewardItem"][1] = {}
	tDaySignGift_Reward[3311494][1][6]["RewardItem"][1]["Id"] = 3006746 -- P7防具神魂礼包
	tDaySignGift_Reward[3311494][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 1个 
	tDaySignGift_Reward[3311494][1][6]["RewardEffect"] = {}
	tDaySignGift_Reward[3311494][1][6]["RewardEffect"]["SzObj"] = "self"
	tDaySignGift_Reward[3311494][1][6]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 极品圣诞月签到礼包，200点赠品天石 5%
	tDaySignGift_Reward[3311494][1][7] ={}
	tDaySignGift_Reward[3311494][1][7]["RandomItemChanceType"] = 2 -- 概率的类型（1为绝对概率触发，2为相同概率基数，3为各自概率基数）
	tDaySignGift_Reward[3311494][1][7]["ItemChance"] = 500
	tDaySignGift_Reward[3311494][1][7]["RewardEMoneyMono"] = {}
	tDaySignGift_Reward[3311494][1][7]["RewardEMoneyMono"]["Value"] = 200 -- 200赠品天石
	tDaySignGift_Reward[3311494][1][7]["RewardEffect"] = {}
	tDaySignGift_Reward[3311494][1][7]["RewardEffect"]["SzObj"] = "self"
	tDaySignGift_Reward[3311494][1][7]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 极品圣诞月签到礼包+2，龙血精石 15%
	tDaySignGift_Reward[3311494][1][8] ={}
	tDaySignGift_Reward[3311494][1][8]["RandomItemChanceType"] = 2 -- 概率的类型（1为绝对概率触发，2为相同概率基数，3为各自概率基数）
	tDaySignGift_Reward[3311494][1][8]["ItemChance"] = 1500
	tDaySignGift_Reward[3311494][1][8]["RewardItem"] = {}
	tDaySignGift_Reward[3311494][1][8]["RewardItem"][1] = {}
	tDaySignGift_Reward[3311494][1][8]["RewardItem"][1]["Id"] = 3008994 -- 龙血精石
	tDaySignGift_Reward[3311494][1][8]["RewardItem"][1]["Attr"] = "0 3" -- 3个
	tDaySignGift_Reward[3311494][1][8]["RewardEffect"] = {}
	tDaySignGift_Reward[3311494][1][8]["RewardEffect"]["SzObj"] = "self"
	tDaySignGift_Reward[3311494][1][8]["RewardEffect"]["Effect"] = "angelwing"
	
	
	-- 礼包
local tDaySignGift_Bag = {}
	tDaySignGift_Bag[3311493] = {}
	tDaySignGift_Bag[3311493][1] = {}
	tDaySignGift_Bag[3311493][1]["RewardItem"] = {}
	tDaySignGift_Bag[3311493][1]["RewardItem"][1] = {}
	tDaySignGift_Bag[3311493][1]["RewardItem"][1]["Id"] = 3311493 -- 欢乐包
	tDaySignGift_Bag[3311493][1]["RewardItem"][1]["Attr"] = "0 1" -- 1个
	tDaySignGift_Bag[3311493][1]["RewardItem"][2] = {}
	tDaySignGift_Bag[3311493][1]["RewardItem"][2]["Id"] = 195025 -- 外套
	tDaySignGift_Bag[3311493][1]["RewardItem"][2]["Attr"] = "0 1 3 43200 0 0 0 1" -- 1个 赠品 30天时效
	
	tDaySignGift_Bag[3311494] = {}
	tDaySignGift_Bag[3311494][1] = {}
	tDaySignGift_Bag[3311494][1]["RewardItem"] = {}
	tDaySignGift_Bag[3311494][1]["RewardItem"][1] = {}
	tDaySignGift_Bag[3311494][1]["RewardItem"][1]["Id"] = 3311494 -- 狂欢包
	tDaySignGift_Bag[3311494][1]["RewardItem"][1]["Attr"] = "0 1" -- 1个
	tDaySignGift_Bag[3311494][1]["RewardItem"][2] = {}
	tDaySignGift_Bag[3311494][1]["RewardItem"][2]["Id"] = 195025 -- 外套
	tDaySignGift_Bag[3311494][1]["RewardItem"][2]["Attr"] = "0 1 3 43200 0 0 0 1" -- 1个 赠品 30天时效
	
	tDaySignGift_Bag[3311494][2] = {}
	tDaySignGift_Bag[3311494][2]["RewardItem"] = {}
	tDaySignGift_Bag[3311494][2]["RewardItem"][1] = {}
	tDaySignGift_Bag[3311494][2]["RewardItem"][1]["Id"] = 3311494 -- 狂欢包
	tDaySignGift_Bag[3311494][2]["RewardItem"][1]["Attr"] = "0 1" -- 1个
	

-------------------逻辑部分--------------------------------------

-- 打开礼包的方法
function DaySignGift_Open(nItemId, nNum)
	local nUserId = Get_UserId()
	
	local nEvent = tDaySignGift_Stc["EventType"][2]
	local nType = tDaySignGift_Stc["DataType"][2]
	
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 不在在活动时间内，弹出提示删物品
	if not Sys_ChkFullTime(tActivityTime["DaySignGift"]["ActivityTime"]) then
		-- 删物品
		if not Item_DelItem(nItemId) then
			return
		end
		User_TalkChannel2005(tDaySignGift_Text["TimeOut"])
		return
	end
	
	if nItemId == 3311493 then
		if User_JudgeLevelAndMetempsychosis(tDaySignGift_Level["Level"][2], tDaySignGift_Level["Metempsychosis"][2]) then
			LinkItemGossipFunc_New(nItemId, "1-1")
			return
		end
	end
	
	-- 18600或18602,掩码是否隔天，未隔天提示玩家今天已经领取
	if not Task_StcInterval(nEvent, nType, 1, 4) then
		Sys_MsgBox(tDaySignGift_Text["NoRepeat"])
		return
	end
	
	-- 判断礼包所需背包空间数
	local nSpace = RewardTemplate_GetRandomSpace(tDaySignGift_Reward[nItemId], 1)
	
	-- 背包空间不足
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tDaySignGift_Text["NoSpace"], nSpace))
		return
	end
	
	-- 判断赠品天石上限
	if Get_UserMonoEMoney() + tDaySignGift_Reward[3311494][1][7]["RewardEMoneyMono"]["Value"] > G_User_MaxEmoneyMono then
		Sys_MsgBox(tDaySignGift_Text["EmoneyLimit"])
		return
	end
	
	-- 18600掩码置1，打时间戳
	Task_SetStatistic(nEvent,nType, 1, 1) -- 置掩码
	Task_SetStcTimestamp(nEvent, nType, 0, nUserId) --打时间戳
	Sys_SaveEmoneyBuy(tDaySignGift_EmoneyLog[nNum]) -- 打emoneybuylog
	
	-- 开礼包
	RewardTemplate_NewRandom(tDaySignGift_Reward[nItemId], 1)
end

-- npc对话跳转的函数
function DaySignGift_Goto(nNpcId, nNum)
	local nEvent = tDaySignGift_Stc["EventType"][nNum]
	local nType = tDaySignGift_Stc["DataType"][nNum]
	local nData = Get_UserStatisticValue(nEvent, nType)
	
	if nData >= 1 then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"2-2")
end

function DaySignGift_Space(nItemId, nNum, nIndex)
	local nUserId = Get_UserId()
	
	local nEvent = tDaySignGift_Stc["EventType"][nNum]
	local nType = tDaySignGift_Stc["DataType"][nNum]
	local nData = Get_UserStatisticValue(nEvent, nType)
	
	local tDaySignGift_Tab = {}
	tDaySignGift_Tab[1] = tDaySignGift_Bag[nItemId][1]
	tDaySignGift_Tab[3] = tDaySignGift_Bag[nItemId][2]
	
	local nSpace = RewardTemplate_GetRewardSpace(tDaySignGift_Tab[nIndex])
	
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tDaySignGift_Text["NoSpace"], nSpace))
		return false
	end
	
	if nData >= 1 then
		return false
	end
	
	Task_SetStatistic(nEvent, nType, 1, 1, nUserIds) -- 置掩码
	Task_SetStcTimestamp(nEvent, nType, 0, nUserId) -- 打时间戳
	Sys_SaveEmoneyBuy(tDaySignGift_EmoneyLog[nNum])
	
	-- Item_AddNewItem(nItemId, "0 1 3")
	RewardTemplate_UseItemAndMsg(tDaySignGift_Tab[nIndex])
	return true
end

function DaySignGift_Get(nItemId, nNum)
	local nUserId = Get_UserId()
	local nEvent = tDaySignGift_Stc["EventType"][nNum]
	local nType = tDaySignGift_Stc["DataType"][nNum]
	local nData = Get_UserStatisticValue(nEvent, nType)
	
	if Get_UserStatisticValue(tDaySignGift_Stc["EventType"][1], tDaySignGift_Stc["DataType"][1]) >= 1 then
		
		if Item_ChkItem(3311493) then
			if not Item_DelItem(3311493) then
				return
			end
		end
		DaySignGift_Space(nItemId, nNum, 3)
		return
	end
	
	-- if not DaySignGift_Space(nItemId, 1) then
		-- return
	-- end 
	DaySignGift_Space(nItemId, nNum, 1)
	-- RewardTemplate_UseItemAndMsg(tDaySignGift_Bag["Coat"])
	-- Item_AddNewItem(195025, "0 1 3 43200 0 0 0 1")
end

-------------------物品模块--------------------------------------
tItemFace[3300000] = 1008
tItemFace[3311493] = 1935
tItem[3311493] = tItem[3311493] or {}
tItem[3311493]["DialogueText"] = tDaySignGift_Text[3311493]
tItem[3311493]["Text1-1"] = {111}
tItem[3311493]["tOption1-1"] = {111}

tItem[3311493]["OptionFunc111"] = "Sys_GotoSomeWhere</N>355</N>458</N>1002"

tItem[3311493]["Function"] = function(nItemId, sItemName)
	DaySignGift_Open(nItemId, 2)
end

tItem[3311494] = tItem[3311494] or {}
tItem[3311494]["Function"] = function(nItemId, sItemName)
	DaySignGift_Open(nItemId, 4)
end

--------------------NPC模块----------------------------------------
tNpcFace[6395] = 21
tNpcGossip[23536] = tNpcGossip[23536] or DefaultNpc:new{}
tNpcGossip[23536]["OptionHidden"] = 1
tNpcGossip[23536]["DialogueText"] = tDaySignGift_Text[23536]

-- 活动前
tNpcGossip[23536]["Text1-1"] = {111,112}
tNpcGossip[23536]["tOption1-1"] = {111}
tNpcGossip[23536]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["DaySignGift"]["ActivityTime"])
end

-- 活动后
tNpcGossip[23536]["Text1-2"] = {121}
tNpcGossip[23536]["tOption1-2"] = {121}
tNpcGossip[23536]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tActivityTime["DaySignGift"]["ActivityTime"])
end

-- 活动中
-- 等级不足
tNpcGossip[23536]["Text1-3"] = {131, 132, 133, 134}
tNpcGossip[23536]["tOption1-3"] = {131}
tNpcGossip[23536]["ChkFunc1-3"] = function ()
	return not User_JudgeLevelAndMetempsychosis(tDaySignGift_Level["Level"][1], tDaySignGift_Level["Metempsychosis"][1])
end

-- 等级达到，但1转120级以下
tNpcGossip[23536]["Text1-4"] = {141, 142, 143}
tNpcGossip[23536]["tOption1-4"] = {141, 142}
tNpcGossip[23536]["ChkFunc1-4"] = function ()
	if not Sys_ChkFullTime(tActivityTime["DaySignGift"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(23536, "1-2")
		return false
	end
	
	if User_JudgeLevelAndMetempsychosis(tDaySignGift_Level["Level"][2], tDaySignGift_Level["Metempsychosis"][2]) then
		return false
	end
	
	return true
end
tNpcGossip[23536]["OptionFunc141"] = "DaySignGift_Goto</N>23536</N>1"
tNpcGossip[23536]["OptionChkFunc141"] = function ()
	local nEvent = tDaySignGift_Stc["EventType"][1]
	local nType = tDaySignGift_Stc["DataType"][1]
	local nData = Get_UserStatisticValue(nEvent, nType)
	
	if nData >= 1 then
		tNpcGossip[23536]["Option141"] = tDaySignGift_Text[23536]["Option143"]
		return true
	end
	
	tNpcGossip[23536]["Option141"] = tDaySignGift_Text[23536]["Option141"]
	return true
end


-- 等级达到，但1转120级以上
tNpcGossip[23536]["Text1-5"] = {151, 152}
tNpcGossip[23536]["tOption1-5"] = {151, 152}
tNpcGossip[23536]["ChkFunc1-5"] = function ()
	if not Sys_ChkFullTime(tActivityTime["DaySignGift"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(23536, "1-2")
		return false
	end
	
	if not User_JudgeLevelAndMetempsychosis(tDaySignGift_Level["Level"][2], tDaySignGift_Level["Metempsychosis"][2]) then
		return false
	end
	
	return true
end

tNpcGossip[23536]["OptionChkFunc151"] = function ()
	local nEvent = tDaySignGift_Stc["EventType"][3]
	local nType = tDaySignGift_Stc["DataType"][3]
	local nData = Get_UserStatisticValue(nEvent, nType)
	
	if nData >= 1 then
		tNpcGossip[23536]["Option151"] = tDaySignGift_Text[23536]["Option153"]
		tNpcGossip[23536]["OptionFunc151"] = "DaySignGift_Goto</N>23536</N>3"
		return true
	end
	
	tNpcGossip[23536]["Option151"] = tDaySignGift_Text[23536]["Option151"]
	tNpcGossip[23536]["OptionFunc151"] = "DaySignGift_Get</N>3311494</N>3"
	return true
end

tNpcGossip[23536]["Text2-1"] = {211}
tNpcGossip[23536]["tOption2-1"] = {211}

tNpcGossip[23536]["Text2-2"] = {221, 222}
tNpcGossip[23536]["tOption2-2"] = {221, 222}
tNpcGossip[23536]["OptionFunc221"] = "DaySignGift_Get</N>3311493</N>1"
