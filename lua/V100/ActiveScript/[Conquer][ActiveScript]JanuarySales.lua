-----------------------------------------------------------------------------------------------------
--Name:			161208[英文征服][活动脚本]1月版本大促
--Purpose:		1月版本大促
--Creator: 		杨晓晓
--Created:		2016/12/08
------------------------------------------------------------------------------------------------------
--命名前缀
--tJanuarySales_
------------------------------------------------------------------------------------------------------
-- 寻路位置
local tJanuarySales_FindWay = {}
	-- 寻路到主NPC处
	tJanuarySales_FindWay[20198] = {}
	tJanuarySales_FindWay[20198]["MapId"] = 1002
	tJanuarySales_FindWay[20198]["PosX"] = 318
	tJanuarySales_FindWay[20198]["PosY"] = 247
	
local tJanuarySales_Cont = {}
	tJanuarySales_Cont["ItemId"] = {}
	tJanuarySales_Cont["ItemId"][1] = 3301532
	tJanuarySales_Cont["ItemId"][2] = 3301533
	tJanuarySales_Cont["ItemId"][3] = 3301534
--物品表
	--极品15级拳套礼包
local	tJanuarySales_Reward = {}
	tJanuarySales_Reward[3301515] = {}
	tJanuarySales_Reward[3301515]["LogId"] = 12000580
	tJanuarySales_Reward[3301515]["Effect"] = "angelwing"
	tJanuarySales_Reward[3301515]["RewardItem"] = {}
	tJanuarySales_Reward[3301515]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301515]["RewardItem"][1]["Id"] =  624029
	tJanuarySales_Reward[3301515]["RewardItem"][1]["Attr"] = "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3301515]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301515]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301515]["DeleteItem"][1]["Id"] = 3301515
	--极品15级拳套礼包
	tJanuarySales_Reward[3301724] = {}
	tJanuarySales_Reward[3301724]["LogId"] = 12000580
	tJanuarySales_Reward[3301724]["Effect"] = "angelwing"
	tJanuarySales_Reward[3301724]["RewardItem"] = {}
	tJanuarySales_Reward[3301724]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301724]["RewardItem"][1]["Id"] =  624029
	tJanuarySales_Reward[3301724]["RewardItem"][1]["Attr"] = "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3301724]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301724]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301724]["DeleteItem"][1]["Id"] = 3301724
	--免试金牌礼包
	tJanuarySales_Reward[3301905] = {}
	tJanuarySales_Reward[3301905]["LogId"] = 12000580
	tJanuarySales_Reward[3301905]["RewardItem"] = {}
	tJanuarySales_Reward[3301905]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301905]["RewardItem"][1]["Id"] =  723701
	tJanuarySales_Reward[3301905]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanuarySales_Reward[3301905]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301905]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301905]["DeleteItem"][1]["Id"] = 3301905
	--喜迎铁扇强炼丹礼包
	tJanuarySales_Reward[3301516] = {}
	tJanuarySales_Reward[3301516]["LogId"] = 12000580
	tJanuarySales_Reward[3301516]["RewardItem"] = {}
	tJanuarySales_Reward[3301516]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301516]["RewardItem"][1]["Id"] =  3003124
	tJanuarySales_Reward[3301516]["RewardItem"][1]["Attr"] = "0 300"
	tJanuarySales_Reward[3301516]["RewardItem"][2] = {}
	tJanuarySales_Reward[3301516]["RewardItem"][2]["Id"] =  3301876
	tJanuarySales_Reward[3301516]["RewardItem"][2]["Attr"] = "0 1"
	tJanuarySales_Reward[3301516]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301516]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301516]["DeleteItem"][1]["Id"] = 3301516
	--喜迎铁扇强炼丹礼包(新服)
	tJanuarySales_Reward[3301886] = {}
	tJanuarySales_Reward[3301886]["LogId"] = 12000580
	tJanuarySales_Reward[3301886]["RewardItem"] = {}
	tJanuarySales_Reward[3301886]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301886]["RewardItem"][1]["Id"] =  3003124
	tJanuarySales_Reward[3301886]["RewardItem"][1]["Attr"] = "0 300"
	tJanuarySales_Reward[3301886]["RewardItem"][2] = {}
	tJanuarySales_Reward[3301886]["RewardItem"][2]["Id"] =  3301876
	tJanuarySales_Reward[3301886]["RewardItem"][2]["Attr"] = "0 1"
	tJanuarySales_Reward[3301886]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301886]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301886]["DeleteItem"][1]["Id"] = 3301886
	--喜迎铁扇星陨石礼包
	tJanuarySales_Reward[3301723] = {}
	tJanuarySales_Reward[3301723]["LogId"] = 12000580
	tJanuarySales_Reward[3301723]["RewardItem"] = {}
	tJanuarySales_Reward[3301723]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301723]["RewardItem"][1]["Id"] =  3302056
	tJanuarySales_Reward[3301723]["RewardItem"][1]["Attr"] = "0 3"
	tJanuarySales_Reward[3301723]["RewardItem"][2] = {}
	tJanuarySales_Reward[3301723]["RewardItem"][2]["Id"] =  3301876
	tJanuarySales_Reward[3301723]["RewardItem"][2]["Attr"] = "0 10"
	tJanuarySales_Reward[3301723]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301723]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301723]["DeleteItem"][1]["Id"] = 3301723
	--喜迎铁扇星陨石礼包（新服）
	tJanuarySales_Reward[3301887] = {}
	tJanuarySales_Reward[3301887]["LogId"] = 12000580
	tJanuarySales_Reward[3301887]["RewardItem"] = {}
	tJanuarySales_Reward[3301887]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301887]["RewardItem"][1]["Id"] =  3302056
	tJanuarySales_Reward[3301887]["RewardItem"][1]["Attr"] = "0 3"
	tJanuarySales_Reward[3301887]["RewardItem"][2] = {}
	tJanuarySales_Reward[3301887]["RewardItem"][2]["Id"] =  3301876
	tJanuarySales_Reward[3301887]["RewardItem"][2]["Attr"] = "0 10"
	tJanuarySales_Reward[3301887]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301887]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301887]["DeleteItem"][1]["Id"] = 3301887
	--喜迎铁扇抽奖券礼包
	tJanuarySales_Reward[3301877] = {}
	tJanuarySales_Reward[3301877]["LogId"] = 12000580
	tJanuarySales_Reward[3301877]["RewardItem"] = {}
	tJanuarySales_Reward[3301877]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301877]["RewardItem"][1]["Id"] =  711504
	tJanuarySales_Reward[3301877]["RewardItem"][1]["Attr"] = "0 300"
	tJanuarySales_Reward[3301877]["RewardItem"][2] = {}
	tJanuarySales_Reward[3301877]["RewardItem"][2]["Id"] =  3301876
	tJanuarySales_Reward[3301877]["RewardItem"][2]["Attr"] = "0 2"
	tJanuarySales_Reward[3301877]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301877]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301877]["DeleteItem"][1]["Id"] = 3301877
	--喜迎铁扇抽奖券礼包（新服）
	tJanuarySales_Reward[3301888] = {}
	tJanuarySales_Reward[3301888]["LogId"] = 12000580
	tJanuarySales_Reward[3301888]["RewardItem"] = {}
	tJanuarySales_Reward[3301888]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301888]["RewardItem"][1]["Id"] =  711504
	tJanuarySales_Reward[3301888]["RewardItem"][1]["Attr"] = "0 300"
	tJanuarySales_Reward[3301888]["RewardItem"][2] = {}
	tJanuarySales_Reward[3301888]["RewardItem"][2]["Id"] =  3301876
	tJanuarySales_Reward[3301888]["RewardItem"][2]["Attr"] = "0 2"
	tJanuarySales_Reward[3301888]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301888]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301888]["DeleteItem"][1]["Id"] = 3301888
	--喜迎铁扇赤炼石礼包
	tJanuarySales_Reward[3301878] = {}
	tJanuarySales_Reward[3301878]["LogId"] = 12000580
	tJanuarySales_Reward[3301878]["RewardItem"] = {}
	tJanuarySales_Reward[3301878]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301878]["RewardItem"][1]["Id"] =  730008
	tJanuarySales_Reward[3301878]["RewardItem"][1]["Attr"] = "0 1"
	tJanuarySales_Reward[3301878]["RewardItem"][2] = {}
	tJanuarySales_Reward[3301878]["RewardItem"][2]["Id"] =  3301876
	tJanuarySales_Reward[3301878]["RewardItem"][2]["Attr"] = "0 10"
	tJanuarySales_Reward[3301878]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301878]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301878]["DeleteItem"][1]["Id"] = 3301878
	--喜迎铁扇赤炼石礼包（新服）
	tJanuarySales_Reward[3301889] = {}
	tJanuarySales_Reward[3301889]["LogId"] = 12000580
	tJanuarySales_Reward[3301889]["RewardItem"] = {}
	tJanuarySales_Reward[3301889]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301889]["RewardItem"][1]["Id"] =  730008
	tJanuarySales_Reward[3301889]["RewardItem"][1]["Attr"] = "0 1"
	tJanuarySales_Reward[3301889]["RewardItem"][2] = {}
	tJanuarySales_Reward[3301889]["RewardItem"][2]["Id"] =  3301876
	tJanuarySales_Reward[3301889]["RewardItem"][2]["Attr"] = "0 10"
	tJanuarySales_Reward[3301889]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301889]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301889]["DeleteItem"][1]["Id"] = 3301889
	--喜迎铁扇回气丹礼包
	tJanuarySales_Reward[3301879] = {}
	tJanuarySales_Reward[3301879]["LogId"] = 12000580
	tJanuarySales_Reward[3301879]["RewardItem"] = {}
	tJanuarySales_Reward[3301879]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301879]["RewardItem"][1]["Id"] =  3000354
	tJanuarySales_Reward[3301879]["RewardItem"][1]["Attr"] = "0 5"
	tJanuarySales_Reward[3301879]["RewardItem"][2] = {}
	tJanuarySales_Reward[3301879]["RewardItem"][2]["Id"] =  3301876
	tJanuarySales_Reward[3301879]["RewardItem"][2]["Attr"] = "0 3"
	tJanuarySales_Reward[3301879]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301879]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301879]["DeleteItem"][1]["Id"] = 3301879
	--喜迎铁扇回气丹礼包（新服）
	tJanuarySales_Reward[3301890] = {}
	tJanuarySales_Reward[3301890]["LogId"] = 12000580
	tJanuarySales_Reward[3301890]["RewardItem"] = {}
	tJanuarySales_Reward[3301890]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301890]["RewardItem"][1]["Id"] =  3000354
	tJanuarySales_Reward[3301890]["RewardItem"][1]["Attr"] = "0 5"
	tJanuarySales_Reward[3301890]["RewardItem"][2] = {}
	tJanuarySales_Reward[3301890]["RewardItem"][2]["Id"] =  3301876
	tJanuarySales_Reward[3301890]["RewardItem"][2]["Attr"] = "0 3"
	tJanuarySales_Reward[3301890]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301890]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301890]["DeleteItem"][1]["Id"] = 3301890
	--喜迎铁扇通神丹礼包
	tJanuarySales_Reward[3301880] = {}
	tJanuarySales_Reward[3301880]["LogId"] = 12000580
	tJanuarySales_Reward[3301880]["RewardItem"] = {}
	tJanuarySales_Reward[3301880]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301880]["RewardItem"][1]["Id"] =  3003126
	tJanuarySales_Reward[3301880]["RewardItem"][1]["Attr"] = "0 100"
	tJanuarySales_Reward[3301880]["RewardItem"][2] = {}
	tJanuarySales_Reward[3301880]["RewardItem"][2]["Id"] =  3301876
	tJanuarySales_Reward[3301880]["RewardItem"][2]["Attr"] = "0 2"
	tJanuarySales_Reward[3301880]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301880]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301880]["DeleteItem"][1]["Id"] = 3301880
	--喜迎铁扇通神丹礼包（新服）
	tJanuarySales_Reward[3301891] = {}
	tJanuarySales_Reward[3301891]["LogId"] = 12000580
	tJanuarySales_Reward[3301891]["RewardItem"] = {}
	tJanuarySales_Reward[3301891]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301891]["RewardItem"][1]["Id"] =  3003126
	tJanuarySales_Reward[3301891]["RewardItem"][1]["Attr"] = "0 100"
	tJanuarySales_Reward[3301891]["RewardItem"][2] = {}
	tJanuarySales_Reward[3301891]["RewardItem"][2]["Id"] =  3301876
	tJanuarySales_Reward[3301891]["RewardItem"][2]["Attr"] = "0 2"
	tJanuarySales_Reward[3301891]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301891]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301891]["DeleteItem"][1]["Id"] = 3301891
	--喜迎铁扇固化石礼包
	tJanuarySales_Reward[3301881] = {}
	tJanuarySales_Reward[3301881]["LogId"] = 12000580
	tJanuarySales_Reward[3301881]["RewardItem"] = {}
	tJanuarySales_Reward[3301881]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301881]["RewardItem"][1]["Id"] =  723695
	tJanuarySales_Reward[3301881]["RewardItem"][1]["Attr"] = "0 1"
	tJanuarySales_Reward[3301881]["RewardItem"][2] = {}
	tJanuarySales_Reward[3301881]["RewardItem"][2]["Id"] =  3301876
	tJanuarySales_Reward[3301881]["RewardItem"][2]["Attr"] = "0 3"
	tJanuarySales_Reward[3301881]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301881]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301881]["DeleteItem"][1]["Id"] = 3301881
	--喜迎铁扇固化石礼包（新服）
	tJanuarySales_Reward[3301892] = {}
	tJanuarySales_Reward[3301892]["LogId"] = 12000580
	tJanuarySales_Reward[3301892]["RewardItem"] = {}
	tJanuarySales_Reward[3301892]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301892]["RewardItem"][1]["Id"] =  723695
	tJanuarySales_Reward[3301892]["RewardItem"][1]["Attr"] = "0 1"
	tJanuarySales_Reward[3301892]["RewardItem"][2] = {}
	tJanuarySales_Reward[3301892]["RewardItem"][2]["Id"] =  3301876
	tJanuarySales_Reward[3301892]["RewardItem"][2]["Attr"] = "0 3"
	tJanuarySales_Reward[3301892]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301892]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301892]["DeleteItem"][1]["Id"] = 3301892
	--喜迎铁扇龙珠卷礼包
	tJanuarySales_Reward[3301882] = {}
	tJanuarySales_Reward[3301882]["LogId"] = 12000580
	tJanuarySales_Reward[3301882]["RewardItem"] = {}
	tJanuarySales_Reward[3301882]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301882]["RewardItem"][1]["Id"] =  720028
	tJanuarySales_Reward[3301882]["RewardItem"][1]["Attr"] = "0 1"
	tJanuarySales_Reward[3301882]["RewardItem"][2] = {}
	tJanuarySales_Reward[3301882]["RewardItem"][2]["Id"] =  3301876
	tJanuarySales_Reward[3301882]["RewardItem"][2]["Attr"] = "0 1"
	tJanuarySales_Reward[3301882]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301882]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301882]["DeleteItem"][1]["Id"] = 3301882
	--喜迎铁扇龙珠卷礼包（新服）
	tJanuarySales_Reward[3301893] = {}
	tJanuarySales_Reward[3301893]["LogId"] = 12000580
	tJanuarySales_Reward[3301893]["RewardItem"] = {}
	tJanuarySales_Reward[3301893]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301893]["RewardItem"][1]["Id"] =  720028
	tJanuarySales_Reward[3301893]["RewardItem"][1]["Attr"] = "0 1"
	tJanuarySales_Reward[3301893]["RewardItem"][2] = {}
	tJanuarySales_Reward[3301893]["RewardItem"][2]["Id"] =  3301876
	tJanuarySales_Reward[3301893]["RewardItem"][2]["Attr"] = "0 1"
	tJanuarySales_Reward[3301893]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301893]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301893]["DeleteItem"][1]["Id"] = 3301893
	--喜迎铁扇骑宠礼包
	tJanuarySales_Reward[3301883] = {}
	tJanuarySales_Reward[3301883]["LogId"] = 12000580
	tJanuarySales_Reward[3301883]["RewardItem"] = {}
	tJanuarySales_Reward[3301883]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301883]["RewardItem"][1]["Id"] =  3001406
	tJanuarySales_Reward[3301883]["RewardItem"][1]["Attr"] = "0 1"
	tJanuarySales_Reward[3301883]["RewardItem"][2] = {}
	tJanuarySales_Reward[3301883]["RewardItem"][2]["Id"] =  3301876
	tJanuarySales_Reward[3301883]["RewardItem"][2]["Attr"] = "0 5"
	tJanuarySales_Reward[3301883]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301883]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301883]["DeleteItem"][1]["Id"] = 3301883
	--喜迎铁扇骑宠礼包（新服）
	tJanuarySales_Reward[3301894] = {}
	tJanuarySales_Reward[3301894]["LogId"] = 12000580
	tJanuarySales_Reward[3301894]["RewardItem"] = {}
	tJanuarySales_Reward[3301894]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301894]["RewardItem"][1]["Id"] =  3001406
	tJanuarySales_Reward[3301894]["RewardItem"][1]["Attr"] = "0 1"
	tJanuarySales_Reward[3301894]["RewardItem"][2] = {}
	tJanuarySales_Reward[3301894]["RewardItem"][2]["Id"] =  3301876
	tJanuarySales_Reward[3301894]["RewardItem"][2]["Attr"] = "0 5"
	tJanuarySales_Reward[3301894]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301894]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301894]["DeleteItem"][1]["Id"] = 3301894
	--喜迎铁扇财富礼包
	tJanuarySales_Reward[3301884] = {}
	tJanuarySales_Reward[3301884]["LogId"] = 12000580
	tJanuarySales_Reward[3301884]["RewardItem"] = {}
	tJanuarySales_Reward[3301884]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301884]["RewardItem"][1]["Id"] =  3301876
	tJanuarySales_Reward[3301884]["RewardItem"][1]["Attr"] = "0 3"
	tJanuarySales_Reward[3301884]["RewardMoney"] = {}
	tJanuarySales_Reward[3301884]["RewardMoney"]["Value"] =  200000000
	tJanuarySales_Reward[3301884]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301884]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301884]["DeleteItem"][1]["Id"] = 3301884
	--喜迎铁扇财富礼包（新服）
	tJanuarySales_Reward[3301895] = {}
	tJanuarySales_Reward[3301895]["LogId"] = 12000580
	tJanuarySales_Reward[3301895]["RewardItem"] = {}
	tJanuarySales_Reward[3301895]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301895]["RewardItem"][1]["Id"] =  3301876
	tJanuarySales_Reward[3301895]["RewardItem"][1]["Attr"] = "0 3"
	tJanuarySales_Reward[3301895]["RewardMoney"] = {}
	tJanuarySales_Reward[3301895]["RewardMoney"]["Value"] =  200000000
	tJanuarySales_Reward[3301895]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301895]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301895]["DeleteItem"][1]["Id"] = 3301895
	--喜迎铁扇开洞礼包
	tJanuarySales_Reward[3301885] = {}
	tJanuarySales_Reward[3301885]["LogId"] = 12000580
	tJanuarySales_Reward[3301885]["RewardItem"] = {}
	tJanuarySales_Reward[3301885]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301885]["RewardItem"][1]["Id"] =  1200005
	tJanuarySales_Reward[3301885]["RewardItem"][1]["Attr"] = "0 2"
	tJanuarySales_Reward[3301885]["RewardItem"][2] = {}
	tJanuarySales_Reward[3301885]["RewardItem"][2]["Id"] =  3301876
	tJanuarySales_Reward[3301885]["RewardItem"][2]["Attr"] = "0 3"
	tJanuarySales_Reward[3301885]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301885]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301885]["DeleteItem"][1]["Id"] = 3301885
	--喜迎铁扇开洞礼包（新服）
	tJanuarySales_Reward[3301896] = {}
	tJanuarySales_Reward[3301896]["LogId"] = 12000580
	tJanuarySales_Reward[3301896]["RewardItem"] = {}
	tJanuarySales_Reward[3301896]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301896]["RewardItem"][1]["Id"] =  1200005
	tJanuarySales_Reward[3301896]["RewardItem"][1]["Attr"] = "0 2"
	tJanuarySales_Reward[3301896]["RewardItem"][2] = {}
	tJanuarySales_Reward[3301896]["RewardItem"][2]["Id"] =  3301876
	tJanuarySales_Reward[3301896]["RewardItem"][2]["Attr"] = "0 3"
	tJanuarySales_Reward[3301896]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301896]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301896]["DeleteItem"][1]["Id"] = 3301896
	--6W气力值礼包
	tJanuarySales_Reward[3301540] = {}
	tJanuarySales_Reward[3301540]["LogId"] = 12000580
	tJanuarySales_Reward[3301540]["RewardStrengthValue"] = {}
	tJanuarySales_Reward[3301540]["RewardStrengthValue"]["Value"] = 60000
	tJanuarySales_Reward[3301540]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301540]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301540]["DeleteItem"][1]["Id"] = 3301540
	--晶莹星陨石*10
	tJanuarySales_Reward[3302056] = {}
	tJanuarySales_Reward[3302056]["LogId"] = 12000580
	tJanuarySales_Reward[3302056]["RewardItem"] = {}
	tJanuarySales_Reward[3302056]["RewardItem"][1] = {}
	tJanuarySales_Reward[3302056]["RewardItem"][1]["Id"] =  3009002
	tJanuarySales_Reward[3302056]["RewardItem"][1]["Attr"] = "0 10 0 2880 1"
	tJanuarySales_Reward[3302056]["DeleteItem"] = {} 
	tJanuarySales_Reward[3302056]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3302056]["DeleteItem"][1]["Id"] = 3302056
	-- 铁扇新开大礼包
	-- 一等奖概率
	tJanuarySales_Reward[3301570] = {}
	tJanuarySales_Reward[3301570]["ItemChanceSum"] = 10000
	tJanuarySales_Reward[3301570][1] = {}
	tJanuarySales_Reward[3301570][1]["RandomItemChanceType"] = 2
	tJanuarySales_Reward[3301570][1]["ItemChance"] = 50
	tJanuarySales_Reward[3301570][1]["GlobalId"] = 51415
	tJanuarySales_Reward[3301570][1]["Pos"] = 1 
	tJanuarySales_Reward[3301570][1]["MaxData"] = 1 
	tJanuarySales_Reward[3301570][1]["FullIndex"] = 8
	tJanuarySales_Reward[3301570][1]["RewardItem"] = {}
	tJanuarySales_Reward[3301570][1]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301570][1]["RewardItem"][1]["Id"] = 3301532
	tJanuarySales_Reward[3301570][1]["RewardItem"][1]["Attr"] = "0 1" 
	tJanuarySales_Reward[3301570][1]["LogId"] = 12000580                               
	-- 二等奖概率                                      
	tJanuarySales_Reward[3301570][2] = {}
	tJanuarySales_Reward[3301570][2]["RandomItemChanceType"] = 2
	tJanuarySales_Reward[3301570][2]["ItemChance"] = 100
	tJanuarySales_Reward[3301570][2]["GlobalId"] = 51415
	tJanuarySales_Reward[3301570][2]["Pos"] = 2
	tJanuarySales_Reward[3301570][2]["MaxData"] = 3 
	tJanuarySales_Reward[3301570][2]["FullIndex"] = 8
	tJanuarySales_Reward[3301570][2]["RewardItem"] = {}
	tJanuarySales_Reward[3301570][2]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301570][2]["RewardItem"][1]["Id"] = 3301533
	tJanuarySales_Reward[3301570][2]["RewardItem"][1]["Attr"] = "0 1" 
	tJanuarySales_Reward[3301570][2]["LogId"] = 12000580                                      
	-- 三等奖概率                                      
	tJanuarySales_Reward[3301570][3] = {}
	tJanuarySales_Reward[3301570][3]["RandomItemChanceType"] = 2
	tJanuarySales_Reward[3301570][3]["ItemChance"] = 150
	tJanuarySales_Reward[3301570][3]["RewardItem"] = {}
	tJanuarySales_Reward[3301570][3]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301570][3]["RewardItem"][1]["Id"] = 3301534
	tJanuarySales_Reward[3301570][3]["RewardItem"][1]["Attr"] = "0 1" 
	tJanuarySales_Reward[3301570][3]["LogId"] = 12000580                                         
	-- 四等奖概率                                    
	tJanuarySales_Reward[3301570][4] = {}
	tJanuarySales_Reward[3301570][4]["RandomItemChanceType"] = 2
	tJanuarySales_Reward[3301570][4]["ItemChance"] = 200
	tJanuarySales_Reward[3301570][4]["RewardItem"] = {}
	tJanuarySales_Reward[3301570][4]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301570][4]["RewardItem"][1]["Id"] = 3301535
	tJanuarySales_Reward[3301570][4]["RewardItem"][1]["Attr"] = "0 1" 
	tJanuarySales_Reward[3301570][4]["LogId"] = 12000580
	-- 五等奖概率                                      
	tJanuarySales_Reward[3301570][5] = {}
	tJanuarySales_Reward[3301570][5]["RandomItemChanceType"] = 2
	tJanuarySales_Reward[3301570][5]["ItemChance"] = 2000
	tJanuarySales_Reward[3301570][5]["RewardItem"] = {}
	tJanuarySales_Reward[3301570][5]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301570][5]["RewardItem"][1]["Id"] = 3301536
	tJanuarySales_Reward[3301570][5]["RewardItem"][1]["Attr"] = "0 1" 
	tJanuarySales_Reward[3301570][5]["LogId"] = 12000580
	-- 六等奖概率                                     
	tJanuarySales_Reward[3301570][6] = {}
	tJanuarySales_Reward[3301570][6]["RandomItemChanceType"] = 2
	tJanuarySales_Reward[3301570][6]["ItemChance"] = 2000
	tJanuarySales_Reward[3301570][6]["RewardItem"] = {}
	tJanuarySales_Reward[3301570][6]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301570][6]["RewardItem"][1]["Id"] = 3301537
	tJanuarySales_Reward[3301570][6]["RewardItem"][1]["Attr"] = "0 1" 
	tJanuarySales_Reward[3301570][6]["LogId"] = 12000580
	-- 七等奖概率                                     
	tJanuarySales_Reward[3301570][7] = {}
	tJanuarySales_Reward[3301570][7]["RandomItemChanceType"] = 2
	tJanuarySales_Reward[3301570][7]["ItemChance"] = 2500
	tJanuarySales_Reward[3301570][7]["RewardItem"] = {}
	tJanuarySales_Reward[3301570][7]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301570][7]["RewardItem"][1]["Id"] = 3301538
	tJanuarySales_Reward[3301570][7]["RewardItem"][1]["Attr"] = "0 1" 
	tJanuarySales_Reward[3301570][7]["LogId"] = 12000580
	-- 八等奖概率                                     
	tJanuarySales_Reward[3301570][8] = {}
	tJanuarySales_Reward[3301570][8]["RandomItemChanceType"] = 2
	tJanuarySales_Reward[3301570][8]["ItemChance"] = 3000
	tJanuarySales_Reward[3301570][8]["RewardItem"] = {}
	tJanuarySales_Reward[3301570][8]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301570][8]["RewardItem"][1]["Id"] = 3301539
	tJanuarySales_Reward[3301570][8]["RewardItem"][1]["Attr"] = "0 1" 
	tJanuarySales_Reward[3301570][8]["LogId"] = 12000580	

