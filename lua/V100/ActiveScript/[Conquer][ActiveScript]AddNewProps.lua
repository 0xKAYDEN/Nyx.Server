------------------------------------------------------------------------------------
--Name:			170921[英文征服][活动脚本]十月锦德州新增道具
--Creator:		洪聪敏
--Created:		2017-09-21
------------------------------------------------------------------------------------
--logid:12000883
--luaini:40684
--命名前缀:AddNewProps
--taskid:6838
--stc掩码：(167 38)
------------------------------------------------------------------------------------
--常量
local tAddNewProps_Cont = {}
-- 轮盘任务ID
	tAddNewProps_Cont["Task_LP"] = 6838
-- 轮盘抽奖背包空间
	tAddNewProps_Cont["Space"] = 1

--扑克币碎片X
local tAddNewProps_Reward={}
--2个
	tAddNewProps_Reward[3305485]={}
	tAddNewProps_Reward[3305485]["DeleteItem"] = {}
	tAddNewProps_Reward[3305485]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3305485]["DeleteItem"][1]["Id"] = 3305485
	tAddNewProps_Reward[3305485]["RewardItem"] = {}
	tAddNewProps_Reward[3305485]["RewardItem"][1] = {}
	tAddNewProps_Reward[3305485]["RewardItem"][1]["Id"] = 3305484 
	tAddNewProps_Reward[3305485]["RewardItem"][1]["Attr"] = "0 2"
	tAddNewProps_Reward[3305485]["LogId"] = 12000883
--3个
	tAddNewProps_Reward[3305486]={}
	tAddNewProps_Reward[3305486]["DeleteItem"] = {}
	tAddNewProps_Reward[3305486]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3305486]["DeleteItem"][1]["Id"] = 3305486
	tAddNewProps_Reward[3305486]["RewardItem"] = {}
	tAddNewProps_Reward[3305486]["RewardItem"][1] = {}
	tAddNewProps_Reward[3305486]["RewardItem"][1]["Id"] = 3305484 
	tAddNewProps_Reward[3305486]["RewardItem"][1]["Attr"] = "0 3"
	tAddNewProps_Reward[3305486]["LogId"] = 12000883
--4个
	tAddNewProps_Reward[3305487]={}
	tAddNewProps_Reward[3305487]["DeleteItem"] = {}
	tAddNewProps_Reward[3305487]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3305487]["DeleteItem"][1]["Id"] = 3305487
	tAddNewProps_Reward[3305487]["RewardItem"] = {}
	tAddNewProps_Reward[3305487]["RewardItem"][1] = {}
	tAddNewProps_Reward[3305487]["RewardItem"][1]["Id"] = 3305484
	tAddNewProps_Reward[3305487]["RewardItem"][1]["Attr"] = "0 4"
	tAddNewProps_Reward[3305487]["LogId"] = 12000883
--5个
	tAddNewProps_Reward[3305488]={}
	tAddNewProps_Reward[3305488]["DeleteItem"] = {}
	tAddNewProps_Reward[3305488]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3305488]["DeleteItem"][1]["Id"] = 3305488
	tAddNewProps_Reward[3305488]["RewardItem"] = {}
	tAddNewProps_Reward[3305488]["RewardItem"][1] = {}
	tAddNewProps_Reward[3305488]["RewardItem"][1]["Id"] = 3305484
	tAddNewProps_Reward[3305488]["RewardItem"][1]["Attr"] = "0 5"
	tAddNewProps_Reward[3305488]["LogId"] = 12000883
--10个
	tAddNewProps_Reward[3305489]={}
	tAddNewProps_Reward[3305489]["DeleteItem"] = {}
	tAddNewProps_Reward[3305489]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3305489]["DeleteItem"][1]["Id"] = 3305489
	tAddNewProps_Reward[3305489]["RewardItem"] = {}
	tAddNewProps_Reward[3305489]["RewardItem"][1] = {}
	tAddNewProps_Reward[3305489]["RewardItem"][1]["Id"] = 3305484
	tAddNewProps_Reward[3305489]["RewardItem"][1]["Attr"] = "0 10"
	tAddNewProps_Reward[3305489]["LogId"] = 12000883
