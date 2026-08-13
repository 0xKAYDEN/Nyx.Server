------------------------------------------------------------------------------------
--Name:		[英文征服][任务脚本]6月老玩家回归发奖action
--Purpose:	6月老玩家回归发奖action
--Creator: 	茅志伟
--Created:	2018/05/11
------------------------------------------------------------------------------------

--命名前缀 JuneReturnReward_

local tJuneReturnReward_Pack = {}
--一岁礼物
tJuneReturnReward_Pack[3308872] = {}
--万能神纹精粹×10 [赠]
tJuneReturnReward_Pack[3308872]["RewardItem"] = {}
tJuneReturnReward_Pack[3308872]["RewardItem"][1] = {}
tJuneReturnReward_Pack[3308872]["RewardItem"][1]["Id"] = 4060001
tJuneReturnReward_Pack[3308872]["RewardItem"][1]["Attr"] = "0 10 3"
--明亮星陨石×2 [不可交易]
tJuneReturnReward_Pack[3308872]["RewardItem"][2] = {}
tJuneReturnReward_Pack[3308872]["RewardItem"][2]["Id"] = 3307746
tJuneReturnReward_Pack[3308872]["RewardItem"][2]["Attr"] = "0 1 3 2880 1"
--+1赤炼石×5 [赠](5颗+1赤炼石（赠）礼包)
tJuneReturnReward_Pack[3308872]["RewardItem"][3] = {}
tJuneReturnReward_Pack[3308872]["RewardItem"][3]["Id"] = 3308936
tJuneReturnReward_Pack[3308872]["RewardItem"][3]["Attr"] = "0 1"
--回气丹*2 [赠]
tJuneReturnReward_Pack[3308872]["RewardItem"][4] = {}
tJuneReturnReward_Pack[3308872]["RewardItem"][4]["Id"] = 3308965
tJuneReturnReward_Pack[3308872]["RewardItem"][4]["Attr"] = "0 1"
--龙珠×2 [赠]
tJuneReturnReward_Pack[3308872]["RewardItem"][5] = {}
tJuneReturnReward_Pack[3308872]["RewardItem"][5]["Id"] = 1088000
tJuneReturnReward_Pack[3308872]["RewardItem"][5]["Attr"] = "0 2 3"
tJuneReturnReward_Pack[3308872]["LogId"] = 12001077

--两岁礼物
tJuneReturnReward_Pack[3308873] = {}
--万能神纹精粹×20 [赠]
tJuneReturnReward_Pack[3308873]["RewardItem"] = {}
tJuneReturnReward_Pack[3308873]["RewardItem"][1] = {}
tJuneReturnReward_Pack[3308873]["RewardItem"][1]["Id"] = 4060001
tJuneReturnReward_Pack[3308873]["RewardItem"][1]["Attr"] = "0 20 3"
--明亮星陨石×3 [不可交易]
tJuneReturnReward_Pack[3308873]["RewardItem"][2] = {}
tJuneReturnReward_Pack[3308873]["RewardItem"][2]["Id"] = 3307747
tJuneReturnReward_Pack[3308873]["RewardItem"][2]["Attr"] = "0 1 3 2880 1"
--+2赤炼石×5 [赠](5颗+2赤炼石（赠）礼包)
tJuneReturnReward_Pack[3308873]["RewardItem"][3] = {}
tJuneReturnReward_Pack[3308873]["RewardItem"][3]["Id"] = 3308937
tJuneReturnReward_Pack[3308873]["RewardItem"][3]["Attr"] = "0 1"
--回气丹*3 [赠]
tJuneReturnReward_Pack[3308873]["RewardItem"][4] = {}
tJuneReturnReward_Pack[3308873]["RewardItem"][4]["Id"] = 3308966
tJuneReturnReward_Pack[3308873]["RewardItem"][4]["Attr"] = "0 1"
--龙珠×5 [赠](5颗龙珠（赠）礼盒)
tJuneReturnReward_Pack[3308873]["RewardItem"][5] = {}
tJuneReturnReward_Pack[3308873]["RewardItem"][5]["Id"] = 3308940
tJuneReturnReward_Pack[3308873]["RewardItem"][5]["Attr"] = "0 1"
tJuneReturnReward_Pack[3308873]["LogId"] = 12001077

