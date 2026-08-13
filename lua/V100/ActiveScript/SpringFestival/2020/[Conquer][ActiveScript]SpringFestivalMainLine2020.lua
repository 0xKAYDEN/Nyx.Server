------------------------------------------------------------------------------------
--Name：            191216[简体征服][活动脚本]春节活动制作主线2020
--Creator:      黄啸
--Created:     2019/12/16
------------------------------------------------------------------------------------

--命名前缀
--SpringFestivalMainLine2020_

--logid： 12001792

-- 物品
-- 3314820,福运春联

--王贤制作：3327303,鼠年幸运礼包
--王贤制作：3327287,鼠年鸿运礼包
--王贤制作：3327304,新年时装福禄包
--王贤制作：3327305,压岁钱红包
--王贤制作：3327306,金鼠报喜大礼包
--王贤制作：3327307,春节新衣回归礼盒
--王贤制作：3327309,新春有礼大福袋
--王贤制作：3327310,100天石（赠）鼠年红包 
--王贤制作：3327311,300天石（赠）鼠年红包  
--王贤制作：3327312,1000天石（赠）鼠年红包     
--清海制作：3327295,年兽图鉴

-- 3314831,全球福气桂冠礼盒
-- 3314832,全球福气尊享礼盒    
-- 3314833,全球福气豪华礼盒
-- 3314834,全球福气精装礼盒
-- 3314835,全球第一福星礼盒
-- 3314836,本服福气桂冠礼盒
-- 3314837,本服福气尊享礼盒
-- 3314838,本服福气豪华礼盒
-- 3314839,本服福气精装礼盒
-- 3314840,新年鞭炮


-- npc名,
-- 25784,【全球共贺中国年】财神爷
-- 25785,【穿新衣】织女
-- 25786,【全球第一福星】天瑞祥狮
-- 25787,【跨国共贺中国年】灶王爷(不是我做)
-- 翁清海制作：25792,'火云神狮'
-- 拜年npc 就是平常的日常任务大使

-- stc,211 69 等级达到、每天首次对白、触发剧情脚本、引导玩家去体验春节习俗

--主线习俗一 对春联活动
-- stc,211 70 --接任务data位子2，完成任务data位子1
--主线习俗二 拜年
-- stc,211 71 日常任务大使
-- stc,211 72 收藏家
-- stc,211 73 药铺老板
-- stc,211 74 户籍官员
-- stc,211 75 暹罗神医
-- stc,211 76 玄机老人
-- stc,211 77 仙境引渡使
-- stc,211 78 乾坤五行炉
-- stc,211 80 转服大使
-- stc,211 81 季如风

--emoneylog
-- 10000 1369



-------------------------------------------数据部分-----------------------------------------
--活动时间
local tSpringFestivalMainLine2020_Time = {}
tSpringFestivalMainLine2020_Time["BeforeActivity"] = tActivityTime["SpringFestivalMainLine2020"]["BeforeActivityTime"]
tSpringFestivalMainLine2020_Time["Activity"] = tActivityTime["SpringFestivalMainLine2020"]["ActivityTime"]
tSpringFestivalMainLine2020_Time["Level"] = 80
tSpringFestivalMainLine2020_Time["Meto"] = 0

