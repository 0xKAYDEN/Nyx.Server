------------------------------------------------------------------------------------
--Name：        190719[英文征服][活动脚本]8月精准推送活动
--Creator:      洪聪敏
--Created:     2019-07-19
------------------------------------------------------------------------------------
--命名前缀：AugustAccurate_
--luaini：41409
--log：12001526
------------------------------------------------------------------------------------


local tAugustPush_EmoneyPrice = {}
	tAugustPush_EmoneyPrice[3313287] = 499
	tAugustPush_EmoneyPrice[3313288] = 499
	tAugustPush_EmoneyPrice[3313289] = 499
	tAugustPush_EmoneyPrice[3313290] = 399
	tAugustPush_EmoneyPrice[3313291] = 249
	
local tAugustPush_EmoneyLog = {}
	tAugustPush_EmoneyLog[3313287] = "350	22442	499	499	1	"
	tAugustPush_EmoneyLog[3313288] = "350	22443	499	499	1	"
	tAugustPush_EmoneyLog[3313289] = "350	22444	499	499	1	"
	tAugustPush_EmoneyLog[3313290] = "350	22445	399	399	1	"
	tAugustPush_EmoneyLog[3313291] = "350	22446	249	249	1	"
	
	
	
	
	
	
	
local tAugustPush_Reward = {}
	-- ===开洞特惠礼包
	-- ===索引: tAugustPush_Reward[3322637]
	-- ===删除: 3313287,1
	tAugustPush_Reward[3313287] = {}
	tAugustPush_Reward[3313287]["LogId"] = 12001526
	tAugustPush_Reward[3313287]["DeleteItem"] = {}
	tAugustPush_Reward[3313287]["DeleteItem"][1] = {}
	tAugustPush_Reward[3313287]["DeleteItem"][1]["Id"] = 3313287 -- 【库】SocketPromoPack[属性:9]
	tAugustPush_Reward[3313287]["RewardItem"] = {}
	tAugustPush_Reward[3313287]["RewardItem"][1] = {}
	tAugustPush_Reward[3313287]["RewardItem"][1]["Id"] = 1200005 -- 【库】ToughDrill[属性:0], 【表格】金刚坚钻赠
	tAugustPush_Reward[3313287]["RewardItem"][1]["Attr"] = "0 2 3" -- ToughDrill（赠）*2
	tAugustPush_Reward[3313287]["RewardItem"][2] = {}
	tAugustPush_Reward[3313287]["RewardItem"][2]["Id"] = 1200006 -- 【库】StarDrill[属性:0], 【表格】七星宝钻赠
	tAugustPush_Reward[3313287]["RewardItem"][2]["Attr"] = "0 14 3" -- StarDrill（赠）*14
	tAugustPush_Reward[3313287]["RewardEffect"] = {}
	tAugustPush_Reward[3313287]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustPush_Reward[3313287]["RewardEffect"]["Effect"] = "angelwing"



	-- ===追加特惠礼包
	-- ===索引: tAugustPush_Reward[3313288]
	-- ===删除: 3313288,1
	tAugustPush_Reward[3313288] = {}
	tAugustPush_Reward[3313288]["LogId"] = 12001526
	tAugustPush_Reward[3313288]["DeleteItem"] = {}
	tAugustPush_Reward[3313288]["DeleteItem"][1] = {}
	tAugustPush_Reward[3313288]["DeleteItem"][1]["Id"] = 3313288 -- 【库】BonusPromoPack[属性:9]
	tAugustPush_Reward[3313288]["RewardItem"] = {}
	tAugustPush_Reward[3313288]["RewardItem"][1] = {}
	tAugustPush_Reward[3313288]["RewardItem"][1]["Id"] = 730005 -- 【库】+5Stone[属性:0], 【表格】赠品赤练石+5
	tAugustPush_Reward[3313288]["RewardItem"][1]["Attr"] = "0 3 3" -- +5Stone（赠）*3
	tAugustPush_Reward[3313288]["RewardItem"][2] = {}
	tAugustPush_Reward[3313288]["RewardItem"][2]["Id"] = 730006 -- 【库】+6Stone[属性:0], 【表格】赠品赤练石+6
	tAugustPush_Reward[3313288]["RewardItem"][2]["Attr"] = "0 2 3" -- +6Stone（赠）*2
	tAugustPush_Reward[3313288]["RewardItem"][3] = {}
	tAugustPush_Reward[3313288]["RewardItem"][3]["Id"] = 730007 -- 【库】+7Stone[属性:0], 【表格】赠品赤练石+7
	tAugustPush_Reward[3313288]["RewardItem"][3]["Attr"] = "0 1 3" -- +7Stone（赠）*1
	tAugustPush_Reward[3313288]["RewardEffect"] = {}
	tAugustPush_Reward[3313288]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustPush_Reward[3313288]["RewardEffect"]["Effect"] = "angelwing"



	-- ===精炼特惠礼包
	-- ===索引: tAugustPush_Reward[3313289]
	-- ===删除: 3313289,1
	tAugustPush_Reward[3313289] = {}
	tAugustPush_Reward[3313289]["LogId"] = 12001526
	tAugustPush_Reward[3313289]["DeleteItem"] = {}
	tAugustPush_Reward[3313289]["DeleteItem"][1] = {}
	tAugustPush_Reward[3313289]["DeleteItem"][1]["Id"] = 3313289 -- 【库】PerfectionPromoPack[属性:9]
	tAugustPush_Reward[3313289]["RewardItem"] = {}
	tAugustPush_Reward[3313289]["RewardItem"][1] = {}
	tAugustPush_Reward[3313289]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tAugustPush_Reward[3313289]["RewardItem"][1]["Attr"] = "0 20 0 2880 1" -- 2天时效(激活)的BrightStarStone*20
	tAugustPush_Reward[3313289]["RewardItem"][2] = {}
	tAugustPush_Reward[3313289]["RewardItem"][2]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tAugustPush_Reward[3313289]["RewardItem"][2]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的RadiantStarStone*5
	tAugustPush_Reward[3313289]["RewardEffect"] = {}
	tAugustPush_Reward[3313289]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustPush_Reward[3313289]["RewardEffect"]["Effect"] = "angelwing"



	-- ===宝石特惠礼包
	-- ===索引: tAugustPush_Reward[3313290]
	-- ===删除: 3313290,1
	tAugustPush_Reward[3313290] = {}
	tAugustPush_Reward[3313290]["LogId"] = 12001526
	tAugustPush_Reward[3313290]["DeleteItem"] = {}
	tAugustPush_Reward[3313290]["DeleteItem"][1] = {}
	tAugustPush_Reward[3313290]["DeleteItem"][1]["Id"] = 3313290 -- 【库】GemPromoPack[属性:9]
	tAugustPush_Reward[3313290]["RewardItem"] = {}
	tAugustPush_Reward[3313290]["RewardItem"][1] = {}
	tAugustPush_Reward[3313290]["RewardItem"][1]["Id"] = 700103 -- 【库】ThunderGem[属性:0], 【表格】极品天怒宝石赠
	tAugustPush_Reward[3313290]["RewardItem"][1]["Attr"] = "0 2 3" -- ThunderGem（赠）*2
	tAugustPush_Reward[3313290]["RewardItem"][2] = {}
	tAugustPush_Reward[3313290]["RewardItem"][2]["Id"] = 700123 -- 【库】GloryGem[属性:0], 【表格】极品地灵宝石赠
	tAugustPush_Reward[3313290]["RewardItem"][2]["Attr"] = "0 2 3" -- GloryGem（赠）*2
	tAugustPush_Reward[3313290]["RewardEffect"] = {}
	tAugustPush_Reward[3313290]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustPush_Reward[3313290]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神佑特惠礼包
	-- ===索引: tAugustPush_Reward[3313291]
	-- ===删除: 3313291,1
	tAugustPush_Reward[3313291] = {}
	tAugustPush_Reward[3313291]["LogId"] = 12001526
	tAugustPush_Reward[3313291]["DeleteItem"] = {}
	tAugustPush_Reward[3313291]["DeleteItem"][1] = {}
	tAugustPush_Reward[3313291]["DeleteItem"][1]["Id"] = 3313291 -- 【库】BlessedPromoPack[属性:9]
	tAugustPush_Reward[3313291]["RewardItem"] = {}
	tAugustPush_Reward[3313291]["RewardItem"][1] = {}
	tAugustPush_Reward[3313291]["RewardItem"][1]["Id"] = 700073 -- 【库】TortoiseGem[属性:0], 【表格】极品玄元宝石赠
	tAugustPush_Reward[3313291]["RewardItem"][1]["Attr"] = "0 10 3" -- TortoiseGem（赠）*10
	tAugustPush_Reward[3313291]["RewardEffect"] = {}
	tAugustPush_Reward[3313291]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustPush_Reward[3313291]["RewardEffect"]["Effect"] = "angelwing"