--20个
	tAddNewProps_Reward[3305490]={}
	tAddNewProps_Reward[3305490]["DeleteItem"] = {}
	tAddNewProps_Reward[3305490]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3305490]["DeleteItem"][1]["Id"] = 3305490
	tAddNewProps_Reward[3305490]["RewardItem"] = {}
	tAddNewProps_Reward[3305490]["RewardItem"][1] = {}
	tAddNewProps_Reward[3305490]["RewardItem"][1]["Id"] = 3305484
	tAddNewProps_Reward[3305490]["RewardItem"][1]["Attr"] = "0 20"
	tAddNewProps_Reward[3305490]["LogId"] = 12000883
--100个
	tAddNewProps_Reward[3305491]={}
	tAddNewProps_Reward[3305491]["DeleteItem"] = {}
	tAddNewProps_Reward[3305491]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3305491]["DeleteItem"][1]["Id"] = 3305491
	tAddNewProps_Reward[3305491]["RewardItem"] = {}
	tAddNewProps_Reward[3305491]["RewardItem"][1] = {}
	tAddNewProps_Reward[3305491]["RewardItem"][1]["Id"] = 3305484
	tAddNewProps_Reward[3305491]["RewardItem"][1]["Attr"] = "0 100"
	tAddNewProps_Reward[3305491]["LogId"] = 12000883
-- 800k门票碎片 400k金币转化为800kk门票 3305476
	tAddNewProps_Reward[3305476]={}
	tAddNewProps_Reward[3305476]["DelCont"] = 400000
	tAddNewProps_Reward[3305476]["RewardMsg"] = {}
	tAddNewProps_Reward[3305476]["RewardMsg"]["LogId"] =12000883
	tAddNewProps_Reward[3305476]["RewardMsg"]["RewardNoNeedTip"] = 1
	tAddNewProps_Reward[3305476]["RewardMsg"]["DeleteItem"] = {}
	tAddNewProps_Reward[3305476]["RewardMsg"]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3305476]["RewardMsg"]["DeleteItem"][1]["Id"] = 3305476
	tAddNewProps_Reward[3305476]["RewardMsg"]["DeleteItem"][1]["ItemNum"] = 1	
	tAddNewProps_Reward[3305476]["RewardMsg"]["RewardItem"] = {}
	tAddNewProps_Reward[3305476]["RewardMsg"]["RewardItem"][1] = {}
	tAddNewProps_Reward[3305476]["RewardMsg"]["RewardItem"][1]["Id"] = 3305477
	tAddNewProps_Reward[3305476]["RewardMsg"]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
-- 800k门票 6张+200k金币转化为5kk门票
	tAddNewProps_Reward[3305477]={}
	tAddNewProps_Reward[3305477]["DelCont"] = 200000
	tAddNewProps_Reward[3305477]["RewardMsg"] = {}
	tAddNewProps_Reward[3305477]["RewardMsg"]["LogId"] =12000883
	tAddNewProps_Reward[3305477]["RewardMsg"]["RewardNoNeedTip"] = 1
	tAddNewProps_Reward[3305477]["RewardMsg"]["DeleteItem"] = {}
	tAddNewProps_Reward[3305477]["RewardMsg"]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3305477]["RewardMsg"]["DeleteItem"][1]["Id"] = 3305477
	tAddNewProps_Reward[3305477]["RewardMsg"]["DeleteItem"][1]["ItemNum"] = 6
	tAddNewProps_Reward[3305477]["RewardMsg"]["RewardItem"] = {}
	tAddNewProps_Reward[3305477]["RewardMsg"]["RewardItem"][1] = {}
	tAddNewProps_Reward[3305477]["RewardMsg"]["RewardItem"][1]["Id"] = 3305478
	tAddNewProps_Reward[3305477]["RewardMsg"]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
