------------------------------------------------------------------------------------
--Name:		[征服][任务脚本]新发型名称
--Creator: 	陈莺
--Created:	2017/07/3
------------------------------------------------------------------------------------

--命名规范

--tHairStylist_
------------------------------------------------------------------------------------
local tHairStylist_Data = {}
	tHairStylist_Data["schgmapType"] = "style"
	tHairStylist_Data["ChkAch"] = 10114  ---成就
	tHairStylist_Data["Effect"] = "angelwing"
	tHairStylist_Data["VipLevel"] = 4
	tHairStylist_Data["MapId"] = 1002
	tHairStylist_Data["PosX"] = 281
	tHairStylist_Data["PosY"] = 251
	tHairStylist_Data["Metempsychosis"] = 1
	
local tHairStylist_NeedMoney = {}
---普通发型
	tHairStylist_NeedMoney[3] = 500
	tHairStylist_NeedMoney[5] = 500
	tHairStylist_NeedMoney[6] = 500
	tHairStylist_NeedMoney[7] = 500
	tHairStylist_NeedMoney[11] = 500
	tHairStylist_NeedMoney[12] = 500
	tHairStylist_NeedMoney[13] = 500
	tHairStylist_NeedMoney[16] = 500
	tHairStylist_NeedMoney[25] = 500
	tHairStylist_NeedMoney[26] = 500
	tHairStylist_NeedMoney[27] = 500
	tHairStylist_NeedMoney[60] = 500
	tHairStylist_NeedMoney[2] = 500
-----现无编号发型
	tHairStylist_NeedMoney[50] = 500
	tHairStylist_NeedMoney[45] = 500
	tHairStylist_NeedMoney[41] = 500
	tHairStylist_NeedMoney[39] = 500

	
--高级发型
	tHairStylist_NeedMoney[1] = 10000
	tHairStylist_NeedMoney[22] = 10000
	tHairStylist_NeedMoney[4] = 10000
	tHairStylist_NeedMoney[9] = 10000
	tHairStylist_NeedMoney[10] = 10000
	tHairStylist_NeedMoney[14] = 10000
	tHairStylist_NeedMoney[15] = 10000
	tHairStylist_NeedMoney[17] = 10000
	tHairStylist_NeedMoney[19] = 10000
	tHairStylist_NeedMoney[23] = 10000
	tHairStylist_NeedMoney[24] = 10000
-----现无编号发型
	tHairStylist_NeedMoney[47] = 10000
	tHairStylist_NeedMoney[48] = 10000
	tHairStylist_NeedMoney[49] = 10000
	tHairStylist_NeedMoney[62] = 10000
	
--vip发型
	tHairStylist_NeedMoney[20] = 500
	tHairStylist_NeedMoney[61] = 500
	tHairStylist_NeedMoney[21] = 500
	tHairStylist_NeedMoney[18] = 500
	tHairStylist_NeedMoney[8] = 500
-----现无编号发型
	tHairStylist_NeedMoney[43] = 500
	tHairStylist_NeedMoney[46] = 500
	tHairStylist_NeedMoney[40] = 500
---9.4新增的vip发型
	tHairStylist_NeedMoney[51] = 500
	tHairStylist_NeedMoney[52] = 500
	tHairStylist_NeedMoney[53] = 500
	tHairStylist_NeedMoney[54] = 500
	tHairStylist_NeedMoney[55] = 500
	
local tHairStylist_Log = {}
	tHairStylist_Log["Hair"] = "0,0,1,%d,12000773,50,%d,0"
	tHairStylist_Log["Ach"] = "0,0,0,0,12000773,100,0,0"
	tHairStylist_Log["GeT"] = "0,0,0,0,12000773,50,%d,0"
local tHairStylist_TaskId = {}
	tHairStylist_TaskId[1] = 815
	tHairStylist_TaskId[2] = 817
	tHairStylist_TaskId[3] = 1702
	
