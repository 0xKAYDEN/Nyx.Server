------------------------------------------------------------------------------------
--Name：            171211[英文征服][活动脚本]1月新年赠品转盘活动
--Creator:      蔡颖静
--Created:     2017/12/11
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--前缀：NewYearRoulette_

--51938  data1 记录装备轮盘单服开出金刚尖钻的数量
--      data2 记录装备轮盘单服开出赤炼石+6的数量
----------------------------------表配置部分--------------------------------------------
local tNewYearRoulette_Data={}

tNewYearRoulette_Data["GlobalId"]=51938
tNewYearRoulette_Data["JinGMaxData"]=50
tNewYearRoulette_Data["ChiLMaxData"]=30

--转盘id
tNewYearRoulette_Data["RouletteId"]={}
tNewYearRoulette_Data["RouletteId"]["Pack"]=3306894
tNewYearRoulette_Data["RouletteId"]["Normal"]=3306875
tNewYearRoulette_Data["RouletteId"]["OnlyJinG"]=3306876
tNewYearRoulette_Data["RouletteId"]["OnlyChiL"]=3306877
tNewYearRoulette_Data["RouletteId"]["BothNone"]=3306878
tNewYearRoulette_Data["RouletteId"]["NoJinG"]=3306895
tNewYearRoulette_Data["RouletteId"]["NoChiL"]=3306896
--领取转盘礼包
tNewYearRoulette_Data[1] = {}
tNewYearRoulette_Data[1]["EmoneyLog"] = "350	20201	0	0	1	"
tNewYearRoulette_Data[1]["RewardItem"]={}
tNewYearRoulette_Data[1]["RewardItem"][1]={}
tNewYearRoulette_Data[1]["RewardItem"][1]["Id"]=3306894
tNewYearRoulette_Data[1]["RewardItem"][1]["Attr"] ="0 1 3"
	--轮盘礼包
tNewYearRoulette_Data[3306894] = {}
tNewYearRoulette_Data[3306894][1] = {}
tNewYearRoulette_Data[3306894][1]["ItemChanceSum"] = 10000
--限量未满
-- 轮盘获得金刚尖钻 0.1%
tNewYearRoulette_Data[3306894][1][1] = {}
tNewYearRoulette_Data[3306894][1][1]["RandomItemChanceType"] = 2
tNewYearRoulette_Data[3306894][1][1]["ItemChance"] = 10
tNewYearRoulette_Data[3306894][1][1]["RewardItem"] = {}
tNewYearRoulette_Data[3306894][1][1]["RewardItem"][1] = {}
tNewYearRoulette_Data[3306894][1][1]["RewardItem"][1]["Id"] = 3306876
tNewYearRoulette_Data[3306894][1][1]["RewardItem"][1]["Attr"] = "0 1"
tNewYearRoulette_Data[3306894][1][1]["GlobalId"] = 51938
tNewYearRoulette_Data[3306894][1][1]["MaxData"] = 50
tNewYearRoulette_Data[3306894][1][1]["Pos"] = 1
tNewYearRoulette_Data[3306894][1][1]["LogId"] = 12000956

-- 轮盘获得赤炼石+6 0.1%
tNewYearRoulette_Data[3306894][1][2] = {}
tNewYearRoulette_Data[3306894][1][2]["RandomItemChanceType"] = 2
tNewYearRoulette_Data[3306894][1][2]["ItemChance"] = 10
tNewYearRoulette_Data[3306894][1][2]["RewardItem"] = {}
tNewYearRoulette_Data[3306894][1][2]["RewardItem"][1] = {}
tNewYearRoulette_Data[3306894][1][2]["RewardItem"][1]["Id"] = 3306877
tNewYearRoulette_Data[3306894][1][2]["RewardItem"][1]["Attr"] = "0 1"
tNewYearRoulette_Data[3306894][1][2]["GlobalId"] = 51938
tNewYearRoulette_Data[3306894][1][2]["Pos"] = 2
tNewYearRoulette_Data[3306894][1][2]["MaxData"] = 30
tNewYearRoulette_Data[3306894][1][2]["LogId"] = 12000956

