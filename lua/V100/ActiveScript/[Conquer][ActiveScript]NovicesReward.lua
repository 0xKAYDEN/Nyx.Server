------------------------------------------------------------------------------------
--Name：            190421[英文征服][活动脚本]地推新手卡奖励兑换制作需求(5.5-6.30)
--Creator:      耿力兀
--Created:     2019-04-21
------------------------------------------------------------------------------------
--任务需求：
--前缀：NovicesReward_
--stc掩码：193  91	--背包信
--		   193  92	--礼包领取次数

--logId :	成功兑换礼包 350 22145
--			打开付费礼包 350 22146
--			12001386
------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tNovicesReward_Data = {}
	tNovicesReward_Data["Level"] = 1	--等级需求
	tNovicesReward_Data["Metempsychosis"] = 1	--转世需求

local tNovicesReward_CDK = {}
	tNovicesReward_CDK[1] = "conquer99"
	tNovicesReward_CDK[2] = "conquer777"
	
--Log表
local tNovicesReward_Log={}
	tNovicesReward_Log["GetPackage"] =  "350	22145	0	0	1	"		--兑换礼包log
	tNovicesReward_Log["OpenPackage"] = "350	22146"		--天石开启礼包log
	tNovicesReward_Log["Package"]="0,0,%d,1,12001386,2,%d,1"				--获得奖励log
	

local tNovicesReward_Stc = {}
	tNovicesReward_Stc["EventType"] = 193
	tNovicesReward_Stc["DataType"] = 92
	tNovicesReward_Stc["RewardData"] = 1

local tNovicesReward_Reward = {}
	--给轮盘
	tNovicesReward_Reward[1] = {}
	tNovicesReward_Reward[1]["LogId"] = 12001386
	tNovicesReward_Reward[1]["RewardItem"] = {}
	tNovicesReward_Reward[1]["RewardItem"][1] = {}
	tNovicesReward_Reward[1]["RewardItem"][1]["Id"] = 3312755
	tNovicesReward_Reward[1]["RewardItem"][1]["Attr"] = "0 1 3"
	
	-- ===新手特权礼盒
	-- ===索引: tNovicesReward_Reward[3312321]
	-- ===删除: 3312321,1
	-- ===EMoneyLog:10000,0362
	tNovicesReward_Reward[3312321] = {}
	tNovicesReward_Reward[3312321]["LogId"] = 12001386
	tNovicesReward_Reward[3312321]["DeleteItem"] = {}
	tNovicesReward_Reward[3312321]["DeleteItem"][1] = {}
	tNovicesReward_Reward[3312321]["DeleteItem"][1]["Id"] = 3312321 -- 【库】RecruitPrivilegeBox[属性:9]
	tNovicesReward_Reward[3312321]["RewardItem"] = {}
	tNovicesReward_Reward[3312321]["RewardItem"][1] = {}
	tNovicesReward_Reward[3312321]["RewardItem"][1]["Id"] = 3312322 -- 【库】LuxuryPrivilegePack[属性:9], 【表格】豪华特权包
	tNovicesReward_Reward[3312321]["RewardItem"][1]["Attr"] = "0 1" -- LuxuryPrivilegePack*1
	tNovicesReward_Reward[3312321]["RewardItem"][2] = {}
	tNovicesReward_Reward[3312321]["RewardItem"][2]["Id"] = 723700 -- 【库】ExpBall[属性:0], 【表格】赠品经验丹*10
	tNovicesReward_Reward[3312321]["RewardItem"][2]["Attr"] = "0 10 3" -- ExpBall（赠）*10
	tNovicesReward_Reward[3312321]["RewardItem"][3] = {}
	tNovicesReward_Reward[3312321]["RewardItem"][3]["Id"] = 730003 -- 【库】+3Stone[属性:0], 【表格】赠品赤练石+3*10
	tNovicesReward_Reward[3312321]["RewardItem"][3]["Attr"] = "0 10 3" -- +3Stone（赠）*10
	tNovicesReward_Reward[3312321]["RewardEMoneyMono"] = {}
	tNovicesReward_Reward[3312321]["RewardEMoneyMono"]["Value"] = 1000 -- 天石（赠）, 【需求】1000赠点
	tNovicesReward_Reward[3312321]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	0362"
	tNovicesReward_Reward[3312321]["RewardItem"][4] = {}
	tNovicesReward_Reward[3312321]["RewardItem"][4]["Id"] = 360027 -- 【库】InvincibleFist[属性:0], 【表格】赠品7天时效武器外套*2
	tNovicesReward_Reward[3312321]["RewardItem"][4]["Attr"] = "0 2 3 10080 1" -- 7天时效(激活)的InvincibleFist（赠）*2
	tNovicesReward_Reward[3312321]["RewardItem"][5] = {}
	tNovicesReward_Reward[3312321]["RewardItem"][5]["Id"] = 183305 -- 【库】SandRaider[属性:0], 【表格】赠品7天时效外套*1
	tNovicesReward_Reward[3312321]["RewardItem"][5]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的SandRaider（赠）*1
	tNovicesReward_Reward[3312321]["RewardItem"][6] = {}
	tNovicesReward_Reward[3312321]["RewardItem"][6]["Id"] = 200431 -- 【库】WildCamel[属性:0], 【表格】赠品7天时效骑宠*1
	tNovicesReward_Reward[3312321]["RewardItem"][6]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的WildCamel（赠）*1
	tNovicesReward_Reward[3312321]["RewardItem"][7] = {}
	tNovicesReward_Reward[3312321]["RewardItem"][7]["Id"] = 3312328 -- 【库】SuperWeaponPack[属性:9], 【表格】极品武器自选*2
	tNovicesReward_Reward[3312321]["RewardItem"][7]["Attr"] = "0 2" -- SuperWeaponPack*2
	tNovicesReward_Reward[3312321]["RewardItem"][8] = {}
	tNovicesReward_Reward[3312321]["RewardItem"][8]["Id"] = 3312329 -- 【库】SuperArmorPack[属性:9], 【表格】极品防具自选*1
	tNovicesReward_Reward[3312321]["RewardItem"][8]["Attr"] = "0 1" -- SuperArmorPack*1
	tNovicesReward_Reward[3312321]["RewardItem"][9] = {}
	tNovicesReward_Reward[3312321]["RewardItem"][9]["Id"] = 150039 -- 【库】SilverRing[属性:0], 【表格】银戒
	tNovicesReward_Reward[3312321]["RewardItem"][9]["Attr"] = "0 1 3" -- HeartNecklace（赠）*1
	tNovicesReward_Reward[3312321]["RewardItem"][10] = {}
	tNovicesReward_Reward[3312321]["RewardItem"][10]["Id"] = 120029 -- 【库】HeartNecklace[属性:0], 【表格】鸡心项链
	tNovicesReward_Reward[3312321]["RewardItem"][10]["Attr"] = "0 1 3" -- HeartNecklace（赠）*1
	tNovicesReward_Reward[3312321]["RewardItem"][11] = {}
	tNovicesReward_Reward[3312321]["RewardItem"][11]["Id"] = 160039 -- 【库】DeerskinBoots[属性:0], 【表格】鹿皮靴
	tNovicesReward_Reward[3312321]["RewardItem"][11]["Attr"] = "0 1 3" -- DeerskinBoots（赠）*1


	tNovicesReward_Reward[3312322] = {}
	-- ===豪华特权包
	-- ===索引: tNovicesReward_Reward[3312322]
	-- ===删除: 3312322,1
	-- ===EMoneyLog:10000,0362
	tNovicesReward_Reward[3312322]["LogId"] = 12001386
	tNovicesReward_Reward[3312322]["DeleteItem"] = {}
	tNovicesReward_Reward[3312322]["DeleteItem"][1] = {}
	tNovicesReward_Reward[3312322]["DeleteItem"][1]["Id"] = 3312322 -- 【库】LuxuryPrivilegePack[属性:9]
	tNovicesReward_Reward[3312322]["RewardItem"] = {}
	tNovicesReward_Reward[3312322]["RewardItem"][1] = {}
	tNovicesReward_Reward[3312322]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石*5
	tNovicesReward_Reward[3312322]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tNovicesReward_Reward[3312322]["RewardEMoneyMono"] = {}
	tNovicesReward_Reward[3312322]["RewardEMoneyMono"]["Value"] = 3000 -- 天石（赠）, 【需求】3000赠点
	tNovicesReward_Reward[3312322]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	0362"
	tNovicesReward_Reward[3312322]["RewardItem"][2] = {}
	tNovicesReward_Reward[3312322]["RewardItem"][2]["Id"] = 1088000 -- 【库】DragonBall[属性:0], 【表格】赠品龙珠*1
	tNovicesReward_Reward[3312322]["RewardItem"][2]["Attr"] = "0 1 3" -- DragonBall（赠）*1
	tNovicesReward_Reward[3312322]["RewardItem"][3] = {}
	tNovicesReward_Reward[3312322]["RewardItem"][3]["Id"] = 730005 -- 【库】+5Stone[属性:0], 【表格】赠品+5赤练石*1
	tNovicesReward_Reward[3312322]["RewardItem"][3]["Attr"] = "0 1 3" -- +5Stone（赠）*1
	
