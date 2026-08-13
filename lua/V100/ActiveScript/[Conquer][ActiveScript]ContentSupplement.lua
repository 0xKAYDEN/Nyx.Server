------------------------------------------------------------------------------------
--Name：        190218[简体征服][活动脚本]雷神版本上线内容补充
--Creator:      耿力兀
--Created:     2019-02-18
------------------------------------------------------------------------------------
--任务需求：
--雷神版本上线弹宣传图
--旧功能的背包信都砍掉
--写版本更新背包信，打开后介绍版本更新内容，并获得奖励。
--（礼包80级侠士才可获得礼包）
------------------------------------------------------------------------------------
--前缀：ContentSupplement_
--掩码：-- stc(190,23) 背包信
		-- stc(190,24) 上线宣传图
--logId  12001299
----------------------------------表配置部分--------------------------------------------
--掩码
local tContentSupplement_Stc={}
	tContentSupplement_Stc["LoginEvent"]=190
	tContentSupplement_Stc["LoginType"]=24

local tContentSupplement_Data={}
	tContentSupplement_Data["Level"] = 80 	--等级需求
	tContentSupplement_Data["Metempsychosis"] = 0		--转世需求
	tContentSupplement_Data["PicId"] = 1048	--宣传图id
	tContentSupplement_Data["NpcId"] = 23792
	
