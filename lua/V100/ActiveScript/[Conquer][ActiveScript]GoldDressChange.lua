------------------------------------------------------------------------------------
--Name：            180119[英文征服][活动脚本]金币服后续修改
--Creator:      王贤
--Created:     2018/01/19
------------------------------------------------------------------------------------
-- 前缀： GoldDressChange_
-- LogId: 12000987
------------------------------------------------------------------------------------
--任务需求：
-- 请根据附件中的金币服相关数据设计活动并调整产出
------------------------------------------------------------------------------------
-- 掩码说明：
-- stc(172,16)	记录玩家是否第一次消费
-- stc(172,17)	记录玩家本周消费额度
-- stc(172,18)	记录玩家当前消费金额
-- stc(172,43)	记录玩家当前享受折扣
----------------------------------表配置部分--------------------------------------------
local tGoldDressChange_Data = {}
-- 礼包价格
tGoldDressChange_Data["ItemPrice"] = {}
-- 赤练石/马+1
tGoldDressChange_Data["ItemPrice"][3307246] = 54000
tGoldDressChange_Data["ItemPrice"][3307252] = 54000
-- 赤练石/马+2
tGoldDressChange_Data["ItemPrice"][3307247] = 217000
tGoldDressChange_Data["ItemPrice"][3307253] = 217000
-- 赤练石/马+3
tGoldDressChange_Data["ItemPrice"][3307248] = 650000
tGoldDressChange_Data["ItemPrice"][3307254] = 650000
-- 赤练石/马+4
tGoldDressChange_Data["ItemPrice"][3307249] = 1950000
tGoldDressChange_Data["ItemPrice"][3307255] = 1950000
-- 赤练石/马+5
tGoldDressChange_Data["ItemPrice"][3307250] = 5850000
tGoldDressChange_Data["ItemPrice"][3307256] = 5850000
-- 赤练石/马+6
tGoldDressChange_Data["ItemPrice"][3307251] = 17550000
tGoldDressChange_Data["ItemPrice"][3307257] = 17550000
-- 随机稀有马+6
tGoldDressChange_Data["ItemPrice"][3307258] = 26325000
-- 流星
tGoldDressChange_Data["ItemPrice"][3307259] = 98000
-- 龙珠
tGoldDressChange_Data["ItemPrice"][3307260] = 1300000
-- 金刚尖钻
tGoldDressChange_Data["ItemPrice"][3307261] = 20475000
-- 玄元宝石
tGoldDressChange_Data["ItemPrice"][3307262] = 25350000
-- 天地宝石
tGoldDressChange_Data["ItemPrice"][3307263] = 8450000
-- 普通优质宝石
tGoldDressChange_Data["ItemPrice"][3307264] = 650000

-- 掩码记录
tGoldDressChange_Data["Stc"] = {}
-- stc(172,16)	记录玩家是否第一次消费
tGoldDressChange_Data["Stc"][1] = {}
tGoldDressChange_Data["Stc"][1]["EventTpye"] = 172
tGoldDressChange_Data["Stc"][1]["DataType"] = 16
-- stc(172,17)	记录玩家本周消费额度
tGoldDressChange_Data["Stc"][2] = {}
tGoldDressChange_Data["Stc"][2]["EventTpye"] = 172
tGoldDressChange_Data["Stc"][2]["DataType"] = 17
-- stc(172,18)	记录玩家当前消费金额
tGoldDressChange_Data["Stc"][3] = {}
tGoldDressChange_Data["Stc"][3]["EventTpye"] = 172
tGoldDressChange_Data["Stc"][3]["DataType"] = 18
-- stc(172,43)	记录玩家当前享受折扣
tGoldDressChange_Data["Stc"][4] = {}
tGoldDressChange_Data["Stc"][4]["EventTpye"] = 172
tGoldDressChange_Data["Stc"][4]["DataType"] = 43

-- 折扣
tGoldDressChange_Data["Discount"] = {}
-- 首次购买
tGoldDressChange_Data["Discount"]["FirstPay"] = 0.5
-- 消费金额，折扣，周消费
tGoldDressChange_Data["Discount"][1] = {}
tGoldDressChange_Data["Discount"][1]["PayFor"] = 650000
tGoldDressChange_Data["Discount"][1]["Discount"] = 0.05
tGoldDressChange_Data["Discount"][1]["WeekPay"] = 65000
tGoldDressChange_Data["Discount"][2] = {}
tGoldDressChange_Data["Discount"][2]["PayFor"] = 2600000
tGoldDressChange_Data["Discount"][2]["Discount"] = 0.10
tGoldDressChange_Data["Discount"][2]["WeekPay"] = 260000
tGoldDressChange_Data["Discount"][3] = {}
tGoldDressChange_Data["Discount"][3]["PayFor"] = 7800000
tGoldDressChange_Data["Discount"][3]["Discount"] = 0.15
tGoldDressChange_Data["Discount"][3]["WeekPay"] = 780000
tGoldDressChange_Data["Discount"][4] = {}
tGoldDressChange_Data["Discount"][4]["PayFor"] = 23400000
tGoldDressChange_Data["Discount"][4]["Discount"] = 0.20
tGoldDressChange_Data["Discount"][4]["WeekPay"] = 2340000
tGoldDressChange_Data["Discount"][5] = {}
tGoldDressChange_Data["Discount"][5]["PayFor"] = 70200000
tGoldDressChange_Data["Discount"][5]["Discount"] = 0.30
tGoldDressChange_Data["Discount"][5]["WeekPay"] = 7020000
tGoldDressChange_Data["Discount"][6] = {}
tGoldDressChange_Data["Discount"][6]["PayFor"] = 210600000
tGoldDressChange_Data["Discount"][6]["Discount"] = 0.50
tGoldDressChange_Data["Discount"][6]["WeekPay"] = 21060000
-- 银两折扣券
tGoldDressChange_Data["DiscountCardId"] = 3307245
-- 天地礼包
tGoldDressChange_Data["AirEarth"] = 3307263
-- 优质宝石礼包
tGoldDressChange_Data["BestStone"] = 3307264

