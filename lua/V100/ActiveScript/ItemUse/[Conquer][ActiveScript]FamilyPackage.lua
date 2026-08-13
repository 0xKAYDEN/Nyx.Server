-----------------------------------------------------------------------------------------------------
--Name:		180625[简体征服][功能脚本]调整版本制作 - 1、数据调整(家族占领奖励礼包)
--Purpose:		家族占领奖励礼包
--Creator: 	严振飞
--Created:		2018/06/25
------------------------------------------------------------------------------------------------------
-- 命名前缀
--FamilyPackage_
--LOG  12001099
------------------------------------------------------------------------------------------------------


---------------------------------------------数据部分配置---------------------------------------------
-- LogId
local tFamilyPackage_LogId = 12001099

-- 物品奖励配置
local tFamilyPackage_PagReward = {}
	-- 普通双龙城家族占领礼包
	tFamilyPackage_PagReward[3309814] = {}
	tFamilyPackage_PagReward[3309814]["DeleteItem"]={}
	tFamilyPackage_PagReward[3309814]["DeleteItem"][1]={}
	tFamilyPackage_PagReward[3309814]["DeleteItem"][1]["Id"]=3309814
	tFamilyPackage_PagReward[3309814]["LogId"] = tFamilyPackage_LogId
	tFamilyPackage_PagReward[3309814]["RewardItem"] = {}
	tFamilyPackage_PagReward[3309814]["RewardItem"][1] = {}
	tFamilyPackage_PagReward[3309814]["RewardItem"][1]["Id"] = 3314900 -- 聚神丹*2
	tFamilyPackage_PagReward[3309814]["RewardItem"][1]["Attr"] = "0 2"
	tFamilyPackage_PagReward[3309814]["RewardItem"][1]["NeedEMoney"] = 1 -- 翻倍需要天石
	tFamilyPackage_PagReward[3309814]["RewardItem"][2] = {}
	tFamilyPackage_PagReward[3309814]["RewardItem"][2]["Id"] = 710212 -- 特制仙境船票*2
	tFamilyPackage_PagReward[3309814]["RewardItem"][2]["Attr"] = "0 2"
	tFamilyPackage_PagReward[3309814]["RewardItem"][2]["NeedEMoney"] = 35 -- 翻倍需要天石
	-- 良品双龙城家族占领礼包
	tFamilyPackage_PagReward[3309815] = {}
	tFamilyPackage_PagReward[3309815]["DeleteItem"]={}
	tFamilyPackage_PagReward[3309815]["DeleteItem"][1]={}
	tFamilyPackage_PagReward[3309815]["DeleteItem"][1]["Id"]=3309815
	tFamilyPackage_PagReward[3309815]["LogId"] = tFamilyPackage_LogId
	tFamilyPackage_PagReward[3309815]["RewardItem"] = {}
	tFamilyPackage_PagReward[3309815]["RewardItem"][1] = {}
	tFamilyPackage_PagReward[3309815]["RewardItem"][1]["Id"] = 3314900 -- 聚神丹*2
	tFamilyPackage_PagReward[3309815]["RewardItem"][1]["Attr"] = "0 2"
	tFamilyPackage_PagReward[3309815]["RewardItem"][1]["NeedEMoney"] = 1
	tFamilyPackage_PagReward[3309815]["RewardItem"][2] = {}
	tFamilyPackage_PagReward[3309815]["RewardItem"][2]["Id"] = 710212 -- 特制仙境船票*2
	tFamilyPackage_PagReward[3309815]["RewardItem"][2]["Attr"] = "0 2"
	tFamilyPackage_PagReward[3309815]["RewardItem"][2]["NeedEMoney"] = 35
	tFamilyPackage_PagReward[3309815]["RewardItem"][3] = {}
	tFamilyPackage_PagReward[3309815]["RewardItem"][3]["Id"] = 3309839 -- 时效+3赤炼石神纹精粹可选包*1
	tFamilyPackage_PagReward[3309815]["RewardItem"][3]["Attr"] = "0 1 0 10080 1"
	tFamilyPackage_PagReward[3309815]["RewardItem"][3]["NeedEMoney"] = 30

	-- 上品双龙城家族占领礼包
	tFamilyPackage_PagReward[3309816] = {}
	tFamilyPackage_PagReward[3309816]["DeleteItem"]={}
	tFamilyPackage_PagReward[3309816]["DeleteItem"][1]={}
	tFamilyPackage_PagReward[3309816]["DeleteItem"][1]["Id"]=3309816
	tFamilyPackage_PagReward[3309816]["LogId"] = tFamilyPackage_LogId
	tFamilyPackage_PagReward[3309816]["RewardItem"] = {}
	tFamilyPackage_PagReward[3309816]["RewardItem"][1] = {}
	tFamilyPackage_PagReward[3309816]["RewardItem"][1]["Id"] = 3314900 -- 聚神丹*4
	tFamilyPackage_PagReward[3309816]["RewardItem"][1]["Attr"] = "0 4"
	tFamilyPackage_PagReward[3309816]["RewardItem"][1]["NeedEMoney"] = 2
	tFamilyPackage_PagReward[3309816]["RewardItem"][2] = {}
	tFamilyPackage_PagReward[3309816]["RewardItem"][2]["Id"] = 710212 -- 特制仙境船票*2
	tFamilyPackage_PagReward[3309816]["RewardItem"][2]["Attr"] = "0 2"
	tFamilyPackage_PagReward[3309816]["RewardItem"][2]["NeedEMoney"] = 35
	tFamilyPackage_PagReward[3309816]["RewardItem"][3] = {}
	tFamilyPackage_PagReward[3309816]["RewardItem"][3]["Id"] = 3306909 -- 时效+2赤炼石神纹精粹可选包*4
	tFamilyPackage_PagReward[3309816]["RewardItem"][3]["Attr"] = "0 4 0 10080 1"
	tFamilyPackage_PagReward[3309816]["RewardItem"][3]["NeedEMoney"] = 32

	-- 精品双龙城家族占领礼包
	tFamilyPackage_PagReward[3309817] = {}
	tFamilyPackage_PagReward[3309817]["DeleteItem"]={}
	tFamilyPackage_PagReward[3309817]["DeleteItem"][1]={}
	tFamilyPackage_PagReward[3309817]["DeleteItem"][1]["Id"]=3309817
	tFamilyPackage_PagReward[3309817]["LogId"] = tFamilyPackage_LogId
	tFamilyPackage_PagReward[3309817]["RewardItem"] = {}
	tFamilyPackage_PagReward[3309817]["RewardItem"][1] = {}
	tFamilyPackage_PagReward[3309817]["RewardItem"][1]["Id"] = 3314900 -- 聚神丹*6
	tFamilyPackage_PagReward[3309817]["RewardItem"][1]["Attr"] = "0 6"
	tFamilyPackage_PagReward[3309817]["RewardItem"][1]["NeedEMoney"] = 3
	tFamilyPackage_PagReward[3309817]["RewardItem"][2] = {}
	tFamilyPackage_PagReward[3309817]["RewardItem"][2]["Id"] = 710212 -- 特制仙境船票*4
	tFamilyPackage_PagReward[3309817]["RewardItem"][2]["Attr"] = "0 4"
	tFamilyPackage_PagReward[3309817]["RewardItem"][2]["NeedEMoney"] = 70
	tFamilyPackage_PagReward[3309817]["RewardItem"][3] = {}
	tFamilyPackage_PagReward[3309817]["RewardItem"][3]["Id"] = 3309839 -- 时效+3赤炼石神纹精粹可选包*2
	tFamilyPackage_PagReward[3309817]["RewardItem"][3]["Attr"] = "0 2 0 10080 1"
	tFamilyPackage_PagReward[3309817]["RewardItem"][3]["NeedEMoney"] = 60
	-- 极品双龙城家族占领礼包
	tFamilyPackage_PagReward[3309818] = {}
	tFamilyPackage_PagReward[3309818]["DeleteItem"]={}
	tFamilyPackage_PagReward[3309818]["DeleteItem"][1]={}
	tFamilyPackage_PagReward[3309818]["DeleteItem"][1]["Id"]=3309818
	tFamilyPackage_PagReward[3309818]["LogId"] = tFamilyPackage_LogId
	tFamilyPackage_PagReward[3309818]["RewardItem"] = {}
	tFamilyPackage_PagReward[3309818]["RewardItem"][1] = {}
	tFamilyPackage_PagReward[3309818]["RewardItem"][1]["Id"] = 3314900 -- 聚神丹*12
	tFamilyPackage_PagReward[3309818]["RewardItem"][1]["Attr"] = "0 12"
	tFamilyPackage_PagReward[3309818]["RewardItem"][1]["NeedEMoney"] = 8
	tFamilyPackage_PagReward[3309818]["RewardItem"][2] = {}
	tFamilyPackage_PagReward[3309818]["RewardItem"][2]["Id"] = 710212 -- 特制仙境船票*6
	tFamilyPackage_PagReward[3309818]["RewardItem"][2]["Attr"] = "0 6"
	tFamilyPackage_PagReward[3309818]["RewardItem"][2]["NeedEMoney"] = 105
	tFamilyPackage_PagReward[3309818]["RewardItem"][3] = {}
	tFamilyPackage_PagReward[3309818]["RewardItem"][3]["Id"] = 3309839 -- 时效+3赤炼石神纹精粹可选包*4
	tFamilyPackage_PagReward[3309818]["RewardItem"][3]["Attr"] = "0 4 0 10080 1"
	tFamilyPackage_PagReward[3309818]["RewardItem"][3]["NeedEMoney"] = 120
	-- 普通云门关家族占领礼包
	tFamilyPackage_PagReward[3309819] = {}
	tFamilyPackage_PagReward[3309819]["DeleteItem"]={}
	tFamilyPackage_PagReward[3309819]["DeleteItem"][1]={}
	tFamilyPackage_PagReward[3309819]["DeleteItem"][1]["Id"]=3309819
	tFamilyPackage_PagReward[3309819]["LogId"] = tFamilyPackage_LogId
	tFamilyPackage_PagReward[3309819]["RewardItem"] = {}
	tFamilyPackage_PagReward[3309819]["RewardItem"][1] = {}
	tFamilyPackage_PagReward[3309819]["RewardItem"][1]["Id"] = 710212 -- 特制仙境船票*2
	tFamilyPackage_PagReward[3309819]["RewardItem"][1]["Attr"] = "0 2"
	tFamilyPackage_PagReward[3309819]["RewardItem"][1]["NeedEMoney"] = 35
	-- 良品云门关家族占领礼包
	tFamilyPackage_PagReward[3309820] = {}
	tFamilyPackage_PagReward[3309820]["DeleteItem"]={}
	tFamilyPackage_PagReward[3309820]["DeleteItem"][1]={}
	tFamilyPackage_PagReward[3309820]["DeleteItem"][1]["Id"]=3309820
	tFamilyPackage_PagReward[3309820]["LogId"] = tFamilyPackage_LogId
	tFamilyPackage_PagReward[3309820]["RewardItem"] = {}
	tFamilyPackage_PagReward[3309820]["RewardItem"][1] = {}
	tFamilyPackage_PagReward[3309820]["RewardItem"][1]["Id"] = 3314900 -- 聚神丹*2
	tFamilyPackage_PagReward[3309820]["RewardItem"][1]["Attr"] = "0 2"
	tFamilyPackage_PagReward[3309820]["RewardItem"][1]["NeedEMoney"] = 1
	tFamilyPackage_PagReward[3309820]["RewardItem"][2] = {}
	tFamilyPackage_PagReward[3309820]["RewardItem"][2]["Id"] = 710212 -- 特制仙境船票*2
	tFamilyPackage_PagReward[3309820]["RewardItem"][2]["Attr"] = "0 2"
	tFamilyPackage_PagReward[3309820]["RewardItem"][2]["NeedEMoney"] = 35
	tFamilyPackage_PagReward[3309820]["RewardItem"][3] = {}
	tFamilyPackage_PagReward[3309820]["RewardItem"][3]["Id"] = 3306909 -- 时效+2赤炼石神纹精粹可选包*1
	tFamilyPackage_PagReward[3309820]["RewardItem"][3]["Attr"] = "0 1 0 10080 1"
	tFamilyPackage_PagReward[3309820]["RewardItem"][3]["NeedEMoney"] = 8
	-- 上品云门关家族占领礼包
	tFamilyPackage_PagReward[3309821] = {}
	tFamilyPackage_PagReward[3309821]["DeleteItem"]={}
	tFamilyPackage_PagReward[3309821]["DeleteItem"][1]={}
	tFamilyPackage_PagReward[3309821]["DeleteItem"][1]["Id"]=3309821
	tFamilyPackage_PagReward[3309821]["LogId"] = tFamilyPackage_LogId
	tFamilyPackage_PagReward[3309821]["RewardItem"] = {}
	tFamilyPackage_PagReward[3309821]["RewardItem"][1] = {}
	tFamilyPackage_PagReward[3309821]["RewardItem"][1]["Id"] = 3314900 -- 聚神丹*4
	tFamilyPackage_PagReward[3309821]["RewardItem"][1]["Attr"] = "0 4"
	tFamilyPackage_PagReward[3309821]["RewardItem"][1]["NeedEMoney"] = 2
	tFamilyPackage_PagReward[3309821]["RewardItem"][2] = {}
	tFamilyPackage_PagReward[3309821]["RewardItem"][2]["Id"] = 710212 -- 特制仙境船票*2
	tFamilyPackage_PagReward[3309821]["RewardItem"][2]["Attr"] = "0 2"
	tFamilyPackage_PagReward[3309821]["RewardItem"][2]["NeedEMoney"] = 35
	tFamilyPackage_PagReward[3309821]["RewardItem"][3] = {}
	tFamilyPackage_PagReward[3309821]["RewardItem"][3]["Id"] = 3306909 -- 时效+2赤炼石神纹精粹可选包*2
	tFamilyPackage_PagReward[3309821]["RewardItem"][3]["Attr"] = "0 2 0 10080 1"
	tFamilyPackage_PagReward[3309821]["RewardItem"][3]["NeedEMoney"] = 16
	-- 精品云门关家族占领礼包
	tFamilyPackage_PagReward[3309822] = {}
	tFamilyPackage_PagReward[3309822]["DeleteItem"]={}
	tFamilyPackage_PagReward[3309822]["DeleteItem"][1]={}
	tFamilyPackage_PagReward[3309822]["DeleteItem"][1]["Id"]=3309822
	tFamilyPackage_PagReward[3309822]["LogId"] = tFamilyPackage_LogId
	tFamilyPackage_PagReward[3309822]["RewardItem"] = {}
	tFamilyPackage_PagReward[3309822]["RewardItem"][1] = {}
	tFamilyPackage_PagReward[3309822]["RewardItem"][1]["Id"] = 3314900 -- 聚神丹*6
	tFamilyPackage_PagReward[3309822]["RewardItem"][1]["Attr"] = "0 6"
	tFamilyPackage_PagReward[3309822]["RewardItem"][1]["NeedEMoney"] = 3
	tFamilyPackage_PagReward[3309822]["RewardItem"][2] = {}
	tFamilyPackage_PagReward[3309822]["RewardItem"][2]["Id"] = 710212 -- 特制仙境船票*2
	tFamilyPackage_PagReward[3309822]["RewardItem"][2]["Attr"] = "0 2"
	tFamilyPackage_PagReward[3309822]["RewardItem"][2]["NeedEMoney"] = 35
	tFamilyPackage_PagReward[3309822]["RewardItem"][3] = {}
	tFamilyPackage_PagReward[3309822]["RewardItem"][3]["Id"] = 3306909 -- 时效+2赤炼石神纹精粹可选包*4
	tFamilyPackage_PagReward[3309822]["RewardItem"][3]["Attr"] = "0 4 0 10080 1"
	tFamilyPackage_PagReward[3309822]["RewardItem"][3]["NeedEMoney"] = 32
	-- 极品云门关家族占领礼包
	tFamilyPackage_PagReward[3309823] = {}
	tFamilyPackage_PagReward[3309823]["DeleteItem"]={}
	tFamilyPackage_PagReward[3309823]["DeleteItem"][1]={}
	tFamilyPackage_PagReward[3309823]["DeleteItem"][1]["Id"]=3309823
	tFamilyPackage_PagReward[3309823]["LogId"] = tFamilyPackage_LogId
	tFamilyPackage_PagReward[3309823]["RewardItem"] = {}
	tFamilyPackage_PagReward[3309823]["RewardItem"][1] = {}
	tFamilyPackage_PagReward[3309823]["RewardItem"][1]["Id"] = 3314900 -- 聚神丹*10
	tFamilyPackage_PagReward[3309823]["RewardItem"][1]["Attr"] = "0 10"
	tFamilyPackage_PagReward[3309823]["RewardItem"][1]["NeedEMoney"] = 6
	tFamilyPackage_PagReward[3309823]["RewardItem"][2] = {}
	tFamilyPackage_PagReward[3309823]["RewardItem"][2]["Id"] = 710212 -- 特制仙境船票*4
	tFamilyPackage_PagReward[3309823]["RewardItem"][2]["Attr"] = "0 4"
	tFamilyPackage_PagReward[3309823]["RewardItem"][2]["NeedEMoney"] = 70
	tFamilyPackage_PagReward[3309823]["RewardItem"][3] = {}
	tFamilyPackage_PagReward[3309823]["RewardItem"][3]["Id"] = 3309839 -- 时效+3赤炼石神纹精粹可选包*3
	tFamilyPackage_PagReward[3309823]["RewardItem"][3]["Attr"] = "0 3 0 10080 1"
	tFamilyPackage_PagReward[3309823]["RewardItem"][3]["NeedEMoney"] = 90
	-- 普通白鹭城家族占领礼包
	tFamilyPackage_PagReward[3309824] = {}
	tFamilyPackage_PagReward[3309824]["DeleteItem"]={}
	tFamilyPackage_PagReward[3309824]["DeleteItem"][1]={}
	tFamilyPackage_PagReward[3309824]["DeleteItem"][1]["Id"]=3309824
	tFamilyPackage_PagReward[3309824]["LogId"] = tFamilyPackage_LogId
	tFamilyPackage_PagReward[3309824]["RewardItem"] = {}
	tFamilyPackage_PagReward[3309824]["RewardItem"][1] = {}
	tFamilyPackage_PagReward[3309824]["RewardItem"][1]["Id"] = 710212 -- 特制仙境船票*2
	tFamilyPackage_PagReward[3309824]["RewardItem"][1]["Attr"] = "0 2"
	tFamilyPackage_PagReward[3309824]["RewardItem"][1]["NeedEMoney"] = 35
	-- 良品白鹭城家族占领礼包
	tFamilyPackage_PagReward[3309825] = {}
	tFamilyPackage_PagReward[3309825]["DeleteItem"]={}
	tFamilyPackage_PagReward[3309825]["DeleteItem"][1]={}
	tFamilyPackage_PagReward[3309825]["DeleteItem"][1]["Id"]=3309825
	tFamilyPackage_PagReward[3309825]["LogId"] = tFamilyPackage_LogId
	tFamilyPackage_PagReward[3309825]["RewardItem"] = {}
	tFamilyPackage_PagReward[3309825]["RewardItem"][1] = {}
	tFamilyPackage_PagReward[3309825]["RewardItem"][1]["Id"] = 3314900 -- 聚神丹*2
	tFamilyPackage_PagReward[3309825]["RewardItem"][1]["Attr"] = "0 2"
	tFamilyPackage_PagReward[3309825]["RewardItem"][1]["NeedEMoney"] = 1
	tFamilyPackage_PagReward[3309825]["RewardItem"][2] = {}
	tFamilyPackage_PagReward[3309825]["RewardItem"][2]["Id"] = 710212 -- 特制仙境船票*2
	tFamilyPackage_PagReward[3309825]["RewardItem"][2]["Attr"] = "0 2"
	tFamilyPackage_PagReward[3309825]["RewardItem"][2]["NeedEMoney"] = 35
	-- 上品白鹭城家族占领礼包
	tFamilyPackage_PagReward[3309826] = {}
	tFamilyPackage_PagReward[3309826]["DeleteItem"]={}
	tFamilyPackage_PagReward[3309826]["DeleteItem"][1]={}
	tFamilyPackage_PagReward[3309826]["DeleteItem"][1]["Id"]=3309826
	tFamilyPackage_PagReward[3309826]["LogId"] = tFamilyPackage_LogId
	tFamilyPackage_PagReward[3309826]["RewardItem"] = {}
	tFamilyPackage_PagReward[3309826]["RewardItem"][1] = {}
	tFamilyPackage_PagReward[3309826]["RewardItem"][1]["Id"] = 3314900 -- 聚神丹*2
	tFamilyPackage_PagReward[3309826]["RewardItem"][1]["Attr"] = "0 2"
	tFamilyPackage_PagReward[3309826]["RewardItem"][1]["NeedEMoney"] = 1
	tFamilyPackage_PagReward[3309826]["RewardItem"][2] = {}
	tFamilyPackage_PagReward[3309826]["RewardItem"][2]["Id"] = 710212 -- 特制仙境船票*2
	tFamilyPackage_PagReward[3309826]["RewardItem"][2]["Attr"] = "0 2"
	tFamilyPackage_PagReward[3309826]["RewardItem"][2]["NeedEMoney"] = 35
	tFamilyPackage_PagReward[3309826]["RewardItem"][3] = {}
	tFamilyPackage_PagReward[3309826]["RewardItem"][3]["Id"] = 3306908 -- 时效+1赤炼石神纹精粹可选包*6
	tFamilyPackage_PagReward[3309826]["RewardItem"][3]["Attr"] = "0 6 0 10080 1"
	tFamilyPackage_PagReward[3309826]["RewardItem"][3]["NeedEMoney"] = 6
	-- 精品白鹭城家族占领礼包
	tFamilyPackage_PagReward[3309827] = {}
	tFamilyPackage_PagReward[3309827]["DeleteItem"]={}
	tFamilyPackage_PagReward[3309827]["DeleteItem"][1]={}
	tFamilyPackage_PagReward[3309827]["DeleteItem"][1]["Id"]=3309827
	tFamilyPackage_PagReward[3309827]["LogId"] = tFamilyPackage_LogId
	tFamilyPackage_PagReward[3309827]["RewardItem"] = {}
	tFamilyPackage_PagReward[3309827]["RewardItem"][1] = {}
	tFamilyPackage_PagReward[3309827]["RewardItem"][1]["Id"] = 3314900 -- 聚神丹*4
	tFamilyPackage_PagReward[3309827]["RewardItem"][1]["Attr"] = "0 4"
	tFamilyPackage_PagReward[3309827]["RewardItem"][1]["NeedEMoney"] = 2
	tFamilyPackage_PagReward[3309827]["RewardItem"][2] = {}
	tFamilyPackage_PagReward[3309827]["RewardItem"][2]["Id"] = 710212 -- 特制仙境船票*2
	tFamilyPackage_PagReward[3309827]["RewardItem"][2]["Attr"] = "0 2"
	tFamilyPackage_PagReward[3309827]["RewardItem"][2]["NeedEMoney"] = 35
	tFamilyPackage_PagReward[3309827]["RewardItem"][3] = {}
	tFamilyPackage_PagReward[3309827]["RewardItem"][3]["Id"] = 3306909 -- 时效+2赤炼石神纹精粹可选包*2
	tFamilyPackage_PagReward[3309827]["RewardItem"][3]["Attr"] = "0 2 0 10080 1"
	tFamilyPackage_PagReward[3309827]["RewardItem"][3]["NeedEMoney"] = 16
	-- 极品白鹭城家族占领礼包
	tFamilyPackage_PagReward[3309828] = {}
	tFamilyPackage_PagReward[3309828]["DeleteItem"]={}
	tFamilyPackage_PagReward[3309828]["DeleteItem"][1]={}
	tFamilyPackage_PagReward[3309828]["DeleteItem"][1]["Id"]=3309828
	tFamilyPackage_PagReward[3309828]["LogId"] = tFamilyPackage_LogId
	tFamilyPackage_PagReward[3309828]["RewardItem"] = {}
	tFamilyPackage_PagReward[3309828]["RewardItem"][1] = {}
	tFamilyPackage_PagReward[3309828]["RewardItem"][1]["Id"] = 3314900 -- 聚神丹*6
	tFamilyPackage_PagReward[3309828]["RewardItem"][1]["Attr"] = "0 6"
	tFamilyPackage_PagReward[3309828]["RewardItem"][1]["NeedEMoney"] = 3
	tFamilyPackage_PagReward[3309828]["RewardItem"][2] = {}
	tFamilyPackage_PagReward[3309828]["RewardItem"][2]["Id"] = 710212 -- 特制仙境船票*4
	tFamilyPackage_PagReward[3309828]["RewardItem"][2]["Attr"] = "0 4"
	tFamilyPackage_PagReward[3309828]["RewardItem"][2]["NeedEMoney"] = 70
	tFamilyPackage_PagReward[3309828]["RewardItem"][3] = {}
	tFamilyPackage_PagReward[3309828]["RewardItem"][3]["Id"] = 3309839 -- 时效+3赤炼石神纹精粹可选包*2
	tFamilyPackage_PagReward[3309828]["RewardItem"][3]["Attr"] = "0 2 0 10080 1"
	tFamilyPackage_PagReward[3309828]["RewardItem"][3]["NeedEMoney"] = 60
	-- 普通黑虎城家族占领礼包
	tFamilyPackage_PagReward[3309829] = {}
	tFamilyPackage_PagReward[3309829]["DeleteItem"]={}
	tFamilyPackage_PagReward[3309829]["DeleteItem"][1]={}
	tFamilyPackage_PagReward[3309829]["DeleteItem"][1]["Id"]=3309829
	tFamilyPackage_PagReward[3309829]["LogId"] = tFamilyPackage_LogId
	tFamilyPackage_PagReward[3309829]["RewardItem"] = {}
	tFamilyPackage_PagReward[3309829]["RewardItem"][1] = {}
	tFamilyPackage_PagReward[3309829]["RewardItem"][1]["Id"] = 710212 -- 特制仙境船票*2
	tFamilyPackage_PagReward[3309829]["RewardItem"][1]["Attr"] = "0 2"
	tFamilyPackage_PagReward[3309829]["RewardItem"][1]["NeedEMoney"] = 35
	-- 良品黑虎城家族占领礼包
	tFamilyPackage_PagReward[3309830] = {}
	tFamilyPackage_PagReward[3309830]["DeleteItem"]={}
	tFamilyPackage_PagReward[3309830]["DeleteItem"][1]={}
	tFamilyPackage_PagReward[3309830]["DeleteItem"][1]["Id"]=3309830
	tFamilyPackage_PagReward[3309830]["LogId"] = tFamilyPackage_LogId
	tFamilyPackage_PagReward[3309830]["RewardItem"] = {}
	tFamilyPackage_PagReward[3309830]["RewardItem"][1] = {}
	tFamilyPackage_PagReward[3309830]["RewardItem"][1]["Id"] = 710212 -- 特制仙境船票*2
	tFamilyPackage_PagReward[3309830]["RewardItem"][1]["Attr"] = "0 2"
	tFamilyPackage_PagReward[3309830]["RewardItem"][1]["NeedEMoney"] = 35
	-- 上品黑虎城家族占领礼包
	tFamilyPackage_PagReward[3309831] = {}
	tFamilyPackage_PagReward[3309831]["DeleteItem"]={}
	tFamilyPackage_PagReward[3309831]["DeleteItem"][1]={}
	tFamilyPackage_PagReward[3309831]["DeleteItem"][1]["Id"]=3309831
	tFamilyPackage_PagReward[3309831]["LogId"] = tFamilyPackage_LogId
	tFamilyPackage_PagReward[3309831]["RewardItem"] = {}
	tFamilyPackage_PagReward[3309831]["RewardItem"][1] = {}
	tFamilyPackage_PagReward[3309831]["RewardItem"][1]["Id"] = 3314900 -- 聚神丹*2
	tFamilyPackage_PagReward[3309831]["RewardItem"][1]["Attr"] = "0 2"
	tFamilyPackage_PagReward[3309831]["RewardItem"][1]["NeedEMoney"] = 1
	tFamilyPackage_PagReward[3309831]["RewardItem"][2] = {}
	tFamilyPackage_PagReward[3309831]["RewardItem"][2]["Id"] = 710212 -- 特制仙境船票*2
	tFamilyPackage_PagReward[3309831]["RewardItem"][2]["Attr"] = "0 2"
	tFamilyPackage_PagReward[3309831]["RewardItem"][2]["NeedEMoney"] = 35
	-- 精品黑虎城家族占领礼包
	tFamilyPackage_PagReward[3309832] = {}
	tFamilyPackage_PagReward[3309832]["DeleteItem"]={}
	tFamilyPackage_PagReward[3309832]["DeleteItem"][1]={}
	tFamilyPackage_PagReward[3309832]["DeleteItem"][1]["Id"]=3309832
	tFamilyPackage_PagReward[3309832]["LogId"] = tFamilyPackage_LogId
	tFamilyPackage_PagReward[3309832]["RewardItem"] = {}
	tFamilyPackage_PagReward[3309832]["RewardItem"][1] = {}
	tFamilyPackage_PagReward[3309832]["RewardItem"][1]["Id"] = 3314900 -- 聚神丹*2
	tFamilyPackage_PagReward[3309832]["RewardItem"][1]["Attr"] = "0 2"
	tFamilyPackage_PagReward[3309832]["RewardItem"][1]["NeedEMoney"] = 1
	tFamilyPackage_PagReward[3309832]["RewardItem"][2] = {}
	tFamilyPackage_PagReward[3309832]["RewardItem"][2]["Id"] = 710212 -- 特制仙境船票*2
	tFamilyPackage_PagReward[3309832]["RewardItem"][2]["Attr"] = "0 2"
	tFamilyPackage_PagReward[3309832]["RewardItem"][2]["NeedEMoney"] = 35
	tFamilyPackage_PagReward[3309832]["RewardItem"][3] = {}
	tFamilyPackage_PagReward[3309832]["RewardItem"][3]["Id"] = 3306908 -- 时效+1赤炼石神纹精粹可选包*6
	tFamilyPackage_PagReward[3309832]["RewardItem"][3]["Attr"] = "0 6 0 10080 1"
	tFamilyPackage_PagReward[3309832]["RewardItem"][3]["NeedEMoney"] = 6
	-- 极品黑虎城家族占领礼包
	tFamilyPackage_PagReward[3309833] = {}
	tFamilyPackage_PagReward[3309833]["DeleteItem"]={}
	tFamilyPackage_PagReward[3309833]["DeleteItem"][1]={}
	tFamilyPackage_PagReward[3309833]["DeleteItem"][1]["Id"]=3309833
	tFamilyPackage_PagReward[3309833]["LogId"] = tFamilyPackage_LogId
	tFamilyPackage_PagReward[3309833]["RewardItem"] = {}
	tFamilyPackage_PagReward[3309833]["RewardItem"][1] = {}
	tFamilyPackage_PagReward[3309833]["RewardItem"][1]["Id"] = 3314900 -- 聚神丹*4
	tFamilyPackage_PagReward[3309833]["RewardItem"][1]["Attr"] = "0 4"
	tFamilyPackage_PagReward[3309833]["RewardItem"][1]["NeedEMoney"] = 2
	tFamilyPackage_PagReward[3309833]["RewardItem"][2] = {}
	tFamilyPackage_PagReward[3309833]["RewardItem"][2]["Id"] = 710212 -- 特制仙境船票*4
	tFamilyPackage_PagReward[3309833]["RewardItem"][2]["Attr"] = "0 4"
	tFamilyPackage_PagReward[3309833]["RewardItem"][2]["NeedEMoney"] = 70
	tFamilyPackage_PagReward[3309833]["RewardItem"][3] = {}
	tFamilyPackage_PagReward[3309833]["RewardItem"][3]["Id"] = 3309839 -- 时效+3赤炼石神纹精粹可选包*1
	tFamilyPackage_PagReward[3309833]["RewardItem"][3]["Attr"] = "0 1 0 10080 1"
	tFamilyPackage_PagReward[3309833]["RewardItem"][3]["NeedEMoney"] = 30
	-- 普通鸣凤堡家族占领礼包
	tFamilyPackage_PagReward[3309834] = {}
	tFamilyPackage_PagReward[3309834]["DeleteItem"]={}
	tFamilyPackage_PagReward[3309834]["DeleteItem"][1]={}
	tFamilyPackage_PagReward[3309834]["DeleteItem"][1]["Id"]=3309834
	tFamilyPackage_PagReward[3309834]["LogId"] = tFamilyPackage_LogId
	tFamilyPackage_PagReward[3309834]["RewardItem"] = {}
	tFamilyPackage_PagReward[3309834]["RewardItem"][1] = {}
	tFamilyPackage_PagReward[3309834]["RewardItem"][1]["Id"] = 710212 -- 特制仙境船票*2
	tFamilyPackage_PagReward[3309834]["RewardItem"][1]["Attr"] = "0 2"
	tFamilyPackage_PagReward[3309834]["RewardItem"][1]["NeedEMoney"] = 35
	-- 良品鸣凤堡家族占领礼包
	tFamilyPackage_PagReward[3309835] = {}
	tFamilyPackage_PagReward[3309835]["DeleteItem"]={}
	tFamilyPackage_PagReward[3309835]["DeleteItem"][1]={}
	tFamilyPackage_PagReward[3309835]["DeleteItem"][1]["Id"]=3309835
	tFamilyPackage_PagReward[3309835]["LogId"] = tFamilyPackage_LogId
	tFamilyPackage_PagReward[3309835]["RewardItem"] = {}
	tFamilyPackage_PagReward[3309835]["RewardItem"][1] = {}
	tFamilyPackage_PagReward[3309835]["RewardItem"][1]["Id"] = 710212 -- 特制仙境船票*2
	tFamilyPackage_PagReward[3309835]["RewardItem"][1]["Attr"] = "0 2"
	tFamilyPackage_PagReward[3309835]["RewardItem"][1]["NeedEMoney"] = 35
	-- 上品鸣凤堡家族占领礼包
	tFamilyPackage_PagReward[3309836] = {}
	tFamilyPackage_PagReward[3309836]["DeleteItem"]={}
	tFamilyPackage_PagReward[3309836]["DeleteItem"][1]={}
	tFamilyPackage_PagReward[3309836]["DeleteItem"][1]["Id"]=3309836
	tFamilyPackage_PagReward[3309836]["LogId"] = tFamilyPackage_LogId
	tFamilyPackage_PagReward[3309836]["RewardItem"] = {}
	tFamilyPackage_PagReward[3309836]["RewardItem"][1] = {}
	tFamilyPackage_PagReward[3309836]["RewardItem"][1]["Id"] = 710212 -- 特制仙境船票*2
	tFamilyPackage_PagReward[3309836]["RewardItem"][1]["Attr"] = "0 2"
	tFamilyPackage_PagReward[3309836]["RewardItem"][1]["NeedEMoney"] = 35
	-- 精品鸣凤堡家族占领礼包
	tFamilyPackage_PagReward[3309837] = {}
	tFamilyPackage_PagReward[3309837]["DeleteItem"]={}
	tFamilyPackage_PagReward[3309837]["DeleteItem"][1]={}
	tFamilyPackage_PagReward[3309837]["DeleteItem"][1]["Id"]=3309837
	tFamilyPackage_PagReward[3309837]["LogId"] = tFamilyPackage_LogId
	tFamilyPackage_PagReward[3309837]["RewardItem"] = {}
	tFamilyPackage_PagReward[3309837]["RewardItem"][1] = {}
	tFamilyPackage_PagReward[3309837]["RewardItem"][1]["Id"] = 3314900 -- 聚神丹*2
	tFamilyPackage_PagReward[3309837]["RewardItem"][1]["Attr"] = "0 2"
	tFamilyPackage_PagReward[3309837]["RewardItem"][1]["NeedEMoney"] = 1
	tFamilyPackage_PagReward[3309837]["RewardItem"][2] = {}
	tFamilyPackage_PagReward[3309837]["RewardItem"][2]["Id"] = 710212 -- 特制仙境船票*2
	tFamilyPackage_PagReward[3309837]["RewardItem"][2]["Attr"] = "0 2"
	tFamilyPackage_PagReward[3309837]["RewardItem"][2]["NeedEMoney"] = 35
	-- 极品鸣凤堡家族占领礼包
	tFamilyPackage_PagReward[3309838] = {}
	tFamilyPackage_PagReward[3309838]["DeleteItem"]={}
	tFamilyPackage_PagReward[3309838]["DeleteItem"][1]={}
	tFamilyPackage_PagReward[3309838]["DeleteItem"][1]["Id"]=3309838
	tFamilyPackage_PagReward[3309838]["LogId"] = tFamilyPackage_LogId
	tFamilyPackage_PagReward[3309838]["RewardItem"] = {}
	tFamilyPackage_PagReward[3309838]["RewardItem"][1] = {}
	tFamilyPackage_PagReward[3309838]["RewardItem"][1]["Id"] = 3314900 -- 聚神丹*2
	tFamilyPackage_PagReward[3309838]["RewardItem"][1]["Attr"] = "0 2"
	tFamilyPackage_PagReward[3309838]["RewardItem"][1]["NeedEMoney"] = 1
	tFamilyPackage_PagReward[3309838]["RewardItem"][2] = {}
	tFamilyPackage_PagReward[3309838]["RewardItem"][2]["Id"] = 710212 -- 特制仙境船票*2
	tFamilyPackage_PagReward[3309838]["RewardItem"][2]["Attr"] = "0 2"
	tFamilyPackage_PagReward[3309838]["RewardItem"][2]["NeedEMoney"] = 35
	tFamilyPackage_PagReward[3309838]["RewardItem"][3] = {}
	tFamilyPackage_PagReward[3309838]["RewardItem"][3]["Id"] = 3306908 -- 时效+1赤炼石神纹精粹可选包*6
	tFamilyPackage_PagReward[3309838]["RewardItem"][3]["Attr"] = "0 6 0 10080 1"
	tFamilyPackage_PagReward[3309838]["RewardItem"][3]["NeedEMoney"] = 6

