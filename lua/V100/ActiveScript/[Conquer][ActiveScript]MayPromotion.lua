--------------------------------------------------------------------------------
---Name:160421[简体征服][活动脚本]玩家饱和度促销礼包发奖ID
--Creator: 	林强
--Created:	2016-04-22
--------------------------------------------------------------------------------

--前缀 MayPromotion_

--itemid 3200049-3200055		3312922-3312923
--action 564103-564108			572813-572814
--logid 12000389
--luaid 40235
--stc 
--14452 炼气修行特惠包
--14453 勤练武功特惠包
--14454 +6赤炼石特惠包
--14455 金钢坚钻特惠包
--14456 固化石特惠包
--14457 属性加成特惠包
--19772 神品精炼特惠包
--19773 神纹精粹特惠包

--40235 = V100\ActiveScript\[Conquer][ActiveScript]MayPromotion.lua
---------------------------------------------------------------------------数据区-------------------------------------------------------------------------------
local tMayPromotion_Const={}

-- tMayPromotion_Const["Event"]=144
tMayPromotion_Const["LogID"]=12000389

--礼包通用属性
local tMayPromotion_Pack={}
tMayPromotion_Pack["BagSpaceFull"]=tMayPromotion_Text["BagSpaceFull"]["Default"]
tMayPromotion_Pack["ItemAttr"]="0 1 3 4320 1"
tMayPromotion_Pack["NewItemAttr"]="0 1"

tMayPromotion_Pack["MaxUseCount"]=50
tMayPromotion_Pack["EmoneyLog"]="%d	%d	%d	%d	1	"
tMayPromotion_Pack["LogText"]="0,0,%d,1,%d,2,%s,%s"

--无选项礼包
local tMayPromotion_SimplePack={}
tMayPromotion_SimplePack["NormalText"]=tMayPromotion_Text["SimplePack"]["NormalText"]
tMayPromotion_SimplePack["ConfireText"]=tMayPromotion_Text["SimplePack"]["ConfireText"]
tMayPromotion_SimplePack["OpenOption"]=tMayPromotion_Text["SimplePack"]["OpenOption"]
tMayPromotion_SimplePack["NotEmoney"]=tMayPromotion_Text["SimplePack"]["NotEmoney"]
tMayPromotion_SimplePack["RewardText"]=tMayPromotion_Text["SimplePack"]["RewardText"]
tMayPromotion_SimplePack["DeleteRewardText"]=tMayPromotion_Text["SimplePack"]["DeleteRewardText"]



--炼气修行特惠包
tMayPromotion_SimplePack[3200049]={}
tMayPromotion_SimplePack[3200049]["Event"]=144
tMayPromotion_SimplePack[3200049]["Type"]=52
tMayPromotion_SimplePack[3200049]["Name"]=tMayPromotion_Text["SimplePack"][3200049]
tMayPromotion_SimplePack[3200049]["Emoney"]=4899
tMayPromotion_SimplePack[3200049]["HalfEmoney"]=2449
tMayPromotion_SimplePack[3200049]["EmoneyLogEvent"]=250
tMayPromotion_SimplePack[3200049]["EmoneyLogData"]=4093
--15000点气力值
tMayPromotion_SimplePack[3200049]["Item"]={}
tMayPromotion_SimplePack[3200049]["Item"][1]={}
tMayPromotion_SimplePack[3200049]["Item"][1]["ItemFunction"]=User_AddStrengthValue
tMayPromotion_SimplePack[3200049]["Item"][1]["ItemCount"]=15000
tMayPromotion_SimplePack[3200049]["Item"][1]["ItemLog"]=12