local tGoldDressChange_Reward = {}
-- 赤练石+1
tGoldDressChange_Reward[3307246] = {}
tGoldDressChange_Reward[3307246]["DeleteItem"] = {}
tGoldDressChange_Reward[3307246]["DeleteItem"][1] = {}
tGoldDressChange_Reward[3307246]["DeleteItem"][1]["Id"] = 3307246
tGoldDressChange_Reward[3307246]["RewardItem"] = {}
tGoldDressChange_Reward[3307246]["RewardItem"][1] = {}
tGoldDressChange_Reward[3307246]["RewardItem"][1]["Id"] = 730001
tGoldDressChange_Reward[3307246]["RewardItem"][1]["Attr"] = "0 1 3"
tGoldDressChange_Reward[3307246]["LogId"] = 12000987
-- 赤练石+2
tGoldDressChange_Reward[3307247] = {}
tGoldDressChange_Reward[3307247]["DeleteItem"] = {}
tGoldDressChange_Reward[3307247]["DeleteItem"][1] = {}
tGoldDressChange_Reward[3307247]["DeleteItem"][1]["Id"] = 3307247
tGoldDressChange_Reward[3307247]["RewardItem"] = {}
tGoldDressChange_Reward[3307247]["RewardItem"][1] = {}
tGoldDressChange_Reward[3307247]["RewardItem"][1]["Id"] = 730002
tGoldDressChange_Reward[3307247]["RewardItem"][1]["Attr"] = "0 1 3"
tGoldDressChange_Reward[3307247]["LogId"] = 12000987
-- 赤练石+3
tGoldDressChange_Reward[3307248] = {}
tGoldDressChange_Reward[3307248]["DeleteItem"] = {}
tGoldDressChange_Reward[3307248]["DeleteItem"][1] = {}
tGoldDressChange_Reward[3307248]["DeleteItem"][1]["Id"] = 3307248
tGoldDressChange_Reward[3307248]["RewardItem"] = {}
tGoldDressChange_Reward[3307248]["RewardItem"][1] = {}
tGoldDressChange_Reward[3307248]["RewardItem"][1]["Id"] = 730003
tGoldDressChange_Reward[3307248]["RewardItem"][1]["Attr"] = "0 1 3"
tGoldDressChange_Reward[3307248]["LogId"] = 12000987
-- 赤练石+4
tGoldDressChange_Reward[3307249] = {}
tGoldDressChange_Reward[3307249]["DeleteItem"] = {}
tGoldDressChange_Reward[3307249]["DeleteItem"][1] = {}
tGoldDressChange_Reward[3307249]["DeleteItem"][1]["Id"] = 3307249
tGoldDressChange_Reward[3307249]["RewardItem"] = {}
tGoldDressChange_Reward[3307249]["RewardItem"][1] = {}
tGoldDressChange_Reward[3307249]["RewardItem"][1]["Id"] = 730004
tGoldDressChange_Reward[3307249]["RewardItem"][1]["Attr"] = "0 1 3"
tGoldDressChange_Reward[3307249]["LogId"] = 12000987
-- 赤练石+5
tGoldDressChange_Reward[3307250] = {}
tGoldDressChange_Reward[3307250]["DeleteItem"] = {}
tGoldDressChange_Reward[3307250]["DeleteItem"][1] = {}
tGoldDressChange_Reward[3307250]["DeleteItem"][1]["Id"] = 3307250
tGoldDressChange_Reward[3307250]["RewardItem"] = {}
tGoldDressChange_Reward[3307250]["RewardItem"][1] = {}
tGoldDressChange_Reward[3307250]["RewardItem"][1]["Id"] = 730005
tGoldDressChange_Reward[3307250]["RewardItem"][1]["Attr"] = "0 1 3"
tGoldDressChange_Reward[3307250]["LogId"] = 12000987
-- 赤练石+6
tGoldDressChange_Reward[3307251] = {}
tGoldDressChange_Reward[3307251]["DeleteItem"] = {}
tGoldDressChange_Reward[3307251]["DeleteItem"][1] = {}
tGoldDressChange_Reward[3307251]["DeleteItem"][1]["Id"] = 3307251
tGoldDressChange_Reward[3307251]["RewardItem"] = {}
tGoldDressChange_Reward[3307251]["RewardItem"][1] = {}
tGoldDressChange_Reward[3307251]["RewardItem"][1]["Id"] = 730006
tGoldDressChange_Reward[3307251]["RewardItem"][1]["Attr"] = "0 1 3"
tGoldDressChange_Reward[3307251]["LogId"] = 12000987
-- 马+1
tGoldDressChange_Reward[3307252] = {}
tGoldDressChange_Reward[3307252]["DeleteItem"] = {}
tGoldDressChange_Reward[3307252]["DeleteItem"][1] = {}
tGoldDressChange_Reward[3307252]["DeleteItem"][1]["Id"] = 3307252
tGoldDressChange_Reward[3307252]["RewardItem"] = {}
tGoldDressChange_Reward[3307252]["RewardItem"][1] = {}
tGoldDressChange_Reward[3307252]["RewardItem"][1]["Id"] = 300000
tGoldDressChange_Reward[3307252]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 1"
tGoldDressChange_Reward[3307252]["LogId"] = 12000987
-- 马+2
tGoldDressChange_Reward[3307253] = {}
tGoldDressChange_Reward[3307253]["DeleteItem"] = {}
tGoldDressChange_Reward[3307253]["DeleteItem"][1] = {}
tGoldDressChange_Reward[3307253]["DeleteItem"][1]["Id"] = 3307253
tGoldDressChange_Reward[3307253]["RewardItem"] = {}
tGoldDressChange_Reward[3307253]["RewardItem"][1] = {}
tGoldDressChange_Reward[3307253]["RewardItem"][1]["Id"] = 300000
tGoldDressChange_Reward[3307253]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 2"
tGoldDressChange_Reward[3307253]["LogId"] = 12000987
-- 马+3
tGoldDressChange_Reward[3307254] = {}
tGoldDressChange_Reward[3307254]["DeleteItem"] = {}
tGoldDressChange_Reward[3307254]["DeleteItem"][1] = {}
tGoldDressChange_Reward[3307254]["DeleteItem"][1]["Id"] = 3307254
tGoldDressChange_Reward[3307254]["RewardItem"] = {}
tGoldDressChange_Reward[3307254]["RewardItem"][1] = {}
tGoldDressChange_Reward[3307254]["RewardItem"][1]["Id"] = 300000
tGoldDressChange_Reward[3307254]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 3"
tGoldDressChange_Reward[3307254]["LogId"] = 12000987
-- 马+4
tGoldDressChange_Reward[3307255] = {}
tGoldDressChange_Reward[3307255]["DeleteItem"] = {}
tGoldDressChange_Reward[3307255]["DeleteItem"][1] = {}
tGoldDressChange_Reward[3307255]["DeleteItem"][1]["Id"] = 3307255
tGoldDressChange_Reward[3307255]["RewardItem"] = {}
tGoldDressChange_Reward[3307255]["RewardItem"][1] = {}
tGoldDressChange_Reward[3307255]["RewardItem"][1]["Id"] = 300000
tGoldDressChange_Reward[3307255]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 4"
tGoldDressChange_Reward[3307255]["LogId"] = 12000987
-- 马+5
tGoldDressChange_Reward[3307256] = {}
tGoldDressChange_Reward[3307256]["DeleteItem"] = {}
tGoldDressChange_Reward[3307256]["DeleteItem"][1] = {}
tGoldDressChange_Reward[3307256]["DeleteItem"][1]["Id"] = 3307256
tGoldDressChange_Reward[3307256]["RewardItem"] = {}
tGoldDressChange_Reward[3307256]["RewardItem"][1] = {}
tGoldDressChange_Reward[3307256]["RewardItem"][1]["Id"] = 300000
tGoldDressChange_Reward[3307256]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 5"
tGoldDressChange_Reward[3307256]["LogId"] = 12000987
-- 马+6
tGoldDressChange_Reward[3307257] = {}
tGoldDressChange_Reward[3307257]["DeleteItem"] = {}
tGoldDressChange_Reward[3307257]["DeleteItem"][1] = {}
tGoldDressChange_Reward[3307257]["DeleteItem"][1]["Id"] = 3307257
tGoldDressChange_Reward[3307257]["RewardItem"] = {}
tGoldDressChange_Reward[3307257]["RewardItem"][1] = {}
tGoldDressChange_Reward[3307257]["RewardItem"][1]["Id"] = 300000
tGoldDressChange_Reward[3307257]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 6"
tGoldDressChange_Reward[3307257]["LogId"] = 12000987
-- 随机稀有马+6
tGoldDressChange_Reward[3307258] = {}
tGoldDressChange_Reward[3307258]["DeleteItem"] = {}
tGoldDressChange_Reward[3307258]["DeleteItem"][1] = {}
tGoldDressChange_Reward[3307258]["DeleteItem"][1]["Id"] = 3307258
tGoldDressChange_Reward[3307258]["RewardItem"] = {}
tGoldDressChange_Reward[3307258]["RewardItem"][1] = {}
tGoldDressChange_Reward[3307258]["RewardItem"][1]["Id"] = 720049
tGoldDressChange_Reward[3307258]["RewardItem"][1]["Attr"] = "0 1 3"
tGoldDressChange_Reward[3307258]["LogId"] = 12000987
-- 流星
tGoldDressChange_Reward[3307259] = {}
tGoldDressChange_Reward[3307259]["DeleteItem"] = {}
tGoldDressChange_Reward[3307259]["DeleteItem"][1] = {}
tGoldDressChange_Reward[3307259]["DeleteItem"][1]["Id"] = 3307259
tGoldDressChange_Reward[3307259]["RewardItem"] = {}
tGoldDressChange_Reward[3307259]["RewardItem"][1] = {}
tGoldDressChange_Reward[3307259]["RewardItem"][1]["Id"] = 1088001
tGoldDressChange_Reward[3307259]["RewardItem"][1]["Attr"] = "0 1 3"
tGoldDressChange_Reward[3307259]["LogId"] = 12000987
-- 龙珠
tGoldDressChange_Reward[3307260] = {}
tGoldDressChange_Reward[3307260]["DeleteItem"] = {}
tGoldDressChange_Reward[3307260]["DeleteItem"][1] = {}
tGoldDressChange_Reward[3307260]["DeleteItem"][1]["Id"] = 3307260
tGoldDressChange_Reward[3307260]["RewardItem"] = {}
tGoldDressChange_Reward[3307260]["RewardItem"][1] = {}
tGoldDressChange_Reward[3307260]["RewardItem"][1]["Id"] = 1088000
tGoldDressChange_Reward[3307260]["RewardItem"][1]["Attr"] = "0 1 3"
tGoldDressChange_Reward[3307260]["LogId"] = 12000987
-- 金刚尖钻
tGoldDressChange_Reward[3307261] = {}
tGoldDressChange_Reward[3307261]["DeleteItem"] = {}
tGoldDressChange_Reward[3307261]["DeleteItem"][1] = {}
tGoldDressChange_Reward[3307261]["DeleteItem"][1]["Id"] = 3307261
tGoldDressChange_Reward[3307261]["RewardItem"] = {}
tGoldDressChange_Reward[3307261]["RewardItem"][1] = {}
tGoldDressChange_Reward[3307261]["RewardItem"][1]["Id"] = 1200005
tGoldDressChange_Reward[3307261]["RewardItem"][1]["Attr"] = "0 1 3"
tGoldDressChange_Reward[3307261]["LogId"] = 12000987
-- 玄元宝石
tGoldDressChange_Reward[3307262] = {}
tGoldDressChange_Reward[3307262]["DeleteItem"] = {}
tGoldDressChange_Reward[3307262]["DeleteItem"][1] = {}
tGoldDressChange_Reward[3307262]["DeleteItem"][1]["Id"] = 3307262
tGoldDressChange_Reward[3307262]["RewardItem"] = {}
tGoldDressChange_Reward[3307262]["RewardItem"][1] = {}
tGoldDressChange_Reward[3307262]["RewardItem"][1]["Id"] = 700073
tGoldDressChange_Reward[3307262]["RewardItem"][1]["Attr"] = "0 1 3"
tGoldDressChange_Reward[3307262]["LogId"] = 12000987

