
------------------------------------------------------------------------------------
--Name：       190213[英文征服][活动脚本]新手简单优化（3.12）
--Creator:     茅志伟
--Created:     2019/02/13
------------------------------------------------------------------------------------
--命名前缀 tIntroductionOfNovice_
--41140 = V100\ActiveScript\[Conquer][ActiveScript]IntroductionOfNovice.lua

--lua.ini 41140

--logId = 12001306

--190 15 记录是否领取了征服指南

local tIntroductionOfNovice_data = {}
tIntroductionOfNovice_data[3320164] = 3320164
tIntroductionOfNovice_data["nAttr"] = "0 1"

local tIntroductionOfNovice_Stc = {}
--记录是否领取了征服指南
tIntroductionOfNovice_Stc[1] = {}
tIntroductionOfNovice_Stc[1]["EventType"] = 190
tIntroductionOfNovice_Stc[1]["DataType"] = 15

local tIntroductionOfNovice_Page = {}
--第一部分：Introduction
tIntroductionOfNovice_Page[1] = "https://co.99.com/guide/guides/statusint.shtml"
tIntroductionOfNovice_Page[2] = "https://co.99.com/guide/classes/"
tIntroductionOfNovice_Page[3] = "https://co.99.com/guide/guides/basicint.shtml"
--第二部分：Functions
tIntroductionOfNovice_Page[4] = "https://co.99.com/guide/guides/house_change.shtml"
tIntroductionOfNovice_Page[5] = "https://co.99.com/guide/guides/promotion.shtml"
tIntroductionOfNovice_Page[6] = "https://co.99.com/guide/guides/cpshop.shtml"
tIntroductionOfNovice_Page[7] = "https://co.99.com/guide/guides/market.shtml"
tIntroductionOfNovice_Page[8] = "https://co.99.com/content/2008-02-29/20080229003108707.shtml"
tIntroductionOfNovice_Page[9] = "https://co.99.com/guide/guides/warehouse.shtml"
tIntroductionOfNovice_Page[10] = "https://co.99.com/guide/guides/itemlock.shtml"
tIntroductionOfNovice_Page[11] = "https://vips.99.com/web20/COindex.aspx"
--第三部分：Featured Systems
tIntroductionOfNovice_Page[12] = "https://co.99.com/guide/reborn.shtml"
tIntroductionOfNovice_Page[13] = "https://co.99.com/activity/2010subclasses/index.shtml"
tIntroductionOfNovice_Page[14] = "https://co.99.com/guide/guides/chi_system.shtml"
tIntroductionOfNovice_Page[15] = "https://co.99.com/guide/quest/2013/the_age_of_jiang_hu.shtml"
tIntroductionOfNovice_Page[16] = "https://coevent.99.com/mysteriousrunes/"
tIntroductionOfNovice_Page[17] = "https://co.99.com/guide/event/2018/relic/"
--第四部分：Equipments
tIntroductionOfNovice_Page[18] = "https://co.99.com/content/2008-08-28/20080828233420444.shtml"
tIntroductionOfNovice_Page[19] = "https://co.99.com/guide/guides/blessed.shtml"
tIntroductionOfNovice_Page[20] = "https://co.99.com/guide/items/socketed.shtml"
tIntroductionOfNovice_Page[21] = "https://co.99.com/guide/guides/gem_embed.shtml"
tIntroductionOfNovice_Page[22] = "https://co.99.com/guide/guides/refinery.shtml"
tIntroductionOfNovice_Page[23] = "https://co.99.com/guide/guides/artifact.shtml"
tIntroductionOfNovice_Page[24] = "https://co.99.com/guide/quest/perfection.shtml"
--第五部分：Social System
tIntroductionOfNovice_Page[25] = "https://co.99.com/guide/guides/guild1,1.shtml"
tIntroductionOfNovice_Page[26] = "https://co.99.com/guide/guides/family.shtml#1"
tIntroductionOfNovice_Page[27] = "https://co.99.com/guide/guides/house_change.shtml"
--第六部分：PVP System
tIntroductionOfNovice_Page[28] = "https://co.99.com/guide/quests/arena.shtml"
tIntroductionOfNovice_Page[29] = "https://co.99.com/guide/quests/elite_pk.shtml"
tIntroductionOfNovice_Page[30] = "https://co.99.com/guide/guides/team_pk.shtml"
tIntroductionOfNovice_Page[31] = "https://co.99.com/guide/quests/skillteampk.shtml"
tIntroductionOfNovice_Page[32] = "https://co.99.com/guide/quests/cs_ctf.shtml"
tIntroductionOfNovice_Page[33] = "https://co.99.com/guide/quests/clanwar.shtml"
tIntroductionOfNovice_Page[34] = "https://co.99.com/guide/quests/guildwar.shtml"

