----------------------------------------------------------------------------
--Name:		[征服][功能脚本]经验礼包.lua
--Purpose:	经验礼包
--Creator: 	郑鋆
--Created:	2016/05/17
----------------------------------------------------------------------------

-- 命名前缀
-- ExpPack_

local tExpPack_Reward = {}
	-- 3200344	30分钟经验礼包
	tExpPack_Reward[3200344] = {}
	tExpPack_Reward[3200344]["RewardExpTime"] = {}
	tExpPack_Reward[3200344]["RewardExpTime"]["Value"] = 30
	tExpPack_Reward[3200344]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tExpPack_Reward[3200344]["RewardExpTime"]["FullValue"] = 15
	tExpPack_Reward[3200344]["Log"] = "0,0,3200344,1,18000123,2,4,30"
	tExpPack_Reward[3200344]["FullLog"] = "0,0,3200344,1,18000123,2,6,15"

	-- 3200345	90分钟经验礼包
	tExpPack_Reward[3200345] = {}
	tExpPack_Reward[3200345]["RewardExpTime"] = {}
	tExpPack_Reward[3200345]["RewardExpTime"]["Value"] = 90
	tExpPack_Reward[3200345]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tExpPack_Reward[3200345]["RewardExpTime"]["FullValue"] = 45
	tExpPack_Reward[3200345]["Log"] = "0,0,3200345,1,18000123,2,4,90"
	tExpPack_Reward[3200345]["FullLog"] = "0,0,3200345,1,18000123,2,6,45"

	-- 3200346	120分钟经验礼包
	tExpPack_Reward[3200346] = {}
	tExpPack_Reward[3200346]["RewardExpTime"] = {}
	tExpPack_Reward[3200346]["RewardExpTime"]["Value"] = 120
	tExpPack_Reward[3200346]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tExpPack_Reward[3200346]["RewardExpTime"]["FullValue"] = 60
	tExpPack_Reward[3200346]["Log"] = "0,0,3200346,1,18000123,2,4,120"
	tExpPack_Reward[3200346]["FullLog"] = "0,0,3200346,1,18000123,2,6,60"
	
	-- 3200322	1250分钟经验礼包
	tExpPack_Reward[3200322] = {}
	tExpPack_Reward[3200322]["RewardExpTime"] = {}
	tExpPack_Reward[3200322]["RewardExpTime"]["Value"] = 1250
	tExpPack_Reward[3200322]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tExpPack_Reward[3200322]["RewardExpTime"]["FullValue"] = 500
	tExpPack_Reward[3200322]["Log"] = "0,0,3200322,1,18000123,2,4,1250"
	tExpPack_Reward[3200322]["FullLog"] = "0,0,3200322,1,18000123,2,6,500"
	
	-- 3200323	1125分钟经验礼包
	tExpPack_Reward[3200323] = {}
	tExpPack_Reward[3200323]["RewardExpTime"] = {}
	tExpPack_Reward[3200323]["RewardExpTime"]["Value"] = 1125
	tExpPack_Reward[3200323]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tExpPack_Reward[3200323]["RewardExpTime"]["FullValue"] = 450
	tExpPack_Reward[3200323]["Log"] = "0,0,3200323,1,18000123,2,4,1125"
	tExpPack_Reward[3200323]["FullLog"] = "0,0,3200323,1,18000123,2,6,450"
	
	-- 3200324	875分钟经验礼包
	tExpPack_Reward[3200324] = {}
	tExpPack_Reward[3200324]["RewardExpTime"] = {}
	tExpPack_Reward[3200324]["RewardExpTime"]["Value"] = 875
	tExpPack_Reward[3200324]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tExpPack_Reward[3200324]["RewardExpTime"]["FullValue"] = 350
	tExpPack_Reward[3200324]["Log"] = "0,0,3200324,1,18000123,2,4,875"
	tExpPack_Reward[3200324]["FullLog"] = "0,0,3200324,1,18000123,2,6,350"
	
	-- 3200325	500分钟经验礼包
	tExpPack_Reward[3200325] = {}
	tExpPack_Reward[3200325]["RewardExpTime"] = {}
	tExpPack_Reward[3200325]["RewardExpTime"]["Value"] = 500
	tExpPack_Reward[3200325]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tExpPack_Reward[3200325]["RewardExpTime"]["FullValue"] = 200
	tExpPack_Reward[3200325]["Log"] = "0,0,3200325,1,18000123,2,4,500"
	tExpPack_Reward[3200325]["FullLog"] = "0,0,3200325,1,18000123,2,6,200"
	
	-- 3200326	3000分钟经验礼包
	tExpPack_Reward[3200326] = {}
	tExpPack_Reward[3200326]["RewardExpTime"] = {}
	tExpPack_Reward[3200326]["RewardExpTime"]["Value"] = 3000
	tExpPack_Reward[3200326]["RewardExpTime"]["FullIndex"] = "RewardStrengthValue"
	tExpPack_Reward[3200326]["RewardExpTime"]["FullValue"] = 1500
	tExpPack_Reward[3200326]["Log"] = "0,0,3200326,1,18000123,2,4,3000"
	tExpPack_Reward[3200326]["FullLog"] = "0,0,3200326,1,18000123,2,12,1500"
	
	-- 3200327	2700分钟经验礼包
	tExpPack_Reward[3200327] = {}
	tExpPack_Reward[3200327]["RewardExpTime"] = {}
	tExpPack_Reward[3200327]["RewardExpTime"]["Value"] = 2700
	tExpPack_Reward[3200327]["RewardExpTime"]["FullIndex"] = "RewardStrengthValue"
	tExpPack_Reward[3200327]["RewardExpTime"]["FullValue"] = 1350
	tExpPack_Reward[3200327]["Log"] = "0,0,3200327,1,18000123,2,4,2700"
	tExpPack_Reward[3200327]["FullLog"] = "0,0,3200327,1,18000123,2,12,1350"
	
	-- 3200328	2100分钟经验礼包
	tExpPack_Reward[3200328] = {}
	tExpPack_Reward[3200328]["RewardExpTime"] = {}
	tExpPack_Reward[3200328]["RewardExpTime"]["Value"] = 2100
	tExpPack_Reward[3200328]["RewardExpTime"]["FullIndex"] = "RewardStrengthValue"
	tExpPack_Reward[3200328]["RewardExpTime"]["FullValue"] = 1050
	tExpPack_Reward[3200328]["Log"] = "0,0,3200328,1,18000123,2,4,2100"
	tExpPack_Reward[3200328]["FullLog"] = "0,0,3200328,1,18000123,2,12,1050"
	
	-- 3200329	1200分钟经验礼包
	tExpPack_Reward[3200329] = {}
	tExpPack_Reward[3200329]["RewardExpTime"] = {}
	tExpPack_Reward[3200329]["RewardExpTime"]["Value"] = 1200
	tExpPack_Reward[3200329]["RewardExpTime"]["FullIndex"] = "RewardStrengthValue"
	tExpPack_Reward[3200329]["RewardExpTime"]["FullValue"] = 600
	tExpPack_Reward[3200329]["Log"] = "0,0,3200329,1,18000123,2,4,1200"
	tExpPack_Reward[3200329]["FullLog"] = "0,0,3200329,1,18000123,2,12,600"
	
	-- 3200330	125分钟经验礼包
	tExpPack_Reward[3200330] = {}
	tExpPack_Reward[3200330]["RewardExpTime"] = {}
	tExpPack_Reward[3200330]["RewardExpTime"]["Value"] = 125
	tExpPack_Reward[3200330]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tExpPack_Reward[3200330]["RewardExpTime"]["FullValue"] = 50
	tExpPack_Reward[3200330]["Log"] = "0,0,3200330,1,18000123,2,4,125"
	tExpPack_Reward[3200330]["FullLog"] = "0,0,3200330,1,18000123,2,6,50"
	
	-- 3200331	250分钟经验礼包
	tExpPack_Reward[3200331] = {}
	tExpPack_Reward[3200331]["RewardExpTime"] = {}
	tExpPack_Reward[3200331]["RewardExpTime"]["Value"] = 250
	tExpPack_Reward[3200331]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tExpPack_Reward[3200331]["RewardExpTime"]["FullValue"] = 100
	tExpPack_Reward[3200331]["Log"] = "0,0,3200331,1,18000123,2,4,250"
	tExpPack_Reward[3200331]["FullLog"] = "0,0,3200331,1,18000123,2,6,100"
	
	-- 3200332	375分钟经验礼包
	tExpPack_Reward[3200332] = {}
	tExpPack_Reward[3200332]["RewardExpTime"] = {}
	tExpPack_Reward[3200332]["RewardExpTime"]["Value"] = 375
	tExpPack_Reward[3200332]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tExpPack_Reward[3200332]["RewardExpTime"]["FullValue"] = 150
	tExpPack_Reward[3200332]["Log"] = "0,0,3200332,1,18000123,2,4,375"
	tExpPack_Reward[3200332]["FullLog"] = "0,0,3200332,1,18000123,2,6,150"
	
	-- 3200333	150分钟经验礼包
	tExpPack_Reward[3200333] = {}
	tExpPack_Reward[3200333]["RewardExpTime"] = {}
	tExpPack_Reward[3200333]["RewardExpTime"]["Value"] = 150
	tExpPack_Reward[3200333]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tExpPack_Reward[3200333]["RewardExpTime"]["FullValue"] = 75
	tExpPack_Reward[3200333]["Log"] = "0,0,3200333,1,18000123,2,4,150"
	tExpPack_Reward[3200333]["FullLog"] = "0,0,3200333,1,18000123,2,6,75"
	
	-- 3200334	300分钟经验礼包
	tExpPack_Reward[3200334] = {}
	tExpPack_Reward[3200334]["RewardExpTime"] = {}
	tExpPack_Reward[3200334]["RewardExpTime"]["Value"] = 300
	tExpPack_Reward[3200334]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tExpPack_Reward[3200334]["RewardExpTime"]["FullValue"] = 150
	tExpPack_Reward[3200334]["Log"] = "0,0,3200334,1,18000123,2,4,300"
	tExpPack_Reward[3200334]["FullLog"] = "0,0,3200334,1,18000123,2,6,150"
	
	-- 3200335	450分钟经验礼包
	tExpPack_Reward[3200335] = {}
	tExpPack_Reward[3200335]["RewardExpTime"] = {}
	tExpPack_Reward[3200335]["RewardExpTime"]["Value"] = 450
	tExpPack_Reward[3200335]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tExpPack_Reward[3200335]["RewardExpTime"]["FullValue"] = 225
	tExpPack_Reward[3200335]["Log"] = "0,0,3200335,1,18000123,2,4,450"
	tExpPack_Reward[3200335]["FullLog"] = "0,0,3200335,1,18000123,2,6,225"
	
	-- 3200336	600分钟经验礼包
	tExpPack_Reward[3200336] = {}
	tExpPack_Reward[3200336]["RewardExpTime"] = {}
	tExpPack_Reward[3200336]["RewardExpTime"]["Value"] = 600
	tExpPack_Reward[3200336]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tExpPack_Reward[3200336]["RewardExpTime"]["FullValue"] = 300
	tExpPack_Reward[3200336]["Log"] = "0,0,3200336,1,18000123,2,4,600"
	tExpPack_Reward[3200336]["FullLog"] = "0,0,3200336,1,18000123,2,6,300"
	
	-- 3200337	300分钟经验礼包
	tExpPack_Reward[3200337] = {}
	tExpPack_Reward[3200337]["RewardExpTime"] = {}
	tExpPack_Reward[3200337]["RewardExpTime"]["Value"] = 300
	tExpPack_Reward[3200337]["RewardExpTime"]["FullIndex"] = "RewardStrengthValue"
	tExpPack_Reward[3200337]["RewardExpTime"]["FullValue"] = 150
	tExpPack_Reward[3200337]["Log"] = "0,0,3200337,1,18000123,2,4,300"
	tExpPack_Reward[3200337]["FullLog"] = "0,0,3200337,1,18000123,2,12,150"
	
	-- 3200338	600分钟经验礼包
	tExpPack_Reward[3200338] = {}
	tExpPack_Reward[3200338]["RewardExpTime"] = {}
	tExpPack_Reward[3200338]["RewardExpTime"]["Value"] = 600
	tExpPack_Reward[3200338]["RewardExpTime"]["FullIndex"] = "RewardStrengthValue"
	tExpPack_Reward[3200338]["RewardExpTime"]["FullValue"] = 300
	tExpPack_Reward[3200338]["Log"] = "0,0,3200338,1,18000123,2,4,600"
	tExpPack_Reward[3200338]["FullLog"] = "0,0,3200338,1,18000123,2,12,300"
	
	-- 3200339	900分钟经验礼包
	tExpPack_Reward[3200339] = {}
	tExpPack_Reward[3200339]["RewardExpTime"] = {}
	tExpPack_Reward[3200339]["RewardExpTime"]["Value"] = 900
	tExpPack_Reward[3200339]["RewardExpTime"]["FullIndex"] = "RewardStrengthValue"
	tExpPack_Reward[3200339]["RewardExpTime"]["FullValue"] = 450
	tExpPack_Reward[3200339]["Log"] = "0,0,3200339,1,18000123,2,4,900"
	tExpPack_Reward[3200339]["FullLog"] = "0,0,3200339,1,18000123,2,12,450"
	
	-- 3200340	180分钟经验礼包
	tExpPack_Reward[3200340] = {}
	tExpPack_Reward[3200340]["RewardExpTime"] = {}
	tExpPack_Reward[3200340]["RewardExpTime"]["Value"] = 180
	tExpPack_Reward[3200340]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tExpPack_Reward[3200340]["RewardExpTime"]["FullValue"] = 90
	tExpPack_Reward[3200340]["Log"] = "0,0,3200340,1,18000123,2,4,180"
	tExpPack_Reward[3200340]["FullLog"] = "0,0,3200340,1,18000123,2,6,90"
	
	-- 3200341	240分钟经验礼包
	tExpPack_Reward[3200341] = {}
	tExpPack_Reward[3200341]["RewardExpTime"] = {}
	tExpPack_Reward[3200341]["RewardExpTime"]["Value"] = 240
	tExpPack_Reward[3200341]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tExpPack_Reward[3200341]["RewardExpTime"]["FullValue"] = 120
	tExpPack_Reward[3200341]["Log"] = "0,0,3200341,1,18000123,2,4,240"
	tExpPack_Reward[3200341]["FullLog"] = "0,0,3200341,1,18000123,2,6,120"
	
	-- 3200355	360分钟经验礼包
	tExpPack_Reward[3200355] = {}
	tExpPack_Reward[3200355]["RewardExpTime"] = {}
	tExpPack_Reward[3200355]["RewardExpTime"]["Value"] = 360
	tExpPack_Reward[3200355]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tExpPack_Reward[3200355]["RewardExpTime"]["FullValue"] = 180
	tExpPack_Reward[3200355]["Log"] = "0,0,3200355,1,18000123,2,4,360"
	tExpPack_Reward[3200355]["FullLog"] = "0,0,3200355,1,18000123,2,6,180"
	
	-- 3006245	60分钟经验礼包
	tExpPack_Reward[3006245] = {}
	tExpPack_Reward[3006245]["RewardExpTime"] = {}
	tExpPack_Reward[3006245]["RewardExpTime"]["Value"] = 60
	tExpPack_Reward[3006245]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tExpPack_Reward[3006245]["RewardExpTime"]["FullValue"] = 30
	tExpPack_Reward[3006245]["Log"] = "0,0,3006245,1,18000123,2,4,60"
	tExpPack_Reward[3006245]["FullLog"] = "0,0,3006245,1,18000123,2,6,30"

