------------------------------------------------------------------------------------
--Name：        190213[英文征服][活动脚本]雷神媒介礼包及发奖action(3.12)
--Creator:      耿力兀
--Created:     2019-02-13
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--前缀：ThorMediaKit_
--LogId: 12001294

----------------------------------表配置部分--------------------------------------------
local tThorMediaKit_Award={}
	tThorMediaKit_Award[3320162]={}
	tThorMediaKit_Award[3320162]["RewardItem"]={}
	--绑定经验球*7
	tThorMediaKit_Award[3320162]["RewardItem"][1]={}
	tThorMediaKit_Award[3320162]["RewardItem"][1]["Id"]=723700
	tThorMediaKit_Award[3320162]["RewardItem"][1]["Attr"]="0 7 3"
	--绑定双倍药水*7
	tThorMediaKit_Award[3320162]["RewardItem"][2]={}
	tThorMediaKit_Award[3320162]["RewardItem"][2]["Id"]=723017
	tThorMediaKit_Award[3320162]["RewardItem"][2]["Attr"]="0 7 3"
	--绑定7天祈愿石
	tThorMediaKit_Award[3320162]["RewardItem"][3]={}
	tThorMediaKit_Award[3320162]["RewardItem"][3]["Id"]=1200001
	tThorMediaKit_Award[3320162]["RewardItem"][3]["Attr"]="0 1 3"
	--绑定流星卷*7
	tThorMediaKit_Award[3320162]["RewardItem"][4]={}
	tThorMediaKit_Award[3320162]["RewardItem"][4]["Id"]=3004879
	tThorMediaKit_Award[3320162]["RewardItem"][4]["Attr"]="0 1 3"
	--绑定绑定赤炼石+1 *7 
	tThorMediaKit_Award[3320162]["RewardItem"][5]={}
	tThorMediaKit_Award[3320162]["RewardItem"][5]["Id"]=3004880
	tThorMediaKit_Award[3320162]["RewardItem"][5]["Attr"]="0 1 3"
	--+3随机马礼包
	tThorMediaKit_Award[3320162]["RewardItem"][6]={}
	tThorMediaKit_Award[3320162]["RewardItem"][6]["Id"]=3320163
	tThorMediaKit_Award[3320162]["RewardItem"][6]["Attr"]="0 1 3"
	--坐骑三选一礼包
	tThorMediaKit_Award[3320162]["RewardItem"][7]={}
	tThorMediaKit_Award[3320162]["RewardItem"][7]["Id"]=3312038
	tThorMediaKit_Award[3320162]["RewardItem"][7]["Attr"]="0 1 3"
	--套装三选一礼包
	tThorMediaKit_Award[3320162]["RewardItem"][8]={}
	tThorMediaKit_Award[3320162]["RewardItem"][8]["Id"]=3312039
	tThorMediaKit_Award[3320162]["RewardItem"][8]["Attr"]="0 1 3"
	tThorMediaKit_Award[3320162]["DeleteItem"] = {}
	tThorMediaKit_Award[3320162]["DeleteItem"][1] = {} 
	tThorMediaKit_Award[3320162]["DeleteItem"][1]["Id"] = 3320162
	tThorMediaKit_Award[3320162]["LogId"]=12001294
