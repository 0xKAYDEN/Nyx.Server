------------------------------------------------------------------------------------
--Name：        190418[英文征服][活动脚本]线上充值返利（5.7-5.27）
--Creator:      耿力兀

--Created:     2019-04-18
------------------------------------------------------------------------------------
--任务需求：
--前缀：RecargarRebate_
--logId:12001374
------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tRecargarRebate_Reward = {}
	-- ===RefinedRuneCrystalPack
	-- ===索引: 3312243
	-- ===删除: 3312243,1
	-- ===
	tRecargarRebate_Reward[3312243] = {}
	tRecargarRebate_Reward[3312243]["LogId"] = 12001374
	tRecargarRebate_Reward[3312243]["DeleteItem"] = {}
	tRecargarRebate_Reward[3312243]["DeleteItem"][1] = {}
	tRecargarRebate_Reward[3312243]["DeleteItem"][1]["Id"] = 3312243 -- 【库】RefinedRuneCrystalPack[属性:9]
	tRecargarRebate_Reward[3312243]["RewardItem"] = {}
	tRecargarRebate_Reward[3312243]["RewardItem"][1] = {}
	tRecargarRebate_Reward[3312243]["RewardItem"][1]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9]【表格】良品神纹源晶*6
	tRecargarRebate_Reward[3312243]["RewardItem"][1]["Attr"] = "0 6" -- MysticRuneStone*6
	tRecargarRebate_Reward[3312243]["EmoneyLog"] = "350	22184	0	0	1	"

	-- ===SplendidStarPack
	-- ===索引: 3312244
	-- ===删除: 3312244,1
	-- ===
	tRecargarRebate_Reward[3312244] = {}
	tRecargarRebate_Reward[3312244][1] = {}
	tRecargarRebate_Reward[3312244][1]["RewardItem"] = {}
	tRecargarRebate_Reward[3312244][1]["RewardItem"][1] = {}
	tRecargarRebate_Reward[3312244][1]["RewardItem"][1]["Id"] = 3009003 -- 【库】SplendidStarStone[属性:9]【表格】璀璨星陨石*5
	tRecargarRebate_Reward[3312244][1]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的SplendidStarStone*5
	tRecargarRebate_Reward[3312244][1]["LogId"] = 12001374
	tRecargarRebate_Reward[3312244][1]["EmoneyLog"] = "350	22187	0	0	1	"
	tRecargarRebate_Reward[3312244][1]["DeleteItem"] = {}
	tRecargarRebate_Reward[3312244][1]["DeleteItem"][1] = {}
	tRecargarRebate_Reward[3312244][1]["DeleteItem"][1]["Id"] = 3312244 -- 【库】SplendidStarPack[属性:9]
	tRecargarRebate_Reward[3312244][2] = {}
	tRecargarRebate_Reward[3312244][2]["RewardStrengthValue"] = {}
	tRecargarRebate_Reward[3312244][2]["RewardStrengthValue"]["Value"] = 100000 -- 气力值
	tRecargarRebate_Reward[3312244][2]["LogId"] = 12001374
	tRecargarRebate_Reward[3312244][2]["EmoneyLog"] = "350	22187	0	0	1	"
	tRecargarRebate_Reward[3312244][2]["DeleteItem"] = {}
	tRecargarRebate_Reward[3312244][2]["DeleteItem"][1] = {}
	tRecargarRebate_Reward[3312244][2]["DeleteItem"][1]["Id"] = 3312244 -- 【库】SplendidStarPack[属性:9]
	
	tRecargarRebate_Reward[3312245] = {}
	-- ===BrightStarPack
	-- ===索引: tRecargarRebate_Reward[3312245]
	-- ===删除: 3312245,1
	-- ===
	tRecargarRebate_Reward[3312245]["LogId"] = 12001374
	tRecargarRebate_Reward[3312245]["EmoneyLog"] = "350	22181	0	0	1	"
	tRecargarRebate_Reward[3312245]["DeleteItem"] = {}
	tRecargarRebate_Reward[3312245]["DeleteItem"][1] = {}
	tRecargarRebate_Reward[3312245]["DeleteItem"][1]["Id"] = 3312245 -- 【库】 3312245 【库里没有该物品】[属性:]
	tRecargarRebate_Reward[3312245]["RewardItem"] = {}
	tRecargarRebate_Reward[3312245]["RewardItem"][1] = {}
	tRecargarRebate_Reward[3312245]["RewardItem"][1]["Id"] = 3009001 -- 【库】明亮星陨石[属性:9], 【表格】明亮星陨石
	tRecargarRebate_Reward[3312245]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	
	tRecargarRebate_Reward[3312443] = {}
	-- ===DragonBallPack
	-- ===索引:tRecargarRebate_Reward[3312443]
	-- ===删除: 3312443,1
	-- ===
	tRecargarRebate_Reward[3312443]["LogId"] = 12001374
	tRecargarRebate_Reward[3312443]["EmoneyLog"] = "350	22182	0	0	1	"
	tRecargarRebate_Reward[3312443]["DeleteItem"] = {}
	tRecargarRebate_Reward[3312443]["DeleteItem"][1] = {}
	tRecargarRebate_Reward[3312443]["DeleteItem"][1]["Id"] = 3312443 -- 【库】DragonBallPack[属性:9]
	tRecargarRebate_Reward[3312443]["RewardItem"] = {}
	tRecargarRebate_Reward[3312443]["RewardItem"][1] = {}
	tRecargarRebate_Reward[3312443]["RewardItem"][1]["Id"] = 1088000 -- 【库】DragonBall[属性:0], 【表格】龙珠
	tRecargarRebate_Reward[3312443]["RewardItem"][1]["Attr"] = "0 1" -- DragonBall*1
	
	tRecargarRebate_Reward[3312444] = {}
	-- ===DBScrollPack
	-- ===索引:tRecargarRebate_Reward[3312444]
	-- ===删除: 3312444,1
	-- ===
	tRecargarRebate_Reward[3312444]["LogId"] = 12001374
	tRecargarRebate_Reward[3312444]["EmoneyLog"] = "350	22183	0	0	1	"
	tRecargarRebate_Reward[3312444]["DeleteItem"] = {}
	tRecargarRebate_Reward[3312444]["DeleteItem"][1] = {}
	tRecargarRebate_Reward[3312444]["DeleteItem"][1]["Id"] = 3312444 -- 【库】DBScrollPack[属性:9]
	tRecargarRebate_Reward[3312444]["RewardItem"] = {}
	tRecargarRebate_Reward[3312444]["RewardItem"][1] = {}
	tRecargarRebate_Reward[3312444]["RewardItem"][1]["Id"] = 3200822 -- 【库】DBScroll[属性:9], 【表格】赠品龙珠卷
	tRecargarRebate_Reward[3312444]["RewardItem"][1]["Attr"] = "0 1" -- DBScroll*1
	
	tRecargarRebate_Reward[3312445] = {}
	-- ===P11AnimaPack
	-- ===索引: tRecargarRebate_Reward[3312445]
	-- ===删除: 3312445,1
	-- ===
	tRecargarRebate_Reward[3312445]["LogId"] = 12001374
	tRecargarRebate_Reward[3312445]["EmoneyLog"] = "350	22185	0	0	1	"
	tRecargarRebate_Reward[3312445]["DeleteItem"] = {}
	tRecargarRebate_Reward[3312445]["DeleteItem"][1] = {}
	tRecargarRebate_Reward[3312445]["DeleteItem"][1]["Id"] = 3312445 -- 【库】P11AnimaPack[属性:9]
	tRecargarRebate_Reward[3312445]["RewardItem"] = {}
	tRecargarRebate_Reward[3312445]["RewardItem"][1] = {}
	tRecargarRebate_Reward[3312445]["RewardItem"][1]["Id"] = 4200011 -- 【库】P11Anima[属性:8], 【表格】11阶灵珠
	tRecargarRebate_Reward[3312445]["RewardItem"][1]["Attr"] = "0 1" -- P11Anima*1
	tRecargarRebate_Reward[3312445]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	
	tRecargarRebate_Reward[3312446] = {}
	-- ===‘+8StonePack
	-- ===索引: tRecargarRebate_Reward[3312446]
	-- ===删除: 3312446,1
	-- ===
	tRecargarRebate_Reward[3312446]["LogId"] = 12001374
	tRecargarRebate_Reward[3312446]["EmoneyLog"] = "350	22186	0	0	1	"
	tRecargarRebate_Reward[3312446]["DeleteItem"] = {}
	tRecargarRebate_Reward[3312446]["DeleteItem"][1] = {}
	tRecargarRebate_Reward[3312446]["DeleteItem"][1]["Id"] = 3312446 -- 【库】+8StonePack[属性:9]
	tRecargarRebate_Reward[3312446]["RewardItem"] = {}
	tRecargarRebate_Reward[3312446]["RewardItem"][1] = {}
	tRecargarRebate_Reward[3312446]["RewardItem"][1]["Id"] = 3319157 -- 【库】+8StonePack(B)[属性:9], 【表格】赠品+8赤练石
	tRecargarRebate_Reward[3312446]["RewardItem"][1]["Attr"] = "0 1" -- +8StonePack(B)*1
	
	tRecargarRebate_Reward[3312447] = {}
	-- ===MountArmorPack
	-- ===索引: tRecargarRebate_Reward[3312447]
	-- ===删除: 3312447,1
	-- ===
	tRecargarRebate_Reward[3312447]["LogId"] = 12001374
	tRecargarRebate_Reward[3312447]["EmoneyLog"] = "350	22188	0	0	1	"
	tRecargarRebate_Reward[3312447]["DeleteItem"] = {}
	tRecargarRebate_Reward[3312447]["DeleteItem"][1] = {}
	tRecargarRebate_Reward[3312447]["DeleteItem"][1]["Id"] = 3312447 -- 【库】MountArmorPack[属性:9]
	tRecargarRebate_Reward[3312447]["RewardItem"] = {}
	tRecargarRebate_Reward[3312447]["RewardItem"][1] = {}
	tRecargarRebate_Reward[3312447]["RewardItem"][1]["Id"] = 200629 -- 【库】AuspiciousCloud[属性:0], 【表格】非赠神佑-1AuspiciousCloud
	tRecargarRebate_Reward[3312447]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑AuspiciousCloud*1


	tRecargarRebate_Reward[3312448] = {}
	-- ===ChiStudyPack
	-- ===索引: tRecargarRebate_Reward[3312448]
	-- ===删除: 3312448,1
	-- ===
	tRecargarRebate_Reward[3312448]["LogId"] = 12001374
	tRecargarRebate_Reward[3312448]["EmoneyLog"] = "350	22189	0	0	1	"
	tRecargarRebate_Reward[3312448]["DeleteItem"] = {}
	tRecargarRebate_Reward[3312448]["DeleteItem"][1] = {}
	tRecargarRebate_Reward[3312448]["DeleteItem"][1]["Id"] = 3312448 -- 【库】ChiStudyPack[属性:9]
	tRecargarRebate_Reward[3312448]["RewardItem"] = {}
	tRecargarRebate_Reward[3312448]["RewardItem"][1] = {}
	tRecargarRebate_Reward[3312448]["RewardItem"][1]["Id"] = 711903 -- 【库】ChiBooster(+1)[属性:9], 【表格】练气+1券
	tRecargarRebate_Reward[3312448]["RewardItem"][1]["Attr"] = "0 1" -- ChiBooster(+1)*1
