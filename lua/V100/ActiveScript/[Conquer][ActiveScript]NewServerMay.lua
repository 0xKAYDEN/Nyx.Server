--------------------------------------------------------------------------------
---Name:160407[英文征服][活动脚本]5月新服活动-预约礼包及发奖action
--Creator: 	林强
--Created:	2016-04-07
--------------------------------------------------------------------------------
--logid:12000344

--stc 14388
----stc掩码说明：
----ste(143,88)  :
		-- 是否已领取礼包

--Global:80168 
-- data1 表示初露锋芒礼包开出免试金牌的数量
-- data2 表示纵横江湖礼包开出免试金牌的数量
--命名规范
--NewServerMay_

---------------------------------------------------------------------------------------------------------------------------------

local nNewServerMay_DynaID=80168
local nNewServerMay_Log=12000344

-- local tNewServerMay_Activity={}
-- tNewServerMay_Activity["ActivityTime"]="2016-05-05 00:00 2016-05-05 23:59"

local tNewServerMay_Stc={}

tNewServerMay_Stc["Pack"]={}
tNewServerMay_Stc["Pack"]["EventType"]=143
tNewServerMay_Stc["Pack"]["DateType"]=88
tNewServerMay_Stc["Pack"]["Have"]=1
tNewServerMay_Stc["Pack"]["BagSpaceText"]=tNewServerMay_Text["GetPackBagSpaceTip"]




local tNewServerMay_Item={}
tNewServerMay_Item["GetTip"]=tNewServerMay_Text["GetTipText"]

--二转15级以上获得 旷世豪杰礼包
tNewServerMay_Item[1]={}
tNewServerMay_Item[1]["Metempsychosis"]=2
tNewServerMay_Item[1]["Level"]=16
tNewServerMay_Item[1]["ItemID"]=3008983
tNewServerMay_Item[1]["ItemAttr"]="0 1 3 43200 1"
tNewServerMay_Item[1]["Name"]=tNewServerMay_Text["TwoMetempsychosis"]


--一转80以上 二转15级以下（含15）获得 纵横江湖礼包
tNewServerMay_Item[2]={}
tNewServerMay_Item[2]["Metempsychosis"]=1
tNewServerMay_Item[2]["Level"]=80
tNewServerMay_Item[2]["ItemID"]=3008982
tNewServerMay_Item[2]["ItemAttr"]="0 1 3 43200 1"
tNewServerMay_Item[2]["Name"]=tNewServerMay_Text["OneMetempsychosis"]


--0级以上获得 初露锋芒礼包
tNewServerMay_Item[3]={}
tNewServerMay_Item[3]["Metempsychosis"]=0
tNewServerMay_Item[3]["Level"]=0
tNewServerMay_Item[3]["ItemID"]=3008981
tNewServerMay_Item[3]["ItemAttr"]="0 1 3 43200 1"
tNewServerMay_Item[3]["Name"]=tNewServerMay_Text["NewPlayer"]



---------------------------------------------礼包奖励表——————————————————————————————————————
--礼包开出的物品皆为赠品
local tNewServerMay_Pack={}
tNewServerMay_Pack["BagSpaceTip"]=tNewServerMay_Text["BagSpaceTip"]


--新号或者在老服等级1转80级以下礼包奖励表
tNewServerMay_Pack[3008981]={}

--礼包单服开出的免试金牌数量>5以后.只能获得清心符
tNewServerMay_Pack[3008981]["LimitItemId"]= 723701
tNewServerMay_Pack[3008981]["Pos"]=1
tNewServerMay_Pack[3008981]["ChangeItemId"] = 720128
tNewServerMay_Pack[3008981]["LimitCount"] = 5
tNewServerMay_Pack[3008981]["ChangeItemAttr"] = "0 1 3"


tNewServerMay_Pack[3008981][1]={}
tNewServerMay_Pack[3008981][1]["BagSpace"]= 4
tNewServerMay_Pack[3008981][1]["ItemChanceSum"] = 10000
tNewServerMay_Pack[3008981][1]["Log"] = "0,0,3008981,1,12000243,2,720027[1200001][723700][%d],1[1][5][%d]"
tNewServerMay_Pack[3008981][1]["RewardText"]=tNewServerMay_Text["RewardText3008981"]

