------------------------------------------------------------------------------------
--Name：            190530[英文征服][活动脚本]6月勇士觉醒上线普天同庆活动制作6.17-7.16
--Creator:      蔡颖静
--Created:     2019/05/30
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--掩码:
--stc(197,55) 背包信掩码
--stc(197,56) 屏蔽二次确认掩码

--logid:12001447
--lua.ini:41325

----------------------------------表配置部分--------------------------------------------
local tCelebrationActivity_Data={}

tCelebrationActivity_Data["Level"]=80
tCelebrationActivity_Data["Mete"]=0

tCelebrationActivity_Data["Stc"]={}

tCelebrationActivity_Data["Stc"]["CheckEvent"]=197
tCelebrationActivity_Data["Stc"]["CheckType"]=56

tCelebrationActivity_Data["Cost"]={}
--幸运转盘
tCelebrationActivity_Data["Cost"][1]={}
tCelebrationActivity_Data["Cost"][1][1]= 29 --勇士
tCelebrationActivity_Data["Cost"][1][2]= 39 --非勇士

--超值转盘
tCelebrationActivity_Data["Cost"][2]={}
tCelebrationActivity_Data["Cost"][2][1]= 99 --勇士
tCelebrationActivity_Data["Cost"][2][2]= 139 --非勇士

--豪华转盘
tCelebrationActivity_Data["Cost"][3]={}
tCelebrationActivity_Data["Cost"][3][1]= 219 --勇士
tCelebrationActivity_Data["Cost"][3][2]= 299 --非勇士

tCelebrationActivity_Data["Wheel"]={}
--幸运转盘
tCelebrationActivity_Data["Wheel"][1]={}
tCelebrationActivity_Data["Wheel"][1][1]= 7043 --勇士
tCelebrationActivity_Data["Wheel"][1][2]= 7042 --非勇士

--超值转盘
tCelebrationActivity_Data["Wheel"][2]={}
tCelebrationActivity_Data["Wheel"][2][1]= 7045 --勇士
tCelebrationActivity_Data["Wheel"][2][2]= 7044 --非勇士

--豪华转盘
tCelebrationActivity_Data["Wheel"][3]={}
tCelebrationActivity_Data["Wheel"][3][1]= 7047 --勇士
tCelebrationActivity_Data["Wheel"][3][2]= 7046 --非勇士


