------------------------------------------------------------------------------------
--Name：            171113[简体征服][活动脚本]神纹版本更新奖励及商店配置
--Creator:      蔡颖静
--Created:     2017/11/13
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--前缀：tRunVersionUpdate_

----------------------------------表配置部分--------------------------------------------
--掩码
local tRunVersionUpdate_Stc={}
--神纹礼盒
tRunVersionUpdate_Stc["Event"]=170
tRunVersionUpdate_Stc["Type"]=00
tRunVersionUpdate_Stc["Begin"]=0
--上线奖励
tRunVersionUpdate_Stc["RewardEvent"]=170
tRunVersionUpdate_Stc["RewardType"]=04
tRunVersionUpdate_Stc["Got"]=1
--上线宣传图
tRunVersionUpdate_Stc["LoginEvent"]=170
tRunVersionUpdate_Stc["LoginType"]=16


local tRunVersionUpdate_Data={}
tRunVersionUpdate_Data["nEMonomoney"]=1500
--攻略链接
tRunVersionUpdate_Data["Web"]="https://zf.99.com/activity/2018/grain/"
tRunVersionUpdate_Data["PicId"]=1014

--二转判断
tRunVersionUpdate_Data["MinLev"]=0
tRunVersionUpdate_Data["MinMeto"]=2
--红色可选包
tRunVersionUpdate_Data[3306560]={}
tRunVersionUpdate_Data[3306560][4011101]={}
tRunVersionUpdate_Data[3306560][4011101]["LogId"] =12000938
tRunVersionUpdate_Data[3306560][4011101]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306560][4011101]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306560][4011101]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306560][4011101]["DeleteItem"][1]["Id"]=3306560
tRunVersionUpdate_Data[3306560][4011101]["RewardEffect"]={}
tRunVersionUpdate_Data[3306560][4011101]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306560][4011101]["RewardItem"] = {}
tRunVersionUpdate_Data[3306560][4011101]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306560][4011101]["RewardItem"][1]["Id"]=4011101
tRunVersionUpdate_Data[3306560][4011101]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3306560][4010001]={}
tRunVersionUpdate_Data[3306560][4010001]["LogId"] =12000938
tRunVersionUpdate_Data[3306560][4010001]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306560][4010001]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306560][4010001]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306560][4010001]["DeleteItem"][1]["Id"]=3306560
tRunVersionUpdate_Data[3306560][4010001]["RewardItem"] = {}
tRunVersionUpdate_Data[3306560][4010001]["RewardEffect"]={}
tRunVersionUpdate_Data[3306560][4010001]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306560][4010001]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306560][4010001]["RewardItem"][1]["Id"]=4010001
tRunVersionUpdate_Data[3306560][4010001]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3306560][4010101]={}
tRunVersionUpdate_Data[3306560][4010101]["LogId"] =12000938
tRunVersionUpdate_Data[3306560][4010101]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306560][4010101]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306560][4010101]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306560][4010101]["DeleteItem"][1]["Id"]=3306560
tRunVersionUpdate_Data[3306560][4010101]["RewardEffect"]={}
tRunVersionUpdate_Data[3306560][4010101]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306560][4010101]["RewardItem"] = {}
tRunVersionUpdate_Data[3306560][4010101]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306560][4010101]["RewardItem"][1]["Id"]=4010101
tRunVersionUpdate_Data[3306560][4010101]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3306560][4010201]={}
tRunVersionUpdate_Data[3306560][4010201]["LogId"] =12000938
tRunVersionUpdate_Data[3306560][4010201]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306560][4010201]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306560][4010201]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306560][4010201]["DeleteItem"][1]["Id"]=3306560
tRunVersionUpdate_Data[3306560][4010201]["RewardEffect"]={}
tRunVersionUpdate_Data[3306560][4010201]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306560][4010201]["RewardItem"] = {}
tRunVersionUpdate_Data[3306560][4010201]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306560][4010201]["RewardItem"][1]["Id"]=4010201
tRunVersionUpdate_Data[3306560][4010201]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3306560][4010301]={}
tRunVersionUpdate_Data[3306560][4010301]["LogId"] =12000938
tRunVersionUpdate_Data[3306560][4010301]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306560][4010301]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306560][4010301]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306560][4010301]["DeleteItem"][1]["Id"]=3306560
tRunVersionUpdate_Data[3306560][4010301]["RewardEffect"]={}
tRunVersionUpdate_Data[3306560][4010301]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306560][4010301]["RewardItem"] = {}
tRunVersionUpdate_Data[3306560][4010301]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306560][4010301]["RewardItem"][1]["Id"]=4010301
tRunVersionUpdate_Data[3306560][4010301]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3306560][4010401]={}
tRunVersionUpdate_Data[3306560][4010401]["LogId"] =12000938
tRunVersionUpdate_Data[3306560][4010401]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306560][4010401]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306560][4010401]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306560][4010401]["DeleteItem"][1]["Id"]=3306560
tRunVersionUpdate_Data[3306560][4010401]["RewardEffect"]={}
tRunVersionUpdate_Data[3306560][4010401]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306560][4010401]["RewardItem"] = {}
tRunVersionUpdate_Data[3306560][4010401]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306560][4010401]["RewardItem"][1]["Id"]=4010401
tRunVersionUpdate_Data[3306560][4010401]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3306560][4010501]={}
tRunVersionUpdate_Data[3306560][4010501]["LogId"] =12000938
tRunVersionUpdate_Data[3306560][4010501]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306560][4010501]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306560][4010501]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306560][4010501]["DeleteItem"][1]["Id"]=3306560
tRunVersionUpdate_Data[3306560][4010501]["RewardEffect"]={}
tRunVersionUpdate_Data[3306560][4010501]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306560][4010501]["RewardItem"] = {}
tRunVersionUpdate_Data[3306560][4010501]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306560][4010501]["RewardItem"][1]["Id"]=4010501
tRunVersionUpdate_Data[3306560][4010501]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3306560][4010601]={}
tRunVersionUpdate_Data[3306560][4010601]["LogId"] =12000938
tRunVersionUpdate_Data[3306560][4010601]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306560][4010601]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306560][4010601]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306560][4010601]["DeleteItem"][1]["Id"]=3306560
tRunVersionUpdate_Data[3306560][4010601]["RewardEffect"]={}
tRunVersionUpdate_Data[3306560][4010601]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306560][4010601]["RewardItem"] = {}
tRunVersionUpdate_Data[3306560][4010601]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306560][4010601]["RewardItem"][1]["Id"]=4010601
tRunVersionUpdate_Data[3306560][4010601]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3306560][4010701]={}
tRunVersionUpdate_Data[3306560][4010701]["LogId"] =12000938
tRunVersionUpdate_Data[3306560][4010701]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306560][4010701]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306560][4010701]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306560][4010701]["DeleteItem"][1]["Id"]=3306560
tRunVersionUpdate_Data[3306560][4010701]["RewardEffect"]={}
tRunVersionUpdate_Data[3306560][4010701]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306560][4010701]["RewardItem"] = {}
tRunVersionUpdate_Data[3306560][4010701]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306560][4010701]["RewardItem"][1]["Id"]=4010701
tRunVersionUpdate_Data[3306560][4010701]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3306560][4010801]={}
tRunVersionUpdate_Data[3306560][4010801]["LogId"] =12000938
tRunVersionUpdate_Data[3306560][4010801]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306560][4010801]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306560][4010801]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306560][4010801]["DeleteItem"][1]["Id"]=3306560
tRunVersionUpdate_Data[3306560][4010801]["RewardEffect"]={}
tRunVersionUpdate_Data[3306560][4010801]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306560][4010801]["RewardItem"] = {}
tRunVersionUpdate_Data[3306560][4010801]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306560][4010801]["RewardItem"][1]["Id"]=4010801
tRunVersionUpdate_Data[3306560][4010801]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3306560][4010901]={}
tRunVersionUpdate_Data[3306560][4010901]["LogId"] =12000938
tRunVersionUpdate_Data[3306560][4010901]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306560][4010901]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306560][4010901]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306560][4010901]["DeleteItem"][1]["Id"]=3306560
tRunVersionUpdate_Data[3306560][4010901]["RewardEffect"]={}
tRunVersionUpdate_Data[3306560][4010901]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306560][4010901]["RewardItem"] = {}
tRunVersionUpdate_Data[3306560][4010901]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306560][4010901]["RewardItem"][1]["Id"]=4010901
tRunVersionUpdate_Data[3306560][4010901]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3306560][4011401]={}
tRunVersionUpdate_Data[3306560][4011401]["LogId"] =12000938
tRunVersionUpdate_Data[3306560][4011401]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306560][4011401]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306560][4011401]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306560][4011401]["DeleteItem"][1]["Id"]=3306560
tRunVersionUpdate_Data[3306560][4011401]["RewardEffect"]={}
tRunVersionUpdate_Data[3306560][4011401]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306560][4011401]["RewardItem"] = {}
tRunVersionUpdate_Data[3306560][4011401]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306560][4011401]["RewardItem"][1]["Id"]=4011401
tRunVersionUpdate_Data[3306560][4011401]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3306560][4011501]={}
tRunVersionUpdate_Data[3306560][4011501]["LogId"] =12000938
tRunVersionUpdate_Data[3306560][4011501]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306560][4011501]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306560][4011501]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306560][4011501]["DeleteItem"][1]["Id"]=3306560
tRunVersionUpdate_Data[3306560][4011501]["RewardEffect"]={}
tRunVersionUpdate_Data[3306560][4011501]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306560][4011501]["RewardItem"] = {}
tRunVersionUpdate_Data[3306560][4011501]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306560][4011501]["RewardItem"][1]["Id"]=4011501
tRunVersionUpdate_Data[3306560][4011501]["RewardItem"][1]["Attr"] ="0 1"

--红色可选包（赠）
tRunVersionUpdate_Data[3306562]={}
tRunVersionUpdate_Data[3306562][4011101]={}
tRunVersionUpdate_Data[3306562][4011101]["LogId"] =12000938
tRunVersionUpdate_Data[3306562][4011101]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306562][4011101]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306562][4011101]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306562][4011101]["DeleteItem"][1]["Id"]=3306562
tRunVersionUpdate_Data[3306562][4011101]["RewardEffect"]={}
tRunVersionUpdate_Data[3306562][4011101]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306562][4011101]["RewardItem"] = {}
tRunVersionUpdate_Data[3306562][4011101]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306562][4011101]["RewardItem"][1]["Id"]=4011101
tRunVersionUpdate_Data[3306562][4011101]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3306562][4010001]={}
tRunVersionUpdate_Data[3306562][4010001]["LogId"] =12000938
tRunVersionUpdate_Data[3306562][4010001]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306562][4010001]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306562][4010001]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306562][4010001]["DeleteItem"][1]["Id"]=3306562
tRunVersionUpdate_Data[3306562][4010001]["RewardEffect"]={}
tRunVersionUpdate_Data[3306562][4010001]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306562][4010001]["RewardItem"] = {}
tRunVersionUpdate_Data[3306562][4010001]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306562][4010001]["RewardItem"][1]["Id"]=4010001
tRunVersionUpdate_Data[3306562][4010001]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3306562][4010101]={}
tRunVersionUpdate_Data[3306562][4010101]["LogId"] =12000938
tRunVersionUpdate_Data[3306562][4010101]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306562][4010101]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306562][4010101]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306562][4010101]["DeleteItem"][1]["Id"]=3306562
tRunVersionUpdate_Data[3306562][4010101]["RewardEffect"]={}
tRunVersionUpdate_Data[3306562][4010101]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306562][4010101]["RewardItem"] = {}
tRunVersionUpdate_Data[3306562][4010101]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306562][4010101]["RewardItem"][1]["Id"]=4010101
tRunVersionUpdate_Data[3306562][4010101]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3306562][4010201]={}
tRunVersionUpdate_Data[3306562][4010201]["LogId"] =12000938
tRunVersionUpdate_Data[3306562][4010201]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306562][4010201]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306562][4010201]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306562][4010201]["DeleteItem"][1]["Id"]=3306562
tRunVersionUpdate_Data[3306562][4010201]["RewardEffect"]={}
tRunVersionUpdate_Data[3306562][4010201]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306562][4010201]["RewardItem"] = {}
tRunVersionUpdate_Data[3306562][4010201]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306562][4010201]["RewardItem"][1]["Id"]=4010201
tRunVersionUpdate_Data[3306562][4010201]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3306562][4010301]={}
tRunVersionUpdate_Data[3306562][4010301]["LogId"] =12000938
tRunVersionUpdate_Data[3306562][4010301]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306562][4010301]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306562][4010301]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306562][4010301]["DeleteItem"][1]["Id"]=3306562
tRunVersionUpdate_Data[3306562][4010301]["RewardEffect"]={}
tRunVersionUpdate_Data[3306562][4010301]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306562][4010301]["RewardItem"] = {}
tRunVersionUpdate_Data[3306562][4010301]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306562][4010301]["RewardItem"][1]["Id"]=4010301
tRunVersionUpdate_Data[3306562][4010301]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3306562][4010401]={}
tRunVersionUpdate_Data[3306562][4010401]["LogId"] =12000938
tRunVersionUpdate_Data[3306562][4010401]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306562][4010401]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306562][4010401]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306562][4010401]["DeleteItem"][1]["Id"]=3306562
tRunVersionUpdate_Data[3306562][4010401]["RewardEffect"]={}
tRunVersionUpdate_Data[3306562][4010401]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306562][4010401]["RewardItem"] = {}
tRunVersionUpdate_Data[3306562][4010401]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306562][4010401]["RewardItem"][1]["Id"]=4010401
tRunVersionUpdate_Data[3306562][4010401]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3306562][4010501]={}
tRunVersionUpdate_Data[3306562][4010501]["LogId"] =12000938
tRunVersionUpdate_Data[3306562][4010501]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306562][4010501]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306562][4010501]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306562][4010501]["DeleteItem"][1]["Id"]=3306562
tRunVersionUpdate_Data[3306562][4010501]["RewardEffect"]={}
tRunVersionUpdate_Data[3306562][4010501]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306562][4010501]["RewardItem"] = {}
tRunVersionUpdate_Data[3306562][4010501]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306562][4010501]["RewardItem"][1]["Id"]=4010501
tRunVersionUpdate_Data[3306562][4010501]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3306562][4010601]={}
tRunVersionUpdate_Data[3306562][4010601]["LogId"] =12000938
tRunVersionUpdate_Data[3306562][4010601]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306562][4010601]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306562][4010601]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306562][4010601]["DeleteItem"][1]["Id"]=3306562
tRunVersionUpdate_Data[3306562][4010601]["RewardEffect"]={}
tRunVersionUpdate_Data[3306562][4010601]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306562][4010601]["RewardItem"] = {}
tRunVersionUpdate_Data[3306562][4010601]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306562][4010601]["RewardItem"][1]["Id"]=4010601
tRunVersionUpdate_Data[3306562][4010601]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3306562][4010701]={}
tRunVersionUpdate_Data[3306562][4010701]["LogId"] =12000938
tRunVersionUpdate_Data[3306562][4010701]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306562][4010701]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306562][4010701]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306562][4010701]["DeleteItem"][1]["Id"]=3306562
tRunVersionUpdate_Data[3306562][4010701]["RewardEffect"]={}
tRunVersionUpdate_Data[3306562][4010701]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306562][4010701]["RewardItem"] = {}
tRunVersionUpdate_Data[3306562][4010701]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306562][4010701]["RewardItem"][1]["Id"]=4010701
tRunVersionUpdate_Data[3306562][4010701]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3306562][4010801]={}
tRunVersionUpdate_Data[3306562][4010801]["LogId"] =12000938
tRunVersionUpdate_Data[3306562][4010801]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306562][4010801]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306562][4010801]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306562][4010801]["DeleteItem"][1]["Id"]=3306562
tRunVersionUpdate_Data[3306562][4010801]["RewardEffect"]={}
tRunVersionUpdate_Data[3306562][4010801]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306562][4010801]["RewardItem"] = {}
tRunVersionUpdate_Data[3306562][4010801]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306562][4010801]["RewardItem"][1]["Id"]=4010801
tRunVersionUpdate_Data[3306562][4010801]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3306562][4010901]={}
tRunVersionUpdate_Data[3306562][4010901]["LogId"] =12000938
tRunVersionUpdate_Data[3306562][4010901]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306562][4010901]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306562][4010901]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306562][4010901]["DeleteItem"][1]["Id"]=3306562
tRunVersionUpdate_Data[3306562][4010901]["RewardEffect"]={}
tRunVersionUpdate_Data[3306562][4010901]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306562][4010901]["RewardItem"] = {}
tRunVersionUpdate_Data[3306562][4010901]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306562][4010901]["RewardItem"][1]["Id"]=4010901
tRunVersionUpdate_Data[3306562][4010901]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3306562][4011401]={}
tRunVersionUpdate_Data[3306562][4011401]["LogId"] =12000938
tRunVersionUpdate_Data[3306562][4011401]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306562][4011401]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306562][4011401]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306562][4011401]["DeleteItem"][1]["Id"]=3306562
tRunVersionUpdate_Data[3306562][4011401]["RewardEffect"]={}
tRunVersionUpdate_Data[3306562][4011401]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306562][4011401]["RewardItem"] = {}
tRunVersionUpdate_Data[3306562][4011401]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306562][4011401]["RewardItem"][1]["Id"]=4011401
tRunVersionUpdate_Data[3306562][4011401]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3306562][4011501]={}
tRunVersionUpdate_Data[3306562][4011501]["LogId"] =12000938
tRunVersionUpdate_Data[3306562][4011501]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306562][4011501]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306562][4011501]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306562][4011501]["DeleteItem"][1]["Id"]=3306562
tRunVersionUpdate_Data[3306562][4011501]["RewardEffect"]={}
tRunVersionUpdate_Data[3306562][4011501]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306562][4011501]["RewardItem"] = {}
tRunVersionUpdate_Data[3306562][4011501]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306562][4011501]["RewardItem"][1]["Id"]=4011501
tRunVersionUpdate_Data[3306562][4011501]["RewardItem"][1]["Attr"] ="0 1 3"