-----------------------------------逻辑部分----------------------------------------
-- 物品使用
function ExpPack_Use(nItemId)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_Reward(tExpPack_Reward[nItemId])
	end
end

-----------------------------------物品配置----------------------------------------
-- 3200344	30分钟经验礼包
tItem[3200344] = tItem[3200344] or {}
tItem[3200344]["Function"] = function(nItemId,sItemName)
	ExpPack_Use(nItemId)
end

-- 3200345	90分钟经验礼包
tItem[3200345] = tItem[3200345] or {}
tItem[3200345]["Function"] = function(nItemId,sItemName)
	ExpPack_Use(nItemId)
end

-- 3200346	120分钟经验礼包
tItem[3200346] = tItem[3200346] or {}
tItem[3200346]["Function"] = function(nItemId,sItemName)
	ExpPack_Use(nItemId)
end

-- 3200322	1250分钟经验礼包
tItem[3200322] = tItem[3200322] or {}
tItem[3200322]["Function"] = function(nItemId,sItemName)
	ExpPack_Use(nItemId)
end

-- 3200323	1125分钟经验礼包
tItem[3200323] = tItem[3200323] or {}
tItem[3200323]["Function"] = function(nItemId,sItemName)
	ExpPack_Use(nItemId)
end

-- 3200324	875分钟经验礼包
tItem[3200324] = tItem[3200324] or {}
tItem[3200324]["Function"] = function(nItemId,sItemName)
	ExpPack_Use(nItemId)
