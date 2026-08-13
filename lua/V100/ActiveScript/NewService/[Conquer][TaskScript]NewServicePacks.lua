------------------------------------------------------------------------------------
--Name:		160823[英文征服][任务脚本]制作9月新服预约礼包及发奖action(9.8)
--Purpose:		新服预约礼包
--Creator:		许乐
--Created:		2016/08/23
------------------------------------------------------------------------------------
-- 前缀
-- NewServicePacks_

--------------- 掩码说明
-- (143,16)--(143,21)		--分别表示是否已领取了对应奖励 (3008871-3008876)

-- logid： 12000323
---------------------------------------------------数据配置-------------------------------------------------------------------
local tNewServicePacks_Cont = {}
	tNewServicePacks_Cont["Level"] = 0
	
	tNewServicePacks_Cont["NeedEmoney"] = {}
	tNewServicePacks_Cont["NeedEmoney"][3008871] = 1099
	tNewServicePacks_Cont["NeedEmoney"][3008872] = 999
	tNewServicePacks_Cont["NeedEmoney"][3008873] = 899

local tNewServicePacks_Stc = {}
	tNewServicePacks_Stc["EventType"] = 143
	tNewServicePacks_Stc["DataType"] = {}
	tNewServicePacks_Stc["DataType"][3008871] = 16
	tNewServicePacks_Stc["DataType"][3008872] = 17
	tNewServicePacks_Stc["DataType"][3008873] = 18
	tNewServicePacks_Stc["DataType"][3008874] = 19
	tNewServicePacks_Stc["DataType"][3008875] = 20
	tNewServicePacks_Stc["DataType"][3008876] = 21
	
	tNewServicePacks_Stc["Record"] = {}
	tNewServicePacks_Stc["Record"][1] = 1
	tNewServicePacks_Stc["Record"][2] = 2
	tNewServicePacks_Stc["Record"][3] = 4
	