--基本数据
local tSpringFestivalMainLine2020_Reward = {}
	--拜年完毕给红包
	tSpringFestivalMainLine2020_Reward["PayNewYear"] = {}
	tSpringFestivalMainLine2020_Reward["PayNewYear"]["RewardItem"] = {}
	tSpringFestivalMainLine2020_Reward["PayNewYear"]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_Reward["PayNewYear"]["RewardItem"][1]["Id"] = 3327303
	tSpringFestivalMainLine2020_Reward["PayNewYear"]["RewardItem"][1]["Attr"] = "0 1"
	tSpringFestivalMainLine2020_Reward["PayNewYear"]["RewardItem"][2] = {}
	tSpringFestivalMainLine2020_Reward["PayNewYear"]["RewardItem"][2]["Id"] = 3314840
	tSpringFestivalMainLine2020_Reward["PayNewYear"]["RewardItem"][2]["Attr"] = "0 1"
	tSpringFestivalMainLine2020_Reward["PayNewYear"]["LogId"] = 12001792
	tSpringFestivalMainLine2020_Reward["PayNewYear"]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_Reward["PayNewYear"]["RewardEffect"]["SzObj"] = "self"
	tSpringFestivalMainLine2020_Reward["PayNewYear"]["RewardEffect"]["Effect"] = "angelwing"	
	
	--完成日常后年兽图鉴
	tSpringFestivalMainLine2020_Reward["NewYearCaculate"] = {}
	tSpringFestivalMainLine2020_Reward["NewYearCaculate"]["RewardItem"] = {}
	tSpringFestivalMainLine2020_Reward["NewYearCaculate"]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_Reward["NewYearCaculate"]["RewardItem"][1]["Id"] = 3327295
	tSpringFestivalMainLine2020_Reward["NewYearCaculate"]["RewardItem"][1]["Attr"] = "0 1"
	tSpringFestivalMainLine2020_Reward["NewYearCaculate"]["RewardItem"][2] = {}
	tSpringFestivalMainLine2020_Reward["NewYearCaculate"]["RewardItem"][2]["Id"] = 3600237
	tSpringFestivalMainLine2020_Reward["NewYearCaculate"]["RewardItem"][2]["Attr"] = "0 1 3"
	tSpringFestivalMainLine2020_Reward["NewYearCaculate"]["LogId"] = 12001792
	tSpringFestivalMainLine2020_Reward["NewYearCaculate"]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_Reward["NewYearCaculate"]["RewardEffect"]["SzObj"] = "self"
	tSpringFestivalMainLine2020_Reward["NewYearCaculate"]["RewardEffect"]["Effect"] = "zf2-e128"	
	
	tSpringFestivalMainLine2020_Reward["EggCaculate"] = {}
	tSpringFestivalMainLine2020_Reward["EggCaculate"]["RewardItem"] = {}
	tSpringFestivalMainLine2020_Reward["EggCaculate"]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_Reward["EggCaculate"]["RewardItem"][1]["Id"] = 3600237
	tSpringFestivalMainLine2020_Reward["EggCaculate"]["RewardItem"][1]["Attr"] = "0 1 3"
	tSpringFestivalMainLine2020_Reward["EggCaculate"]["LogId"] = 12001792
	tSpringFestivalMainLine2020_Reward["EggCaculate"]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_Reward["EggCaculate"]["RewardEffect"]["SzObj"] = "self"
	tSpringFestivalMainLine2020_Reward["EggCaculate"]["RewardEffect"]["Effect"] = "zf2-e128"	
	
	--补领图鉴
	tSpringFestivalMainLine2020_Reward["BuCaculate"] = {}
	tSpringFestivalMainLine2020_Reward["BuCaculate"]["RewardItem"] = {}
	tSpringFestivalMainLine2020_Reward["BuCaculate"]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_Reward["BuCaculate"]["RewardItem"][1]["Id"] = 3327295
	tSpringFestivalMainLine2020_Reward["BuCaculate"]["RewardItem"][1]["Attr"] = "0 1"
	tSpringFestivalMainLine2020_Reward["BuCaculate"]["LogId"] = 12001792
	tSpringFestivalMainLine2020_Reward["BuCaculate"]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_Reward["BuCaculate"]["RewardEffect"]["SzObj"] = "self"
	tSpringFestivalMainLine2020_Reward["BuCaculate"]["RewardEffect"]["Effect"] = "zf2-e128"	
	
	-- ===200福气值
	-- ===索引: tSpringFestivalMainLine2020_Reward[1]
	-- ===
	-- ===
	tSpringFestivalMainLine2020_Reward[1] = {}
	tSpringFestivalMainLine2020_Reward[1]["LogId"] = 12001792
	tSpringFestivalMainLine2020_Reward[1]["RewardStrengthValue"] = {}
	tSpringFestivalMainLine2020_Reward[1]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000点气力值
	tSpringFestivalMainLine2020_Reward[1]["RewardItem"] = {}
	tSpringFestivalMainLine2020_Reward[1]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_Reward[1]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4（赠）
	tSpringFestivalMainLine2020_Reward[1]["RewardItem"][1]["Attr"] = "0 1 3" -- +4赤炼石*1
	tSpringFestivalMainLine2020_Reward[1]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_Reward[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestivalMainLine2020_Reward[1]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestivalMainLine2020_Reward[2] = {}
	-- ===500福气值
	-- ===索引: tSpringFestivalMainLine2020_Reward[2]
	-- ===
	-- ===
	tSpringFestivalMainLine2020_Reward[2]["LogId"] = 12001792
	tSpringFestivalMainLine2020_Reward[2]["RewardStrengthValue"] = {}
	tSpringFestivalMainLine2020_Reward[2]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000点气力值
	tSpringFestivalMainLine2020_Reward[2]["RewardItem"] = {}
	tSpringFestivalMainLine2020_Reward[2]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_Reward[2]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tSpringFestivalMainLine2020_Reward[2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tSpringFestivalMainLine2020_Reward[2]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_Reward[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestivalMainLine2020_Reward[2]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestivalMainLine2020_Reward[3] = {}
	-- ===1000福气值
	-- ===索引: tSpringFestivalMainLine2020_Reward[3]
	-- ===
	-- ===
	tSpringFestivalMainLine2020_Reward[3]["LogId"] = 12001792
	tSpringFestivalMainLine2020_Reward[3]["RewardStrengthValue"] = {}
	tSpringFestivalMainLine2020_Reward[3]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000点气力值
	tSpringFestivalMainLine2020_Reward[3]["RewardItem"] = {}
	tSpringFestivalMainLine2020_Reward[3]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_Reward[3]["RewardItem"][1]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:10000][金币:0], 【表格】天灵果
	tSpringFestivalMainLine2020_Reward[3]["RewardItem"][1]["Attr"] = "0 1" -- 天灵果*1
	tSpringFestivalMainLine2020_Reward[3]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_Reward[3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestivalMainLine2020_Reward[3]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestivalMainLine2020_Reward[4] = {}
	-- ===2500福气值
	-- ===索引: tSpringFestivalMainLine2020_Reward[4]
	-- ===
	-- ===
	tSpringFestivalMainLine2020_Reward[4]["LogId"] = 12001792
	tSpringFestivalMainLine2020_Reward[4]["RewardItem"] = {}
	tSpringFestivalMainLine2020_Reward[4]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_Reward[4]["RewardItem"][1]["Id"] = 196015 --  196015 【库里没有该物品】, 【表格】新年时装外套（赠）
	tSpringFestivalMainLine2020_Reward[4]["RewardItem"][1]["Attr"] = "0 1 3" --  196015 【库里没有该物品】*1
	tSpringFestivalMainLine2020_Reward[4]["RewardStrengthValue"] = {}
	tSpringFestivalMainLine2020_Reward[4]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】5000点气力值
	tSpringFestivalMainLine2020_Reward[4]["RewardItem"][2] = {}
	tSpringFestivalMainLine2020_Reward[4]["RewardItem"][2]["Id"] = 3306365 -- 黄色神纹(赠)可选包[3306365][属性:9][叠加:10000][金币:0], 【表格】黄色神纹（赠）
	tSpringFestivalMainLine2020_Reward[4]["RewardItem"][2]["Attr"] = "0 1" -- 黄色神纹(赠)可选包*1
	tSpringFestivalMainLine2020_Reward[4]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_Reward[4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestivalMainLine2020_Reward[4]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestivalMainLine2020_Reward[5] = {}
	-- ===5000福气值
	-- ===索引: tSpringFestivalMainLine2020_Reward[5]
	-- ===
	-- ===
	tSpringFestivalMainLine2020_Reward[5]["LogId"] = 12001792
	tSpringFestivalMainLine2020_Reward[5]["RewardStrengthValue"] = {}
	tSpringFestivalMainLine2020_Reward[5]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000点气力值
	tSpringFestivalMainLine2020_Reward[5]["RewardItem"] = {}
	tSpringFestivalMainLine2020_Reward[5]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_Reward[5]["RewardItem"][1]["Id"] = 723694 -- 固化石[723694][属性:0][叠加:0][金币:0], 【表格】固化石（赠）
	tSpringFestivalMainLine2020_Reward[5]["RewardItem"][1]["Attr"] = "0 1 3" -- 固化石*1
	tSpringFestivalMainLine2020_Reward[5]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_Reward[5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestivalMainLine2020_Reward[5]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestivalMainLine2020_Reward[6] = {}
	-- ===8888福气值
	-- ===索引: tSpringFestivalMainLine2020_Reward[6]
	-- ===
	-- ===
	tSpringFestivalMainLine2020_Reward[6]["LogId"] = 12001792
	tSpringFestivalMainLine2020_Reward[6]["RewardItem"] = {}
	tSpringFestivalMainLine2020_Reward[6]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_Reward[6]["RewardItem"][1]["Id"] = 200665 --  200665 【库里没有该物品】, 【表格】新年坐骑外套（赠）
	tSpringFestivalMainLine2020_Reward[6]["RewardItem"][1]["Attr"] = "0 1 3" --  200665 【库里没有该物品】*1
	tSpringFestivalMainLine2020_Reward[6]["RewardStrengthValue"] = {}
	tSpringFestivalMainLine2020_Reward[6]["RewardStrengthValue"]["Value"] = 15000 -- 气力值, 【需求】15000点气力值
	tSpringFestivalMainLine2020_Reward[6]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_Reward[6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestivalMainLine2020_Reward[6]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestivalMainLine2020_Reward[7] = {}
	-- ===>8888福气值
	-- ===索引: tSpringFestivalMainLine2020_Reward[7]
	-- ===
	-- ===
	tSpringFestivalMainLine2020_Reward[7]["LogId"] = 12001792
	tSpringFestivalMainLine2020_Reward[7]["RewardItem"] = {}
	tSpringFestivalMainLine2020_Reward[7]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_Reward[7]["RewardItem"][1]["Id"] = 3327313 --  3327313 【库里没有该物品】, 【表格】光效时装碎片
	tSpringFestivalMainLine2020_Reward[7]["RewardItem"][1]["Attr"] = "0 2" --  3327313 【库里没有该物品】*1
	tSpringFestivalMainLine2020_Reward[7]["RewardItem"][2] = {}
	tSpringFestivalMainLine2020_Reward[7]["RewardItem"][2]["Id"] = 3327314 --  3327314 【库里没有该物品】, 【表格】光效坐骑碎片
	tSpringFestivalMainLine2020_Reward[7]["RewardItem"][2]["Attr"] = "0 1" --  3327314 【库里没有该物品】*1
	tSpringFestivalMainLine2020_Reward[7]["RewardItem"][3] = {}
	tSpringFestivalMainLine2020_Reward[7]["RewardItem"][3]["Id"] = 3327312 --  3327310 【库里没有该物品】, 【表格】 100天石（赠）鼠年红包
	tSpringFestivalMainLine2020_Reward[7]["RewardItem"][3]["Attr"] = "0 1" --  3327310 【库里没有该物品】*1
	tSpringFestivalMainLine2020_Reward[7]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_Reward[7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestivalMainLine2020_Reward[7]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestivalMainLine2020_Reward[3314831] = {}
	-- ===全球福气桂冠礼盒
	-- ===索引: tSpringFestivalMainLine2020_Reward[3314831]
	-- ===删除:3314831,1
	-- ===
	tSpringFestivalMainLine2020_Reward[3314831]["LogId"] = 12001792
	tSpringFestivalMainLine2020_Reward[3314831]["DeleteItem"] = {}
	tSpringFestivalMainLine2020_Reward[3314831]["DeleteItem"][1] = {}
	tSpringFestivalMainLine2020_Reward[3314831]["DeleteItem"][1]["Id"] = 3314831 -- 【库】 3314831 【库里没有该物品】[属性:]
	tSpringFestivalMainLine2020_Reward[3314831]["RewardItem"] = {}
	tSpringFestivalMainLine2020_Reward[3314831]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_Reward[3314831]["RewardItem"][1]["Id"] = 4200012 -- 12阶灵珠[4200012][属性:72][叠加:99][金币:0], 【表格】12阶灵珠
	tSpringFestivalMainLine2020_Reward[3314831]["RewardItem"][1]["Attr"] = "0 1" -- 12阶灵珠*1
	tSpringFestivalMainLine2020_Reward[3314831]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tSpringFestivalMainLine2020_Reward[3314831]["RewardItem"][2] = {}
	tSpringFestivalMainLine2020_Reward[3314831]["RewardItem"][2]["Id"] = 3312777 -- 黄色神纹(赠)可选包[3312777][属性:9][叠加:10000][金币:0], 【表格】稀有黄色神纹可选包（赠）
	tSpringFestivalMainLine2020_Reward[3314831]["RewardItem"][2]["Attr"] = "0 1" -- 黄色神纹(赠)可选包*1
	tSpringFestivalMainLine2020_Reward[3314831]["RewardWing"] = {}
	tSpringFestivalMainLine2020_Reward[3314831]["RewardWing"]["TitleType"] = 6033 -- 【库】新年专属翅膀, 【表格】新年专属大翅膀
	tSpringFestivalMainLine2020_Reward[3314831]["RewardWing"]["TitleId"] = 6033
	tSpringFestivalMainLine2020_Reward[3314831]["RewardWing"]["SaveTime"] = 0 -- 永久时效的[翅膀]:新年专属翅膀, 【需求】新年专属大翅膀
	tSpringFestivalMainLine2020_Reward[3314831]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_Reward[3314831]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestivalMainLine2020_Reward[3314831]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestivalMainLine2020_Reward[3314832] = {}
	-- ===全球福气尊享礼盒
	-- ===索引: tSpringFestivalMainLine2020_Reward[3314832]
	-- ===删除:3314832,1
	-- ===
	tSpringFestivalMainLine2020_Reward[3314832]["LogId"] = 12001792
	tSpringFestivalMainLine2020_Reward[3314832]["DeleteItem"] = {}
	tSpringFestivalMainLine2020_Reward[3314832]["DeleteItem"][1] = {}
	tSpringFestivalMainLine2020_Reward[3314832]["DeleteItem"][1]["Id"] = 3314832 -- 【库】 3314832 【库里没有该物品】[属性:]
	tSpringFestivalMainLine2020_Reward[3314832]["RewardWing"] = {}
	tSpringFestivalMainLine2020_Reward[3314832]["RewardWing"]["TitleType"] = 6033 -- 【库】新年专属翅膀, 【表格】新年专属大翅膀
	tSpringFestivalMainLine2020_Reward[3314832]["RewardWing"]["TitleId"] = 6033
	tSpringFestivalMainLine2020_Reward[3314832]["RewardWing"]["SaveTime"] = 0 -- 永久时效的[翅膀]:新年专属翅膀, 【需求】新年专属大翅膀
	tSpringFestivalMainLine2020_Reward[3314832]["RewardItem"] = {}
	tSpringFestivalMainLine2020_Reward[3314832]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_Reward[3314832]["RewardItem"][1]["Id"] = 4200010 -- 10阶灵珠[4200010][属性:72][叠加:99][金币:0], 【表格】10阶灵珠
	tSpringFestivalMainLine2020_Reward[3314832]["RewardItem"][1]["Attr"] = "0 1" -- 10阶灵珠*1
	tSpringFestivalMainLine2020_Reward[3314832]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tSpringFestivalMainLine2020_Reward[3314832]["RewardItem"][2] = {}
	tSpringFestivalMainLine2020_Reward[3314832]["RewardItem"][2]["Id"] = 3312777 -- 黄色神纹(赠)可选包[3312777][属性:9][叠加:10000][金币:0], 【表格】稀有黄色神纹可选包（赠）
	tSpringFestivalMainLine2020_Reward[3314832]["RewardItem"][2]["Attr"] = "0 1" -- 黄色神纹(赠)可选包*1
	tSpringFestivalMainLine2020_Reward[3314832]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_Reward[3314832]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestivalMainLine2020_Reward[3314832]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestivalMainLine2020_Reward[3314833] = {}
	-- ===全球福气豪华礼盒
	-- ===索引: tSpringFestivalMainLine2020_Reward[3314833]
	-- ===删除:3314833,1
	-- ===
	tSpringFestivalMainLine2020_Reward[3314833]["LogId"] = 12001792
	tSpringFestivalMainLine2020_Reward[3314833]["DeleteItem"] = {}
	tSpringFestivalMainLine2020_Reward[3314833]["DeleteItem"][1] = {}
	tSpringFestivalMainLine2020_Reward[3314833]["DeleteItem"][1]["Id"] = 3314833 -- 【库】 3314833 【库里没有该物品】[属性:]
	tSpringFestivalMainLine2020_Reward[3314833]["RewardItem"] = {}
	tSpringFestivalMainLine2020_Reward[3314833]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_Reward[3314833]["RewardItem"][1]["Id"] = 4200009 -- 9阶灵珠[4200009][属性:72][叠加:99][金币:0], 【表格】9阶灵珠
	tSpringFestivalMainLine2020_Reward[3314833]["RewardItem"][1]["Attr"] = "0 1" -- 9阶灵珠*1
	tSpringFestivalMainLine2020_Reward[3314833]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tSpringFestivalMainLine2020_Reward[3314833]["RewardItem"][2] = {}
	tSpringFestivalMainLine2020_Reward[3314833]["RewardItem"][2]["Id"] = 3312777 -- 黄色神纹(赠)可选包[3312777][属性:9][叠加:10000][金币:0], 【表格】1个稀有黄色神纹可选包（赠）
	tSpringFestivalMainLine2020_Reward[3314833]["RewardItem"][2]["Attr"] = "0 1" -- 黄色神纹(赠)可选包*1
	tSpringFestivalMainLine2020_Reward[3314833]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_Reward[3314833]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestivalMainLine2020_Reward[3314833]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestivalMainLine2020_Reward[3314834] = {}
	-- ===全球福气精装礼盒
	-- ===索引: tSpringFestivalMainLine2020_Reward[3314834]
	-- ===删除:3314834,1
	-- ===
	tSpringFestivalMainLine2020_Reward[3314834]["LogId"] = 12001792
	tSpringFestivalMainLine2020_Reward[3314834]["DeleteItem"] = {}
	tSpringFestivalMainLine2020_Reward[3314834]["DeleteItem"][1] = {}
	tSpringFestivalMainLine2020_Reward[3314834]["DeleteItem"][1]["Id"] = 3314834 -- 【库】 3314834 【库里没有该物品】[属性:]
	tSpringFestivalMainLine2020_Reward[3314834]["RewardItem"] = {}
	tSpringFestivalMainLine2020_Reward[3314834]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_Reward[3314834]["RewardItem"][1]["Id"] = 4200008 -- 8阶灵珠[4200008][属性:72][叠加:99][金币:0], 【表格】8阶灵珠
	tSpringFestivalMainLine2020_Reward[3314834]["RewardItem"][1]["Attr"] = "0 1" -- 8阶灵珠*1
	tSpringFestivalMainLine2020_Reward[3314834]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tSpringFestivalMainLine2020_Reward[3314834]["RewardItem"][2] = {}
	tSpringFestivalMainLine2020_Reward[3314834]["RewardItem"][2]["Id"] = 3312777 -- 黄色神纹(赠)可选包[3312777][属性:9][叠加:10000][金币:0], 【表格】稀有黄色神纹可选包（赠）
	tSpringFestivalMainLine2020_Reward[3314834]["RewardItem"][2]["Attr"] = "0 1" -- 黄色神纹(赠)可选包*1
	tSpringFestivalMainLine2020_Reward[3314834]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_Reward[3314834]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestivalMainLine2020_Reward[3314834]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestivalMainLine2020_Reward[3314835] = {}
	-- ===全球第一福星礼盒
	-- ===索引: tSpringFestivalMainLine2020_Reward[3314835]
	-- ===删除:3314835,1
	-- ===
	tSpringFestivalMainLine2020_Reward[3314835]["LogId"] = 12001792
	tSpringFestivalMainLine2020_Reward[3314835]["DeleteItem"] = {}
	tSpringFestivalMainLine2020_Reward[3314835]["DeleteItem"][1] = {}
	tSpringFestivalMainLine2020_Reward[3314835]["DeleteItem"][1]["Id"] = 3314835 -- 【库】 3314835 【库里没有该物品】[属性:]
	tSpringFestivalMainLine2020_Reward[3314835]["RewardItem"] = {}
	tSpringFestivalMainLine2020_Reward[3314835]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_Reward[3314835]["RewardItem"][1]["Id"] = 200664 --  200663 【库里没有该物品】, 【表格】天瑞祥狮
	tSpringFestivalMainLine2020_Reward[3314835]["RewardItem"][1]["Attr"] = "0 1" --  200663 【库里没有该物品】*1
	tSpringFestivalMainLine2020_Reward[3314835]["RewardTitle"] = {}
	tSpringFestivalMainLine2020_Reward[3314835]["RewardTitle"]["TitleType"] = 2176 -- 【库】鼠年称号, 【表格】鼠年定制称号
	tSpringFestivalMainLine2020_Reward[3314835]["RewardTitle"]["TitleId"] = 2176
	tSpringFestivalMainLine2020_Reward[3314835]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:鼠年称号, 【需求】鼠年定制称号
	tSpringFestivalMainLine2020_Reward[3314835]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_Reward[3314835]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestivalMainLine2020_Reward[3314835]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestivalMainLine2020_Reward[3314836] = {}
	-- ===本服福气桂冠礼盒
	-- ===索引: tSpringFestivalMainLine2020_Reward[3314836]
	-- ===删除:3314836,1
	-- ===
	--奖励未配齐
	tSpringFestivalMainLine2020_Reward[3314836]["LogId"] = 12001792
	tSpringFestivalMainLine2020_Reward[3314836]["DeleteItem"] = {}
	tSpringFestivalMainLine2020_Reward[3314836]["DeleteItem"][1] = {}
	tSpringFestivalMainLine2020_Reward[3314836]["DeleteItem"][1]["Id"] = 3314836 -- 【库】 3314836 【库里没有该物品】[属性:]
	tSpringFestivalMainLine2020_Reward[3314836]["RewardItem"] = {}
	tSpringFestivalMainLine2020_Reward[3314836]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_Reward[3314836]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】1200个万能神纹精粹
	tSpringFestivalMainLine2020_Reward[3314836]["RewardItem"][1]["Attr"] = "0 1200 3" -- 万能神纹精粹*1200（[错误]物品数量超100个）
	tSpringFestivalMainLine2020_Reward[3314836]["RewardWing"] = {}
	tSpringFestivalMainLine2020_Reward[3314836]["RewardWing"]["TitleType"] = 6034 -- 【库】专属小翅膀, 【表格】专属小翅膀
	tSpringFestivalMainLine2020_Reward[3314836]["RewardWing"]["TitleId"] = 6034
	tSpringFestivalMainLine2020_Reward[3314836]["RewardWing"]["SaveTime"] = 0 -- 永久时效的[翅膀]:新年专属翅膀, 【需求】新年专属翅膀
	tSpringFestivalMainLine2020_Reward[3314836]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_Reward[3314836]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestivalMainLine2020_Reward[3314836]["RewardEffect"]["Effect"] = "angelwing"
	tSpringFestivalMainLine2020_Reward[3314836]["HairId"] = 81


	tSpringFestivalMainLine2020_Reward[3314837] = {}
	-- ===本服福气尊享礼盒
	-- ===索引: tSpringFestivalMainLine2020_Reward[3314837]
	-- ===删除:3314837,1
	-- ===
	tSpringFestivalMainLine2020_Reward[3314837]["LogId"] = 12001792
	tSpringFestivalMainLine2020_Reward[3314837]["DeleteItem"] = {}
	tSpringFestivalMainLine2020_Reward[3314837]["DeleteItem"][1] = {}
	tSpringFestivalMainLine2020_Reward[3314837]["DeleteItem"][1]["Id"] = 3314837 -- 【库】 3314837 【库里没有该物品】[属性:]
	tSpringFestivalMainLine2020_Reward[3314837]["RewardItem"] = {}
	tSpringFestivalMainLine2020_Reward[3314837]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_Reward[3314837]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】1000个万能神纹精粹
	tSpringFestivalMainLine2020_Reward[3314837]["RewardItem"][1]["Attr"] = "0 1000 3" -- 万能神纹精粹*1000（[错误]物品数量超100个）
	tSpringFestivalMainLine2020_Reward[3314837]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_Reward[3314837]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestivalMainLine2020_Reward[3314837]["RewardEffect"]["Effect"] = "angelwing"
	tSpringFestivalMainLine2020_Reward[3314837]["HairId"] = 81


	tSpringFestivalMainLine2020_Reward[3314838] = {}
	-- ===本服福气豪华礼盒
	-- ===索引: tSpringFestivalMainLine2020_Reward[3314838]
	-- ===删除:3314838,1
	-- ===
	tSpringFestivalMainLine2020_Reward[3314838]["LogId"] = 12001792
	tSpringFestivalMainLine2020_Reward[3314838]["DeleteItem"] = {}
	tSpringFestivalMainLine2020_Reward[3314838]["DeleteItem"][1] = {}
	tSpringFestivalMainLine2020_Reward[3314838]["DeleteItem"][1]["Id"] = 3314838 -- 【库】 3314838 【库里没有该物品】[属性:]
	tSpringFestivalMainLine2020_Reward[3314838]["RewardStrengthValue"] = {}
	tSpringFestivalMainLine2020_Reward[3314838]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000点气力值
	tSpringFestivalMainLine2020_Reward[3314838]["RewardItem"] = {}
	tSpringFestivalMainLine2020_Reward[3314838]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_Reward[3314838]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】800个万能神纹精粹。
	tSpringFestivalMainLine2020_Reward[3314838]["RewardItem"][1]["Attr"] = "0 800 3" -- 万能神纹精粹*800（[错误]物品数量超100个）
	tSpringFestivalMainLine2020_Reward[3314838]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_Reward[3314838]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestivalMainLine2020_Reward[3314838]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestivalMainLine2020_Reward[3314839] = {}
	-- ===本服福气精装礼盒
	-- ===索引: tSpringFestivalMainLine2020_Reward[3314839]
	-- ===删除:3314839,1
	-- ===
	tSpringFestivalMainLine2020_Reward[3314839]["LogId"] = 12001792
	tSpringFestivalMainLine2020_Reward[3314839]["DeleteItem"] = {}
	tSpringFestivalMainLine2020_Reward[3314839]["DeleteItem"][1] = {}
	tSpringFestivalMainLine2020_Reward[3314839]["DeleteItem"][1]["Id"] = 3314839 -- 【库】 3314839 【库里没有该物品】[属性:]
	tSpringFestivalMainLine2020_Reward[3314839]["RewardStrengthValue"] = {}
	tSpringFestivalMainLine2020_Reward[3314839]["RewardStrengthValue"]["Value"] = 8000 -- 气力值, 【需求】8000点气力值
	tSpringFestivalMainLine2020_Reward[3314839]["RewardItem"] = {}
	tSpringFestivalMainLine2020_Reward[3314839]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_Reward[3314839]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】500个万能神纹精粹。
	tSpringFestivalMainLine2020_Reward[3314839]["RewardItem"][1]["Attr"] = "0 500 3" -- 万能神纹精粹*500（[错误]物品数量超100个）
	tSpringFestivalMainLine2020_Reward[3314839]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_Reward[3314839]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestivalMainLine2020_Reward[3314839]["RewardEffect"]["Effect"] = "angelwing"
	
	--给相应的服装外套
	tSpringFestivalMainLine2020_Reward["Dress"] = {}
	
	-- ===索引: tSpringFestivalMainLine2020_Reward["Dress"]
	
	tSpringFestivalMainLine2020_Reward["Dress"][1] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][1]["LogId"] = 12001792
	tSpringFestivalMainLine2020_Reward["Dress"][1]["RewardItem"] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][1]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][1]["RewardItem"][1]["Id"] = 192785 -- 火舞九天[192785][属性:0][叠加:0][金币:0], 【表格】火舞九天。
	tSpringFestivalMainLine2020_Reward["Dress"][1]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 火舞九天
	tSpringFestivalMainLine2020_Reward["Dress"][1]["RewardItem"][2] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][1]["RewardItem"][2]["Id"] = 3327303
	tSpringFestivalMainLine2020_Reward["Dress"][1]["RewardItem"][2]["Attr"] = "0 1" 
	tSpringFestivalMainLine2020_Reward["Dress"][1]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestivalMainLine2020_Reward["Dress"][1]["RewardEffect"]["Effect"] = "angelwing"
	
	tSpringFestivalMainLine2020_Reward["Dress"][2] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][2]["LogId"] = 12001792
	tSpringFestivalMainLine2020_Reward["Dress"][2]["RewardItem"] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][2]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][2]["RewardItem"][1]["Id"] = 188885 -- 辉耀之刺[188885][属性:0][叠加:0][金币:0], 【表格】辉耀之刺。
	tSpringFestivalMainLine2020_Reward["Dress"][2]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 辉耀之刺
	tSpringFestivalMainLine2020_Reward["Dress"][2]["RewardItem"][2] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][2]["RewardItem"][2]["Id"] = 3327303
	tSpringFestivalMainLine2020_Reward["Dress"][2]["RewardItem"][2]["Attr"] = "0 1" 
	tSpringFestivalMainLine2020_Reward["Dress"][2]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestivalMainLine2020_Reward["Dress"][2]["RewardEffect"]["Effect"] = "angelwing"
	
	tSpringFestivalMainLine2020_Reward["Dress"][3] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][3]["LogId"] = 12001792
	tSpringFestivalMainLine2020_Reward["Dress"][3]["RewardItem"] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][3]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][3]["RewardItem"][1]["Id"] = 195065 -- 福星天降[195065][属性:0][叠加:0][金币:0], 【表格】福星天降。
	tSpringFestivalMainLine2020_Reward["Dress"][3]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 福星天降
	tSpringFestivalMainLine2020_Reward["Dress"][3]["RewardItem"][2] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][3]["RewardItem"][2]["Id"] = 3327303
	tSpringFestivalMainLine2020_Reward["Dress"][3]["RewardItem"][2]["Attr"] = "0 1" 
	tSpringFestivalMainLine2020_Reward["Dress"][3]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestivalMainLine2020_Reward["Dress"][3]["RewardEffect"]["Effect"] = "angelwing"
	
	tSpringFestivalMainLine2020_Reward["Dress"][4] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][4]["LogId"] = 12001792
	tSpringFestivalMainLine2020_Reward["Dress"][4]["RewardItem"] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][4]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][4]["RewardItem"][1]["Id"] = 195875 -- 四海升平[195875][属性:0][叠加:0][金币:0], 【表格】四海升平。
	tSpringFestivalMainLine2020_Reward["Dress"][4]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 四海升平
	tSpringFestivalMainLine2020_Reward["Dress"][4]["RewardItem"][2] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][4]["RewardItem"][2]["Id"] = 3327303
	tSpringFestivalMainLine2020_Reward["Dress"][4]["RewardItem"][2]["Attr"] = "0 1" 
	tSpringFestivalMainLine2020_Reward["Dress"][4]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestivalMainLine2020_Reward["Dress"][4]["RewardEffect"]["Effect"] = "angelwing"
	
	tSpringFestivalMainLine2020_Reward["Dress"][5] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][5]["LogId"] = 12001792
	tSpringFestivalMainLine2020_Reward["Dress"][5]["RewardItem"] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][5]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][5]["RewardItem"][1]["Id"] = 193205 -- 洋洋得意[193205][属性:0][叠加:0][金币:0], 【表格】洋洋得意。
	tSpringFestivalMainLine2020_Reward["Dress"][5]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 洋洋得意
	tSpringFestivalMainLine2020_Reward["Dress"][5]["RewardItem"][2] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][5]["RewardItem"][2]["Id"] = 3327303
	tSpringFestivalMainLine2020_Reward["Dress"][5]["RewardItem"][2]["Attr"] = "0 1" 
	tSpringFestivalMainLine2020_Reward["Dress"][5]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestivalMainLine2020_Reward["Dress"][5]["RewardEffect"]["Effect"] = "angelwing"
	
	tSpringFestivalMainLine2020_Reward["Dress"][6] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][6]["LogId"] = 12001792
	tSpringFestivalMainLine2020_Reward["Dress"][6]["RewardItem"] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][6]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][6]["RewardItem"][1]["Id"] = 192575 -- 龙凤呈祥[192575][属性:0][叠加:0][金币:0], 【表格】龙凤呈祥。
	tSpringFestivalMainLine2020_Reward["Dress"][6]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 龙凤呈祥
	tSpringFestivalMainLine2020_Reward["Dress"][6]["RewardItem"][2] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][6]["RewardItem"][2]["Id"] = 3327303
	tSpringFestivalMainLine2020_Reward["Dress"][6]["RewardItem"][2]["Attr"] = "0 1" 
	tSpringFestivalMainLine2020_Reward["Dress"][6]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestivalMainLine2020_Reward["Dress"][6]["RewardEffect"]["Effect"] = "angelwing"
	
	tSpringFestivalMainLine2020_Reward["Dress"][7] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][7]["LogId"] = 12001792
	tSpringFestivalMainLine2020_Reward["Dress"][7]["RewardItem"] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][7]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][7]["RewardItem"][1]["Id"] = 191405 -- 金色富贵长袍[191405][属性:0][叠加:0][金币:0], 【表格】金色富贵长袍。
	tSpringFestivalMainLine2020_Reward["Dress"][7]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 金色富贵长袍
	tSpringFestivalMainLine2020_Reward["Dress"][7]["RewardItem"][2] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][7]["RewardItem"][2]["Id"] = 3327303
	tSpringFestivalMainLine2020_Reward["Dress"][7]["RewardItem"][2]["Attr"] = "0 1" 
	tSpringFestivalMainLine2020_Reward["Dress"][7]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestivalMainLine2020_Reward["Dress"][7]["RewardEffect"]["Effect"] = "angelwing"
	
	tSpringFestivalMainLine2020_Reward["Dress"][8] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][8]["LogId"] = 12001792
	tSpringFestivalMainLine2020_Reward["Dress"][8]["RewardItem"] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][8]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][8]["RewardItem"][1]["Id"] = 191305 -- 红色富贵长袍[191305][属性:0][叠加:0][金币:0], 【表格】红色富贵长袍。
	tSpringFestivalMainLine2020_Reward["Dress"][8]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 红色富贵长袍
	tSpringFestivalMainLine2020_Reward["Dress"][8]["RewardItem"][2] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][8]["RewardItem"][2]["Id"] = 3327303
	tSpringFestivalMainLine2020_Reward["Dress"][8]["RewardItem"][2]["Attr"] = "0 1" 
	tSpringFestivalMainLine2020_Reward["Dress"][8]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestivalMainLine2020_Reward["Dress"][8]["RewardEffect"]["Effect"] = "angelwing"
	
	tSpringFestivalMainLine2020_Reward["Dress"][9] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][9]["LogId"] = 12001792
	tSpringFestivalMainLine2020_Reward["Dress"][9]["RewardItem"] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][9]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][9]["RewardItem"][1]["Id"] = 193225 -- 春风得意[193225][属性:0][叠加:0][金币:0], 【表格】春风得意。
	tSpringFestivalMainLine2020_Reward["Dress"][9]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 春风得意
	tSpringFestivalMainLine2020_Reward["Dress"][9]["RewardItem"][2] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][9]["RewardItem"][2]["Id"] = 3327303
	tSpringFestivalMainLine2020_Reward["Dress"][9]["RewardItem"][2]["Attr"] = "0 1" 
	tSpringFestivalMainLine2020_Reward["Dress"][9]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_Reward["Dress"][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestivalMainLine2020_Reward["Dress"][9]["RewardEffect"]["Effect"] = "angelwing"

local tSpringFestivalMainLine2020_NewReward = {}
	tSpringFestivalMainLine2020_NewReward[200664] = {}
	tSpringFestivalMainLine2020_NewReward[200664]["LogId"] = 12001792
	tSpringFestivalMainLine2020_NewReward[200664]["RewardItem"] = {}
	tSpringFestivalMainLine2020_NewReward[200664]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_NewReward[200664]["RewardItem"][1]["Id"] = 200664 --ChineseLion(Splendid)
	tSpringFestivalMainLine2020_NewReward[200664]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- ChineseLion(Splendid)
	tSpringFestivalMainLine2020_NewReward[200664]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_NewReward[200664]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestivalMainLine2020_NewReward[200664]["RewardEffect"]["Effect"] = "angelwing"
	
	tSpringFestivalMainLine2020_NewReward[196015] = {}
	tSpringFestivalMainLine2020_NewReward[196015]["LogId"] = 12001792
	tSpringFestivalMainLine2020_NewReward[196015]["RewardItem"] = {}
	tSpringFestivalMainLine2020_NewReward[196015]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_NewReward[196015]["RewardItem"][1]["Id"] = 196015 --BabyRat
	tSpringFestivalMainLine2020_NewReward[196015]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- BabyRat
	tSpringFestivalMainLine2020_NewReward[196015]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_NewReward[196015]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestivalMainLine2020_NewReward[196015]["RewardEffect"]["Effect"] = "angelwing"
	
	tSpringFestivalMainLine2020_NewReward[200665] = {}
	tSpringFestivalMainLine2020_NewReward[200665]["LogId"] = 12001792
	tSpringFestivalMainLine2020_NewReward[200665]["RewardItem"] = {}
	tSpringFestivalMainLine2020_NewReward[200665]["RewardItem"][1] = {}
	tSpringFestivalMainLine2020_NewReward[200665]["RewardItem"][1]["Id"] = 200665 -- ShiningLion
	tSpringFestivalMainLine2020_NewReward[200665]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- ShiningLion
	tSpringFestivalMainLine2020_NewReward[200665]["RewardEffect"] = {}
	tSpringFestivalMainLine2020_NewReward[200665]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestivalMainLine2020_NewReward[200665]["RewardEffect"]["Effect"] = "angelwing"
	
local	tSpringFestivalMainLine2020_Mail = {}
	--邮件action
	tSpringFestivalMainLine2020_Mail["Mail"] = {}
	tSpringFestivalMainLine2020_Mail["Mail"]["ExistDay"] = 7
	tSpringFestivalMainLine2020_Mail["Mail"]["Action"] = 575838
	tSpringFestivalMainLine2020_Mail["Mail"]["sSender"] = tSpringFestivalMainLine2020_Text["Mail"]["sSender"]
	tSpringFestivalMainLine2020_Mail["Mail"]["sTitle"] = tSpringFestivalMainLine2020_Text["Mail"]["sTitle"]
	tSpringFestivalMainLine2020_Mail["Mail"]["sContent"] = tSpringFestivalMainLine2020_Text["Mail"]["sContent"]
	
--寻路到相关的点
local tSpringFestivalMainLine2020_LeadMap = {}
tSpringFestivalMainLine2020_LeadMap["Normal"] = {}
tSpringFestivalMainLine2020_LeadMap["Normal"]["MapId"] = 1002
tSpringFestivalMainLine2020_LeadMap["Normal"]["PosX"] = 334
tSpringFestivalMainLine2020_LeadMap["Normal"]["PosY"] = 567
tSpringFestivalMainLine2020_LeadMap["Special"] = {}
tSpringFestivalMainLine2020_LeadMap["Special"]["MapId"] = 1036
tSpringFestivalMainLine2020_LeadMap["Special"]["PosX"] = 214
tSpringFestivalMainLine2020_LeadMap["Special"]["PosY"] = 213

--跳转到新双龙城，再回来
local tSpringFestivalMainLine2020_NewDragonCity = {}
tSpringFestivalMainLine2020_NewDragonCity[1] = {}
tSpringFestivalMainLine2020_NewDragonCity[1]["MapId"] = 1002
tSpringFestivalMainLine2020_NewDragonCity[1]["PosX"] = 366
tSpringFestivalMainLine2020_NewDragonCity[1]["PosY"] = 443
tSpringFestivalMainLine2020_NewDragonCity[2] = {}
tSpringFestivalMainLine2020_NewDragonCity[2]["MapId"] = 1036
tSpringFestivalMainLine2020_NewDragonCity[2]["PosX"] = 178
tSpringFestivalMainLine2020_NewDragonCity[2]["PosY"] = 171


--关键掩码处理
local tSpringFestivalMainLine2020_Stc = {}
tSpringFestivalMainLine2020_Stc[1] = {211,71}
tSpringFestivalMainLine2020_Stc[2] = {211,72}
tSpringFestivalMainLine2020_Stc[3] = {211,73}
tSpringFestivalMainLine2020_Stc[4] = {211,74}
tSpringFestivalMainLine2020_Stc[5] = {211,75}
tSpringFestivalMainLine2020_Stc[6] = {211,76}
tSpringFestivalMainLine2020_Stc[7] = {211,77}
tSpringFestivalMainLine2020_Stc[8] = {211,78}
tSpringFestivalMainLine2020_Stc[9] = {211,81}
tSpringFestivalMainLine2020_Stc[10] = {211,69}
tSpringFestivalMainLine2020_Stc[11] = {211,70}
--寻找火云神狮
tSpringFestivalMainLine2020_Stc[12] = {211,82}

--领取福气的掩码值
local tSpringFestivalMainLine2020_FuStc = {}
tSpringFestivalMainLine2020_FuStc[1] = {211,83,200}
tSpringFestivalMainLine2020_FuStc[2] = {211,84,500}
tSpringFestivalMainLine2020_FuStc[3] = {211,85,1000}
tSpringFestivalMainLine2020_FuStc[4] = {211,86,2500}
tSpringFestivalMainLine2020_FuStc[5] = {211,87,5000}
tSpringFestivalMainLine2020_FuStc[6] = {211,88,8888}
tSpringFestivalMainLine2020_FuStc[7] = {211,89,0}

--拜年任务完成
local tSpringFestivalMainLine2020_BaiStc = {}
tSpringFestivalMainLine2020_BaiStc[1] =  {211,72,2070}
-- 日常任务大使激情服没有，这里就去掉
-- tSpringFestivalMainLine2020_BaiStc[2] =  {211,71,22050}
tSpringFestivalMainLine2020_BaiStc[2] =  {211,73,141}
tSpringFestivalMainLine2020_BaiStc[3] =  {211,74,7935}
tSpringFestivalMainLine2020_BaiStc[4] =  {211,75,15805}
tSpringFestivalMainLine2020_BaiStc[5] =  {211,76,23021}
tSpringFestivalMainLine2020_BaiStc[6] =  {211,77,923}
tSpringFestivalMainLine2020_BaiStc[7] =  {211,78,35016}
tSpringFestivalMainLine2020_BaiStc[8] =  {211,81,6001}


--记录本服总福气值
local tSpringFestivalMainLine2020_FuGlobalId = {}
tSpringFestivalMainLine2020_FuGlobalId["SumGlobal"] = {54089,0}
tSpringFestivalMainLine2020_FuGlobalId["PersonGrade"] = {212,22}
tSpringFestivalMainLine2020_FuGlobalId["FuMax"] = {8888}
tSpringFestivalMainLine2020_FuGlobalId["TaskId"] = {4299}
tSpringFestivalMainLine2020_FuGlobalId["Log"] = ""

--跳转相关网址
local tSpringFestivalMainLine2020_WebSite = {}
tSpringFestivalMainLine2020_WebSite["Url1"] = "https://wtop.zf.99.com/zgn/?lang=en"

--相关新年光效
local tSpringFestivalMainLine2020_Effect = {}
tSpringFestivalMainLine2020_Effect[1] = "accession"
tSpringFestivalMainLine2020_Effect[2] = "zf2-e128"
tSpringFestivalMainLine2020_Effect[3] = "firecracker1"
tSpringFestivalMainLine2020_Effect[4] = "task041"
tSpringFestivalMainLine2020_Effect["Self"] = "self"

--读条拜年
local tSpringFestivalMainLine2020_YearBai = {}
tSpringFestivalMainLine2020_YearBai["Time"] = 3
tSpringFestivalMainLine2020_YearBai["Chat"] =  tSpringFestivalMainLine2020_Text["Msg"][8]
tSpringFestivalMainLine2020_YearBai["Black"] = {}
tSpringFestivalMainLine2020_YearBai["Black"][1] = {4299}
tSpringFestivalMainLine2020_YearBai["Black"][2] = {4296}
tSpringFestivalMainLine2020_YearBai["Black"][3] = {4297}
tSpringFestivalMainLine2020_YearBai["Black"][4] = {4298}

---------------------------------逻辑部分--------------------------------------------- 
--天瑞祥狮对白
function SpringFestivalMainLine2020_LionChat(NpcId)

	SpringFestivalMainLine2020_StcInterval()

	local nSpringFestivalMainLine2020_Event = tSpringFestivalMainLine2020_FuGlobalId["PersonGrade"][1]
	local nSpringFestivalMainLine2020_Data = tSpringFestivalMainLine2020_FuGlobalId["PersonGrade"][2]
	local nSpringFestivalMainLine2020_PersonGrade = Get_UserStatisticValue(nSpringFestivalMainLine2020_Event,nSpringFestivalMainLine2020_Data)
	
	local nSpringFestivalMainLine2020_GlobalId = tSpringFestivalMainLine2020_FuGlobalId["SumGlobal"][1]
	local nSpringFestivalMainLine2020_Pos = tSpringFestivalMainLine2020_FuGlobalId["SumGlobal"][2]
	local nSpringFestivalMainLine2020_GlobalNum = Get_SysDynaGlobalData(nSpringFestivalMainLine2020_GlobalId,nSpringFestivalMainLine2020_Pos)
	
	
	tNpcGossip[NpcId]["Text117"] = string.format(tSpringFestivalMainLine2020_Text[NpcId]["Text117"],nSpringFestivalMainLine2020_GlobalNum,nSpringFestivalMainLine2020_PersonGrade)
	
	return true
end

--直接使用物品
function SpringFestivalMainLine2020_StrangePaoUse(nItemId,nUserId)
	local nSpringFestivalMainLine2020_nUserId = nUserId or Get_UserId()
	if Item_ChkMulItem(nItemId,nItemId,1,0,0,nSpringFestivalMainLine2020_nUserId) and Item_DelMulItem(nItemId,nItemId,1,0,0,nSpringFestivalMainLine2020_nUserId)  then
		--播放光效，完成任务
		User_EffectAdd(tSpringFestivalMainLine2020_Effect["Self"],tSpringFestivalMainLine2020_Effect[3],nSpringFestivalMainLine2020_nUserId)
		Sys_MsgBox(tSpringFestivalMainLine2020_Text["Msg"][1],"NpcPosition_PathFind</N>25784",nil,nSpringFestivalMainLine2020_nUserId)
	end
end

--新年鞭炮使用
function SpringFestivalMainLine2020_PaoUse(nItemId,nUserId)


	--判断玩家所在的地方，不在指定位子则引路，若在则使用物品
	local nSpringFestivalMainLine2020_nUserId = nUserId or Get_UserId()
	if not Sys_ChkFullTime(tSpringFestivalMainLine2020_Time["Activity"]) then
		Item_DelAllItemByType(nItemId,nSpringFestivalMainLine2020_nUserId)
		return
	end
	
	local nSpringFestivalMainLine2020_MapId = tSpringFestivalMainLine2020_LeadMap["Normal"]["MapId"]
	local nSpringFestivalMainLine2020_PosX = tSpringFestivalMainLine2020_LeadMap["Normal"]["PosX"]
	local nSpringFestivalMainLine2020_PosY = tSpringFestivalMainLine2020_LeadMap["Normal"]["PosY"]
	
	if SpecialServer_ChkNoGiftServer() then
		nSpringFestivalMainLine2020_MapId = tSpringFestivalMainLine2020_LeadMap["Special"]["MapId"]
		nSpringFestivalMainLine2020_PosX = tSpringFestivalMainLine2020_LeadMap["Special"]["PosX"]
		nSpringFestivalMainLine2020_PosY = tSpringFestivalMainLine2020_LeadMap["Special"]["PosY"]
	end
	
	if Item_ChkMulItem(nItemId,nItemId,1,0,0,nSpringFestivalMainLine2020_nUserId)  then
		
		Sys_GotoSomeWhere(nSpringFestivalMainLine2020_PosX,nSpringFestivalMainLine2020_PosY,nSpringFestivalMainLine2020_MapId,0,nSpringFestivalMainLine2020_nUserId,"GenderTransitionService_StrangePaoUse</N>3314840</N>"..nSpringFestivalMainLine2020_nUserId)

	end

end


--判断玩家是否已完成所有任务
function SpringFestivalMainLine2020_CompleteAll(nNpcId)

	SpringFestivalMainLine2020_StcInterval()

	local nSpringFestivalMainLine2020_Tip = 0 
	local nSpringFestivalMainLine2020_UserId = Get_UserId()
	
	for i,v in pairs(tSpringFestivalMainLine2020_BaiStc) do
		
		local nSpringFestivalMainLine2020_Event = tSpringFestivalMainLine2020_BaiStc[i][1]
		local nSpringFestivalMainLine2020_Data = tSpringFestivalMainLine2020_BaiStc[i][2]
		if Task_ChkStcValue(nSpringFestivalMainLine2020_Event,nSpringFestivalMainLine2020_Data,"==",1,nSpringFestivalMainLine2020_UserId) then
			nSpringFestivalMainLine2020_Tip = 1
			break
		end
	end
	
	if (nSpringFestivalMainLine2020_Tip == 0) then
		return true
	end
	return false
end


--去找人拜年去
function SpringFestivalMainLine2020_LookforBai(nNpcId)
	local nSpringFestivalMainLine2020_UserId = Get_UserId()
	for i,v in pairs(tSpringFestivalMainLine2020_BaiStc) do
		
		local nSpringFestivalMainLine2020_Event = tSpringFestivalMainLine2020_BaiStc[i][1]
		local nSpringFestivalMainLine2020_Data = tSpringFestivalMainLine2020_BaiStc[i][2]
		local nSpringFestivalMainLine2020_NpcId = tSpringFestivalMainLine2020_BaiStc[i][3]
		if Task_ChkStcValue(nSpringFestivalMainLine2020_Event,nSpringFestivalMainLine2020_Data,"==",0,nSpringFestivalMainLine2020_UserId) then
			NpcPosition_PathFind(nSpringFestivalMainLine2020_NpcId)
			return
		end
	end
end


--获得1件1天时效的【时装名】
function SpringFestivalMainLine2020_ClotherDress(nTypeClother,nNpcId)
	
	local nSpringFestivalMainLine2020_UserId = Get_UserId()
	
	--判断玩家背包空间
	local nSpringFestivalMainLine2020_Space = RewardTemplate_GetRewardSpace(tSpringFestivalMainLine2020_Reward["Dress"][nTypeClother])
	if User_CheckLeftSpace(nSpringFestivalMainLine2020_Space) then
	
		--修改掩码，对联活动完成
		local nSpringFestivalMainLine2020_Event = tSpringFestivalMainLine2020_Stc[11][1]
		local nSpringFestivalMainLine2020_Data = tSpringFestivalMainLine2020_Stc[11][2]
		Task_SetStatistic(nSpringFestivalMainLine2020_Event,nSpringFestivalMainLine2020_Data,1,1,nSpringFestivalMainLine2020_UserId)
		Task_SetStcTimestamp(nSpringFestivalMainLine2020_Event,nSpringFestivalMainLine2020_Data,0,nSpringFestivalMainLine2020_UserId)
		
		
		RewardTemplate_UseItemAndMsg(tSpringFestivalMainLine2020_Reward["Dress"][nTypeClother])
		
		--播放光效
		User_EffectAdd(tSpringFestivalMainLine2020_Effect["Self"],tSpringFestivalMainLine2020_Effect[4])
		
		--完成对春联，穿新衣活动
		SpringFestivalMainLine2020_CompletedTask(2,nSpringFestivalMainLine2020_UserId)
		SpringFestivalMainLine2020_LookForBlack(3)
		
		local nSpringFestivalMainLine2020_Id = tSpringFestivalMainLine2020_Reward["Dress"][nTypeClother]["RewardItem"][1]["Id"]
		local nSpringFestivalMainLine2020_ClotherName = Get_ItemtypeName(nSpringFestivalMainLine2020_Id)
		User_TalkChannel2005(string.format(tSpringFestivalMainLine2020_Text["Msg"][4],nSpringFestivalMainLine2020_ClotherName))
		
		
		LinkNpcGossipFunc_New(nNpcId,"1-5")
		return
	else
		User_TalkChannel2005(string.format(tSpringFestivalMainLine2020_Text["Msg"][2],nSpringFestivalMainLine2020_Space))
	end
	
end

--织女下联
function SpringFestivalMainLine2020_SpingLianDown(nNpcId)
	SpringFestivalMainLine2020_StcInterval()
	
	math.randomseed(tostring(os.time()):reverse():sub(1, 6))
	local nSpringFestivalMainLine2020_RandomNum = math.random(1,4)
	local sSpringFestivalMainLine2020_Up = tSpringFestivalMainLine2020_Text["SpringZi"][nSpringFestivalMainLine2020_RandomNum]["Title"]
	
	local sSpringFestivalMainLine2020_Down1 = tSpringFestivalMainLine2020_Text["SpringZi"][nSpringFestivalMainLine2020_RandomNum]["Answer"][1]
	local sSpringFestivalMainLine2020_Down2 = tSpringFestivalMainLine2020_Text["SpringZi"][nSpringFestivalMainLine2020_RandomNum]["Answer"][2]
	local sSpringFestivalMainLine2020_Down3 = tSpringFestivalMainLine2020_Text["SpringZi"][nSpringFestivalMainLine2020_RandomNum]["Answer"][3]
	local sSpringFestivalMainLine2020_Down4 = tSpringFestivalMainLine2020_Text["SpringZi"][nSpringFestivalMainLine2020_RandomNum]["Answer"][4]

	tNpcGossip[nNpcId]["Text129"] = string.format(tSpringFestivalMainLine2020_Text[nNpcId]["Text129"],sSpringFestivalMainLine2020_Up)
	tNpcGossip[nNpcId]["Option4"] = string.format(tSpringFestivalMainLine2020_Text[nNpcId]["Option4"],sSpringFestivalMainLine2020_Down1)
	tNpcGossip[nNpcId]["Option5"] = string.format(tSpringFestivalMainLine2020_Text[nNpcId]["Option5"],sSpringFestivalMainLine2020_Down2)
	tNpcGossip[nNpcId]["Option6"] = string.format(tSpringFestivalMainLine2020_Text[nNpcId]["Option6"],sSpringFestivalMainLine2020_Down3)
	tNpcGossip[nNpcId]["Option7"] = string.format(tSpringFestivalMainLine2020_Text[nNpcId]["Option7"],sSpringFestivalMainLine2020_Down4)
	return true
	
end
--织女处对春联
function SpringFestivalMainLine2020_SpingLian(nNpcId)
	
	SpringFestivalMainLine2020_StcInterval()
	
	--已完成该任务出寻路对白
	local nSpringFestivalMainLine2020_UserId = Get_UserId()
	local nSpringFestivalMainLine2020_Event = tSpringFestivalMainLine2020_Stc[11][1]
	local nSpringFestivalMainLine2020_Data = tSpringFestivalMainLine2020_Stc[11][2]
	
	if Task_ChkStcValue(nSpringFestivalMainLine2020_Event,nSpringFestivalMainLine2020_Data,"==",1,nSpringFestivalMainLine2020_UserId) then
		return false
	end

	return true
end


--在体验春节活动的时候给织女加上接任务掩码
function SpringFestivalMainLine2020_ZhiWomanFirstTask()
	
	local ntSpringFestivalMainLine2020_UserId = Get_UserId()
	local tSpringFestivalMainLine2020_Event = tSpringFestivalMainLine2020_Stc[11][1]
	local tSpringFestivalMainLine2020_Data = tSpringFestivalMainLine2020_Stc[11][2]
	
	if Task_ChkStcValue(tSpringFestivalMainLine2020_Event,tSpringFestivalMainLine2020_Data,"==",0,ntSpringFestivalMainLine2020_UserId) then
		Task_SetStatistic(tSpringFestivalMainLine2020_Event,tSpringFestivalMainLine2020_Data,2,1,ntSpringFestivalMainLine2020_UserId)
		Task_SetStcTimestamp(tSpringFestivalMainLine2020_Event,tSpringFestivalMainLine2020_Data,0,ntSpringFestivalMainLine2020_UserId)
	end
	
	NpcPosition_PathFind(25785)
	
end

--织女处未接任务
function SpringFestivalMainLine2020_ZhiWomanTaskGet()
	SpringFestivalMainLine2020_StcInterval()
	
	local ntSpringFestivalMainLine2020_UserId = Get_UserId()
	local tSpringFestivalMainLine2020_Event = tSpringFestivalMainLine2020_Stc[11][1]
	local tSpringFestivalMainLine2020_Data = tSpringFestivalMainLine2020_Stc[11][2]
	
	if Task_ChkStcValue(tSpringFestivalMainLine2020_Event,tSpringFestivalMainLine2020_Data,"==",0,ntSpringFestivalMainLine2020_UserId) then
		return true
	end
	return false
end

--兑换外套
function SpringFestivalMainLine2020_CoatCharge(nNpcId,nItemId,nMonopoly)
	--给非赠的外套
	local nSpringFestivalMainLine2020_UserId = Get_UserId()
	if nMonopoly == 0 then
		if not Item_ChkMulItem(nItemId,nItemId,1,0,0,nSpringFestivalMainLine2020_UserId,0) then
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return
		end
		
		if Item_ChkMulItem(nItemId,nItemId,1,0,0,nSpringFestivalMainLine2020_UserId,0) and Item_DelMulItem(nItemId,nItemId,1,0,0,nSpringFestivalMainLine2020_UserId,0) then
			RewardTemplate_UseItemAndMsg(tSpringFestivalMainLine2020_NewReward[nItemId])
		end
	else
		
		--判断该物品是否为非赠
		if not Item_ChkMulItem(nItemId,nItemId,1,2,0,nSpringFestivalMainLine2020_UserId,0) then
			--是非赠的
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return
		end
		
		if Item_ChkMulItem(nItemId,nItemId,1,2,0,nSpringFestivalMainLine2020_UserId,0) and Item_DelMulItem(nItemId,nItemId,1,2,0,nSpringFestivalMainLine2020_UserId,0) then
			RewardTemplate_UseItemAndMsg(tSpringFestivalMainLine2020_NewReward[nItemId])
		end
		
	end
	

end


--跳转线下网址
function SpringFestivalMainLine2020_WebSite()
	-- local nUserId = Get_UserId()
	-- User_SendWebPage(tSpringFestivalMainLine2020_WebSite["Url1"],nUserId)
	User_SendWebPage(tSpringFestivalMainLine2020_WebSite["Url1"])
end

--单服排行榜
function SpringFestivalMainLine2020_SimpleRank(npcId)
	tNpcGossip[npcId]["Text4-1"] = {}
	tNpcGossip[npcId]["Text164"] = tSpringFestivalMainLine2020_Text[npcId]["Text164"]
	tNpcGossip[npcId]["Text165"] = tSpringFestivalMainLine2020_Text[npcId]["Text165"]
	tNpcGossip[npcId]["Text166"] = tSpringFestivalMainLine2020_Text[npcId]["Text166"]
	table.insert(tNpcGossip[npcId]["Text4-1"],164)
	table.insert(tNpcGossip[npcId]["Text4-1"],165)
	table.insert(tNpcGossip[npcId]["Text4-1"],166)
	
	
	local tRanktable = RankingFunc_GetNowData(25792) -- 这个接口清海提供
	local nNum = 1671
	
	-- for i,v in pairs(tRanktable) do
		-- if (v["UserId"] ~= nil) or (v["UserId"] ~= 0) then
			-- local nGrade = v["Score"]
			-- local nUserName = v["UserName"]--Get_UserName(v["UserId"])
			-- tNpcGossip[npcId]["Text"..nNum] = string.format(tSpringFestivalMainLine2020_Text[npcId]["Text167"],i,nUserName,nGrade)
		-- end
		-- table.insert(tNpcGossip[npcId]["Text4-1"],nNum)
		-- nNum = nNum + 1 
	-- end
	
	for i = 1,10,1 do
		if (tRanktable[i] ~= nil) then
			local nGrade = tRanktable[i]["Score"]
			local nUserName = tRanktable[i]["UserName"]--Get_UserName(v["UserId"])
			-- tNpcGossip[npcId]["Text"..nNum] = string.format(tSpringFestivalMainLine2020_Text[npcId]["Text167"],i,nUserName,nGrade)
			tNpcGossip[npcId]["Text"..nNum] = string.format(tSpringFestivalMainLine2020_Text[npcId]["Text1851"],Sys_Alignment(tostring(i),3,Sys_StringGSubTip(tostring(nUserName)),19,nGrade,42))
		else
			-- tNpcGossip[npcId]["Text"..nNum] = string.format(tSpringFestivalMainLine2020_Text[npcId]["Text1661"],i)
			tNpcGossip[npcId]["Text"..nNum] = string.format(tSpringFestivalMainLine2020_Text[npcId]["Text1851"],Sys_Alignment(tostring(i),3,tSpringFestivalMainLine2020_Text[npcId]["Text1661"],19,tSpringFestivalMainLine2020_Text[npcId]["Text1661"],42))
		end
		table.insert(tNpcGossip[npcId]["Text4-1"],nNum)
		nNum = nNum + 1 
	end
	
	tNpcGossip[npcId]["Text1651"] = tSpringFestivalMainLine2020_Text[npcId]["Text165"]
	tNpcGossip[npcId]["Text168"] = tSpringFestivalMainLine2020_Text[npcId]["Text168"]
	
	local nSpringFestivalMainLine2020_GradeRank =  RankingFunc_GetUserInRank(25792)
	
	local nSpringFestivalMainLine2020_Event = tSpringFestivalMainLine2020_FuGlobalId["PersonGrade"][1]
	local nSpringFestivalMainLine2020_Data = tSpringFestivalMainLine2020_FuGlobalId["PersonGrade"][2]
	local nSpringFestivalMainLine2020_Fu = Get_UserStatisticValue(nSpringFestivalMainLine2020_Event,nSpringFestivalMainLine2020_Data)
	
	if nSpringFestivalMainLine2020_GradeRank ~= 0 then
		tNpcGossip[npcId]["Text169"] = string.format(tSpringFestivalMainLine2020_Text[npcId]["Text169"],nSpringFestivalMainLine2020_GradeRank,nSpringFestivalMainLine2020_Fu)
	else
		tNpcGossip[npcId]["Text169"] = string.format(tSpringFestivalMainLine2020_Text[npcId]["Text170"],nSpringFestivalMainLine2020_Fu)
	end
	
	tNpcGossip[npcId]["Text1651"] = tSpringFestivalMainLine2020_Text[npcId]["Text165"]
	table.insert(tNpcGossip[npcId]["Text4-1"],1651)
	table.insert(tNpcGossip[npcId]["Text4-1"],169)
	
	return true
end


--福利积分超过8888点，每次增加1000点处理的接口
function SpringFestivalMainLine2020_OverFiveHundred(nIncreasNum)

	local nSpringFestivalMainLine2020_UserId = Get_UserId()
	local nSpringFestivalMainLine2020_Line  = math.modf(nIncreasNum/1000)
	local nSpringFestivalMainLine2020_Mod = math.fmod(nIncreasNum,1000)
	
	if nSpringFestivalMainLine2020_Line ~= 0 then
		local nSpringFestivalMainLine2020_Event = tSpringFestivalMainLine2020_FuStc[7][1]
		local nSpringFestivalMainLine2020_Data = tSpringFestivalMainLine2020_FuStc[7][2]
		
		--判断玩家背包空间
		local tReward = CommonFunc_Copy(tSpringFestivalMainLine2020_Reward[7])
		tReward["RewardItem"][1]["Attr"] = "0 "..(nSpringFestivalMainLine2020_Line*2)
		tReward["RewardItem"][2]["Attr"] = "0 "..nSpringFestivalMainLine2020_Line
		tReward["RewardItem"][3]["Attr"] = "0 "..(nSpringFestivalMainLine2020_Line*1)
		local nSpringFestivalMainLine2020_Space = RewardTemplate_GetRewardSpace(tSpringFestivalMainLine2020_Reward[7])
		
		if User_CheckLeftSpace(nSpringFestivalMainLine2020_Space) then
			--修改掩码
			Task_AddStatistic(nSpringFestivalMainLine2020_Event,nSpringFestivalMainLine2020_Data,-(nSpringFestivalMainLine2020_Line*1000),1,nSpringFestivalMainLine2020_UserId)
			Task_SetStcTimestamp(nSpringFestivalMainLine2020_Event,nSpringFestivalMainLine2020_Data,0,nSpringFestivalMainLine2020_UserId)
			
			--给奖励
			RewardTemplate_UseItemAndMsg(tReward)
			return true
			
		else
			User_TalkChannel2005(string.format(tSpringFestivalMainLine2020_Text["Msg"][5],nSpringFestivalMainLine2020_Space))
			return false
		end
		
		
	end
	return false
	
end

--一键领取玩家福气值
function SpringFestivalMainLine2020_AllClaimedFu()
	local nSpringFestivalMainLine2020_UserId = Get_UserId()
	local nSpringFestivalMainLine2020_Tip = 0
	
	for i,v in pairs(tSpringFestivalMainLine2020_FuStc) do
		local SpringFestivalMainLine2020_Event = tSpringFestivalMainLine2020_FuStc[i][1]
		local SpringFestivalMainLine2020_Data = tSpringFestivalMainLine2020_FuStc[i][2]
		local SpringFestivalMainLine2020_NumBiao = tSpringFestivalMainLine2020_FuStc[i][3]
		local nUserNum = SpringFestival2020Nian_GetFuQi(nSpringFestivalMainLine2020_UserId)
		if i ~= 7 then
			if Task_ChkStcValue(SpringFestivalMainLine2020_Event,SpringFestivalMainLine2020_Data,"==",0,nSpringFestivalMainLine2020_UserId) 
				and (nUserNum >= SpringFestivalMainLine2020_NumBiao) then 
			
				
				local nSpringFestivalMainLine2020_Space = RewardTemplate_GetRewardSpace(tSpringFestivalMainLine2020_Reward[i])
				if User_CheckLeftSpace(nSpringFestivalMainLine2020_Space) then
					nSpringFestivalMainLine2020_Tip = 1
					--修改掩码
					Task_SetStatistic(SpringFestivalMainLine2020_Event,SpringFestivalMainLine2020_Data,1,1,nSpringFestivalMainLine2020_UserId)
					Task_SetStcTimestamp(SpringFestivalMainLine2020_Event,SpringFestivalMainLine2020_Data,0,nSpringFestivalMainLine2020_UserId)
					
					RewardTemplate_UseItemAndMsg(tSpringFestivalMainLine2020_Reward[i])
				else
					User_TalkChannel2005(string.format(tSpringFestivalMainLine2020_Text["Msg"][5],nSpringFestivalMainLine2020_Space))
					return
				end
			end
			
		else
			
			local nSpringFestivalMainLine2020_IncreaseGrade = Get_UserStatisticValue(SpringFestivalMainLine2020_Event,SpringFestivalMainLine2020_Data,nSpringFestivalMainLine2020_UserId)
			if SpringFestivalMainLine2020_OverFiveHundred(nSpringFestivalMainLine2020_IncreaseGrade) then
				nSpringFestivalMainLine2020_Tip = 1
			end
		end
		
	end
	
	if nSpringFestivalMainLine2020_Tip == 0 then
		Sys_MsgBox(tSpringFestivalMainLine2020_Text[25784]["Text162"])
		User_TalkChannel2005(tSpringFestivalMainLine2020_Text[25784]["Text162"])
	end
end

--判断玩家福气值是否已领取
function SpringFestivalMainLine2020_FuClaimed(nNpcId)
	
	local nText = 154
	local nSpringFestivalMainLine2020_UserId = Get_UserId()
	for i,v in pairs(tSpringFestivalMainLine2020_FuStc) do
		local nSpringFestivalMainLine2020_Event = tSpringFestivalMainLine2020_FuStc[i][1]
		local nSpringFestivalMainLine2020_Data = tSpringFestivalMainLine2020_FuStc[i][2]
		if Task_ChkStcValue(nSpringFestivalMainLine2020_Event,nSpringFestivalMainLine2020_Data,"==",0,nSpringFestivalMainLine2020_UserId) and (i~=7) then
			tNpcGossip[nNpcId]["Text"..nText] = string.format(tSpringFestivalMainLine2020_Text[nNpcId]["Text"..nText],"")
		else
			tNpcGossip[nNpcId]["Text"..nText] = string.format(tSpringFestivalMainLine2020_Text[nNpcId]["Text"..nText],tSpringFestivalMainLine2020_Text[nNpcId]["Text1611"])
		end
		
		if i == 7 then
			tNpcGossip[nNpcId]["Text160"] = tSpringFestivalMainLine2020_Text[nNpcId]["Text160"]
			tNpcGossip[nNpcId]["Text1601"] = tSpringFestivalMainLine2020_Text[nNpcId]["Text1601"]
		end
		
		nText= nText + 1
	end
	
	local nSpringFestivalMainLine2020_FuEvent = tSpringFestivalMainLine2020_FuGlobalId["PersonGrade"][1]
	local nSpringFestivalMainLine2020_FuType = tSpringFestivalMainLine2020_FuGlobalId["PersonGrade"][2]
	local nSpringFestivalMainLine2020_FuData = Get_UserStatisticValue(nSpringFestivalMainLine2020_FuEvent,nSpringFestivalMainLine2020_FuType)
	
	tNpcGossip[nNpcId]["Text161"] = string.format(tSpringFestivalMainLine2020_Text[nNpcId]["Text161"],nSpringFestivalMainLine2020_FuData)
	return true
end

--福气值满8888另外存贮,每增加800点，福利奖励就可以领取一次(每次增减积分要调用的接口)
function SpringFestivalMainLine2020_FormationCenter(nIncreaseGrade,nUserId)


	local nSpringFestivalMainLine2020_UserId = nUserId or Get_UserId()
	local nSpringFestivalMainLine2020_Max = tSpringFestivalMainLine2020_FuGlobalId["FuMax"][1]
	local nSpringFestivalMainLine2020_InsertGrade = 0
	
	local nSpringFestivalMainLine2020_EventSum = tSpringFestivalMainLine2020_FuGlobalId["PersonGrade"][1]
	local nSpringFestivalMainLine2020_DataSum = tSpringFestivalMainLine2020_FuGlobalId["PersonGrade"][2]
	local nNowGetsum = Get_UserStatisticValue(nSpringFestivalMainLine2020_EventSum,nSpringFestivalMainLine2020_DataSum,nSpringFestivalMainLine2020_UserId)
	
	--加上增加的值积分依然小于8888
	if nNowGetsum+nIncreaseGrade <= nSpringFestivalMainLine2020_Max then
		nSpringFestivalMainLine2020_InsertGrade = 0
	end
	
	--临界点,加上积分刚超过8888
	if nNowGetsum+nIncreaseGrade > nSpringFestivalMainLine2020_Max then
		nSpringFestivalMainLine2020_InsertGrade = nNowGetsum + nIncreaseGrade - nSpringFestivalMainLine2020_Max
	end
	
	--本身福利积分就大于8888
	if nNowGetsum >= nSpringFestivalMainLine2020_Max then
		nSpringFestivalMainLine2020_InsertGrade = nIncreaseGrade
	end
	
	local nSpringFestivalMainLine2020_Event = tSpringFestivalMainLine2020_FuStc[7][1]
	local nSpringFestivalMainLine2020_Data = tSpringFestivalMainLine2020_FuStc[7][2]
	
	Task_AddStatistic(nSpringFestivalMainLine2020_Event,nSpringFestivalMainLine2020_Data,nSpringFestivalMainLine2020_InsertGrade,1,nSpringFestivalMainLine2020_UserId)
	Task_SetStcTimestamp(nSpringFestivalMainLine2020_Event,nSpringFestivalMainLine2020_Data,0,nSpringFestivalMainLine2020_UserId)
end


-- 正式对白中玩家福气值
function SpringFestivalMainLine2020_FuChat(nNpcId)
	local nSpringFestivalMainLine2020_GlobalId = tSpringFestivalMainLine2020_FuGlobalId["SumGlobal"][1]
	local nSpringFestivalMainLine2020_Pos = tSpringFestivalMainLine2020_FuGlobalId["SumGlobal"][2]
	local nGloalIdSum = Get_SysDynaGlobalData(nSpringFestivalMainLine2020_GlobalId,nSpringFestivalMainLine2020_Pos)
	
	local nSpringFestivalMainLine2020_Event = tSpringFestivalMainLine2020_FuGlobalId["PersonGrade"][1]
	local nSpringFestivalMainLine2020_Data = tSpringFestivalMainLine2020_FuGlobalId["PersonGrade"][2]
	local nPersonSum = Get_UserStatisticValue(nSpringFestivalMainLine2020_Event,nSpringFestivalMainLine2020_Data)
	
	tNpcGossip[nNpcId]["Text147"] = string.format(tSpringFestivalMainLine2020_Text[nNpcId]["Text147"],nGloalIdSum,nPersonSum)
	return true
end


--领取年兽图鉴，去找火云神狮
function SpringFestivalMainLine2020_GetCaculateLook()
	
	-- 任务位标识置1
	local nSpringFestivalMainLine2020_nUserId = Get_UserId()
	local nSpringFestivalMainLine2020_TaskId = tSpringFestivalMainLine2020_FuGlobalId["TaskId"][1]
	if not Task_ChkTaskDetail(nSpringFestivalMainLine2020_TaskId) then
		if Task_AddTaskDetail(nSpringFestivalMainLine2020_TaskId) then
		else
			User_TalkChannel2005(tSpringFestivalMainLine2020_Text["Msg"][6])
			return
		end
	end
	
	local nSpringFestivalMainLine2020_Event = tSpringFestivalMainLine2020_Stc[12][1]
	local nSpringFestivalMainLine2020_Data = tSpringFestivalMainLine2020_Stc[12][2]
	
	if Task_ChkTaskDetailValue(nSpringFestivalMainLine2020_TaskId,"CompleteFlag","<",1) then

		
		local nSpringFestivalMainLine2020_Space = RewardTemplate_GetRewardSpace(tSpringFestivalMainLine2020_Reward["NewYearCaculate"])
		if User_CheckLeftSpace(nSpringFestivalMainLine2020_Space) then
			RewardTemplate_UseItemAndMsg(tSpringFestivalMainLine2020_Reward["NewYearCaculate"])
		else
			Sys_MsgBox(string.format(tSpringFestivalMainLine2020_Text["Msg"][5],nSpringFestivalMainLine2020_Space))
			return
		end
	else
		local nSpringFestivalMainLine2020_Space = RewardTemplate_GetRewardSpace(tSpringFestivalMainLine2020_Reward["EggCaculate"])
		if User_CheckLeftSpace(nSpringFestivalMainLine2020_Space) and Task_ChkStcValue(nSpringFestivalMainLine2020_Event,nSpringFestivalMainLine2020_Data,"==",0,nSpringFestivalMainLine2020_nUserId) then
			RewardTemplate_UseItemAndMsg(tSpringFestivalMainLine2020_Reward["EggCaculate"])
		else
			Sys_MsgBox(string.format(tSpringFestivalMainLine2020_Text["Msg"][5],nSpringFestivalMainLine2020_Space))
			return
		end
	end
	

	Task_SetStatistic(nSpringFestivalMainLine2020_Event,nSpringFestivalMainLine2020_Data,1,1,nSpringFestivalMainLine2020_nUserId)
	Task_SetStcTimestamp(nSpringFestivalMainLine2020_Event,nSpringFestivalMainLine2020_Data,0,nSpringFestivalMainLine2020_nUserId)
	
	if Task_ChkTaskDetail(nSpringFestivalMainLine2020_TaskId) then
		Task_SetTaskDetailCompleteFlag(nSpringFestivalMainLine2020_TaskId,1)
	end
	
	NpcPosition_PathFind(25792)
	
	--弹出推送图片
	local nPic = 1072
	-- 出推送
	User_NoviceTeaching(nPic,nSpringFestivalMainLine2020_nUserId)
end

--判断火云神狮对白
function SpringFestivalMainLine2020_FireLion(nNpcId)
	local nSpringFestivalMainLine2020_UserId = Get_UserId()
	local nSpringFestivalMainLine2020_ItemId = tSpringFestivalMainLine2020_Reward["NewYearCaculate"]["RewardItem"][1]["Id"]
	local nSpringFestivalMainLine2020_Event = tSpringFestivalMainLine2020_Stc[12][1]
	local nSpringFestivalMainLine2020_Data = tSpringFestivalMainLine2020_Stc[12][2]
	
	local nSpringFestivalMainLine2020_TaskId = tSpringFestivalMainLine2020_FuGlobalId["TaskId"][1]
	if Task_ChkTaskDetail(nSpringFestivalMainLine2020_TaskId) and Task_ChkTaskDetailValue(nSpringFestivalMainLine2020_TaskId,"CompleteFlag",">=",1) then
		tNpcGossip[nNpcId]["Text139"] = tSpringFestivalMainLine2020_Text[nNpcId]["Text1391"]
		tNpcGossip[nNpcId]["Option7"] = tSpringFestivalMainLine2020_Text[nNpcId]["Option71"]
	else
		tNpcGossip[nNpcId]["Text139"] = tSpringFestivalMainLine2020_Text[nNpcId]["Text139"]
		tNpcGossip[nNpcId]["Option7"] = tSpringFestivalMainLine2020_Text[nNpcId]["Option7"]
	end
	
	-- if Item_ChkMulItem(nSpringFestivalMainLine2020_ItemId,nSpringFestivalMainLine2020_ItemId,1) then
		-- tNpcGossip[nNpcId]["Text139"] = tSpringFestivalMainLine2020_Text[nNpcId]["Text1391"]
		-- tNpcGossip[nNpcId]["Option7"] = tSpringFestivalMainLine2020_Text[nNpcId]["Option71"]
	-- else
		-- tNpcGossip[nNpcId]["Text139"] = tSpringFestivalMainLine2020_Text[nNpcId]["Text139"]
		-- tNpcGossip[nNpcId]["Option7"] = tSpringFestivalMainLine2020_Text[nNpcId]["Option7"]
	-- end
	
	if Task_ChkStcValue(nSpringFestivalMainLine2020_Event,nSpringFestivalMainLine2020_Data,"==",0,nSpringFestivalMainLine2020_UserId) then
		return true
	end
	
	return false
	
end


--补领年兽图鉴
function SpringFestivalMainLine2020_GetPictureBook(nNpcId)
	local nSpringFestivalMainLine2020_ItemId = tSpringFestivalMainLine2020_Reward["NewYearCaculate"]["RewardItem"][1]["Id"]
	if not Item_ChkMulItem(nSpringFestivalMainLine2020_ItemId,nSpringFestivalMainLine2020_ItemId,1) then
		RewardTemplate_UseItemAndMsg(tSpringFestivalMainLine2020_Reward["BuCaculate"])
	else
		User_TalkChannel2005(tSpringFestivalMainLine2020_Text["Msg"][10])
		Sys_MsgBox(tSpringFestivalMainLine2020_Text["Msg"][10])
	end
end


-- 隔天置空
function SpringFestivalMainLine2020_StcInterval()
	
	local nSpringFestivalMainLine2020_nUserId = Get_UserId()
	
	for i,v in pairs(tSpringFestivalMainLine2020_Stc) do
		local nSpringFestivalMainLine2020_nEvent = v[1]
		local nSpringFestivalMainLine2020_nType = v[2]
		
		if Task_StcInterval(nSpringFestivalMainLine2020_nEvent,nSpringFestivalMainLine2020_nType,1,4,nSpringFestivalMainLine2020_nUserId) then
			Task_SetStatistic(nSpringFestivalMainLine2020_nEvent,nSpringFestivalMainLine2020_nType,0,1,nSpringFestivalMainLine2020_nUserId)
			Task_SetStcTimestamp(nSpringFestivalMainLine2020_nEvent,nSpringFestivalMainLine2020_nType,0,nSpringFestivalMainLine2020_nUserId)
			
			--重值taskId
			for j = 2,4,1 do
				local nSpringFestivalMainLine2020_TaskId = tSpringFestivalMainLine2020_YearBai["Black"][j][1]
				if Task_ChkTaskDetail(nSpringFestivalMainLine2020_TaskId,nSpringFestivalMainLine2020_nUserId) then
					Task_SetTaskDetailData1(nSpringFestivalMainLine2020_TaskId,0,nSpringFestivalMainLine2020_nUserId)
					Task_SetTaskDetailCompleteFlag(nSpringFestivalMainLine2020_TaskId,0,nSpringFestivalMainLine2020_nUserId)
					Task_DelTaskDetail(nSpringFestivalMainLine2020_TaskId,nSpringFestivalMainLine2020_nUserId)
				end
			end
			
		end
	end
	
end

--判断玩家等级转世
function SpringFestivalMainLine2020_LevelMeto()
	local nSpringFestivalMainLine2020_Level = tSpringFestivalMainLine2020_Time["Level"]
	local nSpringFestivalMainLine2020_Meto = tSpringFestivalMainLine2020_Time["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nSpringFestivalMainLine2020_Level,nSpringFestivalMainLine2020_Meto) then
		return true
	end
	return false
end

--判断玩家是否每天首次对白、触发剧情脚本
function SpringFestivalMainLine2020_FirstMain()
	SpringFestivalMainLine2020_StcInterval()

	local nSpringFestivalMainLine2020_UserId = Get_UserId()
	local nSpringFestivalMainLine2020_Eventype = tSpringFestivalMainLine2020_Stc[10][1]
	local nSpringFestivalMainLine2020_Datatype = tSpringFestivalMainLine2020_Stc[10][2]
	
	if Task_ChkStcValue(nSpringFestivalMainLine2020_Eventype,nSpringFestivalMainLine2020_Datatype,"==",0,nSpringFestivalMainLine2020_UserId) then
		return true
	end
	return false
end

--判断玩家是否体验过全部的主线剧情
function SpringFestivalMainLine2020_CompleteAllMain()
	SpringFestivalMainLine2020_StcInterval()
	local nSpringFestivalMainLine2020_UserId = Get_UserId()

	local nSpringFestivalMainLine2020_Tip = 0
	
	for i,v in pairs(tSpringFestivalMainLine2020_BaiStc) do
	
		local nSpringFestivalMainLine2020_Event = v[1]
		local nSpringFestivalMainLine2020_Data = v[2]
		
		if Task_ChkStcValue(nSpringFestivalMainLine2020_Event,nSpringFestivalMainLine2020_Data,"==",1,nSpringFestivalMainLine2020_UserId) then
			nSpringFestivalMainLine2020_Tip = 1
		end
		
	end
	
	local nSpringFestivalMainLine2020_FirstEvent = tSpringFestivalMainLine2020_Stc[10][1]
	local nSpringFestivalMainLine2020_FirstData= tSpringFestivalMainLine2020_Stc[10][2]
	
	if nSpringFestivalMainLine2020_Tip == 0 or Task_ChkStcValue(nSpringFestivalMainLine2020_FirstEvent,nSpringFestivalMainLine2020_FirstData,"==",0,nSpringFestivalMainLine2020_UserId) then
		return true
	end
	return false
end

--增加寻路面板
function SpringFestivalMainLine2020_LookForBlack(nTip)
	
	local tSpringFestivalMainLine2020_TaskId = tSpringFestivalMainLine2020_YearBai["Black"][nTip][1]
	if not Task_ChkTaskDetail(tSpringFestivalMainLine2020_TaskId) then
		if not Task_AddTaskDetail(tSpringFestivalMainLine2020_TaskId) then
			return false
		end
	end
	return true
end

--完成任务面板
function SpringFestivalMainLine2020_CompletedTask(nTip,nUserId)
	
	local nSpringFestivalMainLine2020_nUserId = nUserId or Get_UserId()
	local tSpringFestivalMainLine2020_TaskId = tSpringFestivalMainLine2020_YearBai["Black"][nTip][1]
	if Task_ChkTaskDetail(tSpringFestivalMainLine2020_TaskId,nSpringFestivalMainLine2020_nUserId) then
		
		Task_SetTaskDetailData1(tSpringFestivalMainLine2020_TaskId,1,nSpringFestivalMainLine2020_nUserId)
		Task_SetTaskDetailCompleteFlag(tSpringFestivalMainLine2020_TaskId,1,nSpringFestivalMainLine2020_nUserId)
		
	end
end

--跳过主线任务
function SpringFestivalMainLine2020_FirstMainTiao(nNpcId)
	
	--掩码设置
	local nSpringFestivalMainLine2020_UserId = Get_UserId()
	local nSpringFestivalMainLine2020_Eventype = tSpringFestivalMainLine2020_Stc[10][1]
	local nSpringFestivalMainLine2020_Datatype = tSpringFestivalMainLine2020_Stc[10][2]
	
	Task_SetStatistic(nSpringFestivalMainLine2020_Eventype,nSpringFestivalMainLine2020_Datatype,1,1,nSpringFestivalMainLine2020_UserId)
	Task_SetStcTimestamp(nSpringFestivalMainLine2020_Eventype,nSpringFestivalMainLine2020_Datatype,0,nSpringFestivalMainLine2020_UserId)
	
	LinkNpcGossipFunc_New(nNpcId,"1-5")
	
	--接对春联，穿新衣活动
	if not SpringFestivalMainLine2020_LookForBlack(2) then
		User_TalkChannel2005(tSpringFestivalMainLine2020_Text["Msg"][6])
		return
	end
	
end

--跳转回新双龙城，再跳转回来
function SpringFestivalMainLine2020_BackNewcityReturn(nNewUserId,nTip)
	
	local nSpringFestivalMainLine2020_UserId = nNewUserId or Get_UserId()
	local nSpringFestivalMainLine2020_MapId = tSpringFestivalMainLine2020_NewDragonCity[nTip]["MapId"]
	local nSpringFestivalMainLine2020_PosX = tSpringFestivalMainLine2020_NewDragonCity[nTip]["PosX"]
	local nSpringFestivalMainLine2020_PosY = tSpringFestivalMainLine2020_NewDragonCity[nTip]["PosY"]
	
	User_UserRandBoundTrans(nSpringFestivalMainLine2020_MapId,nSpringFestivalMainLine2020_PosX,nSpringFestivalMainLine2020_PosY,1,1,1,nSpringFestivalMainLine2020_UserId)
	
end

--玩家体验完主线剧情掩码设置
function SpringFestivalMainLine2020_FirstMainComplete(nNpcId)
	
	local nSpringFestivalMainLine2020_UserId = Get_UserId()
	--若是在激情服，则跳转到新双龙城播放后再回来
	if SpecialServer_ChkNoGiftServer() then
		
		SpringFestivalMainLine2020_BackNewcityReturn(nSpringFestivalMainLine2020_UserId,1)
		local nSpringFestivalMainLine2020_Second = 46
		
		local nSpringFestivalMainLine2020_sFunc = "SpringFestivalMainLine2020_BackNewcityReturn</N>"..nSpringFestivalMainLine2020_UserId.."</N>2"
		--计时器
		User_SetTimer(nSpringFestivalMainLine2020_Second,nSpringFestivalMainLine2020_sFunc,0)
	end
	
	
	--体验主线剧情
	User_PlayPlot(13)
	
	--掩码设置
	local nSpringFestivalMainLine2020_UserId = Get_UserId()
	local nSpringFestivalMainLine2020_Eventype = tSpringFestivalMainLine2020_Stc[10][1]
	local nSpringFestivalMainLine2020_Datatype = tSpringFestivalMainLine2020_Stc[10][2]
	
	Task_SetStatistic(nSpringFestivalMainLine2020_Eventype,nSpringFestivalMainLine2020_Datatype,1,1,nSpringFestivalMainLine2020_UserId)
	Task_SetStcTimestamp(nSpringFestivalMainLine2020_Eventype,nSpringFestivalMainLine2020_Datatype,0,nSpringFestivalMainLine2020_UserId)
	
	LinkNpcGossipFunc_New(nNpcId,"1-5")
	
	--接对春联，穿新衣活动
	if not SpringFestivalMainLine2020_LookForBlack(2) then
		User_TalkChannel2005(tSpringFestivalMainLine2020_Text["Msg"][6])
		return
	end
	
end

--对春联时候出光效
function SpringFestivalMainLine2020_ChunLiang(nNpcId)
	
	--播放光效
	User_EffectAdd(tSpringFestivalMainLine2020_Effect["Self"],tSpringFestivalMainLine2020_Effect[2])

	LinkNpcGossipFunc_New(nNpcId,"2-1")
	return
end

--出春联随机对白
function SpringFestivalMainLine2020_RandomChat(nNpcId)

	math.randomseed(tostring(os.time()):reverse():sub(1, 6))
	local nSpringFestivalMainLine2020_RandomNum = math.random(1,3)
	
	local sSpringFestivalMainLine2020_Down = tSpringFestivalMainLine2020_Text["RandomChat"][nSpringFestivalMainLine2020_RandomNum]

	tNpcGossip[nNpcId]["Text132"] = sSpringFestivalMainLine2020_Down

	return true
	
end


-------------------------- npc部分------------------------

tNpcFace[5136] = 247

tNpcGossip[25784] = tNpcGossip[25784] or DefaultNpc:new{}
tNpcGossip[25784]["OptionHidden"] = 1
tNpcGossip[25784]["DialogueText"] = tSpringFestivalMainLine2020_Text[25784]

--活动时间前（节前）
tNpcGossip[25784]["Text1-1"] = {110,111,112,113,114,115,116}
tNpcGossip[25784]["tOption1-1"] = {1}
tNpcGossip[25784]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tSpringFestivalMainLine2020_Time["BeforeActivity"])
end


--活动时间后
tNpcGossip[25784]["Text1-2"] = {117,118}
tNpcGossip[25784]["tOption1-2"] = {2}
tNpcGossip[25784]["ChkFunc1-2"] = function()
	return not Sys_ChkFullTime(tSpringFestivalMainLine2020_Time["Activity"])
end


--等级不足
tNpcGossip[25784]["Text1-3"] = {119,120,121,122,123,124,125}
tNpcGossip[25784]["tOption1-3"] = {3}
tNpcGossip[25784]["ChkFunc1-3"] = function()
	return SpringFestivalMainLine2020_LevelMeto()
end

--等级达到，每天首次对白、触发剧情脚本、引导玩家去体验春节习俗
tNpcGossip[25784]["Text1-4"] = {126,127,128,129}
tNpcGossip[25784]["tOption1-4"] = {4,41}
tNpcGossip[25784]["OptionChkFunc41"] = function ()
	local nSpringFestivalMainLine2020_TaskId = tSpringFestivalMainLine2020_FuGlobalId["TaskId"][1]
	if Task_ChkTaskDetail(nSpringFestivalMainLine2020_TaskId) and Task_ChkTaskDetailValue(nSpringFestivalMainLine2020_TaskId,"CompleteFlag",">=",1) then
		return true
	end
	return false
end

tNpcGossip[25784]["ChkFunc1-4"] = function()
	return SpringFestivalMainLine2020_FirstMain()
end
tNpcGossip[25784]["OptionFunc4"] = "SpringFestivalMainLine2020_FirstMainComplete</N>25784"
tNpcGossip[25784]["OptionFunc41"] = "SpringFestivalMainLine2020_FirstMainTiao</N>25784"


--【体验完脚本剧情】,正式剧情
tNpcGossip[25784]["Text1-5"] = {130,131,132}
tNpcGossip[25784]["tOption1-5"] = {5}
tNpcGossip[25784]["OptionPoint5"] = "2-1"
tNpcGossip[25784]["ChkFunc1-5"] = function()
	return SpringFestivalMainLine2020_CompleteAllMain()
end

--接以上的对话
tNpcGossip[25784]["Text2-1"] = {133,134,135,136,137}
tNpcGossip[25784]["tOption2-1"] = {6}
--接织女对春联任务
tNpcGossip[25784]["OptionFunc6"] = "SpringFestivalMainLine2020_ZhiWomanFirstTask"


--寻找火云神狮
tNpcGossip[25784]["Text1-6"] = {138,139}
tNpcGossip[25784]["tOption1-6"] = {7}
tNpcGossip[25784]["OptionFunc7"] = "SpringFestivalMainLine2020_GetCaculateLook"
tNpcGossip[25784]["ChkFunc1-6"] = function()
	return SpringFestivalMainLine2020_FireLion(25784)
end

-- 寻找完火云神狮后玩家正式对白
tNpcGossip[25784]["Text1-7"] = {140,141,142,143,144,145,146,147,148,149,150}
tNpcGossip[25784]["tOption1-7"] = {8,9,10,101}
tNpcGossip[25784]["OptionPoint8"] = "3-1"
tNpcGossip[25784]["OptionPoint9"] = "4-1"
tNpcGossip[25784]["OptionPoint10"] = "5-1"
tNpcGossip[25784]["OptionFunc101"] = "SpringFestivalMainLine2020_GetPictureBook</N>25784"
tNpcGossip[25784]["OptionChkFunc101"] = function ()
	local nSpringFestivalMainLine2020_ItemId = tSpringFestivalMainLine2020_Reward["BuCaculate"]["RewardItem"][1]["Id"]
	if not Item_ChkMulItem(nSpringFestivalMainLine2020_ItemId,nSpringFestivalMainLine2020_ItemId,1) then
		return true
	end
	return false
end

tNpcGossip[25784]["ChkFunc1-7"] = function()
	return SpringFestivalMainLine2020_FuChat(25784)
end

--领取福气好礼
tNpcGossip[25784]["Text3-1"] = {151,152,153,154,155,156,157,158,159,160,1601,152,161}
tNpcGossip[25784]["tOption3-1"] = {11,12}
tNpcGossip[25784]["OptionPoint12"] = "1"
--领取所有奖励
tNpcGossip[25784]["OptionFunc11"] = "SpringFestivalMainLine2020_AllClaimedFu"
tNpcGossip[25784]["ChkFunc3-1"] = function()
	return SpringFestivalMainLine2020_FuClaimed(25784)
end

--新年福气榜
tNpcGossip[25784]["Text4-1"] = {164}
tNpcGossip[25784]["tOption4-1"] = {14,15}
tNpcGossip[25784]["OptionPoint14"] = "6-1"
--打开线下网址
tNpcGossip[25784]["OptionFunc15"] = "SpringFestivalMainLine2020_WebSite"
tNpcGossip[25784]["ChkFunc4-1"] = function()
	return SpringFestivalMainLine2020_SimpleRank(25784)
end

-- 如何获取福气？
tNpcGossip[25784]["Text5-1"] = {179,180,181,182,183,184,185}
tNpcGossip[25784]["tOption5-1"] = {17,18}
tNpcGossip[25784]["OptionFunc17"] = "NpcPosition_PathFind</N>25792"
tNpcGossip[25784]["OptionFunc18"] = "NpcPosition_PathFind</N>25812"

--查看奖励
tNpcGossip[25784]["Text6-1"] = {171,172,173,174,175,176,177,178}
tNpcGossip[25784]["tOption6-1"] = {16}
tNpcGossip[25784]["OptionPoint16"] = "1"


--织女

tNpcFace[5142] = 112
tNpcGossip[25785] = tNpcGossip[25785] or DefaultNpc:new{}
tNpcGossip[25785]["OptionHidden"] = 1
tNpcGossip[25785]["DialogueText"] = tSpringFestivalMainLine2020_Text[25785]

--活动时间前（节前）
tNpcGossip[25785]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[25785]["tOption1-1"] = {1}
tNpcGossip[25785]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tSpringFestivalMainLine2020_Time["BeforeActivity"])
end


