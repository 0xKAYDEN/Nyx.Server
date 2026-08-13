------------------------------------------------------------------------------------
--Name：            190114[英文征服][活动脚本]2月促销活动线上部分制作
--Creator:      王贤
--Created:     2019-01-14
------------------------------------------------------------------------------------
--任务需求：
-- 请安排2月促销活动线上部分制作，具体内容见附件。
-- 活动时间：2.02-2.13
-- 更新范围：全区全服
-- 计划更新时间：2.02
-- 如有问题，请及时沟通，谢谢！
-- 备注：为了方便活动数据统计，部分 log 需要做成 emoney_buy log，具体情况制作时再沟通下。
-- ==任务制作npc提交天石部分；
------------------------------------------------------------------------------------
-- stc(189, 09)  1 、背包信
-- stc(189, 10)  2 、提交的天石数量
------------------------------------------------------------------------------------
-- 前缀
-- SalesPromotionOnlinePart_

-- EMoneyLog： 10000	0139
------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tSalesPromotionOnlinePart_Data = {}
-- 活动时间
tSalesPromotionOnlinePart_Data["ActivityTime"] = tActivityTime["SalesPromotionOnlinePart"]["ActivityTime"]
-- NPCid
tSalesPromotionOnlinePart_Data["NpcId"] = 23696
-- 预存金额
tSalesPromotionOnlinePart_Data["Emoney"] = {}
tSalesPromotionOnlinePart_Data["Emoney"][1] = 100
tSalesPromotionOnlinePart_Data["Emoney"][2] = 500
tSalesPromotionOnlinePart_Data["Emoney"][3] = 1000
-- EMoneyLog
tSalesPromotionOnlinePart_Data["EMoneyLog"] = {}
tSalesPromotionOnlinePart_Data["EMoneyLog"][1] = "350	21989	100	100	1	"
tSalesPromotionOnlinePart_Data["EMoneyLog"][2] = "350	21990	500	500	1	"
tSalesPromotionOnlinePart_Data["EMoneyLog"][3] = "350	21991	1000	1000	1	"
--珍宝售卖会
tSalesPromotionOnlinePart_Data["WebUrl"] = "https://coevent.99.com/cpprestoresales/"
-- 预存掩码
-- stc(189, 10)  2 、提交的天石数量
tSalesPromotionOnlinePart_Data["Stc"] = {}
tSalesPromotionOnlinePart_Data["Stc"][1] = {}
tSalesPromotionOnlinePart_Data["Stc"][1]["EventType"] = 189
tSalesPromotionOnlinePart_Data["Stc"][1]["DataType"] = 10


----------------------------------逻辑部分---------------------------------------------
-- 打开链接
function SalesPromotionOnlinePart_OpenWebsite()
	-- 判断时间
	if not Sys_ChkFullTime(tSalesPromotionOnlinePart_Data["ActivityTime"]) then
		local nNpcId = tSalesPromotionOnlinePart_Data["NpcId"]
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	local sWebAddress = tSalesPromotionOnlinePart_Data["WebUrl"]
	User_SendWebDialog(sWebAddress)
end

