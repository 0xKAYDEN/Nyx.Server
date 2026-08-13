------------------------------------------------------------------------------------
--Name：            190307[英文征服][活动脚本]4月职业养成综合实力排行榜
--Creator:      蔡颖静
--Created:     2019/03/07
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--logid:12001328
--lua.ini:41177
--前缀：tCareerDevelopmentRank_

----------------------------------表配置部分--------------------------------------------
local tCareerDevelopmentRank_Data={}

	tCareerDevelopmentRank_Data[3320473] = {}
	-- 2天时效外套（赠）可选包,1
	tCareerDevelopmentRank_Data[3320473][1] = {}
	tCareerDevelopmentRank_Data[3320473][1]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320473][1]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320473][1]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320473][1]["DeleteItem"][1]["Id"] = 3320473 -- 【库】 1 【enzf库里没有该物品】[属性:]
	tCareerDevelopmentRank_Data[3320473][1]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320473][1]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320473][1]["RewardItem"][1]["Id"] = 195515 -- 【库】侠客风云[属性:0]【表格】侠客风云
	tCareerDevelopmentRank_Data[3320473][1]["RewardItem"][1]["Attr"] = "0 1 3 2880 1 0 0 1" -- 2天时效(激活)的1%神佑侠客风云(赠)*1
	tCareerDevelopmentRank_Data[3320473][1]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320473][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320473][1]["RewardEffect"]["Effect"] = "angelwing"


	-- 2天时效外套（赠）可选包,2
	tCareerDevelopmentRank_Data[3320473][2] = {}
	tCareerDevelopmentRank_Data[3320473][2]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320473][2]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320473][2]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320473][2]["DeleteItem"][1]["Id"] = 3320473 -- 【库】 2 【enzf库里没有该物品】[属性:]
	tCareerDevelopmentRank_Data[3320473][2]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320473][2]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320473][2]["RewardItem"][1]["Id"] = 195495 -- 【库】天龙八部[属性:0]【表格】天龙八部
	tCareerDevelopmentRank_Data[3320473][2]["RewardItem"][1]["Attr"] = "0 1 3 2880 1 0 0 1" -- 2天时效(激活)的1%神佑天龙八部(赠)*1
	tCareerDevelopmentRank_Data[3320473][2]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320473][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320473][2]["RewardEffect"]["Effect"] = "angelwing"


	-- 2天时效外套（赠）可选包,3
	tCareerDevelopmentRank_Data[3320473][3] = {}
	tCareerDevelopmentRank_Data[3320473][3]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320473][3]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320473][3]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320473][3]["DeleteItem"][1]["Id"] = 3320473 -- 【库】 3 【enzf库里没有该物品】[属性:]
	tCareerDevelopmentRank_Data[3320473][3]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320473][3]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320473][3]["RewardItem"][1]["Id"] = 189785 -- 【库】雪域飞狐[属性:0]【表格】雪域飞狐
	tCareerDevelopmentRank_Data[3320473][3]["RewardItem"][1]["Attr"] = "0 1 3 2880 1 0 0 1" -- 2天时效(激活)的1%神佑雪域飞狐(赠)*1
	tCareerDevelopmentRank_Data[3320473][3]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320473][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320473][3]["RewardEffect"]["Effect"] = "angelwing"

	tCareerDevelopmentRank_Data[3320474] = {}
	-- 2天时效外套（赠）可选包,1
	tCareerDevelopmentRank_Data[3320474][1] = {}
	tCareerDevelopmentRank_Data[3320474][1]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320474][1]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320474][1]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320474][1]["DeleteItem"][1]["Id"] = 3320474 -- 【库】 1 【enzf库里没有该物品】[属性:]
	tCareerDevelopmentRank_Data[3320474][1]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320474][1]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320474][1]["RewardItem"][1]["Id"] = 195495 -- 【库】天龙八部[属性:0]【表格】天龙八部
	tCareerDevelopmentRank_Data[3320474][1]["RewardItem"][1]["Attr"] = "0 1 3 2880 1 0 0 1" -- 2天时效(激活)的1%神佑天龙八部(赠)*1
	tCareerDevelopmentRank_Data[3320474][1]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320474][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320474][1]["RewardEffect"]["Effect"] = "angelwing"


	-- 2天时效外套（赠）可选包,2
	tCareerDevelopmentRank_Data[3320474][2] = {}
	tCareerDevelopmentRank_Data[3320474][2]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320474][2]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320474][2]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320474][2]["DeleteItem"][1]["Id"] = 3320474 -- 【库】 2 【enzf库里没有该物品】[属性:]
	tCareerDevelopmentRank_Data[3320474][2]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320474][2]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320474][2]["RewardItem"][1]["Id"] = 189785 -- 【库】雪域飞狐[属性:0]【表格】雪域飞狐
	tCareerDevelopmentRank_Data[3320474][2]["RewardItem"][1]["Attr"] = "0 1 3 2880 1 0 0 1" -- 2天时效(激活)的1%神佑雪域飞狐(赠)*1
	tCareerDevelopmentRank_Data[3320474][2]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320474][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320474][2]["RewardEffect"]["Effect"] = "angelwing"

	tCareerDevelopmentRank_Data[3320475] = {}
	-- 360天五星坐骑外套（赠）可选包,1
	tCareerDevelopmentRank_Data[3320475][1] = {}
	tCareerDevelopmentRank_Data[3320475][1]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320475][1]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320475][1]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320475][1]["DeleteItem"][1]["Id"] = 3320475 -- 【库】 1 【enzf库里没有该物品】[属性:]
	tCareerDevelopmentRank_Data[3320475][1]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320475][1]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320475][1]["RewardItem"][1]["Id"] = 200580 -- 【库】MythicBeast[属性:8]【表格】玄冰圣兽
	tCareerDevelopmentRank_Data[3320475][1]["RewardItem"][1]["Attr"] = "0 1 3 518400 1 0 0 1" -- 360天时效(激活)的1%神佑MythicBeast(赠)*1
	tCareerDevelopmentRank_Data[3320475][1]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320475][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320475][1]["RewardEffect"]["Effect"] = "angelwing"


	-- 360天五星坐骑外套（赠）可选包,2
	tCareerDevelopmentRank_Data[3320475][2] = {}
	tCareerDevelopmentRank_Data[3320475][2]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320475][2]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320475][2]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320475][2]["DeleteItem"][1]["Id"] = 3320475 -- 【库】 2 【enzf库里没有该物品】[属性:]
	tCareerDevelopmentRank_Data[3320475][2]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320475][2]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320475][2]["RewardItem"][1]["Id"] = 200579 -- 【库】赤龙圣兽[属性:8]【表格】赤龙圣兽
	tCareerDevelopmentRank_Data[3320475][2]["RewardItem"][1]["Attr"] = "0 1 3 518400 1 0 0 1" -- 360天时效(激活)的1%神佑赤龙圣兽(赠)*1
	tCareerDevelopmentRank_Data[3320475][2]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320475][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320475][2]["RewardEffect"]["Effect"] = "angelwing"

	tCareerDevelopmentRank_Data[3320476] = {}
	-- 180天五星坐骑外套（赠）可选包,1
	tCareerDevelopmentRank_Data[3320476][1] = {}
	tCareerDevelopmentRank_Data[3320476][1]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320476][1]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320476][1]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320476][1]["DeleteItem"][1]["Id"] = 3320476 -- 【库】 1 【enzf库里没有该物品】[属性:]
	tCareerDevelopmentRank_Data[3320476][1]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320476][1]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320476][1]["RewardItem"][1]["Id"] = 200580 -- 【库】MythicBeast[属性:8]【表格】玄冰圣兽
	tCareerDevelopmentRank_Data[3320476][1]["RewardItem"][1]["Attr"] = "0 1 3 259200 1 0 0 1" -- 180天时效(激活)的1%神佑MythicBeast(赠)*1
	tCareerDevelopmentRank_Data[3320476][1]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320476][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320476][1]["RewardEffect"]["Effect"] = "angelwing"


	-- 180天五星坐骑外套（赠）可选包,2
	tCareerDevelopmentRank_Data[3320476][2] = {}
	tCareerDevelopmentRank_Data[3320476][2]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320476][2]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320476][2]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320476][2]["DeleteItem"][1]["Id"] = 3320476 -- 【库】 2 【enzf库里没有该物品】[属性:]
	tCareerDevelopmentRank_Data[3320476][2]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320476][2]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320476][2]["RewardItem"][1]["Id"] = 200579 -- 【库】赤龙圣兽[属性:8]【表格】赤龙圣兽
	tCareerDevelopmentRank_Data[3320476][2]["RewardItem"][1]["Attr"] = "0 1 3 259200 1 0 0 1" -- 180天时效(激活)的1%神佑赤龙圣兽(赠)*1
	tCareerDevelopmentRank_Data[3320476][2]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320476][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320476][2]["RewardEffect"]["Effect"] = "angelwing"

	tCareerDevelopmentRank_Data[3320477] = {}
	-- 90天五星坐骑外套（赠）可选包,1
	tCareerDevelopmentRank_Data[3320477][1] = {}
	tCareerDevelopmentRank_Data[3320477][1]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320477][1]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320477][1]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320477][1]["DeleteItem"][1]["Id"] = 3320477 -- 【库】 1 【enzf库里没有该物品】[属性:]
	tCareerDevelopmentRank_Data[3320477][1]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320477][1]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320477][1]["RewardItem"][1]["Id"] = 200580 -- 【库】MythicBeast[属性:8]【表格】玄冰圣兽
	tCareerDevelopmentRank_Data[3320477][1]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑MythicBeast(赠)*1
	tCareerDevelopmentRank_Data[3320477][1]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320477][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320477][1]["RewardEffect"]["Effect"] = "angelwing"


	-- 90天五星坐骑外套（赠）可选包,2
	tCareerDevelopmentRank_Data[3320477][2] = {}
	tCareerDevelopmentRank_Data[3320477][2]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320477][2]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320477][2]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320477][2]["DeleteItem"][1]["Id"] = 3320477 -- 【库】 2 【enzf库里没有该物品】[属性:]
	tCareerDevelopmentRank_Data[3320477][2]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320477][2]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320477][2]["RewardItem"][1]["Id"] = 200579 -- 【库】赤龙圣兽[属性:8]【表格】赤龙圣兽
	tCareerDevelopmentRank_Data[3320477][2]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑赤龙圣兽(赠)*1
	tCareerDevelopmentRank_Data[3320477][2]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320477][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320477][2]["RewardEffect"]["Effect"] = "angelwing"

	tCareerDevelopmentRank_Data[3320478] = {}
	-- 90天四星坐骑外套（赠）可选包,1
	tCareerDevelopmentRank_Data[3320478][1] = {}
	tCareerDevelopmentRank_Data[3320478][1]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320478][1]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320478][1]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320478][1]["DeleteItem"][1]["Id"] = 3320478 -- 【库】 1 【enzf库里没有该物品】[属性:]
	tCareerDevelopmentRank_Data[3320478][1]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320478][1]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320478][1]["RewardItem"][1]["Id"] = 200500 -- 【库】Fuleco[属性:0]【表格】福来哥
	tCareerDevelopmentRank_Data[3320478][1]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑Fuleco(赠)*1
	tCareerDevelopmentRank_Data[3320478][1]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320478][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320478][1]["RewardEffect"]["Effect"] = "angelwing"


	-- 90天四星坐骑外套（赠）可选包,2
	tCareerDevelopmentRank_Data[3320478][2] = {}
	tCareerDevelopmentRank_Data[3320478][2]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320478][2]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320478][2]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320478][2]["DeleteItem"][1]["Id"] = 3320478 -- 【库】 1 【enzf库里没有该物品】[属性:]
	tCareerDevelopmentRank_Data[3320478][2]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320478][2]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320478][2]["RewardItem"][1]["Id"] = 200621 -- 【库】RadiantSamoyed[属性:0]【表格】萨摩王子
	tCareerDevelopmentRank_Data[3320478][2]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑RadiantSamoyed(赠)*1
	tCareerDevelopmentRank_Data[3320478][2]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320478][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320478][2]["RewardEffect"]["Effect"] = "angelwing"

	tCareerDevelopmentRank_Data[3320484] = {}
	-- 职业养成冠军礼包,1
	tCareerDevelopmentRank_Data[3320484][1] = {}
	tCareerDevelopmentRank_Data[3320484][1]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320484][1]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320484][1]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320484][1]["DeleteItem"][1]["Id"] = 3320484 -- 【库】 1 【enzf库里没有该物品】[属性:]
	tCareerDevelopmentRank_Data[3320484][1]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320484][1]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320484][1]["RewardItem"][1]["Id"] = 3009101 -- 【库】DragonFruit[属性:9]【表格】龙鳞果
	tCareerDevelopmentRank_Data[3320484][1]["RewardItem"][1]["Attr"] = "0 10" -- DragonFruit*10
	tCareerDevelopmentRank_Data[3320484][1]["RewardItem"][2] = {}
	tCareerDevelopmentRank_Data[3320484][1]["RewardItem"][2]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9]【表格】万能神纹精粹
	tCareerDevelopmentRank_Data[3320484][1]["RewardItem"][2]["Attr"] = "0 1000" -- UniversalRuneEssence*1000
	tCareerDevelopmentRank_Data[3320484][1]["RewardItem"][3] = {}
	tCareerDevelopmentRank_Data[3320484][1]["RewardItem"][3]["Id"] = 3320475 -- 【库】360天五星坐骑外套（赠）可选包[属性:9]【表格】360天五星坐骑外套（赠）可选包
	tCareerDevelopmentRank_Data[3320484][1]["RewardItem"][3]["Attr"] = "0 1" -- 360天五星坐骑外套（赠）可选包*1
	tCareerDevelopmentRank_Data[3320484][1]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320484][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320484][1]["RewardEffect"]["Effect"] = "angelwing"
	tCareerDevelopmentRank_Data[3320484][1]["RewardTitle"] = {}
	tCareerDevelopmentRank_Data[3320484][1]["RewardTitle"]["TitleType"]=2088
	tCareerDevelopmentRank_Data[3320484][1]["RewardTitle"]["TitleId"]= 2088
	tCareerDevelopmentRank_Data[3320484][1]["RewardTitle"]["SaveTime"] = 259200

	-- 职业养成冠军礼包,2
	tCareerDevelopmentRank_Data[3320484][2] = {}
	tCareerDevelopmentRank_Data[3320484][2]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320484][2]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320484][2]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320484][2]["DeleteItem"][1]["Id"] = 3320484 -- 【库】 2 【enzf库里没有该物品】[属性:]
	tCareerDevelopmentRank_Data[3320484][2]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320484][2]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320484][2]["RewardItem"][1]["Id"] = 3009101 -- 【库】DragonFruit[属性:9]【表格】龙鳞果
	tCareerDevelopmentRank_Data[3320484][2]["RewardItem"][1]["Attr"] = "0 10" -- DragonFruit*10
	tCareerDevelopmentRank_Data[3320484][2]["RewardItem"][2] = {}
	tCareerDevelopmentRank_Data[3320484][2]["RewardItem"][2]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9]【表格】万能神纹精粹
	tCareerDevelopmentRank_Data[3320484][2]["RewardItem"][2]["Attr"] = "0 1000" -- UniversalRuneEssence*1000
	tCareerDevelopmentRank_Data[3320484][2]["RewardItem"][3] = {}
	tCareerDevelopmentRank_Data[3320484][2]["RewardItem"][3]["Id"] = 3320475 -- 【库】360天五星坐骑外套（赠）可选包[属性:9]【表格】360天五星坐骑外套（赠）可选包
	tCareerDevelopmentRank_Data[3320484][2]["RewardItem"][3]["Attr"] = "0 1" -- 360天五星坐骑外套（赠）可选包*1
	tCareerDevelopmentRank_Data[3320484][2]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320484][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320484][2]["RewardEffect"]["Effect"] = "angelwing"
	tCareerDevelopmentRank_Data[3320484][2]["RewardTitle"] = {}
	tCareerDevelopmentRank_Data[3320484][2]["RewardTitle"]["TitleType"]=2090
	tCareerDevelopmentRank_Data[3320484][2]["RewardTitle"]["TitleId"]= 2090
	tCareerDevelopmentRank_Data[3320484][2]["RewardTitle"]["SaveTime"] = 259200
	
	tCareerDevelopmentRank_Data[3320485] = {}
	-- 职业养成亚军礼包,1
	tCareerDevelopmentRank_Data[3320485][1] = {}
	tCareerDevelopmentRank_Data[3320485][1]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320485][1]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320485][1]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320485][1]["DeleteItem"][1]["Id"] = 3320485 -- 【库】 1 【enzf库里没有该物品】[属性:]
	tCareerDevelopmentRank_Data[3320485][1]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320485][1]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320485][1]["RewardItem"][1]["Id"] = 3009101 -- 【库】DragonFruit[属性:9]【表格】龙鳞果
	tCareerDevelopmentRank_Data[3320485][1]["RewardItem"][1]["Attr"] = "0 8" -- DragonFruit*8
	tCareerDevelopmentRank_Data[3320485][1]["RewardItem"][2] = {}
	tCareerDevelopmentRank_Data[3320485][1]["RewardItem"][2]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9]【表格】万能神纹精粹
	tCareerDevelopmentRank_Data[3320485][1]["RewardItem"][2]["Attr"] = "0 800" -- UniversalRuneEssence*800
	tCareerDevelopmentRank_Data[3320485][1]["RewardItem"][3] = {}
	tCareerDevelopmentRank_Data[3320485][1]["RewardItem"][3]["Id"] = 3320476 -- 【库】180天五星坐骑外套（赠）可选包[属性:9]【表格】180天五星坐骑外套（赠）可选包
	tCareerDevelopmentRank_Data[3320485][1]["RewardItem"][3]["Attr"] = "0 1" -- 180天五星坐骑外套（赠）可选包*1
	tCareerDevelopmentRank_Data[3320485][1]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320485][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320485][1]["RewardEffect"]["Effect"] = "angelwing"
	tCareerDevelopmentRank_Data[3320485][1]["RewardTitle"] = {}
	tCareerDevelopmentRank_Data[3320485][1]["RewardTitle"]["TitleType"]=2089
	tCareerDevelopmentRank_Data[3320485][1]["RewardTitle"]["TitleId"]= 2089
	tCareerDevelopmentRank_Data[3320485][1]["RewardTitle"]["SaveTime"] = 259200
	
	-- 职业养成亚军礼包,2
	tCareerDevelopmentRank_Data[3320485][2] = {}
	tCareerDevelopmentRank_Data[3320485][2]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320485][2]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320485][2]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320485][2]["DeleteItem"][1]["Id"] = 3320485 -- 【库】 2 【enzf库里没有该物品】[属性:]
	tCareerDevelopmentRank_Data[3320485][2]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320485][2]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320485][2]["RewardItem"][1]["Id"] = 3009101 -- 【库】DragonFruit[属性:9]【表格】龙鳞果
	tCareerDevelopmentRank_Data[3320485][2]["RewardItem"][1]["Attr"] = "0 8" -- DragonFruit*8
	tCareerDevelopmentRank_Data[3320485][2]["RewardItem"][2] = {}
	tCareerDevelopmentRank_Data[3320485][2]["RewardItem"][2]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9]【表格】万能神纹精粹
	tCareerDevelopmentRank_Data[3320485][2]["RewardItem"][2]["Attr"] = "0 800" -- UniversalRuneEssence*800
	tCareerDevelopmentRank_Data[3320485][2]["RewardItem"][3] = {}
	tCareerDevelopmentRank_Data[3320485][2]["RewardItem"][3]["Id"] = 3320476 -- 【库】180天五星坐骑外套（赠）可选包[属性:9]【表格】180天五星坐骑外套（赠）可选包
	tCareerDevelopmentRank_Data[3320485][2]["RewardItem"][3]["Attr"] = "0 1" -- 180天五星坐骑外套（赠）可选包*1
	tCareerDevelopmentRank_Data[3320485][2]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320485][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320485][2]["RewardEffect"]["Effect"] = "angelwing"
	tCareerDevelopmentRank_Data[3320485][2]["RewardTitle"] = {}
	tCareerDevelopmentRank_Data[3320485][2]["RewardTitle"]["TitleType"]=2091
	tCareerDevelopmentRank_Data[3320485][2]["RewardTitle"]["TitleId"]= 2091
	tCareerDevelopmentRank_Data[3320485][2]["RewardTitle"]["SaveTime"] = 259200

	tCareerDevelopmentRank_Data[3320486] = {}
	-- 职业养成季军礼包,1
	tCareerDevelopmentRank_Data[3320486][1] = {}
	tCareerDevelopmentRank_Data[3320486][1]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320486][1]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320486][1]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320486][1]["DeleteItem"][1]["Id"] = 3320486 -- 【库】 1 【enzf库里没有该物品】[属性:]
	tCareerDevelopmentRank_Data[3320486][1]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320486][1]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320486][1]["RewardItem"][1]["Id"] = 3009101 -- 【库】DragonFruit[属性:9]【表格】龙鳞果
	tCareerDevelopmentRank_Data[3320486][1]["RewardItem"][1]["Attr"] = "0 5" -- DragonFruit*5
	tCareerDevelopmentRank_Data[3320486][1]["RewardItem"][2] = {}
	tCareerDevelopmentRank_Data[3320486][1]["RewardItem"][2]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9]【表格】万能神纹精粹
	tCareerDevelopmentRank_Data[3320486][1]["RewardItem"][2]["Attr"] = "0 500" -- UniversalRuneEssence*500
	tCareerDevelopmentRank_Data[3320486][1]["RewardItem"][3] = {}
	tCareerDevelopmentRank_Data[3320486][1]["RewardItem"][3]["Id"] = 3320477 -- 【库】90天五星坐骑外套（赠）可选包[属性:9]【表格】90天五星坐骑外套（赠）可选包
	tCareerDevelopmentRank_Data[3320486][1]["RewardItem"][3]["Attr"] = "0 1" -- 90天五星坐骑外套（赠）可选包*1
	tCareerDevelopmentRank_Data[3320486][1]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320486][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320486][1]["RewardEffect"]["Effect"] = "angelwing"
	tCareerDevelopmentRank_Data[3320486][1]["RewardTitle"] = {}
	tCareerDevelopmentRank_Data[3320486][1]["RewardTitle"]["TitleType"]=2086
	tCareerDevelopmentRank_Data[3320486][1]["RewardTitle"]["TitleId"]= 2086
	tCareerDevelopmentRank_Data[3320486][1]["RewardTitle"]["SaveTime"] = 259200

	-- 职业养成季军礼包,2
	tCareerDevelopmentRank_Data[3320486][2] = {}
	tCareerDevelopmentRank_Data[3320486][2]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320486][2]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320486][2]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320486][2]["DeleteItem"][1]["Id"] = 3320486 -- 【库】 2 【enzf库里没有该物品】[属性:]
	tCareerDevelopmentRank_Data[3320486][2]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320486][2]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320486][2]["RewardItem"][1]["Id"] = 3009101 -- 【库】DragonFruit[属性:9]【表格】龙鳞果
	tCareerDevelopmentRank_Data[3320486][2]["RewardItem"][1]["Attr"] = "0 5" -- DragonFruit*5
	tCareerDevelopmentRank_Data[3320486][2]["RewardItem"][2] = {}
	tCareerDevelopmentRank_Data[3320486][2]["RewardItem"][2]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9]【表格】万能神纹精粹
	tCareerDevelopmentRank_Data[3320486][2]["RewardItem"][2]["Attr"] = "0 500" -- UniversalRuneEssence*500
	tCareerDevelopmentRank_Data[3320486][2]["RewardItem"][3] = {}
	tCareerDevelopmentRank_Data[3320486][2]["RewardItem"][3]["Id"] = 3320477 -- 【库】90天五星坐骑外套（赠）可选包[属性:9]【表格】90天五星坐骑外套（赠）可选包
	tCareerDevelopmentRank_Data[3320486][2]["RewardItem"][3]["Attr"] = "0 1" -- 90天五星坐骑外套（赠）可选包*1
	tCareerDevelopmentRank_Data[3320486][2]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320486][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320486][2]["RewardEffect"]["Effect"] = "angelwing"
	tCareerDevelopmentRank_Data[3320486][2]["RewardTitle"] = {}
	tCareerDevelopmentRank_Data[3320486][2]["RewardTitle"]["TitleType"]=2087
	tCareerDevelopmentRank_Data[3320486][2]["RewardTitle"]["TitleId"]= 2087
	tCareerDevelopmentRank_Data[3320486][2]["RewardTitle"]["SaveTime"] = 259200

	tCareerDevelopmentRank_Data[3320487] = {}
	-- 职业养成高手礼包,1
	tCareerDevelopmentRank_Data[3320487][1] = {}
	tCareerDevelopmentRank_Data[3320487][1]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320487][1]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320487][1]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320487][1]["DeleteItem"][1]["Id"] = 3320487 -- 【库】 1 【enzf库里没有该物品】[属性:]
	tCareerDevelopmentRank_Data[3320487][1]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320487][1]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320487][1]["RewardItem"][1]["Id"] = 3009101 -- 【库】DragonFruit[属性:9]【表格】龙鳞果
	tCareerDevelopmentRank_Data[3320487][1]["RewardItem"][1]["Attr"] = "0 3" -- DragonFruit*3
	tCareerDevelopmentRank_Data[3320487][1]["RewardItem"][2] = {}
	tCareerDevelopmentRank_Data[3320487][1]["RewardItem"][2]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9]【表格】万能神纹精粹
	tCareerDevelopmentRank_Data[3320487][1]["RewardItem"][2]["Attr"] = "0 300" -- UniversalRuneEssence*300
	tCareerDevelopmentRank_Data[3320487][1]["RewardItem"][3] = {}
	tCareerDevelopmentRank_Data[3320487][1]["RewardItem"][3]["Id"] = 3320478 -- 【库】90天四星坐骑外套（赠）可选包[属性:9]【表格】90天四星坐骑外套（赠）可选包
	tCareerDevelopmentRank_Data[3320487][1]["RewardItem"][3]["Attr"] = "0 1" -- 90天四星坐骑外套（赠）可选包*1
	tCareerDevelopmentRank_Data[3320487][1]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320487][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320487][1]["RewardEffect"]["Effect"] = "angelwing"
	tCareerDevelopmentRank_Data[3320487][1]["RewardTitle"] = {}
	tCareerDevelopmentRank_Data[3320487][1]["RewardTitle"]["TitleType"]=2024
	tCareerDevelopmentRank_Data[3320487][1]["RewardTitle"]["TitleId"]= 2024
	tCareerDevelopmentRank_Data[3320487][1]["RewardTitle"]["SaveTime"] = 259200
	
	-- 职业养成高手礼包,2
	tCareerDevelopmentRank_Data[3320487][2] = {}
	tCareerDevelopmentRank_Data[3320487][2]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320487][2]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320487][2]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320487][2]["DeleteItem"][1]["Id"] = 3320487 -- 【库】 2 【enzf库里没有该物品】[属性:]
	tCareerDevelopmentRank_Data[3320487][2]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320487][2]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320487][2]["RewardItem"][1]["Id"] = 3009101 -- 【库】DragonFruit[属性:9]【表格】龙鳞果
	tCareerDevelopmentRank_Data[3320487][2]["RewardItem"][1]["Attr"] = "0 3" -- DragonFruit*3
	tCareerDevelopmentRank_Data[3320487][2]["RewardItem"][2] = {}
	tCareerDevelopmentRank_Data[3320487][2]["RewardItem"][2]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9]【表格】万能神纹精粹
	tCareerDevelopmentRank_Data[3320487][2]["RewardItem"][2]["Attr"] = "0 300" -- UniversalRuneEssence*300
	tCareerDevelopmentRank_Data[3320487][2]["RewardItem"][3] = {}
	tCareerDevelopmentRank_Data[3320487][2]["RewardItem"][3]["Id"] = 3320478 -- 【库】90天四星坐骑外套（赠）可选包[属性:9]【表格】90天四星坐骑外套（赠）可选包
	tCareerDevelopmentRank_Data[3320487][2]["RewardItem"][3]["Attr"] = "0 1" -- 90天四星坐骑外套（赠）可选包*1
	tCareerDevelopmentRank_Data[3320487][2]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320487][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320487][2]["RewardEffect"]["Effect"] = "angelwing"
	tCareerDevelopmentRank_Data[3320487][2]["RewardTitle"] = {}
	tCareerDevelopmentRank_Data[3320487][2]["RewardTitle"]["TitleType"]=2021
	tCareerDevelopmentRank_Data[3320487][2]["RewardTitle"]["TitleId"]= 2021
	tCareerDevelopmentRank_Data[3320487][2]["RewardTitle"]["SaveTime"] = 259200


	tCareerDevelopmentRank_Data[3320488] = {}
	-- 职业养成精英礼包,1
	tCareerDevelopmentRank_Data[3320488][1] = {}
	tCareerDevelopmentRank_Data[3320488][1]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320488][1]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320488][1]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320488][1]["DeleteItem"][1]["Id"] = 3320488 -- 【库】 1 【enzf库里没有该物品】[属性:]
	tCareerDevelopmentRank_Data[3320488][1]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320488][1]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320488][1]["RewardItem"][1]["Id"] = 3009101 -- 【库】DragonFruit[属性:9]【表格】龙鳞果
	tCareerDevelopmentRank_Data[3320488][1]["RewardItem"][1]["Attr"] = "0 2" -- DragonFruit*2
	tCareerDevelopmentRank_Data[3320488][1]["RewardItem"][2] = {}
	tCareerDevelopmentRank_Data[3320488][1]["RewardItem"][2]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9]【表格】万能神纹精粹
	tCareerDevelopmentRank_Data[3320488][1]["RewardItem"][2]["Attr"] = "0 200" -- UniversalRuneEssence*200
	tCareerDevelopmentRank_Data[3320488][1]["RewardItem"][3] = {}
	tCareerDevelopmentRank_Data[3320488][1]["RewardItem"][3]["Id"] = 3320478 -- 【库】90天四星坐骑外套（赠）可选包[属性:9]【表格】90天四星坐骑外套（赠）可选包
	tCareerDevelopmentRank_Data[3320488][1]["RewardItem"][3]["Attr"] = "0 1" -- 90天四星坐骑外套（赠）可选包*1
	tCareerDevelopmentRank_Data[3320488][1]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320488][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320488][1]["RewardEffect"]["Effect"] = "angelwing"
	tCareerDevelopmentRank_Data[3320488][1]["RewardTitle"] = {}
	tCareerDevelopmentRank_Data[3320488][1]["RewardTitle"]["TitleType"]=2045
	tCareerDevelopmentRank_Data[3320488][1]["RewardTitle"]["TitleId"]= 2045
	tCareerDevelopmentRank_Data[3320488][1]["RewardTitle"]["SaveTime"] = 259200

	-- 职业养成精英礼包,2
	tCareerDevelopmentRank_Data[3320488][2] = {}
	tCareerDevelopmentRank_Data[3320488][2]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320488][2]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320488][2]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320488][2]["DeleteItem"][1]["Id"] = 3320488 -- 【库】 2 【enzf库里没有该物品】[属性:]
	tCareerDevelopmentRank_Data[3320488][2]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320488][2]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320488][2]["RewardItem"][1]["Id"] = 3009101 -- 【库】DragonFruit[属性:9]【表格】龙鳞果
	tCareerDevelopmentRank_Data[3320488][2]["RewardItem"][1]["Attr"] = "0 2" -- DragonFruit*2
	tCareerDevelopmentRank_Data[3320488][2]["RewardItem"][2] = {}
	tCareerDevelopmentRank_Data[3320488][2]["RewardItem"][2]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9]【表格】万能神纹精粹
	tCareerDevelopmentRank_Data[3320488][2]["RewardItem"][2]["Attr"] = "0 200" -- UniversalRuneEssence*200
	tCareerDevelopmentRank_Data[3320488][2]["RewardItem"][3] = {}
	tCareerDevelopmentRank_Data[3320488][2]["RewardItem"][3]["Id"] = 3320478 -- 【库】90天四星坐骑外套（赠）可选包[属性:9]【表格】90天四星坐骑外套（赠）可选包
	tCareerDevelopmentRank_Data[3320488][2]["RewardItem"][3]["Attr"] = "0 1" -- 90天四星坐骑外套（赠）可选包*1
	tCareerDevelopmentRank_Data[3320488][2]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320488][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320488][2]["RewardEffect"]["Effect"] = "angelwing"
	tCareerDevelopmentRank_Data[3320488][2]["RewardTitle"] = {}
	tCareerDevelopmentRank_Data[3320488][2]["RewardTitle"]["TitleType"]=2044
	tCareerDevelopmentRank_Data[3320488][2]["RewardTitle"]["TitleId"]= 2044
	tCareerDevelopmentRank_Data[3320488][2]["RewardTitle"]["SaveTime"] = 259200

	tCareerDevelopmentRank_Data[3320489] = {}
	-- 职业养成实力礼包,1
	tCareerDevelopmentRank_Data[3320489][1] = {}
	tCareerDevelopmentRank_Data[3320489][1]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320489][1]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320489][1]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320489][1]["DeleteItem"][1]["Id"] = 3320489 -- 【库】 1 【enzf库里没有该物品】[属性:]
	tCareerDevelopmentRank_Data[3320489][1]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320489][1]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320489][1]["RewardItem"][1]["Id"] = 3009101 -- 【库】DragonFruit[属性:9]【表格】龙鳞果
	tCareerDevelopmentRank_Data[3320489][1]["RewardItem"][1]["Attr"] = "0 1" -- DragonFruit*1
	tCareerDevelopmentRank_Data[3320489][1]["RewardItem"][2] = {}
	tCareerDevelopmentRank_Data[3320489][1]["RewardItem"][2]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9]【表格】万能神纹精粹
	tCareerDevelopmentRank_Data[3320489][1]["RewardItem"][2]["Attr"] = "0 100" -- UniversalRuneEssence*100
	tCareerDevelopmentRank_Data[3320489][1]["RewardItem"][3] = {}
	tCareerDevelopmentRank_Data[3320489][1]["RewardItem"][3]["Id"] = 3320478 -- 【库】90天四星坐骑外套（赠）可选包[属性:9]【表格】90天四星坐骑外套（赠）可选包
	tCareerDevelopmentRank_Data[3320489][1]["RewardItem"][3]["Attr"] = "0 1" -- 90天四星坐骑外套（赠）可选包*1
	tCareerDevelopmentRank_Data[3320489][1]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320489][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320489][1]["RewardEffect"]["Effect"] = "angelwing"
	tCareerDevelopmentRank_Data[3320489][1]["RewardTitle"] = {}
	tCareerDevelopmentRank_Data[3320489][1]["RewardTitle"]["TitleType"]=2025
	tCareerDevelopmentRank_Data[3320489][1]["RewardTitle"]["TitleId"]= 2025
	tCareerDevelopmentRank_Data[3320489][1]["RewardTitle"]["SaveTime"] = 259200

	-- 职业养成实力礼包,2
	tCareerDevelopmentRank_Data[3320489][2] = {}
	tCareerDevelopmentRank_Data[3320489][2]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320489][2]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320489][2]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320489][2]["DeleteItem"][1]["Id"] = 3320489 -- 【库】 2 【enzf库里没有该物品】[属性:]
	tCareerDevelopmentRank_Data[3320489][2]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320489][2]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320489][2]["RewardItem"][1]["Id"] = 3009101 -- 【库】DragonFruit[属性:9]【表格】龙鳞果
	tCareerDevelopmentRank_Data[3320489][2]["RewardItem"][1]["Attr"] = "0 1" -- DragonFruit*1
	tCareerDevelopmentRank_Data[3320489][2]["RewardItem"][2] = {}
	tCareerDevelopmentRank_Data[3320489][2]["RewardItem"][2]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9]【表格】万能神纹精粹
	tCareerDevelopmentRank_Data[3320489][2]["RewardItem"][2]["Attr"] = "0 100" -- UniversalRuneEssence*100
	tCareerDevelopmentRank_Data[3320489][2]["RewardItem"][3] = {}
	tCareerDevelopmentRank_Data[3320489][2]["RewardItem"][3]["Id"] = 3320478 -- 【库】90天四星坐骑外套（赠）可选包[属性:9]【表格】90天四星坐骑外套（赠）可选包
	tCareerDevelopmentRank_Data[3320489][2]["RewardItem"][3]["Attr"] = "0 1" -- 90天四星坐骑外套（赠）可选包*1
	tCareerDevelopmentRank_Data[3320489][2]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320489][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320489][2]["RewardEffect"]["Effect"] = "angelwing"
	tCareerDevelopmentRank_Data[3320489][2]["RewardTitle"] = {}
	tCareerDevelopmentRank_Data[3320489][2]["RewardTitle"]["TitleType"]=2022
	tCareerDevelopmentRank_Data[3320489][2]["RewardTitle"]["TitleId"]= 2022
	tCareerDevelopmentRank_Data[3320489][2]["RewardTitle"]["SaveTime"] = 259200


	-- 1000气力值包,3320466
	tCareerDevelopmentRank_Data[3320466] = {}
	tCareerDevelopmentRank_Data[3320466]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320466]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320466]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320466]["DeleteItem"][1]["Id"] = 3320466 -- 【库】1000气力值包[属性:9]
	tCareerDevelopmentRank_Data[3320466]["RewardStrengthValue"] = {}
	tCareerDevelopmentRank_Data[3320466]["RewardStrengthValue"]["Value"] = 1000 -- 气力值
	tCareerDevelopmentRank_Data[3320466]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320466]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320466]["RewardEffect"]["Effect"] = "angelwing"


	-- 3000气力值包,3320467
	tCareerDevelopmentRank_Data[3320467] = {}
	tCareerDevelopmentRank_Data[3320467]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320467]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320467]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320467]["DeleteItem"][1]["Id"] = 3320467 -- 【库】3000气力值包[属性:9]
	tCareerDevelopmentRank_Data[3320467]["RewardStrengthValue"] = {}
	tCareerDevelopmentRank_Data[3320467]["RewardStrengthValue"]["Value"] = 3000 -- 气力值
	tCareerDevelopmentRank_Data[3320467]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320467]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320467]["RewardEffect"]["Effect"] = "angelwing"


	-- 1000修为值包,3320468
	tCareerDevelopmentRank_Data[3320468] = {}
	tCareerDevelopmentRank_Data[3320468]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320468]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320468]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320468]["DeleteItem"][1]["Id"] = 3320468 -- 【库】1000修为值包[属性:9]
	tCareerDevelopmentRank_Data[3320468]["RewardRepairValue"] = {}
	tCareerDevelopmentRank_Data[3320468]["RewardRepairValue"]["Value"] = 1000 -- 修为值
	tCareerDevelopmentRank_Data[3320468]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320468]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320468]["RewardEffect"]["Effect"] = "angelwing"


	-- 2000修为值包,3320469
	tCareerDevelopmentRank_Data[3320469] = {}
	tCareerDevelopmentRank_Data[3320469]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320469]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320469]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320469]["DeleteItem"][1]["Id"] = 3320469 -- 【库】2000修为值包[属性:9]
	tCareerDevelopmentRank_Data[3320469]["RewardRepairValue"] = {}
	tCareerDevelopmentRank_Data[3320469]["RewardRepairValue"]["Value"] = 2000 -- 修为值
	tCareerDevelopmentRank_Data[3320469]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320469]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320469]["RewardEffect"]["Effect"] = "angelwing"


	-- 5000修为值包,3320470
	tCareerDevelopmentRank_Data[3320470] = {}
	tCareerDevelopmentRank_Data[3320470]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320470]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320470]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320470]["DeleteItem"][1]["Id"] = 3320470 -- 【库】5000修为值包[属性:9]
	tCareerDevelopmentRank_Data[3320470]["RewardRepairValue"] = {}
	tCareerDevelopmentRank_Data[3320470]["RewardRepairValue"]["Value"] = 5000 -- 修为值
	tCareerDevelopmentRank_Data[3320470]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320470]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320470]["RewardEffect"]["Effect"] = "angelwing"


	-- 8000修为值包,3320471
	tCareerDevelopmentRank_Data[3320471] = {}
	tCareerDevelopmentRank_Data[3320471]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320471]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320471]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320471]["DeleteItem"][1]["Id"] = 3320471 -- 【库】8000修为值包[属性:9]
	tCareerDevelopmentRank_Data[3320471]["RewardRepairValue"] = {}
	tCareerDevelopmentRank_Data[3320471]["RewardRepairValue"]["Value"] = 8000 -- 修为值
	tCareerDevelopmentRank_Data[3320471]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320471]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320471]["RewardEffect"]["Effect"] = "angelwing"


	-- 100修为值包,3320472
	tCareerDevelopmentRank_Data[3320472] = {}
	tCareerDevelopmentRank_Data[3320472]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320472]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320472]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320472]["DeleteItem"][1]["Id"] = 3320472 -- 【库】100修为值包[属性:9]
	tCareerDevelopmentRank_Data[3320472]["RewardRepairValue"] = {}
	tCareerDevelopmentRank_Data[3320472]["RewardRepairValue"]["Value"] = 100 -- 修为值
	tCareerDevelopmentRank_Data[3320472]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320472]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320472]["RewardEffect"]["Effect"] = "angelwing"


	-- 职业养成一阶礼包,3320479
	tCareerDevelopmentRank_Data[3320479] = {}
	tCareerDevelopmentRank_Data[3320479]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320479]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320479]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320479]["DeleteItem"][1]["Id"] = 3320479 -- 【库】职业养成一阶礼包[属性:0]
	tCareerDevelopmentRank_Data[3320479]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320479]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320479]["RewardItem"][1]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8]【表格】神纹源晶
	tCareerDevelopmentRank_Data[3320479]["RewardItem"][1]["Attr"] = "0 20 3" -- RuneCrystal(赠)*20
	tCareerDevelopmentRank_Data[3320479]["RewardItem"][2] = {}
	tCareerDevelopmentRank_Data[3320479]["RewardItem"][2]["Id"] = 3008223 -- 【库】IvoryJade[属性:9]【表格】昆仑玉
	tCareerDevelopmentRank_Data[3320479]["RewardItem"][2]["Attr"] = "0 20" -- IvoryJade*20
	tCareerDevelopmentRank_Data[3320479]["RewardItem"][3] = {}
	tCareerDevelopmentRank_Data[3320479]["RewardItem"][3]["Id"] = 3320473 -- 【库】2天时效外套（赠）可选包[属性:9]【表格】2天时效外套（赠）可选包
	tCareerDevelopmentRank_Data[3320479]["RewardItem"][3]["Attr"] = "0 1" -- 2天时效外套（赠）可选包*1
	tCareerDevelopmentRank_Data[3320479]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320479]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320479]["RewardEffect"]["Effect"] = "angelwing"


	-- 职业养成二阶礼包,3320480
	tCareerDevelopmentRank_Data[3320480] = {}
	tCareerDevelopmentRank_Data[3320480]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320480]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320480]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320480]["DeleteItem"][1]["Id"] = 3320480 -- 【库】职业养成二阶礼包[属性:0]
	tCareerDevelopmentRank_Data[3320480]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320480]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320480]["RewardItem"][1]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8]【表格】神纹源晶
	tCareerDevelopmentRank_Data[3320480]["RewardItem"][1]["Attr"] = "0 15 3" -- RuneCrystal(赠)*15
	tCareerDevelopmentRank_Data[3320480]["RewardItem"][2] = {}
	tCareerDevelopmentRank_Data[3320480]["RewardItem"][2]["Id"] = 3008223 -- 【库】IvoryJade[属性:9]【表格】昆仑玉
	tCareerDevelopmentRank_Data[3320480]["RewardItem"][2]["Attr"] = "0 15" -- IvoryJade*15
	tCareerDevelopmentRank_Data[3320480]["RewardItem"][3] = {}
	tCareerDevelopmentRank_Data[3320480]["RewardItem"][3]["Id"] = 3320474 -- 【库】2天时效外套（赠）可选包[属性:9]【表格】2天时效外套（赠）可选包
	tCareerDevelopmentRank_Data[3320480]["RewardItem"][3]["Attr"] = "0 1" -- 2天时效外套（赠）可选包*1
	tCareerDevelopmentRank_Data[3320480]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320480]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320480]["RewardEffect"]["Effect"] = "angelwing"


	-- 职业养成三阶礼包,3320481
	tCareerDevelopmentRank_Data[3320481] = {}
	tCareerDevelopmentRank_Data[3320481]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320481]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320481]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320481]["DeleteItem"][1]["Id"] = 3320481 -- 【库】职业养成三阶礼包[属性:0]
	tCareerDevelopmentRank_Data[3320481]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320481]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320481]["RewardItem"][1]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8]【表格】神纹源晶
	tCareerDevelopmentRank_Data[3320481]["RewardItem"][1]["Attr"] = "0 10 3" -- RuneCrystal(赠)*10
	tCareerDevelopmentRank_Data[3320481]["RewardItem"][2] = {}
	tCareerDevelopmentRank_Data[3320481]["RewardItem"][2]["Id"] = 3008223 -- 【库】IvoryJade[属性:9]【表格】昆仑玉
	tCareerDevelopmentRank_Data[3320481]["RewardItem"][2]["Attr"] = "0 10" -- IvoryJade*10
	tCareerDevelopmentRank_Data[3320481]["RewardItem"][3] = {}
	tCareerDevelopmentRank_Data[3320481]["RewardItem"][3]["Id"] = 3320474 -- 【库】2天时效外套（赠）可选包[属性:9]【表格】2天时效外套（赠）可选包
	tCareerDevelopmentRank_Data[3320481]["RewardItem"][3]["Attr"] = "0 1" -- 2天时效外套（赠）可选包*1
	tCareerDevelopmentRank_Data[3320481]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320481]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320481]["RewardEffect"]["Effect"] = "angelwing"


	-- 职业养成豪华礼包,3320482
	tCareerDevelopmentRank_Data[3320482] = {}
	tCareerDevelopmentRank_Data[3320482]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320482]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320482]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320482]["DeleteItem"][1]["Id"] = 3320482 -- 【库】职业养成豪华礼包[属性:0]
	tCareerDevelopmentRank_Data[3320482]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320482]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320482]["RewardItem"][1]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8]【表格】神纹源晶
	tCareerDevelopmentRank_Data[3320482]["RewardItem"][1]["Attr"] = "0 5 3" -- RuneCrystal(赠)*5
	tCareerDevelopmentRank_Data[3320482]["RewardItem"][2] = {}
	tCareerDevelopmentRank_Data[3320482]["RewardItem"][2]["Id"] = 3008223 -- 【库】IvoryJade[属性:9]【表格】昆仑玉
	tCareerDevelopmentRank_Data[3320482]["RewardItem"][2]["Attr"] = "0 5" -- IvoryJade*5
	tCareerDevelopmentRank_Data[3320482]["RewardItem"][3] = {}
	tCareerDevelopmentRank_Data[3320482]["RewardItem"][3]["Id"] = 195495 -- 【库】天龙八部[属性:0]【表格】天龙八部
	tCareerDevelopmentRank_Data[3320482]["RewardItem"][3]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑天龙八部(赠)*1
	tCareerDevelopmentRank_Data[3320482]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320482]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320482]["RewardEffect"]["Effect"] = "angelwing"


	-- 职业养成珍品礼包,3320483
	tCareerDevelopmentRank_Data[3320483] = {}
	tCareerDevelopmentRank_Data[3320483]["LogId"] = 12001328
	tCareerDevelopmentRank_Data[3320483]["DeleteItem"] = {}
	tCareerDevelopmentRank_Data[3320483]["DeleteItem"][1] = {}
	tCareerDevelopmentRank_Data[3320483]["DeleteItem"][1]["Id"] = 3320483 -- 【库】职业养成珍品礼包[属性:0]
	tCareerDevelopmentRank_Data[3320483]["RewardItem"] = {}
	tCareerDevelopmentRank_Data[3320483]["RewardItem"][1] = {}
	tCareerDevelopmentRank_Data[3320483]["RewardItem"][1]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8]【表格】神纹源晶
	tCareerDevelopmentRank_Data[3320483]["RewardItem"][1]["Attr"] = "0 3 3" -- RuneCrystal(赠)*3
	tCareerDevelopmentRank_Data[3320483]["RewardItem"][2] = {}
	tCareerDevelopmentRank_Data[3320483]["RewardItem"][2]["Id"] = 3008223 -- 【库】IvoryJade[属性:9]【表格】昆仑玉
	tCareerDevelopmentRank_Data[3320483]["RewardItem"][2]["Attr"] = "0 3" -- IvoryJade*3
	tCareerDevelopmentRank_Data[3320483]["RewardItem"][3] = {}
	tCareerDevelopmentRank_Data[3320483]["RewardItem"][3]["Id"] = 195495 -- 【库】天龙八部[属性:0]【表格】天龙八部
	tCareerDevelopmentRank_Data[3320483]["RewardItem"][3]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑天龙八部(赠)*1
	tCareerDevelopmentRank_Data[3320483]["RewardEffect"] = {}
	tCareerDevelopmentRank_Data[3320483]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCareerDevelopmentRank_Data[3320483]["RewardEffect"]["Effect"] = "angelwing"

