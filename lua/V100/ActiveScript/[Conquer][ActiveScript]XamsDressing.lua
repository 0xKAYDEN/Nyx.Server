------------------------------------------------------------------------------------
--Name：            171214[英文征服][活动脚本]12月游戏氛围制作
--Creator:      杨艳
--Created:     2017/12/14
------------------------------------------------------------------------------------
--任务需求
-- 任务概述：
-- 制作游戏内圣诞氛围：
-- 设计下雪，放圣诞音乐，放雪人NPC，放场景效果

-----------------------------------------------------------------------------------
--命名前缀 XamsDressing_




---------------------------------------------------------------------------------------------------
--圣诞树对白
tNpcFace[4916] = 201
tNpcGossip[22445]= tNpcGossip[22445] or DefaultNpc:new{}
tNpcGossip[22445]["OptionHidden"] = 1
tNpcGossip[22445]["Text1-1"] = {111}
tNpcGossip[22445]["Text111"] = tXamsDressing_Text[22445]["Text111"]
tNpcGossip[22445]["tOption1-1"] = {111}
tNpcGossip[22445]["Option111"] = tXamsDressing_Text[22445]["Option111"]

tNpcGossip[22446] = tNpcGossip[22445]
tNpcGossip[22447] = tNpcGossip[22445]
tNpcGossip[22448] = tNpcGossip[22445]
tNpcGossip[22449] = tNpcGossip[22445]
tNpcGossip[22450] = tNpcGossip[22445]
tNpcGossip[22451] = tNpcGossip[22445]
tNpcGossip[22452] = tNpcGossip[22445]
tNpcGossip[22453] = tNpcGossip[22445]
tNpcGossip[22454] = tNpcGossip[22445]
tNpcGossip[22455] = tNpcGossip[22445]
tNpcGossip[22456] = tNpcGossip[22445]
tNpcGossip[22457] = tNpcGossip[22445]
tNpcGossip[22458] = tNpcGossip[22445]
tNpcGossip[22459] = tNpcGossip[22445]
           
--雪人 Tinkey
tNpcFace[4917] = 220
tNpcGossip[22460]= tNpcGossip[22460] or DefaultNpc:new{}
tNpcGossip[22460]["OptionHidden"] = 1
tNpcGossip[22460]["Text1-1"] = {111}
tNpcGossip[22460]["Text111"] = tXamsDressing_Text[22460]["Text111"] 
tNpcGossip[22460]["ChkFunc1-1"]= function()
	-- math.randomseed(os.time())
	local nText = math.random(111,113)
	tNpcGossip[22460]["Text111"] = tXamsDressing_Text[22460]["Text" .. nText]
	return true
end
tNpcGossip[22460]["tOption1-1"] = {111}
tNpcGossip[22460]["Option111"] = tXamsDressing_Text[22460]["Option111"]

tNpcGossip[22461] = tNpcGossip[22460]
tNpcGossip[22462] = tNpcGossip[22460]
tNpcGossip[22463] = tNpcGossip[22460]
tNpcGossip[22464] = tNpcGossip[22460]
tNpcGossip[22465] = tNpcGossip[22460]
tNpcGossip[22466] = tNpcGossip[22460]
tNpcGossip[22467] = tNpcGossip[22460]
tNpcGossip[22468] = tNpcGossip[22460]
tNpcGossip[22469] = tNpcGossip[22460]
tNpcGossip[22470] = tNpcGossip[22460]
tNpcGossip[22471] = tNpcGossip[22460]
tNpcGossip[22472] = tNpcGossip[22460]
tNpcGossip[22473] = tNpcGossip[22460]
tNpcGossip[22474] = tNpcGossip[22460]
tNpcGossip[22475] = tNpcGossip[22460]

--雪人 Disy
tNpcFace[4918] = 220
tNpcGossip[22476]= tNpcGossip[22476] or DefaultNpc:new{}
tNpcGossip[22476]["OptionHidden"] = 1
tNpcGossip[22476]["Text1-1"] = {111}
tNpcGossip[22476]["Text111"] = tXamsDressing_Text[22476]["Text111"] 
tNpcGossip[22476]["ChkFunc1-1"]= function()
	-- math.randomseed(os.time())
	local nText = math.random(111,113)
	tNpcGossip[22476]["Text111"] = tXamsDressing_Text[22476]["Text" .. nText]
	return true
end
tNpcGossip[22476]["tOption1-1"] = {111}
tNpcGossip[22476]["Option111"] = tXamsDressing_Text[22476]["Option111"]

tNpcGossip[22477] = tNpcGossip[22476]
tNpcGossip[22478] = tNpcGossip[22476]
tNpcGossip[22479] = tNpcGossip[22476]
tNpcGossip[22480] = tNpcGossip[22476]
tNpcGossip[22481] = tNpcGossip[22476]
tNpcGossip[22482] = tNpcGossip[22476]
tNpcGossip[22483] = tNpcGossip[22476]
tNpcGossip[22484] = tNpcGossip[22476]
tNpcGossip[22485] = tNpcGossip[22476]
tNpcGossip[22486] = tNpcGossip[22476]
tNpcGossip[22487] = tNpcGossip[22476]
tNpcGossip[22488] = tNpcGossip[22476]
tNpcGossip[22489] = tNpcGossip[22476]

--雪人 Por
tNpcFace[4919] = 220
tNpcGossip[22490]= tNpcGossip[22490] or DefaultNpc:new{}
tNpcGossip[22490]["OptionHidden"] = 1
tNpcGossip[22490]["Text1-1"] = {111}
tNpcGossip[22490]["Text111"] = tXamsDressing_Text[22490]["Text111"] 
tNpcGossip[22490]["ChkFunc1-1"]= function()
	-- math.randomseed(os.time())
	local nText = math.random(111,113)
	tNpcGossip[22490]["Text111"] = tXamsDressing_Text[22490]["Text" .. nText]
	return true
end
tNpcGossip[22490]["tOption1-1"] = {111}
tNpcGossip[22490]["Option111"] = tXamsDressing_Text[22490]["Option111"]

tNpcGossip[22491] = tNpcGossip[22490]
tNpcGossip[22492] = tNpcGossip[22490]
tNpcGossip[22493] = tNpcGossip[22490]
tNpcGossip[22494] = tNpcGossip[22490]
tNpcGossip[22495] = tNpcGossip[22490]
tNpcGossip[22496] = tNpcGossip[22490]
tNpcGossip[22497] = tNpcGossip[22490]
tNpcGossip[22498] = tNpcGossip[22490]
tNpcGossip[22499] = tNpcGossip[22490]
tNpcGossip[22500] = tNpcGossip[22490]
tNpcGossip[22501] = tNpcGossip[22490]
tNpcGossip[22502] = tNpcGossip[22490]
tNpcGossip[22503] = tNpcGossip[22490]
tNpcGossip[22504] = tNpcGossip[22490]
tNpcGossip[22505] = tNpcGossip[22490]