--随机+3马
	tThorMediaKit_Award[3320163]={}
	tThorMediaKit_Award[3320163]["ItemChanceSum"]=9000
	--+3枣红马         
	tThorMediaKit_Award[3320163][1]={}
	tThorMediaKit_Award[3320163][1]["RandomItemChanceType"]=2
	tThorMediaKit_Award[3320163][1]["ItemChance"]=3000
	tThorMediaKit_Award[3320163][1]["RewardItem"]={}
	tThorMediaKit_Award[3320163][1]["RewardItem"][1]={}
	tThorMediaKit_Award[3320163][1]["RewardItem"][1]["Id"]=3001063
	tThorMediaKit_Award[3320163][1]["RewardItem"][1]["Attr"]="0 1 3"
	tThorMediaKit_Award[3320163][1]["LogId"]=12001294
	--+3雪脂马        
	tThorMediaKit_Award[3320163][2]={}
	tThorMediaKit_Award[3320163][2]["RandomItemChanceType"]=2
	tThorMediaKit_Award[3320163][2]["ItemChance"]=3000
	tThorMediaKit_Award[3320163][2]["RewardItem"]={}
	tThorMediaKit_Award[3320163][2]["RewardItem"][1]={}
	tThorMediaKit_Award[3320163][2]["RewardItem"][1]["Id"]=3001064
	tThorMediaKit_Award[3320163][2]["RewardItem"][1]["Attr"]="0 1 3"
	tThorMediaKit_Award[3320163][2]["LogId"]=12001294
	--+3黑颈马         
	tThorMediaKit_Award[3320163][3]={}
	tThorMediaKit_Award[3320163][3]["RandomItemChanceType"]=2
	tThorMediaKit_Award[3320163][3]["ItemChance"]=3000
	tThorMediaKit_Award[3320163][3]["RewardItem"]={}
	tThorMediaKit_Award[3320163][3]["RewardItem"][1]={}
	tThorMediaKit_Award[3320163][3]["RewardItem"][1]["Id"]=3001065
	tThorMediaKit_Award[3320163][3]["RewardItem"][1]["Attr"]="0 1 3"
	tThorMediaKit_Award[3320163][3]["LogId"]=12001294
--自选包
	--坐骑三选一礼包
	--JasperDeer
	tThorMediaKit_Award[3312038]={}
	tThorMediaKit_Award[3312038][1]={}
	tThorMediaKit_Award[3312038][1]["RewardItem"]= {}
	tThorMediaKit_Award[3312038][1]["RewardItem"][1]= {}
	tThorMediaKit_Award[3312038][1]["RewardItem"][1]["Id"] = 200125
	tThorMediaKit_Award[3312038][1]["RewardItem"][1]["Attr"] ="0 1 3 0 0 0 0 1"
	tThorMediaKit_Award[3312038][1]["DeleteItem"] = {}
	tThorMediaKit_Award[3312038][1]["DeleteItem"][1] = {} 
	tThorMediaKit_Award[3312038][1]["DeleteItem"][1]["Id"] = 3312038
	tThorMediaKit_Award[3312038][1]["LogId"]=12001294
	--EmeraldTiger
	tThorMediaKit_Award[3312038][2]={}
	tThorMediaKit_Award[3312038][2]["RewardItem"]= {}
	tThorMediaKit_Award[3312038][2]["RewardItem"][1]= {}
	tThorMediaKit_Award[3312038][2]["RewardItem"][1]["Id"] = 200015
	tThorMediaKit_Award[3312038][2]["RewardItem"][1]["Attr"] ="0 1 3 0 0 0 0 1"
	tThorMediaKit_Award[3312038][2]["DeleteItem"] = {}
	tThorMediaKit_Award[3312038][2]["DeleteItem"][1] = {} 
	tThorMediaKit_Award[3312038][2]["DeleteItem"][1]["Id"] = 3312038
	tThorMediaKit_Award[3312038][2]["LogId"]=12001294
	--SoulTiger
	tThorMediaKit_Award[3312038][3]={}
	tThorMediaKit_Award[3312038][3]["RewardItem"]= {}
	tThorMediaKit_Award[3312038][3]["RewardItem"][1]= {}
	tThorMediaKit_Award[3312038][3]["RewardItem"][1]["Id"] = 200018
	tThorMediaKit_Award[3312038][3]["RewardItem"][1]["Attr"] ="0 1 3 0 0 0 0 1"
	tThorMediaKit_Award[3312038][3]["DeleteItem"] = {}
	tThorMediaKit_Award[3312038][3]["DeleteItem"][1] = {} 
	tThorMediaKit_Award[3312038][3]["DeleteItem"][1]["Id"] = 3312038
	tThorMediaKit_Award[3312038][3]["LogId"]=12001294
	
	--套装三选一礼包
	--加勒比传说套装
	tThorMediaKit_Award[3312039]={}
	tThorMediaKit_Award[3312039][1]={}
	tThorMediaKit_Award[3312039][1]["DeleteItem"] = {}
	tThorMediaKit_Award[3312039][1]["DeleteItem"][1] = {} 
	tThorMediaKit_Award[3312039][1]["DeleteItem"][1]["Id"] = 3312039
	tThorMediaKit_Award[3312039][1]["RewardItem"]= {}
	tThorMediaKit_Award[3312039][1]["RewardItem"][1]= {}
	tThorMediaKit_Award[3312039][1]["RewardItem"][1]["Id"] = 183375
	tThorMediaKit_Award[3312039][1]["RewardItem"][1]["Attr"] ="0 1 3 0 0 0 0 1"
	tThorMediaKit_Award[3312039][1]["LogId"]=12001294
	--暗夜侠套装
	tThorMediaKit_Award[3312039][2]={}
	tThorMediaKit_Award[3312039][2]["RewardItem"]= {}
	tThorMediaKit_Award[3312039][2]["RewardItem"][1]= {}
	tThorMediaKit_Award[3312039][2]["RewardItem"][1]["Id"] = 192185
	tThorMediaKit_Award[3312039][2]["RewardItem"][1]["Attr"] ="0 1 3 0 0 0 0 1"
	tThorMediaKit_Award[3312039][2]["DeleteItem"] = {}
	tThorMediaKit_Award[3312039][2]["DeleteItem"][1] = {} 
	tThorMediaKit_Award[3312039][2]["DeleteItem"][1]["Id"] = 3312039
	tThorMediaKit_Award[3312039][2]["LogId"]=12001294
	--排扣休闲装
	tThorMediaKit_Award[3312039][3]={}
	tThorMediaKit_Award[3312039][3]["RewardItem"]= {}
	tThorMediaKit_Award[3312039][3]["RewardItem"][1]= {}
	tThorMediaKit_Award[3312039][3]["RewardItem"][1]["Id"] = 193105
	tThorMediaKit_Award[3312039][3]["RewardItem"][1]["Attr"] ="0 1 3 0 0 0 0 1"
	tThorMediaKit_Award[3312039][3]["DeleteItem"] = {}
	tThorMediaKit_Award[3312039][3]["DeleteItem"][1] = {} 
	tThorMediaKit_Award[3312039][3]["DeleteItem"][1]["Id"] = 3312039
	tThorMediaKit_Award[3312039][3]["LogId"]=12001294