--勤练武功特惠包 
tMayPromotion_SimplePack[3200050]={}
tMayPromotion_SimplePack[3200050]["Event"]=144
tMayPromotion_SimplePack[3200050]["Type"]=53
tMayPromotion_SimplePack[3200050]["Name"]=tMayPromotion_Text["SimplePack"][3200050]
tMayPromotion_SimplePack[3200050]["Emoney"]=2599
tMayPromotion_SimplePack[3200050]["HalfEmoney"]=1299
tMayPromotion_SimplePack[3200050]["BagSpace"]=1
tMayPromotion_SimplePack[3200050]["EmoneyLogEvent"]=250
tMayPromotion_SimplePack[3200050]["EmoneyLogData"]=4094

--50颗秘制免费修炼丹（赠）
tMayPromotion_SimplePack[3200050]["Item"]={}
tMayPromotion_SimplePack[3200050]["Item"][1]={}
tMayPromotion_SimplePack[3200050]["Item"][1]["ItemID"]=3002926
tMayPromotion_SimplePack[3200050]["Item"][1]["ItemAttr"]="0 50"

--属性加成特惠包 
tMayPromotion_SimplePack[3200054]={}
tMayPromotion_SimplePack[3200054]["Event"]=144
tMayPromotion_SimplePack[3200054]["Type"]=57
tMayPromotion_SimplePack[3200054]["Name"]=tMayPromotion_Text["SimplePack"][3200054]
tMayPromotion_SimplePack[3200054]["Emoney"]=799
tMayPromotion_SimplePack[3200054]["HalfEmoney"]=399
tMayPromotion_SimplePack[3200054]["BagSpace"]=2
tMayPromotion_SimplePack[3200054]["BagSpaceFull"]=tMayPromotion_Text["BagSpaceFull"][3200054]

tMayPromotion_SimplePack[3200054]["EmoneyLogEvent"]=250
tMayPromotion_SimplePack[3200054]["EmoneyLogData"]=4097

--获得72小时 百炼天机果（赠）
tMayPromotion_SimplePack[3200054]["Item"]={}
tMayPromotion_SimplePack[3200054]["Item"][1]={}
tMayPromotion_SimplePack[3200054]["Item"][1]["ItemID"]=3001044
tMayPromotion_SimplePack[3200054]["Item"][1]["ItemAttr"]="0 1 3 4320 1"

--获得72小时 洗髓神露（赠）
tMayPromotion_SimplePack[3200054]["Item"][2]={}
tMayPromotion_SimplePack[3200054]["Item"][2]["ItemID"]=3001045
tMayPromotion_SimplePack[3200054]["Item"][2]["ItemAttr"]="0 1 3 4320 1"

--神品精炼特惠包 
tMayPromotion_SimplePack[3312922]={}
tMayPromotion_SimplePack[3312922]["Event"]=197
tMayPromotion_SimplePack[3312922]["Type"]=72
tMayPromotion_SimplePack[3312922]["Name"]=tMayPromotion_Text["SimplePack"][3312922]
tMayPromotion_SimplePack[3312922]["Emoney"]=1000
tMayPromotion_SimplePack[3312922]["HalfEmoney"]=500
tMayPromotion_SimplePack[3312922]["BagSpace"]=1
tMayPromotion_SimplePack[3312922]["EmoneyLogEvent"]=10000
tMayPromotion_SimplePack[3312922]["EmoneyLogData"]=0489

--50颗明亮星陨石
tMayPromotion_SimplePack[3312922]["Item"]={}
tMayPromotion_SimplePack[3312922]["Item"][1]={}
tMayPromotion_SimplePack[3312922]["Item"][1]["ItemID"]=3306159
tMayPromotion_SimplePack[3312922]["Item"][1]["ItemAttr"]="0 50"

--神纹精粹特惠包 
tMayPromotion_SimplePack[3312923]={}
tMayPromotion_SimplePack[3312923]["Event"]=197
tMayPromotion_SimplePack[3312923]["Type"]=73
tMayPromotion_SimplePack[3312923]["Name"]=tMayPromotion_Text["SimplePack"][3312923]
tMayPromotion_SimplePack[3312923]["Emoney"]=300
tMayPromotion_SimplePack[3312923]["HalfEmoney"]=150
tMayPromotion_SimplePack[3312923]["BagSpace"]=1
tMayPromotion_SimplePack[3312923]["EmoneyLogEvent"]=10000
tMayPromotion_SimplePack[3312923]["EmoneyLogData"]=0490

