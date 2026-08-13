------------------------------------------------------------------------------------
--Name：        191012[英文征服][活动脚本]10月补偿礼包发奖id制作
--Creator:      杨志翔
--Created:     2019-11-12
------------------------------------------------------------------------------------
--命名前缀：OctCompensationPacket_
--luaini：41560
--log：12001682
------------------------------------------------------------------------------------


local tOctCompensationPacket_EmoneyPrice= {}
	tOctCompensationPacket_EmoneyPrice[3326537] = 499
	tOctCompensationPacket_EmoneyPrice[3326538] = 499
	tOctCompensationPacket_EmoneyPrice[3326539] = 499
	tOctCompensationPacket_EmoneyPrice[3326540] = 399
	tOctCompensationPacket_EmoneyPrice[3326541] = 249
	
local tOctCompensationPacket_EmoneyLog = {}
	tOctCompensationPacket_EmoneyLog[3326537] = "350	22442	499	499	1	"
	tOctCompensationPacket_EmoneyLog[3326538] = "350	22443	499	499	1	"
	tOctCompensationPacket_EmoneyLog[3326539] = "350	22444	499	499	1	"
	tOctCompensationPacket_EmoneyLog[3326540] = "350	22445	399	399	1	"
	tOctCompensationPacket_EmoneyLog[3326541] = "350	22446	249	249	1	"
	
	
	
	
	
	
	
