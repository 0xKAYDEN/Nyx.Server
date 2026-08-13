------------------------------------------------------------------------------------
--Name:  	200403[简体征服][任务脚本]1
--Creator:	兰瑞妹
--Created:	2020-04-03
------------------------------------------------------------------------------------
-- task_detail（任务id）说明
-- 4406		雾隠才藏
-- 4407		忍者秘辛
-- 4408		不速之客
-- 4409		前尘旧忆
-- 4410		随身手记
-- 4411		忍术法印
-- 4412		八门遁甲 开启开门和休门
-- 4413		妙木仙山
-- 4414		敌我不知(一)
-- 4415		敌我不知(二)
-- 4416		经年旧友
-- 4417		真相大白(一)
-- 4418		脱出牢笼
-- 4419		东瀛来袭(一)
-- 4420		东瀛来袭(二)
-- 4421		东瀛来袭(三)
-- 4422		冰释前嫌
-- 4423		昆虫盛宴
-- 4424		大恩大德
-- 4425		仙术之谜
-- 4426		八门之谜
-- 4427		自然之力
-- 4428		开启生门 开启生门
-- 4429		最佳导师
-- 4430		提升修为
-- 4431		仙术修行
-- 4432		真实之谷
-- 4433		伤门试炼 开启伤门
-- 4434		速度极限
-- 4435		提升修为
-- 4436		杜门试炼
-- 4437		捉虫大战 开启杜门
-- 4438		力量极限
-- 4439		再入谷底
-- 4440		景门试炼
-- 4441		恢复训练
-- 4442		提升修为
-- 4443		惊门之谜
-- 4444		年迈的影(一)
-- 4445		年迈的影(二)
-- 4446		最强幻术
-- 4447		幻术克星
-- 4448		最后一关
-- 4449		死门之谜
-- 4450		重归故里
-- 4451		寻找火影(一)
-- 4452		寻找火影(二)
-- 4453		寻找火影(三)
-- 4454		苦口婆心
-- 4455		三忍之战
-- 4456		风影踪迹(一)
-- 4457		风影踪迹(二)
-- 4458		风影踪迹(三)
-- 4459		风影踪迹(四)
-- 4460		风影踪迹(五)
-- 4461		童年真相
-- 4462		山野村夫(一)
-- 4463		山野村夫(二)
-- 4464		难言之隐
-- 4465		怪物牛鬼
-- 4466		躲避相亲(一)
-- 4467		躲避相亲(二)
-- 4468		躲避相亲(三)
-- 4469		忍刀七人众
-- 4470		五影大会
-- 4471		秽土转生
-- 4472		战前准备
-- 4473		提升修为
-- 4474		突袭鬼岛
-- 4475		忍者丧钟
-- 4476		生死一线
-- 4477		死而复生 开启死门
-- 4478		仙人之体
---------------------------- 任务配置 ----------------------------
-- 雾隠才藏
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4406] = {}
tNewTaskTemplate[4406]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4406]["BeginNpcId"] = 25850 -- 接任务npc
tNewTaskTemplate[4406]["EndNpcId"] = 25850 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4406]["Msg"] = {}
tNewTaskTemplate[4406]["Msg"]["Middle"] = {}
tNewTaskTemplate[4406]["Msg"]["Accept"] = "2-1" -- 接任务 - 25850
tNewTaskTemplate[4406]["Msg"]["NoCompleteTask"] = "3-1" -- 已接任务（未完成） - 25850
tNewTaskTemplate[4406]["Msg"]["Complete"] = "4-1" -- 交任务 - 25850
tNewTaskTemplate[4406]["Msg"]["CompleteTaskData"] = "5-1" -- 交任务掩码未完成 - 25850
tNewTaskTemplate[4406]["Msg"]["AcceptLevel"] = "2-2" -- 接任务职阶不够 - 25850
-- 接任务的条件需求
tNewTaskTemplate[4406]["AcceptDemand"] = {}
tNewTaskTemplate[4406]["AcceptDemand"]["FrontTask"] = 4481 -- 前置任务
tNewTaskTemplate[4406]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4406]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4406]["Accept"] = {}
tNewTaskTemplate[4406]["Accept"]["Find"] = {}
tNewTaskTemplate[4406]["Accept"]["Find"]["NpcId"] = 25850 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4406]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4406]["Complete"] = {}
tNewTaskTemplate[4406]["Complete"]["NextTask"] = 4407 -- 下一个任务


------------------------------------------------
-- 忍者秘辛
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4407] = {}
tNewTaskTemplate[4407]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4407]["BeginNpcId"] = 25850 -- 接任务npc
tNewTaskTemplate[4407]["EndNpcId"] = 25850 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4407]["Msg"] = {}
tNewTaskTemplate[4407]["Msg"]["Middle"] = {}
tNewTaskTemplate[4407]["Msg"]["Accept"] = "6-1" -- 接任务 - 25850
tNewTaskTemplate[4407]["Msg"]["NoCompleteTask"] = "7-1" -- 已接任务（未完成） - 25850
tNewTaskTemplate[4407]["Msg"]["Complete"] = "8-1" -- 交任务 - 25850
tNewTaskTemplate[4407]["Msg"]["CompleteTaskData"] = "9-1" -- 交任务掩码未完成 - 25850
-- 接任务的条件需求
tNewTaskTemplate[4407]["AcceptDemand"] = {}
tNewTaskTemplate[4407]["AcceptDemand"]["FrontTask"] = 4406 -- 前置任务
tNewTaskTemplate[4407]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4407]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4407]["Accept"] = {}
tNewTaskTemplate[4407]["Accept"]["Find"] = {}
tNewTaskTemplate[4407]["Accept"]["Find"]["NpcId"] = 25850 -- 寻路npc
-- 接任务寻路后触发的剧情
tNewTaskTemplate[4407]["Accept"]["NewPlotId"] = 37 -- 播放剧情
-- 完成任务的条件需求
tNewTaskTemplate[4407]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4407]["Complete"] = {}
tNewTaskTemplate[4407]["Complete"]["NextTask"] = 4408 -- 下一个任务


------------------------------------------------
-- 不速之客
-- 【旧副本】
tNewTaskTemplate[4408] = {}
tNewTaskTemplate[4408]["Type"] = 8 -- 任务类型
tNewTaskTemplate[4408]["BeginNpcId"] = 25850 -- 接任务npc
tNewTaskTemplate[4408]["EndNpcId"] = 25851 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4408]["Msg"] = {}
tNewTaskTemplate[4408]["Msg"]["Middle"] = {}
tNewTaskTemplate[4408]["Msg"]["Accept"] = "10-1" -- 接任务 - 25850
tNewTaskTemplate[4408]["Msg"]["NoCompleteTask"] = "10-2" -- 已接任务（未完成） - 25850
tNewTaskTemplate[4408]["Msg"]["Complete"] = "2-1" -- 交任务 - 25851
tNewTaskTemplate[4408]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25851
-- 接任务的条件需求
tNewTaskTemplate[4408]["AcceptDemand"] = {}
tNewTaskTemplate[4408]["AcceptDemand"]["FrontTask"] = 4407 -- 前置任务
tNewTaskTemplate[4408]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4408]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4408]["Accept"] = {}
------- 旧副本配置开始 -------
tNewTaskTemplate[4408]["Instance"] = {}
tNewTaskTemplate[4408]["Instance"]["Type"] = 459 -- 副本ID
tNewTaskTemplate[4408]["Instance"]["Leave"] = {} -- 离开副本传送配置
tNewTaskTemplate[4408]["Instance"]["Leave"]["MapId"] = 10653
tNewTaskTemplate[4408]["Instance"]["Leave"]["PosX"] = 78
tNewTaskTemplate[4408]["Instance"]["Leave"]["PosY"] = 59
tNewTaskTemplate[4408]["Instance"]["Prompt"] = tNinjaQuest_Text["InstancePrompt"][4303]
tNewTaskTemplate[4408]["Instance"]["MsgBox"] = tNinjaQuest_Text["InstanceMsgBox"][4303]
tNewTaskTemplate[4408]["Instance"]["MsgBoxWay"] = {} -- 进入副本105提示确定后寻路配置
tNewTaskTemplate[4408]["Instance"]["MsgBoxWay"]["PosX"] = 43
tNewTaskTemplate[4408]["Instance"]["MsgBoxWay"]["PosY"] = 33
tNewTaskTemplate[4408]["Instance"]["Monster"] = {} -- 副本刷怪坐标
tNewTaskTemplate[4408]["Instance"]["Monster"][1] = {}
tNewTaskTemplate[4408]["Instance"]["Monster"][1]["MonsterId"] = 5913
tNewTaskTemplate[4408]["Instance"]["Monster"][1]["MonsterNum"] = 1
tNewTaskTemplate[4408]["Instance"]["Monster"][1]["GenId"] = 30592
tNewTaskTemplate[4408]["Instance"]["Monster"][1]["PosX"] = 43
tNewTaskTemplate[4408]["Instance"]["Monster"][1]["PosY"] = 33
------- 旧副本配置开始 -------
-- 中间表现
tNewTaskTemplate[4408]["Middle"] = {}
tNewTaskTemplate[4408]["Middle"]["Monster"] = {}
tNewTaskTemplate[4408]["Middle"]["Monster"][5913] = {} -- 怪物ID=5913，【东瀛忍者】
tNewTaskTemplate[4408]["Middle"]["Monster"][5913]["Index"] = 1 -- Task掩码位
tNewTaskTemplate[4408]["Middle"]["Monster"][5913]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4408]["Msg"]["HandTask"] = tNinjaQuest_Text["HandTask"][4303] -- 完成中间环节，105提示
-- 完成任务的条件需求
tNewTaskTemplate[4408]["CompleteDemand"] = {}
tNewTaskTemplate[4408]["CompleteDemand"]["TaskData"] = {}
tNewTaskTemplate[4408]["CompleteDemand"]["TaskData"][1] = 1 -- 掩码data1，需要值1
tNewTaskTemplate[4408]["CompleteDemand"]["TaskData"][2] = 1 -- 掩码data1，需要值1
-- 完成任务的表现
tNewTaskTemplate[4408]["Complete"] = {}
tNewTaskTemplate[4408]["Complete"]["NextTask"] = 4409 -- 下一个任务


------------------------------------------------
-- 前尘旧忆
-- 【采集类】
tNewTaskTemplate[4409] = {}
tNewTaskTemplate[4409]["Type"] = 6 -- 任务类型
tNewTaskTemplate[4409]["BeginNpcId"] = 25851 -- 接任务npc
tNewTaskTemplate[4409]["EndNpcId"] = 25851 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4409]["Msg"] = {}
tNewTaskTemplate[4409]["Msg"]["Middle"] = {}
tNewTaskTemplate[4409]["Msg"]["Accept"] = "4-1" -- 接任务 - 25851
tNewTaskTemplate[4409]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25851
tNewTaskTemplate[4409]["Msg"]["Complete"] = "6-1" -- 交任务 - 25851
tNewTaskTemplate[4409]["Msg"]["CompleteItem"] = "7-1" -- 交任务物品不足 - 25851
tNewTaskTemplate[4409]["Msg"]["CompleteTaskData"] = "5-1" -- 交任务掩码未完成 - 25851
-- 接任务的条件需求
tNewTaskTemplate[4409]["AcceptDemand"] = {}
tNewTaskTemplate[4409]["AcceptDemand"]["FrontTask"] = 4408 -- 前置任务
tNewTaskTemplate[4409]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4409]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4409]["Accept"] = {}
tNewTaskTemplate[4409]["Accept"]["Find"] = {}
tNewTaskTemplate[4409]["Accept"]["Find"]["MapId"] = 10763 -- 寻路mapid
tNewTaskTemplate[4409]["Accept"]["Find"]["PosX"] = 43 -- 寻路X坐标
tNewTaskTemplate[4409]["Accept"]["Find"]["PosY"] = 33 -- 寻路Y坐标
-- 中间表现
tNewTaskTemplate[4409]["Middle"] = {}
tNewTaskTemplate[4409]["Middle"]["Reading"] = {}
tNewTaskTemplate[4409]["Middle"]["Reading"]["Secs"] = 2 -- 读条秒数
tNewTaskTemplate[4409]["Middle"]["Reading"]["ActionId"] = 260 -- 读条动作
tNewTaskTemplate[4409]["Middle"]["Reading"]["Content"] = tNinjaQuest_NewText["ReadingContent"][4304] -- 读条文字
tNewTaskTemplate[4409]["Middle"]["Npc"] = {} -- npc集合
tNewTaskTemplate[4409]["Middle"]["Npc"][25951] = {}
tNewTaskTemplate[4409]["Middle"]["Npc"][25951]["ItemId"] = 3315325
tNewTaskTemplate[4409]["Middle"]["Npc"][25951]["ItemNum"] = 1
tNewTaskTemplate[4409]["Middle"]["Npc"][25951]["Reward"] = {} -- NpcId=25951，采集给物品（默认给赠）
tNewTaskTemplate[4409]["Middle"]["Npc"][25951]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4409]["Middle"]["Npc"][25951]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4409]["Middle"]["Npc"][25951]["Reward"]["RewardItem"][1]["Id"] = 3315325 -- 散落的纸张[属性:11][叠加:10000][金币:0]
tNewTaskTemplate[4409]["Middle"]["Npc"][25951]["Reward"]["RewardItem"][1]["Attr"] = "0 1"
tNewTaskTemplate[4409]["Middle"]["Npc"][25951]["Reward"]["RewardEffect"] = {} -- 采集成功光效
tNewTaskTemplate[4409]["Middle"]["Npc"][25951]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4409]["Middle"]["Npc"][25951]["Pos"] = {{43,32}}
tNewTaskTemplate[4409]["Msg"]["HandTask"] = tNinjaQuest_Text["HandTask"][4304] -- 完成中间环节，105提示
-- 中间任务触发的函数
tNewTaskTemplate[4409]["Middle"]["MiddleFunc"] = NinjaQuest_MidFunc
-- 完成任务的条件需求
tNewTaskTemplate[4409]["CompleteDemand"] = {}
tNewTaskTemplate[4409]["CompleteDemand"]["NeedItem"] = {} -- 完成任务需要的物品
tNewTaskTemplate[4409]["CompleteDemand"]["NeedItem"][1] = {}
tNewTaskTemplate[4409]["CompleteDemand"]["NeedItem"][1]["Id"] = 3315325 -- 散落的纸张[属性:11][叠加:10000][金币:0]
tNewTaskTemplate[4409]["CompleteDemand"]["NeedItem"][1]["ItemNum"] = 1
tNewTaskTemplate[4409]["CompleteDemand"]["TaskData"] = {}
tNewTaskTemplate[4409]["CompleteDemand"]["TaskData"][1] = 1 -- 掩码data1，需要值1
-- 完成任务的表现
tNewTaskTemplate[4409]["Complete"] = {}
tNewTaskTemplate[4409]["Complete"]["NextTask"] = 4410 -- 下一个任务
tNewTaskTemplate[4409]["Complete"]["Prompt"] = 1 -- 给奖励失败，出105提示
tNewTaskTemplate[4409]["Complete"]["Reward"] = {}
tNewTaskTemplate[4409]["Complete"]["Reward"]["DeleteItem"] = {} -- 完成任务删除所需物品
tNewTaskTemplate[4409]["Complete"]["Reward"]["DeleteItem"][1] = {}
tNewTaskTemplate[4409]["Complete"]["Reward"]["DeleteItem"][1]["Id"] = 3315325 -- 散落的纸张[属性:11][叠加:10000][金币:0]
tNewTaskTemplate[4409]["Complete"]["Reward"]["DeleteItem"][1]["ItemNum"] = 1


------------------------------------------------
-- 随身手记
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4410] = {}
tNewTaskTemplate[4410]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4410]["BeginNpcId"] = 25851 -- 接任务npc
tNewTaskTemplate[4410]["EndNpcId"] = 25850 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4410]["Msg"] = {}
tNewTaskTemplate[4410]["Msg"]["Middle"] = {}
tNewTaskTemplate[4410]["Msg"]["Accept"] = "8-1" -- 接任务 - 25851
tNewTaskTemplate[4410]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 25851
tNewTaskTemplate[4410]["Msg"]["Complete"] = "10-3" -- 交任务 - 25850
tNewTaskTemplate[4410]["Msg"]["CompleteTaskData"] = "10-4" -- 交任务掩码未完成 - 25850
-- 接任务的条件需求
tNewTaskTemplate[4410]["AcceptDemand"] = {}
tNewTaskTemplate[4410]["AcceptDemand"]["FrontTask"] = 4409 -- 前置任务
tNewTaskTemplate[4410]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4410]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4410]["Accept"] = {}
tNewTaskTemplate[4410]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4410]["Accept"]["Transfer"]["MapId"] = 10653 -- 传送mapid
tNewTaskTemplate[4410]["Accept"]["Transfer"]["PosX"] = 78 -- 传送X坐标
tNewTaskTemplate[4410]["Accept"]["Transfer"]["PosY"] = 59 -- 传送Y坐标
-- 完成任务的条件需求
tNewTaskTemplate[4410]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4410]["Complete"] = {}
tNewTaskTemplate[4410]["Complete"]["NextTask"] = 4411 -- 下一个任务
tNewTaskTemplate[4410]["Complete"]["Prompt"] = 1 -- 给奖励失败，出105提示
tNewTaskTemplate[4410]["Complete"]["Reward"] = {} -- 给奖励配置
tNewTaskTemplate[4410]["Complete"]["Reward"]["Log"] = "0,0,4410,0,18000222,3[3],3329979,50"
tNewTaskTemplate[4410]["Complete"]["Reward"]["RewardEffect"] = {}
tNewTaskTemplate[4410]["Complete"]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tNewTaskTemplate[4410]["Complete"]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4410]["Complete"]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4410]["Complete"]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4410]["Complete"]["Reward"]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华
tNewTaskTemplate[4410]["Complete"]["Reward"]["RewardItem"][1]["Attr"] = "0 50" -- 秘术精华*50


------------------------------------------------
-- 忍术法印
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4411] = {}
tNewTaskTemplate[4411]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4411]["BeginNpcId"] = 25850 -- 接任务npc
tNewTaskTemplate[4411]["EndNpcId"] = 25850 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4411]["Msg"] = {}
tNewTaskTemplate[4411]["Msg"]["Middle"] = {}
tNewTaskTemplate[4411]["Msg"]["Accept"] = "10-5" -- 接任务 - 25850
tNewTaskTemplate[4411]["Msg"]["NoCompleteTask"] = "10-6" -- 已接任务（未完成） - 25850
tNewTaskTemplate[4411]["Msg"]["Complete"] = "10-7" -- 交任务 - 25850
tNewTaskTemplate[4411]["Msg"]["CompleteTaskData"] = "10-8" -- 交任务掩码未完成 - 25850
-- 接任务的条件需求
tNewTaskTemplate[4411]["AcceptDemand"] = {}
tNewTaskTemplate[4411]["AcceptDemand"]["FrontTask"] = 4410 -- 前置任务
tNewTaskTemplate[4411]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4411]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4411]["Accept"] = {}
tNewTaskTemplate[4411]["Accept"]["Find"] = {}
tNewTaskTemplate[4411]["Accept"]["Find"]["NpcId"] = 25850 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4411]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4411]["Complete"] = {}
tNewTaskTemplate[4411]["Complete"]["NextTask"] = 4412 -- 下一个任务


------------------------------------------------
-- 八门遁甲
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4412] = {}
tNewTaskTemplate[4412]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4412]["BeginNpcId"] = 25850 -- 接任务npc
tNewTaskTemplate[4412]["EndNpcId"] = 25850 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4412]["Msg"] = {}
tNewTaskTemplate[4412]["Msg"]["Middle"] = {}
tNewTaskTemplate[4412]["Msg"]["Accept"] = "10-9" -- 接任务 - 25850
tNewTaskTemplate[4412]["Msg"]["NoCompleteTask"] = "10-10" -- 已接任务（未完成） - 25850
tNewTaskTemplate[4412]["Msg"]["Complete"] = "10-11" -- 交任务 - 25850
tNewTaskTemplate[4412]["Msg"]["CompleteTaskData"] = "10-12" -- 交任务掩码未完成 - 25850
-- 接任务的条件需求
tNewTaskTemplate[4412]["AcceptDemand"] = {}
tNewTaskTemplate[4412]["AcceptDemand"]["FrontTask"] = 4411 -- 前置任务
tNewTaskTemplate[4412]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4412]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4412]["Accept"] = {}
tNewTaskTemplate[4412]["Accept"]["PlotId"] = 28 -- 播放剧情
tNewTaskTemplate[4412]["Accept"]["Find"] = {}
tNewTaskTemplate[4412]["Accept"]["Find"]["NpcId"] = 25850 -- 寻路npc
-- 接任务触发的函数
tNewTaskTemplate[4412]["Accept"]["AcceptFunc"] = NinjaQuest_AcceptFunc
-- 完成任务的条件需求
tNewTaskTemplate[4412]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4412]["Complete"] = {}
tNewTaskTemplate[4412]["Complete"]["NextTask"] = 4413 -- 下一个任务
-- 交任务触发的函数
tNewTaskTemplate[4412]["Complete"]["CompleteFunc"] = NinjaQuest_CompleteFunc