--等级不足
tNpcGossip[25785]["Text1-2"] = {116,117,118,119,120}
tNpcGossip[25785]["tOption1-2"] = {2}
tNpcGossip[25785]["ChkFunc1-2"] = function()
	return SpringFestivalMainLine2020_LevelMeto()
end

--【等级达到、未接任务】
tNpcGossip[25785]["Text1-3"] = {121,122,123}
tNpcGossip[25785]["tOption1-3"] = {3}
tNpcGossip[25785]["OptionFunc3"] = "NpcPosition_PathFind</N>25784"
tNpcGossip[25785]["ChkFunc1-3"] = function()
	return SpringFestivalMainLine2020_ZhiWomanTaskGet()
end

-- 【等级达到、已接任务、随机对联1】
tNpcGossip[25785]["Text1-4"] = {124,125,126}
tNpcGossip[25785]["tOption1-4"] = {41}
tNpcGossip[25785]["OptionPoint41"] = "3-1"
tNpcGossip[25785]["ChkFunc1-4"] = function()
	return SpringFestivalMainLine2020_SpingLian(25785)
end

--接请出上联
tNpcGossip[25785]["Text3-1"] = {124,128,129,130}
tNpcGossip[25785]["tOption3-1"] = {4,5,6,7}
--获得1件1天时效的【时装名】，快穿上试试合不合身
tNpcGossip[25785]["OptionFunc4"] = "SpringFestivalMainLine2020_ChunLiang</N>25785"
tNpcGossip[25785]["OptionFunc5"] = "SpringFestivalMainLine2020_ChunLiang</N>25785"
tNpcGossip[25785]["OptionFunc6"] = "SpringFestivalMainLine2020_ChunLiang</N>25785"
tNpcGossip[25785]["OptionFunc7"] = "SpringFestivalMainLine2020_ChunLiang</N>25785"
tNpcGossip[25785]["ChkFunc3-1"] = function()
	return SpringFestivalMainLine2020_SpingLianDown(25785)
