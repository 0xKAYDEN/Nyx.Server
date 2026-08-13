------------------------------------------------------------------------------------
--Name：         190505[英文征服][活动脚本]CO猫活动背包信和游戏内弹窗制作
--Creator:      耿力兀
--Created:     2019-05-05
------------------------------------------------------------------------------------
--任务需求：
--宣传图时间：5.7-5.11
--背包信发送时间：5.7-5.29
--背包信使用时间：5.7-6.5
--宣传图链接：https://co.99.com/guide/event/2019/tiktok/index.shtml
--背包信链接：http://bit.ly/2Pzvfl1
------------------------------------------------------------------------------------
--前缀：COLuckyCat_
--stc掩码： 194	61	背包信
--			194	62	宣传图弹出

----------------------------------表配置部分--------------------------------------------
local tCOLuckyCat_Data={}
	tCOLuckyCat_Data["Picture_web"] = "https://co.99.com/guide/event/2019/tiktok/index.shtml"	--宣传图网页
	tCOLuckyCat_Data["The_web"] = "http://bit.ly/2Pzvfl1"
	
local tCOLuckyCat_Stc = {}
	tCOLuckyCat_Stc["EventType"] = 194
    tCOLuckyCat_Stc["DataType"] = 62
	tCOLuckyCat_Stc["RewardData"] = 1
	tCOLuckyCat_Stc["RewardDelay"] = 1
	tCOLuckyCat_Stc["RewardTimeType"] = 4

----------------------------------逻辑部分---------------------------------------------
--上线触发
function COLuckyCat_Login()
	if not Sys_ChkFullTime(tActivityTime["COLuckyCat"]["ActivityTime"]) then 
		return 
	end 
	
	local nEvent = tCOLuckyCat_Stc["EventType"]
	local nType = tCOLuckyCat_Stc["DataType"]
	
	--隔天
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	
	--已弹出
	if Task_ChkStcValue(nEvent, nType, ">", 0) then
		return
	end
	--加掩码
	Task_AddStatistic(nEvent,nType,1,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	--弹出宣传图
	local nUserId = Get_UserId()
	User_SendWebDialog(tCOLuckyCat_Data["Picture_web"],nUserId)
end

--背包信网页
function COLuckyCat_OpenWeb(nItemId)
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["COLuckyCat"]["LetterUseTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tCOLuckyCat_Text[3312442]["TimeOut"])
		end 
		return 
	end
	local nUserId = Get_UserId()
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		User_SendWebPage(tCOLuckyCat_Data["The_web"],nUserId)
	end 
end 


--上线触发
 table.insert(tSystem_PlayLogin_Func,COLuckyCat_Login)


---------------------------------物品部分---------------------------------------------
tItemFace[3312442] = 2219
tItem[3312442] = tItem[3312442] or {}
tItem[3312442]["Text1-1"] = {111,112,113}
tItem[3312442]["Text111"] = tCOLuckyCat_Text[3312442]["Text111"]
tItem[3312442]["Text112"] = tCOLuckyCat_Text[3312442]["Text112"]
tItem[3312442]["Text113"] = tCOLuckyCat_Text[3312442]["Text113"]
tItem[3312442]["tOption1-1"] = {111}
tItem[3312442]["Option111"] = tCOLuckyCat_Text[3312442]["Option111"]
tItem[3312442]["OptionFunc111"]="COLuckyCat_OpenWeb</N>3312442"