------------------------------------------------
-- 妙木仙山
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4413] = {}
tNewTaskTemplate[4413]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4413]["BeginNpcId"] = 25850 -- 接任务npc
tNewTaskTemplate[4413]["EndNpcId"] = 25859 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4413]["Msg"] = {}
tNewTaskTemplate[4413]["Msg"]["Middle"] = {}
tNewTaskTemplate[4413]["Msg"]["Accept"] = "10-13" -- 接任务 - 25850
tNewTaskTemplate[4413]["Msg"]["NoCompleteTask"] = "10-14" -- 已接任务（未完成） - 25850
tNewTaskTemplate[4413]["Msg"]["Complete"] = "2-1" -- 交任务 - 25859
tNewTaskTemplate[4413]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25859
-- 接任务的条件需求
tNewTaskTemplate[4413]["AcceptDemand"] = {}
tNewTaskTemplate[4413]["AcceptDemand"]["FrontTask"] = 4412 -- 前置任务
tNewTaskTemplate[4413]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4413]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4413]["Accept"] = {}
tNewTaskTemplate[4413]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4413]["Accept"]["Transfer"]["MapId"] = 10364 -- 传送mapid
tNewTaskTemplate[4413]["Accept"]["Transfer"]["PosX"] = 243 -- 传送X坐标
tNewTaskTemplate[4413]["Accept"]["Transfer"]["PosY"] = 344 -- 传送Y坐标
-- 完成任务的条件需求
tNewTaskTemplate[4413]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4413]["Complete"] = {}
tNewTaskTemplate[4413]["Complete"]["NextTask"] = 4414 -- 下一个任务


------------------------------------------------
-- 敌我不知（一）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4414] = {}
tNewTaskTemplate[4414]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4414]["BeginNpcId"] = 25859 -- 接任务npc
tNewTaskTemplate[4414]["EndNpcId"] = 25852 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4414]["Msg"] = {}
tNewTaskTemplate[4414]["Msg"]["Middle"] = {}
tNewTaskTemplate[4414]["Msg"]["Accept"] = "4-1" -- 接任务 - 25859
tNewTaskTemplate[4414]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25859
tNewTaskTemplate[4414]["Msg"]["Complete"] = "2-1" -- 交任务 - 25852
tNewTaskTemplate[4414]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25852
tNewTaskTemplate[4414]["Msg"]["AcceptTask"] = tNinjaQuest_NewText["AcceptTask"][4309] -- 传送后105提示
-- 接任务的条件需求
tNewTaskTemplate[4414]["AcceptDemand"] = {}
tNewTaskTemplate[4414]["AcceptDemand"]["FrontTask"] = 4413 -- 前置任务
tNewTaskTemplate[4414]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4414]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4414]["Accept"] = {}
tNewTaskTemplate[4414]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4414]["Accept"]["Transfer"]["MapId"] = 10764 -- 传送mapid
tNewTaskTemplate[4414]["Accept"]["Transfer"]["PosX"] = 259 -- 传送X坐标
tNewTaskTemplate[4414]["Accept"]["Transfer"]["PosY"] = 376 -- 传送Y坐标
-- 接任务触发的函数
tNewTaskTemplate[4414]["Accept"]["AcceptFunc"] = NinjaQuest_AcceptFunc
-- 完成任务的条件需求
tNewTaskTemplate[4414]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4414]["Complete"] = {}
tNewTaskTemplate[4414]["Complete"]["NextTask"] = 4415 -- 下一个任务


------------------------------------------------
-- 敌我不知（二）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4415] = {}
tNewTaskTemplate[4415]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4415]["BeginNpcId"] = 25852 -- 接任务npc
tNewTaskTemplate[4415]["EndNpcId"] = 25853 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4415]["Msg"] = {}
tNewTaskTemplate[4415]["Msg"]["Middle"] = {}
tNewTaskTemplate[4415]["Msg"]["Accept"] = "4-1" -- 接任务 - 25852
tNewTaskTemplate[4415]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25852
tNewTaskTemplate[4415]["Msg"]["Complete"] = "2-1" -- 交任务 - 25853
tNewTaskTemplate[4415]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25853
tNewTaskTemplate[4415]["Msg"]["AcceptTask"] = tNinjaQuest_NewText["AcceptTask"][4310] -- 传送后105提示
-- 接任务的条件需求
tNewTaskTemplate[4415]["AcceptDemand"] = {}
tNewTaskTemplate[4415]["AcceptDemand"]["FrontTask"] = 4414 -- 前置任务
tNewTaskTemplate[4415]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4415]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4415]["Accept"] = {}
tNewTaskTemplate[4415]["Accept"]["PlotId"] = 29 -- 播放剧情
tNewTaskTemplate[4415]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4415]["Accept"]["Transfer"]["MapId"] = 10765 -- 传送mapid
tNewTaskTemplate[4415]["Accept"]["Transfer"]["PosX"] = 266 -- 传送X坐标
tNewTaskTemplate[4415]["Accept"]["Transfer"]["PosY"] = 295 -- 传送Y坐标
-- 接任务触发的函数
tNewTaskTemplate[4415]["Accept"]["AcceptFunc"] = NinjaQuest_AcceptFunc
-- 完成任务的条件需求
tNewTaskTemplate[4415]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4415]["Complete"] = {}
tNewTaskTemplate[4415]["Complete"]["NextTask"] = 4416 -- 下一个任务


------------------------------------------------
-- 经年旧友
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4416] = {}
tNewTaskTemplate[4416]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4416]["BeginNpcId"] = 25853 -- 接任务npc
tNewTaskTemplate[4416]["EndNpcId"] = 25854 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4416]["Msg"] = {}
tNewTaskTemplate[4416]["Msg"]["Middle"] = {}
tNewTaskTemplate[4416]["Msg"]["Accept"] = "4-1" -- 接任务 - 25853
tNewTaskTemplate[4416]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25853
tNewTaskTemplate[4416]["Msg"]["Complete"] = "2-1" -- 交任务 - 25854
tNewTaskTemplate[4416]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25854
-- 接任务的条件需求
tNewTaskTemplate[4416]["AcceptDemand"] = {}
tNewTaskTemplate[4416]["AcceptDemand"]["FrontTask"] = 4415 -- 前置任务
tNewTaskTemplate[4416]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4416]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4416]["Accept"] = {}
tNewTaskTemplate[4416]["Accept"]["Find"] = {}
tNewTaskTemplate[4416]["Accept"]["Find"]["NpcId"] = 25854 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4416]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4416]["Complete"] = {}
tNewTaskTemplate[4416]["Complete"]["NextTask"] = 4417 -- 下一个任务


------------------------------------------------
-- 真相大白（一）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4417] = {}
tNewTaskTemplate[4417]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4417]["BeginNpcId"] = 25854 -- 接任务npc
tNewTaskTemplate[4417]["EndNpcId"] = 25854 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4417]["Msg"] = {}
tNewTaskTemplate[4417]["Msg"]["Middle"] = {}
tNewTaskTemplate[4417]["Msg"]["Accept"] = "4-1" -- 接任务 - 25854
tNewTaskTemplate[4417]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25854
tNewTaskTemplate[4417]["Msg"]["Complete"] = "6-1" -- 交任务 - 25854
tNewTaskTemplate[4417]["Msg"]["CompleteTaskData"] = "7-1" -- 交任务掩码未完成 - 25854
-- 接任务的条件需求
tNewTaskTemplate[4417]["AcceptDemand"] = {}
tNewTaskTemplate[4417]["AcceptDemand"]["FrontTask"] = 4416 -- 前置任务
tNewTaskTemplate[4417]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4417]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4417]["Accept"] = {}
tNewTaskTemplate[4417]["Accept"]["Find"] = {}
tNewTaskTemplate[4417]["Accept"]["Find"]["NpcId"] = 25854 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4417]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4417]["Complete"] = {}
tNewTaskTemplate[4417]["Complete"]["PlotId"] = 30 -- 完成任务后触发的剧情表现
tNewTaskTemplate[4417]["Complete"]["NoviceId"] = 1077 -- 播放漫画
tNewTaskTemplate[4417]["Complete"]["NextTask"] = 4418 -- 下一个任务


------------------------------------------------
-- 脱出牢笼
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4418] = {}
tNewTaskTemplate[4418]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4418]["BeginNpcId"] = 25854 -- 接任务npc
tNewTaskTemplate[4418]["EndNpcId"] = 25854 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4418]["Msg"] = {}
tNewTaskTemplate[4418]["Msg"]["Middle"] = {}
tNewTaskTemplate[4418]["Msg"]["Accept"] = "8-1" -- 接任务 - 25854
tNewTaskTemplate[4418]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 25854
tNewTaskTemplate[4418]["Msg"]["Complete"] = "10-1" -- 交任务 - 25854
tNewTaskTemplate[4418]["Msg"]["CompleteTaskData"] = "10-2" -- 交任务掩码未完成 - 25854
-- 接任务的条件需求
tNewTaskTemplate[4418]["AcceptDemand"] = {}
tNewTaskTemplate[4418]["AcceptDemand"]["FrontTask"] = 4417 -- 前置任务
tNewTaskTemplate[4418]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4418]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4418]["Accept"] = {}
tNewTaskTemplate[4418]["Accept"]["Find"] = {}
tNewTaskTemplate[4418]["Accept"]["Find"]["NpcId"] = 25854 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4418]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4418]["Complete"] = {}
tNewTaskTemplate[4418]["Complete"]["NextTask"] = 4419 -- 下一个任务


------------------------------------------------
-- 东瀛来袭（一）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4419] = {}
tNewTaskTemplate[4419]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4419]["BeginNpcId"] = 25854 -- 接任务npc
tNewTaskTemplate[4419]["EndNpcId"] = 25852 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4419]["Msg"] = {}
tNewTaskTemplate[4419]["Msg"]["Middle"] = {}
tNewTaskTemplate[4419]["Msg"]["Accept"] = "10-3" -- 接任务 - 25854
tNewTaskTemplate[4419]["Msg"]["NoCompleteTask"] = "10-4" -- 已接任务（未完成） - 25854
tNewTaskTemplate[4419]["Msg"]["Complete"] = "6-1" -- 交任务 - 25852
tNewTaskTemplate[4419]["Msg"]["CompleteTaskData"] = "7-1" -- 交任务掩码未完成 - 25852
-- 接任务的条件需求
tNewTaskTemplate[4419]["AcceptDemand"] = {}
tNewTaskTemplate[4419]["AcceptDemand"]["FrontTask"] = 4418 -- 前置任务
tNewTaskTemplate[4419]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4419]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4419]["Accept"] = {}
tNewTaskTemplate[4419]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4419]["Accept"]["Transfer"]["MapId"] = 10764 -- 传送mapid
tNewTaskTemplate[4419]["Accept"]["Transfer"]["PosX"] = 255 -- 传送X坐标
tNewTaskTemplate[4419]["Accept"]["Transfer"]["PosY"] = 338 -- 传送Y坐标
-- 完成任务的条件需求
tNewTaskTemplate[4419]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4419]["Complete"] = {}
tNewTaskTemplate[4419]["Complete"]["NextTask"] = 4420 -- 下一个任务


------------------------------------------------
-- 东瀛来袭（二）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4420] = {}
tNewTaskTemplate[4420]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4420]["BeginNpcId"] = 25852 -- 接任务npc
tNewTaskTemplate[4420]["EndNpcId"] = 26012 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4420]["Msg"] = {}
tNewTaskTemplate[4420]["Msg"]["Middle"] = {}
tNewTaskTemplate[4420]["Msg"]["Accept"] = "8-1" -- 接任务 - 25852
tNewTaskTemplate[4420]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 25852
tNewTaskTemplate[4420]["Msg"]["Complete"] = "2-1" -- 交任务 - 26012
tNewTaskTemplate[4420]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 26012
-- 接任务的条件需求
tNewTaskTemplate[4420]["AcceptDemand"] = {}
tNewTaskTemplate[4420]["AcceptDemand"]["FrontTask"] = 4419 -- 前置任务
tNewTaskTemplate[4420]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4420]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4420]["Accept"] = {}
tNewTaskTemplate[4420]["Accept"]["Find"] = {}
tNewTaskTemplate[4420]["Accept"]["Find"]["NpcId"] = 26012 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4420]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4420]["Complete"] = {}
tNewTaskTemplate[4420]["Complete"]["NextTask"] = 4421 -- 下一个任务


------------------------------------------------
-- 东瀛来袭（三）
-- 【杀怪计数】
tNewTaskTemplate[4421] = {}
tNewTaskTemplate[4421]["Type"] = 4 -- 任务类型
tNewTaskTemplate[4421]["BeginNpcId"] = 26012 -- 接任务npc
tNewTaskTemplate[4421]["EndNpcId"] = 26012 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4421]["Msg"] = {}
tNewTaskTemplate[4421]["Msg"]["Middle"] = {}
tNewTaskTemplate[4421]["Msg"]["Accept"] = "4-1" -- 接任务 - 26012
tNewTaskTemplate[4421]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 26012
tNewTaskTemplate[4421]["Msg"]["Complete"] = "6-1" -- 交任务 - 26012
tNewTaskTemplate[4421]["Msg"]["CompleteTaskData"] = "7-1" -- 交任务掩码未完成 - 26012
-- 接任务的条件需求
tNewTaskTemplate[4421]["AcceptDemand"] = {}
tNewTaskTemplate[4421]["AcceptDemand"]["FrontTask"] = 4420 -- 前置任务
tNewTaskTemplate[4421]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4421]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4421]["Accept"] = {}
tNewTaskTemplate[4421]["Accept"]["Find"] = {}
tNewTaskTemplate[4421]["Accept"]["Find"]["MapId"] = 10764 -- 寻路mapid
tNewTaskTemplate[4421]["Accept"]["Find"]["PosX"] = 238 -- 寻路X坐标
tNewTaskTemplate[4421]["Accept"]["Find"]["PosY"] = 292 -- 寻路Y坐标
-- 接任务触发的函数
tNewTaskTemplate[4421]["Accept"]["AcceptFunc"] = NinjaQuest_AcceptFunc
-- 中间表现
tNewTaskTemplate[4421]["Middle"] = {}
tNewTaskTemplate[4421]["Middle"]["Monster"] = {}
tNewTaskTemplate[4421]["Middle"]["Monster"][5914] = {} -- 怪物ID=5914，【鬼岛刺客】
tNewTaskTemplate[4421]["Middle"]["Monster"][5914]["Index"] = 1 -- Task掩码位
tNewTaskTemplate[4421]["Middle"]["Monster"][5914]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4421]["Msg"]["HandTask"] = tNinjaQuest_Text["HandTask"][4316] -- 完成中间环节，105提示
-- 完成任务的条件需求
tNewTaskTemplate[4421]["CompleteDemand"] = {}
tNewTaskTemplate[4421]["CompleteDemand"]["TaskData"] = {}
tNewTaskTemplate[4421]["CompleteDemand"]["TaskData"][1] = 1 -- 掩码data1，需要值1
-- 完成任务的表现
tNewTaskTemplate[4421]["Complete"] = {}
tNewTaskTemplate[4421]["Complete"]["NextTask"] = 4422 -- 下一个任务


------------------------------------------------
-- 冰释前嫌
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4422] = {}
tNewTaskTemplate[4422]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4422]["BeginNpcId"] = 26012 -- 接任务npc
tNewTaskTemplate[4422]["EndNpcId"] = 25855 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4422]["Msg"] = {}
tNewTaskTemplate[4422]["Msg"]["Middle"] = {}
tNewTaskTemplate[4422]["Msg"]["Accept"] = "8-1" -- 接任务 - 26012
tNewTaskTemplate[4422]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 26012
tNewTaskTemplate[4422]["Msg"]["Complete"] = "2-1" -- 交任务 - 25855
tNewTaskTemplate[4422]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25855
-- 接任务的条件需求
tNewTaskTemplate[4422]["AcceptDemand"] = {}
tNewTaskTemplate[4422]["AcceptDemand"]["FrontTask"] = 4421 -- 前置任务
tNewTaskTemplate[4422]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4422]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4422]["Accept"] = {}
tNewTaskTemplate[4422]["Accept"]["Find"] = {}
tNewTaskTemplate[4422]["Accept"]["Find"]["NpcId"] = 25855 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4422]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4422]["Complete"] = {}
tNewTaskTemplate[4422]["Complete"]["NextTask"] = 4423 -- 下一个任务
tNewTaskTemplate[4422]["Complete"]["Prompt"] = 1 -- 给奖励失败，出105提示
tNewTaskTemplate[4422]["Complete"]["Reward"] = {} -- 给奖励配置
tNewTaskTemplate[4422]["Complete"]["Reward"]["Log"] = "0,0,4422,0,18000222,3[3],3329979,5"
tNewTaskTemplate[4422]["Complete"]["Reward"]["RewardEffect"] = {}
tNewTaskTemplate[4422]["Complete"]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tNewTaskTemplate[4422]["Complete"]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4422]["Complete"]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4422]["Complete"]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4422]["Complete"]["Reward"]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华
tNewTaskTemplate[4422]["Complete"]["Reward"]["RewardItem"][1]["Attr"] = "0 5" -- 秘术精华*5


------------------------------------------------
-- 昆虫盛宴
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4423] = {}
tNewTaskTemplate[4423]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4423]["BeginNpcId"] = 25855 -- 接任务npc
tNewTaskTemplate[4423]["EndNpcId"] = 25855 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4423]["Msg"] = {}
tNewTaskTemplate[4423]["Msg"]["Middle"] = {}
tNewTaskTemplate[4423]["Msg"]["Accept"] = "4-1" -- 接任务 - 25855
tNewTaskTemplate[4423]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25855
tNewTaskTemplate[4423]["Msg"]["Complete"] = "6-1" -- 交任务 - 25855
tNewTaskTemplate[4423]["Msg"]["CompleteTaskData"] = "7-1" -- 交任务掩码未完成 - 25855
-- 接任务的条件需求
tNewTaskTemplate[4423]["AcceptDemand"] = {}
tNewTaskTemplate[4423]["AcceptDemand"]["FrontTask"] = 4422 -- 前置任务
tNewTaskTemplate[4423]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4423]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4423]["Accept"] = {}
tNewTaskTemplate[4423]["Accept"]["Find"] = {}
tNewTaskTemplate[4423]["Accept"]["Find"]["NpcId"] = 25855 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4423]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4423]["Complete"] = {}
tNewTaskTemplate[4423]["Complete"]["NextTask"] = 4424 -- 下一个任务


------------------------------------------------
-- 大恩大德
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4424] = {}
tNewTaskTemplate[4424]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4424]["BeginNpcId"] = 25855 -- 接任务npc
tNewTaskTemplate[4424]["EndNpcId"] = 26033 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4424]["Msg"] = {}
tNewTaskTemplate[4424]["Msg"]["Middle"] = {}
tNewTaskTemplate[4424]["Msg"]["Accept"] = "8-1" -- 接任务 - 25855
tNewTaskTemplate[4424]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 25855
tNewTaskTemplate[4424]["Msg"]["Complete"] = "2-1" -- 交任务 - 26033
tNewTaskTemplate[4424]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 26033
-- 接任务的条件需求
tNewTaskTemplate[4424]["AcceptDemand"] = {}
tNewTaskTemplate[4424]["AcceptDemand"]["FrontTask"] = 4423 -- 前置任务
tNewTaskTemplate[4424]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4424]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4424]["Accept"] = {}
tNewTaskTemplate[4424]["Accept"]["Find"] = {}
tNewTaskTemplate[4424]["Accept"]["Find"]["NpcId"] = 26033 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4424]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4424]["Complete"] = {}
tNewTaskTemplate[4424]["Complete"]["PlotId"] = 31 -- 完成任务后触发的剧情表现
tNewTaskTemplate[4424]["Complete"]["NextTask"] = 4425 -- 下一个任务


