------------------------------------------------------------------------------------
--Name:   [英文征服][活动脚本]5月周年大促发奖action制作(5.05)
--Creator:  郑宗胜
--Created:  2016/04/11
------------------------------------------------------------------------------------

-- 命名前缀：LargeSaleInMay_
-- lua.ini  40214
-- logId  12000350

----------------------------------数据部分----------------------------------------
--打开礼包，可选择奖励的配置
local tLargeSaleInMay_OptionalItem = {}
	--冠军骑宠外套包
	tLargeSaleInMay_OptionalItem[3100050] = {}
	tLargeSaleInMay_OptionalItem[3100050]["Attr"] = "0 1 0 0 0 0 0 1" --非赠，1%神佑
	tLargeSaleInMay_OptionalItem[3100050]["Count"] = 1
	tLargeSaleInMay_OptionalItem[3100050][1] = {} --猴王天天
	tLargeSaleInMay_OptionalItem[3100050][1]["ItemId"] = 200559
	tLargeSaleInMay_OptionalItem[3100050][1]["Name"] = tLargeSaleInMay_Text["OpenHorseGift"]["Option1"]
	
	tLargeSaleInMay_OptionalItem[3100050][2] = {} --猴王西西。
	tLargeSaleInMay_OptionalItem[3100050][2]["ItemId"] = 200560
	tLargeSaleInMay_OptionalItem[3100050][2]["Name"] = tLargeSaleInMay_Text["OpenHorseGift"]["Option2"]
	
	tLargeSaleInMay_OptionalItem[3100050][3] = {} --SoulKylin
	tLargeSaleInMay_OptionalItem[3100050][3]["ItemId"] = 200549
	tLargeSaleInMay_OptionalItem[3100050][3]["Name"] = tLargeSaleInMay_Text["OpenHorseGift"]["Option3"]
	
	tLargeSaleInMay_OptionalItem[3100050][4] = {} --DivineFox
	tLargeSaleInMay_OptionalItem[3100050][4]["ItemId"] = 200539
	tLargeSaleInMay_OptionalItem[3100050][4]["Name"] = tLargeSaleInMay_Text["OpenHorseGift"]["Option4"]
	
	tLargeSaleInMay_OptionalItem[3100050][5] = {} --Love Horse
	tLargeSaleInMay_OptionalItem[3100050][5]["ItemId"] = 200495
	tLargeSaleInMay_OptionalItem[3100050][5]["Name"] = tLargeSaleInMay_Text["OpenHorseGift"]["Option5"]
	
	--冠军服装外套包
	tLargeSaleInMay_OptionalItem[3100051] = {}
	tLargeSaleInMay_OptionalItem[3100051]["Attr"] = "0 1 0 0 0 0 0 0" --非赠
	tLargeSaleInMay_OptionalItem[3100051]["Count"] = 1
	tLargeSaleInMay_OptionalItem[3100051][1] = {} --江山一统
	tLargeSaleInMay_OptionalItem[3100051][1]["ItemId"] = 193325
	tLargeSaleInMay_OptionalItem[3100051][1]["Name"] = tLargeSaleInMay_Text["OpenCoatGift"]["Option1"]
	
	tLargeSaleInMay_OptionalItem[3100051][2] = {} --洋洋得意
	tLargeSaleInMay_OptionalItem[3100051][2]["ItemId"] = 193205
	tLargeSaleInMay_OptionalItem[3100051][2]["Name"] = tLargeSaleInMay_Text["OpenCoatGift"]["Option2"]
	
	tLargeSaleInMay_OptionalItem[3100051][3] = {} --侠武丹心
	tLargeSaleInMay_OptionalItem[3100051][3]["ItemId"] = 193605
	tLargeSaleInMay_OptionalItem[3100051][3]["Name"] = tLargeSaleInMay_Text["OpenCoatGift"]["Option3"]
	
	tLargeSaleInMay_OptionalItem[3100051][4] = {} --FlushofHearts
	tLargeSaleInMay_OptionalItem[3100051][4]["ItemId"] = 193715
	tLargeSaleInMay_OptionalItem[3100051][4]["Name"] = tLargeSaleInMay_Text["OpenCoatGift"]["Option4"]
	
	--亚军骑宠外套包
	tLargeSaleInMay_OptionalItem[3100052] = {} 
	tLargeSaleInMay_OptionalItem[3100052]["Attr"] = "0 1 0 0 0 0 0 1" --非赠，1%神佑
	tLargeSaleInMay_OptionalItem[3100052]["Count"] = 1
	tLargeSaleInMay_OptionalItem[3100052][1] = {} --猴王天天
	tLargeSaleInMay_OptionalItem[3100052][1]["ItemId"] = 200559
	tLargeSaleInMay_OptionalItem[3100052][1]["Name"] = tLargeSaleInMay_Text["OpenHorseGift"]["Option1"]
	
	tLargeSaleInMay_OptionalItem[3100052][3] = {} --SoulKylin
	tLargeSaleInMay_OptionalItem[3100052][3]["ItemId"] = 200549
	tLargeSaleInMay_OptionalItem[3100052][3]["Name"] = tLargeSaleInMay_Text["OpenHorseGift"]["Option3"]
	
	tLargeSaleInMay_OptionalItem[3100052][4] = {} --DivineFox
	tLargeSaleInMay_OptionalItem[3100052][4]["ItemId"] = 200539
	tLargeSaleInMay_OptionalItem[3100052][4]["Name"] = tLargeSaleInMay_Text["OpenHorseGift"]["Option4"]
	
	tLargeSaleInMay_OptionalItem[3100052][5] = {} --Love Horse
	tLargeSaleInMay_OptionalItem[3100052][5]["ItemId"] = 200495
	tLargeSaleInMay_OptionalItem[3100052][5]["Name"] = tLargeSaleInMay_Text["OpenHorseGift"]["Option5"]
	
	--亚军服装外套包
	tLargeSaleInMay_OptionalItem[3100053] = {}
	tLargeSaleInMay_OptionalItem[3100053]["Attr"] = "0 1 0 0 0 0 0 0" --非赠
	tLargeSaleInMay_OptionalItem[3100053]["Count"] = 1
	tLargeSaleInMay_OptionalItem[3100053][1] = {} --江山一统
	tLargeSaleInMay_OptionalItem[3100053][1]["ItemId"] = 193325
	tLargeSaleInMay_OptionalItem[3100053][1]["Name"] = tLargeSaleInMay_Text["OpenCoatGift"]["Option1"]
	
	tLargeSaleInMay_OptionalItem[3100053][3] = {} --侠武丹心
	tLargeSaleInMay_OptionalItem[3100053][3]["ItemId"] = 193605
	tLargeSaleInMay_OptionalItem[3100053][3]["Name"] = tLargeSaleInMay_Text["OpenCoatGift"]["Option3"]
	
	tLargeSaleInMay_OptionalItem[3100053][4] = {} --FlushofHearts
	tLargeSaleInMay_OptionalItem[3100053][4]["ItemId"] = 193715
	tLargeSaleInMay_OptionalItem[3100053][4]["Name"] = tLargeSaleInMay_Text["OpenCoatGift"]["Option4"]
	
	--季军骑宠外套包
	tLargeSaleInMay_OptionalItem[3100054] = {} 
	tLargeSaleInMay_OptionalItem[3100054]["Attr"] = "0 1 0 0 0 0 0 1" --非赠，1%神佑
	tLargeSaleInMay_OptionalItem[3100054]["Count"] = 1
	tLargeSaleInMay_OptionalItem[3100054][1] = {} --猴王天天
	tLargeSaleInMay_OptionalItem[3100054][1]["ItemId"] = 200559
	tLargeSaleInMay_OptionalItem[3100054][1]["Name"] = tLargeSaleInMay_Text["OpenHorseGift"]["Option1"]
	
	tLargeSaleInMay_OptionalItem[3100054][3] = {} --SoulKylin
	tLargeSaleInMay_OptionalItem[3100054][3]["ItemId"] = 200549
	tLargeSaleInMay_OptionalItem[3100054][3]["Name"] = tLargeSaleInMay_Text["OpenHorseGift"]["Option3"]
	
	tLargeSaleInMay_OptionalItem[3100054][4] = {} --DivineFox
	tLargeSaleInMay_OptionalItem[3100054][4]["ItemId"] = 200539
	tLargeSaleInMay_OptionalItem[3100054][4]["Name"] = tLargeSaleInMay_Text["OpenHorseGift"]["Option4"]
	
	--季军服装外套包
	tLargeSaleInMay_OptionalItem[3100055] = {}
	tLargeSaleInMay_OptionalItem[3100055]["Attr"] = "0 1 0 0 0 0 0 0" --非赠
	tLargeSaleInMay_OptionalItem[3100055]["Count"] = 1
	tLargeSaleInMay_OptionalItem[3100055][3] = {} --侠武丹心
	tLargeSaleInMay_OptionalItem[3100055][3]["ItemId"] = 193605
	tLargeSaleInMay_OptionalItem[3100055][3]["Name"] = tLargeSaleInMay_Text["OpenCoatGift"]["Option3"]
	
	tLargeSaleInMay_OptionalItem[3100055][4] = {} --FlushofHearts
	tLargeSaleInMay_OptionalItem[3100055][4]["ItemId"] = 193715
	tLargeSaleInMay_OptionalItem[3100055][4]["Name"] = tLargeSaleInMay_Text["OpenCoatGift"]["Option4"]
	