-- 5kk门票 10张转化为50kk门票
	tAddNewProps_Reward[3305478]={}
	tAddNewProps_Reward[3305478]["RewardMsg"] = {}
	tAddNewProps_Reward[3305478]["RewardMsg"]["LogId"] =12000883
	tAddNewProps_Reward[3305478]["RewardMsg"]["RewardNoNeedTip"] = 1
	tAddNewProps_Reward[3305478]["RewardMsg"]["DeleteItem"] = {}
	tAddNewProps_Reward[3305478]["RewardMsg"]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3305478]["RewardMsg"]["DeleteItem"][1]["Id"] = 3305478
	tAddNewProps_Reward[3305478]["RewardMsg"]["DeleteItem"][1]["ItemNum"] = 10
	tAddNewProps_Reward[3305478]["RewardMsg"]["RewardItem"] = {}
	tAddNewProps_Reward[3305478]["RewardMsg"]["RewardItem"][1] = {}
	tAddNewProps_Reward[3305478]["RewardMsg"]["RewardItem"][1]["Id"] = 3305535
	tAddNewProps_Reward[3305478]["RewardMsg"]["RewardItem"][1]["Attr"] = "0 1 0 21600 1"
	
	--扑克币碎片
	tAddNewProps_Reward[3305484]={}
	tAddNewProps_Reward[3305484]["DeleteItem"] = {}
	tAddNewProps_Reward[3305484]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3305484]["DeleteItem"][1]["Id"] = 3305484
	tAddNewProps_Reward[3305484]["DeleteItem"][1]["ItemNum"]=20
	tAddNewProps_Reward[3305484]["RewardItem"] = {}
	tAddNewProps_Reward[3305484]["RewardItem"][1] = {}
	tAddNewProps_Reward[3305484]["RewardItem"][1]["Id"] = 3304719
	tAddNewProps_Reward[3305484]["RewardItem"][1]["Attr"] = "0 1"
	tAddNewProps_Reward[3305484]["LogId"] = 12000883
	
	--BrazilJersey外套礼包
	tAddNewProps_Reward[3305648]={}
	tAddNewProps_Reward[3305648]["DeleteItem"] = {}
	tAddNewProps_Reward[3305648]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3305648]["DeleteItem"][1]["Id"] = 3305648
	--BrazilJersey外套
	tAddNewProps_Reward[3305648]["RewardItem"] = {}
	tAddNewProps_Reward[3305648]["RewardItem"][1] = {}
	tAddNewProps_Reward[3305648]["RewardItem"][1]["Id"] = 192685 
	tAddNewProps_Reward[3305648]["RewardItem"][1]["Attr"] = "0 1 3 1440 1"
	tAddNewProps_Reward[3305648]["LogId"] =12000883
	--ArgentinaJersey外套礼包
	tAddNewProps_Reward[3305649]={}
	tAddNewProps_Reward[3305649]["DeleteItem"] = {}
	tAddNewProps_Reward[3305649]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3305649]["DeleteItem"][1]["Id"] = 3305649
	--ArgentinaJersey外套 
	tAddNewProps_Reward[3305649]["RewardItem"] = {}
	tAddNewProps_Reward[3305649]["RewardItem"][1] = {}
	tAddNewProps_Reward[3305649]["RewardItem"][1]["Id"] = 192675 
	tAddNewProps_Reward[3305649]["RewardItem"][1]["Attr"] = "0 1 3 1440 1"
	tAddNewProps_Reward[3305649]["LogId"] =12000883
	--SpainJersey外套礼包
	tAddNewProps_Reward[3305650]={}
	tAddNewProps_Reward[3305650]["DeleteItem"] = {}
	tAddNewProps_Reward[3305650]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3305650]["DeleteItem"][1]["Id"] =3305650
	--SpainJersey外套   
	tAddNewProps_Reward[3305650]["RewardItem"] = {}
	tAddNewProps_Reward[3305650]["RewardItem"][1] = {}
	tAddNewProps_Reward[3305650]["RewardItem"][1]["Id"] = 192665 
	tAddNewProps_Reward[3305650]["RewardItem"][1]["Attr"] = "0 1 3 1440 1"
	tAddNewProps_Reward[3305650]["LogId"] =12000883
	--GermanyJersey外套礼包
	tAddNewProps_Reward[3305651]={}
	tAddNewProps_Reward[3305651]["DeleteItem"] = {}
	tAddNewProps_Reward[3305651]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3305651]["DeleteItem"][1]["Id"] = 3305651
	--GermanyJersey外套
	tAddNewProps_Reward[3305651]["RewardItem"] = {}
	tAddNewProps_Reward[3305651]["RewardItem"][1] = {}
	tAddNewProps_Reward[3305651]["RewardItem"][1]["Id"] = 192655 
	tAddNewProps_Reward[3305651]["RewardItem"][1]["Attr"] = "0 1 3 1440 1"
	tAddNewProps_Reward[3305651]["LogId"] =12000883
