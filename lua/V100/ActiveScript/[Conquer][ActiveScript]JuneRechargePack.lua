--------------------------------------------------------------------------------
---Name:160518[英文征服][活动脚本]6月充值礼包
--Creator: 	林强
--Created:	2016-05-18
--------------------------------------------------------------------------------


--item 3200347-3200354
--logid 12000403
--luaid 40245


--命名规范
--JuneRechargePack_


-----------------------------------------------------数据区--------------------------------------------------------------------



--常量
local tJuneRechargePack_Const={}
tJuneRechargePack_Const["MAXEmoney"]=999999999
tJuneRechargePack_Const["Log"]="0,0,%d,1,12000403,2,%d,%d"
tJuneRechargePack_Const["Object"]="self"
tJuneRechargePack_Const["Effect"]="zf2-e280"

local tJuneRechargePack_Pack={}
--修行无疆礼包礼包
tJuneRechargePack_Pack[3200347]={}
tJuneRechargePack_Pack[3200347]["RewardName"]=tJuneRechargePack_Text["RewardName"][3200347]
tJuneRechargePack_Pack[3200347]["Count"]=1000
tJuneRechargePack_Pack[3200347]["Function"]=User_AddCultivation
tJuneRechargePack_Pack[3200347]["LogEvent"]=6


--瑰丽气力包
tJuneRechargePack_Pack[3200348]={}
tJuneRechargePack_Pack[3200348]["RewardName"]=tJuneRechargePack_Text["RewardName"][3200348]
tJuneRechargePack_Pack[3200348]["Count"]=3000
tJuneRechargePack_Pack[3200348]["Function"]=User_AddStrengthValue
tJuneRechargePack_Pack[3200348]["LogEvent"]=12


--辉煌气力包  
tJuneRechargePack_Pack[3200349]={}
tJuneRechargePack_Pack[3200349]["RewardName"]=tJuneRechargePack_Text["RewardName"][3200349]
tJuneRechargePack_Pack[3200349]["Count"]=10000
tJuneRechargePack_Pack[3200349]["Function"]=User_AddStrengthValue
tJuneRechargePack_Pack[3200349]["LogEvent"]=12


--璀璨气力包  
tJuneRechargePack_Pack[3200350]={}
tJuneRechargePack_Pack[3200350]["RewardName"]=tJuneRechargePack_Text["RewardName"][3200350]
tJuneRechargePack_Pack[3200350]["Count"]=25000
tJuneRechargePack_Pack[3200350]["Function"]=User_AddStrengthValue
tJuneRechargePack_Pack[3200350]["LogEvent"]=12


--锦绣天成外套包
tJuneRechargePack_Pack[3200351]={}
tJuneRechargePack_Pack[3200351]["DialogIndex"]="1-1"
--下面外套四选一
tJuneRechargePack_Pack[3200351]["Option"]={}
--TenderFlame
tJuneRechargePack_Pack[3200351]["Option"][1]={}
tJuneRechargePack_Pack[3200351]["Option"][1]["Item_ID"]=188755
tJuneRechargePack_Pack[3200351]["Option"][1]["ItemAttr"]="0 1"
--SpringShirt
tJuneRechargePack_Pack[3200351]["Option"][2]={}
tJuneRechargePack_Pack[3200351]["Option"][2]["Item_ID"]=192525
tJuneRechargePack_Pack[3200351]["Option"][2]["ItemAttr"]="0 1"
--CatWeaponAccessoryPack(Charm)
tJuneRechargePack_Pack[3200351]["Option"][3]={}
tJuneRechargePack_Pack[3200351]["Option"][3]["Item_ID"]=3007989
tJuneRechargePack_Pack[3200351]["Option"][3]["ItemAttr"]="0 1"
--RodofRosesAccessoryPack
tJuneRechargePack_Pack[3200351]["Option"][4]={}
tJuneRechargePack_Pack[3200351]["Option"][4]["Item_ID"]=3003530
tJuneRechargePack_Pack[3200351]["Option"][4]["ItemAttr"]="0 1"


