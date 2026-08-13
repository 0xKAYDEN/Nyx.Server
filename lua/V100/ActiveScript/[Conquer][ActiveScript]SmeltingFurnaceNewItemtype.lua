------------------------------------------------------------------------------------
--Name：            181130[简体征服][活动脚本]熔炼炉版本新增物品
--Creator:      王贤
--Created:     2018/11/30
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
-- 前缀
-- SmeltingFurnaceNewItemtype_

-- LogId： 12001231
------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tSmeltingFurnaceNewItemtype_Data = {}
-- 合成所需数量
tSmeltingFurnaceNewItemtype_Data["NeedNum"] = {}
-- 龙珠碎片
tSmeltingFurnaceNewItemtype_Data["NeedNum"][3311742] = 2
-- 宝石碎片
tSmeltingFurnaceNewItemtype_Data["NeedNum"][3311743] = 100
-- 高阶神纹黄色神纹碎片
tSmeltingFurnaceNewItemtype_Data["NeedNum"][3311744] = 20
-- 高阶神纹蓝色神纹碎片
tSmeltingFurnaceNewItemtype_Data["NeedNum"][3311745] = 20
-- 高阶神纹黄色神纹碎片(赠)
tSmeltingFurnaceNewItemtype_Data["NeedNum"][3311748] = 20
-- 高阶神纹蓝色神纹碎片(赠)
tSmeltingFurnaceNewItemtype_Data["NeedNum"][3311749] = 20



local tSmeltingFurnaceNewItemtype_Reward = {}
-- 1气力值包
tSmeltingFurnaceNewItemtype_Reward[3311731] = {}
tSmeltingFurnaceNewItemtype_Reward[3311731]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311731]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311731]["DeleteItem"][1]["Id"] = 3311731
tSmeltingFurnaceNewItemtype_Reward[3311731]["RewardStrengthValue"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311731]["RewardStrengthValue"]["Value"] = 1
tSmeltingFurnaceNewItemtype_Reward[3311731]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311731]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311731]["LogId"] = 12001231
-- 50气力值包
tSmeltingFurnaceNewItemtype_Reward[3311732] = {}
tSmeltingFurnaceNewItemtype_Reward[3311732]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311732]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311732]["DeleteItem"][1]["Id"] = 3311732
tSmeltingFurnaceNewItemtype_Reward[3311732]["RewardStrengthValue"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311732]["RewardStrengthValue"]["Value"] = 50
tSmeltingFurnaceNewItemtype_Reward[3311732]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311732]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311732]["LogId"] = 12001231
-- 100气力值包
tSmeltingFurnaceNewItemtype_Reward[3311733] = {}
tSmeltingFurnaceNewItemtype_Reward[3311733]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311733]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311733]["DeleteItem"][1]["Id"] = 3311733
tSmeltingFurnaceNewItemtype_Reward[3311733]["RewardStrengthValue"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311733]["RewardStrengthValue"]["Value"] = 100
tSmeltingFurnaceNewItemtype_Reward[3311733]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311733]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311733]["LogId"] = 12001231
-- 1天石（赠）礼包
tSmeltingFurnaceNewItemtype_Reward[3311734] = {}
tSmeltingFurnaceNewItemtype_Reward[3311734]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311734]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311734]["DeleteItem"][1]["Id"] = 3311734
tSmeltingFurnaceNewItemtype_Reward[3311734]["RewardEMoneyMono"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311734]["RewardEMoneyMono"]["Value"] = 1
tSmeltingFurnaceNewItemtype_Reward[3311734]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311734]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311734]["LogId"] = 12001231
-- 5天石（赠）礼包
tSmeltingFurnaceNewItemtype_Reward[3311735] = {}
tSmeltingFurnaceNewItemtype_Reward[3311735]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311735]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311735]["DeleteItem"][1]["Id"] = 3311735
tSmeltingFurnaceNewItemtype_Reward[3311735]["RewardEMoneyMono"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311735]["RewardEMoneyMono"]["Value"] = 5
tSmeltingFurnaceNewItemtype_Reward[3311735]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311735]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311735]["LogId"] = 12001231
-- 10天石（赠）礼包
tSmeltingFurnaceNewItemtype_Reward[3311736] = {}
tSmeltingFurnaceNewItemtype_Reward[3311736]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311736]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311736]["DeleteItem"][1]["Id"] = 3311736
tSmeltingFurnaceNewItemtype_Reward[3311736]["RewardEMoneyMono"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311736]["RewardEMoneyMono"]["Value"] = 10
tSmeltingFurnaceNewItemtype_Reward[3311736]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311736]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311736]["LogId"] = 12001231
-- 20天石（赠）礼包
tSmeltingFurnaceNewItemtype_Reward[3311737] = {}
tSmeltingFurnaceNewItemtype_Reward[3311737]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311737]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311737]["DeleteItem"][1]["Id"] = 3311737
tSmeltingFurnaceNewItemtype_Reward[3311737]["RewardEMoneyMono"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311737]["RewardEMoneyMono"]["Value"] = 20
tSmeltingFurnaceNewItemtype_Reward[3311737]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311737]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311737]["LogId"] = 12001231
-- 50天石（赠）礼包
tSmeltingFurnaceNewItemtype_Reward[3311738] = {}
tSmeltingFurnaceNewItemtype_Reward[3311738]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311738]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311738]["DeleteItem"][1]["Id"] = 3311738
tSmeltingFurnaceNewItemtype_Reward[3311738]["RewardEMoneyMono"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311738]["RewardEMoneyMono"]["Value"] = 50
tSmeltingFurnaceNewItemtype_Reward[3311738]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311738]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311738]["LogId"] = 12001231
-- 100天石（赠）礼包
tSmeltingFurnaceNewItemtype_Reward[3311739] = {}
tSmeltingFurnaceNewItemtype_Reward[3311739]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311739]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311739]["DeleteItem"][1]["Id"] = 3311739
tSmeltingFurnaceNewItemtype_Reward[3311739]["RewardEMoneyMono"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311739]["RewardEMoneyMono"]["Value"] = 100
tSmeltingFurnaceNewItemtype_Reward[3311739]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311739]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311739]["LogId"] = 12001231
-- 500天石（赠）礼包
tSmeltingFurnaceNewItemtype_Reward[3311740] = {}
tSmeltingFurnaceNewItemtype_Reward[3311740]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311740]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311740]["DeleteItem"][1]["Id"] = 3311740
tSmeltingFurnaceNewItemtype_Reward[3311740]["RewardEMoneyMono"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311740]["RewardEMoneyMono"]["Value"] = 500
tSmeltingFurnaceNewItemtype_Reward[3311740]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311740]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311740]["LogId"] = 12001231


-- 1天石（赠）礼包	3321063
tSmeltingFurnaceNewItemtype_Reward[3321063] = {}
tSmeltingFurnaceNewItemtype_Reward[3321063]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321063]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321063]["DeleteItem"][1]["Id"] = 3321063
tSmeltingFurnaceNewItemtype_Reward[3321063]["RewardEMoneyMono"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321063]["RewardEMoneyMono"]["Value"] = 1
tSmeltingFurnaceNewItemtype_Reward[3321063]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321063]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3321063]["LogId"] = 12001231

-- 2天石（赠）礼包	3321064
tSmeltingFurnaceNewItemtype_Reward[3321064] = {}
tSmeltingFurnaceNewItemtype_Reward[3321064]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321064]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321064]["DeleteItem"][1]["Id"] = 3321064
tSmeltingFurnaceNewItemtype_Reward[3321064]["RewardEMoneyMono"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321064]["RewardEMoneyMono"]["Value"] = 2
tSmeltingFurnaceNewItemtype_Reward[3321064]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321064]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3321064]["LogId"] = 12001231

-- 5天石（赠）礼包	3321065
tSmeltingFurnaceNewItemtype_Reward[3321065] = {}
tSmeltingFurnaceNewItemtype_Reward[3321065]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321065]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321065]["DeleteItem"][1]["Id"] = 3321065
tSmeltingFurnaceNewItemtype_Reward[3321065]["RewardEMoneyMono"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321065]["RewardEMoneyMono"]["Value"] = 5
tSmeltingFurnaceNewItemtype_Reward[3321065]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321065]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3321065]["LogId"] = 12001231


-- 龙珠碎片
tSmeltingFurnaceNewItemtype_Reward[3311742] = {}
tSmeltingFurnaceNewItemtype_Reward[3311742]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311742]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311742]["DeleteItem"][1]["Id"] = 3311742
tSmeltingFurnaceNewItemtype_Reward[3311742]["DeleteItem"][1]["ItemNum"] = 2
tSmeltingFurnaceNewItemtype_Reward[3311742]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311742]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311742]["RewardItem"][1]["Id"] = 1088000
tSmeltingFurnaceNewItemtype_Reward[3311742]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311742]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311742]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311742]["LogId"] = 12001231
-- 宝石碎片 合成删除
tSmeltingFurnaceNewItemtype_Reward[3311743] = {}
tSmeltingFurnaceNewItemtype_Reward[3311743]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311743]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311743]["DeleteItem"][1]["Id"] = 3311743
tSmeltingFurnaceNewItemtype_Reward[3311743]["DeleteItem"][1]["ItemNum"] = 100
tSmeltingFurnaceNewItemtype_Reward[3311743]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311743]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311743]["LogId"] = 12001231
-- 高阶神纹黄色神纹碎片 合成删除
tSmeltingFurnaceNewItemtype_Reward[3311744] = {}
tSmeltingFurnaceNewItemtype_Reward[3311744]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311744]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311744]["DeleteItem"][1]["Id"] = 3311744
tSmeltingFurnaceNewItemtype_Reward[3311744]["DeleteItem"][1]["ItemNum"] = 20
tSmeltingFurnaceNewItemtype_Reward[3311744]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311744]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311744]["LogId"] = 12001231
-- 高阶神纹蓝色神纹碎片 合成删除
tSmeltingFurnaceNewItemtype_Reward[3311745] = {}
tSmeltingFurnaceNewItemtype_Reward[3311745]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311745]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311745]["DeleteItem"][1]["Id"] = 3311745
tSmeltingFurnaceNewItemtype_Reward[3311745]["DeleteItem"][1]["ItemNum"] = 20
tSmeltingFurnaceNewItemtype_Reward[3311745]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311745]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311745]["LogId"] = 12001231
-- 高阶神纹黄色神纹碎片（赠） 合成删除
tSmeltingFurnaceNewItemtype_Reward[3311748] = {}
tSmeltingFurnaceNewItemtype_Reward[3311748]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311748]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311748]["DeleteItem"][1]["Id"] = 3311748
tSmeltingFurnaceNewItemtype_Reward[3311748]["DeleteItem"][1]["ItemNum"] = 20
tSmeltingFurnaceNewItemtype_Reward[3311748]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311748]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311748]["LogId"] = 12001231
-- 高阶神纹蓝色神纹碎片（赠） 合成删除
tSmeltingFurnaceNewItemtype_Reward[3311749] = {}
tSmeltingFurnaceNewItemtype_Reward[3311749]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311749]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311749]["DeleteItem"][1]["Id"] = 3311749
tSmeltingFurnaceNewItemtype_Reward[3311749]["DeleteItem"][1]["ItemNum"] = 20
tSmeltingFurnaceNewItemtype_Reward[3311749]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311749]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311749]["LogId"] = 12001231

-- 高阶黄色神纹可选包
tSmeltingFurnaceNewItemtype_Reward[3311746] = {}
-- 4032001	【神罗天尊】
tSmeltingFurnaceNewItemtype_Reward[3311746][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][1]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][1]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][1]["DeleteItem"][1]["Id"] = 3311746
tSmeltingFurnaceNewItemtype_Reward[3311746][1]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][1]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][1]["RewardItem"][1]["Id"] = 4032001
tSmeltingFurnaceNewItemtype_Reward[3311746][1]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311746][1]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][1]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311746][1]["LogId"] = 12001231
-- 4032101	【爆炎诀】
tSmeltingFurnaceNewItemtype_Reward[3311746][2] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][2]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][2]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][2]["DeleteItem"][1]["Id"] = 3311746
tSmeltingFurnaceNewItemtype_Reward[3311746][2]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][2]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][2]["RewardItem"][1]["Id"] = 4032101
tSmeltingFurnaceNewItemtype_Reward[3311746][2]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311746][2]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][2]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311746][2]["LogId"] = 12001231
-- 4032201	【清心决】
tSmeltingFurnaceNewItemtype_Reward[3311746][3] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][3]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][3]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][3]["DeleteItem"][1]["Id"] = 3311746
tSmeltingFurnaceNewItemtype_Reward[3311746][3]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][3]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][3]["RewardItem"][1]["Id"] = 4032201
tSmeltingFurnaceNewItemtype_Reward[3311746][3]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311746][3]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][3]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311746][3]["LogId"] = 12001231
-- 4032301	【天衣无缝】
tSmeltingFurnaceNewItemtype_Reward[3311746][4] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][4]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][4]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][4]["DeleteItem"][1]["Id"] = 3311746
tSmeltingFurnaceNewItemtype_Reward[3311746][4]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][4]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][4]["RewardItem"][1]["Id"] = 4032301
tSmeltingFurnaceNewItemtype_Reward[3311746][4]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311746][4]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][4]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311746][4]["LogId"] = 12001231
-- 4032401	【祭灵诀】
tSmeltingFurnaceNewItemtype_Reward[3311746][5] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][5]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][5]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][5]["DeleteItem"][1]["Id"] = 3311746
tSmeltingFurnaceNewItemtype_Reward[3311746][5]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][5]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][5]["RewardItem"][1]["Id"] = 4032401
tSmeltingFurnaceNewItemtype_Reward[3311746][5]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311746][5]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][5]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311746][5]["LogId"] = 12001231
-- 4032501	横扫千军
tSmeltingFurnaceNewItemtype_Reward[3311746][6] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][6]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][6]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][6]["DeleteItem"][1]["Id"] = 3311746
tSmeltingFurnaceNewItemtype_Reward[3311746][6]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][6]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][6]["RewardItem"][1]["Id"] = 4032501
tSmeltingFurnaceNewItemtype_Reward[3311746][6]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311746][6]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][6]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311746][6]["LogId"] = 12001231
-- 4032601	涅槃重生
tSmeltingFurnaceNewItemtype_Reward[3311746][7] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][7]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][7]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][7]["DeleteItem"][1]["Id"] = 3311746
tSmeltingFurnaceNewItemtype_Reward[3311746][7]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][7]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][7]["RewardItem"][1]["Id"] = 4032601
tSmeltingFurnaceNewItemtype_Reward[3311746][7]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311746][7]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][7]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311746][7]["LogId"] = 12001231
-- 4032701	锋芒毕露
tSmeltingFurnaceNewItemtype_Reward[3311746][8] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][8]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][8]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][8]["DeleteItem"][1]["Id"] = 3311746
tSmeltingFurnaceNewItemtype_Reward[3311746][8]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][8]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][8]["RewardItem"][1]["Id"] = 4032701
tSmeltingFurnaceNewItemtype_Reward[3311746][8]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311746][8]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][8]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311746][8]["LogId"] = 12001231
-- 4032801	魂兮归来
tSmeltingFurnaceNewItemtype_Reward[3311746][9] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][9]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][9]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][9]["DeleteItem"][1]["Id"] = 3311746
tSmeltingFurnaceNewItemtype_Reward[3311746][9]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][9]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][9]["RewardItem"][1]["Id"] = 4032801
tSmeltingFurnaceNewItemtype_Reward[3311746][9]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311746][9]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][9]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311746][9]["LogId"] = 12001231
-- 4031601	玄武护体
tSmeltingFurnaceNewItemtype_Reward[3311746][10] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][10]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][10]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][10]["DeleteItem"][1]["Id"] = 3311746
tSmeltingFurnaceNewItemtype_Reward[3311746][10]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][10]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][10]["RewardItem"][1]["Id"] = 4031601
tSmeltingFurnaceNewItemtype_Reward[3311746][10]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311746][10]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][10]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311746][10]["LogId"] = 12001231
-- 4031501	攻城掠地
tSmeltingFurnaceNewItemtype_Reward[3311746][11] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][11]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][11]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][11]["DeleteItem"][1]["Id"] = 3311746
tSmeltingFurnaceNewItemtype_Reward[3311746][11]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][11]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][11]["RewardItem"][1]["Id"] = 4031501
tSmeltingFurnaceNewItemtype_Reward[3311746][11]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311746][11]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][11]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311746][11]["LogId"] = 12001231
-- 4031401	策马扬鞭
tSmeltingFurnaceNewItemtype_Reward[3311746][12] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][12]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][12]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][12]["DeleteItem"][1]["Id"] = 3311746
tSmeltingFurnaceNewItemtype_Reward[3311746][12]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][12]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][12]["RewardItem"][1]["Id"] = 4031401
tSmeltingFurnaceNewItemtype_Reward[3311746][12]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311746][12]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][12]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311746][12]["LogId"] = 12001231
-- 4034001	乾坤护法
tSmeltingFurnaceNewItemtype_Reward[3311746][13] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][13]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][13]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311746][13]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][13]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][13]["DeleteItem"][1]["Id"] = 3311746
tSmeltingFurnaceNewItemtype_Reward[3311746][13]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][13]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][13]["RewardItem"][1]["Id"] = 4034001
tSmeltingFurnaceNewItemtype_Reward[3311746][13]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311746][13]["LogId"] = 12001231
-- 4033901	斗转星移
tSmeltingFurnaceNewItemtype_Reward[3311746][14] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][14]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][14]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311746][14]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][14]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][14]["DeleteItem"][1]["Id"] = 3311746
tSmeltingFurnaceNewItemtype_Reward[3311746][14]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][14]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][14]["RewardItem"][1]["Id"] = 4033901
tSmeltingFurnaceNewItemtype_Reward[3311746][14]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311746][14]["LogId"] = 12001231
-- 4033401	会心一击
tSmeltingFurnaceNewItemtype_Reward[3311746][15] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][15]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][15]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311746][15]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][15]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][15]["DeleteItem"][1]["Id"] = 3311746
tSmeltingFurnaceNewItemtype_Reward[3311746][15]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][15]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][15]["RewardItem"][1]["Id"] = 4033401
tSmeltingFurnaceNewItemtype_Reward[3311746][15]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311746][15]["LogId"] = 12001231
-- 4034101	威慑
tSmeltingFurnaceNewItemtype_Reward[3311746][16] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][16]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][16]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311746][16]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][16]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][16]["DeleteItem"][1]["Id"] = 3311746
tSmeltingFurnaceNewItemtype_Reward[3311746][16]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][16]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][16]["RewardItem"][1]["Id"] = 4034101
tSmeltingFurnaceNewItemtype_Reward[3311746][16]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311746][16]["LogId"] = 12001231
-- 4033301	致命准星
tSmeltingFurnaceNewItemtype_Reward[3311746][17] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][17]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][17]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311746][17]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][17]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][17]["DeleteItem"][1]["Id"] = 3311746
tSmeltingFurnaceNewItemtype_Reward[3311746][17]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][17]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][17]["RewardItem"][1]["Id"] = 4033301
tSmeltingFurnaceNewItemtype_Reward[3311746][17]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311746][17]["LogId"] = 12001231
-- 4033001	审判
tSmeltingFurnaceNewItemtype_Reward[3311746][18] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][18]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][18]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311746][18]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][18]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][18]["DeleteItem"][1]["Id"] = 3311746
tSmeltingFurnaceNewItemtype_Reward[3311746][18]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][18]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][18]["RewardItem"][1]["Id"] = 4033001
tSmeltingFurnaceNewItemtype_Reward[3311746][18]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311746][18]["LogId"] = 12001231
-- 4032901	例无虚发
tSmeltingFurnaceNewItemtype_Reward[3311746][19] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][19]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][19]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311746][19]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][19]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][19]["DeleteItem"][1]["Id"] = 3311746
tSmeltingFurnaceNewItemtype_Reward[3311746][19]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][19]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311746][19]["RewardItem"][1]["Id"] = 4032901
tSmeltingFurnaceNewItemtype_Reward[3311746][19]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311746][19]["LogId"] = 12001231

