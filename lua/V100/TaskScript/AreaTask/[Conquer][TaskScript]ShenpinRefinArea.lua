-------------------------------------------------------------------------------------------------------------------
--Name:		[征服][任务脚本]神品精炼版本新片区制作.lua
--Purpose:	神品精炼版本新片区制作
--Creator: 	郑鋆
--Created:	2016/02/01
-------------------------------------------------------------------------------------------------------------------

-- 命名前缀
-- ShenpinRefinArea_

-- 任务ID	任务名字
-- 3631	人是物非今何往
-- 3632	前路艰险谁可探
-- 3633	才行便困蛮荒地
-- 3634	岂容妖孽逞凶狂
-- 3635	焚天灼焰起残炉
-- 3636	究其根底或可期
-- 3637	神兵宝甲由此铸
-- 3638	铁砧惊鸣散妖魄
-- 3639	未料炉内有乾坤
-- 3640	往事秘辛何所指
-- 3641	一杯浊酒祭冤魂
-- 3642	救死扶伤义所在
-- 3643	华宫雄殿常自忆
-- 3644	独对危墟长嗟嗟
-- 3645	天衍五行化万物
-- 3646	至金之力土中藏
-- 3647	熔岩业火育奇花
-- 3648	五行生化万事具
-- 3649	百年流离终还乡

------------------------------------------------------------------------------
-- 怪物数量满足交任务触发的函数
function ShenpinRefinArea_KillMonster(nTaskId,nMonsterId,nIndex)
	if tShenpinRefinArea_Text[nTaskId]["Monster"] ~= nil then
		local nNpcId = tTaskTemplate[nTaskId]["EndNpcId"]
		local sIndex = "Next"
		local sCoent = tShenpinRefinArea_Text[nTaskId]["Monster"]
		
		if nTaskId == 3641 then
			local nItemId = tTaskTemplate[3641]["GetItemId1"]
			
			if not Item_ChkItem(nItemId) then
				nNpcId = 19164
				sIndex = "Memorial"
				sCoent = tShenpinRefinArea_Text[nTaskId]["NoItem"]
			else
				nNpcId = 0
				sIndex = "Memorial"
			end
		end
		
		local sFunc = string.format("ShenpinRefinArea_FindWay</N>%d</S>%s</N>%d",nTaskId,sIndex,nNpcId)
		Sys_MsgBox(sCoent,sFunc)
	end
end

-- 物品收集
function ShenpinRefinArea_CollectItem(nTaskId,nMonsterId,nIndex)
	local sText = tShenpinRefinArea_Text[nTaskId]["Item"]
	local sIndex = tTaskTemplate[nTaskId]["ItemPathFind"]
	local sFunc = ""
	
	if sIndex == "Complete" then
		local nNpcId = tTaskTemplate[nTaskId]["EndNpcId"]
		sFunc = string.format("ShenpinRefinArea_FindWay</N>%d</S>%s</N>%d",nTaskId,sIndex,nNpcId)
	end
	
	Sys_MsgBox(sText,sFunc)
end

-- 接任务后的自动寻路
function ShenpinRefinArea_PathFind(nTaskId)
	local sIndex = tTaskTemplate[nTaskId]["AcceptPathFind"]
	local nNpcId = 0
	
	if sIndex == "Complete" then
		nNpcId = tTaskTemplate[nTaskId]["EndNpcId"]
	end
	
	ShenpinRefinArea_FindWay(nTaskId,sIndex,nNpcId)
	
	-- 判断是否要播放漫画
	if tTaskTemplate[nTaskId]["Cartoon"] ~= nil then
		User_NoviceTeaching(tTaskTemplate[nTaskId]["Cartoon"])
	end
end

-- 交任务后播放特殊光效
function ShenpinRefinArea_MapEffect(nTaskId)
	ShenpinRefinArea_PlayEffect(nTaskId)
end

-- 掉落任务物品的光效
function ShenpinRefinArea_Drop(nTaskId,nMonsterId,nIndex,nItemId)
	local sEffect = tTaskTemplate[nTaskId]["DropEffect"]
	
	if sEffect ~= nil then
		User_EffectAdd("self",sEffect)
	end

	if nTaskId == 3646 then
		if Item_ChkMulItem(nItemId,nItemId,5) then
			ShenpinRefinArea_Synthesis(nTaskId,nItemId)
		end
	end
end

-- 接完任务直接接完成任务对白
function ShenpinRefinArea_Dialogue(nTaskId)
	local nNpcId = tTaskTemplate[nTaskId]["EndNpcId"]
	LinkNpcGossipFunc_New(nNpcId,tTaskTemplate[nTaskId]["SubTask"])
	
	if tTaskTemplate[nTaskId]["Cartoon"] ~= nil then
		User_NoviceTeaching(tTaskTemplate[nTaskId]["Cartoon"])
	end
end

-- 交任务后播放漫画
function ShenpinRefinArea_Cartoon(nTaskId)
	if tTaskTemplate[nTaskId]["HandOverCartoon"] ~= nil then
		User_NoviceTeaching(tTaskTemplate[nTaskId]["HandOverCartoon"])
	end
end
-----------------------------------数据配置-----------------------------------
-- Npc的闲聊对白
local tShenpinRefinArea_Gossip = {}
	tShenpinRefinArea_Gossip[19160] = "1-3"
	tShenpinRefinArea_Gossip[19161] = "1-3"
	tShenpinRefinArea_Gossip[19162] = "1-2"
	tShenpinRefinArea_Gossip[19163] = "1-2"
	tShenpinRefinArea_Gossip[19164] = "1-2"
	tShenpinRefinArea_Gossip[19165] = "1-2"
	tShenpinRefinArea_Gossip[19166] = "1-2"

-- 采集NPC
local tShenpinRefinArea_Collect = {}
	-- 草药
	tShenpinRefinArea_Collect[19167] = {}
	tShenpinRefinArea_Collect[19167]["TaskId"] = 3642
	tShenpinRefinArea_Collect[19167]["Range"] = 3
	tShenpinRefinArea_Collect[19167]["Seces"] = 1
	tShenpinRefinArea_Collect[19167]["ItemId"] = 3008741
	tShenpinRefinArea_Collect[19167]["ItemNum"] = 10

	tShenpinRefinArea_Collect[19168] = tShenpinRefinArea_Collect[19167]
	tShenpinRefinArea_Collect[19169] = tShenpinRefinArea_Collect[19167]
	tShenpinRefinArea_Collect[19170] = tShenpinRefinArea_Collect[19167]
	tShenpinRefinArea_Collect[19171] = tShenpinRefinArea_Collect[19167]
	tShenpinRefinArea_Collect[19175] = tShenpinRefinArea_Collect[19167]

	-- 岩浆之花
	tShenpinRefinArea_Collect[19172] = {}
	tShenpinRefinArea_Collect[19172]["TaskId"] = 3647
	tShenpinRefinArea_Collect[19172]["Range"] = 3
	tShenpinRefinArea_Collect[19172]["Seces"] = 1
	tShenpinRefinArea_Collect[19172]["ItemId"] = 3008747
	tShenpinRefinArea_Collect[19172]["ItemNum"] = 10

	tShenpinRefinArea_Collect[19173] = tShenpinRefinArea_Collect[19172]
	tShenpinRefinArea_Collect[19174] = tShenpinRefinArea_Collect[19172]
	tShenpinRefinArea_Collect[19176] = tShenpinRefinArea_Collect[19172]
	tShenpinRefinArea_Collect[19177] = tShenpinRefinArea_Collect[19172]
	tShenpinRefinArea_Collect[19238] = tShenpinRefinArea_Collect[19172]
	tShenpinRefinArea_Collect[19239] = tShenpinRefinArea_Collect[19172]

-- 概率掉落任务物品
local tShenpinRefinArea_DropTaskItem = {}
	-- 金焰岩怪
	tShenpinRefinArea_DropTaskItem[2759] = {}
	tShenpinRefinArea_DropTaskItem[2759][1] = {}
	tShenpinRefinArea_DropTaskItem[2759][1]["RandomItemChanceType"] = 3
	tShenpinRefinArea_DropTaskItem[2759][1]["ItemSelfChanceSum"] = 10000
	tShenpinRefinArea_DropTaskItem[2759][1]["ItemChance"] = 3300
	tShenpinRefinArea_DropTaskItem[2759][1]["Item_1"] = 3008752
	
	-- 烈焰赤蛇
	tShenpinRefinArea_DropTaskItem[2762] = {}
	tShenpinRefinArea_DropTaskItem[2762]["ItemChanceSum"] = 10000
	
	tShenpinRefinArea_DropTaskItem[2762][1] = {}
	tShenpinRefinArea_DropTaskItem[2762][1]["RandomItemChanceType"] = 2
	tShenpinRefinArea_DropTaskItem[2762][1]["ItemChance"] = 2000
	tShenpinRefinArea_DropTaskItem[2762][1]["Item_1"] = 3008742
	tShenpinRefinArea_DropTaskItem[2762][1]["ItemAttr"] = "0 1"
	
	tShenpinRefinArea_DropTaskItem[2762][2] = {}
	tShenpinRefinArea_DropTaskItem[2762][2]["RandomItemChanceType"] = 2
	tShenpinRefinArea_DropTaskItem[2762][2]["ItemChance"] = 2000
	tShenpinRefinArea_DropTaskItem[2762][2]["Item_1"] = 3008742
	tShenpinRefinArea_DropTaskItem[2762][2]["ItemAttr"] = "0 2"
	
	tShenpinRefinArea_DropTaskItem[2762][3] = {}
	tShenpinRefinArea_DropTaskItem[2762][3]["RandomItemChanceType"] = 2
	tShenpinRefinArea_DropTaskItem[2762][3]["ItemChance"] = 2000
	tShenpinRefinArea_DropTaskItem[2762][3]["Item_1"] = 3008742
	tShenpinRefinArea_DropTaskItem[2762][3]["ItemAttr"] = "0 3"
	
	tShenpinRefinArea_DropTaskItem[2762][4] = {}
	tShenpinRefinArea_DropTaskItem[2762][4]["RandomItemChanceType"] = 2
	tShenpinRefinArea_DropTaskItem[2762][4]["ItemChance"] = 2000
	tShenpinRefinArea_DropTaskItem[2762][4]["Item_1"] = 3008742
	tShenpinRefinArea_DropTaskItem[2762][4]["ItemAttr"] = "0 4"
	
	tShenpinRefinArea_DropTaskItem[2762][5] = {}
	tShenpinRefinArea_DropTaskItem[2762][5]["RandomItemChanceType"] = 2
	tShenpinRefinArea_DropTaskItem[2762][5]["ItemChance"] = 2000
	tShenpinRefinArea_DropTaskItem[2762][5]["Item_1"] = 3008742
	tShenpinRefinArea_DropTaskItem[2762][5]["ItemAttr"] = "0 5"
	
	-- 利爪岩魔
	tShenpinRefinArea_DropTaskItem[2763] = {}
	tShenpinRefinArea_DropTaskItem[2763][1] = {}
	tShenpinRefinArea_DropTaskItem[2763][1]["RandomItemChanceType"] = 3
	tShenpinRefinArea_DropTaskItem[2763][1]["ItemSelfChanceSum"] = 10000
	tShenpinRefinArea_DropTaskItem[2763][1]["ItemChance"] = 3300
	tShenpinRefinArea_DropTaskItem[2763][1]["Item_1"] = 3008743
		
	-- 铜角岩兽
	tShenpinRefinArea_DropTaskItem[2764] = {}
	tShenpinRefinArea_DropTaskItem[2764][1] = {}
	tShenpinRefinArea_DropTaskItem[2764][1]["RandomItemChanceType"] = 3
	tShenpinRefinArea_DropTaskItem[2764][1]["ItemSelfChanceSum"] = 10000
	tShenpinRefinArea_DropTaskItem[2764][1]["ItemChance"] = 3300
	tShenpinRefinArea_DropTaskItem[2764][1]["Item_1"] = 3008754

	-- 火狱妖兽
	tShenpinRefinArea_DropTaskItem[2765] = {}
	tShenpinRefinArea_DropTaskItem[2765]["ItemChanceSum"] = 10000
	
	tShenpinRefinArea_DropTaskItem[2765][1] = {}
	tShenpinRefinArea_DropTaskItem[2765][1]["RandomItemChanceType"] = 2
	tShenpinRefinArea_DropTaskItem[2765][1]["ItemChance"] = 1000
	tShenpinRefinArea_DropTaskItem[2765][1]["Item_1"] = 3008748
	tShenpinRefinArea_DropTaskItem[2765][1]["ItemAttr"] = "0 3"
	
	tShenpinRefinArea_DropTaskItem[2765][2] = {}
	tShenpinRefinArea_DropTaskItem[2765][2]["RandomItemChanceType"] = 2
	tShenpinRefinArea_DropTaskItem[2765][2]["ItemChance"] = 1000
	tShenpinRefinArea_DropTaskItem[2765][2]["Item_1"] = 3008748
	tShenpinRefinArea_DropTaskItem[2765][2]["ItemAttr"] = "0 4"
	
	tShenpinRefinArea_DropTaskItem[2765][3] = {}
	tShenpinRefinArea_DropTaskItem[2765][3]["RandomItemChanceType"] = 2
	tShenpinRefinArea_DropTaskItem[2765][3]["ItemChance"] = 1000
	tShenpinRefinArea_DropTaskItem[2765][3]["Item_1"] = 3008748
	tShenpinRefinArea_DropTaskItem[2765][3]["ItemAttr"] = "0 5"
	
	tShenpinRefinArea_DropTaskItem[2765][4] = {}
	tShenpinRefinArea_DropTaskItem[2765][4]["RandomItemChanceType"] = 2
	tShenpinRefinArea_DropTaskItem[2765][4]["ItemChance"] = 1000
	tShenpinRefinArea_DropTaskItem[2765][4]["Item_1"] = 3008748
	tShenpinRefinArea_DropTaskItem[2765][4]["ItemAttr"] = "0 6"
	
	tShenpinRefinArea_DropTaskItem[2765][5] = {}
	tShenpinRefinArea_DropTaskItem[2765][5]["RandomItemChanceType"] = 2
	tShenpinRefinArea_DropTaskItem[2765][5]["ItemChance"] = 1000
	tShenpinRefinArea_DropTaskItem[2765][5]["Item_1"] = 3008748
	tShenpinRefinArea_DropTaskItem[2765][5]["ItemAttr"] = "0 7"

	tShenpinRefinArea_DropTaskItem[2765][6] = {}
	tShenpinRefinArea_DropTaskItem[2765][6]["RandomItemChanceType"] = 2
	tShenpinRefinArea_DropTaskItem[2765][6]["ItemChance"] = 1000
	tShenpinRefinArea_DropTaskItem[2765][6]["Item_1"] = 3008748
	tShenpinRefinArea_DropTaskItem[2765][6]["ItemAttr"] = "0 8"
	
	tShenpinRefinArea_DropTaskItem[2765][7] = {}
	tShenpinRefinArea_DropTaskItem[2765][7]["RandomItemChanceType"] = 2
	tShenpinRefinArea_DropTaskItem[2765][7]["ItemChance"] = 1000
	tShenpinRefinArea_DropTaskItem[2765][7]["Item_1"] = 3008748
	tShenpinRefinArea_DropTaskItem[2765][7]["ItemAttr"] = "0 9"
	
	tShenpinRefinArea_DropTaskItem[2765][8] = {}
	tShenpinRefinArea_DropTaskItem[2765][8]["RandomItemChanceType"] = 2
	tShenpinRefinArea_DropTaskItem[2765][8]["ItemChance"] = 1000
	tShenpinRefinArea_DropTaskItem[2765][8]["Item_1"] = 3008748
	tShenpinRefinArea_DropTaskItem[2765][8]["ItemAttr"] = "0 10"
	
	tShenpinRefinArea_DropTaskItem[2765][9] = {}
	tShenpinRefinArea_DropTaskItem[2765][9]["RandomItemChanceType"] = 2
	tShenpinRefinArea_DropTaskItem[2765][9]["ItemChance"] = 1000
	tShenpinRefinArea_DropTaskItem[2765][9]["Item_1"] = 3008748
	tShenpinRefinArea_DropTaskItem[2765][9]["ItemAttr"] = "0 11"
	
	tShenpinRefinArea_DropTaskItem[2765][10] = {}
	tShenpinRefinArea_DropTaskItem[2765][10]["RandomItemChanceType"] = 2
	tShenpinRefinArea_DropTaskItem[2765][10]["ItemChance"] = 1000
	tShenpinRefinArea_DropTaskItem[2765][10]["Item_1"] = 3008748
	tShenpinRefinArea_DropTaskItem[2765][10]["ItemAttr"] = "0 12"
	
-- 物品对应的任务ID	
local ShenpinRefinArea_Item = {}
	ShenpinRefinArea_Item[3008740] = 3641
	ShenpinRefinArea_Item[3008741] = 3642
	ShenpinRefinArea_Item[3008742] = 3644
	ShenpinRefinArea_Item[3008743] = 3645
	ShenpinRefinArea_Item[3008745] = 3646
	ShenpinRefinArea_Item[3008747] = 3647
	ShenpinRefinArea_Item[3008748] = 3648
	ShenpinRefinArea_Item[3008750] = 3638
	ShenpinRefinArea_Item[3008751] = 3639
	ShenpinRefinArea_Item[3008752] = 3636
	ShenpinRefinArea_Item[3008754] = 3646

