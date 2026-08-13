-----------------------------------------------------------------------------------------------------
--Name:		160624[英文征服][活动脚本]7月暑期促销活动
--Purpose:		7月暑期促销活动
--Creator: 	严振飞
--Created:		2016/06/24
------------------------------------------------------------------------------------------------------
-- 命名前缀
--JulySales2016_
--LOG  12000440
------------------------------------------------------------------------------------------------------
local tJulySales2016_Cont = {}
	tJulySales2016_Cont["BefTime"] = "2016-01-01 00:00 2016-07-06 23:59"
	tJulySales2016_Cont["NowTime"] = "2016-07-07 00:00 2016-07-17 23:59"
	
	-- 赤炼石ID前缀
	tJulySales2016_Cont["StoneId"] = "73000"

local tJulySales2016_Reward = {}
	-- 回气丹特惠包
	tJulySales2016_Reward[3200601] = {}
	tJulySales2016_Reward[3200601]["RewardItem"] = {}
	tJulySales2016_Reward[3200601]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200601]["RewardItem"][1]["Id"] = 729481 -- 回气丹
	tJulySales2016_Reward[3200601]["RewardItem"][1]["Attr"] = "0 10"
	tJulySales2016_Reward[3200601]["RewardItem"][2] = {}
	tJulySales2016_Reward[3200601]["RewardItem"][2]["Id"] = 3200615 -- 回气丹返利包
	tJulySales2016_Reward[3200601]["RewardItem"][2]["Attr"] = "0 1"
	tJulySales2016_Reward[3200601]["Log"] = "0,0,3200601,1,12000440,2,729481[3200615],10[1]"
	-- 抽奖券特惠包
	tJulySales2016_Reward[3200602] = {}
	tJulySales2016_Reward[3200602]["RewardItem"] = {}
	tJulySales2016_Reward[3200602]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200602]["RewardItem"][1]["Id"] = 711504 -- 小抽奖券礼包
	tJulySales2016_Reward[3200602]["RewardItem"][1]["Attr"] = "0 300"
	tJulySales2016_Reward[3200602]["RewardItem"][2] = {}
	tJulySales2016_Reward[3200602]["RewardItem"][2]["Id"] = 3200616 -- 抽奖券返利包
	tJulySales2016_Reward[3200602]["RewardItem"][2]["Attr"] = "0 1"
	tJulySales2016_Reward[3200602]["Log"] = "0,0,3200602,1,12000440,2,711504[3200616],300[1]"
	-- 固化石特惠包
	tJulySales2016_Reward[3200603] = {}
	tJulySales2016_Reward[3200603]["RewardItem"] = {}
	tJulySales2016_Reward[3200603]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200603]["RewardItem"][1]["Id"] = 723694 -- 固化石
	tJulySales2016_Reward[3200603]["RewardItem"][1]["Attr"] = "0 1"
	tJulySales2016_Reward[3200603]["RewardItem"][2] = {}
	tJulySales2016_Reward[3200603]["RewardItem"][2]["Id"] = 3200617 -- 五阶神魂返利包
	tJulySales2016_Reward[3200603]["RewardItem"][2]["Attr"] = "0 1"
	tJulySales2016_Reward[3200603]["Log"] = "0,0,3200603,1,12000440,2,723694[3200617],1[1]"
	-- 超大固化石特惠包
	tJulySales2016_Reward[3200604] = {}
	tJulySales2016_Reward[3200604]["RewardItem"] = {}
	tJulySales2016_Reward[3200604]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200604]["RewardItem"][1]["Id"] = 723695 -- 超大固化石
	tJulySales2016_Reward[3200604]["RewardItem"][1]["Attr"] = "0 1"
	tJulySales2016_Reward[3200604]["RewardItem"][2] = {}
	tJulySales2016_Reward[3200604]["RewardItem"][2]["Id"] = 3200618 -- 固化石返利包
	tJulySales2016_Reward[3200604]["RewardItem"][2]["Attr"] = "0 1"
	tJulySales2016_Reward[3200604]["Log"] = "0,0,3200604,1,12000440,2,723695[3200618],1[1]"
	-- 金钢坚钻特惠包
	tJulySales2016_Reward[3200605] = {}
	tJulySales2016_Reward[3200605]["RewardItem"] = {}
	tJulySales2016_Reward[3200605]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200605]["RewardItem"][1]["Id"] = 1200005 -- 金钢坚钻
	tJulySales2016_Reward[3200605]["RewardItem"][1]["Attr"] = "0 1"
	tJulySales2016_Reward[3200605]["RewardItem"][2] = {}
	tJulySales2016_Reward[3200605]["RewardItem"][2]["Id"] = 3200619 -- 优质宝石返利包
	tJulySales2016_Reward[3200605]["RewardItem"][2]["Attr"] = "0 1"
	tJulySales2016_Reward[3200605]["Log"] = "0,0,3200605,1,12000440,2,1200005[3200619],1[1]"
	-- 免费强炼丹特惠包
	tJulySales2016_Reward[3200606] = {}
	tJulySales2016_Reward[3200606]["RewardItem"] = {}
	tJulySales2016_Reward[3200606]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200606]["RewardItem"][1]["Id"] = 3003124 -- 免费强炼丹
	tJulySales2016_Reward[3200606]["RewardItem"][1]["Attr"] = "0 100"
	tJulySales2016_Reward[3200606]["RewardItem"][2] = {}
	tJulySales2016_Reward[3200606]["RewardItem"][2]["Id"] = 3200620 -- 优质宝石返利包
	tJulySales2016_Reward[3200606]["RewardItem"][2]["Attr"] = "0 1"
	tJulySales2016_Reward[3200606]["Log"] = "0,0,3200606,1,12000440,2,3003124[3200620],100[1]"
	-- +8赤炼石特惠包
	tJulySales2016_Reward[3200607] = {}
	tJulySales2016_Reward[3200607]["RewardItem"] = {}
	tJulySales2016_Reward[3200607]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200607]["RewardItem"][1]["Id"] = 730008 -- +8赤炼石特惠包
	tJulySales2016_Reward[3200607]["RewardItem"][1]["Attr"] = "0 1"
	tJulySales2016_Reward[3200607]["RewardItem"][2] = {}
	tJulySales2016_Reward[3200607]["RewardItem"][2]["Id"] = 3200621 -- +5赤炼石返利包
	tJulySales2016_Reward[3200607]["RewardItem"][2]["Attr"] = "0 1"
	tJulySales2016_Reward[3200607]["Log"] = "0,0,3200607,1,12000440,2,730008[3200621],1[1]"
	-- +6赤炼石特惠包
	tJulySales2016_Reward[3200608] = {}
	tJulySales2016_Reward[3200608]["RewardItem"] = {}
	tJulySales2016_Reward[3200608]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200608]["RewardItem"][1]["Id"] = 730006 -- +6赤炼石特惠包
	tJulySales2016_Reward[3200608]["RewardItem"][1]["Attr"] = "0 1"
	tJulySales2016_Reward[3200608]["RewardItem"][2] = {}
	tJulySales2016_Reward[3200608]["RewardItem"][2]["Id"] = 3200622 -- +4赤炼石返利包
	tJulySales2016_Reward[3200608]["RewardItem"][2]["Attr"] = "0 1"
	tJulySales2016_Reward[3200608]["Log"] = "0,0,3200608,1,12000440,2,730006[3200622],1[1]"
	-- +5赤炼石特惠包
	tJulySales2016_Reward[3200609] = {}
	tJulySales2016_Reward[3200609]["RewardItem"] = {}
	tJulySales2016_Reward[3200609]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200609]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石特惠包
	tJulySales2016_Reward[3200609]["RewardItem"][1]["Attr"] = "0 1"
	tJulySales2016_Reward[3200609]["RewardItem"][2] = {}
	tJulySales2016_Reward[3200609]["RewardItem"][2]["Id"] = 3200623 -- +3赤炼石返利包
	tJulySales2016_Reward[3200609]["RewardItem"][2]["Attr"] = "0 1"
	tJulySales2016_Reward[3200609]["Log"] = "0,0,3200609,1,12000440,2,730005[3200623],1[1]"
	-- +3赤炼石特惠包
	tJulySales2016_Reward[3200610] = {}
	tJulySales2016_Reward[3200610]["RewardItem"] = {}
	tJulySales2016_Reward[3200610]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200610]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石特惠包
	tJulySales2016_Reward[3200610]["RewardItem"][1]["Attr"] = "0 1"
	tJulySales2016_Reward[3200610]["RewardItem"][2] = {}
	tJulySales2016_Reward[3200610]["RewardItem"][2]["Id"] = 3200624 -- +2赤炼石返利包
	tJulySales2016_Reward[3200610]["RewardItem"][2]["Attr"] = "0 1"
	tJulySales2016_Reward[3200610]["Log"] = "0,0,3200610,1,12000440,2,730003[3200624],1[1]"
	-- 银两特惠包
	tJulySales2016_Reward[3200611] = {}
	tJulySales2016_Reward[3200611]["RewardMoney"] = {}
	tJulySales2016_Reward[3200611]["RewardMoney"]["Value"] = 200000000 -- 2亿银两
	tJulySales2016_Reward[3200611]["RewardItem"] = {}
	tJulySales2016_Reward[3200611]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200611]["RewardItem"][1]["Id"] = 3200625 -- 银两返利包
	tJulySales2016_Reward[3200611]["RewardItem"][1]["Attr"] = "0 1"
	tJulySales2016_Reward[3200611]["Log"] = "0,0,3200611,1,12000440,2,1[3200625],200000000[1]"
	-- 究极通神丹特惠包
	tJulySales2016_Reward[3200612] = {}
	tJulySales2016_Reward[3200612]["RewardItem"] = {}
	tJulySales2016_Reward[3200612]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200612]["RewardItem"][1]["Id"] = 3003126 -- 究极通神丹
	tJulySales2016_Reward[3200612]["RewardItem"][1]["Attr"] = "0 20"
	tJulySales2016_Reward[3200612]["RewardItem"][2] = {}
	tJulySales2016_Reward[3200612]["RewardItem"][2]["Id"] = 3200626 -- 究极通神丹返利包
	tJulySales2016_Reward[3200612]["RewardItem"][2]["Attr"] = "0 1"
	tJulySales2016_Reward[3200612]["Log"] = "0,0,3200612,1,12000440,2,3003126[3200626],20[1]"
	-- 护心丹特惠包
	tJulySales2016_Reward[3200613] = {}
	tJulySales2016_Reward[3200613]["RewardItem"] = {}
	tJulySales2016_Reward[3200613]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200613]["RewardItem"][1]["Id"] = 3200020 -- ProtectionPillPack（含10颗）
	tJulySales2016_Reward[3200613]["RewardItem"][1]["Attr"] = "0 5"
	tJulySales2016_Reward[3200613]["RewardItem"][2] = {}
	tJulySales2016_Reward[3200613]["RewardItem"][2]["Id"] = 3200627 -- 护心丹返利包
	tJulySales2016_Reward[3200613]["RewardItem"][2]["Attr"] = "0 1"
	tJulySales2016_Reward[3200613]["Log"] = "0,0,3200613,1,12000440,2,3200020[3200627],5[1]"
	-- 龙珠特惠包
	tJulySales2016_Reward[3200614] = {}
	tJulySales2016_Reward[3200614]["RewardItem"] = {}
	tJulySales2016_Reward[3200614]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200614]["RewardItem"][1]["Id"] = 720028 -- 龙珠卷
	tJulySales2016_Reward[3200614]["RewardItem"][1]["Attr"] = "0 1"
	tJulySales2016_Reward[3200614]["RewardItem"][2] = {}
	tJulySales2016_Reward[3200614]["RewardItem"][2]["Id"] = 3200628 -- 龙珠返利包
	tJulySales2016_Reward[3200614]["RewardItem"][2]["Attr"] = "0 1"
	tJulySales2016_Reward[3200614]["Log"] = "0,0,3200614,1,12000440,2,720028[3200628],1[1]"

