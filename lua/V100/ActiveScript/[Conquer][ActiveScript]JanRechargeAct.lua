------------------------------------------------------------------------------------
--Name：            181217[英文征服][活动脚本]1月线下充值活动相关发奖action制作
--Creator:      蔡颖静
--Created:     2018/12/17
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--前缀：tJanRechargeAct_

----------------------------------表配置部分--------------------------------------------
local tJanRechargeAct_Data={}
--3311863 气力大礼盒
tJanRechargeAct_Data[3311863]={}
tJanRechargeAct_Data[3311863]["LogId"] = 12001243
tJanRechargeAct_Data[3311863]["ItemChanceSum"] = 10000
--2000气力值
tJanRechargeAct_Data[3311863][1]={}
tJanRechargeAct_Data[3311863][1]["RandomItemChanceType"] = 2
tJanRechargeAct_Data[3311863][1]["ItemChance"] = 3500
tJanRechargeAct_Data[3311863][1]["RewardStrengthValue"] = {}
tJanRechargeAct_Data[3311863][1]["RewardStrengthValue"]["Value"] = 2000
--3000气力值
tJanRechargeAct_Data[3311863][2]={}
tJanRechargeAct_Data[3311863][2]["RandomItemChanceType"] = 2
tJanRechargeAct_Data[3311863][2]["ItemChance"] = 4500
tJanRechargeAct_Data[3311863][2]["RewardStrengthValue"] = {}
tJanRechargeAct_Data[3311863][2]["RewardStrengthValue"]["Value"] = 3000
--4000气力值
tJanRechargeAct_Data[3311863][3]={}
tJanRechargeAct_Data[3311863][3]["RandomItemChanceType"] = 2
tJanRechargeAct_Data[3311863][3]["ItemChance"] = 2000
tJanRechargeAct_Data[3311863][3]["RewardStrengthValue"] = {}
tJanRechargeAct_Data[3311863][3]["RewardStrengthValue"]["Value"] = 4000

--3311864 精炼大礼盒
tJanRechargeAct_Data[3311864]={}
tJanRechargeAct_Data[3311864]["LogId"] = 12001243
tJanRechargeAct_Data[3311864]["ItemChanceSum"] = 10000
--明亮星陨石*5
tJanRechargeAct_Data[3311864][1]={}
tJanRechargeAct_Data[3311864][1]["RandomItemChanceType"] = 2
tJanRechargeAct_Data[3311864][1]["ItemChance"] = 3500
tJanRechargeAct_Data[3311864][1]["RewardItem"]={}
tJanRechargeAct_Data[3311864][1]["RewardItem"][1] = {}
tJanRechargeAct_Data[3311864][1]["RewardItem"][1]["Id"]=3009001
tJanRechargeAct_Data[3311864][1]["RewardItem"][1]["Attr"]="0 5 0 2880 1"
--明亮星陨石*5
tJanRechargeAct_Data[3311864][2]={}
tJanRechargeAct_Data[3311864][2]["RandomItemChanceType"] = 2
tJanRechargeAct_Data[3311864][2]["ItemChance"] = 4500
tJanRechargeAct_Data[3311864][2]["RewardItem"]={}
tJanRechargeAct_Data[3311864][2]["RewardItem"][1] = {}
tJanRechargeAct_Data[3311864][2]["RewardItem"][1]["Id"]=3009001
tJanRechargeAct_Data[3311864][2]["RewardItem"][1]["Attr"]="0 8 0 2880 1"
--晶莹星陨石*1
tJanRechargeAct_Data[3311864][3]={}
tJanRechargeAct_Data[3311864][3]["RandomItemChanceType"] = 2
tJanRechargeAct_Data[3311864][3]["ItemChance"] = 2000
tJanRechargeAct_Data[3311864][3]["RewardItem"]={}
tJanRechargeAct_Data[3311864][3]["RewardItem"][1] = {}
tJanRechargeAct_Data[3311864][3]["RewardItem"][1]["Id"]=3009002
tJanRechargeAct_Data[3311864][3]["RewardItem"][1]["Attr"]="0 1 0 2880 1"

