------------------------------------------------------------------------------------
--Name：160926[简体征服][任务脚本]铁扇门就职NPC制作
--Creator:郑宗胜
--Created: 2016/09/26
------------------------------------------------------------------------------------
--任务需求：
-- 【简体征服】铁扇门相关处理
-- 1、新就职npc相关逻辑，自动就职自动学技能


--命名空间： IronGateInductNpc_

--logid ：18000138

--lua.ini 21046
------------------------------------------------------------------------------------

-- 铁扇门
-- G_PRO_IroFan0					=	160		--见习铁扇门
-- G_PRO_IroFan1					=	161		--铁扇门
-- G_PRO_IroFan2					=	162		--银扇门
-- G_PRO_IroFan3					=	163		--金扇门
-- G_PRO_IroFan4					=	164		--白金扇门
-- G_PRO_IroFan5					=	165		--钻石扇门

----------------------------------表配置部分--------------------------------------------
local tIronGateInductNpc_Constant={}
	--铁扇门标记位
	tIronGateInductNpc_Constant["NearFlag"]=8 --近战标志位
	tIronGateInductNpc_Constant["FarFlag"]=0 --远程标志位
	
	--切换至近/远战，花费的天石或物品
	tIronGateInductNpc_Constant["CostEMoney"]=27 --调整为27天石
	tIronGateInductNpc_Constant["CostItem"]=3301705 --铁扇令
	
	tIronGateInductNpc_Constant["MainTask"] = 3796 --非铁扇门职业第一个主线任务taksid
	tIronGateInductNpc_Constant["LastTask"] = 3802 --铁扇门主线：最后一个任务 taskid
	
	tIronGateInductNpc_Constant["NotIronCarton"]=1008 --非铁扇门的漫画
	tIronGateInductNpc_Constant["IronCarton"]=1011 --铁扇门的漫画


--成就标识位，cq_achievementtype 的 position字段
local tIronGateInductNpc_Achi ={}
	tIronGateInductNpc_Achi[16001]= 11304 --就职铁扇门
	tIronGateInductNpc_Achi[16002]= 11305 --就职银扇门
	tIronGateInductNpc_Achi[16003]= 11306 --就职金扇门
	tIronGateInductNpc_Achi[16004]= 11307 --就职白金扇门
	tIronGateInductNpc_Achi[16005]= 11308 --就职钻石扇门
	
	tIronGateInductNpc_Achi["TaskIntroduce"]=10930 --新手就职任务介绍


--taskid
local tIronGateInductNpc_Task={}
	--任务：职业就职介绍 （新手任务触发，接受该任务）
	tIronGateInductNpc_Task[1]={}
	tIronGateInductNpc_Task[1]["TaskId"]=3795


local tIronGateInductNpc_Stc={}
	--记录免费切换远近战，0-没切换过，1-切换过（隔30天可以再次切换）
	tIronGateInductNpc_Stc["EventType"]=153
	tIronGateInductNpc_Stc["DataType"]=50
	tIronGateInductNpc_Stc["HasSwitch"]=1
	tIronGateInductNpc_Stc["EachTime"]=30 --30天
	
	--出副本2，是否弹出漫画 (掩码同：[征服][任务脚本]铁扇门主线任务)
	tIronGateInductNpc_Stc[3]={}
	tIronGateInductNpc_Stc[3]["EventType"]=155
	tIronGateInductNpc_Stc[3]["DataType"]=27


local tIronGateInductNpc_Log={}
	tIronGateInductNpc_Log[1]="%d,0,0,0,18000138,3,0,0" --花费天石切换形态
	tIronGateInductNpc_Log[2]="0,0,%d,1,18000138,3,0,0" --花费物品(铁扇令)切换形态
	tIronGateInductNpc_Log["EMoney"]="350	4454	%d	%d	1	" --emoney log



--不同阶级职业对应的对白索引
local tIronGateInductNpc_ProIndex={}
	--职业进阶
	tIronGateInductNpc_ProIndex["ImprovePro"]={}
	tIronGateInductNpc_ProIndex["ImprovePro"][160]={}
	tIronGateInductNpc_ProIndex["ImprovePro"][160]["NextProNeedLevel"]=15 --需要等级
	tIronGateInductNpc_ProIndex["ImprovePro"][160]["Index"]="3-1" --满足条件的对白
	
	tIronGateInductNpc_ProIndex["ImprovePro"][161]={}
	tIronGateInductNpc_ProIndex["ImprovePro"][161]["NextProNeedLevel"]=40
	tIronGateInductNpc_ProIndex["ImprovePro"][161]["Index"]="3-2"
	
	tIronGateInductNpc_ProIndex["ImprovePro"][162]={}
	tIronGateInductNpc_ProIndex["ImprovePro"][162]["NextProNeedLevel"]=70
	tIronGateInductNpc_ProIndex["ImprovePro"][162]["Index"]="3-3"
	
	tIronGateInductNpc_ProIndex["ImprovePro"][163]={}
	tIronGateInductNpc_ProIndex["ImprovePro"][163]["NextProNeedLevel"]=100
	tIronGateInductNpc_ProIndex["ImprovePro"][163]["Index"]="3-4"
	
	tIronGateInductNpc_ProIndex["ImprovePro"][164]={}
	tIronGateInductNpc_ProIndex["ImprovePro"][164]["NextProNeedLevel"]=110
	tIronGateInductNpc_ProIndex["ImprovePro"][164]["Index"]="3-5"
	
	tIronGateInductNpc_ProIndex["ImprovePro"][165]={}
	tIronGateInductNpc_ProIndex["ImprovePro"][165]["NextProNeedLevel"]=110
	tIronGateInductNpc_ProIndex["ImprovePro"][165]["Index"]="3-6"


--技能配置
local tIronGateInductNpc_SkillSet={}
	--近战技能 MagicType技能类型ID
	tIronGateInductNpc_SkillSet[1]={}
	tIronGateInductNpc_SkillSet[1][1]={} --满庭霜
	tIronGateInductNpc_SkillSet[1][1]["MagicType"]= 12940
	tIronGateInductNpc_SkillSet[1][1]["NeedLev"]=15
	
	tIronGateInductNpc_SkillSet[1][2]={} --愈之风
	tIronGateInductNpc_SkillSet[1][2]["MagicType"]= 12950
	tIronGateInductNpc_SkillSet[1][2]["NeedLev"]=15
	
	tIronGateInductNpc_SkillSet[1][3]={} -- 破阵子
	tIronGateInductNpc_SkillSet[1][3]["MagicType"]= 12930
	tIronGateInductNpc_SkillSet[1][3]["NeedLev"]=40
	
	tIronGateInductNpc_SkillSet[1][4]={} -- 踏雪·断相思
	tIronGateInductNpc_SkillSet[1][4]["MagicType"]= 12990
	tIronGateInductNpc_SkillSet[1][4]["NeedLev"]=40
	
	tIronGateInductNpc_SkillSet[1][5]={} --刃之风
	tIronGateInductNpc_SkillSet[1][5]["MagicType"]= 12960
	tIronGateInductNpc_SkillSet[1][5]["NeedLev"]=70
	
	tIronGateInductNpc_SkillSet[1][6]={} --踏雪·定风波
	tIronGateInductNpc_SkillSet[1][6]["MagicType"]= 13000
	tIronGateInductNpc_SkillSet[1][6]["NeedLev"]=70
	
	tIronGateInductNpc_SkillSet[1][7]={} -- 追风刃
	tIronGateInductNpc_SkillSet[1][7]["MagicType"]= 13030
	tIronGateInductNpc_SkillSet[1][7]["NeedLev"]=100
	
	tIronGateInductNpc_SkillSet[1][8]={} --强之风
	tIronGateInductNpc_SkillSet[1][8]["MagicType"]= 13020
	tIronGateInductNpc_SkillSet[1][8]["NeedLev"]=100
	
	tIronGateInductNpc_SkillSet[1][11]={} --踏雪·冲冠怒
	tIronGateInductNpc_SkillSet[1][11]["MagicType"]= 12980
	tIronGateInductNpc_SkillSet[1][11]["NeedLev"]=1
	
	--远战技能
	tIronGateInductNpc_SkillSet[2]={}
	tIronGateInductNpc_SkillSet[2][1]={} -- 风云动
	tIronGateInductNpc_SkillSet[2][1]["MagicType"]=12890
	tIronGateInductNpc_SkillSet[2][1]["NeedLev"]=15
	
	tIronGateInductNpc_SkillSet[2][2]={} --流风·墨影袭
	tIronGateInductNpc_SkillSet[2][2]["MagicType"]=13090
	tIronGateInductNpc_SkillSet[2][2]["NeedLev"]=15
	
	tIronGateInductNpc_SkillSet[2][3]={} --三叠浪
	tIronGateInductNpc_SkillSet[2][3]["MagicType"]=12850
	tIronGateInductNpc_SkillSet[2][3]["NeedLev"]=40
	
	tIronGateInductNpc_SkillSet[2][4]={} -- 风眼
	tIronGateInductNpc_SkillSet[2][4]["MagicType"]=12840
	tIronGateInductNpc_SkillSet[2][4]["NeedLev"]=70
	
	tIronGateInductNpc_SkillSet[2][5]={} --集火
	tIronGateInductNpc_SkillSet[2][5]["MagicType"]=12970
	tIronGateInductNpc_SkillSet[2][5]["NeedLev"]=100
	
	
	--纯转技能
	tIronGateInductNpc_SkillSet[3]={}
	tIronGateInductNpc_SkillSet[3][1]={} -- 乱心之风1转
	tIronGateInductNpc_SkillSet[3][1]["MagicType"]=12830
	tIronGateInductNpc_SkillSet[3][1]["NeedLev"]=1
	
	tIronGateInductNpc_SkillSet[3][2]={} -- 2转
	tIronGateInductNpc_SkillSet[3][2]["MagicType"]=13070
	tIronGateInductNpc_SkillSet[3][2]["NeedLev"]=1
	
	tIronGateInductNpc_SkillSet[3][3]={} -- 纯转
	tIronGateInductNpc_SkillSet[3][3]["MagicType"]=13080
	tIronGateInductNpc_SkillSet[3][3]["NeedLev"]=1
	
	
	--通用技能
	tIronGateInductNpc_SkillSet[4]={}
	tIronGateInductNpc_SkillSet[4][1]={} -- 九天扇舞
	tIronGateInductNpc_SkillSet[4][1]["MagicType"]=12860
	tIronGateInductNpc_SkillSet[4][1]["NeedLev"]=3
	
	tIronGateInductNpc_SkillSet[4][2]={} -- 正气诀(素心诀)
	tIronGateInductNpc_SkillSet[4][2]["MagicType"]=12870
	tIronGateInductNpc_SkillSet[4][2]["NeedLev"]=3