--------------------------------------------------
--返利包
	-- 回气丹返利包
	tJulySales2016_Reward[3200615] = {}
	tJulySales2016_Reward[3200615][1] = {}
	tJulySales2016_Reward[3200615][1]["RewardItem"] = {}
	tJulySales2016_Reward[3200615][1]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200615][1]["RewardItem"][1]["Id"] = 729481 -- 回气丹
	tJulySales2016_Reward[3200615][1]["RewardItem"][1]["Attr"] = "0 1"
	tJulySales2016_Reward[3200615][1]["Log"] = "0,0,3200615,1,12000440,2,729481,1"
	tJulySales2016_Reward[3200615][2] = {}
	tJulySales2016_Reward[3200615][2]["RewardEMoneyMono"] = {}
	tJulySales2016_Reward[3200615][2]["RewardEMoneyMono"]["Value"] = 50 --50赠点天石
	tJulySales2016_Reward[3200615][2]["Log"] = "0,0,3200615,1,12000440,2,3,50"
	tJulySales2016_Reward[3200615][3] = {}
	tJulySales2016_Reward[3200615][3]["RewardItem"] = {}
	tJulySales2016_Reward[3200615][3]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200615][3]["RewardItem"][1]["Id"] = 3200531 -- 纪念币
	tJulySales2016_Reward[3200615][3]["RewardItem"][1]["Attr"] = "0 3"
	tJulySales2016_Reward[3200615][3]["Log"] = "0,0,3200615,1,12000440,2,3200531,3"

	-- 抽奖券返利包
	tJulySales2016_Reward[3200616] = {}
	tJulySales2016_Reward[3200616][1] = {}
	tJulySales2016_Reward[3200616][1]["RewardItem"] = {}
	tJulySales2016_Reward[3200616][1]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200616][1]["RewardItem"][1]["Id"] = 711504 -- 小抽奖券礼包
	tJulySales2016_Reward[3200616][1]["RewardItem"][1]["Attr"] = "0 9"
	tJulySales2016_Reward[3200616][1]["Log"] = "0,0,3200616,1,12000440,2,711504,9"
	tJulySales2016_Reward[3200616][2] = {}
	tJulySales2016_Reward[3200616][2]["RewardItem"] = {}
	tJulySales2016_Reward[3200616][2]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200616][2]["RewardItem"][1]["Id"] = 1088000 -- 龙珠
	tJulySales2016_Reward[3200616][2]["RewardItem"][1]["Attr"] = "0 1"
	tJulySales2016_Reward[3200616][2]["Log"] = "0,0,3200616,1,12000440,2,1088000,1"
	tJulySales2016_Reward[3200616][3] = {}
	tJulySales2016_Reward[3200616][3]["RewardItem"] = {}
	tJulySales2016_Reward[3200616][3]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200616][3]["RewardItem"][1]["Id"] = 3200531 -- 纪念币
	tJulySales2016_Reward[3200616][3]["RewardItem"][1]["Attr"] = "0 8"
	tJulySales2016_Reward[3200616][3]["Log"] = "0,0,3200616,1,12000440,2,3200531,8"

	-- 五阶神魂返利包
	tJulySales2016_Reward[3200617] = {}
	tJulySales2016_Reward[3200617][1] = {}
	tJulySales2016_Reward[3200617][1]["RewardItem"] = {}
	tJulySales2016_Reward[3200617][1]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200617][1]["RewardItem"][1]["Id"] = 3005892 -- 五阶神魂礼包
	tJulySales2016_Reward[3200617][1]["RewardItem"][1]["Attr"] = "0 1"
	tJulySales2016_Reward[3200617][1]["Log"] = "0,0,3200617,1,12000440,2,3005892,1"
	tJulySales2016_Reward[3200617][2] = {}
	tJulySales2016_Reward[3200617][2]["RewardItem"] = {}
	tJulySales2016_Reward[3200617][2]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200617][2]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石
	tJulySales2016_Reward[3200617][2]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tJulySales2016_Reward[3200617][2]["Log"] = "0,0,3200617,1,12000440,2,3009000,5"
	tJulySales2016_Reward[3200617][3] = {}
	tJulySales2016_Reward[3200617][3]["RewardItem"] = {}
	tJulySales2016_Reward[3200617][3]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200617][3]["RewardItem"][1]["Id"] = 3200531 -- 纪念币
	tJulySales2016_Reward[3200617][3]["RewardItem"][1]["Attr"] = "0 1"
	tJulySales2016_Reward[3200617][3]["Log"] = "0,0,3200617,1,12000440,2,3200531,1"

	-- 固化石返利包
	tJulySales2016_Reward[3200618] = {}
	tJulySales2016_Reward[3200618][1] = {}
	tJulySales2016_Reward[3200618][1]["RewardItem"] = {}
	tJulySales2016_Reward[3200618][1]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200618][1]["RewardItem"][1]["Id"] = 723694 -- 固化石
	tJulySales2016_Reward[3200618][1]["RewardItem"][1]["Attr"] = "0 1"
	tJulySales2016_Reward[3200618][1]["Log"] = "0,0,3200618,1,12000440,2,723694,1"
	tJulySales2016_Reward[3200618][2] = {}
	tJulySales2016_Reward[3200618][2]["RewardEMoneyMono"] = {}
	tJulySales2016_Reward[3200618][2]["RewardEMoneyMono"]["Value"] = 300 --300赠点天石
	tJulySales2016_Reward[3200618][2]["Log"] = "0,0,3200618,1,12000440,2,3,500"
	tJulySales2016_Reward[3200618][3] = {}
	tJulySales2016_Reward[3200618][3]["RewardItem"] = {}
	tJulySales2016_Reward[3200618][3]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200618][3]["RewardItem"][1]["Id"] = 3200531 -- 纪念币
	tJulySales2016_Reward[3200618][3]["RewardItem"][1]["Attr"] = "0 12"
	tJulySales2016_Reward[3200618][3]["Log"] = "0,0,3200618,1,12000440,2,3200531,12"

	-- 优质宝石返利包
	tJulySales2016_Reward[3200619] = {}
	tJulySales2016_Reward[3200619][1] = {}
	tJulySales2016_Reward[3200619][1]["RewardItem"] = {}
	tJulySales2016_Reward[3200619][1]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200619][1]["RewardItem"][1]["Id"] = 700013 -- 优质龙恨宝石
	tJulySales2016_Reward[3200619][1]["RewardItem"][1]["Attr"] = "0 1"
	tJulySales2016_Reward[3200619][1]["Log"] = "0,0,3200619,1,12000440,2,700013,1"
	tJulySales2016_Reward[3200619][2] = {}
	tJulySales2016_Reward[3200619][2]["RewardItem"] = {}
	tJulySales2016_Reward[3200619][2]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200619][2]["RewardItem"][1]["Id"] = 700003 -- 优质凤吟宝石
	tJulySales2016_Reward[3200619][2]["RewardItem"][1]["Attr"] = "0 1"
	tJulySales2016_Reward[3200619][2]["Log"] = "0,0,3200619,1,12000440,2,700003,1"
	tJulySales2016_Reward[3200619][3] = {}
	tJulySales2016_Reward[3200619][3]["RewardItem"] = {}
	tJulySales2016_Reward[3200619][3]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200619][3]["RewardItem"][1]["Id"] = 3200531 -- 纪念币
	tJulySales2016_Reward[3200619][3]["RewardItem"][1]["Attr"] = "0 5"
	tJulySales2016_Reward[3200619][3]["Log"] = "0,0,3200619,1,12000440,2,3200531,5"

	-- 优质宝石返利包
	tJulySales2016_Reward[3200620] = {}
	tJulySales2016_Reward[3200620][1] = {}
	tJulySales2016_Reward[3200620][1]["RewardItem"] = {}
	tJulySales2016_Reward[3200620][1]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200620][1]["RewardItem"][1]["Id"] = 3003124 -- 免费强炼丹
	tJulySales2016_Reward[3200620][1]["RewardItem"][1]["Attr"] = "0 10"
	tJulySales2016_Reward[3200620][1]["Log"] = "0,0,3200620,1,12000440,2,3003124,10"
	tJulySales2016_Reward[3200620][2] = {}
	tJulySales2016_Reward[3200620][2]["RewardStrengthValue"] = {}
	tJulySales2016_Reward[3200620][2]["RewardStrengthValue"]["Value"] = 500 --500气力值
	tJulySales2016_Reward[3200620][2]["Log"] = "0,0,3200620,1,12000440,2,12,500"
	tJulySales2016_Reward[3200620][3] = {}
	tJulySales2016_Reward[3200620][3]["RewardItem"] = {}
	tJulySales2016_Reward[3200620][3]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200620][3]["RewardItem"][1]["Id"] = 3200531 -- 纪念币
	tJulySales2016_Reward[3200620][3]["RewardItem"][1]["Attr"] = "0 2"
	tJulySales2016_Reward[3200620][3]["Log"] = "0,0,3200620,1,12000440,2,3200531,2"

	-- +5赤炼石返利包
	tJulySales2016_Reward[3200621] = {}
	tJulySales2016_Reward[3200621][1] = {}
	tJulySales2016_Reward[3200621][1]["RewardItem"] = {}
	tJulySales2016_Reward[3200621][1]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200621][1]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石
	tJulySales2016_Reward[3200621][1]["RewardItem"][1]["Attr"] = "0 1"
	tJulySales2016_Reward[3200621][1]["Log"] = "0,0,3200621,1,12000440,2,730005,1"
	tJulySales2016_Reward[3200621][2] = {}
	tJulySales2016_Reward[3200621][2]["RewardItem"] = {}
	tJulySales2016_Reward[3200621][2]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200621][2]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石
	tJulySales2016_Reward[3200621][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tJulySales2016_Reward[3200621][2]["Log"] = "0,0,3200621,1,12000440,2,3009002,1"
	tJulySales2016_Reward[3200621][3] = {}
	tJulySales2016_Reward[3200621][3]["RewardItem"] = {}
	tJulySales2016_Reward[3200621][3]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200621][3]["RewardItem"][1]["Id"] = 3200531 -- 纪念币
	tJulySales2016_Reward[3200621][3]["RewardItem"][1]["Attr"] = "0 40"
	tJulySales2016_Reward[3200621][3]["Log"] = "0,0,3200621,1,12000440,2,3200531,40"

	-- +4赤炼石返利包
	tJulySales2016_Reward[3200622] = {}
	tJulySales2016_Reward[3200622][1] = {}
	tJulySales2016_Reward[3200622][1]["RewardItem"] = {}
	tJulySales2016_Reward[3200622][1]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200622][1]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石
	tJulySales2016_Reward[3200622][1]["RewardItem"][1]["Attr"] = "0 1"
	tJulySales2016_Reward[3200622][1]["Log"] = "0,0,3200622,1,12000440,2,730004,1"
	tJulySales2016_Reward[3200622][2] = {}
	tJulySales2016_Reward[3200622][2]["RewardItem"] = {}
	tJulySales2016_Reward[3200622][2]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200622][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石
	tJulySales2016_Reward[3200622][2]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tJulySales2016_Reward[3200622][2]["Log"] = "0,0,3200622,1,12000440,2,3009001,3"
	tJulySales2016_Reward[3200622][3] = {}
	tJulySales2016_Reward[3200622][3]["RewardItem"] = {}
	tJulySales2016_Reward[3200622][3]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200622][3]["RewardItem"][1]["Id"] = 3200531 -- 纪念币
	tJulySales2016_Reward[3200622][3]["RewardItem"][1]["Attr"] = "0 7"
	tJulySales2016_Reward[3200622][3]["Log"] = "0,0,3200622,1,12000440,2,3200531,7"

	-- +3赤炼石返利包
	tJulySales2016_Reward[3200623] = {}
	tJulySales2016_Reward[3200623][1] = {}
	tJulySales2016_Reward[3200623][1]["RewardItem"] = {}
	tJulySales2016_Reward[3200623][1]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200623][1]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石
	tJulySales2016_Reward[3200623][1]["RewardItem"][1]["Attr"] = "0 1"
	tJulySales2016_Reward[3200623][1]["Log"] = "0,0,3200623,1,12000440,2,730003,1"
	tJulySales2016_Reward[3200623][2] = {}
	tJulySales2016_Reward[3200623][2]["RewardItem"] = {}
	tJulySales2016_Reward[3200623][2]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200623][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石
	tJulySales2016_Reward[3200623][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tJulySales2016_Reward[3200623][2]["Log"] = "0,0,3200623,1,12000440,2,3009001,1"
	tJulySales2016_Reward[3200623][3] = {}
	tJulySales2016_Reward[3200623][3]["RewardItem"] = {}
	tJulySales2016_Reward[3200623][3]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200623][3]["RewardItem"][1]["Id"] = 3200531 -- 纪念币
	tJulySales2016_Reward[3200623][3]["RewardItem"][1]["Attr"] = "0 3"
	tJulySales2016_Reward[3200623][3]["Log"] = "0,0,3200623,1,12000440,2,3200531,3"

	-- +2赤炼石返利包
	tJulySales2016_Reward[3200624] = {}
	tJulySales2016_Reward[3200624][1] = {}
	tJulySales2016_Reward[3200624][1]["RewardItem"] = {}
	tJulySales2016_Reward[3200624][1]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200624][1]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石
	tJulySales2016_Reward[3200624][1]["RewardItem"][1]["Attr"] = "0 1"
	tJulySales2016_Reward[3200624][1]["Log"] = "0,0,3200624,1,12000440,2,730002,1"
	tJulySales2016_Reward[3200624][2] = {}
	tJulySales2016_Reward[3200624][2]["RewardStrengthValue"] = {}
	tJulySales2016_Reward[3200624][2]["RewardStrengthValue"]["Value"] = 200 --200气力值
	tJulySales2016_Reward[3200624][2]["Log"] = "0,0,3200624,1,12000440,2,12,200"
	tJulySales2016_Reward[3200624][3] = {}
	tJulySales2016_Reward[3200624][3]["RewardEMoneyMono"] = {}
	tJulySales2016_Reward[3200624][3]["RewardEMoneyMono"]["Value"] = 30 --30赠点天石
	tJulySales2016_Reward[3200624][3]["Log"] = "0,0,3200624,1,12000440,2,3,30"

	-- 银两返利包
	tJulySales2016_Reward[3200625] = {}
	tJulySales2016_Reward[3200625][1] = {}
	tJulySales2016_Reward[3200625][1]["RewardMoney"] = {}
	tJulySales2016_Reward[3200625][1]["RewardMoney"]["Value"] = 5000000 --500W银两
	tJulySales2016_Reward[3200625][1]["Log"] = "0,0,3200625,1,12000440,2,1,5000000"
	tJulySales2016_Reward[3200625][2] = {}
	tJulySales2016_Reward[3200625][2]["RewardItem"] = {}
	tJulySales2016_Reward[3200625][2]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200625][2]["RewardItem"][1]["Id"] = 3200483 -- 50万比赛通票
	tJulySales2016_Reward[3200625][2]["RewardItem"][1]["Attr"] = "0 10"
	tJulySales2016_Reward[3200625][2]["Log"] = "0,0,3200625,1,12000440,2,3200483,10"
	tJulySales2016_Reward[3200625][3] = {}
	tJulySales2016_Reward[3200625][3]["RewardItem"] = {}
	tJulySales2016_Reward[3200625][3]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200625][3]["RewardItem"][1]["Id"] = 3200531 -- 纪念币
	tJulySales2016_Reward[3200625][3]["RewardItem"][1]["Attr"] = "0 5"
	tJulySales2016_Reward[3200625][3]["Log"] = "0,0,3200625,1,12000440,2,3200531,5"

	-- 究极通神丹返利包
	tJulySales2016_Reward[3200626] = {}
	tJulySales2016_Reward[3200626][1] = {}
	tJulySales2016_Reward[3200626][1]["RewardItem"] = {}
	tJulySales2016_Reward[3200626][1]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200626][1]["RewardItem"][1]["Id"] = 3003126 -- 究极通神丹
	tJulySales2016_Reward[3200626][1]["RewardItem"][1]["Attr"] = "0 2"
	tJulySales2016_Reward[3200626][1]["Log"] = "0,0,3200626,1,12000440,2,3003126,2"
	tJulySales2016_Reward[3200626][2] = {}
	tJulySales2016_Reward[3200626][2]["RewardStrengthValue"] = {}
	tJulySales2016_Reward[3200626][2]["RewardStrengthValue"]["Value"] = 500 --500气力值
	tJulySales2016_Reward[3200626][2]["Log"] = "0,0,3200626,1,12000440,2,12,500"
	tJulySales2016_Reward[3200626][3] = {}
	tJulySales2016_Reward[3200626][3]["RewardItem"] = {}
	tJulySales2016_Reward[3200626][3]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200626][3]["RewardItem"][1]["Id"] = 3200531 -- 纪念币
	tJulySales2016_Reward[3200626][3]["RewardItem"][1]["Attr"] = "0 2"
	tJulySales2016_Reward[3200626][3]["Log"] = "0,0,3200626,1,12000440,2,3200531,2"

	-- 护心丹返利包
	tJulySales2016_Reward[3200627] = {}
	tJulySales2016_Reward[3200627][1] = {}
	tJulySales2016_Reward[3200627][1]["RewardItem"] = {}
	tJulySales2016_Reward[3200627][1]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200627][1]["RewardItem"][1]["Id"] = 3002029 -- 护心丹
	tJulySales2016_Reward[3200627][1]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tJulySales2016_Reward[3200627][1]["Log"] = "0,0,3200627,1,12000440,2,3002029,5"
	tJulySales2016_Reward[3200627][2] = {}
	tJulySales2016_Reward[3200627][2]["RewardStrengthValue"] = {}
	tJulySales2016_Reward[3200627][2]["RewardStrengthValue"]["Value"] = 500 --500气力值
	tJulySales2016_Reward[3200627][2]["Log"] = "0,0,3200627,1,12000440,2,12,500"
	tJulySales2016_Reward[3200627][3] = {}
	tJulySales2016_Reward[3200627][3]["RewardItem"] = {}
	tJulySales2016_Reward[3200627][3]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200627][3]["RewardItem"][1]["Id"] = 3200531 -- 纪念币
	tJulySales2016_Reward[3200627][3]["RewardItem"][1]["Attr"] = "0 2"
	tJulySales2016_Reward[3200627][3]["Log"] = "0,0,3200627,1,12000440,2,3200531,2"

	-- 护心丹返利包
	tJulySales2016_Reward[3200628] = {}
	tJulySales2016_Reward[3200628][1] = {}
	tJulySales2016_Reward[3200628][1]["RewardItem"] = {}
	tJulySales2016_Reward[3200628][1]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200628][1]["RewardItem"][1]["Id"] = 1088000 -- 龙珠
	tJulySales2016_Reward[3200628][1]["RewardItem"][1]["Attr"] = "0 1"
	tJulySales2016_Reward[3200628][1]["Log"] = "0,0,3200628,1,12000440,2,1088000,1"
	tJulySales2016_Reward[3200628][2] = {}
	tJulySales2016_Reward[3200628][2]["RewardStrengthValue"] = {}
	tJulySales2016_Reward[3200628][2]["RewardStrengthValue"]["Value"] = 1000 --100气力值
	tJulySales2016_Reward[3200628][2]["Log"] = "0,0,3200628,1,12000440,2,12,1000"
	tJulySales2016_Reward[3200628][3] = {}
	tJulySales2016_Reward[3200628][3]["RewardItem"] = {}
	tJulySales2016_Reward[3200628][3]["RewardItem"][1] = {}
	tJulySales2016_Reward[3200628][3]["RewardItem"][1]["Id"] = 3200531 -- 纪念币
	tJulySales2016_Reward[3200628][3]["RewardItem"][1]["Attr"] = "0 3"
	tJulySales2016_Reward[3200628][3]["Log"] = "0,0,3200628,1,12000440,2,3200531,3"