--一般轮盘 
tNewYearRoulette_Data[3306894][1][3] = {}
tNewYearRoulette_Data[3306894][1][3]["RandomItemChanceType"] = 2
tNewYearRoulette_Data[3306894][1][3]["ItemChance"] = 9980
tNewYearRoulette_Data[3306894][1][3]["RewardItem"] = {}
tNewYearRoulette_Data[3306894][1][3]["RewardItem"][1] = {}
tNewYearRoulette_Data[3306894][1][3]["RewardItem"][1]["Id"] = 3306875
tNewYearRoulette_Data[3306894][1][3]["RewardItem"][1]["Attr"] = "0 1"
tNewYearRoulette_Data[3306894][1][3]["LogId"] = 12000956

--限量全满
tNewYearRoulette_Data[3306894][2]={}
tNewYearRoulette_Data[3306894][2]["ItemChanceSum"] = 10000

tNewYearRoulette_Data[3306894][2][1] = {}
tNewYearRoulette_Data[3306894][2][1]["RandomItemChanceType"] = 2
tNewYearRoulette_Data[3306894][2][1]["ItemChance"] = 10000
tNewYearRoulette_Data[3306894][2][1]["RewardItem"] = {}
tNewYearRoulette_Data[3306894][2][1]["RewardItem"][1] = {}
tNewYearRoulette_Data[3306894][2][1]["RewardItem"][1]["Id"] = 3306878
tNewYearRoulette_Data[3306894][2][1]["RewardItem"][1]["Attr"] = "0 1"
tNewYearRoulette_Data[3306894][2][1]["LogId"] = 12000956

--单个限量满（金刚坚钻）
tNewYearRoulette_Data[3306894][3]={}
tNewYearRoulette_Data[3306894][3]["ItemChanceSum"] = 10000

tNewYearRoulette_Data[3306894][3][1] = {}
tNewYearRoulette_Data[3306894][3][1]["RandomItemChanceType"] = 2
tNewYearRoulette_Data[3306894][3][1]["ItemChance"] = 9990
tNewYearRoulette_Data[3306894][3][1]["RewardItem"] = {}
tNewYearRoulette_Data[3306894][3][1]["RewardItem"][1] = {}
tNewYearRoulette_Data[3306894][3][1]["RewardItem"][1]["Id"] = 3306895
tNewYearRoulette_Data[3306894][3][1]["RewardItem"][1]["Attr"] = "0 1"
tNewYearRoulette_Data[3306894][3][1]["LogId"] = 12000956

tNewYearRoulette_Data[3306894][3][2] = {}
tNewYearRoulette_Data[3306894][3][2]["RandomItemChanceType"] = 2
tNewYearRoulette_Data[3306894][3][2]["ItemChance"] = 10
tNewYearRoulette_Data[3306894][3][2]["RewardItem"] = {}
tNewYearRoulette_Data[3306894][3][2]["RewardItem"][1] = {}
tNewYearRoulette_Data[3306894][3][2]["RewardItem"][1]["Id"] = 3306877
tNewYearRoulette_Data[3306894][3][2]["RewardItem"][1]["Attr"] = "0 1"
tNewYearRoulette_Data[3306894][3][2]["GlobalId"] = 51938
tNewYearRoulette_Data[3306894][3][2]["Pos"] = 2
tNewYearRoulette_Data[3306894][3][2]["MaxData"] = 30
tNewYearRoulette_Data[3306894][3][2]["LogId"] = 12000956

--单个限量满（赤炼石+6）
tNewYearRoulette_Data[3306894][4]={}
tNewYearRoulette_Data[3306894][4]["ItemChanceSum"] = 10000

