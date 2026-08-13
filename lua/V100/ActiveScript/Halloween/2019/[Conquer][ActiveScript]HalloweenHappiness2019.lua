------------------------------------------------------------------------------------
--Name：            190923[简体征服][活动脚本]全球万圣节活动-鬼怪好感度(10.24-11.5)
--Creator:      陈莺
--Created:     2019-09-23
------------------------------------------------------------------------------------
--任务需求：
-- HalloweenHappiness2019_
------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
-- 5星鬼怪Id
local tHalloweenHappiness2019_5Star = {}
	tHalloweenHappiness2019_5Star[25004] = 1
	tHalloweenHappiness2019_5Star[25005] = 1
	tHalloweenHappiness2019_5Star[25006] = 1
	tHalloweenHappiness2019_5Star[25007] = 1

local tHalloweenHappiness2019_Global = {}
--记录【2星】蹑空战鬼王好感度
	tHalloweenHappiness2019_Global[24974] = {}
	tHalloweenHappiness2019_Global[24974]["Id"] = 53766
	tHalloweenHappiness2019_Global[24974]["Pos"] = 0
	tHalloweenHappiness2019_Global[24974]["Max"] = 900
	
--记录【2星】天雷巨猿好感度
	tHalloweenHappiness2019_Global[24975] = {}
	tHalloweenHappiness2019_Global[24975]["Id"] = 53766
	tHalloweenHappiness2019_Global[24975]["Pos"] = 1
	tHalloweenHappiness2019_Global[24975]["Max"] = 900

--记录【2星】血怒蛇人好感度
	tHalloweenHappiness2019_Global[24976] = {}
	tHalloweenHappiness2019_Global[24976]["Id"] = 53766
	tHalloweenHappiness2019_Global[24976]["Pos"] = 2
	tHalloweenHappiness2019_Global[24976]["Max"] = 900

--记录【2星】巨斧王好感度
	tHalloweenHappiness2019_Global[24977] = {}
	tHalloweenHappiness2019_Global[24977]["Id"] = 53766
	tHalloweenHappiness2019_Global[24977]["Pos"] = 3
	tHalloweenHappiness2019_Global[24977]["Max"] = 900

--记录【2星】嗜血蝠王好感度
	tHalloweenHappiness2019_Global[24978] = {}
	tHalloweenHappiness2019_Global[24978]["Id"] = 53766
	tHalloweenHappiness2019_Global[24978]["Pos"] = 4
	tHalloweenHappiness2019_Global[24978]["Max"] = 900

--记录【2星】银羽鹰王好感度
	tHalloweenHappiness2019_Global[24979] = {}
	tHalloweenHappiness2019_Global[24979]["Id"] = 53766
	tHalloweenHappiness2019_Global[24979]["Pos"] = 5
	tHalloweenHappiness2019_Global[24979]["Max"] = 900

--记录【2星】牛魔好感度
	tHalloweenHappiness2019_Global[24980] = {}
	tHalloweenHappiness2019_Global[24980]["Id"] = 53767
	tHalloweenHappiness2019_Global[24980]["Pos"] = 0
	tHalloweenHappiness2019_Global[24980]["Max"] = 900

--记录【2星】冷血魔头好感度
	tHalloweenHappiness2019_Global[24981] = {}
	tHalloweenHappiness2019_Global[24981]["Id"] = 53767
	tHalloweenHappiness2019_Global[24981]["Pos"] = 1
	tHalloweenHappiness2019_Global[24981]["Max"] = 900

--记录【3星】霸王叫天鸡好感度
	tHalloweenHappiness2019_Global[24982] = {}
	tHalloweenHappiness2019_Global[24982]["Id"] = 53767
	tHalloweenHappiness2019_Global[24982]["Pos"] = 2
	tHalloweenHappiness2019_Global[24982]["Max"] = 1500
--记录【3星】青翼魔君好感度
	tHalloweenHappiness2019_Global[24983] = {}
	tHalloweenHappiness2019_Global[24983]["Id"] = 53767
	tHalloweenHappiness2019_Global[24983]["Pos"] = 3
	tHalloweenHappiness2019_Global[24983]["Max"] = 1500

--记录【3星】吞舟巨鲲好感度
	tHalloweenHappiness2019_Global[24984] = {}
	tHalloweenHappiness2019_Global[24984]["Id"] = 53767
	tHalloweenHappiness2019_Global[24984]["Pos"] = 4
	tHalloweenHappiness2019_Global[24984]["Max"] = 1500

--记录【3星】无天修罗好感度
	tHalloweenHappiness2019_Global[24985] = {}
	tHalloweenHappiness2019_Global[24985]["Id"] = 53767
	tHalloweenHappiness2019_Global[24985]["Pos"] = 5
	tHalloweenHappiness2019_Global[24985]["Max"] = 1500

