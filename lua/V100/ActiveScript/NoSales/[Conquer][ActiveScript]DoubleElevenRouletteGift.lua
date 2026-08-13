------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]双11活动复用
--Purpose:	双11活动复用
--Creator: 	吴文鑫
--Created:	2016/07/11
------------------------------------------------------------------------------------
--40322
-- 命名前缀
--DoubleElevenRouletteGift_
--
--12000494


--奖励表配置
local tDoubleElevenRouletteGift_Award = {}
	-- tDoubleElevenRouletteGift_Award[3300141] = {}
	-- tDoubleElevenRouletteGift_Award[3300141]["RewardItem"] = {}
	-- tDoubleElevenRouletteGift_Award[3300141]["RewardItem"][1] = {}
	-- tDoubleElevenRouletteGift_Award[3300141]["RewardItem"][1]["Id"] = 730004
	-- tDoubleElevenRouletteGift_Award[3300141]["RewardItem"][1]["Attr"] = "0 1"
	-- tDoubleElevenRouletteGift_Award[3300141]["RewardItem"][2] = {}
	-- tDoubleElevenRouletteGift_Award[3300141]["RewardItem"][2]["Id"] = 730003
	-- tDoubleElevenRouletteGift_Award[3300141]["RewardItem"][2]["Attr"] = "0 2"
	-- tDoubleElevenRouletteGift_Award[3300141]["LogId"] = 12000494
	-- tDoubleElevenRouletteGift_Award[3300141]["DeleteItem"]={}
	-- tDoubleElevenRouletteGift_Award[3300141]["DeleteItem"][1]={}
	-- tDoubleElevenRouletteGift_Award[3300141]["DeleteItem"][1]["Id"]=3300141
	-- tDoubleElevenRouletteGift_Award[3300141]["Talk"] = tDoubleElevenRouletteGift_Text[3300141]
	
	
	-- tDoubleElevenRouletteGift_Award[3300142] = {}
	-- tDoubleElevenRouletteGift_Award[3300142]["RewardItem"] = {}
	-- tDoubleElevenRouletteGift_Award[3300142]["RewardItem"][1] = {}
	-- tDoubleElevenRouletteGift_Award[3300142]["RewardItem"][1]["Id"] = 730006
	-- tDoubleElevenRouletteGift_Award[3300142]["RewardItem"][1]["Attr"] = "0 1"
	-- tDoubleElevenRouletteGift_Award[3300142]["RewardItem"][2] = {}
	-- tDoubleElevenRouletteGift_Award[3300142]["RewardItem"][2]["Id"] = 730005
	-- tDoubleElevenRouletteGift_Award[3300142]["RewardItem"][2]["Attr"] = "0 2"
	-- tDoubleElevenRouletteGift_Award[3300142]["LogId"] = 12000494
	-- tDoubleElevenRouletteGift_Award[3300142]["DeleteItem"]={}
	-- tDoubleElevenRouletteGift_Award[3300142]["DeleteItem"][1]={}
	-- tDoubleElevenRouletteGift_Award[3300142]["DeleteItem"][1]["Id"]=3300142
	-- tDoubleElevenRouletteGift_Award[3300142]["Talk"] = tDoubleElevenRouletteGift_Text[3300142]
	
	-- tDoubleElevenRouletteGift_Award[3300143] = {}
	-- tDoubleElevenRouletteGift_Award[3300143]["RewardItem"] = {}
	-- tDoubleElevenRouletteGift_Award[3300143]["RewardItem"][1] = {}
	-- tDoubleElevenRouletteGift_Award[3300143]["RewardItem"][1]["Id"] = 730006
	-- tDoubleElevenRouletteGift_Award[3300143]["RewardItem"][1]["Attr"] = "0 2"
	-- tDoubleElevenRouletteGift_Award[3300143]["LogId"] = 12000494
	-- tDoubleElevenRouletteGift_Award[3300143]["DeleteItem"]={}
	-- tDoubleElevenRouletteGift_Award[3300143]["DeleteItem"][1]={}
	-- tDoubleElevenRouletteGift_Award[3300143]["DeleteItem"][1]["Id"]=3300143
	-- tDoubleElevenRouletteGift_Award[3300143]["Talk"] = tDoubleElevenRouletteGift_Text[3300143]
	
	-- tDoubleElevenRouletteGift_Award[3300144] = {}
	-- tDoubleElevenRouletteGift_Award[3300144]["RewardItem"] = {}
	-- tDoubleElevenRouletteGift_Award[3300144]["RewardItem"][1] = {}
	-- tDoubleElevenRouletteGift_Award[3300144]["RewardItem"][1]["Id"] = 730007
	-- tDoubleElevenRouletteGift_Award[3300144]["RewardItem"][1]["Attr"] = "0 1"
	-- tDoubleElevenRouletteGift_Award[3300144]["RewardItem"][2] = {}
	-- tDoubleElevenRouletteGift_Award[3300144]["RewardItem"][2]["Id"] = 730006
	-- tDoubleElevenRouletteGift_Award[3300144]["RewardItem"][2]["Attr"] = "0 1"
	-- tDoubleElevenRouletteGift_Award[3300144]["LogId"] = 12000494
	-- tDoubleElevenRouletteGift_Award[3300144]["DeleteItem"]={}
	-- tDoubleElevenRouletteGift_Award[3300144]["DeleteItem"][1]={}
	-- tDoubleElevenRouletteGift_Award[3300144]["DeleteItem"][1]["Id"]=3300144
	-- tDoubleElevenRouletteGift_Award[3300144]["Talk"] = tDoubleElevenRouletteGift_Text[3300144]
	
	-- tDoubleElevenRouletteGift_Award[3300145] = {}
	-- tDoubleElevenRouletteGift_Award[3300145]["RewardItem"] = {}
	-- tDoubleElevenRouletteGift_Award[3300145]["RewardItem"][1] = {}
	-- tDoubleElevenRouletteGift_Award[3300145]["RewardItem"][1]["Id"] = 730007
	-- tDoubleElevenRouletteGift_Award[3300145]["RewardItem"][1]["Attr"] = "0 1"
	-- tDoubleElevenRouletteGift_Award[3300145]["RewardItem"][2] = {}
	-- tDoubleElevenRouletteGift_Award[3300145]["RewardItem"][2]["Id"] = 730006
	-- tDoubleElevenRouletteGift_Award[3300145]["RewardItem"][2]["Attr"] = "0 2"
	-- tDoubleElevenRouletteGift_Award[3300145]["LogId"] = 12000494
	-- tDoubleElevenRouletteGift_Award[3300145]["DeleteItem"]={}
	-- tDoubleElevenRouletteGift_Award[3300145]["DeleteItem"][1]={}
	-- tDoubleElevenRouletteGift_Award[3300145]["DeleteItem"][1]["Id"]=3300145
	-- tDoubleElevenRouletteGift_Award[3300145]["Talk"] = tDoubleElevenRouletteGift_Text[3300145]
	
	-- tDoubleElevenRouletteGift_Award[3300146] = {}
	-- tDoubleElevenRouletteGift_Award[3300146]["RewardItem"] = {}
	-- tDoubleElevenRouletteGift_Award[3300146]["RewardItem"][1] = {}
	-- tDoubleElevenRouletteGift_Award[3300146]["RewardItem"][1]["Id"] = 730008
	-- tDoubleElevenRouletteGift_Award[3300146]["RewardItem"][1]["Attr"] = "0 3"
	-- tDoubleElevenRouletteGift_Award[3300146]["LogId"] = 12000494
	-- tDoubleElevenRouletteGift_Award[3300146]["DeleteItem"]={}
	-- tDoubleElevenRouletteGift_Award[3300146]["DeleteItem"][1]={}
	-- tDoubleElevenRouletteGift_Award[3300146]["DeleteItem"][1]["Id"]=3300146
	-- tDoubleElevenRouletteGift_Award[3300146]["Talk"] = tDoubleElevenRouletteGift_Text[3300146]
	
	
	-- tDoubleElevenRouletteGift_Award[3300148] = {}
	-- tDoubleElevenRouletteGift_Award[3300148]["RewardItem"] = {}
	-- tDoubleElevenRouletteGift_Award[3300148]["RewardItem"][1] = {}
	-- tDoubleElevenRouletteGift_Award[3300148]["RewardItem"][1]["Id"] = 3009000
	-- tDoubleElevenRouletteGift_Award[3300148]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	-- tDoubleElevenRouletteGift_Award[3300148]["LogId"] = 12000494
	-- tDoubleElevenRouletteGift_Award[3300148]["DeleteItem"]={}
	-- tDoubleElevenRouletteGift_Award[3300148]["DeleteItem"][1]={}
	-- tDoubleElevenRouletteGift_Award[3300148]["DeleteItem"][1]["Id"]=3300148
	
	-- tDoubleElevenRouletteGift_Award[3300149] = {}
	-- tDoubleElevenRouletteGift_Award[3300149]["RewardItem"] = {}
	-- tDoubleElevenRouletteGift_Award[3300149]["RewardItem"][1] = {}
	-- tDoubleElevenRouletteGift_Award[3300149]["RewardItem"][1]["Id"] = 3009000
	-- tDoubleElevenRouletteGift_Award[3300149]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	-- tDoubleElevenRouletteGift_Award[3300149]["LogId"] = 12000494
	-- tDoubleElevenRouletteGift_Award[3300149]["DeleteItem"]={}
	-- tDoubleElevenRouletteGift_Award[3300149]["DeleteItem"][1]={}
	-- tDoubleElevenRouletteGift_Award[3300149]["DeleteItem"][1]["Id"]=3300149
	
	-- tDoubleElevenRouletteGift_Award[3300150] = {}
	-- tDoubleElevenRouletteGift_Award[3300150]["RewardItem"] = {}
	-- tDoubleElevenRouletteGift_Award[3300150]["RewardItem"][1] = {}
	-- tDoubleElevenRouletteGift_Award[3300150]["RewardItem"][1]["Id"] = 3009000
	-- tDoubleElevenRouletteGift_Award[3300150]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	-- tDoubleElevenRouletteGift_Award[3300150]["LogId"] = 12000494
	-- tDoubleElevenRouletteGift_Award[3300150]["DeleteItem"]={}
	-- tDoubleElevenRouletteGift_Award[3300150]["DeleteItem"][1]={}
	-- tDoubleElevenRouletteGift_Award[3300150]["DeleteItem"][1]["Id"]=3300150
	
	tDoubleElevenRouletteGift_Award[3300151] = {}
	tDoubleElevenRouletteGift_Award[3300151]["RewardItem"] = {}
	tDoubleElevenRouletteGift_Award[3300151]["RewardItem"][1] = {}
	tDoubleElevenRouletteGift_Award[3300151]["RewardItem"][1]["Id"] = 3009001
	tDoubleElevenRouletteGift_Award[3300151]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tDoubleElevenRouletteGift_Award[3300151]["LogId"] = 12000494
	tDoubleElevenRouletteGift_Award[3300151]["DeleteItem"]={}
	tDoubleElevenRouletteGift_Award[3300151]["DeleteItem"][1]={}
	tDoubleElevenRouletteGift_Award[3300151]["DeleteItem"][1]["Id"]=3300151
	
	tDoubleElevenRouletteGift_Award[3300152] = {}
	tDoubleElevenRouletteGift_Award[3300152]["RewardItem"] = {}
	tDoubleElevenRouletteGift_Award[3300152]["RewardItem"][1] = {}
	tDoubleElevenRouletteGift_Award[3300152]["RewardItem"][1]["Id"] = 3009002
	tDoubleElevenRouletteGift_Award[3300152]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tDoubleElevenRouletteGift_Award[3300152]["LogId"] = 12000494
	tDoubleElevenRouletteGift_Award[3300152]["DeleteItem"]={}
	tDoubleElevenRouletteGift_Award[3300152]["DeleteItem"][1]={}
	tDoubleElevenRouletteGift_Award[3300152]["DeleteItem"][1]["Id"]=3300152
	
	tDoubleElevenRouletteGift_Award[3300153] = {}
	tDoubleElevenRouletteGift_Award[3300153]["RewardItem"] = {}
	tDoubleElevenRouletteGift_Award[3300153]["RewardItem"][1] = {}
	tDoubleElevenRouletteGift_Award[3300153]["RewardItem"][1]["Id"] = 3009003
	tDoubleElevenRouletteGift_Award[3300153]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tDoubleElevenRouletteGift_Award[3300153]["LogId"] = 12000494
	tDoubleElevenRouletteGift_Award[3300153]["DeleteItem"]={}
	tDoubleElevenRouletteGift_Award[3300153]["DeleteItem"][1]={}
	tDoubleElevenRouletteGift_Award[3300153]["DeleteItem"][1]["Id"]=3300153

