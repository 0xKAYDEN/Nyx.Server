------------------------------------------------------------------------------------
--Name：            171209[英文征服][活动脚本]四大PK赛奖励优化制作
--Creator:      王贤
--Created:     2017/12/09
------------------------------------------------------------------------------------
-- 前缀： DuelRewardModify_
-- LogId: 12000955
------------------------------------------------------------------------------------
--任务需求：

-- 请安排英文征服四大PK赛的奖励优化制作，具体需求在附件中，如有问题，请及时沟通，谢谢！

-- 计划更新时间：2018年1月18日

-- 奖励优化长期有效

------------------------------------------------------------------------------------
local tDuelRewardModify_Reward = {}
-- 卓越通神丹礼包
tDuelRewardModify_Reward[3307206] = {}
tDuelRewardModify_Reward[3307206]["DeleteItem"] = {}
tDuelRewardModify_Reward[3307206]["DeleteItem"][1] = {}
tDuelRewardModify_Reward[3307206]["DeleteItem"][1]["Id"] = 3307206
tDuelRewardModify_Reward[3307206]["RewardItem"] = {}
tDuelRewardModify_Reward[3307206]["RewardItem"][1] = {}
tDuelRewardModify_Reward[3307206]["RewardItem"][1]["Id"] = 3003125
tDuelRewardModify_Reward[3307206]["RewardItem"][1]["Attr"] = "0 10 3"
tDuelRewardModify_Reward[3307206]["RewardEffect"] = {}
tDuelRewardModify_Reward[3307206]["RewardEffect"]["Effect"] = "angelwing"
tDuelRewardModify_Reward[3307206]["LogId"] = 12000955

-- 豪华通神丹礼包
tDuelRewardModify_Reward[3307207] = {}
tDuelRewardModify_Reward[3307207]["DeleteItem"] = {}
tDuelRewardModify_Reward[3307207]["DeleteItem"][1] = {}
tDuelRewardModify_Reward[3307207]["DeleteItem"][1]["Id"] = 3307207
tDuelRewardModify_Reward[3307207]["RewardItem"] = {}
tDuelRewardModify_Reward[3307207]["RewardItem"][1] = {}
tDuelRewardModify_Reward[3307207]["RewardItem"][1]["Id"] = 3003125
tDuelRewardModify_Reward[3307207]["RewardItem"][1]["Attr"] = "0 20 3"
tDuelRewardModify_Reward[3307207]["RewardEffect"] = {}
tDuelRewardModify_Reward[3307207]["RewardEffect"]["Effect"] = "angelwing"
tDuelRewardModify_Reward[3307207]["LogId"] = 12000955

-- 梦幻通神丹礼包
tDuelRewardModify_Reward[3307208] = {}
tDuelRewardModify_Reward[3307208]["DeleteItem"] = {}
tDuelRewardModify_Reward[3307208]["DeleteItem"][1] = {}
tDuelRewardModify_Reward[3307208]["DeleteItem"][1]["Id"] = 3307208
tDuelRewardModify_Reward[3307208]["RewardItem"] = {}
tDuelRewardModify_Reward[3307208]["RewardItem"][1] = {}
tDuelRewardModify_Reward[3307208]["RewardItem"][1]["Id"] = 3003125
tDuelRewardModify_Reward[3307208]["RewardItem"][1]["Attr"] = "0 5 3"
tDuelRewardModify_Reward[3307208]["RewardEffect"] = {}
tDuelRewardModify_Reward[3307208]["RewardEffect"]["Effect"] = "angelwing"
tDuelRewardModify_Reward[3307208]["LogId"] = 12000955

