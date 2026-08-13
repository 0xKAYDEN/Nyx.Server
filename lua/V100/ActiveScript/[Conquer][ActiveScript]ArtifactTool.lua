------------------------------------------------------------------------------------
--Name:		200615[简体征服][活动脚本]辅助号加强版本内容制作
--Creator: 	黄啸
--Created:	2020/06/16
------------------------------------------------------------------------------------
--前缀ArtifactTool_
--logid:12002041

-- 重要物品：700073，属性：0
-- 法器在副武器上，法器关键Id段619段

--lua.ini:41880





----------------------------------数据部分配置----------------------------------

-- 掩码表
local tArtifactTool_Stc = {}
--锻造的法器id
tArtifactTool_Stc[1] = {223,75}
--锻造的法器是否为赠
tArtifactTool_Stc[2] = {223,76}
--130级锻造次数
tArtifactTool_Stc[3] = {223,77}
--140级锻造次数
tArtifactTool_Stc[4] = {223,78}
--150级锻造次数
tArtifactTool_Stc[5] = {223,79}




-- 需要的材料表
-- local tArtifactTool_ToolCai = {}
-- tArtifactTool_ToolCai[1] = {}

-- 概率表
local tArtifactTool_RewardItem = {}

-- 120级
	tArtifactTool_RewardItem[120] = {}
	

	tArtifactTool_RewardItem[120]["ItemChanceSum"] = 10000
	tArtifactTool_RewardItem[120]["Necessary"] = 700073
	tArtifactTool_RewardItem[120]["NecessarySui"] = 3316505
	tArtifactTool_RewardItem[120]["WastMoney"] = 10000000

	-- 成功 - 20.00%
	tArtifactTool_RewardItem[120][1] = {}
	tArtifactTool_RewardItem[120][1]["RandomItemChanceType"] = 2
	tArtifactTool_RewardItem[120][1]["ItemChance"] = 2000
	tArtifactTool_RewardItem[120][1]["Item_1"]= 1
	-- 失败 - 80.00%
	tArtifactTool_RewardItem[120][2] = {}
	tArtifactTool_RewardItem[120][2]["RandomItemChanceType"] = 2
	tArtifactTool_RewardItem[120][2]["ItemChance"] = 8000
	tArtifactTool_RewardItem[120][2]["Item_1"]= 2
	
-- 130级
	tArtifactTool_RewardItem[130] = {}
	tArtifactTool_RewardItem[130]["ItemChanceSum"] = 10000
	tArtifactTool_RewardItem[130]["WastMoney"] = 1000000
	-- 成功 - 10.00%
	tArtifactTool_RewardItem[130][1] = {}
	tArtifactTool_RewardItem[130][1]["RandomItemChanceType"] = 2
	tArtifactTool_RewardItem[130][1]["ItemChance"] = 1000
	tArtifactTool_RewardItem[130][1]["Item_1"]= 1
	-- 失败 - 80.00%
	tArtifactTool_RewardItem[130][2] = {}
	tArtifactTool_RewardItem[130][2]["RandomItemChanceType"] = 2
	tArtifactTool_RewardItem[130][2]["ItemChance"] = 8000
	tArtifactTool_RewardItem[130][2]["Item_1"]= 2
	-- 失败 - 10.00%，返回1个碎片
	tArtifactTool_RewardItem[130][3] = {}
	tArtifactTool_RewardItem[130][3]["RandomItemChanceType"] = 2
	tArtifactTool_RewardItem[130][3]["ItemChance"] = 1000
	tArtifactTool_RewardItem[130][3]["Item_1"]= 3
	
-- 140级

	tArtifactTool_RewardItem[140] = {}
	tArtifactTool_RewardItem[140]["ItemChanceSum"] = 10000
	tArtifactTool_RewardItem[140]["WastMoney"] = 3000000
	-- 成功 - 8.00%
	tArtifactTool_RewardItem[140][1] = {}
	tArtifactTool_RewardItem[140][1]["RandomItemChanceType"] = 2
	tArtifactTool_RewardItem[140][1]["ItemChance"] = 800
	tArtifactTool_RewardItem[140][1]["Item_1"]= 1
	-- 失败 - 82.00%
	tArtifactTool_RewardItem[140][2] = {}
	tArtifactTool_RewardItem[140][2]["RandomItemChanceType"] = 2
	tArtifactTool_RewardItem[140][2]["ItemChance"] = 8200
	tArtifactTool_RewardItem[140][2]["Item_1"]= 2
	-- 失败 - 10.00%，返回2个碎片
	tArtifactTool_RewardItem[140][3] = {}
	tArtifactTool_RewardItem[140][3]["RandomItemChanceType"] = 2
	tArtifactTool_RewardItem[140][3]["ItemChance"] = 1000
	tArtifactTool_RewardItem[140][3]["Item_1"]= 3
	
-- 150级
	tArtifactTool_RewardItem[150] = {}
	tArtifactTool_RewardItem[150]["ItemChanceSum"] = 10000
	tArtifactTool_RewardItem[150]["WastMoney"] = 10000000
	-- 成功 - 8.00%
	tArtifactTool_RewardItem[150][1] = {}
	tArtifactTool_RewardItem[150][1]["RandomItemChanceType"] = 2
	tArtifactTool_RewardItem[150][1]["ItemChance"] = 300
	tArtifactTool_RewardItem[150][1]["Item_1"]= 1
	-- 失败 - 87.00%
	tArtifactTool_RewardItem[150][2] = {}
	tArtifactTool_RewardItem[150][2]["RandomItemChanceType"] = 2
	tArtifactTool_RewardItem[150][2]["ItemChance"] = 8700
	tArtifactTool_RewardItem[150][2]["Item_1"]= 2
	-- 失败 - 10.00%
	tArtifactTool_RewardItem[150][3] = {}
	tArtifactTool_RewardItem[150][3]["RandomItemChanceType"] = 2
	tArtifactTool_RewardItem[150][3]["ItemChance"] = 1000
	tArtifactTool_RewardItem[150][3]["Item_1"]= 3
	
	
	tArtifactTool_RewardItem[3316505] = {}
	tArtifactTool_RewardItem[3316505]["RewardItem"] = {}
	tArtifactTool_RewardItem[3316505]["RewardItem"][1] = {} 
	tArtifactTool_RewardItem[3316505]["RewardItem"][1]["Id"] = 3316505
	tArtifactTool_RewardItem[3316505]["RewardItem"][1]["Attr"] = "0 1"
	tArtifactTool_RewardItem[3316505]["RewardEffect"] = {}
	tArtifactTool_RewardItem[3316505]["RewardEffect"]["Effect"] = "angelwing"
	tArtifactTool_RewardItem[3316505]["LogId"] = 12002041
	
	--优质玄元宝石兑换3个玄元天晶,注意根据玄元宝石获得改碎片的赠属性
	tArtifactTool_RewardItem[700073] = {}
	tArtifactTool_RewardItem[700073]["RewardItem"] = {}
	tArtifactTool_RewardItem[700073]["RewardItem"][1] = {} 
	tArtifactTool_RewardItem[700073]["RewardItem"][1]["Id"] = 3316505
	tArtifactTool_RewardItem[700073]["RewardItem"][1]["Attr"] = "0 3"
	tArtifactTool_RewardItem[700073]["RewardEffect"] = {}
	tArtifactTool_RewardItem[700073]["RewardEffect"]["Effect"] = "angelwing"
	tArtifactTool_RewardItem[700073]["LogId"] = 12002041
	
	
