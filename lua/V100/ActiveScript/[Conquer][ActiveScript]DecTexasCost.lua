------------------------------------------------------------------------------------
--Name:		191118[英文征服][活动脚本]12月德州消费活动（12.12-1.8）
--Creator: 	杨艳
--Created:	2019/11/18
------------------------------------------------------------------------------------


--命名前缀
--DecTexasCost_


--logid： 12001746

--npc

--物品

-- stc掩码说明
-- 209 94 记录 10万锦标赛门票 限量次数 		2
-- 209 95 记录 10万锦标赛增购卷 限量次数 	4
-- 209 96 记录 10万锦标赛重购卷 限量次数 	12
-- 209 97 记录  背包信掩码

-------------------------------------------数据部分-----------------------------------------
local tDecTexasCost_Data = {}
	-- 门票价格
	tDecTexasCost_Data["Price"] = {}
	tDecTexasCost_Data["Price"][3307119] = 50000
	tDecTexasCost_Data["Price"][3307939] = 60000
	tDecTexasCost_Data["Price"][3307940] = 70000

local tDecTexasCost_Log = {}
	tDecTexasCost_Log["Money"] = "0,0,1,%d,12001746,3,%d,1"


local tDecTexasCost_Stc = {}

	tDecTexasCost_Stc[3307119] = {}
	tDecTexasCost_Stc[3307119]["EventType"] = 209
	tDecTexasCost_Stc[3307119]["DataType"] = 94
	tDecTexasCost_Stc[3307119]["Limit"] = 2
	
	tDecTexasCost_Stc[3307939] = {}
	tDecTexasCost_Stc[3307939]["EventType"] = 209
	tDecTexasCost_Stc[3307939]["DataType"] = 95
	tDecTexasCost_Stc[3307939]["Limit"] = 4
	
	tDecTexasCost_Stc[3307940] = {}
	tDecTexasCost_Stc[3307940]["EventType"] = 209
	tDecTexasCost_Stc[3307940]["DataType"] = 96
	tDecTexasCost_Stc[3307940]["Limit"] = 12



local tDecTexasCost_Award = {}
	-- ===10万锦标赛门票
	-- ===索引:tDecTexasCost_Award[3307119]
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 10000,195
	tDecTexasCost_Award[3307119] = {}
	tDecTexasCost_Award[3307119]["LogId"] = 12001746
	-- tDecTexasCost_Award[3307119]["LogStep"] = "2[1]"
	tDecTexasCost_Award[3307119]["EmoneyLog"] = "1000	01290	0	0	1	"
	tDecTexasCost_Award[3307119]["RewardItem"] = {}
	tDecTexasCost_Award[3307119]["RewardItem"][1] = {}
	tDecTexasCost_Award[3307119]["RewardItem"][1]["Id"] = 3307119 -- 100KTicket[3307119][属性:9][叠加:0][金币:0], 【表格】10万锦标赛门票
	tDecTexasCost_Award[3307119]["RewardItem"][1]["Attr"] = "0 1" -- 100KTicket*1
	tDecTexasCost_Award[3307119]["RewardEffect"] = {}
	tDecTexasCost_Award[3307119]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecTexasCost_Award[3307119]["RewardEffect"]["Effect"] = "angelwing"


	tDecTexasCost_Award[3307939] = {}
	-- ===10万锦标赛增购卷
	-- ===索引: tDecTexasCost_Award[3307939]
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 10000,194
	tDecTexasCost_Award[3307939]["LogId"] = 12001746
	-- tDecTexasCost_Award[3307939]["LogStep"] = "2[1]"
	tDecTexasCost_Award[3307939]["EmoneyLog"] = "1000	01291	0	0	1	"
	tDecTexasCost_Award[3307939]["RewardItem"] = {}
	tDecTexasCost_Award[3307939]["RewardItem"][1] = {}
	tDecTexasCost_Award[3307939]["RewardItem"][1]["Id"] = 3307939 -- EasyWin(100K)Add-onTicket[3307939][属性:9][叠加:1][金币:0], 【表格】10万锦标赛增购卷
	tDecTexasCost_Award[3307939]["RewardItem"][1]["Attr"] = "0 1" -- EasyWin(100K)Add-onTicket*1
	tDecTexasCost_Award[3307939]["RewardEffect"] = {}
	tDecTexasCost_Award[3307939]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecTexasCost_Award[3307939]["RewardEffect"]["Effect"] = "angelwing"


	tDecTexasCost_Award[3307940] = {}
	-- ===10万锦标赛重购卷
	-- ===索引: tDecTexasCost_Award[3307940]
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 10000,194
	tDecTexasCost_Award[3307940]["LogId"] = 12001746
	-- tDecTexasCost_Award[3307940]["LogStep"] = "2[1]"
	tDecTexasCost_Award[3307940]["EmoneyLog"] = "1000	01292	0	0	1	"
	tDecTexasCost_Award[3307940]["RewardItem"] = {}
	tDecTexasCost_Award[3307940]["RewardItem"][1] = {}
	tDecTexasCost_Award[3307940]["RewardItem"][1]["Id"] = 3307940 -- EasyWin(100K)RebuyTicket[3307940][属性:9][叠加:1][金币:0], 【表格】10万锦标赛重购卷
	tDecTexasCost_Award[3307940]["RewardItem"][1]["Attr"] = "0 1" -- EasyWin(100K)RebuyTicket*1
	tDecTexasCost_Award[3307940]["RewardEffect"] = {}
	tDecTexasCost_Award[3307940]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecTexasCost_Award[3307940]["RewardEffect"]["Effect"] = "angelwing"