--自选礼包	
local tNovicesReward_Pack = {}
	--极品武器自选礼包
	tNovicesReward_Pack[3312328]={}
	
	--勇士
	tNovicesReward_Pack[3312328][10]={}
	tNovicesReward_Pack[3312328][10]["DialogIndex"]="6-1"
	--下面武器三选一
	tNovicesReward_Pack[3312328][10]["Option"]={}
	--赠品修罗刀
	tNovicesReward_Pack[3312328][10]["Option"][1]={}
	tNovicesReward_Pack[3312328][10]["Option"][1]["Item_ID"]=410029
	tNovicesReward_Pack[3312328][10]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品青冥剑
	tNovicesReward_Pack[3312328][10]["Option"][2]={}
	tNovicesReward_Pack[3312328][10]["Option"][2]["Item_ID"]=420029
	tNovicesReward_Pack[3312328][10]["Option"][2]["ItemAttr"]="0 1 3"
	--赠品短木棒
	tNovicesReward_Pack[3312328][10]["Option"][3]={}
	tNovicesReward_Pack[3312328][10]["Option"][3]["Item_ID"]=480029
	tNovicesReward_Pack[3312328][10]["Option"][3]["ItemAttr"]="0 1 3"
	
	--战士
	tNovicesReward_Pack[3312328][20]={}
	tNovicesReward_Pack[3312328][20]["DialogIndex"]="7-1"
	--下面武器三选一
	tNovicesReward_Pack[3312328][20]["Option"]={}
	--赠品朱缨枪
	tNovicesReward_Pack[3312328][20]["Option"][1]={}
	tNovicesReward_Pack[3312328][20]["Option"][1]["Item_ID"]=560029
	tNovicesReward_Pack[3312328][20]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品蜡木棍
	tNovicesReward_Pack[3312328][20]["Option"][2]={}
	tNovicesReward_Pack[3312328][20]["Option"][2]["Item_ID"]=561029
	tNovicesReward_Pack[3312328][20]["Option"][2]["ItemAttr"]="0 1 3"
	-- 赠品软藤盾
	tNovicesReward_Pack[3312328][20]["Option"][3]={}
	tNovicesReward_Pack[3312328][20]["Option"][3]["Item_ID"]=900009
	tNovicesReward_Pack[3312328][20]["Option"][3]["ItemAttr"]="0 1 3"
	--赠品赤之燃血
	tNovicesReward_Pack[3312328][20]["Option"][4]={}
	tNovicesReward_Pack[3312328][20]["Option"][4]["Item_ID"]=624029
	tNovicesReward_Pack[3312328][20]["Option"][4]["ItemAttr"]="0 1 3"
	
	
	
	--弓手
	tNovicesReward_Pack[3312328][40]={}
	tNovicesReward_Pack[3312328][40]["DialogIndex"]="8-1"
	--下面武器二选一
	tNovicesReward_Pack[3312328][40]["Option"]={}
	--赠品猎弓
	tNovicesReward_Pack[3312328][40]["Option"][1]={}
	tNovicesReward_Pack[3312328][40]["Option"][1]["Item_ID"]=500019
	tNovicesReward_Pack[3312328][40]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品狼牙飞刀
	tNovicesReward_Pack[3312328][40]["Option"][2]={}
	tNovicesReward_Pack[3312328][40]["Option"][2]["Item_ID"]=613019
	tNovicesReward_Pack[3312328][40]["Option"][2]["ItemAttr"]="0 1 3"
	
	
	--刺客
	tNovicesReward_Pack[3312328][50]={}
	tNovicesReward_Pack[3312328][50]["DialogIndex"]="9-1"
	--下面武器二选一
	tNovicesReward_Pack[3312328][50]["Option"]={}
	--赠品武藏钩镰
	tNovicesReward_Pack[3312328][50]["Option"][1]={}
	tNovicesReward_Pack[3312328][50]["Option"][1]["Item_ID"]=511029
	tNovicesReward_Pack[3312328][50]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品精钢切
	tNovicesReward_Pack[3312328][50]["Option"][2]={}
	tNovicesReward_Pack[3312328][50]["Option"][2]["Item_ID"]=601029
	tNovicesReward_Pack[3312328][50]["Option"][2]["ItemAttr"]="0 1 3"
	
	--武僧
	tNovicesReward_Pack[3312328][60]= {}
	tNovicesReward_Pack[3312328][60]["Item"]={}
	--直接获得一件赠品金蝉念珠
	tNovicesReward_Pack[3312328][60]["Item"]={}
	tNovicesReward_Pack[3312328][60]["Item"]["Item_ID"]= 610029
	tNovicesReward_Pack[3312328][60]["Item"]["ItemAttr"]= "0 1 3"
	
	--海盗
	tNovicesReward_Pack[3312328][70]={}
	tNovicesReward_Pack[3312328][70]["DialogIndex"]="10-1"
	--下面武器二选一
	tNovicesReward_Pack[3312328][70]["Option"]={}
	--赠品勇者佩剑
	tNovicesReward_Pack[3312328][70]["Option"][1]={}
	tNovicesReward_Pack[3312328][70]["Option"][1]["Item_ID"]=611029
	tNovicesReward_Pack[3312328][70]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品中级火枪
	tNovicesReward_Pack[3312328][70]["Option"][2]={}
	tNovicesReward_Pack[3312328][70]["Option"][2]["Item_ID"]=612029
	tNovicesReward_Pack[3312328][70]["Option"][2]["ItemAttr"]="0 1 3"
	
	--截拳
	tNovicesReward_Pack[3312328][80]= {}
	tNovicesReward_Pack[3312328][80]["Item"]={}
	--直接获得一件赠品枣木双截棍
	tNovicesReward_Pack[3312328][80]["Item"]={}
	tNovicesReward_Pack[3312328][80]["Item"]["Item_ID"]= 617029
	tNovicesReward_Pack[3312328][80]["Item"]["ItemAttr"]= "0 1 3"
	
	--道士
	tNovicesReward_Pack[3312328][100]= {}
	tNovicesReward_Pack[3312328][100]["DialogIndex"]="11-1"
	
	--下面武器二选一
	tNovicesReward_Pack[3312328][100]["Option"]={}
	--赠品赠品驱邪剑
	tNovicesReward_Pack[3312328][100]["Option"][1]={}
	tNovicesReward_Pack[3312328][100]["Option"][1]["Item_ID"]=421029
	tNovicesReward_Pack[3312328][100]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品无为如意拂尘
	tNovicesReward_Pack[3312328][100]["Option"][2]={}
	tNovicesReward_Pack[3312328][100]["Option"][2]["Item_ID"]=619029
	tNovicesReward_Pack[3312328][100]["Option"][2]["ItemAttr"]="0 1 3"
	
	--铁扇门
	tNovicesReward_Pack[3312328][160]= {}
	tNovicesReward_Pack[3312328][160]["Item"]={}
	--直接获得一件赠品扇子
	tNovicesReward_Pack[3312328][160]["Item"]={}
	tNovicesReward_Pack[3312328][160]["Item"]["Item_ID"]= 626029
	tNovicesReward_Pack[3312328][160]["Item"]["ItemAttr"]= "0 1 3"
	
	--雷神
	tNovicesReward_Pack[3312328][90] = {}
	tNovicesReward_Pack[3312328][90]["DialogIndex"]="12-1"
	tNovicesReward_Pack[3312328][90]["Option"]={}
	--赠品雷神之锤
	tNovicesReward_Pack[3312328][90]["Option"][1]={}
	tNovicesReward_Pack[3312328][90]["Option"][1]["Item_ID"]=681029
	tNovicesReward_Pack[3312328][90]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品风暴战斧
	tNovicesReward_Pack[3312328][90]["Option"][2]={}
	tNovicesReward_Pack[3312328][90]["Option"][2]["Item_ID"]=680029
	tNovicesReward_Pack[3312328][90]["Option"][2]["ItemAttr"]="0 1 3"
	