---------------------------------------------
-- log
local tFamilyPackage_Log = {}
	tFamilyPackage_Log["EMoneyOpen"] = "%d,0,0,0,12001099,2,%d,%d"
	tFamilyPackage_Log["EMoneyLog"] = "350	4879	%d	%d	1	"
---------------------------------------------逻辑部分配置---------------------------------------------
-- 奖励列表
function FamilyPackage_RewardData(tReward,nItemId,nIndex)
	-- 给物品奖励
	if tReward["RewardItem"] ~= nil then
		for i,v in ipairs(tReward["RewardItem"]) do
			local sItemName = Get_ItemtypeName(v["Id"])
			local sItemNum = "*1"
			local tItemAttr = Sys_Split(v["Attr"]," ")
			
			-- 为赠的奖励
			if tItemAttr[3] ~= nil and tonumber(tItemAttr[3]) == 3 then
				sItemName = string.format(tFamilyPackage_Text["ItemMono"],sItemName)
			end

			-- 给物品数量
			if tItemAttr[2] ~= nil and tonumber(tItemAttr[2]) > 1 then
				sItemNum = string.format(tFamilyPackage_Text["ItemNum"],tItemAttr[2])
			end
			
			-- 给时效
			if tItemAttr[4] ~= nil then
				local nDay = math.floor(tItemAttr[4]/1440)
				sItemName = string.format(tFamilyPackage_Text["Prescript"],nDay,sItemName)
			end
			
			-- 加空格
			local sRewardName = string.format(tFamilyPackage_Text["ItemText"]["Text113"],sItemName,sItemNum)
			tItem[nItemId]["Text1"..nIndex.."1"..i] = sRewardName
			table.insert(tItem[nItemId]["Text1-"..nIndex],2+i,"1"..nIndex.."1"..i)
		end
	end