--记录【3星】刑天之魂好感度
	tHalloweenHappiness2019_Global[24986] = {}
	tHalloweenHappiness2019_Global[24986]["Id"] = 53768
	tHalloweenHappiness2019_Global[24986]["Pos"] = 0
	tHalloweenHappiness2019_Global[24986]["Max"] = 1500

--记录【3星】饕餮好感度
	tHalloweenHappiness2019_Global[24987] = {}
	tHalloweenHappiness2019_Global[24987]["Id"] = 53768
	tHalloweenHappiness2019_Global[24987]["Pos"] = 1
	tHalloweenHappiness2019_Global[24987]["Max"] = 1500

--记录【3星】西域妖龙好感度
	tHalloweenHappiness2019_Global[24988] = {}
	tHalloweenHappiness2019_Global[24988]["Id"] = 53768
	tHalloweenHappiness2019_Global[24988]["Pos"] = 2
	tHalloweenHappiness2019_Global[24988]["Max"] = 1500

--记录【3星】雪蛛鬼母好感度
	tHalloweenHappiness2019_Global[24989] = {}
	tHalloweenHappiness2019_Global[24989]["Id"] = 53768
	tHalloweenHappiness2019_Global[24989]["Pos"] = 3
	tHalloweenHappiness2019_Global[24989]["Max"] = 1500

--记录【3星】烈焰巨魔好感度
	tHalloweenHappiness2019_Global[24990] = {}
	tHalloweenHappiness2019_Global[24990]["Id"] = 53768
	tHalloweenHappiness2019_Global[24990]["Pos"] = 4
	tHalloweenHappiness2019_Global[24990]["Max"] = 1500

--记录【4星】烈焰巨魔被捕捉10次
	tHalloweenHappiness2019_Global[24991] = {}
	tHalloweenHappiness2019_Global[24991]["Id"] = 53768
	tHalloweenHappiness2019_Global[24991]["Pos"] = 5
	tHalloweenHappiness2019_Global[24991]["Max"] = 3000

--记录【4星】烈焰巨魔被捕捉10次
	tHalloweenHappiness2019_Global[24992] = {}
	tHalloweenHappiness2019_Global[24992]["Id"] = 53769
	tHalloweenHappiness2019_Global[24992]["Pos"] = 0
	tHalloweenHappiness2019_Global[24992]["Max"] = 3000

--记录【4星】烈焰巨魔被捕捉10次
	tHalloweenHappiness2019_Global[25000] = {}
	tHalloweenHappiness2019_Global[25000]["Id"] = 53769
	tHalloweenHappiness2019_Global[25000]["Pos"] = 1
	tHalloweenHappiness2019_Global[25000]["Max"] = 3000

--记录【4星】烈焰巨魔被捕捉10次
	tHalloweenHappiness2019_Global[25001] = {}
	tHalloweenHappiness2019_Global[25001]["Id"] = 53769
	tHalloweenHappiness2019_Global[25001]["Pos"] = 2
	tHalloweenHappiness2019_Global[25001]["Max"] = 3000

--记录【4星】烈焰巨魔被捕捉10次
	tHalloweenHappiness2019_Global[25002] = {}
	tHalloweenHappiness2019_Global[25002]["Id"] = 53769
	tHalloweenHappiness2019_Global[25002]["Pos"] = 3
	tHalloweenHappiness2019_Global[25002]["Max"] = 3000

--记录【4星】烈焰巨魔被捕捉10次
	tHalloweenHappiness2019_Global[25003] = {}
	tHalloweenHappiness2019_Global[25003]["Id"] = 53769
	tHalloweenHappiness2019_Global[25003]["Pos"] = 4
	tHalloweenHappiness2019_Global[25003]["Max"] = 3000
--记录【5星】烈焰巨魔好感度
	tHalloweenHappiness2019_Global[25004] = {}
	tHalloweenHappiness2019_Global[25004]["Id"] = 53769
	tHalloweenHappiness2019_Global[25004]["Pos"] = 5
	tHalloweenHappiness2019_Global[25004]["Max"] = 10000
--记录【5星】烈焰巨魔好感度
	tHalloweenHappiness2019_Global[25005] = {}
	tHalloweenHappiness2019_Global[25005]["Id"] = 53772
	tHalloweenHappiness2019_Global[25005]["Pos"] = 0
	tHalloweenHappiness2019_Global[25005]["Max"] = 10000

--记录【5星】烈焰巨魔好感度
	tHalloweenHappiness2019_Global[25006] = {}
	tHalloweenHappiness2019_Global[25006]["Id"] = 53772
	tHalloweenHappiness2019_Global[25006]["Pos"] = 1
	tHalloweenHappiness2019_Global[25006]["Max"] = 10000