------------------------------------------------
-- 仙术之谜
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4425] = {}
tNewTaskTemplate[4425]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4425]["BeginNpcId"] = 26033 -- 接任务npc
tNewTaskTemplate[4425]["EndNpcId"] = 25856 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4425]["Msg"] = {}
tNewTaskTemplate[4425]["Msg"]["Middle"] = {}
tNewTaskTemplate[4425]["Msg"]["Accept"] = "4-1" -- 接任务 - 26033
tNewTaskTemplate[4425]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 26033
tNewTaskTemplate[4425]["Msg"]["Complete"] = "2-1" -- 交任务 - 25856
tNewTaskTemplate[4425]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25856
-- 接任务的条件需求
tNewTaskTemplate[4425]["AcceptDemand"] = {}
tNewTaskTemplate[4425]["AcceptDemand"]["FrontTask"] = 4424 -- 前置任务
tNewTaskTemplate[4425]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4425]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4425]["Accept"] = {}
tNewTaskTemplate[4425]["Accept"]["Find"] = {}
tNewTaskTemplate[4425]["Accept"]["Find"]["NpcId"] = 25856 -- 寻路npc
-- tNewTaskTemplate[4425]["Accept"]["Transfer"] = {}
-- tNewTaskTemplate[4425]["Accept"]["Transfer"]["MapId"] = 10764 -- 传送mapid
-- tNewTaskTemplate[4425]["Accept"]["Transfer"]["PosX"] = 185 -- 传送X坐标
-- tNewTaskTemplate[4425]["Accept"]["Transfer"]["PosY"] = 134 -- 传送Y坐标
-- 完成任务的条件需求
tNewTaskTemplate[4425]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4425]["Complete"] = {}
tNewTaskTemplate[4425]["Complete"]["NextTask"] = 4426 -- 下一个任务


------------------------------------------------
-- 八门之谜
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4426] = {}
tNewTaskTemplate[4426]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4426]["BeginNpcId"] = 25856 -- 接任务npc
tNewTaskTemplate[4426]["EndNpcId"] = 25856 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4426]["Msg"] = {}
tNewTaskTemplate[4426]["Msg"]["Middle"] = {}
tNewTaskTemplate[4426]["Msg"]["Accept"] = "4-1" -- 接任务 - 25856
tNewTaskTemplate[4426]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25856
tNewTaskTemplate[4426]["Msg"]["Complete"] = "6-1" -- 交任务 - 25856
tNewTaskTemplate[4426]["Msg"]["CompleteTaskData"] = "7-1" -- 交任务掩码未完成 - 25856
-- 接任务的条件需求
tNewTaskTemplate[4426]["AcceptDemand"] = {}
tNewTaskTemplate[4426]["AcceptDemand"]["FrontTask"] = 4425 -- 前置任务
tNewTaskTemplate[4426]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4426]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4426]["Accept"] = {}
tNewTaskTemplate[4426]["Accept"]["Find"] = {}
tNewTaskTemplate[4426]["Accept"]["Find"]["NpcId"] = 25856 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4426]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4426]["Complete"] = {}
tNewTaskTemplate[4426]["Complete"]["NextTask"] = 4427 -- 下一个任务


------------------------------------------------
-- 自然之力
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4427] = {}
tNewTaskTemplate[4427]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4427]["BeginNpcId"] = 25856 -- 接任务npc
tNewTaskTemplate[4427]["EndNpcId"] = 25856 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4427]["Msg"] = {}
tNewTaskTemplate[4427]["Msg"]["Middle"] = {}
tNewTaskTemplate[4427]["Msg"]["Accept"] = "8-1" -- 接任务 - 25856
tNewTaskTemplate[4427]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 25856
tNewTaskTemplate[4427]["Msg"]["Complete"] = "10-1" -- 交任务 - 25856
tNewTaskTemplate[4427]["Msg"]["CompleteTaskData"] = "10-2" -- 交任务掩码未完成 - 25856
-- 接任务的条件需求
tNewTaskTemplate[4427]["AcceptDemand"] = {}
tNewTaskTemplate[4427]["AcceptDemand"]["FrontTask"] = 4426 -- 前置任务
tNewTaskTemplate[4427]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4427]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4427]["Accept"] = {}
tNewTaskTemplate[4427]["Accept"]["Find"] = {}
tNewTaskTemplate[4427]["Accept"]["Find"]["NpcId"] = 25856 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4427]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4427]["Complete"] = {}
tNewTaskTemplate[4427]["Complete"]["NextTask"] = 4428 -- 下一个任务


------------------------------------------------
-- 开启生门
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4428] = {}
tNewTaskTemplate[4428]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4428]["BeginNpcId"] = 25856 -- 接任务npc
tNewTaskTemplate[4428]["EndNpcId"] = 25856 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4428]["Msg"] = {}
tNewTaskTemplate[4428]["Msg"]["Middle"] = {}
tNewTaskTemplate[4428]["Msg"]["Accept"] = "10-3" -- 接任务 - 25856
tNewTaskTemplate[4428]["Msg"]["NoCompleteTask"] = "10-4" -- 已接任务（未完成） - 25856
tNewTaskTemplate[4428]["Msg"]["Complete"] = "10-5" -- 交任务 - 25856
tNewTaskTemplate[4428]["Msg"]["CompleteTaskData"] = "10-6" -- 交任务掩码未完成 - 25856
-- 接任务的条件需求
tNewTaskTemplate[4428]["AcceptDemand"] = {}
tNewTaskTemplate[4428]["AcceptDemand"]["FrontTask"] = 4427 -- 前置任务
tNewTaskTemplate[4428]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4428]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4428]["Accept"] = {}
tNewTaskTemplate[4428]["Accept"]["Find"] = {}
tNewTaskTemplate[4428]["Accept"]["Find"]["NpcId"] = 25856 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4428]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4428]["Complete"] = {}
tNewTaskTemplate[4428]["Complete"]["NextTask"] = 4429 -- 下一个任务
-- 交任务触发的函数
tNewTaskTemplate[4428]["Complete"]["CompleteFunc"] = NinjaQuest_CompleteFunc
tNewTaskTemplate[4428]["Complete"]["Prompt"] = 1 -- 给奖励失败，出105提示
tNewTaskTemplate[4428]["Complete"]["Reward"] = {} -- 给奖励配置
tNewTaskTemplate[4428]["Complete"]["Reward"]["Log"] = "0,0,4428,0,18000222,3[3],3315899,1"
tNewTaskTemplate[4428]["Complete"]["Reward"]["RewardEffect"] = {}
tNewTaskTemplate[4428]["Complete"]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tNewTaskTemplate[4428]["Complete"]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4428]["Complete"]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4428]["Complete"]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4428]["Complete"]["Reward"]["RewardItem"][1]["Id"] = 3315899 -- 法印提升自选礼盒[3315899][属性:11][叠加:10000][金币:0], 【表格】增强法印可选包
tNewTaskTemplate[4428]["Complete"]["Reward"]["RewardItem"][1]["Attr"] = "0 1" -- 法印提升自选礼盒*1


------------------------------------------------
-- 最佳导师
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4429] = {}
tNewTaskTemplate[4429]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4429]["BeginNpcId"] = 25856 -- 接任务npc
tNewTaskTemplate[4429]["EndNpcId"] = 25857 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4429]["Msg"] = {}
tNewTaskTemplate[4429]["Msg"]["Middle"] = {}
tNewTaskTemplate[4429]["Msg"]["Accept"] = "10-7" -- 接任务 - 25856
tNewTaskTemplate[4429]["Msg"]["NoCompleteTask"] = "10-8" -- 已接任务（未完成） - 25856
tNewTaskTemplate[4429]["Msg"]["Complete"] = "2-1" -- 交任务 - 25857
tNewTaskTemplate[4429]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25857
-- 接任务的条件需求
tNewTaskTemplate[4429]["AcceptDemand"] = {}
tNewTaskTemplate[4429]["AcceptDemand"]["FrontTask"] = 4428 -- 前置任务
tNewTaskTemplate[4429]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4429]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- 接任务触发的表现
tNewTaskTemplate[4429]["Accept"] = {}
tNewTaskTemplate[4429]["Accept"]["Find"] = {}
tNewTaskTemplate[4429]["Accept"]["Find"]["NpcId"] = 25857 -- 寻路npc
-- 接任务寻路后触发的剧情
tNewTaskTemplate[4429]["Accept"]["NewPlotId"] = 32 -- 播放剧情
-- 完成任务的条件需求
tNewTaskTemplate[4429]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4429]["Complete"] = {}
tNewTaskTemplate[4429]["Complete"]["NextTask"] = 4430 -- 下一个任务


------------------------------------------------
-- 提升修为
-- 【达到指定等级,职业,战斗力】
tNewTaskTemplate[4430] = {}
tNewTaskTemplate[4430]["Type"] = 1 -- 任务类型
tNewTaskTemplate[4430]["BeginNpcId"] = 25857 -- 接任务npc
tNewTaskTemplate[4430]["EndNpcId"] = 25857 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4430]["Msg"] = {}
tNewTaskTemplate[4430]["Msg"]["Middle"] = {}
tNewTaskTemplate[4430]["Msg"]["Accept"] = "4-1" -- 接任务 - 25857
tNewTaskTemplate[4430]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25857
tNewTaskTemplate[4430]["Msg"]["Complete"] = "6-1" -- 交任务 - 25857
tNewTaskTemplate[4430]["Msg"]["ProLevel"] = "7-1" -- 交任职业等级不足 - 25857
-- 接任务的条件需求
tNewTaskTemplate[4430]["AcceptDemand"] = {}
tNewTaskTemplate[4430]["AcceptDemand"]["FrontTask"] = 4429 -- 前置任务
tNewTaskTemplate[4430]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4430]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- tNewTaskTemplate[4430]["AcceptDemand"]["ProLevel"] = 3 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4430]["Accept"] = {}
tNewTaskTemplate[4430]["Accept"]["Find"] = {}
tNewTaskTemplate[4430]["Accept"]["Find"]["NpcId"] = 25857 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4430]["CompleteDemand"] = {}
tNewTaskTemplate[4430]["CompleteDemand"]["ProLevel"] = 3 -- 职业等级
-- 完成任务的表现
tNewTaskTemplate[4430]["Complete"] = {}
tNewTaskTemplate[4430]["Complete"]["NextTask"] = 4431 -- 下一个任务


------------------------------------------------
-- 仙术修行
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4431] = {}
tNewTaskTemplate[4431]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4431]["BeginNpcId"] = 25857 -- 接任务npc
tNewTaskTemplate[4431]["EndNpcId"] = 25857 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4431]["Msg"] = {}
tNewTaskTemplate[4431]["Msg"]["Middle"] = {}
tNewTaskTemplate[4431]["Msg"]["Accept"] = "8-1" -- 接任务 - 25857
tNewTaskTemplate[4431]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 25857
tNewTaskTemplate[4431]["Msg"]["Complete"] = "10-1" -- 交任务 - 25857
tNewTaskTemplate[4431]["Msg"]["CompleteTaskData"] = "10-2" -- 交任务掩码未完成 - 25857
-- 接任务的条件需求
tNewTaskTemplate[4431]["AcceptDemand"] = {}
tNewTaskTemplate[4431]["AcceptDemand"]["FrontTask"] = 4430 -- 前置任务
tNewTaskTemplate[4431]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4431]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4431]["AcceptDemand"]["ProLevel"] = 3 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4431]["Accept"] = {}
tNewTaskTemplate[4431]["Accept"]["Find"] = {}
tNewTaskTemplate[4431]["Accept"]["Find"]["NpcId"] = 25857 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4431]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4431]["Complete"] = {}
tNewTaskTemplate[4431]["Complete"]["NextTask"] = 4432 -- 下一个任务


------------------------------------------------
-- 真实之谷
-- 【采集类】
tNewTaskTemplate[4432] = {}
tNewTaskTemplate[4432]["Type"] = 6 -- 任务类型
tNewTaskTemplate[4432]["BeginNpcId"] = 25857 -- 接任务npc
tNewTaskTemplate[4432]["EndNpcId"] = 25858 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4432]["Msg"] = {}
tNewTaskTemplate[4432]["Msg"]["Middle"] = {}
tNewTaskTemplate[4432]["Msg"]["Accept"] = "10-3" -- 接任务 - 25857
tNewTaskTemplate[4432]["Msg"]["NoCompleteTask"] = "10-4" -- 已接任务（未完成） - 25857
tNewTaskTemplate[4432]["Msg"]["Complete"] = "2-1" -- 交任务 - 25858
tNewTaskTemplate[4432]["Msg"]["CompleteItem"] = "3-1" -- 交任务物品不足 - 25858
-- 接任务的条件需求
tNewTaskTemplate[4432]["AcceptDemand"] = {}
tNewTaskTemplate[4432]["AcceptDemand"]["FrontTask"] = 4431 -- 前置任务
tNewTaskTemplate[4432]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4432]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4432]["AcceptDemand"]["ProLevel"] = 3 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4432]["Accept"] = {}
tNewTaskTemplate[4432]["Accept"]["Find"] = {}
tNewTaskTemplate[4432]["Accept"]["Find"]["MapId"] = 10764 -- 寻路mapid
tNewTaskTemplate[4432]["Accept"]["Find"]["PosX"] = 260 -- 寻路X坐标
tNewTaskTemplate[4432]["Accept"]["Find"]["PosY"] = 128 -- 寻路Y坐标
-- 中间表现
tNewTaskTemplate[4432]["Middle"] = {}
tNewTaskTemplate[4432]["Middle"]["Reading"] = {}
tNewTaskTemplate[4432]["Middle"]["Reading"]["Secs"] = 3 -- 读条秒数
tNewTaskTemplate[4432]["Middle"]["Reading"]["ActionId"] = 260 -- 读条动作
tNewTaskTemplate[4432]["Middle"]["Reading"]["Content"] = tNinjaQuest_NewText["ReadingContent"][4326] -- 读条文字
tNewTaskTemplate[4432]["Msg"]["HandTask"] = tNinjaQuest_Text["HandTask"][4326] -- 完成中间环节，105提示
-- 完成任务的条件需求
tNewTaskTemplate[4432]["CompleteDemand"] = {}
tNewTaskTemplate[4432]["CompleteDemand"]["TaskData"] = {}
tNewTaskTemplate[4432]["CompleteDemand"]["TaskData"][1] = 1 -- 掩码data1，需要值1
-- 完成任务的表现
tNewTaskTemplate[4432]["Complete"] = {}
tNewTaskTemplate[4432]["Complete"]["NextTask"] = 4433 -- 下一个任务


------------------------------------------------
-- 伤门试炼
-- 【旧副本】
tNewTaskTemplate[4433] = {}
tNewTaskTemplate[4433]["Type"] = 8 -- 任务类型
tNewTaskTemplate[4433]["BeginNpcId"] = 25858 -- 接任务npc
tNewTaskTemplate[4433]["EndNpcId"] = 25858 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4433]["Msg"] = {}
tNewTaskTemplate[4433]["Msg"]["Middle"] = {}
tNewTaskTemplate[4433]["Msg"]["Accept"] = "4-1" -- 接任务 - 25858
tNewTaskTemplate[4433]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25858
tNewTaskTemplate[4433]["Msg"]["Complete"] = "6-1" -- 交任务 - 25858
tNewTaskTemplate[4433]["Msg"]["CompleteTaskData"] = "7-1" -- 交任务掩码未完成 - 25858
-- 接任务的条件需求
tNewTaskTemplate[4433]["AcceptDemand"] = {}
tNewTaskTemplate[4433]["AcceptDemand"]["FrontTask"] = 4432 -- 前置任务
tNewTaskTemplate[4433]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4433]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4433]["AcceptDemand"]["ProLevel"] = 3 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4433]["Accept"] = {}
------- 旧副本配置开始 -------
tNewTaskTemplate[4433]["Instance"] = {}
tNewTaskTemplate[4433]["Instance"]["Type"] = 461 -- 副本ID
tNewTaskTemplate[4433]["Instance"]["Leave"] = {} -- 离开副本传送配置
tNewTaskTemplate[4433]["Instance"]["Leave"]["MapId"] = 10764
tNewTaskTemplate[4433]["Instance"]["Leave"]["PosX"] = 260
tNewTaskTemplate[4433]["Instance"]["Leave"]["PosY"] = 128
tNewTaskTemplate[4433]["Instance"]["Prompt"] = tNinjaQuest_Text["InstancePrompt"][4327]
tNewTaskTemplate[4433]["Instance"]["MsgBox"] = tNinjaQuest_Text["InstanceMsgBox"][4327]
-- 进入副本初始化函数
tNewTaskTemplate[4433]["Instance"]["InitFunc"] = NinjaQuest_InstanceInitFunc
-- 完成任务的条件需求
tNewTaskTemplate[4433]["CompleteDemand"] = {}
tNewTaskTemplate[4433]["CompleteDemand"]["TaskData"] = {}
tNewTaskTemplate[4433]["CompleteDemand"]["TaskData"][1] = 200 -- 掩码data1，需要值200
-- 完成任务的表现
tNewTaskTemplate[4433]["Complete"] = {}
tNewTaskTemplate[4433]["Complete"]["NextTask"] = 4434 -- 下一个任务
-- 交任务触发的函数
tNewTaskTemplate[4433]["Complete"]["CompleteFunc"] = NinjaQuest_CompleteFunc
tNewTaskTemplate[4433]["Complete"]["Prompt"] = 1 -- 给奖励失败，出105提示
tNewTaskTemplate[4433]["Complete"]["Reward"] = {} -- 给奖励配置
tNewTaskTemplate[4433]["Complete"]["Reward"]["Log"] = "0,0,4433,0,18000222,3[3],3315898,1"
tNewTaskTemplate[4433]["Complete"]["Reward"]["RewardEffect"] = {}
tNewTaskTemplate[4433]["Complete"]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tNewTaskTemplate[4433]["Complete"]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4433]["Complete"]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4433]["Complete"]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4433]["Complete"]["Reward"]["RewardItem"][1]["Id"] = 3315898 -- 基础法印自选礼盒[3315898][属性:11][叠加:10000][金币:0], 【表格】法印可选包
tNewTaskTemplate[4433]["Complete"]["Reward"]["RewardItem"][1]["Attr"] = "0 1" -- 基础法印自选礼盒*1


------------------------------------------------
-- 速度极限
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4434] = {}
tNewTaskTemplate[4434]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4434]["BeginNpcId"] = 25858 -- 接任务npc
tNewTaskTemplate[4434]["EndNpcId"] = 25858 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4434]["Msg"] = {}
tNewTaskTemplate[4434]["Msg"]["Middle"] = {}
tNewTaskTemplate[4434]["Msg"]["Accept"] = "8-1" -- 接任务 - 25858
tNewTaskTemplate[4434]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 25858
tNewTaskTemplate[4434]["Msg"]["Complete"] = "10-1" -- 交任务 - 25858
tNewTaskTemplate[4434]["Msg"]["CompleteTaskData"] = "10-2" -- 交任务掩码未完成 - 25858
-- 接任务的条件需求
tNewTaskTemplate[4434]["AcceptDemand"] = {}
tNewTaskTemplate[4434]["AcceptDemand"]["FrontTask"] = 4433 -- 前置任务
tNewTaskTemplate[4434]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4434]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4434]["AcceptDemand"]["ProLevel"] = 3 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4434]["Accept"] = {}
tNewTaskTemplate[4434]["Accept"]["Find"] = {}
tNewTaskTemplate[4434]["Accept"]["Find"]["NpcId"] = 25858 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4434]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4434]["Complete"] = {}
tNewTaskTemplate[4434]["Complete"]["NextTask"] = 4435 -- 下一个任务


------------------------------------------------
-- 提升修为
-- 【达到指定等级,职业,战斗力】
tNewTaskTemplate[4435] = {}
tNewTaskTemplate[4435]["Type"] = 1 -- 任务类型
tNewTaskTemplate[4435]["BeginNpcId"] = 25858 -- 接任务npc
tNewTaskTemplate[4435]["EndNpcId"] = 25858 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4435]["Msg"] = {}
tNewTaskTemplate[4435]["Msg"]["Middle"] = {}
tNewTaskTemplate[4435]["Msg"]["Accept"] = "10-3" -- 接任务 - 25858
tNewTaskTemplate[4435]["Msg"]["NoCompleteTask"] = "10-4" -- 已接任务（未完成） - 25858
tNewTaskTemplate[4435]["Msg"]["Complete"] = "10-5" -- 交任务 - 25858
tNewTaskTemplate[4435]["Msg"]["ProLevel"] = "10-6" -- 交任职业等级不足 - 25858
-- 接任务的条件需求
tNewTaskTemplate[4435]["AcceptDemand"] = {}
tNewTaskTemplate[4435]["AcceptDemand"]["FrontTask"] = 4434 -- 前置任务
tNewTaskTemplate[4435]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4435]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- tNewTaskTemplate[4435]["AcceptDemand"]["ProLevel"] = 4 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4435]["Accept"] = {}
tNewTaskTemplate[4435]["Accept"]["Find"] = {}
tNewTaskTemplate[4435]["Accept"]["Find"]["NpcId"] = 25858 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4435]["CompleteDemand"] = {}
tNewTaskTemplate[4435]["CompleteDemand"]["ProLevel"] = 4 -- 职业等级
-- 完成任务的表现
tNewTaskTemplate[4435]["Complete"] = {}
tNewTaskTemplate[4435]["Complete"]["NextTask"] = 4436 -- 下一个任务