--蓝色可选包
tRunVersionUpdate_Data[3306561]={}
tRunVersionUpdate_Data[3306561][4020101]={}
tRunVersionUpdate_Data[3306561][4020101]["LogId"] =12000938
tRunVersionUpdate_Data[3306561][4020101]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306561][4020101]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306561][4020101]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306561][4020101]["DeleteItem"][1]["Id"]=3306561
tRunVersionUpdate_Data[3306561][4020101]["RewardEffect"]={}
tRunVersionUpdate_Data[3306561][4020101]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306561][4020101]["RewardItem"] = {}
tRunVersionUpdate_Data[3306561][4020101]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306561][4020101]["RewardItem"][1]["Id"]=4020101
tRunVersionUpdate_Data[3306561][4020101]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3306561][4020201]={}
tRunVersionUpdate_Data[3306561][4020201]["LogId"] =12000938
tRunVersionUpdate_Data[3306561][4020201]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306561][4020201]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306561][4020201]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306561][4020201]["DeleteItem"][1]["Id"]=3306561
tRunVersionUpdate_Data[3306561][4020201]["RewardEffect"]={}
tRunVersionUpdate_Data[3306561][4020201]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306561][4020201]["RewardItem"] = {}
tRunVersionUpdate_Data[3306561][4020201]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306561][4020201]["RewardItem"][1]["Id"]=4020201
tRunVersionUpdate_Data[3306561][4020201]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3306561][4020301]={}
tRunVersionUpdate_Data[3306561][4020301]["LogId"] =12000938
tRunVersionUpdate_Data[3306561][4020301]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306561][4020301]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306561][4020301]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306561][4020301]["DeleteItem"][1]["Id"]=3306561
tRunVersionUpdate_Data[3306561][4020301]["RewardEffect"]={}
tRunVersionUpdate_Data[3306561][4020301]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306561][4020301]["RewardItem"] = {}
tRunVersionUpdate_Data[3306561][4020301]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306561][4020301]["RewardItem"][1]["Id"]=4020301
tRunVersionUpdate_Data[3306561][4020301]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3306561][4020401]={}
tRunVersionUpdate_Data[3306561][4020401]["LogId"] =12000938
tRunVersionUpdate_Data[3306561][4020401]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306561][4020401]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306561][4020401]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306561][4020401]["DeleteItem"][1]["Id"]=3306561
tRunVersionUpdate_Data[3306561][4020401]["RewardEffect"]={}
tRunVersionUpdate_Data[3306561][4020401]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306561][4020401]["RewardItem"] = {}
tRunVersionUpdate_Data[3306561][4020401]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306561][4020401]["RewardItem"][1]["Id"]=4020401
tRunVersionUpdate_Data[3306561][4020401]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3306561][4020501]={}
tRunVersionUpdate_Data[3306561][4020501]["LogId"] =12000938
tRunVersionUpdate_Data[3306561][4020501]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306561][4020501]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306561][4020501]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306561][4020501]["DeleteItem"][1]["Id"]=3306561
tRunVersionUpdate_Data[3306561][4020501]["RewardEffect"]={}
tRunVersionUpdate_Data[3306561][4020501]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306561][4020501]["RewardItem"] = {}
tRunVersionUpdate_Data[3306561][4020501]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306561][4020501]["RewardItem"][1]["Id"]=4020501
tRunVersionUpdate_Data[3306561][4020501]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3306561][4020601]={}
tRunVersionUpdate_Data[3306561][4020601]["LogId"] =12000938
tRunVersionUpdate_Data[3306561][4020601]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306561][4020601]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306561][4020601]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306561][4020601]["DeleteItem"][1]["Id"]=3306561
tRunVersionUpdate_Data[3306561][4020601]["RewardEffect"]={}
tRunVersionUpdate_Data[3306561][4020601]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306561][4020601]["RewardItem"] = {}
tRunVersionUpdate_Data[3306561][4020601]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306561][4020601]["RewardItem"][1]["Id"]=4020601
tRunVersionUpdate_Data[3306561][4020601]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3306561][4020701]={}
tRunVersionUpdate_Data[3306561][4020701]["LogId"] =12000938
tRunVersionUpdate_Data[3306561][4020701]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306561][4020701]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306561][4020701]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306561][4020701]["DeleteItem"][1]["Id"]=3306561
tRunVersionUpdate_Data[3306561][4020701]["RewardEffect"]={}
tRunVersionUpdate_Data[3306561][4020701]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306561][4020701]["RewardItem"] = {}
tRunVersionUpdate_Data[3306561][4020701]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306561][4020701]["RewardItem"][1]["Id"]=4020701
tRunVersionUpdate_Data[3306561][4020701]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3306561][4020801]={}
tRunVersionUpdate_Data[3306561][4020801]["LogId"] =12000938
tRunVersionUpdate_Data[3306561][4020801]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306561][4020801]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306561][4020801]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306561][4020801]["DeleteItem"][1]["Id"]=3306561
tRunVersionUpdate_Data[3306561][4020801]["RewardEffect"]={}
tRunVersionUpdate_Data[3306561][4020801]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306561][4020801]["RewardItem"] = {}
tRunVersionUpdate_Data[3306561][4020801]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306561][4020801]["RewardItem"][1]["Id"]=4020801
tRunVersionUpdate_Data[3306561][4020801]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3306561][4020901]={}
tRunVersionUpdate_Data[3306561][4020901]["LogId"] =12000938
tRunVersionUpdate_Data[3306561][4020901]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306561][4020901]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306561][4020901]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306561][4020901]["DeleteItem"][1]["Id"]=3306561
tRunVersionUpdate_Data[3306561][4020901]["RewardEffect"]={}
tRunVersionUpdate_Data[3306561][4020901]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306561][4020901]["RewardItem"] = {}
tRunVersionUpdate_Data[3306561][4020901]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306561][4020901]["RewardItem"][1]["Id"]=4020901
tRunVersionUpdate_Data[3306561][4020901]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3306561][4021001]={}
tRunVersionUpdate_Data[3306561][4021001]["LogId"] =12000938
tRunVersionUpdate_Data[3306561][4021001]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306561][4021001]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306561][4021001]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306561][4021001]["DeleteItem"][1]["Id"]=3306561
tRunVersionUpdate_Data[3306561][4021001]["RewardEffect"]={}
tRunVersionUpdate_Data[3306561][4021001]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306561][4021001]["RewardItem"] = {}
tRunVersionUpdate_Data[3306561][4021001]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306561][4021001]["RewardItem"][1]["Id"]=4021001
tRunVersionUpdate_Data[3306561][4021001]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3306561][4022201]={}
tRunVersionUpdate_Data[3306561][4022201]["LogId"] =12000938
tRunVersionUpdate_Data[3306561][4022201]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306561][4022201]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306561][4022201]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306561][4022201]["DeleteItem"][1]["Id"]=3306561
tRunVersionUpdate_Data[3306561][4022201]["RewardEffect"]={}
tRunVersionUpdate_Data[3306561][4022201]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306561][4022201]["RewardItem"] = {}
tRunVersionUpdate_Data[3306561][4022201]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306561][4022201]["RewardItem"][1]["Id"]=4022201
tRunVersionUpdate_Data[3306561][4022201]["RewardItem"][1]["Attr"] ="0 1"


--蓝色可选包（赠）
tRunVersionUpdate_Data[3306563]={}
tRunVersionUpdate_Data[3306563][4020101]={}
tRunVersionUpdate_Data[3306563][4020101]["LogId"] =12000938
tRunVersionUpdate_Data[3306563][4020101]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306563][4020101]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306563][4020101]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306563][4020101]["DeleteItem"][1]["Id"]=3306563
tRunVersionUpdate_Data[3306563][4020101]["RewardEffect"]={}
tRunVersionUpdate_Data[3306563][4020101]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306563][4020101]["RewardItem"] = {}
tRunVersionUpdate_Data[3306563][4020101]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306563][4020101]["RewardItem"][1]["Id"]=4020101
tRunVersionUpdate_Data[3306563][4020101]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3306563][4020201]={}
tRunVersionUpdate_Data[3306563][4020201]["LogId"] =12000938
tRunVersionUpdate_Data[3306563][4020201]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306563][4020201]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306563][4020201]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306563][4020201]["DeleteItem"][1]["Id"]=3306563
tRunVersionUpdate_Data[3306563][4020201]["RewardEffect"]={}
tRunVersionUpdate_Data[3306563][4020201]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306563][4020201]["RewardItem"] = {}
tRunVersionUpdate_Data[3306563][4020201]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306563][4020201]["RewardItem"][1]["Id"]=4020201
tRunVersionUpdate_Data[3306563][4020201]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3306563][4020301]={}
tRunVersionUpdate_Data[3306563][4020301]["LogId"] =12000938
tRunVersionUpdate_Data[3306563][4020301]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306563][4020301]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306563][4020301]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306563][4020301]["DeleteItem"][1]["Id"]=3306563
tRunVersionUpdate_Data[3306563][4020301]["RewardEffect"]={}
tRunVersionUpdate_Data[3306563][4020301]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306563][4020301]["RewardItem"] = {}
tRunVersionUpdate_Data[3306563][4020301]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306563][4020301]["RewardItem"][1]["Id"]=4020301
tRunVersionUpdate_Data[3306563][4020301]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3306563][4020401]={}
tRunVersionUpdate_Data[3306563][4020401]["LogId"] =12000938
tRunVersionUpdate_Data[3306563][4020401]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306563][4020401]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306563][4020401]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306563][4020401]["DeleteItem"][1]["Id"]=3306563
tRunVersionUpdate_Data[3306563][4020401]["RewardEffect"]={}
tRunVersionUpdate_Data[3306563][4020401]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306563][4020401]["RewardItem"] = {}
tRunVersionUpdate_Data[3306563][4020401]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306563][4020401]["RewardItem"][1]["Id"]=4020401
tRunVersionUpdate_Data[3306563][4020401]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3306563][4020501]={}
tRunVersionUpdate_Data[3306563][4020501]["LogId"] =12000938
tRunVersionUpdate_Data[3306563][4020501]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306563][4020501]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306563][4020501]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306563][4020501]["DeleteItem"][1]["Id"]=3306563
tRunVersionUpdate_Data[3306563][4020501]["RewardEffect"]={}
tRunVersionUpdate_Data[3306563][4020501]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306563][4020501]["RewardItem"] = {}
tRunVersionUpdate_Data[3306563][4020501]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306563][4020501]["RewardItem"][1]["Id"]=4020501
tRunVersionUpdate_Data[3306563][4020501]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3306563][4020601]={}
tRunVersionUpdate_Data[3306563][4020601]["LogId"] =12000938
tRunVersionUpdate_Data[3306563][4020601]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306563][4020601]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306563][4020601]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306563][4020601]["DeleteItem"][1]["Id"]=3306563
tRunVersionUpdate_Data[3306563][4020601]["RewardEffect"]={}
tRunVersionUpdate_Data[3306563][4020601]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306563][4020601]["RewardItem"] = {}
tRunVersionUpdate_Data[3306563][4020601]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306563][4020601]["RewardItem"][1]["Id"]=4020601
tRunVersionUpdate_Data[3306563][4020601]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3306563][4020701]={}
tRunVersionUpdate_Data[3306563][4020701]["LogId"] =12000938
tRunVersionUpdate_Data[3306563][4020701]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306563][4020701]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306563][4020701]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306563][4020701]["DeleteItem"][1]["Id"]=3306563
tRunVersionUpdate_Data[3306563][4020701]["RewardEffect"]={}
tRunVersionUpdate_Data[3306563][4020701]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306563][4020701]["RewardItem"] = {}
tRunVersionUpdate_Data[3306563][4020701]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306563][4020701]["RewardItem"][1]["Id"]=4020701
tRunVersionUpdate_Data[3306563][4020701]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3306563][4020801]={}
tRunVersionUpdate_Data[3306563][4020801]["LogId"] =12000938
tRunVersionUpdate_Data[3306563][4020801]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306563][4020801]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306563][4020801]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306563][4020801]["DeleteItem"][1]["Id"]=3306563
tRunVersionUpdate_Data[3306563][4020801]["RewardEffect"]={}
tRunVersionUpdate_Data[3306563][4020801]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306563][4020801]["RewardItem"] = {}
tRunVersionUpdate_Data[3306563][4020801]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306563][4020801]["RewardItem"][1]["Id"]=4020801
tRunVersionUpdate_Data[3306563][4020801]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3306563][4020901]={}
tRunVersionUpdate_Data[3306563][4020901]["LogId"] =12000938
tRunVersionUpdate_Data[3306563][4020901]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306563][4020901]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306563][4020901]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306563][4020901]["DeleteItem"][1]["Id"]=3306563
tRunVersionUpdate_Data[3306563][4020901]["RewardEffect"]={}
tRunVersionUpdate_Data[3306563][4020901]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306563][4020901]["RewardItem"] = {}
tRunVersionUpdate_Data[3306563][4020901]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306563][4020901]["RewardItem"][1]["Id"]=4020901
tRunVersionUpdate_Data[3306563][4020901]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3306563][4021001]={}
tRunVersionUpdate_Data[3306563][4021001]["LogId"] =12000938
tRunVersionUpdate_Data[3306563][4021001]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306563][4021001]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306563][4021001]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306563][4021001]["DeleteItem"][1]["Id"]=3306563
tRunVersionUpdate_Data[3306563][4021001]["RewardEffect"]={}
tRunVersionUpdate_Data[3306563][4021001]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306563][4021001]["RewardItem"] = {}
tRunVersionUpdate_Data[3306563][4021001]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306563][4021001]["RewardItem"][1]["Id"]=4021001
tRunVersionUpdate_Data[3306563][4021001]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3306563][4022201]={}
tRunVersionUpdate_Data[3306563][4022201]["LogId"] =12000938
tRunVersionUpdate_Data[3306563][4022201]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306563][4022201]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306563][4022201]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306563][4022201]["DeleteItem"][1]["Id"]=3306563
tRunVersionUpdate_Data[3306563][4022201]["RewardEffect"]={}
tRunVersionUpdate_Data[3306563][4022201]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306563][4022201]["RewardItem"] = {}
tRunVersionUpdate_Data[3306563][4022201]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306563][4022201]["RewardItem"][1]["Id"]=4022201
tRunVersionUpdate_Data[3306563][4022201]["RewardItem"][1]["Attr"] ="0 1 3"

--神纹降世大礼盒
tRunVersionUpdate_Data[3306564]={}
--2个7天时效赤炼石+5（赠）
tRunVersionUpdate_Data[3306564][730005]={}
tRunVersionUpdate_Data[3306564][730005][1]={}
tRunVersionUpdate_Data[3306564][730005][1]["LogId"] =12000938
tRunVersionUpdate_Data[3306564][730005][1]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306564][730005][1]["RewardEffect"]={}
tRunVersionUpdate_Data[3306564][730005][1]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306564][730005][1]["RewardItem"] = {}
tRunVersionUpdate_Data[3306564][730005][1]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306564][730005][1]["RewardItem"][1]["Id"]=730005
tRunVersionUpdate_Data[3306564][730005][1]["RewardItem"][1]["Attr"] ="0 2 3 10080 1"
tRunVersionUpdate_Data[3306564][730005][2]={}
tRunVersionUpdate_Data[3306564][730005][2]["LogId"] =12000938
tRunVersionUpdate_Data[3306564][730005][2]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306564][730005][2]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306564][730005][2]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306564][730005][2]["DeleteItem"][1]["Id"]=3306564
tRunVersionUpdate_Data[3306564][730005][2]["RewardEffect"]={}
tRunVersionUpdate_Data[3306564][730005][2]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306564][730005][2]["RewardItem"] = {}
tRunVersionUpdate_Data[3306564][730005][2]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306564][730005][2]["RewardItem"][1]["Id"]=730005
tRunVersionUpdate_Data[3306564][730005][2]["RewardItem"][1]["Attr"] ="0 2 3 10080 1"
--1个龙珠卷（赠
tRunVersionUpdate_Data[3306564][3200822]={}
tRunVersionUpdate_Data[3306564][3200822][1]={}
tRunVersionUpdate_Data[3306564][3200822][1]["LogId"] =12000938
tRunVersionUpdate_Data[3306564][3200822][1]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306564][3200822][1]["RewardEffect"]={}
tRunVersionUpdate_Data[3306564][3200822][1]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306564][3200822][1]["RewardItem"] = {}
tRunVersionUpdate_Data[3306564][3200822][1]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306564][3200822][1]["RewardItem"][1]["Id"]=3200822
tRunVersionUpdate_Data[3306564][3200822][1]["RewardItem"][1]["Attr"] ="0 1 3"
tRunVersionUpdate_Data[3306564][3200822][2]={}
tRunVersionUpdate_Data[3306564][3200822][2]["LogId"] =12000938
tRunVersionUpdate_Data[3306564][3200822][2]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306564][3200822][2]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306564][3200822][2]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306564][3200822][2]["DeleteItem"][1]["Id"]=3306564
tRunVersionUpdate_Data[3306564][3200822][2]["RewardEffect"]={}
tRunVersionUpdate_Data[3306564][3200822][2]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306564][3200822][2]["RewardItem"] = {}
tRunVersionUpdate_Data[3306564][3200822][2]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306564][3200822][2]["RewardItem"][1]["Id"]=3200822
tRunVersionUpdate_Data[3306564][3200822][2]["RewardItem"][1]["Attr"] ="0 1 3"
--3500气力
tRunVersionUpdate_Data[3306564][222222]={}
tRunVersionUpdate_Data[3306564][222222][1]={}
tRunVersionUpdate_Data[3306564][222222][1]["LogId"] =12000938
tRunVersionUpdate_Data[3306564][222222][1]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306564][222222][1]["RewardEffect"]={}
tRunVersionUpdate_Data[3306564][222222][1]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306564][222222][1]["RewardStrengthValue"] = {}
tRunVersionUpdate_Data[3306564][222222][1]["RewardStrengthValue"]["Value"]= 3500
tRunVersionUpdate_Data[3306564][222222][2]={}
tRunVersionUpdate_Data[3306564][222222][2]["LogId"] =12000938
tRunVersionUpdate_Data[3306564][222222][2]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306564][222222][2]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306564][222222][2]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306564][222222][2]["DeleteItem"][1]["Id"]=3306564
tRunVersionUpdate_Data[3306564][222222][2]["RewardEffect"]={}
tRunVersionUpdate_Data[3306564][222222][2]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306564][222222][2]["RewardStrengthValue"] = {}
tRunVersionUpdate_Data[3306564][222222][2]["RewardStrengthValue"]["Value"]= 3500
--1500赠点
tRunVersionUpdate_Data[3306564][1111111]={}
tRunVersionUpdate_Data[3306564][1111111][1]={}
tRunVersionUpdate_Data[3306564][1111111][1]["LogId"] =12000938
tRunVersionUpdate_Data[3306564][1111111][1]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306564][1111111][1]["RewardEffect"]={}
tRunVersionUpdate_Data[3306564][1111111][1]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306564][1111111][1]["RewardEMoneyMono"] = {}
tRunVersionUpdate_Data[3306564][1111111][1]["RewardEMoneyMono"]["Value"]= 1500
tRunVersionUpdate_Data[3306564][1111111][2]={}
tRunVersionUpdate_Data[3306564][1111111][2]["LogId"] =12000938
tRunVersionUpdate_Data[3306564][1111111][2]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306564][1111111][2]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306564][1111111][2]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306564][1111111][2]["DeleteItem"][1]["Id"]=3306564
tRunVersionUpdate_Data[3306564][1111111][2]["RewardEffect"]={}
tRunVersionUpdate_Data[3306564][1111111][2]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306564][1111111][2]["RewardEMoneyMono"] = {}
tRunVersionUpdate_Data[3306564][1111111][2]["RewardEMoneyMono"]["Value"]= 1500
--15个魔武通玄丹
tRunVersionUpdate_Data[3306564][3303373]={}
tRunVersionUpdate_Data[3306564][3303373][1]={}
tRunVersionUpdate_Data[3306564][3303373][1]["LogId"] =12000938
tRunVersionUpdate_Data[3306564][3303373][1]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306564][3303373][1]["RewardEffect"]={}
tRunVersionUpdate_Data[3306564][3303373][1]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306564][3303373][1]["RewardItem"] = {}
tRunVersionUpdate_Data[3306564][3303373][1]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306564][3303373][1]["RewardItem"][1]["Id"]=3303373
tRunVersionUpdate_Data[3306564][3303373][1]["RewardItem"][1]["Attr"] ="0 15"
tRunVersionUpdate_Data[3306564][3303373][2]={}
tRunVersionUpdate_Data[3306564][3303373][2]["LogId"] =12000938
tRunVersionUpdate_Data[3306564][3303373][2]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3306564][3303373][2]["DeleteItem"] = {}
tRunVersionUpdate_Data[3306564][3303373][2]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3306564][3303373][2]["DeleteItem"][1]["Id"]=3306564
tRunVersionUpdate_Data[3306564][3303373][2]["RewardEffect"]={}
tRunVersionUpdate_Data[3306564][3303373][2]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3306564][3303373][2]["RewardItem"] = {}
tRunVersionUpdate_Data[3306564][3303373][2]["RewardItem"][1]={}
tRunVersionUpdate_Data[3306564][3303373][2]["RewardItem"][1]["Id"]=3303373
tRunVersionUpdate_Data[3306564][3303373][2]["RewardItem"][1]["Attr"] ="0 15"