local tIronGateInductNpc_Reward = {}
	--fortest
	--职业进阶奖励
	tIronGateInductNpc_Reward["Improve"] = {}
	tIronGateInductNpc_Reward["Improve"][160]={}
	tIronGateInductNpc_Reward["Improve"][160]["NeedSpace"]=1
	tIronGateInductNpc_Reward["Improve"][160]["NextPro"]=16001
	tIronGateInductNpc_Reward["Improve"][160][0]={} --参考英文功夫之王就职，0转才有奖励
	tIronGateInductNpc_Reward["Improve"][160][0]["RewardItem"] = {}
	tIronGateInductNpc_Reward["Improve"][160][0]["RewardItem"][1] = {}
	tIronGateInductNpc_Reward["Improve"][160][0]["RewardItem"][1]["Id"] = 3005160 --L15PromotionPack
	tIronGateInductNpc_Reward["Improve"][160][0]["RewardItem"][1]["Attr"] = "0 1"
	tIronGateInductNpc_Reward["Improve"][160][0]["LogId"] =18000138
	tIronGateInductNpc_Reward["Improve"][160][0]["Talk"]=tIronGateInductNpc_Text["Improve"][160]

	tIronGateInductNpc_Reward["Improve"][161]={}
	tIronGateInductNpc_Reward["Improve"][161]["NeedSpace"]=1
	tIronGateInductNpc_Reward["Improve"][161]["NextPro"]=16002
	tIronGateInductNpc_Reward["Improve"][161][0]={} --0转的奖励
	tIronGateInductNpc_Reward["Improve"][161][0]["RewardItem"] = {}
	tIronGateInductNpc_Reward["Improve"][161][0]["RewardItem"][1] = {}
	tIronGateInductNpc_Reward["Improve"][161][0]["RewardItem"][1]["Id"] = 3005161 --L40PromotionPack
	tIronGateInductNpc_Reward["Improve"][161][0]["RewardItem"][1]["Attr"] = "0 1"
	tIronGateInductNpc_Reward["Improve"][161][0]["LogId"] =18000138
	tIronGateInductNpc_Reward["Improve"][161][0]["Talk"]=tIronGateInductNpc_Text["Improve"][161]
	
	tIronGateInductNpc_Reward["Improve"][161][1]={} --1转的奖励
	tIronGateInductNpc_Reward["Improve"][161][1]["RewardItem"] = {}
	tIronGateInductNpc_Reward["Improve"][161][1]["RewardItem"][1] = {}
	tIronGateInductNpc_Reward["Improve"][161][1]["RewardItem"][1]["Id"] = 3005162 --L40PromotionPack
	tIronGateInductNpc_Reward["Improve"][161][1]["RewardItem"][1]["Attr"] = "0 1"
	tIronGateInductNpc_Reward["Improve"][161][1]["LogId"] =18000138
	tIronGateInductNpc_Reward["Improve"][161][1]["Talk"]=tIronGateInductNpc_Text["Improve"][161]
	
	tIronGateInductNpc_Reward["Improve"][161][2]={} --2转的奖励，特转以上无奖励
	tIronGateInductNpc_Reward["Improve"][161][2]["RewardItem"] = {}
	tIronGateInductNpc_Reward["Improve"][161][2]["RewardItem"][1] = {}
	tIronGateInductNpc_Reward["Improve"][161][2]["RewardItem"][1]["Id"] = 3005163 --L40PromotionPack
	tIronGateInductNpc_Reward["Improve"][161][2]["RewardItem"][1]["Attr"] = "0 1"
	tIronGateInductNpc_Reward["Improve"][161][2]["LogId"] =18000138
	tIronGateInductNpc_Reward["Improve"][161][2]["Talk"]=tIronGateInductNpc_Text["Improve"][161]

	tIronGateInductNpc_Reward["Improve"][162]={}
	tIronGateInductNpc_Reward["Improve"][162]["NeedSpace"]=1
	tIronGateInductNpc_Reward["Improve"][162]["NextPro"]=16003
	tIronGateInductNpc_Reward["Improve"][162][0]={}
	tIronGateInductNpc_Reward["Improve"][162][0]["RewardItem"] = {}
	tIronGateInductNpc_Reward["Improve"][162][0]["RewardItem"][1] = {}
	tIronGateInductNpc_Reward["Improve"][162][0]["RewardItem"][1]["Id"] = 3005164 -- L70PromotionPack
	tIronGateInductNpc_Reward["Improve"][162][0]["RewardItem"][1]["Attr"] = "0 1"
	tIronGateInductNpc_Reward["Improve"][162][0]["LogId"] =18000138
	tIronGateInductNpc_Reward["Improve"][162][0]["Talk"]=tIronGateInductNpc_Text["Improve"][162]
	
	tIronGateInductNpc_Reward["Improve"][162][1]={}
	tIronGateInductNpc_Reward["Improve"][162][1]["RewardItem"] = {}
	tIronGateInductNpc_Reward["Improve"][162][1]["RewardItem"][1] = {}
	tIronGateInductNpc_Reward["Improve"][162][1]["RewardItem"][1]["Id"] = 3005165 -- L70PromotionPack
	tIronGateInductNpc_Reward["Improve"][162][1]["RewardItem"][1]["Attr"] = "0 1"
	tIronGateInductNpc_Reward["Improve"][162][1]["LogId"] =18000138
	tIronGateInductNpc_Reward["Improve"][162][1]["Talk"]=tIronGateInductNpc_Text["Improve"][162]
	
	tIronGateInductNpc_Reward["Improve"][162][2]={}
	tIronGateInductNpc_Reward["Improve"][162][2]["RewardItem"] = {}
	tIronGateInductNpc_Reward["Improve"][162][2]["RewardItem"][1] = {}
	tIronGateInductNpc_Reward["Improve"][162][2]["RewardItem"][1]["Id"] = 3005166 -- L70PromotionPack
	tIronGateInductNpc_Reward["Improve"][162][2]["RewardItem"][1]["Attr"] = "0 1"
	tIronGateInductNpc_Reward["Improve"][162][2]["LogId"] =18000138
	tIronGateInductNpc_Reward["Improve"][162][2]["Talk"]=tIronGateInductNpc_Text["Improve"][162]

	tIronGateInductNpc_Reward["Improve"][163]={}
	tIronGateInductNpc_Reward["Improve"][163]["NeedSpace"]=1
	tIronGateInductNpc_Reward["Improve"][163]["NextPro"]=16004
	tIronGateInductNpc_Reward["Improve"][163][0]={}
	tIronGateInductNpc_Reward["Improve"][163][0]["RewardItem"] = {}
	tIronGateInductNpc_Reward["Improve"][163][0]["RewardItem"][1] = {}
	tIronGateInductNpc_Reward["Improve"][163][0]["RewardItem"][1]["Id"] = 3005167 -- L100PromotionPackII
	tIronGateInductNpc_Reward["Improve"][163][0]["RewardItem"][1]["Attr"] = "0 1"
	tIronGateInductNpc_Reward["Improve"][163][0]["LogId"] =18000138
	tIronGateInductNpc_Reward["Improve"][163][0]["Talk"]=tIronGateInductNpc_Text["Improve"][163]
	
	tIronGateInductNpc_Reward["Improve"][163][1]={}
	tIronGateInductNpc_Reward["Improve"][163][1]["RewardItem"] = {}
	tIronGateInductNpc_Reward["Improve"][163][1]["RewardItem"][1] = {}
	tIronGateInductNpc_Reward["Improve"][163][1]["RewardItem"][1]["Id"] = 3005168 -- L100PromotionPackII
	tIronGateInductNpc_Reward["Improve"][163][1]["RewardItem"][1]["Attr"] = "0 1"
	tIronGateInductNpc_Reward["Improve"][163][1]["LogId"] =18000138
	tIronGateInductNpc_Reward["Improve"][163][1]["Talk"]=tIronGateInductNpc_Text["Improve"][163]
	
	tIronGateInductNpc_Reward["Improve"][163][2]={}
	tIronGateInductNpc_Reward["Improve"][163][2]["RewardItem"] = {}
	tIronGateInductNpc_Reward["Improve"][163][2]["RewardItem"][1] = {}
	tIronGateInductNpc_Reward["Improve"][163][2]["RewardItem"][1]["Id"] = 3005169 -- L100PromotionPackII
	tIronGateInductNpc_Reward["Improve"][163][2]["RewardItem"][1]["Attr"] = "0 1"
	tIronGateInductNpc_Reward["Improve"][163][2]["LogId"] =18000138
	tIronGateInductNpc_Reward["Improve"][163][2]["Talk"]=tIronGateInductNpc_Text["Improve"][163]

	tIronGateInductNpc_Reward["Improve"][164]={}
	tIronGateInductNpc_Reward["Improve"][164]["NeedSpace"]=1
	tIronGateInductNpc_Reward["Improve"][164]["NextPro"]=16005
	tIronGateInductNpc_Reward["Improve"][164]["NeedItem"]={} --进阶需要的物品（多种月光宝盒，通过函数取得ID）
	tIronGateInductNpc_Reward["Improve"][164][0]={}
	tIronGateInductNpc_Reward["Improve"][164][0]["RewardItem"] = {}
	tIronGateInductNpc_Reward["Improve"][164][0]["RewardItem"][1] = {}
	tIronGateInductNpc_Reward["Improve"][164][0]["RewardItem"][1]["Id"] = 3005170 --L110PromotionPackI
	tIronGateInductNpc_Reward["Improve"][164][0]["RewardItem"][1]["Attr"] = "0 1"
	tIronGateInductNpc_Reward["Improve"][164][0]["LogId"] =18000138
	--fortest 原先的提示是龙珠
	-- tIronGateInductNpc_Reward["Improve"][164][0]["Talk"]=tIronGateInductNpc_Text["Improve"][164]
	
	tIronGateInductNpc_Reward["Improve"][164][1]={}
	tIronGateInductNpc_Reward["Improve"][164][1]["RewardItem"] = {}
	tIronGateInductNpc_Reward["Improve"][164][1]["RewardItem"][1] = {}
	tIronGateInductNpc_Reward["Improve"][164][1]["RewardItem"][1]["Id"] = 3005171 --L110PromotionPackI
	tIronGateInductNpc_Reward["Improve"][164][1]["RewardItem"][1]["Attr"] = "0 1"
	tIronGateInductNpc_Reward["Improve"][164][1]["LogId"] =18000138
	-- tIronGateInductNpc_Reward["Improve"][164][1]["Talk"]=tIronGateInductNpc_Text["Improve"][164]
	
	tIronGateInductNpc_Reward["Improve"][164][2]={}
	tIronGateInductNpc_Reward["Improve"][164][2]["RewardItem"] = {}
	tIronGateInductNpc_Reward["Improve"][164][2]["RewardItem"][1] = {}
	tIronGateInductNpc_Reward["Improve"][164][2]["RewardItem"][1]["Id"] = 3005172 --L110PromotionPackI
	tIronGateInductNpc_Reward["Improve"][164][2]["RewardItem"][1]["Attr"] = "0 1"
	tIronGateInductNpc_Reward["Improve"][164][2]["LogId"] =18000138
	-- tIronGateInductNpc_Reward["Improve"][164][2]["Talk"]=tIronGateInductNpc_Text["Improve"][164]
	
