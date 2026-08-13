------------------------------------------------------------------------------------
--Name：            180820[英文征服][活动脚本]阿拉丁神灯活动制作
--Creator:      蔡颖静
--Created:     2018/08/20
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tLampofAladdin_Data={}
--活动时间
tLampofAladdin_Data["BeforeTime"]=tActivityTime["LampofAladdin"]["BeforeTime"]
tLampofAladdin_Data["ActTime"]=tActivityTime["LampofAladdin"]["ActTime"]
tLampofAladdin_Data["AfterTime"]=tActivityTime["LampofAladdin"]["AfterTime"]

--等级判断
tLampofAladdin_Data["Level"]=80
tLampofAladdin_Data["Metempsychosis"]=0

--时间间隔
tLampofAladdin_Data["FirstDay"]=20190318
tLampofAladdin_Data["Interval"]=1800

--神灯寻路
tLampofAladdin_Data[23165]={}
tLampofAladdin_Data[23165]["NpcId"]=23165 
tLampofAladdin_Data[23165]["MapId"]=1002 
tLampofAladdin_Data[23165]["PosX"] = 367
tLampofAladdin_Data[23165]["PosY"] = 451

--掩码
tLampofAladdin_Data["Stc"]={}
--stc(182,01) 记录当天打开神灯礼盒获得的神灯数
tLampofAladdin_Data["Stc"][1]={}
tLampofAladdin_Data["Stc"][1]["EventType"]=182
tLampofAladdin_Data["Stc"][1]["DataType"]=1
tLampofAladdin_Data["Stc"][1]["MaxData"]=2
--stc(182,02) 记录玩家类型
tLampofAladdin_Data["Stc"][2]={}
tLampofAladdin_Data["Stc"][2]["EventType"]=182
tLampofAladdin_Data["Stc"][2]["DataType"]=2
tLampofAladdin_Data["Stc"][2]["ComeBack"]=1
--stc(182,03) 记录许愿的次数
tLampofAladdin_Data["Stc"][3]={}
tLampofAladdin_Data["Stc"][3]["EventType"]=182
tLampofAladdin_Data["Stc"][3]["DataType"]=3
tLampofAladdin_Data["Stc"][3]["MaxData"]={}
tLampofAladdin_Data["Stc"][3]["MaxData"][1]=5
tLampofAladdin_Data["Stc"][3]["MaxData"][2]=7
tLampofAladdin_Data["Stc"][3]["MaxData"][3]=7
tLampofAladdin_Data["Stc"][3]["MaxData"][4]=9
--stc(182,04) 上线获得神灯礼盒
tLampofAladdin_Data["Stc"][4]={}
tLampofAladdin_Data["Stc"][4]["EventType"]=182
tLampofAladdin_Data["Stc"][4]["DataType"]=4
tLampofAladdin_Data["Stc"][4]["MaxData"]=1
--stc(182,05) 许愿,,奖励索引
tLampofAladdin_Data["Stc"][5]={}
tLampofAladdin_Data["Stc"][5]["EventType"]=182
tLampofAladdin_Data["Stc"][5]["DataType"]=5
--stc(182,20) 杀怪掉落
tLampofAladdin_Data["Stc"][6]={}
tLampofAladdin_Data["Stc"][6]["EventType"]=182
tLampofAladdin_Data["Stc"][6]["DataType"]=20
--stc(182,21) 每日上线获得神灯
tLampofAladdin_Data["Stc"][7]={}
tLampofAladdin_Data["Stc"][7]["EventType"]=182
tLampofAladdin_Data["Stc"][7]["DataType"]=21

--普通玩家上线给神灯礼包
tLampofAladdin_Data[1]={}
tLampofAladdin_Data[1]["LogId"]=12001145
tLampofAladdin_Data[1]["RewardItem"] = {}
tLampofAladdin_Data[1]["RewardItem"][1]={}
tLampofAladdin_Data[1]["RewardItem"][1]["Id"]= 3310567
tLampofAladdin_Data[1]["RewardItem"][1]["Attr"] = "0 1"

--回归/Vip/回归+Vip玩家上线给额外的神灯
tLampofAladdin_Data[2]={}
tLampofAladdin_Data[2]["LogId"]=12001145
tLampofAladdin_Data[2]["RewardItem"] = {}
-- tLampofAladdin_Data[2]["RewardItem"][1]={}
-- tLampofAladdin_Data[2]["RewardItem"][1]["Id"]= 3310567
-- tLampofAladdin_Data[2]["RewardItem"][1]["Attr"] = "0 1"
tLampofAladdin_Data[2]["RewardItem"][1]={}
tLampofAladdin_Data[2]["RewardItem"][1]["Id"]= 3310565
tLampofAladdin_Data[2]["RewardItem"][1]["Attr"] = "0 %d"

--打开神灯礼盒
tLampofAladdin_Data[3310567]={}
tLampofAladdin_Data[3310567]["LogId"]=12001145
tLampofAladdin_Data[3310567]["RewardItem"] = {}
tLampofAladdin_Data[3310567]["RewardItem"][1]={}
tLampofAladdin_Data[3310567]["RewardItem"][1]["Id"]= 3310565
tLampofAladdin_Data[3310567]["RewardItem"][1]["Attr"] = "0 1"