-- 陷阱
local ShenpinRefinArea_Trap = {}
	ShenpinRefinArea_Trap[1416] = {}
	ShenpinRefinArea_Trap[1416]["TaskId"] = 3641
	ShenpinRefinArea_Trap[1416]["ItemId"] = 3008740
	
-- 自动寻路的坐标
local tShenpinRefinArea_PathFind = {}
	tShenpinRefinArea_PathFind[19160] = {}
	tShenpinRefinArea_PathFind[19160]["NpcId"] = 19160
	tShenpinRefinArea_PathFind[19160]["MapId"] = 3998
	tShenpinRefinArea_PathFind[19160]["PosX"] = 85
	tShenpinRefinArea_PathFind[19160]["PosY"] = 356
	
	tShenpinRefinArea_PathFind[19161] = {}
	tShenpinRefinArea_PathFind[19161]["NpcId"] = 19161
	tShenpinRefinArea_PathFind[19161]["MapId"] = 3998
	tShenpinRefinArea_PathFind[19161]["PosX"] = 162
	tShenpinRefinArea_PathFind[19161]["PosY"] = 395
	
	tShenpinRefinArea_PathFind[19162] = {}
	tShenpinRefinArea_PathFind[19162]["NpcId"] = 19162
	tShenpinRefinArea_PathFind[19162]["MapId"] = 3998
	tShenpinRefinArea_PathFind[19162]["PosX"] = 142
	tShenpinRefinArea_PathFind[19162]["PosY"] = 320
	
	tShenpinRefinArea_PathFind[19163] = {}
	tShenpinRefinArea_PathFind[19163]["NpcId"] = 19163
	tShenpinRefinArea_PathFind[19163]["MapId"] = 3998
	tShenpinRefinArea_PathFind[19163]["PosX"] = 318
	tShenpinRefinArea_PathFind[19163]["PosY"] = 454
	
	tShenpinRefinArea_PathFind[19164] = {}
	tShenpinRefinArea_PathFind[19164]["NpcId"] = 19164
	tShenpinRefinArea_PathFind[19164]["MapId"] = 3998
	tShenpinRefinArea_PathFind[19164]["PosX"] = 247
	tShenpinRefinArea_PathFind[19164]["PosY"] = 273
	
	tShenpinRefinArea_PathFind[19165] = {}
	tShenpinRefinArea_PathFind[19165]["NpcId"] = 19165
	tShenpinRefinArea_PathFind[19165]["MapId"] = 3998
	tShenpinRefinArea_PathFind[19165]["PosX"] = 571
	tShenpinRefinArea_PathFind[19165]["PosY"] = 427

-- 补领任务物品
local tShenpinRefinArea_Replacement = {}
	-- 补领金属块
	tShenpinRefinArea_Replacement[19163] = {}
	tShenpinRefinArea_Replacement[19163]["Item"] = 3008751
	tShenpinRefinArea_Replacement[19163]["HaveItem"] = "4-5"
	tShenpinRefinArea_Replacement[19163]["NoSpace"] = "4-2"
	tShenpinRefinArea_Replacement[19163]["Success"] = "4-4"
	
	-- 补领一壶酒
	tShenpinRefinArea_Replacement[19164] = {}
	tShenpinRefinArea_Replacement[19164]["Item"] = 3008740
	tShenpinRefinArea_Replacement[19164]["HaveItem"] = "2-7"
	tShenpinRefinArea_Replacement[19164]["NoSpace"] = "2-8"
	tShenpinRefinArea_Replacement[19164]["Success"] = "2-6"

-- 播放光效的位置
local tShenpinRefinArea_Effect = {}
	tShenpinRefinArea_Effect[3638] = {}
	tShenpinRefinArea_Effect[3638]["MapId"] = 3998
	tShenpinRefinArea_Effect[3638]["PosX"] = 313
	tShenpinRefinArea_Effect[3638]["PosY"] = 450
	
	tShenpinRefinArea_Effect[3646] = {}
	tShenpinRefinArea_Effect[3646]["MapId"] = 3998
	tShenpinRefinArea_Effect[3646]["PosX"] = 573
	tShenpinRefinArea_Effect[3646]["PosY"] = 423
	
	tShenpinRefinArea_Effect[3647] = {}
	tShenpinRefinArea_Effect[3647]["MapId"] = 3998
	tShenpinRefinArea_Effect[3647]["PosX"] = 573
	tShenpinRefinArea_Effect[3647]["PosY"] = 423

-- 交任务后一起删除的任务物品
local tShenpinRefinArea_DeleteTogether = {}
	tShenpinRefinArea_DeleteTogether[3646] = 3008754
	tShenpinRefinArea_DeleteTogether[3647] = 3008747
	
------------------------------------ 人是物非今何往
tTaskTemplate[3631] = {}
tTaskTemplate[3631]["BeginNpcId"] = 19166
tTaskTemplate[3631]["EndNpcId"] = 19160
tTaskTemplate[3631]["TaskId"] = 3631
tTaskTemplate[3631]["RevLevel"] = 110
tTaskTemplate[3631]["RevMetempsychosis"] = 0
-- 任务奖励
tTaskTemplate[3631]["RewSpace"] = 4
--tTaskTemplate[3631]["RewMoney"] = 1000
-- tTaskTemplate[3631]["RewExpTime"] = 30
tTaskTemplate[3631]["RewItemId1"] = 3009000
tTaskTemplate[3631]["RewItemAttr1"] = "0 3 0 2880 1"
tTaskTemplate[3631]["RewItemId2"] = 3200344
tTaskTemplate[3631]["RewItemAttr2"] = "0 1 0 2880 1"
tTaskTemplate[3631]["RewardEffect"] = "angelwing"
tTaskTemplate[3631]["RewardMsg"] = tShenpinRefinArea_Text[3631]["RewardMsg"]
-- 后续任务
tTaskTemplate[3631]["PostTaskId"] = 3632
-- 接任务自己写的函数
tTaskTemplate[3631]["AcceptFunc"] = ShenpinRefinArea_PathFind
tTaskTemplate[3631]["AcceptPathFind"] = "Delivery"
tTaskTemplate[3631]["TwoCartoon"] = 1001

tTaskTemplate[3631]["Delivery"] = {}
tTaskTemplate[3631]["Delivery"]["MapId"] = 3998
tTaskTemplate[3631]["Delivery"]["PosX"] = 85
tTaskTemplate[3631]["Delivery"]["PosY"] = 350

tTaskTemplate[3631]["PathFind"] = {}
tTaskTemplate[3631]["PathFind"]["MapId"] = 4020
tTaskTemplate[3631]["PathFind"]["PosX"] = 73
tTaskTemplate[3631]["PathFind"]["PosY"] = 98
tTaskTemplate[3631]["PathFind"]["NpcId"] = 0

-- 对白编号表
tTaskTemplate[3631]["MeetAccept"] = "1-1"	-- 接任务对白
tTaskTemplate[3631]["SubTask"] = "1-1" 		-- 交任务
tTaskTemplate[3631]["TwoDialogue"] = "1-2" 		-- 交任务
tTaskTemplate[3631]["NotLevel"] = "1-3" 		-- 交任务
tTaskTemplate[3631]["HandOverSpace"] = "4-1" 		-- 交任务

------------------------------------ 前路艰险谁可探
tTaskTemplate[3632] = {}
tTaskTemplate[3632]["BeginNpcId"] = 19160
tTaskTemplate[3632]["EndNpcId"] = 19161
tTaskTemplate[3632]["TaskId"] = 3632
tTaskTemplate[3632]["FrontTask"] = 3631
tTaskTemplate[3632]["RevLevel"] = 110
tTaskTemplate[3632]["RevMetempsychosis"] = 0
-- 任务奖励
--tTaskTemplate[3632]["RewMoney"] = 1000
-- tTaskTemplate[3632]["RewExpTime"] = 30
tTaskTemplate[3632]["RewItemId1"] = 3200344
tTaskTemplate[3632]["RewItemAttr1"] = "0 1 0 2880 1"
tTaskTemplate[3632]["RewardEffect"] = "angelwing"
-- 后续任务
tTaskTemplate[3632]["PostTaskId"] = 3633
-- 接任务自己写的函数
tTaskTemplate[3632]["AcceptFunc"] = ShenpinRefinArea_PathFind
tTaskTemplate[3632]["AcceptPathFind"] = "Complete"

-- 对白编号表
tTaskTemplate[3632]["MeetAccept"] = "2-1"
tTaskTemplate[3632]["HasAccept"] = "2-3"
tTaskTemplate[3632]["SubTask"] = "1-4"
tTaskTemplate[3632]["HandOverSpace"] = "2-1" 		-- 交任务

------------------------------------ 才行便困蛮荒地
tTaskTemplate[3633] = {}
tTaskTemplate[3633]["BeginNpcId"] = 19161
tTaskTemplate[3633]["EndNpcId"] = 19162
tTaskTemplate[3633]["TaskId"] = 3633
tTaskTemplate[3633]["FrontTask"] = 3632
tTaskTemplate[3633]["RevLevel"] = 110
tTaskTemplate[3633]["RevMetempsychosis"] = 0
-- 任务奖励
--tTaskTemplate[3633]["RewMoney"] = 1000
-- tTaskTemplate[3633]["RewExpTime"] = 30
tTaskTemplate[3633]["RewItemId1"] = 3200344
tTaskTemplate[3633]["RewItemAttr1"] = "0 1 0 2880 1"
tTaskTemplate[3633]["RewardEffect"] = "angelwing"
-- 后续任务
tTaskTemplate[3633]["PostTaskId"] = 3634
-- 接任务自己写的函数
tTaskTemplate[3633]["AcceptFunc"] = ShenpinRefinArea_PathFind
tTaskTemplate[3633]["AcceptPathFind"] = "Complete"

-- 接任务对白编号表
tTaskTemplate[3633]["MeetAccept"] = "1-1"
tTaskTemplate[3633]["HasAccept"] = "1-2"
-- 交任务对白编号表
tTaskTemplate[3633]["SubTask"] = "1-1"
tTaskTemplate[3633]["HandOverSpace"] = "7-1" 		-- 交任务

------------------------------------ 岂容妖孽逞凶狂
tTaskTemplate[3634] = {}
tTaskTemplate[3634]["BeginNpcId"] = 19162
tTaskTemplate[3634]["EndNpcId"] = 19162
tTaskTemplate[3634]["TaskId"] = 3634
tTaskTemplate[3634]["FrontTask"] = 3633
tTaskTemplate[3634]["RevLevel"] = 110
tTaskTemplate[3634]["RevMetempsychosis"] = 0
-- 任务奖励
--tTaskTemplate[3634]["RewMoney"] = 5000
-- tTaskTemplate[3634]["RewExpTime"] = 120
tTaskTemplate[3634]["RewItemId1"] = 3200346
tTaskTemplate[3634]["RewItemAttr1"] = "0 1 0 2880 1"
tTaskTemplate[3634]["RewardEffect"] = "angelwing"
-- 后续任务
tTaskTemplate[3634]["PostTaskId"] = 3635
-- 交任务的条件
tTaskTemplate[3634]["ReqMonsterId1"] = {2758}
tTaskTemplate[3634]["ReqMonsterCount1"] = 10
-- 怪物数量满足交任务的提示
tTaskTemplate[3634]["KillMonsterFunc"] = ShenpinRefinArea_KillMonster
-- 接任务自己写的函数
tTaskTemplate[3634]["AcceptFunc"] = ShenpinRefinArea_PathFind
tTaskTemplate[3634]["AcceptPathFind"] = "Min"

-- 对白编号表
tTaskTemplate[3634]["MeetAccept"] = "2-1"	-- 接任务对白
tTaskTemplate[3634]["SubTask"] = "2-3" 		-- 交任务
tTaskTemplate[3634]["TwoDialogue"] = "2-5" 		-- 交任务
tTaskTemplate[3634]["HandOverMonster"] = "2-4" 	-- 怪物不满足
tTaskTemplate[3634]["HandOverSpace"] = "7-1"

tTaskTemplate[3634]["Min"] = {}
tTaskTemplate[3634]["Min"]["NpcId"] = 0
tTaskTemplate[3634]["Min"]["MapId"] = 3998
tTaskTemplate[3634]["Min"]["PosX"] = 145
tTaskTemplate[3634]["Min"]["PosY"] = 338

------------------------------------ 焚天灼焰起残炉
tTaskTemplate[3635] = {}
tTaskTemplate[3635]["BeginNpcId"] = 19162
tTaskTemplate[3635]["EndNpcId"] = 19163
tTaskTemplate[3635]["TaskId"] = 3635
tTaskTemplate[3635]["FrontTask"] = 3634
tTaskTemplate[3635]["RevLevel"] = 110
tTaskTemplate[3635]["RevMetempsychosis"] = 0
-- 任务奖励
--tTaskTemplate[3635]["RewMoney"] = 1000
-- tTaskTemplate[3635]["RewExpTime"] = 30
tTaskTemplate[3635]["RewItemId1"] = 3200344
tTaskTemplate[3635]["RewItemAttr1"] = "0 1 0 2880 1"
tTaskTemplate[3635]["RewardEffect"] = "angelwing"
-- 后续任务
tTaskTemplate[3635]["PostTaskId"] = 3636
-- 接任务自己写的函数
tTaskTemplate[3635]["AcceptFunc"] = ShenpinRefinArea_PathFind
tTaskTemplate[3635]["AcceptPathFind"] = "Complete"

-- 对白编号表
tTaskTemplate[3635]["MeetAccept"] = "3-1"	-- 接任务对白
tTaskTemplate[3635]["HasAccept"] = "3-3"	-- 接任务对白
tTaskTemplate[3635]["SubTask"] = "1-1" 		-- 交任务
tTaskTemplate[3635]["HandOverSpace"] = "5-1"

------------------------------------ 究其根底或可期
tTaskTemplate[3636] = {}
tTaskTemplate[3636]["BeginNpcId"] = 19163
tTaskTemplate[3636]["EndNpcId"] = 19163
tTaskTemplate[3636]["TaskId"] = 3636
tTaskTemplate[3636]["FrontTask"] = 3635
tTaskTemplate[3636]["RevLevel"] = 110
tTaskTemplate[3636]["RevMetempsychosis"] = 0
-- 任务奖励
--tTaskTemplate[3636]["RewMoney"] = 5000
-- tTaskTemplate[3636]["RewExpTime"] = 120
tTaskTemplate[3636]["RewItemId1"] = 3200346
tTaskTemplate[3636]["RewItemAttr1"] = "0 1 0 2880 1"
tTaskTemplate[3636]["RewardEffect"] = "angelwing"
-- 后续任务
tTaskTemplate[3636]["PostTaskId"] = 3637
-- 交任务的需求
tTaskTemplate[3636]["ReqItemId1"] = 3008752	
tTaskTemplate[3636]["ReqItemCount1"] = 8
-- 怪物掉落任务物品配置
tTaskTemplate[3636]["ReqMonsterId1"] = {2759}
tTaskTemplate[3636]["MustSpace"] = 1
tTaskTemplate[3636]["NoMustSpace"] = tShenpinRefinArea_Text["NoSpace"]
tTaskTemplate[3636]["ProbabilityDropItem1"] = tShenpinRefinArea_DropTaskItem	
tTaskTemplate[3636]["ProbabilityDropIndex1"] = 2759
tTaskTemplate[3636]["ProbabilityDropMode1"] = 2
tTaskTemplate[3636]["ProbabilityDropLimit1"] = 8
tTaskTemplate[3636]["DropFunc"] = ShenpinRefinArea_Drop
tTaskTemplate[3636]["DropEffect"] = "zf2-e123"
-- 任务物品采集完后接的函数
tTaskTemplate[3636]["ReqItemFunc"] = ShenpinRefinArea_CollectItem
tTaskTemplate[3636]["ItemPathFind"] = "Complete"
-- 接任务自己写的函数
tTaskTemplate[3636]["AcceptFunc"] = ShenpinRefinArea_PathFind
tTaskTemplate[3636]["AcceptPathFind"] = "Min"

-- 对白编号表
tTaskTemplate[3636]["MeetAccept"] = "2-1"	-- 接任务对白
tTaskTemplate[3636]["HandOverItem"] = "2-4"	-- 物品不够
tTaskTemplate[3636]["SubTask"] = "2-3" 		-- 交任务
tTaskTemplate[3636]["TwoDialogue"] = "2-2" 	-- 二次确认
tTaskTemplate[3636]["HandOverSpace"] = "5-1"

tTaskTemplate[3636]["Min"] = {}
tTaskTemplate[3636]["Min"]["NpcId"] = 0
tTaskTemplate[3636]["Min"]["MapId"] = 3998
tTaskTemplate[3636]["Min"]["PosX"] = 262
tTaskTemplate[3636]["Min"]["PosY"] = 430

