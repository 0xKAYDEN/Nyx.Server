------------------------------------------------------------------------------------
--Name:		191103[简体征服][任务脚本]全球万圣节调查问卷
--Creator: 	兰瑞妹
--Created:	2019/11/03
------------------------------------------------------------------------------------

-- 命名前缀
-- Halloween_Questionnaire_

-- 复用注意：
-- 复用需修改对白、时间，若有背包信要将背包信打开注释
-- NPCface也需要更改，NPCX使用6212，NPC使用3879，对应ini也注意修改
-- 对应语种的网页链接直接替换
-- 特别声明：若提供的网页链接末尾没有‘？’需手动加上
--------------------------------------数据配置部分--------------------------------------
-- 常量表
local tHalloween_Questionnaire_Count = {}
	-- 活动时间
	tHalloween_Questionnaire_Count["ActivityTime"] = tActivityTime["HalloweenQuestionnaire"]["ActivityTime"]
	
	-- 链接
	tHalloween_Questionnaire_Count["WebLink"] = {}
	-- 1是简体，2是英文，3是西语，4是阿语
	tHalloween_Questionnaire_Count["WebLink"][1] = "https://sdwj.99.com/q/ErUVnm?%s"
	tHalloween_Questionnaire_Count["WebLink"][2] = "https://sdwj.99.com/q/rUNBra?%s"
	tHalloween_Questionnaire_Count["WebLink"][3] = "http://wj.sd.99.com/q/uauAJz?%s"
	tHalloween_Questionnaire_Count["WebLink"][4] = "http://wj.sd.99.com/q/eqmIbe?%s"
	-- 后续
	tHalloween_Questionnaire_Count["Next"] = "ServerID=%d&UserID=%d"
	

--------------------------------------逻辑配置部分--------------------------------------
-- 查看调查问卷
function Halloween_Questionnaire_ReceiveItem(nNpcId)
	if not Sys_ChkFullTime(tHalloween_Questionnaire_Count["ActivityTime"]) then
		return
	end
	
	local nNowUserId = Get_UserId()
	local nServerId = Get_UserServerId(nNowUserId)
	-- 加密字符串
	local sNext = string.format(tHalloween_Questionnaire_Count["Next"],nServerId,nNowUserId)
	local sLast = Halloween_Questionnaire_EncryptChar(sNext)
	
	local nNation = User_ChkLanguage(nNowUserId)


	local sPageWeb = string.format(tHalloween_Questionnaire_Count["WebLink"][nNation],sLast)
	-- 进入线下页面
	User_SendWebPage(sPageWeb,nNowUserId)
end

-- 加密字符串
-- 加密算法为：依次将每个字符的ASCII码加上6，最后将得到的新字符串倒序。
-- 解密方式：字符串倒序取ASCII码，依次将ASCII码减去6，转成字符
function Halloween_Questionnaire_EncryptChar(sNext)
	local sLast = ""
	local nLength =tonumber(string.len(sNext))
	for i=1,nLength do
		local sChar = string.sub(sNext,i,i)
		local nAscII = string.byte(sChar)
		local nChangeAscII = nAscII + 6
		-- local nChangeAscII = nAscII*2 + 10
		-- if nChangeAscII > tHalloween_Questionnaire_Count["High"] then
			-- nChangeAscII = math.floor(nChangeAscII/2)
		-- end
		local sNew = string.char(nChangeAscII)
		sLast = sLast..sNew
	end
	return string.reverse(sLast)
end

--------------------------------------NPC模块--------------------------------------
-- 25569,'万圣女巫'
tNpcFace[6212] = 206
-- tNpcFace[3879] = 192
tNpcGossip[25569] = tNpcGossip[25569] or DefaultNpc:new{}
tNpcGossip[25569]["OptionHidden"] = 1
tNpcGossip[25569]["DialogueText"] = tHalloween_Questionnaire_Text[25569] 
-- 简体
tNpcGossip[25569]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[25569]["tOption1-1"] = {111,112}
tNpcGossip[25569]["OptionFunc111"] = "Halloween_Questionnaire_ReceiveItem</N>25569"


