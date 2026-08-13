------------------------------------------------------------------------------------
--Name:		[征服][任务脚本]通用礼包逻辑修改为用LUA
--Purpose:	通用礼包逻辑修改为用LUA
--Creator: 	严振飞
--Created:	2014/10/28
------------------------------------------------------------------------------------
--任务需求：
---将通用礼包逻辑修改为用lua编写，避免麻烦的update 并防止出错
------------------------------------------------------------------------------------
--物品：
---3003625--节日欢庆礼包--没有转世
---3003626--节日欢庆礼包--1转
---3003627--节日欢庆礼包--2转
------------------------------------------------------------------------------------
--掩码说明
---stc(131,74) 记录领取奖励次数--2015年情人节活动

--LOGid说明
---10002397 --2015年情人节活动
------------------------------------------------------------------------------------
--命名规范
--FestivalGeneralPackage_
---------------------------------------活动数据---------------------------------------------
--活动数据
local tFestivalGeneralPackage_Data = {}
------------------------------------------------------------------------------------
	--【SQL调用例子】：
	--//传入的参数为    nFestivalId
	--(94999999,0,0,20003,0,'FestivalGeneralPackage_GetGift 3353 10002397');


	--tFestivalGeneralPackage_Data[nFestivalId] = {}
	--tFestivalGeneralPackage_Data[nFestivalId]["Stc"] = {}
	--....
	--nFestivalId 表示：相应任务的唯一任务ID
-----------------------------------
	--活动1
	--[[
	tFestivalGeneralPackage_Data[1] = {}
	tFestivalGeneralPackage_Data[1]["Stc"] = {}
	tFestivalGeneralPackage_Data[1]["Stc"]["EventType"] = 124
	tFestivalGeneralPackage_Data[1]["Stc"]["DataType"] = 30
	tFestivalGeneralPackage_Data[1]["Festival_Time"] = '2014-11-23 00:00 2014-11-29 23:59'
	tFestivalGeneralPackage_Data[1]["GetGift_Limit"] = 8
	tFestivalGeneralPackage_Data[1]["CheckLeftSpace"] = 1
	]]--
-----------------------------------
	--2017年情人节活动
	-- tFestivalGeneralPackage_Data[3353] = {}
	-- tFestivalGeneralPackage_Data[3353]["Stc"] = {}
	-- tFestivalGeneralPackage_Data[3353]["Stc"]["EventType"] = 131
	-- tFestivalGeneralPackage_Data[3353]["Stc"]["DataType"] = 74
	-- tFestivalGeneralPackage_Data[3353]["Festival_Time"] = '2017-02-12 00:00 2017-02-18 23:59'
	-- tFestivalGeneralPackage_Data[3353]["GetGift_Limit"] = 7
	-- tFestivalGeneralPackage_Data[3353]["CheckLeftSpace"] = 1
	
-----------------------------------
	----2015年春节活动（小年）
	--tFestivalGeneralPackage_Data[3362] = {}
	--tFestivalGeneralPackage_Data[3362]["Stc"] = {}
	--tFestivalGeneralPackage_Data[3362]["Stc"]["EventType"] = 132
	--tFestivalGeneralPackage_Data[3362]["Stc"]["DataType"] = 29
	--tFestivalGeneralPackage_Data[3362]["Festival_Time"] = '2015-02-15 00:00 2015-02-18 23:59'
	--tFestivalGeneralPackage_Data[3362]["GetGift_Limit"] = 6
	--tFestivalGeneralPackage_Data[3362]["CheckLeftSpace"] = 1
	--
	----2015年春节活动（大年）
	--tFestivalGeneralPackage_Data[3368] = {}
	--tFestivalGeneralPackage_Data[3368]["Stc"] = {}
	--tFestivalGeneralPackage_Data[3368]["Stc"]["EventType"] = 132
	--tFestivalGeneralPackage_Data[3368]["Stc"]["DataType"] = 30
	--tFestivalGeneralPackage_Data[3368]["Festival_Time"] = '2015-02-19 00:00 2015-02-28 23:59'
	--tFestivalGeneralPackage_Data[3368]["GetGift_Limit"] = 6
	--tFestivalGeneralPackage_Data[3368]["CheckLeftSpace"] = 1
	--
	-- 2015年春节活动（元宵）
	-- tFestivalGeneralPackage_Data[3370] = {}
	-- tFestivalGeneralPackage_Data[3370]["Stc"] = {}
	-- tFestivalGeneralPackage_Data[3370]["Stc"]["EventType"] = 132
	-- tFestivalGeneralPackage_Data[3370]["Stc"]["DataType"] = 09
	-- tFestivalGeneralPackage_Data[3370]["Festival_Time"] = '2017-02-07 00:00 2017-02-11 23:59'
	-- tFestivalGeneralPackage_Data[3370]["GetGift_Limit"] = 4
	-- tFestivalGeneralPackage_Data[3370]["CheckLeftSpace"] = 1

