------------------------------------------------------------------------------------
--Name：            181217[英文征服][活动脚本]1月神纹提升月
--Creator:      蔡颖静
--Created:     2018/12/17
------------------------------------------------------------------------------------
--任务需求：
-- 一、活动目的：刺激玩家神纹消费
-- 二、活动对象：全区全服
-- 三、活动时间：1.10-1.31
-- "四、活动概述
-- 通过五重活动刺激玩家对神纹的消费提升：
-- 1、通过各种活动、竞技赛送玩家神纹精粹；
-- 2、打折卖神纹道具，VIP6-7的玩家尊享更好折扣；
-- 3、通过线上NPC对话选项跳转到线下活动页，先参与绑定神纹（身上的主副神纹各一套），然后线下只记录游戏内玩家通过吃赤炼石、神纹精粹提升神纹，不管通过互吃神纹，提升神纹的情况，
      -- 玩家对绑定的主副神纹进行养成，给阶段性奖励：
		-- 在线	在线时长达到1.5个小时	黄色神纹精粹	赠	5
		-- 镇魔塔	普通模式下通关第9层	黄色神纹精粹	赠	20
		-- 镇魔塔	困难模式下通关第9层	黄色神纹精粹	赠	40
		-- 古神灵境	击杀200只怪物	蓝色神纹精粹	赠	20
		-- 个人排位赛	胜利第4场	蓝色神纹精粹	赠	20
-- 4、对玩家的神纹提升值进行排名，如果存在同一分数，排名并列，发同样的奖励
-- 5、如果玩家绑定的主副装备有任意一套是满级的，就给成就奖励；两套都是满级的，给双倍成就奖励
-- 五、活动明细
-- 1、玩家每天通过以下活动、竞技赛可以获得神纹精粹（每日免费产出1400的经验），另外1月促销买道具也会送神纹精粹
-- 2、神纹类道具促销（普通玩家和游戏VIP6及以上的玩家显示价格不同，但都是用非赠天石购买）
------------------------------------------------------------------------------------
--前缀：tJanRuneImproveMon_
--stc (187,68)领取镇魔塔普通模式下通关第9层	黄色神纹精粹	赠	20
--stc (187,69)领取镇魔塔困难模式下通关第9层	黄色神纹精粹	赠	
--stc (187,70)领取古神灵境击杀200只怪物	蓝色神纹精粹	赠	20
--stc (187,71)领取个人排位赛	胜利第4场	蓝色神纹精粹	赠	20
--stc (187,72) 古神灵境	击杀200只怪物计数
--stc (187,73)个人排位赛	胜利第4场计数	蓝色神纹精粹	赠	20
--stc (187,74)打开活跃度礼包额外获得奖励	黄色神纹精粹	赠5

----------------------------------表配置部分--------------------------------------------
local tJanRuneImproveMon_Data={}
--掩码
tJanRuneImproveMon_Data["Stc"]={}
-- 镇魔塔	普通模式下通关第9层	黄色神纹精粹	赠	20
tJanRuneImproveMon_Data["Stc"][1]={}
tJanRuneImproveMon_Data["Stc"][1]["EventType"]=187
tJanRuneImproveMon_Data["Stc"][1]["DataType"]=68
tJanRuneImproveMon_Data["Stc"][1]["Completed"]=1
-- 镇魔塔	普通模式下通关第9层	黄色神纹精粹	赠	20
tJanRuneImproveMon_Data["Stc"][2]={}
tJanRuneImproveMon_Data["Stc"][2]["EventType"]=187
tJanRuneImproveMon_Data["Stc"][2]["DataType"]=69
tJanRuneImproveMon_Data["Stc"][2]["Completed"]=1
-- 古神灵境	击杀200只怪物领奖	蓝色神纹精粹	赠	20
tJanRuneImproveMon_Data["Stc"][3]={}
tJanRuneImproveMon_Data["Stc"][3]["EventType"]=187
tJanRuneImproveMon_Data["Stc"][3]["DataType"]=70
tJanRuneImproveMon_Data["Stc"][3]["Completed"]=1
-- 个人排位赛	胜利第4场领奖	蓝色神纹精粹	赠	20
tJanRuneImproveMon_Data["Stc"][4]={}
tJanRuneImproveMon_Data["Stc"][4]["EventType"]=187
tJanRuneImproveMon_Data["Stc"][4]["DataType"]=71
tJanRuneImproveMon_Data["Stc"][4]["Completed"]=1
-- 古神灵境	击杀200只怪物计数
tJanRuneImproveMon_Data["Stc"][5]={}
tJanRuneImproveMon_Data["Stc"][5]["EventType"]=187
tJanRuneImproveMon_Data["Stc"][5]["DataType"]=72
tJanRuneImproveMon_Data["Stc"][5]["Completed"]=200
-- 个人排位赛	胜利第4场计数	蓝色神纹精粹	赠	20
tJanRuneImproveMon_Data["Stc"][6]={}
tJanRuneImproveMon_Data["Stc"][6]["EventType"]=187
tJanRuneImproveMon_Data["Stc"][6]["DataType"]=73
tJanRuneImproveMon_Data["Stc"][6]["Completed"]=4
--stc (187,74)打开活跃度礼包额外获得奖励	黄色神纹精粹	赠5
tJanRuneImproveMon_Data["Stc"][7]={}
tJanRuneImproveMon_Data["Stc"][7]["EventType"]=187
tJanRuneImproveMon_Data["Stc"][7]["DataType"]=74
tJanRuneImproveMon_Data["Stc"][7]["Completed"]=1

--万能神纹精粹大礼包
tJanRuneImproveMon_Data[3311895]={}
tJanRuneImproveMon_Data[3311895]["LogId"] = 12001249
tJanRuneImproveMon_Data[3311895]["DeleteItem"] = {}
tJanRuneImproveMon_Data[3311895]["DeleteItem"][1]={}
tJanRuneImproveMon_Data[3311895]["DeleteItem"][1]["Id"]=3311895
tJanRuneImproveMon_Data[3311895]["RewardItem"] = {}
tJanRuneImproveMon_Data[3311895]["RewardItem"][1]={}
tJanRuneImproveMon_Data[3311895]["RewardItem"][1]["Id"]= 4060001
tJanRuneImproveMon_Data[3311895]["RewardItem"][1]["Attr"] = "0 200"
tJanRuneImproveMon_Data[3311895]["EMoneyJudge"]=0

--万能神纹精粹大礼包
tJanRuneImproveMon_Data[3311907]={}
tJanRuneImproveMon_Data[3311907]["LogId"] = 12001249
tJanRuneImproveMon_Data[3311907]["DeleteItem"] = {}
tJanRuneImproveMon_Data[3311907]["DeleteItem"][1]={}
tJanRuneImproveMon_Data[3311907]["DeleteItem"][1]["Id"]=3311907
tJanRuneImproveMon_Data[3311907]["RewardItem"] = {}
tJanRuneImproveMon_Data[3311907]["RewardItem"][1]={}
tJanRuneImproveMon_Data[3311907]["RewardItem"][1]["Id"]= 4060001
tJanRuneImproveMon_Data[3311907]["RewardItem"][1]["Attr"] = "0 200"
tJanRuneImproveMon_Data[3311907]["EMoneyJudge"]=0
--1阶狂欢礼包 赠豪华武器外套碎片*2 赠极品技能外套碎片*1 明亮星陨石*1
tJanRuneImproveMon_Data[3311875]={}
tJanRuneImproveMon_Data[3311875]["LogId"] = 12001249
tJanRuneImproveMon_Data[3311875]["DeleteItem"] = {}
tJanRuneImproveMon_Data[3311875]["DeleteItem"][1]={}
tJanRuneImproveMon_Data[3311875]["DeleteItem"][1]["Id"]=3311875
tJanRuneImproveMon_Data[3311875]["RewardItem"] = {}
tJanRuneImproveMon_Data[3311875]["RewardItem"][1]={}
tJanRuneImproveMon_Data[3311875]["RewardItem"][1]["Id"]= 3007106
tJanRuneImproveMon_Data[3311875]["RewardItem"][1]["Attr"] = "0 2"
tJanRuneImproveMon_Data[3311875]["RewardItem"][2]={}
tJanRuneImproveMon_Data[3311875]["RewardItem"][2]["Id"]= 3301425
tJanRuneImproveMon_Data[3311875]["RewardItem"][2]["Attr"] = "0 1"
tJanRuneImproveMon_Data[3311875]["RewardItem"][3]={}
tJanRuneImproveMon_Data[3311875]["RewardItem"][3]["Id"]= 3009001
tJanRuneImproveMon_Data[3311875]["RewardItem"][3]["Attr"] = "0 1 0 2880 1"
tJanRuneImproveMon_Data[3311875]["EMoneyJudge"]=0
--2阶狂欢礼包 明亮星陨石*3 赠强效护心丹*10 赠气力值1000 200赠品天石
tJanRuneImproveMon_Data[3311876]={}
tJanRuneImproveMon_Data[3311876]["LogId"] = 12001249
tJanRuneImproveMon_Data[3311876]["DeleteItem"] = {}
tJanRuneImproveMon_Data[3311876]["DeleteItem"][1]={}
tJanRuneImproveMon_Data[3311876]["DeleteItem"][1]["Id"]=3311876
tJanRuneImproveMon_Data[3311876]["RewardItem"] = {}
tJanRuneImproveMon_Data[3311876]["RewardItem"][1]={}
tJanRuneImproveMon_Data[3311876]["RewardItem"][1]["Id"]= 3002030
tJanRuneImproveMon_Data[3311876]["RewardItem"][1]["Attr"] = "0 10"
tJanRuneImproveMon_Data[3311876]["RewardItem"][2]={}
tJanRuneImproveMon_Data[3311876]["RewardItem"][2]["Id"]= 3309995
tJanRuneImproveMon_Data[3311876]["RewardItem"][2]["Attr"] = "0 1"
tJanRuneImproveMon_Data[3311876]["RewardItem"][3]={}
tJanRuneImproveMon_Data[3311876]["RewardItem"][3]["Id"]= 3009001
tJanRuneImproveMon_Data[3311876]["RewardItem"][3]["Attr"] = "0 3 0 2880 1"
tJanRuneImproveMon_Data[3311876]["RewardItem"][4]={}
tJanRuneImproveMon_Data[3311876]["RewardItem"][4]["Id"]= 3301244
tJanRuneImproveMon_Data[3311876]["RewardItem"][4]["Attr"] = "0 1"
tJanRuneImproveMon_Data[3311876]["EMoneyJudge"]=0