------------------------------------ 神兵宝甲由此铸
tTaskTemplate[3637] = {}
tTaskTemplate[3637]["BeginNpcId"] = 19163
tTaskTemplate[3637]["EndNpcId"] = 19163
tTaskTemplate[3637]["TaskId"] = 3637
tTaskTemplate[3637]["FrontTask"] = 3636
tTaskTemplate[3637]["RevLevel"] = 110
tTaskTemplate[3637]["RevMetempsychosis"] = 0
--tTaskTemplate[3637]["RewMoney"] = 1000
-- tTaskTemplate[3637]["RewExpTime"] = 30
tTaskTemplate[3637]["RewItemId1"] = 3200344
tTaskTemplate[3637]["RewItemAttr1"] = "0 1 0 2880 1"
tTaskTemplate[3637]["RewardEffect"] = "angelwing"
tTaskTemplate[3637]["PostTaskId"] = 3638
-- 接任务自己写的函数
tTaskTemplate[3637]["AcceptFunc"] = ShenpinRefinArea_Dialogue
tTaskTemplate[3637]["Cartoon"] = 1002
-- 对白编号表
tTaskTemplate[3637]["MeetAccept"] = "3-1"	-- 接任务对白
tTaskTemplate[3637]["SubTask"] = "3-2" 		-- 交任务
tTaskTemplate[3637]["HandOverSpace"] = "5-1"

------------------------------------ 铁砧惊鸣散妖魄
tTaskTemplate[3638] = {}
tTaskTemplate[3638]["BeginNpcId"] = 19163
tTaskTemplate[3638]["EndNpcId"] = 19163
tTaskTemplate[3638]["TaskId"] = 3638
tTaskTemplate[3638]["FrontTask"] = 3637
tTaskTemplate[3638]["PostTaskId"] = 3639
tTaskTemplate[3638]["RevLevel"] = 110
tTaskTemplate[3638]["RevMetempsychosis"] = 0
-- 任务奖励
tTaskTemplate[3638]["RewSpace"] = 2
--tTaskTemplate[3638]["RewMoney"] = 5000
-- tTaskTemplate[3638]["RewExpTime"] = 120
tTaskTemplate[3638]["RewItemId1"] = 3009001
tTaskTemplate[3638]["RewItemAttr1"] = "0 2 0 2880 1"
tTaskTemplate[3638]["RewItemId2"] = 3200346
tTaskTemplate[3638]["RewItemAttr2"] = "0 1 0 2880 1"
tTaskTemplate[3638]["RewardEffect"] = "angelwing"
tTaskTemplate[3638]["MapEffect"] = "Attack35r"
tTaskTemplate[3638]["RewardMsg"] = tShenpinRefinArea_Text[3638]["RewardMsg"]

-- 交任务条件
tTaskTemplate[3638]["ReqItemId1"] = 3008750	
tTaskTemplate[3638]["ReqItemCount1"] = 1

-- 怪物掉落配置
tTaskTemplate[3638]["ReqMonsterId1"] = {2760}
tTaskTemplate[3638]["MustFallItemId1"] = {}
tTaskTemplate[3638]["MustFallItemId1"][1] = {}
tTaskTemplate[3638]["MustFallItemId1"][1]["ItemId"] = 3008750
tTaskTemplate[3638]["MustFallItemId1"][1]["ItemAttr"] = "0 1"
tTaskTemplate[3638]["MustFallItemId1"][1]["ItemLimit"] = 1
tTaskTemplate[3638]["MustDropMode1"] = 2
tTaskTemplate[3638]["ReqItemFunc"] = ShenpinRefinArea_CollectItem
tTaskTemplate[3638]["DropFunc"] = ShenpinRefinArea_Drop
tTaskTemplate[3638]["DropEffect"] = "zf2-e123"
tTaskTemplate[3638]["AcceptFunc"] = ShenpinRefinArea_PathFind
tTaskTemplate[3638]["AcceptPathFind"] = "Min"
tTaskTemplate[3638]["ItemPathFind"] = "Complete"

-- 对白编号表
tTaskTemplate[3638]["MeetAccept"] = "3-4"
tTaskTemplate[3638]["HasAccept"] = "3-5"
tTaskTemplate[3638]["SubTask"] = "3-6"
tTaskTemplate[3638]["HandOverItem"] = "3-7"
tTaskTemplate[3638]["TwoDialogue"] = "3-8"
tTaskTemplate[3638]["HandOverSpace"] = "6-1"

tTaskTemplate[3638]["Min"] = {}
tTaskTemplate[3638]["Min"]["NpcId"] = 0
tTaskTemplate[3638]["Min"]["MapId"] = 3998
tTaskTemplate[3638]["Min"]["PosX"] = 392
tTaskTemplate[3638]["Min"]["PosY"] = 706

------------------------------------ 未料炉内有乾坤
tTaskTemplate[3639] = {}
tTaskTemplate[3639]["BeginNpcId"] = 19163
tTaskTemplate[3639]["EndNpcId"] = 19162
tTaskTemplate[3639]["TaskId"] = 3639
tTaskTemplate[3639]["FrontTask"] = 3638
tTaskTemplate[3639]["PostTaskId"] = 3640
tTaskTemplate[3639]["RevLevel"] = 110
tTaskTemplate[3639]["RevMetempsychosis"] = 0
-- 任务奖励
--tTaskTemplate[3639]["RewMoney"] = 1000
-- tTaskTemplate[3639]["RewExpTime"] = 30
tTaskTemplate[3639]["RewItemId1"] = 3200344
tTaskTemplate[3639]["RewItemAttr1"] = "0 1 0 2880 1"
tTaskTemplate[3639]["RewardEffect"] = "angelwing"

tTaskTemplate[3639]["GetItemId1"] = 3008751
tTaskTemplate[3639]["ReqItemId1"] = 3008751	
tTaskTemplate[3639]["ReqItemCount1"] = 1

tTaskTemplate[3639]["AcceptFunc"] = ShenpinRefinArea_PathFind
tTaskTemplate[3639]["AcceptPathFind"] = "Complete"

-- 接受任务对白
tTaskTemplate[3639]["MeetAccept"] = "4-1"
tTaskTemplate[3639]["MeetSpace"] = "4-2"
tTaskTemplate[3639]["HasAccept"] = "4-3"

-- 交任务对白
tTaskTemplate[3639]["SubTask"] = "4-1"
tTaskTemplate[3639]["HandOverItem"] = "4-2"
tTaskTemplate[3639]["TwoDialogue"] = "4-3"
tTaskTemplate[3639]["HandOverSpace"] = "7-1"

------------------------------------ 往事秘辛何所指
tTaskTemplate[3640] = {}
tTaskTemplate[3640]["BeginNpcId"] = 19162
tTaskTemplate[3640]["EndNpcId"] = 19164
tTaskTemplate[3640]["TaskId"] = 3640
tTaskTemplate[3640]["FrontTask"] = 3639
tTaskTemplate[3640]["PostTaskId"] = 3641
tTaskTemplate[3640]["RevLevel"] = 110
tTaskTemplate[3640]["RevMetempsychosis"] = 0

--tTaskTemplate[3640]["RewMoney"] = 1000
-- tTaskTemplate[3640]["RewExpTime"] = 30
tTaskTemplate[3640]["RewItemId1"] = 3200344
tTaskTemplate[3640]["RewItemAttr1"] = "0 1 0 2880 1"
tTaskTemplate[3640]["RewardEffect"] = "angelwing"

tTaskTemplate[3640]["AcceptFunc"] = ShenpinRefinArea_PathFind
tTaskTemplate[3640]["AcceptPathFind"] = "Complete"

-- 对白编号表
tTaskTemplate[3640]["MeetAccept"] = "5-1"
tTaskTemplate[3640]["HasAccept"] = "5-2"
tTaskTemplate[3640]["SubTask"] = "1-1"
tTaskTemplate[3640]["HandOverSpace"] = "5-1"

------------------------------------ 一杯浊酒祭冤魂
tTaskTemplate[3641] = {}
-- 任务需求
tTaskTemplate[3641]["BeginNpcId"] = 19164
tTaskTemplate[3641]["EndNpcId"] = 19164
tTaskTemplate[3641]["TaskId"] = 3641
tTaskTemplate[3641]["FrontTask"] = 3640
tTaskTemplate[3641]["RevLevel"] = 110
tTaskTemplate[3641]["RevMetempsychosis"] = 0
-- 任务奖励
--tTaskTemplate[3641]["RewMoney"] = 5000
-- tTaskTemplate[3641]["RewExpTime"] = 120
tTaskTemplate[3641]["RewItemId1"] = 3200346
tTaskTemplate[3641]["RewItemAttr1"] = "0 1 0 2880 1"
tTaskTemplate[3641]["RewardEffect"] = "angelwing"

-- 后续任务
tTaskTemplate[3641]["PostTaskId"] = 3642
-- 接任务部分
tTaskTemplate[3641]["GetItemId1"] = 3008740
tTaskTemplate[3641]["AcceptFunc"] = ShenpinRefinArea_PathFind
tTaskTemplate[3641]["AcceptPathFind"] = "Min"
-- 交任务条件
tTaskTemplate[3641]["ReqMonsterId1"] = {2761}
tTaskTemplate[3641]["ReqMonsterCount1"] = 15
tTaskTemplate[3641]["Data1"] = 15
tTaskTemplate[3641]["Data2"] = 1
-- 怪物数量满足交任务的提示
tTaskTemplate[3641]["KillMonsterFunc"] = ShenpinRefinArea_KillMonster

-- 对白编号表
tTaskTemplate[3641]["MeetAccept"] = "2-1"
tTaskTemplate[3641]["MeetSpace"] = "2-8"
tTaskTemplate[3641]["HandOverMonster"] = "2-2"
tTaskTemplate[3641]["HandOverDetail"] = "2-5"
tTaskTemplate[3641]["SubTask"] = "2-3"
tTaskTemplate[3641]["TwoDialogue"] = "2-4"
tTaskTemplate[3641]["HandOverSpace"] = "5-1"

-- 寻路坐标
tTaskTemplate[3641]["Min"] = {}
tTaskTemplate[3641]["Min"]["NpcId"] = 0
tTaskTemplate[3641]["Min"]["MapId"] = 3998
tTaskTemplate[3641]["Min"]["PosX"] = 230
tTaskTemplate[3641]["Min"]["PosY"] = 273

tTaskTemplate[3641]["Memorial"] = {}
tTaskTemplate[3641]["Memorial"]["NpcId"] = 0
tTaskTemplate[3641]["Memorial"]["MapId"] = 3998
tTaskTemplate[3641]["Memorial"]["PosX"] = 220
tTaskTemplate[3641]["Memorial"]["PosY"] = 294

------------------------------------ 救死扶伤义所在
tTaskTemplate[3642] = {}
tTaskTemplate[3642]["BeginNpcId"] = 19164
tTaskTemplate[3642]["EndNpcId"] = 19164
tTaskTemplate[3642]["TaskId"] = 3642
tTaskTemplate[3642]["FrontTask"] = 3641
tTaskTemplate[3642]["PostTaskId"] = 3643
tTaskTemplate[3642]["RevLevel"] = 110
tTaskTemplate[3642]["RevMetempsychosis"] = 0

--tTaskTemplate[3642]["RewMoney"] = 3000
-- tTaskTemplate[3642]["RewExpTime"] = 90
tTaskTemplate[3642]["RewItemId1"] = 3200345
tTaskTemplate[3642]["RewItemAttr1"] = "0 1 0 2880 1"
tTaskTemplate[3642]["RewardEffect"] = "angelwing"

tTaskTemplate[3642]["ReqItemId1"] = 3008741	
tTaskTemplate[3642]["ReqItemCount1"] = 10
tTaskTemplate[3642]["ReqItemAll1"] = true
tTaskTemplate[3642]["AcceptFunc"] = ShenpinRefinArea_PathFind
tTaskTemplate[3642]["AcceptPathFind"] = "Min"

-- 对白编号表
tTaskTemplate[3642]["MeetAccept"] = "3-1"
tTaskTemplate[3642]["HandOverItem"] = "3-3"
tTaskTemplate[3642]["SubTask"] = "3-2"
tTaskTemplate[3642]["TwoDialogue"] = "3-4"
tTaskTemplate[3642]["HandOverSpace"] = "5-1"

tTaskTemplate[3642]["Min"] = {}
tTaskTemplate[3642]["Min"]["NpcId"] = 0
tTaskTemplate[3642]["Min"]["MapId"] = 3998
tTaskTemplate[3642]["Min"]["PosX"] = 273
tTaskTemplate[3642]["Min"]["PosY"] = 273

------------------------------------ 华宫雄殿常自忆
tTaskTemplate[3643] = {}
tTaskTemplate[3643]["BeginNpcId"] = 19164
tTaskTemplate[3643]["EndNpcId"] = 19165
tTaskTemplate[3643]["TaskId"] = 3643
tTaskTemplate[3643]["FrontTask"] = 3642
tTaskTemplate[3643]["PostTaskId"] = 3644
tTaskTemplate[3643]["RevLevel"] = 110
tTaskTemplate[3643]["RevMetempsychosis"] = 0
--tTaskTemplate[3643]["RewMoney"] = 1000
-- tTaskTemplate[3643]["RewExpTime"] = 30
tTaskTemplate[3643]["RewItemId1"] = 3200344
tTaskTemplate[3643]["RewItemAttr1"] = "0 1 0 2880 1"
tTaskTemplate[3643]["RewardEffect"] = "angelwing"

tTaskTemplate[3643]["AcceptFunc"] = ShenpinRefinArea_PathFind
tTaskTemplate[3643]["AcceptPathFind"] = "Complete"
tTaskTemplate[3643]["HandOverFunc"] = ShenpinRefinArea_Cartoon
tTaskTemplate[3643]["HandOverCartoon"] = 1003

-- 对白编号表
tTaskTemplate[3643]["MeetAccept"] = "4-1"
tTaskTemplate[3643]["SubTask"] = "1-1"
tTaskTemplate[3643]["HandOverSpace"] = "8-1"

------------------------------------ 独对危墟长嗟嗟
tTaskTemplate[3644] = {}
tTaskTemplate[3644]["BeginNpcId"] = 19165
tTaskTemplate[3644]["EndNpcId"] = 19165
tTaskTemplate[3644]["TaskId"] = 3644
tTaskTemplate[3644]["FrontTask"] = 3643
tTaskTemplate[3644]["PostTaskId"] = 3645
tTaskTemplate[3644]["RevLevel"] = 110
tTaskTemplate[3644]["RevMetempsychosis"] = 0

--tTaskTemplate[3644]["RewMoney"] = 5000
-- tTaskTemplate[3644]["RewExpTime"] = 120
tTaskTemplate[3644]["RewItemId1"] = 3200346
tTaskTemplate[3644]["RewItemAttr1"] = "0 1 0 2880 1"
tTaskTemplate[3644]["RewardEffect"] = "angelwing"

tTaskTemplate[3644]["ReqItemId1"] = 3008742	
tTaskTemplate[3644]["ReqItemCount1"] = 50
tTaskTemplate[3644]["ReqItemAll1"] = true

tTaskTemplate[3644]["ReqMonsterId1"] = {2762}
tTaskTemplate[3644]["MustSpace"] = 1
tTaskTemplate[3644]["NoMustSpace"] = tShenpinRefinArea_Text["NoSpace"]
tTaskTemplate[3644]["ProbabilityDropItem1"] = tShenpinRefinArea_DropTaskItem	
tTaskTemplate[3644]["ProbabilityDropIndex1"] = 2762
tTaskTemplate[3644]["ProbabilityDropMode1"] = 2
tTaskTemplate[3644]["ProbabilityDropLimit1"] = 50
tTaskTemplate[3644]["DropFunc"] = ShenpinRefinArea_Drop
tTaskTemplate[3644]["DropEffect"] = "zf2-e123"
tTaskTemplate[3644]["ReqItemFunc"] = ShenpinRefinArea_CollectItem
tTaskTemplate[3644]["ItemPathFind"] = "Complete"

tTaskTemplate[3644]["AcceptFunc"] = ShenpinRefinArea_PathFind
tTaskTemplate[3644]["AcceptPathFind"] = "Min"

-- 对白编号表
tTaskTemplate[3644]["MeetAccept"] = "2-1"
tTaskTemplate[3644]["SubTask"] = "2-2"
tTaskTemplate[3644]["HandOverItem"] = "2-3"
tTaskTemplate[3644]["TwoDialogue"] = "2-4"
tTaskTemplate[3644]["HandOverSpace"] = "8-1"

tTaskTemplate[3644]["Min"] = {}
tTaskTemplate[3644]["Min"]["NpcId"] = 0
tTaskTemplate[3644]["Min"]["MapId"] = 3998
tTaskTemplate[3644]["Min"]["PosX"] = 596
tTaskTemplate[3644]["Min"]["PosY"] = 447

------------------------------------ 天衍五行化万物
tTaskTemplate[3645] = {}
tTaskTemplate[3645]["BeginNpcId"] = 19165
tTaskTemplate[3645]["EndNpcId"] = 19165
tTaskTemplate[3645]["TaskId"] = 3645
tTaskTemplate[3645]["FrontTask"] = 3644
tTaskTemplate[3645]["PostTaskId"] = 3646
tTaskTemplate[3645]["RevLevel"] = 110
tTaskTemplate[3645]["RevMetempsychosis"] = 0

--tTaskTemplate[3645]["RewMoney"] = 5000
-- tTaskTemplate[3645]["RewExpTime"] = 120
tTaskTemplate[3645]["RewItemId1"] = 3200346
tTaskTemplate[3645]["RewItemAttr1"] = "0 1 0 2880 1"
tTaskTemplate[3645]["RewardEffect"] = "angelwing"

tTaskTemplate[3645]["ReqItemId1"] = 3008743
tTaskTemplate[3645]["ReqItemCount1"] = 1

