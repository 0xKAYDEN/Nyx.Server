------------------------------------------------------------------------------------
--Name：            170721[英文征服][活动脚本]8月星陨石轮盘赌
--Creator:      丁雨浩
--Created:     2017/07/21
------------------------------------------------------------------------------------
--任务需求：
--制作一个NPC给玩家提供3种星陨石轮盘，玩家花天石玩转盘获得星陨石奖品，
--活动时间：8.22-9.04

------------------------------------------------------------------------------------
--log:12000802

--命名前缀
--StoneRoulette_

----------------------------------表配置部分--------------------------------------------
local tStoneRoulette_Data = {}
	tStoneRoulette_Data["BeforeTime"] = tActivityTime["StoneRoulette"]["BeforeTime"]
	tStoneRoulette_Data["AcitveTime"] = tActivityTime["StoneRoulette"]["AcitveTime"]
	tStoneRoulette_Data["UseGiftTime"] = tActivityTime["StoneRoulette"]["UseGiftTime"]
	
	tStoneRoulette_Data["LogId"] = 12000802 
	
	tStoneRoulette_Data[20890] = {}
	tStoneRoulette_Data[20890]["Space"] = 1
	tStoneRoulette_Data[20890][1] = 3304397
	tStoneRoulette_Data[20890][2] = 3304398
	tStoneRoulette_Data[20890][3] = 3304414