--配置奖励表
	tJanuarySales_Reward[3301532] = {}
--一等奖奖励
	tJanuarySales_Reward[3301532]["ItemChanceSum"] = 3000
	tJanuarySales_Reward[3301532][1] = {}
	tJanuarySales_Reward[3301532][1]["RandomItemChanceType"] = 2
	tJanuarySales_Reward[3301532][1]["ItemChance"] = 1000
	tJanuarySales_Reward[3301532][1]["RewardItem"] = {}
	tJanuarySales_Reward[3301532][1]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301532][1]["RewardItem"][1]["Id"] = 711903
	tJanuarySales_Reward[3301532][1]["RewardItem"][1]["Attr"] = "0 1 3" 
	tJanuarySales_Reward[3301532][1]["LogId"] = 12000580	
	tJanuarySales_Reward[3301532][2] = {}
	tJanuarySales_Reward[3301532][2]["RandomItemChanceType"] = 2
	tJanuarySales_Reward[3301532][2]["ItemChance"] = 1000
	tJanuarySales_Reward[3301532][2]["RewardItem"] = {}
	tJanuarySales_Reward[3301532][2]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301532][2]["RewardItem"][1]["Id"] = 711904
	tJanuarySales_Reward[3301532][2]["RewardItem"][1]["Attr"] = "0 1 3" 
	tJanuarySales_Reward[3301532][2]["LogId"] = 12000580	
	tJanuarySales_Reward[3301532][3] = {}
	tJanuarySales_Reward[3301532][3]["RandomItemChanceType"] = 2
	tJanuarySales_Reward[3301532][3]["ItemChance"] = 1000
	tJanuarySales_Reward[3301532][3]["RewardItem"] = {}
	tJanuarySales_Reward[3301532][3]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301532][3]["RewardItem"][1]["Id"] = 730008
	tJanuarySales_Reward[3301532][3]["RewardItem"][1]["Attr"] = "0 1" 
	tJanuarySales_Reward[3301532][3]["LogId"] = 12000580	
	--豪华时装礼包
	tJanuarySales_Reward[3302013] = {}
	tJanuarySales_Reward[3302013][193445] = {}
	tJanuarySales_Reward[3302013][193445]["DeleteItem"] = {} 
	tJanuarySales_Reward[3302013][193445]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3302013][193445]["DeleteItem"][1]["Id"] = 3302013
	tJanuarySales_Reward[3302013][193445]["RewardItem"] = {} 
	tJanuarySales_Reward[3302013][193445]["RewardItem"][1] = {}
    tJanuarySales_Reward[3302013][193445]["RewardItem"][1]["Id"] = 193445
	tJanuarySales_Reward[3302013][193445]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" 
	tJanuarySales_Reward[3302013][193445]["LogId"] = 12000580
	tJanuarySales_Reward[3302013][193115] = {}
	tJanuarySales_Reward[3302013][193115]["DeleteItem"] = {} 
	tJanuarySales_Reward[3302013][193115]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3302013][193115]["DeleteItem"][1]["Id"] = 3302013
	tJanuarySales_Reward[3302013][193115]["RewardItem"] = {} 
	tJanuarySales_Reward[3302013][193115]["RewardItem"][1] = {}
    tJanuarySales_Reward[3302013][193115]["RewardItem"][1]["Id"] = 193115
	tJanuarySales_Reward[3302013][193115]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" 
	tJanuarySales_Reward[3302013][193115]["LogId"] = 12000580
	--二等奖可选包
	tJanuarySales_Reward[3301533] = {}
	tJanuarySales_Reward[3301533][730007] = {}
	tJanuarySales_Reward[3301533][730007]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301533][730007]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301533][730007]["DeleteItem"][1]["Id"] = 3301533
	tJanuarySales_Reward[3301533][730007]["RewardItem"] = {} 
	tJanuarySales_Reward[3301533][730007]["RewardItem"][1] = {}
    tJanuarySales_Reward[3301533][730007]["RewardItem"][1]["Id"] = 730007
	tJanuarySales_Reward[3301533][730007]["RewardItem"][1]["Attr"] = "0 1" 
	tJanuarySales_Reward[3301533][730007]["LogId"] = 12000580
	tJanuarySales_Reward[3301533][3301540] = {}
	tJanuarySales_Reward[3301533][3301540]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301533][3301540]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301533][3301540]["DeleteItem"][1]["Id"] = 3301533
	tJanuarySales_Reward[3301533][3301540]["RewardItem"] = {} 
	tJanuarySales_Reward[3301533][3301540]["RewardItem"][1] = {}
    tJanuarySales_Reward[3301533][3301540]["RewardItem"][1]["Id"] = 3301540
	tJanuarySales_Reward[3301533][3301540]["RewardItem"][1]["Attr"] = "0 1" 
	tJanuarySales_Reward[3301533][3301540]["LogId"] = 12000580
	tJanuarySales_Reward[3301533][3003653] = {}
	tJanuarySales_Reward[3301533][3003653]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301533][3003653]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301533][3003653]["DeleteItem"][1]["Id"] = 3301533
	tJanuarySales_Reward[3301533][3003653]["RewardItem"] = {} 
	tJanuarySales_Reward[3301533][3003653]["RewardItem"][1] = {}
    tJanuarySales_Reward[3301533][3003653]["RewardItem"][1]["Id"] = 3003653
	tJanuarySales_Reward[3301533][3003653]["RewardItem"][1]["Attr"] = "0 1" 
	tJanuarySales_Reward[3301533][3003653]["LogId"] = 12000580
	--三等奖可选包
	tJanuarySales_Reward[3301534] = {}
	tJanuarySales_Reward[3301534][3009002] = {}
	tJanuarySales_Reward[3301534][3009002]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301534][3009002]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301534][3009002]["DeleteItem"][1]["Id"] = 3301534
	tJanuarySales_Reward[3301534][3009002]["RewardItem"] = {} 
	tJanuarySales_Reward[3301534][3009002]["RewardItem"][1] = {}
    tJanuarySales_Reward[3301534][3009002]["RewardItem"][1]["Id"] = 3009002
	tJanuarySales_Reward[3301534][3009002]["RewardItem"][1]["Attr"] = "0 8 0 2880 1" 
	tJanuarySales_Reward[3301534][3009002]["LogId"] = 12000580
	tJanuarySales_Reward[3301534][723695] = {}
	tJanuarySales_Reward[3301534][723695]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301534][723695]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301534][723695]["DeleteItem"][1]["Id"] = 3301534
	tJanuarySales_Reward[3301534][723695]["RewardItem"] = {} 
	tJanuarySales_Reward[3301534][723695]["RewardItem"][1] = {}
    tJanuarySales_Reward[3301534][723695]["RewardItem"][1]["Id"] = 723695
	tJanuarySales_Reward[3301534][723695]["RewardItem"][1]["Attr"] = "0 1" 
	tJanuarySales_Reward[3301534][723695]["LogId"] = 12000580
	tJanuarySales_Reward[3301534][1200005] = {}
	tJanuarySales_Reward[3301534][1200005]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301534][1200005]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301534][1200005]["DeleteItem"][1]["Id"] = 3301534
	tJanuarySales_Reward[3301534][1200005]["RewardItem"] = {} 
	tJanuarySales_Reward[3301534][1200005]["RewardItem"][1] = {}
    tJanuarySales_Reward[3301534][1200005]["RewardItem"][1]["Id"] = 1200005
	tJanuarySales_Reward[3301534][1200005]["RewardItem"][1]["Attr"] = "0 2" 
	tJanuarySales_Reward[3301534][1200005]["LogId"] = 12000580
	--四等奖可选包
	tJanuarySales_Reward[3301535] = {}
	tJanuarySales_Reward[3301535][3006026] = {}
	tJanuarySales_Reward[3301535][3006026]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301535][3006026]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301535][3006026]["DeleteItem"][1]["Id"] = 3301535
	tJanuarySales_Reward[3301535][3006026]["RewardItem"] = {} 
	tJanuarySales_Reward[3301535][3006026]["RewardItem"][1] = {}
    tJanuarySales_Reward[3301535][3006026]["RewardItem"][1]["Id"] = 3006026
	tJanuarySales_Reward[3301535][3006026]["RewardItem"][1]["Attr"] = "0 1" 
	tJanuarySales_Reward[3301535][3006026]["LogId"] = 12000580
	tJanuarySales_Reward[3301535][1200006] = {}
	tJanuarySales_Reward[3301535][1200006]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301535][1200006]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301535][1200006]["DeleteItem"][1]["Id"] = 3301535
	tJanuarySales_Reward[3301535][1200006]["RewardItem"] = {} 
	tJanuarySales_Reward[3301535][1200006]["RewardItem"][1] = {}
    tJanuarySales_Reward[3301535][1200006]["RewardItem"][1]["Id"] = 1200006
	tJanuarySales_Reward[3301535][1200006]["RewardItem"][1]["Attr"] = "0 1" 
	tJanuarySales_Reward[3301535][1200006]["LogId"] = 12000580
	tJanuarySales_Reward[3301535][722057] = {}
	tJanuarySales_Reward[3301535][722057]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301535][722057]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301535][722057]["DeleteItem"][1]["Id"] = 3301535
	tJanuarySales_Reward[3301535][722057]["RewardItem"] = {} 
	tJanuarySales_Reward[3301535][722057]["RewardItem"][1] = {}
    tJanuarySales_Reward[3301535][722057]["RewardItem"][1]["Id"] = 722057
	tJanuarySales_Reward[3301535][722057]["RewardItem"][1]["Attr"] = "0 1" 
	tJanuarySales_Reward[3301535][722057]["LogId"] = 12000580
	--五等奖可选包
	tJanuarySales_Reward[3301536] = {}
	tJanuarySales_Reward[3301536][1088000] = {}
	tJanuarySales_Reward[3301536][1088000]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301536][1088000]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301536][1088000]["DeleteItem"][1]["Id"] = 3301536
	tJanuarySales_Reward[3301536][1088000]["RewardItem"] = {} 
	tJanuarySales_Reward[3301536][1088000]["RewardItem"][1] = {}
    tJanuarySales_Reward[3301536][1088000]["RewardItem"][1]["Id"] = 1088000
	tJanuarySales_Reward[3301536][1088000]["RewardItem"][1]["Attr"] = "0 1" 
	tJanuarySales_Reward[3301536][1088000]["LogId"] = 12000580
	tJanuarySales_Reward[3301536][3003124] = {}
	tJanuarySales_Reward[3301536][3003124]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301536][3003124]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301536][3003124]["DeleteItem"][1]["Id"] = 3301536
	tJanuarySales_Reward[3301536][3003124]["RewardItem"] = {} 
	tJanuarySales_Reward[3301536][3003124]["RewardItem"][1] = {}
    tJanuarySales_Reward[3301536][3003124]["RewardItem"][1]["Id"] = 3003124
	tJanuarySales_Reward[3301536][3003124]["RewardItem"][1]["Attr"] = "0 20 3" 
	tJanuarySales_Reward[3301536][3003124]["LogId"] = 12000580
	tJanuarySales_Reward[3301536][3002029] = {}
	tJanuarySales_Reward[3301536][3002029]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301536][3002029]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301536][3002029]["DeleteItem"][1]["Id"] = 3301536
	tJanuarySales_Reward[3301536][3002029]["RewardItem"] = {} 
	tJanuarySales_Reward[3301536][3002029]["RewardItem"][1] = {}
    tJanuarySales_Reward[3301536][3002029]["RewardItem"][1]["Id"] = 3002029
	tJanuarySales_Reward[3301536][3002029]["RewardItem"][1]["Attr"] = "0 20 0 2880 1" 
	tJanuarySales_Reward[3301536][3002029]["LogId"] = 12000580
	--六等奖可选包
	tJanuarySales_Reward[3301537] = {}
	tJanuarySales_Reward[3301537][700013] = {}
	tJanuarySales_Reward[3301537][700013]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301537][700013]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301537][700013]["DeleteItem"][1]["Id"] = 3301537
	tJanuarySales_Reward[3301537][700013]["RewardItem"] = {} 
	tJanuarySales_Reward[3301537][700013]["RewardItem"][1] = {}
    tJanuarySales_Reward[3301537][700013]["RewardItem"][1]["Id"] = 700013
	tJanuarySales_Reward[3301537][700013]["RewardItem"][1]["Attr"] = "0 1" 
	tJanuarySales_Reward[3301537][700013]["LogId"] = 12000580
	tJanuarySales_Reward[3301537][720652] = {}
	tJanuarySales_Reward[3301537][720652]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301537][720652]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301537][720652]["DeleteItem"][1]["Id"] = 3301537
	tJanuarySales_Reward[3301537][720652]["RewardItem"] = {} 
	tJanuarySales_Reward[3301537][720652]["RewardItem"][1] = {}
    tJanuarySales_Reward[3301537][720652]["RewardItem"][1]["Id"] = 720652
	tJanuarySales_Reward[3301537][720652]["RewardItem"][1]["Attr"] = "0 1" 
	tJanuarySales_Reward[3301537][720652]["LogId"] = 12000580
	tJanuarySales_Reward[3301537][729481] = {}
	tJanuarySales_Reward[3301537][729481]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301537][729481]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301537][729481]["DeleteItem"][1]["Id"] = 3301537
	tJanuarySales_Reward[3301537][729481]["RewardItem"] = {} 
	tJanuarySales_Reward[3301537][729481]["RewardItem"][1] = {}
    tJanuarySales_Reward[3301537][729481]["RewardItem"][1]["Id"] = 729481
	tJanuarySales_Reward[3301537][729481]["RewardItem"][1]["Attr"] = "0 2 3" 
	tJanuarySales_Reward[3301537][729481]["LogId"] = 12000580
	--七等奖可选包
	tJanuarySales_Reward[3301538] = {}
	tJanuarySales_Reward[3301538][730003] = {}
	tJanuarySales_Reward[3301538][730003]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301538][730003]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301538][730003]["DeleteItem"][1]["Id"] = 3301538
	tJanuarySales_Reward[3301538][730003]["RewardItem"] = {} 
	tJanuarySales_Reward[3301538][730003]["RewardItem"][1] = {}
    tJanuarySales_Reward[3301538][730003]["RewardItem"][1]["Id"] = 730003
	tJanuarySales_Reward[3301538][730003]["RewardItem"][1]["Attr"] = "0 1" 
	tJanuarySales_Reward[3301538][730003]["LogId"] = 12000580
	tJanuarySales_Reward[3301538][3009001] = {}
	tJanuarySales_Reward[3301538][3009001]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301538][3009001]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301538][3009001]["DeleteItem"][1]["Id"] = 3301538
	tJanuarySales_Reward[3301538][3009001]["RewardItem"] = {} 
	tJanuarySales_Reward[3301538][3009001]["RewardItem"][1] = {}
    tJanuarySales_Reward[3301538][3009001]["RewardItem"][1]["Id"] = 3009001
	tJanuarySales_Reward[3301538][3009001]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" 
	tJanuarySales_Reward[3301538][3009001]["LogId"] = 12000580
	tJanuarySales_Reward[3301538][3003126] = {}
	tJanuarySales_Reward[3301538][3003126]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301538][3003126]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301538][3003126]["DeleteItem"][1]["Id"] = 3301538
	tJanuarySales_Reward[3301538][3003126]["RewardItem"] = {} 
	tJanuarySales_Reward[3301538][3003126]["RewardItem"][1] = {}
    tJanuarySales_Reward[3301538][3003126]["RewardItem"][1]["Id"] = 3003126
	tJanuarySales_Reward[3301538][3003126]["RewardItem"][1]["Attr"] = "0 5 3" 
	tJanuarySales_Reward[3301538][3003126]["LogId"] = 12000580
	--八等奖
	tJanuarySales_Reward[3301539] = {}
	tJanuarySales_Reward[3301539]["LogId"] = 12000580
	tJanuarySales_Reward[3301539]["RewardItem"] = {}
	tJanuarySales_Reward[3301539]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301539]["RewardItem"][1]["Id"] =  3000123
	tJanuarySales_Reward[3301539]["RewardItem"][1]["Attr"] = "0 1"
	tJanuarySales_Reward[3301539]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301539]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301539]["DeleteItem"][1]["Id"] = 3301539
	--+4HeartNunchakuPack 
	tJanuarySales_Reward[3301645] = {}
	tJanuarySales_Reward[3301645]["LogId"] = 12000580
	tJanuarySales_Reward[3301645]["RewardItem"] = {}
	tJanuarySales_Reward[3301645]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301645]["RewardItem"][1]["Id"] =  617139
	tJanuarySales_Reward[3301645]["RewardItem"][1]["Attr"] = "0 0 0 0 0 0 0 3 0 0 4 255"
	tJanuarySales_Reward[3301645]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301645]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301645]["DeleteItem"][1]["Id"] = 3301645
	--+4TempestWingPack
	tJanuarySales_Reward[3301646] = {}
	tJanuarySales_Reward[3301646]["LogId"] = 12000580
	tJanuarySales_Reward[3301646]["RewardItem"] = {}
	tJanuarySales_Reward[3301646]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301646]["RewardItem"][1]["Id"] =  204009
	tJanuarySales_Reward[3301646]["RewardItem"][1]["Attr"] = "0 0 0 0 0 0 0 0 0 0 4"
	tJanuarySales_Reward[3301646]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301646]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301646]["DeleteItem"][1]["Id"] = 3301646
	--+6TempestWingPack
	tJanuarySales_Reward[3301650] = {}
	tJanuarySales_Reward[3301650]["LogId"] = 12000580
	tJanuarySales_Reward[3301650]["RewardItem"] = {}
	tJanuarySales_Reward[3301650]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301650]["RewardItem"][1]["Id"] =  204009
	tJanuarySales_Reward[3301650]["RewardItem"][1]["Attr"] = "0 0 0 0 0 0 0 0 0 0 6"
	tJanuarySales_Reward[3301650]["DeleteItem"] = {} 
	tJanuarySales_Reward[3301650]["DeleteItem"][1] = {}
    tJanuarySales_Reward[3301650]["DeleteItem"][1]["Id"] = 3301650
	--四个宝石礼包
	tJanuarySales_Reward[3301546] = {}
	tJanuarySales_Reward[3301546]["LogId"] = 12000580
	tJanuarySales_Reward[3301546]["RewardItem"] = {}
	tJanuarySales_Reward[3301546]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301546]["RewardItem"][1]["Id"] = 700123
	tJanuarySales_Reward[3301546]["RewardItem"][1]["Attr"] = "0 1"
	tJanuarySales_Reward[3301546]["DeleteItem"] = {}
	tJanuarySales_Reward[3301546]["DeleteItem"][1] = {}
	tJanuarySales_Reward[3301546]["DeleteItem"][1]["Id"] = 3301546
	
	tJanuarySales_Reward[3301547] = {}
	tJanuarySales_Reward[3301547]["LogId"] = 12000580
	tJanuarySales_Reward[3301547]["RewardItem"] = {}
	tJanuarySales_Reward[3301547]["RewardItem"][1] = {}
	tJanuarySales_Reward[3301547]["RewardItem"][1]["Id"] = 700103
	tJanuarySales_Reward[3301547]["RewardItem"][1]["Attr"] = "0 1"
	tJanuarySales_Reward[3301547]["DeleteItem"] = {}
	tJanuarySales_Reward[3301547]["DeleteItem"][1] = {}
	tJanuarySales_Reward[3301547]["DeleteItem"][1]["Id"] = 3301547
	
	tJanuarySales_Reward[3302055] = {}
	tJanuarySales_Reward[3302055]["LogId"] = 12000580
	tJanuarySales_Reward[3302055]["RewardItem"] = {}
	tJanuarySales_Reward[3302055]["RewardItem"][1] = {}
	tJanuarySales_Reward[3302055]["RewardItem"][1]["Id"] = 700103
	tJanuarySales_Reward[3302055]["RewardItem"][1]["Attr"] = "0 1"
	tJanuarySales_Reward[3302055]["DeleteItem"] = {}
	tJanuarySales_Reward[3302055]["DeleteItem"][1] = {}
	tJanuarySales_Reward[3302055]["DeleteItem"][1]["Id"] = 3302055
	
	tJanuarySales_Reward[3302054] = {}
	tJanuarySales_Reward[3302054]["LogId"] = 12000580
	tJanuarySales_Reward[3302054]["RewardItem"] = {}
	tJanuarySales_Reward[3302054]["RewardItem"][1] = {}
	tJanuarySales_Reward[3302054]["RewardItem"][1]["Id"] = 700123
	tJanuarySales_Reward[3302054]["RewardItem"][1]["Attr"] = "0 1"
	tJanuarySales_Reward[3302054]["DeleteItem"] = {}
	tJanuarySales_Reward[3302054]["DeleteItem"][1] = {}
	tJanuarySales_Reward[3302054]["DeleteItem"][1]["Id"] = 3302054
	--新服NPC5促销礼包部分
	tJanuarySales_Reward[3301911] = {}
	tJanuarySales_Reward[3301911]["DeleteItem"]= {}
	tJanuarySales_Reward[3301911]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301911]["DeleteItem"][1]["Id"]= 3301911
	tJanuarySales_Reward[3301911]["RewardItem"]= {}
	tJanuarySales_Reward[3301911]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301911]["RewardItem"][1]["Id"]= 150139
	tJanuarySales_Reward[3301911]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tJanuarySales_Reward[3301911]["LogId"]= 12000580
	tJanuarySales_Reward[3301912] = {}
	tJanuarySales_Reward[3301912]["DeleteItem"]= {}
	tJanuarySales_Reward[3301912]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301912]["DeleteItem"][1]["Id"]= 3301912
	tJanuarySales_Reward[3301912]["RewardItem"]= {}
	tJanuarySales_Reward[3301912]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301912]["RewardItem"][1]["Id"]= 120129
	tJanuarySales_Reward[3301912]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tJanuarySales_Reward[3301912]["LogId"]= 12000580
	tJanuarySales_Reward[3301913] = {}
	tJanuarySales_Reward[3301913]["DeleteItem"]= {}
	tJanuarySales_Reward[3301913]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301913]["DeleteItem"][1]["Id"]= 3301913
	tJanuarySales_Reward[3301913]["RewardItem"]= {}
	tJanuarySales_Reward[3301913]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301913]["RewardItem"][1]["Id"]= 160139
	tJanuarySales_Reward[3301913]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tJanuarySales_Reward[3301913]["LogId"]= 12000580
	tJanuarySales_Reward[3301914] = {}
	tJanuarySales_Reward[3301914]["DeleteItem"]= {}
	tJanuarySales_Reward[3301914]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301914]["DeleteItem"][1]["Id"]= 3301914
	tJanuarySales_Reward[3301914]["RewardItem"]= {}
	tJanuarySales_Reward[3301914]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301914]["RewardItem"][1]["Id"]= 117069
	tJanuarySales_Reward[3301914]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tJanuarySales_Reward[3301914]["LogId"]= 12000580
	tJanuarySales_Reward[3301915] = {}
	tJanuarySales_Reward[3301915]["DeleteItem"]= {}
	tJanuarySales_Reward[3301915]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301915]["DeleteItem"][1]["Id"]= 3301915
	tJanuarySales_Reward[3301915]["RewardItem"]= {}
	tJanuarySales_Reward[3301915]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301915]["RewardItem"][1]["Id"]= 121129
	tJanuarySales_Reward[3301915]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tJanuarySales_Reward[3301915]["LogId"]= 12000580
	tJanuarySales_Reward[3301916] = {}
	tJanuarySales_Reward[3301916]["DeleteItem"]= {}
	tJanuarySales_Reward[3301916]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301916]["DeleteItem"][1]["Id"]= 3301916
	tJanuarySales_Reward[3301916]["RewardItem"]= {}
	tJanuarySales_Reward[3301916]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301916]["RewardItem"][1]["Id"]= 152129
	tJanuarySales_Reward[3301916]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tJanuarySales_Reward[3301916]["LogId"]= 12000580
	tJanuarySales_Reward[3301917] = {}
	tJanuarySales_Reward[3301917]["DeleteItem"]= {}
	tJanuarySales_Reward[3301917]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301917]["DeleteItem"][1]["Id"]= 3301917
	tJanuarySales_Reward[3301917]["RewardItem"]= {}
	tJanuarySales_Reward[3301917]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301917]["RewardItem"][1]["Id"]= 202009
	tJanuarySales_Reward[3301917]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 1 0 0 4 255"
	tJanuarySales_Reward[3301917]["LogId"]= 12000580
	tJanuarySales_Reward[3301918] = {}
	tJanuarySales_Reward[3301918]["DeleteItem"]= {}
	tJanuarySales_Reward[3301918]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301918]["DeleteItem"][1]["Id"]= 3301918
	tJanuarySales_Reward[3301918]["RewardItem"]= {}
	tJanuarySales_Reward[3301918]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301918]["RewardItem"][1]["Id"]= 201009
	tJanuarySales_Reward[3301918]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 1 0 0 4 255"
	tJanuarySales_Reward[3301918]["LogId"]= 12000580
	tJanuarySales_Reward[3301919] = {}
	tJanuarySales_Reward[3301919]["DeleteItem"]= {}
	tJanuarySales_Reward[3301919]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301919]["DeleteItem"][1]["Id"]= 3301919
	tJanuarySales_Reward[3301919]["RewardItem"]= {}
	tJanuarySales_Reward[3301919]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301919]["RewardItem"][1]["Id"]= 203009
	tJanuarySales_Reward[3301919]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 1 0 0 4"
	tJanuarySales_Reward[3301919]["LogId"]= 12000580
	tJanuarySales_Reward[3301920] = {}
	tJanuarySales_Reward[3301920]["DeleteItem"]= {}
	tJanuarySales_Reward[3301920]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301920]["DeleteItem"][1]["Id"]= 3301920
	tJanuarySales_Reward[3301920]["RewardItem"]= {}
	tJanuarySales_Reward[3301920]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301920]["RewardItem"][1]["Id"]= 204009
	tJanuarySales_Reward[3301920]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 0 0 0 4"
	tJanuarySales_Reward[3301920]["LogId"]= 12000580
	tJanuarySales_Reward[3301921] = {}
	tJanuarySales_Reward[3301921]["DeleteItem"]= {}
	tJanuarySales_Reward[3301921]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301921]["DeleteItem"][1]["Id"]= 3301921
	tJanuarySales_Reward[3301921]["RewardItem"]= {}
	tJanuarySales_Reward[3301921]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301921]["RewardItem"][1]["Id"]= 410139
	tJanuarySales_Reward[3301921]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255 200"
	tJanuarySales_Reward[3301921]["LogId"]= 12000580
	tJanuarySales_Reward[3301922] = {}
	tJanuarySales_Reward[3301922]["DeleteItem"]= {}
	tJanuarySales_Reward[3301922]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301922]["DeleteItem"][1]["Id"]= 3301922
	tJanuarySales_Reward[3301922]["RewardItem"]= {}
	tJanuarySales_Reward[3301922]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301922]["RewardItem"][1]["Id"]= 613129
	tJanuarySales_Reward[3301922]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255"
	tJanuarySales_Reward[3301922]["LogId"]= 12000580
	tJanuarySales_Reward[3301923] = {}
	tJanuarySales_Reward[3301923]["DeleteItem"]= {}
	tJanuarySales_Reward[3301923]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301923]["DeleteItem"][1]["Id"]= 3301923
	tJanuarySales_Reward[3301923]["RewardItem"]= {}
	tJanuarySales_Reward[3301923]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301923]["RewardItem"][1]["Id"]= 511139
	tJanuarySales_Reward[3301923]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255"
	tJanuarySales_Reward[3301923]["LogId"]= 12000580
	tJanuarySales_Reward[3301924] = {}
	tJanuarySales_Reward[3301924]["DeleteItem"]= {}
	tJanuarySales_Reward[3301924]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301924]["DeleteItem"][1]["Id"]= 3301924
	tJanuarySales_Reward[3301924]["RewardItem"]= {}
	tJanuarySales_Reward[3301924]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301924]["RewardItem"][1]["Id"]= 610139
	tJanuarySales_Reward[3301924]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255"
	tJanuarySales_Reward[3301924]["LogId"]= 12000580
	tJanuarySales_Reward[3301925] = {}
	tJanuarySales_Reward[3301925]["DeleteItem"]= {}
	tJanuarySales_Reward[3301925]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301925]["DeleteItem"][1]["Id"]= 3301925
	tJanuarySales_Reward[3301925]["RewardItem"]= {}
	tJanuarySales_Reward[3301925]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301925]["RewardItem"][1]["Id"]= 410139
	tJanuarySales_Reward[3301925]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255"
	tJanuarySales_Reward[3301925]["LogId"]= 12000580
	tJanuarySales_Reward[3301926] = {}
	tJanuarySales_Reward[3301926]["DeleteItem"]= {}
	tJanuarySales_Reward[3301926]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301926]["DeleteItem"][1]["Id"]= 3301926
	tJanuarySales_Reward[3301926]["RewardItem"]= {}
	tJanuarySales_Reward[3301926]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301926]["RewardItem"][1]["Id"]= 420139
	tJanuarySales_Reward[3301926]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255"
	tJanuarySales_Reward[3301926]["LogId"]= 12000580
	tJanuarySales_Reward[3301927] = {}
	tJanuarySales_Reward[3301927]["DeleteItem"]= {}
	tJanuarySales_Reward[3301927]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301927]["DeleteItem"][1]["Id"]= 3301927
	tJanuarySales_Reward[3301927]["RewardItem"]= {}
	tJanuarySales_Reward[3301927]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301927]["RewardItem"][1]["Id"]= 480139
	tJanuarySales_Reward[3301927]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255"
	tJanuarySales_Reward[3301927]["LogId"]= 12000580
	tJanuarySales_Reward[3301928] = {}
	tJanuarySales_Reward[3301928]["DeleteItem"]= {}
	tJanuarySales_Reward[3301928]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301928]["DeleteItem"][1]["Id"]= 3301928
	tJanuarySales_Reward[3301928]["RewardItem"]= {}
	tJanuarySales_Reward[3301928]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301928]["RewardItem"][1]["Id"]= 421139
	tJanuarySales_Reward[3301928]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255"
	tJanuarySales_Reward[3301928]["LogId"]= 12000580
	tJanuarySales_Reward[3301929] = {}
	tJanuarySales_Reward[3301929]["DeleteItem"]= {}
	tJanuarySales_Reward[3301929]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301929]["DeleteItem"][1]["Id"]= 3301929
	tJanuarySales_Reward[3301929]["RewardItem"]= {}
	tJanuarySales_Reward[3301929]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301929]["RewardItem"][1]["Id"]= 500129
	tJanuarySales_Reward[3301929]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255"
	tJanuarySales_Reward[3301929]["LogId"]= 12000580
	tJanuarySales_Reward[3301930] = {}
	tJanuarySales_Reward[3301930]["DeleteItem"]= {}
	tJanuarySales_Reward[3301930]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301930]["DeleteItem"][1]["Id"]= 3301930
	tJanuarySales_Reward[3301930]["RewardItem"]= {}
	tJanuarySales_Reward[3301930]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301930]["RewardItem"][1]["Id"]= 561139
	tJanuarySales_Reward[3301930]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255"
	tJanuarySales_Reward[3301930]["LogId"]= 12000580
	tJanuarySales_Reward[3301931] = {}
	tJanuarySales_Reward[3301931]["DeleteItem"]= {}
	tJanuarySales_Reward[3301931]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301931]["DeleteItem"][1]["Id"]= 3301931
	tJanuarySales_Reward[3301931]["RewardItem"]= {}
	tJanuarySales_Reward[3301931]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301931]["RewardItem"][1]["Id"]= 560139
	tJanuarySales_Reward[3301931]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255"
	tJanuarySales_Reward[3301931]["LogId"]= 12000580
	tJanuarySales_Reward[3301932] = {}
	tJanuarySales_Reward[3301932]["DeleteItem"]= {}
	tJanuarySales_Reward[3301932]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301932]["DeleteItem"][1]["Id"]= 3301932
	tJanuarySales_Reward[3301932]["RewardItem"]= {}
	tJanuarySales_Reward[3301932]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301932]["RewardItem"][1]["Id"]= 900049
	tJanuarySales_Reward[3301932]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255"
	tJanuarySales_Reward[3301932]["LogId"]= 12000580
	tJanuarySales_Reward[3301933] = {}
	tJanuarySales_Reward[3301933]["DeleteItem"]= {}
	tJanuarySales_Reward[3301933]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301933]["DeleteItem"][1]["Id"]= 3301933
	tJanuarySales_Reward[3301933]["RewardItem"]= {}
	tJanuarySales_Reward[3301933]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301933]["RewardItem"][1]["Id"]= 601139
	tJanuarySales_Reward[3301933]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255"
	tJanuarySales_Reward[3301933]["LogId"]= 12000580
	tJanuarySales_Reward[3301934] = {}
	tJanuarySales_Reward[3301934]["DeleteItem"]= {}
	tJanuarySales_Reward[3301934]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301934]["DeleteItem"][1]["Id"]= 3301934
	tJanuarySales_Reward[3301934]["RewardItem"]= {}
	tJanuarySales_Reward[3301934]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301934]["RewardItem"][1]["Id"]= 611139
	tJanuarySales_Reward[3301934]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255"
	tJanuarySales_Reward[3301934]["LogId"]= 12000580
	tJanuarySales_Reward[3301935] = {}
	tJanuarySales_Reward[3301935]["DeleteItem"]= {}
	tJanuarySales_Reward[3301935]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301935]["DeleteItem"][1]["Id"]= 3301935
	tJanuarySales_Reward[3301935]["RewardItem"]= {}
	tJanuarySales_Reward[3301935]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301935]["RewardItem"][1]["Id"]= 612139
	tJanuarySales_Reward[3301935]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255"
	tJanuarySales_Reward[3301935]["LogId"]= 12000580
	tJanuarySales_Reward[3301936] = {}
	tJanuarySales_Reward[3301936]["DeleteItem"]= {}
	tJanuarySales_Reward[3301936]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301936]["DeleteItem"][1]["Id"]= 3301936
	tJanuarySales_Reward[3301936]["RewardItem"]= {}
	tJanuarySales_Reward[3301936]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301936]["RewardItem"][1]["Id"]= 130069
	tJanuarySales_Reward[3301936]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tJanuarySales_Reward[3301936]["LogId"]= 12000580
	tJanuarySales_Reward[3301937] = {}
	tJanuarySales_Reward[3301937]["DeleteItem"]= {}
	tJanuarySales_Reward[3301937]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301937]["DeleteItem"][1]["Id"]= 3301937
	tJanuarySales_Reward[3301937]["RewardItem"]= {}
	tJanuarySales_Reward[3301937]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301937]["RewardItem"][1]["Id"]= 134069
	tJanuarySales_Reward[3301937]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tJanuarySales_Reward[3301937]["LogId"]= 12000580
	tJanuarySales_Reward[3301938] = {}
	tJanuarySales_Reward[3301938]["DeleteItem"]= {}
	tJanuarySales_Reward[3301938]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301938]["DeleteItem"][1]["Id"]= 3301938
	tJanuarySales_Reward[3301938]["RewardItem"]= {}
	tJanuarySales_Reward[3301938]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301938]["RewardItem"][1]["Id"]= 136069
	tJanuarySales_Reward[3301938]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tJanuarySales_Reward[3301938]["LogId"]= 12000580
	tJanuarySales_Reward[3301939] = {}
	tJanuarySales_Reward[3301939]["DeleteItem"]= {}
	tJanuarySales_Reward[3301939]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301939]["DeleteItem"][1]["Id"]= 3301939
	tJanuarySales_Reward[3301939]["RewardItem"]= {}
	tJanuarySales_Reward[3301939]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301939]["RewardItem"][1]["Id"]= 139069
	tJanuarySales_Reward[3301939]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tJanuarySales_Reward[3301939]["LogId"]= 12000580
	tJanuarySales_Reward[3301940] = {}
	tJanuarySales_Reward[3301940]["DeleteItem"]= {}
	tJanuarySales_Reward[3301940]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301940]["DeleteItem"][1]["Id"]= 3301940
	tJanuarySales_Reward[3301940]["RewardItem"]= {}
	tJanuarySales_Reward[3301940]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301940]["RewardItem"][1]["Id"]= 135069
	tJanuarySales_Reward[3301940]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tJanuarySales_Reward[3301940]["LogId"]= 12000580
	tJanuarySales_Reward[3301941] = {}
	tJanuarySales_Reward[3301941]["DeleteItem"]= {}
	tJanuarySales_Reward[3301941]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301941]["DeleteItem"][1]["Id"]= 3301941
	tJanuarySales_Reward[3301941]["RewardItem"]= {}
	tJanuarySales_Reward[3301941]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301941]["RewardItem"][1]["Id"]= 133049
	tJanuarySales_Reward[3301941]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tJanuarySales_Reward[3301941]["LogId"]= 12000580
	tJanuarySales_Reward[3301942] = {}
	tJanuarySales_Reward[3301942]["DeleteItem"]= {}
	tJanuarySales_Reward[3301942]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301942]["DeleteItem"][1]["Id"]= 3301942
	tJanuarySales_Reward[3301942]["RewardItem"]= {}
	tJanuarySales_Reward[3301942]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301942]["RewardItem"][1]["Id"]= 131069
	tJanuarySales_Reward[3301942]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tJanuarySales_Reward[3301942]["LogId"]= 12000580
	tJanuarySales_Reward[3301943] = {}
	tJanuarySales_Reward[3301943]["DeleteItem"]= {}
	tJanuarySales_Reward[3301943]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301943]["DeleteItem"][1]["Id"]= 3301943
	tJanuarySales_Reward[3301943]["RewardItem"]= {}
	tJanuarySales_Reward[3301943]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301943]["RewardItem"][1]["Id"]= 118069
	tJanuarySales_Reward[3301943]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tJanuarySales_Reward[3301943]["LogId"]= 12000580
	tJanuarySales_Reward[3301944] = {}
	tJanuarySales_Reward[3301944]["DeleteItem"]= {}
	tJanuarySales_Reward[3301944]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301944]["DeleteItem"][1]["Id"]= 3301944
	tJanuarySales_Reward[3301944]["RewardItem"]= {}
	tJanuarySales_Reward[3301944]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301944]["RewardItem"][1]["Id"]= 114069
	tJanuarySales_Reward[3301944]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tJanuarySales_Reward[3301944]["LogId"]= 12000580
	tJanuarySales_Reward[3301945] = {}
	tJanuarySales_Reward[3301945]["DeleteItem"]= {}
	tJanuarySales_Reward[3301945]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301945]["DeleteItem"][1]["Id"]= 3301945
	tJanuarySales_Reward[3301945]["RewardItem"]= {}
	tJanuarySales_Reward[3301945]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301945]["RewardItem"][1]["Id"]= 123069
	tJanuarySales_Reward[3301945]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tJanuarySales_Reward[3301945]["LogId"]= 12000580
	tJanuarySales_Reward[3301946] = {}
	tJanuarySales_Reward[3301946]["DeleteItem"]= {}
	tJanuarySales_Reward[3301946]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301946]["DeleteItem"][1]["Id"]= 3301946
	tJanuarySales_Reward[3301946]["RewardItem"]= {}
	tJanuarySales_Reward[3301946]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301946]["RewardItem"][1]["Id"]= 143069
	tJanuarySales_Reward[3301946]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tJanuarySales_Reward[3301946]["LogId"]= 12000580
	tJanuarySales_Reward[3301947] = {}
	tJanuarySales_Reward[3301947]["DeleteItem"]= {}
	tJanuarySales_Reward[3301947]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301947]["DeleteItem"][1]["Id"]= 3301947
	tJanuarySales_Reward[3301947]["RewardItem"]= {}
	tJanuarySales_Reward[3301947]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301947]["RewardItem"][1]["Id"]= 145069
	tJanuarySales_Reward[3301947]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tJanuarySales_Reward[3301947]["LogId"]= 12000580
	tJanuarySales_Reward[3301948] = {}
	tJanuarySales_Reward[3301948]["DeleteItem"]= {}
	tJanuarySales_Reward[3301948]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301948]["DeleteItem"][1]["Id"]= 3301948
	tJanuarySales_Reward[3301948]["RewardItem"]= {}
	tJanuarySales_Reward[3301948]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301948]["RewardItem"][1]["Id"]= 142039
	tJanuarySales_Reward[3301948]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tJanuarySales_Reward[3301948]["LogId"]= 12000580
	tJanuarySales_Reward[3301949] = {}
	tJanuarySales_Reward[3301949]["DeleteItem"]= {}
	tJanuarySales_Reward[3301949]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301949]["DeleteItem"][1]["Id"]= 3301949
	tJanuarySales_Reward[3301949]["RewardItem"]= {}
	tJanuarySales_Reward[3301949]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301949]["RewardItem"][1]["Id"]= 111069
	tJanuarySales_Reward[3301949]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tJanuarySales_Reward[3301949]["LogId"]= 12000580
	tJanuarySales_Reward[3301950] = {}
	tJanuarySales_Reward[3301950]["DeleteItem"]= {}
	tJanuarySales_Reward[3301950]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301950]["DeleteItem"][1]["Id"]= 3301950
	tJanuarySales_Reward[3301950]["RewardItem"]= {}
	tJanuarySales_Reward[3301950]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301950]["RewardItem"][1]["Id"]= 138069
	tJanuarySales_Reward[3301950]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tJanuarySales_Reward[3301950]["LogId"]= 12000580
	tJanuarySales_Reward[3301951] = {}
	tJanuarySales_Reward[3301951]["DeleteItem"]= {}
	tJanuarySales_Reward[3301951]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301951]["DeleteItem"][1]["Id"]= 3301951
	tJanuarySales_Reward[3301951]["RewardItem"]= {}
	tJanuarySales_Reward[3301951]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301951]["RewardItem"][1]["Id"]= 148069
	tJanuarySales_Reward[3301951]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tJanuarySales_Reward[3301951]["LogId"]= 12000580
	tJanuarySales_Reward[3301952] = {}
	tJanuarySales_Reward[3301952]["DeleteItem"]= {}
	tJanuarySales_Reward[3301952]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301952]["DeleteItem"][1]["Id"]= 3301952
	tJanuarySales_Reward[3301952]["RewardItem"]= {}
	tJanuarySales_Reward[3301952]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301952]["RewardItem"][1]["Id"]= 617139
	tJanuarySales_Reward[3301952]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tJanuarySales_Reward[3301952]["LogId"]= 12000580
	tJanuarySales_Reward[3301953] = {}
	tJanuarySales_Reward[3301953]["DeleteItem"]= {}
	tJanuarySales_Reward[3301953]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301953]["DeleteItem"][1]["Id"]= 3301953
	tJanuarySales_Reward[3301953]["RewardItem"]= {}
	tJanuarySales_Reward[3301953]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301953]["RewardItem"][1]["Id"]= 150139
	tJanuarySales_Reward[3301953]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3301953]["LogId"]= 12000580
	tJanuarySales_Reward[3301954] = {}
	tJanuarySales_Reward[3301954]["DeleteItem"]= {}
	tJanuarySales_Reward[3301954]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301954]["DeleteItem"][1]["Id"]= 3301954
	tJanuarySales_Reward[3301954]["RewardItem"]= {}
	tJanuarySales_Reward[3301954]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301954]["RewardItem"][1]["Id"]= 120129
	tJanuarySales_Reward[3301954]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3301954]["LogId"]= 12000580
	tJanuarySales_Reward[3301955] = {}
	tJanuarySales_Reward[3301955]["DeleteItem"]= {}
	tJanuarySales_Reward[3301955]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301955]["DeleteItem"][1]["Id"]= 3301955
	tJanuarySales_Reward[3301955]["RewardItem"]= {}
	tJanuarySales_Reward[3301955]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301955]["RewardItem"][1]["Id"]= 160139
	tJanuarySales_Reward[3301955]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3301955]["LogId"]= 12000580
	tJanuarySales_Reward[3301956] = {}
	tJanuarySales_Reward[3301956]["DeleteItem"]= {}
	tJanuarySales_Reward[3301956]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301956]["DeleteItem"][1]["Id"]= 3301956
	tJanuarySales_Reward[3301956]["RewardItem"]= {}
	tJanuarySales_Reward[3301956]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301956]["RewardItem"][1]["Id"]= 117069
	tJanuarySales_Reward[3301956]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3301956]["LogId"]= 12000580
	tJanuarySales_Reward[3301957] = {}
	tJanuarySales_Reward[3301957]["DeleteItem"]= {}
	tJanuarySales_Reward[3301957]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301957]["DeleteItem"][1]["Id"]= 3301957
	tJanuarySales_Reward[3301957]["RewardItem"]= {}
	tJanuarySales_Reward[3301957]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301957]["RewardItem"][1]["Id"]= 121129
	tJanuarySales_Reward[3301957]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3301957]["LogId"]= 12000580
	tJanuarySales_Reward[3301958] = {}
	tJanuarySales_Reward[3301958]["DeleteItem"]= {}
	tJanuarySales_Reward[3301958]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301958]["DeleteItem"][1]["Id"]= 3301958
	tJanuarySales_Reward[3301958]["RewardItem"]= {}
	tJanuarySales_Reward[3301958]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301958]["RewardItem"][1]["Id"]= 152129
	tJanuarySales_Reward[3301958]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3301958]["LogId"]= 12000580
	tJanuarySales_Reward[3301975] = {}
	tJanuarySales_Reward[3301975]["DeleteItem"]= {}
	tJanuarySales_Reward[3301975]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301975]["DeleteItem"][1]["Id"]= 3301975
	tJanuarySales_Reward[3301975]["RewardItem"]= {}
	tJanuarySales_Reward[3301975]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301975]["RewardItem"][1]["Id"]= 202009
	tJanuarySales_Reward[3301975]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 1 0 0 6 255 255"
	tJanuarySales_Reward[3301975]["LogId"]= 12000580
	tJanuarySales_Reward[3301976] = {}
	tJanuarySales_Reward[3301976]["DeleteItem"]= {}
	tJanuarySales_Reward[3301976]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301976]["DeleteItem"][1]["Id"]= 3301976
	tJanuarySales_Reward[3301976]["RewardItem"]= {}
	tJanuarySales_Reward[3301976]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301976]["RewardItem"][1]["Id"]= 201009
	tJanuarySales_Reward[3301976]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 1 0 0 6 255 255"
	tJanuarySales_Reward[3301976]["LogId"]= 12000580
	tJanuarySales_Reward[3301977] = {}
	tJanuarySales_Reward[3301977]["DeleteItem"]= {}
	tJanuarySales_Reward[3301977]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301977]["DeleteItem"][1]["Id"]= 3301977
	tJanuarySales_Reward[3301977]["RewardItem"]= {}
	tJanuarySales_Reward[3301977]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301977]["RewardItem"][1]["Id"]= 203009
	tJanuarySales_Reward[3301977]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 1 0 0 6"
	tJanuarySales_Reward[3301977]["LogId"]= 12000580
	tJanuarySales_Reward[3301978] = {}
	tJanuarySales_Reward[3301978]["DeleteItem"]= {}
	tJanuarySales_Reward[3301978]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301978]["DeleteItem"][1]["Id"]= 3301978
	tJanuarySales_Reward[3301978]["RewardItem"]= {}
	tJanuarySales_Reward[3301978]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301978]["RewardItem"][1]["Id"]= 204009
	tJanuarySales_Reward[3301978]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 0 0 0 6"
	tJanuarySales_Reward[3301978]["LogId"]= 12000580
	tJanuarySales_Reward[3301979] = {}
	tJanuarySales_Reward[3301979]["DeleteItem"]= {}
	tJanuarySales_Reward[3301979]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301979]["DeleteItem"][1]["Id"]= 3301979
	tJanuarySales_Reward[3301979]["RewardItem"]= {}
	tJanuarySales_Reward[3301979]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301979]["RewardItem"][1]["Id"]= 410139
	tJanuarySales_Reward[3301979]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255 200"
	tJanuarySales_Reward[3301979]["LogId"]= 12000580
	tJanuarySales_Reward[3301980] = {}
	tJanuarySales_Reward[3301980]["DeleteItem"]= {}
	tJanuarySales_Reward[3301980]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301980]["DeleteItem"][1]["Id"]= 3301980
	tJanuarySales_Reward[3301980]["RewardItem"]= {}
	tJanuarySales_Reward[3301980]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301980]["RewardItem"][1]["Id"]= 613129
	tJanuarySales_Reward[3301980]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3301980]["LogId"]= 12000580
	tJanuarySales_Reward[3301981] = {}
	tJanuarySales_Reward[3301981]["DeleteItem"]= {}
	tJanuarySales_Reward[3301981]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301981]["DeleteItem"][1]["Id"]= 3301981
	tJanuarySales_Reward[3301981]["RewardItem"]= {}
	tJanuarySales_Reward[3301981]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301981]["RewardItem"][1]["Id"]= 511139
	tJanuarySales_Reward[3301981]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3301981]["LogId"]= 12000580
	tJanuarySales_Reward[3301982] = {}
	tJanuarySales_Reward[3301982]["DeleteItem"]= {}
	tJanuarySales_Reward[3301982]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301982]["DeleteItem"][1]["Id"]= 3301982
	tJanuarySales_Reward[3301982]["RewardItem"]= {}
	tJanuarySales_Reward[3301982]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301982]["RewardItem"][1]["Id"]= 610139
	tJanuarySales_Reward[3301982]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3301982]["LogId"]= 12000580
	tJanuarySales_Reward[3301983] = {}
	tJanuarySales_Reward[3301983]["DeleteItem"]= {}
	tJanuarySales_Reward[3301983]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301983]["DeleteItem"][1]["Id"]= 3301983
	tJanuarySales_Reward[3301983]["RewardItem"]= {}
	tJanuarySales_Reward[3301983]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301983]["RewardItem"][1]["Id"]= 410139
	tJanuarySales_Reward[3301983]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3301983]["LogId"]= 12000580
	tJanuarySales_Reward[3301984] = {}
	tJanuarySales_Reward[3301984]["DeleteItem"]= {}
	tJanuarySales_Reward[3301984]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301984]["DeleteItem"][1]["Id"]= 3301984
	tJanuarySales_Reward[3301984]["RewardItem"]= {}
	tJanuarySales_Reward[3301984]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301984]["RewardItem"][1]["Id"]= 420139
	tJanuarySales_Reward[3301984]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3301984]["LogId"]= 12000580
	tJanuarySales_Reward[3301985] = {}
	tJanuarySales_Reward[3301985]["DeleteItem"]= {}
	tJanuarySales_Reward[3301985]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301985]["DeleteItem"][1]["Id"]= 3301985
	tJanuarySales_Reward[3301985]["RewardItem"]= {}
	tJanuarySales_Reward[3301985]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301985]["RewardItem"][1]["Id"]= 480139
	tJanuarySales_Reward[3301985]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3301985]["LogId"]= 12000580
	tJanuarySales_Reward[3301986] = {}
	tJanuarySales_Reward[3301986]["DeleteItem"]= {}
	tJanuarySales_Reward[3301986]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301986]["DeleteItem"][1]["Id"]= 3301986
	tJanuarySales_Reward[3301986]["RewardItem"]= {}
	tJanuarySales_Reward[3301986]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301986]["RewardItem"][1]["Id"]= 421139
	tJanuarySales_Reward[3301986]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3301986]["LogId"]= 12000580
	tJanuarySales_Reward[3301987] = {}
	tJanuarySales_Reward[3301987]["DeleteItem"]= {}
	tJanuarySales_Reward[3301987]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301987]["DeleteItem"][1]["Id"]= 3301987
	tJanuarySales_Reward[3301987]["RewardItem"]= {}
	tJanuarySales_Reward[3301987]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301987]["RewardItem"][1]["Id"]= 500129
	tJanuarySales_Reward[3301987]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3301987]["LogId"]= 12000580
	tJanuarySales_Reward[3301988] = {}
	tJanuarySales_Reward[3301988]["DeleteItem"]= {}
	tJanuarySales_Reward[3301988]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301988]["DeleteItem"][1]["Id"]= 3301988
	tJanuarySales_Reward[3301988]["RewardItem"]= {}
	tJanuarySales_Reward[3301988]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301988]["RewardItem"][1]["Id"]= 561139
	tJanuarySales_Reward[3301988]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3301988]["LogId"]= 12000580
	tJanuarySales_Reward[3301989] = {}
	tJanuarySales_Reward[3301989]["DeleteItem"]= {}
	tJanuarySales_Reward[3301989]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301989]["DeleteItem"][1]["Id"]= 3301989
	tJanuarySales_Reward[3301989]["RewardItem"]= {}
	tJanuarySales_Reward[3301989]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301989]["RewardItem"][1]["Id"]= 560139
	tJanuarySales_Reward[3301989]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3301989]["LogId"]= 12000580
	tJanuarySales_Reward[3301990] = {}
	tJanuarySales_Reward[3301990]["DeleteItem"]= {}
	tJanuarySales_Reward[3301990]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301990]["DeleteItem"][1]["Id"]= 3301990
	tJanuarySales_Reward[3301990]["RewardItem"]= {}
	tJanuarySales_Reward[3301990]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301990]["RewardItem"][1]["Id"]= 900049
	tJanuarySales_Reward[3301990]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3301990]["LogId"]= 12000580
	tJanuarySales_Reward[3301991] = {}
	tJanuarySales_Reward[3301991]["DeleteItem"]= {}
	tJanuarySales_Reward[3301991]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301991]["DeleteItem"][1]["Id"]= 3301991
	tJanuarySales_Reward[3301991]["RewardItem"]= {}
	tJanuarySales_Reward[3301991]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301991]["RewardItem"][1]["Id"]= 601139
	tJanuarySales_Reward[3301991]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3301991]["LogId"]= 12000580
	tJanuarySales_Reward[3301992] = {}
	tJanuarySales_Reward[3301992]["DeleteItem"]= {}
	tJanuarySales_Reward[3301992]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301992]["DeleteItem"][1]["Id"]= 3301992
	tJanuarySales_Reward[3301992]["RewardItem"]= {}
	tJanuarySales_Reward[3301992]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301992]["RewardItem"][1]["Id"]= 611139
	tJanuarySales_Reward[3301992]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3301992]["LogId"]= 12000580
	tJanuarySales_Reward[3301993] = {}
	tJanuarySales_Reward[3301993]["DeleteItem"]= {}
	tJanuarySales_Reward[3301993]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301993]["DeleteItem"][1]["Id"]= 3301993
	tJanuarySales_Reward[3301993]["RewardItem"]= {}
	tJanuarySales_Reward[3301993]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301993]["RewardItem"][1]["Id"]= 612139
	tJanuarySales_Reward[3301993]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3301993]["LogId"]= 12000580
	tJanuarySales_Reward[3301994] = {}
	tJanuarySales_Reward[3301994]["DeleteItem"]= {}
	tJanuarySales_Reward[3301994]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301994]["DeleteItem"][1]["Id"]= 3301994
	tJanuarySales_Reward[3301994]["RewardItem"]= {}
	tJanuarySales_Reward[3301994]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301994]["RewardItem"][1]["Id"]= 130069
	tJanuarySales_Reward[3301994]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3301994]["LogId"]= 12000580
	tJanuarySales_Reward[3301995] = {}
	tJanuarySales_Reward[3301995]["DeleteItem"]= {}
	tJanuarySales_Reward[3301995]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301995]["DeleteItem"][1]["Id"]= 3301995
	tJanuarySales_Reward[3301995]["RewardItem"]= {}
	tJanuarySales_Reward[3301995]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301995]["RewardItem"][1]["Id"]= 134069
	tJanuarySales_Reward[3301995]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3301995]["LogId"]= 12000580
	tJanuarySales_Reward[3301996] = {}
	tJanuarySales_Reward[3301996]["DeleteItem"]= {}
	tJanuarySales_Reward[3301996]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301996]["DeleteItem"][1]["Id"]= 3301996
	tJanuarySales_Reward[3301996]["RewardItem"]= {}
	tJanuarySales_Reward[3301996]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301996]["RewardItem"][1]["Id"]= 136069
	tJanuarySales_Reward[3301996]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3301996]["LogId"]= 12000580
	tJanuarySales_Reward[3301997] = {}
	tJanuarySales_Reward[3301997]["DeleteItem"]= {}
	tJanuarySales_Reward[3301997]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301997]["DeleteItem"][1]["Id"]= 3301997
	tJanuarySales_Reward[3301997]["RewardItem"]= {}
	tJanuarySales_Reward[3301997]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301997]["RewardItem"][1]["Id"]= 139069
	tJanuarySales_Reward[3301997]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3301997]["LogId"]= 12000580
	tJanuarySales_Reward[3301998] = {}
	tJanuarySales_Reward[3301998]["DeleteItem"]= {}
	tJanuarySales_Reward[3301998]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301998]["DeleteItem"][1]["Id"]= 3301998
	tJanuarySales_Reward[3301998]["RewardItem"]= {}
	tJanuarySales_Reward[3301998]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301998]["RewardItem"][1]["Id"]= 135069
	tJanuarySales_Reward[3301998]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3301998]["LogId"]= 12000580
	tJanuarySales_Reward[3301999] = {}
	tJanuarySales_Reward[3301999]["DeleteItem"]= {}
	tJanuarySales_Reward[3301999]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3301999]["DeleteItem"][1]["Id"]= 3301999
	tJanuarySales_Reward[3301999]["RewardItem"]= {}
	tJanuarySales_Reward[3301999]["RewardItem"][1]= {}
	tJanuarySales_Reward[3301999]["RewardItem"][1]["Id"]= 133049
	tJanuarySales_Reward[3301999]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3301999]["LogId"]= 12000580
	tJanuarySales_Reward[3302000] = {}
	tJanuarySales_Reward[3302000]["DeleteItem"]= {}
	tJanuarySales_Reward[3302000]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3302000]["DeleteItem"][1]["Id"]= 3302000
	tJanuarySales_Reward[3302000]["RewardItem"]= {}
	tJanuarySales_Reward[3302000]["RewardItem"][1]= {}
	tJanuarySales_Reward[3302000]["RewardItem"][1]["Id"]= 131069
	tJanuarySales_Reward[3302000]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3302000]["LogId"]= 12000580
	tJanuarySales_Reward[3302001] = {}
	tJanuarySales_Reward[3302001]["DeleteItem"]= {}
	tJanuarySales_Reward[3302001]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3302001]["DeleteItem"][1]["Id"]= 3302001
	tJanuarySales_Reward[3302001]["RewardItem"]= {}
	tJanuarySales_Reward[3302001]["RewardItem"][1]= {}
	tJanuarySales_Reward[3302001]["RewardItem"][1]["Id"]= 118069
	tJanuarySales_Reward[3302001]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3302001]["LogId"]= 12000580
	tJanuarySales_Reward[3302002] = {}
	tJanuarySales_Reward[3302002]["DeleteItem"]= {}
	tJanuarySales_Reward[3302002]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3302002]["DeleteItem"][1]["Id"]= 3302002
	tJanuarySales_Reward[3302002]["RewardItem"]= {}
	tJanuarySales_Reward[3302002]["RewardItem"][1]= {}
	tJanuarySales_Reward[3302002]["RewardItem"][1]["Id"]= 114069
	tJanuarySales_Reward[3302002]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3302002]["LogId"]= 12000580
	tJanuarySales_Reward[3302003] = {}
	tJanuarySales_Reward[3302003]["DeleteItem"]= {}
	tJanuarySales_Reward[3302003]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3302003]["DeleteItem"][1]["Id"]= 3302003
	tJanuarySales_Reward[3302003]["RewardItem"]= {}
	tJanuarySales_Reward[3302003]["RewardItem"][1]= {}
	tJanuarySales_Reward[3302003]["RewardItem"][1]["Id"]= 123069
	tJanuarySales_Reward[3302003]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3302003]["LogId"]= 12000580
	tJanuarySales_Reward[3302004] = {}
	tJanuarySales_Reward[3302004]["DeleteItem"]= {}
	tJanuarySales_Reward[3302004]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3302004]["DeleteItem"][1]["Id"]= 3302004
	tJanuarySales_Reward[3302004]["RewardItem"]= {}
	tJanuarySales_Reward[3302004]["RewardItem"][1]= {}
	tJanuarySales_Reward[3302004]["RewardItem"][1]["Id"]= 143069
	tJanuarySales_Reward[3302004]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3302004]["LogId"]= 12000580
	tJanuarySales_Reward[3302005] = {}
	tJanuarySales_Reward[3302005]["DeleteItem"]= {}
	tJanuarySales_Reward[3302005]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3302005]["DeleteItem"][1]["Id"]= 3302005
	tJanuarySales_Reward[3302005]["RewardItem"]= {}
	tJanuarySales_Reward[3302005]["RewardItem"][1]= {}
	tJanuarySales_Reward[3302005]["RewardItem"][1]["Id"]= 145069
	tJanuarySales_Reward[3302005]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3302005]["LogId"]= 12000580
	tJanuarySales_Reward[3302006] = {}
	tJanuarySales_Reward[3302006]["DeleteItem"]= {}
	tJanuarySales_Reward[3302006]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3302006]["DeleteItem"][1]["Id"]= 3302006
	tJanuarySales_Reward[3302006]["RewardItem"]= {}
	tJanuarySales_Reward[3302006]["RewardItem"][1]= {}
	tJanuarySales_Reward[3302006]["RewardItem"][1]["Id"]= 142039
	tJanuarySales_Reward[3302006]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3302006]["LogId"]= 12000580
	tJanuarySales_Reward[3302007] = {}
	tJanuarySales_Reward[3302007]["DeleteItem"]= {}
	tJanuarySales_Reward[3302007]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3302007]["DeleteItem"][1]["Id"]= 3302007
	tJanuarySales_Reward[3302007]["RewardItem"]= {}
	tJanuarySales_Reward[3302007]["RewardItem"][1]= {}
	tJanuarySales_Reward[3302007]["RewardItem"][1]["Id"]= 111069
	tJanuarySales_Reward[3302007]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3302007]["LogId"]= 12000580
	tJanuarySales_Reward[3302008] = {}
	tJanuarySales_Reward[3302008]["DeleteItem"]= {}
	tJanuarySales_Reward[3302008]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3302008]["DeleteItem"][1]["Id"]= 3302008
	tJanuarySales_Reward[3302008]["RewardItem"]= {}
	tJanuarySales_Reward[3302008]["RewardItem"][1]= {}
	tJanuarySales_Reward[3302008]["RewardItem"][1]["Id"]= 138069
	tJanuarySales_Reward[3302008]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3302008]["LogId"]= 12000580
	tJanuarySales_Reward[3302009] = {}
	tJanuarySales_Reward[3302009]["DeleteItem"]= {}
	tJanuarySales_Reward[3302009]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3302009]["DeleteItem"][1]["Id"]= 3302009
	tJanuarySales_Reward[3302009]["RewardItem"]= {}
	tJanuarySales_Reward[3302009]["RewardItem"][1]= {}
	tJanuarySales_Reward[3302009]["RewardItem"][1]["Id"]= 148069
	tJanuarySales_Reward[3302009]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3302009]["LogId"]= 12000580
	tJanuarySales_Reward[3302010] = {}
	tJanuarySales_Reward[3302010]["DeleteItem"]= {}
	tJanuarySales_Reward[3302010]["DeleteItem"][1]= {}
	tJanuarySales_Reward[3302010]["DeleteItem"][1]["Id"]= 3302010
	tJanuarySales_Reward[3302010]["RewardItem"]= {}
	tJanuarySales_Reward[3302010]["RewardItem"][1]= {}
	tJanuarySales_Reward[3302010]["RewardItem"][1]["Id"]= 617139
	tJanuarySales_Reward[3302010]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tJanuarySales_Reward[3302010]["LogId"]= 12000580
