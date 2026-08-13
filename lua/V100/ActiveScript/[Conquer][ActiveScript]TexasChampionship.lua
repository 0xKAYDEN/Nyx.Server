------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]4月德州SNG、锦标赛调整及道具制作
--Creator:		翁清海
--Created:		2018/03/27
------------------------------------------------------------------------------------

--命名前缀
--TexasChampionship_

--luaId:40863
--logid:12001046
------------------------------------------------------------------------------------
-- 掩码说明：
-- stc(216,56)	记录玩家是否领取了轮盘

--------------------------------------------数据部分配置--------------------------------------------

-- 掩码表
local tTexasChampionship_Stc = {}
tTexasChampionship_Stc["Event"] = {}
tTexasChampionship_Stc["Data"] = {}
-- stc(216,56)	记录玩家是否领取了轮盘
tTexasChampionship_Stc["Event"][1] = 216
tTexasChampionship_Stc["Data"][1] = 56



--奖励配置
local tTexasChampionship_Reward = {}
	--WildCamelPackage(30-Day)
	tTexasChampionship_Reward[3307934] = {}
	tTexasChampionship_Reward[3307934]["DeleteItem"] = {}
	tTexasChampionship_Reward[3307934]["DeleteItem"][1] = {}
	tTexasChampionship_Reward[3307934]["DeleteItem"][1]["Id"] = 3307934
	tTexasChampionship_Reward[3307934]["RewardItem"] = {}
	tTexasChampionship_Reward[3307934]["RewardItem"][1] = {}
	tTexasChampionship_Reward[3307934]["RewardItem"][1]["Id"] = 200431
	tTexasChampionship_Reward[3307934]["RewardItem"][1]["Attr"] = "0 1 3 43200 1"
	tTexasChampionship_Reward[3307934]["LogId"] =12001046
	--ImperialRobePackage(30-Day)
	tTexasChampionship_Reward[3307935] = {}
	tTexasChampionship_Reward[3307935]["DeleteItem"] = {}
	tTexasChampionship_Reward[3307935]["DeleteItem"][1] = {}
	tTexasChampionship_Reward[3307935]["DeleteItem"][1]["Id"] = 3307935
	tTexasChampionship_Reward[3307935]["RewardItem"] = {}
	tTexasChampionship_Reward[3307935]["RewardItem"][1] = {}
	tTexasChampionship_Reward[3307935]["RewardItem"][1]["Id"] = 192615
	tTexasChampionship_Reward[3307935]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tTexasChampionship_Reward[3307935]["LogId"] =12001046
	--RookieGiftPackage
	tTexasChampionship_Reward[3307936] = {}
	tTexasChampionship_Reward[3307936]["DeleteItem"] = {}
	tTexasChampionship_Reward[3307936]["DeleteItem"][1] = {}
	tTexasChampionship_Reward[3307936]["DeleteItem"][1]["Id"] = 3307936
	tTexasChampionship_Reward[3307936]["RewardItem"] = {}
	tTexasChampionship_Reward[3307936]["RewardItem"][1] = {}
	tTexasChampionship_Reward[3307936]["RewardItem"][1]["Id"] = 3307117
	tTexasChampionship_Reward[3307936]["RewardItem"][1]["Attr"] = "0 5"
	tTexasChampionship_Reward[3307936]["RewardItem"][2] = {}
	tTexasChampionship_Reward[3307936]["RewardItem"][2]["Id"] = 3307127
	tTexasChampionship_Reward[3307936]["RewardItem"][2]["Attr"] = "0 1"
	tTexasChampionship_Reward[3307936]["LogId"] =12001046
	--PokerRookieGift
	tTexasChampionship_Reward[3307937] = {}
	tTexasChampionship_Reward[3307937]["DeleteItem"] = {}
	tTexasChampionship_Reward[3307937]["DeleteItem"][1] = {}
	tTexasChampionship_Reward[3307937]["DeleteItem"][1]["Id"] = 3307937
	tTexasChampionship_Reward[3307937]["RewardItem"] = {}
	tTexasChampionship_Reward[3307937]["RewardItem"][1] = {}
	tTexasChampionship_Reward[3307937]["RewardItem"][1]["Id"] = 723911
	tTexasChampionship_Reward[3307937]["RewardItem"][1]["Attr"] = "0 10"
	tTexasChampionship_Reward[3307937]["RewardItem"][2] = {}
	tTexasChampionship_Reward[3307937]["RewardItem"][2]["Id"] = 723017
	tTexasChampionship_Reward[3307937]["RewardItem"][2]["Attr"] = "0 10 3"
	tTexasChampionship_Reward[3307937]["RewardItem"][3] = {}
	tTexasChampionship_Reward[3307937]["RewardItem"][3]["Id"] = 3302762
	tTexasChampionship_Reward[3307937]["RewardItem"][3]["Attr"] = "0 1 0 4320 1"
	tTexasChampionship_Reward[3307937]["RewardItem"][4] = {}
	tTexasChampionship_Reward[3307937]["RewardItem"][4]["Id"] = 3307016
	tTexasChampionship_Reward[3307937]["RewardItem"][4]["Attr"] = "0 1"
	tTexasChampionship_Reward[3307937]["RewardItem"][5] = {}
	tTexasChampionship_Reward[3307937]["RewardItem"][5]["Id"] = 4050001
	tTexasChampionship_Reward[3307937]["RewardItem"][5]["Attr"] = "0 10 3"
	tTexasChampionship_Reward[3307937]["RewardItem"][6] = {}
	tTexasChampionship_Reward[3307937]["RewardItem"][6]["Id"] = 3301827
	tTexasChampionship_Reward[3307937]["RewardItem"][6]["Attr"] = "0 5"
	tTexasChampionship_Reward[3307937]["RewardItem"][7] = {}
	tTexasChampionship_Reward[3307937]["RewardItem"][7]["Id"] = 3307934
	tTexasChampionship_Reward[3307937]["RewardItem"][7]["Attr"] = "0 1 0 43200 1"
	tTexasChampionship_Reward[3307937]["RewardItem"][8] = {}
	tTexasChampionship_Reward[3307937]["RewardItem"][8]["Id"] = 3307935
	tTexasChampionship_Reward[3307937]["RewardItem"][8]["Attr"] = "0 1 0 43200 1"
	tTexasChampionship_Reward[3307937]["LogId"] =12001046
	--PokerRookieGift
	tTexasChampionship_Reward[3307938] = {}
	tTexasChampionship_Reward[3307938]["DeleteItem"] = {}
	tTexasChampionship_Reward[3307938]["DeleteItem"][1] = {}
	tTexasChampionship_Reward[3307938]["DeleteItem"][1]["Id"] = 3307938
	tTexasChampionship_Reward[3307938]["RewardItem"] = {}
	tTexasChampionship_Reward[3307938]["RewardItem"][1] = {}
	tTexasChampionship_Reward[3307938]["RewardItem"][1]["Id"] = 3304719
	tTexasChampionship_Reward[3307938]["RewardItem"][1]["Attr"] = "0 5"
	tTexasChampionship_Reward[3307938]["RewardItem"][2] = {}
	tTexasChampionship_Reward[3307938]["RewardItem"][2]["Id"] = 3307117
	tTexasChampionship_Reward[3307938]["RewardItem"][2]["Attr"] = "0 5"
	tTexasChampionship_Reward[3307938]["RewardItem"][3] = {}
	tTexasChampionship_Reward[3307938]["RewardItem"][3]["Id"] = 3307119
	tTexasChampionship_Reward[3307938]["RewardItem"][3]["Attr"] = "0 1 0 2880 1"
	tTexasChampionship_Reward[3307938]["RewardItem"][4] = {}
	tTexasChampionship_Reward[3307938]["RewardItem"][4]["Id"] = 3307120
	tTexasChampionship_Reward[3307938]["RewardItem"][4]["Attr"] = "0 1 0 2880 1"
	tTexasChampionship_Reward[3307938]["RewardItem"][5] = {}
	tTexasChampionship_Reward[3307938]["RewardItem"][5]["Id"] = 3307121
	tTexasChampionship_Reward[3307938]["RewardItem"][5]["Attr"] = "0 1 0 2880 1"
	tTexasChampionship_Reward[3307938]["LogId"] =12001046
	
	
	-- ===周赛门票碎片
	-- ===索引: tTexasChampionship_Reward[3329935]
	-- ===删除:3329935,10
	tTexasChampionship_Reward[3329935] = {}
	tTexasChampionship_Reward[3329935]["LogId"] = 12001046
	tTexasChampionship_Reward[3329935]["DeleteItem"] = {}
	tTexasChampionship_Reward[3329935]["DeleteItem"][1] = {}
	tTexasChampionship_Reward[3329935]["DeleteItem"][1]["Id"] = 3329935 -- 【库】周赛门票碎片[属性:9]
	tTexasChampionship_Reward[3329935]["DeleteItem"][1]["ItemNum"] = 10
	tTexasChampionship_Reward[3329935]["RewardItem"] = {}
	tTexasChampionship_Reward[3329935]["RewardItem"][1] = {}
	tTexasChampionship_Reward[3329935]["RewardItem"][1]["Id"] = 3329933 -- 周赛门票[3329933][属性:9][叠加:0][金币:0], 【表格】周赛门票
	tTexasChampionship_Reward[3329935]["RewardItem"][1]["Attr"] = "0 1" -- 周赛门票*1
	tTexasChampionship_Reward[3329935]["RewardEffect"] = {}
	tTexasChampionship_Reward[3329935]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasChampionship_Reward[3329935]["RewardEffect"]["Effect"] = "angelwing"


	tTexasChampionship_Reward[3329936] = {}
	-- ===月赛门票碎片
	-- ===索引: tTexasChampionship_Reward[3329936]
	-- ===删除:3329936,10
	tTexasChampionship_Reward[3329936]["LogId"] = 12001046
	tTexasChampionship_Reward[3329936]["DeleteItem"] = {}
	tTexasChampionship_Reward[3329936]["DeleteItem"][1] = {}
	tTexasChampionship_Reward[3329936]["DeleteItem"][1]["Id"] = 3329936 -- 【库】月赛门票碎片[属性:9]
	tTexasChampionship_Reward[3329936]["DeleteItem"][1]["ItemNum"] = 10
	tTexasChampionship_Reward[3329936]["RewardItem"] = {}
	tTexasChampionship_Reward[3329936]["RewardItem"][1] = {}
	tTexasChampionship_Reward[3329936]["RewardItem"][1]["Id"] = 3329934 -- 月赛门票[3329934][属性:9][叠加:0][金币:0], 【表格】月赛门票
	tTexasChampionship_Reward[3329936]["RewardItem"][1]["Attr"] = "0 1" -- 月赛门票*1
	tTexasChampionship_Reward[3329936]["RewardEffect"] = {}
	tTexasChampionship_Reward[3329936]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasChampionship_Reward[3329936]["RewardEffect"]["Effect"] = "angelwing"


	tTexasChampionship_Reward[3329940] = {}
	-- ===BonusWheel
	-- ===索引: tTexasChampionship_Reward[3329940]
	tTexasChampionship_Reward[3329940]["LogId"] = 12001046
	tTexasChampionship_Reward[3329940]["RewardItem"] = {}
	tTexasChampionship_Reward[3329940]["RewardItem"][1] = {}
	tTexasChampionship_Reward[3329940]["RewardItem"][1]["Id"] = 3329940 -- BonusWheel[3329940][属性:9][叠加:0][金币:0], 【表格】轮盘
	tTexasChampionship_Reward[3329940]["RewardItem"][1]["Attr"] = "0 1" -- BonusWheel*1
	tTexasChampionship_Reward[3329940]["RewardEffect"] = {}
	tTexasChampionship_Reward[3329940]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasChampionship_Reward[3329940]["RewardEffect"]["Effect"] = "angelwing"


