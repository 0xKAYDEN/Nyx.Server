----------------------------------------------------------------------------
--Name:		[征服][模板逻辑]基础模板之物品模块.lua
--Purpose:	基础模板之物品模块
--Creator: 	郑江文
--Created:	2014/08/28
----------------------------------------------------------------------------

--物品Action接口函数(Action_id=98471500)
local tSpecItem = {3390000,3399999}
-- 跨服使用的物品段
local tItem_Os_Limit = {1000000,1000010,1000020,1000030,1001000,1001010,1001020,1001030,1001040,1002000,1002010,1002020,1002030,1002040,1002050,727500,727501,727502,727503,725065,725066,725067,725068,723726,1003020,1003010,1004010,1003030,3002218,1000040,3004860,3004876,727504,1003000,1004000,3006721,3006722,3006723,3006724,3006725,3006726,3006727,3006728,3006729,3006730,727505,3600020,3600000,3600001,3300586,3300590,3300588,3600140,3600141,3600142,3600143,3600144,3600145,3600146,3600147,3600166,3600167,3600173,3600169,3600170,3600171,3600172,3600194,3600184,3600185,3600186,3600187,3600188,3600189,3600190,3600191,3600212,3600202,3600203,3600204,3600205,3600198,3600199,3600200,3600201}

function LinkItemMain()
	local nItemId = Get_ItemType()
	local sItemName = Get_ItemName()

	-- 判断是否在跨服里
	if User_IsUserToCross() then
		local bOsItem = false
		-- 判断是在跨服所在可使用物品段里
		for i,v in pairs(tItem_Os_Limit) do
			if nItemId == v then
				bOsItem = true
			end
		end
		
		if not bOsItem then
			return
		end
	end

	if nItemId >= tSpecItem[1] and nItemId <= tSpecItem[2] then
		--判断是否在德州比赛，是禁用这个段的礼包
		if User_IsUserInGame() then			
			User_TalkChannel2005(tSpecItem_Use_Msg["NotUseMsg"])
			return
		end	
	end
	
	if tItem[nItemId] ~= nil then
		if tItem[nItemId]["Emergency"] == 1 then
			return
		end
		
		if tItem[nItemId]["Time"] ~= nil then
			if Sys_ChkFullTime(tItem[nItemId]["Time"]) then
				ItemProcess(nItemId,sItemName)
			else
				if tItem[nItemId]["OverdueReward"] == nil then
					if Item_ChkItem(nItemId) then
						local nItemNum = Get_CountItemType(nItemId,0)
						if Item_DelAllItemByType(nItemId) then
							Sys_SaveActionRewardLog(string.format("0,0,%d,%d,12000400,2,0,0",nItemId,nItemNum))
							User_TalkChannel2005(tLuaRes[10004])
						end
						return
					end
				else
					LinkItemOverdueReward(nItemId)
				end
			end
		else
			ItemProcess(nItemId,sItemName)
		end
	end
end

--//基础Item类的成员函数_流程函数
function ItemProcess(nItemId,sItemName)
	Sys_DialogTaskClear()
	if type(tItem[nItemId]["Function"]) == "function" then
		--如果有配这个就直接走玩家自己配的逻辑
		tItem[nItemId]["Function"](nItemId,sItemName)
	else
		--下面是物品对话框模板
		local nUserId = Get_UserId() or 0
		AIFunc_New(nItemId, nil, 0, tItem[nItemId]["nPageNum"],nUserId)
		Sys_DialogItemFace(nItemId,nUserId)
		Sys_DialogEnd(nUserId)
	end
end