end



-- 物品主入口
function FamilyPackage_ItemMain(nItemId)
	-- 初始化对白内容
	tItem[nItemId]["Text1-1"] = {111,112,114,115}
	
	-- 获取原奖励列表
	FamilyPackage_RewardData(tFamilyPackage_PagReward[nItemId],nItemId,1)
	
	-- 出对白
	-- local sText113 = string.format(tFamilyPackage_Text["ItemText"]["Text111"],sRewardName)
	-- tItem[nItemId]["Text113"] = sRewardName
	
	-- 选项
	FamilyPackage_EMoneyOpen(nItemId)
	-- tItem[nItemId]["OptionFunc112"] = string.format("FamilyPackage_EMoneyOpen</N>%d",nItemId)
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end


-- 直接打开
function FamilyPackage_RightOpen(nItemId)
	-- 背包空间不足
	local nSpace = RewardTemplate_GetRewardSpace(tFamilyPackage_PagReward[nItemId]) - 1
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tFamilyPackage_Text["NoSpace"],nSpace))
		return
	end
	
	RewardTemplate_UseItemAndMsg(tFamilyPackage_PagReward[nItemId])
end


-- 消耗天石打开
function FamilyPackage_EMoneyOpen(nItemId)
	tItem[nItemId]["tOption1-1"] = {1110}
	tItem[nItemId]["OptionFunc1110"] = string.format("FamilyPackage_RightOpen</N>%d",nItemId)

	for nType,v in ipairs(tFamilyPackage_PagReward[nItemId]["RewardItem"]) do
		-- 可翻倍物品（出选项）
		if v["NeedEMoney"] ~= nil then
			local tItemAttr = Sys_Split(v["Attr"]," ")
			local nItemNum = 1

			-- 奖励数量
			if tItemAttr[2] ~= nil and tonumber(tItemAttr[2]) > 1 then
				nItemNum = tonumber(tItemAttr[2])
			end
			
			local nDouble = nItemNum * 2
			local sItemNum = string.format(tFamilyPackage_Text["ItemNum"],nDouble)
			local sItemName = Get_ItemtypeName(v["Id"])
			
			-- 给时效
			if tItemAttr[4] ~= nil then
				local nDay = math.floor(tItemAttr[4]/1440)
				sItemName = string.format(tFamilyPackage_Text["Prescript"],nDay,sItemName)
			end
			
			local nNeedEMoney = v["NeedEMoney"]
			local sOptText = string.format(tFamilyPackage_Text["ItemText"]["Option111"],sItemName,sItemNum,nNeedEMoney)
			tItem[nItemId]["Option11".. nType] = sOptText
			table.insert(tItem[nItemId]["tOption1-1"],"11".. nType)
			tItem[nItemId]["OptionFunc11".. nType] = string.format("FamilyPackage_IsEMoney</N>%d</N>%d",nItemId,nType)
		end
	end
	
	-- 出对白
	-- LinkItemGossipFunc_New(nItemId,"1-2")