--记录【5星】烈焰巨魔好感度
	tHalloweenHappiness2019_Global[25007] = {}
	tHalloweenHappiness2019_Global[25007]["Id"] = 53772
	tHalloweenHappiness2019_Global[25007]["Pos"] = 2
	tHalloweenHappiness2019_Global[25007]["Max"] = 10000


	
---鬼怪位置
local tHalloweenHappiness2019_Pos = {}
--普通服（市场外）
----2星鬼怪
	tHalloweenHappiness2019_Pos[1] = {}
	tHalloweenHappiness2019_Pos[1][24974] = {}
	tHalloweenHappiness2019_Pos[1][24974]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[1][24974]["PosX"] = 170
	tHalloweenHappiness2019_Pos[1][24974]["PosY"] = 254
	
	tHalloweenHappiness2019_Pos[1][24975] = {}
	tHalloweenHappiness2019_Pos[1][24975]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[1][24975]["PosX"] = 182
	tHalloweenHappiness2019_Pos[1][24975]["PosY"] = 214

	tHalloweenHappiness2019_Pos[1][24976] = {}
	tHalloweenHappiness2019_Pos[1][24976]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[1][24976]["PosX"] = 554
	tHalloweenHappiness2019_Pos[1][24976]["PosY"] = 607

	tHalloweenHappiness2019_Pos[1][24977] = {}
	tHalloweenHappiness2019_Pos[1][24977]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[1][24977]["PosX"] = 539
	tHalloweenHappiness2019_Pos[1][24977]["PosY"] = 481

	tHalloweenHappiness2019_Pos[1][24978] = {}
	tHalloweenHappiness2019_Pos[1][24978]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[1][24978]["PosX"] = 500
	tHalloweenHappiness2019_Pos[1][24978]["PosY"] = 686

	tHalloweenHappiness2019_Pos[1][24979] = {}
	tHalloweenHappiness2019_Pos[1][24979]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[1][24979]["PosX"] = 472
	tHalloweenHappiness2019_Pos[1][24979]["PosY"] = 578

	tHalloweenHappiness2019_Pos[1][24980] = {}
	tHalloweenHappiness2019_Pos[1][24980]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[1][24980]["PosX"] = 688
	tHalloweenHappiness2019_Pos[1][24980]["PosY"] = 519

	tHalloweenHappiness2019_Pos[1][24981] = {}
	tHalloweenHappiness2019_Pos[1][24981]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[1][24981]["PosX"] = 728
	tHalloweenHappiness2019_Pos[1][24981]["PosY"] = 501
	
