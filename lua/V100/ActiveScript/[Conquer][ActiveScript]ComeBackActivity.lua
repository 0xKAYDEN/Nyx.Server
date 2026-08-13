---Name:160922[英语征服][活动脚本]10月老玩家回归活动礼包和发奖action制作
--Creator: 		杨晓晓
--Created:		2016-09-22
------------------------------------------------------------------------------------------

--命名前缀
--tComeBackActivity_
---------------------------------------------

--奖励模板
local tComeBackActivity_Reward = {}

--RefinedGemPack(B) ,打开后可在1个ThunderGem(B)和1个GloryGem(B)中任选其一。
	tComeBackActivity_Reward[3300715] = {}
	tComeBackActivity_Reward[3300715][700102] = {}
	tComeBackActivity_Reward[3300715][700102]["DeleteItem"] = {}
	tComeBackActivity_Reward[3300715][700102]["DeleteItem"][1] = {}
	tComeBackActivity_Reward[3300715][700102]["DeleteItem"][1]["Id"] = 3300715
	tComeBackActivity_Reward[3300715][700102]["RewardDelay"] = 1
	tComeBackActivity_Reward[3300715][700102]["RewardTimeType"] = 4
	tComeBackActivity_Reward[3300715][700102]["RewardItem"] = {}
	tComeBackActivity_Reward[3300715][700102]["RewardItem"][1] = {}
	tComeBackActivity_Reward[3300715][700102]["RewardItem"][1]["Id"] = 700102
	tComeBackActivity_Reward[3300715][700102]["RewardItem"][1]["Attr"] = "0 1 3"
	tComeBackActivity_Reward[3300715][700102]["Talk"] = tComeBackActivity_Text[3300715][700102]
	tComeBackActivity_Reward[3300715][700102]["Log"] = "0,0,0,0,12000524,2,700102,1"
	tComeBackActivity_Reward[3300715][700122] = {}
	tComeBackActivity_Reward[3300715][700122]["DeleteItem"] = {}
	tComeBackActivity_Reward[3300715][700122]["DeleteItem"][1] = {}
	tComeBackActivity_Reward[3300715][700122]["DeleteItem"][1]["Id"] = 3300715
	tComeBackActivity_Reward[3300715][700122]["RewardDelay"] = 1
	tComeBackActivity_Reward[3300715][700122]["RewardTimeType"] = 4
	tComeBackActivity_Reward[3300715][700122]["RewardItem"] = {}
	tComeBackActivity_Reward[3300715][700122]["RewardItem"][1] = {}
	tComeBackActivity_Reward[3300715][700122]["RewardItem"][1]["Id"] = 700122
	tComeBackActivity_Reward[3300715][700122]["RewardItem"][1]["Attr"] = "0 1 3"
	tComeBackActivity_Reward[3300715][700122]["Talk"] = tComeBackActivity_Text[3300715][700122]
	tComeBackActivity_Reward[3300715][700122]["Log"] = "0,0,0,0,12000524,2,700122,1"
