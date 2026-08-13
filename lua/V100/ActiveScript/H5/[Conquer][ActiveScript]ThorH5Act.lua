------------------------------------------------------------------------------------
--Name：       190130[简体征服][活动脚本]烦请内嵌新资料片雷神冲榜活动页面
--Creator:     洪聪敏
--Created:     2019-01-30
------------------------------------------------------------------------------------
--命名前缀：
--ThorH5Act_
--Stc:(189,97) 背包信


------------------------------------------------------------------------------------

--网页
local tThorH5Act_Web = {}
	tThorH5Act_Web["Web"] = "https://hd.zf.99.com/lscb/"
	
	
-------------------------------------逻辑部分---------------------------------------
function ThorH5Act_OpenH5()
	local nUserId = Get_UserId()
	
	if not Sys_ChkFullTime(tActivityTime["ThorH5Act"]["ActivityTime"]) then
		return
	end
	--打开网页
	User_SendWebDialog(tThorH5Act_Web["Web"],nUserId)
end

--------------------------------------NPC部分-------------------------------------------

tNpcFace[6267] = 57
tNpcGossip[23729] = tNpcGossip[23729] or DefaultNpc:new{}
tNpcGossip[23729]["OptionHidden"] = 1
tNpcGossip[23729]["DialogueText"] = tThorH5Act_Text[23729]
-- 活动前
tNpcGossip[23729]["Text1-1"] = {111,112,114}
tNpcGossip[23729]["tOption1-1"] = {111}
tNpcGossip[23729]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["ThorH5Act"]["ActivityTime"])
end

-- 活动后
tNpcGossip[23729]["Text1-2"] = {211}
tNpcGossip[23729]["tOption1-2"] = {211}
tNpcGossip[23729]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tActivityTime["ThorH5Act"]["ActivityTime"])
end

-- 活动中 不符合职业
tNpcGossip[23729]["Text1-3"] = {311,312,314}
tNpcGossip[23729]["tOption1-3"] = {311,312}
-- tNpcGossip[23729]["ChkFunc1-3"] = function ()
	-- local nProfession = Get_UserProfession()
	-- if Sys_ChkFullTime(tActivityTime["ThorH5Act"]["ActivityTime"]) then
		-- if nProfession >= G_PRO_Thor0 and nProfession <= G_PRO_Thor5 then
			-- return false
		-- else
			-- return true
		-- end
	-- end
	-- return false
-- end
tNpcGossip[23729]["OptionFunc311"] = "ThorH5Act_OpenH5"

-- 活动中 符合职业
-- tNpcGossip[23729]["Text1-4"] = {411,412,413,414}
-- tNpcGossip[23729]["tOption1-4"] = {411,412}
-- tNpcGossip[23729]["OptionFunc411"] = "ThorH5Act_OpenH5"
-- tNpcGossip[23729]["ChkFunc1-4"] = function ()
	-- local nProfession = Get_UserProfession()
	-- if Sys_ChkFullTime(tActivityTime["ThorH5Act"]["ActivityTime"]) then
		-- if nProfession >= G_PRO_Thor0 and nProfession <= G_PRO_Thor5 then
			-- return true
		-- else
			-- return false
		-- end
	-- end
	-- return false
-- end
	