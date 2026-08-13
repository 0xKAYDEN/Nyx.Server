------------------------------------------------------------------------------------
--Name：            170907[英文征服][活动脚本]10月老玩家回归礼包及action制作
--Creator:      杨艳
--Created:     2017/09/07
------------------------------------------------------------------------------------
-- 任务需求:
-- 英文征服10月老玩家回归礼包及action制作

-- 更新时间：
-- 2017年9月28日（周四）例行维护

-- 任务概述：
-- 制作10月老玩家回归礼包及action。

-- 10月老玩家回归-玩家签到礼包	
	-- 赠品经验球*5	723700	5		赠	永久	100%	直接发
	-- 赠品强炼丹*5	3003124	5		赠	永久	100%	
	-- 赠品强效护心丹*5	3002030	5		赠	永久	100%	
	-- 赠品祈愿石小*1	1200000	1		赠	永久	100%	
	-- 赠品任务重置符*1	3001407	1		赠	永久	100%	
	-- 明亮星陨石*2	3009001	2		不可交易	两天内激活有效	100%	
	-- 1000气力值礼包	3301810	1		不可交易	永久	100%	
	-- 50赠点天石	新制作	1	直接发	赠	永久	100%	
	-- 50修为值	新制作	1	直接发	赠	永久	100%	
	
-- 10月老玩家回归-10w气力发奖action
	-- 100000气力值礼包	新制作	1		不可交易	永久	100%	直接发

-- #3305131  英雄归来大礼盒
-- #3305132  10万气力值大礼盒


------------------------------------------------------------------------------------
--命名前缀
--OctoberReturnSpree_
------------------------------------------------------------------------------------
--礼包种类
local tOctoberReturnSpree_GiftType = {}
	-- 3305131 英雄归来大礼盒
	tOctoberReturnSpree_GiftType[3305131] = {}
	tOctoberReturnSpree_GiftType[3305131]["Log"] = "0,0,3305131,1,12000858,2,723700[3003124][3002030][1200000][3001407][3009001][3301810][3][19],5[5][5][1][1][2][1][50][50]"
	tOctoberReturnSpree_GiftType[3305131]["DeleteItem"] = {}
	tOctoberReturnSpree_GiftType[3305131]["DeleteItem"][1] = {}
	tOctoberReturnSpree_GiftType[3305131]["DeleteItem"][1]["Id"] = 3305131
--	tOctoberReturnSpree_GiftType[3305131]["RewardEMoney"]["EmoneyLog"] = "250	4033	0	0	1	"
	
	tOctoberReturnSpree_GiftType[3305131]["RewardItem"] = {}
	tOctoberReturnSpree_GiftType[3305131]["RewardItem"][1] = {}
	tOctoberReturnSpree_GiftType[3305131]["RewardItem"][1]["Id"] = 723700
	tOctoberReturnSpree_GiftType[3305131]["RewardItem"][1]["Attr"] = "0 5 3"

	tOctoberReturnSpree_GiftType[3305131]["RewardItem"][2] = {}
	tOctoberReturnSpree_GiftType[3305131]["RewardItem"][2]["Id"] = 3003124
	tOctoberReturnSpree_GiftType[3305131]["RewardItem"][2]["Attr"] = "0 5 3"
	
	tOctoberReturnSpree_GiftType[3305131]["RewardItem"][3] = {}
	tOctoberReturnSpree_GiftType[3305131]["RewardItem"][3]["Id"] = 3002030
	tOctoberReturnSpree_GiftType[3305131]["RewardItem"][3]["Attr"] = "0 5"
	
	tOctoberReturnSpree_GiftType[3305131]["RewardItem"][4] = {}
	tOctoberReturnSpree_GiftType[3305131]["RewardItem"][4]["Id"] = 1200000
	tOctoberReturnSpree_GiftType[3305131]["RewardItem"][4]["Attr"] = "0 1 3"
   
	tOctoberReturnSpree_GiftType[3305131]["RewardItem"][5] = {}
	tOctoberReturnSpree_GiftType[3305131]["RewardItem"][5]["Id"] = 3001407
	tOctoberReturnSpree_GiftType[3305131]["RewardItem"][5]["Attr"] = "0 1 3"
	
	tOctoberReturnSpree_GiftType[3305131]["RewardItem"][6] = {}
	tOctoberReturnSpree_GiftType[3305131]["RewardItem"][6]["Id"] = 3009001
	tOctoberReturnSpree_GiftType[3305131]["RewardItem"][6]["Attr"] = "0 2 0 2880 1"
	
	tOctoberReturnSpree_GiftType[3305131]["RewardItem"][7] = {}
	tOctoberReturnSpree_GiftType[3305131]["RewardItem"][7]["Id"] = 3301810
	tOctoberReturnSpree_GiftType[3305131]["RewardItem"][7]["Attr"] = "0 1"
  
	tOctoberReturnSpree_GiftType[3305131]["RewardEMoneyMono"] = {}
	tOctoberReturnSpree_GiftType[3305131]["RewardEMoneyMono"]["Value"] = 50
    
	tOctoberReturnSpree_GiftType[3305131]["RewardRepairValue"] = {}
	tOctoberReturnSpree_GiftType[3305131]["RewardRepairValue"]["Value"] = 50
	

	--3305132  10万气力值大礼盒
	tOctoberReturnSpree_GiftType[3305132] = {}
	tOctoberReturnSpree_GiftType[3305132]["Log"] = "0,0,3305132,1,12000858,2,12,100000"
	tOctoberReturnSpree_GiftType[3305132]["DeleteItem"] = {}
	tOctoberReturnSpree_GiftType[3305132]["DeleteItem"][1] = {}
	tOctoberReturnSpree_GiftType[3305132]["DeleteItem"][1]["Id"] = 3305132
	
	tOctoberReturnSpree_GiftType[3305132]["RewardStrengthValue"] = {}
	tOctoberReturnSpree_GiftType[3305132]["RewardStrengthValue"]["Value"] = 100000

--删除	
	-- tOctoberReturnSpree_GiftType[3305132]["DeleteItem"] = {}
	-- tOctoberReturnSpree_GiftType[3305132]["DeleteItem"]["Id"] = 3305132
	
	-- tOctoberReturnSpree_GiftType[3305131]["DeleteItem"] = {}
	-- tOctoberReturnSpree_GiftType[3305131]["DeleteItem"][1] = {}
	-- tOctoberReturnSpree_GiftType[3305131]["DeleteItem"][1]["Id"] = 3305131
	
---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3305131] = tItem[3305131] or {}
tItem[3305131]["Function"] = function(nItemId)
	RewardTemplate_UseItemAndMsg(tOctoberReturnSpree_GiftType[nItemId])
end	

tItem[3305132] = tItem[3305132] or {}
tItem[3305132]["Function"] = function(nItemId)
	RewardTemplate_UseItemAndMsg(tOctoberReturnSpree_GiftType[nItemId])
end	