--极品装备自选礼包（头盔加护甲）
	tNovicesReward_Pack[3312329]={}
	
	--勇士
	tNovicesReward_Pack[3312329][10]={}
	tNovicesReward_Pack[3312329][10]["DialogIndex"]="6-1"
	tNovicesReward_Pack[3312329][10]["Option"]={}
	--赠品护首铁
	tNovicesReward_Pack[3312329][10]["Option"][1]={}
	tNovicesReward_Pack[3312329][10]["Option"][1]["Item_ID"]=118009
	tNovicesReward_Pack[3312329][10]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品皮护甲
	tNovicesReward_Pack[3312329][10]["Option"][2]={}
	tNovicesReward_Pack[3312329][10]["Option"][2]["Item_ID"]=130009
	tNovicesReward_Pack[3312329][10]["Option"][2]["ItemAttr"]="0 1 3"

	--战士
	tNovicesReward_Pack[3312329][20]={}
	tNovicesReward_Pack[3312329][20]["DialogIndex"]="7-1"
	tNovicesReward_Pack[3312329][20]["Option"]={}
	--赠品浑铁盔
	tNovicesReward_Pack[3312329][20]["Option"][1]={}
	tNovicesReward_Pack[3312329][20]["Option"][1]["Item_ID"]=111009
	tNovicesReward_Pack[3312329][20]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品牛皮铠
	tNovicesReward_Pack[3312329][20]["Option"][2]={}
	tNovicesReward_Pack[3312329][20]["Option"][2]["Item_ID"]=131009
	tNovicesReward_Pack[3312329][20]["Option"][2]["ItemAttr"]="0 1 3"
	
	--弓手
	tNovicesReward_Pack[3312329][40]={}
	tNovicesReward_Pack[3312329][40]["DialogIndex"]="8-1"
	tNovicesReward_Pack[3312329][40]["Option"]={}
	--赠品獾皮帽
	tNovicesReward_Pack[3312329][40]["Option"][1]={}
	tNovicesReward_Pack[3312329][40]["Option"][1]["Item_ID"]=113009
	tNovicesReward_Pack[3312329][40]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品鹿皮猎褂
	tNovicesReward_Pack[3312329][40]["Option"][2]={}
	tNovicesReward_Pack[3312329][40]["Option"][2]["Item_ID"]=133009
	tNovicesReward_Pack[3312329][40]["Option"][2]["ItemAttr"]="0 1 3"
		
	--忍者
	tNovicesReward_Pack[3312329][50]={}
	tNovicesReward_Pack[3312329][50]["DialogIndex"]="9-1"
	tNovicesReward_Pack[3312329][50]["Option"]={}
	--赠品百忍之护
	tNovicesReward_Pack[3312329][50]["Option"][1]={}
	tNovicesReward_Pack[3312329][50]["Option"][1]["Item_ID"]=112009
	tNovicesReward_Pack[3312329][50]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品蓝布护额
	tNovicesReward_Pack[3312329][50]["Option"][2]={}
	tNovicesReward_Pack[3312329][50]["Option"][2]["Item_ID"]=123009
	tNovicesReward_Pack[3312329][50]["Option"][2]["ItemAttr"]="0 1 3"
	--赠品下忍服
	tNovicesReward_Pack[3312329][50]["Option"][3]={}
	tNovicesReward_Pack[3312329][50]["Option"][3]["Item_ID"]=135009
	tNovicesReward_Pack[3312329][50]["Option"][3]["ItemAttr"]="0 1 3"
	
	--海盗
	tNovicesReward_Pack[3312329][70]={}
	tNovicesReward_Pack[3312329][70]["DialogIndex"]="10-1"
	tNovicesReward_Pack[3312329][70]["Option"]={}
	--赠品巡海者头饰
	tNovicesReward_Pack[3312329][70]["Option"][1]={}
	tNovicesReward_Pack[3312329][70]["Option"][1]["Item_ID"]=144009
	tNovicesReward_Pack[3312329][70]["Option"][1]["ItemAttr"]="0 1 3"
	--淘浪裳
	tNovicesReward_Pack[3312329][70]["Option"][2]={}
	tNovicesReward_Pack[3312329][70]["Option"][2]["Item_ID"]=139009
	tNovicesReward_Pack[3312329][70]["Option"][2]["ItemAttr"]="0 1 3"
	
	--道士
	tNovicesReward_Pack[3312329][100]= {}
	tNovicesReward_Pack[3312329][100]["DialogIndex"]="11-1"
	tNovicesReward_Pack[3312329][100]["Option"]={}
	--赠品阴阳冠
	tNovicesReward_Pack[3312329][100]["Option"][1]={}
	tNovicesReward_Pack[3312329][100]["Option"][1]["Item_ID"]=114009
	tNovicesReward_Pack[3312329][100]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品混元道袍
	tNovicesReward_Pack[3312329][100]["Option"][2]={}
	tNovicesReward_Pack[3312329][100]["Option"][2]["Item_ID"]=134009
	tNovicesReward_Pack[3312329][100]["Option"][2]["ItemAttr"]="0 1 3"
	
	--雷神
	tNovicesReward_Pack[3312329][90] = {}
	tNovicesReward_Pack[3312329][90]["DialogIndex"]="12-1"
	tNovicesReward_Pack[3312329][90]["Option"]={}
	--赠品雷鸣战盔
	tNovicesReward_Pack[3312329][90]["Option"][1]={}
	tNovicesReward_Pack[3312329][90]["Option"][1]["Item_ID"]=146009
	tNovicesReward_Pack[3312329][90]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品蛮雷战甲
	tNovicesReward_Pack[3312329][90]["Option"][2]={}
	tNovicesReward_Pack[3312329][90]["Option"][2]["Item_ID"]=102009
	tNovicesReward_Pack[3312329][90]["Option"][2]["ItemAttr"]="0 1 3"
	
	--铁扇门
	tNovicesReward_Pack[3312329][160]= {}
	tNovicesReward_Pack[3312329][160]["DialogIndex"]="13-1"
	tNovicesReward_Pack[3312329][160]["Option"]={}
	--赠品墨云冠
	tNovicesReward_Pack[3312329][160]["Option"][1]={}
	tNovicesReward_Pack[3312329][160]["Option"][1]["Item_ID"]=170009
	tNovicesReward_Pack[3312329][160]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品玄素袍
	tNovicesReward_Pack[3312329][160]["Option"][2]={}
	tNovicesReward_Pack[3312329][160]["Option"][2]["Item_ID"]=101009
	tNovicesReward_Pack[3312329][160]["Option"][2]["ItemAttr"]="0 1 3"
	
	--武僧
	tNovicesReward_Pack[3312329][60]= {}
	tNovicesReward_Pack[3312329][60]["DialogIndex"]="14-1"
	tNovicesReward_Pack[3312329][60]["Option"]={}
	--赠品黄铜法箍
	tNovicesReward_Pack[3312329][60]["Option"][1]={}
	tNovicesReward_Pack[3312329][60]["Option"][1]["Item_ID"]=143009
	tNovicesReward_Pack[3312329][60]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品粗葛布袍
	tNovicesReward_Pack[3312329][60]["Option"][2]={}
	tNovicesReward_Pack[3312329][60]["Option"][2]["Item_ID"]=136009
	tNovicesReward_Pack[3312329][60]["Option"][2]["ItemAttr"]="0 1 3"
	
	--截拳
	tNovicesReward_Pack[3312329][80]= {}
	tNovicesReward_Pack[3312329][80]["DialogIndex"]="15-1"
	tNovicesReward_Pack[3312329][80]["Option"]={}
	--赠品棉麻头巾
	tNovicesReward_Pack[3312329][80]["Option"][1]={}
	tNovicesReward_Pack[3312329][80]["Option"][1]["Item_ID"]=148009
	tNovicesReward_Pack[3312329][80]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品连身战衣【15级】
	tNovicesReward_Pack[3312329][80]["Option"][2]={}
	tNovicesReward_Pack[3312329][80]["Option"][2]["Item_ID"]=138009
	tNovicesReward_Pack[3312329][80]["Option"][2]["ItemAttr"]="0 1 3"