-- ===3311746,'（+1）稀有黄色神纹可选包'
	-- ===索引: tSmeltingFurnaceNewItemtype_Reward[3311746][20]
	-- ===删除: 3311746,1
	-- ===
	tSmeltingFurnaceNewItemtype_Reward[3311746][20] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][20]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3311746][20]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][20]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][20]["DeleteItem"][1]["Id"] = 3311746 -- 【库】（+1）稀有黄色神纹可选包[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3311746][20]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][20]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][20]["RewardItem"][1]["Id"] = 4034201 -- 乾坤妙法(+1)[4034201][属性:8][叠加:0][金币:0], 【表格】乾坤妙法（+1）
	tSmeltingFurnaceNewItemtype_Reward[3311746][20]["RewardItem"][1]["Attr"] = "0 1" -- 乾坤妙法(+1)*1
	tSmeltingFurnaceNewItemtype_Reward[3311746][20]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3311746][20]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3311746][21] = {}
	-- ===3311746,'（+1）稀有黄色神纹可选包'
	-- ===索引: tSmeltingFurnaceNewItemtype_Reward[3311746][21]
	-- ===删除: 3311746,1
	-- ===
	tSmeltingFurnaceNewItemtype_Reward[3311746][21]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3311746][21]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][21]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][21]["DeleteItem"][1]["Id"] = 3311746 -- 【库】（+1）稀有黄色神纹可选包[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3311746][21]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][21]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][21]["RewardItem"][1]["Id"] = 4034301 -- 罡气护体(+1)[4034301][属性:8][叠加:0][金币:0], 【表格】罡气护体（+1）
	tSmeltingFurnaceNewItemtype_Reward[3311746][21]["RewardItem"][1]["Attr"] = "0 1" -- 罡气护体(+1)*1
	tSmeltingFurnaceNewItemtype_Reward[3311746][21]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3311746][21]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3311746][22] = {}
	-- ===3311746,'（+1）稀有黄色神纹可选包'
	-- ===索引: tSmeltingFurnaceNewItemtype_Reward[3311746][22]
	-- ===删除: 3311746,1
	-- ===
	tSmeltingFurnaceNewItemtype_Reward[3311746][22]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3311746][22]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][22]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][22]["DeleteItem"][1]["Id"] = 3311746 -- 【库】（+1）稀有黄色神纹可选包[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3311746][22]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][22]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][22]["RewardItem"][1]["Id"] = 4034401 -- 沧澜破(+1)[4034401][属性:8][叠加:0][金币:0], 【表格】沧澜破（+1）
	tSmeltingFurnaceNewItemtype_Reward[3311746][22]["RewardItem"][1]["Attr"] = "0 1" -- 沧澜破(+1)*1
	tSmeltingFurnaceNewItemtype_Reward[3311746][22]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3311746][22]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3311746][23] = {}
	-- ===3311746,'（+1）稀有黄色神纹可选包'
	-- ===索引: tSmeltingFurnaceNewItemtype_Reward[3311746][23]
	-- ===删除: 3311746,1
	-- ===
	tSmeltingFurnaceNewItemtype_Reward[3311746][23]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3311746][23]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][23]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][23]["DeleteItem"][1]["Id"] = 3311746 -- 【库】（+1）稀有黄色神纹可选包[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3311746][23]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][23]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][23]["RewardItem"][1]["Id"] = 4034501 -- 妙手回春(+1)[4034501][属性:8][叠加:0][金币:0], 【表格】妙手回春（+1）
	tSmeltingFurnaceNewItemtype_Reward[3311746][23]["RewardItem"][1]["Attr"] = "0 1" -- 妙手回春(+1)*1
	tSmeltingFurnaceNewItemtype_Reward[3311746][23]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3311746][23]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3311746][24] = {}
	-- ===3311746,'（+1）稀有黄色神纹可选包'
	-- ===索引: tSmeltingFurnaceNewItemtype_Reward[3311746][24]
	-- ===删除: 3311746,1
	-- ===
	tSmeltingFurnaceNewItemtype_Reward[3311746][24]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3311746][24]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][24]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][24]["DeleteItem"][1]["Id"] = 3311746 -- 【库】（+1）稀有黄色神纹可选包[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3311746][24]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][24]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][24]["RewardItem"][1]["Id"] = 4034601 -- 碎魔屏障(+1)[4034601][属性:8][叠加:0][金币:0], 【表格】最终法伤免疫（+1）
	tSmeltingFurnaceNewItemtype_Reward[3311746][24]["RewardItem"][1]["Attr"] = "0 1" -- 碎魔屏障(+1)*1
	tSmeltingFurnaceNewItemtype_Reward[3311746][24]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3311746][24]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3311746][25] = {}
	-- ===3311746,'（+1）稀有黄色神纹可选包'
	-- ===索引: tSmeltingFurnaceNewItemtype_Reward[3311746][25]
	-- ===删除: 3311746,1
	-- ===
	tSmeltingFurnaceNewItemtype_Reward[3311746][25]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3311746][25]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][25]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][25]["DeleteItem"][1]["Id"] = 3311746 -- 【库】（+1）稀有黄色神纹可选包[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3311746][25]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][25]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][25]["RewardItem"][1]["Id"] = 4034701 -- 天地化盾(+1)[4034701][属性:8][叠加:0][金币:0], 【表格】最终物伤免疫（+1）
	tSmeltingFurnaceNewItemtype_Reward[3311746][25]["RewardItem"][1]["Attr"] = "0 1" -- 天地化盾(+1)*1
	tSmeltingFurnaceNewItemtype_Reward[3311746][25]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3311746][25]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3311746][26] = {}
	-- ===3311746,'（+1）稀有黄色神纹可选包'
	-- ===索引: tSmeltingFurnaceNewItemtype_Reward[3311746][26]
	-- ===删除: 3311746,1
	-- ===
	tSmeltingFurnaceNewItemtype_Reward[3311746][26]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3311746][26]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][26]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][26]["DeleteItem"][1]["Id"] = 3311746 -- 【库】（+1）稀有黄色神纹可选包[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3311746][26]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][26]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][26]["RewardItem"][1]["Id"] = 4034801 -- 碎玄元(+1)[4034801][属性:8][叠加:0][金币:0], 【表格】碎玄元（+1）
	tSmeltingFurnaceNewItemtype_Reward[3311746][26]["RewardItem"][1]["Attr"] = "0 1" -- 碎玄元(+1)*1
	tSmeltingFurnaceNewItemtype_Reward[3311746][26]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3311746][26]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3311746][27] = {}
	-- ===3311746,'（+1）稀有黄色神纹可选包'
	-- ===索引: tSmeltingFurnaceNewItemtype_Reward[3311746][27]
	-- ===删除: 3311746,1
	-- ===
	tSmeltingFurnaceNewItemtype_Reward[3311746][27]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3311746][27]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][27]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][27]["DeleteItem"][1]["Id"] = 3311746 -- 【库】（+1）稀有黄色神纹可选包[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3311746][27]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][27]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][27]["RewardItem"][1]["Id"] = 4034901 -- 不死之身(+1)[4034901][属性:8][叠加:0][金币:0], 【表格】不死之身（+1）
	tSmeltingFurnaceNewItemtype_Reward[3311746][27]["RewardItem"][1]["Attr"] = "0 1" -- 不死之身(+1)*1
	tSmeltingFurnaceNewItemtype_Reward[3311746][27]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311746][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3311746][27]["RewardEffect"]["Effect"] = "angelwing"

-- 高阶黄色神纹可选包（赠）+3
tSmeltingFurnaceNewItemtype_Reward[3321617] = {}
-- 4032001	【神罗天尊】
tSmeltingFurnaceNewItemtype_Reward[3321617][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][1]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][1]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][1]["DeleteItem"][1]["Id"] = 3321617
tSmeltingFurnaceNewItemtype_Reward[3321617][1]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][1]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][1]["RewardItem"][1]["Id"] = 4032003
tSmeltingFurnaceNewItemtype_Reward[3321617][1]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3321617][1]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][1]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3321617][1]["LogId"] = 12001231
-- 4032101	【爆炎诀】
tSmeltingFurnaceNewItemtype_Reward[3321617][2] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][2]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][2]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][2]["DeleteItem"][1]["Id"] = 3321617
tSmeltingFurnaceNewItemtype_Reward[3321617][2]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][2]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][2]["RewardItem"][1]["Id"] = 4032103
tSmeltingFurnaceNewItemtype_Reward[3321617][2]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3321617][2]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][2]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3321617][2]["LogId"] = 12001231
-- 4032201	【清心决】
tSmeltingFurnaceNewItemtype_Reward[3321617][3] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][3]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][3]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][3]["DeleteItem"][1]["Id"] = 3321617
tSmeltingFurnaceNewItemtype_Reward[3321617][3]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][3]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][3]["RewardItem"][1]["Id"] = 4032203
tSmeltingFurnaceNewItemtype_Reward[3321617][3]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3321617][3]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][3]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3321617][3]["LogId"] = 12001231
-- 4032301	【天衣无缝】
tSmeltingFurnaceNewItemtype_Reward[3321617][4] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][4]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][4]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][4]["DeleteItem"][1]["Id"] = 3321617
tSmeltingFurnaceNewItemtype_Reward[3321617][4]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][4]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][4]["RewardItem"][1]["Id"] = 4032303
tSmeltingFurnaceNewItemtype_Reward[3321617][4]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3321617][4]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][4]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3321617][4]["LogId"] = 12001231
-- 4032401	【祭灵诀】
tSmeltingFurnaceNewItemtype_Reward[3321617][5] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][5]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][5]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][5]["DeleteItem"][1]["Id"] = 3321617
tSmeltingFurnaceNewItemtype_Reward[3321617][5]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][5]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][5]["RewardItem"][1]["Id"] = 4032403
tSmeltingFurnaceNewItemtype_Reward[3321617][5]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3321617][5]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][5]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3321617][5]["LogId"] = 12001231
-- 4032501	横扫千军
tSmeltingFurnaceNewItemtype_Reward[3321617][6] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][6]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][6]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][6]["DeleteItem"][1]["Id"] = 3321617
tSmeltingFurnaceNewItemtype_Reward[3321617][6]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][6]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][6]["RewardItem"][1]["Id"] = 4032503
tSmeltingFurnaceNewItemtype_Reward[3321617][6]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3321617][6]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][6]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3321617][6]["LogId"] = 12001231
-- 4032601	涅槃重生
tSmeltingFurnaceNewItemtype_Reward[3321617][7] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][7]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][7]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][7]["DeleteItem"][1]["Id"] = 3321617
tSmeltingFurnaceNewItemtype_Reward[3321617][7]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][7]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][7]["RewardItem"][1]["Id"] = 4032603
tSmeltingFurnaceNewItemtype_Reward[3321617][7]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3321617][7]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][7]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3321617][7]["LogId"] = 12001231
-- 4032701	锋芒毕露
tSmeltingFurnaceNewItemtype_Reward[3321617][8] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][8]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][8]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][8]["DeleteItem"][1]["Id"] = 3321617
tSmeltingFurnaceNewItemtype_Reward[3321617][8]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][8]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][8]["RewardItem"][1]["Id"] = 4032703
tSmeltingFurnaceNewItemtype_Reward[3321617][8]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3321617][8]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][8]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3321617][8]["LogId"] = 12001231
-- 4032801	魂兮归来
tSmeltingFurnaceNewItemtype_Reward[3321617][9] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][9]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][9]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][9]["DeleteItem"][1]["Id"] = 3321617
tSmeltingFurnaceNewItemtype_Reward[3321617][9]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][9]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][9]["RewardItem"][1]["Id"] = 4032803
tSmeltingFurnaceNewItemtype_Reward[3321617][9]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3321617][9]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][9]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3321617][9]["LogId"] = 12001231
-- 4031601	玄武护体
tSmeltingFurnaceNewItemtype_Reward[3321617][10] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][10]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][10]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][10]["DeleteItem"][1]["Id"] = 3321617
tSmeltingFurnaceNewItemtype_Reward[3321617][10]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][10]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][10]["RewardItem"][1]["Id"] = 4031603
tSmeltingFurnaceNewItemtype_Reward[3321617][10]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3321617][10]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][10]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3321617][10]["LogId"] = 12001231
-- 4031501	攻城掠地
tSmeltingFurnaceNewItemtype_Reward[3321617][11] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][11]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][11]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][11]["DeleteItem"][1]["Id"] = 3321617
tSmeltingFurnaceNewItemtype_Reward[3321617][11]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][11]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][11]["RewardItem"][1]["Id"] = 4031503
tSmeltingFurnaceNewItemtype_Reward[3321617][11]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3321617][11]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][11]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3321617][11]["LogId"] = 12001231
-- 4031401	策马扬鞭
tSmeltingFurnaceNewItemtype_Reward[3321617][12] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][12]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][12]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][12]["DeleteItem"][1]["Id"] = 3321617
tSmeltingFurnaceNewItemtype_Reward[3321617][12]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][12]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][12]["RewardItem"][1]["Id"] = 4031403
tSmeltingFurnaceNewItemtype_Reward[3321617][12]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3321617][12]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][12]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3321617][12]["LogId"] = 12001231
-- 4034001	乾坤护法
tSmeltingFurnaceNewItemtype_Reward[3321617][13] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][13]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][13]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3321617][13]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][13]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][13]["DeleteItem"][1]["Id"] = 3321617
tSmeltingFurnaceNewItemtype_Reward[3321617][13]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][13]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][13]["RewardItem"][1]["Id"] = 4034003
tSmeltingFurnaceNewItemtype_Reward[3321617][13]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3321617][13]["LogId"] = 12001231
-- 4033901	斗转星移
tSmeltingFurnaceNewItemtype_Reward[3321617][14] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][14]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][14]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3321617][14]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][14]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][14]["DeleteItem"][1]["Id"] = 3321617
tSmeltingFurnaceNewItemtype_Reward[3321617][14]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][14]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][14]["RewardItem"][1]["Id"] = 4033903
tSmeltingFurnaceNewItemtype_Reward[3321617][14]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3321617][14]["LogId"] = 12001231
-- 4033401	会心一击
tSmeltingFurnaceNewItemtype_Reward[3321617][15] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][15]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][15]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3321617][15]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][15]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][15]["DeleteItem"][1]["Id"] = 3321617
tSmeltingFurnaceNewItemtype_Reward[3321617][15]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][15]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][15]["RewardItem"][1]["Id"] = 4033403
tSmeltingFurnaceNewItemtype_Reward[3321617][15]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3321617][15]["LogId"] = 12001231
-- 4034101	威慑
tSmeltingFurnaceNewItemtype_Reward[3321617][16] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][16]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][16]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3321617][16]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][16]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][16]["DeleteItem"][1]["Id"] = 3321617
tSmeltingFurnaceNewItemtype_Reward[3321617][16]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][16]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][16]["RewardItem"][1]["Id"] = 4034103
tSmeltingFurnaceNewItemtype_Reward[3321617][16]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3321617][16]["LogId"] = 12001231
-- 4033301	致命准星
tSmeltingFurnaceNewItemtype_Reward[3321617][17] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][17]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][17]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3321617][17]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][17]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][17]["DeleteItem"][1]["Id"] = 3321617
tSmeltingFurnaceNewItemtype_Reward[3321617][17]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][17]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][17]["RewardItem"][1]["Id"] = 4033303
tSmeltingFurnaceNewItemtype_Reward[3321617][17]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3321617][17]["LogId"] = 12001231
-- 4033001	审判
tSmeltingFurnaceNewItemtype_Reward[3321617][18] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][18]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][18]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3321617][18]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][18]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][18]["DeleteItem"][1]["Id"] = 3321617
tSmeltingFurnaceNewItemtype_Reward[3321617][18]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][18]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][18]["RewardItem"][1]["Id"] = 4033003
tSmeltingFurnaceNewItemtype_Reward[3321617][18]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3321617][18]["LogId"] = 12001231
-- 4032901	例无虚发
tSmeltingFurnaceNewItemtype_Reward[3321617][19] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][19]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][19]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3321617][19]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][19]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][19]["DeleteItem"][1]["Id"] = 3321617
tSmeltingFurnaceNewItemtype_Reward[3321617][19]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][19]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3321617][19]["RewardItem"][1]["Id"] = 4032903
tSmeltingFurnaceNewItemtype_Reward[3321617][19]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3321617][19]["LogId"] = 12001231




-- 高阶蓝色神纹可选包
tSmeltingFurnaceNewItemtype_Reward[3311747] = {}
-- 4021101	子母雷旋
tSmeltingFurnaceNewItemtype_Reward[3311747][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][1]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][1]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][1]["DeleteItem"][1]["Id"] = 3311747
tSmeltingFurnaceNewItemtype_Reward[3311747][1]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][1]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][1]["RewardItem"][1]["Id"] = 4021101
tSmeltingFurnaceNewItemtype_Reward[3311747][1]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311747][1]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][1]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311747][1]["LogId"] = 12001231
-- 4021201	碎星辰
tSmeltingFurnaceNewItemtype_Reward[3311747][2] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][2]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][2]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][2]["DeleteItem"][1]["Id"] = 3311747
tSmeltingFurnaceNewItemtype_Reward[3311747][2]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][2]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][2]["RewardItem"][1]["Id"] = 4021201
tSmeltingFurnaceNewItemtype_Reward[3311747][2]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311747][2]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][2]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311747][2]["LogId"] = 12001231
-- 4021301	龙影冲拳
tSmeltingFurnaceNewItemtype_Reward[3311747][3] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][3]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][3]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][3]["DeleteItem"][1]["Id"] = 3311747
tSmeltingFurnaceNewItemtype_Reward[3311747][3]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][3]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][3]["RewardItem"][1]["Id"] = 4021301
tSmeltingFurnaceNewItemtype_Reward[3311747][3]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311747][3]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][3]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311747][3]["LogId"] = 12001231
-- 4021401	反击风暴
tSmeltingFurnaceNewItemtype_Reward[3311747][4] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][4]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][4]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][4]["DeleteItem"][1]["Id"] = 3311747
tSmeltingFurnaceNewItemtype_Reward[3311747][4]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][4]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][4]["RewardItem"][1]["Id"] = 4021401
tSmeltingFurnaceNewItemtype_Reward[3311747][4]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311747][4]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][4]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311747][4]["LogId"] = 12001231
-- 4021501	星飞云散
tSmeltingFurnaceNewItemtype_Reward[3311747][5] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][5]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][5]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][5]["DeleteItem"][1]["Id"] = 3311747
tSmeltingFurnaceNewItemtype_Reward[3311747][5]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][5]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][5]["RewardItem"][1]["Id"] = 4021501
tSmeltingFurnaceNewItemtype_Reward[3311747][5]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311747][5]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][5]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311747][5]["LogId"] = 12001231
-- 4021601	忍法·决斗
tSmeltingFurnaceNewItemtype_Reward[3311747][6] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][6]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][6]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][6]["DeleteItem"][1]["Id"] = 3311747
tSmeltingFurnaceNewItemtype_Reward[3311747][6]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][6]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][6]["RewardItem"][1]["Id"] = 4021601
tSmeltingFurnaceNewItemtype_Reward[3311747][6]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311747][6]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][6]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311747][6]["LogId"] = 12001231
-- 4021701	海神诅咒
tSmeltingFurnaceNewItemtype_Reward[3311747][7] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][7]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][7]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][7]["DeleteItem"][1]["Id"] = 3311747
tSmeltingFurnaceNewItemtype_Reward[3311747][7]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][7]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][7]["RewardItem"][1]["Id"] = 4021701
tSmeltingFurnaceNewItemtype_Reward[3311747][7]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311747][7]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][7]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311747][7]["LogId"] = 12001231
-- 4021801	时空传送
tSmeltingFurnaceNewItemtype_Reward[3311747][8] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][8]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][8]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][8]["DeleteItem"][1]["Id"] = 3311747
tSmeltingFurnaceNewItemtype_Reward[3311747][8]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][8]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][8]["RewardItem"][1]["Id"] = 4021801
tSmeltingFurnaceNewItemtype_Reward[3311747][8]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311747][8]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][8]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311747][8]["LogId"] = 12001231
-- 4021901	天尊降世
tSmeltingFurnaceNewItemtype_Reward[3311747][9] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][9]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][9]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][9]["DeleteItem"][1]["Id"] = 3311747
tSmeltingFurnaceNewItemtype_Reward[3311747][9]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][9]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][9]["RewardItem"][1]["Id"] = 4021901
tSmeltingFurnaceNewItemtype_Reward[3311747][9]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311747][9]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][9]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311747][9]["LogId"] = 12001231
-- 4022001	怒意狂击
tSmeltingFurnaceNewItemtype_Reward[3311747][10] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][10]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][10]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][10]["DeleteItem"][1]["Id"] = 3311747
tSmeltingFurnaceNewItemtype_Reward[3311747][10]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][10]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][10]["RewardItem"][1]["Id"] = 4022001
tSmeltingFurnaceNewItemtype_Reward[3311747][10]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311747][10]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][10]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311747][10]["LogId"] = 12001231
-- 4023001	嗜血狂潮
tSmeltingFurnaceNewItemtype_Reward[3311747][11] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][11]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][11]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][11]["DeleteItem"][1]["Id"] = 3311747
tSmeltingFurnaceNewItemtype_Reward[3311747][11]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][11]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][11]["RewardItem"][1]["Id"] = 4023001
tSmeltingFurnaceNewItemtype_Reward[3311747][11]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_Reward[3311747][11]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311747][11]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311747][11]["LogId"] = 12001231

