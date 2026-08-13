------------------------------------------------------------------------------------
--Name:			170225[英文征服][活动脚本]3月帮派建设发奖action制作
--Purpose:		3月帮派建设发奖action制作
--Creator:		陈琳
--Created:		2017/02/25
------------------------------------------------------------------------------------
-- 命名规范
-- GuildBuildingAwardAction_

-- Luaid 40466

-- Logid 12000657

-- Itemid
---- 3302411 帮派建设第一名礼包
---- 3302412 帮派建设第二名礼包
---- 3302413 帮派建设第三名礼包
---- 3302414 帮派建设第四名礼包
---- 3302415 第一帮派会所令牌
---- 3302416 第二帮派会所令牌
---- 3302417 第三帮派会所令牌
---- 3302418 第四帮派会所令牌
---- 3302419 第一帮派会所钥匙
---- 3302420 第二帮派会所钥匙
---- 3302421 第三帮派会所钥匙
---- 3302422 第四帮派会所钥匙

--Actionid
---- 565205 帮派建设第一名礼包
---- 565206 帮派建设第二名礼包
---- 565207 帮派建设第三名礼包
---- 565208 帮派建设第四名礼包

------------------------------------------------------------------数据区------------------------------------------------------------------------------
local tGuildBuildingAwardAction_Data = {}
	
	tGuildBuildingAwardAction_Data["Space"] = 1
	