local tHairStylist_SetTaskId = {}
	tHairStylist_SetTaskId[1] = 800 
	tHairStylist_SetTaskId[2] = 804 
	tHairStylist_SetTaskId[3] = 802 
	tHairStylist_SetTaskId[4] = 807 
	tHairStylist_SetTaskId[5] = 808 
	tHairStylist_SetTaskId[6] = 809 
	tHairStylist_SetTaskId[7] = 810 
	tHairStylist_SetTaskId[8] = 811 
	tHairStylist_SetTaskId[9] = 2170
	tHairStylist_SetTaskId[10] = 6425
	tHairStylist_SetTaskId[11] = 3750
	tHairStylist_SetTaskId[12] = 816 
	tHairStylist_SetTaskId[13] = 812 
	tHairStylist_SetTaskId[14] = 813 
	tHairStylist_SetTaskId[15] = 814 
	tHairStylist_SetTaskId[16] = 815 
	tHairStylist_SetTaskId[17] = 817 
	tHairStylist_SetTaskId[18] = 818 
	tHairStylist_SetTaskId[19] = 819 
	tHairStylist_SetTaskId[20] = 820 
	tHairStylist_SetTaskId[21] = 821 
	tHairStylist_SetTaskId[22] = 822 
	tHairStylist_SetTaskId[23] = 823 
	tHairStylist_SetTaskId[24] = 824 
	tHairStylist_SetTaskId[25] = 825 
	tHairStylist_SetTaskId[26] = 826 
	tHairStylist_SetTaskId[27] = 827 
	tHairStylist_SetTaskId[28] = 828 
	tHairStylist_SetTaskId[29] = 829 
	tHairStylist_SetTaskId[30] = 830 
	tHairStylist_SetTaskId[31] = 831 
	tHairStylist_SetTaskId[32] = 832 
	tHairStylist_SetTaskId[33] = 833 
	tHairStylist_SetTaskId[34] = 834 
	tHairStylist_SetTaskId[35] = 835 
	tHairStylist_SetTaskId[36] = 836 
	tHairStylist_SetTaskId[37] = 6435 
	tHairStylist_SetTaskId[38] = 6436 
	tHairStylist_SetTaskId[39] = 6437 
	tHairStylist_SetTaskId[40] = 6438 


local tHairStylist_Reward = {}
	tHairStylist_Reward[1] = {}
	tHairStylist_Reward[1]["LogId"] = 12000889
	tHairStylist_Reward[1]["RewardExp"] = {}
	tHairStylist_Reward[1]["RewardExp"]["Value"] = 1000
	tHairStylist_Reward[1]["RewardEffect"] = {}
	tHairStylist_Reward[1]["RewardEffect"]["SzObj"] = "self"
	tHairStylist_Reward[1]["RewardEffect"]["Effect"] = "angelwing"


	
	
-------------------------------------------逻辑部分-------------------------------
function HairStylist_ChangeHair(nNpcId,nType,nFlag)
	--检测vip
	if nFlag == 3 then
		local nUserId = Get_UserId()
		local nUserVip = Get_UserVip(nUserId)
		if nUserVip < tHairStylist_Data["VipLevel"] then
			LinkNpcGossipFunc_New(nNpcId,"6-1")
			return
		end
	end
----检测金币
	if not User_CanPutMoney2Bag(-tHairStylist_NeedMoney[nType]) then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end
--扣金币
	if User_AddMoney(-tHairStylist_NeedMoney[nType]) then
		HairStylist_GiveHair(nNpcId,nType,nFlag)
		local sLog = string.format(tHairStylist_Log["Hair"],tHairStylist_NeedMoney[nType],nType)
		Sys_SaveActionFestivalLog(sLog)
	end
end

function HairStylist_GiveHair(nNpcId,nType,nFlag)
	---给发型
	if not User_HairFaceCheckExist(0,nType) then
		User_HairFaceAward(0,nType,0)
	end
	User_ChangeUserHair(nType)  --版本后
	local sLog = string.format(tHairStylist_Log["GeT"],nType)
	Sys_SaveActionFestivalLog(sLog)
	--给成就
	local nAchPos = tHairStylist_Data["ChkAch"]
	if not User_ChkAchByAchPosition(nAchPos) then
		User_AddAchByAchPosition(nAchPos)
		Sys_SaveActionFestivalLog(tHairStylist_Log["Ach"])
	end
	User_EffectAdd("self",tHairStylist_Data["Effect"])
	---出对白
	local sText = tHairStylist_Text[nFlag]
	Sys_DialogText(tHairStylist_Text[10002]["Text811"])
	Sys_DialogOption(tHairStylist_Text[10002]["Option81"],"</F>LinkNpcGossipFunc_New</N>" .. nNpcId .. "</S>" .. sText)
	Sys_DialogOption(tHairStylist_Text[10002]["Option82"],"</F>NULL")
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

---taskid
function HairStylist_SetTaskId(nNpcId)
	--先判断转世
	local nNowUserId = Get_UserId()
	local nUserMetempsychosis = Get_UserMetempsychosis(nNowUserId)
	if nUserMetempsychosis >= tHairStylist_Data["Metempsychosis"] then
		--一大串掩码设置
		HairStylist_SetMoreTaskId(nNpcId)
		return
	end
	HairStylist_SetTask(nNpcId)