--上古神器风云礼盒
tRunVersionUpdate_Data[3307146]={}
tRunVersionUpdate_Data[3307146]["LogId"] =12000938
tRunVersionUpdate_Data[3307146]["DeleteItem"] = {}
tRunVersionUpdate_Data[3307146]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3307146]["DeleteItem"][1]["Id"]=3307146
tRunVersionUpdate_Data[3307146]["RewardEffect"]={}
tRunVersionUpdate_Data[3307146]["RewardEffect"]["Effect"] = "zf2-e128"
tRunVersionUpdate_Data[3307146]["RewardRXuanB"] = {}
tRunVersionUpdate_Data[3307146]["RewardRXuanB"][1] = {}
tRunVersionUpdate_Data[3307146]["RewardRXuanB"][1]["Id"] = 0
tRunVersionUpdate_Data[3307146]["RewardRXuanB"][1]["Monopoly"] = 0

--更新上线给奖
tRunVersionUpdate_Data[123]={}
tRunVersionUpdate_Data[123]["LogId"] =12000938
tRunVersionUpdate_Data[123]["RewardEffect"]={}
tRunVersionUpdate_Data[123]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[123]["RewardItem"] = {}
tRunVersionUpdate_Data[123]["RewardItem"][1]={}
tRunVersionUpdate_Data[123]["RewardItem"][1]["Id"]=3306562
tRunVersionUpdate_Data[123]["RewardItem"][1]["Attr"] ="0 1 3"
tRunVersionUpdate_Data[123]["RewardItem"][2]={}
tRunVersionUpdate_Data[123]["RewardItem"][2]["Id"]=3306563
tRunVersionUpdate_Data[123]["RewardItem"][2]["Attr"] ="0 1 3"
-- tRunVersionUpdate_Data[123]["RewardItem"][3]={}
-- tRunVersionUpdate_Data[123]["RewardItem"][3]["Id"]=3306564
-- tRunVersionUpdate_Data[123]["RewardItem"][3]["Attr"] ="0 1 0 43200 1"

-------------------------------------一月神纹月活动新增礼包---------------------------------------------------------------------------
--红色可选包
tRunVersionUpdate_Data[3311899]={}
tRunVersionUpdate_Data[3311899][4011101]={}
tRunVersionUpdate_Data[3311899][4011101]["LogId"] =12000938
tRunVersionUpdate_Data[3311899][4011101]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311899][4011101]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311899][4011101]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311899][4011101]["DeleteItem"][1]["Id"]=3311899
tRunVersionUpdate_Data[3311899][4011101]["RewardEffect"]={}
tRunVersionUpdate_Data[3311899][4011101]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311899][4011101]["RewardItem"] = {}
tRunVersionUpdate_Data[3311899][4011101]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311899][4011101]["RewardItem"][1]["Id"]=4011101
tRunVersionUpdate_Data[3311899][4011101]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311899][4010001]={}
tRunVersionUpdate_Data[3311899][4010001]["LogId"] =12000938
tRunVersionUpdate_Data[3311899][4010001]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311899][4010001]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311899][4010001]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311899][4010001]["DeleteItem"][1]["Id"]=3311899
tRunVersionUpdate_Data[3311899][4010001]["RewardItem"] = {}
tRunVersionUpdate_Data[3311899][4010001]["RewardEffect"]={}
tRunVersionUpdate_Data[3311899][4010001]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311899][4010001]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311899][4010001]["RewardItem"][1]["Id"]=4010001
tRunVersionUpdate_Data[3311899][4010001]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311899][4010101]={}
tRunVersionUpdate_Data[3311899][4010101]["LogId"] =12000938
tRunVersionUpdate_Data[3311899][4010101]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311899][4010101]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311899][4010101]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311899][4010101]["DeleteItem"][1]["Id"]=3311899
tRunVersionUpdate_Data[3311899][4010101]["RewardEffect"]={}
tRunVersionUpdate_Data[3311899][4010101]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311899][4010101]["RewardItem"] = {}
tRunVersionUpdate_Data[3311899][4010101]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311899][4010101]["RewardItem"][1]["Id"]=4010101
tRunVersionUpdate_Data[3311899][4010101]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311899][4010201]={}
tRunVersionUpdate_Data[3311899][4010201]["LogId"] =12000938
tRunVersionUpdate_Data[3311899][4010201]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311899][4010201]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311899][4010201]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311899][4010201]["DeleteItem"][1]["Id"]=3311899
tRunVersionUpdate_Data[3311899][4010201]["RewardEffect"]={}
tRunVersionUpdate_Data[3311899][4010201]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311899][4010201]["RewardItem"] = {}
tRunVersionUpdate_Data[3311899][4010201]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311899][4010201]["RewardItem"][1]["Id"]=4010201
tRunVersionUpdate_Data[3311899][4010201]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311899][4010301]={}
tRunVersionUpdate_Data[3311899][4010301]["LogId"] =12000938
tRunVersionUpdate_Data[3311899][4010301]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311899][4010301]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311899][4010301]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311899][4010301]["DeleteItem"][1]["Id"]=3311899
tRunVersionUpdate_Data[3311899][4010301]["RewardEffect"]={}
tRunVersionUpdate_Data[3311899][4010301]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311899][4010301]["RewardItem"] = {}
tRunVersionUpdate_Data[3311899][4010301]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311899][4010301]["RewardItem"][1]["Id"]=4010301
tRunVersionUpdate_Data[3311899][4010301]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311899][4010401]={}
tRunVersionUpdate_Data[3311899][4010401]["LogId"] =12000938
tRunVersionUpdate_Data[3311899][4010401]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311899][4010401]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311899][4010401]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311899][4010401]["DeleteItem"][1]["Id"]=3311899
tRunVersionUpdate_Data[3311899][4010401]["RewardEffect"]={}
tRunVersionUpdate_Data[3311899][4010401]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311899][4010401]["RewardItem"] = {}
tRunVersionUpdate_Data[3311899][4010401]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311899][4010401]["RewardItem"][1]["Id"]=4010401
tRunVersionUpdate_Data[3311899][4010401]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311899][4010501]={}
tRunVersionUpdate_Data[3311899][4010501]["LogId"] =12000938
tRunVersionUpdate_Data[3311899][4010501]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311899][4010501]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311899][4010501]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311899][4010501]["DeleteItem"][1]["Id"]=3311899
tRunVersionUpdate_Data[3311899][4010501]["RewardEffect"]={}
tRunVersionUpdate_Data[3311899][4010501]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311899][4010501]["RewardItem"] = {}
tRunVersionUpdate_Data[3311899][4010501]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311899][4010501]["RewardItem"][1]["Id"]=4010501
tRunVersionUpdate_Data[3311899][4010501]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311899][4010601]={}
tRunVersionUpdate_Data[3311899][4010601]["LogId"] =12000938
tRunVersionUpdate_Data[3311899][4010601]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311899][4010601]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311899][4010601]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311899][4010601]["DeleteItem"][1]["Id"]=3311899
tRunVersionUpdate_Data[3311899][4010601]["RewardEffect"]={}
tRunVersionUpdate_Data[3311899][4010601]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311899][4010601]["RewardItem"] = {}
tRunVersionUpdate_Data[3311899][4010601]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311899][4010601]["RewardItem"][1]["Id"]=4010601
tRunVersionUpdate_Data[3311899][4010601]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311899][4010701]={}
tRunVersionUpdate_Data[3311899][4010701]["LogId"] =12000938
tRunVersionUpdate_Data[3311899][4010701]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311899][4010701]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311899][4010701]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311899][4010701]["DeleteItem"][1]["Id"]=3311899
tRunVersionUpdate_Data[3311899][4010701]["RewardEffect"]={}
tRunVersionUpdate_Data[3311899][4010701]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311899][4010701]["RewardItem"] = {}
tRunVersionUpdate_Data[3311899][4010701]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311899][4010701]["RewardItem"][1]["Id"]=4010701
tRunVersionUpdate_Data[3311899][4010701]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311899][4010801]={}
tRunVersionUpdate_Data[3311899][4010801]["LogId"] =12000938 
tRunVersionUpdate_Data[3311899][4010801]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311899][4010801]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311899][4010801]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311899][4010801]["DeleteItem"][1]["Id"]=3311899
tRunVersionUpdate_Data[3311899][4010801]["RewardEffect"]={}
tRunVersionUpdate_Data[3311899][4010801]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311899][4010801]["RewardItem"] = {}
tRunVersionUpdate_Data[3311899][4010801]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311899][4010801]["RewardItem"][1]["Id"]=4010801
tRunVersionUpdate_Data[3311899][4010801]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311899][4010901]={}
tRunVersionUpdate_Data[3311899][4010901]["LogId"] =12000938
tRunVersionUpdate_Data[3311899][4010901]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311899][4010901]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311899][4010901]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311899][4010901]["DeleteItem"][1]["Id"]=3311899
tRunVersionUpdate_Data[3311899][4010901]["RewardEffect"]={}
tRunVersionUpdate_Data[3311899][4010901]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311899][4010901]["RewardItem"] = {}
tRunVersionUpdate_Data[3311899][4010901]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311899][4010901]["RewardItem"][1]["Id"]=4010901
tRunVersionUpdate_Data[3311899][4010901]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311899][4011501]={}
tRunVersionUpdate_Data[3311899][4011501]["LogId"] =12000938
tRunVersionUpdate_Data[3311899][4011501]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311899][4011501]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311899][4011501]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311899][4011501]["DeleteItem"][1]["Id"]=3311899
tRunVersionUpdate_Data[3311899][4011501]["RewardEffect"]={}
tRunVersionUpdate_Data[3311899][4011501]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311899][4011501]["RewardItem"] = {}
tRunVersionUpdate_Data[3311899][4011501]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311899][4011501]["RewardItem"][1]["Id"]=4011501
tRunVersionUpdate_Data[3311899][4011501]["RewardItem"][1]["Attr"] ="0 1"