---打开礼包，直接获得奖励的配置
local tLargeSaleInMay_Item = {}
	--成绩斐然礼包
	tLargeSaleInMay_Item[3100056] = {}
	tLargeSaleInMay_Item[3100056]["Space"] = 1 --需要的背包空间
	tLargeSaleInMay_Item[3100056]["Award"] = {} --奖励表
	
	tLargeSaleInMay_Item[3100056]["Award"][1] = {} --FlameFox
	tLargeSaleInMay_Item[3100056]["Award"][1]["ItemId"] = 200474 --物品ID
	tLargeSaleInMay_Item[3100056]["Award"][1]["Attr"] = "0 1 0 0 0 0 0 1" --物品属性
	tLargeSaleInMay_Item[3100056]["Award"][1]["Name"] = "FlameFox" --物品名称
	tLargeSaleInMay_Item[3100056]["Award"][1]["Conut"] = 1 --物品数量
	
	tLargeSaleInMay_Item[3100056]["Award"][2] = {} --Windwalk
	tLargeSaleInMay_Item[3100056]["Award"][2]["ItemId"] = 192605
	tLargeSaleInMay_Item[3100056]["Award"][2]["Attr"] = "0 1 0 0 0 0 0 0"
	tLargeSaleInMay_Item[3100056]["Award"][2]["Name"] = "Windwalk"
	tLargeSaleInMay_Item[3100056]["Award"][2]["Conut"] = 1
	
