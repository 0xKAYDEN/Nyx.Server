------------------------------------------------------------------------------------
--Name:		180624[英文征服][活动脚本]暑期赠品大狂欢（7.19-7.31）
--Purpose:	暑期赠品大狂欢
--Creator: 	黄啸
--Created:	2018/06/24
------------------------------------------------------------------------------------

-- 命名前缀
-- SummerbigCharge_

--logid:12001098

-----------------------------------------------基础表-------------------------------------
-- 基础数据
local tSummerbigCharge_Data = {}
	-- 活动时间
	tSummerbigCharge_Data["Festival_BefTime"] = tActivityTime["SummerbigCharge"]["BefTime"]
	tSummerbigCharge_Data["Festival_NowTime"] = tActivityTime["SummerbigCharge"]["ActTime"]

--轮盘
local tSummerbigCharge_Rounitem= {}
tSummerbigCharge_Rounitem[1] = 3309802
tSummerbigCharge_Rounitem[2] = 3309803
tSummerbigCharge_Rounitem[3] = 3309804

--轮盘对应的type
local tSummerbigCharge_Rounitemtype = {}
tSummerbigCharge_Rounitemtype[3309802] = 6885
tSummerbigCharge_Rounitemtype[3309803] = 6886
tSummerbigCharge_Rounitemtype[3309804] = 6887

--奖励模板
local tSummerbigCharge_Awarditem = {}
--赠点
tSummerbigCharge_Awarditem[3309805] = {}
tSummerbigCharge_Awarditem[3309805]["RewardEMoneyMono"] = {}
tSummerbigCharge_Awarditem[3309805]["RewardEMoneyMono"]["Value"] = 50
tSummerbigCharge_Awarditem[3309805]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3309805]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3309805]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3309805]["DeleteItem"][1]["Id"] = 3309805

tSummerbigCharge_Awarditem[3309806] = {}
tSummerbigCharge_Awarditem[3309806]["RewardEMoneyMono"] = {}
tSummerbigCharge_Awarditem[3309806]["RewardEMoneyMono"]["Value"] = 80
tSummerbigCharge_Awarditem[3309806]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3309806]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3309806]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3309806]["DeleteItem"][1]["Id"] = 3309806

tSummerbigCharge_Awarditem[3309807] = {}
tSummerbigCharge_Awarditem[3309807]["RewardEMoneyMono"] = {}
tSummerbigCharge_Awarditem[3309807]["RewardEMoneyMono"]["Value"] = 100
tSummerbigCharge_Awarditem[3309807]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3309807]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3309807]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3309807]["DeleteItem"][1]["Id"] = 3309807

tSummerbigCharge_Awarditem[3309808] = {}
tSummerbigCharge_Awarditem[3309808]["RewardEMoneyMono"] = {}
tSummerbigCharge_Awarditem[3309808]["RewardEMoneyMono"]["Value"] = 150
tSummerbigCharge_Awarditem[3309808]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3309808]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3309808]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3309808]["DeleteItem"][1]["Id"] = 3309808

tSummerbigCharge_Awarditem[3309809] = {}
tSummerbigCharge_Awarditem[3309809]["RewardEMoneyMono"] = {}
tSummerbigCharge_Awarditem[3309809]["RewardEMoneyMono"]["Value"] = 200
tSummerbigCharge_Awarditem[3309809]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3309809]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3309809]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3309809]["DeleteItem"][1]["Id"] = 3309809

tSummerbigCharge_Awarditem[3309810] = {}
tSummerbigCharge_Awarditem[3309810]["RewardEMoneyMono"] = {}
tSummerbigCharge_Awarditem[3309810]["RewardEMoneyMono"]["Value"] = 300
tSummerbigCharge_Awarditem[3309810]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3309810]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3309810]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3309810]["DeleteItem"][1]["Id"] = 3309810

tSummerbigCharge_Awarditem[3309811] = {}
tSummerbigCharge_Awarditem[3309811]["RewardEMoneyMono"] = {}
tSummerbigCharge_Awarditem[3309811]["RewardEMoneyMono"]["Value"] = 500
tSummerbigCharge_Awarditem[3309811]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3309811]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3309811]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3309811]["DeleteItem"][1]["Id"] = 3309811

tSummerbigCharge_Awarditem[3309812] = {}
tSummerbigCharge_Awarditem[3309812]["RewardEMoneyMono"] = {}
tSummerbigCharge_Awarditem[3309812]["RewardEMoneyMono"]["Value"] = 1000
tSummerbigCharge_Awarditem[3309812]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3309812]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3309812]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3309812]["DeleteItem"][1]["Id"] = 3309812

--赤炼石+2*2
tSummerbigCharge_Awarditem[3309958] = {}
tSummerbigCharge_Awarditem[3309958]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3309958]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3309958]["RewardItem"][1]["Id"] = 730002
tSummerbigCharge_Awarditem[3309958]["RewardItem"][1]["Attr"] = "0 2 3"
tSummerbigCharge_Awarditem[3309958]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3309958]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3309958]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3309958]["DeleteItem"][1]["Id"] = 3309958

--赤炼石+3*2
tSummerbigCharge_Awarditem[3309959] = {}
tSummerbigCharge_Awarditem[3309959]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3309959]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3309959]["RewardItem"][1]["Id"] = 730003
tSummerbigCharge_Awarditem[3309959]["RewardItem"][1]["Attr"] = "0 2 3"
tSummerbigCharge_Awarditem[3309959]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3309959]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3309959]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3309959]["DeleteItem"][1]["Id"] = 3309959

--赤炼石+4*2
tSummerbigCharge_Awarditem[3309960] = {}
tSummerbigCharge_Awarditem[3309960]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3309960]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3309960]["RewardItem"][1]["Id"] = 730004
tSummerbigCharge_Awarditem[3309960]["RewardItem"][1]["Attr"] = "0 2 3"
tSummerbigCharge_Awarditem[3309960]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3309960]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3309960]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3309960]["DeleteItem"][1]["Id"] = 3309960

--明亮星陨石*4
tSummerbigCharge_Awarditem[3309961] = {}
tSummerbigCharge_Awarditem[3309961]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3309961]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3309961]["RewardItem"][1]["Id"] = 3009001
tSummerbigCharge_Awarditem[3309961]["RewardItem"][1]["Attr"] = "0 4"
tSummerbigCharge_Awarditem[3309961]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3309961]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3309961]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3309961]["DeleteItem"][1]["Id"] = 3309961

