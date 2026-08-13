------------------------------------------------------------------------------
--Name:		180920[简体征服][活动脚本]无赠品服务器制作-1、地图刷怪和掉落
--Creator: 	杨艳
--Created:	2018-09-20
------------------------------------------------------------------------------
-- 命名前缀
--BossBorn_


------------------------------------基本数据----------------------------------
local tBossBorn_Monster = {}
-- 4898,'黄金鸡王'
-- 4899,'马贼头领'
-- 4900,'蛇人王',1
-- 4901,'沙怪王',1
-- 4902,'水魔兽',1
-- 4903,'敦煌鬼王'
-- 4904,'腾蛇王',1
-- 4905,'尸魂皇',1
-- 4906,'鬼蛇皇',1

	-- 小boss数据
	tBossBorn_Monster["BossId"] = {}
	tBossBorn_Monster["BossId"][1] = 4898
	tBossBorn_Monster["BossId"][2] = 4899
	tBossBorn_Monster["BossId"][3] = 4900
	tBossBorn_Monster["BossId"][4] = 4901
	tBossBorn_Monster["BossId"][5] = 4902
	tBossBorn_Monster["BossId"][6] = 4903
	tBossBorn_Monster["BossId"][7] = 4904
	tBossBorn_Monster["BossId"][8] = 4905
	tBossBorn_Monster["BossId"][9] = 4906

	tBossBorn_Monster["MapId"] = {}
	tBossBorn_Monster["MapId"][4898] = {}
	tBossBorn_Monster["MapId"][4898][1] = {10364,415,279,26136}
	-- tBossBorn_Monster["MapId"][4898][2] = {10364,406,390,26137}
	-- tBossBorn_Monster["MapId"][4898][3] = {10364,342,474,26138}
	-- tBossBorn_Monster["MapId"][4898][4] = {10364,216,469,26139}
	-- tBossBorn_Monster["MapId"][4898][5] = {10364,389,576,26140}
	-- tBossBorn_Monster["MapId"][4898][6] = {10364,550,550,26141}
	-- tBossBorn_Monster["MapId"][4898][7] = {10364,630,548,26142}
	-- tBossBorn_Monster["MapId"][4898][8] = {10364,659,475,26143}

	tBossBorn_Monster["MapId"][4899] = {}
	-- tBossBorn_Monster["MapId"][4899][1] = {10365,394,356,26144}
	-- tBossBorn_Monster["MapId"][4899][2] = {10365,334,436,26145}
	-- tBossBorn_Monster["MapId"][4899][3] = {10365,374,508,26146}
	-- tBossBorn_Monster["MapId"][4899][4] = {10365,528,517,26147}
	-- tBossBorn_Monster["MapId"][4899][5] = {10365,263,584,26148}
	-- tBossBorn_Monster["MapId"][4899][6] = {10365,190,503,26149}
	-- tBossBorn_Monster["MapId"][4899][7] = {10365,592,477,26150}
	tBossBorn_Monster["MapId"][4899][1] = {10365,638,559,26151}

	tBossBorn_Monster["MapId"][4900] = {}
	-- tBossBorn_Monster["MapId"][4900][1] = {10366,716,674,26152}
	-- tBossBorn_Monster["MapId"][4900][2] = {10366,666,803,26153}
	tBossBorn_Monster["MapId"][4900][1] = {10366,446,747,26154}
	-- tBossBorn_Monster["MapId"][4900][4] = {10366,349,548,26155}
	-- tBossBorn_Monster["MapId"][4900][5] = {10366,126,417,26156}
	-- tBossBorn_Monster["MapId"][4900][6] = {10366,233,276,26157}
	-- tBossBorn_Monster["MapId"][4900][7] = {10366,489,299,26158}
	-- tBossBorn_Monster["MapId"][4900][8] = {10366,645,332,26159}

	tBossBorn_Monster["MapId"][4901] = {}
	-- tBossBorn_Monster["MapId"][4901][1] = {10367,673,653,26160}
	-- tBossBorn_Monster["MapId"][4901][2] = {10367,781,585,26161}
	tBossBorn_Monster["MapId"][4901][1] = {10367,664,479,26162}
	-- tBossBorn_Monster["MapId"][4901][4] = {10367,505,327,26163}
	-- tBossBorn_Monster["MapId"][4901][5] = {10367,380,195,26164}
	-- tBossBorn_Monster["MapId"][4901][6] = {10367,324,263,26165}
	-- tBossBorn_Monster["MapId"][4901][7] = {10367,307,396,26166}
	-- tBossBorn_Monster["MapId"][4901][8] = {10367,171,339,26167}

	tBossBorn_Monster["MapId"][4902] = {}
	-- tBossBorn_Monster["MapId"][4902][1] = {10368,805,738,26168}
	-- tBossBorn_Monster["MapId"][4902][2] = {10368,510,656,26169}
	-- tBossBorn_Monster["MapId"][4902][3] = {10368,412,596,26170}
	-- tBossBorn_Monster["MapId"][4902][4] = {10368,362,494,26171}
	tBossBorn_Monster["MapId"][4902][1] = {10368,302,234,26172}
	-- tBossBorn_Monster["MapId"][4902][6] = {10368,298,149,26190}
	-- tBossBorn_Monster["MapId"][4902][7] = {10368,412,212,26191}
	-- tBossBorn_Monster["MapId"][4902][8] = {10368,564,359,26192}

	tBossBorn_Monster["MapId"][4903] = {}
	-- tBossBorn_Monster["MapId"][4903][1] = {10369,118,359,26193}
	-- tBossBorn_Monster["MapId"][4903][2] = {10369,287,387,26194}
	-- tBossBorn_Monster["MapId"][4903][3] = {10369,270,555,26195}
	tBossBorn_Monster["MapId"][4903][1] = {10369,499,460,26196}
	-- tBossBorn_Monster["MapId"][4903][5] = {10369,611,603,26197}
	-- tBossBorn_Monster["MapId"][4903][6] = {10369,624,436,26198}
	-- tBossBorn_Monster["MapId"][4903][7] = {10369,472,245,26199}
	-- tBossBorn_Monster["MapId"][4903][8] = {10369,452,184,26200}
	
	tBossBorn_Monster["MapId"][4904] = {}
	-- tBossBorn_Monster["MapId"][4904][1] = {10370,269,117,26201}
	-- tBossBorn_Monster["MapId"][4904][2] = {10370,275,216,26202}
	-- tBossBorn_Monster["MapId"][4904][3] = {10370,200,346,26203}
	-- tBossBorn_Monster["MapId"][4904][4] = {10370,108,312,26204}
	tBossBorn_Monster["MapId"][4904][1] = {10370,211,383,26205}
	-- tBossBorn_Monster["MapId"][4904][6] = {10370,271,485,26206}
	-- tBossBorn_Monster["MapId"][4904][7] = {10370,403,543,26207}
	-- tBossBorn_Monster["MapId"][4904][8] = {10370,539,441,26208}

	tBossBorn_Monster["MapId"][4905] = {}
	-- tBossBorn_Monster["MapId"][4905][1] = {10371,171,385,26209}
	-- tBossBorn_Monster["MapId"][4905][2] = {10371,257,339,26210}
	-- tBossBorn_Monster["MapId"][4905][3] = {10371,337,182,26211}
	-- tBossBorn_Monster["MapId"][4905][4] = {10371,301,533,26212}
	tBossBorn_Monster["MapId"][4905][1] = {10371,422,595,26213}
	-- tBossBorn_Monster["MapId"][4905][6] = {10371,534,539,26214}
	-- tBossBorn_Monster["MapId"][4905][7] = {10371,596,427,26215}
	-- tBossBorn_Monster["MapId"][4905][8] = {10371,499,300,26216}

	tBossBorn_Monster["MapId"][4906] = {}
	-- tBossBorn_Monster["MapId"][4906][1] = {10372,246,348,26217}
	-- tBossBorn_Monster["MapId"][4906][2] = {10372,254,406,26218}
	-- tBossBorn_Monster["MapId"][4906][3] = {10372,389,529,26219}
	-- tBossBorn_Monster["MapId"][4906][4] = {10372,467,566,26220}
	tBossBorn_Monster["MapId"][4906][1] = {10372,550,409,26221}
	-- tBossBorn_Monster["MapId"][4906][6] = {10372,493,341,26222}
	-- tBossBorn_Monster["MapId"][4906][7] = {10372,280,237,26223}
	-- tBossBorn_Monster["MapId"][4906][8] = {10372,214,194,26224}
	
	