-- 微光星陨石中级包
tDuelRewardModify_Reward[3306978] = {}
tDuelRewardModify_Reward[3306978]["DeleteItem"] = {}
tDuelRewardModify_Reward[3306978]["DeleteItem"][1] = {}
tDuelRewardModify_Reward[3306978]["DeleteItem"][1]["Id"] = 3306978
tDuelRewardModify_Reward[3306978]["RewardItem"] = {}
tDuelRewardModify_Reward[3306978]["RewardItem"][1] = {}
tDuelRewardModify_Reward[3306978]["RewardItem"][1]["Id"] = 3009000
tDuelRewardModify_Reward[3306978]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
tDuelRewardModify_Reward[3306978]["LogId"] = 12000955
-- 微光星陨石高级包
tDuelRewardModify_Reward[3306979] = {}
tDuelRewardModify_Reward[3306979]["DeleteItem"] = {}
tDuelRewardModify_Reward[3306979]["DeleteItem"][1] = {}
tDuelRewardModify_Reward[3306979]["DeleteItem"][1]["Id"] = 3306979
tDuelRewardModify_Reward[3306979]["RewardItem"] = {}
tDuelRewardModify_Reward[3306979]["RewardItem"][1] = {}
tDuelRewardModify_Reward[3306979]["RewardItem"][1]["Id"] = 3009000
tDuelRewardModify_Reward[3306979]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
tDuelRewardModify_Reward[3306979]["LogId"] = 12000955
-- 明亮星陨石中级包
tDuelRewardModify_Reward[3306980] = {}
tDuelRewardModify_Reward[3306980]["DeleteItem"] = {}
tDuelRewardModify_Reward[3306980]["DeleteItem"][1] = {}
tDuelRewardModify_Reward[3306980]["DeleteItem"][1]["Id"] = 3306980
tDuelRewardModify_Reward[3306980]["RewardItem"] = {}
tDuelRewardModify_Reward[3306980]["RewardItem"][1] = {}
tDuelRewardModify_Reward[3306980]["RewardItem"][1]["Id"] = 3009001
tDuelRewardModify_Reward[3306980]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
tDuelRewardModify_Reward[3306980]["LogId"] = 12000955
-- 明亮星陨石高级包
tDuelRewardModify_Reward[3306981] = {}
tDuelRewardModify_Reward[3306981]["DeleteItem"] = {}
tDuelRewardModify_Reward[3306981]["DeleteItem"][1] = {}
tDuelRewardModify_Reward[3306981]["DeleteItem"][1]["Id"] = 3306981
tDuelRewardModify_Reward[3306981]["RewardItem"] = {}
tDuelRewardModify_Reward[3306981]["RewardItem"][1] = {}
tDuelRewardModify_Reward[3306981]["RewardItem"][1]["Id"] = 3009001
tDuelRewardModify_Reward[3306981]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
tDuelRewardModify_Reward[3306981]["LogId"] = 12000955

-- 2BrightStarStonesPack
tDuelRewardModify_Reward[3307746] = {}
tDuelRewardModify_Reward[3307746]["DeleteItem"] = {}
tDuelRewardModify_Reward[3307746]["DeleteItem"][1] = {}
tDuelRewardModify_Reward[3307746]["DeleteItem"][1]["Id"] = 3307746
tDuelRewardModify_Reward[3307746]["RewardItem"] = {}
tDuelRewardModify_Reward[3307746]["RewardItem"][1] = {}
tDuelRewardModify_Reward[3307746]["RewardItem"][1]["Id"] = 3009001
tDuelRewardModify_Reward[3307746]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
tDuelRewardModify_Reward[3307746]["LogId"] = 12000955
-- 3BrightStarStonesPack
tDuelRewardModify_Reward[3307747] = {}
tDuelRewardModify_Reward[3307747]["DeleteItem"] = {}
tDuelRewardModify_Reward[3307747]["DeleteItem"][1] = {}
tDuelRewardModify_Reward[3307747]["DeleteItem"][1]["Id"] = 3307747
tDuelRewardModify_Reward[3307747]["RewardItem"] = {}
tDuelRewardModify_Reward[3307747]["RewardItem"][1] = {}
tDuelRewardModify_Reward[3307747]["RewardItem"][1]["Id"] = 3009001
tDuelRewardModify_Reward[3307747]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
tDuelRewardModify_Reward[3307747]["LogId"] = 12000955
-- 4BrightStarStonesPack
tDuelRewardModify_Reward[3307748] = {}
tDuelRewardModify_Reward[3307748]["DeleteItem"] = {}
tDuelRewardModify_Reward[3307748]["DeleteItem"][1] = {}
tDuelRewardModify_Reward[3307748]["DeleteItem"][1]["Id"] = 3307748
tDuelRewardModify_Reward[3307748]["RewardItem"] = {}
tDuelRewardModify_Reward[3307748]["RewardItem"][1] = {}
tDuelRewardModify_Reward[3307748]["RewardItem"][1]["Id"] = 3009001
tDuelRewardModify_Reward[3307748]["RewardItem"][1]["Attr"] = "0 4 0 2880 1"
tDuelRewardModify_Reward[3307748]["LogId"] = 12000955
-- 5BrightStarStonesPack
tDuelRewardModify_Reward[3307749] = {}
tDuelRewardModify_Reward[3307749]["DeleteItem"] = {}
tDuelRewardModify_Reward[3307749]["DeleteItem"][1] = {}
tDuelRewardModify_Reward[3307749]["DeleteItem"][1]["Id"] = 3307749
tDuelRewardModify_Reward[3307749]["RewardItem"] = {}
tDuelRewardModify_Reward[3307749]["RewardItem"][1] = {}
tDuelRewardModify_Reward[3307749]["RewardItem"][1]["Id"] = 3009001
tDuelRewardModify_Reward[3307749]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
tDuelRewardModify_Reward[3307749]["LogId"] = 12000955