--3阶狂欢礼包 明亮星陨石*6 赠强效护心丹*20 赠气力值2000 300赠品天石
tJanRuneImproveMon_Data[3311877]={}
tJanRuneImproveMon_Data[3311877]["LogId"] = 12001249
tJanRuneImproveMon_Data[3311877]["DeleteItem"] = {}
tJanRuneImproveMon_Data[3311877]["DeleteItem"][1]={}
tJanRuneImproveMon_Data[3311877]["DeleteItem"][1]["Id"]=3311877
tJanRuneImproveMon_Data[3311877]["RewardItem"] = {}
tJanRuneImproveMon_Data[3311877]["RewardItem"][1]={}
tJanRuneImproveMon_Data[3311877]["RewardItem"][1]["Id"]= 3002030
tJanRuneImproveMon_Data[3311877]["RewardItem"][1]["Attr"] = "0 20"
tJanRuneImproveMon_Data[3311877]["RewardItem"][2]={}
tJanRuneImproveMon_Data[3311877]["RewardItem"][2]["Id"]= 3309994
tJanRuneImproveMon_Data[3311877]["RewardItem"][2]["Attr"] = "0 1"
tJanRuneImproveMon_Data[3311877]["RewardItem"][3]={}
tJanRuneImproveMon_Data[3311877]["RewardItem"][3]["Id"]= 3009001
tJanRuneImproveMon_Data[3311877]["RewardItem"][3]["Attr"] = "0 6 0 2880 1"
tJanRuneImproveMon_Data[3311877]["RewardItem"][4]={}
tJanRuneImproveMon_Data[3311877]["RewardItem"][4]["Id"]= 3300794
tJanRuneImproveMon_Data[3311877]["RewardItem"][4]["Attr"] = "0 1"
tJanRuneImproveMon_Data[3311877]["EMoneyJudge"]=0

--4阶狂欢礼包 晶莹星陨石*1 赠强效护心丹*30 赠气力值3000 500赠品天石
tJanRuneImproveMon_Data[3311878]={}
tJanRuneImproveMon_Data[3311878]["LogId"] = 12001249
tJanRuneImproveMon_Data[3311878]["DeleteItem"] = {}
tJanRuneImproveMon_Data[3311878]["DeleteItem"][1]={}
tJanRuneImproveMon_Data[3311878]["DeleteItem"][1]["Id"]=3311878
tJanRuneImproveMon_Data[3311878]["RewardItem"] = {}
tJanRuneImproveMon_Data[3311878]["RewardItem"][1]={}
tJanRuneImproveMon_Data[3311878]["RewardItem"][1]["Id"]= 3002030
tJanRuneImproveMon_Data[3311878]["RewardItem"][1]["Attr"] = "0 30"
tJanRuneImproveMon_Data[3311878]["RewardItem"][2]={}
tJanRuneImproveMon_Data[3311878]["RewardItem"][2]["Id"]= 3309993
tJanRuneImproveMon_Data[3311878]["RewardItem"][2]["Attr"] = "0 1"
tJanRuneImproveMon_Data[3311878]["RewardItem"][3]={}
tJanRuneImproveMon_Data[3311878]["RewardItem"][3]["Id"]= 3009002
tJanRuneImproveMon_Data[3311878]["RewardItem"][3]["Attr"] = "0 1 0 2880 1"
tJanRuneImproveMon_Data[3311878]["RewardItem"][4]={}
tJanRuneImproveMon_Data[3311878]["RewardItem"][4]["Id"]= 3200027
tJanRuneImproveMon_Data[3311878]["RewardItem"][4]["Attr"] = "0 1"
tJanRuneImproveMon_Data[3311878]["EMoneyJudge"]=0

--5阶狂欢礼包 赠极品技能外套碎片*5 射雕英雄赠  *1 赠散功丹*2
tJanRuneImproveMon_Data[3311879]={}
tJanRuneImproveMon_Data[3311879]["LogId"] = 12001249
tJanRuneImproveMon_Data[3311879]["DeleteItem"] = {}
tJanRuneImproveMon_Data[3311879]["DeleteItem"][1]={}
tJanRuneImproveMon_Data[3311879]["DeleteItem"][1]["Id"]=3311879
tJanRuneImproveMon_Data[3311879]["RewardItem"] = {}
tJanRuneImproveMon_Data[3311879]["RewardItem"][1]={}
tJanRuneImproveMon_Data[3311879]["RewardItem"][1]["Id"]= 3301425
tJanRuneImproveMon_Data[3311879]["RewardItem"][1]["Attr"] = "0 5"
tJanRuneImproveMon_Data[3311879]["RewardItem"][2]={}
tJanRuneImproveMon_Data[3311879]["RewardItem"][2]["Id"]= 195505
tJanRuneImproveMon_Data[3311879]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 1"
tJanRuneImproveMon_Data[3311879]["RewardItem"][3]={}
tJanRuneImproveMon_Data[3311879]["RewardItem"][3]["Id"]= 3005412
tJanRuneImproveMon_Data[3311879]["RewardItem"][3]["Attr"] = "0 2 3"
tJanRuneImproveMon_Data[3311879]["EMoneyJudge"]=0

--6阶狂欢礼包 赠极品技能外套碎片*10 赠散功丹*3 赠小固化石*2 赠龙珠卷*1
tJanRuneImproveMon_Data[3311880]={}
tJanRuneImproveMon_Data[3311880]["LogId"] = 12001249
tJanRuneImproveMon_Data[3311880]["DeleteItem"] = {}
tJanRuneImproveMon_Data[3311880]["DeleteItem"][1]={}
tJanRuneImproveMon_Data[3311880]["DeleteItem"][1]["Id"]=3311880
tJanRuneImproveMon_Data[3311880]["RewardItem"] = {}
tJanRuneImproveMon_Data[3311880]["RewardItem"][1]={}
tJanRuneImproveMon_Data[3311880]["RewardItem"][1]["Id"]= 3301425
tJanRuneImproveMon_Data[3311880]["RewardItem"][1]["Attr"] = "0 10"
tJanRuneImproveMon_Data[3311880]["RewardItem"][2]={}
tJanRuneImproveMon_Data[3311880]["RewardItem"][2]["Id"]= 3005412
tJanRuneImproveMon_Data[3311880]["RewardItem"][2]["Attr"] = "0 3 3"
tJanRuneImproveMon_Data[3311880]["RewardItem"][3]={}
tJanRuneImproveMon_Data[3311880]["RewardItem"][3]["Id"]= 723694
tJanRuneImproveMon_Data[3311880]["RewardItem"][3]["Attr"] = "0 2 3"
tJanRuneImproveMon_Data[3311880]["RewardItem"][4]={}
tJanRuneImproveMon_Data[3311880]["RewardItem"][4]["Id"]= 3300190
tJanRuneImproveMon_Data[3311880]["RewardItem"][4]["Attr"] = "0 1"
tJanRuneImproveMon_Data[3311880]["EMoneyJudge"]=0

--7阶狂欢礼包 赠极品技能外套碎片*15 赠散功丹*3 赠小固化石*2 1500赠品天石
tJanRuneImproveMon_Data[3311881]={}
tJanRuneImproveMon_Data[3311881]["LogId"] = 12001249
tJanRuneImproveMon_Data[3311881]["DeleteItem"] = {}
tJanRuneImproveMon_Data[3311881]["DeleteItem"][1]={}
tJanRuneImproveMon_Data[3311881]["DeleteItem"][1]["Id"]=3311881
tJanRuneImproveMon_Data[3311881]["RewardItem"] = {}
tJanRuneImproveMon_Data[3311881]["RewardItem"][1]={}
tJanRuneImproveMon_Data[3311881]["RewardItem"][1]["Id"]= 3301425
tJanRuneImproveMon_Data[3311881]["RewardItem"][1]["Attr"] = "0 15"
tJanRuneImproveMon_Data[3311881]["RewardItem"][2]={}
tJanRuneImproveMon_Data[3311881]["RewardItem"][2]["Id"]= 3005412
tJanRuneImproveMon_Data[3311881]["RewardItem"][2]["Attr"] = "0 3 3"
tJanRuneImproveMon_Data[3311881]["RewardItem"][3]={}
tJanRuneImproveMon_Data[3311881]["RewardItem"][3]["Id"]= 723694
tJanRuneImproveMon_Data[3311881]["RewardItem"][3]["Attr"] = "0 2 3"
tJanRuneImproveMon_Data[3311881]["RewardEMoneyMono"] = {}
tJanRuneImproveMon_Data[3311881]["RewardEMoneyMono"]["Value"] = 1500
tJanRuneImproveMon_Data[3311881]["EmoneyLog"] = "10000	0121	0	0	1500	"
tJanRuneImproveMon_Data[3311881]["EMoneyJudge"]=1