tTaskTemplate[3645]["ReqMonsterId1"] = {2763}
tTaskTemplate[3645]["MustSpace"] = 1
tTaskTemplate[3645]["NoMustSpace"] = tShenpinRefinArea_Text["NoSpace"]
tTaskTemplate[3645]["ProbabilityDropItem1"] = tShenpinRefinArea_DropTaskItem	
tTaskTemplate[3645]["ProbabilityDropIndex1"] = 2763
tTaskTemplate[3645]["ProbabilityDropMode1"] = 2
tTaskTemplate[3645]["ProbabilityDropLimit1"] = 1
tTaskTemplate[3645]["DropFunc"] = ShenpinRefinArea_Drop
tTaskTemplate[3645]["DropEffect"] = "zf2-e123"
tTaskTemplate[3645]["ReqItemFunc"] = ShenpinRefinArea_CollectItem
tTaskTemplate[3645]["ItemPathFind"] = "Complete"

tTaskTemplate[3645]["AcceptFunc"] = ShenpinRefinArea_PathFind
tTaskTemplate[3645]["AcceptPathFind"] = "Min"

-- 对白编号表
tTaskTemplate[3645]["MeetAccept"] = "3-1"
tTaskTemplate[3645]["SubTask"] = "3-2"
tTaskTemplate[3645]["HandOverItem"] = "3-3"
tTaskTemplate[3645]["TwoDialogue"] = "3-4"
tTaskTemplate[3645]["HandOverSpace"] = "8-1"

tTaskTemplate[3645]["Min"] = {}
tTaskTemplate[3645]["Min"]["NpcId"] = 0
tTaskTemplate[3645]["Min"]["MapId"] = 3998
tTaskTemplate[3645]["Min"]["PosX"] = 307
tTaskTemplate[3645]["Min"]["PosY"] = 102

------------------------------------ 至金之力土中藏
tTaskTemplate[3646] = {}
tTaskTemplate[3646]["BeginNpcId"] = 19165
tTaskTemplate[3646]["EndNpcId"] = 19165
tTaskTemplate[3646]["TaskId"] = 3646
tTaskTemplate[3646]["FrontTask"] = 3645
tTaskTemplate[3646]["PostTaskId"] = 3647
tTaskTemplate[3646]["RevLevel"] = 110
tTaskTemplate[3646]["RevMetempsychosis"] = 0


--tTaskTemplate[3646]["RewMoney"] = 5000
-- tTaskTemplate[3646]["RewExpTime"] = 120
tTaskTemplate[3646]["RewItemId1"] = 3200346
tTaskTemplate[3646]["RewItemAttr1"] = "0 1 0 2880 1"
tTaskTemplate[3646]["RewardEffect"] = "angelwing"
tTaskTemplate[3646]["MapEffect"] = "changefig"
tTaskTemplate[3646]["HandOverFunc"] = ShenpinRefinArea_MapEffect

tTaskTemplate[3646]["ReqItemId1"] = 3008745	
tTaskTemplate[3646]["ReqItemCount1"] = 1

tTaskTemplate[3646]["ReqMonsterId1"] = {2764}
tTaskTemplate[3646]["MustSpace"] = 1
tTaskTemplate[3646]["NoMustSpace"] = tShenpinRefinArea_Text["NoSpace"]
tTaskTemplate[3646]["ProbabilityDropItem1"] = tShenpinRefinArea_DropTaskItem	
tTaskTemplate[3646]["ProbabilityDropIndex1"] = 2764
tTaskTemplate[3646]["ProbabilityDropMode1"] = 2
tTaskTemplate[3646]["ProbabilityDropLimit1"] = 5
tTaskTemplate[3646]["DropFunc"] = ShenpinRefinArea_Drop
tTaskTemplate[3646]["DropEffect"] = "zf2-e123"
tTaskTemplate[3646]["AcceptFunc"] = ShenpinRefinArea_PathFind
tTaskTemplate[3646]["AcceptPathFind"] = "Min"

-- 对白编号表
tTaskTemplate[3646]["MeetAccept"] = "4-1"
tTaskTemplate[3646]["SubTask"] = "4-2"
tTaskTemplate[3646]["HandOverItem"] = "4-3"
tTaskTemplate[3646]["TwoDialogue"] = "4-4"
tTaskTemplate[3646]["HandOverSpace"] = "8-1"

tTaskTemplate[3646]["Min"] = {}
tTaskTemplate[3646]["Min"]["NpcId"] = 0
tTaskTemplate[3646]["Min"]["MapId"] = 3998
tTaskTemplate[3646]["Min"]["PosX"] = 482
tTaskTemplate[3646]["Min"]["PosY"] = 216

------------------------------------ 熔岩业火育奇花
tTaskTemplate[3647] = {}
tTaskTemplate[3647]["BeginNpcId"] = 19165
tTaskTemplate[3647]["EndNpcId"] = 19165
tTaskTemplate[3647]["TaskId"] = 3647
tTaskTemplate[3647]["FrontTask"] = 3646
tTaskTemplate[3647]["PostTaskId"] = 3648
tTaskTemplate[3647]["RevLevel"] = 110
tTaskTemplate[3647]["RevMetempsychosis"] = 0

--tTaskTemplate[3647]["RewMoney"] = 3000
-- tTaskTemplate[3647]["RewExpTime"] = 90
tTaskTemplate[3647]["RewItemId1"] = 3200345
tTaskTemplate[3647]["RewItemAttr1"] = "0 1 0 2880 1"
tTaskTemplate[3647]["RewardEffect"] = "angelwing"
tTaskTemplate[3647]["MapEffect"] = "changefig"
tTaskTemplate[3647]["HandOverFunc"] = ShenpinRefinArea_MapEffect

tTaskTemplate[3647]["ReqItemId1"] = 3008747
tTaskTemplate[3647]["ReqItemCount1"] = 10
tTaskTemplate[3647]["ReqItemAll1"] = true
tTaskTemplate[3647]["AcceptFunc"] = ShenpinRefinArea_PathFind
tTaskTemplate[3647]["AcceptPathFind"] = "Min"

-- 对白编号表
tTaskTemplate[3647]["MeetAccept"] = "5-1"
tTaskTemplate[3647]["SubTask"] = "5-2"
tTaskTemplate[3647]["HandOverItem"] = "5-3"
tTaskTemplate[3647]["TwoDialogue"] = "5-4"
tTaskTemplate[3647]["HandOverSpace"] = "8-1"

tTaskTemplate[3647]["Min"] = {}
tTaskTemplate[3647]["Min"]["NpcId"] = 0
tTaskTemplate[3647]["Min"]["MapId"] = 3998
tTaskTemplate[3647]["Min"]["PosX"] = 560
tTaskTemplate[3647]["Min"]["PosY"] = 691

------------------------------------ 五行生化万事具
tTaskTemplate[3648] = {}
tTaskTemplate[3648]["BeginNpcId"] = 19165
tTaskTemplate[3648]["EndNpcId"] = 19165
tTaskTemplate[3648]["TaskId"] = 3648
tTaskTemplate[3648]["FrontTask"] = 3647
tTaskTemplate[3648]["PostTaskId"] = 3649
tTaskTemplate[3648]["RevLevel"] = 110
tTaskTemplate[3648]["RevMetempsychosis"] = 0

--tTaskTemplate[3648]["RewMoney"] = 5000
-- tTaskTemplate[3648]["RewExpTime"] = 120
tTaskTemplate[3648]["RewItemId1"] = 3009002
tTaskTemplate[3648]["RewItemAttr1"] = "0 1 0 2880 1"
tTaskTemplate[3648]["RewItemId2"] = 3200346
tTaskTemplate[3648]["RewItemAttr2"] = "0 1 0 2880 1"
tTaskTemplate[3648]["RewardEffect"] = "angelwing"
tTaskTemplate[3648]["RewardMsg"] = tShenpinRefinArea_Text[3648]["RewardMsg"]

tTaskTemplate[3648]["ReqItemId1"] = 3008748	
tTaskTemplate[3648]["ReqItemCount1"] = 100
tTaskTemplate[3648]["ReqItemAll1"] = true

tTaskTemplate[3648]["ReqMonsterId1"] = {2765}
tTaskTemplate[3648]["MustSpace"] = 1
tTaskTemplate[3648]["NoMustSpace"] = tShenpinRefinArea_Text["NoSpace"]
tTaskTemplate[3648]["ProbabilityDropItem1"] = tShenpinRefinArea_DropTaskItem	
tTaskTemplate[3648]["ProbabilityDropIndex1"] = 2765
tTaskTemplate[3648]["ProbabilityDropMode1"] = 2
tTaskTemplate[3648]["ProbabilityDropLimit1"] = 100
tTaskTemplate[3648]["DropFunc"] = ShenpinRefinArea_Drop
tTaskTemplate[3648]["DropEffect"] = "zf2-e123"
tTaskTemplate[3648]["ReqItemFunc"] = ShenpinRefinArea_CollectItem
tTaskTemplate[3648]["ItemPathFind"] = "Complete"

tTaskTemplate[3648]["AcceptFunc"] = ShenpinRefinArea_PathFind
tTaskTemplate[3648]["AcceptPathFind"] = "Min"

-- 对白编号表
tTaskTemplate[3648]["MeetAccept"] = "6-1"
tTaskTemplate[3648]["SubTask"] = "6-2"
tTaskTemplate[3648]["HandOverItem"] = "6-3"
tTaskTemplate[3648]["TwoDialogue"] = "6-4"
tTaskTemplate[3648]["HandOverSpace"] = "8-2"

tTaskTemplate[3648]["Min"] = {}
tTaskTemplate[3648]["Min"]["NpcId"] = 0
tTaskTemplate[3648]["Min"]["MapId"] = 3998
tTaskTemplate[3648]["Min"]["PosX"] = 522
tTaskTemplate[3648]["Min"]["PosY"] = 347

------------------------------------ 百年流离终还乡
tTaskTemplate[3649] = {}
tTaskTemplate[3649]["BeginNpcId"] = 19165
tTaskTemplate[3649]["EndNpcId"] = 19160
tTaskTemplate[3649]["TaskId"] = 3649
tTaskTemplate[3649]["FrontTask"] = 3648
tTaskTemplate[3649]["RevLevel"] = 110
tTaskTemplate[3649]["RevMetempsychosis"] = 0

--tTaskTemplate[3649]["RewMoney"] = 1000
-- tTaskTemplate[3649]["RewExpTime"] = 30
tTaskTemplate[3649]["RewItemId1"] = 3200344
tTaskTemplate[3649]["RewItemAttr1"] = "0 1 0 2880 1"
tTaskTemplate[3649]["RewardEffect"] = "angelwing"

tTaskTemplate[3649]["AcceptFunc"] = ShenpinRefinArea_PathFind
tTaskTemplate[3649]["AcceptPathFind"] = "Complete"
tTaskTemplate[3649]["HandOverFunc"] = ShenpinRefinArea_Cartoon
tTaskTemplate[3649]["HandOverCartoon"] = 1004

-- 对白编号表
tTaskTemplate[3649]["MeetAccept"] = "7-1"
tTaskTemplate[3649]["HasAccept"] = "7-2"
tTaskTemplate[3649]["SubTask"] = "3-1"
tTaskTemplate[3649]["HandOverSpace"] = "5-1"


-- 怪物配置
tTaskMonster[2758] = {3634} 
tTaskMonster[2759] = {3636} 
tTaskMonster[2760] = {3638} 
tTaskMonster[2761] = {3641} 
tTaskMonster[2762] = {3644} 
tTaskMonster[2763] = {3645} 
tTaskMonster[2764] = {3646} 
tTaskMonster[2765] = {3648} 
--------------------------------------逻辑部分-------------------------------
-- 判断该任务是否可接
function ShenpinRefinArea_Accept(nTaskId,nNpcId)
	if not Task_ChkTaskDetail(nTaskId) then
		if (tTaskTemplate[nTaskId]["FrontTask"] ~= nil) and (not Accept_ChkFrontTask(nTaskId)) then
			return false
		end
		LinkNpcGossipFunc_New(nNpcId,tTaskTemplate[nTaskId]["MeetAccept"])
		return true
	elseif not Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then
		if tTaskTemplate[nTaskId]["HasAccept"] ~= nil then
			LinkNpcGossipFunc_New(nNpcId,tTaskTemplate[nTaskId]["HasAccept"])
			return true
		end
	end

	return false
end

-- NPC的主函数
function ShenpinRefinArea_Main()
	local nNpcId = Get_NpcId()

	if tTaskHandOverNpc[nNpcId] ~= nil then
		-- 判断NPC身上是否有可交的任务
		for i,v in pairs(tTaskHandOverNpc[nNpcId]) do
			if Task_ChkTaskDetail(v) and Task_ChkTaskDetailValue(v,"CompleteFlag","==",0) then
				LinkNpcGossipFunc_New(nNpcId,tTaskTemplate[v]["SubTask"])
				return
			end
		end
	end

	if tTaskAcceptNpc[nNpcId] ~= nil then
		-- 判断NPC身上是否有可接的任务
		for i,v in pairs (tTaskAcceptNpc[nNpcId]) do
			if ShenpinRefinArea_Accept(v,nNpcId) then
				return
			end
		end
	end
	
	-- 出闲聊对白
	LinkNpcGossipFunc_New(nNpcId,tShenpinRefinArea_Gossip[nNpcId])
end

-- 交任务判断
function ShenpinRefinArea_HandOver(nTaskId,nNpcId)
	-- 判断任务是否可交
	if not Task_IsHandOver(nTaskId,nNpcId,1) then
		return false
	end

	if tTaskTemplate[nTaskId]["TwoCartoon"] ~= nil then
		User_NoviceTeaching(tTaskTemplate[nTaskId]["TwoCartoon"])
	end
	
	LinkNpcGossipFunc_New(nNpcId,tTaskTemplate[nTaskId]["TwoDialogue"])
end

-- 采集东西
function ShenpinRefinArea_Collect()
	local nNpcId = Get_NpcId()
	local nTaskId = tShenpinRefinArea_Collect[nNpcId]["TaskId"]
	
	-- 判断任务是否已接
	if not Task_ChkTaskDetail(nTaskId) then
		return
	end
	
	-- 判断任务是否完成
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tShenpinRefinArea_Text[nTaskId]["NoSpace"])
		return
	end
	
	-- 判断背包是否已满足任务需求
	local nItemId = tShenpinRefinArea_Collect[nNpcId]["ItemId"]
	local nItemNum = tShenpinRefinArea_Collect[nNpcId]["ItemNum"]
	if Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		User_TalkChannel2005(tShenpinRefinArea_Text[nTaskId]["HasItem"])
		return
	end
	
	-- 读条
	User_SetExplore(1,tShenpinRefinArea_Text[nTaskId]["Read"],220,string.format("ShenpinRefinArea_CollectSuccess</N>%d",nNpcId))
end

function ShenpinRefinArea_CollectSuccess(nNpcId,nUserId)
	local nTaskId = tShenpinRefinArea_Collect[nNpcId]["TaskId"]
	local nItemId = tShenpinRefinArea_Collect[nNpcId]["ItemId"]
	local nItemNum = tShenpinRefinArea_Collect[nNpcId]["ItemNum"]
	local nAddNum = math.random(2,4)

	-- 百分百获得物品
	Item_AddNewItem(nItemId,string.format("0 %d",nAddNum),nUserId)
	local sAddItemName = tShenpinRefinArea_Text[nItemId]
	User_TalkChannel2005(string.format(tShenpinRefinArea_Text["Currency"],sAddItemName),nUserId)

	if Item_ChkMulItem(nItemId,nItemId,nItemNum,1,0,nUserId) then
		local nNpcId = tTaskTemplate[nTaskId]["EndNpcId"]
		local sText = tShenpinRefinArea_Text[nTaskId]["Item"]
		local sFunc = string.format("ShenpinRefinArea_FindWay</N>%d</S>%s</N>%d",nTaskId,"Next",nNpcId)

		Sys_MsgBox(sText,sFunc,nil,nUserId)
	end
end

-- 传送或者自动寻路
function ShenpinRefinArea_FindWay(nTaskId,sType,nFindNpcId)
	-- 是否接到任务
	if not Task_ChkTaskDetail(nTaskId) then
		return
	end

	local nNpcId = 0
	local nMapId = 0
	local nPosX = 0
	local nPosY = 0
	
	if nFindNpcId > 0 then
		nNpcId = tShenpinRefinArea_PathFind[nFindNpcId]["NpcId"]
		nMapId = tShenpinRefinArea_PathFind[nFindNpcId]["MapId"]
		nPosX = tShenpinRefinArea_PathFind[nFindNpcId]["PosX"]
		nPosY = tShenpinRefinArea_PathFind[nFindNpcId]["PosY"]
	else
		nNpcId = tTaskTemplate[nTaskId][sType]["NpcId"]
		nMapId = tTaskTemplate[nTaskId][sType]["MapId"]
		nPosX = tTaskTemplate[nTaskId][sType]["PosX"]
		nPosY = tTaskTemplate[nTaskId][sType]["PosY"]
	end
	
	if sType == "Delivery" then
		ShenpinRefinArea_ChgMap(nMapId,nPosX,nPosY)
	else
		-- 自动寻路
		Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
	end
end

-- 传送
function ShenpinRefinArea_ChgMap(nMapId,nPosX,nPosY)
	if Get_NpcMapID() ~= Get_UserMapId() then
		User_TalkChannel2005(tTransferFail_Text["MsgTip"])
		return
	end

	User_RecordPoint(nMapId,nPosX,nPosY)
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5)
end

