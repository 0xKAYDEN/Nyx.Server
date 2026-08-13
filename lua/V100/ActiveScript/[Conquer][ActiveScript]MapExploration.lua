------------------------------------------------------------------------------------
--Name：        190427[简体征服][活动脚本]内嵌中英联合世界版图探索活动活动页面及线上部分（5.21）
--Creator:      耿力兀
--Created:     2019-04-27
------------------------------------------------------------------------------------
--任务需求：
--活动地址：http://wtop.zf.99.com/sjbt/client/
------------------------------------------------------------------------------------
--前缀：MapExploration_
--logID: 12001412
--stc掩码：194 39	背包信
--			194 40	探索值
--			195 04	记录上交龙珠数量
--			195 05	记录上交流星卷数量
--			195 06	记录上交究极通神丹数量
--			195 07	记录上交通神丹数量
--			195 08	记录上交免费强炼丹数量
--			195 09	记录上交魔武通玄丹数量
--			195 10	记录上交秘制免费修炼丹数量
--			195 11	记录上交强效护心丹数量
--			195 12	记录上交普通地灵宝石数量
--			195 13	记录上交普通天怒宝石数量
--			195 14	记录上交普通金麟宝石数量
--			195 15	记录上交普通青虹宝石数量
--			195 16	记录上交普通惊鸿宝石数量
--			195 17	记录上交普通龙恨宝石数量
--			195 18	记录上交普通凤吟宝石数量
--			195 19	记录上交普通紫霞宝石数量
--			195 20	记录上交普通明月宝石数量
--			195 21	记录上交普通玄元宝石数量
--			195 22	记录上交金币数量
--			195 23	记录首次登陆
--			195 45	记录活跃度
--			195 46	记录个人排位赛
--			195 47	记录正气令
--			195 48	记录国境任务
--			195 49	记录杀怪数量
--			195 50	记录杀怪999
--			195 51	记录骑马大赛
--			195 52	记录精英pk赛第一名
--			195 53	记录职业PK赛第一名
--			195 60	记录精英pk赛第2名
--			195 61	记录精英pk赛第3名
--			195 62	记录精英pk赛第4-8名

--global 53439 data0= 1是欧服
----------------------------------表配置部分--------------------------------------------
local tMapExploration_Data={}
	tMapExploration_Data["Begin"] = 9
	tMapExploration_Data["End"] = 18
	tMapExploration_Data["ChkBegin"] = 1
	tMapExploration_Data["ChkEnd"] = 19
	tMapExploration_Data["KillMonsterstc"] = 20		--杀999怪获加探索值
	tMapExploration_Data["KillMonster"] = 49		--每50只怪掩码+1
	tMapExploration_Data["MapId"] = 10250			--古神灵境
	tMapExploration_Data["Global"] = 53439
--网页
local tMapExploration_Web={}
	tMapExploration_Web["The_web"]="http://wtop.zf.99.com/sjbt/client/"