--8阶狂欢礼包 赠极品技能外套碎片*20 赠散功丹*5 赠赤炼石+6*2 赠金刚坚钻*2 气力值*10000
tJanRuneImproveMon_Data[3311882]={}
tJanRuneImproveMon_Data[3311882]["LogId"] = 12001249
tJanRuneImproveMon_Data[3311882]["DeleteItem"] = {}
tJanRuneImproveMon_Data[3311882]["DeleteItem"][1]={}
tJanRuneImproveMon_Data[3311882]["DeleteItem"][1]["Id"]=3311882
tJanRuneImproveMon_Data[3311882]["RewardItem"] = {}
tJanRuneImproveMon_Data[3311882]["RewardItem"][1]={}
tJanRuneImproveMon_Data[3311882]["RewardItem"][1]["Id"]= 3301425
tJanRuneImproveMon_Data[3311882]["RewardItem"][1]["Attr"] = "0 20"
tJanRuneImproveMon_Data[3311882]["RewardItem"][2]={}
tJanRuneImproveMon_Data[3311882]["RewardItem"][2]["Id"]= 3005412
tJanRuneImproveMon_Data[3311882]["RewardItem"][2]["Attr"] = "0 5 3"
tJanRuneImproveMon_Data[3311882]["RewardItem"][3]={}
tJanRuneImproveMon_Data[3311882]["RewardItem"][3]["Id"]= 730006
tJanRuneImproveMon_Data[3311882]["RewardItem"][3]["Attr"] = "0 2 3"
tJanRuneImproveMon_Data[3311882]["RewardItem"][4]={}
tJanRuneImproveMon_Data[3311882]["RewardItem"][4]["Id"]= 1200005
tJanRuneImproveMon_Data[3311882]["RewardItem"][4]["Attr"] = "0 2 3"
tJanRuneImproveMon_Data[3311882]["RewardItem"][5]={}
tJanRuneImproveMon_Data[3311882]["RewardItem"][5]["Id"]= 3200349
tJanRuneImproveMon_Data[3311882]["RewardItem"][5]["Attr"] = "0 1"
tJanRuneImproveMon_Data[3311882]["EMoneyJudge"]=0

--9阶狂欢礼包 赠极品技能外套碎片*20 赠散功丹*5 赠小固化石*5 赠金刚坚钻*2 赠气力值*20000
tJanRuneImproveMon_Data[3311883]={}
tJanRuneImproveMon_Data[3311883]["LogId"] = 12001249
tJanRuneImproveMon_Data[3311883]["DeleteItem"] = {}
tJanRuneImproveMon_Data[3311883]["DeleteItem"][1]={}
tJanRuneImproveMon_Data[3311883]["DeleteItem"][1]["Id"]=3311883
tJanRuneImproveMon_Data[3311883]["RewardItem"] = {}
tJanRuneImproveMon_Data[3311883]["RewardItem"][1]={}
tJanRuneImproveMon_Data[3311883]["RewardItem"][1]["Id"]= 3301425
tJanRuneImproveMon_Data[3311883]["RewardItem"][1]["Attr"] = "0 20"
tJanRuneImproveMon_Data[3311883]["RewardItem"][2]={}
tJanRuneImproveMon_Data[3311883]["RewardItem"][2]["Id"]= 3005412
tJanRuneImproveMon_Data[3311883]["RewardItem"][2]["Attr"] = "0 5 3"
tJanRuneImproveMon_Data[3311883]["RewardItem"][3]={}
tJanRuneImproveMon_Data[3311883]["RewardItem"][3]["Id"]= 723694
tJanRuneImproveMon_Data[3311883]["RewardItem"][3]["Attr"] = "0 5 3"
tJanRuneImproveMon_Data[3311883]["RewardItem"][4]={}
tJanRuneImproveMon_Data[3311883]["RewardItem"][4]["Id"]= 1200005
tJanRuneImproveMon_Data[3311883]["RewardItem"][4]["Attr"] = "0 2 3"
tJanRuneImproveMon_Data[3311883]["RewardItem"][5]={}
tJanRuneImproveMon_Data[3311883]["RewardItem"][5]["Id"]= 3300137
tJanRuneImproveMon_Data[3311883]["RewardItem"][5]["Attr"] = "0 1"
tJanRuneImproveMon_Data[3311883]["EMoneyJudge"]=0

--10阶狂欢礼包 赠极品技能外套碎片*29 赠品赤炼石+8*2 非赠万能神纹精粹*300 非赠小抽奖礼包*10
tJanRuneImproveMon_Data[3311884]={}
tJanRuneImproveMon_Data[3311884]["LogId"] = 12001249
tJanRuneImproveMon_Data[3311884]["DeleteItem"] = {}
tJanRuneImproveMon_Data[3311884]["DeleteItem"][1]={}
tJanRuneImproveMon_Data[3311884]["DeleteItem"][1]["Id"]=3311884
tJanRuneImproveMon_Data[3311884]["RewardItem"] = {}
tJanRuneImproveMon_Data[3311884]["RewardItem"][1]={}
tJanRuneImproveMon_Data[3311884]["RewardItem"][1]["Id"]= 3301425
tJanRuneImproveMon_Data[3311884]["RewardItem"][1]["Attr"] = "0 29"
tJanRuneImproveMon_Data[3311884]["RewardItem"][2]={}
tJanRuneImproveMon_Data[3311884]["RewardItem"][2]["Id"]= 730008
tJanRuneImproveMon_Data[3311884]["RewardItem"][2]["Attr"] = "0 2 3"
tJanRuneImproveMon_Data[3311884]["RewardItem"][3]={}
tJanRuneImproveMon_Data[3311884]["RewardItem"][3]["Id"]= 4060001
tJanRuneImproveMon_Data[3311884]["RewardItem"][3]["Attr"] = "0 300"
tJanRuneImproveMon_Data[3311884]["RewardItem"][4]={}
tJanRuneImproveMon_Data[3311884]["RewardItem"][4]["Id"]= 724002
tJanRuneImproveMon_Data[3311884]["RewardItem"][4]["Attr"] = "0 10"
tJanRuneImproveMon_Data[3311884]["EMoneyJudge"]=0

--全服第1礼包 东方不败至尊 赠散功丹*20
tJanRuneImproveMon_Data[3311885]={}
tJanRuneImproveMon_Data[3311885]["LogId"] = 12001249
tJanRuneImproveMon_Data[3311885]["DeleteItem"] = {}
tJanRuneImproveMon_Data[3311885]["DeleteItem"][1]={}
tJanRuneImproveMon_Data[3311885]["DeleteItem"][1]["Id"]=3311885
tJanRuneImproveMon_Data[3311885]["RewardItem"] = {}
tJanRuneImproveMon_Data[3311885]["RewardItem"][1]={}
tJanRuneImproveMon_Data[3311885]["RewardItem"][1]["Id"]= 195485
tJanRuneImproveMon_Data[3311885]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tJanRuneImproveMon_Data[3311885]["RewardItem"][2]={}
tJanRuneImproveMon_Data[3311885]["RewardItem"][2]["Id"]= 3005412
tJanRuneImproveMon_Data[3311885]["RewardItem"][2]["Attr"] = "0 20 3"
tJanRuneImproveMon_Data[3311885]["EMoneyJudge"]=0

--全服第2礼包 东方不败至尊 赠散功丹*18
tJanRuneImproveMon_Data[3311886]={}
tJanRuneImproveMon_Data[3311886]["LogId"] = 12001249
tJanRuneImproveMon_Data[3311886]["DeleteItem"] = {}
tJanRuneImproveMon_Data[3311886]["DeleteItem"][1]={}
tJanRuneImproveMon_Data[3311886]["DeleteItem"][1]["Id"]=3311886
tJanRuneImproveMon_Data[3311886]["RewardItem"] = {}
tJanRuneImproveMon_Data[3311886]["RewardItem"][1]={}
tJanRuneImproveMon_Data[3311886]["RewardItem"][1]["Id"]= 195485
tJanRuneImproveMon_Data[3311886]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tJanRuneImproveMon_Data[3311886]["RewardItem"][2]={}
tJanRuneImproveMon_Data[3311886]["RewardItem"][2]["Id"]= 3005412
tJanRuneImproveMon_Data[3311886]["RewardItem"][2]["Attr"] = "0 18 3"
tJanRuneImproveMon_Data[3311886]["EMoneyJudge"]=0


--全服第3礼包 东方不败至尊 赠散功丹*13
tJanRuneImproveMon_Data[3311887]={}
tJanRuneImproveMon_Data[3311887]["LogId"] = 12001249
tJanRuneImproveMon_Data[3311887]["DeleteItem"] = {}
tJanRuneImproveMon_Data[3311887]["DeleteItem"][1]={}
tJanRuneImproveMon_Data[3311887]["DeleteItem"][1]["Id"]=3311887
tJanRuneImproveMon_Data[3311887]["RewardItem"] = {}
tJanRuneImproveMon_Data[3311887]["RewardItem"][1]={}
tJanRuneImproveMon_Data[3311887]["RewardItem"][1]["Id"]= 195485
tJanRuneImproveMon_Data[3311887]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tJanRuneImproveMon_Data[3311887]["RewardItem"][2]={}
tJanRuneImproveMon_Data[3311887]["RewardItem"][2]["Id"]= 3005412
tJanRuneImproveMon_Data[3311887]["RewardItem"][2]["Attr"] = "0 13 3"
tJanRuneImproveMon_Data[3311887]["EMoneyJudge"]=0

--全服第4礼包 东方不败至尊 赠散功丹*10
tJanRuneImproveMon_Data[3311888]={}
tJanRuneImproveMon_Data[3311888]["LogId"] = 12001249
tJanRuneImproveMon_Data[3311888]["DeleteItem"] = {}
tJanRuneImproveMon_Data[3311888]["DeleteItem"][1]={}
tJanRuneImproveMon_Data[3311888]["DeleteItem"][1]["Id"]=3311888
tJanRuneImproveMon_Data[3311888]["RewardItem"] = {}
tJanRuneImproveMon_Data[3311888]["RewardItem"][1]={}
tJanRuneImproveMon_Data[3311888]["RewardItem"][1]["Id"]= 195485
tJanRuneImproveMon_Data[3311888]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tJanRuneImproveMon_Data[3311888]["RewardItem"][2]={}
tJanRuneImproveMon_Data[3311888]["RewardItem"][2]["Id"]= 3005412
tJanRuneImproveMon_Data[3311888]["RewardItem"][2]["Attr"] = "0 10 3"
tJanRuneImproveMon_Data[3311888]["EMoneyJudge"]=0