--红色可选包
tRunVersionUpdate_Data[3314036]={}
tRunVersionUpdate_Data[3314036][4011101]={}
tRunVersionUpdate_Data[3314036][4011101]["LogId"] =12000938
tRunVersionUpdate_Data[3314036][4011101]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314036][4011101]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314036][4011101]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314036][4011101]["DeleteItem"][1]["Id"]=3314036
tRunVersionUpdate_Data[3314036][4011101]["RewardEffect"]={}
tRunVersionUpdate_Data[3314036][4011101]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314036][4011101]["RewardItem"] = {}
tRunVersionUpdate_Data[3314036][4011101]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314036][4011101]["RewardItem"][1]["Id"]=4011101
tRunVersionUpdate_Data[3314036][4011101]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3314036][4010001]={}
tRunVersionUpdate_Data[3314036][4010001]["LogId"] =12000938
tRunVersionUpdate_Data[3314036][4010001]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314036][4010001]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314036][4010001]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314036][4010001]["DeleteItem"][1]["Id"]=3314036
tRunVersionUpdate_Data[3314036][4010001]["RewardItem"] = {}
tRunVersionUpdate_Data[3314036][4010001]["RewardEffect"]={}
tRunVersionUpdate_Data[3314036][4010001]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314036][4010001]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314036][4010001]["RewardItem"][1]["Id"]=4010001
tRunVersionUpdate_Data[3314036][4010001]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3314036][4010101]={}
tRunVersionUpdate_Data[3314036][4010101]["LogId"] =12000938
tRunVersionUpdate_Data[3314036][4010101]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314036][4010101]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314036][4010101]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314036][4010101]["DeleteItem"][1]["Id"]=3314036
tRunVersionUpdate_Data[3314036][4010101]["RewardEffect"]={}
tRunVersionUpdate_Data[3314036][4010101]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314036][4010101]["RewardItem"] = {}
tRunVersionUpdate_Data[3314036][4010101]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314036][4010101]["RewardItem"][1]["Id"]=4010101
tRunVersionUpdate_Data[3314036][4010101]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3314036][4010201]={}
tRunVersionUpdate_Data[3314036][4010201]["LogId"] =12000938
tRunVersionUpdate_Data[3314036][4010201]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314036][4010201]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314036][4010201]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314036][4010201]["DeleteItem"][1]["Id"]=3314036
tRunVersionUpdate_Data[3314036][4010201]["RewardEffect"]={}
tRunVersionUpdate_Data[3314036][4010201]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314036][4010201]["RewardItem"] = {}
tRunVersionUpdate_Data[3314036][4010201]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314036][4010201]["RewardItem"][1]["Id"]=4010201
tRunVersionUpdate_Data[3314036][4010201]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3314036][4010301]={}
tRunVersionUpdate_Data[3314036][4010301]["LogId"] =12000938
tRunVersionUpdate_Data[3314036][4010301]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314036][4010301]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314036][4010301]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314036][4010301]["DeleteItem"][1]["Id"]=3314036
tRunVersionUpdate_Data[3314036][4010301]["RewardEffect"]={}
tRunVersionUpdate_Data[3314036][4010301]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314036][4010301]["RewardItem"] = {}
tRunVersionUpdate_Data[3314036][4010301]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314036][4010301]["RewardItem"][1]["Id"]=4010301
tRunVersionUpdate_Data[3314036][4010301]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3314036][4010401]={}
tRunVersionUpdate_Data[3314036][4010401]["LogId"] =12000938
tRunVersionUpdate_Data[3314036][4010401]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314036][4010401]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314036][4010401]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314036][4010401]["DeleteItem"][1]["Id"]=3314036
tRunVersionUpdate_Data[3314036][4010401]["RewardEffect"]={}
tRunVersionUpdate_Data[3314036][4010401]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314036][4010401]["RewardItem"] = {}
tRunVersionUpdate_Data[3314036][4010401]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314036][4010401]["RewardItem"][1]["Id"]=4010401
tRunVersionUpdate_Data[3314036][4010401]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3314036][4010501]={}
tRunVersionUpdate_Data[3314036][4010501]["LogId"] =12000938
tRunVersionUpdate_Data[3314036][4010501]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314036][4010501]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314036][4010501]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314036][4010501]["DeleteItem"][1]["Id"]=3314036
tRunVersionUpdate_Data[3314036][4010501]["RewardEffect"]={}
tRunVersionUpdate_Data[3314036][4010501]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314036][4010501]["RewardItem"] = {}
tRunVersionUpdate_Data[3314036][4010501]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314036][4010501]["RewardItem"][1]["Id"]=4010501
tRunVersionUpdate_Data[3314036][4010501]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3314036][4010601]={}
tRunVersionUpdate_Data[3314036][4010601]["LogId"] =12000938
tRunVersionUpdate_Data[3314036][4010601]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314036][4010601]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314036][4010601]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314036][4010601]["DeleteItem"][1]["Id"]=3314036
tRunVersionUpdate_Data[3314036][4010601]["RewardEffect"]={}
tRunVersionUpdate_Data[3314036][4010601]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314036][4010601]["RewardItem"] = {}
tRunVersionUpdate_Data[3314036][4010601]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314036][4010601]["RewardItem"][1]["Id"]=4010601
tRunVersionUpdate_Data[3314036][4010601]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3314036][4010701]={}
tRunVersionUpdate_Data[3314036][4010701]["LogId"] =12000938
tRunVersionUpdate_Data[3314036][4010701]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314036][4010701]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314036][4010701]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314036][4010701]["DeleteItem"][1]["Id"]=3314036
tRunVersionUpdate_Data[3314036][4010701]["RewardEffect"]={}
tRunVersionUpdate_Data[3314036][4010701]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314036][4010701]["RewardItem"] = {}
tRunVersionUpdate_Data[3314036][4010701]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314036][4010701]["RewardItem"][1]["Id"]=4010701
tRunVersionUpdate_Data[3314036][4010701]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3314036][4010801]={}
tRunVersionUpdate_Data[3314036][4010801]["LogId"] =12000938 
tRunVersionUpdate_Data[3314036][4010801]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314036][4010801]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314036][4010801]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314036][4010801]["DeleteItem"][1]["Id"]=3314036
tRunVersionUpdate_Data[3314036][4010801]["RewardEffect"]={}
tRunVersionUpdate_Data[3314036][4010801]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314036][4010801]["RewardItem"] = {}
tRunVersionUpdate_Data[3314036][4010801]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314036][4010801]["RewardItem"][1]["Id"]=4010801
tRunVersionUpdate_Data[3314036][4010801]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3314036][4010901]={}
tRunVersionUpdate_Data[3314036][4010901]["LogId"] =12000938
tRunVersionUpdate_Data[3314036][4010901]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314036][4010901]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314036][4010901]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314036][4010901]["DeleteItem"][1]["Id"]=3314036
tRunVersionUpdate_Data[3314036][4010901]["RewardEffect"]={}
tRunVersionUpdate_Data[3314036][4010901]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314036][4010901]["RewardItem"] = {}
tRunVersionUpdate_Data[3314036][4010901]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314036][4010901]["RewardItem"][1]["Id"]=4010901
tRunVersionUpdate_Data[3314036][4010901]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3314036][4011501]={}
tRunVersionUpdate_Data[3314036][4011501]["LogId"] =12000938
tRunVersionUpdate_Data[3314036][4011501]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314036][4011501]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314036][4011501]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314036][4011501]["DeleteItem"][1]["Id"]=3314036
tRunVersionUpdate_Data[3314036][4011501]["RewardEffect"]={}
tRunVersionUpdate_Data[3314036][4011501]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314036][4011501]["RewardItem"] = {}
tRunVersionUpdate_Data[3314036][4011501]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314036][4011501]["RewardItem"][1]["Id"]=4011501
tRunVersionUpdate_Data[3314036][4011501]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3314297]={}
tRunVersionUpdate_Data[3314297][4011101]={}
tRunVersionUpdate_Data[3314297][4011101]["LogId"] =12000938
tRunVersionUpdate_Data[3314297][4011101]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314297][4011101]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314297][4011101]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314297][4011101]["DeleteItem"][1]["Id"]=3314297
tRunVersionUpdate_Data[3314297][4011101]["RewardEffect"]={}
tRunVersionUpdate_Data[3314297][4011101]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314297][4011101]["RewardItem"] = {}
tRunVersionUpdate_Data[3314297][4011101]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314297][4011101]["RewardItem"][1]["Id"]=4011101
tRunVersionUpdate_Data[3314297][4011101]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3314297][4010001]={}
tRunVersionUpdate_Data[3314297][4010001]["LogId"] =12000938
tRunVersionUpdate_Data[3314297][4010001]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314297][4010001]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314297][4010001]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314297][4010001]["DeleteItem"][1]["Id"]=3314297
tRunVersionUpdate_Data[3314297][4010001]["RewardItem"] = {}
tRunVersionUpdate_Data[3314297][4010001]["RewardEffect"]={}
tRunVersionUpdate_Data[3314297][4010001]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314297][4010001]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314297][4010001]["RewardItem"][1]["Id"]=4010001
tRunVersionUpdate_Data[3314297][4010001]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3314297][4010101]={}
tRunVersionUpdate_Data[3314297][4010101]["LogId"] =12000938
tRunVersionUpdate_Data[3314297][4010101]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314297][4010101]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314297][4010101]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314297][4010101]["DeleteItem"][1]["Id"]=3314297
tRunVersionUpdate_Data[3314297][4010101]["RewardEffect"]={}
tRunVersionUpdate_Data[3314297][4010101]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314297][4010101]["RewardItem"] = {}
tRunVersionUpdate_Data[3314297][4010101]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314297][4010101]["RewardItem"][1]["Id"]=4010101
tRunVersionUpdate_Data[3314297][4010101]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3314297][4010201]={}
tRunVersionUpdate_Data[3314297][4010201]["LogId"] =12000938
tRunVersionUpdate_Data[3314297][4010201]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314297][4010201]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314297][4010201]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314297][4010201]["DeleteItem"][1]["Id"]=3314297
tRunVersionUpdate_Data[3314297][4010201]["RewardEffect"]={}
tRunVersionUpdate_Data[3314297][4010201]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314297][4010201]["RewardItem"] = {}
tRunVersionUpdate_Data[3314297][4010201]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314297][4010201]["RewardItem"][1]["Id"]=4010201
tRunVersionUpdate_Data[3314297][4010201]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3314297][4010301]={}
tRunVersionUpdate_Data[3314297][4010301]["LogId"] =12000938
tRunVersionUpdate_Data[3314297][4010301]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314297][4010301]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314297][4010301]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314297][4010301]["DeleteItem"][1]["Id"]=3314297
tRunVersionUpdate_Data[3314297][4010301]["RewardEffect"]={}
tRunVersionUpdate_Data[3314297][4010301]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314297][4010301]["RewardItem"] = {}
tRunVersionUpdate_Data[3314297][4010301]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314297][4010301]["RewardItem"][1]["Id"]=4010301
tRunVersionUpdate_Data[3314297][4010301]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3314297][4010401]={}
tRunVersionUpdate_Data[3314297][4010401]["LogId"] =12000938
tRunVersionUpdate_Data[3314297][4010401]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314297][4010401]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314297][4010401]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314297][4010401]["DeleteItem"][1]["Id"]=3314297
tRunVersionUpdate_Data[3314297][4010401]["RewardEffect"]={}
tRunVersionUpdate_Data[3314297][4010401]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314297][4010401]["RewardItem"] = {}
tRunVersionUpdate_Data[3314297][4010401]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314297][4010401]["RewardItem"][1]["Id"]=4010401
tRunVersionUpdate_Data[3314297][4010401]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3314297][4010501]={}
tRunVersionUpdate_Data[3314297][4010501]["LogId"] =12000938
tRunVersionUpdate_Data[3314297][4010501]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314297][4010501]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314297][4010501]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314297][4010501]["DeleteItem"][1]["Id"]=3314297
tRunVersionUpdate_Data[3314297][4010501]["RewardEffect"]={}
tRunVersionUpdate_Data[3314297][4010501]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314297][4010501]["RewardItem"] = {}
tRunVersionUpdate_Data[3314297][4010501]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314297][4010501]["RewardItem"][1]["Id"]=4010501
tRunVersionUpdate_Data[3314297][4010501]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3314297][4010601]={}
tRunVersionUpdate_Data[3314297][4010601]["LogId"] =12000938
tRunVersionUpdate_Data[3314297][4010601]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314297][4010601]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314297][4010601]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314297][4010601]["DeleteItem"][1]["Id"]=3314297
tRunVersionUpdate_Data[3314297][4010601]["RewardEffect"]={}
tRunVersionUpdate_Data[3314297][4010601]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314297][4010601]["RewardItem"] = {}
tRunVersionUpdate_Data[3314297][4010601]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314297][4010601]["RewardItem"][1]["Id"]=4010601
tRunVersionUpdate_Data[3314297][4010601]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3314297][4010701]={}
tRunVersionUpdate_Data[3314297][4010701]["LogId"] =12000938
tRunVersionUpdate_Data[3314297][4010701]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314297][4010701]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314297][4010701]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314297][4010701]["DeleteItem"][1]["Id"]=3314297
tRunVersionUpdate_Data[3314297][4010701]["RewardEffect"]={}
tRunVersionUpdate_Data[3314297][4010701]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314297][4010701]["RewardItem"] = {}
tRunVersionUpdate_Data[3314297][4010701]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314297][4010701]["RewardItem"][1]["Id"]=4010701
tRunVersionUpdate_Data[3314297][4010701]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3314297][4010801]={}
tRunVersionUpdate_Data[3314297][4010801]["LogId"] =12000938 
tRunVersionUpdate_Data[3314297][4010801]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314297][4010801]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314297][4010801]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314297][4010801]["DeleteItem"][1]["Id"]=3314297
tRunVersionUpdate_Data[3314297][4010801]["RewardEffect"]={}
tRunVersionUpdate_Data[3314297][4010801]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314297][4010801]["RewardItem"] = {}
tRunVersionUpdate_Data[3314297][4010801]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314297][4010801]["RewardItem"][1]["Id"]=4010801
tRunVersionUpdate_Data[3314297][4010801]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3314297][4010901]={}
tRunVersionUpdate_Data[3314297][4010901]["LogId"] =12000938
tRunVersionUpdate_Data[3314297][4010901]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314297][4010901]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314297][4010901]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314297][4010901]["DeleteItem"][1]["Id"]=3314297
tRunVersionUpdate_Data[3314297][4010901]["RewardEffect"]={}
tRunVersionUpdate_Data[3314297][4010901]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314297][4010901]["RewardItem"] = {}
tRunVersionUpdate_Data[3314297][4010901]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314297][4010901]["RewardItem"][1]["Id"]=4010901
tRunVersionUpdate_Data[3314297][4010901]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3314297][4011501]={}
tRunVersionUpdate_Data[3314297][4011501]["LogId"] =12000938
tRunVersionUpdate_Data[3314297][4011501]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314297][4011501]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314297][4011501]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314297][4011501]["DeleteItem"][1]["Id"]= 3314297
tRunVersionUpdate_Data[3314297][4011501]["RewardEffect"]={}
tRunVersionUpdate_Data[3314297][4011501]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314297][4011501]["RewardItem"] = {}
tRunVersionUpdate_Data[3314297][4011501]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314297][4011501]["RewardItem"][1]["Id"]=4011501
tRunVersionUpdate_Data[3314297][4011501]["RewardItem"][1]["Attr"] ="0 1 3"

--蓝色可选包
tRunVersionUpdate_Data[3311900]={}
tRunVersionUpdate_Data[3311900][4020101]={}
tRunVersionUpdate_Data[3311900][4020101]["LogId"] =12000938
tRunVersionUpdate_Data[3311900][4020101]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311900][4020101]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311900][4020101]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311900][4020101]["DeleteItem"][1]["Id"]=3311900
tRunVersionUpdate_Data[3311900][4020101]["RewardEffect"]={}
tRunVersionUpdate_Data[3311900][4020101]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311900][4020101]["RewardItem"] = {}
tRunVersionUpdate_Data[3311900][4020101]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311900][4020101]["RewardItem"][1]["Id"]=4020101
tRunVersionUpdate_Data[3311900][4020101]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311900][4020201]={}
tRunVersionUpdate_Data[3311900][4020201]["LogId"] =12000938
tRunVersionUpdate_Data[3311900][4020201]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311900][4020201]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311900][4020201]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311900][4020201]["DeleteItem"][1]["Id"]=3311900
tRunVersionUpdate_Data[3311900][4020201]["RewardEffect"]={}
tRunVersionUpdate_Data[3311900][4020201]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311900][4020201]["RewardItem"] = {}
tRunVersionUpdate_Data[3311900][4020201]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311900][4020201]["RewardItem"][1]["Id"]=4020201
tRunVersionUpdate_Data[3311900][4020201]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311900][4020301]={}
tRunVersionUpdate_Data[3311900][4020301]["LogId"] =12000938
tRunVersionUpdate_Data[3311900][4020301]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311900][4020301]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311900][4020301]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311900][4020301]["DeleteItem"][1]["Id"]=3311900
tRunVersionUpdate_Data[3311900][4020301]["RewardEffect"]={}
tRunVersionUpdate_Data[3311900][4020301]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311900][4020301]["RewardItem"] = {}
tRunVersionUpdate_Data[3311900][4020301]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311900][4020301]["RewardItem"][1]["Id"]=4020301
tRunVersionUpdate_Data[3311900][4020301]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311900][4020401]={}
tRunVersionUpdate_Data[3311900][4020401]["LogId"] =12000938
tRunVersionUpdate_Data[3311900][4020401]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311900][4020401]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311900][4020401]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311900][4020401]["DeleteItem"][1]["Id"]=3311900
tRunVersionUpdate_Data[3311900][4020401]["RewardEffect"]={}
tRunVersionUpdate_Data[3311900][4020401]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311900][4020401]["RewardItem"] = {}
tRunVersionUpdate_Data[3311900][4020401]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311900][4020401]["RewardItem"][1]["Id"]=4020401
tRunVersionUpdate_Data[3311900][4020401]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311900][4020501]={}
tRunVersionUpdate_Data[3311900][4020501]["LogId"] =12000938
tRunVersionUpdate_Data[3311900][4020501]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311900][4020501]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311900][4020501]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311900][4020501]["DeleteItem"][1]["Id"]=3311900
tRunVersionUpdate_Data[3311900][4020501]["RewardEffect"]={}
tRunVersionUpdate_Data[3311900][4020501]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311900][4020501]["RewardItem"] = {}
tRunVersionUpdate_Data[3311900][4020501]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311900][4020501]["RewardItem"][1]["Id"]=4020501
tRunVersionUpdate_Data[3311900][4020501]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311900][4020601]={}
tRunVersionUpdate_Data[3311900][4020601]["LogId"] =12000938
tRunVersionUpdate_Data[3311900][4020601]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311900][4020601]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311900][4020601]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311900][4020601]["DeleteItem"][1]["Id"]=3311900
tRunVersionUpdate_Data[3311900][4020601]["RewardEffect"]={}
tRunVersionUpdate_Data[3311900][4020601]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311900][4020601]["RewardItem"] = {}
tRunVersionUpdate_Data[3311900][4020601]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311900][4020601]["RewardItem"][1]["Id"]=4020601
tRunVersionUpdate_Data[3311900][4020601]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311900][4020701]={}
tRunVersionUpdate_Data[3311900][4020701]["LogId"] =12000938
tRunVersionUpdate_Data[3311900][4020701]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311900][4020701]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311900][4020701]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311900][4020701]["DeleteItem"][1]["Id"]=3311900
tRunVersionUpdate_Data[3311900][4020701]["RewardEffect"]={}
tRunVersionUpdate_Data[3311900][4020701]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311900][4020701]["RewardItem"] = {}
tRunVersionUpdate_Data[3311900][4020701]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311900][4020701]["RewardItem"][1]["Id"]=4020701
tRunVersionUpdate_Data[3311900][4020701]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311900][4020801]={}
tRunVersionUpdate_Data[3311900][4020801]["LogId"] =12000938
tRunVersionUpdate_Data[3311900][4020801]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311900][4020801]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311900][4020801]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311900][4020801]["DeleteItem"][1]["Id"]=3311900
tRunVersionUpdate_Data[3311900][4020801]["RewardEffect"]={}
tRunVersionUpdate_Data[3311900][4020801]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311900][4020801]["RewardItem"] = {}
tRunVersionUpdate_Data[3311900][4020801]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311900][4020801]["RewardItem"][1]["Id"]=4020801
tRunVersionUpdate_Data[3311900][4020801]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311900][4020901]={}
tRunVersionUpdate_Data[3311900][4020901]["LogId"] =12000938
tRunVersionUpdate_Data[3311900][4020901]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311900][4020901]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311900][4020901]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311900][4020901]["DeleteItem"][1]["Id"]=3311900
tRunVersionUpdate_Data[3311900][4020901]["RewardEffect"]={}
tRunVersionUpdate_Data[3311900][4020901]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311900][4020901]["RewardItem"] = {}
tRunVersionUpdate_Data[3311900][4020901]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311900][4020901]["RewardItem"][1]["Id"]=4020901
tRunVersionUpdate_Data[3311900][4020901]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311900][4021001]={}
tRunVersionUpdate_Data[3311900][4021001]["LogId"] =12000938
tRunVersionUpdate_Data[3311900][4021001]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311900][4021001]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311900][4021001]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311900][4021001]["DeleteItem"][1]["Id"]=3311900
tRunVersionUpdate_Data[3311900][4021001]["RewardEffect"]={}
tRunVersionUpdate_Data[3311900][4021001]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311900][4021001]["RewardItem"] = {}
tRunVersionUpdate_Data[3311900][4021001]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311900][4021001]["RewardItem"][1]["Id"]=4021001
tRunVersionUpdate_Data[3311900][4021001]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311900][4022201]={}
tRunVersionUpdate_Data[3311900][4022201]["LogId"] =12000938
tRunVersionUpdate_Data[3311900][4022201]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311900][4022201]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311900][4022201]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311900][4022201]["DeleteItem"][1]["Id"]=3311900
tRunVersionUpdate_Data[3311900][4022201]["RewardEffect"]={}
tRunVersionUpdate_Data[3311900][4022201]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311900][4022201]["RewardItem"] = {}
tRunVersionUpdate_Data[3311900][4022201]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311900][4022201]["RewardItem"][1]["Id"]=4022201
tRunVersionUpdate_Data[3311900][4022201]["RewardItem"][1]["Attr"] ="0 1"