--3311865 追加大礼盒
tJanRechargeAct_Data[3311865]={}
tJanRechargeAct_Data[3311865]["LogId"] = 12001243
tJanRechargeAct_Data[3311865]["ItemChanceSum"] = 10000
-- +4赤练石*2 赠
tJanRechargeAct_Data[3311865][1]={}
tJanRechargeAct_Data[3311865][1]["RandomItemChanceType"] = 2
tJanRechargeAct_Data[3311865][1]["ItemChance"] = 3500
tJanRechargeAct_Data[3311865][1]["RewardItem"]={}
tJanRechargeAct_Data[3311865][1]["RewardItem"][1] = {}
tJanRechargeAct_Data[3311865][1]["RewardItem"][1]["Id"]=730004
tJanRechargeAct_Data[3311865][1]["RewardItem"][1]["Attr"]="0 2 3"
-- +5赤练石*1 赠
tJanRechargeAct_Data[3311865][2]={}
tJanRechargeAct_Data[3311865][2]["RandomItemChanceType"] = 2
tJanRechargeAct_Data[3311865][2]["ItemChance"] = 4500
tJanRechargeAct_Data[3311865][2]["RewardItem"]={}
tJanRechargeAct_Data[3311865][2]["RewardItem"][1] = {}
tJanRechargeAct_Data[3311865][2]["RewardItem"][1]["Id"]=730005
tJanRechargeAct_Data[3311865][2]["RewardItem"][1]["Attr"]="0 1 3"
-- +5赤练石*2赠
tJanRechargeAct_Data[3311865][3]={}
tJanRechargeAct_Data[3311865][3]["RandomItemChanceType"] = 2
tJanRechargeAct_Data[3311865][3]["ItemChance"] = 2000
tJanRechargeAct_Data[3311865][3]["RewardItem"]={}
tJanRechargeAct_Data[3311865][3]["RewardItem"][1] = {}
tJanRechargeAct_Data[3311865][3]["RewardItem"][1]["Id"]=730005
tJanRechargeAct_Data[3311865][3]["RewardItem"][1]["Attr"]="0 2 3"

--3311866 修为值大礼盒
tJanRechargeAct_Data[3311866]={}
tJanRechargeAct_Data[3311866]["LogId"] = 12001243
tJanRechargeAct_Data[3311866]["ItemChanceSum"] = 10000
--3000修为值
tJanRechargeAct_Data[3311866][1]={}
tJanRechargeAct_Data[3311866][1]["RandomItemChanceType"] = 2
tJanRechargeAct_Data[3311866][1]["ItemChance"] = 4500
tJanRechargeAct_Data[3311866][1]["RewardRepairValue"] = {}
tJanRechargeAct_Data[3311866][1]["RewardRepairValue"]["Value"] = 3000
--6000修为值
tJanRechargeAct_Data[3311866][2]={}
tJanRechargeAct_Data[3311866][2]["RandomItemChanceType"] = 2
tJanRechargeAct_Data[3311866][2]["ItemChance"] = 4500
tJanRechargeAct_Data[3311866][2]["RewardRepairValue"] = {}
tJanRechargeAct_Data[3311866][2]["RewardRepairValue"]["Value"] = 6000
--10000修为值
tJanRechargeAct_Data[3311866][3]={}
tJanRechargeAct_Data[3311866][3]["RandomItemChanceType"] = 2
tJanRechargeAct_Data[3311866][3]["ItemChance"] = 1000
tJanRechargeAct_Data[3311866][3]["RewardRepairValue"] = {}
tJanRechargeAct_Data[3311866][3]["RewardRepairValue"]["Value"] = 10000

