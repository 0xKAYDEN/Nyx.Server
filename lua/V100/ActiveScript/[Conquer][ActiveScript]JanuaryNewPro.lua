------------------------------------------------------------------------------------
--Name:			161229[英文征服][任务脚本]1月新职业发奖action制作
--Creator: 		翁增锐
--Created:		2016/12/29
------------------------------------------------------------------------------------
--lua.ini:40430
--LOG:12000621
--前缀：JanuaryNewPro_

----------------------------------数据配置--------------------------------------------
local tJanuaryNewPro_Opengift = {}
--物品属性：15级极品赠品，无洞无追加无神佑
	tJanuaryNewPro_Opengift[3302063] = {}
	tJanuaryNewPro_Opengift[3302063]["DeleteItem"] = {}
	tJanuaryNewPro_Opengift[3302063]["DeleteItem"][1] = {}
	tJanuaryNewPro_Opengift[3302063]["DeleteItem"][1]["Id"] = 3302063
	tJanuaryNewPro_Opengift[3302063]["RewardItem"] = {}
	tJanuaryNewPro_Opengift[3302063]["RewardItem"][1] = {}
	tJanuaryNewPro_Opengift[3302063]["RewardItem"][1]["Id"] = 626029
	tJanuaryNewPro_Opengift[3302063]["RewardItem"][1]["Attr"] = "0 2 3"
	tJanuaryNewPro_Opengift[3302063]["RewardItem"][2] = {}
	tJanuaryNewPro_Opengift[3302063]["RewardItem"][2]["Id"] = 101009
	tJanuaryNewPro_Opengift[3302063]["RewardItem"][2]["Attr"] = "0 1 3"
	tJanuaryNewPro_Opengift[3302063]["RewardItem"][3] = {}
	tJanuaryNewPro_Opengift[3302063]["RewardItem"][3]["Id"] = 170009
	tJanuaryNewPro_Opengift[3302063]["RewardItem"][3]["Attr"] = "0 1 3"
	tJanuaryNewPro_Opengift[3302063]["Log"] = "0,0,3302063,1,12000621,2,626029[101009][170009],2[1][1]"
	tJanuaryNewPro_Opengift[3302063]["Talk"] = tJanuaryNewPro_Text[3302063]
	
----------------------------------物品配置---------------------------------------------
--打开礼包
tItem[3302063] = tItem[3302063] or {}
tItem[3302063]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tJanuaryNewPro_Opengift[nItemId])
end