tNewYearRoulette_Data[3306894][4][1] = {}
tNewYearRoulette_Data[3306894][4][1]["RandomItemChanceType"] = 2
tNewYearRoulette_Data[3306894][4][1]["ItemChance"] = 9990
tNewYearRoulette_Data[3306894][4][1]["RewardItem"] = {}
tNewYearRoulette_Data[3306894][4][1]["RewardItem"][1] = {}
tNewYearRoulette_Data[3306894][4][1]["RewardItem"][1]["Id"] = 3306896
tNewYearRoulette_Data[3306894][4][1]["RewardItem"][1]["Attr"] = "0 1"
tNewYearRoulette_Data[3306894][4][1]["LogId"] = 12000956

tNewYearRoulette_Data[3306894][4][2] = {}
tNewYearRoulette_Data[3306894][4][2]["RandomItemChanceType"] = 2
tNewYearRoulette_Data[3306894][4][2]["ItemChance"] = 10
tNewYearRoulette_Data[3306894][4][2]["RewardItem"] = {}
tNewYearRoulette_Data[3306894][4][2]["RewardItem"][1] = {}
tNewYearRoulette_Data[3306894][4][2]["RewardItem"][1]["Id"] = 3306876
tNewYearRoulette_Data[3306894][4][2]["RewardItem"][1]["Attr"] = "0 1"
tNewYearRoulette_Data[3306894][4][2]["GlobalId"] = 51938
tNewYearRoulette_Data[3306894][4][2]["Pos"] = 1
tNewYearRoulette_Data[3306894][4][2]["MaxData"] = 50
tNewYearRoulette_Data[3306894][4][2]["LogId"] = 12000956



--赤练石+3（赠）*2包
tNewYearRoulette_Data[3306879]={}
tNewYearRoulette_Data[3306879]["LogId"] =12000956
tNewYearRoulette_Data[3306879]["DeleteItem"] = {}
tNewYearRoulette_Data[3306879]["DeleteItem"][1]={}
tNewYearRoulette_Data[3306879]["DeleteItem"][1]["Id"]=3306879
tNewYearRoulette_Data[3306879]["RewardItem"] = {}
tNewYearRoulette_Data[3306879]["RewardItem"][1]={}
tNewYearRoulette_Data[3306879]["RewardItem"][1]["Id"]=730003
tNewYearRoulette_Data[3306879]["RewardItem"][1]["Attr"] ="0 2 3"

--龙珠（赠）*2包
tNewYearRoulette_Data[3306880]={}
tNewYearRoulette_Data[3306880]["LogId"] =12000956
tNewYearRoulette_Data[3306880]["DeleteItem"] = {}
tNewYearRoulette_Data[3306880]["DeleteItem"][1]={}
tNewYearRoulette_Data[3306880]["DeleteItem"][1]["Id"]=3306880
tNewYearRoulette_Data[3306880]["RewardItem"] = {}
tNewYearRoulette_Data[3306880]["RewardItem"][1]={}
tNewYearRoulette_Data[3306880]["RewardItem"][1]["Id"]=1088000
tNewYearRoulette_Data[3306880]["RewardItem"][1]["Attr"] ="0 2 3"

--小固化石（赠）*1包
tNewYearRoulette_Data[3306881]={}
tNewYearRoulette_Data[3306881]["LogId"] =12000956
tNewYearRoulette_Data[3306881]["DeleteItem"] = {}
tNewYearRoulette_Data[3306881]["DeleteItem"][1]={}
tNewYearRoulette_Data[3306881]["DeleteItem"][1]["Id"]=3306881
tNewYearRoulette_Data[3306881]["RewardItem"] = {}
tNewYearRoulette_Data[3306881]["RewardItem"][1]={}
tNewYearRoulette_Data[3306881]["RewardItem"][1]["Id"]=723694
tNewYearRoulette_Data[3306881]["RewardItem"][1]["Attr"] ="0 1 3"