----------------------------------逻辑部分---------------------------------------------
--可选包 二次确认
function CareerDevelopmentRank_SelectPack(nItemId,nIndex)
	-- 检测物品是否存在
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return 
	end
	-- 判断背包空间
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tCareerDevelopmentRank_Data[nItemId][nIndex])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tCareerDevelopmentRank_Data[nItemId][nIndex])
	local nSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nSpace) then
		local sMsg=string.format(tCareerDevelopmentRank_Text["SystemTips"]["NoSpace"],nSpace)
		Sys_MsgBox(sMsg)
		return
	end
	
	--二次确认
	local sChooseName=tCareerDevelopmentRank_Text["ItemName"][nItemId][nIndex]
	tItem[nItemId]["Text121"]=string.format(tCareerDevelopmentRank_Text[3320477]["Text121"],sChooseName)
	tItem[nItemId]["OptionFunc4"]="CareerDevelopmentRank_OpenSelectPack</N>".. nItemId .."</N>" .. nIndex
	LinkItemGossipFunc_New(nItemId,"1-2")
end


--打开可选包
function CareerDevelopmentRank_OpenSelectPack(nItemId,nIndex)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tCareerDevelopmentRank_Data[nItemId][nIndex])
	if not bJudge then
		return
	end
	RewardTemplate_UseItemAndMsg(tCareerDevelopmentRank_Data[nItemId][nIndex],nUserId,bJudge)
