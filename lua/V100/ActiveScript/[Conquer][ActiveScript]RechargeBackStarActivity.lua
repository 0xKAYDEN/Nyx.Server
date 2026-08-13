------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]6月千锤百炼充值返星陨石活动
--Purpose:	6月千锤百炼充值返星陨石活动
--Creator: 	吴文鑫
--Created:	2016/06/02
------------------------------------------------------------------------------------

-- 命名前缀
--RechargeBackStarActivity_
--12000417
-- 返还明亮星陨石*1 350  20195
-- 返还明亮星陨石*4 350  20196
-- 返还晶莹星陨石*1 350  20197
-- 返还晶莹星陨石*2 350  20198
-- 返还晶莹星陨石*5 350  20199
-- 返还晶莹星陨石*12 350 20200
-- 返还晶莹星陨石*25 350 20201

--2天激活时效
local tRechargeBackStarActivity_Pack = {}

--明亮星陨石*1
tRechargeBackStarActivity_Pack[3200467] = {}
tRechargeBackStarActivity_Pack[3200467]["RewardItem"] = {}
tRechargeBackStarActivity_Pack[3200467]["RewardItem"][1] = {}
tRechargeBackStarActivity_Pack[3200467]["RewardItem"][1]["Id"] = 3009001
tRechargeBackStarActivity_Pack[3200467]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tRechargeBackStarActivity_Pack[3200467]["Log"] = "0,0,3200467,1,12000417,2,3009001,1"
tRechargeBackStarActivity_Pack[3200467]["EmoneyLog"] = "350	20195	0	0	1	"
tRechargeBackStarActivity_Pack[3200467]["Talk"] = tRechargeBackStarActivity_Text[3200467]

--明亮星陨石*4
tRechargeBackStarActivity_Pack[3200468] = {}
tRechargeBackStarActivity_Pack[3200468]["RewardItem"] = {}
tRechargeBackStarActivity_Pack[3200468]["RewardItem"][1] = {}
tRechargeBackStarActivity_Pack[3200468]["RewardItem"][1]["Id"] = 3009001
tRechargeBackStarActivity_Pack[3200468]["RewardItem"][1]["Attr"] = "0 4 0 2880 1"
tRechargeBackStarActivity_Pack[3200468]["Log"] = "0,0,3200468,1,12000417,2,3009001,4"
tRechargeBackStarActivity_Pack[3200468]["EmoneyLog"] = "350	20196	0	0	1	"
tRechargeBackStarActivity_Pack[3200468]["Talk"] = tRechargeBackStarActivity_Text[3200468]
tRechargeBackStarActivity_Pack[3200468]["Space"] = 3
--晶莹星陨石*1
tRechargeBackStarActivity_Pack[3200469] = {}
tRechargeBackStarActivity_Pack[3200469]["RewardItem"] = {}
tRechargeBackStarActivity_Pack[3200469]["RewardItem"][1] = {}
tRechargeBackStarActivity_Pack[3200469]["RewardItem"][1]["Id"] = 3009002
tRechargeBackStarActivity_Pack[3200469]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tRechargeBackStarActivity_Pack[3200469]["Log"] = "0,0,3200469,1,12000417,2,3009002,1"
tRechargeBackStarActivity_Pack[3200469]["EmoneyLog"] = "350	20197	0	0	1	"
tRechargeBackStarActivity_Pack[3200469]["Talk"] = tRechargeBackStarActivity_Text[3200469]