-- 新添加传送
function ShenpinRefinArea_ChgMap_New()
	-- 取初始任务等级
	local nLevel = tTaskTemplate[3631]["RevLevel"]
	local nMetempsychosis = tTaskTemplate[3631]["RevMetempsychosis"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		Sys_MsgBox(tShenpinRefinArea_Text["NoLevel"])
		return
	end
	if Get_NpcMapID() ~= Get_UserMapId() then
		User_TalkChannel2005(tTransferFail_Text["MsgTip"])
		return
	end
	-- 符合要求，传送
	ShenpinRefinArea_ChgMap(tTaskTemplate[3631]["Delivery"]["MapId"],tTaskTemplate[3631]["Delivery"]["PosX"],tTaskTemplate[3631]["Delivery"]["PosY"])

end

-- 物品使用
function ShenpinRefinArea_UseItem(nItemId)
	local nTaskId = ShenpinRefinArea_Item[nItemId]
	
	-- 判断任务是否完成
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then
		Item_DelAllItemByType(nItemId)
		return
	end
	
	local nItemNum = 1
	
	for i = 1, 6 do
		if nItemId == tTaskTemplate[nTaskId]["ReqItemId" .. i] then
			nItemNum = tTaskTemplate[nTaskId]["ReqItemCount" .. i]
			break
		end
	end

	if Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		local nNpcId = tTaskTemplate[nTaskId]["EndNpcId"]
		local sIndex = "Complete"
		
		ShenpinRefinArea_FindWay(nTaskId,sIndex,nNpcId)
	end
end

-- 洒酒
function ShenpinRefinArea_SprinkleWine(nTrapId,nTrapType)
	local nTaskId = ShenpinRefinArea_Trap[nTrapType]["TaskId"]
	local nItemId = ShenpinRefinArea_Trap[nTrapType]["ItemId"]

	-- 判断是否有接到这个任务
	if not Task_ChkTaskDetail(nTaskId) then
		return
	end
	
	-- 判断任务是否完成
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then
		if Item_ChkItem(nItemId) then
			Item_DelAllItemByType(nItemId)
		end
		return
	end
	
	-- 判断是否已满足任务条件
	if Task_ChkTaskDetailValue(nTaskId,"2",">=",1) then
		if Item_ChkItem(nItemId) then
			Item_DelAllItemByType(nItemId)
		end
		local nNpcId = tTaskTemplate[nTaskId]["EndNpcId"]
		ShenpinRefinArea_FindWay(nTaskId,"Next",nNpcId)
		return
	end
	
	-- 判断是否已杀完怪
	if not Task_ChkTaskDetailValue(nTaskId,"1",">=",15) then
		User_TalkChannel2005(tShenpinRefinArea_Text[nTaskId]["NoKillMonster"])
		ShenpinRefinArea_FindWay(nTaskId,"Min",0)
		return
	end
	
	-- 判断是否有物品
	if not Item_ChkItem(nItemId) then
		local nNpcId = tTaskTemplate[nTaskId]["EndNpcId"]
		ShenpinRefinArea_FindWay(nTaskId,"Next",nNpcId)
		return
	end
	
	ShenpinRefinArea_SprinkleWineSuccess(nItemId)
	-- 读条
	-- User_SetExplore(3,tShenpinRefinArea_Text[nTaskId]["Read"],220,string.format("ShenpinRefinArea_SprinkleWineSuccess</N>%d",nItemId))
end

function ShenpinRefinArea_SprinkleWineSuccess(nItemId,nUserId)
	if Item_ChkItem(nItemId,1,0,nUserId) and Item_DelItem(nItemId,1,0,nUserId) then
		local nTaskId = ShenpinRefinArea_Item[nItemId]
		Task_SetTaskDetailData2(nTaskId,1,nUserId)
		
		User_EffectAdd("self","fam_exp_special")
		
		local nNpcId = tTaskTemplate[nTaskId]["EndNpcId"]
		local sText = tShenpinRefinArea_Text[nTaskId]["Item"]
		local sFunc = string.format("ShenpinRefinArea_FindWay</N>%d</S>%s</N>%d",nTaskId,"Next",nNpcId)

		Sys_MsgBox(sText,sFunc,nil,nUserId)
	end
end

function ShenpinRefinArea_CompleteTask(nNpcId)
	if not Item_ChkItem(3008745) then
		if not Item_ChkMulItem(3008754,3008754,5) then
			LinkNpcGossipFunc_New(nNpcId,"4-3")
			return
		end
		
		LinkNpcGossipFunc_New(nNpcId,"4-5")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"4-4")
end

-- 补领物品
function ShenpinRefinArea_Replacement(nNpcId)
	local nItemId = tShenpinRefinArea_Replacement[nNpcId]["Item"]
	
	-- 判断身上是否已有该物品
	if Item_ChkItem(nItemId) then
		LinkNpcGossipFunc_New(nNpcId,tShenpinRefinArea_Replacement[nNpcId]["HaveItem"])
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,tShenpinRefinArea_Replacement[nNpcId]["NoSpace"])
		return
	end
	
	-- 给任务物品
	if Item_AddItem(nItemId) then
		LinkNpcGossipFunc_New(nNpcId,tShenpinRefinArea_Replacement[nNpcId]["Success"])
		return
	end
end

function ShenpinRefinArea_PlayEffect(nTaskId)
	local nMapId = tShenpinRefinArea_Effect[nTaskId]["MapId"]
	local nEffectPosX = tShenpinRefinArea_Effect[nTaskId]["PosX"]
	local nEffectPosY = tShenpinRefinArea_Effect[nTaskId]["PosY"]
	local sEffect = tTaskTemplate[nTaskId]["MapEffect"]
	
	Map_Effect(nMapId,nEffectPosX,nEffectPosY,sEffect)
	
	local nItemId = tShenpinRefinArea_DeleteTogether[nTaskId]
	if nItemId ~= nil and Item_ChkItem(nItemId) then
		Item_DelAllItemByType(nItemId)
	end
end

-- 神锤陷魔窟播放光效
function ShenpinRefinArea_Hammer(nTaskId,nNpcId)
	local nItemId = tTaskTemplate[nTaskId]["ReqItemId1"]

	if not Item_ChkItem(nItemId) then
		LinkNpcGossipFunc_New(nNpcId,tTaskTemplate[nTaskId]["HandOverItem"])
		return
	end
	
	ShenpinRefinArea_PlayEffect(nTaskId)
	LinkNpcGossipFunc_New(nNpcId,tTaskTemplate[nTaskId]["TwoDialogue"])
end

-- 合成土之力
function ShenpinRefinArea_Synthesis(nTaskId,nItemId)
	-- 判断任务是否完成
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then
		Item_DelAllItemByType(nItemId)
		return
	end
	
	if not Item_ChkMulItem(nItemId,nItemId,5) then
		User_TalkChannel2005(tShenpinRefinArea_Text[nTaskId]["NoItem"])
		return
	end

	if Item_DelMulItem(nItemId,nItemId,5) then
		Item_AddItem(3008745)
		local nNpcId = tTaskTemplate[nTaskId]["EndNpcId"]
		local sIndex = "Complete"
		local sCoent = tShenpinRefinArea_Text[nTaskId]["Success"]
		Sys_MsgBox(sCoent,string.format("ShenpinRefinArea_FindWay</N>%d</N>%s</N>%d",nTaskId,sIndex,nNpcId))
	end
end

-- 上线接任务
function ShenpinRefinArea_Online()
	local nTaskId = 3631
	
	if Task_ChkTaskDetail(nTaskId) then
		return
	end

	local nLevel = tTaskTemplate[nTaskId]["RevLevel"]
	local nMetempsychosis = tTaskTemplate[nTaskId]["RevMetempsychosis"]

	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		return
	end
	
	Task_AddTaskDetail(nTaskId)
end

-----------------------------------Npc配置-----------------------------------
-------------------------------------赤龙之地引路人
tNpcFace[5502] = 7
tNpcGossip[19166] = tNpcGossip[19166] or DefaultNpc:new{}
tNpcGossip[19166]["OptionHidden"] = 1

tNpcGossip[19166]["Text1-1"] = {111,112}
tNpcGossip[19166]["Text111"] = tShenpinRefinArea_Text[19166]["Text111"]
tNpcGossip[19166]["Text112"] = tShenpinRefinArea_Text[19166]["Text112"]
tNpcGossip[19166]["tOption1-1"] = {1,2}
tNpcGossip[19166]["Option1"] = tShenpinRefinArea_Text[19166]["Option1"]
tNpcGossip[19166]["OptionFunc1"] = "Task_IsCreatByNpc</N>3631</N>19166</N>1"
tNpcGossip[19166]["Option2"] = tShenpinRefinArea_Text[19166]["Option2"]

tNpcGossip[19166]["Text1-2"] = {121,122}
tNpcGossip[19166]["Text121"] = tShenpinRefinArea_Text[19166]["Text121"]
tNpcGossip[19166]["Text122"] = tShenpinRefinArea_Text[19166]["Text122"]
tNpcGossip[19166]["tOption1-2"] = {3,4}
tNpcGossip[19166]["Option3"] = tShenpinRefinArea_Text[19166]["Option3"]
tNpcGossip[19166]["OptionFunc3"] = "ShenpinRefinArea_ChgMap_New"
tNpcGossip[19166]["Option4"] = tShenpinRefinArea_Text[19166]["Option4"]

tNpcGossip[19166]["Text1-3"] = {131,132,133}
tNpcGossip[19166]["Text131"] = tShenpinRefinArea_Text[19166]["Text131"]
tNpcGossip[19166]["Text132"] = tShenpinRefinArea_Text[19166]["Text132"]
tNpcGossip[19166]["Text133"] = tShenpinRefinArea_Text[19166]["Text133"]
tNpcGossip[19166]["tOption1-3"] = {5}
tNpcGossip[19166]["Option5"] = tShenpinRefinArea_Text[19166]["Option5"]

-------------------------------------言伯颉
tNpcFace[4023] = 67
tNpcGossip[19160] = tNpcGossip[19160] or DefaultNpc:new{}
tNpcGossip[19160]["OptionHidden"] = 1
tNpcGossip[19160]["Text1-1"] = {111}
tNpcGossip[19160]["Text111"] = tShenpinRefinArea_Text[19160]["Text111"]
tNpcGossip[19160]["tOption1-1"] = {1}
tNpcGossip[19160]["Option1"] = tShenpinRefinArea_Text[19160]["Option1"]
tNpcGossip[19160]["OptionFunc1"] = "ShenpinRefinArea_HandOver</N>3631</N>19160"

tNpcGossip[19160]["Text1-2"] = {121,122,123}
tNpcGossip[19160]["Text121"] = tShenpinRefinArea_Text[19160]["Text121"]
tNpcGossip[19160]["Text122"] = tShenpinRefinArea_Text[19160]["Text122"]
tNpcGossip[19160]["Text123"] = tShenpinRefinArea_Text[19160]["Text123"]
tNpcGossip[19160]["tOption1-2"] = {2}
tNpcGossip[19160]["Option2"] = tShenpinRefinArea_Text[19160]["Option2"]
tNpcGossip[19160]["OptionFunc2"] = "Task_IsHandOverByNpc</N>3631</N>19160</N>1"

tNpcGossip[19160]["Text1-3"] = {131,132,133}
tNpcGossip[19160]["Text131"] = tShenpinRefinArea_Text[19160]["Text131"]
tNpcGossip[19160]["Text132"] = tShenpinRefinArea_Text[19160]["Text132"]
tNpcGossip[19160]["Text133"] = tShenpinRefinArea_Text[19160]["Text133"]
tNpcGossip[19160]["tOption1-3"] = {12,523,10}
tNpcGossip[19160]["Option10"] = tShenpinRefinArea_Text[19160]["Option10"]

tNpcGossip[19160]["Text2-1"] = {211,212,213}
tNpcGossip[19160]["Text211"] = tShenpinRefinArea_Text[19160]["Text211"]
tNpcGossip[19160]["Text212"] = tShenpinRefinArea_Text[19160]["Text212"]
tNpcGossip[19160]["Text213"] = tShenpinRefinArea_Text[19160]["Text213"]
tNpcGossip[19160]["tOption2-1"] = {3,4}
tNpcGossip[19160]["Option3"] = tShenpinRefinArea_Text[19160]["Option3"]
tNpcGossip[19160]["OptionPoint3"] = "2-2"
tNpcGossip[19160]["Option4"] = tShenpinRefinArea_Text[19160]["Option4"]

tNpcGossip[19160]["Text2-2"] = {221,222,223}
tNpcGossip[19160]["Text221"] = tShenpinRefinArea_Text[19160]["Text221"]
tNpcGossip[19160]["Text222"] = tShenpinRefinArea_Text[19160]["Text222"]
tNpcGossip[19160]["Text223"] = tShenpinRefinArea_Text[19160]["Text223"]
tNpcGossip[19160]["tOption2-2"] = {5}
tNpcGossip[19160]["Option5"] = tShenpinRefinArea_Text[19160]["Option5"]
tNpcGossip[19160]["OptionFunc5"] = "Task_IsCreatByNpc</N>3632</N>19160</N>1"

tNpcGossip[19160]["Text2-3"] = {231}
tNpcGossip[19160]["Text231"] = tShenpinRefinArea_Text[19160]["Text231"]
tNpcGossip[19160]["tOption2-3"] = {6}
tNpcGossip[19160]["Option6"] = tShenpinRefinArea_Text[19160]["Option6"]
tNpcGossip[19160]["OptionFunc6"] = "ShenpinRefinArea_FindWay</N>3632</S>Next</N>19161"

tNpcGossip[19160]["Text3-1"] = {311}
tNpcGossip[19160]["Text311"] = tShenpinRefinArea_Text[19160]["Text311"]
tNpcGossip[19160]["tOption3-1"] = {7}
tNpcGossip[19160]["Option7"] = tShenpinRefinArea_Text[19160]["Option7"]
tNpcGossip[19160]["OptionPoint7"] = "3-2"

tNpcGossip[19160]["Text3-2"] = {321,322,323}
tNpcGossip[19160]["Text321"] = tShenpinRefinArea_Text[19160]["Text321"]
tNpcGossip[19160]["Text322"] = tShenpinRefinArea_Text[19160]["Text322"]
tNpcGossip[19160]["Text323"] = tShenpinRefinArea_Text[19160]["Text323"]
tNpcGossip[19160]["tOption3-2"] = {8}
tNpcGossip[19160]["Option8"] = tShenpinRefinArea_Text[19160]["Option8"]
tNpcGossip[19160]["OptionPoint8"] = "3-3"

tNpcGossip[19160]["Text3-3"] = {331,332,333}
tNpcGossip[19160]["Text331"] = tShenpinRefinArea_Text[19160]["Text331"]
tNpcGossip[19160]["Text332"] = tShenpinRefinArea_Text[19160]["Text332"]
tNpcGossip[19160]["Text333"] = tShenpinRefinArea_Text[19160]["Text333"]
tNpcGossip[19160]["tOption3-3"] = {9}
tNpcGossip[19160]["Option9"] = tShenpinRefinArea_Text[19160]["Option9"]
tNpcGossip[19160]["OptionFunc9"] = "Task_IsHandOverByNpc</N>3649</N>19160</N>1"

tNpcGossip[19160]["Text4-1"] = {411}
tNpcGossip[19160]["Text411"] = tShenpinRefinArea_Text[19160]["Text411"]
tNpcGossip[19160]["tOption4-1"] = {11}
tNpcGossip[19160]["Option11"] = tShenpinRefinArea_Text[19160]["Option11"]

tNpcGossip[19160]["Text5-1"] = {511}
tNpcGossip[19160]["Text511"] = tShenpinRefinArea_Text[19160]["Text511"]
tNpcGossip[19160]["tOption5-1"] = {12}
tNpcGossip[19160]["Option12"] = tShenpinRefinArea_Text[19160]["Option12"]

-------------------------------------西煌遗民的尸体
tNpcGossip[19161] = tNpcGossip[19161] or DefaultNpc:new{}
tNpcGossip[19161]["OptionHidden"] = 1

tNpcGossip[19161]["Text1-1"] = {111,112,113}
tNpcGossip[19161]["Text111"] = tShenpinRefinArea_Text[19161]["Text111"]
tNpcGossip[19161]["Text112"] = tShenpinRefinArea_Text[19161]["Text112"]
tNpcGossip[19161]["Text113"] = tShenpinRefinArea_Text[19161]["Text113"]
tNpcGossip[19161]["tOption1-1"] = {1}
tNpcGossip[19161]["Option1"] = tShenpinRefinArea_Text[19161]["Option1"]
tNpcGossip[19161]["OptionFunc1"] = "Task_IsCreatByNpc</N>3633</N>19161</N>1"
-- tNpcGossip[19161]["Option2"] = tShenpinRefinArea_Text[19161]["Option2"]

tNpcGossip[19161]["Text1-2"] = {121,122}
tNpcGossip[19161]["Text121"] = tShenpinRefinArea_Text[19161]["Text121"]
tNpcGossip[19161]["Text122"] = tShenpinRefinArea_Text[19161]["Text122"]
tNpcGossip[19161]["tOption1-2"] = {3}
tNpcGossip[19161]["Option3"] = tShenpinRefinArea_Text[19161]["Option3"]
tNpcGossip[19161]["OptionFunc3"] = "ShenpinRefinArea_FindWay</N>3633</S>Next</N>19162"