end

--接上对出下联
tNpcGossip[25785]["Text2-1"] = {131,132}
tNpcGossip[25785]["tOption2-1"] = {8,9,10,11,12,13,14,15,16}
--获得1件1天时效的【时装名】，快穿上试试合不合身
tNpcGossip[25785]["OptionFunc8"] = "SpringFestivalMainLine2020_ClotherDress</N>1</N>25785"
tNpcGossip[25785]["OptionFunc9"] = "SpringFestivalMainLine2020_ClotherDress</N>2</N>25785"
tNpcGossip[25785]["OptionFunc10"] = "SpringFestivalMainLine2020_ClotherDress</N>3</N>25785"
tNpcGossip[25785]["OptionFunc11"] = "SpringFestivalMainLine2020_ClotherDress</N>4</N>25785"
tNpcGossip[25785]["OptionFunc12"] = "SpringFestivalMainLine2020_ClotherDress</N>5</N>25785"
tNpcGossip[25785]["OptionFunc13"] = "SpringFestivalMainLine2020_ClotherDress</N>6</N>25785"
tNpcGossip[25785]["OptionFunc14"] = "SpringFestivalMainLine2020_ClotherDress</N>7</N>25785"
tNpcGossip[25785]["OptionFunc15"] = "SpringFestivalMainLine2020_ClotherDress</N>8</N>25785"
tNpcGossip[25785]["OptionFunc16"] = "SpringFestivalMainLine2020_ClotherDress</N>9</N>25785"
tNpcGossip[25785]["ChkFunc2-1"] = function()
	--设置随机对白
	return SpringFestivalMainLine2020_RandomChat(25785)
