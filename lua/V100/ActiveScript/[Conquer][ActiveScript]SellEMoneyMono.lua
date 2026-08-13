------------------------------------------------------------------------------------
--Name:160407[英文征服][活动脚本]5月新服活动-非赠换赠(5.19-6.02)
--Creator:郑宗胜
--Created:2016/04/07
------------------------------------------------------------------------------------

-- 命名前缀：SellEMoneyMono_
-- lua.ini  40212
-- logId  12000346

----------------------------------数据部分----------------------------------------
-- 常量表
local tSellEMoneyMono_Constant = {}
	-- 活动时间
	-- tSellEMoneyMono_Constant["BeforeTime"] = "2016-01-01 00:00 2016-05-18 23:59"
	-- tSellEMoneyMono_Constant["ActivityTime"] = "2016-05-19 00:00 2016-06-02 23:59"

	--赠点天石超上限链接的对白，所需的物品ID
	tSellEMoneyMono_Constant["EMoneyMonoUpper"] = 3008986

	--控制新旧服的动态码
	tSellEMoneyMono_Constant["nGlobalId"]=51163

---使用天石包获得的赠点天石数量
local tSellEMoneyMono_UseItemAward = {}
	tSellEMoneyMono_UseItemAward[3008986] = 600  --初级天石包
	tSellEMoneyMono_UseItemAward[3008987] = 4000  --中级天石包
	tSellEMoneyMono_UseItemAward[3008988] = 14000  --高级天石包
	tSellEMoneyMono_UseItemAward[3008989] = 30000  --特级天石包
	tSellEMoneyMono_UseItemAward[3008990] = 80000  --神级天石包
	tSellEMoneyMono_UseItemAward[3008991] = 200000 --至尊天石包

---光效
local tSellEMoneyMono_Effect = {}
	tSellEMoneyMono_Effect["Object"] = "self" --对象
	tSellEMoneyMono_Effect["AwardEMoneyMono"] = "zf2-e280" --获得赠点天石的光效

---Log
local tSellEMoneyMono_Log = {}
	tSellEMoneyMono_Log["AwardEMoneyMono"] = "0,0,%d,1,12000346,2,3,%d"  --获得赠点天石的log
	
----------------------------------逻辑部分----------------------------------------
---打开天石商店
function SellEMoneyMono_OpenShop(nNpcId)
	local nGlobalId = tSellEMoneyMono_Constant["nGlobalId"]
	local sActivityTime = Get_SysDynaGlobalDataStr1(nGlobalId)
	if Sys_ChkFullTime(sActivityTime) then
		User_OpenDialog()
	end
end

---使用天石包
function SellEMoneyMono_UseEMoneyPackage(nItemId)
	local nAddEMoneyMono = tSellEMoneyMono_UseItemAward[nItemId]
	--超上限
	if SellEMoneyMono_JudgeUpperLimit(nAddEMoneyMono) then
		LinkItemGossipFunc_New(tSellEMoneyMono_Constant["EMoneyMonoUpper"],"1-1")
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		--增加赠点天石，打log
		User_AddEMoneyMono(nAddEMoneyMono)
		User_EffectAdd(tSellEMoneyMono_Effect["Object"],tSellEMoneyMono_Effect["AwardEMoneyMono"])
		User_TalkChannel2005(string.format(tSellEMoneyMono_Text["AddEMoneyMono"],nAddEMoneyMono))
		Sys_SaveActionFestivalLog(string.format(tSellEMoneyMono_Log["AwardEMoneyMono"],nItemId,nAddEMoneyMono))
	end
end

---赠点上限判断,超限上返回true,否则 不超上限
function SellEMoneyMono_JudgeUpperLimit(nAddEMoneyMono)
	local nUserId = Get_UserId()
	local nUserMonoEMoney = Get_UserMonoEMoney(nUserId)
	if (nUserMonoEMoney + nAddEMoneyMono) > G_User_MaxEmoneyMono then
		return true
	end
	return false
end
----------------------------------模板部分----------------------------------------
--天石特卖专员
tNpcFace[4086] = 119
tNpcGossip[19242] = tNpcGossip[19242] or DefaultNpc:new{}
tNpcGossip[19242]["OptionHidden"] = 1