--全服第5礼包 东方不败至尊 赠散功丹*8
tJanRuneImproveMon_Data[3311889]={}
tJanRuneImproveMon_Data[3311889]["LogId"] = 12001249
tJanRuneImproveMon_Data[3311889]["DeleteItem"] = {}
tJanRuneImproveMon_Data[3311889]["DeleteItem"][1]={}
tJanRuneImproveMon_Data[3311889]["DeleteItem"][1]["Id"]=3311889
tJanRuneImproveMon_Data[3311889]["RewardItem"] = {}
tJanRuneImproveMon_Data[3311889]["RewardItem"][1]={}
tJanRuneImproveMon_Data[3311889]["RewardItem"][1]["Id"]= 195485
tJanRuneImproveMon_Data[3311889]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tJanRuneImproveMon_Data[3311889]["RewardItem"][2]={}
tJanRuneImproveMon_Data[3311889]["RewardItem"][2]["Id"]= 3005412
tJanRuneImproveMon_Data[3311889]["RewardItem"][2]["Attr"] = "0 8 3"
tJanRuneImproveMon_Data[3311889]["EMoneyJudge"]=0

--全服第6礼包 东方不败至尊 赠散功丹*5
tJanRuneImproveMon_Data[3311890]={}
tJanRuneImproveMon_Data[3311890]["LogId"] = 12001249
tJanRuneImproveMon_Data[3311890]["DeleteItem"] = {}
tJanRuneImproveMon_Data[3311890]["DeleteItem"][1]={}
tJanRuneImproveMon_Data[3311890]["DeleteItem"][1]["Id"]=3311890
tJanRuneImproveMon_Data[3311890]["RewardItem"] = {}
tJanRuneImproveMon_Data[3311890]["RewardItem"][1]={}
tJanRuneImproveMon_Data[3311890]["RewardItem"][1]["Id"]= 195485
tJanRuneImproveMon_Data[3311890]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tJanRuneImproveMon_Data[3311890]["RewardItem"][2]={}
tJanRuneImproveMon_Data[3311890]["RewardItem"][2]["Id"]= 3005412
tJanRuneImproveMon_Data[3311890]["RewardItem"][2]["Attr"] = "0 5 3"
tJanRuneImproveMon_Data[3311890]["EMoneyJudge"]=0

--全服第7礼包 东方不败至尊 赠散功丹*3
tJanRuneImproveMon_Data[3311891]={}
tJanRuneImproveMon_Data[3311891]["LogId"] = 12001249
tJanRuneImproveMon_Data[3311891]["DeleteItem"] = {}
tJanRuneImproveMon_Data[3311891]["DeleteItem"][1]={}
tJanRuneImproveMon_Data[3311891]["DeleteItem"][1]["Id"]=3311891
tJanRuneImproveMon_Data[3311891]["RewardItem"] = {}
tJanRuneImproveMon_Data[3311891]["RewardItem"][1]={}
tJanRuneImproveMon_Data[3311891]["RewardItem"][1]["Id"]= 195485
tJanRuneImproveMon_Data[3311891]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tJanRuneImproveMon_Data[3311891]["RewardItem"][2]={}
tJanRuneImproveMon_Data[3311891]["RewardItem"][2]["Id"]= 3005412
tJanRuneImproveMon_Data[3311891]["RewardItem"][2]["Attr"] = "0 3 3"
tJanRuneImproveMon_Data[3311891]["EMoneyJudge"]=0

--全服第8礼包 东方不败至尊 赠散功丹*2
tJanRuneImproveMon_Data[3311892]={}
tJanRuneImproveMon_Data[3311892]["LogId"] = 12001249
tJanRuneImproveMon_Data[3311892]["DeleteItem"] = {}
tJanRuneImproveMon_Data[3311892]["DeleteItem"][1]={}
tJanRuneImproveMon_Data[3311892]["DeleteItem"][1]["Id"]=3311892
tJanRuneImproveMon_Data[3311892]["RewardItem"] = {}
tJanRuneImproveMon_Data[3311892]["RewardItem"][1]={}
tJanRuneImproveMon_Data[3311892]["RewardItem"][1]["Id"]= 195485
tJanRuneImproveMon_Data[3311892]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tJanRuneImproveMon_Data[3311892]["RewardItem"][2]={}
tJanRuneImproveMon_Data[3311892]["RewardItem"][2]["Id"]= 3005412
tJanRuneImproveMon_Data[3311892]["RewardItem"][2]["Attr"] = "0 2 3"
tJanRuneImproveMon_Data[3311892]["EMoneyJudge"]=0

--赠品90天神佑1%东方不败至尊
tJanRuneImproveMon_Data[3311893]={}
tJanRuneImproveMon_Data[3311893]["LogId"] = 12001249
tJanRuneImproveMon_Data[3311893]["DeleteItem"] = {}
tJanRuneImproveMon_Data[3311893]["DeleteItem"][1]={}
tJanRuneImproveMon_Data[3311893]["DeleteItem"][1]["Id"]=3311893
tJanRuneImproveMon_Data[3311893]["RewardItem"] = {}
tJanRuneImproveMon_Data[3311893]["RewardItem"][1]={}
tJanRuneImproveMon_Data[3311893]["RewardItem"][1]["Id"]= 195485
tJanRuneImproveMon_Data[3311893]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1"

--非赠良品神纹源晶可选包(普通)
tJanRuneImproveMon_Data[3311908]={}
tJanRuneImproveMon_Data[3311908]["LogId"] = 12001249
tJanRuneImproveMon_Data[3311908]["DeleteItem"] = {}
tJanRuneImproveMon_Data[3311908]["DeleteItem"][1]={}
tJanRuneImproveMon_Data[3311908]["DeleteItem"][1]["Id"]=3311908
tJanRuneImproveMon_Data[3311908]["RewardItem"] = {}
tJanRuneImproveMon_Data[3311908]["RewardItem"][1]={}
tJanRuneImproveMon_Data[3311908]["RewardItem"][1]["Id"]= 3311820
tJanRuneImproveMon_Data[3311908]["RewardItem"][1]["Attr"] = "0 10 3"
tJanRuneImproveMon_Data[3311908]["EMoneyJudge"]=0

--非赠优质神纹源晶可选包(普通)
tJanRuneImproveMon_Data[3311909]={}
tJanRuneImproveMon_Data[3311909]["LogId"] = 12001249
tJanRuneImproveMon_Data[3311909]["DeleteItem"] = {}
tJanRuneImproveMon_Data[3311909]["DeleteItem"][1]={}
tJanRuneImproveMon_Data[3311909]["DeleteItem"][1]["Id"]=3311909
tJanRuneImproveMon_Data[3311909]["RewardItem"] = {}
tJanRuneImproveMon_Data[3311909]["RewardItem"][1]={}
tJanRuneImproveMon_Data[3311909]["RewardItem"][1]["Id"]= 3311821
tJanRuneImproveMon_Data[3311909]["RewardItem"][1]["Attr"] = "0 5 3"
tJanRuneImproveMon_Data[3311909]["EMoneyJudge"]=0

--非赠良品神纹源晶可选包(VIP)
tJanRuneImproveMon_Data[3311910]={}
tJanRuneImproveMon_Data[3311910]["LogId"] = 12001249
tJanRuneImproveMon_Data[3311910]["DeleteItem"] = {}
tJanRuneImproveMon_Data[3311910]["DeleteItem"][1]={}
tJanRuneImproveMon_Data[3311910]["DeleteItem"][1]["Id"]=3311910
tJanRuneImproveMon_Data[3311910]["RewardItem"] = {}
tJanRuneImproveMon_Data[3311910]["RewardItem"][1]={}
tJanRuneImproveMon_Data[3311910]["RewardItem"][1]["Id"]= 3311820
tJanRuneImproveMon_Data[3311910]["RewardItem"][1]["Attr"] = "0 10 3"
tJanRuneImproveMon_Data[3311910]["EMoneyJudge"]=0

--非赠优质神纹源晶可选包(VIP)
tJanRuneImproveMon_Data[3311911]={}
tJanRuneImproveMon_Data[3311911]["LogId"] = 12001249
tJanRuneImproveMon_Data[3311911]["DeleteItem"] = {}
tJanRuneImproveMon_Data[3311911]["DeleteItem"][1]={}
tJanRuneImproveMon_Data[3311911]["DeleteItem"][1]["Id"]=3311911
tJanRuneImproveMon_Data[3311911]["RewardItem"] = {}
tJanRuneImproveMon_Data[3311911]["RewardItem"][1]={}
tJanRuneImproveMon_Data[3311911]["RewardItem"][1]["Id"]= 3311821
tJanRuneImproveMon_Data[3311911]["RewardItem"][1]["Attr"] = "0 5 3"
tJanRuneImproveMon_Data[3311911]["EMoneyJudge"]=0


--------------新增礼包
tJanRuneImproveMon_Data[3322039]={}
tJanRuneImproveMon_Data[3322039]["LogId"] = 12001249
tJanRuneImproveMon_Data[3322039]["DeleteItem"] = {}
tJanRuneImproveMon_Data[3322039]["DeleteItem"][1]={}
tJanRuneImproveMon_Data[3322039]["DeleteItem"][1]["Id"]=3322039
tJanRuneImproveMon_Data[3322039]["RewardItem"] = {}
tJanRuneImproveMon_Data[3322039]["RewardItem"][1]={}
tJanRuneImproveMon_Data[3322039]["RewardItem"][1]["Id"]= 3311759
tJanRuneImproveMon_Data[3322039]["RewardItem"][1]["Attr"] = "0 10 3"
tJanRuneImproveMon_Data[3322039]["EMoneyJudge"]=0

tJanRuneImproveMon_Data[3322040]={}
tJanRuneImproveMon_Data[3322040]["LogId"] = 12001249
tJanRuneImproveMon_Data[3322040]["DeleteItem"] = {}
tJanRuneImproveMon_Data[3322040]["DeleteItem"][1]={}
tJanRuneImproveMon_Data[3322040]["DeleteItem"][1]["Id"]=3322040
tJanRuneImproveMon_Data[3322040]["RewardItem"] = {}
tJanRuneImproveMon_Data[3322040]["RewardItem"][1]={}
tJanRuneImproveMon_Data[3322040]["RewardItem"][1]["Id"]= 3311759
tJanRuneImproveMon_Data[3322040]["RewardItem"][1]["Attr"] = "0 10 3"
tJanRuneImproveMon_Data[3322040]["EMoneyJudge"]=0