end 

--全服排名礼包
function CareerDevelopmentRank_AllServersRankPack(nItemId)
	local nUserId = Get_UserId()
	local nSex = Get_UserSex(nUserId)
	local bJudge = TermsOfUse_Main(nItemId,tCareerDevelopmentRank_Data[nItemId][nSex])
	if not bJudge then
		return
	end
	RewardTemplate_UseItemAndMsg(tCareerDevelopmentRank_Data[nItemId][nSex],nUserId,bJudge)
end

---------------------------------物品部分---------------------------------------------
--有对白
--2天时效外套（赠）可选包 三选一
tItemFace[3320473] = 1012
tItem[3320473] = tItem[3320473] or {}
tItem[3320473]["DialogueText"] = tCareerDevelopmentRank_Text[3320473]
tItem[3320473]["Text1-1"] = {111}
tItem[3320473]["tOption1-1"] = {1,2,3}
tItem[3320473]["OptionFunc1"] = "CareerDevelopmentRank_SelectPack</N>3320473</N>1"
tItem[3320473]["OptionFunc2"] = "CareerDevelopmentRank_SelectPack</N>3320473</N>2"
tItem[3320473]["OptionFunc3"] = "CareerDevelopmentRank_SelectPack</N>3320473</N>3"

tItem[3320473]["Text1-2"] = {121}
tItem[3320473]["tOption1-2"] = {4,5}