--蓝色可选包
tRunVersionUpdate_Data[3314037]={}
tRunVersionUpdate_Data[3314037][4020101]={}
tRunVersionUpdate_Data[3314037][4020101]["LogId"] =12000938
tRunVersionUpdate_Data[3314037][4020101]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314037][4020101]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314037][4020101]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314037][4020101]["DeleteItem"][1]["Id"]=3314037
tRunVersionUpdate_Data[3314037][4020101]["RewardEffect"]={}
tRunVersionUpdate_Data[3314037][4020101]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314037][4020101]["RewardItem"] = {}
tRunVersionUpdate_Data[3314037][4020101]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314037][4020101]["RewardItem"][1]["Id"]=4020101
tRunVersionUpdate_Data[3314037][4020101]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3314037][4020201]={}
tRunVersionUpdate_Data[3314037][4020201]["LogId"] =12000938
tRunVersionUpdate_Data[3314037][4020201]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314037][4020201]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314037][4020201]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314037][4020201]["DeleteItem"][1]["Id"]=3314037
tRunVersionUpdate_Data[3314037][4020201]["RewardEffect"]={}
tRunVersionUpdate_Data[3314037][4020201]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314037][4020201]["RewardItem"] = {}
tRunVersionUpdate_Data[3314037][4020201]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314037][4020201]["RewardItem"][1]["Id"]=4020201
tRunVersionUpdate_Data[3314037][4020201]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3314037][4020301]={}
tRunVersionUpdate_Data[3314037][4020301]["LogId"] =12000938
tRunVersionUpdate_Data[3314037][4020301]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314037][4020301]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314037][4020301]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314037][4020301]["DeleteItem"][1]["Id"]=3314037
tRunVersionUpdate_Data[3314037][4020301]["RewardEffect"]={}
tRunVersionUpdate_Data[3314037][4020301]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314037][4020301]["RewardItem"] = {}
tRunVersionUpdate_Data[3314037][4020301]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314037][4020301]["RewardItem"][1]["Id"]=4020301
tRunVersionUpdate_Data[3314037][4020301]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3314037][4020401]={}
tRunVersionUpdate_Data[3314037][4020401]["LogId"] =12000938
tRunVersionUpdate_Data[3314037][4020401]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314037][4020401]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314037][4020401]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314037][4020401]["DeleteItem"][1]["Id"]=3314037
tRunVersionUpdate_Data[3314037][4020401]["RewardEffect"]={}
tRunVersionUpdate_Data[3314037][4020401]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314037][4020401]["RewardItem"] = {}
tRunVersionUpdate_Data[3314037][4020401]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314037][4020401]["RewardItem"][1]["Id"]=4020401
tRunVersionUpdate_Data[3314037][4020401]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3314037][4020501]={}
tRunVersionUpdate_Data[3314037][4020501]["LogId"] =12000938
tRunVersionUpdate_Data[3314037][4020501]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314037][4020501]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314037][4020501]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314037][4020501]["DeleteItem"][1]["Id"]=3314037
tRunVersionUpdate_Data[3314037][4020501]["RewardEffect"]={}
tRunVersionUpdate_Data[3314037][4020501]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314037][4020501]["RewardItem"] = {}
tRunVersionUpdate_Data[3314037][4020501]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314037][4020501]["RewardItem"][1]["Id"]=4020501
tRunVersionUpdate_Data[3314037][4020501]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3314037][4020601]={}
tRunVersionUpdate_Data[3314037][4020601]["LogId"] =12000938
tRunVersionUpdate_Data[3314037][4020601]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314037][4020601]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314037][4020601]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314037][4020601]["DeleteItem"][1]["Id"]=3314037
tRunVersionUpdate_Data[3314037][4020601]["RewardEffect"]={}
tRunVersionUpdate_Data[3314037][4020601]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314037][4020601]["RewardItem"] = {}
tRunVersionUpdate_Data[3314037][4020601]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314037][4020601]["RewardItem"][1]["Id"]=4020601
tRunVersionUpdate_Data[3314037][4020601]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3314037][4020701]={}
tRunVersionUpdate_Data[3314037][4020701]["LogId"] =12000938
tRunVersionUpdate_Data[3314037][4020701]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314037][4020701]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314037][4020701]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314037][4020701]["DeleteItem"][1]["Id"]=3314037
tRunVersionUpdate_Data[3314037][4020701]["RewardEffect"]={}
tRunVersionUpdate_Data[3314037][4020701]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314037][4020701]["RewardItem"] = {}
tRunVersionUpdate_Data[3314037][4020701]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314037][4020701]["RewardItem"][1]["Id"]=4020701
tRunVersionUpdate_Data[3314037][4020701]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3314037][4020801]={}
tRunVersionUpdate_Data[3314037][4020801]["LogId"] =12000938
tRunVersionUpdate_Data[3314037][4020801]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314037][4020801]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314037][4020801]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314037][4020801]["DeleteItem"][1]["Id"]=3314037
tRunVersionUpdate_Data[3314037][4020801]["RewardEffect"]={}
tRunVersionUpdate_Data[3314037][4020801]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314037][4020801]["RewardItem"] = {}
tRunVersionUpdate_Data[3314037][4020801]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314037][4020801]["RewardItem"][1]["Id"]=4020801
tRunVersionUpdate_Data[3314037][4020801]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3314037][4020901]={}
tRunVersionUpdate_Data[3314037][4020901]["LogId"] =12000938
tRunVersionUpdate_Data[3314037][4020901]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314037][4020901]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314037][4020901]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314037][4020901]["DeleteItem"][1]["Id"]=3314037
tRunVersionUpdate_Data[3314037][4020901]["RewardEffect"]={}
tRunVersionUpdate_Data[3314037][4020901]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314037][4020901]["RewardItem"] = {}
tRunVersionUpdate_Data[3314037][4020901]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314037][4020901]["RewardItem"][1]["Id"]=4020901
tRunVersionUpdate_Data[3314037][4020901]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3314037][4021001]={}
tRunVersionUpdate_Data[3314037][4021001]["LogId"] =12000938
tRunVersionUpdate_Data[3314037][4021001]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314037][4021001]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314037][4021001]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314037][4021001]["DeleteItem"][1]["Id"]=3314037
tRunVersionUpdate_Data[3314037][4021001]["RewardEffect"]={}
tRunVersionUpdate_Data[3314037][4021001]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314037][4021001]["RewardItem"] = {}
tRunVersionUpdate_Data[3314037][4021001]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314037][4021001]["RewardItem"][1]["Id"]=4021001
tRunVersionUpdate_Data[3314037][4021001]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3314037][4022201]={}
tRunVersionUpdate_Data[3314037][4022201]["LogId"] =12000938
tRunVersionUpdate_Data[3314037][4022201]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314037][4022201]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314037][4022201]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314037][4022201]["DeleteItem"][1]["Id"]=3314037
tRunVersionUpdate_Data[3314037][4022201]["RewardEffect"]={}
tRunVersionUpdate_Data[3314037][4022201]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314037][4022201]["RewardItem"] = {}
tRunVersionUpdate_Data[3314037][4022201]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314037][4022201]["RewardItem"][1]["Id"]=4022201
tRunVersionUpdate_Data[3314037][4022201]["RewardItem"][1]["Attr"] ="0 1"

--蓝色可选包
tRunVersionUpdate_Data[3314298]={}
tRunVersionUpdate_Data[3314298][4020101]={}
tRunVersionUpdate_Data[3314298][4020101]["LogId"] =12000938
tRunVersionUpdate_Data[3314298][4020101]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314298][4020101]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314298][4020101]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314298][4020101]["DeleteItem"][1]["Id"]=3314298
tRunVersionUpdate_Data[3314298][4020101]["RewardEffect"]={}
tRunVersionUpdate_Data[3314298][4020101]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314298][4020101]["RewardItem"] = {}
tRunVersionUpdate_Data[3314298][4020101]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314298][4020101]["RewardItem"][1]["Id"]=4020101
tRunVersionUpdate_Data[3314298][4020101]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3314298][4020201]={}
tRunVersionUpdate_Data[3314298][4020201]["LogId"] =12000938
tRunVersionUpdate_Data[3314298][4020201]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314298][4020201]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314298][4020201]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314298][4020201]["DeleteItem"][1]["Id"]=3314298
tRunVersionUpdate_Data[3314298][4020201]["RewardEffect"]={}
tRunVersionUpdate_Data[3314298][4020201]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314298][4020201]["RewardItem"] = {}
tRunVersionUpdate_Data[3314298][4020201]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314298][4020201]["RewardItem"][1]["Id"]=4020201
tRunVersionUpdate_Data[3314298][4020201]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3314298][4020301]={}
tRunVersionUpdate_Data[3314298][4020301]["LogId"] =12000938
tRunVersionUpdate_Data[3314298][4020301]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314298][4020301]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314298][4020301]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314298][4020301]["DeleteItem"][1]["Id"]=3314298
tRunVersionUpdate_Data[3314298][4020301]["RewardEffect"]={}
tRunVersionUpdate_Data[3314298][4020301]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314298][4020301]["RewardItem"] = {}
tRunVersionUpdate_Data[3314298][4020301]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314298][4020301]["RewardItem"][1]["Id"]=4020301
tRunVersionUpdate_Data[3314298][4020301]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3314298][4020401]={}
tRunVersionUpdate_Data[3314298][4020401]["LogId"] =12000938
tRunVersionUpdate_Data[3314298][4020401]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314298][4020401]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314298][4020401]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314298][4020401]["DeleteItem"][1]["Id"]=3314298
tRunVersionUpdate_Data[3314298][4020401]["RewardEffect"]={}
tRunVersionUpdate_Data[3314298][4020401]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314298][4020401]["RewardItem"] = {}
tRunVersionUpdate_Data[3314298][4020401]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314298][4020401]["RewardItem"][1]["Id"]=4020401
tRunVersionUpdate_Data[3314298][4020401]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3314298][4020501]={}
tRunVersionUpdate_Data[3314298][4020501]["LogId"] =12000938
tRunVersionUpdate_Data[3314298][4020501]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314298][4020501]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314298][4020501]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314298][4020501]["DeleteItem"][1]["Id"]=3314298
tRunVersionUpdate_Data[3314298][4020501]["RewardEffect"]={}
tRunVersionUpdate_Data[3314298][4020501]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314298][4020501]["RewardItem"] = {}
tRunVersionUpdate_Data[3314298][4020501]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314298][4020501]["RewardItem"][1]["Id"]=4020501
tRunVersionUpdate_Data[3314298][4020501]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3314298][4020601]={}
tRunVersionUpdate_Data[3314298][4020601]["LogId"] =12000938
tRunVersionUpdate_Data[3314298][4020601]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314298][4020601]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314298][4020601]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314298][4020601]["DeleteItem"][1]["Id"]=3314298
tRunVersionUpdate_Data[3314298][4020601]["RewardEffect"]={}
tRunVersionUpdate_Data[3314298][4020601]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314298][4020601]["RewardItem"] = {}
tRunVersionUpdate_Data[3314298][4020601]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314298][4020601]["RewardItem"][1]["Id"]=4020601
tRunVersionUpdate_Data[3314298][4020601]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3314298][4020701]={}
tRunVersionUpdate_Data[3314298][4020701]["LogId"] =12000938
tRunVersionUpdate_Data[3314298][4020701]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314298][4020701]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314298][4020701]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314298][4020701]["DeleteItem"][1]["Id"]=3314298
tRunVersionUpdate_Data[3314298][4020701]["RewardEffect"]={}
tRunVersionUpdate_Data[3314298][4020701]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314298][4020701]["RewardItem"] = {}
tRunVersionUpdate_Data[3314298][4020701]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314298][4020701]["RewardItem"][1]["Id"]=4020701
tRunVersionUpdate_Data[3314298][4020701]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3314298][4020801]={}
tRunVersionUpdate_Data[3314298][4020801]["LogId"] =12000938
tRunVersionUpdate_Data[3314298][4020801]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314298][4020801]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314298][4020801]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314298][4020801]["DeleteItem"][1]["Id"]=3314298
tRunVersionUpdate_Data[3314298][4020801]["RewardEffect"]={}
tRunVersionUpdate_Data[3314298][4020801]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314298][4020801]["RewardItem"] = {}
tRunVersionUpdate_Data[3314298][4020801]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314298][4020801]["RewardItem"][1]["Id"]=4020801
tRunVersionUpdate_Data[3314298][4020801]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3314298][4020901]={}
tRunVersionUpdate_Data[3314298][4020901]["LogId"] =12000938
tRunVersionUpdate_Data[3314298][4020901]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314298][4020901]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314298][4020901]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314298][4020901]["DeleteItem"][1]["Id"]=3314298
tRunVersionUpdate_Data[3314298][4020901]["RewardEffect"]={}
tRunVersionUpdate_Data[3314298][4020901]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314298][4020901]["RewardItem"] = {}
tRunVersionUpdate_Data[3314298][4020901]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314298][4020901]["RewardItem"][1]["Id"]=4020901
tRunVersionUpdate_Data[3314298][4020901]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3314298][4021001]={}
tRunVersionUpdate_Data[3314298][4021001]["LogId"] =12000938
tRunVersionUpdate_Data[3314298][4021001]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314298][4021001]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314298][4021001]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314298][4021001]["DeleteItem"][1]["Id"]=3314298
tRunVersionUpdate_Data[3314298][4021001]["RewardEffect"]={}
tRunVersionUpdate_Data[3314298][4021001]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314298][4021001]["RewardItem"] = {}
tRunVersionUpdate_Data[3314298][4021001]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314298][4021001]["RewardItem"][1]["Id"]=4021001
tRunVersionUpdate_Data[3314298][4021001]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3314298][4022201]={}
tRunVersionUpdate_Data[3314298][4022201]["LogId"] =12000938
tRunVersionUpdate_Data[3314298][4022201]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3314298][4022201]["DeleteItem"] = {}
tRunVersionUpdate_Data[3314298][4022201]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3314298][4022201]["DeleteItem"][1]["Id"]=3314298
tRunVersionUpdate_Data[3314298][4022201]["RewardEffect"]={}
tRunVersionUpdate_Data[3314298][4022201]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3314298][4022201]["RewardItem"] = {}
tRunVersionUpdate_Data[3314298][4022201]["RewardItem"][1]={}
tRunVersionUpdate_Data[3314298][4022201]["RewardItem"][1]["Id"]=4022201
tRunVersionUpdate_Data[3314298][4022201]["RewardItem"][1]["Attr"] ="0 1 3"

--红色可选包（赠）
tRunVersionUpdate_Data[3311904]={}
tRunVersionUpdate_Data[3311904][4011101]={}
tRunVersionUpdate_Data[3311904][4011101]["LogId"] =12000938
tRunVersionUpdate_Data[3311904][4011101]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311904][4011101]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311904][4011101]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311904][4011101]["DeleteItem"][1]["Id"]=3311904
tRunVersionUpdate_Data[3311904][4011101]["RewardEffect"]={}
tRunVersionUpdate_Data[3311904][4011101]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311904][4011101]["RewardItem"] = {}
tRunVersionUpdate_Data[3311904][4011101]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311904][4011101]["RewardItem"][1]["Id"]=4011101
tRunVersionUpdate_Data[3311904][4011101]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3311904][4010001]={}
tRunVersionUpdate_Data[3311904][4010001]["LogId"] =12000938
tRunVersionUpdate_Data[3311904][4010001]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311904][4010001]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311904][4010001]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311904][4010001]["DeleteItem"][1]["Id"]=3311904
tRunVersionUpdate_Data[3311904][4010001]["RewardEffect"]={}
tRunVersionUpdate_Data[3311904][4010001]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311904][4010001]["RewardItem"] = {}
tRunVersionUpdate_Data[3311904][4010001]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311904][4010001]["RewardItem"][1]["Id"]=4010001
tRunVersionUpdate_Data[3311904][4010001]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3311904][4010101]={}
tRunVersionUpdate_Data[3311904][4010101]["LogId"] =12000938
tRunVersionUpdate_Data[3311904][4010101]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311904][4010101]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311904][4010101]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311904][4010101]["DeleteItem"][1]["Id"]=3311904
tRunVersionUpdate_Data[3311904][4010101]["RewardEffect"]={}
tRunVersionUpdate_Data[3311904][4010101]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311904][4010101]["RewardItem"] = {}
tRunVersionUpdate_Data[3311904][4010101]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311904][4010101]["RewardItem"][1]["Id"]=4010101
tRunVersionUpdate_Data[3311904][4010101]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3311904][4010201]={}
tRunVersionUpdate_Data[3311904][4010201]["LogId"] =12000938
tRunVersionUpdate_Data[3311904][4010201]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311904][4010201]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311904][4010201]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311904][4010201]["DeleteItem"][1]["Id"]=3311904
tRunVersionUpdate_Data[3311904][4010201]["RewardEffect"]={}
tRunVersionUpdate_Data[3311904][4010201]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311904][4010201]["RewardItem"] = {}
tRunVersionUpdate_Data[3311904][4010201]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311904][4010201]["RewardItem"][1]["Id"]=4010201
tRunVersionUpdate_Data[3311904][4010201]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3311904][4010301]={}
tRunVersionUpdate_Data[3311904][4010301]["LogId"] =12000938
tRunVersionUpdate_Data[3311904][4010301]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311904][4010301]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311904][4010301]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311904][4010301]["DeleteItem"][1]["Id"]=3311904
tRunVersionUpdate_Data[3311904][4010301]["RewardEffect"]={}
tRunVersionUpdate_Data[3311904][4010301]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311904][4010301]["RewardItem"] = {}
tRunVersionUpdate_Data[3311904][4010301]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311904][4010301]["RewardItem"][1]["Id"]=4010301
tRunVersionUpdate_Data[3311904][4010301]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3311904][4010401]={}
tRunVersionUpdate_Data[3311904][4010401]["LogId"] =12000938
tRunVersionUpdate_Data[3311904][4010401]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311904][4010401]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311904][4010401]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311904][4010401]["DeleteItem"][1]["Id"]=3311904
tRunVersionUpdate_Data[3311904][4010401]["RewardEffect"]={}
tRunVersionUpdate_Data[3311904][4010401]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311904][4010401]["RewardItem"] = {}
tRunVersionUpdate_Data[3311904][4010401]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311904][4010401]["RewardItem"][1]["Id"]=4010401
tRunVersionUpdate_Data[3311904][4010401]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3311904][4010501]={}
tRunVersionUpdate_Data[3311904][4010501]["LogId"] =12000938
tRunVersionUpdate_Data[3311904][4010501]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311904][4010501]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311904][4010501]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311904][4010501]["DeleteItem"][1]["Id"]=3311904
tRunVersionUpdate_Data[3311904][4010501]["RewardEffect"]={}
tRunVersionUpdate_Data[3311904][4010501]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311904][4010501]["RewardItem"] = {}
tRunVersionUpdate_Data[3311904][4010501]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311904][4010501]["RewardItem"][1]["Id"]=4010501
tRunVersionUpdate_Data[3311904][4010501]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3311904][4010601]={}
tRunVersionUpdate_Data[3311904][4010601]["LogId"] =12000938
tRunVersionUpdate_Data[3311904][4010601]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311904][4010601]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311904][4010601]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311904][4010601]["DeleteItem"][1]["Id"]=3311904
tRunVersionUpdate_Data[3311904][4010601]["RewardEffect"]={}
tRunVersionUpdate_Data[3311904][4010601]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311904][4010601]["RewardItem"] = {}
tRunVersionUpdate_Data[3311904][4010601]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311904][4010601]["RewardItem"][1]["Id"]=4010601
tRunVersionUpdate_Data[3311904][4010601]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3311904][4010701]={}
tRunVersionUpdate_Data[3311904][4010701]["LogId"] =12000938
tRunVersionUpdate_Data[3311904][4010701]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311904][4010701]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311904][4010701]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311904][4010701]["DeleteItem"][1]["Id"]=3311904
tRunVersionUpdate_Data[3311904][4010701]["RewardEffect"]={}
tRunVersionUpdate_Data[3311904][4010701]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311904][4010701]["RewardItem"] = {}
tRunVersionUpdate_Data[3311904][4010701]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311904][4010701]["RewardItem"][1]["Id"]=4010701
tRunVersionUpdate_Data[3311904][4010701]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3311904][4010801]={}
tRunVersionUpdate_Data[3311904][4010801]["LogId"] =12000938
tRunVersionUpdate_Data[3311904][4010801]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311904][4010801]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311904][4010801]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311904][4010801]["DeleteItem"][1]["Id"]=3311904
tRunVersionUpdate_Data[3311904][4010801]["RewardEffect"]={}
tRunVersionUpdate_Data[3311904][4010801]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311904][4010801]["RewardItem"] = {}
tRunVersionUpdate_Data[3311904][4010801]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311904][4010801]["RewardItem"][1]["Id"]=4010801
tRunVersionUpdate_Data[3311904][4010801]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3311904][4010901]={}
tRunVersionUpdate_Data[3311904][4010901]["LogId"] =12000938
tRunVersionUpdate_Data[3311904][4010901]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311904][4010901]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311904][4010901]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311904][4010901]["DeleteItem"][1]["Id"]=3311904
tRunVersionUpdate_Data[3311904][4010901]["RewardEffect"]={}
tRunVersionUpdate_Data[3311904][4010901]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311904][4010901]["RewardItem"] = {}
tRunVersionUpdate_Data[3311904][4010901]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311904][4010901]["RewardItem"][1]["Id"]=4010901
tRunVersionUpdate_Data[3311904][4010901]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3311904][4011501]={}
tRunVersionUpdate_Data[3311904][4011501]["LogId"] =12000938
tRunVersionUpdate_Data[3311904][4011501]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311904][4011501]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311904][4011501]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311904][4011501]["DeleteItem"][1]["Id"]=3311904
tRunVersionUpdate_Data[3311904][4011501]["RewardEffect"]={}
tRunVersionUpdate_Data[3311904][4011501]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311904][4011501]["RewardItem"] = {}
tRunVersionUpdate_Data[3311904][4011501]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311904][4011501]["RewardItem"][1]["Id"]=4011501
tRunVersionUpdate_Data[3311904][4011501]["RewardItem"][1]["Attr"] ="0 1 3"