--3300174	固化石碎片
--711504	桃源灵玉
	-- tDoubleElevenRouletteGift_Award[3300164] = {}
	-- tDoubleElevenRouletteGift_Award[3300164]["RewardItem"] = {}
	-- tDoubleElevenRouletteGift_Award[3300164]["RewardItem"][1] = {}
	-- tDoubleElevenRouletteGift_Award[3300164]["RewardItem"][1]["Id"] = 711504
	-- tDoubleElevenRouletteGift_Award[3300164]["RewardItem"][1]["Attr"] = "0 1"
	-- tDoubleElevenRouletteGift_Award[3300164]["RewardItem"][2] = {}
	-- tDoubleElevenRouletteGift_Award[3300164]["RewardItem"][2]["Id"] = 3300174
	-- tDoubleElevenRouletteGift_Award[3300164]["RewardItem"][2]["Attr"] = "0 1"
	-- tDoubleElevenRouletteGift_Award[3300164]["RewardStrengthValue"] = {}
	-- tDoubleElevenRouletteGift_Award[3300164]["RewardStrengthValue"]["Value"] = 50
	-- tDoubleElevenRouletteGift_Award[3300164]["LogId"] = 12000494
	-- tDoubleElevenRouletteGift_Award[3300164]["DeleteItem"]={}
	-- tDoubleElevenRouletteGift_Award[3300164]["DeleteItem"][1]={}
	-- tDoubleElevenRouletteGift_Award[3300164]["DeleteItem"][1]["Id"]=3300164
	
	-- tDoubleElevenRouletteGift_Award[3300165] = {}
	-- tDoubleElevenRouletteGift_Award[3300165]["RewardItem"] = {}
	-- tDoubleElevenRouletteGift_Award[3300165]["RewardItem"][1] = {}
	-- tDoubleElevenRouletteGift_Award[3300165]["RewardItem"][1]["Id"] = 711504
	-- tDoubleElevenRouletteGift_Award[3300165]["RewardItem"][1]["Attr"] = "0 2"
	-- tDoubleElevenRouletteGift_Award[3300165]["RewardItem"][2] = {}
	-- tDoubleElevenRouletteGift_Award[3300165]["RewardItem"][2]["Id"] = 3300174
	-- tDoubleElevenRouletteGift_Award[3300165]["RewardItem"][2]["Attr"] = "0 1"
	-- tDoubleElevenRouletteGift_Award[3300165]["RewardStrengthValue"] = {}
	-- tDoubleElevenRouletteGift_Award[3300165]["RewardStrengthValue"]["Value"] = 50
	-- tDoubleElevenRouletteGift_Award[3300165]["LogId"] = 12000494
	-- tDoubleElevenRouletteGift_Award[3300165]["DeleteItem"]={}
	-- tDoubleElevenRouletteGift_Award[3300165]["DeleteItem"][1]={}
	-- tDoubleElevenRouletteGift_Award[3300165]["DeleteItem"][1]["Id"]=3300165
	
	-- tDoubleElevenRouletteGift_Award[3300166] = {}
	-- tDoubleElevenRouletteGift_Award[3300166]["RewardItem"] = {}
	-- tDoubleElevenRouletteGift_Award[3300166]["RewardItem"][1] = {}
	-- tDoubleElevenRouletteGift_Award[3300166]["RewardItem"][1]["Id"] = 711504
	-- tDoubleElevenRouletteGift_Award[3300166]["RewardItem"][1]["Attr"] = "0 3"
	-- tDoubleElevenRouletteGift_Award[3300166]["RewardItem"][2] = {}
	-- tDoubleElevenRouletteGift_Award[3300166]["RewardItem"][2]["Id"] = 3300174
	-- tDoubleElevenRouletteGift_Award[3300166]["RewardItem"][2]["Attr"] = "0 1"
	-- tDoubleElevenRouletteGift_Award[3300166]["RewardStrengthValue"] = {}
	-- tDoubleElevenRouletteGift_Award[3300166]["RewardStrengthValue"]["Value"] = 50
	-- tDoubleElevenRouletteGift_Award[3300166]["LogId"] = 12000494
	-- tDoubleElevenRouletteGift_Award[3300166]["DeleteItem"]={}
	-- tDoubleElevenRouletteGift_Award[3300166]["DeleteItem"][1]={}
	-- tDoubleElevenRouletteGift_Award[3300166]["DeleteItem"][1]["Id"]=3300166
	
	-- tDoubleElevenRouletteGift_Award[3300167] = {}
	-- tDoubleElevenRouletteGift_Award[3300167]["RewardItem"] = {}
	-- tDoubleElevenRouletteGift_Award[3300167]["RewardItem"][1] = {}
	-- tDoubleElevenRouletteGift_Award[3300167]["RewardItem"][1]["Id"] = 711504
	-- tDoubleElevenRouletteGift_Award[3300167]["RewardItem"][1]["Attr"] = "0 4"
	-- tDoubleElevenRouletteGift_Award[3300167]["RewardItem"][2] = {}
	-- tDoubleElevenRouletteGift_Award[3300167]["RewardItem"][2]["Id"] = 3300174
	-- tDoubleElevenRouletteGift_Award[3300167]["RewardItem"][2]["Attr"] = "0 2"
	-- tDoubleElevenRouletteGift_Award[3300167]["RewardStrengthValue"] = {}
	-- tDoubleElevenRouletteGift_Award[3300167]["RewardStrengthValue"]["Value"] = 100
	-- tDoubleElevenRouletteGift_Award[3300167]["LogId"] = 12000494
	-- tDoubleElevenRouletteGift_Award[3300167]["DeleteItem"]={}
	-- tDoubleElevenRouletteGift_Award[3300167]["DeleteItem"][1]={}
	-- tDoubleElevenRouletteGift_Award[3300167]["DeleteItem"][1]["Id"]=3300167
	
	-- tDoubleElevenRouletteGift_Award[3300168] = {}
	-- tDoubleElevenRouletteGift_Award[3300168]["RewardItem"] = {}
	-- tDoubleElevenRouletteGift_Award[3300168]["RewardItem"][1] = {}
	-- tDoubleElevenRouletteGift_Award[3300168]["RewardItem"][1]["Id"] = 711504
	-- tDoubleElevenRouletteGift_Award[3300168]["RewardItem"][1]["Attr"] = "0 5"
	-- tDoubleElevenRouletteGift_Award[3300168]["RewardItem"][2] = {}
	-- tDoubleElevenRouletteGift_Award[3300168]["RewardItem"][2]["Id"] = 3300174
	-- tDoubleElevenRouletteGift_Award[3300168]["RewardItem"][2]["Attr"] = "0 2"
	-- tDoubleElevenRouletteGift_Award[3300168]["RewardStrengthValue"] = {}
	-- tDoubleElevenRouletteGift_Award[3300168]["RewardStrengthValue"]["Value"] = 100
	-- tDoubleElevenRouletteGift_Award[3300168]["LogId"] = 12000494
	-- tDoubleElevenRouletteGift_Award[3300168]["DeleteItem"]={}
	-- tDoubleElevenRouletteGift_Award[3300168]["DeleteItem"][1]={}
	-- tDoubleElevenRouletteGift_Award[3300168]["DeleteItem"][1]["Id"]=3300168
	
	-- tDoubleElevenRouletteGift_Award[3300169] = {}
	-- tDoubleElevenRouletteGift_Award[3300169]["RewardItem"] = {}
	-- tDoubleElevenRouletteGift_Award[3300169]["RewardItem"][1] = {}
	-- tDoubleElevenRouletteGift_Award[3300169]["RewardItem"][1]["Id"] = 711504
	-- tDoubleElevenRouletteGift_Award[3300169]["RewardItem"][1]["Attr"] = "0 6"
	-- tDoubleElevenRouletteGift_Award[3300169]["RewardItem"][2] = {}
	-- tDoubleElevenRouletteGift_Award[3300169]["RewardItem"][2]["Id"] = 3300174
	-- tDoubleElevenRouletteGift_Award[3300169]["RewardItem"][2]["Attr"] = "0 3"
	-- tDoubleElevenRouletteGift_Award[3300169]["RewardStrengthValue"] = {}
	-- tDoubleElevenRouletteGift_Award[3300169]["RewardStrengthValue"]["Value"] = 100
	-- tDoubleElevenRouletteGift_Award[3300169]["LogId"] = 12000494
	-- tDoubleElevenRouletteGift_Award[3300169]["DeleteItem"]={}
	-- tDoubleElevenRouletteGift_Award[3300169]["DeleteItem"][1]={}
	-- tDoubleElevenRouletteGift_Award[3300169]["DeleteItem"][1]["Id"]=3300169
	
	-- tDoubleElevenRouletteGift_Award[3300170] = {}
	-- tDoubleElevenRouletteGift_Award[3300170]["RewardItem"] = {}
	-- tDoubleElevenRouletteGift_Award[3300170]["RewardItem"][1] = {}
	-- tDoubleElevenRouletteGift_Award[3300170]["RewardItem"][1]["Id"] = 711504
	-- tDoubleElevenRouletteGift_Award[3300170]["RewardItem"][1]["Attr"] = "0 10"
	-- tDoubleElevenRouletteGift_Award[3300170]["RewardItem"][2] = {}
	-- tDoubleElevenRouletteGift_Award[3300170]["RewardItem"][2]["Id"] = 3300174
	-- tDoubleElevenRouletteGift_Award[3300170]["RewardItem"][2]["Attr"] = "0 5"
	-- tDoubleElevenRouletteGift_Award[3300170]["RewardStrengthValue"] = {}
	-- tDoubleElevenRouletteGift_Award[3300170]["RewardStrengthValue"]["Value"] = 200
	-- tDoubleElevenRouletteGift_Award[3300170]["LogId"] = 12000494
	-- tDoubleElevenRouletteGift_Award[3300170]["DeleteItem"]={}
	-- tDoubleElevenRouletteGift_Award[3300170]["DeleteItem"][1]={}
	-- tDoubleElevenRouletteGift_Award[3300170]["DeleteItem"][1]["Id"]=3300170
	
	-- tDoubleElevenRouletteGift_Award[3300171] = {}
	-- tDoubleElevenRouletteGift_Award[3300171]["RewardItem"] = {}
	-- tDoubleElevenRouletteGift_Award[3300171]["RewardItem"][1] = {}
	-- tDoubleElevenRouletteGift_Award[3300171]["RewardItem"][1]["Id"] = 711504
	-- tDoubleElevenRouletteGift_Award[3300171]["RewardItem"][1]["Attr"] = "0 30"
	-- tDoubleElevenRouletteGift_Award[3300171]["RewardItem"][2] = {}
	-- tDoubleElevenRouletteGift_Award[3300171]["RewardItem"][2]["Id"] = 3300174
	-- tDoubleElevenRouletteGift_Award[3300171]["RewardItem"][2]["Attr"] = "0 10"
	-- tDoubleElevenRouletteGift_Award[3300171]["RewardStrengthValue"] = {}
	-- tDoubleElevenRouletteGift_Award[3300171]["RewardStrengthValue"]["Value"] = 300
	-- tDoubleElevenRouletteGift_Award[3300171]["LogId"] = 12000494
	-- tDoubleElevenRouletteGift_Award[3300171]["DeleteItem"]={}
	-- tDoubleElevenRouletteGift_Award[3300171]["DeleteItem"][1]={}
	-- tDoubleElevenRouletteGift_Award[3300171]["DeleteItem"][1]["Id"]=3300171
	
