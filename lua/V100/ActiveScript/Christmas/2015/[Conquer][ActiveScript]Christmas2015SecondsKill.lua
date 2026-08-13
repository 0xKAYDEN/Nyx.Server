------------------------------------------------------------------------------------
--Name:			150911[简体征服][活动脚本]圣诞元旦之一元秒杀
--Purpose:		圣诞元旦之一元秒杀
--Creator:		张磊
--Created:		2015/9/11
------------------------------------------------------------------------------------


-- 动态码说明：
-- 50964

-- data1  表示记录剩余礼包个数，每小时100个礼包，每小时进行重置
-- data2  表示记录剩余龙珠个数，每天重置
-- data3  表示标识礼包个数重置是否成功   成功设置成1
-- data4  表示标识龙珠个数重置是否成功   成功设置成1
-- data5  表示记录时间段
--datastr1  表示记录面纱玩家名字

-- stc()掩码说明
-- stc(137,99)	记录玩家是否已经秒杀过了



-----------------------------------------------------------------------------------





--------------------------------------------------常量表配置--------------------------------------------------
local tChristmas2015_SecondsKill_Cont = {}
	-- 活动时间
	tChristmas2015_SecondsKill_Cont["BeforeActivityTime"] = "2017-01-01 00:00 2017-12-20 23:59"
	tChristmas2015_SecondsKill_Cont["ActivityTime"] = "2017-12-21 00:00 2018-01-03 23:59"
	
	tChristmas2015_SecondsKill_Cont["DragonTime"] = "00:00 00:00"

	-- 秒杀需要的背包空间
	tChristmas2015_SecondsKill_Cont["Space"] = 1
	-- 秒杀需要的银两
	tChristmas2015_SecondsKill_Cont["Money"] = 1
	-- 秒杀中的动态码
	tChristmas2015_SecondsKill_Cont["Global"] = 50964
	-- 转世 等级
	tChristmas2015_SecondsKill_Cont["Metempsychosis"] = 0
	tChristmas2015_SecondsKill_Cont["Level"] = 80
	
	-- 节日礼包 任务ID
	tChristmas2015_SecondsKill_Cont["FestivalID"] = 3471
	
	-- 龙珠和礼包 标示区分  1 标示礼包  2 标示龙珠
	tChristmas2015_SecondsKill_Cont["Pack"] = 1
	tChristmas2015_SecondsKill_Cont["Dragon"] = 2
	
	-- 龙珠奖励
	tChristmas2015_SecondsKill_Cont["DragonReward"] = 1088000
	
	-- 礼包数量 和 龙珠数量
	tChristmas2015_SecondsKill_Cont["PackNum"] = 100
	tChristmas2015_SecondsKill_Cont["DragonNum"] = 1
	
local tChristmas2015_SecondsKill_Stc = {}
	tChristmas2015_SecondsKill_Stc["Event"] = 137
	tChristmas2015_SecondsKill_Stc["Type"] = 99
	
	tChristmas2015_SecondsKill_Stc["Data"] = 3

local tChristmas2015_SecondsKill_Log = {}
	tChristmas2015_SecondsKill_Log["FestivalPack"] = 12000206
	tChristmas2015_SecondsKill_Log["FestivalByPack"] = "0,0,1,1,12000206,2,3003625,1"
	tChristmas2015_SecondsKill_Log["FestivalByDragon"] = "0,0,1,1,12000206,2,1088000,1"

local tChristmas2015_SecondsKill_Effect = {}
	tChristmas2015_SecondsKill_Effect["self"] = "self"
	tChristmas2015_SecondsKill_Effect["angelwing"] = "angelwing"

	
--------------------------------------------------逻辑部分--------------------------------------------------
-- 判断秒杀是否超过3次
function Christmas2015_SecondsKill_CheckStc()
	local nEvent = tChristmas2015_SecondsKill_Stc["Event"]
	local nType = tChristmas2015_SecondsKill_Stc["Type"]
	local nData = tChristmas2015_SecondsKill_Stc["Data"]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		return true
	elseif Task_ChkStcValue(nEvent,nType,"<",nData) then
		return true
	else
		return false
	end
end