--蓝色可选包（赠）
tRunVersionUpdate_Data[3311905]={}
tRunVersionUpdate_Data[3311905][4020101]={}
tRunVersionUpdate_Data[3311905][4020101]["LogId"] =12000938
tRunVersionUpdate_Data[3311905][4020101]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311905][4020101]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311905][4020101]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311905][4020101]["DeleteItem"][1]["Id"]=3311905
tRunVersionUpdate_Data[3311905][4020101]["RewardEffect"]={}
tRunVersionUpdate_Data[3311905][4020101]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311905][4020101]["RewardItem"] = {}
tRunVersionUpdate_Data[3311905][4020101]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311905][4020101]["RewardItem"][1]["Id"]=4020101
tRunVersionUpdate_Data[3311905][4020101]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3311905][4020201]={}
tRunVersionUpdate_Data[3311905][4020201]["LogId"] =12000938
tRunVersionUpdate_Data[3311905][4020201]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311905][4020201]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311905][4020201]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311905][4020201]["DeleteItem"][1]["Id"]=3311905
tRunVersionUpdate_Data[3311905][4020201]["RewardEffect"]={}
tRunVersionUpdate_Data[3311905][4020201]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311905][4020201]["RewardItem"] = {}
tRunVersionUpdate_Data[3311905][4020201]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311905][4020201]["RewardItem"][1]["Id"]=4020201
tRunVersionUpdate_Data[3311905][4020201]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3311905][4020301]={}
tRunVersionUpdate_Data[3311905][4020301]["LogId"] =12000938
tRunVersionUpdate_Data[3311905][4020301]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311905][4020301]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311905][4020301]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311905][4020301]["DeleteItem"][1]["Id"]=3311905
tRunVersionUpdate_Data[3311905][4020301]["RewardEffect"]={}
tRunVersionUpdate_Data[3311905][4020301]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311905][4020301]["RewardItem"] = {}
tRunVersionUpdate_Data[3311905][4020301]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311905][4020301]["RewardItem"][1]["Id"]=4020301
tRunVersionUpdate_Data[3311905][4020301]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3311905][4020401]={}
tRunVersionUpdate_Data[3311905][4020401]["LogId"] =12000938
tRunVersionUpdate_Data[3311905][4020401]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311905][4020401]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311905][4020401]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311905][4020401]["DeleteItem"][1]["Id"]=3311905
tRunVersionUpdate_Data[3311905][4020401]["RewardEffect"]={}
tRunVersionUpdate_Data[3311905][4020401]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311905][4020401]["RewardItem"] = {}
tRunVersionUpdate_Data[3311905][4020401]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311905][4020401]["RewardItem"][1]["Id"]=4020401
tRunVersionUpdate_Data[3311905][4020401]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3311905][4020501]={}
tRunVersionUpdate_Data[3311905][4020501]["LogId"] =12000938
tRunVersionUpdate_Data[3311905][4020501]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311905][4020501]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311905][4020501]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311905][4020501]["DeleteItem"][1]["Id"]=3311905
tRunVersionUpdate_Data[3311905][4020501]["RewardEffect"]={}
tRunVersionUpdate_Data[3311905][4020501]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311905][4020501]["RewardItem"] = {}
tRunVersionUpdate_Data[3311905][4020501]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311905][4020501]["RewardItem"][1]["Id"]=4020501
tRunVersionUpdate_Data[3311905][4020501]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3311905][4020601]={}
tRunVersionUpdate_Data[3311905][4020601]["LogId"] =12000938
tRunVersionUpdate_Data[3311905][4020601]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311905][4020601]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311905][4020601]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311905][4020601]["DeleteItem"][1]["Id"]=3311905
tRunVersionUpdate_Data[3311905][4020601]["RewardEffect"]={}
tRunVersionUpdate_Data[3311905][4020601]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311905][4020601]["RewardItem"] = {}
tRunVersionUpdate_Data[3311905][4020601]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311905][4020601]["RewardItem"][1]["Id"]=4020601
tRunVersionUpdate_Data[3311905][4020601]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3311905][4020701]={}
tRunVersionUpdate_Data[3311905][4020701]["LogId"] =12000938
tRunVersionUpdate_Data[3311905][4020701]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311905][4020701]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311905][4020701]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311905][4020701]["DeleteItem"][1]["Id"]=3311905
tRunVersionUpdate_Data[3311905][4020701]["RewardEffect"]={}
tRunVersionUpdate_Data[3311905][4020701]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311905][4020701]["RewardItem"] = {}
tRunVersionUpdate_Data[3311905][4020701]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311905][4020701]["RewardItem"][1]["Id"]=4020701
tRunVersionUpdate_Data[3311905][4020701]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3311905][4020801]={}
tRunVersionUpdate_Data[3311905][4020801]["LogId"] =12000938
tRunVersionUpdate_Data[3311905][4020801]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311905][4020801]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311905][4020801]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311905][4020801]["DeleteItem"][1]["Id"]=3311905
tRunVersionUpdate_Data[3311905][4020801]["RewardEffect"]={}
tRunVersionUpdate_Data[3311905][4020801]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311905][4020801]["RewardItem"] = {}
tRunVersionUpdate_Data[3311905][4020801]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311905][4020801]["RewardItem"][1]["Id"]=4020801
tRunVersionUpdate_Data[3311905][4020801]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3311905][4020901]={}
tRunVersionUpdate_Data[3311905][4020901]["LogId"] =12000938
tRunVersionUpdate_Data[3311905][4020901]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311905][4020901]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311905][4020901]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311905][4020901]["DeleteItem"][1]["Id"]=3311905
tRunVersionUpdate_Data[3311905][4020901]["RewardEffect"]={}
tRunVersionUpdate_Data[3311905][4020901]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311905][4020901]["RewardItem"] = {}
tRunVersionUpdate_Data[3311905][4020901]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311905][4020901]["RewardItem"][1]["Id"]=4020901
tRunVersionUpdate_Data[3311905][4020901]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3311905][4021001]={}
tRunVersionUpdate_Data[3311905][4021001]["LogId"] =12000938
tRunVersionUpdate_Data[3311905][4021001]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311905][4021001]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311905][4021001]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311905][4021001]["DeleteItem"][1]["Id"]=3311905
tRunVersionUpdate_Data[3311905][4021001]["RewardEffect"]={}
tRunVersionUpdate_Data[3311905][4021001]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311905][4021001]["RewardItem"] = {}
tRunVersionUpdate_Data[3311905][4021001]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311905][4021001]["RewardItem"][1]["Id"]=4021001
tRunVersionUpdate_Data[3311905][4021001]["RewardItem"][1]["Attr"] ="0 1 3"

tRunVersionUpdate_Data[3311905][4022201]={}
tRunVersionUpdate_Data[3311905][4022201]["LogId"] =12000938
tRunVersionUpdate_Data[3311905][4022201]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311905][4022201]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311905][4022201]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311905][4022201]["DeleteItem"][1]["Id"]=3311905
tRunVersionUpdate_Data[3311905][4022201]["RewardEffect"]={}
tRunVersionUpdate_Data[3311905][4022201]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311905][4022201]["RewardItem"] = {}
tRunVersionUpdate_Data[3311905][4022201]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311905][4022201]["RewardItem"][1]["Id"]=4022201
tRunVersionUpdate_Data[3311905][4022201]["RewardItem"][1]["Attr"] ="0 1 3"

--红色可选包
tRunVersionUpdate_Data[3311902]={}
tRunVersionUpdate_Data[3311902][4011101]={}
tRunVersionUpdate_Data[3311902][4011101]["LogId"] =12000938
tRunVersionUpdate_Data[3311902][4011101]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311902][4011101]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311902][4011101]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311902][4011101]["DeleteItem"][1]["Id"]=3311902
tRunVersionUpdate_Data[3311902][4011101]["RewardEffect"]={}
tRunVersionUpdate_Data[3311902][4011101]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311902][4011101]["RewardItem"] = {}
tRunVersionUpdate_Data[3311902][4011101]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311902][4011101]["RewardItem"][1]["Id"]=4011101
tRunVersionUpdate_Data[3311902][4011101]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311902][4010001]={}
tRunVersionUpdate_Data[3311902][4010001]["LogId"] =12000938
tRunVersionUpdate_Data[3311902][4010001]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311902][4010001]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311902][4010001]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311902][4010001]["DeleteItem"][1]["Id"]=3311902
tRunVersionUpdate_Data[3311902][4010001]["RewardItem"] = {}
tRunVersionUpdate_Data[3311902][4010001]["RewardEffect"]={}
tRunVersionUpdate_Data[3311902][4010001]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311902][4010001]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311902][4010001]["RewardItem"][1]["Id"]=4010001
tRunVersionUpdate_Data[3311902][4010001]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311902][4010101]={}
tRunVersionUpdate_Data[3311902][4010101]["LogId"] =12000938
tRunVersionUpdate_Data[3311902][4010101]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311902][4010101]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311902][4010101]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311902][4010101]["DeleteItem"][1]["Id"]=3311902
tRunVersionUpdate_Data[3311902][4010101]["RewardEffect"]={}
tRunVersionUpdate_Data[3311902][4010101]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311902][4010101]["RewardItem"] = {}
tRunVersionUpdate_Data[3311902][4010101]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311902][4010101]["RewardItem"][1]["Id"]=4010101
tRunVersionUpdate_Data[3311902][4010101]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311902][4010201]={}
tRunVersionUpdate_Data[3311902][4010201]["LogId"] =12000938
tRunVersionUpdate_Data[3311902][4010201]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311902][4010201]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311902][4010201]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311902][4010201]["DeleteItem"][1]["Id"]=3311902
tRunVersionUpdate_Data[3311902][4010201]["RewardEffect"]={}
tRunVersionUpdate_Data[3311902][4010201]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311902][4010201]["RewardItem"] = {}
tRunVersionUpdate_Data[3311902][4010201]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311902][4010201]["RewardItem"][1]["Id"]=4010201
tRunVersionUpdate_Data[3311902][4010201]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311902][4010301]={}
tRunVersionUpdate_Data[3311902][4010301]["LogId"] =12000938
tRunVersionUpdate_Data[3311902][4010301]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311902][4010301]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311902][4010301]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311902][4010301]["DeleteItem"][1]["Id"]=3311902
tRunVersionUpdate_Data[3311902][4010301]["RewardEffect"]={}
tRunVersionUpdate_Data[3311902][4010301]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311902][4010301]["RewardItem"] = {}
tRunVersionUpdate_Data[3311902][4010301]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311902][4010301]["RewardItem"][1]["Id"]=4010301
tRunVersionUpdate_Data[3311902][4010301]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311902][4010401]={}
tRunVersionUpdate_Data[3311902][4010401]["LogId"] =12000938
tRunVersionUpdate_Data[3311902][4010401]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311902][4010401]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311902][4010401]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311902][4010401]["DeleteItem"][1]["Id"]=3311902
tRunVersionUpdate_Data[3311902][4010401]["RewardEffect"]={}
tRunVersionUpdate_Data[3311902][4010401]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311902][4010401]["RewardItem"] = {}
tRunVersionUpdate_Data[3311902][4010401]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311902][4010401]["RewardItem"][1]["Id"]=4010401
tRunVersionUpdate_Data[3311902][4010401]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311902][4010501]={}
tRunVersionUpdate_Data[3311902][4010501]["LogId"] =12000938
tRunVersionUpdate_Data[3311902][4010501]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311902][4010501]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311902][4010501]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311902][4010501]["DeleteItem"][1]["Id"]=3311902
tRunVersionUpdate_Data[3311902][4010501]["RewardEffect"]={}
tRunVersionUpdate_Data[3311902][4010501]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311902][4010501]["RewardItem"] = {}
tRunVersionUpdate_Data[3311902][4010501]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311902][4010501]["RewardItem"][1]["Id"]=4010501
tRunVersionUpdate_Data[3311902][4010501]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311902][4010601]={}
tRunVersionUpdate_Data[3311902][4010601]["LogId"] =12000938
tRunVersionUpdate_Data[3311902][4010601]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311902][4010601]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311902][4010601]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311902][4010601]["DeleteItem"][1]["Id"]=3311902
tRunVersionUpdate_Data[3311902][4010601]["RewardEffect"]={}
tRunVersionUpdate_Data[3311902][4010601]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311902][4010601]["RewardItem"] = {}
tRunVersionUpdate_Data[3311902][4010601]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311902][4010601]["RewardItem"][1]["Id"]=4010601
tRunVersionUpdate_Data[3311902][4010601]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311902][4010701]={}
tRunVersionUpdate_Data[3311902][4010701]["LogId"] =12000938
tRunVersionUpdate_Data[3311902][4010701]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311902][4010701]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311902][4010701]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311902][4010701]["DeleteItem"][1]["Id"]=3311902
tRunVersionUpdate_Data[3311902][4010701]["RewardEffect"]={}
tRunVersionUpdate_Data[3311902][4010701]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311902][4010701]["RewardItem"] = {}
tRunVersionUpdate_Data[3311902][4010701]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311902][4010701]["RewardItem"][1]["Id"]=4010701
tRunVersionUpdate_Data[3311902][4010701]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311902][4010801]={}
tRunVersionUpdate_Data[3311902][4010801]["LogId"] =12000938
tRunVersionUpdate_Data[3311902][4010801]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311902][4010801]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311902][4010801]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311902][4010801]["DeleteItem"][1]["Id"]=3311902
tRunVersionUpdate_Data[3311902][4010801]["RewardEffect"]={}
tRunVersionUpdate_Data[3311902][4010801]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311902][4010801]["RewardItem"] = {}
tRunVersionUpdate_Data[3311902][4010801]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311902][4010801]["RewardItem"][1]["Id"]=4010801
tRunVersionUpdate_Data[3311902][4010801]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311902][4010901]={}
tRunVersionUpdate_Data[3311902][4010901]["LogId"] =12000938
tRunVersionUpdate_Data[3311902][4010901]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311902][4010901]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311902][4010901]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311902][4010901]["DeleteItem"][1]["Id"]=3311902
tRunVersionUpdate_Data[3311902][4010901]["RewardEffect"]={}
tRunVersionUpdate_Data[3311902][4010901]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311902][4010901]["RewardItem"] = {}
tRunVersionUpdate_Data[3311902][4010901]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311902][4010901]["RewardItem"][1]["Id"]=4010901
tRunVersionUpdate_Data[3311902][4010901]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311902][4011501]={}
tRunVersionUpdate_Data[3311902][4011501]["LogId"] =12000938
tRunVersionUpdate_Data[3311902][4011501]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311902][4011501]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311902][4011501]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311902][4011501]["DeleteItem"][1]["Id"]=3311902
tRunVersionUpdate_Data[3311902][4011501]["RewardEffect"]={}
tRunVersionUpdate_Data[3311902][4011501]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311902][4011501]["RewardItem"] = {}
tRunVersionUpdate_Data[3311902][4011501]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311902][4011501]["RewardItem"][1]["Id"]=4011501
tRunVersionUpdate_Data[3311902][4011501]["RewardItem"][1]["Attr"] ="0 1"
--蓝色可选包
tRunVersionUpdate_Data[3311903]={}
tRunVersionUpdate_Data[3311903][4020101]={}
tRunVersionUpdate_Data[3311903][4020101]["LogId"] =12000938
tRunVersionUpdate_Data[3311903][4020101]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311903][4020101]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311903][4020101]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311903][4020101]["DeleteItem"][1]["Id"]=3311903
tRunVersionUpdate_Data[3311903][4020101]["RewardEffect"]={}
tRunVersionUpdate_Data[3311903][4020101]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311903][4020101]["RewardItem"] = {}
tRunVersionUpdate_Data[3311903][4020101]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311903][4020101]["RewardItem"][1]["Id"]=4020101
tRunVersionUpdate_Data[3311903][4020101]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311903][4020201]={}
tRunVersionUpdate_Data[3311903][4020201]["LogId"] =12000938
tRunVersionUpdate_Data[3311903][4020201]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311903][4020201]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311903][4020201]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311903][4020201]["DeleteItem"][1]["Id"]=3311903
tRunVersionUpdate_Data[3311903][4020201]["RewardEffect"]={}
tRunVersionUpdate_Data[3311903][4020201]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311903][4020201]["RewardItem"] = {}
tRunVersionUpdate_Data[3311903][4020201]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311903][4020201]["RewardItem"][1]["Id"]=4020201
tRunVersionUpdate_Data[3311903][4020201]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311903][4020301]={}
tRunVersionUpdate_Data[3311903][4020301]["LogId"] =12000938
tRunVersionUpdate_Data[3311903][4020301]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311903][4020301]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311903][4020301]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311903][4020301]["DeleteItem"][1]["Id"]=3311903
tRunVersionUpdate_Data[3311903][4020301]["RewardEffect"]={}
tRunVersionUpdate_Data[3311903][4020301]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311903][4020301]["RewardItem"] = {}
tRunVersionUpdate_Data[3311903][4020301]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311903][4020301]["RewardItem"][1]["Id"]=4020301
tRunVersionUpdate_Data[3311903][4020301]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311903][4020401]={}
tRunVersionUpdate_Data[3311903][4020401]["LogId"] =12000938
tRunVersionUpdate_Data[3311903][4020401]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311903][4020401]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311903][4020401]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311903][4020401]["DeleteItem"][1]["Id"]=3311903
tRunVersionUpdate_Data[3311903][4020401]["RewardEffect"]={}
tRunVersionUpdate_Data[3311903][4020401]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311903][4020401]["RewardItem"] = {}
tRunVersionUpdate_Data[3311903][4020401]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311903][4020401]["RewardItem"][1]["Id"]=4020401
tRunVersionUpdate_Data[3311903][4020401]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311903][4020501]={}
tRunVersionUpdate_Data[3311903][4020501]["LogId"] =12000938
tRunVersionUpdate_Data[3311903][4020501]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311903][4020501]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311903][4020501]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311903][4020501]["DeleteItem"][1]["Id"]=3311903
tRunVersionUpdate_Data[3311903][4020501]["RewardEffect"]={}
tRunVersionUpdate_Data[3311903][4020501]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311903][4020501]["RewardItem"] = {}
tRunVersionUpdate_Data[3311903][4020501]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311903][4020501]["RewardItem"][1]["Id"]=4020501
tRunVersionUpdate_Data[3311903][4020501]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311903][4020601]={}
tRunVersionUpdate_Data[3311903][4020601]["LogId"] =12000938
tRunVersionUpdate_Data[3311903][4020601]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311903][4020601]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311903][4020601]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311903][4020601]["DeleteItem"][1]["Id"]=3311903
tRunVersionUpdate_Data[3311903][4020601]["RewardEffect"]={}
tRunVersionUpdate_Data[3311903][4020601]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311903][4020601]["RewardItem"] = {}
tRunVersionUpdate_Data[3311903][4020601]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311903][4020601]["RewardItem"][1]["Id"]=4020601
tRunVersionUpdate_Data[3311903][4020601]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311903][4020701]={}
tRunVersionUpdate_Data[3311903][4020701]["LogId"] =12000938
tRunVersionUpdate_Data[3311903][4020701]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311903][4020701]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311903][4020701]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311903][4020701]["DeleteItem"][1]["Id"]=3311903
tRunVersionUpdate_Data[3311903][4020701]["RewardEffect"]={}
tRunVersionUpdate_Data[3311903][4020701]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311903][4020701]["RewardItem"] = {}
tRunVersionUpdate_Data[3311903][4020701]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311903][4020701]["RewardItem"][1]["Id"]=4020701
tRunVersionUpdate_Data[3311903][4020701]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311903][4020801]={}
tRunVersionUpdate_Data[3311903][4020801]["LogId"] =12000938
tRunVersionUpdate_Data[3311903][4020801]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311903][4020801]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311903][4020801]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311903][4020801]["DeleteItem"][1]["Id"]=3311903
tRunVersionUpdate_Data[3311903][4020801]["RewardEffect"]={}
tRunVersionUpdate_Data[3311903][4020801]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311903][4020801]["RewardItem"] = {}
tRunVersionUpdate_Data[3311903][4020801]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311903][4020801]["RewardItem"][1]["Id"]=4020801
tRunVersionUpdate_Data[3311903][4020801]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311903][4020901]={}
tRunVersionUpdate_Data[3311903][4020901]["LogId"] =12000938
tRunVersionUpdate_Data[3311903][4020901]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311903][4020901]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311903][4020901]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311903][4020901]["DeleteItem"][1]["Id"]=3311903
tRunVersionUpdate_Data[3311903][4020901]["RewardEffect"]={}
tRunVersionUpdate_Data[3311903][4020901]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311903][4020901]["RewardItem"] = {}
tRunVersionUpdate_Data[3311903][4020901]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311903][4020901]["RewardItem"][1]["Id"]=4020901
tRunVersionUpdate_Data[3311903][4020901]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311903][4021001]={}
tRunVersionUpdate_Data[3311903][4021001]["LogId"] =12000938
tRunVersionUpdate_Data[3311903][4021001]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311903][4021001]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311903][4021001]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311903][4021001]["DeleteItem"][1]["Id"]=3311903
tRunVersionUpdate_Data[3311903][4021001]["RewardEffect"]={}
tRunVersionUpdate_Data[3311903][4021001]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311903][4021001]["RewardItem"] = {}
tRunVersionUpdate_Data[3311903][4021001]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311903][4021001]["RewardItem"][1]["Id"]=4021001
tRunVersionUpdate_Data[3311903][4021001]["RewardItem"][1]["Attr"] ="0 1"