-- 高阶神纹可选包赠
-- 高阶黄色神纹可选包
tSmeltingFurnaceNewItemtype_Reward[3311750] = {}
-- 4032001	【神罗天尊】
tSmeltingFurnaceNewItemtype_Reward[3311750][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][1]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][1]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][1]["DeleteItem"][1]["Id"] = 3311750
tSmeltingFurnaceNewItemtype_Reward[3311750][1]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][1]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][1]["RewardItem"][1]["Id"] = 4032001
tSmeltingFurnaceNewItemtype_Reward[3311750][1]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311750][1]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][1]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311750][1]["LogId"] = 12001231
-- 4032101	【爆炎诀】
tSmeltingFurnaceNewItemtype_Reward[3311750][2] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][2]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][2]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][2]["DeleteItem"][1]["Id"] = 3311750
tSmeltingFurnaceNewItemtype_Reward[3311750][2]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][2]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][2]["RewardItem"][1]["Id"] = 4032101
tSmeltingFurnaceNewItemtype_Reward[3311750][2]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311750][2]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][2]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311750][2]["LogId"] = 12001231
-- 4032201	【清心决】
tSmeltingFurnaceNewItemtype_Reward[3311750][3] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][3]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][3]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][3]["DeleteItem"][1]["Id"] = 3311750
tSmeltingFurnaceNewItemtype_Reward[3311750][3]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][3]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][3]["RewardItem"][1]["Id"] = 4032201
tSmeltingFurnaceNewItemtype_Reward[3311750][3]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311750][3]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][3]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311750][3]["LogId"] = 12001231
-- 4032301	【天衣无缝】
tSmeltingFurnaceNewItemtype_Reward[3311750][4] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][4]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][4]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][4]["DeleteItem"][1]["Id"] = 3311750
tSmeltingFurnaceNewItemtype_Reward[3311750][4]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][4]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][4]["RewardItem"][1]["Id"] = 4032301
tSmeltingFurnaceNewItemtype_Reward[3311750][4]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311750][4]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][4]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311750][4]["LogId"] = 12001231
-- 4032401	【祭灵诀】
tSmeltingFurnaceNewItemtype_Reward[3311750][5] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][5]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][5]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][5]["DeleteItem"][1]["Id"] = 3311750
tSmeltingFurnaceNewItemtype_Reward[3311750][5]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][5]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][5]["RewardItem"][1]["Id"] = 4032401
tSmeltingFurnaceNewItemtype_Reward[3311750][5]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311750][5]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][5]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311750][5]["LogId"] = 12001231
-- 4032501	横扫千军
tSmeltingFurnaceNewItemtype_Reward[3311750][6] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][6]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][6]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][6]["DeleteItem"][1]["Id"] = 3311750
tSmeltingFurnaceNewItemtype_Reward[3311750][6]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][6]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][6]["RewardItem"][1]["Id"] = 4032501
tSmeltingFurnaceNewItemtype_Reward[3311750][6]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311750][6]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][6]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311750][6]["LogId"] = 12001231
-- 4032601	涅槃重生
tSmeltingFurnaceNewItemtype_Reward[3311750][7] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][7]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][7]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][7]["DeleteItem"][1]["Id"] = 3311750
tSmeltingFurnaceNewItemtype_Reward[3311750][7]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][7]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][7]["RewardItem"][1]["Id"] = 4032601
tSmeltingFurnaceNewItemtype_Reward[3311750][7]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311750][7]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][7]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311750][7]["LogId"] = 12001231
-- 4032701	锋芒毕露
tSmeltingFurnaceNewItemtype_Reward[3311750][8] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][8]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][8]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][8]["DeleteItem"][1]["Id"] = 3311750
tSmeltingFurnaceNewItemtype_Reward[3311750][8]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][8]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][8]["RewardItem"][1]["Id"] = 4032701
tSmeltingFurnaceNewItemtype_Reward[3311750][8]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311750][8]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][8]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311750][8]["LogId"] = 12001231
-- 4032801	魂兮归来
tSmeltingFurnaceNewItemtype_Reward[3311750][9] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][9]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][9]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][9]["DeleteItem"][1]["Id"] = 3311750
tSmeltingFurnaceNewItemtype_Reward[3311750][9]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][9]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][9]["RewardItem"][1]["Id"] = 4032801
tSmeltingFurnaceNewItemtype_Reward[3311750][9]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311750][9]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][9]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311750][9]["LogId"] = 12001231
-- 4031601	玄武护体
tSmeltingFurnaceNewItemtype_Reward[3311750][10] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][10]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][10]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][10]["DeleteItem"][1]["Id"] = 3311750
tSmeltingFurnaceNewItemtype_Reward[3311750][10]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][10]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][10]["RewardItem"][1]["Id"] = 4031601
tSmeltingFurnaceNewItemtype_Reward[3311750][10]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311750][10]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][10]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311750][10]["LogId"] = 12001231
-- 4031501	攻城掠地
tSmeltingFurnaceNewItemtype_Reward[3311750][11] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][11]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][11]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][11]["DeleteItem"][1]["Id"] = 3311750
tSmeltingFurnaceNewItemtype_Reward[3311750][11]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][11]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][11]["RewardItem"][1]["Id"] = 4031501
tSmeltingFurnaceNewItemtype_Reward[3311750][11]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311750][11]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][11]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311750][11]["LogId"] = 12001231
-- 4031401	策马扬鞭
tSmeltingFurnaceNewItemtype_Reward[3311750][12] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][12]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][12]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][12]["DeleteItem"][1]["Id"] = 3311750
tSmeltingFurnaceNewItemtype_Reward[3311750][12]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][12]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][12]["RewardItem"][1]["Id"] = 4031401
tSmeltingFurnaceNewItemtype_Reward[3311750][12]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311750][12]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][12]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311750][12]["LogId"] = 12001231
-- 4034001	乾坤护法
tSmeltingFurnaceNewItemtype_Reward[3311750][13] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][13]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][13]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311750][13]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][13]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][13]["DeleteItem"][1]["Id"] = 3311750
tSmeltingFurnaceNewItemtype_Reward[3311750][13]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][13]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][13]["RewardItem"][1]["Id"] = 4034001
tSmeltingFurnaceNewItemtype_Reward[3311750][13]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311750][13]["LogId"] = 12001231
-- 4033901	斗转星移
tSmeltingFurnaceNewItemtype_Reward[3311750][14] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][14]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][14]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311750][14]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][14]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][14]["DeleteItem"][1]["Id"] = 3311750
tSmeltingFurnaceNewItemtype_Reward[3311750][14]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][14]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][14]["RewardItem"][1]["Id"] = 4033901
tSmeltingFurnaceNewItemtype_Reward[3311750][14]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311750][14]["LogId"] = 12001231
-- 4033401	会心一击
tSmeltingFurnaceNewItemtype_Reward[3311750][15] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][15]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][15]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311750][15]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][15]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][15]["DeleteItem"][1]["Id"] = 3311750
tSmeltingFurnaceNewItemtype_Reward[3311750][15]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][15]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][15]["RewardItem"][1]["Id"] = 4033401
tSmeltingFurnaceNewItemtype_Reward[3311750][15]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311750][15]["LogId"] = 12001231
-- 4034101	威慑
tSmeltingFurnaceNewItemtype_Reward[3311750][16] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][16]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][16]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311750][16]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][16]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][16]["DeleteItem"][1]["Id"] = 3311750
tSmeltingFurnaceNewItemtype_Reward[3311750][16]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][16]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][16]["RewardItem"][1]["Id"] = 4034101
tSmeltingFurnaceNewItemtype_Reward[3311750][16]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311750][16]["LogId"] = 12001231
-- 4033301	致命准星
tSmeltingFurnaceNewItemtype_Reward[3311750][17] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][17]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][17]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311750][17]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][17]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][17]["DeleteItem"][1]["Id"] = 3311750
tSmeltingFurnaceNewItemtype_Reward[3311750][17]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][17]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][17]["RewardItem"][1]["Id"] = 4033301
tSmeltingFurnaceNewItemtype_Reward[3311750][17]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311750][17]["LogId"] = 12001231
-- 4033001	审判
tSmeltingFurnaceNewItemtype_Reward[3311750][18] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][18]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][18]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311750][18]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][18]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][18]["DeleteItem"][1]["Id"] = 3311750
tSmeltingFurnaceNewItemtype_Reward[3311750][18]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][18]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][18]["RewardItem"][1]["Id"] = 4033001
tSmeltingFurnaceNewItemtype_Reward[3311750][18]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311750][18]["LogId"] = 12001231
-- 4032901	例无虚发
tSmeltingFurnaceNewItemtype_Reward[3311750][19] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][19]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][19]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311750][19]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][19]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][19]["DeleteItem"][1]["Id"] = 3311750
tSmeltingFurnaceNewItemtype_Reward[3311750][19]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][19]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311750][19]["RewardItem"][1]["Id"] = 4032901
tSmeltingFurnaceNewItemtype_Reward[3311750][19]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311750][19]["LogId"] = 12001231
-- ===3311750,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tSmeltingFurnaceNewItemtype_Reward[3311750][20]
	-- ===删除: 3311750,1
	-- ===
	tSmeltingFurnaceNewItemtype_Reward[3311750][20] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][20]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3311750][20]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][20]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][20]["DeleteItem"][1]["Id"] = 3311750 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3311750][20]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][20]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][20]["RewardItem"][1]["Id"] = 4034201 -- 乾坤妙法(+1)[4034201][属性:8][叠加:0][金币:0], 【表格】乾坤妙法（+1）
	tSmeltingFurnaceNewItemtype_Reward[3311750][20]["RewardItem"][1]["Attr"] = "0 1 3" -- 乾坤妙法(+1)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3311750][20]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3311750][20]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3311750][21] = {}
	-- ===3311750,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tSmeltingFurnaceNewItemtype_Reward[3311750][21]
	-- ===删除: 3311750,1
	-- ===
	tSmeltingFurnaceNewItemtype_Reward[3311750][21]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3311750][21]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][21]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][21]["DeleteItem"][1]["Id"] = 3311750 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3311750][21]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][21]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][21]["RewardItem"][1]["Id"] = 4034301 -- 罡气护体(+1)[4034301][属性:8][叠加:0][金币:0], 【表格】罡气护体（+1）
	tSmeltingFurnaceNewItemtype_Reward[3311750][21]["RewardItem"][1]["Attr"] = "0 1 3" -- 罡气护体(+1)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3311750][21]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3311750][21]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3311750][22] = {}
	-- ===3311750,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tSmeltingFurnaceNewItemtype_Reward[3311750][22]
	-- ===删除: 3311750,1
	-- ===
	tSmeltingFurnaceNewItemtype_Reward[3311750][22]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3311750][22]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][22]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][22]["DeleteItem"][1]["Id"] = 3311750 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3311750][22]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][22]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][22]["RewardItem"][1]["Id"] = 4034401 -- 沧澜破(+1)[4034401][属性:8][叠加:0][金币:0], 【表格】沧澜破（+1）
	tSmeltingFurnaceNewItemtype_Reward[3311750][22]["RewardItem"][1]["Attr"] = "0 1 3" -- 沧澜破(+1)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3311750][22]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3311750][22]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3311750][23] = {}
	-- ===3311750,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tSmeltingFurnaceNewItemtype_Reward[3311750][23]
	-- ===删除: 3311750,1
	-- ===
	tSmeltingFurnaceNewItemtype_Reward[3311750][23]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3311750][23]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][23]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][23]["DeleteItem"][1]["Id"] = 3311750 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3311750][23]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][23]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][23]["RewardItem"][1]["Id"] = 4034501 -- 妙手回春(+1)[4034501][属性:8][叠加:0][金币:0], 【表格】妙手回春（+1）
	tSmeltingFurnaceNewItemtype_Reward[3311750][23]["RewardItem"][1]["Attr"] = "0 1 3" -- 妙手回春(+1)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3311750][23]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3311750][23]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3311750][24] = {}
	-- ===3311750,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tSmeltingFurnaceNewItemtype_Reward[3311750][24]
	-- ===删除: 3311750,1
	-- ===
	tSmeltingFurnaceNewItemtype_Reward[3311750][24]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3311750][24]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][24]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][24]["DeleteItem"][1]["Id"] = 3311750 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3311750][24]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][24]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][24]["RewardItem"][1]["Id"] = 4034601 -- 碎魔屏障(+1)[4034601][属性:8][叠加:0][金币:0], 【表格】最终法伤免疫（+1）
	tSmeltingFurnaceNewItemtype_Reward[3311750][24]["RewardItem"][1]["Attr"] = "0 1 3" -- 碎魔屏障(+1)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3311750][24]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3311750][24]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3311750][25] = {}
	-- ===3311750,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tSmeltingFurnaceNewItemtype_Reward[3311750][25]
	-- ===删除: 3311750,1
	-- ===
	tSmeltingFurnaceNewItemtype_Reward[3311750][25]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3311750][25]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][25]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][25]["DeleteItem"][1]["Id"] = 3311750 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3311750][25]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][25]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][25]["RewardItem"][1]["Id"] = 4034701 -- 天地化盾(+1)[4034701][属性:8][叠加:0][金币:0], 【表格】最终物伤免疫（+1）
	tSmeltingFurnaceNewItemtype_Reward[3311750][25]["RewardItem"][1]["Attr"] = "0 1 3" -- 天地化盾(+1)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3311750][25]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3311750][25]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3311750][26] = {}
	-- ===3311750,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tSmeltingFurnaceNewItemtype_Reward[3311750][26]
	-- ===删除: 3311750,1
	-- ===
	tSmeltingFurnaceNewItemtype_Reward[3311750][26]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3311750][26]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][26]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][26]["DeleteItem"][1]["Id"] = 3311750 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3311750][26]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][26]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][26]["RewardItem"][1]["Id"] = 4034801 -- 碎玄元(+1)[4034801][属性:8][叠加:0][金币:0], 【表格】碎玄元（+1）
	tSmeltingFurnaceNewItemtype_Reward[3311750][26]["RewardItem"][1]["Attr"] = "0 1 3" -- 碎玄元(+1)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3311750][26]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3311750][26]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3311750][27] = {}
	-- ===3311750,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tSmeltingFurnaceNewItemtype_Reward[3311750][27]
	-- ===删除: 3311750,1
	-- ===
	tSmeltingFurnaceNewItemtype_Reward[3311750][27]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3311750][27]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][27]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][27]["DeleteItem"][1]["Id"] = 3311750 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3311750][27]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][27]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][27]["RewardItem"][1]["Id"] = 4034901 -- 不死之身(+1)[4034901][属性:8][叠加:0][金币:0], 【表格】不死之身（+1）
	tSmeltingFurnaceNewItemtype_Reward[3311750][27]["RewardItem"][1]["Attr"] = "0 1 3" -- 不死之身(+1)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3311750][27]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3311750][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3311750][27]["RewardEffect"]["Effect"] = "angelwing"

-- 2020.5.09 新作神纹可选包 物品参考 3311750，但是要加上最新出的两个黄色稀有神纹，礼包名称可以保持一样
	tSmeltingFurnaceNewItemtype_Reward[3316193] = {}
	-- 4032001	【神罗天尊】
	tSmeltingFurnaceNewItemtype_Reward[3316193][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][1]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][1]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][1]["DeleteItem"][1]["Id"] = 3316193
	tSmeltingFurnaceNewItemtype_Reward[3316193][1]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][1]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][1]["RewardItem"][1]["Id"] = 4032001
	tSmeltingFurnaceNewItemtype_Reward[3316193][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tSmeltingFurnaceNewItemtype_Reward[3316193][1]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][1]["RewardEffect"]["Effect"] = "eidolon"
	tSmeltingFurnaceNewItemtype_Reward[3316193][1]["LogId"] = 12001231
	-- 4032101	【爆炎诀】
	tSmeltingFurnaceNewItemtype_Reward[3316193][2] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][2]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][2]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][2]["DeleteItem"][1]["Id"] = 3316193
	tSmeltingFurnaceNewItemtype_Reward[3316193][2]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][2]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][2]["RewardItem"][1]["Id"] = 4032101
	tSmeltingFurnaceNewItemtype_Reward[3316193][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tSmeltingFurnaceNewItemtype_Reward[3316193][2]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][2]["RewardEffect"]["Effect"] = "eidolon"
	tSmeltingFurnaceNewItemtype_Reward[3316193][2]["LogId"] = 12001231
	-- 4032201	【清心决】
	tSmeltingFurnaceNewItemtype_Reward[3316193][3] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][3]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][3]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][3]["DeleteItem"][1]["Id"] = 3316193
	tSmeltingFurnaceNewItemtype_Reward[3316193][3]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][3]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][3]["RewardItem"][1]["Id"] = 4032201
	tSmeltingFurnaceNewItemtype_Reward[3316193][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tSmeltingFurnaceNewItemtype_Reward[3316193][3]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][3]["RewardEffect"]["Effect"] = "eidolon"
	tSmeltingFurnaceNewItemtype_Reward[3316193][3]["LogId"] = 12001231
	-- 4032301	【天衣无缝】
	tSmeltingFurnaceNewItemtype_Reward[3316193][4] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][4]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][4]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][4]["DeleteItem"][1]["Id"] = 3316193
	tSmeltingFurnaceNewItemtype_Reward[3316193][4]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][4]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][4]["RewardItem"][1]["Id"] = 4032301
	tSmeltingFurnaceNewItemtype_Reward[3316193][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tSmeltingFurnaceNewItemtype_Reward[3316193][4]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][4]["RewardEffect"]["Effect"] = "eidolon"
	tSmeltingFurnaceNewItemtype_Reward[3316193][4]["LogId"] = 12001231
	-- 4032401	【祭灵诀】
	tSmeltingFurnaceNewItemtype_Reward[3316193][5] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][5]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][5]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][5]["DeleteItem"][1]["Id"] = 3316193
	tSmeltingFurnaceNewItemtype_Reward[3316193][5]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][5]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][5]["RewardItem"][1]["Id"] = 4032401
	tSmeltingFurnaceNewItemtype_Reward[3316193][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tSmeltingFurnaceNewItemtype_Reward[3316193][5]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][5]["RewardEffect"]["Effect"] = "eidolon"
	tSmeltingFurnaceNewItemtype_Reward[3316193][5]["LogId"] = 12001231
	-- 4032501	横扫千军
	tSmeltingFurnaceNewItemtype_Reward[3316193][6] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][6]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][6]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][6]["DeleteItem"][1]["Id"] = 3316193
	tSmeltingFurnaceNewItemtype_Reward[3316193][6]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][6]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][6]["RewardItem"][1]["Id"] = 4032501
	tSmeltingFurnaceNewItemtype_Reward[3316193][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tSmeltingFurnaceNewItemtype_Reward[3316193][6]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][6]["RewardEffect"]["Effect"] = "eidolon"
	tSmeltingFurnaceNewItemtype_Reward[3316193][6]["LogId"] = 12001231
	-- 4032601	涅槃重生
	tSmeltingFurnaceNewItemtype_Reward[3316193][7] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][7]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][7]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][7]["DeleteItem"][1]["Id"] = 3316193
	tSmeltingFurnaceNewItemtype_Reward[3316193][7]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][7]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][7]["RewardItem"][1]["Id"] = 4032601
	tSmeltingFurnaceNewItemtype_Reward[3316193][7]["RewardItem"][1]["Attr"] = "0 1 3"
	tSmeltingFurnaceNewItemtype_Reward[3316193][7]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][7]["RewardEffect"]["Effect"] = "eidolon"
	tSmeltingFurnaceNewItemtype_Reward[3316193][7]["LogId"] = 12001231
	-- 4032701	锋芒毕露
	tSmeltingFurnaceNewItemtype_Reward[3316193][8] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][8]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][8]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][8]["DeleteItem"][1]["Id"] = 3316193
	tSmeltingFurnaceNewItemtype_Reward[3316193][8]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][8]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][8]["RewardItem"][1]["Id"] = 4032701
	tSmeltingFurnaceNewItemtype_Reward[3316193][8]["RewardItem"][1]["Attr"] = "0 1 3"
	tSmeltingFurnaceNewItemtype_Reward[3316193][8]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][8]["RewardEffect"]["Effect"] = "eidolon"
	tSmeltingFurnaceNewItemtype_Reward[3316193][8]["LogId"] = 12001231
	-- 4032801	魂兮归来
	tSmeltingFurnaceNewItemtype_Reward[3316193][9] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][9]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][9]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][9]["DeleteItem"][1]["Id"] = 3316193
	tSmeltingFurnaceNewItemtype_Reward[3316193][9]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][9]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][9]["RewardItem"][1]["Id"] = 4032801
	tSmeltingFurnaceNewItemtype_Reward[3316193][9]["RewardItem"][1]["Attr"] = "0 1 3"
	tSmeltingFurnaceNewItemtype_Reward[3316193][9]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][9]["RewardEffect"]["Effect"] = "eidolon"
	tSmeltingFurnaceNewItemtype_Reward[3316193][9]["LogId"] = 12001231
	-- 4031601	玄武护体
	tSmeltingFurnaceNewItemtype_Reward[3316193][10] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][10]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][10]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][10]["DeleteItem"][1]["Id"] = 3316193
	tSmeltingFurnaceNewItemtype_Reward[3316193][10]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][10]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][10]["RewardItem"][1]["Id"] = 4031601
	tSmeltingFurnaceNewItemtype_Reward[3316193][10]["RewardItem"][1]["Attr"] = "0 1 3"
	tSmeltingFurnaceNewItemtype_Reward[3316193][10]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][10]["RewardEffect"]["Effect"] = "eidolon"
	tSmeltingFurnaceNewItemtype_Reward[3316193][10]["LogId"] = 12001231
	-- 4031501	攻城掠地
	tSmeltingFurnaceNewItemtype_Reward[3316193][11] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][11]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][11]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][11]["DeleteItem"][1]["Id"] = 3316193
	tSmeltingFurnaceNewItemtype_Reward[3316193][11]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][11]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][11]["RewardItem"][1]["Id"] = 4031501
	tSmeltingFurnaceNewItemtype_Reward[3316193][11]["RewardItem"][1]["Attr"] = "0 1 3"
	tSmeltingFurnaceNewItemtype_Reward[3316193][11]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][11]["RewardEffect"]["Effect"] = "eidolon"
	tSmeltingFurnaceNewItemtype_Reward[3316193][11]["LogId"] = 12001231
	-- 4031401	策马扬鞭
	tSmeltingFurnaceNewItemtype_Reward[3316193][12] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][12]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][12]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][12]["DeleteItem"][1]["Id"] = 3316193
	tSmeltingFurnaceNewItemtype_Reward[3316193][12]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][12]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][12]["RewardItem"][1]["Id"] = 4031401
	tSmeltingFurnaceNewItemtype_Reward[3316193][12]["RewardItem"][1]["Attr"] = "0 1 3"
	tSmeltingFurnaceNewItemtype_Reward[3316193][12]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][12]["RewardEffect"]["Effect"] = "eidolon"
	tSmeltingFurnaceNewItemtype_Reward[3316193][12]["LogId"] = 12001231
	-- 4034001	乾坤护法
	tSmeltingFurnaceNewItemtype_Reward[3316193][13] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][13]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][13]["RewardEffect"]["Effect"] = "eidolon"
	tSmeltingFurnaceNewItemtype_Reward[3316193][13]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][13]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][13]["DeleteItem"][1]["Id"] = 3316193
	tSmeltingFurnaceNewItemtype_Reward[3316193][13]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][13]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][13]["RewardItem"][1]["Id"] = 4034001
	tSmeltingFurnaceNewItemtype_Reward[3316193][13]["RewardItem"][1]["Attr"] = "0 1 3"
	tSmeltingFurnaceNewItemtype_Reward[3316193][13]["LogId"] = 12001231
	-- 4033901	斗转星移
	tSmeltingFurnaceNewItemtype_Reward[3316193][14] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][14]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][14]["RewardEffect"]["Effect"] = "eidolon"
	tSmeltingFurnaceNewItemtype_Reward[3316193][14]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][14]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][14]["DeleteItem"][1]["Id"] = 3316193
	tSmeltingFurnaceNewItemtype_Reward[3316193][14]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][14]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][14]["RewardItem"][1]["Id"] = 4033901
	tSmeltingFurnaceNewItemtype_Reward[3316193][14]["RewardItem"][1]["Attr"] = "0 1 3"
	tSmeltingFurnaceNewItemtype_Reward[3316193][14]["LogId"] = 12001231
	-- 4033401	会心一击
	tSmeltingFurnaceNewItemtype_Reward[3316193][15] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][15]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][15]["RewardEffect"]["Effect"] = "eidolon"
	tSmeltingFurnaceNewItemtype_Reward[3316193][15]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][15]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][15]["DeleteItem"][1]["Id"] = 3316193
	tSmeltingFurnaceNewItemtype_Reward[3316193][15]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][15]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][15]["RewardItem"][1]["Id"] = 4033401
	tSmeltingFurnaceNewItemtype_Reward[3316193][15]["RewardItem"][1]["Attr"] = "0 1 3"
	tSmeltingFurnaceNewItemtype_Reward[3316193][15]["LogId"] = 12001231
	-- 4034101	威慑
	tSmeltingFurnaceNewItemtype_Reward[3316193][16] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][16]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][16]["RewardEffect"]["Effect"] = "eidolon"
	tSmeltingFurnaceNewItemtype_Reward[3316193][16]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][16]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][16]["DeleteItem"][1]["Id"] = 3316193
	tSmeltingFurnaceNewItemtype_Reward[3316193][16]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][16]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][16]["RewardItem"][1]["Id"] = 4034101
	tSmeltingFurnaceNewItemtype_Reward[3316193][16]["RewardItem"][1]["Attr"] = "0 1 3"
	tSmeltingFurnaceNewItemtype_Reward[3316193][16]["LogId"] = 12001231
	-- 4033301	致命准星
	tSmeltingFurnaceNewItemtype_Reward[3316193][17] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][17]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][17]["RewardEffect"]["Effect"] = "eidolon"
	tSmeltingFurnaceNewItemtype_Reward[3316193][17]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][17]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][17]["DeleteItem"][1]["Id"] = 3316193
	tSmeltingFurnaceNewItemtype_Reward[3316193][17]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][17]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][17]["RewardItem"][1]["Id"] = 4033301
	tSmeltingFurnaceNewItemtype_Reward[3316193][17]["RewardItem"][1]["Attr"] = "0 1 3"
	tSmeltingFurnaceNewItemtype_Reward[3316193][17]["LogId"] = 12001231
	-- 4033001	审判
	tSmeltingFurnaceNewItemtype_Reward[3316193][18] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][18]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][18]["RewardEffect"]["Effect"] = "eidolon"
	tSmeltingFurnaceNewItemtype_Reward[3316193][18]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][18]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][18]["DeleteItem"][1]["Id"] = 3316193
	tSmeltingFurnaceNewItemtype_Reward[3316193][18]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][18]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][18]["RewardItem"][1]["Id"] = 4033001
	tSmeltingFurnaceNewItemtype_Reward[3316193][18]["RewardItem"][1]["Attr"] = "0 1 3"
	tSmeltingFurnaceNewItemtype_Reward[3316193][18]["LogId"] = 12001231
	-- 4032901	例无虚发
	tSmeltingFurnaceNewItemtype_Reward[3316193][19] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][19]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][19]["RewardEffect"]["Effect"] = "eidolon"
	tSmeltingFurnaceNewItemtype_Reward[3316193][19]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][19]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][19]["DeleteItem"][1]["Id"] = 3316193
	tSmeltingFurnaceNewItemtype_Reward[3316193][19]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][19]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][19]["RewardItem"][1]["Id"] = 4032901
	tSmeltingFurnaceNewItemtype_Reward[3316193][19]["RewardItem"][1]["Attr"] = "0 1 3"
	tSmeltingFurnaceNewItemtype_Reward[3316193][19]["LogId"] = 12001231
	-- ===3316193,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tSmeltingFurnaceNewItemtype_Reward[3316193][20]
	-- ===删除: 3316193,1
	-- ===
	tSmeltingFurnaceNewItemtype_Reward[3316193][20] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][20]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3316193][20]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][20]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][20]["DeleteItem"][1]["Id"] = 3316193 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3316193][20]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][20]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][20]["RewardItem"][1]["Id"] = 4034201 -- 乾坤妙法(+1)[4034201][属性:8][叠加:0][金币:0], 【表格】乾坤妙法（+1）
	tSmeltingFurnaceNewItemtype_Reward[3316193][20]["RewardItem"][1]["Attr"] = "0 1 3" -- 乾坤妙法(+1)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3316193][20]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3316193][20]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tSmeltingFurnaceNewItemtype_Reward[3316193][21] = {}
	-- ===3316193,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tSmeltingFurnaceNewItemtype_Reward[3316193][21]
	-- ===删除: 3316193,1
	-- ===
	tSmeltingFurnaceNewItemtype_Reward[3316193][21]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3316193][21]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][21]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][21]["DeleteItem"][1]["Id"] = 3316193 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3316193][21]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][21]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][21]["RewardItem"][1]["Id"] = 4034301 -- 罡气护体(+1)[4034301][属性:8][叠加:0][金币:0], 【表格】罡气护体（+1）
	tSmeltingFurnaceNewItemtype_Reward[3316193][21]["RewardItem"][1]["Attr"] = "0 1 3" -- 罡气护体(+1)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3316193][21]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3316193][21]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tSmeltingFurnaceNewItemtype_Reward[3316193][22] = {}
	-- ===3316193,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tSmeltingFurnaceNewItemtype_Reward[3316193][22]
	-- ===删除: 3316193,1
	-- ===
	tSmeltingFurnaceNewItemtype_Reward[3316193][22]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3316193][22]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][22]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][22]["DeleteItem"][1]["Id"] = 3316193 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3316193][22]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][22]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][22]["RewardItem"][1]["Id"] = 4034401 -- 沧澜破(+1)[4034401][属性:8][叠加:0][金币:0], 【表格】沧澜破（+1）
	tSmeltingFurnaceNewItemtype_Reward[3316193][22]["RewardItem"][1]["Attr"] = "0 1 3" -- 沧澜破(+1)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3316193][22]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3316193][22]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tSmeltingFurnaceNewItemtype_Reward[3316193][23] = {}
	-- ===3316193,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tSmeltingFurnaceNewItemtype_Reward[3316193][23]
	-- ===删除: 3316193,1
	-- ===
	tSmeltingFurnaceNewItemtype_Reward[3316193][23]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3316193][23]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][23]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][23]["DeleteItem"][1]["Id"] = 3316193 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3316193][23]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][23]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][23]["RewardItem"][1]["Id"] = 4034501 -- 妙手回春(+1)[4034501][属性:8][叠加:0][金币:0], 【表格】妙手回春（+1）
	tSmeltingFurnaceNewItemtype_Reward[3316193][23]["RewardItem"][1]["Attr"] = "0 1 3" -- 妙手回春(+1)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3316193][23]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3316193][23]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tSmeltingFurnaceNewItemtype_Reward[3316193][24] = {}
	-- ===3316193,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tSmeltingFurnaceNewItemtype_Reward[3316193][24]
	-- ===删除: 3316193,1
	-- ===
	tSmeltingFurnaceNewItemtype_Reward[3316193][24]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3316193][24]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][24]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][24]["DeleteItem"][1]["Id"] = 3316193 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3316193][24]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][24]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][24]["RewardItem"][1]["Id"] = 4034601 -- 碎魔屏障(+1)[4034601][属性:8][叠加:0][金币:0], 【表格】最终法伤免疫（+1）
	tSmeltingFurnaceNewItemtype_Reward[3316193][24]["RewardItem"][1]["Attr"] = "0 1 3" -- 碎魔屏障(+1)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3316193][24]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3316193][24]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tSmeltingFurnaceNewItemtype_Reward[3316193][25] = {}
	-- ===3316193,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tSmeltingFurnaceNewItemtype_Reward[3316193][25]
	-- ===删除: 3316193,1
	-- ===
	tSmeltingFurnaceNewItemtype_Reward[3316193][25]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3316193][25]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][25]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][25]["DeleteItem"][1]["Id"] = 3316193 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3316193][25]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][25]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][25]["RewardItem"][1]["Id"] = 4034701 -- 天地化盾(+1)[4034701][属性:8][叠加:0][金币:0], 【表格】最终物伤免疫（+1）
	tSmeltingFurnaceNewItemtype_Reward[3316193][25]["RewardItem"][1]["Attr"] = "0 1 3" -- 天地化盾(+1)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3316193][25]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3316193][25]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tSmeltingFurnaceNewItemtype_Reward[3316193][26] = {}
	-- ===3316193,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tSmeltingFurnaceNewItemtype_Reward[3316193][26]
	-- ===删除: 3316193,1
	-- ===
	tSmeltingFurnaceNewItemtype_Reward[3316193][26]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3316193][26]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][26]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][26]["DeleteItem"][1]["Id"] = 3316193 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3316193][26]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][26]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][26]["RewardItem"][1]["Id"] = 4034801 -- 碎玄元(+1)[4034801][属性:8][叠加:0][金币:0], 【表格】碎玄元（+1）
	tSmeltingFurnaceNewItemtype_Reward[3316193][26]["RewardItem"][1]["Attr"] = "0 1 3" -- 碎玄元(+1)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3316193][26]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3316193][26]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tSmeltingFurnaceNewItemtype_Reward[3316193][27] = {}
	-- ===3316193,'（+1）稀有黄色神纹可选包（赠）'
	-- ===索引: tSmeltingFurnaceNewItemtype_Reward[3316193][27]
	-- ===删除: 3316193,1
	-- ===
	tSmeltingFurnaceNewItemtype_Reward[3316193][27]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3316193][27]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][27]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][27]["DeleteItem"][1]["Id"] = 3316193 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3316193][27]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][27]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][27]["RewardItem"][1]["Id"] = 4034901 -- 不死之身(+1)[4034901][属性:8][叠加:0][金币:0], 【表格】不死之身（+1）
	tSmeltingFurnaceNewItemtype_Reward[3316193][27]["RewardItem"][1]["Attr"] = "0 1 3" -- 不死之身(+1)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3316193][27]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3316193][27]["RewardEffect"]["Effect"] = "angelwing"
	
	tSmeltingFurnaceNewItemtype_Reward[3316193][28] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][28]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3316193][28]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][28]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][28]["DeleteItem"][1]["Id"] = 3316193 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3316193][28]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][28]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][28]["RewardItem"][1]["Id"] = 4035101
	tSmeltingFurnaceNewItemtype_Reward[3316193][28]["RewardItem"][1]["Attr"] = "0 1 3"
	tSmeltingFurnaceNewItemtype_Reward[3316193][28]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3316193][28]["RewardEffect"]["Effect"] = "angelwing"
	
	tSmeltingFurnaceNewItemtype_Reward[3316193][29] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][29]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3316193][29]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][29]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][29]["DeleteItem"][1]["Id"] = 3316193 -- 【库】（+1）稀有黄色神纹可选包（赠）[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3316193][29]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][29]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][29]["RewardItem"][1]["Id"] = 4035201
	tSmeltingFurnaceNewItemtype_Reward[3316193][29]["RewardItem"][1]["Attr"] = "0 1 3"
	tSmeltingFurnaceNewItemtype_Reward[3316193][29]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3316193][29]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3316193][29]["RewardEffect"]["Effect"] = "angelwing"


