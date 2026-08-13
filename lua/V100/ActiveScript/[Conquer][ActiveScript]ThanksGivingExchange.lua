------------------------------------------------------------------------------------
--Name：            171013[英文征服][活动脚本]感恩月-以旧换新活动制作
--Creator:      蔡颖静
--Created:     2017/10/13
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--前缀：ThanksGivingExchange_

----------------------------------表配置部分--------------------------------------------
-- --掩码
 local tThanksGivingExchange_Stc={}
-- ---stc(168,33) 记录排位场数
tThanksGivingExchange_Stc= {}
tThanksGivingExchange_Stc["Competes"]={}
tThanksGivingExchange_Stc["Competes"]["Event"] = 168
tThanksGivingExchange_Stc["Competes"]["Type"] = 33
tThanksGivingExchange_Stc["Competes"]["AddNum"] = 1


local tThanksGivingExchange_Data={}
	--活动时间 
	-- tThanksGivingExchange_Data["BeforeActiveTime"]= "2017-01-01 00:00 2017-11-08 23:59"
	-- tThanksGivingExchange_Data["ActiveTime"]="2017-11-09 00:00 2017-11-30 23:59"
	--背包空间
	tThanksGivingExchange_Data["nChkSpace"]=1
	--个人排位参赛场
	tThanksGivingExchange_Data["Competes"] = {}
	tThanksGivingExchange_Data["Competes"][7]= 5
	--所需金币
	tThanksGivingExchange_Data["MoneyForOnce"]=5000000
	tThanksGivingExchange_Data["MoneyForTenth"]=50000000
	
	--奖盘ID
	tThanksGivingExchange_Data["Roulette"]={}
	tThanksGivingExchange_Data["Roulette"][3305784]=6840
	tThanksGivingExchange_Data["Roulette"][3305785]=6841
	tThanksGivingExchange_Data["Roulette"][3305786]=6842
	tThanksGivingExchange_Data["Roulette"][3305787]=6843
	--材料ID
	tThanksGivingExchange_Data["ItemId"]={}
	tThanksGivingExchange_Data["ItemId"][1080001]=1080001
	tThanksGivingExchange_Data["ItemId"][720027]=720027
	tThanksGivingExchange_Data["ItemId"][754001]=754001
	tThanksGivingExchange_Data["ItemId"][753003]=753003
	tThanksGivingExchange_Data["ItemId"][723903]=723903
	tThanksGivingExchange_Data["ItemId"][756001]=756001
	tThanksGivingExchange_Data["ItemId"][723727]=723727
	tThanksGivingExchange_Data["ItemId"][720128]=720128
	tThanksGivingExchange_Data["ItemId"][721261]=721261
--	tThanksGivingExchange_Data["ItemId"][9]={}
	tThanksGivingExchange_Data["ItemId"][700041]=700041
	tThanksGivingExchange_Data["ItemId"][700031]=700031
	tThanksGivingExchange_Data["ItemId"][700021]=700021
	tThanksGivingExchange_Data["ItemId"][700011]=700011
	tThanksGivingExchange_Data["ItemId"][700001]=700001
	tThanksGivingExchange_Data["ItemId"][700051]=700051
	tThanksGivingExchange_Data["ItemId"][700061]=700061
	-- tThanksGivingExchange_Data["ItemId"][10]={}
	tThanksGivingExchange_Data["ItemId"][700101]=700101
	tThanksGivingExchange_Data["ItemId"][700121]=700121
	tThanksGivingExchange_Data["ItemId"][5000000]=5000000
		--每种材料1个可兑换的数量
	tThanksGivingExchange_Data["OnceNum"]={}
	tThanksGivingExchange_Data["OnceNum"][1080001]=1
	tThanksGivingExchange_Data["OnceNum"][720027]=3
	tThanksGivingExchange_Data["OnceNum"][754001]=2
	tThanksGivingExchange_Data["OnceNum"][753003]=1
	tThanksGivingExchange_Data["OnceNum"][723903]=1
	tThanksGivingExchange_Data["OnceNum"][756001]=1
	tThanksGivingExchange_Data["OnceNum"][723727]=2
	tThanksGivingExchange_Data["OnceNum"][721261]=1
	tThanksGivingExchange_Data["OnceNum"][700041]=3
	tThanksGivingExchange_Data["OnceNum"][700031]=3
	tThanksGivingExchange_Data["OnceNum"][700021]=3
	tThanksGivingExchange_Data["OnceNum"][700011]=3
	tThanksGivingExchange_Data["OnceNum"][700001]=3
	tThanksGivingExchange_Data["OnceNum"][700051]=3
	tThanksGivingExchange_Data["OnceNum"][700061]=3
	tThanksGivingExchange_Data["OnceNum"][700101]=15
	tThanksGivingExchange_Data["OnceNum"][700121]=15
	tThanksGivingExchange_Data["OnceNum"][5000000]=50
	
	--炼金术士费伦坐标
	tThanksGivingExchange_Data["Position"]={}
	tThanksGivingExchange_Data["Position"][22274]={}
	tThanksGivingExchange_Data["Position"][22274]["MapId"] = 1002
	tThanksGivingExchange_Data["Position"][22274]["nPosX"] =355
	tThanksGivingExchange_Data["Position"][22274]["nPosY"] =427
	
	
	--发奖表配置
	--上交祖母绿
tThanksGivingExchange_Data[1080001]={}
tThanksGivingExchange_Data[1080001]["LogId"] =12000918
tThanksGivingExchange_Data[1080001]["EmoneyLog"] = "350	20776	0	0	%d	"
tThanksGivingExchange_Data[1080001]["RewardEffect"]={}
tThanksGivingExchange_Data[1080001]["RewardEffect"]["Effect"] = "zf2-e128"
tThanksGivingExchange_Data[1080001]["DeleteItem"] = {}
tThanksGivingExchange_Data[1080001]["DeleteItem"][1]={}
tThanksGivingExchange_Data[1080001]["DeleteItem"][1]["Id"]=1080001
tThanksGivingExchange_Data[1080001]["DeleteItem"][1] ["ItemNum"]=0
tThanksGivingExchange_Data[1080001]["DeleteItem"][1] ["Monopoly"] =0
tThanksGivingExchange_Data[1080001]["RewardItem"] = {}
tThanksGivingExchange_Data[1080001]["RewardItem"][1]={}
tThanksGivingExchange_Data[1080001]["RewardItem"][1]["Id"]=3305809
tThanksGivingExchange_Data[1080001]["RewardItem"][1]["Attr"] ="0 %d"
--上交流星卷
tThanksGivingExchange_Data[720027]={}
tThanksGivingExchange_Data[720027]["LogId"] =12000918
tThanksGivingExchange_Data[720027]["EmoneyLog"] = "350	20777	0	0	%d	"
tThanksGivingExchange_Data[720027]["RewardEffect"]={}
tThanksGivingExchange_Data[720027]["RewardEffect"]["Effect"] = "zf2-e128"
tThanksGivingExchange_Data[720027]["DeleteItem"] = {}
tThanksGivingExchange_Data[720027]["DeleteItem"][1]={}
tThanksGivingExchange_Data[720027]["DeleteItem"][1]["Id"]=720027
tThanksGivingExchange_Data[720027]["DeleteItem"][1] ["ItemNum"]=0
tThanksGivingExchange_Data[720027]["DeleteItem"][1] ["Monopoly"] =0
tThanksGivingExchange_Data[720027]["RewardItem"] = {}
tThanksGivingExchange_Data[720027]["RewardItem"][1]={}
tThanksGivingExchange_Data[720027]["RewardItem"][1]["Id"]=3305809
tThanksGivingExchange_Data[720027]["RewardItem"][1]["Attr"] ="0 %d"
--上交1朵郁金香
tThanksGivingExchange_Data[754001]={}
tThanksGivingExchange_Data[754001]["LogId"] =12000918
tThanksGivingExchange_Data[754001]["RewardEffect"]={}
tThanksGivingExchange_Data[754001]["RewardEffect"]["Effect"] = "zf2-e128"
tThanksGivingExchange_Data[754001]["EmoneyLog"] = "350	20778	0	0	%d	"
tThanksGivingExchange_Data[754001]["DeleteItem"] = {}
tThanksGivingExchange_Data[754001]["DeleteItem"][1]={}
tThanksGivingExchange_Data[754001]["DeleteItem"][1]["Id"]=754001
tThanksGivingExchange_Data[754001]["DeleteItem"][1] ["ItemNum"]=0
tThanksGivingExchange_Data[754001]["DeleteItem"][1] ["Monopoly"] =0
tThanksGivingExchange_Data[754001]["RewardItem"] = {}
tThanksGivingExchange_Data[754001]["RewardItem"][1]={}
tThanksGivingExchange_Data[754001]["RewardItem"][1]["Id"]=3305809
tThanksGivingExchange_Data[754001]["RewardItem"][1]["Attr"] ="0 %d"
--上交3朵兰花
tThanksGivingExchange_Data[753003]={}
tThanksGivingExchange_Data[753003]["LogId"] =12000918
tThanksGivingExchange_Data[753003]["EmoneyLog"] = "350	20779	0	0	%d	"
tThanksGivingExchange_Data[753003]["RewardEffect"]={}
tThanksGivingExchange_Data[753003]["RewardEffect"]["Effect"] = "zf2-e128"
tThanksGivingExchange_Data[753003]["DeleteItem"] = {}
tThanksGivingExchange_Data[753003]["DeleteItem"][1]={}
tThanksGivingExchange_Data[753003]["DeleteItem"][1]["Id"]=753003
tThanksGivingExchange_Data[753003]["DeleteItem"][1] ["ItemNum"]=0
tThanksGivingExchange_Data[753003]["DeleteItem"][1] ["Monopoly"] =0
tThanksGivingExchange_Data[753003]["RewardItem"] = {}
tThanksGivingExchange_Data[753003]["RewardItem"][1]={}
tThanksGivingExchange_Data[753003]["RewardItem"][1]["Id"]=3305809
tThanksGivingExchange_Data[753003]["RewardItem"][1]["Attr"] ="0 %d"
--上交被偷走的马鞍
tThanksGivingExchange_Data[723903]={}
tThanksGivingExchange_Data[723903]["LogId"] =12000918
tThanksGivingExchange_Data[723903]["EmoneyLog"] = "350	20780	0	0	%d	"
tThanksGivingExchange_Data[723903]["RewardEffect"]={}
tThanksGivingExchange_Data[723903]["RewardEffect"]["Effect"] = "zf2-e128"
tThanksGivingExchange_Data[723903]["DeleteItem"] = {}
tThanksGivingExchange_Data[723903]["DeleteItem"][1]={}
tThanksGivingExchange_Data[723903]["DeleteItem"][1]["Id"]=723903
tThanksGivingExchange_Data[723903]["DeleteItem"][1] ["ItemNum"]=0
tThanksGivingExchange_Data[723903]["DeleteItem"][1] ["Monopoly"] =0
tThanksGivingExchange_Data[723903]["RewardItem"] = {}
tThanksGivingExchange_Data[723903]["RewardItem"][1]={}
tThanksGivingExchange_Data[723903]["RewardItem"][1]["Id"]=3305809
tThanksGivingExchange_Data[723903]["RewardItem"][1]["Attr"] ="0 %d"
--上交1封情书
tThanksGivingExchange_Data[756001]={}
tThanksGivingExchange_Data[756001]["LogId"] =12000918
tThanksGivingExchange_Data[756001]["EmoneyLog"] = "350	20781	0	0	%d	"
tThanksGivingExchange_Data[756001]["RewardEffect"]={}
tThanksGivingExchange_Data[756001]["RewardEffect"]["Effect"] = "zf2-e128"
tThanksGivingExchange_Data[756001]["DeleteItem"] = {}
tThanksGivingExchange_Data[756001]["DeleteItem"][1]={}
tThanksGivingExchange_Data[756001]["DeleteItem"][1]["Id"]=756001
tThanksGivingExchange_Data[756001]["DeleteItem"][1] ["ItemNum"]=0
tThanksGivingExchange_Data[756001]["DeleteItem"][1] ["Monopoly"] =0
tThanksGivingExchange_Data[756001]["RewardItem"] = {}
tThanksGivingExchange_Data[756001]["RewardItem"][1]={}
tThanksGivingExchange_Data[756001]["RewardItem"][1]["Id"]=3305809
tThanksGivingExchange_Data[756001]["RewardItem"][1]["Attr"] ="0 %d"
--上交清心符
tThanksGivingExchange_Data[723727]={}
tThanksGivingExchange_Data[723727]["LogId"] =12000918
tThanksGivingExchange_Data[723727]["RewardNoNeedTip"] = 1 
tThanksGivingExchange_Data[723727]["EmoneyLog"] = "350	20782	0	0	%d	"
tThanksGivingExchange_Data[723727]["RewardEffect"]={}
tThanksGivingExchange_Data[723727]["RewardEffect"]["Effect"] = "zf2-e128"
tThanksGivingExchange_Data[723727]["DeleteItem"] = {}
tThanksGivingExchange_Data[723727]["DeleteItem"][1]={}
tThanksGivingExchange_Data[723727]["DeleteItem"][1]["Id"]=723727
tThanksGivingExchange_Data[723727]["DeleteItem"][1] ["ItemNum"]=0
tThanksGivingExchange_Data[723727]["DeleteItem"][1] ["Monopoly"] =0
tThanksGivingExchange_Data[723727]["RewardItem"] = {}
tThanksGivingExchange_Data[723727]["RewardItem"][1]={}
tThanksGivingExchange_Data[723727]["RewardItem"][1]["Id"]=3305809
tThanksGivingExchange_Data[723727]["RewardItem"][1]["Attr"] ="0 %d"

