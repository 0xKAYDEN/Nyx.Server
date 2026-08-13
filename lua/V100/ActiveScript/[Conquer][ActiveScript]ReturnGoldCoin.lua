------------------------------------------------------------------------------------
--Name：            191111[英文征服][活动脚本]12月新服专属-博弈失败返金币（12.17）
--Creator:      郑飞
--Created:     2019-11-11
------------------------------------------------------------------------------------
--任务需求：
-- #更新时间：
-- #12月17日（周二）例行维护时
-- #活动时间：
-- #长期
-- #服务器：
-- #只刷12月新服NewSoul
-- #活动说明：
-- #记录用户博弈数据，根据log给用户返还奖励。
-- #==制作一个NPC，选项：引导玩家进入线下页面  选项2：打开商店
-- #任务来自：http://forum.nderp.99.com/Forum/TopicList-351496.aspx
------------------------------------------------------------------------------------
-- 命名前缀：ReturnGoldCoin
-- lua.ini:41618 = V100\ActiveScript\[Conquer][ActiveScript]ReturnGoldCoin.lua
-- cnlua.txt:41618 = V100\活动脚本\[征服][活动脚本]博弈失败返金币（12.17）.lua
----------------------------------表配置部分--------------------------------------------
local tReturnGoldCoin_Data = {}
	tReturnGoldCoin_Data["Link"] = "https://coevent.99.com/newserver1912/client/" 

----------------------------------逻辑部分---------------------------------------------
--跳转内嵌网页
function ReturnGoldCoin_OpenWebDialog()
	
	local sLink = tReturnGoldCoin_Data["Link"]
	User_SendWebDialog(sLink)
end

----------------------------------NPC部分---------------------------------------------
tNpcFace[5716] = 21
tNpcGossip[25591]= tNpcGossip[25591] or DefaultNpc:new{}
tNpcGossip[25591]["OptionHidden"] = 1
tNpcGossip[25591]["DialogueText"] = tReturnGoldCoin_Text[25591]

tNpcGossip[25591]["Text1-1"] = {111,112,113}
tNpcGossip[25591]["tOption1-1"] = {111,112}
tNpcGossip[25591]["OptionFunc111"] = "User_OpenDialog"
tNpcGossip[25591]["OptionFunc112"] = "ReturnGoldCoin_OpenWebDialog"

