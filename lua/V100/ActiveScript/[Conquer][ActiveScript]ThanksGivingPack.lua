----------------------------------------------------------------------------
--Name:171020[英文征服][活动脚本]感恩回馈签到礼包
--Creator:兰冬梅
--Created:	2017/10/20
----------------------------------------------------------------------------
--ThanksGivingPack
--lua.ini:40727
--LogId:12000917
--掩码(168,97)当日开启礼包次数

local tThanksGivingPack_Stc ={}

	tThanksGivingPack_Stc[1] ={}
	tThanksGivingPack_Stc[1]["EventType"] =168
	tThanksGivingPack_Stc[1]["DataType"] =97

local tThanksGivingPack_Reward ={}

	tThanksGivingPack_Reward[3306211] ={}
	
	--11月16日  300CP
	tThanksGivingPack_Reward[3306211][1] ={}
	tThanksGivingPack_Reward[3306211][1]["RewardEffect"] = {}
	tThanksGivingPack_Reward[3306211][1]["RewardEffect"]["SzObj"] = "self"
	tThanksGivingPack_Reward[3306211][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tThanksGivingPack_Reward[3306211][1]["RewardEMoneyMono"] ={}
	tThanksGivingPack_Reward[3306211][1]["RewardEMoneyMono"]["Value"] =300
	tThanksGivingPack_Reward[3306211][1]["LogId"] =12000917
	
	--11月17日 气力值1000点
	tThanksGivingPack_Reward[3306211][2] ={}
	tThanksGivingPack_Reward[3306211][2]["RewardEffect"] = {}
	tThanksGivingPack_Reward[3306211][2]["RewardEffect"]["SzObj"] = "self"
	tThanksGivingPack_Reward[3306211][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tThanksGivingPack_Reward[3306211][2]["RewardStrengthValue"] ={}
	tThanksGivingPack_Reward[3306211][2]["RewardStrengthValue"]["Value"] =1000
	tThanksGivingPack_Reward[3306211][2]["LogId"] =12000917
	
	--11月18日 祈愿石中*2
	tThanksGivingPack_Reward[3306211][3] ={}
	tThanksGivingPack_Reward[3306211][3]["RewardEffect"] = {}
	tThanksGivingPack_Reward[3306211][3]["RewardEffect"]["SzObj"] = "self"
	tThanksGivingPack_Reward[3306211][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tThanksGivingPack_Reward[3306211][3]["RewardItem"] ={}
	tThanksGivingPack_Reward[3306211][3]["RewardItem"][1] ={}
	tThanksGivingPack_Reward[3306211][3]["RewardItem"][1]["Id"] =1200001
	tThanksGivingPack_Reward[3306211][3]["RewardItem"][1]["Attr"] ="0 2 3"
	tThanksGivingPack_Reward[3306211][3]["LogId"] =12000917
	
	--11月19日 明亮星陨石*2
	tThanksGivingPack_Reward[3306211][4] ={}
	tThanksGivingPack_Reward[3306211][4]["RewardEffect"] = {}
	tThanksGivingPack_Reward[3306211][4]["RewardEffect"]["SzObj"] = "self"
	tThanksGivingPack_Reward[3306211][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tThanksGivingPack_Reward[3306211][4]["RewardItem"] ={}
	tThanksGivingPack_Reward[3306211][4]["RewardItem"][1] ={}
	tThanksGivingPack_Reward[3306211][4]["RewardItem"][1]["Id"] =3009001
	tThanksGivingPack_Reward[3306211][4]["RewardItem"][1]["Attr"] ="0 2 0 2880 1"
	tThanksGivingPack_Reward[3306211][4]["LogId"] =12000917
	
	--11月20日 日常任务重置符
	tThanksGivingPack_Reward[3306211][5] ={}
	tThanksGivingPack_Reward[3306211][5]["RewardEffect"] = {}
	tThanksGivingPack_Reward[3306211][5]["RewardEffect"]["SzObj"] = "self"
	tThanksGivingPack_Reward[3306211][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tThanksGivingPack_Reward[3306211][5]["RewardItem"] ={}
	tThanksGivingPack_Reward[3306211][5]["RewardItem"][1] ={}
	tThanksGivingPack_Reward[3306211][5]["RewardItem"][1]["Id"] =3001407
	tThanksGivingPack_Reward[3306211][5]["RewardItem"][1]["Attr"] ="0 1 3"
	tThanksGivingPack_Reward[3306211][5]["LogId"] =12000917
	
	--11月21日 奇妙大风车武器外套 神佑1% 7天时效
	tThanksGivingPack_Reward[3306211][6] ={}
	tThanksGivingPack_Reward[3306211][6]["RewardEffect"] = {}
	tThanksGivingPack_Reward[3306211][6]["RewardEffect"]["SzObj"] = "self"
	tThanksGivingPack_Reward[3306211][6]["RewardEffect"]["Effect"] = "zf2-e128"
	tThanksGivingPack_Reward[3306211][6]["RewardItem"] ={}
	tThanksGivingPack_Reward[3306211][6]["RewardItem"][1] ={}
	tThanksGivingPack_Reward[3306211][6]["RewardItem"][1]["Id"] =360172
	tThanksGivingPack_Reward[3306211][6]["RewardItem"][1]["Attr"] ="0 1 3 10080 1 0 0 1"
	tThanksGivingPack_Reward[3306211][6]["LogId"] =12000917
	
	--11月22日 清心符*3
	tThanksGivingPack_Reward[3306211][7] ={}
	tThanksGivingPack_Reward[3306211][7]["RewardEffect"] = {}
	tThanksGivingPack_Reward[3306211][7]["RewardEffect"]["SzObj"] = "self"
	tThanksGivingPack_Reward[3306211][7]["RewardEffect"]["Effect"] = "zf2-e128"
	tThanksGivingPack_Reward[3306211][7]["RewardItem"] ={}
	tThanksGivingPack_Reward[3306211][7]["RewardItem"][1] ={}
	tThanksGivingPack_Reward[3306211][7]["RewardItem"][1]["Id"] =723727
	tThanksGivingPack_Reward[3306211][7]["RewardItem"][1]["Attr"] ="0 3 3"
	tThanksGivingPack_Reward[3306211][7]["LogId"] =12000917
	
	--11月23日 修行值1000点
	tThanksGivingPack_Reward[3306211][8] ={}
	tThanksGivingPack_Reward[3306211][8]["RewardEffect"] = {}
	tThanksGivingPack_Reward[3306211][8]["RewardEffect"]["SzObj"] = "self"
	tThanksGivingPack_Reward[3306211][8]["RewardEffect"]["Effect"] = "zf2-e128"
	tThanksGivingPack_Reward[3306211][8]["RewardCultivation"] ={}
	tThanksGivingPack_Reward[3306211][8]["RewardCultivation"]["Value"] =1000
	tThanksGivingPack_Reward[3306211][8]["LogId"] =12000917
	
	--11月24日 气力值2000点
	tThanksGivingPack_Reward[3306211][9] ={}
	tThanksGivingPack_Reward[3306211][9]["RewardEffect"] = {}
	tThanksGivingPack_Reward[3306211][9]["RewardEffect"]["SzObj"] = "self"
	tThanksGivingPack_Reward[3306211][9]["RewardEffect"]["Effect"] = "zf2-e128"
	tThanksGivingPack_Reward[3306211][9]["RewardStrengthValue"] ={}
	tThanksGivingPack_Reward[3306211][9]["RewardStrengthValue"]["Value"] =2000
	tThanksGivingPack_Reward[3306211][9]["LogId"] =12000917
	
	--11月25日 明亮星陨石*6
	tThanksGivingPack_Reward[3306211][10] ={}
	tThanksGivingPack_Reward[3306211][10]["RewardEffect"] = {}
	tThanksGivingPack_Reward[3306211][10]["RewardEffect"]["SzObj"] = "self"
	tThanksGivingPack_Reward[3306211][10]["RewardEffect"]["Effect"] = "zf2-e128"
	tThanksGivingPack_Reward[3306211][10]["RewardItem"] ={}
	tThanksGivingPack_Reward[3306211][10]["RewardItem"][1] ={}
	tThanksGivingPack_Reward[3306211][10]["RewardItem"][1]["Id"] =3009001
	tThanksGivingPack_Reward[3306211][10]["RewardItem"][1]["Attr"] ="0 6 0 2880 1"
	tThanksGivingPack_Reward[3306211][10]["LogId"] =12000917
	
	--11月26日 赤炼石+4
	tThanksGivingPack_Reward[3306211][11] ={}
	tThanksGivingPack_Reward[3306211][11]["RewardEffect"] = {}
	tThanksGivingPack_Reward[3306211][11]["RewardEffect"]["SzObj"] = "self"
	tThanksGivingPack_Reward[3306211][11]["RewardEffect"]["Effect"] = "zf2-e128"
	tThanksGivingPack_Reward[3306211][11]["RewardItem"] ={}
	tThanksGivingPack_Reward[3306211][11]["RewardItem"][1] ={}
	tThanksGivingPack_Reward[3306211][11]["RewardItem"][1]["Id"] =730004
	tThanksGivingPack_Reward[3306211][11]["RewardItem"][1]["Attr"] ="0 1 3"
	tThanksGivingPack_Reward[3306211][11]["LogId"] =12000917
	
	--11月27日 龙珠*2
	tThanksGivingPack_Reward[3306211][12] ={}
	tThanksGivingPack_Reward[3306211][12]["RewardEffect"] = {}
	tThanksGivingPack_Reward[3306211][12]["RewardEffect"]["SzObj"] = "self"
	tThanksGivingPack_Reward[3306211][12]["RewardEffect"]["Effect"] = "zf2-e128"
	tThanksGivingPack_Reward[3306211][12]["RewardItem"] ={}
	tThanksGivingPack_Reward[3306211][12]["RewardItem"][1] ={}
	tThanksGivingPack_Reward[3306211][12]["RewardItem"][1]["Id"] =1088000
	tThanksGivingPack_Reward[3306211][12]["RewardItem"][1]["Attr"] ="0 2 3"
	tThanksGivingPack_Reward[3306211][12]["LogId"] =12000917
	
	--11月28日气力值3000点
	tThanksGivingPack_Reward[3306211][13] ={}
	tThanksGivingPack_Reward[3306211][13]["RewardEffect"] = {}
	tThanksGivingPack_Reward[3306211][13]["RewardEffect"]["SzObj"] = "self"
	tThanksGivingPack_Reward[3306211][13]["RewardEffect"]["Effect"] = "zf2-e128"
	tThanksGivingPack_Reward[3306211][13]["RewardStrengthValue"] ={}
	tThanksGivingPack_Reward[3306211][13]["RewardStrengthValue"]["Value"] =3000
	tThanksGivingPack_Reward[3306211][13]["LogId"] =12000917
	
	--11月29日 500CP
	tThanksGivingPack_Reward[3306211][14] ={}
	tThanksGivingPack_Reward[3306211][14]["RewardEffect"] = {}
	tThanksGivingPack_Reward[3306211][14]["RewardEffect"]["SzObj"] = "self"
	tThanksGivingPack_Reward[3306211][14]["RewardEffect"]["Effect"] = "zf2-e128"
	tThanksGivingPack_Reward[3306211][14]["RewardEMoneyMono"] ={}
	tThanksGivingPack_Reward[3306211][14]["RewardEMoneyMono"]["Value"] =500
	tThanksGivingPack_Reward[3306211][14]["LogId"] =12000917
	
	--11月30日 至善神羚【羊年绝版】赠 神佑1% 30天时效
	tThanksGivingPack_Reward[3306211][15] ={}
	tThanksGivingPack_Reward[3306211][15]["RewardEffect"] = {}
	tThanksGivingPack_Reward[3306211][15]["RewardEffect"]["SzObj"] = "self"
	tThanksGivingPack_Reward[3306211][15]["RewardEffect"]["Effect"] = "zf2-e128"
	tThanksGivingPack_Reward[3306211][15]["RewardItem"] ={}
	tThanksGivingPack_Reward[3306211][15]["RewardItem"][1] ={}
	tThanksGivingPack_Reward[3306211][15]["RewardItem"][1]["Id"] =200524
	tThanksGivingPack_Reward[3306211][15]["RewardItem"][1]["Attr"] ="0 1 3 43200 1 0 0 1"
	tThanksGivingPack_Reward[3306211][15]["LogId"] =12000917
------------------------------逻辑部分-------------------------------
function ThanksGivingPack_UseItem(nItemId)
	--判断是否在活动时间
	if not Sys_ChkFullTime(tActivityTime["ThanksGivingPack"]["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Sys_MsgBox(tThanksGivingPack_Text[nItemId]["OutTime"])
		end
		return
	end
	
	---初始化对白
	local nIndex = 0
	local nIndexNext =0
	
	for i,v in ipairs(tActivityTime["ThanksGivingPack"]) do
		if Sys_ChkFullTime(v) then
			nIndex = i
			nIndexNext = i+1
			break
		end
	end
	--不在领取时间
	if nIndex == 0 then
		return
	end
	
	tItem[nItemId]["Text113"] = string.format(tThanksGivingPack_Text[nItemId]["Text113"],tThanksGivingPack_Text[nItemId][nIndex]["Name"])

	if nIndex == 15 then
		tItem[nItemId]["Text114"] =""
		--最后一次领取 删除礼盒
		tThanksGivingPack_Reward[nItemId][nIndex]["DeleteItem"] = {}
		tThanksGivingPack_Reward[nItemId][nIndex]["DeleteItem"][1] = {}
		tThanksGivingPack_Reward[nItemId][nIndex]["DeleteItem"][1]["Id"] =nItemId
	else 
		tItem[nItemId]["Text114"] = string.format(tThanksGivingPack_Text[nItemId]["Text114"],tThanksGivingPack_Text[nItemId][nIndexNext]["Name"])
	end
	
	tItem[nItemId]["OptionFunc111"] = "ThanksGivingPack_GetReward</N>"..nItemId.."</N>"..nIndex
	LinkItemGossipFunc_New(nItemId,"1-1")
	
end

function ThanksGivingPack_GetReward(nItemId,nIndex)

	if not Item_ChkItem(nItemId) then
		return
	end
	--隔天清掩码
	if Task_StcInterval(tThanksGivingPack_Stc[1]["EventType"],tThanksGivingPack_Stc[1]["DataType"],1,4) then
		Task_SetStatistic(tThanksGivingPack_Stc[1]["EventType"],tThanksGivingPack_Stc[1]["DataType"],0,1)
		Task_SetStcTimestamp(tThanksGivingPack_Stc[1]["EventType"],tThanksGivingPack_Stc[1]["DataType"],0)
	end
	
	--当日已使用
	if not Task_ChkStcValue(tThanksGivingPack_Stc[1]["EventType"],tThanksGivingPack_Stc[1]["DataType"],"==",0) then
		Sys_MsgBox(tThanksGivingPack_Text[nItemId]["OpenOnce"])
		return
	end
	
	--背包判断
	local nSpace = RewardTemplate_GetRewardSpace(tThanksGivingPack_Reward[nItemId][nIndex])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tThanksGivingPack_Text[nItemId]["NoSpace"],nSpace))
		return 
	end
	
	--天石赠满
	local nEmoney = Get_UserMonoEMoney()
	if tThanksGivingPack_Reward[nItemId][nIndex]["RewardEMoneyMono"] ~=nil then
		local nAddEmoney = tThanksGivingPack_Reward[nItemId][nIndex]["RewardEMoneyMono"]["Value"]
		if nEmoney + nAddEmoney > G_User_MaxEmoneyMono then
			Sys_MsgBox(tThanksGivingPack_Text[nItemId]["EMoneyMono"])
			return
		end
	end
	--记录掩码
	Task_SetStatistic(tThanksGivingPack_Stc[1]["EventType"],tThanksGivingPack_Stc[1]["DataType"],1,1)
	Task_SetStcTimestamp(tThanksGivingPack_Stc[1]["EventType"],tThanksGivingPack_Stc[1]["DataType"],0)
	
	--给奖品
	RewardTemplate_UseItem(tThanksGivingPack_Reward[nItemId][nIndex])
end
---------------------------物品配置-------------------------------
--感恩回馈签到礼盒
tItem[3306211] = tItem[3306211] or {}
tItem[3306211]["Function"] = function(nItemId,sItemName)
	ThanksGivingPack_UseItem(nItemId)
end

tItem[3306211]["DialogueText"] = tThanksGivingPack_Text[3306211]

tItem[3306211]["Text1-1"] = {111,112,113,114,115}
tItem[3306211]["tOption1-1"] ={111,112,113}
tItem[3306211]["OptionPoint112"] ="2-1"

tItem[3306211]["Text2-1"] = {121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138}
tItem[3306211]["tOption2-1"] ={121}