tThanksGivingExchange_Data[720128]={}
tThanksGivingExchange_Data[720128]["LogId"] =12000918
tThanksGivingExchange_Data[720128]["RewardNoNeedTip"] = 1 
tThanksGivingExchange_Data[720128]["EmoneyLog"] = "350	20782	0	0	%d	"
tThanksGivingExchange_Data[720128]["RewardEffect"]={}
tThanksGivingExchange_Data[720128]["RewardEffect"]["Effect"] = "zf2-e128"
tThanksGivingExchange_Data[720128]["DeleteItem"] = {}
tThanksGivingExchange_Data[720128]["DeleteItem"][1]={}
tThanksGivingExchange_Data[720128]["DeleteItem"][1]["Id"]=720128
tThanksGivingExchange_Data[720128]["DeleteItem"][1] ["ItemNum"]=0
tThanksGivingExchange_Data[720128]["DeleteItem"][1] ["Monopoly"] =0
tThanksGivingExchange_Data[720128]["RewardItem"] = {}
tThanksGivingExchange_Data[720128]["RewardItem"][1]={}
tThanksGivingExchange_Data[720128]["RewardItem"][1]["Id"]=3305809
tThanksGivingExchange_Data[720128]["RewardItem"][1]["Attr"] ="0 %d"
--上交破城火雷
tThanksGivingExchange_Data[721261]={}
tThanksGivingExchange_Data[721261]["LogId"] =12000918
tThanksGivingExchange_Data[721261]["EmoneyLog"] = "350	20783	0	0	%d	"
tThanksGivingExchange_Data[721261]["RewardEffect"]={}
tThanksGivingExchange_Data[721261]["RewardEffect"]["Effect"] = "zf2-e128"
tThanksGivingExchange_Data[721261]["DeleteItem"] = {}
tThanksGivingExchange_Data[721261]["DeleteItem"][1]={}
tThanksGivingExchange_Data[721261]["DeleteItem"][1]["Id"]=721261
tThanksGivingExchange_Data[721261]["DeleteItem"][1] ["ItemNum"]=0
tThanksGivingExchange_Data[721261]["DeleteItem"][1] ["Monopoly"] =0
tThanksGivingExchange_Data[721261]["RewardItem"] = {}
tThanksGivingExchange_Data[721261]["RewardItem"][1]={}
tThanksGivingExchange_Data[721261]["RewardItem"][1]["Id"]=3305809
tThanksGivingExchange_Data[721261]["RewardItem"][1]["Attr"] ="0 %d"
--上交普通金鳞
tThanksGivingExchange_Data[700041]={}
tThanksGivingExchange_Data[700041]["LogId"] =12000918
tThanksGivingExchange_Data[700041]["EmoneyLog"] = "350	20784	0	0	%d	"
tThanksGivingExchange_Data[700041]["RewardEffect"]={}
tThanksGivingExchange_Data[700041]["RewardEffect"]["Effect"] = "zf2-e128"
tThanksGivingExchange_Data[700041]["DeleteItem"] = {}
tThanksGivingExchange_Data[700041]["DeleteItem"][1]={}
tThanksGivingExchange_Data[700041]["DeleteItem"][1]["Id"]=700041
tThanksGivingExchange_Data[700041]["DeleteItem"][1] ["ItemNum"]=0
tThanksGivingExchange_Data[700041]["DeleteItem"][1] ["Monopoly"] =0
tThanksGivingExchange_Data[700041]["RewardItem"] = {}
tThanksGivingExchange_Data[700041]["RewardItem"][1]={}
tThanksGivingExchange_Data[700041]["RewardItem"][1]["Id"]=3305809
tThanksGivingExchange_Data[700041]["RewardItem"][1]["Attr"] ="0 %d"
--上交普通青虹
tThanksGivingExchange_Data[700031]={}
tThanksGivingExchange_Data[700031]["LogId"] =12000918
tThanksGivingExchange_Data[700031]["EmoneyLog"] = "350	20784	0	0	%d	"
tThanksGivingExchange_Data[700031]["RewardEffect"]={}
tThanksGivingExchange_Data[700031]["RewardEffect"]["Effect"] = "zf2-e128"
tThanksGivingExchange_Data[700031]["DeleteItem"] = {}
tThanksGivingExchange_Data[700031]["DeleteItem"][1]={}
tThanksGivingExchange_Data[700031]["DeleteItem"][1]["Id"]=700031
tThanksGivingExchange_Data[700031]["DeleteItem"][1] ["ItemNum"]=0
tThanksGivingExchange_Data[700031]["DeleteItem"][1] ["Monopoly"] =0
tThanksGivingExchange_Data[700031]["RewardItem"] = {}
tThanksGivingExchange_Data[700031]["RewardItem"][1]={}
tThanksGivingExchange_Data[700031]["RewardItem"][1]["Id"]=3305809
tThanksGivingExchange_Data[700031]["RewardItem"][1]["Attr"] ="0 %d"
--上交普通惊鸿
tThanksGivingExchange_Data[700021]={}
tThanksGivingExchange_Data[700021]["LogId"] =12000918
tThanksGivingExchange_Data[700021]["EmoneyLog"] = "350	20784	0	0	%d	"
tThanksGivingExchange_Data[700021]["RewardEffect"]={}
tThanksGivingExchange_Data[700021]["RewardEffect"]["Effect"] = "zf2-e128"
tThanksGivingExchange_Data[700021]["DeleteItem"] = {}
tThanksGivingExchange_Data[700021]["DeleteItem"][1]={}
tThanksGivingExchange_Data[700021]["DeleteItem"][1]["Id"]=700021
tThanksGivingExchange_Data[700021]["DeleteItem"][1] ["ItemNum"]=0
tThanksGivingExchange_Data[700021]["DeleteItem"][1] ["Monopoly"] =0
tThanksGivingExchange_Data[700021]["RewardItem"] = {}
tThanksGivingExchange_Data[700021]["RewardItem"][1]={}
tThanksGivingExchange_Data[700021]["RewardItem"][1]["Id"]=3305809
tThanksGivingExchange_Data[700021]["RewardItem"][1]["Attr"] ="0 %d"
--上交普通龙恨
tThanksGivingExchange_Data[700011]={}
tThanksGivingExchange_Data[700011]["LogId"] =12000918
tThanksGivingExchange_Data[700011]["EmoneyLog"] = "350	20784	0	0	%d	"
tThanksGivingExchange_Data[700011]["RewardEffect"]={}
tThanksGivingExchange_Data[700011]["RewardEffect"]["Effect"] = "zf2-e128"
tThanksGivingExchange_Data[700011]["DeleteItem"] = {}
tThanksGivingExchange_Data[700011]["DeleteItem"][1]={}
tThanksGivingExchange_Data[700011]["DeleteItem"][1]["Id"]=700011
tThanksGivingExchange_Data[700011]["DeleteItem"][1] ["ItemNum"]=0
tThanksGivingExchange_Data[700011]["DeleteItem"][1] ["Monopoly"] =0
tThanksGivingExchange_Data[700011]["RewardItem"] = {}
tThanksGivingExchange_Data[700011]["RewardItem"][1]={}
tThanksGivingExchange_Data[700011]["RewardItem"][1]["Id"]=3305809
tThanksGivingExchange_Data[700011]["RewardItem"][1]["Attr"] ="0 %d"
--上交普通凤鸣
tThanksGivingExchange_Data[700001]={}
tThanksGivingExchange_Data[700001]["LogId"] =12000918
tThanksGivingExchange_Data[700001]["EmoneyLog"] = "350	20784	0	0	%d	"
tThanksGivingExchange_Data[700001]["RewardEffect"]={}
tThanksGivingExchange_Data[700001]["RewardEffect"]["Effect"] = "zf2-e128"
tThanksGivingExchange_Data[700001]["DeleteItem"] = {}
tThanksGivingExchange_Data[700001]["DeleteItem"][1]={}
tThanksGivingExchange_Data[700001]["DeleteItem"][1]["Id"]=700001
tThanksGivingExchange_Data[700001]["DeleteItem"][1] ["ItemNum"]=0
tThanksGivingExchange_Data[700001]["DeleteItem"][1] ["Monopoly"] =0
tThanksGivingExchange_Data[700001]["RewardItem"] = {}
tThanksGivingExchange_Data[700001]["RewardItem"][1]={}
tThanksGivingExchange_Data[700001]["RewardItem"][1]["Id"]=3305809
tThanksGivingExchange_Data[700001]["RewardItem"][1]["Attr"] ="0 %d"
--上交普通紫霞
tThanksGivingExchange_Data[700051]={}
tThanksGivingExchange_Data[700051]["LogId"] =12000918
tThanksGivingExchange_Data[700051]["EmoneyLog"] = "350	20784	0	0	%d	"
tThanksGivingExchange_Data[700051]["RewardEffect"]={}
tThanksGivingExchange_Data[700051]["RewardEffect"]["Effect"] = "zf2-e128"
tThanksGivingExchange_Data[700051]["DeleteItem"] = {}
tThanksGivingExchange_Data[700051]["DeleteItem"][1]={}
tThanksGivingExchange_Data[700051]["DeleteItem"][1]["Id"]=700051
tThanksGivingExchange_Data[700051]["DeleteItem"][1] ["ItemNum"]=0
tThanksGivingExchange_Data[700051]["DeleteItem"][1] ["Monopoly"] =0
tThanksGivingExchange_Data[700051]["RewardItem"] = {}
tThanksGivingExchange_Data[700051]["RewardItem"][1]={}
tThanksGivingExchange_Data[700051]["RewardItem"][1]["Id"]=3305809
tThanksGivingExchange_Data[700051]["RewardItem"][1]["Attr"] ="0 %d"
--上交普通明月
tThanksGivingExchange_Data[700061]={}
tThanksGivingExchange_Data[700061]["LogId"] =12000918
tThanksGivingExchange_Data[700061]["EmoneyLog"] = "350	20784	0	0	%d	"
tThanksGivingExchange_Data[700061]["RewardEffect"]={}
tThanksGivingExchange_Data[700061]["RewardEffect"]["Effect"] = "zf2-e128"
tThanksGivingExchange_Data[700061]["DeleteItem"] = {}
tThanksGivingExchange_Data[700061]["DeleteItem"][1]={}
tThanksGivingExchange_Data[700061]["DeleteItem"][1]["Id"]=700061
tThanksGivingExchange_Data[700061]["DeleteItem"][1] ["ItemNum"]=0
tThanksGivingExchange_Data[700061]["DeleteItem"][1] ["Monopoly"] =0
tThanksGivingExchange_Data[700061]["RewardItem"] = {}
tThanksGivingExchange_Data[700061]["RewardItem"][1]={}
tThanksGivingExchange_Data[700061]["RewardItem"][1]["Id"]=3305809
tThanksGivingExchange_Data[700061]["RewardItem"][1]["Attr"] ="0 %d"
--上交普通天怒宝石
tThanksGivingExchange_Data[700101]={}
tThanksGivingExchange_Data[700101]["LogId"] =12000918
tThanksGivingExchange_Data[700101]["EmoneyLog"] = "350	20785	0	0	%d	"
tThanksGivingExchange_Data[700101]["RewardEffect"]={}
tThanksGivingExchange_Data[700101]["RewardEffect"]["Effect"] = "zf2-e128"
tThanksGivingExchange_Data[700101]["DeleteItem"] = {}
tThanksGivingExchange_Data[700101]["DeleteItem"][1]={}
tThanksGivingExchange_Data[700101]["DeleteItem"][1]["Id"]=700101
tThanksGivingExchange_Data[700101]["DeleteItem"][1] ["ItemNum"]=0
tThanksGivingExchange_Data[700101]["DeleteItem"][1] ["Monopoly"] =0
tThanksGivingExchange_Data[700101]["RewardItem"] = {}
tThanksGivingExchange_Data[700101]["RewardItem"][1]={}
tThanksGivingExchange_Data[700101]["RewardItem"][1]["Id"]=3305809
tThanksGivingExchange_Data[700101]["RewardItem"][1]["Attr"] ="0 %d"
--上交普通地灵宝石
tThanksGivingExchange_Data[700121]={}
tThanksGivingExchange_Data[700121]["LogId"] =12000918
tThanksGivingExchange_Data[700121]["EmoneyLog"] = "350	20785	0	0	%d	"
tThanksGivingExchange_Data[700121]["RewardEffect"]={}
tThanksGivingExchange_Data[700121]["RewardEffect"]["Effect"] = "zf2-e128"
tThanksGivingExchange_Data[700121]["DeleteItem"] = {}
tThanksGivingExchange_Data[700121]["DeleteItem"][1]={}
tThanksGivingExchange_Data[700121]["DeleteItem"][1]["Id"]=700121
tThanksGivingExchange_Data[700121]["DeleteItem"][1] ["Monopoly"] =0
tThanksGivingExchange_Data[700121]["RewardItem"] = {}
tThanksGivingExchange_Data[700121]["RewardItem"][1]={}
tThanksGivingExchange_Data[700121]["RewardItem"][1]["Id"]=3305809
tThanksGivingExchange_Data[700121]["RewardItem"][1]["Attr"] ="0 %d"