--PurePunkPack外套礼包
	tAddNewProps_Reward[3306936]={}
	tAddNewProps_Reward[3306936]["DeleteItem"] = {}
	tAddNewProps_Reward[3306936]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3306936]["DeleteItem"][1]["Id"] = 3306936
	tAddNewProps_Reward[3306936]["RewardItem"] = {}
	tAddNewProps_Reward[3306936]["RewardItem"][1] = {}
	tAddNewProps_Reward[3306936]["RewardItem"][1]["Id"] = 188365
	tAddNewProps_Reward[3306936]["RewardItem"][1]["Attr"] = "0 1 3 1440 1"
	tAddNewProps_Reward[3306936]["LogId"] =12000883
--CharmingSuitPack外套礼包
	tAddNewProps_Reward[3306937]={}
	tAddNewProps_Reward[3306937]["DeleteItem"] = {}
	tAddNewProps_Reward[3306937]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3306937]["DeleteItem"][1]["Id"] = 3306937
	tAddNewProps_Reward[3306937]["RewardItem"] = {}
	tAddNewProps_Reward[3306937]["RewardItem"][1] = {}
	tAddNewProps_Reward[3306937]["RewardItem"][1]["Id"] = 183485
	tAddNewProps_Reward[3306937]["RewardItem"][1]["Attr"] = "0 1 3 1440 1"
	tAddNewProps_Reward[3306937]["LogId"] =12000883
--EveningWearPack外套礼包
	tAddNewProps_Reward[3306938]={}
	tAddNewProps_Reward[3306938]["DeleteItem"] = {}
	tAddNewProps_Reward[3306938]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3306938]["DeleteItem"][1]["Id"] = 3306938
	tAddNewProps_Reward[3306938]["RewardItem"] = {}
	tAddNewProps_Reward[3306938]["RewardItem"][1] = {}
	tAddNewProps_Reward[3306938]["RewardItem"][1]["Id"] = 184355
	tAddNewProps_Reward[3306938]["RewardItem"][1]["Attr"] = "0 1 3 1440 1"
	tAddNewProps_Reward[3306938]["LogId"] =12000883
--WhiteCollarSuitPack外套礼包
	tAddNewProps_Reward[3306939]={}
	tAddNewProps_Reward[3306939]["DeleteItem"] = {}
	tAddNewProps_Reward[3306939]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3306939]["DeleteItem"][1]["Id"] = 3306939
	tAddNewProps_Reward[3306939]["RewardItem"] = {}
	tAddNewProps_Reward[3306939]["RewardItem"][1] = {}
	tAddNewProps_Reward[3306939]["RewardItem"][1]["Id"] = 184365
	tAddNewProps_Reward[3306939]["RewardItem"][1]["Attr"] = "0 1 3 1440 1"
	tAddNewProps_Reward[3306939]["LogId"] =12000883
--PurpleRomancePack外套礼包
	tAddNewProps_Reward[3306940]={}
	tAddNewProps_Reward[3306940]["DeleteItem"] = {}
	tAddNewProps_Reward[3306940]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3306940]["DeleteItem"][1]["Id"] = 3306940
	tAddNewProps_Reward[3306940]["RewardItem"] = {}
	tAddNewProps_Reward[3306940]["RewardItem"][1] = {}
	tAddNewProps_Reward[3306940]["RewardItem"][1]["Id"] = 194865
	tAddNewProps_Reward[3306940]["RewardItem"][1]["Attr"] = "0 1 3 1440 1"
	tAddNewProps_Reward[3306940]["LogId"] =12000883
--FrozenFantasyPack外套礼包
	tAddNewProps_Reward[3306941]={}
	tAddNewProps_Reward[3306941]["DeleteItem"] = {}
	tAddNewProps_Reward[3306941]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3306941]["DeleteItem"][1]["Id"] = 3306941
	tAddNewProps_Reward[3306941]["RewardItem"] = {}
	tAddNewProps_Reward[3306941]["RewardItem"][1] = {}
	tAddNewProps_Reward[3306941]["RewardItem"][1]["Id"] = 193515
	tAddNewProps_Reward[3306941]["RewardItem"][1]["Attr"] = "0 1 3 1440 1"
	tAddNewProps_Reward[3306941]["LogId"] =12000883
