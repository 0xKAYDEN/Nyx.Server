------------------------------------------------------------------------------------
--Name:		190515[简体征服][活动脚本]勇士任务新就职流程调整
--Purpose:	勇士任务新就职流程调整
--Creator: 	傅伟龙
--Created:	2018/10/25
------------------------------------------------------------------------------------
--NewInaugurationTask

--logId:12001245


--限量部分：
--53176
--data0：0表示boss未被击杀  1表示已被击杀

-----------------------------------数据部分配置--------------------------------------

local tNewInaugurationTask_Cont={}
	
	
	tNewInaugurationTask_Cont["Level"] = 40
	tNewInaugurationTask_Cont["Mete"] = 0
	
	tNewInaugurationTask_Cont["MinPro"] = 1000
	tNewInaugurationTask_Cont["MaxPro"] = 1099
	
	--职业范围
	tNewInaugurationTask_Cont["Pro"] = {}
	tNewInaugurationTask_Cont["Pro"][24265] = {}
	tNewInaugurationTask_Cont["Pro"][24265]["Min"] = 4000
	tNewInaugurationTask_Cont["Pro"][24265]["Max"] = 4049
	
	tNewInaugurationTask_Cont["Pro"][24266] = {}
	tNewInaugurationTask_Cont["Pro"][24266]["Min"] = 8000
	tNewInaugurationTask_Cont["Pro"][24266]["Max"] = 8049
	
	tNewInaugurationTask_Cont["Pro"][24267] = {}
	tNewInaugurationTask_Cont["Pro"][24267]["Min"] = 2000
	tNewInaugurationTask_Cont["Pro"][24267]["Max"] = 2049
	
	tNewInaugurationTask_Cont["Pro"][24268] = {}
	tNewInaugurationTask_Cont["Pro"][24268]["Min"] = 5000
	tNewInaugurationTask_Cont["Pro"][24268]["Max"] = 5049
	
	tNewInaugurationTask_Cont["Pro"][24269] = {}
	tNewInaugurationTask_Cont["Pro"][24269]["Min"] = 16000
	tNewInaugurationTask_Cont["Pro"][24269]["Max"] = 16049
	
	tNewInaugurationTask_Cont["Pro"][24270] = {}
	tNewInaugurationTask_Cont["Pro"][24270]["Min"] = 9000
	tNewInaugurationTask_Cont["Pro"][24270]["Max"] = 9049
	
	tNewInaugurationTask_Cont["Pro"][24271] = {}
	tNewInaugurationTask_Cont["Pro"][24271]["Min"] = 1000
	tNewInaugurationTask_Cont["Pro"][24271]["Max"] = 1049
	
	tNewInaugurationTask_Cont["Pro"][24272] = {}
	tNewInaugurationTask_Cont["Pro"][24272]["Min"] = 6000
	tNewInaugurationTask_Cont["Pro"][24272]["Max"] = 6049
	
	tNewInaugurationTask_Cont["Pro"][24273] = {}
	tNewInaugurationTask_Cont["Pro"][24273]["Min"] = 7000
	tNewInaugurationTask_Cont["Pro"][24273]["Max"] = 7049
	
	tNewInaugurationTask_Cont["Pro"][24274] = {}
	tNewInaugurationTask_Cont["Pro"][24274]["Min"] = 10000
	tNewInaugurationTask_Cont["Pro"][24274]["Max"] = 14049

	tNewInaugurationTask_Cont["Map"] = {}
	tNewInaugurationTask_Cont["Map"][1] = {}
	tNewInaugurationTask_Cont["Map"][1]["MapId"] = 6072
	tNewInaugurationTask_Cont["Map"][1]["PosX"] = 57 
	tNewInaugurationTask_Cont["Map"][1]["PosY"] = 64
	
	tNewInaugurationTask_Cont["Map"][2] = {}
	tNewInaugurationTask_Cont["Map"][2]["MapId"] = 6072
	tNewInaugurationTask_Cont["Map"][2]["PosX"] = 57 
	tNewInaugurationTask_Cont["Map"][2]["PosY"] = 64
	
	tNewInaugurationTask_Cont["NpcMap"] = {}
	tNewInaugurationTask_Cont["NpcMap"][1] = {}
	tNewInaugurationTask_Cont["NpcMap"][1]["MapId"] = 1002
	tNewInaugurationTask_Cont["NpcMap"][1]["PosX"] = 488 
	tNewInaugurationTask_Cont["NpcMap"][1]["PosY"] = 626
	
	tNewInaugurationTask_Cont["NpcMap"][2] = {}
	tNewInaugurationTask_Cont["NpcMap"][2]["MapId"] = 10364
	tNewInaugurationTask_Cont["NpcMap"][2]["PosX"] = 321 
	tNewInaugurationTask_Cont["NpcMap"][2]["PosY"] = 351
	
	
	--掩码