--Explore:增加的探索值
--day：表示该掩码隔天清空	
local tMapExploration_Reward = {}
	-- ===总探索值
	-- ===索引:tMapExploration_Reward["Amount"]
	-- ===
	tMapExploration_Reward["Amount"] = {}
	tMapExploration_Reward["Amount"]["LogId"] = 12001412
	tMapExploration_Reward["Amount"]["Event_Type"] = 194
	tMapExploration_Reward["Amount"]["Data_Type"] = 40


	tMapExploration_Reward[1] = {}
	-- ===记录上交龙珠数量
	-- ===索引:tMapExploration_Reward[1]
	-- ===删除: 1088000,1
	tMapExploration_Reward[1]["LogId"] = 12001412
	tMapExploration_Reward[1]["DeleteItem"] = {}
	tMapExploration_Reward[1]["DeleteItem"][1] = {}
	tMapExploration_Reward[1]["DeleteItem"][1]["Id"] = 1088000 -- 【库】DragonBall[属性:0]
	tMapExploration_Reward[1]["DeleteItem"][1]["ItemNum"] =1
	tMapExploration_Reward[1]["Event_Type"] = 195
	tMapExploration_Reward[1]["Data_Type"] = 4
	tMapExploration_Reward[1]["Explore"] = 60


	tMapExploration_Reward[2] = {}
	-- ===记录上交流星卷数量
	-- ===索引:tMapExploration_Reward[2]
	-- ===删除: 720027,1
	tMapExploration_Reward[2]["LogId"] = 12001412
	tMapExploration_Reward[2]["DeleteItem"] = {}
	tMapExploration_Reward[2]["DeleteItem"][1] = {}
	tMapExploration_Reward[2]["DeleteItem"][1]["Id"] = 720027 -- 【库】MeteorScroll[属性:0]
	tMapExploration_Reward[2]["DeleteItem"][1]["ItemNum"] =1
	tMapExploration_Reward[2]["Event_Type"] = 195
	tMapExploration_Reward[2]["Data_Type"] = 5
	tMapExploration_Reward[2]["Explore"] = 3


	tMapExploration_Reward[3] = {}
	-- ===记录上交究极通神丹数量
	-- ===索引:tMapExploration_Reward[3]
	-- ===删除: 3003126,1
	tMapExploration_Reward[3]["LogId"] = 12001412
	tMapExploration_Reward[3]["DeleteItem"] = {}
	tMapExploration_Reward[3]["DeleteItem"][1] = {}
	tMapExploration_Reward[3]["DeleteItem"][1]["Id"] = 3003126 -- 【库】SeniorTrainingPill[属性:0]
	tMapExploration_Reward[3]["DeleteItem"][1]["ItemNum"] =1
	tMapExploration_Reward[3]["Event_Type"] = 195
	tMapExploration_Reward[3]["Data_Type"] = 6
	tMapExploration_Reward[3]["Explore"] = 10


	tMapExploration_Reward[4] = {}
	-- ===记录上交通神丹数量
	-- ===索引:tMapExploration_Reward[4]
	-- ===删除: 3003125,1
	tMapExploration_Reward[4]["LogId"] = 12001412
	tMapExploration_Reward[4]["DeleteItem"] = {}
	tMapExploration_Reward[4]["DeleteItem"][1] = {}
	tMapExploration_Reward[4]["DeleteItem"][1]["Id"] = 3003125 -- 【库】SpecialTrainingPill[属性:0]
	tMapExploration_Reward[4]["DeleteItem"][1]["ItemNum"] =1
	tMapExploration_Reward[4]["Event_Type"] = 195
	tMapExploration_Reward[4]["Data_Type"] = 7
	tMapExploration_Reward[4]["Explore"] = 1


	tMapExploration_Reward[5] = {}
	-- ===记录上交免费强炼丹数量
	-- ===索引:tMapExploration_Reward[5]
	-- ===删除: 3003124,1
	tMapExploration_Reward[5]["LogId"] = 12001412
	tMapExploration_Reward[5]["DeleteItem"] = {}
	tMapExploration_Reward[5]["DeleteItem"][1] = {}
	tMapExploration_Reward[5]["DeleteItem"][1]["Id"] = 3003124 -- 【库】FavoredTrainingPill[属性:0]
	tMapExploration_Reward[5]["DeleteItem"][1]["ItemNum"] =1
	tMapExploration_Reward[5]["Event_Type"] = 195
	tMapExploration_Reward[5]["Data_Type"] = 8
	tMapExploration_Reward[5]["Explore"] = 1


	tMapExploration_Reward[6] = {}
	-- ===记录上交魔武通玄丹数量
	-- ===索引:tMapExploration_Reward[6]
	-- ===删除: 3303373,1
	tMapExploration_Reward[6]["LogId"] = 12001412
	tMapExploration_Reward[6]["DeleteItem"] = {}
	tMapExploration_Reward[6]["DeleteItem"][1] = {}
	tMapExploration_Reward[6]["DeleteItem"][1]["Id"] = 3303373 -- 【库】KnowledgePill[属性:9]
	tMapExploration_Reward[6]["DeleteItem"][1]["ItemNum"] =1
	tMapExploration_Reward[6]["Event_Type"] = 195
	tMapExploration_Reward[6]["Data_Type"] = 9
	tMapExploration_Reward[6]["Explore"] = 35


	tMapExploration_Reward[7] = {}
	-- ===记录上交秘制免费修炼丹数量
	-- ===索引:tMapExploration_Reward[7]
	-- ===删除: 3002926,1
	tMapExploration_Reward[7]["LogId"] = 12001412
	tMapExploration_Reward[7]["DeleteItem"] = {}
	tMapExploration_Reward[7]["DeleteItem"][1] = {}
	tMapExploration_Reward[7]["DeleteItem"][1]["Id"] = 3002926 -- 【库】FreeTrainingPill[属性:11]
	tMapExploration_Reward[7]["DeleteItem"][1]["ItemNum"] =1
	tMapExploration_Reward[7]["Event_Type"] = 195
	tMapExploration_Reward[7]["Data_Type"] = 10
	tMapExploration_Reward[7]["Explore"] = 20


	tMapExploration_Reward[8] = {}
	-- ===记录上交强效护心丹数量
	-- ===索引:tMapExploration_Reward[8]
	-- ===删除: 3002030,1
	tMapExploration_Reward[8]["LogId"] = 12001412
	tMapExploration_Reward[8]["DeleteItem"] = {}
	tMapExploration_Reward[8]["DeleteItem"][1] = {}
	tMapExploration_Reward[8]["DeleteItem"][1]["Id"] = 3002030 -- 【库】SuperProtectionPill[属性:9]
	tMapExploration_Reward[8]["DeleteItem"][1]["ItemNum"] =1
	tMapExploration_Reward[8]["Event_Type"] = 195
	tMapExploration_Reward[8]["Data_Type"] = 11
	tMapExploration_Reward[8]["Explore"] = 1


	tMapExploration_Reward[9] = {}
	-- ===记录上交普通地灵宝石数量
	-- ===索引:tMapExploration_Reward[9]
	-- ===删除: 700121,1
	tMapExploration_Reward[9]["LogId"] = 12001412
	tMapExploration_Reward[9]["DeleteItem"] = {}
	tMapExploration_Reward[9]["DeleteItem"][1] = {}
	tMapExploration_Reward[9]["DeleteItem"][1]["Id"] = 700121 -- 【库】GloryGem[属性:0]
	tMapExploration_Reward[9]["DeleteItem"][1]["ItemNum"] =1
	tMapExploration_Reward[9]["Event_Type"] = 195
	tMapExploration_Reward[9]["Data_Type"] = 12
	tMapExploration_Reward[9]["Explore"] = 2


	tMapExploration_Reward[10] = {}
	-- ===记录上交普通天怒宝石数量
	-- ===索引:tMapExploration_Reward[10]
	-- ===删除: 700101,1
	tMapExploration_Reward[10]["LogId"] = 12001412
	tMapExploration_Reward[10]["DeleteItem"] = {}
	tMapExploration_Reward[10]["DeleteItem"][1] = {}
	tMapExploration_Reward[10]["DeleteItem"][1]["Id"] = 700101 -- 【库】ThunderGem[属性:0]
	tMapExploration_Reward[10]["DeleteItem"][1]["ItemNum"] =1
	tMapExploration_Reward[10]["Event_Type"] = 195
	tMapExploration_Reward[10]["Data_Type"] = 13
	tMapExploration_Reward[10]["Explore"] = 2


	tMapExploration_Reward[11] = {}
	-- ===记录上交普通金麟宝石数量
	-- ===索引:tMapExploration_Reward[11]
	-- ===删除: 700041,1
	tMapExploration_Reward[11]["LogId"] = 12001412
	tMapExploration_Reward[11]["DeleteItem"] = {}
	tMapExploration_Reward[11]["DeleteItem"][1] = {}
	tMapExploration_Reward[11]["DeleteItem"][1]["Id"] = 700041 -- 【库】KylinGem[属性:0]
	tMapExploration_Reward[11]["DeleteItem"][1]["ItemNum"] =1
	tMapExploration_Reward[11]["Event_Type"] = 195
	tMapExploration_Reward[11]["Data_Type"] = 14
	tMapExploration_Reward[11]["Explore"] = 2


	tMapExploration_Reward[12] = {}
	-- ===记录上交普通青虹宝石数量
	-- ===索引:tMapExploration_Reward[12]
	-- ===删除: 700031,1
	tMapExploration_Reward[12]["LogId"] = 12001412
	tMapExploration_Reward[12]["DeleteItem"] = {}
	tMapExploration_Reward[12]["DeleteItem"][1] = {}
	tMapExploration_Reward[12]["DeleteItem"][1]["Id"] = 700031 -- 【库】RainbowGem[属性:0]
	tMapExploration_Reward[12]["DeleteItem"][1]["ItemNum"] =1
	tMapExploration_Reward[12]["Event_Type"] = 195
	tMapExploration_Reward[12]["Data_Type"] = 15
	tMapExploration_Reward[12]["Explore"] = 2


	tMapExploration_Reward[13] = {}
	-- ===记录上交普通惊鸿宝石数量
	-- ===索引:tMapExploration_Reward[13]
	-- ===删除: 700021,1
	tMapExploration_Reward[13]["LogId"] = 12001412
	tMapExploration_Reward[13]["DeleteItem"] = {}
	tMapExploration_Reward[13]["DeleteItem"][1] = {}
	tMapExploration_Reward[13]["DeleteItem"][1]["Id"] = 700021 -- 【库】FuryGem[属性:0]
	tMapExploration_Reward[13]["DeleteItem"][1]["ItemNum"] =1
	tMapExploration_Reward[13]["Event_Type"] = 195
	tMapExploration_Reward[13]["Data_Type"] = 16
	tMapExploration_Reward[13]["Explore"] = 2


	tMapExploration_Reward[14] = {}
	-- ===记录上交普通龙恨宝石数量
	-- ===索引:tMapExploration_Reward[14]
	-- ===删除: 700011,1
	tMapExploration_Reward[14]["LogId"] = 12001412
	tMapExploration_Reward[14]["DeleteItem"] = {}
	tMapExploration_Reward[14]["DeleteItem"][1] = {}
	tMapExploration_Reward[14]["DeleteItem"][1]["Id"] = 700011 -- 【库】DragonGem[属性:0]
	tMapExploration_Reward[14]["DeleteItem"][1]["ItemNum"] =1
	tMapExploration_Reward[14]["Event_Type"] = 195
	tMapExploration_Reward[14]["Data_Type"] = 17
	tMapExploration_Reward[14]["Explore"] = 2


	tMapExploration_Reward[15] = {}
	-- ===记录上交普通凤吟宝石数量
	-- ===索引:tMapExploration_Reward[15]
	-- ===删除: 700001,1
	tMapExploration_Reward[15]["LogId"] = 12001412
	tMapExploration_Reward[15]["DeleteItem"] = {}
	tMapExploration_Reward[15]["DeleteItem"][1] = {}
	tMapExploration_Reward[15]["DeleteItem"][1]["Id"] = 700001 -- 【库】PhoenixGem[属性:0]
	tMapExploration_Reward[15]["DeleteItem"][1]["ItemNum"] =1
	tMapExploration_Reward[15]["Event_Type"] = 195
	tMapExploration_Reward[15]["Data_Type"] = 18
	tMapExploration_Reward[15]["Explore"] = 2


	tMapExploration_Reward[16] = {}
	-- ===记录上交普通紫霞宝石数量
	-- ===索引:tMapExploration_Reward[16]
	-- ===删除: 700051,1
	tMapExploration_Reward[16]["LogId"] = 12001412
	tMapExploration_Reward[16]["DeleteItem"] = {}
	tMapExploration_Reward[16]["DeleteItem"][1] = {}
	tMapExploration_Reward[16]["DeleteItem"][1]["Id"] = 700051 -- 【库】VioletGem[属性:0]
	tMapExploration_Reward[16]["DeleteItem"][1]["ItemNum"] =1
	tMapExploration_Reward[16]["Event_Type"] = 195
	tMapExploration_Reward[16]["Data_Type"] = 19
	tMapExploration_Reward[16]["Explore"] = 2


	tMapExploration_Reward[17] = {}
	-- ===记录上交普通明月宝石数量
	-- ===索引:tMapExploration_Reward[17]
	-- ===删除: 700061,1
	tMapExploration_Reward[17]["LogId"] = 12001412
	tMapExploration_Reward[17]["DeleteItem"] = {}
	tMapExploration_Reward[17]["DeleteItem"][1] = {}
	tMapExploration_Reward[17]["DeleteItem"][1]["Id"] = 700061 -- 【库】MoonGem[属性:0]
	tMapExploration_Reward[17]["DeleteItem"][1]["ItemNum"] =1
	tMapExploration_Reward[17]["Event_Type"] = 195
	tMapExploration_Reward[17]["Data_Type"] = 20
	tMapExploration_Reward[17]["Explore"] = 2


	tMapExploration_Reward[18] = {}
	-- ===记录上交普通玄元宝石数量
	-- ===索引:tMapExploration_Reward[18]
	-- ===删除: 700071,1
	tMapExploration_Reward[18]["LogId"] = 12001412
	tMapExploration_Reward[18]["DeleteItem"] = {}
	tMapExploration_Reward[18]["DeleteItem"][1] = {}
	tMapExploration_Reward[18]["DeleteItem"][1]["Id"] = 700071 -- 【库】TortoiseGem[属性:0]
	tMapExploration_Reward[18]["DeleteItem"][1]["ItemNum"] =1
	tMapExploration_Reward[18]["Event_Type"] = 195
	tMapExploration_Reward[18]["Data_Type"] = 21
	tMapExploration_Reward[18]["Explore"] = 2


	tMapExploration_Reward[19] = {}
	-- ===记录上交金币数量（10万1次）
	-- ===索引:tMapExploration_Reward[19]
	tMapExploration_Reward[19]["RewardNoNeedTip"] = 1 
	tMapExploration_Reward[19]["LogId"] = 12001412
	tMapExploration_Reward[19]["Event_Type"] = 195
	tMapExploration_Reward[19]["Data_Type"] = 22
	tMapExploration_Reward[19]["Explore"] = 2
	tMapExploration_Reward[19]["RewardMoney"] = {}
	tMapExploration_Reward[19]["RewardMoney"]["Value"] = -100000 -- 金币, 【需求】


	tMapExploration_Reward[20] = {}
	-- ===记录首次登陆
	-- ===索引:tMapExploration_Reward[20]
	tMapExploration_Reward[20]["LogId"] = 12001412
	tMapExploration_Reward[20]["Event_Type"] = 195
	tMapExploration_Reward[20]["Data_Type"] = 23
	tMapExploration_Reward[20]["Explore"] = 10
	tMapExploration_Reward[20]["Day"] = 1


	tMapExploration_Reward[21] = {}
	-- ===记录活跃度
	-- ===索引:tMapExploration_Reward[21]
	tMapExploration_Reward[21]["LogId"] = 12001412
	tMapExploration_Reward[21]["Event_Type"] = 195
	tMapExploration_Reward[21]["Data_Type"] = 45
	tMapExploration_Reward[21]["Explore"] = 10
	tMapExploration_Reward[21]["Day"] = 1


	tMapExploration_Reward[22] = {}
	-- ===记录个人排位赛
	-- ===索引:tMapExploration_Reward[22]
	tMapExploration_Reward[22]["LogId"] = 12001412
	tMapExploration_Reward[22]["Event_Type"] = 195
	tMapExploration_Reward[22]["Data_Type"] = 46
	tMapExploration_Reward[22]["Explore"] = 20
	tMapExploration_Reward[22]["Day"] = 1


	tMapExploration_Reward[23] = {}
	-- ===记录正气令
	-- ===索引:tMapExploration_Reward[23]
	tMapExploration_Reward[23]["LogId"] = 12001412
	tMapExploration_Reward[23]["Event_Type"] = 195
	tMapExploration_Reward[23]["Data_Type"] = 47
	tMapExploration_Reward[23]["Explore"] = 20
	tMapExploration_Reward[23]["Day"] = 1


	tMapExploration_Reward[24] = {}
	-- ===记录国境任务
	-- ===索引:tMapExploration_Reward[24]
	tMapExploration_Reward[24]["LogId"] = 12001412
	tMapExploration_Reward[24]["Event_Type"] = 195
	tMapExploration_Reward[24]["Data_Type"] = 48
	tMapExploration_Reward[24]["Explore"] = 20
	tMapExploration_Reward[24]["Day"] = 1


	tMapExploration_Reward[25] = {}
	-- ===记录杀怪数量
	-- ===索引:tMapExploration_Reward[25]
	tMapExploration_Reward[25]["LogId"] = 12001412
	tMapExploration_Reward[25]["Event_Type"] = 195
	tMapExploration_Reward[25]["Data_Type"] = 49
	tMapExploration_Reward[25]["Day"] = 1


	tMapExploration_Reward[26] = {}
	-- ===记录杀怪数量999
	-- ===索引:tMapExploration_Reward[26]
	tMapExploration_Reward[26]["LogId"] = 12001412
	tMapExploration_Reward[26]["Event_Type"] = 195
	tMapExploration_Reward[26]["Data_Type"] = 50
	tMapExploration_Reward[26]["Explore"] = 50
	tMapExploration_Reward[26]["Day"] = 1


	tMapExploration_Reward[27] = {}
	-- ===记录骑马大赛
	-- ===索引:tMapExploration_Reward[27]
	tMapExploration_Reward[27]["LogId"] = 12001412
	tMapExploration_Reward[27]["Event_Type"] = 195
	tMapExploration_Reward[27]["Data_Type"] = 51
	tMapExploration_Reward[27]["Explore"] = 20
	tMapExploration_Reward[27]["Day"] = 1


	tMapExploration_Reward[28] = {}
	-- ===记录精英pk赛第1名
	-- ===索引:tMapExploration_Reward[28]
	tMapExploration_Reward[28]["LogId"] = 12001412
	tMapExploration_Reward[28]["Event_Type"] = 195
	tMapExploration_Reward[28]["Data_Type"] = 52
	tMapExploration_Reward[28]["Explore"] = 200
	tMapExploration_Reward[28]["Day"] = 1


	tMapExploration_Reward[29] = {}
	-- ===记录职业PK赛第一名
	-- ===索引:tMapExploration_Reward[29]
	tMapExploration_Reward[29]["LogId"] = 12001412
	tMapExploration_Reward[29]["Event_Type"] = 195
	tMapExploration_Reward[29]["Data_Type"] = 53
	tMapExploration_Reward[29]["Explore"] = 200
	tMapExploration_Reward[29]["Day"] = 1


	tMapExploration_Reward[30] = {}
	-- ===记录精英pk赛第2名
	-- ===索引:tMapExploration_Reward[30]
	tMapExploration_Reward[30]["LogId"] = 12001412
	tMapExploration_Reward[30]["Event_Type"] = 195
	tMapExploration_Reward[30]["Data_Type"] = 60
	tMapExploration_Reward[30]["Explore"] = 150
	tMapExploration_Reward[30]["Day"] = 1


	tMapExploration_Reward[31] = {}
	-- ===记录精英pk赛第3名
	-- ===索引:tMapExploration_Reward[31]
	tMapExploration_Reward[31]["LogId"] = 12001412
	tMapExploration_Reward[31]["Event_Type"] = 195
	tMapExploration_Reward[31]["Data_Type"] = 61
	tMapExploration_Reward[31]["Explore"] = 100
	tMapExploration_Reward[31]["Day"] = 1


	tMapExploration_Reward[32] = {}
	-- ===记录精英pk赛第4-8名
	-- ===索引:tMapExploration_Reward[32]
	tMapExploration_Reward[32]["LogId"] = 12001412
	tMapExploration_Reward[32]["Event_Type"] = 195
	tMapExploration_Reward[32]["Data_Type"] = 62
	tMapExploration_Reward[32]["Explore"] = 50
	tMapExploration_Reward[32]["Day"] = 1
	
