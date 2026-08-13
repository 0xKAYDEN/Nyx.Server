------------------------------------------------------------------------------------
--Name:		190102[简体征服][活动脚本]年初大促销
--Purpose:	年初大促销
--Creator: 	黄啸
--Created:	2019/1/7
------------------------------------------------------------------------------------
-- 命名规则：
-- YearBeginPromotion_

-- Log id : 12001259
-- 掩码说明：
--188,76 背包信

-----------------------------------------基础数据部分-------------------------------------------
local tYearBeginPromotion_Gift = {}
--+2骏马包礼包（赠）
tYearBeginPromotion_Gift[3319153] = {}
tYearBeginPromotion_Gift[3319153][1] = {}
tYearBeginPromotion_Gift[3319153][1]["RewardItem"] = {}
tYearBeginPromotion_Gift[3319153][1]["RewardItem"][1] = {}
tYearBeginPromotion_Gift[3319153][1]["RewardItem"][1]["Id"] = 300000
tYearBeginPromotion_Gift[3319153][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 9830655 150 0 0 2 0 0 0 0 0 0 255"
tYearBeginPromotion_Gift[3319153][1]["DeleteItem"] = {}
tYearBeginPromotion_Gift[3319153][1]["DeleteItem"][1] = {}
tYearBeginPromotion_Gift[3319153][1]["DeleteItem"][1]["Id"] = 3319153
tYearBeginPromotion_Gift[3319153][1]["RewardEffect"] = {}
tYearBeginPromotion_Gift[3319153][1]["RewardEffect"]["SzObj"] = "self"
tYearBeginPromotion_Gift[3319153][1]["RewardEffect"]["Effect"] = "angelwing"
tYearBeginPromotion_Gift[3319153][1]["LogId"] = 12001259
tYearBeginPromotion_Gift[3319153][2] = {}
tYearBeginPromotion_Gift[3319153][2]["RewardItem"] = {}
tYearBeginPromotion_Gift[3319153][2]["RewardItem"][1] = {}
tYearBeginPromotion_Gift[3319153][2]["RewardItem"][1]["Id"] = 300000
tYearBeginPromotion_Gift[3319153][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 2"
tYearBeginPromotion_Gift[3319153][2]["DeleteItem"] = {}
tYearBeginPromotion_Gift[3319153][2]["DeleteItem"][1] = {}
tYearBeginPromotion_Gift[3319153][2]["DeleteItem"][1]["Id"] = 3319153
tYearBeginPromotion_Gift[3319153][2]["RewardEffect"] = {}
tYearBeginPromotion_Gift[3319153][2]["RewardEffect"]["SzObj"] = "self"
tYearBeginPromotion_Gift[3319153][2]["RewardEffect"]["Effect"] = "angelwing"
tYearBeginPromotion_Gift[3319153][2]["LogId"] = 12001259
tYearBeginPromotion_Gift[3319153][3] = {}
tYearBeginPromotion_Gift[3319153][3]["RewardItem"] = {}
tYearBeginPromotion_Gift[3319153][3]["RewardItem"][1] = {}
tYearBeginPromotion_Gift[3319153][3]["RewardItem"][1]["Id"] = 300000
tYearBeginPromotion_Gift[3319153][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 65430 0 255 0 2 0 0 0 0 0 0 150"
tYearBeginPromotion_Gift[3319153][3]["DeleteItem"] = {}
tYearBeginPromotion_Gift[3319153][3]["DeleteItem"][1] = {}
tYearBeginPromotion_Gift[3319153][3]["DeleteItem"][1]["Id"] = 3319153
tYearBeginPromotion_Gift[3319153][3]["RewardEffect"] = {}
tYearBeginPromotion_Gift[3319153][3]["RewardEffect"]["SzObj"] = "self"
tYearBeginPromotion_Gift[3319153][3]["RewardEffect"]["Effect"] = "angelwing"
tYearBeginPromotion_Gift[3319153][3]["LogId"] = 12001259

--25赠品天石礼包（赠）
tYearBeginPromotion_Gift[3319154] = {}
tYearBeginPromotion_Gift[3319154]["RewardEMoneyMono"] = {}
tYearBeginPromotion_Gift[3319154]["RewardEMoneyMono"]["Value"] = 25
tYearBeginPromotion_Gift[3319154]["DeleteItem"] = {}
tYearBeginPromotion_Gift[3319154]["DeleteItem"][1] = {}
tYearBeginPromotion_Gift[3319154]["DeleteItem"][1]["Id"] = 3319154
tYearBeginPromotion_Gift[3319154]["EmoneyLog"] = "1000	00128	0	0	25	"
tYearBeginPromotion_Gift[3319154]["RewardEffect"] = {}
tYearBeginPromotion_Gift[3319154]["RewardEffect"]["SzObj"] = "self"
tYearBeginPromotion_Gift[3319154]["RewardEffect"]["Effect"] = "angelwing"
tYearBeginPromotion_Gift[3319154]["LogId"] = 12001259

--百宝包
tYearBeginPromotion_Gift[3319155] = {}
tYearBeginPromotion_Gift[3319155][1] = {}
tYearBeginPromotion_Gift[3319155][1]["DeleteItem"] = {}
tYearBeginPromotion_Gift[3319155][1]["DeleteItem"][1] = {}
tYearBeginPromotion_Gift[3319155][1]["DeleteItem"][1]["Id"] = 3319155
tYearBeginPromotion_Gift[3319155][1]["RewardItem"] = {}
tYearBeginPromotion_Gift[3319155][1]["RewardItem"][1] = {}
tYearBeginPromotion_Gift[3319155][1]["RewardItem"][1]["Id"] = 700103
tYearBeginPromotion_Gift[3319155][1]["RewardItem"][1]["Attr"] = "0 1"
tYearBeginPromotion_Gift[3319155][1]["RewardItem"][2] = {}
tYearBeginPromotion_Gift[3319155][1]["RewardItem"][2]["Id"] = 1200005
tYearBeginPromotion_Gift[3319155][1]["RewardItem"][2]["Attr"] = "0 1"
tYearBeginPromotion_Gift[3319155][1]["RewardEffect"] = {}
tYearBeginPromotion_Gift[3319155][1]["RewardEffect"]["SzObj"] = "self"
tYearBeginPromotion_Gift[3319155][1]["RewardEffect"]["Effect"] = "angelwing"
tYearBeginPromotion_Gift[3319155][1]["LogId"] = 12001259
tYearBeginPromotion_Gift[3319155][2] = {}
tYearBeginPromotion_Gift[3319155][2]["DeleteItem"] = {}
tYearBeginPromotion_Gift[3319155][2]["DeleteItem"][1] = {}
tYearBeginPromotion_Gift[3319155][2]["DeleteItem"][1]["Id"] = 3319155
tYearBeginPromotion_Gift[3319155][2]["RewardItem"] = {}
tYearBeginPromotion_Gift[3319155][2]["RewardItem"][1] = {}
tYearBeginPromotion_Gift[3319155][2]["RewardItem"][1]["Id"] = 700123
tYearBeginPromotion_Gift[3319155][2]["RewardItem"][1]["Attr"] = "0 1"
tYearBeginPromotion_Gift[3319155][2]["RewardItem"][2] = {}
tYearBeginPromotion_Gift[3319155][2]["RewardItem"][2]["Id"] = 1200005
tYearBeginPromotion_Gift[3319155][2]["RewardItem"][2]["Attr"] = "0 1"
tYearBeginPromotion_Gift[3319155][2]["RewardEffect"] = {}
tYearBeginPromotion_Gift[3319155][2]["RewardEffect"]["SzObj"] = "self"
tYearBeginPromotion_Gift[3319155][2]["RewardEffect"]["Effect"] = "angelwing"
tYearBeginPromotion_Gift[3319155][2]["LogId"] = 12001259

--+7赤练石礼包（赠）
tYearBeginPromotion_Gift[3319156] = {}
tYearBeginPromotion_Gift[3319156]["RewardItem"] = {}
tYearBeginPromotion_Gift[3319156]["RewardItem"][1] = {}
tYearBeginPromotion_Gift[3319156]["RewardItem"][1]["Id"] = 730007
tYearBeginPromotion_Gift[3319156]["RewardItem"][1]["Attr"] = "0 1 3"
tYearBeginPromotion_Gift[3319156]["DeleteItem"] = {}
tYearBeginPromotion_Gift[3319156]["DeleteItem"][1] = {}
tYearBeginPromotion_Gift[3319156]["DeleteItem"][1]["Id"] = 3319156
tYearBeginPromotion_Gift[3319156]["RewardEffect"] = {}
tYearBeginPromotion_Gift[3319156]["RewardEffect"]["SzObj"] = "self"
tYearBeginPromotion_Gift[3319156]["RewardEffect"]["Effect"] = "angelwing"
tYearBeginPromotion_Gift[3319156]["LogId"] = 12001259

--+8赤练石礼包（赠）
tYearBeginPromotion_Gift[3319157] = {}
tYearBeginPromotion_Gift[3319157]["RewardItem"] = {}
tYearBeginPromotion_Gift[3319157]["RewardItem"][1] = {}
tYearBeginPromotion_Gift[3319157]["RewardItem"][1]["Id"] = 730008
tYearBeginPromotion_Gift[3319157]["RewardItem"][1]["Attr"] = "0 1 3"
tYearBeginPromotion_Gift[3319157]["DeleteItem"] = {}
tYearBeginPromotion_Gift[3319157]["DeleteItem"][1] = {}
tYearBeginPromotion_Gift[3319157]["DeleteItem"][1]["Id"] = 3319157
tYearBeginPromotion_Gift[3319157]["RewardEffect"] = {}
tYearBeginPromotion_Gift[3319157]["RewardEffect"]["SzObj"] = "self"
tYearBeginPromotion_Gift[3319157]["RewardEffect"]["Effect"] = "angelwing"
tYearBeginPromotion_Gift[3319157]["LogId"] = 12001259

--100000天石宝箱
tYearBeginPromotion_Gift[3319158] = {}
tYearBeginPromotion_Gift[3319158]["RewardEMoney"] = {}
tYearBeginPromotion_Gift[3319158]["RewardEMoney"]["Value"] = 100000
tYearBeginPromotion_Gift[3319158]["DeleteItem"] = {}
tYearBeginPromotion_Gift[3319158]["DeleteItem"][1] = {}
tYearBeginPromotion_Gift[3319158]["DeleteItem"][1]["Id"] = 3319158
tYearBeginPromotion_Gift[3319158]["EmoneyLog"] = "1000	00129	100000	100000	1	"
tYearBeginPromotion_Gift[3319158]["RewardEffect"] = {}
tYearBeginPromotion_Gift[3319158]["RewardEffect"]["SzObj"] = "self"
tYearBeginPromotion_Gift[3319158]["RewardEffect"]["Effect"] = "angelwing"
tYearBeginPromotion_Gift[3319158]["LogId"] = 12001259

--+6赤练石礼包
tYearBeginPromotion_Gift[3319159] = {}
tYearBeginPromotion_Gift[3319159]["RewardItem"] = {}
tYearBeginPromotion_Gift[3319159]["RewardItem"][1] = {}
tYearBeginPromotion_Gift[3319159]["RewardItem"][1]["Id"] = 730006
tYearBeginPromotion_Gift[3319159]["RewardItem"][1]["Attr"] = "0 1"
tYearBeginPromotion_Gift[3319159]["DeleteItem"] = {}
tYearBeginPromotion_Gift[3319159]["DeleteItem"][1] = {}
tYearBeginPromotion_Gift[3319159]["DeleteItem"][1]["Id"] = 3319159
tYearBeginPromotion_Gift[3319159]["RewardEffect"] = {}
tYearBeginPromotion_Gift[3319159]["RewardEffect"]["SzObj"] = "self"
tYearBeginPromotion_Gift[3319159]["RewardEffect"]["Effect"] = "angelwing"
tYearBeginPromotion_Gift[3319159]["LogId"] = 12001259

--+8赤练石礼包
tYearBeginPromotion_Gift[3319160] = {}
tYearBeginPromotion_Gift[3319160]["RewardItem"] = {}
tYearBeginPromotion_Gift[3319160]["RewardItem"][1] = {}
tYearBeginPromotion_Gift[3319160]["RewardItem"][1]["Id"] = 730008
tYearBeginPromotion_Gift[3319160]["RewardItem"][1]["Attr"] = "0 1"
tYearBeginPromotion_Gift[3319160]["DeleteItem"] = {}
tYearBeginPromotion_Gift[3319160]["DeleteItem"][1] = {}
tYearBeginPromotion_Gift[3319160]["DeleteItem"][1]["Id"] = 3319160
tYearBeginPromotion_Gift[3319160]["RewardEffect"] = {}
tYearBeginPromotion_Gift[3319160]["RewardEffect"]["SzObj"] = "self"
tYearBeginPromotion_Gift[3319160]["RewardEffect"]["Effect"] = "angelwing"
tYearBeginPromotion_Gift[3319160]["LogId"] = 12001259

--大固化石礼包
tYearBeginPromotion_Gift[3319161] = {}
tYearBeginPromotion_Gift[3319161]["RewardItem"] = {}
tYearBeginPromotion_Gift[3319161]["RewardItem"][1] = {}
tYearBeginPromotion_Gift[3319161]["RewardItem"][1]["Id"] = 723695
tYearBeginPromotion_Gift[3319161]["RewardItem"][1]["Attr"] = "0 1"
tYearBeginPromotion_Gift[3319161]["DeleteItem"] = {}
tYearBeginPromotion_Gift[3319161]["DeleteItem"][1] = {}
tYearBeginPromotion_Gift[3319161]["DeleteItem"][1]["Id"] = 3319161
tYearBeginPromotion_Gift[3319161]["RewardEffect"] = {}
tYearBeginPromotion_Gift[3319161]["RewardEffect"]["SzObj"] = "self"
tYearBeginPromotion_Gift[3319161]["RewardEffect"]["Effect"] = "angelwing"
tYearBeginPromotion_Gift[3319161]["LogId"] = 12001259

--金刚尖钻包
tYearBeginPromotion_Gift[3319166] = {}
tYearBeginPromotion_Gift[3319166]["RewardItem"] = {}
tYearBeginPromotion_Gift[3319166]["RewardItem"][1] = {}
tYearBeginPromotion_Gift[3319166]["RewardItem"][1]["Id"] = 1200005
tYearBeginPromotion_Gift[3319166]["RewardItem"][1]["Attr"] = "0 1"
tYearBeginPromotion_Gift[3319166]["DeleteItem"] = {}
tYearBeginPromotion_Gift[3319166]["DeleteItem"][1] = {}
tYearBeginPromotion_Gift[3319166]["DeleteItem"][1]["Id"] = 3319166
tYearBeginPromotion_Gift[3319166]["RewardEffect"] = {}
tYearBeginPromotion_Gift[3319166]["RewardEffect"]["SzObj"] = "self"
tYearBeginPromotion_Gift[3319166]["RewardEffect"]["Effect"] = "angelwing"
tYearBeginPromotion_Gift[3319166]["LogId"] = 12001259

--晶莹星陨石
tYearBeginPromotion_Gift[3319283] = {}
tYearBeginPromotion_Gift[3319283]["RewardItem"] = {}
tYearBeginPromotion_Gift[3319283]["RewardItem"][1] = {}
tYearBeginPromotion_Gift[3319283]["RewardItem"][1]["Id"] = 3009002
tYearBeginPromotion_Gift[3319283]["RewardItem"][1]["Attr"] = "0 1"
tYearBeginPromotion_Gift[3319283]["DeleteItem"] = {}
tYearBeginPromotion_Gift[3319283]["DeleteItem"][1] = {}
tYearBeginPromotion_Gift[3319283]["DeleteItem"][1]["Id"] = 3319283
tYearBeginPromotion_Gift[3319283]["RewardEffect"] = {}
tYearBeginPromotion_Gift[3319283]["RewardEffect"]["SzObj"] = "self"
tYearBeginPromotion_Gift[3319283]["RewardEffect"]["Effect"] = "angelwing"
tYearBeginPromotion_Gift[3319283]["LogId"] = 12001259

--晶莹星陨石*2
tYearBeginPromotion_Gift[3319280] = {}
tYearBeginPromotion_Gift[3319280]["RewardItem"] = {}
tYearBeginPromotion_Gift[3319280]["RewardItem"][1] = {}
tYearBeginPromotion_Gift[3319280]["RewardItem"][1]["Id"] = 3009002
tYearBeginPromotion_Gift[3319280]["RewardItem"][1]["Attr"] = "0 2"
tYearBeginPromotion_Gift[3319280]["DeleteItem"] = {}
tYearBeginPromotion_Gift[3319280]["DeleteItem"][1] = {}
tYearBeginPromotion_Gift[3319280]["DeleteItem"][1]["Id"] = 3319280
tYearBeginPromotion_Gift[3319280]["RewardEffect"] = {}
tYearBeginPromotion_Gift[3319280]["RewardEffect"]["SzObj"] = "self"
tYearBeginPromotion_Gift[3319280]["RewardEffect"]["Effect"] = "angelwing"
tYearBeginPromotion_Gift[3319280]["LogId"] = 12001259

--璀璨星陨石
tYearBeginPromotion_Gift[3319281] = {}
tYearBeginPromotion_Gift[3319281]["RewardItem"] = {}
tYearBeginPromotion_Gift[3319281]["RewardItem"][1] = {}
tYearBeginPromotion_Gift[3319281]["RewardItem"][1]["Id"] = 3009003
tYearBeginPromotion_Gift[3319281]["RewardItem"][1]["Attr"] = "0 1"
tYearBeginPromotion_Gift[3319281]["DeleteItem"] = {}
tYearBeginPromotion_Gift[3319281]["DeleteItem"][1] = {}
tYearBeginPromotion_Gift[3319281]["DeleteItem"][1]["Id"] = 3319281
tYearBeginPromotion_Gift[3319281]["RewardEffect"] = {}
tYearBeginPromotion_Gift[3319281]["RewardEffect"]["SzObj"] = "self"
tYearBeginPromotion_Gift[3319281]["RewardEffect"]["Effect"] = "angelwing"
tYearBeginPromotion_Gift[3319281]["LogId"] = 12001259

--璀璨星陨石*2
tYearBeginPromotion_Gift[3319282] = {}
tYearBeginPromotion_Gift[3319282]["RewardItem"] = {}
tYearBeginPromotion_Gift[3319282]["RewardItem"][1] = {}
tYearBeginPromotion_Gift[3319282]["RewardItem"][1]["Id"] = 3009003
tYearBeginPromotion_Gift[3319282]["RewardItem"][1]["Attr"] = "0 2"
tYearBeginPromotion_Gift[3319282]["DeleteItem"] = {}
tYearBeginPromotion_Gift[3319282]["DeleteItem"][1] = {}
tYearBeginPromotion_Gift[3319282]["DeleteItem"][1]["Id"] = 3319282
tYearBeginPromotion_Gift[3319282]["RewardEffect"] = {}
tYearBeginPromotion_Gift[3319282]["RewardEffect"]["SzObj"] = "self"
tYearBeginPromotion_Gift[3319282]["RewardEffect"]["Effect"] = "angelwing"
tYearBeginPromotion_Gift[3319282]["LogId"] = 12001259

--龙珠卷包
tYearBeginPromotion_Gift[3319167] = {}
tYearBeginPromotion_Gift[3319167]["RewardItem"] = {}
tYearBeginPromotion_Gift[3319167]["RewardItem"][1] = {}
tYearBeginPromotion_Gift[3319167]["RewardItem"][1]["Id"] = 720028
tYearBeginPromotion_Gift[3319167]["RewardItem"][1]["Attr"] = "0 1"
tYearBeginPromotion_Gift[3319167]["DeleteItem"] = {}
tYearBeginPromotion_Gift[3319167]["DeleteItem"][1] = {}
tYearBeginPromotion_Gift[3319167]["DeleteItem"][1]["Id"] = 3319167
tYearBeginPromotion_Gift[3319167]["RewardEffect"] = {}
tYearBeginPromotion_Gift[3319167]["RewardEffect"]["SzObj"] = "self"
tYearBeginPromotion_Gift[3319167]["RewardEffect"]["Effect"] = "angelwing"
tYearBeginPromotion_Gift[3319167]["LogId"] = 12001259

--小固化石包
tYearBeginPromotion_Gift[3319168] = {}
tYearBeginPromotion_Gift[3319168]["RewardItem"] = {}
tYearBeginPromotion_Gift[3319168]["RewardItem"][1] = {}
tYearBeginPromotion_Gift[3319168]["RewardItem"][1]["Id"] = 723694
tYearBeginPromotion_Gift[3319168]["RewardItem"][1]["Attr"] = "0 1"
tYearBeginPromotion_Gift[3319168]["DeleteItem"] = {}
tYearBeginPromotion_Gift[3319168]["DeleteItem"][1] = {}
tYearBeginPromotion_Gift[3319168]["DeleteItem"][1]["Id"] = 3319168
tYearBeginPromotion_Gift[3319168]["RewardEffect"] = {}
tYearBeginPromotion_Gift[3319168]["RewardEffect"]["SzObj"] = "self"
tYearBeginPromotion_Gift[3319168]["RewardEffect"]["Effect"] = "angelwing"
tYearBeginPromotion_Gift[3319168]["LogId"] = 12001259

--3000修为值包
tYearBeginPromotion_Gift[3319170] = {}
tYearBeginPromotion_Gift[3319170]["RewardRepairValue"] = {}
tYearBeginPromotion_Gift[3319170]["RewardRepairValue"]["Value"] = 3000
tYearBeginPromotion_Gift[3319170]["DeleteItem"] = {}
tYearBeginPromotion_Gift[3319170]["DeleteItem"][1] = {}
tYearBeginPromotion_Gift[3319170]["DeleteItem"][1]["Id"] = 3319170
tYearBeginPromotion_Gift[3319170]["RewardEffect"] = {}
tYearBeginPromotion_Gift[3319170]["RewardEffect"]["SzObj"] = "self"
tYearBeginPromotion_Gift[3319170]["RewardEffect"]["Effect"] = "angelwing"
tYearBeginPromotion_Gift[3319170]["LogId"] = 12001259

--10颗究极通神丹包（赠）
tYearBeginPromotion_Gift[3319171] = {}
tYearBeginPromotion_Gift[3319171]["RewardItem"] = {}
tYearBeginPromotion_Gift[3319171]["RewardItem"][1] = {}
tYearBeginPromotion_Gift[3319171]["RewardItem"][1]["Id"] = 3003126
tYearBeginPromotion_Gift[3319171]["RewardItem"][1]["Attr"] = "0 10 3"
tYearBeginPromotion_Gift[3319171]["DeleteItem"] = {}
tYearBeginPromotion_Gift[3319171]["DeleteItem"][1] = {}
tYearBeginPromotion_Gift[3319171]["DeleteItem"][1]["Id"] = 3319171
tYearBeginPromotion_Gift[3319171]["RewardEffect"] = {}
tYearBeginPromotion_Gift[3319171]["RewardEffect"]["SzObj"] = "self"
tYearBeginPromotion_Gift[3319171]["RewardEffect"]["Effect"] = "angelwing"
tYearBeginPromotion_Gift[3319171]["LogId"] = 12001259

--50颗通神丹包（赠）
tYearBeginPromotion_Gift[3319172] = {}
tYearBeginPromotion_Gift[3319172]["RewardItem"] = {}
tYearBeginPromotion_Gift[3319172]["RewardItem"][1] = {}
tYearBeginPromotion_Gift[3319172]["RewardItem"][1]["Id"] = 3003125
tYearBeginPromotion_Gift[3319172]["RewardItem"][1]["Attr"] = "0 50 3"
tYearBeginPromotion_Gift[3319172]["DeleteItem"] = {}
tYearBeginPromotion_Gift[3319172]["DeleteItem"][1] = {}
tYearBeginPromotion_Gift[3319172]["DeleteItem"][1]["Id"] = 3319172
tYearBeginPromotion_Gift[3319172]["RewardEffect"] = {}
tYearBeginPromotion_Gift[3319172]["RewardEffect"]["SzObj"] = "self"
tYearBeginPromotion_Gift[3319172]["RewardEffect"]["Effect"] = "angelwing"
tYearBeginPromotion_Gift[3319172]["LogId"] = 12001259

--超级经验丹包（赠）
tYearBeginPromotion_Gift[3319173] = {}
tYearBeginPromotion_Gift[3319173]["RewardItem"] = {}
tYearBeginPromotion_Gift[3319173]["RewardItem"][1] = {}
tYearBeginPromotion_Gift[3319173]["RewardItem"][1]["Id"] = 722057
tYearBeginPromotion_Gift[3319173]["RewardItem"][1]["Attr"] = "0 1 3"
tYearBeginPromotion_Gift[3319173]["DeleteItem"] = {}
tYearBeginPromotion_Gift[3319173]["DeleteItem"][1] = {}
tYearBeginPromotion_Gift[3319173]["DeleteItem"][1]["Id"] = 3319173
tYearBeginPromotion_Gift[3319173]["RewardEffect"] = {}
tYearBeginPromotion_Gift[3319173]["RewardEffect"]["SzObj"] = "self"
tYearBeginPromotion_Gift[3319173]["RewardEffect"]["Effect"] = "angelwing"
tYearBeginPromotion_Gift[3319173]["LogId"] = 12001259

--100000气力值宝箱（赠）
tYearBeginPromotion_Gift[3319174] = {}
tYearBeginPromotion_Gift[3319174]["RewardStrengthValue"] = {}
tYearBeginPromotion_Gift[3319174]["RewardStrengthValue"]["Value"] = 100000
tYearBeginPromotion_Gift[3319174]["DeleteItem"] = {}
tYearBeginPromotion_Gift[3319174]["DeleteItem"][1] = {}
tYearBeginPromotion_Gift[3319174]["DeleteItem"][1]["Id"] = 3319174
tYearBeginPromotion_Gift[3319174]["RewardEffect"] = {}
tYearBeginPromotion_Gift[3319174]["RewardEffect"]["SzObj"] = "self"
tYearBeginPromotion_Gift[3319174]["RewardEffect"]["Effect"] = "angelwing"
tYearBeginPromotion_Gift[3319174]["LogId"] = 12001259

--赠品大固化石*1包
tYearBeginPromotion_Gift[3319175] = {}
tYearBeginPromotion_Gift[3319175]["RewardItem"] = {}
tYearBeginPromotion_Gift[3319175]["RewardItem"][1] = {}
tYearBeginPromotion_Gift[3319175]["RewardItem"][1]["Id"] = 723695
tYearBeginPromotion_Gift[3319175]["RewardItem"][1]["Attr"] = "0 1 3"
tYearBeginPromotion_Gift[3319175]["DeleteItem"] = {}
tYearBeginPromotion_Gift[3319175]["DeleteItem"][1] = {}
tYearBeginPromotion_Gift[3319175]["DeleteItem"][1]["Id"] = 3319175
tYearBeginPromotion_Gift[3319175]["RewardEffect"] = {}
tYearBeginPromotion_Gift[3319175]["RewardEffect"]["SzObj"] = "self"
tYearBeginPromotion_Gift[3319175]["RewardEffect"]["Effect"] = "angelwing"
tYearBeginPromotion_Gift[3319175]["LogId"] = 12001259

--SplendidStarStonePack(B)
tYearBeginPromotion_Gift[3319278] = {}
tYearBeginPromotion_Gift[3319278]["RewardItem"] = {}
tYearBeginPromotion_Gift[3319278]["RewardItem"][1] = {}
tYearBeginPromotion_Gift[3319278]["RewardItem"][1]["Id"] = 3009003
tYearBeginPromotion_Gift[3319278]["RewardItem"][1]["Attr"] = "0 1 3"
tYearBeginPromotion_Gift[3319278]["DeleteItem"] = {}
tYearBeginPromotion_Gift[3319278]["DeleteItem"][1] = {}
tYearBeginPromotion_Gift[3319278]["DeleteItem"][1]["Id"] = 3319278
tYearBeginPromotion_Gift[3319278]["RewardEffect"] = {}
tYearBeginPromotion_Gift[3319278]["RewardEffect"]["SzObj"] = "self"
tYearBeginPromotion_Gift[3319278]["RewardEffect"]["Effect"] = "angelwing"
tYearBeginPromotion_Gift[3319278]["LogId"] = 12001259

--天怒地灵可选包
tYearBeginPromotion_Gift[3319279] = {}
tYearBeginPromotion_Gift[3319279][1] = {}
tYearBeginPromotion_Gift[3319279][1]["RewardItem"] = {}
tYearBeginPromotion_Gift[3319279][1]["RewardItem"][1] = {}
tYearBeginPromotion_Gift[3319279][1]["RewardItem"][1]["Id"] = 700103
tYearBeginPromotion_Gift[3319279][1]["RewardItem"][1]["Attr"] = "0 1"
tYearBeginPromotion_Gift[3319279][1]["DeleteItem"] = {}
tYearBeginPromotion_Gift[3319279][1]["DeleteItem"][1] = {}
tYearBeginPromotion_Gift[3319279][1]["DeleteItem"][1]["Id"] = 3319279
tYearBeginPromotion_Gift[3319279][1]["RewardEffect"] = {}
tYearBeginPromotion_Gift[3319279][1]["RewardEffect"]["SzObj"] = "self"
tYearBeginPromotion_Gift[3319279][1]["RewardEffect"]["Effect"] = "angelwing"
tYearBeginPromotion_Gift[3319279][1]["LogId"] = 12001259
tYearBeginPromotion_Gift[3319279][2] = {}
tYearBeginPromotion_Gift[3319279][2]["RewardItem"] = {}
tYearBeginPromotion_Gift[3319279][2]["RewardItem"][1] = {}
tYearBeginPromotion_Gift[3319279][2]["RewardItem"][1]["Id"] = 700123
tYearBeginPromotion_Gift[3319279][2]["RewardItem"][1]["Attr"] = "0 1"
tYearBeginPromotion_Gift[3319279][2]["DeleteItem"] = {}
tYearBeginPromotion_Gift[3319279][2]["DeleteItem"][1] = {}
tYearBeginPromotion_Gift[3319279][2]["DeleteItem"][1]["Id"] = 3319279
tYearBeginPromotion_Gift[3319279][2]["RewardEffect"] = {}
tYearBeginPromotion_Gift[3319279][2]["RewardEffect"]["SzObj"] = "self"
tYearBeginPromotion_Gift[3319279][2]["RewardEffect"]["Effect"] = "angelwing"
tYearBeginPromotion_Gift[3319279][2]["LogId"] = 12001259

--+3赤练石(赠)
tYearBeginPromotion_Gift[3319284] = {}
tYearBeginPromotion_Gift[3319284]["RewardItem"] = {}
tYearBeginPromotion_Gift[3319284]["RewardItem"][1] = {}
tYearBeginPromotion_Gift[3319284]["RewardItem"][1]["Id"] = 730003
tYearBeginPromotion_Gift[3319284]["RewardItem"][1]["Attr"] = "0 1 3"
tYearBeginPromotion_Gift[3319284]["DeleteItem"] = {}
tYearBeginPromotion_Gift[3319284]["DeleteItem"][1] = {}
tYearBeginPromotion_Gift[3319284]["DeleteItem"][1]["Id"] = 3319284
tYearBeginPromotion_Gift[3319284]["RewardEffect"] = {}
tYearBeginPromotion_Gift[3319284]["RewardEffect"]["SzObj"] = "self"
tYearBeginPromotion_Gift[3319284]["RewardEffect"]["Effect"] = "angelwing"
tYearBeginPromotion_Gift[3319284]["LogId"] = 12001259

-------------------------------------------函数部分-------------------------------------------
--打开天石商店
function YearBeginPromotion_OpenStone(nNpcId)
	
	if not Sys_ChkFullTime(tActivityTime["YearBeginPromotion"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	User_OpenDialog()
end

--一般礼包打开获得相关物品
function YearBeginPromotion_OpenNormalbag(nItemId)

	if not Item_ChkItem(nItemId) then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tYearBeginPromotion_Gift[nItemId])
	
end

--打开+2骏马礼包
function YearBeginPromotion_HouseBag(nItemId,nTip)
	
	if not Item_ChkItem(nItemId) then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tYearBeginPromotion_Gift[nItemId][nTip])
end

--赠品天石礼包打开获得
function YearBeginPromotion_EmoneMonoBag(nItemId)

	if not Item_ChkItem(nItemId) then
		return
	end
	
	local nUserId = Get_UserId()
	if not RewardTemplate_EMoneyMonoLimit(tYearBeginPromotion_Gift[nItemId]["RewardEMoneyMono"],nUserId) then
		User_TalkChannel2005(tRewardTemplate_Text["EMoneyMono"])
		return
	end
	RewardTemplate_UseItemAndMsg(tYearBeginPromotion_Gift[nItemId])
	
end

--天石礼包打开获得
function YearBeginPromotion_EmoneBag(nItemId)

	if not Item_ChkItem(nItemId) then
		return
	end
	
	local nUserId = Get_UserId()
	if not RewardTemplate_EMoneyLimit(tYearBeginPromotion_Gift[nItemId]["RewardEMoney"],nUserId) then
		User_TalkChannel2005(tRewardTemplate_Text["EMoney"])
		return
	end
	
	RewardTemplate_UseItemAndMsg(tYearBeginPromotion_Gift[nItemId])
	
end


--------------------------------------------NPC模版----------------------------------------

-- 23646	露娜
tNpcFace[6430] = 110
tNpcFace[6431] = 115
tNpcFace[6432] = 109
tNpcGossip[23646] = tNpcGossip[23646] or DefaultNpc:new{}
tNpcGossip[23646]["OptionHidden"] = 1
tNpcGossip[23646]["DialogueText"] = tYearBeginPromotion_Text[23646]

-- 活动前
tNpcGossip[23646]["Text1-1"] = {111,112}
tNpcGossip[23646]["tOption1-1"] = {111}
tNpcGossip[23646]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tActivityTime["YearBeginPromotion"]["BeforeActivityTime"])
end

-- 活动后
tNpcGossip[23646]["Text1-2"] = {113}
tNpcGossip[23646]["tOption1-2"] = {112}
tNpcGossip[23646]["ChkFunc1-2"] = function()
	return not Sys_ChkFullTime(tActivityTime["YearBeginPromotion"]["ActivityTime"])
end

tNpcGossip[23646]["Text1-3"] = {114,115}
tNpcGossip[23646]["tOption1-3"] = {113,114,115}
--打开天石商店
tNpcGossip[23646]["OptionFunc113"] = "YearBeginPromotion_OpenStone</N>23646"
--寻路到各种npc
tNpcGossip[23646]["OptionFunc114"] = "NpcPosition_PathFind</N>23647"
tNpcGossip[23646]["OptionFunc115"] = "NpcPosition_PathFind</N>23648"


--------------------------------------------物品模版----------------------------------------
--新年促销一般礼包
tItem[3319156] = tItem[3319156] or {}
tItem[3319156]["Function"] = function(nItemId,sItemName)
	YearBeginPromotion_OpenNormalbag(nItemId)
end
tItem[3319157] = tItem[3319156] or {}
tItem[3319159] = tItem[3319156] or {}
tItem[3319160] = tItem[3319156] or {}
tItem[3319161] = tItem[3319156] or {}
tItem[3319166] = tItem[3319156] or {}
tItem[3319283] = tItem[3319156] or {}
tItem[3319280] = tItem[3319156] or {}
tItem[3319281] = tItem[3319156] or {}
tItem[3319282] = tItem[3319156] or {}
tItem[3319167] = tItem[3319156] or {}
tItem[3319168] = tItem[3319156] or {}
tItem[3319170] = tItem[3319156] or {}
tItem[3319171] = tItem[3319156] or {}
tItem[3319172] = tItem[3319156] or {}
tItem[3319173] = tItem[3319156] or {}
tItem[3319174] = tItem[3319156] or {}
tItem[3319175] = tItem[3319156] or {}
tItem[3319278] = tItem[3319156] or {}
tItem[3319284] = tItem[3319156] or {}

--赠品天石礼包打开获得
tItem[3319154] = tItem[3319154] or {}
tItem[3319154]["Function"] = function(nItemId,sItemName)
	YearBeginPromotion_EmoneMonoBag(nItemId)
end

--天石礼包打开获得
tItem[3319158] = tItem[3319158] or {}
tItem[3319158]["Function"] = function(nItemId,sItemName)
	YearBeginPromotion_EmoneBag(nItemId)
end


--+2骏马
tItemFace[3319153] = 2074
tItem[3319153] = tItem[3319153] or {}
tItem[3319153]["DialogueText"] = tYearBeginPromotion_Text[3319153]
tItem[3319153]["Text1-1"] = {111}
tItem[3319153]["tOption1-1"] = {111,112,113}
tItem[3319153]["OptionFunc111"] = "YearBeginPromotion_HouseBag</N>3319153</N>1"
tItem[3319153]["OptionFunc112"] = "YearBeginPromotion_HouseBag</N>3319153</N>2"
tItem[3319153]["OptionFunc113"] = "YearBeginPromotion_HouseBag</N>3319153</N>3"

--天怒地灵可选包
tItemFace[3319279] = 964
tItem[3319279] = tItem[3319279] or {}
tItem[3319279]["DialogueText"] = tYearBeginPromotion_Text[3319279]
tItem[3319279]["Text1-1"] = {111}
tItem[3319279]["tOption1-1"] = {111,112}
tItem[3319279]["OptionFunc111"] = "YearBeginPromotion_HouseBag</N>3319279</N>1"
tItem[3319279]["OptionFunc112"] = "YearBeginPromotion_HouseBag</N>3319279</N>2"

--金刚尖钻天怒地灵可选包
tItemFace[3319155] = 2077
tItem[3319155] = tItem[3319155] or {}
tItem[3319155]["DialogueText"] = tYearBeginPromotion_Text[3319155]
tItem[3319155]["Text1-1"] = {111}
tItem[3319155]["tOption1-1"] = {111,112}
tItem[3319155]["OptionFunc111"] = "YearBeginPromotion_HouseBag</N>3319155</N>1"
tItem[3319155]["OptionFunc112"] = "YearBeginPromotion_HouseBag</N>3319155</N>2"

--轮盘
tItem[3319169] = tItem[3319169] or {}
tItem[3319169]["Function"] = function (nItemId,sItemName)
	RouletteMould_Main(6911)
end

tItem[3319176] = tItem[3319176] or {}
tItem[3319176]["Function"] = function (nItemId,sItemName)
	RouletteMould_Main(6912)
end

tItem[3319216] = tItem[3319216] or {}
tItem[3319216]["Function"] = function (nItemId,sItemName)
	RouletteMould_Main(6913)
end
