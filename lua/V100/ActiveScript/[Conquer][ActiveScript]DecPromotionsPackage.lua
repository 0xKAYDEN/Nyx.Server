------------------------------------------------------------------------------------
--Name：            171219[英文征服][活动脚本]12月大促礼包及发奖action
--Creator:      林旭
--Created:     2017/12/19
------------------------------------------------------------------------------------
-- 任务需求：
-- 英文征服12月大促发奖action制作
-- 任务概述：
-- 制作礼包及发奖action，具体详见附件

------------------------------------------------------------------------------------
-- 命名前缀
-- DecProPackage_
-- LogId = 12000967
----------------------------------表配置部分--------------------------------------------
local tDecProPackage_RewardItem = {}

-- 圣诞回馈尊享包
	tDecProPackage_RewardItem[3306903] = {}
	-- 100000点气力值
	tDecProPackage_RewardItem[3306903]["RewardStrengthValue"] = {}
	tDecProPackage_RewardItem[3306903]["RewardStrengthValue"]["Value"] = 100000
	-- 1%神佑大圣魔铠【齐天】
	tDecProPackage_RewardItem[3306903]["RewardItem"] = {}
	tDecProPackage_RewardItem[3306903]["RewardItem"][1] = {}
	tDecProPackage_RewardItem[3306903]["RewardItem"][1]["Id"] = 189695
	tDecProPackage_RewardItem[3306903]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tDecProPackage_RewardItem[3306903]["DeleteItem"] = {}
	tDecProPackage_RewardItem[3306903]["DeleteItem"][1] = {}
	tDecProPackage_RewardItem[3306903]["DeleteItem"][1]["Id"] = 3306903
	tDecProPackage_RewardItem[3306903]["LogId"] = 12000967
	