--2天时效外套（赠）可选包 二选一
tItemFace[3320474] = 1029
tItem[3320474] = tItem[3320474] or {}
tItem[3320474]["DialogueText"] = tCareerDevelopmentRank_Text[3320474]
tItem[3320474]["Text1-1"] = {111}
tItem[3320474]["tOption1-1"] = {1,2}
tItem[3320474]["OptionFunc1"] = "CareerDevelopmentRank_SelectPack</N>3320474</N>1"
tItem[3320474]["OptionFunc2"] = "CareerDevelopmentRank_SelectPack</N>3320474</N>2"

tItem[3320474]["Text1-2"] = {121}
tItem[3320474]["tOption1-2"] = {4,5}

--360天五星坐骑外套（赠）可选包
tItemFace[3320475] = 1952
tItem[3320475] = tItem[3320475] or {}
tItem[3320475]["DialogueText"] = tCareerDevelopmentRank_Text[3320475]
tItem[3320475]["Text1-1"] = {111}
tItem[3320475]["tOption1-1"] = {1,2}
tItem[3320475]["OptionFunc1"] = "CareerDevelopmentRank_SelectPack</N>3320475</N>1"
tItem[3320475]["OptionFunc2"] = "CareerDevelopmentRank_SelectPack</N>3320475</N>2"

