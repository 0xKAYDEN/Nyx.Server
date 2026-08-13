------------------------------------------------------------------------------------
--Name：            180319[英文征服][活动脚本]百宝轮盘大促销
--Creator:      李甲
--Created:     2018/03/19
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tBaibaoRouletteSales_Const = {}
	tBaibaoRouletteSales_Const["ActivityTime"] = tActivityTime["BaibaoRouletteSales"]["Activity"]

local tBaibaoRouletteSales_Reward = {}
	--+4StonePack
	tBaibaoRouletteSales_Reward[3307901] = {}
	tBaibaoRouletteSales_Reward[3307901]["Log"] = 12001033
	tBaibaoRouletteSales_Reward[3307901]["DeleteItem"] = {}
	tBaibaoRouletteSales_Reward[3307901]["DeleteItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307901]["DeleteItem"][1]["Id"] = 3307901
	tBaibaoRouletteSales_Reward[3307901]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3307901]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3307901]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3307901]["RewardItem"] = {}
	tBaibaoRouletteSales_Reward[3307901]["RewardItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307901]["RewardItem"][1]["Id"] = 730004 
	tBaibaoRouletteSales_Reward[3307901]["RewardItem"][1]["Attr"] = "0 1"
	
	--+6StonePack
	tBaibaoRouletteSales_Reward[3307902] = {}
	tBaibaoRouletteSales_Reward[3307902]["Log"] = 12001033
	tBaibaoRouletteSales_Reward[3307902]["DeleteItem"] = {}
	tBaibaoRouletteSales_Reward[3307902]["DeleteItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307902]["DeleteItem"][1]["Id"] = 3307902
	tBaibaoRouletteSales_Reward[3307902]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3307902]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3307902]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3307902]["RewardItem"] = {}
	tBaibaoRouletteSales_Reward[3307902]["RewardItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307902]["RewardItem"][1]["Id"] = 730006 
	tBaibaoRouletteSales_Reward[3307902]["RewardItem"][1]["Attr"] = "0 1"
	
	--PermanentStonePack
	tBaibaoRouletteSales_Reward[3307903] = {}
	tBaibaoRouletteSales_Reward[3307903]["Log"] = 12001033
	tBaibaoRouletteSales_Reward[3307903]["DeleteItem"] = {}
	tBaibaoRouletteSales_Reward[3307903]["DeleteItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307903]["DeleteItem"][1]["Id"] = 3307903
	tBaibaoRouletteSales_Reward[3307903]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3307903]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3307903]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3307903]["RewardItem"] = {}
	tBaibaoRouletteSales_Reward[3307903]["RewardItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307903]["RewardItem"][1]["Id"] = 723694 --固化石
	tBaibaoRouletteSales_Reward[3307903]["RewardItem"][1]["Attr"] = "0 1"
	
	
	
	--3000分钟经验礼包
	tBaibaoRouletteSales_Reward[3307797] = {}
	tBaibaoRouletteSales_Reward[3307797]["Log"] = 12001033
	tBaibaoRouletteSales_Reward[3307797]["DeleteItem"] = {}
	tBaibaoRouletteSales_Reward[3307797]["DeleteItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307797]["DeleteItem"][1]["Id"] = 3307797
	tBaibaoRouletteSales_Reward[3307797]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3307797]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3307797]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3307797]["RewardExpTime"] = {}
	tBaibaoRouletteSales_Reward[3307797]["RewardExpTime"]["Value"] = 3000
	
	--+8赤练石礼包
	tBaibaoRouletteSales_Reward[3307798] = {}
	tBaibaoRouletteSales_Reward[3307798]["Log"] = 12001033
	tBaibaoRouletteSales_Reward[3307798]["KeyNum"] = 5
	tBaibaoRouletteSales_Reward[3307798]["DeleteItem"] = {}
	tBaibaoRouletteSales_Reward[3307798]["DeleteItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307798]["DeleteItem"][1]["Id"] = 3307798
	tBaibaoRouletteSales_Reward[3307798]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3307798]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3307798]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3307798]["RewardItem"] = {}
	tBaibaoRouletteSales_Reward[3307798]["RewardItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307798]["RewardItem"][1]["Id"] = 730008 
	tBaibaoRouletteSales_Reward[3307798]["RewardItem"][1]["Attr"] = "0 1"
	tBaibaoRouletteSales_Reward[3307798]["RewardItem"][2] = {}
	tBaibaoRouletteSales_Reward[3307798]["RewardItem"][2]["Id"] = 3307796 
	tBaibaoRouletteSales_Reward[3307798]["RewardItem"][2]["Attr"] = "0 5"
	tBaibaoRouletteSales_Reward[3307798]["RewardNoNeedTip"] = 1 
	
	--大固化石礼包
	tBaibaoRouletteSales_Reward[3307799] = {}
	tBaibaoRouletteSales_Reward[3307799]["Log"] = 12001033
	tBaibaoRouletteSales_Reward[3307799]["KeyNum"] = 1
	tBaibaoRouletteSales_Reward[3307799]["DeleteItem"] = {}
	tBaibaoRouletteSales_Reward[3307799]["DeleteItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307799]["DeleteItem"][1]["Id"] = 3307799
	tBaibaoRouletteSales_Reward[3307799]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3307799]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3307799]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3307799]["RewardItem"] = {}
	tBaibaoRouletteSales_Reward[3307799]["RewardItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307799]["RewardItem"][1]["Id"] = 723695 
	tBaibaoRouletteSales_Reward[3307799]["RewardItem"][1]["Attr"] = "0 1"
	tBaibaoRouletteSales_Reward[3307799]["RewardItem"][2] = {}
	tBaibaoRouletteSales_Reward[3307799]["RewardItem"][2]["Id"] = 3307796 
	tBaibaoRouletteSales_Reward[3307799]["RewardItem"][2]["Attr"] = "0 1"
	tBaibaoRouletteSales_Reward[3307799]["RewardNoNeedTip"] = 1 
	
	--晶莹星陨石*10礼包
	tBaibaoRouletteSales_Reward[3307800] = {}
	tBaibaoRouletteSales_Reward[3307800]["Log"] = 12001033
	tBaibaoRouletteSales_Reward[3307800]["KeyNum"] = 1
	tBaibaoRouletteSales_Reward[3307800]["DeleteItem"] = {}
	tBaibaoRouletteSales_Reward[3307800]["DeleteItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307800]["DeleteItem"][1]["Id"] = 3307800
	tBaibaoRouletteSales_Reward[3307800]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3307800]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3307800]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3307800]["RewardItem"] = {}
	tBaibaoRouletteSales_Reward[3307800]["RewardItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307800]["RewardItem"][1]["Id"] = 3009002 
	tBaibaoRouletteSales_Reward[3307800]["RewardItem"][1]["Attr"] = "0 10 0 2880 1"
	tBaibaoRouletteSales_Reward[3307800]["RewardItem"][2] = {}
	tBaibaoRouletteSales_Reward[3307800]["RewardItem"][2]["Id"] = 3307796 
	tBaibaoRouletteSales_Reward[3307800]["RewardItem"][2]["Attr"] = "0 1"
	tBaibaoRouletteSales_Reward[3307800]["RewardNoNeedTip"] = 1 
	
	--秘制免费修炼丹*100礼包
	tBaibaoRouletteSales_Reward[3307801] = {}
	tBaibaoRouletteSales_Reward[3307801]["Log"] = 12001033
	tBaibaoRouletteSales_Reward[3307801]["DeleteItem"] = {}
	tBaibaoRouletteSales_Reward[3307801]["DeleteItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307801]["DeleteItem"][1]["Id"] = 3307801
	tBaibaoRouletteSales_Reward[3307801]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3307801]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3307801]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3307801]["RewardItem"] = {}
	tBaibaoRouletteSales_Reward[3307801]["RewardItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307801]["RewardItem"][1]["Id"] = 3002926 
	tBaibaoRouletteSales_Reward[3307801]["RewardItem"][1]["Attr"] = "0 100"
	
	--究极通神丹(赠) *100礼包
	tBaibaoRouletteSales_Reward[3307802] = {}
	tBaibaoRouletteSales_Reward[3307802]["Log"] = 12001033
	tBaibaoRouletteSales_Reward[3307802]["DeleteItem"] = {}
	tBaibaoRouletteSales_Reward[3307802]["DeleteItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307802]["DeleteItem"][1]["Id"] = 3307802
	tBaibaoRouletteSales_Reward[3307802]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3307802]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3307802]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3307802]["RewardItem"] = {}
	tBaibaoRouletteSales_Reward[3307802]["RewardItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307802]["RewardItem"][1]["Id"] = 3003126 
	tBaibaoRouletteSales_Reward[3307802]["RewardItem"][1]["Attr"] = "0 100 3"
	
	--小抽奖券*300
	tBaibaoRouletteSales_Reward[3307803] = {}
	tBaibaoRouletteSales_Reward[3307803]["Log"] = 12001033
	tBaibaoRouletteSales_Reward[3307803]["KeyNum"] = 1
	tBaibaoRouletteSales_Reward[3307803]["DeleteItem"] = {}
	tBaibaoRouletteSales_Reward[3307803]["DeleteItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307803]["DeleteItem"][1]["Id"] = 3307803
	tBaibaoRouletteSales_Reward[3307803]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3307803]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3307803]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3307803]["RewardItem"] = {}
	tBaibaoRouletteSales_Reward[3307803]["RewardItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307803]["RewardItem"][1]["Id"] = 711504 
	tBaibaoRouletteSales_Reward[3307803]["RewardItem"][1]["Attr"] = "0 300"
	tBaibaoRouletteSales_Reward[3307803]["RewardItem"][2] = {}
	tBaibaoRouletteSales_Reward[3307803]["RewardItem"][2]["Id"] = 3307796 
	tBaibaoRouletteSales_Reward[3307803]["RewardItem"][2]["Attr"] = "0 1"
	tBaibaoRouletteSales_Reward[3307803]["RewardNoNeedTip"] = 1 
	
	--+4赤练石*2特惠包
	tBaibaoRouletteSales_Reward[3307804] = {}
	tBaibaoRouletteSales_Reward[3307804]["Log"] = 12001033
	tBaibaoRouletteSales_Reward[3307804]["NeedEMoney"] = 239
	tBaibaoRouletteSales_Reward[3307804]["DeleteItem"] = {}
	tBaibaoRouletteSales_Reward[3307804]["DeleteItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307804]["DeleteItem"][1]["Id"] = 3307804
	tBaibaoRouletteSales_Reward[3307804]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3307804]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3307804]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3307804]["RewardItem"] = {}
	tBaibaoRouletteSales_Reward[3307804]["RewardItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307804]["RewardItem"][1]["Id"] = 730004 
	tBaibaoRouletteSales_Reward[3307804]["RewardItem"][1]["Attr"] = "0 2"
	tBaibaoRouletteSales_Reward[3307804]["EmoneyLog"] = "350	31260	239	239	1	"
	
	--10000气力值特惠包
	tBaibaoRouletteSales_Reward[3307805] = {}
	tBaibaoRouletteSales_Reward[3307805]["Log"] = 12001033
	tBaibaoRouletteSales_Reward[3307805]["NeedEMoney"] = 500
	tBaibaoRouletteSales_Reward[3307805]["DeleteItem"] = {}
	tBaibaoRouletteSales_Reward[3307805]["DeleteItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307805]["DeleteItem"][1]["Id"] = 3307805
	tBaibaoRouletteSales_Reward[3307805]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3307805]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3307805]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3307805]["RewardStrengthValue"] = {}
	tBaibaoRouletteSales_Reward[3307805]["RewardStrengthValue"]["Value"] = 10000
	tBaibaoRouletteSales_Reward[3307805]["EmoneyLog"] = "350	31261	500	500	1	"
	
	--晶莹星陨石*3特惠包
	tBaibaoRouletteSales_Reward[3307806] = {}
	tBaibaoRouletteSales_Reward[3307806]["Log"] = 12001033
	tBaibaoRouletteSales_Reward[3307806]["NeedEMoney"] = 749
	tBaibaoRouletteSales_Reward[3307806]["DeleteItem"] = {}
	tBaibaoRouletteSales_Reward[3307806]["DeleteItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307806]["DeleteItem"][1]["Id"] = 3307806
	tBaibaoRouletteSales_Reward[3307806]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3307806]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3307806]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3307806]["RewardItem"] = {}
	tBaibaoRouletteSales_Reward[3307806]["RewardItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307806]["RewardItem"][1]["Id"] = 3009002 
	tBaibaoRouletteSales_Reward[3307806]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tBaibaoRouletteSales_Reward[3307806]["EmoneyLog"] = "350	31262	749	749	1	"
	
	--晶莹星陨石*5特惠包
	tBaibaoRouletteSales_Reward[3307807] = {}
	tBaibaoRouletteSales_Reward[3307807]["Log"] = 12001033
	tBaibaoRouletteSales_Reward[3307807]["NeedEMoney"] = 1099
	tBaibaoRouletteSales_Reward[3307807]["DeleteItem"] = {}
	tBaibaoRouletteSales_Reward[3307807]["DeleteItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307807]["DeleteItem"][1]["Id"] = 3307807
	tBaibaoRouletteSales_Reward[3307807]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3307807]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3307807]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3307807]["RewardItem"] = {}
	tBaibaoRouletteSales_Reward[3307807]["RewardItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307807]["RewardItem"][1]["Id"] = 3009002 
	tBaibaoRouletteSales_Reward[3307807]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tBaibaoRouletteSales_Reward[3307807]["EmoneyLog"] = "350	31263	1099	1099	1	"
	
	--90天玫瑰风暴(赠)特惠包
	tBaibaoRouletteSales_Reward[3307808] = {}
	tBaibaoRouletteSales_Reward[3307808]["Log"] = 12001033
	tBaibaoRouletteSales_Reward[3307808]["NeedEMoney"] = 99
	tBaibaoRouletteSales_Reward[3307808]["DeleteItem"] = {}
	tBaibaoRouletteSales_Reward[3307808]["DeleteItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307808]["DeleteItem"][1]["Id"] = 3307808
	tBaibaoRouletteSales_Reward[3307808]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3307808]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3307808]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3307808]["RewardItem"] = {}
	tBaibaoRouletteSales_Reward[3307808]["RewardItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307808]["RewardItem"][1]["Id"] = 3306357 
	tBaibaoRouletteSales_Reward[3307808]["RewardItem"][1]["Attr"] = "0 1"
	tBaibaoRouletteSales_Reward[3307808]["EmoneyLog"] = "350	31264	99	99	1	"
	
	--10000天石(赠)特惠包
	tBaibaoRouletteSales_Reward[3307809] = {}
	tBaibaoRouletteSales_Reward[3307809]["Log"] = 12001033
	tBaibaoRouletteSales_Reward[3307809]["NeedEMoney"] = 2000
	tBaibaoRouletteSales_Reward[3307809]["DeleteItem"] = {}
	tBaibaoRouletteSales_Reward[3307809]["DeleteItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307809]["DeleteItem"][1]["Id"] = 3307809
	tBaibaoRouletteSales_Reward[3307809]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3307809]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3307809]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3307809]["RewardEMoneyMono"] = {}
	tBaibaoRouletteSales_Reward[3307809]["RewardEMoneyMono"]["Value"] = 10000
	tBaibaoRouletteSales_Reward[3307809]["EmoneyLog"] = "350	31265	2000	2000	1	"
	
	--90天XmasBunny (赠)特惠包
	tBaibaoRouletteSales_Reward[3307810] = {}
	tBaibaoRouletteSales_Reward[3307810]["Log"] = 12001033
	tBaibaoRouletteSales_Reward[3307810]["NeedEMoney"] = 99
	tBaibaoRouletteSales_Reward[3307810]["DeleteItem"] = {}
	tBaibaoRouletteSales_Reward[3307810]["DeleteItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307810]["DeleteItem"][1]["Id"] = 3307810
	tBaibaoRouletteSales_Reward[3307810]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3307810]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3307810]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3307810]["RewardItem"] = {}
	tBaibaoRouletteSales_Reward[3307810]["RewardItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307810]["RewardItem"][1]["Id"] = 193115 
	tBaibaoRouletteSales_Reward[3307810]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1"
	tBaibaoRouletteSales_Reward[3307810]["EmoneyLog"] = "350	31266	99	99	1	"
	
	--至珍百宝袋
	tBaibaoRouletteSales_Reward[3307811] = {}
	tBaibaoRouletteSales_Reward[3307811]["Log"] = 12001033
	tBaibaoRouletteSales_Reward[3307811]["NeedEMoney"] = 13999
	tBaibaoRouletteSales_Reward[3307811]["DeleteItem"] = {}
	tBaibaoRouletteSales_Reward[3307811]["DeleteItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307811]["DeleteItem"][1]["Id"] = 3307811
	tBaibaoRouletteSales_Reward[3307811][1] = {}
	tBaibaoRouletteSales_Reward[3307811][1]["ItemChanceSum"] = 10000
	tBaibaoRouletteSales_Reward[3307811][1][1] = {}
	tBaibaoRouletteSales_Reward[3307811][1][1]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3307811][1][1]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3307811][1][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3307811][1][1]["RandomItemChanceType"] = 2
	tBaibaoRouletteSales_Reward[3307811][1][1]["ItemChance"] = 2100
	tBaibaoRouletteSales_Reward[3307811][1][1]["RewardItem"] = {}
	tBaibaoRouletteSales_Reward[3307811][1][1]["RewardItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307811][1][1]["RewardItem"][1]["Id"] = 3008000
	tBaibaoRouletteSales_Reward[3307811][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tBaibaoRouletteSales_Reward[3307811][1][2] = {}
	tBaibaoRouletteSales_Reward[3307811][1][2]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3307811][1][2]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3307811][1][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3307811][1][2]["RandomItemChanceType"] = 2
	tBaibaoRouletteSales_Reward[3307811][1][2]["ItemChance"] = 2000
	tBaibaoRouletteSales_Reward[3307811][1][2]["RewardItem"] = {}
	tBaibaoRouletteSales_Reward[3307811][1][2]["RewardItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307811][1][2]["RewardItem"][1]["Id"] = 3307812
	tBaibaoRouletteSales_Reward[3307811][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tBaibaoRouletteSales_Reward[3307811][1][3] = {}
	tBaibaoRouletteSales_Reward[3307811][1][3]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3307811][1][3]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3307811][1][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3307811][1][3]["RandomItemChanceType"] = 2
	tBaibaoRouletteSales_Reward[3307811][1][3]["ItemChance"] = 100
	tBaibaoRouletteSales_Reward[3307811][1][3]["RewardItem"] = {}
	tBaibaoRouletteSales_Reward[3307811][1][3]["RewardItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307811][1][3]["RewardItem"][1]["Id"] = 711903
	tBaibaoRouletteSales_Reward[3307811][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tBaibaoRouletteSales_Reward[3307811][1][4] = {}
	tBaibaoRouletteSales_Reward[3307811][1][4]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3307811][1][4]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3307811][1][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3307811][1][4]["RandomItemChanceType"] = 2
	tBaibaoRouletteSales_Reward[3307811][1][4]["ItemChance"] = 1500
	tBaibaoRouletteSales_Reward[3307811][1][4]["RewardItem"] = {}
	tBaibaoRouletteSales_Reward[3307811][1][4]["RewardItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307811][1][4]["RewardItem"][1]["Id"] = 3307813
	tBaibaoRouletteSales_Reward[3307811][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tBaibaoRouletteSales_Reward[3307811][1][5] = {}
	tBaibaoRouletteSales_Reward[3307811][1][5]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3307811][1][5]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3307811][1][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3307811][1][5]["RandomItemChanceType"] = 2
	tBaibaoRouletteSales_Reward[3307811][1][5]["ItemChance"] = 800
	tBaibaoRouletteSales_Reward[3307811][1][5]["RewardItem"] = {}
	tBaibaoRouletteSales_Reward[3307811][1][5]["RewardItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307811][1][5]["RewardItem"][1]["Id"] = 188495
	tBaibaoRouletteSales_Reward[3307811][1][5]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tBaibaoRouletteSales_Reward[3307811][1][6] = {}
	tBaibaoRouletteSales_Reward[3307811][1][6]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3307811][1][6]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3307811][1][6]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3307811][1][6]["RandomItemChanceType"] = 2
	tBaibaoRouletteSales_Reward[3307811][1][6]["ItemChance"] = 800
	tBaibaoRouletteSales_Reward[3307811][1][6]["RewardItem"] = {}
	tBaibaoRouletteSales_Reward[3307811][1][6]["RewardItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307811][1][6]["RewardItem"][1]["Id"] = 192785
	tBaibaoRouletteSales_Reward[3307811][1][6]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tBaibaoRouletteSales_Reward[3307811][1][7] = {}
	tBaibaoRouletteSales_Reward[3307811][1][7]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3307811][1][7]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3307811][1][7]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3307811][1][7]["RandomItemChanceType"] = 2
	tBaibaoRouletteSales_Reward[3307811][1][7]["ItemChance"] = 1500
	tBaibaoRouletteSales_Reward[3307811][1][7]["RewardItem"] = {}
	tBaibaoRouletteSales_Reward[3307811][1][7]["RewardItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307811][1][7]["RewardItem"][1]["Id"] = 194875
	tBaibaoRouletteSales_Reward[3307811][1][7]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tBaibaoRouletteSales_Reward[3307811][1][8] = {}
	tBaibaoRouletteSales_Reward[3307811][1][8]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3307811][1][8]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3307811][1][8]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3307811][1][8]["RandomItemChanceType"] = 2
	tBaibaoRouletteSales_Reward[3307811][1][8]["ItemChance"] = 1000
	tBaibaoRouletteSales_Reward[3307811][1][8]["RewardItem"] = {}
	tBaibaoRouletteSales_Reward[3307811][1][8]["RewardItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307811][1][8]["RewardItem"][1]["Id"] = 194395
	tBaibaoRouletteSales_Reward[3307811][1][8]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tBaibaoRouletteSales_Reward[3307811][1][9] = {}
	tBaibaoRouletteSales_Reward[3307811][1][9]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3307811][1][9]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3307811][1][9]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3307811][1][9]["RandomItemChanceType"] = 2
	tBaibaoRouletteSales_Reward[3307811][1][9]["ItemChance"] = 200
	tBaibaoRouletteSales_Reward[3307811][1][9]["RewardItem"] = {}
	tBaibaoRouletteSales_Reward[3307811][1][9]["RewardItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307811][1][9]["RewardItem"][1]["Id"] = 193695
	tBaibaoRouletteSales_Reward[3307811][1][9]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"

	--50000天石(赠)特惠包
	tBaibaoRouletteSales_Reward[3307812] = {}
	tBaibaoRouletteSales_Reward[3307812]["LogId"] = 12001033
	tBaibaoRouletteSales_Reward[3307812]["DeleteItem"] = {}
	tBaibaoRouletteSales_Reward[3307812]["DeleteItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307812]["DeleteItem"][1]["Id"] = 3307812
	tBaibaoRouletteSales_Reward[3307812]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3307812]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3307812]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3307812]["RewardEMoneyMono"] = {}
	tBaibaoRouletteSales_Reward[3307812]["RewardEMoneyMono"]["Value"] = 50000
	
	--LoveHat发型可选包
	tBaibaoRouletteSales_Reward[3307813] = {}
	tBaibaoRouletteSales_Reward[3307813]["Log"] = 12001033
	tBaibaoRouletteSales_Reward[3307813][1] = {}
	tBaibaoRouletteSales_Reward[3307813][1]["DeleteItem"] = {}
	tBaibaoRouletteSales_Reward[3307813][1]["DeleteItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307813][1]["DeleteItem"][1]["Id"] = 3307813
	tBaibaoRouletteSales_Reward[3307813][1]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3307813][1]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3307813][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3307813][1]["RewardItem"] = {}
	tBaibaoRouletteSales_Reward[3307813][1]["RewardItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307813][1]["RewardItem"][1]["Id"] = 3005975 --女性发型 
	tBaibaoRouletteSales_Reward[3307813][1]["RewardItem"][1]["Attr"] = "0 1"
	
	tBaibaoRouletteSales_Reward[3307813][2] = {}
	tBaibaoRouletteSales_Reward[3307813][2]["DeleteItem"] = {}
	tBaibaoRouletteSales_Reward[3307813][2]["DeleteItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307813][2]["DeleteItem"][1]["Id"] = 3307813
	tBaibaoRouletteSales_Reward[3307813][2]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3307813][2]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3307813][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3307813][2]["RewardItem"] = {}
	tBaibaoRouletteSales_Reward[3307813][2]["RewardItem"][1] = {}
	tBaibaoRouletteSales_Reward[3307813][2]["RewardItem"][1]["Id"] = 3005978 --男性发型 
	tBaibaoRouletteSales_Reward[3307813][2]["RewardItem"][1]["Attr"] = "0 1"
	
	--LoveHat赠发型可选包
	tBaibaoRouletteSales_Reward[3320765] = {}
	tBaibaoRouletteSales_Reward[3320765]["Log"] = 12001033
	tBaibaoRouletteSales_Reward[3320765][1] = {}
	tBaibaoRouletteSales_Reward[3320765][1]["DeleteItem"] = {}
	tBaibaoRouletteSales_Reward[3320765][1]["DeleteItem"][1] = {}
	tBaibaoRouletteSales_Reward[3320765][1]["DeleteItem"][1]["Id"] = 3320765
	tBaibaoRouletteSales_Reward[3320765][1]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3320765][1]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3320765][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3320765][1]["RewardItem"] = {}
	tBaibaoRouletteSales_Reward[3320765][1]["RewardItem"][1] = {}
	tBaibaoRouletteSales_Reward[3320765][1]["RewardItem"][1]["Id"] = 3005975 --女性发型 
	tBaibaoRouletteSales_Reward[3320765][1]["RewardItem"][1]["Attr"] = "0 1"
	
	tBaibaoRouletteSales_Reward[3320765][2] = {}
	tBaibaoRouletteSales_Reward[3320765][2]["DeleteItem"] = {}
	tBaibaoRouletteSales_Reward[3320765][2]["DeleteItem"][1] = {}
	tBaibaoRouletteSales_Reward[3320765][2]["DeleteItem"][1]["Id"] = 3320765
	tBaibaoRouletteSales_Reward[3320765][2]["SzObj"] = "self"
	tBaibaoRouletteSales_Reward[3320765][2]["RewardEffect"] = {}
	tBaibaoRouletteSales_Reward[3320765][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tBaibaoRouletteSales_Reward[3320765][2]["RewardItem"] = {}
	tBaibaoRouletteSales_Reward[3320765][2]["RewardItem"][1] = {}
	tBaibaoRouletteSales_Reward[3320765][2]["RewardItem"][1]["Id"] = 3005978 --男性发型 
	tBaibaoRouletteSales_Reward[3320765][2]["RewardItem"][1]["Attr"] = "0 1"

local tBaibaoRouletteSales_EmoneBuyLog = {}
	tBaibaoRouletteSales_EmoneBuyLog["SendEmoney"] = "350	31265	0	0	-10000	"
	tBaibaoRouletteSales_EmoneBuyLog[3307811] = "350	31267	13999	13999	1	"


----------------------------------逻辑部分---------------------------------------------
--普通包
function BaibaoRouletteSales_GetGift(nItemId)
	local tReward = tBaibaoRouletteSales_Reward[nItemId]
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tReward)
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tReward)
	local nSpace = nGetRewardSpace - nDelRewardSpace
	local nUserId = Get_UserId()
	
	local nUserMonoEmoney = Get_UserMonoEMoney()
	--提示玩家背包空间不足
	if not RewardTemplate_CheckSpace(tReward,nUserId) then 
		Sys_MsgBox(string.format(tBaibaoRouletteSales_Text["BagFull"],nSpace))
		return 
	end
	--赠点包判断上限
	if nItemId == 3307812 then
		local nGetEMoney = tBaibaoRouletteSales_Reward[nItemId]["RewardEMoneyMono"]["Value"]
		if nGetEMoney + nUserMonoEmoney > G_User_MaxEmoneyMono then
			User_TalkChannel2005(tBaibaoRouletteSales_Text["MoneyFull"]) 
			return 
		end
	end
	local bSuc,sRewardStr = RewardTemplate_UseItem(tReward)
	if (nItemId >= 3307798 and nItemId <= 3307800) or nItemId == 3307803 then
		if tBaibaoRouletteSales_Reward[nItemId]["KeyNum"] ~= nil then
			User_TalkChannel2005(string.format(tBaibaoRouletteSales_Text["GetKey"],sRewardStr,tBaibaoRouletteSales_Reward[nItemId]["KeyNum"]))
		end
	end