--无赠品服务器
	tIronGateInductNpc_Reward["Improve"]["NewGet"]={}
	tIronGateInductNpc_Reward["Improve"]["NewGet"]["NeedSpace"]=1
	tIronGateInductNpc_Reward["Improve"]["NewGet"]["NextPro"]=16005
	tIronGateInductNpc_Reward["Improve"]["NewGet"]["NeedItem"]={} --进阶需要的物品（多种月光宝盒，通过函数取得ID）
	tIronGateInductNpc_Reward["Improve"]["NewGet"]["RewardItem"] = {}
	tIronGateInductNpc_Reward["Improve"]["NewGet"]["RewardItem"][1] = {}
	tIronGateInductNpc_Reward["Improve"]["NewGet"]["RewardItem"][1]["Id"] = 3310888 --110级就职礼包
	tIronGateInductNpc_Reward["Improve"]["NewGet"]["RewardItem"][1]["Attr"] = "0 1"
	tIronGateInductNpc_Reward["Improve"]["NewGet"]["LogId"] =18000138
	
	--fortest
	--任务：职业就职介绍 
	tIronGateInductNpc_Reward["TaskIntroduce"]={}
	tIronGateInductNpc_Reward["TaskIntroduce"]["NeedSpace"] = 2
	tIronGateInductNpc_Reward["TaskIntroduce"]["RewardExp"] = {}
	tIronGateInductNpc_Reward["TaskIntroduce"]["RewardExp"]["Value"] = 58000 --5000点经验
	tIronGateInductNpc_Reward["TaskIntroduce"]["RewardExp"]["FullIndex"] = "RewardCultivation" ---对应其它奖励类型
	tIronGateInductNpc_Reward["TaskIntroduce"]["RewardExp"]["FullValue"] = 10 ---对应其它奖励的值
	tIronGateInductNpc_Reward["TaskIntroduce"]["RewardExp"]["FullLog"] = "0,0,0,0,18000138,2,6,10"
	tIronGateInductNpc_Reward["TaskIntroduce"]["RewardItem"] = {}
	tIronGateInductNpc_Reward["TaskIntroduce"]["RewardItem"][1] = {}
	tIronGateInductNpc_Reward["TaskIntroduce"]["RewardItem"][1]["Id"] = 721624 --15分钟防御药水
	tIronGateInductNpc_Reward["TaskIntroduce"]["RewardItem"][1]["Attr"] = "0 2"
	tIronGateInductNpc_Reward["TaskIntroduce"]["RewardEffect"] = {}
	tIronGateInductNpc_Reward["TaskIntroduce"]["RewardEffect"]["SzObj"] = "self"
	tIronGateInductNpc_Reward["TaskIntroduce"]["RewardEffect"]["Effect"] = "angelwing" --没这光效
	tIronGateInductNpc_Reward["TaskIntroduce"]["LogId"] =18000138
	tIronGateInductNpc_Reward["TaskIntroduce"]["Talk"]=tIronGateInductNpc_Text["TaskIntroduceAward"]
	
	--fortest
	--铁扇门主线任务的奖励
	tIronGateInductNpc_Reward["MainTask"]={}
	tIronGateInductNpc_Reward["MainTask"]["NeedSpace"] = 2
	tIronGateInductNpc_Reward["MainTask"]["RewardItem"] = {}
	tIronGateInductNpc_Reward["MainTask"]["RewardItem"][1] = {}
	tIronGateInductNpc_Reward["MainTask"]["RewardItem"][1]["Id"] = 626078 --2把精品 40级折扇
	tIronGateInductNpc_Reward["MainTask"]["RewardItem"][1]["Attr"] = "0 2 3"
	tIronGateInductNpc_Reward["MainTask"]["RewardEffect"] = {}
	tIronGateInductNpc_Reward["MainTask"]["RewardEffect"]["SzObj"] = "self"
	tIronGateInductNpc_Reward["MainTask"]["RewardEffect"]["Effect"] = "angelwing" --没这光效
	tIronGateInductNpc_Reward["MainTask"]["LogId"] =18000138
	tIronGateInductNpc_Reward["MainTask"]["Talk"]=tIronGateInductNpc_Text["CompleteMainTask"]


----------------------------------逻辑部分---------------------------------------------

--检测是否是铁扇门职业，true--是，false--否
function IronGateInductNpc_IsIronGatePro(nPro)
	local nUserPro = nPro or Get_UserProfession()
	--G_PRO_IroFan0=160 见习铁扇门
	-- G_PRO_IroFan5=165--钻石扇门
	return  G_PRO_IroFan0 <= nUserPro  and nUserPro <=G_PRO_IroFan5
end


--是否显示 就职任务
function IronGateInductNpc_CheckInductTask()
	local nTaskId = tIronGateInductNpc_Task[1]["TaskId"]
	
	if not Task_ChkTaskDetail(nTaskId) then
		--没有任务
		return false
	else
		--有任务：完成任务则不显示，否则显示
		return Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",0)
	end
end



--就职任务,任务：职业就职介绍
function IronGateInductNpc_InductTask(nNpcId)
	local nTaskId = tIronGateInductNpc_Task[1]["TaskId"]
	
	--非铁扇门职业
	if not IronGateInductNpc_IsIronGatePro() then
		return
	end
	
	--没有任务任务
	if not Task_ChkTaskDetail(nTaskId) then
		return
	end
	
	--背包空间不足
	if not User_CheckLeftSpace(tIronGateInductNpc_Reward["TaskIntroduce"]["NeedSpace"]) then
		Sys_MsgBox(tIronGateInductNpc_Text["NoSpace"])
		return
	end
	
	--获得成就
	local nAchPos = tIronGateInductNpc_Achi["TaskIntroduce"]
	local nUserId = Get_UserId()
	if not  User_ChkAchByAchPosition(nAchPos,nUserId) then
		User_AddAchByAchPosition(nAchPos,nUserId)
	end
	
	--设置完成任务
	-- Task_SetTaskDetailData1(nTaskId,1)
	Task_SetTaskDetailCompleteFlag(nTaskId,1)
	
	--获得奖励
	RewardTemplate_Reward(tIronGateInductNpc_Reward["TaskIntroduce"])
	Sys_MsgBox(tIronGateInductNpc_Text["CompleteInduceTask"])
	
	if CommonFunc_ChkGoldServer() then
		BossHouse_ProAward() 
	else
	-- 接受下一个任务,直接完成(sql逻辑)
		local nNextTaskId = 3338
		if not Task_ChkTaskDetail(nNextTaskId) then
		-- (97237110,97237112,97237111,1056,3338,'isexit'),
		-- (97237112,97237113,0,1057,3338,'complete set 1'),
		-- (97237113,0,0,1725,3,'3338 1'), --增加阶段性任务的进度
		-- (97237111,97237112,0,1056,3338,'new'),
			Task_AddTaskDetail(nNextTaskId)
			Task_SetTaskDetailCompleteFlag(nNextTaskId,1)
			-- 增加大侠传 的 阶段性任务（增加阶段性任务的进度（data填任务类型））
			User_AddProcessTaskSchedule(3,nNextTaskId,1,nUserId)
		elseif Task_ChkTaskDetailValue(nNextTaskId,"CompleteFlag","==",0)  then
			-- 有任务了，未完成
			Task_SetTaskDetailCompleteFlag(nNextTaskId,1)
			User_AddProcessTaskSchedule(3,nNextTaskId,1,nUserId)
		end
		LinkNpcGossipFunc_New(nNpcId,"7-2")
	end
end


--链接到职业进阶的对白
function IronGateInductNpc_ImproveProfessionLink(nNpcId)
	--非铁扇门职业
	if not IronGateInductNpc_IsIronGatePro() then
		return
	end
	
	local nUserPro = Get_UserProfession()
	local nUserLevel = Get_UserLevel()
	local sSexName = IronGateInductNpc_GetSexName()
	local sNextProName = IronGateInductNpc_GetNextProName()
	local nNeedLevel = tIronGateInductNpc_ProIndex["ImprovePro"][nUserPro]["NextProNeedLevel"]
	if nUserLevel < nNeedLevel then
		--等级不足对白
		tNpcGossip[nNpcId]["Text211"] = string.format(tIronGateInductNpc_Text[nNpcId]["Text211"],sSexName,sNextProName,nNeedLevel)
		tNpcGossip[nNpcId]["Option211"] = string.format(tIronGateInductNpc_Text[nNpcId]["Option211"],nNeedLevel)
		LinkNpcGossipFunc_New(nNpcId,"2-1")
	else
		--职业进阶
		LinkNpcGossipFunc_New(nNpcId,tIronGateInductNpc_ProIndex["ImprovePro"][nUserPro]["Index"])
	end
	
end


--得到性别对应名称
	--1，表示男性 --> 师弟
	--2，表示女性 --> 师妹
function IronGateInductNpc_GetSexName()
	local nUserId = Get_UserId()
	local nSex = Get_UserSex(nUserId)
	return tIronGateInductNpc_Text["SexName"][nSex]
end


--得到下一个职业的名称
function IronGateInductNpc_GetNextProName()
	--非铁扇门职业
	if not IronGateInductNpc_IsIronGatePro() then
		return ""
	end
	
	local nUserId = Get_UserId()
	local nUserPro = Get_UserProfession(nUserId)
	local nTemp = nUserPro +1
	local nNextPro = nTemp >= G_PRO_IroFan5 and G_PRO_IroFan5 or nTemp
	return tIronGateInductNpc_Text["ProName"][nNextPro]
end


--检测背包又哪种月光宝盒,没有返回-1
function IronGateInductNpc_GetBagMoonItemId()
	local tMoonItemIds ={721051,721052,721020,721021,721022,721023,721024,721025,721053,721054,721055,721061,721030,721031,721032,
				721033,721034,721035,721062,721063,721064,721065,721040,721041,721042,721043,721080,721081,721082,721083,721084,721090,3306558,3310883}
	
	for i,nItemId in ipairs (tMoonItemIds) do
		if Item_ChkItem(nItemId) then
			return nItemId
		end
	end
	return -1
end


--得到铁扇门流派的标记:0 --远战，8--近战
--返回值1 ：当前标记
--返回值2：转后后标记
--非铁扇：返回-1，-1
function IronGateInductNpc_GetCurLiuPaiFlag()
	--非铁扇门职业
	if not IronGateInductNpc_IsIronGatePro() then
		return -1,-1
	end
	
	local nCurFlag,nToFlag = 0 --当前流派标记、转换后流派标记
	local nUserId = Get_UserId()
	if User_GetIroFanMode(nUserId) then
		--现在是近战
		nCurFlag = tIronGateInductNpc_Constant["NearFlag"] --远程标志位
		nToFlag = tIronGateInductNpc_Constant["FarFlag"] --近战标志位
	else
		nCurFlag = tIronGateInductNpc_Constant["FarFlag"] 
		nToFlag = tIronGateInductNpc_Constant["NearFlag"]
	end
	return nCurFlag,nToFlag
end