--扣除赠点
-- tCelebrationActivity_Data["EMonoMoney"] = {}
-- tCelebrationActivity_Data["EMonoMoney"]["LogId"] = 12001447
-- tCelebrationActivity_Data["EMonoMoney"]["RewardEMoneyMono"] = {}
-- tCelebrationActivity_Data["EMonoMoney"]["RewardEMoneyMono"]["Value"] = 0
-- tCelebrationActivity_Data["EMonoMoney"]["RewardEffect"] = {}
-- tCelebrationActivity_Data["EMonoMoney"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
-- tCelebrationActivity_Data["EMonoMoney"]["RewardEffect"]["Effect"] = "angelwing"
-- tCelebrationActivity_Data["EMonoMoney"]["EmoneyLog"] = "10000	0473	0	0	%d	"
-- tCelebrationActivity_Data["EMonoMoney"]["RewardNoNeedTip"] = 1 

--礼包配置

	-- ===3颗微光星陨石礼包
tCelebrationActivity_Data[3321842] = {}
tCelebrationActivity_Data[3321842]["LogId"] = 12001447
tCelebrationActivity_Data[3321842]["DeleteItem"] = {}
tCelebrationActivity_Data[3321842]["DeleteItem"][1]={}
tCelebrationActivity_Data[3321842]["DeleteItem"][1]["Id"]=3321842
tCelebrationActivity_Data[3321842]["RewardItem"] = {}
tCelebrationActivity_Data[3321842]["RewardItem"][1] = {}
tCelebrationActivity_Data[3321842]["RewardItem"][1]["Id"] = 3009000
tCelebrationActivity_Data[3321842]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
tCelebrationActivity_Data[3321842]["RewardEffect"] = {}
tCelebrationActivity_Data[3321842]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCelebrationActivity_Data[3321842]["RewardEffect"]["Effect"] = "angelwing"
	-- ===流星卷小礼包
tCelebrationActivity_Data[3321843] = {}
tCelebrationActivity_Data[3321843]["LogId"] = 12001447
tCelebrationActivity_Data[3321843]["DeleteItem"] = {}
tCelebrationActivity_Data[3321843]["DeleteItem"][1]={}
tCelebrationActivity_Data[3321843]["DeleteItem"][1]["Id"]=3321843
tCelebrationActivity_Data[3321843]["RewardItem"] = {}
tCelebrationActivity_Data[3321843]["RewardItem"][1] = {}
tCelebrationActivity_Data[3321843]["RewardItem"][1]["Id"] = 3301827
tCelebrationActivity_Data[3321843]["RewardItem"][1]["Attr"] = "0 2"
tCelebrationActivity_Data[3321843]["RewardEffect"] = {}
tCelebrationActivity_Data[3321843]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCelebrationActivity_Data[3321843]["RewardEffect"]["Effect"] = "angelwing"

	-- ===200修行值礼包
tCelebrationActivity_Data[3321844] = {}
tCelebrationActivity_Data[3321844]["LogId"] = 12001447
tCelebrationActivity_Data[3321844]["DeleteItem"] = {}
tCelebrationActivity_Data[3321844]["DeleteItem"][1]={}
tCelebrationActivity_Data[3321844]["DeleteItem"][1]["Id"]=3321844
tCelebrationActivity_Data[3321844]["RewardCultivation"] = {}
tCelebrationActivity_Data[3321844]["RewardCultivation"]["Value"] = 200
tCelebrationActivity_Data[3321844]["RewardEffect"] = {}
tCelebrationActivity_Data[3321844]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCelebrationActivity_Data[3321844]["RewardEffect"]["Effect"] = "angelwing"

	-- ===200气力值礼包
tCelebrationActivity_Data[3321845] = {}
tCelebrationActivity_Data[3321845]["LogId"] = 12001447
tCelebrationActivity_Data[3321845]["DeleteItem"] = {}
tCelebrationActivity_Data[3321845]["DeleteItem"][1]={}
tCelebrationActivity_Data[3321845]["DeleteItem"][1]["Id"]=3321845
tCelebrationActivity_Data[3321845]["RewardStrengthValue"] = {}
tCelebrationActivity_Data[3321845]["RewardStrengthValue"]["Value"] = 200
tCelebrationActivity_Data[3321845]["RewardEffect"] = {}
tCelebrationActivity_Data[3321845]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCelebrationActivity_Data[3321845]["RewardEffect"]["Effect"] = "angelwing"

	-- ===+3赤炼石（赠）礼包
tCelebrationActivity_Data[3321846] = {}
tCelebrationActivity_Data[3321846]["LogId"] = 12001447
tCelebrationActivity_Data[3321846]["DeleteItem"] = {}
tCelebrationActivity_Data[3321846]["DeleteItem"][1]={}
tCelebrationActivity_Data[3321846]["DeleteItem"][1]["Id"]=3321846
tCelebrationActivity_Data[3321846]["RewardItem"] = {}
tCelebrationActivity_Data[3321846]["RewardItem"][1] = {}
tCelebrationActivity_Data[3321846]["RewardItem"][1]["Id"] = 730003
tCelebrationActivity_Data[3321846]["RewardItem"][1]["Attr"] = "0 1 3"
tCelebrationActivity_Data[3321846]["RewardEffect"] = {}
tCelebrationActivity_Data[3321846]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCelebrationActivity_Data[3321846]["RewardEffect"]["Effect"] = "angelwing"

	-- ===龙珠（赠）礼包
tCelebrationActivity_Data[3321847] = {}
tCelebrationActivity_Data[3321847]["LogId"] = 12001447
tCelebrationActivity_Data[3321847]["DeleteItem"] = {}
tCelebrationActivity_Data[3321847]["DeleteItem"][1]={}
tCelebrationActivity_Data[3321847]["DeleteItem"][1]["Id"]=3321847
tCelebrationActivity_Data[3321847]["RewardItem"] = {}
tCelebrationActivity_Data[3321847]["RewardItem"][1] = {}
tCelebrationActivity_Data[3321847]["RewardItem"][1]["Id"] = 1088000
tCelebrationActivity_Data[3321847]["RewardItem"][1]["Attr"] = "0 1 3"
tCelebrationActivity_Data[3321847]["RewardEffect"] = {}
tCelebrationActivity_Data[3321847]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCelebrationActivity_Data[3321847]["RewardEffect"]["Effect"] = "angelwing"

	-- ===黄色神纹精粹小礼包
tCelebrationActivity_Data[3321848] = {}
tCelebrationActivity_Data[3321848]["LogId"] = 12001447
tCelebrationActivity_Data[3321848]["DeleteItem"] = {}
tCelebrationActivity_Data[3321848]["DeleteItem"][1]={}
tCelebrationActivity_Data[3321848]["DeleteItem"][1]["Id"]=3321848
tCelebrationActivity_Data[3321848]["RewardItem"] = {}
tCelebrationActivity_Data[3321848]["RewardItem"][1] = {}
tCelebrationActivity_Data[3321848]["RewardItem"][1]["Id"] = 4050001
tCelebrationActivity_Data[3321848]["RewardItem"][1]["Attr"] = "0 5 3"
tCelebrationActivity_Data[3321848]["RewardEffect"] = {}
tCelebrationActivity_Data[3321848]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCelebrationActivity_Data[3321848]["RewardEffect"]["Effect"] = "angelwing"

	-- ===500修行值礼包
tCelebrationActivity_Data[3321849] = {}
tCelebrationActivity_Data[3321849]["LogId"] = 12001447
tCelebrationActivity_Data[3321849]["DeleteItem"] = {}
tCelebrationActivity_Data[3321849]["DeleteItem"][1]={}
tCelebrationActivity_Data[3321849]["DeleteItem"][1]["Id"]=3321849
tCelebrationActivity_Data[3321849]["RewardCultivation"] = {}
tCelebrationActivity_Data[3321849]["RewardCultivation"]["Value"] = 500
tCelebrationActivity_Data[3321849]["RewardEffect"] = {}
tCelebrationActivity_Data[3321849]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCelebrationActivity_Data[3321849]["RewardEffect"]["Effect"] = "angelwing"

	-- ===2颗明亮星陨石礼包
tCelebrationActivity_Data[3321850] = {}
tCelebrationActivity_Data[3321850]["LogId"] = 12001447
tCelebrationActivity_Data[3321850]["DeleteItem"] = {}
tCelebrationActivity_Data[3321850]["DeleteItem"][1]={}
tCelebrationActivity_Data[3321850]["DeleteItem"][1]["Id"]=3321850
tCelebrationActivity_Data[3321850]["RewardItem"] = {}
tCelebrationActivity_Data[3321850]["RewardItem"][1] = {}
tCelebrationActivity_Data[3321850]["RewardItem"][1]["Id"] = 3009001
tCelebrationActivity_Data[3321850]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
tCelebrationActivity_Data[3321850]["RewardEffect"] = {}
tCelebrationActivity_Data[3321850]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCelebrationActivity_Data[3321850]["RewardEffect"]["Effect"] = "angelwing"

	-- ===+3赤炼石（赠）精装包
tCelebrationActivity_Data[3321851] = {}
tCelebrationActivity_Data[3321851]["LogId"] = 12001447
tCelebrationActivity_Data[3321851]["DeleteItem"] = {}
tCelebrationActivity_Data[3321851]["DeleteItem"][1]={}
tCelebrationActivity_Data[3321851]["DeleteItem"][1]["Id"]=3321851
tCelebrationActivity_Data[3321851]["RewardItem"] = {}
tCelebrationActivity_Data[3321851]["RewardItem"][1] = {}
tCelebrationActivity_Data[3321851]["RewardItem"][1]["Id"] = 730003
tCelebrationActivity_Data[3321851]["RewardItem"][1]["Attr"] = "0 2 3"
tCelebrationActivity_Data[3321851]["RewardEffect"] = {}
tCelebrationActivity_Data[3321851]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCelebrationActivity_Data[3321851]["RewardEffect"]["Effect"] = "angelwing"

	-- ===龙珠（赠）精装包
tCelebrationActivity_Data[3321852] = {}
tCelebrationActivity_Data[3321852]["LogId"] = 12001447
tCelebrationActivity_Data[3321852]["DeleteItem"] = {}
tCelebrationActivity_Data[3321852]["DeleteItem"][1]={}
tCelebrationActivity_Data[3321852]["DeleteItem"][1]["Id"]=3321852
tCelebrationActivity_Data[3321852]["RewardItem"] = {}
tCelebrationActivity_Data[3321852]["RewardItem"][1] = {}
tCelebrationActivity_Data[3321852]["RewardItem"][1]["Id"] = 1088000
tCelebrationActivity_Data[3321852]["RewardItem"][1]["Attr"] = "0 2 3"
tCelebrationActivity_Data[3321852]["RewardEffect"] = {}
tCelebrationActivity_Data[3321852]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCelebrationActivity_Data[3321852]["RewardEffect"]["Effect"] = "angelwing"

	-- ===5颗强效护心丹礼包
tCelebrationActivity_Data[3321853] = {}
tCelebrationActivity_Data[3321853]["LogId"] = 12001447
tCelebrationActivity_Data[3321853]["DeleteItem"] = {}
tCelebrationActivity_Data[3321853]["DeleteItem"][1]={}
tCelebrationActivity_Data[3321853]["DeleteItem"][1]["Id"]=3321853
tCelebrationActivity_Data[3321853]["RewardItem"] = {}
tCelebrationActivity_Data[3321853]["RewardItem"][1] = {}
tCelebrationActivity_Data[3321853]["RewardItem"][1]["Id"] = 3002030
tCelebrationActivity_Data[3321853]["RewardItem"][1]["Attr"] = "0 5"
tCelebrationActivity_Data[3321853]["RewardEffect"] = {}
tCelebrationActivity_Data[3321853]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCelebrationActivity_Data[3321853]["RewardEffect"]["Effect"] = "angelwing"

	-- ===5颗究极通神丹礼包
tCelebrationActivity_Data[3321854] = {}
tCelebrationActivity_Data[3321854]["LogId"] = 12001447
tCelebrationActivity_Data[3321854]["DeleteItem"] = {}
tCelebrationActivity_Data[3321854]["DeleteItem"][1]={}
tCelebrationActivity_Data[3321854]["DeleteItem"][1]["Id"]=3321854
tCelebrationActivity_Data[3321854]["RewardItem"] = {}
tCelebrationActivity_Data[3321854]["RewardItem"][1] = {}
tCelebrationActivity_Data[3321854]["RewardItem"][1]["Id"] = 3003126
tCelebrationActivity_Data[3321854]["RewardItem"][1]["Attr"] = "0 5 3"
tCelebrationActivity_Data[3321854]["RewardEffect"] = {}
tCelebrationActivity_Data[3321854]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCelebrationActivity_Data[3321854]["RewardEffect"]["Effect"] = "angelwing"

	-- ===300天石（赠）礼包
tCelebrationActivity_Data[3321855] = {}
tCelebrationActivity_Data[3321855]["LogId"] = 12001447
tCelebrationActivity_Data[3321855]["DeleteItem"] = {}
tCelebrationActivity_Data[3321855]["DeleteItem"][1]={}
tCelebrationActivity_Data[3321855]["DeleteItem"][1]["Id"]=3321855
tCelebrationActivity_Data[3321855]["RewardEMoneyMono"] = {}
tCelebrationActivity_Data[3321855]["RewardEMoneyMono"]["Value"] = 300
tCelebrationActivity_Data[3321855]["EmoneyLog"] = "350	22284	0	0	-300	"
tCelebrationActivity_Data[3321855]["RewardEffect"] = {}
tCelebrationActivity_Data[3321855]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCelebrationActivity_Data[3321855]["RewardEffect"]["Effect"] = "angelwing"

	-- ===1500气力值礼包
tCelebrationActivity_Data[3321856] = {}
tCelebrationActivity_Data[3321856]["LogId"] = 12001447
tCelebrationActivity_Data[3321856]["DeleteItem"] = {}
tCelebrationActivity_Data[3321856]["DeleteItem"][1]={}
tCelebrationActivity_Data[3321856]["DeleteItem"][1]["Id"]=3321856
tCelebrationActivity_Data[3321856]["RewardStrengthValue"] = {}
tCelebrationActivity_Data[3321856]["RewardStrengthValue"]["Value"] = 1500
tCelebrationActivity_Data[3321856]["RewardEffect"] = {}
tCelebrationActivity_Data[3321856]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCelebrationActivity_Data[3321856]["RewardEffect"]["Effect"] = "angelwing"

	-- ===1000修为值礼包
tCelebrationActivity_Data[3321857] = {}
tCelebrationActivity_Data[3321857]["LogId"] = 12001447
tCelebrationActivity_Data[3321857]["DeleteItem"] = {}
tCelebrationActivity_Data[3321857]["DeleteItem"][1]={}
tCelebrationActivity_Data[3321857]["DeleteItem"][1]["Id"]=3321857
tCelebrationActivity_Data[3321857]["RewardRepairValue"] = {}
tCelebrationActivity_Data[3321857]["RewardRepairValue"]["Value"] = 1000
tCelebrationActivity_Data[3321857]["RewardEffect"] = {}
tCelebrationActivity_Data[3321857]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCelebrationActivity_Data[3321857]["RewardEffect"]["Effect"] = "angelwing"

	-- ===黄色神纹精粹精装包
tCelebrationActivity_Data[3321858] = {}
tCelebrationActivity_Data[3321858]["LogId"] = 12001447
tCelebrationActivity_Data[3321858]["DeleteItem"] = {}
tCelebrationActivity_Data[3321858]["DeleteItem"][1]={}
tCelebrationActivity_Data[3321858]["DeleteItem"][1]["Id"]=3321858
tCelebrationActivity_Data[3321858]["RewardItem"] = {}
tCelebrationActivity_Data[3321858]["RewardItem"][1] = {}
tCelebrationActivity_Data[3321858]["RewardItem"][1]["Id"] = 4050001
tCelebrationActivity_Data[3321858]["RewardItem"][1]["Attr"] = "0 20 3"
tCelebrationActivity_Data[3321858]["RewardEffect"] = {}
tCelebrationActivity_Data[3321858]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCelebrationActivity_Data[3321858]["RewardEffect"]["Effect"] = "angelwing"

	-- ===5颗人参果礼包
tCelebrationActivity_Data[3321859] = {}
tCelebrationActivity_Data[3321859]["LogId"] = 12001447
tCelebrationActivity_Data[3321859]["DeleteItem"] = {}
tCelebrationActivity_Data[3321859]["DeleteItem"][1]={}
tCelebrationActivity_Data[3321859]["DeleteItem"][1]["Id"]=3321859
tCelebrationActivity_Data[3321859]["RewardItem"] = {}
tCelebrationActivity_Data[3321859]["RewardItem"][1] = {}
tCelebrationActivity_Data[3321859]["RewardItem"][1]["Id"] = 3009100
tCelebrationActivity_Data[3321859]["RewardItem"][1]["Attr"] = "0 5"
tCelebrationActivity_Data[3321859]["RewardEffect"] = {}
tCelebrationActivity_Data[3321859]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCelebrationActivity_Data[3321859]["RewardEffect"]["Effect"] = "angelwing"

	-- ===+4赤炼石（赠）礼包
tCelebrationActivity_Data[3321860] = {}
tCelebrationActivity_Data[3321860]["LogId"] = 12001447
tCelebrationActivity_Data[3321860]["DeleteItem"] = {}
tCelebrationActivity_Data[3321860]["DeleteItem"][1]={}
tCelebrationActivity_Data[3321860]["DeleteItem"][1]["Id"]=3321860
tCelebrationActivity_Data[3321860]["RewardItem"] = {}
tCelebrationActivity_Data[3321860]["RewardItem"][1] = {}
tCelebrationActivity_Data[3321860]["RewardItem"][1]["Id"] = 730004
tCelebrationActivity_Data[3321860]["RewardItem"][1]["Attr"] = "0 1 3"
tCelebrationActivity_Data[3321860]["RewardEffect"] = {}
tCelebrationActivity_Data[3321860]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCelebrationActivity_Data[3321860]["RewardEffect"]["Effect"] = "angelwing"

	-- ===5颗明亮星陨石礼包
tCelebrationActivity_Data[3321861] = {}
tCelebrationActivity_Data[3321861]["LogId"] = 12001447
tCelebrationActivity_Data[3321861]["DeleteItem"] = {}
tCelebrationActivity_Data[3321861]["DeleteItem"][1]={}
tCelebrationActivity_Data[3321861]["DeleteItem"][1]["Id"]=3321861
tCelebrationActivity_Data[3321861]["RewardItem"] = {}
tCelebrationActivity_Data[3321861]["RewardItem"][1] = {}
tCelebrationActivity_Data[3321861]["RewardItem"][1]["Id"] = 3009001
tCelebrationActivity_Data[3321861]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
tCelebrationActivity_Data[3321861]["RewardEffect"] = {}
tCelebrationActivity_Data[3321861]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCelebrationActivity_Data[3321861]["RewardEffect"]["Effect"] = "angelwing"

	-- ===1000天石（赠）礼包
tCelebrationActivity_Data[3321862] = {}
tCelebrationActivity_Data[3321862]["LogId"] = 12001447
tCelebrationActivity_Data[3321862]["DeleteItem"] = {}
tCelebrationActivity_Data[3321862]["DeleteItem"][1]={}
tCelebrationActivity_Data[3321862]["DeleteItem"][1]["Id"]=3321862
tCelebrationActivity_Data[3321862]["RewardEMoneyMono"] = {}
tCelebrationActivity_Data[3321862]["RewardEMoneyMono"]["Value"] = 1000
tCelebrationActivity_Data[3321862]["EmoneyLog"] = "350	22285	0	0	-1000	"
tCelebrationActivity_Data[3321862]["RewardEffect"] = {}
tCelebrationActivity_Data[3321862]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tCelebrationActivity_Data[3321862]["RewardEffect"]["Effect"] = "angelwing"
----------------------------------逻辑部分---------------------------------------------
--职业判断
function CelebrationActivity_ProJudge()
	 --判断职业
	 local nProfession = Get_UserProfession()
	 local nIndex=0
	if (nProfession>=G_PRO_Trojan0 and nProfession<=G_PRO_Trojan5) then 
		nIndex=1 --勇士
	else
		nIndex=2 --其他职业
	end 
	return nIndex
end

--二次确认
function CelebrationActivity_WheelCheck(nWheel)
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["CelebrationActivity"]["ActTime"])  then
		return
	end

	--时间段判断
	if (not Sys_ChkDayTime(tActivityTime["CelebrationActivity"]["DayTime"][1])) and 
		(not Sys_ChkDayTime(tActivityTime["CelebrationActivity"]["DayTime"][2])) and 
		(not Sys_ChkDayTime(tActivityTime["CelebrationActivity"]["DayTime"][3])) then 
		--提示
		Sys_MsgBox(tCelebrationActivity_Text["Systemtip"]["Time"])
		return 
	end 
	
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(tCelebrationActivity_Data["Level"],tCelebrationActivity_Data["Mete"]) then
		return 
	end
	
	local nPro=CelebrationActivity_ProJudge()
	local nCost=tCelebrationActivity_Data["Cost"][nWheel][nPro]
	
	--赠点判断
	-- if Get_UserMonoEMoney() < nCost then
		-- return Sys_MsgBox(tCelebrationActivity_Text["Systemtip"]["Emoney"])
	-- end 
	
	
	--是否屏蔽二次确认
	local nCheckEvent=tCelebrationActivity_Data["Stc"]["CheckEvent"]
	local nCheckType=tCelebrationActivity_Data["Stc"]["CheckType"]
	
	--已屏蔽，直接接转盘函数
	if Task_ChkStcValue(nCheckEvent,nCheckType,">=",1) then
		CelebrationActivity_Wheel(nWheel,nPro,nCost)
		return 
	end 
		
	if nWheel==1 then
		tNpcGossip[24306]["Text211"]=string.format(tCelebrationActivity_Text[24306]["Text211"],nCost)
		tNpcGossip[24306]["OptionFunc211"]="CelebrationActivity_Wheel</N>" .. nWheel .. "</N>" .. nPro .. "</N>" .. nCost
		tNpcGossip[24306]["OptionPoint212"] = "4-1"
		
		return LinkNpcGossipFunc_New(24306,"2-1")
	end 
	
	if nWheel==2 then
		tNpcGossip[24306]["Text221"]=string.format(tCelebrationActivity_Text[24306]["Text221"],nCost)
		tNpcGossip[24306]["OptionFunc221"]="CelebrationActivity_Wheel</N>" .. nWheel .. "</N>" .. nPro .. "</N>" .. nCost
		tNpcGossip[24306]["OptionPoint222"] = "4-1"
		
		return LinkNpcGossipFunc_New(24306,"2-2")
	end 
	
	if nWheel==3 then
		tNpcGossip[24306]["Text231"]=string.format(tCelebrationActivity_Text[24306]["Text231"],nCost)
		tNpcGossip[24306]["OptionFunc231"]="CelebrationActivity_Wheel</N>" .. nWheel .. "</N>" .. nPro .. "</N>" .. nCost
		tNpcGossip[24306]["OptionPoint232"] = "4-1"
		
		return LinkNpcGossipFunc_New(24306,"2-3")
	end 

