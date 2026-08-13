------------------------------------------------------------------------------------
--Name：            180914[英文征服][活动脚本]10月活动相关发奖action制作
--Creator:      蔡颖静
--Created:     2018/09/14
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--前缀：tOctActReward_

----------------------------------表配置部分--------------------------------------------
local tOctActReward_Data={}
--新服预约礼包打开阶段
tOctActReward_Data["Stc"]={}
tOctActReward_Data["Stc"]["EventType"]=183
tOctActReward_Data["Stc"]["DataType"]=19

tOctActReward_Data["RewardPhase"]={}
tOctActReward_Data["RewardPhase"][0]={}
tOctActReward_Data["RewardPhase"][1]={}
tOctActReward_Data["RewardPhase"][2]={}
tOctActReward_Data["RewardPhase"][3]={}
tOctActReward_Data["RewardPhase"][4]={}
tOctActReward_Data["RewardPhase"][5]={}
tOctActReward_Data["RewardPhase"][6]={}
tOctActReward_Data["RewardPhase"][7]={}
tOctActReward_Data["RewardPhase"][8]={}
tOctActReward_Data["RewardPhase"][9]={}
tOctActReward_Data["RewardPhase"][10]={}
tOctActReward_Data["RewardPhase"][11]={}
tOctActReward_Data["RewardPhase"][12]={}
tOctActReward_Data["RewardPhase"][13]={}
tOctActReward_Data["RewardPhase"][14]={}
tOctActReward_Data["RewardPhase"][15]={}
tOctActReward_Data["RewardPhase"][16]={}
tOctActReward_Data["RewardPhase"][17]={}
tOctActReward_Data["RewardPhase"][18]={}
tOctActReward_Data["RewardPhase"][19]={}
tOctActReward_Data["RewardPhase"][20]={}
tOctActReward_Data["RewardPhase"][0]["Level"]=20
tOctActReward_Data["RewardPhase"][0]["Item"]=1200000
tOctActReward_Data["RewardPhase"][1]["Level"]=30
tOctActReward_Data["RewardPhase"][1]["Item"]=730002
tOctActReward_Data["RewardPhase"][2]["Level"]=40
tOctActReward_Data["RewardPhase"][2]["Item"]=723017
tOctActReward_Data["RewardPhase"][3]["Level"]=50
tOctActReward_Data["RewardPhase"][3]["Item"]=700012
tOctActReward_Data["RewardPhase"][4]["Level"]=60
tOctActReward_Data["RewardPhase"][4]["Item"]=730002
tOctActReward_Data["RewardPhase"][5]["Level"]=70
tOctActReward_Data["RewardPhase"][5]["Item"]=730003
tOctActReward_Data["RewardPhase"][6]["Level"]=80
tOctActReward_Data["RewardPhase"][6]["Item"]=3001407
tOctActReward_Data["RewardPhase"][7]["Level"]=90
tOctActReward_Data["RewardPhase"][7]["Item"]=730003
tOctActReward_Data["RewardPhase"][8]["Level"]=100
tOctActReward_Data["RewardPhase"][8]["Item"]=3001499
tOctActReward_Data["RewardPhase"][9]["Level"]=105
tOctActReward_Data["RewardPhase"][9]["Item"]=3006277
tOctActReward_Data["RewardPhase"][10]["Level"]=110
tOctActReward_Data["RewardPhase"][10]["Item"]=3001035
tOctActReward_Data["RewardPhase"][11]["Level"]=115
tOctActReward_Data["RewardPhase"][11]["Item"]=1088000
tOctActReward_Data["RewardPhase"][12]["Level"]=120
tOctActReward_Data["RewardPhase"][12]["Item"]=3003124
tOctActReward_Data["RewardPhase"][13]["Level"]=125
tOctActReward_Data["RewardPhase"][13]["Item"]=3003126
tOctActReward_Data["RewardPhase"][14]["Level"]=130
--tOctActReward_Data["RewardPhase"][14]["Item"]="500CP(B)"
tOctActReward_Data["RewardPhase"][15]["Level"]=135
tOctActReward_Data["RewardPhase"][15]["Item"]=1088000
tOctActReward_Data["RewardPhase"][16]["Level"]=136
tOctActReward_Data["RewardPhase"][16]["Item"]=723694
tOctActReward_Data["RewardPhase"][17]["Level"]=137
tOctActReward_Data["RewardPhase"][17]["Item"]=723744
tOctActReward_Data["RewardPhase"][18]["Level"]=138
--tOctActReward_Data["RewardPhase"][18]["Item"]=730004
tOctActReward_Data["RewardPhase"][19]["Level"]=139
tOctActReward_Data["RewardPhase"][19]["Item"]=1200005
tOctActReward_Data["RewardPhase"][20]["Level"]=140
--tOctActReward_Data["RewardPhase"][20]["Item"]="1500CP(B)"
--`hairface_id`
tOctActReward_Data["HairTypeId"]=36