-----------------移到双龙城内
	tHalloweenHappiness2019_Pos[2] = {}
	tHalloweenHappiness2019_Pos[2][24974] = {}
	tHalloweenHappiness2019_Pos[2][24974]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[2][24974]["PosX"] = 336
	tHalloweenHappiness2019_Pos[2][24974]["PosY"] = 376
	
	tHalloweenHappiness2019_Pos[2][24975] = {}
	tHalloweenHappiness2019_Pos[2][24975]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[2][24975]["PosX"] = 336
	tHalloweenHappiness2019_Pos[2][24975]["PosY"] = 372

	tHalloweenHappiness2019_Pos[2][24976] = {}
	tHalloweenHappiness2019_Pos[2][24976]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[2][24976]["PosX"] = 336
	tHalloweenHappiness2019_Pos[2][24976]["PosY"] = 368

	tHalloweenHappiness2019_Pos[2][24977] = {}
	tHalloweenHappiness2019_Pos[2][24977]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[2][24977]["PosX"] = 336
	tHalloweenHappiness2019_Pos[2][24977]["PosY"] = 364

	tHalloweenHappiness2019_Pos[2][24978] = {}
	tHalloweenHappiness2019_Pos[2][24978]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[2][24978]["PosX"] = 350
	tHalloweenHappiness2019_Pos[2][24978]["PosY"] = 376

	tHalloweenHappiness2019_Pos[2][24979] = {}
	tHalloweenHappiness2019_Pos[2][24979]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[2][24979]["PosX"] = 350
	tHalloweenHappiness2019_Pos[2][24979]["PosY"] = 372

	tHalloweenHappiness2019_Pos[2][24980] = {}
	tHalloweenHappiness2019_Pos[2][24980]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[2][24980]["PosX"] = 349
	tHalloweenHappiness2019_Pos[2][24980]["PosY"] = 368

	tHalloweenHappiness2019_Pos[2][24981] = {}
	tHalloweenHappiness2019_Pos[2][24981]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[2][24981]["PosX"] = 348
	tHalloweenHappiness2019_Pos[2][24981]["PosY"] = 364
	
	----3星怪
	tHalloweenHappiness2019_Pos[2][24982] = {}
	tHalloweenHappiness2019_Pos[2][24982]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[2][24982]["PosX"] = 321
	tHalloweenHappiness2019_Pos[2][24982]["PosY"] = 346

	tHalloweenHappiness2019_Pos[2][24983] = {}
	tHalloweenHappiness2019_Pos[2][24983]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[2][24983]["PosX"] = 325
	tHalloweenHappiness2019_Pos[2][24983]["PosY"] = 345

	tHalloweenHappiness2019_Pos[2][24984] = {}
	tHalloweenHappiness2019_Pos[2][24984]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[2][24984]["PosX"] = 329
	tHalloweenHappiness2019_Pos[2][24984]["PosY"] = 346
	
	tHalloweenHappiness2019_Pos[2][24985] = {}
	tHalloweenHappiness2019_Pos[2][24985]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[2][24985]["PosX"] = 355
	tHalloweenHappiness2019_Pos[2][24985]["PosY"] = 346

	tHalloweenHappiness2019_Pos[2][24986] = {}
	tHalloweenHappiness2019_Pos[2][24986]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[2][24986]["PosX"] = 359
	tHalloweenHappiness2019_Pos[2][24986]["PosY"] = 346

	tHalloweenHappiness2019_Pos[2][24987] = {}
	tHalloweenHappiness2019_Pos[2][24987]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[2][24987]["PosX"] = 363
	tHalloweenHappiness2019_Pos[2][24987]["PosY"] = 346

	tHalloweenHappiness2019_Pos[2][24988] = {}
	tHalloweenHappiness2019_Pos[2][24988]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[2][24988]["PosX"] = 370
	tHalloweenHappiness2019_Pos[2][24988]["PosY"] = 342

	tHalloweenHappiness2019_Pos[2][24989] = {}
	tHalloweenHappiness2019_Pos[2][24989]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[2][24989]["PosX"] = 370
	tHalloweenHappiness2019_Pos[2][24989]["PosY"] = 338

	tHalloweenHappiness2019_Pos[2][24990] = {}
	tHalloweenHappiness2019_Pos[2][24990]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[2][24990]["PosX"] = 370
	tHalloweenHappiness2019_Pos[2][24990]["PosY"] = 334

	
----4星
	tHalloweenHappiness2019_Pos[2][24991] = {}
	tHalloweenHappiness2019_Pos[2][24991]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[2][24991]["PosX"] = 370
	tHalloweenHappiness2019_Pos[2][24991]["PosY"] = 310

	tHalloweenHappiness2019_Pos[2][24992] = {}
	tHalloweenHappiness2019_Pos[2][24992]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[2][24992]["PosX"] = 370
	tHalloweenHappiness2019_Pos[2][24992]["PosY"] = 306
	
	tHalloweenHappiness2019_Pos[2][25000] = {}
	tHalloweenHappiness2019_Pos[2][25000]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[2][25000]["PosX"] = 370
	tHalloweenHappiness2019_Pos[2][25000]["PosY"] = 302

	tHalloweenHappiness2019_Pos[2][25001] = {}
	tHalloweenHappiness2019_Pos[2][25001]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[2][25001]["PosX"] = 366
	tHalloweenHappiness2019_Pos[2][25001]["PosY"] = 295

	tHalloweenHappiness2019_Pos[2][25002] = {}
	tHalloweenHappiness2019_Pos[2][25002]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[2][25002]["PosX"] = 362
	tHalloweenHappiness2019_Pos[2][25002]["PosY"] = 295
	
	tHalloweenHappiness2019_Pos[2][25003] = {}
	tHalloweenHappiness2019_Pos[2][25003]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[2][25003]["PosX"] = 358
	tHalloweenHappiness2019_Pos[2][25003]["PosY"] = 295
