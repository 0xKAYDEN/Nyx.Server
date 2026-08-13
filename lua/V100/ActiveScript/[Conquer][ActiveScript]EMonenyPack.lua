--------------------------------------------------------------------------------
---Name:160505[英文征服][活动脚本]赠品天石礼包
--Creator: 	林强
--Created:	2016-05-05
--------------------------------------------------------------------------------

--前缀 EMonenyPack_

--40242

---------------------------------------------------------------------------数据区-------------------------------------------------------------------------------




local tEMonenyPack_Pack={}
tEMonenyPack_Pack["Activity"]="2016-05-05 00:00 2016-06-29 23:59"
tEMonenyPack_Pack["log"]="0,0,%d,1,12000389,2,3,%d"
tEMonenyPack_Pack["delLog"]="0,0,%d,1,12000389,2,0,0"
tEMonenyPack_Pack["MAXEmoney"]=999999999

--1600点天石赠礼包
tEMonenyPack_Pack[3200250]={}
tEMonenyPack_Pack[3200250]["BuyEmoney"]=1000
tEMonenyPack_Pack[3200250]["AwardEmoney"]=1600
tEMonenyPack_Pack[3200250]["EmoneyLog"]="350	20178	1000	1000	1	"

--1800点天石赠礼包
tEMonenyPack_Pack[3200251]={}
tEMonenyPack_Pack[3200251]["BuyEmoney"]=1000
tEMonenyPack_Pack[3200251]["AwardEmoney"]=1800
tEMonenyPack_Pack[3200251]["EmoneyLog"]="350	20179	1000	1000	1	"

--2000点天石赠礼包
tEMonenyPack_Pack[3200252]={}
tEMonenyPack_Pack[3200252]["BuyEmoney"]=1000
tEMonenyPack_Pack[3200252]["AwardEmoney"]=2000
tEMonenyPack_Pack[3200252]["EmoneyLog"]="350	20180	1000	1000	1	"

--8000点天石赠礼包
tEMonenyPack_Pack[3200253]={}
tEMonenyPack_Pack[3200253]["BuyEmoney"]=5000
tEMonenyPack_Pack[3200253]["AwardEmoney"]=8000
tEMonenyPack_Pack[3200253]["EmoneyLog"]="350	20181	5000	5000	1	"

--9000点天石赠礼包
tEMonenyPack_Pack[3200254]={}
tEMonenyPack_Pack[3200254]["BuyEmoney"]=5000
tEMonenyPack_Pack[3200254]["AwardEmoney"]=9000
tEMonenyPack_Pack[3200254]["EmoneyLog"]="350	20182	5000	5000	1	"

--10000点天石赠礼包
tEMonenyPack_Pack[3200255]={}
tEMonenyPack_Pack[3200255]["BuyEmoney"]=5000
tEMonenyPack_Pack[3200255]["AwardEmoney"]=10000
tEMonenyPack_Pack[3200255]["EmoneyLog"]="350	20183	5000	5000	1	"
-----------------------------------------------------------------------------------------------逻辑区------------------------------------------------------------------------------------



--礼包的使用
function EMonenyPack_SelectUse(nItemId)

	local tPack=tEMonenyPack_Pack[nItemId]

    --判断时间
	if not Sys_ChkFullTime(tEMonenyPack_Pack["Activity"]) then
		Item_DelItem(nItemId)
		Sys_SaveActionFestivalLog(string.format(tEMonenyPack_Pack["delLog"],nItemId))
		Sys_MsgBox(tEMonenyPack_Text["Msg_UseOutTime"])
		return
	end

	tItem[nItemId]["Text111"]=string.format(tEMonenyPack_Text["Text_Buy"],tPack["BuyEmoney"],tPack["AwardEmoney"])
	tItem[nItemId]["Option11"]=string.format(tEMonenyPack_Text["Option_OpenPack"],tPack["BuyEmoney"])
	tItem[nItemId]["OptionFunc11"]=string.format("EMonenyPack_SelectConfirmUse</N>%d",nItemId)
	LinkItemGossipFunc_New(nItemId,"1-1")
end