-- 对应等级给相关奖励
	local nArtifactTool_LevelAward = {}
	nArtifactTool_LevelAward[1] = {}
	nArtifactTool_LevelAward[1]["Rank"] = 120
	nArtifactTool_LevelAward[1]["Stc"] = nil
	nArtifactTool_LevelAward[1]["UpShen"] = 1
	nArtifactTool_LevelAward[1]["SuiNum"] = 1
	nArtifactTool_LevelAward[1]["NeedAll"] = 1
	nArtifactTool_LevelAward[1]["NeedMoney"] = 0
	nArtifactTool_LevelAward[1]["ReduceDmg"] = 0
	
	nArtifactTool_LevelAward[2] = {}
	nArtifactTool_LevelAward[2]["Rank"] = 120
	nArtifactTool_LevelAward[2]["Stc"] = nil
	nArtifactTool_LevelAward[2]["UpShen"] = 1
	nArtifactTool_LevelAward[2]["SuiNum"] = 0
	nArtifactTool_LevelAward[2]["NeedAll"] = 5
	nArtifactTool_LevelAward[2]["NeedMoney"] = 1000
	nArtifactTool_LevelAward[2]["ReduceDmg"] = 0
	
	nArtifactTool_LevelAward[3] = {}
	nArtifactTool_LevelAward[3]["Rank"] = 130
	nArtifactTool_LevelAward[3]["Stc"] = tArtifactTool_Stc[3]
	nArtifactTool_LevelAward[3]["UpShen"] = 3
	nArtifactTool_LevelAward[3]["SuiNum"] = 1
	nArtifactTool_LevelAward[3]["NeedAll"] = 1
	nArtifactTool_LevelAward[3]["NeedMoney"] = 100
	nArtifactTool_LevelAward[3]["ReduceDmg"] = 1
	
	nArtifactTool_LevelAward[4] = {}
	nArtifactTool_LevelAward[4]["Rank"] = 140
	nArtifactTool_LevelAward[4]["Stc"] = tArtifactTool_Stc[4]
	nArtifactTool_LevelAward[4]["UpShen"] = 5
	nArtifactTool_LevelAward[4]["SuiNum"] = 2
	nArtifactTool_LevelAward[4]["NeedAll"] = 3
	nArtifactTool_LevelAward[4]["NeedMoney"] = 300
	nArtifactTool_LevelAward[4]["ReduceDmg"] = 3
	
	nArtifactTool_LevelAward[5] = {}
	nArtifactTool_LevelAward[5]["Rank"] = 140
	nArtifactTool_LevelAward[5]["Stc"] = tArtifactTool_Stc[5]
	nArtifactTool_LevelAward[5]["UpShen"] = 7
	nArtifactTool_LevelAward[5]["SuiNum"] = 3
	nArtifactTool_LevelAward[5]["NeedAll"] = 5
	nArtifactTool_LevelAward[5]["NeedMoney"] = 1000
	nArtifactTool_LevelAward[5]["ReduceDmg"] = 5
	
-- 相关log
local tArtifactTool_LogId = {}
tArtifactTool_LogId[1] = "0,0,700073,1,12002041,2,0,0"
tArtifactTool_LogId[2] = "0,0,700073[1],5[10000000],12002041,2,0,0"
tArtifactTool_LogId[3] = "0,0,700073[3316505][1],1[1][1000000],12002041,2,0,0"
tArtifactTool_LogId[4] = "0,0,700073[3316505][1],3[2][3000000],12002041,2,0,0"
tArtifactTool_LogId[5] = "0,0,700073[3316505][1],5[3][10000000],12002041,2,0,0"
--锻造成功
tArtifactTool_LogId[6] = "0,0,0,0,12002041,2,0,0"

-- 锻造光效
local tArtifactTool_Effect = {}
tArtifactTool_Effect[1] = "DragonSoul_dzcg"
tArtifactTool_Effect[2] = "DragonSoul_dzsb"
----------------------------------逻辑部分配置----------------------------------