-- 21%的几率获得 赠品+3马
tNewServerMay_Pack[3008981][1][1] = {}
tNewServerMay_Pack[3008981][1][1]["RandomItemChanceType"] = 2
tNewServerMay_Pack[3008981][1][1]["ItemChance"] = 2100
tNewServerMay_Pack[3008981][1][1]["Item_1"] = 3001063
tNewServerMay_Pack[3008981][1][1]["ItemAttr"] = "0 1 3"


-- 21%的几率获得 赠品+3赤练石
tNewServerMay_Pack[3008981][1][2] = {}
tNewServerMay_Pack[3008981][1][2]["RandomItemChanceType"] = 2
tNewServerMay_Pack[3008981][1][2]["ItemChance"] = 2100
tNewServerMay_Pack[3008981][1][2]["Item_1"] = 730003
tNewServerMay_Pack[3008981][1][2]["ItemAttr"] = "0 1 3"

-- 21%的几率获得 赠品 清心符
tNewServerMay_Pack[3008981][1][3] = {}
tNewServerMay_Pack[3008981][1][3]["RandomItemChanceType"] = 2
tNewServerMay_Pack[3008981][1][3]["ItemChance"] = 2100
tNewServerMay_Pack[3008981][1][3]["Item_1"] = 720128
tNewServerMay_Pack[3008981][1][3]["ItemAttr"] = "0 1 3"

-- 20%的几率获得赠品 日常任务重置符
tNewServerMay_Pack[3008981][1][4] = {}
tNewServerMay_Pack[3008981][1][4]["RandomItemChanceType"] = 2
tNewServerMay_Pack[3008981][1][4]["ItemChance"] = 2000
tNewServerMay_Pack[3008981][1][4]["Item_1"] = 3001407
tNewServerMay_Pack[3008981][1][4]["ItemAttr"] = "0 1 3"

-- 16.5%的几率获得 赠品 高级气力礼包
tNewServerMay_Pack[3008981][1][5] = {}
tNewServerMay_Pack[3008981][1][5]["RandomItemChanceType"] = 2
tNewServerMay_Pack[3008981][1][5]["ItemChance"] = 1650
tNewServerMay_Pack[3008981][1][5]["Item_1"] = 3005128
tNewServerMay_Pack[3008981][1][5]["ItemAttr"] = "0 1 3"

-- 0.5%的几率获得 赠品 免试金牌
tNewServerMay_Pack[3008981][1][6] = {}
tNewServerMay_Pack[3008981][1][6]["RandomItemChanceType"] = 2
tNewServerMay_Pack[3008981][1][6]["ItemChance"] = 50
tNewServerMay_Pack[3008981][1][6]["Item_1"] = 723701
tNewServerMay_Pack[3008981][1][6]["ItemAttr"] = "0 1 3"


--必得流行卷赠品
tNewServerMay_Pack[3008981][1][7] = {}
tNewServerMay_Pack[3008981][1][7]["RandomItemChanceType"] = 1
tNewServerMay_Pack[3008981][1][7]["Item_1"] = 720027
tNewServerMay_Pack[3008981][1][7]["ItemAttr"] = "0 1 3"

--必得祈愿石赠品
tNewServerMay_Pack[3008981][1][8] = {}
tNewServerMay_Pack[3008981][1][8]["RandomItemChanceType"] = 1
tNewServerMay_Pack[3008981][1][8]["Item_1"] = 1200001
tNewServerMay_Pack[3008981][1][8]["ItemAttr"] = "0 1 3"

--必得经验球5个赠品
tNewServerMay_Pack[3008981][1][9] = {}
tNewServerMay_Pack[3008981][1][9]["RandomItemChanceType"] = 1
tNewServerMay_Pack[3008981][1][9]["Item_1"] = 723700
tNewServerMay_Pack[3008981][1][9]["ItemAttr"] = "0 5 3"




--老服等级1转80级-2转15级（含15）礼包
tNewServerMay_Pack[3008982]={}

--礼包单服开出的免试金牌数量>5以后.只能获得修行天书
tNewServerMay_Pack[3008982]["LimitItemId"]= 723701
tNewServerMay_Pack[3008982]["Pos"]=2
tNewServerMay_Pack[3008982]["ChangeItemId"] = 723342
tNewServerMay_Pack[3008982]["LimitCount"] = 5
tNewServerMay_Pack[3008982]["ChangeItemAttr"] = "0 1 3"