end

--转动轮盘
function CelebrationActivity_Wheel(nWheel,nPro,nCost)
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["CelebrationActivity"]["ActTime"])  then
		return
	end

	--时间段判断
	if (not Sys_ChkDayTime(tActivityTime["CelebrationActivity"]["DayTime"][1])) and 
		(not Sys_ChkDayTime(tActivityTime["CelebrationActivity"]["DayTime"][2])) and 
		(not Sys_ChkDayTime(tActivityTime["CelebrationActivity"]["DayTime"][3])) then 
		--提示
		Sys_MsgBox(tCelebrationActivity_Text["Systemtip"]["Time"])
		return 
	end 
	
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(tCelebrationActivity_Data["Level"],tCelebrationActivity_Data["Mete"]) then
		return 
	end

	--赠点判断
	-- if Get_UserMonoEMoney() < nCost then
		-- return Sys_MsgBox(tCelebrationActivity_Text["Systemtip"]["Emoney"])
	-- end 
	
	local nWheelId=tCelebrationActivity_Data["Wheel"][nWheel][nPro]
	--转动轮盘
	RouletteMould_Main(nWheelId)
	
end

--屏蔽二次确认
function CelebrationActivity_NoCheck()

	--是否屏蔽二次确认
	local nCheckEvent=tCelebrationActivity_Data["Stc"]["CheckEvent"]
	local nCheckType=tCelebrationActivity_Data["Stc"]["CheckType"]
	
	--已屏蔽
	if Task_ChkStcValue(nCheckEvent,nCheckType,">=",1) then
		return 
	end 
	
	Task_AddStatistic(nCheckEvent,nCheckType,1,1)
	Task_SetStcTimestamp(nCheckEvent,nCheckType,0)
