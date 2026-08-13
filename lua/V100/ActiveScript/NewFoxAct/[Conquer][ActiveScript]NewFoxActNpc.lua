------------------------------------------------------------------------------------
--Name:190219[简体征服][活动脚本]狐狸骑宠活动制作
--Creator:洪聪敏
--Created:2019/02/19
------------------------------------------------------------------------------------
--命名前缀：NewFoxActNpc_
--lua.ini:41159
--logid:12001301
 
--Stc:
--(190,89) 记录玩家狐狸骑宠成长值
--(190,90) 记录玩家狐狸骑宠饱腹感
--(190,91) 记录玩家狐狸骑宠变异值
--(191,00) 记录玩家狐狸骑宠当前等级
--(191,09) 记录玩家是否喂养过狐狸
--(191,13) 记录玩家狐狸的颜色--0：粉色 1：绿色 2：红黑 3：白色
--(191,14) 记录玩家掉落限量
--(191,35) 记录是否屏蔽二次确认
--(191,42) 使用正气令领取丹药
--备注：
--还需完善部分：
--骑宠回收功能细化案和文字都没体现，具体玩法需要完善
--怪物掉落部分细则未定
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
local tNewFoxActNpc_Cont = {}
	tNewFoxActNpc_Cont["PicId"] = {}
	tNewFoxActNpc_Cont["PicId"][1]= 1050
	tNewFoxActNpc_Cont["PicId"][2] = 1051
	tNewFoxActNpc_Cont["Level"] = 80
	tNewFoxActNpc_Cont["Mete"] = 0
	tNewFoxActNpc_Cont["Space"] = 1
	tNewFoxActNpc_Cont["MapDoc"] = 3983
	tNewFoxActNpc_Cont["MinFox"] = 200539
	--副本ID
	tNewFoxActNpc_Cont["InstanceId"] = 245
	tNewFoxActNpc_Cont["ActionId"] = 94488123
	--饱腹值固定100
	tNewFoxActNpc_Cont["Full"] = 100
	
	tNewFoxActNpc_Cont["ComPound"] = {200640,200639,200596}
	--变异值变异区间
	tNewFoxActNpc_Cont["Variation"] = {}
	--第一等500-1000
	tNewFoxActNpc_Cont["Variation"][1] = {500,1000}
	--第二等1000-2000
	tNewFoxActNpc_Cont["Variation"][2] = {1000,2000}
	
	--三种丹药
	tNewFoxActNpc_Cont["nItemId"] = {}
	tNewFoxActNpc_Cont["nItemId"][1] = 3320169
	tNewFoxActNpc_Cont["nItemId"][2] = 3320170
	tNewFoxActNpc_Cont["nItemId"][3] = 3320171
	
	
	
	--等级对应的狐狸
	tNewFoxActNpc_Cont["FoxLev"] = {}
	tNewFoxActNpc_Cont["FoxLev"][1] = {0,1}  --凡狐
	tNewFoxActNpc_Cont["FoxLev"][2] = {2,4}  --天狐
	tNewFoxActNpc_Cont["FoxLev"][3] = {5,8}  --玄狐
	tNewFoxActNpc_Cont["FoxLev"][4] = {9,13} --神狐
	
	--狐狸等级颜色对应的lookfa
	tNewFoxActNpc_Cont["LookFace"] = {}
	tNewFoxActNpc_Cont["LookFace"][0] = 15460
	tNewFoxActNpc_Cont["LookFace"][1] = 15540
	--九尾
	tNewFoxActNpc_Cont["LookFace"][2] = 15550
	tNewFoxActNpc_Cont["LookFace"][3] = 15560
	tNewFoxActNpc_Cont["LookFace"][4] = 15570
	
	--3星1  0：粉色 1：绿色 2：红黑 3：白色
	tNewFoxActNpc_Cont["LookFace"][5] = {}
	tNewFoxActNpc_Cont["LookFace"][5][0] = 15580
	tNewFoxActNpc_Cont["LookFace"][5][1] = 15620
	tNewFoxActNpc_Cont["LookFace"][5][2] = 15660
	tNewFoxActNpc_Cont["LookFace"][5][3] = 15700
	
	--3星2  0：粉色 1：绿色 2：红黑 3：白色
	tNewFoxActNpc_Cont["LookFace"][6] = {}
	tNewFoxActNpc_Cont["LookFace"][6][0] = 15590
	tNewFoxActNpc_Cont["LookFace"][6][1] = 15630
	tNewFoxActNpc_Cont["LookFace"][6][2] = 15670
	tNewFoxActNpc_Cont["LookFace"][6][3] = 15710
	
	--3星3  0：粉色 1：绿色 2：红黑 3：白色
	tNewFoxActNpc_Cont["LookFace"][7] = {}
	tNewFoxActNpc_Cont["LookFace"][7][0] = 15600
	tNewFoxActNpc_Cont["LookFace"][7][1] = 15640
	tNewFoxActNpc_Cont["LookFace"][7][2] = 15680
	tNewFoxActNpc_Cont["LookFace"][7][3] = 15720
	
	--3星4  0：粉色 1：绿色 2：红黑 3：白色
	tNewFoxActNpc_Cont["LookFace"][8] = {}
	tNewFoxActNpc_Cont["LookFace"][8][0] = 15610
	tNewFoxActNpc_Cont["LookFace"][8][1] = 15650
	tNewFoxActNpc_Cont["LookFace"][8][2] = 15690
	tNewFoxActNpc_Cont["LookFace"][8][3] = 15730
	
	--光效狐狸1  0：粉色 1：绿色 2：红黑 3：白色
	tNewFoxActNpc_Cont["LookFace"][9] = {}
	tNewFoxActNpc_Cont["LookFace"][9][0] = 15740
	tNewFoxActNpc_Cont["LookFace"][9][1] = 15790
	tNewFoxActNpc_Cont["LookFace"][9][2] = 15840
	tNewFoxActNpc_Cont["LookFace"][9][3] = 15890
	
	--光效狐狸2  0：粉色 1：绿色 2：红黑 3：白色
	tNewFoxActNpc_Cont["LookFace"][10] = {}
	tNewFoxActNpc_Cont["LookFace"][10][0] = 15750
	tNewFoxActNpc_Cont["LookFace"][10][1] = 15800
	tNewFoxActNpc_Cont["LookFace"][10][2] = 15850
	tNewFoxActNpc_Cont["LookFace"][10][3] = 15900
	
	--光效狐狸3  0：粉色 1：绿色 2：红黑 3：白色
	tNewFoxActNpc_Cont["LookFace"][11] = {}
	tNewFoxActNpc_Cont["LookFace"][11][0] = 15760
	tNewFoxActNpc_Cont["LookFace"][11][1] = 15810
	tNewFoxActNpc_Cont["LookFace"][11][2] = 15860
	tNewFoxActNpc_Cont["LookFace"][11][3] = 15910
	
	--光效狐狸4  0：粉色 1：绿色 2：红黑 3：白色
	tNewFoxActNpc_Cont["LookFace"][12] = {}
	tNewFoxActNpc_Cont["LookFace"][12][0] = 15770
	tNewFoxActNpc_Cont["LookFace"][12][1] = 15820
	tNewFoxActNpc_Cont["LookFace"][12][2] = 15870
	tNewFoxActNpc_Cont["LookFace"][12][3] = 15920
	
	--光效狐狸5  0：粉色 1：绿色 2：红黑 3：白色
	tNewFoxActNpc_Cont["LookFace"][13] = {}
	tNewFoxActNpc_Cont["LookFace"][13][0] = 15780
	tNewFoxActNpc_Cont["LookFace"][13][1] = 15830
	tNewFoxActNpc_Cont["LookFace"][13][2] = 15880
	tNewFoxActNpc_Cont["LookFace"][13][3] = 15930
	
	
	--领取狐狸外套礼包ID
	tNewFoxActNpc_Cont["FoxItem"] = {}
	--3星4-光效4 只能是无光效的狐狸
	tNewFoxActNpc_Cont["FoxItem"]["Min"] = {}
	tNewFoxActNpc_Cont["FoxItem"]["Min"][0] = 3320736
	tNewFoxActNpc_Cont["FoxItem"]["Min"][1] = 3320735
	tNewFoxActNpc_Cont["FoxItem"]["Min"][2] = 3320734
	tNewFoxActNpc_Cont["FoxItem"]["Min"][3] = 3320745
	
	tNewFoxActNpc_Cont["FoxItem"]["Max"] = {}
	tNewFoxActNpc_Cont["FoxItem"]["Max"][0] = 3320733
	tNewFoxActNpc_Cont["FoxItem"]["Max"][1] = 3320732
	tNewFoxActNpc_Cont["FoxItem"]["Max"][2] = 3320731
	tNewFoxActNpc_Cont["FoxItem"]["Max"][3] = 3320744
	
	
	--喂养丹药增加属性
	--合气丹
	tNewFoxActNpc_Cont[3320169] = {}
	tNewFoxActNpc_Cont[3320169]["Growth"] = {8,12}
	tNewFoxActNpc_Cont[3320169]["Full"] = {10,18}
	tNewFoxActNpc_Cont[3320169]["Variation"] = {8,12}
	tNewFoxActNpc_Cont[3320169]["Emoney"] = 27
	--造化灵丹
	tNewFoxActNpc_Cont[3320170] = {}
	tNewFoxActNpc_Cont[3320170]["Growth"] = {29,43}
	tNewFoxActNpc_Cont[3320170]["Full"] = {45,50}
	tNewFoxActNpc_Cont[3320170]["Variation"] = {30,44}
	tNewFoxActNpc_Cont[3320170]["Emoney"] = 99
	--九花玉露丸
	tNewFoxActNpc_Cont[3320171] = {}
	tNewFoxActNpc_Cont[3320171]["Growth"] = {58,86}
	tNewFoxActNpc_Cont[3320171]["Full"] = {90,100}
	tNewFoxActNpc_Cont[3320171]["Variation"] = {60,90}
	tNewFoxActNpc_Cont[3320171]["Emoney"] = 199
--log
	local tNewFoxActNpc_Log = {}
	tNewFoxActNpc_Log["Emoneylog"] = "250	4048	%d	%d	1	"
	tNewFoxActNpc_Log["DelItemlog"] = "0,0,%d,%d,12001301,2,0,0"	
	tNewFoxActNpc_Log["Instance"] = "0,0,0,0,12001301,3,0,0"	
	
local tNewFoxActNpc_Stc = {}
--当前狐狸等级
	tNewFoxActNpc_Stc["FoxLev"] = {}
	tNewFoxActNpc_Stc["FoxLev"]["EventType"] = 191
	tNewFoxActNpc_Stc["FoxLev"]["DataType"] = 00

--是否开始喂养
	tNewFoxActNpc_Stc["Begin"] = {}
	tNewFoxActNpc_Stc["Begin"]["EventType"] = 191
	tNewFoxActNpc_Stc["Begin"]["DataType"] = 09

--成长值
	tNewFoxActNpc_Stc["Growth"] = {}
	tNewFoxActNpc_Stc["Growth"]["EventType"] = 190
	tNewFoxActNpc_Stc["Growth"]["DataType"] = 89
--每一等级需要的成长值
	tNewFoxActNpc_Stc["Growth"]["Data"] = {}
	tNewFoxActNpc_Stc["Growth"]["Data"][1] = 50
	tNewFoxActNpc_Stc["Growth"]["Data"][2] = 70
	tNewFoxActNpc_Stc["Growth"]["Data"][3] = 100
	tNewFoxActNpc_Stc["Growth"]["Data"][4] = 150
	tNewFoxActNpc_Stc["Growth"]["Data"][5] = 200
	tNewFoxActNpc_Stc["Growth"]["Data"][6] = 300
	tNewFoxActNpc_Stc["Growth"]["Data"][7] = 500
	tNewFoxActNpc_Stc["Growth"]["Data"][8] = 700
	tNewFoxActNpc_Stc["Growth"]["Data"][9] = 1000
	tNewFoxActNpc_Stc["Growth"]["Data"][10] = 1000
	tNewFoxActNpc_Stc["Growth"]["Data"][11] = 1500
	tNewFoxActNpc_Stc["Growth"]["Data"][12] = 1500
	tNewFoxActNpc_Stc["Growth"]["Data"][13] = 2000
--饱腹值
	tNewFoxActNpc_Stc["Full"] = {}
	tNewFoxActNpc_Stc["Full"]["EventType"] = 190
	tNewFoxActNpc_Stc["Full"]["DataType"] = 90
--每一等级饱腹值都是100
	tNewFoxActNpc_Stc["Full"]["Data"] = 100

--变异值 3星狐后才能增加(191,00 >=5)
	tNewFoxActNpc_Stc["Variation"] = {}
	tNewFoxActNpc_Stc["Variation"]["EventType"] = 190
	tNewFoxActNpc_Stc["Variation"]["DataType"] = 91
	
	