--[[
@param
nItemId:传入该Item的ID
sIndex:从上一层传入的索引ID，第一层为nil传入
nPage:当前第几页选项，0为第一页
nPageNum:每页显示的选项数，默认为5
--]]
function AIFunc_New(nItemId, sIndex, nPage, nPageNum,nNowUserId)
	local bFirst = false				--是否第一次走入此函数，即是否在ItemProcess所调用的。
	local nPage = nPage or 0			--当前页码，0为第一页
	local nPageNum = nPageNum or 8		--每页显示的选项数
	local nCount = 1					--当前应该显示第几项
	local nFlag = 0						--为0代表没出对白，1代表非指定对白，2代表指定对白
	local n = 1							--存储显示的Text表序号
	local nUserId = nNowUserId or Get_UserId()

	--第一层对白，支持条件选择
	if sIndex == nil then
		sIndex = "1"
		bFirst = true --第一层，因为执行完后要回调到Item模板中，所以不能出现对话框结束的语句
	else
		if string.find(sIndex, "-") == nil then
			nFlag = 0
		else
			nFlag = 2
		end
		bFirst = false
	end

	--对Text进行处理，区分显示指定对白和非指定对白
	if nFlag == 2 then
		if tItem[nItemId]["Text"..sIndex] == nil or  tItem[nItemId]["Text"..sIndex] == {} then
			return
		end

		if tItem[nItemId]["ChkFunc"..sIndex] == nil or (type(tItem[nItemId]["ChkFunc"..sIndex]) == "function" and tItem[nItemId]["ChkFunc"..sIndex](nUserId) == true) then
			for _,v in ipairs(tItem[nItemId]["Text"..sIndex]) do
				if tItem[nItemId]["Text"..v] ~= nil and tItem[nItemId]["Text"..v] ~= "" then
					Sys_DialogText(tItem[nItemId]["Text"..v],nil,nUserId)
				end
			end
		else
			return
		end
	else
		for i = 1, 50 do
			if tItem[nItemId]["Text"..sIndex.."-"..i] ~= nil and tItem[nItemId]["Text"..sIndex.."-"..i] ~= "" then
				--功能对白出现检查函数
				if tItem[nItemId]["ChkFunc"..sIndex.."-"..i] == nil or (type(tItem[nItemId]["ChkFunc"..sIndex.."-"..i]) == "function" and tItem[nItemId]["ChkFunc"..sIndex.."-"..i](nUserId) == true) then
					
					--出对白,最多可以配置5条
					for _,v in ipairs(tItem[nItemId]["Text"..sIndex.."-"..i]) do
						if tItem[nItemId]["Text"..v] ~= nil and tItem[nItemId]["Text"..v] ~= "" then
							Sys_DialogText(tItem[nItemId]["Text"..v],nil,nUserId)
						end
					end
					
					--对白已出，不再检测表中值
					nFlag = 1
					n = i
					break
				end
			else
				break
			end
		end
	end

	--对传入的sIndex进行处理，使指定和非指定对白一致，方便下面的处理
	if nFlag == 2 then
		n = string.sub(sIndex, string.find(sIndex,"-") + 1)
		sIndex = string.sub(sIndex, 1, string.find(sIndex,"-") - 1)
	elseif nFlag == 0 then --没有可以显示的对白
		if bFirst then --第一次进入则显示默认对白否则直接中断
			Sys_DialogText(tItem[nItemId]["Text"],nil,nUserId)
			return
		else
			return
		end
	end

	--选项显示部分
	if nFlag ~= 0 then
	--选项存在检查
		if type(tItem[nItemId]["tOption"..sIndex.."-"..n]) == "table" and tItem[nItemId]["tOption"..sIndex.."-"..n] ~= {} then
			for _, v in ipairs(tItem[nItemId]["tOption"..sIndex.."-"..n]) do --检索选项表
				
				if nCount <= nPageNum and ((_ > nPage * nPageNum and nPage == 0) or (_ > nPage * nPageNum - (2 * nPage - 1) and nPage >= 1)) then --未超过每页选项数
					if tItem[nItemId]["Option"..v] ~= nil and tItem[nItemId]["Option"..v] ~= "" then --存在该选项
						if tItem[nItemId]["OptionChkFunc"..v] == nil or (type(tItem[nItemId]["OptionChkFunc"..v]) == "function" and tItem[nItemId]["OptionChkFunc"..v](nUserId)) then --ChkFunc判定通过
							local sTemp = ""
							local sFunc = ""
							if tItem[nItemId]["OptionPoint"..v] ~= nil and tItem[nItemId]["OptionPoint"..v] ~= "" then
								sTemp = tItem[nItemId]["OptionPoint"..v]
							else
								sTemp = nil
							end

							if tItem[nItemId]["OptionFunc"..v] ~= nil and tItem[nItemId]["OptionFunc"..v] ~= "" and type(tItem[nItemId]["OptionFunc"..v]) == "string" then
								sFunc = "</F>"..tItem[nItemId]["OptionFunc"..v]
							elseif sTemp ~= nil then
								sFunc = "</F>LinkItemGossipFunc_New</N>"..nItemId.."</S>"..sTemp.."</N>0</N>"..nPageNum
							else
								sFunc = "</F>NULL"
							end
							
							Sys_DialogOption(tItem[nItemId]["Option"..v], sFunc,nil,nUserId)
							nCount = nCount + 1
							--if nCount < nPageNum then
							--	nCount = nCount + 1
							--end
							
							if nCount == nPageNum and #tItem[nItemId]["tOption"..sIndex.."-"..n] > nPageNum and nPage == 0  then
								local sTemp = sIndex.."-"..n
								Sys_DialogOption(tLuaRes[10006], "</F>LinkItemGossipFunc_New</N>"..nItemId.."</S>"..sTemp.."</N>"..(nPage + 1).."</N>"..nPageNum,nil,nUserId)
								break
							elseif nCount == nPageNum - 1 and #tItem[nItemId]["tOption"..sIndex.."-"..n] > nPageNum * (nPage + 1) - 2 * nPage and nPage > 0 then
								local sTemp = sIndex.."-"..n
								Sys_DialogOption(tLuaRes[10006], "</F>LinkItemGossipFunc_New</N>"..nItemId.."</S>"..sTemp.."</N>"..(nPage + 1).."</N>"..nPageNum,nil,nUserId)
								break
							end
						end
						
					end
				--elseif nCount ==  nPageNum and #tItem[nItemId]["tOption"..sIndex.."-"..n] > nPageNum then
				--	local sTemp = sIndex.."-"..n
				--	Sys_DialogOption("下一页", "</F>LinkItemGossipFunc_New</N>"..nItemId.."</S>"..sTemp.."</N>"..(nPage + 1).."</N>"..nPageNum,nil,nUserId)
				--	break
				end
			end

			if nPage > 0 then
				local sTemp = sIndex.."-"..n
				Sys_DialogOption(tLuaRes[10005], "</F>LinkItemGossipFunc_New</N>"..nItemId.."</S>"..sTemp.."</N>"..(nPage - 1).."</N>"..nPageNum,nil,nUserId)
			end
		end
	end
	
	--后部处理，区分是否ItemProcess走入的函数
	if not bFirst then
		--Sys_SystemBroadcast("nCount is "..nCount)
		if nCount == 1 then
			Sys_DialogOption(tItem[nItemId]["Option"] or tLuaRes[10002], "</F>NULL",nil,nUserId)
		end
		Sys_DialogItemFace(nItemId,nUserId)
		Sys_DialogEnd(nUserId)
	end