local tContentSupplement_Package={}
	tContentSupplement_Package[3312053]={}
	tContentSupplement_Package[3312053]["ItemChanceSum"]=10000	
	--15%赤炼石+1
	tContentSupplement_Package[3312053][1]={}
	tContentSupplement_Package[3312053][1]["RandomItemChanceType"]=2
	tContentSupplement_Package[3312053][1]["ItemChance"]=1500
	tContentSupplement_Package[3312053][1]["RewardItem"]={}
	tContentSupplement_Package[3312053][1]["RewardItem"][1]={}
	tContentSupplement_Package[3312053][1]["RewardItem"][1]["Id"]=730001
	tContentSupplement_Package[3312053][1]["RewardItem"][1]["Attr"]="0 1 3 10080 1" 
	tContentSupplement_Package[3312053][1]["RewardEffect"]={}
	tContentSupplement_Package[3312053][1]["RewardEffect"]["Effect"] = "angelwing"
	tContentSupplement_Package[3312053][1]["LogId"]=12001299
	--27.5%赤炼石+2
	tContentSupplement_Package[3312053][2]={}
	tContentSupplement_Package[3312053][2]["RandomItemChanceType"]=2
	tContentSupplement_Package[3312053][2]["ItemChance"]=2750
	tContentSupplement_Package[3312053][2]["RewardItem"]={}
	tContentSupplement_Package[3312053][2]["RewardItem"][1]={}
	tContentSupplement_Package[3312053][2]["RewardItem"][1]["Id"]=730002
	tContentSupplement_Package[3312053][2]["RewardItem"][1]["Attr"]="0 1 3 10080 1" 
	tContentSupplement_Package[3312053][2]["RewardEffect"]={}
	tContentSupplement_Package[3312053][2]["RewardEffect"]["Effect"] = "angelwing"
	tContentSupplement_Package[3312053][2]["LogId"]=12001299
	--0.5%赤炼石+5
	tContentSupplement_Package[3312053][3]={}
	tContentSupplement_Package[3312053][3]["RandomItemChanceType"]=2
	tContentSupplement_Package[3312053][3]["ItemChance"]=50
	tContentSupplement_Package[3312053][3]["RewardItem"]={}
	tContentSupplement_Package[3312053][3]["RewardItem"][1]={}
	tContentSupplement_Package[3312053][3]["RewardItem"][1]["Id"]=730005
	tContentSupplement_Package[3312053][3]["RewardItem"][1]["Attr"]="0 1 3 10080 1" 
	tContentSupplement_Package[3312053][3]["RewardBroadCast"] = tContentSupplement_Text["MsgReward"][1]
	tContentSupplement_Package[3312053][3]["RewardEffect"]={}
	tContentSupplement_Package[3312053][3]["RewardEffect"]["Effect"] = "angelwing"
	tContentSupplement_Package[3312053][3]["LogId"]=12001299
	--15%微光星陨石
	tContentSupplement_Package[3312053][4]={}
	tContentSupplement_Package[3312053][4]["RandomItemChanceType"]=2
	tContentSupplement_Package[3312053][4]["ItemChance"]=1500
	tContentSupplement_Package[3312053][4]["RewardItem"]={}
	tContentSupplement_Package[3312053][4]["RewardItem"][1]={}
	tContentSupplement_Package[3312053][4]["RewardItem"][1]["Id"]=3009000
	tContentSupplement_Package[3312053][4]["RewardItem"][1]["Attr"]="0 1 0 2880 1" 
	tContentSupplement_Package[3312053][4]["RewardEffect"]={}
	tContentSupplement_Package[3312053][4]["RewardEffect"]["Effect"] = "angelwing"
	tContentSupplement_Package[3312053][4]["LogId"]=12001299
	--10%明亮星陨石
	tContentSupplement_Package[3312053][5]={}
	tContentSupplement_Package[3312053][5]["RandomItemChanceType"]=2
	tContentSupplement_Package[3312053][5]["ItemChance"]=1000
	tContentSupplement_Package[3312053][5]["RewardItem"]={}
	tContentSupplement_Package[3312053][5]["RewardItem"][1]={}
	tContentSupplement_Package[3312053][5]["RewardItem"][1]["Id"]=3009001
	tContentSupplement_Package[3312053][5]["RewardItem"][1]["Attr"]="0 1 0 2880 1" 
	tContentSupplement_Package[3312053][5]["RewardEffect"]={}
	tContentSupplement_Package[3312053][5]["RewardEffect"]["Effect"] = "angelwing"
	tContentSupplement_Package[3312053][5]["LogId"]=12001299	
	--0.5%晶莹星陨石
	tContentSupplement_Package[3312053][6]={}
	tContentSupplement_Package[3312053][6]["RandomItemChanceType"]=2
	tContentSupplement_Package[3312053][6]["ItemChance"]=50
	tContentSupplement_Package[3312053][6]["RewardItem"]={}
	tContentSupplement_Package[3312053][6]["RewardItem"][1]={}
	tContentSupplement_Package[3312053][6]["RewardItem"][1]["Id"]=3009002
	tContentSupplement_Package[3312053][6]["RewardItem"][1]["Attr"]="0 1 0 2880 1" 
	tContentSupplement_Package[3312053][6]["RewardBroadCast"] = tContentSupplement_Text["MsgReward"][2]
	tContentSupplement_Package[3312053][6]["RewardEffect"]={}
	tContentSupplement_Package[3312053][6]["RewardEffect"]["Effect"] = "angelwing"
	tContentSupplement_Package[3312053][6]["LogId"]=12001299
	--25% 100气力值
	tContentSupplement_Package[3312053][7]={}
	tContentSupplement_Package[3312053][7]["RandomItemChanceType"]=2
	tContentSupplement_Package[3312053][7]["ItemChance"]=2500
	tContentSupplement_Package[3312053][7]["RewardStrengthValue"]={}
	tContentSupplement_Package[3312053][7]["RewardStrengthValue"]["Value"] =100
	tContentSupplement_Package[3312053][7]["RewardEffect"]={}
	tContentSupplement_Package[3312053][7]["RewardEffect"]["Effect"] = "angelwing"
	tContentSupplement_Package[3312053][7]["LogId"]=12001299
	--6% 500气力值
	tContentSupplement_Package[3312053][8]={}
	tContentSupplement_Package[3312053][8]["RandomItemChanceType"]=2
	tContentSupplement_Package[3312053][8]["ItemChance"]=600
	tContentSupplement_Package[3312053][8]["RewardStrengthValue"]={}
	tContentSupplement_Package[3312053][8]["RewardStrengthValue"]["Value"] =500
	tContentSupplement_Package[3312053][8]["RewardEffect"]={}
	tContentSupplement_Package[3312053][8]["RewardEffect"]["Effect"] = "angelwing"
	tContentSupplement_Package[3312053][8]["LogId"]=12001299
	--0.5% 2000气力值
	tContentSupplement_Package[3312053][9]={}
	tContentSupplement_Package[3312053][9]["RandomItemChanceType"]=2
	tContentSupplement_Package[3312053][9]["ItemChance"]=50
	tContentSupplement_Package[3312053][9]["RewardStrengthValue"]={}
	tContentSupplement_Package[3312053][9]["RewardStrengthValue"]["Value"] =2000
	tContentSupplement_Package[3312053][9]["RewardBroadCast"] = tContentSupplement_Text["MsgReward"][3]
	tContentSupplement_Package[3312053][9]["LogId"]=12001299	
	tContentSupplement_Package[3312053][9]["RewardEffect"]={}
	tContentSupplement_Package[3312053][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 3000气力值
	tContentSupplement_Package[1] = {}
	tContentSupplement_Package[1]["RewardItem"] = {}
	tContentSupplement_Package[1]["RewardItem"][1] = {}
	tContentSupplement_Package[1]["RewardItem"][1]["Id"] = 3008198
	tContentSupplement_Package[1]["RewardItem"][1]["Attr"] = "0 1"
	tContentSupplement_Package[1]["RewardEffect"]={}
	tContentSupplement_Package[1]["RewardEffect"]["Effect"] = "angelwing"
	tContentSupplement_Package[1]["LogId"]=12001299
	
----------------------------------逻辑部分---------------------------------------------
--上线触发
function ContentSupplement_Login()
	if Sys_ChkFullTime(tActivityTime["ContentSupplement"]["ActiveTime"]) then 
		ContentSupplement_ShowPic()
	end 
end

--宣传图
function ContentSupplement_ShowPic()
	local nEvent=tContentSupplement_Stc["LoginEvent"]
	local nType=tContentSupplement_Stc["LoginType"] 
	if Task_ChkStcValue(nEvent,nType,"==",0) then
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		User_NoviceTeaching(tContentSupplement_Data["PicId"])
	end 
end

--使用礼盒
function ContentSupplement_UseItem(nItemId)
	--背包空间判断
	local nPackageSpace = RewardTemplate_GetRandomSpace(tContentSupplement_Package,nItemId)
	if not User_CheckLeftSpace(nPackageSpace) then
		Sys_MsgBox(tContentSupplement_Text["NoSpace"])
		return
	end
	-- 出对白
	LinkItemGossipFunc_New(nItemId,"1-1")
end 

function ContentSupplement_UsePackge(nItemId)
	--背包空间判断
	local nPackageSpace = RewardTemplate_GetRandomSpace(tContentSupplement_Package,nItemId)
	local nSpace=nPackageSpace + 1
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tContentSupplement_Text["NoSpace"])
		return
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
		--给奖励
		RewardTemplate_UseItem(tContentSupplement_Package[1])
		local tNewReward,sRewardStr=RewardTemplate_NewRandom(tContentSupplement_Package,nItemId)
		--奖励提示及寻路
		local sRewardText=string.format(tContentSupplement_Text["Reward"],sRewardStr)
		local nUserId = Get_UserId()
		local sFunc = string.format("ContentSupplement_FindNPC</N>%d",nItemId)
		Sys_MsgBox(sRewardText,sFunc,nil,nUserId)
	end