--一阶尊享礼盒:打开可获得1个明亮星陨石*10礼包、1个PrayingStone(M)(B)、1个EliteEXPBallPack(B)、1个EndeavorScroll(B)和1件30天时效的1%神佑GoldenDream(B)。
	tComeBackActivity_Reward[3300716] = {}
	tComeBackActivity_Reward[3300716][1] = {}
	tComeBackActivity_Reward[3300716][1]["RewardItem"] = {}
	tComeBackActivity_Reward[3300716][1]["RewardItem"][1] = {}
	tComeBackActivity_Reward[3300716][1]["RewardItem"][1]["Id"] = 3300721
	tComeBackActivity_Reward[3300716][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" 
	tComeBackActivity_Reward[3300716][1]["RewardItem"][2] = {}
	tComeBackActivity_Reward[3300716][1]["RewardItem"][2]["Id"] = 1200001
	tComeBackActivity_Reward[3300716][1]["RewardItem"][2]["Attr"] = "0 1 3" 
	tComeBackActivity_Reward[3300716][1]["RewardItem"][3] = {}
	tComeBackActivity_Reward[3300716][1]["RewardItem"][3]["Id"] = 729563
	tComeBackActivity_Reward[3300716][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tComeBackActivity_Reward[3300716][1]["RewardItem"][4] = {}
	tComeBackActivity_Reward[3300716][1]["RewardItem"][4]["Id"] = 3001407
	tComeBackActivity_Reward[3300716][1]["RewardItem"][4]["Attr"] = "0 1 3" 
	tComeBackActivity_Reward[3300716][1]["RewardItem"][5] = {}
	tComeBackActivity_Reward[3300716][1]["RewardItem"][5]["Id"] = 189105
	tComeBackActivity_Reward[3300716][1]["RewardItem"][5]["Attr"] = "0 1 3 43200 0 0 0 1" 
	tComeBackActivity_Reward[3300716][1]["Talk"] = tComeBackActivity_Text[3300716][1]
	tComeBackActivity_Reward[3300716][1]["Log"] = "0,0,0,0,12000524,2,3300721[1200001][729563][3001407][189105],1[1][1][1][1]"
	tComeBackActivity_Reward[3300716][1]["DeleteItem"] = {}
	tComeBackActivity_Reward[3300716][1]["DeleteItem"][1] = {}
	tComeBackActivity_Reward[3300716][1]["DeleteItem"][1]["Id"] = 3300716
	--二阶尊享礼盒:打开可获得1个明亮星陨石*10礼包、1个5000ChiPointsPack(B)、1个究极通神丹（赠）*30礼包、1个MartialTalentPack(B) 和1件30天时效的1%神佑GoldenDream(B)。
	tComeBackActivity_Reward[3300717] = {}
	tComeBackActivity_Reward[3300717][1] = {}
	tComeBackActivity_Reward[3300717][1]["RewardItem"] = {}
	tComeBackActivity_Reward[3300717][1]["RewardItem"][1] = {}
	tComeBackActivity_Reward[3300717][1]["RewardItem"][1]["Id"] = 3300721
	tComeBackActivity_Reward[3300717][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" 
	tComeBackActivity_Reward[3300717][1]["RewardItem"][2] = {}
	tComeBackActivity_Reward[3300717][1]["RewardItem"][2]["Id"] = 3004581
	tComeBackActivity_Reward[3300717][1]["RewardItem"][2]["Attr"] = "0 1 3" 
	tComeBackActivity_Reward[3300717][1]["RewardItem"][3] = {}
	tComeBackActivity_Reward[3300717][1]["RewardItem"][3]["Id"] = 3005113
	tComeBackActivity_Reward[3300717][1]["RewardItem"][3]["Attr"] = "0 1 3" 
	tComeBackActivity_Reward[3300717][1]["RewardItem"][4] = {}
	tComeBackActivity_Reward[3300717][1]["RewardItem"][4]["Id"] = 3300723
	tComeBackActivity_Reward[3300717][1]["RewardItem"][4]["Attr"] = "0 1 0" 
	tComeBackActivity_Reward[3300717][1]["RewardItem"][5] = {}
	tComeBackActivity_Reward[3300717][1]["RewardItem"][5]["Id"] = 189105
	tComeBackActivity_Reward[3300717][1]["RewardItem"][5]["Attr"] = "0 1 3 43200 0 0 0 1" 
	tComeBackActivity_Reward[3300717][1]["Talk"] = tComeBackActivity_Text[3300717][1]
	tComeBackActivity_Reward[3300717][1]["Log"] = "0,0,0,0,12000524,2,3300721[3004581][3005113][3300723][189105],1[1][1][1][1]"
	tComeBackActivity_Reward[3300717][1]["DeleteItem"] = {}
	tComeBackActivity_Reward[3300717][1]["DeleteItem"][1] = {}
	tComeBackActivity_Reward[3300717][1]["DeleteItem"][1]["Id"] = 3300717
	--三阶尊享礼盒:打开可获得1个晶莹星陨石*10礼包、1个10000ChiPointsPack(B)、1个StarDrill、1个究极通神丹（赠）*50礼包、1个GreatTalentPack(B)和1件30天时效的1%神佑FreedomSuit(B)。
	tComeBackActivity_Reward[3300718] = {}
	tComeBackActivity_Reward[3300718][1] = {}
	tComeBackActivity_Reward[3300718][1]["RewardItem"] = {}
	tComeBackActivity_Reward[3300718][1]["RewardItem"][1] = {}
	tComeBackActivity_Reward[3300718][1]["RewardItem"][1]["Id"] = 3300724
	tComeBackActivity_Reward[3300718][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" 
	tComeBackActivity_Reward[3300718][1]["RewardItem"][2] = {}
	tComeBackActivity_Reward[3300718][1]["RewardItem"][2]["Id"] = 3200706
	tComeBackActivity_Reward[3300718][1]["RewardItem"][2]["Attr"] = "0 1 3" 
	tComeBackActivity_Reward[3300718][1]["RewardItem"][3] = {}
	tComeBackActivity_Reward[3300718][1]["RewardItem"][3]["Id"] = 1200006
	tComeBackActivity_Reward[3300718][1]["RewardItem"][3]["Attr"] = "0 1"
	tComeBackActivity_Reward[3300718][1]["RewardItem"][4] = {}
	tComeBackActivity_Reward[3300718][1]["RewardItem"][4]["Id"] = 3300725
	tComeBackActivity_Reward[3300718][1]["RewardItem"][4]["Attr"] = "0 1 0" 
	tComeBackActivity_Reward[3300718][1]["RewardItem"][5] = {}
	tComeBackActivity_Reward[3300718][1]["RewardItem"][5]["Id"] = 193195
	tComeBackActivity_Reward[3300718][1]["RewardItem"][5]["Attr"] = "0 1 3 43200 0 0 0 1" 
	tComeBackActivity_Reward[3300718][1]["RewardItem"][6] = {}
	tComeBackActivity_Reward[3300718][1]["RewardItem"][6]["Id"] = 3005114
	tComeBackActivity_Reward[3300718][1]["RewardItem"][6]["Attr"] = "0 1 3" 
	tComeBackActivity_Reward[3300718][1]["Talk"] = tComeBackActivity_Text[3300718][1]
	tComeBackActivity_Reward[3300718][1]["Log"] = "0,0,0,0,12000524,2,3300724[3200706][1200006][3300725][193195][3005114],1[1][1][1][1][1]"
	tComeBackActivity_Reward[3300718][1]["DeleteItem"] = {}
	tComeBackActivity_Reward[3300718][1]["DeleteItem"][1] = {}
	tComeBackActivity_Reward[3300718][1]["DeleteItem"][1]["Id"] = 3300718
	--四阶尊享礼盒:打开可获得1个晶莹星陨石*20礼包、1个20000ChiPointsPack(B)、1个护心丹*30礼包、1个究极通神丹（赠）*50礼包、1个1000CPsPack(B)和1件30天时效的1%神佑PrideofSuccess(B)。
	tComeBackActivity_Reward[3300719] = {}
	tComeBackActivity_Reward[3300719][1] = {}
	tComeBackActivity_Reward[3300719][1]["RewardItem"] = {}
	tComeBackActivity_Reward[3300719][1]["RewardItem"][1] = {}
	tComeBackActivity_Reward[3300719][1]["RewardItem"][1]["Id"] = 3300726
	tComeBackActivity_Reward[3300719][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" 
	tComeBackActivity_Reward[3300719][1]["RewardItem"][2] = {}
	tComeBackActivity_Reward[3300719][1]["RewardItem"][2]["Id"] = 3300137
	tComeBackActivity_Reward[3300719][1]["RewardItem"][2]["Attr"] = "0 1 3" 
	tComeBackActivity_Reward[3300719][1]["RewardItem"][3] = {}
	tComeBackActivity_Reward[3300719][1]["RewardItem"][3]["Id"] = 3300728
	tComeBackActivity_Reward[3300719][1]["RewardItem"][3]["Attr"] = "0 1 0"
	tComeBackActivity_Reward[3300719][1]["RewardItem"][4] = {}
	tComeBackActivity_Reward[3300719][1]["RewardItem"][4]["Id"] = 3300725
	tComeBackActivity_Reward[3300719][1]["RewardItem"][4]["Attr"] = "0 1 0" 
	tComeBackActivity_Reward[3300719][1]["RewardItem"][5] = {}
	tComeBackActivity_Reward[3300719][1]["RewardItem"][5]["Id"] = 3004878
	tComeBackActivity_Reward[3300719][1]["RewardItem"][5]["Attr"] = "0 1 3" 
	tComeBackActivity_Reward[3300719][1]["RewardItem"][6] = {}
	tComeBackActivity_Reward[3300719][1]["RewardItem"][6]["Id"] = 193225
	tComeBackActivity_Reward[3300719][1]["RewardItem"][6]["Attr"] = "0 1 3 43200 0 0 0 1" 
	tComeBackActivity_Reward[3300719][1]["Talk"] = tComeBackActivity_Text[3300719][1]
	tComeBackActivity_Reward[3300719][1]["Log"] = "0,0,0,0,12000524,2,3300726[3300137][3300728][3300725][3004878][193225],1[1][1][1][1][1]"
	tComeBackActivity_Reward[3300719][1]["DeleteItem"] = {}
	tComeBackActivity_Reward[3300719][1]["DeleteItem"][1] = {}
	tComeBackActivity_Reward[3300719][1]["DeleteItem"][1]["Id"] = 3300719
	--回归精炼礼包:打开可获得1个Class5StarPack(B)、1个DragonBall(B)和1个优质宝石（赠）可选包。
	tComeBackActivity_Reward[3300720] = {}
	tComeBackActivity_Reward[3300720][1] = {}
	tComeBackActivity_Reward[3300720][1]["RewardItem"] = {}
	tComeBackActivity_Reward[3300720][1]["RewardItem"][1] = {}
	tComeBackActivity_Reward[3300720][1]["RewardItem"][1]["Id"] = 3200471
	tComeBackActivity_Reward[3300720][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" 
	tComeBackActivity_Reward[3300720][1]["RewardItem"][2] = {}
	tComeBackActivity_Reward[3300720][1]["RewardItem"][2]["Id"] = 1088000
	tComeBackActivity_Reward[3300720][1]["RewardItem"][2]["Attr"] = "0 1 3" 
	tComeBackActivity_Reward[3300720][1]["RewardItem"][3] = {}
	tComeBackActivity_Reward[3300720][1]["RewardItem"][3]["Id"] = 3300722
	tComeBackActivity_Reward[3300720][1]["RewardItem"][3]["Attr"] = "0 1 0"
	tComeBackActivity_Reward[3300720][1]["Talk"] = tComeBackActivity_Text[3300720][1]
	tComeBackActivity_Reward[3300720][1]["Log"] = "0,0,0,0,12000524,2,3200471[1088000][3300722],1[1][1]"
	tComeBackActivity_Reward[3300720][1]["DeleteItem"] = {}
	tComeBackActivity_Reward[3300720][1]["DeleteItem"][1] = {}
	tComeBackActivity_Reward[3300720][1]["DeleteItem"][1]["Id"] = 3300720
--RewardingLessonPack:打开可获得1个500PotencyPointsPack(B)、1个5000ChiPointsPack(B)、1个明亮星陨石*10礼包和1个DragonBall(B)。
	tComeBackActivity_Reward[3300727] = {}
	tComeBackActivity_Reward[3300727][1] = {}
	tComeBackActivity_Reward[3300727][1]["RewardItem"] = {}
	tComeBackActivity_Reward[3300727][1]["RewardItem"][1] = {}
	tComeBackActivity_Reward[3300727][1]["RewardItem"][1]["Id"] = 3300469
	tComeBackActivity_Reward[3300727][1]["RewardItem"][1]["Attr"] = "0 1 3" 
	tComeBackActivity_Reward[3300727][1]["RewardItem"][2] = {}
	tComeBackActivity_Reward[3300727][1]["RewardItem"][2]["Id"] = 3004581
	tComeBackActivity_Reward[3300727][1]["RewardItem"][2]["Attr"] = "0 1 3" 
	tComeBackActivity_Reward[3300727][1]["RewardItem"][3] = {}
	tComeBackActivity_Reward[3300727][1]["RewardItem"][3]["Id"] = 1088000
	tComeBackActivity_Reward[3300727][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tComeBackActivity_Reward[3300727][1]["RewardItem"][4] = {}
	tComeBackActivity_Reward[3300727][1]["RewardItem"][4]["Id"] = 3300721
	tComeBackActivity_Reward[3300727][1]["RewardItem"][4]["Attr"] = "0 1 0 2880 1"
	tComeBackActivity_Reward[3300727][1]["Talk"] = tComeBackActivity_Text[3300727][1]
	tComeBackActivity_Reward[3300727][1]["Log"] = "0,0,0,0,12000524,2,3300469[3004581][1088000][3300721],1[1][1][1]"
	tComeBackActivity_Reward[3300727][1]["DeleteItem"] = {}
	tComeBackActivity_Reward[3300727][1]["DeleteItem"][1] = {}
	tComeBackActivity_Reward[3300727][1]["DeleteItem"][1]["Id"] = 3300727
	
	
--明亮星陨石x10礼包
	tComeBackActivity_Reward[3300721] = {}
	tComeBackActivity_Reward[3300721][1] = {}
	tComeBackActivity_Reward[3300721][1]["RewardItem"] = {}
	tComeBackActivity_Reward[3300721][1]["RewardItem"][1] = {}
	tComeBackActivity_Reward[3300721][1]["RewardItem"][1]["Id"] = 3009001
	tComeBackActivity_Reward[3300721][1]["RewardItem"][1]["Attr"] = "0 10 0 2880 1" 
	tComeBackActivity_Reward[3300721][1]["Talk"] = tComeBackActivity_Text[3300721][1]
	tComeBackActivity_Reward[3300721][1]["Log"] = "0,0,0,0,12000524,2,3009001,10"
	tComeBackActivity_Reward[3300721][1]["DeleteItem"] = {}
	tComeBackActivity_Reward[3300721][1]["DeleteItem"][1] = {}
	tComeBackActivity_Reward[3300721][1]["DeleteItem"][1]["Id"] = 3300721
--究极通神丹（赠）*30礼包
	tComeBackActivity_Reward[3300723] = {}
	tComeBackActivity_Reward[3300723][1] = {}
	tComeBackActivity_Reward[3300723][1]["RewardItem"] = {}
	tComeBackActivity_Reward[3300723][1]["RewardItem"][1] = {}
	tComeBackActivity_Reward[3300723][1]["RewardItem"][1]["Id"] = 3003126
	tComeBackActivity_Reward[3300723][1]["RewardItem"][1]["Attr"] = "0 30 3" 
	tComeBackActivity_Reward[3300723][1]["Talk"] = tComeBackActivity_Text[3300723][1]
	tComeBackActivity_Reward[3300723][1]["Log"] = "0,0,0,0,12000524,2,3003126,30"
	tComeBackActivity_Reward[3300723][1]["DeleteItem"] = {}
	tComeBackActivity_Reward[3300723][1]["DeleteItem"][1] = {}
	tComeBackActivity_Reward[3300723][1]["DeleteItem"][1]["Id"] = 3300723
	--究极通神丹（赠）*50礼包
	tComeBackActivity_Reward[3300725] = {}
	tComeBackActivity_Reward[3300725][1] = {}
	tComeBackActivity_Reward[3300725][1]["RewardItem"] = {}
	tComeBackActivity_Reward[3300725][1]["RewardItem"][1] = {}
	tComeBackActivity_Reward[3300725][1]["RewardItem"][1]["Id"] = 3003126
	tComeBackActivity_Reward[3300725][1]["RewardItem"][1]["Attr"] = "0 50 3" 
	tComeBackActivity_Reward[3300725][1]["Talk"] = tComeBackActivity_Text[3300725][1]
	tComeBackActivity_Reward[3300725][1]["Log"] = "0,0,0,0,12000524,2,3003126,50"
	tComeBackActivity_Reward[3300725][1]["DeleteItem"] = {}
	tComeBackActivity_Reward[3300725][1]["DeleteItem"][1] = {}
	tComeBackActivity_Reward[3300725][1]["DeleteItem"][1]["Id"] = 3300725
--晶莹星陨石x10礼包
	tComeBackActivity_Reward[3300724] = {}
	tComeBackActivity_Reward[3300724][1] = {}
	tComeBackActivity_Reward[3300724][1]["RewardItem"] = {}
	tComeBackActivity_Reward[3300724][1]["RewardItem"][1] = {}
	tComeBackActivity_Reward[3300724][1]["RewardItem"][1]["Id"] = 3009002
	tComeBackActivity_Reward[3300724][1]["RewardItem"][1]["Attr"] = "0 10 0 2880 1" 
	tComeBackActivity_Reward[3300724][1]["Talk"] = tComeBackActivity_Text[3300724][1]
	tComeBackActivity_Reward[3300724][1]["Log"] = "0,0,0,0,12000524,2,3009002,10"
	tComeBackActivity_Reward[3300724][1]["DeleteItem"] = {}
	tComeBackActivity_Reward[3300724][1]["DeleteItem"][1] = {}
	tComeBackActivity_Reward[3300724][1]["DeleteItem"][1]["Id"] = 3300724
--护心丹x30礼包
	tComeBackActivity_Reward[3300728] = {}
	tComeBackActivity_Reward[3300728][1] = {}
	tComeBackActivity_Reward[3300728][1]["RewardItem"] = {}
	tComeBackActivity_Reward[3300728][1]["RewardItem"][1] = {}
	tComeBackActivity_Reward[3300728][1]["RewardItem"][1]["Id"] = 3002030
	tComeBackActivity_Reward[3300728][1]["RewardItem"][1]["Attr"] = "0 30 3"
	tComeBackActivity_Reward[3300728][1]["Talk"] = tComeBackActivity_Text[3300728][1]
	tComeBackActivity_Reward[3300728][1]["Log"] = "0,0,0,0,12000524,2,3002030,30"
	tComeBackActivity_Reward[3300728][1]["DeleteItem"] = {}
	tComeBackActivity_Reward[3300728][1]["DeleteItem"][1] = {}
	tComeBackActivity_Reward[3300728][1]["DeleteItem"][1]["Id"] = 3300728
--优质宝石（赠）可选包
	tComeBackActivity_Reward[3300722] = {}
	tComeBackActivity_Reward[3300722][700013] = {}
	tComeBackActivity_Reward[3300722][700013]["DeleteItem"] = {}
	tComeBackActivity_Reward[3300722][700013]["DeleteItem"][1] = {}
	tComeBackActivity_Reward[3300722][700013]["DeleteItem"][1]["Id"] = 3300722
	tComeBackActivity_Reward[3300722][700013]["RewardDelay"] = 1
	tComeBackActivity_Reward[3300722][700013]["RewardTimeType"] = 4
	tComeBackActivity_Reward[3300722][700013]["RewardItem"] = {}
	tComeBackActivity_Reward[3300722][700013]["RewardItem"][1] = {}
	tComeBackActivity_Reward[3300722][700013]["RewardItem"][1]["Id"] =  700013
	tComeBackActivity_Reward[3300722][700013]["RewardItem"][1]["Attr"] = "0 1 3"
	tComeBackActivity_Reward[3300722][700013]["Talk"] = tComeBackActivity_Text[3300722][ 700013]
	tComeBackActivity_Reward[3300722][700013]["Log"] = "0,0,0,0,12000524,2, 700013,1"
	tComeBackActivity_Reward[3300722][700003] = {}
	tComeBackActivity_Reward[3300722][700003]["DeleteItem"] = {}
	tComeBackActivity_Reward[3300722][700003]["DeleteItem"][1] = {}
	tComeBackActivity_Reward[3300722][700003]["DeleteItem"][1]["Id"] = 3300722
	tComeBackActivity_Reward[3300722][700003]["RewardDelay"] = 1
	tComeBackActivity_Reward[3300722][700003]["RewardTimeType"] = 4
	tComeBackActivity_Reward[3300722][700003]["RewardItem"] = {}
	tComeBackActivity_Reward[3300722][700003]["RewardItem"][1] = {}
	tComeBackActivity_Reward[3300722][700003]["RewardItem"][1]["Id"] =  700003
	tComeBackActivity_Reward[3300722][700003]["RewardItem"][1]["Attr"] = "0 1 3"
	tComeBackActivity_Reward[3300722][700003]["Talk"] = tComeBackActivity_Text[3300722][ 700003]
	tComeBackActivity_Reward[3300722][700003]["Log"] = "0,0,0,0,12000524,2, 700003,1"
--晶莹星陨石*20礼包
	tComeBackActivity_Reward[3300726] = {}
	tComeBackActivity_Reward[3300726][1] = {}
	tComeBackActivity_Reward[3300726][1]["RewardItem"] = {}
	tComeBackActivity_Reward[3300726][1]["RewardItem"][1] = {}
	tComeBackActivity_Reward[3300726][1]["RewardItem"][1]["Id"] = 3009002
	tComeBackActivity_Reward[3300726][1]["RewardItem"][1]["Attr"] = "0 20 0 2880 1"
	tComeBackActivity_Reward[3300726][1]["Talk"] = tComeBackActivity_Text[3300726][1]
	tComeBackActivity_Reward[3300726][1]["Log"] = "0,0,0,0,12000524,2,3009002,20"
	tComeBackActivity_Reward[3300726][1]["DeleteItem"] = {}
	tComeBackActivity_Reward[3300726][1]["DeleteItem"][1] = {}
	tComeBackActivity_Reward[3300726][1]["DeleteItem"][1]["Id"] = 3300726
	
------------------------------逻辑部分---------------------------
--确认是否领奖 
function ComeBackActivity_Confirm(nItemId, nIndex,sOptionText)
	local sOptionText = tComeBackActivity_Text[nItemId][sOptionText]
	--重设对白文字
	Sys_DialogItemFace(nItemId)
	tItem[nItemId]["Text211"] = string.format(tComeBackActivity_Text[nItemId]["Text211"],sOptionText)
	--重设选项函数
	tItem[nItemId]["OptionFunc211"] = "ComeBackActivity_Open</N>"..nItemId.."</N>"..nIndex
	
	LinkItemGossipFunc_New(nItemId,"2-1")
end

--打开礼包
function ComeBackActivity_Open(nItemId, nIndex)
	 RewardTemplate_UseItemAndMsg(tComeBackActivity_Reward[nItemId][nIndex])
end
	

------------------------------物品模板---------------------------
--RefinedGemPack(B)
tItem[3300715] = tItem[3300715] or {}
tItem[3300715]["DialogueText"] =tComeBackActivity_Text[3300715]
tItem[3300715]["Text1-1"] = {111}
tItem[3300715]["tOption1-1"] = {1,2,3}
tItem[3300715]["OptionFunc1"] = "ComeBackActivity_Confirm</N>3300715</N>700102</S>Option1"
tItem[3300715]["OptionFunc2"] = "ComeBackActivity_Confirm</N>3300715</N>700122</S>Option2"
tItem[3300715]["Text2-1"] = {211}
tItem[3300715]["Text211"] = tComeBackActivity_Text[3300715]["Text211"]
tItem[3300715]["tOption2-1"] = {211,212}
--一阶尊享礼盒
tItem[3300716] = tItem[3300716] or {}
tItem[3300716]["Function"] = function(nItemId,sItemName)
	ComeBackActivity_Open(nItemId,1)
end
--二阶尊享礼盒
tItem[3300717] = tItem[3300717] or {}
tItem[3300717]["Function"] = function(nItemId,sItemName)
	ComeBackActivity_Open(nItemId,1)
end
--三阶尊享礼盒
tItem[3300718] = tItem[3300718] or {}
tItem[3300718]["Function"] = function(nItemId,sItemName)
	ComeBackActivity_Open(nItemId,1)
end
--四阶尊享礼盒
tItem[3300719] = tItem[3300719] or {}
tItem[3300719]["Function"] = function(nItemId,sItemName)
	ComeBackActivity_Open(nItemId,1)
end
--回归精炼礼包
tItem[3300720] = tItem[3300720] or {}
tItem[3300720]["Function"] = function(nItemId,sItemName)
	ComeBackActivity_Open(nItemId,1)
end
--回归精炼礼包
tItem[3300720] = tItem[3300720] or {}
tItem[3300720]["Function"] = function(nItemId,sItemName)
	ComeBackActivity_Open(nItemId,1)
end
--明亮星陨石*10礼包
tItem[3300721] = tItem[3300721] or {}
tItem[3300721]["Function"] = function(nItemId,sItemName)
	ComeBackActivity_Open(nItemId,1)
end

--优质宝石（赠）可选包
tItemFace[3300722] = 2665
tItem[3300722] = tItem[3300722] or {}
tItem[3300722]["DialogueText"] =tComeBackActivity_Text[3300722]
tItem[3300722]["Text1-1"] = {111}
tItem[3300722]["tOption1-1"] = {1,2,3}
tItem[3300722]["OptionFunc1"] = "ComeBackActivity_Confirm</N>3300722</N>700013</S>Option1"
tItem[3300722]["OptionFunc2"] = "ComeBackActivity_Confirm</N>3300722</N>700003</S>Option2"
tItem[3300722]["Text2-1"] = {211}
tItem[3300722]["Text211"] = tComeBackActivity_Text[3300722]["Text211"]
tItem[3300722]["tOption2-1"] = {211,212}

--究极通神丹（赠）*30礼包
tItem[3300723] = tItem[3300723] or {}
tItem[3300723]["Function"] = function(nItemId,sItemName)
	ComeBackActivity_Open(nItemId,1)
end
--晶莹星陨石*10礼包
tItem[3300724] = tItem[3300724] or {}
tItem[3300724]["Function"] = function(nItemId,sItemName)
	ComeBackActivity_Open(nItemId,1)
end
--究极通神丹（赠）*50礼包
tItem[3300725] = tItem[3300725] or {}
tItem[3300725]["Function"] = function(nItemId,sItemName)
	ComeBackActivity_Open(nItemId,1)
end
--晶莹星陨石*20礼包
tItem[3300726] = tItem[3300726] or {}
tItem[3300726]["Function"] = function(nItemId,sItemName)
	ComeBackActivity_Open(nItemId,1)
end
--RewardingLessonPack
tItem[3300727] = tItem[3300727] or {}
tItem[3300727]["Function"] = function(nItemId,sItemName)
	ComeBackActivity_Open(nItemId,1)
end
--BigProtectionPillPack(B)
tItem[3300728] = tItem[3300728] or {}
tItem[3300728]["Function"] = function(nItemId,sItemName)
	ComeBackActivity_Open(nItemId,1)
end