--雍容华贵外套包
tJuneRechargePack_Pack[3200352]={}
tJuneRechargePack_Pack[3200352]["DialogIndex"]="1-1"
--下面外套三选一
tJuneRechargePack_Pack[3200352]["Option"]={}
--LavaCatRobe(Charm)
tJuneRechargePack_Pack[3200352]["Option"][1]={}
tJuneRechargePack_Pack[3200352]["Option"][1]["Item_ID"]=193555
tJuneRechargePack_Pack[3200352]["Option"][1]["ItemAttr"]="0 1"
--FrozenFantasy(Glaze)
tJuneRechargePack_Pack[3200352]["Option"][2]={}
tJuneRechargePack_Pack[3200352]["Option"][2]["Item_ID"]=193445
tJuneRechargePack_Pack[3200352]["Option"][2]["ItemAttr"]="0 1"
--ButterflyRose
tJuneRechargePack_Pack[3200352]["Option"][3]={}
tJuneRechargePack_Pack[3200352]["Option"][3]["Item_ID"]=193625
tJuneRechargePack_Pack[3200352]["Option"][3]["ItemAttr"]="0 1"


--梦幻缤纷外套包
tJuneRechargePack_Pack[3200353]={}
tJuneRechargePack_Pack[3200353]["DialogIndex"]="1-1"
--下面外套二选一
tJuneRechargePack_Pack[3200353]["Option"]={}
--DreamyFairySuit
tJuneRechargePack_Pack[3200353]["Option"][1]={}
tJuneRechargePack_Pack[3200353]["Option"][1]["Item_ID"]=192125
tJuneRechargePack_Pack[3200353]["Option"][1]["ItemAttr"]="0 1"
--ColorOfWind
tJuneRechargePack_Pack[3200353]["Option"][2]={}
tJuneRechargePack_Pack[3200353]["Option"][2]["Item_ID"]=192425
tJuneRechargePack_Pack[3200353]["Option"][2]["ItemAttr"]="0 1"



-----------------------------------------------------------------------逻辑部分---------------------------------------------------------------

--检测天石上限
function JuneRechargePack_CheckMaxEmoney(nAddEmoney)
	local nEmoney=Get_UserEMoney()+nAddEmoney
	if nEmoney>tJuneRechargePack_Const["MAXEmoney"] then
		Sys_MsgBox(tJuneRechargePack_Text["MAXEmoneyTip"])
		return false
	end
	return true
end


--直接打开的礼包
function JuneRechargePack_UsePack(nPackId)
    --检测礼包
    if not Item_ChkItem(nPackId) then
       return
    end

    if not Item_DelItem(nPackId) then
       return
    end 
	
	--判断是否需要检测
	if tJuneRechargePack_Pack[nPackId]["ChkFunction"] then
		if not JuneRechargePack_CheckMaxEmoney(tJuneRechargePack_Pack[nPackId]["Count"]) then
			return
		end
	end
	tJuneRechargePack_Pack[nPackId]["Function"](tJuneRechargePack_Pack[nPackId]["Count"])
	
	Sys_SaveActionFestivalLog(string.format(tJuneRechargePack_Const["Log"],nPackId,tJuneRechargePack_Pack[nPackId]["LogEvent"],tJuneRechargePack_Pack[nPackId]["Count"]))

    User_TalkChannel2005(string.format(tJuneRechargePack_Text["TipReward"],tJuneRechargePack_Text["RewardName"][nPackId]))
	User_EffectAdd(tJuneRechargePack_Const["Object"],tJuneRechargePack_Const["Effect"])
end

--选项礼包的打开
function JuneRechargePack_UseSelectPack(nPackId)
	local tOption=tJuneRechargePack_Pack[nPackId]["Option"]
	local nCount=#tOption
	tItem[nPackId]["Text111"]=string.format(tJuneRechargePack_Text["Text111"],nCount)
	--生成对话
	for i=1,nCount do
		local nOption=tItem[nPackId]["tOption1-1"][i]
		tItem[nPackId]["Option"..nOption]=tJuneRechargePack_Text["RewardName"][tOption[i]["Item_ID"]]
		tItem[nPackId]["OptionFunc"..nOption]=string.format("JuneRechargePack_SelectOption</N>%d</N>%d",nPackId,i)
	end
	LinkItemGossipFunc_New(nPackId,"1-1")