--使用赠品三星BeachSuit外套碎片
tLampofAladdin_Data[3310568]={}
tLampofAladdin_Data[3310568]["LogId"]=12001145
tLampofAladdin_Data[3310568]["DeleteItem"] = {}
tLampofAladdin_Data[3310568]["DeleteItem"][1]={}
tLampofAladdin_Data[3310568]["DeleteItem"][1]["Id"]=3310568
tLampofAladdin_Data[3310568]["DeleteItem"][1]["ItemNum"]=30
tLampofAladdin_Data[3310568]["DeleteItem"][1]["NoItem"]=tLampofAladdin_Text[3310568]["UseFail"]
tLampofAladdin_Data[3310568]["RewardItem"] = {}
tLampofAladdin_Data[3310568]["RewardItem"][1]={}
tLampofAladdin_Data[3310568]["RewardItem"][1]["Id"]= 184345
tLampofAladdin_Data[3310568]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"

--许愿
tLampofAladdin_Data["Wishes"]={}
tLampofAladdin_Data["Wishes"]["DeleteItem"] = {}
tLampofAladdin_Data["Wishes"]["DeleteItem"][1]={}
tLampofAladdin_Data["Wishes"]["DeleteItem"][1]["Id"]=3310565
tLampofAladdin_Data["Wishes"]["LogId"]=12001145
--微光星陨石
tLampofAladdin_Data["Wishes"][4]={}
tLampofAladdin_Data["Wishes"][4]["LogId"]=12001145
tLampofAladdin_Data["Wishes"][4]["RewardItem"] = {}
tLampofAladdin_Data["Wishes"][4]["RewardItem"][1]={}
tLampofAladdin_Data["Wishes"][4]["RewardItem"][1]["Id"]= 3009000
tLampofAladdin_Data["Wishes"][4]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
--究极通神丹
tLampofAladdin_Data["Wishes"][3]={}
tLampofAladdin_Data["Wishes"][3]["LogId"]=12001145
tLampofAladdin_Data["Wishes"][3]["RewardItem"] = {}
tLampofAladdin_Data["Wishes"][3]["RewardItem"][1]={}
tLampofAladdin_Data["Wishes"][3]["RewardItem"][1]["Id"]= 3003126
tLampofAladdin_Data["Wishes"][3]["RewardItem"][1]["Attr"] = "0 2 3"
--200点气力
tLampofAladdin_Data["Wishes"][7]={}
tLampofAladdin_Data["Wishes"][7]["LogId"]=12001145
tLampofAladdin_Data["Wishes"][7]["RewardStrengthValue"] = {}
tLampofAladdin_Data["Wishes"][7]["RewardStrengthValue"]["Value"] = 200
--黄色神纹精粹
tLampofAladdin_Data["Wishes"][2]={}
tLampofAladdin_Data["Wishes"][2]["LogId"]=12001145
tLampofAladdin_Data["Wishes"][2]["RewardItem"] = {}
tLampofAladdin_Data["Wishes"][2]["RewardItem"][1]={}
tLampofAladdin_Data["Wishes"][2]["RewardItem"][1]["Id"]= 4050001
tLampofAladdin_Data["Wishes"][2]["RewardItem"][1]["Attr"] = "0 9 3"
--赠品龙珠碎片
tLampofAladdin_Data["Wishes"][6]={}
tLampofAladdin_Data["Wishes"][6]["LogId"]=12001145
tLampofAladdin_Data["Wishes"][6]["RewardItem"] = {}
tLampofAladdin_Data["Wishes"][6]["RewardItem"][1]={}
tLampofAladdin_Data["Wishes"][6]["RewardItem"][1]["Id"]= 3008905
tLampofAladdin_Data["Wishes"][6]["RewardItem"][1]["Attr"] = "0 1"
--赠品+2赤炼石
tLampofAladdin_Data["Wishes"][5]={}
tLampofAladdin_Data["Wishes"][5]["LogId"]=12001145
tLampofAladdin_Data["Wishes"][5]["RewardItem"] = {}
tLampofAladdin_Data["Wishes"][5]["RewardItem"][1]={}
tLampofAladdin_Data["Wishes"][5]["RewardItem"][1]["Id"]= 730002
tLampofAladdin_Data["Wishes"][5]["RewardItem"][1]["Attr"] = "0 1 3"
--20赠品天石
tLampofAladdin_Data["Wishes"][8]={}
tLampofAladdin_Data["Wishes"][8]["LogId"]=12001145
tLampofAladdin_Data["Wishes"][8]["RewardEMoneyMono"] = {}
tLampofAladdin_Data["Wishes"][8]["RewardEMoneyMono"] ["Value"] = 20
--赠品三星BeachSuit外套碎片
tLampofAladdin_Data["Wishes"][1]={}
tLampofAladdin_Data["Wishes"][1]["LogId"]=12001145
tLampofAladdin_Data["Wishes"][1]["RewardItem"] = {}
tLampofAladdin_Data["Wishes"][1]["RewardItem"][1]={}
tLampofAladdin_Data["Wishes"][1]["RewardItem"][1]["Id"]= 3310568
tLampofAladdin_Data["Wishes"][1]["RewardItem"][1]["Attr"] = "0 1"