local tNewServicePacks_Reward = {}
	-- 3008871  初级开服礼盒
	-- 领取一转礼品。
	tNewServicePacks_Reward[3008871] = {}
	tNewServicePacks_Reward[3008871][1] = {}
	-- tNewServicePacks_Reward[3008871][1]["Item"] = {723700,720027,721170,720128,720399,3003103}
	-- tNewServicePacks_Reward[3008871][1]["Attr"] = {"0 2 3","0 1 3","0 1 3","0 2 3","0 1 3","0 1 3"}
	-- tNewServicePacks_Reward[3008871][1]["Log"] = "0,0,3008871,1,18000095,2,723700[720027][721170][720128][720399][3003103],2[1][1][2][1][1]"
	-- tNewServicePacks_Reward[3008871][1]["Space"] = 6
	tNewServicePacks_Reward[3008871][1]["Item"] = {723700,720027,721170,720128,720399,3003103,3009001}
	tNewServicePacks_Reward[3008871][1]["Attr"] = {"0 2 3","0 1 3","0 1 3","0 2 3","0 1 3","0 1 3","0 1 0 2880 1"}
	tNewServicePacks_Reward[3008871][1]["Log"] = "0,0,3008871,1,18000095,2,723700[720027][721170][720128][720399][3003103][3009001],2[1][1][2][1][1][1]"
	tNewServicePacks_Reward[3008871][1]["Space"] = 7
	
	-- 超值换购ExemptionToken（赠）。（1099点天石）
	tNewServicePacks_Reward[3008871][2] = {}
	tNewServicePacks_Reward[3008871][2]["Item"] = {723701}
	tNewServicePacks_Reward[3008871][2]["Attr"] = {"0 1 3"}
	tNewServicePacks_Reward[3008871][2]["Log"] = "0,0,3008871,1,18000095,2,723701,1"
	tNewServicePacks_Reward[3008871][2]["Space"] = 1
	-- 领取二转礼品。
	tNewServicePacks_Reward[3008871][3] = {}
	-- tNewServicePacks_Reward[3008871][3]["Item"] = {723700,729481,730002,3003125,720128,360034}
	-- tNewServicePacks_Reward[3008871][3]["Attr"] = {"0 5 3","0 2 3","0 1","0 5 3","0 2 3","0 1 3 43200 0 0 0 1"}
	-- tNewServicePacks_Reward[3008871][3]["Log"] = "0,0,3008871,1,18000095,2,723700[729481][730002][3003125][720128][360034],5[2][1][5][2][1]"
	-- tNewServicePacks_Reward[3008871][3]["Space"] = 7
	tNewServicePacks_Reward[3008871][3]["Item"] = {723700,729481,730002,3003125,360034,3300373,3009001,1088000}
	tNewServicePacks_Reward[3008871][3]["Attr"] = {"0 5 3","0 2 3","0 1","0 5 3","0 1 3 43200 0 0 0 1","0 1 3","0 3 0 2880 1","0 1 3"}
	tNewServicePacks_Reward[3008871][3]["Log"] = "0,0,3008871,1,18000095,2,723700[729481][730002][3003125][360034][3300373][3009001][1088000],5[2][1][5][1][1][3][1]"
	tNewServicePacks_Reward[3008871][3]["Space"] = 11
	
	-- 3008872  中级开服礼盒
	-- 领取一转礼品。
	tNewServicePacks_Reward[3008872] = {}
	tNewServicePacks_Reward[3008872][1] = {}
	-- tNewServicePacks_Reward[3008872][1]["Item"] = {723700,720027,3003106,720128,727811,3003104}
	-- tNewServicePacks_Reward[3008872][1]["Attr"] = {"0 5 3","0 3 3","0 1 3","0 5 3","0 1 3","0 1 3"}
	-- tNewServicePacks_Reward[3008872][1]["Log"] = "0,0,3008872,1,18000095,2,723700[720027][3003106][720128][727811][3003104],5[3][1][5][1][1]"
	-- tNewServicePacks_Reward[3008872][1]["Space"] = 8
	tNewServicePacks_Reward[3008872][1]["Item"] = {723700,720027,3003106,720128,727811,3003104,3009001}
	tNewServicePacks_Reward[3008872][1]["Attr"] = {"0 5 3","0 3 3","0 1 3","0 5 3","0 1 3","0 1 3","0 2 0 2880 1"}
	tNewServicePacks_Reward[3008872][1]["Log"] = "0,0,3008872,1,18000095,2,723700[720027][3003106][720128][727811][3003104][3009001],5[3][1][5][1][1][2]"
	tNewServicePacks_Reward[3008872][1]["Space"] = 10
	
	-- 超值换购ExemptionToken（赠）。（999点天石）
	tNewServicePacks_Reward[3008872][2] = {}
	tNewServicePacks_Reward[3008872][2]["Item"] = {723701}
	tNewServicePacks_Reward[3008872][2]["Attr"] = {"0 1 3"}
	tNewServicePacks_Reward[3008872][2]["Log"] = "0,0,3008872,1,18000095,2,723701,1"
	tNewServicePacks_Reward[3008872][2]["Space"] = 1
	-- 领取二转礼品。
	tNewServicePacks_Reward[3008872][3] = {}
	-- tNewServicePacks_Reward[3008872][3]["Item"] = {723700,729481,730002,3003125,720128,183395}
	-- tNewServicePacks_Reward[3008872][3]["Attr"] = {"0 10 3","0 4 3","0 1","0 10 3","0 5 3","0 1 3 43200 0 0 0 1"}
	-- tNewServicePacks_Reward[3008872][3]["Log"] = "0,0,3008872,1,18000095,2,723700[729481][730002][3003125][720128][183395],10[4][1][10][5][1]"
	-- tNewServicePacks_Reward[3008872][3]["Space"] = 9
	tNewServicePacks_Reward[3008872][3]["Item"] = {723700,729481,730002,3003125,183395,3300373,3009001,1088000}
	tNewServicePacks_Reward[3008872][3]["Attr"] = {"0 10 3","0 4 3","0 1","0 10 3","0 1 3 43200 0 0 0 1","0 1 3","0 3 0 2880 1","0 1 3"}
	tNewServicePacks_Reward[3008872][3]["Log"] = "0,0,3008872,1,18000095,2,723700[729481][730002][3003125][183395][3300373][3009001][1088000],10[4][1][10][1][1][3][1]"
	tNewServicePacks_Reward[3008872][3]["Space"] = 13
	
	-- 3008873  高级开服礼盒		
	-- 领取一转礼品。
	tNewServicePacks_Reward[3008873] = {}
	tNewServicePacks_Reward[3008873][1] = {}
	-- tNewServicePacks_Reward[3008873][1]["Item"] = {723700,720027,3003107,720128,3005892,3004099}
	-- tNewServicePacks_Reward[3008873][1]["Attr"] = {"0 10 3","0 5 3","0 1 3","0 10 3","0 1 3","0 1 3"}
	-- tNewServicePacks_Reward[3008873][1]["Log"] = "0,0,3008873,1,18000095,2,723700[720027][3003107][720128][3005892][3004099],10[5][1][10][1][1]"
	-- tNewServicePacks_Reward[3008873][1]["Space"] = 10
	tNewServicePacks_Reward[3008873][1]["Item"] = {723700,720027,3003107,720128,3005892,3004099,3009001}
	tNewServicePacks_Reward[3008873][1]["Attr"] = {"0 10 3","0 5 3","0 1 3","0 10 3","0 1 3","0 1 3","0 3 0 2880 1"}
	tNewServicePacks_Reward[3008873][1]["Log"] = "0,0,3008873,1,18000095,2,723700[720027][3003107][720128][3005892][3004099][3009001],10[5][1][10][1][1][3]"
	tNewServicePacks_Reward[3008873][1]["Space"] = 13
	
	-- 超值换购ExemptionToken（赠）。（899点天石）
	tNewServicePacks_Reward[3008873][2] = {}
	tNewServicePacks_Reward[3008873][2]["Item"] = {723701}
	tNewServicePacks_Reward[3008873][2]["Attr"] = {"0 1 3"}
	tNewServicePacks_Reward[3008873][2]["Log"] = "0,0,3008873,1,18000095,2,723701,1"
	tNewServicePacks_Reward[3008873][2]["Space"] = 1
	-- 领取二转礼品。
	tNewServicePacks_Reward[3008873][3] = {}
	-- tNewServicePacks_Reward[3008873][3]["Item"] = {723700,729481,730003,3003126,720128,200538}
	-- tNewServicePacks_Reward[3008873][3]["Attr"] = {"0 15 3","0 8 3","0 1","0 3 3","0 10 3","0 1 3 43200 0 0 0 1"}
	-- tNewServicePacks_Reward[3008873][3]["Log"] = "0,0,3008873,1,18000095,2,723700[729481][730003][3003126][720128][200538],15[8][1][3][10][1]"
	-- tNewServicePacks_Reward[3008873][3]["Space"] = 14
	tNewServicePacks_Reward[3008873][3]["Item"] = {723700,729481,730003,3003126,200538,3300373,3009001,1088000}
	tNewServicePacks_Reward[3008873][3]["Attr"] = {"0 15 3","0 8 3","0 1","0 3 3","0 1 3 43200 0 0 0 1","0 1 3","0 3 0 2880 1","0 2 3"}
	tNewServicePacks_Reward[3008873][3]["Log"] = "0,0,3008873,1,18000095,2,723700[729481][730003][3003126][200538][3300373][3009001][1088000],15[8][1][3][1][1][3][2]"
	tNewServicePacks_Reward[3008873][3]["Space"] = 19
	
	-- 3008874  VIP专享开服礼盒		
	-- 领取一转礼品。
	tNewServicePacks_Reward[3008874] = {}
	tNewServicePacks_Reward[3008874][1] = {}
	tNewServicePacks_Reward[3008874][1]["Item"] = {1100003,192395,200413,3008877}
	tNewServicePacks_Reward[3008874][1]["Attr"] = {"0 1 3","0 1 3 43200 0 0 0 1","0 1 3 43200 0 0 0 1","0 1 3 43200 1"}
	tNewServicePacks_Reward[3008874][1]["Log"] = "0,0,3008874,1,18000095,2,1100003[192395][200413][3008877],1[1][1][1]"
	tNewServicePacks_Reward[3008874][1]["Space"] = 5
	-- 领取二转礼品。
	tNewServicePacks_Reward[3008874][2] = {}
	tNewServicePacks_Reward[3008874][2]["Item"] = {3003109,729481,3003126,3002029,184365}
	tNewServicePacks_Reward[3008874][2]["Attr"] = {"0 1 3","0 10 3","0 5 3","0 2 3","0 1 3"}
	tNewServicePacks_Reward[3008874][2]["Log"] = "0,0,3008874,1,18000095,2,3003109[729481][3003126][3002029][184365],1[10][5][2][1]"
	tNewServicePacks_Reward[3008874][2]["Space"] = 15
	
	-- 3008875  帮众专享开服礼盒		
	-- 领取一转礼品。
	tNewServicePacks_Reward[3008875] = {}
	tNewServicePacks_Reward[3008875][1] = {}
	tNewServicePacks_Reward[3008875][1]["Item"] = {723700,3003652,720828,3005892,3005111}
	tNewServicePacks_Reward[3008875][1]["Attr"] = {"0 5 3","0 1 3","0 1 3","0 1 3","0 1 3"}
	tNewServicePacks_Reward[3008875][1]["Log"] = "0,0,3008875,1,18000095,2,723700[3003652][720828][3005892][3005111],5[1][1][1][1]"
	tNewServicePacks_Reward[3008875][1]["Space"] = 5
	-- 领取二转礼品。
	tNewServicePacks_Reward[3008875][2] = {}
	tNewServicePacks_Reward[3008875][2]["Item"] = {723700,3001341,729481,3001407,3003125}
	tNewServicePacks_Reward[3008875][2]["Attr"] = {"0 3 3","0 1 3","0 2 3","0 1 3","0 5 3"}
	tNewServicePacks_Reward[3008875][2]["Log"] = "0,0,3008875,1,18000095,2,723700[3001341][729481][3001407][3003125],3[1][2][1][5]"
	tNewServicePacks_Reward[3008875][2]["Space"] = 6
	
	-- 3008876  帮主尊贵礼盒		
	-- 领取一转礼品。
	tNewServicePacks_Reward[3008876] = {}
	tNewServicePacks_Reward[3008876][1] = {}
	tNewServicePacks_Reward[3008876][1]["Item"] = {3008878,3008879,3008880,3003110}
	tNewServicePacks_Reward[3008876][1]["Attr"] = {"0 1 0 0 0 0 0 1","0 1 0 0 0 0 0 1","0 1","0 1 3"}
	tNewServicePacks_Reward[3008876][1]["Log"] = "0,0,3008876,1,18000095,2,3008878[3008879][3008880][3003110],1[1][1][1]"
	tNewServicePacks_Reward[3008876][1]["Space"] = 4
	
	-- 武器外套时效礼盒 3008877
	tNewServicePacks_Reward[360042] = "0 1 3 43200 0 0 0 1"
	tNewServicePacks_Reward[350032] = "0 1 3 43200 0 0 0 1"
	-- 神佑时装永久礼盒 3008878
	tNewServicePacks_Reward[189255] = "0 1 3 0 0 0 0 1"
	tNewServicePacks_Reward[189085] = "0 1 3 0 0 0 0 1"
	-- 神佑坐骑外套永久包 3008879
	tNewServicePacks_Reward[200539] = "0 1 3 0 0 0 0 1"
	tNewServicePacks_Reward[200403] = "0 1 3 0 0 0 0 1"
	-- 武器外套永久礼盒 3008880
	tNewServicePacks_Reward[350012] = "0 1"
	tNewServicePacks_Reward[360028] = "0 1"
	