end
function HairStylist_SetTask(nNpcId)
	local nTaskId = tHairStylist_TaskId[1]
	--815
	if Task_ChkTaskDetail(nTaskId,0) then
		if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",1) then
			local nTaskId_1 = tHairStylist_TaskId[2]
			--817
			if Task_ChkTaskDetail(nTaskId_1,0) then
				if Task_ChkTaskDetailValue(nTaskId_1,"CompleteFlag","==",1) then
					LinkNpcGossipFunc_New(nNpcId,"1-1")
				else
					LinkNpcGossipFunc_New(nNpcId,"10-1")
				end
			else
				LinkNpcGossipFunc_New(nNpcId,"10-1")
			end
		else
			LinkNpcGossipFunc_New(nNpcId,"11-3")
		end
	else 
		LinkNpcGossipFunc_New(nNpcId,"1-1")
	end
end
function HairStylist_SetMoreTaskId(nNpcId)
--1702
	local nTaskId = tHairStylist_TaskId[3]
	if Task_ChkTaskDetail(nTaskId,0) then
		if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",1) then
			HairStylist_SetTask(nNpcId)
		else
			HairStylist_SetDelTaskId(nNpcId)
		end
	else
		HairStylist_SetDelTaskId(nNpcId)
	end
end

function HairStylist_SetDelTaskId(nNpcId)
--complete set 2
	for a,b in pairs(tHairStylist_SetTaskId) do
		if Task_ChkTaskDetail(b) then
		Task_SetTaskDetailCompleteFlag(b,2)
		end
	end
--delete
	for a,b in pairs(tHairStylist_SetTaskId) do
		if Task_ChkTaskDetail(b) then
			Task_DelTaskDetail(b)
		end
	end
--建个新的task1702
	local nTaskId = tHairStylist_TaskId[3]
	if Task_AddTaskDetail(nTaskId) then
		Task_SetTaskDetailCompleteFlag(nTaskId,1)
	end
end

function HairStylist_GiveHairTask()
	local nTaskId_1 = tHairStylist_TaskId[2]
	if Task_ChkTaskDetail(nTaskId_1,0) then
		Sys_MsgBox(tHairStylist_Text["Get"],"NpcPosition_PathFind</N>8")
	else
		if Task_AddTaskDetail(nTaskId_1) then
			Sys_MsgBox(tHairStylist_Text["Get"],"NpcPosition_PathFind</N>8")
		end
	end
end

function HairStylist_SetHairTask(nNpcId)
	--815
	local nTaskId = tHairStylist_TaskId[1]
	Task_SetTaskDetailCompleteFlag(nTaskId,1)
	RewardTemplate_Reward(tHairStylist_Reward[1])
	LinkNpcGossipFunc_New(nNpcId,"10-1")
end
----------------------------------NPC部分---------------------------------------------
tNpcFace[2] = 111
tNpcFace[6108] = 111
tNpcGossip[10002]= tNpcGossip[10002] or DefaultNpc:new{}
tNpcGossip[10002]["OptionHidden"] = 1

tNpcGossip[10002]["Text1-1"] = {111,112,113}
tNpcGossip[10002]["Text111"] = tHairStylist_Text[10002]["Text111"]
tNpcGossip[10002]["Text112"] = tHairStylist_Text[10002]["Text112"]
tNpcGossip[10002]["Text113"] = tHairStylist_Text[10002]["Text113"]
tNpcGossip[10002]["tOption1-1"] = {1,2,3,4}
tNpcGossip[10002]["Option1"] = tHairStylist_Text[10002]["Option1"]
tNpcGossip[10002]["OptionPoint1"] = "2-1"
tNpcGossip[10002]["Option2"] = tHairStylist_Text[10002]["Option2"]
tNpcGossip[10002]["OptionPoint2"] = "3-1"
tNpcGossip[10002]["Option3"] = tHairStylist_Text[10002]["Option3"]
tNpcGossip[10002]["OptionPoint3"] = "4-1"
tNpcGossip[10002]["Option4"] = tHairStylist_Text[10002]["Option4"]
-- tNpcGossip[10002]["ChkFunc1-1"]= function()
	-- return HairStylist_SetTaskId(10002)