--DivineRobePack外套礼包
	tAddNewProps_Reward[3306942]={}
	tAddNewProps_Reward[3306942]["DeleteItem"] = {}
	tAddNewProps_Reward[3306942]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3306942]["DeleteItem"][1]["Id"] = 3306942
	tAddNewProps_Reward[3306942]["RewardItem"] = {}
	tAddNewProps_Reward[3306942]["RewardItem"][1] = {}
	tAddNewProps_Reward[3306942]["RewardItem"][1]["Id"] = 191405
	tAddNewProps_Reward[3306942]["RewardItem"][1]["Attr"] = "0 1 3 1440 1"
	tAddNewProps_Reward[3306942]["LogId"] =12000883
--JingwuUniformPack外套礼包
	tAddNewProps_Reward[3306943]={}
	tAddNewProps_Reward[3306943]["DeleteItem"] = {}
	tAddNewProps_Reward[3306943]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3306943]["DeleteItem"][1]["Id"] = 3306943
	tAddNewProps_Reward[3306943]["RewardItem"] = {}
	tAddNewProps_Reward[3306943]["RewardItem"][1] = {}
	tAddNewProps_Reward[3306943]["RewardItem"][1]["Id"] = 193065
	tAddNewProps_Reward[3306943]["RewardItem"][1]["Attr"] = "0 1 3 1440 1"
	tAddNewProps_Reward[3306943]["LogId"] =12000883
--SandRaiderPack外套礼包
	tAddNewProps_Reward[3306944]={}
	tAddNewProps_Reward[3306944]["DeleteItem"] = {}
	tAddNewProps_Reward[3306944]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3306944]["DeleteItem"][1]["Id"] = 3306944
	tAddNewProps_Reward[3306944]["RewardItem"] = {}
	tAddNewProps_Reward[3306944]["RewardItem"][1] = {}
	tAddNewProps_Reward[3306944]["RewardItem"][1]["Id"] = 183305
	tAddNewProps_Reward[3306944]["RewardItem"][1]["Attr"] = "0 1 3 1440 1"
	tAddNewProps_Reward[3306944]["LogId"] =12000883
--ClassicFashionPack外套礼包
	tAddNewProps_Reward[3306945]={}
	tAddNewProps_Reward[3306945]["DeleteItem"] = {}
	tAddNewProps_Reward[3306945]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3306945]["DeleteItem"][1]["Id"] = 3306945
	tAddNewProps_Reward[3306945]["RewardItem"] = {}
	tAddNewProps_Reward[3306945]["RewardItem"][1] = {}
	tAddNewProps_Reward[3306945]["RewardItem"][1]["Id"] = 193095
	tAddNewProps_Reward[3306945]["RewardItem"][1]["Attr"] = "0 1 3 1440 1"
	tAddNewProps_Reward[3306945]["LogId"] =12000883
--KungFuSuitPack外套礼包
	tAddNewProps_Reward[3306946]={}
	tAddNewProps_Reward[3306946]["DeleteItem"] = {}
	tAddNewProps_Reward[3306946]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3306946]["DeleteItem"][1]["Id"] = 3306946
	tAddNewProps_Reward[3306946]["RewardItem"] = {}
	tAddNewProps_Reward[3306946]["RewardItem"][1] = {}
	tAddNewProps_Reward[3306946]["RewardItem"][1]["Id"] = 193235
	tAddNewProps_Reward[3306946]["RewardItem"][1]["Attr"] = "0 1 3 1440 1"
	tAddNewProps_Reward[3306946]["LogId"] =12000883
--TwinBlissPack外套礼包
	tAddNewProps_Reward[3306947]={}
	tAddNewProps_Reward[3306947]["DeleteItem"] = {}
	tAddNewProps_Reward[3306947]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3306947]["DeleteItem"][1]["Id"] = 3306947
	tAddNewProps_Reward[3306947]["RewardItem"] = {}
	tAddNewProps_Reward[3306947]["RewardItem"][1] = {}
	tAddNewProps_Reward[3306947]["RewardItem"][1]["Id"] = 192575
	tAddNewProps_Reward[3306947]["RewardItem"][1]["Attr"] = "0 1 3 1440 1"
	tAddNewProps_Reward[3306947]["LogId"] =12000883