------------------------------------------------武器礼包---------------------------------------
local tNewServicePacks_Pack = {}
	--精品武器礼包
	tNewServicePacks_Pack[3300373] = {}
	--勇士
	tNewServicePacks_Pack[3300373][10] = {}
	tNewServicePacks_Pack[3300373][10]["DialogIndex"] = "6-1"
	--下面武器三选一
	tNewServicePacks_Pack[3300373][10]["Option"] = {}
	--赠品修罗刀
	tNewServicePacks_Pack[3300373][10]["Option"][1] = {}
	tNewServicePacks_Pack[3300373][10]["Option"][1]["Item_ID"] = 410029
	tNewServicePacks_Pack[3300373][10]["Option"][1]["ItemAttr"] = "0 1 3"
	--赠品青冥剑
	tNewServicePacks_Pack[3300373][10]["Option"][2] = {}
	tNewServicePacks_Pack[3300373][10]["Option"][2]["Item_ID"] = 420029
	tNewServicePacks_Pack[3300373][10]["Option"][2]["ItemAttr"] = "0 1 3"
	--赠品短木棒
	tNewServicePacks_Pack[3300373][10]["Option"][3] = {}
	tNewServicePacks_Pack[3300373][10]["Option"][3]["Item_ID"] = 480029
	tNewServicePacks_Pack[3300373][10]["Option"][3]["ItemAttr"] = "0 1 3"

	--战士
	tNewServicePacks_Pack[3300373][20] = {}
	tNewServicePacks_Pack[3300373][20]["DialogIndex"] = "7-1"
	--下面武器三选一
	tNewServicePacks_Pack[3300373][20]["Option"] = {}
	--赠品朱缨枪
	tNewServicePacks_Pack[3300373][20]["Option"][1] = {}
	tNewServicePacks_Pack[3300373][20]["Option"][1]["Item_ID"] = 560029
	tNewServicePacks_Pack[3300373][20]["Option"][1]["ItemAttr"] = "0 1 3"
	--赠品蜡木棍
	tNewServicePacks_Pack[3300373][20]["Option"][2] = {}
	tNewServicePacks_Pack[3300373][20]["Option"][2]["Item_ID"] = 561029
	tNewServicePacks_Pack[3300373][20]["Option"][2]["ItemAttr"] = "0 1 3"
	--赠品软藤盾
	tNewServicePacks_Pack[3300373][20]["Option"][3] = {}
	tNewServicePacks_Pack[3300373][20]["Option"][3]["Item_ID"] = 900009
	tNewServicePacks_Pack[3300373][20]["Option"][3]["ItemAttr"] = "0 1 3"

	--弓手
	tNewServicePacks_Pack[3300373][40] = {}
	tNewServicePacks_Pack[3300373][40]["DialogIndex"] = "8-1"
	--下面武器二选一
	tNewServicePacks_Pack[3300373][40]["Option"] = {}
	--赠品猎弓
	tNewServicePacks_Pack[3300373][40]["Option"][1] = {}
	tNewServicePacks_Pack[3300373][40]["Option"][1]["Item_ID"] = 500019
	tNewServicePacks_Pack[3300373][40]["Option"][1]["ItemAttr"] = "0 1 3"
	--赠品狼牙飞刀
	tNewServicePacks_Pack[3300373][40]["Option"][2] = {}
	tNewServicePacks_Pack[3300373][40]["Option"][2]["Item_ID"] = 613019
	tNewServicePacks_Pack[3300373][40]["Option"][2]["ItemAttr"] = "0 1 3"

	--刺客
	tNewServicePacks_Pack[3300373][50] = {}
	tNewServicePacks_Pack[3300373][50]["DialogIndex"] = "9-1"
	--下面武器二选一
	tNewServicePacks_Pack[3300373][50]["Option"] = {}
	--赠品武藏钩镰
	tNewServicePacks_Pack[3300373][50]["Option"][1] = {}
	tNewServicePacks_Pack[3300373][50]["Option"][1]["Item_ID"] = 511029
	tNewServicePacks_Pack[3300373][50]["Option"][1]["ItemAttr"] = "0 1 3"
	--赠品精钢切
	tNewServicePacks_Pack[3300373][50]["Option"][2] = {}
	tNewServicePacks_Pack[3300373][50]["Option"][2]["Item_ID"] = 601029
	tNewServicePacks_Pack[3300373][50]["Option"][2]["ItemAttr"] = "0 1 3"

	--武僧
	tNewServicePacks_Pack[3300373][60] = {}
	tNewServicePacks_Pack[3300373][60]["Item"] = {}
	--直接获得一件赠品金蝉念珠
	tNewServicePacks_Pack[3300373][60]["Item"] = {}
	tNewServicePacks_Pack[3300373][60]["Item"]["Item_ID"] = 610029
	tNewServicePacks_Pack[3300373][60]["Item"]["ItemAttr"] = "0 1 3"

	--海盗
	tNewServicePacks_Pack[3300373][70] = {}
	tNewServicePacks_Pack[3300373][70]["DialogIndex"] = "10-1"
	--下面武器二选一
	tNewServicePacks_Pack[3300373][70]["Option"] = {}
	--赠品勇者佩剑
	tNewServicePacks_Pack[3300373][70]["Option"][1] = {}
	tNewServicePacks_Pack[3300373][70]["Option"][1]["Item_ID"] = 611029
	tNewServicePacks_Pack[3300373][70]["Option"][1]["ItemAttr"] = "0 1 3"
	--赠品中级火枪
	tNewServicePacks_Pack[3300373][70]["Option"][2] = {}
	tNewServicePacks_Pack[3300373][70]["Option"][2]["Item_ID"] = 612029
	tNewServicePacks_Pack[3300373][70]["Option"][2]["ItemAttr"] = "0 1 3"

	--截拳
	tNewServicePacks_Pack[3300373][80] = {}
	tNewServicePacks_Pack[3300373][80]["Item"] = {}
	--直接获得一件赠品枣木双截棍
	tNewServicePacks_Pack[3300373][80]["Item"] = {}
	tNewServicePacks_Pack[3300373][80]["Item"]["Item_ID"] = 617029
	tNewServicePacks_Pack[3300373][80]["Item"]["ItemAttr"] = "0 1 3"

	--道士
	tNewServicePacks_Pack[3300373][100] = {}
	tNewServicePacks_Pack[3300373][100]["Item"] = {}
	--直接获得一件赠品驱邪剑
	tNewServicePacks_Pack[3300373][100]["Item"] = {}
	tNewServicePacks_Pack[3300373][100]["Item"]["Item_ID"] = 421029
	tNewServicePacks_Pack[3300373][100]["Item"]["ItemAttr"] = "0 1 3"

	
	--铁扇门
	tNewServicePacks_Pack[3300373][160] = {}
	tNewServicePacks_Pack[3300373][160]["Item"] = {}
	--直接获得一件赠品驱邪剑
	tNewServicePacks_Pack[3300373][160]["Item"] = {}
	tNewServicePacks_Pack[3300373][160]["Item"]["Item_ID"] = 626029
	tNewServicePacks_Pack[3300373][160]["Item"]["ItemAttr"] = "0 1 3"
	
	
	
	