--新服预约礼包
tOctActReward_Data[3310764]={}
--20级打开
tOctActReward_Data[3310764][20]={}
tOctActReward_Data[3310764][20]["LogId"] =12001165
tOctActReward_Data[3310764][20]["RewardItem"] = {}
tOctActReward_Data[3310764][20]["RewardItem"][1]={}
tOctActReward_Data[3310764][20]["RewardItem"][1]["Id"]= 1200000
tOctActReward_Data[3310764][20]["RewardItem"][1]["Attr"] = "0 1 3"
--30级打开
tOctActReward_Data[3310764][30]={}
tOctActReward_Data[3310764][30]["LogId"] =12001165
tOctActReward_Data[3310764][30]["RewardItem"] = {}
tOctActReward_Data[3310764][30]["RewardItem"][1]={}
tOctActReward_Data[3310764][30]["RewardItem"][1]["Id"]= 730002
tOctActReward_Data[3310764][30]["RewardItem"][1]["Attr"] = "0 2 3"
--40级打开
tOctActReward_Data[3310764][40]={}
tOctActReward_Data[3310764][40]["LogId"] =12001165
tOctActReward_Data[3310764][40]["RewardItem"] = {}
tOctActReward_Data[3310764][40]["RewardItem"][1]={}
tOctActReward_Data[3310764][40]["RewardItem"][1]["Id"]= 723017
tOctActReward_Data[3310764][40]["RewardItem"][1]["Attr"] = "0 3 3"
--50级打开
tOctActReward_Data[3310764][50]={}
tOctActReward_Data[3310764][50]["LogId"] =12001165
tOctActReward_Data[3310764][50]["RewardItem"] = {}
tOctActReward_Data[3310764][50]["RewardItem"][1]={}
tOctActReward_Data[3310764][50]["RewardItem"][1]["Id"]= 700012
tOctActReward_Data[3310764][50]["RewardItem"][1]["Attr"] = "0 2 3"
--60级打开
tOctActReward_Data[3310764][60]={}
tOctActReward_Data[3310764][60]["LogId"] =12001165
tOctActReward_Data[3310764][60]["RewardItem"] = {}
tOctActReward_Data[3310764][60]["RewardItem"][1]={}
tOctActReward_Data[3310764][60]["RewardItem"][1]["Id"]= 730002
tOctActReward_Data[3310764][60]["RewardItem"][1]["Attr"] = "0 2 3"
--70级打开
tOctActReward_Data[3310764][70]={}
tOctActReward_Data[3310764][70]["LogId"] =12001165
tOctActReward_Data[3310764][70]["RewardItem"] = {}
tOctActReward_Data[3310764][70]["RewardItem"][1]={}
tOctActReward_Data[3310764][70]["RewardItem"][1]["Id"]= 730003
tOctActReward_Data[3310764][70]["RewardItem"][1]["Attr"] = "0 1 3"
--80级打开
tOctActReward_Data[3310764][80]={}
tOctActReward_Data[3310764][80]["LogId"] =12001165
tOctActReward_Data[3310764][80]["RewardItem"] = {}
tOctActReward_Data[3310764][80]["RewardItem"][1]={}
tOctActReward_Data[3310764][80]["RewardItem"][1]["Id"]= 3001407
tOctActReward_Data[3310764][80]["RewardItem"][1]["Attr"] = "0 2 3"
--90级打开
tOctActReward_Data[3310764][90]={}
tOctActReward_Data[3310764][90]["LogId"] =12001165
tOctActReward_Data[3310764][90]["RewardItem"] = {}
tOctActReward_Data[3310764][90]["RewardItem"][1]={}
tOctActReward_Data[3310764][90]["RewardItem"][1]["Id"]= 730003
tOctActReward_Data[3310764][90]["RewardItem"][1]["Attr"] = "0 3 3"
--100级打开
tOctActReward_Data[3310764][100]={}
tOctActReward_Data[3310764][100]["LogId"] =12001165
tOctActReward_Data[3310764][100]["RewardItem"] = {}
tOctActReward_Data[3310764][100]["RewardItem"][1]={}
tOctActReward_Data[3310764][100]["RewardItem"][1]["Id"]= 3001499
tOctActReward_Data[3310764][100]["RewardItem"][1]["Attr"] = "0 1 3"
--105级打开
tOctActReward_Data[3310764][105]={}
tOctActReward_Data[3310764][105]["LogId"] =12001165
tOctActReward_Data[3310764][105]["RewardItem"] = {}
tOctActReward_Data[3310764][105]["RewardItem"][1]={}
tOctActReward_Data[3310764][105]["RewardItem"][1]["Id"]= 3006277
tOctActReward_Data[3310764][105]["RewardItem"][1]["Attr"] = "0 3 3"
--110级打开
tOctActReward_Data[3310764][110]={}
tOctActReward_Data[3310764][110]["LogId"] =12001165
tOctActReward_Data[3310764][110]["RewardItem"] = {}
tOctActReward_Data[3310764][110]["RewardItem"][1]={}
tOctActReward_Data[3310764][110]["RewardItem"][1]["Id"]= 3001035
tOctActReward_Data[3310764][110]["RewardItem"][1]["Attr"] = "0 1 3"
--115级打开
tOctActReward_Data[3310764][115]={}
tOctActReward_Data[3310764][115]["LogId"] =12001165
tOctActReward_Data[3310764][115]["RewardItem"] = {}
tOctActReward_Data[3310764][115]["RewardItem"][1]={}
tOctActReward_Data[3310764][115]["RewardItem"][1]["Id"]= 1088000
tOctActReward_Data[3310764][115]["RewardItem"][1]["Attr"] = "0 3 3"
--120级打开
tOctActReward_Data[3310764][120]={}
tOctActReward_Data[3310764][120]["LogId"] =12001165
tOctActReward_Data[3310764][120]["RewardItem"] = {}
tOctActReward_Data[3310764][120]["RewardItem"][1]={}
tOctActReward_Data[3310764][120]["RewardItem"][1]["Id"]= 3003124
tOctActReward_Data[3310764][120]["RewardItem"][1]["Attr"] = "0 100 3"
--125级打开
tOctActReward_Data[3310764][125]={}
tOctActReward_Data[3310764][125]["LogId"] =12001165
tOctActReward_Data[3310764][125]["RewardItem"] = {}
tOctActReward_Data[3310764][125]["RewardItem"][1]={}
tOctActReward_Data[3310764][125]["RewardItem"][1]["Id"]= 3003126
tOctActReward_Data[3310764][125]["RewardItem"][1]["Attr"] = "0 20 3"
--130级打开
tOctActReward_Data[3310764][130]={}
tOctActReward_Data[3310764][130]["LogId"] =12001165
tOctActReward_Data[3310764][130]["RewardEMoneyMono"] = {}
tOctActReward_Data[3310764][130]["RewardEMoneyMono"] ["Value"] = 500
tOctActReward_Data[3310764][130]["EmoneyLog"] = "10000	0051	1	1	500	"
--135级打开
tOctActReward_Data[3310764][135]={}
tOctActReward_Data[3310764][135]["LogId"] =12001165
tOctActReward_Data[3310764][135]["RewardItem"] = {}
tOctActReward_Data[3310764][135]["RewardItem"][1]={}
tOctActReward_Data[3310764][135]["RewardItem"][1]["Id"]= 1088000
tOctActReward_Data[3310764][135]["RewardItem"][1]["Attr"] = "0 1 3"
--136级打开
tOctActReward_Data[3310764][136]={}
tOctActReward_Data[3310764][136]["LogId"] =12001165
tOctActReward_Data[3310764][136]["RewardItem"] = {}
tOctActReward_Data[3310764][136]["RewardItem"][1]={}
tOctActReward_Data[3310764][136]["RewardItem"][1]["Id"]= 723694
tOctActReward_Data[3310764][136]["RewardItem"][1]["Attr"] = "0 1 3"
--137级打开
tOctActReward_Data[3310764][137]={}
tOctActReward_Data[3310764][137]["LogId"] =12001165
tOctActReward_Data[3310764][137]["RewardItem"] = {}
tOctActReward_Data[3310764][137]["RewardItem"][1]={}
tOctActReward_Data[3310764][137]["RewardItem"][1]["Id"]= 723744
tOctActReward_Data[3310764][137]["RewardItem"][1]["Attr"] = "0 1 3"
--138级打开
tOctActReward_Data[3310764][138]={}
tOctActReward_Data[3310764][138]["LogId"] =12001165
tOctActReward_Data[3310764][138]["RewardItem"] = {}
tOctActReward_Data[3310764][138]["RewardItem"][1]={}
tOctActReward_Data[3310764][138]["RewardItem"][1]["Id"]= 730004
tOctActReward_Data[3310764][138]["RewardItem"][1]["Attr"] = "0 1 3"
tOctActReward_Data[3310764][138]["RewardItem"][2]={}
tOctActReward_Data[3310764][138]["RewardItem"][2]["Id"]= 3008311 
tOctActReward_Data[3310764][138]["RewardItem"][2]["Attr"] = "0 1"
--139级打开
tOctActReward_Data[3310764][139]={}
tOctActReward_Data[3310764][139]["LogId"] =12001165
tOctActReward_Data[3310764][139]["RewardItem"] = {}
tOctActReward_Data[3310764][139]["RewardItem"][1]={}
tOctActReward_Data[3310764][139]["RewardItem"][1]["Id"]= 1200005
tOctActReward_Data[3310764][139]["RewardItem"][1]["Attr"] = "0 1 3"
--140级打开
tOctActReward_Data[3310764][140]={}
tOctActReward_Data[3310764][140]["LogId"] =12001165
tOctActReward_Data[3310764][140]["RewardEMoneyMono"] = {}
tOctActReward_Data[3310764][140]["RewardEMoneyMono"] ["Value"] = 1500
tOctActReward_Data[3310764][140]["EmoneyLog"] = "10000	0052	1	1	1500	"