--100个万能神纹精粹
tMayPromotion_SimplePack[3312923]["Item"]={}
tMayPromotion_SimplePack[3312923]["Item"][1]={}
tMayPromotion_SimplePack[3312923]["Item"][1]["ItemID"]=4060001
tMayPromotion_SimplePack[3312923]["Item"][1]["ItemAttr"]="0 100"

--有选项礼包
local tMayPromotion_SelectPack={}
tMayPromotion_SelectPack["NormalText"]=tMayPromotion_Text["SelectPack"]["NormalText"]
tMayPromotion_SelectPack["ConfireText"]=tMayPromotion_Text["SelectPack"]["ConfireText"]
tMayPromotion_SelectPack["OpenOption"]=tMayPromotion_Text["SelectPack"]["OpenOption"]
tMayPromotion_SelectPack["NotEmoney"]=tMayPromotion_Text["SelectPack"]["NotEmoney"]
tMayPromotion_SelectPack["RewardText"]=tMayPromotion_Text["SelectPack"]["RewardText"]
tMayPromotion_SelectPack["DeleteRewardText"]=tMayPromotion_Text["SelectPack"]["DeleteRewardText"]


--+6赤炼石特惠包
tMayPromotion_SelectPack[3200051]={}
tMayPromotion_SelectPack[3200051]["Event"]=144
tMayPromotion_SelectPack[3200051]["Type"]=54
tMayPromotion_SelectPack[3200051]["BagSpace"]=1
tMayPromotion_SelectPack[3200051]["EmoneyLogEvent"]=250
tMayPromotion_SelectPack[3200051]["EmoneyLogData"]=4095

--72小时 非赠+6赤练石
tMayPromotion_SelectPack[3200051][1]={}
tMayPromotion_SelectPack[3200051][1]["ItemID"]=730006
tMayPromotion_SelectPack[3200051][1]["ItemAttr"]="0 1 0 4320 1"
tMayPromotion_SelectPack[3200051][1]["Emoney"]=1399
tMayPromotion_SelectPack[3200051][1]["HalfEmoney"]=699
tMayPromotion_SelectPack[3200051][1]["Name"]=tMayPromotion_Text["SelectPack"][3200051][1]
tMayPromotion_SelectPack[3200051][1]["ItemName"]=tMayPromotion_Text["SelectPack"][3200051]["ItemName1"]
tMayPromotion_SelectPack[3200051][1]["unit"]=tMayPromotion_Text["SelectPack"]["unit"][1]

--72小时 赠+6赤练石
tMayPromotion_SelectPack[3200051][2]={}
tMayPromotion_SelectPack[3200051][2]["ItemID"]=730006
tMayPromotion_SelectPack[3200051][2]["ItemAttr"]="0 1 3 4320 1"
tMayPromotion_SelectPack[3200051][2]["Emoney"]=1299
tMayPromotion_SelectPack[3200051][2]["HalfEmoney"]=649
tMayPromotion_SelectPack[3200051][2]["Name"]=tMayPromotion_Text["SelectPack"][3200051][2]
tMayPromotion_SelectPack[3200051][2]["ItemName"]=tMayPromotion_Text["SelectPack"][3200051]["ItemName2"]
tMayPromotion_SelectPack[3200051][2]["unit"]=tMayPromotion_Text["SelectPack"]["unit"][1]


--金钢坚钻特惠包
tMayPromotion_SelectPack[3200052]={}
tMayPromotion_SelectPack[3200052]["Event"]=144
tMayPromotion_SelectPack[3200052]["Type"]=55
tMayPromotion_SelectPack[3200052]["BagSpace"]=1
tMayPromotion_SelectPack[3200052]["EmoneyLogEvent"]=250
tMayPromotion_SelectPack[3200052]["EmoneyLogData"]=4096