--邮件发奖id
tJanRuneImproveMon_Data["MailAction"]={}
tJanRuneImproveMon_Data["MailAction"]["ExistDay"]=30
tJanRuneImproveMon_Data["MailAction"]["ActionId"]={}
tJanRuneImproveMon_Data["MailAction"]["ActionId"][1]=570795
tJanRuneImproveMon_Data["MailAction"]["ActionId"][2]=570796
tJanRuneImproveMon_Data["MailAction"]["ActionId"][3]=570797
tJanRuneImproveMon_Data["MailAction"]["ActionId"][4]=570798


--镇魔塔通第九层额外奖励
tJanRuneImproveMon_Data["DemonTowerReward"]={}
--普通
tJanRuneImproveMon_Data["DemonTowerReward"][1]={}
tJanRuneImproveMon_Data["DemonTowerReward"][1]["LogId"] = 12001249
tJanRuneImproveMon_Data["DemonTowerReward"][1]["RewardItem"] = {}
tJanRuneImproveMon_Data["DemonTowerReward"][1]["RewardItem"][1]={}
tJanRuneImproveMon_Data["DemonTowerReward"][1]["RewardItem"][1]["Id"]= 4050001
tJanRuneImproveMon_Data["DemonTowerReward"][1]["RewardItem"][1]["Attr"] = "0 10 3"
--困难
tJanRuneImproveMon_Data["DemonTowerReward"][2]={}
tJanRuneImproveMon_Data["DemonTowerReward"][2]["LogId"] = 12001249
tJanRuneImproveMon_Data["DemonTowerReward"][2]["RewardItem"] = {}
tJanRuneImproveMon_Data["DemonTowerReward"][2]["RewardItem"][1]={}
tJanRuneImproveMon_Data["DemonTowerReward"][2]["RewardItem"][1]["Id"]= 4050001
tJanRuneImproveMon_Data["DemonTowerReward"][2]["RewardItem"][1]["Attr"] = "0 20 3"

--镇魔塔通第九层额外奖励
tJanRuneImproveMon_Data["TreasureAreaReward"]={}
tJanRuneImproveMon_Data["TreasureAreaReward"]["LogId"] = 12001249
tJanRuneImproveMon_Data["TreasureAreaReward"]["RewardItem"] = {}
tJanRuneImproveMon_Data["TreasureAreaReward"]["RewardItem"][1]={}
tJanRuneImproveMon_Data["TreasureAreaReward"]["RewardItem"][1]["Id"]= 4040001
tJanRuneImproveMon_Data["TreasureAreaReward"]["RewardItem"][1]["Attr"] = "0 20 3"

--个人排位赛 胜利第4场额外奖励
tJanRuneImproveMon_Data["PKReward"]={}
tJanRuneImproveMon_Data["PKReward"]["LogId"] = 12001249
tJanRuneImproveMon_Data["PKReward"]["RewardItem"] = {}
tJanRuneImproveMon_Data["PKReward"]["RewardItem"][1]={}
tJanRuneImproveMon_Data["PKReward"]["RewardItem"][1]["Id"]= 4040001
tJanRuneImproveMon_Data["PKReward"]["RewardItem"][1]["Attr"] = "0 10 3"

--活跃度礼包额外奖励
tJanRuneImproveMon_Data["ActiveReward"]={}
tJanRuneImproveMon_Data["ActiveReward"]["LogId"] = 12001249
tJanRuneImproveMon_Data["ActiveReward"]["RewardItem"] = {}
tJanRuneImproveMon_Data["ActiveReward"]["RewardItem"][1]={}
tJanRuneImproveMon_Data["ActiveReward"]["RewardItem"][1]["Id"]= 4050001
tJanRuneImproveMon_Data["ActiveReward"]["RewardItem"][1]["Attr"] = "0 10 3"

--商店NPCid
tJanRuneImproveMon_Data["Store"]={}
tJanRuneImproveMon_Data["Store"]["Normal"]=23605
tJanRuneImproveMon_Data["Store"]["VIP"]=23608

--线下链接
tJanRuneImproveMon_Data["Web"]="https://coevent.99.com/runegrow202006/"

tJanRuneImproveMon_Data["Global"]={}
tJanRuneImproveMon_Data["Global"]["Server"]=54452
----------------------------------逻辑部分---------------------------------------------
function JanRuneImproveMon_OpenPack(nItemId)
--检测物品
	if not Item_ChkItem(nItemId) then
		return
	end
	--赠点上限判断
	if tJanRuneImproveMon_Data[nItemId]["EMoneyJudge"]==1 then
			-- 判断赠点上限
		local nUserId = Get_UserId()
		local nEmoney = Get_UserMonoEMoney(nUserId)
		local nAddEmoney = tJanRuneImproveMon_Data[nItemId]["RewardEMoneyMono"]["Value"]
		if nEmoney + nAddEmoney > G_User_MaxEmoneyMono then
			User_TalkChannel2005(tJanRuneImproveMon_Text["SystemTips"]["CPBFull"])
			return
		end
	end 
--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tJanRuneImproveMon_Data[nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tJanRuneImproveMon_Data[nItemId])
	local nNeedSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nNeedSpace) then
		local sText=string.format(tJanRuneImproveMon_Text["SystemTips"]["NoSpace"],nNeedSpace)
		User_TalkChannel2005(sText)
		return
	end
	--打开礼包
	if RewardTemplate_UseItem(tJanRuneImproveMon_Data[nItemId]) then 
		return 
	end 
end 

--镇魔塔通第九层额外奖励
function JanRuneImproveMon_DemonTowerReward(nIndex)
--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["JanRuneImproveMon"]["ActivityTime"]) then
		return
	end 

	--绿色服，激情服不上
	local nServerGlobal=tJanRuneImproveMon_Data["Global"]["Server"]
	
	if Get_SysDynaGlobalData(nServerGlobal,0) == 1 then 
		return 
	end 
	
--领奖掩码
	local nEventType1=tJanRuneImproveMon_Data["Stc"][nIndex]["EventType"]
	local nDataType1=tJanRuneImproveMon_Data["Stc"][nIndex]["DataType"]
	local nComplete1 = tJanRuneImproveMon_Data["Stc"][nIndex]["Completed"]
--隔天清掩码
	Task_StcReset(nEventType1,nDataType1)
	--已经领取完每日奖励
	if Task_ChkStcValue(nEventType1,nDataType1,">=",nComplete1) then
		return
	end 
	--加掩码
	Task_AddStatistic(nEventType1,nDataType1,1,1)
	Task_SetStcTimestamp(nEventType1,nDataType1,0)
	--给奖励
	local nUserId = Get_UserId()
	JanRuneImproveMon_SendMail(nIndex,nUserId)
end 

--古神灵境 击杀200只怪物 额外奖励
function JanRuneImproveMon_TreasureAreaReward()
--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["JanRuneImproveMon"]["ActivityTime"]) then
		return
	end 
	
	--绿色服，激情服不上
	local nServerGlobal=tJanRuneImproveMon_Data["Global"]["Server"]
	
	if Get_SysDynaGlobalData(nServerGlobal,0) == 1 then 
		return 
	end 
	
	--领奖掩码
	local nEventType=tJanRuneImproveMon_Data["Stc"][3]["EventType"]
	local nDataType=tJanRuneImproveMon_Data["Stc"][3]["DataType"]
	local nComplete = tJanRuneImproveMon_Data["Stc"][3]["Completed"]
	--杀怪计数掩码
	local nMonsterEventType=tJanRuneImproveMon_Data["Stc"][5]["EventType"]
	local nMonsterDataType=tJanRuneImproveMon_Data["Stc"][5]["DataType"]
	local nMonsterComplete = tJanRuneImproveMon_Data["Stc"][5]["Completed"]
	--隔天清掩码
	Task_StcReset(nEventType,nDataType)
	Task_StcReset(nMonsterEventType,nMonsterDataType)
	--已经领取完每日奖励
	if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
		return
	end 
	--杀怪数+1
	Task_AddStatistic(nMonsterEventType,nMonsterDataType,1,1)
	Task_SetStcTimestamp(nMonsterEventType,nMonsterDataType,0)
	--杀怪数到达200，给奖
	if Task_ChkStcValue(nMonsterEventType,nMonsterDataType,">=",nMonsterComplete) then
		--加掩码
		Task_AddStatistic(nEventType,nDataType,1,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
		--给奖励
		local nUserId = Get_UserId()
		JanRuneImproveMon_SendMail(3,nUserId)
	end
end 

--个人排位赛 胜利第4场
function JanRuneImproveMon_PKReward(nUserId,nFieldNum)
--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["JanRuneImproveMon"]["ActivityTime"]) then
		return
	end 
	
	--绿色服，激情服不上
	local nServerGlobal=tJanRuneImproveMon_Data["Global"]["Server"]
	
	if Get_SysDynaGlobalData(nServerGlobal,0) == 1 then 
		return 
	end 
	
	--领奖掩码
	local nEventType=tJanRuneImproveMon_Data["Stc"][4]["EventType"]
	local nDataType=tJanRuneImproveMon_Data["Stc"][4]["DataType"]
	local nComplete = tJanRuneImproveMon_Data["Stc"][4]["Completed"]
		--领奖掩码
	local nPKEventType=tJanRuneImproveMon_Data["Stc"][6]["EventType"]
	local nPKDataType=tJanRuneImproveMon_Data["Stc"][6]["DataType"]
	local nPKComplete = tJanRuneImproveMon_Data["Stc"][6]["Completed"]
	--隔天清掩码
	Task_StcReset(nEventType,nDataType,nUserId)
	Task_StcReset(nPKEventType,nPKDataType,nUserId)
	--已经领取完每日奖励
	if Task_ChkStcValue(nEventType,nDataType,">=",nComplete,nUserId) then
		return
	end 
	--场次+1
	Task_AddStatistic(nPKEventType,nPKDataType,1,1,nUserId)
	Task_SetStcTimestamp(nPKEventType,nPKDataType,0,nUserId)
	--第四场
	if Task_ChkStcValue(nPKEventType,nPKDataType,"==",nPKComplete,nUserId) then
		--奖励掩码
		Task_AddStatistic(nEventType,nDataType,1,1,nUserId)
		Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
		--给奖励
		JanRuneImproveMon_SendMail(4,nUserId)
	end 