--颜色--0：粉色 1：绿色 2：红黑 3：白色
	tNewFoxActNpc_Stc["Color"] = {}
	tNewFoxActNpc_Stc["Color"]["EventType"] = 191
	tNewFoxActNpc_Stc["Color"]["DataType"] = 13
	
	tNewFoxActNpc_Stc["Confirm"] = {}
	tNewFoxActNpc_Stc["Confirm"]["EventType"] = 191
	tNewFoxActNpc_Stc["Confirm"]["DataType"] = 35
	--------------副本NPC坐标
	local tNewFoxActNpc_Map= {}
	tNewFoxActNpc_Map["MapId"]= 10446
	tNewFoxActNpc_Map["PosX"]= 60
	tNewFoxActNpc_Map["PosY"]= 55
	
	tNewFoxActNpc_Map["City"]= {}
	tNewFoxActNpc_Map["City"]["MapId"]= 1002
	tNewFoxActNpc_Map["City"]["PosX"] = 376
	tNewFoxActNpc_Map["City"]["PosY"] = 442
	
	tNewFoxActNpc_Map["NoGifCity"]= {}
	tNewFoxActNpc_Map["NoGifCity"]["MapId"] = 1036
	tNewFoxActNpc_Map["NoGifCity"]["PosX"] = 179
	tNewFoxActNpc_Map["NoGifCity"]["PosY"] = 162
	
	tNewFoxActNpc_Map["Monster"]= {}
	tNewFoxActNpc_Map["Monster"]["MapId"] = 10459
	tNewFoxActNpc_Map["Monster"]["PosX"] = 240 
	tNewFoxActNpc_Map["Monster"]["PosY"] = 233
	
	--属性变化表，记录喂养前的属性
	local tNewFoxActNpc_FeedNum = {}