end

--完成对春联活动去寻找拜年npc
tNpcGossip[25785]["Text1-5"] = {133,134}
tNpcGossip[25785]["tOption1-5"] = {17}
--找人拜年去
tNpcGossip[25785]["OptionFunc17"] = "SpringFestivalMainLine2020_LookforBai</N>25785"
tNpcGossip[25785]["ChkFunc1-5"] = function()
	--判断玩家是否完成所有任务，若完成出闲聊对白
	return SpringFestivalMainLine2020_CompleteAll(25785)
end

--闲聊对白
tNpcGossip[25785]["Text1-6"] = {137,138}
tNpcGossip[25785]["tOption1-6"] = {19}


--天瑞祥狮

tNpcFace[5149] = 317
tNpcGossip[25786] = tNpcGossip[25786] or DefaultNpc:new{}
tNpcGossip[25786]["OptionHidden"] = 1
tNpcGossip[25786]["DialogueText"] = tSpringFestivalMainLine2020_Text[25786]
tNpcGossip[25786]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[25786]["tOption1-1"] = {1,2}
tNpcGossip[25786]["OptionFunc1"] = "SpringFestivalMainLine2020_WebSite"
tNpcGossip[25786]["ChkFunc1-1"] = function()
	return SpringFestivalMainLine2020_LionChat(25786)