--扣物品扣钱
function ArtifactTool_DelTools(nType,nMonopoly,nArtifactTool_SpeMonopoly,nNewUserId)
	
	local nUserId = nNewUserId or Get_UserId()
	local nArtifactTool_NeedXuan = tArtifactTool_RewardItem[120]["Necessary"]
	local nArtifactTool_NeedSui = tArtifactTool_RewardItem[120]["NecessarySui"]
	
	
	
	--120级普通锻造
	if nType == 1 then
	
		if Item_ChkMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,1,nMonopoly,0,nUserId) and 
			Item_DelMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,1,nMonopoly,0,nUserId) then
				Sys_SaveActionFestivalLog(tArtifactTool_LogId[1],nUserId)
				return true,0
		end
		
		if nArtifactTool_SpeMonopoly == 0 then
		
			if Item_ChkMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,1,nArtifactTool_SpeMonopoly,0,nUserId) and 
				Item_DelMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,1,nArtifactTool_SpeMonopoly,0,nUserId) then
					Sys_SaveActionFestivalLog(tArtifactTool_LogId[1],nUserId)
					return true,1
			
			end
		end
	
	end
	
	if nType == 2 then
	
		if Item_ChkMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,5,nMonopoly,0,nUserId) and 
				Item_DelMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,5,nMonopoly,0,nUserId) and 
					User_AddMoney(-tArtifactTool_RewardItem[120]["WastMoney"],nUserId) then
				
			Sys_SaveActionFestivalLog(tArtifactTool_LogId[2],nUserId)
			return true,0
		end
		
		if nArtifactTool_SpeMonopoly == 0 then
			if Item_ChkMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,5,nArtifactTool_SpeMonopoly,0,nUserId) and 
					Item_DelMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,5,nArtifactTool_SpeMonopoly,0,nUserId) and 
						User_AddMoney(-tArtifactTool_RewardItem[120]["WastMoney"],nUserId) then
					
				Sys_SaveActionFestivalLog(tArtifactTool_LogId[2],nUserId)
				return true,0
			end
		end
	
	end
	
	-- 130级普通锻造
	if nType == 3 then
		if Item_ChkMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,1,nMonopoly,0,nUserId) and 
			Item_ChkMulItem(nArtifactTool_NeedSui,nArtifactTool_NeedSui,1,nMonopoly,0,nUserId) and 
				Item_DelMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,1,nMonopoly,0,nUserId) and 
					Item_DelMulItem(nArtifactTool_NeedSui,nArtifactTool_NeedSui,1,nMonopoly,0,nUserId) and 
					User_AddMoney(-tArtifactTool_RewardItem[130]["WastMoney"],nUserId) then
				
						Sys_SaveActionFestivalLog(tArtifactTool_LogId[3],nUserId)
						return true,0
		end
		
		if nArtifactTool_SpeMonopoly == 0 then
			if Item_ChkMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,1,nMonopoly,0,nUserId) and 
				Item_ChkMulItem(nArtifactTool_NeedSui,nArtifactTool_NeedSui,1,nArtifactTool_SpeMonopoly,0,nUserId) and 
					Item_DelMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,1,nMonopoly,0,nUserId) and 
						Item_DelMulItem(nArtifactTool_NeedSui,nArtifactTool_NeedSui,1,nArtifactTool_SpeMonopoly,0,nUserId) and 
						User_AddMoney(-tArtifactTool_RewardItem[130]["WastMoney"],nUserId) then
					
							Sys_SaveActionFestivalLog(tArtifactTool_LogId[3],nUserId)
							return true,1
			end
			
			if Item_ChkMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,1,nArtifactTool_SpeMonopoly,0,nUserId) and 
				Item_ChkMulItem(nArtifactTool_NeedSui,nArtifactTool_NeedSui,1,nMonopoly,0,nUserId) and 
					Item_DelMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,1,nArtifactTool_SpeMonopoly,0,nUserId) and 
						Item_DelMulItem(nArtifactTool_NeedSui,nArtifactTool_NeedSui,1,nMonopoly,0,nUserId) and 
						User_AddMoney(-tArtifactTool_RewardItem[130]["WastMoney"],nUserId) then
					
							Sys_SaveActionFestivalLog(tArtifactTool_LogId[3],nUserId)
							return true,0
			end
			
			if Item_ChkMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,1,nArtifactTool_SpeMonopoly,0,nUserId) and 
				Item_ChkMulItem(nArtifactTool_NeedSui,nArtifactTool_NeedSui,1,nArtifactTool_SpeMonopoly,0,nUserId) and 
					Item_DelMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,1,nArtifactTool_SpeMonopoly,0,nUserId) and 
						Item_DelMulItem(nArtifactTool_NeedSui,nArtifactTool_NeedSui,1,nArtifactTool_SpeMonopoly,0,nUserId) and 
						User_AddMoney(-tArtifactTool_RewardItem[130]["WastMoney"],nUserId) then
					
							Sys_SaveActionFestivalLog(tArtifactTool_LogId[3],nUserId)
							return true,1
			end
		end
		
	end
	
	-- 140级普通锻造
	if nType == 4 then
		if Item_ChkMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,3,nMonopoly,0,nUserId) and 
			Item_ChkMulItem(nArtifactTool_NeedSui,nArtifactTool_NeedSui,2,nMonopoly,0,nUserId) and 
				Item_DelMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,3,nMonopoly,0,nUserId) and 
					Item_DelMulItem(nArtifactTool_NeedSui,nArtifactTool_NeedSui,2,nMonopoly,0,nUserId) and 
					User_AddMoney(-tArtifactTool_RewardItem[140]["WastMoney"],nUserId) then
				
						Sys_SaveActionFestivalLog(tArtifactTool_LogId[4],nUserId)
						return true,0
		end
		
		if nArtifactTool_SpeMonopoly == 0 then
			if Item_ChkMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,3,nMonopoly,0,nUserId) and 
				Item_ChkMulItem(nArtifactTool_NeedSui,nArtifactTool_NeedSui,2,nArtifactTool_SpeMonopoly,0,nUserId) and 
					Item_DelMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,3,nMonopoly,0,nUserId) and 
						Item_DelMulItem(nArtifactTool_NeedSui,nArtifactTool_NeedSui,2,nArtifactTool_SpeMonopoly,0,nUserId) and 
						User_AddMoney(-tArtifactTool_RewardItem[140]["WastMoney"],nUserId) then
					
							Sys_SaveActionFestivalLog(tArtifactTool_LogId[4],nUserId)
							return true,1
			end
			
			if Item_ChkMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,3,nArtifactTool_SpeMonopoly,0,nUserId) and 
				Item_ChkMulItem(nArtifactTool_NeedSui,nArtifactTool_NeedSui,2,nMonopoly,0,nUserId) and 
					Item_DelMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,3,nArtifactTool_SpeMonopoly,0,nUserId) and 
						Item_DelMulItem(nArtifactTool_NeedSui,nArtifactTool_NeedSui,2,nMonopoly,0,nUserId) and 
						User_AddMoney(-tArtifactTool_RewardItem[140]["WastMoney"],nUserId) then
					
							Sys_SaveActionFestivalLog(tArtifactTool_LogId[4],nUserId)
							return true,0
			end
			
			if Item_ChkMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,3,nArtifactTool_SpeMonopoly,0,nUserId) and 
				Item_ChkMulItem(nArtifactTool_NeedSui,nArtifactTool_NeedSui,2,nArtifactTool_SpeMonopoly,0,nUserId) and 
					Item_DelMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,3,nArtifactTool_SpeMonopoly,0,nUserId) and 
						Item_DelMulItem(nArtifactTool_NeedSui,nArtifactTool_NeedSui,2,nArtifactTool_SpeMonopoly,0,nUserId) and 
						User_AddMoney(-tArtifactTool_RewardItem[140]["WastMoney"],nUserId) then
					
							Sys_SaveActionFestivalLog(tArtifactTool_LogId[4],nUserId)
							return true,1
			end
		end
	end
	
	-- 150级普通锻造
	if nType == 5 then
		if Item_ChkMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,5,nMonopoly,0,nUserId) and 
			Item_ChkMulItem(nArtifactTool_NeedSui,nArtifactTool_NeedSui,3,nMonopoly,0,nUserId) and 
				Item_DelMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,5,nMonopoly,0,nUserId) and 
					Item_DelMulItem(nArtifactTool_NeedSui,nArtifactTool_NeedSui,3,nMonopoly,0,nUserId) and 
					User_AddMoney(-tArtifactTool_RewardItem[150]["WastMoney"],nUserId) then
				
						Sys_SaveActionFestivalLog(tArtifactTool_LogId[5],nUserId)
						return true,0
		end
		
		
		if nArtifactTool_SpeMonopoly == 0 then
			if Item_ChkMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,5,nMonopoly,0,nUserId) and 
				Item_ChkMulItem(nArtifactTool_NeedSui,nArtifactTool_NeedSui,3,nArtifactTool_SpeMonopoly,0,nUserId) and 
					Item_DelMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,5,nMonopoly,0,nUserId) and 
						Item_DelMulItem(nArtifactTool_NeedSui,nArtifactTool_NeedSui,3,nArtifactTool_SpeMonopoly,0,nUserId) and 
						User_AddMoney(-tArtifactTool_RewardItem[150]["WastMoney"],nUserId) then
					
							Sys_SaveActionFestivalLog(tArtifactTool_LogId[5],nUserId)
							return true,1
			end
			
			if Item_ChkMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,5,nArtifactTool_SpeMonopoly,0,nUserId) and 
				Item_ChkMulItem(nArtifactTool_NeedSui,nArtifactTool_NeedSui,3,nMonopoly,0,nUserId) and 
					Item_DelMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,5,nArtifactTool_SpeMonopoly,0,nUserId) and 
						Item_DelMulItem(nArtifactTool_NeedSui,nArtifactTool_NeedSui,3,nMonopoly,0,nUserId) and 
						User_AddMoney(-tArtifactTool_RewardItem[150]["WastMoney"],nUserId) then
					
							Sys_SaveActionFestivalLog(tArtifactTool_LogId[5],nUserId)
							return true,0
			end
			
			if Item_ChkMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,5,nArtifactTool_SpeMonopoly,0,nUserId) and 
				Item_ChkMulItem(nArtifactTool_NeedSui,nArtifactTool_NeedSui,3,nArtifactTool_SpeMonopoly,0,nUserId) and 
					Item_DelMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,5,nArtifactTool_SpeMonopoly,0,nUserId) and 
						Item_DelMulItem(nArtifactTool_NeedSui,nArtifactTool_NeedSui,3,nArtifactTool_SpeMonopoly,0,nUserId) and 
						User_AddMoney(-tArtifactTool_RewardItem[150]["WastMoney"],nUserId) then
					
							Sys_SaveActionFestivalLog(tArtifactTool_LogId[5],nUserId)
							return true,1
			end
		end
	end

	return false