-- end
--普通
tNpcGossip[10002]["Text2-1"] = {211}
tNpcGossip[10002]["Text211"] = tHairStylist_Text[10002]["Text211"]
tNpcGossip[10002]["tOption2-1"] = {21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37}
tNpcGossip[10002]["Option21"] = tHairStylist_Text[10002]["Option21"]
tNpcGossip[10002]["OptionFunc21"] = "HairStylist_ChangeHair</N>10002</N>3</N>1"
tNpcGossip[10002]["Option22"] = tHairStylist_Text[10002]["Option22"]
tNpcGossip[10002]["OptionFunc22"] = "HairStylist_ChangeHair</N>10002</N>5</N>1"
tNpcGossip[10002]["Option23"] = tHairStylist_Text[10002]["Option23"]
tNpcGossip[10002]["OptionFunc23"] = "HairStylist_ChangeHair</N>10002</N>6</N>1"
tNpcGossip[10002]["Option24"] = tHairStylist_Text[10002]["Option24"]
tNpcGossip[10002]["OptionFunc24"] = "HairStylist_ChangeHair</N>10002</N>7</N>1"
tNpcGossip[10002]["Option25"] = tHairStylist_Text[10002]["Option25"]
tNpcGossip[10002]["OptionFunc25"] = "HairStylist_ChangeHair</N>10002</N>11</N>1"
tNpcGossip[10002]["Option26"] = tHairStylist_Text[10002]["Option26"]
tNpcGossip[10002]["OptionFunc26"] = "HairStylist_ChangeHair</N>10002</N>12</N>1"
tNpcGossip[10002]["Option27"] = tHairStylist_Text[10002]["Option27"]
tNpcGossip[10002]["OptionFunc27"] = "HairStylist_ChangeHair</N>10002</N>13</N>1"
tNpcGossip[10002]["Option28"] = tHairStylist_Text[10002]["Option28"]
tNpcGossip[10002]["OptionFunc28"] = "HairStylist_ChangeHair</N>10002</N>16</N>1"
tNpcGossip[10002]["Option29"] = tHairStylist_Text[10002]["Option29"]
tNpcGossip[10002]["OptionFunc29"] = "HairStylist_ChangeHair</N>10002</N>25</N>1"
tNpcGossip[10002]["Option30"] = tHairStylist_Text[10002]["Option30"]
tNpcGossip[10002]["OptionFunc30"] = "HairStylist_ChangeHair</N>10002</N>26</N>1"
tNpcGossip[10002]["Option31"] = tHairStylist_Text[10002]["Option31"]
tNpcGossip[10002]["OptionFunc31"] = "HairStylist_ChangeHair</N>10002</N>27</N>1"
tNpcGossip[10002]["Option32"] = tHairStylist_Text[10002]["Option32"]
tNpcGossip[10002]["OptionFunc32"] = "HairStylist_ChangeHair</N>10002</N>60</N>1"
tNpcGossip[10002]["Option33"] = tHairStylist_Text[10002]["Option33"]
tNpcGossip[10002]["OptionFunc33"] = "HairStylist_ChangeHair</N>10002</N>2</N>1"
----无编号发型
tNpcGossip[10002]["Option34"] = tHairStylist_Text[10002]["Option34"]
tNpcGossip[10002]["OptionFunc34"] = "HairStylist_ChangeHair</N>10002</N>50</N>1"
tNpcGossip[10002]["Option35"] = tHairStylist_Text[10002]["Option35"]
tNpcGossip[10002]["OptionFunc35"] = "HairStylist_ChangeHair</N>10002</N>45</N>1"
tNpcGossip[10002]["Option36"] = tHairStylist_Text[10002]["Option36"]
tNpcGossip[10002]["OptionFunc36"] = "HairStylist_ChangeHair</N>10002</N>41</N>1"
tNpcGossip[10002]["Option37"] = tHairStylist_Text[10002]["Option37"]
tNpcGossip[10002]["OptionFunc37"] = "HairStylist_ChangeHair</N>10002</N>39</N>1"