local tNewServicePacks_Log = {}
	tNewServicePacks_Log["GetItem"] = "0,0,%d,1,18000095,2,%d,1"
	tNewServicePacks_Log["SuperWeaponPack"] = "0,0,%d,1,18000095,2,%d,1"

	tNewServicePacks_Log[3008871] = "350	20134	1099	1099	1	"
	tNewServicePacks_Log[3008872] = "350	20135	999	999	1	"
	tNewServicePacks_Log[3008873] = "350	20136	899	899	1	"
	
local tNewServicePacks_Effect = {}
	tNewServicePacks_Effect[1] = "self"
	tNewServicePacks_Effect[2] = "angelwing"

------------------------------------------------逻辑部分-------------------------------------------------
--判断转世条件
function NewServicePacks_JudgeCondition(nMete)
	local nLevel = tNewServicePacks_Cont["Level"]
	if User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return true
	else
		return false
	end
end

-- 统一处理条件判断对白
function NewServicePacks_ShowDialog(nIndex,nOption,nSpace)
	if nIndex == "BagFull" and nSpace ~= 0 then
		Sys_DialogText(string.format(tNewServicePacks_Text[nIndex],nSpace))
	else
		Sys_DialogText(tNewServicePacks_Text[nIndex])
	end
	Sys_DialogOption(tNewServicePacks_Text["Option"..nOption],"</F>NULL")
	Sys_DialogEnd()
end

-- 接天石换购的选项
function NewServicePacks_Exchange(nItemId)
	-- 判断转世条件
	if not NewServicePacks_JudgeCondition(1) then
		NewServicePacks_ShowDialog("EmoneyMete_1",1,0)
		return
	else
		LinkItemGossipFunc_New(nItemId,"3-2")
	end
end