-----------------------------------

	--2015年春节跨服任务
	--tFestivalGeneralPackage_Data[3376] = {}
	--tFestivalGeneralPackage_Data[3376]["Stc"] = {}
	--tFestivalGeneralPackage_Data[3376]["Stc"]["EventType"] = 132
	--tFestivalGeneralPackage_Data[3376]["Stc"]["DataType"] = 63
	--tFestivalGeneralPackage_Data[3376]["Festival_Time"] = '2015-03-12 00:00 2015-03-18 23:59'
	--tFestivalGeneralPackage_Data[3376]["GetGift_Limit"] = 8
	--tFestivalGeneralPackage_Data[3376]["CheckLeftSpace"] = 1

-----------------------------------
	--2017年复活节活动----特卖3个-圣火传递2个-神秘包藏1个-彩蛋1个
	-- tFestivalGeneralPackage_Data[3381] = {}
	-- tFestivalGeneralPackage_Data[3381]["Stc"] = {}
	-- tFestivalGeneralPackage_Data[3381]["Stc"]["EventType"] = 132
	-- tFestivalGeneralPackage_Data[3381]["Stc"]["DataType"] = 73
	-- tFestivalGeneralPackage_Data[3381]["Festival_Time"] = '2017-04-14 00:00 2017-04-20 23:59'
	-- tFestivalGeneralPackage_Data[3381]["GetGift_Limit"] = 7
	-- tFestivalGeneralPackage_Data[3381]["CheckLeftSpace"] = 1
	
-----------------------------------
		--2015年周年庆活动
	tFestivalGeneralPackage_Data[3404] = {}
	tFestivalGeneralPackage_Data[3404]["Stc"] = {}
	tFestivalGeneralPackage_Data[3404]["Stc"]["EventType"] = 133
	tFestivalGeneralPackage_Data[3404]["Stc"]["DataType"] = 20
	tFestivalGeneralPackage_Data[3404]["Festival_Time"] = '2018-05-10 00:00 2018-05-23 23:59'
	tFestivalGeneralPackage_Data[3404]["GetGift_Limit"] = 6
	tFestivalGeneralPackage_Data[3404]["CheckLeftSpace"] = 1
	
-----------------------------------
	--2016年暑期活动
	-- tFestivalGeneralPackage_Data[3432] = {}
	-- tFestivalGeneralPackage_Data[3432]["Stc"] = {}
	-- tFestivalGeneralPackage_Data[3432]["Stc"]["EventType"] = 134
	-- tFestivalGeneralPackage_Data[3432]["Stc"]["DataType"] = 58
	-- tFestivalGeneralPackage_Data[3432]["Festival_Time"] = '2017-07-08 00:00 2017-07-21 23:59'
	-- tFestivalGeneralPackage_Data[3432]["GetGift_Limit"] = 6
	-- tFestivalGeneralPackage_Data[3432]["CheckLeftSpace"] = 1
	
	--2015年劳工节活动之劳工大找茬
	tFestivalGeneralPackage_Data[3436] = {}
	tFestivalGeneralPackage_Data[3436]["Stc"] = {}
	tFestivalGeneralPackage_Data[3436]["Stc"]["EventType"] = 134
	tFestivalGeneralPackage_Data[3436]["Stc"]["DataType"] = 85
	tFestivalGeneralPackage_Data[3436]["Festival_Time"] = tActivityTime["Laborday"]["Now_Time"]
	tFestivalGeneralPackage_Data[3436]["GetGift_Limit"] = 6
	tFestivalGeneralPackage_Data[3436]["CheckLeftSpace"] = 1
	
	--2017年万圣节(礼包限制为8个)
	tFestivalGeneralPackage_Data[3456] = {}
	tFestivalGeneralPackage_Data[3456]["Stc"] = {}
	tFestivalGeneralPackage_Data[3456]["Stc"]["EventType"] = 136
	tFestivalGeneralPackage_Data[3456]["Stc"]["DataType"] = 59
	tFestivalGeneralPackage_Data[3456]["Festival_Time"] = "2017-10-26 00:00 2017-11-01 23:59"
	tFestivalGeneralPackage_Data[3456]["GetGift_Limit"] = 8
	tFestivalGeneralPackage_Data[3456]["CheckLeftSpace"] = 1
	
	
	--2016年父亲节
	tFestivalGeneralPackage_Data[994] = {}
	tFestivalGeneralPackage_Data[994]["Stc"] = {}
	tFestivalGeneralPackage_Data[994]["Stc"]["EventType"] = 144
	tFestivalGeneralPackage_Data[994]["Stc"]["DataType"] = 88
	tFestivalGeneralPackage_Data[994]["Festival_Time"] = '2017-06-15 00:00 2017-06-21 23:59'
	tFestivalGeneralPackage_Data[994]["GetGift_Limit"] = 5
	tFestivalGeneralPackage_Data[994]["CheckLeftSpace"] = 1
	
	
	--2015感恩节
	-- tFestivalGeneralPackage_Data[3330] = {}
	-- tFestivalGeneralPackage_Data[3330]["Stc"] = {}
	-- tFestivalGeneralPackage_Data[3330]["Stc"]["EventType"] = 137
	-- tFestivalGeneralPackage_Data[3330]["Stc"]["DataType"] = 44
	-- tFestivalGeneralPackage_Data[3330]["Festival_Time"] = tActivityTime["Thanksgiving2018"]["ActivityTime"]
	-- tFestivalGeneralPackage_Data[3330]["GetGift_Limit"] = 9
	-- tFestivalGeneralPackage_Data[3330]["CheckLeftSpace"] = 1
	