end

function LinkItemGossipFunc_New(nItemId, sIndex, nPage, nPageNum,nUserId)
	return AIFunc_New(nItemId, sIndex, nPage, nPageNum,nUserId)
end

-- 过期物品删除奖励
function LinkItemOverdueReward(nItemId)
	local nItemNum = Get_CountItemType(nItemId,0)
	
	if nItemNum <= 0 then
		return
	end
	
	-- 给予奖励类型（"RewardStrengthValue"）
	local sIndex = tItem[nItemId]["OverdueReward"]["RewardIndex"]
	local nValue = tItem[nItemId]["OverdueReward"]["RewardValue"]
	local sAttr = tItem[nItemId]["OverdueReward"]["RewardAttr"]
	local tReward = {}
	
	if sIndex == nil or nValue == nil then
		return
	end
	
	tReward[sIndex] = {}
	
	if sIndex == "RewardItem" then
		if sAttr == nil or type(sAttr) ~= "string" then
			return
		end
		
		local tAttr = Sys_Split(sAttr," ")
		local sNewAttr = ""
		if tAttr[2] == nil then
			tAttr[2] = 1
		end
		
		tAttr[2] = tonumber(tAttr[2])*nItemNum
		
		for i = 1,#tAttr do
			if i == #tAttr then
				sNewAttr = sNewAttr .. tAttr[i]
			else
				sNewAttr = sNewAttr .. tAttr[i] .. " "
			end
		end
		
		tReward[sIndex][1] = {}
		tReward[sIndex][1]["Id"] = nValue
		tReward[sIndex][1]["Attr"] = sNewAttr
	else
		tReward[sIndex]["Value"] = nValue*nItemNum
	end
	
	tReward["DeleteItem"] = {}
	tReward["DeleteItem"][1] = {}
	tReward["DeleteItem"][1]["Id"] = nItemId
	tReward["DeleteItem"][1]["ItemNum"] = nItemNum
	RewardTemplate_UseItemAndMsg(tReward)