--玩家类型
tLampofAladdin_Data["UserType"]={}
tLampofAladdin_Data["UserType"]["Nomal"]=1
tLampofAladdin_Data["UserType"]["VIP"]=2
tLampofAladdin_Data["UserType"]["ComeBack"]=3
tLampofAladdin_Data["UserType"]["VIPNComeBack"]=4

--玩家杀怪掉落
tLampofAladdin_Data["MonsterKill"] = {}
tLampofAladdin_Data["MonsterKill"][1]={}
tLampofAladdin_Data["MonsterKill"][1]["ItemChanceSum"]=10000
-- 掉落神灯
tLampofAladdin_Data["MonsterKill"][1][1] = {}
tLampofAladdin_Data["MonsterKill"][1][1]["RandomItemChanceType"] = 2
tLampofAladdin_Data["MonsterKill"][1][1]["ItemChance"] = 35
tLampofAladdin_Data["MonsterKill"][1][1]["RewardItem"] = {}
tLampofAladdin_Data["MonsterKill"][1][1]["RewardItem"][1] = {}
tLampofAladdin_Data["MonsterKill"][1][1]["RewardItem"][1]["Id"] = 3310565
tLampofAladdin_Data["MonsterKill"][1][1]["RewardItem"][1]["Attr"] = "0 1"
tLampofAladdin_Data["MonsterKill"][1][1]["LogId"]=12001145
tLampofAladdin_Data["MonsterKill"][1][1]["Sign"] = 1

-- 不掉落
tLampofAladdin_Data["MonsterKill"][1][2] = {} 
tLampofAladdin_Data["MonsterKill"][1][2]["RandomItemChanceType"] = 2
tLampofAladdin_Data["MonsterKill"][1][2]["ItemChance"] = 9965
tLampofAladdin_Data["MonsterKill"][1][2]["LogId"] = 12001145
tLampofAladdin_Data["MonsterKill"][1][2]["Sign"] = 2

--emoneybuglog
tLampofAladdin_Data["EmoneyLog"]={}
tLampofAladdin_Data["EmoneyLog"][1]="350	21638	0	0	1	"--玩家许愿三星外套碎片30合1赠 
tLampofAladdin_Data["EmoneyLog"][2]="350	21634	0	0	1	"--玩家许愿9个赠品黄色神纹精粹 
tLampofAladdin_Data["EmoneyLog"][3]="350	21632	0	0	1	"--玩家许愿大爆丹*2赠 
tLampofAladdin_Data["EmoneyLog"][4]="350	21631	0	0	1	"--玩家许愿微光星陨石*5 
tLampofAladdin_Data["EmoneyLog"][5]="350	21636	0	0	1	"--玩家许愿+2赤练石赠 
tLampofAladdin_Data["EmoneyLog"][6]="350	21635	0	0	1	"--玩家许愿龙珠碎片赠 
tLampofAladdin_Data["EmoneyLog"][7]="350	21633	0	0	1	"--玩家许愿200点气力值赠 
tLampofAladdin_Data["EmoneyLog"][8]="350	21637	0	0	-20	"--玩家许愿20点赠品天石 
tLampofAladdin_Data["EmoneyLog"]["UserType"]={}
tLampofAladdin_Data["EmoneyLog"]["UserType"][2]="350	21630	0	0	1	"--VIP玩家发2盏灯 
tLampofAladdin_Data["EmoneyLog"]["UserType"][3]="350	21629	0	0	1	"--回归玩家发2盏灯 
tLampofAladdin_Data["EmoneyLog"]["UserType"][4]="350	21639	0	0	1	"--既是回归玩家又是VIP玩家发4盏灯 
--过期失效log
tLampofAladdin_Data["Log"]={}
tLampofAladdin_Data["Log"]["DeleteLampBoxOverdue"]="0,0,%d,%d,12001145,2,0,0"
----------------------------------逻辑部分---------------------------------------------
--等级判断
function LampofAladdin_JudgeLevel()
	local nLevel = tLampofAladdin_Data["Level"]
	local nMete = tLampofAladdin_Data["Metempsychosis"]
	if User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return true
	else
		return false
	end
end

--获取玩家类型
function LampofAladdin_GetUserType()
	local nUserVip = Get_UserVip()
	local nUserEvent=tLampofAladdin_Data["Stc"][2]["EventType"]
	local nUserData=tLampofAladdin_Data["Stc"][2]["DataType"]
	if User_LastLoginOperatorByTime(tLampofAladdin_Data["FirstDay"]) then 
		if Task_ChkStcValue(nUserEvent,nUserData,"==",0) then
			Task_SetStatistic(nUserEvent,nUserData,tLampofAladdin_Data["Stc"][2]["ComeBack"],1)
			Task_SetStcTimestamp(nUserEvent,nUserData,0)
		end 
	end 
	if Task_ChkStcValue(nUserEvent,nUserData,"~=",0) then
		--回归玩家
		if nUserVip<=0 then
			return tLampofAladdin_Data["UserType"]["ComeBack"]
		else
			return tLampofAladdin_Data["UserType"]["VIPNComeBack"]
		end 
	end 
	if not User_LastLoginOperatorByTime(tLampofAladdin_Data["FirstDay"]) then 
		--普通玩家
		if nUserVip<=0 then
			return tLampofAladdin_Data["UserType"]["Nomal"]
		else
			return tLampofAladdin_Data["UserType"]["VIP"]
		end 
	end 