end

--支付包
function BaibaoRouletteSales_Gift_GetPay(nItemId)
	local tReward = tBaibaoRouletteSales_Reward[nItemId]
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tReward)
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tReward)
	local nSpace = nGetRewardSpace - nDelRewardSpace
	local nUserId = Get_UserId()
	local nUserMonoEmoney = Get_UserMonoEMoney()
	local nUserEMoney = Get_UserEMoney()
	local nNeedEMoney = tBaibaoRouletteSales_Reward[nItemId]["NeedEMoney"]
	if not Item_ChkItem(nItemId) then
		return
	end
	--提示玩家背包空间不足
	if not RewardTemplate_CheckSpace(tReward,nUserId) then 
		Sys_MsgBox(string.format(tBaibaoRouletteSales_Text["BagFull"],nSpace))
		return 
	end
	--赠点包判断上限
	if nItemId == 3307809 then
		local nGetEMoney = tBaibaoRouletteSales_Reward[nItemId]["RewardEMoneyMono"]["Value"]
		if nGetEMoney + nUserMonoEmoney > G_User_MaxEmoneyMono then
			Sys_MsgBox(tBaibaoRouletteSales_Text["MoneyFull"]) 
			return 
		end
	end
	--天石判断
	if nUserEMoney < nNeedEMoney then
		Sys_MsgBox(string.format(tBaibaoRouletteSales_Text["MoneyLess"],nNeedEMoney))
		return
	end
	if User_AddEMoney(-nNeedEMoney) then
		RewardTemplate_UseItem(tReward)
		if nItemId == 3307809 then
			Sys_SaveEmoneyBuy(tBaibaoRouletteSales_EmoneBuyLog["SendEmoney"]) -- 打log
		end
	end