end

--换外套npc
tNpcFace[5424] = 1
tNpcGossip[26010] = tNpcGossip[26010] or DefaultNpc:new{}
tNpcGossip[26010]["OptionHidden"] = 1
tNpcGossip[26010]["DialogueText"] = tSpringFestivalMainLine2020_Text[26010]
tNpcGossip[26010]["Text1-1"] = {111}
tNpcGossip[26010]["tOption1-1"] = {1,2,3}
tNpcGossip[26010]["OptionFunc1"] = "SpringFestivalMainLine2020_CoatCharge</N>26010</N>200664</N>0"
tNpcGossip[26010]["OptionFunc2"] = "SpringFestivalMainLine2020_CoatCharge</N>26010</N>196015</N>1"
tNpcGossip[26010]["OptionFunc3"] = "SpringFestivalMainLine2020_CoatCharge</N>26010</N>200665</N>1"

tNpcGossip[26010]["Text2-1"] = {112,113}
tNpcGossip[26010]["tOption2-1"] = {4}
tNpcGossip[26010]["OptionPoint4"] = "1"

-------------------------- 物品部分------------------------
--新年鞭炮
tItem[3314840] = tItem[3314840] or {}
tItem[3314840]["Function"] = function(nItemId,sItemName)
	SpringFestivalMainLine2020_PaoUse(nItemId)