-----------------------------------
	--2016年双蛋节活动
	-- tFestivalGeneralPackage_Data[3471] = {}
	-- tFestivalGeneralPackage_Data[3471]["Stc"] = {}
	-- tFestivalGeneralPackage_Data[3471]["Stc"]["EventType"] = 150
	-- tFestivalGeneralPackage_Data[3471]["Stc"]["DataType"] = 35
	-- tFestivalGeneralPackage_Data[3471]["Festival_Time"] = '2017-12-21 00:00 2018-01-03 23:59'
	-- tFestivalGeneralPackage_Data[3471]["GetGift_Limit"] = 9
	-- tFestivalGeneralPackage_Data[3471]["CheckLeftSpace"] = 1
	--2016年春节(总npc礼包限制1个))
	-- tFestivalGeneralPackage_Data[3365] = {}
	-- tFestivalGeneralPackage_Data[3365]["Stc"] = {}
	-- tFestivalGeneralPackage_Data[3365]["Stc"]["EventType"] = 139
	-- tFestivalGeneralPackage_Data[3365]["Stc"]["DataType"] = 17
	-- tFestivalGeneralPackage_Data[3365]["Festival_Time"] = "2017-01-23 00:00 2017-02-11 23:59"
	-- tFestivalGeneralPackage_Data[3365]["GetGift_Limit"] = 1
	-- tFestivalGeneralPackage_Data[3365]["CheckLeftSpace"] = 1

	--2016年春节(小年礼包限制6个))
	-- tFestivalGeneralPackage_Data[3364] = {}
	-- tFestivalGeneralPackage_Data[3364]["Stc"] = {}
	-- tFestivalGeneralPackage_Data[3364]["Stc"]["EventType"] = 139
	-- tFestivalGeneralPackage_Data[3364]["Stc"]["DataType"] = 00
	-- tFestivalGeneralPackage_Data[3364]["Festival_Time"] = "2017-01-23 00:00 2017-01-27 23:59"
	-- tFestivalGeneralPackage_Data[3364]["GetGift_Limit"] = 5
	-- tFestivalGeneralPackage_Data[3364]["CheckLeftSpace"] = 1
	--2016年春节(大年礼包限制8个))
	-- tFestivalGeneralPackage_Data[3359] = {}
	-- tFestivalGeneralPackage_Data[3359]["Stc"] = {}
	-- tFestivalGeneralPackage_Data[3359]["Stc"]["EventType"] = 138
	-- tFestivalGeneralPackage_Data[3359]["Stc"]["DataType"] = 87
	-- tFestivalGeneralPackage_Data[3359]["Festival_Time"] = "2017-01-28 00:00 2017-02-06 23:59"
	-- tFestivalGeneralPackage_Data[3359]["GetGift_Limit"] = 7
	-- tFestivalGeneralPackage_Data[3359]["CheckLeftSpace"] = 1
	
	-- 奥运会
	-- tFestivalGeneralPackage_Data[3706] = {}
	-- tFestivalGeneralPackage_Data[3706]["Stc"] = {}
	-- tFestivalGeneralPackage_Data[3706]["Stc"]["EventType"] = 146
	-- tFestivalGeneralPackage_Data[3706]["Stc"]["DataType"] = 71
	-- tFestivalGeneralPackage_Data[3706]["Festival_Time"] = '2016-08-05 00:00 2016-08-22 23:59'
	-- tFestivalGeneralPackage_Data[3706]["GetGift_Limit"] = 7
	-- tFestivalGeneralPackage_Data[3706]["CheckLeftSpace"] = 1
	