----------------------------------逻辑部分---------------------------------------------
function RecargarRebate__RewardPakage (nItemId,nOption)
	RewardTemplate_UseItemAndMsg(tRecargarRebate_Reward[nItemId][nOption])
end

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3312243] = tItem[3312243] or {}
tItem[3312243]["Function"] = function(nItemId)
	RewardTemplate_UseItem(tRecargarRebate_Reward[nItemId])
end

tItem[3312245] = tItem[3312243] or {}
tItem[3312443] = tItem[3312243] or {}
tItem[3312444] = tItem[3312243] or {}
tItem[3312445] = tItem[3312243] or {}
tItem[3312446] = tItem[3312243] or {}
tItem[3312447] = tItem[3312243] or {}
tItem[3312448] = tItem[3312243] or {}


tItemFace[3312244] = 2196
tItem[3312244] = tItem[3312244] or {}
tItem[3312244]["Text1-1"] = {111}
tItem[3312244]["Text111"] =tRecargarRebate_Text[3312244]["Text111"]
tItem[3312244]["tOption1-1"] = {1,2,3}
tItem[3312244]["Option1"] = tRecargarRebate_Text[3312244]["Option1"]
tItem[3312244]["OptionPoint1"]="2-1"
tItem[3312244]["Option2"] = tRecargarRebate_Text[3312244]["Option2"]
tItem[3312244]["OptionPoint2"]="2-2"
tItem[3312244]["Option3"] = tRecargarRebate_Text[3312244]["Option3"]

tItem[3312244]["Text2-1"] = {211}
tItem[3312244]["Text211"] = tRecargarRebate_Text[3312244]["Text211"]
tItem[3312244]["tOption2-1"] = {4,5}
tItem[3312244]["Option4"] = tRecargarRebate_Text[3312244]["Option4"]
tItem[3312244]["OptionFunc4"]="RecargarRebate__RewardPakage</N>3312244</N>1"
tItem[3312244]["Option5"] = tRecargarRebate_Text[3312244]["Option5"]
tItem[3312244]["OptionPoint5"]="1-1" 

tItem[3312244]["Text2-2"] = {221}
tItem[3312244]["Text221"] = tRecargarRebate_Text[3312244]["Text221"]
tItem[3312244]["tOption2-2"] = {6,5}
tItem[3312244]["Option6"] = tRecargarRebate_Text[3312244]["Option6"]
tItem[3312244]["OptionFunc6"]="RecargarRebate__RewardPakage</N>3312244</N>2"