end 

--上线自检清掩码
function CelebrationActivity_Login()
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["CelebrationActivity"]["ActTime"])  then
		return
	end
	local nCheckEvent=tCelebrationActivity_Data["Stc"]["CheckEvent"]
	local nCheckType=tCelebrationActivity_Data["Stc"]["CheckType"]
	
	Task_SetStatistic(nCheckEvent,nCheckType,0,1)
	Task_SetStcTimestamp(nCheckEvent,nCheckType,0)
end 


--寻路到npc处
function CelebrationActivity_FindNpc(nNpcID)
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["CelebrationActivity"]["ActTime"])  then
		return
	end
	
	--若玩家在双龙城，则自动寻路找NPC
	if Get_UserMapId() == 1002 then
		NpcPosition_PathFind(nNpcID)
	else
		User_TalkChannel2005(tCelebrationActivity_Text["Systemtip"]["NotMap"])
	end
end

----------------------------------NPC部分---------------------------------------------
tNpcFace[6070] = 13
tNpcGossip[24306]= tNpcGossip[24306] or DefaultNpc:new{}
tNpcGossip[24306]["OptionHidden"] = 1
tNpcGossip[24306]["DialogueText"] = tCelebrationActivity_Text[24306]

--活动前
tNpcGossip[24306]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[24306]["tOption1-1"] = {111}
tNpcGossip[24306]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["CelebrationActivity"]["ActTime"])
end