------------------------------------------逻辑部分---------------------------------------------------
--打开随机礼包
function Sales2016Christmas_Open(nItemId)
	-- 随机几等奖
	 if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local tAward = RewardTemplate_NewRandom(tJanuarySales_Reward,nItemId)
		local nRewardItemId = tAward[1]["tAward"][1]["RewardItem"][1]["Id"]
		if nRewardItemId == tJanuarySales_Cont["ItemId"][1]   then 
			local nGolbal = Get_SysDynaGlobalData(51415,3)
			if nGolbal >=1 then 
				return 
			end 
			local sUserName = Get_UserName()
			local sItemName = Get_ItemtypeName(nRewardItemId)
			Sys_SystemBroadcast(string.format(tJanuarySales_Text["Broadcast"],sUserName,sItemName))
			Sys_SetSynaGlobalData(51415,3,1)
		end 
	end
end

--打开可选礼包
function Sales2016Christmas_Confirm(nItemId, nIndex,sOptionText)
	local sOptionText = tJanuarySales_Text[nItemId][sOptionText]
	--重设对白文字
	tItem[nItemId]["Text211"] = string.format(tJanuarySales_Text[nItemId]["Text211"],sOptionText)
	--重设选项函数
	tItem[nItemId]["OptionFunc211"] = "Sales2016Christmas_OpenChoose</N>"..nItemId.."</N>"..nIndex
	
	LinkItemGossipFunc_New(nItemId,"2-1")