-- 高阶蓝色神纹可选包
tSmeltingFurnaceNewItemtype_Reward[3311751] = {}
-- 
-- 4021101	子母雷旋
tSmeltingFurnaceNewItemtype_Reward[3311751][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][1]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][1]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][1]["DeleteItem"][1]["Id"] = 3311751
tSmeltingFurnaceNewItemtype_Reward[3311751][1]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][1]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][1]["RewardItem"][1]["Id"] = 4021101
tSmeltingFurnaceNewItemtype_Reward[3311751][1]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311751][1]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][1]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311751][1]["LogId"] = 12001231
-- 4021201	碎星辰
tSmeltingFurnaceNewItemtype_Reward[3311751][2] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][2]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][2]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][2]["DeleteItem"][1]["Id"] = 3311751
tSmeltingFurnaceNewItemtype_Reward[3311751][2]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][2]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][2]["RewardItem"][1]["Id"] = 4021201
tSmeltingFurnaceNewItemtype_Reward[3311751][2]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311751][2]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][2]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311751][2]["LogId"] = 12001231
-- 4021301	龙影冲拳
tSmeltingFurnaceNewItemtype_Reward[3311751][3] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][3]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][3]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][3]["DeleteItem"][1]["Id"] = 3311751
tSmeltingFurnaceNewItemtype_Reward[3311751][3]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][3]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][3]["RewardItem"][1]["Id"] = 4021301
tSmeltingFurnaceNewItemtype_Reward[3311751][3]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311751][3]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][3]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311751][3]["LogId"] = 12001231
-- 4021401	反击风暴
tSmeltingFurnaceNewItemtype_Reward[3311751][4] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][4]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][4]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][4]["DeleteItem"][1]["Id"] = 3311751
tSmeltingFurnaceNewItemtype_Reward[3311751][4]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][4]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][4]["RewardItem"][1]["Id"] = 4021401
tSmeltingFurnaceNewItemtype_Reward[3311751][4]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311751][4]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][4]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311751][4]["LogId"] = 12001231
-- 4021501	星飞云散
tSmeltingFurnaceNewItemtype_Reward[3311751][5] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][5]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][5]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][5]["DeleteItem"][1]["Id"] = 3311751
tSmeltingFurnaceNewItemtype_Reward[3311751][5]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][5]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][5]["RewardItem"][1]["Id"] = 4021501
tSmeltingFurnaceNewItemtype_Reward[3311751][5]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311751][5]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][5]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311751][5]["LogId"] = 12001231
-- 4021601	忍法·决斗
tSmeltingFurnaceNewItemtype_Reward[3311751][6] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][6]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][6]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][6]["DeleteItem"][1]["Id"] = 3311751
tSmeltingFurnaceNewItemtype_Reward[3311751][6]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][6]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][6]["RewardItem"][1]["Id"] = 4021601
tSmeltingFurnaceNewItemtype_Reward[3311751][6]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311751][6]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][6]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311751][6]["LogId"] = 12001231
-- 4021701	海神诅咒
tSmeltingFurnaceNewItemtype_Reward[3311751][7] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][7]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][7]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][7]["DeleteItem"][1]["Id"] = 3311751
tSmeltingFurnaceNewItemtype_Reward[3311751][7]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][7]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][7]["RewardItem"][1]["Id"] = 4021701
tSmeltingFurnaceNewItemtype_Reward[3311751][7]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311751][7]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][7]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311751][7]["LogId"] = 12001231
-- 4021801	时空传送
tSmeltingFurnaceNewItemtype_Reward[3311751][8] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][8]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][8]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][8]["DeleteItem"][1]["Id"] = 3311751
tSmeltingFurnaceNewItemtype_Reward[3311751][8]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][8]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][8]["RewardItem"][1]["Id"] = 4021801
tSmeltingFurnaceNewItemtype_Reward[3311751][8]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311751][8]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][8]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311751][8]["LogId"] = 12001231
-- 4021901	天尊降世
tSmeltingFurnaceNewItemtype_Reward[3311751][9] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][9]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][9]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][9]["DeleteItem"][1]["Id"] = 3311751
tSmeltingFurnaceNewItemtype_Reward[3311751][9]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][9]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][9]["RewardItem"][1]["Id"] = 4021901
tSmeltingFurnaceNewItemtype_Reward[3311751][9]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311751][9]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][9]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311751][9]["LogId"] = 12001231
-- 4022001	怒意狂击
tSmeltingFurnaceNewItemtype_Reward[3311751][10] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][10]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][10]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][10]["DeleteItem"][1]["Id"] = 3311751
tSmeltingFurnaceNewItemtype_Reward[3311751][10]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][10]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][10]["RewardItem"][1]["Id"] = 4022001
tSmeltingFurnaceNewItemtype_Reward[3311751][10]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311751][10]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][10]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311751][10]["LogId"] = 12001231
-- 4023001	嗜血狂潮
tSmeltingFurnaceNewItemtype_Reward[3311751][11] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][11]["DeleteItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][11]["DeleteItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][11]["DeleteItem"][1]["Id"] = 3311751
tSmeltingFurnaceNewItemtype_Reward[3311751][11]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][11]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][11]["RewardItem"][1]["Id"] = 4023001
tSmeltingFurnaceNewItemtype_Reward[3311751][11]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_Reward[3311751][11]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward[3311751][11]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward[3311751][11]["LogId"] = 12001231

-- 使用单个碎片
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"] = {}
-- 高阶黄色神纹碎片
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311744] = {}
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311744]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311744]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311744]["RewardItem"][1]["Id"] = 3311744
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311744]["RewardItem"][1]["Attr"] = "0 2"
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311744]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311744]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311744]["RewardNoNeedTip"] = 1
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311744]["LogId"] = 12001231
-- 高阶蓝色神纹碎片
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311745] = {}
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311745]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311745]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311745]["RewardItem"][1]["Id"] = 3311745
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311745]["RewardItem"][1]["Attr"] = "0 2"
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311745]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311745]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311745]["RewardNoNeedTip"] = 1
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311745]["LogId"] = 12001231
-- 高阶黄色神纹（赠）碎片
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311748] = {}
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311748]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311748]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311748]["RewardItem"][1]["Id"] = 3311748
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311748]["RewardItem"][1]["Attr"] = "0 2"
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311748]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311748]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311748]["RewardNoNeedTip"] = 1
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311748]["LogId"] = 12001231
-- 高阶蓝色神纹（赠）碎片
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311749] = {}
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311749]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311749]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311749]["RewardItem"][1]["Id"] = 3311749
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311749]["RewardItem"][1]["Attr"] = "0 2"
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311749]["RewardEffect"] = {}
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311749]["RewardEffect"]["Effect"] = "eidolon"
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311749]["RewardNoNeedTip"] = 1
tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][3311749]["LogId"] = 12001231