tRunVersionUpdate_Data[3311903][4022201]={}
tRunVersionUpdate_Data[3311903][4022201]["LogId"] =12000938
tRunVersionUpdate_Data[3311903][4022201]["RewardNoNeedTip"] = 1 
tRunVersionUpdate_Data[3311903][4022201]["DeleteItem"] = {}
tRunVersionUpdate_Data[3311903][4022201]["DeleteItem"][1]={}
tRunVersionUpdate_Data[3311903][4022201]["DeleteItem"][1]["Id"]=3311903
tRunVersionUpdate_Data[3311903][4022201]["RewardEffect"]={}
tRunVersionUpdate_Data[3311903][4022201]["RewardEffect"]["Effect"] = "angelwing"
tRunVersionUpdate_Data[3311903][4022201]["RewardItem"] = {}
tRunVersionUpdate_Data[3311903][4022201]["RewardItem"][1]={}
tRunVersionUpdate_Data[3311903][4022201]["RewardItem"][1]["Id"]=4022201
tRunVersionUpdate_Data[3311903][4022201]["RewardItem"][1]["Attr"] ="0 1"
----------------------------------逻辑部分---------------------------------------------

function RunVersionUpdate_RedConfirm(nItemId,sIndex,nRuneId)
	tItem[nItemId]["OptionFunc12"]="RunVersionUpdate_GetRune</N>".. nItemId .."</N>" .. nRuneId .. "</S>"..sIndex
	tItem[nItemId]["Text131"]=string.format(tRunVersionUpdate_Text[nItemId]["Text131"],tRunVersionUpdate_Text[nItemId][sIndex])
	tItem[nItemId]["Text132"]=string.format(tRunVersionUpdate_Text[nItemId]["Text132"],tRunVersionUpdate_Text["RuneEffect"][nRuneId])
	LinkItemGossipFunc_New(nItemId,"1-2")
end 
function RunVersionUpdate_BlueConfirm(nItemId,sIndex,nRuneId)
	tItem[nItemId]["OptionFunc12"]="RunVersionUpdate_GetRune</N>".. nItemId .."</N>" .. nRuneId .. "</S>"..sIndex
	tItem[nItemId]["Text131"]=string.format(tRunVersionUpdate_Text[nItemId]["Text131"],tRunVersionUpdate_Text[nItemId][sIndex])
	tItem[nItemId]["Text132"]=string.format(tRunVersionUpdate_Text[nItemId]["Text132"],tRunVersionUpdate_Text["RuneEffect"][nRuneId])
	LinkItemGossipFunc_New(nItemId,"1-2")

end 


function RunVersionUpdate_GetRune(nItemId,nRuneId,sIndex)
	if not Item_ChkItem(nItemId) then 
		return Sys_MsgBox(tRunVersionUpdate_Text["SystemTips"][nItemId])
	end
	RewardTemplate_UseItemAndMsg(tRunVersionUpdate_Data[nItemId][nRuneId])
		-- --若不是打折物品，则直接打开该礼包
	-- local nCutTip = CommonPackage_ExitTicket() 
	-- local nReturnMoney,tMemoryBin,sEmoneyLog = CommonPackage_ReturnPrice(nItemId)
	
	-- if tMemoryBin == nil and nReturnMoney == nil then
		-- if RewardTemplate_UseItem(tRunVersionUpdate_Data[nItemId][nRuneId]) then 
				-- local sText=string.format(tRunVersionUpdate_Text["SystemTips"]["GetRune"],tRunVersionUpdate_Text[nItemId][sIndex])
				-- User_TalkChannel2005(sText)
		-- end
		-- return
	-- end
	
	-- --判断是否在活动时间内
	-- if (not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["ActivityTime"])) then
		-- if RewardTemplate_UseItem(tRunVersionUpdate_Data[nItemId][nRuneId]) then 
			-- local sText=string.format(tRunVersionUpdate_Text["SystemTips"]["GetRune"],tRunVersionUpdate_Text[nItemId][sIndex])
			-- User_TalkChannel2005(sText)
		-- end
		-- return
	-- else
		
		-- --有返利,给玩家返相应的天石
		-- if nCutTip == 2 then
			-- local nEmoney = Get_UserMonoEMoney()
			-- if nEmoney + nReturnMoney > G_User_MaxEmoneyMono then
				-- User_TalkChannel2005(tMayPKMonth_Text["Item"]["Text141"])
				-- Sys_MsgBox(tMayPKMonth_Text["Item"]["Text141"])
				-- return
			-- end
		-- end
		
		-- if User_CheckLeftSpace(3) then
			
			-- if RewardTemplate_UseItem(tRunVersionUpdate_Data[nItemId][nRuneId]) then 
				-- local sText=string.format(tRunVersionUpdate_Text["SystemTips"]["GetRune"],tRunVersionUpdate_Text[nItemId][sIndex])
				-- User_TalkChannel2005(sText)
			-- end
			
			-- --给玩家对应的印记
			-- CommonPackage_LocationYing(nItemId,nCutTip)
		
			-- --若是玩家有打折卷则给玩家放对应的天石
			-- if nCutTip == 2  then
				-- --给对应的天石
				-- if CommonPackage_DeleteTicket(nItemId) and User_AddEMoneyMono(nReturnMoney) then
					-- Sys_SaveEmoneyBuy(string.format(sEmoneyLog,nReturnMoney))
				-- end
			-- end
		-- else
			-- User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],3))
			-- Sys_MsgBox(string.format(tRewardTemplate_Text["NoSpace"],3))	
		-- end
		
	-- end
end 

function RunVersionUpdate_GetReward(nItemId1,nItemId2)
	if not  Item_ChkItem(nItemId1) then 
		return Sys_MsgBox(tRunVersionUpdate_Text["SystemTips"]["NoPackage"])
	end 
	local nEvent=tRunVersionUpdate_Stc["Event"]
	local nType=tRunVersionUpdate_Stc["Type"]
	if Task_ChkStcValue(nEvent,nType,">",2) then
		Item_DelItem(nItemId1)
		return
	end
	if nItemId2==1111111 then
		--选择天石 判断天石上限
		local nMonoEmoney = Get_UserMonoEMoney()
		local nAddEMonomoney=tRunVersionUpdate_Data["nEMonomoney"]
		if nMonoEmoney + nAddEMonomoney> G_User_MaxEmoneyMono then
			return Sys_MsgBox(tRunVersionUpdate_Text["SystemTips"]["EMonomoneyFull"])
		end
	end
		--选其他 计算背包空间
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tRunVersionUpdate_Data[nItemId1][nItemId2][1])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tRunVersionUpdate_Data[nItemId1][nItemId2][1])
	local nNeedSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nNeedSpace) then
		local ssText=string.format(tRunVersionUpdate_Text["SystemTips"]["BagFull"],nNeedSpace)
		return User_TalkChannel2005(ssText)
	end
	if Task_ChkStcValue(nEvent,nType,"==",0) then
		--置掩码给奖励(第一次领奖)
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		if RewardTemplate_UseItem(tRunVersionUpdate_Data[nItemId1][nItemId2][1]) then 
			local sText=string.format(tRunVersionUpdate_Text["SystemTips"]["TheFirst"],tRunVersionUpdate_Text["ItemName"][nItemId2])
			return User_TalkChannel2005(sText)
		end
	end
	if Task_ChkStcValue(nEvent,nType,">",0) and Task_StcInterval(nEvent,nType,7,4) then
		--置掩码给奖励(第二次领奖)
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		if RewardTemplate_UseItem(tRunVersionUpdate_Data[nItemId1][nItemId2][2]) then
			local ssText=string.format(tRunVersionUpdate_Text["SystemTips"]["PackageOut"],tRunVersionUpdate_Text["ItemName"][nItemId2])
			User_TalkChannel2005(ssText)
		end
	else 
		return LinkItemGossipFunc_New(nItemId1,"1-2")
	end
end

--打开上古神器风云礼盒
function RunVersionUpdate_OpenItemPackage(nItemId)
	if not Item_ChkItem(nItemId) then 
		return Sys_MsgBox(tRunVersionUpdate_Text["SystemTips"]["NoPackage"])
	end 
	--计算背包空间
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tRunVersionUpdate_Data[nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tRunVersionUpdate_Data[nItemId])
	local nNeedSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nNeedSpace) then
		local ssText=string.format(tRunVersionUpdate_Text["SystemTips"]["BagFull"],nNeedSpace)
		return User_TalkChannel2005(ssText)
	end
	if RewardTemplate_UseItem(tRunVersionUpdate_Data[nItemId]) then
		return 
	end
end

--神纹攻略页面的跳转链接
function RunVersionUpdate_LinkWeb()
	User_SendWebPage (tRunVersionUpdate_Data["Web"])
end

--上线触发
function RunVersionUpdate_Login()
	if Sys_ChkFullTime(tActivityTime["RuneVersionUpdate"]) then 
		RunVersionUpdate_ShowPic()
		RunVersionUpdate_UpdateReward()
	end 
end

function RunVersionUpdate_ShowPic()
	local nEvent2=tRunVersionUpdate_Stc["LoginEvent"]
	local nType2=tRunVersionUpdate_Stc["LoginType"] 
	if Task_ChkStcValue(nEvent2,nType2,"==",0) then
--宣传版图
		Task_AddStatistic(nEvent2,nType2,1,1)
		Task_SetStcTimestamp(nEvent2,nType2,0)
		User_NoviceTeaching(tRunVersionUpdate_Data["PicId"])
	end 
end

function RunVersionUpdate_UpdateReward()
		local nEvent1=tRunVersionUpdate_Stc["RewardEvent"]
		local nType1=tRunVersionUpdate_Stc["RewardType"]
--已领取
		if Task_ChkStcValue(nEvent1,nType1,"==",1) then
			return
		end
--未领取
	--计算背包空间
		local nGetRewardSpace = RewardTemplate_GetRewardSpace(tRunVersionUpdate_Data[123])
		local nDelRewardSpace = RewardTemplate_GetDelSpace(tRunVersionUpdate_Data[123])
		local nNeedSpace = nGetRewardSpace - nDelRewardSpace
		if not User_CheckLeftSpace(nNeedSpace) then
			local ssText=string.format(tRunVersionUpdate_Text["SystemTips"]["NoSpace"],nNeedSpace)
			User_TalkChannel2005(ssText)
			return
		end
		--打掩码给奖励
		if Task_ChkStcValue(nEvent1,nType1,"==",0) then
			Task_AddStatistic(nEvent1,nType1,1,1)
			Task_SetStcTimestamp(nEvent1,nType1,0)
			RewardTemplate_UseItem(tRunVersionUpdate_Data[123]) 
		end
end 



---------------------------------物品部分-----------------------------------------------
--物品无对白模板
tItem[3307146] = tItem[3307146] or {}
tItem[3307146]["Function"] = function(nItemId,sItemName)
	RunVersionUpdate_OpenItemPackage(nItemId)
end

--------物品有对白模板
--红色神纹可选包
tItemFace[3306560]=1102
tItem[3306560] = tItem[3306560] or {}
tItem[3306560]["Text1-1"] = {111}
tItem[3306560]["Text111"] = tRunVersionUpdate_Text[3306560]["Text111"]