-- 极品淬炼礼包
tDuelRewardModify_Reward[3306997] = {}
-- [弓][物理暴击]道具
tDuelRewardModify_Reward[3306997][1] = {}
tDuelRewardModify_Reward[3306997][1]["DeleteItem"] = {}
tDuelRewardModify_Reward[3306997][1]["DeleteItem"][1] = {}
tDuelRewardModify_Reward[3306997][1]["DeleteItem"][1]["Id"] = 3306997
tDuelRewardModify_Reward[3306997][1]["RewardItem"] = {}
tDuelRewardModify_Reward[3306997][1]["RewardItem"][1] = {}
tDuelRewardModify_Reward[3306997][1]["RewardItem"][1]["Id"] = 724404  -- CriticalStrike(Super)Material
tDuelRewardModify_Reward[3306997][1]["RewardItem"][1]["Attr"] = "0 1"
tDuelRewardModify_Reward[3306997][1]["LogId"] = 12000955
-- [短武][物理暴击]道具
tDuelRewardModify_Reward[3306997][2] = {}
tDuelRewardModify_Reward[3306997][2]["DeleteItem"] = {}
tDuelRewardModify_Reward[3306997][2]["DeleteItem"][1] = {}
tDuelRewardModify_Reward[3306997][2]["DeleteItem"][1]["Id"] = 3306997
tDuelRewardModify_Reward[3306997][2]["RewardItem"] = {}
tDuelRewardModify_Reward[3306997][2]["RewardItem"][1] = {}
tDuelRewardModify_Reward[3306997][2]["RewardItem"][1]["Id"] = 724409  -- CriticalStrike(Super)Material
tDuelRewardModify_Reward[3306997][2]["RewardItem"][1]["Attr"] = "0 1"
tDuelRewardModify_Reward[3306997][2]["LogId"] = 12000955
-- [长武][物理暴击]道具
tDuelRewardModify_Reward[3306997][3] = {}
tDuelRewardModify_Reward[3306997][3]["DeleteItem"] = {}
tDuelRewardModify_Reward[3306997][3]["DeleteItem"][1] = {}
tDuelRewardModify_Reward[3306997][3]["DeleteItem"][1]["Id"] = 3306997
tDuelRewardModify_Reward[3306997][3]["RewardItem"] = {}
tDuelRewardModify_Reward[3306997][3]["RewardItem"][1] = {}
tDuelRewardModify_Reward[3306997][3]["RewardItem"][1]["Id"] = 724414  -- CriticalStrike(Super)Material
tDuelRewardModify_Reward[3306997][3]["RewardItem"][1]["Attr"] = "0 1"
tDuelRewardModify_Reward[3306997][3]["LogId"] = 12000955
-- [戒指][物理暴击]道具
tDuelRewardModify_Reward[3306997][4] = {}
tDuelRewardModify_Reward[3306997][4]["DeleteItem"] = {}
tDuelRewardModify_Reward[3306997][4]["DeleteItem"][1] = {}
tDuelRewardModify_Reward[3306997][4]["DeleteItem"][1]["Id"] = 3306997
tDuelRewardModify_Reward[3306997][4]["RewardItem"] = {}
tDuelRewardModify_Reward[3306997][4]["RewardItem"][1] = {}
tDuelRewardModify_Reward[3306997][4]["RewardItem"][1]["Id"] = 724419  -- CriticalStrike(Super)Material
tDuelRewardModify_Reward[3306997][4]["RewardItem"][1]["Attr"] = "0 1"
tDuelRewardModify_Reward[3306997][4]["LogId"] = 12000955
-- [法剑][法术暴击]道具
tDuelRewardModify_Reward[3306997][5] = {}
tDuelRewardModify_Reward[3306997][5]["DeleteItem"] = {}
tDuelRewardModify_Reward[3306997][5]["DeleteItem"][1] = {}
tDuelRewardModify_Reward[3306997][5]["DeleteItem"][1]["Id"] = 3306997
tDuelRewardModify_Reward[3306997][5]["RewardItem"] = {}
tDuelRewardModify_Reward[3306997][5]["RewardItem"][1] = {}
tDuelRewardModify_Reward[3306997][5]["RewardItem"][1]["Id"] = 724424  -- SkillC.Strike(Super)Material
tDuelRewardModify_Reward[3306997][5]["RewardItem"][1]["Attr"] = "0 1"
tDuelRewardModify_Reward[3306997][5]["LogId"] = 12000955
-- [手镯][法术暴击]道具
tDuelRewardModify_Reward[3306997][6] = {}
tDuelRewardModify_Reward[3306997][6]["DeleteItem"] = {}
tDuelRewardModify_Reward[3306997][6]["DeleteItem"][1] = {}
tDuelRewardModify_Reward[3306997][6]["DeleteItem"][1]["Id"] = 3306997
tDuelRewardModify_Reward[3306997][6]["RewardItem"] = {}
tDuelRewardModify_Reward[3306997][6]["RewardItem"][1] = {}
tDuelRewardModify_Reward[3306997][6]["RewardItem"][1]["Id"] = 724429  -- SkillC.Strike(Super)Material
tDuelRewardModify_Reward[3306997][6]["RewardItem"][1]["Attr"] = "0 1"
tDuelRewardModify_Reward[3306997][6]["LogId"] = 12000955
-- [衣甲][暴击抵抗]道具
tDuelRewardModify_Reward[3306997][7] = {}
tDuelRewardModify_Reward[3306997][7]["DeleteItem"] = {}
tDuelRewardModify_Reward[3306997][7]["DeleteItem"][1] = {}
tDuelRewardModify_Reward[3306997][7]["DeleteItem"][1]["Id"] = 3306997
tDuelRewardModify_Reward[3306997][7]["RewardItem"] = {}
tDuelRewardModify_Reward[3306997][7]["RewardItem"][1] = {}
tDuelRewardModify_Reward[3306997][7]["RewardItem"][1]["Id"] = 724434  -- Immunity(Super)Material
tDuelRewardModify_Reward[3306997][7]["RewardItem"][1]["Attr"] = "0 1"
tDuelRewardModify_Reward[3306997][7]["LogId"] = 12000955
-- [鞋子][暴击抵抗]道具
tDuelRewardModify_Reward[3306997][8] = {}
tDuelRewardModify_Reward[3306997][8]["DeleteItem"] = {}
tDuelRewardModify_Reward[3306997][8]["DeleteItem"][1] = {}
tDuelRewardModify_Reward[3306997][8]["DeleteItem"][1]["Id"] = 3306997
tDuelRewardModify_Reward[3306997][8]["RewardItem"] = {}
tDuelRewardModify_Reward[3306997][8]["RewardItem"][1] = {}
tDuelRewardModify_Reward[3306997][8]["RewardItem"][1]["Id"] = 724439  -- Immunity(Super)Material
tDuelRewardModify_Reward[3306997][8]["RewardItem"][1]["Attr"] = "0 1"
tDuelRewardModify_Reward[3306997][8]["LogId"] = 12000955
-- [头部][生命增效]道具
tDuelRewardModify_Reward[3306997][9] = {}
tDuelRewardModify_Reward[3306997][9]["DeleteItem"] = {}
tDuelRewardModify_Reward[3306997][9]["DeleteItem"][1] = {}
tDuelRewardModify_Reward[3306997][9]["DeleteItem"][1]["Id"] = 3306997
tDuelRewardModify_Reward[3306997][9]["RewardItem"] = {}
tDuelRewardModify_Reward[3306997][9]["RewardItem"][1] = {}
tDuelRewardModify_Reward[3306997][9]["RewardItem"][1]["Id"] = 724444  -- Intensification(Super)Material
tDuelRewardModify_Reward[3306997][9]["RewardItem"][1]["Attr"] = "0 1"
tDuelRewardModify_Reward[3306997][9]["LogId"] = 12000955
-- [项链][坚固防御]道具
tDuelRewardModify_Reward[3306997][10] = {}
tDuelRewardModify_Reward[3306997][10]["DeleteItem"] = {}
tDuelRewardModify_Reward[3306997][10]["DeleteItem"][1] = {}
tDuelRewardModify_Reward[3306997][10]["DeleteItem"][1]["Id"] = 3306997
tDuelRewardModify_Reward[3306997][10]["RewardItem"] = {}
tDuelRewardModify_Reward[3306997][10]["RewardItem"][1] = {}
tDuelRewardModify_Reward[3306997][10]["RewardItem"][1]["Id"] = 724482  -- Counteraction(Super)Material
tDuelRewardModify_Reward[3306997][10]["RewardItem"][1]["Attr"] = "0 1"
tDuelRewardModify_Reward[3306997][10]["LogId"] = 12000955
-- [盾牌][盾牌格挡]道具
tDuelRewardModify_Reward[3306997][11] = {}
tDuelRewardModify_Reward[3306997][11]["DeleteItem"] = {}
tDuelRewardModify_Reward[3306997][11]["DeleteItem"][1] = {}
tDuelRewardModify_Reward[3306997][11]["DeleteItem"][1]["Id"] = 3306997
tDuelRewardModify_Reward[3306997][11]["RewardItem"] = {}
tDuelRewardModify_Reward[3306997][11]["RewardItem"][1] = {}
tDuelRewardModify_Reward[3306997][11]["RewardItem"][1]["Id"] = 724362  -- Block(Super)Material
tDuelRewardModify_Reward[3306997][11]["RewardItem"][1]["Attr"] = "0 1"
tDuelRewardModify_Reward[3306997][11]["LogId"] = 12000955
-- [香囊][坚固防御]道具
tDuelRewardModify_Reward[3306997][12] = {}
tDuelRewardModify_Reward[3306997][12]["DeleteItem"] = {}
tDuelRewardModify_Reward[3306997][12]["DeleteItem"][1] = {}
tDuelRewardModify_Reward[3306997][12]["DeleteItem"][1]["Id"] = 3306997
tDuelRewardModify_Reward[3306997][12]["RewardItem"] = {}
tDuelRewardModify_Reward[3306997][12]["RewardItem"][1] = {}
tDuelRewardModify_Reward[3306997][12]["RewardItem"][1]["Id"] = 724372  -- Counteraction(Super)Material
tDuelRewardModify_Reward[3306997][12]["RewardItem"][1]["Attr"] = "0 1"
tDuelRewardModify_Reward[3306997][12]["LogId"] = 12000955
-- [拂尘][生命增效]道具
tDuelRewardModify_Reward[3306997][13] = {}
tDuelRewardModify_Reward[3306997][13]["DeleteItem"] = {}
tDuelRewardModify_Reward[3306997][13]["DeleteItem"][1] = {}
tDuelRewardModify_Reward[3306997][13]["DeleteItem"][1]["Id"] = 3306997
tDuelRewardModify_Reward[3306997][13]["RewardItem"] = {}
tDuelRewardModify_Reward[3306997][13]["RewardItem"][1] = {}
tDuelRewardModify_Reward[3306997][13]["RewardItem"][1]["Id"] = 3006169  -- SuperHossuHair
tDuelRewardModify_Reward[3306997][13]["RewardItem"][1]["Attr"] = "0 1"
tDuelRewardModify_Reward[3306997][13]["LogId"] = 12000955