-- 新增+2神纹包
	-- ===策马扬鞭
	-- ===索引:tSmeltingFurnaceNewItemtype_Reward[3330938][1]
	-- ===删除:3330938,1
	tSmeltingFurnaceNewItemtype_Reward[3330938] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][1]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3330938][1]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][1]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][1]["DeleteItem"][1]["Id"] = 3330938 -- 【库】(+2)PermanentRareYellowRune(B)SelectionPack[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3330938][1]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][1]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][1]["RewardItem"][1]["Id"] = 4031402 -- QuickMount(+2)[4031402][属性:8][叠加:0][金币:0], 【表格】策马扬鞭
	tSmeltingFurnaceNewItemtype_Reward[3330938][1]["RewardItem"][1]["Attr"] = "0 1 3" -- QuickMount(+2)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3330938][1]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3330938][1]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3330938][2] = {}
	-- ===攻城掠地
	-- ===索引:tSmeltingFurnaceNewItemtype_Reward[3330938][2]
	-- ===删除:3330938,1
	tSmeltingFurnaceNewItemtype_Reward[3330938][2]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3330938][2]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][2]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][2]["DeleteItem"][1]["Id"] = 3330938 -- 【库】(+2)PermanentRareYellowRune(B)SelectionPack[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3330938][2]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][2]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][2]["RewardItem"][1]["Id"] = 4031502 -- Breakdown(+2)[4031502][属性:8][叠加:0][金币:0], 【表格】攻城掠地
	tSmeltingFurnaceNewItemtype_Reward[3330938][2]["RewardItem"][1]["Attr"] = "0 1 3" -- Breakdown(+2)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3330938][2]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3330938][2]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3330938][3] = {}
	-- ===攻城掠地
	-- ===索引:tSmeltingFurnaceNewItemtype_Reward[3330938][3]
	-- ===删除:3330938,1
	tSmeltingFurnaceNewItemtype_Reward[3330938][3]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3330938][3]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][3]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][3]["DeleteItem"][1]["Id"] = 3330938 -- 【库】(+2)PermanentRareYellowRune(B)SelectionPack[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3330938][3]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][3]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][3]["RewardItem"][1]["Id"] = 4031602 -- Barrier(+2)[4031602][属性:8][叠加:0][金币:0], 【表格】玄武护体
	tSmeltingFurnaceNewItemtype_Reward[3330938][3]["RewardItem"][1]["Attr"] = "0 1 3" -- Barrier(+2)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3330938][3]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3330938][3]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3330938][4] = {}
	-- ===神罗天征
	-- ===索引:tSmeltingFurnaceNewItemtype_Reward[3330938][4]
	-- ===删除:3330938,1
	tSmeltingFurnaceNewItemtype_Reward[3330938][4]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3330938][4]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][4]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][4]["DeleteItem"][1]["Id"] = 3330938 -- 【库】(+2)PermanentRareYellowRune(B)SelectionPack[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3330938][4]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][4]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][4]["RewardItem"][1]["Id"] = 4032002 -- Sanctity(+2)[4032002][属性:8][叠加:0][金币:0], 【表格】神罗天征
	tSmeltingFurnaceNewItemtype_Reward[3330938][4]["RewardItem"][1]["Attr"] = "0 1 3" -- Sanctity(+2)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3330938][4]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3330938][4]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3330938][5] = {}
	-- ===爆炎诀
	-- ===索引:tSmeltingFurnaceNewItemtype_Reward[3330938][5]
	-- ===删除:3330938,1
	tSmeltingFurnaceNewItemtype_Reward[3330938][5]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3330938][5]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][5]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][5]["DeleteItem"][1]["Id"] = 3330938 -- 【库】(+2)PermanentRareYellowRune(B)SelectionPack[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3330938][5]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][5]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][5]["RewardItem"][1]["Id"] = 4032102 -- FireBlast(+2)[4032102][属性:8][叠加:0][金币:0], 【表格】爆炎诀
	tSmeltingFurnaceNewItemtype_Reward[3330938][5]["RewardItem"][1]["Attr"] = "0 1 3" -- FireBlast(+2)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3330938][5]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3330938][5]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3330938][6] = {}
	-- ===清心诀
	-- ===索引:tSmeltingFurnaceNewItemtype_Reward[3330938][6]
	-- ===删除:3330938,1
	tSmeltingFurnaceNewItemtype_Reward[3330938][6]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3330938][6]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][6]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][6]["DeleteItem"][1]["Id"] = 3330938 -- 【库】(+2)PermanentRareYellowRune(B)SelectionPack[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3330938][6]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][6]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][6]["RewardItem"][1]["Id"] = 4032202 -- Serenity(+2)[4032202][属性:8][叠加:0][金币:0], 【表格】清心诀
	tSmeltingFurnaceNewItemtype_Reward[3330938][6]["RewardItem"][1]["Attr"] = "0 1 3" -- Serenity(+2)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3330938][6]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3330938][6]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3330938][7] = {}
	-- ===天衣无缝
	-- ===索引:tSmeltingFurnaceNewItemtype_Reward[3330938][7]
	-- ===删除:3330938,1
	tSmeltingFurnaceNewItemtype_Reward[3330938][7]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3330938][7]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][7]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][7]["DeleteItem"][1]["Id"] = 3330938 -- 【库】(+2)PermanentRareYellowRune(B)SelectionPack[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3330938][7]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][7]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][7]["RewardItem"][1]["Id"] = 4032302 -- Wonder(+2)[4032302][属性:8][叠加:0][金币:0], 【表格】清心诀
	tSmeltingFurnaceNewItemtype_Reward[3330938][7]["RewardItem"][1]["Attr"] = "0 1 3" -- Wonder(+2)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3330938][7]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3330938][7]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3330938][8] = {}
	-- ===祭灵诀
	-- ===索引:tSmeltingFurnaceNewItemtype_Reward[3330938][8]
	-- ===删除:3330938,1
	tSmeltingFurnaceNewItemtype_Reward[3330938][8]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3330938][8]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][8]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][8]["DeleteItem"][1]["Id"] = 3330938 -- 【库】(+2)PermanentRareYellowRune(B)SelectionPack[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3330938][8]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][8]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][8]["RewardItem"][1]["Id"] = 4032402 -- SoulChant(+2)[4032402][属性:8][叠加:0][金币:0], 【表格】祭灵诀
	tSmeltingFurnaceNewItemtype_Reward[3330938][8]["RewardItem"][1]["Attr"] = "0 1 3" -- SoulChant(+2)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3330938][8]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3330938][8]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3330938][9] = {}
	-- ===横扫千军
	-- ===索引:tSmeltingFurnaceNewItemtype_Reward[3330938][9]
	-- ===删除:3330938,1
	tSmeltingFurnaceNewItemtype_Reward[3330938][9]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3330938][9]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][9]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][9]["DeleteItem"][1]["Id"] = 3330938 -- 【库】(+2)PermanentRareYellowRune(B)SelectionPack[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3330938][9]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][9]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][9]["RewardItem"][1]["Id"] = 4032502 -- WideSwipe(+2)[4032502][属性:8][叠加:0][金币:0], 【表格】横扫千军
	tSmeltingFurnaceNewItemtype_Reward[3330938][9]["RewardItem"][1]["Attr"] = "0 1 3" -- WideSwipe(+2)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3330938][9]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3330938][9]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3330938][10] = {}
	-- ===涅槃重生
	-- ===索引:tSmeltingFurnaceNewItemtype_Reward[3330938][10]
	-- ===删除:3330938,1
	tSmeltingFurnaceNewItemtype_Reward[3330938][10]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3330938][10]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][10]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][10]["DeleteItem"][1]["Id"] = 3330938 -- 【库】(+2)PermanentRareYellowRune(B)SelectionPack[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3330938][10]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][10]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][10]["RewardItem"][1]["Id"] = 4032602 -- Nirvana(+2)[4032602][属性:8][叠加:0][金币:0], 【表格】涅槃重生
	tSmeltingFurnaceNewItemtype_Reward[3330938][10]["RewardItem"][1]["Attr"] = "0 1 3" -- Nirvana(+2)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3330938][10]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3330938][10]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3330938][11] = {}
	-- ===锋芒毕露
	-- ===索引:tSmeltingFurnaceNewItemtype_Reward[3330938][11]
	-- ===删除:3330938,1
	tSmeltingFurnaceNewItemtype_Reward[3330938][11]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3330938][11]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][11]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][11]["DeleteItem"][1]["Id"] = 3330938 -- 【库】(+2)PermanentRareYellowRune(B)SelectionPack[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3330938][11]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][11]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][11]["RewardItem"][1]["Id"] = 4032702 -- Sharpness(+2)[4032702][属性:8][叠加:0][金币:0], 【表格】锋芒毕露
	tSmeltingFurnaceNewItemtype_Reward[3330938][11]["RewardItem"][1]["Attr"] = "0 1 3" -- Sharpness(+2)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3330938][11]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3330938][11]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3330938][12] = {}
	-- ===魂兮归来
	-- ===索引:tSmeltingFurnaceNewItemtype_Reward[3330938][12]
	-- ===删除:3330938,1
	tSmeltingFurnaceNewItemtype_Reward[3330938][12]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3330938][12]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][12]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][12]["DeleteItem"][1]["Id"] = 3330938 -- 【库】(+2)PermanentRareYellowRune(B)SelectionPack[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3330938][12]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][12]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][12]["RewardItem"][1]["Id"] = 4032802 -- Evocation(+2)[4032802][属性:8][叠加:0][金币:0], 【表格】魂兮归来
	tSmeltingFurnaceNewItemtype_Reward[3330938][12]["RewardItem"][1]["Attr"] = "0 1 3" -- Evocation(+2)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3330938][12]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3330938][12]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3330938][13] = {}
	-- ===例无虚发
	-- ===索引:tSmeltingFurnaceNewItemtype_Reward[3330938][13]
	-- ===删除:3330938,1
	tSmeltingFurnaceNewItemtype_Reward[3330938][13]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3330938][13]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][13]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][13]["DeleteItem"][1]["Id"] = 3330938 -- 【库】(+2)PermanentRareYellowRune(B)SelectionPack[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3330938][13]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][13]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][13]["RewardItem"][1]["Id"] = 4032902 -- Overwhelm(+2)[4032902][属性:8][叠加:0][金币:0], 【表格】例无虚发
	tSmeltingFurnaceNewItemtype_Reward[3330938][13]["RewardItem"][1]["Attr"] = "0 1 3" -- Overwhelm(+2)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3330938][13]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3330938][13]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3330938][14] = {}
	-- ===审判
	-- ===索引:tSmeltingFurnaceNewItemtype_Reward[3330938][14]
	-- ===删除:3330938,1
	tSmeltingFurnaceNewItemtype_Reward[3330938][14]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3330938][14]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][14]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][14]["DeleteItem"][1]["Id"] = 3330938 -- 【库】(+2)PermanentRareYellowRune(B)SelectionPack[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3330938][14]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][14]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][14]["RewardItem"][1]["Id"] = 4033002 -- Judgment(+2)[4033002][属性:8][叠加:0][金币:0], 【表格】审判
	tSmeltingFurnaceNewItemtype_Reward[3330938][14]["RewardItem"][1]["Attr"] = "0 1 3" -- Judgment(+2)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3330938][14]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3330938][14]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3330938][15] = {}
	-- ===致命准星
	-- ===索引:tSmeltingFurnaceNewItemtype_Reward[3330938][15]
	-- ===删除:3330938,1
	tSmeltingFurnaceNewItemtype_Reward[3330938][15]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3330938][15]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][15]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][15]["DeleteItem"][1]["Id"] = 3330938 -- 【库】(+2)PermanentRareYellowRune(B)SelectionPack[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3330938][15]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][15]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][15]["RewardItem"][1]["Id"] = 4033302 -- DeadlySight(+2)[4033302][属性:8][叠加:0][金币:0], 【表格】致命准星
	tSmeltingFurnaceNewItemtype_Reward[3330938][15]["RewardItem"][1]["Attr"] = "0 1 3" -- DeadlySight(+2)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3330938][15]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3330938][15]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3330938][16] = {}
	-- ===会心一击
	-- ===索引:tSmeltingFurnaceNewItemtype_Reward[3330938][16]
	-- ===删除:3330938,1
	tSmeltingFurnaceNewItemtype_Reward[3330938][16]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3330938][16]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][16]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][16]["DeleteItem"][1]["Id"] = 3330938 -- 【库】(+2)PermanentRareYellowRune(B)SelectionPack[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3330938][16]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][16]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][16]["RewardItem"][1]["Id"] = 4033402 -- TacitStrike(+2)[4033402][属性:8][叠加:0][金币:0], 【表格】会心一击
	tSmeltingFurnaceNewItemtype_Reward[3330938][16]["RewardItem"][1]["Attr"] = "0 1 3" -- TacitStrike(+2)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3330938][16]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3330938][16]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3330938][17] = {}
	-- ===斗转星移
	-- ===索引:tSmeltingFurnaceNewItemtype_Reward[3330938][17]
	-- ===删除:3330938,1
	tSmeltingFurnaceNewItemtype_Reward[3330938][17]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3330938][17]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][17]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][17]["DeleteItem"][1]["Id"] = 3330938 -- 【库】(+2)PermanentRareYellowRune(B)SelectionPack[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3330938][17]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][17]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][17]["RewardItem"][1]["Id"] = 4033902 -- ReverseMagic(+2)[4033902][属性:8][叠加:0][金币:0], 【表格】斗转星移
	tSmeltingFurnaceNewItemtype_Reward[3330938][17]["RewardItem"][1]["Attr"] = "0 1 3" -- ReverseMagic(+2)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3330938][17]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3330938][17]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3330938][18] = {}
	-- ===乾坤护法
	-- ===索引:tSmeltingFurnaceNewItemtype_Reward[3330938][18]
	-- ===删除:3330938,1
	tSmeltingFurnaceNewItemtype_Reward[3330938][18]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3330938][18]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][18]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][18]["DeleteItem"][1]["Id"] = 3330938 -- 【库】(+2)PermanentRareYellowRune(B)SelectionPack[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3330938][18]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][18]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][18]["RewardItem"][1]["Id"] = 4034002 -- DivineShield(+2)[4034002][属性:8][叠加:0][金币:0], 【表格】乾坤护法
	tSmeltingFurnaceNewItemtype_Reward[3330938][18]["RewardItem"][1]["Attr"] = "0 1 3" -- DivineShield(+2)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3330938][18]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3330938][18]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3330938][19] = {}
	-- ===威慑
	-- ===索引:tSmeltingFurnaceNewItemtype_Reward[3330938][19]
	-- ===删除:3330938,1
	tSmeltingFurnaceNewItemtype_Reward[3330938][19]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3330938][19]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][19]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][19]["DeleteItem"][1]["Id"] = 3330938 -- 【库】(+2)PermanentRareYellowRune(B)SelectionPack[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3330938][19]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][19]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][19]["RewardItem"][1]["Id"] = 4034102 -- Deterrence(+2)[4034102][属性:8][叠加:0][金币:0], 【表格】威慑
	tSmeltingFurnaceNewItemtype_Reward[3330938][19]["RewardItem"][1]["Attr"] = "0 1 3" -- Deterrence(+2)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3330938][19]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3330938][19]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3330938][20] = {}
	-- ===乾坤妙法
	-- ===索引:tSmeltingFurnaceNewItemtype_Reward[3330938][20]
	-- ===删除:3330938,1
	tSmeltingFurnaceNewItemtype_Reward[3330938][20]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3330938][20]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][20]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][20]["DeleteItem"][1]["Id"] = 3330938 -- 【库】(+2)PermanentRareYellowRune(B)SelectionPack[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3330938][20]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][20]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][20]["RewardItem"][1]["Id"] = 4034202 -- Nature`sChant(+2)[4034202][属性:8][叠加:0][金币:0], 【表格】乾坤妙法
	tSmeltingFurnaceNewItemtype_Reward[3330938][20]["RewardItem"][1]["Attr"] = "0 1 3" -- Nature`sChant(+2)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3330938][20]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3330938][20]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3330938][21] = {}
	-- ===罡气护体
	-- ===索引:tSmeltingFurnaceNewItemtype_Reward[3330938][21]
	-- ===删除:3330938,1
	tSmeltingFurnaceNewItemtype_Reward[3330938][21]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3330938][21]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][21]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][21]["DeleteItem"][1]["Id"] = 3330938 -- 【库】(+2)PermanentRareYellowRune(B)SelectionPack[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3330938][21]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][21]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][21]["RewardItem"][1]["Id"] = 4034302 -- JusticeGuard(+2)[4034302][属性:8][叠加:0][金币:0], 【表格】罡气护体
	tSmeltingFurnaceNewItemtype_Reward[3330938][21]["RewardItem"][1]["Attr"] = "0 1 3" -- JusticeGuard(+2)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3330938][21]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3330938][21]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3330938][22] = {}
	-- ===沧澜破
	-- ===索引:tSmeltingFurnaceNewItemtype_Reward[3330938][22]
	-- ===删除:3330938,1
	tSmeltingFurnaceNewItemtype_Reward[3330938][22]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3330938][22]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][22]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][22]["DeleteItem"][1]["Id"] = 3330938 -- 【库】(+2)PermanentRareYellowRune(B)SelectionPack[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3330938][22]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][22]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][22]["RewardItem"][1]["Id"] = 4034402 -- SurgingForce(+2)[4034402][属性:8][叠加:0][金币:0], 【表格】沧澜破
	tSmeltingFurnaceNewItemtype_Reward[3330938][22]["RewardItem"][1]["Attr"] = "0 1 3" -- SurgingForce(+2)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3330938][22]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3330938][22]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3330938][23] = {}
	-- ===妙手回春
	-- ===索引:tSmeltingFurnaceNewItemtype_Reward[3330938][23]
	-- ===删除:3330938,1
	tSmeltingFurnaceNewItemtype_Reward[3330938][23]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3330938][23]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][23]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][23]["DeleteItem"][1]["Id"] = 3330938 -- 【库】(+2)PermanentRareYellowRune(B)SelectionPack[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3330938][23]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][23]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][23]["RewardItem"][1]["Id"] = 4034502 -- MiracleTouch(+2)[4034502][属性:8][叠加:0][金币:0], 【表格】妙手回春
	tSmeltingFurnaceNewItemtype_Reward[3330938][23]["RewardItem"][1]["Attr"] = "0 1 3" -- MiracleTouch(+2)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3330938][23]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3330938][23]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3330938][24] = {}
	-- ===碎魔屏障
	-- ===索引:tSmeltingFurnaceNewItemtype_Reward[3330938][24]
	-- ===删除:3330938,1
	tSmeltingFurnaceNewItemtype_Reward[3330938][24]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3330938][24]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][24]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][24]["DeleteItem"][1]["Id"] = 3330938 -- 【库】(+2)PermanentRareYellowRune(B)SelectionPack[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3330938][24]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][24]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][24]["RewardItem"][1]["Id"] = 4034602 -- CurseBlock(+2)[4034602][属性:8][叠加:0][金币:0], 【表格】碎魔屏障
	tSmeltingFurnaceNewItemtype_Reward[3330938][24]["RewardItem"][1]["Attr"] = "0 1 3" -- CurseBlock(+2)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3330938][24]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3330938][24]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3330938][25] = {}
	-- ===天地化盾
	-- ===索引:tSmeltingFurnaceNewItemtype_Reward[3330938][25]
	-- ===删除:3330938,1
	tSmeltingFurnaceNewItemtype_Reward[3330938][25]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3330938][25]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][25]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][25]["DeleteItem"][1]["Id"] = 3330938 -- 【库】(+2)PermanentRareYellowRune(B)SelectionPack[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3330938][25]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][25]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][25]["RewardItem"][1]["Id"] = 4034702 -- UniversalShield(+2)[4034702][属性:8][叠加:0][金币:0], 【表格】天地化盾
	tSmeltingFurnaceNewItemtype_Reward[3330938][25]["RewardItem"][1]["Attr"] = "0 1 3" -- UniversalShield(+2)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3330938][25]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3330938][25]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3330938][26] = {}
	-- ===碎玄元
	-- ===索引:tSmeltingFurnaceNewItemtype_Reward[3330938][26]
	-- ===删除:3330938,1
	tSmeltingFurnaceNewItemtype_Reward[3330938][26]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3330938][26]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][26]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][26]["DeleteItem"][1]["Id"] = 3330938 -- 【库】(+2)PermanentRareYellowRune(B)SelectionPack[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3330938][26]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][26]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][26]["RewardItem"][1]["Id"] = 4034802 -- TortoiseBreaker(+2)[4034802][属性:8][叠加:0][金币:0], 【表格】碎玄元
	tSmeltingFurnaceNewItemtype_Reward[3330938][26]["RewardItem"][1]["Attr"] = "0 1 3" -- TortoiseBreaker(+2)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3330938][26]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3330938][26]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3330938][27] = {}
	-- ===紫气东来
	-- ===索引:tSmeltingFurnaceNewItemtype_Reward[3330938][27]
	-- ===删除:3330938,1
	tSmeltingFurnaceNewItemtype_Reward[3330938][27]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3330938][27]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][27]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][27]["DeleteItem"][1]["Id"] = 3330938 -- 【库】(+2)PermanentRareYellowRune(B)SelectionPack[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3330938][27]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][27]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][27]["RewardItem"][1]["Id"] = 4035202 -- VioletShield(+2)[4035202][属性:8][叠加:0][金币:0], 【表格】紫气东来
	tSmeltingFurnaceNewItemtype_Reward[3330938][27]["RewardItem"][1]["Attr"] = "0 1 3" -- VioletShield(+2)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3330938][27]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3330938][27]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingFurnaceNewItemtype_Reward[3330938][28] = {}
	-- ===天行有常
	-- ===索引:tSmeltingFurnaceNewItemtype_Reward[3330938][28]
	-- ===删除:3330938,1
	tSmeltingFurnaceNewItemtype_Reward[3330938][28]["LogId"] = 12001231
	tSmeltingFurnaceNewItemtype_Reward[3330938][28]["DeleteItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][28]["DeleteItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][28]["DeleteItem"][1]["Id"] = 3330938 -- 【库】(+2)PermanentRareYellowRune(B)SelectionPack[属性:9]
	tSmeltingFurnaceNewItemtype_Reward[3330938][28]["RewardItem"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][28]["RewardItem"][1] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][28]["RewardItem"][1]["Id"] = 4035102 -- NatureShield(+2)[4035102][属性:8][叠加:0][金币:0], 【表格】天行有常
	tSmeltingFurnaceNewItemtype_Reward[3330938][28]["RewardItem"][1]["Attr"] = "0 1 3" -- NatureShield(+2)（赠）*1
	tSmeltingFurnaceNewItemtype_Reward[3330938][28]["RewardEffect"] = {}
	tSmeltingFurnaceNewItemtype_Reward[3330938][28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingFurnaceNewItemtype_Reward[3330938][28]["RewardEffect"]["Effect"] = "angelwing"



-- 随机概率
local tSmeltingFurnaceNewItemtype_RandomReward = {}
-- 宝石碎片
tSmeltingFurnaceNewItemtype_RandomReward[3311743] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743]["ItemChanceSum"] = 10000
-- 普通玄元宝石	1.500%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][1]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][1]["ItemChance"] = 150
tSmeltingFurnaceNewItemtype_RandomReward[3311743][1]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][1]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][1]["RewardItem"][1]["Id"] = 700071
tSmeltingFurnaceNewItemtype_RandomReward[3311743][1]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][1]["LogId"] = 12001231
-- 普通地灵宝石	1.500%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][2] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][2]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][2]["ItemChance"] = 150
tSmeltingFurnaceNewItemtype_RandomReward[3311743][2]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][2]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][2]["RewardItem"][1]["Id"] = 700121
tSmeltingFurnaceNewItemtype_RandomReward[3311743][2]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][2]["LogId"] = 12001231
-- 普通天怒宝石	1.500%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][3] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][3]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][3]["ItemChance"] = 150
tSmeltingFurnaceNewItemtype_RandomReward[3311743][3]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][3]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][3]["RewardItem"][1]["Id"] = 700101
tSmeltingFurnaceNewItemtype_RandomReward[3311743][3]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][3]["LogId"] = 12001231
-- 普通金麟宝石	8.000%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][4] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][4]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][4]["ItemChance"] = 800
tSmeltingFurnaceNewItemtype_RandomReward[3311743][4]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][4]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][4]["RewardItem"][1]["Id"] = 700041
tSmeltingFurnaceNewItemtype_RandomReward[3311743][4]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][4]["LogId"] = 12001231
-- 普通青虹宝石	8.000%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][5] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][5]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][5]["ItemChance"] = 800
tSmeltingFurnaceNewItemtype_RandomReward[3311743][5]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][5]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][5]["RewardItem"][1]["Id"] = 700031
tSmeltingFurnaceNewItemtype_RandomReward[3311743][5]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][5]["LogId"] = 12001231
-- 普通惊鸿宝石	8.000%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][6] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][6]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][6]["ItemChance"] = 800
tSmeltingFurnaceNewItemtype_RandomReward[3311743][6]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][6]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][6]["RewardItem"][1]["Id"] = 700021
tSmeltingFurnaceNewItemtype_RandomReward[3311743][6]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][6]["LogId"] = 12001231
-- 普通龙恨宝石	5.750%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][7] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][7]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][7]["ItemChance"] = 575
tSmeltingFurnaceNewItemtype_RandomReward[3311743][7]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][7]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][7]["RewardItem"][1]["Id"] = 700011
tSmeltingFurnaceNewItemtype_RandomReward[3311743][7]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][7]["LogId"] = 12001231
-- 普通凤吟宝石	8.000%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][8] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][8]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][8]["ItemChance"] = 800
tSmeltingFurnaceNewItemtype_RandomReward[3311743][8]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][8]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][8]["RewardItem"][1]["Id"] = 700001
tSmeltingFurnaceNewItemtype_RandomReward[3311743][8]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][8]["LogId"] = 12001231
-- 普通紫霞宝石	8.000%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][9] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][9]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][9]["ItemChance"] = 800
tSmeltingFurnaceNewItemtype_RandomReward[3311743][9]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][9]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][9]["RewardItem"][1]["Id"] = 700051
tSmeltingFurnaceNewItemtype_RandomReward[3311743][9]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][9]["LogId"] = 12001231
-- 普通明月宝石	8.000%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][10] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][10]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][10]["ItemChance"] = 800
tSmeltingFurnaceNewItemtype_RandomReward[3311743][10]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][10]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][10]["RewardItem"][1]["Id"] = 700061
tSmeltingFurnaceNewItemtype_RandomReward[3311743][10]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][10]["LogId"] = 12001231
-- 良品玄元宝石	0.700%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][11] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][11]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][11]["ItemChance"] = 70
tSmeltingFurnaceNewItemtype_RandomReward[3311743][11]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][11]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][11]["RewardItem"][1]["Id"] = 700072
tSmeltingFurnaceNewItemtype_RandomReward[3311743][11]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][11]["LogId"] = 12001231
-- 良品地灵宝石	0.700%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][12] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][12]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][12]["ItemChance"] = 70
tSmeltingFurnaceNewItemtype_RandomReward[3311743][12]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][12]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][12]["RewardItem"][1]["Id"] = 700122
tSmeltingFurnaceNewItemtype_RandomReward[3311743][12]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][12]["LogId"] = 12001231
-- 良品天怒宝石	0.700%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][13] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][13]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][13]["ItemChance"] = 70
tSmeltingFurnaceNewItemtype_RandomReward[3311743][13]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][13]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][13]["RewardItem"][1]["Id"] = 700102
tSmeltingFurnaceNewItemtype_RandomReward[3311743][13]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][13]["LogId"] = 12001231
-- 良品金麟宝石	5.000%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][14] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][14]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][14]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311743][14]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][14]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][14]["RewardItem"][1]["Id"] = 700042
tSmeltingFurnaceNewItemtype_RandomReward[3311743][14]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][14]["LogId"] = 12001231
-- 良品青虹宝石	5.000%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][15] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][15]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][15]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311743][15]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][15]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][15]["RewardItem"][1]["Id"] = 700032
tSmeltingFurnaceNewItemtype_RandomReward[3311743][15]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][15]["LogId"] = 12001231
-- 良品惊鸿宝石	5.000%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][16] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][16]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][16]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311743][16]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][16]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][16]["RewardItem"][1]["Id"] = 700022
tSmeltingFurnaceNewItemtype_RandomReward[3311743][16]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][16]["LogId"] = 12001231
-- 良品龙恨宝石	3.000%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][17] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][17]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][17]["ItemChance"] = 300
tSmeltingFurnaceNewItemtype_RandomReward[3311743][17]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][17]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][17]["RewardItem"][1]["Id"] = 700012
tSmeltingFurnaceNewItemtype_RandomReward[3311743][17]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][17]["LogId"] = 12001231
-- 良品凤吟宝石	5.000%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][18] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][18]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][18]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311743][18]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][18]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][18]["RewardItem"][1]["Id"] = 700002
tSmeltingFurnaceNewItemtype_RandomReward[3311743][18]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][18]["LogId"] = 12001231
-- 良品紫霞宝石	5.000%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][19] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][19]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][19]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311743][19]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][19]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][19]["RewardItem"][1]["Id"] = 700052
tSmeltingFurnaceNewItemtype_RandomReward[3311743][19]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][19]["LogId"] = 12001231
-- 良品明月宝石	5.000%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][20] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][20]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][20]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311743][20]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][20]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][20]["RewardItem"][1]["Id"] = 700062
tSmeltingFurnaceNewItemtype_RandomReward[3311743][20]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][20]["LogId"] = 12001231
-- 优质玄元宝石	0.050%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][21] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][21]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][21]["ItemChance"] = 5
tSmeltingFurnaceNewItemtype_RandomReward[3311743][21]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][21]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][21]["RewardItem"][1]["Id"] = 700073
tSmeltingFurnaceNewItemtype_RandomReward[3311743][21]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][21]["LogId"] = 12001231
-- 优质地灵宝石	0.050%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][22] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][22]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][22]["ItemChance"] = 5
tSmeltingFurnaceNewItemtype_RandomReward[3311743][22]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][22]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][22]["RewardItem"][1]["Id"] = 700123
tSmeltingFurnaceNewItemtype_RandomReward[3311743][22]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][22]["LogId"] = 12001231
-- 优质天怒宝石	0.050%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][23] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][23]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][23]["ItemChance"] = 5
tSmeltingFurnaceNewItemtype_RandomReward[3311743][23]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][23]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][23]["RewardItem"][1]["Id"] = 700103
tSmeltingFurnaceNewItemtype_RandomReward[3311743][23]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][23]["LogId"] = 12001231
-- 优质金麟宝石	1.000%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][24] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][24]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][24]["ItemChance"] = 100
tSmeltingFurnaceNewItemtype_RandomReward[3311743][24]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][24]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][24]["RewardItem"][1]["Id"] = 700043
tSmeltingFurnaceNewItemtype_RandomReward[3311743][24]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][24]["LogId"] = 12001231
-- 优质青虹宝石	1.000%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][25] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][25]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][25]["ItemChance"] = 100
tSmeltingFurnaceNewItemtype_RandomReward[3311743][25]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][25]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][25]["RewardItem"][1]["Id"] = 700033
tSmeltingFurnaceNewItemtype_RandomReward[3311743][25]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][25]["LogId"] = 12001231
-- 优质惊鸿宝石	1.000%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][26] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][26]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][26]["ItemChance"] = 100
tSmeltingFurnaceNewItemtype_RandomReward[3311743][26]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][26]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][26]["RewardItem"][1]["Id"] = 700023
tSmeltingFurnaceNewItemtype_RandomReward[3311743][26]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][26]["LogId"] = 12001231
-- 优质龙恨宝石	0.500%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][27] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][27]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][27]["ItemChance"] = 50
tSmeltingFurnaceNewItemtype_RandomReward[3311743][27]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][27]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][27]["RewardItem"][1]["Id"] = 700013
tSmeltingFurnaceNewItemtype_RandomReward[3311743][27]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][27]["LogId"] = 12001231
-- 优质凤吟宝石	1.000%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][28] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][28]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][28]["ItemChance"] = 100
tSmeltingFurnaceNewItemtype_RandomReward[3311743][28]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][28]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][28]["RewardItem"][1]["Id"] = 700003
tSmeltingFurnaceNewItemtype_RandomReward[3311743][28]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][28]["LogId"] = 12001231
-- 优质紫霞宝石	1.000%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][29] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][29]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][29]["ItemChance"] = 100
tSmeltingFurnaceNewItemtype_RandomReward[3311743][29]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][29]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][29]["RewardItem"][1]["Id"] = 700053
tSmeltingFurnaceNewItemtype_RandomReward[3311743][29]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][29]["LogId"] = 12001231
-- 优质明月宝石	1.000%
tSmeltingFurnaceNewItemtype_RandomReward[3311743][30] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][30]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311743][30]["ItemChance"] = 100
tSmeltingFurnaceNewItemtype_RandomReward[3311743][30]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][30]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311743][30]["RewardItem"][1]["Id"] = 700063
tSmeltingFurnaceNewItemtype_RandomReward[3311743][30]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311743][30]["LogId"] = 12001231

