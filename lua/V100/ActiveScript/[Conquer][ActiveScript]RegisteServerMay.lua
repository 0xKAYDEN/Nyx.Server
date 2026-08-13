--------------------------------------------------------------------------------
---Name:160419[英文征服][活动脚本]5月新服活动-签到礼包及发奖action
--Creator: 	林强
--Created:	2016-04-19
--------------------------------------------------------------------------------





--命名规范
--RegisteServerMay_

--luaid 40224

-- 3100126~ 3100140
--log 12000359

-----------------------------------------------------------------数据区--------------------------------------------------------------------------


--log
local sRegisteServerMay_Log="0 0 %d 1 12000359 2 %d %d"
--光效
local sEffect="zf2-e280"


--礼包组
local tRegisteServerMay_Pack={}


--精致外套签到包
tRegisteServerMay_Pack[3100126]={}
tRegisteServerMay_Pack[3100126]["DialogIndex"]="1-1"
tRegisteServerMay_Pack[3100126]["RewardText"]=tRegisteServerMay_Text["CoatRewardText"]
--外套二选一
tRegisteServerMay_Pack[3100126]["Option"]={}
--赠品7天时效外套HolyArmor*1
tRegisteServerMay_Pack[3100126]["Option"][1]={}
tRegisteServerMay_Pack[3100126]["Option"][1]["Item_ID"]=189255
tRegisteServerMay_Pack[3100126]["Option"][1]["ItemAttr"]="0 1 3 10080"
--赠品7天时效外套FairyTale*1
tRegisteServerMay_Pack[3100126]["Option"][2]={}
tRegisteServerMay_Pack[3100126]["Option"][2]["Item_ID"]=189085
tRegisteServerMay_Pack[3100126]["Option"][2]["ItemAttr"]="0 1 3 10080"



--豪华外套签到包
tRegisteServerMay_Pack[3100127]={}
tRegisteServerMay_Pack[3100127]["DialogIndex"]="1-1"
tRegisteServerMay_Pack[3100127]["RewardText"]=tRegisteServerMay_Text["CoatRewardText"]
--外套三选一
tRegisteServerMay_Pack[3100127]["Option"]={}
--赠品7天时效外套WhiteCollarSuit*1
tRegisteServerMay_Pack[3100127]["Option"][1]={}
tRegisteServerMay_Pack[3100127]["Option"][1]["Item_ID"]=184365
tRegisteServerMay_Pack[3100127]["Option"][1]["ItemAttr"]="0 1 3 10080"
--赠品7天时效外套EveningWear*1
tRegisteServerMay_Pack[3100127]["Option"][2]={}
tRegisteServerMay_Pack[3100127]["Option"][2]["Item_ID"]=184355
tRegisteServerMay_Pack[3100127]["Option"][2]["ItemAttr"]="0 1 3 10080"
--赠品7天时效外套CharmingSuit*1
tRegisteServerMay_Pack[3100127]["Option"][3]={}
tRegisteServerMay_Pack[3100127]["Option"][3]["Item_ID"]=183485
tRegisteServerMay_Pack[3100127]["Option"][3]["ItemAttr"]="0 1 3 10080"



--快人一步签到包
tRegisteServerMay_Pack[3100128]= {}
tRegisteServerMay_Pack[3100128]["BagSpace"]=2
tRegisteServerMay_Pack[3100128]["RewardText"]=tRegisteServerMay_Text["RewardText"]
--3颗ExpBall（赠）
tRegisteServerMay_Pack[3100128]["Item"]={}
tRegisteServerMay_Pack[3100128]["Item"]["Item_ID"]= 723911
tRegisteServerMay_Pack[3100128]["Item"]["ItemAttr"]= "0 3 3"


--非凡强炼签到包
tRegisteServerMay_Pack[3100129]= {}
tRegisteServerMay_Pack[3100129]["RewardText"]=tRegisteServerMay_Text["RewardText"]
--3颗FavoredTrainingPill（赠）
tRegisteServerMay_Pack[3100129]["Item"]={}
tRegisteServerMay_Pack[3100129]["Item"]["Item_ID"]= 3003124
tRegisteServerMay_Pack[3100129]["Item"]["ItemAttr"]= "0 3 3"


--初级流星签到包
tRegisteServerMay_Pack[3100130]= {}
tRegisteServerMay_Pack[3100130]["BagSpace"]=1
tRegisteServerMay_Pack[3100130]["RewardText"]=tRegisteServerMay_Text["RewardText"]
--2颗Meteor（赠）
tRegisteServerMay_Pack[3100130]["Item"]={}
tRegisteServerMay_Pack[3100130]["Item"]["Item_ID"]= 1088001
tRegisteServerMay_Pack[3100130]["Item"]["ItemAttr"]= "0 2 3"

--高级流星签到包
tRegisteServerMay_Pack[3100131]= {}
tRegisteServerMay_Pack[3100131]["BagSpace"]=2
tRegisteServerMay_Pack[3100131]["RewardText"]=tRegisteServerMay_Text["RewardText"]
--3颗Meteor（赠）
tRegisteServerMay_Pack[3100131]["Item"]={}
tRegisteServerMay_Pack[3100131]["Item"]["Item_ID"]= 1088001
tRegisteServerMay_Pack[3100131]["Item"]["ItemAttr"]= "0 3 3"