end

-- 判断是否是道士职业
function ArtifactTool_DaoProfession()

	-- 职业判断
	local nArtifactTool_UserId = Get_UserId()
	local nArtifactTool_Pro = Get_NewUserProfession(nArtifactTool_UserId)
	if nArtifactTool_Pro >= G_PRO_Taoist0_New and nArtifactTool_Pro <= G_PRO_FireTaoist49_New then
		return true
	else
		return false
	end
	
end


--判断玩家是否锻造出7%神佑法器
function ArtifactTool_SevenTool()
	
	-- 直接判断玩家装备位上是否有7神佑
	local nArtifactTool_pos = 5
	local nArtifactTool_Type= Get_EquipIDByPos(nArtifactTool_pos)
	local nArtifactTool_ReduceDmg = Get_ItemReduceDmg(nArtifactTool_Type)
	local nArtifactTool_ItemType = Get_ItemType(nArtifactTool_Type)
	
	if nArtifactTool_ReduceDmg == 7 and ArtifactTool_FaExit(nArtifactTool_ItemType) then
		return false
	end
	return true
	
end

--判断物品是否为法器
function ArtifactTool_FaExit(nItemId)
	local sGetstring = string.sub(nItemId,1,3)
	if sGetstring == "619" then
		return true
	end
	return false
end

--根据玩家副装备位上的法器神佑出不同对白，
function ArtifactTool_ChatDifficult(nNpcId)
	
	local nArtifactTool_pos = 5
	local nArtifactTool_Type = Get_EquipIDByPos(nArtifactTool_pos)
	local nArtifactTool_ItemType = Get_ItemType(nArtifactTool_Type)
	local nArtifactTool_Monoply = Get_ItemMonopoly(nArtifactTool_Type)
	
	
	-- 玩家装备位上无法器
	if nArtifactTool_Type == 0 or nArtifactTool_Type == nil then
		LinkNpcGossipFunc_New(nNpcId,"6-1")
		return
	end
	
	if not ArtifactTool_FaExit(nArtifactTool_ItemType) then
		LinkNpcGossipFunc_New(nNpcId,"6-1")
		return
	end
	

	local nArtifactTool_ReduceDmg = Get_ItemReduceDmg(nArtifactTool_Type)
	
	--玩家装备位上的神佑已经是7
	if nArtifactTool_ReduceDmg == 7 then
		LinkNpcGossipFunc_New(nNpcId,"15-1")
		return
	end
	
	--判断物品神佑
	
	if nArtifactTool_ReduceDmg == 0 then	
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		elseif nArtifactTool_ReduceDmg == 1 then
			LinkNpcGossipFunc_New(nNpcId,"3-1")
				elseif nArtifactTool_ReduceDmg == 3 then
					LinkNpcGossipFunc_New(nNpcId,"4-1")
						elseif nArtifactTool_ReduceDmg == 5 then
							LinkNpcGossipFunc_New(nNpcId,"5-1")
								else
								LinkNpcGossipFunc_New(nNpcId,"1-2")
	end
	
end