------------------------------------------------------逻辑部分-------------------------------------------
-- 打开商店
function JulySales2016_OpenShop()
	-- 活动外
	if not Sys_ChkFullTime(tJulySales2016_Cont["NowTime"]) then
		return
	end
	
	-- 打开商店
	User_OpenDialog()
end

-- 删除礼包函数
function JulySales2016_DelItem(nItemId,nOption)
	if nOption ~= nil then
		tJulySales2016_Reward[nItemId][nOption]["DeleteItem"] = {} -- 使用后删除物品
		tJulySales2016_Reward[nItemId][nOption]["DeleteItem"][1] = {}
		tJulySales2016_Reward[nItemId][nOption]["DeleteItem"][1]["Id"] = nItemId
	else
		tJulySales2016_Reward[nItemId]["DeleteItem"] = {} -- 使用后删除物品
		tJulySales2016_Reward[nItemId]["DeleteItem"][1] = {}
		tJulySales2016_Reward[nItemId]["DeleteItem"][1]["Id"] = nItemId
	end
end

-- 返利礼包开启
function JulySales2016_OpenItem(nItemId)
	-- 遍历各选项奖励
	for i,v in pairs(tJulySales2016_Reward[nItemId]) do
		tItem[3200615]["OptionFunc11".. i] = string.format("JulySales2016_OpenFunc</N>%d</N>%d",nItemId,i)
		-- 给物品
		if v["RewardItem"] ~= nil then
			local nItemId = v["RewardItem"][1]["Id"]
			local sItemAttr = v["RewardItem"][1]["Attr"]
			local tItemAttr = Sys_Split(sItemAttr," ")
			local sItemName = Get_ItemtypeName(nItemId)
			local nItemNum = tonumber(tItemAttr[2])
			-- 为赤炼石
			local sTemp = string.sub(tostring(nItemId),1,5)
			if sTemp == tJulySales2016_Cont["StoneId"] then
				sItemName = string.format("+%s",string.sub(tostring(nItemId),6)).. sItemName
			end
			-- 有时效
			if tItemAttr[4] ~= nil then
				local nSaveDays = tItemAttr[4] / 1440
				sItemName = string.format(tJulySales2016_Text["RewardSaveTime"],nSaveDays)..sItemName
			end
			tItem[3200615]["Option11".. i] = string.format(tJulySales2016_Text["RewardItem"],nItemNum,sItemName)
		end
		
		-- 给赠点天石
		if v["RewardEMoneyMono"] ~= nil then
			local nEMoneyMono = v["RewardEMoneyMono"]["Value"]
			tItem[3200615]["Option11".. i] = string.format(tJulySales2016_Text["RewardEMoneyMono"],nEMoneyMono)
		end
		
		-- 给气力值
		if v["RewardStrengthValue"] ~= nil then
			local nSValue = v["RewardStrengthValue"]["Value"]
			tItem[3200615]["Option11".. i] = string.format(tJulySales2016_Text["RewardStrengthValue"],nSValue)
		end
		
		-- 给金币
		if v["RewardMoney"] ~= nil then
			local nMoney = v["RewardMoney"]["Value"]
			tItem[3200615]["Option11".. i] = string.format(tJulySales2016_Text["RewardMoney"],nMoney)
		end
	end
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end