--卓越赤炼签到包
tRegisteServerMay_Pack[3100132]= {}
tRegisteServerMay_Pack[3100132]["BagSpace"]=1
tRegisteServerMay_Pack[3100132]["RewardText"]=tRegisteServerMay_Text["RewardText"]
--2颗Stone(+2)（赠）
tRegisteServerMay_Pack[3100132]["Item"]={}
tRegisteServerMay_Pack[3100132]["Item"]["Item_ID"]= 730002
tRegisteServerMay_Pack[3100132]["Item"]["ItemAttr"]= "0 2 3"

--精致护心签到包
tRegisteServerMay_Pack[3100133]= {}
tRegisteServerMay_Pack[3100133]["BagSpace"]=1
tRegisteServerMay_Pack[3100133]["RewardText"]=tRegisteServerMay_Text["RewardText"]
--2颗ProtectionPill（赠）(2天时效激活)
tRegisteServerMay_Pack[3100133]["Item"]={}
tRegisteServerMay_Pack[3100133]["Item"]["Item_ID"]= 3002029
tRegisteServerMay_Pack[3100133]["Item"]["ItemAttr"]= "0 2 3 2880 1"

--良品凤吟签到包
tRegisteServerMay_Pack[3100134]= {}
tRegisteServerMay_Pack[3100134]["BagSpace"]= 1
tRegisteServerMay_Pack[3100134]["RewardText"]=tRegisteServerMay_Text["RewardText"]
--2颗RefinedPhoenixGem（赠）
tRegisteServerMay_Pack[3100134]["Item"]={}
tRegisteServerMay_Pack[3100134]["Item"]["Item_ID"]= 700002
tRegisteServerMay_Pack[3100134]["Item"]["ItemAttr"]= "0 2 3"

--良品龙恨签到包
tRegisteServerMay_Pack[3100135]= {}
tRegisteServerMay_Pack[3100135]["BagSpace"]= 1
tRegisteServerMay_Pack[3100135]["RewardText"]=tRegisteServerMay_Text["RewardText"]
--2颗RefinedDragonGem（赠）
tRegisteServerMay_Pack[3100135]["Item"]={}
tRegisteServerMay_Pack[3100135]["Item"]["Item_ID"]= 700012
tRegisteServerMay_Pack[3100135]["Item"]["ItemAttr"]= "0 2 3"

--豪华流星签到包
tRegisteServerMay_Pack[3100136]= {}
tRegisteServerMay_Pack[3100136]["BagSpace"]= 1
tRegisteServerMay_Pack[3100136]["RewardText"]=tRegisteServerMay_Text["RewardText"]
--2颗MeteorScroll（赠）
tRegisteServerMay_Pack[3100136]["Item"]={}
tRegisteServerMay_Pack[3100136]["Item"]["Item_ID"]= 720027
tRegisteServerMay_Pack[3100136]["Item"]["ItemAttr"]= "0 2 3"


--200赠点礼包
--200赠点
tRegisteServerMay_Pack[3100137]= {}
tRegisteServerMay_Pack[3100137]["RewardText"]=tRegisteServerMay_Text["RewardText"]
tRegisteServerMay_Pack[3100137]["Name"]=tRegisteServerMay_Text["ItemName"]["CPS"]
tRegisteServerMay_Pack[3100137]["Count"]= 200

--------------------------------------------------------逻辑区--------------------------------------------------------------
--使用获得物品的礼包
function RegisteServerMay_UsePack(nItemId)

    local tPack=tRegisteServerMay_Pack[nItemId]


    if tPack["DialogIndex"] ~=nil then     
       LinkItemGossipFunc_New(nItemId,tPack["DialogIndex"])
       return 
    end

    RegisteServerMay_Reward(nItemId,tPack["Item"]["Item_ID"],tPack["Item"]["ItemAttr"])
end 

--选项方法
function RegisteServerMay_SelectOption(nPackId,nOption)
             
   local tItem=tRegisteServerMay_Pack[nPackId]["Option"][nOption]
   RegisteServerMay_Reward(nPackId,tItem["Item_ID"],tItem["ItemAttr"]) 
   
end

--获得奖励物品
function RegisteServerMay_Reward(nPackId,nItemId,sItemAttr)
    
	--空间计算
    local nCount=RegisteServerMay_GetCount(sItemAttr)
    local nBagSpace=tRegisteServerMay_Pack[nPackId]["BagSpace"] or 0
    if nBagSpace>0 then
        if not User_CheckLeftSpace(nBagSpace) then
            Sys_MsgBox(string.format(tRegisteServerMay_Text["BagSpaceText"],nBagSpace))
            return 
        end
    end
     
	--删除礼包
    if not Item_ChkAccItem(nPackId,1) then
       return
    end

    if not Item_DelItem(nPackId) then
       return
    end 

	--获得物品
    Item_AddNewItem(nItemId,sItemAttr)
    Sys_SaveActionFestivalLog(string.format(sRegisteServerMay_Log,nPackId,nItemId,nCount))
	if nCount>1 then
	    User_TalkChannel2005(string.format(tRegisteServerMay_Pack[nPackId]["RewardText"],nCount,tRegisteServerMay_Text["ItemName"][nItemId]))
	else
	    User_TalkChannel2005(string.format(tRegisteServerMay_Pack[nPackId]["RewardText"],tRegisteServerMay_Text["ItemName"][nItemId]))
	end
	User_EffectAdd("self",sEffect)