-- 确定锻造
function ArtifactTool_TwiceDa(nNpcId,nXuanNum,nMoney,nSuiNum,nChat,nNewUserId)
	
	--前置条件判断
	local nArtifactTool_UserId = nNewUserId or Get_UserId()
	local nArtifactTool_pos = 5
	local nArtifactTool_Type= Get_EquipIDByPos(nArtifactTool_pos,nArtifactTool_UserId)
	local nArtifactTool_ItemType = Get_ItemType(nArtifactTool_Type)
	local nArtifactTool_Monoply = Get_ItemMonopoly(nArtifactTool_Type)
	local nArtifactTool_ReduceDmg = Get_ItemReduceDmg(nArtifactTool_Type)
	
	
	local nArtifactTool_NeedXuan = tArtifactTool_RewardItem[120]["Necessary"]
	local nArtifactTool_MuReduceDmg = nArtifactTool_LevelAward[nChat]["ReduceDmg"]
	local nArtifactTool_LevelRank = nArtifactTool_LevelAward[nChat]["Rank"]
	
	-- 玩家装备位上无法器
	if not ArtifactTool_FaExit(nArtifactTool_ItemType) then
		LinkNpcGossipFunc_New(nNpcId,"6-1",nil,nil,nArtifactTool_UserId)
		return
	end
	
	--玩家等级不足
	if not User_JudgeLevelAndMetempsychosis(nArtifactTool_LevelRank,0,nArtifactTool_UserId) then
		Sys_MsgBox(tArtifactTool_Text["Tip"]["Level"][nChat],nil,nil,nArtifactTool_UserId)
		User_TalkChannel2005(tArtifactTool_Text["Tip"]["Level"][nChat],nArtifactTool_UserId)
		return
	end
	
	--玩家装备位置上的锻造法器不是当前要锻造的+d神佑
	if nArtifactTool_MuReduceDmg ~= nArtifactTool_ReduceDmg then
		Sys_MsgBox(tArtifactTool_Text["Tip"]["Duan"][7],nil,nil,nArtifactTool_UserId)
		User_TalkChannel2005(tArtifactTool_Text["Tip"]["Duan"][7],nArtifactTool_UserId)
		return
	end
	
	
	local nArtifactTool_Monopoly = 0
	if nArtifactTool_Monoply == 3 then
		nArtifactTool_Monopoly = 2
	end
	
	-- 没钱
	if nMoney ~= 0 then
		
		if not User_CanPutMoney2Bag(-(nMoney*10000),nArtifactTool_UserId) then
			Sys_MsgBox(string.format(tArtifactTool_Text["Tip"]["Duan"][4],nMoney),nil,nil,nArtifactTool_UserId)
			User_TalkChannel2005(string.format(tArtifactTool_Text["Tip"]["Duan"][4],nMoney),nArtifactTool_UserId)
			return
		end
		
	end
	
	--若是非赠的，可以兑换赠和非赠，那只要判断有没这物品就行
	if nArtifactTool_Monopoly == 2 then
		nArtifactTool_Monopoly = 1
	end
	
	--没碎片
	if nSuiNum ~= 0 then
		local nArtifactTool_NeedXuanSui = tArtifactTool_RewardItem[120]["NecessarySui"]
		
		if not Item_ChkMulItem(nArtifactTool_NeedXuanSui,nArtifactTool_NeedXuanSui,nSuiNum,nArtifactTool_Monopoly,0,nArtifactTool_UserId) then
			if nArtifactTool_Monopoly == 0 then
				Sys_MsgBox(string.format(tArtifactTool_Text["Tip"]["Duan"][5],nSuiNum),nil,nil,nArtifactTool_UserId)
				User_TalkChannel2005(string.format(tArtifactTool_Text["Tip"]["Duan"][5],nSuiNum),nArtifactTool_UserId)
				return
			end
			Sys_MsgBox(string.format(tArtifactTool_Text["Tip"]["Duan"][10],nSuiNum),nil,nil,nArtifactTool_UserId)
			User_TalkChannel2005(string.format(tArtifactTool_Text["Tip"]["Duan"][10],nSuiNum),nArtifactTool_UserId)
			return
		end
		
	end
	
	
	-- 没优质玄元宝石
	if not Item_ChkMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,nXuanNum,nArtifactTool_Monopoly,0,nArtifactTool_UserId) then
		if nArtifactTool_Monopoly == 0 then
			Sys_MsgBox(string.format(tArtifactTool_Text["Tip"]["Duan"][6],nXuanNum),nil,nil,nArtifactTool_UserId)
			User_TalkChannel2005(string.format(tArtifactTool_Text["Tip"]["Duan"][6],nXuanNum),nArtifactTool_UserId)
			return
		end
		Sys_MsgBox(string.format(tArtifactTool_Text["Tip"]["Duan"][11],nXuanNum),nil,nil,nArtifactTool_UserId)
		User_TalkChannel2005(string.format(tArtifactTool_Text["Tip"]["Duan"][11],nXuanNum),nArtifactTool_UserId)
		return
	end
	
	
	tNpcGossip[nNpcId]["Text162"] = tArtifactTool_Text["Tip"]["Chat"][nChat]
	tNpcGossip[nNpcId]["OptionFunc30"] = "ArtifactTool_SureDa</N>26709</N>"..nXuanNum.."</N>"..nMoney.."</N>"..nSuiNum.."</N>"..nChat.."</N>"..nArtifactTool_UserId
	
		-- 进入二次确认界面
	LinkNpcGossipFunc_New(nNpcId,"7-1",nil,nil,nArtifactTool_UserId)
	
	
end