end 
--寻路NPC
function ContentSupplement_FindNPC(nItemId)
	NpcPosition_PathFind(tContentSupplement_Data["NpcId"])
end 
---------------------------------物品部分---------------------------------------------
tItemFace[3312053] = 2108
tItem[3312053] = tItem[3312053] or {}
tItem[3312053]["Function"]=function(nItemId,sItemName)
	ContentSupplement_UseItem(nItemId)
end
tItem[3312053]["Text1-1"] = {111,112,113,114,115,116}
tItem[3312053]["Text111"]=tContentSupplement_Text[3312053]["Text111"]
tItem[3312053]["Text112"]=tContentSupplement_Text[3312053]["Text112"]
tItem[3312053]["Text113"]=tContentSupplement_Text[3312053]["Text113"]
tItem[3312053]["Text114"]=tContentSupplement_Text[3312053]["Text114"]
tItem[3312053]["Text115"]=tContentSupplement_Text[3312053]["Text115"]
tItem[3312053]["Text116"]=tContentSupplement_Text[3312053]["Text116"]
tItem[3312053]["tOption1-1"] = {111,112}
tItem[3312053]["Option111"] = tContentSupplement_Text[3312053]["Option111"]
tItem[3312053]["OptionFunc111"]="ContentSupplement_UsePackge</N>3312053"
tItem[3312053]["Option112"] = tContentSupplement_Text[3312053]["Option112"]
tItem[3312053]["OptionFunc112"]="ContentSupplement_FindNPC</N>3312053"

--上线触发
 -- table.insert(tSystem_PlayLogin_Func,ContentSupplement_Login)