--SunlightSwimsuitPack外套礼包
	tAddNewProps_Reward[3306948]={}
	tAddNewProps_Reward[3306948]["DeleteItem"] = {}
	tAddNewProps_Reward[3306948]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3306948]["DeleteItem"][1]["Id"] = 3306948
	tAddNewProps_Reward[3306948]["RewardItem"] = {}
	tAddNewProps_Reward[3306948]["RewardItem"][1] = {}
	tAddNewProps_Reward[3306948]["RewardItem"][1]["Id"] = 189665
	tAddNewProps_Reward[3306948]["RewardItem"][1]["Attr"] = "0 1 3 1440 1"
	tAddNewProps_Reward[3306948]["LogId"] =12000883
--ChristmasGarmentPack外套礼包
	tAddNewProps_Reward[3306949]={}
	tAddNewProps_Reward[3306949]["DeleteItem"] = {}
	tAddNewProps_Reward[3306949]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3306949]["DeleteItem"][1]["Id"] = 3306949
	tAddNewProps_Reward[3306949]["RewardItem"] = {}
	tAddNewProps_Reward[3306949]["RewardItem"][1] = {}
	tAddNewProps_Reward[3306949]["RewardItem"][1]["Id"] = 188225
	tAddNewProps_Reward[3306949]["RewardItem"][1]["Attr"] = "0 1 3 1440 1"
	tAddNewProps_Reward[3306949]["LogId"] =12000883
--ChristmasSuitPack外套礼包
	tAddNewProps_Reward[3306950]={}
	tAddNewProps_Reward[3306950]["DeleteItem"] = {}
	tAddNewProps_Reward[3306950]["DeleteItem"][1] = {}
	tAddNewProps_Reward[3306950]["DeleteItem"][1]["Id"] = 3306950
	tAddNewProps_Reward[3306950]["RewardItem"] = {}
	tAddNewProps_Reward[3306950]["RewardItem"][1] = {}
	tAddNewProps_Reward[3306950]["RewardItem"][1]["Id"] = 183465
	tAddNewProps_Reward[3306950]["RewardItem"][1]["Attr"] = "0 1 3 1440 1"
	tAddNewProps_Reward[3306950]["LogId"] =12000883
	
-------------------------------------逻辑部分---------------------------------------
--单抽事件
function AddNewProps_OpenRoulette(nItemId)
	local nTaskId = tAddNewProps_Cont["Task_LP"]
	local nOpt = 1
	
	-- 任务掩码是否存在 
	if not Task_ChkTaskDetail(nTaskId) then
	-- 新增任务掩码 
		if not Task_AddTaskDetail(nTaskId) then
			return
		end
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		User_TaskReward(nTaskId,nOpt) --轮盘抽奖
		return
	end	
end

--新增十连抽事件
function AddNewProps_OpenRoulette_ten(nItemId)
	local nTaskId = tAddNewProps_Cont["Task_LP"]
	local nOpt = 2
	
	-- 任务掩码是否存在 
	if not Task_ChkTaskDetail(nTaskId) then
	-- 新增任务掩码 
		if not Task_AddTaskDetail(nTaskId) then
			return
		end
	end
	
	if Item_ChkMulItem(nItemId,nItemId,10) and Item_DelMulItem(nItemId,nItemId,10) then
		User_TaskReward(nTaskId,nOpt) --轮盘抽奖
		return
	end
end

--单击礼盒事件
function AddNewProps_OpenRoulette_DayTask(nItemId)
	if not User_CheckLeftSpace(tAddNewProps_Cont["Space"]) then
		User_TalkChannel2005(tAddNewProps_Text["NoSpace"])
		return
	end
	
	local nTaskId = tAddNewProps_Cont["Task_LP"]
	local nOpt = 0
--判断任务是否可以创建
	if not Task_ChkTaskDetail(nTaskId) then
		if not Task_AddTaskDetail(nTaskId) then
			return
		end
	end
	
	User_TaskReward(nTaskId,nOpt)

end