--选择：我要进阶
function IronGateInductNpc_Improve(nNpcId)
	--非铁扇门职业
	if not IronGateInductNpc_IsIronGatePro() then
		return
	end
	
	local nUserPro = Get_UserProfession()
	--已经是最高的职业阶级
	if tIronGateInductNpc_Reward["Improve"][nUserPro] == nil then
		return
	end
	
	local nMete = Get_UserMetempsychosis()
	if nMete >= 3 then
		--特转以上不获得奖励
		local nNextProfession =tIronGateInductNpc_Reward["Improve"][nUserPro]["NextPro"]
		local nSex = Get_UserSex()
		User_SetProfession(nNextProfession)
		User_TalkChannel2005(tIronGateInductNpc_Text["LastImprove"][nSex])
		
		--获得成就
		local nAchPos = tIronGateInductNpc_Achi[nNextProfession] --成就标识位=position
		local nUserId = Get_UserId()
		if not  User_ChkAchByAchPosition(nAchPos,nUserId) then
			User_AddAchByAchPosition(nAchPos,nUserId)
		end
		return
	end
	
	
	--背包空间不足
	local nNeedSpace = tIronGateInductNpc_Reward["Improve"][nUserPro]["NeedSpace"]
	if not User_CheckLeftSpace(nNeedSpace) then
		User_TalkChannel2005(tIronGateInductNpc_Text["NoSpace"])
		return
	end
	
	--进阶需要的物品判断,进阶最高职业需要消耗月光宝盒
	if tIronGateInductNpc_Reward["Improve"][nUserPro]["NeedItem"] ~=nil then
		local nNeedItem = IronGateInductNpc_GetBagMoonItemId()
		if nNeedItem == -1 then
			--没有月光宝盒
			LinkNpcGossipFunc_New(nNpcId,"3-7")
			return
		else
			if not (Item_ChkItem(nNeedItem) and Item_DelItem(nNeedItem)) then
				return
			end 
		end
	end
	
	--就职
	local nNextProfession =tIronGateInductNpc_Reward["Improve"][nUserPro]["NextPro"]
	User_SetProfession(nNextProfession)
	
	--获得成就
	local nAchPos = tIronGateInductNpc_Achi[nNextProfession] --成就标识位=position
	local nUserId = Get_UserId()
	if not  User_ChkAchByAchPosition(nAchPos,nUserId) then
		User_AddAchByAchPosition(nAchPos,nUserId)
	end
	
	--获得奖励：就职礼包（0,1,2转才有礼包，160的就职礼包只有0转才有）
	if SpecialServer_ChkNoGiftServer() and nUserPro == 16004 then
		RewardTemplate_Reward(tIronGateInductNpc_Reward["Improve"]["NewGet"])
		return
	end
	if tIronGateInductNpc_Reward["Improve"][nUserPro][nMete] ~=nil then
		RewardTemplate_Reward(tIronGateInductNpc_Reward["Improve"][nUserPro][nMete])
	end
end



--切换远近战状态，对白链接
function IronGateInductNpc_ChkSwitchLink(nNpcId)
	local nEvent = tIronGateInductNpc_Stc["EventType"]
	local nData = tIronGateInductNpc_Stc["DataType"]
	local nIsSwitch = tIronGateInductNpc_Stc["HasSwitch"]
	if Task_ChkStcValue(nEvent,nData,">=",nIsSwitch) then
		--切换过状态
		local nEachTime = tIronGateInductNpc_Stc["EachTime"]
		if not Task_StcInterval(nEvent,nData,nEachTime,4) then
			--有物品,消耗物品，否则消耗天石
			LinkNpcGossipFunc_New(nNpcId,"4-2")
			return
		end
	end
	--第一次，或者隔了切换天数，免费切换
	LinkNpcGossipFunc_New(nNpcId,"4-1")
	
end


--花费天石
function IronGateInductNpc_SpendEMoneyToSwitch(nNpcId)
	local nCostEMoney = tIronGateInductNpc_Constant["CostEMoney"]
	if Get_UserEMoney() >= nCostEMoney then
		LinkNpcGossipFunc_New(nNpcId,"4-6")
	else
		--天石不足
		LinkNpcGossipFunc_New(nNpcId,"4-5")
	end
end


-- 程序新增接口：
-- bool TestUserFlag(OBJID idUser,int nFlag)
-- 判断玩家标志位，agr1 : 玩家id，arg2:标志位，成功返回true,失败返回false
--注： 标志位：
		--1 表示首冲玩家特权标志
		--2 表示查看地面物品属性的特权
		--4 表示首冲礼包获取情况
		--8 表示铁扇近身标记，nFlag=8,返回true是近身，否则是远程
--bool SwitchIroFanNearOrFar(OBJID idUser,int nFlag)
	--切换铁扇远近方式，arg2 :=8 表示切换近战，=0 表示切换远战，切换成功返回true

-- 铁扇门切换那个方式确认了。
	-- 每30天可以免费切换一次。
	-- 免费部分用完也可以使用270天石 或者 新写一个道具来抵扣
	
--切换至近/远战
--nChooseIndex:1 免费切换，2 花费物品，3 花费天石
function IronGateInductNpc_SwitchNearOrFarFight(nNpcId,nChooseIndex)
	--非铁扇门职业
	if not IronGateInductNpc_IsIronGatePro() then
		return
	end
	
	--扣除消耗的物品或天石
	if nChooseIndex == 2 then
		local nNeedItem = tIronGateInductNpc_Constant["CostItem"]
		if not (Item_ChkItem(nNeedItem) and Item_DelItem(nNeedItem)) then
			--物品扣除失败
			LinkNpcGossipFunc_New(nNpcId,"4-4")
			return
		else
			--打消耗物品log
			Sys_SaveActionTaskLog(string.format(tIronGateInductNpc_Log[2],nNeedItem))
		end
	elseif nChooseIndex==3 then
		local nCostEMoney = tIronGateInductNpc_Constant["CostEMoney"]
		if Get_UserEMoney() >= nCostEMoney then
			--扣天石，打消耗天石log
			User_AddEMoney(-nCostEMoney)
			Sys_SaveActionTaskLog(string.format(tIronGateInductNpc_Log[1],nCostEMoney))
			Sys_SaveEmoneyBuy(string.format(tIronGateInductNpc_Log["EMoney"],nCostEMoney,nCostEMoney))
		else
			--天石不足
			LinkNpcGossipFunc_New(nNpcId,"4-5")
			return
		end
	end
	
	--置掩码
	local nEvent = tIronGateInductNpc_Stc["EventType"]
	local nData = tIronGateInductNpc_Stc["DataType"]
	local nIsSwitch = tIronGateInductNpc_Stc["HasSwitch"]
	Task_SetStatistic(nEvent,nData,nIsSwitch,1)
	Task_SetStcTimestamp(nEvent,nData,0)
	
	--切换形态
	local nUserId = Get_UserId()
	local nCurFlag,nToFlag = IronGateInductNpc_GetCurLiuPaiFlag()
	User_SwitchIroFanNearOrFar(nToFlag,nUserId)
	
	--对白提示
	local sLiuPaiName = tIronGateInductNpc_Text["LiuPaiName"][nToFlag]
	tNpcGossip[nNpcId]["Text431"] = string.format(tIronGateInductNpc_Text[nNpcId]["Text431"],sLiuPaiName)
	LinkNpcGossipFunc_New(nNpcId,"4-3")
end


--格式化技能选项,nFlag =1 近战，=2 远程；nSkillIndex 技能索引
function IronGateInductNpc_FormatSkillOption(nNpcId,nFlag,nSkillIndex)
	local nMagicType = tIronGateInductNpc_SkillSet[nFlag][nSkillIndex]["MagicType"]
	local nNeedLev = tIronGateInductNpc_SkillSet[nFlag][nSkillIndex]["NeedLev"]
	local sMagicName = tIronGateInductNpc_Text["MagicName"][nFlag][nSkillIndex]
	if Magic_ChkType(nMagicType) then
		tNpcGossip[nNpcId]["Option6"..nFlag..nSkillIndex] = string.format(tIronGateInductNpc_Text[nNpcId]["Option611"]["HasLearn"],sMagicName,nNeedLev)
	else
	local sTypeName = tIronGateInductNpc_Text["TypeName"][nMagicType]
		tNpcGossip[nNpcId]["Option6"..nFlag..nSkillIndex] = string.format(tIronGateInductNpc_Text[nNpcId]["Option611"]["NotLearn"],sMagicName,nNeedLev,sTypeName)
	end
	return true
end


--学习技能
--nFightFlag=1 表示近战 =2 表示远程； nSkillIndex 技能索引 tIronGateInductNpc_SkillSet
function IronGateInductNpc_LearnSkill(nNpcId,nFightFlag,nSkillIndex)
	--非铁扇门职业
	if not IronGateInductNpc_IsIronGatePro() then
		return
	end
	
	local nMagicType = tIronGateInductNpc_SkillSet[nFightFlag][nSkillIndex]["MagicType"]
	local nNeedLev = tIronGateInductNpc_SkillSet[nFightFlag][nSkillIndex]["NeedLev"]
	local sMagicName = tIronGateInductNpc_Text["MagicName"][nFightFlag][nSkillIndex]
	local nUserLevel = Get_UserLevel()
	local sSexName = IronGateInductNpc_GetSexName()
	
	--等级不足
	if nUserLevel < nNeedLev then
		tNpcGossip[nNpcId]["Text651"] = string.format(tIronGateInductNpc_Text[nNpcId]["Text651"],sMagicName,sSexName,sSexName,nNeedLev)
		tNpcGossip[nNpcId]["Option651"] = string.format(tIronGateInductNpc_Text[nNpcId]["Option651"],nNeedLev)
		LinkNpcGossipFunc_New(nNpcId,"6-5")
		return
	end
	
	-- 学习技能
	if not Magic_ChkType(nMagicType) then
		if Magic_Learn(nMagicType) then
			LinkNpcGossipFunc_New(nNpcId,"5-1")
			User_TalkChannel2005(string.format(tIronGateInductNpc_Text["LearnSkill"],sMagicName))
		end
	else
		tNpcGossip[nNpcId]["Text661"] = string.format(tIronGateInductNpc_Text[nNpcId]["Text661"],sSexName)
		LinkNpcGossipFunc_New(nNpcId,"6-6")
	end
end