local tLargeSaleInMay_Log = {}
	tLargeSaleInMay_Log["OpenGift"] = "0,0,%d,1,12000350,2,%s,%s" --获得多种物品的log
	tLargeSaleInMay_Log["OpenOptionalGift"] = "0,0,%d,1,12000350,2,%d,%d"
----------------------------------逻辑部分----------------------------------------
--打开可选的礼包，nOption：选则第几项
function LargeSaleInMay_OpenOptionalGift(nItemId,nOption)
	--删除礼包，获得奖励
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local nAwardItemId = tLargeSaleInMay_OptionalItem[nItemId][nOption]["ItemId"]
		local nAwardName = tLargeSaleInMay_OptionalItem[nItemId][nOption]["Name"]
		local sAttr = tLargeSaleInMay_OptionalItem[nItemId]["Attr"]
		local nCount = tLargeSaleInMay_OptionalItem[nItemId]["Count"]
		Item_AddNewItem(nAwardItemId,sAttr)
		User_TalkChannel2005(string.format(tLargeSaleInMay_Text["Award"],nAwardName))
		Sys_SaveActionFestivalLog(string.format(tLargeSaleInMay_Log["OpenOptionalGift"],nItemId,nAwardItemId,nCount))
	end
end

--打开礼包，直接获得奖励
function LargeSaleInMay_OpenGift(nItemId)
	--背包空间不足
	if (tLargeSaleInMay_Item[nItemId]["Space"] ~= nil) and (not User_CheckLeftSpace(tLargeSaleInMay_Item[nItemId]["Space"])) then
		LinkItemGossipFunc_New(nItemId,"1-1")
		return
	end
	--删除礼包，获得奖励
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local tAward = tLargeSaleInMay_Item[nItemId]["Award"]
		local tUserTalk = {} --系统提示获得的所有物品名称
		local sActionLog_Id = "" --打开礼包获得多种物品id的actionlog
		local sActionLog_Num = "" --打开礼包获得多种物品id的actionlog
		for i,v in pairs(tAward) do
			local nAwardItemId = v["ItemId"]
			local sAwardAttr = v["Attr"]
			local sAwardItemName = v["Name"]
			local nAwardCount = v["Conut"]
			Item_AddNewItem(nAwardItemId,sAwardAttr)
			--格式化系统提示和Log
			table.insert(tUserTalk,sAwardItemName)
			if i == 1 then
				sActionLog_Id = sActionLog_Id .. tostring(nAwardItemId) --第一个log不用加[]
				sActionLog_Num = sActionLog_Num .. tostring(nAwardCount)
			else
				sActionLog_Id = sActionLog_Id .. string.format(tLargeSaleInMay_Text["ConcatStringLog"],nAwardItemId)
				sActionLog_Num = sActionLog_Num .. string.format(tLargeSaleInMay_Text["ConcatStringLog"],nAwardCount)
			end
		end
		User_TalkChannel2005(string.format(tLargeSaleInMay_Text["Award"],LargeSaleInMay_formatString(tUserTalk)))
		Sys_SaveActionFestivalLog(string.format(tLargeSaleInMay_Log["OpenGift"],nItemId,sActionLog_Id,sActionLog_Num))
	end