------------------------------------------------------------------------------------
--打开礼包
function AugustPush_OpenGif(nItemId)
	local nUserId = Get_UserId()
	local nNeedEmoney = tAugustPush_EmoneyPrice[nItemId]
	local sEmoneyLog = tAugustPush_EmoneyLog[nItemId]
	local nUserEmoney = Get_UserEMoney(nUserId)
	local sItemName = Get_ItemtypeName(nItemId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["AugustPush"]["ActivityTime"]) then
		--物品检测
		if Item_ChkMulItem(nItemId,nItemId,1) then
			Item_DelMulItem(nItemId,nItemId,1)
			User_TalkChannel2005(tAugustPush_Text["NoTime"],nUserId)
			return
		end
	end
	
	
	--背包空间检测
	if not RewardTemplate_CheckSpace(tAugustPush_Reward[nItemId],nUserId) then
		local nNeedSpace = RewardTemplate_GetRewardSpace(tAugustPush_Reward[nItemId],nUserId)
		local sText = string.format(tAugustPush_Text["NoSpace"],nNeedSpace)
		Sys_MsgBox(sText,nil,nil,nUserId)
		return
	end
	--物品检测
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		Sys_MsgBox(string.format(tAugustPush_Text["NoItem"],sItemName),nil,nil,nUserId)
		return
	end
	--天石检测
	if nUserEmoney < nNeedEmoney then
		LinkItemGossipFunc_New(nItemId,"3-1")
		return
	end
	if User_AddEMoney(-nNeedEmoney,nUserId) then
		Sys_SaveEmoneyBuy(sEmoneyLog,nUserId)
		RewardTemplate_UseItemAndMsg(tAugustPush_Reward[nItemId],nUserId)
	end