--50天石（赠）狂欢包
tOctActReward_Data[3310765]={}
tOctActReward_Data[3310765]["LogId"] =12001165
tOctActReward_Data[3310765]["DeleteItem"] = {}
tOctActReward_Data[3310765]["DeleteItem"][1]={}
tOctActReward_Data[3310765]["DeleteItem"][1]["Id"]=3310765
tOctActReward_Data[3310765]["RewardEMoneyMono"] = {}
tOctActReward_Data[3310765]["RewardEMoneyMono"] ["Value"] = 50
tOctActReward_Data[3310765]["EmoneyLog"] = "10000	0053	1	1	50	"

--100天石（赠）狂欢包
tOctActReward_Data[3310766]={}
tOctActReward_Data[3310766]["LogId"] =12001165
tOctActReward_Data[3310766]["DeleteItem"] = {}
tOctActReward_Data[3310766]["DeleteItem"][1]={}
tOctActReward_Data[3310766]["DeleteItem"][1]["Id"]=3310766
tOctActReward_Data[3310766]["RewardEMoneyMono"] = {}
tOctActReward_Data[3310766]["RewardEMoneyMono"] ["Value"] = 100
tOctActReward_Data[3310766]["EmoneyLog"] = "10000	0054	1	1	100	"

--200天石（赠）狂欢包
tOctActReward_Data[3310767]={}
tOctActReward_Data[3310767]["LogId"] =12001165
tOctActReward_Data[3310767]["DeleteItem"] = {}
tOctActReward_Data[3310767]["DeleteItem"][1]={}
tOctActReward_Data[3310767]["DeleteItem"][1]["Id"]=3310767
tOctActReward_Data[3310767]["RewardEMoneyMono"] = {}
tOctActReward_Data[3310767]["RewardEMoneyMono"] ["Value"] = 200
tOctActReward_Data[3310767]["EmoneyLog"] = "10000	0055	1	1	200	"