end

--选项
function JuneRechargePack_SelectOption(nPackId,nOption)
	local tSelectItem=tJuneRechargePack_Pack[nPackId]["Option"][nOption]
	local sName=tJuneRechargePack_Text["RewardName"][tSelectItem["Item_ID"]]
	--生成对话
	tItem[nPackId]["Text222"]=string.format(tJuneRechargePack_Text["TextSelectConfirm"],sName)
	
	tItem[nPackId]["OptionFunc21"]=string.format("JuneRechargePack_Reward</N>%d</N>%d</S>%s",nPackId,tSelectItem["Item_ID"],tSelectItem["ItemAttr"])
	
	tItem[nPackId]["OptionFunc22"]=string.format("JuneRechargePack_UseSelectPack</N>%d",nPackId)

	LinkItemGossipFunc_New(nPackId,"2-1")
end

--获得物品
function JuneRechargePack_Reward(nPackId,nItemId,sItemAttr)
    
    if not Item_ChkItem(nPackId) then
       return
    end

    if not Item_DelItem(nPackId) then
       return
    end 

    Item_AddNewItem(nItemId,sItemAttr)

	Sys_SaveActionFestivalLog(string.format(tJuneRechargePack_Const["Log"],nPackId,nItemId,1))

    User_TalkChannel2005(string.format(tJuneRechargePack_Text["TipReward"],tJuneRechargePack_Text["RewardName"][nItemId]))
	User_EffectAdd(tJuneRechargePack_Const["Object"],tJuneRechargePack_Const["Effect"])
end 








------------------------------------------------------------------------------


--修行无疆礼包礼包
tItem[3200347]=tItem[3200347] or {}
tItem[3200347]["Function"]=function(nItemId,sItemName)
    JuneRechargePack_UsePack(nItemId)
end

--瑰丽天石包
tItem[3200348]=tItem[3200347]
--辉煌天石包
tItem[3200349]=tItem[3200347]
--璀璨天石包
tItem[3200350]=tItem[3200347]

--锦绣天成外套包
tItem[3200351]=tItem[3200351] or {}
tItem[3200351]["Function"]=function(nItemId,sItemName)
    JuneRechargePack_UseSelectPack(nItemId)
end
tItem[3200351]["Text1-1"]={111}
tItem[3200351]["tOption1-1"]={11,12,13,14,15}
tItem[3200351]["Option15"]=tJuneRechargePack_Text["ReGive"]

tItem[3200351]["Text2-1"]={222}
tItem[3200351]["tOption2-1"]={21,22}
tItem[3200351]["Option21"]=tJuneRechargePack_Text["Confirm"]
tItem[3200351]["Option22"]=tJuneRechargePack_Text["ReSelect"]

--雍容华贵外套包
tItem[3200352]=tItem[3200352] or {}
tItem[3200352]["Function"]=function(nItemId,sItemName)
    JuneRechargePack_UseSelectPack(nItemId)
end
tItem[3200352]["Text1-1"]={111}
tItem[3200352]["tOption1-1"]={11,12,13,14}
tItem[3200352]["Option14"]=tJuneRechargePack_Text["ReGive"]

tItem[3200352]["Text2-1"]={222}
tItem[3200352]["tOption2-1"]={21,22}
tItem[3200352]["Option21"]=tJuneRechargePack_Text["Confirm"]
tItem[3200352]["Option22"]=tJuneRechargePack_Text["ReSelect"]

--梦幻缤纷外套包
tItem[3200353]=tItem[3200353] or {}
tItem[3200353]["Function"]=function(nItemId,sItemName)
    JuneRechargePack_UseSelectPack(nItemId)
end
tItem[3200353]["Text1-1"]={111}
tItem[3200353]["tOption1-1"]={11,12,13}
tItem[3200353]["Option13"]=tJuneRechargePack_Text["ReGive"]

tItem[3200353]["Text2-1"]={222}
tItem[3200353]["tOption2-1"]={21,22}
tItem[3200353]["Option21"]=tJuneRechargePack_Text["Confirm"]
tItem[3200353]["Option22"]=tJuneRechargePack_Text["ReSelect"]