end
--概率支付包
function BaibaoRouletteSales_Gift_UserRandom(nItemId)
	local tReward = tBaibaoRouletteSales_Reward[nItemId]
	local nNeedEMoney = tBaibaoRouletteSales_Reward[nItemId]["NeedEMoney"]
	local nUserEMoney = Get_UserEMoney()
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	local sItemName = Get_ItemtypeName(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	--天石判断
	if nUserEMoney < nNeedEMoney then
		Sys_MsgBox(string.format(tBaibaoRouletteSales_Text["MoneyLess"],nNeedEMoney))
		return
	end
	--删除礼包
	if not RewardTemplate_DelItem(tReward,nUserId) then
		return false
	end
	if User_AddEMoney(-nNeedEMoney) then
		RewardTemplate_NewRandom(tReward,1)
		Sys_SaveEmoneyBuy(tBaibaoRouletteSales_EmoneBuyLog[nItemId]) -- 打log
		Sys_SystemBroadcast(string.format(tBaibaoRouletteSales_Text["JumboGift"],sUserName,sItemName))
	end
end

--可选包
function BaibaoRouletteSales_Gift_UserSelect(nItemId,nIndex)
	--判断物品
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	local tReward = tBaibaoRouletteSales_Reward[nItemId][nIndex]
	
	local nSpace = RewardTemplate_GetRewardSpace(tReward)+ WarriorsPromotion_JudgeSpace(nItemId)
	
	--若不是打折物品，则直接打开该礼包
	-- local nCutTip = CommonPackage_ExitTicket() 
	local nReturnMoney,tMemoryBin,sEmoneyLog,nZhengItemId = CommonPackage_ReturnPrice(nItemId,1)
	
	if tMemoryBin == nil and nReturnMoney == nil then
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItem(tReward) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return
		end
		return
	end
	
	-- --判断是否在活动时间内

	if not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldActivityTime"]) then
		
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItem(tReward) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return 
		end
	else
		
		--有返利,给玩家返相应的天石
		-- if nCutTip == 2 then
		local nEmoney = Get_UserEMoney()
		if nEmoney + nReturnMoney > G_User_MaxEmoney then
			User_TalkChannel2005(tMayPKMonth_Text["Item"]["Text121"])
			Sys_MsgBox(tMayPKMonth_Text["Item"]["Text121"])
			return
		end
		-- end
		
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItem(tReward) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
			--给玩家对应的印记
			-- CommonPackage_LocationYing(nItemId,nCutTip)
		
			--若是玩家有打折卷则给玩家放对应的天石
			-- if nCutTip == 2  then
				--给对应的天石
			if CommonPackage_DeleteTicket(nZhengItemId,nItemId) and User_AddEMoney(nReturnMoney) then
				Sys_SaveEmoneyBuy(string.format(sEmoneyLog,nReturnMoney,nReturnMoney))
			end
			-- end
		else
			User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
			Sys_MsgBox(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		end
		
	end

	-- local nSpace = RewardTemplate_GetRewardSpace(tReward)+ WarriorsPromotion_JudgeSpace(nItemId)
	-- if User_CheckLeftSpace(nSpace) then
		-- if RewardTemplate_UseItem(tReward) then
			-- WarriorsPromotion_JudgeNinjaItem(nItemId)
		-- end
	-- else
	-- --提示
		-- Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
		-- return 
	-- end
	
end

--打开天石商店
function BaibaoRouletteSales_EnterShop(nNpcId)
	User_OpenDialog(0,nNpcId,0)
end
----------------------------------NPC部分---------------------------------------------
tNpcFace[4933] = 119
tNpcGossip[21456]= tNpcGossip[21456] or DefaultNpc:new{}
tNpcGossip[21456]["OptionHidden"] = 1
tNpcGossip[21456]["DialogueText"] = tBaibaoRouletteSales_Text[21456]
tNpcGossip[21456]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[21456]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tBaibaoRouletteSales_Const["ActivityTime"])
end
tNpcGossip[21456]["tOption1-1"] = {111}
tNpcGossip[21456]["OptionFunc111"] = "BaibaoRouletteSales_EnterShop</N>21456"

tNpcFace[4934] = 111
tNpcGossip[21457]= tNpcGossip[21457] or DefaultNpc:new{}
tNpcGossip[21457]["OptionHidden"] = 1
tNpcGossip[21457]["DialogueText"] = tBaibaoRouletteSales_Text[21457]
tNpcGossip[21457]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[21457]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tBaibaoRouletteSales_Const["ActivityTime"])
end
tNpcGossip[21457]["tOption1-1"] = {111}
tNpcGossip[21457]["OptionFunc111"] = "BaibaoRouletteSales_EnterShop</N>21457"
---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3307901] = tItem[3307901] or {}
tItem[3307901]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tBaibaoRouletteSales_Reward[nItemId])
end
tItem[3307902] = tItem[3307901]
tItem[3307903] = tItem[3307901]