end

--将表中的所有子串，格式化成完整的一句话：“XX、XX、XX和XX”
function LargeSaleInMay_formatString(tUserTalk)
	local sRes = "";
	for i,v in pairs(tUserTalk) do
		if i== #tUserTalk-1 then
			sRes = sRes ..v..tLargeSaleInMay_Text["ConcatStringMid2"]
		elseif i== #tUserTalk then
			sRes = sRes ..v
		else
			sRes =sRes ..v.. tLargeSaleInMay_Text["ConcatStringMid1"]
		end
	end
	return sRes
end
----------------------------------模板部分----------------------------------------
---物品模板
--冠军骑宠外套包:5选1
tItem[3100050] = tItem[3100050] or {}
tItem[3100050]["Text1-1"] = {111}
tItem[3100050]["Text111"] = string.format(tLargeSaleInMay_Text["OpenHorseGift"]["Text"],5)
tItem[3100050]["tOption1-1"] = {1,2,3,4,5,6}
tItem[3100050]["Option1"] = tLargeSaleInMay_Text["OpenHorseGift"]["Option1"]
tItem[3100050]["OptionFunc1"] = "LargeSaleInMay_OpenOptionalGift</N>3100050</N>1"
tItem[3100050]["Option2"] = tLargeSaleInMay_Text["OpenHorseGift"]["Option2"]
tItem[3100050]["OptionFunc2"] = "LargeSaleInMay_OpenOptionalGift</N>3100050</N>2"
tItem[3100050]["Option3"] = tLargeSaleInMay_Text["OpenHorseGift"]["Option3"]
tItem[3100050]["OptionFunc3"] = "LargeSaleInMay_OpenOptionalGift</N>3100050</N>3"
tItem[3100050]["Option4"] = tLargeSaleInMay_Text["OpenHorseGift"]["Option4"]
tItem[3100050]["OptionFunc4"] = "LargeSaleInMay_OpenOptionalGift</N>3100050</N>4"
tItem[3100050]["Option5"] = tLargeSaleInMay_Text["OpenHorseGift"]["Option5"]
tItem[3100050]["OptionFunc5"] = "LargeSaleInMay_OpenOptionalGift</N>3100050</N>5"
tItem[3100050]["Option6"] = tLargeSaleInMay_Text["CloseGift"]