-- 返利礼包选项点击执行
function JulySales2016_OpenFunc(nItemId,nOption)
	RewardTemplate_UseItem(tJulySales2016_Reward[nItemId][nOption])
end


------------------------------------------------------物品配置-------------------------------------------
-- 导购小姐米可儿
tNpcFace[4244] = 119
tNpcGossip[19361] = tNpcGossip[19361] or DefaultNpc:new{}
tNpcGossip[19361]["OptionHidden"] = 1
tNpcGossip[19361]["DialogueText"] = tJulySales2016_Text[19361]
-- 活动前
tNpcGossip[19361]["Text1-1"] = {111,112,113}
tNpcGossip[19361]["tOption1-1"] = {111}
tNpcGossip[19361]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tJulySales2016_Cont["BefTime"])
end
-- 活动后
tNpcGossip[19361]["Text1-2"] = {121}
tNpcGossip[19361]["tOption1-2"] = {121}
tNpcGossip[19361]["ChkFunc1-2"] = function()
	return not Sys_ChkFullTime(tJulySales2016_Cont["NowTime"])
end
--活动中
tNpcGossip[19361]["Text1-3"] = {131,132,133,134}
tNpcGossip[19361]["tOption1-3"] = {131,132}
tNpcGossip[19361]["OptionFunc131"] = "JulySales2016_OpenShop"

