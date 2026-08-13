------------------------------------------------------------------------------------
--Name：            180424[英文征服][活动脚本]制作周年庆老玩家回归活动礼包及发奖action (5.8)
--Creator:      林旭
--Created:     2018/04/24
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
-- 命名前缀
-- VeteranPlayerPackage_

--stc掩码
--177,16 是否第一次打开礼包已过30天
--177,17 今日是否已打开礼包
----------------------------------表配置部分--------------------------------------------
--log
local tVeteranPlayerPackage_Log = {}
	tVeteranPlayerPackage_Log["OverTime"] = "0,0,%d,%d,12001083,3,0,0"				--物品过期删除

--掩码
local tVeteranPlayerPackage_Stc = {}
--兴国安邦
	tVeteranPlayerPackage_Stc[3308638] = {}
	tVeteranPlayerPackage_Stc[3308638][1] = {}
	tVeteranPlayerPackage_Stc[3308638][1]["EventType"] = 177
	tVeteranPlayerPackage_Stc[3308638][1]["DataType"] = 16
	tVeteranPlayerPackage_Stc[3308638][2] = {}
	tVeteranPlayerPackage_Stc[3308638][2]["EventType"] = 177
	tVeteranPlayerPackage_Stc[3308638][2]["DataType"] = 17