--金币兑换
--500w1次
tThanksGivingExchange_Data[5000000]={}
tThanksGivingExchange_Data[5000000][1]={}
tThanksGivingExchange_Data[5000000]["LogId"] =12000918
tThanksGivingExchange_Data[5000000][1]["EmoneyLog"] = "350	20786	0	0	1	"
tThanksGivingExchange_Data[5000000]["RewardEffect"]={}
tThanksGivingExchange_Data[5000000]["RewardEffect"]["Effect"] = "zf2-e128"
tThanksGivingExchange_Data[5000000][1]["RewardNoNeedTip"] = 1 
tThanksGivingExchange_Data[5000000][1]["RewardMoney"] = {}
tThanksGivingExchange_Data[5000000][1]["RewardMoney"]["Value"]=-5000000
tThanksGivingExchange_Data[5000000][1]["RewardItem"] = {}
tThanksGivingExchange_Data[5000000][1]["RewardItem"][1]={}
tThanksGivingExchange_Data[5000000][1]["RewardItem"][1]["Id"]=3305809
tThanksGivingExchange_Data[5000000][1]["RewardItem"][1]["Attr"] ="0 50"
--5000w10次
tThanksGivingExchange_Data[5000000][2]={}
tThanksGivingExchange_Data[5000000]["LogId"] =12000918
tThanksGivingExchange_Data[5000000][2]["EmoneyLog"] = "350	20786	0	0	10	"
tThanksGivingExchange_Data[5000000][2]["RewardNoNeedTip"] = 1 
tThanksGivingExchange_Data[5000000][2]["RewardMoney"] = {}
tThanksGivingExchange_Data[5000000][2]["RewardMoney"]["Value"]=-50000000
tThanksGivingExchange_Data[5000000][2]["RewardItem"] = {}
tThanksGivingExchange_Data[5000000][2]["RewardItem"][1]={}
tThanksGivingExchange_Data[5000000][2]["RewardItem"][1]["Id"]=3305809
tThanksGivingExchange_Data[5000000][2]["RewardItem"][1]["Attr"] ="0 500"

--排位赛场数兑换
tThanksGivingExchange_Data[2]={}
tThanksGivingExchange_Data[2]["LogId"] =12000918
tThanksGivingExchange_Data[2]["RewardItem"] = {}
tThanksGivingExchange_Data[2]["RewardItem"][1]={}
tThanksGivingExchange_Data[2]["RewardItem"][1]["Id"]=3305809
tThanksGivingExchange_Data[2]["RewardItem"][1]["Attr"] ="0 5"

-- 显著功勋礼包 3007108
tThanksGivingExchange_Data[3007108] = {}
tThanksGivingExchange_Data[3007108]["LogId"] =12000918
tThanksGivingExchange_Data[3007108]["RewardItem"] = {}
tThanksGivingExchange_Data[3007108]["RewardItem"][1] = {}
tThanksGivingExchange_Data[3007108]["RewardItem"][1]["Id"] = 3305809
tThanksGivingExchange_Data[3007108]["RewardItem"][1]["Attr"] = "0 5"


--开礼包
--+1赤炼石*5包
tThanksGivingExchange_Data[3305788]={}
tThanksGivingExchange_Data[3305788]["LogId"] =12000918
tThanksGivingExchange_Data[3305788]["DeleteItem"] = {}
tThanksGivingExchange_Data[3305788]["DeleteItem"][1]={}
tThanksGivingExchange_Data[3305788]["DeleteItem"][1]["Id"]=3305788
tThanksGivingExchange_Data[3305788]["RewardItem"] = {}
tThanksGivingExchange_Data[3305788]["RewardItem"][1]={}
tThanksGivingExchange_Data[3305788]["RewardItem"][1]["Id"]=730001
tThanksGivingExchange_Data[3305788]["RewardItem"][1]["Attr"] ="0 5 3"

--+1赤炼石*2包
tThanksGivingExchange_Data[3305789]={}
tThanksGivingExchange_Data[3305789]["LogId"] =12000918
tThanksGivingExchange_Data[3305789]["DeleteItem"] = {}
tThanksGivingExchange_Data[3305789]["DeleteItem"][1]={}
tThanksGivingExchange_Data[3305789]["DeleteItem"][1]["Id"]=3305789
tThanksGivingExchange_Data[3305789]["RewardItem"] = {}
tThanksGivingExchange_Data[3305789]["RewardItem"][1]={}
tThanksGivingExchange_Data[3305789]["RewardItem"][1]["Id"]=730001
tThanksGivingExchange_Data[3305789]["RewardItem"][1]["Attr"] ="0 2 3"