tItem[3306560]["tOption1-1"] = {2,3,4,5,6,7,8,9,10,11,14}
-- tItem[3306560]["Option1"] = tRunVersionUpdate_Text[3306560]["Option1"]
-- tItem[3306560]["OptionFunc1"]="RunVersionUpdate_RedConfirm</N>3306560</S>Option1</N>4011101"
tItem[3306560]["Option2"] = tRunVersionUpdate_Text[3306560]["Option2"]
tItem[3306560]["OptionFunc2"]="RunVersionUpdate_RedConfirm</N>3306560</S>Option2</N>4010001"
tItem[3306560]["Option3"] = tRunVersionUpdate_Text[3306560]["Option3"]
tItem[3306560]["OptionFunc3"]="RunVersionUpdate_RedConfirm</N>3306560</S>Option3</N>4010101"
tItem[3306560]["Option4"] = tRunVersionUpdate_Text[3306560]["Option4"]
tItem[3306560]["OptionFunc4"]="RunVersionUpdate_RedConfirm</N>3306560</S>Option4</N>4010201"
tItem[3306560]["Option5"] = tRunVersionUpdate_Text[3306560]["Option5"]
tItem[3306560]["OptionFunc5"]="RunVersionUpdate_RedConfirm</N>3306560</S>Option5</N>4010301"
tItem[3306560]["Option6"] = tRunVersionUpdate_Text[3306560]["Option6"]
tItem[3306560]["OptionFunc6"]="RunVersionUpdate_RedConfirm</N>3306560</S>Option6</N>4010401"
tItem[3306560]["Option7"] = tRunVersionUpdate_Text[3306560]["Option7"]
tItem[3306560]["OptionFunc7"]="RunVersionUpdate_RedConfirm</N>3306560</S>Option7</N>4010501"
tItem[3306560]["Option8"] = tRunVersionUpdate_Text[3306560]["Option8"]
tItem[3306560]["OptionFunc8"]="RunVersionUpdate_RedConfirm</N>3306560</S>Option8</N>4010601"
tItem[3306560]["Option9"] = tRunVersionUpdate_Text[3306560]["Option9"]
tItem[3306560]["OptionFunc9"]="RunVersionUpdate_RedConfirm</N>3306560</S>Option9</N>4010701"
tItem[3306560]["Option10"] = tRunVersionUpdate_Text[3306560]["Option10"]
tItem[3306560]["OptionFunc10"]="RunVersionUpdate_RedConfirm</N>3306560</S>Option10</N>4010801"
tItem[3306560]["Option11"] = tRunVersionUpdate_Text[3306560]["Option11"]
tItem[3306560]["OptionFunc11"]="RunVersionUpdate_RedConfirm</N>3306560</S>Option11</N>4010901"
tItem[3306560]["Option14"] = tRunVersionUpdate_Text[3306560]["Option14"]
tItem[3306560]["OptionFunc14"]="RunVersionUpdate_RedConfirm</N>3306560</S>Option14</N>4011501"

--1-2
tItem[3306560]["Text1-2"] = {131,132}
tItem[3306560]["Text131"]=tRunVersionUpdate_Text[3306560]["Text131"]
tItem[3306560]["Text132"]=tRunVersionUpdate_Text[3306560]["Text132"]
tItem[3306560]["tOption1-2"] ={12,13}
tItem[3306560]["Option12"]=tRunVersionUpdate_Text[3306560]["Option12"]
tItem[3306560]["Option13"]= tRunVersionUpdate_Text[3306560]["Option13"]
tItem[3306560]["OptionPoint13"] = "1-1"

--------红色神纹可选包（赠）
tItemFace[3306562]=1102
tItem[3306562] = tItem[3306562] or {}
tItem[3306562]["Text1-1"] = {111}
tItem[3306562]["Text111"] = tRunVersionUpdate_Text[3306562]["Text111"]

tItem[3306562]["tOption1-1"] = {2,3,4,5,6,7,8,9,10,11,14}
-- tItem[3306562]["Option1"] = tRunVersionUpdate_Text[3306562]["Option1"]
-- tItem[3306562]["OptionFunc1"]="RunVersionUpdate_RedConfirm</N>3306562</S>Option1</N>4011101"
tItem[3306562]["Option2"] = tRunVersionUpdate_Text[3306562]["Option2"]
tItem[3306562]["OptionFunc2"]="RunVersionUpdate_RedConfirm</N>3306562</S>Option2</N>4010001"
tItem[3306562]["Option3"] = tRunVersionUpdate_Text[3306562]["Option3"]
tItem[3306562]["OptionFunc3"]="RunVersionUpdate_RedConfirm</N>3306562</S>Option3</N>4010101"
tItem[3306562]["Option4"] = tRunVersionUpdate_Text[3306562]["Option4"]
tItem[3306562]["OptionFunc4"]="RunVersionUpdate_RedConfirm</N>3306562</S>Option4</N>4010201"
tItem[3306562]["Option5"] = tRunVersionUpdate_Text[3306562]["Option5"]
tItem[3306562]["OptionFunc5"]="RunVersionUpdate_RedConfirm</N>3306562</S>Option5</N>4010301"
tItem[3306562]["Option6"] = tRunVersionUpdate_Text[3306562]["Option6"]
tItem[3306562]["OptionFunc6"]="RunVersionUpdate_RedConfirm</N>3306562</S>Option6</N>4010401"
tItem[3306562]["Option7"] = tRunVersionUpdate_Text[3306562]["Option7"]
tItem[3306562]["OptionFunc7"]="RunVersionUpdate_RedConfirm</N>3306562</S>Option7</N>4010501"
tItem[3306562]["Option8"] = tRunVersionUpdate_Text[3306562]["Option8"]
tItem[3306562]["OptionFunc8"]="RunVersionUpdate_RedConfirm</N>3306562</S>Option8</N>4010601"
tItem[3306562]["Option9"] = tRunVersionUpdate_Text[3306562]["Option9"]
tItem[3306562]["OptionFunc9"]="RunVersionUpdate_RedConfirm</N>3306562</S>Option9</N>4010701"
tItem[3306562]["Option10"] = tRunVersionUpdate_Text[3306562]["Option10"]
tItem[3306562]["OptionFunc10"]="RunVersionUpdate_RedConfirm</N>3306562</S>Option10</N>4010801"
tItem[3306562]["Option11"] = tRunVersionUpdate_Text[3306562]["Option11"]
tItem[3306562]["OptionFunc11"]="RunVersionUpdate_RedConfirm</N>3306562</S>Option11</N>4010901"
tItem[3306562]["Option14"] = tRunVersionUpdate_Text[3306562]["Option14"]
tItem[3306562]["OptionFunc14"]="RunVersionUpdate_RedConfirm</N>3306562</S>Option14</N>4011501"


--1-2
tItem[3306562]["Text1-2"] = {131,132}
tItem[3306562]["Text131"]=tRunVersionUpdate_Text[3306562]["Text131"]
tItem[3306562]["Text132"]=tRunVersionUpdate_Text[3306562]["Text132"]
tItem[3306562]["tOption1-2"] ={12,13}
tItem[3306562]["Option12"]=tRunVersionUpdate_Text[3306562]["Option12"]
tItem[3306562]["Option13"]= tRunVersionUpdate_Text[3306562]["Option13"]
tItem[3306562]["OptionPoint13"] = "1-1"

----蓝色神纹可选包
tItemFace[3306561]=1098
tItem[3306561] = tItem[3306561] or {}
tItem[3306561]["Text1-1"] = {111}
tItem[3306561]["Text111"] = tRunVersionUpdate_Text[3306561]["Text111"]

tItem[3306561]["tOption1-1"] = {1,2,3,4,5,6,7,8,9,10,11}
tItem[3306561]["Option1"] = tRunVersionUpdate_Text[3306561]["Option1"]
tItem[3306561]["OptionFunc1"]="RunVersionUpdate_BlueConfirm</N>3306561</S>Option1</N>4020101"
tItem[3306561]["Option2"] = tRunVersionUpdate_Text[3306561]["Option2"]
tItem[3306561]["OptionFunc2"]="RunVersionUpdate_BlueConfirm</N>3306561</S>Option2</N>4020201"
tItem[3306561]["Option3"] = tRunVersionUpdate_Text[3306561]["Option3"]
tItem[3306561]["OptionFunc3"]="RunVersionUpdate_BlueConfirm</N>3306561</S>Option3</N>4020301"
tItem[3306561]["Option4"] = tRunVersionUpdate_Text[3306561]["Option4"]
tItem[3306561]["OptionFunc4"]="RunVersionUpdate_BlueConfirm</N>3306561</S>Option4</N>4020401"
tItem[3306561]["Option5"] = tRunVersionUpdate_Text[3306561]["Option5"]
tItem[3306561]["OptionFunc5"]="RunVersionUpdate_BlueConfirm</N>3306561</S>Option5</N>4020501"
tItem[3306561]["Option6"] = tRunVersionUpdate_Text[3306561]["Option6"]
tItem[3306561]["OptionFunc6"]="RunVersionUpdate_BlueConfirm</N>3306561</S>Option6</N>4020601"
tItem[3306561]["Option7"] = tRunVersionUpdate_Text[3306561]["Option7"]
tItem[3306561]["OptionFunc7"]="RunVersionUpdate_BlueConfirm</N>3306561</S>Option7</N>4020701"
tItem[3306561]["Option8"] = tRunVersionUpdate_Text[3306561]["Option8"]
tItem[3306561]["OptionFunc8"]="RunVersionUpdate_BlueConfirm</N>3306561</S>Option8</N>4020801"
tItem[3306561]["Option9"] = tRunVersionUpdate_Text[3306561]["Option9"]
tItem[3306561]["OptionFunc9"]="RunVersionUpdate_BlueConfirm</N>3306561</S>Option9</N>4020901"
tItem[3306561]["Option10"] = tRunVersionUpdate_Text[3306561]["Option10"]
tItem[3306561]["OptionFunc10"]="RunVersionUpdate_BlueConfirm</N>3306561</S>Option10</N>4021001"
tItem[3306561]["Option11"] = tRunVersionUpdate_Text[3306561]["Option11"]
tItem[3306561]["OptionFunc11"]="RunVersionUpdate_BlueConfirm</N>3306561</S>Option11</N>4022201"

-- 1-2
tItem[3306561]["Text1-2"] = {131,132}
tItem[3306561]["Text131"]=tRunVersionUpdate_Text[3306561]["Text131"]
tItem[3306561]["Text132"]=tRunVersionUpdate_Text[3306561]["Text132"]
tItem[3306561]["tOption1-2"] ={12,13}
tItem[3306561]["Option12"]=tRunVersionUpdate_Text[3306561]["Option12"]
tItem[3306561]["Option13"]= tRunVersionUpdate_Text[3306561]["Option13"]
tItem[3306561]["OptionPoint13"] = "1-1"


----蓝色神纹可选包（赠）
tItemFace[3306563]=1098
tItem[3306563] = tItem[3306563] or {}
tItem[3306563]["Text1-1"] = {111}
tItem[3306563]["Text111"] = tRunVersionUpdate_Text[3306563]["Text111"]

tItem[3306563]["tOption1-1"] = {1,2,3,4,5,6,7,8,9,10,11}
tItem[3306563]["Option1"] = tRunVersionUpdate_Text[3306563]["Option1"]
tItem[3306563]["OptionFunc1"]="RunVersionUpdate_BlueConfirm</N>3306563</S>Option1</N>4020101"
tItem[3306563]["Option2"] = tRunVersionUpdate_Text[3306563]["Option2"]
tItem[3306563]["OptionFunc2"]="RunVersionUpdate_BlueConfirm</N>3306563</S>Option2</N>4020201"
tItem[3306563]["Option3"] = tRunVersionUpdate_Text[3306563]["Option3"]
tItem[3306563]["OptionFunc3"]="RunVersionUpdate_BlueConfirm</N>3306563</S>Option3</N>4020301"
tItem[3306563]["Option4"] = tRunVersionUpdate_Text[3306563]["Option4"]
tItem[3306563]["OptionFunc4"]="RunVersionUpdate_BlueConfirm</N>3306563</S>Option4</N>4020401"
tItem[3306563]["Option5"] = tRunVersionUpdate_Text[3306563]["Option5"]
tItem[3306563]["OptionFunc5"]="RunVersionUpdate_BlueConfirm</N>3306563</S>Option5</N>4020501"
tItem[3306563]["Option6"] = tRunVersionUpdate_Text[3306563]["Option6"]
tItem[3306563]["OptionFunc6"]="RunVersionUpdate_BlueConfirm</N>3306563</S>Option6</N>4020601"
tItem[3306563]["Option7"] = tRunVersionUpdate_Text[3306563]["Option7"]
tItem[3306563]["OptionFunc7"]="RunVersionUpdate_BlueConfirm</N>3306563</S>Option7</N>4020701"
tItem[3306563]["Option8"] = tRunVersionUpdate_Text[3306563]["Option8"]
tItem[3306563]["OptionFunc8"]="RunVersionUpdate_BlueConfirm</N>3306563</S>Option8</N>4020801"
tItem[3306563]["Option9"] = tRunVersionUpdate_Text[3306563]["Option9"]
tItem[3306563]["OptionFunc9"]="RunVersionUpdate_BlueConfirm</N>3306563</S>Option9</N>4020901"
tItem[3306563]["Option10"] = tRunVersionUpdate_Text[3306563]["Option10"]
tItem[3306563]["OptionFunc10"]="RunVersionUpdate_BlueConfirm</N>3306563</S>Option10</N>4021001"
tItem[3306563]["Option11"] = tRunVersionUpdate_Text[3306563]["Option11"]
tItem[3306563]["OptionFunc11"]="RunVersionUpdate_BlueConfirm</N>3306563</S>Option11</N>4022201"

-- 1-2
tItem[3306563]["Text1-2"] = {131,132}
tItem[3306563]["Text131"]=tRunVersionUpdate_Text[3306563]["Text131"]
tItem[3306563]["Text132"]=tRunVersionUpdate_Text[3306563]["Text132"]
tItem[3306563]["tOption1-2"] ={12,13}
tItem[3306563]["Option12"]=tRunVersionUpdate_Text[3306563]["Option12"]
tItem[3306563]["Option13"]= tRunVersionUpdate_Text[3306563]["Option13"]
tItem[3306563]["OptionPoint13"] = "1-1"


--神纹降世大礼盒
tItemFace[3306564]=855
tItem[3306564] = tItem[3306564] or {}
tItem[3306564]["Function"] = function(nItemId,sItemName)
--二转判断
	if User_JudgeLevelAndMetempsychosis(tRunVersionUpdate_Data["MinLev"],tRunVersionUpdate_Data["MinMeto"]) then
		tItem[3306564]["Text113"]=""
	else
		tItem[3306564]["Text113"] = tRunVersionUpdate_Text[3306564]["Text113"]
	end
	local nEvent=tRunVersionUpdate_Stc["Event"]
	local nType=tRunVersionUpdate_Stc["Type"]
	if Task_ChkStcValue(nEvent,nType,"==",0) then
		tItem[3306564]["Text118"]=tRunVersionUpdate_Text[3306564]["Text118"]
	else
		tItem[3306564]["Text118"]=tRunVersionUpdate_Text[3306564]["Text119"]
	end 
	return LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3306564]["Text1-1"] = {111,112,113,114,115,116,117,118}
tItem[3306564]["Text111"] = tRunVersionUpdate_Text[3306564]["Text111"]
tItem[3306564]["Text112"] = tRunVersionUpdate_Text[3306564]["Text112"]
tItem[3306564]["Text113"] = tRunVersionUpdate_Text[3306564]["Text113"]
tItem[3306564]["Text114"] = tRunVersionUpdate_Text[3306564]["Text114"]
tItem[3306564]["Text115"] = tRunVersionUpdate_Text[3306564]["Text115"]
tItem[3306564]["Text116"] = tRunVersionUpdate_Text[3306564]["Text116"]
tItem[3306564]["Text117"] = tRunVersionUpdate_Text[3306564]["Text117"]
tItem[3306564]["Text118"] = tRunVersionUpdate_Text[3306564]["Text118"]

tItem[3306564]["tOption1-1"] ={1,2}
tItem[3306564]["Option1"]=tRunVersionUpdate_Text[3306564]["Option1"]
tItem[3306564]["OptionPoint1"] = "1-3"
-- tItem[3306564]["OptionFunc1"]="RunVersionUpdate_GetReward</N>3306564"
tItem[3306564]["Option2"]=tRunVersionUpdate_Text[3306564]["Option2"]
tItem[3306564]["OptionFunc2"]="RunVersionUpdate_LinkWeb"


tItem[3306564]["Text1-2"] = {141}
tItem[3306564]["Text141"] =tRunVersionUpdate_Text[3306564]["Text141"]
tItem[3306564]["tOption1-2"] ={4}
tItem[3306564]["Option4"]=tRunVersionUpdate_Text[3306564]["Option4"]
-- tItem[3306564]["OptionPoint5"] = "1-1"

tItem[3306564]["Text1-3"] = {151}
tItem[3306564]["Text151"] =tRunVersionUpdate_Text[3306564]["Text151"]
tItem[3306564]["tOption1-3"] ={5,6,7,9}
tItem[3306564]["Option5"]=tRunVersionUpdate_Text[3306564]["Option5"]
tItem[3306564]["OptionFunc5"]="RunVersionUpdate_GetReward</N>3306564</N>730005"
tItem[3306564]["Option6"]=tRunVersionUpdate_Text[3306564]["Option6"]
tItem[3306564]["OptionFunc6"]="RunVersionUpdate_GetReward</N>3306564</N>3200822"
tItem[3306564]["Option7"]=tRunVersionUpdate_Text[3306564]["Option7"]
tItem[3306564]["OptionChkFunc7"] = function ()
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(tRunVersionUpdate_Data["MinLev"],tRunVersionUpdate_Data["MinMeto"]) then
		return false
	else 
		return true
	end 
end
tItem[3306564]["OptionFunc7"]="RunVersionUpdate_GetReward</N>3306564</N>222222"

tItem[3306564]["Option8"]=tRunVersionUpdate_Text[3306564]["Option8"]
tItem[3306564]["OptionChkFunc8"] = function ()
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(tRunVersionUpdate_Data["MinLev"],tRunVersionUpdate_Data["MinMeto"]) then
		return false
	else 
		return true
	end 
end
tItem[3306564]["OptionFunc8"]="RunVersionUpdate_GetReward</N>3306564</N>1111111"

tItem[3306564]["Option9"]=tRunVersionUpdate_Text[3306564]["Option9"]
tItem[3306564]["OptionChkFunc9"] = function ()
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(tRunVersionUpdate_Data["MinLev"],tRunVersionUpdate_Data["MinMeto"]) then
		return false
	else 
		return true
	end 
end
tItem[3306564]["OptionFunc9"]="RunVersionUpdate_GetReward</N>3306564</N>3303373"

--上线触发
 table.insert(tSystem_PlayLogin_Func,RunVersionUpdate_Login)