-----------------------------------------------------------------------------------
--190929[简体征服][活动脚本]全球万圣节活动怪物玩法
--SQL BY:洪聪敏
--DATE：2019-09-29
-----------------------------------------------------------------------------------
--命名前缀：SaintResurrection_
--logid:12001663
--luaini:41546
	

-----------------------------------------------------------------------------------
local tSaintResurrection_Cont = {}
	--根据气氛值刷新怪物分钟
	tSaintResurrection_Cont["Time"] = {}
	tSaintResurrection_Cont["Time"]["Monster"] = {}
	tSaintResurrection_Cont["Time"]["Monster"][1] = {30,35,40,45,50,55,00}
	tSaintResurrection_Cont["Time"]["Monster"][2] = {30,34,38,42,46,50,54,58}
	tSaintResurrection_Cont["Time"]["Monster"][3] = {30,33,36,39,42,45,48,51,54,57,00}
	tSaintResurrection_Cont["Time"]["Monster"][4] = {30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,00}
	tSaintResurrection_Cont["Time"]["Monster"][5] = {30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,00}
	--根据气氛值刷新boss分钟
	tSaintResurrection_Cont["Time"]["Boss"] = {}
	tSaintResurrection_Cont["Time"]["Boss"][1] = {30,40,50,00}
	tSaintResurrection_Cont["Time"]["Boss"][2] = {30,39,48,57}
	tSaintResurrection_Cont["Time"]["Boss"][3] = {30,38,46,54}
	tSaintResurrection_Cont["Time"]["Boss"][4] = {30,37,44,50,57}
	tSaintResurrection_Cont["Time"]["Boss"][5] = {30,35,40,45,50,55,00}

	tSaintResurrection_Cont["AddTime"] = {}
	tSaintResurrection_Cont["AddTime"][1] = {0330,0400}
	tSaintResurrection_Cont["AddTime"][2] = {0930,1000}
	tSaintResurrection_Cont["AddTime"][3] = {1230,1300}
	tSaintResurrection_Cont["AddTime"][4] = {1730,1800}

	
	tSaintResurrection_Cont["GlobalData"] = {}
	--气氛值动态码
	tSaintResurrection_Cont["GlobalData"]["Atmosphere"] = 53765
	--气氛值等级动态码
	tSaintResurrection_Cont["GlobalData"]["Monster"] = 53771
	
	tSaintResurrection_Cont["ExistTime"] = 300
	tSaintResurrection_Cont["Cellx"] = 20
	tSaintResurrection_Cont["CellY"] = 20
	
	--掉落
	tSaintResurrection_Cont["Dro"] = {}
	tSaintResurrection_Cont["Dro"][1170] = {}
	tSaintResurrection_Cont["Dro"][1170]["Posx"] = 551
	tSaintResurrection_Cont["Dro"][1170]["Posy"] = 289
	tSaintResurrection_Cont["Dro"][1170]["MapId"] =1002
	tSaintResurrection_Cont["Dro"][1170]["DroItem_1"] = 3313798
	tSaintResurrection_Cont["Dro"][1170]["DroItemNum_1"] = 50
	tSaintResurrection_Cont["Dro"][1170]["DroItem_2"] = 3600167
	tSaintResurrection_Cont["Dro"][1170]["DroItemNum_2"] = 30
	
	tSaintResurrection_Cont["Dro"][1171] = {}
	tSaintResurrection_Cont["Dro"][1171]["Posx"] = 566
	tSaintResurrection_Cont["Dro"][1171]["Posy"] = 358
	tSaintResurrection_Cont["Dro"][1171]["MapId"] =1002
	tSaintResurrection_Cont["Dro"][1171]["DroItem_1"] = 3313798
	tSaintResurrection_Cont["Dro"][1171]["DroItemNum_1"] = 50
	tSaintResurrection_Cont["Dro"][1171]["DroItem_2"] = 3600167
	tSaintResurrection_Cont["Dro"][1171]["DroItemNum_2"] = 30
	
	tSaintResurrection_Cont["Dro"][1172] = {}
	tSaintResurrection_Cont["Dro"][1172]["Posx"] = 485
	tSaintResurrection_Cont["Dro"][1172]["Posy"] = 492
	tSaintResurrection_Cont["Dro"][1172]["MapId"] =1002
	tSaintResurrection_Cont["Dro"][1172]["DroItem_1"] = 3313798
	tSaintResurrection_Cont["Dro"][1172]["DroItemNum_1"] = 50
	tSaintResurrection_Cont["Dro"][1172]["DroItem_2"] = 3600167
	tSaintResurrection_Cont["Dro"][1172]["DroItemNum_2"] = 30
	
	tSaintResurrection_Cont["Dro"][1173] = {}
	tSaintResurrection_Cont["Dro"][1173]["Posx"] = 537
	tSaintResurrection_Cont["Dro"][1173]["Posy"] = 484
	tSaintResurrection_Cont["Dro"][1173]["MapId"] =1002
	tSaintResurrection_Cont["Dro"][1173]["DroItem_1"] = 3313798
	tSaintResurrection_Cont["Dro"][1173]["DroItemNum_1"] = 50
	tSaintResurrection_Cont["Dro"][1173]["DroItem_2"] = 3600167
	tSaintResurrection_Cont["Dro"][1173]["DroItemNum_2"] = 30
	
	
	tSaintResurrection_Cont["DroNoGif"] = {}
	tSaintResurrection_Cont["DroNoGif"][1170] = {}
	tSaintResurrection_Cont["DroNoGif"][1170]["Posx"] = 370
	tSaintResurrection_Cont["DroNoGif"][1170]["Posy"] = 370
	tSaintResurrection_Cont["DroNoGif"][1170]["MapId"] =10364
	tSaintResurrection_Cont["DroNoGif"][1170]["DroItem_1"] = 3313798
	tSaintResurrection_Cont["DroNoGif"][1170]["DroItemNum_1"] = 50
	tSaintResurrection_Cont["DroNoGif"][1170]["DroItem_2"] = 3600167
	tSaintResurrection_Cont["DroNoGif"][1170]["DroItemNum_2"] = 30
	
	
	tSaintResurrection_Cont["DroNoGif"][1171] = {}
	tSaintResurrection_Cont["DroNoGif"][1171]["Posx"] = 392
	tSaintResurrection_Cont["DroNoGif"][1171]["Posy"] = 341
	tSaintResurrection_Cont["DroNoGif"][1171]["MapId"] =10364
	tSaintResurrection_Cont["DroNoGif"][1171]["DroItem_1"] = 3313798
	tSaintResurrection_Cont["DroNoGif"][1171]["DroItemNum_1"] = 50
	tSaintResurrection_Cont["DroNoGif"][1171]["DroItem_2"] = 3600167
	tSaintResurrection_Cont["DroNoGif"][1171]["DroItemNum_2"] = 30
	
	tSaintResurrection_Cont["DroNoGif"][1172] = {}
	tSaintResurrection_Cont["DroNoGif"][1172]["Posx"] = 403
	tSaintResurrection_Cont["DroNoGif"][1172]["Posy"] = 293
	tSaintResurrection_Cont["DroNoGif"][1172]["MapId"] =10364
	tSaintResurrection_Cont["DroNoGif"][1172]["DroItem_1"] = 3313798
	tSaintResurrection_Cont["DroNoGif"][1172]["DroItemNum_1"] = 50
	tSaintResurrection_Cont["DroNoGif"][1172]["DroItem_2"] = 3600167
	tSaintResurrection_Cont["DroNoGif"][1172]["DroItemNum_2"] = 30
	
	
	tSaintResurrection_Cont["DroNoGif"][1173] = {}
	tSaintResurrection_Cont["DroNoGif"][1173]["Posx"] = 415
	tSaintResurrection_Cont["DroNoGif"][1173]["Posy"] = 251
	tSaintResurrection_Cont["DroNoGif"][1173]["MapId"] =10364
	tSaintResurrection_Cont["DroNoGif"][1173]["DroItem_1"] = 3313798
	tSaintResurrection_Cont["DroNoGif"][1173]["DroItemNum_1"] = 50
	tSaintResurrection_Cont["DroNoGif"][1173]["DroItem_2"] = 3600167
	tSaintResurrection_Cont["DroNoGif"][1173]["DroItemNum_2"] = 30
	
	--普通服怪物点
	--恐惧魔王·恐
	tSaintResurrection_Cont["Boss"] = {}
	tSaintResurrection_Cont["Boss"][1]={}
	tSaintResurrection_Cont["Boss"][1]["MonsterId"] = 1170
	tSaintResurrection_Cont["Boss"][1]["GenId"] = 30032
	tSaintResurrection_Cont["Boss"][1]["MapId"] = 1002
	tSaintResurrection_Cont["Boss"][1]["Pox"] = 551
	tSaintResurrection_Cont["Boss"][1]["Poy"] = 289
	--恐惧魔王·怖
	tSaintResurrection_Cont["Boss"][2]={}
	tSaintResurrection_Cont["Boss"][2]["MonsterId"] = 1171
	tSaintResurrection_Cont["Boss"][2]["GenId"] = 30033
	tSaintResurrection_Cont["Boss"][2]["MapId"] = 1002
	tSaintResurrection_Cont["Boss"][2]["Pox"] = 566
	tSaintResurrection_Cont["Boss"][2]["Poy"] = 358
	--恐惧魔王·惧
	tSaintResurrection_Cont["Boss"][3]={}
	tSaintResurrection_Cont["Boss"][3]["MonsterId"] = 1172
	tSaintResurrection_Cont["Boss"][3]["GenId"] = 30034
	tSaintResurrection_Cont["Boss"][3]["MapId"] = 1002
	tSaintResurrection_Cont["Boss"][3]["Pox"] = 485
	tSaintResurrection_Cont["Boss"][3]["Poy"] = 492
	--恐惧魔王·惊
	tSaintResurrection_Cont["Boss"][4]={}
	tSaintResurrection_Cont["Boss"][4]["MonsterId"] = 1173
	tSaintResurrection_Cont["Boss"][4]["GenId"] = 30035
	tSaintResurrection_Cont["Boss"][4]["MapId"] = 1002
	tSaintResurrection_Cont["Boss"][4]["Pox"] = 537
	tSaintResurrection_Cont["Boss"][4]["Poy"] = 484
	
	--小怪
	tSaintResurrection_Cont["Monster"] = {}
	tSaintResurrection_Cont["Monster"][1]={}
	tSaintResurrection_Cont["Monster"][1]["MonsterId"] = 1174
	tSaintResurrection_Cont["Monster"][1]["GenId"] = 30036
	tSaintResurrection_Cont["Monster"][1]["MapId"] = 1002
	tSaintResurrection_Cont["Monster"][1]["Pox"] = 551
	tSaintResurrection_Cont["Monster"][1]["Poy"] = 289
	
	tSaintResurrection_Cont["Monster"][2]={}
	tSaintResurrection_Cont["Monster"][2]["MonsterId"] = 1174
	tSaintResurrection_Cont["Monster"][2]["GenId"] = 30036
	tSaintResurrection_Cont["Monster"][2]["MapId"] = 1002
	tSaintResurrection_Cont["Monster"][2]["Pox"] = 566
	tSaintResurrection_Cont["Monster"][2]["Poy"] = 358
	
	tSaintResurrection_Cont["Monster"][3]={}
	tSaintResurrection_Cont["Monster"][3]["MonsterId"] = 1174
	tSaintResurrection_Cont["Monster"][3]["GenId"] = 30036
	tSaintResurrection_Cont["Monster"][3]["MapId"] = 1002
	tSaintResurrection_Cont["Monster"][3]["Pox"] = 485
	tSaintResurrection_Cont["Monster"][3]["Poy"] = 492
	
	tSaintResurrection_Cont["Monster"][4]={}
	tSaintResurrection_Cont["Monster"][4]["MonsterId"] = 1174
	tSaintResurrection_Cont["Monster"][4]["GenId"] = 30036
	tSaintResurrection_Cont["Monster"][4]["MapId"] = 1002
	tSaintResurrection_Cont["Monster"][4]["Pox"] = 537
	tSaintResurrection_Cont["Monster"][4]["Poy"] = 484
	
	
	
	
	
	
	
	
	
	--激情服怪物点
	--恐惧魔王·恐
	tSaintResurrection_Cont["NoGifBoss"] = {}
	tSaintResurrection_Cont["NoGifBoss"][1]={}
	tSaintResurrection_Cont["NoGifBoss"][1]["MonsterId"] = 1170
	tSaintResurrection_Cont["NoGifBoss"][1]["GenId"] = 30032
	tSaintResurrection_Cont["NoGifBoss"][1]["MapId"] = 10364
	tSaintResurrection_Cont["NoGifBoss"][1]["Pox"] = 370
	tSaintResurrection_Cont["NoGifBoss"][1]["Poy"] = 370
	--恐惧魔王·怖
	tSaintResurrection_Cont["NoGifBoss"][2]={}
	tSaintResurrection_Cont["NoGifBoss"][2]["MonsterId"] = 1171
	tSaintResurrection_Cont["NoGifBoss"][2]["GenId"] = 30033
	tSaintResurrection_Cont["NoGifBoss"][2]["MapId"] = 10364
	tSaintResurrection_Cont["NoGifBoss"][2]["Pox"] = 392
	tSaintResurrection_Cont["NoGifBoss"][2]["Poy"] = 341
	--恐惧魔王·惧
	tSaintResurrection_Cont["NoGifBoss"][3]={}
	tSaintResurrection_Cont["NoGifBoss"][3]["MonsterId"] = 1172
	tSaintResurrection_Cont["NoGifBoss"][3]["GenId"] = 30034
	tSaintResurrection_Cont["NoGifBoss"][3]["MapId"] = 10364
	tSaintResurrection_Cont["NoGifBoss"][3]["Pox"] = 403
	tSaintResurrection_Cont["NoGifBoss"][3]["Poy"] = 293
	--恐惧魔王·惊
	tSaintResurrection_Cont["NoGifBoss"][4]={}
	tSaintResurrection_Cont["NoGifBoss"][4]["MonsterId"] = 1173
	tSaintResurrection_Cont["NoGifBoss"][4]["GenId"] = 30035
	tSaintResurrection_Cont["NoGifBoss"][4]["MapId"] = 10364
	tSaintResurrection_Cont["NoGifBoss"][4]["Pox"] = 415
	tSaintResurrection_Cont["NoGifBoss"][4]["Poy"] = 251

	--小怪
	tSaintResurrection_Cont["NoGifMonster"] = {}
	tSaintResurrection_Cont["NoGifMonster"][1]={}
	tSaintResurrection_Cont["NoGifMonster"][1]["MonsterId"] = 1174
	tSaintResurrection_Cont["NoGifMonster"][1]["GenId"] = 30036
	tSaintResurrection_Cont["NoGifMonster"][1]["MapId"] = 10364
	tSaintResurrection_Cont["NoGifMonster"][1]["Pox"] = 370
	tSaintResurrection_Cont["NoGifMonster"][1]["Poy"] = 370
	
	tSaintResurrection_Cont["NoGifMonster"][2]={}
	tSaintResurrection_Cont["NoGifMonster"][2]["MonsterId"] = 1174
	tSaintResurrection_Cont["NoGifMonster"][2]["GenId"] = 30036
	tSaintResurrection_Cont["NoGifMonster"][2]["MapId"] = 10364
	tSaintResurrection_Cont["NoGifMonster"][2]["Pox"] = 392
	tSaintResurrection_Cont["NoGifMonster"][2]["Poy"] = 341
	
	tSaintResurrection_Cont["NoGifMonster"][3]={}
	tSaintResurrection_Cont["NoGifMonster"][3]["MonsterId"] = 1174
	tSaintResurrection_Cont["NoGifMonster"][3]["GenId"] = 30036
	tSaintResurrection_Cont["NoGifMonster"][3]["MapId"] = 10364
	tSaintResurrection_Cont["NoGifMonster"][3]["Pox"] = 403
	tSaintResurrection_Cont["NoGifMonster"][3]["Poy"] = 293
	
	tSaintResurrection_Cont["NoGifMonster"][4]={}
	tSaintResurrection_Cont["NoGifMonster"][4]["MonsterId"] = 1174
	tSaintResurrection_Cont["NoGifMonster"][4]["GenId"] = 30036
	tSaintResurrection_Cont["NoGifMonster"][4]["MapId"] = 10364
	tSaintResurrection_Cont["NoGifMonster"][4]["Pox"] = 415
	tSaintResurrection_Cont["NoGifMonster"][4]["Poy"] = 251
	
	