----------------------------------逻辑部分---------------------------------------------
-- 礼包使用
function DuelRewardModify_UsePackage(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if not RewardTemplate_CheckSpace(tDuelRewardModify_Reward[nItemId]) then
		return
	end
	
	RewardTemplate_UseItem(tDuelRewardModify_Reward[nItemId])
end

-- 淬炼礼包使用
function DuelRewardModify_Refinement(nItemId, nIndex)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if not RewardTemplate_CheckSpace(tDuelRewardModify_Reward[nItemId][nIndex]) then
		return
	end
	
	RewardTemplate_UseItem(tDuelRewardModify_Reward[nItemId][nIndex])
end

---------------------------------物品部分---------------------------------------------
-- 微光星陨石中级包
tItem[3306978] = tItem[3306978] or {}
tItem[3306978]["Function"] = function(nItemId,sItemName)
	DuelRewardModify_UsePackage(nItemId)
end
-- 微光星陨石高级包 明亮星陨石中级包 明亮星陨石高级包
tItem[3306979] = tItem[3306978]
tItem[3306980] = tItem[3306978]
tItem[3306981] = tItem[3306978]
-- 2,3,4,5BrightStarStonesPack
tItem[3307746] = tItem[3306978]
tItem[3307747] = tItem[3306978]
tItem[3307748] = tItem[3306978]
tItem[3307749] = tItem[3306978]

-- 卓越通神丹礼包
tItem[3307206] = tItem[3306978]
-- 豪华通神丹礼包
tItem[3307207] = tItem[3306978]
-- 梦幻通神丹礼包
tItem[3307208] = tItem[3306978]

-- 极品淬炼礼包
tItemFace[3306997] = 976
tItem[3306997] = tItem[3306997] or {}
tItem[3306997]["Text1-1"] = {111}
tItem[3306997]["Text111"] = tDuelRewardModify_Text[3306997]["Text111"]
tItem[3306997]["tOption1-1"] = {111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123}
tItem[3306997]["Option111"] = tDuelRewardModify_Text[3306997]["Option111"]
tItem[3306997]["OptionFunc111"] = "DuelRewardModify_Refinement</N>3306997</N>1"
tItem[3306997]["Option112"] = tDuelRewardModify_Text[3306997]["Option112"]
tItem[3306997]["OptionFunc112"] = "DuelRewardModify_Refinement</N>3306997</N>2"
tItem[3306997]["Option113"] = tDuelRewardModify_Text[3306997]["Option113"]
tItem[3306997]["OptionFunc113"] = "DuelRewardModify_Refinement</N>3306997</N>3"
tItem[3306997]["Option114"] = tDuelRewardModify_Text[3306997]["Option114"]
tItem[3306997]["OptionFunc114"] = "DuelRewardModify_Refinement</N>3306997</N>4"
tItem[3306997]["Option115"] = tDuelRewardModify_Text[3306997]["Option115"]
tItem[3306997]["OptionFunc115"] = "DuelRewardModify_Refinement</N>3306997</N>5"
tItem[3306997]["Option116"] = tDuelRewardModify_Text[3306997]["Option116"]
tItem[3306997]["OptionFunc116"] = "DuelRewardModify_Refinement</N>3306997</N>6"
tItem[3306997]["Option117"] = tDuelRewardModify_Text[3306997]["Option117"]
tItem[3306997]["OptionFunc117"] = "DuelRewardModify_Refinement</N>3306997</N>7"
tItem[3306997]["Option118"] = tDuelRewardModify_Text[3306997]["Option118"]
tItem[3306997]["OptionFunc118"] = "DuelRewardModify_Refinement</N>3306997</N>8"
tItem[3306997]["Option119"] = tDuelRewardModify_Text[3306997]["Option119"]
tItem[3306997]["OptionFunc119"] = "DuelRewardModify_Refinement</N>3306997</N>9"
tItem[3306997]["Option120"] = tDuelRewardModify_Text[3306997]["Option120"]
tItem[3306997]["OptionFunc120"] = "DuelRewardModify_Refinement</N>3306997</N>10"
tItem[3306997]["Option121"] = tDuelRewardModify_Text[3306997]["Option121"]
tItem[3306997]["OptionFunc121"] = "DuelRewardModify_Refinement</N>3306997</N>11"
tItem[3306997]["Option122"] = tDuelRewardModify_Text[3306997]["Option122"]
tItem[3306997]["OptionFunc122"] = "DuelRewardModify_Refinement</N>3306997</N>12"
tItem[3306997]["Option123"] = tDuelRewardModify_Text[3306997]["Option123"]
tItem[3306997]["OptionFunc123"] = "DuelRewardModify_Refinement</N>3306997</N>13"