-- 高阶神纹黄色神纹碎片
tSmeltingFurnaceNewItemtype_RandomReward[3311744] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744]["ItemChanceSum"] = 10000
-- 4032001	【神罗天尊】	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311744][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][1]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311744][1]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311744][1]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][1]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][1]["RewardItem"][1]["Id"] = 4032001
tSmeltingFurnaceNewItemtype_RandomReward[3311744][1]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311744][1]["LogId"] = 12001231
-- 4032101	【爆炎诀】	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311744][2] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][2]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311744][2]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311744][2]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][2]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][2]["RewardItem"][1]["Id"] = 4032101
tSmeltingFurnaceNewItemtype_RandomReward[3311744][2]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311744][2]["LogId"] = 12001231
-- 4032201	【清心决】	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311744][3] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][3]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311744][3]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311744][3]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][3]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][3]["RewardItem"][1]["Id"] = 4032201
tSmeltingFurnaceNewItemtype_RandomReward[3311744][3]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311744][3]["LogId"] = 12001231
-- 4032301	【天衣无缝】	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311744][4] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][4]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311744][4]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311744][4]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][4]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][4]["RewardItem"][1]["Id"] = 4032301
tSmeltingFurnaceNewItemtype_RandomReward[3311744][4]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311744][4]["LogId"] = 12001231
-- 4032401	【祭灵诀】	1.5%
tSmeltingFurnaceNewItemtype_RandomReward[3311744][5] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][5]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311744][5]["ItemChance"] = 150
tSmeltingFurnaceNewItemtype_RandomReward[3311744][5]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][5]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][5]["RewardItem"][1]["Id"] = 4032401
tSmeltingFurnaceNewItemtype_RandomReward[3311744][5]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311744][5]["LogId"] = 12001231
-- 4032501	横扫千军	1.5%
tSmeltingFurnaceNewItemtype_RandomReward[3311744][6] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][6]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311744][6]["ItemChance"] = 150
tSmeltingFurnaceNewItemtype_RandomReward[3311744][6]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][6]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][6]["RewardItem"][1]["Id"] = 4032501
tSmeltingFurnaceNewItemtype_RandomReward[3311744][6]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311744][6]["LogId"] = 12001231
-- 4032601	涅槃重生	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311744][7] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][7]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311744][7]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311744][7]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][7]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][7]["RewardItem"][1]["Id"] = 4032601
tSmeltingFurnaceNewItemtype_RandomReward[3311744][7]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311744][7]["LogId"] = 12001231
-- 4032701	锋芒毕露	1.5%
tSmeltingFurnaceNewItemtype_RandomReward[3311744][8] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][8]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311744][8]["ItemChance"] = 150
tSmeltingFurnaceNewItemtype_RandomReward[3311744][8]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][8]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][8]["RewardItem"][1]["Id"] = 4032701
tSmeltingFurnaceNewItemtype_RandomReward[3311744][8]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311744][8]["LogId"] = 12001231
-- 4032801	魂兮归来	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311744][9] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][9]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311744][9]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311744][9]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][9]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][9]["RewardItem"][1]["Id"] = 4032801
tSmeltingFurnaceNewItemtype_RandomReward[3311744][9]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311744][9]["LogId"] = 12001231
-- 4031601	玄武护体	1.5%
tSmeltingFurnaceNewItemtype_RandomReward[3311744][10] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][10]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311744][10]["ItemChance"] = 150
tSmeltingFurnaceNewItemtype_RandomReward[3311744][10]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][10]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][10]["RewardItem"][1]["Id"] = 4031601
tSmeltingFurnaceNewItemtype_RandomReward[3311744][10]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311744][10]["LogId"] = 12001231
-- 4031501	攻城掠地	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311744][11] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][11]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311744][11]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311744][11]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][11]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][11]["RewardItem"][1]["Id"] = 4031501
tSmeltingFurnaceNewItemtype_RandomReward[3311744][11]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311744][11]["LogId"] = 12001231
-- 4031401	策马扬鞭	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311744][12] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][12]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311744][12]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311744][12]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][12]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][12]["RewardItem"][1]["Id"] = 4031401
tSmeltingFurnaceNewItemtype_RandomReward[3311744][12]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311744][12]["LogId"] = 12001231
-- 4034001	乾坤护法	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311744][13] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][13]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311744][13]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311744][13]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][13]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][13]["RewardItem"][1]["Id"] = 4034001
tSmeltingFurnaceNewItemtype_RandomReward[3311744][13]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311744][13]["LogId"] = 12001231
-- 4033901	斗转星移	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311744][14] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][14]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311744][14]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311744][14]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][14]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][14]["RewardItem"][1]["Id"] = 4033901
tSmeltingFurnaceNewItemtype_RandomReward[3311744][14]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311744][14]["LogId"] = 12001231
-- 4033401	会心一击	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311744][15] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][15]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311744][15]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311744][15]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][15]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][15]["RewardItem"][1]["Id"] = 4033401
tSmeltingFurnaceNewItemtype_RandomReward[3311744][15]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311744][15]["LogId"] = 12001231
-- 4034101	威慑	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311744][16] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][16]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311744][16]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311744][16]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][16]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][16]["RewardItem"][1]["Id"] = 4034101
tSmeltingFurnaceNewItemtype_RandomReward[3311744][16]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311744][16]["LogId"] = 12001231
-- 4033301	致命准星	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311744][17] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][17]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311744][17]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311744][17]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][17]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][17]["RewardItem"][1]["Id"] = 4033301
tSmeltingFurnaceNewItemtype_RandomReward[3311744][17]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311744][17]["LogId"] = 12001231
-- 4032901	审判	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311744][18] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][18]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311744][18]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311744][18]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][18]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][18]["RewardItem"][1]["Id"] = 4032901
tSmeltingFurnaceNewItemtype_RandomReward[3311744][18]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311744][18]["LogId"] = 12001231
-- 4033001	例无虚发	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311744][19] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][19]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311744][19]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311744][19]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][19]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][19]["RewardItem"][1]["Id"] = 4033001
tSmeltingFurnaceNewItemtype_RandomReward[3311744][19]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311744][19]["LogId"] = 12001231
-- 4034201	乾坤妙法(+1)	2.75%
tSmeltingFurnaceNewItemtype_RandomReward[3311744][20] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][20]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311744][20]["ItemChance"] = 275
tSmeltingFurnaceNewItemtype_RandomReward[3311744][20]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][20]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][20]["RewardItem"][1]["Id"] = 4034201
tSmeltingFurnaceNewItemtype_RandomReward[3311744][20]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311744][20]["LogId"] = 12001231
-- 4034301	罡气护体(+1)	2.75%
tSmeltingFurnaceNewItemtype_RandomReward[3311744][21] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][21]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311744][21]["ItemChance"] = 275
tSmeltingFurnaceNewItemtype_RandomReward[3311744][21]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][21]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][21]["RewardItem"][1]["Id"] = 4034301
tSmeltingFurnaceNewItemtype_RandomReward[3311744][21]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311744][21]["LogId"] = 12001231
-- 4034401	沧澜破(+1)	2.75%
tSmeltingFurnaceNewItemtype_RandomReward[3311744][22] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][22]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311744][22]["ItemChance"] = 275
tSmeltingFurnaceNewItemtype_RandomReward[3311744][22]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][22]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][22]["RewardItem"][1]["Id"] = 4034401
tSmeltingFurnaceNewItemtype_RandomReward[3311744][22]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311744][22]["LogId"] = 12001231
-- 4034501	妙手回春(+1)	2.750%
tSmeltingFurnaceNewItemtype_RandomReward[3311744][23] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][23]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311744][23]["ItemChance"] = 275
tSmeltingFurnaceNewItemtype_RandomReward[3311744][23]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][23]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][23]["RewardItem"][1]["Id"] = 4034501
tSmeltingFurnaceNewItemtype_RandomReward[3311744][23]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311744][23]["LogId"] = 12001231
-- 4034601	最终法伤免疫(+1)	2.750%
tSmeltingFurnaceNewItemtype_RandomReward[3311744][24] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][24]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311744][24]["ItemChance"] = 275
tSmeltingFurnaceNewItemtype_RandomReward[3311744][24]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][24]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][24]["RewardItem"][1]["Id"] = 4034601
tSmeltingFurnaceNewItemtype_RandomReward[3311744][24]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311744][24]["LogId"] = 12001231
-- 4034701	最终物伤免疫(+1)	2.750%
tSmeltingFurnaceNewItemtype_RandomReward[3311744][25] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][25]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311744][25]["ItemChance"] = 275
tSmeltingFurnaceNewItemtype_RandomReward[3311744][25]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][25]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][25]["RewardItem"][1]["Id"] = 4034701
tSmeltingFurnaceNewItemtype_RandomReward[3311744][25]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311744][25]["LogId"] = 12001231
-- 4034801	碎玄元(+1)	2.50%
tSmeltingFurnaceNewItemtype_RandomReward[3311744][26] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][26]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311744][26]["ItemChance"] = 250
tSmeltingFurnaceNewItemtype_RandomReward[3311744][26]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][26]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][26]["RewardItem"][1]["Id"] = 4034801
tSmeltingFurnaceNewItemtype_RandomReward[3311744][26]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311744][26]["LogId"] = 12001231
-- 4034901	不死之身(+1)	0%
tSmeltingFurnaceNewItemtype_RandomReward[3311744][27] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][27]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311744][27]["ItemChance"] = 0
tSmeltingFurnaceNewItemtype_RandomReward[3311744][27]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][27]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311744][27]["RewardItem"][1]["Id"] = 4034901
tSmeltingFurnaceNewItemtype_RandomReward[3311744][27]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311744][27]["LogId"] = 12001231


-- 高阶神纹蓝色神纹碎片
tSmeltingFurnaceNewItemtype_RandomReward[3311745] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745]["ItemChanceSum"] = 10000
-- 4021101	子母雷旋	9.0%
tSmeltingFurnaceNewItemtype_RandomReward[3311745][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][1]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311745][1]["ItemChance"] = 900
tSmeltingFurnaceNewItemtype_RandomReward[3311745][1]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][1]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][1]["RewardItem"][1]["Id"] = 4021101
tSmeltingFurnaceNewItemtype_RandomReward[3311745][1]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311745][1]["LogId"] = 12001231
-- 4021201	碎星辰	9.1%
tSmeltingFurnaceNewItemtype_RandomReward[3311745][2] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][2]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311745][2]["ItemChance"] = 910
tSmeltingFurnaceNewItemtype_RandomReward[3311745][2]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][2]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][2]["RewardItem"][1]["Id"] = 4021201
tSmeltingFurnaceNewItemtype_RandomReward[3311745][2]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311745][2]["LogId"] = 12001231
-- 4021301	龙影冲拳	9.1%
tSmeltingFurnaceNewItemtype_RandomReward[3311745][3] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][3]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311745][3]["ItemChance"] = 910
tSmeltingFurnaceNewItemtype_RandomReward[3311745][3]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][3]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][3]["RewardItem"][1]["Id"] = 4021301
tSmeltingFurnaceNewItemtype_RandomReward[3311745][3]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311745][3]["LogId"] = 12001231
-- 4021401	反击风暴	9.1%
tSmeltingFurnaceNewItemtype_RandomReward[3311745][4] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][4]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311745][4]["ItemChance"] = 910
tSmeltingFurnaceNewItemtype_RandomReward[3311745][4]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][4]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][4]["RewardItem"][1]["Id"] = 4021401
tSmeltingFurnaceNewItemtype_RandomReward[3311745][4]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311745][4]["LogId"] = 12001231
-- 4021501	星飞云散	9.1%
tSmeltingFurnaceNewItemtype_RandomReward[3311745][5] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][5]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311745][5]["ItemChance"] = 910
tSmeltingFurnaceNewItemtype_RandomReward[3311745][5]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][5]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][5]["RewardItem"][1]["Id"] = 4021501
tSmeltingFurnaceNewItemtype_RandomReward[3311745][5]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311745][5]["LogId"] = 12001231
-- 4021601	忍法·决斗	9.1%
tSmeltingFurnaceNewItemtype_RandomReward[3311745][6] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][6]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311745][6]["ItemChance"] = 910
tSmeltingFurnaceNewItemtype_RandomReward[3311745][6]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][6]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][6]["RewardItem"][1]["Id"] = 4021601
tSmeltingFurnaceNewItemtype_RandomReward[3311745][6]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311745][6]["LogId"] = 12001231
-- 4021701	海神诅咒	9.1%
tSmeltingFurnaceNewItemtype_RandomReward[3311745][7] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][7]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311745][7]["ItemChance"] = 910
tSmeltingFurnaceNewItemtype_RandomReward[3311745][7]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][7]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][7]["RewardItem"][1]["Id"] = 4021701
tSmeltingFurnaceNewItemtype_RandomReward[3311745][7]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311745][7]["LogId"] = 12001231
-- 4021801	时空传送	9.1%
tSmeltingFurnaceNewItemtype_RandomReward[3311745][8] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][8]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311745][8]["ItemChance"] = 910
tSmeltingFurnaceNewItemtype_RandomReward[3311745][8]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][8]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][8]["RewardItem"][1]["Id"] = 4021801
tSmeltingFurnaceNewItemtype_RandomReward[3311745][8]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311745][8]["LogId"] = 12001231
-- 4021901	天尊降世	9.1%
tSmeltingFurnaceNewItemtype_RandomReward[3311745][9] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][9]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311745][9]["ItemChance"] = 910
tSmeltingFurnaceNewItemtype_RandomReward[3311745][9]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][9]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][9]["RewardItem"][1]["Id"] = 4021901
tSmeltingFurnaceNewItemtype_RandomReward[3311745][9]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311745][9]["LogId"] = 12001231
-- 4022001	怒意狂击	9.1%
tSmeltingFurnaceNewItemtype_RandomReward[3311745][10] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][10]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311745][10]["ItemChance"] = 910
tSmeltingFurnaceNewItemtype_RandomReward[3311745][10]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][10]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][10]["RewardItem"][1]["Id"] = 4022001
tSmeltingFurnaceNewItemtype_RandomReward[3311745][10]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311745][10]["LogId"] = 12001231
-- 4023001	嗜血狂潮	9.1%
tSmeltingFurnaceNewItemtype_RandomReward[3311745][11] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][11]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311745][11]["ItemChance"] = 910
tSmeltingFurnaceNewItemtype_RandomReward[3311745][11]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][11]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311745][11]["RewardItem"][1]["Id"] = 4023001
tSmeltingFurnaceNewItemtype_RandomReward[3311745][11]["RewardItem"][1]["Attr"] = "0 1"
tSmeltingFurnaceNewItemtype_RandomReward[3311745][11]["LogId"] = 12001231

-- 神纹赠
-- 高阶神纹黄色神纹碎片
tSmeltingFurnaceNewItemtype_RandomReward[3311748] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748]["ItemChanceSum"] = 10000
-- 4032001	【神罗天尊】	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311748][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][1]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311748][1]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311748][1]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][1]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][1]["RewardItem"][1]["Id"] = 4032001
tSmeltingFurnaceNewItemtype_RandomReward[3311748][1]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311748][1]["LogId"] = 12001231
-- 4032101	【爆炎诀】	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311748][2] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][2]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311748][2]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311748][2]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][2]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][2]["RewardItem"][1]["Id"] = 4032101
tSmeltingFurnaceNewItemtype_RandomReward[3311748][2]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311748][2]["LogId"] = 12001231
-- 4032201	【清心决】	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311748][3] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][3]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311748][3]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311748][3]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][3]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][3]["RewardItem"][1]["Id"] = 4032201
tSmeltingFurnaceNewItemtype_RandomReward[3311748][3]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311748][3]["LogId"] = 12001231
-- 4032301	【天衣无缝】	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311748][4] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][4]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311748][4]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311748][4]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][4]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][4]["RewardItem"][1]["Id"] = 4032301
tSmeltingFurnaceNewItemtype_RandomReward[3311748][4]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311748][4]["LogId"] = 12001231
-- 4032401	【祭灵诀】	1.5%
tSmeltingFurnaceNewItemtype_RandomReward[3311748][5] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][5]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311748][5]["ItemChance"] = 150
tSmeltingFurnaceNewItemtype_RandomReward[3311748][5]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][5]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][5]["RewardItem"][1]["Id"] = 4032401
tSmeltingFurnaceNewItemtype_RandomReward[3311748][5]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311748][5]["LogId"] = 12001231
-- 4032501	横扫千军	1.5%
tSmeltingFurnaceNewItemtype_RandomReward[3311748][6] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][6]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311748][6]["ItemChance"] = 150
tSmeltingFurnaceNewItemtype_RandomReward[3311748][6]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][6]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][6]["RewardItem"][1]["Id"] = 4032501
tSmeltingFurnaceNewItemtype_RandomReward[3311748][6]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311748][6]["LogId"] = 12001231
-- 4032601	涅槃重生	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311748][7] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][7]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311748][7]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311748][7]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][7]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][7]["RewardItem"][1]["Id"] = 4032601
tSmeltingFurnaceNewItemtype_RandomReward[3311748][7]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311748][7]["LogId"] = 12001231
-- 4032701	锋芒毕露	1.5%
tSmeltingFurnaceNewItemtype_RandomReward[3311748][8] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][8]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311748][8]["ItemChance"] = 150
tSmeltingFurnaceNewItemtype_RandomReward[3311748][8]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][8]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][8]["RewardItem"][1]["Id"] = 4032701
tSmeltingFurnaceNewItemtype_RandomReward[3311748][8]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311748][8]["LogId"] = 12001231
-- 4032801	魂兮归来	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311748][9] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][9]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311748][9]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311748][9]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][9]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][9]["RewardItem"][1]["Id"] = 4032801
tSmeltingFurnaceNewItemtype_RandomReward[3311748][9]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311748][9]["LogId"] = 12001231
-- 4031601	玄武护体	1.5%
tSmeltingFurnaceNewItemtype_RandomReward[3311748][10] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][10]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311748][10]["ItemChance"] = 150
tSmeltingFurnaceNewItemtype_RandomReward[3311748][10]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][10]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][10]["RewardItem"][1]["Id"] = 4031601
tSmeltingFurnaceNewItemtype_RandomReward[3311748][10]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311748][10]["LogId"] = 12001231
-- 4031501	攻城掠地	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311748][11] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][11]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311748][11]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311748][11]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][11]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][11]["RewardItem"][1]["Id"] = 4031501
tSmeltingFurnaceNewItemtype_RandomReward[3311748][11]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311748][11]["LogId"] = 12001231
-- 4031401	策马扬鞭	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311748][12] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][12]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311748][12]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311748][12]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][12]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][12]["RewardItem"][1]["Id"] = 4031401
tSmeltingFurnaceNewItemtype_RandomReward[3311748][12]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311748][12]["LogId"] = 12001231
-- 4034001	乾坤护法	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311748][13] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][13]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311748][13]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311748][13]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][13]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][13]["RewardItem"][1]["Id"] = 4034001
tSmeltingFurnaceNewItemtype_RandomReward[3311748][13]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311748][13]["LogId"] = 12001231
-- 4033901	斗转星移	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311748][14] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][14]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311748][14]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311748][14]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][14]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][14]["RewardItem"][1]["Id"] = 4033901
tSmeltingFurnaceNewItemtype_RandomReward[3311748][14]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311748][14]["LogId"] = 12001231
-- 4033401	会心一击	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311748][15] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][15]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311748][15]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311748][15]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][15]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][15]["RewardItem"][1]["Id"] = 4033401
tSmeltingFurnaceNewItemtype_RandomReward[3311748][15]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311748][15]["LogId"] = 12001231
-- 4034101	威慑	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311748][16] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][16]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311748][16]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311748][16]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][16]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][16]["RewardItem"][1]["Id"] = 4034101
tSmeltingFurnaceNewItemtype_RandomReward[3311748][16]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311748][16]["LogId"] = 12001231
-- 4033301	致命准星	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311748][17] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][17]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311748][17]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311748][17]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][17]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][17]["RewardItem"][1]["Id"] = 4033301
tSmeltingFurnaceNewItemtype_RandomReward[3311748][17]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311748][17]["LogId"] = 12001231
-- 4032901	审判	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311748][18] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][18]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311748][18]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311748][18]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][18]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][18]["RewardItem"][1]["Id"] = 4032901
tSmeltingFurnaceNewItemtype_RandomReward[3311748][18]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311748][18]["LogId"] = 12001231
-- 4033001	例无虚发	5%
tSmeltingFurnaceNewItemtype_RandomReward[3311748][19] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][19]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311748][19]["ItemChance"] = 500
tSmeltingFurnaceNewItemtype_RandomReward[3311748][19]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][19]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][19]["RewardItem"][1]["Id"] = 4033001
tSmeltingFurnaceNewItemtype_RandomReward[3311748][19]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311748][19]["LogId"] = 12001231
-- 4034201	乾坤妙法(+1)	2.75%
tSmeltingFurnaceNewItemtype_RandomReward[3311748][20] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][20]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311748][20]["ItemChance"] = 275
tSmeltingFurnaceNewItemtype_RandomReward[3311748][20]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][20]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][20]["RewardItem"][1]["Id"] = 4034201
tSmeltingFurnaceNewItemtype_RandomReward[3311748][20]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311748][20]["LogId"] = 12001231
-- 4034301	罡气护体(+1)	2.75%
tSmeltingFurnaceNewItemtype_RandomReward[3311748][21] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][21]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311748][21]["ItemChance"] = 275
tSmeltingFurnaceNewItemtype_RandomReward[3311748][21]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][21]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][21]["RewardItem"][1]["Id"] = 4034301
tSmeltingFurnaceNewItemtype_RandomReward[3311748][21]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311748][21]["LogId"] = 12001231
-- 4034401	沧澜破(+1)	2.75%
tSmeltingFurnaceNewItemtype_RandomReward[3311748][22] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][22]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311748][22]["ItemChance"] = 275
tSmeltingFurnaceNewItemtype_RandomReward[3311748][22]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][22]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][22]["RewardItem"][1]["Id"] = 4034401
tSmeltingFurnaceNewItemtype_RandomReward[3311748][22]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311748][22]["LogId"] = 12001231
-- 4034501	妙手回春(+1)	2.750%
tSmeltingFurnaceNewItemtype_RandomReward[3311748][23] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][23]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311748][23]["ItemChance"] = 275
tSmeltingFurnaceNewItemtype_RandomReward[3311748][23]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][23]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][23]["RewardItem"][1]["Id"] = 4034501
tSmeltingFurnaceNewItemtype_RandomReward[3311748][23]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311748][23]["LogId"] = 12001231
-- 4034601	最终法伤免疫(+1)	2.750%
tSmeltingFurnaceNewItemtype_RandomReward[3311748][24] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][24]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311748][24]["ItemChance"] = 275
tSmeltingFurnaceNewItemtype_RandomReward[3311748][24]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][24]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][24]["RewardItem"][1]["Id"] = 4034601
tSmeltingFurnaceNewItemtype_RandomReward[3311748][24]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311748][24]["LogId"] = 12001231
-- 4034701	最终物伤免疫(+1)	2.750%
tSmeltingFurnaceNewItemtype_RandomReward[3311748][25] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][25]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311748][25]["ItemChance"] = 275
tSmeltingFurnaceNewItemtype_RandomReward[3311748][25]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][25]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][25]["RewardItem"][1]["Id"] = 4034701
tSmeltingFurnaceNewItemtype_RandomReward[3311748][25]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311748][25]["LogId"] = 12001231
-- 4034801	碎玄元(+1)	2.50%
tSmeltingFurnaceNewItemtype_RandomReward[3311748][26] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][26]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311748][26]["ItemChance"] = 250
tSmeltingFurnaceNewItemtype_RandomReward[3311748][26]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][26]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][26]["RewardItem"][1]["Id"] = 4034801
tSmeltingFurnaceNewItemtype_RandomReward[3311748][26]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311748][26]["LogId"] = 12001231
-- 4034901	不死之身(+1)	0%
tSmeltingFurnaceNewItemtype_RandomReward[3311748][27] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][27]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311748][27]["ItemChance"] = 0
tSmeltingFurnaceNewItemtype_RandomReward[3311748][27]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][27]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311748][27]["RewardItem"][1]["Id"] = 4034901
tSmeltingFurnaceNewItemtype_RandomReward[3311748][27]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311748][27]["LogId"] = 12001231