-- 新增锻造读条过程
function ArtifactTool_ReadSureDa(nNpcId,nXuanNum,nMoney,nSuiNum,nChat,nArtifactTool_Monopoly,nArtifactTool_Type,nArtifactTool_SpeMonopoly,nUserId)
	
	local nArtifactTool_Exit,nArtifactTool_One = ArtifactTool_DelTools(nChat,nArtifactTool_Monopoly,nArtifactTool_SpeMonopoly,nUserId)
	
	
	if nArtifactTool_Exit then
		
		local nArtifactTool_MapId = Get_UserMapId(nUserId)	
		local nArtifactTool_Pox = Get_UserPositionX(nUserId)
		local nArtifactTool_Poy = Get_UserPositionY(nUserId)
		
		local nArtifactTool_Level = nArtifactTool_LevelAward[nChat]["Rank"]
		-- local nArtifactTool_Stc = nArtifactTool_LevelAward[nChat]["Stc"]
		local nArtifactTool_UpShen = nArtifactTool_LevelAward[nChat]["UpShen"]
		
		
		-- 120级百分百成功
		if nChat == 2 then
			Item_SetItemInt(nArtifactTool_Type,G_ITEM_ReduceDmg,1,1,nUserId)
			
			tNpcGossip[nNpcId]["Text163"] = string.format(tArtifactTool_Text[nNpcId]["Text163"],1)
			LinkNpcGossipFunc_New(nNpcId,"12-1",nil,nil,nUserId)
			Sys_SaveActionFestivalLog(tArtifactTool_LogId[6],nUserId)
			-- 播放光效
			-- User_EffectAdd("self",tArtifactTool_Effect[1],nUserId)
			Map_Effect(nArtifactTool_MapId, nArtifactTool_Pox-6, nArtifactTool_Poy-6, tArtifactTool_Effect[1])
			
			return
		end
		
		
		local flat,tNum = Probabil_RandomAward(tArtifactTool_RewardItem,nArtifactTool_Level)
		local nReward = tNum[1]["tAward"][1]["Item_1"]
		
		--120概率锻造成功
		if nChat == 1 then
			if nReward == 1 then
				Item_SetItemInt(nArtifactTool_Type,G_ITEM_ReduceDmg,nArtifactTool_UpShen,1,nUserId)
				
				tNpcGossip[nNpcId]["Text163"] = string.format(tArtifactTool_Text[nNpcId]["Text163"],nArtifactTool_UpShen)
				LinkNpcGossipFunc_New(nNpcId,"12-1",nil,nil,nUserId)
				Sys_SaveActionFestivalLog(tArtifactTool_LogId[6],nUserId)
				-- 播放光效
				-- User_EffectAdd("self",tArtifactTool_Effect[1],nUserId)
				Map_Effect(nArtifactTool_MapId, nArtifactTool_Pox-6, nArtifactTool_Poy-6, tArtifactTool_Effect[1])
				
			--返还1个碎片
			else
				
				local tReward = CommonFunc_Copy(tArtifactTool_RewardItem[3316505])
				local sAttr = ""
				
				if nArtifactTool_Monopoly == 0 or nArtifactTool_One == 1 then
					tReward["RewardItem"][1]["Attr"] = "0 1"
				elseif nArtifactTool_Monopoly == 2 then
					tReward["RewardItem"][1]["Attr"] = "0 1 3"
				end
				
				RewardTemplate_UseItemAndMsg(tReward,nUserId)
				
				-- 播放光效
				-- User_EffectAdd("self",tArtifactTool_Effect[2],nUserId)
				Map_Effect(nArtifactTool_MapId, nArtifactTool_Pox-6, nArtifactTool_Poy-6, tArtifactTool_Effect[2])
				
				
				tNpcGossip[nNpcId]["OptionFunc33"] = "ArtifactTool_TwiceDa</N>26709</N>1</N>0</N>0</N>1</N>"..nUserId
				LinkNpcGossipFunc_New(nNpcId,"13-1",nil,nil,nUserId)
				
			end
			return
		end
		
		
		--其他等级
		local nArtifactTool_GetNum = 0
		
		-- if nArtifactTool_Stc ~= nil then
			
			-- local nArtifactTool_Event = nArtifactTool_Stc[1]
			-- local nArtifactTool_Data = nArtifactTool_Stc[2]
			
			-- Task_AddStatistic(nArtifactTool_Event,nArtifactTool_Data,1,1)
			-- Task_SetStcTimestamp(nArtifactTool_Event,nArtifactTool_Data,0)
			-- nArtifactTool_GetNum = Get_UserStatisticValue(nArtifactTool_Event,nArtifactTool_Data)
		-- end
		
		if nReward == 1 then
			Item_SetItemInt(nArtifactTool_Type,G_ITEM_ReduceDmg,nArtifactTool_UpShen,1,nUserId)
			
			
			tNpcGossip[nNpcId]["Text163"] = string.format(tArtifactTool_Text[nNpcId]["Text163"],nArtifactTool_UpShen)
			
			-- local nArtifactTool_Event = nArtifactTool_Stc[1]
			-- local nArtifactTool_Data = nArtifactTool_Stc[2]
			-- Task_SetStatistic(nArtifactTool_Event,nArtifactTool_Data,0,1)
			-- Task_SetStcTimestamp(nArtifactTool_Event,nArtifactTool_Data,0)
			LinkNpcGossipFunc_New(nNpcId,"12-1",nil,nil,nUserId)
			Sys_SaveActionFestivalLog(tArtifactTool_LogId[6],nUserId)
			-- 播放光效
			-- User_EffectAdd("self",tArtifactTool_Effect[1],nUserId)
			Map_Effect(nArtifactTool_MapId, nArtifactTool_Pox-6, nArtifactTool_Poy-6, tArtifactTool_Effect[1])
			
			
			local sUserName = Get_UserName(nUserId)
			-- 全服公告
			if nChat == 4 then
				Sys_TalkBroadcast(string.format(tArtifactTool_Text["Tip"]["Duan"][8],sUserName))
			elseif nChat == 5 then
				Sys_TalkBroadcast(string.format(tArtifactTool_Text["Tip"]["Duan"][9],sUserName))
			end
			
		--返还相应碎片
		elseif (nReward == 3) then
			local tReward = CommonFunc_Copy(tArtifactTool_RewardItem[3316505])
			local sAttr = ""
			local nNum = nArtifactTool_LevelAward[nChat]["SuiNum"]
			local nNeedAll = nArtifactTool_LevelAward[nChat]["NeedAll"]
			local nNeedMoney = nArtifactTool_LevelAward[nChat]["NeedMoney"]
			
			if nArtifactTool_Monopoly == 0 or nArtifactTool_One == 1 then
				tReward["RewardItem"][1]["Attr"] = "0 "..nNum
			elseif nArtifactTool_Monopoly == 2 then
				tReward["RewardItem"][1]["Attr"] = "0 "..nNum.." 3"
			end
			
			RewardTemplate_UseItemAndMsg(tReward,nUserId)
			
			-- 播放光效
			-- User_EffectAdd("self",tArtifactTool_Effect[2],nUserId)
			
			Map_Effect(nArtifactTool_MapId, nArtifactTool_Pox-6, nArtifactTool_Poy-6, tArtifactTool_Effect[2])
			
			
			tNpcGossip[nNpcId]["OptionFunc34"] = "ArtifactTool_TwiceDa</N>26709</N>"..nNeedAll.."</N>"..nNeedMoney.."</N>"..nNum.."</N>"..nChat.."</N>"..nUserId
			LinkNpcGossipFunc_New(nNpcId,"14-1",nil,nil,nUserId)
			return
			elseif (nReward == 2) then
			
					tNpcGossip[nNpcId]["OptionFunc33"] = "ArtifactTool_TwiceDa</N>26709</N>"..nXuanNum.."</N>"..nMoney.."</N>"..nSuiNum.."</N>"..nChat.."</N>"..nUserId
					LinkNpcGossipFunc_New(nNpcId,"13-1",nil,nil,nUserId)
					
					
					-- 播放光效
					-- User_EffectAdd("self",tArtifactTool_Effect[2],nUserId)
					Map_Effect(nArtifactTool_MapId, nArtifactTool_Pox-6, nArtifactTool_Poy-6, tArtifactTool_Effect[2])
					
					return
			
		end
		
		return

	else
		Sys_MsgBox(tArtifactTool_Text[26709]["Text160"],nil,nil,nUserId)
		User_TalkChannel2005(tArtifactTool_Text[26709]["Text160"],nUserId)
	end

end