-- local tDoubleElevenRouletteGift_QuanFu = {}
	-- tDoubleElevenRouletteGift_QuanFu[1] = 3300145
	-- tDoubleElevenRouletteGift_QuanFu[2] = 3300144
	-- tDoubleElevenRouletteGift_QuanFu[3] = 3300146
	-- tDoubleElevenRouletteGift_QuanFu[4] = 3300143
	-- tDoubleElevenRouletteGift_QuanFu[5] = 3300142
	-- tDoubleElevenRouletteGift_QuanFu[6] = 3300151
	-- tDoubleElevenRouletteGift_QuanFu[7] = 3300152
	-- tDoubleElevenRouletteGift_QuanFu[8] = 3300153

--礼包逻辑
function DoubleElevenRouletteGift_OpenPack(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if not RewardTemplate_CheckSpace(tDoubleElevenRouletteGift_Award[nItemId]) then
		return
	end
	
	RewardTemplate_UseItem(tDoubleElevenRouletteGift_Award[nItemId])
	-- if RewardTemplate_UseItem(tDoubleElevenRouletteGift_Award[nItemId]) then
		-- for k,v in ipairs(tDoubleElevenRouletteGift_QuanFu) do
			-- if nItemId == v then
				-- local sUserName = Get_UserName()
				-- Sys_TalkBroadcast(string.format(tDoubleElevenActivity_Text[v],sUserName))
			-- end
		-- end

	-- end
end
	
-------------------------------------------------物品配置
-- 3300141 赤炼石阳光礼包
tItem[3300141] = tItem[3300141] or {}
tItem[3300142] = tItem[3300141] or {}
tItem[3300143] = tItem[3300141] or {}
tItem[3300144] = tItem[3300141] or {}
tItem[3300145] = tItem[3300141] or {}
tItem[3300146] = tItem[3300141] or {}

tItem[3300148] = tItem[3300141] or {}
tItem[3300149] = tItem[3300141] or {}
tItem[3300150] = tItem[3300141] or {}
tItem[3300151] = tItem[3300141] or {}
tItem[3300152] = tItem[3300141] or {}
tItem[3300153] = tItem[3300141] or {}

tItem[3300164] = tItem[3300141] or {}
tItem[3300165] = tItem[3300141] or {}
tItem[3300166] = tItem[3300141] or {}
tItem[3300167] = tItem[3300141] or {}
tItem[3300168] = tItem[3300141] or {}
tItem[3300169] = tItem[3300141] or {}
tItem[3300170] = tItem[3300141] or {}
tItem[3300171] = tItem[3300141] or {}

tItem[3300141]["Function"] = function(nItemId,sItemName)
	DoubleElevenRouletteGift_OpenPack(nItemId)
end



-- 3300142 赤炼石精装礼包
-- 3300143 赤炼石典藏礼包
-- 3300144 赤炼石豪华礼包
-- 3300145 赤炼石尊享礼包
-- 3300146 赤炼石天骄礼包

-- 3300148 一阶微光星陨石包
-- 3300149 二阶微光星陨石包
-- 3300150 三阶微光星陨石包
-- 3300151 明亮星陨石包
-- 3300152 晶莹星陨石包
-- 3300153 璀璨星陨石包

-- 3300164 一阶珍宝礼包
-- 3300165 二阶珍宝礼包
-- 3300166 三阶珍宝礼包
-- 3300167 四阶珍宝礼包
-- 3300168 五阶珍宝礼包
-- 3300169 六阶珍宝礼包
-- 3300170 七阶珍宝礼包
-- 3300171 八阶珍宝礼包