----------------------------------逻辑部分---------------------------------------------
--使用自选礼包
function ThorMediaKit_RewardPakage (nItemId,nOption)
	RewardTemplate_UseItemAndMsg(tThorMediaKit_Award[nItemId][nOption])
end
---------------------------------物品部分---------------------------------------------
--媒介礼包
tItem[3320162] = tItem[3320162] or {}
tItem[3320162]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tThorMediaKit_Award[nItemId])
end
--+3随机马礼包
tItem[3320163] = tItem[3320163] or {}
tItem[3320163]["Function"] = function(nItemId,sItemName)
	local nSpace = RewardTemplate_GetRandomSpace(tThorMediaKit_Award,nItemId)
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tThorMediaKit_Text["NoSpace"])
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tThorMediaKit_Award,nItemId)
	end
end
--坐骑三选一礼包
tItemFace[3312038] = 3594
tItem[3312038] = tItem[3312038] or {}
tItem[3312038]["Text1-1"] = {111}
tItem[3312038]["Text111"] = tThorMediaKit_Text[3312038]["Text111"]
tItem[3312038]["tOption1-1"] = {1,2,3,4}
tItem[3312038]["Option1"] = tThorMediaKit_Text[3312038]["Option1"]
tItem[3312038]["OptionPoint1"]="2-1"
tItem[3312038]["Option2"] = tThorMediaKit_Text[3312038]["Option2"]
tItem[3312038]["OptionPoint2"]="2-2"
tItem[3312038]["Option3"] = tThorMediaKit_Text[3312038]["Option3"]
tItem[3312038]["OptionPoint3"]="2-3"
tItem[3312038]["Option4"]=tThorMediaKit_Text[3312038]["Option4"]