--300天石（赠）狂欢包
tOctActReward_Data[3310768]={}
tOctActReward_Data[3310768]["LogId"] =12001165
tOctActReward_Data[3310768]["DeleteItem"] = {}
tOctActReward_Data[3310768]["DeleteItem"][1]={}
tOctActReward_Data[3310768]["DeleteItem"][1]["Id"]=3310768
tOctActReward_Data[3310768]["RewardEMoneyMono"] = {}
tOctActReward_Data[3310768]["RewardEMoneyMono"] ["Value"] = 300
tOctActReward_Data[3310768]["EmoneyLog"] = "10000	0056	1	1	300	"

--500天石（赠）狂欢包
tOctActReward_Data[3310769]={}
tOctActReward_Data[3310769]["LogId"] =12001165
tOctActReward_Data[3310769]["DeleteItem"] = {}
tOctActReward_Data[3310769]["DeleteItem"][1]={}
tOctActReward_Data[3310769]["DeleteItem"][1]["Id"]=3310769
tOctActReward_Data[3310769]["RewardEMoneyMono"] = {}
tOctActReward_Data[3310769]["RewardEMoneyMono"] ["Value"] = 500
tOctActReward_Data[3310769]["EmoneyLog"] = "10000	0057	1	1	500	"

--2000天石（赠）狂欢包
tOctActReward_Data[3310770]={}
tOctActReward_Data[3310770]["LogId"] =12001165
tOctActReward_Data[3310770]["DeleteItem"] = {}
tOctActReward_Data[3310770]["DeleteItem"][1]={}
tOctActReward_Data[3310770]["DeleteItem"][1]["Id"]=3310770
tOctActReward_Data[3310770]["RewardEMoneyMono"] = {}
tOctActReward_Data[3310770]["RewardEMoneyMono"] ["Value"] = 2000
tOctActReward_Data[3310770]["EmoneyLog"] = "10000	0058	1	1	2000	"

--4000天石（赠）狂欢包
tOctActReward_Data[3310771]={}
tOctActReward_Data[3310771]["LogId"] =12001165
tOctActReward_Data[3310771]["DeleteItem"] = {}
tOctActReward_Data[3310771]["DeleteItem"][1]={}
tOctActReward_Data[3310771]["DeleteItem"][1]["Id"]=3310771
tOctActReward_Data[3310771]["RewardEMoneyMono"] = {}
tOctActReward_Data[3310771]["RewardEMoneyMono"] ["Value"] = 4000
tOctActReward_Data[3310771]["EmoneyLog"] = "10000	0059	1	1	4000	"