-----5星
	tHalloweenHappiness2019_Pos[2][25004] = {}
	tHalloweenHappiness2019_Pos[2][25004]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[2][25004]["PosX"] = 384
	tHalloweenHappiness2019_Pos[2][25004]["PosY"] = 325

	tHalloweenHappiness2019_Pos[2][25005] = {}
	tHalloweenHappiness2019_Pos[2][25005]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[2][25005]["PosX"] = 390
	tHalloweenHappiness2019_Pos[2][25005]["PosY"] = 325

	tHalloweenHappiness2019_Pos[2][25006] = {}
	tHalloweenHappiness2019_Pos[2][25006]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[2][25006]["PosX"] = 389
	tHalloweenHappiness2019_Pos[2][25006]["PosY"] = 313
	
	tHalloweenHappiness2019_Pos[2][25007] = {}
	tHalloweenHappiness2019_Pos[2][25007]["MapId"] = 1002
	tHalloweenHappiness2019_Pos[2][25007]["PosX"] = 384
	tHalloweenHappiness2019_Pos[2][25007]["PosY"] = 313
	
	
	--激情服（市场外）
	--2星
	tHalloweenHappiness2019_Pos[11] = {}
	tHalloweenHappiness2019_Pos[11][24974] = {}
	tHalloweenHappiness2019_Pos[11][24974]["MapId"] = 10365
	tHalloweenHappiness2019_Pos[11][24974]["PosX"] = 170
	tHalloweenHappiness2019_Pos[11][24974]["PosY"] = 254
	
	tHalloweenHappiness2019_Pos[11][24975] = {}
	tHalloweenHappiness2019_Pos[11][24975]["MapId"] = 10365
	tHalloweenHappiness2019_Pos[11][24975]["PosX"] = 182
	tHalloweenHappiness2019_Pos[11][24975]["PosY"] = 214

	tHalloweenHappiness2019_Pos[11][24976] = {}
	tHalloweenHappiness2019_Pos[11][24976]["MapId"] = 10365
	tHalloweenHappiness2019_Pos[11][24976]["PosX"] = 554
	tHalloweenHappiness2019_Pos[11][24976]["PosY"] = 607

	tHalloweenHappiness2019_Pos[11][24977] = {}
	tHalloweenHappiness2019_Pos[11][24977]["MapId"] = 10365
	tHalloweenHappiness2019_Pos[11][24977]["PosX"] = 539
	tHalloweenHappiness2019_Pos[11][24977]["PosY"] = 481

	tHalloweenHappiness2019_Pos[11][24978] = {}
	tHalloweenHappiness2019_Pos[11][24978]["MapId"] = 10365
	tHalloweenHappiness2019_Pos[11][24978]["PosX"] = 500
	tHalloweenHappiness2019_Pos[11][24978]["PosY"] = 686

	tHalloweenHappiness2019_Pos[11][24979] = {}
	tHalloweenHappiness2019_Pos[11][24979]["MapId"] = 10365
	tHalloweenHappiness2019_Pos[11][24979]["PosX"] = 472
	tHalloweenHappiness2019_Pos[11][24979]["PosY"] = 578

	tHalloweenHappiness2019_Pos[11][24980] = {}
	tHalloweenHappiness2019_Pos[11][24980]["MapId"] = 10365
	tHalloweenHappiness2019_Pos[11][24980]["PosX"] = 688
	tHalloweenHappiness2019_Pos[11][24980]["PosY"] = 519

	tHalloweenHappiness2019_Pos[11][24981] = {}
	tHalloweenHappiness2019_Pos[11][24981]["MapId"] = 10365
	tHalloweenHappiness2019_Pos[11][24981]["PosX"] = 728
	tHalloweenHappiness2019_Pos[11][24981]["PosY"] = 501

	--激情服移到（市场内）
	--2星
	tHalloweenHappiness2019_Pos[12] = {}
	tHalloweenHappiness2019_Pos[12][24974] = {}
	tHalloweenHappiness2019_Pos[12][24974]["MapId"] = 1036
	tHalloweenHappiness2019_Pos[12][24974]["PosX"] = 153
	tHalloweenHappiness2019_Pos[12][24974]["PosY"] = 147
	
	tHalloweenHappiness2019_Pos[12][24975] = {}
	tHalloweenHappiness2019_Pos[12][24975]["MapId"] = 1036
	tHalloweenHappiness2019_Pos[12][24975]["PosX"] = 153
	tHalloweenHappiness2019_Pos[12][24975]["PosY"] = 143

	tHalloweenHappiness2019_Pos[12][24976] = {}
	tHalloweenHappiness2019_Pos[12][24976]["MapId"] = 1036
	tHalloweenHappiness2019_Pos[12][24976]["PosX"] = 153
	tHalloweenHappiness2019_Pos[12][24976]["PosY"] = 139

	tHalloweenHappiness2019_Pos[12][24977] = {}
	tHalloweenHappiness2019_Pos[12][24977]["MapId"] = 1036
	tHalloweenHappiness2019_Pos[12][24977]["PosX"] = 153
	tHalloweenHappiness2019_Pos[12][24977]["PosY"] = 135

	tHalloweenHappiness2019_Pos[12][24978] = {}
	tHalloweenHappiness2019_Pos[12][24978]["MapId"] = 1036
	tHalloweenHappiness2019_Pos[12][24978]["PosX"] = 153
	tHalloweenHappiness2019_Pos[12][24978]["PosY"] = 131

	tHalloweenHappiness2019_Pos[12][24979] = {}
	tHalloweenHappiness2019_Pos[12][24979]["MapId"] = 1036
	tHalloweenHappiness2019_Pos[12][24979]["PosX"] = 153
	tHalloweenHappiness2019_Pos[12][24979]["PosY"] = 127

	tHalloweenHappiness2019_Pos[12][24980] = {}
	tHalloweenHappiness2019_Pos[12][24980]["MapId"] = 1036
	tHalloweenHappiness2019_Pos[12][24980]["PosX"] = 153
	tHalloweenHappiness2019_Pos[12][24980]["PosY"] = 123

	tHalloweenHappiness2019_Pos[12][24981] = {}
	tHalloweenHappiness2019_Pos[12][24981]["MapId"] = 1036
	tHalloweenHappiness2019_Pos[12][24981]["PosX"] = 153
	tHalloweenHappiness2019_Pos[12][24981]["PosY"] = 119
	----3星怪
	tHalloweenHappiness2019_Pos[12][24982] = {}
	tHalloweenHappiness2019_Pos[12][24982]["MapId"] = 1036
	tHalloweenHappiness2019_Pos[12][24982]["PosX"] = 141
	tHalloweenHappiness2019_Pos[12][24982]["PosY"] = 143

	tHalloweenHappiness2019_Pos[12][24983] = {}
	tHalloweenHappiness2019_Pos[12][24983]["MapId"] = 1036
	tHalloweenHappiness2019_Pos[12][24983]["PosX"] = 137
	tHalloweenHappiness2019_Pos[12][24983]["PosY"] = 143

	tHalloweenHappiness2019_Pos[12][24984] = {}
	tHalloweenHappiness2019_Pos[12][24984]["MapId"] = 1036
	tHalloweenHappiness2019_Pos[12][24984]["PosX"] = 133
	tHalloweenHappiness2019_Pos[12][24984]["PosY"] = 143
	
	tHalloweenHappiness2019_Pos[12][24985] = {}
	tHalloweenHappiness2019_Pos[12][24985]["MapId"] = 1036
	tHalloweenHappiness2019_Pos[12][24985]["PosX"] = 129
	tHalloweenHappiness2019_Pos[12][24985]["PosY"] = 143

	tHalloweenHappiness2019_Pos[12][24986] = {}
	tHalloweenHappiness2019_Pos[12][24986]["MapId"] = 1036
	tHalloweenHappiness2019_Pos[12][24986]["PosX"] = 125
	tHalloweenHappiness2019_Pos[12][24986]["PosY"] = 143

	tHalloweenHappiness2019_Pos[12][24987] = {}
	tHalloweenHappiness2019_Pos[12][24987]["MapId"] = 1036
	tHalloweenHappiness2019_Pos[12][24987]["PosX"] = 121
	tHalloweenHappiness2019_Pos[12][24987]["PosY"] = 143

	tHalloweenHappiness2019_Pos[12][24988] = {}
	tHalloweenHappiness2019_Pos[12][24988]["MapId"] = 1036
	tHalloweenHappiness2019_Pos[12][24988]["PosX"] = 117
	tHalloweenHappiness2019_Pos[12][24988]["PosY"] = 143

	tHalloweenHappiness2019_Pos[12][24989] = {}
	tHalloweenHappiness2019_Pos[12][24989]["MapId"] = 1036
	tHalloweenHappiness2019_Pos[12][24989]["PosX"] = 113
	tHalloweenHappiness2019_Pos[12][24989]["PosY"] = 143

	tHalloweenHappiness2019_Pos[12][24990] = {}
	tHalloweenHappiness2019_Pos[12][24990]["MapId"] = 1036
	tHalloweenHappiness2019_Pos[12][24990]["PosX"] = 109
	tHalloweenHappiness2019_Pos[12][24990]["PosY"] = 143
	