local tSaintResurrection_MonsterDro = {}
	-- ===小怪掉落
	-- ===索引: tSaintResurrection_MonsterDro[1]
	-- ===
	tSaintResurrection_MonsterDro[1] = {}
	tSaintResurrection_MonsterDro[1]["ItemChanceSum"] = 10000
	tSaintResurrection_MonsterDro[1]["LogId"] = 12001663
	-- 南瓜糕点 - 30%
	tSaintResurrection_MonsterDro[1][1] = {}
	tSaintResurrection_MonsterDro[1][1]["RandomItemChanceType"] = 2
	tSaintResurrection_MonsterDro[1][1]["ItemChance"] = 3000
	tSaintResurrection_MonsterDro[1][1]["RewardItem"] = {}
	tSaintResurrection_MonsterDro[1][1]["RewardItem"][1] = {}
	tSaintResurrection_MonsterDro[1][1]["RewardItem"][1]["Id"] = 3313798 --  3313798 南瓜糕点, 【表格】南瓜糕点
	tSaintResurrection_MonsterDro[1][1]["RewardItem"][1]["Attr"] = "0 1" --  3313798 南瓜糕点*1
	tSaintResurrection_MonsterDro[1][1]["RewardEffect"] = {}
	tSaintResurrection_MonsterDro[1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSaintResurrection_MonsterDro[1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 不掉落 - 70%
	tSaintResurrection_MonsterDro[1][2] = {}
	tSaintResurrection_MonsterDro[1][2]["RandomItemChanceType"] = 2
	tSaintResurrection_MonsterDro[1][2]["ItemChance"] = 7000

-----------------------------------------------------------------------------------

--获取当前服务器气氛值
function SaintResurrection_GetGlobalData()
	--非活动时间
	if not Sys_ChkFullTime(tActivityTime["SaintResurrection"]["ActivityTime"]) then
		return
	end
	local nServerGlobal = tSaintResurrection_Cont["GlobalData"]["Atmosphere"]
	local nMonsterGlobal = tSaintResurrection_Cont["GlobalData"]["Monster"]
	local nPos = 0
	local nIndex = 0
	local nAtmosphereData = Get_SysDynaGlobalData(nServerGlobal,nPos)
	--根据气氛值设置接下来半小时怪物刷新规则
	if nAtmosphereData >= 0 and nAtmosphereData < 20000 then
		nIndex = 1
	elseif nAtmosphereData >= 20000 and nAtmosphereData < 50000 then
		nIndex = 2
	elseif nAtmosphereData >= 50000 and nAtmosphereData < 100000 then
		nIndex = 3
	elseif nAtmosphereData >= 100000 and nAtmosphereData < 300000 then
		nIndex = 4
	elseif nAtmosphereData >= 300000 then
		nIndex = 5
	end
	
	Sys_SetSynaGlobalData(nMonsterGlobal,0,nIndex)
end

--检测是否刷怪
function  SaintResurrection_ChkAddMonster()
	--非活动时间
	if not Sys_ChkFullTime(tActivityTime["SaintResurrection"]["ActivityTime"]) then
		return
	end
	local nTime = tonumber(os.date("%M"))
	local nMonsterGlobal = tSaintResurrection_Cont["GlobalData"]["Monster"]
	local nPos = 0
	--气氛值等级
	local nIndex = Get_SysDynaGlobalData(nMonsterGlobal,nPos)
	
	
	--气氛值达不到刷怪要求
	if nIndex == nil or nIndex == 0 then
		return
	end
	--刷小怪
	for i,v in pairs(tSaintResurrection_Cont["Time"]["Monster"][nIndex]) do
		if nTime ~= nil and nTime == v then
			--刷怪
			SaintResurrection_AddMonster()
		end
	end
	--刷boss
	for i,v in pairs(tSaintResurrection_Cont["Time"]["Boss"][nIndex]) do
		if nTime ~= nil and nTime == v then
			--刷怪
			SaintResurrection_AddBoss()
		end
	end
end

--刷小怪
function SaintResurrection_AddMonster()
	local nMapId = 0
	local nPosX = 0
	local nPosY = 0
	local nGenId = 0
	local nMonsterId = 0
	local nNew_PosX = 0
	local nNew_PosY = 0
	
	
	if not Sys_ChkFullTime(tActivityTime["SaintResurrection"]["ActivityTime"]) then
		return
	end
	for i=1,4 do 
		nPosX = tSaintResurrection_Cont["Monster"][i]["Pox"]
		nPosY = tSaintResurrection_Cont["Monster"][i]["Poy"]
		nGenId = tSaintResurrection_Cont["Monster"][i]["GenId"] 
		nMapId = tSaintResurrection_Cont["Monster"][i]["MapId"] 
		nMonsterId = tSaintResurrection_Cont["Monster"][i]["MonsterId"]
		if SpecialServer_ChkNoGiftServer() then
			nPosX = tSaintResurrection_Cont["NoGifMonster"][i]["Pox"]
			nPosY = tSaintResurrection_Cont["NoGifMonster"][i]["Poy"]
			nGenId = tSaintResurrection_Cont["NoGifMonster"][i]["GenId"] 
			nMapId = tSaintResurrection_Cont["NoGifMonster"][i]["MapId"] 
			nMonsterId = tSaintResurrection_Cont["NoGifMonster"][i]["MonsterId"]
		end
		
		local nMonster = Get_SysTempData(1,nMapId,nMonsterId)
		--地图上怪物超40只，不刷新
		if nMonster >= 40 then 
			return
		else 
			--boss中心随机10个点
			for i = 1,10 do
				nNew_PosX = math.random(nPosX,nPosX + 10)
				nNew_PosY = math.random(nPosY,nPosY + 10)
				Monster_AddAndCount(nMapId,nNew_PosX,nNew_PosY,nGenId,nMonsterId)
			end
		end
	end
end

--刷boss
function SaintResurrection_AddBoss()
	local sBroad = tSaintResurrection_Text["Monster"]
	local nMonsterGlobal = tSaintResurrection_Cont["GlobalData"]["Monster"]
	if not Sys_ChkFullTime(tActivityTime["SaintResurrection"]["ActivityTime"]) then
		return
	end
	
	--重置杀怪数量
	Sys_SetSynaGlobalData(nMonsterGlobal,1,0)
	
	for i=1,4 do 
		local nPosX = tSaintResurrection_Cont["Boss"][i]["Pox"]
		local nPosY = tSaintResurrection_Cont["Boss"][i]["Poy"]
		local nGenId = tSaintResurrection_Cont["Boss"][i]["GenId"] 
		local nMapId = tSaintResurrection_Cont["Boss"][i]["MapId"] 
		local nMonsterId = tSaintResurrection_Cont["Boss"][i]["MonsterId"]
		local nMonster = Get_SysTempData(1,nMapId,nMonsterId)
		if SpecialServer_ChkNoGiftServer() then
			nPosX = tSaintResurrection_Cont["NoGifBoss"][i]["Pox"]
			nPosY = tSaintResurrection_Cont["NoGifBoss"][i]["Poy"]
			nGenId = tSaintResurrection_Cont["NoGifBoss"][i]["GenId"] 
			nMapId = tSaintResurrection_Cont["NoGifBoss"][i]["MapId"] 
			nMonsterId = tSaintResurrection_Cont["NoGifBoss"][i]["MonsterId"]
			nMonster = Get_SysTempData(1,nMapId,nMonsterId)
		end
		
		--地图上怪物超1，不刷新
		if nMonster ~=nil and  nMonster == 0 then 
			--动态刷出boss
			Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)
			--出公告
			Sys_SystemBroadcast(sBroad)
		end
	end
end
--小怪掉落
function SaintResurrection_DroMonster(nMonsterId)
	local nUserId = Get_UserId()
	Monster_Death(nMonsterId,Get_UserMapId(nUserId))
	if not Sys_ChkFullTime(tActivityTime["SaintResurrection"]["ActivityTime"]) then
		return
	end
	
	local nNeedSpace  = RewardTemplate_GetRewardSpace(tSaintResurrection_MonsterDro[1],nUserId)
	
	if not User_CheckLeftSpace(nNeedSpace,nUserId) then
		return
	end
	
	RewardTemplate_NewRandomNoTip(tSaintResurrection_MonsterDro,1,nUserId)
end
--boss掉落
function SaintResurrection_DroBoss(nMonsterId)
	local nUserId = Get_UserId()
	Monster_Death(nMonsterId,Get_UserMapId(nUserId))
	if not Sys_ChkFullTime(tActivityTime["SaintResurrection"]["ActivityTime"]) then
		return
	end
	local sUserName = Get_UserName(nUserId)
	local nMonsterGlobal = tSaintResurrection_Cont["GlobalData"]["Monster"]
	local nPos = 1
	local nTime = tonumber(os.date("%H%M"))

	--出击杀公告
	local sKillText = string.format(tSaintResurrection_Text["KillMonster"][nMonsterId],sUserName)
	Sys_SystemBroadcast(sKillText)
	--怪物击杀数+1
	
	--当前击杀数
	local nNowKillNum = Get_SysDynaGlobalData(nMonsterGlobal,nPos)
	--当前气氛等级
	local nIndex = Get_SysDynaGlobalData(nMonsterGlobal,nPos)

	Sys_SetSynaGlobalData(nMonsterGlobal,1,nNowKillNum+1)
	
	--4只怪物全被击杀
	--判断当前是否是恐怖复活时间段
	for i,v in pairs(tSaintResurrection_Cont["AddTime"]) do 
		if nTime > v[1] and nTime < v[2] then
			if nNowKillNum + 1 >= 4 then
				Sys_SystemBroadcast(tSaintResurrection_Text["KillAllMonster"])
			end
		end
	end

	
	local nPosX = tSaintResurrection_Cont["Dro"][nMonsterId]["Posx"] 
	local nPosY = tSaintResurrection_Cont["Dro"][nMonsterId]["Posy"]  
	local nMapId = tSaintResurrection_Cont["Dro"][nMonsterId]["MapId"] 
	local nItemId_1 = tSaintResurrection_Cont["Dro"][nMonsterId]["DroItem_1"]
	local nItemNum_1 = tSaintResurrection_Cont["Dro"][nMonsterId]["DroItemNum_1"]
	local nItemId_2 = tSaintResurrection_Cont["Dro"][nMonsterId]["DroItem_2"]
	local nItemNum_2 = tSaintResurrection_Cont["Dro"][nMonsterId]["DroItemNum_2"]
	if SpecialServer_ChkNoGiftServer() then
		nPosX = tSaintResurrection_Cont["DroNoGif"][nMonsterId]["Posx"] 
		nPosY = tSaintResurrection_Cont["DroNoGif"][nMonsterId]["Posy"]  
		nMapId = tSaintResurrection_Cont["DroNoGif"][nMonsterId]["MapId"] 
		nItemId_1 = tSaintResurrection_Cont["DroNoGif"][nMonsterId]["DroItem_1"]
		nItemNum_1 = tSaintResurrection_Cont["DroNoGif"][nMonsterId]["DroItemNum_1"]
		nItemId_2 = tSaintResurrection_Cont["DroNoGif"][nMonsterId]["DroItem_2"]
		nItemNum_2 = tSaintResurrection_Cont["DroNoGif"][nMonsterId]["DroItemNum_2"]
	end
	
	local nExistTime = tSaintResurrection_Cont["ExistTime"]
	local nCellx = tSaintResurrection_Cont["Cellx"]
	local nCelly = tSaintResurrection_Cont["CellY"]
	
	-- 生成物品
	Map_DropMultiItems(nMapId, nItemId_1, nPosX, nPosY, nCellx, nCelly, nItemNum_1, nExistTime)
	Map_DropMultiItems(nMapId, nItemId_2, nPosX, nPosY, nCellx, nCelly, nItemNum_2, nExistTime)
	
end
--公告传送
function SaintResurrection_BroadGoto(nIndex)
	if not Sys_ChkFullTime(tActivityTime["SaintResurrection"]["ActivityTime"]) then
		return
	end
	local nUserId = Get_UserId()
	local nMapId = tSaintResurrection_Cont["Boss"][nIndex]["MapId"]
	local nPosX = tSaintResurrection_Cont["Boss"][nIndex]["Pox"] 
	local nPosY = tSaintResurrection_Cont["Boss"][nIndex]["Poy"] 
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tSaintResurrection_Cont["NoGifBoss"][nIndex]["MapId"]
		nPosX = tSaintResurrection_Cont["NoGifBoss"][nIndex]["Pox"] 
		nPosY = tSaintResurrection_Cont["NoGifBoss"][nIndex]["Poy"] 
	end
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId)
end