end	

--可选礼包给奖励
function Sales2016Christmas_OpenChoose(nItemId, nIndex)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId][nIndex])
end

--自动寻路位置
function  Sales2016Christmas_Goto()
	local PoxX = tJanuarySales_FindWay[20198]["PosX"]
	local PosY = tJanuarySales_FindWay[20198]["PosY"]
	local MapId = tJanuarySales_FindWay[20198]["MapId"]
	Sys_GotoSomeWhere(PoxX,PosY,MapId,20198)
end

------------------------------------------物品部分---------------------------------------------------
--折扇
tItem[3301876] = tItem[3301876] or {}
tItem[3301876]["Function"] = function(nItemId,sItemName)
	 Sales2016Christmas_Goto()
end

tItem[3301515] = tItem[3301515] or {}
tItem[3301515]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301905] = tItem[3301905] or {}
tItem[3301905]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301724] = tItem[3301724] or {}
tItem[3301724]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301516] = tItem[3301516] or {}
tItem[3301516]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301886] = tItem[3301886] or {}
tItem[3301886]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301532] = tItem[3301532] or {}
tItem[3301532]["Function"] = function(nItemId,sItemName)
	Sales2016Christmas_Open(nItemId)
end

tItem[3301540] = tItem[3301540] or {}
tItem[3301540]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3302056] = tItem[3302056] or {}
tItem[3302056]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301877] = tItem[3301877] or {}
tItem[3301877]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301888] = tItem[3301888] or {}
tItem[3301888]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301878] = tItem[3301878] or {}
tItem[3301878]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301889] = tItem[3301889] or {}
tItem[3301889]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301879] = tItem[3301879] or {}
tItem[3301879]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301890] = tItem[3301890] or {}
tItem[3301890]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301880] = tItem[3301880] or {}
tItem[3301880]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301891] = tItem[3301891] or {}
tItem[3301891]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301881] = tItem[3301881] or {}
tItem[3301881]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301892] = tItem[3301892] or {}
tItem[3301892]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301882] = tItem[3301882] or {}
tItem[3301882]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301893] = tItem[3301893] or {}
tItem[3301893]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301883] = tItem[3301883] or {}
tItem[3301883]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301894] = tItem[3301894] or {}
tItem[3301894]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301884] = tItem[3301884] or {}
tItem[3301884]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301895] = tItem[3301895] or {}
tItem[3301895]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301885] = tItem[3301885] or {}
tItem[3301885]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301896] = tItem[3301896] or {}
tItem[3301896]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