-- 使用以下物品逻辑
-- 3008871	初级开服礼盒		-- 有天石换购
-- 3008872	中级开服礼盒		-- 有天石换购
-- 3008873	高级开服礼盒		-- 有天石换购
-- 3008874	VIP专享开服礼盒		
-- 3008875	帮众专享开服礼盒	-- 判断是否参加帮派
-- 3008876	帮主尊贵礼盒			-- 判断是否是帮主 9级
function NewServicePacks_UseItem(nItemId,nOption)
	if Item_ChkItem(nItemId) then
		local nEvent = tNewServicePacks_Stc["EventType"]
		local nType = tNewServicePacks_Stc["DataType"][nItemId]
		local nData =  Get_UserStatisticValue(nEvent,nType)
		local nSingleData = tNewServicePacks_Stc["Record"][nOption]

		-- 每个选项下的礼品都领取完 删除物品
		local nComplete = 7
		if nItemId >= 3008871 and nItemId <= 3008873 then		-- 天石换购
			nComplete = 7
		elseif nItemId == 3008876 then
			nComplete = 1
		else
			nComplete = 3
		end
		
		if Task_ChkStcValue(nEvent,nType,">=",nComplete) then
			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
				User_TalkChannel2005(tNewServicePacks_Text["Del"])
				return
			end
		end

		-- 需要背包空间数量
		local nSpace = tNewServicePacks_Reward[nItemId][nOption]["Space"]
		
		if nOption == 1 then		-- 领取一转礼品。
			-- 判断转世条件
			if not NewServicePacks_JudgeCondition(1) then
				NewServicePacks_ShowDialog("Mete_1",1,0)
				return
			end
			
			-- 判断是否领取
			if Sys_ParseNumbersContain(nSingleData,nData) then
				NewServicePacks_ShowDialog("Complete_1",2,0)
				return
			end
			
			-- 帮众专享开服礼盒（加入帮派）
			if nItemId == 3008875 then
				local nUserId = Get_UserId()
				local nGuildId = Get_UserGuildId(nUserId)
				if nGuildId == 0 or nGuildId == nil then
					NewServicePacks_ShowDialog("NoGuild",1,0)
					return
				end
			end
			
			-- 帮主尊贵礼盒(帮派帮主且等级达到9级)
			if nItemId == 3008876 then
				local nUserId = Get_UserId()
				local nGuildId = Get_UserGuildId(nUserId)
				local nRank = Get_UserGuildRank()
				local nGuildLevel = 0
				if nGuildId ~= 0 then
					nGuildLevel = Get_UserSynLevel(nGuildId)
				end
				if not ((nRank == 1000) and (nGuildLevel >= 9)) then
					NewServicePacks_ShowDialog("NoGuildOwner",1,0)
					return
				end
			end
			
			-- 判断背包
			if not User_CheckLeftSpace(nSpace) then
				NewServicePacks_ShowDialog("BagFull",1,nSpace)
				return
			end
		elseif nOption == 2 then			-- 超值换购ExemptionToken（赠）。（%d点天石）
			-- 判断转世条件
			if nItemId >= 3008874 and nItemId <= 3008875 then
				if not NewServicePacks_JudgeCondition(2) then
					NewServicePacks_ShowDialog("Mete_2",1,0)
					return
				end
			else
				if not NewServicePacks_JudgeCondition(1) then
					NewServicePacks_ShowDialog("EmoneyMete_1",1,0)
					return
				end
			end
			
			-- 帮众专享开服礼盒（加入帮派）
			if nItemId == 3008875 then
				local nUserId = Get_UserId()
				local nGuildId = Get_UserGuildId(nUserId)
				if nGuildId == 0 or nGuildId == nil then
					NewServicePacks_ShowDialog("NoGuild",1,0)
					return
				end
			end
			
			if (nItemId >= 3008871 and nItemId <= 3008873) and (nOption == 2) then		-- 天石换购
				-- 判断天石数量
				local nNeedEmoney = tNewServicePacks_Cont["NeedEmoney"][nItemId]
				local nEmoney = Get_UserEMoney()
				if nEmoney < nNeedEmoney then
					NewServicePacks_ShowDialog("EmoneyNo",2,0)
					return
				end
				
				-- 判断背包
				if not User_CheckLeftSpace(nSpace) then
					NewServicePacks_ShowDialog("EmoneyBagFull",1,0)
					return
				end
				
				-- 判断是否领取
				if Sys_ParseNumbersContain(nSingleData,nData) then
					NewServicePacks_ShowDialog("Complete_1",2,0)
					return
				end
			else
				-- 判断是否领取
				if Sys_ParseNumbersContain(nSingleData,nData) then
					NewServicePacks_ShowDialog("Complete_2",2,0)
					return
				end
			
				-- 判断背包
				if not User_CheckLeftSpace(nSpace) then
					NewServicePacks_ShowDialog("BagFull",1,nSpace)
					return
				end
			end
		elseif nOption == 3 then			-- 领取二转礼品。
			-- 判断转世条件
			if not NewServicePacks_JudgeCondition(2) then
				NewServicePacks_ShowDialog("Mete_2",1,0)
				return
			end
			
			-- 判断是否领取
			if Sys_ParseNumbersContain(nSingleData,nData) then
				NewServicePacks_ShowDialog("Complete_2",2,0)
				return
			end
			
			-- 判断背包
			if not User_CheckLeftSpace(nSpace) then
				NewServicePacks_ShowDialog("BagFull",1,nSpace)
				return
			end
		end
		
		-- 领取奖励
		--设置领取的掩码
		Task_AddStatistic(nEvent,nType,nSingleData,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)

		if (nItemId >= 3008871 and nItemId <= 3008873) and (nOption == 2) then		-- 天石换购
			local nNeedEmoney = tNewServicePacks_Cont["NeedEmoney"][nItemId]
			if User_AddEMoney((-1)*nNeedEmoney) then
				for i,v in pairs(tNewServicePacks_Reward[nItemId][nOption]["Item"]) do
					Item_AddNewItem(v,tNewServicePacks_Reward[nItemId][nOption]["Attr"][i])
				end
				NewServicePacks_ShowDialog("EmoneySuccess",2,0)
				Sys_SaveEmoneyBuy(tNewServicePacks_Log[nItemId])
			end
		else		-- 领取转世条件的礼品
			for i,v in pairs(tNewServicePacks_Reward[nItemId][nOption]["Item"]) do
				Item_AddNewItem(v,tNewServicePacks_Reward[nItemId][nOption]["Attr"][i])
			end
			local str = tNewServicePacks_Text[nItemId]["Success"..nOption]
			User_TalkChannel2005(str)
		end
		Sys_SaveActionFestivalLog(tNewServicePacks_Reward[nItemId][nOption]["Log"])
		
		-- 每个选项下的礼品都领取完 删除物品
		if Task_ChkStcValue(nEvent,nType,">=",nComplete) then
			if Item_DelItem(nItemId) then
			end
		end
	end
end

-- 使用可选包
function NewServicePacks_UsePack(nItemId,nChoose)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local sAttr = tNewServicePacks_Reward[nChoose]
		Item_AddNewItem(nChoose,sAttr)
		local sAwardName = Get_ItemName(nChoose)
		User_TalkChannel2005(string.format(tNewServicePacks_Text[nItemId]["Success"],sAwardName))
		Sys_SaveActionFestivalLog(string.format(tNewServicePacks_Log["GetItem"],nItemId,nChoose))
	end
end

-- 3300373	L15SuperWeaponPack	
function NewServicePacks_UseWeaponPack(nItemId)
	if Item_ChkItem(nItemId) then
		local tPack = tNewServicePacks_Pack[nItemId]
		--判断职业，获得对应的物品ID  
		local nPro = Get_UserProfession()
		if nPro >= 100 and nPro <= 145  then
			nPro = 100
		elseif nPro >= 160 and nPro <= 165 then
			nPro = 160
		else
			nPro = nPro - nPro % 10
		end     

		--0表示不再配置表的共用职业
		if tPack[nPro] == nil then
			nPro = 0
		end

		if tPack[nPro]["DialogIndex"] ~= nil then       
			LinkItemGossipFunc_New(nItemId,tPack[nPro]["DialogIndex"])
			return 
		end

		NewServicePacks_Reward(nItemId,tPack[nPro]["Item"]["Item_ID"],tPack[nPro]["Item"]["ItemAttr"])
	end
end 

--选项
function NewServicePacks_SelectOption(nPackId,nPro,nOption)
   local tItem = tNewServicePacks_Pack[nPackId][nPro]["Option"][nOption]
   NewServicePacks_Reward(nPackId,tItem["Item_ID"],tItem["ItemAttr"]) 
end

--获得物品
function NewServicePacks_Reward(nPackId,nItemId,sItemAttr)
    if not Item_ChkAccItem(nPackId,1) then
       return
    end
    if not Item_DelItem(nPackId) then
       return
    end 
    Item_AddNewItem(nItemId,sItemAttr)
	
	Sys_SaveActionFestivalLog(string.format(tNewServicePacks_Log["SuperWeaponPack"],nPackId,nItemId))
    User_TalkChannel2005(string.format(tNewServicePacks_Text["AwardItem"],tNewServicePacks_Text["ItemName"][nItemId]))
end 