------------------------------------------------------------------------------------
--Name:		161216[英文征服][活动脚本]2017狂欢节活动(3.2-3.8)
--Creator:		许乐
--Created:		2016/12/16
------------------------------------------------------------------------------------	
	-- -- 2017年狂欢节
	-- tFestivalGeneralPackage_Data[3373] = {}
	-- tFestivalGeneralPackage_Data[3373]["Stc"] = {}
	-- tFestivalGeneralPackage_Data[3373]["Stc"]["EventType"] = 140
	-- tFestivalGeneralPackage_Data[3373]["Stc"]["DataType"] = 14
	-- tFestivalGeneralPackage_Data[3373]["Festival_Time"] = '2017-03-02 00:00 2017-03-08 23:59'
	-- tFestivalGeneralPackage_Data[3373]["GetGift_Limit"] = 12
	-- tFestivalGeneralPackage_Data[3373]["CheckLeftSpace"] = 1
-----------------------------------
	-- -- 2015斋月节
	-- tFestivalGeneralPackage_Data[3419] = {}
	-- tFestivalGeneralPackage_Data[3419]["Stc"] = {}
	-- tFestivalGeneralPackage_Data[3419]["Stc"]["EventType"] = 133
	-- tFestivalGeneralPackage_Data[3419]["Stc"]["DataType"] = 83
	-- tFestivalGeneralPackage_Data[3419]["Festival_Time"] = '2017-05-26 00:00 2017-06-24 23:59'
	-- tFestivalGeneralPackage_Data[3419]["GetGift_Limit"] = 3
	-- tFestivalGeneralPackage_Data[3419]["CheckLeftSpace"] = 1

	-- -- 2015开斋节
	-- tFestivalGeneralPackage_Data[3422] = {}
	-- tFestivalGeneralPackage_Data[3422]["Stc"] = {}
	-- tFestivalGeneralPackage_Data[3422]["Stc"]["EventType"] = 133
	-- tFestivalGeneralPackage_Data[3422]["Stc"]["DataType"] = 84
	-- tFestivalGeneralPackage_Data[3422]["Festival_Time"] = '2017-06-25 00:00 2017-06-27 23:59'
	-- tFestivalGeneralPackage_Data[3422]["GetGift_Limit"] = 3
	-- tFestivalGeneralPackage_Data[3422]["CheckLeftSpace"] = 1
	
	--2017年儿童节活动
	-- tFestivalGeneralPackage_Data[3285] = {}
	-- tFestivalGeneralPackage_Data[3285]["Stc"] = {}
	-- tFestivalGeneralPackage_Data[3285]["Stc"]["EventType"] = 133
	-- tFestivalGeneralPackage_Data[3285]["Stc"]["DataType"] = 75
	-- tFestivalGeneralPackage_Data[3285]["Festival_Time"] = '2017-06-01 00:00 2017-06-08 23:59'
	-- tFestivalGeneralPackage_Data[3285]["GetGift_Limit"] = 7
	-- tFestivalGeneralPackage_Data[3285]["CheckLeftSpace"] = 1
-----------------------------------
-- ####################################################################################
-- ###170526[英文征服][活动脚本]2017宰牲节活动(9.1-9.7)
-- ###SQL BY:兰瑞妹
-- ###DATE：2017-05-26
-- ####################################################################################
	--2015年宰牲节-暂时上限设为10
	-- tFestivalGeneralPackage_Data[3307] = {}
	-- tFestivalGeneralPackage_Data[3307]["Stc"] = {}
	-- tFestivalGeneralPackage_Data[3307]["Stc"]["EventType"] = 134
	-- tFestivalGeneralPackage_Data[3307]["Stc"]["DataType"] = 65
	-- tFestivalGeneralPackage_Data[3307]["Festival_Time"] = '2017-09-02 00:00 2017-09-08 23:59'
	-- tFestivalGeneralPackage_Data[3307]["GetGift_Limit"] = 10
	-- tFestivalGeneralPackage_Data[3307]["CheckLeftSpace"] = 1
	
	--2015伊历新年活动--个数限制暂为10已最终统计为准
	tFestivalGeneralPackage_Data[3319] = {}
	tFestivalGeneralPackage_Data[3319]["Stc"] = {}
	tFestivalGeneralPackage_Data[3319]["Stc"]["EventType"] = 134
	tFestivalGeneralPackage_Data[3319]["Stc"]["DataType"] = 29
	tFestivalGeneralPackage_Data[3319]["Festival_Time"] = tActivityTime["ArabicNewYear"]["AcitveTime"]
	tFestivalGeneralPackage_Data[3319]["GetGift_Limit"] = 6
	tFestivalGeneralPackage_Data[3319]["CheckLeftSpace"] = 1
	