--神器源晶*20
tSummerbigCharge_Awarditem[3309962] = {}
tSummerbigCharge_Awarditem[3309962]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3309962]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3309962]["RewardItem"][1]["Id"] = 3306885
tSummerbigCharge_Awarditem[3309962]["RewardItem"][1]["Attr"] = "0 20"
tSummerbigCharge_Awarditem[3309962]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3309962]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3309962]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3309962]["DeleteItem"][1]["Id"] = 3309962

--黄色神纹精粹（赠）*30
tSummerbigCharge_Awarditem[3309963] = {}
tSummerbigCharge_Awarditem[3309963]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3309963]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3309963]["RewardItem"][1]["Id"] = 4050001
tSummerbigCharge_Awarditem[3309963]["RewardItem"][1]["Attr"] = "0 30 3"
tSummerbigCharge_Awarditem[3309963]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3309963]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3309963]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3309963]["DeleteItem"][1]["Id"] = 3309963

--气力值1000点
tSummerbigCharge_Awarditem[3309965] = {}
tSummerbigCharge_Awarditem[3309965]["RewardStrengthValue"] = {}
tSummerbigCharge_Awarditem[3309965]["RewardStrengthValue"]["Value"] = 1000
tSummerbigCharge_Awarditem[3309965]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3309965]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3309965]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3309965]["DeleteItem"][1]["Id"] = 3309965

--强炼丹（赠）*10
tSummerbigCharge_Awarditem[3309966] = {}
tSummerbigCharge_Awarditem[3309966]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3309966]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3309966]["RewardItem"][1]["Id"] = 3003124
tSummerbigCharge_Awarditem[3309966]["RewardItem"][1]["Attr"] = "0 10 3"
tSummerbigCharge_Awarditem[3309966]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3309966]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3309966]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3309966]["DeleteItem"][1]["Id"] = 3309966

--万能神纹精粹（赠）*30
tSummerbigCharge_Awarditem[3309964] = {}
tSummerbigCharge_Awarditem[3309964]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3309964]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3309964]["RewardItem"][1]["Id"] = 4060001
tSummerbigCharge_Awarditem[3309964]["RewardItem"][1]["Attr"] = "0 30 3"
tSummerbigCharge_Awarditem[3309964]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3309964]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3309964]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3309964]["DeleteItem"][1]["Id"] = 3309964

--赤炼石+2
tSummerbigCharge_Awarditem[3309972] = {}
tSummerbigCharge_Awarditem[3309972]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3309972]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3309972]["RewardItem"][1]["Id"] = 730002
tSummerbigCharge_Awarditem[3309972]["RewardItem"][1]["Attr"] = "0 1 3"
tSummerbigCharge_Awarditem[3309972]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3309972]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3309972]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3309972]["DeleteItem"][1]["Id"] = 3309972
--赤炼石+3
tSummerbigCharge_Awarditem[3309973] = {}
tSummerbigCharge_Awarditem[3309973]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3309973]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3309973]["RewardItem"][1]["Id"] = 730003
tSummerbigCharge_Awarditem[3309973]["RewardItem"][1]["Attr"] = "0 1 3"
tSummerbigCharge_Awarditem[3309973]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3309973]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3309973]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3309973]["DeleteItem"][1]["Id"] = 3309973
--赤炼石+4
tSummerbigCharge_Awarditem[3309974] = {}
tSummerbigCharge_Awarditem[3309974]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3309974]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3309974]["RewardItem"][1]["Id"] = 730004
tSummerbigCharge_Awarditem[3309974]["RewardItem"][1]["Attr"] = "0 1 3"
tSummerbigCharge_Awarditem[3309974]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3309974]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3309974]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3309974]["DeleteItem"][1]["Id"] = 3309974
--赤炼石+5
tSummerbigCharge_Awarditem[3309975] = {}
tSummerbigCharge_Awarditem[3309975]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3309975]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3309975]["RewardItem"][1]["Id"] = 730005
tSummerbigCharge_Awarditem[3309975]["RewardItem"][1]["Attr"] = "0 1 3"
tSummerbigCharge_Awarditem[3309975]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3309975]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3309975]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3309975]["DeleteItem"][1]["Id"] = 3309975
--赤炼石+6
tSummerbigCharge_Awarditem[3309976] = {}
tSummerbigCharge_Awarditem[3309976]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3309976]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3309976]["RewardItem"][1]["Id"] = 730006
tSummerbigCharge_Awarditem[3309976]["RewardItem"][1]["Attr"] = "0 1 3"
tSummerbigCharge_Awarditem[3309976]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3309976]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3309976]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3309976]["DeleteItem"][1]["Id"] = 3309976

--小固化石（赠）
tSummerbigCharge_Awarditem[3309977] = {}
tSummerbigCharge_Awarditem[3309977]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3309977]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3309977]["RewardItem"][1]["Id"] = 723694
tSummerbigCharge_Awarditem[3309977]["RewardItem"][1]["Attr"] = "0 1 3"
tSummerbigCharge_Awarditem[3309977]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3309977]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3309977]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3309977]["DeleteItem"][1]["Id"] = 3309977

--金刚尖钻（赠）
tSummerbigCharge_Awarditem[3309978] = {}
tSummerbigCharge_Awarditem[3309978]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3309978]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3309978]["RewardItem"][1]["Id"] = 1200005
tSummerbigCharge_Awarditem[3309978]["RewardItem"][1]["Attr"] = "0 1 3"
tSummerbigCharge_Awarditem[3309978]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3309978]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3309978]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3309978]["DeleteItem"][1]["Id"] = 3309978

--天石商店新增物品
--1洞+4-3
--Odddagger（匕首）
tSummerbigCharge_Awarditem[3310226] = {}
tSummerbigCharge_Awarditem[3310226]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3310226]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3310226]["RewardItem"][1]["Id"] = 490169
tSummerbigCharge_Awarditem[3310226]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 3 0 0 4 255"
tSummerbigCharge_Awarditem[3310226]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3310226]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3310226]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3310226]["DeleteItem"][1]["Id"] = 3310226
--CryingHeavyRing（扳指）
tSummerbigCharge_Awarditem[3310227] = {}
tSummerbigCharge_Awarditem[3310227]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3310227]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3310227]["RewardItem"][1]["Id"] = 151229
tSummerbigCharge_Awarditem[3310227]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 3 0 0 4 255"
tSummerbigCharge_Awarditem[3310227]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3310227]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3310227]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3310227]["DeleteItem"][1]["Id"] = 3310227
--LoveForever-女戒
tSummerbigCharge_Awarditem[3310228] = {}
tSummerbigCharge_Awarditem[3310228]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3310228]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3310228]["RewardItem"][1]["Id"] = 150320
tSummerbigCharge_Awarditem[3310228]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 3 0 0 4 255"
tSummerbigCharge_Awarditem[3310228]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3310228]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3310228]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3310228]["DeleteItem"][1]["Id"] = 3310228
--LoveForever-男戒
tSummerbigCharge_Awarditem[3310229] = {}
tSummerbigCharge_Awarditem[3310229]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3310229]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3310229]["RewardItem"][1]["Id"] = 150310
tSummerbigCharge_Awarditem[3310229]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 3 0 0 4 255"
tSummerbigCharge_Awarditem[3310229]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3310229]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3310229]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3310229]["DeleteItem"][1]["Id"] = 3310229