--金刚尖钻（赠）*1包
tNewYearRoulette_Data[3306882]={}
tNewYearRoulette_Data[3306882]["LogId"] =12000956
tNewYearRoulette_Data[3306882]["DeleteItem"] = {}
tNewYearRoulette_Data[3306882]["DeleteItem"][1]={}
tNewYearRoulette_Data[3306882]["DeleteItem"][1]["Id"]=3306882
tNewYearRoulette_Data[3306882]["RewardItem"] = {}
tNewYearRoulette_Data[3306882]["RewardItem"][1]={}
tNewYearRoulette_Data[3306882]["RewardItem"][1]["Id"]=1200005
tNewYearRoulette_Data[3306882]["RewardItem"][1]["Attr"] ="0 1 3"

--赤练石+6（赠）*1包
tNewYearRoulette_Data[3306883]={}
tNewYearRoulette_Data[3306883]["LogId"] =12000956
tNewYearRoulette_Data[3306883]["DeleteItem"] = {}
tNewYearRoulette_Data[3306883]["DeleteItem"][1]={}
tNewYearRoulette_Data[3306883]["DeleteItem"][1]["Id"]=3306883
tNewYearRoulette_Data[3306883]["RewardItem"] = {}
tNewYearRoulette_Data[3306883]["RewardItem"][1]={}
tNewYearRoulette_Data[3306883]["RewardItem"][1]["Id"]=730006
tNewYearRoulette_Data[3306883]["RewardItem"][1]["Attr"] ="0 1 3"

--赤练石+3（赠）*1包
tNewYearRoulette_Data[3306884]={}
tNewYearRoulette_Data[3306884]["LogId"] =12000956
tNewYearRoulette_Data[3306884]["DeleteItem"] = {}
tNewYearRoulette_Data[3306884]["DeleteItem"][1]={}
tNewYearRoulette_Data[3306884]["DeleteItem"][1]["Id"]=3306884
tNewYearRoulette_Data[3306884]["RewardItem"] = {}
tNewYearRoulette_Data[3306884]["RewardItem"][1]={}
tNewYearRoulette_Data[3306884]["RewardItem"][1]["Id"]=730003
tNewYearRoulette_Data[3306884]["RewardItem"][1]["Attr"] ="0 1 3"

--转盘
tNewYearRoulette_Data["Roulette"]={}
tNewYearRoulette_Data["Roulette"][3306875]=6858
tNewYearRoulette_Data["Roulette"][3306876]=6859
tNewYearRoulette_Data["Roulette"][3306877]=6860
tNewYearRoulette_Data["Roulette"][3306878]=6861
tNewYearRoulette_Data["Roulette"][3306895]=6862
tNewYearRoulette_Data["Roulette"][3306896]=6863

----------------------------------逻辑部分---------------------------------------------
--打开礼包
function NewYearRoulette_OpenPackage(nItemId)
	--判断是否存在物品
	if not Item_ChkItem(nItemId) then
		return
	end
	--计算背包空间
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tNewYearRoulette_Data[nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tNewYearRoulette_Data[nItemId])
	local nNeedSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nNeedSpace) then
		local ssText=string.format(tNewYearRoulette_Text["SystemTips"]["BagFull"],nNeedSpace)
		User_TalkChannel2005(ssText)
		return
	end
	if RewardTemplate_UseItem(tNewYearRoulette_Data[nItemId]) then
		return 
	end
end