-- 天石判断
function SalesPromotionOnlinePart_SendEMoneyChk(nIndex)
	-- 判断时间
	local nNpcId = tSalesPromotionOnlinePart_Data["NpcId"]
	if not Sys_ChkFullTime(tSalesPromotionOnlinePart_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	-- 天石判断
	local nNeedEMoney = tSalesPromotionOnlinePart_Data["Emoney"][nIndex]
	if nNeedEMoney == nil then
		return
	end
	if Get_UserEMoney() < nNeedEMoney then
		Sys_MsgBox(tSalesPromotionOnlinePart_Text["NotEnoughEMoney"])
		return
	end
	tNpcGossip[23696]["Text311"] = string.format(tSalesPromotionOnlinePart_Text[23696]["Text311"], nNeedEMoney)
	tNpcGossip[23696]["OptionFunc311"] = "SalesPromotionOnlinePart__PrestoreEMoney</N>" .. nIndex
	LinkNpcGossipFunc_New(nNpcId, "3-1")
end

-- 确认预存
function SalesPromotionOnlinePart__PrestoreEMoney(nIndex)
	local nNpcId = tSalesPromotionOnlinePart_Data["NpcId"]
	if not Sys_ChkFullTime(tSalesPromotionOnlinePart_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	-- 天石判断
	local nNeedEMoney = tSalesPromotionOnlinePart_Data["Emoney"][nIndex]
	if nNeedEMoney == nil then
		return
	end
	if Get_UserEMoney() < nNeedEMoney then
		Sys_MsgBox(tSalesPromotionOnlinePart_Text["NotEnoughEMoney"])
		return
	end
	-- 扣除天石预存
	if not User_AddEMoney(-nNeedEMoney) then
		return
	end
	Sys_SaveEmoneyBuy(tSalesPromotionOnlinePart_Data["EMoneyLog"][nIndex])
	-- 掩码记录
	local nEvent = tSalesPromotionOnlinePart_Data["Stc"][1]["EventType"]
	local nData = tSalesPromotionOnlinePart_Data["Stc"][1]["DataType"]
	Task_AddStatistic(nEvent, nData, nNeedEMoney, 1)
	Task_SetStcTimestamp(nEvent, nData, 0)
	-- 对白赋值
	tNpcGossip[23696]["Text411"] = string.format(tSalesPromotionOnlinePart_Text[23696]["Text411"], nNeedEMoney)
	LinkNpcGossipFunc_New(nNpcId, "4-1")
end



----------------------------------NPC部分---------------------------------------------
-- 格雷西
tNpcFace[6466] = 151
tNpcGossip[23696]= tNpcGossip[23696] or DefaultNpc:new{}
tNpcGossip[23696]["OptionHidden"] = 1
tNpcGossip[23696]["DialogueText"] = tSalesPromotionOnlinePart_Text[23696]
-- 【活动前】
tNpcGossip[23696]["Text1-1"] = {111, 112, 113, 114, 115}
tNpcGossip[23696]["ChkFunc1-1"]= function()
	if CommonFunc_GetBeforeActivityTime(tSalesPromotionOnlinePart_Data["ActivityTime"]) then
		return true
	end
	return false
end
tNpcGossip[23696]["tOption1-1"] = {111}
-- 【活动后】
tNpcGossip[23696]["Text1-2"] = {121, 122}
tNpcGossip[23696]["ChkFunc1-2"]= function()
	if CommonFunc_GetAfterActivityTime(tSalesPromotionOnlinePart_Data["ActivityTime"]) then
		return true
	end
	return false
end
tNpcGossip[23696]["tOption1-2"] = {121}
-- 【活动中】
tNpcGossip[23696]["Text1-3"] = {131, 132, 133, 134, 135}
tNpcGossip[23696]["ChkFunc1-3"]= function()
	if Sys_ChkFullTime(tSalesPromotionOnlinePart_Data["ActivityTime"]) then
		return true
	end
	return false
end
tNpcGossip[23696]["tOption1-3"] = {131, 132}
tNpcGossip[23696]["OptionFunc131"] = "SalesPromotionOnlinePart_OpenWebsite"  --珍宝售卖会
tNpcGossip[23696]["OptionPoint132"] = "2-1"
-- 预存天石
tNpcGossip[23696]["Text2-1"] = {211}
tNpcGossip[23696]["tOption2-1"] = {211, 212, 213}
tNpcGossip[23696]["OptionFunc211"] = "SalesPromotionOnlinePart_SendEMoneyChk</N>1"
tNpcGossip[23696]["OptionFunc212"] = "SalesPromotionOnlinePart_SendEMoneyChk</N>2"
tNpcGossip[23696]["OptionFunc213"] = "SalesPromotionOnlinePart_SendEMoneyChk</N>3"
-- 【成功，二次确认】
tNpcGossip[23696]["Text3-1"] = {311}
tNpcGossip[23696]["tOption3-1"] = {311, 312}
tNpcGossip[23696]["OptionFunc311"] = "SalesPromotionOnlinePart__PrestoreEMoney"
-- 【成功】
tNpcGossip[23696]["Text4-1"] = {411}
tNpcGossip[23696]["tOption4-1"] = {411, 412}
tNpcGossip[23696]["OptionFunc411"] = "SalesPromotionOnlinePart_OpenWebsite"  --珍宝售卖会
tNpcGossip[23696]["OptionPoint412"] = "1-3"