local tIntroductionOfNovice_Book = {}
	tIntroductionOfNovice_Book[3320164] = {}
	tIntroductionOfNovice_Book[3320164]["RewardItem"] = {}
	tIntroductionOfNovice_Book[3320164]["RewardItem"][1] = {}
	tIntroductionOfNovice_Book[3320164]["RewardItem"][1]["Id"] = 3320164
	tIntroductionOfNovice_Book[3320164]["RewardItem"][1]["Attr"] = "0 1"
	tIntroductionOfNovice_Book[3320164]["RewardEffect"] = {}
	tIntroductionOfNovice_Book[3320164]["RewardEffect"]["SzObj"] = "self"
	tIntroductionOfNovice_Book[3320164]["RewardEffect"]["Effect"] = "angelwing"
	tIntroductionOfNovice_Book[3320164]["LogId"] = 12001306

-----------------------------------------逻辑
function IntroductionOfNovice_Status(nNum)
	local sWebAddress = tIntroductionOfNovice_Page[nNum]
	User_SendWebPage(sWebAddress)
end 
-- --上线触发
-- function IntroductionOfNovice_GrantBook()
	-- local nItemId = tIntroductionOfNovice_data[3320164]
	-- local nAttr = tIntroductionOfNovice_data["nAttr"]
	-- local nEventType1 = tIntroductionOfNovice_Stc[1]["EventType"]
	-- local nDataType1 = tIntroductionOfNovice_Stc[1]["DataType"]
	-- local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	-- if not Task_ChkStatistic(nEventType1,nDataType1) then 
		-- Task_SetStatistic(nEventType1,nDataType1,1,1)
		-- Task_SetStcTimestamp(nEventType1,nDataType1,0)
		-- Item_AddNewItem(nItemId,nAttr)
		-- User_TalkChannel2005(tIntroductionOfNovice_Text["GrantBook"])
	-- end 
-- end 

--上线触发
function IntroductionOfNovice_GrantBook()
	local nItemId = tIntroductionOfNovice_data[3320164]
	local nAttr = tIntroductionOfNovice_data["nAttr"]
	local nEventType1 = tIntroductionOfNovice_Stc[1]["EventType"]
	local nDataType1 = tIntroductionOfNovice_Stc[1]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	if not Sys_ChkFullTime(tActivityTime["IntroductionOfNovice"]["ActTime"]) then 
		return
	end 
	local nSpace = RewardTemplate_GetRewardSpace(tIntroductionOfNovice_Book[nItemId])
	if nData1 > 0 then 
		return
	else
		if not User_CheckLeftSpace(nSpace) then
			User_TalkChannel2005(tIntroductionOfNovice_Text["GrantBook"])
			return
		else
			Task_SetStatistic(nEventType1,nDataType1,1,1)
			Task_SetStcTimestamp(nEventType1,nDataType1,0)
			RewardTemplate_UseItemAndMsg(tIntroductionOfNovice_Book[nItemId])
		end
	end 
end 