--72小时 非赠金钢坚钻
tMayPromotion_SelectPack[3200052][1]={}
tMayPromotion_SelectPack[3200052][1]["ItemID"]=1200005
tMayPromotion_SelectPack[3200052][1]["ItemAttr"]="0 1 0 4320 1"
tMayPromotion_SelectPack[3200052][1]["Emoney"]=1399
tMayPromotion_SelectPack[3200052][1]["HalfEmoney"]=699
tMayPromotion_SelectPack[3200052][1]["Name"]=tMayPromotion_Text["SelectPack"][3200052][1]
tMayPromotion_SelectPack[3200052][1]["ItemName"]=tMayPromotion_Text["SelectPack"][3200052]["ItemName1"]
tMayPromotion_SelectPack[3200052][1]["unit"]=tMayPromotion_Text["SelectPack"]["unit"][2]

--72小时 赠金钢坚钻
tMayPromotion_SelectPack[3200052][2]={}
tMayPromotion_SelectPack[3200052][2]["ItemID"]=1200005
tMayPromotion_SelectPack[3200052][2]["ItemAttr"]="0 1 3 4320 1"
tMayPromotion_SelectPack[3200052][2]["Emoney"]=1299
tMayPromotion_SelectPack[3200052][2]["HalfEmoney"]=649
tMayPromotion_SelectPack[3200052][2]["Name"]=tMayPromotion_Text["SelectPack"][3200052][2]
tMayPromotion_SelectPack[3200052][2]["ItemName"]=tMayPromotion_Text["SelectPack"][3200052]["ItemName2"]
tMayPromotion_SelectPack[3200052][2]["unit"]=tMayPromotion_Text["SelectPack"]["unit"][2]


--固化石特惠包
tMayPromotion_SelectPack[3200053]={}
tMayPromotion_SelectPack[3200053]["Event"]=144
tMayPromotion_SelectPack[3200053]["Type"]=56
tMayPromotion_SelectPack[3200053]["BagSpace"]=1
tMayPromotion_SelectPack[3200053]["EmoneyLogEvent"]=250
tMayPromotion_SelectPack[3200053]["EmoneyLogData"]=4098

--72小时 非赠固化石
tMayPromotion_SelectPack[3200053][1]={}
tMayPromotion_SelectPack[3200053][1]["ItemID"]=723694
tMayPromotion_SelectPack[3200053][1]["ItemAttr"]="0 1 0 4320 1"
tMayPromotion_SelectPack[3200053][1]["Emoney"]=639
tMayPromotion_SelectPack[3200053][1]["HalfEmoney"]=319
tMayPromotion_SelectPack[3200053][1]["Name"]=tMayPromotion_Text["SelectPack"][3200053][1]
tMayPromotion_SelectPack[3200053][1]["ItemName"]=tMayPromotion_Text["SelectPack"][3200053]["ItemName1"]
tMayPromotion_SelectPack[3200053][1]["unit"]=tMayPromotion_Text["SelectPack"]["unit"][1]

--72小时 赠固化石
tMayPromotion_SelectPack[3200053][2]={}
tMayPromotion_SelectPack[3200053][2]["ItemID"]=723694
tMayPromotion_SelectPack[3200053][2]["ItemAttr"]="0 1 3 4320 1"
tMayPromotion_SelectPack[3200053][2]["Emoney"]=599
tMayPromotion_SelectPack[3200053][2]["HalfEmoney"]=299
tMayPromotion_SelectPack[3200053][2]["Name"]=tMayPromotion_Text["SelectPack"][3200053][2]
tMayPromotion_SelectPack[3200053][2]["ItemName"]=tMayPromotion_Text["SelectPack"][3200053]["ItemName2"]
tMayPromotion_SelectPack[3200053][2]["unit"]=tMayPromotion_Text["SelectPack"]["unit"][1]