tItem[3307796] = tItem[3307796] or {}
tItem[3307796]["Function"] = function(nItemId,sItemName)
	RouletteMould_Main(6873)
end

tItem[3307797] = tItem[3307797] or {}
tItem[3307797]["Function"] = function(nItemId,sItemName)
	BaibaoRouletteSales_GetGift(nItemId)
end
tItem[3307798] = tItem[3307797]
tItem[3307799] = tItem[3307797]
tItem[3307800] = tItem[3307797]
tItem[3307801] = tItem[3307797]
tItem[3307802] = tItem[3307797]
tItem[3307803] = tItem[3307797]
tItem[3307812] = tItem[3307797]

--------物品有对白模板
tItemFace[3307795] = 1404
tItemFace[3307804] = 1405
tItemFace[3307805] = 1406
tItemFace[3307806] = 1407
tItemFace[3307807] = 1408
tItemFace[3307808] = 1409
tItemFace[3307809] = 1410
tItemFace[3307810] = 1411
tItemFace[3307811] = 1412
tItemFace[3307813] = 1413
tItemFace[3320765] = 1413

tItem[3307804] = tItem[3307804] or {}
tItem[3307804]["DialogueText"] =tBaibaoRouletteSales_Text[3307804]
tItem[3307804]["Text1-1"] = {111}
tItem[3307804]["tOption1-1"] = {111}
tItem[3307804]["OptionPoint111"] = "2-1"

