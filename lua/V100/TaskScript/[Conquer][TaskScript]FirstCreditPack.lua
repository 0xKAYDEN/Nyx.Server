------------------------------------------------------------------------------------
--Name:			[英文征服][任务脚本]游戏内首充优化制作
--Creator: 		翁清海
--Created:		2016/12/15
------------------------------------------------------------------------------------

--命名前缀
--First_Credit_Pack_

--logid:12000606

local tFirst_Credit_Pack_Reward = {}
	--流星卷(赠)
	tFirst_Credit_Pack_Reward[3301827] = {}
	tFirst_Credit_Pack_Reward[3301827]["RewardItem"] = {}
	tFirst_Credit_Pack_Reward[3301827]["RewardItem"][1] = {}
	tFirst_Credit_Pack_Reward[3301827]["RewardItem"][1]["Id"] = 1088001
	tFirst_Credit_Pack_Reward[3301827]["RewardItem"][1]["Attr"] = "0 10 3"
	tFirst_Credit_Pack_Reward[3301827]["LogId"] = 12000606
	tFirst_Credit_Pack_Reward[3301827]["DeleteItem"]={}
	tFirst_Credit_Pack_Reward[3301827]["DeleteItem"][1]={}
	tFirst_Credit_Pack_Reward[3301827]["DeleteItem"][1]["Id"]=3301827
	--明亮星陨石*5
	tFirst_Credit_Pack_Reward[3301828] = {}
	tFirst_Credit_Pack_Reward[3301828]["RewardItem"] = {}
	tFirst_Credit_Pack_Reward[3301828]["RewardItem"][1] = {}
	tFirst_Credit_Pack_Reward[3301828]["RewardItem"][1]["Id"] = 3009001
	tFirst_Credit_Pack_Reward[3301828]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tFirst_Credit_Pack_Reward[3301828]["LogId"] = 12000606
	tFirst_Credit_Pack_Reward[3301828]["DeleteItem"]={}
	tFirst_Credit_Pack_Reward[3301828]["DeleteItem"][1]={}
	tFirst_Credit_Pack_Reward[3301828]["DeleteItem"][1]["Id"]=3301828
	--IvoryRobe外套
	tFirst_Credit_Pack_Reward[3301829] = {}
	tFirst_Credit_Pack_Reward[3301829]["RewardItem"] = {}
	tFirst_Credit_Pack_Reward[3301829]["RewardItem"][1] = {}
	tFirst_Credit_Pack_Reward[3301829]["RewardItem"][1]["Id"] = 188175
	tFirst_Credit_Pack_Reward[3301829]["RewardItem"][1]["Attr"] = "0 1 3 21600 0 0 0 1"
	tFirst_Credit_Pack_Reward[3301829]["LogId"] = 12000606
	tFirst_Credit_Pack_Reward[3301829]["DeleteItem"]={}
	tFirst_Credit_Pack_Reward[3301829]["DeleteItem"][1]={}
	tFirst_Credit_Pack_Reward[3301829]["DeleteItem"][1]["Id"]=3301829
	--流星卷(赠)*3
	tFirst_Credit_Pack_Reward[3301830] = {}
	tFirst_Credit_Pack_Reward[3301830]["RewardItem"] = {}
	tFirst_Credit_Pack_Reward[3301830]["RewardItem"][1] = {}
	tFirst_Credit_Pack_Reward[3301830]["RewardItem"][1]["Id"] = 3301827
	tFirst_Credit_Pack_Reward[3301830]["RewardItem"][1]["Attr"] = "0 3"
	tFirst_Credit_Pack_Reward[3301830]["LogId"] = 12000606
	tFirst_Credit_Pack_Reward[3301830]["DeleteItem"]={}
	tFirst_Credit_Pack_Reward[3301830]["DeleteItem"][1]={}
	tFirst_Credit_Pack_Reward[3301830]["DeleteItem"][1]["Id"]=3301830
	
--------------------------------------物品模板-------------------------------------------
for i = 3301827, 3301830 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemTypeId,sItemName)
		RewardTemplate_UseItemAndMsg(tFirst_Credit_Pack_Reward[nItemTypeId])
	end
end
