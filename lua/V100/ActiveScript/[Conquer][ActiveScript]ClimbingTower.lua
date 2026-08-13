------------------------------------------------------------------------------------
--Name：            200120[简体征服][活动脚本]实力验证-爬塔副本
--Creator:      江宇君
--Created:     2020-01-20
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
-- 命名前缀	ClimbingTower_

----------------------------------表配置部分--------------------------------------------
local tClimbingTower_InstanceMonster = {}
							-- 副本id  怪物id 刷怪数量 坐标 坐标 generator
	tClimbingTower_InstanceMonster[476] = {6072,1,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[477] = {6073,2,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[478] = {6074,3,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[479] = {6075,4,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[480] = {6076,5,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[481] = {6077,2,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[482] = {6078,4,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[483] = {6079,1,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[484] = {6080,3,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[485] = {6081,5,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[486] = {6082,3,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[487] = {6083,1,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[488] = {6084,4,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[489] = {6085,2,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[490] = {6086,5,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[491] = {6087,3,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[492] = {6088,1,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[493] = {6089,4,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[494] = {6090,2,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[495] = {6091,5,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[496] = {6092,3,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[497] = {6093,1,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[498] = {6094,4,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[499] = {6095,2,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[500] = {6096,5,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[501] = {6097,3,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[502] = {6098,1,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[503] = {6099,4,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[504] = {6100,2,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[505] = {6101,5,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[506] = {6102,4,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[507] = {6103,2,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[508] = {6104,1,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[509] = {6105,5,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[510] = {6106,3,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[511] = {6107,2,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[512] = {6108,1,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[513] = {6109,4,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[514] = {6110,2,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[515] = {6111,5,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[516] = {6112,3,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[517] = {6113,1,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[518] = {6114,4,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[519] = {6115,2,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[520] = {6116,5,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[521] = {6117,3,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[522] = {6118,1,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[523] = {6119,4,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[524] = {6120,2,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[525] = {6121,5,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[526] = {6122,3,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[527] = {6123,1,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[528] = {6124,4,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[529] = {6125,2,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[530] = {6126,5,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[531] = {6127,3,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[532] = {6128,1,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[533] = {6129,4,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[534] = {6130,2,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[535] = {6131,5,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[536] = {6132,3,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[537] = {6133,1,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[538] = {6134,4,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[539] = {6135,2,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[540] = {6136,5,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[541] = {6137,3,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[542] = {6138,1,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[543] = {6139,4,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[544] = {6140,2,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[545] = {6141,5,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[546] = {6142,3,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[547] = {6143,1,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[548] = {6144,4,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[549] = {6145,2,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[550] = {6146,5,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[551] = {6147,3,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[552] = {6148,1,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[553] = {6149,4,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[554] = {6150,2,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[555] = {6151,5,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[556] = {6152,2,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[557] = {6153,4,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[558] = {6154,1,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[559] = {6155,3,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[560] = {6156,5,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[561] = {6157,2,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[562] = {6158,4,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[563] = {6159,1,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[564] = {6160,3,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[565] = {6161,5,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[566] = {6162,2,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[567] = {6163,4,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[568] = {6164,1,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[569] = {6165,3,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[570] = {6166,5,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[571] = {6167,2,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[572] = {6168,4,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[573] = {6169,1,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[574] = {6170,3,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[575] = {6171,5,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[576] = {6172,2,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[577] = {6173,4,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[578] = {6174,1,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[579] = {6175,3,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[580] = {6176,5,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[581] = {6177,2,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[582] = {6178,4,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[583] = {6179,1,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[584] = {6180,3,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[585] = {6181,5,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[586] = {6182,2,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[587] = {6183,4,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[588] = {6184,1,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[589] = {6185,3,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[590] = {6186,5,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[591] = {6187,2,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[592] = {6188,4,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[593] = {6189,1,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[594] = {6190,3,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[595] = {6191,5,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[596] = {6192,2,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[597] = {6193,4,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[598] = {6194,1,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[599] = {6195,3,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[600] = {6196,5,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[601] = {6197,2,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[602] = {6198,4,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[603] = {6199,1,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[604] = {6200,3,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[605] = {6201,5,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[606] = {6202,2,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[607] = {6203,4,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[608] = {6204,1,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[609] = {6205,3,50,50,5,5,30586}
	tClimbingTower_InstanceMonster[610] = {6206,5,50,50,5,5,30586}
	
	-- 2020.02.28 新作无时效爵位勋章 属性11
local tClimbingTower_RewandItem = {}
	-- 1000万贡献勋章
	tClimbingTower_RewandItem[3315629] = {}
	tClimbingTower_RewandItem[3315629]["LogId"] = 12001890
	tClimbingTower_RewandItem[3315629]["DeleteItem"] = {}
	tClimbingTower_RewandItem[3315629]["DeleteItem"][1] = {}
	tClimbingTower_RewandItem[3315629]["DeleteItem"][1]["Id"] = 3315629 -- 【库】1000万贡献勋章[属性:11]
	tClimbingTower_RewandItem[3315629]["RewardDonate"] = {}
	tClimbingTower_RewandItem[3315629]["RewardDonate"]["Value"] = 10000000
	tClimbingTower_RewandItem[3315629]["RewardEffect"] = {}
	tClimbingTower_RewandItem[3315629]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClimbingTower_RewandItem[3315629]["RewardEffect"]["Effect"] = "angelwing"

	-- 等级要求
local tClimbingTower_Cont = {}
	tClimbingTower_Cont["nLevel"] = 70
	tClimbingTower_Cont["nMetempsychosis"] = 0

----------------------------------逻辑部分---------------------------------------------
-- 客户端进入副本触发接口
-- 参1：副本id 参2：副本动态地图id 参3：玩家id
function ClimbingTower_EnterInstance(nClimbingTower_Instancetype, nClimbingTower_MapId, nClimbingTower_UserId)
	-- User_TalkChannel2005("!!!!!!!!!!")
	-- 不是新服
	if Get_SysDynaGlobalData0(54386) ~= 1 then
		return
	end
	
	-- 不是对应的副本
	if tClimbingTower_InstanceMonster[nClimbingTower_Instancetype] == nil then
		return
	end
	
	ClimbingTower_NewMonster(nClimbingTower_Instancetype, nClimbingTower_MapId)
end

-- 刷怪
function ClimbingTower_NewMonster(nClimbingTower_Instancetype, nClimbingTower_MapId)
	
	local nClimbingTower_MonsterId = tClimbingTower_InstanceMonster[nClimbingTower_Instancetype][1] -- 怪物id
	local nClimbingTower_MonsterNum = tClimbingTower_InstanceMonster[nClimbingTower_Instancetype][2] -- 怪物数量
	local nClimbingTower_MonsterPosX = tClimbingTower_InstanceMonster[nClimbingTower_Instancetype][3] -- 怪物出生点X坐标
	local nClimbingTower_MonsterPosY = tClimbingTower_InstanceMonster[nClimbingTower_Instancetype][4] -- 怪物出生点U坐标
	local nClimbingTower_MonsterRangeX = tClimbingTower_InstanceMonster[nClimbingTower_Instancetype][5] -- 怪物出生点范围X坐标
	local nClimbingTower_MonsterRangeY = tClimbingTower_InstanceMonster[nClimbingTower_Instancetype][6] -- 怪物出生点范围Y坐标
	local nClimbingTower_MonsterGenId = tClimbingTower_InstanceMonster[nClimbingTower_Instancetype][7] -- 怪物出生generator
	
	Monster_CreateMonsterRange(0,0,nClimbingTower_MapId,nClimbingTower_MonsterPosX,nClimbingTower_MonsterPosY,nClimbingTower_MonsterGenId,nClimbingTower_MonsterId,0,"",0,nClimbingTower_MonsterRangeX,nClimbingTower_MonsterRangeY,nClimbingTower_MonsterNum,0)
end


-- 3315629,'1000万爵位勋章'
tItem[3315629] = tItem[3315629] or {}
tItem[3315629]["Function"] = function (nItemId,sItemName)
	if User_JudgeLevelAndMetempsychosis(tClimbingTower_Cont["nLevel"],tClimbingTower_Cont["nMetempsychosis"]) then 
		RewardTemplate_UseItem(tClimbingTower_RewandItem[nItemId])
	else
		User_TalkChannel2005(tRebateStoreItem_Text[3315629]["NoLeve"])
		return
	end
end

---------------------------------怪物部分---------------------------------------------
-- 进入副本刷怪
 table.insert(tProcessAfterCreateInstance["tFunction"], ClimbingTower_EnterInstance)