function ArtifactTool_SureDa(nNpcId,nXuanNum,nMoney,nSuiNum,nChat,nNewUserId)
	
	--前置条件判断
	local nArtifactTool_UserId = nNewUserId or Get_UserId()
	
	local nArtifactTool_pos = 5
	local nArtifactTool_Type= Get_EquipIDByPos(nArtifactTool_pos,nArtifactTool_UserId)
	local nArtifactTool_ItemType = Get_ItemType(nArtifactTool_Type)
	local nArtifactTool_Monoply = Get_ItemMonopoly(nArtifactTool_Type)
	local nArtifactTool_ReduceDmg = Get_ItemReduceDmg(nArtifactTool_Type)
	
	local nArtifactTool_NeedXuan = tArtifactTool_RewardItem[120]["Necessary"]
	local nArtifactTool_LevelRank = nArtifactTool_LevelAward[nChat]["Rank"]
	
	
	local nArtifactTool_MuReduceDmg = nArtifactTool_LevelAward[nChat]["ReduceDmg"]
	
	-- 玩家装备位上无法器
	if not ArtifactTool_FaExit(nArtifactTool_ItemType) then
		LinkNpcGossipFunc_New(nNpcId,"6-1")
		return
	end
	
	--玩家等级不足
	if not User_JudgeLevelAndMetempsychosis(nArtifactTool_LevelRank,0,nArtifactTool_UserId) then
		Sys_MsgBox(tArtifactTool_Text["Tip"]["Level"][nChat],nil,nil,nArtifactTool_UserId)
		User_TalkChannel2005(tArtifactTool_Text["Tip"]["Level"][nChat],nArtifactTool_UserId)
		return
	end
	
	--玩家装备位置上的锻造法器不是当前要锻造的+d神佑
	if nArtifactTool_MuReduceDmg ~= nArtifactTool_ReduceDmg then
		Sys_MsgBox(tArtifactTool_Text["Tip"]["Duan"][7],nil,nil,nArtifactTool_UserId)
		User_TalkChannel2005(tArtifactTool_Text["Tip"]["Duan"][7],nArtifactTool_UserId)
		return
	end
	
	local nArtifactTool_Monopoly = 0
	local nArtifactTool_SpeMonopoly = 1
	if nArtifactTool_Monoply == 3 then
		nArtifactTool_Monopoly = 2
	end
	
	-- 没钱
	if nMoney ~= nil then
		
		if not User_CanPutMoney2Bag(-(nMoney*10000),nArtifactTool_UserId) then
			Sys_MsgBox(string.format(tArtifactTool_Text["Tip"]["Duan"][4],nMoney),nil,nil,nArtifactTool_UserId)
			User_TalkChannel2005(string.format(tArtifactTool_Text["Tip"]["Duan"][4],nMoney),nArtifactTool_UserId)
			return
		end
		
	end
	
	--有这个说明玩家可以用非赠物品兑换物品
	if nArtifactTool_Monopoly == 2 then
		nArtifactTool_SpeMonopoly = 0
	end
	
	--没碎片
	if nSuiNum ~= 0 then
		local nArtifactTool_NeedXuanSui = tArtifactTool_RewardItem[120]["NecessarySui"]
		
		if (not Item_ChkMulItem(nArtifactTool_NeedXuanSui,nArtifactTool_NeedXuanSui,nSuiNum,nArtifactTool_Monopoly,0,nArtifactTool_UserId)) 
			and (not Item_ChkMulItem(nArtifactTool_NeedXuanSui,nArtifactTool_NeedXuanSui,nSuiNum,nArtifactTool_SpeMonopoly,0,nArtifactTool_UserId)) then
			if nArtifactTool_Monopoly == 0 or nArtifactTool_SpeMonopoly == 0 then
				Sys_MsgBox(string.format(tArtifactTool_Text["Tip"]["Duan"][5],nSuiNum),nil,nil,nArtifactTool_UserId)
				User_TalkChannel2005(string.format(tArtifactTool_Text["Tip"]["Duan"][5],nSuiNum),nArtifactTool_UserId)
				return
			end
			Sys_MsgBox(string.format(tArtifactTool_Text["Tip"]["Duan"][10],nSuiNum),nil,nil,nArtifactTool_UserId)
			User_TalkChannel2005(string.format(tArtifactTool_Text["Tip"]["Duan"][10],nSuiNum),nArtifactTool_UserId)
			return
		end
		
	end
	
	
	-- 没优质玄元宝石
	if (not Item_ChkMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,nXuanNum,nArtifactTool_Monopoly,0,nArtifactTool_UserId))
		and (not Item_ChkMulItem(nArtifactTool_NeedXuan,nArtifactTool_NeedXuan,nXuanNum,nArtifactTool_SpeMonopoly,0,nArtifactTool_UserId)) then
		if nArtifactTool_Monopoly == 0 or nArtifactTool_SpeMonopoly == 0 then
			Sys_MsgBox(string.format(tArtifactTool_Text["Tip"]["Duan"][6],nXuanNum),nil,nil,nArtifactTool_UserId)
			User_TalkChannel2005(string.format(tArtifactTool_Text["Tip"]["Duan"][6],nXuanNum),nArtifactTool_UserId)
			return
		end
		Sys_MsgBox(string.format(tArtifactTool_Text["Tip"]["Duan"][11],nXuanNum),nil,nil,nArtifactTool_UserId)
		User_TalkChannel2005(string.format(tArtifactTool_Text["Tip"]["Duan"][11],nXuanNum),nArtifactTool_UserId)
		return
	end


	--读条
	User_SetExplore(1,tArtifactTool_Text["Tip"]["Duan"][12],220,"ArtifactTool_ReadSureDa</N>"..nNpcId.."</N>"..nXuanNum.."</N>"..nMoney.."</N>"..nSuiNum.."</N>"..nChat.."</N>"..nArtifactTool_Monopoly.."</N>"..nArtifactTool_Type.."</N>"..nArtifactTool_SpeMonopoly.."</N>"..nArtifactTool_UserId)
	-- ArtifactTool_ReadSureDa(nNpcId,nXuanNum,nMoney,nSuiNum,nChat,nUserId)

end

-- "优质玄元宝石兑换3个玄元天晶"
function ArtifactTool_DuiThree(nNpcId)
	
	--判断背包空间是否充足
	local nArtifactTool_Space =  RewardTemplate_GetRewardSpace(tArtifactTool_RewardItem[700073])
	
	if not User_CheckLeftSpace(nArtifactTool_Space) then
		User_TalkChannel2005(tFestivalSpring2015_RemoveFireks_Text[17417]["Text231"])
		Sys_MsgBox(tFestivalSpring2015_RemoveFireks_Text[17417]["Text231"])
		return
	end
	
	local nArtifactTool_NeedXuanSui = tArtifactTool_RewardItem[120]["Necessary"]
	-- local nArtifactTool_Tip = 1
	
	--优先锻造非赠宝石
	if Item_ChkMulItem(nArtifactTool_NeedXuanSui,nArtifactTool_NeedXuanSui,1,0) and 
		Item_DelMulItem(nArtifactTool_NeedXuanSui,nArtifactTool_NeedXuanSui,1,0)then
		
		local tReward = CommonFunc_Copy(tArtifactTool_RewardItem[700073])
		tReward["RewardItem"][1]["Attr"] = "0 3"
		RewardTemplate_UseItemAndMsg(tReward)

		LinkNpcGossipFunc_New(nNpcId,"9-1")
		return
		
	end
		
	LinkNpcGossipFunc_New(nNpcId,"10-1")
	