--三岁礼物
tJuneReturnReward_Pack[3308874] = {}
--万能神纹精粹×30 [赠]
tJuneReturnReward_Pack[3308874]["RewardItem"] = {}
tJuneReturnReward_Pack[3308874]["RewardItem"][1] = {}
tJuneReturnReward_Pack[3308874]["RewardItem"][1]["Id"] = 4060001
tJuneReturnReward_Pack[3308874]["RewardItem"][1]["Attr"] = "0 30 3"
--明亮星陨石×4 [不可交易]
tJuneReturnReward_Pack[3308874]["RewardItem"][2] = {}
tJuneReturnReward_Pack[3308874]["RewardItem"][2]["Id"] = 3307748
tJuneReturnReward_Pack[3308874]["RewardItem"][2]["Attr"] = "0 1 3 2880 1"
--+3赤炼石×2 [赠]
tJuneReturnReward_Pack[3308874]["RewardItem"][3] = {}
tJuneReturnReward_Pack[3308874]["RewardItem"][3]["Id"] = 730003
tJuneReturnReward_Pack[3308874]["RewardItem"][3]["Attr"] = "0 2 3"
--回气丹*4 [赠]
tJuneReturnReward_Pack[3308874]["RewardItem"][4] = {}
tJuneReturnReward_Pack[3308874]["RewardItem"][4]["Id"] = 3308967
tJuneReturnReward_Pack[3308874]["RewardItem"][4]["Attr"] = "0 1"
--龙珠×8 [赠](8颗龙珠（赠）礼盒)
tJuneReturnReward_Pack[3308874]["RewardItem"][5] = {}
tJuneReturnReward_Pack[3308874]["RewardItem"][5]["Id"] = 3308941
tJuneReturnReward_Pack[3308874]["RewardItem"][5]["Attr"] = "0 1"
tJuneReturnReward_Pack[3308874]["LogId"] = 12001077

--五岁礼物
tJuneReturnReward_Pack[3308875] = {}
--万能神纹精粹×40 [赠]
tJuneReturnReward_Pack[3308875]["RewardItem"] = {}
tJuneReturnReward_Pack[3308875]["RewardItem"][1] = {}
tJuneReturnReward_Pack[3308875]["RewardItem"][1]["Id"] = 4060001
tJuneReturnReward_Pack[3308875]["RewardItem"][1]["Attr"] = "0 40 3"
--明亮星陨石×5 [不可交易]
tJuneReturnReward_Pack[3308875]["RewardItem"][2] = {}
tJuneReturnReward_Pack[3308875]["RewardItem"][2]["Id"] = 3307749
tJuneReturnReward_Pack[3308875]["RewardItem"][2]["Attr"] = "0 1 3 2880 1"
--+3赤炼石×5 [赠] (5颗+3赤炼石（赠）礼包)
tJuneReturnReward_Pack[3308875]["RewardItem"][3] = {}
tJuneReturnReward_Pack[3308875]["RewardItem"][3]["Id"] = 3308938
tJuneReturnReward_Pack[3308875]["RewardItem"][3]["Attr"] = "0 1"
--回气丹*5 [赠]
tJuneReturnReward_Pack[3308875]["RewardItem"][4] = {}
tJuneReturnReward_Pack[3308875]["RewardItem"][4]["Id"] = 3308968
tJuneReturnReward_Pack[3308875]["RewardItem"][4]["Attr"] = "0 1"
--龙珠卷 [赠]
tJuneReturnReward_Pack[3308875]["RewardItem"][5] = {}
tJuneReturnReward_Pack[3308875]["RewardItem"][5]["Id"] = 3300190
tJuneReturnReward_Pack[3308875]["RewardItem"][5]["Attr"] = "0 1 3"
tJuneReturnReward_Pack[3308875]["LogId"] = 12001077