------------------------------------------------------------------------------------
--额外物品数据（可添加多个额外物品）
local tFestivalGeneralPackage_AdditionalGift = {}
-----------------------------------
	--活动1新增物品
	--tFestivalGeneralPackage_AdditionalGift[1] = {}
	--未转世增加额外物品
	--[[
	tFestivalGeneralPackage_AdditionalGift[1][3003625] = {}
	tFestivalGeneralPackage_AdditionalGift[1][3003625]["Add_Num"] = 2

	tFestivalGeneralPackage_AdditionalGift[1][3003625][1] = {}
	tFestivalGeneralPackage_AdditionalGift[1][3003625][1]["Add_ItemId"] = nil
	tFestivalGeneralPackage_AdditionalGift[1][3003625][1]["Add_Num"] = 1

	tFestivalGeneralPackage_AdditionalGift[1][3003625][2] = {}
	tFestivalGeneralPackage_AdditionalGift[1][3003625][2]["Add_ItemId"] = nil
	tFestivalGeneralPackage_AdditionalGift[1][3003625][2]["Add_Num"] = 1

	--1转增加额外物品
	tFestivalGeneralPackage_AdditionalGift[1][3003626] = {}
	tFestivalGeneralPackage_AdditionalGift[1][3003626]["Add_Num"] = 2

	tFestivalGeneralPackage_AdditionalGift[1][3003626][1] = {}
	tFestivalGeneralPackage_AdditionalGift[1][3003626][1]["Add_ItemId"] = nil
	tFestivalGeneralPackage_AdditionalGift[1][3003626][1]["Add_Num"] = 1

	tFestivalGeneralPackage_AdditionalGift[1][3003626][2] = {}
	tFestivalGeneralPackage_AdditionalGift[1][3003626][2]["Add_ItemId"] = nil
	tFestivalGeneralPackage_AdditionalGift[1][3003626][2]["Add_Num"] = 1

	--2转以上增加额外物品
	tFestivalGeneralPackage_AdditionalGift[1][3003627] = {}
	tFestivalGeneralPackage_AdditionalGift[1][3003627]["Add_Num"] = 2
	
	tFestivalGeneralPackage_AdditionalGift[1][3003627][1] = {}
	tFestivalGeneralPackage_AdditionalGift[1][3003627][1]["Add_ItemId"] = nil
	tFestivalGeneralPackage_AdditionalGift[1][3003627][1]["Add_Num"] = 1

	tFestivalGeneralPackage_AdditionalGift[1][3003627][2] = {}
	tFestivalGeneralPackage_AdditionalGift[1][3003627][2]["Add_ItemId"] = nil
	tFestivalGeneralPackage_AdditionalGift[1][3003627][2]["Add_Num"] = 1
-----------------------------------
	--活动XXX新增物品
	....
	]]--


------------------------------------------固定数据------------------------------------------
--玩家转世
local tFestivalGeneralPackage_Metempsychosis = {}
	tFestivalGeneralPackage_Metempsychosis["Max"] = 2

--礼包种类
local tFestivalGeneralPackage_GfitType = {}
	tFestivalGeneralPackage_GfitType[1] = 3306408 --没有转世
	tFestivalGeneralPackage_GfitType[2] = 3306408 --1转
	tFestivalGeneralPackage_GfitType[3] = 3306408 --2转
	
	tFestivalGeneralPackage_GfitType["Log"] = {}
	tFestivalGeneralPackage_GfitType["Log"][1] = "3306408,1"
	tFestivalGeneralPackage_GfitType["Log"][2] = "3306408,1"
	tFestivalGeneralPackage_GfitType["Log"][3] = "3306408,1"
--动态存储表
local tFestivalGeneralPackage_DynaGlobalData = {}
	tFestivalGeneralPackage_DynaGlobalData[1] = 80114
	tFestivalGeneralPackage_DynaGlobalData[2] = 80115
	tFestivalGeneralPackage_DynaGlobalData[3] = 80116
	tFestivalGeneralPackage_DynaGlobalData[4] = 80150
	tFestivalGeneralPackage_DynaGlobalData[5] = 80156
	tFestivalGeneralPackage_DynaGlobalData[6] = 80157
--节日礼包时效1天
local tFestivalGeneralPackage_SaveTime = {}
	tFestivalGeneralPackage_SaveTime["Time"] = 1440
	tFestivalGeneralPackage_SaveTime["Active"] = 1
--LOG数据
local tFestivalGeneralPackage_LogMain = {}
	tFestivalGeneralPackage_LogMain["Log_Text"] = "0,0,0,0,%d,2,%s"