----------------------------------逻辑部分---------------------------------------------
--兑换礼包
function NovicesReward_RewardPackage(nNpcId)
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["NovicesReward"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return 
	end
	--输入界面
	Sys_DialogText(tNovicesReward_Text[23974]["Text211"])
	Sys_DialogOptEdit(tNovicesReward_Text[23974]["Option211"],10,"NovicesReward_GetItem</N>23974")
	Sys_DialogFace(23974)
	Sys_DialogEnd()
end 

--判断兑换码是否正确
function NovicesReward_ChkCDK()
	local sCDK = tostring(Get_SysAcceptStr())
	if sCDK == tNovicesReward_CDK[1] or sCDK == tNovicesReward_CDK[2] then 
		return true 
	else 
		return false 
	end 
end 
--兑换礼包
function NovicesReward_GetItem(nNpcId,nItemId)
	local sCDK = tostring(Get_SysAcceptStr())
	--判断兑换码是否正确
	if type(sCDK) == "string" and NovicesReward_ChkCDK() then 
		local nEvent = tNovicesReward_Stc["EventType"]
		local nType = tNovicesReward_Stc["DataType"]
		local nData = Get_UserStatisticValue(nEvent,nType)
		--判断是否领过
		if nData >= tNovicesReward_Stc["RewardData"] then 
			LinkNpcGossipFunc_New(nNpcId,"2-3")
			return
		end
		
		--判断背包空间
		local nSpace = RewardTemplate_GetRewardSpace(tNovicesReward_Reward[1])
		if not User_CheckLeftSpace(nSpace) then
			Sys_MsgBox(string.format (tNovicesReward_Text["Msg"],nSpace))
			return 
		end
		--加掩码
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		--给轮盘
		RewardTemplate_UseItem(tNovicesReward_Reward[1])
	else
		--输入错误
		LinkNpcGossipFunc_New(nNpcId,"2-2")
	end 
end 

--60天石开启礼包
function NovicesReward_UsePackage(nItemId,nEmoney)

	--判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tNovicesReward_Reward[3312322])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format (tNovicesReward_Text["Msg"],nSpace))
		return 
	end
		
	--判断天石是否足够
	if Get_UserEMoney() < nEmoney then
		Sys_MsgBox(tNovicesReward_Text[nItemId]["Nomoney"])
		return 
	end 
	
	-- 判断赠点天石上限
	local nMaxRewardMonoEMoney = tNovicesReward_Reward[nItemId]["RewardEMoneyMono"]["Value"]
	if Get_UserMonoEMoney() + nMaxRewardMonoEMoney > G_User_MaxEmoneyMono then
		Sys_MsgBox(tNovicesReward_Text["MaxMonoEmoney"])
		return 
	end
	
	local nUserId = Get_UserId()
	local sEmoneyBuyLog = tNovicesReward_Log["OpenPackage"]
	if User_AddEMoney(-nEmoney,nUserId,sEmoneyBuyLog) then
		--给奖励
		RewardTemplate_UseItem(tNovicesReward_Reward[nItemId])
	end 