end

-- 二次确认
function FamilyPackage_IsEMoney(nItemId,nType)
	-- 初始化对白内容
	tItem[nItemId]["Text1-3"] = {131,132}
	--重写奖励表
	local tReward,nNeedEMoney = FamilyPackage_ChkEMoneyDo(nItemId,nType)
	
	-- 获取原奖励列表
	if tReward ~= nil then
		FamilyPackage_RewardData(tReward,nItemId,3)

		-- 出对白
		tItem[nItemId]["Text131"] = string.format(tFamilyPackage_Text["ItemText"]["Text131"],nNeedEMoney)
		tItem[nItemId]["OptionFunc131"] = string.format("FamilyPackage_EMoneyDo</N>%d</N>%d",nItemId,nType)
		LinkItemGossipFunc_New(nItemId,"1-3")
	end
end


-- 执行天石打开
function FamilyPackage_EMoneyDo(nItemId,nType)
	--重写奖励表
	local tReward,nNeedEMoney,nNewItemId,nItemNum = FamilyPackage_ChkEMoneyDo(nItemId,nType)
	if tReward ~= nil then
		-- 扣天石给奖励
		if User_AddEMoney(-nNeedEMoney) then
			RewardTemplate_UseItemAndMsg(tReward)
			local sLog = string.format(tFamilyPackage_Log["EMoneyOpen"],nNeedEMoney,nNewItemId,nItemNum)
			Sys_SaveActionRewardLog(sLog)
			Sys_SaveEmoneyBuy(string.format(tFamilyPackage_Log["EMoneyLog"],nNeedEMoney,nNeedEMoney))
		end
	end