end

tItem[3314831] = tItem[3314831] or {}
tItem[3314831]["Function"] = function(nItemId,sItemName)
	
	local nSpace = RewardTemplate_GetRewardSpace(tSpringFestivalMainLine2020_Reward[nItemId])
	if User_CheckLeftSpace(nSpace) then
		RewardTemplate_UseItemAndMsg(tSpringFestivalMainLine2020_Reward[nItemId])
		
		--给相关发型
		if nItemId == 3314836 or nItemId == 3314837 then
			local nHairId = tSpringFestivalMainLine2020_Reward[nItemId]["HairId"]
			local nUserId = Get_UserId()
			User_NotifyChgHairstyle(nHairId,0,nUserId)
		end
		
	else
		User_TalkChannel2005(string.format(tTrojanCompetition_Text["Sys"]["NeedSpace"],nSpace))
	end
end

tItem[3314832] = tItem[3314831] or {}
tItem[3314833] = tItem[3314831] or {}
tItem[3314834] = tItem[3314831] or {}
tItem[3314835] = tItem[3314831] or {}
tItem[3314836] = tItem[3314831] or {}
tItem[3314837] = tItem[3314831] or {}
tItem[3314838] = tItem[3314831] or {}
tItem[3314839] = tItem[3314831] or {}


-------------------------- 上线触发------------------------
-- 工具下架 tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- 工具下架 table.insert(tSystem_PlayLogin_Func,SpringFestivalMainLine2020_StcInterval)