local tOctCompensationPacket_Reward = {}
	-- ===开洞特惠礼包
	-- ===索引: tOctCompensationPacket_Reward[3322637]
	-- ===删除: 3326537,1
	tOctCompensationPacket_Reward[3326537] = {}
	tOctCompensationPacket_Reward[3326537]["LogId"] = 12001682
	tOctCompensationPacket_Reward[3326537]["DeleteItem"] = {}
	tOctCompensationPacket_Reward[3326537]["DeleteItem"][1] = {}
	tOctCompensationPacket_Reward[3326537]["DeleteItem"][1]["Id"] = 3326537 -- 【库】SocketPromoPack[属性:9]
	tOctCompensationPacket_Reward[3326537]["RewardItem"] = {}
	tOctCompensationPacket_Reward[3326537]["RewardItem"][1] = {}
	tOctCompensationPacket_Reward[3326537]["RewardItem"][1]["Id"] = 1200005 -- 【库】ToughDrill[属性:0], 【表格】金刚坚钻赠
	tOctCompensationPacket_Reward[3326537]["RewardItem"][1]["Attr"] = "0 2 3" -- ToughDrill（赠）*2
	tOctCompensationPacket_Reward[3326537]["RewardItem"][2] = {}
	tOctCompensationPacket_Reward[3326537]["RewardItem"][2]["Id"] = 1200006 -- 【库】StarDrill[属性:0], 【表格】七星宝钻赠
	tOctCompensationPacket_Reward[3326537]["RewardItem"][2]["Attr"] = "0 14 3" -- StarDrill（赠）*14
	tOctCompensationPacket_Reward[3326537]["RewardEffect"] = {}
	tOctCompensationPacket_Reward[3326537]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctCompensationPacket_Reward[3326537]["RewardEffect"]["Effect"] = "angelwing"



	-- ===追加特惠礼包
	-- ===索引: tOctCompensationPacket_Reward[3326538]
	-- ===删除: 3326538,1
	tOctCompensationPacket_Reward[3326538] = {}
	tOctCompensationPacket_Reward[3326538]["LogId"] = 12001682
	tOctCompensationPacket_Reward[3326538]["DeleteItem"] = {}
	tOctCompensationPacket_Reward[3326538]["DeleteItem"][1] = {}
	tOctCompensationPacket_Reward[3326538]["DeleteItem"][1]["Id"] = 3326538 -- 【库】BonusPromoPack[属性:9]
	tOctCompensationPacket_Reward[3326538]["RewardItem"] = {}
	tOctCompensationPacket_Reward[3326538]["RewardItem"][1] = {}
	tOctCompensationPacket_Reward[3326538]["RewardItem"][1]["Id"] = 730005 -- 【库】+5Stone[属性:0], 【表格】赠品赤练石+5
	tOctCompensationPacket_Reward[3326538]["RewardItem"][1]["Attr"] = "0 3 3" -- +5Stone（赠）*3
	tOctCompensationPacket_Reward[3326538]["RewardItem"][2] = {}
	tOctCompensationPacket_Reward[3326538]["RewardItem"][2]["Id"] = 730006 -- 【库】+6Stone[属性:0], 【表格】赠品赤练石+6
	tOctCompensationPacket_Reward[3326538]["RewardItem"][2]["Attr"] = "0 2 3" -- +6Stone（赠）*2
	tOctCompensationPacket_Reward[3326538]["RewardItem"][3] = {}
	tOctCompensationPacket_Reward[3326538]["RewardItem"][3]["Id"] = 730007 -- 【库】+7Stone[属性:0], 【表格】赠品赤练石+7
	tOctCompensationPacket_Reward[3326538]["RewardItem"][3]["Attr"] = "0 1 3" -- +7Stone（赠）*1
	tOctCompensationPacket_Reward[3326538]["RewardEffect"] = {}
	tOctCompensationPacket_Reward[3326538]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctCompensationPacket_Reward[3326538]["RewardEffect"]["Effect"] = "angelwing"



	-- ===精炼特惠礼包
	-- ===索引: tOctCompensationPacket_Reward[3326539]
	-- ===删除: 3326539,1
	tOctCompensationPacket_Reward[3326539] = {}
	tOctCompensationPacket_Reward[3326539]["LogId"] = 12001682
	tOctCompensationPacket_Reward[3326539]["DeleteItem"] = {}
	tOctCompensationPacket_Reward[3326539]["DeleteItem"][1] = {}
	tOctCompensationPacket_Reward[3326539]["DeleteItem"][1]["Id"] = 3326539 -- 【库】PerfectionPromoPack[属性:9]
	tOctCompensationPacket_Reward[3326539]["RewardItem"] = {}
	tOctCompensationPacket_Reward[3326539]["RewardItem"][1] = {}
	tOctCompensationPacket_Reward[3326539]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tOctCompensationPacket_Reward[3326539]["RewardItem"][1]["Attr"] = "0 20 0 2880 1" -- 2天时效(激活)的BrightStarStone*20
	tOctCompensationPacket_Reward[3326539]["RewardItem"][2] = {}
	tOctCompensationPacket_Reward[3326539]["RewardItem"][2]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tOctCompensationPacket_Reward[3326539]["RewardItem"][2]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的RadiantStarStone*5
	tOctCompensationPacket_Reward[3326539]["RewardEffect"] = {}
	tOctCompensationPacket_Reward[3326539]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctCompensationPacket_Reward[3326539]["RewardEffect"]["Effect"] = "angelwing"



	-- ===宝石特惠礼包
	-- ===索引: tOctCompensationPacket_Reward[3326540]
	-- ===删除: 3326540,1
	tOctCompensationPacket_Reward[3326540] = {}
	tOctCompensationPacket_Reward[3326540]["LogId"] = 12001682
	tOctCompensationPacket_Reward[3326540]["DeleteItem"] = {}
	tOctCompensationPacket_Reward[3326540]["DeleteItem"][1] = {}
	tOctCompensationPacket_Reward[3326540]["DeleteItem"][1]["Id"] = 3326540 -- 【库】GemPromoPack[属性:9]
	tOctCompensationPacket_Reward[3326540]["RewardItem"] = {}
	tOctCompensationPacket_Reward[3326540]["RewardItem"][1] = {}
	tOctCompensationPacket_Reward[3326540]["RewardItem"][1]["Id"] = 700103 -- 【库】ThunderGem[属性:0], 【表格】极品天怒宝石赠
	tOctCompensationPacket_Reward[3326540]["RewardItem"][1]["Attr"] = "0 2 3" -- ThunderGem（赠）*2
	tOctCompensationPacket_Reward[3326540]["RewardItem"][2] = {}
	tOctCompensationPacket_Reward[3326540]["RewardItem"][2]["Id"] = 700123 -- 【库】GloryGem[属性:0], 【表格】极品地灵宝石赠
	tOctCompensationPacket_Reward[3326540]["RewardItem"][2]["Attr"] = "0 2 3" -- GloryGem（赠）*2
	tOctCompensationPacket_Reward[3326540]["RewardEffect"] = {}
	tOctCompensationPacket_Reward[3326540]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctCompensationPacket_Reward[3326540]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神佑特惠礼包
	-- ===索引: tOctCompensationPacket_Reward[3326541]
	-- ===删除: 3326541,1
	tOctCompensationPacket_Reward[3326541] = {}
	tOctCompensationPacket_Reward[3326541]["LogId"] = 12001682
	tOctCompensationPacket_Reward[3326541]["DeleteItem"] = {}
	tOctCompensationPacket_Reward[3326541]["DeleteItem"][1] = {}
	tOctCompensationPacket_Reward[3326541]["DeleteItem"][1]["Id"] = 3326541 -- 【库】BlessedPromoPack[属性:9]
	tOctCompensationPacket_Reward[3326541]["RewardItem"] = {}
	tOctCompensationPacket_Reward[3326541]["RewardItem"][1] = {}
	tOctCompensationPacket_Reward[3326541]["RewardItem"][1]["Id"] = 700073 -- 【库】TortoiseGem[属性:0], 【表格】极品玄元宝石赠
	tOctCompensationPacket_Reward[3326541]["RewardItem"][1]["Attr"] = "0 10 3" -- TortoiseGem（赠）*10
	tOctCompensationPacket_Reward[3326541]["RewardEffect"] = {}
	tOctCompensationPacket_Reward[3326541]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctCompensationPacket_Reward[3326541]["RewardEffect"]["Effect"] = "angelwing"