local tNewInaugurationTask_Stc = {}
	tNewInaugurationTask_Stc[1] = {}
	tNewInaugurationTask_Stc[1]["EventType"] = 197 
	tNewInaugurationTask_Stc[1]["DataType"] = 49
	
	--月光宝盒
	tNewInaugurationTask_Cont["MoonItemId"] = {721051,721052,721020,721021,721022,721023,
	721024,721025,721053,721054,721055,721061,721030,721031,721032,721033,721034,
	721035,721062,721063,721064,721065,721040,721041,721042,721043,721080,721081,
	721082,721083,721084,721090,3306558,3310883}
	
	local tNewInaugurationTask_Log = {}
	tNewInaugurationTask_Log["DelItem"] = "0,0,%d,%d,18000190,2,0,0"
	
	tNewInaugurationTask_Cont["ImprovePro"]={}
	tNewInaugurationTask_Cont["ImprovePro"][0]={}
	tNewInaugurationTask_Cont["ImprovePro"][0]["NextProNeedLevel"]=15 --需要等级
	tNewInaugurationTask_Cont["ImprovePro"][0]["NextProNeedTask"]=10011  --需要完成任务
	tNewInaugurationTask_Cont["ImprovePro"][0]["Index"]="2-1"
	tNewInaugurationTask_Cont["ImprovePro"][0]["NextTaskId"] = 10012
	tNewInaugurationTask_Cont["ImprovePro"][0]["MsgFunc"] = "NewQuestArea1nd_InstancetypeTran</N>10011</N>"
	tNewInaugurationTask_Cont["ImprovePro"][1]={}
	tNewInaugurationTask_Cont["ImprovePro"][1]["NextProNeedLevel"]=40
	tNewInaugurationTask_Cont["ImprovePro"][1]["NextProNeedTask"]=10252
	tNewInaugurationTask_Cont["ImprovePro"][1]["Index"]="2-2"
	tNewInaugurationTask_Cont["ImprovePro"][1]["NextTaskId"] = 10030
	tNewInaugurationTask_Cont["ImprovePro"][1]["MsgFunc"] = "NewQuestArea2nd_TransAndPathFind</N>10365</N>420</N>464</N>3</N>24078</N>"
	tNewInaugurationTask_Cont["ImprovePro"][2]={}
	tNewInaugurationTask_Cont["ImprovePro"][2]["NextProNeedLevel"]=70
	tNewInaugurationTask_Cont["ImprovePro"][2]["NextProNeedTask"]=10272
	tNewInaugurationTask_Cont["ImprovePro"][2]["Index"]="2-3"
	tNewInaugurationTask_Cont["ImprovePro"][2]["NextTaskId"] = 10053
	tNewInaugurationTask_Cont["ImprovePro"][2]["MsgFunc"] = "NewQuestArea4th_LeavingCopy</N>"
	tNewInaugurationTask_Cont["ImprovePro"][3]={}
	tNewInaugurationTask_Cont["ImprovePro"][3]["NextProNeedLevel"]=100
	tNewInaugurationTask_Cont["ImprovePro"][3]["NextProNeedTask"]=10254 
	tNewInaugurationTask_Cont["ImprovePro"][3]["Index"]="2-4"
	tNewInaugurationTask_Cont["ImprovePro"][3]["NextTaskId"] = 10085
	tNewInaugurationTask_Cont["ImprovePro"][3]["MsgFunc"] = "NewQuestArea6th_ChgMap</N>10254</N>24002"
	tNewInaugurationTask_Cont["ImprovePro"][3]["RewardItem"] = {}
	tNewInaugurationTask_Cont["ImprovePro"][3]["RewardItem"][1] = {}
	tNewInaugurationTask_Cont["ImprovePro"][3]["RewardItem"][1]["Id"] = 3310800 -- 
	tNewInaugurationTask_Cont["ImprovePro"][3]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Cont["ImprovePro"][3]["RewardItem"][2] = {}
	tNewInaugurationTask_Cont["ImprovePro"][3]["RewardItem"][2]["Id"] = 1060021 -- 
	tNewInaugurationTask_Cont["ImprovePro"][3]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Cont["ImprovePro"][4]={}
	tNewInaugurationTask_Cont["ImprovePro"][4]["NextProNeedLevel"]=110
	tNewInaugurationTask_Cont["ImprovePro"][4]["NextProNeedTask"]=10275
	tNewInaugurationTask_Cont["ImprovePro"][4]["Index"]="2-5"
	tNewInaugurationTask_Cont["ImprovePro"][4]["NextTaskId"] = 10103
	tNewInaugurationTask_Cont["ImprovePro"][4]["MsgFunc"] = "NewQuestAreaDHDG_Trans</N>5</N>" 
	tNewInaugurationTask_Cont["ImprovePro"][5]={}
	tNewInaugurationTask_Cont["ImprovePro"][5]["NextProNeedLevel"]=120
	
	local tNewInaugurationTask_Map= {}
	tNewInaugurationTask_Map["MapId"] = {}
	tNewInaugurationTask_Map["MapId"][4] = 10650
	tNewInaugurationTask_Map["MapId"][8] = 10651
	tNewInaugurationTask_Map["MapId"][2] = 10652
	tNewInaugurationTask_Map["MapId"][5] = 10653
	tNewInaugurationTask_Map["MapId"][16] = 10654
	tNewInaugurationTask_Map["MapId"][9] = 10655
	tNewInaugurationTask_Map["MapId"][1] = 10656
	tNewInaugurationTask_Map["MapId"][6] = 10657
	tNewInaugurationTask_Map["MapId"][7] = 10658
	tNewInaugurationTask_Map["MapId"][10] = 10659
	tNewInaugurationTask_Map["MapId"][13] = 10659
	tNewInaugurationTask_Map["MapId"][14] = 10659
	
	local tNewInaugurationTask_Data = {}
	
	tNewInaugurationTask_Data["Improve"] = {}
	tNewInaugurationTask_Data["Improve"][4000]={}
	tNewInaugurationTask_Data["Improve"][4000]["NextPro"]=4001
	tNewInaugurationTask_Data["Improve"][4000]["TaskId"] = 4127
	tNewInaugurationTask_Data["Improve"][4001]={}
	tNewInaugurationTask_Data["Improve"][4001]["NextPro"]=4002
	tNewInaugurationTask_Data["Improve"][4001]["TaskId"] = 4128
	tNewInaugurationTask_Data["Improve"][4002]={}
	tNewInaugurationTask_Data["Improve"][4002]["NextPro"]=4003
	tNewInaugurationTask_Data["Improve"][4002]["TaskId"] = 4129
	tNewInaugurationTask_Data["Improve"][4003]={}
	tNewInaugurationTask_Data["Improve"][4003]["NextPro"]=4004
	tNewInaugurationTask_Data["Improve"][4003]["TaskId"] = 4130
	tNewInaugurationTask_Data["Improve"][4004]={}
	tNewInaugurationTask_Data["Improve"][4004]["NextPro"]=4005
	tNewInaugurationTask_Data["Improve"][4004]["TaskId"] = 4131
	tNewInaugurationTask_Data["Improve"][4004]["NeedItem"] = 1
	
	

	tNewInaugurationTask_Data["Improve"][8000]={}
	tNewInaugurationTask_Data["Improve"][8000]["NextPro"]=8001
	tNewInaugurationTask_Data["Improve"][8000]["TaskId"] = 4132
	tNewInaugurationTask_Data["Improve"][8001]={}
	tNewInaugurationTask_Data["Improve"][8001]["NextPro"]=8002
	tNewInaugurationTask_Data["Improve"][8001]["TaskId"] = 4133
	tNewInaugurationTask_Data["Improve"][8002]={}
	tNewInaugurationTask_Data["Improve"][8002]["NextPro"]=8003
	tNewInaugurationTask_Data["Improve"][8002]["TaskId"] = 4134
	tNewInaugurationTask_Data["Improve"][8003]={}
	tNewInaugurationTask_Data["Improve"][8003]["NextPro"]=8004
	tNewInaugurationTask_Data["Improve"][8003]["TaskId"] = 4135
	tNewInaugurationTask_Data["Improve"][8004]={}
	tNewInaugurationTask_Data["Improve"][8004]["NextPro"]=8005
	tNewInaugurationTask_Data["Improve"][8004]["TaskId"] = 4136
	tNewInaugurationTask_Data["Improve"][8004]["NeedItem"] = 1
	

	tNewInaugurationTask_Data["Improve"][2000]={}
	tNewInaugurationTask_Data["Improve"][2000]["NextPro"]=2001
	tNewInaugurationTask_Data["Improve"][2000]["TaskId"] = 4137
	tNewInaugurationTask_Data["Improve"][2001]={}
	tNewInaugurationTask_Data["Improve"][2001]["NextPro"]=2002
	tNewInaugurationTask_Data["Improve"][2001]["TaskId"] = 4138
	tNewInaugurationTask_Data["Improve"][2002]={}
	tNewInaugurationTask_Data["Improve"][2002]["NextPro"]=2003
	tNewInaugurationTask_Data["Improve"][2002]["TaskId"] = 4139
	tNewInaugurationTask_Data["Improve"][2003]={}
	tNewInaugurationTask_Data["Improve"][2003]["NextPro"]=2004
	tNewInaugurationTask_Data["Improve"][2003]["TaskId"] = 4140
	tNewInaugurationTask_Data["Improve"][2004]={}
	tNewInaugurationTask_Data["Improve"][2004]["NextPro"]=2005
	tNewInaugurationTask_Data["Improve"][2004]["TaskId"] = 4141
	tNewInaugurationTask_Data["Improve"][2004]["NeedItem"] = 1
	

	tNewInaugurationTask_Data["Improve"][5000]={}
	tNewInaugurationTask_Data["Improve"][5000]["NextPro"]=5001
	tNewInaugurationTask_Data["Improve"][5000]["TaskId"] = 4142
	tNewInaugurationTask_Data["Improve"][5001]={}
	tNewInaugurationTask_Data["Improve"][5001]["NextPro"]=5002
	tNewInaugurationTask_Data["Improve"][5001]["TaskId"] = 4143
	tNewInaugurationTask_Data["Improve"][5002]={}
	tNewInaugurationTask_Data["Improve"][5002]["NextPro"]=5003
	tNewInaugurationTask_Data["Improve"][5002]["TaskId"] = 4144
	tNewInaugurationTask_Data["Improve"][5003]={}
	tNewInaugurationTask_Data["Improve"][5003]["NextPro"]=5004
	tNewInaugurationTask_Data["Improve"][5003]["TaskId"] = 4145
	tNewInaugurationTask_Data["Improve"][5004]={}
	tNewInaugurationTask_Data["Improve"][5004]["NextPro"]=5005
	tNewInaugurationTask_Data["Improve"][5004]["TaskId"] = 4146
	tNewInaugurationTask_Data["Improve"][5004]["NeedItem"] = 1
	
	
	tNewInaugurationTask_Data["Improve"][16000]={}
	tNewInaugurationTask_Data["Improve"][16000]["NextPro"]=16001
	tNewInaugurationTask_Data["Improve"][16000]["TaskId"] = 4147
	tNewInaugurationTask_Data["Improve"][16001]={}
	tNewInaugurationTask_Data["Improve"][16001]["NextPro"]=16002
	tNewInaugurationTask_Data["Improve"][16001]["TaskId"] = 4148
	tNewInaugurationTask_Data["Improve"][16002]={}
	tNewInaugurationTask_Data["Improve"][16002]["NextPro"]=16003
	tNewInaugurationTask_Data["Improve"][16002]["TaskId"] = 4149
	tNewInaugurationTask_Data["Improve"][16003]={}
	tNewInaugurationTask_Data["Improve"][16003]["NextPro"]=16004
	tNewInaugurationTask_Data["Improve"][16003]["TaskId"] = 4150
	tNewInaugurationTask_Data["Improve"][16004]={}
	tNewInaugurationTask_Data["Improve"][16004]["NextPro"]=16005
	tNewInaugurationTask_Data["Improve"][16004]["TaskId"] = 4151
	tNewInaugurationTask_Data["Improve"][16004]["NeedItem"] = 1
	

	tNewInaugurationTask_Data["Improve"][9000]={}
	tNewInaugurationTask_Data["Improve"][9000]["NextPro"]=9001
	tNewInaugurationTask_Data["Improve"][9000]["TaskId"] = 4152
	tNewInaugurationTask_Data["Improve"][9001]={}
	tNewInaugurationTask_Data["Improve"][9001]["NextPro"]=9002
	tNewInaugurationTask_Data["Improve"][9001]["TaskId"] = 4153
	tNewInaugurationTask_Data["Improve"][9002]={}
	tNewInaugurationTask_Data["Improve"][9002]["NextPro"]=9003
	tNewInaugurationTask_Data["Improve"][9002]["TaskId"] = 4154
	tNewInaugurationTask_Data["Improve"][9003]={}
	tNewInaugurationTask_Data["Improve"][9003]["NextPro"]=9004
	tNewInaugurationTask_Data["Improve"][9003]["TaskId"] = 4155
	tNewInaugurationTask_Data["Improve"][9004]={}
	tNewInaugurationTask_Data["Improve"][9004]["NextPro"]=9005
	tNewInaugurationTask_Data["Improve"][9004]["TaskId"] = 4156
	tNewInaugurationTask_Data["Improve"][9004]["NeedItem"] = 1
	

	tNewInaugurationTask_Data["Improve"][1000]={}
	tNewInaugurationTask_Data["Improve"][1000]["NextPro"]=1001
	tNewInaugurationTask_Data["Improve"][1000]["TaskId"] = 4157
	tNewInaugurationTask_Data["Improve"][1000]["Scenario"] = 2
	tNewInaugurationTask_Data["Improve"][1001]={}
	tNewInaugurationTask_Data["Improve"][1001]["NextPro"]=1002
	tNewInaugurationTask_Data["Improve"][1001]["TaskId"] = 4158
	tNewInaugurationTask_Data["Improve"][1001]["Scenario"] = 3
	tNewInaugurationTask_Data["Improve"][1002]={}
	tNewInaugurationTask_Data["Improve"][1002]["NextPro"]=1003
	tNewInaugurationTask_Data["Improve"][1002]["TaskId"] = 4159
	tNewInaugurationTask_Data["Improve"][1002]["Scenario"] = 4
	tNewInaugurationTask_Data["Improve"][1003]={}
	tNewInaugurationTask_Data["Improve"][1003]["NextPro"]=1004
	tNewInaugurationTask_Data["Improve"][1003]["TaskId"] = 4160
	tNewInaugurationTask_Data["Improve"][1003]["Scenario"] = 5
	tNewInaugurationTask_Data["Improve"][1004]={}
	tNewInaugurationTask_Data["Improve"][1004]["NextPro"]=1005
	tNewInaugurationTask_Data["Improve"][1004]["TaskId"] = 4161
	tNewInaugurationTask_Data["Improve"][1004]["NeedItem"] = 1
	tNewInaugurationTask_Data["Improve"][1004]["Scenario"] = 6
	

	tNewInaugurationTask_Data["Improve"][6000]={}
	tNewInaugurationTask_Data["Improve"][6000]["NextPro"]=6001
	tNewInaugurationTask_Data["Improve"][6000]["TaskId"] = 4162
	tNewInaugurationTask_Data["Improve"][6001]={}
	tNewInaugurationTask_Data["Improve"][6001]["NextPro"]=6002
	tNewInaugurationTask_Data["Improve"][6001]["TaskId"] = 4163
	tNewInaugurationTask_Data["Improve"][6002]={}
	tNewInaugurationTask_Data["Improve"][6002]["NextPro"]=6003
	tNewInaugurationTask_Data["Improve"][6002]["TaskId"] = 4164
	tNewInaugurationTask_Data["Improve"][6003]={}
	tNewInaugurationTask_Data["Improve"][6003]["NextPro"]=6004
	tNewInaugurationTask_Data["Improve"][6003]["TaskId"] = 4165
	tNewInaugurationTask_Data["Improve"][6004]={}
	tNewInaugurationTask_Data["Improve"][6004]["NextPro"]=6005
	tNewInaugurationTask_Data["Improve"][6004]["TaskId"] = 4166
	tNewInaugurationTask_Data["Improve"][6004]["NeedItem"] = 1
	
	
	tNewInaugurationTask_Data["Improve"][7000]={}
	tNewInaugurationTask_Data["Improve"][7000]["NextPro"]=7001
	tNewInaugurationTask_Data["Improve"][7000]["TaskId"] = 4167
	tNewInaugurationTask_Data["Improve"][7001]={}
	tNewInaugurationTask_Data["Improve"][7001]["NextPro"]=7002
	tNewInaugurationTask_Data["Improve"][7001]["TaskId"] = 4168
	tNewInaugurationTask_Data["Improve"][7002]={}
	tNewInaugurationTask_Data["Improve"][7002]["NextPro"]=7003
	tNewInaugurationTask_Data["Improve"][7002]["TaskId"] = 4169
	tNewInaugurationTask_Data["Improve"][7003]={}
	tNewInaugurationTask_Data["Improve"][7003]["NextPro"]=7004
	tNewInaugurationTask_Data["Improve"][7003]["TaskId"] = 4170
	tNewInaugurationTask_Data["Improve"][7004]={}
	tNewInaugurationTask_Data["Improve"][7004]["NextPro"]=7005
	tNewInaugurationTask_Data["Improve"][7004]["TaskId"] = 4171
	tNewInaugurationTask_Data["Improve"][7004]["NeedItem"] = 1
	
	
	tNewInaugurationTask_Data["Improve"][10000]={}
	tNewInaugurationTask_Data["Improve"][10000]["NextPro"]=10001
	tNewInaugurationTask_Data["Improve"][10000]["TaskId"] = 4172
	tNewInaugurationTask_Data["Improve"][10001]={}
	tNewInaugurationTask_Data["Improve"][10001]["NextPro"]=10002
	tNewInaugurationTask_Data["Improve"][10001]["TaskId"] = 4173
	tNewInaugurationTask_Data["Improve"][13002]={}
	tNewInaugurationTask_Data["Improve"][13002]["NextPro"]=13003
	tNewInaugurationTask_Data["Improve"][13002]["TaskId"] = 4174
	tNewInaugurationTask_Data["Improve"][13003]={}
	tNewInaugurationTask_Data["Improve"][13003]["NextPro"]=13004
	tNewInaugurationTask_Data["Improve"][13003]["TaskId"] = 4175
	tNewInaugurationTask_Data["Improve"][13004]={}
	tNewInaugurationTask_Data["Improve"][13004]["NextPro"]=13005
	tNewInaugurationTask_Data["Improve"][13004]["TaskId"] = 4176
	tNewInaugurationTask_Data["Improve"][13004]["NeedItem"] = 1
	
	tNewInaugurationTask_Data["Improve"][14002]={}
	tNewInaugurationTask_Data["Improve"][14002]["NextPro"]=14003
	tNewInaugurationTask_Data["Improve"][14002]["TaskId"] = 4174
	tNewInaugurationTask_Data["Improve"][14003]={}
	tNewInaugurationTask_Data["Improve"][14003]["NextPro"]=14004
	tNewInaugurationTask_Data["Improve"][14003]["TaskId"] = 4175
	tNewInaugurationTask_Data["Improve"][14004]={}
	tNewInaugurationTask_Data["Improve"][14004]["NextPro"]=14005
	tNewInaugurationTask_Data["Improve"][14004]["TaskId"] = 4176
	tNewInaugurationTask_Data["Improve"][14004]["NeedItem"] = 1
	
	local tNewInaugurationTask_Reward = {}
	--就职奖励
	tNewInaugurationTask_Reward["Improve"] = {}
	tNewInaugurationTask_Reward["Improve"][4001]={}
	tNewInaugurationTask_Reward["Improve"][4001]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][4001]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][4001]["RewardItem"][1]["Id"] = 3005160 --15级就职礼包
	tNewInaugurationTask_Reward["Improve"][4001]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["Improve"][4001]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][4002]={}
	tNewInaugurationTask_Reward["Improve"][4002]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][4002]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][4002]["RewardItem"][1]["Id"] = 3005161 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][4002]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][4002]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][4002]["RewardItem"][2]["Id"] = 3005162 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][4002]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][4002]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][4002]["RewardItem"][3]["Id"] = 3005163 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][4002]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][4002]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][4003]={}
	tNewInaugurationTask_Reward["Improve"][4003]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][4003]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][4003]["RewardItem"][1]["Id"] = 3005164 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][4003]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][4003]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][4003]["RewardItem"][2]["Id"] = 3005165 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][4003]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][4003]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][4003]["RewardItem"][3]["Id"] = 3005166 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][4003]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][4003]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][4004]={}
	tNewInaugurationTask_Reward["Improve"][4004]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][4004]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][4004]["RewardItem"][1]["Id"] = 3005167 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][4004]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][4004]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][4004]["RewardItem"][2]["Id"] = 3005168 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][4004]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][4004]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][4004]["RewardItem"][3]["Id"] = 3005169 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][4004]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][4004]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][4005]={}
	tNewInaugurationTask_Reward["Improve"][4005]["NeedItem"] = 1
	tNewInaugurationTask_Reward["Improve"][4005]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][4005]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][4005]["RewardItem"][1]["Id"] = 3005170 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][4005]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][4005]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][4005]["RewardItem"][2]["Id"] = 3005171 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][4005]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][4005]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][4005]["RewardItem"][3]["Id"] = 3005172 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][4005]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][4005]["LogId"] =18000190
	
	
	tNewInaugurationTask_Reward["Improve"][8001]={}
	tNewInaugurationTask_Reward["Improve"][8001]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][8001]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][8001]["RewardItem"][1]["Id"] = 3005160 --15级就职礼包
	tNewInaugurationTask_Reward["Improve"][8001]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["Improve"][8001]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][8002]={}
	tNewInaugurationTask_Reward["Improve"][8002]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][8002]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][8002]["RewardItem"][1]["Id"] = 3005161 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][8002]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][8002]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][8002]["RewardItem"][2]["Id"] = 3005162 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][8002]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][8002]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][8002]["RewardItem"][3]["Id"] = 3005163 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][8002]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][8002]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][8003]={}
	tNewInaugurationTask_Reward["Improve"][8003]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][8003]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][8003]["RewardItem"][1]["Id"] = 3005164 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][8003]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][8003]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][8003]["RewardItem"][2]["Id"] = 3005165 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][8003]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][8003]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][8003]["RewardItem"][3]["Id"] = 3005166 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][8003]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][8003]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][8004]={}
	tNewInaugurationTask_Reward["Improve"][8004]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][8004]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][8004]["RewardItem"][1]["Id"] = 3005167 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][8004]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][8004]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][8004]["RewardItem"][2]["Id"] = 3005168 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][8004]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][8004]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][8004]["RewardItem"][3]["Id"] = 3005169 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][8004]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][8004]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][8005]={}
	tNewInaugurationTask_Reward["Improve"][8005]["NeedItem"] = 1
	tNewInaugurationTask_Reward["Improve"][8005]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][8005]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][8005]["RewardItem"][1]["Id"] = 3005170 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][8005]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][8005]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][8005]["RewardItem"][2]["Id"] = 3005171 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][8005]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][8005]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][8005]["RewardItem"][3]["Id"] = 3005172 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][8005]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][8005]["LogId"] =18000190
	
	tNewInaugurationTask_Reward["Improve"][2001]={}
	tNewInaugurationTask_Reward["Improve"][2001]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][2001]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][2001]["RewardItem"][1]["Id"] = 3005160 --15级就职礼包
	tNewInaugurationTask_Reward["Improve"][2001]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["Improve"][2001]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][2002]={}
	tNewInaugurationTask_Reward["Improve"][2002]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][2002]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][2002]["RewardItem"][1]["Id"] = 3005161 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][2002]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][2002]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][2002]["RewardItem"][2]["Id"] = 3005162 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][2002]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][2002]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][2002]["RewardItem"][3]["Id"] = 3005163 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][2002]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][2002]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][2003]={}
	tNewInaugurationTask_Reward["Improve"][2003]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][2003]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][2003]["RewardItem"][1]["Id"] = 3005164 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][2003]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][2003]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][2003]["RewardItem"][2]["Id"] = 3005165 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][2003]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][2003]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][2003]["RewardItem"][3]["Id"] = 3005166 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][2003]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][2003]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][2004]={}
	tNewInaugurationTask_Reward["Improve"][2004]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][2004]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][2004]["RewardItem"][1]["Id"] = 3005167 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][2004]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][2004]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][2004]["RewardItem"][2]["Id"] = 3005168 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][2004]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][2004]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][2004]["RewardItem"][3]["Id"] = 3005169 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][2004]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][2004]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][2005]={}
	tNewInaugurationTask_Reward["Improve"][2005]["NeedItem"] = 1
	tNewInaugurationTask_Reward["Improve"][2005]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][2005]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][2005]["RewardItem"][1]["Id"] = 3005170 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][2005]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][2005]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][2005]["RewardItem"][2]["Id"] = 3005171 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][2005]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][2005]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][2005]["RewardItem"][3]["Id"] = 3005172 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][2005]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][2005]["LogId"] =18000190
	
	tNewInaugurationTask_Reward["Improve"][5001]={}
	tNewInaugurationTask_Reward["Improve"][5001]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][5001]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][5001]["RewardItem"][1]["Id"] = 3005160 --15级就职礼包
	tNewInaugurationTask_Reward["Improve"][5001]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["Improve"][5001]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][5002]={}
	tNewInaugurationTask_Reward["Improve"][5002]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][5002]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][5002]["RewardItem"][1]["Id"] = 3005161 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][5002]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][5002]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][5002]["RewardItem"][2]["Id"] = 3005162 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][5002]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][5002]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][5002]["RewardItem"][3]["Id"] = 3005163 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][5002]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][5002]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][5003]={}
	tNewInaugurationTask_Reward["Improve"][5003]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][5003]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][5003]["RewardItem"][1]["Id"] = 3005164 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][5003]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][5003]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][5003]["RewardItem"][2]["Id"] = 3005165 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][5003]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][5003]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][5003]["RewardItem"][3]["Id"] = 3005166 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][5003]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][5003]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][5004]={}
	tNewInaugurationTask_Reward["Improve"][5004]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][5004]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][5004]["RewardItem"][1]["Id"] = 3005167 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][5004]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][5004]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][5004]["RewardItem"][2]["Id"] = 3005168 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][5004]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][5004]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][5004]["RewardItem"][3]["Id"] = 3005169 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][5004]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][5004]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][5005]={}
	tNewInaugurationTask_Reward["Improve"][5005]["NeedItem"] = 1
	tNewInaugurationTask_Reward["Improve"][5005]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][5005]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][5005]["RewardItem"][1]["Id"] = 3005170 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][5005]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][5005]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][5005]["RewardItem"][2]["Id"] = 3005171 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][5005]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][5005]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][5005]["RewardItem"][3]["Id"] = 3005172 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][5005]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][5005]["LogId"] =18000190
	
	tNewInaugurationTask_Reward["Improve"][16001]={}
	tNewInaugurationTask_Reward["Improve"][16001]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][16001]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][16001]["RewardItem"][1]["Id"] = 3005160 --15级就职礼包
	tNewInaugurationTask_Reward["Improve"][16001]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["Improve"][16001]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][16002]={}
	tNewInaugurationTask_Reward["Improve"][16002]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][16002]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][16002]["RewardItem"][1]["Id"] = 3005161 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][16002]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][16002]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][16002]["RewardItem"][2]["Id"] = 3005162 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][16002]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][16002]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][16002]["RewardItem"][3]["Id"] = 3005163 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][16002]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][16002]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][16003]={}
	tNewInaugurationTask_Reward["Improve"][16003]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][16003]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][16003]["RewardItem"][1]["Id"] = 3005164 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][16003]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][16003]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][16003]["RewardItem"][2]["Id"] = 3005165 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][16003]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][16003]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][16003]["RewardItem"][3]["Id"] = 3005166 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][16003]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][16003]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][16004]={}
	tNewInaugurationTask_Reward["Improve"][16004]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][16004]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][16004]["RewardItem"][1]["Id"] = 3005167 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][16004]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][16004]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][16004]["RewardItem"][2]["Id"] = 3005168 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][16004]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][16004]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][16004]["RewardItem"][3]["Id"] = 3005169 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][16004]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][16004]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][16005]={}
	tNewInaugurationTask_Reward["Improve"][16005]["NeedItem"] = 1
	tNewInaugurationTask_Reward["Improve"][16005]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][16005]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][16005]["RewardItem"][1]["Id"] = 3005170 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][16005]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][16005]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][16005]["RewardItem"][2]["Id"] = 3005171 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][16005]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][16005]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][16005]["RewardItem"][3]["Id"] = 3005172 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][16005]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][16005]["LogId"] =18000190
	
	tNewInaugurationTask_Reward["Improve"][9001]={}
	tNewInaugurationTask_Reward["Improve"][9001]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][9001]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][9001]["RewardItem"][1]["Id"] = 3005160 --15级就职礼包
	tNewInaugurationTask_Reward["Improve"][9001]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["Improve"][9001]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][9002]={}
	tNewInaugurationTask_Reward["Improve"][9002]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][9002]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][9002]["RewardItem"][1]["Id"] = 3005161 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][9002]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][9002]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][9002]["RewardItem"][2]["Id"] = 3005162 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][9002]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][9002]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][9002]["RewardItem"][3]["Id"] = 3005163 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][9002]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][9002]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][9003]={}
	tNewInaugurationTask_Reward["Improve"][9003]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][9003]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][9003]["RewardItem"][1]["Id"] = 3005164 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][9003]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][9003]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][9003]["RewardItem"][2]["Id"] = 3005165 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][9003]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][9003]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][9003]["RewardItem"][3]["Id"] = 3005166 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][9003]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][9003]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][9004]={}
	tNewInaugurationTask_Reward["Improve"][9004]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][9004]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][9004]["RewardItem"][1]["Id"] = 3005167 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][9004]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][9004]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][9004]["RewardItem"][2]["Id"] = 3005168 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][9004]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][9004]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][9004]["RewardItem"][3]["Id"] = 3005169 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][9004]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][9004]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][9005]={}
	tNewInaugurationTask_Reward["Improve"][9005]["NeedItem"] = 1
	tNewInaugurationTask_Reward["Improve"][9005]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][9005]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][9005]["RewardItem"][1]["Id"] = 3005170 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][9005]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][9005]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][9005]["RewardItem"][2]["Id"] = 3005171 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][9005]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][9005]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][9005]["RewardItem"][3]["Id"] = 3005172 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][9005]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][9005]["LogId"] =18000190
	
	tNewInaugurationTask_Reward["Improve"][1001]={}
	tNewInaugurationTask_Reward["Improve"][1001]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][1001]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][1001]["RewardItem"][1]["Id"] = 3005160 --15级就职礼包
	tNewInaugurationTask_Reward["Improve"][1001]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["Improve"][1001]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][1002]={}
	tNewInaugurationTask_Reward["Improve"][1002]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][1002]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][1002]["RewardItem"][1]["Id"] = 3005161 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][1002]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][1002]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][1002]["RewardItem"][2]["Id"] = 3005162 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][1002]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][1002]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][1002]["RewardItem"][3]["Id"] = 3005163 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][1002]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][1002]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][1003]={}
	tNewInaugurationTask_Reward["Improve"][1003]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][1003]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][1003]["RewardItem"][1]["Id"] = 3005164 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][1003]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][1003]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][1003]["RewardItem"][2]["Id"] = 3005165 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][1003]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][1003]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][1003]["RewardItem"][3]["Id"] = 3005166 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][1003]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][1003]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][1004]={}
	tNewInaugurationTask_Reward["Improve"][1004]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][1004]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][1004]["RewardItem"][1]["Id"] = 3005167 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][1004]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][1004]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][1004]["RewardItem"][2]["Id"] = 3005168 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][1004]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][1004]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][1004]["RewardItem"][3]["Id"] = 3005169 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][1004]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][1004]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][1005]={}
	tNewInaugurationTask_Reward["Improve"][1005]["NeedItem"] = 1
	tNewInaugurationTask_Reward["Improve"][1005]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][1005]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][1005]["RewardItem"][1]["Id"] = 3005170 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][1005]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][1005]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][1005]["RewardItem"][2]["Id"] = 3005171 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][1005]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][1005]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][1005]["RewardItem"][3]["Id"] = 3005172 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][1005]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][1005]["LogId"] =18000190
	
	tNewInaugurationTask_Reward["Improve"][6001]={}
	tNewInaugurationTask_Reward["Improve"][6001]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][6001]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][6001]["RewardItem"][1]["Id"] = 3005160 --15级就职礼包
	tNewInaugurationTask_Reward["Improve"][6001]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["Improve"][6001]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][6002]={}
	tNewInaugurationTask_Reward["Improve"][6002]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][6002]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][6002]["RewardItem"][1]["Id"] = 3005161 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][6002]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][6002]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][6002]["RewardItem"][2]["Id"] = 3005162 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][6002]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][6002]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][6002]["RewardItem"][3]["Id"] = 3005163 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][6002]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][6002]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][6003]={}
	tNewInaugurationTask_Reward["Improve"][6003]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][6003]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][6003]["RewardItem"][1]["Id"] = 3005164 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][6003]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][6003]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][6003]["RewardItem"][2]["Id"] = 3005165 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][6003]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][6003]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][6003]["RewardItem"][3]["Id"] = 3005166 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][6003]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][6003]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][6004]={}
	tNewInaugurationTask_Reward["Improve"][6004]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][6004]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][6004]["RewardItem"][1]["Id"] = 3005167 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][6004]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][6004]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][6004]["RewardItem"][2]["Id"] = 3005168 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][6004]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][6004]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][6004]["RewardItem"][3]["Id"] = 3005169 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][6004]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][6004]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][6005]={}
	tNewInaugurationTask_Reward["Improve"][6005]["NeedItem"] = 1
	tNewInaugurationTask_Reward["Improve"][6005]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][6005]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][6005]["RewardItem"][1]["Id"] = 3005170 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][6005]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][6005]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][6005]["RewardItem"][2]["Id"] = 3005171 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][6005]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][6005]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][6005]["RewardItem"][3]["Id"] = 3005172 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][6005]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][6005]["LogId"] =18000190
	
	tNewInaugurationTask_Reward["Improve"][7001]={}
	tNewInaugurationTask_Reward["Improve"][7001]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][7001]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][7001]["RewardItem"][1]["Id"] = 3005160 --15级就职礼包
	tNewInaugurationTask_Reward["Improve"][7001]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["Improve"][7001]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][7002]={}
	tNewInaugurationTask_Reward["Improve"][7002]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][7002]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][7002]["RewardItem"][1]["Id"] = 3005161 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][7002]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][7002]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][7002]["RewardItem"][2]["Id"] = 3005162 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][7002]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][7002]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][7002]["RewardItem"][3]["Id"] = 3005163 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][7002]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][7002]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][7003]={}
	tNewInaugurationTask_Reward["Improve"][7003]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][7003]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][7003]["RewardItem"][1]["Id"] = 3005164 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][7003]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][7003]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][7003]["RewardItem"][2]["Id"] = 3005165 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][7003]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][7003]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][7003]["RewardItem"][3]["Id"] = 3005166 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][7003]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][7003]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][7004]={}
	tNewInaugurationTask_Reward["Improve"][7004]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][7004]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][7004]["RewardItem"][1]["Id"] = 3005167 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][7004]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][7004]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][7004]["RewardItem"][2]["Id"] = 3005168 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][7004]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][7004]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][7004]["RewardItem"][3]["Id"] = 3005169 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][7004]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][7004]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][7005]={}
	tNewInaugurationTask_Reward["Improve"][7005]["NeedItem"] = 1
	tNewInaugurationTask_Reward["Improve"][7005]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][7005]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][7005]["RewardItem"][1]["Id"] = 3005170 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][7005]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][7005]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][7005]["RewardItem"][2]["Id"] = 3005171 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][7005]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][7005]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][7005]["RewardItem"][3]["Id"] = 3005172 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][7005]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][7005]["LogId"] =18000190
	
	tNewInaugurationTask_Reward["Improve"][10001]={}
	tNewInaugurationTask_Reward["Improve"][10001]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][10001]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][10001]["RewardItem"][1]["Id"] = 3005160 --15级就职礼包
	tNewInaugurationTask_Reward["Improve"][10001]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["Improve"][10001]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][13002]={}
	tNewInaugurationTask_Reward["Improve"][13002]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][13002]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][13002]["RewardItem"][1]["Id"] = 3005161 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][13002]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][13002]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][13002]["RewardItem"][2]["Id"] = 3005162 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][13002]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][13002]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][13002]["RewardItem"][3]["Id"] = 3005163 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][13002]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][13002]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][13003]={}
	tNewInaugurationTask_Reward["Improve"][13003]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][13003]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][13003]["RewardItem"][1]["Id"] = 3005164 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][13003]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][13003]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][13003]["RewardItem"][2]["Id"] = 3005165 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][13003]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][13003]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][13003]["RewardItem"][3]["Id"] = 3005166 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][13003]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][13003]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][13004]={}
	tNewInaugurationTask_Reward["Improve"][13004]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][13004]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][13004]["RewardItem"][1]["Id"] = 3005167 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][13004]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][13004]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][13004]["RewardItem"][2]["Id"] = 3005168 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][13004]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][13004]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][13004]["RewardItem"][3]["Id"] = 3005169 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][13004]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][13004]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][13005]={}
	tNewInaugurationTask_Reward["Improve"][13005]["NeedItem"] = 1
	tNewInaugurationTask_Reward["Improve"][13005]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][13005]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][13005]["RewardItem"][1]["Id"] = 3005170 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][13005]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][13005]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][13005]["RewardItem"][2]["Id"] = 3005171 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][13005]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][13005]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][13005]["RewardItem"][3]["Id"] = 3005172 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][13005]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][13005]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][14002]={}
	tNewInaugurationTask_Reward["Improve"][14002]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][14002]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][14002]["RewardItem"][1]["Id"] = 3005161 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][14002]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][14002]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][14002]["RewardItem"][2]["Id"] = 3005162 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][14002]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][14002]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][14002]["RewardItem"][3]["Id"] = 3005163 --40级就职礼包
	tNewInaugurationTask_Reward["Improve"][14002]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][14002]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][14003]={}
	tNewInaugurationTask_Reward["Improve"][14003]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][14003]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][14003]["RewardItem"][1]["Id"] = 3005164 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][14003]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][14003]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][14003]["RewardItem"][2]["Id"] = 3005165 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][14003]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][14003]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][14003]["RewardItem"][3]["Id"] = 3005166 -- 70级就职礼包
	tNewInaugurationTask_Reward["Improve"][14003]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][14003]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][14004]={}
	tNewInaugurationTask_Reward["Improve"][14004]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][14004]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][14004]["RewardItem"][1]["Id"] = 3005167 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][14004]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][14004]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][14004]["RewardItem"][2]["Id"] = 3005168 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][14004]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][14004]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][14004]["RewardItem"][3]["Id"] = 3005169 -- 100级就职礼包
	tNewInaugurationTask_Reward["Improve"][14004]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][14004]["LogId"] =18000190
	tNewInaugurationTask_Reward["Improve"][14005]={}
	tNewInaugurationTask_Reward["Improve"][14005]["NeedItem"] = 1
	tNewInaugurationTask_Reward["Improve"][14005]["RewardItem"] = {}
	tNewInaugurationTask_Reward["Improve"][14005]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["Improve"][14005]["RewardItem"][1]["Id"] = 3005170 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][14005]["RewardItem"][1]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][14005]["RewardItem"][2] = {}
	tNewInaugurationTask_Reward["Improve"][14005]["RewardItem"][2]["Id"] = 3005171 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][14005]["RewardItem"][2]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][14005]["RewardItem"][3] = {}
	tNewInaugurationTask_Reward["Improve"][14005]["RewardItem"][3]["Id"] = 3005172 --110级就职礼包
	tNewInaugurationTask_Reward["Improve"][14005]["RewardItem"][3]["Attr"] = "0 1"
	tNewInaugurationTask_Reward["Improve"][14005]["LogId"] =18000190
	
	
	
	tNewInaugurationTask_Reward["ImproveNoGift"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][4001]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][4001]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][4001]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][4001]["RewardItem"][1]["Id"] = 3310884 --15级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][4001]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][4001]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][4002]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][4002]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][4002]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][4002]["RewardItem"][1]["Id"] = 3310885 --40级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][4002]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][4002]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][4003]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][4003]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][4003]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][4003]["RewardItem"][1]["Id"] = 3310886 -- 70级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][4003]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][4003]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][4004]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][4004]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][4004]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][4004]["RewardItem"][1]["Id"] = 3310887 -- 100级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][4004]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][4004]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][4005]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][4005]["NeedItem"] = 1
	tNewInaugurationTask_Reward["ImproveNoGift"][4005]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][4005]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][4005]["RewardItem"][1]["Id"] = 3310888 --龙珠
	tNewInaugurationTask_Reward["ImproveNoGift"][4005]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][4005]["LogId"] =18000190
	
	tNewInaugurationTask_Reward["ImproveNoGift"][8001]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][8001]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][8001]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][8001]["RewardItem"][1]["Id"] = 3310884 --15级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][8001]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][8001]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][8002]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][8002]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][8002]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][8002]["RewardItem"][1]["Id"] = 3310885 --40级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][8002]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][8002]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][8003]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][8003]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][8003]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][8003]["RewardItem"][1]["Id"] = 3310886 -- 70级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][8003]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][8003]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][8004]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][8004]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][8004]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][8004]["RewardItem"][1]["Id"] = 3310887 -- 100级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][8004]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][8004]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][8005]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][8005]["NeedItem"] = 1
	tNewInaugurationTask_Reward["ImproveNoGift"][8005]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][8005]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][8005]["RewardItem"][1]["Id"] = 3310888 --龙珠
	tNewInaugurationTask_Reward["ImproveNoGift"][8005]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][8005]["LogId"] =18000190
	
	tNewInaugurationTask_Reward["ImproveNoGift"][2001]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][2001]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][2001]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][2001]["RewardItem"][1]["Id"] = 3310884 --15级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][2001]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][2001]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][2002]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][2002]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][2002]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][2002]["RewardItem"][1]["Id"] = 3310885 --40级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][2002]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][2002]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][2003]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][2003]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][2003]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][2003]["RewardItem"][1]["Id"] = 3310886 -- 70级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][2003]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][2003]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][2004]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][2004]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][2004]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][2004]["RewardItem"][1]["Id"] = 3310887 -- 100级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][2004]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][2004]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][2005]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][2005]["NeedItem"] = 1
	tNewInaugurationTask_Reward["ImproveNoGift"][2005]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][2005]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][2005]["RewardItem"][1]["Id"] = 3310888 --龙珠
	tNewInaugurationTask_Reward["ImproveNoGift"][2005]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][2005]["LogId"] =18000190
	

	tNewInaugurationTask_Reward["ImproveNoGift"][5001]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][5001]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][5001]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][5001]["RewardItem"][1]["Id"] = 3310884 --15级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][5001]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][5001]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][5002]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][5002]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][5002]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][5002]["RewardItem"][1]["Id"] = 3310885 --40级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][5002]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][5002]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][5003]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][5003]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][5003]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][5003]["RewardItem"][1]["Id"] = 3310886 -- 70级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][5003]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][5003]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][5004]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][5004]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][5004]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][5004]["RewardItem"][1]["Id"] = 3310887 -- 100级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][5004]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][5004]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][5005]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][5005]["NeedItem"] = 1
	tNewInaugurationTask_Reward["ImproveNoGift"][5005]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][5005]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][5005]["RewardItem"][1]["Id"] = 3310888 --龙珠
	tNewInaugurationTask_Reward["ImproveNoGift"][5005]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][5005]["LogId"] =18000190
	
	tNewInaugurationTask_Reward["ImproveNoGift"][16001]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][16001]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][16001]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][16001]["RewardItem"][1]["Id"] = 3310884 --15级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][16001]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][16001]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][16002]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][16002]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][16002]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][16002]["RewardItem"][1]["Id"] = 3310885 --40级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][16002]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][16002]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][16003]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][16003]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][16003]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][16003]["RewardItem"][1]["Id"] = 3310886 -- 70级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][16003]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][16003]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][16004]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][16004]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][16004]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][16004]["RewardItem"][1]["Id"] = 3310887 -- 100级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][16004]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][16004]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][16005]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][16005]["NeedItem"] = 1
	tNewInaugurationTask_Reward["ImproveNoGift"][16005]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][16005]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][16005]["RewardItem"][1]["Id"] = 3310888 --龙珠
	tNewInaugurationTask_Reward["ImproveNoGift"][16005]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][16005]["LogId"] =18000190
	
	tNewInaugurationTask_Reward["ImproveNoGift"][9001]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][9001]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][9001]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][9001]["RewardItem"][1]["Id"] = 3310884 --15级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][9001]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][9001]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][9002]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][9002]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][9002]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][9002]["RewardItem"][1]["Id"] = 3310885 --40级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][9002]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][9002]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][9003]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][9003]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][9003]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][9003]["RewardItem"][1]["Id"] = 3310886 -- 70级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][9003]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][9003]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][9004]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][9004]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][9004]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][9004]["RewardItem"][1]["Id"] = 3310887 -- 100级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][9004]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][9004]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][9005]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][9005]["NeedItem"] = 1
	tNewInaugurationTask_Reward["ImproveNoGift"][9005]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][9005]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][9005]["RewardItem"][1]["Id"] = 3310888 --龙珠
	tNewInaugurationTask_Reward["ImproveNoGift"][9005]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][9005]["LogId"] =18000190
	
	tNewInaugurationTask_Reward["ImproveNoGift"][1001]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][1001]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][1001]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][1001]["RewardItem"][1]["Id"] = 3310884 --15级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][1001]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][1001]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][1002]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][1002]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][1002]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][1002]["RewardItem"][1]["Id"] = 3310885 --40级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][1002]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][1002]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][1003]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][1003]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][1003]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][1003]["RewardItem"][1]["Id"] = 3310886 -- 70级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][1003]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][1003]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][1004]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][1004]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][1004]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][1004]["RewardItem"][1]["Id"] = 3310887 -- 100级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][1004]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][1004]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][1005]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][1005]["NeedItem"] = 1
	tNewInaugurationTask_Reward["ImproveNoGift"][1005]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][1005]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][1005]["RewardItem"][1]["Id"] = 3310888 --龙珠
	tNewInaugurationTask_Reward["ImproveNoGift"][1005]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][1005]["LogId"] =18000190
	
	tNewInaugurationTask_Reward["ImproveNoGift"][6001]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][6001]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][6001]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][6001]["RewardItem"][1]["Id"] = 3310884 --15级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][6001]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][6001]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][6002]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][6002]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][6002]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][6002]["RewardItem"][1]["Id"] = 3310885 --40级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][6002]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][6002]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][6003]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][6003]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][6003]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][6003]["RewardItem"][1]["Id"] = 3310886 -- 70级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][6003]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][6003]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][6004]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][6004]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][6004]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][6004]["RewardItem"][1]["Id"] = 3310887 -- 100级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][6004]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][6004]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][6005]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][6005]["NeedItem"] = 1
	tNewInaugurationTask_Reward["ImproveNoGift"][6005]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][6005]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][6005]["RewardItem"][1]["Id"] = 3310888 --龙珠
	tNewInaugurationTask_Reward["ImproveNoGift"][6005]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][6005]["LogId"] =18000190
	
	tNewInaugurationTask_Reward["ImproveNoGift"][7001]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][7001]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][7001]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][7001]["RewardItem"][1]["Id"] = 3310884 --15级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][7001]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][7001]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][7002]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][7002]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][7002]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][7002]["RewardItem"][1]["Id"] = 3310885 --40级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][7002]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][7002]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][7003]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][7003]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][7003]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][7003]["RewardItem"][1]["Id"] = 3310886 -- 70级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][7003]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][7003]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][7004]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][7004]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][7004]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][7004]["RewardItem"][1]["Id"] = 3310887 -- 100级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][7004]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][7004]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][7005]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][7005]["NeedItem"] = 1
	tNewInaugurationTask_Reward["ImproveNoGift"][7005]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][7005]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][7005]["RewardItem"][1]["Id"] = 3310888 --龙珠
	tNewInaugurationTask_Reward["ImproveNoGift"][7005]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][7005]["LogId"] =18000190
	
	tNewInaugurationTask_Reward["ImproveNoGift"][10001]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][10001]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][10001]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][10001]["RewardItem"][1]["Id"] = 3310884 --15级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][10001]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][10001]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][13002]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][13002]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][13002]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][13002]["RewardItem"][1]["Id"] = 3310885 --40级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][13002]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][13002]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][13003]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][13003]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][13003]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][13003]["RewardItem"][1]["Id"] = 3310886 -- 70级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][13003]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][13003]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][13004]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][13004]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][13004]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][13004]["RewardItem"][1]["Id"] = 3310887 -- 100级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][13004]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][13004]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][13005]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][13005]["NeedItem"] = 1
	tNewInaugurationTask_Reward["ImproveNoGift"][13005]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][13005]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][13005]["RewardItem"][1]["Id"] = 3310888 --龙珠
	tNewInaugurationTask_Reward["ImproveNoGift"][13005]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][13005]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][14002]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][14002]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][14002]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][14002]["RewardItem"][1]["Id"] = 3310885 --40级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][14002]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][14002]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][14003]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][14003]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][14003]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][14003]["RewardItem"][1]["Id"] = 3310886 -- 70级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][14003]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][14003]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][14004]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][14004]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][14004]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][14004]["RewardItem"][1]["Id"] = 3310887 -- 100级就职礼包
	tNewInaugurationTask_Reward["ImproveNoGift"][14004]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][14004]["LogId"] =18000190
	tNewInaugurationTask_Reward["ImproveNoGift"][14005]={}
	tNewInaugurationTask_Reward["ImproveNoGift"][14005]["NeedItem"] = 1
	tNewInaugurationTask_Reward["ImproveNoGift"][14005]["RewardItem"] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][14005]["RewardItem"][1] = {}
	tNewInaugurationTask_Reward["ImproveNoGift"][14005]["RewardItem"][1]["Id"] = 3310888 --龙珠
	tNewInaugurationTask_Reward["ImproveNoGift"][14005]["RewardItem"][1]["Attr"] = "0 3"
	tNewInaugurationTask_Reward["ImproveNoGift"][14005]["LogId"] =18000190
	