------------------------------------------------
-- 杜门试炼
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4436] = {}
tNewTaskTemplate[4436]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4436]["BeginNpcId"] = 25858 -- 接任务npc
tNewTaskTemplate[4436]["EndNpcId"] = 26034 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4436]["Msg"] = {}
tNewTaskTemplate[4436]["Msg"]["Middle"] = {}
tNewTaskTemplate[4436]["Msg"]["Accept"] = "10-7" -- 接任务 - 25858
tNewTaskTemplate[4436]["Msg"]["NoCompleteTask"] = "10-8" -- 已接任务（未完成） - 25858
tNewTaskTemplate[4436]["Msg"]["Complete"] = "2-1" -- 交任务 - 26034
tNewTaskTemplate[4436]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 26034
-- 接任务的条件需求
tNewTaskTemplate[4436]["AcceptDemand"] = {}
tNewTaskTemplate[4436]["AcceptDemand"]["FrontTask"] = 4435 -- 前置任务
tNewTaskTemplate[4436]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4436]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4436]["AcceptDemand"]["ProLevel"] = 4 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4436]["Accept"] = {}
tNewTaskTemplate[4436]["Accept"]["Find"] = {}
tNewTaskTemplate[4436]["Accept"]["Find"]["NpcId"] = 26034 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4436]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4436]["Complete"] = {}
tNewTaskTemplate[4436]["Complete"]["NextTask"] = 4437 -- 下一个任务


------------------------------------------------
-- 捉虫大战
-- 【采集类】
tNewTaskTemplate[4437] = {}
tNewTaskTemplate[4437]["Type"] = 6 -- 任务类型
tNewTaskTemplate[4437]["BeginNpcId"] = 26034 -- 接任务npc
tNewTaskTemplate[4437]["EndNpcId"] = 26034 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4437]["Msg"] = {}
tNewTaskTemplate[4437]["Msg"]["Middle"] = {}
tNewTaskTemplate[4437]["Msg"]["Accept"] = "4-1" -- 接任务 - 26034
tNewTaskTemplate[4437]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 26034
tNewTaskTemplate[4437]["Msg"]["Complete"] = "6-1" -- 交任务 - 26034
tNewTaskTemplate[4437]["Msg"]["CompleteItem"] = "7-1" -- 交任务物品不足 - 26034
-- 接任务的条件需求
tNewTaskTemplate[4437]["AcceptDemand"] = {}
tNewTaskTemplate[4437]["AcceptDemand"]["FrontTask"] = 4436 -- 前置任务
tNewTaskTemplate[4437]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4437]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4437]["AcceptDemand"]["ProLevel"] = 4 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4437]["Accept"] = {}
tNewTaskTemplate[4437]["Accept"]["Find"] = {}
tNewTaskTemplate[4437]["Accept"]["Find"]["MapId"] = 10764 -- 寻路mapid
tNewTaskTemplate[4437]["Accept"]["Find"]["PosX"] = 251 -- 寻路X坐标
tNewTaskTemplate[4437]["Accept"]["Find"]["PosY"] = 118 -- 寻路Y坐标
-- 中间表现
tNewTaskTemplate[4437]["Middle"] = {}
tNewTaskTemplate[4437]["Middle"]["Reading"] = {}
tNewTaskTemplate[4437]["Middle"]["Reading"]["Secs"] = 2 -- 读条秒数
tNewTaskTemplate[4437]["Middle"]["Reading"]["ActionId"] = 220 -- 读条动作
tNewTaskTemplate[4437]["Middle"]["Reading"]["Content"] = tNinjaQuest_NewText["ReadingContent"][4330] -- 读条文字
tNewTaskTemplate[4437]["Msg"]["CollectFail"] = tNinjaQuest_NewText["CollectFail"][4330] -- 105提示
tNewTaskTemplate[4437]["Middle"]["IsRandom"] = 1
tNewTaskTemplate[4437]["Middle"]["Random"] = {}-- 概率为50%
tNewTaskTemplate[4437]["Middle"]["Random"]["ItemChanceSum"] = 10000
tNewTaskTemplate[4437]["Middle"]["Random"][1] = {}
tNewTaskTemplate[4437]["Middle"]["Random"][1]["RandomItemChanceType"] = 2
tNewTaskTemplate[4437]["Middle"]["Random"][1]["ItemChance"] = 5000
tNewTaskTemplate[4437]["Middle"]["Random"][1]["Item_1"] = 3315328
tNewTaskTemplate[4437]["Middle"]["Random"][2] = {}
tNewTaskTemplate[4437]["Middle"]["Random"][2]["RandomItemChanceType"] = 2
tNewTaskTemplate[4437]["Middle"]["Random"][2]["ItemChance"] = 5000
tNewTaskTemplate[4437]["Middle"]["FailEffect"] = {} -- 采集失败光效
tNewTaskTemplate[4437]["Middle"]["FailEffect"]["Effect"] = "attach_accept04"
-- 中间任务失败函数
tNewTaskTemplate[4437]["Middle"]["FailFunc"] = NinjaQuest_MidFailFunc
tNewTaskTemplate[4437]["Middle"]["Npc"] = {} -- npc集合
tNewTaskTemplate[4437]["Middle"]["Npc"][25952] = {}
tNewTaskTemplate[4437]["Middle"]["Npc"][25952]["ItemId"] = 3315328
tNewTaskTemplate[4437]["Middle"]["Npc"][25952]["ItemNum"] = 1
tNewTaskTemplate[4437]["Middle"]["Npc"][25952]["Reward"] = {} -- NpcId=25952，采集给物品（默认给赠）
tNewTaskTemplate[4437]["Middle"]["Npc"][25952]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4437]["Middle"]["Npc"][25952]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4437]["Middle"]["Npc"][25952]["Reward"]["RewardItem"][1]["Id"] = 3315328 -- 速速虫[属性:11][叠加:10000][金币:0]
tNewTaskTemplate[4437]["Middle"]["Npc"][25952]["Reward"]["RewardItem"][1]["Attr"] = "0 1"
tNewTaskTemplate[4437]["Middle"]["Npc"][25952]["Reward"]["RewardEffect"] = {} -- 采集成功光效
tNewTaskTemplate[4437]["Middle"]["Npc"][25952]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4437]["Middle"]["Npc"][26051] = {}
tNewTaskTemplate[4437]["Middle"]["Npc"][26051]["ItemId"] = 3315328
tNewTaskTemplate[4437]["Middle"]["Npc"][26051]["ItemNum"] = 1
tNewTaskTemplate[4437]["Middle"]["Npc"][26051]["Reward"] = {} -- NpcId=26051，采集给物品（默认给赠）
tNewTaskTemplate[4437]["Middle"]["Npc"][26051]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4437]["Middle"]["Npc"][26051]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4437]["Middle"]["Npc"][26051]["Reward"]["RewardItem"][1]["Id"] = 3315328 -- 速速虫[属性:11][叠加:10000][金币:0]
tNewTaskTemplate[4437]["Middle"]["Npc"][26051]["Reward"]["RewardItem"][1]["Attr"] = "0 1"
tNewTaskTemplate[4437]["Middle"]["Npc"][26051]["Reward"]["RewardEffect"] = {} -- 采集成功光效
tNewTaskTemplate[4437]["Middle"]["Npc"][26051]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4437]["Middle"]["Npc"][25952]["Pos"] = {{250,113},{255,113},{255,118}}
tNewTaskTemplate[4437]["Middle"]["Npc"][26051]["Pos"] = {{242,118},{240,115},{249,126}}
tNewTaskTemplate[4437]["Msg"]["HandTask"] = tNinjaQuest_Text["HandTask"][4330] -- 完成中间环节，105提示
-- 完成任务的条件需求
tNewTaskTemplate[4437]["CompleteDemand"] = {}
tNewTaskTemplate[4437]["CompleteDemand"]["NeedItem"] = {} -- 完成任务需要的物品
tNewTaskTemplate[4437]["CompleteDemand"]["NeedItem"][1] = {}
tNewTaskTemplate[4437]["CompleteDemand"]["NeedItem"][1]["Id"] = 3315328 -- 速速虫[属性:11][叠加:10000][金币:0]
tNewTaskTemplate[4437]["CompleteDemand"]["NeedItem"][1]["ItemNum"] = 1
-- 完成任务的表现
tNewTaskTemplate[4437]["Complete"] = {}
tNewTaskTemplate[4437]["Complete"]["NextTask"] = 4438 -- 下一个任务
tNewTaskTemplate[4437]["Complete"]["Prompt"] = 1 -- 给奖励失败，出105提示
tNewTaskTemplate[4437]["Complete"]["Reward"] = {}
tNewTaskTemplate[4437]["Complete"]["Reward"]["Log"] = "0,0,4437,0,18000222,3[3],3315899,1"
tNewTaskTemplate[4437]["Complete"]["Reward"]["DeleteItem"] = {} -- 完成任务删除所需物品
tNewTaskTemplate[4437]["Complete"]["Reward"]["DeleteItem"][1] = {}
tNewTaskTemplate[4437]["Complete"]["Reward"]["DeleteItem"][1]["Id"] = 3315328 -- 速速虫[属性:11][叠加:10000][金币:0]
tNewTaskTemplate[4437]["Complete"]["Reward"]["DeleteItem"][1]["ItemNum"] = 1
tNewTaskTemplate[4437]["Complete"]["Reward"]["RewardEffect"] = {}
tNewTaskTemplate[4437]["Complete"]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tNewTaskTemplate[4437]["Complete"]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4437]["Complete"]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4437]["Complete"]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4437]["Complete"]["Reward"]["RewardItem"][1]["Id"] = 3315899 -- 法印提升自选礼盒[3315899][属性:11][叠加:10000][金币:0], 【表格】增强法印可选包
tNewTaskTemplate[4437]["Complete"]["Reward"]["RewardItem"][1]["Attr"] = "0 1" -- 法印提升自选礼盒*1
-- 交任务触发的函数
tNewTaskTemplate[4437]["Complete"]["CompleteFunc"] = NinjaQuest_CompleteFunc

------------------------------------------------
-- 力量极限
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4438] = {}
tNewTaskTemplate[4438]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4438]["BeginNpcId"] = 26034 -- 接任务npc
tNewTaskTemplate[4438]["EndNpcId"] = 25858 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4438]["Msg"] = {}
tNewTaskTemplate[4438]["Msg"]["Middle"] = {}
tNewTaskTemplate[4438]["Msg"]["Accept"] = "8-1" -- 接任务 - 26034
tNewTaskTemplate[4438]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 26034
tNewTaskTemplate[4438]["Msg"]["Complete"] = "10-9" -- 交任务 - 25858
tNewTaskTemplate[4438]["Msg"]["CompleteTaskData"] = "10-10" -- 交任务掩码未完成 - 25858
-- 接任务的条件需求
tNewTaskTemplate[4438]["AcceptDemand"] = {}
tNewTaskTemplate[4438]["AcceptDemand"]["FrontTask"] = 4437 -- 前置任务
tNewTaskTemplate[4438]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4438]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4438]["AcceptDemand"]["ProLevel"] = 4 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4438]["Accept"] = {}
tNewTaskTemplate[4438]["Accept"]["Find"] = {}
tNewTaskTemplate[4438]["Accept"]["Find"]["NpcId"] = 25858 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4438]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4438]["Complete"] = {}
tNewTaskTemplate[4438]["Complete"]["NextTask"] = 4439 -- 下一个任务


------------------------------------------------
-- 再入谷底
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4439] = {}
tNewTaskTemplate[4439]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4439]["BeginNpcId"] = 25858 -- 接任务npc
tNewTaskTemplate[4439]["EndNpcId"] = 25858 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4439]["Msg"] = {}
tNewTaskTemplate[4439]["Msg"]["Middle"] = {}
tNewTaskTemplate[4439]["Msg"]["Accept"] = "10-11" -- 接任务 - 25858
tNewTaskTemplate[4439]["Msg"]["NoCompleteTask"] = "10-12" -- 已接任务（未完成） - 25858
tNewTaskTemplate[4439]["Msg"]["Complete"] = "10-13" -- 交任务 - 25858
tNewTaskTemplate[4439]["Msg"]["CompleteTaskData"] = "10-14" -- 交任务掩码未完成 - 25858
-- 接任务的条件需求
tNewTaskTemplate[4439]["AcceptDemand"] = {}
tNewTaskTemplate[4439]["AcceptDemand"]["FrontTask"] = 4438 -- 前置任务
tNewTaskTemplate[4439]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4439]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4439]["AcceptDemand"]["ProLevel"] = 4 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4439]["Accept"] = {}
tNewTaskTemplate[4439]["Accept"]["Find"] = {}
tNewTaskTemplate[4439]["Accept"]["Find"]["NpcId"] = 25858 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4439]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4439]["Complete"] = {}
tNewTaskTemplate[4439]["Complete"]["NextTask"] = 4440 -- 下一个任务


------------------------------------------------
-- 景门试炼
-- 【旧副本】
tNewTaskTemplate[4440] = {}
tNewTaskTemplate[4440]["Type"] = 8 -- 任务类型
tNewTaskTemplate[4440]["BeginNpcId"] = 25858 -- 接任务npc
tNewTaskTemplate[4440]["EndNpcId"] = 25858 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4440]["Msg"] = {}
tNewTaskTemplate[4440]["Msg"]["Middle"] = {}
tNewTaskTemplate[4440]["Msg"]["Accept"] = "10-15" -- 接任务 - 25858
tNewTaskTemplate[4440]["Msg"]["NoCompleteTask"] = "10-16" -- 已接任务（未完成） - 25858
tNewTaskTemplate[4440]["Msg"]["Complete"] = "10-17" -- 交任务 - 25858
tNewTaskTemplate[4440]["Msg"]["CompleteTaskData"] = "10-18" -- 交任务掩码未完成 - 25858
-- 接任务的条件需求
tNewTaskTemplate[4440]["AcceptDemand"] = {}
tNewTaskTemplate[4440]["AcceptDemand"]["FrontTask"] = 4439 -- 前置任务
tNewTaskTemplate[4440]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4440]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4440]["AcceptDemand"]["ProLevel"] = 4 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4440]["Accept"] = {}
------- 旧副本配置开始 -------
tNewTaskTemplate[4440]["Instance"] = {}
tNewTaskTemplate[4440]["Instance"]["Type"] = 463 -- 副本ID
tNewTaskTemplate[4440]["Instance"]["Leave"] = {} -- 离开副本传送配置
tNewTaskTemplate[4440]["Instance"]["Leave"]["MapId"] = 10764
tNewTaskTemplate[4440]["Instance"]["Leave"]["PosX"] = 260
tNewTaskTemplate[4440]["Instance"]["Leave"]["PosY"] = 128
tNewTaskTemplate[4440]["Instance"]["Prompt"] = tNinjaQuest_Text["InstancePrompt"][4333]
tNewTaskTemplate[4440]["Instance"]["MsgBox"] = tNinjaQuest_Text["InstanceMsgBox"][4333]
-- 进入副本初始化函数
tNewTaskTemplate[4440]["Instance"]["InitFunc"] = NinjaQuest_InstanceInitFunc
-- 完成任务的条件需求
tNewTaskTemplate[4440]["CompleteDemand"] = {}
tNewTaskTemplate[4440]["CompleteDemand"]["TaskData"] = {}
tNewTaskTemplate[4440]["CompleteDemand"]["TaskData"][1] = 1 -- 掩码data1，需要值1
-- 完成任务的表现
tNewTaskTemplate[4440]["Complete"] = {}
tNewTaskTemplate[4440]["Complete"]["NextTask"] = 4441 -- 下一个任务
tNewTaskTemplate[4440]["Complete"]["Prompt"] = 1 -- 给奖励失败，出105提示
tNewTaskTemplate[4440]["Complete"]["Reward"] = {} -- 给奖励配置
tNewTaskTemplate[4440]["Complete"]["Reward"]["Log"] = "0,0,4440,0,18000222,3[3],3315898,1"
tNewTaskTemplate[4440]["Complete"]["Reward"]["RewardEffect"] = {}
tNewTaskTemplate[4440]["Complete"]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tNewTaskTemplate[4440]["Complete"]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4440]["Complete"]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4440]["Complete"]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4440]["Complete"]["Reward"]["RewardItem"][1]["Id"] = 3315898 -- 基础法印自选礼盒[3315898][属性:11][叠加:10000][金币:0], 【表格】法印可选包
tNewTaskTemplate[4440]["Complete"]["Reward"]["RewardItem"][1]["Attr"] = "0 1" -- 基础法印自选礼盒*1
-- 交任务触发的函数
tNewTaskTemplate[4440]["Complete"]["CompleteFunc"] = NinjaQuest_CompleteFunc

------------------------------------------------
-- 恢复训练
-- 【采集类】
tNewTaskTemplate[4441] = {}
tNewTaskTemplate[4441]["Type"] = 6 -- 任务类型
tNewTaskTemplate[4441]["BeginNpcId"] = 25858 -- 接任务npc
tNewTaskTemplate[4441]["EndNpcId"] = 25858 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4441]["Msg"] = {}
tNewTaskTemplate[4441]["Msg"]["Middle"] = {}
tNewTaskTemplate[4441]["Msg"]["Accept"] = "10-19" -- 接任务 - 25858
tNewTaskTemplate[4441]["Msg"]["NoCompleteTask"] = "10-20" -- 已接任务（未完成） - 25858
tNewTaskTemplate[4441]["Msg"]["Complete"] = "10-21" -- 交任务 - 25858
tNewTaskTemplate[4441]["Msg"]["CompleteItem"] = "10-22" -- 交任务物品不足 - 25858
-- 接任务的条件需求
tNewTaskTemplate[4441]["AcceptDemand"] = {}
tNewTaskTemplate[4441]["AcceptDemand"]["FrontTask"] = 4440 -- 前置任务
tNewTaskTemplate[4441]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4441]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4441]["AcceptDemand"]["ProLevel"] = 4 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4441]["Accept"] = {}
tNewTaskTemplate[4441]["Accept"]["Find"] = {}
tNewTaskTemplate[4441]["Accept"]["Find"]["MapId"] = 10764 -- 寻路mapid
tNewTaskTemplate[4441]["Accept"]["Find"]["PosX"] = 260 -- 寻路X坐标
tNewTaskTemplate[4441]["Accept"]["Find"]["PosY"] = 128 -- 寻路Y坐标
-- 中间表现
tNewTaskTemplate[4441]["Middle"] = {}
tNewTaskTemplate[4441]["Middle"]["Reading"] = {}
tNewTaskTemplate[4441]["Middle"]["Reading"]["Secs"] = 3 -- 读条秒数
tNewTaskTemplate[4441]["Middle"]["Reading"]["ActionId"] = 260 -- 读条动作
tNewTaskTemplate[4441]["Middle"]["Reading"]["Content"] = tNinjaQuest_NewText["ReadingContent"][4334] -- 读条文字
tNewTaskTemplate[4441]["Msg"]["HandTask"] = tNinjaQuest_Text["HandTask"][4334] -- 完成中间环节，105提示
-- 完成任务的条件需求
tNewTaskTemplate[4441]["CompleteDemand"] = {}
tNewTaskTemplate[4441]["CompleteDemand"]["TaskData"] = {}
tNewTaskTemplate[4441]["CompleteDemand"]["TaskData"][1] = 1 -- 掩码data1，需要值1
-- 完成任务的表现
tNewTaskTemplate[4441]["Complete"] = {}
tNewTaskTemplate[4441]["Complete"]["NextTask"] = 4442 -- 下一个任务


------------------------------------------------
-- 提升修为
-- 【达到指定等级,职业,战斗力】
tNewTaskTemplate[4442] = {}
tNewTaskTemplate[4442]["Type"] = 1 -- 任务类型
tNewTaskTemplate[4442]["BeginNpcId"] = 25858 -- 接任务npc
tNewTaskTemplate[4442]["EndNpcId"] = 25858 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4442]["Msg"] = {}
tNewTaskTemplate[4442]["Msg"]["Middle"] = {}
tNewTaskTemplate[4442]["Msg"]["Accept"] = "10-23" -- 接任务 - 25858
tNewTaskTemplate[4442]["Msg"]["NoCompleteTask"] = "10-24" -- 已接任务（未完成） - 25858
tNewTaskTemplate[4442]["Msg"]["Complete"] = "10-25" -- 交任务 - 25858
tNewTaskTemplate[4442]["Msg"]["ProLevel"] = "10-26" -- 交任职业等级不足 - 25858
-- 接任务的条件需求
tNewTaskTemplate[4442]["AcceptDemand"] = {}
tNewTaskTemplate[4442]["AcceptDemand"]["FrontTask"] = 4441 -- 前置任务
tNewTaskTemplate[4442]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4442]["AcceptDemand"]["Pro"] = {5} -- 职业限制
-- tNewTaskTemplate[4442]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4442]["Accept"] = {}
tNewTaskTemplate[4442]["Accept"]["Find"] = {}
tNewTaskTemplate[4442]["Accept"]["Find"]["NpcId"] = 25858 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4442]["CompleteDemand"] = {}
tNewTaskTemplate[4442]["CompleteDemand"]["ProLevel"] = 5 -- 职业等级
-- 完成任务的表现
tNewTaskTemplate[4442]["Complete"] = {}
tNewTaskTemplate[4442]["Complete"]["NextTask"] = 4443 -- 下一个任务