tItem[3320475]["Text1-2"] = {121}
tItem[3320475]["tOption1-2"] = {4,5}

--180天五星坐骑外套（赠）可选包
tItemFace[3320476] = 1016
tItem[3320476] = tItem[3320476] or {}
tItem[3320476]["DialogueText"] = tCareerDevelopmentRank_Text[3320476]
tItem[3320476]["Text1-1"] = {111}
tItem[3320476]["tOption1-1"] = {1,2}
tItem[3320476]["OptionFunc1"] = "CareerDevelopmentRank_SelectPack</N>3320476</N>1"
tItem[3320476]["OptionFunc2"] = "CareerDevelopmentRank_SelectPack</N>3320476</N>2"

tItem[3320476]["Text1-2"] = {121}
tItem[3320476]["tOption1-2"] = {4,5}

--90天五星坐骑外套（赠）可选包
tItemFace[3320477] = 1039
tItem[3320477] = tItem[3320477] or {}
tItem[3320477]["DialogueText"] = tCareerDevelopmentRank_Text[3320477]
tItem[3320477]["Text1-1"] = {111}
tItem[3320477]["tOption1-1"] = {1,2}
tItem[3320477]["OptionFunc1"] = "CareerDevelopmentRank_SelectPack</N>3320477</N>1"
tItem[3320477]["OptionFunc2"] = "CareerDevelopmentRank_SelectPack</N>3320477</N>2"