tNpcGossip[19161]["Text1-3"] = {131,132}
tNpcGossip[19161]["Text131"] = tShenpinRefinArea_Text[19161]["Text131"]
tNpcGossip[19161]["Text132"] = tShenpinRefinArea_Text[19161]["Text132"]
tNpcGossip[19161]["tOption1-3"] = {4}
tNpcGossip[19161]["Option4"] = tShenpinRefinArea_Text[19161]["Option4"]

tNpcGossip[19161]["Text1-4"] = {141}
tNpcGossip[19161]["Text141"] = tShenpinRefinArea_Text[19161]["Text141"]
tNpcGossip[19161]["tOption1-4"] = {5}
tNpcGossip[19161]["Option5"] = tShenpinRefinArea_Text[19161]["Option5"]
tNpcGossip[19161]["OptionFunc5"] = "Task_IsHandOverByNpc</N>3632</N>19161</N>1"

tNpcGossip[19161]["Text2-1"] = {211}
tNpcGossip[19161]["Text211"] = tShenpinRefinArea_Text[19161]["Text211"]
tNpcGossip[19161]["tOption2-1"] = {6}
tNpcGossip[19161]["Option6"] = tShenpinRefinArea_Text[19161]["Option6"]

-------------------------------------言仲丘
tNpcFace[4025] = 73
tNpcGossip[19162] = tNpcGossip[19162] or DefaultNpc:new{}
tNpcGossip[19162]["OptionHidden"] = 1

tNpcGossip[19162]["Text1-1"] = {111}
tNpcGossip[19162]["Text111"] = tShenpinRefinArea_Text[19162]["Text111"]
tNpcGossip[19162]["tOption1-1"] = {1}
tNpcGossip[19162]["ChkFunc1-1"] = function()
	local nSex = Get_UserSex()
	if nSex == 2 then
		tNpcGossip[19162]["Text111"] = tShenpinRefinArea_Text[19162]["Text112"]
	end
	
	return true
end

tNpcGossip[19162]["Option1"] = tShenpinRefinArea_Text[19162]["Option1"]
tNpcGossip[19162]["OptionFunc1"] = "Task_IsHandOverByNpc</N>3633</N>19162</N>1"

tNpcGossip[19162]["Text1-2"] = {121}
tNpcGossip[19162]["Text121"] = tShenpinRefinArea_Text[19162]["Text121"]
tNpcGossip[19162]["tOption1-2"] = {17}
tNpcGossip[19162]["Option17"] = tShenpinRefinArea_Text[19162]["Option17"]

tNpcGossip[19162]["Text2-1"] = {211,212,213}
tNpcGossip[19162]["Text211"] = tShenpinRefinArea_Text[19162]["Text211"]
tNpcGossip[19162]["Text212"] = tShenpinRefinArea_Text[19162]["Text212"]
tNpcGossip[19162]["Text213"] = tShenpinRefinArea_Text[19162]["Text213"]
tNpcGossip[19162]["tOption2-1"] = {2}
tNpcGossip[19162]["Option2"] = tShenpinRefinArea_Text[19162]["Option2"]
tNpcGossip[19162]["OptionPoint2"] = "2-2"

tNpcGossip[19162]["Text2-2"] = {221,222,223}
tNpcGossip[19162]["Text221"] = tShenpinRefinArea_Text[19162]["Text221"]
tNpcGossip[19162]["Text222"] = tShenpinRefinArea_Text[19162]["Text222"]
tNpcGossip[19162]["Text223"] = tShenpinRefinArea_Text[19162]["Text223"]
tNpcGossip[19162]["tOption2-2"] = {3,4}
tNpcGossip[19162]["Option3"] = tShenpinRefinArea_Text[19162]["Option3"]
tNpcGossip[19162]["OptionFunc3"] = "Task_IsCreatByNpc</N>3634</N>19162</N>1"
tNpcGossip[19162]["Option4"] = tShenpinRefinArea_Text[19162]["Option4"]

tNpcGossip[19162]["Text2-3"] = {231}
tNpcGossip[19162]["Text231"] = tShenpinRefinArea_Text[19162]["Text231"]
tNpcGossip[19162]["tOption2-3"] = {5}
tNpcGossip[19162]["Option5"] = tShenpinRefinArea_Text[19162]["Option5"]
tNpcGossip[19162]["OptionFunc5"] = "ShenpinRefinArea_HandOver</N>3634</N>19162"
-- tNpcGossip[19162]["Option6"] = tShenpinRefinArea_Text[19162]["Option6"]

tNpcGossip[19162]["Text2-4"] = {241,242}
tNpcGossip[19162]["Text241"] = tShenpinRefinArea_Text[19162]["Text241"]
tNpcGossip[19162]["Text242"] = tShenpinRefinArea_Text[19162]["Text242"]
tNpcGossip[19162]["tOption2-4"] = {7}
tNpcGossip[19162]["Option7"] = tShenpinRefinArea_Text[19162]["Option7"]
tNpcGossip[19162]["OptionFunc7"] = "ShenpinRefinArea_FindWay</N>3634</S>Min</N>0"

tNpcGossip[19162]["Text2-5"] = {251}
tNpcGossip[19162]["Text251"] = tShenpinRefinArea_Text[19162]["Text251"]
tNpcGossip[19162]["tOption2-5"] = {8}
tNpcGossip[19162]["Option8"] = tShenpinRefinArea_Text[19162]["Option8"]
tNpcGossip[19162]["OptionFunc8"] = "Task_IsHandOverByNpc</N>3634</N>19162</N>1"

tNpcGossip[19162]["Text3-1"] = {311,312,313,314,315}
tNpcGossip[19162]["Text311"] = tShenpinRefinArea_Text[19162]["Text311"]
tNpcGossip[19162]["Text312"] = tShenpinRefinArea_Text[19162]["Text312"]
tNpcGossip[19162]["Text313"] = tShenpinRefinArea_Text[19162]["Text313"]
tNpcGossip[19162]["Text314"] = tShenpinRefinArea_Text[19162]["Text314"]
tNpcGossip[19162]["Text315"] = tShenpinRefinArea_Text[19162]["Text315"]
tNpcGossip[19162]["tOption3-1"] = {9}
tNpcGossip[19162]["Option9"] = tShenpinRefinArea_Text[19162]["Option9"]
tNpcGossip[19162]["OptionPoint9"] = "3-2"

tNpcGossip[19162]["Text3-2"] = {321,322,323,324}
tNpcGossip[19162]["Text321"] = tShenpinRefinArea_Text[19162]["Text321"]
tNpcGossip[19162]["Text322"] = tShenpinRefinArea_Text[19162]["Text322"]
tNpcGossip[19162]["Text323"] = tShenpinRefinArea_Text[19162]["Text323"]
tNpcGossip[19162]["Text324"] = tShenpinRefinArea_Text[19162]["Text324"]
tNpcGossip[19162]["tOption3-2"] = {10}
tNpcGossip[19162]["Option10"] = tShenpinRefinArea_Text[19162]["Option10"]
tNpcGossip[19162]["OptionFunc10"] = "Task_IsCreatByNpc</N>3635</N>19162</N>1"

tNpcGossip[19162]["Text3-3"] = {331}
tNpcGossip[19162]["Text331"] = tShenpinRefinArea_Text[19162]["Text331"]
tNpcGossip[19162]["tOption3-3"] = {11}
tNpcGossip[19162]["Option11"] = tShenpinRefinArea_Text[19162]["Option11"]
tNpcGossip[19162]["OptionFunc11"] = "ShenpinRefinArea_FindWay</N>3635</S>Next</N>19163"

tNpcGossip[19162]["Text4-1"] = {411}
tNpcGossip[19162]["Text411"] = tShenpinRefinArea_Text[19162]["Text411"]
tNpcGossip[19162]["tOption4-1"] = {12}
tNpcGossip[19162]["Option12"] = tShenpinRefinArea_Text[19162]["Option12"]
tNpcGossip[19162]["OptionFunc12"] = "ShenpinRefinArea_HandOver</N>3639</N>19162"

tNpcGossip[19162]["Text4-2"] = {421}
tNpcGossip[19162]["Text421"] = tShenpinRefinArea_Text[19162]["Text421"]
tNpcGossip[19162]["tOption4-2"] = {13}
tNpcGossip[19162]["Option13"] = tShenpinRefinArea_Text[19162]["Option13"]
tNpcGossip[19162]["OptionFunc13"] = "ShenpinRefinArea_FindWay</N>3639</S>Min</N>19163"

tNpcGossip[19162]["Text4-3"] = {431,432,433,434}
tNpcGossip[19162]["Text431"] = tShenpinRefinArea_Text[19162]["Text431"]
tNpcGossip[19162]["Text432"] = tShenpinRefinArea_Text[19162]["Text432"]
tNpcGossip[19162]["Text433"] = tShenpinRefinArea_Text[19162]["Text433"]
tNpcGossip[19162]["Text434"] = tShenpinRefinArea_Text[19162]["Text434"]
tNpcGossip[19162]["tOption4-3"] = {14}
tNpcGossip[19162]["Option14"] = tShenpinRefinArea_Text[19162]["Option14"]
tNpcGossip[19162]["OptionFunc14"] = "Task_IsHandOverByNpc</N>3639</N>19162</N>1"

tNpcGossip[19162]["Text5-1"] = {511,512,513}
tNpcGossip[19162]["Text511"] = tShenpinRefinArea_Text[19162]["Text511"]
tNpcGossip[19162]["Text512"] = tShenpinRefinArea_Text[19162]["Text512"]
tNpcGossip[19162]["Text513"] = tShenpinRefinArea_Text[19162]["Text513"]
tNpcGossip[19162]["tOption5-1"] = {15}
tNpcGossip[19162]["Option15"] = tShenpinRefinArea_Text[19162]["Option15"]
tNpcGossip[19162]["OptionFunc15"] = "Task_IsCreatByNpc</N>3640</N>19162</N>1"

tNpcGossip[19162]["Text5-2"] = {521}
tNpcGossip[19162]["Text521"] = tShenpinRefinArea_Text[19162]["Text521"]
tNpcGossip[19162]["tOption5-2"] = {16}
tNpcGossip[19162]["Option16"] = tShenpinRefinArea_Text[19162]["Option16"]
tNpcGossip[19162]["OptionFunc16"] = "ShenpinRefinArea_FindWay</N>3640</S>Next</N>19164"

tNpcGossip[19162]["Text6-1"] = {611}
tNpcGossip[19162]["Text611"] = tShenpinRefinArea_Text[19162]["Text611"]
tNpcGossip[19162]["tOption6-1"] = {18}
tNpcGossip[19162]["Option18"] = tShenpinRefinArea_Text[19162]["Option18"]

tNpcGossip[19162]["Text7-1"] = {711}
tNpcGossip[19162]["Text711"] = tShenpinRefinArea_Text[19162]["Text711"]
tNpcGossip[19162]["tOption7-1"] = {19}
tNpcGossip[19162]["Option19"] = tShenpinRefinArea_Text[19162]["Option19"]

-------------------------------------残破的锻冶炉
tNpcGossip[19163] = tNpcGossip[19163] or DefaultNpc:new{}
tNpcGossip[19163]["OptionHidden"] = 1

tNpcGossip[19163]["Text1-1"] = {111,112}
tNpcGossip[19163]["Text111"] = tShenpinRefinArea_Text[19163]["Text111"]
tNpcGossip[19163]["Text112"] = tShenpinRefinArea_Text[19163]["Text112"]
tNpcGossip[19163]["tOption1-1"] = {1}
tNpcGossip[19163]["Option1"] = tShenpinRefinArea_Text[19163]["Option1"]
tNpcGossip[19163]["OptionFunc1"] = "Task_IsHandOverByNpc</N>3635</N>19163</N>1"

tNpcGossip[19163]["Text1-2"] = {121,122}
tNpcGossip[19163]["Text121"] = tShenpinRefinArea_Text[19163]["Text121"]
tNpcGossip[19163]["Text122"] = tShenpinRefinArea_Text[19163]["Text122"]
tNpcGossip[19163]["tOption1-2"] = {14}
tNpcGossip[19163]["Option14"] = tShenpinRefinArea_Text[19163]["Option14"]

tNpcGossip[19163]["Text2-1"] = {211,212}
tNpcGossip[19163]["Text211"] = tShenpinRefinArea_Text[19163]["Text211"]
tNpcGossip[19163]["Text212"] = tShenpinRefinArea_Text[19163]["Text212"]
tNpcGossip[19163]["tOption2-1"] = {2}
tNpcGossip[19163]["Option2"] = tShenpinRefinArea_Text[19163]["Option2"]
tNpcGossip[19163]["OptionFunc2"] = "Task_IsCreatByNpc</N>3636</N>19163</N>1"

tNpcGossip[19163]["Text2-2"] = {221,222}
tNpcGossip[19163]["Text221"] = tShenpinRefinArea_Text[19163]["Text221"]
tNpcGossip[19163]["Text222"] = tShenpinRefinArea_Text[19163]["Text222"]
tNpcGossip[19163]["tOption2-2"] = {3}
tNpcGossip[19163]["Option3"] = tShenpinRefinArea_Text[19163]["Option3"]
tNpcGossip[19163]["OptionFunc3"] = "Task_IsHandOverByNpc</N>3636</N>19163</N>1"

tNpcGossip[19163]["Text2-3"] = {231,232}
tNpcGossip[19163]["Text231"] = tShenpinRefinArea_Text[19163]["Text231"]
tNpcGossip[19163]["Text232"] = tShenpinRefinArea_Text[19163]["Text232"]
tNpcGossip[19163]["tOption2-3"] = {4}
tNpcGossip[19163]["Option4"] = tShenpinRefinArea_Text[19163]["Option4"]
tNpcGossip[19163]["OptionFunc4"] = "ShenpinRefinArea_HandOver</N>3636</N>19163"
-- tNpcGossip[19163]["Option16"] = tShenpinRefinArea_Text[19163]["Option16"]

tNpcGossip[19163]["Text2-4"] = {241,242}
tNpcGossip[19163]["Text241"] = tShenpinRefinArea_Text[19163]["Text241"]
tNpcGossip[19163]["Text242"] = tShenpinRefinArea_Text[19163]["Text242"]
tNpcGossip[19163]["tOption2-4"] = {17}
tNpcGossip[19163]["Option17"] = tShenpinRefinArea_Text[19163]["Option17"]
tNpcGossip[19163]["OptionFunc17"] = "ShenpinRefinArea_FindWay</N>3636</S>Min</N>0"

tNpcGossip[19163]["Text3-1"] = {311,312}
tNpcGossip[19163]["Text311"] = tShenpinRefinArea_Text[19163]["Text311"]
tNpcGossip[19163]["Text312"] = tShenpinRefinArea_Text[19163]["Text312"]
tNpcGossip[19163]["tOption3-1"] = {5}
tNpcGossip[19163]["Option5"] = tShenpinRefinArea_Text[19163]["Option5"]
tNpcGossip[19163]["OptionFunc5"] = "Task_IsCreatByNpc</N>3637</N>19163</N>1"

tNpcGossip[19163]["Text3-2"] = {321,322,323}
tNpcGossip[19163]["Text321"] = tShenpinRefinArea_Text[19163]["Text321"]
tNpcGossip[19163]["Text322"] = tShenpinRefinArea_Text[19163]["Text322"]
tNpcGossip[19163]["Text323"] = tShenpinRefinArea_Text[19163]["Text323"]
tNpcGossip[19163]["tOption3-2"] = {6}
tNpcGossip[19163]["Option6"] = tShenpinRefinArea_Text[19163]["Option6"]
tNpcGossip[19163]["OptionPoint6"] = "3-3"

tNpcGossip[19163]["Text3-3"] = {331,332,333}
tNpcGossip[19163]["Text331"] = tShenpinRefinArea_Text[19163]["Text331"]
tNpcGossip[19163]["Text332"] = tShenpinRefinArea_Text[19163]["Text332"]
tNpcGossip[19163]["Text333"] = tShenpinRefinArea_Text[19163]["Text333"]
tNpcGossip[19163]["tOption3-3"] = {7}
tNpcGossip[19163]["Option7"] = tShenpinRefinArea_Text[19163]["Option7"]
tNpcGossip[19163]["OptionFunc7"] = "Task_IsHandOverByNpc</N>3637</N>19163</N>1"

tNpcGossip[19163]["Text3-4"] = {341,342,343,344}
tNpcGossip[19163]["Text341"] = tShenpinRefinArea_Text[19163]["Text341"]
tNpcGossip[19163]["Text342"] = tShenpinRefinArea_Text[19163]["Text342"]
tNpcGossip[19163]["Text343"] = tShenpinRefinArea_Text[19163]["Text343"]
tNpcGossip[19163]["Text344"] = tShenpinRefinArea_Text[19163]["Text344"]
tNpcGossip[19163]["tOption3-4"] = {8}
tNpcGossip[19163]["Option8"] = tShenpinRefinArea_Text[19163]["Option8"]
tNpcGossip[19163]["OptionFunc8"] = "Task_IsCreatByNpc</N>3638</N>19163</N>1"

tNpcGossip[19163]["Text3-5"] = {351,352}
tNpcGossip[19163]["Text351"] = tShenpinRefinArea_Text[19163]["Text351"]
tNpcGossip[19163]["Text352"] = tShenpinRefinArea_Text[19163]["Text352"]
tNpcGossip[19163]["tOption3-5"] = {9}
tNpcGossip[19163]["Option9"] = tShenpinRefinArea_Text[19163]["Option9"]
tNpcGossip[19163]["OptionFunc9"] = "ShenpinRefinArea_FindWay</N>3638</S>Min</N>0"