------------------------------------------------
-- 惊门之谜
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4443] = {}
tNewTaskTemplate[4443]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4443]["BeginNpcId"] = 25858 -- 接任务npc
tNewTaskTemplate[4443]["EndNpcId"] = 25858 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4443]["Msg"] = {}
tNewTaskTemplate[4443]["Msg"]["Middle"] = {}
tNewTaskTemplate[4443]["Msg"]["Accept"] = "10-27" -- 接任务 - 25858
tNewTaskTemplate[4443]["Msg"]["NoCompleteTask"] = "10-28" -- 已接任务（未完成） - 25858
tNewTaskTemplate[4443]["Msg"]["Complete"] = "10-29" -- 交任务 - 25858
tNewTaskTemplate[4443]["Msg"]["CompleteTaskData"] = "10-30" -- 交任务掩码未完成 - 25858
-- 接任务的条件需求
tNewTaskTemplate[4443]["AcceptDemand"] = {}
tNewTaskTemplate[4443]["AcceptDemand"]["FrontTask"] = 4442 -- 前置任务
tNewTaskTemplate[4443]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4443]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4443]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4443]["Accept"] = {}
tNewTaskTemplate[4443]["Accept"]["Find"] = {}
tNewTaskTemplate[4443]["Accept"]["Find"]["NpcId"] = 25858 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4443]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4443]["Complete"] = {}
tNewTaskTemplate[4443]["Complete"]["NextTask"] = 4444 -- 下一个任务


------------------------------------------------
-- 年迈的影（一）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4444] = {}
tNewTaskTemplate[4444]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4444]["BeginNpcId"] = 25858 -- 接任务npc
tNewTaskTemplate[4444]["EndNpcId"] = 23292 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4444]["Msg"] = {}
tNewTaskTemplate[4444]["Msg"]["Middle"] = {}
tNewTaskTemplate[4444]["Msg"]["Accept"] = "10-31" -- 接任务 - 25858
tNewTaskTemplate[4444]["Msg"]["NoCompleteTask"] = "10-32" -- 已接任务（未完成） - 25858
tNewTaskTemplate[4444]["Msg"]["Complete"] = "21-1" -- 交任务 - 23292
tNewTaskTemplate[4444]["Msg"]["CompleteTaskData"] = "31-1" -- 交任务掩码未完成 - 23292
-- 接任务的条件需求
tNewTaskTemplate[4444]["AcceptDemand"] = {}
tNewTaskTemplate[4444]["AcceptDemand"]["FrontTask"] = 4443 -- 前置任务
tNewTaskTemplate[4444]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4444]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4444]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4444]["Accept"] = {}
tNewTaskTemplate[4444]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4444]["Accept"]["Transfer"]["MapId"] = 10368 -- 传送mapid
tNewTaskTemplate[4444]["Accept"]["Transfer"]["PosX"] = 792 -- 传送X坐标
tNewTaskTemplate[4444]["Accept"]["Transfer"]["PosY"] = 570 -- 传送Y坐标
-- 完成任务的条件需求
tNewTaskTemplate[4444]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4444]["Complete"] = {}
tNewTaskTemplate[4444]["Complete"]["NextTask"] = 4445 -- 下一个任务


------------------------------------------------
-- 年迈的影（二）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4445] = {}
tNewTaskTemplate[4445]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4445]["BeginNpcId"] = 23292 -- 接任务npc
tNewTaskTemplate[4445]["EndNpcId"] = 25933 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4445]["Msg"] = {}
tNewTaskTemplate[4445]["Msg"]["Middle"] = {}
tNewTaskTemplate[4445]["Msg"]["Accept"] = "41-1" -- 接任务 - 23292
tNewTaskTemplate[4445]["Msg"]["NoCompleteTask"] = "51-1" -- 已接任务（未完成） - 23292
tNewTaskTemplate[4445]["Msg"]["Complete"] = "2-1" -- 交任务 - 25933
tNewTaskTemplate[4445]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25933
-- 接任务的条件需求
tNewTaskTemplate[4445]["AcceptDemand"] = {}
tNewTaskTemplate[4445]["AcceptDemand"]["FrontTask"] = 4444 -- 前置任务
tNewTaskTemplate[4445]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4445]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4445]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4445]["Accept"] = {}
tNewTaskTemplate[4445]["Accept"]["Find"] = {}
tNewTaskTemplate[4445]["Accept"]["Find"]["NpcId"] = 25933 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4445]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4445]["Complete"] = {}
tNewTaskTemplate[4445]["Complete"]["NextTask"] = 4446 -- 下一个任务


------------------------------------------------
-- 最强幻术
-- 【杀怪计数】
tNewTaskTemplate[4446] = {}
tNewTaskTemplate[4446]["Type"] = 4 -- 任务类型
tNewTaskTemplate[4446]["BeginNpcId"] = 25933 -- 接任务npc
tNewTaskTemplate[4446]["EndNpcId"] = 25933 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4446]["Msg"] = {}
tNewTaskTemplate[4446]["Msg"]["Middle"] = {}
tNewTaskTemplate[4446]["Msg"]["Accept"] = "4-1" -- 接任务 - 25933
tNewTaskTemplate[4446]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25933
tNewTaskTemplate[4446]["Msg"]["Complete"] = "6-1" -- 交任务 - 25933
tNewTaskTemplate[4446]["Msg"]["CompleteTaskData"] = "7-1" -- 交任务掩码未完成 - 25933
-- 接任务的条件需求
tNewTaskTemplate[4446]["AcceptDemand"] = {}
tNewTaskTemplate[4446]["AcceptDemand"]["FrontTask"] = 4445 -- 前置任务
tNewTaskTemplate[4446]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4446]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4446]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4446]["Accept"] = {}
tNewTaskTemplate[4446]["Accept"]["Find"] = {}
tNewTaskTemplate[4446]["Accept"]["Find"]["MapId"] = 10368 -- 寻路mapid
tNewTaskTemplate[4446]["Accept"]["Find"]["PosX"] = 698 -- 寻路X坐标
tNewTaskTemplate[4446]["Accept"]["Find"]["PosY"] = 681 -- 寻路Y坐标
-- 接任务寻路后触发的剧情
tNewTaskTemplate[4446]["Accept"]["NewPlotId"] = 40 -- 播放剧情
-- 接任务触发的函数
tNewTaskTemplate[4446]["Accept"]["AcceptFunc"] = NinjaQuest_AcceptFunc
-- 中间表现
tNewTaskTemplate[4446]["Middle"] = {}
tNewTaskTemplate[4446]["Middle"]["Monster"] = {}
tNewTaskTemplate[4446]["Middle"]["Monster"][5920] = {} -- 怪物ID=5920，【鼬】
tNewTaskTemplate[4446]["Middle"]["Monster"][5920]["Index"] = 1 -- Task掩码位
tNewTaskTemplate[4446]["Middle"]["Monster"][5920]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4446]["Msg"]["HandTask"] = tNinjaQuest_Text["HandTask"][4338] -- 完成中间环节，105提示
-- 完成任务的条件需求
tNewTaskTemplate[4446]["CompleteDemand"] = {}
tNewTaskTemplate[4446]["CompleteDemand"]["TaskData"] = {}
tNewTaskTemplate[4446]["CompleteDemand"]["TaskData"][1] = 1 -- 掩码data1，需要值1
-- 完成任务的表现
tNewTaskTemplate[4446]["Complete"] = {}
tNewTaskTemplate[4446]["Complete"]["NextTask"] = 4447 -- 下一个任务


------------------------------------------------
-- 幻术克星
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4447] = {}
tNewTaskTemplate[4447]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4447]["BeginNpcId"] = 25933 -- 接任务npc
tNewTaskTemplate[4447]["EndNpcId"] = 25857 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4447]["Msg"] = {}
tNewTaskTemplate[4447]["Msg"]["Middle"] = {}
tNewTaskTemplate[4447]["Msg"]["Accept"] = "8-1" -- 接任务 - 25933
tNewTaskTemplate[4447]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 25933
tNewTaskTemplate[4447]["Msg"]["Complete"] = "10-5" -- 交任务 - 25857
tNewTaskTemplate[4447]["Msg"]["CompleteTaskData"] = "10-6" -- 交任务掩码未完成 - 25857
-- 接任务的条件需求
tNewTaskTemplate[4447]["AcceptDemand"] = {}
tNewTaskTemplate[4447]["AcceptDemand"]["FrontTask"] = 4446 -- 前置任务
tNewTaskTemplate[4447]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4447]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4447]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4447]["Accept"] = {}
tNewTaskTemplate[4447]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4447]["Accept"]["Transfer"]["MapId"] = 10764 -- 传送mapid
tNewTaskTemplate[4447]["Accept"]["Transfer"]["PosX"] = 185 -- 传送X坐标
tNewTaskTemplate[4447]["Accept"]["Transfer"]["PosY"] = 128 -- 传送Y坐标
-- 完成任务的条件需求
tNewTaskTemplate[4447]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4447]["Complete"] = {}
tNewTaskTemplate[4447]["Complete"]["NextTask"] = 4448 -- 下一个任务
tNewTaskTemplate[4447]["Complete"]["Prompt"] = 1 -- 给奖励失败，出105提示
tNewTaskTemplate[4447]["Complete"]["Reward"] = {} -- 给奖励配置
tNewTaskTemplate[4447]["Complete"]["Reward"]["Log"] = "0,0,4447,0,18000222,3[3],3315899,1"
tNewTaskTemplate[4447]["Complete"]["Reward"]["RewardEffect"] = {}
tNewTaskTemplate[4447]["Complete"]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tNewTaskTemplate[4447]["Complete"]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4447]["Complete"]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4447]["Complete"]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4447]["Complete"]["Reward"]["RewardItem"][1]["Id"] = 3315899 -- 法印提升自选礼盒[3315899][属性:11][叠加:10000][金币:0], 【表格】增强法印可选包
tNewTaskTemplate[4447]["Complete"]["Reward"]["RewardItem"][1]["Attr"] = "0 1" -- 法印提升自选礼盒*1
-- 交任务触发的函数
tNewTaskTemplate[4447]["Complete"]["CompleteFunc"] = NinjaQuest_CompleteFunc


------------------------------------------------
-- 最后一关
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4448] = {}
tNewTaskTemplate[4448]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4448]["BeginNpcId"] = 25857 -- 接任务npc
tNewTaskTemplate[4448]["EndNpcId"] = 25857 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4448]["Msg"] = {}
tNewTaskTemplate[4448]["Msg"]["Middle"] = {}
tNewTaskTemplate[4448]["Msg"]["Accept"] = "10-7" -- 接任务 - 25857
tNewTaskTemplate[4448]["Msg"]["NoCompleteTask"] = "10-8" -- 已接任务（未完成） - 25857
tNewTaskTemplate[4448]["Msg"]["Complete"] = "10-9" -- 交任务 - 25857
tNewTaskTemplate[4448]["Msg"]["CompleteTaskData"] = "10-10" -- 交任务掩码未完成 - 25857
-- 接任务的条件需求
tNewTaskTemplate[4448]["AcceptDemand"] = {}
tNewTaskTemplate[4448]["AcceptDemand"]["FrontTask"] = 4447 -- 前置任务
tNewTaskTemplate[4448]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4448]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4448]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4448]["Accept"] = {}
tNewTaskTemplate[4448]["Accept"]["Find"] = {}
tNewTaskTemplate[4448]["Accept"]["Find"]["NpcId"] = 25857 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4448]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4448]["Complete"] = {}
tNewTaskTemplate[4448]["Complete"]["NextTask"] = 4449 -- 下一个任务


------------------------------------------------
-- 死门之谜
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4449] = {}
tNewTaskTemplate[4449]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4449]["BeginNpcId"] = 25857 -- 接任务npc
tNewTaskTemplate[4449]["EndNpcId"] = 25856 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4449]["Msg"] = {}
tNewTaskTemplate[4449]["Msg"]["Middle"] = {}
tNewTaskTemplate[4449]["Msg"]["Accept"] = "10-11" -- 接任务 - 25857
tNewTaskTemplate[4449]["Msg"]["NoCompleteTask"] = "10-12" -- 已接任务（未完成） - 25857
tNewTaskTemplate[4449]["Msg"]["Complete"] = "10-9" -- 交任务 - 25856
tNewTaskTemplate[4449]["Msg"]["CompleteTaskData"] = "10-10" -- 交任务掩码未完成 - 25856
-- 接任务的条件需求
tNewTaskTemplate[4449]["AcceptDemand"] = {}
tNewTaskTemplate[4449]["AcceptDemand"]["FrontTask"] = 4448 -- 前置任务
tNewTaskTemplate[4449]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4449]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4449]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4449]["Accept"] = {}
tNewTaskTemplate[4449]["Accept"]["Find"] = {}
tNewTaskTemplate[4449]["Accept"]["Find"]["NpcId"] = 25856 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4449]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4449]["Complete"] = {}
tNewTaskTemplate[4449]["Complete"]["NextTask"] = 4450 -- 下一个任务


------------------------------------------------
-- 重归故里
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4450] = {}
tNewTaskTemplate[4450]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4450]["BeginNpcId"] = 25856 -- 接任务npc
tNewTaskTemplate[4450]["EndNpcId"] = 25850 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4450]["Msg"] = {}
tNewTaskTemplate[4450]["Msg"]["Middle"] = {}
tNewTaskTemplate[4450]["Msg"]["Accept"] = "10-11" -- 接任务 - 25856
tNewTaskTemplate[4450]["Msg"]["NoCompleteTask"] = "10-12" -- 已接任务（未完成） - 25856
tNewTaskTemplate[4450]["Msg"]["Complete"] = "10-15" -- 交任务 - 25850
tNewTaskTemplate[4450]["Msg"]["CompleteTaskData"] = "10-16" -- 交任务掩码未完成 - 25850
-- 接任务的条件需求
tNewTaskTemplate[4450]["AcceptDemand"] = {}
tNewTaskTemplate[4450]["AcceptDemand"]["FrontTask"] = 4449 -- 前置任务
tNewTaskTemplate[4450]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4450]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4450]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4450]["Accept"] = {}
tNewTaskTemplate[4450]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4450]["Accept"]["Transfer"]["MapId"] = 10653 -- 传送mapid
tNewTaskTemplate[4450]["Accept"]["Transfer"]["PosX"] = 81 -- 传送X坐标
tNewTaskTemplate[4450]["Accept"]["Transfer"]["PosY"] = 58 -- 传送Y坐标
-- 完成任务的条件需求
tNewTaskTemplate[4450]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4450]["Complete"] = {}
tNewTaskTemplate[4450]["Complete"]["NextTask"] = 4451 -- 下一个任务


------------------------------------------------
-- 寻找火影（一）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4451] = {}
tNewTaskTemplate[4451]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4451]["BeginNpcId"] = 25850 -- 接任务npc
tNewTaskTemplate[4451]["EndNpcId"] = 23288 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4451]["Msg"] = {}
tNewTaskTemplate[4451]["Msg"]["Middle"] = {}
tNewTaskTemplate[4451]["Msg"]["Accept"] = "10-17" -- 接任务 - 25850
tNewTaskTemplate[4451]["Msg"]["NoCompleteTask"] = "10-18" -- 已接任务（未完成） - 25850
tNewTaskTemplate[4451]["Msg"]["Complete"] = "21-1" -- 交任务 - 23288
tNewTaskTemplate[4451]["Msg"]["CompleteTaskData"] = "31-1" -- 交任务掩码未完成 - 23288
-- 接任务的条件需求
tNewTaskTemplate[4451]["AcceptDemand"] = {}
tNewTaskTemplate[4451]["AcceptDemand"]["FrontTask"] = 4450 -- 前置任务
tNewTaskTemplate[4451]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4451]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4451]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4451]["Accept"] = {}
tNewTaskTemplate[4451]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4451]["Accept"]["Transfer"]["MapId"] = 10364 -- 传送mapid
tNewTaskTemplate[4451]["Accept"]["Transfer"]["PosX"] = 314 -- 传送X坐标
tNewTaskTemplate[4451]["Accept"]["Transfer"]["PosY"] = 343 -- 传送Y坐标
-- 完成任务的条件需求
tNewTaskTemplate[4451]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4451]["Complete"] = {}
tNewTaskTemplate[4451]["Complete"]["NextTask"] = 4452 -- 下一个任务


------------------------------------------------
-- 寻找火影（二）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4452] = {}
tNewTaskTemplate[4452]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4452]["BeginNpcId"] = 23288 -- 接任务npc
tNewTaskTemplate[4452]["EndNpcId"] = 25859 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4452]["Msg"] = {}
tNewTaskTemplate[4452]["Msg"]["Middle"] = {}
tNewTaskTemplate[4452]["Msg"]["Accept"] = "41-1" -- 接任务 - 23288
tNewTaskTemplate[4452]["Msg"]["NoCompleteTask"] = "51-1" -- 已接任务（未完成） - 23288
tNewTaskTemplate[4452]["Msg"]["Complete"] = "6-1" -- 交任务 - 25859
tNewTaskTemplate[4452]["Msg"]["CompleteTaskData"] = "7-1" -- 交任务掩码未完成 - 25859
-- 接任务的条件需求
tNewTaskTemplate[4452]["AcceptDemand"] = {}
tNewTaskTemplate[4452]["AcceptDemand"]["FrontTask"] = 4451 -- 前置任务
tNewTaskTemplate[4452]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4452]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4452]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4452]["Accept"] = {}
tNewTaskTemplate[4452]["Accept"]["Find"] = {}
tNewTaskTemplate[4452]["Accept"]["Find"]["NpcId"] = 25859 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4452]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4452]["Complete"] = {}
tNewTaskTemplate[4452]["Complete"]["NextTask"] = 4453 -- 下一个任务


------------------------------------------------
-- 寻找火影（三）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4453] = {}
tNewTaskTemplate[4453]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4453]["BeginNpcId"] = 25859 -- 接任务npc
tNewTaskTemplate[4453]["EndNpcId"] = 25860 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4453]["Msg"] = {}
tNewTaskTemplate[4453]["Msg"]["Middle"] = {}
tNewTaskTemplate[4453]["Msg"]["Accept"] = "8-1" -- 接任务 - 25859
tNewTaskTemplate[4453]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 25859
tNewTaskTemplate[4453]["Msg"]["Complete"] = "2-1" -- 交任务 - 25860
tNewTaskTemplate[4453]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25860
-- 接任务的条件需求
tNewTaskTemplate[4453]["AcceptDemand"] = {}
tNewTaskTemplate[4453]["AcceptDemand"]["FrontTask"] = 4452 -- 前置任务
tNewTaskTemplate[4453]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4453]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4453]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4453]["Accept"] = {}
tNewTaskTemplate[4453]["Accept"]["Find"] = {}
tNewTaskTemplate[4453]["Accept"]["Find"]["NpcId"] = 25860 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4453]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4453]["Complete"] = {}
tNewTaskTemplate[4453]["Complete"]["NextTask"] = 4454 -- 下一个任务


------------------------------------------------
-- 苦口婆心
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4454] = {}
tNewTaskTemplate[4454]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4454]["BeginNpcId"] = 25860 -- 接任务npc
tNewTaskTemplate[4454]["EndNpcId"] = 25860 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4454]["Msg"] = {}
tNewTaskTemplate[4454]["Msg"]["Middle"] = {}
tNewTaskTemplate[4454]["Msg"]["Accept"] = "4-1" -- 接任务 - 25860
tNewTaskTemplate[4454]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25860
tNewTaskTemplate[4454]["Msg"]["Complete"] = "6-1" -- 交任务 - 25860
tNewTaskTemplate[4454]["Msg"]["CompleteTaskData"] = "7-1" -- 交任务掩码未完成 - 25860
-- 接任务的条件需求
tNewTaskTemplate[4454]["AcceptDemand"] = {}
tNewTaskTemplate[4454]["AcceptDemand"]["FrontTask"] = 4453 -- 前置任务
tNewTaskTemplate[4454]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4454]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4454]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4454]["Accept"] = {}
tNewTaskTemplate[4454]["Accept"]["Find"] = {}
tNewTaskTemplate[4454]["Accept"]["Find"]["NpcId"] = 25860 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4454]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4454]["Complete"] = {}
tNewTaskTemplate[4454]["Complete"]["NextTask"] = 4455 -- 下一个任务