local tNewInaugurationTask_Pro = {}
tNewInaugurationTask_Pro[1002] = {198,71,3322145}
tNewInaugurationTask_Pro[1003] = {198,72,3322146}
tNewInaugurationTask_Pro[1004] = {198,73,3322147}
tNewInaugurationTask_Pro[1005] = {198,74,3322148}
tNewInaugurationTask_Pro["Pro"] = {1002,1003,1004,1005}
tNewInaugurationTask_Pro["Limit"] = {1002,1049}

--神兵灵魄奖励
local tNewInaugurationTask_Item = {}
	-- ===40级进阶任务奖励
	-- ===索引: tNewInaugurationTask_Item[3322145]
	-- ===删除: 3322145,1
	tNewInaugurationTask_Item[3322145] = {}
	tNewInaugurationTask_Item[3322145]["LogId"] = 12001245
	tNewInaugurationTask_Item[3322145]["DeleteItem"] = {}
	tNewInaugurationTask_Item[3322145]["DeleteItem"][1] = {}
	tNewInaugurationTask_Item[3322145]["DeleteItem"][1]["Id"] = 3322145 -- 【库】 3322145 【库里没有该物品】[属性:]
	tNewInaugurationTask_Item[3322145]["RewardItem"] = {}
	tNewInaugurationTask_Item[3322145]["RewardItem"][1] = {}
	tNewInaugurationTask_Item[3322145]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tNewInaugurationTask_Item[3322145]["RewardItem"][1]["Attr"] = "0 20" -- 神兵灵魄*20
	tNewInaugurationTask_Item[3322145]["RewardEffect"] = {}
	tNewInaugurationTask_Item[3322145]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewInaugurationTask_Item[3322145]["RewardEffect"]["Effect"] = "angelwing"


	tNewInaugurationTask_Item[3322146] = {}
	-- ===70级进阶任务奖励
	-- ===索引: tNewInaugurationTask_Item[3322146]
	-- ===删除: 3322146,1
	tNewInaugurationTask_Item[3322146]["LogId"] = 12001245
	tNewInaugurationTask_Item[3322146]["DeleteItem"] = {}
	tNewInaugurationTask_Item[3322146]["DeleteItem"][1] = {}
	tNewInaugurationTask_Item[3322146]["DeleteItem"][1]["Id"] = 3322146 -- 【库】 3322146 【库里没有该物品】[属性:]
	tNewInaugurationTask_Item[3322146]["RewardItem"] = {}
	tNewInaugurationTask_Item[3322146]["RewardItem"][1] = {}
	tNewInaugurationTask_Item[3322146]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tNewInaugurationTask_Item[3322146]["RewardItem"][1]["Attr"] = "0 30" -- 神兵灵魄*30
	tNewInaugurationTask_Item[3322146]["RewardEffect"] = {}
	tNewInaugurationTask_Item[3322146]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewInaugurationTask_Item[3322146]["RewardEffect"]["Effect"] = "angelwing"


	tNewInaugurationTask_Item[3322147] = {}
	-- ===100级进阶任务奖励
	-- ===索引: tNewInaugurationTask_Item[3322147]
	-- ===删除: 3322147,1
	tNewInaugurationTask_Item[3322147]["LogId"] = 12001245
	tNewInaugurationTask_Item[3322147]["DeleteItem"] = {}
	tNewInaugurationTask_Item[3322147]["DeleteItem"][1] = {}
	tNewInaugurationTask_Item[3322147]["DeleteItem"][1]["Id"] = 3322147 -- 【库】 3322147 【库里没有该物品】[属性:]
	tNewInaugurationTask_Item[3322147]["RewardItem"] = {}
	tNewInaugurationTask_Item[3322147]["RewardItem"][1] = {}
	tNewInaugurationTask_Item[3322147]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tNewInaugurationTask_Item[3322147]["RewardItem"][1]["Attr"] = "0 50" -- 神兵灵魄*50
	tNewInaugurationTask_Item[3322147]["RewardEffect"] = {}
	tNewInaugurationTask_Item[3322147]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewInaugurationTask_Item[3322147]["RewardEffect"]["Effect"] = "angelwing"


	tNewInaugurationTask_Item[3322148] = {}
	-- ===110级进阶任务奖励
	-- ===索引: tNewInaugurationTask_Item[3322148]
	-- ===删除: 3322148,1
	tNewInaugurationTask_Item[3322148]["LogId"] = 12001245
	tNewInaugurationTask_Item[3322148]["DeleteItem"] = {}
	tNewInaugurationTask_Item[3322148]["DeleteItem"][1] = {}
	tNewInaugurationTask_Item[3322148]["DeleteItem"][1]["Id"] = 3322148 -- 【库】 3322148 【库里没有该物品】[属性:]
	tNewInaugurationTask_Item[3322148]["RewardItem"] = {}
	tNewInaugurationTask_Item[3322148]["RewardItem"][1] = {}
	tNewInaugurationTask_Item[3322148]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tNewInaugurationTask_Item[3322148]["RewardItem"][1]["Attr"] = "0 100" -- 神兵灵魄*100
	tNewInaugurationTask_Item[3322148]["RewardEffect"] = {}
	tNewInaugurationTask_Item[3322148]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewInaugurationTask_Item[3322148]["RewardEffect"]["Effect"] = "angelwing"
	
	tNewInaugurationTask_Item["ItemId"] = {}
	tNewInaugurationTask_Item["ItemId"][3322145] = {}
	tNewInaugurationTask_Item["ItemId"][3322145]["LogId"] = 12001245
	tNewInaugurationTask_Item["ItemId"][3322145]["RewardItem"] = {}
	tNewInaugurationTask_Item["ItemId"][3322145]["RewardItem"][1] = {}
	tNewInaugurationTask_Item["ItemId"][3322145]["RewardItem"][1]["Id"] = 3322145 -- 40级进阶任务奖励
	tNewInaugurationTask_Item["ItemId"][3322145]["RewardItem"][1]["Attr"] = "0 1" 
	tNewInaugurationTask_Item["ItemId"][3322145]["RewardEffect"] = {}
	tNewInaugurationTask_Item["ItemId"][3322145]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewInaugurationTask_Item["ItemId"][3322145]["RewardEffect"]["Effect"] = "angelwing"
	
	tNewInaugurationTask_Item["ItemId"][3322146] = {}
	tNewInaugurationTask_Item["ItemId"][3322146]["LogId"] = 12001245
	tNewInaugurationTask_Item["ItemId"][3322146]["RewardItem"] = {}
	tNewInaugurationTask_Item["ItemId"][3322146]["RewardItem"][1] = {}
	tNewInaugurationTask_Item["ItemId"][3322146]["RewardItem"][1]["Id"] = 3322146 -- 70级进阶任务奖励
	tNewInaugurationTask_Item["ItemId"][3322146]["RewardItem"][1]["Attr"] = "0 1" 
	tNewInaugurationTask_Item["ItemId"][3322146]["RewardEffect"] = {}
	tNewInaugurationTask_Item["ItemId"][3322146]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewInaugurationTask_Item["ItemId"][3322146]["RewardEffect"]["Effect"] = "angelwing"
	
	tNewInaugurationTask_Item["ItemId"][3322147] = {}
	tNewInaugurationTask_Item["ItemId"][3322147]["LogId"] = 12001245
	tNewInaugurationTask_Item["ItemId"][3322147]["RewardItem"] = {}
	tNewInaugurationTask_Item["ItemId"][3322147]["RewardItem"][1] = {}
	tNewInaugurationTask_Item["ItemId"][3322147]["RewardItem"][1]["Id"] = 3322147 -- 100级进阶任务奖励
	tNewInaugurationTask_Item["ItemId"][3322147]["RewardItem"][1]["Attr"] = "0 1" 
	tNewInaugurationTask_Item["ItemId"][3322147]["RewardEffect"] = {}
	tNewInaugurationTask_Item["ItemId"][3322147]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewInaugurationTask_Item["ItemId"][3322147]["RewardEffect"]["Effect"] = "angelwing"
	
	tNewInaugurationTask_Item["ItemId"][3322148] = {}
	tNewInaugurationTask_Item["ItemId"][3322148]["LogId"] = 12001245
	tNewInaugurationTask_Item["ItemId"][3322148]["RewardItem"] = {}
	tNewInaugurationTask_Item["ItemId"][3322148]["RewardItem"][1] = {}
	tNewInaugurationTask_Item["ItemId"][3322148]["RewardItem"][1]["Id"] = 3322148 -- 110级进阶任务奖励
	tNewInaugurationTask_Item["ItemId"][3322148]["RewardItem"][1]["Attr"] = "0 1" 
	tNewInaugurationTask_Item["ItemId"][3322148]["RewardEffect"] = {}
	tNewInaugurationTask_Item["ItemId"][3322148]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewInaugurationTask_Item["ItemId"][3322148]["RewardEffect"]["Effect"] = "angelwing"