tNpcGossip[19163]["Text3-6"] = {361,362,363}
tNpcGossip[19163]["Text361"] = tShenpinRefinArea_Text[19163]["Text361"]
tNpcGossip[19163]["Text362"] = tShenpinRefinArea_Text[19163]["Text362"]
tNpcGossip[19163]["Text363"] = tShenpinRefinArea_Text[19163]["Text363"]
tNpcGossip[19163]["tOption3-6"] = {10}
tNpcGossip[19163]["Option10"] = tShenpinRefinArea_Text[19163]["Option10"]
tNpcGossip[19163]["OptionFunc10"] = "ShenpinRefinArea_Hammer</N>3638</N>19163"
-- tNpcGossip[19163]["Option11"] = tShenpinRefinArea_Text[19163]["Option11"]

tNpcGossip[19163]["Text3-7"] = {371,372}
tNpcGossip[19163]["Text371"] = tShenpinRefinArea_Text[19163]["Text371"]
tNpcGossip[19163]["Text372"] = tShenpinRefinArea_Text[19163]["Text372"]
tNpcGossip[19163]["tOption3-7"] = {12}
tNpcGossip[19163]["Option12"] = tShenpinRefinArea_Text[19163]["Option12"]
tNpcGossip[19163]["OptionFunc12"] = "ShenpinRefinArea_FindWay</N>3638</S>Min</N>0"

tNpcGossip[19163]["Text3-8"] = {381,382,383}
tNpcGossip[19163]["Text381"] = tShenpinRefinArea_Text[19163]["Text381"]
tNpcGossip[19163]["Text382"] = tShenpinRefinArea_Text[19163]["Text382"]
tNpcGossip[19163]["Text383"] = tShenpinRefinArea_Text[19163]["Text383"]
tNpcGossip[19163]["tOption3-8"] = {13}
tNpcGossip[19163]["Option13"] = tShenpinRefinArea_Text[19163]["Option13"]
tNpcGossip[19163]["OptionFunc13"] = "Task_IsHandOverByNpc</N>3638</N>19163</N>1"

tNpcGossip[19163]["Text4-1"] = {411,412}
tNpcGossip[19163]["Text411"] = tShenpinRefinArea_Text[19163]["Text411"]
tNpcGossip[19163]["Text412"] = tShenpinRefinArea_Text[19163]["Text412"]
tNpcGossip[19163]["tOption4-1"] = {15}
tNpcGossip[19163]["Option15"] = tShenpinRefinArea_Text[19163]["Option15"]
tNpcGossip[19163]["OptionFunc15"] = "Task_IsCreatByNpc</N>3639</N>19163</N>1"

tNpcGossip[19163]["Text4-2"] = {421,422}
tNpcGossip[19163]["Text421"] = tShenpinRefinArea_Text[19163]["Text421"]
tNpcGossip[19163]["Text422"] = tShenpinRefinArea_Text[19163]["Text422"]
tNpcGossip[19163]["tOption4-2"] = {18}
tNpcGossip[19163]["Option18"] = tShenpinRefinArea_Text[19163]["Option18"]

tNpcGossip[19163]["Text4-3"] = {431,432}
tNpcGossip[19163]["Text431"] = tShenpinRefinArea_Text[19163]["Text431"]
tNpcGossip[19163]["Text432"] = tShenpinRefinArea_Text[19163]["Text432"]
tNpcGossip[19163]["tOption4-3"] = {20}
tNpcGossip[19163]["Option20"] = tShenpinRefinArea_Text[19163]["Option20"]
tNpcGossip[19163]["OptionFunc20"] = "ShenpinRefinArea_Replacement</N>19163"
-- tNpcGossip[19163]["Option21"] = tShenpinRefinArea_Text[19163]["Option21"]

tNpcGossip[19163]["Text4-4"] = {441}
tNpcGossip[19163]["Text441"] = tShenpinRefinArea_Text[19163]["Text441"]
tNpcGossip[19163]["tOption4-4"] = {22}
tNpcGossip[19163]["Option22"] = tShenpinRefinArea_Text[19163]["Option22"]
tNpcGossip[19163]["OptionFunc22"] = "ShenpinRefinArea_FindWay</N>3639</S>Complete</N>19162"

tNpcGossip[19163]["Text4-5"] = {451,452}
tNpcGossip[19163]["Text451"] = tShenpinRefinArea_Text[19163]["Text451"]
tNpcGossip[19163]["Text452"] = tShenpinRefinArea_Text[19163]["Text452"]
tNpcGossip[19163]["tOption4-5"] = {23}
tNpcGossip[19163]["Option23"] = tShenpinRefinArea_Text[19163]["Option23"]
tNpcGossip[19163]["OptionFunc23"] = "ShenpinRefinArea_FindWay</N>3639</S>Complete</N>19162"

tNpcGossip[19163]["Text5-1"] = {511}
tNpcGossip[19163]["Text511"] = tShenpinRefinArea_Text[19163]["Text511"]
tNpcGossip[19163]["tOption5-1"] = {24}
tNpcGossip[19163]["Option24"] = tShenpinRefinArea_Text[19163]["Option24"]

tNpcGossip[19163]["Text6-1"] = {611}
tNpcGossip[19163]["Text611"] = tShenpinRefinArea_Text[19163]["Text611"]
tNpcGossip[19163]["tOption6-1"] = {25}
tNpcGossip[19163]["Option25"] = tShenpinRefinArea_Text[19163]["Option25"]

-------------------------------------言震
tNpcFace[4027] = 90
tNpcGossip[19164] = tNpcGossip[19164] or DefaultNpc:new{}
tNpcGossip[19164]["OptionHidden"] = 1

tNpcGossip[19164]["Text1-1"] = {111}
tNpcGossip[19164]["Text111"] = tShenpinRefinArea_Text[19164]["Text111"]
tNpcGossip[19164]["tOption1-1"] = {1}
tNpcGossip[19164]["Option1"] = tShenpinRefinArea_Text[19164]["Option1"]
tNpcGossip[19164]["OptionFunc1"] = "Task_IsHandOverByNpc</N>3640</N>19164</N>1"

tNpcGossip[19164]["Text1-2"] = {121}
tNpcGossip[19164]["Text121"] = tShenpinRefinArea_Text[19164]["Text121"]
tNpcGossip[19164]["tOption1-2"] = {12}
tNpcGossip[19164]["Option12"] = tShenpinRefinArea_Text[19164]["Option12"]

tNpcGossip[19164]["Text2-1"] = {211,212,213}
tNpcGossip[19164]["Text211"] = tShenpinRefinArea_Text[19164]["Text211"]
tNpcGossip[19164]["Text212"] = tShenpinRefinArea_Text[19164]["Text212"]
tNpcGossip[19164]["Text213"] = tShenpinRefinArea_Text[19164]["Text213"]
tNpcGossip[19164]["tOption2-1"] = {2}
tNpcGossip[19164]["Option2"] = tShenpinRefinArea_Text[19164]["Option2"]
tNpcGossip[19164]["OptionFunc2"] = "Task_IsCreatByNpc</N>3641</N>19164</N>1"

tNpcGossip[19164]["Text2-2"] = {221,222}
tNpcGossip[19164]["Text221"] = tShenpinRefinArea_Text[19164]["Text221"]
tNpcGossip[19164]["Text222"] = tShenpinRefinArea_Text[19164]["Text222"]
tNpcGossip[19164]["tOption2-2"] = {3}
tNpcGossip[19164]["Option3"] = tShenpinRefinArea_Text[19164]["Option3"]
tNpcGossip[19164]["OptionFunc3"] = "ShenpinRefinArea_FindWay</N>3641</S>Min</N>0"

tNpcGossip[19164]["Text2-3"] = {231}
tNpcGossip[19164]["Text231"] = tShenpinRefinArea_Text[19164]["Text231"]
tNpcGossip[19164]["tOption2-3"] = {4,19}
tNpcGossip[19164]["Option4"] = tShenpinRefinArea_Text[19164]["Option4"]
tNpcGossip[19164]["OptionFunc4"] = "ShenpinRefinArea_HandOver</N>3641</N>19164"
tNpcGossip[19164]["Option19"] = tShenpinRefinArea_Text[19164]["Option19"]
tNpcGossip[19164]["OptionFunc19"] = "ShenpinRefinArea_Replacement</N>19164"
tNpcGossip[19164]["OptionChkFunc19"] = function()
	return not Task_ChkTaskDetailValue(3641,"2",">=",1)
end
-- tNpcGossip[19164]["Option13"] = tShenpinRefinArea_Text[19164]["Option13"]

tNpcGossip[19164]["Text2-4"] = {241}
tNpcGossip[19164]["Text241"] = tShenpinRefinArea_Text[19164]["Text241"]
tNpcGossip[19164]["tOption2-4"] = {5}
tNpcGossip[19164]["Option5"] = tShenpinRefinArea_Text[19164]["Option5"]
tNpcGossip[19164]["OptionFunc5"] = "Task_IsHandOverByNpc</N>3641</N>19164</N>1"

tNpcGossip[19164]["Text2-5"] = {251}
tNpcGossip[19164]["Text251"] = tShenpinRefinArea_Text[19164]["Text251"]
tNpcGossip[19164]["tOption2-5"] = {17}
tNpcGossip[19164]["Option17"] = tShenpinRefinArea_Text[19164]["Option17"]

tNpcGossip[19164]["Text2-6"] = {261}
tNpcGossip[19164]["Text261"] = tShenpinRefinArea_Text[19164]["Text261"]
tNpcGossip[19164]["tOption2-6"] = {14}
tNpcGossip[19164]["Option14"] = tShenpinRefinArea_Text[19164]["Option14"]

tNpcGossip[19164]["Text2-7"] = {271}
tNpcGossip[19164]["Text271"] = tShenpinRefinArea_Text[19164]["Text271"]
tNpcGossip[19164]["tOption2-7"] = {15}
tNpcGossip[19164]["Option15"] = tShenpinRefinArea_Text[19164]["Option15"]

tNpcGossip[19164]["Text2-8"] = {281,282}
tNpcGossip[19164]["Text281"] = tShenpinRefinArea_Text[19164]["Text281"]
tNpcGossip[19164]["Text282"] = tShenpinRefinArea_Text[19164]["Text282"]
tNpcGossip[19164]["tOption2-8"] = {16}
tNpcGossip[19164]["Option16"] = tShenpinRefinArea_Text[19164]["Option16"]

tNpcGossip[19164]["Text3-1"] = {311,312}
tNpcGossip[19164]["Text311"] = tShenpinRefinArea_Text[19164]["Text311"]
tNpcGossip[19164]["Text312"] = tShenpinRefinArea_Text[19164]["Text312"]
tNpcGossip[19164]["tOption3-1"] = {6}
tNpcGossip[19164]["Option6"] = tShenpinRefinArea_Text[19164]["Option6"]
tNpcGossip[19164]["OptionFunc6"] = "Task_IsCreatByNpc</N>3642</N>19164</N>1"

tNpcGossip[19164]["Text3-2"] = {321}
tNpcGossip[19164]["Text321"] = tShenpinRefinArea_Text[19164]["Text321"]
tNpcGossip[19164]["tOption3-2"] = {7}
tNpcGossip[19164]["Option7"] = tShenpinRefinArea_Text[19164]["Option7"]
tNpcGossip[19164]["OptionFunc7"] = "ShenpinRefinArea_HandOver</N>3642</N>19164"
-- tNpcGossip[19164]["Option8"] = tShenpinRefinArea_Text[19164]["Option8"]

tNpcGossip[19164]["Text3-3"] = {331,332}
tNpcGossip[19164]["Text331"] = tShenpinRefinArea_Text[19164]["Text331"]
tNpcGossip[19164]["Text332"] = tShenpinRefinArea_Text[19164]["Text332"]
tNpcGossip[19164]["tOption3-3"] = {9}
tNpcGossip[19164]["Option9"] = tShenpinRefinArea_Text[19164]["Option9"]
tNpcGossip[19164]["OptionFunc9"] = "ShenpinRefinArea_FindWay</N>3642</S>Min</N>0"

tNpcGossip[19164]["Text3-4"] = {341}
tNpcGossip[19164]["Text341"] = tShenpinRefinArea_Text[19164]["Text341"]
tNpcGossip[19164]["tOption3-4"] = {10}
tNpcGossip[19164]["Option10"] = tShenpinRefinArea_Text[19164]["Option10"]
tNpcGossip[19164]["OptionFunc10"] = "Task_IsHandOverByNpc</N>3642</N>19164</N>1"

tNpcGossip[19164]["Text4-1"] = {411,412}
tNpcGossip[19164]["Text411"] = tShenpinRefinArea_Text[19164]["Text411"]
tNpcGossip[19164]["Text412"] = tShenpinRefinArea_Text[19164]["Text412"]
tNpcGossip[19164]["tOption4-1"] = {11}
tNpcGossip[19164]["Option11"] = tShenpinRefinArea_Text[19164]["Option11"]
tNpcGossip[19164]["OptionFunc11"] = "Task_IsCreatByNpc</N>3643</N>19164</N>1"

tNpcGossip[19164]["Text5-1"] = {511,512}
tNpcGossip[19164]["Text511"] = tShenpinRefinArea_Text[19164]["Text511"]
tNpcGossip[19164]["Text512"] = tShenpinRefinArea_Text[19164]["Text512"]
tNpcGossip[19164]["tOption5-1"] = {18}
tNpcGossip[19164]["Option18"] = tShenpinRefinArea_Text[19164]["Option18"]

-------------------------------------NPC宫前祭坛（光阵）
tNpcGossip[19165] = tNpcGossip[19165] or DefaultNpc:new{}
tNpcGossip[19165]["OptionHidden"] = 1

tNpcGossip[19165]["Text1-1"] = {111,112}
tNpcGossip[19165]["Text111"] = tShenpinRefinArea_Text[19165]["Text111"]
tNpcGossip[19165]["Text112"] = tShenpinRefinArea_Text[19165]["Text112"]
tNpcGossip[19165]["tOption1-1"] = {1}
tNpcGossip[19165]["Option1"] = tShenpinRefinArea_Text[19165]["Option1"]
tNpcGossip[19165]["OptionFunc1"] = "Task_IsHandOverByNpc</N>3643</N>19165</N>1"

tNpcGossip[19165]["Text1-2"] = {121}
tNpcGossip[19165]["Text121"] = tShenpinRefinArea_Text[19165]["Text121"]
tNpcGossip[19165]["tOption1-2"] = {28}
tNpcGossip[19165]["Option28"] = tShenpinRefinArea_Text[19165]["Option28"]

tNpcGossip[19165]["Text2-1"] = {211,212}
tNpcGossip[19165]["Text211"] = tShenpinRefinArea_Text[19165]["Text211"]
tNpcGossip[19165]["Text212"] = tShenpinRefinArea_Text[19165]["Text212"]
tNpcGossip[19165]["tOption2-1"] = {2}
tNpcGossip[19165]["Option2"] = tShenpinRefinArea_Text[19165]["Option2"]
tNpcGossip[19165]["OptionFunc2"] = "Task_IsCreatByNpc</N>3644</N>19165</N>1"

tNpcGossip[19165]["Text2-2"] = {221}
tNpcGossip[19165]["Text221"] = tShenpinRefinArea_Text[19165]["Text221"]
tNpcGossip[19165]["tOption2-2"] = {3}
tNpcGossip[19165]["Option3"] = tShenpinRefinArea_Text[19165]["Option3"]
tNpcGossip[19165]["OptionFunc3"] = "ShenpinRefinArea_HandOver</N>3644</N>19165"
-- tNpcGossip[19165]["Option4"] = tShenpinRefinArea_Text[19165]["Option4"]

tNpcGossip[19165]["Text2-3"] = {231,232}
tNpcGossip[19165]["Text231"] = tShenpinRefinArea_Text[19165]["Text231"]
tNpcGossip[19165]["Text232"] = tShenpinRefinArea_Text[19165]["Text232"]
tNpcGossip[19165]["tOption2-3"] = {30}
tNpcGossip[19165]["Option30"] = tShenpinRefinArea_Text[19165]["Option30"]
tNpcGossip[19165]["OptionFunc30"] = "ShenpinRefinArea_FindWay</N>3644</S>Min</N>0"

tNpcGossip[19165]["Text2-4"] = {241,242}
tNpcGossip[19165]["Text241"] = tShenpinRefinArea_Text[19165]["Text241"]
tNpcGossip[19165]["Text242"] = tShenpinRefinArea_Text[19165]["Text242"]
tNpcGossip[19165]["tOption2-4"] = {5}
tNpcGossip[19165]["Option5"] = tShenpinRefinArea_Text[19165]["Option5"]
tNpcGossip[19165]["OptionFunc5"] = "Task_IsHandOverByNpc</N>3644</N>19165</N>1"

tNpcGossip[19165]["Text3-1"] = {311,312,313}
tNpcGossip[19165]["Text311"] = tShenpinRefinArea_Text[19165]["Text311"]
tNpcGossip[19165]["Text312"] = tShenpinRefinArea_Text[19165]["Text312"]
tNpcGossip[19165]["Text313"] = tShenpinRefinArea_Text[19165]["Text313"]
tNpcGossip[19165]["tOption3-1"] = {6}
tNpcGossip[19165]["Option6"] = tShenpinRefinArea_Text[19165]["Option6"]
tNpcGossip[19165]["OptionFunc6"] = "Task_IsCreatByNpc</N>3645</N>19165</N>1"