--非铁扇门职业学习 1世转世技能
function IronGateInductNpc_NotIronLearnClear(nNpcId)
	--铁扇门职业
	if IronGateInductNpc_IsIronGatePro() then
		return
	end
	
	local nUserId = Get_UserId()
	--转世不满足
	if Get_UserMetempsychosis() <1 then
		Sys_MsgBox(tIronGateInductNpc_Text["NotClearLev"])
		return
	end
	
	--1转
	if Get_UserMetempsychosis() == 1 then
		local nOldPro =  Get_UserFirstPro(nUserId)
		if not IronGateInductNpc_IsIronGatePro(nOldPro) then
			--前世非铁扇门
			Sys_MsgBox(tIronGateInductNpc_Text["NotIronBefore_1"])
			return
		else
			local nMagicType = tIronGateInductNpc_SkillSet[3][1]["MagicType"]
			if Magic_ChkType(nMagicType) then
				Sys_MsgBox(tIronGateInductNpc_Text["NotIronLearned"])
			else
				Magic_Learn(nMagicType)
			end
		end
	end
	
	if Get_UserMetempsychosis() > 1 then
		local nOldPro = Get_UserOldPro(nUserId) --取玩家前世职业
		local nUserFirstPro = Get_UserFirstPro(nUserId) --取玩家前前世职业
		if IronGateInductNpc_IsIronGatePro(nOldPro) or IronGateInductNpc_IsIronGatePro(nUserFirstPro) then
			local nMagicType = tIronGateInductNpc_SkillSet[3][1]["MagicType"]
			if Magic_ChkType(nMagicType) then
				Sys_MsgBox(tIronGateInductNpc_Text["NotIronLearned"])
			else
				Magic_Learn(nMagicType)
			end
		else
			--前两世非铁扇门
			Sys_MsgBox(tIronGateInductNpc_Text["NotIronBefore_2"])
			return
		end
	end
	
	
end


--学习转世技能 ，-- sql  6073395 ，ACTIONTYPE  1094
--nClearIndex:1--1转，2--2转，3--纯转
function IronGateInductNpc_LearnClearSkill(nNpcId,nClearIndex)
	--非铁扇门职业
	if not IronGateInductNpc_IsIronGatePro() then
		return
	end
	
	--转世不满足
	if Get_UserMetempsychosis() <1 then
		Sys_MsgBox(tIronGateInductNpc_Text["NotClearLev"])
		return
	end
	
	--得到铁扇门的转世次数
	local nIronMete = IronGateInductNpc_GetIronMete()
	
	if nIronMete == nClearIndex then
		local nMagicType = tIronGateInductNpc_SkillSet[3][nIronMete]["MagicType"]
		local nNeedLev = tIronGateInductNpc_SkillSet[3][nIronMete]["NeedLev"]
		local sMagicName = tIronGateInductNpc_Text["MagicName"][3][nIronMete]
		
		if Magic_ChkType(nMagicType) then
			--已经学习当前转世的技能
			local sSexName = IronGateInductNpc_GetSexName()
			Sys_MsgBox(string.format(tIronGateInductNpc_Text["HasClearSkill"],sSexName))
		else
			--删除其他转世技能（一世，或者二世或者三世的技能）
			for i=1,3 do
				local nCurMagicType =  tIronGateInductNpc_SkillSet[3][i]["MagicType"]
				if Magic_ChkType(nCurMagicType) then
					if not Magic_Del(nCurMagicType) then
						return 
					end
				end
			end
			Magic_Learn(nMagicType)
			User_TalkChannel2005(string.format(tIronGateInductNpc_Text["LearnClearSkill"],sMagicName))
		end
		
	end
end


--得到铁扇门的转世次数，1--1转，2--2转，3--纯转； 未转世或非铁扇门，返回0
function IronGateInductNpc_GetIronMete()
	local nUserId = Get_UserId()
	local nMeteTimes = Get_UserMetempsychosis(nUserId) --玩家转世次数
	local nUserPro = Get_UserProfession(nUserId) --取玩家职业
	
	--非铁扇门职业
	if not IronGateInductNpc_IsIronGatePro(nUserPro) then
		return 0
	end
	
	--转世不满足
	if nMeteTimes < 1 then
		return 0 
	end
	
	--铁扇1转，今世是铁扇门
	if nMeteTimes == 1  then
		--当前世是铁扇门，未转世前也是铁扇门
		--  1转的时候，获得前世职业，需要通过Get_UserFirstPro(nUserId)，前世的职业保留在cq_user的first_prof
		local nOldPro =  Get_UserFirstPro(nUserId)
		if IronGateInductNpc_IsIronGatePro(nOldPro) then
			return 2
		else
			return 1
		end
	end
	
	
	--2转及以上
	if nMeteTimes >= 2 then
		local nOldPro = Get_UserOldPro(nUserId) --取玩家前世职业
		local nUserFirstPro = Get_UserFirstPro(nUserId) --取玩家前前世职业
		
		if IronGateInductNpc_IsIronGatePro(nUserFirstPro) and IronGateInductNpc_IsIronGatePro(nOldPro) then
			return 3 --三世纯转
		elseif (not IronGateInductNpc_IsIronGatePro(nUserFirstPro)) and IronGateInductNpc_IsIronGatePro(nOldPro) then
			return 2 --2世都是铁扇门
		else
			return 1 --今世是铁扇门
		end
		
	end
	
end


--判断铁扇门，是否有最后一个主线任务
--true ：没有或者完成过，false:有，且未完成
function IronGateInductNpc_IsTaskForIron()
	local nTaskId = tIronGateInductNpc_Constant["LastTask"]
	if Task_ChkTaskDetail(nTaskId) then
		if not Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then
			return false
		end
	end
	
	return true
end

--判断非铁扇门职业，是否完成过：非铁扇门职业第一个主线任务
--true ：没有第一个主线任务，或者完成过；false :接了第一个主线任务(未完成)
function IronGateInductNpc_IsTaskForNotIron()
	 --非铁扇门职业第一个主线任务
	local nTaskId = tIronGateInductNpc_Constant["MainTask"]
	if Task_ChkTaskDetail(nTaskId) then
		if not Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then
			return false
		end
	end
	
	return true
end


--非铁扇门职业:完成第一个主线任务
function IronGateInductNpc_CompleteTaskForNotIron(nNpcId)
	--非铁扇门职业第一个主线任务
	local nTaskId = tIronGateInductNpc_Constant["MainTask"]
	if Task_ChkTaskDetail(nTaskId) and Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",0) then
		Task_SetTaskDetailData1(nTaskId,1)
		Task_SetTaskDetailCompleteFlag(nTaskId,1)
		User_EffectAdd("self","angelwing")
		
		--对白提示
		LinkNpcGossipFunc_New(nNpcId,"8-1")
		
		--弹漫画
		-- User_NoviceTeaching(tIronGateInductNpc_Constant["NotIronCarton"])
	end
end


--铁扇门主线：最后一个任务
function IronGateInductNpc_CompleteLastTask(nNpcId)
	--非铁扇门职业
	if not IronGateInductNpc_IsIronGatePro(nUserPro) then
		return
	end
	
	local nTaskId = tIronGateInductNpc_Constant["LastTask"]
	if Task_ChkTaskDetail(nTaskId) and Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",0) then
		--背包空间不足
		local nNeedSpace = tIronGateInductNpc_Reward["MainTask"]["NeedSpace"]
		if not User_CheckLeftSpace(nNeedSpace) then
			User_TalkChannel2005(tIronGateInductNpc_Text["NoSpace"])
			return
		end
		
		--任务完成
		Task_SetTaskDetailData1(nTaskId,1)
		Task_SetTaskDetailCompleteFlag(nTaskId,1)
		
		--弹漫画
		local nEvent = tIronGateInductNpc_Stc[3]["EventType"]
		local nData = tIronGateInductNpc_Stc[3]["DataType"]
		if not Task_ChkStcValue(nEvent,nData,">=",1) then
			Task_SetStatistic(nEvent,nData,1,1)
			Task_SetStcTimestamp(nEvent,nData,0)
			User_NoviceTeaching(tIronGateInductNpc_Constant["IronCarton"])
		end
		
		--获得奖励
		RewardTemplate_Reward(tIronGateInductNpc_Reward["MainTask"])
		Sys_MsgBox(tIronGateInductNpc_Text["CompleteMainTask"])
	end
end



----------------------------------NPC部分---------------------------------------------
--铁扇门就职NPC
--新增头像
tNpcFace[5158] = 333

tNpcGossip[19634]= tNpcGossip[19634] or DefaultNpc:new{}
tNpcGossip[19634]["OptionHidden"] = 1

--非铁扇门职业:没有第一个主线任务，或者完成过
tNpcGossip[19634]["Text1-1"] = {111,112,113}
tNpcGossip[19634]["Text111"] = tIronGateInductNpc_Text[19634]["Text111"]
tNpcGossip[19634]["Text112"] = tIronGateInductNpc_Text[19634]["Text112"]
tNpcGossip[19634]["Text113"] = tIronGateInductNpc_Text[19634]["Text113"]
tNpcGossip[19634]["ChkFunc1-1"] = function ()
	if not IronGateInductNpc_IsIronGatePro() then
		return IronGateInductNpc_IsTaskForNotIron()
	end
	--是铁扇门直接返回false
	return false
end

tNpcGossip[19634]["tOption1-1"] = {111}
tNpcGossip[19634]["Option111"] = tIronGateInductNpc_Text[19634]["Option111"][1]
tNpcGossip[19634]["OptionChkFunc111"] = function ()
	local nUserPro = Get_UserProfession()
	--就职到最高职阶后 屏蔽第一个就职选项
	local nMagicType = tIronGateInductNpc_SkillSet[3][1]["MagicType"]
	if Magic_ChkType(nMagicType)then
		tNpcGossip[19634]["Option111"] = tIronGateInductNpc_Text[19634]["Option111"][1]
	else
		tNpcGossip[19634]["Option111"] = tIronGateInductNpc_Text[19634]["Option111"][2]
	end
	return true 
end
tNpcGossip[19634]["OptionFunc111"] = "IronGateInductNpc_NotIronLearnClear</N>19634"



--铁扇门职业
tNpcGossip[19634]["Text1-2"] = {111,112,121,122}
tNpcGossip[19634]["Text121"] = tIronGateInductNpc_Text[19634]["Text121"]
tNpcGossip[19634]["Text122"] = tIronGateInductNpc_Text[19634]["Text122"]
tNpcGossip[19634]["ChkFunc1-2"] = function ()
	if IronGateInductNpc_IsIronGatePro() then
		--铁扇门 没有主线任务的最后一个任务
		return IronGateInductNpc_IsTaskForIron()
	end
	return false
end
tNpcGossip[19634]["tOption1-2"] = {121,123,124,125}
tNpcGossip[19634]["Option121"] = tIronGateInductNpc_Text[19634]["Option121"] --任务：职业就职介绍
tNpcGossip[19634]["OptionPoint121"] = "7-1"
tNpcGossip[19634]["OptionChkFunc121"] = IronGateInductNpc_CheckInductTask

tNpcGossip[19634]["Option122"] = tIronGateInductNpc_Text[19634]["Option122"] --职业就职与晋阶
tNpcGossip[19634]["OptionFunc122"] = "IronGateInductNpc_ImproveProfessionLink</N>19634"
tNpcGossip[19634]["OptionChkFunc122"] = function ()
	local nUserPro = Get_UserProfession()
	--就职到最高职阶后 屏蔽第一个就职选项
	return  nUserPro < G_PRO_IroFan5
end

tNpcGossip[19634]["Option123"] = tIronGateInductNpc_Text[19634]["Option123"] --学习技能
tNpcGossip[19634]["OptionPoint123"] = "5-1"

tNpcGossip[19634]["Option124"] = tIronGateInductNpc_Text[19634]["Option124"] --切换远近战状态
tNpcGossip[19634]["OptionFunc124"] = "IronGateInductNpc_ChkSwitchLink</N>19634"

