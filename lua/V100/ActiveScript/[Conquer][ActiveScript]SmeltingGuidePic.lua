------------------------------------------------------------------------------------
--Name：181203[简体征服][活动脚本]熔炼炉版本活动修改
--Creator:      洪聪敏
--Created:     2018/12/04
------------------------------------------------------------------------------------
--更新后首次上线增加一个弹框图片
--增加一个NPC，用于打开版本专题的内嵌页面，NPC本身还可以介绍一下熔炼活动玩法

--lua.ini:41072
--命名前缀:SmeltingGuidePic_
--(186,84)  首次登陆出引导图
--------------------------------------------------------------------------------------
local tSmeltingGuidePic_Cont = {}
	tSmeltingGuidePic_Cont["PicId"] = 1043
	tSmeltingGuidePic_Cont["Web"] = "http://co.99.com/guide/event/2018/melt/client/850x480.shtml"
	tSmeltingGuidePic_Cont["Web1"] = "http://co.99.com/guide/event/2018/melt/client/800x600.shtml"
	
local tSmeltingGuidePic_Stc = {}
	tSmeltingGuidePic_Stc["EventType"] = 186
	tSmeltingGuidePic_Stc["DataType"] = 84
-----------------------------------逻辑部分-------------------------------------------
--上线出引导页面
function SmeltingGuidePic_Online()
	local nEventType = tSmeltingGuidePic_Stc["EventType"]
	local nDataType = tSmeltingGuidePic_Stc["DataType"]
	if Task_ChkStcValue(nEventType,nDataType,"<",1) then
		User_SendWebDialog(tSmeltingGuidePic_Cont["Web1"])
		--打掩码
		Task_SetStatistic(nEventType,nDataType,1,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end
end
--点击出内嵌页面
function SmeltingGuidePic_ClickWeb()
	User_SendWebDialog(tSmeltingGuidePic_Cont["Web"])
end


-----------------------------------NPC配置-----------------------------------
tNpcFace[1463]=123
tNpcFace[1464]=123
tNpcGossip[23585]=tNpcGossip[23585] or DefaultNpc:new{}
tNpcGossip[23585]["OptionHidden"]=1
tNpcGossip[23585]["DialogueText"]=tSmeltingGuidePic_Text[23585]


tNpcGossip[23585]["Text1-1"]={111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115,1116,1117}
tNpcGossip[23585]["tOption1-1"]={111,112}
tNpcGossip[23585]["OptionFunc111"] = "SmeltingGuidePic_ClickWeb"
tNpcGossip[23585]["OptionPoint112"] = "2-1"

--熔炼材料及熔炼奖励
tNpcGossip[23585]["Text2-1"]={211,212,213,214,215,216,217}
tNpcGossip[23585]["tOption2-1"]={211,212,213,214,215,216}
tNpcGossip[23585]["OptionPoint211"] = "3-1"
tNpcGossip[23585]["OptionPoint212"] = "4-1"
tNpcGossip[23585]["OptionPoint213"] = "5-1"
tNpcGossip[23585]["OptionPoint214"] = "6-1"
tNpcGossip[23585]["OptionPoint215"] = "7-1"
tNpcGossip[23585]["OptionPoint216"] = "8-1"

--龙珠
tNpcGossip[23585]["Text3-1"]={311,312,313,314,315,316,317,318,319,3110,3111,3112}
tNpcGossip[23585]["tOption3-1"]={311,312}
tNpcGossip[23585]["OptionPoint311"] = "2-1"

--乾坤袋
tNpcGossip[23585]["Text4-1"]={411,412,413,414,415,416,417,418,419,4110,4111,4112}
tNpcGossip[23585]["tOption4-1"]={411,412}
tNpcGossip[23585]["OptionPoint411"] = "2-1"

--良品宝石
tNpcGossip[23585]["Text5-1"]={511,512,513,514,515,516,517,518,519,5110}
tNpcGossip[23585]["tOption5-1"]={511,512}
tNpcGossip[23585]["OptionPoint511"] = "2-1"

--优质宝石
tNpcGossip[23585]["Text6-1"]={611,612,613,614,615,616,617,618}
tNpcGossip[23585]["tOption6-1"]={611,612}
tNpcGossip[23585]["OptionPoint611"] = "2-1"

--神纹源晶
tNpcGossip[23585]["Text7-1"]={711,712,713,714,715,716,717,718}
tNpcGossip[23585]["tOption7-1"]={711,712}
tNpcGossip[23585]["OptionPoint711"] = "2-1"

--练功道具
tNpcGossip[23585]["Text8-1"]={811,812,813,814,815,816,817,818,819,8110,8111,8112}
tNpcGossip[23585]["tOption8-1"]={811,812}
tNpcGossip[23585]["OptionPoint811"] = "2-1"


tNpcGossip[23586]= tNpcGossip[23585] or DefaultNpc:new{}
-----------------------------------上线触发-----------------------------------
-- tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- table.insert(tSystem_PlayLogin_Func,SmeltingGuidePic_Online)