--雷神金币
--1洞+4-3
--Odddagger（匕首）
tSummerbigCharge_Awarditem[3320668] = {}
tSummerbigCharge_Awarditem[3320668]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3320668]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3320668]["RewardItem"][1]["Id"] = 490169
tSummerbigCharge_Awarditem[3320668]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 3 0 0 4 255"
tSummerbigCharge_Awarditem[3320668]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3320668]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3320668]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3320668]["DeleteItem"][1]["Id"] = 3320668
--CryingHeavyRing（扳指）
tSummerbigCharge_Awarditem[3320669] = {}
tSummerbigCharge_Awarditem[3320669]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3320669]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3320669]["RewardItem"][1]["Id"] = 151229
tSummerbigCharge_Awarditem[3320669]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 3 0 0 4 255"
tSummerbigCharge_Awarditem[3320669]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3320669]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3320669]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3320669]["DeleteItem"][1]["Id"] = 3320669
--LoveForever-女戒
tSummerbigCharge_Awarditem[3320670] = {}
tSummerbigCharge_Awarditem[3320670]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3320670]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3320670]["RewardItem"][1]["Id"] = 150320
tSummerbigCharge_Awarditem[3320670]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 3 0 0 4 255"
tSummerbigCharge_Awarditem[3320670]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3320670]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3320670]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3320670]["DeleteItem"][1]["Id"] = 3320670
--LoveForever-男戒
tSummerbigCharge_Awarditem[3320671] = {}
tSummerbigCharge_Awarditem[3320671]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3320671]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3320671]["RewardItem"][1]["Id"] = 150310
tSummerbigCharge_Awarditem[3320671]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 3 0 0 4 255"
tSummerbigCharge_Awarditem[3320671]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3320671]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3320671]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3320671]["DeleteItem"][1]["Id"] = 3320671

--雷神
--Odddagger（匕首）
tSummerbigCharge_Awarditem[3320384] = {}
tSummerbigCharge_Awarditem[3320384]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3320384]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3320384]["RewardItem"][1]["Id"] = 490169
tSummerbigCharge_Awarditem[3320384]["RewardItem"][1]["Attr"] = "0 0 0 0 0 0 0 3 0 0 4 255"
tSummerbigCharge_Awarditem[3320384]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3320384]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3320384]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3320384]["DeleteItem"][1]["Id"] = 3320384

tSummerbigCharge_Awarditem[3321403] = {}
tSummerbigCharge_Awarditem[3321403]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3321403]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3321403]["RewardItem"][1]["Id"] = 490169
tSummerbigCharge_Awarditem[3321403]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 7 0 0 8 255 255"
tSummerbigCharge_Awarditem[3321403]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3321403]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3321403]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3321403]["DeleteItem"][1]["Id"] = 3321403

tSummerbigCharge_Awarditem[3321457] = {}
tSummerbigCharge_Awarditem[3321457]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3321457]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3321457]["RewardItem"][1]["Id"] = 490169
tSummerbigCharge_Awarditem[3321457]["RewardItem"][1]["Attr"] = "0 0 0 0 0 0 0 7 0 0 8 255 255"
tSummerbigCharge_Awarditem[3321457]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3321457]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3321457]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3321457]["DeleteItem"][1]["Id"] = 3321457

tSummerbigCharge_Awarditem[3312592] = {}
tSummerbigCharge_Awarditem[3312592]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3312592]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3312592]["RewardItem"][1]["Id"] = 490169
tSummerbigCharge_Awarditem[3312592]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 7 0 0 8 255 255"
tSummerbigCharge_Awarditem[3312592]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3312592]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3312592]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3312592]["DeleteItem"][1]["Id"] = 3312592

--CryingHeavyRing（扳指）
tSummerbigCharge_Awarditem[3320385] = {}
tSummerbigCharge_Awarditem[3320385]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3320385]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3320385]["RewardItem"][1]["Id"] = 151229
tSummerbigCharge_Awarditem[3320385]["RewardItem"][1]["Attr"] = "0 0 0 0 0 0 0 3 0 0 4 255"
tSummerbigCharge_Awarditem[3320385]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3320385]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3320385]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3320385]["DeleteItem"][1]["Id"] = 3320385

--CryingHeavyRing（扳指）
tSummerbigCharge_Awarditem[3321389] = {}
tSummerbigCharge_Awarditem[3321389]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3321389]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3321389]["RewardItem"][1]["Id"] = 151229
tSummerbigCharge_Awarditem[3321389]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 7 0 0 8 255 255"
tSummerbigCharge_Awarditem[3321389]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3321389]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3321389]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3321389]["DeleteItem"][1]["Id"] = 3321389

--CryingHeavyRing（扳指）
tSummerbigCharge_Awarditem[3321443] = {}
tSummerbigCharge_Awarditem[3321443]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3321443]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3321443]["RewardItem"][1]["Id"] = 151229
tSummerbigCharge_Awarditem[3321443]["RewardItem"][1]["Attr"] = "0 0 0 0 0 0 0 7 0 0 8 255 255"
tSummerbigCharge_Awarditem[3321443]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3321443]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3321443]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3321443]["DeleteItem"][1]["Id"] = 3321443

--CryingHeavyRing（扳指）
tSummerbigCharge_Awarditem[3312578] = {}
tSummerbigCharge_Awarditem[3312578]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3312578]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3312578]["RewardItem"][1]["Id"] = 151229
tSummerbigCharge_Awarditem[3312578]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 7 0 0 8 255 255"
tSummerbigCharge_Awarditem[3312578]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3312578]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3312578]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3312578]["DeleteItem"][1]["Id"] = 3312578