local tStoneRoulette_Reward = {}
	
	--1阶星陨石轮盘
	tStoneRoulette_Reward[3304397] = {}
	tStoneRoulette_Reward[3304397]["LogId"] = 12000802
	tStoneRoulette_Reward[3304397]["RewardItem"] = {}
	tStoneRoulette_Reward[3304397]["RewardItem"][1] = {}
	tStoneRoulette_Reward[3304397]["RewardItem"][1]["Id"] = 3304397
	tStoneRoulette_Reward[3304397]["RewardItem"][1]["Attr"] = "0 1"
	--2阶星陨石轮盘
	tStoneRoulette_Reward[3304398] = {}
	tStoneRoulette_Reward[3304398]["LogId"] = 12000802
	tStoneRoulette_Reward[3304398]["RewardItem"] = {}
	tStoneRoulette_Reward[3304398]["RewardItem"][1] = {}
	tStoneRoulette_Reward[3304398]["RewardItem"][1]["Id"] = 3304398
	tStoneRoulette_Reward[3304398]["RewardItem"][1]["Attr"] = "0 1"
	--3阶星陨石轮盘
	tStoneRoulette_Reward[3304414] = {}
	tStoneRoulette_Reward[3304414]["LogId"] = 12000802
	tStoneRoulette_Reward[3304414]["RewardItem"] = {}
	tStoneRoulette_Reward[3304414]["RewardItem"][1] = {}
	tStoneRoulette_Reward[3304414]["RewardItem"][1]["Id"] = 3304414
	tStoneRoulette_Reward[3304414]["RewardItem"][1]["Attr"] = "0 1"
	--4颗微光星陨石幸运包
	tStoneRoulette_Reward[3304379] = {}
	tStoneRoulette_Reward[3304379]["LogId"] = 12000802
	tStoneRoulette_Reward[3304379]["DeleteItem"] = {}
	tStoneRoulette_Reward[3304379]["DeleteItem"][1] = {}
	tStoneRoulette_Reward[3304379]["DeleteItem"][1]["Id"] = 3304379
	tStoneRoulette_Reward[3304379]["RewardItem"] = {}
	tStoneRoulette_Reward[3304379]["RewardItem"][1] = {}
	tStoneRoulette_Reward[3304379]["RewardItem"][1]["Id"] = 3009000
	tStoneRoulette_Reward[3304379]["RewardItem"][1]["Attr"] = "0 4 0 2880 1"
	--6颗微光星陨石幸运包
	tStoneRoulette_Reward[3304380] = {}
	tStoneRoulette_Reward[3304380]["LogId"] = 12000802
	tStoneRoulette_Reward[3304380]["DeleteItem"] = {}
	tStoneRoulette_Reward[3304380]["DeleteItem"][1] = {}
	tStoneRoulette_Reward[3304380]["DeleteItem"][1]["Id"] = 3304380
	tStoneRoulette_Reward[3304380]["RewardItem"] = {}
	tStoneRoulette_Reward[3304380]["RewardItem"][1] = {}
	tStoneRoulette_Reward[3304380]["RewardItem"][1]["Id"] = 3009000
	tStoneRoulette_Reward[3304380]["RewardItem"][1]["Attr"] = "0 6 0 2880 1"
	--8颗微光星陨石幸运包
	tStoneRoulette_Reward[3304381] = {}
	tStoneRoulette_Reward[3304381]["LogId"] = 12000802
	tStoneRoulette_Reward[3304381]["DeleteItem"] = {}
	tStoneRoulette_Reward[3304381]["DeleteItem"][1] = {}
	tStoneRoulette_Reward[3304381]["DeleteItem"][1]["Id"] = 3304381
	tStoneRoulette_Reward[3304381]["RewardItem"] = {}
	tStoneRoulette_Reward[3304381]["RewardItem"][1] = {}
	tStoneRoulette_Reward[3304381]["RewardItem"][1]["Id"] = 3009000
	tStoneRoulette_Reward[3304381]["RewardItem"][1]["Attr"] = "0 8 0 2880 1"
	--1颗明亮星陨石幸运包
	tStoneRoulette_Reward[3304382] = {}
	tStoneRoulette_Reward[3304382]["LogId"] = 12000802
	tStoneRoulette_Reward[3304382]["DeleteItem"] = {}
	tStoneRoulette_Reward[3304382]["DeleteItem"][1] = {}
	tStoneRoulette_Reward[3304382]["DeleteItem"][1]["Id"] = 3304382
	tStoneRoulette_Reward[3304382]["RewardItem"] = {}
	tStoneRoulette_Reward[3304382]["RewardItem"][1] = {}
	tStoneRoulette_Reward[3304382]["RewardItem"][1]["Id"] = 3009001
	tStoneRoulette_Reward[3304382]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	--2颗明亮星陨石幸运包
	tStoneRoulette_Reward[3304383] = {}
	tStoneRoulette_Reward[3304383]["LogId"] = 12000802
	tStoneRoulette_Reward[3304383]["DeleteItem"] = {}
	tStoneRoulette_Reward[3304383]["DeleteItem"][1] = {}
	tStoneRoulette_Reward[3304383]["DeleteItem"][1]["Id"] = 3304383
	tStoneRoulette_Reward[3304383]["RewardItem"] = {}
	tStoneRoulette_Reward[3304383]["RewardItem"][1] = {}
	tStoneRoulette_Reward[3304383]["RewardItem"][1]["Id"] = 3009001
	tStoneRoulette_Reward[3304383]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	--3颗明亮星陨石幸运包
	tStoneRoulette_Reward[3304384] = {}
	tStoneRoulette_Reward[3304384]["LogId"] = 12000802
	tStoneRoulette_Reward[3304384]["DeleteItem"] = {}
	tStoneRoulette_Reward[3304384]["DeleteItem"][1] = {}
	tStoneRoulette_Reward[3304384]["DeleteItem"][1]["Id"] = 3304384
	tStoneRoulette_Reward[3304384]["RewardItem"] = {}
	tStoneRoulette_Reward[3304384]["RewardItem"][1] = {}
	tStoneRoulette_Reward[3304384]["RewardItem"][1]["Id"] = 3009001
	tStoneRoulette_Reward[3304384]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	--4颗明亮星陨石幸运包
	tStoneRoulette_Reward[3304385] = {}
	tStoneRoulette_Reward[3304385]["LogId"] = 12000802
	tStoneRoulette_Reward[3304385]["DeleteItem"] = {}
	tStoneRoulette_Reward[3304385]["DeleteItem"][1] = {}
	tStoneRoulette_Reward[3304385]["DeleteItem"][1]["Id"] = 3304385
	tStoneRoulette_Reward[3304385]["RewardItem"] = {}
	tStoneRoulette_Reward[3304385]["RewardItem"][1] = {}
	tStoneRoulette_Reward[3304385]["RewardItem"][1]["Id"] = 3009001
	tStoneRoulette_Reward[3304385]["RewardItem"][1]["Attr"] = "0 4 0 2880 1"
	--5颗明亮星陨石幸运包
	tStoneRoulette_Reward[3304386] = {}
	tStoneRoulette_Reward[3304386]["LogId"] = 12000802
	tStoneRoulette_Reward[3304386]["DeleteItem"] = {}
	tStoneRoulette_Reward[3304386]["DeleteItem"][1] = {}
	tStoneRoulette_Reward[3304386]["DeleteItem"][1]["Id"] = 3304386
	tStoneRoulette_Reward[3304386]["RewardItem"] = {}
	tStoneRoulette_Reward[3304386]["RewardItem"][1] = {}
	tStoneRoulette_Reward[3304386]["RewardItem"][1]["Id"] = 3009001
	tStoneRoulette_Reward[3304386]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	--6颗明亮星陨石幸运包
	tStoneRoulette_Reward[3304387] = {}
	tStoneRoulette_Reward[3304387]["LogId"] = 12000802
	tStoneRoulette_Reward[3304387]["DeleteItem"] = {}
	tStoneRoulette_Reward[3304387]["DeleteItem"][1] = {}
	tStoneRoulette_Reward[3304387]["DeleteItem"][1]["Id"] = 3304387
	tStoneRoulette_Reward[3304387]["RewardItem"] = {}
	tStoneRoulette_Reward[3304387]["RewardItem"][1] = {}
	tStoneRoulette_Reward[3304387]["RewardItem"][1]["Id"] = 3009001
	tStoneRoulette_Reward[3304387]["RewardItem"][1]["Attr"] = "0 6 0 2880 1"
	--8颗明亮星陨石幸运包
	tStoneRoulette_Reward[3304388] = {}
	tStoneRoulette_Reward[3304388]["LogId"] = 12000802
	tStoneRoulette_Reward[3304388]["DeleteItem"] = {}
	tStoneRoulette_Reward[3304388]["DeleteItem"][1] = {}
	tStoneRoulette_Reward[3304388]["DeleteItem"][1]["Id"] = 3304388
	tStoneRoulette_Reward[3304388]["RewardItem"] = {}
	tStoneRoulette_Reward[3304388]["RewardItem"][1] = {}
	tStoneRoulette_Reward[3304388]["RewardItem"][1]["Id"] = 3009001
	tStoneRoulette_Reward[3304388]["RewardItem"][1]["Attr"] = "0 8 0 2880 1"
	--1颗晶莹星陨石幸运包
	tStoneRoulette_Reward[3304389] = {}
	tStoneRoulette_Reward[3304389]["LogId"] = 12000802
	tStoneRoulette_Reward[3304389]["DeleteItem"] = {}
	tStoneRoulette_Reward[3304389]["DeleteItem"][1] = {}
	tStoneRoulette_Reward[3304389]["DeleteItem"][1]["Id"] = 3304389
	tStoneRoulette_Reward[3304389]["RewardItem"] = {}
	tStoneRoulette_Reward[3304389]["RewardItem"][1] = {}
	tStoneRoulette_Reward[3304389]["RewardItem"][1]["Id"] = 3009002
	tStoneRoulette_Reward[3304389]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	--2颗晶莹星陨石幸运包
	tStoneRoulette_Reward[3304390] = {}
	tStoneRoulette_Reward[3304390]["LogId"] = 12000802
	tStoneRoulette_Reward[3304390]["DeleteItem"] = {}
	tStoneRoulette_Reward[3304390]["DeleteItem"][1] = {}
	tStoneRoulette_Reward[3304390]["DeleteItem"][1]["Id"] = 3304390
	tStoneRoulette_Reward[3304390]["RewardItem"] = {}
	tStoneRoulette_Reward[3304390]["RewardItem"][1] = {}
	tStoneRoulette_Reward[3304390]["RewardItem"][1]["Id"] = 3009002
	tStoneRoulette_Reward[3304390]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	--3颗晶莹星陨石幸运包
	tStoneRoulette_Reward[3304391] = {}
	tStoneRoulette_Reward[3304391]["LogId"] = 12000802
	tStoneRoulette_Reward[3304391]["DeleteItem"] = {}
	tStoneRoulette_Reward[3304391]["DeleteItem"][1] = {}
	tStoneRoulette_Reward[3304391]["DeleteItem"][1]["Id"] = 3304391
	tStoneRoulette_Reward[3304391]["RewardItem"] = {}
	tStoneRoulette_Reward[3304391]["RewardItem"][1] = {}
	tStoneRoulette_Reward[3304391]["RewardItem"][1]["Id"] = 3009002
	tStoneRoulette_Reward[3304391]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	--4颗晶莹星陨石幸运包
	tStoneRoulette_Reward[3304392] = {}
	tStoneRoulette_Reward[3304392]["LogId"] = 12000802
	tStoneRoulette_Reward[3304392]["DeleteItem"] = {}
	tStoneRoulette_Reward[3304392]["DeleteItem"][1] = {}
	tStoneRoulette_Reward[3304392]["DeleteItem"][1]["Id"] = 3304392
	tStoneRoulette_Reward[3304392]["RewardItem"] = {}
	tStoneRoulette_Reward[3304392]["RewardItem"][1] = {}
	tStoneRoulette_Reward[3304392]["RewardItem"][1]["Id"] = 3009002
	tStoneRoulette_Reward[3304392]["RewardItem"][1]["Attr"] = "0 4 0 2880 1"
	--5颗晶莹星陨石幸运包
	tStoneRoulette_Reward[3304393] = {}
	tStoneRoulette_Reward[3304393]["LogId"] = 12000802
	tStoneRoulette_Reward[3304393]["DeleteItem"] = {}
	tStoneRoulette_Reward[3304393]["DeleteItem"][1] = {}
	tStoneRoulette_Reward[3304393]["DeleteItem"][1]["Id"] = 3304393
	tStoneRoulette_Reward[3304393]["RewardItem"] = {}
	tStoneRoulette_Reward[3304393]["RewardItem"][1] = {}
	tStoneRoulette_Reward[3304393]["RewardItem"][1]["Id"] = 3009002
	tStoneRoulette_Reward[3304393]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	--8颗晶莹星陨石幸运包
	tStoneRoulette_Reward[3304394] = {}
	tStoneRoulette_Reward[3304394]["LogId"] = 12000802
	tStoneRoulette_Reward[3304394]["DeleteItem"] = {}
	tStoneRoulette_Reward[3304394]["DeleteItem"][1] = {}
	tStoneRoulette_Reward[3304394]["DeleteItem"][1]["Id"] = 3304394
	tStoneRoulette_Reward[3304394]["RewardItem"] = {}
	tStoneRoulette_Reward[3304394]["RewardItem"][1] = {}
	tStoneRoulette_Reward[3304394]["RewardItem"][1]["Id"] = 3009002
	tStoneRoulette_Reward[3304394]["RewardItem"][1]["Attr"] = "0 8 0 2880 1"
	--1颗璀璨星陨石幸运包
	tStoneRoulette_Reward[3304395] = {}
	tStoneRoulette_Reward[3304395]["LogId"] = 12000802
	tStoneRoulette_Reward[3304395]["DeleteItem"] = {}
	tStoneRoulette_Reward[3304395]["DeleteItem"][1] = {}
	tStoneRoulette_Reward[3304395]["DeleteItem"][1]["Id"] = 3304395
	tStoneRoulette_Reward[3304395]["RewardItem"] = {}
	tStoneRoulette_Reward[3304395]["RewardItem"][1] = {}
	tStoneRoulette_Reward[3304395]["RewardItem"][1]["Id"] = 3009003
	tStoneRoulette_Reward[3304395]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	--2颗璀璨星陨石幸运包
	tStoneRoulette_Reward[3304396] = {}
	tStoneRoulette_Reward[3304396]["LogId"] = 12000802
	tStoneRoulette_Reward[3304396]["DeleteItem"] = {}
	tStoneRoulette_Reward[3304396]["DeleteItem"][1] = {}
	tStoneRoulette_Reward[3304396]["DeleteItem"][1]["Id"] = 3304396
	tStoneRoulette_Reward[3304396]["RewardItem"] = {}
	tStoneRoulette_Reward[3304396]["RewardItem"][1] = {}
	tStoneRoulette_Reward[3304396]["RewardItem"][1]["Id"] = 3009003
	tStoneRoulette_Reward[3304396]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"