local tMapExploration_Log = {}
	tMapExploration_Log["UpItem"] = "0,0,%d,%d,12001412,0,0,0"
	tMapExploration_Log["AddExplore"] = "0,0,%d,%d,%d,0,0,0"
	
local tMapExploration_KillData = {}
----------------------------------逻辑部分----------------------------------------------时间判断
function MapExploration_ChkTime()
	local nData0 = Get_SysDynaGlobalData0(tMapExploration_Data["Global"])
	--美服时间
	local sActivityTime = tActivityTime["MapExploration"]["AMActivityTime"]
	if nData0 ==1 then
		--欧服时间
		sActivityTime = tActivityTime["MapExploration"]["EUActivityTime"]
	end 
	
	--时间判断
	if not Sys_ChkFullTime(sActivityTime) then
		return true
	end
	return false
end 

--打开内嵌网页
function MapExploration_OpenWeb(nNpcId)
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["MapExploration"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return 
	end
	
	local nUserId = Get_UserId()
	User_SendWebDialog(tMapExploration_Web["The_web"],nUserId)
end 

--活动行为加掩码
function MapExploration_AddStc(nData,nUserId,nInput)
	--时间判断
	if MapExploration_ChkTime() then 
		return 
	end 
	local nActiveType = tonumber(nData)
	--行为掩码
	local nEvent = tMapExploration_Reward[nActiveType]["Event_Type"]
	local nType = tMapExploration_Reward[nActiveType]["Data_Type"]
	local nExplore = tMapExploration_Reward[nActiveType]["Explore"]
	if nInput~=nil then 
		nExplore = nExplore*nInput
	end 
	
	--有day字段为游戏行为
	if tMapExploration_Reward[nActiveType]["Day"] ~=nil then 
		--隔天
		if not Task_StcInterval(nEvent,nType,1,4,nUserId) then
			return
		end
		
	else 
		--无day字段为上交物品
		--如果是金币
		if nActiveType ==19 then 
			local nMoney = tMapExploration_Reward[19]["RewardMoney"]["Value"]
			if not User_CanPutMoney2Bag(nMoney) then
				Sys_MsgBox(tMapExploration_Text["NoMoney"])
				return
			else
				if RewardTemplate_UseItem(tMapExploration_Reward[19]) then 
					--log
					Sys_SaveActionFestivalLog(string.format(tMapExploration_Log["UpItem"],nMoney,nMoney))
					--提交成功
					Sys_MsgBox(string.format(tMapExploration_Text["Succeed"],nExplore))
				end 
			end
		else 
			
			--物品信息
			local tReward = tMapExploration_Reward[nActiveType]
			local nItemId = tReward["DeleteItem"][1]["Id"]
			local nItemNum = tReward["DeleteItem"][1]["ItemNum"]
			local sItemName = Get_ItemtypeName(nItemId)
			if nInput~=nil then 
				nItemNum = nInput
				tReward["DeleteItem"][1]["ItemNum"] = nInput
			end 
		
			-- 物品判断
			if Item_ChkMulItem(nItemId,nItemId,nItemNum) then
				if RewardTemplate_UseItem(tReward) then
					--log
					Sys_SaveActionFestivalLog(string.format(tMapExploration_Log["UpItem"],nItemId,nItemNum))
					--提交成功
					Sys_MsgBox(string.format(tMapExploration_Text["Succeed"],nExplore))
				else
					--缺少物品
					Sys_MsgBox(string.format(tMapExploration_Text["NoItem"],sItemName))
					return 
				end 
			else
				--缺少物品
				Sys_MsgBox(string.format(tMapExploration_Text["NoItem"],sItemName))
				return 
			end
		end
	end
	
	--加掩码
	if nInput~=nil then 
		Task_AddStatistic(nEvent,nType,nInput,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	else 
		Task_AddStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end 
	--增加探索值
	MapExploration_AddExplore(nExplore,nUserId)
	if tMapExploration_Reward[nActiveType]["Day"] ~=nil then 
		User_TalkChannel2005(string.format(tMapExploration_Text[nActiveType],nExplore),nUserId)
	end 
end 


--增加探索值
function MapExploration_AddExplore(nExplore,nUserId)
	--探索度掩码
	local nExploreEvent = tMapExploration_Reward["Amount"]["Event_Type"]
	local nExploreType = tMapExploration_Reward["Amount"]["Data_Type"]
	--log
	Sys_SaveActionFestivalLog(string.format(tMapExploration_Log["AddExplore"],nExploreEvent,nExploreType,nExplore),nUserId)
	--加探索值掩码
	Task_AddStatistic(nExploreEvent,nExploreType,nExplore,1,nUserId)
	Task_SetStcTimestamp(nExploreEvent, nExploreType,0,nUserId)
end 


--练功道具自定义数量提交
function MapExploration_HandItem(nNpcId,nData)
	--时间判断
	if MapExploration_ChkTime() then 
		return 
	end 
	Sys_DialogText(tMapExploration_Text[23986]["Text151"])
	Sys_DialogOptEdit(tMapExploration_Text[23986]["Option151"],5,"MapExploration_detection</N>23986</N>"..nData)
	Sys_DialogFace(23986)
	Sys_DialogEnd()
	
end 

--判断输入格式
function MapExploration_detection(nNpcId,nData)
	local nUserId = Get_UserId()
	local nInput = tonumber(Get_SysAcceptStr())
	--判断是否输入数字
	if type(nInput) == "number" and nInput>0 then 
		--判断是否超出上限
		if nInput > 99999  then
			Sys_MsgBox(tMapExploration_Text["Error"])
			return 
		else
			local tReward = tMapExploration_Reward[nData]
			local nItemId = tReward["DeleteItem"][1]["Id"]
			local sItemName = Get_ItemtypeName(nItemId)
			--跳转2次确认
			tNpcGossip[23986]["OptionFunc161"] = "MapExploration_AddStc</N>"..nData.."</N>"..nUserId.."</N>"..nInput
			tNpcGossip[23986]["Text161"] = string.format(tMapExploration_Text[23986]["Text161"],nInput,sItemName)
			LinkNpcGossipFunc_New(nNpcId,"1-6")
		end 
	else
		Sys_MsgBox(tMapExploration_Text["Error"])
	end 
end

--检测是否有宝石
function MapExploration_ChkGem()
	local nIndex = 0
	for nIndex = tMapExploration_Data["Begin"],tMapExploration_Data["End"] do
		local nItemId = tMapExploration_Reward[nIndex]["DeleteItem"][1]["Id"]
		if Item_ChkItem(nItemId) then 
			return true 
		end 
	end 
	return false 
end 

--检测是否有物品
function MapExploration_ChkAllItem()
	tNpcGossip[23986]["Text141"] = tMapExploration_Text[23986]["Text141"]
	for nIndex = tMapExploration_Data["ChkBegin"],tMapExploration_Data["ChkEnd"] do
		--物品
		if nIndex ~=19  then
			local nItemId = tMapExploration_Reward[nIndex]["DeleteItem"][1]["Id"]
			if Item_ChkItem(nItemId) then 
				return
			end 
		else 
			local nMoney = tMapExploration_Reward[19]["RewardMoney"]["Value"]
			if User_CanPutMoney2Bag(nMoney) then
				return
			end 
		end 
	end 
	--没有可上交的物品
	tNpcGossip[23986]["Text141"] = tMapExploration_Text[23986]["NoItem"]
end 

--杀怪计数
function MapExploration_KillMonster(nMonsterId)
	
	local nUserId = Get_UserId()
	local nMapId =  Get_UserMapId()
	--非激情服判断地图是否为古神灵境
	if not SpecialServer_ChkNoGiftServer() then
		if nMapId ~= tMapExploration_Data["MapId"] then 
			return 
		end 
	end
	
	--时间判断
	if MapExploration_ChkTime() then 
		return 
	end 
	
	--判断今日是否已经增加
	local nEvent = tMapExploration_Reward[26]["Event_Type"]
	local nType = tMapExploration_Reward[26]["Data_Type"] 
	
	--隔天
	-- if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		-- Task_SetStatistic(nEvent,nType,0,1,nUserId)
		-- Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	-- end
	
	--今日已加
	-- if Task_ChkStcValue(nEvent, nType, ">", 0) then
		-- return
	-- end
	
	--杀怪计数掩码
	local nKillEvent = tMapExploration_Reward[25]["Event_Type"]
	local nKillType = tMapExploration_Reward[25]["Data_Type"] 
	-- 隔天重置
	if Task_StcInterval(nKillEvent,nKillType,1,4) then
		Task_SetStatistic(nKillEvent,nKillType,0,1)
		Task_SetStcTimestamp(nKillEvent,nKillType,0)
	end
	--击杀超过999只加进度
	local nData = Get_UserStatisticValue(nKillEvent,nKillType)
	if nData >= tMapExploration_Data["KillMonsterstc"] then 
		MapExploration_AddStc(26,nUserId)
		return
	end 
	
	--记录玩家杀怪数量
	if tMapExploration_KillData[nUserId]== nil then 
		tMapExploration_KillData[nUserId] = 0
	end 
	tMapExploration_KillData[nUserId] = tMapExploration_KillData[nUserId]+1		

	--小于50只
	if tMapExploration_KillData[nUserId] <= tMapExploration_Data["KillMonster"] then 
		return 
	end 
	
	--每杀怪50只加掩码
	Task_AddStatistic(nKillEvent,nKillType,1,1)
	Task_SetStcTimestamp(nKillEvent,nKillType,0)
	--清空击杀数量
	tMapExploration_KillData[nUserId] = 0
end 

--首次登陆
function MapExploration_Login()
	--时间判断
	if MapExploration_ChkTime() then 
		return 
	end 
	--内嵌世界版图探索活动
	local nUserId = Get_UserId()
	MapExploration_AddStc(20,nUserId)
end 

 
----------------------------------NPC部分---------------------------------------------
tNpcFace[6285] = 4
tNpcGossip[23986]= tNpcGossip[23986] or DefaultNpc:new{}
tNpcGossip[23986]["OptionHidden"] = 1
tNpcGossip[23986]["DialogueText"] = tMapExploration_Text[23986]
--活动前
tNpcGossip[23986]["Text1-1"] = {111,112,113,114}
tNpcGossip[23986]["tOption1-1"] = {111}
tNpcGossip[23986]["ChkFunc1-1"]= function()
	tNpcGossip[23986]["Text1-1"] = {111,112,113}
	local nData0 = Get_SysDynaGlobalData0(tMapExploration_Data["Global"])
	if nData0 ==1 then
		--欧服
		tNpcGossip[23986]["Text1-1"] = {111,112,114}
	end 
	
	return CommonFunc_GetBeforeActivityTime(tActivityTime["MapExploration"]["ActivityTime"])
end

--活动后
tNpcGossip[23986]["Text1-2"] = {111,121}
tNpcGossip[23986]["tOption1-2"] = {121}
tNpcGossip[23986]["ChkFunc1-2"]= function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["MapExploration"]["ActivityTime"])
end

--活动中
tNpcGossip[23986]["Text1-3"] = {131,132,133,134}
tNpcGossip[23986]["tOption1-3"] = {131,132}
tNpcGossip[23986]["ChkFunc1-3"]= function()
	tNpcGossip[23986]["Text1-3"] = {131,132,133}
	local nData0 = Get_SysDynaGlobalData0(tMapExploration_Data["Global"])
	if nData0 ==1 then
		--欧服
		tNpcGossip[23986]["Text1-3"] = {131,132,134}
	end 
	MapExploration_ChkAllItem()
	return Sys_ChkFullTime(tActivityTime["MapExploration"]["ActivityTime"])
end

tNpcGossip[23986]["OptionFunc131"] = "MapExploration_OpenWeb</N>23986"
tNpcGossip[23986]["OptionPoint132"] = "1-4"

--预存天石二次确认
tNpcGossip[23986]["Text1-6"] = {161}
tNpcGossip[23986]["tOption1-6"] = {161,162}


--上交物品
tNpcGossip[23986]["Text1-4"] = {141}
tNpcGossip[23986]["nPageNum"] = 12
tNpcGossip[23986]["tOption1-4"] = {141,142,143,144,145,146,147,148,149,1419}
tNpcGossip[23986]["ChkFunc1-4"]= function()
	return Sys_ChkFullTime(tActivityTime["MapExploration"]["ActivityTime"])
end
tNpcGossip[23986]["OptionFunc141"] = "MapExploration_AddStc</N>1"
tNpcGossip[23986]["OptionChkFunc141"] = function ()
	return Item_ChkItem(tMapExploration_Reward[1]["DeleteItem"][1]["Id"])
end
tNpcGossip[23986]["OptionFunc142"] = "MapExploration_AddStc</N>2"
tNpcGossip[23986]["OptionChkFunc142"] = function ()
	return Item_ChkItem(tMapExploration_Reward[2]["DeleteItem"][1]["Id"])
end
tNpcGossip[23986]["OptionFunc143"] = "MapExploration_HandItem</N>23986</N>3"
tNpcGossip[23986]["OptionChkFunc143"] = function ()
	return Item_ChkItem(tMapExploration_Reward[3]["DeleteItem"][1]["Id"])
end
tNpcGossip[23986]["OptionFunc144"] = "MapExploration_HandItem</N>23986</N>4"
tNpcGossip[23986]["OptionChkFunc144"] = function ()
	return Item_ChkItem(tMapExploration_Reward[4]["DeleteItem"][1]["Id"])
end
tNpcGossip[23986]["OptionFunc145"] = "MapExploration_HandItem</N>23986</N>5"
tNpcGossip[23986]["OptionChkFunc145"] = function ()
	return Item_ChkItem(tMapExploration_Reward[5]["DeleteItem"][1]["Id"])
end
tNpcGossip[23986]["OptionFunc146"] = "MapExploration_HandItem</N>23986</N>6"
tNpcGossip[23986]["OptionChkFunc146"] = function ()
	return Item_ChkItem(tMapExploration_Reward[6]["DeleteItem"][1]["Id"])
end
tNpcGossip[23986]["OptionFunc147"] = "MapExploration_HandItem</N>23986</N>7"
tNpcGossip[23986]["OptionChkFunc147"] = function ()
	return Item_ChkItem(tMapExploration_Reward[7]["DeleteItem"][1]["Id"])
end
tNpcGossip[23986]["OptionFunc148"] = "MapExploration_HandItem</N>23986</N>8"
tNpcGossip[23986]["OptionChkFunc148"] = function ()
	return Item_ChkItem(tMapExploration_Reward[8]["DeleteItem"][1]["Id"])
end
tNpcGossip[23986]["OptionFunc1419"] = "MapExploration_AddStc</N>19"
tNpcGossip[23986]["OptionChkFunc1419"] = function ()
	return User_CanPutMoney2Bag(tMapExploration_Reward[19]["RewardMoney"]["Value"])
end
tNpcGossip[23986]["OptionPoint149"] = "1-5"
tNpcGossip[23986]["OptionChkFunc149"] = function ()
	return MapExploration_ChkGem()
end


--上交宝石
tNpcGossip[23986]["Text1-5"] = {141}
tNpcGossip[23986]["tOption1-5"] = {159,1510,1511,1512,1513,1514,1515,1516,1517,1518}
tNpcGossip[23986]["ChkFunc1-5"]= function()
	return Sys_ChkFullTime(tActivityTime["MapExploration"]["ActivityTime"])
end
tNpcGossip[23986]["OptionFunc159"] = "MapExploration_AddStc</N>9"
tNpcGossip[23986]["OptionChkFunc159"] = function ()
	return Item_ChkItem(tMapExploration_Reward[9]["DeleteItem"][1]["Id"])
end
tNpcGossip[23986]["OptionFunc1510"] = "MapExploration_AddStc</N>10"
tNpcGossip[23986]["OptionChkFunc1510"] = function ()
	return Item_ChkItem(tMapExploration_Reward[10]["DeleteItem"][1]["Id"])
end
tNpcGossip[23986]["OptionFunc1511"] = "MapExploration_AddStc</N>11"
tNpcGossip[23986]["OptionChkFunc1511"] = function ()
	return Item_ChkItem(tMapExploration_Reward[11]["DeleteItem"][1]["Id"])
end
tNpcGossip[23986]["OptionFunc1512"] = "MapExploration_AddStc</N>12"
tNpcGossip[23986]["OptionChkFunc1512"] = function ()
	return Item_ChkItem(tMapExploration_Reward[12]["DeleteItem"][1]["Id"])
end
tNpcGossip[23986]["OptionFunc1513"] = "MapExploration_AddStc</N>13"
tNpcGossip[23986]["OptionChkFunc1513"] = function ()
	return Item_ChkItem(tMapExploration_Reward[13]["DeleteItem"][1]["Id"])
end
tNpcGossip[23986]["OptionFunc1514"] = "MapExploration_AddStc</N>14"
tNpcGossip[23986]["OptionChkFunc1514"] = function ()
	return Item_ChkItem(tMapExploration_Reward[14]["DeleteItem"][1]["Id"])
end
tNpcGossip[23986]["OptionFunc1515"] = "MapExploration_AddStc</N>15"
tNpcGossip[23986]["OptionChkFunc1515"] = function ()
	return Item_ChkItem(tMapExploration_Reward[15]["DeleteItem"][1]["Id"])
end
tNpcGossip[23986]["OptionFunc1516"] = "MapExploration_AddStc</N>16"
tNpcGossip[23986]["OptionChkFunc1516"] = function ()
	return Item_ChkItem(tMapExploration_Reward[16]["DeleteItem"][1]["Id"])
end
tNpcGossip[23986]["OptionFunc1517"] = "MapExploration_AddStc</N>17"
tNpcGossip[23986]["OptionChkFunc1517"] = function ()
	return Item_ChkItem(tMapExploration_Reward[17]["DeleteItem"][1]["Id"])
end
tNpcGossip[23986]["OptionFunc1518"] = "MapExploration_AddStc</N>18"
tNpcGossip[23986]["OptionChkFunc1518"] = function ()
	return Item_ChkItem(tMapExploration_Reward[18]["DeleteItem"][1]["Id"])
end


---------------------------------怪物部分---------------------------------------------
local tMapExploration_KillMonster = {}
	tMapExploration_KillMonster["ActivityTime"] = tActivityTime["MapExploration"]["ActivityTime"]
	tMapExploration_KillMonster["Function"]= MapExploration_KillMonster
	tMapExploration_KillMonster["MonsterId"] = {3973,3974,3975,4709,4710,4711,4712,4713,4720,8420}
	table.insert(tMonsterDrop_AreaLoad,tMapExploration_KillMonster)

--激情服怪物掉落
local tMapExploration_KillMonster_NoGift = {}
	tMapExploration_KillMonster_NoGift["ActivityTime"] = tActivityTime["MapExploration"]["ActivityTime"]
	tMapExploration_KillMonster_NoGift["Function"] = MapExploration_KillMonster
	tMapExploration_KillMonster_NoGift["MonsterId"]={4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
	table.insert(tMonsterDrop_AreaLoad_NoGift,tMapExploration_KillMonster_NoGift)
	
--上线触发
 table.insert(tSystem_PlayLogin_Func,MapExploration_Login)