local tGuildBuildingAwardAction_Reward = {}
	
	-- 打开【 3302411 帮派建设第一名礼包 】获得 3302415 第一帮派会所令牌 3302419 第一帮派会所钥匙
	tGuildBuildingAwardAction_Reward[3302411] = {}
	tGuildBuildingAwardAction_Reward[3302411]["RewardItem"] = {}
	tGuildBuildingAwardAction_Reward[3302411]["RewardItem"][1] = {}
	tGuildBuildingAwardAction_Reward[3302411]["RewardItem"][1]["Id"] = 3302415
	tGuildBuildingAwardAction_Reward[3302411]["RewardItem"][1]["Attr"] = "0 100 0 43200 1"
	tGuildBuildingAwardAction_Reward[3302411]["RewardItem"][2] = {}
	tGuildBuildingAwardAction_Reward[3302411]["RewardItem"][2]["Id"] = 3302419
	tGuildBuildingAwardAction_Reward[3302411]["RewardItem"][2]["Attr"] = "0 1 0 43200 1"
	tGuildBuildingAwardAction_Reward[3302411]["RewardEffect"] = {}
	tGuildBuildingAwardAction_Reward[3302411]["RewardEffect"]["Effect"] = "angelwing"
	tGuildBuildingAwardAction_Reward[3302411]["Log"] = "0,0,3302411,1,12000657,2,3302415[3302419],100[1]"
	
	-- 打开【 3302412 帮派建设第二名礼包 】获得 3302416 第二帮派会所令牌 3302420 第二帮派会所钥匙
	tGuildBuildingAwardAction_Reward[3302412] = {}
	tGuildBuildingAwardAction_Reward[3302412]["RewardItem"] = {}
	tGuildBuildingAwardAction_Reward[3302412]["RewardItem"][1] = {}
	tGuildBuildingAwardAction_Reward[3302412]["RewardItem"][1]["Id"] = 3302416
	tGuildBuildingAwardAction_Reward[3302412]["RewardItem"][1]["Attr"] = "0 100 0 43200 1"
	tGuildBuildingAwardAction_Reward[3302412]["RewardItem"][2] = {}
	tGuildBuildingAwardAction_Reward[3302412]["RewardItem"][2]["Id"] = 3302420
	tGuildBuildingAwardAction_Reward[3302412]["RewardItem"][2]["Attr"] = "0 1 0 43200 1"
	tGuildBuildingAwardAction_Reward[3302412]["RewardEffect"] = {}
	tGuildBuildingAwardAction_Reward[3302412]["RewardEffect"]["Effect"] = "angelwing"
	tGuildBuildingAwardAction_Reward[3302412]["Log"] = "0,0,3302412,1,12000657,2,3302416[3302420],100[1]"
	
	-- 打开【 3302413 帮派建设第三名礼包 】获得 3302417 第三帮派会所令牌 3302421 第三帮派会所钥匙
	tGuildBuildingAwardAction_Reward[3302413] = {}
	tGuildBuildingAwardAction_Reward[3302413]["RewardItem"] = {}
	tGuildBuildingAwardAction_Reward[3302413]["RewardItem"][1] = {}
	tGuildBuildingAwardAction_Reward[3302413]["RewardItem"][1]["Id"] = 3302417
	tGuildBuildingAwardAction_Reward[3302413]["RewardItem"][1]["Attr"] = "0 100 0 43200 1"
	tGuildBuildingAwardAction_Reward[3302413]["RewardItem"][2] = {}
	tGuildBuildingAwardAction_Reward[3302413]["RewardItem"][2]["Id"] = 3302421
	tGuildBuildingAwardAction_Reward[3302413]["RewardItem"][2]["Attr"] = "0 1 0 43200 1"
	tGuildBuildingAwardAction_Reward[3302413]["RewardEffect"] = {}
	tGuildBuildingAwardAction_Reward[3302413]["RewardEffect"]["Effect"] = "angelwing"
	tGuildBuildingAwardAction_Reward[3302413]["Log"] = "0,0,3302413,1,12000657,2,3302417[3302421],100[1]"
	
	-- 打开【 3302414 帮派建设第四名礼包 】获得 3302418 第四帮派会所令牌 3302422 第四帮派会所钥匙
	tGuildBuildingAwardAction_Reward[3302414] = {}
	tGuildBuildingAwardAction_Reward[3302414]["RewardItem"] = {}
	tGuildBuildingAwardAction_Reward[3302414]["RewardItem"][1] = {}
	tGuildBuildingAwardAction_Reward[3302414]["RewardItem"][1]["Id"] = 3302418
	tGuildBuildingAwardAction_Reward[3302414]["RewardItem"][1]["Attr"] = "0 100 0 43200 1"
	tGuildBuildingAwardAction_Reward[3302414]["RewardItem"][2] = {}
	tGuildBuildingAwardAction_Reward[3302414]["RewardItem"][2]["Id"] = 3302422
	tGuildBuildingAwardAction_Reward[3302414]["RewardItem"][2]["Attr"] = "0 1 0 43200 1"
	tGuildBuildingAwardAction_Reward[3302414]["RewardEffect"] = {}
	tGuildBuildingAwardAction_Reward[3302414]["RewardEffect"]["Effect"] = "angelwing"
	tGuildBuildingAwardAction_Reward[3302414]["Log"] = "0,0,3302414,1,12000657,2,3302418[3302422],100[1]"
--------------------------------------物品逻辑----------------------------------------------
-- 打开礼包
function GuildBuildingAwardAction_OpenPack(nItemId)
	-- 空间判断
	local nSpace = tGuildBuildingAwardAction_Data["Space"]
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tGuildBuildingAwardAction_Text["Msg"]["NoSpace"])
		return 
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_UseItemAndMsg(tGuildBuildingAwardAction_Reward[nItemId])
	end
end
-------------------------------------物品模板----------------------------------------------
tItem[3302411]=tItem[3302411] or {}
tItem[3302411]["Function"]=function(nItemId,sItemName)
	GuildBuildingAwardAction_OpenPack(nItemId)
end

tItem[3302412]=tItem[3302412] or {}
tItem[3302412]["Function"]=function(nItemId,sItemName)
	GuildBuildingAwardAction_OpenPack(nItemId)
end

tItem[3302413]=tItem[3302413] or {}
tItem[3302413]["Function"]=function(nItemId,sItemName)
	GuildBuildingAwardAction_OpenPack(nItemId)
end

tItem[3302414]=tItem[3302414] or {}
tItem[3302414]["Function"]=function(nItemId,sItemName)
	GuildBuildingAwardAction_OpenPack(nItemId)
end