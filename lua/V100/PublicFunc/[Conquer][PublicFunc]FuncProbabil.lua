----------------------------------------------------------------------------
--Name:		[征服][公用函数]概率接口函数.lua
--Purpose:	概率接口
--Creator: 	郑鋆
--Created:	2015/03/06
----------------------------------------------------------------------------
-- 函数命名前缀词：Probabil_

-- 概率测试配置表
tProbabil_Test = {}

-----------------------------模板---------------------------------------------
-- 概率配置表参考
-- tProbabil_Award = {}
-- tProbabil_Award[711897] = {}
-- tProbabil_Award[711897][1] = {}
-- tProbabil_Award[711897][1]["ItemChanceSum"] = 1000						--------------相同概率基数的总数

-- tProbabil_Award[711897][1][1] = {}
-- tProbabil_Award[711897][1][1]["RandomItemChanceType"] = 2				--------------概率的类型（1为绝对概率触发，2为相同概率基数，3为各自概率基数）
-- tProbabil_Award[711897][1][1]["ItemChance"] = 600						--------------概率
-- tProbabil_Award[711897][1][1]["Item_1"] = 1								--------------对应的物品ID或者其它自己定义的数字用来概率测试函数的分组

-- tProbabil_Award[711897][1][2] = {}
-- tProbabil_Award[711897][1][2]["RandomItemChanceType"] = 2
-- tProbabil_Award[711897][1][2]["ItemChance"] = 300
-- tProbabil_Award[711897][1][2]["Item_1"] = 5

-- tProbabil_Award[711897][1][3] = {}
-- tProbabil_Award[711897][1][3]["RandomItemChanceType"] = 2
-- tProbabil_Award[711897][1][3]["ItemChance"] = 90
-- tProbabil_Award[711897][1][3]["Item_1"] = 10

-- tProbabil_Award[711897][1][4] = {}
-- tProbabil_Award[711897][1][4]["RandomItemChanceType"] = 2
-- tProbabil_Award[711897][1][4]["ItemChance"] = 10
-- tProbabil_Award[711897][1][4]["Item_1"] = 100

-- tProbabil_Award[711897][1][5] = {}
-- tProbabil_Award[711897][1][5]["RandomItemChanceType"] = 3
-- tProbabil_Award[711897][1][5]["ItemSelfChanceSum"] = 100					--------------各自概率基数次数
-- tProbabil_Award[711897][1][5]["ItemChance"] = 10							--------------概率
-- tProbabil_Award[711897][1][5]["Item_1"] = 1000

-- tProbabil_Award[711897][1][6] = {}
-- tProbabil_Award[711897][1][6]["RandomItemChanceType"] = 1
-- tProbabil_Award[711897][1][6]["Item_1"] = 10000

-- tProbabil_Test[711897] = {}																	--------------概率测试表的ID一般为礼包的ID或者怪物ID															
-- tProbabil_Test[711897]["Table"] = tProbabil_Award[711897]									--------------对应要测试的概率表
-- tProbabil_Test[711897]["Index"] = {1}														--------------对应要测试的概率表里面的下标，一般是填1
-- tProbabil_Test[711897]["Times"] = 10000														--------------测试规模（次数）
-- tProbabil_Test[711897]["TableForEach"] = {"xingtian","kuafu","houyi","fengbo"}              	--------------装备掉落下标，装备副本区分BOSS用，也用于多文件名
-- tProbabil_Test[711897]["LogName"] = "2015周年庆"												--------------LOG文件名
-- tProbabilTest[90725]["MultiLog"] = 1                                                      	--------------配置为1则处理多文件输出
-- tProbabil_Test[711897]["IsGroup"] = 1														--------------配置为1则处理分组汇总统计
-- tProbabil_Test[711897]["Group"] = {}          												--------------分组表，如下，下面里面的值对应概率表里的Item_1的值                                          
-- tProbabil_Test[711897]["Group"]["1个赞"] = {1}
-- tProbabil_Test[711897]["Group"]["5个赞"] = {5} 
-- tProbabil_Test[711897]["Group"]["10个赞"] = {10} 
-- tProbabil_Test[711897]["Group"]["100个赞"] = {100}