-----------------------------------------------------------------------------------------------逻辑区------------------------------------------------------------------------------------

--无选项礼包的使用
function MayPromotion_SimpleUse(nItemId)
    --取次数
    local nEvent=tMayPromotion_SimplePack[nItemId]["Event"]
    local nType=tMayPromotion_SimplePack[nItemId]["Type"]
    local nCount=Get_UserStatisticValue(nEvent,nType)
    if nCount ==0 then
        nCount=1
        Task_SetStatistic(nEvent,nType,nCount,1)
    end



    --对白初始化
    local nEmoney
    if nCount %5 ==0 then
       nEmoney=tMayPromotion_SimplePack[nItemId]["HalfEmoney"]
    else
       nEmoney=tMayPromotion_SimplePack[nItemId]["Emoney"]
    end
	tItem[nItemId]["Text111"]=string.format(tMayPromotion_SimplePack["NormalText"],nCount,nEmoney) 
    tItem[nItemId]["Option11"]=string.format(tMayPromotion_SimplePack["OpenOption"],nEmoney)
    tItem[nItemId]["OptionFunc11"]=string.format("MayPromotion_SimpleConfirmUse</N>%d</N>%d",nItemId,nEmoney)
    LinkItemGossipFunc_New(nItemId,"1-1")
end

--无选项礼包的二次确认
function MayPromotion_SimpleConfirmUse(nItemId,nEmoney)
    tItem[nItemId]["Text222"]=string.format(tMayPromotion_SimplePack["ConfireText"],nEmoney,tMayPromotion_SimplePack[nItemId]["Name"])       
    tItem[nItemId]["OptionFunc21"]=string.format("MayPromotion_BuyItem</N>%d</N>%d",nItemId,nEmoney)
    LinkItemGossipFunc_New(nItemId,"2-1")
end

--购买物品
function MayPromotion_BuyItem(nItemId,nEmoney)

	--背包判断
	if tMayPromotion_SimplePack[nItemId]["BagSpace"]~=nil then
		if not User_CheckLeftSpace(tMayPromotion_SimplePack[nItemId]["BagSpace"]) then
			local sBagFull=tMayPromotion_SimplePack[nItemId]["BagSpaceFull"] or tMayPromotion_Pack["BagSpaceFull"] 
			tItem[nItemId]["Text333"]=sBagFull
			LinkItemGossipFunc_New(nItemId,"3-1")        
			return 
		end
	end

	

    --检查天石
    if Get_UserEMoney()<nEmoney then
		tItem[nItemId]["Text444"]=string.format(tMayPromotion_SimplePack["NotEmoney"],nEmoney) 
        LinkItemGossipFunc_New(nItemId,"4-1")
		return
    end
	
	--物品删除
    if not Item_ChkItem(nItemId) then
       return
    end
    if not Item_DelItem(nItemId) then
       return
    end

	--扣除天石
    if not User_AddEMoney(-nEmoney) then
        return
    end

    --天石消耗log
	Sys_SaveEmoneyBuy(string.format(tMayPromotion_Pack["EmoneyLog"],tMayPromotion_SimplePack[nItemId]["EmoneyLogEvent"],tMayPromotion_SimplePack[nItemId]["EmoneyLogData"],nEmoney,nEmoney))


    local nEvent=tMayPromotion_SimplePack[nItemId]["Event"]
    local nType=tMayPromotion_SimplePack[nItemId]["Type"]
    --记录掩码
    Task_AddStatistic(nEvent,nType,1,1)

	local bIsDelete=false
    --给礼包
    if Task_ChkStcValue(nEvent,nType,"<=",tMayPromotion_Pack["MaxUseCount"]) then
		if nItemId == 3312923 then
			Item_AddNewItem(nItemId,tMayPromotion_Pack["NewItemAttr"])
		else
			Item_AddNewItem(nItemId,tMayPromotion_Pack["ItemAttr"])
		end
	else
		bIsDelete=true
		--满50次后，掩码清零
		Task_SetStatistic(nEvent,nType,0,1)
    end

    
    --给奖励
    local sLogItem=""
    local sLogCount=""
	local nLogItem
	local nLogCount
	for key,value in ipairs(tMayPromotion_SimplePack[nItemId]["Item"]) do
		if value["ItemFunction"]~=nil then
			--获得物品
			value["ItemFunction"](value["ItemCount"])
			nLogItem=value["ItemLog"]
			nLogCount=value["ItemCount"]
		else
			--获得物品
			Item_AddNewItem(value["ItemID"],value["ItemAttr"])
			nLogItem=value["ItemID"]
			nLogCount=MayPromotion_GetCount(value["ItemAttr"])
		end

		if key ==1 then
			sLogItem=sLogItem..nLogItem
			sLogCount=sLogCount..nLogCount
		else
			sLogItem=sLogItem.."["..nLogItem.."]"
			sLogCount=sLogCount.."["..nLogCount.."]"
		end
	end


    --提示
	if bIsDelete then
		User_TalkChannel2005(string.format(tMayPromotion_SimplePack["DeleteRewardText"],tMayPromotion_SimplePack[nItemId]["Name"],tMayPromotion_Pack["MaxUseCount"]))
	else
		User_TalkChannel2005(string.format(tMayPromotion_SimplePack["RewardText"],tMayPromotion_SimplePack[nItemId]["Name"]))
		sLogItem=sLogItem.."["..nItemId.."]"
		sLogCount=sLogCount.."[1]"
	end
	--log
	Sys_SaveActionFestivalLog(string.format(tMayPromotion_Pack["LogText"],nItemId,tMayPromotion_Const["LogID"],sLogItem,sLogCount))
