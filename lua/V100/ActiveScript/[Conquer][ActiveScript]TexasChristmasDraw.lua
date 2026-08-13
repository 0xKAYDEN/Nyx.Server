------------------------------------------------------------------------------------
--Name：            171211[英文征服][活动脚本]德州圣诞抽奖NPC及道具制作
--Creator:      杨艳
--Created:     2017/12/11
------------------------------------------------------------------------------------
--任务需求
-- 1、点击NPC，选择花50W金币抽一次，或者花450W金币抽10次。													
-- 2、点击NPC，选择参与圣诞活动，可以跳转活动页（含参免登陆）网址链接：https://coevent.99.com/christmasevent													
-- 3、点击NPC，选择装扮圣诞树选项，可以上交获得的圣诞挂饰包，玩家可以选择上交的数量。													
-- 4、每个账号每天最多只能抽50次。													

-- 奖励
-- 80W三选一礼包	PokerStarMatchPack	新制作	1	80.00%	80	64	赠品，永久                    
-- 500W三选一礼包	PokerMasterMatchPack	新制作	1	0.90%	500	4.5	赠品，永久
-- 5000W三选一礼包	PokerLegendMatchPack	新制作	1	0.10%	5000	5	赠品，永久
-- 圣诞挂饰包	Hanging decorations	新制作	1	19.00%	0	0	非赠，永久

--具体奖励
-- 德州圣诞抽奖	80W三选一礼包	新物品，可选礼包	赠品	永久	80 
	-- 500W三选一礼包	新物品，可选礼包	赠品	永久	500 
	-- 5000W三选一礼包	新物品，可选礼包	赠品	永久	5000 
	-- 圣诞挂饰包	新物品		永久	
					
-- 具体奖励	奖励内容	奖励类型	数量	赠品	激活时效
-- 80W三选一礼包	80W门票	3305477	1	赠品	24H
	-- 80W增购券	3305479	1	赠品	24H
	-- 80W重购券	3305481	1	赠品	24H
					
-- 具体奖励	奖励内容	奖励类型	数量	赠品	激活时效
-- 500W三选一礼包	500W门票	3305478	1	赠品	48H
	-- 500W增购券	3305480	1	赠品	48H
	-- 500W重购券	3305482	1	赠品	48H
					
-- 具体奖励	奖励内容	奖励类型	数量	赠品	激活时效
-- 5000W三选一礼包	5000W门票	3305535	1	赠品	15天
	-- 5000W增购券	3305536	1	赠品	15天
	-- 5000W重购券	3305537	1	赠品	15天
					
-- 具体奖励	奖励内容	奖励类型	数量	赠品	激活时效
-- 圣诞挂饰包	可上交NPC	新制作	1		
					
-- 修改物品	属性位	叠加数	时效位	物品ID	贵重物品
-- 5000W门票	赠品	不可叠加	15天	3305535	
-- 5000W增购券	赠品	不可叠加	15天	3305536	
-- 5000W重购券	赠品	不可叠加	15天	3305537	
-- 80W增购券	赠品	不可叠加	24H	3305479	
-- 80W重购券	赠品	不可叠加	24H	3305481	
-- 500W增购券	赠品	不可叠加	48H	3305480	
-- 500W重购券	赠品	不可叠加	48H	3305482	
-- 免费赛增购券	赠品	不可叠加	24H	3306760	

-- logid: 12000958

--------------- 掩码说明          
-- stc(170,86)  data 0-49 记录抽奖次数

-- stc(170,87)  data 0-~  记录玩家上交圣诞挂饰礼包的数量
------------------------------------------------------------------------------------

--命名前缀 TexasChristmasDraw_

------------------------------------------------------------------------------------


local tTexasChristmasDraw_Cont = {}
	
	--抽奖所需金币
	tTexasChristmasDraw_Cont["Money"] = {}
	tTexasChristmasDraw_Cont["Money"][1] = -500000
	tTexasChristmasDraw_Cont["Money"][10] = -4500000
	
	--背包空间
	tTexasChristmasDraw_Cont["Space"] = {}
	tTexasChristmasDraw_Cont["Space"][1] = 1
	tTexasChristmasDraw_Cont["Space"][10] = 4

	--npc数据
	tTexasChristmasDraw_Cont["NPC"] = {}
	 tTexasChristmasDraw_Cont["NPC"]["CellX"] = 201
	 tTexasChristmasDraw_Cont["NPC"]["CellY"] = 180
	 tTexasChristmasDraw_Cont["NPC"]["Mapid"] = 3053
	 tTexasChristmasDraw_Cont["NPC"]["nNpcId"] = 22415
	