------------------------------------------------
-- 三忍之战
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4455] = {}
tNewTaskTemplate[4455]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4455]["BeginNpcId"] = 25860 -- 接任务npc
tNewTaskTemplate[4455]["EndNpcId"] = 25860 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4455]["Msg"] = {}
tNewTaskTemplate[4455]["Msg"]["Middle"] = {}
tNewTaskTemplate[4455]["Msg"]["Accept"] = "8-1" -- 接任务 - 25860
tNewTaskTemplate[4455]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 25860
tNewTaskTemplate[4455]["Msg"]["Complete"] = "10-1" -- 交任务 - 25860
tNewTaskTemplate[4455]["Msg"]["CompleteTaskData"] = "10-2" -- 交任务掩码未完成 - 25860
-- 接任务的条件需求
tNewTaskTemplate[4455]["AcceptDemand"] = {}
tNewTaskTemplate[4455]["AcceptDemand"]["FrontTask"] = 4454 -- 前置任务
tNewTaskTemplate[4455]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4455]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4455]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4455]["Accept"] = {}
tNewTaskTemplate[4455]["Accept"]["Find"] = {}
tNewTaskTemplate[4455]["Accept"]["Find"]["NpcId"] = 25860 -- 寻路npc
-- 接任务寻路后触发的剧情
tNewTaskTemplate[4455]["Accept"]["NewPlotId"] = 33 -- 播放剧情
-- 完成任务的条件需求
tNewTaskTemplate[4455]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4455]["Complete"] = {}
tNewTaskTemplate[4455]["Complete"]["PlotId"] = 34 -- 完成任务后触发的剧情表现
tNewTaskTemplate[4455]["Complete"]["NextTask"] = 4456 -- 下一个任务
tNewTaskTemplate[4455]["Complete"]["Prompt"] = 1 -- 给奖励失败，出105提示
tNewTaskTemplate[4455]["Complete"]["Reward"] = {} -- 给奖励配置
tNewTaskTemplate[4455]["Complete"]["Reward"]["Log"] = "0,0,4455,0,18000222,3[3],3329979,5"
tNewTaskTemplate[4455]["Complete"]["Reward"]["RewardEffect"] = {}
tNewTaskTemplate[4455]["Complete"]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tNewTaskTemplate[4455]["Complete"]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4455]["Complete"]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4455]["Complete"]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4455]["Complete"]["Reward"]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华
tNewTaskTemplate[4455]["Complete"]["Reward"]["RewardItem"][1]["Attr"] = "0 5" -- 秘术精华*5
-- 交任务触发的函数
tNewTaskTemplate[4455]["Complete"]["CompleteFunc"] = NinjaQuest_CompleteFunc


------------------------------------------------
-- 风影踪迹（一）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4456] = {}
tNewTaskTemplate[4456]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4456]["BeginNpcId"] = 25860 -- 接任务npc
tNewTaskTemplate[4456]["EndNpcId"] = 23291 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4456]["Msg"] = {}
tNewTaskTemplate[4456]["Msg"]["Middle"] = {}
tNewTaskTemplate[4456]["Msg"]["Accept"] = "10-3" -- 接任务 - 25860
tNewTaskTemplate[4456]["Msg"]["NoCompleteTask"] = "10-4" -- 已接任务（未完成） - 25860
tNewTaskTemplate[4456]["Msg"]["Complete"] = "61-1" -- 交任务 - 23291
tNewTaskTemplate[4456]["Msg"]["CompleteTaskData"] = "62-1" -- 交任务掩码未完成 - 23291
-- 接任务的条件需求
tNewTaskTemplate[4456]["AcceptDemand"] = {}
tNewTaskTemplate[4456]["AcceptDemand"]["FrontTask"] = 4455 -- 前置任务
tNewTaskTemplate[4456]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4456]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4456]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4456]["Accept"] = {}
tNewTaskTemplate[4456]["Accept"]["PlotId"] = 35 -- 播放剧情
tNewTaskTemplate[4456]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4456]["Accept"]["Transfer"]["MapId"] = 10367 -- 传送mapid
tNewTaskTemplate[4456]["Accept"]["Transfer"]["PosX"] = 538 -- 传送X坐标
tNewTaskTemplate[4456]["Accept"]["Transfer"]["PosY"] = 647 -- 传送Y坐标
-- 完成任务的条件需求
tNewTaskTemplate[4456]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4456]["Complete"] = {}
tNewTaskTemplate[4456]["Complete"]["NextTask"] = 4457 -- 下一个任务


------------------------------------------------
-- 风影踪迹（二）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4457] = {}
tNewTaskTemplate[4457]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4457]["BeginNpcId"] = 23291 -- 接任务npc
tNewTaskTemplate[4457]["EndNpcId"] = 25862 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4457]["Msg"] = {}
tNewTaskTemplate[4457]["Msg"]["Middle"] = {}
tNewTaskTemplate[4457]["Msg"]["Accept"] = "63-1" -- 接任务 - 23291
tNewTaskTemplate[4457]["Msg"]["NoCompleteTask"] = "64-1" -- 已接任务（未完成） - 23291
tNewTaskTemplate[4457]["Msg"]["Complete"] = "2-1" -- 交任务 - 25862
tNewTaskTemplate[4457]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25862
-- 接任务的条件需求
tNewTaskTemplate[4457]["AcceptDemand"] = {}
tNewTaskTemplate[4457]["AcceptDemand"]["FrontTask"] = 4456 -- 前置任务
tNewTaskTemplate[4457]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4457]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4457]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4457]["Accept"] = {}
tNewTaskTemplate[4457]["Accept"]["Find"] = {}
tNewTaskTemplate[4457]["Accept"]["Find"]["NpcId"] = 25862 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4457]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4457]["Complete"] = {}
tNewTaskTemplate[4457]["Complete"]["NextTask"] = 4458 -- 下一个任务


------------------------------------------------
-- 风影踪迹（三）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4458] = {}
tNewTaskTemplate[4458]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4458]["BeginNpcId"] = 25862 -- 接任务npc
tNewTaskTemplate[4458]["EndNpcId"] = 25863 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4458]["Msg"] = {}
tNewTaskTemplate[4458]["Msg"]["Middle"] = {}
tNewTaskTemplate[4458]["Msg"]["Accept"] = "4-1" -- 接任务 - 25862
tNewTaskTemplate[4458]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25862
tNewTaskTemplate[4458]["Msg"]["Complete"] = "2-1" -- 交任务 - 25863
tNewTaskTemplate[4458]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25863
-- 接任务的条件需求
tNewTaskTemplate[4458]["AcceptDemand"] = {}
tNewTaskTemplate[4458]["AcceptDemand"]["FrontTask"] = 4457 -- 前置任务
tNewTaskTemplate[4458]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4458]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4458]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4458]["Accept"] = {}
tNewTaskTemplate[4458]["Accept"]["Find"] = {}
tNewTaskTemplate[4458]["Accept"]["Find"]["NpcId"] = 25863 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4458]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4458]["Complete"] = {}
tNewTaskTemplate[4458]["Complete"]["NextTask"] = 4459 -- 下一个任务


------------------------------------------------
-- 风影踪迹（四）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4459] = {}
tNewTaskTemplate[4459]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4459]["BeginNpcId"] = 25863 -- 接任务npc
tNewTaskTemplate[4459]["EndNpcId"] = 25864 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4459]["Msg"] = {}
tNewTaskTemplate[4459]["Msg"]["Middle"] = {}
tNewTaskTemplate[4459]["Msg"]["Accept"] = "4-1" -- 接任务 - 25863
tNewTaskTemplate[4459]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25863
tNewTaskTemplate[4459]["Msg"]["Complete"] = "2-1" -- 交任务 - 25864
tNewTaskTemplate[4459]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25864
-- 接任务的条件需求
tNewTaskTemplate[4459]["AcceptDemand"] = {}
tNewTaskTemplate[4459]["AcceptDemand"]["FrontTask"] = 4458 -- 前置任务
tNewTaskTemplate[4459]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4459]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4459]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4459]["Accept"] = {}
tNewTaskTemplate[4459]["Accept"]["Find"] = {}
tNewTaskTemplate[4459]["Accept"]["Find"]["NpcId"] = 25864 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4459]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4459]["Complete"] = {}
tNewTaskTemplate[4459]["Complete"]["NextTask"] = 4460 -- 下一个任务


------------------------------------------------
-- 风影踪迹（五）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4460] = {}
tNewTaskTemplate[4460]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4460]["BeginNpcId"] = 25864 -- 接任务npc
tNewTaskTemplate[4460]["EndNpcId"] = 25864 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4460]["Msg"] = {}
tNewTaskTemplate[4460]["Msg"]["Middle"] = {}
tNewTaskTemplate[4460]["Msg"]["Accept"] = "4-1" -- 接任务 - 25864
tNewTaskTemplate[4460]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25864
tNewTaskTemplate[4460]["Msg"]["Complete"] = "6-1" -- 交任务 - 25864
tNewTaskTemplate[4460]["Msg"]["CompleteTaskData"] = "7-1" -- 交任务掩码未完成 - 25864
-- 接任务的条件需求
tNewTaskTemplate[4460]["AcceptDemand"] = {}
tNewTaskTemplate[4460]["AcceptDemand"]["FrontTask"] = 4459 -- 前置任务
tNewTaskTemplate[4460]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4460]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4460]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4460]["Accept"] = {}
tNewTaskTemplate[4460]["Accept"]["Find"] = {}
tNewTaskTemplate[4460]["Accept"]["Find"]["NpcId"] = 25864 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4460]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4460]["Complete"] = {}
tNewTaskTemplate[4460]["Complete"]["NextTask"] = 4461 -- 下一个任务


------------------------------------------------
-- 童年真相
-- 【杀怪计数】
tNewTaskTemplate[4461] = {}
tNewTaskTemplate[4461]["Type"] = 4 -- 任务类型
tNewTaskTemplate[4461]["BeginNpcId"] = 25864 -- 接任务npc
tNewTaskTemplate[4461]["EndNpcId"] = 25864 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4461]["Msg"] = {}
tNewTaskTemplate[4461]["Msg"]["Middle"] = {}
tNewTaskTemplate[4461]["Msg"]["Accept"] = "8-1" -- 接任务 - 25864
tNewTaskTemplate[4461]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 25864
tNewTaskTemplate[4461]["Msg"]["Complete"] = "10-1" -- 交任务 - 25864
tNewTaskTemplate[4461]["Msg"]["CompleteTaskData"] = "10-2" -- 交任务掩码未完成 - 25864
-- 接任务的条件需求
tNewTaskTemplate[4461]["AcceptDemand"] = {}
tNewTaskTemplate[4461]["AcceptDemand"]["FrontTask"] = 4460 -- 前置任务
tNewTaskTemplate[4461]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4461]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4461]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4461]["Accept"] = {}
tNewTaskTemplate[4461]["Accept"]["Find"] = {}
tNewTaskTemplate[4461]["Accept"]["Find"]["MapId"] = 10367 -- 寻路mapid
tNewTaskTemplate[4461]["Accept"]["Find"]["PosX"] = 566 -- 寻路X坐标
tNewTaskTemplate[4461]["Accept"]["Find"]["PosY"] = 454 -- 寻路Y坐标
-- 接任务寻路后触发的剧情
tNewTaskTemplate[4461]["Accept"]["NewPlotId"] = 36 -- 播放剧情
-- 接任务触发的函数
tNewTaskTemplate[4461]["Accept"]["AcceptFunc"] = NinjaQuest_AcceptFunc
-- 中间表现
tNewTaskTemplate[4461]["Middle"] = {}
tNewTaskTemplate[4461]["Middle"]["Monster"] = {}
tNewTaskTemplate[4461]["Middle"]["Monster"][5918] = {} -- 怪物ID=5918，【迪达拉】
tNewTaskTemplate[4461]["Middle"]["Monster"][5918]["Index"] = 1 -- Task掩码位
tNewTaskTemplate[4461]["Middle"]["Monster"][5918]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4461]["Msg"]["HandTask"] = tNinjaQuest_Text["HandTask"][4353] -- 完成中间环节，105提示
-- 完成任务的条件需求
tNewTaskTemplate[4461]["CompleteDemand"] = {}
tNewTaskTemplate[4461]["CompleteDemand"]["TaskData"] = {}
tNewTaskTemplate[4461]["CompleteDemand"]["TaskData"][1] = 1 -- 掩码data1，需要值1
-- 完成任务的表现
tNewTaskTemplate[4461]["Complete"] = {}
tNewTaskTemplate[4461]["Complete"]["NextTask"] = 4462 -- 下一个任务
tNewTaskTemplate[4461]["Complete"]["Prompt"] = 1 -- 给奖励失败，出105提示
tNewTaskTemplate[4461]["Complete"]["Reward"] = {} -- 给奖励配置
tNewTaskTemplate[4461]["Complete"]["Reward"]["Log"] = "0,0,4461,0,18000222,3[3],3329979,5"
tNewTaskTemplate[4461]["Complete"]["Reward"]["RewardEffect"] = {}
tNewTaskTemplate[4461]["Complete"]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tNewTaskTemplate[4461]["Complete"]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4461]["Complete"]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4461]["Complete"]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4461]["Complete"]["Reward"]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华
tNewTaskTemplate[4461]["Complete"]["Reward"]["RewardItem"][1]["Attr"] = "0 5" -- 秘术精华*5
-- 交任务触发的函数
tNewTaskTemplate[4461]["Complete"]["CompleteFunc"] = NinjaQuest_CompleteFunc


------------------------------------------------
-- 山野村夫（一）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4462] = {}
tNewTaskTemplate[4462]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4462]["BeginNpcId"] = 25864 -- 接任务npc
tNewTaskTemplate[4462]["EndNpcId"] = 25865 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4462]["Msg"] = {}
tNewTaskTemplate[4462]["Msg"]["Middle"] = {}
tNewTaskTemplate[4462]["Msg"]["Accept"] = "10-3" -- 接任务 - 25864
tNewTaskTemplate[4462]["Msg"]["NoCompleteTask"] = "10-4" -- 已接任务（未完成） - 25864
tNewTaskTemplate[4462]["Msg"]["Complete"] = "2-1" -- 交任务 - 25865
tNewTaskTemplate[4462]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25865
-- 接任务的条件需求
tNewTaskTemplate[4462]["AcceptDemand"] = {}
tNewTaskTemplate[4462]["AcceptDemand"]["FrontTask"] = 4461 -- 前置任务
tNewTaskTemplate[4462]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4462]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4462]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4462]["Accept"] = {}
tNewTaskTemplate[4462]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4462]["Accept"]["Transfer"]["MapId"] = 10365 -- 传送mapid
tNewTaskTemplate[4462]["Accept"]["Transfer"]["PosX"] = 703 -- 传送X坐标
tNewTaskTemplate[4462]["Accept"]["Transfer"]["PosY"] = 512 -- 传送Y坐标
-- 完成任务的条件需求
tNewTaskTemplate[4462]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4462]["Complete"] = {}
tNewTaskTemplate[4462]["Complete"]["NextTask"] = 4463 -- 下一个任务


------------------------------------------------
-- 山野村夫（二）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4463] = {}
tNewTaskTemplate[4463]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4463]["BeginNpcId"] = 25865 -- 接任务npc
tNewTaskTemplate[4463]["EndNpcId"] = 25932 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4463]["Msg"] = {}
tNewTaskTemplate[4463]["Msg"]["Middle"] = {}
tNewTaskTemplate[4463]["Msg"]["Accept"] = "4-1" -- 接任务 - 25865
tNewTaskTemplate[4463]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25865
tNewTaskTemplate[4463]["Msg"]["Complete"] = "2-1" -- 交任务 - 25932
tNewTaskTemplate[4463]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25932
-- 接任务的条件需求
tNewTaskTemplate[4463]["AcceptDemand"] = {}
tNewTaskTemplate[4463]["AcceptDemand"]["FrontTask"] = 4462 -- 前置任务
tNewTaskTemplate[4463]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4463]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4463]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4463]["Accept"] = {}
tNewTaskTemplate[4463]["Accept"]["Find"] = {}
tNewTaskTemplate[4463]["Accept"]["Find"]["NpcId"] = 25932 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4463]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4463]["Complete"] = {}
tNewTaskTemplate[4463]["Complete"]["NextTask"] = 4464 -- 下一个任务


------------------------------------------------
-- 难言之隐
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4464] = {}
tNewTaskTemplate[4464]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4464]["BeginNpcId"] = 25932 -- 接任务npc
tNewTaskTemplate[4464]["EndNpcId"] = 25932 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4464]["Msg"] = {}
tNewTaskTemplate[4464]["Msg"]["Middle"] = {}
tNewTaskTemplate[4464]["Msg"]["Accept"] = "4-1" -- 接任务 - 25932
tNewTaskTemplate[4464]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25932
tNewTaskTemplate[4464]["Msg"]["Complete"] = "6-1" -- 交任务 - 25932
tNewTaskTemplate[4464]["Msg"]["CompleteTaskData"] = "7-1" -- 交任务掩码未完成 - 25932
-- 接任务的条件需求
tNewTaskTemplate[4464]["AcceptDemand"] = {}
tNewTaskTemplate[4464]["AcceptDemand"]["FrontTask"] = 4463 -- 前置任务
tNewTaskTemplate[4464]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4464]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4464]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4464]["Accept"] = {}
tNewTaskTemplate[4464]["Accept"]["Find"] = {}
tNewTaskTemplate[4464]["Accept"]["Find"]["NpcId"] = 25932 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4464]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4464]["Complete"] = {}
tNewTaskTemplate[4464]["Complete"]["NextTask"] = 4465 -- 下一个任务


------------------------------------------------
-- 怪物牛鬼
-- 【杀怪计数】
tNewTaskTemplate[4465] = {}
tNewTaskTemplate[4465]["Type"] = 4 -- 任务类型
tNewTaskTemplate[4465]["BeginNpcId"] = 25932 -- 接任务npc
tNewTaskTemplate[4465]["EndNpcId"] = 25932 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4465]["Msg"] = {}
tNewTaskTemplate[4465]["Msg"]["Middle"] = {}
tNewTaskTemplate[4465]["Msg"]["Accept"] = "8-1" -- 接任务 - 25932
tNewTaskTemplate[4465]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 25932
tNewTaskTemplate[4465]["Msg"]["Complete"] = "10-1" -- 交任务 - 25932
tNewTaskTemplate[4465]["Msg"]["CompleteTaskData"] = "10-2" -- 交任务掩码未完成 - 25932
-- 接任务的条件需求
tNewTaskTemplate[4465]["AcceptDemand"] = {}
tNewTaskTemplate[4465]["AcceptDemand"]["FrontTask"] = 4464 -- 前置任务
tNewTaskTemplate[4465]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4465]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4465]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4465]["Accept"] = {}
tNewTaskTemplate[4465]["Accept"]["PlotId"] = 38 -- 播放剧情
tNewTaskTemplate[4465]["Accept"]["Find"] = {}
tNewTaskTemplate[4465]["Accept"]["Find"]["MapId"] = 10365 -- 寻路mapid
tNewTaskTemplate[4465]["Accept"]["Find"]["PosX"] = 763 -- 寻路X坐标
tNewTaskTemplate[4465]["Accept"]["Find"]["PosY"] = 468 -- 寻路Y坐标
-- 接任务触发的函数
tNewTaskTemplate[4465]["Accept"]["AcceptFunc"] = NinjaQuest_AcceptFunc
-- 中间表现
tNewTaskTemplate[4465]["Middle"] = {}
tNewTaskTemplate[4465]["Middle"]["Monster"] = {}
tNewTaskTemplate[4465]["Middle"]["Monster"][5919] = {} -- 怪物ID=5919，【牛鬼】
tNewTaskTemplate[4465]["Middle"]["Monster"][5919]["Index"] = 1 -- Task掩码位
tNewTaskTemplate[4465]["Middle"]["Monster"][5919]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4465]["Msg"]["HandTask"] = tNinjaQuest_Text["HandTask"][4357] -- 完成中间环节，105提示
-- 完成任务的条件需求
tNewTaskTemplate[4465]["CompleteDemand"] = {}
tNewTaskTemplate[4465]["CompleteDemand"]["TaskData"] = {}
tNewTaskTemplate[4465]["CompleteDemand"]["TaskData"][1] = 1 -- 掩码data1，需要值1
-- 完成任务的表现
tNewTaskTemplate[4465]["Complete"] = {}
tNewTaskTemplate[4465]["Complete"]["NextTask"] = 4466 -- 下一个任务
tNewTaskTemplate[4465]["Complete"]["Prompt"] = 1 -- 给奖励失败，出105提示
tNewTaskTemplate[4465]["Complete"]["Reward"] = {} -- 给奖励配置
tNewTaskTemplate[4465]["Complete"]["Reward"]["Log"] = "0,0,4465,0,18000222,3[3],3329979,5"
tNewTaskTemplate[4465]["Complete"]["Reward"]["RewardEffect"] = {}
tNewTaskTemplate[4465]["Complete"]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tNewTaskTemplate[4465]["Complete"]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4465]["Complete"]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4465]["Complete"]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4465]["Complete"]["Reward"]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华
tNewTaskTemplate[4465]["Complete"]["Reward"]["RewardItem"][1]["Attr"] = "0 5" -- 秘术精华*5
-- 交任务触发的函数
tNewTaskTemplate[4465]["Complete"]["CompleteFunc"] = NinjaQuest_CompleteFunc