--七岁礼物
tJuneReturnReward_Pack[3308876] = {}
--万能神纹精粹×50 [赠]
tJuneReturnReward_Pack[3308876]["RewardItem"] = {}
tJuneReturnReward_Pack[3308876]["RewardItem"][1] = {}
tJuneReturnReward_Pack[3308876]["RewardItem"][1]["Id"] = 4060001
tJuneReturnReward_Pack[3308876]["RewardItem"][1]["Attr"] = "0 50 3"
--明亮星陨石×6 [不可交易] (6颗明亮星陨石礼包)
tJuneReturnReward_Pack[3308876]["RewardItem"][2] = {}
tJuneReturnReward_Pack[3308876]["RewardItem"][2]["Id"] = 3308943
tJuneReturnReward_Pack[3308876]["RewardItem"][2]["Attr"] = "0 1 3 2880 1"
--+4赤炼石×2 [赠]
tJuneReturnReward_Pack[3308876]["RewardItem"][3] = {}
tJuneReturnReward_Pack[3308876]["RewardItem"][3]["Id"] = 730004
tJuneReturnReward_Pack[3308876]["RewardItem"][3]["Attr"] = "0 2 3"
--回气丹*6 [赠] (6颗回气丹（赠）礼包)
tJuneReturnReward_Pack[3308876]["RewardItem"][4] = {}
tJuneReturnReward_Pack[3308876]["RewardItem"][4]["Id"] = 3308944
tJuneReturnReward_Pack[3308876]["RewardItem"][4]["Attr"] = "0 1 "
--龙珠卷*2 [赠]
tJuneReturnReward_Pack[3308876]["RewardItem"][5] = {}
tJuneReturnReward_Pack[3308876]["RewardItem"][5]["Id"] = 3300190
tJuneReturnReward_Pack[3308876]["RewardItem"][5]["Attr"] = "0 2 3"
tJuneReturnReward_Pack[3308876]["LogId"] = 12001077

--九岁礼物
tJuneReturnReward_Pack[3308877] = {}
--万能神纹精粹×60 [赠]
tJuneReturnReward_Pack[3308877]["RewardItem"] = {}
tJuneReturnReward_Pack[3308877]["RewardItem"][1] = {}
tJuneReturnReward_Pack[3308877]["RewardItem"][1]["Id"] = 4060001
tJuneReturnReward_Pack[3308877]["RewardItem"][1]["Attr"] = "0 60 3"
--明亮星陨石×8 [不可交易]
tJuneReturnReward_Pack[3308877]["RewardItem"][2] = {}
tJuneReturnReward_Pack[3308877]["RewardItem"][2]["Id"] = 3304572
tJuneReturnReward_Pack[3308877]["RewardItem"][2]["Attr"] = "0 1 3 2880 1"
--+4赤炼石×5 [赠] (5颗+4赤炼石（赠）礼包)
tJuneReturnReward_Pack[3308877]["RewardItem"][3] = {}
tJuneReturnReward_Pack[3308877]["RewardItem"][3]["Id"] = 3308939
tJuneReturnReward_Pack[3308877]["RewardItem"][3]["Attr"] = "0 1 "
--回气丹*7 [赠] (7颗回气丹（赠）礼包)
tJuneReturnReward_Pack[3308877]["RewardItem"][4] = {}
tJuneReturnReward_Pack[3308877]["RewardItem"][4]["Id"] = 3308945
tJuneReturnReward_Pack[3308877]["RewardItem"][4]["Attr"] = "0 1 "
--龙珠卷*2 [赠]
tJuneReturnReward_Pack[3308877]["RewardItem"][5] = {}
tJuneReturnReward_Pack[3308877]["RewardItem"][5]["Id"] = 3300190
tJuneReturnReward_Pack[3308877]["RewardItem"][5]["Attr"] = "0 2 3"
tJuneReturnReward_Pack[3308877]["LogId"] = 12001077