--高级
tNpcGossip[10002]["Text3-1"] = {311}
tNpcGossip[10002]["Text311"] = tHairStylist_Text[10002]["Text311"]
tNpcGossip[10002]["tOption3-1"] = {41,42,43,44,45,46,47,48,49,50,51,52,53,54,55}
tNpcGossip[10002]["Option41"] = tHairStylist_Text[10002]["Option41"]
tNpcGossip[10002]["OptionFunc41"] = "HairStylist_ChangeHair</N>10002</N>1</N>2"
tNpcGossip[10002]["Option42"] = tHairStylist_Text[10002]["Option42"]
tNpcGossip[10002]["OptionFunc42"] = "HairStylist_ChangeHair</N>10002</N>22</N>2"
tNpcGossip[10002]["Option43"] = tHairStylist_Text[10002]["Option43"]
tNpcGossip[10002]["OptionFunc43"] = "HairStylist_ChangeHair</N>10002</N>4</N>2"
tNpcGossip[10002]["Option44"] = tHairStylist_Text[10002]["Option44"]
tNpcGossip[10002]["OptionFunc44"] = "HairStylist_ChangeHair</N>10002</N>9</N>2"
tNpcGossip[10002]["Option45"] = tHairStylist_Text[10002]["Option45"]
tNpcGossip[10002]["OptionFunc45"] = "HairStylist_ChangeHair</N>10002</N>10</N>2"
tNpcGossip[10002]["Option46"] = tHairStylist_Text[10002]["Option46"]
tNpcGossip[10002]["OptionFunc46"] = "HairStylist_ChangeHair</N>10002</N>14</N>2"
tNpcGossip[10002]["Option47"] = tHairStylist_Text[10002]["Option47"]
tNpcGossip[10002]["OptionFunc47"] = "HairStylist_ChangeHair</N>10002</N>15</N>2"
tNpcGossip[10002]["Option48"] = tHairStylist_Text[10002]["Option48"]
tNpcGossip[10002]["OptionFunc48"] = "HairStylist_ChangeHair</N>10002</N>17</N>2"
tNpcGossip[10002]["Option49"] = tHairStylist_Text[10002]["Option49"]
tNpcGossip[10002]["OptionFunc49"] = "HairStylist_ChangeHair</N>10002</N>19</N>2"
tNpcGossip[10002]["Option50"] = tHairStylist_Text[10002]["Option50"]
tNpcGossip[10002]["OptionFunc50"] = "HairStylist_ChangeHair</N>10002</N>23</N>2"
tNpcGossip[10002]["Option51"] = tHairStylist_Text[10002]["Option51"]
tNpcGossip[10002]["OptionFunc51"] = "HairStylist_ChangeHair</N>10002</N>24</N>2"
----无编号发型
tNpcGossip[10002]["Option52"] = tHairStylist_Text[10002]["Option52"]
tNpcGossip[10002]["OptionFunc52"] = "HairStylist_ChangeHair</N>10002</N>47</N>2"
tNpcGossip[10002]["Option53"] = tHairStylist_Text[10002]["Option53"]
tNpcGossip[10002]["OptionFunc53"] = "HairStylist_ChangeHair</N>10002</N>48</N>2"
tNpcGossip[10002]["Option54"] = tHairStylist_Text[10002]["Option54"]
tNpcGossip[10002]["OptionFunc54"] = "HairStylist_ChangeHair</N>10002</N>49</N>2"
tNpcGossip[10002]["Option55"] = tHairStylist_Text[10002]["Option55"]
tNpcGossip[10002]["OptionFunc55"] = "HairStylist_ChangeHair</N>10002</N>62</N>2"

-- vip
tNpcGossip[10002]["Text4-1"] = {411}
tNpcGossip[10002]["Text411"] = tHairStylist_Text[10002]["Text411"]
tNpcGossip[10002]["tOption4-1"] = {61,62,63,64,65,66,67,68,200,201,202,203,204}
tNpcGossip[10002]["Option61"] = tHairStylist_Text[10002]["Option61"]
tNpcGossip[10002]["OptionFunc61"] = "HairStylist_ChangeHair</N>10002</N>20</N>3"
tNpcGossip[10002]["Option62"] = tHairStylist_Text[10002]["Option62"]
tNpcGossip[10002]["OptionFunc62"] = "HairStylist_ChangeHair</N>10002</N>61</N>3"
tNpcGossip[10002]["Option63"] = tHairStylist_Text[10002]["Option63"]
tNpcGossip[10002]["OptionFunc63"] = "HairStylist_ChangeHair</N>10002</N>21</N>3"
tNpcGossip[10002]["Option64"] = tHairStylist_Text[10002]["Option64"]
tNpcGossip[10002]["OptionFunc64"] = "HairStylist_ChangeHair</N>10002</N>43</N>3"

tNpcGossip[10002]["Option65"] = tHairStylist_Text[10002]["Option65"]
tNpcGossip[10002]["OptionFunc65"] = "HairStylist_ChangeHair</N>10002</N>18</N>3"

tNpcGossip[10002]["Option66"] = tHairStylist_Text[10002]["Option66"]
tNpcGossip[10002]["OptionFunc66"] = "HairStylist_ChangeHair</N>10002</N>46</N>3"
tNpcGossip[10002]["Option67"] = tHairStylist_Text[10002]["Option67"]
tNpcGossip[10002]["OptionFunc67"] = "HairStylist_ChangeHair</N>10002</N>40</N>3"