--+1赤炼石*1包
tThanksGivingExchange_Data[3305801]={}
tThanksGivingExchange_Data[3305801]["LogId"] =12000918
tThanksGivingExchange_Data[3305801]["DeleteItem"] = {}
tThanksGivingExchange_Data[3305801]["DeleteItem"][1]={}
tThanksGivingExchange_Data[3305801]["DeleteItem"][1]["Id"]=3305801
tThanksGivingExchange_Data[3305801]["RewardItem"] = {}
tThanksGivingExchange_Data[3305801]["RewardItem"][1]={}
tThanksGivingExchange_Data[3305801]["RewardItem"][1]["Id"]=730001
tThanksGivingExchange_Data[3305801]["RewardItem"][1]["Attr"] ="0 1 3"

--+1赤炼石*6包
tThanksGivingExchange_Data[3305790]={}
tThanksGivingExchange_Data[3305790]["LogId"] =12000918
tThanksGivingExchange_Data[3305790]["DeleteItem"] = {}
tThanksGivingExchange_Data[3305790]["DeleteItem"][1]={}
tThanksGivingExchange_Data[3305790]["DeleteItem"][1]["Id"]=3305790
tThanksGivingExchange_Data[3305790]["RewardItem"] = {}
tThanksGivingExchange_Data[3305790]["RewardItem"][1]={}
tThanksGivingExchange_Data[3305790]["RewardItem"][1]["Id"]=730001
tThanksGivingExchange_Data[3305790]["RewardItem"][1]["Attr"] ="0 6 3"

--+1赤炼石*3包
tThanksGivingExchange_Data[3305791]={}
tThanksGivingExchange_Data[3305791]["LogId"] =12000918
tThanksGivingExchange_Data[3305791]["DeleteItem"] = {}
tThanksGivingExchange_Data[3305791]["DeleteItem"][1]={}
tThanksGivingExchange_Data[3305791]["DeleteItem"][1]["Id"]=3305791
tThanksGivingExchange_Data[3305791]["RewardItem"] = {}
tThanksGivingExchange_Data[3305791]["RewardItem"][1]={}
tThanksGivingExchange_Data[3305791]["RewardItem"][1]["Id"]=730001
tThanksGivingExchange_Data[3305791]["RewardItem"][1]["Attr"] ="0 3 3"

--+5赤炼石*1包
tThanksGivingExchange_Data[3305802]={}
tThanksGivingExchange_Data[3305802]["LogId"] =12000918
tThanksGivingExchange_Data[3305802]["DeleteItem"] = {}
tThanksGivingExchange_Data[3305802]["DeleteItem"][1]={}
tThanksGivingExchange_Data[3305802]["DeleteItem"][1]["Id"]=3305802
tThanksGivingExchange_Data[3305802]["RewardItem"] = {}
tThanksGivingExchange_Data[3305802]["RewardItem"][1]={}
tThanksGivingExchange_Data[3305802]["RewardItem"][1]["Id"]=730005
tThanksGivingExchange_Data[3305802]["RewardItem"][1]["Attr"] ="0 1 3"

--+1赤炼石*4包
tThanksGivingExchange_Data[3305792]={}
tThanksGivingExchange_Data[3305792]["LogId"] =12000918
tThanksGivingExchange_Data[3305792]["DeleteItem"] = {}
tThanksGivingExchange_Data[3305792]["DeleteItem"][1]={}
tThanksGivingExchange_Data[3305792]["DeleteItem"][1]["Id"]=3305792
tThanksGivingExchange_Data[3305792]["RewardItem"] = {}
tThanksGivingExchange_Data[3305792]["RewardItem"][1]={}
tThanksGivingExchange_Data[3305792]["RewardItem"][1]["Id"]=730001
tThanksGivingExchange_Data[3305792]["RewardItem"][1]["Attr"] ="0 4 3"

--明亮星陨石*2包
tThanksGivingExchange_Data[3305793]={}
tThanksGivingExchange_Data[3305793]["LogId"] =12000918
tThanksGivingExchange_Data[3305793]["DeleteItem"] = {}
tThanksGivingExchange_Data[3305793]["DeleteItem"][1]={}
tThanksGivingExchange_Data[3305793]["DeleteItem"][1]["Id"]=3305793
tThanksGivingExchange_Data[3305793]["RewardItem"] = {}
tThanksGivingExchange_Data[3305793]["RewardItem"][1]={}
tThanksGivingExchange_Data[3305793]["RewardItem"][1]["Id"]=3009001
tThanksGivingExchange_Data[3305793]["RewardItem"][1]["Attr"] ="0 2 0 2880 1"

--微光星陨石*5包
tThanksGivingExchange_Data[3305794]={}
tThanksGivingExchange_Data[3305794]["LogId"] =12000918
tThanksGivingExchange_Data[3305794]["DeleteItem"] = {}
tThanksGivingExchange_Data[3305794]["DeleteItem"][1]={}
tThanksGivingExchange_Data[3305794]["DeleteItem"][1]["Id"]=3305794
tThanksGivingExchange_Data[3305794]["RewardItem"] = {}
tThanksGivingExchange_Data[3305794]["RewardItem"][1]={}
tThanksGivingExchange_Data[3305794]["RewardItem"][1]["Id"]=3009000
tThanksGivingExchange_Data[3305794]["RewardItem"][1]["Attr"] ="0 5 0 2880 1"

--微光星陨石*3包
tThanksGivingExchange_Data[3305795]={}
tThanksGivingExchange_Data[3305795]["LogId"] =12000918
tThanksGivingExchange_Data[3305795]["DeleteItem"] = {}
tThanksGivingExchange_Data[3305795]["DeleteItem"][1]={}
tThanksGivingExchange_Data[3305795]["DeleteItem"][1]["Id"]=3305795
tThanksGivingExchange_Data[3305795]["RewardItem"] = {}
tThanksGivingExchange_Data[3305795]["RewardItem"][1]={}
tThanksGivingExchange_Data[3305795]["RewardItem"][1]["Id"]=3009000
tThanksGivingExchange_Data[3305795]["RewardItem"][1]["Attr"] ="0 3 0 2880 1"

--明亮星陨石*3包
tThanksGivingExchange_Data[3305796]={}
tThanksGivingExchange_Data[3305796]["LogId"] =12000918
tThanksGivingExchange_Data[3305796]["DeleteItem"] = {}
tThanksGivingExchange_Data[3305796]["DeleteItem"][1]={}
tThanksGivingExchange_Data[3305796]["DeleteItem"][1]["Id"]=3305796
tThanksGivingExchange_Data[3305796]["RewardItem"] = {}
tThanksGivingExchange_Data[3305796]["RewardItem"][1]={}
tThanksGivingExchange_Data[3305796]["RewardItem"][1]["Id"]=3009001
tThanksGivingExchange_Data[3305796]["RewardItem"][1]["Attr"] ="0 3 0 2880 1"

--微光星陨石*8包
tThanksGivingExchange_Data[3305797]={}
tThanksGivingExchange_Data[3305797]["LogId"] =12000918
tThanksGivingExchange_Data[3305797]["DeleteItem"] = {}
tThanksGivingExchange_Data[3305797]["DeleteItem"][1]={}
tThanksGivingExchange_Data[3305797]["DeleteItem"][1]["Id"]=3305797
tThanksGivingExchange_Data[3305797]["RewardItem"] = {}
tThanksGivingExchange_Data[3305797]["RewardItem"][1]={}
tThanksGivingExchange_Data[3305797]["RewardItem"][1]["Id"]=3009000
tThanksGivingExchange_Data[3305797]["RewardItem"][1]["Attr"] ="0 8 0 2880 1"

--明亮星陨石*5包
tThanksGivingExchange_Data[3305798]={}
tThanksGivingExchange_Data[3305798]["LogId"] =12000918
tThanksGivingExchange_Data[3305798]["DeleteItem"] = {}
tThanksGivingExchange_Data[3305798]["DeleteItem"][1]={}
tThanksGivingExchange_Data[3305798]["DeleteItem"][1]["Id"]=3305798
tThanksGivingExchange_Data[3305798]["RewardItem"] = {}
tThanksGivingExchange_Data[3305798]["RewardItem"][1]={}
tThanksGivingExchange_Data[3305798]["RewardItem"][1]["Id"]=3009001
tThanksGivingExchange_Data[3305798]["RewardItem"][1]["Attr"] ="0 5 0 2880 1"

--明亮星陨石*1包
tThanksGivingExchange_Data[3305803]={}
tThanksGivingExchange_Data[3305803]["LogId"] =12000918
tThanksGivingExchange_Data[3305803]["DeleteItem"] = {}
tThanksGivingExchange_Data[3305803]["DeleteItem"][1]={}
tThanksGivingExchange_Data[3305803]["DeleteItem"][1]["Id"]=3305803
tThanksGivingExchange_Data[3305803]["RewardItem"] = {}
tThanksGivingExchange_Data[3305803]["RewardItem"][1]={}
tThanksGivingExchange_Data[3305803]["RewardItem"][1]["Id"]=3009001
tThanksGivingExchange_Data[3305803]["RewardItem"][1]["Attr"] ="0 1 0 2880 1"

--600气力值包
tThanksGivingExchange_Data[3305799]={}
tThanksGivingExchange_Data[3305799]["LogId"] =12000918
tThanksGivingExchange_Data[3305799]["DeleteItem"] = {}
tThanksGivingExchange_Data[3305799]["DeleteItem"][1]={}
tThanksGivingExchange_Data[3305799]["DeleteItem"][1]["Id"]=3305799
tThanksGivingExchange_Data[3305799]["RewardStrengthValue"] = {}
tThanksGivingExchange_Data[3305799]["RewardStrengthValue"]["Value"] = 600

--400气力值包
tThanksGivingExchange_Data[3305800]={}
tThanksGivingExchange_Data[3305800]["LogId"] =12000918
tThanksGivingExchange_Data[3305800]["DeleteItem"] = {}
tThanksGivingExchange_Data[3305800]["DeleteItem"][1]={}
tThanksGivingExchange_Data[3305800]["DeleteItem"][1]["Id"]=3305800
tThanksGivingExchange_Data[3305800]["RewardStrengthValue"] = {}
tThanksGivingExchange_Data[3305800]["RewardStrengthValue"]["Value"] = 400
----------------------------------逻辑部分---------------------------------------------