end 

--打开礼包
function NovicesReward_UsePack(nItemId)

	local tPack=tNovicesReward_Pack[nItemId]
	--判断职业，获得对应的物品ID  
	local nPro=Get_UserProfession()
	if nPro>=100 and nPro <= 145 then
		nPro=100
	elseif nPro >= 160 and nPro <= 165 then
		nPro=160
	else
		nPro=nPro-nPro%10
	end     

	if tPack[nPro]["DialogIndex"] ~= nil then       
		LinkItemGossipFunc_New(nItemId,tPack[nPro]["DialogIndex"])
		return 
	end
	NovicesReward_Reward(nItemId,tPack[nPro]["Item"]["Item_ID"],tPack[nPro]["Item"]["ItemAttr"])
end 

--选项
function NovicesReward_SelectOption(nPackId,nPro,nOption)
	local tItem=tNovicesReward_Pack[nPackId][nPro]["Option"][nOption]
	NovicesReward_Reward(nPackId,tItem["Item_ID"],tItem["ItemAttr"]) 
end

--获得物品
function NovicesReward_Reward(nPackId,nItemId,sItemAttr)
	local tReward = {}
	tReward["DeleteItem"] = {}
	tReward["DeleteItem"][1] = {}	
	tReward["DeleteItem"][1]["Id"] = nPackId
	tReward["RewardItem"] = {}				
	tReward["RewardItem"][1] = {}				
	tReward["RewardItem"][1]["Id"] = nItemId	
	tReward["RewardItem"][1]["Attr"] = sItemAttr	
	tReward["Log"] = string.format(tNovicesReward_Log["Package"],nPackId,nItemId)

	RewardTemplate_UseItemAndMsg(tReward)