--8000天石（赠）狂欢包
tOctActReward_Data[3310772]={}
tOctActReward_Data[3310772]["LogId"] =12001165
tOctActReward_Data[3310772]["DeleteItem"] = {}
tOctActReward_Data[3310772]["DeleteItem"][1]={}
tOctActReward_Data[3310772]["DeleteItem"][1]["Id"]=3310772
tOctActReward_Data[3310772]["RewardEMoneyMono"] = {}
tOctActReward_Data[3310772]["RewardEMoneyMono"] ["Value"] = 8000
tOctActReward_Data[3310772]["EmoneyLog"] = "10000	0060	1	1	8000	"

--10000天石（赠）狂欢包
tOctActReward_Data[3310773]={}
tOctActReward_Data[3310773]["LogId"] =12001165
tOctActReward_Data[3310773]["DeleteItem"] = {}
tOctActReward_Data[3310773]["DeleteItem"][1]={}
tOctActReward_Data[3310773]["DeleteItem"][1]["Id"]=3310773
tOctActReward_Data[3310773]["RewardEMoneyMono"] = {}
tOctActReward_Data[3310773]["RewardEMoneyMono"] ["Value"] = 10000
tOctActReward_Data[3310773]["EmoneyLog"] = "10000	0061	1	1	10000	"

--30天FierceCloud坐骑外套包
tOctActReward_Data[3310774]={}
tOctActReward_Data[3310774]["LogId"] =12001165
tOctActReward_Data[3310774]["DeleteItem"] = {}
tOctActReward_Data[3310774]["DeleteItem"][1]={}
tOctActReward_Data[3310774]["DeleteItem"][1]["Id"]=3310774
tOctActReward_Data[3310774]["RewardItem"] = {}
tOctActReward_Data[3310774]["RewardItem"][1]={}
tOctActReward_Data[3310774]["RewardItem"][1]["Id"]= 200613
tOctActReward_Data[3310774]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"

--晶莹星陨石新服尊享包
tOctActReward_Data[3310775]={}
tOctActReward_Data[3310775]["LogId"] =12001165
tOctActReward_Data[3310775]["DeleteItem"] = {}
tOctActReward_Data[3310775]["DeleteItem"][1]={}
tOctActReward_Data[3310775]["DeleteItem"][1]["Id"]=3310775
tOctActReward_Data[3310775]["RewardItem"] = {}
tOctActReward_Data[3310775]["RewardItem"][1]={}
tOctActReward_Data[3310775]["RewardItem"][1]["Id"]= 3009002
tOctActReward_Data[3310775]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"

--稀有发型可选包
tOctActReward_Data[3310776]={}
tOctActReward_Data[3310776][1]={}
tOctActReward_Data[3310776][1][1]={}
tOctActReward_Data[3310776][1][1]["LogId"] =12001165
tOctActReward_Data[3310776][1][1]["DeleteItem"] = {}
tOctActReward_Data[3310776][1][1]["DeleteItem"][1]={}
tOctActReward_Data[3310776][1][1]["DeleteItem"][1]["Id"]=3310776
tOctActReward_Data[3310776][1][1]["RewardItem"] = {}
tOctActReward_Data[3310776][1][1]["RewardItem"][1]={}
tOctActReward_Data[3310776][1][1]["RewardItem"][1]["Id"]= 3310763
tOctActReward_Data[3310776][1][1]["RewardItem"][1]["Attr"] = "0 1"
tOctActReward_Data[3310776][1][2]={}
tOctActReward_Data[3310776][1][2]["LogId"] =12001165
tOctActReward_Data[3310776][1][2]["DeleteItem"] = {}
tOctActReward_Data[3310776][1][2]["DeleteItem"][1]={}
tOctActReward_Data[3310776][1][2]["DeleteItem"][1]["Id"]=3310776
tOctActReward_Data[3310776][1][2]["RewardItem"] = {}
tOctActReward_Data[3310776][1][2]["RewardItem"][1]={}
tOctActReward_Data[3310776][1][2]["RewardItem"][1]["Id"]= 3310762
tOctActReward_Data[3310776][1][2]["RewardItem"][1]["Attr"] = "0 1"
tOctActReward_Data[3310776][2]={}
tOctActReward_Data[3310776][2]["LogId"] =12001165
tOctActReward_Data[3310776][2]["DeleteItem"] = {}
tOctActReward_Data[3310776][2]["DeleteItem"][1]={}
tOctActReward_Data[3310776][2]["DeleteItem"][1]["Id"]=3310776
tOctActReward_Data[3310776][2]["RewardItem"] = {}
tOctActReward_Data[3310776][2]["RewardItem"][1]={}
tOctActReward_Data[3310776][2]["RewardItem"][1]["Id"]= 3309887 
tOctActReward_Data[3310776][2]["RewardItem"][1]["Attr"] = "0 1 3"