------------------------------------------------物品模块--------------------------------------------------
-- -- -- -- -- -- 初级开服礼盒 3008871
tItem[3008871] = tItem[3008871] or {}
tItem[3008871]["Text1-1"] = {111}
tItem[3008871]["Text111"] = tNewServicePacks_Text[3008871]["Text111"]
tItem[3008871]["tOption1-1"] = {1,3,2}
tItem[3008871]["Option1"] = tNewServicePacks_Text[3008871]["Option1"]
tItem[3008871]["OptionPoint1"] ="2-1"
tItem[3008871]["Option2"] = tNewServicePacks_Text[3008871]["Option2"]
tItem[3008871]["OptionFunc2"] ="NewServicePacks_Exchange</N>3008871"
tItem[3008871]["OptionChkFunc2"] = function ()
	local nEvent = tNewServicePacks_Stc["EventType"]
	local nType = tNewServicePacks_Stc["DataType"][3008871]
	local nData =  Get_UserStatisticValue(nEvent,nType)
	local nSingleData = tNewServicePacks_Stc["Record"][2]
	if Sys_ParseNumbersContain(nSingleData,nData) then
		return false
	else
		return true
	end
end
tItem[3008871]["Option3"] = tNewServicePacks_Text[3008871]["Option3"]
tItem[3008871]["OptionPoint3"] ="4-1"
-- 接1：领取一转礼品。
tItem[3008871]["Text2-1"] = {211,212}
tItem[3008871]["Text211"] = tNewServicePacks_Text[3008871]["Text211"]
tItem[3008871]["Text212"] = tNewServicePacks_Text[3008871]["Text212"]
tItem[3008871]["tOption2-1"] = {4}
tItem[3008871]["Option4"] = tNewServicePacks_Text[3008871]["Option4"]
tItem[3008871]["OptionFunc4"]="NewServicePacks_UseItem</N>3008871</N>1"
-- 接2：超值换购ExemptionToken（赠）。（1099点天石）
-- 成功，二次确认
tItem[3008871]["Text3-2"] = {321,322}
tItem[3008871]["Text321"] = tNewServicePacks_Text[3008871]["Text321"]
tItem[3008871]["Text322"] = tNewServicePacks_Text[3008871]["Text322"]
tItem[3008871]["tOption3-2"] = {7,8}
tItem[3008871]["Option7"] = tNewServicePacks_Text[3008871]["Option7"]
tItem[3008871]["OptionFunc7"]="NewServicePacks_UseItem</N>3008871</N>2"
tItem[3008871]["Option8"] = tNewServicePacks_Text[3008871]["Option8"]
-- 接3：领取二转礼品。
tItem[3008871]["Text4-1"] = {411,412}
tItem[3008871]["Text411"] = tNewServicePacks_Text[3008871]["Text411"]
tItem[3008871]["Text412"] = tNewServicePacks_Text[3008871]["Text412"]
tItem[3008871]["tOption4-1"] = {10}
tItem[3008871]["Option10"] = tNewServicePacks_Text[3008871]["Option10"]
tItem[3008871]["OptionFunc10"]="NewServicePacks_UseItem</N>3008871</N>3"

-- -- -- -- -- -- -- 中级开服礼盒 3008872
tItem[3008872] = tItem[3008872] or {}
tItem[3008872]["Text1-1"] = {111}
tItem[3008872]["Text111"] = tNewServicePacks_Text[3008872]["Text111"]
tItem[3008872]["tOption1-1"] = {1,3,2}
tItem[3008872]["Option1"] = tNewServicePacks_Text[3008872]["Option1"]
tItem[3008872]["OptionPoint1"] ="2-1"
tItem[3008872]["Option2"] = tNewServicePacks_Text[3008872]["Option2"]
tItem[3008872]["OptionFunc2"] ="NewServicePacks_Exchange</N>3008872"
tItem[3008872]["OptionChkFunc2"] = function ()
	local nEvent = tNewServicePacks_Stc["EventType"]
	local nType = tNewServicePacks_Stc["DataType"][3008872]
	local nData =  Get_UserStatisticValue(nEvent,nType)
	local nSingleData = tNewServicePacks_Stc["Record"][2]
	if Sys_ParseNumbersContain(nSingleData,nData) then
		return false
	else
		return true
	end
end
tItem[3008872]["Option3"] = tNewServicePacks_Text[3008872]["Option3"]
tItem[3008872]["OptionPoint3"] ="4-1"
-- 接1：领取一转礼品。
tItem[3008872]["Text2-1"] = {211,212}
tItem[3008872]["Text211"] = tNewServicePacks_Text[3008872]["Text211"]
tItem[3008872]["Text212"] = tNewServicePacks_Text[3008872]["Text212"]
tItem[3008872]["tOption2-1"] = {4}
tItem[3008872]["Option4"] = tNewServicePacks_Text[3008872]["Option4"]
tItem[3008872]["OptionFunc4"]="NewServicePacks_UseItem</N>3008872</N>1"
-- 接2：超值换购ExemptionToken（赠）。（999点天石）
-- 成功，二次确认
tItem[3008872]["Text3-2"] = {321,322}
tItem[3008872]["Text321"] = tNewServicePacks_Text[3008872]["Text321"]
tItem[3008872]["Text322"] = tNewServicePacks_Text[3008872]["Text322"]
tItem[3008872]["tOption3-2"] = {7,8}
tItem[3008872]["Option7"] = tNewServicePacks_Text[3008872]["Option7"]
tItem[3008872]["OptionFunc7"]="NewServicePacks_UseItem</N>3008872</N>2"
tItem[3008872]["Option8"] = tNewServicePacks_Text[3008872]["Option8"]
-- 接3：领取二转礼品。
tItem[3008872]["Text4-1"] = {411,412}
tItem[3008872]["Text411"] = tNewServicePacks_Text[3008872]["Text411"]
tItem[3008872]["Text412"] = tNewServicePacks_Text[3008872]["Text412"]
tItem[3008872]["tOption4-1"] = {10}
tItem[3008872]["Option10"] = tNewServicePacks_Text[3008872]["Option10"]
tItem[3008872]["OptionFunc10"]="NewServicePacks_UseItem</N>3008872</N>3"

-- -- -- -- -- -- 高级开服礼盒 3008873
tItem[3008873] = tItem[3008873] or {}
tItem[3008873]["Text1-1"] = {111}
tItem[3008873]["Text111"] = tNewServicePacks_Text[3008873]["Text111"]
tItem[3008873]["tOption1-1"] = {1,3,2}
tItem[3008873]["Option1"] = tNewServicePacks_Text[3008873]["Option1"]
tItem[3008873]["OptionPoint1"] ="2-1"
tItem[3008873]["Option2"] = tNewServicePacks_Text[3008873]["Option2"]
tItem[3008873]["OptionFunc2"] ="NewServicePacks_Exchange</N>3008873"
tItem[3008873]["OptionChkFunc2"] = function ()
	local nEvent = tNewServicePacks_Stc["EventType"]
	local nType = tNewServicePacks_Stc["DataType"][3008873]
	local nData =  Get_UserStatisticValue(nEvent,nType)
	local nSingleData = tNewServicePacks_Stc["Record"][2]
	if Sys_ParseNumbersContain(nSingleData,nData) then
		return false
	else
		return true
	end