--豪华时装礼包
tItem[3302013] = tItem[3302013] or {}
tItem[3302013]["DialogueText"] =tJanuarySales_Text[3302013]
tItem[3302013]["Text1-1"] = {111}
tItem[3302013]["tOption1-1"] = {1,2,3}
tItem[3302013]["OptionFunc1"] = "Sales2016Christmas_Confirm</N>3302013</N>193445</S>Option1"
tItem[3302013]["OptionFunc2"] = "Sales2016Christmas_Confirm</N>3302013</N>193115</S>Option2"
tItem[3302013]["Text2-1"] = {211}
tItem[3302013]["tOption2-1"] = {211,212}
tItem[3302013]["OptionPoint212"] = "1-1"

--铁扇新开二等礼包
tItem[3301533] = tItem[3301533] or {}
tItem[3301533]["DialogueText"] =tJanuarySales_Text[3301533]
tItem[3301533]["Text1-1"] = {111}
tItem[3301533]["tOption1-1"] = {1,2,3,4}
tItem[3301533]["OptionFunc1"] = "Sales2016Christmas_Confirm</N>3301533</N>730007</S>Option1"
tItem[3301533]["OptionFunc2"] = "Sales2016Christmas_Confirm</N>3301533</N>3301540</S>Option2"
tItem[3301533]["OptionFunc3"] = "Sales2016Christmas_Confirm</N>3301533</N>3003653</S>Option3"
tItem[3301533]["Text2-1"] = {211}
tItem[3301533]["tOption2-1"] = {211,212}