tNpcGossip[10002]["Option68"] = tHairStylist_Text[10002]["Option68"]
tNpcGossip[10002]["OptionFunc68"] = "HairStylist_ChangeHair</N>10002</N>8</N>3"
---9.4新增
tNpcGossip[10002]["Option200"] = tHairStylist_Text[10002]["Option200"]
tNpcGossip[10002]["OptionFunc200"] = "HairStylist_ChangeHair</N>10002</N>51</N>3"
tNpcGossip[10002]["Option201"] = tHairStylist_Text[10002]["Option201"]
tNpcGossip[10002]["OptionFunc201"] = "HairStylist_ChangeHair</N>10002</N>52</N>3"
tNpcGossip[10002]["Option202"] = tHairStylist_Text[10002]["Option202"]
tNpcGossip[10002]["OptionFunc202"] = "HairStylist_ChangeHair</N>10002</N>53</N>3"
tNpcGossip[10002]["Option203"] = tHairStylist_Text[10002]["Option203"]
tNpcGossip[10002]["OptionFunc203"] = "HairStylist_ChangeHair</N>10002</N>54</N>3"
tNpcGossip[10002]["Option204"] = tHairStylist_Text[10002]["Option204"]
tNpcGossip[10002]["OptionFunc204"] = "HairStylist_ChangeHair</N>10002</N>55</N>3"

---银两不足
tNpcGossip[10002]["Text5-1"] = {511}
tNpcGossip[10002]["Text511"] = tHairStylist_Text[10002]["Text511"]
tNpcGossip[10002]["tOption5-1"] = {71}
tNpcGossip[10002]["Option71"] = tHairStylist_Text[10002]["Option71"]
---不是vip
tNpcGossip[10002]["Text6-1"] = {611}
tNpcGossip[10002]["Text611"] = tHairStylist_Text[10002]["Text611"]
tNpcGossip[10002]["tOption6-1"] = {72}
tNpcGossip[10002]["Option72"] = tHairStylist_Text[10002]["Option72"]
---想换哪款（普通）
tNpcGossip[10002]["Text7-1"] = {711}
tNpcGossip[10002]["Text711"] = tHairStylist_Text[10002]["Text711"]
tNpcGossip[10002]["tOption7-1"] = {81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97}
tNpcGossip[10002]["Option81"] = tHairStylist_Text[10002]["Option21"]
tNpcGossip[10002]["OptionFunc81"] = "HairStylist_GiveHair</N>10002</N>3</N>1"
tNpcGossip[10002]["Option82"] = tHairStylist_Text[10002]["Option22"]  
tNpcGossip[10002]["OptionFunc82"] = "HairStylist_GiveHair</N>10002</N>5</N>1"
tNpcGossip[10002]["Option83"] = tHairStylist_Text[10002]["Option23"]  
tNpcGossip[10002]["OptionFunc83"] = "HairStylist_GiveHair</N>10002</N>6</N>1"
tNpcGossip[10002]["Option84"] = tHairStylist_Text[10002]["Option24"]  
tNpcGossip[10002]["OptionFunc84"] = "HairStylist_GiveHair</N>10002</N>7</N>1"
tNpcGossip[10002]["Option85"] = tHairStylist_Text[10002]["Option25"]  
tNpcGossip[10002]["OptionFunc85"] = "HairStylist_GiveHair</N>10002</N>11</N>1"
tNpcGossip[10002]["Option86"] = tHairStylist_Text[10002]["Option26"]  
tNpcGossip[10002]["OptionFunc86"] = "HairStylist_GiveHair</N>10002</N>12</N>1"
tNpcGossip[10002]["Option87"] = tHairStylist_Text[10002]["Option27"]  
tNpcGossip[10002]["OptionFunc87"] = "HairStylist_GiveHair</N>10002</N>13</N>1"
tNpcGossip[10002]["Option88"] = tHairStylist_Text[10002]["Option28"]  
tNpcGossip[10002]["OptionFunc88"] = "HairStylist_GiveHair</N>10002</N>16</N>1"
tNpcGossip[10002]["Option89"] = tHairStylist_Text[10002]["Option29"]  
tNpcGossip[10002]["OptionFunc89"] = "HairStylist_GiveHair</N>10002</N>25</N>1"
tNpcGossip[10002]["Option90"] = tHairStylist_Text[10002]["Option30"]  
tNpcGossip[10002]["OptionFunc90"] = "HairStylist_GiveHair</N>10002</N>26</N>1"
tNpcGossip[10002]["Option91"] = tHairStylist_Text[10002]["Option31"]  
tNpcGossip[10002]["OptionFunc91"] = "HairStylist_GiveHair</N>10002</N>27</N>1"
tNpcGossip[10002]["Option92"] = tHairStylist_Text[10002]["Option32"]  
tNpcGossip[10002]["OptionFunc92"] = "HairStylist_GiveHair</N>10002</N>60</N>1"
tNpcGossip[10002]["Option93"] = tHairStylist_Text[10002]["Option33"]  
tNpcGossip[10002]["OptionFunc93"] = "HairStylist_GiveHair</N>10002</N>2</N>1"
----无编号发型
tNpcGossip[10002]["Option94"] = tHairStylist_Text[10002]["Option34"]
tNpcGossip[10002]["OptionFunc94"] = "HairStylist_GiveHair</N>10002</N>50</N>1"
tNpcGossip[10002]["Option95"] = tHairStylist_Text[10002]["Option35"]
tNpcGossip[10002]["OptionFunc95"] = "HairStylist_GiveHair</N>10002</N>45</N>1"
tNpcGossip[10002]["Option96"] = tHairStylist_Text[10002]["Option36"]
tNpcGossip[10002]["OptionFunc96"] = "HairStylist_GiveHair</N>10002</N>41</N>1"
tNpcGossip[10002]["Option97"] = tHairStylist_Text[10002]["Option37"]
tNpcGossip[10002]["OptionFunc97"] = "HairStylist_GiveHair</N>10002</N>39</N>1"