tItem[3307804]["Text2-1"] = {211}
tItem[3307804]["tOption2-1"] = {211,212}
tItem[3307804]["OptionFunc211"]="BaibaoRouletteSales_Gift_GetPay</N>3307804"

tItem[3307805] = tItem[3307805] or {}
tItem[3307805]["DialogueText"] =tBaibaoRouletteSales_Text[3307805]
tItem[3307805]["Text1-1"] = {111}
tItem[3307805]["tOption1-1"] = {111}
tItem[3307805]["OptionPoint111"] = "2-1"

tItem[3307805]["Text2-1"] = {211}
tItem[3307805]["tOption2-1"] = {211,212}
tItem[3307805]["OptionFunc211"]="BaibaoRouletteSales_Gift_GetPay</N>3307805"

tItem[3307806] = tItem[3307806] or {}
tItem[3307806]["DialogueText"] =tBaibaoRouletteSales_Text[3307806]
tItem[3307806]["Text1-1"] = {111}
tItem[3307806]["tOption1-1"] = {111}
tItem[3307806]["OptionPoint111"] = "2-1"

tItem[3307806]["Text2-1"] = {211}
tItem[3307806]["tOption2-1"] = {211,212}
tItem[3307806]["OptionFunc211"]="BaibaoRouletteSales_Gift_GetPay</N>3307806"