tNewServerMay_Pack[3008982][1]={}
tNewServerMay_Pack[3008982][1]["BagSpace"]=7 
tNewServerMay_Pack[3008982][1]["ItemChanceSum"] = 10000
tNewServerMay_Pack[3008982][1]["Log"] = "0,0,3008982,1,12000243,2,720027[1200001][723700][720128][%d],2[1][15][1][%d]"
tNewServerMay_Pack[3008982][1]["RewardText"]=tNewServerMay_Text["RewardText3008982"]

-- 21%的几率获得 赠品+3马
tNewServerMay_Pack[3008982][1][1] = {}
tNewServerMay_Pack[3008982][1][1]["RandomItemChanceType"] = 2
tNewServerMay_Pack[3008982][1][1]["ItemChance"] = 2100
tNewServerMay_Pack[3008982][1][1]["Item_1"] = 3001063
tNewServerMay_Pack[3008982][1][1]["ItemAttr"] = "0 1 3"


-- 21%的几率获得 赠品+3赤练石
tNewServerMay_Pack[3008982][1][2] = {}
tNewServerMay_Pack[3008982][1][2]["RandomItemChanceType"] = 2
tNewServerMay_Pack[3008982][1][2]["ItemChance"] = 2100
tNewServerMay_Pack[3008982][1][2]["Item_1"] = 730003
tNewServerMay_Pack[3008982][1][2]["ItemAttr"] = "0 1 3"

-- 21%的几率获得 赠品 修行值书
tNewServerMay_Pack[3008982][1][3] = {}
tNewServerMay_Pack[3008982][1][3]["RandomItemChanceType"] = 2
tNewServerMay_Pack[3008982][1][3]["ItemChance"] = 2100
tNewServerMay_Pack[3008982][1][3]["Item_1"] = 723342
tNewServerMay_Pack[3008982][1][3]["ItemAttr"] = "0 1 3"

-- 20%的几率获得赠品 日常任务重置符
tNewServerMay_Pack[3008982][1][4] = {}
tNewServerMay_Pack[3008982][1][4]["RandomItemChanceType"] = 2
tNewServerMay_Pack[3008982][1][4]["ItemChance"] = 2000
tNewServerMay_Pack[3008982][1][4]["Item_1"] = 3001407
tNewServerMay_Pack[3008982][1][4]["ItemAttr"] = "0 1 3"

-- 16.5%的几率获得 赠品 高级气力礼包
tNewServerMay_Pack[3008982][1][5] = {}
tNewServerMay_Pack[3008982][1][5]["RandomItemChanceType"] = 2
tNewServerMay_Pack[3008982][1][5]["ItemChance"] = 1650
tNewServerMay_Pack[3008982][1][5]["Item_1"] = 3005128
tNewServerMay_Pack[3008982][1][5]["ItemAttr"] = "0 1 3"

-- 0.5%的几率获得 赠品 免试金牌
tNewServerMay_Pack[3008982][1][6] = {}
tNewServerMay_Pack[3008982][1][6]["RandomItemChanceType"] = 2
tNewServerMay_Pack[3008982][1][6]["ItemChance"] = 50
tNewServerMay_Pack[3008982][1][6]["Item_1"] = 723701
tNewServerMay_Pack[3008982][1][6]["ItemAttr"] = "0 1 3"

--必得流行卷2个赠品
tNewServerMay_Pack[3008982][1][7] = {}
tNewServerMay_Pack[3008982][1][7]["RandomItemChanceType"] = 1
tNewServerMay_Pack[3008982][1][7]["Item_1"] = 720027
tNewServerMay_Pack[3008982][1][7]["ItemAttr"] = "0 2 3"

--必得祈愿石赠品
tNewServerMay_Pack[3008982][1][8] = {}
tNewServerMay_Pack[3008982][1][8]["RandomItemChanceType"] = 1
tNewServerMay_Pack[3008982][1][8]["Item_1"] = 1200001
tNewServerMay_Pack[3008982][1][8]["ItemAttr"] = "0 1 3"

--必得经验球15个赠品
tNewServerMay_Pack[3008982][1][9] = {}
tNewServerMay_Pack[3008982][1][9]["RandomItemChanceType"] = 1
tNewServerMay_Pack[3008982][1][9]["Item_1"] = 723700
tNewServerMay_Pack[3008982][1][9]["ItemAttr"] = "0 15 3"