end



--选项礼包的使用
function MayPromotion_SelectUse(nItemId)

	local tPack=tMayPromotion_SelectPack[nItemId]
    --取次数
    local nEvent=tPack["Event"]
    local nType=tPack["Type"]   
    local nCount=Get_UserStatisticValue(nEvent,nType)
    if nCount ==0 then
        nCount=1
        Task_SetStatistic(nEvent,nType,nCount,1)
    end

    --对白初始化

    if nCount %5 ==0 then
       tItem[nItemId]["Text111"]=string.format(tMayPromotion_SelectPack["NormalText"],nCount,tPack[1]["HalfEmoney"],tPack[1]["unit"],tPack[1]["Name"],tPack[2]["HalfEmoney"],tPack[2]["unit"],tPack[2]["Name"])   
       tItem[nItemId]["Option11"]=string.format(tMayPromotion_SelectPack["OpenOption"],tPack[1]["ItemName"],tPack[1]["HalfEmoney"])
	   tItem[nItemId]["Option12"]=string.format(tMayPromotion_SelectPack["OpenOption"],tPack[2]["ItemName"],tPack[2]["HalfEmoney"])
	   tItem[nItemId]["OptionFunc11"]=string.format("MayPromotion_SelectConfirmUse</N>%d</N>%d</N>%d",nItemId,tPack[1]["HalfEmoney"],1)
	   tItem[nItemId]["OptionFunc12"]=string.format("MayPromotion_SelectConfirmUse</N>%d</N>%d</N>%d",nItemId,tPack[2]["HalfEmoney"],2)
	else
       tItem[nItemId]["Text111"]=string.format(tMayPromotion_SelectPack["NormalText"],nCount,tPack[1]["Emoney"],tPack[1]["unit"],tPack[1]["Name"],tPack[2]["Emoney"],tPack[2]["unit"],tPack[2]["Name"]) 
       tItem[nItemId]["Option11"]=string.format(tMayPromotion_SelectPack["OpenOption"],tPack[1]["ItemName"],tPack[1]["Emoney"])
	   tItem[nItemId]["Option12"]=string.format(tMayPromotion_SelectPack["OpenOption"],tPack[2]["ItemName"],tPack[2]["Emoney"])
	   tItem[nItemId]["OptionFunc11"]=string.format("MayPromotion_SelectConfirmUse</N>%d</N>%d</N>%d",nItemId,tPack[1]["Emoney"],1)
	   tItem[nItemId]["OptionFunc12"]=string.format("MayPromotion_SelectConfirmUse</N>%d</N>%d</N>%d",nItemId,tPack[2]["Emoney"],2)
	end

    LinkItemGossipFunc_New(nItemId,"1-1")