--物品删除log
tOctActReward_Data["Log"]={}
tOctActReward_Data["Log"]["DeletePack"]="0,0,3310764,1,12001165,1,0,0"

--发型
tOctActReward_Data["Hair"]={}
--男
tOctActReward_Data["Hair"][3310763]={}
tOctActReward_Data["Hair"][3310763]["Sex"]=1
--女
tOctActReward_Data["Hair"][3310762]={}
tOctActReward_Data["Hair"][3310762]["Sex"]=2
----------------------------------逻辑部分---------------------------------------------
function OctActReward_GetReward(nItemId,nPahse)
--检测物品
	if not Item_ChkItem(nItemId) then
		return
	end
	local nEvent = tOctActReward_Data["Stc"]["EventType"]
	local nType = tOctActReward_Data["Stc"]["DataType"]
	local nIndex=tOctActReward_Data["RewardPhase"][nPahse]["Level"]
--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tOctActReward_Data[nItemId][nIndex])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tOctActReward_Data[nItemId][nIndex])
	local nNeedSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nNeedSpace) then
		local sText=string.format(tOctActReward_Text["Systemtips"]["NoSpace"],nNeedSpace)
		User_TalkChannel2005(sText)
		return
	end
	if nIndex == 130 or nIndex == 140 then  
		--赠点上限判断
		local nUserId = Get_UserId()
		local nEmoney = Get_UserMonoEMoney(nUserId)
		local nAddEmoney = tOctActReward_Data[nItemId][nIndex]["RewardEMoneyMono"]["Value"]
		if nEmoney + nAddEmoney > G_User_MaxEmoneyMono then
			Sys_MsgBox(tOctActReward_Text["Systemtips"]["EMonoMoneyFull"])
			return
		end
	end 
	--置掩码
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	--打开礼包
	if RewardTemplate_UseItem(tOctActReward_Data[nItemId][nIndex]) then 
		if Task_ChkStcValue(nEvent,nType,">",20) then 
			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
				Sys_SaveActionFestivalLog(tOctActReward_Data["Log"]["DeletePack"])
				return
			end 
		end 
	end 
end

--打开赠点包
function OctActReward_OpenEMonoMoneyPack(nItemId)
--检测物品
	if not Item_ChkItem(nItemId) then
		return
	end
	--赠点上限判断
	local nUserId = Get_UserId()
	local nEmoney = Get_UserMonoEMoney(nUserId)
	local nAddEmoney = tOctActReward_Data[nItemId]["RewardEMoneyMono"]["Value"]
	if nEmoney + nAddEmoney > G_User_MaxEmoneyMono then
		Sys_MsgBox(tOctActReward_Text["Systemtips"]["EMonoMoneyFull"])
		return
	end
	--打开礼包
	if RewardTemplate_UseItem(tOctActReward_Data[nItemId]) then 
		return 
	end 
end
--打开礼包（外套/星陨石）
function OctActReward_OpenPack(nItemId)
--检测物品
	if not Item_ChkItem(nItemId) then
		return
	end
--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tOctActReward_Data[nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tOctActReward_Data[nItemId])
	local nNeedSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nNeedSpace) then
		local sText=string.format(tOctActReward_Text["Systemtips"]["NoSpace"],nNeedSpace)
		User_TalkChannel2005(sText)
		return
	end
	--打开礼包
	if RewardTemplate_UseItem(tOctActReward_Data[nItemId]) then 
		return 
	end 
end

--打开发型礼包
function OctActReward_OpenHairPack(nItemId,nIndex)
--检测物品
	if not Item_ChkItem(nItemId) then
		return
	end
	if nIndex==1 then 
		--背包空间判断
		local nGetRewardSpace = RewardTemplate_GetRewardSpace(tOctActReward_Data[nItemId][nIndex][1])
		local nDelRewardSpace = RewardTemplate_GetDelSpace(tOctActReward_Data[nItemId][nIndex][1])
		local nNeedSpace = nGetRewardSpace - nDelRewardSpace
		if not User_CheckLeftSpace(nNeedSpace) then
			local sText=string.format(tOctActReward_Text["Systemtips"]["NoSpace"],nNeedSpace)
			User_TalkChannel2005(sText)
			return
		end
		--获取玩家性别
		local nSex = Get_UserSex()
		--打开礼包
		if RewardTemplate_UseItem(tOctActReward_Data[nItemId][nIndex][nSex]) then 
			return 
		end 
	else 
		--背包空间判断
		local nGetRewardSpace = RewardTemplate_GetRewardSpace(tOctActReward_Data[nItemId][nIndex])
		local nDelRewardSpace = RewardTemplate_GetDelSpace(tOctActReward_Data[nItemId][nIndex])
		local nNeedSpace = nGetRewardSpace - nDelRewardSpace
		if not User_CheckLeftSpace(nNeedSpace) then
			local sText=string.format(tOctActReward_Text["Systemtips"]["NoSpace"],nNeedSpace)
			User_TalkChannel2005(sText)
			return
		end
				--打开礼包
		if RewardTemplate_UseItem(tOctActReward_Data[nItemId][nIndex]) then 
			return 
		end 
	end 
