------------------------------------------------------------------------------------
--Name:		[征服][任务脚本]德州俱乐部宣传NPC和背包信制作.lua
--Purpose:	德州俱乐部宣传NPC和背包信制作
--Creator: 	张世超
--Created:	2016/02/01
------------------------------------------------------------------------------------
-- 命名前缀
-- Texas

-- 常量表
local tTexas_Cont = {}
	-- tTexas_Cont["WebSite"] ="https://www.baidu.com/"
	tTexas_Cont["WebSite"] = "https://www.facebook.com/COPokerClub/"



--------------------------------------------逻辑部分-----------------------------------------------
function Texas_WebSite()
	User_SendWebPage(tTexas_Cont["WebSite"])
end



--------------------------------------------NPC部分-----------------------------------------------
tNpcFace[4007] = 119 --复查头像
tNpcGossip[10993] = tNpcGossip[10993] or DefaultNpc:new{}
tNpcGossip[10993]["OptionHidden"] = 1


--NPC：荷官金小妹
tNpcGossip[10993]["Text1-1"] = {111,112,113}
tNpcGossip[10993]["tOption1-1"] = {1,2}
tNpcGossip[10993]["Text111"] = tTexas_Text[10993]["Text111"]
tNpcGossip[10993]["Text112"] = tTexas_Text[10993]["Text112"]
tNpcGossip[10993]["Text113"] = tTexas_Text[10993]["Text113"]
tNpcGossip[10993]["Option1"] = tTexas_Text[10993]["Option1"]
tNpcGossip[10993]["Option2"] = tTexas_Text[10993]["Option2"]
tNpcGossip[10993]["OptionFunc1"] = "Texas_WebSite"
tNpcGossip[10993]["ChkFunc1-1"] = function ()
	return true
end 


--------------------------------------------物品部分-----------------------------------------------
-- 背包信
tItem[3005642] = tItem[3005642] or {}
tItem[3005642]["Text1-1"] = {111,112}
tItem[3005642]["Text111"] = tTexas_Text[3005642]["Text111"]
tItem[3005642]["Text112"] = tTexas_Text[3005642]["Text112"]
tItem[3005642]["tOption1-1"] = {1,2}
tItem[3005642]["Option1"] = tTexas_Text[3005642]["Option1"]
tItem[3005642]["Option2"] = tTexas_Text[3005642]["Option2"]
tItem[3005642]["OptionFunc1"] = "Texas_WebSite"