------------------------------------------------------------------------------------
--打开礼包
function OctCompensationPacket_OpenGif(nItemId)
	local nUserId = Get_UserId()
	local nNeedEmoney = tOctCompensationPacket_EmoneyPrice[nItemId]
	local sEmoneyLog = tOctCompensationPacket_EmoneyLog[nItemId]
	local nUserEmoney = Get_UserEMoney(nUserId)
	local sItemName = Get_ItemtypeName(nItemId)
	-- 判断活动时间
		--物品检测

	--背包空间检测
	if not RewardTemplate_CheckSpace(tOctCompensationPacket_Reward[nItemId],nUserId) then
		local nNeedSpace = RewardTemplate_GetRewardSpace(tOctCompensationPacket_Reward[nItemId],nUserId)
		local sText = string.format(tOctCompensationPacket_Text["NoSpace"],nNeedSpace)
		Sys_MsgBox(sText,nil,nil,nUserId)
		return
	end
	--物品检测
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		Sys_MsgBox(string.format(tOctCompensationPacket_Text["NoItem"],sItemName),nil,nil,nUserId)
		return
	end
	--天石检测
	if nUserEmoney < nNeedEmoney then
		LinkItemGossipFunc_New(nItemId,"3-1")
		return
	end
	if User_AddEMoney(-nNeedEmoney,nUserId) then
		Sys_SaveEmoneyBuy(sEmoneyLog,nUserId)
		RewardTemplate_UseItemAndMsg(tOctCompensationPacket_Reward[nItemId],nUserId)
	end
end
------------------------------------------------------------------------------------
tItemFace[3326537]=1930
tItemFace[3326538]=2431
tItemFace[3326539]=1784
tItemFace[3326540]=1788
tItemFace[3326541]=833
--SocketPromoPack
tItem[3326537] = tItem[3326537] or {}
tItem[3326537]["DialogueText"]=tOctCompensationPacket_Text[3326537]
tItem[3326537]["Text1-1"]={111}
tItem[3326537]["tOption1-1"]={111,112}
tItem[3326537]["OptionPoint111"] ="2-1"

tItem[3326537]["Text2-1"]={211}
tItem[3326537]["tOption2-1"]={211,212}
tItem[3326537]["OptionFunc211"] ="OctCompensationPacket_OpenGif</N>3326537"

tItem[3326537]["Text3-1"]={311}
tItem[3326537]["tOption3-1"]={311}

--BonusPromoPack
tItem[3326538] = tItem[3326538] or {}
tItem[3326538]["DialogueText"]=tOctCompensationPacket_Text[3326538]
tItem[3326538]["Text1-1"]={111}
tItem[3326538]["tOption1-1"]={111,112}
tItem[3326538]["OptionPoint111"] ="2-1"

tItem[3326538]["Text2-1"]={211}
tItem[3326538]["tOption2-1"]={211,212}
tItem[3326538]["OptionFunc211"] ="OctCompensationPacket_OpenGif</N>3326538"
tItem[3326538]["Text3-1"]={311}
tItem[3326538]["tOption3-1"]={311}
--PerfectionPromoPack
tItem[3326539] = tItem[3326539] or {}
tItem[3326539]["DialogueText"]=tOctCompensationPacket_Text[3326539]
tItem[3326539]["Text1-1"]={111}
tItem[3326539]["tOption1-1"]={111,112}
tItem[3326539]["OptionPoint111"] ="2-1"

tItem[3326539]["Text2-1"]={211}
tItem[3326539]["tOption2-1"]={211,212}
tItem[3326539]["OptionFunc211"] ="OctCompensationPacket_OpenGif</N>3326539"
tItem[3326539]["Text3-1"]={311}
tItem[3326539]["tOption3-1"]={311}

--GemPromoPack
tItem[3326540] = tItem[3326540] or {}
tItem[3326540]["DialogueText"]=tOctCompensationPacket_Text[3326540]
tItem[3326540]["Text1-1"]={111}
tItem[3326540]["tOption1-1"]={111,112}
tItem[3326540]["OptionPoint111"] ="2-1"

tItem[3326540]["Text2-1"]={211}
tItem[3326540]["tOption2-1"]={211,212}
tItem[3326540]["OptionFunc211"] ="OctCompensationPacket_OpenGif</N>3326540"
tItem[3326540]["Text3-1"]={311}
tItem[3326540]["tOption3-1"]={311}


--BlessedPromoPack
tItem[3326541] = tItem[3326541] or {}
tItem[3326541]["DialogueText"]=tOctCompensationPacket_Text[3326541]
tItem[3326541]["Text1-1"]={111}
tItem[3326541]["tOption1-1"]={111,112}
tItem[3326541]["OptionPoint111"] ="2-1"

tItem[3326541]["Text2-1"]={211}
tItem[3326541]["tOption2-1"]={211,212}
tItem[3326541]["OptionFunc211"] ="OctCompensationPacket_OpenGif</N>3326541"
tItem[3326541]["Text3-1"]={311}
tItem[3326541]["tOption3-1"]={311}