--3311867 天石大礼盒
tJanRechargeAct_Data[3311867]={}
tJanRechargeAct_Data[3311867]["LogId"] = 12001243
tJanRechargeAct_Data[3311867]["ItemChanceSum"] = 10000
--100天石
tJanRechargeAct_Data[3311867][1]={}
tJanRechargeAct_Data[3311867][1]["RandomItemChanceType"] = 2
tJanRechargeAct_Data[3311867][1]["ItemChance"] = 4500
tJanRechargeAct_Data[3311867][1]["RewardEMoney"] = {}
tJanRechargeAct_Data[3311867][1]["RewardEMoney"]["Value"] = 100
tJanRechargeAct_Data[3311867][1]["Index"] = 1
--200天石
tJanRechargeAct_Data[3311867][2]={}
tJanRechargeAct_Data[3311867][2]["RandomItemChanceType"] = 2
tJanRechargeAct_Data[3311867][2]["ItemChance"] = 4500
tJanRechargeAct_Data[3311867][2]["RewardEMoney"] = {}
tJanRechargeAct_Data[3311867][2]["RewardEMoney"]["Value"] = 200
tJanRechargeAct_Data[3311867][2]["Index"] = 2
--250天石
tJanRechargeAct_Data[3311867][3]={}
tJanRechargeAct_Data[3311867][3]["RandomItemChanceType"] = 2
tJanRechargeAct_Data[3311867][3]["ItemChance"] = 1000
tJanRechargeAct_Data[3311867][3]["RewardEMoney"] = {}
tJanRechargeAct_Data[3311867][3]["RewardEMoney"]["Value"] = 250
tJanRechargeAct_Data[3311867][3]["Index"] = 3

--3311868 珍品大礼盒
tJanRechargeAct_Data[3311868]={}
tJanRechargeAct_Data[3311868]["LogId"] = 12001243
tJanRechargeAct_Data[3311868]["ItemChanceSum"] = 10000
--万能神纹精粹
tJanRechargeAct_Data[3311868][1]={}
tJanRechargeAct_Data[3311868][1]["RandomItemChanceType"] = 2
tJanRechargeAct_Data[3311868][1]["ItemChance"] = 3500
tJanRechargeAct_Data[3311868][1]["RewardItem"]={}
tJanRechargeAct_Data[3311868][1]["RewardItem"][1] = {}
tJanRechargeAct_Data[3311868][1]["RewardItem"][1]["Id"]=4060001
tJanRechargeAct_Data[3311868][1]["RewardItem"][1]["Attr"]="0 100"
tJanRechargeAct_Data[3311868][1]["Index"] = 1
--1000赠品天石
tJanRechargeAct_Data[3311868][2]={}
tJanRechargeAct_Data[3311868][2]["RandomItemChanceType"] = 2
tJanRechargeAct_Data[3311868][2]["ItemChance"] = 3000
tJanRechargeAct_Data[3311868][2]["RewardEMoneyMono"] = {}
tJanRechargeAct_Data[3311868][2]["RewardEMoneyMono"]["Value"] = 1000
tJanRechargeAct_Data[3311868][2]["Index"] =2
--七星宝钻
tJanRechargeAct_Data[3311868][3]={}
tJanRechargeAct_Data[3311868][3]["RandomItemChanceType"] = 2
tJanRechargeAct_Data[3311868][3]["ItemChance"] = 1000
tJanRechargeAct_Data[3311868][3]["RewardItem"]={}
tJanRechargeAct_Data[3311868][3]["RewardItem"][1] = {}
tJanRechargeAct_Data[3311868][3]["RewardItem"][1]["Id"]=1200006
tJanRechargeAct_Data[3311868][3]["RewardItem"][1]["Attr"]="0 1"
tJanRechargeAct_Data[3311868][3]["Index"] =3
-- +5赤炼石
tJanRechargeAct_Data[3311868][4]={}
tJanRechargeAct_Data[3311868][4]["RandomItemChanceType"] = 2
tJanRechargeAct_Data[3311868][4]["ItemChance"] = 1000
tJanRechargeAct_Data[3311868][4]["RewardItem"]={}
tJanRechargeAct_Data[3311868][4]["RewardItem"][1] = {}
tJanRechargeAct_Data[3311868][4]["RewardItem"][1]["Id"]=730005
tJanRechargeAct_Data[3311868][4]["RewardItem"][1]["Attr"]="0 1 3"
tJanRechargeAct_Data[3311868][4]["Index"] =4
-- 小抽奖券
tJanRechargeAct_Data[3311868][5]={}
tJanRechargeAct_Data[3311868][5]["RandomItemChanceType"] = 2
tJanRechargeAct_Data[3311868][5]["ItemChance"] = 1500
tJanRechargeAct_Data[3311868][5]["RewardItem"]={}
tJanRechargeAct_Data[3311868][5]["RewardItem"][1] = {}
tJanRechargeAct_Data[3311868][5]["RewardItem"][1]["Id"]=711504
tJanRechargeAct_Data[3311868][5]["RewardItem"][1]["Attr"]="0 30"
tJanRechargeAct_Data[3311868][5]["Index"] =5