----------------------------------逻辑部分---------------------------------------------
--给予转盘
function StoneRoulette_GetRoulette(nNpcId,nChoose)
	--时间判断
	if not Sys_ChkFullTime(tStoneRoulette_Data["AcitveTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	--背包判断
	if not User_CheckLeftSpace(tStoneRoulette_Data[nNpcId]["Space"]) then
		return User_TalkChannel2005(string.format(tStoneRoulette_Text["Message"]["RoomLimit"],tStoneRoulette_Data[nNpcId]["Space"]))
	end
	local nItemId = tStoneRoulette_Data[nNpcId][nChoose]
	RewardTemplate_Reward(tStoneRoulette_Reward[nItemId])
end

--使用礼包
function StoneRoulette_UseGift(nItemId)
	--判断物品存在
	if not Item_ChkItem(nItemId) then
		return
	end
	--时间判断
	if not Sys_ChkFullTime(tStoneRoulette_Data["UseGiftTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tStoneRoulette_Text["Message"]["OrderGift"])
		end
		return 
	end
	--背包判断
	local nSpace = RewardTemplate_GetRewardSpace(tStoneRoulette_Reward[nItemId])
	if not User_CheckLeftSpace(nSpace) then
		return User_TalkChannel2005(string.format(tStoneRoulette_Text["Message"]["RoomLimit"],nSpace))
	end
	
	RewardTemplate_UseItemAndMsg(tStoneRoulette_Reward[nItemId])
end



----------------------------------NPC部分---------------------------------------------
tNpcFace[4991] = 144
tNpcGossip[20890]= tNpcGossip[20890] or DefaultNpc:new{}
tNpcGossip[20890]["OptionHidden"] = 1
tNpcGossip[20890]["DialogueText"] = tStoneRoulette_Text[20890]
--活动前对白
tNpcGossip[20890]["Text1-1"] = {101,102}
tNpcGossip[20890]["tOption1-1"] = {101}
tNpcGossip[20890]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tStoneRoulette_Data["BeforeTime"])
end
--活动中
tNpcGossip[20890]["Text1-2"] = {201,202}
tNpcGossip[20890]["tOption1-2"] = {201,202,203,204}
tNpcGossip[20890]["OptionFunc201"] = "StoneRoulette_GetRoulette</N>20890</N>1"
tNpcGossip[20890]["OptionChkFunc201"] = function()
	return (not Item_ChkItem(tStoneRoulette_Data[20890][1]))
end
tNpcGossip[20890]["OptionFunc202"] = "StoneRoulette_GetRoulette</N>20890</N>2"
tNpcGossip[20890]["OptionChkFunc202"] = function()
	return (not Item_ChkItem(tStoneRoulette_Data[20890][2]))
end
tNpcGossip[20890]["OptionFunc203"] = "StoneRoulette_GetRoulette</N>20890</N>3"
tNpcGossip[20890]["OptionChkFunc203"] = function()
	return (not Item_ChkItem(tStoneRoulette_Data[20890][3]))
end
tNpcGossip[20890]["OptionChkFunc204"] = function()
	return (Item_ChkItem(tStoneRoulette_Data[20890][1]) and Item_ChkItem(tStoneRoulette_Data[20890][2]) and Item_ChkItem(tStoneRoulette_Data[20890][3]))
 end
tNpcGossip[20890]["ChkFunc1-2"] = function()
	return Sys_ChkFullTime(tStoneRoulette_Data["AcitveTime"])
end
--活动后
tNpcGossip[20890]["Text1-3"] = {301}
tNpcGossip[20890]["tOption1-3"] = {301}



---------------------------------物品部分---------------------------------------------
tItem[3304379] = tItem[3304379] or {}
tItem[3304379]["Function"] = function(nItemId,sItemName)
	StoneRoulette_UseGift(nItemId)
end
tItem[3304380] = tItem[3304379]
tItem[3304381] = tItem[3304379]
tItem[3304382] = tItem[3304379]
tItem[3304383] = tItem[3304379]
tItem[3304384] = tItem[3304379]
tItem[3304385] = tItem[3304379]
tItem[3304386] = tItem[3304379]
tItem[3304387] = tItem[3304379]
tItem[3304388] = tItem[3304379]
tItem[3304389] = tItem[3304379]
tItem[3304390] = tItem[3304379]
tItem[3304391] = tItem[3304379]
tItem[3304392] = tItem[3304379]
tItem[3304393] = tItem[3304379]
tItem[3304394] = tItem[3304379]
tItem[3304395] = tItem[3304379]
tItem[3304396] = tItem[3304379]