--必得清心符 1个 赠品
tNewServerMay_Pack[3008982][1][10] = {}
tNewServerMay_Pack[3008982][1][10]["RandomItemChanceType"] = 1
tNewServerMay_Pack[3008982][1][10]["Item_1"] = 720128
tNewServerMay_Pack[3008982][1][10]["ItemAttr"] = "0 1 3"


--老服等级二转15级以上 礼包
tNewServerMay_Pack[3008983]={}
tNewServerMay_Pack[3008983][1]={}
tNewServerMay_Pack[3008983][1]["BagSpace"]=10 
tNewServerMay_Pack[3008983][1]["ItemChanceSum"] = 10000
tNewServerMay_Pack[3008983][1]["Log"] = "0,0,3008983,1,12000243,2,720027[3003126][3003124][729242][200487][%d],3[3][3][2][1][%d]"
tNewServerMay_Pack[3008983][1]["RewardText"]=tNewServerMay_Text["RewardText3008983"]

-- 20%的几率获得 赠品P6DragonSoulPack（+6防具神魂可选包）
tNewServerMay_Pack[3008983][1][1] = {}
tNewServerMay_Pack[3008983][1][1]["RandomItemChanceType"] = 2
tNewServerMay_Pack[3008983][1][1]["ItemChance"] = 2000
tNewServerMay_Pack[3008983][1][1]["Item_1"] = 3005893
tNewServerMay_Pack[3008983][1][1]["ItemAttr"] = "0 1 3"


-- 20%的几率获得 赠品 至尊气力礼包
tNewServerMay_Pack[3008983][1][2] = {}
tNewServerMay_Pack[3008983][1][2]["RandomItemChanceType"] = 2
tNewServerMay_Pack[3008983][1][2]["ItemChance"] = 2000
tNewServerMay_Pack[3008983][1][2]["Item_1"] = 3005129
tNewServerMay_Pack[3008983][1][2]["ItemAttr"] = "0 1 3"

-- 20%的几率获得 赠品 日常任务重置符 2个
tNewServerMay_Pack[3008983][1][3] = {}
tNewServerMay_Pack[3008983][1][3]["RandomItemChanceType"] = 2
tNewServerMay_Pack[3008983][1][3]["ItemChance"] = 2000
tNewServerMay_Pack[3008983][1][3]["Item_1"] = 3001407
tNewServerMay_Pack[3008983][1][3]["ItemAttr"] = "0 2 3"

-- 20%的几率获得 赠品 清心符3个
tNewServerMay_Pack[3008983][1][4] = {}
tNewServerMay_Pack[3008983][1][4]["RandomItemChanceType"] = 2
tNewServerMay_Pack[3008983][1][4]["ItemChance"] = 2000
tNewServerMay_Pack[3008983][1][4]["Item_1"] = 720128
tNewServerMay_Pack[3008983][1][4]["ItemAttr"] = "0 3 3"

-- 20%的几率获得2个 赠品 赤练石+4
tNewServerMay_Pack[3008983][1][5] = {}
tNewServerMay_Pack[3008983][1][5]["RandomItemChanceType"] = 2
tNewServerMay_Pack[3008983][1][5]["ItemChance"] = 2000
tNewServerMay_Pack[3008983][1][5]["Item_1"] = 730004
tNewServerMay_Pack[3008983][1][5]["ItemAttr"] = "0 2 3"

--必得流星卷3个赠品
tNewServerMay_Pack[3008983][1][6] = {}
tNewServerMay_Pack[3008983][1][6]["RandomItemChanceType"] = 1
tNewServerMay_Pack[3008983][1][6]["Item_1"] = 720027
tNewServerMay_Pack[3008983][1][6]["ItemAttr"] = "0 3 3"

--必得时效一天大爆丹3个赠品
tNewServerMay_Pack[3008983][1][7] = {}
tNewServerMay_Pack[3008983][1][7]["RandomItemChanceType"] = 1
tNewServerMay_Pack[3008983][1][7]["Item_1"] = 3003126
tNewServerMay_Pack[3008983][1][7]["ItemAttr"] = "0 3 3"

--必得时效一天强炼丹3个赠品
tNewServerMay_Pack[3008983][1][8] = {}
tNewServerMay_Pack[3008983][1][8]["RandomItemChanceType"] = 1
tNewServerMay_Pack[3008983][1][8]["Item_1"] = 3003124
tNewServerMay_Pack[3008983][1][8]["ItemAttr"] = "0 3 3"