tNpcGossip[19634]["Option125"] = tIronGateInductNpc_Text[19634]["Option125"] --师兄，我先告辞了


--铁扇门主线：最后一个任务
-- tNpcGossip[19634]["Option126"] = tIronGateInductNpc_Text[19634]["Option126"]
-- tNpcGossip[19634]["OptionChkFunc126"] = function ()
	-- local nTaskId = tIronGateInductNpc_Constant["LastTask"]
	-- return Task_ChkTaskDetail(nTaskId) and Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",0)
-- end
-- tNpcGossip[19634]["OptionFunc126"] = "LinkNpcGossipFunc_New</N>19634</S>9-1"


--非铁扇门职业:接了第一个主线任务
tNpcGossip[19634]["Text1-3"] = {111,112,131}
tNpcGossip[19634]["Text131"] = tIronGateInductNpc_Text[19634]["Text131"]
tNpcGossip[19634]["ChkFunc1-3"] = function ()
	local sUserName = Get_UserName()
	tNpcGossip[19634]["Text131"] = string.format(tIronGateInductNpc_Text[19634]["Text131"],sUserName)
	if not IronGateInductNpc_IsIronGatePro() then
		return not IronGateInductNpc_IsTaskForNotIron()
	end
	--是铁扇门直接返回false
	return false
end

tNpcGossip[19634]["tOption1-3"] = {131,132}
tNpcGossip[19634]["Option131"] = tIronGateInductNpc_Text[19634]["Option131"]
tNpcGossip[19634]["OptionFunc131"] = "IronGateInductNpc_CompleteTaskForNotIron</N>19634"

tNpcGossip[19634]["Option132"] = tIronGateInductNpc_Text[19634]["Option132"]

--铁扇门，接了最后一个主线任务
tNpcGossip[19634]["Text1-4"] = {111,112,141}
tNpcGossip[19634]["Text141"] = tIronGateInductNpc_Text[19634]["Text141"]
tNpcGossip[19634]["ChkFunc1-4"] = function ()
	local sSexName = IronGateInductNpc_GetSexName()
	tNpcGossip[19634]["Text141"] = string.format(tIronGateInductNpc_Text[19634]["Text141"],sSexName)
	if IronGateInductNpc_IsIronGatePro() then
		--铁扇门 没有主线任务的最后一个任务
		return not IronGateInductNpc_IsTaskForIron()
	end
	return false
end
tNpcGossip[19634]["tOption1-4"] = {141}
tNpcGossip[19634]["Option141"] = tIronGateInductNpc_Text[19634]["Option141"]
tNpcGossip[19634]["OptionPoint141"] = "9-2"


--职业进阶等级不足对白提示
tNpcGossip[19634]["Text2-1"] = {211}
tNpcGossip[19634]["Text211"] = tIronGateInductNpc_Text[19634]["Text211"]
tNpcGossip[19634]["tOption2-1"] = {211}
tNpcGossip[19634]["Option211"] = tIronGateInductNpc_Text[19634]["Option211"]


--职业进阶等级满足，可以选择进阶下一阶段
--铁扇见习弟子晋阶为铁扇外堂弟子
tNpcGossip[19634]["Text3-1"] = {311,312}
tNpcGossip[19634]["Text311"] = tIronGateInductNpc_Text[19634]["Text311"]
tNpcGossip[19634]["Text312"] = tIronGateInductNpc_Text[19634]["Text312"]
tNpcGossip[19634]["ChkFunc3-1"] = function ()
	local sNextProName = IronGateInductNpc_GetNextProName()
	tNpcGossip[19634]["Text312"] = string.format(tIronGateInductNpc_Text[19634]["Text312"],sNextProName)
	return true
end
tNpcGossip[19634]["tOption3-1"] = {311}
tNpcGossip[19634]["Option311"] = tIronGateInductNpc_Text[19634]["Option311"]
tNpcGossip[19634]["OptionFunc311"] = "IronGateInductNpc_Improve</N>19634"


--铁扇外堂弟子晋阶为铁扇入室弟子
tNpcGossip[19634]["Text3-2"] = {321,322}
tNpcGossip[19634]["Text321"] = tIronGateInductNpc_Text[19634]["Text321"]
tNpcGossip[19634]["Text322"] = tIronGateInductNpc_Text[19634]["Text322"]
tNpcGossip[19634]["ChkFunc3-2"] = function ()
	local sSexName = IronGateInductNpc_GetSexName()
	tNpcGossip[19634]["Text322"] = string.format(tIronGateInductNpc_Text[19634]["Text322"],sSexName)
	return true
end
tNpcGossip[19634]["tOption3-2"] = {321}
tNpcGossip[19634]["Option321"] = tIronGateInductNpc_Text[19634]["Option321"]
tNpcGossip[19634]["OptionFunc321"] = "IronGateInductNpc_Improve</N>19634"


--铁扇门入室弟子晋阶为铁扇门精英弟子
tNpcGossip[19634]["Text3-3"] = {331,332}
tNpcGossip[19634]["Text331"] = tIronGateInductNpc_Text[19634]["Text331"]
tNpcGossip[19634]["Text332"] = tIronGateInductNpc_Text[19634]["Text332"]
tNpcGossip[19634]["ChkFunc3-3"] = function ()
	local sNextProName = IronGateInductNpc_GetNextProName()
	tNpcGossip[19634]["Text332"] = string.format(tIronGateInductNpc_Text[19634]["Text332"],sNextProName)
	return true
end
tNpcGossip[19634]["tOption3-3"] = {331}
tNpcGossip[19634]["Option331"] = tIronGateInductNpc_Text[19634]["Option331"]
tNpcGossip[19634]["OptionFunc331"] = "IronGateInductNpc_Improve</N>19634"


--铁扇门精英弟子晋阶为铁扇门豪侠
tNpcGossip[19634]["Text3-4"] = {341,342}
tNpcGossip[19634]["Text341"] = tIronGateInductNpc_Text[19634]["Text341"]
tNpcGossip[19634]["Text342"] = tIronGateInductNpc_Text[19634]["Text342"]
tNpcGossip[19634]["ChkFunc3-4"] = function ()
	local sSexName = IronGateInductNpc_GetSexName()
	local sNextProName = IronGateInductNpc_GetNextProName()
	tNpcGossip[19634]["Text341"] = string.format(tIronGateInductNpc_Text[19634]["Text341"],sSexName)
	tNpcGossip[19634]["Text342"] = string.format(tIronGateInductNpc_Text[19634]["Text342"],sSexName,sNextProName)
	return true
end
tNpcGossip[19634]["tOption3-4"] = {341}
tNpcGossip[19634]["Option341"] = tIronGateInductNpc_Text[19634]["Option341"]
tNpcGossip[19634]["OptionFunc341"] = "IronGateInductNpc_Improve</N>19634"


--铁扇门豪侠晋阶为逍遥扇仙
tNpcGossip[19634]["Text3-5"] = {351,352}
tNpcGossip[19634]["Text351"] = tIronGateInductNpc_Text[19634]["Text351"]
tNpcGossip[19634]["Text352"] = tIronGateInductNpc_Text[19634]["Text352"]
tNpcGossip[19634]["ChkFunc3-5"] = function ()
	local sSexName = IronGateInductNpc_GetSexName()
	local sNextProName = IronGateInductNpc_GetNextProName()
	tNpcGossip[19634]["Text351"] = string.format(tIronGateInductNpc_Text[19634]["Text351"],sSexName)
	tNpcGossip[19634]["Text352"] = string.format(tIronGateInductNpc_Text[19634]["Text352"],sSexName,sNextProName)
	return true
end
tNpcGossip[19634]["tOption3-5"] = {351}
tNpcGossip[19634]["Option351"] = tIronGateInductNpc_Text[19634]["Option351"]
tNpcGossip[19634]["OptionFunc351"] = "IronGateInductNpc_Improve</N>19634"


--已经无法进阶
tNpcGossip[19634]["Text3-6"] = {361}
tNpcGossip[19634]["Text361"] = tIronGateInductNpc_Text[19634]["Text361"]
tNpcGossip[19634]["ChkFunc3-6"] = function ()
	local sSexName = IronGateInductNpc_GetSexName()
	local sNextProName = IronGateInductNpc_GetNextProName()
	tNpcGossip[19634]["Text361"] = string.format(tIronGateInductNpc_Text[19634]["Text361"],sSexName,sNextProName,sSexName)
	return true
end
tNpcGossip[19634]["tOption3-6"] = {361}
tNpcGossip[19634]["Option361"] = tIronGateInductNpc_Text[19634]["Option361"]


--没有月光宝盒
tNpcGossip[19634]["Text3-7"] = {371}
tNpcGossip[19634]["Text371"] = tIronGateInductNpc_Text[19634]["Text371"]
tNpcGossip[19634]["ChkFunc3-7"] = function ()
	local sSexName = IronGateInductNpc_GetSexName()
	local sNextProName = IronGateInductNpc_GetNextProName()
	tNpcGossip[19634]["Text371"] = string.format(tIronGateInductNpc_Text[19634]["Text371"],sSexName,sNextProName)
	return true
end



--切换远近战状态(免费)
tNpcGossip[19634]["Text4-1"] = {411,412,413,414,415,416,412,417}
tNpcGossip[19634]["Text411"] = tIronGateInductNpc_Text[19634]["Text411"]
tNpcGossip[19634]["Text412"] = tIronGateInductNpc_Text[19634]["Text412"]
tNpcGossip[19634]["Text413"] = tIronGateInductNpc_Text[19634]["Text413"]
tNpcGossip[19634]["Text414"] = tIronGateInductNpc_Text[19634]["Text414"]
tNpcGossip[19634]["Text415"] = tIronGateInductNpc_Text[19634]["Text415"]
tNpcGossip[19634]["Text416"] = tIronGateInductNpc_Text[19634]["Text416"]
tNpcGossip[19634]["Text417"] = tIronGateInductNpc_Text[19634]["Text417"]
tNpcGossip[19634]["ChkFunc4-1"] = function ()
	local nCurFlag,nToFlag =IronGateInductNpc_GetCurLiuPaiFlag()
	local sLiuPaiName = tIronGateInductNpc_Text["LiuPaiName"][nCurFlag]
	-- local sToLiuPaiName = tIronGateInductNpc_Text["LiuPaiName"][nToFlag]
	tNpcGossip[19634]["Text417"] = string.format(tIronGateInductNpc_Text[19634]["Text417"],sLiuPaiName)
	return true
end

tNpcGossip[19634]["tOption4-1"] = {411,412}
tNpcGossip[19634]["Option411"] = tIronGateInductNpc_Text[19634]["Option411"]
tNpcGossip[19634]["OptionFunc411"] = "IronGateInductNpc_SwitchNearOrFarFight</N>19634</N>1"
tNpcGossip[19634]["OptionChkFunc411"] = function ()
	local nCurFlag,nToFlag =IronGateInductNpc_GetCurLiuPaiFlag()
	local sLiuPaiName = tIronGateInductNpc_Text["LiuPaiName"][nToFlag]
	tNpcGossip[19634]["Option411"] = string.format(tIronGateInductNpc_Text[19634]["Option411"],sLiuPaiName)
	return true