--铁扇新开三等礼包
tItem[3301534] = tItem[3301534] or {}
tItem[3301534]["DialogueText"] =tJanuarySales_Text[3301534]
tItem[3301534]["Text1-1"] = {111}
tItem[3301534]["tOption1-1"] = {1,2,3,4}
tItem[3301534]["OptionFunc1"] = "Sales2016Christmas_Confirm</N>3301534</N>3009002</S>Option1"
tItem[3301534]["OptionFunc2"] = "Sales2016Christmas_Confirm</N>3301534</N>723695</S>Option2"
tItem[3301534]["OptionFunc3"] = "Sales2016Christmas_Confirm</N>3301534</N>1200005</S>Option3"
tItem[3301534]["Text2-1"] = {211}
tItem[3301534]["tOption2-1"] = {211,212}

--铁扇新开四等礼包
tItem[3301535] = tItem[3301535] or {}
tItem[3301535]["DialogueText"] =tJanuarySales_Text[3301535]
tItem[3301535]["Text1-1"] = {111}
tItem[3301535]["tOption1-1"] = {1,2,3,4}
tItem[3301535]["OptionFunc1"] = "Sales2016Christmas_Confirm</N>3301535</N>3006026</S>Option1"
tItem[3301535]["OptionFunc2"] = "Sales2016Christmas_Confirm</N>3301535</N>1200006</S>Option2"
tItem[3301535]["OptionFunc3"] = "Sales2016Christmas_Confirm</N>3301535</N>722057</S>Option3"
tItem[3301535]["Text2-1"] = {211}
tItem[3301535]["tOption2-1"] = {211,212}