-- 活动前对白
tNpcGossip[19242]["Text1-1"] = {111,112,113}
tNpcGossip[19242]["Text111"] = tSellEMoneyMono_Text[19242]["Text111"]
tNpcGossip[19242]["Text112"] = tSellEMoneyMono_Text[19242]["Text112"]
tNpcGossip[19242]["Text113"] = tSellEMoneyMono_Text[19242]["Text113"]
tNpcGossip[19242]["tOption1-1"] = {1}
tNpcGossip[19242]["ChkFunc1-1"] = function ()
	local nGlobalId = tSellEMoneyMono_Constant["nGlobalId"]
	local sBeforeTime = Get_SysDynaGlobalDataStr0(nGlobalId)
	return Sys_ChkFullTime(sBeforeTime)
end
tNpcGossip[19242]["Option1"] = tSellEMoneyMono_Text[19242]["Option1"]

-- 活动中
tNpcGossip[19242]["Text1-2"] = {121,122,123}
tNpcGossip[19242]["Text121"] = tSellEMoneyMono_Text[19242]["Text121"]
tNpcGossip[19242]["Text122"] = tSellEMoneyMono_Text[19242]["Text112"]
tNpcGossip[19242]["Text123"] = tSellEMoneyMono_Text[19242]["Text113"]
tNpcGossip[19242]["tOption1-2"] = {2,3}
tNpcGossip[19242]["ChkFunc1-2"] = function ()
	local nGlobalId = tSellEMoneyMono_Constant["nGlobalId"]
	local sActivityTime = Get_SysDynaGlobalDataStr1(nGlobalId)
	return Sys_ChkFullTime(sActivityTime)
end
tNpcGossip[19242]["Option2"] = tSellEMoneyMono_Text[19242]["Option2"]
tNpcGossip[19242]["OptionFunc2"]="SellEMoneyMono_OpenShop</N>19242"

tNpcGossip[19242]["Option3"] = tSellEMoneyMono_Text[19242]["Option3"]

-- 活动后
tNpcGossip[19242]["Text1-3"] = {131}
tNpcGossip[19242]["Text131"] = tSellEMoneyMono_Text[19242]["Text131"]
tNpcGossip[19242]["tOption1-3"] = {4}
tNpcGossip[19242]["Option4"] = tSellEMoneyMono_Text[19242]["Option4"]


---物品模板
--初级天石包
tItem[3008986] = tItem[3008986] or {}
tItem[3008986]["Function"] = function(nItemId,sItemName)
	SellEMoneyMono_UseEMoneyPackage(nItemId)
end
--中级天石包
tItem[3008987] = tItem[3008987] or {}
tItem[3008987]["Function"] = function(nItemId,sItemName)
	SellEMoneyMono_UseEMoneyPackage(nItemId)
end
--高级天石包
tItem[3008988] = tItem[3008988] or {}
tItem[3008988]["Function"] = function(nItemId,sItemName)
	SellEMoneyMono_UseEMoneyPackage(nItemId)
end
--特级天石包
tItem[3008989] = tItem[3008989] or {}
tItem[3008989]["Function"] = function(nItemId,sItemName)
	SellEMoneyMono_UseEMoneyPackage(nItemId)
end
--神级天石包
tItem[3008990] = tItem[3008990] or {}
tItem[3008990]["Function"] = function(nItemId,sItemName)
	SellEMoneyMono_UseEMoneyPackage(nItemId)
end
--至尊天石包
tItem[3008991] = tItem[3008991] or {}
tItem[3008991]["Function"] = function(nItemId,sItemName)
	SellEMoneyMono_UseEMoneyPackage(nItemId)
end

--赠点天石超上限的对白
tItem[3008986]["Text1-1"] = {111}
tItem[3008986]["Text111"] = tSellEMoneyMono_Text[3008986]["Text111"]
tItem[3008986]["tOption1-1"] = {1}
tItem[3008986]["Option1"] = tSellEMoneyMono_Text[3008986]["Option1"]


function SellEMoneyMono_SetGlobal()
	local nGlobalId = 51163
	local nData = Get_SysDynaGlobalData0(nGlobalId)
	
	 if nData >= 1 then
		local sAfterActivityTime = Get_SysDynaGlobalDataStr2(nGlobalId)
		 if Sys_ChkFullTime(sAfterActivityTime) then
			Sys_SetSynaGlobalData0(nGlobalId,0)
		end
	end
end

tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
table.insert(tOntimerMin_HM[0000],SellEMoneyMono_SetGlobal)