end

tNpcGossip[19634]["Option412"] = tIronGateInductNpc_Text[19634]["Option412"]


--切换远近战状态(花费天石、物品)
tNpcGossip[19634]["Text4-2"] = {411,412,413,414,415,416,412,427}
-- tNpcGossip[19634]["Text421"] = tIronGateInductNpc_Text[19634]["Text421"]
-- tNpcGossip[19634]["Text422"] = tIronGateInductNpc_Text[19634]["Text422"]
tNpcGossip[19634]["Text427"] = tIronGateInductNpc_Text[19634]["Text427"]
tNpcGossip[19634]["ChkFunc4-2"] = function ()
	local nCurFlag,nToFlag =IronGateInductNpc_GetCurLiuPaiFlag()
	local sLiuPaiName = tIronGateInductNpc_Text["LiuPaiName"][nCurFlag]
	tNpcGossip[19634]["Text427"] = string.format(tIronGateInductNpc_Text[19634]["Text427"],sLiuPaiName)
	return true
end

tNpcGossip[19634]["tOption4-2"] = {421,422,412}
tNpcGossip[19634]["Option421"] = tIronGateInductNpc_Text[19634]["Option421"] --花费物品
tNpcGossip[19634]["OptionFunc421"] = "IronGateInductNpc_SwitchNearOrFarFight</N>19634</N>2"
tNpcGossip[19634]["OptionChkFunc421"] = function ()
	local nCurFlag,nToFlag =IronGateInductNpc_GetCurLiuPaiFlag()
	local sLiuPaiName = tIronGateInductNpc_Text["LiuPaiName"][nToFlag]
	tNpcGossip[19634]["Option421"] =  string.format(tIronGateInductNpc_Text[19634]["Option421"],sLiuPaiName)
	return true
end

tNpcGossip[19634]["Option422"] = tIronGateInductNpc_Text[19634]["Option422"] --花费天石
tNpcGossip[19634]["OptionFunc422"] = "IronGateInductNpc_SpendEMoneyToSwitch</N>19634"
tNpcGossip[19634]["OptionChkFunc422"] = function ()
	local nCurFlag,nToFlag =IronGateInductNpc_GetCurLiuPaiFlag()
	local sLiuPaiName = tIronGateInductNpc_Text["LiuPaiName"][nToFlag]
	tNpcGossip[19634]["Option422"] =  string.format(tIronGateInductNpc_Text[19634]["Option422"],sLiuPaiName)
	return true
end


--切换成功
tNpcGossip[19634]["Text4-3"] = {431}
tNpcGossip[19634]["Text431"] = tIronGateInductNpc_Text[19634]["Text431"]

tNpcGossip[19634]["tOption4-3"] = {431}
tNpcGossip[19634]["Option431"] = tIronGateInductNpc_Text[19634]["Option431"]

--没有铁扇令
tNpcGossip[19634]["Text4-4"] = {441}
tNpcGossip[19634]["Text441"] = tIronGateInductNpc_Text[19634]["Text441"]

tNpcGossip[19634]["tOption4-4"] = {441}
tNpcGossip[19634]["Option441"] = tIronGateInductNpc_Text[19634]["Option441"]

--天石不足
tNpcGossip[19634]["Text4-5"] = {451}
tNpcGossip[19634]["Text451"] = tIronGateInductNpc_Text[19634]["Text451"]

tNpcGossip[19634]["tOption4-5"] = {451}
tNpcGossip[19634]["Option451"] = tIronGateInductNpc_Text[19634]["Option451"]


--花费天石2次确认
tNpcGossip[19634]["Text4-6"] = {461}
tNpcGossip[19634]["Text461"] = tIronGateInductNpc_Text[19634]["Text461"]
tNpcGossip[19634]["ChkFunc4-6"] = function ()
	local nSpendEMoney = tIronGateInductNpc_Constant["CostEMoney"]
	local nCurFlag,nToFlag =IronGateInductNpc_GetCurLiuPaiFlag()
	local sLiuPaiName = tIronGateInductNpc_Text["LiuPaiName"][nToFlag]
	tNpcGossip[19634]["Text461"] = string.format(tIronGateInductNpc_Text[19634]["Text461"],nSpendEMoney,sLiuPaiName)
	return true
end

tNpcGossip[19634]["tOption4-6"] = {461,462}
tNpcGossip[19634]["Option461"] = tIronGateInductNpc_Text[19634]["Option461"]
tNpcGossip[19634]["OptionFunc461"] = "IronGateInductNpc_SwitchNearOrFarFight</N>19634</N>3"
tNpcGossip[19634]["OptionChkFunc461"] = function ()
	local nSpendEMoney = tIronGateInductNpc_Constant["CostEMoney"]
	tNpcGossip[19634]["Option461"] =  string.format(tIronGateInductNpc_Text[19634]["Option461"],nSpendEMoney)
	return true
end



--学习技能
tNpcGossip[19634]["Text5-1"] = {511,512,513}
tNpcGossip[19634]["Text511"] = tIronGateInductNpc_Text[19634]["Text511"]
tNpcGossip[19634]["Text512"] = tIronGateInductNpc_Text[19634]["Text512"]
tNpcGossip[19634]["Text513"] = tIronGateInductNpc_Text[19634]["Text513"]
tNpcGossip[19634]["tOption5-1"] = {511,512,513,514}
tNpcGossip[19634]["Option511"] = tIronGateInductNpc_Text[19634]["Option511"] --学习近战技能
tNpcGossip[19634]["OptionPoint511"] = "6-1"

tNpcGossip[19634]["Option512"] = tIronGateInductNpc_Text[19634]["Option512"] --学习远战技能
tNpcGossip[19634]["OptionPoint512"] = "6-2"

tNpcGossip[19634]["Option513"] = tIronGateInductNpc_Text[19634]["Option513"] --学习转世技能
tNpcGossip[19634]["OptionPoint513"] = "6-3"

tNpcGossip[19634]["Option514"] = tIronGateInductNpc_Text[19634]["Option514"] --学习通用技能
tNpcGossip[19634]["OptionPoint514"] = "6-4"

--近战技能
tNpcGossip[19634]["Text6-1"] = {611,612,613}
tNpcGossip[19634]["Text611"] = tIronGateInductNpc_Text[19634]["Text611"]
tNpcGossip[19634]["Text612"] = tIronGateInductNpc_Text[19634]["Text612"]
tNpcGossip[19634]["Text613"] = tIronGateInductNpc_Text[19634]["Text613"]
tNpcGossip[19634]["ChkFunc6-1"] = function ()
	local sSexName = IronGateInductNpc_GetSexName()
	tNpcGossip[19634]["Text613"] = string.format(tIronGateInductNpc_Text[19634]["Text613"],sSexName)
	return true
end

tNpcGossip[19634]["tOption6-1"] = {6111,611,612,613,614,615,616,617,618,619,6110}
tNpcGossip[19634]["Option611"] = tIronGateInductNpc_Text[19634]["Option611"]["NotLearn"]
tNpcGossip[19634]["OptionFunc611"] = "IronGateInductNpc_LearnSkill</N>19634</N>1</N>1"
tNpcGossip[19634]["OptionChkFunc611"] =function ()
	return IronGateInductNpc_FormatSkillOption(19634,1,1)
end

tNpcGossip[19634]["Option612"] = tIronGateInductNpc_Text[19634]["Option611"]["NotLearn"]
tNpcGossip[19634]["OptionFunc612"] = "IronGateInductNpc_LearnSkill</N>19634</N>1</N>2"
tNpcGossip[19634]["OptionChkFunc612"] =function ()
	return IronGateInductNpc_FormatSkillOption(19634,1,2)
end

tNpcGossip[19634]["Option613"] = tIronGateInductNpc_Text[19634]["Option611"]["NotLearn"]
tNpcGossip[19634]["OptionFunc613"] = "IronGateInductNpc_LearnSkill</N>19634</N>1</N>3"
tNpcGossip[19634]["OptionChkFunc613"]  =function ()
	return IronGateInductNpc_FormatSkillOption(19634,1,3)
end

tNpcGossip[19634]["Option614"] = tIronGateInductNpc_Text[19634]["Option611"]["NotLearn"]
tNpcGossip[19634]["OptionFunc614"] = "IronGateInductNpc_LearnSkill</N>19634</N>1</N>4"
tNpcGossip[19634]["OptionChkFunc614"] =function ()
	return IronGateInductNpc_FormatSkillOption(19634,1,4)
end

tNpcGossip[19634]["Option615"] = tIronGateInductNpc_Text[19634]["Option611"]["NotLearn"]
tNpcGossip[19634]["OptionFunc615"] = "IronGateInductNpc_LearnSkill</N>19634</N>1</N>5"
tNpcGossip[19634]["OptionChkFunc615"] =function ()
	return IronGateInductNpc_FormatSkillOption(19634,1,5)
end


tNpcGossip[19634]["Option616"] = tIronGateInductNpc_Text[19634]["Option611"]["NotLearn"]
tNpcGossip[19634]["OptionFunc616"] = "IronGateInductNpc_LearnSkill</N>19634</N>1</N>6"
tNpcGossip[19634]["OptionChkFunc616"] =function ()
	return IronGateInductNpc_FormatSkillOption(19634,1,6)
end


tNpcGossip[19634]["Option617"] = tIronGateInductNpc_Text[19634]["Option611"]["NotLearn"]
tNpcGossip[19634]["OptionFunc617"] = "IronGateInductNpc_LearnSkill</N>19634</N>1</N>7"
tNpcGossip[19634]["OptionChkFunc617"] =function ()
	return IronGateInductNpc_FormatSkillOption(19634,1,7)
end

tNpcGossip[19634]["Option618"] = tIronGateInductNpc_Text[19634]["Option611"]["NotLearn"]
tNpcGossip[19634]["OptionFunc618"] = "IronGateInductNpc_LearnSkill</N>19634</N>1</N>8"
tNpcGossip[19634]["OptionChkFunc618"] =function ()
	return IronGateInductNpc_FormatSkillOption(19634,1,8)
end

tNpcGossip[19634]["Option6111"] = tIronGateInductNpc_Text[19634]["Option611"]["NotLearn"]
tNpcGossip[19634]["OptionFunc6111"] = "IronGateInductNpc_LearnSkill</N>19634</N>1</N>11"
tNpcGossip[19634]["OptionChkFunc6111"] =function ()
	return IronGateInductNpc_FormatSkillOption(19634,1,11)
end

tNpcGossip[19634]["Option619"] = tIronGateInductNpc_Text[19634]["Option619"] --我想学习别的技能
tNpcGossip[19634]["OptionPoint619"] = "5-1"

tNpcGossip[19634]["Option6110"] = tIronGateInductNpc_Text[19634]["Option6110"]