--铁扇新开五等礼包
tItem[3301536] = tItem[3301536] or {}
tItem[3301536]["DialogueText"] =tJanuarySales_Text[3301536]
tItem[3301536]["Text1-1"] = {111}
tItem[3301536]["tOption1-1"] = {1,2,3,4}
tItem[3301536]["OptionFunc1"] = "Sales2016Christmas_Confirm</N>3301536</N>1088000</S>Option1"
tItem[3301536]["OptionFunc2"] = "Sales2016Christmas_Confirm</N>3301536</N>3003124</S>Option2"
tItem[3301536]["OptionFunc3"] = "Sales2016Christmas_Confirm</N>3301536</N>3002029</S>Option3"
tItem[3301536]["Text2-1"] = {211}
tItem[3301536]["tOption2-1"] = {211,212}

--铁扇新开六等礼包
tItem[3301537] = tItem[3301537] or {}
tItem[3301537]["DialogueText"] =tJanuarySales_Text[3301537]
tItem[3301537]["Text1-1"] = {111}
tItem[3301537]["tOption1-1"] = {1,2,3,4}
tItem[3301537]["OptionFunc1"] = "Sales2016Christmas_Confirm</N>3301537</N>700013</S>Option1"
tItem[3301537]["OptionFunc2"] = "Sales2016Christmas_Confirm</N>3301537</N>720652</S>Option2"
tItem[3301537]["OptionFunc3"] = "Sales2016Christmas_Confirm</N>3301537</N>729481</S>Option3"
tItem[3301537]["Text2-1"] = {211}
tItem[3301537]["tOption2-1"] = {211,212}

