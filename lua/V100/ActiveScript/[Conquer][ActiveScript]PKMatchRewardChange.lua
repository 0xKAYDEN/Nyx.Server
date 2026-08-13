------------------------------------------------------------------------------------
--Name：       190821[英文征服][活动脚本]各类PK赛名次及奖励优化（9.03-长期）
--Creator:     吴燕柚
--Created:     2019/08/21
------------------------------------------------------------------------------------
--任务需求：

--命名规范 PKMatchRewardChange

--lua.ini 41461
--log id 12001576
--
--新做可交易物品 参照ID
--赠品黄色神纹精粹*50包 3321941
--赠品黄色神纹精粹*30包 
--赠品黄色神纹精粹*20包 
--赠品黄色神纹精粹*10包 
--
--人参果*5包 3320988
--人参果*3包 
--人参果*2包 
--人参果*1包 
--
--+3赤炼石（赠）*2 3305385
--
--P7武器神魂可选包 3004247 

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------

local tPKMatchRewardChange_Reward = {}
	-- ===50黄色神纹精粹包
	-- ===索引: tPKMatchRewardChange_Reward[3313563]
	-- ===删除: 3313563, 1
	-- ===LogStep: 1[1]
	tPKMatchRewardChange_Reward[3313563] = {}
	tPKMatchRewardChange_Reward[3313563]["LogId"] = 12001576
	tPKMatchRewardChange_Reward[3313563]["LogStep"] = "1[1]"
	tPKMatchRewardChange_Reward[3313563]["DeleteItem"] = {}
	tPKMatchRewardChange_Reward[3313563]["DeleteItem"][1] = {}
	tPKMatchRewardChange_Reward[3313563]["DeleteItem"][1]["Id"] = 3313563 -- 【库】 3313563 【库里没有该物品】[属性:]
	tPKMatchRewardChange_Reward[3313563]["RewardItem"] = {}
	tPKMatchRewardChange_Reward[3313563]["RewardItem"][1] = {}
	tPKMatchRewardChange_Reward[3313563]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹*50（赠）
	tPKMatchRewardChange_Reward[3313563]["RewardItem"][1]["Attr"] = "0 50 3" -- YellowRuneEssence（赠）*50
	tPKMatchRewardChange_Reward[3313563]["RewardEffect"] = {}
	tPKMatchRewardChange_Reward[3313563]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPKMatchRewardChange_Reward[3313563]["RewardEffect"]["Effect"] = "angelwing"


	tPKMatchRewardChange_Reward[3313564] = {}
	-- ===30黄色神纹精粹包
	-- ===索引: tPKMatchRewardChange_Reward[3313564]
	-- ===删除: 3313564, 1
	-- ===LogStep: 1[1]
	tPKMatchRewardChange_Reward[3313564]["LogId"] = 12001576
	tPKMatchRewardChange_Reward[3313564]["LogStep"] = "1[1]"
	tPKMatchRewardChange_Reward[3313564]["DeleteItem"] = {}
	tPKMatchRewardChange_Reward[3313564]["DeleteItem"][1] = {}
	tPKMatchRewardChange_Reward[3313564]["DeleteItem"][1]["Id"] = 3313564 -- 【库】 3313564 【库里没有该物品】[属性:]
	tPKMatchRewardChange_Reward[3313564]["RewardItem"] = {}
	tPKMatchRewardChange_Reward[3313564]["RewardItem"][1] = {}
	tPKMatchRewardChange_Reward[3313564]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹*30（赠）
	tPKMatchRewardChange_Reward[3313564]["RewardItem"][1]["Attr"] = "0 30 3" -- YellowRuneEssence（赠）*30
	tPKMatchRewardChange_Reward[3313564]["RewardEffect"] = {}
	tPKMatchRewardChange_Reward[3313564]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPKMatchRewardChange_Reward[3313564]["RewardEffect"]["Effect"] = "angelwing"


	tPKMatchRewardChange_Reward[3313565] = {}
	-- ===20黄色神纹精粹包
	-- ===索引: tPKMatchRewardChange_Reward[3313565]
	-- ===删除: 3313565, 1
	-- ===LogStep: 1[1]
	tPKMatchRewardChange_Reward[3313565]["LogId"] = 12001576
	tPKMatchRewardChange_Reward[3313565]["LogStep"] = "1[1]"
	tPKMatchRewardChange_Reward[3313565]["DeleteItem"] = {}
	tPKMatchRewardChange_Reward[3313565]["DeleteItem"][1] = {}
	tPKMatchRewardChange_Reward[3313565]["DeleteItem"][1]["Id"] = 3313565 -- 【库】 3313565 【库里没有该物品】[属性:]
	tPKMatchRewardChange_Reward[3313565]["RewardItem"] = {}
	tPKMatchRewardChange_Reward[3313565]["RewardItem"][1] = {}
	tPKMatchRewardChange_Reward[3313565]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹*20（赠）
	tPKMatchRewardChange_Reward[3313565]["RewardItem"][1]["Attr"] = "0 20 3" -- YellowRuneEssence（赠）*20
	tPKMatchRewardChange_Reward[3313565]["RewardEffect"] = {}
	tPKMatchRewardChange_Reward[3313565]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPKMatchRewardChange_Reward[3313565]["RewardEffect"]["Effect"] = "angelwing"


	tPKMatchRewardChange_Reward[3313566] = {}
	-- ===10黄色神纹精粹包
	-- ===索引: tPKMatchRewardChange_Reward[3313566]
	-- ===删除: 3313566, 1
	-- ===LogStep: 1[1]
	tPKMatchRewardChange_Reward[3313566]["LogId"] = 12001576
	tPKMatchRewardChange_Reward[3313566]["LogStep"] = "1[1]"
	tPKMatchRewardChange_Reward[3313566]["DeleteItem"] = {}
	tPKMatchRewardChange_Reward[3313566]["DeleteItem"][1] = {}
	tPKMatchRewardChange_Reward[3313566]["DeleteItem"][1]["Id"] = 3313566 -- 【库】 3313566 【库里没有该物品】[属性:]
	tPKMatchRewardChange_Reward[3313566]["RewardItem"] = {}
	tPKMatchRewardChange_Reward[3313566]["RewardItem"][1] = {}
	tPKMatchRewardChange_Reward[3313566]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹*10（赠）
	tPKMatchRewardChange_Reward[3313566]["RewardItem"][1]["Attr"] = "0 10 3" -- YellowRuneEssence（赠）*10
	tPKMatchRewardChange_Reward[3313566]["RewardEffect"] = {}
	tPKMatchRewardChange_Reward[3313566]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPKMatchRewardChange_Reward[3313566]["RewardEffect"]["Effect"] = "angelwing"


	tPKMatchRewardChange_Reward[3313567] = {}
	-- ===5颗人参果礼包
	-- ===索引: tPKMatchRewardChange_Reward[3313567]
	-- ===删除: 3313567, 1
	-- ===LogStep: 1[1]
	tPKMatchRewardChange_Reward[3313567]["LogId"] = 12001576
	tPKMatchRewardChange_Reward[3313567]["LogStep"] = "1[1]"
	tPKMatchRewardChange_Reward[3313567]["DeleteItem"] = {}
	tPKMatchRewardChange_Reward[3313567]["DeleteItem"][1] = {}
	tPKMatchRewardChange_Reward[3313567]["DeleteItem"][1]["Id"] = 3313567 -- 【库】 3313567 【库里没有该物品】[属性:]
	tPKMatchRewardChange_Reward[3313567]["RewardItem"] = {}
	tPKMatchRewardChange_Reward[3313567]["RewardItem"][1] = {}
	tPKMatchRewardChange_Reward[3313567]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:99][金币:0], 【表格】人参果*5
	tPKMatchRewardChange_Reward[3313567]["RewardItem"][1]["Attr"] = "0 5" -- GinsengFruit*5
	tPKMatchRewardChange_Reward[3313567]["RewardEffect"] = {}
	tPKMatchRewardChange_Reward[3313567]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPKMatchRewardChange_Reward[3313567]["RewardEffect"]["Effect"] = "angelwing"


	tPKMatchRewardChange_Reward[3313568] = {}
	-- ===3颗人参果礼包
	-- ===索引: tPKMatchRewardChange_Reward[3313568]
	-- ===删除: 3313568, 1
	-- ===LogStep: 1[1]
	tPKMatchRewardChange_Reward[3313568]["LogId"] = 12001576
	tPKMatchRewardChange_Reward[3313568]["LogStep"] = "1[1]"
	tPKMatchRewardChange_Reward[3313568]["DeleteItem"] = {}
	tPKMatchRewardChange_Reward[3313568]["DeleteItem"][1] = {}
	tPKMatchRewardChange_Reward[3313568]["DeleteItem"][1]["Id"] = 3313568 -- 【库】 3313568 【库里没有该物品】[属性:]
	tPKMatchRewardChange_Reward[3313568]["RewardItem"] = {}
	tPKMatchRewardChange_Reward[3313568]["RewardItem"][1] = {}
	tPKMatchRewardChange_Reward[3313568]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:99][金币:0], 【表格】人参果*3
	tPKMatchRewardChange_Reward[3313568]["RewardItem"][1]["Attr"] = "0 3" -- GinsengFruit*3
	tPKMatchRewardChange_Reward[3313568]["RewardEffect"] = {}
	tPKMatchRewardChange_Reward[3313568]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPKMatchRewardChange_Reward[3313568]["RewardEffect"]["Effect"] = "angelwing"


	tPKMatchRewardChange_Reward[3313569] = {}
	-- ===2颗人参果礼包
	-- ===索引: tPKMatchRewardChange_Reward[3313569]
	-- ===删除: 3313569, 1
	-- ===LogStep: 1[1]
	tPKMatchRewardChange_Reward[3313569]["LogId"] = 12001576
	tPKMatchRewardChange_Reward[3313569]["LogStep"] = "1[1]"
	tPKMatchRewardChange_Reward[3313569]["DeleteItem"] = {}
	tPKMatchRewardChange_Reward[3313569]["DeleteItem"][1] = {}
	tPKMatchRewardChange_Reward[3313569]["DeleteItem"][1]["Id"] = 3313569 -- 【库】 3313569 【库里没有该物品】[属性:]
	tPKMatchRewardChange_Reward[3313569]["RewardItem"] = {}
	tPKMatchRewardChange_Reward[3313569]["RewardItem"][1] = {}
	tPKMatchRewardChange_Reward[3313569]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:99][金币:0], 【表格】人参果*2
	tPKMatchRewardChange_Reward[3313569]["RewardItem"][1]["Attr"] = "0 2" -- GinsengFruit*2
	tPKMatchRewardChange_Reward[3313569]["RewardEffect"] = {}
	tPKMatchRewardChange_Reward[3313569]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPKMatchRewardChange_Reward[3313569]["RewardEffect"]["Effect"] = "angelwing"


	tPKMatchRewardChange_Reward[3313570] = {}
	-- ===1颗人参果礼包
	-- ===索引: tPKMatchRewardChange_Reward[3313570]
	-- ===删除: 3313570, 1
	-- ===LogStep: 1[1]
	tPKMatchRewardChange_Reward[3313570]["LogId"] = 12001576
	tPKMatchRewardChange_Reward[3313570]["LogStep"] = "1[1]"
	tPKMatchRewardChange_Reward[3313570]["DeleteItem"] = {}
	tPKMatchRewardChange_Reward[3313570]["DeleteItem"][1] = {}
	tPKMatchRewardChange_Reward[3313570]["DeleteItem"][1]["Id"] = 3313570 -- 【库】 3313570 【库里没有该物品】[属性:]
	tPKMatchRewardChange_Reward[3313570]["RewardItem"] = {}
	tPKMatchRewardChange_Reward[3313570]["RewardItem"][1] = {}
	tPKMatchRewardChange_Reward[3313570]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:99][金币:0], 【表格】人参果*1
	tPKMatchRewardChange_Reward[3313570]["RewardItem"][1]["Attr"] = "0 1" -- GinsengFruit*1
	tPKMatchRewardChange_Reward[3313570]["RewardEffect"] = {}
	tPKMatchRewardChange_Reward[3313570]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPKMatchRewardChange_Reward[3313570]["RewardEffect"]["Effect"] = "angelwing"


	tPKMatchRewardChange_Reward[3313571] = {}
	-- ===赤炼石赠+3*2礼包
	-- ===索引: tPKMatchRewardChange_Reward[3313571]
	-- ===删除: 3313571, 1
	-- ===LogStep: 1[1]
	tPKMatchRewardChange_Reward[3313571]["LogId"] = 12001576
	tPKMatchRewardChange_Reward[3313571]["LogStep"] = "1[1]"
	tPKMatchRewardChange_Reward[3313571]["DeleteItem"] = {}
	tPKMatchRewardChange_Reward[3313571]["DeleteItem"][1] = {}
	tPKMatchRewardChange_Reward[3313571]["DeleteItem"][1]["Id"] = 3313571 -- 【库】 3313571 【库里没有该物品】[属性:]
	tPKMatchRewardChange_Reward[3313571]["RewardItem"] = {}
	tPKMatchRewardChange_Reward[3313571]["RewardItem"][1] = {}
	tPKMatchRewardChange_Reward[3313571]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:10000][金币:0], 【表格】赤炼石+3*2
	tPKMatchRewardChange_Reward[3313571]["RewardItem"][1]["Attr"] = "0 2 3" -- +3Stone（赠）*2
	tPKMatchRewardChange_Reward[3313571]["RewardEffect"] = {}
	tPKMatchRewardChange_Reward[3313571]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPKMatchRewardChange_Reward[3313571]["RewardEffect"]["Effect"] = "angelwing"


	tPKMatchRewardChange_Reward[3313572] = {}
	-- ===赠+3赤炼石包
	-- ===索引: tPKMatchRewardChange_Reward[3313572]
	-- ===删除: 3313572, 1
	-- ===LogStep: 1[1]
	tPKMatchRewardChange_Reward[3313572]["LogId"] = 12001576
	tPKMatchRewardChange_Reward[3313572]["LogStep"] = "1[1]"
	tPKMatchRewardChange_Reward[3313572]["DeleteItem"] = {}
	tPKMatchRewardChange_Reward[3313572]["DeleteItem"][1] = {}
	tPKMatchRewardChange_Reward[3313572]["DeleteItem"][1]["Id"] = 3313572 -- 【库】 3313572 【库里没有该物品】[属性:]
	tPKMatchRewardChange_Reward[3313572]["RewardItem"] = {}
	tPKMatchRewardChange_Reward[3313572]["RewardItem"][1] = {}
	tPKMatchRewardChange_Reward[3313572]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:10000][金币:0], 【表格】赤炼石+3*1
	tPKMatchRewardChange_Reward[3313572]["RewardItem"][1]["Attr"] = "0 1 3" -- +3Stone（赠）*1
	tPKMatchRewardChange_Reward[3313572]["RewardEffect"] = {}
	tPKMatchRewardChange_Reward[3313572]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPKMatchRewardChange_Reward[3313572]["RewardEffect"]["Effect"] = "angelwing"

	tPKMatchRewardChange_Reward[3313573] = {}
	-- ===赠+2赤炼石*2包
	-- ===索引: tPKMatchRewardChange_Reward[3313572]
	-- ===删除: 3313572, 1
	-- ===LogStep: 1[1]
	tPKMatchRewardChange_Reward[3313573]["LogId"] = 12001576
	tPKMatchRewardChange_Reward[3313573]["LogStep"] = "1[1]"
	tPKMatchRewardChange_Reward[3313573]["DeleteItem"] = {}
	tPKMatchRewardChange_Reward[3313573]["DeleteItem"][1] = {}
	tPKMatchRewardChange_Reward[3313573]["DeleteItem"][1]["Id"] = 3313573 -- 【库】 3313573 【库里没有该物品】[属性:]
	tPKMatchRewardChange_Reward[3313573]["RewardItem"] = {}
	tPKMatchRewardChange_Reward[3313573]["RewardItem"][1] = {}
	tPKMatchRewardChange_Reward[3313573]["RewardItem"][1]["Id"] = 730002 -- +2Stone[730002][属性:0][叠加:10000][金币:0], 【表格】赤炼石+2*2
	tPKMatchRewardChange_Reward[3313573]["RewardItem"][1]["Attr"] = "0 2 3" -- +2Stone（赠）*2
	tPKMatchRewardChange_Reward[3313573]["RewardEffect"] = {}
	tPKMatchRewardChange_Reward[3313573]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
    tPKMatchRewardChange_Reward[3313573]["RewardEffect"]["Effect"] = "angelwing"
    
    tPKMatchRewardChange_Reward[3313574] = {}
	-- ===赠+2赤炼石包
	-- ===索引: tPKMatchRewardChange_Reward[3313572]
	-- ===删除: 3313572, 1
	-- ===LogStep: 1[1]
	tPKMatchRewardChange_Reward[3313574]["LogId"] = 12001576
	tPKMatchRewardChange_Reward[3313574]["LogStep"] = "1[1]"
	tPKMatchRewardChange_Reward[3313574]["DeleteItem"] = {}
	tPKMatchRewardChange_Reward[3313574]["DeleteItem"][1] = {}
	tPKMatchRewardChange_Reward[3313574]["DeleteItem"][1]["Id"] = 3313574 -- 【库】 3313574 【库里没有该物品】[属性:]
	tPKMatchRewardChange_Reward[3313574]["RewardItem"] = {}
	tPKMatchRewardChange_Reward[3313574]["RewardItem"][1] = {}
	tPKMatchRewardChange_Reward[3313574]["RewardItem"][1]["Id"] = 730002 -- +2Stone[730002][属性:0][叠加:10000][金币:0], 【表格】赤炼石+2*1
	tPKMatchRewardChange_Reward[3313574]["RewardItem"][1]["Attr"] = "0 1 3" -- +2Stone（赠）*1
	tPKMatchRewardChange_Reward[3313574]["RewardEffect"] = {}
	tPKMatchRewardChange_Reward[3313574]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPKMatchRewardChange_Reward[3313574]["RewardEffect"]["Effect"] = "angelwing"

----------------------------------逻辑部分---------------------------------------------










----------------------------------NPC部分---------------------------------------------

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3313563] = tItem[3313563] or {}
tItem[3313563]["Function"] = function(nItemId,sItemName)
    local nUserId = Get_UserId()
    local tReward = CommonFunc_Copy(tPKMatchRewardChange_Reward[nItemId])

    RewardTemplate_UseItemAndMsg(tReward, nUserId)

end
tItem[3313564] = tItem[3313563] or {}
tItem[3313565] = tItem[3313563] or {}
tItem[3313566] = tItem[3313563] or {}
tItem[3313567] = tItem[3313563] or {}
tItem[3313568] = tItem[3313563] or {}
tItem[3313569] = tItem[3313563] or {}
tItem[3313570] = tItem[3313563] or {}
tItem[3313571] = tItem[3313563] or {}
tItem[3313572] = tItem[3313563] or {}
tItem[3313573] = tItem[3313563] or {}
tItem[3313574] = tItem[3313563] or {}