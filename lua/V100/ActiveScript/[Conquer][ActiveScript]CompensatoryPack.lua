------------------------------------------------------------------------------------
--Name：            191022[英文征服][活动脚本]服务器被攻击补偿方案-礼包制作发奖（10.31）
--Creator:      林嘉鑫
--Created:     2019-10-22
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
-- 命名前缀 tCompensatoryPack_

-- logId:
-- 12001705

-- EMoneyLog:
-- 1000	1204	0	0	-1000 基础补偿礼包
-- 1000	1204	0	0	-2000 高级补偿礼包
-- 1000	1204	0	0	-3000 顶级补偿礼包

-- stc:
-- 208,50 全服礼包邮件是否已发

----------------------------------表配置部分--------------------------------------------
local tCompensatoryPack_Cont = {}
	tCompensatoryPack_Cont["Level"] = 80
	tCompensatoryPack_Cont["Metempsychosis"] = 1
	tCompensatoryPack_Cont["Mail"] = {}
	tCompensatoryPack_Cont["Mail"]["ActionId"] = 574998
	tCompensatoryPack_Cont["Mail"]["ExistDay"] = 7
	tCompensatoryPack_Cont["Stc"] = {}
	tCompensatoryPack_Cont["Stc"]["Event"] = 208
	tCompensatoryPack_Cont["Stc"]["Data"] = 50
	tCompensatoryPack_Cont["AllPack"] = 3326707