--活动后
tNpcGossip[24306]["Text1-2"] = {121}
tNpcGossip[24306]["tOption1-2"] = {121}
tNpcGossip[24306]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["CelebrationActivity"]["ActTime"])
end

--活动中
tNpcGossip[24306]["Text1-3"] = {131,132,133,134,135,136,137,138}
tNpcGossip[24306]["tOption1-3"] = {131,132,133,134}
tNpcGossip[24306]["ChkFunc1-3"]= function()
	--判断活动时间
	if not Sys_ChkFullTime(tActivityTime["CelebrationActivity"]["ActTime"])  then
		return false
	else
		--判断等级
		if not User_JudgeLevelAndMetempsychosis(tCelebrationActivity_Data["Level"],tCelebrationActivity_Data["Mete"]) then
			tNpcGossip[24306]["Text135"]=tCelebrationActivity_Text[24306]["Text135"]
		else
			tNpcGossip[24306]["Text135"]=" "
		end
		return true
	end 
end 

tNpcGossip[24306]["OptionChkFunc131"] = function ()
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(tCelebrationActivity_Data["Level"],tCelebrationActivity_Data["Mete"]) then
		return true
	else
		return false
	end 
end 

tNpcGossip[24306]["OptionChkFunc132"] = function ()
	--等级判断
	if User_JudgeLevelAndMetempsychosis(tCelebrationActivity_Data["Level"],tCelebrationActivity_Data["Mete"]) then
		local nPro=CelebrationActivity_ProJudge()
		local nCost=tCelebrationActivity_Data["Cost"][1][nPro]
		tNpcGossip[24306]["Option132"]= string.format(tCelebrationActivity_Text[24306]["Option132"],nCost)
		return true
	else
		return false
	end 