end 


--上线获得神灯
function LampofAladdin_ChkLogin()
--活动时间判断
	if not Sys_ChkFullTime(tLampofAladdin_Data["ActTime"])  then
		return
	end 
	--今日已领取
	local nEvent=tLampofAladdin_Data["Stc"][4]["EventType"]
	local nType=tLampofAladdin_Data["Stc"][4]["DataType"]
	local nPerdayEvent=tLampofAladdin_Data["Stc"][7]["EventType"]
	local nPerdayType=tLampofAladdin_Data["Stc"][7]["DataType"]
	if not Task_StcInterval(nEvent,nType,1,4) then
		if Task_ChkStcValue(nEvent,nType,"~=",0) or Task_ChkStcValue(nPerdayEvent,nPerdayType,"~=",0) then 
			return
		end 
	end 
--等级判断
	if not LampofAladdin_JudgeLevel() then
		return
	end 
	--隔天清掩码
	if Task_StcInterval(nPerdayEvent,nPerdayType,1,4) then
		Task_SetStatistic(nPerdayEvent,nPerdayType,0,1)
		Task_SetStcTimestamp(nPerdayEvent,nPerdayType,0)
	end
--玩家类型
	local nLampNum=0
	local nIndex=0
	local nUserType=LampofAladdin_GetUserType()
	local tReward = CommonFunc_Copy(tLampofAladdin_Data[2])
	if nUserType==1 then 
		nIndex=1
	else
		if nUserType==2 then 
			nLampNum=2
			nIndex=2
		end 
		if nUserType==3 then 
			nLampNum=2
			nIndex=2
		end 
		if nUserType==4 then 
			nLampNum=4
			nIndex=2
		end 
		tReward["RewardItem"][1]["Attr"]=string.format(tLampofAladdin_Data[2]["RewardItem"][1]["Attr"],nLampNum)
	end 
--背包空间判断
	local nGetRewardSpace=0
	local nDelRewardSpace =0
	if nIndex==1 then 
		nGetRewardSpace = RewardTemplate_GetRewardSpace(tLampofAladdin_Data[nIndex])
		nDelRewardSpace = RewardTemplate_GetDelSpace(tLampofAladdin_Data[nIndex])
		local nNeedSpace = nGetRewardSpace - nDelRewardSpace
		if not User_CheckLeftSpace(nNeedSpace) then
			Sys_MsgBox(tLampofAladdin_Text["SystemTips"]["NoSpaceBox"])
			return
		end 
	end 
	if nIndex==2 then 
		nGetRewardSpace = RewardTemplate_GetRewardSpace(tReward)
		nDelRewardSpace = RewardTemplate_GetDelSpace(tReward)
		local nNeedSpace = nGetRewardSpace - nDelRewardSpace
		if not User_CheckLeftSpace(nNeedSpace) then
			local sText=string.format(tLampofAladdin_Text["SystemTips"]["NoSpace"],nNeedSpace)
			Sys_MsgBox(sText)
			return
		end 
	end 
--置掩码
	if Task_ChkStcValue(nEvent,nType,"==",0) then
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		--给物品
		if RewardTemplate_UseItem(tLampofAladdin_Data[1]) then
			User_TalkChannel2005(tLampofAladdin_Text["SystemTips"][1])
		end
	end
	if Task_ChkStcValue(nPerdayEvent,nPerdayType,"==",0) then 
		--额外给灯
		if nUserType>1 then 
			Task_AddStatistic(nPerdayEvent,nPerdayType,1,1)
			Task_SetStcTimestamp(nPerdayEvent,nPerdayType,0)
			--给物品
			if RewardTemplate_UseItem(tReward) then
				--记emoneylog
				Sys_SaveEmoneyBuy(tLampofAladdin_Data["EmoneyLog"]["UserType"][nUserType])
				return User_TalkChannel2005(tLampofAladdin_Text["SystemTips"][nUserType])
			end 
		end 
	end 
end 

--神灯许愿确认
function LampofAladdin_ChkMakeWish(nNpcId,nItemId)
--活动时间判断
	if not Sys_ChkFullTime(tLampofAladdin_Data["ActTime"])  then
		return
	end 
--等级判断
	if not LampofAladdin_JudgeLevel() then
		return
	end 
--玩家类型
	local nUserType=LampofAladdin_GetUserType()
--许愿次数不足
	local nEvent=tLampofAladdin_Data["Stc"][3]["EventType"]
	local nType=tLampofAladdin_Data["Stc"][3]["DataType"]
	if Task_ChkStcValue(nEvent,nType,">=",tLampofAladdin_Data["Stc"][3]["MaxData"][nUserType]) then
		tNpcGossip[23165]["Text141"]=string.format(tLampofAladdin_Text[23165]["Text141"],tLampofAladdin_Data["Stc"][3]["MaxData"][nUserType])
		return LinkNpcGossipFunc_New(nNpcId,"1-4")
	end 