tItem[3307807] = tItem[3307807] or {}
tItem[3307807]["DialogueText"] =tBaibaoRouletteSales_Text[3307807]
tItem[3307807]["Text1-1"] = {111}
tItem[3307807]["tOption1-1"] = {111}
tItem[3307807]["OptionPoint111"] = "2-1"

tItem[3307807]["Text2-1"] = {211}
tItem[3307807]["tOption2-1"] = {211,212}
tItem[3307807]["OptionFunc211"]="BaibaoRouletteSales_Gift_GetPay</N>3307807"

tItem[3307808] = tItem[3307808] or {}
tItem[3307808]["DialogueText"] =tBaibaoRouletteSales_Text[3307808]
tItem[3307808]["Text1-1"] = {111}
tItem[3307808]["tOption1-1"] = {111}
tItem[3307808]["OptionPoint111"] = "2-1"

tItem[3307808]["Text2-1"] = {211}
tItem[3307808]["tOption2-1"] = {211,212}
tItem[3307808]["OptionFunc211"]="BaibaoRouletteSales_Gift_GetPay</N>3307808"

tItem[3307809] = tItem[3307809] or {}
tItem[3307809]["DialogueText"] =tBaibaoRouletteSales_Text[3307809]
tItem[3307809]["Text1-1"] = {111}
tItem[3307809]["tOption1-1"] = {111}
tItem[3307809]["OptionPoint111"] = "2-1"