----4星
	tHalloweenHappiness2019_Pos[12][24991] = {}
	tHalloweenHappiness2019_Pos[12][24991]["MapId"] = 1036
	tHalloweenHappiness2019_Pos[12][24991]["PosX"] = 234
	tHalloweenHappiness2019_Pos[12][24991]["PosY"] = 112

	tHalloweenHappiness2019_Pos[12][24992] = {}
	tHalloweenHappiness2019_Pos[12][24992]["MapId"] = 1036
	tHalloweenHappiness2019_Pos[12][24992]["PosX"] = 234
	tHalloweenHappiness2019_Pos[12][24992]["PosY"] = 116
	
	tHalloweenHappiness2019_Pos[12][25000] = {}
	tHalloweenHappiness2019_Pos[12][25000]["MapId"] = 1036
	tHalloweenHappiness2019_Pos[12][25000]["PosX"] = 234
	tHalloweenHappiness2019_Pos[12][25000]["PosY"] = 120

	tHalloweenHappiness2019_Pos[12][25001] = {}
	tHalloweenHappiness2019_Pos[12][25001]["MapId"] = 1036
	tHalloweenHappiness2019_Pos[12][25001]["PosX"] = 234
	tHalloweenHappiness2019_Pos[12][25001]["PosY"] = 124

	tHalloweenHappiness2019_Pos[12][25002] = {}
	tHalloweenHappiness2019_Pos[12][25002]["MapId"] = 1036
	tHalloweenHappiness2019_Pos[12][25002]["PosX"] = 234
	tHalloweenHappiness2019_Pos[12][25002]["PosY"] = 128
	
	tHalloweenHappiness2019_Pos[12][25003] = {}
	tHalloweenHappiness2019_Pos[12][25003]["MapId"] = 1036
	tHalloweenHappiness2019_Pos[12][25003]["PosX"] = 234
	tHalloweenHappiness2019_Pos[12][25003]["PosY"] = 132