--十二岁礼物
tJuneReturnReward_Pack[3308878] = {}
--万能神纹精粹×80 [赠]
tJuneReturnReward_Pack[3308878]["RewardItem"] = {}
tJuneReturnReward_Pack[3308878]["RewardItem"][1] = {}
tJuneReturnReward_Pack[3308878]["RewardItem"][1]["Id"] = 4060001
tJuneReturnReward_Pack[3308878]["RewardItem"][1]["Attr"] = "0 80 3"
--晶莹星陨石 [不可交易]
tJuneReturnReward_Pack[3308878]["RewardItem"][2] = {}
tJuneReturnReward_Pack[3308878]["RewardItem"][2]["Id"] = 3009002
tJuneReturnReward_Pack[3308878]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
--+5赤炼石×2 [赠]
tJuneReturnReward_Pack[3308878]["RewardItem"][3] = {}
tJuneReturnReward_Pack[3308878]["RewardItem"][3]["Id"] = 730005
tJuneReturnReward_Pack[3308878]["RewardItem"][3]["Attr"] = "0 2 3"
--回气丹*8 [赠] (8颗回气丹（赠）礼包)
tJuneReturnReward_Pack[3308878]["RewardItem"][4] = {}
tJuneReturnReward_Pack[3308878]["RewardItem"][4]["Id"] = 3308946
tJuneReturnReward_Pack[3308878]["RewardItem"][4]["Attr"] = "0 1 "
--龙珠卷*3 [赠]
tJuneReturnReward_Pack[3308878]["RewardItem"][5] = {}
tJuneReturnReward_Pack[3308878]["RewardItem"][5]["Id"] = 3300190
tJuneReturnReward_Pack[3308878]["RewardItem"][5]["Attr"] = "0 3 3"
--100赠点
tJuneReturnReward_Pack[3308878]["RewardEMoneyMono"] = {}
tJuneReturnReward_Pack[3308878]["RewardEMoneyMono"]["Value"] = 100
tJuneReturnReward_Pack[3308878]["LogId"] = 12001077

--成长陪伴礼物
tJuneReturnReward_Pack[3308879] = {}
--万能神纹精粹×100 [赠]
tJuneReturnReward_Pack[3308879]["RewardItem"] = {}
tJuneReturnReward_Pack[3308879]["RewardItem"][1] = {}
tJuneReturnReward_Pack[3308879]["RewardItem"][1]["Id"] = 4060001
tJuneReturnReward_Pack[3308879]["RewardItem"][1]["Attr"] = "0 100 3"
--晶莹星陨石×2 [不可交易]
tJuneReturnReward_Pack[3308879]["RewardItem"][2] = {}
tJuneReturnReward_Pack[3308879]["RewardItem"][2]["Id"] = 3308569
tJuneReturnReward_Pack[3308879]["RewardItem"][2]["Attr"] = "0 1 3 2880 1"
--+6赤炼石×2 [赠]
tJuneReturnReward_Pack[3308879]["RewardItem"][3] = {}
tJuneReturnReward_Pack[3308879]["RewardItem"][3]["Id"] = 730006
tJuneReturnReward_Pack[3308879]["RewardItem"][3]["Attr"] = "0 2 3"
--回气丹*10 [赠] (10颗回气丹（赠）礼包)
tJuneReturnReward_Pack[3308879]["RewardItem"][4] = {}
tJuneReturnReward_Pack[3308879]["RewardItem"][4]["Id"] = 3308947
tJuneReturnReward_Pack[3308879]["RewardItem"][4]["Attr"] = "0 1 "
--龙珠卷*5 [赠] (5个龙珠卷（赠）礼盒)
tJuneReturnReward_Pack[3308879]["RewardItem"][5] = {}
tJuneReturnReward_Pack[3308879]["RewardItem"][5]["Id"] = 3308942
tJuneReturnReward_Pack[3308879]["RewardItem"][5]["Attr"] = "0 1 "
--流星卷*10 [赠] (10个流星卷（赠）礼包)
tJuneReturnReward_Pack[3308879]["RewardItem"][6] = {}
tJuneReturnReward_Pack[3308879]["RewardItem"][6]["Id"] = 3308948
tJuneReturnReward_Pack[3308879]["RewardItem"][6]["Attr"] = "0 1 "
--500赠点
tJuneReturnReward_Pack[3308879]["RewardEMoneyMono"] = {}
tJuneReturnReward_Pack[3308879]["RewardEMoneyMono"]["Value"] = 500
tJuneReturnReward_Pack[3308879]["LogId"] = 12001077