--生成门票碎片
function AddNewProps_Compos_Ticket(nItemId)
	--检测玩家银两是否足以兑换碎片
	if tAddNewProps_Reward[nItemId]["DelCont"] ~= nil then
		if not User_CanPutMoney2Bag(-tAddNewProps_Reward[nItemId]["DelCont"]) then
			User_TalkChannel2005(tAddNewProps_Text["NoMoney"])
			return
		end
	end
	
	--检测玩家门票数量是否足以兑换
	local nEnoughNum =tAddNewProps_Reward[nItemId]["RewardMsg"]["DeleteItem"][1]["ItemNum"]
	if not Item_ChkMulItem(nItemId,nItemId,nEnoughNum) then
		if tAddNewProps_Text["NoItem"][nItemId] ~= nil then
			User_TalkChannel2005(tAddNewProps_Text["NoItem"][nItemId])
		end
		return
	end
	
--检测玩家背包空间
	if not User_CheckLeftSpace(RewardTemplate_GetRewardSpace(tAddNewProps_Reward[nItemId]["RewardMsg"])) then
		User_TalkChannel2005(tAddNewProps_Text["NoSpace"])
		return
	end
	
	--扣除银两
	if tAddNewProps_Reward[nItemId]["DelCont"] ~= nil then
		if not User_AddMoneyNew(-tAddNewProps_Reward[nItemId]["DelCont"],12000883) then
			User_TalkChannel2005(tAddNewProps_Text["NoMoney"])
			return
		end
	end
	
	-- 给奖励
	RewardTemplate_UseItemAndMsg(tAddNewProps_Reward[nItemId]["RewardMsg"])
end

--生成扑克币
function AddNewProps_Compos_Token(nItemId)
	local nEnoughNum =tAddNewProps_Reward[nItemId]["DeleteItem"][1]["ItemNum"]
	--判断数量是否足够
	if not Item_ChkMulItem(nItemId,nItemId,nEnoughNum) then
		return
	end
	
	--判断背包空间
	if not User_CheckLeftSpace(RewardTemplate_GetRewardSpace(tAddNewProps_Reward[nItemId])) then
	User_TalkChannel2005(tAddNewProps_Text["NoSpace"])
		return
	end
	
	--给奖励
RewardTemplate_UseItemAndMsg(tAddNewProps_Reward[nItemId])
end
-------------------------------------物品配置---------------------------------------
tItem[3305483] = tItem[3305483] or {}
tItem[3305483]["Function"] = function(nItemId, sItemName)
	-- AddNewProps_OpenRoulette_DayTask(nItemId)
	RouletteMould_Main(6838)
end

--扑克币碎片礼包
for i = 3305485,3305491 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemId,sItemName)
		RewardTemplate_UseItem(tAddNewProps_Reward[nItemId])
	end
end
--扑克币碎片
tItem[3305484] = tItem[3305484] or {}
tItem[3305484]["Function"] = function(nItemId, sItemName)
	AddNewProps_Compos_Token(nItemId)
end

--3305476  800K门票碎片
-- tItemFace[3305476] = 1147
-- tItem[3305476] = tItem[3305476] or {}
-- tItem[3305476]["DialogueText"] = tAddNewProps_Text[3305476]
-- tItem[3305476]["Text1-1"] = {111}
-- tItem[3305476]["tOption1-1"] = {111,112}
-- tItem[3305476]["OptionFunc111"] = "AddNewProps_Compos_Ticket</N>3305476"

--800K门票
-- tItemFace[3305477] = 1148
-- tItem[3305477] = tItem[3305477] or {}
-- tItem[3305477]["DialogueText"] = tAddNewProps_Text[3305477]
-- tItem[3305477]["Text1-1"] = {111}
-- tItem[3305477]["tOption1-1"] = {111,112}
-- tItem[3305477]["OptionFunc111"] = "AddNewProps_Compos_Ticket</N>3305477"

--5KK门票
-- tItemFace[3305478] = 1149
-- tItem[3305478] = tItem[3305478] or {}
-- tItem[3305478]["DialogueText"] = tAddNewProps_Text[3305478]
-- tItem[3305478]["Text1-1"] = {111}
-- tItem[3305478]["tOption1-1"] = {111,112}
-- tItem[3305478]["OptionFunc111"] = "AddNewProps_Compos_Ticket</N>3305478"

--外套礼盒
for i = 3305648,3305651 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemId,sItemName)
		RewardTemplate_UseItem(tAddNewProps_Reward[nItemId])
	end
end

--外套礼盒
for i = 3306936,3306950 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemId,sItemName)
		RewardTemplate_UseItem(tAddNewProps_Reward[nItemId])
	end
end