--LoveForever-女戒
tSummerbigCharge_Awarditem[3320386] = {}
tSummerbigCharge_Awarditem[3320386]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3320386]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3320386]["RewardItem"][1]["Id"] = 150320
tSummerbigCharge_Awarditem[3320386]["RewardItem"][1]["Attr"] = "0 0 0 0 0 0 0 3 0 0 4 255"
tSummerbigCharge_Awarditem[3320386]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3320386]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3320386]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3320386]["DeleteItem"][1]["Id"] = 3320386

tSummerbigCharge_Awarditem[3321396] = {}
tSummerbigCharge_Awarditem[3321396]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3321396]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3321396]["RewardItem"][1]["Id"] = 150320
tSummerbigCharge_Awarditem[3321396]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 7 0 0 8 255 255"
tSummerbigCharge_Awarditem[3321396]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3321396]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3321396]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3321396]["DeleteItem"][1]["Id"] = 3321396

tSummerbigCharge_Awarditem[3321450] = {}
tSummerbigCharge_Awarditem[3321450]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3321450]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3321450]["RewardItem"][1]["Id"] = 150320
tSummerbigCharge_Awarditem[3321450]["RewardItem"][1]["Attr"] = "0 0 0 0 0 0 0 7 0 0 8 255 255"
tSummerbigCharge_Awarditem[3321450]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3321450]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3321450]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3321450]["DeleteItem"][1]["Id"] = 3321450

tSummerbigCharge_Awarditem[3312585] = {}
tSummerbigCharge_Awarditem[3312585]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3312585]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3312585]["RewardItem"][1]["Id"] = 150320
tSummerbigCharge_Awarditem[3312585]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 7 0 0 8 255 255"
tSummerbigCharge_Awarditem[3312585]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3312585]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3312585]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3312585]["DeleteItem"][1]["Id"] = 3312585

--LoveForever-男戒
tSummerbigCharge_Awarditem[3320387] = {}
tSummerbigCharge_Awarditem[3320387]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3320387]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3320387]["RewardItem"][1]["Id"] = 150310
tSummerbigCharge_Awarditem[3320387]["RewardItem"][1]["Attr"] = "0 0 0 0 0 0 0 3 0 0 4 255"
tSummerbigCharge_Awarditem[3320387]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3320387]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3320387]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3320387]["DeleteItem"][1]["Id"] = 3320387

tSummerbigCharge_Awarditem[3321397] = {}
tSummerbigCharge_Awarditem[3321397]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3321397]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3321397]["RewardItem"][1]["Id"] = 150310
tSummerbigCharge_Awarditem[3321397]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 7 0 0 8 255 255"
tSummerbigCharge_Awarditem[3321397]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3321397]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3321397]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3321397]["DeleteItem"][1]["Id"] = 3321397

tSummerbigCharge_Awarditem[3321451] = {}
tSummerbigCharge_Awarditem[3321451]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3321451]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3321451]["RewardItem"][1]["Id"] = 150310
tSummerbigCharge_Awarditem[3321451]["RewardItem"][1]["Attr"] = "0 0 0 0 0 0 0 7 0 0 8 255 255"
tSummerbigCharge_Awarditem[3321451]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3321451]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3321451]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3321451]["DeleteItem"][1]["Id"] = 3321451

tSummerbigCharge_Awarditem[3312586] = {}
tSummerbigCharge_Awarditem[3312586]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3312586]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3312586]["RewardItem"][1]["Id"] = 150310
tSummerbigCharge_Awarditem[3312586]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 7 0 0 8 255 255"
tSummerbigCharge_Awarditem[3312586]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3312586]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3312586]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3312586]["DeleteItem"][1]["Id"] = 3312586


--2洞+6-5
--Odddagger（匕首）
tSummerbigCharge_Awarditem[3310387] = {}
tSummerbigCharge_Awarditem[3310387]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3310387]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3310387]["RewardItem"][1]["Id"] = 490169
tSummerbigCharge_Awarditem[3310387]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 0 0 6 255 255"
tSummerbigCharge_Awarditem[3310387]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3310387]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3310387]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3310387]["DeleteItem"][1]["Id"] = 3310387
--CryingHeavyRing（扳指）
tSummerbigCharge_Awarditem[3310388] = {}
tSummerbigCharge_Awarditem[3310388]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3310388]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3310388]["RewardItem"][1]["Id"] = 151229
tSummerbigCharge_Awarditem[3310388]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 0 0 6 255 255"
tSummerbigCharge_Awarditem[3310388]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3310388]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3310388]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3310388]["DeleteItem"][1]["Id"] = 3310388
--LoveForever-女戒
tSummerbigCharge_Awarditem[3310389] = {}
tSummerbigCharge_Awarditem[3310389]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3310389]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3310389]["RewardItem"][1]["Id"] = 150320
tSummerbigCharge_Awarditem[3310389]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 0 0 6 255 255"
tSummerbigCharge_Awarditem[3310389]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3310389]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3310389]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3310389]["DeleteItem"][1]["Id"] = 3310389
--LoveForever-男戒
tSummerbigCharge_Awarditem[3310390] = {}
tSummerbigCharge_Awarditem[3310390]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3310390]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3310390]["RewardItem"][1]["Id"] = 150310
tSummerbigCharge_Awarditem[3310390]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 0 0 6 255 255"
tSummerbigCharge_Awarditem[3310390]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3310390]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3310390]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3310390]["DeleteItem"][1]["Id"] = 3310390

--雷神金币
--2洞+6-5
--Odddagger（匕首）
tSummerbigCharge_Awarditem[3320672] = {}
tSummerbigCharge_Awarditem[3320672]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3320672]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3320672]["RewardItem"][1]["Id"] = 490169
tSummerbigCharge_Awarditem[3320672]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 0 0 6 255 255"
tSummerbigCharge_Awarditem[3320672]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3320672]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3320672]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3320672]["DeleteItem"][1]["Id"] = 3320672
--CryingHeavyRing（扳指）
tSummerbigCharge_Awarditem[3320673] = {}
tSummerbigCharge_Awarditem[3320673]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3320673]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3320673]["RewardItem"][1]["Id"] = 151229
tSummerbigCharge_Awarditem[3320673]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 0 0 6 255 255"
tSummerbigCharge_Awarditem[3320673]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3320673]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3320673]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3320673]["DeleteItem"][1]["Id"] = 3320673
--LoveForever-女戒
tSummerbigCharge_Awarditem[3320674] = {}
tSummerbigCharge_Awarditem[3320674]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3320674]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3320674]["RewardItem"][1]["Id"] = 150320
tSummerbigCharge_Awarditem[3320674]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 0 0 6 255 255"
tSummerbigCharge_Awarditem[3320674]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3320674]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3320674]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3320674]["DeleteItem"][1]["Id"] = 3320674
--LoveForever-男戒
tSummerbigCharge_Awarditem[3320675] = {}
tSummerbigCharge_Awarditem[3320675]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3320675]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3320675]["RewardItem"][1]["Id"] = 150310
tSummerbigCharge_Awarditem[3320675]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 0 0 6 255 255"
tSummerbigCharge_Awarditem[3320675]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3320675]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3320675]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3320675]["DeleteItem"][1]["Id"] = 3320675