---想换哪款（高级）
tNpcGossip[10002]["Text8-1"] = {811}
tNpcGossip[10002]["Text811"] = tHairStylist_Text[10002]["Text711"]
tNpcGossip[10002]["tOption8-1"] = {101,102,103,104,105,106,107,108,109,110,111,112,113,114,115}
tNpcGossip[10002]["Option101"] = tHairStylist_Text[10002]["Option41"]
tNpcGossip[10002]["OptionFunc101"] = "HairStylist_GiveHair</N>10002</N>1</N>2"
tNpcGossip[10002]["Option102"] = tHairStylist_Text[10002]["Option42"]  
tNpcGossip[10002]["OptionFunc102"] = "HairStylist_GiveHair</N>10002</N>22</N>2"
tNpcGossip[10002]["Option103"] = tHairStylist_Text[10002]["Option43"]  
tNpcGossip[10002]["OptionFunc103"] = "HairStylist_GiveHair</N>10002</N>4</N>2"
tNpcGossip[10002]["Option104"] = tHairStylist_Text[10002]["Option44"]  
tNpcGossip[10002]["OptionFunc104"] = "HairStylist_GiveHair</N>10002</N>9</N>2"
tNpcGossip[10002]["Option105"] = tHairStylist_Text[10002]["Option45"]  
tNpcGossip[10002]["OptionFunc105"] = "HairStylist_GiveHair</N>10002</N>10</N>2"
tNpcGossip[10002]["Option106"] = tHairStylist_Text[10002]["Option46"]  
tNpcGossip[10002]["OptionFunc106"] = "HairStylist_GiveHair</N>10002</N>14</N>2"
tNpcGossip[10002]["Option107"] = tHairStylist_Text[10002]["Option47"]  
tNpcGossip[10002]["OptionFunc107"] = "HairStylist_GiveHair</N>10002</N>15</N>2"
tNpcGossip[10002]["Option108"] = tHairStylist_Text[10002]["Option48"]  
tNpcGossip[10002]["OptionFunc108"] = "HairStylist_GiveHair</N>10002</N>17</N>2"
tNpcGossip[10002]["Option109"] = tHairStylist_Text[10002]["Option49"]  
tNpcGossip[10002]["OptionFunc109"] = "HairStylist_GiveHair</N>10002</N>19</N>2"
tNpcGossip[10002]["Option110"] = tHairStylist_Text[10002]["Option50"]  
tNpcGossip[10002]["OptionFunc110"] = "HairStylist_GiveHair</N>10002</N>23</N>2"
tNpcGossip[10002]["Option111"] = tHairStylist_Text[10002]["Option51"]  
tNpcGossip[10002]["OptionFunc111"] = "HairStylist_GiveHair</N>10002</N>24</N>2"
----无编号发型
tNpcGossip[10002]["Option112"] = tHairStylist_Text[10002]["Option52"]
tNpcGossip[10002]["OptionFunc112"] = "HairStylist_GiveHair</N>10002</N>47</N>2"
tNpcGossip[10002]["Option113"] = tHairStylist_Text[10002]["Option53"]
tNpcGossip[10002]["OptionFunc113"] = "HairStylist_GiveHair</N>10002</N>48</N>2"
tNpcGossip[10002]["Option114"] = tHairStylist_Text[10002]["Option54"]
tNpcGossip[10002]["OptionFunc114"] = "HairStylist_GiveHair</N>10002</N>49</N>2"
tNpcGossip[10002]["Option115"] = tHairStylist_Text[10002]["Option55"]
tNpcGossip[10002]["OptionFunc115"] = "HairStylist_GiveHair</N>10002</N>62</N>2"