local tGoldDressChange_RewardRandom = {}
-- 天地宝石礼包
tGoldDressChange_RewardRandom[3307263] = {}
tGoldDressChange_RewardRandom[3307263]["ItemChanceSum"] = 10000
tGoldDressChange_RewardRandom[3307263]["LogId"] = 12000987
-- 优质天怒宝石
tGoldDressChange_RewardRandom[3307263][1] = {}
tGoldDressChange_RewardRandom[3307263][1]["RandomItemChanceType"] = 2
tGoldDressChange_RewardRandom[3307263][1]["ItemChance"] = 5000
tGoldDressChange_RewardRandom[3307263][1]["RewardItem"] = {}
tGoldDressChange_RewardRandom[3307263][1]["RewardItem"][1] = {}
tGoldDressChange_RewardRandom[3307263][1]["RewardItem"][1]["Id"] = 700123
tGoldDressChange_RewardRandom[3307263][1]["RewardItem"][1]["Attr"] = "0 1 3"
-- 优质地灵宝石
tGoldDressChange_RewardRandom[3307263][2] = {}
tGoldDressChange_RewardRandom[3307263][2]["RandomItemChanceType"] = 2
tGoldDressChange_RewardRandom[3307263][2]["ItemChance"] = 5000
tGoldDressChange_RewardRandom[3307263][2]["RewardItem"] = {}
tGoldDressChange_RewardRandom[3307263][2]["RewardItem"][1] = {}
tGoldDressChange_RewardRandom[3307263][2]["RewardItem"][1]["Id"] = 700103
tGoldDressChange_RewardRandom[3307263][2]["RewardItem"][1]["Attr"] = "0 1 3"

-- 普通优质宝石
tGoldDressChange_RewardRandom[3307264] = {}
tGoldDressChange_RewardRandom[3307264]["ItemChanceSum"] = 10000
tGoldDressChange_RewardRandom[3307264]["LogId"] = 12000987
-- 优质青虹宝石
tGoldDressChange_RewardRandom[3307264][1] = {}
tGoldDressChange_RewardRandom[3307264][1]["RandomItemChanceType"] = 2
tGoldDressChange_RewardRandom[3307264][1]["ItemChance"] = 2000
tGoldDressChange_RewardRandom[3307264][1]["RewardItem"] = {}
tGoldDressChange_RewardRandom[3307264][1]["RewardItem"][1] = {}
tGoldDressChange_RewardRandom[3307264][1]["RewardItem"][1]["Id"] = 700033
tGoldDressChange_RewardRandom[3307264][1]["RewardItem"][1]["Attr"] = "0 1 3"
-- 优质惊鸿宝石
tGoldDressChange_RewardRandom[3307264][2] = {}
tGoldDressChange_RewardRandom[3307264][2]["RandomItemChanceType"] = 2
tGoldDressChange_RewardRandom[3307264][2]["ItemChance"] = 2000
tGoldDressChange_RewardRandom[3307264][2]["RewardItem"] = {}
tGoldDressChange_RewardRandom[3307264][2]["RewardItem"][1] = {}
tGoldDressChange_RewardRandom[3307264][2]["RewardItem"][1]["Id"] = 700023
tGoldDressChange_RewardRandom[3307264][2]["RewardItem"][1]["Attr"] = "0 1 3"
-- 优质紫霞宝石
tGoldDressChange_RewardRandom[3307264][3] = {}
tGoldDressChange_RewardRandom[3307264][3]["RandomItemChanceType"] = 2
tGoldDressChange_RewardRandom[3307264][3]["ItemChance"] = 2000
tGoldDressChange_RewardRandom[3307264][3]["RewardItem"] = {}
tGoldDressChange_RewardRandom[3307264][3]["RewardItem"][1] = {}
tGoldDressChange_RewardRandom[3307264][3]["RewardItem"][1]["Id"] = 700053
tGoldDressChange_RewardRandom[3307264][3]["RewardItem"][1]["Attr"] = "0 1 3"
-- 优质明月宝石
tGoldDressChange_RewardRandom[3307264][4] = {}
tGoldDressChange_RewardRandom[3307264][4]["RandomItemChanceType"] = 2
tGoldDressChange_RewardRandom[3307264][4]["ItemChance"] = 2000
tGoldDressChange_RewardRandom[3307264][4]["RewardItem"] = {}
tGoldDressChange_RewardRandom[3307264][4]["RewardItem"][1] = {}
tGoldDressChange_RewardRandom[3307264][4]["RewardItem"][1]["Id"] = 700063
tGoldDressChange_RewardRandom[3307264][4]["RewardItem"][1]["Attr"] = "0 1 3"
-- 优质金麟宝石
tGoldDressChange_RewardRandom[3307264][5] = {}
tGoldDressChange_RewardRandom[3307264][5]["RandomItemChanceType"] = 2
tGoldDressChange_RewardRandom[3307264][5]["ItemChance"] = 2000
tGoldDressChange_RewardRandom[3307264][5]["RewardItem"] = {}
tGoldDressChange_RewardRandom[3307264][5]["RewardItem"][1] = {}
tGoldDressChange_RewardRandom[3307264][5]["RewardItem"][1]["Id"] = 700043
tGoldDressChange_RewardRandom[3307264][5]["RewardItem"][1]["Attr"] = "0 1 3"

----------------------------------逻辑部分---------------------------------------------
-- 打开银两商店
function GoldDressChange_OpenShop(nNpcId)
	User_OpenDialog()
end

-- 判断隔周，返利比例下降
function GoldDressChange_ChkWeekPass()
	local nWeekPayEvent = tGoldDressChange_Data["Stc"][2]["EventTpye"]
	local nWeekPayData = tGoldDressChange_Data["Stc"][2]["DataType"]
	local nDiscountEvent = tGoldDressChange_Data["Stc"][4]["EventTpye"]
	local nDiscountData = tGoldDressChange_Data["Stc"][4]["DataType"]
	-- 当前享受返利折扣
	local nDiscount = Get_UserStatisticValue(nDiscountEvent, nDiscountData)
	nDiscount = nDiscount / 100
	local nDiscountChk = 0
	-- 周消费
	local nWeekPayMoney = Get_UserStatisticValue(nWeekPayEvent, nWeekPayData)
	
	if not Task_StcInterval(nWeekPayEvent, nWeekPayData, 1, 5) then
		for j = 1, 6 do
			if nWeekPayMoney >= tGoldDressChange_Data["Discount"][j]["PayFor"] then
				nDiscountChk = tGoldDressChange_Data["Discount"][j]["Discount"]
			end
		end
		-- 判断折扣是否能提升
		if nDiscountChk > nDiscount then
			nDiscount = nDiscountChk
		end
	end
	-- 获取玩家享受的折扣等级
	local nSign = 0
	for j = 1, 6 do
		if nDiscount == tGoldDressChange_Data["Discount"][j]["Discount"] then
			nSign = j
			break
		end
	end
	-- 判断当前享受返利折扣
	for i = 7, 1, -1 do
		if nDiscount == 0 then
			break;
		end
		-- 判断隔周，返利比例下降
		if Task_StcInterval(nWeekPayEvent, nWeekPayData, i, 5) then
			if i == 7 then
				nDiscount = 0
				break;
			end
			local nNum = nSign - i
			if nNum < 0 then
				nDiscount = 0
				break
			else
				if nWeekPayMoney >= tGoldDressChange_Data["Discount"][nSign]["WeekPay"] then
					nNum = nNum + 1
				end
				-- 折扣
				if nNum == 0 then
					nDiscount = 0
				else
					nDiscount = tGoldDressChange_Data["Discount"][nNum]["Discount"]
				end
				
			end
			break
		end
	end
	nDiscount = nDiscount * 100
	-- 玩家享受折扣赋值
	Task_SetStatistic(nDiscountEvent, nDiscountData, nDiscount, 1)
	Task_SetStcTimestamp(nDiscountEvent, nDiscountData, 0)
end