end
------------------------------------------------------------------------------------
tItemFace[3313287]=1930
tItemFace[3313288]=2431
tItemFace[3313289]=1784
tItemFace[3313290]=1788
tItemFace[3313291]=833
--SocketPromoPack
tItem[3313287] = tItem[3313287] or {}
tItem[3313287]["DialogueText"]=tAugustPush_Text[3313287]
tItem[3313287]["Text1-1"]={111}
tItem[3313287]["tOption1-1"]={111,112}
tItem[3313287]["OptionPoint111"] ="2-1"

tItem[3313287]["Text2-1"]={211}
tItem[3313287]["tOption2-1"]={211,212}
tItem[3313287]["OptionFunc211"] ="AugustPush_OpenGif</N>3313287"

tItem[3313287]["Text3-1"]={311}
tItem[3313287]["tOption3-1"]={311}

--BonusPromoPack
tItem[3313288] = tItem[3313288] or {}
tItem[3313288]["DialogueText"]=tAugustPush_Text[3313288]
tItem[3313288]["Text1-1"]={111}
tItem[3313288]["tOption1-1"]={111,112}
tItem[3313288]["OptionPoint111"] ="2-1"

tItem[3313288]["Text2-1"]={211}
tItem[3313288]["tOption2-1"]={211,212}
tItem[3313288]["OptionFunc211"] ="AugustPush_OpenGif</N>3313288"
tItem[3313288]["Text3-1"]={311}
tItem[3313288]["tOption3-1"]={311}
--PerfectionPromoPack
tItem[3313289] = tItem[3313289] or {}
tItem[3313289]["DialogueText"]=tAugustPush_Text[3313289]
tItem[3313289]["Text1-1"]={111}
tItem[3313289]["tOption1-1"]={111,112}
tItem[3313289]["OptionPoint111"] ="2-1"

tItem[3313289]["Text2-1"]={211}
tItem[3313289]["tOption2-1"]={211,212}
tItem[3313289]["OptionFunc211"] ="AugustPush_OpenGif</N>3313289"
tItem[3313289]["Text3-1"]={311}
tItem[3313289]["tOption3-1"]={311}

--GemPromoPack
tItem[3313290] = tItem[3313290] or {}
tItem[3313290]["DialogueText"]=tAugustPush_Text[3313290]
tItem[3313290]["Text1-1"]={111}
tItem[3313290]["tOption1-1"]={111,112}
tItem[3313290]["OptionPoint111"] ="2-1"

tItem[3313290]["Text2-1"]={211}
tItem[3313290]["tOption2-1"]={211,212}
tItem[3313290]["OptionFunc211"] ="AugustPush_OpenGif</N>3313290"
tItem[3313290]["Text3-1"]={311}
tItem[3313290]["tOption3-1"]={311}


--BlessedPromoPack
tItem[3313291] = tItem[3313291] or {}
tItem[3313291]["DialogueText"]=tAugustPush_Text[3313291]
tItem[3313291]["Text1-1"]={111}
tItem[3313291]["tOption1-1"]={111,112}
tItem[3313291]["OptionPoint111"] ="2-1"

tItem[3313291]["Text2-1"]={211}
tItem[3313291]["tOption2-1"]={211,212}
tItem[3313291]["OptionFunc211"] ="AugustPush_OpenGif</N>3313291"
tItem[3313291]["Text3-1"]={311}
tItem[3313291]["tOption3-1"]={311}