-- Probabil_Main(711897,1000)                                                              --------------第2个参数可以自定义测试规模，取代配置表里的次数配置

-----------------------------模板---------------------------------------------

local tProbabil_Text = {}
	tProbabil_Text["ErrorType0"] = "传入表的的nIndex：%d的索引%d中RandomItemChanceType范围异常,应该为（1-3）！"
	tProbabil_Text["ErrorType1"] = "传入的参数不是表类型,请查看表的nIndex：%d配置！"
	tProbabil_Text["ErrorType2"] = "传入的各自概率的总概率小于1,请查看表的nIndex：%d配置！"
	tProbabil_Text["Absolute"] = "  绝对触发的数据用例值："
	tProbabil_Text["Award"] = "  相同概率基数测试用例值："
	tProbabil_Text["SelfItemChance"] = "  各自概率基数测试用例值："
	tProbabil_Text["TestId"] = "测试序列id:"
	tProbabil_Text["Statistics"] = "===========================统计=================================="
	tProbabil_Text["TestTimes"] = "测试次数:"
	tProbabil_Text["CountTime"] = "%s%d出现%d次	概率分布值为：%f"
	tProbabil_Text["NewCountTime"] = "%s%s出现%d次	概率分布值为：%f"
	tProbabil_Text["NoGroup"] = "未分组"
	tProbabil_Text["GroupTime"] = "%s的次数为：%d次，概率为：%f"
	tProbabil_Text["ErrorType3"] = "nTimes不等于表长度%d"
	tProbabil_Text["Index"] = "===========================以下为%d的测试概率=================================="