--雷神
--2洞+6-5
--Odddagger（匕首）
tSummerbigCharge_Awarditem[3320434] = {}
tSummerbigCharge_Awarditem[3320434]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3320434]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3320434]["RewardItem"][1]["Id"] = 490169
tSummerbigCharge_Awarditem[3320434]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 0 0 6 255 255"
tSummerbigCharge_Awarditem[3320434]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3320434]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3320434]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3320434]["DeleteItem"][1]["Id"] = 3320434
--CryingHeavyRing（扳指）
tSummerbigCharge_Awarditem[3320435] = {}
tSummerbigCharge_Awarditem[3320435]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3320435]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3320435]["RewardItem"][1]["Id"] = 151229
tSummerbigCharge_Awarditem[3320435]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 0 0 6 255 255"
tSummerbigCharge_Awarditem[3320435]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3320435]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3320435]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3320435]["DeleteItem"][1]["Id"] = 3320435
--LoveForever-女戒
tSummerbigCharge_Awarditem[3320436] = {}
tSummerbigCharge_Awarditem[3320436]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3320436]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3320436]["RewardItem"][1]["Id"] = 150320
tSummerbigCharge_Awarditem[3320436]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 0 0 6 255 255"
tSummerbigCharge_Awarditem[3320436]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3320436]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3320436]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3320436]["DeleteItem"][1]["Id"] = 3320436
--LoveForever-男戒
tSummerbigCharge_Awarditem[3320437] = {}
tSummerbigCharge_Awarditem[3320437]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3320437]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3320437]["RewardItem"][1]["Id"] = 150310
tSummerbigCharge_Awarditem[3320437]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 0 0 6 255 255"
tSummerbigCharge_Awarditem[3320437]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3320437]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3320437]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3320437]["DeleteItem"][1]["Id"] = 3320437

--新增外套
tSummerbigCharge_Awarditem[3310391] = {}
tSummerbigCharge_Awarditem[3310391]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3310391]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3310391]["RewardItem"][1]["Id"] = 184355
tSummerbigCharge_Awarditem[3310391]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tSummerbigCharge_Awarditem[3310391]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3310391]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3310391]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3310391]["DeleteItem"][1]["Id"] = 3310391

tSummerbigCharge_Awarditem[3310392] = {}
tSummerbigCharge_Awarditem[3310392]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3310392]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3310392]["RewardItem"][1]["Id"] = 188575
tSummerbigCharge_Awarditem[3310392]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tSummerbigCharge_Awarditem[3310392]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3310392]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3310392]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3310392]["DeleteItem"][1]["Id"] = 3310392

tSummerbigCharge_Awarditem[3310393] = {}
tSummerbigCharge_Awarditem[3310393]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3310393]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3310393]["RewardItem"][1]["Id"] = 183345
tSummerbigCharge_Awarditem[3310393]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tSummerbigCharge_Awarditem[3310393]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3310393]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3310393]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3310393]["DeleteItem"][1]["Id"] = 3310393

tSummerbigCharge_Awarditem[3310394] = {}
tSummerbigCharge_Awarditem[3310394]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3310394]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3310394]["RewardItem"][1]["Id"] = 189095
tSummerbigCharge_Awarditem[3310394]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tSummerbigCharge_Awarditem[3310394]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3310394]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3310394]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3310394]["DeleteItem"][1]["Id"] = 3310394

tSummerbigCharge_Awarditem[3310395] = {}
tSummerbigCharge_Awarditem[3310395]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3310395]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3310395]["RewardItem"][1]["Id"] = 200010
tSummerbigCharge_Awarditem[3310395]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tSummerbigCharge_Awarditem[3310395]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3310395]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3310395]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3310395]["DeleteItem"][1]["Id"] = 3310395

tSummerbigCharge_Awarditem[3310396] = {}
tSummerbigCharge_Awarditem[3310396]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3310396]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3310396]["RewardItem"][1]["Id"] = 200459
tSummerbigCharge_Awarditem[3310396]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tSummerbigCharge_Awarditem[3310396]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3310396]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3310396]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3310396]["DeleteItem"][1]["Id"] = 3310396

tSummerbigCharge_Awarditem[3310397] = {}
tSummerbigCharge_Awarditem[3310397]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3310397]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3310397]["RewardItem"][1]["Id"] = 200445
tSummerbigCharge_Awarditem[3310397]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tSummerbigCharge_Awarditem[3310397]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3310397]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3310397]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3310397]["DeleteItem"][1]["Id"] = 3310397

tSummerbigCharge_Awarditem[3310398] = {}
tSummerbigCharge_Awarditem[3310398]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3310398]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3310398]["RewardItem"][1]["Id"] = 200493
tSummerbigCharge_Awarditem[3310398]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tSummerbigCharge_Awarditem[3310398]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3310398]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3310398]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3310398]["DeleteItem"][1]["Id"] = 3310398

--9月新增物品
tSummerbigCharge_Awarditem[3310557] = {}
tSummerbigCharge_Awarditem[3310557]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3310557]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3310557]["RewardItem"][1]["Id"] = 200554
tSummerbigCharge_Awarditem[3310557]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tSummerbigCharge_Awarditem[3310557]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3310557]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3310557]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3310557]["DeleteItem"][1]["Id"] = 3310557

tSummerbigCharge_Awarditem[3310558] = {}
tSummerbigCharge_Awarditem[3310558]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3310558]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3310558]["RewardItem"][1]["Id"] = 200555
tSummerbigCharge_Awarditem[3310558]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tSummerbigCharge_Awarditem[3310558]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3310558]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3310558]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3310558]["DeleteItem"][1]["Id"] = 3310558

tSummerbigCharge_Awarditem[3310559] = {}
tSummerbigCharge_Awarditem[3310559]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3310559]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3310559]["RewardItem"][1]["Id"] = 200556
tSummerbigCharge_Awarditem[3310559]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tSummerbigCharge_Awarditem[3310559]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3310559]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3310559]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3310559]["DeleteItem"][1]["Id"] = 3310559