--上交物品
function ThanksGivingExchange_HandIn(nItemId,nChoose,nOnceNum)
		--活动过期
	if not Sys_ChkFullTime(tActivityTime["ThankGivingExchange"]["ActiveTime"]) then
			return
	end
	--检查物品是否存在
	if not Item_ChkItem(nItemId,0) then
		local sText=string.format(tThanksGivingExchange_Text["FireFail"],tThanksGivingExchange_Text["ItemName"][nItemId])
		Sys_MsgBox(sText)
		return 
	end
	--背包空间判断
	if not User_CheckLeftSpace(tThanksGivingExchange_Data["nChkSpace"]) then
		Sys_MsgBox(tThanksGivingExchange_Text["BagFull"])
		return
	end
	local nNum=0
	--上交一个
	if nChoose ==0 then
		nNum=1
	--上交全部
	elseif  nChoose ==1 then 
		nNum=Get_CountItemType(nItemId,0,0)
	end
	local CouponNum=nNum*nOnceNum
	local tReward = CommonFunc_Copy(tThanksGivingExchange_Data[nItemId])
	tReward["DeleteItem"][1] ["ItemNum"]=nNum
	tReward["RewardItem"][1]["Attr"]=string.format(tThanksGivingExchange_Data[nItemId]["RewardItem"][1]["Attr"],CouponNum)
	tReward["EmoneyLog"] =string.format(tThanksGivingExchange_Data[nItemId]["EmoneyLog"],nNum)
	-- ThanksGivingExchange_StcAdd(nItemId,nNum)
	if RewardTemplate_UseItem(tReward) then 
		local ssText=string.format(tThanksGivingExchange_Text["FireSucess"],tThanksGivingExchange_Text["ItemName"][nItemId],CouponNum)
		User_TalkChannel2005(ssText)
	end 
end

--上交清心符
function ThanksGivingExchange_HandInQinXin(nItemId1,nItemId2,nChoose)

	if not Item_ChkItem(nItemId1,0) then 
		if not Item_ChkItem(nItemId2,0) then 
			local sText=string.format(tThanksGivingExchange_Text["FireFail"],tThanksGivingExchange_Text["ItemName"][nItemId1])
			Sys_MsgBox(sText)
		end 
	end
	local nNum=0
	local tReward
	local CouponNum=0
	if nChoose ==0 then
		nNum=1
		CouponNum=nNum*2
		if Item_ChkItem(nItemId2,0) then 
			tReward=CommonFunc_Copy(tThanksGivingExchange_Data[nItemId2])
			tReward["DeleteItem"][1] ["ItemNum"]=nNum
			tReward["RewardItem"][1]["Attr"]=string.format(tThanksGivingExchange_Data[nItemId2]["RewardItem"][1]["Attr"],CouponNum)
			tReward["EmoneyLog"]=string.format(tThanksGivingExchange_Data[nItemId2]["EmoneyLog"],nNum)
		elseif Item_ChkItem(nItemId1,0) then 
			tReward=CommonFunc_Copy(tThanksGivingExchange_Data[nItemId1])
			tReward["DeleteItem"][1] ["ItemNum"]=nNum
			tReward["RewardItem"][1]["Attr"]=string.format(tThanksGivingExchange_Data[nItemId1]["RewardItem"][1]["Attr"],CouponNum)
			tReward["EmoneyLog"]=string.format(tThanksGivingExchange_Data[nItemId1]["EmoneyLog"],nNum)
		end
		if RewardTemplate_UseItem(tReward)then
			local ssText=string.format(tThanksGivingExchange_Text["FireSucess"],tThanksGivingExchange_Text["ItemName"][nItemId1],CouponNum)
			User_TalkChannel2005(ssText)
		end 
	end
	if nChoose ==1 then
		local nNum1=0
		local nNum2=0
		local CouponNum1=0
		local CouponNum2=0
		local flag=0
		local tReward1=CommonFunc_Copy(tThanksGivingExchange_Data[nItemId1])
		local tReward2=CommonFunc_Copy(tThanksGivingExchange_Data[nItemId2])
		nNum1=Get_CountItemType(nItemId1,0,0)
		nNum2=Get_CountItemType(nItemId2,0,0)
		nNum=nNum1+nNum2
		CouponNum1=nNum1*2
		CouponNum2=nNum2*2
		CouponNum=nNum*2
		tReward1["DeleteItem"][1] ["ItemNum"]=nNum1
		tReward1["RewardItem"][1]["Attr"]=string.format(tThanksGivingExchange_Data[nItemId1]["RewardItem"][1]["Attr"],CouponNum1)
		tReward1["EmoneyLog"] =string.format(tThanksGivingExchange_Data[nItemId1]["EmoneyLog"],nNum1)
		tReward2["DeleteItem"][1] ["ItemNum"]=nNum2
		tReward2["RewardItem"][1]["Attr"]=string.format(tThanksGivingExchange_Data[nItemId2]["RewardItem"][1]["Attr"],CouponNum2)
		tReward2["EmoneyLog"] =string.format(tThanksGivingExchange_Data[nItemId1]["EmoneyLog"],nNum2)
		if nNum1>0 then
			 if RewardTemplate_UseItem(tReward1) then 
				flag=1
			end
		end 
		if nNum2>0 then
			 if RewardTemplate_UseItem(tReward2) then 
				flag=1
			end
		end 
		if flag==1 then
			local ssText=string.format(tThanksGivingExchange_Text["FireSucess"],tThanksGivingExchange_Text["ItemName"][nItemId1],CouponNum)
			User_TalkChannel2005(ssText)
		end 
	end 
end 

--上交金币
function ThanksGivingExchange_HandInMoney(nItemId,nChoose)
local nOnceMoney=tThanksGivingExchange_Data["MoneyForOnce"] 
local nTenthMoney=tThanksGivingExchange_Data["MoneyForTenth"]
	--活动过期
	if not Sys_ChkFullTime(tActivityTime["ThankGivingExchange"]["ActiveTime"]) then
		return
	end
	--背包空间判断
	if not User_CheckLeftSpace(tThanksGivingExchange_Data["nChkSpace"]) then
		User_TalkChannel2005(tThanksGivingExchange_Text["BagFull"])
		return
	end
	--上交500w
	if nChoose ==0 then
		--金币判断
		if not User_CanPutMoney2Bag(-nOnceMoney) then 
			User_TalkChannel2005(tThanksGivingExchange_Text["MoneyNotEnough"])
			return 
		end
			if RewardTemplate_UseItem(tThanksGivingExchange_Data[nItemId][1]) then 
				local CouponNum=50
				local ssText=string.format(tThanksGivingExchange_Text["FireSucess"],tThanksGivingExchange_Text["MoneyName"],CouponNum)
				User_TalkChannel2005(ssText)
			end 
		-- end
	--上交5000w
	elseif nChoose ==1 then
		--金币判断
		if not User_CanPutMoney2Bag(-nTenthMoney)  then 
			User_TalkChannel2005(tThanksGivingExchange_Text["MoneyNotEnough"])
			return 
		end
		if RewardTemplate_UseItem(tThanksGivingExchange_Data[nItemId][2]) then 
			local CouponNum=500
			local ssText=string.format(tThanksGivingExchange_Text["FireSucess"],tThanksGivingExchange_Text["MoneyName"],CouponNum)
			User_TalkChannel2005(ssText)
		end 
	end
end
	

--打开兑换商店
function ThanksGivingExchange_OpenExchangeShop(nNpcId)
	--活动过期
	if not Sys_ChkFullTime(tActivityTime["ThankGivingExchange"]["ActiveTime"]) then
		return
	end
	User_OpenExchangeShop(nNpcId)
end

--打开礼包
function ThanksGivingExchange_OpenPackage(nItemId)
	--背包空间判断(背包满)
	if not User_CheckLeftSpace(tThanksGivingExchange_Data["nChkSpace"]) then
		Sys_MsgBox(tThanksGivingExchange_Text["OpenFail"])
		return
	end
--打开星陨石礼包
	if (nItemId >= 3305793 and nItemId <= 3305798) or (nItemId ==3305803) then
		--活动过期
		if not Sys_ChkFullTime(tActivityTime["ThankGivingExchange"]["ActiveTime"]) then
			if Item_DelAllItemByType(nItemId) then
				User_TalkChannel2005(tThanksGivingExchange_Text["StoneTimeOut"])
				return
			end
		end
	end
--使用幻象魔盘
	if nItemId==3305809 then
		--活动过期
		if not Sys_ChkFullTime(tActivityTime["ThankGivingExchange"]["ActiveTime"]) then
			if Item_DelAllItemByType(nItemId) then
				local sText=string.format(tThanksGivingExchange_Text["ActivityTimeOut"],tThanksGivingExchange_Text["MoPanName"])
				User_TalkChannel2005(sText)
				return false
			end
		else
				local nNpcId=22274
				NpcPosition_PathFind(nNpcId)
				return true
		end
	end
--打开一般礼包
	--判断是否存在物品
	if not Item_ChkItem(nItemId) then
		return
	end
	--计算背包空间(背包空间不足)
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tThanksGivingExchange_Data[nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tThanksGivingExchange_Data[nItemId])
	local nNeedSpace = nGetRewardSpace - nDelRewardSpace
	if not RewardTemplate_CheckSpace(tThanksGivingExchange_Data[nItemId],nUserId) then
		local ssText=string.format(tThanksGivingExchange_Text["NoSpace"],nNeedSpace)
		Sys_MsgBox(ssText)
		return
	end
	RewardTemplate_UseItem(tThanksGivingExchange_Data[nItemId])
end 

-- 显著功勋礼包 3007108
function ThanksGivingExchange_Daily()
	--活动过期
	if not Sys_ChkFullTime(tActivityTime["ThankGivingExchange"]["ActiveTime"]) then
		return
	end
	RewardTemplate_UseItem(tThanksGivingExchange_Data[3007108])
end