--晶莹星陨石*2
tRechargeBackStarActivity_Pack[3200470] = {}
tRechargeBackStarActivity_Pack[3200470]["RewardItem"] = {}
tRechargeBackStarActivity_Pack[3200470]["RewardItem"][1] = {}
tRechargeBackStarActivity_Pack[3200470]["RewardItem"][1]["Id"] = 3009002
tRechargeBackStarActivity_Pack[3200470]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
tRechargeBackStarActivity_Pack[3200470]["Log"] = "0,0,3200470,1,12000417,2,3009002,2"
tRechargeBackStarActivity_Pack[3200470]["EmoneyLog"] = "350	20198	0	0	1	"
tRechargeBackStarActivity_Pack[3200470]["Talk"] = tRechargeBackStarActivity_Text[3200470]
tRechargeBackStarActivity_Pack[3200470]["Space"] = 1
--晶莹星陨石*5
tRechargeBackStarActivity_Pack[3200471] = {}
tRechargeBackStarActivity_Pack[3200471]["RewardItem"] = {}
tRechargeBackStarActivity_Pack[3200471]["RewardItem"][1] = {}
tRechargeBackStarActivity_Pack[3200471]["RewardItem"][1]["Id"] = 3009002
tRechargeBackStarActivity_Pack[3200471]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
tRechargeBackStarActivity_Pack[3200471]["Log"] = "0,0,3200471,1,12000417,2,3009002,5"
tRechargeBackStarActivity_Pack[3200471]["EmoneyLog"] = "350	20199	0	0	1	"
tRechargeBackStarActivity_Pack[3200471]["Talk"] = tRechargeBackStarActivity_Text[3200471]
tRechargeBackStarActivity_Pack[3200471]["Space"] = 4
--晶莹星陨石*12
tRechargeBackStarActivity_Pack[3200472] = {}
tRechargeBackStarActivity_Pack[3200472]["RewardItem"] = {}
tRechargeBackStarActivity_Pack[3200472]["RewardItem"][1] = {}
tRechargeBackStarActivity_Pack[3200472]["RewardItem"][1]["Id"] = 3009002
tRechargeBackStarActivity_Pack[3200472]["RewardItem"][1]["Attr"] = "0 12 0 2880 1"
tRechargeBackStarActivity_Pack[3200472]["Log"] = "0,0,3200472,1,12000417,2,3009002,12"
tRechargeBackStarActivity_Pack[3200472]["EmoneyLog"] = "350	20200	0	0	1	"
tRechargeBackStarActivity_Pack[3200472]["Talk"] = tRechargeBackStarActivity_Text[3200472]
tRechargeBackStarActivity_Pack[3200472]["Space"] = 11
--晶莹星陨石*25
tRechargeBackStarActivity_Pack[3200473] = {}
tRechargeBackStarActivity_Pack[3200473]["RewardItem"] = {}
tRechargeBackStarActivity_Pack[3200473]["RewardItem"][1] = {}
tRechargeBackStarActivity_Pack[3200473]["RewardItem"][1]["Id"] = 3200500
tRechargeBackStarActivity_Pack[3200473]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
tRechargeBackStarActivity_Pack[3200473]["Log"] = "0,0,3200473,1,12000417,2,3200500,5"
tRechargeBackStarActivity_Pack[3200473]["EmoneyLog"] = "350	20201	0	0	1	"
tRechargeBackStarActivity_Pack[3200473]["Talk"] = tRechargeBackStarActivity_Text[3200473]
tRechargeBackStarActivity_Pack[3200473]["Space"] = 4

--晶莹星陨石*5
tRechargeBackStarActivity_Pack[3200500] = {}
tRechargeBackStarActivity_Pack[3200500]["RewardItem"] = {}
tRechargeBackStarActivity_Pack[3200500]["RewardItem"][1] = {}
tRechargeBackStarActivity_Pack[3200500]["RewardItem"][1]["Id"] = 3009002
tRechargeBackStarActivity_Pack[3200500]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
tRechargeBackStarActivity_Pack[3200500]["Log"] = "0,0,3200500,1,12000417,2,3009002,5"
tRechargeBackStarActivity_Pack[3200500]["Talk"] = tRechargeBackStarActivity_Text[3200500]
tRechargeBackStarActivity_Pack[3200500]["Space"] = 4




---------------------------------------------礼包逻辑
--礼包打开通用逻辑
function RechargeBackStarActivity_OpenPack(nItemId)
	-- 判断背包空间
	if tRechargeBackStarActivity_Pack[nItemId]["Space"] ~= nil then
		local nSpace = tRechargeBackStarActivity_Pack[nItemId]["Space"]
		if not User_CheckLeftSpace(nSpace) then
			User_TalkChannel2005(string.format(tRechargeBackStarActivity_Text["NoSpace"],nSpace))
			return
		end
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_Reward(tRechargeBackStarActivity_Pack[nItemId])
		
		if tRechargeBackStarActivity_Pack[nItemId]["EmoneyLog"] then
			Sys_SaveEmoneyBuy(tRechargeBackStarActivity_Pack[nItemId]["EmoneyLog"])
		end
	end
	
end

----------------------------------------------物品配置

tItem[3200467] = tItem[3200467] or {}
tItem[3200467]["Function"] = function(nItemId,sItemName)
	RechargeBackStarActivity_OpenPack(nItemId)
end

tItem[3200468] = tItem[3200468] or {}
tItem[3200468]["Function"] = function(nItemId,sItemName)
	RechargeBackStarActivity_OpenPack(nItemId)
end

tItem[3200469] = tItem[3200469] or {}
tItem[3200469]["Function"] = function(nItemId,sItemName)
	RechargeBackStarActivity_OpenPack(nItemId)
end

tItem[3200470] = tItem[3200470] or {}
tItem[3200470]["Function"] = function(nItemId,sItemName)
	RechargeBackStarActivity_OpenPack(nItemId)
end

tItem[3200471] = tItem[3200471] or {}
tItem[3200471]["Function"] = function(nItemId,sItemName)
	RechargeBackStarActivity_OpenPack(nItemId)
end

tItem[3200472] = tItem[3200472] or {}
tItem[3200472]["Function"] = function(nItemId,sItemName)
	RechargeBackStarActivity_OpenPack(nItemId)
end

tItem[3200473] = tItem[3200473] or {}
tItem[3200473]["Function"] = function(nItemId,sItemName)
	RechargeBackStarActivity_OpenPack(nItemId)
end

tItem[3200500] = tItem[3200500] or {}
tItem[3200500]["Function"] = function(nItemId,sItemName)
	RechargeBackStarActivity_OpenPack(nItemId)
end