--必得回气丹2个赠品
tNewServerMay_Pack[3008983][1][9] = {}
tNewServerMay_Pack[3008983][1][9]["RandomItemChanceType"] = 1
tNewServerMay_Pack[3008983][1][9]["Item_1"] = 729242
tNewServerMay_Pack[3008983][1][9]["ItemAttr"] = "0 2 3"

--必得30天骑宠犀牛-HeavenRhino 赠品(设计要求不激活)
tNewServerMay_Pack[3008983][1][10] = {}
tNewServerMay_Pack[3008983][1][10]["RandomItemChanceType"] = 1
tNewServerMay_Pack[3008983][1][10]["Item_1"] = 200487
tNewServerMay_Pack[3008983][1][10]["ItemAttr"] = "0 1 3 43200"


-------------------------------------------------------逻辑部分----------------------------------------------------------------------------





function NewServerMay_NewPack_UseItem(nItem)
    
    --背包判断
    if not User_CheckLeftSpace(tNewServerMay_Pack[nItem][1]["BagSpace"]) then
       Sys_MsgBox(string.format(tNewServerMay_Pack["BagSpaceTip"],tNewServerMay_Pack[nItem][1]["BagSpace"]))
       return 
    end

    if not Item_ChkAccItem(nItem,1) then
       return
    end

    if not Item_DelItem(nItem) then
       return
    end 


    --给奖励
    local nFlat,tAward = Probabil_RandomAward(tNewServerMay_Pack[nItem],1)

    --同概率基数
    local tReaward=tAward[1]["tAward"][1]
    if tReaward["Item_1"]==tNewServerMay_Pack[nItem]["LimitItemId"] then
        local nDynaValue= Get_SysDynaGlobalData(nNewServerMay_DynaID,tNewServerMay_Pack[nItem]["Pos"])
        if nDynaValue >=  tNewServerMay_Pack[nItem]["LimitCount"] then
           tReaward["Item_1"]= tNewServerMay_Pack[nItem]["ChangeItemId"]   
           tReaward["ItemAttr"]= tNewServerMay_Pack[nItem]["ChangeItemAttr"]

        else
           --还未达上限所以设置 动态码累加 
           Sys_SetSynaGlobalData(nNewServerMay_DynaID,tNewServerMay_Pack[nItem]["Pos"],nDynaValue+1)
        end         
    end


    local slog=string.format(tNewServerMay_Pack[nItem][1]["Log"],tReaward["Item_1"],NewServerMay_GetCount(tReaward["ItemAttr"])) 
    Item_AddNewItem(tReaward["Item_1"],tReaward["ItemAttr"]) 
       
    -- 必得的
    for key,value in ipairs(tAward[1]["tAbsoluteAward"]) do
	    local nItem = value["Item_1"]
	    local sAttr = value["ItemAttr"]
	    Item_AddNewItem(nItem,sAttr)        
    end 

    Sys_SaveActionFestivalLog(slog)

    if  nItem== tNewServerMay_Item[1]["ItemID"] then
        local nCount=NewServerMay_GetCount(tReaward["ItemAttr"])
        User_TalkChannel2005(string.format(tNewServerMay_Pack[nItem][1]["RewardText"],nCount,tNewServerMay_Text[tReaward["Item_1"]]))
    else
        User_TalkChannel2005(string.format(tNewServerMay_Pack[nItem][1]["RewardText"],tNewServerMay_Text[tReaward["Item_1"]]))
    end
    User_EffectAdd("self","zf2-e280")
end 


--获得数量
function NewServerMay_GetCount(sItemAttr)
    if sItemAttr ==nil then
        return 1
    end
    local tItemAttr = Sys_Split(sItemAttr," ")
	local count  = tonumber(tItemAttr[2]) or 1
    return count
end



----------------------------------------------------------物品模板------------------------------------

--初露锋芒礼包
tItem[3008981] = tItem[3008981] or {}
tItem[3008981]["Function"] = function(nItemId,sItemName)
	NewServerMay_NewPack_UseItem(nItemId)
end

--纵横江湖礼包
tItem[3008982] = tItem[3008981]

--旷世豪杰礼包
tItem[3008983] = tItem[3008981]