------------------------------------------------------------------------奖励部分
--饱腹奖励
local tNewFoxActNpc_RewardItem = {}
	--=========[礼包名词,1]=========
	tNewFoxActNpc_RewardItem[1] = {}
	tNewFoxActNpc_RewardItem[1]["ItemChanceSum"] = 10000
	tNewFoxActNpc_RewardItem[1]["LogId"] = 12001301
	-- 赤炼石+3 - 5.00%
	tNewFoxActNpc_RewardItem[1][1] = {}
	tNewFoxActNpc_RewardItem[1][1]["RandomItemChanceType"] = 2
	tNewFoxActNpc_RewardItem[1][1]["ItemChance"] = 500
	tNewFoxActNpc_RewardItem[1][1]["RewardItem"] = {}
	tNewFoxActNpc_RewardItem[1][1]["RewardItem"][1] = {}
	tNewFoxActNpc_RewardItem[1][1]["RewardItem"][1]["Id"] = 730003 -- 【库】+3赤炼石[属性:0]【表格】赤炼石+3
	tNewFoxActNpc_RewardItem[1][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+3赤炼石(赠)*1
	-- 赤炼石+4 - 9.00%
	tNewFoxActNpc_RewardItem[1][2] = {}
	tNewFoxActNpc_RewardItem[1][2]["RandomItemChanceType"] = 2
	tNewFoxActNpc_RewardItem[1][2]["ItemChance"] = 900
	tNewFoxActNpc_RewardItem[1][2]["RewardItem"] = {}
	tNewFoxActNpc_RewardItem[1][2]["RewardItem"][1] = {}
	tNewFoxActNpc_RewardItem[1][2]["RewardItem"][1]["Id"] = 730004 -- 【库】+4赤炼石[属性:0]【表格】赤炼石+4
	tNewFoxActNpc_RewardItem[1][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+4赤炼石(赠)*1
	-- 赤炼石+5 - 7.00%
	tNewFoxActNpc_RewardItem[1][3] = {}
	tNewFoxActNpc_RewardItem[1][3]["RandomItemChanceType"] = 2
	tNewFoxActNpc_RewardItem[1][3]["ItemChance"] = 700
	tNewFoxActNpc_RewardItem[1][3]["RewardItem"] = {}
	tNewFoxActNpc_RewardItem[1][3]["RewardItem"][1] = {}
	tNewFoxActNpc_RewardItem[1][3]["RewardItem"][1]["Id"] = 730005 -- 【库】+5赤炼石[属性:0]【表格】赤炼石+5
	tNewFoxActNpc_RewardItem[1][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+5赤炼石(赠)*1
	-- 赤炼石+6 - 1.00%
	tNewFoxActNpc_RewardItem[1][4] = {}
	tNewFoxActNpc_RewardItem[1][4]["RandomItemChanceType"] = 2
	tNewFoxActNpc_RewardItem[1][4]["ItemChance"] = 100
	tNewFoxActNpc_RewardItem[1][4]["RewardItem"] = {}
	tNewFoxActNpc_RewardItem[1][4]["RewardItem"][1] = {}
	tNewFoxActNpc_RewardItem[1][4]["RewardItem"][1]["Id"] = 730006 -- 【库】+6赤炼石[属性:0]【表格】赤炼石+6
	tNewFoxActNpc_RewardItem[1][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+6赤炼石(赠)*1
	-- 明亮星陨石 - 5.00%
	tNewFoxActNpc_RewardItem[1][5] = {}
	tNewFoxActNpc_RewardItem[1][5]["RandomItemChanceType"] = 2
	tNewFoxActNpc_RewardItem[1][5]["ItemChance"] = 500
	tNewFoxActNpc_RewardItem[1][5]["RewardItem"] = {}
	tNewFoxActNpc_RewardItem[1][5]["RewardItem"][1] = {}
	tNewFoxActNpc_RewardItem[1][5]["RewardItem"][1]["Id"] = 3009001 -- 【库】明亮星陨石[属性:9]【表格】明亮星陨石
	tNewFoxActNpc_RewardItem[1][5]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的明亮星陨石*3
	-- 晶莹星陨石 - 13.00%
	tNewFoxActNpc_RewardItem[1][6] = {}
	tNewFoxActNpc_RewardItem[1][6]["RandomItemChanceType"] = 2
	tNewFoxActNpc_RewardItem[1][6]["ItemChance"] = 1300
	tNewFoxActNpc_RewardItem[1][6]["RewardItem"] = {}
	tNewFoxActNpc_RewardItem[1][6]["RewardItem"][1] = {}
	tNewFoxActNpc_RewardItem[1][6]["RewardItem"][1]["Id"] = 3009002 -- 【库】晶莹星陨石[属性:9]【表格】晶莹星陨石
	tNewFoxActNpc_RewardItem[1][6]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	-- 晶莹星陨石 - 7.00%
	tNewFoxActNpc_RewardItem[1][7] = {}
	tNewFoxActNpc_RewardItem[1][7]["RandomItemChanceType"] = 2
	tNewFoxActNpc_RewardItem[1][7]["ItemChance"] = 700
	tNewFoxActNpc_RewardItem[1][7]["RewardItem"] = {}
	tNewFoxActNpc_RewardItem[1][7]["RewardItem"][1] = {}
	tNewFoxActNpc_RewardItem[1][7]["RewardItem"][1]["Id"] = 3009002 -- 【库】晶莹星陨石[属性:9]【表格】晶莹星陨石
	tNewFoxActNpc_RewardItem[1][7]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的晶莹星陨石*3
	tNewFoxActNpc_RewardItem[1][7]["RewardNoNeedTip"] = 1
	-- 500气力值 - 5.00%
	tNewFoxActNpc_RewardItem[1][8] = {}
	tNewFoxActNpc_RewardItem[1][8]["RandomItemChanceType"] = 2
	tNewFoxActNpc_RewardItem[1][8]["ItemChance"] = 500
	tNewFoxActNpc_RewardItem[1][8]["RewardStrengthValue"] = {}
	tNewFoxActNpc_RewardItem[1][8]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	-- 1000气力值 - 14.00%
	tNewFoxActNpc_RewardItem[1][9] = {}
	tNewFoxActNpc_RewardItem[1][9]["RandomItemChanceType"] = 2
	tNewFoxActNpc_RewardItem[1][9]["ItemChance"] = 1400
	tNewFoxActNpc_RewardItem[1][9]["RewardStrengthValue"] = {}
	tNewFoxActNpc_RewardItem[1][9]["RewardStrengthValue"]["Value"] = 1000 -- 气力值
	-- 2000气力值 - 13.00%
	tNewFoxActNpc_RewardItem[1][10] = {}
	tNewFoxActNpc_RewardItem[1][10]["RandomItemChanceType"] = 2
	tNewFoxActNpc_RewardItem[1][10]["ItemChance"] = 1300
	tNewFoxActNpc_RewardItem[1][10]["RewardStrengthValue"] = {}
	tNewFoxActNpc_RewardItem[1][10]["RewardStrengthValue"]["Value"] = 2000 -- 气力值
	-- 5000气力值 - 5.00%
	tNewFoxActNpc_RewardItem[1][11] = {}
	tNewFoxActNpc_RewardItem[1][11]["RandomItemChanceType"] = 2
	tNewFoxActNpc_RewardItem[1][11]["ItemChance"] = 500
	tNewFoxActNpc_RewardItem[1][11]["RewardStrengthValue"] = {}
	tNewFoxActNpc_RewardItem[1][11]["RewardStrengthValue"]["Value"] = 5000 -- 气力值
	-- 万能神纹精髓 - 9.00%
	tNewFoxActNpc_RewardItem[1][12] = {}
	tNewFoxActNpc_RewardItem[1][12]["RandomItemChanceType"] = 2
	tNewFoxActNpc_RewardItem[1][12]["ItemChance"] = 900
	tNewFoxActNpc_RewardItem[1][12]["RewardItem"] = {}
	tNewFoxActNpc_RewardItem[1][12]["RewardItem"][1] = {}
	tNewFoxActNpc_RewardItem[1][12]["RewardItem"][1]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9]【表格】万能神纹精髓
	tNewFoxActNpc_RewardItem[1][12]["RewardItem"][1]["Attr"] = "0 50 3" -- 万能神纹精粹*50
	-- 万能神纹精髓 - 7.00%
	tNewFoxActNpc_RewardItem[1][13] = {}
	tNewFoxActNpc_RewardItem[1][13]["RandomItemChanceType"] = 2
	tNewFoxActNpc_RewardItem[1][13]["ItemChance"] = 700
	tNewFoxActNpc_RewardItem[1][13]["RewardItem"] = {}
	tNewFoxActNpc_RewardItem[1][13]["RewardItem"][1] = {}
	tNewFoxActNpc_RewardItem[1][13]["RewardItem"][1]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9]【表格】万能神纹精髓
	tNewFoxActNpc_RewardItem[1][13]["RewardItem"][1]["Attr"] = "0 100 3" -- 万能神纹精粹*100
	-- 熔炼道具 - 0.00%
	tNewFoxActNpc_RewardItem[1][14] = {}
	tNewFoxActNpc_RewardItem[1][14]["RandomItemChanceType"] = 2
	tNewFoxActNpc_RewardItem[1][14]["ItemChance"] = 0
	tNewFoxActNpc_RewardItem[1][14]["RewardItem"] = {}
	tNewFoxActNpc_RewardItem[1][14]["RewardItem"][1] = {}
	tNewFoxActNpc_RewardItem[1][14]["RewardItem"][1]["Id"] = 3320173 -- 【库】紫星河水晶[属性:9]【表格】熔炼道具
	tNewFoxActNpc_RewardItem[1][14]["RewardItem"][1]["Attr"] = "0 1" -- 紫星河水晶*1
	
	
	tNewFoxActNpc_RewardItem[2] = {}
	tNewFoxActNpc_RewardItem[2]["LogId"] = 12001301
	tNewFoxActNpc_RewardItem[2]["RewardItem"] = {}
	tNewFoxActNpc_RewardItem[2]["RewardItem"][1] = {}
	tNewFoxActNpc_RewardItem[2]["RewardItem"][1]["Id"] = 3312174 -- 【库】皮皮的谢礼[属性:9]【表格】皮皮的谢礼
	tNewFoxActNpc_RewardItem[2]["RewardItem"][1]["Attr"] = "0 1" -- 皮皮的谢礼*1

	-------------------------------中途退出奖励
	tNewFoxActNpc_FeedReward = {}
	-- 3星狐狸，1
	tNewFoxActNpc_FeedReward[1] = {}
	tNewFoxActNpc_FeedReward[1]["LogId"] = 12001301
	tNewFoxActNpc_FeedReward[1]["RewardItem"] = {}
	tNewFoxActNpc_FeedReward[1]["RewardItem"][1] = {}
	tNewFoxActNpc_FeedReward[1]["RewardItem"][1]["Id"] = 200539 -- 【库】九尾天狐[属性:0]【表格】九尾天狐
	tNewFoxActNpc_FeedReward[1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 九尾天狐(赠)*1
	tNewFoxActNpc_FeedReward[1]["RewardStrengthValue"] = {}
	tNewFoxActNpc_FeedReward[1]["RewardStrengthValue"]["Value"] = 2000 -- 气力值


	-- 3星狐狸，2
	tNewFoxActNpc_FeedReward[2] = {}
	tNewFoxActNpc_FeedReward[2]["LogId"] = 12001301
	tNewFoxActNpc_FeedReward[2]["RewardItem"] = {}
	tNewFoxActNpc_FeedReward[2]["RewardItem"][1] = {}
	tNewFoxActNpc_FeedReward[2]["RewardItem"][1]["Id"] = 200539 -- 【库】九尾天狐[属性:0]【表格】九尾天狐  
	tNewFoxActNpc_FeedReward[2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 九尾天狐(赠)*1
	tNewFoxActNpc_FeedReward[2]["RewardStrengthValue"] = {}
	tNewFoxActNpc_FeedReward[2]["RewardStrengthValue"]["Value"] = 2400 -- 气力值


	-- 3星狐狸，3
	tNewFoxActNpc_FeedReward[3] = {}
	tNewFoxActNpc_FeedReward[3]["LogId"] = 12001301
	tNewFoxActNpc_FeedReward[3]["RewardItem"] = {}
	tNewFoxActNpc_FeedReward[3]["RewardItem"][1] = {}
	tNewFoxActNpc_FeedReward[3]["RewardItem"][1]["Id"] = 200539 -- 【库】九尾天狐[属性:0]【表格】九尾天狐
	tNewFoxActNpc_FeedReward[3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 九尾天狐(赠)*1
	tNewFoxActNpc_FeedReward[3]["RewardStrengthValue"] = {}
	tNewFoxActNpc_FeedReward[3]["RewardStrengthValue"]["Value"] = 3000 -- 气力值


	-- 3星狐狸，4
	tNewFoxActNpc_FeedReward[4] = {}
	tNewFoxActNpc_FeedReward[4]["LogId"] = 12001301
	tNewFoxActNpc_FeedReward[4]["RewardItem"] = {}
	tNewFoxActNpc_FeedReward[4]["RewardItem"][1] = {}
	tNewFoxActNpc_FeedReward[4]["RewardItem"][1]["Id"] = 3320736 -- 【库】幻月仙狐礼包[属性:9]【表格】3星狐狸
	tNewFoxActNpc_FeedReward[4]["RewardItem"][1]["Attr"] = "0 1" -- 幻月仙狐礼包*1


	-- 光效狐狸，1
	tNewFoxActNpc_FeedReward[5] = {}
	tNewFoxActNpc_FeedReward[5]["LogId"] = 12001301
	tNewFoxActNpc_FeedReward[5]["RewardItem"] = {}
	tNewFoxActNpc_FeedReward[5]["RewardItem"][1] = {}
	tNewFoxActNpc_FeedReward[5]["RewardItem"][1]["Id"] = 3320736 -- 【库】幻月仙狐礼包[属性:9]【表格】3星狐狸 
	tNewFoxActNpc_FeedReward[5]["RewardItem"][1]["Attr"] = "0 1" -- 幻月仙狐礼包*1
	tNewFoxActNpc_FeedReward[5]["RewardStrengthValue"] = {}
	tNewFoxActNpc_FeedReward[5]["RewardStrengthValue"]["Value"] = 12000 -- 气力值


	-- 光效狐狸，2
	tNewFoxActNpc_FeedReward[6] = {}
	tNewFoxActNpc_FeedReward[6]["LogId"] = 12001301
	tNewFoxActNpc_FeedReward[6]["RewardItem"] = {}
	tNewFoxActNpc_FeedReward[6]["RewardItem"][1] = {}
	tNewFoxActNpc_FeedReward[6]["RewardItem"][1]["Id"] = 3320736 -- 【库】幻月仙狐礼包[属性:9]【表格】3星狐狸
	tNewFoxActNpc_FeedReward[6]["RewardItem"][1]["Attr"] = "0 1" -- 幻月仙狐礼包*1
	tNewFoxActNpc_FeedReward[6]["RewardStrengthValue"] = {}
	tNewFoxActNpc_FeedReward[6]["RewardStrengthValue"]["Value"] = 24000 -- 气力值


	-- 光效狐狸，3
	tNewFoxActNpc_FeedReward[7] = {}
	tNewFoxActNpc_FeedReward[7]["LogId"] = 12001301
	tNewFoxActNpc_FeedReward[7]["RewardItem"] = {}
	tNewFoxActNpc_FeedReward[7]["RewardItem"][1] = {}
	tNewFoxActNpc_FeedReward[7]["RewardItem"][1]["Id"] = 3320736 -- 【库】幻月仙狐礼包[属性:9]【表格】3星狐狸 
	tNewFoxActNpc_FeedReward[7]["RewardItem"][1]["Attr"] = "0 1" -- 幻月仙狐礼包*1
	tNewFoxActNpc_FeedReward[7]["RewardStrengthValue"] = {}
	tNewFoxActNpc_FeedReward[7]["RewardStrengthValue"]["Value"] = 36000 -- 气力值


	-- 光效狐狸，4
	tNewFoxActNpc_FeedReward[8] = {}
	tNewFoxActNpc_FeedReward[8]["LogId"] = 12001301
	tNewFoxActNpc_FeedReward[8]["RewardItem"] = {}
	tNewFoxActNpc_FeedReward[8]["RewardItem"][1] = {}
	tNewFoxActNpc_FeedReward[8]["RewardItem"][1]["Id"] = 3320736 -- 【库】幻月仙狐礼包[属性:9]【表格】3星狐狸
	tNewFoxActNpc_FeedReward[8]["RewardItem"][1]["Attr"] = "0 1" -- 幻月仙狐礼包*1
	tNewFoxActNpc_FeedReward[8]["RewardStrengthValue"] = {}
	tNewFoxActNpc_FeedReward[8]["RewardStrengthValue"]["Value"] = 48000 -- 气力值


	-- 光效狐狸，5
	tNewFoxActNpc_FeedReward[9] = {}
	tNewFoxActNpc_FeedReward[9]["LogId"] = 12001301
	tNewFoxActNpc_FeedReward[9]["RewardItem"] = {}
	tNewFoxActNpc_FeedReward[9]["RewardItem"][1] = {}
	tNewFoxActNpc_FeedReward[9]["RewardItem"][1]["Id"] = 3320733 -- 【库】幻月仙狐【迷情版】礼包[属性:9]【表格】幻月仙狐【迷情版】
	tNewFoxActNpc_FeedReward[9]["RewardItem"][1]["Attr"] = "0 1" -- 幻月仙狐【迷情版】礼包*1

	
	
---------------------可变异情况下喂养
local tNewFoxActNpc_FeedProbabil = {}
	tNewFoxActNpc_FeedProbabil[1] ={}
	tNewFoxActNpc_FeedProbabil[1][1] ={}
	tNewFoxActNpc_FeedProbabil[1][1]["ItemChanceSum"] = 10000
	--成长
	tNewFoxActNpc_FeedProbabil[1][1][1]={}
	tNewFoxActNpc_FeedProbabil[1][1][1]["RandomItemChanceType"] = 2
	tNewFoxActNpc_FeedProbabil[1][1][1]["ItemChance"] = 5500
	tNewFoxActNpc_FeedProbabil[1][1][1]["Item_1"] = "Growth"
	--饱腹
	tNewFoxActNpc_FeedProbabil[1][1][2]={}
	tNewFoxActNpc_FeedProbabil[1][1][2]["RandomItemChanceType"] = 2
	tNewFoxActNpc_FeedProbabil[1][1][2]["ItemChance"] = 3000
	tNewFoxActNpc_FeedProbabil[1][1][2]["Item_1"] = "Full"
	--异变
	tNewFoxActNpc_FeedProbabil[1][1][3]={}
	tNewFoxActNpc_FeedProbabil[1][1][3]["RandomItemChanceType"] = 2
	tNewFoxActNpc_FeedProbabil[1][1][3]["ItemChance"] = 1500
	tNewFoxActNpc_FeedProbabil[1][1][3]["Item_1"] = "Variation"
---------------------不可变异情况下喂养
	tNewFoxActNpc_FeedProbabil[2] ={}
	tNewFoxActNpc_FeedProbabil[2][1] ={}
	tNewFoxActNpc_FeedProbabil[2][1]["ItemChanceSum"] = 10000
	--成长
	tNewFoxActNpc_FeedProbabil[2][1][1]={}
	tNewFoxActNpc_FeedProbabil[2][1][1]["RandomItemChanceType"] = 2
	tNewFoxActNpc_FeedProbabil[2][1][1]["ItemChance"] = 5000
	tNewFoxActNpc_FeedProbabil[2][1][1]["Item_1"] = "Growth"
	--饱腹
	tNewFoxActNpc_FeedProbabil[2][1][2]={}
	tNewFoxActNpc_FeedProbabil[2][1][2]["RandomItemChanceType"] = 2
	tNewFoxActNpc_FeedProbabil[2][1][2]["ItemChance"] = 5000
	tNewFoxActNpc_FeedProbabil[2][1][2]["Item_1"] = "Full"
	
----变异概率
	tNewFoxActNpc_ColorProbabil = {}
	
	--粉红变异
	tNewFoxActNpc_ColorProbabil[1] ={}
	tNewFoxActNpc_ColorProbabil[1][1] ={}
	tNewFoxActNpc_ColorProbabil[1][1]["ItemChanceSum"] = 7000
	--白
	tNewFoxActNpc_ColorProbabil[1][1][1]={}
	tNewFoxActNpc_ColorProbabil[1][1][1]["RandomItemChanceType"] = 2
	tNewFoxActNpc_ColorProbabil[1][1][1]["ItemChance"] = 3000
	tNewFoxActNpc_ColorProbabil[1][1][1]["Item_1"] = 3
	--绿
	tNewFoxActNpc_ColorProbabil[1][1][2]={}
	tNewFoxActNpc_ColorProbabil[1][1][2]["RandomItemChanceType"] = 2
	tNewFoxActNpc_ColorProbabil[1][1][2]["ItemChance"] = 3000
	tNewFoxActNpc_ColorProbabil[1][1][2]["Item_1"] = 1
	--红黑
	tNewFoxActNpc_ColorProbabil[1][1][3]={}
	tNewFoxActNpc_ColorProbabil[1][1][3]["RandomItemChanceType"] = 2
	tNewFoxActNpc_ColorProbabil[1][1][3]["ItemChance"] = 1000
	tNewFoxActNpc_ColorProbabil[1][1][3]["Item_1"] = 2
	--绿色变异
	tNewFoxActNpc_ColorProbabil[2] ={}
	tNewFoxActNpc_ColorProbabil[2][1] ={}
	tNewFoxActNpc_ColorProbabil[2][1]["ItemChanceSum"] = 7000
	--白
	tNewFoxActNpc_ColorProbabil[2][1][1]={}
	tNewFoxActNpc_ColorProbabil[2][1][1]["RandomItemChanceType"] = 2
	tNewFoxActNpc_ColorProbabil[2][1][1]["ItemChance"] = 3000
	tNewFoxActNpc_ColorProbabil[2][1][1]["Item_1"] = 3
	--粉
	tNewFoxActNpc_ColorProbabil[2][1][2]={}
	tNewFoxActNpc_ColorProbabil[2][1][2]["RandomItemChanceType"] = 2
	tNewFoxActNpc_ColorProbabil[2][1][2]["ItemChance"] = 3000
	tNewFoxActNpc_ColorProbabil[2][1][2]["Item_1"] = 0
	--红黑
	tNewFoxActNpc_ColorProbabil[2][1][3]={}
	tNewFoxActNpc_ColorProbabil[2][1][3]["RandomItemChanceType"] = 2
	tNewFoxActNpc_ColorProbabil[2][1][3]["ItemChance"] = 1000
	tNewFoxActNpc_ColorProbabil[2][1][3]["Item_1"] = 2
	--红黑变异
	tNewFoxActNpc_ColorProbabil[3] ={}
	tNewFoxActNpc_ColorProbabil[3][1] ={}
	tNewFoxActNpc_ColorProbabil[3][1]["ItemChanceSum"] = 9000
	--白
	tNewFoxActNpc_ColorProbabil[3][1][1]={}
	tNewFoxActNpc_ColorProbabil[3][1][1]["RandomItemChanceType"] = 2
	tNewFoxActNpc_ColorProbabil[3][1][1]["ItemChance"] = 3000
	tNewFoxActNpc_ColorProbabil[3][1][1]["Item_1"] = 3
	--绿
	tNewFoxActNpc_ColorProbabil[3][1][2]={}
	tNewFoxActNpc_ColorProbabil[3][1][2]["RandomItemChanceType"] = 2
	tNewFoxActNpc_ColorProbabil[3][1][2]["ItemChance"] = 3000
	tNewFoxActNpc_ColorProbabil[3][1][2]["Item_1"] = 1
	--粉色
	tNewFoxActNpc_ColorProbabil[3][1][3]={}
	tNewFoxActNpc_ColorProbabil[3][1][3]["RandomItemChanceType"] = 2
	tNewFoxActNpc_ColorProbabil[3][1][3]["ItemChance"] = 3000
	tNewFoxActNpc_ColorProbabil[3][1][3]["Item_1"] = 0

	--白色变异
	tNewFoxActNpc_ColorProbabil[4] ={}
	tNewFoxActNpc_ColorProbabil[4][1] ={}
	tNewFoxActNpc_ColorProbabil[4][1]["ItemChanceSum"] = 7000
	--粉色
	tNewFoxActNpc_ColorProbabil[4][1][1]={}
	tNewFoxActNpc_ColorProbabil[4][1][1]["RandomItemChanceType"] = 2
	tNewFoxActNpc_ColorProbabil[4][1][1]["ItemChance"] = 3000
	tNewFoxActNpc_ColorProbabil[4][1][1]["Item_1"] = 0
	--绿
	tNewFoxActNpc_ColorProbabil[4][1][2]={}
	tNewFoxActNpc_ColorProbabil[4][1][2]["RandomItemChanceType"] = 2
	tNewFoxActNpc_ColorProbabil[4][1][2]["ItemChance"] = 3000
	tNewFoxActNpc_ColorProbabil[4][1][2]["Item_1"] = 1
	--红黑
	tNewFoxActNpc_ColorProbabil[4][1][3]={}
	tNewFoxActNpc_ColorProbabil[4][1][3]["RandomItemChanceType"] = 2
	tNewFoxActNpc_ColorProbabil[4][1][3]["ItemChance"] = 1000
	tNewFoxActNpc_ColorProbabil[4][1][3]["Item_1"] = 2
	
	
	-- ===金阙神狐【帝王版】合成
	-- ===删除: 200640,1
	-- ===删除: 200639,1
	-- ===删除: 200596 ,1
	-- ===
	local tNewFoxActNpc_compound = {}
	tNewFoxActNpc_compound["LogId"] = 12001301
	tNewFoxActNpc_compound["DeleteItem"] = {}
	tNewFoxActNpc_compound["DeleteItem"][1] = {}
	tNewFoxActNpc_compound["DeleteItem"][1]["Id"] = 200640 -- 【库】碧霄灵狐【缥缈版】[属性:0]
	tNewFoxActNpc_compound["DeleteItem"][2] = {}
	tNewFoxActNpc_compound["DeleteItem"][2]["Id"] = 200639 -- 【库】幻月仙狐【迷情版】[属性:0]
	tNewFoxActNpc_compound["DeleteItem"][3] = {}
	tNewFoxActNpc_compound["DeleteItem"][3]["Id"] = 200596 -- 【库】昊天玄狐【魅幻版】[属性:0]

	tNewFoxActNpc_compound["RewardItem"] = {}
	tNewFoxActNpc_compound["RewardItem"][1] = {}
	tNewFoxActNpc_compound["RewardItem"][1]["Id"] = 200637 -- 【库】金阙神狐【帝王版】[属性:0]【表格】金阙神狐【帝王版】
	tNewFoxActNpc_compound["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑金阙神狐【帝王版】(赠)*1

--------------------------------------逻辑部分---------------------------------------
function NewFoxActNpc_DynaNpc(nNpcId)
	local nUserId = Get_UserId()
	local nEvent = tNewFoxActNpc_Stc["Begin"]["EventType"]
	local nType = tNewFoxActNpc_Stc["Begin"]["DataType"] 
	
	--当前狐狸等级
	local nEvent_FoxLev = tNewFoxActNpc_Stc["FoxLev"]["EventType"]
	local nType_FoxLev = tNewFoxActNpc_Stc["FoxLev"]["DataType"]

	-- 判断等级
	local nLevel = tNewFoxActNpc_Cont["Level"]
	local nMete = tNewFoxActNpc_Cont["Mete"] 
	
	--活动时间后
	--检测活动时间
	if not Sys_ChkFullTime(tActivityTime["NewFoxAct"]["ActiveTime"]) then
		if Task_ChkStcValue(nEvent_FoxLev,nType_FoxLev,">=",5,nUserId) then
			return LinkNpcGossipFunc_New(nNpcId,"1-5")
		else
			return LinkNpcGossipFunc_New(nNpcId,"1-6")
		end
	end
	
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return LinkNpcGossipFunc_New(nNpcId,"1-1")
	else
		if Task_ChkStcValue(nEvent,nType,"==",0,nUserId) then
			return LinkNpcGossipFunc_New(nNpcId,"1-2")
		elseif Task_ChkStcValue(nEvent_FoxLev,nType_FoxLev,"<",13) then 
			return LinkNpcGossipFunc_New(nNpcId,"1-3")
		else
			return LinkNpcGossipFunc_New(nNpcId,"1-4")
		end
	end

end

--狐狸当前三个值转化为文字
function NewFoxActNpc_TransText()
	local nUserId = Get_UserId()
	--成长值
	local nEvent_Growth = tNewFoxActNpc_Stc["Growth"]["EventType"]
	local nType_Growth = tNewFoxActNpc_Stc["Growth"]["DataType"] 
	--饱腹值
	local nEvent_Full = tNewFoxActNpc_Stc["Full"]["EventType"]
	local nType_Full = tNewFoxActNpc_Stc["Full"]["DataType"] 
	--变异值
	local nEvent_Var = tNewFoxActNpc_Stc["Variation"]["EventType"]
	local nType_Var = tNewFoxActNpc_Stc["Variation"]["DataType"] 
	--当前狐狸等级
	local nEvent_FoxLev = tNewFoxActNpc_Stc["FoxLev"]["EventType"]
	local nType_FoxLev = tNewFoxActNpc_Stc["FoxLev"]["DataType"]
	
	--下一等级
	local nNextFoxLev = Get_UserStatisticValue(nEvent_FoxLev,nType_FoxLev) + 1
	--下一等级需要成长值
	local nNeedGro = tNewFoxActNpc_Stc["Growth"]["Data"][nNextFoxLev]
	--下一等级需要饱腹值
	local nNeedFull = tNewFoxActNpc_Cont["Full"]
	
	--下一等级需要变异值
	local nNeedVar = 0
	if Task_ChkStcValue(nEvent_FoxLev,nType_FoxLev,">",4,nUserId) and Task_ChkStcValue(nEvent_FoxLev,nType_FoxLev,"<",8,nUserId) then
		nNeedVar = tNewFoxActNpc_Cont["Variation"][2][1]
	elseif Task_ChkStcValue(nEvent_FoxLev,nType_FoxLev,">=",8) then
		nNeedVar = tNewFoxActNpc_Cont["Variation"][2][2]
	end
	
	--当前成长值
	local nGroData = Get_UserStatisticValue(nEvent_Growth,nType_Growth)
	--当前饱腹值
	local nFullData = Get_UserStatisticValue(nEvent_Full,nType_Full)
	--当前变异值
	local nVarData = Get_UserStatisticValue(nEvent_Var,nType_Var)
	return nGroData,nNeedGro,nFullData,nNeedFull,nVarData,nNeedVar
end

function NewFoxActNpc_GetFoxName(nIndex)
	local sName = ""
	--当前狐狸等级
	local nEvent_FoxLev = tNewFoxActNpc_Stc["FoxLev"]["EventType"]
	local nType_FoxLev = tNewFoxActNpc_Stc["FoxLev"]["DataType"]
	local nFoxLev = Get_UserStatisticValue(nEvent_FoxLev,nType_FoxLev)
	for i,v in pairs(tNewFoxActNpc_Cont["FoxLev"]) do
		if nFoxLev >= v[1] and nFoxLev <= v[2] then
			sName = tNewFoxActNpc_Text["Talk"]["Fox"][nIndex][i]
			return sName
		end
	end
end
--喂养皮皮1颗 
function NewFoxActNpc_FeedingOne(nItemId,nIndex,nNpcId)
	local nUserId = Get_UserId()
	local nEmoney = tNewFoxActNpc_Cont[nItemId]["Emoney"]
	local sDelLog = string.format(tNewFoxActNpc_Log["DelItemlog"],nItemId,1)
	local nUserEmoney = Get_UserEMoney()
	local sItemName = Get_ItemtypeName(nItemId)
	local sColor1,sColor2,sColor3 = ""
	
	--喂养一颗累计增加属性值
	if tNewFoxActNpc_FeedNum[nUserId] == nil then
		tNewFoxActNpc_FeedNum[nUserId] = {}
	end
	
	
	tNewFoxActNpc_FeedNum[nUserId]["Growth"] = 0
	tNewFoxActNpc_FeedNum[nUserId]["Full"] = 0
	tNewFoxActNpc_FeedNum[nUserId]["Variation"] = 0
	
	
	--当前狐狸等级
	local nEvent_FoxLev = tNewFoxActNpc_Stc["FoxLev"]["EventType"]
	local nType_FoxLev = tNewFoxActNpc_Stc["FoxLev"]["DataType"]
	local nOldLevel = Get_UserStatisticValue(nEvent_FoxLev,nType_FoxLev,nUserId)

	
	--检测活动时间
	if not Sys_ChkFullTime(tActivityTime["NewFoxAct"]["ActiveTime"]) then
		Sys_MsgBox(tNewFoxActNpc_Text["MsgBox"]["NoTime"],nil,nil,nUserId)
		return
	end
	
	--检测是否还在副本
	if not NewFoxActNpc_UserMap() then
		Sys_MsgBox(tNewFoxActNpc_Text["MsgBox"]["NoMap"],nil,nil)
		return
	end
	
	-- 检测背包空间
	if not User_CheckLeftSpace(tNewFoxActNpc_Cont["Space"]) then
		Sys_MsgBox(string.format(tNewFoxActNpc_Text["MsgBox"]["NoSpaceFeed"],tNewFoxActNpc_Cont["Space"]))
		return
	end
	
	
	--获取玩家狐狸颜色
	local nEvent_Color = tNewFoxActNpc_Stc["Color"]["EventType"]
	local nType_Color = tNewFoxActNpc_Stc["Color"]["DataType"]
	
	local nData = Get_UserStatisticValue(nEvent_Color,nType_Color,nUserId)
	--物品喂养
	if nIndex == 1 then
		if Item_ChkMulItem(nItemId,nItemId,1) then
			if Item_DelMulItem(nItemId,nItemId,1) then
				Sys_SaveActionFestivalLog(sDelLog,nUserId)
			end
		else
			Sys_MsgBox(string.format(tNewFoxActNpc_Text["MsgBox"]["NoItem"],sItemName),nil,nil,nUserId)
			return
		end
	else
		if nUserEmoney >= nEmoney then
			if User_AddEMoney(-nEmoney) then
				local sEmoneyLog = string.format(tNewFoxActNpc_Log["Emoneylog"],nEmoney,nEmoney)
				Sys_SaveEmoneyBuy(sEmoneyLog)
			end
		else
			Sys_MsgBox(tNewFoxActNpc_Text["MsgBox"]["NoEmoney"],nil,nil,nUserId)
			return
		end
	end
	local nFlgFull,nFlgVar,sAddType,nAddNum = NewFoxActNpc_AddAttribute(nItemId,nNpcId,1)
	
		if tNewFoxActNpc_FeedNum[nUserId][sAddType] == nil then 
			tNewFoxActNpc_FeedNum[nUserId][sAddType] = 0
		end
		tNewFoxActNpc_FeedNum[nUserId][sAddType] = tNewFoxActNpc_FeedNum[nUserId][sAddType] + nAddNum
		
	
	local nGroData,nNeedGro,nFullData,nNeedFull,nVarData,nNeedVar = NewFoxActNpc_TransText()
	local nNowLevel = Get_UserStatisticValue(nEvent_FoxLev,nType_FoxLev,nUserId)
	
	local nGapGro  = 0
	local nGapFull = 0
	local nGapVar  = 0
	
	if nNowLevel < 13 then
		nGapGro = nNeedGro - nGroData
		nGapFull  = nNeedFull - nFullData
		nGapVar = nNeedVar - nVarData
	end
	
	local nNowGro = tNewFoxActNpc_FeedNum[nUserId]["Growth"]
	local nNowFull = tNewFoxActNpc_FeedNum[nUserId]["Full"]
	local nNowVar = tNewFoxActNpc_FeedNum[nUserId]["Variation"]
	
	
	
	if nFlgVar then 
		sColor1 = tNewFoxActNpc_Text["ChgColor"][nData][0]
		sColor2 = tNewFoxActNpc_Text["ChgColor"][nData][1]
		sColor3 = tNewFoxActNpc_Text["ChgColor"][nData][2]
		
		tNpcGossip[nNpcId]["Text511"] = string.format(tNewFoxActNpc_Text[nNpcId]["Text511"],tNewFoxActNpc_Text["Talk"]["color"][nData],sColor1,sColor2,sColor3)
		LinkNpcGossipFunc_New(nNpcId,"5-1")
	else
		if nFlgFull == true then
			tNpcGossip[nNpcId]["Text617"] = string.format (tNewFoxActNpc_Text[23803]["Text617"],tNewFoxActNpc_Text[23803]["Text718"])
		else
			tNpcGossip[nNpcId]["Text617"] = string.format (tNewFoxActNpc_Text[23803]["Text617"],"")
		end
		if nNowLevel > nOldLevel then
			tNpcGossip[nNpcId]["Text618"] = string.format (tNewFoxActNpc_Text[23803]["Text618"],tNewFoxActNpc_Text[23803]["Text717"])
		else
			tNpcGossip[nNpcId]["Text618"] = string.format (tNewFoxActNpc_Text[23803]["Text618"],"")
		end
		
		if Task_ChkStcValue(nEvent_FoxLev,nType_FoxLev,"<",5,nUserId) then
			tNpcGossip[nNpcId]["Text613"] = string.format(tNewFoxActNpc_Text[nNpcId]["Text613"],nNowFull,nGapFull)
			tNpcGossip[nNpcId]["Text614"] = string.format(tNewFoxActNpc_Text[nNpcId]["Text614"],nNowGro,nGapGro)
			tNpcGossip[nNpcId]["Text615"] = ""
		else
			tNpcGossip[nNpcId]["Text613"] = string.format(tNewFoxActNpc_Text[nNpcId]["Text613"],nNowFull,nGapFull)
			tNpcGossip[nNpcId]["Text614"] = string.format(tNewFoxActNpc_Text[nNpcId]["Text614"],nNowGro,nGapGro)
			tNpcGossip[nNpcId]["Text615"] = string.format(tNewFoxActNpc_Text[nNpcId]["Text615"],nNowVar,nGapVar)
		end
			LinkNpcGossipFunc_New(nNpcId,"6-1")
	end
end

function NewFoxActNpc_AddAttribute(nItemId,nNpcId,nIndex)
	local nUserId = Get_UserId()
	local nEvent = 0
	local nType = 0
	
	--喂养掩码
	local nEvent_Begin = tNewFoxActNpc_Stc["Begin"]["EventType"]
	local nType_Begin = tNewFoxActNpc_Stc["Begin"]["DataType"] 
	
	
	--当前狐狸等级
	local nEvent_FoxLev = tNewFoxActNpc_Stc["FoxLev"]["EventType"]
	local nType_FoxLev = tNewFoxActNpc_Stc["FoxLev"]["DataType"]
	local flat,tAward = 0
	
	--增加开始喂养掩码
	Task_AddStatistic(nEvent_Begin,nType_Begin,1,1,nUserId)
	--当前狐狸等级小于5不会增加变异值
	
	if Task_ChkStcValue(nEvent_FoxLev,nType_FoxLev,"<",5,nUserId) then
		flat,tAward = Probabil_RandomAward(tNewFoxActNpc_FeedProbabil[2],1)
	else
		flat,tAward = Probabil_RandomAward(tNewFoxActNpc_FeedProbabil[1],1)
	end
	--获取增加属性
	local sAddType = tostring(tAward[1]["tAward"][1]["Item_1"])
	--获取增加属性点
	local nAddNum = math.random(tNewFoxActNpc_Cont[nItemId][sAddType][1],tNewFoxActNpc_Cont[nItemId][sAddType][2])
	--增加属性
	nEvent = tNewFoxActNpc_Stc[sAddType]["EventType"]
	nType = tNewFoxActNpc_Stc[sAddType]["DataType"]
	Task_AddStatistic(nEvent,nType,nAddNum,1,nUserId)
	--检测饱腹是否满
	local nFlgFull = NewFoxActNpc_ChkFull()
	--检测成长是否满
	NewFoxActNpc_ChkGrowth(nIndex)
	--检测是否变异
	local nFlgVar = false
	if sAddType == tNewFoxActNpc_Text["Talk"]["Var"] then 
		nFlgVar = NewFoxActNpc_ChkVariation(nNpcId,nAddNum)
	end
	return nFlgFull,nFlgVar,sAddType,nAddNum
end

--喂养皮皮10颗
function NewFoxActNpc_FeedingTen(nItemId,nIndex,nNpcId)
	local nActionId = tNewFoxActNpc_Cont["ActionId"]
	local nUserId = Get_UserId()
	local nEmoney = tNewFoxActNpc_Cont[nItemId]["Emoney"] * 10
	local sDelLog = string.format(tNewFoxActNpc_Log["DelItemlog"],nItemId,10)
	local nUserEmoney = Get_UserEMoney()
	local sItemName = Get_ItemtypeName(nItemId)
	local nNewFlgFull = false
	local nNewnFlgVar = false
	local sNpcName = tNewFoxActNpc_Text["Talk"]["FoxName"]
	local nMapId = Get_UserMapId()
	local nPosX = tNewFoxActNpc_Map["PosX"]
	local nPosY = tNewFoxActNpc_Map["PosY"]
	
	--喂养十颗累计增加属性值
	if tNewFoxActNpc_FeedNum[nUserId] == nil then
		tNewFoxActNpc_FeedNum[nUserId] = {}
	end
	
	tNewFoxActNpc_FeedNum[nUserId]["Growth"] = 0
	tNewFoxActNpc_FeedNum[nUserId]["Full"] = 0
	tNewFoxActNpc_FeedNum[nUserId]["Variation"] = 0
	
	
	
	--检测活动时间
	if not Sys_ChkFullTime(tActivityTime["NewFoxAct"]["ActiveTime"]) then
		Sys_MsgBox(tNewFoxActNpc_Text["MsgBox"]["NoTime"],nil,nil,nUserId)
		return
	end
	
	--检测是否还在副本
	if not NewFoxActNpc_UserMap() then
		Sys_MsgBox(tNewFoxActNpc_Text["MsgBox"]["NoMap"],nil,nil)
		return
	end
	-- 检测背包空间
	if not User_CheckLeftSpace(tNewFoxActNpc_Cont["Space"]) then
		Sys_MsgBox(string.format(tNewFoxActNpc_Text["MsgBox"]["NoSpaceFeed"],tNewFoxActNpc_Cont["Space"]))
		return
	end
	
	
	--当前狐狸等级
	local nEvent_FoxLev = tNewFoxActNpc_Stc["FoxLev"]["EventType"]
	local nType_FoxLev = tNewFoxActNpc_Stc["FoxLev"]["DataType"]
	local nOldLevel = Get_UserStatisticValue(nEvent_FoxLev,nType_FoxLev,nUserId)
	
	
	--获取玩家狐狸颜色
	local nEvent_Color = tNewFoxActNpc_Stc["Color"]["EventType"]
	local nType_Color = tNewFoxActNpc_Stc["Color"]["DataType"]
	
	local nData = Get_UserStatisticValue(nEvent_Color,nType_Color)
	
	--物品喂养
	if nIndex ==1 then
		if Item_ChkMulItem(nItemId,nItemId,10) then
			if not Item_DelMulItem(nItemId,nItemId,10) then
				Sys_SaveActionFestivalLog(sDelLog,nUserId)
			end
		else
			Sys_MsgBox(string.format(tNewFoxActNpc_Text["MsgBox"]["NoItem"],sItemName),nil,nil,nUserId)
			return
		end
	else
		if nUserEmoney>= nEmoney then
			if User_AddEMoney(-nEmoney) then
				local sEmoneyLog = string.format(tNewFoxActNpc_Log["Emoneylog"],nEmoney,nEmoney)
				Sys_SaveEmoneyBuy(sEmoneyLog)
			end
		else
			Sys_MsgBox(tNewFoxActNpc_Text["MsgBox"]["NoEmoney"],nil,nil,nUserId)
			return
		end
	end

	for i = 1,10 do 
		local nFlgFull,nFlgVar,sAddType,nAddNum = NewFoxActNpc_AddAttribute(nItemId,nNpcId,10)
		--饱腹满足一次就出提示
		if nFlgFull ~= nil and nFlgFull == true then
			nNewFlgFull = true
		end
		if nFlgVar ~= nil and nFlgVar == true then
			nNewnFlgVar = true
		end
		if tNewFoxActNpc_FeedNum[nUserId][sAddType] == nil then 
			tNewFoxActNpc_FeedNum[nUserId][sAddType] = 0
		end
		tNewFoxActNpc_FeedNum[nUserId][sAddType] = tNewFoxActNpc_FeedNum[nUserId][sAddType] + nAddNum
		
	end
	local nNowLevel = Get_UserStatisticValue(nEvent_FoxLev,nType_FoxLev,nUserId)
	local nGroData,nNeedGro,nFullData,nNeedFull,nVarData,nNeedVar = NewFoxActNpc_TransText()
	--十连喂在喂养结束后删除npc，避免十次内多次触发，删除失败
	local nNpcLookFace = NewFoxActNpc_GetFoxLookFace(nNowLevel)
	if Npc_DelDynaNpc(nMapId,"name",sNpcName) then
		Npc_CreateDynaNpc(sNpcName,2,1,nNpcLookFace,0,nUserId,nMapId,nPosX,nPosY,0,0,0,nActionId)
	end
	
	local nGapGro  = 0
	local nGapFull = 0
	local nGapVar  = 0
	if nNowLevel < 13 then
		nGapGro = nNeedGro - nGroData
		nGapFull  = nNeedFull - nFullData
		nGapVar = nNeedVar - nVarData
	end
	
	local nNowGro = tNewFoxActNpc_FeedNum[nUserId]["Growth"]
	local nNowFull = tNewFoxActNpc_FeedNum[nUserId]["Full"]
	local nNowVar = tNewFoxActNpc_FeedNum[nUserId]["Variation"]
	
	
	if nNewnFlgVar then 
		sColor1 = tNewFoxActNpc_Text["ChgColor"][nData][0]
		sColor2 = tNewFoxActNpc_Text["ChgColor"][nData][1]
		sColor3 = tNewFoxActNpc_Text["ChgColor"][nData][2]
		
		tNpcGossip[nNpcId]["Text511"] = string.format(tNewFoxActNpc_Text[nNpcId]["Text511"],tNewFoxActNpc_Text["Talk"]["color"][nData],sColor1,sColor2,sColor3)
		LinkNpcGossipFunc_New(nNpcId,"5-1")
	else
		if nNewFlgFull == true then
			tNpcGossip[nNpcId]["Text617"] = string.format (tNewFoxActNpc_Text[nNpcId]["Text617"],tNewFoxActNpc_Text[nNpcId]["Text718"])
		else
			tNpcGossip[nNpcId]["Text617"] = string.format (tNewFoxActNpc_Text[nNpcId]["Text617"],"")
		end
		--检测成长
		if Task_ChkStcValue(nEvent_FoxLev,nType_FoxLev,">",nOldLevel,nUserId) then
			tNpcGossip[nNpcId]["Text618"] = string.format (tNewFoxActNpc_Text[nNpcId]["Text618"],tNewFoxActNpc_Text[nNpcId]["Text717"])
		else
			tNpcGossip[nNpcId]["Text618"] = string.format (tNewFoxActNpc_Text[nNpcId]["Text618"],"")
		end
		
		if Task_ChkStcValue(nEvent_FoxLev,nType_FoxLev,"<",5,nUserId) then
			tNpcGossip[nNpcId]["Text613"] = string.format(tNewFoxActNpc_Text[nNpcId]["Text613"],nNowFull,nGapFull)
			tNpcGossip[nNpcId]["Text614"] = string.format(tNewFoxActNpc_Text[nNpcId]["Text614"],nNowGro,nGapGro)
			tNpcGossip[nNpcId]["Text615"] = ""
		else
			tNpcGossip[nNpcId]["Text613"] = string.format(tNewFoxActNpc_Text[nNpcId]["Text613"],nNowFull,nGapFull)
			tNpcGossip[nNpcId]["Text614"] = string.format(tNewFoxActNpc_Text[nNpcId]["Text614"],nNowGro,nGapGro)
			tNpcGossip[nNpcId]["Text615"] = string.format(tNewFoxActNpc_Text[nNpcId]["Text615"],nNowVar,nGapVar)
		end
			LinkNpcGossipFunc_New(nNpcId,"6-1")
	end
end
--检测成长是否满
function NewFoxActNpc_ChkGrowth(nIndex)
	local sNpcName = tNewFoxActNpc_Text["Talk"]["FoxName"]
	local nMapId = Get_UserMapId()
	local nUserId = Get_UserId()
	local sName = Get_UserName(nUserId)
	local nActionId = tNewFoxActNpc_Cont["ActionId"]
	--成长值
	local nEvent_Growth = tNewFoxActNpc_Stc["Growth"]["EventType"]
	local nType_Growth = tNewFoxActNpc_Stc["Growth"]["DataType"] 
	--当前狐狸等级
	local nEvent_FoxLev = tNewFoxActNpc_Stc["FoxLev"]["EventType"]
	local nType_FoxLev = tNewFoxActNpc_Stc["FoxLev"]["DataType"]
	--下一等级
	local nNextFoxLev = Get_UserStatisticValue(nEvent_FoxLev,nType_FoxLev) + 1
	--下一等级需要成长值
	local nNeedGro = tNewFoxActNpc_Stc["Growth"]["Data"][nNextFoxLev]
	
	if nNextFoxLev > 13 then 
		return
	end
	
	
	--狐狸外形
	local nNpcLookFace = NewFoxActNpc_GetFoxLookFace(nNextFoxLev)
	local nMapId = Get_UserMapId()
	local nPosX = tNewFoxActNpc_Map["PosX"]
	local nPosY = tNewFoxActNpc_Map["PosY"]
	if Task_ChkStcValue(nEvent_Growth,nType_Growth,">=",nNeedGro,nUserId) then
		local nGroData = Get_UserStatisticValue(nEvent_Growth,nType_Growth,nUserId) - nNeedGro
		--出光效
		User_EffectAdd("self","task051",nUserId)
		Task_SetStatistic(nEvent_Growth,nType_Growth,nGroData,1,nUserId)
		Task_SetStcTimestamp(nEvent_Growth,nType_Growth,0,nUserId)
		Task_AddStatistic(nEvent_FoxLev,nType_FoxLev,1,1,nUserId)
		
		--判断是否上升一大阶 出公告
		if Task_ChkStcValue(nEvent_FoxLev,nType_FoxLev,"==",5,nUserId) or Task_ChkStcValue(nEvent_FoxLev,nType_FoxLev,"==",9,nUserId) then
			local sFoxName = NewFoxActNpc_GetFoxName(2)
			local sBroad = string.format(tNewFoxActNpc_Text["Broad"]["UpLev"],sName,sFoxName)
			Sys_SystemBroadcast(sBroad)
		end
		--十连喂不在检测的时候删除，防止频繁删除失败
		if nIndex ~= nil and nIndex == 1 then
		if Npc_DelDynaNpc(nMapId,"name",sNpcName) then
			Npc_CreateDynaNpc(sNpcName,2,1,nNpcLookFace,0,nUserId,nMapId,nPosX,nPosY,0,0,0,nActionId)
			end
		end
	end
end
--检测饱腹值是否满
function NewFoxActNpc_ChkFull()
	local nUserId = Get_UserId()
	local nFullMax = tNewFoxActNpc_Cont["Full"]
	--饱腹值
	local nEvent_Full = tNewFoxActNpc_Stc["Full"]["EventType"]
	local nType_Full = tNewFoxActNpc_Stc["Full"]["DataType"] 
	
	if Task_ChkStcValue(nEvent_Full,nType_Full,">=",nFullMax,nUserId) then
		local nFullData = Get_UserStatisticValue(nEvent_Full,nType_Full,nUserId) - nFullMax
		--清空饱腹值掩码
		Task_SetStatistic(nEvent_Full,nType_Full,nFullData,1,nUserId)
		Task_SetStcTimestamp(nEvent_Full,nType_Full,0,nUserId)
		
		RewardTemplate_UseItemAndMsg(tNewFoxActNpc_RewardItem[2])
		
		return true
	else
		return false
	end
end



--检测变异值是否变异
function NewFoxActNpc_ChkVariation(nNpcId,nAddNum)
	local nUserId = Get_UserId()
	--当前狐狸等级
	local nEvent_FoxLev = tNewFoxActNpc_Stc["FoxLev"]["EventType"]
	local nType_FoxLev = tNewFoxActNpc_Stc["FoxLev"]["DataType"]
	--变异值
	local nEvent_Var = tNewFoxActNpc_Stc["Variation"]["EventType"]
	local nType_Var = tNewFoxActNpc_Stc["Variation"]["DataType"] 
	--当前变异值
	local nVarData = Get_UserStatisticValue(nEvent_Var,nType_Var)
	local nVarIndex = 1
	--5~7级的狐狸(变异值累计1000必变异   小于500，变异值/1000      大于500，变异值/500)
	if Task_ChkStcValue(nEvent_FoxLev,nType_FoxLev,">=",8,nUserId) then
		nVarIndex = 2
	end
	local nVarMin = tNewFoxActNpc_Cont["Variation"][nVarIndex][1]
	local nVarMax = tNewFoxActNpc_Cont["Variation"][nVarIndex][2]

	if nVarData >= nVarMax then
		return true
	elseif nVarData <=nVarMin then 
		if Sys_Random(nAddNum,nVarMax) then
			return true
		end
		return false
	elseif nVarData >nVarMin then 
		if Sys_Random(nAddNum,nVarMin) then
			return true
		end
		return false
	end
	return false
end
--获取狐狸的外形
function NewFoxActNpc_GetFoxLookFace(nFoxLev)
	--获取玩家狐狸颜色
	local nEvent_Color = tNewFoxActNpc_Stc["Color"]["EventType"]
	local nType_Color = tNewFoxActNpc_Stc["Color"]["DataType"]
	
	local nData = Get_UserStatisticValue(nEvent_Color,nType_Color)
--5级前的狐狸只有一个外形
	if nFoxLev < 5 then
		nNpcLookFace = tNewFoxActNpc_Cont["LookFace"][nFoxLev]
	else
		nNpcLookFace = tNewFoxActNpc_Cont["LookFace"][nFoxLev][nData]
	end
	return nNpcLookFace
end
--进入副本
function NewFoxActNpc_IntoInstance()
	local nUserId = Get_UserId()
	if not Sys_ChkFullTime(tActivityTime["NewFoxAct"]["ChgCoatTime"]) then
		return
	end
	local nActionId = tNewFoxActNpc_Cont["ActionId"]
	local sNpcName = tNewFoxActNpc_Text["Talk"]["FoxName"]
	--当前狐狸等级
	local nEvent_FoxLev = tNewFoxActNpc_Stc["FoxLev"]["EventType"]
	local nType_FoxLev = tNewFoxActNpc_Stc["FoxLev"]["DataType"]
	local nFoxLev = Get_UserStatisticValue(nEvent_FoxLev,nType_FoxLev)
	local nNpcLookFace = NewFoxActNpc_GetFoxLookFace(nFoxLev)
	
	-- 组队不能进入
	if Get_UserTeamNumbers() >= 2 then
		Sys_MsgBox(tNewFoxActNpc_Text["MsgBox"]["HaveATeam"])
		return
	end
	
	--进入副本
	if User_EnterInstance(tNewFoxActNpc_Cont["InstanceId"],0,0,nUserId) then 
		Sys_SaveActionFestivalLog(tNewFoxActNpc_Log["Instance"])
		--创建NPC
		local nMapId = Get_UserMapId()
		local nPosX = tNewFoxActNpc_Map["PosX"]
		local nPosY = tNewFoxActNpc_Map["PosY"]
		Npc_CreateDynaNpc(sNpcName,2,1,nNpcLookFace,0,nUserId,nMapId,nPosX,nPosY,0,0,0,nActionId)
	end
end
--发生变异
function NewFoxActNpc_ChgColor(nNpcId)
	local sNpcName = tNewFoxActNpc_Text["Talk"]["FoxName"]
	local nMapId = Get_UserMapId()
	local nUserId = Get_UserId()
	local sName = Get_UserName(nUserId)
	local nActionId = tNewFoxActNpc_Cont["ActionId"]
	local nMapId = Get_UserMapId()
	local nPosX = tNewFoxActNpc_Map["PosX"]
	local nPosY = tNewFoxActNpc_Map["PosY"]
	
	--当前狐狸等级
	local nEvent_FoxLev = tNewFoxActNpc_Stc["FoxLev"]["EventType"]
	local nType_FoxLev = tNewFoxActNpc_Stc["FoxLev"]["DataType"]
	--获取玩家狐狸颜色
	local nEvent_Color = tNewFoxActNpc_Stc["Color"]["EventType"]
	local nType_Color = tNewFoxActNpc_Stc["Color"]["DataType"]
	
	local nColorData = Get_UserStatisticValue(nEvent_Color,nType_Color,nUserId) +1
	--获取玩家狐狸变异值
	local nEvent_Variation = tNewFoxActNpc_Stc["Variation"]["EventType"]
	local nType_Variation = tNewFoxActNpc_Stc["Variation"]["DataType"]
	
	--清空掩码
	Task_SetStatistic(nEvent_Variation,nType_Variation,0,1,nUserId)
	Task_SetStcTimestamp(nEvent_Variation,nType_Variation,0,nUserId)
	
	local flat,tAward = Probabil_RandomAward(tNewFoxActNpc_ColorProbabil[nColorData],1)
	--获取颜色
	local nColor = tAward[1]["tAward"][1]["Item_1"]
	local sColor = tNewFoxActNpc_Text["Talk"]["color"][nColor]
	--记录颜色
	Task_SetStatistic(nEvent_Color,nType_Color,nColor,1)
	local nFoxLev = Get_UserStatisticValue(nEvent_FoxLev,nType_FoxLev,nUserId)
	local nNpcLookFace = tNewFoxActNpc_Cont["LookFace"][nFoxLev][nColor]
	local sBroad = string.format(tNewFoxActNpc_Text["Broad"]["ChgColor"],sName)
	Sys_SystemBroadcast(sBroad)
	--记录颜色掩码
	if Npc_DelDynaNpc(nMapId,"name",sNpcName) then
		Npc_CreateDynaNpc(sNpcName,2,1,nNpcLookFace,0,nUserId,nMapId,nPosX,nPosY,0,0,0,nActionId)
	end
	tNpcGossip[nNpcId]["Text1203"] = string.format(tNewFoxActNpc_Text[nNpcId]["Text1203"],sColor)
	LinkNpcGossipFunc_New(nNpcId,"12-1")
	
end

--喂养二次确认
function NewFoxActNpc_FeedingConfirm(nItemId,nFeedNum,nNpcId)
	--二次确认掩码
	local nEvent_Confirm = tNewFoxActNpc_Stc["Confirm"]["EventType"]
	local nType_Confirm = tNewFoxActNpc_Stc["Confirm"]["DataType"] 
	
	if Task_ChkStcValue(nEvent_Confirm,nType_Confirm,">=",1,nUserId) then
		if nFeedNum== 1 then
			NewFoxActNpc_FeedingOne(nItemId,2,nNpcId)
		else
			NewFoxActNpc_FeedingTen(nItemId,2,nNpcId)
		end
		return
	end
	local nUserId = Get_UserId()
	local nEmoney = tNewFoxActNpc_Cont[nItemId]["Emoney"]*nFeedNum
	local sItemName = Get_ItemtypeName(nItemId)
	tNpcGossip[nNpcId]["Text811"] = string.format(tNewFoxActNpc_Text[nNpcId]["Text811"],nEmoney,nFeedNum,sItemName)
	
	if nFeedNum== 1 then
		tNpcGossip[nNpcId]["OptionFunc811"] =string.format("NewFoxActNpc_FeedingOne</N>%d</N>2</N>23803",nItemId)
	else
		tNpcGossip[nNpcId]["OptionFunc811"] =string.format("NewFoxActNpc_FeedingTen</N>%d</N>2</N>23803",nItemId)
	end
	

	LinkNpcGossipFunc_New(nNpcId,"8-1")
end
--屏蔽二次确认
function NewFoxActNpc_ShieldingConfirm(nIndex,nNpcId)
	local nUserId = Get_UserId()
	--二次确认掩码
	local nEvent_Confirm = tNewFoxActNpc_Stc["Confirm"]["EventType"]
	local nType_Confirm = tNewFoxActNpc_Stc["Confirm"]["DataType"] 
	Task_SetStatistic(nEvent_Confirm,nType_Confirm,nIndex,1,nUserId)
	NewFoxActNpc_DynaNpc(nNpcId)
end
function NewFoxActNpc_ShieldingClearStc()
	local nUserId = Get_UserId()
	--二次确认掩码
	local nEvent_Confirm = tNewFoxActNpc_Stc["Confirm"]["EventType"]
	local nType_Confirm = tNewFoxActNpc_Stc["Confirm"]["DataType"] 
	Task_SetStatistic(nEvent_Confirm,nType_Confirm,0,1,nUserId)
end
--小医仙
function NewFoxActNpc_OpenShop(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["NewFoxAct"]["ChgCoatTime"]) then
		return
	end
	User_OpenExchangeShop(nNpcId)
end
--副本内陷阱离开
function NewFoxActNpc_ChgMap()
	local nUserId = Get_UserId()
	--传送回双龙城
	local nMapId = 0 
	local nCellx = 0
	local nCelly = 0
	if SpecialServer_ChkNoGiftServer() then 
		nMapId = tNewFoxActNpc_Map["NoGifCity"]["MapId"]
		nCellx = tNewFoxActNpc_Map["NoGifCity"]["PosX"] 
		nCelly = tNewFoxActNpc_Map["NoGifCity"]["PosY"] 
	else
		nMapId = tNewFoxActNpc_Map["City"]["MapId"]
		nCellx = tNewFoxActNpc_Map["City"]["PosX"] 
		nCelly = tNewFoxActNpc_Map["City"]["PosY"] 
	end
	User_ChgMap(nMapId,nCellx,nCelly,0,nUserId)
end
--进入狐妖森林
function NewFoxActNpc_GoKillMonster()
	if not Sys_ChkFullTime(tActivityTime["NewFoxAct"]["ActiveTime"]) then
		return
	end
	local nUserId = Get_UserId()
	local nMapId = tNewFoxActNpc_Map["Monster"]["MapId"]
	local nCellx = tNewFoxActNpc_Map["Monster"]["PosX"] 
	local nCelly = tNewFoxActNpc_Map["Monster"]["PosY"] 
	User_ChgMap(nMapId,nCellx,nCelly,0,nUserId)
	Sys_MsgBox(tNewFoxActNpc_Text["MsgBox"]["GoSuccess"])
end
--领取狐狸提示对白
function NewFoxActNpc_ReceiveFoxText(nNpcId)
	--当前狐狸等级
	local nEvent_FoxLev = tNewFoxActNpc_Stc["FoxLev"]["EventType"]
	local nType_FoxLev = tNewFoxActNpc_Stc["FoxLev"]["DataType"]
	local nLevel = Get_UserStatisticValue(nEvent_FoxLev,nType_FoxLev,nUserId)
	local sNpcName =tNewFoxActNpc_Text["Talk"]["Fox"][1][nLevel]
	if Task_ChkStcValue(nEvent_FoxLev,nType_FoxLev,"<",5,nUserId) then
		tNpcGossip[nNpcId]["Text1014"] = string.format(tNewFoxActNpc_Text[nNpcId]["Text1014"],sNpcName)
		LinkNpcGossipFunc_New(nNpcId,"10-1")
		return
	end
	local nIndex = 1 
	if Task_ChkStcValue(nEvent_FoxLev,nType_FoxLev,">=",13,nUserId) then
		nIndex = 2
	end
		--获取玩家狐狸颜色
	local nEvent_Color = tNewFoxActNpc_Stc["Color"]["EventType"]
	local nType_Color = tNewFoxActNpc_Stc["Color"]["DataType"]
	
	local nData = Get_UserStatisticValue(nEvent_FoxLev,nType_FoxLev) - 4
	local nColor = Get_UserStatisticValue(nEvent_Color,nType_Color)
	local sText = string.format(tNewFoxActNpc_Text["Talk"]["Reward"][nData],tNewFoxActNpc_Text["Fox"][nIndex][nColor])
	
	if Task_ChkStcValue(nEvent_FoxLev,nType_FoxLev,">=",13,nUserId) then
		tNpcGossip[nNpcId]["Text1105"] = string.format(tNewFoxActNpc_Text[nNpcId]["Text1105"],sText,tNewFoxActNpc_Text["Talk"]["Compound"])
	else
		tNpcGossip[nNpcId]["Text1105"] = string.format(tNewFoxActNpc_Text[nNpcId]["Text1105"],sText,tNewFoxActNpc_Text["Talk"]["NoCompound"])
	end
	tNpcGossip[nNpcId]["Text1104"] = string.format(tNewFoxActNpc_Text[nNpcId]["Text1104"],sNpcName)
	LinkNpcGossipFunc_New(nNpcId,"11-1")
end
--确认领取狐狸
function NewFoxActNpc_ReceiveFox()
	local sNpcName = tNewFoxActNpc_Text["Talk"]["FoxName"]
	local nMapId = Get_UserMapId()
	local nPosX = tNewFoxActNpc_Map["PosX"]
	local nPosY = tNewFoxActNpc_Map["PosY"]
	local nActionId = tNewFoxActNpc_Cont["ActionId"]
	local nUserId = Get_UserId()
	local sName = Get_UserName(nUserId)
	local nItemId = tNewFoxActNpc_Cont["MinFox"]
	local sBroad = ""
	local nBroadIndex = 1
	--当前狐狸等级
	local nEvent_FoxLev = tNewFoxActNpc_Stc["FoxLev"]["EventType"]
	local nType_FoxLev = tNewFoxActNpc_Stc["FoxLev"]["DataType"]
	--获取玩家狐狸颜色
	local nEvent_Color = tNewFoxActNpc_Stc["Color"]["EventType"]
	local nType_Color = tNewFoxActNpc_Stc["Color"]["DataType"]
	--获取玩家狐狸变异值
	local nEvent_Var = tNewFoxActNpc_Stc["Variation"]["EventType"]
	local nType_Var = tNewFoxActNpc_Stc["Variation"]["DataType"]
	--成长值
	local nEvent_Growth = tNewFoxActNpc_Stc["Growth"]["EventType"]
	local nType_Growth = tNewFoxActNpc_Stc["Growth"]["DataType"] 
	
	local nData = Get_UserStatisticValue(nEvent_FoxLev,nType_FoxLev) - 4
	local nColor = Get_UserStatisticValue(nEvent_Color,nType_Color)
	
	--检测活动时间
	if not Sys_ChkFullTime(tActivityTime["NewFoxAct"]["ChgCoatTime"]) then
		Sys_MsgBox(tNewFoxActNpc_Text["MsgBox"]["NoTime"],nil,nil,nUserId)
		return
	end
	
	--检测是否还在副本
	if not NewFoxActNpc_UserMap() then
		Sys_MsgBox(tNewFoxActNpc_Text["MsgBox"]["NoMap"],nil,nil)
		return
	end
	-- 检测背包空间
	if not RewardTemplate_CheckSpace(tNewFoxActNpc_FeedReward[nData]) then
		return Sys_MsgBox(tNewFoxActNpc_Text["MsgBox"]["NoSpace"])
	end
	
	if Task_ChkStcValue(nEvent_FoxLev,nType_FoxLev,">",7) and  Task_ChkStcValue(nEvent_FoxLev,nType_FoxLev,"<=",12) then
		nItemId = tNewFoxActNpc_Cont["FoxItem"]["Min"][nColor]
	elseif Task_ChkStcValue(nEvent_FoxLev,nType_FoxLev,">=",13) then
		nItemId = tNewFoxActNpc_Cont["FoxItem"]["Max"][nColor]
		nBroadIndex = 2
	end
	local sItemName = Get_ItemtypeName(nItemId)
	sBroad = string.format(tNewFoxActNpc_Text["Broad"]["GetFox"][nBroadIndex],sName,sItemName)
	Sys_SystemBroadcast(sBroad)
	local tReward = CommonFunc_Copy(tNewFoxActNpc_FeedReward[nData])
	tReward["RewardItem"][1]["Id"]  = nItemId
	
	
	if Npc_DelDynaNpc(nMapId,"name",sNpcName) then
		--狐狸等级妖力颜色清零
		Task_SetStatistic(nEvent_FoxLev,nType_FoxLev,0,1,nUserId)
		Task_SetStatistic(nEvent_Color,nType_Color,0,1,nUserId)
		Task_SetStatistic(nEvent_Var,nType_Var,0,1,nUserId)
		Task_SetStatistic(nEvent_Growth,nType_Growth,0,1,nUserId)
		Npc_CreateDynaNpc(sNpcName,2,1,15460,0,nUserId,nMapId,nPosX,nPosY,0,0,0,nActionId)
		RewardTemplate_UseItemAndMsg(tReward,nUserId)
		return
	end
end
--不变异
function NewFoxActNpc_NoChgColor(nNpcId)
	--当前狐狸等级
	local nEvent_FoxLev = tNewFoxActNpc_Stc["FoxLev"]["EventType"]
	local nType_FoxLev = tNewFoxActNpc_Stc["FoxLev"]["DataType"]
	--获取玩家狐狸变异值
	local nEvent_Var = tNewFoxActNpc_Stc["Variation"]["EventType"]
	local nType_Var = tNewFoxActNpc_Stc["Variation"]["DataType"]
	local nVarIndex = 1
	
	--5~7级的狐狸(变异值累计1000必变异 8级以上2000必变异)
	if Task_ChkStcValue(nEvent_FoxLev,nType_FoxLev,">",8,nUserId) then
		nVarIndex = 2
	end
	local nVarMax = tNewFoxActNpc_Cont["Variation"][nVarIndex][2]
	--玩家的变异值已经是最大值，不变异，不再增加
	if Task_ChkStcValue(nEvent_Var,nType_Var,">=",nVarMax,nUserId) then
		Task_SetStatistic(nEvent_Var,nType_Var,nVarMax,1,nUserId)
	end
	
	--检测是否还在副本
	if not NewFoxActNpc_UserMap() then
		Sys_MsgBox(tNewFoxActNpc_Text["MsgBox"]["NoMap"],nil,nil)
		return
	end
	
	NewFoxActNpc_DynaNpc(nNpcId)
end

--检测物品是否存在
function NewFoxActNpc_ChkItem(nItemId,nNeedNum)
	if Item_ChkMulItem(nItemId,nItemId,nNeedNum) then
		return true
	else
		return false
	end
end

--检测玩家是否还在副本
function NewFoxActNpc_UserMap()
	local nUserId = Get_UserId()
	local nUserMapId = Get_UserMapId(nUserId)
	local nMapDoc = Get_MapDoc(nMapId)
	if nMapDoc ~= nil and nMapDoc ~=tNewFoxActNpc_Cont["MapDoc"] then
		return false
	else
		return true
	end
end
--合成狐狸确认
function NewFoxActNpc_ComPoundConfirm()
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	--检测活动时间
	if not Sys_ChkFullTime(tActivityTime["NewFoxAct"]["ChgCoatTime"]) then
		Sys_MsgBox(tNewFoxActNpc_Text["MsgBox"]["NoTime"],nil,nil,nUserId)
		return
	end
	
	-- 检测背包空间
	if not User_CheckLeftSpace(tNewFoxActNpc_Cont["Space"]) then
		Sys_MsgBox(string.format(tNewFoxActNpc_Text["MsgBox"]["NoSpaceFeed"],tNewFoxActNpc_Cont["Space"]))
		return
	end
	
	for i,v in pairs(tNewFoxActNpc_Cont["ComPound"]) do 
		if not Item_ChkMulItem(v,v,1) then
			Sys_Msgbox(tNewFoxActNpc_Text["MsgBox"]["ComPoundFail"])
			return
		end
	end
	
	if RewardTemplate_UseItemAndMsg(tNewFoxActNpc_compound) then
		Sys_SystemBroadcast(string.format(tNewFoxActNpc_Text["Broad"]["CompoundCoat"],sUserName))
		Sys_MsgBox(tNewFoxActNpc_Text["MsgBox"]["ComPoundSuccess"])
	end
	
end
function NewFoxActNpc_OpenNovice(nIndex)
	User_NoviceTeaching(tNewFoxActNpc_Cont["PicId"][nIndex])
end
function NewFoxActNpc_OpenDialog(nNpcId)
	--检测活动时间
	if not Sys_ChkFullTime(tActivityTime["NewFoxAct"]["ChgCoatTime"]) then
		return
	end
	
	User_OpenDialog(0,nNpcId)
end
--------------------------------------NPC----------------------------------------
tNpcFace[1547]=2141
tNpcFace[1548]=2144
tNpcFace[1551]=2143
tNpcFace[1552]=2142
tNpcFace[1647]=2143
tNpcFace[1687]=2143

tNpcFace[1546]=831
tNpcFace[1549]=831
tNpcFace[1550]=831
tNpcFace[1553]=832
tNpcFace[1554]=831
tNpcFace[1555]=831
tNpcFace[1556]=831
tNpcFace[1557]=831
tNpcFace[1558]=831
tNpcFace[1559]=831
tNpcFace[1560]=831
tNpcFace[1561]=831
tNpcFace[1562]=831
tNpcFace[1563]=831
tNpcFace[1564]=831
tNpcFace[1565]=831
tNpcFace[1566]=831
tNpcFace[1567]=831
tNpcFace[1568]=831
tNpcFace[1569]=831
tNpcFace[1570]=831
tNpcFace[1571]=831
tNpcFace[1572]=831
tNpcFace[1573]=831
tNpcFace[1574]=831
tNpcFace[1575]=831
tNpcFace[1576]=831
tNpcFace[1577]=831
tNpcFace[1578]=831
tNpcFace[1579]=831
tNpcFace[1580]=831
tNpcFace[1581]=831
tNpcFace[1582]=831
tNpcFace[1583]=831
tNpcFace[1584]=831
tNpcFace[1585]=831
tNpcFace[1586]=831
tNpcFace[1587]=831
tNpcFace[1588]=831
tNpcFace[1589]=831
tNpcFace[1590]=831
tNpcFace[1591]=831
tNpcFace[1592]=831
tNpcFace[1593]=831


--皮皮
tNpcGossip[23803]=tNpcGossip[23803] or DefaultNpc:new{}
tNpcGossip[23803]["OptionHidden"]=1
tNpcGossip[23803]["DialogueText"]=tNewFoxActNpc_Text[23803]

--等级不足
tNpcGossip[23803]["Text1-1"]={111,112,113,114,115,116,117,118,119,1110,1111}
tNpcGossip[23803]["tOption1-1"]={111}
tNpcGossip[23803]["ChkFunc1-1"] = function()
	-- 判断等级
	local nLevel = tNewFoxActNpc_Cont["Level"]
	local nMete = tNewFoxActNpc_Cont["Mete"] 
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return true
	else
		return false
	end
end
--还未喂养
tNpcGossip[23803]["Text1-2"]={121,122,123,124,125,126}
tNpcGossip[23803]["tOption1-2"]={121,122,123}
tNpcGossip[23803]["ChkFunc1-2"] = function()
	local nEvent = tNewFoxActNpc_Stc["Begin"]["EventType"]
	local nType = tNewFoxActNpc_Stc["Begin"]["DataType"] 
	if Task_ChkStcValue(nEvent,nType,"==",0) then
		return true
	else
		return false
	end
end
tNpcGossip[23803]["OptionPoint121"] = "2-1"
tNpcGossip[23803]["OptionPoint122"] = "3-1"
tNpcGossip[23803]["OptionPoint123"] = "4-1"


--已经喂养
tNpcGossip[23803]["Text1-3"]={131,132,1312,133,134,135,1313,136,137,138,139,1310,1311}
tNpcGossip[23803]["tOption1-3"]={131,132,133,134}
tNpcGossip[23803]["ChkFunc1-3"] = function()
	local nEvent_FoxLev = tNewFoxActNpc_Stc["FoxLev"]["EventType"]
	local nType_FoxLev = tNewFoxActNpc_Stc["FoxLev"]["DataType"]
	local nLevel = Get_UserStatisticValue(nEvent_FoxLev,nType_FoxLev,nUserId)
	local sNpcName =tNewFoxActNpc_Text["Talk"]["Fox"][1][nLevel]
	
	local nGroData,nNeedGro,nFullData,nNeedFull,nVarData,nNeedVar = NewFoxActNpc_TransText()
	local nNowGroData = math.modf((nGroData/nNeedGro) * 15)
	local nNowFullData = math.modf((nFullData/nNeedFull) * 15)
	tNpcGossip[23803]["Text132"] = string.format(tNewFoxActNpc_Text[23803]["Text132"],sNpcName)
	if nNeedVar == 0 then
		tNpcGossip[23803]["Text135"] = ""
	else
		local nNowVarData = math.modf((nVarData/nNeedVar) * 15)
		tNpcGossip[23803]["Text135"] = string.format(tNewFoxActNpc_Text[23803]["Text135"],tNewFoxActNpc_Text["Talk"]["Value"][nNowVarData],nVarData,nNeedVar)
	end
	tNpcGossip[23803]["Text134"] = string.format(tNewFoxActNpc_Text[23803]["Text134"],tNewFoxActNpc_Text["Talk"]["Value"][nNowGroData],nGroData,nNeedGro)
	tNpcGossip[23803]["Text133"] = string.format(tNewFoxActNpc_Text[23803]["Text133"],tNewFoxActNpc_Text["Talk"]["Value"][nNowFullData],nFullData,nNeedFull)
	return true
end


tNpcGossip[23803]["OptionPoint131"] = "2-1"
tNpcGossip[23803]["OptionPoint132"] = "3-1"
tNpcGossip[23803]["OptionPoint133"] = "4-1"
tNpcGossip[23803]["OptionFunc134"] = "NewFoxActNpc_ReceiveFoxText</N>23803"

--最高等级
tNpcGossip[23803]["Text1-4"]={141,142}
tNpcGossip[23803]["tOption1-4"]={141}
tNpcGossip[23803]["OptionFunc141"] ="NewFoxActNpc_ReceiveFox"

--活动时间后 可领取
tNpcGossip[23803]["Text1-5"]={151,152}
tNpcGossip[23803]["tOption1-5"]={151}
tNpcGossip[23803]["OptionFunc151"] ="NewFoxActNpc_ReceiveFoxText</N>23803"
--活动时间后 不可领取
tNpcGossip[23803]["Text1-6"]={161,162}
tNpcGossip[23803]["tOption1-6"]={161}




	--喂养合气丹
tNpcGossip[23803]["Text2-1"]={211,212,213,214,215,216,217}
tNpcGossip[23803]["tOption2-1"]={211,212,213,214}
tNpcGossip[23803]["OptionChkFunc211"] = function ()
	return NewFoxActNpc_ChkItem(tNewFoxActNpc_Cont["nItemId"][1],1)
end
tNpcGossip[23803]["OptionChkFunc212"] = function ()
	return not NewFoxActNpc_ChkItem(tNewFoxActNpc_Cont["nItemId"][1],1)
end
tNpcGossip[23803]["OptionChkFunc213"] = function ()
	return NewFoxActNpc_ChkItem(tNewFoxActNpc_Cont["nItemId"][1],10)
end
tNpcGossip[23803]["OptionChkFunc214"] = function ()
	return not NewFoxActNpc_ChkItem(tNewFoxActNpc_Cont["nItemId"][1],10)
end


tNpcGossip[23803]["OptionFunc211"] = "NewFoxActNpc_FeedingOne</N>3320169</N>1</N>23803"
tNpcGossip[23803]["OptionFunc212"] = "NewFoxActNpc_FeedingConfirm</N>3320169</N>1</N>23803"
tNpcGossip[23803]["OptionFunc213"] = "NewFoxActNpc_FeedingTen</N>3320169</N>1</N>23803"
tNpcGossip[23803]["OptionFunc214"] = "NewFoxActNpc_FeedingConfirm</N>3320169</N>10</N>23803"
	--喂养造化灵丹
tNpcGossip[23803]["Text3-1"]={311,312,313,314,315,316,317}
tNpcGossip[23803]["tOption3-1"]={311,312,313,314}
tNpcGossip[23803]["OptionChkFunc311"] = function ()
	return NewFoxActNpc_ChkItem(tNewFoxActNpc_Cont["nItemId"][2],1)
end
tNpcGossip[23803]["OptionChkFunc312"] = function ()
	return not NewFoxActNpc_ChkItem(tNewFoxActNpc_Cont["nItemId"][2],1)
end
tNpcGossip[23803]["OptionChkFunc313"] = function ()
	return NewFoxActNpc_ChkItem(tNewFoxActNpc_Cont["nItemId"][2],10)
end
tNpcGossip[23803]["OptionChkFunc314"] = function ()
	return not NewFoxActNpc_ChkItem(tNewFoxActNpc_Cont["nItemId"][2],10)
end
tNpcGossip[23803]["OptionFunc311"] = "NewFoxActNpc_FeedingOne</N>3320170</N>1</N>23803"
tNpcGossip[23803]["OptionFunc312"] = "NewFoxActNpc_FeedingConfirm</N>3320170</N>1</N>23803"
tNpcGossip[23803]["OptionFunc313"] = "NewFoxActNpc_FeedingTen</N>3320170</N>1</N>23803"
tNpcGossip[23803]["OptionFunc314"] = "NewFoxActNpc_FeedingConfirm</N>3320170</N>10</N>23803"
	--喂养九花玉露丸
tNpcGossip[23803]["Text4-1"]={411,412,413,414,415,416,417}
tNpcGossip[23803]["tOption4-1"]={411,412,413,414}
tNpcGossip[23803]["OptionChkFunc411"] = function ()
	return NewFoxActNpc_ChkItem(tNewFoxActNpc_Cont["nItemId"][3],1)
end
tNpcGossip[23803]["OptionChkFunc412"] = function ()
	return not NewFoxActNpc_ChkItem(tNewFoxActNpc_Cont["nItemId"][3],1)
end
tNpcGossip[23803]["OptionChkFunc413"] = function ()
	return NewFoxActNpc_ChkItem(tNewFoxActNpc_Cont["nItemId"][3],10)
end
tNpcGossip[23803]["OptionChkFunc414"] = function ()
	return not NewFoxActNpc_ChkItem(tNewFoxActNpc_Cont["nItemId"][3],10)
end
tNpcGossip[23803]["OptionFunc411"] = "NewFoxActNpc_FeedingOne</N>3320171</N>1</N>23803"
tNpcGossip[23803]["OptionFunc412"] = "NewFoxActNpc_FeedingConfirm</N>3320171</N>1</N>23803"
tNpcGossip[23803]["OptionFunc413"] = "NewFoxActNpc_FeedingTen</N>3320171</N>1</N>23803"
tNpcGossip[23803]["OptionFunc414"] = "NewFoxActNpc_FeedingConfirm</N>3320171</N>10</N>23803"

tNpcGossip[23803]["Text5-1"]={511}
tNpcGossip[23803]["tOption5-1"]={511,512}
tNpcGossip[23803]["OptionFunc511"] = "NewFoxActNpc_ChgColor</N>23803"
tNpcGossip[23803]["OptionFunc512"] = "NewFoxActNpc_NoChgColor</N>23803"

tNpcGossip[23803]["Text6-1"]={611,612,613,614,615,616,617,618}
tNpcGossip[23803]["tOption6-1"]={611}
tNpcGossip[23803]["OptionFunc611"] = "NewFoxActNpc_DynaNpc</N>23803"

tNpcGossip[23803]["Text7-1"]={711,712,713,714,715,716,717}
tNpcGossip[23803]["tOption7-1"]={711}
tNpcGossip[23803]["OptionPoint711"] = "1"

tNpcGossip[23803]["Text8-1"]={811}
tNpcGossip[23803]["tOption8-1"]={811,812}
tNpcGossip[23803]["OptionPoint812"] = "9-1"

tNpcGossip[23803]["Text9-1"]={911}
tNpcGossip[23803]["tOption9-1"]={911,912}
tNpcGossip[23803]["OptionFunc911"] = "NewFoxActNpc_ShieldingConfirm</N>1</N>23803"


tNpcGossip[23803]["Text10-1"]={1011,1012,1013,1014,1015,1016,1017}
tNpcGossip[23803]["tOption10-1"]={1011}
tNpcGossip[23803]["OptionPoint1011"] = "1"

tNpcGossip[23803]["Text11-1"]={1101,1102,1103,1104,1105,1106,1107}
tNpcGossip[23803]["tOption11-1"]={1101,1102}
tNpcGossip[23803]["OptionFunc1101"] = "NewFoxActNpc_ReceiveFox"
tNpcGossip[23803]["OptionPoint1102"] = "1"

tNpcGossip[23803]["Text12-1"]={1201,1202,1203,1204}
tNpcGossip[23803]["tOption12-1"]={1201}
tNpcGossip[23803]["OptionPoint1201"] = "1"



--涂山雅雅
tNpcGossip[23804]=tNpcGossip[23804] or DefaultNpc:new{}
tNpcGossip[23804]["OptionHidden"]=1
tNpcGossip[23804]["DialogueText"]=tNewFoxActNpc_Text[23804]
--活动前
tNpcGossip[23804]["Text1-1"]={111,112,113,114,115,116,117}
tNpcGossip[23804]["tOption1-1"]={111}
tNpcGossip[23804]["ChkFunc1-1"] = function()
	if Sys_ChkFullTime(tActivityTime["NewFoxAct"]["BefTime"]) then
		return true
	end
end

--活动后
tNpcGossip[23804]["Text1-2"]={121,122}
tNpcGossip[23804]["tOption1-2"]={121}
tNpcGossip[23804]["ChkFunc1-2"] = function()
	if not Sys_ChkFullTime(tActivityTime["NewFoxAct"]["ChgCoatTime"]) then
		return true
	end
end

--活动中 等级不满足
tNpcGossip[23804]["Text1-3"]={131,132,133,134,135,136,137}
tNpcGossip[23804]["tOption1-3"]={131}
tNpcGossip[23804]["ChkFunc1-3"] = function()
	-- 判断等级
	local nLevel = tNewFoxActNpc_Cont["Level"]
	local nMete = tNewFoxActNpc_Cont["Mete"] 
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return true
	else
		return false
	end
end
--活动中 等级满足
tNpcGossip[23804]["Text1-4"]={141,142,143,144,145,146,147}
tNpcGossip[23804]["tOption1-4"]={141,142,143,144}
tNpcGossip[23804]["OptionFunc141"] = "NewFoxActNpc_IntoInstance"
tNpcGossip[23804]["OptionPoint142"] = "1-5"
tNpcGossip[23804]["OptionFunc143"] = "NewFoxActNpc_OpenNovice</N>1"
tNpcGossip[23804]["OptionFunc144"] = "NewFoxActNpc_OpenNovice</N>2"


--合成外套
tNpcGossip[23804]["Text1-5"]={151}
tNpcGossip[23804]["tOption1-5"]={151,152,153}
tNpcGossip[23804]["OptionChkFunc151"] = function()
	for i,v in pairs(tNewFoxActNpc_Cont["ComPound"]) do 
		if not Item_ChkMulItem(v,v,1) then
			return true
		end
		return false
	end
end
tNpcGossip[23804]["OptionChkFunc152"] = function()
	for i,v in pairs(tNewFoxActNpc_Cont["ComPound"]) do 
		if not Item_ChkMulItem(v,v,1) then
			return false
		end
		return true
	end
end
tNpcGossip[23804]["OptionChkFunc153"] = function()
	for i,v in pairs(tNewFoxActNpc_Cont["ComPound"]) do 
		if not Item_ChkMulItem(v,v,1) then
			return false
		end
		return true
	end
end
tNpcGossip[23804]["OptionFunc152"] = "NewFoxActNpc_ComPoundConfirm"


--涂山美美
tNpcGossip[23807]=tNpcGossip[23807] or DefaultNpc:new{}
tNpcGossip[23807]["OptionHidden"]=1
tNpcGossip[23807]["DialogueText"]=tNewFoxActNpc_Text[23807]
--活动中
tNpcGossip[23807]["Text1-1"]={111,112,113,114,115,116}
tNpcGossip[23807]["tOption1-1"]={111}
tNpcGossip[23807]["ChkFunc1-1"] = function()
	if Sys_ChkFullTime(tActivityTime["NewFoxAct"]["BefTime"]) then
		return true
	end
end

--活动后
tNpcGossip[23807]["Text1-2"]={121,122}
tNpcGossip[23807]["tOption1-2"]={121}
tNpcGossip[23807]["ChkFunc1-2"] = function()
	if not Sys_ChkFullTime(tActivityTime["NewFoxAct"]["ChgCoatTime"]) then
		return true
	end
end

--活动中 等级不满足
tNpcGossip[23807]["Text1-3"]={131,132,133,134,135,136}
tNpcGossip[23807]["tOption1-3"]={131}
tNpcGossip[23807]["ChkFunc1-3"] = function()
	-- 判断等级
	local nLevel = tNewFoxActNpc_Cont["Level"]
	local nMete = tNewFoxActNpc_Cont["Mete"] 
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return true
	else
		return false
	end
end
--活动中 等级满足
tNpcGossip[23807]["Text1-4"]={141,142,143,144,145,146}
tNpcGossip[23807]["tOption1-4"]={141}
tNpcGossip[23807]["OptionFunc141"] = "NewFoxActNpc_OpenShop</N>23807"



--昊天玄狐
tNpcGossip[23931]=tNpcGossip[23931] or DefaultNpc:new{}
tNpcGossip[23931]["OptionHidden"]=1
tNpcGossip[23931]["DialogueText"]=tNewFoxActNpc_Text[23931]
tNpcGossip[23931]["Text1-1"]={111,112,113}
tNpcGossip[23931]["tOption1-1"]={111}

--幻月仙狐
tNpcGossip[23805]=tNpcGossip[23805] or DefaultNpc:new{}
tNpcGossip[23805]["OptionHidden"]=1
tNpcGossip[23805]["DialogueText"]=tNewFoxActNpc_Text[23805]
--活动前
tNpcGossip[23805]["Text1-1"]={111,112}
tNpcGossip[23805]["tOption1-1"]={111}

--幻月仙狐
tNpcGossip[23806]=tNpcGossip[23806] or DefaultNpc:new{}
tNpcGossip[23806]["OptionHidden"]=1
tNpcGossip[23806]["DialogueText"]=tNewFoxActNpc_Text[23806]
--活动前
tNpcGossip[23806]["Text1-1"]={111,112}
tNpcGossip[23806]["tOption1-1"]={111}


--幻月仙狐
tNpcFace[1648] = 171
tNpcGossip[23937]=tNpcGossip[23937] or DefaultNpc:new{}
tNpcGossip[23937]["OptionHidden"]=1
tNpcGossip[23937]["DialogueText"]=tNewFoxActNpc_Text[23937]
--活动前
tNpcGossip[23937]["Text1-1"]={111}
tNpcGossip[23937]["tOption1-1"]={111}
tNpcGossip[23937]["OptionFunc111"] = "NewFoxActNpc_OpenDialog</N>23937"

----------------------------------------------------------------
tItem[3312174] = tItem[3312174] or {}
tItem[3312174]["Function"] = function(nItemId, sItemName)
	local sDelLog = ""
	--检测活动时间
	if not Sys_ChkFullTime(tActivityTime["NewFoxAct"]["DelTime"]) then
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId,nil,nil,nUserId) and Item_DelAllItemByType(nItemId,nUserId) then
			sDelLog = string.format(tNewFoxActNpc_Log["DelItemlog"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sDelLog,nUserId)
			Sys_MsgBox(tNewFoxActNpc_Text["MsgBox"]["NoActiveTime"] )
			return
		end
	end
	
	-- 检测背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tNewFoxActNpc_RewardItem,1,nUserId)
	if not User_CheckLeftSpace(nSpace) then
		return Sys_MsgBox(tNewFoxActNpc_Text["MsgBox"]["NoSpace"])
	end
	
	if Item_ChkMulItem(nItemId,nItemId,1) and Item_DelMulItem(nItemId,nItemId,1) then 
		sDelLog = string.format(tNewFoxActNpc_Log["DelItemlog"],nItemId,1)
		Sys_SaveActionFestivalLog(sDelLog,nUserId)
		local tTabA,sItemName = RewardTemplate_NewRandomNoTip(tNewFoxActNpc_RewardItem,1)
	end
	

	
end

--------------------------------陷阱部分--------------------------------
tTrap[144] = tTrap[144] or {}
tTrap[144]["Function"] = function(nTrapId,nTrapType)
	local nUserId = Get_UserId()
	Sys_MsgBox(tNewFoxActNpc_Text["MsgBox"]["ChgMap"],"NewFoxActNpc_ChgMap",nil,nUserId)
end
tTrap[145] = tTrap[144]

tTrap[146] = tTrap[146] or {}
tTrap[146]["Function"] = function(nTrapId,nTrapType)
	local nUserId = Get_UserId()
	-- 判断等级
	local nLevel = tNewFoxActNpc_Cont["Level"]
	local nMete = tNewFoxActNpc_Cont["Mete"] 
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		Sys_MsgBox(tNewFoxActNpc_Text["Talk"]["LevelMin"])
		return
	end
	Sys_MsgBox(tNewFoxActNpc_Text["MsgBox"]["GoKillMonster"],"NewFoxActNpc_GoKillMonster",nil,nUserId)
end


--------------------------------------------上线触发---------------------------------------
-- 上线 
-- tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- table.insert(tSystem_PlayLogin_Func,NewFoxActNpc_ShieldingClearStc)