end 

--活跃度礼包额外获得
function JanRuneImproveMon_ActivePackReward()
--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["JanRuneImproveMon"]["ActivityTime"]) then
		return
	end 
	
	--绿色服，激情服不上
	local nServerGlobal=tJanRuneImproveMon_Data["Global"]["Server"]
	
	if Get_SysDynaGlobalData(nServerGlobal,0) == 1 then 
		return 
	end 
	
--领奖掩码
	local nEventType=tJanRuneImproveMon_Data["Stc"][7]["EventType"]
	local nDataType=tJanRuneImproveMon_Data["Stc"][7]["DataType"]
	local nComplete = tJanRuneImproveMon_Data["Stc"][7]["Completed"]
--隔天清掩码
	Task_StcReset(nEventType,nDataType)
	--已经领取完每日奖励
	if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
		return
	end 
--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tJanRuneImproveMon_Data["ActiveReward"])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tJanRuneImproveMon_Data["ActiveReward"])
	local nNeedSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nNeedSpace) then
		local sText=string.format(tJanRuneImproveMon_Text["SystemTips"]["NoSpace"],nNeedSpace)
		User_TalkChannel2005(sText)
		return
	end
		--加掩码
	Task_AddStatistic(nEventType,nDataType,1,1)
	Task_SetStcTimestamp(nEventType,nDataType,0)
	--给奖励
	if RewardTemplate_UseItem(tJanRuneImproveMon_Data["ActiveReward"]) then 
		return 
	end 
end 

--邮件发奖 
function JanRuneImproveMon_SendMail(nContentIndex,nUserId)
--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["JanRuneImproveMon"]["ActivityTime"]) then
		return
	end 
	local sSender = tJanRuneImproveMon_Text["SendMail"]["Sender"] 
	local sTitle = tJanRuneImproveMon_Text["SendMail"]["Title"]
	local sContent = tJanRuneImproveMon_Text["SendMail"]["Content"][nContentIndex]
	local nExistDay = tJanRuneImproveMon_Data["MailAction"]["ExistDay"]
	local nActionId =  tJanRuneImproveMon_Data["MailAction"]["ActionId"][nContentIndex]
	Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
end 

--寻路至对应商店npc
function JanRuneImproveMon_OpenStore()
--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["JanRuneImproveMon"]["ActivityTime"]) then
		return
	end 
	-- 判断VIP等级
	local nVip = Get_UserVip()
	local nNpcId=0
	if nVip>=6 then 
		nNpcId=tJanRuneImproveMon_Data["Store"]["VIP"]
	else
		nNpcId=tJanRuneImproveMon_Data["Store"]["Normal"]
	end 
	--寻路至npc处
	NpcPosition_PathFind(nNpcId)
end

--了解详情
function JanRuneImproveMon_LinkToHall()
--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["JanRuneImproveMon"]["ActivityTime"]) then
		return
	end 
	local sWebPage =tJanRuneImproveMon_Data["Web"]
	User_SendWebPage(sWebPage)
end

--玩家类型判断
function JanRuneImproveMon_PlayerJudge()
--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["JanRuneImproveMon"]["ActivityTime"]) then
		return
	end 
	-- 判断VIP等级
	local nVip = Get_UserVip()
	local nNpcId=0
	local nNowNpcId=0
	if nVip>=6 then 
		nNpcId=tJanRuneImproveMon_Data["Store"]["VIP"]
		nNowNpcId =Get_NpcId()
		tNpcGossip[nNowNpcId]["OptionFunc3"]="JanRuneImproveMon_OpenShop</N>" .. nNpcId .. "</N>" .. nNowNpcId
		LinkNpcGossipFunc_New(nNowNpcId, "1-3")
	else
		nNpcId=tJanRuneImproveMon_Data["Store"]["Normal"]
		nNowNpcId =Get_NpcId()
		tNpcGossip[nNowNpcId]["OptionFunc3"]="JanRuneImproveMon_OpenShop</N>" .. nNpcId .. "</N>" .. nNowNpcId
		LinkNpcGossipFunc_New(nNowNpcId, "1-3")
	end 
end 

function JanRuneImproveMon_OpenShop(nNpcId,nNowNpcId)
--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["JanRuneImproveMon"]["ActivityTime"]) then
		return
	end 
	-- 判断VIP等级
	local nVip = Get_UserVip()
	if nVip<6 then 
		if nNpcId~=nNowNpcId then 
			Sys_MsgBox(tJanRuneImproveMon_Text["SystemTips"]["NotVip"])
			return 
		end 
	end
	User_OpenDialog(0,nNpcId)
end 
----------------------------------NPC部分---------------------------------------------
tNpcFace[6416] = 21

tNpcGossip[23604] = tNpcGossip[23604] or DefaultNpc:new{}
tNpcGossip[23604]["OptionHidden"] = 1
tNpcGossip[23604]["DialogueText"] =tJanRuneImproveMon_Text[23604]

-- 活动前
tNpcGossip[23604]["Text1-1"] = {111,112,113,114,117,118,119,1110,1112,1113}
tNpcGossip[23604]["tOption1-1"] = {1}
tNpcGossip[23604]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["JanRuneImproveMon"]["ActivityTime"])
end
tNpcGossip[23604]["tOption1-1"] = {1}
-- 活动后
tNpcGossip[23604]["Text1-2"] = {121}
tNpcGossip[23604]["tOption1-2"] = {2}
tNpcGossip[23604]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["JanRuneImproveMon"]["ActivityTime"])
end
tNpcGossip[23604]["tOption1-2"] = {2}
-- 活动中
tNpcGossip[23604]["Text1-3"] = {131,132,133,134,137,138,139,1310,1312,1313}
tNpcGossip[23604]["ChkFunc1-3"] = function()
	return Sys_ChkFullTime(tActivityTime["JanRuneImproveMon"]["ActivityTime"]) 
end 
tNpcGossip[23604]["tOption1-3"] = {3,4,5}
--打开商店
tNpcGossip[23604]["OptionFunc3"]="JanRuneImproveMon_OpenStore"
--打开链接
tNpcGossip[23604]["OptionFunc4"]="JanRuneImproveMon_LinkToHall"

--促销大使(普通)
tNpcFace[6417] = 31

tNpcGossip[23605] = tNpcGossip[23605] or DefaultNpc:new{}
tNpcGossip[23605]["OptionHidden"] = 1
tNpcGossip[23605]["DialogueText"] =tJanRuneImproveMon_Text[23605]

-- 活动前
tNpcGossip[23605]["Text1-1"] = {111,112}
tNpcGossip[23605]["tOption1-1"] = {1}
tNpcGossip[23605]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["JanRuneImproveMon"]["ActivityTime"])
end
tNpcGossip[23605]["tOption1-1"] = {1}
-- 活动后
tNpcGossip[23605]["Text1-2"] = {121}
tNpcGossip[23605]["tOption1-2"] = {2}
tNpcGossip[23605]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["JanRuneImproveMon"]["ActivityTime"])
end
tNpcGossip[23605]["tOption1-2"] = {2}

-- 活动中
tNpcGossip[23605]["Text1-3"] = {131}
tNpcGossip[23605]["ChkFunc1-3"] = function()
	return Sys_ChkFullTime(tActivityTime["JanRuneImproveMon"]["ActivityTime"]) 
end 
tNpcGossip[23605]["tOption1-3"] = {3,4}

--促销大使（VIP）
tNpcFace[6423] = 31

tNpcGossip[23608] = tNpcGossip[23608] or DefaultNpc:new{}
tNpcGossip[23608]["OptionHidden"] = 1
tNpcGossip[23608]["DialogueText"] =tJanRuneImproveMon_Text[23608]

-- 活动前
tNpcGossip[23608]["Text1-1"] = {111,112}
tNpcGossip[23608]["tOption1-1"] = {1}
tNpcGossip[23608]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["JanRuneImproveMon"]["ActivityTime"])
end
tNpcGossip[23608]["tOption1-1"] = {1}
-- 活动后
tNpcGossip[23608]["Text1-2"] = {121}
tNpcGossip[23608]["tOption1-2"] = {2}
tNpcGossip[23608]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["JanRuneImproveMon"]["ActivityTime"])
end
tNpcGossip[23608]["tOption1-2"] = {2}

-- 活动中
tNpcGossip[23608]["Text1-3"] = {131}
tNpcGossip[23608]["ChkFunc1-3"] = function()
	return Sys_ChkFullTime(tActivityTime["JanRuneImproveMon"]["ActivityTime"]) 
end 
tNpcGossip[23608]["tOption1-3"] = {3,4}

---------------------------------物品部分---------------------------------------------
tItem[3311875] = tItem[3311875] or {}
tItem[3311875]["Function"] = function(nItemId,sItemName)
	JanRuneImproveMon_OpenPack(nItemId)
end
tItem[3311876] = tItem[3311875]
tItem[3311877] = tItem[3311875]
tItem[3311878] = tItem[3311875]
tItem[3311879] = tItem[3311875]
tItem[3311880] = tItem[3311875]
tItem[3311881] = tItem[3311875]
tItem[3311882] = tItem[3311875]
tItem[3311883] = tItem[3311875]
tItem[3311884] = tItem[3311875]
tItem[3311885] = tItem[3311875]
tItem[3311886] = tItem[3311875]
tItem[3311887] = tItem[3311875]
tItem[3311888] = tItem[3311875]
tItem[3311889] = tItem[3311875]
tItem[3311890] = tItem[3311875]
tItem[3311891] = tItem[3311875]
tItem[3311892] = tItem[3311875]
tItem[3311893] = tItem[3311875]
tItem[3311895] = tItem[3311875]
tItem[3311907] = tItem[3311875]
 tItem[3311908] = tItem[3311875]
 tItem[3311909] = tItem[3311875]
 tItem[3311910] = tItem[3311875]
 tItem[3311911] = tItem[3311875]
 