--5颗+1赤炼石（赠）礼包
tJuneReturnReward_Pack[3308936] = {}
tJuneReturnReward_Pack[3308936]["RewardItem"] = {}
tJuneReturnReward_Pack[3308936]["RewardItem"][1] = {}
tJuneReturnReward_Pack[3308936]["RewardItem"][1]["Id"] = 730001
tJuneReturnReward_Pack[3308936]["RewardItem"][1]["Attr"] = "0 5 3"
tJuneReturnReward_Pack[3308936]["LogId"] = 12001077
--5颗+2赤炼石（赠）礼包
tJuneReturnReward_Pack[3308937] = {}
tJuneReturnReward_Pack[3308937]["RewardItem"] = {}
tJuneReturnReward_Pack[3308937]["RewardItem"][1] = {}
tJuneReturnReward_Pack[3308937]["RewardItem"][1]["Id"] = 730002
tJuneReturnReward_Pack[3308937]["RewardItem"][1]["Attr"] = "0 5 3"
tJuneReturnReward_Pack[3308937]["LogId"] = 12001077
--5颗+3赤炼石（赠）礼包
tJuneReturnReward_Pack[3308938] = {}
tJuneReturnReward_Pack[3308938]["RewardItem"] = {}
tJuneReturnReward_Pack[3308938]["RewardItem"][1] = {}
tJuneReturnReward_Pack[3308938]["RewardItem"][1]["Id"] = 730003
tJuneReturnReward_Pack[3308938]["RewardItem"][1]["Attr"] = "0 5 3"
tJuneReturnReward_Pack[3308938]["LogId"] = 12001077
--5颗+4赤炼石（赠）礼包
tJuneReturnReward_Pack[3308939] = {}
tJuneReturnReward_Pack[3308939]["RewardItem"] = {}
tJuneReturnReward_Pack[3308939]["RewardItem"][1] = {}
tJuneReturnReward_Pack[3308939]["RewardItem"][1]["Id"] = 730004
tJuneReturnReward_Pack[3308939]["RewardItem"][1]["Attr"] = "0 5 3"
tJuneReturnReward_Pack[3308939]["LogId"] = 12001077
--5颗龙珠（赠）礼盒
tJuneReturnReward_Pack[3308940] = {}
tJuneReturnReward_Pack[3308940]["RewardItem"] = {}
tJuneReturnReward_Pack[3308940]["RewardItem"][1] = {}
tJuneReturnReward_Pack[3308940]["RewardItem"][1]["Id"] = 1088000
tJuneReturnReward_Pack[3308940]["RewardItem"][1]["Attr"] = "0 5 3"
tJuneReturnReward_Pack[3308940]["LogId"] = 12001077
--8颗龙珠（赠）礼盒
tJuneReturnReward_Pack[3308941] = {}
tJuneReturnReward_Pack[3308941]["RewardItem"] = {}
tJuneReturnReward_Pack[3308941]["RewardItem"][1] = {}
tJuneReturnReward_Pack[3308941]["RewardItem"][1]["Id"] = 1088000
tJuneReturnReward_Pack[3308941]["RewardItem"][1]["Attr"] = "0 8 3"
tJuneReturnReward_Pack[3308941]["LogId"] = 12001077
--5个龙珠卷（赠）礼盒
tJuneReturnReward_Pack[3308942] = {}
tJuneReturnReward_Pack[3308942]["RewardItem"] = {}
tJuneReturnReward_Pack[3308942]["RewardItem"][1] = {}
tJuneReturnReward_Pack[3308942]["RewardItem"][1]["Id"] = 3300190
tJuneReturnReward_Pack[3308942]["RewardItem"][1]["Attr"] = "0 5 3"
tJuneReturnReward_Pack[3308942]["LogId"] = 12001077
--6颗明亮星陨石礼包
tJuneReturnReward_Pack[3308943] = {}
tJuneReturnReward_Pack[3308943]["RewardItem"] = {}
tJuneReturnReward_Pack[3308943]["RewardItem"][1] = {}
tJuneReturnReward_Pack[3308943]["RewardItem"][1]["Id"] = 3009001
tJuneReturnReward_Pack[3308943]["RewardItem"][1]["Attr"] = "0 6 0 2880 1"
tJuneReturnReward_Pack[3308943]["LogId"] = 12001077
--6颗回气丹（赠）礼包
tJuneReturnReward_Pack[3308944] = {}
tJuneReturnReward_Pack[3308944]["RewardItem"] = {}
tJuneReturnReward_Pack[3308944]["RewardItem"][1] = {}
tJuneReturnReward_Pack[3308944]["RewardItem"][1]["Id"] = 729481
tJuneReturnReward_Pack[3308944]["RewardItem"][1]["Attr"] = "0 6 3"
tJuneReturnReward_Pack[3308944]["LogId"] = 12001077
--7颗回气丹（赠）礼包
tJuneReturnReward_Pack[3308945] = {}
tJuneReturnReward_Pack[3308945]["RewardItem"] = {}
tJuneReturnReward_Pack[3308945]["RewardItem"][1] = {}
tJuneReturnReward_Pack[3308945]["RewardItem"][1]["Id"] = 729481
tJuneReturnReward_Pack[3308945]["RewardItem"][1]["Attr"] = "0 7 3"
tJuneReturnReward_Pack[3308945]["LogId"] = 12001077
--8颗回气丹（赠）礼包
tJuneReturnReward_Pack[3308946] = {}
tJuneReturnReward_Pack[3308946]["RewardItem"] = {}
tJuneReturnReward_Pack[3308946]["RewardItem"][1] = {}
tJuneReturnReward_Pack[3308946]["RewardItem"][1]["Id"] = 729481
tJuneReturnReward_Pack[3308946]["RewardItem"][1]["Attr"] = "0 8 3"
tJuneReturnReward_Pack[3308946]["LogId"] = 12001077
--10颗回气丹（赠）礼包
tJuneReturnReward_Pack[3308947] = {}
tJuneReturnReward_Pack[3308947]["RewardItem"] = {}
tJuneReturnReward_Pack[3308947]["RewardItem"][1] = {}
tJuneReturnReward_Pack[3308947]["RewardItem"][1]["Id"] = 729481
tJuneReturnReward_Pack[3308947]["RewardItem"][1]["Attr"] = "0 10 3"
tJuneReturnReward_Pack[3308947]["LogId"] = 12001077
--10个流星卷（赠）礼包
tJuneReturnReward_Pack[3308948] = {}
tJuneReturnReward_Pack[3308948]["RewardItem"] = {}
tJuneReturnReward_Pack[3308948]["RewardItem"][1] = {}
tJuneReturnReward_Pack[3308948]["RewardItem"][1]["Id"] = 720027
tJuneReturnReward_Pack[3308948]["RewardItem"][1]["Attr"] = "0 10 3"
tJuneReturnReward_Pack[3308948]["LogId"] = 12001077
--2颗回气丹（赠）礼包
tJuneReturnReward_Pack[3308965] = {}
tJuneReturnReward_Pack[3308965]["RewardItem"] = {}
tJuneReturnReward_Pack[3308965]["RewardItem"][1] = {}
tJuneReturnReward_Pack[3308965]["RewardItem"][1]["Id"] = 729481
tJuneReturnReward_Pack[3308965]["RewardItem"][1]["Attr"] = "0 2 3"
tJuneReturnReward_Pack[3308965]["LogId"] = 12001077
--3颗回气丹（赠）礼包
tJuneReturnReward_Pack[3308966] = {}
tJuneReturnReward_Pack[3308966]["RewardItem"] = {}
tJuneReturnReward_Pack[3308966]["RewardItem"][1] = {}
tJuneReturnReward_Pack[3308966]["RewardItem"][1]["Id"] = 729481
tJuneReturnReward_Pack[3308966]["RewardItem"][1]["Attr"] = "0 3 3"
tJuneReturnReward_Pack[3308966]["LogId"] = 12001077
--4颗回气丹（赠）礼包
tJuneReturnReward_Pack[3308967] = {}
tJuneReturnReward_Pack[3308967]["RewardItem"] = {}
tJuneReturnReward_Pack[3308967]["RewardItem"][1] = {}
tJuneReturnReward_Pack[3308967]["RewardItem"][1]["Id"] = 729481
tJuneReturnReward_Pack[3308967]["RewardItem"][1]["Attr"] = "0 4 3"
tJuneReturnReward_Pack[3308967]["LogId"] = 12001077
--5颗回气丹（赠）礼包
tJuneReturnReward_Pack[3308968] = {}
tJuneReturnReward_Pack[3308968]["RewardItem"] = {}
tJuneReturnReward_Pack[3308968]["RewardItem"][1] = {}
tJuneReturnReward_Pack[3308968]["RewardItem"][1]["Id"] = 729481
tJuneReturnReward_Pack[3308968]["RewardItem"][1]["Attr"] = "0 5 3"
tJuneReturnReward_Pack[3308968]["LogId"] = 12001077