end 

tNpcGossip[24306]["OptionChkFunc133"] = function ()
	--等级判断
	if User_JudgeLevelAndMetempsychosis(tCelebrationActivity_Data["Level"],tCelebrationActivity_Data["Mete"]) then
		local nPro=CelebrationActivity_ProJudge()
		local nCost=tCelebrationActivity_Data["Cost"][2][nPro]
		tNpcGossip[24306]["Option133"]= string.format(tCelebrationActivity_Text[24306]["Option133"],nCost)
		return true
	else
		return false
	end 
end 

tNpcGossip[24306]["OptionChkFunc134"] = function ()
	--等级判断
	if User_JudgeLevelAndMetempsychosis(tCelebrationActivity_Data["Level"],tCelebrationActivity_Data["Mete"]) then
		local nPro=CelebrationActivity_ProJudge()
		local nCost=tCelebrationActivity_Data["Cost"][3][nPro]
		tNpcGossip[24306]["Option134"]= string.format(tCelebrationActivity_Text[24306]["Option134"],nCost)
		return true
	else
		return false
	end 
end 

tNpcGossip[24306]["OptionFunc132"] = "CelebrationActivity_WheelCheck</N>1"
tNpcGossip[24306]["OptionFunc133"] = "CelebrationActivity_WheelCheck</N>2"
tNpcGossip[24306]["OptionFunc134"] = "CelebrationActivity_WheelCheck</N>3"