-----5星
	tHalloweenHappiness2019_Pos[12][25004] = {}
	tHalloweenHappiness2019_Pos[12][25004]["MapId"] = 1036
	tHalloweenHappiness2019_Pos[12][25004]["PosX"] = 239
	tHalloweenHappiness2019_Pos[12][25004]["PosY"] = 149

	tHalloweenHappiness2019_Pos[12][25005] = {}
	tHalloweenHappiness2019_Pos[12][25005]["MapId"] = 1036
	tHalloweenHappiness2019_Pos[12][25005]["PosX"] = 243
	tHalloweenHappiness2019_Pos[12][25005]["PosY"] = 149

	tHalloweenHappiness2019_Pos[12][25006] = {}
	tHalloweenHappiness2019_Pos[12][25006]["MapId"] = 1036
	tHalloweenHappiness2019_Pos[12][25006]["PosX"] = 247
	tHalloweenHappiness2019_Pos[12][25006]["PosY"] = 149
	
	tHalloweenHappiness2019_Pos[12][25007] = {}
	tHalloweenHappiness2019_Pos[12][25007]["MapId"] = 1036
	tHalloweenHappiness2019_Pos[12][25007]["PosX"] = 251
	tHalloweenHappiness2019_Pos[12][25007]["PosY"] = 149



----------------------------------逻辑部分---------------------------------------------
--检测好感度
function HalloweenHappiness2019_ChkFavorable(nNpcId)
	local nGlobal = tHalloweenHappiness2019_Global[nNpcId]["Id"]
	local nPos = tHalloweenHappiness2019_Global[nNpcId]["Pos"]
	local nData = Get_SysDynaGlobalData(nGlobal,nPos)
	local nMax = tHalloweenHappiness2019_Global[nNpcId]["Max"]
	if nData >= nMax then
		return true
	else
		return false
	end
end

--鬼怪好感度调满
function HalloweenHappiness2019_SetFavorable(nNpcId)
	local nGlobal = tHalloweenHappiness2019_Global[nNpcId]["Id"]
	local nPos = tHalloweenHappiness2019_Global[nNpcId]["Pos"]
	Sys_SetSynaGlobalData(nGlobal,nPos,10000)
end

--获得好感度
function HalloweenHappiness2019_GetFavorable(nNpcId)
	local nGlobal = tHalloweenHappiness2019_Global[nNpcId]["Id"]
	local nPos = tHalloweenHappiness2019_Global[nNpcId]["Pos"]
	local nData = Get_SysDynaGlobalData(nGlobal,nPos)
	return nData
end

----加好感度（链接林旭那边逻辑）
function HalloweenHappiness2019_HandInCindy(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["HalloweenHappiness"]["ActivityTime"]) then
		return 
	end
	-- 检测好感度
	if HalloweenHappiness2019_ChkFavorable(nNpcId) then
		return
	end
	if tHalloweenHappiness2019_Global[nNpcId] == nil then
		return
	end
	local nGlobal = tHalloweenHappiness2019_Global[nNpcId]["Id"]
	local nPos = tHalloweenHappiness2019_Global[nNpcId]["Pos"]
	local nData = Get_SysDynaGlobalData(nGlobal,nPos)
	Sys_SetSynaGlobalData(nGlobal,nPos,nData+1)
end