end

-- 消耗天石打开数据处理
function FamilyPackage_ChkEMoneyDo(nTypeItemId,nType)
	-- 重写奖励表
	local tReward = CommonFunc_Copy(tFamilyPackage_PagReward[nTypeItemId])
	local nNewItemId = tReward["RewardItem"][nType]["Id"]
	local nItemNum = 1
	local tItemAttr = Sys_Split(tReward["RewardItem"][nType]["Attr"]," ")
	if tItemAttr[2] ~= nil and tonumber(tItemAttr[2]) > 1 then
		nItemNum = tonumber(tItemAttr[2])
	end
	
	-- 翻倍
	tItemAttr[2] = nItemNum * 2
	
	-- 奖励字符串重新配置
	tReward["RewardItem"][nType]["Attr"] = table.concat(tItemAttr," ")
	
	-- 背包空间不足
	local nSpace = RewardTemplate_GetRewardSpace(tReward) - 1
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tFamilyPackage_Text["NoSpace"],nSpace))
		return
	end
	
	-- 天石不足
	local nNeedEMoney = tReward["RewardItem"][nType]["NeedEMoney"]
	local nUserEMoney = Get_UserEMoney()
	if nUserEMoney < nNeedEMoney then
		Sys_MsgBox(tFamilyPackage_Text["NoEMoney"])
		return
	end
	
	-- 返回新的奖励配置表
	return tReward,nNeedEMoney,nNewItemId,tItemAttr[2]
