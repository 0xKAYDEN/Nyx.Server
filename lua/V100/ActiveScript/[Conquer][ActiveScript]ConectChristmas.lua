------------------------------------------------------------------------------------
--Name：       171219[英文征服][活动脚本]客服维系玩家圣诞礼包
--Creator:      黄啸
--Created:     2017/12/19
------------------------------------------------------------------------------------

-- 命名前缀
-- ConectChristmas_

-------------------------------------常量表----------------------------------------
local tConectChristmas_Award = {}
tConectChristmas_Award[3307066] = {}
tConectChristmas_Award[3307066]["RewardItem"] = {}
tConectChristmas_Award[3307066]["RewardItem"][1] = {}
tConectChristmas_Award[3307066]["RewardItem"][1]["Id"] = 187515
tConectChristmas_Award[3307066]["RewardItem"][1]["Attr"] = "0 1 3" 
tConectChristmas_Award[3307066]["RewardItem"][2] = {}
tConectChristmas_Award[3307066]["RewardItem"][2]["Id"] = 422000
tConectChristmas_Award[3307066]["RewardItem"][2]["Attr"] = "0 1 3" 
tConectChristmas_Award[3307066]["RewardItem"][3] = {}
tConectChristmas_Award[3307066]["RewardItem"][3]["Id"] = 726057
tConectChristmas_Award[3307066]["RewardItem"][3]["Attr"] = "0 1 3" 
tConectChristmas_Award[3307066]["RewardItem"][4] = {}
tConectChristmas_Award[3307066]["RewardItem"][4]["Id"] = 710212
tConectChristmas_Award[3307066]["RewardItem"][4]["Attr"] = "0 1 3" 
tConectChristmas_Award[3307066]["RewardEMoneyMono"] = {}
tConectChristmas_Award[3307066]["RewardEMoneyMono"]["Value"] = 1000
tConectChristmas_Award[3307066]["RewardStrengthValue"] = {}
tConectChristmas_Award[3307066]["RewardStrengthValue"]["Value"] = 20000
tConectChristmas_Award[3307066]["Talk"] = tConectChristma_Text[3307066]["Success"]
tConectChristmas_Award[3307066]["Log"] = 12000966
tConectChristmas_Award[3307066]["DeleteItem"] = {}
tConectChristmas_Award[3307066]["DeleteItem"][1] = {}
tConectChristmas_Award[3307066]["DeleteItem"][1]["Id"] = 3307066
-------------------------------------逻辑-------------------------------------------
function ConectChristmas_UseItem(nItemId)
	if Item_ChkItem(nItemId) then
		local nSpace = RewardTemplate_GetRewardSpace(tConectChristmas_Award[nItemId])
		if not User_CheckLeftSpace(nSpace) then
			User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
			return
		end
		
		--天石赠满
		local nMonoEmoney = Get_UserMonoEMoney()
		if nMonoEmoney + tConectChristmas_Award[nItemId]["RewardEMoneyMono"]["Value"] > G_User_MaxEmoneyMono then
			User_TalkChannel2005(tRewardTemplate_Text["EMoneyMono"])
			return
		end
		
		RewardTemplate_UseItem(tConectChristmas_Award[nItemId])
	end
end
-----------------------------------物品模板-----------------------------------------
tItem[3307066] = tItem[3307066] or {}
tItem[3307066]["Function"] = function(nItemId,sItemName)
	ConectChristmas_UseItem(nItemId)
end