---------------------------------------------物品逻辑
--固定奖励
function JuneReturnReward_FixedRewardGiftBag_openPack(nItemId)
	if not Item_ChkItem(nItemId) then 
		return
	end
	local nSpace = RewardTemplate_GetRewardSpace(tJuneReturnReward_Pack[nItemId])
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(string.format(tJuneReturnReward_Text["Space"],nSpace))
		return
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_Reward(tJuneReturnReward_Pack[nItemId])
	end
end
--含赠点礼包
function JuneReturnReward_RewardEMoneyMono_RewardPack(nItemId)
	if not Item_ChkItem(nItemId) then 
		return
	end
	local nSpace = RewardTemplate_GetRewardSpace(tJuneReturnReward_Pack[nItemId])
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(string.format(tJuneReturnReward_Text["Space"],nSpace))
		return
	end
	local nEMoneyMono = tJuneReturnReward_Pack[nItemId]["RewardEMoneyMono"]["Value"]
	local nUserEMoneyMono = Get_UserMonoEMoney()
	if nEMoneyMono + nUserEMoneyMono > G_User_MaxEmoneyMono then    ---检查天石（赠）是否达到上限
		User_TalkChannel2005(tJuneReturnReward_Text["EMoneyMono"])
		return
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_Reward(tJuneReturnReward_Pack[nItemId])
	end