------------------------------------------逻辑部分------------------------------------------
function FestivalGeneralPackage_GetGift(nFestivalId,nLogId,bInsert,nPlayerId)
	local nUserId = nPlayerId or Get_UserId()

	---活动时间
	if not Sys_ChkFullTime(tFestivalGeneralPackage_Data[nFestivalId]["Festival_Time"]) then
		return
	end

	---是否隔1天
	if Task_StcInterval(tFestivalGeneralPackage_Data[nFestivalId]["Stc"]["EventType"],tFestivalGeneralPackage_Data[nFestivalId]["Stc"]["DataType"],1,4,nUserId) then
		Task_SetStatistic(tFestivalGeneralPackage_Data[nFestivalId]["Stc"]["EventType"],tFestivalGeneralPackage_Data[nFestivalId]["Stc"]["DataType"],0,0,nUserId)
		Task_SetStcTimestamp(tFestivalGeneralPackage_Data[nFestivalId]["Stc"]["EventType"],tFestivalGeneralPackage_Data[nFestivalId]["Stc"]["DataType"],0,nUserId)
	end

	---礼包领取次数是否超过限制
	if Task_ChkStcValue(tFestivalGeneralPackage_Data[nFestivalId]["Stc"]["EventType"],tFestivalGeneralPackage_Data[nFestivalId]["Stc"]["DataType"],">=",tFestivalGeneralPackage_Data[nFestivalId]["GetGift_Limit"],nUserId) then
		Sys_MsgBox(string.format(tFestivalGeneralPackage["OverLimit_Msg"],tFestivalGeneralPackage_Data[nFestivalId]["GetGift_Limit"]),"NULL","NULL",nUserId)
		return
	end

	--背包空格检测-(bInsert有配且为true则不检测背包空间)
	--默认传nil
	
	if not bInsert and not User_CheckLeftSpace(tFestivalGeneralPackage_Data[nFestivalId]["CheckLeftSpace"],nUserId) then
		Sys_MsgBox(tFestivalGeneralPackage["Bag_Full"],"NULL","NULL",nUserId)
		return
	end
	
	
	--STC掩码设置
	Task_AddStatistic(tFestivalGeneralPackage_Data[nFestivalId]["Stc"]["EventType"],tFestivalGeneralPackage_Data[nFestivalId]["Stc"]["DataType"],1,0,nUserId)
	Task_SetStcTimestamp(tFestivalGeneralPackage_Data[nFestivalId]["Stc"]["EventType"],tFestivalGeneralPackage_Data[nFestivalId]["Stc"]["DataType"],0,nUserId)

	--玩家转世判断,给礼包
	local nItemId = 0
	local nSaveTime = tFestivalGeneralPackage_SaveTime["Time"]
	local nActive = tFestivalGeneralPackage_SaveTime["Active"]
	local sLog_Table = ""
	local nMetempsychosis = Get_UserMetempsychosis(nUserId)
	if nMetempsychosis >= tFestivalGeneralPackage_Metempsychosis["Max"] then
		nItemId = tFestivalGeneralPackage_GfitType[3]
		sLog_Table = tFestivalGeneralPackage_GfitType["Log"][3]
	else
		nItemId = tFestivalGeneralPackage_GfitType[nMetempsychosis + 1]
		sLog_Table = tFestivalGeneralPackage_GfitType["Log"][nMetempsychosis + 1]
	end
	-- Item_AddItem(nItemId,0,0,0,nSaveTime,nActive)
	Item_AddNewItem(nItemId,string.format("0 0 0 %d %d",nSaveTime,nActive),nUserId)
	
	---额外礼包
	local tLog = {}
	local nIndex = 1
	local sItemId = tostring(nItemId)
	local sAdd_Num = "1"
	if tFestivalGeneralPackage_AdditionalGift[nFestivalId] ~= nil then
		for i=1,tFestivalGeneralPackage_AdditionalGift[nFestivalId][nItemId]["Add_Num"] do
			if tFestivalGeneralPackage_AdditionalGift[nFestivalId][nItemId][i]["Add_ItemId"] ~= nil then
				-- Item_AddItem(tFestivalGeneralPackage_AdditionalGift[nFestivalId][nItemId][i]["Add_ItemId"])
				Item_AddNewItem(tFestivalGeneralPackage_AdditionalGift[nFestivalId][nItemId][i]["Add_ItemId"],"0 1",nUserId)
				tLog["ItemId"] = tFestivalGeneralPackage_AdditionalGift[nFestivalId][nItemId][i]["Add_ItemId"]
				tLog["Add_Num"] = tFestivalGeneralPackage_AdditionalGift[nFestivalId][nItemId][i]["Add_Num"]
				
				--log内容组合
				sItemId = sItemId .."[".. tLog["ItemId"] .."]"
				sAdd_Num = sAdd_Num .."[".. tLog["Add_Num"] .."]"
				sLog_Table = sItemId..","..sAdd_Num
			end
		end
	end
	--提示
	local sText = string.format(tFestivalGeneralPackage_LogMain["Log_Text"],nLogId,sLog_Table)
	User_TalkChannel2005(tFestivalGeneralPackage["Get_Gift"],nUserId)
	Sys_SaveActionFestivalLog(sText,nUserId)
end