end 



--打开非物品奖励礼包
function RegisteServerMay_NotItemReward(nPackId)
    
	--上限判断
	local nMaxCount=999999999-tRegisteServerMay_Pack[nPackId]["Count"]
	if Get_UserMonoEMoney()>nMaxCount then
		Sys_MsgBox(tRegisteServerMay_Text["MaxMonEmoney"])
		return
	end

	
	--删除礼包
    if not Item_ChkAccItem(nPackId,1) then
       return
    end

    if not Item_DelItem(nPackId) then
       return
    end 

	--获得天石
	User_AddEMoneyMono(tRegisteServerMay_Pack[nPackId]["Count"])
    Sys_SaveActionFestivalLog(string.format(sRegisteServerMay_Log,nPackId,3,tRegisteServerMay_Pack[nPackId]["Count"]))
	User_TalkChannel2005(string.format(tRegisteServerMay_Pack[nPackId]["RewardText"],tRegisteServerMay_Pack[nPackId]["Count"],tRegisteServerMay_Pack[nPackId]["Name"]))
	User_EffectAdd("self",sEffect)
end 



--获得数量
function RegisteServerMay_GetCount(sItemAttr)
    if sItemAttr ==nil then
        return 1
    end
    local tItemAttr = Sys_Split(sItemAttr," ")
	local count  = tonumber(tItemAttr[2]) or 1
    return count
end





-------------------------------------------------------------------------------物品模板---------------------------------------------


--精致外套签到包
tItem[3100126]=tItem[3100126] or {}
tItem[3100126]["Function"]=function(nItemId,sItemName)
    RegisteServerMay_UsePack(nItemId)
end

--豪华外套签到包
tItem[3100127]=tItem[3100127] or {}
tItem[3100127]["Function"]=function(nItemId,sItemName)
    RegisteServerMay_UsePack(nItemId)
end

--快人一步签到包
tItem[3100128]=tItem[3100128] or {}
tItem[3100128]["Function"]=function(nItemId,sItemName)
    RegisteServerMay_UsePack(nItemId)
end

--非凡强炼签到包
tItem[3100129]=tItem[3100128]
--初级流星签到包
tItem[3100130]=tItem[3100128]
--高级流星签到包
tItem[3100131]=tItem[3100128]
--卓越赤炼签到包
tItem[3100132]=tItem[3100128]
--精致护心签到包
tItem[3100133]=tItem[3100128]
--良品凤吟签到包
tItem[3100134]=tItem[3100128]
--良品龙恨签到包
tItem[3100135]=tItem[3100128]
--豪华流星签到包
tItem[3100136]=tItem[3100128]

--200赠点礼包
tItem[3100137]=tItem[3100137] or {}
tItem[3100137]["Function"]=function(nItemId,sItemName)
    RegisteServerMay_NotItemReward(nItemId)
end



--精致外套签到包对话
tItem[3100126]["Text1-1"]={111}
tItem[3100126]["Text111"]=tRegisteServerMay_Text["SelectCoatText"]

tItem[3100126]["tOption1-1"]={11,12,13}
tItem[3100126]["Option11"]=tRegisteServerMay_Text["ItemName"][189255]
tItem[3100126]["Option12"]=tRegisteServerMay_Text["ItemName"][189085]
tItem[3100126]["Option13"]=tRegisteServerMay_Text["ReGive"]
tItem[3100126]["OptionFunc11"]="RegisteServerMay_SelectOption</N>3100126</N>1"
tItem[3100126]["OptionFunc12"]="RegisteServerMay_SelectOption</N>3100126</N>2"


--豪华外套签到包对话
tItem[3100127]["Text1-1"]={111}
tItem[3100127]["Text111"]=tRegisteServerMay_Text["SelectCoatText"]

tItem[3100127]["tOption1-1"]={11,12,13,14}
tItem[3100127]["Option11"]=tRegisteServerMay_Text["ItemName"][184365]
tItem[3100127]["Option12"]=tRegisteServerMay_Text["ItemName"][184355]
tItem[3100127]["Option13"]=tRegisteServerMay_Text["ItemName"][183485]
tItem[3100127]["Option14"]=tRegisteServerMay_Text["ReGive"]
tItem[3100127]["OptionFunc11"]="RegisteServerMay_SelectOption</N>3100127</N>1"
tItem[3100127]["OptionFunc12"]="RegisteServerMay_SelectOption</N>3100127</N>2"
tItem[3100127]["OptionFunc13"]="RegisteServerMay_SelectOption</N>3100127</N>3"





