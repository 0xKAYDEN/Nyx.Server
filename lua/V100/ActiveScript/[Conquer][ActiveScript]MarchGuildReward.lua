------------------------------------------------------------------------------------
--Name:	170210[英文征服][活动脚本]3月帮派成员上线有好礼活动(3.02-3.15)
--Purpose:	促帮派活跃，刺激玩家加入帮派
--Creator: 姚曦宇
--Created:	2017/02/10
------------------------------------------------------------------------------------
-- Logid：12000646
-- Emoneylog：350 20515
-- Stc掩码：
-- Stc(157,01) 0表示未领取过礼包，1表示已领取过礼包
-- Stc(157,02) 后四位表示当日是否领取明亮星陨石，前四位表示总共领取明亮星陨石的数量
-- 统一前缀 MarchGuildReward_
------------------------------------- 常量表 -------------------------------------
local tMarchGuildReward_Cont = {}
	tMarchGuildReward_Cont["ActiveTime"] = "2017-03-02 00:00 2017-03-15 23:59"
	tMarchGuildReward_Cont["EmoneyLog"] = "350	20515	0	0	1	"
	
	
local tMarchGuildReward_Award = {}
-- 帮派成员豪享礼盒
	tMarchGuildReward_Award[3302253] = {} 
	tMarchGuildReward_Award[3302253]["EventType"] = 157
	tMarchGuildReward_Award[3302253]["DataType"] = 02
	-- 每天只能领1次，最多领30次
	tMarchGuildReward_Award[3302253]["RewardData"] = 1 
	tMarchGuildReward_Award[3302253]["RewardTotalData"] = 30 
	tMarchGuildReward_Award[3302253]["RewardDelay"] = 1 
	tMarchGuildReward_Award[3302253]["RewardTimeType"] = 4 
	-- 2天时效明亮星陨石*1
	tMarchGuildReward_Award[3302253]["RewardItem"] = {}
	tMarchGuildReward_Award[3302253]["RewardItem"][1] = {}
	tMarchGuildReward_Award[3302253]["RewardItem"][1]["Id"] = 3009001 
	tMarchGuildReward_Award[3302253]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tMarchGuildReward_Award[3302253]["Talk"] = tMarchGuildReward_Text["Open"]
	tMarchGuildReward_Award[3302253]["HaveReceive"] = tMarchGuildReward_Text["HaveReceive"]
	tMarchGuildReward_Award[3302253]["NoSpace"] = tMarchGuildReward_Text["BagFull"]
	tMarchGuildReward_Award[3302253]["Log"] = "0,0,0,0,12000646,2,3009001,1"
	
------------------------------------ 逻辑部分 -------------------------------------
-- 打开礼包
function MarchGuildReward_ItemUse(nItemId)
	local nUserId = Get_UserId()
	-- 判断是否加入帮派
	if Get_UserGuildId(nUserId) == 0 then
		Sys_MsgBox(tMarchGuildReward_Text["NoGuild"],"NULL","NULL",nUserId)
		return
	end
	RewardTemplate_UseItem(tMarchGuildReward_Award[nItemId],nUserId)
	-- 运营要求 记录EmoneyLog
	Sys_SaveEmoneyBuy(tMarchGuildReward_Cont["EmoneyLog"],nUserId)
end
----------------------------------- 物品逻辑 ---------------------------------------
-- 帮派成员豪享礼盒
tItem[3302253] = tItem[3302253] or {}
tItem[3302253]["Function"] = function(nItemId,nItemName)
	MarchGuildReward_ItemUse(nItemId)
end