-- 高阶神纹蓝色神纹碎片
tSmeltingFurnaceNewItemtype_RandomReward[3311749] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749]["ItemChanceSum"] = 10000
-- 4021101	子母雷旋	9.0%
tSmeltingFurnaceNewItemtype_RandomReward[3311749][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][1]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311749][1]["ItemChance"] = 900
tSmeltingFurnaceNewItemtype_RandomReward[3311749][1]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][1]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][1]["RewardItem"][1]["Id"] = 4021101
tSmeltingFurnaceNewItemtype_RandomReward[3311749][1]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311749][1]["LogId"] = 12001231
-- 4021201	碎星辰	9.1%
tSmeltingFurnaceNewItemtype_RandomReward[3311749][2] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][2]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311749][2]["ItemChance"] = 910
tSmeltingFurnaceNewItemtype_RandomReward[3311749][2]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][2]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][2]["RewardItem"][1]["Id"] = 4021201
tSmeltingFurnaceNewItemtype_RandomReward[3311749][2]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311749][2]["LogId"] = 12001231
-- 4021301	龙影冲拳	9.1%
tSmeltingFurnaceNewItemtype_RandomReward[3311749][3] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][3]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311749][3]["ItemChance"] = 910
tSmeltingFurnaceNewItemtype_RandomReward[3311749][3]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][3]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][3]["RewardItem"][1]["Id"] = 4021301
tSmeltingFurnaceNewItemtype_RandomReward[3311749][3]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311749][3]["LogId"] = 12001231
-- 4021401	反击风暴	9.1%
tSmeltingFurnaceNewItemtype_RandomReward[3311749][4] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][4]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311749][4]["ItemChance"] = 910
tSmeltingFurnaceNewItemtype_RandomReward[3311749][4]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][4]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][4]["RewardItem"][1]["Id"] = 4021401
tSmeltingFurnaceNewItemtype_RandomReward[3311749][4]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311749][4]["LogId"] = 12001231
-- 4021501	星飞云散	9.1%
tSmeltingFurnaceNewItemtype_RandomReward[3311749][5] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][5]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311749][5]["ItemChance"] = 910
tSmeltingFurnaceNewItemtype_RandomReward[3311749][5]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][5]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][5]["RewardItem"][1]["Id"] = 4021501
tSmeltingFurnaceNewItemtype_RandomReward[3311749][5]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311749][5]["LogId"] = 12001231
-- 4021601	忍法·决斗	9.1%
tSmeltingFurnaceNewItemtype_RandomReward[3311749][6] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][6]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311749][6]["ItemChance"] = 910
tSmeltingFurnaceNewItemtype_RandomReward[3311749][6]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][6]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][6]["RewardItem"][1]["Id"] = 4021601
tSmeltingFurnaceNewItemtype_RandomReward[3311749][6]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311749][6]["LogId"] = 12001231
-- 4021701	海神诅咒	9.1%
tSmeltingFurnaceNewItemtype_RandomReward[3311749][7] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][7]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311749][7]["ItemChance"] = 910
tSmeltingFurnaceNewItemtype_RandomReward[3311749][7]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][7]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][7]["RewardItem"][1]["Id"] = 4021701
tSmeltingFurnaceNewItemtype_RandomReward[3311749][7]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311749][7]["LogId"] = 12001231
-- 4021801	时空传送	9.1%
tSmeltingFurnaceNewItemtype_RandomReward[3311749][8] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][8]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311749][8]["ItemChance"] = 910
tSmeltingFurnaceNewItemtype_RandomReward[3311749][8]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][8]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][8]["RewardItem"][1]["Id"] = 4021801
tSmeltingFurnaceNewItemtype_RandomReward[3311749][8]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311749][8]["LogId"] = 12001231
-- 4021901	天尊降世	9.1%
tSmeltingFurnaceNewItemtype_RandomReward[3311749][9] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][9]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311749][9]["ItemChance"] = 910
tSmeltingFurnaceNewItemtype_RandomReward[3311749][9]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][9]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][9]["RewardItem"][1]["Id"] = 4021901
tSmeltingFurnaceNewItemtype_RandomReward[3311749][9]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311749][9]["LogId"] = 12001231
-- 4022001	怒意狂击	9.1%
tSmeltingFurnaceNewItemtype_RandomReward[3311749][10] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][10]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311749][10]["ItemChance"] = 910
tSmeltingFurnaceNewItemtype_RandomReward[3311749][10]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][10]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][10]["RewardItem"][1]["Id"] = 4022001
tSmeltingFurnaceNewItemtype_RandomReward[3311749][10]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311749][10]["LogId"] = 12001231
-- 4023001	嗜血狂潮	9.1%
tSmeltingFurnaceNewItemtype_RandomReward[3311749][11] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][11]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_RandomReward[3311749][11]["ItemChance"] = 910
tSmeltingFurnaceNewItemtype_RandomReward[3311749][11]["RewardItem"] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][11]["RewardItem"][1] = {}
tSmeltingFurnaceNewItemtype_RandomReward[3311749][11]["RewardItem"][1]["Id"] = 4023001
tSmeltingFurnaceNewItemtype_RandomReward[3311749][11]["RewardItem"][1]["Attr"] = "0 1 3"
tSmeltingFurnaceNewItemtype_RandomReward[3311749][11]["LogId"] = 12001231

-- 概率表
local tSmeltingFurnaceNewItemtype_Random = {}
tSmeltingFurnaceNewItemtype_Random["UseOneDebris"] = {}
tSmeltingFurnaceNewItemtype_Random["UseOneDebris"][1] = {}
tSmeltingFurnaceNewItemtype_Random["UseOneDebris"][1]["ItemChanceSum"] = 10000
-- 成功             
tSmeltingFurnaceNewItemtype_Random["UseOneDebris"][1][1] = {}
tSmeltingFurnaceNewItemtype_Random["UseOneDebris"][1][1]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_Random["UseOneDebris"][1][1]["ItemChance"] = 4800
tSmeltingFurnaceNewItemtype_Random["UseOneDebris"][1][1]["Num"] = 1
-- 失败         
tSmeltingFurnaceNewItemtype_Random["UseOneDebris"][1][2] = {}
tSmeltingFurnaceNewItemtype_Random["UseOneDebris"][1][2]["RandomItemChanceType"] = 2
tSmeltingFurnaceNewItemtype_Random["UseOneDebris"][1][2]["ItemChance"] = 5200
tSmeltingFurnaceNewItemtype_Random["UseOneDebris"][1][2]["Num"] = 0



----------------------------------逻辑部分---------------------------------------------
-- 物品礼包使用
function SmeltingFurnaceNewItemtype_ItemUse(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tSmeltingFurnaceNewItemtype_Reward[nItemId]) then
		return
	end
	
	-- 赠点达上限
	if tSmeltingFurnaceNewItemtype_Reward[nItemId]["RewardEMoneyMono"] ~= nil then
		local nNowEmoney = Get_UserEMoney()
		if nNowEmoney + tSmeltingFurnaceNewItemtype_Reward[nItemId]["RewardEMoneyMono"]["Value"] > G_User_MaxEmoney then
			Sys_MsgBox(tSmeltingFurnaceNewItemtype_Text["FullEmoneyMono"])
			return false
		end
	end
	
	RewardTemplate_UseItemAndMsg(tSmeltingFurnaceNewItemtype_Reward[nItemId])
end

-- 碎片合成
function SmeltingFurnaceNewItemtype_TipsSynthesis(nItemId)
	local nNum = tSmeltingFurnaceNewItemtype_Data["NeedNum"][nItemId]
	if not Item_ChkMulItem(nItemId, nItemId, nNum) then
		local sItemName = Get_ItemtypeName(nItemId)
		Sys_MsgBox(string.format(tSmeltingFurnaceNewItemtype_Text["SysMsg"]["SynthesisFalse"], sItemName))
		return
	end
	
	if nItemId == 3311742 then
		-- 判断背包空间
		if not RewardTemplate_CheckSpace(tSmeltingFurnaceNewItemtype_Reward[nItemId]) then
			return
		end
		
		RewardTemplate_UseItemAndMsg(tSmeltingFurnaceNewItemtype_Reward[nItemId])
	else
		-- 判断背包空间
		local nSpace = RewardTemplate_GetRandomSpace(tSmeltingFurnaceNewItemtype_RandomReward,nItemId)
		if not User_CheckLeftSpace(nSpace) then
			Sys_MsgBox(string.format(tSmeltingFurnaceNewItemtype_Text["FullBag"],nSpace))
			return
		end
		
		RewardTemplate_UseItemAndMsg(tSmeltingFurnaceNewItemtype_Reward[nItemId])
		RewardTemplate_NewRandom(tSmeltingFurnaceNewItemtype_RandomReward,nItemId)
	end
end

-- 宝石碎片使用
function SmeltingFurnaceNewItemtype_GemTipsSynthesis(nItemId)
	local nNum = tSmeltingFurnaceNewItemtype_Data["NeedNum"][nItemId]
	-- 判断赠品宝石碎片是否足够
	if Item_ChkMulItem(nItemId, nItemId, nNum, 2) then
		local tRandomReward = CommonFunc_Copy(tSmeltingFurnaceNewItemtype_RandomReward)
		-- 赠品碎片重新赋值
		for k, v in ipairs(tRandomReward[nItemId]) do
			tRandomReward[nItemId][k]["RewardItem"][1]["Attr"] = "0 1 3"
		end
		-- 判断背包空间
		local nSpace = RewardTemplate_GetRandomSpace(tRandomReward,nItemId)
		if not User_CheckLeftSpace(nSpace) then
			Sys_MsgBox(string.format(tSmeltingFurnaceNewItemtype_Text["FullBag"],nSpace))
			return
		end
		-- 删除碎片表重新赋值
		local tReward = CommonFunc_Copy(tSmeltingFurnaceNewItemtype_Reward[nItemId])
		tReward["DeleteItem"][1]["Monopoly"] = 2
		RewardTemplate_UseItemAndMsg(tReward)
		RewardTemplate_NewRandom(tRandomReward, nItemId)
		return
	-- 判断非赠宝石碎片是否足够
	elseif Item_ChkMulItem(nItemId, nItemId, nNum, 0) then
		-- 判断背包空间
		local nSpace = RewardTemplate_GetRandomSpace(tSmeltingFurnaceNewItemtype_RandomReward,nItemId)
		if not User_CheckLeftSpace(nSpace) then
			Sys_MsgBox(string.format(tSmeltingFurnaceNewItemtype_Text["FullBag"],nSpace))
			return
		end
		-- 删除碎片表重新赋值
		local tReward = CommonFunc_Copy(tSmeltingFurnaceNewItemtype_Reward[nItemId])
		tReward["DeleteItem"][1]["Monopoly"] = 0
		RewardTemplate_UseItemAndMsg(tReward)
		RewardTemplate_NewRandom(tSmeltingFurnaceNewItemtype_RandomReward, nItemId)
		return
	end
	-- 碎片不足
	local sItemName = Get_ItemtypeName(nItemId)
	Sys_MsgBox(string.format(tSmeltingFurnaceNewItemtype_Text["SysMsg"]["SynthesisFalse"], sItemName))
	return
end

-- 使用可选包`选择符文
function SmeltingFurnaceNewItemtype_Choose(nItemId,nChoose)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	local sChooseItemName = tSmeltingFurnaceNewItemtype_Text[nItemId]["Option11" .. nChoose]
	tItem[nItemId]["Text211"] = string.format(tSmeltingFurnaceNewItemtype_Text[nItemId]["Text211"],sChooseItemName)
	
	local nChooseItem = tSmeltingFurnaceNewItemtype_Reward[nItemId][nChoose]["RewardItem"][1]["Id"]
	local sRuneEffect = tSmeltingFurnaceNewItemtype_Text["Effect"][nChooseItem]
	tItem[nItemId]["Text212"] = string.format(tSmeltingFurnaceNewItemtype_Text[nItemId]["Text212"],sRuneEffect)
	
	tItem[nItemId]["OptionFunc211"] = "SmeltingFurnaceNewItemtype_ChooseConfirm</N>" .. nItemId .. "</N>" .. nChoose
	LinkItemGossipFunc_New(nItemId,"2-1")
end

-- 使用可选包`二次确认
function SmeltingFurnaceNewItemtype_ChooseConfirm(nItemId,nChoose)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	local tAward = CommonFunc_Copy(tSmeltingFurnaceNewItemtype_Reward[nItemId][nChoose])
	
	--江湖龙虎斗新增奖励
	if nItemId >= 3311750 and nItemId <= 3311751 and Sys_ChkFullTime(tActivityTime["FirstWorldBudokai"]["ActivityTime"]) and not SpecialServer_ChkNoGiftServer() then
		tAward["RewardItem"][2] = {}
		tAward["RewardItem"][2]["Id"] = 3305620
		tAward["RewardItem"][2]["Attr"] = "0 400"
	end
	
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tAward) then
		return false
	end
	
	RewardTemplate_UseItemAndMsg(tAward)
end

-- 使用单个碎片
function SmeltingFurnaceNewItemtype_UseOneDebris(nItemId)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) or not Item_DelItem(nItemId) then
		Sys_MsgBox(tSmeltingFurnaceNewItemtype_Text["DebrisNotEnough"])
		return false
	end
	
	local nFlag1,tAward1 = Probabil_RandomAward(tSmeltingFurnaceNewItemtype_Random["UseOneDebris"],1)
	local nNum = tAward1[1]["tAward"][1]["Num"]
	
	-- 合成失败
	if nNum == 0 then
		if Item_ChkItem(nItemId) then
			Sys_MsgBox(tSmeltingFurnaceNewItemtype_Text["False"])
		end
		-- 检测物品是否存在
		if Item_ChkItem(nItemId) then
			LinkItemGossipFunc_New(nItemId, "1-1")
			return
		end
		return false
	end
	
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][nItemId]) then
		return false
	end
	
	RewardTemplate_UseItem(tSmeltingFurnaceNewItemtype_Reward["UseOneDebris"][nItemId])
	local sItemName = Get_ItemtypeName(nItemId)
	Sys_MsgBox(string.format(tSmeltingFurnaceNewItemtype_Text["Success"],sItemName))
	-- 检测物品是否存在
	if Item_ChkItem(nItemId) then
		LinkItemGossipFunc_New(nItemId, "1-1")
		return
	end
end


---------------------------------物品部分---------------------------------------------
-- 1气力值包
-- 50气力值包
-- 100气力值包
-- 1天石（赠）礼包
-- 5天石（赠）礼包
-- 10天石（赠）礼包
-- 20天石（赠）礼包
-- 50天石（赠）礼包
-- 100天石（赠）礼包
-- 500天石（赠）礼包
tItem[3311731] = tItem[3311731] or {}
tItem[3311731]["Function"] = function(nItemId,sItemName)
	SmeltingFurnaceNewItemtype_ItemUse(nItemId)
end
tItem[3311732] = tItem[3311731]
tItem[3311733] = tItem[3311731]
tItem[3311734] = tItem[3311731]
tItem[3311735] = tItem[3311731]
tItem[3311736] = tItem[3311731]
tItem[3311737] = tItem[3311731]
tItem[3311738] = tItem[3311731]
tItem[3311739] = tItem[3311731]
tItem[3311740] = tItem[3311731]

-- 1天石（赠）礼包	3321063
-- 2天石（赠）礼包	3321064
-- 5天石（赠）礼包	3321065
tItem[3321063] = tItem[3311731]
tItem[3321064] = tItem[3311731]
tItem[3321065] = tItem[3311731]


-- 龙珠碎片
tItem[3311742] = tItem[3311742] or {}
tItem[3311742]["Function"] = function(nItemId,sItemName)
	SmeltingFurnaceNewItemtype_TipsSynthesis(nItemId)
end
-- 宝石碎片
tItem[3311743] = tItem[3311743] or {}
tItem[3311743]["Function"] = function(nItemId,sItemName)
	SmeltingFurnaceNewItemtype_GemTipsSynthesis(nItemId)
end

-- 高阶神纹黄色神纹碎片
tItemFace[3311744] = 1954
-- tItem[3311744] = tItem[3311744] or {}
-- tItem[3311744]["OptionHidden"] = 1
-- tItem[3311744]["DialogueText"] = tSmeltingFurnaceNewItemtype_Text[3311744]

-- tItem[3311744]["Text1-1"] = {111,112}
-- tItem[3311744]["tOption1-1"] = {111,112}

-- tItem[3311744]["OptionFunc111"]="SmeltingFurnaceNewItemtype_TipsSynthesis</N>3311744"
-- tItem[3311744]["OptionFunc112"]="SmeltingFurnaceNewItemtype_UseOneDebris</N>3311744"
tItem[3311744] = tItem[3311744] or {}
tItem[3311744]["Function"] = function(nItemId,sItemName)
	Standardize_RewardPoolProps_ExhangeOldItem(nItemId)
end
tItem[3311745] = tItem[3311744]

-- 高阶神纹蓝色神纹碎片
tItemFace[3311745] = 1955
-- tItem[3311745] = tItem[3311745] or {}
-- tItem[3311745]["OptionHidden"] = 1
-- tItem[3311745]["DialogueText"] = tSmeltingFurnaceNewItemtype_Text[3311745]

-- tItem[3311745]["Text1-1"] = {111,112}
-- tItem[3311745]["tOption1-1"] = {111,112}

-- tItem[3311745]["OptionFunc111"]="SmeltingFurnaceNewItemtype_TipsSynthesis</N>3311745"
-- tItem[3311745]["OptionFunc112"]="SmeltingFurnaceNewItemtype_UseOneDebris</N>3311745"

-- 高阶神纹黄色神纹碎片（赠）
tItemFace[3311748] = 1954
-- tItem[3311748] = tItem[3311748] or {}
-- tItem[3311748]["OptionHidden"] = 1
-- tItem[3311748]["DialogueText"] = tSmeltingFurnaceNewItemtype_Text[3311748]

-- tItem[3311748]["Text1-1"] = {111,112}
-- tItem[3311748]["tOption1-1"] = {111,112}

-- tItem[3311748]["OptionFunc111"]="SmeltingFurnaceNewItemtype_TipsSynthesis</N>3311748"
-- tItem[3311748]["OptionFunc112"]="SmeltingFurnaceNewItemtype_UseOneDebris</N>3311748"

tItem[3311748] = tItem[3311748] or {}
tItem[3311748]["Function"] = function(nItemId,sItemName)
	Standardize_RewardPoolProps_ExhangeOldItem(nItemId,3)
end
tItem[3311749] = tItem[3311748]

-- 高阶神纹蓝色神纹碎片（赠）
tItemFace[3311749] = 1955
-- tItem[3311749] = tItem[3311749] or {}
-- tItem[3311749]["OptionHidden"] = 1
-- tItem[3311749]["DialogueText"] = tSmeltingFurnaceNewItemtype_Text[3311749]

-- tItem[3311749]["Text1-1"] = {111,112}
-- tItem[3311749]["tOption1-1"] = {111,112}

-- tItem[3311749]["OptionFunc111"]="SmeltingFurnaceNewItemtype_TipsSynthesis</N>3311749"
-- tItem[3311749]["OptionFunc112"]="SmeltingFurnaceNewItemtype_UseOneDebris</N>3311749"


-- 高阶黄色神纹可选包
tItemFace[3311746] = 1952
tItem[3311746] = tItem[3311746] or {}
tItem[3311746]["OptionHidden"] = 1
tItem[3311746]["DialogueText"] = tSmeltingFurnaceNewItemtype_Text[3311746]

tItem[3311746]["Text1-1"] = {111}
tItem[3311746]["tOption1-1"] = {111,112,113,114,115,117,119,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126,116,118}

