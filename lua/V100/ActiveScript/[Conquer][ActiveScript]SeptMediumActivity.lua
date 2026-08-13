-------------------------------------------------------------------------------------------------------------------
--Name:		170822[英文征服][活动脚本]9月换肤媒介礼包活动礼包及发奖action制作
--Purpose:	9月换肤媒介礼包活动礼包及发奖action
--Creator: 	洪聪敏
--Created:	2017/08/22
--------------------------------------------------------------------------------------
--命名前缀
--SeptMediumActivity_
--logId 12000840
---------------------------------------------------------------------------------------
local tSeptMediumActivity_Reward={}
--新征服相聚礼盒
	tSeptMediumActivity_Reward[3304781]={}
	tSeptMediumActivity_Reward[3304781][1]={}
	tSeptMediumActivity_Reward[3304781][1]["DeleteItem"] = {}
	tSeptMediumActivity_Reward[3304781][1]["DeleteItem"][1] = {}
	tSeptMediumActivity_Reward[3304781][1]["DeleteItem"][1]["Id"] = 3304781
	tSeptMediumActivity_Reward[3304781][1]["RewardItem"] = {}
	tSeptMediumActivity_Reward[3304781][1]["RewardItem"][1] = {}
	tSeptMediumActivity_Reward[3304781][1]["RewardItem"][1]["Id"] = 723700 
	tSeptMediumActivity_Reward[3304781][1]["RewardItem"][1]["Attr"] = "0 10 3"
	tSeptMediumActivity_Reward[3304781][1]["RewardItem"][2] = {}
	tSeptMediumActivity_Reward[3304781][1]["RewardItem"][2]["Id"] = 723017 
	tSeptMediumActivity_Reward[3304781][1]["RewardItem"][2]["Attr"] = "0 10 3"
	tSeptMediumActivity_Reward[3304781][1]["RewardItem"][3] = {}
	tSeptMediumActivity_Reward[3304781][1]["RewardItem"][3]["Id"] = 1200001 
	tSeptMediumActivity_Reward[3304781][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tSeptMediumActivity_Reward[3304781][1]["RewardItem"][4] = {}
	tSeptMediumActivity_Reward[3304781][1]["RewardItem"][4]["Id"] = 3304783 
	tSeptMediumActivity_Reward[3304781][1]["RewardItem"][4]["Attr"] = "0 1"
	tSeptMediumActivity_Reward[3304781][1]["RewardItem"][5] = {}
	tSeptMediumActivity_Reward[3304781][1]["RewardItem"][5]["Id"] = 3007032
	tSeptMediumActivity_Reward[3304781][1]["RewardItem"][5]["Attr"] = "0 1"
	tSeptMediumActivity_Reward[3304781][1]["RewardItem"][6] = {}
	tSeptMediumActivity_Reward[3304781][1]["RewardItem"][6]["Id"] = 3304784 
	tSeptMediumActivity_Reward[3304781][1]["RewardItem"][6]["Attr"] = "0 1"
	tSeptMediumActivity_Reward[3304781][1]["RewardItem"][7] = {}
	tSeptMediumActivity_Reward[3304781][1]["RewardItem"][7]["Id"] = 3004878 
	tSeptMediumActivity_Reward[3304781][1]["RewardItem"][7]["Attr"] = "0 1"
	tSeptMediumActivity_Reward[3304781][1]["RewardItem"][8] = {}
	tSeptMediumActivity_Reward[3304781][1]["RewardItem"][8]["Id"] = 192615 
	tSeptMediumActivity_Reward[3304781][1]["RewardItem"][8]["Attr"] = "0 1 3 43200 0 0 0 1"
	tSeptMediumActivity_Reward[3304781][1]["RewardItem"][9] = {}
	tSeptMediumActivity_Reward[3304781][1]["RewardItem"][9]["Id"] = 3304782 
	tSeptMediumActivity_Reward[3304781][1]["RewardItem"][9]["Attr"] = "0 1 0 43200 1"
	tSeptMediumActivity_Reward[3304781][1]["RewardItem"][9]["talk"] = tSeptMediumActivity_Text[3304781]["Reward"]
	tSeptMediumActivity_Reward[3304781][1]["LogId"]=12000840
--新征服转世礼盒
	tSeptMediumActivity_Reward[3304782]={}
	tSeptMediumActivity_Reward[3304782]["DecEMoney"]=1299
	tSeptMediumActivity_Reward[3304782][1]={}
	tSeptMediumActivity_Reward[3304782][1]["DeleteItem"] = {}
	tSeptMediumActivity_Reward[3304782][1]["DeleteItem"][1] = {}
	tSeptMediumActivity_Reward[3304782][1]["DeleteItem"][1]["Id"] = 3304782
	tSeptMediumActivity_Reward[3304782][1]["RewardItem"] = {}
	tSeptMediumActivity_Reward[3304782][1]["RewardItem"][1] = {}
	tSeptMediumActivity_Reward[3304782][1]["RewardItem"][1]["Id"] = 723701 
	tSeptMediumActivity_Reward[3304782][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tSeptMediumActivity_Reward[3304782][1]["RewardItem"][2] = {}
	tSeptMediumActivity_Reward[3304782][1]["RewardItem"][2]["Id"] = 3009002 
	tSeptMediumActivity_Reward[3304782][1]["RewardItem"][2]["Attr"] = "0 3 0 2880 1"
	tSeptMediumActivity_Reward[3304782][1]["RewardItem"][3] = {}
	tSeptMediumActivity_Reward[3304782][1]["RewardItem"][3]["Id"] = 3003124  
	tSeptMediumActivity_Reward[3304782][1]["RewardItem"][3]["Attr"] = "0 100 3"
	tSeptMediumActivity_Reward[3304782][1]["RewardItem"][4] = {}
	tSeptMediumActivity_Reward[3304782][1]["RewardItem"][4]["Id"] = 3003126  
	tSeptMediumActivity_Reward[3304782][1]["RewardItem"][4]["Attr"] = "0 30 3"
	tSeptMediumActivity_Reward[3304782][1]["RewardItem"][5] = {}
	tSeptMediumActivity_Reward[3304782][1]["RewardItem"][5]["Id"] = 3200349 
	tSeptMediumActivity_Reward[3304782][1]["RewardItem"][5]["Attr"] = "0 1"
	tSeptMediumActivity_Reward[3304782][1]["RewardItem"][5]["talk"] = tSeptMediumActivity_Text[3304782]["Reward"]
	tSeptMediumActivity_Reward[3304782][1]["LogId"]=12000840
--7颗+3赤炼石（赠）礼包
	tSeptMediumActivity_Reward[3304783]={}
	tSeptMediumActivity_Reward[3304783][1]={}
	tSeptMediumActivity_Reward[3304783][1]["DeleteItem"] = {}
	tSeptMediumActivity_Reward[3304783][1]["DeleteItem"][1] = {}
	tSeptMediumActivity_Reward[3304783][1]["DeleteItem"][1]["Id"] = 3304783
	tSeptMediumActivity_Reward[3304783][1]["RewardItem"]= {}
	tSeptMediumActivity_Reward[3304783][1]["RewardItem"][1] = {}
	tSeptMediumActivity_Reward[3304783][1]["RewardItem"][1]["Id"] = 730003 
	tSeptMediumActivity_Reward[3304783][1]["RewardItem"][1]["Attr"] = "0 7 3"
	tSeptMediumActivity_Reward[3304783][1]["RewardItem"][1]["talk"] = tSeptMediumActivity_Text[3304783]["Reward"]
	tSeptMediumActivity_Reward[3304783][1]["LogId"]=12000840
--5颗龙珠（赠）礼包
	tSeptMediumActivity_Reward[3304784]={}
	tSeptMediumActivity_Reward[3304784][1]={}
	tSeptMediumActivity_Reward[3304784][1]["DeleteItem"] = {}
	tSeptMediumActivity_Reward[3304784][1]["DeleteItem"][1] = {}
	tSeptMediumActivity_Reward[3304784][1]["DeleteItem"][1]["Id"] = 3304784
	tSeptMediumActivity_Reward[3304784][1]["RewardItem"]= {}
	tSeptMediumActivity_Reward[3304784][1]["RewardItem"][1] = {}
	tSeptMediumActivity_Reward[3304784][1]["RewardItem"][1]["Id"] = 1088000 
	tSeptMediumActivity_Reward[3304784][1]["RewardItem"][1]["Attr"] = "0 5 3"
	tSeptMediumActivity_Reward[3304783][1]["RewardItem"][1]["talk"] = tSeptMediumActivity_Text[3304784]["Reward"]
	tSeptMediumActivity_Reward[3304781][1]["LogId"]=12000840
	-- Emoney Log
	tSeptMediumActivity_EmoneyLog = {}
	--玩家使用天石打开新征服转世礼盒
	tSeptMediumActivity_EmoneyLog["Cps2"]="350	20753	%d	%d	1	"
-----------------------------------逻辑部分--------------------------------------------
--打开新征服转世礼盒
function SeptMediumActivity_Add(nItemId)
	--判断物品是否存在
	if not Item_ChkItem(nItemId) then 
	return
	end
	
	--天石不够
	local nEMoney =tSeptMediumActivity_Reward[nItemId]["DecEMoney"]
	local nUserEmoney = Get_UserEMoney()
	if not (nUserEmoney >= nEMoney) then
		Sys_MsgBox(tSeptMediumActivity_Text["NoEMoney"])
		return
	end
	
	--检查背包空间
	local nNeedSpace = RewardTemplate_GetRewardSpace(tSeptMediumActivity_Reward[nItemId][1])
	if nNeedSpace  ~=nill and nNeedSpace  ~= 0 then 
		if not User_CheckLeftSpace(nNeedSpace) then
			local sText = string.format(tSeptMediumActivity_Text["NoBoxspace"],nNeedSpace)
			Sys_MsgBox(sText)
		return
		end
	end
	
	--扣除天石 打log
	User_AddEMoney(-nEMoney)
	local sEmoneyLog = string.format(tSeptMediumActivity_EmoneyLog["Cps2"],nEMoney,nEMoney)
	Sys_SaveEmoneyBuy(sEmoneyLog)
	RewardTemplate_UseItem(tSeptMediumActivity_Reward[nItemId][1])
end
-----------------------------------物品配置--------------------------------------------
--新征服相聚礼盒
	tItem[3304781] = tItem[3304781] or {}
	tItem[3304781]["Function"] = function(nItemId,sItemName)
--检查背包空间
	local nNeedSpace = RewardTemplate_GetRewardSpace(tSeptMediumActivity_Reward[nItemId][1])
	if nNeedSpace  ~=nill and nNeedSpace  ~= 0 then 
		if not User_CheckLeftSpace(nNeedSpace) then
			local sText = string.format(tSeptMediumActivity_Text["NoBoxspace"],nNeedSpace)
			Sys_MsgBox(sText)
		return
		end
	end
	RewardTemplate_UseItem(tSeptMediumActivity_Reward[nItemId][1])
end

--新征服转世礼盒
	tItemFace[3304782] = 802
	tItem[3304782] = tItem[3304782] or {}
	tItem[3304782]["DialogueText"] = tSeptMediumActivity_Text[3304782]
--对白
	tItem[3304782]["Text1-1"] = {111}
	tItem[3304782]["tOption1-1"] ={111,112}
	tItem[3304782]["OptionPoint111"]="2-1"
	tItem[3304782]["Text2-1"] = {211}
	tItem[3304782]["tOption2-1"] ={211,212}
	tItem[3304782]["OptionFunc211"]="SeptMediumActivity_Add</N>3304782"

--7颗+3赤炼石（赠）礼包 
	tItem[3304783] = tItem[3304783] or {}
	tItem[3304783]["Function"] = function(nItemId,sItemName)
--检查背包空间
	local nNeedSpace = RewardTemplate_GetRewardSpace(tSeptMediumActivity_Reward[nItemId][1])
	if nNeedSpace  ~=nill and nNeedSpace  ~= 0 then 
		if not User_CheckLeftSpace(nNeedSpace) then
			local sText = string.format(tSeptMediumActivity_Text["NoPackspace"],nNeedSpace)
			Sys_MsgBox(sText)
		return
		end
	end
	RewardTemplate_UseItem(tSeptMediumActivity_Reward[nItemId][1])
end
tItem[3304784] = tItem[3304783] 