end
tItem[3008873]["Option3"] = tNewServicePacks_Text[3008873]["Option3"]
tItem[3008873]["OptionPoint3"] ="4-1"
-- 接1：领取一转礼品。
tItem[3008873]["Text2-1"] = {211,212}
tItem[3008873]["Text211"] = tNewServicePacks_Text[3008873]["Text211"]
tItem[3008873]["Text212"] = tNewServicePacks_Text[3008873]["Text212"]
tItem[3008873]["tOption2-1"] = {4}
tItem[3008873]["Option4"] = tNewServicePacks_Text[3008873]["Option4"]
tItem[3008873]["OptionFunc4"]="NewServicePacks_UseItem</N>3008873</N>1"
-- 接2：超值换购ExemptionToken（赠）。（899点天石）
-- 成功，二次确认
tItem[3008873]["Text3-2"] = {321,322}
tItem[3008873]["Text321"] = tNewServicePacks_Text[3008873]["Text321"]
tItem[3008873]["Text322"] = tNewServicePacks_Text[3008873]["Text322"]
tItem[3008873]["tOption3-2"] = {7,8}
tItem[3008873]["Option7"] = tNewServicePacks_Text[3008873]["Option7"]
tItem[3008873]["OptionFunc7"]="NewServicePacks_UseItem</N>3008873</N>2"
tItem[3008873]["Option8"] = tNewServicePacks_Text[3008873]["Option8"]
-- 接3：领取二转礼品。
tItem[3008873]["Text4-1"] = {411,412}
tItem[3008873]["Text411"] = tNewServicePacks_Text[3008873]["Text411"]
tItem[3008873]["Text412"] = tNewServicePacks_Text[3008873]["Text412"]
tItem[3008873]["tOption4-1"] = {10}
tItem[3008873]["Option10"] = tNewServicePacks_Text[3008873]["Option10"]
tItem[3008873]["OptionFunc10"]="NewServicePacks_UseItem</N>3008873</N>3"

-- -- -- -- -- -- VIP专享开服礼盒 3008874
tItem[3008874] = tItem[3008874] or {}
tItem[3008874]["Text1-1"] = {111}
tItem[3008874]["Text111"] = tNewServicePacks_Text[3008874]["Text111"]
tItem[3008874]["tOption1-1"] = {1,2}
tItem[3008874]["Option1"] = tNewServicePacks_Text[3008874]["Option1"]
tItem[3008874]["OptionPoint1"]="2-1"
tItem[3008874]["Option2"] = tNewServicePacks_Text[3008874]["Option2"]
tItem[3008874]["OptionPoint2"]="3-1"
-- 接1：领取一转礼品。
tItem[3008874]["Text2-1"] = {211}
tItem[3008874]["Text211"] = tNewServicePacks_Text[3008874]["Text211"]
tItem[3008874]["tOption2-1"] = {3}
tItem[3008874]["Option3"] = tNewServicePacks_Text[3008874]["Option3"]
tItem[3008874]["OptionFunc3"]="NewServicePacks_UseItem</N>3008874</N>1"
-- 接2：领取二转礼品。
tItem[3008874]["Text3-1"] = {311}
tItem[3008874]["Text311"] = tNewServicePacks_Text[3008874]["Text311"]
tItem[3008874]["tOption3-1"] = {4}
tItem[3008874]["Option4"] = tNewServicePacks_Text[3008874]["Option4"]
tItem[3008874]["OptionFunc4"]="NewServicePacks_UseItem</N>3008874</N>2"

-- -- -- -- -- -- -- 帮众专享开服礼盒 3008875
tItem[3008875] = tItem[3008875] or {}
tItem[3008875]["Text1-1"] = {111}
tItem[3008875]["Text111"] = tNewServicePacks_Text[3008875]["Text111"]
tItem[3008875]["tOption1-1"] = {1,2}
tItem[3008875]["Option1"] = tNewServicePacks_Text[3008875]["Option1"]
tItem[3008875]["OptionPoint1"]="2-1"
tItem[3008875]["Option2"] = tNewServicePacks_Text[3008875]["Option2"]
tItem[3008875]["OptionPoint2"]="3-1"
-- 接1：领取一转礼品。
tItem[3008875]["Text2-1"] = {211}
tItem[3008875]["Text211"] = tNewServicePacks_Text[3008875]["Text211"]
tItem[3008875]["tOption2-1"] = {3}
tItem[3008875]["Option3"] = tNewServicePacks_Text[3008875]["Option3"]
tItem[3008875]["OptionFunc3"]="NewServicePacks_UseItem</N>3008875</N>1"
-- 接2：领取二转礼品。
tItem[3008875]["Text3-1"] = {311}
tItem[3008875]["Text311"] = tNewServicePacks_Text[3008875]["Text311"]
tItem[3008875]["tOption3-1"] = {4}
tItem[3008875]["Option4"] = tNewServicePacks_Text[3008875]["Option4"]
tItem[3008875]["OptionFunc4"]="NewServicePacks_UseItem</N>3008875</N>2"

-- -- -- -- -- -- -- 帮主尊贵礼盒 3008876
tItem[3008876] = tItem[3008876] or {}
tItem[3008876]["Text1-1"] = {111}
tItem[3008876]["Text111"] = tNewServicePacks_Text[3008876]["Text111"]
tItem[3008876]["tOption1-1"] = {1}
tItem[3008876]["Option1"] = tNewServicePacks_Text[3008876]["Option1"]
tItem[3008876]["OptionFunc1"]="NewServicePacks_UseItem</N>3008876</N>1"
-- 接1：领取礼品。
-- 失败，背包空间不足
tItem[3008876]["Text2-1"] = {211}
tItem[3008876]["Text211"] = tNewServicePacks_Text[3008876]["Text211"]
tItem[3008876]["tOption2-1"] = {2}
tItem[3008876]["Option2"] = tNewServicePacks_Text[3008876]["Option2"]
-- 失败，不满足领取条件（新建帮派且30天内等级达到9级）
tItem[3008876]["Text2-2"] = {221}
tItem[3008876]["Text221"] = tNewServicePacks_Text[3008876]["Text221"]
tItem[3008876]["tOption2-2"] = {2}
-- 失败，不满足领取条件（一转）
tItem[3008876]["Text2-3"] = {231}
tItem[3008876]["Text231"] = tNewServicePacks_Text[3008876]["Text231"]
tItem[3008876]["tOption2-3"] = {2}
-- 失败，已超过有效期
tItem[3008876]["Text2-4"] = {241}
tItem[3008876]["Text241"] = tNewServicePacks_Text[3008876]["Text241"]
tItem[3008876]["tOption2-4"] = {2}