------------------------------------------------
-- 躲避相亲（一）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4466] = {}
tNewTaskTemplate[4466]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4466]["BeginNpcId"] = 25932 -- 接任务npc
tNewTaskTemplate[4466]["EndNpcId"] = 23290 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4466]["Msg"] = {}
tNewTaskTemplate[4466]["Msg"]["Middle"] = {}
tNewTaskTemplate[4466]["Msg"]["Accept"] = "10-3" -- 接任务 - 25932
tNewTaskTemplate[4466]["Msg"]["NoCompleteTask"] = "10-4" -- 已接任务（未完成） - 25932
tNewTaskTemplate[4466]["Msg"]["Complete"] = "21-1" -- 交任务 - 23290
tNewTaskTemplate[4466]["Msg"]["CompleteTaskData"] = "31-1" -- 交任务掩码未完成 - 23290
-- 接任务的条件需求
tNewTaskTemplate[4466]["AcceptDemand"] = {}
tNewTaskTemplate[4466]["AcceptDemand"]["FrontTask"] = 4465 -- 前置任务
tNewTaskTemplate[4466]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4466]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4466]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4466]["Accept"] = {}
tNewTaskTemplate[4466]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4466]["Accept"]["Transfer"]["MapId"] = 10366 -- 传送mapid
tNewTaskTemplate[4466]["Accept"]["Transfer"]["PosX"] = 569 -- 传送X坐标
tNewTaskTemplate[4466]["Accept"]["Transfer"]["PosY"] = 623 -- 传送Y坐标
-- 完成任务的条件需求
tNewTaskTemplate[4466]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4466]["Complete"] = {}
tNewTaskTemplate[4466]["Complete"]["NextTask"] = 4467 -- 下一个任务


------------------------------------------------
-- 躲避相亲（二）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4467] = {}
tNewTaskTemplate[4467]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4467]["BeginNpcId"] = 23290 -- 接任务npc
tNewTaskTemplate[4467]["EndNpcId"] = 25934 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4467]["Msg"] = {}
tNewTaskTemplate[4467]["Msg"]["Middle"] = {}
tNewTaskTemplate[4467]["Msg"]["Accept"] = "41-1" -- 接任务 - 23290
tNewTaskTemplate[4467]["Msg"]["NoCompleteTask"] = "51-1" -- 已接任务（未完成） - 23290
tNewTaskTemplate[4467]["Msg"]["Complete"] = "2-1" --交任务 - 25934
tNewTaskTemplate[4467]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25934
-- 接任务的条件需求
tNewTaskTemplate[4467]["AcceptDemand"] = {}
tNewTaskTemplate[4467]["AcceptDemand"]["FrontTask"] = 4466 -- 前置任务
tNewTaskTemplate[4467]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4467]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4467]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4467]["Accept"] = {}
tNewTaskTemplate[4467]["Accept"]["Find"] = {}
tNewTaskTemplate[4467]["Accept"]["Find"]["NpcId"] = 25934 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4467]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4467]["Complete"] = {}
tNewTaskTemplate[4467]["Complete"]["NextTask"] = 4468 -- 下一个任务


------------------------------------------------
-- 躲避相亲（三）
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4468] = {}
tNewTaskTemplate[4468]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4468]["BeginNpcId"] = 25934 -- 接任务npc
tNewTaskTemplate[4468]["EndNpcId"] = 25935 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4468]["Msg"] = {}
tNewTaskTemplate[4468]["Msg"]["Middle"] = {}
tNewTaskTemplate[4468]["Msg"]["Accept"] = "4-1" -- 接任务 - 25934
tNewTaskTemplate[4468]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25934
tNewTaskTemplate[4468]["Msg"]["Complete"] = "2-1" -- 交任务 - 25935
tNewTaskTemplate[4468]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25935
-- 接任务的条件需求
tNewTaskTemplate[4468]["AcceptDemand"] = {}
tNewTaskTemplate[4468]["AcceptDemand"]["FrontTask"] = 4467 -- 前置任务
tNewTaskTemplate[4468]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4468]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4468]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4468]["Accept"] = {}
tNewTaskTemplate[4468]["Accept"]["Find"] = {}
tNewTaskTemplate[4468]["Accept"]["Find"]["NpcId"] = 25935 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4468]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4468]["Complete"] = {}
tNewTaskTemplate[4468]["Complete"]["NextTask"] = 4469 -- 下一个任务


------------------------------------------------
-- 忍刀七人众
-- 【旧副本】
tNewTaskTemplate[4469] = {}
tNewTaskTemplate[4469]["Type"] = 8 -- 任务类型
tNewTaskTemplate[4469]["BeginNpcId"] = 25935 -- 接任务npc
tNewTaskTemplate[4469]["EndNpcId"] = 25936 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4469]["Msg"] = {}
tNewTaskTemplate[4469]["Msg"]["Middle"] = {}
tNewTaskTemplate[4469]["Msg"]["Accept"] = "4-1" -- 接任务 - 25935
tNewTaskTemplate[4469]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25935
tNewTaskTemplate[4469]["Msg"]["Complete"] = "2-1" -- 交任务 - 25936
tNewTaskTemplate[4469]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25936
-- 接任务的条件需求
tNewTaskTemplate[4469]["AcceptDemand"] = {}
tNewTaskTemplate[4469]["AcceptDemand"]["FrontTask"] = 4468 -- 前置任务
tNewTaskTemplate[4469]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4469]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4469]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4469]["Accept"] = {}
-- 接任务触发的函数
tNewTaskTemplate[4469]["Accept"]["AcceptFunc"] = NinjaQuest_AcceptFunc
------- 旧副本配置开始 -------
tNewTaskTemplate[4469]["Instance"] = {}
tNewTaskTemplate[4469]["Instance"]["Type"] = 460 -- 副本ID
tNewTaskTemplate[4469]["Instance"]["Leave"] = {} -- 离开副本传送配置
tNewTaskTemplate[4469]["Instance"]["Leave"]["MapId"] = 10366
tNewTaskTemplate[4469]["Instance"]["Leave"]["PosX"] = 623
tNewTaskTemplate[4469]["Instance"]["Leave"]["PosY"] = 730
tNewTaskTemplate[4469]["Instance"]["Prompt"] = tNinjaQuest_Text["InstancePrompt"][4361]
tNewTaskTemplate[4469]["Instance"]["MsgBox"] = tNinjaQuest_Text["InstanceMsgBox"][4361]
tNewTaskTemplate[4469]["Instance"]["MsgBoxWay"] = {} -- 进入副本105提示确定后寻路配置
tNewTaskTemplate[4469]["Instance"]["MsgBoxWay"]["PosX"] = 26
tNewTaskTemplate[4469]["Instance"]["MsgBoxWay"]["PosY"] = 32
tNewTaskTemplate[4469]["Instance"]["Monster"] = {} -- 副本刷怪坐标
tNewTaskTemplate[4469]["Instance"]["Monster"][1] = {}
tNewTaskTemplate[4469]["Instance"]["Monster"][1]["MonsterId"] = 5921
tNewTaskTemplate[4469]["Instance"]["Monster"][1]["MonsterNum"] = 1
tNewTaskTemplate[4469]["Instance"]["Monster"][1]["GenId"] = 30597
tNewTaskTemplate[4469]["Instance"]["Monster"][1]["PosX"] = 26
tNewTaskTemplate[4469]["Instance"]["Monster"][1]["PosY"] = 32
tNewTaskTemplate[4469]["Instance"]["Monster"][2] = {}
tNewTaskTemplate[4469]["Instance"]["Monster"][2]["MonsterId"] = 5922
tNewTaskTemplate[4469]["Instance"]["Monster"][2]["MonsterNum"] = 1
tNewTaskTemplate[4469]["Instance"]["Monster"][2]["GenId"] = 30598
tNewTaskTemplate[4469]["Instance"]["Monster"][2]["PosX"] = 32
tNewTaskTemplate[4469]["Instance"]["Monster"][2]["PosY"] = 31
tNewTaskTemplate[4469]["Instance"]["Monster"][3] = {}
tNewTaskTemplate[4469]["Instance"]["Monster"][3]["MonsterId"] = 5923
tNewTaskTemplate[4469]["Instance"]["Monster"][3]["MonsterNum"] = 1
tNewTaskTemplate[4469]["Instance"]["Monster"][3]["GenId"] = 30599
tNewTaskTemplate[4469]["Instance"]["Monster"][3]["PosX"] = 37
tNewTaskTemplate[4469]["Instance"]["Monster"][3]["PosY"] = 30
tNewTaskTemplate[4469]["Instance"]["Monster"][4] = {}
tNewTaskTemplate[4469]["Instance"]["Monster"][4]["MonsterId"] = 5924
tNewTaskTemplate[4469]["Instance"]["Monster"][4]["MonsterNum"] = 1
tNewTaskTemplate[4469]["Instance"]["Monster"][4]["GenId"] = 30600
tNewTaskTemplate[4469]["Instance"]["Monster"][4]["PosX"] = 35
tNewTaskTemplate[4469]["Instance"]["Monster"][4]["PosY"] = 22
tNewTaskTemplate[4469]["Instance"]["Monster"][5] = {}
tNewTaskTemplate[4469]["Instance"]["Monster"][5]["MonsterId"] = 5925
tNewTaskTemplate[4469]["Instance"]["Monster"][5]["MonsterNum"] = 1
tNewTaskTemplate[4469]["Instance"]["Monster"][5]["GenId"] = 30601
tNewTaskTemplate[4469]["Instance"]["Monster"][5]["PosX"] = 28
tNewTaskTemplate[4469]["Instance"]["Monster"][5]["PosY"] = 23
tNewTaskTemplate[4469]["Instance"]["Monster"][6] = {}
tNewTaskTemplate[4469]["Instance"]["Monster"][6]["MonsterId"] = 5926
tNewTaskTemplate[4469]["Instance"]["Monster"][6]["MonsterNum"] = 1
tNewTaskTemplate[4469]["Instance"]["Monster"][6]["GenId"] = 30602
tNewTaskTemplate[4469]["Instance"]["Monster"][6]["PosX"] = 23
tNewTaskTemplate[4469]["Instance"]["Monster"][6]["PosY"] = 17
tNewTaskTemplate[4469]["Instance"]["Monster"][7] = {}
tNewTaskTemplate[4469]["Instance"]["Monster"][7]["MonsterId"] = 5927
tNewTaskTemplate[4469]["Instance"]["Monster"][7]["MonsterNum"] = 1
tNewTaskTemplate[4469]["Instance"]["Monster"][7]["GenId"] = 30603
tNewTaskTemplate[4469]["Instance"]["Monster"][7]["PosX"] = 29
tNewTaskTemplate[4469]["Instance"]["Monster"][7]["PosY"] = 18
------- 旧副本配置开始 -------
-- 中间表现
tNewTaskTemplate[4469]["Middle"] = {}
tNewTaskTemplate[4469]["Middle"]["Monster"] = {}
tNewTaskTemplate[4469]["Middle"]["Monster"][5921] = {} -- 怪物ID=5921，【忍刀七人众断】
tNewTaskTemplate[4469]["Middle"]["Monster"][5921]["Index"] = 1 -- Task掩码位
tNewTaskTemplate[4469]["Middle"]["Monster"][5921]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4469]["Middle"]["Monster"][5922] = {} -- 怪物ID=5922，【忍刀七人众大】
tNewTaskTemplate[4469]["Middle"]["Monster"][5922]["Index"] = 2 -- Task掩码位
tNewTaskTemplate[4469]["Middle"]["Monster"][5922]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4469]["Middle"]["Monster"][5923] = {} -- 怪物ID=5923，【忍刀七人众长】
tNewTaskTemplate[4469]["Middle"]["Monster"][5923]["Index"] = 3 -- Task掩码位
tNewTaskTemplate[4469]["Middle"]["Monster"][5923]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4469]["Middle"]["Monster"][5924] = {} -- 怪物ID=5924，【忍刀七人众钝】
tNewTaskTemplate[4469]["Middle"]["Monster"][5924]["Index"] = 4 -- Task掩码位
tNewTaskTemplate[4469]["Middle"]["Monster"][5924]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4469]["Middle"]["Monster"][5925] = {} -- 怪物ID=5925，【忍刀七人众爆】
tNewTaskTemplate[4469]["Middle"]["Monster"][5925]["Index"] = 5 -- Task掩码位
tNewTaskTemplate[4469]["Middle"]["Monster"][5925]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4469]["Middle"]["Monster"][5926] = {} -- 怪物ID=5926，【忍刀七人众雷】
tNewTaskTemplate[4469]["Middle"]["Monster"][5926]["Index"] = 6 -- Task掩码位
tNewTaskTemplate[4469]["Middle"]["Monster"][5926]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4469]["Middle"]["Monster"][5927] = {} -- 怪物ID=5927，【忍刀七人众双】
tNewTaskTemplate[4469]["Middle"]["Monster"][5927]["Index"] = 7 -- Task掩码位
tNewTaskTemplate[4469]["Middle"]["Monster"][5927]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4469]["Msg"]["HandTask"] = tNinjaQuest_Text["HandTask"][4361] -- 完成中间环节，105提示
-- 完成任务的条件需求
tNewTaskTemplate[4469]["CompleteDemand"] = {}
tNewTaskTemplate[4469]["CompleteDemand"]["TaskData"] = {}
tNewTaskTemplate[4469]["CompleteDemand"]["TaskData"][1] = 1 -- 掩码data1，需要值1
tNewTaskTemplate[4469]["CompleteDemand"]["TaskData"][2] = 1 -- 掩码data2，需要值1
tNewTaskTemplate[4469]["CompleteDemand"]["TaskData"][3] = 1 -- 掩码data3，需要值1
tNewTaskTemplate[4469]["CompleteDemand"]["TaskData"][4] = 1 -- 掩码data4，需要值1
tNewTaskTemplate[4469]["CompleteDemand"]["TaskData"][5] = 1 -- 掩码data5，需要值1
tNewTaskTemplate[4469]["CompleteDemand"]["TaskData"][6] = 1 -- 掩码data6，需要值1
tNewTaskTemplate[4469]["CompleteDemand"]["TaskData"][7] = 1 -- 掩码data7，需要值1
-- 完成任务的表现
tNewTaskTemplate[4469]["Complete"] = {}
tNewTaskTemplate[4469]["Complete"]["PlotId"] = 42 -- 完成任务后触发的剧情表现
tNewTaskTemplate[4469]["Complete"]["NextTask"] = 4470 -- 下一个任务
tNewTaskTemplate[4469]["Complete"]["Prompt"] = 1 -- 给奖励失败，出105提示
tNewTaskTemplate[4469]["Complete"]["Reward"] = {} -- 给奖励配置
tNewTaskTemplate[4469]["Complete"]["Reward"]["Log"] = "0,0,4469,0,18000222,3[3],3329979,5"
tNewTaskTemplate[4469]["Complete"]["Reward"]["RewardEffect"] = {}
tNewTaskTemplate[4469]["Complete"]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tNewTaskTemplate[4469]["Complete"]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4469]["Complete"]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4469]["Complete"]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4469]["Complete"]["Reward"]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华
tNewTaskTemplate[4469]["Complete"]["Reward"]["RewardItem"][1]["Attr"] = "0 5" -- 秘术精华*5
-- 交任务触发的函数
tNewTaskTemplate[4469]["Complete"]["CompleteFunc"] = NinjaQuest_CompleteFunc


------------------------------------------------
-- 五影大会
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4470] = {}
tNewTaskTemplate[4470]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4470]["BeginNpcId"] = 25936 -- 接任务npc
tNewTaskTemplate[4470]["EndNpcId"] = 25857 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4470]["Msg"] = {}
tNewTaskTemplate[4470]["Msg"]["Middle"] = {}
tNewTaskTemplate[4470]["Msg"]["Accept"] = "4-1" -- 接任务 - 25936
tNewTaskTemplate[4470]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25936
tNewTaskTemplate[4470]["Msg"]["Complete"] = "10-13" -- 交任务 - 25857
tNewTaskTemplate[4470]["Msg"]["CompleteTaskData"] = "10-14" -- 交任务掩码未完成 - 25857
-- 接任务的条件需求
tNewTaskTemplate[4470]["AcceptDemand"] = {}
tNewTaskTemplate[4470]["AcceptDemand"]["FrontTask"] = 4469 -- 前置任务
tNewTaskTemplate[4470]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4470]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4470]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4470]["Accept"] = {}
tNewTaskTemplate[4470]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4470]["Accept"]["Transfer"]["MapId"] = 10764 -- 传送mapid
tNewTaskTemplate[4470]["Accept"]["Transfer"]["PosX"] = 185 -- 传送X坐标
tNewTaskTemplate[4470]["Accept"]["Transfer"]["PosY"] = 128 -- 传送Y坐标
-- 完成任务的条件需求
tNewTaskTemplate[4470]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4470]["Complete"] = {}
tNewTaskTemplate[4470]["Complete"]["NextTask"] = 4471 -- 下一个任务


------------------------------------------------
-- 秽土转生
-- 【杀怪计数】
tNewTaskTemplate[4471] = {}
tNewTaskTemplate[4471]["Type"] = 4 -- 任务类型
tNewTaskTemplate[4471]["BeginNpcId"] = 25857 -- 接任务npc
tNewTaskTemplate[4471]["EndNpcId"] = 25861 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4471]["Msg"] = {}
tNewTaskTemplate[4471]["Msg"]["Middle"] = {}
tNewTaskTemplate[4471]["Msg"]["Accept"] = "10-15" -- 接任务 - 25857
tNewTaskTemplate[4471]["Msg"]["NoCompleteTask"] = "10-16" -- 已接任务（未完成） - 25857
tNewTaskTemplate[4471]["Msg"]["Complete"] = "2-1" -- 交任务 - 25861
tNewTaskTemplate[4471]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 25861
-- 接任务的条件需求
tNewTaskTemplate[4471]["AcceptDemand"] = {}
tNewTaskTemplate[4471]["AcceptDemand"]["FrontTask"] = 4470 -- 前置任务
tNewTaskTemplate[4471]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4471]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4471]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4471]["Accept"] = {}
tNewTaskTemplate[4471]["Accept"]["Find"] = {}
tNewTaskTemplate[4471]["Accept"]["Find"]["MapId"] = 10764 -- 寻路mapid
tNewTaskTemplate[4471]["Accept"]["Find"]["PosX"] = 190 -- 寻路X坐标
tNewTaskTemplate[4471]["Accept"]["Find"]["PosY"] = 140 -- 寻路Y坐标
-- 接任务寻路后触发的剧情
tNewTaskTemplate[4471]["Accept"]["NewPlotId"] = 41 -- 播放剧情
-- 接任务触发的函数
tNewTaskTemplate[4471]["Accept"]["AcceptFunc"] = NinjaQuest_AcceptFunc
-- 中间表现
tNewTaskTemplate[4471]["Middle"] = {}
tNewTaskTemplate[4471]["Middle"]["Monster"] = {}
tNewTaskTemplate[4471]["Middle"]["Monster"][5928] = {} -- 怪物ID=5928，【兜】
tNewTaskTemplate[4471]["Middle"]["Monster"][5928]["Index"] = 1 -- Task掩码位
tNewTaskTemplate[4471]["Middle"]["Monster"][5928]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4471]["Msg"]["HandTask"] = tNinjaQuest_Text["HandTask"][4363] -- 完成中间环节，105提示
-- 完成任务的条件需求
tNewTaskTemplate[4471]["CompleteDemand"] = {}
tNewTaskTemplate[4471]["CompleteDemand"]["TaskData"] = {}
tNewTaskTemplate[4471]["CompleteDemand"]["TaskData"][1] = 1 -- 掩码data1，需要值1
-- 完成任务的表现
tNewTaskTemplate[4471]["Complete"] = {}
tNewTaskTemplate[4471]["Complete"]["NextTask"] = 4472 -- 下一个任务
tNewTaskTemplate[4471]["Complete"]["Prompt"] = 1 -- 给奖励失败，出105提示
tNewTaskTemplate[4471]["Complete"]["Reward"] = {} -- 给奖励配置
tNewTaskTemplate[4471]["Complete"]["Reward"]["Log"] = "0,0,4471,0,18000222,3[3],3329979,5"
tNewTaskTemplate[4471]["Complete"]["Reward"]["RewardEffect"] = {}
tNewTaskTemplate[4471]["Complete"]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tNewTaskTemplate[4471]["Complete"]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4471]["Complete"]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4471]["Complete"]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4471]["Complete"]["Reward"]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华
tNewTaskTemplate[4471]["Complete"]["Reward"]["RewardItem"][1]["Attr"] = "0 5" -- 秘术精华*5


