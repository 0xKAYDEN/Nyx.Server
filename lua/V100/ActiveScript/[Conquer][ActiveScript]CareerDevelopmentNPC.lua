------------------------------------------------------------------------------------
--Name：            190320[英文征服][活动脚本]4月全球江湖实力排行榜NPC制作
--Creator:      蔡颖静
--Created:     2019/03/20
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--lua.ini:41201

----------------------------------表配置部分--------------------------------------------
	local tCareerDevelopmentNPC_Data={}

	--网页链接
	tCareerDevelopmentNPC_Data["Web"]="https://wtop.zf.99.com/?lang=en"

----------------------------------逻辑部分---------------------------------------------
--打开链接
function CareerDevelopmentNPC_Link()
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["CareerDevelopmentNPC"]["ActivityTime"])  then
		return
	end
	local sWebPage = tCareerDevelopmentNPC_Data["Web"]
	User_SendWebPage(sWebPage)
end






----------------------------------NPC部分---------------------------------------------
tNpcFace[6517] = 85
tNpcGossip[24038]= tNpcGossip[24038] or DefaultNpc:new{}
tNpcGossip[24038]["OptionHidden"] = 1
tNpcGossip[24038]["DialogueText"] = tCareerDevelopmentNPC_Text[24038]

--活动前
tNpcGossip[24038]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[24038]["tOption1-1"] = {1}
tNpcGossip[24038]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["CareerDevelopmentNPC"]["ActivityTime"])
end

--活动中
tNpcGossip[24038]["Text1-2"] = {121,122,123,124}
tNpcGossip[24038]["tOption1-2"] = {2,3}
tNpcGossip[24038]["ChkFunc1-2"] = function()
--判断活动时间
	if not Sys_ChkFullTime(tActivityTime["CareerDevelopmentNPC"]["ActivityTime"])  then
		return false
	else
		return true
	end 
end 

tNpcGossip[24038]["OptionFunc2"] = "CareerDevelopmentNPC_Link"