--删除礼包log
tJanRechargeAct_Data["Log"]={}
tJanRechargeAct_Data["Log"][3311863] = "0,0,3311863,%d,12001243,1,0,0"
tJanRechargeAct_Data["Log"][3311864] = "0,0,3311864,%d,12001243,1,0,0"
tJanRechargeAct_Data["Log"][3311865] = "0,0,3311865,%d,12001243,1,0,0"
tJanRechargeAct_Data["Log"][3311866] = "0,0,3311866,%d,12001243,1,0,0"
tJanRechargeAct_Data["Log"][3311867] = "0,0,3311867,%d,12001243,1,0,0"
tJanRechargeAct_Data["Log"][3311868] = "0,0,3311868,%d,12001243,1,0,0"

--天石上限判断
tJanRechargeAct_Data["EMoneyLimit"]={}
tJanRechargeAct_Data["EMoneyLimit"][1]=250
tJanRechargeAct_Data["EMoneyLimit"][2]=1000

--EmoneyLog
tJanRechargeAct_Data["EMoneyLog"]={}
tJanRechargeAct_Data["EMoneyLog"][1]="10000	0105	100	100	1	"
tJanRechargeAct_Data["EMoneyLog"][2]="10000	0115	200	200	1	"
tJanRechargeAct_Data["EMoneyLog"][3]="10000	0116	250	250	1	"
tJanRechargeAct_Data["EMoneyLog"][4]="10000	0106	0	0	1000	"
----------------------------------逻辑部分---------------------------------------------
--气力值、修为值包打开
function JanRechargeAct_NoJudgePack(nItemId)
	--检测物品
	if not Item_ChkItem(nItemId) then
		return
	end
	JanRechargeAct_FinallyOpen(nItemId)
end 

--天石包打开
function JanRechargeAct_OpenEmoneyPack(nItemId)
	--检测物品
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断天石上限
	local nUserId = Get_UserId()
	local nEmoney = Get_UserEMoney(nUserId)
	local nAddEmoney = tJanRechargeAct_Data["EMoneyLimit"][1]
	if nEmoney + nAddEmoney > G_User_MaxEmoney then
		User_TalkChannel2005(tJanRechargeAct_Text["SystemTips"]["EMoneyFull"])
		return
	end
	JanRechargeAct_FinallyOpenEmoneyPack(nItemId)
end

--物品包打开
function JanRechargeAct_OpenItemPack(nItemId)
	--检测物品
	if not Item_ChkItem(nItemId) then
		return
	end
	--背包空间判断
	local nSpace = RewardTemplate_GetRandomSpace(tJanRechargeAct_Data,nItemId)
	if not User_CheckLeftSpace(nSpace) then
		local sText=string.format(tJanRechargeAct_Text["SystemTips"]["NoSpace"],nSpace)
		User_TalkChannel2005(sText)
		return 
	end
	JanRechargeAct_FinallyOpen(nItemId)