tItem[3307809]["Text2-1"] = {211}
tItem[3307809]["tOption2-1"] = {211,212}
tItem[3307809]["OptionFunc211"]="BaibaoRouletteSales_Gift_GetPay</N>3307809"

tItem[3307810] = tItem[3307810] or {}
tItem[3307810]["DialogueText"] =tBaibaoRouletteSales_Text[3307810]
tItem[3307810]["Text1-1"] = {111}
tItem[3307810]["tOption1-1"] = {111}
tItem[3307810]["OptionPoint111"] = "2-1"

tItem[3307810]["Text2-1"] = {211}
tItem[3307810]["tOption2-1"] = {211,212}
tItem[3307810]["OptionFunc211"]="BaibaoRouletteSales_Gift_GetPay</N>3307810"

tItem[3307811] = tItem[3307811] or {}
tItem[3307811]["DialogueText"] =tBaibaoRouletteSales_Text[3307811]
tItem[3307811]["Text1-1"] = {111}
tItem[3307811]["tOption1-1"] = {111}
tItem[3307811]["OptionPoint111"] = "2-1"

tItem[3307811]["Text2-1"] = {211}
tItem[3307811]["tOption2-1"] = {211,212}
tItem[3307811]["OptionFunc211"]="BaibaoRouletteSales_Gift_UserRandom</N>3307811"

tItem[3307813] = tItem[3307813] or {}
tItem[3307813]["DialogueText"] =tBaibaoRouletteSales_Text[3307813]
tItem[3307813]["Text1-1"] = {111}
tItem[3307813]["tOption1-1"] = {111,112}
tItem[3307813]["OptionFunc111"]="BaibaoRouletteSales_Gift_UserSelect</N>3307813</N>2"
tItem[3307813]["OptionFunc112"]="BaibaoRouletteSales_Gift_UserSelect</N>3307813</N>1"

--赠品
tItem[3320765] = tItem[3320765] or {}
tItem[3320765]["DialogueText"] =tBaibaoRouletteSales_Text[3307813]
tItem[3320765]["Text1-1"] = {111}
tItem[3320765]["tOption1-1"] = {111,112}
tItem[3320765]["OptionFunc111"]="BaibaoRouletteSales_Gift_UserSelect</N>3320765</N>2"
tItem[3320765]["OptionFunc112"]="BaibaoRouletteSales_Gift_UserSelect</N>3320765</N>1"