end

-- 3200325	500分钟经验礼包
tItem[3200325] = tItem[3200325] or {}
tItem[3200325]["Function"] = function(nItemId,sItemName)
	ExpPack_Use(nItemId)
end

-- 3200326	3000分钟经验礼包
tItem[3200326] = tItem[3200326] or {}
tItem[3200326]["Function"] = function(nItemId,sItemName)
	ExpPack_Use(nItemId)
end

-- 3200327	2700分钟经验礼包
tItem[3200327] = tItem[3200327] or {}
tItem[3200327]["Function"] = function(nItemId,sItemName)
	ExpPack_Use(nItemId)
end

-- 3200328	2100分钟经验礼包
tItem[3200328] = tItem[3200328] or {}
tItem[3200328]["Function"] = function(nItemId,sItemName)
	ExpPack_Use(nItemId)
end

-- 3200329	1200分钟经验礼包
tItem[3200329] = tItem[3200329] or {}
tItem[3200329]["Function"] = function(nItemId,sItemName)
	ExpPack_Use(nItemId)
end

-- 3200330	125分钟经验礼包
tItem[3200330] = tItem[3200330] or {}
tItem[3200330]["Function"] = function(nItemId,sItemName)
	ExpPack_Use(nItemId)
end

-- 3200331	250分钟经验礼包
tItem[3200331] = tItem[3200331] or {}
tItem[3200331]["Function"] = function(nItemId,sItemName)
	ExpPack_Use(nItemId)