tNpcGossip[19364] = tNpcGossip[19361]


-- 特惠包
tItem[3200601] = tItem[3200601] or {}
tItem[3200602] = tItem[3200601] or {}
tItem[3200603] = tItem[3200601] or {}
tItem[3200604] = tItem[3200601] or {}
tItem[3200605] = tItem[3200601] or {}
tItem[3200606] = tItem[3200601] or {}
tItem[3200607] = tItem[3200601] or {}
tItem[3200608] = tItem[3200601] or {}
tItem[3200609] = tItem[3200601] or {}
tItem[3200610] = tItem[3200601] or {}
tItem[3200611] = tItem[3200601] or {}
tItem[3200612] = tItem[3200601] or {}
tItem[3200613] = tItem[3200601] or {}
tItem[3200614] = tItem[3200601] or {}
tItem[3200601]["Function"] = function(nItemId, sItemName)
	RewardTemplate_UseItem(tJulySales2016_Reward[nItemId])
end

-- 返利包
tItem[3200615] = tItem[3200615] or {}
tItem[3200616] = tItem[3200615] or {}
tItem[3200617] = tItem[3200615] or {}
tItem[3200618] = tItem[3200615] or {}
tItem[3200619] = tItem[3200615] or {}
tItem[3200620] = tItem[3200615] or {}
tItem[3200621] = tItem[3200615] or {}
tItem[3200622] = tItem[3200615] or {}
tItem[3200623] = tItem[3200615] or {}
tItem[3200624] = tItem[3200615] or {}
tItem[3200625] = tItem[3200615] or {}
tItem[3200626] = tItem[3200615] or {}
tItem[3200627] = tItem[3200615] or {}
tItem[3200628] = tItem[3200615] or {}
tItem[3200615]["DialogueText"] = tJulySales2016_Text[3200615]
tItem[3200615]["Function"] = function(nItemId, sItemName)
	JulySales2016_OpenItem(nItemId)
end

tItem[3200615]["Text1-1"] = {111}
tItem[3200615]["tOption1-1"] = {111,112,113}


-- 物品使用后删除
for i,v in pairs(tJulySales2016_Reward) do
	
	if type(next(v)) == "number" then
		for j,k in ipairs(v) do
			JulySales2016_DelItem(i,tonumber(j))
		end
	else
		JulySales2016_DelItem(i)
	end
end