--大bos数据
-- 4907,'无天修罗
-- 4908,'烈焰巨魔
-- 4909,'雪蛛鬼母
-- 4910,'灭域邪龙
	tBossBorn_Monster["BigBossId"] = {}
	tBossBorn_Monster["BigBossId"][1] = 4907
	tBossBorn_Monster["BigBossId"][2] = 4908
	tBossBorn_Monster["BigBossId"][3] = 4909
	tBossBorn_Monster["BigBossId"][4] = 4910

	-- 大boss
	tBossBorn_Monster["MapId"][4907] = {}
	-- tBossBorn_Monster["MapId"][4907][1] = {10369,288,389,26225}
	-- tBossBorn_Monster["MapId"][4907][2] = {10369,614,435,26226}
	tBossBorn_Monster["MapId"][4907][1] = {10369,338,268,26227}
	-- tBossBorn_Monster["MapId"][4907][4] = {10369,510,277,26228}

	tBossBorn_Monster["MapId"][4908] = {}
	-- tBossBorn_Monster["MapId"][4908][1] = {10370,265,155,26229}
	-- tBossBorn_Monster["MapId"][4908][2] = {10370,187,359,26230}
	tBossBorn_Monster["MapId"][4908][1] = {10370,423,504,26231}
	-- tBossBorn_Monster["MapId"][4908][4] = {10370,527,423,26232}

	tBossBorn_Monster["MapId"][4909] = {}
	-- tBossBorn_Monster["MapId"][4909][1] = {10371,554,367,26233}
	-- tBossBorn_Monster["MapId"][4909][2] = {10371,439,586,26234}
	tBossBorn_Monster["MapId"][4909][1] = {10371,195,386,26235}
	-- tBossBorn_Monster["MapId"][4909][4] = {10371,315,165,26236}

	tBossBorn_Monster["MapId"][4910] = {}
	-- tBossBorn_Monster["MapId"][4910][1] = {10372,255,360,26237}
	-- tBossBorn_Monster["MapId"][4910][2] = {10372,415,550,26238} 
	tBossBorn_Monster["MapId"][4910][1] = {10372,531,386,26239}
	-- tBossBorn_Monster["MapId"][4910][4] = {10372,246,210,26240}