end 
--发型使用
function OctActReward_UseHair(nItemId)
	local nSex = tOctActReward_Data["Hair"][nItemId]["Sex"]
		-- 判断性别
	if Get_UserSex(nUserId) ~= nSex then
		Sys_MsgBox(tOctActReward_Text["Systemtips"]["NotSex"])
		return
	end
--检测物品
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
		local nTypeId=tOctActReward_Data["HairTypeId"]
		if not User_HairFaceCheckExist(0, nTypeId) then
			User_HairFaceAward(0, nTypeId, 0)
		end
		User_ChangeUserHair(nTypeId)
	end 
end 

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
--赠点包
tItem[3310765] = tItem[3310765] or {}
tItem[3310765]["Function"] = function(nItemId,sItemName)
	OctActReward_OpenEMonoMoneyPack(nItemId)
end
tItem[3310766] = tItem[3310765]
tItem[3310767] = tItem[3310765]
tItem[3310768] = tItem[3310765]
tItem[3310769] = tItem[3310765]
tItem[3310770] = tItem[3310765]
tItem[3310771] = tItem[3310765]
tItem[3310772] = tItem[3310765]
tItem[3310773] = tItem[3310765]

--星陨石/外套包
tItem[3310774] = tItem[3310774] or {}
tItem[3310774]["Function"] = function(nItemId,sItemName)
	OctActReward_OpenPack(nItemId)
end
tItem[3310775] = tItem[3310774]

--发型使用
tItem[3310762] = tItem[3310762] or {}
tItem[3310762]["Function"] = function(nItemId,sItemName)
	OctActReward_UseHair(nItemId)
end
tItem[3310763] = tItem[3310762]

--------物品有对白模板
tItemFace[3310764] = 1783
tItem[3310764] = tItem[3310764] or {}
tItem[3310764]["Text1-1"] = {111}
tItem[3310764]["Text111"] = tOctActReward_Text[3310764]["Text111"]
tItem[3310764]["ChkFunc1-1"] = function()
	local nEvent = tOctActReward_Data["Stc"]["EventType"]
	local nType = tOctActReward_Data["Stc"]["DataType"]
	local nPahse = Get_UserStatisticValue(nEvent,nType)
	local nLevel = Get_UserLevel()
	if nPahse<=20 then
		local sItemName=""
		if nPahse==14 or nPahse==18 or nPahse==20 then 
			sItemName=tOctActReward_Text["Item"][nPahse]
		else
			sItemName=Get_ItemtypeName(tOctActReward_Data["RewardPhase"][nPahse]["Item"])
		end 
		if nLevel<tOctActReward_Data["RewardPhase"][nPahse]["Level"] then
			tItem[3310764]["Text111"]=string.format(tOctActReward_Text[3310764]["Text111"],tOctActReward_Data["RewardPhase"][nPahse]["Level"],sItemName)
		else
			tItem[3310764]["Text111"]=string.format(tOctActReward_Text[3310764]["Text151"],tOctActReward_Data["RewardPhase"][nPahse]["Level"],sItemName)
		end 
		return true
	else
		return false
	end 
end
tItem[3310764]["tOption1-1"] = {1,2}
tItem[3310764]["Option1"] = tOctActReward_Text[3310764]["Option1"]
tItem[3310764]["OptionChkFunc1"] = function ()
	local nLevel = Get_UserLevel()
	local nEvent = tOctActReward_Data["Stc"]["EventType"]
	local nType = tOctActReward_Data["Stc"]["DataType"]
	local nPahse = Get_UserStatisticValue(nEvent,nType)
	if nLevel<tOctActReward_Data["RewardPhase"][nPahse]["Level"] then
		tItem[3310764]["Option1"] = tOctActReward_Text[3310764]["Option1"]
		tItem[3310764]["OptionFunc1"]=""
	else
		tItem[3310764]["Option1"] = string.format(tOctActReward_Text[3310764]["Option2"],tOctActReward_Data["RewardPhase"][nPahse]["Level"])
		tItem[3310764]["OptionFunc1"]="OctActReward_GetReward</N>3310764</N>" .. nPahse
	end
	return true
end
tItem[3310764]["Option2"] = tOctActReward_Text[3310764]["Option3"]
tItem[3310764]["OptionPoint2"] = "1-2"