end 
---------------------------------------------物品配置
tItem[3308872] = tItem[3308872] or {}
tItem[3308872]["Function"] = function(nItemId,sItemName)
	JuneReturnReward_FixedRewardGiftBag_openPack(nItemId)
end
tItem[3308873] = tItem[3308872]
tItem[3308874] = tItem[3308872]
tItem[3308875] = tItem[3308872]
tItem[3308876] = tItem[3308872]
tItem[3308877] = tItem[3308872]
tItem[3308878] = tItem[3308878] or {}
tItem[3308878]["Function"] = function(nItemId,sItemName)
	JuneReturnReward_RewardEMoneyMono_RewardPack(nItemId)
end
tItem[3308879] = tItem[3308878]

tItem[3308936] = tItem[3308872]
tItem[3308937] = tItem[3308872]
tItem[3308938] = tItem[3308872]
tItem[3308939] = tItem[3308872]
tItem[3308940] = tItem[3308872]
tItem[3308941] = tItem[3308872]
tItem[3308942] = tItem[3308872]
tItem[3308943] = tItem[3308872]
tItem[3308944] = tItem[3308872]
tItem[3308945] = tItem[3308872]
tItem[3308946] = tItem[3308872]
tItem[3308947] = tItem[3308872]
tItem[3308948] = tItem[3308872]

tItem[3308965] = tItem[3308872]
tItem[3308966] = tItem[3308872]
tItem[3308967] = tItem[3308872]
tItem[3308968] = tItem[3308872]