--选项礼包的二次确认
function EMonenyPack_SelectConfirmUse(nItemId)
	local tPack=tEMonenyPack_Pack[nItemId]
    tItem[nItemId]["Text222"]=string.format(tEMonenyPack_Text["Text_AgainBuy"],tPack["BuyEmoney"],tPack["AwardEmoney"])
    tItem[nItemId]["OptionFunc21"]=string.format("EMonenyPack_SelectBuyItem</N>%d",nItemId)
    LinkItemGossipFunc_New(nItemId,"2-1")
end

--购买
function EMonenyPack_SelectBuyItem(nItemId)
	local tPack=tEMonenyPack_Pack[nItemId]

	if not Item_ChkItem(nItemId) then
       return
    end
	
	--判断时间
	if not Sys_ChkFullTime(tEMonenyPack_Pack["Activity"]) then
		Item_DelItem(nItemId)
		Sys_SaveActionFestivalLog(string.format(tEMonenyPack_Pack["delLog"],nItemId))
		LinkItemGossipFunc_New(nItemId,"4-1")
		return
	end
	
	--检查赠点上限
	local nBEmoney=Get_UserMonoEMoney()+tPack["AwardEmoney"]
	if nBEmoney>tEMonenyPack_Pack["MAXEmoney"] then
		LinkItemGossipFunc_New(nItemId,"5-1")
		return
	end
	
	--检查天石
	if Get_UserEMoney()<tPack["BuyEmoney"] then
		LinkItemGossipFunc_New(nItemId,"3-1")
		return
    end

	--物品删除
    if not Item_DelItem(nItemId) then
		return
    end

	--扣除天石
    if not User_AddEMoney(-tPack["BuyEmoney"]) then
        return
    end

	--记录天石消费
	Sys_SaveEmoneyBuy(tPack["EmoneyLog"])



	--給钱
	User_AddEMoneyMono(tPack["AwardEmoney"])
	
	Sys_SaveActionFestivalLog(string.format(tEMonenyPack_Pack["log"],nItemId,tPack["AwardEmoney"]))
	User_TalkChannel2005(string.format(tEMonenyPack_Text["U2005_AwardEmoney"],tPack["AwardEmoney"]))
end




------------------------------------------------------------------------------------物品模板-------------------------------------------------------------------------



--1600点天石赠礼包
tItem[3200250]=tItem[3200250] or {}
tItem[3200250]["Function"]=function(nItemId,sItemName)
    EMonenyPack_SelectUse(nItemId)
end

--初始对话
tItem[3200250]["Text1-1"]={111}
tItem[3200250]["tOption1-1"]={11,12}
--111和11动态生成
tItem[3200250]["Option12"]= tEMonenyPack_Text["Option_ClosePack"]

--二次确认
tItem[3200250]["Text2-1"]={222}
--222动态生成
tItem[3200250]["tOption2-1"]={21,22}
tItem[3200250]["Option21"]=tEMonenyPack_Text["Option_SureOpen"]
tItem[3200250]["Option22"]= tEMonenyPack_Text["Option_ClosePack"]

--天石不足
tItem[3200250]["Text3-1"]={333}
tItem[3200250]["Text333"]=tEMonenyPack_Text["Text_NotHaveEmoney"]
tItem[3200250]["tOption3-1"]={31}
tItem[3200250]["Option31"]=tEMonenyPack_Text["Option_ISee"]

--过期
tItem[3200250]["Text4-1"]={444}
tItem[3200250]["Text444"]=tEMonenyPack_Text["Text_BuyOutTime"]
tItem[3200250]["tOption4-1"]={31}

--达到上限
tItem[3200250]["Text5-1"]={555}
tItem[3200250]["Text555"]=tEMonenyPack_Text["Text_EmoneyMax"]
tItem[3200250]["tOption4-1"]={31}

--1800点天石赠礼包
tItem[3200251]=tItem[3200250]
--2000点天石赠礼包
tItem[3200252]=tItem[3200250]
--8000点天石赠礼包
tItem[3200253]=tItem[3200250]
--9000点天石赠礼包
tItem[3200254]=tItem[3200250]
--10000点天石赠礼包
tItem[3200255]=tItem[3200250]