tItem[3310764]["Text1-2"] = {121,122,123,124,125,126,127,128,129,1210,1211,1212,1213}
tItem[3310764]["Text121"] = tOctActReward_Text[3310764]["Text121"]
tItem[3310764]["Text122"] = tOctActReward_Text[3310764]["Text122"]
tItem[3310764]["Text123"] = tOctActReward_Text[3310764]["Text123"]
tItem[3310764]["Text124"] = tOctActReward_Text[3310764]["Text124"]
tItem[3310764]["Text125"] = tOctActReward_Text[3310764]["Text125"]
tItem[3310764]["Text126"] = tOctActReward_Text[3310764]["Text126"]
tItem[3310764]["Text127"] = tOctActReward_Text[3310764]["Text127"]
tItem[3310764]["Text128"] = tOctActReward_Text[3310764]["Text128"]
tItem[3310764]["Text129"] = tOctActReward_Text[3310764]["Text129"]
tItem[3310764]["Text1210"]=tOctActReward_Text[3310764]["Text1210"]
tItem[3310764]["Text1211"]= tOctActReward_Text[3310764]["Text1211"] 
tItem[3310764]["Text1212"]=tOctActReward_Text[3310764]["Text1212"]
tItem[3310764]["Text1213"]=tOctActReward_Text[3310764]["Text1213"]
tItem[3310764]["tOption1-2"] = {3}
tItem[3310764]["Option3"] = tOctActReward_Text[3310764]["Option4"]
tItem[3310764]["OptionPoint3"] = "1-3"

tItem[3310764]["Text1-3"] = {131,132,133,134,135,136,137,138,139,1310,1311}
tItem[3310764]["Text131"] = tOctActReward_Text[3310764]["Text131"]
tItem[3310764]["Text132"] = tOctActReward_Text[3310764]["Text132"]
tItem[3310764]["Text133"] = tOctActReward_Text[3310764]["Text133"]
tItem[3310764]["Text134"] = tOctActReward_Text[3310764]["Text134"]
tItem[3310764]["Text135"] = tOctActReward_Text[3310764]["Text135"]
tItem[3310764]["Text136"] = tOctActReward_Text[3310764]["Text136"]
tItem[3310764]["Text137"] = tOctActReward_Text[3310764]["Text137"]
tItem[3310764]["Text138"] = tOctActReward_Text[3310764]["Text138"]
tItem[3310764]["Text139"] = tOctActReward_Text[3310764]["Text139"]
tItem[3310764]["Text1310"]=tOctActReward_Text[3310764]["Text1310"]
tItem[3310764]["Text1311"]= tOctActReward_Text[3310764]["Text1311"] 
tItem[3310764]["tOption1-3"] = {4,5}
tItem[3310764]["Option4"] = tOctActReward_Text[3310764]["Option5"]
tItem[3310764]["OptionPoint4"] = "1-4"
tItem[3310764]["Option5"] = tOctActReward_Text[3310764]["Option6"]
tItem[3310764]["OptionPoint5"] = "1-2"

tItem[3310764]["Text1-4"] = {141,142,143,144,145,146,147,148,149}
tItem[3310764]["Text141"] = tOctActReward_Text[3310764]["Text141"]
tItem[3310764]["Text142"] = tOctActReward_Text[3310764]["Text142"]
tItem[3310764]["Text143"] = tOctActReward_Text[3310764]["Text143"]
tItem[3310764]["Text144"] = tOctActReward_Text[3310764]["Text144"]
tItem[3310764]["Text145"] = tOctActReward_Text[3310764]["Text145"]
tItem[3310764]["Text146"] = tOctActReward_Text[3310764]["Text146"]
tItem[3310764]["Text147"] = tOctActReward_Text[3310764]["Text147"]
tItem[3310764]["Text148"] = tOctActReward_Text[3310764]["Text148"]
tItem[3310764]["Text149"] = tOctActReward_Text[3310764]["Text149"]
tItem[3310764]["tOption1-4"] = {6}
tItem[3310764]["Option6"] = tOctActReward_Text[3310764]["Option7"]
tItem[3310764]["OptionPoint6"] = "1-3"

--发型包
tItemFace[3310776] = 1784
tItem[3310776] = tItem[3310776] or {}
tItem[3310776]["Text1-1"] = {111}
tItem[3310776]["Text111"] = tOctActReward_Text[3310776]["Text111"]
tItem[3310776]["tOption1-1"] = {1,2}
tItem[3310776]["Option1"]=tOctActReward_Text[3310776]["Option1"]
tItem[3310776]["OptionFunc1"] = "OctActReward_OpenHairPack</N>3310776</N>1"
tItem[3310776]["Option2"]=tOctActReward_Text[3310776]["Option2"]
tItem[3310776]["OptionFunc2"] = "OctActReward_OpenHairPack</N>3310776</N>2"