tNpcGossip[19165]["Text3-2"] = {321,322}
tNpcGossip[19165]["Text321"] = tShenpinRefinArea_Text[19165]["Text321"]
tNpcGossip[19165]["Text322"] = tShenpinRefinArea_Text[19165]["Text322"]
tNpcGossip[19165]["tOption3-2"] = {7}
tNpcGossip[19165]["Option7"] = tShenpinRefinArea_Text[19165]["Option7"]
tNpcGossip[19165]["OptionFunc7"] = "ShenpinRefinArea_HandOver</N>3645</N>19165"
--tNpcGossip[19165]["Option8"] = tShenpinRefinArea_Text[19165]["Option8"]

tNpcGossip[19165]["Text3-3"] = {331,332}
tNpcGossip[19165]["Text331"] = tShenpinRefinArea_Text[19165]["Text331"]
tNpcGossip[19165]["Text332"] = tShenpinRefinArea_Text[19165]["Text332"]
tNpcGossip[19165]["tOption3-3"] = {9}
tNpcGossip[19165]["Option9"] = tShenpinRefinArea_Text[19165]["Option9"]
tNpcGossip[19165]["OptionFunc9"] = "ShenpinRefinArea_FindWay</N>3645</S>Min</N>0"

tNpcGossip[19165]["Text3-4"] = {341,342,343}
tNpcGossip[19165]["Text341"] = tShenpinRefinArea_Text[19165]["Text341"]
tNpcGossip[19165]["Text342"] = tShenpinRefinArea_Text[19165]["Text342"]
tNpcGossip[19165]["Text343"] = tShenpinRefinArea_Text[19165]["Text343"]
tNpcGossip[19165]["tOption3-4"] = {10}
tNpcGossip[19165]["Option10"] = tShenpinRefinArea_Text[19165]["Option10"]
tNpcGossip[19165]["OptionFunc10"] = "Task_IsHandOverByNpc</N>3645</N>19165</N>1"

tNpcGossip[19165]["Text4-1"] = {411,412}
tNpcGossip[19165]["Text411"] = tShenpinRefinArea_Text[19165]["Text411"]
tNpcGossip[19165]["Text412"] = tShenpinRefinArea_Text[19165]["Text412"]
tNpcGossip[19165]["tOption4-1"] = {11}
tNpcGossip[19165]["Option11"] = tShenpinRefinArea_Text[19165]["Option11"]
tNpcGossip[19165]["OptionFunc11"] = "Task_IsCreatByNpc</N>3646</N>19165</N>1"

tNpcGossip[19165]["Text4-2"] = {421,422}
tNpcGossip[19165]["Text421"] = tShenpinRefinArea_Text[19165]["Text421"]
tNpcGossip[19165]["Text422"] = tShenpinRefinArea_Text[19165]["Text422"]
tNpcGossip[19165]["tOption4-2"] = {12}
tNpcGossip[19165]["Option12"] = tShenpinRefinArea_Text[19165]["Option12"]
tNpcGossip[19165]["OptionFunc12"] = "ShenpinRefinArea_CompleteTask</N>19165"
-- tNpcGossip[19165]["Option13"] = tShenpinRefinArea_Text[19165]["Option13"]

tNpcGossip[19165]["Text4-3"] = {431,432}
tNpcGossip[19165]["Text431"] = tShenpinRefinArea_Text[19165]["Text431"]
tNpcGossip[19165]["Text432"] = tShenpinRefinArea_Text[19165]["Text432"]
tNpcGossip[19165]["tOption4-3"] = {14}
tNpcGossip[19165]["Option14"] = tShenpinRefinArea_Text[19165]["Option14"]
tNpcGossip[19165]["OptionFunc14"] = "ShenpinRefinArea_FindWay</N>3646</S>Min</N>0"

tNpcGossip[19165]["Text4-4"] = {441,442,443}
tNpcGossip[19165]["Text441"] = tShenpinRefinArea_Text[19165]["Text441"]
tNpcGossip[19165]["Text442"] = tShenpinRefinArea_Text[19165]["Text442"]
tNpcGossip[19165]["Text443"] = tShenpinRefinArea_Text[19165]["Text443"]
tNpcGossip[19165]["tOption4-4"] = {15}
tNpcGossip[19165]["Option15"] = tShenpinRefinArea_Text[19165]["Option15"]
tNpcGossip[19165]["OptionFunc15"] = "Task_IsHandOverByNpc</N>3646</N>19165</N>1"

tNpcGossip[19165]["Text4-5"] = {451,452}
tNpcGossip[19165]["Text451"] = tShenpinRefinArea_Text[19165]["Text451"]
tNpcGossip[19165]["Text452"] = tShenpinRefinArea_Text[19165]["Text452"]
tNpcGossip[19165]["tOption4-5"] = {16}
tNpcGossip[19165]["Option16"] = tShenpinRefinArea_Text[19165]["Option16"]

tNpcGossip[19165]["Text5-1"] = {511,512,513,514}
tNpcGossip[19165]["Text511"] = tShenpinRefinArea_Text[19165]["Text511"]
tNpcGossip[19165]["Text512"] = tShenpinRefinArea_Text[19165]["Text512"]
tNpcGossip[19165]["Text513"] = tShenpinRefinArea_Text[19165]["Text513"]
tNpcGossip[19165]["Text514"] = tShenpinRefinArea_Text[19165]["Text514"]
tNpcGossip[19165]["tOption5-1"] = {17}
tNpcGossip[19165]["Option17"] = tShenpinRefinArea_Text[19165]["Option17"]
tNpcGossip[19165]["OptionFunc17"] = "Task_IsCreatByNpc</N>3647</N>19165</N>1"

tNpcGossip[19165]["Text5-2"] = {521,522}
tNpcGossip[19165]["Text521"] = tShenpinRefinArea_Text[19165]["Text521"]
tNpcGossip[19165]["Text522"] = tShenpinRefinArea_Text[19165]["Text522"]
tNpcGossip[19165]["tOption5-2"] = {18}
tNpcGossip[19165]["Option18"] = tShenpinRefinArea_Text[19165]["Option18"]
tNpcGossip[19165]["OptionFunc18"] = "ShenpinRefinArea_HandOver</N>3647</N>19165"
-- tNpcGossip[19165]["Option19"] = tShenpinRefinArea_Text[19165]["Option19"]

tNpcGossip[19165]["Text5-3"] = {531,532}
tNpcGossip[19165]["Text531"] = tShenpinRefinArea_Text[19165]["Text531"]
tNpcGossip[19165]["Text532"] = tShenpinRefinArea_Text[19165]["Text532"]
tNpcGossip[19165]["tOption5-3"] = {20}
tNpcGossip[19165]["Option20"] = tShenpinRefinArea_Text[19165]["Option20"]
tNpcGossip[19165]["OptionFunc20"] = "ShenpinRefinArea_FindWay</N>3647</S>Min</N>0"

tNpcGossip[19165]["Text5-4"] = {541,542,543}
tNpcGossip[19165]["Text541"] = tShenpinRefinArea_Text[19165]["Text541"]
tNpcGossip[19165]["Text542"] = tShenpinRefinArea_Text[19165]["Text542"]
tNpcGossip[19165]["Text543"] = tShenpinRefinArea_Text[19165]["Text543"]
tNpcGossip[19165]["tOption5-4"] = {21}
tNpcGossip[19165]["Option21"] = tShenpinRefinArea_Text[19165]["Option21"]
tNpcGossip[19165]["OptionFunc21"] = "Task_IsHandOverByNpc</N>3647</N>19165</N>1"

tNpcGossip[19165]["Text6-1"] = {611,612}
tNpcGossip[19165]["Text611"] = tShenpinRefinArea_Text[19165]["Text611"]
tNpcGossip[19165]["Text612"] = tShenpinRefinArea_Text[19165]["Text612"]
tNpcGossip[19165]["tOption6-1"] = {22}
tNpcGossip[19165]["Option22"] = tShenpinRefinArea_Text[19165]["Option22"]
tNpcGossip[19165]["OptionFunc22"] = "Task_IsCreatByNpc</N>3648</N>19165</N>1"

tNpcGossip[19165]["Text6-2"] = {621}
tNpcGossip[19165]["Text621"] = tShenpinRefinArea_Text[19165]["Text621"]
tNpcGossip[19165]["tOption6-2"] = {23}
tNpcGossip[19165]["Option23"] = tShenpinRefinArea_Text[19165]["Option23"]
tNpcGossip[19165]["OptionFunc23"] = "ShenpinRefinArea_HandOver</N>3648</N>19165"

tNpcGossip[19165]["Text6-3"] = {631,632}
tNpcGossip[19165]["Text631"] = tShenpinRefinArea_Text[19165]["Text631"]
tNpcGossip[19165]["Text632"] = tShenpinRefinArea_Text[19165]["Text632"]
tNpcGossip[19165]["tOption6-3"] = {24}
tNpcGossip[19165]["Option24"] = tShenpinRefinArea_Text[19165]["Option24"]
tNpcGossip[19165]["OptionFunc24"] = "ShenpinRefinArea_FindWay</N>3648</S>Min</N>0"

tNpcGossip[19165]["Text6-4"] = {641,642,643}
tNpcGossip[19165]["Text641"] = tShenpinRefinArea_Text[19165]["Text641"]
tNpcGossip[19165]["Text642"] = tShenpinRefinArea_Text[19165]["Text642"]
tNpcGossip[19165]["Text643"] = tShenpinRefinArea_Text[19165]["Text643"]
tNpcGossip[19165]["tOption6-4"] = {25}
tNpcGossip[19165]["Option25"] = tShenpinRefinArea_Text[19165]["Option25"]
tNpcGossip[19165]["OptionFunc25"] = "Task_IsHandOverByNpc</N>3648</N>19165</N>1"

tNpcGossip[19165]["Text7-1"] = {711}
tNpcGossip[19165]["Text711"] = tShenpinRefinArea_Text[19165]["Text711"]
tNpcGossip[19165]["tOption7-1"] = {26}
tNpcGossip[19165]["Option26"] = tShenpinRefinArea_Text[19165]["Option26"]
tNpcGossip[19165]["OptionFunc26"] = "Task_IsCreatByNpc</N>3649</N>19165</N>1"

tNpcGossip[19165]["Text7-2"] = {721}
tNpcGossip[19165]["Text721"] = tShenpinRefinArea_Text[19165]["Text721"]
tNpcGossip[19165]["tOption7-2"] = {27}
tNpcGossip[19165]["Option27"] = tShenpinRefinArea_Text[19165]["Option27"]
tNpcGossip[19165]["OptionFunc27"] = "ShenpinRefinArea_FindWay</N>3649</S>Next</N>19160"

tNpcGossip[19165]["Text8-1"] = {811}
tNpcGossip[19165]["Text811"] = tShenpinRefinArea_Text[19165]["Text811"]
tNpcGossip[19165]["tOption8-1"] = {31}
tNpcGossip[19165]["Option31"] = tShenpinRefinArea_Text[19165]["Option31"]

tNpcGossip[19165]["Text8-2"] = {821}
tNpcGossip[19165]["Text821"] = tShenpinRefinArea_Text[19165]["Text821"]
tNpcGossip[19165]["tOption8-2"] = {32}
tNpcGossip[19165]["Option32"] = tShenpinRefinArea_Text[19165]["Option32"]

-------------------------------------清风原引路人
tNpcFace[4033] = 7
tNpcGossip[19194] = tNpcGossip[19194] or DefaultNpc:new{}
tNpcGossip[19194]["OptionHidden"] = 1

tNpcGossip[19194]["Text1-1"] = {111,112}
tNpcGossip[19194]["Text111"] = tShenpinRefinArea_Text[19194]["Text111"]
tNpcGossip[19194]["Text112"] = tShenpinRefinArea_Text[19194]["Text112"]
tNpcGossip[19194]["tOption1-1"] = {1,2}
tNpcGossip[19194]["Option1"] = tShenpinRefinArea_Text[19194]["Option1"]
tNpcGossip[19194]["OptionFunc1"] = "ShenpinRefinArea_ChgMap</N>1002</N>256</N>471"
-- tNpcGossip[19194]["Option3"] = tShenpinRefinArea_Text[19194]["Option3"]
-- tNpcGossip[19194]["OptionFunc3"] = "User_UserRandBoundTrans</N>1036</N>291</N>236</N>3</N>3"
tNpcGossip[19194]["Option2"] = tShenpinRefinArea_Text[19194]["Option2"]

-------------------------------------受伤的西煌族人
tNpcFace[4044] = 32
tNpcGossip[19183] = tNpcGossip[19183] or DefaultNpc:new{}
tNpcGossip[19183]["OptionHidden"] = 1

tNpcGossip[19183]["Text1-1"] = {111,112}
tNpcGossip[19183]["Text111"] = tShenpinRefinArea_Text[19183]["Text111"]
tNpcGossip[19183]["Text112"] = tShenpinRefinArea_Text[19183]["Text112"]
tNpcGossip[19183]["tOption1-1"] = {1}
tNpcGossip[19183]["Option1"] = tShenpinRefinArea_Text[19183]["Option1"]

-------------------------------------西煌护卫
tNpcFace[4045] = 30
tNpcGossip[19184] = tNpcGossip[19184] or DefaultNpc:new{}
tNpcGossip[19184]["OptionHidden"] = 1

tNpcGossip[19184]["Text1-1"] = {111,112}
tNpcGossip[19184]["Text111"] = tShenpinRefinArea_Text[19184]["Text111"]
tNpcGossip[19184]["Text112"] = tShenpinRefinArea_Text[19184]["Text112"]
tNpcGossip[19184]["tOption1-1"] = {1}
tNpcGossip[19184]["Option1"] = tShenpinRefinArea_Text[19184]["Option1"]

-------------------------------------离火宫碑
tNpcGossip[19178] = tNpcGossip[19178] or DefaultNpc:new{}
tNpcGossip[19178]["OptionHidden"] = 1

tNpcGossip[19178]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[19178]["Text111"] = tShenpinRefinArea_Text[19178]["Text111"]
tNpcGossip[19178]["Text112"] = tShenpinRefinArea_Text[19178]["Text112"]
tNpcGossip[19178]["Text113"] = tShenpinRefinArea_Text[19178]["Text113"]
tNpcGossip[19178]["Text114"] = tShenpinRefinArea_Text[19178]["Text114"]
tNpcGossip[19178]["Text115"] = tShenpinRefinArea_Text[19178]["Text115"]
tNpcGossip[19178]["Text116"] = tShenpinRefinArea_Text[19178]["Text116"]
tNpcGossip[19178]["Text117"] = tShenpinRefinArea_Text[19178]["Text117"]
tNpcGossip[19178]["Text118"] = tShenpinRefinArea_Text[19178]["Text118"]
tNpcGossip[19178]["tOption1-1"] = {1}
tNpcGossip[19178]["Option1"] = tShenpinRefinArea_Text[19178]["Option1"]

-----------------------------------物品配置-----------------------------------
-- 西煌白草
tItem[3008741] = tItem[3008741] or {}
tItem[3008741]["Function"] = function(nItemId,sItemName)
	ShenpinRefinArea_UseItem(nItemId)
end

-- 石料
tItem[3008742] = tItem[3008742] or {}
tItem[3008742]["Function"] = function(nItemId,sItemName)
	ShenpinRefinArea_UseItem(nItemId)
end

-- 五行之轮
tItem[3008743] = tItem[3008743] or {}
tItem[3008743]["Function"] = function(nItemId,sItemName)
	ShenpinRefinArea_UseItem(nItemId)
end

-- 土之力
tItem[3008745] = tItem[3008745] or {}
tItem[3008745]["Function"] = function(nItemId,sItemName)
	ShenpinRefinArea_UseItem(nItemId)
end

-- 岩浆之花
tItem[3008747] = tItem[3008747] or {}
tItem[3008747]["Function"] = function(nItemId,sItemName)
	ShenpinRefinArea_UseItem(nItemId)
end

-- 星陨矿石
tItem[3008748] = tItem[3008748] or {}
tItem[3008748]["Function"] = function(nItemId,sItemName)
	ShenpinRefinArea_UseItem(nItemId)
end

-- 神锤
tItem[3008750] = tItem[3008750] or {}
tItem[3008750]["Function"] = function(nItemId,sItemName)
	ShenpinRefinArea_UseItem(nItemId)
end

-- 漆黑的金属块
tItem[3008751] = tItem[3008751] or {}
tItem[3008751]["Function"] = function(nItemId,sItemName)
	ShenpinRefinArea_UseItem(nItemId)
end

-- 残缺的铭文
tItem[3008752] = tItem[3008752] or {}
tItem[3008752]["Function"] = function(nItemId,sItemName)
	ShenpinRefinArea_UseItem(nItemId)
end

--------------------------------------陷阱配置-------------------------------------------
tTrap[1416] = tTrap[1416] or {}
tTrap[1416]["Function"] = function(nTrapId,nTrapType)
	ShenpinRefinArea_SprinkleWine(nTrapId,nTrapType)
end

tTrap[1419] = tTrap[1419] or {}
tTrap[1419]["Function"] = function(nTrapId,nTrapType)
	ShenpinRefinArea_FindWay(3631,"Delivery",0)
end

tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,ShenpinRefinArea_Online)