--铁扇新开七等礼包
tItem[3301538] = tItem[3301538] or {}
tItem[3301538]["DialogueText"] =tJanuarySales_Text[3301538]
tItem[3301538]["Text1-1"] = {111}
tItem[3301538]["tOption1-1"] = {1,2,3,4}
tItem[3301538]["OptionFunc1"] = "Sales2016Christmas_Confirm</N>3301538</N>730003</S>Option1"
tItem[3301538]["OptionFunc2"] = "Sales2016Christmas_Confirm</N>3301538</N>3009001</S>Option2"
tItem[3301538]["OptionFunc3"] = "Sales2016Christmas_Confirm</N>3301538</N>3003126</S>Option3"
tItem[3301538]["Text2-1"] = {211}
tItem[3301538]["tOption2-1"] = {211,212}

--铁扇新开八等礼包
tItem[3301539] = tItem[3301539] or {}
tItem[3301539]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end
--+4HeartNunchakuPack 
tItem[3301645] = tItem[3301645] or {}
tItem[3301645]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end
--+4TempestWingPack
tItem[3301646] = tItem[3301646] or {}
tItem[3301646]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end
--+6TempestWingPack
tItem[3301650] = tItem[3301650] or {}
tItem[3301650]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end
--怀旧服豪华大礼包
tItem[3301570] = tItem[3301570] or {}
tItem[3301570]["Function"] = function(nItemId,sItemName)
	Sales2016Christmas_Open(nItemId)
end

--喜迎铁扇星陨石礼包（新服）
tItem[3301723] = tItem[3301723] or {}
tItem[3301723]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

--喜迎铁扇星陨石礼包（新服）
tItem[3301887] = tItem[3301887] or {}
tItem[3301887]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301911] = tItem[3301911] or {}
tItem[3301911]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301912] = tItem[3301912] or {}
tItem[3301912]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301913] = tItem[3301913] or {}
tItem[3301913]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301914] = tItem[3301914] or {}
tItem[3301914]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301915] = tItem[3301915] or {}
tItem[3301915]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301916] = tItem[3301916] or {}
tItem[3301916]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301917] = tItem[3301917] or {}
tItem[3301917]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301918] = tItem[3301918] or {}
tItem[3301918]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301919] = tItem[3301919] or {}
tItem[3301919]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301920] = tItem[3301920] or {}
tItem[3301920]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301921] = tItem[3301921] or {}
tItem[3301921]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301922] = tItem[3301922] or {}
tItem[3301922]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301923] = tItem[3301923] or {}
tItem[3301923]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301924] = tItem[3301924] or {}
tItem[3301924]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301925] = tItem[3301925] or {}
tItem[3301925]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301926] = tItem[3301926] or {}
tItem[3301926]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301927] = tItem[3301927] or {}
tItem[3301927]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301928] = tItem[3301928] or {}
tItem[3301928]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301929] = tItem[3301929] or {}
tItem[3301929]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301930] = tItem[3301930] or {}
tItem[3301930]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301931] = tItem[3301931] or {}
tItem[3301931]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301932] = tItem[3301932] or {}
tItem[3301932]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301933] = tItem[3301933] or {}
tItem[3301933]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301934] = tItem[3301934] or {}
tItem[3301934]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301935] = tItem[3301935] or {}
tItem[3301935]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301936] = tItem[3301936] or {}
tItem[3301936]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301937] = tItem[3301937] or {}
tItem[3301937]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301938] = tItem[3301938] or {}
tItem[3301938]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301939] = tItem[3301939] or {}
tItem[3301939]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301940] = tItem[3301940] or {}
tItem[3301940]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301941] = tItem[3301941] or {}
tItem[3301941]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301942] = tItem[3301942] or {}
tItem[3301942]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301943] = tItem[3301943] or {}
tItem[3301943]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301944] = tItem[3301944] or {}
tItem[3301944]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301945] = tItem[3301945] or {}
tItem[3301945]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301946] = tItem[3301946] or {}
tItem[3301946]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301947] = tItem[3301947] or {}
tItem[3301947]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301948] = tItem[3301948] or {}
tItem[3301948]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301949] = tItem[3301949] or {}
tItem[3301949]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301950] = tItem[3301950] or {}
tItem[3301950]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301951] = tItem[3301951] or {}
tItem[3301951]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301952] = tItem[3301952] or {}
tItem[3301952]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301953] = tItem[3301953] or {}
tItem[3301953]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301954] = tItem[3301954] or {}
tItem[3301954]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301955] = tItem[3301955] or {}
tItem[3301955]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301956] = tItem[3301956] or {}
tItem[3301956]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301957] = tItem[3301957] or {}
tItem[3301957]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301958] = tItem[3301958] or {}
tItem[3301958]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301975] = tItem[3301975] or {}
tItem[3301975]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301976] = tItem[3301976] or {}
tItem[3301976]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301977] = tItem[3301977] or {}
tItem[3301977]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301978] = tItem[3301978] or {}
tItem[3301978]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301979] = tItem[3301979] or {}
tItem[3301979]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301980] = tItem[3301980] or {}
tItem[3301980]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301981] = tItem[3301981] or {}
tItem[3301981]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301982] = tItem[3301982] or {}
tItem[3301982]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301983] = tItem[3301983] or {}
tItem[3301983]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301984] = tItem[3301984] or {}
tItem[3301984]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301985] = tItem[3301985] or {}
tItem[3301985]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301986] = tItem[3301986] or {}
tItem[3301986]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301987] = tItem[3301987] or {}
tItem[3301987]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301988] = tItem[3301988] or {}
tItem[3301988]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301989] = tItem[3301989] or {}
tItem[3301989]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301990] = tItem[3301990] or {}
tItem[3301990]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301991] = tItem[3301991] or {}
tItem[3301991]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301992] = tItem[3301992] or {}
tItem[3301992]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301993] = tItem[3301993] or {}
tItem[3301993]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301994] = tItem[3301994] or {}
tItem[3301994]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301995] = tItem[3301995] or {}
tItem[3301995]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301996] = tItem[3301996] or {}
tItem[3301996]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301997] = tItem[3301997] or {}
tItem[3301997]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301998] = tItem[3301998] or {}
tItem[3301998]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301999] = tItem[3301999] or {}
tItem[3301999]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3302000] = tItem[3302000] or {}
tItem[3302000]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3302001] = tItem[3302001] or {}
tItem[3302001]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3302002] = tItem[3302002] or {}
tItem[3302002]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3302003] = tItem[3302003] or {}
tItem[3302003]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3302004] = tItem[3302004] or {}
tItem[3302004]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3302005] = tItem[3302005] or {}
tItem[3302005]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3302006] = tItem[3302006] or {}
tItem[3302006]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3302007] = tItem[3302007] or {}
tItem[3302007]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3302008] = tItem[3302008] or {}
tItem[3302008]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3302009] = tItem[3302009] or {}
tItem[3302009]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3302010] = tItem[3302010] or {}
tItem[3302010]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3302054] = tItem[3302054] or {}
tItem[3302054]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3302055] = tItem[3302055] or {}
tItem[3302055]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301546] = tItem[3301546] or {}
tItem[3301546]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end

tItem[3301547] = tItem[3301547] or {}
tItem[3301547]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuarySales_Reward[nItemId])
end