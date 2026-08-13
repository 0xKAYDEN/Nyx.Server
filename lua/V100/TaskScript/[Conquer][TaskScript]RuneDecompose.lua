------------------------------------------------------------------------------------
--Name：181129[简体征服][任务脚本]神纹分解相关
--Creator:      兰冬梅
--Created:     2018/11/29
------------------------------------------------------------------------------------
--lua.ini；21110
------------------------------------------------------------------------------------
--神纹碎片
local tRuneDecompose_Reword = {}
	tRuneDecompose_Reword[401] = {}
	tRuneDecompose_Reword[401][1] = {}
	tRuneDecompose_Reword[401][1]["RewardItem"] = {}
	tRuneDecompose_Reword[401][1]["RewardItem"][1] = {}
	tRuneDecompose_Reword[401][1]["RewardItem"][1]["Id"] = 3314252
	tRuneDecompose_Reword[401][1]["RewardItem"][1]["Attr"] = "0 10"
	tRuneDecompose_Reword[401][1]["RewardItem"][2] = {}
	tRuneDecompose_Reword[401][1]["RewardItem"][2]["Id"] = 3311759
	tRuneDecompose_Reword[401][1]["RewardItem"][2]["Attr"] = "0 1"
	tRuneDecompose_Reword[401][1]["LogId"] = 18000189
	tRuneDecompose_Reword[401][2] = {}
	tRuneDecompose_Reword[401][2]["RewardItem"] = {}
	tRuneDecompose_Reword[401][2]["RewardItem"][1] = {}
	tRuneDecompose_Reword[401][2]["RewardItem"][1]["Id"] = 3314252
	tRuneDecompose_Reword[401][2]["RewardItem"][1]["Attr"] = "0 10 3"
	tRuneDecompose_Reword[401][2]["RewardItem"][2] = {}
	tRuneDecompose_Reword[401][2]["RewardItem"][2]["Id"] = 3311759
	tRuneDecompose_Reword[401][2]["RewardItem"][2]["Attr"] = "0 1 3"
	tRuneDecompose_Reword[401][2]["LogId"] = 18000189
	tRuneDecompose_Reword[402] = {}
	tRuneDecompose_Reword[402][1] = {}
	tRuneDecompose_Reword[402][1]["RewardItem"] = {}
	tRuneDecompose_Reword[402][1]["RewardItem"][1] = {}
	tRuneDecompose_Reword[402][1]["RewardItem"][1]["Id"] = 3314254
	tRuneDecompose_Reword[402][1]["RewardItem"][1]["Attr"] = "0 10"
	tRuneDecompose_Reword[402][1]["RewardItem"][2] = {}
	tRuneDecompose_Reword[402][1]["RewardItem"][2]["Id"] = 3311759
	tRuneDecompose_Reword[402][1]["RewardItem"][2]["Attr"] = "0 1"
	tRuneDecompose_Reword[402][1]["LogId"] = 18000189
	tRuneDecompose_Reword[402][2] = {}
	tRuneDecompose_Reword[402][2]["RewardItem"] = {}
	tRuneDecompose_Reword[402][2]["RewardItem"][1] = {}
	tRuneDecompose_Reword[402][2]["RewardItem"][1]["Id"] = 3306371
	tRuneDecompose_Reword[402][2]["RewardItem"][1]["Attr"] = "0 10 3"
	tRuneDecompose_Reword[402][2]["RewardItem"][2] = {}
	tRuneDecompose_Reword[402][2]["RewardItem"][2]["Id"] = 3311759
	tRuneDecompose_Reword[402][2]["RewardItem"][2]["Attr"] = "0 1 3"
	tRuneDecompose_Reword[402][2]["LogId"] = 18000189
	tRuneDecompose_Reword[403] = {}
	tRuneDecompose_Reword[403][1] = {}
	tRuneDecompose_Reword[403][1]["RewardItem"] = {}
	tRuneDecompose_Reword[403][1]["RewardItem"][1] = {}
	tRuneDecompose_Reword[403][1]["RewardItem"][1]["Id"] = 3314253
	tRuneDecompose_Reword[403][1]["RewardItem"][1]["Attr"] = "0 10"
	tRuneDecompose_Reword[403][1]["RewardItem"][2] = {}
	tRuneDecompose_Reword[403][1]["RewardItem"][2]["Id"] = 3311759
	tRuneDecompose_Reword[403][1]["RewardItem"][2]["Attr"] = "0 1"
	tRuneDecompose_Reword[403][1]["LogId"] = 18000189
	tRuneDecompose_Reword[403][2] = {}
	tRuneDecompose_Reword[403][2]["RewardItem"] = {}
	tRuneDecompose_Reword[403][2]["RewardItem"][1] = {}
	tRuneDecompose_Reword[403][2]["RewardItem"][1]["Id"] = 3306370
	tRuneDecompose_Reword[403][2]["RewardItem"][1]["Attr"] = "0 10 3"
	tRuneDecompose_Reword[403][2]["RewardItem"][2] = {}
	tRuneDecompose_Reword[403][2]["RewardItem"][2]["Id"] = 3311759
	tRuneDecompose_Reword[403][2]["RewardItem"][2]["Attr"] = "0 1 3"
	tRuneDecompose_Reword[403][2]["LogId"] = 18000189
	--尾兽满级后，每升一星给的奖励
	tRuneDecompose_Reword["BeastsUpLev"] = {}
	tRuneDecompose_Reword["BeastsUpLev"]["RewardItem"] = {}
	tRuneDecompose_Reword["BeastsUpLev"]["RewardItem"][1] = {}
	tRuneDecompose_Reword["BeastsUpLev"]["RewardItem"][1]["Id"] = 3326789
	tRuneDecompose_Reword["BeastsUpLev"]["RewardItem"][1]["Attr"] = "0 1"
	tRuneDecompose_Reword["BeastsUpLev"]["LogId"] = 18000189
	-- ===实力提升道具礼盒
	-- ===索引:tRuneDecompose_Reword[3326789][1]
	-- ===删除: 3326789,1
	tRuneDecompose_Reword[3326789] = {}
	tRuneDecompose_Reword[3326789][1] = {}
	tRuneDecompose_Reword[3326789][1]["LogId"] = 12001715
	tRuneDecompose_Reword[3326789][1]["DeleteItem"] = {}
	tRuneDecompose_Reword[3326789][1]["DeleteItem"][1] = {}
	tRuneDecompose_Reword[3326789][1]["DeleteItem"][1]["Id"] = 3326789 -- 【库】 3326789 【库里没有该物品】[属性:]
	tRuneDecompose_Reword[3326789][1]["RewardStrengthValue"] = {}
	tRuneDecompose_Reword[3326789][1]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力值
	tRuneDecompose_Reword[3326789][1]["RewardEffect"] = {}
	tRuneDecompose_Reword[3326789][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRuneDecompose_Reword[3326789][1]["RewardEffect"]["Effect"] = "angelwing"
	tRuneDecompose_Reword[3326789][2] = {}
	-- ===实力提升道具礼盒
	-- ===索引:tRuneDecompose_Reword[3326789][2]
	-- ===删除: 3326789,1
	tRuneDecompose_Reword[3326789][2]["LogId"] = 12001715
	tRuneDecompose_Reword[3326789][2]["DeleteItem"] = {}
	tRuneDecompose_Reword[3326789][2]["DeleteItem"][1] = {}
	tRuneDecompose_Reword[3326789][2]["DeleteItem"][1]["Id"] = 3326789 -- 【库】 3326789 【库里没有该物品】[属性:]
	tRuneDecompose_Reword[3326789][2]["RewardRepairValue"] = {}
	tRuneDecompose_Reword[3326789][2]["RewardRepairValue"]["Value"] = 10000 -- 修为值, 【需求】10000点修为值
	tRuneDecompose_Reword[3326789][2]["RewardEffect"] = {}
	tRuneDecompose_Reword[3326789][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRuneDecompose_Reword[3326789][2]["RewardEffect"]["Effect"] = "angelwing"
	tRuneDecompose_Reword[3326789][3] = {}
	-- ===实力提升道具礼盒
	-- ===索引:tRuneDecompose_Reword[3326789][3]
	-- ===删除: 3326789,1
	tRuneDecompose_Reword[3326789][3]["LogId"] = 12001715
	tRuneDecompose_Reword[3326789][3]["DeleteItem"] = {}
	tRuneDecompose_Reword[3326789][3]["DeleteItem"][1] = {}
	tRuneDecompose_Reword[3326789][3]["DeleteItem"][1]["Id"] = 3326789 -- 【库】 3326789 【库里没有该物品】[属性:]
	tRuneDecompose_Reword[3326789][3]["RewardCultivation"] = {}
	tRuneDecompose_Reword[3326789][3]["RewardCultivation"]["Value"] = 10000 -- 修行值, 【需求】10000点修行值
	tRuneDecompose_Reword[3326789][3]["RewardEffect"] = {}
	tRuneDecompose_Reword[3326789][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRuneDecompose_Reword[3326789][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===实力提升道具礼盒
	-- ===索引:tRuneDecompose_Reword[3319466][1]
	-- ===删除: 3319466,1
	tRuneDecompose_Reword[3319466] = {}
	tRuneDecompose_Reword[3319466][1] = {}
	tRuneDecompose_Reword[3319466][1]["LogId"] = 12001715
	tRuneDecompose_Reword[3319466][1]["DeleteItem"] = {}
	tRuneDecompose_Reword[3319466][1]["DeleteItem"][1] = {}
	tRuneDecompose_Reword[3319466][1]["DeleteItem"][1]["Id"] = 3319466 -- 【库】PowerBoosterPack[属性:9]
	tRuneDecompose_Reword[3319466][1]["RewardStrengthValue"] = {}
	tRuneDecompose_Reword[3319466][1]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力值
	tRuneDecompose_Reword[3319466][1]["RewardEffect"] = {}
	tRuneDecompose_Reword[3319466][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRuneDecompose_Reword[3319466][1]["RewardEffect"]["Effect"] = "angelwing"


	tRuneDecompose_Reword[3319466][2] = {}
	-- ===实力提升道具礼盒
	-- ===索引:tRuneDecompose_Reword[3319466][2]
	-- ===删除: 3319466,1
	tRuneDecompose_Reword[3319466][2]["LogId"] = 12001715
	tRuneDecompose_Reword[3319466][2]["DeleteItem"] = {}
	tRuneDecompose_Reword[3319466][2]["DeleteItem"][1] = {}
	tRuneDecompose_Reword[3319466][2]["DeleteItem"][1]["Id"] = 3319466 -- 【库】PowerBoosterPack[属性:9]
	tRuneDecompose_Reword[3319466][2]["RewardRepairValue"] = {}
	tRuneDecompose_Reword[3319466][2]["RewardRepairValue"]["Value"] = 10000 -- 修为值, 【需求】10000点修为值
	tRuneDecompose_Reword[3319466][2]["RewardEffect"] = {}
	tRuneDecompose_Reword[3319466][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRuneDecompose_Reword[3319466][2]["RewardEffect"]["Effect"] = "angelwing"


	tRuneDecompose_Reword[3319466][3] = {}
	-- ===实力提升道具礼盒
	-- ===索引:tRuneDecompose_Reword[3319466][3]
	-- ===删除: 3319466,1
	tRuneDecompose_Reword[3319466][3]["LogId"] = 12001715
	tRuneDecompose_Reword[3319466][3]["DeleteItem"] = {}
	tRuneDecompose_Reword[3319466][3]["DeleteItem"][1] = {}
	tRuneDecompose_Reword[3319466][3]["DeleteItem"][1]["Id"] = 3319466 -- 【库】PowerBoosterPack[属性:9]
	tRuneDecompose_Reword[3319466][3]["RewardCultivation"] = {}
	tRuneDecompose_Reword[3319466][3]["RewardCultivation"]["Value"] = 10000 -- 修行值, 【需求】10000点修行值
	tRuneDecompose_Reword[3319466][3]["RewardEffect"] = {}
	tRuneDecompose_Reword[3319466][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRuneDecompose_Reword[3319466][3]["RewardEffect"]["Effect"] = "angelwing"



local tRuneDecompose_Cont={}
	tRuneDecompose_Cont["Percent"]=0.8
	
	tRuneDecompose_Cont["Log"]="0,0,%d,1,18000189,1[1],%d,%d"

	tRuneDecompose_Cont["Attr"]={}
	tRuneDecompose_Cont["Attr"][1]="0 %d"
	tRuneDecompose_Cont["Attr"][2]="0 %d 3"
	--红色神纹经验
	tRuneDecompose_Cont[401]={}
	tRuneDecompose_Cont[401]["RuneId"]=4060001
	tRuneDecompose_Cont[401][1]=100
	
	--蓝色神纹经验
	tRuneDecompose_Cont[402]={}
	tRuneDecompose_Cont[402]["RuneId"]=4040001
	tRuneDecompose_Cont[402][1]=100
	tRuneDecompose_Cont[402][2]=500
	tRuneDecompose_Cont[402][3]=1300
	tRuneDecompose_Cont[402][4]=2500
	tRuneDecompose_Cont[402][5]=4300
	tRuneDecompose_Cont[402][6]=7000
	tRuneDecompose_Cont[402][7]=10700
	tRuneDecompose_Cont[402][8]=15200
	tRuneDecompose_Cont[402][9]=20500
	tRuneDecompose_Cont[402][10]=26500
	tRuneDecompose_Cont[402][11]=33200
	tRuneDecompose_Cont[402][12]=40700
	tRuneDecompose_Cont[402][13]=49000
	tRuneDecompose_Cont[402][14]=58000
	tRuneDecompose_Cont[402][15]=68500
	tRuneDecompose_Cont[402][16]=80500
	tRuneDecompose_Cont[402][17]=94000
	tRuneDecompose_Cont[402][18]=109000
	tRuneDecompose_Cont[402][19]=131500
	tRuneDecompose_Cont[402][20]=154000
	tRuneDecompose_Cont[402][21]=176500
	tRuneDecompose_Cont[402][22]=199000
	tRuneDecompose_Cont[402][23]=221500
	tRuneDecompose_Cont[402][24]=251500
	tRuneDecompose_Cont[402][25]=281500
	tRuneDecompose_Cont[402][26]=311500
	tRuneDecompose_Cont[402][27]=341500
	--黄色神纹经验
	tRuneDecompose_Cont[403]={}
	tRuneDecompose_Cont[403]["RuneId"]=4050001
	tRuneDecompose_Cont[403][1]=100
	tRuneDecompose_Cont[403][2]=600
	tRuneDecompose_Cont[403][3]=1600
	tRuneDecompose_Cont[403][4]=4600
	tRuneDecompose_Cont[403][5]=12600
	tRuneDecompose_Cont[403][6]=27600
	tRuneDecompose_Cont[403][7]=47600
	tRuneDecompose_Cont[403][8]=72600
	tRuneDecompose_Cont[403][9]=104600


--idItemType表示符文, nMonopoly是否赠品,nRuneExp符文追加经验
function RuneDecompose_Reward(nUserId, idItemType, nMonopoly,nRuneExp)
	local nLevel = idItemType%100
	local nItemIndex = math.floor(idItemType / 10000)
	
	if tRuneDecompose_Reword[nItemIndex] == nil then
		return
	end
	
	local nIndex = 1
	
	if nMonopoly ~= 0 then
		nIndex = 2
	end
	
	if tRuneDecompose_Reword[nItemIndex][nIndex] == nil then
		return
	end
	
	--给精粹
	local nRuneId = tRuneDecompose_Cont[nItemIndex]["RuneId"]
	local nPercent = tRuneDecompose_Cont["Percent"]
	local nRuneAllExp =(tRuneDecompose_Cont[nItemIndex][nLevel] + nRuneExp) * nPercent
	local nRuneItem = math.floor(nRuneAllExp / 10)
	
	local sRuneAttr = string.format(tRuneDecompose_Cont["Attr"][nIndex],nRuneItem)
	
	Rune_AddNewRuneAndMsg(nRuneId,sRuneAttr,nUserId)
	Sys_SaveActionFestivalLog(string.format(tRuneDecompose_Cont["Log"],idItemType,nRuneId,nRuneItem),nUserId)
	local sItemName = Get_ItemtypeName(nRuneId).."*"..nRuneItem
	User_TalkChannel2005(string.format(tRewardTemplate_Text["Main"],sItemName),nUserId)
	--给碎片
	RewardTemplate_Reward(tRuneDecompose_Reword[nItemIndex][nIndex], nUserId)
end

function RuneDecompose_ScoreRank(nUserId, nScore, nRank)
	local sText = string.format(tRuneDecompose_Text["Channel2005"]["InRank"], nRank, nScore)
	
	if nRank >= 256 then
		sText = string.format(tRuneDecompose_Text["Channel2005"]["NotInRank"], nScore)
	end
	
	User_TalkChannel2005(sText,nUserId)
end

function RuneDecompose_BeastsUpLev(nUserId)
	RewardTemplate_Reward(tRuneDecompose_Reword["BeastsUpLev"], nUserId)
end

function RuneDecompose_PacketOpen(nItemId,nIndex)
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(tRuneDecompose_Text[nItemId]["Msg"]["Noitem"])
		return
	end
	RewardTemplate_UseItemAndMsg(tRuneDecompose_Reword[nItemId][nIndex])
	Sys_MsgBox(tRuneDecompose_Text[nItemId]["Msg"]["Award"][nIndex])
end
--分解符文
tRuneDecompose["tFunction"] = tRuneDecompose["tFunction"] or {}
table.insert(tRuneDecompose["tFunction"],RuneDecompose_Reward)
--符文仓库分数变化触发
tRuneStorageScoreRank["tFunction"] = tRuneStorageScoreRank["tFunction"] or {}
table.insert(tRuneStorageScoreRank["tFunction"],RuneDecompose_ScoreRank)
--尾兽满级后，每升一星调用的lua
tProcessBeastsUpLev["tFunction"] = tProcessBeastsUpLev["tFunction"] or {}
table.insert(tProcessBeastsUpLev["tFunction"],RuneDecompose_BeastsUpLev)

--尾兽皮肤碎片神秘礼盒
tItemFace[3319466] = 1012
tItem[3319466] = tItem[3319466] or {}
tItem[3319466]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3319466]["DialogueText"] = tRuneDecompose_Text[3319466]
tItem[3319466]["Text1-1"] = {111}
tItem[3319466]["tOption1-1"] = {111,112,113}
tItem[3319466]["OptionFunc111"] = "LinkItemGossipFunc_New</N>3319466</S>2-1"
tItem[3319466]["OptionFunc112"] = "LinkItemGossipFunc_New</N>3319466</S>2-2"
tItem[3319466]["OptionFunc113"] = "LinkItemGossipFunc_New</N>3319466</S>2-3"

tItem[3319466]["Text2-1"] = {211}
tItem[3319466]["tOption2-1"] = {211,212}
tItem[3319466]["OptionFunc211"] = "RuneDecompose_PacketOpen</N>3319466</N>1"

tItem[3319466]["Text2-2"] = {221}
tItem[3319466]["tOption2-2"] = {221,212}
tItem[3319466]["OptionFunc221"] = "RuneDecompose_PacketOpen</N>3319466</N>2"
tItem[3319466]["Text2-3"] = {231}
tItem[3319466]["tOption2-3"] = {231,212}
tItem[3319466]["OptionFunc231"] = "RuneDecompose_PacketOpen</N>3319466</N>3"


--实力提升礼盒
tItemFace[3326789] = 1012
tItem[3326789] = tItem[3326789] or {}
tItem[3326789]["Function"] = function(nItemId) 
	if not Item_ChkItem(nItemId) then
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3326789]["DialogueText"] = tRuneDecompose_Text[3326789]
tItem[3326789]["Text1-1"] = {111}
tItem[3326789]["tOption1-1"] = {111,112,113}
tItem[3326789]["OptionFunc111"] = "LinkItemGossipFunc_New</N>3326789</S>2-1"
tItem[3326789]["OptionFunc112"] = "LinkItemGossipFunc_New</N>3326789</S>2-2"
tItem[3326789]["OptionFunc113"] = "LinkItemGossipFunc_New</N>3326789</S>2-3"

tItem[3326789]["Text2-1"] = {211}
tItem[3326789]["tOption2-1"] = {211,212}
tItem[3326789]["OptionFunc211"] = "RuneDecompose_PacketOpen</N>3326789</N>1"

tItem[3326789]["Text2-2"] = {221}
tItem[3326789]["tOption2-2"] = {221,212}
tItem[3326789]["OptionFunc221"] = "RuneDecompose_PacketOpen</N>3326789</N>2"
tItem[3326789]["Text2-3"] = {231}
tItem[3326789]["tOption2-3"] = {231,212}
tItem[3326789]["OptionFunc231"] = "RuneDecompose_PacketOpen</N>3326789</N>3"