--冠军服装外套包:4选1
tItem[3100051] = tItem[3100051] or {}
tItem[3100051]["Text1-1"] = {111}
tItem[3100051]["Text111"] = string.format(tLargeSaleInMay_Text["OpenCoatGift"]["Text"],4)
tItem[3100051]["tOption1-1"] = {1,2,3,4,5}
tItem[3100051]["Option1"] = tLargeSaleInMay_Text["OpenCoatGift"]["Option1"]
tItem[3100051]["OptionFunc1"] = "LargeSaleInMay_OpenOptionalGift</N>3100051</N>1"
tItem[3100051]["Option2"] = tLargeSaleInMay_Text["OpenCoatGift"]["Option2"]
tItem[3100051]["OptionFunc2"] = "LargeSaleInMay_OpenOptionalGift</N>3100051</N>2"
tItem[3100051]["Option3"] = tLargeSaleInMay_Text["OpenCoatGift"]["Option3"]
tItem[3100051]["OptionFunc3"] = "LargeSaleInMay_OpenOptionalGift</N>3100051</N>3"
tItem[3100051]["Option4"] = tLargeSaleInMay_Text["OpenCoatGift"]["Option4"]
tItem[3100051]["OptionFunc4"] = "LargeSaleInMay_OpenOptionalGift</N>3100051</N>4"
tItem[3100051]["Option5"] = tLargeSaleInMay_Text["CloseGift"]

--亚军骑宠外套包:4选1
tItem[3100052] = tItem[3100052] or {}
tItem[3100052]["Text1-1"] = {111}
tItem[3100052]["Text111"] = string.format(tLargeSaleInMay_Text["OpenHorseGift"]["Text"],4)
tItem[3100052]["tOption1-1"] = {1,3,4,5,6}
tItem[3100052]["Option1"] = tLargeSaleInMay_Text["OpenHorseGift"]["Option1"]
tItem[3100052]["OptionFunc1"] = "LargeSaleInMay_OpenOptionalGift</N>3100052</N>1"
tItem[3100052]["Option3"] = tLargeSaleInMay_Text["OpenHorseGift"]["Option3"]
tItem[3100052]["OptionFunc3"] = "LargeSaleInMay_OpenOptionalGift</N>3100052</N>3"
tItem[3100052]["Option4"] = tLargeSaleInMay_Text["OpenHorseGift"]["Option4"]
tItem[3100052]["OptionFunc4"] = "LargeSaleInMay_OpenOptionalGift</N>3100052</N>4"
tItem[3100052]["Option5"] = tLargeSaleInMay_Text["OpenHorseGift"]["Option5"]
tItem[3100052]["OptionFunc5"] = "LargeSaleInMay_OpenOptionalGift</N>3100052</N>5"
tItem[3100052]["Option6"] = tLargeSaleInMay_Text["CloseGift"]