---想换哪款（VIP）
tNpcGossip[10002]["Text9-1"] = {911}
tNpcGossip[10002]["Text911"] = tHairStylist_Text[10002]["Text711"]
tNpcGossip[10002]["tOption9-1"] = {121,122,123,124,125,126,127,128,150,151,152,153,154}
tNpcGossip[10002]["Option121"] = tHairStylist_Text[10002]["Option61"]
tNpcGossip[10002]["OptionFunc121"] = "HairStylist_GiveHair</N>10002</N>20</N>3"
tNpcGossip[10002]["Option122"] = tHairStylist_Text[10002]["Option62"]
tNpcGossip[10002]["OptionFunc122"] = "HairStylist_GiveHair</N>10002</N>61</N>3"
tNpcGossip[10002]["Option123"] = tHairStylist_Text[10002]["Option63"]
tNpcGossip[10002]["OptionFunc123"] = "HairStylist_GiveHair</N>10002</N>21</N>3"

tNpcGossip[10002]["Option124"] = tHairStylist_Text[10002]["Option64"]
tNpcGossip[10002]["OptionFunc124"] = "HairStylist_GiveHair</N>10002</N>43</N>3"
tNpcGossip[10002]["Option125"] = tHairStylist_Text[10002]["Option65"]
tNpcGossip[10002]["OptionFunc125"] = "HairStylist_GiveHair</N>10002</N>18</N>3"

tNpcGossip[10002]["Option126"] = tHairStylist_Text[10002]["Option66"]
tNpcGossip[10002]["OptionFunc126"] = "HairStylist_GiveHair</N>10002</N>46</N>3"
tNpcGossip[10002]["Option127"] = tHairStylist_Text[10002]["Option67"]
tNpcGossip[10002]["OptionFunc127"] = "HairStylist_GiveHair</N>10002</N>40</N>3"
tNpcGossip[10002]["Option128"] = tHairStylist_Text[10002]["Option68"]
tNpcGossip[10002]["OptionFunc128"] = "HairStylist_GiveHair</N>10002</N>8</N>3"
---9.4新增
tNpcGossip[10002]["Option150"] = tHairStylist_Text[10002]["Option200"]
tNpcGossip[10002]["OptionFunc150"] = "HairStylist_GiveHair</N>10002</N>51</N>3"
tNpcGossip[10002]["Option151"] = tHairStylist_Text[10002]["Option201"]
tNpcGossip[10002]["OptionFunc151"] = "HairStylist_GiveHair</N>10002</N>52</N>3"
tNpcGossip[10002]["Option152"] = tHairStylist_Text[10002]["Option202"]
tNpcGossip[10002]["OptionFunc152"] = "HairStylist_GiveHair</N>10002</N>53</N>3"
tNpcGossip[10002]["Option153"] = tHairStylist_Text[10002]["Option203"]
tNpcGossip[10002]["OptionFunc153"] = "HairStylist_GiveHair</N>10002</N>54</N>3"
tNpcGossip[10002]["Option154"] = tHairStylist_Text[10002]["Option204"]
tNpcGossip[10002]["OptionFunc154"] = "HairStylist_GiveHair</N>10002</N>55</N>3"

tNpcGossip[10002]["Text10-1"] = {1011}
tNpcGossip[10002]["Text1011"] = tHairStylist_Text[10002]["Text1011"]
tNpcGossip[10002]["tOption10-1"] = {1011,1012}
tNpcGossip[10002]["Option1011"] = tHairStylist_Text[10002]["Option1011"]
tNpcGossip[10002]["OptionPoint1011"] = "11-1"
tNpcGossip[10002]["Option1012"] = tHairStylist_Text[10002]["Option1012"]
tNpcGossip[10002]["OptionFunc1012"] = "LinkNpcGossipFunc_New</N>10002</S>1-1"

tNpcGossip[10002]["Text11-1"] = {1111}
tNpcGossip[10002]["Text1111"] = tHairStylist_Text[10002]["Text1111"]
tNpcGossip[10002]["tOption11-1"] = {1111}
tNpcGossip[10002]["Option1111"] = tHairStylist_Text[10002]["Option1111"]
tNpcGossip[10002]["OptionFunc1111"] = "HairStylist_GiveHairTask</N>10002</N>8</N>3"

tNpcGossip[10002]["Text11-2"] = {1121}
tNpcGossip[10002]["Text1121"] = tHairStylist_Text[10002]["Text1121"]
tNpcGossip[10002]["tOption11-2"] = {1121}
tNpcGossip[10002]["Option1121"] = tHairStylist_Text[10002]["Option1121"]

tNpcGossip[10002]["Text11-3"] = {1131}
tNpcGossip[10002]["Text1131"] = tHairStylist_Text[10002]["Text1131"]
tNpcGossip[10002]["tOption11-3"] = {1131,1132}
tNpcGossip[10002]["Option1131"] = tHairStylist_Text[10002]["Option1131"]
tNpcGossip[10002]["OptionFunc1131"] = "HairStylist_SetHairTask</N>10002"
tNpcGossip[10002]["Option1132"] = tHairStylist_Text[10002]["Option1132"]