--------------------------------------------------逻辑部分--------------------------------------------------------	

--boss怪
function BossBorn_BossBorn()
	if  SpecialServer_ChkNoGiftServer() then 
		for i,v in pairs(tBossBorn_Monster["BossId"]) do
			local tMap = tBossBorn_Monster["MapId"][v]
			local nRandomIndex = math.random(1,#tMap)
			local tRandom = tMap[nRandomIndex]

			local nMapId = tRandom[1]
			local nPosX = tRandom[2]
			local nPosY = tRandom[3]
			local nGenId = tRandom[4]
		
			local nMonsterNum = Get_SysTempData(1,nMapId,v)
			if nMonsterNum <= 0 then
				Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,v)
			end

		end
	end 
end 

function BossBorn_BigBossBorn()
	if  SpecialServer_ChkNoGiftServer() then 
		for i,v in pairs(tBossBorn_Monster["BigBossId"]) do

			local tMap = tBossBorn_Monster["MapId"][v]
			local nRandomIndex = math.random(1,#tMap)
			local tRandom = tMap[nRandomIndex]

			local nMapId = tRandom[1]
			local nPosX = tRandom[2]
			local nPosY = tRandom[3]
			local nGenId = tRandom[4]
			
			local nMonsterNum = Get_SysTempData(1,nMapId,v)
			if nMonsterNum <= 0 then
				Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,v)
			end
			
		end
	end 

end 
-----------------------------------------------时间自检----------------------------------------------------------	
	
local tBossBorn_OnTime = {}
	--每30分钟刷boss怪
	tBossBorn_OnTime[1] = {}
	tBossBorn_OnTime[1]["Type"] = 3
	tBossBorn_OnTime[1]["TimeType"] = 5
	tBossBorn_OnTime[1]["Multiple"] = {}
	tBossBorn_OnTime[1]["Multiple"][1] = "29 29"
	tBossBorn_OnTime[1]["Multiple"][2] = "59 59"
	tBossBorn_OnTime[1]["Func"] = BossBorn_BossBorn
	table.insert(tSystemTime_InitialData,tBossBorn_OnTime[1])

	--每五小时刷大boss
	tBossBorn_OnTime[2] = {}
	tBossBorn_OnTime[2]["Type"] = 3
	tBossBorn_OnTime[2]["TimeType"] = 4
	tBossBorn_OnTime[2]["Time"] = "05:00 05:00"
	tBossBorn_OnTime[2]["Func"] = BossBorn_BigBossBorn
	table.insert(tSystemTime_InitialData,tBossBorn_OnTime[2])
	
	tBossBorn_OnTime[3] = {}
	tBossBorn_OnTime[3]["Type"] = 3
	tBossBorn_OnTime[3]["TimeType"] = 4
	tBossBorn_OnTime[3]["Time"] = "10:00 10:00"
	tBossBorn_OnTime[3]["Func"] = BossBorn_BigBossBorn
	table.insert(tSystemTime_InitialData,tBossBorn_OnTime[3])
	
	tBossBorn_OnTime[4] = {}
	tBossBorn_OnTime[4]["Type"] = 3
	tBossBorn_OnTime[4]["TimeType"] = 4
	tBossBorn_OnTime[4]["Time"] = "15:00 15:00"
	tBossBorn_OnTime[4]["Func"] = BossBorn_BigBossBorn
	table.insert(tSystemTime_InitialData,tBossBorn_OnTime[4])
	
	tBossBorn_OnTime[5] = {}
	tBossBorn_OnTime[5]["Type"] = 3
	tBossBorn_OnTime[5]["TimeType"] = 4
	tBossBorn_OnTime[5]["Time"] = "20:00 20:00"
	tBossBorn_OnTime[5]["Func"] = BossBorn_BigBossBorn
	table.insert(tSystemTime_InitialData,tBossBorn_OnTime[5])
	
	
	
	
	
	
	
	
	