-- -- -- -- -- -- -- 武器外套时效礼盒  3008877
tItem[3008877] = tItem[3008877] or {}
tItem[3008877]["Text1-1"] = {111}
tItem[3008877]["Text111"] = tNewServicePacks_Text[3008877]["Text111"]
tItem[3008877]["tOption1-1"] = {1,2}
tItem[3008877]["Option1"] = tNewServicePacks_Text[3008877]["Option1"]
tItem[3008877]["OptionFunc1"]="NewServicePacks_UsePack</N>3008877</N>360042"
tItem[3008877]["Option2"] = tNewServicePacks_Text[3008877]["Option2"]
tItem[3008877]["OptionFunc2"]="NewServicePacks_UsePack</N>3008877</N>350032"

-- -- -- -- -- -- -- 神佑时装永久礼盒 3008878
tItem[3008878] = tItem[3008878] or {}
tItem[3008878]["Text1-1"] = {111}
tItem[3008878]["Text111"] = tNewServicePacks_Text[3008878]["Text111"]
tItem[3008878]["tOption1-1"] = {1,2}
tItem[3008878]["Option1"] = tNewServicePacks_Text[3008878]["Option1"]
tItem[3008878]["OptionFunc1"]="NewServicePacks_UsePack</N>3008878</N>189255"
tItem[3008878]["Option2"] = tNewServicePacks_Text[3008878]["Option2"]
tItem[3008878]["OptionFunc2"]="NewServicePacks_UsePack</N>3008878</N>189085"

-- -- -- -- -- -- -- 神佑坐骑外套永久包  3008879
tItem[3008879] = tItem[3008879] or {}
tItem[3008879]["Text1-1"] = {111}
tItem[3008879]["Text111"] = tNewServicePacks_Text[3008879]["Text111"]
tItem[3008879]["tOption1-1"] = {1,2}
tItem[3008879]["Option1"] = tNewServicePacks_Text[3008879]["Option1"]
tItem[3008879]["OptionFunc1"]="NewServicePacks_UsePack</N>3008879</N>200539"
tItem[3008879]["Option2"] = tNewServicePacks_Text[3008879]["Option2"]
tItem[3008879]["OptionFunc2"]="NewServicePacks_UsePack</N>3008879</N>200403"

-- -- -- -- -- -- -- 武器外套永久礼盒  3008880
tItem[3008880] = tItem[3008880] or {}
tItem[3008880]["Text1-1"] = {111}
tItem[3008880]["Text111"] = tNewServicePacks_Text[3008880]["Text111"]
tItem[3008880]["tOption1-1"] = {1,2}
tItem[3008880]["Option1"] = tNewServicePacks_Text[3008880]["Option1"]
tItem[3008880]["OptionFunc1"]="NewServicePacks_UsePack</N>3008880</N>360028"
tItem[3008880]["Option2"] = tNewServicePacks_Text[3008880]["Option2"]
tItem[3008880]["OptionFunc2"]="NewServicePacks_UsePack</N>3008880</N>350012"

-- -- -- -- -- -- -- L15SuperWeaponPack  3300373
tItem[3300373]=tItem[3300373] or {}
tItem[3300373]["Function"]=function(nItemId,sItemName)
    NewServicePacks_UseWeaponPack(nItemId)
end

--武器勇士对话
tItem[3300373]["Text6-1"] = {111}
tItem[3300373]["Text111"] = tNewServicePacks_Text["Weapon"]
tItem[3300373]["tOption6-1"] = {61,62,63,64}
tItem[3300373]["Option61"] = tNewServicePacks_Text["ItemName"][410029]
tItem[3300373]["Option62"] = tNewServicePacks_Text["ItemName"][420029]
tItem[3300373]["Option63"] = tNewServicePacks_Text["ItemName"][480029]
tItem[3300373]["Option64"] = tNewServicePacks_Text["ReGive"]
tItem[3300373]["OptionFunc61"] = "NewServicePacks_SelectOption</N>3300373</N>10</N>1"
tItem[3300373]["OptionFunc62"] = "NewServicePacks_SelectOption</N>3300373</N>10</N>2"
tItem[3300373]["OptionFunc63"] = "NewServicePacks_SelectOption</N>3300373</N>10</N>3"

--武器战士对话
tItem[3300373]["Text7-1"] = {111}
tItem[3300373]["tOption7-1"] = {71,72,73,64}
tItem[3300373]["Option71"] = tNewServicePacks_Text["ItemName"][560029]
tItem[3300373]["Option72"] = tNewServicePacks_Text["ItemName"][561029]
tItem[3300373]["Option73"] = tNewServicePacks_Text["ItemName"][900009]
tItem[3300373]["OptionFunc71"] = "NewServicePacks_SelectOption</N>3300373</N>20</N>1"
tItem[3300373]["OptionFunc72"] = "NewServicePacks_SelectOption</N>3300373</N>20</N>2"
tItem[3300373]["OptionFunc73"] = "NewServicePacks_SelectOption</N>3300373</N>20</N>3"

--武器弓手对话
tItem[3300373]["Text8-1"] = {111}
tItem[3300373]["tOption8-1"] = {81,82,64}
tItem[3300373]["Option81"] = tNewServicePacks_Text["ItemName"][500019]
tItem[3300373]["Option82"] = tNewServicePacks_Text["ItemName"][613019]
tItem[3300373]["OptionFunc81"] = "NewServicePacks_SelectOption</N>3300373</N>40</N>1"
tItem[3300373]["OptionFunc82"] = "NewServicePacks_SelectOption</N>3300373</N>40</N>2"

--武器刺客对话
tItem[3300373]["Text9-1"] = {111}
tItem[3300373]["tOption9-1"] = {91,92,64}
tItem[3300373]["Option91"] = tNewServicePacks_Text["ItemName"][511029]
tItem[3300373]["Option92"] = tNewServicePacks_Text["ItemName"][601029]
tItem[3300373]["OptionFunc91"] = "NewServicePacks_SelectOption</N>3300373</N>50</N>1"
tItem[3300373]["OptionFunc92"] = "NewServicePacks_SelectOption</N>3300373</N>50</N>2"

--武器海盗对话
tItem[3300373]["Text10-1"] = {111}
tItem[3300373]["tOption10-1"] = {101,102,64}
tItem[3300373]["Option101"] = tNewServicePacks_Text["ItemName"][611029]
tItem[3300373]["Option102"] = tNewServicePacks_Text["ItemName"][612029]
tItem[3300373]["OptionFunc101"] = "NewServicePacks_SelectOption</N>3300373</N>70</N>1"
tItem[3300373]["OptionFunc102"] = "NewServicePacks_SelectOption</N>3300373</N>70</N>2"