tItem[3320477]["Text1-2"] = {121}
tItem[3320477]["tOption1-2"] = {4,5}

--90天四星坐骑外套（赠）可选包
tItemFace[3320478] = 1430
tItem[3320478] = tItem[3320478] or {}
tItem[3320478]["DialogueText"] = tCareerDevelopmentRank_Text[3320478]
tItem[3320478]["Text1-1"] = {111}
tItem[3320478]["tOption1-1"] = {1,2}
tItem[3320478]["OptionFunc1"] = "CareerDevelopmentRank_SelectPack</N>3320478</N>1"
tItem[3320478]["OptionFunc2"] = "CareerDevelopmentRank_SelectPack</N>3320478</N>2"

tItem[3320478]["Text1-2"] = {121}
tItem[3320478]["tOption1-2"] = {4,5}

--无对白
--全服排名礼包
tItem[3320484] = tItem[3320484] or {}
tItem[3320484]["Function"] = function(nItemId,sItemName)
	CareerDevelopmentRank_AllServersRankPack(nItemId)
end
tItem[3320485] = tItem[3320484]
tItem[3320486] = tItem[3320484]
tItem[3320487] = tItem[3320484]
tItem[3320488] = tItem[3320484]
tItem[3320489] = tItem[3320484]

--常规礼包
tItem[3320466] = tItem[3320466] or {}
tItem[3320466]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tCareerDevelopmentRank_Data[nItemId])
	
	if not bJudge then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tCareerDevelopmentRank_Data[nItemId],nUserId,bJudge)
end

tItem[3320467] = tItem[3320466]
tItem[3320468] = tItem[3320466]
tItem[3320469] = tItem[3320466]
tItem[3320470] = tItem[3320466]
tItem[3320471] = tItem[3320466]
tItem[3320472] = tItem[3320466]
tItem[3320479] = tItem[3320466]
tItem[3320480] = tItem[3320466]
tItem[3320481] = tItem[3320466]
tItem[3320482] = tItem[3320466]
tItem[3320483] = tItem[3320466]