local tCompensatoryPack_Pack = {}
	-- ===基础补偿礼包
	-- ===索引: tCompensatoryPack_Pack[3326707]
	-- ===删除: 3326707,1
	-- ===NewEmoneyLog: 1000,1204
	tCompensatoryPack_Pack[3326707] = {}
	tCompensatoryPack_Pack[3326707]["LogId"] = 12001705
	tCompensatoryPack_Pack[3326707]["DeleteItem"] = {}
	tCompensatoryPack_Pack[3326707]["DeleteItem"][1] = {}
	tCompensatoryPack_Pack[3326707]["DeleteItem"][1]["Id"] = 3326707 -- 【库】FineCompensationPack[属性:9]
	tCompensatoryPack_Pack[3326707]["RewardEMoneyMono"] = {}
	tCompensatoryPack_Pack[3326707]["RewardEMoneyMono"]["Value"] = 1000 -- 赠点, 【需求】1000赠点
	tCompensatoryPack_Pack[3326707]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1204"
	tCompensatoryPack_Pack[3326707]["RewardItem"] = {}
	tCompensatoryPack_Pack[3326707]["RewardItem"][1] = {}
	tCompensatoryPack_Pack[3326707]["RewardItem"][1]["Id"] = 3306365 -- YellowRune(B)SelectionPack[3306365][属性:9][叠加:10000][金币:0], 【表格】普通黄色神纹可选包*3
	tCompensatoryPack_Pack[3326707]["RewardItem"][1]["Attr"] = "0 3" -- YellowRune(B)SelectionPack*3
	tCompensatoryPack_Pack[3326707]["RewardItem"][2] = {}
	tCompensatoryPack_Pack[3326707]["RewardItem"][2]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】赠品黄色神纹精粹*50
	tCompensatoryPack_Pack[3326707]["RewardItem"][2]["Attr"] = "0 50 3" -- YellowRuneEssence（赠）*50
	tCompensatoryPack_Pack[3326707]["RewardItem"][3] = {}
	tCompensatoryPack_Pack[3326707]["RewardItem"][3]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*8
	tCompensatoryPack_Pack[3326707]["RewardItem"][3]["Attr"] = "0 8 0 2880 1" -- 2天时效(激活)的BrightStarStone*8
	tCompensatoryPack_Pack[3326707]["RewardRepairValue"] = {}
	tCompensatoryPack_Pack[3326707]["RewardRepairValue"]["Value"] = 3000 -- 修为值, 【需求】优质神纹源晶赠改为赠修为值3000
	tCompensatoryPack_Pack[3326707]["RewardItem"][4] = {}
	tCompensatoryPack_Pack[3326707]["RewardItem"][4]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*50
	tCompensatoryPack_Pack[3326707]["RewardItem"][4]["Attr"] = "0 50" -- GinsengFruit*50（[错误]物品数量超10个）
	tCompensatoryPack_Pack[3326707]["RewardItem"][5] = {}
	tCompensatoryPack_Pack[3326707]["RewardItem"][5]["Id"] = 195805 -- WolfVow[195805][属性:0][叠加:0][金币:0], 【表格】30天神佑-1四星狼牙誓约
	tCompensatoryPack_Pack[3326707]["RewardItem"][5]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑WolfVow（赠）*1
	tCompensatoryPack_Pack[3326707]["RewardItem"][6] = {}
	tCompensatoryPack_Pack[3326707]["RewardItem"][6]["Id"] = 200590 -- StarRoosterEndlessExplorer[200590][属性:8][叠加:0][金币:0], 【表格】30天神佑-1星际战机无尽探索号
	tCompensatoryPack_Pack[3326707]["RewardItem"][6]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑StarRoosterEndlessExplorer（赠）*1
	tCompensatoryPack_Pack[3326707]["RewardEffect"] = {}
	tCompensatoryPack_Pack[3326707]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCompensatoryPack_Pack[3326707]["RewardEffect"]["Effect"] = "angelwing"


	tCompensatoryPack_Pack[3326708] = {}
	-- ===高级补偿礼包
	-- ===索引: tCompensatoryPack_Pack[3326708]
	-- ===删除: 3326708,1
	-- ===NewEmoneyLog: 1000,1205
	tCompensatoryPack_Pack[3326708]["LogId"] = 12001705
	tCompensatoryPack_Pack[3326708]["DeleteItem"] = {}
	tCompensatoryPack_Pack[3326708]["DeleteItem"][1] = {}
	tCompensatoryPack_Pack[3326708]["DeleteItem"][1]["Id"] = 3326708 -- 【库】AdvancedCompensationPack[属性:9]
	tCompensatoryPack_Pack[3326708]["RewardEMoneyMono"] = {}
	tCompensatoryPack_Pack[3326708]["RewardEMoneyMono"]["Value"] = 2000 -- 赠点, 【需求】2000赠点
	tCompensatoryPack_Pack[3326708]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1205"
	tCompensatoryPack_Pack[3326708]["RewardItem"] = {}
	tCompensatoryPack_Pack[3326708]["RewardItem"][1] = {}
	tCompensatoryPack_Pack[3326708]["RewardItem"][1]["Id"] = 3306365 -- YellowRune(B)SelectionPack[3306365][属性:9][叠加:10000][金币:0], 【表格】普通黄色神纹可选包*5
	tCompensatoryPack_Pack[3326708]["RewardItem"][1]["Attr"] = "0 5" -- YellowRune(B)SelectionPack*5
	tCompensatoryPack_Pack[3326708]["RewardItem"][2] = {}
	tCompensatoryPack_Pack[3326708]["RewardItem"][2]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】赠品黄色神纹精粹*100
	tCompensatoryPack_Pack[3326708]["RewardItem"][2]["Attr"] = "0 100 3" -- YellowRuneEssence（赠）*100
	tCompensatoryPack_Pack[3326708]["RewardItem"][3] = {}
	tCompensatoryPack_Pack[3326708]["RewardItem"][3]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*3
	tCompensatoryPack_Pack[3326708]["RewardItem"][3]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的RadiantStarStone*3
	tCompensatoryPack_Pack[3326708]["RewardItem"][4] = {}
	tCompensatoryPack_Pack[3326708]["RewardItem"][4]["Id"] = 3311821 -- SuperRuneCrystal[3311821][属性:9][叠加:10000][金币:0], 【表格】优质神纹源晶赠*15
	tCompensatoryPack_Pack[3326708]["RewardItem"][4]["Attr"] = "0 15 3" -- SuperRuneCrystal*15（[错误]物品数量超10个）
	tCompensatoryPack_Pack[3326708]["RewardItem"][5] = {}
	tCompensatoryPack_Pack[3326708]["RewardItem"][5]["Id"] = 195825 -- TigerGlory[195825][属性:0][叠加:0][金币:0], 【表格】30天神佑-1四星虎威荣光
	tCompensatoryPack_Pack[3326708]["RewardItem"][5]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑TigerGlory（赠）*1
	tCompensatoryPack_Pack[3326708]["RewardItem"][6] = {}
	tCompensatoryPack_Pack[3326708]["RewardItem"][6]["Id"] = 200632 -- GiantFish(Gold)[200632][属性:0][叠加:0][金币:0], 【表格】30天神佑-1大鱼海棠金鳞
	tCompensatoryPack_Pack[3326708]["RewardItem"][6]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑GiantFish(Gold)（赠）*1
	tCompensatoryPack_Pack[3326708]["RewardEffect"] = {}
	tCompensatoryPack_Pack[3326708]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCompensatoryPack_Pack[3326708]["RewardEffect"]["Effect"] = "angelwing"


	tCompensatoryPack_Pack[3326709] = {}
	-- ===顶级补偿礼包
	-- ===索引: tCompensatoryPack_Pack[3326709]
	-- ===删除: 3326709,1
	-- ===NewEmoneyLog: 1000,1206
	tCompensatoryPack_Pack[3326709]["LogId"] = 12001705
	tCompensatoryPack_Pack[3326709]["DeleteItem"] = {}
	tCompensatoryPack_Pack[3326709]["DeleteItem"][1] = {}
	tCompensatoryPack_Pack[3326709]["DeleteItem"][1]["Id"] = 3326709 -- 【库】SuperCompensationPack[属性:9]
	tCompensatoryPack_Pack[3326709]["RewardEMoneyMono"] = {}
	tCompensatoryPack_Pack[3326709]["RewardEMoneyMono"]["Value"] = 3000 -- 赠点, 【需求】3000赠点
	tCompensatoryPack_Pack[3326709]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1206"
	tCompensatoryPack_Pack[3326709]["RewardItem"] = {}
	tCompensatoryPack_Pack[3326709]["RewardItem"][1] = {}
	tCompensatoryPack_Pack[3326709]["RewardItem"][1]["Id"] = 3312777 -- Optional+1RareYellowRuneBag(B)[3312777][属性:9][叠加:0][金币:0], 【表格】（+1）稀有黄色神纹可选包（赠）*5
	tCompensatoryPack_Pack[3326709]["RewardItem"][1]["Attr"] = "0 5" -- Optional+1RareYellowRuneBag(B)*5
	tCompensatoryPack_Pack[3326709]["RewardItem"][2] = {}
	tCompensatoryPack_Pack[3326709]["RewardItem"][2]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】赠品黄色神纹精粹*200
	tCompensatoryPack_Pack[3326709]["RewardItem"][2]["Attr"] = "0 200 3" -- YellowRuneEssence（赠）*200（[错误]物品数量超100个）
	tCompensatoryPack_Pack[3326709]["RewardItem"][3] = {}
	tCompensatoryPack_Pack[3326709]["RewardItem"][3]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*5
	tCompensatoryPack_Pack[3326709]["RewardItem"][3]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的RadiantStarStone*5
	tCompensatoryPack_Pack[3326709]["RewardItem"][4] = {}
	tCompensatoryPack_Pack[3326709]["RewardItem"][4]["Id"] = 3311821 -- SuperRuneCrystal[3311821][属性:9][叠加:10000][金币:0], 【表格】优质神纹源晶赠*20
	tCompensatoryPack_Pack[3326709]["RewardItem"][4]["Attr"] = "0 20 3" -- SuperRuneCrystal*20（[错误]物品数量超10个）
	tCompensatoryPack_Pack[3326709]["RewardItem"][5] = {}
	tCompensatoryPack_Pack[3326709]["RewardItem"][5]["Id"] = 195825 -- TigerGlory[195825][属性:0][叠加:0][金币:0], 【表格】30天神佑-1四星虎威荣光
	tCompensatoryPack_Pack[3326709]["RewardItem"][5]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑TigerGlory（赠）*1
	tCompensatoryPack_Pack[3326709]["RewardItem"][6] = {}
	tCompensatoryPack_Pack[3326709]["RewardItem"][6]["Id"] = 200632 -- GiantFish(Gold)[200632][属性:0][叠加:0][金币:0], 【表格】30天神佑-1大鱼海棠金鳞
	tCompensatoryPack_Pack[3326709]["RewardItem"][6]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑GiantFish(Gold)（赠）*1
	tCompensatoryPack_Pack[3326709]["RewardEffect"] = {}
	tCompensatoryPack_Pack[3326709]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCompensatoryPack_Pack[3326709]["RewardEffect"]["Effect"] = "angelwing"