end

-- 3200332	375分钟经验礼包
tItem[3200332] = tItem[3200332] or {}
tItem[3200332]["Function"] = function(nItemId,sItemName)
	ExpPack_Use(nItemId)
end

-- 3200333	150分钟经验礼包
tItem[3200333] = tItem[3200333] or {}
tItem[3200333]["Function"] = function(nItemId,sItemName)
	ExpPack_Use(nItemId)
end

-- 3200334	300分钟经验礼包
tItem[3200334] = tItem[3200334] or {}
tItem[3200334]["Function"] = function(nItemId,sItemName)
	ExpPack_Use(nItemId)
end

-- 3200335	450分钟经验礼包
tItem[3200335] = tItem[3200335] or {}
tItem[3200335]["Function"] = function(nItemId,sItemName)
	ExpPack_Use(nItemId)
end

-- 3200336	600分钟经验礼包
tItem[3200336] = tItem[3200336] or {}
tItem[3200336]["Function"] = function(nItemId,sItemName)
	ExpPack_Use(nItemId)
end

-- 3200337	300分钟经验礼包
tItem[3200337] = tItem[3200337] or {}
tItem[3200337]["Function"] = function(nItemId,sItemName)
	ExpPack_Use(nItemId)
end

-- 3200338	600分钟经验礼包
tItem[3200338] = tItem[3200338] or {}
tItem[3200338]["Function"] = function(nItemId,sItemName)
	ExpPack_Use(nItemId)
end

-- 3200339	900分钟经验礼包
tItem[3200339] = tItem[3200339] or {}
tItem[3200339]["Function"] = function(nItemId,sItemName)
	ExpPack_Use(nItemId)
end

-- 3200340	180分钟经验礼包
tItem[3200340] = tItem[3200340] or {}
tItem[3200340]["Function"] = function(nItemId,sItemName)
	ExpPack_Use(nItemId)
end

-- 3200341	240分钟经验礼包
tItem[3200341] = tItem[3200341] or {}
tItem[3200341]["Function"] = function(nItemId,sItemName)
	ExpPack_Use(nItemId)
end

-- 3200355	360分钟经验礼包
tItem[3200355] = tItem[3200355] or {}
tItem[3200355]["Function"] = function(nItemId,sItemName)
	ExpPack_Use(nItemId)
end

-- 3006245	60分钟经验礼包
tItem[3006245] = tItem[3006245] or {}
tItem[3006245]["Function"] = function(nItemId,sItemName)
	ExpPack_Use(nItemId)
end