-- 随机概率接口
function Probabil_RandomAward(tTable,nIndex,nTimes)
	-- 用于信息回收
	local tRecycleMsg = {}
	-- 构造一个奖励源表，用于存放相同概率基数的数据
	local tAwardSource = {}
	-- 构造一个奖励源表，用于存放拥有各自概率的数据
	local tSelfItemChanceAwardSource = {}
	-- 构造一个奖励源表，用于存放绝对触发的数据
	local tAbsoluteSource = {}
	-- 定义一个表来存传入的奖励表
	local tAwardChart = tTable[nIndex]
	local nRandom = 0
	
	-- 奖励解析部分
	if type(tAwardChart) == "table" then
		-- 此处对奖励类型分类存入奖励源表
		-- for i = 1,#tAwardChart do
			-- local v = tAwardChart[i]

			-- local randomItemChanceType = v.RandomItemChanceType or 0
			-- if randomItemChanceType == 1 then
				-- table.insert(tAbsoluteSource, v)
			-- elseif randomItemChanceType == 2 then
				-- table.insert(tAwardSource, v)
			-- elseif randomItemChanceType == 3 then
				-- table.insert(tSelfItemChanceAwardSource, v)
			-- else
				-- tRecycleMsg.ErrorType = 0
				-- tRecycleMsg.Text = string.format(tProbabil_Text["ErrorType0"],nIndex,i)
				-- return -1,tRecycleMsg
			-- end
		-- end
		for i,v in pairs(tAwardChart) do
			if type(v) == "table" then
				if nTimes ~= nil and nTimes > 1 then
					v["TestIndex"] = i
				end
				
				-- local tCopyTable = CommonFunc_Copy(v)
	
				-- tCopyTable["TestIndex"] = i
				local randomItemChanceType = v["RandomItemChanceType"] or 0

				if randomItemChanceType == 1 then
					table.insert(tAbsoluteSource, v)
				elseif randomItemChanceType == 2 then
					nRandom = nRandom + v["ItemChance"]
					table.insert(tAwardSource, v)
				elseif randomItemChanceType == 3 then
					table.insert(tSelfItemChanceAwardSource, v)
				-- else
					-- tRecycleMsg.ErrorType = 0
					-- tRecycleMsg.Text = string.format(tProbabil_Text["ErrorType0"],nIndex,i)
					-- return -1,tRecycleMsg
				end
			end
		end
	else
		tRecycleMsg.ErrorType = 1
		tRecycleMsg.Text = string.format(tProbabil_Text["ErrorType1"],nIndex)
		return -1, tRecycleMsg
	end
	
	-- 奖励随机部分
	-- 数量级。>1表示为概率测试，
	local nTimes = nTimes or 1
	-- 结果表
	local tResults = {}
	
	for _times = 1, nTimes do
		---绝对触发部分
		local nAbsoluteNum = #tAbsoluteSource or 0
		local Tmp_tAbsolute = {}
		if nAbsoluteNum ~= 0 then
			for i = 1, nAbsoluteNum do
				table.insert(Tmp_tAbsolute, tAbsoluteSource[i])
			end
		end
		
		---相同概率基数	概率部分
		local nCommonNum = #tAwardSource or 0
		local Tmp_tAward = {}
		local nItemChanceSum = tAwardChart["ItemChanceSum"]
		
		if nCommonNum ~= 0 then
			if nRandom ~= nItemChanceSum then
				Sys_SaveAbnormalLog("该随机概率表配置的概率不是百分百。索引为：" .. nIndex)
			end
			
			--随机数
			local nRandomNum = math.random(1,nItemChanceSum)
			
			local nTemp = 0
			for i = 1, nCommonNum do
				nTemp = nTemp + tAwardSource[i]["ItemChance"]
				if nRandomNum <= nTemp then
					table.insert(Tmp_tAward,tAwardSource[i])
					break
				end
			end
		end
		
		---各自概率部分
		local nEachNum = #tSelfItemChanceAwardSource or 0
		local Tmp_tSelfItemChanceAward = {}
		
		if nEachNum ~= 0 then
			for i = 1, nEachNum do
				local nItemSelfChanceSum = tSelfItemChanceAwardSource[i]["ItemSelfChanceSum"]
				local nItemChance = tSelfItemChanceAwardSource[i]["ItemChance"]
				
				if nItemSelfChanceSum >= 1 then
					if math.random(1,nItemSelfChanceSum) <= nItemChance then
						table.insert(Tmp_tSelfItemChanceAward,tSelfItemChanceAwardSource[i])
					end
				else
					tRecycleMsg.ErrorType = 2
					tRecycleMsg.Text = string.format(tProbabil_Text["ErrorType2"],nIndex)
					return -1, tRecycleMsg
				end
			end
		end
		
		table.insert(tResults,
			{tAward = Tmp_tAward,
			tSelfItemChanceAward = Tmp_tSelfItemChanceAward,
			tAbsoluteAward = Tmp_tAbsolute
			}
		)
	end

	return 0,tResults
end

---------------------------------------------- 概率测试接口
-- 输出文件的文件名
function Probabil_GetLogName(nTempIndex)
	local sLogName = "概率测试.log"
	if tProbabil_Test[nTempIndex]["LogName"] ~= nil and tProbabil_Test[nTempIndex]["LogName"] ~= "" then
		sLogName = tProbabil_Test[nTempIndex]["LogName"]
	end

	sLogName = string.format("syslog/%s",sLogName)
	return sLogName
end

-- 初始化数据源表
function Probabil_InitTables(nTempIndex)
	local tTable = tProbabil_Test[nTempIndex]["Table"]
	local tEnum = {}

	table.insert(tEnum,tTable)
	return tEnum
end