tItem[3312038]["Text2-1"] = {211}
tItem[3312038]["Text211"] = tThorMediaKit_Text[3312038]["Text211"]
tItem[3312038]["tOption2-1"] = {5,6}
tItem[3312038]["Option5"] = tThorMediaKit_Text[3312038]["Option5"]
tItem[3312038]["OptionFunc5"]="ThorMediaKit_RewardPakage</N>3312038</N>1"
tItem[3312038]["Option6"] = tThorMediaKit_Text[3312038]["Option6"]
tItem[3312038]["OptionPoint6"]="1-1" 

tItem[3312038]["Text2-2"] = {221}
tItem[3312038]["Text221"] = tThorMediaKit_Text[3312038]["Text221"]
tItem[3312038]["tOption2-2"] = {7,6}
tItem[3312038]["Option7"] = tThorMediaKit_Text[3312038]["Option5"]
tItem[3312038]["OptionFunc7"]="ThorMediaKit_RewardPakage</N>3312038</N>2"

tItem[3312038]["Text2-3"] = {231}
tItem[3312038]["Text231"] = tThorMediaKit_Text[3312038]["Text231"]
tItem[3312038]["tOption2-3"] = {8,6}
tItem[3312038]["Option8"] = tThorMediaKit_Text[3312038]["Option5"]
tItem[3312038]["OptionFunc8"]="ThorMediaKit_RewardPakage</N>3312038</N>3"

--套装三选一礼包
tItemFace[3312039] = 3595
tItem[3312039] = tItem[3312039] or {}
tItem[3312039]["Text1-1"] = {111}
tItem[3312039]["Text111"] = tThorMediaKit_Text[3312039]["Text111"]
tItem[3312039]["tOption1-1"] = {1,2,3,4}
tItem[3312039]["Option1"] = tThorMediaKit_Text[3312039]["Option1"]
tItem[3312039]["OptionPoint1"]="2-1"
tItem[3312039]["Option2"] = tThorMediaKit_Text[3312039]["Option2"]
tItem[3312039]["OptionPoint2"]="2-2"
tItem[3312039]["Option3"] = tThorMediaKit_Text[3312039]["Option3"]
tItem[3312039]["OptionPoint3"]="2-3"
tItem[3312039]["Option4"]=tThorMediaKit_Text[3312039]["Option4"]

tItem[3312039]["Text2-1"] = {211}
tItem[3312039]["Text211"] = tThorMediaKit_Text[3312039]["Text211"]
tItem[3312039]["tOption2-1"] = {5,6}
tItem[3312039]["Option5"] = tThorMediaKit_Text[3312039]["Option5"]
tItem[3312039]["OptionFunc5"]="ThorMediaKit_RewardPakage</N>3312039</N>1"
tItem[3312039]["Option6"] = tThorMediaKit_Text[3312039]["Option6"]
tItem[3312039]["OptionPoint6"]="1-1" 

tItem[3312039]["Text2-2"] = {221}
tItem[3312039]["Text221"] = tThorMediaKit_Text[3312039]["Text221"]
tItem[3312039]["tOption2-2"] = {7,6}
tItem[3312039]["Option7"] = tThorMediaKit_Text[3312039]["Option5"]
tItem[3312039]["OptionFunc7"]="ThorMediaKit_RewardPakage</N>3312039</N>2"

tItem[3312039]["Text2-3"] = {231}
tItem[3312039]["Text231"] = tThorMediaKit_Text[3312039]["Text231"]
tItem[3312039]["tOption2-3"] = {8,6}
tItem[3312039]["Option8"] = tThorMediaKit_Text[3312039]["Option5"]
tItem[3312039]["OptionFunc8"]="ThorMediaKit_RewardPakage</N>3312039</N>3"