-- 圣诞回馈豪华包
	tDecProPackage_RewardItem[3306904] = {}
	tDecProPackage_RewardItem[3306904][1] = {}
	-- 80000点气力值
	tDecProPackage_RewardItem[3306904][1]["RewardStrengthValue"] = {}
	tDecProPackage_RewardItem[3306904][1]["RewardStrengthValue"]["Value"] = 80000
	-- 1%神佑赤霄火云
	tDecProPackage_RewardItem[3306904][1]["RewardItem"] = {}
	tDecProPackage_RewardItem[3306904][1]["RewardItem"][1] = {}
	tDecProPackage_RewardItem[3306904][1]["RewardItem"][1]["Id"] = 200613
	tDecProPackage_RewardItem[3306904][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tDecProPackage_RewardItem[3306904][1]["DeleteItem"] = {}
	tDecProPackage_RewardItem[3306904][1]["DeleteItem"][1] = {}
	tDecProPackage_RewardItem[3306904][1]["DeleteItem"][1]["Id"] = 3306904
	tDecProPackage_RewardItem[3306904][1]["LogId"] = 12000967
	
	tDecProPackage_RewardItem[3306904][2] = {}
	-- 80000点气力值
	tDecProPackage_RewardItem[3306904][2]["RewardStrengthValue"] = {}
	tDecProPackage_RewardItem[3306904][2]["RewardStrengthValue"]["Value"] = 80000
	-- 1%神佑蓝海苍云
	tDecProPackage_RewardItem[3306904][2]["RewardItem"] = {}
	tDecProPackage_RewardItem[3306904][2]["RewardItem"][1] = {}
	tDecProPackage_RewardItem[3306904][2]["RewardItem"][1]["Id"] = 200614
	tDecProPackage_RewardItem[3306904][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tDecProPackage_RewardItem[3306904][2]["DeleteItem"] = {}
	tDecProPackage_RewardItem[3306904][2]["DeleteItem"][1] = {}
	tDecProPackage_RewardItem[3306904][2]["DeleteItem"][1]["Id"] = 3306904
	tDecProPackage_RewardItem[3306904][2]["LogId"] = 12000967
	
	tDecProPackage_RewardItem[3306904][3] = {}
	-- 80000点气力值
	tDecProPackage_RewardItem[3306904][3]["RewardStrengthValue"] = {}
	tDecProPackage_RewardItem[3306904][3]["RewardStrengthValue"]["Value"] = 80000
	-- 1%神佑马上有人民币              
	tDecProPackage_RewardItem[3306904][3]["RewardItem"] = {}
	tDecProPackage_RewardItem[3306904][3]["RewardItem"][1] = {}
	tDecProPackage_RewardItem[3306904][3]["RewardItem"][1]["Id"] = 200494
	tDecProPackage_RewardItem[3306904][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tDecProPackage_RewardItem[3306904][3]["DeleteItem"] = {}
	tDecProPackage_RewardItem[3306904][3]["DeleteItem"][1] = {}
	tDecProPackage_RewardItem[3306904][3]["DeleteItem"][1]["Id"] = 3306904
	tDecProPackage_RewardItem[3306904][3]["LogId"] = 12000967
	
	-- 圣诞回馈精装包
	tDecProPackage_RewardItem[3306905] = {}
	tDecProPackage_RewardItem[3306905][1] = {}
	-- 50000点气力值
	tDecProPackage_RewardItem[3306905][1]["RewardStrengthValue"] = {}
	tDecProPackage_RewardItem[3306905][1]["RewardStrengthValue"]["Value"] = 50000
	-- 1%神佑赤霄火云               
	tDecProPackage_RewardItem[3306905][1]["RewardItem"] = {}
	tDecProPackage_RewardItem[3306905][1]["RewardItem"][1] = {}
	tDecProPackage_RewardItem[3306905][1]["RewardItem"][1]["Id"] = 200613
	tDecProPackage_RewardItem[3306905][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tDecProPackage_RewardItem[3306905][1]["DeleteItem"] = {}
	tDecProPackage_RewardItem[3306905][1]["DeleteItem"][1] = {}
	tDecProPackage_RewardItem[3306905][1]["DeleteItem"][1]["Id"] = 3306905
	tDecProPackage_RewardItem[3306905][1]["LogId"] = 12000967
	                   
	tDecProPackage_RewardItem[3306905][2] = {}   
	-- 50000点气力值                
	tDecProPackage_RewardItem[3306905][2]["RewardStrengthValue"] = {}
	tDecProPackage_RewardItem[3306905][2]["RewardStrengthValue"]["Value"] = 50000
	-- 1%神佑蓝海苍云               
	tDecProPackage_RewardItem[3306905][2]["RewardItem"] = {}
	tDecProPackage_RewardItem[3306905][2]["RewardItem"][1] = {}
	tDecProPackage_RewardItem[3306905][2]["RewardItem"][1]["Id"] = 200614
	tDecProPackage_RewardItem[3306905][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tDecProPackage_RewardItem[3306905][2]["DeleteItem"] = {}
	tDecProPackage_RewardItem[3306905][2]["DeleteItem"][1] = {}
	tDecProPackage_RewardItem[3306905][2]["DeleteItem"][1]["Id"] = 3306905
	tDecProPackage_RewardItem[3306905][2]["LogId"] = 12000967
	
-- 圣诞回馈包
	tDecProPackage_RewardItem[3306906] = {}
	-- 20000点气力值
	tDecProPackage_RewardItem[3306906]["RewardStrengthValue"] = {}
	tDecProPackage_RewardItem[3306906]["RewardStrengthValue"]["Value"] = 20000
	-- 1%神佑幻雪蓝莲               
	tDecProPackage_RewardItem[3306906]["RewardItem"] = {}
	tDecProPackage_RewardItem[3306906]["RewardItem"][1] = {}
	tDecProPackage_RewardItem[3306906]["RewardItem"][1]["Id"] = 200574
	tDecProPackage_RewardItem[3306906]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tDecProPackage_RewardItem[3306906]["DeleteItem"] = {}
	tDecProPackage_RewardItem[3306906]["DeleteItem"][1] = {}
	tDecProPackage_RewardItem[3306906]["DeleteItem"][1]["Id"] = 3306906
	tDecProPackage_RewardItem[3306906]["LogId"] = 12000967

----------------------------------逻辑部分---------------------------------------------
--打开可选礼包
function DecProPackage_Confirm(nItemId,nIndex)
	RewardTemplate_UseItemAndMsg(tDecProPackage_RewardItem[nItemId][nIndex])
end	


---------------------------------物品部分---------------------------------------------
--------物品无对白模板
-- 圣诞回馈尊享包
tItem[3306903] = tItem[3306903] or {}
tItem[3306903]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tDecProPackage_RewardItem[nItemId])
end

-- 圣诞回馈包
tItem[3306906] = tItem[3306906] or {}
tItem[3306906]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tDecProPackage_RewardItem[nItemId])
end
--------物品有对白模板
-- 圣诞回馈豪华包
tItemFace[3306904] = 1164
tItem[3306904] = tItem[3306904] or {}
tItem[3306904]["Text1-1"] = {111}
tItem[3306904]["Text111"] = tDecProPackage_Text[3306904]["Text111"]
tItem[3306904]["tOption1-1"] = {111,112,113}
tItem[3306904]["Option111"] = tDecProPackage_Text[3306904]["Option111"]
tItem[3306904]["OptionFunc111"]="DecProPackage_Confirm</N>3306904</N>1"
tItem[3306904]["Option112"] = tDecProPackage_Text[3306904]["Option112"]
tItem[3306904]["OptionFunc112"]="DecProPackage_Confirm</N>3306904</N>2"
tItem[3306904]["Option113"] = tDecProPackage_Text[3306904]["Option113"]
tItem[3306904]["OptionFunc113"]="DecProPackage_Confirm</N>3306904</N>3"

-- 圣诞回馈包
tItemFace[3306905] = 1165
tItem[3306905] = tItem[3306905] or {}
tItem[3306905]["Text1-1"] = {111}
tItem[3306905]["Text111"] = tDecProPackage_Text[3306904]["Text111"]
tItem[3306905]["tOption1-1"] = {111,112,113}
tItem[3306905]["Option111"] = tDecProPackage_Text[3306905]["Option111"]
tItem[3306905]["OptionFunc111"]="DecProPackage_Confirm</N>3306905</N>1"
tItem[3306905]["Option112"] = tDecProPackage_Text[3306905]["Option112"]
tItem[3306905]["OptionFunc112"]="DecProPackage_Confirm</N>3306905</N>2"