-----------------------------------------Npc逻辑--------------------------------------
--职业判断
function NewInaugurationTask_IsThor(nNpcId,nPro)
	local nUserPro = nPro or Get_NewUserProfession()
	local nMinPro = tNewInaugurationTask_Cont["Pro"][nNpcId]["Min"]
	local nMaxPro = tNewInaugurationTask_Cont["Pro"][nNpcId]["Max"]
	
	return nMinPro <= nUserPro and nUserPro <= nMaxPro
end

--月光宝盒物品判断
function NewInaugurationTask_GetBagMoonItemId(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	for i,nItemId in ipairs (tNewInaugurationTask_Cont["MoonItemId"]) do
		if Item_ChkItem(nItemId, nil, nil, nUserId) then
			return nItemId
		end
	end
	return -1
end

--就职判断
function NewInaugurationTask_ImprovePro(nNpcId)
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	local nUserPro = Get_NewUserProfession(nUserId)
	
	if not NewInaugurationTask_IsThor(nNpcId,nUserPro) then
		return
	end
	
	-- --已经是最高阶
	local nProIndex = nUserPro % 10
	local nProIndex1 = nUserPro % 100
	if nProIndex >= 5 or nProIndex1 >=10 then
		return
	end
	local nUserLevel = Get_UserLevel(nUserId)
	local nNeedLevel = tNewInaugurationTask_Cont["ImprovePro"][nProIndex]["NextProNeedLevel"]
	--等级不足
	if nUserLevel < nNeedLevel then
		return
	end
	
	--前缀任务未完成
	local nNeedTsakId = tNewInaugurationTask_Cont["ImprovePro"][nProIndex]["NextProNeedTask"]
	-- if SpecialServer_ChkNoGiftServer() then
		-- if (not Task_ChkTaskDetail(nNeedTsakId)) or Task_ChkTaskDetailValue(nNeedTsakId,"CompleteFlag","==",0,nUserId) then
			-- return
		-- end
	-- end
	
	
	if tNewInaugurationTask_Data["Improve"][nUserPro]["NeedItem"] ~=nil then
		local nNeedItem = NewInaugurationTask_GetBagMoonItemId(nUserId)
		if nNeedItem == -1 then
			--没有月光宝盒
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		end
	end
	
	local nTaskId = tNewInaugurationTask_Data["Improve"][nUserPro]["TaskId"]
	
	Task_SetTaskDetailCompleteFlag(nTaskId,1,nUserId)
	Task_SetTaskDetailData6(nTaskId,1,nUserId)
	
	User_OpenDialog(975)
	
end

--玩家上线触发给礼包
function NewInaugurationTask_Like_Login()
	local nUserId = Get_UserId()
	local nUserPro = Get_NewUserProfession(nUserId)
	
	--只给勇士
	if (nUserPro >= tNewInaugurationTask_Pro["Limit"][1]) and (nUserPro <= tNewInaugurationTask_Pro["Limit"][2]) then
		local nEventype 
		local nDatatype 
		for i,v in pairs(tNewInaugurationTask_Pro["Pro"]) do
			nEventype = tNewInaugurationTask_Pro[v][1]
			nDatatype = tNewInaugurationTask_Pro[v][2]
			local nItemId = tNewInaugurationTask_Pro[v][3]
			if (nUserPro >= v) and (Task_ChkStcValue(nEventype,nDatatype,"==",0,nUserId)) then
				--背包空间
				local nSpace = RewardTemplate_GetRewardSpace(tNewInaugurationTask_Item["ItemId"][nItemId])
				if not User_CheckLeftSpace(nSpace) then
					return
				end
				
				Task_SetStatistic(nEventype,nDatatype,1,1,nUserId)
				--给奖励
				RewardTemplate_UseItemAndMsg(tNewInaugurationTask_Item["ItemId"][nItemId])
			end
		end
	end
	
end
--职业进阶奖励
function NewInaugurationTask_ImproveProReward(nUserId,nPro)
	local nUserPro = nPro or Get_NewUserProfession(nUserId)
	
	-- --已经是最高阶
	local nProIndex = nUserPro % 10
	local nProIndex1 = nUserPro % 100
	if nProIndex > 5 or nProIndex1 >= 10 then
		return
	end
	
	if Get_UserMetempsychosis(nUserId) > 0 then
		 return
	end
	
	local nUserLevel = Get_UserLevel(nUserId)
	local nNeedLevel = tNewInaugurationTask_Cont["ImprovePro"][nProIndex-1]["NextProNeedLevel"]
	--等级不足
	if nUserLevel < nNeedLevel then
		return
	end
	
	local sIndex = "Improve"
	
	--激情服给的奖励不一样
	if SpecialServer_ChkNoGiftServer() then
		sIndex = "ImproveNoGift"
	end
	
	-- local nSpace = RewardTemplate_GetRewardSpace(tNewInaugurationTask_Reward[sIndex][nUserPro], nUserId)
	-- --背包空间不足
	-- if nSpace > 0 and not User_CheckLeftSpace(nSpace, nUserId) then
		-- User_TalkChannel2005(tNewInaugurationTask_Text["Channel2005"]["NoSpace"])
		-- return
	-- end
	--进阶需要的物品判断,进阶最高职业需要消耗月光宝盒
	if tNewInaugurationTask_Data["Improve"][nUserPro-1]["NeedItem"] ~=nil then
		local nNeedItem = NewInaugurationTask_GetBagMoonItemId(nUserId)
		if nNeedItem == -1 then
			--没有月光宝盒
			-- LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		else
			if not (Item_ChkItem(nNeedItem,1,0,nUserId) and Item_DelItem(nNeedItem,1,0,nUserId)) then
				return
			end
			
			Sys_SaveActionFestivalLog(string.format(tNewInaugurationTask_Log["DelItem"], nNeedItem, 1),nUserId)
		end
	end
	
	if tNewInaugurationTask_Reward[sIndex][nUserPro] ~= nil then
		RewardTemplate_Reward(tNewInaugurationTask_Reward[sIndex][nUserPro],nUserId)
	end
	
	if tNewInaugurationTask_Data["Improve"][nUserPro-1]["Scenario"] ~= nil then
		if Get_UserMapId(nUserId) == 10656 then
			User_PlayPlot(tNewInaugurationTask_Data["Improve"][nUserPro-1]["Scenario"],nUserId) 
		end
	end
	
	
	-- local nNextTaskId = tNewInaugurationTask_Cont["ImprovePro"][nProIndex-1]["NextTaskId"]
	
	-- if Task_ChkTaskDetail(nNextTaskId,nUserId) then
		-- return 
	-- end
	
	-- if Task_AddTaskDetail(nNextTaskId,0,nUserId) then
		-- if tNewInaugurationTask_Cont["ImprovePro"][nProIndex - 1]["RewardItem"] then
			-- RewardTemplate_Reward(tNewInaugurationTask_Cont["ImprovePro"][nProIndex - 1],nUserId)
		-- end
		
		
		-- Task_SetTaskDetailCompleteFlag(nNextTaskId,0,nUserId)
	-- end
	
	
	-- local sFunc = tNewInaugurationTask_Cont["ImprovePro"][nProIndex - 1]["MsgFunc"] .. nUserId
	-- local sBoxText = tNewInaugurationTask_Text["MsgBox"]["Task"][nProIndex - 1] 
	-- Sys_MsgBox(sBoxText,sFunc,"Null",nUserId)

	
	-- local nTaskId = tNewInaugurationTask_Data["Improve"][nUserPro-1]["TaskId"]
	
	-- if nUserPro == 13002 or nUserPro == 14002 then
		-- nTaskId = 10001
	-- end
	
	-- Task_SetTaskDetailCompleteFlag(nTaskId,1,nUserId)
	-- Task_SetTaskDetailData6(nTaskId,1,nUserId)
	
	if (nUserPro >= tNewInaugurationTask_Pro["Limit"][1]) and (nUserPro <= tNewInaugurationTask_Pro["Limit"][2]) then
		local nNewEventype = tNewInaugurationTask_Pro[nUserPro][1]
		local nNewDatatype = tNewInaugurationTask_Pro[nUserPro][2]
		local nItemId = tNewInaugurationTask_Pro[nUserPro][3]
		
		if (nNewEventype ~= nil) and Task_ChkStcValue(nNewEventype,nNewDatatype,"==",0,nUserId) then
			local nSpace = RewardTemplate_GetRewardSpace(tNewInaugurationTask_Item["ItemId"][nItemId],nUserId)
			if not User_CheckLeftSpace(nSpace,nUserId) then
				User_TalkChannel2005(tNewInaugurationTask_Text["FullMax"],nUserId)
				return
			else
				Task_SetStatistic(nNewEventype,nNewDatatype,1,1,nUserId)
				RewardTemplate_UseItemAndMsg(tNewInaugurationTask_Item["ItemId"][nItemId],nUserId)
				
			end
		end
	end
	
end
--道士选择职业
function NewInaugurationTask_ImproveChgPro(nNextProfession)
	local nNpcId = Get_NpcId()
	local nUserPro = Get_NewUserProfession()

	if not NewInaugurationTask_IsThor(nNpcId,nUserPro) then
		return
	end
	
	--已经到达最高阶
	local nProIndex = nUserPro % 10
	local nProIndex1 = nUserPro % 100
	if nProIndex >= 5 or nProIndex1>=10 then
		return
	end
	
	--等级不足
	local nUserLevel = Get_UserLevel()
	if nUserLevel < 40 then
		return
	end
	
	--前缀任务未完成
	local nUserId = Get_UserId()
	-- local nNeedTsakId = tNewInaugurationTask_Cont["ImprovePro"][nProIndex]["NextProNeedTask"]
	-- if (not Task_ChkTaskDetail(nNeedTsakId)) or Task_ChkTaskDetailValue(nNeedTsakId,"CompleteFlag","==",0,nUserId) then
		-- return
	-- end
	
	-- local nSpace = RewardTemplate_GetRewardSpace(tNewInaugurationTask_Reward[sIndex][nNextProfession], nUserId)
	
	-- --背包空间不足
	-- if nSpace > 0 and not User_CheckLeftSpace(nSpace, nUserId) then
		-- User_TalkChannel2005(tNewInaugurationTask_Text["Channel2005"]["NoSpace"])
		-- return
	-- end
	
	local sIndex = "Improve"
	
	--激情服给的奖励不一样
	if SpecialServer_ChkNoGiftServer() then
		sIndex = "ImproveNoGift"
	end
	
	--就职
	User_SetProfession(nNextProfession)
	
	RewardTemplate_UseItemAndMsg(tNewInaugurationTask_Reward[sIndex][nNextProfession],nUserId)
	
	local nTaskId = tNewInaugurationTask_Data["Improve"][nUserPro]["TaskId"]
	Task_SetTaskDetailCompleteFlag(nTaskId,1)
	Task_SetTaskDetailData6(nTaskId,1)
	
	LinkNpcGossipFunc_New(nNpcId,tNewInaugurationTask_Cont["ImprovePro"][nProIndex]["Index"])
	
	-- local nNextTaskId = tNewInaugurationTask_Cont["ImprovePro"][nProIndex]["NextTaskId"]
	
	-- if Task_ChkTaskDetail(nNextTaskId,nUserId) then
		-- return 
	-- end
	
	-- if Task_AddTaskDetail(nNextTaskId,0,nUserId) then
		-- Task_SetTaskDetailCompleteFlag(nNextTaskId,0,nUserId)
	-- end
	
	
	-- local sFunc = tNewInaugurationTask_Cont["ImprovePro"][nProIndex]["MsgFunc"] .. nUserId
	-- local sBoxText = tNewInaugurationTask_Text["MsgBox"]["Task"][nProIndex] 
	-- Sys_MsgBox(sBoxText,sFunc,"Null",nUserId)

	
end
--选项检测
function NewInaugurationTask_ChkFunc(nIndex)
	
	local nUserPro = Get_NewUserProfession()
	local nNpcId = Get_NpcId()
	
	if not NewInaugurationTask_IsThor(nNpcId,nUserPro) then
		return false
	end
	
	local nProIndex = nUserPro % 10
	local nProIndex1 = nUserPro % 100
		if nProIndex >= 5 or nProIndex1>=10 then
		return false
	end
	
	local nUserLevel = Get_UserLevel()
	local nNeedLevel = tNewInaugurationTask_Cont["ImprovePro"][nProIndex]["NextProNeedLevel"]
	--等级不足
	if nUserLevel < nNeedLevel then
		return false
	end
	
	
	if tNewInaugurationTask_Cont["ImprovePro"][nProIndex]["NextProNeedLevel"] == nil then
		return false
	end
	
	local nNeedLevel = tNewInaugurationTask_Cont["ImprovePro"][nProIndex]["NextProNeedLevel"]
	
	if nProIndex == nIndex then
		
		local nTaskId = tNewInaugurationTask_Data["Improve"][nUserPro]["TaskId"]
		
		if NewInaugurationTask_AddTaskDetail(nTaskId) then
			return true
		end
		
	end
	
	return false

end

function NewInaugurationTask_ChkFuncLev(nNpcId)
	local nUserPro = Get_NewUserProfession()
	local nProIndex = nUserPro % 10
	local nProIndex1 = nUserPro % 100
		if nProIndex >= 5 or nProIndex1>=10 then
		return false
	end
	
	local nUserLevel = Get_UserLevel()
	local nNeedLevel = tNewInaugurationTask_Cont["ImprovePro"][nProIndex]["NextProNeedLevel"]
	
	-- if nUserPro == 13002 or nUserPro = 14002 then
		-- nUserLevel = 40
	-- end
	
	--等级不足
	if nUserLevel < nNeedLevel then
		tNpcGossip[nNpcId]["Text116"] = string.format(tNewInaugurationTask_Text[nNpcId]["Text116"],nNeedLevel)
		return true
	end
	
	return false
end

function NewInaugurationTask_AcceptTaskDetail()
		local nUserPro = Get_NewUserProfession()
		
		if tNewInaugurationTask_Data["Improve"][nUserPro] == nil then
			return
		end
		
		local nTaskId = tNewInaugurationTask_Data["Improve"][nUserPro]["TaskId"]
		
		if NewInaugurationTask_AddTaskDetail(nTaskId) then
			return true
		end
		
end

--创建任务
function NewInaugurationTask_AddTaskDetail(nTaskId)
	if Task_ChkTaskDetail(nTaskId) then
		
		return true
	end
	
	if Task_AddTaskDetail(nTaskId) then
		Task_SetTaskDetailCompleteFlag(nTaskId,0)
		Task_SetTaskDetailData5(nTaskId,1)
		
		return true
	else
		
		return false
	end
	
end

function NewInaugurationTask_ChkWeapFunc()
	local nTaskEvent = tNewInaugurationTask_Stc[1]["EventType"]
	local nTaskType = tNewInaugurationTask_Stc[1]["DataType"]
	
	
	
	if Task_ChkStcValue(nTaskEvent,nTaskType,"==",10) then
		return false
	end
	
	if Task_ChkStcValue(nTaskEvent,nTaskType,"==",1) then
		return true
	end
	
	if Task_ChkStcValue(nTaskEvent,nTaskType,"==",0) then
		
		local nLevel = tNewInaugurationTask_Cont["Level"]
		local nMete = tNewInaugurationTask_Cont["Mete"]
		local nPro=Get_NewUserProfession()
		if User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
			if nPro>=tNewInaugurationTask_Cont["MinPro"] and nPro <= tNewInaugurationTask_Cont["MaxPro"] then
		
				if NewInaugurationTask_AddTaskDetail(4177) then
					
					
					Task_SetStatistic(nTaskEvent,nTaskType,1,1)
					Task_SetStcTimestamp(nTaskEvent,nTaskType,0)
					return true
				end
				
				return false
			else
				return false
			end
		else
			return false
		end
		
	end
end

function NewInaugurationTask_ChgMap()
	local nIndex = 1
	
	if SpecialServer_ChkNoGiftServer() then
		nIndex = 2
	end

	local nMapId = tNewInaugurationTask_Cont["Map"][nIndex]["MapId"]
	local nPoX = tNewInaugurationTask_Cont["Map"][nIndex]["PosX"] 
	local nPoY = tNewInaugurationTask_Cont["Map"][nIndex]["PosY"] 
	User_UserRandBoundTrans(nMapId,nPoX,nPoY,1,1,0)
end
--传送至npc神算子
function NewInaugurationTask_ChgMapNpc()
	local nIndex = 1
	
	if SpecialServer_ChkNoGiftServer() then
		nIndex = 2
	end

	local nMapId = tNewInaugurationTask_Cont["NpcMap"][nIndex]["MapId"]
	local nPoX = tNewInaugurationTask_Cont["NpcMap"][nIndex]["PosX"] 
	local nPoY = tNewInaugurationTask_Cont["NpcMap"][nIndex]["PosY"] 
	User_UserRandBoundTrans(nMapId,nPoX,nPoY,1,1,0)
end

function NewInaugurationTask_ChgInauMap()
	local nUserPro = Get_NewUserProfession()
	local nIndex = math.modf(nUserPro / 1000)
	
	local nMapId = tNewInaugurationTask_Map["MapId"][nIndex]
	User_UserRandBoundTrans(nMapId,72,68,1,1,0)
end

-------------------------------------------npc模板------------------------------------
tNpcFace[5036] = 114
tNpcFace[5037] = 123
tNpcFace[5038] = 174
tNpcFace[5039] = 212
tNpcFace[5040] = 141
tNpcFace[5041] = 123
tNpcFace[2300] = 115
tNpcFace[5042] = 166
tNpcFace[5043] = 240
tNpcFace[5046] = 138
tNpcFace[5047] = 134


for nNpcId = 24265,24270 do
	tNpcGossip[nNpcId] = tNpcGossip[nNpcId] or DefaultNpc:new{}
	tNpcGossip[nNpcId]["OptionHidden"] = 1
	tNpcGossip[nNpcId]["DialogueText"] = tNewInaugurationTask_Text[nNpcId]
	
	tNpcGossip[nNpcId]["Text1-1"] = {101,111}
	tNpcGossip[nNpcId]["tOption1-1"] = {111}
	tNpcGossip[nNpcId]["OptionFunc111"] = "NewInaugurationTask_ImprovePro"
	tNpcGossip[nNpcId]["ChkFunc1-1"] = function ()
		return NewInaugurationTask_ChkFunc(0)
	end
	
	tNpcGossip[nNpcId]["Text1-2"] = {101,112}
	tNpcGossip[nNpcId]["tOption1-2"] = {112}
	tNpcGossip[nNpcId]["OptionFunc112"] = "NewInaugurationTask_ImprovePro"
	tNpcGossip[nNpcId]["ChkFunc1-2"] = function ()
		return NewInaugurationTask_ChkFunc(1)
	end
	
	tNpcGossip[nNpcId]["Text1-3"] = {101,113}
	tNpcGossip[nNpcId]["tOption1-3"] = {113}
	tNpcGossip[nNpcId]["OptionFunc113"] = "NewInaugurationTask_ImprovePro"
	tNpcGossip[nNpcId]["ChkFunc1-3"] = function ()
		return NewInaugurationTask_ChkFunc(2)
	end
	
	tNpcGossip[nNpcId]["Text1-4"] = {101,114}
	tNpcGossip[nNpcId]["tOption1-4"] = {114}
	tNpcGossip[nNpcId]["OptionFunc114"] = "NewInaugurationTask_ImprovePro"
	tNpcGossip[nNpcId]["ChkFunc1-4"] = function ()
		return NewInaugurationTask_ChkFunc(3)
	end
	
	tNpcGossip[nNpcId]["Text1-5"] = {101,115}
	tNpcGossip[nNpcId]["tOption1-5"] = {115}
	tNpcGossip[nNpcId]["OptionFunc115"] = "NewInaugurationTask_ImprovePro"
	tNpcGossip[nNpcId]["ChkFunc1-5"] = function ()
		return NewInaugurationTask_ChkFunc(4)
	end
	
	tNpcGossip[nNpcId]["Text1-6"] = {101,116}
	tNpcGossip[nNpcId]["tOption1-6"] = {116}
	tNpcGossip[nNpcId]["ChkFunc1-6"] = function ()
		return NewInaugurationTask_ChkFuncLev(nNpcId)
	end
	
	tNpcGossip[nNpcId]["Text1-7"] = {101,117}
	tNpcGossip[nNpcId]["tOption1-7"] = {117}
	
	tNpcGossip[nNpcId]["Text2-1"] = {101,211}
	tNpcGossip[nNpcId]["tOption2-1"] = {211}
	
	tNpcGossip[nNpcId]["Text2-2"] = {101,212}
	tNpcGossip[nNpcId]["tOption2-2"] = {212}
	
	tNpcGossip[nNpcId]["Text2-3"] = {101,213}
	tNpcGossip[nNpcId]["tOption2-3"] = {213}
	
	tNpcGossip[nNpcId]["Text2-4"] = {101,214}
	tNpcGossip[nNpcId]["tOption2-4"] = {214}
	
	tNpcGossip[nNpcId]["Text2-5"] = {101,215}
	tNpcGossip[nNpcId]["tOption2-5"] = {215}
	
	tNpcGossip[nNpcId]["Text3-1"] = {311}
	tNpcGossip[nNpcId]["tOption3-1"] = {311}
	tNpcGossip[nNpcId]["OptionFunc311"] = "NewInaugurationTask_ChgMapNpc"
	
	
end

tNpcGossip[24271] = tNpcGossip[24271] or DefaultNpc:new{}
tNpcGossip[24271]["OptionHidden"] = 1
tNpcGossip[24271]["DialogueText"] = tNewInaugurationTask_Text[24271]

tNpcGossip[24271]["Text1-1"] = {1011,1012,1013}
tNpcGossip[24271]["tOption1-1"] = {1011}
tNpcGossip[24271]["OptionPoint1011"]="2-11"
tNpcGossip[24271]["ChkFunc1-1"] = function ()
	return NewInaugurationTask_ChkWeapFunc()
end


tNpcGossip[24271]["Text1-2"] = {101,111}
tNpcGossip[24271]["tOption1-2"] = {111}
tNpcGossip[24271]["OptionFunc111"] = "NewInaugurationTask_ImprovePro"
tNpcGossip[24271]["ChkFunc1-2"] = function ()
	return NewInaugurationTask_ChkFunc(0)
end

tNpcGossip[24271]["Text1-3"] = {101,112}
tNpcGossip[24271]["tOption1-3"] = {112}
tNpcGossip[24271]["OptionFunc112"] = "NewInaugurationTask_ImprovePro"
tNpcGossip[24271]["ChkFunc1-3"] = function ()
	return NewInaugurationTask_ChkFunc(1)
end

tNpcGossip[24271]["Text1-4"] = {101,113}
tNpcGossip[24271]["tOption1-4"] = {113}
tNpcGossip[24271]["OptionFunc113"] = "NewInaugurationTask_ImprovePro"
tNpcGossip[24271]["ChkFunc1-4"] = function ()
	return NewInaugurationTask_ChkFunc(2)
end

tNpcGossip[24271]["Text1-5"] = {101,114}
tNpcGossip[24271]["tOption1-5"] = {114}
tNpcGossip[24271]["OptionFunc114"] = "NewInaugurationTask_ImprovePro"
tNpcGossip[24271]["ChkFunc1-5"] = function ()
	return NewInaugurationTask_ChkFunc(3)
end

tNpcGossip[24271]["Text1-6"] = {101,115}
tNpcGossip[24271]["tOption1-6"] = {115}
tNpcGossip[24271]["OptionFunc115"] = "NewInaugurationTask_ImprovePro"
tNpcGossip[24271]["ChkFunc1-6"] = function ()
	return NewInaugurationTask_ChkFunc(4)
end

tNpcGossip[24271]["Text1-7"] = {101,116}
tNpcGossip[24271]["tOption1-7"] = {116}
tNpcGossip[24271]["ChkFunc1-7"] = function ()
	return NewInaugurationTask_ChkFuncLev(24271)
end

tNpcGossip[24271]["Text1-8"] = {101,117}
tNpcGossip[24271]["tOption1-8"] = {2011,117}

tNpcGossip[24271]["Text2-1"] = {101,211}
tNpcGossip[24271]["tOption2-1"] = {211}

tNpcGossip[24271]["Text2-2"] = {101,212}
tNpcGossip[24271]["tOption2-2"] = {212}

tNpcGossip[24271]["Text2-3"] = {101,213}
tNpcGossip[24271]["tOption2-3"] = {213}

tNpcGossip[24271]["Text2-4"] = {101,214}
tNpcGossip[24271]["tOption2-4"] = {214}

tNpcGossip[24271]["Text2-5"] = {101,215}
tNpcGossip[24271]["tOption2-5"] = {215}

tNpcGossip[24271]["Text3-1"] = {311}
tNpcGossip[24271]["tOption3-1"] = {311}
tNpcGossip[24271]["OptionFunc311"] = "NewInaugurationTask_ChgMapNpc"

tNpcGossip[24271]["Text2-11"] = {2011,2012,2013}
tNpcGossip[24271]["tOption2-11"] = {2011}
tNpcGossip[24271]["OptionFunc2011"] = "WeaponArchivesPre_EnterInstance</N>24271"

for nNpcId = 24272,24273 do
	tNpcGossip[nNpcId] = tNpcGossip[nNpcId] or DefaultNpc:new{}
	tNpcGossip[nNpcId]["OptionHidden"] = 1
	tNpcGossip[nNpcId]["DialogueText"] = tNewInaugurationTask_Text[nNpcId]
	
	tNpcGossip[nNpcId]["Text1-1"] = {101,111,121}
	tNpcGossip[nNpcId]["tOption1-1"] = {111}
	tNpcGossip[nNpcId]["OptionFunc111"] = "NewInaugurationTask_ImprovePro"
	tNpcGossip[nNpcId]["ChkFunc1-1"] = function ()
		if Get_UserSex() == 1 then
			tNpcGossip[nNpcId]["Text1-1"] = {101,111}
		else
			tNpcGossip[nNpcId]["Text1-1"] = {101,121}
		end
		
		return NewInaugurationTask_ChkFunc(0)
	end
	
	tNpcGossip[nNpcId]["Text1-2"] = {101,112,122}
	tNpcGossip[nNpcId]["tOption1-2"] = {112}
	tNpcGossip[nNpcId]["OptionFunc112"] = "NewInaugurationTask_ImprovePro"
	tNpcGossip[nNpcId]["ChkFunc1-2"] = function ()
		if Get_UserSex() == 1 then
			tNpcGossip[nNpcId]["Text1-2"] = {101,112}
		else
			tNpcGossip[nNpcId]["Text1-2"] = {101,122}
		end
		return NewInaugurationTask_ChkFunc(1)
	end
	
	tNpcGossip[nNpcId]["Text1-3"] = {101,113,123}
	tNpcGossip[nNpcId]["tOption1-3"] = {113}
	tNpcGossip[nNpcId]["OptionFunc113"] = "NewInaugurationTask_ImprovePro"
	tNpcGossip[nNpcId]["ChkFunc1-3"] = function ()
		if Get_UserSex() == 1 then
			tNpcGossip[nNpcId]["Text1-3"] = {101,113}
		else
			tNpcGossip[nNpcId]["Text1-3"] = {101,123}
		end
		return NewInaugurationTask_ChkFunc(2)
	end
	
	tNpcGossip[nNpcId]["Text1-4"] = {101,114,124}
	tNpcGossip[nNpcId]["tOption1-4"] = {114}
	tNpcGossip[nNpcId]["OptionFunc114"] = "NewInaugurationTask_ImprovePro"
	tNpcGossip[nNpcId]["ChkFunc1-4"] = function ()
		if Get_UserSex() == 1 then
			tNpcGossip[nNpcId]["Text1-4"] = {101,114}
		else
			tNpcGossip[nNpcId]["Text1-4"] = {101,124}
		end
		return NewInaugurationTask_ChkFunc(3)
	end
	
	tNpcGossip[nNpcId]["Text1-5"] = {101,115,125}
	tNpcGossip[nNpcId]["tOption1-5"] = {115}
	tNpcGossip[nNpcId]["OptionFunc115"] = "NewInaugurationTask_ImprovePro"
	tNpcGossip[nNpcId]["ChkFunc1-5"] = function ()
		if Get_UserSex() == 1 then
			tNpcGossip[nNpcId]["Text1-5"] = {101,115}
		else
			tNpcGossip[nNpcId]["Text1-5"] = {101,125}
		end
		return NewInaugurationTask_ChkFunc(4)
	end
	
	tNpcGossip[nNpcId]["Text1-6"] = {101,116}
	tNpcGossip[nNpcId]["tOption1-6"] = {116}
	tNpcGossip[nNpcId]["ChkFunc1-6"] = function ()
		return NewInaugurationTask_ChkFuncLev(nNpcId)
	end
	
	tNpcGossip[nNpcId]["Text1-7"] = {101,117}
	tNpcGossip[nNpcId]["tOption1-7"] = {117}
	
	tNpcGossip[nNpcId]["Text2-1"] = {101,211,221}
	tNpcGossip[nNpcId]["tOption2-1"] = {211}
	tNpcGossip[nNpcId]["ChkFunc2-1"] = function ()
		if Get_UserSex() == 1 then
			tNpcGossip[nNpcId]["Text2-1"] = {101,211}
		else
			tNpcGossip[nNpcId]["Text2-1"] = {101,221}
		end
		return true
	end
	
	
	tNpcGossip[nNpcId]["Text2-2"] = {101,212,222}
	tNpcGossip[nNpcId]["tOption2-2"] = {212}
	tNpcGossip[nNpcId]["ChkFunc2-2"] = function ()
		if Get_UserSex() == 1 then
			tNpcGossip[nNpcId]["Text2-2"] = {101,212}
		else
			tNpcGossip[nNpcId]["Text2-2"] = {101,222}
		end
		return true
	end
	
	tNpcGossip[nNpcId]["Text2-3"] = {101,213,223}
	tNpcGossip[nNpcId]["tOption2-3"] = {213}
	tNpcGossip[nNpcId]["ChkFunc2-3"] = function ()
		if Get_UserSex() == 1 then
			tNpcGossip[nNpcId]["Text2-3"] = {101,213}
		else
			tNpcGossip[nNpcId]["Text2-3"] = {101,223}
		end
		return true
	end
	
	tNpcGossip[nNpcId]["Text2-4"] = {101,214,224}
	tNpcGossip[nNpcId]["tOption2-4"] = {214}
	tNpcGossip[nNpcId]["ChkFunc2-4"] = function ()
		if Get_UserSex() == 1 then
			tNpcGossip[nNpcId]["Text2-4"] = {101,214}
		else
			tNpcGossip[nNpcId]["Text2-4"] = {101,224}
		end
		return true
	end
	
	tNpcGossip[nNpcId]["Text2-5"] = {101,215,225}
	tNpcGossip[nNpcId]["tOption2-5"] = {101,215}
	tNpcGossip[nNpcId]["ChkFunc2-5"] = function ()
		if Get_UserSex() == 1 then
			tNpcGossip[nNpcId]["Text2-5"] = {101,215}
		else
			tNpcGossip[nNpcId]["Text2-5"] = {101,225}
		end
		return true
	end
	
	tNpcGossip[nNpcId]["Text3-1"] = {311}
	tNpcGossip[nNpcId]["tOption3-1"] = {311}
	tNpcGossip[nNpcId]["OptionFunc311"] = "NewInaugurationTask_ChgMapNpc"
	
end


tNpcGossip[24274] = tNpcGossip[24274] or DefaultNpc:new{}
tNpcGossip[24274]["OptionHidden"] = 1
tNpcGossip[24274]["DialogueText"] = tNewInaugurationTask_Text[24274]

tNpcGossip[24274]["Text1-1"] = {101,111,121}
tNpcGossip[24274]["tOption1-1"] = {111}
tNpcGossip[24274]["OptionFunc111"] = "NewInaugurationTask_ImprovePro"
tNpcGossip[24274]["ChkFunc1-1"] = function ()
	
	return NewInaugurationTask_ChkFunc(0)
end

tNpcGossip[24274]["Text1-2"] = {101,112,122,132,142,152}
tNpcGossip[24274]["tOption1-2"] = {112,122}
tNpcGossip[24274]["OptionFunc112"] = "NewInaugurationTask_ImproveChgPro</N>13002"
tNpcGossip[24274]["OptionFunc122"] = "NewInaugurationTask_ImproveChgPro</N>14002"
tNpcGossip[24274]["ChkFunc1-2"] = function ()
	return NewInaugurationTask_ChkFunc(1)
end

tNpcGossip[24274]["Text1-3"] = {101,113,123}
tNpcGossip[24274]["tOption1-3"] = {113}
tNpcGossip[24274]["OptionFunc113"] = "NewInaugurationTask_ImprovePro"
tNpcGossip[24274]["ChkFunc1-3"] = function ()
	if Get_UserProfession() == 132 then
		tNpcGossip[24274]["Text1-3"] = {101,113}
	else
		tNpcGossip[24274]["Text1-3"] = {101,123}
	end
	return NewInaugurationTask_ChkFunc(2)
end

tNpcGossip[24274]["Text1-4"] = {101,114,124}
tNpcGossip[24274]["tOption1-4"] = {114}
tNpcGossip[24274]["OptionFunc114"] = "NewInaugurationTask_ImprovePro"
tNpcGossip[24274]["ChkFunc1-4"] = function ()
	if Get_UserProfession() == 133 then
		tNpcGossip[24274]["Text1-4"] = {101,114}
	else
		tNpcGossip[24274]["Text1-4"] = {101,124}
	end
	return NewInaugurationTask_ChkFunc(3)
end

tNpcGossip[24274]["Text1-5"] = {115,125}
tNpcGossip[24274]["tOption1-5"] = {115}
tNpcGossip[24274]["OptionFunc115"] = "NewInaugurationTask_ImprovePro"
tNpcGossip[24274]["ChkFunc1-5"] = function ()
	if Get_UserProfession() == 134 then
		tNpcGossip[24274]["Text1-5"] = {101,115}
	else
		tNpcGossip[24274]["Text1-5"] = {101,125}
	end
	return NewInaugurationTask_ChkFunc(4)
end

tNpcGossip[24274]["Text1-6"] = {101,116}
tNpcGossip[24274]["tOption1-6"] = {116}
tNpcGossip[24274]["ChkFunc1-6"] = function ()
	return NewInaugurationTask_ChkFuncLev(24274)
end

tNpcGossip[24274]["Text1-7"] = {101,117}
tNpcGossip[24274]["tOption1-7"] = {117}

tNpcGossip[24274]["Text2-1"] = {101,211,221}
tNpcGossip[24274]["tOption2-1"] = {211}


tNpcGossip[24274]["Text2-2"] = {101,212,222}
tNpcGossip[24274]["tOption2-2"] = {212}
tNpcGossip[24274]["ChkFunc2-2"] = function ()
	if Get_UserProfession() == 132 then
		tNpcGossip[24274]["Text2-2"] = {101,212}
	else
		tNpcGossip[24274]["Text2-2"] = {101,222}
	end
	return true
end

tNpcGossip[24274]["Text2-3"] = {101,213,223}
tNpcGossip[24274]["tOption2-3"] = {213}
tNpcGossip[24274]["ChkFunc2-3"] = function ()
	if Get_UserProfession() == 133 then
		tNpcGossip[24274]["Text2-3"] = {101,213}
	else
		tNpcGossip[24274]["Text2-3"] = {101,223}
	end
	return true
end

tNpcGossip[24274]["Text2-4"] = {101,214,224}
tNpcGossip[24274]["tOption2-4"] = {214}
tNpcGossip[24274]["ChkFunc2-4"] = function ()
	if Get_UserProfession() == 134 then
		tNpcGossip[24274]["Text2-4"] = {101,214}
	else
		tNpcGossip[24274]["Text2-4"] = {101,224}
	end
	return true
end

tNpcGossip[24274]["Text2-5"] = {101,215,225}
tNpcGossip[24274]["tOption2-5"] = {215}
tNpcGossip[24274]["ChkFunc2-5"] = function ()
	if Get_UserProfession() == 135 then
		tNpcGossip[24274]["Text2-5"] = {101,215}
	else
		tNpcGossip[24274]["Text2-5"] = {101,225}
	end
	return true
end

tNpcGossip[24274]["Text3-1"] = {311}
tNpcGossip[24274]["tOption3-1"] = {311}
tNpcGossip[24274]["OptionFunc311"] = "NewInaugurationTask_ChgMapNpc"

tNpcGossip[24309] = tNpcGossip[24309] or DefaultNpc:new{}
tNpcGossip[24309]["OptionHidden"] = 1
tNpcGossip[24309]["DialogueText"] = tNewInaugurationTask_Text[24309]

tNpcGossip[24309]["Text1-1"] = {111}
tNpcGossip[24309]["tOption1-1"] = {111}
tNpcGossip[24309]["OptionFunc111"] = "NewInaugurationTask_ChgInauMap"
--------------------------------------------物品模板----------------------------------
tItem[3322145] = tItem[3322145] or {}
tItem[3322145]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tNewInaugurationTask_Item[nItemId])
end

tItem[3322146] = tItem[3322145] or {}
tItem[3322147] = tItem[3322145] or {}
tItem[3322148] = tItem[3322145] or {}

--神兵灵魄,炼魂石,鸿蒙炼魂玉
tItem[3321098] = tItem[3321098] or {}
tItem[3321098]["Function"] = function(nItemId,sItemName)
	if User_TrueChkOpenHundredSoldiers() then
		User_OpenDialog(968)
	else
		Sys_MsgBox(tNewInaugurationTask_Text["Lowlevel"])
	end
end

tItem[3321107] = tItem[3321098] or {}
tItem[3321108] = tItem[3321098] or {}
--------------------------------------------陷阱模板----------------------------------
tTrap[2399]= tTrap[2399] or {}
tTrap[2399]["Function"] = function (nTrapId,nTrapType)
	NewInaugurationTask_ChgMap()
end

table.insert(tGetProfLevUpReward["tFunction"],NewInaugurationTask_ImproveProReward)
----------------------------------------玩家上线触发----------------------------------
table.insert(tSystem_PlayLogin_Func,NewInaugurationTask_Like_Login)