---第二天移动NPC到市场内
function HalloweenHappiness2019_MoveNpc()
	if not Sys_ChkFullTime(tActivityTime["HalloweenHappiness"]["ActivityTime"]) then
		return 
	end
	for a,b in pairs(tHalloweenHappiness2019_Global) do
		local nNpcId = a
		if tHalloweenHappiness2019_5Star[nNpcId] == nil or Get_NpcMapID(nNpcId) == 5000 then
			-- 好感度满
			if HalloweenHappiness2019_ChkFavorable(nNpcId) then
				local nMapId = tHalloweenHappiness2019_Pos[2][nNpcId]["MapId"]
				local nPosX = tHalloweenHappiness2019_Pos[2][nNpcId]["PosX"]
				local nPosY = tHalloweenHappiness2019_Pos[2][nNpcId]["PosY"]
				-- 激情服
				if SpecialServer_ChkNoGiftServer() then
					nMapId = tHalloweenHappiness2019_Pos[12][nNpcId]["MapId"]
					nPosX = tHalloweenHappiness2019_Pos[12][nNpcId]["PosX"]
					nPosY = tHalloweenHappiness2019_Pos[12][nNpcId]["PosY"]
				end
				Npc_MoveNpcPos(nNpcId,nMapId,nPosX,nPosY)
			end
		end
	end
end

---使用分身后单独移动某个5星鬼怪
function HalloweenHappiness2019_Move5StarNpc(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["HalloweenHappiness"]["ActivityTime"]) then
		return 
	end
	-- 好感度满
	-- if HalloweenHappiness2019_ChkFavorable(nNpcId) then
		local nMapId = tHalloweenHappiness2019_Pos[2][nNpcId]["MapId"]
		local nPosX = tHalloweenHappiness2019_Pos[2][nNpcId]["PosX"]
		local nPosY = tHalloweenHappiness2019_Pos[2][nNpcId]["PosY"]
		-- 激情服
		if SpecialServer_ChkNoGiftServer() then
			nMapId = tHalloweenHappiness2019_Pos[12][nNpcId]["MapId"]
			nPosX = tHalloweenHappiness2019_Pos[12][nNpcId]["PosX"]
			nPosY = tHalloweenHappiness2019_Pos[12][nNpcId]["PosY"]
		end
		if not CollectGhost_JudgeInCity(nNpcId) then
			Npc_MoveNpcPos(nNpcId,nMapId,nPosX,nPosY)
		end
		return nMapId,nPosX,nPosY
	-- end
end

---判断是否在城内
function HalloweenHappiness2019_JudgeNpcInCity(nNpcId,nNpcMapId,nNpcPosX,nNpcPosY)
	if not Sys_ChkFullTime(tActivityTime["HalloweenHappiness"]["ActivityTime"]) then
		return 
	end
	-- 好感度满
	if HalloweenHappiness2019_ChkFavorable(nNpcId) then
		local nMapId = tHalloweenHappiness2019_Pos[2][nNpcId]["MapId"]
		local nPosX = tHalloweenHappiness2019_Pos[2][nNpcId]["PosX"]
		local nPosY = tHalloweenHappiness2019_Pos[2][nNpcId]["PosY"]
		-- 激情服
		if SpecialServer_ChkNoGiftServer() then
			nMapId = tHalloweenHappiness2019_Pos[12][nNpcId]["MapId"]
			nPosX = tHalloweenHappiness2019_Pos[12][nNpcId]["PosX"]
			nPosY = tHalloweenHappiness2019_Pos[12][nNpcId]["PosY"]
		end
		if nNpcMapId == nMapId and nNpcPosX == nPosX and nNpcPosY == nPosY then
			return true
		end
		return false
	end
end
----------------------------------物品部分---------------------------------------------
tItem[3313762] = tItem[3313762] or {}
tItem[3313762]["Time"] = tActivityTime["HalloweenHappiness"]["ActivityTime"]

tItem[3313763] = tItem[3313763] or {}
tItem[3313763]["Time"] = tActivityTime["HalloweenHappiness"]["ActivityTime"]

tItem[3313764] = tItem[3313764] or {}
tItem[3313764]["Time"] = tActivityTime["HalloweenHappiness"]["ActivityTime"]

tItem[3313765] = tItem[3313765] or {}
tItem[3313765]["Time"] = tActivityTime["HalloweenHappiness"]["ActivityTime"]

----------------------------------时间质检---------------------------------------------
local tHalloweenHappiness2019_OnTime = {}
	tHalloweenHappiness2019_OnTime[1] = {}
	tHalloweenHappiness2019_OnTime[1]["Type"] = 2 
	tHalloweenHappiness2019_OnTime[1]["TimeType"] = 4  -- 日时间
	tHalloweenHappiness2019_OnTime[1]["Multiple"] = {}
	tHalloweenHappiness2019_OnTime[1]["Multiple"][1] = "00:00 00:02"
	tHalloweenHappiness2019_OnTime[1]["Func"] = HalloweenHappiness2019_MoveNpc
	table.insert(tSystemTime_InitialData,tHalloweenHappiness2019_OnTime[1])

---------------------------------物品部分---------------------------------------------

--服务器启动
tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],HalloweenHappiness2019_MoveNpc)