end 
----------------------------------NPC部分---------------------------------------------
tNpcFace[6483] = 35
tNpcGossip[23974]= tNpcGossip[23974] or DefaultNpc:new{}
tNpcGossip[23974]["OptionHidden"] = 1
tNpcGossip[23974]["DialogueText"] = tNovicesReward_Text[23974]
--活动前
tNpcGossip[23974]["Text1-1"] = {111,112,113,114}
tNpcGossip[23974]["tOption1-1"] = {111}
tNpcGossip[23974]["ChkFunc1-1"]= function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["NovicesReward"]["ActivityTime"])
end

--活动后
tNpcGossip[23974]["Text1-2"] = {121}
tNpcGossip[23974]["tOption1-2"] = {121}
tNpcGossip[23974]["ChkFunc1-2"]= function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["NovicesReward"]["ActivityTime"])
end

--活动中不满足条件
tNpcGossip[23974]["Text1-3"] = {131}
tNpcGossip[23974]["tOption1-3"] = {131}
tNpcGossip[23974]["ChkFunc1-3"]= function()
	return Sys_ChkFullTime(tActivityTime["NovicesReward"]["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(tNovicesReward_Data["Level"],tNovicesReward_Data["Metempsychosis"])
end

--满足条件
tNpcGossip[23974]["Text1-4"] = {141,142,143,144}
tNpcGossip[23974]["tOption1-4"] = {141,142}
tNpcGossip[23974]["ChkFunc1-4"]= function()
	return Sys_ChkFullTime(tActivityTime["NovicesReward"]["ActivityTime"]) and not User_JudgeLevelAndMetempsychosis(tNovicesReward_Data["Level"],tNovicesReward_Data["Metempsychosis"])
end
--输入兑换码
tNpcGossip[23974]["OptionFunc141"] = "NovicesReward_RewardPackage</N>23974"

--输入错误
tNpcGossip[23974]["Text2-2"] = {221}
tNpcGossip[23974]["tOption2-2"] = {221}
tNpcGossip[23974]["OptionFunc221"] = "NovicesReward_RewardPackage</N>23974"

--已领取
tNpcGossip[23974]["Text2-3"] = {231}
tNpcGossip[23974]["tOption2-3"] = {231}

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3312321] = tItem[3312321] or {}
tItem[3312321]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tNovicesReward_Reward[nItemId])
end
tItem[3312330] = tItem[3312321] or {}
tItem[3312331] = tItem[3312321] or {}
tItem[3312332] = tItem[3312321] or {}

-- 3312755	豪华美元转盘
tItem[3312755] = tItem[3312755] or {}
tItem[3312755]["Function"] = function(nItemId, sItemName)
	RouletteMould_Main(7038)
end

--------物品有对白模板
tItemFace[3312322] = 2198
tItem[3312322] = tItem[3312322] or {}
tItem[3312322]["Text1-1"] = {111}
tItem[3312322]["Text111"] = tNovicesReward_Text[3312322]["Text111"]
tItem[3312322]["tOption1-1"] = {111,112}
tItem[3312322]["Option111"] = tNovicesReward_Text[3312322]["Option111"]
tItem[3312322]["OptionFunc111"]="NovicesReward_UsePackage</N>3312322</N>60"