-- 解析奖励说明
local tProbabil_Analysis = {}
	tProbabil_Analysis["RewardZhenQi"] = "真气*"
	tProbabil_Analysis["RewardCultivation"] = "修行值*"
	tProbabil_Analysis["RewardMoney"] = "银两*"
	tProbabil_Analysis["RewardEMoney"] = "天石*"
	tProbabil_Analysis["RewardEMoneyMono"] = "赠品天石*"
	tProbabil_Analysis["RewardStrengthValue"] = "气力值*"
	tProbabil_Analysis["RewardExp"] = "经验点经验*"
	tProbabil_Analysis["RewardExpTime"] = "经验时间经验*"
	tProbabil_Analysis["RewardExpPercent"] = "经验百分比经验*"
	tProbabil_Analysis["RewardMulExpTime"] = "X倍经验*"
	tProbabil_Analysis["RewardBless"] = "祝福时间*"
	tProbabil_Analysis["RewardFreePractNum"] = "免费修炼次数*"
	tProbabil_Analysis["RewardRidingPoint"] = "骑马积分*"
	tProbabil_Analysis["RewardRepairValue"] = "修为值*"
	tProbabil_Analysis["RewardGoldenLeague"] = "黄金联赛积分*"
	tProbabil_Analysis["RewardExploitValue"] = "跨服功勋值*"
	tProbabil_Analysis["RewardExpTimeSpecial"] = "特殊经验时间经验*"
	tProbabil_Analysis["RewardExpPercentSpecial"] = "特殊经验百分比经验*"
	tProbabil_Analysis["RewardStrengthAttr"] = "力量属性点*"
	tProbabil_Analysis["RewardSpeedAttr"] = "敏捷属性点*"
	tProbabil_Analysis["RewardHealthAttr"] = "体质属性点*"
	tProbabil_Analysis["RewardSoulAttr"] = "精神属性点*"
	tProbabil_Analysis["RewardAttrPoint"] = "自由属性点*"


--------------- 获得称号
--------------- ["Reward"]["RewardTitle"]
--------------- 获得翅膀
--------------- ["Reward"]["RewardWing"]
--------------- 获得技能
--------------- ["Reward"]["RewardMagic"]
	
function Probabil_Analysis(tInfo)
	local str = "获得了："
	local nTest = 1

	for i,v in pairs(tInfo) do
		nTest = nTest + 1
		-- 获得物品
		if string.find(i,"RewardItem") then
			for m,n in pairs (v) do
				local sItemtr = Probabil_AnalysisItem(n,nTest)
				str = str .. "[" .. sItemtr .. "]"
			end
		elseif string.find(i,"RewardProItem") then
			for m,n in pairs (v) do
				local sItemtr = Probabil_AnalysisItem(n)
				str = str .. "[" .. sItemtr .. "]"
			end
		-- 获得神纹
		elseif string.find(i,"RewardRune") then
			for m,n in pairs (v) do
				local nItemId = n["Id"]
				local sItemName = tRewardTemplate_Text["ItemName"][nItemId] or Get_ItemtypeName(nItemId)
				str = str .. "[" .. sItemName .. "]"
			end
		-- 获得随机玄宝
		elseif string.find(i,"RewardRXuanB") then
			for m,n in pairs (v) do
				local nItemId = n["Id"]
				local sItemName = tRewardTemplate_Text["ItemName"][nItemId] or Get_ItemtypeName(nItemId)
				str = str .. "[" .. sItemName .. "]"
			end
		elseif tProbabil_Analysis[i] ~= nil then
			str = str .. tProbabil_Analysis[i] .. v["Value"] .. ","
		end
	end

	return str
end

function Probabil_AnalysisItem(tRewardItem,nTest)
	local str = ""
	local nItemId = tRewardItem["Id"]
	local sAttr = tRewardItem["Attr"]
	local sItemName = tRewardTemplate_Text["ItemName"][nItemId] or Get_ItemtypeName(nItemId)
	str = sItemName .. ",该物品属性为:"

	if sAttr == nil then
		str = str .. "数量*1"
		return str
	end

	local tItemAttr = Sys_Split(sAttr," ")
	if tItemAttr[2] == nil then
		str = str .. "数量*1"
		return str
	end

	str = str .. "数量*" .. tItemAttr[2]
	
	if tItemAttr[3] == nil then
		return str
	elseif tonumber(tItemAttr[3]) == 0 then
		str = str .. "," .. "非赠"
	else
		str = str .. "," .. "赠品"
	end

	if tItemAttr[4] == nil then
		return str
	end

	if tItemAttr[5] == nil then
		if tonumber(tItemAttr[4]) > 0 then
			str = str .. "," .. "未激活时效时间" .. tonumber(tItemAttr[4])/1440 .."天"
		end
		
		return str
	end

	if tonumber(tItemAttr[5]) > 0 then
		str = str .. "," .. "激活时效时间" .. tonumber(tItemAttr[4])/1440 .."天"
	else
		str = str .. "," .. "未激活时效时间" .. tonumber(tItemAttr[4])/1440 .."天"
	end

	if tItemAttr[8] == nil then
		return str
	elseif tonumber(tItemAttr[8]) > 0 then
		str = str .. "," .. "神佑*" .. tItemAttr[8]
	end

	if tItemAttr[11] == nil then
		return str
	elseif tonumber(tItemAttr[11]) > 0 then
		str = str .. "," .. "追加*" .. tItemAttr[8]
	end

	if tItemAttr[12] == nil then
		return str
	elseif tItemAttr[13] == nil and tonumber(tItemAttr[12]) > 0 then
		str = str .. "," .. "1洞"
		return str
	elseif tonumber(tItemAttr[12]) > 0 and tonumber(tItemAttr[13]) > 0 then
		str = str .. "," .. "2洞"
	end

	return str
