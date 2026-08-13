------------------------------------------------------------------------------------
--Name：            180426[英文征服][活动脚本]5月第二届天阶赛活动制作
--Creator:      林旭
--Created:     2018/04/26
------------------------------------------------------------------------------------
-- logid：12001069
-- 命名前缀
-- 2ndRankPackage_

----------------------------------表配置部分--------------------------------------------
local t2ndRankPackage_RewardItem = {}
	-- 天阶赛练功包
	t2ndRankPackage_RewardItem[3308755] = {}
	t2ndRankPackage_RewardItem[3308755]["RewardItem"] = {}
	-- 通神丹（赠）*2
	t2ndRankPackage_RewardItem[3308755]["RewardItem"][1] = {}
	t2ndRankPackage_RewardItem[3308755]["RewardItem"][1]["Id"] = 3003125
	t2ndRankPackage_RewardItem[3308755]["RewardItem"][1]["Attr"] = "0 2 3"
	t2ndRankPackage_RewardItem[3308755]["DeleteItem"] = {}
	t2ndRankPackage_RewardItem[3308755]["DeleteItem"][1] = {}
	t2ndRankPackage_RewardItem[3308755]["DeleteItem"][1]["Id"] = 3308755
	t2ndRankPackage_RewardItem[3308755]["LogId"] = 12001069
	t2ndRankPackage_RewardItem[3308755]["RewardEffect"] = {}
	t2ndRankPackage_RewardItem[3308755]["RewardEffect"]["Effect"]="angelwing"
	
	-- 天阶赛练功豪华包
	t2ndRankPackage_RewardItem[3308756] = {}
	t2ndRankPackage_RewardItem[3308756]["RewardItem"] = {}
	-- 通神丹（赠）*10
	t2ndRankPackage_RewardItem[3308756]["RewardItem"][1] = {}
	t2ndRankPackage_RewardItem[3308756]["RewardItem"][1]["Id"] = 3003125
	t2ndRankPackage_RewardItem[3308756]["RewardItem"][1]["Attr"] = "0 10 3"
	t2ndRankPackage_RewardItem[3308756]["DeleteItem"] = {}
	t2ndRankPackage_RewardItem[3308756]["DeleteItem"][1] = {}
	t2ndRankPackage_RewardItem[3308756]["DeleteItem"][1]["Id"] = 3308756
	t2ndRankPackage_RewardItem[3308756]["LogId"] = 12001069
	t2ndRankPackage_RewardItem[3308756]["RewardEffect"] = {}
	t2ndRankPackage_RewardItem[3308756]["RewardEffect"]["Effect"]="angelwing"
	
	-- 天阶赛青铜包
	t2ndRankPackage_RewardItem[3308757] = {}
	t2ndRankPackage_RewardItem[3308757]["RewardItem"] = {}
	-- 流星卷
	t2ndRankPackage_RewardItem[3308757]["RewardItem"][1] = {}
	t2ndRankPackage_RewardItem[3308757]["RewardItem"][1]["Id"] = 720027
	t2ndRankPackage_RewardItem[3308757]["RewardItem"][1]["Attr"] = "0 1 3"
	-- 微光星陨石*3
	t2ndRankPackage_RewardItem[3308757]["RewardItem"][2] = {}
	t2ndRankPackage_RewardItem[3308757]["RewardItem"][2]["Id"] = 3009000
	t2ndRankPackage_RewardItem[3308757]["RewardItem"][2]["Attr"] = "0 3 0 2880 1"
	-- 10点天石赠
	t2ndRankPackage_RewardItem[3308757]["RewardEMoneyMono"] = {}
	t2ndRankPackage_RewardItem[3308757]["RewardEMoneyMono"]["Value"] = 10
	t2ndRankPackage_RewardItem[3308757]["DeleteItem"] = {}
	t2ndRankPackage_RewardItem[3308757]["DeleteItem"][1] = {}
	t2ndRankPackage_RewardItem[3308757]["DeleteItem"][1]["Id"] = 3308757
	t2ndRankPackage_RewardItem[3308757]["Log"] = "0,0,3308757,1,12001069,2,720027[3009000][3],1[3][10]"
	t2ndRankPackage_RewardItem[3308757]["RewardEffect"] = {}
	t2ndRankPackage_RewardItem[3308757]["RewardEffect"]["Effect"]="angelwing"
	
	-- 天阶赛玄铁包
	t2ndRankPackage_RewardItem[3308758] = {}
	t2ndRankPackage_RewardItem[3308758]["RewardItem"] = {}
	-- 优质宝石随机（赠）
	t2ndRankPackage_RewardItem[3308758]["RewardItem"][1] = {}
	t2ndRankPackage_RewardItem[3308758]["RewardItem"][1]["Id"] = 729675
	t2ndRankPackage_RewardItem[3308758]["RewardItem"][1]["Attr"] = "0 1 3"
	-- 通神丹（赠）*3
	t2ndRankPackage_RewardItem[3308758]["RewardItem"][2] = {}
	t2ndRankPackage_RewardItem[3308758]["RewardItem"][2]["Id"] = 3003125
	t2ndRankPackage_RewardItem[3308758]["RewardItem"][2]["Attr"] = "0 3 3"
	-- 20点天石赠
	t2ndRankPackage_RewardItem[3308758]["RewardEMoneyMono"] = {}
	t2ndRankPackage_RewardItem[3308758]["RewardEMoneyMono"]["Value"] = 20
	t2ndRankPackage_RewardItem[3308758]["DeleteItem"] = {}
	t2ndRankPackage_RewardItem[3308758]["DeleteItem"][1] = {}
	t2ndRankPackage_RewardItem[3308758]["DeleteItem"][1]["Id"] = 3308758
	t2ndRankPackage_RewardItem[3308758]["Log"] = "0,0,3308758,1,12001069,2,729675[3003125][3],1[3][20]"
	t2ndRankPackage_RewardItem[3308758]["RewardEffect"] = {}
	t2ndRankPackage_RewardItem[3308758]["RewardEffect"]["Effect"]="angelwing"
	
	-- 天阶赛白银包
	t2ndRankPackage_RewardItem[3308759] = {}
	t2ndRankPackage_RewardItem[3308759]["RewardItem"] = {}
	-- 龙珠（赠）
	t2ndRankPackage_RewardItem[3308759]["RewardItem"][1] = {}
	t2ndRankPackage_RewardItem[3308759]["RewardItem"][1]["Id"] = 1088000
	t2ndRankPackage_RewardItem[3308759]["RewardItem"][1]["Attr"] = "0 1 3"
	-- 200点修行值
	t2ndRankPackage_RewardItem[3308759]["RewardItem"][2] = {}
	t2ndRankPackage_RewardItem[3308759]["RewardItem"][2]["Id"] = 3005123
	t2ndRankPackage_RewardItem[3308759]["RewardItem"][2]["Attr"] = "0 1"
	-- 周年庆促销1000-100
	t2ndRankPackage_RewardItem[3308759]["RewardItem"][3] = {}
	t2ndRankPackage_RewardItem[3308759]["RewardItem"][3]["Id"] = 3308516
	t2ndRankPackage_RewardItem[3308759]["RewardItem"][3]["Attr"] = "0 1"
	-- 50点天石赠
	t2ndRankPackage_RewardItem[3308759]["RewardEMoneyMono"] = {}
	t2ndRankPackage_RewardItem[3308759]["RewardEMoneyMono"]["Value"] = 50
	t2ndRankPackage_RewardItem[3308759]["DeleteItem"] = {}
	t2ndRankPackage_RewardItem[3308759]["DeleteItem"][1] = {}
	t2ndRankPackage_RewardItem[3308759]["DeleteItem"][1]["Id"] = 3308759
	t2ndRankPackage_RewardItem[3308759]["Log"] = "0,0,3308759,1,12001069,2,1088000[3005123][3308516][3],1[1][1][50]"
	t2ndRankPackage_RewardItem[3308759]["RewardEffect"] = {}
	t2ndRankPackage_RewardItem[3308759]["RewardEffect"]["Effect"]="angelwing"
	
	-- 天阶赛黄金包
	t2ndRankPackage_RewardItem[3308760] = {}
	t2ndRankPackage_RewardItem[3308760]["RewardItem"] = {}
	-- 明亮星陨石*3
	t2ndRankPackage_RewardItem[3308760]["RewardItem"][1] = {}
	t2ndRankPackage_RewardItem[3308760]["RewardItem"][1]["Id"] = 3009001
	t2ndRankPackage_RewardItem[3308760]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	-- 200点气力值
	t2ndRankPackage_RewardItem[3308760]["RewardStrengthValue"] = {}
	t2ndRankPackage_RewardItem[3308760]["RewardStrengthValue"]["Value"] = 200
	-- 120点天石赠
	t2ndRankPackage_RewardItem[3308760]["RewardEMoneyMono"] = {}
	t2ndRankPackage_RewardItem[3308760]["RewardEMoneyMono"]["Value"] = 120
	t2ndRankPackage_RewardItem[3308760]["DeleteItem"] = {}
	t2ndRankPackage_RewardItem[3308760]["DeleteItem"][1] = {}
	t2ndRankPackage_RewardItem[3308760]["DeleteItem"][1]["Id"] = 3308760
	t2ndRankPackage_RewardItem[3308760]["Log"] = "0,0,3308760,1,12001069,2,3009001[12][3],3[200][120]"
	t2ndRankPackage_RewardItem[3308760]["RewardEffect"] = {}
	t2ndRankPackage_RewardItem[3308760]["RewardEffect"]["Effect"]="angelwing"
	
	-- 天阶赛钻石包
	t2ndRankPackage_RewardItem[3308761] = {}
	t2ndRankPackage_RewardItem[3308761]["RewardItem"] = {}
	-- 究极通神丹*5                          
	t2ndRankPackage_RewardItem[3308761]["RewardItem"][1] = {}
	t2ndRankPackage_RewardItem[3308761]["RewardItem"][1]["Id"] = 3003126
	t2ndRankPackage_RewardItem[3308761]["RewardItem"][1]["Attr"] = "0 5 3"
	-- 晶莹星陨石*1                   
	t2ndRankPackage_RewardItem[3308761]["RewardItem"][2] = {}
	t2ndRankPackage_RewardItem[3308761]["RewardItem"][2]["Id"] = 3009002
	t2ndRankPackage_RewardItem[3308761]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	-- 300点天石赠                      
	t2ndRankPackage_RewardItem[3308761]["RewardEMoneyMono"] = {}
	t2ndRankPackage_RewardItem[3308761]["RewardEMoneyMono"]["Value"] = 300
	t2ndRankPackage_RewardItem[3308761]["DeleteItem"] = {}
	t2ndRankPackage_RewardItem[3308761]["DeleteItem"][1] = {}
	t2ndRankPackage_RewardItem[3308761]["DeleteItem"][1]["Id"] = 3308761
	t2ndRankPackage_RewardItem[3308761]["Log"] = "0,0,3308761,1,12001069,2,3003126[3009002][3],5[1][300]"
	t2ndRankPackage_RewardItem[3308761]["RewardEffect"] = {}
	t2ndRankPackage_RewardItem[3308761]["RewardEffect"]["Effect"]="angelwing"
	
	-- 天阶赛真气包
	t2ndRankPackage_RewardItem[3308762] = {}
	t2ndRankPackage_RewardItem[3308762]["RewardItem"] = {}
	-- 真气礼包（赠）*3
	t2ndRankPackage_RewardItem[3308762]["RewardItem"][1] = {}
	t2ndRankPackage_RewardItem[3308762]["RewardItem"][1]["Id"] = 3006542
	t2ndRankPackage_RewardItem[3308762]["RewardItem"][1]["Attr"] = "0 3"
	t2ndRankPackage_RewardItem[3308762]["DeleteItem"] = {}
	t2ndRankPackage_RewardItem[3308762]["DeleteItem"][1] = {}
	t2ndRankPackage_RewardItem[3308762]["DeleteItem"][1]["Id"] = 3308762
	t2ndRankPackage_RewardItem[3308762]["LogId"] = 12001069
	t2ndRankPackage_RewardItem[3308762]["RewardEffect"] = {}
	t2ndRankPackage_RewardItem[3308762]["RewardEffect"]["Effect"]="angelwing"
	
	-- 天阶赛神纹精粹包
	t2ndRankPackage_RewardItem[3308763] = {}
	t2ndRankPackage_RewardItem[3308763]["RewardItem"] = {}
	-- 黄色神纹精粹（赠）*20
	t2ndRankPackage_RewardItem[3308763]["RewardItem"][1] = {}
	t2ndRankPackage_RewardItem[3308763]["RewardItem"][1]["Id"] = 4050001
	t2ndRankPackage_RewardItem[3308763]["RewardItem"][1]["Attr"] = "0 20 3"
	t2ndRankPackage_RewardItem[3308763]["DeleteItem"] = {}
	t2ndRankPackage_RewardItem[3308763]["DeleteItem"][1] = {}
	t2ndRankPackage_RewardItem[3308763]["DeleteItem"][1]["Id"] = 3308763
	t2ndRankPackage_RewardItem[3308763]["LogId"] = 12001069
	t2ndRankPackage_RewardItem[3308763]["RewardEffect"] = {}
	t2ndRankPackage_RewardItem[3308763]["RewardEffect"]["Effect"]="angelwing"
----------------------------------逻辑部分---------------------------------------------











---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3308755] = tItem[3308755] or {}
tItem[3308755]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(t2ndRankPackage_RewardItem[nItemId])
end
tItem[3308756] = tItem[3308755]
tItem[3308757] = tItem[3308755]
tItem[3308758] = tItem[3308755]
tItem[3308759] = tItem[3308755]
tItem[3308760] = tItem[3308755]
tItem[3308761] = tItem[3308755]
tItem[3308762] = tItem[3308755]
tItem[3308763] = tItem[3308755]