--2转以上玩家额外奖励
--sAwardType 类型：气力--Strength
--nAwardValue 获得的值
function FestivalGeneralPackage_AwardOther(sAwardType,nAwardValue,nLogId,nPlayerId)
	local nUserId = nPlayerId or Get_UserId()
	
	if type(sAwardType) ~= "string" or type(nAwardValue) ~= "number" or nAwardValue < 0 or type(nLogId) ~= "number" then
		return
	end
	local nMetempsychosis = Get_UserMetempsychosis(nUserId)
	if nMetempsychosis >= tFestivalGeneralPackage_Metempsychosis["Max"] then
		--二转玩家增加50点气力值（0转1转玩家奖励不变）
		if sAwardType == "Strength" then
			User_AddStrengthValue(nAwardValue,nUserId)
			User_TalkChannel2005(string.format("You received extra %d Chi Points!", nAwardValue),nUserId)
			Sys_SaveActionFestivalLog(string.format("0,0,0,0,%d,2,12,%d",nLogId,nAwardValue),nUserId)
		end
		
	end
end

---------------------------------------系统自检逻辑部分------------------------------------------
--// 关闭重置限制
function FestivalGeneralPackag_ResetLimit()
	Sys_SetSynaGlobalData0(tFestivalGeneralPackage_DynaGlobalData[1],0)
end

--// 活动列表循环检测
function FestivalGeneralPackag_ResetDataTable()
	for nFestivalId,v in pairs(tFestivalGeneralPackage_Data) do
		FestivalGeneralPackag_Reset(nFestivalId)
	end
end

--// 系统自检重置动态存储表
function FestivalGeneralPackag_Reset(nFestivalId)

	---活动时间
	if not Sys_ChkFullTime(tFestivalGeneralPackage_Data[nFestivalId]["Festival_Time"]) then
		return
	end
	
	--判断重置限制是否打开
	local nDynaGlobalData0 = Get_SysDynaGlobalData0(tFestivalGeneralPackage_DynaGlobalData[1])
	if nDynaGlobalData0 == 1 then
		return
	end

	--判断时间段，执行动态存储表清零
	if Sys_ChkDayTime("02:00 02:01") or Sys_ChkDayTime("10:00 10:01") or Sys_ChkDayTime("18:00 18:01") then
		Sys_ResetAllSynaGlobalData(tFestivalGeneralPackage_DynaGlobalData[1])
		Sys_ResetAllSynaGlobalData(tFestivalGeneralPackage_DynaGlobalData[2])
		Sys_ResetAllSynaGlobalData(tFestivalGeneralPackage_DynaGlobalData[3])
		Sys_ResetAllSynaGlobalData(tFestivalGeneralPackage_DynaGlobalData[4])
		Sys_ResetAllSynaGlobalData(tFestivalGeneralPackage_DynaGlobalData[6])
		
		Sys_SetSynaGlobalData0(tFestivalGeneralPackage_DynaGlobalData[1],1)
	elseif Sys_ChkDayTime("06:00 06:01") or Sys_ChkDayTime("14:00 14:01") or Sys_ChkDayTime("22:00 22:01") then
		Sys_SetSynaGlobalData2(tFestivalGeneralPackage_DynaGlobalData[1],0)
		Sys_SetSynaGlobalData3(tFestivalGeneralPackage_DynaGlobalData[1],0)
		Sys_SetSynaGlobalData4(tFestivalGeneralPackage_DynaGlobalData[1],0)
		
		Sys_SetSynaGlobalData1(tFestivalGeneralPackage_DynaGlobalData[2],0)
		Sys_SetSynaGlobalData3(tFestivalGeneralPackage_DynaGlobalData[2],0)
		Sys_SetSynaGlobalData5(tFestivalGeneralPackage_DynaGlobalData[2],0)
		
		Sys_ResetAllSynaGlobalData(tFestivalGeneralPackage_DynaGlobalData[4])
		Sys_ResetAllSynaGlobalData(tFestivalGeneralPackage_DynaGlobalData[6])
		
		Sys_SetSynaGlobalData0(tFestivalGeneralPackage_DynaGlobalData[1],1)
	end
end


---------------------------------------
--// 【一天限制1个】关闭重置限制
function FestivalGeneralPackag_NewResetLimit()
	Sys_SetSynaGlobalData0(tFestivalGeneralPackage_DynaGlobalData[5],0)
end

--// 【一天限制1个】活动列表循环检测
function FestivalGeneralPackag_NewResetDataTable()
	for nFestivalId,v in pairs(tFestivalGeneralPackage_Data) do
		FestivalGeneralPackag_NewReset(nFestivalId)
	end
end