--------------------------------------------逻辑部分配置--------------------------------------------
--物品使用
function TexasChampionship_ItemUse(nItemTypeId)
	RewardTemplate_UseItemAndMsg(tTexasChampionship_Reward[nItemTypeId])
end


-- 上线给每日轮盘
function TexasChampionship_UserLogin()
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["TexasChampionship_"]["ActivityTime"]) then
		return
	end
	
	-- 判断掩码是否隔天
	local nTexasChampionship_DayEvent = tTexasChampionship_Stc["Event"][1]
	local nTexasChampionship_DayData = tTexasChampionship_Stc["Data"][1]
	if Task_StcInterval(nTexasChampionship_DayEvent, nTexasChampionship_DayData, 1, 4) then
		Task_SetStatistic(nTexasChampionship_DayEvent, nTexasChampionship_DayData, 0, 1)
		Task_SetStcTimestamp(nTexasChampionship_DayEvent, nTexasChampionship_DayData, 0)
	end
	
	-- 判断背包
	if not User_CheckLeftSpace(1) then
		return
	end
	
	-- 判断今天是否领取过奖励
	if Task_ChkStcValue(nTexasChampionship_DayEvent, nTexasChampionship_DayData, ">", 0) then
		return
	end
	if Task_SetStatistic(nTexasChampionship_DayEvent, nTexasChampionship_DayData, 1, 1) then
		Task_SetStcTimestamp(nTexasChampionship_DayEvent, nTexasChampionship_DayData, 0)
		RewardTemplate_UseItemAndMsg(tTexasChampionship_Reward[3329940])
	end
end

--------------------------------------------模块部分配置--------------------------------------------

---------------------------------------------NPC模块---------------------------------------------

---------------------------------------------物品模块---------------------------------------------
for i = 3307934, 3307938 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemTypeId,sItemName)
		TexasChampionship_ItemUse(nItemTypeId)
	end
end

-- 周赛门票碎片
tItem[3329935] = tItem[3329935] or {}
tItem[3329935]["Function"] = function(nTexasChampionship_ItemId,sTexasChampionship_ItemName)
	-- 判断条件
	local nTexasChampionship_UserId = Get_UserId()
	local bTexasChampionship_Judge = TermsOfUse_Main(nTexasChampionship_ItemId, tTexasChampionship_Reward[nTexasChampionship_ItemId])
	if not bTexasChampionship_Judge then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tTexasChampionship_Reward[nTexasChampionship_ItemId], nTexasChampionship_UserId, bTexasChampionship_Judge)
end
-- 月赛门票碎片
tItem[3329936] = tItem[3329935]

---------------------------------------上线触发--------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func, TexasChampionship_UserLogin)