--亚军服装外套包：3选1
tItem[3100053] = tItem[3100053] or {}
tItem[3100053]["Text1-1"] = {111}
tItem[3100053]["Text111"] = string.format(tLargeSaleInMay_Text["OpenCoatGift"]["Text"],3)
tItem[3100053]["tOption1-1"] = {1,3,4,5}
tItem[3100053]["Option1"] = tLargeSaleInMay_Text["OpenCoatGift"]["Option1"]
tItem[3100053]["OptionFunc1"] = "LargeSaleInMay_OpenOptionalGift</N>3100053</N>1"
tItem[3100053]["Option3"] = tLargeSaleInMay_Text["OpenCoatGift"]["Option3"]
tItem[3100053]["OptionFunc3"] = "LargeSaleInMay_OpenOptionalGift</N>3100053</N>3"
tItem[3100053]["Option4"] = tLargeSaleInMay_Text["OpenCoatGift"]["Option4"]
tItem[3100053]["OptionFunc4"] = "LargeSaleInMay_OpenOptionalGift</N>3100053</N>4"
tItem[3100053]["Option5"] = tLargeSaleInMay_Text["CloseGift"]

--季军骑宠外套包:3选1
tItem[3100054] = tItem[3100054] or {}
tItem[3100054]["Text1-1"] = {111}
tItem[3100054]["Text111"] = string.format(tLargeSaleInMay_Text["OpenHorseGift"]["Text"],3)
tItem[3100054]["tOption1-1"] = {1,3,4,6}
tItem[3100054]["Option1"] = tLargeSaleInMay_Text["OpenHorseGift"]["Option1"]
tItem[3100054]["OptionFunc1"] = "LargeSaleInMay_OpenOptionalGift</N>3100054</N>1"
tItem[3100054]["Option3"] = tLargeSaleInMay_Text["OpenHorseGift"]["Option3"]
tItem[3100054]["OptionFunc3"] = "LargeSaleInMay_OpenOptionalGift</N>3100054</N>3"
tItem[3100054]["Option4"] = tLargeSaleInMay_Text["OpenHorseGift"]["Option4"]
tItem[3100054]["OptionFunc4"] = "LargeSaleInMay_OpenOptionalGift</N>3100054</N>4"
tItem[3100054]["Option6"] = tLargeSaleInMay_Text["CloseGift"]

--季军服装外套包：2选1
tItem[3100055] = tItem[3100055] or {}
tItem[3100055]["Text1-1"] = {111}
tItem[3100055]["Text111"] = string.format(tLargeSaleInMay_Text["OpenCoatGift"]["Text"],2)
tItem[3100055]["tOption1-1"] = {3,4,5}
tItem[3100055]["Option3"] = tLargeSaleInMay_Text["OpenCoatGift"]["Option3"]
tItem[3100055]["OptionFunc3"] = "LargeSaleInMay_OpenOptionalGift</N>3100055</N>3"
tItem[3100055]["Option4"] = tLargeSaleInMay_Text["OpenCoatGift"]["Option4"]
tItem[3100055]["OptionFunc4"] = "LargeSaleInMay_OpenOptionalGift</N>3100055</N>4"
tItem[3100055]["Option5"] = tLargeSaleInMay_Text["CloseGift"]

--成绩斐然礼包
tItem[3100056] = tItem[3100056] or {}
tItem[3100056]["Function"] = function(nItemId,sItemName)
	LargeSaleInMay_OpenGift(nItemId)
end
--背包空间不足1个空间
tItem[3100056]["Text1-1"] = {111}
tItem[3100056]["Text111"] = string.format(tLargeSaleInMay_Text[3100056]["Text111"],tLargeSaleInMay_Item[3100056]["Space"])
tItem[3100056]["tOption1-1"] = {1}
tItem[3100056]["Option5"] = tLargeSaleInMay_Text[3100056]["Option1"]