------------------------------------------------
-- 战前准备
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4472] = {}
tNewTaskTemplate[4472]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4472]["BeginNpcId"] = 25861 -- 接任务npc
tNewTaskTemplate[4472]["EndNpcId"] = 25861 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4472]["Msg"] = {}
tNewTaskTemplate[4472]["Msg"]["Middle"] = {}
tNewTaskTemplate[4472]["Msg"]["Accept"] = "4-1" -- 接任务 - 25861
tNewTaskTemplate[4472]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 25861
tNewTaskTemplate[4472]["Msg"]["Complete"] = "6-1" -- 交任务 - 25861
tNewTaskTemplate[4472]["Msg"]["CompleteTaskData"] = "7-1" -- 交任务掩码未完成 - 25861
-- 接任务的条件需求
tNewTaskTemplate[4472]["AcceptDemand"] = {}
tNewTaskTemplate[4472]["AcceptDemand"]["FrontTask"] = 4471 -- 前置任务
tNewTaskTemplate[4472]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4472]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4472]["AcceptDemand"]["ProLevel"] = 5 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4472]["Accept"] = {}
tNewTaskTemplate[4472]["Accept"]["Find"] = {}
tNewTaskTemplate[4472]["Accept"]["Find"]["NpcId"] = 25861 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4472]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4472]["Complete"] = {}
tNewTaskTemplate[4472]["Complete"]["NextTask"] = 4473 -- 下一个任务


------------------------------------------------
-- 提升修为
-- 【达到指定等级,职业,战斗力】
tNewTaskTemplate[4473] = {}
tNewTaskTemplate[4473]["Type"] = 1 -- 任务类型
tNewTaskTemplate[4473]["BeginNpcId"] = 25861 -- 接任务npc
tNewTaskTemplate[4473]["EndNpcId"] = 25861 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4473]["Msg"] = {}
tNewTaskTemplate[4473]["Msg"]["Middle"] = {}
tNewTaskTemplate[4473]["Msg"]["Accept"] = "8-1" -- 接任务 - 25861
tNewTaskTemplate[4473]["Msg"]["NoCompleteTask"] = "9-1" -- 已接任务（未完成） - 25861
tNewTaskTemplate[4473]["Msg"]["Complete"] = "10-1" -- 交任务 - 25861
tNewTaskTemplate[4473]["Msg"]["ProLevel"] = "10-2" -- 交任职业等级不足 - 25861
-- 接任务的条件需求
tNewTaskTemplate[4473]["AcceptDemand"] = {}
tNewTaskTemplate[4473]["AcceptDemand"]["FrontTask"] = 4472 -- 前置任务
tNewTaskTemplate[4473]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4473]["AcceptDemand"]["Pro"] = {5} -- 职业限制
--tNewTaskTemplate[4473]["AcceptDemand"]["ProLevel"] = 13 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4473]["Accept"] = {}
tNewTaskTemplate[4473]["Accept"]["Find"] = {}
tNewTaskTemplate[4473]["Accept"]["Find"]["NpcId"] = 25861 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4473]["CompleteDemand"] = {}
tNewTaskTemplate[4473]["CompleteDemand"]["ProLevel"] = 13 -- 职业等级
-- 完成任务的表现
tNewTaskTemplate[4473]["Complete"] = {}
tNewTaskTemplate[4473]["Complete"]["NextTask"] = 4474 -- 下一个任务


------------------------------------------------
-- 突袭鬼岛
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4474] = {}
tNewTaskTemplate[4474]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4474]["BeginNpcId"] = 25861 -- 接任务npc
tNewTaskTemplate[4474]["EndNpcId"] = 25857 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4474]["Msg"] = {}
tNewTaskTemplate[4474]["Msg"]["Middle"] = {}
tNewTaskTemplate[4474]["Msg"]["Accept"] = "10-3" -- 接任务 - 25861
tNewTaskTemplate[4474]["Msg"]["NoCompleteTask"] = "10-4" -- 已接任务（未完成） - 25861
tNewTaskTemplate[4474]["Msg"]["Complete"] = "10-17" -- 交任务 - 25857
tNewTaskTemplate[4474]["Msg"]["CompleteTaskData"] = "10-18" -- 交任务掩码未完成 - 25857
-- 接任务的条件需求
tNewTaskTemplate[4474]["AcceptDemand"] = {}
tNewTaskTemplate[4474]["AcceptDemand"]["FrontTask"] = 4473 -- 前置任务
tNewTaskTemplate[4474]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4474]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4474]["AcceptDemand"]["ProLevel"] = 13 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4474]["Accept"] = {}
tNewTaskTemplate[4474]["Accept"]["Find"] = {}
tNewTaskTemplate[4474]["Accept"]["Find"]["NpcId"] = 25857 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4474]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4474]["Complete"] = {}
tNewTaskTemplate[4474]["Complete"]["NextTask"] = 4475 -- 下一个任务


------------------------------------------------
-- 忍者丧钟
-- 【杀怪计数】
tNewTaskTemplate[4475] = {}
tNewTaskTemplate[4475]["Type"] = 4 -- 任务类型
tNewTaskTemplate[4475]["BeginNpcId"] = 25857 -- 接任务npc
tNewTaskTemplate[4475]["EndNpcId"] = 26035 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4475]["Msg"] = {}
tNewTaskTemplate[4475]["Msg"]["Middle"] = {}
tNewTaskTemplate[4475]["Msg"]["Accept"] = "10-19" -- 接任务 - 25857
tNewTaskTemplate[4475]["Msg"]["NoCompleteTask"] = "10-20" -- 已接任务（未完成） - 25857
tNewTaskTemplate[4475]["Msg"]["Complete"] = "2-1" -- 交任务 - 26035
tNewTaskTemplate[4475]["Msg"]["CompleteTaskData"] = "3-1" -- 交任务掩码未完成 - 26035
-- 接任务的条件需求
tNewTaskTemplate[4475]["AcceptDemand"] = {}
tNewTaskTemplate[4475]["AcceptDemand"]["FrontTask"] = 4474 -- 前置任务
tNewTaskTemplate[4475]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4475]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4475]["AcceptDemand"]["ProLevel"] = 13 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4475]["Accept"] = {}
tNewTaskTemplate[4475]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4475]["Accept"]["Transfer"]["MapId"] = 10770 -- 传送mapid
tNewTaskTemplate[4475]["Accept"]["Transfer"]["PosX"] = 60 -- 传送X坐标
tNewTaskTemplate[4475]["Accept"]["Transfer"]["PosY"] = 68 -- 传送Y坐标
-- 接任务寻路后触发的剧情
tNewTaskTemplate[4475]["Accept"]["NewPlotId"] = 46 -- 播放剧情
-- 接任务触发的函数
tNewTaskTemplate[4475]["Accept"]["AcceptFunc"] = NinjaQuest_AcceptFunc
-- 中间表现
tNewTaskTemplate[4475]["Middle"] = {}
tNewTaskTemplate[4475]["Middle"]["Monster"] = {}
tNewTaskTemplate[4475]["Middle"]["Monster"][5930] = {} -- 怪物ID=5930，【风魔太郎】
tNewTaskTemplate[4475]["Middle"]["Monster"][5930]["Index"] = 1 -- Task掩码位
tNewTaskTemplate[4475]["Middle"]["Monster"][5930]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4475]["Middle"]["Monster"][5931] = {} -- 怪物ID=5931，【风魔太郎【狂化】】
tNewTaskTemplate[4475]["Middle"]["Monster"][5931]["Index"] = 2 -- Task掩码位
tNewTaskTemplate[4475]["Middle"]["Monster"][5931]["Data"] = 1 -- 杀怪数量
tNewTaskTemplate[4475]["Msg"]["HandTask"] = tNinjaQuest_Text["HandTask"][4366] -- 完成中间环节，105提示
-- 完成任务的条件需求
tNewTaskTemplate[4475]["CompleteDemand"] = {}
tNewTaskTemplate[4475]["CompleteDemand"]["TaskData"] = {}
tNewTaskTemplate[4475]["CompleteDemand"]["TaskData"][1] = 1 -- 掩码data1，需要值1
tNewTaskTemplate[4475]["CompleteDemand"]["TaskData"][2] = 1 -- 掩码data2，需要值1
-- 完成任务的表现
tNewTaskTemplate[4475]["Complete"] = {}
--tNewTaskTemplate[4475]["Complete"]["PlotId"] = 42 -- 完成任务后触发的剧情表现
tNewTaskTemplate[4475]["Complete"]["NextTask"] = 4476 -- 下一个任务
-- 交任务触发的函数
tNewTaskTemplate[4475]["Complete"]["CompleteFunc"] = NinjaQuest_CompleteFunc


------------------------------------------------
-- 生死一线
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4476] = {}
tNewTaskTemplate[4476]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4476]["BeginNpcId"] = 26035 -- 接任务npc
tNewTaskTemplate[4476]["EndNpcId"] = 25857 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4476]["Msg"] = {}
tNewTaskTemplate[4476]["Msg"]["Middle"] = {}
tNewTaskTemplate[4476]["Msg"]["Accept"] = "4-1" -- 接任务 - 26035
tNewTaskTemplate[4476]["Msg"]["NoCompleteTask"] = "5-1" -- 已接任务（未完成） - 26035
tNewTaskTemplate[4476]["Msg"]["Complete"] = "10-21" -- 交任务 - 25857
tNewTaskTemplate[4476]["Msg"]["CompleteTaskData"] = "10-22" -- 交任务掩码未完成 - 25857
-- 接任务的条件需求
tNewTaskTemplate[4476]["AcceptDemand"] = {}
tNewTaskTemplate[4476]["AcceptDemand"]["FrontTask"] = 4475 -- 前置任务
tNewTaskTemplate[4476]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4476]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4476]["AcceptDemand"]["ProLevel"] = 13 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4476]["Accept"] = {}
tNewTaskTemplate[4476]["Accept"]["Transfer"] = {}
tNewTaskTemplate[4476]["Accept"]["Transfer"]["MapId"] = 10764 -- 传送mapid
tNewTaskTemplate[4476]["Accept"]["Transfer"]["PosX"] = 187 -- 传送X坐标
tNewTaskTemplate[4476]["Accept"]["Transfer"]["PosY"] = 137 -- 传送Y坐标
-- 完成任务的条件需求
tNewTaskTemplate[4476]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4476]["Complete"] = {}
tNewTaskTemplate[4476]["Complete"]["NextTask"] = 4477 -- 下一个任务


------------------------------------------------
-- 死而复生
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4477] = {}
tNewTaskTemplate[4477]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4477]["BeginNpcId"] = 25857 -- 接任务npc
tNewTaskTemplate[4477]["EndNpcId"] = 25857 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4477]["Msg"] = {}
tNewTaskTemplate[4477]["Msg"]["Middle"] = {}
tNewTaskTemplate[4477]["Msg"]["Accept"] = "10-23" -- 接任务 - 25857
tNewTaskTemplate[4477]["Msg"]["NoCompleteTask"] = "10-24" -- 已接任务（未完成） - 25857
tNewTaskTemplate[4477]["Msg"]["Complete"] = "10-25" -- 交任务 - 25857
tNewTaskTemplate[4477]["Msg"]["CompleteTaskData"] = "10-26" -- 交任务掩码未完成 - 25857
-- 接任务的条件需求
tNewTaskTemplate[4477]["AcceptDemand"] = {}
tNewTaskTemplate[4477]["AcceptDemand"]["FrontTask"] = 4476 -- 前置任务
tNewTaskTemplate[4477]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4477]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4477]["AcceptDemand"]["ProLevel"] = 13 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4477]["Accept"] = {}
tNewTaskTemplate[4477]["Accept"]["Find"] = {}
tNewTaskTemplate[4477]["Accept"]["Find"]["NpcId"] = 25857 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4477]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4477]["Complete"] = {}
tNewTaskTemplate[4477]["Complete"]["NextTask"] = 4478 -- 下一个任务
-- 交任务触发的函数
tNewTaskTemplate[4477]["Complete"]["CompleteFunc"] = NinjaQuest_CompleteFunc

------------------------------------------------
-- 仙人之体
-- 【送信（无物品，单对话）】
tNewTaskTemplate[4478] = {}
tNewTaskTemplate[4478]["Type"] = 3 -- 任务类型
tNewTaskTemplate[4478]["BeginNpcId"] = 25857 -- 接任务npc
tNewTaskTemplate[4478]["EndNpcId"] = 25857 -- 交任务npc
-- 对白配置
tNewTaskTemplate[4478]["Msg"] = {}
tNewTaskTemplate[4478]["Msg"]["Middle"] = {}
tNewTaskTemplate[4478]["Msg"]["Accept"] = "10-27" -- 接任务 - 25857
tNewTaskTemplate[4478]["Msg"]["NoCompleteTask"] = "10-28" -- 已接任务（未完成） - 25857
tNewTaskTemplate[4478]["Msg"]["Complete"] = "10-29" -- 交任务 - 25857
tNewTaskTemplate[4478]["Msg"]["CompleteTaskData"] = "10-30" -- 交任务掩码未完成 - 25857
-- 接任务的条件需求
tNewTaskTemplate[4478]["AcceptDemand"] = {}
tNewTaskTemplate[4478]["AcceptDemand"]["FrontTask"] = 4477 -- 前置任务
tNewTaskTemplate[4478]["AcceptDemand"]["Level"] = 40 -- 等级限制
tNewTaskTemplate[4478]["AcceptDemand"]["Pro"] = {5} -- 职业限制
tNewTaskTemplate[4478]["AcceptDemand"]["ProLevel"] = 13 -- 职业阶级
-- 接任务触发的表现
tNewTaskTemplate[4478]["Accept"] = {}
tNewTaskTemplate[4478]["Accept"]["Find"] = {}
tNewTaskTemplate[4478]["Accept"]["Find"]["NpcId"] = 25857 -- 寻路npc
-- 完成任务的条件需求
tNewTaskTemplate[4478]["CompleteDemand"] = {}
-- 完成任务的表现
tNewTaskTemplate[4478]["Complete"] = {}
tNewTaskTemplate[4478]["Complete"]["Prompt"] = 1 -- 给奖励失败，出105提示
tNewTaskTemplate[4478]["Complete"]["Reward"] = {} -- 给奖励配置
tNewTaskTemplate[4478]["Complete"]["Reward"]["Log"] = "0,0,4478,0,18000222,3[3],3329979[3315898][3315899],10[1][1]"
tNewTaskTemplate[4478]["Complete"]["Reward"]["RewardEffect"] = {}
tNewTaskTemplate[4478]["Complete"]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tNewTaskTemplate[4478]["Complete"]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
tNewTaskTemplate[4478]["Complete"]["Reward"]["RewardItem"] = {}
tNewTaskTemplate[4478]["Complete"]["Reward"]["RewardItem"][1] = {}
tNewTaskTemplate[4478]["Complete"]["Reward"]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华
tNewTaskTemplate[4478]["Complete"]["Reward"]["RewardItem"][1]["Attr"] = "0 10" -- 秘术精华*10
tNewTaskTemplate[4478]["Complete"]["Reward"]["RewardItem"][2] = {}
tNewTaskTemplate[4478]["Complete"]["Reward"]["RewardItem"][2]["Id"] = 3315898 -- 基础法印自选礼盒[3315898][属性:11][叠加:0][金币:0]
tNewTaskTemplate[4478]["Complete"]["Reward"]["RewardItem"][2]["Attr"] = "0 1" -- 基础法印自选礼盒*1
tNewTaskTemplate[4478]["Complete"]["Reward"]["RewardItem"][3] = {}
tNewTaskTemplate[4478]["Complete"]["Reward"]["RewardItem"][3]["Id"] = 3315899 -- 法印提升自选礼盒[3315899][属性:11][叠加:0][金币:0]
tNewTaskTemplate[4478]["Complete"]["Reward"]["RewardItem"][3]["Attr"] = "0 1" -- 法印提升自选礼盒*1
-- 交任务触发的函数
tNewTaskTemplate[4478]["Complete"]["CompleteFunc"] = NinjaQuest_CompleteFunc


---------------------------- 对白配置 ----------------------------

-- 23863,10364,311,338,赵子陵,清风原
tNpcGossip[23288] = tNpcGossip[23288] or DefaultNpc:new{}
-- tNpcGossip[23288]["DialogueText"] = tNinjaQuest_Text[23288]
-- 2-1
tNpcGossip[23288]["Text21-1"] = {2111}
tNpcGossip[23288]["tOption21-1"] = {2111}
tNpcGossip[23288]["OptionFunc2111"] = "NewTaskTemplate_CompleteMain</N>4451"
-- 3-1
tNpcGossip[23288]["Text31-1"] = {3111}
tNpcGossip[23288]["tOption31-1"] = {3111}
tNpcGossip[23288]["OptionFunc3111"] = "NewTaskTemplate_Find</N>4451"
-- 4-1
tNpcGossip[23288]["Text41-1"] = {4111}
tNpcGossip[23288]["tOption41-1"] = {4111}
tNpcGossip[23288]["OptionFunc411"] = "NewTaskTemplate_AcceptMain</N>4452"
-- 5-1
tNpcGossip[23288]["Text51-1"] = {5111}
tNpcGossip[23288]["tOption51-1"] = {5111}
tNpcGossip[23288]["OptionFunc5111"] = "NewTaskTemplate_Find</N>4452"

-- 23867,10367,539,644,云门关总兵,大漠荒野
tNpcGossip[23291] = tNpcGossip[23291] or DefaultNpc:new{}
-- tNpcGossip[23291]["DialogueText"] = tNinjaQuest_Text[23291]
-- 2-1
tNpcGossip[23291]["Text61-1"] = {6111}
tNpcGossip[23291]["tOption61-1"] = {6111}
tNpcGossip[23291]["OptionFunc6111"] = "NewTaskTemplate_CompleteMain</N>4456"
-- 3-1
tNpcGossip[23291]["Text62-1"] = {6211}
tNpcGossip[23291]["tOption62-1"] = {6211}
tNpcGossip[23291]["OptionFunc6211"] = "NewTaskTemplate_Find</N>4456"
-- 4-1
tNpcGossip[23291]["Text63-1"] = {6311}
tNpcGossip[23291]["tOption63-1"] = {6311}
tNpcGossip[23291]["OptionFunc6311"] = "NewTaskTemplate_AcceptMain</N>4457"
-- 5-1
tNpcGossip[23291]["Text64-1"] = {6411}
tNpcGossip[23291]["tOption64-1"] = {6411}
tNpcGossip[23291]["OptionFunc6411"] = "NewTaskTemplate_Find</N>4457"

-- 23879,10366,601,584,李霸先,绝情谷
tNpcGossip[23290] = tNpcGossip[23290] or DefaultNpc:new{}
-- tNpcGossip[23290]["DialogueText"] = tNinjaQuest_Text[23290]
-- 2-1
tNpcGossip[23290]["Text21-1"] = {2111}
tNpcGossip[23290]["tOption21-1"] = {2111}
tNpcGossip[23290]["OptionFunc2111"] = "NewTaskTemplate_CompleteMain</N>4466"
-- 3-1
tNpcGossip[23290]["Text31-1"] = {3111}
tNpcGossip[23290]["tOption31-1"] = {3111}
tNpcGossip[23290]["OptionFunc3111"] = "NewTaskTemplate_Find</N>4466"
-- 4-1
tNpcGossip[23290]["Text41-1"] = {4111}
tNpcGossip[23290]["tOption41-1"] = {4111}
tNpcGossip[23290]["OptionFunc4111"] = "NewTaskTemplate_AcceptMain</N>4467"
-- 5-1
tNpcGossip[23290]["Text51-1"] = {5111}
tNpcGossip[23290]["tOption51-1"] = {5111}
tNpcGossip[23290]["OptionFunc5111"] = "NewTaskTemplate_Find</N>4467"

-- 24000,10368,717,573,【白鹭城主】慕容轩,芦花荡
tNpcGossip[23292] = tNpcGossip[23292] or DefaultNpc:new{}
-- tNpcGossip[23292]["DialogueText"] = tNinjaQuest_Text[23292]
-- 2-1
tNpcGossip[23292]["Text21-1"] = {2111}
tNpcGossip[23292]["tOption21-1"] = {2111}
tNpcGossip[23292]["OptionFunc2111"] = "NewTaskTemplate_CompleteMain</N>4444"
-- 3-1
tNpcGossip[23292]["Text31-1"] = {3111}
tNpcGossip[23292]["tOption31-1"] = {3111}
tNpcGossip[23292]["OptionFunc3111"] = "NewTaskTemplate_Find</N>4444"
-- 4-1
tNpcGossip[23292]["Text41-1"] = {4111}
tNpcGossip[23292]["tOption41-1"] = {4111}
tNpcGossip[23292]["OptionFunc411"] = "NewTaskTemplate_AcceptMain</N>4445"
-- 5-1
tNpcGossip[23292]["Text51-1"] = {5111}
tNpcGossip[23292]["tOption51-1"] = {5111}
tNpcGossip[23292]["OptionFunc5111"] = "NewTaskTemplate_Find</N>4445"