tSummerbigCharge_Awarditem[3310560] = {}
tSummerbigCharge_Awarditem[3310560]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3310560]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3310560]["RewardItem"][1]["Id"] = 200557
tSummerbigCharge_Awarditem[3310560]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tSummerbigCharge_Awarditem[3310560]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3310560]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3310560]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3310560]["DeleteItem"][1]["Id"] = 3310560

tSummerbigCharge_Awarditem[3310561] = {}
tSummerbigCharge_Awarditem[3310561]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3310561]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3310561]["RewardItem"][1]["Id"] = 200558
tSummerbigCharge_Awarditem[3310561]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tSummerbigCharge_Awarditem[3310561]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3310561]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3310561]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3310561]["DeleteItem"][1]["Id"] = 3310561

--10月新增物品
tSummerbigCharge_Awarditem[3310733] = {}
tSummerbigCharge_Awarditem[3310733]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3310733]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3310733]["RewardItem"][1]["Id"] = 188655
tSummerbigCharge_Awarditem[3310733]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tSummerbigCharge_Awarditem[3310733]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3310733]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3310733]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3310733]["DeleteItem"][1]["Id"] = 3310733

tSummerbigCharge_Awarditem[3310734] = {}
tSummerbigCharge_Awarditem[3310734]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3310734]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3310734]["RewardItem"][1]["Id"] = 192375
tSummerbigCharge_Awarditem[3310734]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tSummerbigCharge_Awarditem[3310734]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3310734]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3310734]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3310734]["DeleteItem"][1]["Id"] = 3310734

tSummerbigCharge_Awarditem[3310735] = {}
tSummerbigCharge_Awarditem[3310735]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3310735]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3310735]["RewardItem"][1]["Id"] = 200585
tSummerbigCharge_Awarditem[3310735]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tSummerbigCharge_Awarditem[3310735]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3310735]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3310735]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3310735]["DeleteItem"][1]["Id"] = 3310735

tSummerbigCharge_Awarditem[3310736] = {}
tSummerbigCharge_Awarditem[3310736]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3310736]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3310736]["RewardItem"][1]["Id"] = 200586
tSummerbigCharge_Awarditem[3310736]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tSummerbigCharge_Awarditem[3310736]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3310736]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3310736]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3310736]["DeleteItem"][1]["Id"] = 3310736

tSummerbigCharge_Awarditem[3310737] = {}
tSummerbigCharge_Awarditem[3310737]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3310737]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3310737]["RewardItem"][1]["Id"] = 200584
tSummerbigCharge_Awarditem[3310737]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tSummerbigCharge_Awarditem[3310737]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3310737]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3310737]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3310737]["DeleteItem"][1]["Id"] = 3310737

tSummerbigCharge_Awarditem[3310738] = {}
tSummerbigCharge_Awarditem[3310738]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3310738]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3310738]["RewardItem"][1]["Id"] = 200588
tSummerbigCharge_Awarditem[3310738]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tSummerbigCharge_Awarditem[3310738]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3310738]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3310738]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3310738]["DeleteItem"][1]["Id"] = 3310738

tSummerbigCharge_Awarditem[3310739] = {}
tSummerbigCharge_Awarditem[3310739]["RewardItem"] = {}
tSummerbigCharge_Awarditem[3310739]["RewardItem"][1] = {}
tSummerbigCharge_Awarditem[3310739]["RewardItem"][1]["Id"] = 200587
tSummerbigCharge_Awarditem[3310739]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tSummerbigCharge_Awarditem[3310739]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3310739]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3310739]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3310739]["DeleteItem"][1]["Id"] = 3310739

--500赠点礼包
tSummerbigCharge_Awarditem[3306157] = {}
tSummerbigCharge_Awarditem[3306157]["DeleteItem"] = {}
tSummerbigCharge_Awarditem[3306157]["DeleteItem"][1] = {}
tSummerbigCharge_Awarditem[3306157]["DeleteItem"][1]["Id"] = 3306157
tSummerbigCharge_Awarditem[3306157]["RewardEMoneyMono"] = {} 
tSummerbigCharge_Awarditem[3306157]["RewardEMoneyMono"]["Value"] = 500
tSummerbigCharge_Awarditem[3306157]["RewardEMoneyMono"]["EmoneyLog"] = "1000	00084	0	0	1	"
tSummerbigCharge_Awarditem[3306157]["LogId"] = 12001098
tSummerbigCharge_Awarditem[3306157]["SzObj"] = "self"
tSummerbigCharge_Awarditem[3306157]["RewardEffect"] = {}
tSummerbigCharge_Awarditem[3306157]["RewardEffect"]["Effect"] = "zf2-e128"
-----------------------------------------------逻辑-------------------------------------
--500赠点礼包
function SummerbigCharge_GetSVorEMM(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end

	local nUserId = Get_UserId()
	if not RewardTemplate_EMoneyMonoLimit(tSummerbigCharge_Awarditem[nItemId]["RewardEMoneyMono"],nUserId) then
		User_TalkChannel2005(tRewardTemplate_Text["EMoneyMono"])
		return
	end
	RewardTemplate_UseItemAndMsg(tSummerbigCharge_Awarditem[nItemId])
end

--领取轮盘
function SummerbigCharge_GetAward(nItemId)
	if Item_ChkMulItem(nItemId,nItemId,1) then
		User_TalkChannel2005(tSummerbigCharge[23010]["Haved"])
		return
	end
	
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tSummerbigCharge[23010]["Nospace"])
		return
	end
	
	local tSummerbigCharge_Rount = {}
	tSummerbigCharge_Rount[nItemId] = {}
	tSummerbigCharge_Rount[nItemId]["RewardItem"] = {}
	tSummerbigCharge_Rount[nItemId]["RewardItem"][1] = {} 
	tSummerbigCharge_Rount[nItemId]["RewardItem"][1]["Id"] = nItemId
	tSummerbigCharge_Rount[nItemId]["RewardItem"][1]["Attr"] = " 0 1"
	tSummerbigCharge_Rount[nItemId]["LogId"] = 12001098
	
	--获得相关物品
	RewardTemplate_Reward(tSummerbigCharge_Rount[nItemId])
end