-- 礼包使用对白判断
function GoldDressChange_ChkPackageText(nItemId)
	-- 判断消费等级，折扣
	local nFirstEvent = tGoldDressChange_Data["Stc"][1]["EventTpye"]
	local nFirstData = tGoldDressChange_Data["Stc"][1]["DataType"]
	local nWeekPayEvent = tGoldDressChange_Data["Stc"][2]["EventTpye"]
	local nWeekPayData = tGoldDressChange_Data["Stc"][2]["DataType"]
	local nDiscountEvent = tGoldDressChange_Data["Stc"][4]["EventTpye"]
	local nDiscountData = tGoldDressChange_Data["Stc"][4]["DataType"]
	-- 返利比例更新
	GoldDressChange_ChkWeekPass()
	-- 当前享受返利折扣
	local nDiscount = Get_UserStatisticValue(nDiscountEvent, nDiscountData)
	nDiscount = nDiscount / 100
	
	-- 周消费隔周清空
	if Task_StcInterval(nWeekPayEvent, nWeekPayData, 1, 5) then
		Task_SetStatistic(nWeekPayEvent, nWeekPayData, 0, 1)
		Task_SetStcTimestamp(nWeekPayEvent, nWeekPayData, 0)
	end
	
	-- 商品价格
	local nItemPrice = tGoldDressChange_Data["ItemPrice"][nItemId]
	
	if nDiscount == 0 then
		tItem[nItemId]["Text113"] = tGoldDressChange_Text["SysDialog"]["HaveNotDisCount"]
		tItem[nItemId]["Text115"] = ""
	else
		local nRebateMoney = math.floor(nItemPrice * nDiscount)
		tItem[nItemId]["Text113"] = string.format(tGoldDressChange_Text["ItemUse"]["Text113"], nDiscount * 100)
		tItem[nItemId]["Text115"] = string.format(tGoldDressChange_Text["ItemUse"]["Text115"], nRebateMoney)
	end
	-- 开启礼包获得物品
	tItem[nItemId]["Text114"] = string.format(tGoldDressChange_Text["ItemUse"]["Text114"], tGoldDressChange_Text["ItemName"][nItemId])
	-- 返利卷折扣银两
	local nCardRebateMoney = math.floor(nItemPrice * tGoldDressChange_Data["Discount"]["FirstPay"])
	tItem[nItemId]["Text117"] = string.format(tGoldDressChange_Text["ItemUse"]["Text117"], nCardRebateMoney)
	-- 第一次折扣
	if Task_ChkStcValue(nFirstEvent, nFirstData, "==", 0) then
		tItem[nItemId]["Text113"] = tGoldDressChange_Text["SysDialog"]["FirstDisCount"]
	end
end