end

--选项礼包的二次确认
function MayPromotion_SelectConfirmUse(nItemId,nEmoney,nOption)
    tItem[nItemId]["Text222"]=string.format(tMayPromotion_SelectPack["ConfireText"],nEmoney,tMayPromotion_SelectPack[nItemId][nOption]["unit"],tMayPromotion_SelectPack[nItemId][nOption]["Name"])       
    tItem[nItemId]["OptionFunc21"]=string.format("MayPromotion_SelectBuyItem</N>%d</N>%d</N>%d",nItemId,nEmoney,nOption)
    LinkItemGossipFunc_New(nItemId,"2-1")
end

--选项礼包购买物品
function MayPromotion_SelectBuyItem(nItemId,nEmoney,nOption)

	--背包判断
	if tMayPromotion_SelectPack[nItemId]["BagSpace"]~=nil then
		if not User_CheckLeftSpace(tMayPromotion_SelectPack[nItemId]["BagSpace"]) then
			local sBagFull=tMayPromotion_SelectPack[nItemId]["BagSpaceFull"] or tMayPromotion_Pack["BagSpaceFull"] 
			tItem[nItemId]["Text333"]=sBagFull
			LinkItemGossipFunc_New(nItemId,"3-1")        
			return 
		end
	end

	

    --检查天石
    if Get_UserEMoney()<nEmoney then
		tItem[nItemId]["Text444"]=string.format(tMayPromotion_SimplePack["NotEmoney"],nEmoney) 
        LinkItemGossipFunc_New(nItemId,"4-1")
		return
    end
	
	--物品删除
    if not Item_ChkItem(nItemId) then
       return
    end
    if not Item_DelItem(nItemId) then
       return
    end

	--扣除天石
    if not User_AddEMoney(-nEmoney) then
        return
    end

    --天石消耗log
	Sys_SaveEmoneyBuy(string.format(tMayPromotion_Pack["EmoneyLog"],tMayPromotion_SelectPack[nItemId]["EmoneyLogEvent"],tMayPromotion_SelectPack[nItemId]["EmoneyLogData"],nEmoney,nEmoney))


    local nEvent=tMayPromotion_SelectPack[nItemId]["Event"]
    local nType=tMayPromotion_SelectPack[nItemId]["Type"]
    --记录掩码
    Task_AddStatistic(nEvent,nType,1,1)

	local bIsDelete=false
    --给礼包
    if Task_ChkStcValue(nEvent,nType,"<=",tMayPromotion_Pack["MaxUseCount"]) then
        Item_AddNewItem(nItemId,tMayPromotion_Pack["ItemAttr"])
	else
		bIsDelete=true
		--满50次后，掩码清零
		Task_SetStatistic(nEvent,nType,0,1)
    end

    
    --给奖励
    local sLogItem=""..tMayPromotion_SelectPack[nItemId][nOption]["ItemID"]
    local sLogCount=""..MayPromotion_GetCount(tMayPromotion_SelectPack[nItemId][nOption]["ItemAttr"])
	Item_AddNewItem(tMayPromotion_SelectPack[nItemId][nOption]["ItemID"],tMayPromotion_SelectPack[nItemId][nOption]["ItemAttr"])


    --提示
	if bIsDelete then
		User_TalkChannel2005(string.format(tMayPromotion_SelectPack["DeleteRewardText"],tMayPromotion_SelectPack[nItemId][nOption]["unit"],tMayPromotion_SelectPack[nItemId][nOption]["Name"],tMayPromotion_Pack["MaxUseCount"]))
	else
		User_TalkChannel2005(string.format(tMayPromotion_SelectPack["RewardText"],tMayPromotion_SelectPack[nItemId][nOption]["unit"],tMayPromotion_SelectPack[nItemId][nOption]["Name"]))
		sLogItem=sLogItem.."["..nItemId.."]"
		sLogCount=sLogCount.."[1]"
	end
	--log
	Sys_SaveActionFestivalLog(string.format(tMayPromotion_Pack["LogText"],nItemId,tMayPromotion_Const["LogID"],sLogItem,sLogCount))
