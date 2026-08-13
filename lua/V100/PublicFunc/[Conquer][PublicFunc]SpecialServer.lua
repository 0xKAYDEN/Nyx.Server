----------------------------------------------------------------------------
--Name:		[征服][公用函数]特殊服务器判断接口.lua
--Purpose:	特殊服务器判断接口
--Creator: 	郑鋆
--Created:	2018/09/06
----------------------------------------------------------------------------

-- 命名前缀
-- SpecialServer_


-- 常量表
local tSpecialServer_Constant = {}
	-- 无赠品服务器的标识（为0表示普通服，为1表示无赠品服务器）
	tSpecialServer_Constant["NoGift"] = {}
	tSpecialServer_Constant["NoGift"]["Flag"] = 0
	tSpecialServer_Constant["NoGift"]["GlobalId"] = 52961
	tSpecialServer_Constant["NoGift"]["GlobalPos"] = 0

	-- 奋斗服服务器的标识（为0表示非奋斗服，为1表示奋斗服）
	tSpecialServer_Constant["StrugglingSuit"] = {}
	tSpecialServer_Constant["StrugglingSuit"]["Flag"] = 0
	tSpecialServer_Constant["StrugglingSuit"]["GlobalId"] = 52599
	tSpecialServer_Constant["StrugglingSuit"]["GlobalPos"] = 0
	
	-- 绿色新服服务器的标识（为0表示非绿色新服，为1表示绿色新服）
	tSpecialServer_Constant["Green"] = {}
	tSpecialServer_Constant["Green"]["Flag"] = 0
	tSpecialServer_Constant["Green"]["GlobalId"] = 53779
	tSpecialServer_Constant["Green"]["GlobalPos"] = 0

-- 服务器启动时触发
function SpecialServer_StartServer()
	for i,v in pairs(tSpecialServer_Constant) do
		local nGlobalId = v["GlobalId"]
		local nPos = v["GlobalPos"]
		local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
		local nNeedData = v["Data"] or 1
		
		if nData >= nNeedData then
			v["Flag"] = 1
		end
	end
end

-- 判断是否是无赠品服务器
function SpecialServer_ChkNoGiftServer()
	if tSpecialServer_Constant["NoGift"]["Flag"] == 1 then
		return true
	else
		return false
	end
end

-- 判断是否是奋斗服
function SpecialServer_ChkStrugglingSuit()
	if tSpecialServer_Constant["StrugglingSuit"]["Flag"] == 1 then
		return true
	else
		return false
	end
end

-- 判断是否是绿色新服
function SpecialServer_ChkGreenServer()
	if tSpecialServer_Constant["Green"]["Flag"] == 1 then
		return true
	else
		return false
	end
end

tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],SpecialServer_StartServer)