--参加排位赛
function tThanksGivingExchange_Competes(nUserId,nFieldNum)
	--活动过期
	if not Sys_ChkFullTime(tActivityTime["ThankGivingExchange"]["ActiveTime"]) then
		return
	end
		--掩码统计这天参加的次数
	local nEvent =tThanksGivingExchange_Stc["Competes"]["Event"]
	local nData =tThanksGivingExchange_Stc["Competes"]["Type"] 
	--隔天清掩码
	if Task_StcInterval(nEvent,nData,1,4,nUserId) then
		Task_SetStatistic(nEvent,nData,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nData,0,nUserId)
	end
	if Task_ChkStcValue(nEvent,nData,">",7,nUserId) then 
		return 
	end
		Task_AddStatistic(nEvent,nData,1,1,nUserId)
	if Task_ChkStcValue(nEvent,nData,"==",7,nUserId) then
		-- --背包空间判断(背包满)
		-- if not User_CheckLeftSpace(tThanksGivingExchange_Data["nChkSpace"],nUserId) then
			-- User_TalkChannel2005(tThanksGivingExchange_Text["OpenFail"],nUserId)
			-- return
		-- end
			RewardTemplate_UseItem(tThanksGivingExchange_Data[2],nUserId)
	end 
end

-- --使用轮盘
-- function ThanksGivingExchange_UseRoulette(nItemId)
	-- if not Item_ChkItem(nItemId) then
		-- return
	-- end
		-- --活动过期
	-- if not Sys_ChkFullTime(tActivityTime["ThankGivingExchange"]["ActiveTime"]) then
		-- if Item_DelAllItemByType(nItemId) then
			-- local sText=string.format(tThanksGivingExchange_Text["ActivityTimeOut"],tThanksGivingExchange_Text["RouletteName"])
			-- User_TalkChannel2005(sText)
			-- return
		-- end
	-- end
	-- Roulette_Use(tThanksGivingExchange_Data["Roulette"][nItemId])
-- end

function ThanksGivingExchange_GotoSomeWhere(nNpcId)
	NpcPosition_PathFind(nNpcId)
end

--判断背包中材料是否存在
function ThanksGivingExchange_NoMaterial()
	 if Item_ChkItem(tThanksGivingExchange_Data["ItemId"][1080001],0) or Item_ChkItem(tThanksGivingExchange_Data["ItemId"][720027],0)
	 or Item_ChkItem(tThanksGivingExchange_Data["ItemId"][754001],0) or Item_ChkItem(tThanksGivingExchange_Data["ItemId"][753003],0) 
	 or Item_ChkItem(tThanksGivingExchange_Data["ItemId"][723903],0) or Item_ChkItem(tThanksGivingExchange_Data["ItemId"][756001],0) 
	 or Item_ChkItem(tThanksGivingExchange_Data["ItemId"][723727],0)  or Item_ChkItem(tThanksGivingExchange_Data["ItemId"][721261],0) 
	 or Item_ChkItem(tThanksGivingExchange_Data["ItemId"][700041],0)  or Item_ChkItem(tThanksGivingExchange_Data["ItemId"][700031],0) 
	 or Item_ChkItem(tThanksGivingExchange_Data["ItemId"][700021],0) or Item_ChkItem(tThanksGivingExchange_Data["ItemId"][700011],0) 
	 or Item_ChkItem(tThanksGivingExchange_Data["ItemId"][700001],0)  or Item_ChkItem(tThanksGivingExchange_Data["ItemId"][700051],0) 
	 or Item_ChkItem(tThanksGivingExchange_Data["ItemId"][700061],0)  or Item_ChkItem(tThanksGivingExchange_Data["ItemId"][700101],0) or Item_ChkItem(tThanksGivingExchange_Data["ItemId"][720128],0) 
	or Item_ChkItem(tThanksGivingExchange_Data["ItemId"][700121],0) or User_CanPutMoney2Bag(-5000000)  then
		return true
	else
		User_TalkChannel2005(tThanksGivingExchange_Text["NoMaterial"])
		LinkNpcGossipFunc_New(22273,"2-7")
		return false
	end
end


--传参
function ThanksGivingExchange_ChkItem(nItemId)
	local nOnceNum=tThanksGivingExchange_Data["OnceNum"][nItemId]
	tNpcGossip[22273]["OptionFunc7"]="ThanksGivingExchange_HandIn</N>".. nItemId .."</N>" .. 0 .. "</N>"..nOnceNum
	tNpcGossip[22273]["OptionFunc8"]="ThanksGivingExchange_HandIn</N>".. nItemId .."</N>" .. 1 .. "</N>"..nOnceNum
--	User_TalkChannel2005(tostring(nItemId).."  ".."  "..tThanksGivingExchange_Text["ItemName"][nItemId])
	tNpcGossip[22273]["Text221"]=string.format(tThanksGivingExchange_Text[22273]["Text221"],tThanksGivingExchange_Text["ItemName"][nItemId])
	LinkNpcGossipFunc_New(22273,"2-2")
end

--传参
function ThanksGivingExchange_ChkItemQinXin(nItemId1,nItemId2)
	local nOnceNum=tThanksGivingExchange_Data["OnceNum"][nItemId1]
	tNpcGossip[22273]["OptionFunc7"]="ThanksGivingExchange_HandInQinXin</N>".. nItemId1 .."</N>" .. nItemId2 .."</N>" .. 0
	tNpcGossip[22273]["OptionFunc8"]=nil
	tNpcGossip[22273]["OptionPoint8"]="2-8"
	tNpcGossip[22273]["Text221"]=string.format(tThanksGivingExchange_Text[22273]["Text221"],tThanksGivingExchange_Text["ItemName"][nItemId1])
	LinkNpcGossipFunc_New(22273,"2-2")
end





----------------------------------通用逻辑部分---------------------------------------------
function ThanksGivingExchange_StcAdd(nItemId,nNum)
	tThanksGivingExchange_Stc[nItemId]["AddNum"] =nNum
	Task_AddStatistic(tThanksGivingExchange_Stc[nItemId]["Event"] ,tThanksGivingExchange_Stc[nItemId]["Type"],tThanksGivingExchange_Stc[nItemId]["AddNum"] ,1)
	Task_SetStcTimestamp(tThanksGivingExchange_Stc[nItemId]["Event"] ,tThanksGivingExchange_Stc[nItemId]["Type"],0)
end

----------------------------------NPC部分---------------------------------------------

--炼金术士费伦
tNpcFace[5793] = 235
tNpcGossip[22274]= tNpcGossip[22274] or DefaultNpc:new{}
tNpcGossip[22274]["OptionHidden"] = 1

--炼金术士费伦 活动前
tNpcGossip[22274]["Text1-1"] = {111,112}
tNpcGossip[22274]["Text111"] = tThanksGivingExchange_Text[22274]["Text111"]
tNpcGossip[22274]["Text112"] = tThanksGivingExchange_Text[22274]["Text112"]
tNpcGossip[22274]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["ThankGivingExchange"]["BeforeActiveTime"])
end
tNpcGossip[22274]["tOption1-1"] = {1}
tNpcGossip[22274]["Option1"] = tThanksGivingExchange_Text[22274]["Option1"] 

--炼金术士费伦 活动中
tNpcGossip[22274]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[22274]["Text121"] =tThanksGivingExchange_Text[22274]["Text121"]
tNpcGossip[22274]["Text122"] =tThanksGivingExchange_Text[22274]["Text122"]
tNpcGossip[22274]["Text123"] =tThanksGivingExchange_Text[22274]["Text123"]
tNpcGossip[22274]["Text124"] =tThanksGivingExchange_Text[22274]["Text124"]
tNpcGossip[22274]["Text125"] =tThanksGivingExchange_Text[22274]["Text125"]
tNpcGossip[22274]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tActivityTime["ThankGivingExchange"]["ActiveTime"])
end
tNpcGossip[22274]["tOption1-2"] = {2,3}
tNpcGossip[22274]["Option2"] = tThanksGivingExchange_Text[22274]["Option2"] 
tNpcGossip[22274]["OptionFunc2"]="ThanksGivingExchange_OpenExchangeShop</N>22274"
tNpcGossip[22274]["Option3"] = tThanksGivingExchange_Text[22274]["Option3"] 
tNpcGossip[22274]["OptionPoint3"] ="2-1"

--接option3 
tNpcGossip[22274]["Text2-1"] = {211,212,213}
tNpcGossip[22274]["Text211"] = tThanksGivingExchange_Text[22274]["Text211"]
tNpcGossip[22274]["Text212"] =tThanksGivingExchange_Text[22274]["Text212"]
tNpcGossip[22274]["Text213"] =tThanksGivingExchange_Text[22274]["Text213"]
tNpcGossip[22274]["ChkFunc2-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["ThankGivingExchange"]["ActiveTime"])
end
tNpcGossip[22274]["tOption2-1"] = {4,5}
tNpcGossip[22274]["Option4"] = tThanksGivingExchange_Text[22274]["Option4"] 
tNpcGossip[22274]["OptionPoint4"] ="2-2"
tNpcGossip[22274]["Option5"] = tThanksGivingExchange_Text[22274]["Option5"] 
tNpcGossip[22274]["OptionPoint5"] ="1-2"

--接option4
tNpcGossip[22274]["Text2-2"] = {221,222,223,224,225}
tNpcGossip[22274]["Text221"] =tThanksGivingExchange_Text[22274]["Text221"]
tNpcGossip[22274]["Text222"] =tThanksGivingExchange_Text[22274]["Text222"]
tNpcGossip[22274]["Text223"] =tThanksGivingExchange_Text[22274]["Text223"]
tNpcGossip[22274]["Text224"] =tThanksGivingExchange_Text[22274]["Text224"]
tNpcGossip[22274]["Text225"] =tThanksGivingExchange_Text[22274]["Text225"]
tNpcGossip[22274]["ChkFunc2-2"] = function ()
	return Sys_ChkFullTime(tActivityTime["ThankGivingExchange"]["ActiveTime"])
end
tNpcGossip[22274]["tOption2-2"] = {6}
tNpcGossip[22274]["Option6"] = tThanksGivingExchange_Text[22274]["Option5"] 
tNpcGossip[22274]["OptionPoint6"] ="1-2"

--炼金术士费伦 活动后
tNpcGossip[22274]["Text1-3"] = {131,132}
tNpcGossip[22274]["Text131"] =tThanksGivingExchange_Text[22274]["Text131"]
tNpcGossip[22274]["Text132"] =tThanksGivingExchange_Text[22274]["Text132"]
tNpcGossip[22274]["ChkFunc1-3"] = function ()
	return not Sys_ChkFullTime(tActivityTime["ThankGivingExchange"]["ActiveTime"])
end
tNpcGossip[22274]["tOption1-3"] = {7}
tNpcGossip[22274]["Option7"] = tThanksGivingExchange_Text[22274]["Option6"]


--奥术炼炉
tNpcFace[284] = 865
tNpcGossip[22273]= tNpcGossip[22273] or DefaultNpc:new{}
tNpcGossip[22273]["OptionHidden"] = 1
tNpcGossip[22273]["nPageNum"] = 12
--奥术炼炉 活动前
tNpcGossip[22273]["Text1-1"] = {111,112}
tNpcGossip[22273]["Text111"] = tThanksGivingExchange_Text[22273]["Text111"]
tNpcGossip[22273]["Text112"] = tThanksGivingExchange_Text[22273]["Text112"]
tNpcGossip[22273]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["ThankGivingExchange"]["BeforeActiveTime"])
end
tNpcGossip[22273]["tOption1-1"] = {1,2}
tNpcGossip[22273]["Option1"] = tThanksGivingExchange_Text[22273]["Option1"] 
tNpcGossip[22273]["OptionFunc1"]="ThanksGivingExchange_GotoSomeWhere</N>22274"
tNpcGossip[22273]["Option2"] = tThanksGivingExchange_Text[22273]["Option2"] 