--轮盘显示菜单
function SummerbigCharge_Mainshow(nNpcId)

	tNpcGossip[nNpcId]["tOption1-3"] = {}
	for i,v in pairs(tSummerbigCharge_Rounitem) do
		local nTipi = i-1
		if not Item_ChkMulItem(v,v,1) then
			tNpcGossip[nNpcId]["Option"..nTipi+3] = tSummerbigCharge[nNpcId]["Option"..nTipi+3]
			table.insert(tNpcGossip[nNpcId]["tOption1-3"],nTipi+3)
		end
	end
	tNpcGossip[nNpcId]["Option6"] = tSummerbigCharge[nNpcId]["Option6"]
	table.insert(tNpcGossip[nNpcId]["tOption1-3"],6)
	return true
	
end

--轮盘是否过期判断
function SummerbigCharge_RounuseMenu(nItemId)
	--判断物品
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	--判断活动时间
	if not Sys_ChkFullTime(tSummerbigCharge_Data["Festival_NowTime"]) then
		Item_DelItem(nItemId)
		User_TalkChannel2005(tSummerbigCharge[23010]["Nouse"])
		return
	end
	
	return true
end

--转动轮盘
function SummerbigCharge_Rounuse(nItemId)
	--判断物品
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	--判断活动时间
	if not Sys_ChkFullTime(tSummerbigCharge_Data["Festival_NowTime"]) then
		Item_DelItem(nItemId)
		User_TalkChannel2005(tSummerbigCharge[23010]["Nouse"])
		return
	end
	
	--转动轮盘
	local nType = tSummerbigCharge_Rounitemtype[nItemId]
	RouletteMould_Main(nType)
end

--一般打开物品礼包（赠点礼包）
function SummerbigCharge_HourseOpen(nItemId)
	--判断物品
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	--判断活动时间
	if not Sys_ChkFullTime(tSummerbigCharge_Data["Festival_NowTime"]) then
		Item_DelItem(nItemId)
		User_TalkChannel2005(tSummerbigCharge[23010]["Nouse"])
		return
	end
	
	--赠点上限判断
	if Get_UserMonoEMoney() + tSummerbigCharge_Awarditem[nItemId]["RewardEMoneyMono"]["Value"] > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tChildrenCandy_Text["Msg"]["CPMono"])
		return
	end	
	
	RewardTemplate_UseItemAndMsg(tSummerbigCharge_Awarditem[nItemId])
end

--打开获得物品
function SummerbigCharge_HourseOpenpack(nItemId)
	--判断物品
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	--判断活动时间
	if not Sys_ChkFullTime(tSummerbigCharge_Data["Festival_NowTime"]) then
		Item_DelItem(nItemId)
		User_TalkChannel2005(tSummerbigCharge[23010]["Nouse"])
		return
	end
	
	--背包空间判断
	local nSapce = RewardTemplate_GetRewardSpace(tSummerbigCharge_Awarditem[nItemId])
	if not User_CheckLeftSpace(nSapce) then
		User_TalkChannel2005(tSummerbigCharge[23010]["Nospace"])
		return
	end
	
	RewardTemplate_UseItemAndMsg(tSummerbigCharge_Awarditem[nItemId])
end

--新增天石打开获得物品
function SummerbigCharge_StoneHourseOpenpackZeng(nItemId)
	--判断物品
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	--若不是打折物品，则直接打开该礼包
	-- local nCutTip = CommonPackage_ExitTicket() 
	local nReturnMoney,tMemoryBin,sEmoneyLog,nZhengItemId = CommonPackage_ReturnPrice(nItemId,2)
	local nSpace = RewardTemplate_GetRewardSpace(tSummerbigCharge_Awarditem[nItemId])+ WarriorsPromotion_JudgeSpace(nItemId)
	
	if tMemoryBin == nil and nReturnMoney == nil then
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItemAndMsg(tSummerbigCharge_Awarditem[nItemId]) then
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
			if RewardTemplate_UseItemAndMsg(tSummerbigCharge_Awarditem[nItemId]) then
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
		local nEmoney = Get_UserMonoEMoney()
		if nEmoney + nReturnMoney > G_User_MaxEmoneyMono then
			User_TalkChannel2005(tMayPKMonth_Text["Item"]["Text141"])
			Sys_MsgBox(tMayPKMonth_Text["Item"]["Text141"])
			return
		end
		-- end
		
		if User_CheckLeftSpace(nSpace) then
			RewardTemplate_UseItemAndMsg(tSummerbigCharge_Awarditem[nItemId])
			--给玩家对应的印记
			-- CommonPackage_LocationYing(nItemId,nCutTip)
		
			--若是玩家有打折卷则给玩家放对应的天石
			-- if nCutTip == 2  then
				--给对应的天石
			if CommonPackage_DeleteTicket(nZhengItemId,nItemId) and User_AddEMoneyMono(nReturnMoney) then
				Sys_SaveEmoneyBuy(string.format(sEmoneyLog,nReturnMoney))
			end
			-- end
		else
			User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
			Sys_MsgBox(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		end
		
	end
end

--新增天石打开获得物品
function SummerbigCharge_StoneHourseOpenpack(nItemId)
	--判断物品
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	--若不是打折物品，则直接打开该礼包
	-- local nCutTip = CommonPackage_ExitTicket() 
	local nReturnMoney,tMemoryBin,sEmoneyLog,nZhengItemId = CommonPackage_ReturnPrice(nItemId,1)
	local nSpace = RewardTemplate_GetRewardSpace(tSummerbigCharge_Awarditem[nItemId])+ WarriorsPromotion_JudgeSpace(nItemId)
	
	if tMemoryBin == nil and nReturnMoney == nil then
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItemAndMsg(tSummerbigCharge_Awarditem[nItemId]) then
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
			if RewardTemplate_UseItemAndMsg(tSummerbigCharge_Awarditem[nItemId]) then
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
			RewardTemplate_UseItemAndMsg(tSummerbigCharge_Awarditem[nItemId])
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
	
end
---------------------------------------NPC配置---------------------------------------------
tNpcFace[3600] = 90
tNpcGossip[23010] = tNpcGossip[23010] or DefaultNpc:new{}
tNpcGossip[23010]["DialogueText"] = tSummerbigCharge[23010]
tNpcGossip[23010]["OptionHidden"] = 1
-- 活动前
tNpcGossip[23010]["Text1-1"] = {111,112,113}
tNpcGossip[23010]["tOption1-1"] = {1}
tNpcGossip[23010]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tSummerbigCharge_Data["Festival_BefTime"])
end
-- 活动后
tNpcGossip[23010]["Text1-2"] = {114}
tNpcGossip[23010]["tOption1-2"] = {2}
tNpcGossip[23010]["ChkFunc1-2"] = function()
	return not Sys_ChkFullTime(tSummerbigCharge_Data["Festival_NowTime"])