--物品确认
	if not Item_ChkItem(nItemId) then
		return LinkNpcGossipFunc_New(nNpcId,"1-5")
	end
	LinkNpcGossipFunc_New(nNpcId,"1-6")
end

--神灯许愿
function LampofAladdin_MakeWish(nIndex,nNpcId,nItemId)
--活动时间判断
	if not Sys_ChkFullTime(tLampofAladdin_Data["ActTime"])  then
		return
	end 
--等级判断
	if not LampofAladdin_JudgeLevel() then
		return
	end 
--物品确认
	if not Item_ChkItem(nItemId) then
		return LinkNpcGossipFunc_New(nNpcId,"1-5")
	end
--玩家类型
	local nUserType=LampofAladdin_GetUserType()
--许愿次数不足
	local nEvent=tLampofAladdin_Data["Stc"][3]["EventType"]
	local nType=tLampofAladdin_Data["Stc"][3]["DataType"]
	if Task_ChkStcValue(nEvent,nType,">=",tLampofAladdin_Data["Stc"][3]["MaxData"][nUserType]) then
		tNpcGossip[23165]["Text141"]=string.format(tLampofAladdin_Text[23165]["Text141"],tLampofAladdin_Data["Stc"][3]["MaxData"][nUserType])
		return LinkNpcGossipFunc_New(nNpcId,"1-4")
	end 
	
	if Task_ChkStcValue(nEvent,nType,"<=",tLampofAladdin_Data["Stc"][3]["MaxData"][nUserType]) then
		--许愿次数
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		--是否许愿
		local nWishEvent=tLampofAladdin_Data["Stc"][5]["EventType"]
		local nWishType=tLampofAladdin_Data["Stc"][5]["DataType"]
		Task_SetStatistic(nWishEvent,nWishType,nIndex,1)
		Task_SetStcTimestamp(nWishEvent,nWishType,0)
		--许愿成功
		if RewardTemplate_UseItem(tLampofAladdin_Data["Wishes"]) then
			--记emoneylog
			Sys_SaveEmoneyBuy(tLampofAladdin_Data["EmoneyLog"][nIndex])
			Sys_MsgBox(tLampofAladdin_Text["SystemTips"]["MakeWishSuccess"])
			return
		end 
	end 
end 

--领取奖励判断
function LampofAladdin_ChkGetReward(nNpcId)
--活动时间判断
	if not Sys_ChkFullTime(tLampofAladdin_Data["ActTime"])  then
		return
	end 
--等级判断
	if not LampofAladdin_JudgeLevel() then
		return
	end 
	--是否许愿
	local nWishEvent=tLampofAladdin_Data["Stc"][5]["EventType"]
	local nWishType=tLampofAladdin_Data["Stc"][5]["DataType"]
	if Task_ChkStcValue(nWishEvent,nWishType,"<=",0) then
		return 
	end 
	--时间未到
	local nTriTime = tLampofAladdin_Data["Interval"]
	if not Task_StcInterval(nWishEvent,nWishType,nTriTime,0) then
		local nStcTime = Get_UserStcTimestampValue(nWishEvent,nWishType)
		local nNowTime = os.time()
		local nLeftTime=30-((nNowTime - nStcTime)/60)
		tNpcGossip[23165]["Text171"]=string.format(tLampofAladdin_Text[23165]["Text171"],math.ceil(nLeftTime))
		return LinkNpcGossipFunc_New(nNpcId,"1-7")
	else
	--许愿次数
		local nEvent=tLampofAladdin_Data["Stc"][3]["EventType"]
		local nType=tLampofAladdin_Data["Stc"][3]["DataType"]
		local nUserType=LampofAladdin_GetUserType()
		local nIndex=Get_UserStatisticValue(nWishEvent,nWishType)
		if Task_ChkStcValue(nEvent,nType,"<",tLampofAladdin_Data["Stc"][3]["MaxData"][nUserType]) then
			tNpcGossip[23165]["OptionFunc18"]="LampofAladdin_GetReward</N>" .. nIndex
			return LinkNpcGossipFunc_New(nNpcId,"1-8")
		else
			tNpcGossip[23165]["OptionFunc19"]="LampofAladdin_GetReward</N>" .. nIndex
			return LinkNpcGossipFunc_New(nNpcId,"1-9")
		end
	end 
end

--领取奖励
function LampofAladdin_GetReward(nIndex)
--活动时间判断
	if not Sys_ChkFullTime(tLampofAladdin_Data["ActTime"])  then
		return
	end 
--等级判断
	if not LampofAladdin_JudgeLevel() then
		return
	end 
--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tLampofAladdin_Data["Wishes"][nIndex])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tLampofAladdin_Data["Wishes"][nIndex])
	local nNeedSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nNeedSpace) then
		return User_TalkChannel2005(tLampofAladdin_Text["SystemTips"]["BagFull"])
	end
	--是否许愿
	local nWishEvent=tLampofAladdin_Data["Stc"][5]["EventType"]
	local nWishType=tLampofAladdin_Data["Stc"][5]["DataType"]
	if Task_ChkStcValue(nWishEvent,nWishType,">",0) then
		--掩码置0
		Task_SetStatistic(nWishEvent,nWishType,0,1)
		Task_SetStcTimestamp(nWishEvent,nWishType,0)
		--获取奖励
		if RewardTemplate_UseItem(tLampofAladdin_Data["Wishes"][nIndex]) then
			return
		end 
	end 