--二次确认
--幸运转盘
tNpcGossip[24306]["Text2-1"] = {211,212}
tNpcGossip[24306]["tOption2-1"] = {211,212}
--超值转盘
tNpcGossip[24306]["Text2-2"] = {221,222}
tNpcGossip[24306]["tOption2-2"] = {221,222}
--豪华转盘
tNpcGossip[24306]["Text2-3"] = {231,232}
tNpcGossip[24306]["tOption2-3"] = {231,232}

--转动成功
tNpcGossip[24306]["Text3-1"] = {311}
tNpcGossip[24306]["tOption3-1"] = {311,312}

--屏蔽二次确认
tNpcGossip[24306]["Text4-1"] = {411}
tNpcGossip[24306]["tOption4-1"] = {411,412}
tNpcGossip[24306]["OptionFunc411"] = "CelebrationActivity_NoCheck"
---------------------------------物品部分---------------------------------------------
tItem[3321842] = tItem[3321842] or {}
tItem[3321842]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tCelebrationActivity_Data[nItemId])
	
	if not bJudge then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tCelebrationActivity_Data[nItemId],nUserId,bJudge)
end
tItem[3321843] = tItem[3321842]
tItem[3321844] = tItem[3321842]
tItem[3321845] = tItem[3321842]
tItem[3321846] = tItem[3321842]
tItem[3321847] = tItem[3321842]
tItem[3321848] = tItem[3321842]
tItem[3321849] = tItem[3321842]
tItem[3321850] = tItem[3321842]
tItem[3321851] = tItem[3321842]
tItem[3321852] = tItem[3321842]
tItem[3321853] = tItem[3321842]
tItem[3321854] = tItem[3321842]
tItem[3321855] = tItem[3321842]
tItem[3321856] = tItem[3321842]
tItem[3321857] = tItem[3321842]
tItem[3321858] = tItem[3321842]
tItem[3321859] = tItem[3321842]
tItem[3321860] = tItem[3321842]
tItem[3321861] = tItem[3321842]
tItem[3321862] = tItem[3321842]


-- 动态存储表清零
tGlobalData_Info[53424] = {}
tGlobalData_Info[53424]["Time"] = {}
tGlobalData_Info[53424]["Time"]["ClearTime"] = {}
tGlobalData_Info[53424]["Time"]["ClearTime"][1] = "00:00 00:01"
tGlobalData_Info[53424]["Rest"] = {}
tGlobalData_Info[53424]["Rest"]["GlobalId"] = {53424}
tGlobalData_Info[53424]["Rest"]["Pos"] = {1,3}

tGlobalData_Info[53425] = {}
tGlobalData_Info[53425]["Time"] = {}
tGlobalData_Info[53425]["Time"]["ClearTime"] = {}
tGlobalData_Info[53425]["Time"]["ClearTime"][1] = "00:00 00:01"
tGlobalData_Info[53425]["Rest"] = {}
tGlobalData_Info[53425]["Rest"]["GlobalId"] = {53425}
tGlobalData_Info[53425]["Rest"]["Pos"] = {1,3}

--------------------------------上线自检---------------------------------------------
table.insert(tSystem_PlayLogin_Func,CelebrationActivity_Login)