-----------------------------------------------------------------------------------

local tSaintResurrection_DroMonster = {}
tSaintResurrection_DroMonster[1] = {}
tSaintResurrection_DroMonster[1]["ActivityTime"] = tActivityTime["SaintResurrection"]["ActivityTime"]
tSaintResurrection_DroMonster[1]["Function"]=SaintResurrection_DroMonster
tSaintResurrection_DroMonster[1]["MonsterId"] = {1174}


tSaintResurrection_DroMonster[2] = {}
tSaintResurrection_DroMonster[2]["ActivityTime"] = tActivityTime["SaintResurrection"]["ActivityTime"]
tSaintResurrection_DroMonster[2]["Function"]= SaintResurrection_DroBoss
tSaintResurrection_DroMonster[2]["MonsterId"] = {1170,1171,1172,1173}
table.insert(tMonsterDrop_AreaLoad,tSaintResurrection_DroMonster[1])
table.insert(tMonsterDrop_AreaLoad,tSaintResurrection_DroMonster[2])

---------------------------------------------------------------------------------
--时间自检
local tSaintResurrection_AddMonster = {}
	--获取气氛值
	tSaintResurrection_AddMonster[1] = {}
	tSaintResurrection_AddMonster[1]["ActivityTime"] = tActivityTime["SaintResurrection"]["ActivityTime"]
	tSaintResurrection_AddMonster[1]["Type"] = 2
	tSaintResurrection_AddMonster[1]["TimeType"] = 4
	tSaintResurrection_AddMonster[1]["Multiple"] = {}
	tSaintResurrection_AddMonster[1]["Multiple"][1] = "03:29 03:29"
	tSaintResurrection_AddMonster[1]["Multiple"][2] = "09:29 09:29"
	tSaintResurrection_AddMonster[1]["Multiple"][3] = "12:29 12:29"
	tSaintResurrection_AddMonster[1]["Multiple"][4] = "17:29 17:29"

	tSaintResurrection_AddMonster[1]["Func"] = SaintResurrection_GetGlobalData


	--根据气氛值小怪
	tSaintResurrection_AddMonster[2] = {}
	tSaintResurrection_AddMonster[2]["ActivityTime"] = tActivityTime["SaintResurrection"]["ActivityTime"]
	tSaintResurrection_AddMonster[2]["Type"] = 2
	tSaintResurrection_AddMonster[2]["TimeType"] = 4
	tSaintResurrection_AddMonster[2]["Multiple"] = {}
	tSaintResurrection_AddMonster[2]["Multiple"][1] = "03:30 04:00"
	tSaintResurrection_AddMonster[2]["Multiple"][2] = "09:30 10:00"
	tSaintResurrection_AddMonster[2]["Multiple"][3] = "12:30 13:00"
	tSaintResurrection_AddMonster[2]["Multiple"][4] = "17:30 18:00"

	tSaintResurrection_AddMonster[2]["Func"] = SaintResurrection_ChkAddMonster

	table.insert(tSystemTime_InitialData,tSaintResurrection_AddMonster[1])
	table.insert(tSystemTime_InitialData,tSaintResurrection_AddMonster[2])