end 

--打开神灯礼盒
function LampofAladdin_OpenLampBox(nItemId)
	--失效
	if LampofAladdin_OutofTime(nItemId) then 
		return
	end 
	-- 判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	--隔天清掩码
	local nOpenEvent=tLampofAladdin_Data["Stc"][1]["EventType"]
	local nOpenType=tLampofAladdin_Data["Stc"][1]["DataType"]
	if Task_StcInterval(nOpenEvent,nOpenType,1,4) then
		Task_SetStatistic(nOpenEvent,nOpenType,0,1)
		Task_SetStcTimestamp(nOpenEvent,nOpenType,0)
	end
	--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tLampofAladdin_Data[nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tLampofAladdin_Data[nItemId])
	local nNeedSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nNeedSpace) then
		return User_TalkChannel2005(tLampofAladdin_Text["LampBox"]["Full"])
	end
	--打开礼盒
	--已打开两次
	if Task_ChkStcValue(nOpenEvent,nOpenType,">=",2) then
		--每日领取上限提示
		return User_TalkChannel2005(tLampofAladdin_Text["SystemTips"]["TwiceOpen"])
	end
	if Task_ChkStcValue(nOpenEvent,nOpenType,"==",0) then
		Task_AddStatistic(nOpenEvent,nOpenType,1,1)
		Task_SetStcTimestamp(nOpenEvent,nOpenType,0)
		if RewardTemplate_UseItem(tLampofAladdin_Data[nItemId]) then
			return
		end 
	else
		local nStcTime = Get_UserStcTimestampValue(nOpenEvent,nOpenType)
		local nNowTime = os.time()
		local nLeftTime=math.ceil(30-((nNowTime - nStcTime)/60))
		if nLeftTime>0 then 
			return User_TalkChannel2005(tLampofAladdin_Text["LampBox"]["Time"])
		else
			Task_AddStatistic(nOpenEvent,nOpenType,1,1)
			Task_SetStcTimestamp(nOpenEvent,nOpenType,0)
			if RewardTemplate_UseItem(tLampofAladdin_Data[nItemId]) then
				return
			end 
		end
	end 
end 