--// 【一天限制1个】重置动态存储表
function FestivalGeneralPackag_NewReset(nFestivalId)
	---活动时间
	if not Sys_ChkFullTime(tFestivalGeneralPackage_Data[nFestivalId]["Festival_Time"]) then
		return
	end
	
	--判断重置限制是否打开
	local nDynaGlobalData0 = Get_SysDynaGlobalData0(tFestivalGeneralPackage_DynaGlobalData[5])
	if nDynaGlobalData0 == 1 then
		return
	end
	
	Sys_SetSynaGlobalData0(tFestivalGeneralPackage_DynaGlobalData[5],1)
	Sys_SetSynaGlobalData1(tFestivalGeneralPackage_DynaGlobalData[5],0)
end

------------------------------------------配置数据------------------------------------------
--时间函数触发
--'00:00 00:03'
tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
table.insert(tOntimerMin_HM[0000],FestivalGeneralPackag_NewResetDataTable)
tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
table.insert(tOntimerMin_HM[0001],FestivalGeneralPackag_NewResetDataTable)
tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
table.insert(tOntimerMin_HM[0002],FestivalGeneralPackag_NewResetLimit)
tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
table.insert(tOntimerMin_HM[0003],FestivalGeneralPackag_NewResetLimit)


--'02:00 02:03'
tOntimerMin_HM[0200] = tOntimerMin_HM[0200] or {}
table.insert(tOntimerMin_HM[0200],FestivalGeneralPackag_ResetDataTable)
tOntimerMin_HM[0201] = tOntimerMin_HM[0201] or {}
table.insert(tOntimerMin_HM[0201],FestivalGeneralPackag_ResetDataTable)
tOntimerMin_HM[0202] = tOntimerMin_HM[0202] or {}
table.insert(tOntimerMin_HM[0202],FestivalGeneralPackag_ResetLimit)
tOntimerMin_HM[0203] = tOntimerMin_HM[0203] or {}
table.insert(tOntimerMin_HM[0203],FestivalGeneralPackag_ResetLimit)


--'06:00 06:03'
tOntimerMin_HM[0600] = tOntimerMin_HM[0600] or {}
table.insert(tOntimerMin_HM[0600],FestivalGeneralPackag_ResetDataTable)
tOntimerMin_HM[0601] = tOntimerMin_HM[0601] or {}
table.insert(tOntimerMin_HM[0601],FestivalGeneralPackag_ResetDataTable)
tOntimerMin_HM[0602] = tOntimerMin_HM[0602] or {}
table.insert(tOntimerMin_HM[0602],FestivalGeneralPackag_ResetLimit)
tOntimerMin_HM[0603] = tOntimerMin_HM[0603] or {}
table.insert(tOntimerMin_HM[0603],FestivalGeneralPackag_ResetLimit)


--'10:00 10:03'
tOntimerMin_HM[1000] = tOntimerMin_HM[1000] or {}
table.insert(tOntimerMin_HM[1000],FestivalGeneralPackag_ResetDataTable)
tOntimerMin_HM[1001] = tOntimerMin_HM[1001] or {}
table.insert(tOntimerMin_HM[1001],FestivalGeneralPackag_ResetDataTable)
tOntimerMin_HM[1002] = tOntimerMin_HM[1002] or {}
table.insert(tOntimerMin_HM[1002],FestivalGeneralPackag_ResetLimit)
tOntimerMin_HM[1003] = tOntimerMin_HM[1003] or {}
table.insert(tOntimerMin_HM[1003],FestivalGeneralPackag_ResetLimit)


--'14:00 14:03'
tOntimerMin_HM[1400] = tOntimerMin_HM[1400] or {}
table.insert(tOntimerMin_HM[1400],FestivalGeneralPackag_ResetDataTable)
tOntimerMin_HM[1401] = tOntimerMin_HM[1401] or {}
table.insert(tOntimerMin_HM[1401],FestivalGeneralPackag_ResetDataTable)
tOntimerMin_HM[1402] = tOntimerMin_HM[1402] or {}
table.insert(tOntimerMin_HM[1402],FestivalGeneralPackag_ResetLimit)
tOntimerMin_HM[1403] = tOntimerMin_HM[1403] or {}
table.insert(tOntimerMin_HM[1403],FestivalGeneralPackag_ResetLimit)


--'18:00 18:03'
tOntimerMin_HM[1800] = tOntimerMin_HM[1800] or {}
table.insert(tOntimerMin_HM[1800],FestivalGeneralPackag_ResetDataTable)
tOntimerMin_HM[1801] = tOntimerMin_HM[1801] or {}
table.insert(tOntimerMin_HM[1801],FestivalGeneralPackag_ResetDataTable)
tOntimerMin_HM[1802] = tOntimerMin_HM[1802] or {}
table.insert(tOntimerMin_HM[1802],FestivalGeneralPackag_ResetLimit)
tOntimerMin_HM[1803] = tOntimerMin_HM[1803] or {}
table.insert(tOntimerMin_HM[1803],FestivalGeneralPackag_ResetLimit)