end

---------------------------------------------模块部分配置---------------------------------------------
tItemFace[3309814] = 1624
tItemFace[3309815] = 1624
tItemFace[3309816] = 1624
tItemFace[3309817] = 1624
tItemFace[3309818] = 1624
tItemFace[3309819] = 1624
tItemFace[3309820] = 1624
tItemFace[3309821] = 1624
tItemFace[3309822] = 1624
tItemFace[3309823] = 1624
tItemFace[3309824] = 1625
tItemFace[3309825] = 1625
tItemFace[3309826] = 1625
tItemFace[3309827] = 1625
tItemFace[3309828] = 1625
tItemFace[3309829] = 1625
tItemFace[3309830] = 1625
tItemFace[3309831] = 1625
tItemFace[3309832] = 1625
tItemFace[3309833] = 1625
tItemFace[3309834] = 1625
tItemFace[3309835] = 1625
tItemFace[3309836] = 1625
tItemFace[3309837] = 1625
tItemFace[3309838] = 1625
for nId = 3309814 , 3309838 do
	tItem[nId] = tItem[nId] or {}
	tItem[nId]["Function"] = function(nItemId, sItemName)
		FamilyPackage_ItemMain(nItemId)
	end
	tItem[nId]["DialogueText"] = tFamilyPackage_Text["ItemText"]
	-- 主对白
	tItem[nId]["Text1-1"] = {111,112,113,114,115}
	tItem[nId]["tOption1-1"] = {1110,111,112}
	-- 消耗天石打开
	-- tItem[nId]["Text1-2"] = {121,122}
	-- tItem[nId]["tOption1-2"] = {121}
	-- 二次确认
	tItem[nId]["Text1-3"] = {131,132,133}
	tItem[nId]["tOption1-3"] = {131,132}
end