--奥术炼炉 活动中
tNpcGossip[22273]["Text1-2"] = {121,122,123,124}
tNpcGossip[22273]["Text121"] =tThanksGivingExchange_Text[22273]["Text121"]
tNpcGossip[22273]["Text122"] =tThanksGivingExchange_Text[22273]["Text122"]
tNpcGossip[22273]["Text123"] =tThanksGivingExchange_Text[22273]["Text123"]
tNpcGossip[22273]["Text124"] =tThanksGivingExchange_Text[22273]["Text124"]
tNpcGossip[22273]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tActivityTime["ThankGivingExchange"]["ActiveTime"])
end
tNpcGossip[22273]["tOption1-2"] = {3,4}
tNpcGossip[22273]["Option3"] = tThanksGivingExchange_Text[22273]["Option3"] 
tNpcGossip[22273]["OptionPoint3"]="2-1"
tNpcGossip[22273]["Option4"] = tThanksGivingExchange_Text[22273]["Option4"]
 -- tNpcGossip[22273]["OptionFunc4"]=function ()
 -- tNpcGossip[22273]["Option10"]=tThanksGivingExchange_Text[22274]["Option5"] 
-- end
tNpcGossip[22273]["OptionPoint4"]="2-3"

--接Option3 2-1
tNpcGossip[22273]["Text2-1"] = {211,212,213,214,215}
tNpcGossip[22273]["Text211"]=tThanksGivingExchange_Text[22273]["Text231"]
tNpcGossip[22273]["Text212"] =tThanksGivingExchange_Text[22273]["Text232"]
tNpcGossip[22273]["Text213"] =tThanksGivingExchange_Text[22273]["Text233"]
tNpcGossip[22273]["Text214"] =tThanksGivingExchange_Text[22273]["Text234"]
tNpcGossip[22273]["Text215"] =tThanksGivingExchange_Text[22273]["Text235"]
tNpcGossip[22273]["ChkFunc2-1"] = function ()
	return ThanksGivingExchange_NoMaterial()
end
tNpcGossip[22273]["tOption2-1"] = {12,13,14,15,16,17,18,19,20,21,22,23}
tNpcGossip[22273]["Option12"] = tThanksGivingExchange_Text["ItemName"][1080001]
tNpcGossip[22273]["OptionChkFunc12"] = function ()
	-- --return ThanksGivingExchange_ChkMaterial(1)
	-- return ThanksGivingExchange_ChkMaterial(1080001)
	 if Item_ChkItem(tThanksGivingExchange_Data["ItemId"][1080001],0) then
		return true 
	else 
		return false
	end
end
tNpcGossip[22273]["OptionFunc12"]="ThanksGivingExchange_ChkItem</N>1080001"

tNpcGossip[22273]["Option13"] = tThanksGivingExchange_Text["ItemName"][720027]
tNpcGossip[22273]["OptionChkFunc13"] = function ()
	-- return ThanksGivingExchange_ChkMaterial(720027)
	 if Item_ChkItem(tThanksGivingExchange_Data["ItemId"][720027],0) then
		return true 
	else 
		return false
	end
end
tNpcGossip[22273]["OptionFunc13"]="ThanksGivingExchange_ChkItem</N>720027"

tNpcGossip[22273]["Option14"] = tThanksGivingExchange_Text["ItemName"][754001]
tNpcGossip[22273]["OptionChkFunc14"] = function ()
	-- return ThanksGivingExchange_ChkMaterial(754001)
	 if Item_ChkItem(tThanksGivingExchange_Data["ItemId"][754001],0) then
		return true 
	else 
		return false
	end
end
tNpcGossip[22273]["OptionFunc14"]="ThanksGivingExchange_ChkItem</N>754001"

tNpcGossip[22273]["Option15"] = tThanksGivingExchange_Text["ItemName"][753003]
tNpcGossip[22273]["OptionChkFunc15"] = function ()
	-- return ThanksGivingExchange_ChkMaterial(753003)
	 if Item_ChkItem(tThanksGivingExchange_Data["ItemId"][753003],0) then
		return true 
	else 
		return false
	end
end
tNpcGossip[22273]["OptionFunc15"]="ThanksGivingExchange_ChkItem</N>753003"

tNpcGossip[22273]["Option16"] = tThanksGivingExchange_Text["ItemName"][723903]
tNpcGossip[22273]["OptionChkFunc16"] = function ()
	-- return ThanksGivingExchange_ChkMaterial(723903)
	 if Item_ChkItem(tThanksGivingExchange_Data["ItemId"][723903],0) then
		return true 
	else 
		return false
	end
end
tNpcGossip[22273]["OptionFunc16"]="ThanksGivingExchange_ChkItem</N>723903"

tNpcGossip[22273]["Option17"] = tThanksGivingExchange_Text["ItemName"][756001]
tNpcGossip[22273]["OptionChkFunc17"] = function ()
	-- return ThanksGivingExchange_ChkMaterial(756001)
	 if Item_ChkItem(tThanksGivingExchange_Data["ItemId"][756001],0) then
		return true 
	else 
		return false
	end
end
tNpcGossip[22273]["OptionFunc17"]="ThanksGivingExchange_ChkItem</N>756001"

tNpcGossip[22273]["Option18"] = tThanksGivingExchange_Text["ItemName"][723727]
tNpcGossip[22273]["OptionChkFunc18"] = function ()
	-- return ThanksGivingExchange_ChkMaterial(723727)
	 if Item_ChkItem(tThanksGivingExchange_Data["ItemId"][723727],0) or Item_ChkItem(tThanksGivingExchange_Data["ItemId"][720128],0) then
		return true 
	else 
		return false
	end
end
tNpcGossip[22273]["OptionFunc18"]="ThanksGivingExchange_ChkItemQinXin</N>723727</N>720128"

tNpcGossip[22273]["Option19"] = tThanksGivingExchange_Text["ItemName"][721261]
tNpcGossip[22273]["OptionChkFunc19"] = function ()
	-- return ThanksGivingExchange_ChkMaterial(721261)
	 if Item_ChkItem(tThanksGivingExchange_Data["ItemId"][721261],0) then
		return true 
	else 
		return false
	end
end
tNpcGossip[22273]["OptionFunc19"]="ThanksGivingExchange_ChkItem</N>721261"

tNpcGossip[22273]["Option20"] = tThanksGivingExchange_Text["ItemName"][1]
tNpcGossip[22273]["OptionChkFunc20"] = function ()
	-- return ThanksGivingExchange_ChkMaterial(9)
	 if Item_ChkItem(700041,0) or Item_ChkItem(700031,0) or Item_ChkItem(700021,0) or Item_ChkItem(700011,0) or Item_ChkItem(700001,0) or Item_ChkItem(700051,0) or Item_ChkItem(700061,0) then
		return true 
	else 
		return false
	end
end
tNpcGossip[22273]["OptionPoint20"]="2-4"

tNpcGossip[22273]["Option21"] = tThanksGivingExchange_Text["ItemName"][2]
tNpcGossip[22273]["OptionChkFunc21"] = function ()
	-- return ThanksGivingExchange_ChkMaterial(10)
	 if Item_ChkItem(tThanksGivingExchange_Data["ItemId"][700101],0) or Item_ChkItem(tThanksGivingExchange_Data["ItemId"][700121],0) then
		return true 
	else 
		return false
	end
end
tNpcGossip[22273]["OptionPoint21"]="2-5"

tNpcGossip[22273]["Option22"] = tThanksGivingExchange_Text["ItemName"][3]
tNpcGossip[22273]["OptionChkFunc22"] = function ()
	-- return ThanksGivingExchange_ChkMaterial(11)
	if User_CanPutMoney2Bag(-5000000)  then 
		 return true 
	 else
		return false
	end
end
tNpcGossip[22273]["OptionPoint22"]="2-6"

tNpcGossip[22273]["Option23"] = tThanksGivingExchange_Text[22273]["Option5"] 



--接ItemName 2-2
tNpcGossip[22273]["Text2-2"] = {221}
tNpcGossip[22273]["Text221"]=tThanksGivingExchange_Text[22273]["Text221"]
tNpcGossip[22273]["tOption2-2"] = {7,8,9}
tNpcGossip[22273]["Option7"] = tThanksGivingExchange_Text[22273]["Option6"]
tNpcGossip[22273]["Option8"] = tThanksGivingExchange_Text[22273]["Option7"]
tNpcGossip[22273]["Option9"] = tThanksGivingExchange_Text[22273]["Option8"]

--接Option4 2-3
tNpcGossip[22273]["Text2-3"] = {231,232,233,234,235}
tNpcGossip[22273]["Text231"] =tThanksGivingExchange_Text[22273]["Text231"]
tNpcGossip[22273]["Text232"] =tThanksGivingExchange_Text[22273]["Text232"]
tNpcGossip[22273]["Text233"] =tThanksGivingExchange_Text[22273]["Text233"]
tNpcGossip[22273]["Text234"] =tThanksGivingExchange_Text[22273]["Text234"]
tNpcGossip[22273]["Text235"] =tThanksGivingExchange_Text[22273]["Text235"]
tNpcGossip[22273]["tOption2-3"] = {10}
tNpcGossip[22273]["Option10"]=tThanksGivingExchange_Text[22274]["Option5"] 
tNpcGossip[22273]["OptionPoint10"] ="1-2"