end

-- 对白服务器启动自动加载
function LinkItemGossipFunc_Load()
	for i,v in pairs(tItem) do
		if v["DialogueText"] ~= nil then
			LinkItemGossipFunc_Judge(i)
		end
	end
end

function LinkItemGossipFunc_Judge(nItemId)
	local tTable = LinkNpcGossipFunc_ByKeys(tItem[nItemId])

	for i,v in pairs(tTable) do
		if string.find(v,"Text") and string.find(v,"-") then
			for m,n in pairs(tItem[nItemId][v]) do
				if tItem[nItemId]["DialogueText"]["Text" .. n] ~= nil then
					tItem[nItemId]["Text" .. n] = tItem[nItemId]["DialogueText"]["Text" .. n]
				end
			end
		elseif string.find(v,"tOption") then
			for m,n in pairs(tItem[nItemId][v]) do
				if tItem[nItemId]["DialogueText"]["Option" .. n] ~= nil then
					tItem[nItemId]["Option" .. n] = tItem[nItemId]["DialogueText"]["Option" .. n]
				end
			end
		end
	end
end

tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],LinkItemGossipFunc_Load)

--例：
--tItem[2021226] = tItem[2021226] or {}
--如果要用对话框来做就不要下面这个配置
--tItem[2021226]["Function"] = function (nItemId, sItemName)
	--具体逻辑
--end

--下面是物品对话配置的简单范例
--tItem[721779]["Text1-1"] = {111}
--tItem[721779]["Text111"] = "ChkFunc1为false，这个肯定不显示。"
--tItem[721779]["ChkFunc1-1"] = function () return false end
--tItem[721779]["tOption1-1"] = {1, 22, 212}

--tItem[721779]["Text1-2"] = {121}
--tItem[721779]["Text121"] = "ChkFunc2为true，显示对白2，之后的不再检测。"

--tItem[721779]["ChkFunc1-2"] = function () return true end
--tItem[721779]["tOption1-2"] = {1, 2, 212}

--tItem[721779]["Text1-3"] = {131}
--tItem[721779]["Text131"] = "ChkFunc3为true，但已出对白2，此对白不会检测了。"

--tItem[721779]["ChkFunc1-3"] = function () return false end
--tItem[721779]["tOption1-3"] = {} --为空或nil则出默认Option

--tItem[721779]["Text2-1"] = "ChkFunc1为false，这个肯定不显示。"
--tItem[721779]["ChkFunc2-1"] = function () return false end
--tItem[721779]["tOption2-1"] = {1, 22, 212}

--tItem[721779]["Text2-2"] = "Text2-2"
--tItem[721779]["ChkFunc2-2"] = function () return true end
--tItem[721779]["tOption2-2"] = {1, 2, 212}

--tItem[721779]["Text2-3"] = "ChkFunc3为true，但已出对白2，此对白不会检测了。"
--tItem[721779]["ChkFunc2-3"] = function () return true end
--tItem[721779]["tOption2-3"] = {} --为空或nil则出默认Option


--tItem[721779]["Option1"] = "Option1"
--tItem[721779]["OptionChkFunc1"] = function () return true end --接函数名，为nil或函数返回true时显示Option1
--tItem[721779]["OptionFunc1"] = "" --可自定义所接函数
--tItem[721779]["OptionPoint1"] = "1" --可自定义所接对白，需要循环判断ChkFunc来出相应Text

--tItem[721779]["Option2"] = "Option2"
--tItem[721779]["OptionChkFunc2"] = nil
--tItem[721779]["OptionFunc2"] = "" --可自定义所接函数，为""或nil时跳过
--tItem[721779]["OptionPoint2"] = "2-1" --可自定义所接对白，有“-”号则直接索引到指定Text，不再循环查找对白

--tItem[721779]["Option212"] = "Option212"
--tItem[721779]["OptionChkFunc212"] = nil
--tItem[721779]["OptionFunc212"] = "" --可自定义所接函数，为""或nil时跳过
--tItem[721779]["OptionPoint212"] = "" --为nil或""则相当于接空