end

--获取数量
function MayPromotion_GetCount(sItemAttr)
    if sItemAttr ==nil then
        return 1
    end
    local tItemAttr = Sys_Split(sItemAttr," ")
	local count  = tonumber(tItemAttr[2]) or 1
    return count
end


------------------------------------------------------------------------------------物品模板-------------------------------------------------------------------------

--炼气修行特惠包
tItem[3200049]=tItem[3200049] or {}
tItem[3200049]["Function"]=function(nItemId,sItemName)
    MayPromotion_SimpleUse(nItemId)
end

--初始对话
tItem[3200049]["Text1-1"]={111}
tItem[3200049]["tOption1-1"]={11,12}
tItem[3200049]["Option12"]= tMayPromotion_Text["option"]["close"]

--二次确认
tItem[3200049]["Text2-1"]={222}
tItem[3200049]["tOption2-1"]={21,22}
tItem[3200049]["Option21"]=tMayPromotion_Text["option"]["sure"]
tItem[3200049]["Option22"]= tMayPromotion_Text["option"]["close"]

--空间不足对话
tItem[3200049]["Text3-1"]={333}
tItem[3200049]["tOption3-1"]={31}
tItem[3200049]["Option31"]=tMayPromotion_Text["option"]["clear"]

--天石不足
tItem[3200049]["Text4-1"]={444}
tItem[3200049]["tOption4-1"]={41}
tItem[3200049]["Option41"]=tMayPromotion_Text["option"]["ready"]

--勤练武功特惠包
tItem[3200050]=tItem[3200049]
--属性加成特惠包
tItem[3200054]=tItem[3200049]
--神品精炼特惠包
tItem[3312922]=tItem[3200049]
--神纹精粹特惠包
tItem[3312923]=tItem[3200049]


--+6赤炼石特惠包
tItem[3200051]=tItem[3200051] or {}
tItem[3200051]["Function"]=function(nItemId,sItemName)
    MayPromotion_SelectUse(nItemId)
end

--初始对话
tItem[3200051]["Text1-1"]={111}
tItem[3200051]["tOption1-1"]={11,12,13}
tItem[3200051]["Option13"]= tMayPromotion_Text["option"]["close"]

--二次确认
tItem[3200051]["Text2-1"]={222}
tItem[3200051]["tOption2-1"]={21,22}
tItem[3200051]["Option21"]=tMayPromotion_Text["option"]["sure"]
tItem[3200051]["Option22"]= tMayPromotion_Text["option"]["close"]

--空间不足对话
tItem[3200051]["Text3-1"]={333}
tItem[3200051]["tOption3-1"]={31}
tItem[3200051]["Option31"]=tMayPromotion_Text["option"]["clear"]

--天石不足
tItem[3200051]["Text4-1"]={444}
tItem[3200051]["tOption4-1"]={41}
tItem[3200051]["Option41"]=tMayPromotion_Text["option"]["ready"]

--金钢坚钻特惠包
tItem[3200052]=tItem[3200051]
--固化石特惠包
tItem[3200053]=tItem[3200051]