tItem[3322039] = tItem[3311875]
tItem[3322040] = tItem[3311875]
--头像
tItemFace[3311899]=1102
tItemFace[3311900]=1098
tItemFace[3311901] = 1086
tItemFace[3311902]=1102
tItemFace[3311903]=1098
tItemFace[3311904]=1102
tItemFace[3311905]=1098
tItemFace[3311906] = 1086

tItemFace[3314036]=1102
tItemFace[3314037]=1098
tItemFace[3314297]=1102
tItemFace[3314298]=1098

--红色神纹可选包
tItem[3311899] = CommonFunc_Copy(tItem[3306560])
tItem[3311899]["OptionFunc2"]="RunVersionUpdate_RedConfirm</N>3311899</S>Option2</N>4010001"
tItem[3311899]["OptionFunc3"]="RunVersionUpdate_RedConfirm</N>3311899</S>Option3</N>4010101"
tItem[3311899]["OptionFunc4"]="RunVersionUpdate_RedConfirm</N>3311899</S>Option4</N>4010201"
tItem[3311899]["OptionFunc5"]="RunVersionUpdate_RedConfirm</N>3311899</S>Option5</N>4010301"
tItem[3311899]["OptionFunc6"]="RunVersionUpdate_RedConfirm</N>3311899</S>Option6</N>4010401"
tItem[3311899]["OptionFunc7"]="RunVersionUpdate_RedConfirm</N>3311899</S>Option7</N>4010501"
tItem[3311899]["OptionFunc8"]="RunVersionUpdate_RedConfirm</N>3311899</S>Option8</N>4010601"
tItem[3311899]["OptionFunc9"]="RunVersionUpdate_RedConfirm</N>3311899</S>Option9</N>4010701"
tItem[3311899]["OptionFunc10"]="RunVersionUpdate_RedConfirm</N>3311899</S>Option10</N>4010801"
tItem[3311899]["OptionFunc11"]="RunVersionUpdate_RedConfirm</N>3311899</S>Option11</N>4010901"
tItem[3311899]["OptionFunc14"]="RunVersionUpdate_RedConfirm</N>3311899</S>Option14</N>4011501"

--红色神纹可选包
tItem[3314036] = CommonFunc_Copy(tItem[3306560])
tItem[3314036]["OptionFunc2"]="RunVersionUpdate_RedConfirm</N>3314036</S>Option2</N>4010001"
tItem[3314036]["OptionFunc3"]="RunVersionUpdate_RedConfirm</N>3314036</S>Option3</N>4010101"
tItem[3314036]["OptionFunc4"]="RunVersionUpdate_RedConfirm</N>3314036</S>Option4</N>4010201"
tItem[3314036]["OptionFunc5"]="RunVersionUpdate_RedConfirm</N>3314036</S>Option5</N>4010301"
tItem[3314036]["OptionFunc6"]="RunVersionUpdate_RedConfirm</N>3314036</S>Option6</N>4010401"
tItem[3314036]["OptionFunc7"]="RunVersionUpdate_RedConfirm</N>3314036</S>Option7</N>4010501"
tItem[3314036]["OptionFunc8"]="RunVersionUpdate_RedConfirm</N>3314036</S>Option8</N>4010601"
tItem[3314036]["OptionFunc9"]="RunVersionUpdate_RedConfirm</N>3314036</S>Option9</N>4010701"
tItem[3314036]["OptionFunc10"]="RunVersionUpdate_RedConfirm</N>3314036</S>Option10</N>4010801"
tItem[3314036]["OptionFunc11"]="RunVersionUpdate_RedConfirm</N>3314036</S>Option11</N>4010901"
tItem[3314036]["OptionFunc14"]="RunVersionUpdate_RedConfirm</N>3314036</S>Option14</N>4011501"

tItem[3314297] = CommonFunc_Copy(tItem[3306560])
tItem[3314297]["OptionFunc2"]="RunVersionUpdate_RedConfirm</N>3314297</S>Option2</N>4010001"
tItem[3314297]["OptionFunc3"]="RunVersionUpdate_RedConfirm</N>3314297</S>Option3</N>4010101"
tItem[3314297]["OptionFunc4"]="RunVersionUpdate_RedConfirm</N>3314297</S>Option4</N>4010201"
tItem[3314297]["OptionFunc5"]="RunVersionUpdate_RedConfirm</N>3314297</S>Option5</N>4010301"
tItem[3314297]["OptionFunc6"]="RunVersionUpdate_RedConfirm</N>3314297</S>Option6</N>4010401"
tItem[3314297]["OptionFunc7"]="RunVersionUpdate_RedConfirm</N>3314297</S>Option7</N>4010501"
tItem[3314297]["OptionFunc8"]="RunVersionUpdate_RedConfirm</N>3314297</S>Option8</N>4010601"
tItem[3314297]["OptionFunc9"]="RunVersionUpdate_RedConfirm</N>3314297</S>Option9</N>4010701"
tItem[3314297]["OptionFunc10"]="RunVersionUpdate_RedConfirm</N>3314297</S>Option10</N>4010801"
tItem[3314297]["OptionFunc11"]="RunVersionUpdate_RedConfirm</N>3314297</S>Option11</N>4010901"
tItem[3314297]["OptionFunc14"]="RunVersionUpdate_RedConfirm</N>3314297</S>Option14</N>4011501"

--蓝色神纹可选包
tItem[3311900] = CommonFunc_Copy(tItem[3306561])
tItem[3311900]["OptionFunc1"]="RunVersionUpdate_BlueConfirm</N>3311900</S>Option1</N>4020101"
tItem[3311900]["OptionFunc2"]="RunVersionUpdate_BlueConfirm</N>3311900</S>Option2</N>4020201"
tItem[3311900]["OptionFunc3"]="RunVersionUpdate_BlueConfirm</N>3311900</S>Option3</N>4020301"
tItem[3311900]["OptionFunc4"]="RunVersionUpdate_BlueConfirm</N>3311900</S>Option4</N>4020401"
tItem[3311900]["OptionFunc5"]="RunVersionUpdate_BlueConfirm</N>3311900</S>Option5</N>4020501"
tItem[3311900]["OptionFunc6"]="RunVersionUpdate_BlueConfirm</N>3311900</S>Option6</N>4020601"
tItem[3311900]["OptionFunc7"]="RunVersionUpdate_BlueConfirm</N>3311900</S>Option7</N>4020701"
tItem[3311900]["OptionFunc8"]="RunVersionUpdate_BlueConfirm</N>3311900</S>Option8</N>4020801"
tItem[3311900]["OptionFunc9"]="RunVersionUpdate_BlueConfirm</N>3311900</S>Option9</N>4020901"
tItem[3311900]["OptionFunc10"]="RunVersionUpdate_BlueConfirm</N>3311900</S>Option10</N>4021001"
tItem[3311900]["OptionFunc11"]="RunVersionUpdate_BlueConfirm</N>3311900</S>Option11</N>4022201"

--蓝色神纹可选包
tItem[3314037] = CommonFunc_Copy(tItem[3306561])
tItem[3314037]["OptionFunc1"]="RunVersionUpdate_BlueConfirm</N>3314037</S>Option1</N>4020101"
tItem[3314037]["OptionFunc2"]="RunVersionUpdate_BlueConfirm</N>3314037</S>Option2</N>4020201"
tItem[3314037]["OptionFunc3"]="RunVersionUpdate_BlueConfirm</N>3314037</S>Option3</N>4020301"
tItem[3314037]["OptionFunc4"]="RunVersionUpdate_BlueConfirm</N>3314037</S>Option4</N>4020401"
tItem[3314037]["OptionFunc5"]="RunVersionUpdate_BlueConfirm</N>3314037</S>Option5</N>4020501"
tItem[3314037]["OptionFunc6"]="RunVersionUpdate_BlueConfirm</N>3314037</S>Option6</N>4020601"
tItem[3314037]["OptionFunc7"]="RunVersionUpdate_BlueConfirm</N>3314037</S>Option7</N>4020701"
tItem[3314037]["OptionFunc8"]="RunVersionUpdate_BlueConfirm</N>3314037</S>Option8</N>4020801"
tItem[3314037]["OptionFunc9"]="RunVersionUpdate_BlueConfirm</N>3314037</S>Option9</N>4020901"
tItem[3314037]["OptionFunc10"]="RunVersionUpdate_BlueConfirm</N>3314037</S>Option10</N>4021001"
tItem[3314037]["OptionFunc11"]="RunVersionUpdate_BlueConfirm</N>3314037</S>Option11</N>4022201"

tItem[3314298] = CommonFunc_Copy(tItem[3306561])
tItem[3314298]["OptionFunc1"]="RunVersionUpdate_BlueConfirm</N>3314298</S>Option1</N>4020101"
tItem[3314298]["OptionFunc2"]="RunVersionUpdate_BlueConfirm</N>3314298</S>Option2</N>4020201"
tItem[3314298]["OptionFunc3"]="RunVersionUpdate_BlueConfirm</N>3314298</S>Option3</N>4020301"
tItem[3314298]["OptionFunc4"]="RunVersionUpdate_BlueConfirm</N>3314298</S>Option4</N>4020401"
tItem[3314298]["OptionFunc5"]="RunVersionUpdate_BlueConfirm</N>3314298</S>Option5</N>4020501"
tItem[3314298]["OptionFunc6"]="RunVersionUpdate_BlueConfirm</N>3314298</S>Option6</N>4020601"
tItem[3314298]["OptionFunc7"]="RunVersionUpdate_BlueConfirm</N>3314298</S>Option7</N>4020701"
tItem[3314298]["OptionFunc8"]="RunVersionUpdate_BlueConfirm</N>3314298</S>Option8</N>4020801"
tItem[3314298]["OptionFunc9"]="RunVersionUpdate_BlueConfirm</N>3314298</S>Option9</N>4020901"
tItem[3314298]["OptionFunc10"]="RunVersionUpdate_BlueConfirm</N>3314298</S>Option10</N>4021001"
tItem[3314298]["OptionFunc11"]="RunVersionUpdate_BlueConfirm</N>3314298</S>Option11</N>4022201"