--打开轮盘礼包
function NewYearRoulette_OpenRoulettePackage(nItemId)
--活动过期 删除
	if not Sys_ChkFullTime(tActivityTime["NewYearRoulette"]["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
			return User_TalkChannel2005(tNewYearRoulette_Text["SystemTips"]["TimeOut"])
		end 
	end
		--计算背包空间
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tNewYearRoulette_Data[nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tNewYearRoulette_Data[nItemId])
	local nNeedSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nNeedSpace) then
		local ssText=string.format(tNewYearRoulette_Text["SystemTips"]["BagFull"],nNeedSpace)
		User_TalkChannel2005(ssText)
		return
	end
	local nGlobalId=tNewYearRoulette_Data["GlobalId"]
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local nJinG=Get_SysDynaGlobalData(nGlobalId,1)
		local nChiL=Get_SysDynaGlobalData(nGlobalId,2)
		----限量未满
		if nJinG<tNewYearRoulette_Data["JinGMaxData"] and nChiL<tNewYearRoulette_Data["ChiLMaxData"] then 
			RewardTemplate_NewRandomNoTip(tNewYearRoulette_Data[nItemId],1)
		--限量全满
		elseif nJinG>=tNewYearRoulette_Data["JinGMaxData"] and nChiL>=tNewYearRoulette_Data["ChiLMaxData"] then 
			RewardTemplate_NewRandomNoTip(tNewYearRoulette_Data[nItemId],2)
		--单个限量满（金刚坚钻）
		elseif nJinG>=tNewYearRoulette_Data["JinGMaxData"] and nChiL<tNewYearRoulette_Data["ChiLMaxData"] then 
			RewardTemplate_NewRandomNoTip(tNewYearRoulette_Data[nItemId],3)
		--单个限量满（赤炼石+6）
		elseif nJinG<tNewYearRoulette_Data["JinGMaxData"] and nChiL>=tNewYearRoulette_Data["ChiLMaxData"] then 
			RewardTemplate_NewRandomNoTip(tNewYearRoulette_Data[nItemId],4)
		end
	end
end

--领取转盘礼包
function NewYearRoulette_GetRoulettePack()
--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tNewYearRoulette_Data[1])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tNewYearRoulette_Data[1])
	local nNeedSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nNeedSpace) then
		User_TalkChannel2005(tNewYearRoulette_Text["SystemTips"]["GetFail"])
		return
	end
--背包已有
	if Item_ChkItem(tNewYearRoulette_Data["RouletteId"]["Pack"]) or Item_ChkItem(tNewYearRoulette_Data["RouletteId"]["Normal"]) or 
		Item_ChkItem(tNewYearRoulette_Data["RouletteId"]["OnlyJinG"]) or Item_ChkItem(tNewYearRoulette_Data["RouletteId"]["OnlyChiL"]) or 
		Item_ChkItem(tNewYearRoulette_Data["RouletteId"]["BothNone"]) or Item_ChkItem(tNewYearRoulette_Data["RouletteId"]["NoJinG"]) or 
		Item_ChkItem(tNewYearRoulette_Data["RouletteId"]["NoChiL"]) then 
		LinkNpcGossipFunc_New(22429,"1-4")
		return
	end 
--领取成功
	if RewardTemplate_UseItem(tNewYearRoulette_Data[1]) then
		LinkNpcGossipFunc_New(22429,"1-5")
		return 
	end
end 

-- -- --使用轮盘
-- function NewYearRoulette_UseRoulette(nItemId)
	-- if not Item_ChkItem(nItemId) then
		-- return
	-- end
	-- Roulette_Use(tNewYearRoulette_Data["Roulette"][nItemId])
-- end
----------------------------------NPC部分---------------------------------------------
tNpcFace[3537] = 134
tNpcGossip[22429]= tNpcGossip[22429] or DefaultNpc:new{}
tNpcGossip[22429]["OptionHidden"] = 1
--活动前
tNpcGossip[22429]["Text1-1"] = {111,112}
tNpcGossip[22429]["Text111"] = tNewYearRoulette_Text[22429]["Text111"]
tNpcGossip[22429]["Text112"] = tNewYearRoulette_Text[22429]["Text112"]
tNpcGossip[22429]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["NewYearRoulette"]["BeforeActivityTime"])
end
tNpcGossip[22429]["tOption1-1"] = {1}
tNpcGossip[22429]["Option1"] = tNewYearRoulette_Text[22429]["Option1"]