---------------------------------------------------对白逻辑
tItemFace[3320164] = 2109
tItem[3320164] = tItem[3320164] or {}
tItem[3320164]["DialogueText"] = tIntroductionOfNovice_Text[3320164]
tItem[3320164]["Text1-1"] = {111}
tItem[3320164]["tOption1-1"] = {111,112,113,114,115,116}
tItem[3320164]["OptionPoint111"] = "2-1"
tItem[3320164]["OptionPoint112"] = "2-2"
tItem[3320164]["OptionPoint113"] = "2-3"
tItem[3320164]["OptionPoint114"] = "2-4"
tItem[3320164]["OptionPoint115"] = "2-5"
tItem[3320164]["OptionPoint116"] = "2-6"
--接1、Introduction。
tItem[3320164]["Text2-1"] = {211}
tItem[3320164]["tOption2-1"] = {211,212,213,214}
tItem[3320164]["OptionFunc211"] = "IntroductionOfNovice_Status</N>1"
tItem[3320164]["OptionFunc212"] = "IntroductionOfNovice_Status</N>2"
tItem[3320164]["OptionFunc213"] = "IntroductionOfNovice_Status</N>3"
tItem[3320164]["OptionPoint214"] = "1-1"
--接2、Functions。
tItem[3320164]["Text2-2"] = {221}
tItem[3320164]["tOption2-2"] = {221,222,223,224,225,226,227,228,229}
tItem[3320164]["OptionFunc221"] = "IntroductionOfNovice_Status</N>4"
tItem[3320164]["OptionFunc222"] = "IntroductionOfNovice_Status</N>5"
tItem[3320164]["OptionFunc223"] = "IntroductionOfNovice_Status</N>6"
tItem[3320164]["OptionFunc224"] = "IntroductionOfNovice_Status</N>7"
tItem[3320164]["OptionFunc225"] = "IntroductionOfNovice_Status</N>8"
tItem[3320164]["OptionFunc226"] = "IntroductionOfNovice_Status</N>9"
tItem[3320164]["OptionFunc227"] = "IntroductionOfNovice_Status</N>10"
tItem[3320164]["OptionFunc228"] = "IntroductionOfNovice_Status</N>11"
tItem[3320164]["OptionPoint229"] = "1-1"
--接3、Featured Systems。
tItem[3320164]["Text2-3"] = {231}
tItem[3320164]["tOption2-3"] = {231,232,233,234,235,236,237}
tItem[3320164]["OptionFunc231"] = "IntroductionOfNovice_Status</N>12"
tItem[3320164]["OptionFunc232"] = "IntroductionOfNovice_Status</N>13"
tItem[3320164]["OptionFunc233"] = "IntroductionOfNovice_Status</N>14"
tItem[3320164]["OptionFunc234"] = "IntroductionOfNovice_Status</N>15"
tItem[3320164]["OptionFunc235"] = "IntroductionOfNovice_Status</N>16"
tItem[3320164]["OptionFunc236"] = "IntroductionOfNovice_Status</N>17"
tItem[3320164]["OptionPoint237"] = "1-1"
--接4、Equipments。
tItem[3320164]["Text2-4"] = {241}
tItem[3320164]["tOption2-4"] = {241,242,243,244,245,246,247,248}
tItem[3320164]["OptionFunc241"] = "IntroductionOfNovice_Status</N>18"
tItem[3320164]["OptionFunc242"] = "IntroductionOfNovice_Status</N>19"
tItem[3320164]["OptionFunc243"] = "IntroductionOfNovice_Status</N>20"
tItem[3320164]["OptionFunc244"] = "IntroductionOfNovice_Status</N>21"
tItem[3320164]["OptionFunc245"] = "IntroductionOfNovice_Status</N>22"
tItem[3320164]["OptionFunc246"] = "IntroductionOfNovice_Status</N>23"
tItem[3320164]["OptionFunc247"] = "IntroductionOfNovice_Status</N>24"
tItem[3320164]["OptionPoint248"] = "1-1"
--接5、Social System。
tItem[3320164]["Text2-5"] = {251}
tItem[3320164]["tOption2-5"] = {251,252,253,254}
tItem[3320164]["OptionFunc251"] = "IntroductionOfNovice_Status</N>25"
tItem[3320164]["OptionFunc252"] = "IntroductionOfNovice_Status</N>26"
tItem[3320164]["OptionFunc253"] = "IntroductionOfNovice_Status</N>27"
tItem[3320164]["OptionPoint254"] = "1-1"
--接6、PVP System。
tItem[3320164]["Text2-6"] = {261}
tItem[3320164]["tOption2-6"] = {261,262,263,264,265,266,267,268}
tItem[3320164]["OptionFunc261"] = "IntroductionOfNovice_Status</N>28"
tItem[3320164]["OptionFunc262"] = "IntroductionOfNovice_Status</N>29"
tItem[3320164]["OptionFunc263"] = "IntroductionOfNovice_Status</N>30"
tItem[3320164]["OptionFunc264"] = "IntroductionOfNovice_Status</N>31"
tItem[3320164]["OptionFunc265"] = "IntroductionOfNovice_Status</N>32"
tItem[3320164]["OptionFunc266"] = "IntroductionOfNovice_Status</N>33"
tItem[3320164]["OptionFunc267"] = "IntroductionOfNovice_Status</N>34"
tItem[3320164]["OptionPoint268"] = "1-1"

--------------------------------------上线触发-------------------------------------------
table.insert(tSystem_PlayLogin_Func,IntroductionOfNovice_GrantBook)