local tVeteranPlayerPackage_RewardItem = {}
	-- 800天石（赠）礼包
	tVeteranPlayerPackage_RewardItem[3308625] = {}
	tVeteranPlayerPackage_RewardItem[3308625]["RewardEMoneyMono"] = {}
	tVeteranPlayerPackage_RewardItem[3308625]["RewardEMoneyMono"]["Value"] = 800
	tVeteranPlayerPackage_RewardItem[3308625]["DeleteItem"] = {}
	tVeteranPlayerPackage_RewardItem[3308625]["DeleteItem"][1] = {}
	tVeteranPlayerPackage_RewardItem[3308625]["DeleteItem"][1]["Id"] = 3308625
	tVeteranPlayerPackage_RewardItem[3308625]["Log"] = "0,0,3308625,1,12001064,2,3,800"
	tVeteranPlayerPackage_RewardItem[3308625]["RewardEffect"] = {}
	tVeteranPlayerPackage_RewardItem[3308625]["RewardEffect"]["Effect"]="angelwing"
	
	-- 135天石（赠）礼包
	tVeteranPlayerPackage_RewardItem[3308626] = {}
	tVeteranPlayerPackage_RewardItem[3308626]["RewardEMoneyMono"] = {}
	tVeteranPlayerPackage_RewardItem[3308626]["RewardEMoneyMono"]["Value"] = 135
	tVeteranPlayerPackage_RewardItem[3308626]["DeleteItem"] = {}
	tVeteranPlayerPackage_RewardItem[3308626]["DeleteItem"][1] = {}
	tVeteranPlayerPackage_RewardItem[3308626]["DeleteItem"][1]["Id"] = 3308626
	tVeteranPlayerPackage_RewardItem[3308626]["Log"] = "0,0,3308626,1,12001064,2,3,135"
	tVeteranPlayerPackage_RewardItem[3308626]["RewardEffect"] = {}
	tVeteranPlayerPackage_RewardItem[3308626]["RewardEffect"]["Effect"]="angelwing"
	
	-- 270天石（赠）礼包
	tVeteranPlayerPackage_RewardItem[3308627] = {}
	tVeteranPlayerPackage_RewardItem[3308627]["RewardEMoneyMono"] = {}
	tVeteranPlayerPackage_RewardItem[3308627]["RewardEMoneyMono"]["Value"] = 270
	tVeteranPlayerPackage_RewardItem[3308627]["DeleteItem"] = {}
	tVeteranPlayerPackage_RewardItem[3308627]["DeleteItem"][1] = {}
	tVeteranPlayerPackage_RewardItem[3308627]["DeleteItem"][1]["Id"] = 3308627
	tVeteranPlayerPackage_RewardItem[3308627]["Log"] = "0,0,3308627,1,12001064,2,3,270"
	tVeteranPlayerPackage_RewardItem[3308627]["RewardEffect"] = {}
	tVeteranPlayerPackage_RewardItem[3308627]["RewardEffect"]["Effect"]="angelwing"
	
	-- 1380天石（赠）礼包
	tVeteranPlayerPackage_RewardItem[3308628] = {}
	tVeteranPlayerPackage_RewardItem[3308628]["RewardEMoneyMono"] = {}
	tVeteranPlayerPackage_RewardItem[3308628]["RewardEMoneyMono"]["Value"] = 1380
	tVeteranPlayerPackage_RewardItem[3308628]["DeleteItem"] = {}
	tVeteranPlayerPackage_RewardItem[3308628]["DeleteItem"][1] = {}
	tVeteranPlayerPackage_RewardItem[3308628]["DeleteItem"][1]["Id"] = 3308628
	tVeteranPlayerPackage_RewardItem[3308628]["Log"] = "0,0,3308628,1,12001064,2,3,1380"
	tVeteranPlayerPackage_RewardItem[3308628]["RewardEffect"] = {}
	tVeteranPlayerPackage_RewardItem[3308628]["RewardEffect"]["Effect"]="angelwing"
	
	
	-- 2760天石（赠）礼包
	tVeteranPlayerPackage_RewardItem[3308629] = {}
	tVeteranPlayerPackage_RewardItem[3308629]["RewardEMoneyMono"] = {}
	tVeteranPlayerPackage_RewardItem[3308629]["RewardEMoneyMono"]["Value"] = 2760
	tVeteranPlayerPackage_RewardItem[3308629]["DeleteItem"] = {}
	tVeteranPlayerPackage_RewardItem[3308629]["DeleteItem"][1] = {}
	tVeteranPlayerPackage_RewardItem[3308629]["DeleteItem"][1]["Id"] = 3308629
	tVeteranPlayerPackage_RewardItem[3308629]["Log"] = "0,0,3308629,1,12001064,2,3,2760"
	tVeteranPlayerPackage_RewardItem[3308629]["RewardEffect"] = {}
	tVeteranPlayerPackage_RewardItem[3308629]["RewardEffect"]["Effect"]="angelwing"
	
	-- 英杰招募冠军礼盒
	tVeteranPlayerPackage_RewardItem[3308630] = {}
	tVeteranPlayerPackage_RewardItem[3308630]["RewardItem"] = {}
	-- 270赠品天石
	tVeteranPlayerPackage_RewardItem[3308630]["RewardItem"][1] = {}
	tVeteranPlayerPackage_RewardItem[3308630]["RewardItem"][1]["Id"] = 3308627
	tVeteranPlayerPackage_RewardItem[3308630]["RewardItem"][1]["Attr"] = "0 1"
	-- 晶莹星陨石
	tVeteranPlayerPackage_RewardItem[3308630]["RewardItem"][2] = {}
	tVeteranPlayerPackage_RewardItem[3308630]["RewardItem"][2]["Id"] = 3009002
	tVeteranPlayerPackage_RewardItem[3308630]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	-- 1000点气力值
	tVeteranPlayerPackage_RewardItem[3308630]["RewardItem"][3] = {}
	tVeteranPlayerPackage_RewardItem[3308630]["RewardItem"][3]["Id"] = 3004580
	tVeteranPlayerPackage_RewardItem[3308630]["RewardItem"][3]["Attr"] = "0 1"
	tVeteranPlayerPackage_RewardItem[3308630]["DeleteItem"] = {}
	tVeteranPlayerPackage_RewardItem[3308630]["DeleteItem"][1] = {}
	tVeteranPlayerPackage_RewardItem[3308630]["DeleteItem"][1]["Id"] = 3308630
	tVeteranPlayerPackage_RewardItem[3308630]["LogId"] = 12001064
	tVeteranPlayerPackage_RewardItem[3308630]["RewardEffect"] = {}
	tVeteranPlayerPackage_RewardItem[3308630]["RewardEffect"]["Effect"]="angelwing"
	
	
	-- 英杰招募冠军礼盒
	tVeteranPlayerPackage_RewardItem[3308630] = {}
	tVeteranPlayerPackage_RewardItem[3308630]["RewardItem"] = {}
	-- 270赠品天石
	tVeteranPlayerPackage_RewardItem[3308630]["RewardItem"][1] = {}
	tVeteranPlayerPackage_RewardItem[3308630]["RewardItem"][1]["Id"] = 3308627
	tVeteranPlayerPackage_RewardItem[3308630]["RewardItem"][1]["Attr"] = "0 1"
	-- 晶莹星陨石
	tVeteranPlayerPackage_RewardItem[3308630]["RewardItem"][2] = {}
	tVeteranPlayerPackage_RewardItem[3308630]["RewardItem"][2]["Id"] = 3009002
	tVeteranPlayerPackage_RewardItem[3308630]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	-- 1000点气力值
	tVeteranPlayerPackage_RewardItem[3308630]["RewardItem"][3] = {}
	tVeteranPlayerPackage_RewardItem[3308630]["RewardItem"][3]["Id"] = 3004580
	tVeteranPlayerPackage_RewardItem[3308630]["RewardItem"][3]["Attr"] = "0 1"
	tVeteranPlayerPackage_RewardItem[3308630]["DeleteItem"] = {}
	tVeteranPlayerPackage_RewardItem[3308630]["DeleteItem"][1] = {}
	tVeteranPlayerPackage_RewardItem[3308630]["DeleteItem"][1]["Id"] = 3308630
	tVeteranPlayerPackage_RewardItem[3308630]["LogId"] = 12001064
	tVeteranPlayerPackage_RewardItem[3308630]["RewardEffect"] = {}
	tVeteranPlayerPackage_RewardItem[3308630]["RewardEffect"]["Effect"]="angelwing"
	
	-- 英杰招募亚军礼盒
	tVeteranPlayerPackage_RewardItem[3308631] = {}
	tVeteranPlayerPackage_RewardItem[3308631]["RewardItem"] = {}
	-- 135赠品天石
	tVeteranPlayerPackage_RewardItem[3308631]["RewardItem"][1] = {}
	tVeteranPlayerPackage_RewardItem[3308631]["RewardItem"][1]["Id"] = 3308626
	tVeteranPlayerPackage_RewardItem[3308631]["RewardItem"][1]["Attr"] = "0 1"
	-- 明亮星陨石
	tVeteranPlayerPackage_RewardItem[3308631]["RewardItem"][2] = {}
	tVeteranPlayerPackage_RewardItem[3308631]["RewardItem"][2]["Id"] = 3009001
	tVeteranPlayerPackage_RewardItem[3308631]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	-- 500点气力值
	tVeteranPlayerPackage_RewardItem[3308631]["RewardItem"][3] = {}
	tVeteranPlayerPackage_RewardItem[3308631]["RewardItem"][3]["Id"] = 3304196
	tVeteranPlayerPackage_RewardItem[3308631]["RewardItem"][3]["Attr"] = "0 1"
	tVeteranPlayerPackage_RewardItem[3308631]["DeleteItem"] = {}
	tVeteranPlayerPackage_RewardItem[3308631]["DeleteItem"][1] = {}
	tVeteranPlayerPackage_RewardItem[3308631]["DeleteItem"][1]["Id"] = 3308631
	tVeteranPlayerPackage_RewardItem[3308631]["LogId"] = 12001064
	tVeteranPlayerPackage_RewardItem[3308631]["RewardEffect"] = {}
	tVeteranPlayerPackage_RewardItem[3308631]["RewardEffect"]["Effect"]="angelwing"
	
	-- 英杰招募季军礼盒
	tVeteranPlayerPackage_RewardItem[3308632] = {}
	tVeteranPlayerPackage_RewardItem[3308632]["RewardItem"] = {}
	-- 明亮星陨石
	tVeteranPlayerPackage_RewardItem[3308632]["RewardItem"][1] = {}
	tVeteranPlayerPackage_RewardItem[3308632]["RewardItem"][1]["Id"] = 3009001
	tVeteranPlayerPackage_RewardItem[3308632]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	-- 500点气力值
	tVeteranPlayerPackage_RewardItem[3308632]["RewardItem"][2] = {}
	tVeteranPlayerPackage_RewardItem[3308632]["RewardItem"][2]["Id"] = 3304196
	tVeteranPlayerPackage_RewardItem[3308632]["RewardItem"][2]["Attr"] = "0 1"
	tVeteranPlayerPackage_RewardItem[3308632]["DeleteItem"] = {}
	tVeteranPlayerPackage_RewardItem[3308632]["DeleteItem"][1] = {}
	tVeteranPlayerPackage_RewardItem[3308632]["DeleteItem"][1]["Id"] = 3308632
	tVeteranPlayerPackage_RewardItem[3308632]["LogId"] = 12001064
	tVeteranPlayerPackage_RewardItem[3308632]["RewardEffect"] = {}
	tVeteranPlayerPackage_RewardItem[3308632]["RewardEffect"]["Effect"]="angelwing"
	
	-- 豪侠招募冠军礼盒
	tVeteranPlayerPackage_RewardItem[3308633] = {}
	tVeteranPlayerPackage_RewardItem[3308633]["RewardItem"] = {}
	-- 2760赠品天石
	tVeteranPlayerPackage_RewardItem[3308633]["RewardItem"][1] = {}
	tVeteranPlayerPackage_RewardItem[3308633]["RewardItem"][1]["Id"] = 3308629
	tVeteranPlayerPackage_RewardItem[3308633]["RewardItem"][1]["Attr"] = "0 1"
	-- 璀璨星陨石
	tVeteranPlayerPackage_RewardItem[3308633]["RewardItem"][2] = {}
	tVeteranPlayerPackage_RewardItem[3308633]["RewardItem"][2]["Id"] = 3009003
	tVeteranPlayerPackage_RewardItem[3308633]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	-- 30天屠龙武器外套*2
	tVeteranPlayerPackage_RewardItem[3308633]["RewardItem"][3] = {}
	tVeteranPlayerPackage_RewardItem[3308633]["RewardItem"][3]["Id"] = 3300040
	tVeteranPlayerPackage_RewardItem[3308633]["RewardItem"][3]["Attr"] = "0 2"
	tVeteranPlayerPackage_RewardItem[3308633]["DeleteItem"] = {}
	tVeteranPlayerPackage_RewardItem[3308633]["DeleteItem"][1] = {}
	tVeteranPlayerPackage_RewardItem[3308633]["DeleteItem"][1]["Id"] = 3308633
	tVeteranPlayerPackage_RewardItem[3308633]["LogId"] = 12001064
	tVeteranPlayerPackage_RewardItem[3308633]["RewardEffect"] = {}
	tVeteranPlayerPackage_RewardItem[3308633]["RewardEffect"]["Effect"]="angelwing"
	
	-- 豪侠招募亚军礼盒
	tVeteranPlayerPackage_RewardItem[3308634] = {}
	tVeteranPlayerPackage_RewardItem[3308634]["RewardItem"] = {}
	-- 1380赠品天石
	tVeteranPlayerPackage_RewardItem[3308634]["RewardItem"][1] = {}
	tVeteranPlayerPackage_RewardItem[3308634]["RewardItem"][1]["Id"] = 3308628
	tVeteranPlayerPackage_RewardItem[3308634]["RewardItem"][1]["Attr"] = "0 1"
	-- 15天屠龙武器外套*2
	tVeteranPlayerPackage_RewardItem[3308634]["RewardItem"][2] = {}
	tVeteranPlayerPackage_RewardItem[3308634]["RewardItem"][2]["Id"] = 3300039
	tVeteranPlayerPackage_RewardItem[3308634]["RewardItem"][2]["Attr"] = "0 2"
	tVeteranPlayerPackage_RewardItem[3308634]["DeleteItem"] = {}
	tVeteranPlayerPackage_RewardItem[3308634]["DeleteItem"][1] = {}
	tVeteranPlayerPackage_RewardItem[3308634]["DeleteItem"][1]["Id"] = 3308634
	tVeteranPlayerPackage_RewardItem[3308634]["LogId"] = 12001064
	tVeteranPlayerPackage_RewardItem[3308634]["RewardEffect"] = {}
	tVeteranPlayerPackage_RewardItem[3308634]["RewardEffect"]["Effect"]="angelwing"
	
	-- 豪侠招募季军礼盒
	tVeteranPlayerPackage_RewardItem[3308635] = {}
	tVeteranPlayerPackage_RewardItem[3308635]["RewardItem"] = {}
	-- 270赠品天石
	tVeteranPlayerPackage_RewardItem[3308635]["RewardItem"][1] = {}
	tVeteranPlayerPackage_RewardItem[3308635]["RewardItem"][1]["Id"] = 3308627
	tVeteranPlayerPackage_RewardItem[3308635]["RewardItem"][1]["Attr"] = "0 1"
	-- 15天屠龙武器外套*2
	tVeteranPlayerPackage_RewardItem[3308635]["RewardItem"][2] = {}
	tVeteranPlayerPackage_RewardItem[3308635]["RewardItem"][2]["Id"] = 3300039
	tVeteranPlayerPackage_RewardItem[3308635]["RewardItem"][2]["Attr"] = "0 2"
	tVeteranPlayerPackage_RewardItem[3308635]["DeleteItem"] = {}
	tVeteranPlayerPackage_RewardItem[3308635]["DeleteItem"][1] = {}
	tVeteranPlayerPackage_RewardItem[3308635]["DeleteItem"][1]["Id"] = 3308635
	tVeteranPlayerPackage_RewardItem[3308635]["LogId"] = 12001064
	tVeteranPlayerPackage_RewardItem[3308635]["RewardEffect"] = {}
	tVeteranPlayerPackage_RewardItem[3308635]["RewardEffect"]["Effect"]="angelwing"
	
	-- 勇者归来御神礼盒
	tVeteranPlayerPackage_RewardItem[3308636] = {}
	tVeteranPlayerPackage_RewardItem[3308636]["RewardItem"] = {}
	-- 3000点气力值
	tVeteranPlayerPackage_RewardItem[3308636]["RewardItem"][1] = {}
	tVeteranPlayerPackage_RewardItem[3308636]["RewardItem"][1]["Id"] = 3200348
	tVeteranPlayerPackage_RewardItem[3308636]["RewardItem"][1]["Attr"] = "0 1"
	-- 秘制免费修炼丹*10
	tVeteranPlayerPackage_RewardItem[3308636]["RewardItem"][2] = {}
	tVeteranPlayerPackage_RewardItem[3308636]["RewardItem"][2]["Id"] = 3002926
	tVeteranPlayerPackage_RewardItem[3308636]["RewardItem"][2]["Attr"] = "0 10"
	-- 究极通神丹*10
	tVeteranPlayerPackage_RewardItem[3308636]["RewardItem"][3] = {}
	tVeteranPlayerPackage_RewardItem[3308636]["RewardItem"][3]["Id"] = 3003126
	tVeteranPlayerPackage_RewardItem[3308636]["RewardItem"][3]["Attr"] = "0 10 3"
	-- 晶莹星陨石*5
	tVeteranPlayerPackage_RewardItem[3308636]["RewardItem"][4] = {}
	tVeteranPlayerPackage_RewardItem[3308636]["RewardItem"][4]["Id"] = 3300246
	tVeteranPlayerPackage_RewardItem[3308636]["RewardItem"][4]["Attr"] = "0 1 0 2880 1"
	-- 万能神纹精粹*100
	tVeteranPlayerPackage_RewardItem[3308636]["RewardItem"][5] = {}
	tVeteranPlayerPackage_RewardItem[3308636]["RewardItem"][5]["Id"] = 4060001
	tVeteranPlayerPackage_RewardItem[3308636]["RewardItem"][5]["Attr"] = "0 100 3"
	-- 30天时效3星LaaCatrobe
	tVeteranPlayerPackage_RewardItem[3308636]["RewardItem"][6] = {}
	tVeteranPlayerPackage_RewardItem[3308636]["RewardItem"][6]["Id"] = 193535
	tVeteranPlayerPackage_RewardItem[3308636]["RewardItem"][6]["Attr"] = "0 1 3 43200 1 0 0 1"
	tVeteranPlayerPackage_RewardItem[3308636]["DeleteItem"] = {}
	tVeteranPlayerPackage_RewardItem[3308636]["DeleteItem"][1] = {}
	tVeteranPlayerPackage_RewardItem[3308636]["DeleteItem"][1]["Id"] = 3308636
	tVeteranPlayerPackage_RewardItem[3308636]["LogId"] = 12001064
	tVeteranPlayerPackage_RewardItem[3308636]["RewardEffect"] = {}
	tVeteranPlayerPackage_RewardItem[3308636]["RewardEffect"]["Effect"]="angelwing"
	
	-- 涅槃新生礼盒
	tVeteranPlayerPackage_RewardItem[3308637] = {}
	tVeteranPlayerPackage_RewardItem[3308637]["RewardItem"] = {}
	-- 3000点气力值
	tVeteranPlayerPackage_RewardItem[3308637]["RewardItem"][1] = {}
	tVeteranPlayerPackage_RewardItem[3308637]["RewardItem"][1]["Id"] = 3200348
	tVeteranPlayerPackage_RewardItem[3308637]["RewardItem"][1]["Attr"] = "0 1"
	-- 秘制免费修炼丹*10
	tVeteranPlayerPackage_RewardItem[3308637]["RewardItem"][2] = {}
	tVeteranPlayerPackage_RewardItem[3308637]["RewardItem"][2]["Id"] = 3002926
	tVeteranPlayerPackage_RewardItem[3308637]["RewardItem"][2]["Attr"] = "0 10"
	-- 究极通神丹*10
	tVeteranPlayerPackage_RewardItem[3308637]["RewardItem"][3] = {}
	tVeteranPlayerPackage_RewardItem[3308637]["RewardItem"][3]["Id"] = 3003126
	tVeteranPlayerPackage_RewardItem[3308637]["RewardItem"][3]["Attr"] = "0 10 3"
	-- 晶莹星陨石*1
	tVeteranPlayerPackage_RewardItem[3308637]["RewardItem"][4] = {}
	tVeteranPlayerPackage_RewardItem[3308637]["RewardItem"][4]["Id"] = 3009002
	tVeteranPlayerPackage_RewardItem[3308637]["RewardItem"][4]["Attr"] = "0 1 0 2880 1"
	-- 护心丹*10
	tVeteranPlayerPackage_RewardItem[3308637]["RewardItem"][5] = {}
	tVeteranPlayerPackage_RewardItem[3308637]["RewardItem"][5]["Id"] = 3301817
	tVeteranPlayerPackage_RewardItem[3308637]["RewardItem"][5]["Attr"] = "0 1"
	-- 10道真气
	tVeteranPlayerPackage_RewardItem[3308637]["RewardItem"][6] = {}
	tVeteranPlayerPackage_RewardItem[3308637]["RewardItem"][6]["Id"] = 3007386
	tVeteranPlayerPackage_RewardItem[3308637]["RewardItem"][6]["Attr"] = "0 1"
	-- 30天时效3星AngelicRobe
	tVeteranPlayerPackage_RewardItem[3308637]["RewardItem"][7] = {}
	tVeteranPlayerPackage_RewardItem[3308637]["RewardItem"][7]["Id"] = 194375
	tVeteranPlayerPackage_RewardItem[3308637]["RewardItem"][7]["Attr"] = "0 1 3 43200 1 0 0 1"
	tVeteranPlayerPackage_RewardItem[3308637]["DeleteItem"] = {}
	tVeteranPlayerPackage_RewardItem[3308637]["DeleteItem"][1] = {}
	tVeteranPlayerPackage_RewardItem[3308637]["DeleteItem"][1]["Id"] = 3308637
	tVeteranPlayerPackage_RewardItem[3308637]["LogId"] = 12001064
	tVeteranPlayerPackage_RewardItem[3308637]["RewardEffect"] = {}
	tVeteranPlayerPackage_RewardItem[3308637]["RewardEffect"]["Effect"]="angelwing"
	
	-- 15周年老玩家回归礼包
	tVeteranPlayerPackage_RewardItem[3308638] = {}
	tVeteranPlayerPackage_RewardItem[3308638]["RewardItem"] = {}
	-- 100赠品天石
	tVeteranPlayerPackage_RewardItem[3308638]["RewardItem"][1] = {}
	tVeteranPlayerPackage_RewardItem[3308638]["RewardItem"][1]["Id"] = 3304213
	tVeteranPlayerPackage_RewardItem[3308638]["RewardItem"][1]["Attr"] = "0 1"
	-- 万能神纹精粹*10
	tVeteranPlayerPackage_RewardItem[3308638]["RewardItem"][2] = {}
	tVeteranPlayerPackage_RewardItem[3308638]["RewardItem"][2]["Id"] = 4060001
	tVeteranPlayerPackage_RewardItem[3308638]["RewardItem"][2]["Attr"] = "0 10 3"
	-- 赠龙珠
	tVeteranPlayerPackage_RewardItem[3308638]["RewardItem"][3] = {}
	tVeteranPlayerPackage_RewardItem[3308638]["RewardItem"][3]["Id"] = 3301808
	tVeteranPlayerPackage_RewardItem[3308638]["RewardItem"][3]["Attr"] = "0 1"
	-- 明亮星陨石
	tVeteranPlayerPackage_RewardItem[3308638]["RewardItem"][4] = {}
	tVeteranPlayerPackage_RewardItem[3308638]["RewardItem"][4]["Id"] = 3009001
	tVeteranPlayerPackage_RewardItem[3308638]["RewardItem"][4]["Attr"] = "0 1 0 2880 1"
	-- 赠赤炼石+3*1
	tVeteranPlayerPackage_RewardItem[3308638]["RewardItem"][5] = {}
	tVeteranPlayerPackage_RewardItem[3308638]["RewardItem"][5]["Id"] = 3301408
	tVeteranPlayerPackage_RewardItem[3308638]["RewardItem"][5]["Attr"] = "0 1"
	-- 赠回气丹*2
	tVeteranPlayerPackage_RewardItem[3308638]["RewardItem"][6] = {}
	tVeteranPlayerPackage_RewardItem[3308638]["RewardItem"][6]["Id"] = 3307016
	tVeteranPlayerPackage_RewardItem[3308638]["RewardItem"][6]["Attr"] = "0 1"
	-- 赠秘制免费强炼丹
	tVeteranPlayerPackage_RewardItem[3308638]["RewardItem"][7] = {}
	tVeteranPlayerPackage_RewardItem[3308638]["RewardItem"][7]["Id"] = 3307517
	tVeteranPlayerPackage_RewardItem[3308638]["RewardItem"][7]["Attr"] = "0 1 3"
	tVeteranPlayerPackage_RewardItem[3308638]["LogId"] = 12001064
	tVeteranPlayerPackage_RewardItem[3308638]["RewardEffect"] = {}
	tVeteranPlayerPackage_RewardItem[3308638]["RewardEffect"]["Effect"]="angelwing"