---------------------------------逻辑部分---------------------------------------------

function DecTexasCost_BuyTikets(nItemId,nNpcId,sOption)
	if not Sys_ChkFullTime(tActivityTime["DecTexasCost"]["ActTime"])  then 
		return
	end 
	local nPrice = tDecTexasCost_Data["Price"][nItemId]
	local nLimitNum = tDecTexasCost_Stc[nItemId]["Limit"]

	Sys_DialogFace(nNpcId)
	Sys_DialogText(string.format(tDecTexasCost_Text["Str"]["Text111"],sOption))
	Sys_DialogText(string.format(tDecTexasCost_Text["Str"]["Text112"],nPrice))
	Sys_DialogText(string.format(tDecTexasCost_Text["Str"]["Text113"],nLimitNum))

	Sys_DialogOption(string.format(tDecTexasCost_Text["Str"]["Option111"],nPrice),"</F>DecTexasCost_SecondBuy</N>"..nPrice.."</S>"..sOption.."</N>"..nNpcId.."</N>"..nItemId)

	Sys_DialogOption(tDecTexasCost_Text["Str"]["Option112"],"</F>NULL")
	Sys_DialogEnd()
	

end 


function DecTexasCost_SecondBuy(nPrice,sOption,nNpcId,nItemId)

	if not Sys_ChkFullTime(tActivityTime["DecTexasCost"]["ActTime"])  then 
		return
	end 
	Sys_DialogFace(nNpcId)
	Sys_DialogText(string.format(tDecTexasCost_Text["Str"]["Text121"],nPrice,sOption))

	Sys_DialogOption(tDecTexasCost_Text["Str"]["Option121"],"</F>DecTexasCost_SureBuy</N>"..nPrice.."</N>"..nItemId)
    Sys_DialogOption(tDecTexasCost_Text["Str"]["Option122"],"</F>NULL")
	Sys_DialogEnd()


end 