-- 使用折扣卷
function GoldDressChange_UsePackageWithCard(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 返利比例更新
	GoldDressChange_ChkWeekPass()
	
	if not Item_ChkItem(tGoldDressChange_Data["DiscountCardId"]) then
		Sys_MsgBox(tGoldDressChange_Text["SysDialog"]["HaveNotCard"])
		return
	end
	
	if not RewardTemplate_CheckSpace(tGoldDressChange_Reward[nItemId]) then
		return
	end
	
	local nFirstEvent = tGoldDressChange_Data["Stc"][1]["EventTpye"]
	local nFirstData = tGoldDressChange_Data["Stc"][1]["DataType"]
	local nWeekPayEvent = tGoldDressChange_Data["Stc"][2]["EventTpye"]
	local nWeekPayData = tGoldDressChange_Data["Stc"][2]["DataType"]
	-- local nPayEvent = tGoldDressChange_Data["Stc"][3]["EventTpye"]
	-- local nPayData = tGoldDressChange_Data["Stc"][3]["DataType"]
	
	-- 周消费隔周清空
	if Task_StcInterval(nWeekPayEvent, nWeekPayData, 1, 5) then
		Task_SetStatistic(nWeekPayEvent, nWeekPayData, 0, 1)
		Task_SetStcTimestamp(nWeekPayEvent, nWeekPayData, 0)
	end
	
	local nItemPrice = tGoldDressChange_Data["ItemPrice"][nItemId]
	local nDiscount = tGoldDressChange_Data["Discount"]["FirstPay"]
	local nRebateMoney = math.floor(nItemPrice * nDiscount)
	-- 判断金币上限
	if not User_CanPutMoney2Bag(nRebateMoney) then
		User_TalkChannel2005(tGoldDressChange_Text["SysDialog"]["FullMoney"])
		return
	end
	
	local tReward = CommonFunc_Copy(tGoldDressChange_Reward[nItemId])
	tReward["RewardMoney"] = {}
	tReward["RewardMoney"]["Value"] = nRebateMoney
	tReward["Gold"] = true
	
	if Item_DelItem(tGoldDressChange_Data["DiscountCardId"]) then
		if Task_ChkStcValue(nFirstEvent, nFirstData, "==", 0) then
			Task_AddStatistic(nFirstEvent, nFirstData, 1, 1)
			Task_SetStcTimestamp(nFirstEvent, nFirstData, 0)
		end
		
		if RewardTemplate_UseItem(tReward) then
			-- 增加消费金额
			-- Task_AddStatistic(nPayEvent, nPayData, nItemPrice, 1)
			-- Task_SetStcTimestamp(nPayEvent, nPayData, 0, 0)
			-- 周消费金额
			local nWeekPayMoney = Get_UserStatisticValue(nWeekPayEvent, nWeekPayData)
			if nWeekPayMoney < tGoldDressChange_Data["Discount"][6]["PayFor"] then
				Task_AddStatistic(nWeekPayEvent, nWeekPayData, nItemPrice, 1)
			end
			Task_SetStcTimestamp(nWeekPayEvent, nWeekPayData, 0, 0)
		end
	end
end

-- 不使用折扣卷
function GoldDressChange_UsePackageWithoutCard(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 返利比例更新
	GoldDressChange_ChkWeekPass()
	
	if not RewardTemplate_CheckSpace(tGoldDressChange_Reward[nItemId]) then
		return
	end
	
	local nFirstEvent = tGoldDressChange_Data["Stc"][1]["EventTpye"]
	local nFirstData = tGoldDressChange_Data["Stc"][1]["DataType"]
	local nWeekPayEvent = tGoldDressChange_Data["Stc"][2]["EventTpye"]
	local nWeekPayData = tGoldDressChange_Data["Stc"][2]["DataType"]
	-- local nPayEvent = tGoldDressChange_Data["Stc"][3]["EventTpye"]
	-- local nPayData = tGoldDressChange_Data["Stc"][3]["DataType"]
	local nDiscountEvent = tGoldDressChange_Data["Stc"][4]["EventTpye"]
	local nDiscountData = tGoldDressChange_Data["Stc"][4]["DataType"]
	-- 周消费隔周清空
	if Task_StcInterval(nWeekPayEvent, nWeekPayData, 1, 5) then
		Task_SetStatistic(nWeekPayEvent, nWeekPayData, 0, 1)
		Task_SetStcTimestamp(nWeekPayEvent, nWeekPayData, 0)
	end
	
	local nItemPrice = tGoldDressChange_Data["ItemPrice"][nItemId]
	-- 判断是否首次使用礼包，返利50%
	if Task_ChkStcValue(nFirstEvent, nFirstData, "==", 0) then
		local nDiscount = tGoldDressChange_Data["Discount"]["FirstPay"]
		local nRebateMoney = math.floor(nItemPrice * nDiscount)
		-- 判断金币上限
		if not User_CanPutMoney2Bag(nRebateMoney) then
			User_TalkChannel2005(tGoldDressChange_Text["SysDialog"]["FullMoney"])
			return
		end
		
		local tReward = CommonFunc_Copy(tGoldDressChange_Reward[nItemId])
		tReward["RewardMoney"] = {}
		tReward["RewardMoney"]["Value"] = nRebateMoney
		tReward["Gold"] = true
		
		Task_AddStatistic(nFirstEvent, nFirstData, 1, 1)
		Task_SetStcTimestamp(nFirstEvent, nFirstData, 0)
		
		if RewardTemplate_UseItem(tReward) then
			-- 增加消费金额
			-- Task_AddStatistic(nPayEvent, nPayData, nItemPrice, 1)
			-- Task_SetStcTimestamp(nPayEvent, nPayData, 0, 0)
			-- 周消费金额
			local nWeekPayMoney = Get_UserStatisticValue(nWeekPayEvent, nWeekPayData)
			if nWeekPayMoney < tGoldDressChange_Data["Discount"][6]["PayFor"] then
				Task_AddStatistic(nWeekPayEvent, nWeekPayData, nItemPrice, 1)
			end
			Task_SetStcTimestamp(nWeekPayEvent, nWeekPayData, 0, 0)
		end
	else
		-- 判断玩家消费金额，享受返利价值
		-- local nPayForMoney = Get_UserStatisticValue(nPayEvent, nPayData)
		local nDiscount = Get_UserStatisticValue(nDiscountEvent, nDiscountData)
		nDiscount = nDiscount / 100
		-- for i = 1, 6 do
			-- if nPayForMoney > tGoldDressChange_Data["Discount"][i]["PayFor"] then
				-- nDiscount = tGoldDressChange_Data["Discount"][i]["Discount"]
			-- end
		-- end
		-- 判断金币上限
		local nRebateMoney = math.floor(nItemPrice * nDiscount)
		local tReward = CommonFunc_Copy(tGoldDressChange_Reward[nItemId])
		
		if nRebateMoney > 0 then
			if not User_CanPutMoney2Bag(nRebateMoney) then
				User_TalkChannel2005(tGoldDressChange_Text["SysDialog"]["FullMoney"])
				return
			end
			tReward["RewardMoney"] = {}
			tReward["RewardMoney"]["Value"] = nRebateMoney
			tReward["Gold"] = true
		end
		
		if RewardTemplate_UseItem(tReward) then
			-- 增加消费金额
			-- Task_AddStatistic(nPayEvent, nPayData, nItemPrice, 1)
			-- Task_SetStcTimestamp(nPayEvent, nPayData, 0, 0)
			-- 周消费金额
			local nWeekPayMoney = Get_UserStatisticValue(nWeekPayEvent, nWeekPayData)
			if nWeekPayMoney < tGoldDressChange_Data["Discount"][6]["PayFor"] then
				Task_AddStatistic(nWeekPayEvent, nWeekPayData, nItemPrice, 1)
			end
			Task_SetStcTimestamp(nWeekPayEvent, nWeekPayData, 0, 0)
		end
	end
end

-- 随机礼包使用，使用折扣卷
function GoldDressChange_UseRandomPackageWithCard(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 返利比例更新
	GoldDressChange_ChkWeekPass()
	
	if not Item_ChkItem(tGoldDressChange_Data["DiscountCardId"]) then
		Sys_MsgBox(tGoldDressChange_Text["SysDialog"]["HaveNotCard"])
		return
	end
	
	if not RewardTemplate_ChkRandomSpace(tGoldDressChange_RewardRandom, nItemId) then
		return
	end
	
	local nFirstEvent = tGoldDressChange_Data["Stc"][1]["EventTpye"]
	local nFirstData = tGoldDressChange_Data["Stc"][1]["DataType"]
	local nWeekPayEvent = tGoldDressChange_Data["Stc"][2]["EventTpye"]
	local nWeekPayData = tGoldDressChange_Data["Stc"][2]["DataType"]
	-- local nPayEvent = tGoldDressChange_Data["Stc"][3]["EventTpye"]
	-- local nPayData = tGoldDressChange_Data["Stc"][3]["DataType"]
	
	-- 周消费隔周清空
	if Task_StcInterval(nWeekPayEvent, nWeekPayData, 1, 5) then
		Task_SetStatistic(nWeekPayEvent, nWeekPayData, 0, 1)
		Task_SetStcTimestamp(nWeekPayEvent, nWeekPayData, 0)
	end
	
	local nItemPrice = tGoldDressChange_Data["ItemPrice"][nItemId]
	local nDiscount = tGoldDressChange_Data["Discount"]["FirstPay"]
	local nRebateMoney = math.floor(nItemPrice * nDiscount)
	-- 判断金币上限
	if not User_CanPutMoney2Bag(nRebateMoney) then
		User_TalkChannel2005(tGoldDressChange_Text["SysDialog"]["FullMoney"])
		return
	end
	
	local tReward = CommonFunc_Copy(tGoldDressChange_RewardRandom)
	if nItemId == tGoldDressChange_Data["AirEarth"] then
		tReward[nItemId][3] = {}
		tReward[nItemId][3]["RandomItemChanceType"] = 1
		tReward[nItemId][3]["RewardMoney"] = {}
		tReward[nItemId][3]["RewardMoney"]["Value"] = nRebateMoney
		tReward[nItemId][3]["Gold"] = true
	elseif nItemId == tGoldDressChange_Data["BestStone"] then
		tReward[nItemId][6] = {}
		tReward[nItemId][6]["RandomItemChanceType"] = 1
		tReward[nItemId][6]["RewardMoney"] = {}
		tReward[nItemId][6]["RewardMoney"]["Value"] = nRebateMoney
		tReward[nItemId][6]["Gold"] = true
	end
	
	if Item_DelItem(tGoldDressChange_Data["DiscountCardId"]) then
		if Item_DelItem(nItemId) then
			if Task_ChkStcValue(nFirstEvent, nFirstData, "==", 0) then
				Task_AddStatistic(nFirstEvent, nFirstData, 1, 1)
				Task_SetStcTimestamp(nFirstEvent, nFirstData, 0)
			end
			
			RewardTemplate_NewRandom(tReward, nItemId)
			
			-- 增加消费金额
			-- Task_AddStatistic(nPayEvent, nPayData, nItemPrice, 1)
			-- Task_SetStcTimestamp(nPayEvent, nPayData, 0, 0)
			-- 周消费金额
			local nWeekPayMoney = Get_UserStatisticValue(nWeekPayEvent, nWeekPayData)
			if nWeekPayMoney < tGoldDressChange_Data["Discount"][6]["PayFor"] then
				Task_AddStatistic(nWeekPayEvent, nWeekPayData, nItemPrice, 1)
			end
			Task_SetStcTimestamp(nWeekPayEvent, nWeekPayData, 0, 0)
		end
	end
end

-- 随机礼包使用，不使用折扣卷
function GoldDressChange_UseRandomPackageWithoutCard(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 返利比例更新
	GoldDressChange_ChkWeekPass()
	
	if not RewardTemplate_ChkRandomSpace(tGoldDressChange_RewardRandom, nItemId) then
		return
	end
	
	local nFirstEvent = tGoldDressChange_Data["Stc"][1]["EventTpye"]
	local nFirstData = tGoldDressChange_Data["Stc"][1]["DataType"]
	local nWeekPayEvent = tGoldDressChange_Data["Stc"][2]["EventTpye"]
	local nWeekPayData = tGoldDressChange_Data["Stc"][2]["DataType"]
	-- local nPayEvent = tGoldDressChange_Data["Stc"][3]["EventTpye"]
	-- local nPayData = tGoldDressChange_Data["Stc"][3]["DataType"]
	local nDiscountEvent = tGoldDressChange_Data["Stc"][4]["EventTpye"]
	local nDiscountData = tGoldDressChange_Data["Stc"][4]["DataType"]
	
	-- 周消费隔周清空
	if Task_StcInterval(nWeekPayEvent, nWeekPayData, 1, 5) then
		Task_SetStatistic(nWeekPayEvent, nWeekPayData, 0, 1)
		Task_SetStcTimestamp(nWeekPayEvent, nWeekPayData, 0)
	end
	
	local nItemPrice = tGoldDressChange_Data["ItemPrice"][nItemId]
	-- 判断是否首次使用礼包，返利50%
	if Task_ChkStcValue(nFirstEvent, nFirstData, "==", 0) then
		local nDiscount = tGoldDressChange_Data["Discount"]["FirstPay"]
		local nRebateMoney = math.floor(nItemPrice * nDiscount)
		-- 判断金币上限
		if not User_CanPutMoney2Bag(nRebateMoney) then
			User_TalkChannel2005(tGoldDressChange_Text["SysDialog"]["FullMoney"])
			return
		end
		
		local tReward = CommonFunc_Copy(tGoldDressChange_RewardRandom)
		if nItemId == tGoldDressChange_Data["AirEarth"] then
			tReward[nItemId][3] = {}
			tReward[nItemId][3]["RandomItemChanceType"] = 1
			tReward[nItemId][3]["RewardMoney"] = {}
			tReward[nItemId][3]["RewardMoney"]["Value"] = nRebateMoney
			tReward[nItemId][3]["Gold"] = true
		elseif nItemId == tGoldDressChange_Data["BestStone"] then
			tReward[nItemId][6] = {}
			tReward[nItemId][6]["RandomItemChanceType"] = 1
			tReward[nItemId][6]["RewardMoney"] = {}
			tReward[nItemId][6]["RewardMoney"]["Value"] = nRebateMoney
			tReward[nItemId][6]["Gold"] = true
		end
		
		if Item_DelItem(nItemId) then
			Task_AddStatistic(nFirstEvent, nFirstData, 1, 1)
			Task_SetStcTimestamp(nFirstEvent, nFirstData, 0)
			
			RewardTemplate_NewRandom(tReward, nItemId)
			
			-- 增加消费金额
			-- Task_AddStatistic(nPayEvent, nPayData, nItemPrice, 1)
			-- Task_SetStcTimestamp(nPayEvent, nPayData, 0, 0)
			-- 周消费金额
			local nWeekPayMoney = Get_UserStatisticValue(nWeekPayEvent, nWeekPayData)
			if nWeekPayMoney < tGoldDressChange_Data["Discount"][6]["PayFor"] then
				Task_AddStatistic(nWeekPayEvent, nWeekPayData, nItemPrice, 1)
			end
			Task_SetStcTimestamp(nWeekPayEvent, nWeekPayData, 0, 0)
		end
	else
		-- 判断玩家消费金额，享受返利价值
		-- local nPayForMoney = Get_UserStatisticValue(nPayEvent, nPayData)
		local nDiscount = Get_UserStatisticValue(nDiscountEvent, nDiscountData)
		nDiscount = nDiscount / 100
		-- for i = 1, 6 do
			-- if nPayForMoney > tGoldDressChange_Data["Discount"][i]["PayFor"] then
				-- nDiscount = tGoldDressChange_Data["Discount"][i]["Discount"]
			-- end
		-- end
		-- 判断金币上限
		local nRebateMoney = math.floor(nItemPrice * nDiscount)
		local tReward = CommonFunc_Copy(tGoldDressChange_RewardRandom)
		
		if nRebateMoney > 0 then
			if not User_CanPutMoney2Bag(nRebateMoney) then
				User_TalkChannel2005(tGoldDressChange_Text["SysDialog"]["FullMoney"])
				return
			end
			if nItemId == tGoldDressChange_Data["AirEarth"] then
				tReward[nItemId][3] = {}
				tReward[nItemId][3]["RandomItemChanceType"] = 1
				tReward[nItemId][3]["RewardMoney"] = {}
				tReward[nItemId][3]["RewardMoney"]["Value"] = nRebateMoney
				tReward[nItemId][3]["Gold"] = true
			elseif nItemId == tGoldDressChange_Data["BestStone"] then
				tReward[nItemId][6] = {}
				tReward[nItemId][6]["RandomItemChanceType"] = 1
				tReward[nItemId][6]["RewardMoney"] = {}
				tReward[nItemId][6]["RewardMoney"]["Value"] = nRebateMoney
				tReward[nItemId][6]["Gold"] = true
			end
		end
		
		if Item_DelItem(nItemId) then
			RewardTemplate_NewRandom(tReward, nItemId)
			
			-- 增加消费金额
			-- Task_AddStatistic(nPayEvent, nPayData, nItemPrice, 1)
			-- Task_SetStcTimestamp(nPayEvent, nPayData, 0, 0)
			-- 周消费金额
			local nWeekPayMoney = Get_UserStatisticValue(nWeekPayEvent, nWeekPayData)
			if nWeekPayMoney < tGoldDressChange_Data["Discount"][6]["PayFor"] then
				Task_AddStatistic(nWeekPayEvent, nWeekPayData, nItemPrice, 1)
			end
			Task_SetStcTimestamp(nWeekPayEvent, nWeekPayData, 0, 0)
		end
	end
end

----------------------------------NPC部分---------------------------------------------
tNpcFace[4271] = 189
tNpcGossip[22610]= tNpcGossip[22610] or DefaultNpc:new{}
tNpcGossip[22610]["OptionHidden"] = 1
-- 活动时间内
tNpcGossip[22610]["Text1-1"] = {111, 118, 112, 113, 114, 115, 116, 119, 120}
tNpcGossip[22610]["Text111"] = tGoldDressChange_Text[22610]["Text111"]
tNpcGossip[22610]["Text118"] = tGoldDressChange_Text[22610]["Text118"]
tNpcGossip[22610]["Text112"] = tGoldDressChange_Text[22610]["Text112"]
tNpcGossip[22610]["Text113"] = tGoldDressChange_Text[22610]["Text113"]
tNpcGossip[22610]["Text114"] = tGoldDressChange_Text[22610]["Text114"]
tNpcGossip[22610]["Text115"] = tGoldDressChange_Text[22610]["Text115"]
tNpcGossip[22610]["Text116"] = tGoldDressChange_Text[22610]["Text116"]
tNpcGossip[22610]["ChkFunc1-1"]= function()
	-- NPC对白赋值
	local nWeekPayEvent = tGoldDressChange_Data["Stc"][2]["EventTpye"]
	local nWeekPayData = tGoldDressChange_Data["Stc"][2]["DataType"]
	-- local nEvent = tGoldDressChange_Data["Stc"][3]["EventTpye"]
	-- local nType = tGoldDressChange_Data["Stc"][3]["DataType"]
	local nDiscountEvent = tGoldDressChange_Data["Stc"][4]["EventTpye"]
	local nDiscountData = tGoldDressChange_Data["Stc"][4]["DataType"]
	-- 当前享受返利折扣
	local nDiscount = Get_UserStatisticValue(nDiscountEvent, nDiscountData)
	nDiscount = nDiscount / 100
	
	local nWeekPayForMoney = Get_UserStatisticValue(nWeekPayEvent, nWeekPayData)
	-- local nPayForMoney = Get_UserStatisticValue(nEvent, nType)
	-- tNpcGossip[22610]["Text117"] = string.format(tGoldDressChange_Text[22610]["Text117"], nPayForMoney)
	tNpcGossip[22610]["Text119"] = string.format(tGoldDressChange_Text[22610]["Text119"], nWeekPayForMoney)
	
	if nDiscount == 0 then
		tNpcGossip[22610]["Text120"] = tGoldDressChange_Text["SysDialog"]["HaveNotDisCount"]
	else
		local nDiscountSign = nDiscount * 100
		if nWeekPayForMoney >= tGoldDressChange_Data["Discount"][6]["PayFor"] then
			tNpcGossip[22610]["Text119"] = ""
		end
		tNpcGossip[22610]["Text120"] = string.format(tGoldDressChange_Text[22610]["Text120"], nDiscountSign)
	end
	return true
end
tNpcGossip[22610]["tOption1-1"] = {111,112}
tNpcGossip[22610]["Option111"] = tGoldDressChange_Text[22610]["Option111"]
tNpcGossip[22610]["OptionFunc111"] = "GoldDressChange_OpenShop</N>22610"
tNpcGossip[22610]["Option112"] = tGoldDressChange_Text[22610]["Option112"]
---------------------------------物品部分---------------------------------------------
-- 赤炼石+1
tItemFace[3307246] = 1272
tItem[3307246] = tItem[3307246] or {}
tItem[3307246]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tItem[3307246]["Text111"] = tGoldDressChange_Text["ItemUse"]["Text111"]
tItem[3307246]["Text112"] = tGoldDressChange_Text["ItemUse"]["Text112"]
tItem[3307246]["Text116"] = tGoldDressChange_Text["ItemUse"]["Text116"]
tItem[3307246]["ChkFunc1-1"] = function()
	-- 判断消费等级，折扣
	local nItemId = Get_ItemType()
	GoldDressChange_ChkPackageText(nItemId)
	return true
end
tItem[3307246]["tOption1-1"] = {111, 112}
tItem[3307246]["Option111"] = tGoldDressChange_Text["ItemUse"]["Option111"]
tItem[3307246]["OptionFunc111"] = "GoldDressChange_UsePackageWithoutCard</N>3307246"
tItem[3307246]["Option112"] = tGoldDressChange_Text["ItemUse"]["Option112"]
tItem[3307246]["OptionFunc112"] = "GoldDressChange_UsePackageWithCard</N>3307246"

-- 赤炼石+2
tItemFace[3307247] = 1273
tItem[3307247] = tItem[3307247] or {}
tItem[3307247]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tItem[3307247]["Text111"] = tGoldDressChange_Text["ItemUse"]["Text111"]
tItem[3307247]["Text112"] = tGoldDressChange_Text["ItemUse"]["Text112"]
tItem[3307247]["Text116"] = tGoldDressChange_Text["ItemUse"]["Text116"]
tItem[3307247]["ChkFunc1-1"] = function()
	-- 判断消费等级，折扣
	local nItemId = Get_ItemType()
	GoldDressChange_ChkPackageText(nItemId)
	return true
end
tItem[3307247]["tOption1-1"] = {111, 112}
tItem[3307247]["Option111"] = tGoldDressChange_Text["ItemUse"]["Option111"]
tItem[3307247]["OptionFunc111"] = "GoldDressChange_UsePackageWithoutCard</N>3307247"
tItem[3307247]["Option112"] = tGoldDressChange_Text["ItemUse"]["Option112"]
tItem[3307247]["OptionFunc112"] = "GoldDressChange_UsePackageWithCard</N>3307247"

-- 赤炼石+3
tItemFace[3307248] = 1274
tItem[3307248] = tItem[3307248] or {}
tItem[3307248]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tItem[3307248]["Text111"] = tGoldDressChange_Text["ItemUse"]["Text111"]
tItem[3307248]["Text112"] = tGoldDressChange_Text["ItemUse"]["Text112"]
tItem[3307248]["Text116"] = tGoldDressChange_Text["ItemUse"]["Text116"]
tItem[3307248]["ChkFunc1-1"] = function()
	-- 判断消费等级，折扣
	local nItemId = Get_ItemType()
	GoldDressChange_ChkPackageText(nItemId)
	return true
end
tItem[3307248]["tOption1-1"] = {111, 112}
tItem[3307248]["Option111"] = tGoldDressChange_Text["ItemUse"]["Option111"]
tItem[3307248]["OptionFunc111"] = "GoldDressChange_UsePackageWithoutCard</N>3307248"
tItem[3307248]["Option112"] = tGoldDressChange_Text["ItemUse"]["Option112"]
tItem[3307248]["OptionFunc112"] = "GoldDressChange_UsePackageWithCard</N>3307248"

-- 赤炼石+4
tItemFace[3307249] = 1275
tItem[3307249] = tItem[3307249] or {}
tItem[3307249]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tItem[3307249]["Text111"] = tGoldDressChange_Text["ItemUse"]["Text111"]
tItem[3307249]["Text112"] = tGoldDressChange_Text["ItemUse"]["Text112"]
tItem[3307249]["Text116"] = tGoldDressChange_Text["ItemUse"]["Text116"]
tItem[3307249]["ChkFunc1-1"] = function()
	-- 判断消费等级，折扣
	local nItemId = Get_ItemType()
	GoldDressChange_ChkPackageText(nItemId)
	return true
end
tItem[3307249]["tOption1-1"] = {111, 112}
tItem[3307249]["Option111"] = tGoldDressChange_Text["ItemUse"]["Option111"]
tItem[3307249]["OptionFunc111"] = "GoldDressChange_UsePackageWithoutCard</N>3307249"
tItem[3307249]["Option112"] = tGoldDressChange_Text["ItemUse"]["Option112"]
tItem[3307249]["OptionFunc112"] = "GoldDressChange_UsePackageWithCard</N>3307249"

-- 赤炼石+5
tItemFace[3307250] = 1276
tItem[3307250] = tItem[3307250] or {}
tItem[3307250]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tItem[3307250]["Text111"] = tGoldDressChange_Text["ItemUse"]["Text111"]
tItem[3307250]["Text112"] = tGoldDressChange_Text["ItemUse"]["Text112"]
tItem[3307250]["Text116"] = tGoldDressChange_Text["ItemUse"]["Text116"]
tItem[3307250]["ChkFunc1-1"] = function()
	-- 判断消费等级，折扣
	local nItemId = Get_ItemType()
	GoldDressChange_ChkPackageText(nItemId)
	return true
end
tItem[3307250]["tOption1-1"] = {111, 112}
tItem[3307250]["Option111"] = tGoldDressChange_Text["ItemUse"]["Option111"]
tItem[3307250]["OptionFunc111"] = "GoldDressChange_UsePackageWithoutCard</N>3307250"
tItem[3307250]["Option112"] = tGoldDressChange_Text["ItemUse"]["Option112"]
tItem[3307250]["OptionFunc112"] = "GoldDressChange_UsePackageWithCard</N>3307250"

-- 赤炼石+6
tItemFace[3307251] = 1277
tItem[3307251] = tItem[3307251] or {}
tItem[3307251]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tItem[3307251]["Text111"] = tGoldDressChange_Text["ItemUse"]["Text111"]
tItem[3307251]["Text112"] = tGoldDressChange_Text["ItemUse"]["Text112"]
tItem[3307251]["Text116"] = tGoldDressChange_Text["ItemUse"]["Text116"]
tItem[3307251]["ChkFunc1-1"] = function()
	-- 判断消费等级，折扣
	local nItemId = Get_ItemType()
	GoldDressChange_ChkPackageText(nItemId)
	return true
end
tItem[3307251]["tOption1-1"] = {111, 112}
tItem[3307251]["Option111"] = tGoldDressChange_Text["ItemUse"]["Option111"]
tItem[3307251]["OptionFunc111"] = "GoldDressChange_UsePackageWithoutCard</N>3307251"
tItem[3307251]["Option112"] = tGoldDressChange_Text["ItemUse"]["Option112"]
tItem[3307251]["OptionFunc112"] = "GoldDressChange_UsePackageWithCard</N>3307251"

-- 马+1
tItemFace[3307252] = 1278
tItem[3307252] = tItem[3307252] or {}
tItem[3307252]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tItem[3307252]["Text111"] = tGoldDressChange_Text["ItemUse"]["Text111"]
tItem[3307252]["Text112"] = tGoldDressChange_Text["ItemUse"]["Text112"]
tItem[3307252]["Text116"] = tGoldDressChange_Text["ItemUse"]["Text116"]
tItem[3307252]["ChkFunc1-1"] = function()
	-- 判断消费等级，折扣
	local nItemId = Get_ItemType()
	GoldDressChange_ChkPackageText(nItemId)
	return true
end
tItem[3307252]["tOption1-1"] = {111, 112}
tItem[3307252]["Option111"] = tGoldDressChange_Text["ItemUse"]["Option111"]
tItem[3307252]["OptionFunc111"] = "GoldDressChange_UsePackageWithoutCard</N>3307252"
tItem[3307252]["Option112"] = tGoldDressChange_Text["ItemUse"]["Option112"]
tItem[3307252]["OptionFunc112"] = "GoldDressChange_UsePackageWithCard</N>3307252"

-- 马+2
tItemFace[3307253] = 1279
tItem[3307253] = tItem[3307253] or {}
tItem[3307253]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tItem[3307253]["Text111"] = tGoldDressChange_Text["ItemUse"]["Text111"]
tItem[3307253]["Text112"] = tGoldDressChange_Text["ItemUse"]["Text112"]
tItem[3307253]["Text116"] = tGoldDressChange_Text["ItemUse"]["Text116"]
tItem[3307253]["ChkFunc1-1"] = function()
	-- 判断消费等级，折扣
	local nItemId = Get_ItemType()
	GoldDressChange_ChkPackageText(nItemId)
	return true
end
tItem[3307253]["tOption1-1"] = {111, 112}
tItem[3307253]["Option111"] = tGoldDressChange_Text["ItemUse"]["Option111"]
tItem[3307253]["OptionFunc111"] = "GoldDressChange_UsePackageWithoutCard</N>3307253"
tItem[3307253]["Option112"] = tGoldDressChange_Text["ItemUse"]["Option112"]
tItem[3307253]["OptionFunc112"] = "GoldDressChange_UsePackageWithCard</N>3307253"

-- 马+3
tItemFace[3307254] = 1280
tItem[3307254] = tItem[3307254] or {}
tItem[3307254]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tItem[3307254]["Text111"] = tGoldDressChange_Text["ItemUse"]["Text111"]
tItem[3307254]["Text112"] = tGoldDressChange_Text["ItemUse"]["Text112"]
tItem[3307254]["Text116"] = tGoldDressChange_Text["ItemUse"]["Text116"]
tItem[3307254]["ChkFunc1-1"] = function()
	-- 判断消费等级，折扣
	local nItemId = Get_ItemType()
	GoldDressChange_ChkPackageText(nItemId)
	return true
end
tItem[3307254]["tOption1-1"] = {111, 112}
tItem[3307254]["Option111"] = tGoldDressChange_Text["ItemUse"]["Option111"]
tItem[3307254]["OptionFunc111"] = "GoldDressChange_UsePackageWithoutCard</N>3307254"
tItem[3307254]["Option112"] = tGoldDressChange_Text["ItemUse"]["Option112"]
tItem[3307254]["OptionFunc112"] = "GoldDressChange_UsePackageWithCard</N>3307254"

-- 马+4
tItemFace[3307255] = 1281
tItem[3307255] = tItem[3307255] or {}
tItem[3307255]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tItem[3307255]["Text111"] = tGoldDressChange_Text["ItemUse"]["Text111"]
tItem[3307255]["Text112"] = tGoldDressChange_Text["ItemUse"]["Text112"]
tItem[3307255]["Text116"] = tGoldDressChange_Text["ItemUse"]["Text116"]
tItem[3307255]["ChkFunc1-1"] = function()
	-- 判断消费等级，折扣
	local nItemId = Get_ItemType()
	GoldDressChange_ChkPackageText(nItemId)
	return true
end
tItem[3307255]["tOption1-1"] = {111, 112}
tItem[3307255]["Option111"] = tGoldDressChange_Text["ItemUse"]["Option111"]
tItem[3307255]["OptionFunc111"] = "GoldDressChange_UsePackageWithoutCard</N>3307255"
tItem[3307255]["Option112"] = tGoldDressChange_Text["ItemUse"]["Option112"]
tItem[3307255]["OptionFunc112"] = "GoldDressChange_UsePackageWithCard</N>3307255"

-- 马+5
tItemFace[3307256] = 1282
tItem[3307256] = tItem[3307256] or {}
tItem[3307256]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tItem[3307256]["Text111"] = tGoldDressChange_Text["ItemUse"]["Text111"]
tItem[3307256]["Text112"] = tGoldDressChange_Text["ItemUse"]["Text112"]
tItem[3307256]["Text116"] = tGoldDressChange_Text["ItemUse"]["Text116"]
tItem[3307256]["ChkFunc1-1"] = function()
	-- 判断消费等级，折扣
	local nItemId = Get_ItemType()
	GoldDressChange_ChkPackageText(nItemId)
	return true
end
tItem[3307256]["tOption1-1"] = {111, 112}
tItem[3307256]["Option111"] = tGoldDressChange_Text["ItemUse"]["Option111"]
tItem[3307256]["OptionFunc111"] = "GoldDressChange_UsePackageWithoutCard</N>3307256"
tItem[3307256]["Option112"] = tGoldDressChange_Text["ItemUse"]["Option112"]
tItem[3307256]["OptionFunc112"] = "GoldDressChange_UsePackageWithCard</N>3307256"

-- 马+6
tItemFace[3307257] = 1283
tItem[3307257] = tItem[3307257] or {}
tItem[3307257]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tItem[3307257]["Text111"] = tGoldDressChange_Text["ItemUse"]["Text111"]
tItem[3307257]["Text112"] = tGoldDressChange_Text["ItemUse"]["Text112"]
tItem[3307257]["Text116"] = tGoldDressChange_Text["ItemUse"]["Text116"]
tItem[3307257]["ChkFunc1-1"] = function()
	-- 判断消费等级，折扣
	local nItemId = Get_ItemType()
	GoldDressChange_ChkPackageText(nItemId)
	return true
end
tItem[3307257]["tOption1-1"] = {111, 112}
tItem[3307257]["Option111"] = tGoldDressChange_Text["ItemUse"]["Option111"]
tItem[3307257]["OptionFunc111"] = "GoldDressChange_UsePackageWithoutCard</N>3307257"
tItem[3307257]["Option112"] = tGoldDressChange_Text["ItemUse"]["Option112"]
tItem[3307257]["OptionFunc112"] = "GoldDressChange_UsePackageWithCard</N>3307257"

-- 随机稀有马+6
tItemFace[3307258] = 1284
tItem[3307258] = tItem[3307258] or {}
tItem[3307258]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tItem[3307258]["Text111"] = tGoldDressChange_Text["ItemUse"]["Text111"]
tItem[3307258]["Text112"] = tGoldDressChange_Text["ItemUse"]["Text112"]
tItem[3307258]["Text116"] = tGoldDressChange_Text["ItemUse"]["Text116"]
tItem[3307258]["ChkFunc1-1"] = function()
	-- 判断消费等级，折扣
	local nItemId = Get_ItemType()
	GoldDressChange_ChkPackageText(nItemId)
	return true
end
tItem[3307258]["tOption1-1"] = {111, 112}
tItem[3307258]["Option111"] = tGoldDressChange_Text["ItemUse"]["Option111"]
tItem[3307258]["OptionFunc111"] = "GoldDressChange_UsePackageWithoutCard</N>3307258"
tItem[3307258]["Option112"] = tGoldDressChange_Text["ItemUse"]["Option112"]
tItem[3307258]["OptionFunc112"] = "GoldDressChange_UsePackageWithCard</N>3307258"

-- 流星
tItemFace[3307259] = 1285
tItem[3307259] = tItem[3307259] or {}
tItem[3307259]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tItem[3307259]["Text111"] = tGoldDressChange_Text["ItemUse"]["Text111"]
tItem[3307259]["Text112"] = tGoldDressChange_Text["ItemUse"]["Text112"]
tItem[3307259]["Text116"] = tGoldDressChange_Text["ItemUse"]["Text116"]
tItem[3307259]["ChkFunc1-1"] = function()
	-- 判断消费等级，折扣
	local nItemId = Get_ItemType()
	GoldDressChange_ChkPackageText(nItemId)
	return true
end
tItem[3307259]["tOption1-1"] = {111, 112}
tItem[3307259]["Option111"] = tGoldDressChange_Text["ItemUse"]["Option111"]
tItem[3307259]["OptionFunc111"] = "GoldDressChange_UsePackageWithoutCard</N>3307259"
tItem[3307259]["Option112"] = tGoldDressChange_Text["ItemUse"]["Option112"]
tItem[3307259]["OptionFunc112"] = "GoldDressChange_UsePackageWithCard</N>3307259"

-- 龙珠
tItemFace[3307260] = 1286
tItem[3307260] = tItem[3307260] or {}
tItem[3307260]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tItem[3307260]["Text111"] = tGoldDressChange_Text["ItemUse"]["Text111"]
tItem[3307260]["Text112"] = tGoldDressChange_Text["ItemUse"]["Text112"]
tItem[3307260]["Text116"] = tGoldDressChange_Text["ItemUse"]["Text116"]
tItem[3307260]["ChkFunc1-1"] = function()
	-- 判断消费等级，折扣
	local nItemId = Get_ItemType()
	GoldDressChange_ChkPackageText(nItemId)
	return true
end
tItem[3307260]["tOption1-1"] = {111, 112}
tItem[3307260]["Option111"] = tGoldDressChange_Text["ItemUse"]["Option111"]
tItem[3307260]["OptionFunc111"] = "GoldDressChange_UsePackageWithoutCard</N>3307260"
tItem[3307260]["Option112"] = tGoldDressChange_Text["ItemUse"]["Option112"]
tItem[3307260]["OptionFunc112"] = "GoldDressChange_UsePackageWithCard</N>3307260"

-- 金刚尖钻
tItemFace[3307261] = 1287
tItem[3307261] = tItem[3307261] or {}
tItem[3307261]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tItem[3307261]["Text111"] = tGoldDressChange_Text["ItemUse"]["Text111"]
tItem[3307261]["Text112"] = tGoldDressChange_Text["ItemUse"]["Text112"]
tItem[3307261]["Text116"] = tGoldDressChange_Text["ItemUse"]["Text116"]
tItem[3307261]["ChkFunc1-1"] = function()
	-- 判断消费等级，折扣
	local nItemId = Get_ItemType()
	GoldDressChange_ChkPackageText(nItemId)
	return true
end
tItem[3307261]["tOption1-1"] = {111, 112}
tItem[3307261]["Option111"] = tGoldDressChange_Text["ItemUse"]["Option111"]
tItem[3307261]["OptionFunc111"] = "GoldDressChange_UsePackageWithoutCard</N>3307261"
tItem[3307261]["Option112"] = tGoldDressChange_Text["ItemUse"]["Option112"]
tItem[3307261]["OptionFunc112"] = "GoldDressChange_UsePackageWithCard</N>3307261"

-- 玄元宝石
tItemFace[3307262] = 1288
tItem[3307262] = tItem[3307262] or {}
tItem[3307262]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tItem[3307262]["Text111"] = tGoldDressChange_Text["ItemUse"]["Text111"]
tItem[3307262]["Text112"] = tGoldDressChange_Text["ItemUse"]["Text112"]
tItem[3307262]["Text116"] = tGoldDressChange_Text["ItemUse"]["Text116"]
tItem[3307262]["ChkFunc1-1"] = function()
	-- 判断消费等级，折扣
	local nItemId = Get_ItemType()
	GoldDressChange_ChkPackageText(nItemId)
	return true
end
tItem[3307262]["tOption1-1"] = {111, 112}
tItem[3307262]["Option111"] = tGoldDressChange_Text["ItemUse"]["Option111"]
tItem[3307262]["OptionFunc111"] = "GoldDressChange_UsePackageWithoutCard</N>3307262"
tItem[3307262]["Option112"] = tGoldDressChange_Text["ItemUse"]["Option112"]
tItem[3307262]["OptionFunc112"] = "GoldDressChange_UsePackageWithCard</N>3307262"

-- 天怒地灵
tItemFace[3307263] = 1289
tItem[3307263] = tItem[3307263] or {}
tItem[3307263]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tItem[3307263]["Text111"] = tGoldDressChange_Text["ItemUse"]["Text111"]
tItem[3307263]["Text112"] = tGoldDressChange_Text["ItemUse"]["Text112"]
tItem[3307263]["Text116"] = tGoldDressChange_Text["ItemUse"]["Text116"]
tItem[3307263]["ChkFunc1-1"] = function()
	-- 判断消费等级，折扣
	local nItemId = Get_ItemType()
	GoldDressChange_ChkPackageText(nItemId)
	return true
end
tItem[3307263]["tOption1-1"] = {111, 112}
tItem[3307263]["Option111"] = tGoldDressChange_Text["ItemUse"]["Option111"]
tItem[3307263]["OptionFunc111"] = "GoldDressChange_UseRandomPackageWithoutCard</N>3307263"
tItem[3307263]["Option112"] = tGoldDressChange_Text["ItemUse"]["Option112"]
tItem[3307263]["OptionFunc112"] = "GoldDressChange_UseRandomPackageWithCard</N>3307263"

-- 优质宝石
tItemFace[3307264] = 1290
tItem[3307264] = tItem[3307264] or {}
tItem[3307264]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tItem[3307264]["Text111"] = tGoldDressChange_Text["ItemUse"]["Text111"]
tItem[3307264]["Text112"] = tGoldDressChange_Text["ItemUse"]["Text112"]
tItem[3307264]["Text116"] = tGoldDressChange_Text["ItemUse"]["Text116"]
tItem[3307264]["ChkFunc1-1"] = function()
	-- 判断消费等级，折扣
	local nItemId = Get_ItemType()
	GoldDressChange_ChkPackageText(nItemId)
	return true
end
tItem[3307264]["tOption1-1"] = {111, 112}
tItem[3307264]["Option111"] = tGoldDressChange_Text["ItemUse"]["Option111"]
tItem[3307264]["OptionFunc111"] = "GoldDressChange_UseRandomPackageWithoutCard</N>3307264"
tItem[3307264]["Option112"] = tGoldDressChange_Text["ItemUse"]["Option112"]
tItem[3307264]["OptionFunc112"] = "GoldDressChange_UseRandomPackageWithCard</N>3307264"