----------------------------------逻辑部分---------------------------------------------
--掩码判断隔天清空
function VeteranPlayerPackage_Reset(nItemId)
	local nEvent = tVeteranPlayerPackage_Stc[nItemId][2]["EventType"]
	local nType = tVeteranPlayerPackage_Stc[nItemId][2]["DataType"]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
end

function VeteranPlayerPackage_UseItem(nItemId)
	local nDelEvent = tVeteranPlayerPackage_Stc[nItemId][1]["EventType"]
	local nDelType = tVeteranPlayerPackage_Stc[nItemId][1]["DataType"]
	-- 第一次使用
	if not Task_ChkStatistic(nDelEvent,nDelType,nUserId) then
		Task_SetStatistic(nDelEvent,nDelType,1,1)
		Task_SetStcTimestamp(nDelEvent,nDelType,0)
	end
	-- 第一次打开礼包三十天后使用
	if Task_StcInterval(nDelEvent,nDelType,30,4) then
		local nItemIdNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Sys_MsgBox(tVeteranPlayerPackage_Text["OverTime"])
			local sLog = string.format(tVeteranPlayerPackage_Log["OverTime"],nItemId,nItemIdNum)
			Sys_SaveActionFestivalLog(sLog)
		end
		return
	end
	local nEvent = tVeteranPlayerPackage_Stc[nItemId][2]["EventType"]
	local nType = tVeteranPlayerPackage_Stc[nItemId][2]["DataType"]
	local nSpace = RewardTemplate_GetRewardSpace(tVeteranPlayerPackage_RewardItem[nItemId])
	-- 礼盒掩码判断隔天清空
	VeteranPlayerPackage_Reset(nItemId)
	-- 检查今天是否已经使用过
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		Sys_MsgBox(tVeteranPlayerPackage_Text["Used"])
		return
	end
	-- 判断背包空间
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		return 
	else
	-- 每日使用
	Task_SetStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	RewardTemplate_UseItemAndMsg(tVeteranPlayerPackage_RewardItem[nItemId])
	end
end









---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3308625] = tItem[3308625] or {}
tItem[3308625]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tVeteranPlayerPackage_RewardItem[nItemId])
end
tItem[3308626] = tItem[3308625]
tItem[3308627] = tItem[3308625]
tItem[3308628] = tItem[3308625]
tItem[3308629] = tItem[3308625]
tItem[3308630] = tItem[3308625]
tItem[3308631] = tItem[3308625]
tItem[3308632] = tItem[3308625]
tItem[3308633] = tItem[3308625]
tItem[3308634] = tItem[3308625]
tItem[3308635] = tItem[3308625]
tItem[3308636] = tItem[3308625]
tItem[3308637] = tItem[3308625]
tItem[3308638] = tItem[3308638] or {}
tItem[3308638]["Function"] = function(nItemId,sItemName)
	VeteranPlayerPackage_UseItem(nItemId)
end