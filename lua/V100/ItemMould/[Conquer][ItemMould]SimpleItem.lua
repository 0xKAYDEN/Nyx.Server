----------------------------------------------------------------------------
--Name:		[征服][物品模板]简单右键使用物品.lua
--Purpose:	简单右键使用物品
--Creator: 	郑鋆
--Created:	2017/09/06
----------------------------------------------------------------------------

-- 命名前缀
-- SimpleItem_

-- 奖励表字段说明
-- ActivityTime					活动时间
-- ActivityType					活动时间的类型（没配默认为1）
-- UseItem						该物品使用的属性配置
---------------- Monopoly			物品使用的属性（默认为1）
---------------- Num				物品使用的数量（该物品必须集齐几个才能使用，默认只要1个）
---------------- SaveTime			使用的物品时效类型（默认传0，只能永久）
---------------- Sash				使用的物品（默认传0）

-- Coat							玩家使用该物品时需要花费的数据

-- EventType						stc掩码
-- DataType						stc掩码
-- RewardData					该物品每天可以使用的次数，默认1次
-- RewardTotalData				该物品总的使用次数
-- RewardDelay					stc掩码间隔时间
-- nTimeType						时间类型
-- MoreDel						物品在最后一次使用的时候删除，其它的时候不删除，没配则默认物品使用的时候都要删除

-- OverdueReward					物品过期奖励配置
---------------- RewardIndex		过期奖励类型
---------------- RewardValue		过期奖励值
---------------- RewardAttr		过期奖励的物品属性（过期给予物品时才需要配置）
-- Reward						物品奖励配置

-- Msg							物品使用过程中需要的提示文字
---------------- CoatEmoney		花费天石时玩家天石不满足提示
---------------- CoatEmoneyMono	花费赠点天石时玩家赠点天石不满足提示
---------------- CoatMoney			花费银两时玩家银两不满足提示
---------------- GongFu			获得真气等需要自创武功时，如果玩家还没有自创武功时的提示
---------------- RewardMoney		获得银两达到上限的提示
---------------- RewardEMoneyMono	获得赠点天石达到上限的提示
---------------- RewardEMoney		获得天石达到上限的提示
---------------- RewardZhenQi		获得真气时达到上限的提示
---------------- RewardFreePract	获得免费修炼次数时达到上限的提示
---------------- RewardRepair		获得修为值时达到上限的提示
---------------- GoldenLeague		获得黄金联赛积分时达到上限的提示
---------------- MaxPoint			获得属性点时达到上限的提示
---------------- NoSpace			背包空间不足的提示
---------------- NoSingleData		今天已使用过物品的提示
---------------- NoItem			物品数量不满足的提示


-----------------------------------------------------------------------------------逻辑部分--------------------------------------------------------------------
-- 参数说明
-- tReward		物品配置表
-- nItemId		物品ID
-- nNowUserId	玩家ID
function SimpleItem_Main(tReward,nItemId,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	tRewardTemplate_DelItemTypeLog[nUserId] = ""
	tRewardTemplate_DelItemNumLog[nUserId] = ""
	tRewardTemplate_NewRewardItem[nUserId] = 1
	
	-- 活动时间判断
	if not ItemMouldJudge_ChkTime(tReward) then
		-- 过期处理
		ItemMouldJudge_Overdue(tReward,nItemId,nUserId)
		return
	end
	
	-- 所需stc掩码判断
	if not ItemMouldJudge_ChkStcValues(tReward,nItemId,nUserId) then
		return
	end

	-- 物品使用的数量检测
	if not ItemMouldJudge_ChkUseItem(tReward,nItemId,nUserId) then
		return
	end
	
	-- 花费判断
	if not ItemMouldJudge_ChkCoat(tReward,nItemId,nUserId) then
		return
	end
	
	-- 上限判断
	if not ItemMouldJudge_ChkUpperLimit(tReward,nItemId,nUserId) then
		return
	end
	
	-- 背包空间判断
	if not ItemMouldJudge_ChkSpace(tReward,nItemId,nUserId) then
		return
	end
	
	-- 扣除花费
	if not ItemMouldJudge_Coat(tReward,nItemId,nUserId) then
		return
	end
	
	-- 删除物品
	if not ItemMouldJudge_DelSimpleItem(tReward,nItemId,nUserId) then
		return
	end
	
	-- 设置掩码值
	if not ItemMouldJudge_SetStc(tReward,nItemId,nUserId) then
		return
	end
	
	-- 获得奖励
	ItemMouldJudge_RewardSimple(tReward,nItemId,nUserId)
end