tItem[3312322]["Option112"] = tNovicesReward_Text[3312322]["Option112"]


--武器自选礼包
tItemFace[3312328] = 2202
tItem[3312328]=tItem[3312328] or {}
tItem[3312328]["Function"]=function(nItemId,sItemName)
    NovicesReward_UsePack(nItemId)
end

--武器勇士对话
tItem[3312328]["Text6-1"]={111}
tItem[3312328]["Text111"]=tNovicesReward_Text["Weapon"]

tItem[3312328]["tOption6-1"]={61,62,63,64}
tItem[3312328]["Option61"]=tNovicesReward_Text["ItemName"][410029]
tItem[3312328]["Option62"]=tNovicesReward_Text["ItemName"][420029]
tItem[3312328]["Option63"]=tNovicesReward_Text["ItemName"][480029]
tItem[3312328]["Option64"]=tNovicesReward_Text["ReGive"]
tItem[3312328]["OptionFunc61"]="NovicesReward_SelectOption</N>3312328</N>10</N>1"
tItem[3312328]["OptionFunc62"]="NovicesReward_SelectOption</N>3312328</N>10</N>2"
tItem[3312328]["OptionFunc63"]="NovicesReward_SelectOption</N>3312328</N>10</N>3"

--武器战士对话
tItem[3312328]["Text7-1"]={111}
tItem[3312328]["tOption7-1"]={71,72,74,64}
tItem[3312328]["Option71"]=tNovicesReward_Text["ItemName"][560029]
tItem[3312328]["Option72"]=tNovicesReward_Text["ItemName"][561029]
tItem[3312328]["Option73"]=tNovicesReward_Text["ItemName"][900009]
tItem[3312328]["Option74"]=tNovicesReward_Text["ItemName"][624029]

tItem[3312328]["OptionFunc71"]="NovicesReward_SelectOption</N>3312328</N>20</N>1"
tItem[3312328]["OptionFunc72"]="NovicesReward_SelectOption</N>3312328</N>20</N>2"
tItem[3312328]["OptionFunc73"]="NovicesReward_SelectOption</N>3312328</N>20</N>3"
tItem[3312328]["OptionFunc74"]="NovicesReward_SelectOption</N>3312328</N>20</N>4"

--武器弓手对话
tItem[3312328]["Text8-1"]={111}
tItem[3312328]["tOption8-1"]={81,82,64}
tItem[3312328]["Option81"]=tNovicesReward_Text["ItemName"][500019]
tItem[3312328]["Option82"]=tNovicesReward_Text["ItemName"][613019]

tItem[3312328]["OptionFunc81"]="NovicesReward_SelectOption</N>3312328</N>40</N>1"
tItem[3312328]["OptionFunc82"]="NovicesReward_SelectOption</N>3312328</N>40</N>2"


--武器刺客对话
tItem[3312328]["Text9-1"]={111}
tItem[3312328]["tOption9-1"]={91,92,64}
tItem[3312328]["Option91"]=tNovicesReward_Text["ItemName"][511029]
tItem[3312328]["Option92"]=tNovicesReward_Text["ItemName"][601029]

tItem[3312328]["OptionFunc91"]="NovicesReward_SelectOption</N>3312328</N>50</N>1"
tItem[3312328]["OptionFunc92"]="NovicesReward_SelectOption</N>3312328</N>50</N>2"

--武器海盗对话
tItem[3312328]["Text10-1"]={111}
tItem[3312328]["tOption10-1"]={101,102,64}
tItem[3312328]["Option101"]=tNovicesReward_Text["ItemName"][611029]
tItem[3312328]["Option102"]=tNovicesReward_Text["ItemName"][612029]

tItem[3312328]["OptionFunc101"]="NovicesReward_SelectOption</N>3312328</N>70</N>1"
tItem[3312328]["OptionFunc102"]="NovicesReward_SelectOption</N>3312328</N>70</N>2"

--道士
tItem[3312328]["Text11-1"]={111}
tItem[3312328]["tOption11-1"]={111,112,64}
tItem[3312328]["Option111"]=tNovicesReward_Text["ItemName"][421029]
tItem[3312328]["Option112"]=tNovicesReward_Text["ItemName"][619029]

tItem[3312328]["OptionFunc111"]="NovicesReward_SelectOption</N>3312328</N>100</N>1"
tItem[3312328]["OptionFunc112"]="NovicesReward_SelectOption</N>3312328</N>100</N>2"

--雷神
tItem[3312328]["Text12-1"]={111}
tItem[3312328]["tOption12-1"]={121,122,64}
tItem[3312328]["Option121"]=tNovicesReward_Text["ItemName"][681029]
tItem[3312328]["Option122"]=tNovicesReward_Text["ItemName"][680029]

tItem[3312328]["OptionFunc121"]="NovicesReward_SelectOption</N>3312328</N>90</N>1"
tItem[3312328]["OptionFunc122"]="NovicesReward_SelectOption</N>3312328</N>90</N>2"


--防具自选礼包
tItemFace[3312329] = 2203
tItem[3312329]=tItem[3312329] or {}
tItem[3312329]["Function"]=function(nItemId,sItemName)
    NovicesReward_UsePack(nItemId)
end

--勇士
tItem[3312329]["Text6-1"]={111}
tItem[3312329]["Text111"]=tNovicesReward_Text["Weapon"]