----------------------------------逻辑部分---------------------------------------------
-- 上线邮件
function CompensatoryPack_Online()
	local nUserId = Get_UserId()
	-- 时间判断
	if not Sys_ChkFullTime(tActivityTime["CompensatoryPack"]["ActivityTime"]) then
		return
	end
	-- 绿色新服不上
	if SpecialServer_ChkGreenServer() then
		return
	end
	-- 等级判断
	if not User_JudgeLevelAndMetempsychosis(tCompensatoryPack_Cont["Level"],tCompensatoryPack_Cont["Metempsychosis"]) then
		return
	end
	local nEvent = tCompensatoryPack_Cont["Stc"]["Event"]
	local nType = tCompensatoryPack_Cont["Stc"]["Data"]
	local nData = Get_UserStatisticValue(nEvent,nType) or 0
	-- 已发判断
	if nData > 0 then
		return
	end
	Task_SetStatistic(nEvent,nType,1,1,nUserId)
	-- 发邮件
	local nActionId = tCompensatoryPack_Cont["Mail"]["ActionId"]
	local nExistDay = tCompensatoryPack_Cont["Mail"]["ExistDay"]
	local sSender = tCompensatoryPack_Text["Mail"]["Sender"]
	local sTitle = tCompensatoryPack_Text["Mail"]["Title"]
	local sContent = tCompensatoryPack_Text["Mail"]["Content"]
	Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
end

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3326707] = tItem[3326707] or {}
tItem[3326707]["Function"] = function(nItemId,sItemName)
	--判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tCompensatoryPack_Pack[nItemId])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tCompensatoryPack_Text["Msg"]["NoSpace"],nSpace))
		return
	end
	RewardTemplate_UseItemAndMsg(tCompensatoryPack_Pack[nItemId])
end
tItem[3326708] = tItem[3326707]
tItem[3326709] = tItem[3326707]

---------------------------------------上线触发--------------------------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,CompensatoryPack_Online)