end 

--珍品礼包打开
function JanRechargeAct_OpenTreasurePack(nItemId)
	--检测物品
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断赠点上限
	local nUserId = Get_UserId()
	local nEmoney = Get_UserMonoEMoney(nUserId)
	local nAddEmoney = tJanRechargeAct_Data["EMoneyLimit"][2]
	if nEmoney + nAddEmoney > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tJanRechargeAct_Text["SystemTips"]["EMoneyMonoFull"])
		return
	end
	--背包空间判断
	local nSpace = RewardTemplate_GetRandomSpace(tJanRechargeAct_Data,nItemId)
	if not User_CheckLeftSpace(nSpace) then
		local sText=string.format(tJanRechargeAct_Text["SystemTips"]["NoSpace"],nSpace)
		User_TalkChannel2005(sText)
		return 
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		--记删除礼包log
		local sLog = string.format(tJanRechargeAct_Data["Log"][nItemId],1)
		Sys_SaveActionFestivalLog(sLog)
		--打开礼包打emoneylog
		local tAward = RewardTemplate_NewRandom(tJanRechargeAct_Data, nItemId)
		local nIndex = tAward[1]["tAward"][1]["Index"]
		if nIndex==2 then 
			Sys_SaveEmoneyBuy(tJanRechargeAct_Data["EMoneyLog"][4])
		end 
	end 
end
	
--打开礼包
function JanRechargeAct_FinallyOpen(nItemId)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		--记删除礼包log
		local sLog = string.format(tJanRechargeAct_Data["Log"][nItemId],1)
		Sys_SaveActionFestivalLog(sLog)
		--打开礼包
		if RewardTemplate_NewRandom(tJanRechargeAct_Data,nItemId) then 
			return 
		end 
	end 
end 

--打开天石礼包，打log
function JanRechargeAct_FinallyOpenEmoneyPack(nItemId)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		--记删除礼包log
		local sLog = string.format(tJanRechargeAct_Data["Log"][nItemId],1)
		Sys_SaveActionFestivalLog(sLog)
		--打开礼包打emoneylog
		local tAward = RewardTemplate_NewRandom(tJanRechargeAct_Data, nItemId)
		local nIndex = tAward[1]["tAward"][1]["Index"]
		Sys_SaveEmoneyBuy(tJanRechargeAct_Data["EMoneyLog"][nIndex])
	end 
end 


---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3311863] = tItem[3311863] or {}
tItem[3311863]["Function"] = function(nItemId,sItemName)
	JanRechargeAct_NoJudgePack(nItemId)
end
tItem[3311866] = tItem[3311863] 

tItem[3311864] = tItem[3311864] or {}
tItem[3311864]["Function"] = function(nItemId,sItemName)
	JanRechargeAct_OpenItemPack(nItemId)
end
tItem[3311865] = tItem[3311864]

tItem[3311867] = tItem[3311867] or {}
tItem[3311867]["Function"] = function(nItemId,sItemName)
	JanRechargeAct_OpenEmoneyPack(nItemId)
end

tItem[3311868] = tItem[3311868] or {}
tItem[3311868]["Function"] = function(nItemId,sItemName)
	JanRechargeAct_OpenTreasurePack(nItemId)
end

-- tProbabil_Test[3311863] = {}																	--------------概率测试表的ID一般为礼包的ID或者怪物ID															
-- tProbabil_Test[3311863]["Table"] = tJanRechargeAct_Data									--------------对应要测试的概率表
-- tProbabil_Test[3311863]["Index"] = {3311863,3311864,3311865,3311866,3311867,3311868}														--------------对应要测试的概率表里面的下标，一般是填1
-- tProbabil_Test[3311863]["Times"] = 10000														--------------测试规模（次数）
-- tProbabil_Test[3311863]["LogName"] = "JanRechargeAct_ProbabilLog"
--Probabil_Main(3311863,10000)