end
-- 活动中
tNpcGossip[23010]["Text1-3"] = {115,116,117,118}
tNpcGossip[23010]["tOption1-3"] = {6}
tNpcGossip[23010]["ChkFunc1-3"] = function()
	return SummerbigCharge_Mainshow(23010)
end
tNpcGossip[23010]["OptionFunc3"] = "SummerbigCharge_GetAward</N>3309802"
tNpcGossip[23010]["OptionFunc4"] = "SummerbigCharge_GetAward</N>3309803"
tNpcGossip[23010]["OptionFunc5"] = "SummerbigCharge_GetAward</N>3309804"


---------------------------------------物品配置---------------------------------------------


--赠点转赠点
tItem[3309802] = tItem[3309802] or {}
tItem[3309802]["Function"] = function (nItemId)
	SummerbigCharge_Rounuse(3309802)
end

--赠点转赤炼石
tItem[3309803] = tItem[3309803] or {}
tItem[3309803]["Function"] = function (nItemId)
	SummerbigCharge_Rounuse(3309803)
end

--赠点转道具
tItem[3309804] = tItem[3309804] or {}
tItem[3309804]["Function"] = function (nItemId)
	SummerbigCharge_Rounuse(3309804)
end



--赠点
tItem[3309805] = tItem[3309805] or {}
tItem[3309805]["Function"] = function (nItemId)
	SummerbigCharge_HourseOpen(nItemId)
end

tItem[3309806] = tItem[3309805] or {}
tItem[3309807] = tItem[3309805] or {}
tItem[3309808] = tItem[3309805] or {}
tItem[3309809] = tItem[3309805] or {}
tItem[3309810] = tItem[3309805] or {}
tItem[3309811] = tItem[3309805] or {}
tItem[3309812] = tItem[3309805] or {}


--赤炼石+2*2
tItem[3309958] = tItem[3309958] or {}
tItem[3309958]["Function"] = function (nItemId)
	SummerbigCharge_HourseOpenpack(nItemId)
end
--赤炼石+3*2
tItem[3309959] = tItem[3309958] or {}
--赤炼石+4*2
tItem[3309960] = tItem[3309958] or {}
--明亮星陨石*4
tItem[3309961] = tItem[3309958] or {}
--神器源晶*20
tItem[3309962] = tItem[3309958] or {}
--黄色神纹精粹（赠）*30
tItem[3309963] = tItem[3309958] or {}
--气力值1000点
tItem[3309965] = tItem[3309958] or {}
--强炼丹（赠）*10
tItem[3309966] = tItem[3309958] or {}
--万能神纹精粹（赠）*30
tItem[3309964] = tItem[3309958] or {}

--新增物品
tItem[3309972] = tItem[3309958] or {}
tItem[3309973] = tItem[3309958] or {}
tItem[3309974] = tItem[3309958] or {}
tItem[3309975] = tItem[3309958] or {}
tItem[3309976] = tItem[3309958] or {}
tItem[3309977] = tItem[3309958] or {}
tItem[3309978] = tItem[3309958] or {}

--天石商店新增物品
tItem[3310226] = tItem[3310226] or {}
tItem[3310226]["Function"] = function (nItemId)
	SummerbigCharge_StoneHourseOpenpack(nItemId)
end
tItem[3310227] = tItem[3310226] or {}
tItem[3310228] = tItem[3310226] or {}
tItem[3310229] = tItem[3310226] or {}
tItem[3310387] = tItem[3310226] or {}
tItem[3310388] = tItem[3310226] or {}
tItem[3310389] = tItem[3310226] or {}
tItem[3310390] = tItem[3310226] or {}

--雷神
tItem[3320384] = tItem[3310226] or {}

tItem[3321403] = tItem[3310226] or {}
tItem[3321457] = tItem[3310226] or {}
tItem[3312592] = tItem[3310226] or {}


tItem[3320385] = tItem[3310226] or {}

tItem[3321389] = tItem[3310226] or {}
tItem[3321443] = tItem[3310226] or {}
tItem[3312578] = tItem[3310226] or {}

tItem[3320386] = tItem[3310226] or {}
tItem[3320387] = tItem[3310226] or {}

tItem[3321396] = tItem[3310226] or {}
tItem[3321397] = tItem[3310226] or {}
tItem[3321450] = tItem[3310226] or {}
tItem[3321451] = tItem[3310226] or {}
tItem[3312585] = tItem[3310226] or {}
tItem[3312586] = tItem[3310226] or {}


tItem[3320434] = tItem[3310226] or {}
tItem[3320435] = tItem[3310226] or {}
tItem[3320436] = tItem[3310226] or {}
tItem[3320437] = tItem[3310226] or {}

--雷神金币
tItem[3320668] = tItem[3310226] or {}
tItem[3320669] = tItem[3310226] or {}
tItem[3320670] = tItem[3310226] or {}
tItem[3320671] = tItem[3310226] or {}
tItem[3320672] = tItem[3310226] or {}
tItem[3320673] = tItem[3310226] or {}
tItem[3320674] = tItem[3310226] or {}
tItem[3320675] = tItem[3310226] or {}


--10月促销大狂欢新增物品
tItem[3310733] = tItem[3310733] or {}
tItem[3310733]["Function"] = function (nItemId)
	SummerbigCharge_StoneHourseOpenpackZeng(nItemId)
end

tItem[3310734] = tItem[3310733] or {}
tItem[3310391] = tItem[3310733] or {}
tItem[3310392] = tItem[3310733] or {}
tItem[3310393] = tItem[3310733] or {}
tItem[3310394] = tItem[3310733] or {}

tItem[3310735] = tItem[3310733] or {}

tItem[3310736] = tItem[3310733] or {}
tItem[3310737] = tItem[3310733] or {}
tItem[3310738] = tItem[3310733] or {}
tItem[3310739] = tItem[3310733] or {}

--赠点购买外套

tItem[3310395] = tItem[3310733] or {}
tItem[3310396] = tItem[3310733] or {}
tItem[3310397] = tItem[3310733] or {}
tItem[3310398] = tItem[3310733] or {}

--9月促销大狂欢新增物品
tItem[3310557] = tItem[3310733] or {}
tItem[3310558] = tItem[3310733] or {}
tItem[3310559] = tItem[3310733] or {}
tItem[3310560] = tItem[3310733] or {}
tItem[3310561] = tItem[3310733] or {}

--500赠点包
tItem[3306157] = tItem[3306157] or {}
tItem[3306157]["Function"] = function(nItemId,sItemName)
	SummerbigCharge_GetSVorEMM(nItemId)
end