-- 判断秒杀是否超过1小时了
function Christmas2015_SecondsKill_CheckStcHour()
	local nEvent = tChristmas2015_SecondsKill_Stc["Event"]
	local nType = tChristmas2015_SecondsKill_Stc["Type"]
	
	if Task_StcInterval(nEvent,nType,3600,0) then
		return true
	elseif Task_ChkStcValue(nEvent,nType,"==",0) then
		return true
	else
		return false
	end
end


-- 我要秒杀
function Christmas2015_SecondsKill_Pack(nNpcId,nFlag)
	if not Sys_ChkFullTime(tChristmas2015_SecondsKill_Cont["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	if not User_JudgeLevelAndMetempsychosis(tChristmas2015_SecondsKill_Cont["Level"],tChristmas2015_SecondsKill_Cont["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	
	local nGlobal = tChristmas2015_SecondsKill_Cont["Global"]
	
	-- 判断是那种秒杀，分别判断不同的条件
	local nTime = tonumber(os.date("%H"))
	if nFlag == tChristmas2015_SecondsKill_Cont["Pack"] then
		if Get_SysDynaGlobalData0(nGlobal) <= 0 then
			LinkNpcGossipFunc_New(nNpcId,"5-1")
			return
		end
	elseif nFlag == tChristmas2015_SecondsKill_Cont["Dragon"] then
		if Get_SysDynaGlobalData1(nGlobal) <= 0 then
			LinkNpcGossipFunc_New(nNpcId,"13-1")
			return		
		elseif Get_SysDynaGlobalData2(nGlobal) ~= nTime then
			LinkNpcGossipFunc_New(nNpcId,"14-1")
			return
		end
	end
	
	-- 判断玩家是否秒杀完三次了
	if not Christmas2015_SecondsKill_CheckStc() then
		LinkNpcGossipFunc_New(nNpcId,"8-1")
		return
	end
	-- 秒杀是否超过1小时
	if not Christmas2015_SecondsKill_CheckStcHour() then
		LinkNpcGossipFunc_New(nNpcId,"9-1")
		return
	end
	-- 判断是否有空间
	if not User_CheckLeftSpace(tChristmas2015_SecondsKill_Cont["Space"]) then
		LinkNpcGossipFunc_New(nNpcId,"7-1")
		return
	end
	
	-- 判断银两是否够

	if not User_CanPutMoney2Bag(-tChristmas2015_SecondsKill_Cont["Money"]) then
		LinkNpcGossipFunc_New(nNpcId,"6-1")
		return
	end

	--随机产生一个数字 （1000-9999）作为验证码
	local nRandNum = math.random(100,999)
	
	User_SetVarData(1,nRandNum)

	-- 对白
	local sStr = ""
	local sText = tChristmas2015_SecondsKill_Text["SysMsg"]["Tkuang"]
	if nFlag == tChristmas2015_SecondsKill_Cont["Pack"] then
		sStr = string.format(tChristmas2015_SecondsKill_Text[18823]["Text1011"],Get_SysDynaGlobalData0(nGlobal),Get_UserVarData(1))
	elseif nFlag == tChristmas2015_SecondsKill_Cont["Dragon"] then
		sStr = string.format(tChristmas2015_SecondsKill_Text[18823]["Text1511"],Get_UserVarData(1))
	else
		return
	end
	

	Sys_DialogText(sStr)
	Sys_DialogOptEdit(sText,3,string.format("Christmas2015_SecondsKill_ChkPsw</N>18823</N>%d</N>%d",nRandNum,nFlag))
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
	
end

-- 判断密码
function Christmas2015_SecondsKill_ChkPsw(nNpcId,nRandNum,nFlag)
	if not Sys_ChkFullTime(tChristmas2015_SecondsKill_Cont["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	if not User_JudgeLevelAndMetempsychosis(tChristmas2015_SecondsKill_Cont["Level"],tChristmas2015_SecondsKill_Cont["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	
	local nGlobal = tChristmas2015_SecondsKill_Cont["Global"]
	
	-- 判断是那种秒杀，分别判断不同的条件
	local nTime = tonumber(os.date("%H"))
	if nFlag == tChristmas2015_SecondsKill_Cont["Pack"] then
		if Get_SysDynaGlobalData0(nGlobal) <= 0 then
			LinkNpcGossipFunc_New(nNpcId,"5-1")
			return
		end
	elseif nFlag == tChristmas2015_SecondsKill_Cont["Dragon"] then
		if Get_SysDynaGlobalData1(nGlobal) <= 0 then
			LinkNpcGossipFunc_New(nNpcId,"13-1")
			return		
		elseif Get_SysDynaGlobalData2(nGlobal) ~= nTime then
			LinkNpcGossipFunc_New(nNpcId,"14-1")
			return
		end
	end
	
	-- 判断玩家是否秒杀完三次了
	if not Christmas2015_SecondsKill_CheckStc() then
		LinkNpcGossipFunc_New(nNpcId,"8-1")
		return
	end
	-- 秒杀是否超过1小时
	if not Christmas2015_SecondsKill_CheckStcHour() then
		LinkNpcGossipFunc_New(nNpcId,"9-1")
		return
	end
	-- 判断是否有空间
	if not User_CheckLeftSpace(tChristmas2015_SecondsKill_Cont["Space"]) then
		LinkNpcGossipFunc_New(nNpcId,"7-1")
		return
	end
	
	-- 判断银两是否够
	if not User_CanPutMoney2Bag(-tChristmas2015_SecondsKill_Cont["Money"]) then
		LinkNpcGossipFunc_New(nNpcId,"6-1")
		return
	end

	-- 输入的密码是否正确
	if tonumber(Get_SysAcceptStr()) ~= nRandNum then
		LinkNpcGossipFunc_New(nNpcId,"11-1")
		return
	end
	
	local nEvent = tChristmas2015_SecondsKill_Stc["Event"]
	local nType = tChristmas2015_SecondsKill_Stc["Type"]
	
	User_AddMoney(-tChristmas2015_SecondsKill_Cont["Money"])
	if nFlag == tChristmas2015_SecondsKill_Cont["Pack"] then
		local nGlobalData = Get_SysDynaGlobalData0(nGlobal) - 1
		Sys_SetSynaGlobalData0(nGlobal,nGlobalData)
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	
		FestivalGeneralPackage_GetGift(tChristmas2015_SecondsKill_Cont["FestivalID"],tChristmas2015_SecondsKill_Log["FestivalPack"])	
		Sys_SaveActionFestivalLog(tChristmas2015_SecondsKill_Log["FestivalByPack"])
		User_EffectAdd(tChristmas2015_SecondsKill_Effect["self"],tChristmas2015_SecondsKill_Effect["angelwing"])
		LinkNpcGossipFunc_New(nNpcId,"12-1")
	elseif nFlag == tChristmas2015_SecondsKill_Cont["Dragon"] then
		Sys_SetSynaGlobalData1(nGlobal,0)
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		Item_AddItem(tChristmas2015_SecondsKill_Cont["DragonReward"])
		Sys_SetSynaGlobalDataStr0(nGlobal,Get_UserName())
		
		Sys_SaveActionFestivalLog(tChristmas2015_SecondsKill_Log["FestivalByDragon"])
		User_EffectAdd(tChristmas2015_SecondsKill_Effect["self"],tChristmas2015_SecondsKill_Effect["angelwing"])
		LinkNpcGossipFunc_New(nNpcId,"16-1")
		Sys_SystemBroadcast(string.format(tChristmas2015_SecondsKill_Text["SysMsg"]["LongZhu"],Get_SysDynaGlobalDataStr0(nGlobal)))
	else
		return
	end
end

-- 每个小时的00分 执行的内容
function Christmas2015_SecondsKill_ClearOrAssignment()
	if not Sys_ChkFullTime(tChristmas2015_SecondsKill_Cont["ActivityTime"]) then
		return
	end
	
	-- 设置礼包的值，重新赋值为100
	local nGlobal = tChristmas2015_SecondsKill_Cont["Global"]
	local nPackData = tChristmas2015_SecondsKill_Cont["PackNum"]
	Sys_SetSynaGlobalData0(nGlobal,nPackData)

	-- 设置龙珠数量 和 秒杀时间
	local nDragonNum = tChristmas2015_SecondsKill_Cont["DragonNum"]
	
	if Sys_ChkDayTime(tChristmas2015_SecondsKill_Cont["DragonTime"]) then
		local nData = math.random(8,23)
		Sys_SetSynaGlobalData1(nGlobal,nDragonNum)
		Sys_SetSynaGlobalData2(nGlobal,nData)
		Sys_SetSynaGlobalDataStr0(nGlobal,"")
	end
end

-- 55 分和59分

function Christmas2015_SecondsKill_Dragon()
	local nTime = tonumber(os.date("%H"))
	local nGlobal = tChristmas2015_SecondsKill_Cont["Global"]
	if nTime ==  Get_SysDynaGlobalData2(nGlobal) - 1 and Get_SysDynaGlobalData1(nGlobal) ~= 0 then
		Sys_SystemBroadcast(string.format(tChristmas2015_SecondsKill_Text["SysMsg"]["ChongZhi"],Get_SysDynaGlobalData2(nGlobal)))
	end
end


----------------------------------------------------NPC模版对白配置-------------------------------------------
--王一两
tNpcFace[3813] = 24
tNpcGossip[18823] = tNpcGossip[18823] or DefaultNpc:new{}
tNpcGossip[18823]["OptionHidden"] = 1

-- 活动前
tNpcGossip[18823]["Text1-1"] = {111,112,113}
tNpcGossip[18823]["Text111"] = tChristmas2015_SecondsKill_Text[18823]["Text111"]
tNpcGossip[18823]["Text112"] = tChristmas2015_SecondsKill_Text[18823]["Text112"]
tNpcGossip[18823]["Text113"] = tChristmas2015_SecondsKill_Text[18823]["Text113"]
tNpcGossip[18823]["tOption1-1"] = {1}
tNpcGossip[18823]["ChkFunc1-1"]= function()
    return Sys_ChkFullTime(tChristmas2015_SecondsKill_Cont["BeforeActivityTime"])
end

tNpcGossip[18823]["Option1"] = tChristmas2015_SecondsKill_Text[18823]["Option1"]


-- 活动中
tNpcGossip[18823]["Text1-2"] = {121,122,123,124}
tNpcGossip[18823]["Text121"] = tChristmas2015_SecondsKill_Text[18823]["Text121"]
tNpcGossip[18823]["Text122"] = tChristmas2015_SecondsKill_Text[18823]["Text122"]
tNpcGossip[18823]["Text123"] = tChristmas2015_SecondsKill_Text[18823]["Text123"]
tNpcGossip[18823]["Text124"] = tChristmas2015_SecondsKill_Text[18823]["Text124"]
tNpcGossip[18823]["tOption1-2"] = {3,4,2,5}
tNpcGossip[18823]["ChkFunc1-2"]= function()
    return Sys_ChkFullTime(tChristmas2015_SecondsKill_Cont["ActivityTime"])
end

tNpcGossip[18823]["Option2"] = tChristmas2015_SecondsKill_Text[18823]["Option2"]
tNpcGossip[18823]["OptionPoint2"]="2-1"
tNpcGossip[18823]["OptionChkFunc2"] = function()
	return Sys_ChkFullTime(tChristmas2015_SecondsKill_Cont["ActivityTime"])
end

tNpcGossip[18823]["Option3"] = tChristmas2015_SecondsKill_Text[18823]["Option3"]
tNpcGossip[18823]["OptionFunc3"]=string.format("Christmas2015_SecondsKill_Pack</N>18823</N>%d",tChristmas2015_SecondsKill_Cont["Pack"])
tNpcGossip[18823]["OptionChkFunc3"] = function()
	return Sys_ChkFullTime(tChristmas2015_SecondsKill_Cont["ActivityTime"])
end

tNpcGossip[18823]["Option4"] = tChristmas2015_SecondsKill_Text[18823]["Option4"]
tNpcGossip[18823]["OptionFunc4"]=string.format("Christmas2015_SecondsKill_Pack</N>18823</N>%d",tChristmas2015_SecondsKill_Cont["Dragon"])
tNpcGossip[18823]["OptionChkFunc4"] = function()
	if not Sys_ChkFullTime(tChristmas2015_SecondsKill_Cont["ActivityTime"]) then
		return false
	end
	
	local nTime = tonumber(os.date("%H"))
	local nGlobal = tChristmas2015_SecondsKill_Cont["Global"]
	if Get_SysDynaGlobalData1(nGlobal) <= 0 or (Get_SysDynaGlobalData2(nGlobal) ~= nTime) then
		return false
	end	
	return true
end

tNpcGossip[18823]["Option5"] = tChristmas2015_SecondsKill_Text[18823]["Option5"]


-- 活动后
tNpcGossip[18823]["Text1-3"] = {131,132}
tNpcGossip[18823]["Text131"] = tChristmas2015_SecondsKill_Text[18823]["Text131"]
tNpcGossip[18823]["Text132"] = tChristmas2015_SecondsKill_Text[18823]["Text132"]
tNpcGossip[18823]["tOption1-3"] = {6}

tNpcGossip[18823]["Option6"] = tChristmas2015_SecondsKill_Text[18823]["Option6"]

-- 应该怎样参加一两秒杀？
tNpcGossip[18823]["Text2-1"] = {211,212,213,214}
tNpcGossip[18823]["Text211"] = tChristmas2015_SecondsKill_Text[18823]["Text211"]
tNpcGossip[18823]["Text212"] = tChristmas2015_SecondsKill_Text[18823]["Text212"]
tNpcGossip[18823]["Text213"] = tChristmas2015_SecondsKill_Text[18823]["Text213"]
tNpcGossip[18823]["Text214"] = tChristmas2015_SecondsKill_Text[18823]["Text214"]
tNpcGossip[18823]["tOption2-1"] = {7}


tNpcGossip[18823]["Option7"] = tChristmas2015_SecondsKill_Text[18823]["Option7"]
tNpcGossip[18823]["OptionPoint7"]="3-1"
tNpcGossip[18823]["OptionChkFunc7"] = function()
	return Sys_ChkFullTime(tChristmas2015_SecondsKill_Cont["ActivityTime"])
end

-- 我想听听关于龙珠的事。
tNpcGossip[18823]["Text3-1"] = {311,312,313}
tNpcGossip[18823]["Text311"] = tChristmas2015_SecondsKill_Text[18823]["Text311"]
tNpcGossip[18823]["Text312"] = tChristmas2015_SecondsKill_Text[18823]["Text312"]
tNpcGossip[18823]["Text313"] = tChristmas2015_SecondsKill_Text[18823]["Text313"]
tNpcGossip[18823]["tOption3-1"] = {8}

tNpcGossip[18823]["Option8"] = tChristmas2015_SecondsKill_Text[18823]["Option8"]

-- 我要秒杀礼包。
---- 等级不足
tNpcGossip[18823]["Text4-1"] = {411}
tNpcGossip[18823]["Text411"] = tChristmas2015_SecondsKill_Text[18823]["Text411"]
tNpcGossip[18823]["tOption4-1"] = {9}

tNpcGossip[18823]["Option9"] = tChristmas2015_SecondsKill_Text[18823]["Option9"]

---- 已经全部秒杀完毕
tNpcGossip[18823]["Text5-1"] = {511}
tNpcGossip[18823]["Text511"] = tChristmas2015_SecondsKill_Text[18823]["Text511"]
tNpcGossip[18823]["tOption5-1"] = {10}

tNpcGossip[18823]["Option10"] = tChristmas2015_SecondsKill_Text[18823]["Option10"]

---- 竟然1两银子也没有
tNpcGossip[18823]["Text6-1"] = {611}
tNpcGossip[18823]["Text611"] = tChristmas2015_SecondsKill_Text[18823]["Text611"]
tNpcGossip[18823]["tOption6-1"] = {11}

tNpcGossip[18823]["Option11"] = tChristmas2015_SecondsKill_Text[18823]["Option11"]

---- 背包空间不足
tNpcGossip[18823]["Text7-1"] = {711}
tNpcGossip[18823]["Text711"] = tChristmas2015_SecondsKill_Text[18823]["Text711"]
tNpcGossip[18823]["tOption7-1"] = {12}

tNpcGossip[18823]["Option12"] = tChristmas2015_SecondsKill_Text[18823]["Option12"]

---- 每天秒杀超过3次
tNpcGossip[18823]["Text8-1"] = {811}
tNpcGossip[18823]["Text811"] = tChristmas2015_SecondsKill_Text[18823]["Text811"]
tNpcGossip[18823]["tOption8-1"] = {12}

---- 一小时内已经秒杀一次了
tNpcGossip[18823]["Text9-1"] = {911}
tNpcGossip[18823]["Text911"] = tChristmas2015_SecondsKill_Text[18823]["Text911"]
tNpcGossip[18823]["tOption9-1"] = {9}

---- 弹出输入框
-----对白自己写，不使用模版

----验证码输错
tNpcGossip[18823]["Text11-1"] = {1111}
tNpcGossip[18823]["Text1111"] = tChristmas2015_SecondsKill_Text[18823]["Text1111"]
tNpcGossip[18823]["tOption11-1"] = {13}

tNpcGossip[18823]["Option13"] = tChristmas2015_SecondsKill_Text[18823]["Option13"]

---- 秒杀成功
tNpcGossip[18823]["Text12-1"] = {1211}
tNpcGossip[18823]["Text1211"] = tChristmas2015_SecondsKill_Text[18823]["Text1211"]
tNpcGossip[18823]["tOption12-1"] = {14}
tNpcGossip[18823]["ChkFunc12-1"]= function()
	local nEvent = tChristmas2015_SecondsKill_Stc["Event"]
	local nType = tChristmas2015_SecondsKill_Stc["Type"]
	
	local nData = Get_UserStatisticValue(nEvent,nType)
	tNpcGossip[18823]["Text1211"] = string.format(tChristmas2015_SecondsKill_Text[18823]["Text1211"],nData)
    return true
end

tNpcGossip[18823]["Option14"] = tChristmas2015_SecondsKill_Text[18823]["Option14"]

-- 秒杀龙珠
----- 龙珠被秒杀完了
tNpcGossip[18823]["Text13-1"] = {1311}
tNpcGossip[18823]["Text1311"] = tChristmas2015_SecondsKill_Text[18823]["Text1311"]
tNpcGossip[18823]["tOption13-1"] = {15}
tNpcGossip[18823]["ChkFunc13-1"]= function()
	local nGlobal = tChristmas2015_SecondsKill_Cont["Global"]

	tNpcGossip[18823]["Text1311"] = string.format(tChristmas2015_SecondsKill_Text[18823]["Text1311"],Get_SysDynaGlobalDataStr0(nGlobal))
    return true
end

tNpcGossip[18823]["Option15"] = tChristmas2015_SecondsKill_Text[18823]["Option15"]

----- 龙珠还未投放秒杀中
tNpcGossip[18823]["Text14-1"] = {1411}
tNpcGossip[18823]["Text1411"] = tChristmas2015_SecondsKill_Text[18823]["Text1411"]
tNpcGossip[18823]["tOption14-1"] = {16}

tNpcGossip[18823]["Option16"] = tChristmas2015_SecondsKill_Text[18823]["Option16"]


---- 成功秒杀龙珠提示
tNpcGossip[18823]["Text16-1"] = {1611}
tNpcGossip[18823]["Text1611"] = tChristmas2015_SecondsKill_Text[18823]["Text1611"]
tNpcGossip[18823]["tOption16-1"] = {17}

tNpcGossip[18823]["Option17"] = tChristmas2015_SecondsKill_Text[18823]["Option17"]


-------------------------------------------203W 时间自检
-- 每小时00分进行掩码重置和清零
-- tOntimerMin_M[00] = tOntimerMin_M[00] or {}
-- table.insert(tOntimerMin_M[00],Christmas2015_SecondsKill_ClearOrAssignment)

-- 每小时55分和59分检查龙珠是否存在并给公告
-- tOntimerMin_M[55] = tOntimerMin_M[55] or {}
-- table.insert(tOntimerMin_M[55],Christmas2015_SecondsKill_Dragon)

-- tOntimerMin_M[59] = tOntimerMin_M[59] or {}
-- table.insert(tOntimerMin_M[59],Christmas2015_SecondsKill_Dragon)