--过期失效
function LampofAladdin_OutofTime(nItemId)
--礼包失效
	if CommonFunc_GetAfterActivityTime(tLampofAladdin_Data["ActTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId)  then 
			local nNum = Get_CountItemType(nItemId,0)
			local sItemName = Get_ItemtypeName(nItemId)
			local sText=string.format(tLampofAladdin_Text["SystemTips"]["TimeOut"],sItemName)
			local sLog=string.format(tLampofAladdin_Data["Log"]["DeleteLampBoxOverdue"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sLog)
			User_TalkChannel2005(sText)
			return true
		end 
	end 
	return false
end 

--使用赠品三星BeachSuit外套碎片
function LampofAladdin_UseCoatFragment(nItemId)
--物品判断
	if not Item_ChkItem(nItemId) then
		return false
	end 
--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tLampofAladdin_Data[nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tLampofAladdin_Data[nItemId])
	local nNeedSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nNeedSpace) then
		return User_TalkChannel2005(tLampofAladdin_Text[nItemId]["BagFull"])
	end
	if RewardTemplate_UseItem(tLampofAladdin_Data[nItemId]) then
		return 
	end 
end 

function LampofAladdin_KillMonster(nMonsterId)
	if not Sys_ChkFullTime(tLampofAladdin_Data["ActTime"]) then
		return
	end
	local nEvent = tLampofAladdin_Data["Stc"][6]["EventType"]
	local nData = tLampofAladdin_Data["Stc"][6]["DataType"]
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent,nData, 0, 1)
		Task_SetStcTimestamp(nEvent,nData, 0)
	end
	if Task_ChkStcValue(nEvent, nData, ">=",2) then
		if Task_ChkStcValue(nEvent, nData, "==", 2) then
			Task_AddStatistic(nEvent, nData, 1, 1)
			Task_SetStcTimestamp(nEvent, nData,0)
			Sys_MsgBox(tLampofAladdin_Text["SystemTips"]["MonsterKill"])
		end
		return
	end
	-- 概率掉落
	if not RewardTemplate_ChkRandomSpace(tLampofAladdin_Data["MonsterKill"], 1) then
		return User_TalkChannel2005(tLampofAladdin_Text["SystemTips"]["BagFull"])
	end
	local tReward = RewardTemplate_NewRandom(tLampofAladdin_Data["MonsterKill"], 1)
	local nSign = tReward[1]["tAward"][1]["Sign"]
	if nSign == 1  then
		Task_AddStatistic(nEvent, nData, 1, 1)
		Task_SetStcTimestamp(nEvent, nData,0)
	end
end 

--隔天清掩码
function LampofAladdin_ResetStc(nIndex)
	local nEvent=tLampofAladdin_Data["Stc"][nIndex]["EventType"]
	local nType=tLampofAladdin_Data["Stc"][nIndex]["DataType"]
	if Task_StcInterval(nEvent, nType, 1, 4) then
		Task_SetStatistic(nEvent,nType, 0, 1)
		Task_SetStcTimestamp(nEvent,nType, 0)
	 end
end 

--神灯寻路
function LampofAladdin_FindWay(nItemId)
	--失效
	if LampofAladdin_OutofTime(nItemId) then 
		return
	end 
	if not Item_ChkItem(nItemId) then 
		return
	end
	local nUserMapId =Get_UserMapId()
	if nUserMapId~=tLampofAladdin_Data[23165]["MapId"] then
		return User_TalkChannel2005(tLampofAladdin_Text["SystemTips"]["MapError"])
	end 
	local nPosX = tLampofAladdin_Data[23165]["PosX"] 
	local nPosY = tLampofAladdin_Data[23165]["PosY"]
	local nMapId = tLampofAladdin_Data[23165]["MapId"]
	local nTarget = tLampofAladdin_Data[23165]["NpcId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nTarget)
end 

----------------------------------NPC部分---------------------------------------------
tNpcFace[3407] = 5
tNpcGossip[23165]= tNpcGossip[23165] or DefaultNpc:new{}
tNpcGossip[23165]["OptionHidden"] = 1
tNpcGossip[23165]["DialogueText"] = tLampofAladdin_Text[23165]

--活动前对白
tNpcGossip[23165]["Text1-1"] = {111,112,113,114}
tNpcGossip[23165]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tLampofAladdin_Data["BeforeTime"])
end
tNpcGossip[23165]["tOption1-1"] = {1}
tNpcGossip[23165]["Option1"]=tLampofAladdin_Text[23165]["Option1"]

--活动后对白
tNpcGossip[23165]["Text1-2"] = {121}
tNpcGossip[23165]["ChkFunc1-2"]= function()
	return CommonFunc_GetAfterActivityTime(tLampofAladdin_Data["ActTime"])
end
tNpcGossip[23165]["tOption1-2"] = {2}
tNpcGossip[23165]["Option2"]=tLampofAladdin_Text[23165]["Option2"]

--活动中对白
tNpcGossip[23165]["Text1-3"] = {131,132,133,134,135,136,137}
tNpcGossip[23165]["ChkFunc1-3"]= function()
--判断活动时间
	if not Sys_ChkFullTime(tLampofAladdin_Data["ActTime"])  then
		return false
	else
		--隔天清掩码
		LampofAladdin_ResetStc(1)
		LampofAladdin_ResetStc(3)
		LampofAladdin_ResetStc(7)
		return true
	end 
end
tNpcGossip[23165]["tOption1-3"] = {3,4,5,6}
tNpcGossip[23165]["Option3"]=tLampofAladdin_Text[23165]["Option3"]
tNpcGossip[23165]["OptionChkFunc3"] = function ()
	if not LampofAladdin_JudgeLevel() then 
		return true
	else
		return false
	end 
end
tNpcGossip[23165]["Option4"]=tLampofAladdin_Text[23165]["Option4"]
tNpcGossip[23165]["OptionChkFunc4"] = function ()
	if LampofAladdin_JudgeLevel() then 
		local nWishEvent=tLampofAladdin_Data["Stc"][5]["EventType"]
		local nWishType=tLampofAladdin_Data["Stc"][5]["DataType"]
		local nUserType=LampofAladdin_GetUserType()
		if Task_ChkStcValue(nWishEvent,nWishType,"~=",0) then
			return false
		else
			local nEvent=tLampofAladdin_Data["Stc"][3]["EventType"]
			local nType=tLampofAladdin_Data["Stc"][3]["DataType"]
			local nWishNum= Get_UserStatisticValue(nEvent,nType)
			local nLeftNum=tLampofAladdin_Data["Stc"][3]["MaxData"][nUserType]-nWishNum
			tNpcGossip[23165]["Option4"]=string.format(tLampofAladdin_Text[23165]["Option4"],nLeftNum)
			return true
		end
	else
		return false
	end 
end
tNpcGossip[23165]["OptionFunc4"] = "LampofAladdin_ChkMakeWish</N>23165</N>3310565"

tNpcGossip[23165]["Option5"]=tLampofAladdin_Text[23165]["Option5"]
tNpcGossip[23165]["OptionChkFunc5"] = function ()
	if LampofAladdin_JudgeLevel() then 
		local nWishEvent=tLampofAladdin_Data["Stc"][5]["EventType"]
		local nWishType=tLampofAladdin_Data["Stc"][5]["DataType"]
		if Task_ChkStcValue(nWishEvent,nWishType,"==",0) then
			return false
		else
			return true
		end 
	else
		return false
	end 
end
tNpcGossip[23165]["OptionFunc5"] = "LampofAladdin_ChkGetReward</N>23165"

tNpcGossip[23165]["Option6"]=tLampofAladdin_Text[23165]["Option6"]
tNpcGossip[23165]["OptionChkFunc6"] = function ()
	if LampofAladdin_JudgeLevel() then 
		return true
	else
		return false
	end 
end
tNpcGossip[23165]["OptionPoint6"] = "2-1"

--许愿失败，没有许愿次数
tNpcGossip[23165]["Text1-4"] = {141}
tNpcGossip[23165]["ChkFunc1-4"]= function()
	return Sys_ChkFullTime(tLampofAladdin_Data["ActTime"])
end
tNpcGossip[23165]["tOption1-4"] = {7}
tNpcGossip[23165]["Option7"]=tLampofAladdin_Text[23165]["Option7"]

--许愿失败，玩家没有神灯
tNpcGossip[23165]["Text1-5"] = {151,152}
tNpcGossip[23165]["ChkFunc1-5"]= function()
	return Sys_ChkFullTime(tLampofAladdin_Data["ActTime"])
end
tNpcGossip[23165]["tOption1-5"] = {8}
tNpcGossip[23165]["Option8"]=tLampofAladdin_Text[23165]["Option8"]

--许愿成功
tNpcGossip[23165]["Text1-6"] = {161}
tNpcGossip[23165]["tOption1-6"] = {9,10,11,12,13,14,15,16}
tNpcGossip[23165]["Option9"]=tLampofAladdin_Text[23165]["Option9"]
tNpcGossip[23165]["OptionFunc9"] = "LampofAladdin_MakeWish</N>1</N>23165</N>3310565"
tNpcGossip[23165]["Option10"]=tLampofAladdin_Text[23165]["Option10"]
tNpcGossip[23165]["OptionFunc10"] = "LampofAladdin_MakeWish</N>2</N>23165</N>3310565"
tNpcGossip[23165]["Option11"]=tLampofAladdin_Text[23165]["Option11"]
tNpcGossip[23165]["OptionFunc11"] = "LampofAladdin_MakeWish</N>3</N>23165</N>3310565"
tNpcGossip[23165]["Option12"]=tLampofAladdin_Text[23165]["Option12"]
tNpcGossip[23165]["OptionFunc12"] = "LampofAladdin_MakeWish</N>4</N>23165</N>3310565"
tNpcGossip[23165]["Option13"]=tLampofAladdin_Text[23165]["Option13"]
tNpcGossip[23165]["OptionFunc13"] = "LampofAladdin_MakeWish</N>5</N>23165</N>3310565"
tNpcGossip[23165]["Option14"]=tLampofAladdin_Text[23165]["Option14"]
tNpcGossip[23165]["OptionFunc14"] = "LampofAladdin_MakeWish</N>6</N>23165</N>3310565"
tNpcGossip[23165]["Option15"]=tLampofAladdin_Text[23165]["Option15"]
tNpcGossip[23165]["OptionFunc15"] = "LampofAladdin_MakeWish</N>7</N>23165</N>3310565"
tNpcGossip[23165]["Option16"]=tLampofAladdin_Text[23165]["Option16"]
tNpcGossip[23165]["OptionFunc16"] = "LampofAladdin_MakeWish</N>8</N>23165</N>3310565"

--领取许愿宝物 时间未到
tNpcGossip[23165]["Text1-7"] = {171}
tNpcGossip[23165]["tOption1-7"] = {17}
tNpcGossip[23165]["Option17"]=tLampofAladdin_Text[23165]["Option17"]

--可领取·非最后1次许愿
tNpcGossip[23165]["Text1-8"] = {181}
tNpcGossip[23165]["tOption1-8"] = {18}
tNpcGossip[23165]["Option18"]=tLampofAladdin_Text[23165]["Option18"]

--可领取·最后1次许愿
tNpcGossip[23165]["Text1-9"] = {191}
tNpcGossip[23165]["tOption1-9"] = {19}
tNpcGossip[23165]["Option19"]=tLampofAladdin_Text[23165]["Option19"]

--许愿详情
tNpcGossip[23165]["Text2-1"] = {211,212,213,214,215,216,217}
tNpcGossip[23165]["tOption2-1"] = {20}
tNpcGossip[23165]["Option20"]=tLampofAladdin_Text[23165]["Option20"]
---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3310567] = tItem[3310567] or {}
tItem[3310567]["Function"] = function(nItemId,sItemName)
	LampofAladdin_OpenLampBox(nItemId)
end

tItem[3310568] = tItem[3310568] or {}
tItem[3310568]["Function"] = function(nItemId,sItemName)
	LampofAladdin_UseCoatFragment(nItemId)
end

tItem[3310565] = tItem[3310565] or {}
tItem[3310565]["Function"] = function(nItemId,sItemName)
	LampofAladdin_FindWay(nItemId)
end

---------------------------------怪物部分---------------------------------------------
local tLampofAladdin_KillMonster = {}
tLampofAladdin_KillMonster["ActivityTime"] = tLampofAladdin_Data["ActTime"]
tLampofAladdin_KillMonster["Function"] = LampofAladdin_KillMonster
tLampofAladdin_KillMonster["Area"] = {}
table.insert(tMonsterDrop_AreaLoad,tLampofAladdin_KillMonster)

---------------------------------上线自检---------------------------------------------
--上线触发
table.insert(tSystem_PlayLogin_Func,LampofAladdin_ChkLogin)