--远战技能
tNpcGossip[19634]["Text6-2"] = {621,622}
tNpcGossip[19634]["Text621"] = tIronGateInductNpc_Text[19634]["Text621"]
tNpcGossip[19634]["Text622"] = tIronGateInductNpc_Text[19634]["Text622"]
tNpcGossip[19634]["ChkFunc6-2"] = function ()
	local sSexName = IronGateInductNpc_GetSexName()
	tNpcGossip[19634]["Text622"] = string.format(tIronGateInductNpc_Text[19634]["Text622"],sSexName)
	return true
end

tNpcGossip[19634]["tOption6-2"] = {621,622,623,624,625,619,6110}
tNpcGossip[19634]["Option621"] = tIronGateInductNpc_Text[19634]["Option611"]["NotLearn"]
tNpcGossip[19634]["OptionFunc621"] = "IronGateInductNpc_LearnSkill</N>19634</N>2</N>1"
tNpcGossip[19634]["OptionChkFunc621"] = function ()
	return IronGateInductNpc_FormatSkillOption(19634,2,1)
end

tNpcGossip[19634]["Option622"] = tIronGateInductNpc_Text[19634]["Option611"]
tNpcGossip[19634]["OptionFunc622"] = "IronGateInductNpc_LearnSkill</N>19634</N>2</N>2"
tNpcGossip[19634]["OptionChkFunc622"] = function ()
	return IronGateInductNpc_FormatSkillOption(19634,2,2)
end

tNpcGossip[19634]["Option623"] = tIronGateInductNpc_Text[19634]["Option611"]
tNpcGossip[19634]["OptionFunc623"] = "IronGateInductNpc_LearnSkill</N>19634</N>2</N>3"
tNpcGossip[19634]["OptionChkFunc623"] = function ()
	return IronGateInductNpc_FormatSkillOption(19634,2,3)
end

tNpcGossip[19634]["Option624"] = tIronGateInductNpc_Text[19634]["Option611"]
tNpcGossip[19634]["OptionFunc624"] = "IronGateInductNpc_LearnSkill</N>19634</N>2</N>4"
tNpcGossip[19634]["OptionChkFunc624"] = function ()
	return IronGateInductNpc_FormatSkillOption(19634,2,4)
end

tNpcGossip[19634]["Option625"] = tIronGateInductNpc_Text[19634]["Option611"]
tNpcGossip[19634]["OptionFunc625"] = "IronGateInductNpc_LearnSkill</N>19634</N>2</N>5"
tNpcGossip[19634]["OptionChkFunc625"] = function ()
	return IronGateInductNpc_FormatSkillOption(19634,2,5)
end



--学习转世技能
tNpcGossip[19634]["Text6-3"] = {631,632}
tNpcGossip[19634]["Text631"] = tIronGateInductNpc_Text[19634]["Text631"]
tNpcGossip[19634]["Text632"] = tIronGateInductNpc_Text[19634]["Text632"]

tNpcGossip[19634]["tOption6-3"] = {631,632,633,619,6110}
tNpcGossip[19634]["Option631"] = tIronGateInductNpc_Text[19634]["Option631"][1] --学乱心之风【一世】
tNpcGossip[19634]["OptionFunc631"] = "IronGateInductNpc_LearnClearSkill</N>19634</N>1"
tNpcGossip[19634]["OptionChkFunc631"] = function ()
	local nMagicType = tIronGateInductNpc_SkillSet[3][1]["MagicType"]
	if Magic_ChkType(nMagicType) then
		tNpcGossip[19634]["Option631"] = tIronGateInductNpc_Text[19634]["Option631"][2]
	else
		tNpcGossip[19634]["Option631"] = tIronGateInductNpc_Text[19634]["Option631"][1]
	end
	local nIronMete = IronGateInductNpc_GetIronMete()
	return nIronMete <= 1
end

tNpcGossip[19634]["Option632"] = tIronGateInductNpc_Text[19634]["Option632"][1] --学乱心之风【二世】
tNpcGossip[19634]["OptionFunc632"] = "IronGateInductNpc_LearnClearSkill</N>19634</N>2"
tNpcGossip[19634]["OptionChkFunc632"] = function ()
	local nMagicType = tIronGateInductNpc_SkillSet[3][2]["MagicType"]
	if Magic_ChkType(nMagicType) then
		tNpcGossip[19634]["Option632"] = tIronGateInductNpc_Text[19634]["Option632"][2]
	else
		tNpcGossip[19634]["Option632"] = tIronGateInductNpc_Text[19634]["Option632"][1]
	end
	local nIronMete = IronGateInductNpc_GetIronMete()
	return nIronMete == 2
end

tNpcGossip[19634]["Option633"] = tIronGateInductNpc_Text[19634]["Option633"][1] --学乱心之风【三世】
tNpcGossip[19634]["OptionFunc633"] = "IronGateInductNpc_LearnClearSkill</N>19634</N>3"
tNpcGossip[19634]["OptionChkFunc633"] = function ()
	local nMagicType = tIronGateInductNpc_SkillSet[3][3]["MagicType"]
	if Magic_ChkType(nMagicType) then
		tNpcGossip[19634]["Option633"] = tIronGateInductNpc_Text[19634]["Option633"][2]
	else
		tNpcGossip[19634]["Option633"] = tIronGateInductNpc_Text[19634]["Option633"][1]
	end
	local nIronMete = IronGateInductNpc_GetIronMete()
	return nIronMete >= 3
end


--学习通用技能
tNpcGossip[19634]["Text6-4"] = {641,642}
tNpcGossip[19634]["Text641"] = tIronGateInductNpc_Text[19634]["Text641"]

tNpcGossip[19634]["tOption6-4"] = {641,642,619,6110}
tNpcGossip[19634]["Option641"] = tIronGateInductNpc_Text[19634]["Option611"]["NotLearn"]
tNpcGossip[19634]["OptionFunc641"] = "IronGateInductNpc_LearnSkill</N>19634</N>4</N>1"
tNpcGossip[19634]["OptionChkFunc641"] = function ()
	return IronGateInductNpc_FormatSkillOption(19634,4,1)
end

tNpcGossip[19634]["Option642"] = tIronGateInductNpc_Text[19634]["Option611"]["NotLearn"]
tNpcGossip[19634]["OptionFunc642"] = "IronGateInductNpc_LearnSkill</N>19634</N>4</N>2"
tNpcGossip[19634]["OptionChkFunc642"] = function ()
	return IronGateInductNpc_FormatSkillOption(19634,4,2)
end



--学习技能，等级不足
tNpcGossip[19634]["Text6-5"] = {651}
tNpcGossip[19634]["Text651"] = tIronGateInductNpc_Text[19634]["Text651"]

tNpcGossip[19634]["tOption6-5"] = {651}
tNpcGossip[19634]["Option651"] = tIronGateInductNpc_Text[19634]["Option651"]
tNpcGossip[19634]["OptionPoint651"] = "5-1"


--已经学习过技能
tNpcGossip[19634]["Text6-6"] = {661}
tNpcGossip[19634]["Text661"] = tIronGateInductNpc_Text[19634]["Text661"]

tNpcGossip[19634]["tOption6-6"] = {661}
tNpcGossip[19634]["Option661"] = tIronGateInductNpc_Text[19634]["Option661"]
tNpcGossip[19634]["OptionPoint661"] = "5-1"


--任务：职业就职介绍
tNpcGossip[19634]["Text7-1"] = {711,712,713}
tNpcGossip[19634]["Text711"] = tIronGateInductNpc_Text[19634]["Text711"]
tNpcGossip[19634]["Text712"] = tIronGateInductNpc_Text[19634]["Text712"]
tNpcGossip[19634]["Text713"] = tIronGateInductNpc_Text[19634]["Text713"]

tNpcGossip[19634]["tOption7-1"] = {711}
tNpcGossip[19634]["Option711"] = tIronGateInductNpc_Text[19634]["Option711"]
tNpcGossip[19634]["OptionFunc711"] = "IronGateInductNpc_InductTask</N>19634"

tNpcGossip[19634]["Text7-2"] = {721,722,723}
tNpcGossip[19634]["Text721"] = tIronGateInductNpc_Text[19634]["Text721"]
tNpcGossip[19634]["Text722"] = tIronGateInductNpc_Text[19634]["Text722"]
tNpcGossip[19634]["Text723"] = tIronGateInductNpc_Text[19634]["Text723"]

tNpcGossip[19634]["tOption7-2"] = {721}
tNpcGossip[19634]["Option721"] = tIronGateInductNpc_Text[19634]["Option721"]
tNpcGossip[19634]["OptionPoint721"] = "7-3"


tNpcGossip[19634]["Text7-3"] = {731,732}
tNpcGossip[19634]["Text731"] = tIronGateInductNpc_Text[19634]["Text731"]
tNpcGossip[19634]["Text732"] = tIronGateInductNpc_Text[19634]["Text732"]

tNpcGossip[19634]["tOption7-3"] = {731}
tNpcGossip[19634]["Option731"] = tIronGateInductNpc_Text[19634]["Option731"]
tNpcGossip[19634]["OptionFunc731"] = "User_UserRandBoundTrans</N>1002</N>525</N>323</N>5</N>5</N>1"


--非铁扇门职业:完成第一个主线任务
tNpcGossip[19634]["Text8-1"] = {811,812}
tNpcGossip[19634]["Text811"] = tIronGateInductNpc_Text[19634]["Text811"]
tNpcGossip[19634]["Text812"] = tIronGateInductNpc_Text[19634]["Text812"]

tNpcGossip[19634]["tOption8-1"] = {811}
tNpcGossip[19634]["Option811"] = tIronGateInductNpc_Text[19634]["Option811"]

--铁扇门主线：最后一个任务
tNpcGossip[19634]["Text9-1"] = {911}
tNpcGossip[19634]["Text911"] = tIronGateInductNpc_Text[19634]["Text911"]
tNpcGossip[19634]["ChkFunc9-1"] = function ()
	local sSexName = IronGateInductNpc_GetSexName()
	tNpcGossip[19634]["Text911"] = string.format(tIronGateInductNpc_Text[19634]["Text911"],sSexName)
	return true
end

tNpcGossip[19634]["tOption9-1"] = {911}
tNpcGossip[19634]["Option911"] = tIronGateInductNpc_Text[19634]["Option911"]
tNpcGossip[19634]["OptionPoint911"] = "9-2"


tNpcGossip[19634]["Text9-2"] = {921,922,923}
tNpcGossip[19634]["Text921"] = tIronGateInductNpc_Text[19634]["Text921"]
tNpcGossip[19634]["Text922"] = tIronGateInductNpc_Text[19634]["Text922"]
tNpcGossip[19634]["Text923"] = tIronGateInductNpc_Text[19634]["Text923"]
tNpcGossip[19634]["ChkFunc9-2"] = function ()
	local sSexName = IronGateInductNpc_GetSexName()
	tNpcGossip[19634]["Text923"] = string.format(tIronGateInductNpc_Text[19634]["Text923"],sSexName)
	return true
end

tNpcGossip[19634]["tOption9-2"] = {921}
tNpcGossip[19634]["Option921"] = tIronGateInductNpc_Text[19634]["Option921"]
tNpcGossip[19634]["OptionFunc921"] = "IronGateInductNpc_CompleteLastTask</N>19634"



