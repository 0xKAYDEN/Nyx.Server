----------------------------------------------------------------------------------------
--Name:		60126[英文征服][任务脚本]3月充值有礼发奖action
--Purpose:		3月充值有礼发奖action
--Creator:		zsc
--Created:		2016/01/26
----------------------------------------------------------------------------------------

--前缀
--MarchAward

--常量表
local tMarchAward = {}
tMarchAward["Log"] = "0,0,%s,1,12000309,2,%s,1" 

--精致宝石礼包
tMarchAward[3008435] = {}
tMarchAward[3008435][1] = 700102
tMarchAward[3008435][2] = 700122


--豪华宝石礼包
tMarchAward[3008436] = {}
tMarchAward[3008436][1] = 700103
tMarchAward[3008436][2] = 700123

--逻辑部分

function MarchAward_Select(nItemId,sItemName)
	Sys_DialogItemFace(nItemId)
	Sys_DialogText(tMarchAward_Text[nItemId]["Select"])
	for i,v in ipairs(tMarchAward[nItemId]) do
		Sys_DialogOption(string.format(tMarchAward_Text[nItemId]["Option"],Get_ItemtypeName(v)),"</F>MarchAward_Comfirm</N>"..nItemId.."</N>"..i)
	end
	Sys_DialogEnd()
end


function MarchAward_Comfirm(nItemId,nSelect)
	Sys_DialogItemFace(nItemId)
	Sys_DialogText(string.format(tMarchAward_Text[nItemId]["Comfirm"],Get_ItemtypeName(tMarchAward[nItemId][nSelect])))
	Sys_DialogOption(tMarchAward_Text[nItemId]["Yes"],"</F>MarchAward_Award</N>"..nItemId.."</N>"..nSelect)
	Sys_DialogOption(tMarchAward_Text[nItemId]["No"],"</F>NULL")
	Sys_DialogEnd()
end

function MarchAward_Award(nItemId,nSelect)
	local nAwardItem = tMarchAward[nItemId][nSelect]
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		Item_AddNewItem(nAwardItem,"")
		Sys_SaveActionFestivalLog(string.format(tMarchAward["Log"],nItemId,nAwardItem))
		User_TalkChannel2005(string.format(tMarchAward_Text[nItemId]["Award"],Get_ItemtypeName(nAwardItem)))
	end
	
end




-------------------------------------------物品使用-----------------------------------------------
tItemFace[3008435] = 2640
tItem[3008435] = tItem[3008435] or {}
tItem[3008435]["Function"] = function(nItemId,sItemName)
	MarchAward_Select(nItemId,sItemName)
end

tItemFace[3008436] = 2639
tItem[3008436] = tItem[3008436] or {}
tItem[3008436]["Function"] = function(nItemId,sItemName)
	MarchAward_Select(nItemId,sItemName)
end