tItem[3312329]["tOption6-1"]={61,62,64}
tItem[3312329]["Option61"]=tNovicesReward_Text["ItemName"][118009]
tItem[3312329]["Option62"]=tNovicesReward_Text["ItemName"][130009]
tItem[3312329]["Option64"]=tNovicesReward_Text["ReGive"]
tItem[3312329]["OptionFunc61"]="NovicesReward_SelectOption</N>3312329</N>10</N>1"
tItem[3312329]["OptionFunc62"]="NovicesReward_SelectOption</N>3312329</N>10</N>2"


--战士
tItem[3312329]["Text7-1"]={111}
tItem[3312329]["tOption7-1"]={71,72,64}
tItem[3312329]["Option71"]=tNovicesReward_Text["ItemName"][111009]
tItem[3312329]["Option72"]=tNovicesReward_Text["ItemName"][131009]

tItem[3312329]["OptionFunc71"]="NovicesReward_SelectOption</N>3312329</N>20</N>1"
tItem[3312329]["OptionFunc72"]="NovicesReward_SelectOption</N>3312329</N>20</N>2"

--弓手
tItem[3312329]["Text8-1"]={111}
tItem[3312329]["tOption8-1"]={81,82,64}
tItem[3312329]["Option81"]=tNovicesReward_Text["ItemName"][113009]
tItem[3312329]["Option82"]=tNovicesReward_Text["ItemName"][133009]
tItem[3312329]["OptionFunc81"]="NovicesReward_SelectOption</N>3312329</N>40</N>1"
tItem[3312329]["OptionFunc82"]="NovicesReward_SelectOption</N>3312329</N>40</N>2"


--忍者
tItem[3312329]["Text9-1"]={111}
tItem[3312329]["tOption9-1"]={91,92,93,64}
tItem[3312329]["Option91"]=tNovicesReward_Text["ItemName"][112009]
tItem[3312329]["Option92"]=tNovicesReward_Text["ItemName"][123009]
tItem[3312329]["Option93"]=tNovicesReward_Text["ItemName"][135009]

tItem[3312329]["OptionFunc91"]="NovicesReward_SelectOption</N>3312329</N>50</N>1"
tItem[3312329]["OptionFunc92"]="NovicesReward_SelectOption</N>3312329</N>50</N>2"
tItem[3312329]["OptionFunc93"]="NovicesReward_SelectOption</N>3312329</N>50</N>3"

--海盗
tItem[3312329]["Text10-1"]={111}
tItem[3312329]["tOption10-1"]={101,102,64}
tItem[3312329]["Option101"]=tNovicesReward_Text["ItemName"][144009]
tItem[3312329]["Option102"]=tNovicesReward_Text["ItemName"][139009]

tItem[3312329]["OptionFunc101"]="NovicesReward_SelectOption</N>3312329</N>70</N>1"
tItem[3312329]["OptionFunc102"]="NovicesReward_SelectOption</N>3312329</N>70</N>2"

--道士
tItem[3312329]["Text11-1"]={111}
tItem[3312329]["tOption11-1"]={111,112,64}
tItem[3312329]["Option111"]=tNovicesReward_Text["ItemName"][114009]
tItem[3312329]["Option112"]=tNovicesReward_Text["ItemName"][134009]

tItem[3312329]["OptionFunc111"]="NovicesReward_SelectOption</N>3312329</N>100</N>1"
tItem[3312329]["OptionFunc112"]="NovicesReward_SelectOption</N>3312329</N>100</N>2"

--雷神
tItem[3312329]["Text12-1"]={111}
tItem[3312329]["tOption12-1"]={121,122,64}
tItem[3312329]["Option121"]=tNovicesReward_Text["ItemName"][146009]
tItem[3312329]["Option122"]=tNovicesReward_Text["ItemName"][102009]

tItem[3312329]["OptionFunc121"]="NovicesReward_SelectOption</N>3312329</N>90</N>1"
tItem[3312329]["OptionFunc122"]="NovicesReward_SelectOption</N>3312329</N>90</N>2"

--铁扇
tItem[3312329]["Text13-1"]={111}
tItem[3312329]["tOption13-1"]={131,132,64}
tItem[3312329]["Option131"]=tNovicesReward_Text["ItemName"][170009]
tItem[3312329]["Option132"]=tNovicesReward_Text["ItemName"][101009]

tItem[3312329]["OptionFunc131"]="NovicesReward_SelectOption</N>3312329</N>160</N>1"
tItem[3312329]["OptionFunc132"]="NovicesReward_SelectOption</N>3312329</N>160</N>2"

--武僧
tItem[3312329]["Text14-1"]={111}
tItem[3312329]["tOption14-1"]={141,142,64}
tItem[3312329]["Option141"]=tNovicesReward_Text["ItemName"][143009]
tItem[3312329]["Option142"]=tNovicesReward_Text["ItemName"][136009]

tItem[3312329]["OptionFunc141"]="NovicesReward_SelectOption</N>3312329</N>60</N>1"
tItem[3312329]["OptionFunc142"]="NovicesReward_SelectOption</N>3312329</N>60</N>2"

--截拳
tItem[3312329]["Text15-1"]={111}
tItem[3312329]["tOption15-1"]={151,152,64}
tItem[3312329]["Option151"]=tNovicesReward_Text["ItemName"][148009]
tItem[3312329]["Option152"]=tNovicesReward_Text["ItemName"][138009]

tItem[3312329]["OptionFunc151"]="NovicesReward_SelectOption</N>3312329</N>80</N>1"
tItem[3312329]["OptionFunc152"]="NovicesReward_SelectOption</N>3312329</N>80</N>2"