end

-- 输出概率测试log文件
function Probabil_AwardDetails(nTempIndex,tTable,nTimes,sLogName,nIndex)
	local nIsGroup = tProbabil_Test[nTempIndex]["IsGroup"]
	-- log文件名
	local sLogName = sLogName or "TestUnit.log"
	-- 概率配置表
	local tTable = tTable or {}
	-- 循环次数
	local nTimes = nTimes or 1
	local sAbsoluteAward = nTimes > 1 and tProbabil_Text["Absolute"] or ""
	local sAward = nTimes > 1 and tProbabil_Text["Award"] or ""
	local sSelfItemChanceAward = nTimes > 1 and tProbabil_Text["SelfItemChance"] or ""
	local tResult = {}

	if nTimes ~= #tTable then
		SaveCustomLog(sLogName,string.format(tProbabil_Text["ErrorType3"],#tTable))
		return
	end
	
	-- 获取随机概率表
	local ArrayKeys={}
	ArrayKeys[1]={KEYName = "tAbsoluteAward",KEYStr = sAbsoluteAward}
	ArrayKeys[2]={KEYName = "tAward",KEYStr = sAward}
	ArrayKeys[3]={KEYName = "tSelfItemChanceAward",KEYStr = sSelfItemChanceAward}

	-- 解析奖励
	local tAnalysisItem = {}
	tAnalysisItem["tAbsoluteAward"] = {}
	tAnalysisItem["tAward"] = {}
	tAnalysisItem["tSelfItemChanceAward"] = {}

	-- 统计次数
	SaveCustomLog(sLogName,string.format(tProbabil_Text["Index"],nIndex))

	-- 解析随机概率表
	for i,v in pairs(tTable) do
		for nKey = 1,3 do
			local KEYName = ArrayKeys[nKey]["KEYName"]
			local KEYStr = ArrayKeys[nKey]["KEYStr"]

			if v[KEYName] ~= nil then
				for _i = 1,#v[KEYName] do

					local tValue = v[KEYName][_i]
					local nIndex = tValue["TestIndex"]
					
					if nIndex ~= nil then
						-- 记录出现次数
						tResult[KEYName] = tResult[KEYName] or {}

						if tResult[KEYName][nIndex] ~= nil then
							tResult[KEYName][nIndex] = tResult[KEYName][nIndex] + 1
						else
							tResult[KEYName][nIndex] = 1
						end
						
						local sSingleTestLog = tProbabil_Text["TestId"]..i..KEYStr..nIndex
						-- 单次测试输出log
						if tProbabil_Test[nTempIndex]["Single"] ~= nil then
							SaveCustomLog(sLogName,sSingleTestLog)
						end

						if tAnalysisItem[KEYName][nIndex] == nil then
							tAnalysisItem[KEYName][nIndex] = Probabil_Analysis(tValue)
						end
					end
				end
			end
		end
	end

	-- 统计次数
	SaveCustomLog(sLogName,tProbabil_Text["Statistics"])
	SaveCustomLog(sLogName,tProbabil_Text["TestTimes"]..nTimes)
	
	for nIndex = 1,3 do
		local KEYName = ArrayKeys[nIndex]["KEYName"]
		local KEYStr = ArrayKeys[nIndex]["KEYStr"]
	
		if tResult[KEYName] ~= nil then
			-- 自定义分组
			if nIsGroup ~= nil and nIsGroup == 1 and tProbabil_Test[nTempIndex]["Group"] ~= nil then
				---------------分组结果表
				local tGroupResult = {}
				local bIsUsed = false  
				
				-- 分组的次数统计
				for _i,_v in pairs(tResult[KEYName]) do
					bIsUsed = false
					
					local str = tAnalysisItem[KEYName][_i]
					local sSingleTestLog = string.format(tProbabil_Text["NewCountTime"],KEYStr,str,_v,_v/nTimes)
					-- local sSingleTestLog = string.format(tProbabil_Text["CountTime"],KEYStr,_i,_v,_v/nTimes)
					-- 单次测试输出log
					SaveCustomLog(sLogName,sSingleTestLog)
					
					-- 分组LOG汇总
					for _G_k,_G_v in pairs(tProbabil_Test[nTempIndex]["Group"]) do
						if not bIsUsed then
							for _T_k,_T_v in pairs(_G_v) do
								if _T_v == _i then
									bIsUsed = true
									tGroupResult[_G_k] = tGroupResult[_G_k] or 0
									tGroupResult[_G_k] = tGroupResult[_G_k] + _v
								end
							end
						end
					end
					
					-- 未纳入分组的情况
					if not bIsUsed then
						tGroupResult[tProbabil_Text["NoGroup"]] = tGroupResult[tProbabil_Text["NoGroup"]] or 0
						tGroupResult[tProbabil_Text["NoGroup"]] = tGroupResult[tProbabil_Text["NoGroup"]] + _v
					end
				end
				
				-- 分组LOG输出
				for _i,_v in pairs(tGroupResult) do
					local sSingleTestLog = string.format(tProbabil_Text["GroupTime"],_i,_v,_v/nTimes)
					SaveCustomLog(sLogName,sSingleTestLog)
				end
			else
				-- 统计测试结果
				for _i,_v in pairs(tResult[KEYName]) do
					local str = tAnalysisItem[KEYName][_i]
					local sSingleTestLog = string.format(tProbabil_Text["NewCountTime"],KEYStr,str,_v,_v/nTimes)
					-- local sSingleTestLog = string.format(tProbabil_Text["CountTime"],KEYStr,_i,_v,_v/nTimes)
					-- 输出统计结果log
					SaveCustomLog(sLogName,sSingleTestLog)
				end
			end
		end
	end
end

-- 调用随机概率接口并输出概率测试log文件
function Probabil_OutPutLog(nTempIndex,tTable,nIndex,nTimes,sLogName)
	local nTimes = nTimes or 1
	local flat,tRetAwardDetails = Probabil_RandomAward(tTable,nIndex,nTimes)

	if flat == -1 then
		SaveCustomLog(sLogName,tRetAwardDetails.Text)
	elseif flat == 0 then
		Probabil_AwardDetails(nTempIndex,tRetAwardDetails,nTimes,sLogName,nIndex)
	end
end

-- 主函数
function Probabil_Main(nTempIndex,nTimes)
	-- 判断测试表是否有配
	if tProbabil_Test[nTempIndex] == nil then
		User_TalkChannel2005("概率测试表没有配置下标为：" .. nTempIndex .. "的索引表。")
		return
	end
	
	-- 初始化数据源表
	local tEnum = Probabil_InitTables(nTempIndex)

	-- 获取LOG文件名
	local sLogName = Probabil_GetLogName(nTempIndex)
	-- 获取下标表
	local tIndex = tProbabil_Test[nTempIndex]["Index"] or {1}
	-- 获取测试次数
	local nTimes = nTimes or tProbabil_Test[nTempIndex]["Times"] or 10000

	-- 外层数据源表
	for k,v in pairs(tEnum) do
		-- 内层下标
		for kk,vv in pairs(tIndex) do
			Probabil_OutPutLog(nTempIndex,v,vv,nTimes,sLogName)
		end
	end
end