tItem[3311901] = CommonFunc_Copy(tItem[3306365])
tItem[3311901]["OptionFunc112"]="FirstWorldBudokai_ChooseConfirm</N>3311901</N>2"
tItem[3311901]["OptionFunc113"]="FirstWorldBudokai_ChooseConfirm</N>3311901</N>3"
tItem[3311901]["OptionFunc114"]="FirstWorldBudokai_ChooseConfirm</N>3311901</N>4"
tItem[3311901]["OptionFunc115"]="FirstWorldBudokai_ChooseConfirm</N>3311901</N>5"
tItem[3311901]["OptionFunc116"]="FirstWorldBudokai_ChooseConfirm</N>3311901</N>6"
tItem[3311901]["OptionFunc117"]="FirstWorldBudokai_ChooseConfirm</N>3311901</N>7"
tItem[3311901]["OptionFunc118"]="FirstWorldBudokai_ChooseConfirm</N>3311901</N>8"
tItem[3311901]["OptionFunc119"]="FirstWorldBudokai_ChooseConfirm</N>3311901</N>9"
tItem[3311901]["OptionFunc1110"]="FirstWorldBudokai_ChooseConfirm</N>3311901</N>10"
tItem[3311901]["OptionFunc1111"]="FirstWorldBudokai_ChooseConfirm</N>3311901</N>11"
tItem[3311901]["OptionFunc1112"]="FirstWorldBudokai_ChooseConfirm</N>3311901</N>12"
tItem[3311901]["OptionFunc1113"]="FirstWorldBudokai_ChooseConfirm</N>3311901</N>13"
tItem[3311901]["OptionFunc1114"]="FirstWorldBudokai_ChooseConfirm</N>3311901</N>14"

tItem[3311902] = CommonFunc_Copy(tItem[3306560])
tItem[3311902]["OptionFunc2"]="RunVersionUpdate_RedConfirm</N>3311902</S>Option2</N>4010001"
tItem[3311902]["OptionFunc3"]="RunVersionUpdate_RedConfirm</N>3311902</S>Option3</N>4010101"
tItem[3311902]["OptionFunc4"]="RunVersionUpdate_RedConfirm</N>3311902</S>Option4</N>4010201"
tItem[3311902]["OptionFunc5"]="RunVersionUpdate_RedConfirm</N>3311902</S>Option5</N>4010301"
tItem[3311902]["OptionFunc6"]="RunVersionUpdate_RedConfirm</N>3311902</S>Option6</N>4010401"
tItem[3311902]["OptionFunc7"]="RunVersionUpdate_RedConfirm</N>3311902</S>Option7</N>4010501"
tItem[3311902]["OptionFunc8"]="RunVersionUpdate_RedConfirm</N>3311902</S>Option8</N>4010601"
tItem[3311902]["OptionFunc9"]="RunVersionUpdate_RedConfirm</N>3311902</S>Option9</N>4010701"
tItem[3311902]["OptionFunc10"]="RunVersionUpdate_RedConfirm</N>3311902</S>Option10</N>4010801"
tItem[3311902]["OptionFunc11"]="RunVersionUpdate_RedConfirm</N>3311902</S>Option11</N>4010901"
tItem[3311902]["OptionFunc14"]="RunVersionUpdate_RedConfirm</N>3311902</S>Option14</N>4011501"

tItem[3311903] = CommonFunc_Copy(tItem[3306561])
tItem[3311903]["OptionFunc1"]="RunVersionUpdate_BlueConfirm</N>3311903</S>Option1</N>4020101"
tItem[3311903]["OptionFunc2"]="RunVersionUpdate_BlueConfirm</N>3311903</S>Option2</N>4020201"
tItem[3311903]["OptionFunc3"]="RunVersionUpdate_BlueConfirm</N>3311903</S>Option3</N>4020301"
tItem[3311903]["OptionFunc4"]="RunVersionUpdate_BlueConfirm</N>3311903</S>Option4</N>4020401"
tItem[3311903]["OptionFunc5"]="RunVersionUpdate_BlueConfirm</N>3311903</S>Option5</N>4020501"
tItem[3311903]["OptionFunc6"]="RunVersionUpdate_BlueConfirm</N>3311903</S>Option6</N>4020601"
tItem[3311903]["OptionFunc7"]="RunVersionUpdate_BlueConfirm</N>3311903</S>Option7</N>4020701"
tItem[3311903]["OptionFunc8"]="RunVersionUpdate_BlueConfirm</N>3311903</S>Option8</N>4020801"
tItem[3311903]["OptionFunc9"]="RunVersionUpdate_BlueConfirm</N>3311903</S>Option9</N>4020901"
tItem[3311903]["OptionFunc10"]="RunVersionUpdate_BlueConfirm</N>3311903</S>Option10</N>4021001"
tItem[3311903]["OptionFunc11"]="RunVersionUpdate_BlueConfirm</N>3311903</S>Option11</N>4022201"

tItem[3311904] = CommonFunc_Copy(tItem[3306562])
tItem[3311904]["OptionFunc2"]="RunVersionUpdate_RedConfirm</N>3311904</S>Option2</N>4010001"
tItem[3311904]["OptionFunc3"]="RunVersionUpdate_RedConfirm</N>3311904</S>Option3</N>4010101"
tItem[3311904]["OptionFunc4"]="RunVersionUpdate_RedConfirm</N>3311904</S>Option4</N>4010201"
tItem[3311904]["OptionFunc5"]="RunVersionUpdate_RedConfirm</N>3311904</S>Option5</N>4010301"
tItem[3311904]["OptionFunc6"]="RunVersionUpdate_RedConfirm</N>3311904</S>Option6</N>4010401"
tItem[3311904]["OptionFunc7"]="RunVersionUpdate_RedConfirm</N>3311904</S>Option7</N>4010501"
tItem[3311904]["OptionFunc8"]="RunVersionUpdate_RedConfirm</N>3311904</S>Option8</N>4010601"
tItem[3311904]["OptionFunc9"]="RunVersionUpdate_RedConfirm</N>3311904</S>Option9</N>4010701"
tItem[3311904]["OptionFunc10"]="RunVersionUpdate_RedConfirm</N>3311904</S>Option10</N>4010801"
tItem[3311904]["OptionFunc11"]="RunVersionUpdate_RedConfirm</N>3311904</S>Option11</N>4010901"
tItem[3311904]["OptionFunc14"]="RunVersionUpdate_RedConfirm</N>3311904</S>Option14</N>4011501"


tItem[3311905] = CommonFunc_Copy(tItem[3306563])
tItem[3311905]["OptionFunc1"]="RunVersionUpdate_BlueConfirm</N>3311905</S>Option1</N>4020101"
tItem[3311905]["OptionFunc2"]="RunVersionUpdate_BlueConfirm</N>3311905</S>Option2</N>4020201"
tItem[3311905]["OptionFunc3"]="RunVersionUpdate_BlueConfirm</N>3311905</S>Option3</N>4020301"
tItem[3311905]["OptionFunc4"]="RunVersionUpdate_BlueConfirm</N>3311905</S>Option4</N>4020401"
tItem[3311905]["OptionFunc5"]="RunVersionUpdate_BlueConfirm</N>3311905</S>Option5</N>4020501"
tItem[3311905]["OptionFunc6"]="RunVersionUpdate_BlueConfirm</N>3311905</S>Option6</N>4020601"
tItem[3311905]["OptionFunc7"]="RunVersionUpdate_BlueConfirm</N>3311905</S>Option7</N>4020701"
tItem[3311905]["OptionFunc8"]="RunVersionUpdate_BlueConfirm</N>3311905</S>Option8</N>4020801"
tItem[3311905]["OptionFunc9"]="RunVersionUpdate_BlueConfirm</N>3311905</S>Option9</N>4020901"
tItem[3311905]["OptionFunc10"]="RunVersionUpdate_BlueConfirm</N>3311905</S>Option10</N>4021001"
tItem[3311905]["OptionFunc11"]="RunVersionUpdate_BlueConfirm</N>3311905</S>Option11</N>4022201"



tItem[3311906] = CommonFunc_Copy(tItem[3307212])
tItem[3311906]["OptionFunc112"]="MoneyTreeGift_ChooseConfirm</N>3311906</N>2"
tItem[3311906]["OptionFunc113"]="MoneyTreeGift_ChooseConfirm</N>3311906</N>3"
tItem[3311906]["OptionFunc114"]="MoneyTreeGift_ChooseConfirm</N>3311906</N>4"
tItem[3311906]["OptionFunc115"]="MoneyTreeGift_ChooseConfirm</N>3311906</N>5"
tItem[3311906]["OptionFunc116"]="MoneyTreeGift_ChooseConfirm</N>3311906</N>6"
tItem[3311906]["OptionFunc117"]="MoneyTreeGift_ChooseConfirm</N>3311906</N>7"
tItem[3311906]["OptionFunc118"]="MoneyTreeGift_ChooseConfirm</N>3311906</N>8"
tItem[3311906]["OptionFunc119"]="MoneyTreeGift_ChooseConfirm</N>3311906</N>9"
tItem[3311906]["OptionFunc1110"]="MoneyTreeGift_ChooseConfirm</N>3311906</N>10"
tItem[3311906]["OptionFunc1111"]="MoneyTreeGift_ChooseConfirm</N>3311906</N>11"
tItem[3311906]["OptionFunc1112"]="MoneyTreeGift_ChooseConfirm</N>3311906</N>12"
tItem[3311906]["OptionFunc1113"]="MoneyTreeGift_ChooseConfirm</N>3311906</N>13"
tItem[3311906]["OptionFunc1114"]="MoneyTreeGift_ChooseConfirm</N>3311906</N>14"



------------------------------------------------------------------------------
--个人排位赛 赢场触发
tArenicWins["tFunction"] = tArenicWins["tFunction"] or {}
table.insert(tArenicWins["tFunction"],JanRuneImproveMon_PKReward)