end

function ArtifactTool_DuiThreeZeng(nNpcId)
	
	--判断背包空间是否充足
	local nArtifactTool_Space =  RewardTemplate_GetRewardSpace(tArtifactTool_RewardItem[700073])
	
	if not User_CheckLeftSpace(nArtifactTool_Space) then
		User_TalkChannel2005(tFestivalSpring2015_RemoveFireks_Text[17417]["Text231"])
		Sys_MsgBox(tFestivalSpring2015_RemoveFireks_Text[17417]["Text231"])
		return
	end
	
	local nArtifactTool_NeedXuanSui = tArtifactTool_RewardItem[120]["Necessary"]
	-- local nArtifactTool_Tip = 1
	
	
	if Item_ChkMulItem(nArtifactTool_NeedXuanSui,nArtifactTool_NeedXuanSui,1,2) and 
		Item_DelMulItem(nArtifactTool_NeedXuanSui,nArtifactTool_NeedXuanSui,1,2)then
		
		local tReward = CommonFunc_Copy(tArtifactTool_RewardItem[700073])
		tReward["RewardItem"][1]["Attr"] = "0 3 3"
		RewardTemplate_UseItemAndMsg(tReward)
		
		LinkNpcGossipFunc_New(nNpcId,"11-1")
		return
		
	end
	
	LinkNpcGossipFunc_New(nNpcId,"10-1")
	
end



----------------------------------模块部分配置----------------------------------

-- 【法器神佑】天宝真人
tNpcFace[3531] = 53
tNpcGossip[26709] = tNpcGossip[26709] or DefaultNpc:new{}
tNpcGossip[26709]["OptionHidden"] = 1
tNpcGossip[26709]["DialogueText"] = tArtifactTool_Text[26709]

tNpcGossip[26709]["Text1-1"] = {111,112,113}
tNpcGossip[26709]["tOption1-1"] = {1}
tNpcGossip[26709]["ChkFunc1-1"] = function()
	--判断职业
	return ArtifactTool_DaoProfession()
end

tNpcGossip[26709]["OptionFunc1"] = "ArtifactTool_ChatDifficult</N>26709"

-- 玩家不是道士职业
tNpcGossip[26709]["Text1-2"] = {183}
tNpcGossip[26709]["tOption1-2"] = {41}
tNpcGossip[26709]["ChkFunc1-2"] = function()
	return ArtifactTool_SevenTool()
end


--开始锻造法器
tNpcGossip[26709]["Text1-3"] = {114}
tNpcGossip[26709]["tOption1-3"] = {2}


--120级对白
tNpcGossip[26709]["Text2-1"] = {115,116,117,118,119,120,121,122}
tNpcGossip[26709]["tOption2-1"] = {3,4,5}
tNpcGossip[26709]["OptionFunc3"] = "ArtifactTool_TwiceDa</N>26709</N>1</N>0</N>0</N>1"
tNpcGossip[26709]["OptionFunc4"] = "ArtifactTool_TwiceDa</N>26709</N>5</N>1000</N>0</N>2"
tNpcGossip[26709]["OptionPoint5"] = "8-1"


-- 130级对白
tNpcGossip[26709]["Text3-1"] = {127,128,129,130,131,132,133,134}
tNpcGossip[26709]["tOption3-1"] = {10,11,40,12}
tNpcGossip[26709]["OptionFunc10"] = "ArtifactTool_TwiceDa</N>26709</N>1</N>100</N>1</N>3"
-- "优质玄元宝石兑换3个玄元天晶"
tNpcGossip[26709]["OptionFunc11"] = "ArtifactTool_DuiThree</N>26709"
tNpcGossip[26709]["OptionFunc40"] = "ArtifactTool_DuiThreeZeng</N>26709"
tNpcGossip[26709]["OptionPoint12"] = "8-1"

-- 140级对白
tNpcGossip[26709]["Text4-1"] = {138,139,140,141,142,143,144,145}
tNpcGossip[26709]["tOption4-1"] = {16,17,40,18}
tNpcGossip[26709]["OptionFunc16"] = "ArtifactTool_TwiceDa</N>26709</N>3</N>300</N>2</N>4"
tNpcGossip[26709]["OptionFunc17"] = "ArtifactTool_DuiThree</N>26709"
tNpcGossip[26709]["OptionPoint18"] = "8-1"

-- 150级对白
tNpcGossip[26709]["Text5-1"] = {149,150,151,152,153,154,155,156}
tNpcGossip[26709]["tOption5-1"] = {22,23,40,24}
tNpcGossip[26709]["OptionFunc22"] = "ArtifactTool_TwiceDa</N>26709</N>5</N>1000</N>3</N>5"
tNpcGossip[26709]["OptionFunc23"] = "ArtifactTool_DuiThree</N>26709"
tNpcGossip[26709]["OptionPoint24"] = "8-1"

-- 玩家身上没有法器
tNpcGossip[26709]["Text6-1"] = {136}
tNpcGossip[26709]["tOption6-1"] = {14}

--二次确定进行打造
tNpcGossip[26709]["Text7-1"] = {162}
tNpcGossip[26709]["tOption7-1"] = {30,31}
tNpcGossip[26709]["OptionPoint31"] = "1"

-- 锻造天书
tNpcGossip[26709]["Text8-1"] = {168,169,170,171,172,173,174,175,176,177,178,179}
tNpcGossip[26709]["tOption8-1"] = {37}
tNpcGossip[26709]["OptionPoint37"] = "1"

--优质玄元宝石兑换3个玄元天晶成功
tNpcGossip[26709]["Text9-1"] = {180}
tNpcGossip[26709]["tOption9-1"] = {38}
tNpcGossip[26709]["OptionPoint38"] = "1"

tNpcGossip[26709]["Text11-1"] = {181}
tNpcGossip[26709]["tOption11-1"] = {38}


--优质玄元宝石兑换3个玄元天晶失败
tNpcGossip[26709]["Text10-1"] = {167}
tNpcGossip[26709]["tOption10-1"] = {36}

--锻造成功
tNpcGossip[26709]["Text12-1"] = {163}
tNpcGossip[26709]["tOption12-1"] = {32}

--锻造失败，前五次
tNpcGossip[26709]["Text13-1"] = {164}
tNpcGossip[26709]["tOption13-1"] = {33}


--锻造失败，≥6次
tNpcGossip[26709]["Text14-1"] = {165}
tNpcGossip[26709]["tOption14-1"] = {34}

-- 玩家装备已达到神佑7
tNpcGossip[26709]["Text15-1"] = {182}
tNpcGossip[26709]["tOption15-1"] = {39}