local tTexasChristmasDraw_GiftType = {}
--抽奖概率获得礼包
	tTexasChristmasDraw_GiftType[1] = {}
	tTexasChristmasDraw_GiftType[1]["ItemChanceSum"] = 10000
	
	-- 80W三选一礼包 3306890 80%
	tTexasChristmasDraw_GiftType[1][1] = {}
	tTexasChristmasDraw_GiftType[1][1]["RandomItemChanceType"] = 2
	tTexasChristmasDraw_GiftType[1][1]["ItemChance"] = 8000
	tTexasChristmasDraw_GiftType[1][1]["RewardItem"] = {}
	tTexasChristmasDraw_GiftType[1][1]["RewardItem"][1] = {}
	tTexasChristmasDraw_GiftType[1][1]["RewardItem"][1]["Id"] = 3306890
	tTexasChristmasDraw_GiftType[1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tTexasChristmasDraw_GiftType[1][1]["Log"] = "0,0,0,0,12000958,2,3306890,1"
	-- tTexasChristmasDraw_GiftType[1][1]["Talk"] = tThanksgivingEvent_Text["Thanksgiving"]["Reward"][10]
	-- tTexasChristmasDraw_GiftType[1][1]["TalkFlag"] = 105
	
	--500W三选一礼包 3306891 0.9%
	tTexasChristmasDraw_GiftType[1][2] = {}
	tTexasChristmasDraw_GiftType[1][2]["RandomItemChanceType"] = 2
	tTexasChristmasDraw_GiftType[1][2]["ItemChance"] = 90
	tTexasChristmasDraw_GiftType[1][2]["RewardItem"] = {}
	tTexasChristmasDraw_GiftType[1][2]["RewardItem"][1] = {}
	tTexasChristmasDraw_GiftType[1][2]["RewardItem"][1]["Id"] = 3306891
	tTexasChristmasDraw_GiftType[1][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tTexasChristmasDraw_GiftType[1][2]["Log"] = "0,0,0,0,12000958,2,3306891,1"
	-- tTexasChristmasDraw_GiftType[1][2]["Talk"] = tThanksgivingEvent_Text["Thanksgiving"]["Reward"][10]
	-- tTexasChristmasDraw_GiftType[1][2]["TalkFlag"] = 105

	--5000W三选一礼包 3306892  0.1%
	tTexasChristmasDraw_GiftType[1][3] = {}
	tTexasChristmasDraw_GiftType[1][3]["RandomItemChanceType"] = 2
	tTexasChristmasDraw_GiftType[1][3]["ItemChance"] = 10
	tTexasChristmasDraw_GiftType[1][3]["RewardItem"] = {}
	tTexasChristmasDraw_GiftType[1][3]["RewardItem"][1] = {}
	tTexasChristmasDraw_GiftType[1][3]["RewardItem"][1]["Id"] = 3306892
	tTexasChristmasDraw_GiftType[1][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tTexasChristmasDraw_GiftType[1][3]["Log"] = "0,0,0,0,12000958,2,3306892,1"
	-- tTexasChristmasDraw_GiftType[1][3]["Talk"] = tThanksgivingEvent_Text["Thanksgiving"]["Reward"][10]
	-- tTexasChristmasDraw_GiftType[1][3]["TalkFlag"] = 105
	
	--圣诞挂饰包 3306893 19%
	tTexasChristmasDraw_GiftType[1][4] = {}
	tTexasChristmasDraw_GiftType[1][4]["RandomItemChanceType"] = 2
	tTexasChristmasDraw_GiftType[1][4]["ItemChance"] = 1900
	tTexasChristmasDraw_GiftType[1][4]["RewardItem"] = {}
	tTexasChristmasDraw_GiftType[1][4]["RewardItem"][1] = {}
	tTexasChristmasDraw_GiftType[1][4]["RewardItem"][1]["Id"] = 3306893
	tTexasChristmasDraw_GiftType[1][4]["RewardItem"][1]["Attr"] = "0 1"
	tTexasChristmasDraw_GiftType[1][4]["Log"] = "0,0,0,0,12000958,2,3306893,1"
	-- tTexasChristmasDraw_GiftType[1][4]["Talk"] = tThanksgivingEvent_Text["Thanksgiving"]["Reward"][10]
	-- tTexasChristmasDraw_GiftType[1][4]["TalkFlag"] = 105
	
--礼包可选奖励
local tTexasChristmasDraw_Reward = {}
	
	-- 80W三选一礼包 3306890  
	tTexasChristmasDraw_Reward[3305477] = {}
	tTexasChristmasDraw_Reward[3305477]["Log"] = "0,0,3306890,1,12000958,2,3305477,1"
	tTexasChristmasDraw_Reward[3305477]["EmoneyLog"] = "350	20167	0	0	1	"
	tTexasChristmasDraw_Reward[3305477]["DeleteItem"] = {}
	tTexasChristmasDraw_Reward[3305477]["DeleteItem"][1] = {}
	tTexasChristmasDraw_Reward[3305477]["DeleteItem"][1]["Id"] = 3306890
	
	tTexasChristmasDraw_Reward[3305477]["RewardItem"] = {}
	tTexasChristmasDraw_Reward[3305477]["RewardItem"][1] = {}
	tTexasChristmasDraw_Reward[3305477]["RewardItem"][1]["Id"] = 3305477
	tTexasChristmasDraw_Reward[3305477]["RewardItem"][1]["Attr"] = "0 1 3 1440 1"
	
	tTexasChristmasDraw_Reward[3305479] = {}
	tTexasChristmasDraw_Reward[3305479]["Log"] = "0,0,3306890,1,12000958,2,3305479,1"
	tTexasChristmasDraw_Reward[3305479]["EmoneyLog"] = "350	20167	0	0	1	"
	tTexasChristmasDraw_Reward[3305479]["DeleteItem"] = {}
	tTexasChristmasDraw_Reward[3305479]["DeleteItem"][1] = {}
	tTexasChristmasDraw_Reward[3305479]["DeleteItem"][1]["Id"] = 3306890
	                             
	tTexasChristmasDraw_Reward[3305479]["RewardItem"] = {}
	tTexasChristmasDraw_Reward[3305479]["RewardItem"][1] = {}
	tTexasChristmasDraw_Reward[3305479]["RewardItem"][1]["Id"] = 3305479
	tTexasChristmasDraw_Reward[3305479]["RewardItem"][1]["Attr"] = "0 1 3"
	
	tTexasChristmasDraw_Reward[3305481] = {}
	tTexasChristmasDraw_Reward[3305481]["Log"] = "0,0,3306890,1,12000958,2,3305481,1"
	tTexasChristmasDraw_Reward[3305481]["EmoneyLog"] = "350	20167	0	0	1	"
	tTexasChristmasDraw_Reward[3305481]["DeleteItem"] = {}
	tTexasChristmasDraw_Reward[3305481]["DeleteItem"][1] = {}
	tTexasChristmasDraw_Reward[3305481]["DeleteItem"][1]["Id"] = 3306890
	                            
	tTexasChristmasDraw_Reward[3305481]["RewardItem"] = {}
	tTexasChristmasDraw_Reward[3305481]["RewardItem"][1] = {}
	tTexasChristmasDraw_Reward[3305481]["RewardItem"][1]["Id"] = 3305481
	tTexasChristmasDraw_Reward[3305481]["RewardItem"][1]["Attr"] = "0 1 3"
	
	-- 500W三选一礼包 3306891 
	tTexasChristmasDraw_Reward[3305478] = {}
	tTexasChristmasDraw_Reward[3305478]["Log"] = "0,0,3306891,1,12000958,2,3305478,1"
	tTexasChristmasDraw_Reward[3305478]["EmoneyLog"] = "350	20168	0	0	1	"
	tTexasChristmasDraw_Reward[3305478]["DeleteItem"] = {}
	tTexasChristmasDraw_Reward[3305478]["DeleteItem"][1] = {}
	tTexasChristmasDraw_Reward[3305478]["DeleteItem"][1]["Id"] = 3306891
	
	tTexasChristmasDraw_Reward[3305478]["RewardItem"] = {}
	tTexasChristmasDraw_Reward[3305478]["RewardItem"][1] = {}
	tTexasChristmasDraw_Reward[3305478]["RewardItem"][1]["Id"] = 3305478
	tTexasChristmasDraw_Reward[3305478]["RewardItem"][1]["Attr"] = "0 1 3 2880 1"
	
	tTexasChristmasDraw_Reward[3305480] = {}
	tTexasChristmasDraw_Reward[3305480]["Log"] = "0,0,3306891,1,12000958,2,3305480,1"
	tTexasChristmasDraw_Reward[3305480]["EmoneyLog"] = "350	20168	0	0	1	"
	tTexasChristmasDraw_Reward[3305480]["DeleteItem"] = {}
	tTexasChristmasDraw_Reward[3305480]["DeleteItem"][1] = {}
	tTexasChristmasDraw_Reward[3305480]["DeleteItem"][1]["Id"] = 3306891
	                             
	tTexasChristmasDraw_Reward[3305480]["RewardItem"] = {}
	tTexasChristmasDraw_Reward[3305480]["RewardItem"][1] = {}
	tTexasChristmasDraw_Reward[3305480]["RewardItem"][1]["Id"] = 3305480
	tTexasChristmasDraw_Reward[3305480]["RewardItem"][1]["Attr"] = "0 1 3"
	
	tTexasChristmasDraw_Reward[3305482] = {}
	tTexasChristmasDraw_Reward[3305482]["Log"] = "0,0,3306891,1,12000958,2,3305482,1"
	tTexasChristmasDraw_Reward[3305482]["EmoneyLog"] = "350	20168	0	0	1	"
	tTexasChristmasDraw_Reward[3305482]["DeleteItem"] = {}
	tTexasChristmasDraw_Reward[3305482]["DeleteItem"][1] = {}
	tTexasChristmasDraw_Reward[3305482]["DeleteItem"][1]["Id"] = 3306891
	                            
	tTexasChristmasDraw_Reward[3305482]["RewardItem"] = {}
	tTexasChristmasDraw_Reward[3305482]["RewardItem"][1] = {}
	tTexasChristmasDraw_Reward[3305482]["RewardItem"][1]["Id"] = 3305482
	tTexasChristmasDraw_Reward[3305482]["RewardItem"][1]["Attr"] = "0 1 3"
	
	-- 5000W三选一礼包 3306892 
	tTexasChristmasDraw_Reward[3305535] = {}
	tTexasChristmasDraw_Reward[3305535]["Log"] = "0,0,3306892,1,12000958,2,3305535,1"
	tTexasChristmasDraw_Reward[3305535]["EmoneyLog"] = "350	20169	0	0	1	"
	tTexasChristmasDraw_Reward[3305535]["DeleteItem"] = {}
	tTexasChristmasDraw_Reward[3305535]["DeleteItem"][1] = {}
	tTexasChristmasDraw_Reward[3305535]["DeleteItem"][1]["Id"] = 3306892
	
	tTexasChristmasDraw_Reward[3305535]["RewardItem"] = {}
	tTexasChristmasDraw_Reward[3305535]["RewardItem"][1] = {}
	tTexasChristmasDraw_Reward[3305535]["RewardItem"][1]["Id"] = 3305535
	tTexasChristmasDraw_Reward[3305535]["RewardItem"][1]["Attr"] = "0 1 3 21600 1"
	
	tTexasChristmasDraw_Reward[3305536] = {}
	tTexasChristmasDraw_Reward[3305536]["Log"] = "0,0,3306892,1,12000958,2,3305536,1"
	tTexasChristmasDraw_Reward[3305536]["EmoneyLog"] = "350	20169	0	0	1	"
	tTexasChristmasDraw_Reward[3305536]["DeleteItem"] = {}
	tTexasChristmasDraw_Reward[3305536]["DeleteItem"][1] = {}
	tTexasChristmasDraw_Reward[3305536]["DeleteItem"][1]["Id"] = 3306892
	                             
	tTexasChristmasDraw_Reward[3305536]["RewardItem"] = {}
	tTexasChristmasDraw_Reward[3305536]["RewardItem"][1] = {}
	tTexasChristmasDraw_Reward[3305536]["RewardItem"][1]["Id"] = 3305536
	tTexasChristmasDraw_Reward[3305536]["RewardItem"][1]["Attr"] = "0 1 3"
	
	tTexasChristmasDraw_Reward[3305537] = {}
	tTexasChristmasDraw_Reward[3305537]["Log"] = "0,0,3306892,1,12000958,2,3305537,1"
	tTexasChristmasDraw_Reward[3305537]["EmoneyLog"] = "350	20169	0	0	1	"
	tTexasChristmasDraw_Reward[3305537]["DeleteItem"] = {}
	tTexasChristmasDraw_Reward[3305537]["DeleteItem"][1] = {}
	tTexasChristmasDraw_Reward[3305537]["DeleteItem"][1]["Id"] = 3306892
	                            
	tTexasChristmasDraw_Reward[3305537]["RewardItem"] = {}
	tTexasChristmasDraw_Reward[3305537]["RewardItem"][1] = {}
	tTexasChristmasDraw_Reward[3305537]["RewardItem"][1]["Id"] = 3305537
	tTexasChristmasDraw_Reward[3305537]["RewardItem"][1]["Attr"] = "0 1 3"
	
--网页
local TexasChristmasDraw_Web = {}
	TexasChristmasDraw_Web["The_web"]="https://coevent.99.com/christmasevent/"
	
--掩码
local tTexasChristmasDraw_Stc = {}
	tTexasChristmasDraw_Stc[1] = {}
	tTexasChristmasDraw_Stc[1]["EventType"] = 170
	tTexasChristmasDraw_Stc[1]["DataType"] = 86
	
	tTexasChristmasDraw_Stc[2] = {}
	tTexasChristmasDraw_Stc[2]["EventType"] = 170
	tTexasChristmasDraw_Stc[2]["DataType"] = 87
--log
local tTexasChristmasDraw_Log = {}	
	tTexasChristmasDraw_Log["DelItem"] = "0,0,%d,%d,12000958,2,0,0"	
	tTexasChristmasDraw_Log["DelAllItem"] = "0,0,%d,%d,12000958,2,0,0"	
	
local tTexasChristmasDraw_EmoneyBuy = {}
	tTexasChristmasDraw_EmoneyBuy["PayMoney"] = "350	20164	0	0	1	"
	tTexasChristmasDraw_EmoneyBuy["PayTenMoney"] = "350	20165	0	0	1	"
	tTexasChristmasDraw_EmoneyBuy["Hanging"] = "350	20166	0	0	%d	"

	
-----------------------------------------------逻辑部分-----------------------------------------------------
function TexasChristmasDraw_Option(nItemId)
	
	
	RewardTemplate_UseItem(tTexasChristmasDraw_Reward[nItemId])

end 

--点击NPC弹出网页
function TexasChristmasDraw_OpenWeb(nNpcId)
	--判断时间  
	if not Sys_ChkFullTime(tActivityTime["TexasChristmasDraw"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nUserId = Get_UserId()
	User_OpenWebPageEx(TexasChristmasDraw_Web["The_web"],nUserId)
	-- User_SendWebPage(TexasChristmasDraw_Web["The_web"],nUserId)
	-- User_SendWebDialog(TexasChristmasDraw_Web["The_web"],nUserId)
end

--抽奖
function TexasChristmasDraw_Turn(nTimes,nNpcId)

	local nUserId = Get_UserId()
	--判断时间
	if not Sys_ChkFullTime(tActivityTime["TexasChristmasDraw"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nEvent = tTexasChristmasDraw_Stc[1]["EventType"] 
	local nType = tTexasChristmasDraw_Stc[1]["DataType"] 
	
	-- 判断是否隔天
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	
	--判断金币
	if not User_CanPutMoney2Bag(tTexasChristmasDraw_Cont["Money"][nTimes]) then
		--银两不足
		User_TalkChannel2005(tTexasChristmasDraw_Text["NoMoney"])
		return
	end	

	local nData = Get_UserStatisticValue(nEvent,nType)
	
	--判断掩码
	if nData >49 then 
		User_TalkChannel2005(tTexasChristmasDraw_Text["NoTimes"])
		return
	end
	
	--判断背包空间
	if not User_CheckLeftSpace(tTexasChristmasDraw_Cont["Space"][nTimes]) then	
		User_TalkChannel2005(string.format(tTexasChristmasDraw_Text["FullBag"],tTexasChristmasDraw_Cont["Space"][nTimes]))
		return
	end

	--置掩码
	Task_AddStatistic(nEvent,nType,nTimes,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		
	--扣金币给奖励
	User_AddMoney(tTexasChristmasDraw_Cont["Money"][nTimes])
	if nTimes == 1 then
		Sys_SaveEmoneyBuy(tTexasChristmasDraw_EmoneyBuy["PayMoney"])
	
	end
	if nTimes == 10 then
		Sys_SaveEmoneyBuy(tTexasChristmasDraw_EmoneyBuy["PayMoney"])
	
	end
	for i = 1,nTimes do
		RewardTemplate_NewRandom(tTexasChristmasDraw_GiftType,1)
	end


end

--装扮圣诞树
function TexasChristmasDraw_DressXmasTree(nItemId,nNpcId)
	local nUserId = Get_UserId()
	--判断时间
	if not Sys_ChkFullTime(tActivityTime["TexasChristmasDraw"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	Sys_DialogText(tTexasChristmasDraw_Text[22412]["Text231"])
	Sys_DialogOptEdit("", 32, "TexasChristmasDraw_HandGift</N>"..nItemId.."</N>"..nNpcId)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

--上交圣诞挂饰包
function TexasChristmasDraw_HandGift(nItemId,nNpcId)
	--玩家背包中圣诞挂饰包的数量
	local nNum = Get_CountItemType(nItemId,0)
	
	--判断时间
	if not Sys_ChkFullTime(tActivityTime["TexasChristmasDraw"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--输入框的数量
	local nNeedCompose = tonumber(Get_SysAcceptStr())
	
	if type(nNeedCompose) ~= "number" or nNeedCompose <= 0 then
		User_TalkChannel2005(tTexasChristmasDraw_Text["ErroInput"])
		return
	end
	
	if nNum < nNeedCompose then
		User_TalkChannel2005(tTexasChristmasDraw_Text["NotEnough"])
		return
	end
	
	if Item_DelMulItem(nItemId,nItemId,nNeedCompose) then
		local sDelItemLog = string.format(tTexasChristmasDraw_Log["DelItem"],nItemId,nNeedCompose)
		Sys_SaveActionFestivalLog(sDelItemLog)
		Sys_SaveEmoneyBuy(string.format(tTexasChristmasDraw_EmoneyBuy["Hanging"],nNeedCompose))
	
		--上交成功
		local nEvent = tTexasChristmasDraw_Stc[2]["EventType"] 
		local nType = tTexasChristmasDraw_Stc[2]["DataType"] 
		
		Task_AddStatistic(nEvent,nType,nNeedCompose,1,0)
		local nData = Get_UserStatisticValue(nEvent,nType)
		
		Sys_DialogText(string.format(tTexasChristmasDraw_Text[22412]["Text311"],nNeedCompose))
		Sys_DialogText(string.format(tTexasChristmasDraw_Text[22412]["Text312"],nData))
		Sys_DialogOptEdit("", 32, "TexasChristmasDraw_HandGift</N>"..nItemId)
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		
		User_TalkChannel2005(string.format(tTexasChristmasDraw_Text["HandSuccess"],nNeedCompose))
	end
	

end

--导航至npc
function TexasChristmasDraw_GoNpc(nItemId)

	--判断时间
	if not Sys_ChkFullTime(tActivityTime["TexasChristmasDraw"]["ActivityTime"]) then
		return
	end

	local nPosX = tTexasChristmasDraw_Cont["NPC"]["CellX"]
	local nPosY = tTexasChristmasDraw_Cont["NPC"]["CellY"]
	local nMapId = tTexasChristmasDraw_Cont["NPC"]["Mapid"]
	local nNpcId = tTexasChristmasDraw_Cont["NPC"]["nNpcId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
	
end

--删除物品
function TexasChristmasDraw_DelItem(nItemId)
	
	--判断时间
	if not Sys_ChkFullTime(tActivityTime["TexasChristmasDraw"]["AfterTime"]) then
		--判断物品
		if Item_ChkItem(nItemId) then
			local nCount = Get_CountItemType(nItemId,0)
			local sDelItemLog = string.format(tTexasChristmasDraw_Log["DelAllItem"],nItemId,nCount)
			Sys_SaveActionFestivalLog(sDelItemLog)
			Item_DelAllItemByType(nItemId)
		end
	end

end 

--物品无对白检测时间
function TexasChristmasDraw_CheckTime(nItemId)
	if not Sys_ChkFullTime(tActivityTime["TexasChristmasDraw"]["AfterTime"]) then
		if Item_ChkItem(nItemId) then
			if Item_DelItem(nItemId) then
				local nNum = 1
				local sDelItemLog = string.format(tTexasChristmasDraw_Log["DelItem"],nItemId,nNum)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005("The item has expired, and you threw it away.")
			end
		end	
		return 
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end


-------------------------------------------------物品部分-----------------------------------------------------
--物品导航
tItem[3306893] = tItem[3306893] or {}
tItem[3306893]["Function"] = function(nItemId,sItemName)
	
	TexasChristmasDraw_GoNpc(nItemId)
end

tItem[3306890] = tItem[3306890] or {}
tItem[3306890]["Function"] = function(nItemId,sItemName)
	TexasChristmasDraw_CheckTime(nItemId)
end

--80W三选一礼包 3306890   
-- tItemFace[3306890] = 862
tItem[3306890] = tItem[3306890] or {}
tItem[3306890]["Text1-1"] = {111}
tItem[3306890]["Text111"] = tTexasChristmasDraw_Text[3306890]["Text111"]
tItem[3306890]["tOption1-1"] = {111, 112,113,114}
tItem[3306890]["Option111"] = tTexasChristmasDraw_Text[3306890]["Option111"]
tItem[3306890]["OptionFunc111"] = "TexasChristmasDraw_Option</N>3305477"
tItem[3306890]["Option112"] = tTexasChristmasDraw_Text[3306890]["Option112"]
tItem[3306890]["OptionFunc112"] = "TexasChristmasDraw_Option</N>3305479"
tItem[3306890]["Option113"] = tTexasChristmasDraw_Text[3306890]["Option113"]
tItem[3306890]["OptionFunc113"] = "TexasChristmasDraw_Option</N>3305481"
tItem[3306890]["Option114"] = tTexasChristmasDraw_Text[3306890]["Option114"]



tItem[3306891] = tItem[3306891] or {}
tItem[3306891]["Function"] = function(nItemId,sItemName)
	TexasChristmasDraw_CheckTime(nItemId)
end
-- 500W三选一礼包 3306891  
-- tItemFace[3306891] = 862
tItem[3306891] = tItem[3306891] or {}
tItem[3306891]["Text1-1"] = {111}
tItem[3306891]["Text111"] = tTexasChristmasDraw_Text[3306891]["Text111"]
tItem[3306891]["tOption1-1"] = {111, 112,113,114}
tItem[3306891]["Option111"] = tTexasChristmasDraw_Text[3306891]["Option111"]
tItem[3306891]["OptionFunc111"] = "TexasChristmasDraw_Option</N>3305478"
tItem[3306891]["Option112"] = tTexasChristmasDraw_Text[3306891]["Option112"]
tItem[3306891]["OptionFunc112"] = "TexasChristmasDraw_Option</N>3305480"
tItem[3306891]["Option113"] = tTexasChristmasDraw_Text[3306891]["Option113"]
tItem[3306891]["OptionFunc113"] = "TexasChristmasDraw_Option</N>3305482"
tItem[3306891]["Option114"] = tTexasChristmasDraw_Text[3306891]["Option114"]

tItem[3306892] = tItem[3306892] or {}
tItem[3306892]["Function"] = function(nItemId,sItemName)
	TexasChristmasDraw_CheckTime(nItemId)
end

-- 5000W三选一礼包 3306892 
-- tItemFace[3306892] = 862
tItem[3306892] = tItem[3306892] or {}
tItem[3306892]["Text1-1"] = {111}
tItem[3306892]["Text111"] = tTexasChristmasDraw_Text[3306892]["Text111"]
tItem[3306892]["tOption1-1"] = {111, 112,113,114}
tItem[3306892]["Option111"] = tTexasChristmasDraw_Text[3306892]["Option111"]
tItem[3306892]["OptionFunc111"] = "TexasChristmasDraw_Option</N>3305535"
tItem[3306892]["Option112"] = tTexasChristmasDraw_Text[3306892]["Option112"]
tItem[3306892]["OptionFunc112"] = "TexasChristmasDraw_Option</N>3305536"
tItem[3306892]["Option113"] = tTexasChristmasDraw_Text[3306892]["Option113"]
tItem[3306892]["OptionFunc113"] = "TexasChristmasDraw_Option</N>3305537"
tItem[3306892]["Option114"] = tTexasChristmasDraw_Text[3306892]["Option114"]


--修改外部log  叠加物品给时效问题
--物品导航
tItem[3305536] = tItem[3305536] or {}
tItem[3305536]["Function"] = function(nItemId,sItemName)
	
	TexasChristmasDraw_DelItem(nItemId)
end

tItem[3305537] = tItem[3305536]
tItem[3305479] = tItem[3305536]
tItem[3305480] = tItem[3305536]
tItem[3305481] = tItem[3305536]
tItem[3305482] = tItem[3305536]

------------------------------------------------npc部分-----------------------------------------------------------

--圣诞树
tNpcFace[4789] = 201--头像
tNpcGossip[22412] = tNpcGossip[22412] or DefaultNpc:new{}
tNpcGossip[22412]["OptionHidden"] = 1

--活动时间中
tNpcGossip[22412]["Text1-1"] = {111,112,113,114}
tNpcGossip[22412]["Text111"] = tTexasChristmasDraw_Text[22412]["Text111"]
tNpcGossip[22412]["Text112"] = tTexasChristmasDraw_Text[22412]["Text112"]
tNpcGossip[22412]["Text113"] = tTexasChristmasDraw_Text[22412]["Text113"]

tNpcGossip[22412]["tOption1-1"] = {11,12,13}
tNpcGossip[22412]["Option11"] = tTexasChristmasDraw_Text[22412]["Option11"]
tNpcGossip[22412]["OptionPoint11"] = "2-1"
tNpcGossip[22412]["Option12"] = tTexasChristmasDraw_Text[22412]["Option12"]
tNpcGossip[22412]["OptionFunc12"] = "TexasChristmasDraw_OpenWeb</N>22412"
tNpcGossip[22412]["Option13"] = tTexasChristmasDraw_Text[22412]["Option13"]

tNpcGossip[22412]["OptionFunc13"] = "TexasChristmasDraw_DressXmasTree</N>3306893</N>22412"
tNpcGossip[22412]["ChkFunc1-1"] = function()
	return  Sys_ChkFullTime(tActivityTime["TexasChristmasDraw"]["ActivityTime"])
end

-- 接1、参与圣诞抽奖
tNpcGossip[22412]["Text2-1"] = {211,212,213,214,215}
tNpcGossip[22412]["Text211"] = tTexasChristmasDraw_Text[22412]["Text211"]
tNpcGossip[22412]["Text212"] = tTexasChristmasDraw_Text[22412]["Text212"]
tNpcGossip[22412]["Text213"] = tTexasChristmasDraw_Text[22412]["Text213"]
tNpcGossip[22412]["Text214"] = tTexasChristmasDraw_Text[22412]["Text214"]
tNpcGossip[22412]["Text215"] = tTexasChristmasDraw_Text[22412]["Text215"]

tNpcGossip[22412]["tOption2-1"] = {21,22}
tNpcGossip[22412]["Option21"] = tTexasChristmasDraw_Text[22412]["Option21"]
--抽一次
tNpcGossip[22412]["OptionFunc21"] = "TexasChristmasDraw_Turn</N>1</N>22412"
tNpcGossip[22412]["Option22"] = tTexasChristmasDraw_Text[22412]["Option22"]
tNpcGossip[22412]["OptionChkFunc22"] = function()
	local nUserId = Get_UserId()
	--判断时间
	if not Sys_ChkFullTime(tActivityTime["TexasChristmasDraw"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(22412,"1-2")
		return false
	end
	
	local nEvent = tTexasChristmasDraw_Stc[1]["EventType"] 
	local nType = tTexasChristmasDraw_Stc[1]["DataType"] 
	
	-- 判断是否隔天
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	
	local nData = Get_UserStatisticValue(nEvent,nType)
	if nData >40 then 
		return false
	end
	return true 
end

--抽十次
tNpcGossip[22412]["OptionFunc22"] = "TexasChristmasDraw_Turn</N>10</N>22412"
tNpcGossip[22412]["ChkFunc2-1"] = function()
	local nUserId = Get_UserId()

	--判断时间
	if not Sys_ChkFullTime(tActivityTime["TexasChristmasDraw"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(22412,"1-2")
		return false
	end
	
	local nEvent = tTexasChristmasDraw_Stc[1]["EventType"] 
	local nType = tTexasChristmasDraw_Stc[1]["DataType"] 

	-- 判断是否隔天
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	
	local nData = Get_UserStatisticValue(nEvent,nType)
	local nTimes = 50-nData

	User_TalkChannel2005(string.format(tTexasChristmasDraw_Text[22412]["Text215"],nTimes))
	tNpcGossip[22412]["Text215"] = string.format(tTexasChristmasDraw_Text[22412]["Text215"],nTimes)
	return true
end


--活动时间后
tNpcGossip[22412]["Text1-2"] = {121}
tNpcGossip[22412]["Text121"] = tTexasChristmasDraw_Text[22412]["Text121"]
tNpcGossip[22412]["tOption1-2"] = {121}
tNpcGossip[22412]["Option121"] = tTexasChristmasDraw_Text[22412]["Option121"]
tNpcGossip[22412]["ChkFunc1-2"] = function()
	return not Sys_ChkFullTime(tActivityTime["TexasChristmasDraw"]["ActivityTime"])
end

tNpcGossip[22413] = tNpcGossip[22412] or DefaultNpc:new{}
tNpcGossip[22414] = tNpcGossip[22412] or DefaultNpc:new{}
tNpcGossip[22415] = tNpcGossip[22412] or DefaultNpc:new{}
tNpcGossip[22416] = tNpcGossip[22412] or DefaultNpc:new{}
tNpcGossip[22417] = tNpcGossip[22412] or DefaultNpc:new{}
tNpcGossip[22418] = tNpcGossip[22412] or DefaultNpc:new{}
tNpcGossip[22419] = tNpcGossip[22412] or DefaultNpc:new{}
tNpcGossip[22509] = tNpcGossip[22412] or DefaultNpc:new{}

tNpcGossip[22542] = tNpcGossip[22412] or DefaultNpc:new{}
tNpcGossip[22544] = tNpcGossip[22412] or DefaultNpc:new{}
tNpcGossip[22546] = tNpcGossip[22412] or DefaultNpc:new{}
tNpcGossip[22548] = tNpcGossip[22412] or DefaultNpc:new{}
tNpcGossip[22550] = tNpcGossip[22412] or DefaultNpc:new{}
tNpcGossip[22552] = tNpcGossip[22412] or DefaultNpc:new{}
tNpcGossip[22554] = tNpcGossip[22412] or DefaultNpc:new{}
tNpcGossip[22556] = tNpcGossip[22412] or DefaultNpc:new{}
tNpcGossip[22558] = tNpcGossip[22412] or DefaultNpc:new{}


--雪人
tNpcFace[4621] = 220
tNpcGossip[22420] = tNpcGossip[22412] or DefaultNpc:new{}
tNpcGossip[22421] = tNpcGossip[22412] or DefaultNpc:new{}
tNpcGossip[22422] = tNpcGossip[22412] or DefaultNpc:new{}
tNpcGossip[22423] = tNpcGossip[22412] or DefaultNpc:new{}
tNpcGossip[22424] = tNpcGossip[22412] or DefaultNpc:new{}
tNpcGossip[22425] = tNpcGossip[22412] or DefaultNpc:new{}

tNpcGossip[22541] = tNpcGossip[22412] or DefaultNpc:new{}
tNpcGossip[22543] = tNpcGossip[22412] or DefaultNpc:new{}
tNpcGossip[22545] = tNpcGossip[22412] or DefaultNpc:new{}
tNpcGossip[22547] = tNpcGossip[22412] or DefaultNpc:new{}
tNpcGossip[22549] = tNpcGossip[22412] or DefaultNpc:new{}
tNpcGossip[22551] = tNpcGossip[22412] or DefaultNpc:new{}
tNpcGossip[22553] = tNpcGossip[22412] or DefaultNpc:new{}
tNpcGossip[22555] = tNpcGossip[22412] or DefaultNpc:new{}
tNpcGossip[22557] = tNpcGossip[22412] or DefaultNpc:new{}