function DecTexasCost_SureBuy(nPrice,nItemId)

	if not Sys_ChkFullTime(tActivityTime["DecTexasCost"]["ActTime"])  then 
		return
	end 
	
	local nEvent = tDecTexasCost_Stc[nItemId]["EventType"]
	local nData = tDecTexasCost_Stc[nItemId]["DataType"]
		
	-- 判断是否隔天
	if Task_StcInterval(nEvent,nData,1,4,nUserId) then
		Task_SetStatistic(nEvent,nData,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nData,0,nUserId)
	end
	
	local nValue = Get_UserStatisticValue(nEvent,nData) 
	if nValue >= tDecTexasCost_Stc[nItemId]["Limit"] then 
		Sys_MsgBox(tDecTexasCost_Text["Sys"]["Limit"])
		return
	end 
	
	--判断金币是否充足
	if not User_CanPutMoney2Bag(-nPrice) then
		Sys_MsgBox(tDecTexasCost_Text["Sys"]["NoMoney"])
		return 
	end
	
	--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tDecTexasCost_Award[nItemId])

	if not User_CheckLeftSpace(nGetRewardSpace) then
		Sys_MsgBox(tDecTexasCost_Text["Sys"]["NoSpace"])
		return 
	end
	
	if User_AddMoney(-nPrice) then
		local sLog = string.format(tDecTexasCost_Log["Money"],nPrice,nItemId)
		Sys_SaveActionFestivalLog(sLog)
		Task_AddStatistic(nEvent,nData,1,1)
		Task_SetStcTimestamp(nEvent,nData,0)
		RewardTemplate_UseItemAndMsg(tDecTexasCost_Award[nItemId])	
	end 

end 


-------------------------- npc部分--------------------------------------------------------------------------------
-- 25618,'德州大使' 
tNpcFace[5778] = 112

tNpcGossip[25618] = tNpcGossip[25618] or DefaultNpc:new{}
tNpcGossip[25618]["OptionHidden"] = 1
tNpcGossip[25618]["DialogueText"] = tDecTexasCost_Text[25618]

tNpcGossip[25618]["Text1-1"] = {111,112}
tNpcGossip[25618]["Text111"] = tDecTexasCost_Text[25618]["Text111"]
tNpcGossip[25618]["Text112"] = tDecTexasCost_Text[25618]["Text112"]

tNpcGossip[25618]["tOption1-1"] = {111}
tNpcGossip[25618]["ChkFunc1-1"] = function()
	
	
	return CommonFunc_GetBeforeActivityTime(tActivityTime["DecTexasCost"]["ActTime"])
end
tNpcGossip[25618]["Option111"] = tDecTexasCost_Text[25618]["Option111"]


tNpcGossip[25618]["Text1-2"] = {121}
tNpcGossip[25618]["Text121"] = tDecTexasCost_Text[25618]["Text121"]

tNpcGossip[25618]["tOption1-2"] = {121}
tNpcGossip[25618]["ChkFunc1-2"] = function()
	
	
	return not Sys_ChkFullTime(tActivityTime["DecTexasCost"]["ActTime"])  
end	
	
tNpcGossip[25618]["Option121"] = tDecTexasCost_Text[25618]["Option121"]


tNpcGossip[25618]["Text1-3"] = {131,132}
tNpcGossip[25618]["Text131"] = tDecTexasCost_Text[25618]["Text131"]
tNpcGossip[25618]["Text132"] = tDecTexasCost_Text[25618]["Text132"]


tNpcGossip[25618]["tOption1-3"] = {132,133,134}
tNpcGossip[25618]["ChkFunc1-3"] = function()
	
	
	return Sys_ChkFullTime(tActivityTime["DecTexasCost"]["ActTime"])  
end
-- tNpcGossip[25618]["Option131"] = tDecTexasCost_Text[25618]["Option131"]
tNpcGossip[25618]["Option132"] = tDecTexasCost_Text[25618]["Option132"]
tNpcGossip[25618]["Option133"] = tDecTexasCost_Text[25618]["Option133"]
tNpcGossip[25618]["Option134"] = tDecTexasCost_Text[25618]["Option134"]


-- tNpcGossip[25618]["OptionFunc131"] = "DecTexasCost_BuyTikets</N>4</N>25618</S>"..tDecTexasCost_Text[25618]["Option132"]


tNpcGossip[25618]["OptionFunc132"] = "DecTexasCost_BuyTikets</N>3307119</N>25618</S>"..tDecTexasCost_Text[25618]["Option132"]
tNpcGossip[25618]["OptionFunc133"] = "DecTexasCost_BuyTikets</N>3307939</N>25618</S>"..tDecTexasCost_Text[25618]["Option133"]
tNpcGossip[25618]["OptionFunc134"] = "DecTexasCost_BuyTikets</N>3307940</N>25618</S>"..tDecTexasCost_Text[25618]["Option134"]

tNpcGossip[25748] = tNpcGossip[25618] or DefaultNpc:new{}