tItem[3311746]["OptionFunc111"]="SmeltingFurnaceNewItemtype_Choose</N>3311746</N>1"
tItem[3311746]["OptionFunc112"]="SmeltingFurnaceNewItemtype_Choose</N>3311746</N>2"
tItem[3311746]["OptionFunc113"]="SmeltingFurnaceNewItemtype_Choose</N>3311746</N>3"
tItem[3311746]["OptionFunc114"]="SmeltingFurnaceNewItemtype_Choose</N>3311746</N>4"
tItem[3311746]["OptionFunc115"]="SmeltingFurnaceNewItemtype_Choose</N>3311746</N>5"
tItem[3311746]["OptionFunc116"]="SmeltingFurnaceNewItemtype_Choose</N>3311746</N>6"
tItem[3311746]["OptionFunc117"]="SmeltingFurnaceNewItemtype_Choose</N>3311746</N>7"
tItem[3311746]["OptionFunc118"]="SmeltingFurnaceNewItemtype_Choose</N>3311746</N>8"
tItem[3311746]["OptionFunc119"]="SmeltingFurnaceNewItemtype_Choose</N>3311746</N>9"
tItem[3311746]["OptionFunc1110"]="SmeltingFurnaceNewItemtype_Choose</N>3311746</N>10"
tItem[3311746]["OptionFunc1111"]="SmeltingFurnaceNewItemtype_Choose</N>3311746</N>11"
tItem[3311746]["OptionFunc1112"]="SmeltingFurnaceNewItemtype_Choose</N>3311746</N>12"
tItem[3311746]["OptionFunc1113"]="SmeltingFurnaceNewItemtype_Choose</N>3311746</N>13"
tItem[3311746]["OptionFunc1114"]="SmeltingFurnaceNewItemtype_Choose</N>3311746</N>14"
tItem[3311746]["OptionFunc1115"]="SmeltingFurnaceNewItemtype_Choose</N>3311746</N>15"
tItem[3311746]["OptionFunc1116"]="SmeltingFurnaceNewItemtype_Choose</N>3311746</N>16"
tItem[3311746]["OptionFunc1117"]="SmeltingFurnaceNewItemtype_Choose</N>3311746</N>17"
tItem[3311746]["OptionFunc1118"]="SmeltingFurnaceNewItemtype_Choose</N>3311746</N>18"
tItem[3311746]["OptionFunc1119"]="SmeltingFurnaceNewItemtype_Choose</N>3311746</N>19"
tItem[3311746]["OptionFunc1120"]="SmeltingFurnaceNewItemtype_Choose</N>3311746</N>20"
tItem[3311746]["OptionFunc1121"]="SmeltingFurnaceNewItemtype_Choose</N>3311746</N>21"
tItem[3311746]["OptionFunc1122"]="SmeltingFurnaceNewItemtype_Choose</N>3311746</N>22"
tItem[3311746]["OptionFunc1123"]="SmeltingFurnaceNewItemtype_Choose</N>3311746</N>23"
tItem[3311746]["OptionFunc1124"]="SmeltingFurnaceNewItemtype_Choose</N>3311746</N>24"
tItem[3311746]["OptionFunc1125"]="SmeltingFurnaceNewItemtype_Choose</N>3311746</N>25"
tItem[3311746]["OptionFunc1126"]="SmeltingFurnaceNewItemtype_Choose</N>3311746</N>26"
tItem[3311746]["OptionFunc1127"]="SmeltingFurnaceNewItemtype_Choose</N>3311746</N>27"

-- 二次确认
tItem[3311746]["Text2-1"] = {211,212}
tItem[3311746]["tOption2-1"] = {211,212}

tItem[3311746]["OptionPoint212"] = "1"


-- 高阶黄色神纹可选包(赠)
tItemFace[3321617] = 1952
tItem[3321617] = tItem[3321617] or {}
tItem[3321617]["OptionHidden"] = 1
tItem[3321617]["DialogueText"] = tSmeltingFurnaceNewItemtype_Text[3321617]

tItem[3321617]["Text1-1"] = {111}
tItem[3321617]["tOption1-1"] = {111,112,113,114,115,117,119,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,116,118}

tItem[3321617]["OptionFunc111"]="SmeltingFurnaceNewItemtype_Choose</N>3321617</N>1"
tItem[3321617]["OptionFunc112"]="SmeltingFurnaceNewItemtype_Choose</N>3321617</N>2"
tItem[3321617]["OptionFunc113"]="SmeltingFurnaceNewItemtype_Choose</N>3321617</N>3"
tItem[3321617]["OptionFunc114"]="SmeltingFurnaceNewItemtype_Choose</N>3321617</N>4"
tItem[3321617]["OptionFunc115"]="SmeltingFurnaceNewItemtype_Choose</N>3321617</N>5"
tItem[3321617]["OptionFunc116"]="SmeltingFurnaceNewItemtype_Choose</N>3321617</N>6"
tItem[3321617]["OptionFunc117"]="SmeltingFurnaceNewItemtype_Choose</N>3321617</N>7"
tItem[3321617]["OptionFunc118"]="SmeltingFurnaceNewItemtype_Choose</N>3321617</N>8"
tItem[3321617]["OptionFunc119"]="SmeltingFurnaceNewItemtype_Choose</N>3321617</N>9"
tItem[3321617]["OptionFunc1110"]="SmeltingFurnaceNewItemtype_Choose</N>3321617</N>10"
tItem[3321617]["OptionFunc1111"]="SmeltingFurnaceNewItemtype_Choose</N>3321617</N>11"
tItem[3321617]["OptionFunc1112"]="SmeltingFurnaceNewItemtype_Choose</N>3321617</N>12"
tItem[3321617]["OptionFunc1113"]="SmeltingFurnaceNewItemtype_Choose</N>3321617</N>13"
tItem[3321617]["OptionFunc1114"]="SmeltingFurnaceNewItemtype_Choose</N>3321617</N>14"
tItem[3321617]["OptionFunc1115"]="SmeltingFurnaceNewItemtype_Choose</N>3321617</N>15"
tItem[3321617]["OptionFunc1116"]="SmeltingFurnaceNewItemtype_Choose</N>3321617</N>16"
tItem[3321617]["OptionFunc1117"]="SmeltingFurnaceNewItemtype_Choose</N>3321617</N>17"
tItem[3321617]["OptionFunc1118"]="SmeltingFurnaceNewItemtype_Choose</N>3321617</N>18"
tItem[3321617]["OptionFunc1119"]="SmeltingFurnaceNewItemtype_Choose</N>3321617</N>19"

-- 二次确认
tItem[3321617]["Text2-1"] = {211,212}
tItem[3321617]["tOption2-1"] = {211,212}

tItem[3321617]["OptionPoint212"] = "1"


-- 高阶蓝色神纹可选包
tItemFace[3311747] = 1953
tItem[3311747] = tItem[3311747] or {}
tItem[3311747]["OptionHidden"] = 1
tItem[3311747]["DialogueText"] = tSmeltingFurnaceNewItemtype_Text[3311747]

tItem[3311747]["Text1-1"] = {111}
tItem[3311747]["tOption1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111}

tItem[3311747]["OptionFunc111"]="SmeltingFurnaceNewItemtype_Choose</N>3311747</N>1"
tItem[3311747]["OptionFunc112"]="SmeltingFurnaceNewItemtype_Choose</N>3311747</N>2"
tItem[3311747]["OptionFunc113"]="SmeltingFurnaceNewItemtype_Choose</N>3311747</N>3"
tItem[3311747]["OptionFunc114"]="SmeltingFurnaceNewItemtype_Choose</N>3311747</N>4"
tItem[3311747]["OptionFunc115"]="SmeltingFurnaceNewItemtype_Choose</N>3311747</N>5"
tItem[3311747]["OptionFunc116"]="SmeltingFurnaceNewItemtype_Choose</N>3311747</N>6"
tItem[3311747]["OptionFunc117"]="SmeltingFurnaceNewItemtype_Choose</N>3311747</N>7"
tItem[3311747]["OptionFunc118"]="SmeltingFurnaceNewItemtype_Choose</N>3311747</N>8"
tItem[3311747]["OptionFunc119"]="SmeltingFurnaceNewItemtype_Choose</N>3311747</N>9"
tItem[3311747]["OptionFunc1110"]="SmeltingFurnaceNewItemtype_Choose</N>3311747</N>10"
tItem[3311747]["OptionFunc1111"]="SmeltingFurnaceNewItemtype_Choose</N>3311747</N>11"

-- 二次确认
tItem[3311747]["Text2-1"] = {211,212}
tItem[3311747]["tOption2-1"] = {211,212}

tItem[3311747]["OptionPoint212"] = "1"


-- 高阶黄色神纹可选包（赠）
tItemFace[3311750] = 1952
tItem[3311750] = tItem[3311750] or {}
tItem[3311750]["OptionHidden"] = 1
tItem[3311750]["DialogueText"] = tSmeltingFurnaceNewItemtype_Text[3311750]

tItem[3311750]["Text1-1"] = {111}
tItem[3311750]["tOption1-1"] = {111,112,113,114,115,117,119,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126,116,118}

tItem[3311750]["OptionFunc111"]="SmeltingFurnaceNewItemtype_Choose</N>3311750</N>1"
tItem[3311750]["OptionFunc112"]="SmeltingFurnaceNewItemtype_Choose</N>3311750</N>2"
tItem[3311750]["OptionFunc113"]="SmeltingFurnaceNewItemtype_Choose</N>3311750</N>3"
tItem[3311750]["OptionFunc114"]="SmeltingFurnaceNewItemtype_Choose</N>3311750</N>4"
tItem[3311750]["OptionFunc115"]="SmeltingFurnaceNewItemtype_Choose</N>3311750</N>5"
tItem[3311750]["OptionFunc116"]="SmeltingFurnaceNewItemtype_Choose</N>3311750</N>6"
tItem[3311750]["OptionFunc117"]="SmeltingFurnaceNewItemtype_Choose</N>3311750</N>7"
tItem[3311750]["OptionFunc118"]="SmeltingFurnaceNewItemtype_Choose</N>3311750</N>8"
tItem[3311750]["OptionFunc119"]="SmeltingFurnaceNewItemtype_Choose</N>3311750</N>9"
tItem[3311750]["OptionFunc1110"]="SmeltingFurnaceNewItemtype_Choose</N>3311750</N>10"
tItem[3311750]["OptionFunc1111"]="SmeltingFurnaceNewItemtype_Choose</N>3311750</N>11"
tItem[3311750]["OptionFunc1112"]="SmeltingFurnaceNewItemtype_Choose</N>3311750</N>12"
tItem[3311750]["OptionFunc1113"]="SmeltingFurnaceNewItemtype_Choose</N>3311750</N>13"
tItem[3311750]["OptionFunc1114"]="SmeltingFurnaceNewItemtype_Choose</N>3311750</N>14"
tItem[3311750]["OptionFunc1115"]="SmeltingFurnaceNewItemtype_Choose</N>3311750</N>15"
tItem[3311750]["OptionFunc1116"]="SmeltingFurnaceNewItemtype_Choose</N>3311750</N>16"
tItem[3311750]["OptionFunc1117"]="SmeltingFurnaceNewItemtype_Choose</N>3311750</N>17"
tItem[3311750]["OptionFunc1118"]="SmeltingFurnaceNewItemtype_Choose</N>3311750</N>18"
tItem[3311750]["OptionFunc1119"]="SmeltingFurnaceNewItemtype_Choose</N>3311750</N>19"
tItem[3311750]["OptionFunc1120"]="SmeltingFurnaceNewItemtype_Choose</N>3311750</N>20"
tItem[3311750]["OptionFunc1121"]="SmeltingFurnaceNewItemtype_Choose</N>3311750</N>21"
tItem[3311750]["OptionFunc1122"]="SmeltingFurnaceNewItemtype_Choose</N>3311750</N>22"
tItem[3311750]["OptionFunc1123"]="SmeltingFurnaceNewItemtype_Choose</N>3311750</N>23"
tItem[3311750]["OptionFunc1124"]="SmeltingFurnaceNewItemtype_Choose</N>3311750</N>24"
tItem[3311750]["OptionFunc1125"]="SmeltingFurnaceNewItemtype_Choose</N>3311750</N>25"
tItem[3311750]["OptionFunc1126"]="SmeltingFurnaceNewItemtype_Choose</N>3311750</N>26"
tItem[3311750]["OptionFunc1127"]="SmeltingFurnaceNewItemtype_Choose</N>3311750</N>27"

-- 二次确认
tItem[3311750]["Text2-1"] = {211,212}
tItem[3311750]["tOption2-1"] = {211,212}

tItem[3311750]["OptionPoint212"] = "1"

-- 高阶黄色神纹可选包（赠）
tItemFace[3316193] = 1952
tItem[3316193] = tItem[3316193] or {}
tItem[3316193]["OptionHidden"] = 1
tItem[3316193]["DialogueText"] = tSmeltingFurnaceNewItemtype_Text[3316193]

tItem[3316193]["Text1-1"] = {111}
tItem[3316193]["tOption1-1"] = {111,112,113,114,115,117,119,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126,1128,1129,116,118}

tItem[3316193]["OptionFunc111"]="SmeltingFurnaceNewItemtype_Choose</N>3316193</N>1"
tItem[3316193]["OptionFunc112"]="SmeltingFurnaceNewItemtype_Choose</N>3316193</N>2"
tItem[3316193]["OptionFunc113"]="SmeltingFurnaceNewItemtype_Choose</N>3316193</N>3"
tItem[3316193]["OptionFunc114"]="SmeltingFurnaceNewItemtype_Choose</N>3316193</N>4"
tItem[3316193]["OptionFunc115"]="SmeltingFurnaceNewItemtype_Choose</N>3316193</N>5"
tItem[3316193]["OptionFunc116"]="SmeltingFurnaceNewItemtype_Choose</N>3316193</N>6"
tItem[3316193]["OptionFunc117"]="SmeltingFurnaceNewItemtype_Choose</N>3316193</N>7"
tItem[3316193]["OptionFunc118"]="SmeltingFurnaceNewItemtype_Choose</N>3316193</N>8"
tItem[3316193]["OptionFunc119"]="SmeltingFurnaceNewItemtype_Choose</N>3316193</N>9"
tItem[3316193]["OptionFunc1110"]="SmeltingFurnaceNewItemtype_Choose</N>3316193</N>10"
tItem[3316193]["OptionFunc1111"]="SmeltingFurnaceNewItemtype_Choose</N>3316193</N>11"
tItem[3316193]["OptionFunc1112"]="SmeltingFurnaceNewItemtype_Choose</N>3316193</N>12"
tItem[3316193]["OptionFunc1113"]="SmeltingFurnaceNewItemtype_Choose</N>3316193</N>13"
tItem[3316193]["OptionFunc1114"]="SmeltingFurnaceNewItemtype_Choose</N>3316193</N>14"
tItem[3316193]["OptionFunc1115"]="SmeltingFurnaceNewItemtype_Choose</N>3316193</N>15"
tItem[3316193]["OptionFunc1116"]="SmeltingFurnaceNewItemtype_Choose</N>3316193</N>16"
tItem[3316193]["OptionFunc1117"]="SmeltingFurnaceNewItemtype_Choose</N>3316193</N>17"
tItem[3316193]["OptionFunc1118"]="SmeltingFurnaceNewItemtype_Choose</N>3316193</N>18"
tItem[3316193]["OptionFunc1119"]="SmeltingFurnaceNewItemtype_Choose</N>3316193</N>19"
tItem[3316193]["OptionFunc1120"]="SmeltingFurnaceNewItemtype_Choose</N>3316193</N>20"
tItem[3316193]["OptionFunc1121"]="SmeltingFurnaceNewItemtype_Choose</N>3316193</N>21"
tItem[3316193]["OptionFunc1122"]="SmeltingFurnaceNewItemtype_Choose</N>3316193</N>22"
tItem[3316193]["OptionFunc1123"]="SmeltingFurnaceNewItemtype_Choose</N>3316193</N>23"
tItem[3316193]["OptionFunc1124"]="SmeltingFurnaceNewItemtype_Choose</N>3316193</N>24"
tItem[3316193]["OptionFunc1125"]="SmeltingFurnaceNewItemtype_Choose</N>3316193</N>25"
tItem[3316193]["OptionFunc1126"]="SmeltingFurnaceNewItemtype_Choose</N>3316193</N>26"
tItem[3316193]["OptionFunc1127"]="SmeltingFurnaceNewItemtype_Choose</N>3316193</N>27"
tItem[3316193]["OptionFunc1128"]="SmeltingFurnaceNewItemtype_Choose</N>3316193</N>28"
tItem[3316193]["OptionFunc1129"]="SmeltingFurnaceNewItemtype_Choose</N>3316193</N>29"

-- 二次确认
tItem[3316193]["Text2-1"] = {211,212}
tItem[3316193]["tOption2-1"] = {211,212}

tItem[3316193]["OptionPoint212"] = "1"


-- 高阶蓝色神纹可选包（赠）
tItemFace[3311751] = 1953
tItem[3311751] = tItem[3311751] or {}
tItem[3311751]["OptionHidden"] = 1
tItem[3311751]["DialogueText"] = tSmeltingFurnaceNewItemtype_Text[3311751]

tItem[3311751]["Text1-1"] = {111}
tItem[3311751]["tOption1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111}

tItem[3311751]["OptionFunc111"]="SmeltingFurnaceNewItemtype_Choose</N>3311751</N>1"
tItem[3311751]["OptionFunc112"]="SmeltingFurnaceNewItemtype_Choose</N>3311751</N>2"
tItem[3311751]["OptionFunc113"]="SmeltingFurnaceNewItemtype_Choose</N>3311751</N>3"
tItem[3311751]["OptionFunc114"]="SmeltingFurnaceNewItemtype_Choose</N>3311751</N>4"
tItem[3311751]["OptionFunc115"]="SmeltingFurnaceNewItemtype_Choose</N>3311751</N>5"
tItem[3311751]["OptionFunc116"]="SmeltingFurnaceNewItemtype_Choose</N>3311751</N>6"
tItem[3311751]["OptionFunc117"]="SmeltingFurnaceNewItemtype_Choose</N>3311751</N>7"
tItem[3311751]["OptionFunc118"]="SmeltingFurnaceNewItemtype_Choose</N>3311751</N>8"
tItem[3311751]["OptionFunc119"]="SmeltingFurnaceNewItemtype_Choose</N>3311751</N>9"
tItem[3311751]["OptionFunc1110"]="SmeltingFurnaceNewItemtype_Choose</N>3311751</N>10"
tItem[3311751]["OptionFunc1111"]="SmeltingFurnaceNewItemtype_Choose</N>3311751</N>11"

-- 二次确认
tItem[3311751]["Text2-1"] = {211,212}
tItem[3311751]["tOption2-1"] = {211,212}

tItem[3311751]["OptionPoint212"] = "1"

-- 高阶黄色神纹+2可选包（赠）
tItemFace[3330938] = 950
tItem[3330938] = tItem[3330938] or {}
tItem[3330938]["OptionHidden"] = 1
tItem[3330938]["DialogueText"] = tSmeltingFurnaceNewItemtype_Text[3330938]

tItem[3330938]["Text1-1"] = {111}
tItem[3330938]["tOption1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126,1127,1128}

tItem[3330938]["OptionFunc111"]="SmeltingFurnaceNewItemtype_Choose</N>3330938</N>1"
tItem[3330938]["OptionFunc112"]="SmeltingFurnaceNewItemtype_Choose</N>3330938</N>2"
tItem[3330938]["OptionFunc113"]="SmeltingFurnaceNewItemtype_Choose</N>3330938</N>3"
tItem[3330938]["OptionFunc114"]="SmeltingFurnaceNewItemtype_Choose</N>3330938</N>4"
tItem[3330938]["OptionFunc115"]="SmeltingFurnaceNewItemtype_Choose</N>3330938</N>5"
tItem[3330938]["OptionFunc116"]="SmeltingFurnaceNewItemtype_Choose</N>3330938</N>6"
tItem[3330938]["OptionFunc117"]="SmeltingFurnaceNewItemtype_Choose</N>3330938</N>7"
tItem[3330938]["OptionFunc118"]="SmeltingFurnaceNewItemtype_Choose</N>3330938</N>8"
tItem[3330938]["OptionFunc119"]="SmeltingFurnaceNewItemtype_Choose</N>3330938</N>9"
tItem[3330938]["OptionFunc1110"]="SmeltingFurnaceNewItemtype_Choose</N>3330938</N>10"
tItem[3330938]["OptionFunc1111"]="SmeltingFurnaceNewItemtype_Choose</N>3330938</N>11"
tItem[3330938]["OptionFunc1112"]="SmeltingFurnaceNewItemtype_Choose</N>3330938</N>12"
tItem[3330938]["OptionFunc1113"]="SmeltingFurnaceNewItemtype_Choose</N>3330938</N>13"
tItem[3330938]["OptionFunc1114"]="SmeltingFurnaceNewItemtype_Choose</N>3330938</N>14"
tItem[3330938]["OptionFunc1115"]="SmeltingFurnaceNewItemtype_Choose</N>3330938</N>15"
tItem[3330938]["OptionFunc1116"]="SmeltingFurnaceNewItemtype_Choose</N>3330938</N>16"
tItem[3330938]["OptionFunc1117"]="SmeltingFurnaceNewItemtype_Choose</N>3330938</N>17"
tItem[3330938]["OptionFunc1118"]="SmeltingFurnaceNewItemtype_Choose</N>3330938</N>18"
tItem[3330938]["OptionFunc1119"]="SmeltingFurnaceNewItemtype_Choose</N>3330938</N>19"
tItem[3330938]["OptionFunc1120"]="SmeltingFurnaceNewItemtype_Choose</N>3330938</N>20"
tItem[3330938]["OptionFunc1121"]="SmeltingFurnaceNewItemtype_Choose</N>3330938</N>21"
tItem[3330938]["OptionFunc1122"]="SmeltingFurnaceNewItemtype_Choose</N>3330938</N>22"
tItem[3330938]["OptionFunc1123"]="SmeltingFurnaceNewItemtype_Choose</N>3330938</N>23"
tItem[3330938]["OptionFunc1124"]="SmeltingFurnaceNewItemtype_Choose</N>3330938</N>24"
tItem[3330938]["OptionFunc1125"]="SmeltingFurnaceNewItemtype_Choose</N>3330938</N>25"
tItem[3330938]["OptionFunc1126"]="SmeltingFurnaceNewItemtype_Choose</N>3330938</N>26"
tItem[3330938]["OptionFunc1127"]="SmeltingFurnaceNewItemtype_Choose</N>3330938</N>27"
tItem[3330938]["OptionFunc1128"]="SmeltingFurnaceNewItemtype_Choose</N>3330938</N>28"

-- 二次确认
tItem[3330938]["Text2-1"] = {211,212}
tItem[3330938]["tOption2-1"] = {211,212}

tItem[3330938]["OptionPoint212"] = "1"