--活动中
tNpcGossip[22429]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[22429]["Text121"] =tNewYearRoulette_Text[22429]["Text121"]
tNpcGossip[22429]["Text122"] =tNewYearRoulette_Text[22429]["Text122"]
tNpcGossip[22429]["Text123"] =tNewYearRoulette_Text[22429]["Text123"]
tNpcGossip[22429]["Text124"] =tNewYearRoulette_Text[22429]["Text124"]
tNpcGossip[22429]["Text125"] =tNewYearRoulette_Text[22429]["Text125"]
tNpcGossip[22429]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tActivityTime["NewYearRoulette"]["ActivityTime"])
end
tNpcGossip[22429]["tOption1-2"] = {2,3}
tNpcGossip[22429]["Option2"] = tNewYearRoulette_Text[22429]["Option2"]
tNpcGossip[22429]["OptionFunc2"]="NewYearRoulette_GetRoulettePack"
tNpcGossip[22429]["Option3"] = tNewYearRoulette_Text[22429]["Option3"] 

--活动后对白
tNpcGossip[22429]["Text1-3"] = {151}
tNpcGossip[22429]["Text151"] =tNewYearRoulette_Text[22429]["Text151"]
tNpcGossip[22429]["tOption1-3"] = {6}
tNpcGossip[22429]["Option6"] =tNewYearRoulette_Text[22429]["Option6"]

--领取失败 已有转盘
tNpcGossip[22429]["Text1-4"] = {131}
tNpcGossip[22429]["Text131"] =tNewYearRoulette_Text[22429]["Text131"]
tNpcGossip[22429]["tOption1-4"] = {4}
tNpcGossip[22429]["Option4"] =tNewYearRoulette_Text[22429]["Option4"]

--领取成功
tNpcGossip[22429]["Text1-5"] = {141}
tNpcGossip[22429]["Text141"] =tNewYearRoulette_Text[22429]["Text141"]
tNpcGossip[22429]["tOption1-5"] = {5}
tNpcGossip[22429]["Option5"] =tNewYearRoulette_Text[22429]["Option5"]



---------------------------------物品部分---------------------------------------------
--打开礼包
tItem[3306879] = tItem[3306879] or {}
tItem[3306879]["Function"] = function(nItemId,sItemName)
	NewYearRoulette_OpenPackage(nItemId)
end
tItem[3306880] = tItem[3306879]
tItem[3306881] = tItem[3306879]
tItem[3306882] = tItem[3306879]
tItem[3306883] = tItem[3306879]
tItem[3306884] = tItem[3306879]

--轮盘使用
-- 3306875	NewYearRoulette	6858
tItem[3306875] = tItem[3306875] or {}
tItem[3306875]["Function"] = function(nItemId,sItemName)
	-- NewYearRoulette_UseRoulette(nItemId)
	RouletteMould_Main(6858)
end

-- 3306876	NewYearRoulette		6859
tItem[3306876] = tItem[3306876] or {}
tItem[3306876]["Function"] = function(nItemId,sItemName)
	RouletteMould_Main(6859)
end

-- 3306877	NewYearRoulette		6860
tItem[3306877] = tItem[3306877] or {}
tItem[3306877]["Function"] = function(nItemId,sItemName)
	RouletteMould_Main(6860)
end

-- 3306878	NewYearRoulette	6861
tItem[3306878] = tItem[3306878] or {}
tItem[3306878]["Function"] = function(nItemId,sItemName)
	RouletteMould_Main(6861)
end

-- 3306895	NewYearRoulette		6862
tItem[3306895] = tItem[3306895] or {}
tItem[3306895]["Function"] = function(nItemId,sItemName)
	RouletteMould_Main(6862)
end

-- 3306896	NewYearRoulette		6863
tItem[3306896] = tItem[3306896] or {}
tItem[3306896]["Function"] = function(nItemId,sItemName)
	RouletteMould_Main(6863)
end

--轮盘礼包使用
tItem[3306894] = tItem[3306894] or {}
tItem[3306894]["Function"] = function(nItemId,sItemName)
	NewYearRoulette_OpenRoulettePackage(nItemId)
end
