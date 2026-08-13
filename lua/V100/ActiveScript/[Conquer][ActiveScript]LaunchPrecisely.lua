------------------------------------------------------------------------------------
--Name：        191029[英文征服][活动脚本]问卷背包信精准投放
--Creator:      冯子鑫

--Created:     2019-10-29
------------------------------------------------------------------------------------
--任务需求：
--前缀：LaunchPrecisely_
-- logid: 12001716
------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
--跳转网页
local tLaunchPrecisely_Stcwel = {}
	tLaunchPrecisely_Stcwel["Wel"] = "https://forms.gle/kTHmRjLhoBx4xPZg7"
	--物品id
	tLaunchPrecisely_Stcwel["ItemtypeId"] = 3326777
--log
	tLaunchPrecisely_Stcwel["Log"]={}
	--删除道具log
	tLaunchPrecisely_Stcwel["Log"][3326777] = "0,0,3326777,%d,12001716,2,0,0"

----------------------------------逻辑部分---------------------------------------------
--打开问卷网页
function LaunchPrecisely_OpenWel()
	--判断是否有该物品
	if Item_ChkItem(tLaunchPrecisely_Stcwel["ItemtypeId"]) and Item_DelItem(tLaunchPrecisely_Stcwel["ItemtypeId"]) then 
		--跳转网页
		User_SendWebPage(tLaunchPrecisely_Stcwel["Wel"])
		--记删除道具log
		local str = string.format(tLaunchPrecisely_Stcwel["Log"][3326777],1)
		Sys_SaveActionFestivalLog(str)
	end
end
---------------------------------物品部分---------------------------------------------
--问卷背包信
tItemFace[3326777] = 1718
tItem[3326777] = tItem[3326777] or {}
tItem[3326777]["DialogueText"] = tLaunchPrecisely_Text[3326777]
--选择奖励
tItem[3326777]["Text1-1"] = {111}
tItem[3326777]["tOption1-1"] = {1,2}
tItem[3326777]["OptionFunc1"]="LaunchPrecisely_OpenWel"