--宝石 2-4 2-5
tNpcGossip[22273]["Text2-4"] = {241}
tNpcGossip[22273]["Text241"]=tThanksGivingExchange_Text[22273]["Text211"]
tNpcGossip[22273]["ChkFunc2-4"] = function ()
	 if Item_ChkItem(700041,0) or Item_ChkItem(700031,0) or Item_ChkItem(700021,0) or Item_ChkItem(700011,0) or Item_ChkItem(700001,0) or Item_ChkItem(700051,0) or Item_ChkItem(700061,0) then
		return true 
	else 
		local sText=string.format(tThanksGivingExchange_Text["FireFail"],tThanksGivingExchange_Text["ItemName"][1])
		Sys_MsgBox(sText)
		return false
	end
end
tNpcGossip[22273]["tOption2-4"] = {241,242,243,244,245,246,247}
tNpcGossip[22273]["Option241"]=tThanksGivingExchange_Text["ItemName"][700041]
tNpcGossip[22273]["OptionChkFunc241"] = function ()
if not Item_ChkItem(tThanksGivingExchange_Data["ItemId"][700041],0) then
	return false 
else
	return true
end
end
tNpcGossip[22273]["OptionFunc241"]="ThanksGivingExchange_ChkItem</N>700041"
tNpcGossip[22273]["OptionPoint241"]="2-2"

tNpcGossip[22273]["Option242"]=tThanksGivingExchange_Text["ItemName"][700031]
tNpcGossip[22273]["OptionChkFunc242"] = function ()
if not Item_ChkItem(tThanksGivingExchange_Data["ItemId"][700031],0) then
	return false 
else
	return true
end
end
tNpcGossip[22273]["OptionFunc242"]="ThanksGivingExchange_ChkItem</N>700031"
tNpcGossip[22273]["OptionPoint242"]="2-2"

tNpcGossip[22273]["Option243"]=tThanksGivingExchange_Text["ItemName"][700021]
tNpcGossip[22273]["OptionChkFunc243"] = function ()
if not Item_ChkItem(tThanksGivingExchange_Data["ItemId"][700021],0) then
	return false 
else
	return true
end
end
tNpcGossip[22273]["OptionFunc243"]="ThanksGivingExchange_ChkItem</N>700021"
tNpcGossip[22273]["OptionPoint243"]="2-2"

tNpcGossip[22273]["Option244"]=tThanksGivingExchange_Text["ItemName"][700011]
tNpcGossip[22273]["OptionChkFunc244"] = function ()
if not Item_ChkItem(tThanksGivingExchange_Data["ItemId"][700011],0) then
	return false 
else
	return true
end
end
tNpcGossip[22273]["OptionFunc244"]="ThanksGivingExchange_ChkItem</N>700011"
tNpcGossip[22273]["OptionPoint244"]="2-2"

tNpcGossip[22273]["Option245"]=tThanksGivingExchange_Text["ItemName"][700001]
tNpcGossip[22273]["OptionChkFunc245"] = function ()
if not Item_ChkItem(tThanksGivingExchange_Data["ItemId"][700001],0) then
	return false 
else
	return true
end
end
tNpcGossip[22273]["OptionFunc245"]="ThanksGivingExchange_ChkItem</N>700001"
tNpcGossip[22273]["OptionPoint245"]="2-2"

tNpcGossip[22273]["Option246"]=tThanksGivingExchange_Text["ItemName"][700051]
tNpcGossip[22273]["OptionChkFunc246"] = function ()
if not Item_ChkItem(tThanksGivingExchange_Data["ItemId"][700051],0) then
	return false 
else
	return true
end
end
tNpcGossip[22273]["OptionFunc246"]="ThanksGivingExchange_ChkItem</N>700051"
tNpcGossip[22273]["OptionPoint246"]="2-2"

tNpcGossip[22273]["Option247"]=tThanksGivingExchange_Text["ItemName"][700061]
tNpcGossip[22273]["OptionChkFunc247"] = function ()
if not Item_ChkItem(tThanksGivingExchange_Data["ItemId"][700061],0) then
	return false 
else
	return true
end
end
tNpcGossip[22273]["OptionFunc247"]="ThanksGivingExchange_ChkItem</N>700061"
tNpcGossip[22273]["OptionPoint247"]="2-2"

--2-5
tNpcGossip[22273]["Text2-5"] = {251}
tNpcGossip[22273]["Text251"]=tThanksGivingExchange_Text[22273]["Text211"]
tNpcGossip[22273]["ChkFunc2-5"] = function ()
	 if Item_ChkItem(tThanksGivingExchange_Data["ItemId"][700101],0) or Item_ChkItem(tThanksGivingExchange_Data["ItemId"][700121],0) then
		return true 
	else 
		local sText=string.format(tThanksGivingExchange_Text["FireFail"],tThanksGivingExchange_Text["ItemName"][2])
		Sys_MsgBox(sText)
		return false
	end
end
tNpcGossip[22273]["tOption2-5"] = {251,252}
tNpcGossip[22273]["Option251"]=tThanksGivingExchange_Text["ItemName"][700101]
tNpcGossip[22273]["OptionChkFunc251"] = function ()
if not Item_ChkItem(tThanksGivingExchange_Data["ItemId"][700101],0) then
	return false 
else
	return true
end
end
tNpcGossip[22273]["OptionFunc251"]="ThanksGivingExchange_ChkItem</N>700101"
tNpcGossip[22273]["OptionPoint251"]="2-2"

tNpcGossip[22273]["Option252"]=tThanksGivingExchange_Text["ItemName"][700121]
tNpcGossip[22273]["OptionChkFunc252"] = function ()
if not Item_ChkItem(tThanksGivingExchange_Data["ItemId"][700121],0) then
	return false 
else
	return true
end
end
tNpcGossip[22273]["OptionFunc252"]="ThanksGivingExchange_ChkItem</N>700121"
tNpcGossip[22273]["OptionPoint252"]="2-2"


--2-6
tNpcGossip[22273]["Text2-6"] = {261}
tNpcGossip[22273]["Text261"]=tThanksGivingExchange_Text[22273]["Text261"]
tNpcGossip[22273]["tOption2-6"] = {261,262,263}
tNpcGossip[22273]["Option261"]=tThanksGivingExchange_Text[22273]["Option261"]
tNpcGossip[22273]["OptionFunc261"]="ThanksGivingExchange_HandInMoney</N>5000000</N>0"
tNpcGossip[22273]["Option262"]=tThanksGivingExchange_Text[22273]["Option262"]
tNpcGossip[22273]["OptionFunc262"]="ThanksGivingExchange_HandInMoney</N>5000000</N>1"
tNpcGossip[22273]["Option263"]=tThanksGivingExchange_Text[22273]["Option8"]

--2-7
tNpcGossip[22273]["Text2-7"] = {271,272,273,274,275}
tNpcGossip[22273]["Text271"] =tThanksGivingExchange_Text[22273]["Text231"]
tNpcGossip[22273]["Text272"] =tThanksGivingExchange_Text[22273]["Text232"]
tNpcGossip[22273]["Text273"] =tThanksGivingExchange_Text[22273]["Text233"]
tNpcGossip[22273]["Text274"] =tThanksGivingExchange_Text[22273]["Text234"]
tNpcGossip[22273]["Text275"] =tThanksGivingExchange_Text[22273]["Text235"]
tNpcGossip[22273]["tOption2-7"] = {273}
tNpcGossip[22273]["Option273"]=tThanksGivingExchange_Text[22273]["Option263"]
tNpcGossip[22273]["OptionPoint273"] ="1-2"

--2-8 二次确认
tNpcGossip[22273]["Text2-8"] = {281}
tNpcGossip[22273]["Text281"] =tThanksGivingExchange_Text[22273]["Text281"]
tNpcGossip[22273]["tOption2-8"] = {281,282}
tNpcGossip[22273]["Option281"]=tThanksGivingExchange_Text[22273]["Option281"]
tNpcGossip[22273]["OptionFunc281"]="ThanksGivingExchange_HandInQinXin</N>".. 723727 .."</N>" .. 720128 .."</N>" .. 1
tNpcGossip[22273]["Option282"]=tThanksGivingExchange_Text[22273]["Option282"]

--活动后 奥术炼炉 1-3
tNpcGossip[22273]["Text1-3"] = {131}
tNpcGossip[22273]["Text131"]=tThanksGivingExchange_Text[22273]["Text131"]
tNpcGossip[22273]["ChkFunc1-3"] = function ()
	return not Sys_ChkFullTime(tActivityTime["ThankGivingExchange"]["ActiveTime"])
end
tNpcGossip[22273]["tOption1-3"] = {11}
tNpcGossip[22273]["Option11"]=tThanksGivingExchange_Text[22273]["Option9"]


---------------------------------物品部分---------------------------------------------
--------物品无对白模板
---- 使用奖盘
tItem[3305784] = tItem[3305784] or {}
tItem[3305784]["Function"] = function(nItemId,sItemName)
	RouletteMould_Main(6840)
end

tItem[3305785] = tItem[3305785] or {}
tItem[3305785]["Function"] = function(nItemId,sItemName)
	RouletteMould_Main(6841)
end
tItem[3305786] = tItem[3305786] or {}
tItem[3305786]["Function"] = function(nItemId,sItemName)
	RouletteMould_Main(6842)
end
tItem[3305787] = tItem[3305787] or {}
tItem[3305787]["Function"] = function(nItemId,sItemName)
	RouletteMould_Main(6843)
end

--打开礼包
--赤炼石
tItem[3305788] = tItem[3305788] or {}
tItem[3305788]["Function"] = function(nItemId,sItemName)
	ThanksGivingExchange_OpenPackage(nItemId)
end
tItem[3305789] = tItem[3305788] 
tItem[3305790] = tItem[3305788] 
tItem[3305791] = tItem[3305788] 
tItem[3305792] = tItem[3305788] 
tItem[3305801] = tItem[3305788] 
tItem[3305802] = tItem[3305788] 
--星陨石
tItem[3305793] = tItem[3305788] 
tItem[3305794] = tItem[3305788] 
tItem[3305795] = tItem[3305788] 
tItem[3305796] = tItem[3305788] 
tItem[3305797] = tItem[3305788] 
tItem[3305798] = tItem[3305788] 
tItem[3305803] = tItem[3305788] 
--气力值
tItem[3305799] = tItem[3305788] 
tItem[3305800] = tItem[3305788] 
--使用魔盘
tItem[3305809]=tItem[3305788]

---------------------------------排位赛---------------------------------------------
-- 个人排位赛：	参赛场
tArenicCompetes["tFunction"] = tArenicCompetes["tFunction"] or {}
table.insert(tArenicCompetes["tFunction"],tThanksGivingExchange_Competes)