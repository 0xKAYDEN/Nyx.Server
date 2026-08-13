------------------------------------------------------------------------------------
--Name：170106[简体征服][活动脚本]年兽活动的物品产出
--Creator: 郑宗胜
--Created:2017/01/06
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--前缀 ItemOutputOfNien_

--logid : 12000630


--stc:
	-- 15446 :限制每人每天产出 10本 未鉴定的书本
	-- 15447 :限制每人每天产出 1个五个核桃
	-- 15448 :背包信
	-- 15449-15460：记录书包中书籍收纳情况（12本）
	--15477 掩码值对应的隐藏书籍ID
	-- 15478 掩码值对应的隐藏书籍ID （根据二进制的值对应不同的隐藏书籍ID）
------------------------------------------------------------------------------------


-----------------------------------------------------数据配置-----------------------------------------------
tItemOutputOfNien_Constant={}
	--活动时间
	tItemOutputOfNien_Constant["ActivityTime"]="2017-04-06 00:00 2017-04-15 23:59"
	
	tItemOutputOfNien_Constant["NeedLevel"]=80
	
	--产出未鉴定书本的概率
	tItemOutputOfNien_Constant["NotIdentityNum"]=300 --1%的概率，基数：10000
	tItemOutputOfNien_Constant["EndNum"]=10000
	
	--书的叠加量
	tItemOutputOfNien_Constant["BookAmount"]=99
	
	--小鸡书包
	tItemOutputOfNien_Constant["BookBag"]=3302114
	--年运通宝
	tItemOutputOfNien_Constant["TongBao"]=3301454



--全局，NPC（小鑫鑫制作）处也有用到掩码
tItemOutputOfNien_Stc={}
	--根据二进制的值对应不同的隐藏书籍ID
	tItemOutputOfNien_Stc[1]={}
	tItemOutputOfNien_Stc[1]["EventType"]=154
	tItemOutputOfNien_Stc[1]["DataType"]=77
	
	tItemOutputOfNien_Stc[2]={}
	tItemOutputOfNien_Stc[2]["EventType"]=154
	tItemOutputOfNien_Stc[2]["DataType"]=78
	
	--记录书包中书籍收纳情况
	tItemOutputOfNien_Stc[3302079]={}
	tItemOutputOfNien_Stc[3302079]["EventType"]=154
	tItemOutputOfNien_Stc[3302079]["DataType"]=49
	
	tItemOutputOfNien_Stc[3302080]={}
	tItemOutputOfNien_Stc[3302080]["EventType"]=154
	tItemOutputOfNien_Stc[3302080]["DataType"]=50
	
	tItemOutputOfNien_Stc[3302081]={}
	tItemOutputOfNien_Stc[3302081]["EventType"]=154
	tItemOutputOfNien_Stc[3302081]["DataType"]=51
	
	tItemOutputOfNien_Stc[3302082]={}
	tItemOutputOfNien_Stc[3302082]["EventType"]=154
	tItemOutputOfNien_Stc[3302082]["DataType"]=52
	
	tItemOutputOfNien_Stc[3302083]={}
	tItemOutputOfNien_Stc[3302083]["EventType"]=154
	tItemOutputOfNien_Stc[3302083]["DataType"]=53
	
	tItemOutputOfNien_Stc[3302084]={}
	tItemOutputOfNien_Stc[3302084]["EventType"]=154
	tItemOutputOfNien_Stc[3302084]["DataType"]=54
	
	tItemOutputOfNien_Stc[3302085]={}
	tItemOutputOfNien_Stc[3302085]["EventType"]=154
	tItemOutputOfNien_Stc[3302085]["DataType"]=55
	
	tItemOutputOfNien_Stc[3302086]={}
	tItemOutputOfNien_Stc[3302086]["EventType"]=154
	tItemOutputOfNien_Stc[3302086]["DataType"]=56
	
	tItemOutputOfNien_Stc[3302087]={}
	tItemOutputOfNien_Stc[3302087]["EventType"]=154
	tItemOutputOfNien_Stc[3302087]["DataType"]=57
	
	tItemOutputOfNien_Stc[3302088]={}
	tItemOutputOfNien_Stc[3302088]["EventType"]=154
	tItemOutputOfNien_Stc[3302088]["DataType"]=58
	
	tItemOutputOfNien_Stc[3302089]={}
	tItemOutputOfNien_Stc[3302089]["EventType"]=154
	tItemOutputOfNien_Stc[3302089]["DataType"]=59
	
	tItemOutputOfNien_Stc[3302090]={}
	tItemOutputOfNien_Stc[3302090]["EventType"]=154
	tItemOutputOfNien_Stc[3302090]["DataType"]=60

--掩码值对应的隐藏书籍ID
local tItemOutputOfNien_StcValueToItem={}
	tItemOutputOfNien_StcValueToItem[15477]={}
	tItemOutputOfNien_StcValueToItem[15477][2]=3302091
	tItemOutputOfNien_StcValueToItem[15477][4]=3302092
	tItemOutputOfNien_StcValueToItem[15477][8]=3302093
	tItemOutputOfNien_StcValueToItem[15477][32]=3302094
	tItemOutputOfNien_StcValueToItem[15477][64]=3302095
	tItemOutputOfNien_StcValueToItem[15477][512]=3302096
	tItemOutputOfNien_StcValueToItem[15477][32768]=3302097
	tItemOutputOfNien_StcValueToItem[15477][65536]=3302098
	tItemOutputOfNien_StcValueToItem[15477][131072]=3302099
	tItemOutputOfNien_StcValueToItem[15477][262144]=3302100
	
	tItemOutputOfNien_StcValueToItem[15478]={}
	tItemOutputOfNien_StcValueToItem[15478][2]=3302101
	tItemOutputOfNien_StcValueToItem[15478][4]=3302102
	tItemOutputOfNien_StcValueToItem[15478][8]=3302103
	tItemOutputOfNien_StcValueToItem[15478][32]=3302104
	tItemOutputOfNien_StcValueToItem[15478][64]=3302105
	tItemOutputOfNien_StcValueToItem[15478][512]=3302106
	tItemOutputOfNien_StcValueToItem[15478][32768]=3302107
	tItemOutputOfNien_StcValueToItem[15478][65536]=3302108
	tItemOutputOfNien_StcValueToItem[15478][131072]=3302109
	tItemOutputOfNien_StcValueToItem[15478][262144]=3302110

--隐藏书籍对应的stc索引
local tItemOutputOfNien_ItemToStcIndex={}
	tItemOutputOfNien_ItemToStcIndex[3302091]=1
	tItemOutputOfNien_ItemToStcIndex[3302092]=1
	tItemOutputOfNien_ItemToStcIndex[3302093]=1
	tItemOutputOfNien_ItemToStcIndex[3302094]=1
	tItemOutputOfNien_ItemToStcIndex[3302095]=1
	tItemOutputOfNien_ItemToStcIndex[3302096]=1
	tItemOutputOfNien_ItemToStcIndex[3302097]=1
	tItemOutputOfNien_ItemToStcIndex[3302098]=1
	tItemOutputOfNien_ItemToStcIndex[3302099]=1
	tItemOutputOfNien_ItemToStcIndex[3302100]=1
	
	tItemOutputOfNien_ItemToStcIndex[3302101]=2
	tItemOutputOfNien_ItemToStcIndex[3302102]=2
	tItemOutputOfNien_ItemToStcIndex[3302103]=2
	tItemOutputOfNien_ItemToStcIndex[3302104]=2
	tItemOutputOfNien_ItemToStcIndex[3302105]=2
	tItemOutputOfNien_ItemToStcIndex[3302106]=2
	tItemOutputOfNien_ItemToStcIndex[3302107]=2
	tItemOutputOfNien_ItemToStcIndex[3302108]=2
	tItemOutputOfNien_ItemToStcIndex[3302109]=2
	tItemOutputOfNien_ItemToStcIndex[3302110]=2


--隐藏书籍对应的stc值
local tItemOutputOfNien_ItemToStcValue ={}
	tItemOutputOfNien_ItemToStcValue[3302091]=2
	tItemOutputOfNien_ItemToStcValue[3302092]=4
	tItemOutputOfNien_ItemToStcValue[3302093]=8
	tItemOutputOfNien_ItemToStcValue[3302094]=32
	tItemOutputOfNien_ItemToStcValue[3302095]=64
	tItemOutputOfNien_ItemToStcValue[3302096]=512
	tItemOutputOfNien_ItemToStcValue[3302097]=32768
	tItemOutputOfNien_ItemToStcValue[3302098]=65536
	tItemOutputOfNien_ItemToStcValue[3302099]=131072
	tItemOutputOfNien_ItemToStcValue[3302100]=262144
	
	tItemOutputOfNien_ItemToStcValue[3302101]=2
	tItemOutputOfNien_ItemToStcValue[3302102]=4
	tItemOutputOfNien_ItemToStcValue[3302103]=8
	tItemOutputOfNien_ItemToStcValue[3302104]=32
	tItemOutputOfNien_ItemToStcValue[3302105]=64
	tItemOutputOfNien_ItemToStcValue[3302106]=512
	tItemOutputOfNien_ItemToStcValue[3302107]=32768
	tItemOutputOfNien_ItemToStcValue[3302108]=65536
	tItemOutputOfNien_ItemToStcValue[3302109]=131072
	tItemOutputOfNien_ItemToStcValue[3302110]=262144

--排序后的课本ID,用于书包的排版
local tOrderBookId={3302080,3302084,3302088,3302081,3302085,3302089,3302079,3302083,3302087,3302082,3302086,3302090}
--普通课本的ID
local tCommonBook={3302079,3302080,3302081,3302082}

local tItemOutputOfNien_Log = {}
	-- 过期删除物品
	tItemOutputOfNien_Log["OverTimeDelItem"] = "0,0,%d,1,12000630,2,0,0"
	--活动后，中高级课本（叠加量99）物品使用过期 1:1兑换成 年运通宝（叠加量999）
	tItemOutputOfNien_Log["Exchange"]="0,0,%d,%d,12000630,2,%d,%d"
	
	--玩家通过稀有课本随机包获得中级课本
	tItemOutputOfNien_Log[3302083]="0,0,3302111,1,12000630,1[6],3302083,1"
	tItemOutputOfNien_Log[3302084]="0,0,3302111,1,12000630,1[6],3302084,1"
	tItemOutputOfNien_Log[3302085]="0,0,3302111,1,12000630,1[6],3302085,1"
	tItemOutputOfNien_Log[3302086]="0,0,3302111,1,12000630,1[6],3302086,1"
	--玩家通过稀有课本随机包获得高级课本
	tItemOutputOfNien_Log[3302087]="0,0,3302111,1,12000630,1[7],3302087,1"
	tItemOutputOfNien_Log[3302088]="0,0,3302111,1,12000630,1[7],3302088,1"
	tItemOutputOfNien_Log[3302089]="0,0,3302111,1,12000630,1[7],3302089,1"
	tItemOutputOfNien_Log[3302090]="0,0,3302111,1,12000630,1[7],3302090,1"


--随机表配置
local tItemOutputOfNien_UseItemRandom={}
	--使用未鉴定的书籍
	tItemOutputOfNien_UseItemRandom[3302078]={}
	tItemOutputOfNien_UseItemRandom[3302078][1]={}
	tItemOutputOfNien_UseItemRandom[3302078][1]["ItemChanceSum"]=10000
	
	tItemOutputOfNien_UseItemRandom[3302078][1][1] = {}
	tItemOutputOfNien_UseItemRandom[3302078][1][1]["RandomItemChanceType"] = 2
	tItemOutputOfNien_UseItemRandom[3302078][1][1]["ItemChance"] = 2400
	tItemOutputOfNien_UseItemRandom[3302078][1][1]["Item_1"] = 3302079 --代表普通美术
	
	tItemOutputOfNien_UseItemRandom[3302078][1][2] = {}
	tItemOutputOfNien_UseItemRandom[3302078][1][2]["RandomItemChanceType"] = 2
	tItemOutputOfNien_UseItemRandom[3302078][1][2]["ItemChance"] = 2400
	tItemOutputOfNien_UseItemRandom[3302078][1][2]["Item_1"] = 3302080 --代表普通语文
	
	tItemOutputOfNien_UseItemRandom[3302078][1][3] = {}
	tItemOutputOfNien_UseItemRandom[3302078][1][3]["RandomItemChanceType"] = 2
	tItemOutputOfNien_UseItemRandom[3302078][1][3]["ItemChance"] = 2400
	tItemOutputOfNien_UseItemRandom[3302078][1][3]["Item_1"] = 3302081 --代表普通数学
	
	tItemOutputOfNien_UseItemRandom[3302078][1][4] = {}
	tItemOutputOfNien_UseItemRandom[3302078][1][4]["RandomItemChanceType"] = 2
	tItemOutputOfNien_UseItemRandom[3302078][1][4]["ItemChance"] = 2400
	tItemOutputOfNien_UseItemRandom[3302078][1][4]["Item_1"] = 3302082 --代表普通体育
	
	tItemOutputOfNien_UseItemRandom[3302078][1][5] = {}
	tItemOutputOfNien_UseItemRandom[3302078][1][5]["RandomItemChanceType"] = 2
	tItemOutputOfNien_UseItemRandom[3302078][1][5]["ItemChance"] = 400
	tItemOutputOfNien_UseItemRandom[3302078][1][5]["Item_1"] = 1 --代表隐藏书籍
	
	--使用稀有课本随机包
	tItemOutputOfNien_UseItemRandom[3302111]={}
	tItemOutputOfNien_UseItemRandom[3302111][1]={}
	tItemOutputOfNien_UseItemRandom[3302111][1]["ItemChanceSum"]=10000
	
	tItemOutputOfNien_UseItemRandom[3302111][1][1] = {}
	tItemOutputOfNien_UseItemRandom[3302111][1][1]["RandomItemChanceType"] = 2
	tItemOutputOfNien_UseItemRandom[3302111][1][1]["ItemChance"] = 9000
	tItemOutputOfNien_UseItemRandom[3302111][1][1]["Item_1"] = 2 --代表中级课本
	
	tItemOutputOfNien_UseItemRandom[3302111][1][2] = {}
	tItemOutputOfNien_UseItemRandom[3302111][1][2]["RandomItemChanceType"] = 2
	tItemOutputOfNien_UseItemRandom[3302111][1][2]["ItemChance"] = 1000
	tItemOutputOfNien_UseItemRandom[3302111][1][2]["Item_1"] = 3 --代表高级课本


----------------奖励配置
local tItemOutputOfNien_Award = {}
	-- 杀片区怪有1%概率获得1本《未鉴定的书本》
	--stc = 15446 限制每人每天产出 10本 未鉴定的书本
	tItemOutputOfNien_Award["NotIdentity"]={} 
	tItemOutputOfNien_Award["NotIdentity"]["EventType"] = 154
	tItemOutputOfNien_Award["NotIdentity"]["DataType"] = 46
	
	tItemOutputOfNien_Award["NotIdentity"]["RewardData"] = 50 ----每天限制的次数
	tItemOutputOfNien_Award["NotIdentity"]["RewardTotalData"] = 500 ---活动期间总的限制次数(暂以50天计算，不在活动时间也不给)
	tItemOutputOfNien_Award["NotIdentity"]["RewardDelay"] = 1 ---掩码的间隔时间
	tItemOutputOfNien_Award["NotIdentity"]["RewardTimeType"] = 4 --掩码的间隔时间类型
	tItemOutputOfNien_Award["NotIdentity"]["HaveReceiveNoTip"]=1 --当天获得上限，不需要提示

	tItemOutputOfNien_Award["NotIdentity"]["RewardItem"] = {}
	tItemOutputOfNien_Award["NotIdentity"]["RewardItem"][1] = {}
	tItemOutputOfNien_Award["NotIdentity"]["RewardItem"][1]["Id"] = 3302078 --未鉴定的书本
	tItemOutputOfNien_Award["NotIdentity"]["RewardItem"][1]["Attr"] = "0 1"
	tItemOutputOfNien_Award["NotIdentity"]["RewardEffect"]={}
	tItemOutputOfNien_Award["NotIdentity"]["RewardEffect"]["Effect"]="disappear"
	tItemOutputOfNien_Award["NotIdentity"]["LogId"] = 12000630
	-- tItemOutputOfNien_Award["NotIdentity"]["Talk"]=tItemOutputOfNien_Text["AwardNotIdentity"]
	
	-- 杀片区怪有1%概率获得1个 五个核桃
	 --stc = 15447 限制每人每天产出 1个五个核桃
	tItemOutputOfNien_Award["Walnut"]={}
	tItemOutputOfNien_Award["Walnut"]["EventType"] = 154
	tItemOutputOfNien_Award["Walnut"]["DataType"] = 47
	
	tItemOutputOfNien_Award["Walnut"]["RewardData"] = 1 ----每天限制的次数
	tItemOutputOfNien_Award["Walnut"]["RewardTotalData"] = 50 ---活动期间总的限制次数(暂以50天计算，不在活动时间也不给)
	tItemOutputOfNien_Award["Walnut"]["RewardDelay"] = 1 ---掩码的间隔时间
	tItemOutputOfNien_Award["Walnut"]["RewardTimeType"] = 4 --掩码的间隔时间类型
	tItemOutputOfNien_Award["Walnut"]["HaveReceiveNoTip"]=1
	
	tItemOutputOfNien_Award["Walnut"]["RewardItem"] = {}
	tItemOutputOfNien_Award["Walnut"]["RewardItem"][1] = {}
	tItemOutputOfNien_Award["Walnut"]["RewardItem"][1]["Id"] = 3302112 --五个核桃
	tItemOutputOfNien_Award["Walnut"]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tItemOutputOfNien_Award["Walnut"]["RewardEffect"]={}
	tItemOutputOfNien_Award["Walnut"]["RewardEffect"]["Effect"]="disappear"
	tItemOutputOfNien_Award["Walnut"]["LogId"] = 12000630
	-- tItemOutputOfNien_Award["Walnut"]["Talk"]=tItemOutputOfNien_Text["AwardWalnut"]
	
	--活动中获得稀有课本随机包
	tItemOutputOfNien_Award["BookRandomPack"]={}
	tItemOutputOfNien_Award["BookRandomPack"][1]={} --1个
	tItemOutputOfNien_Award["BookRandomPack"][1]["RewardItem"] = {}
	tItemOutputOfNien_Award["BookRandomPack"][1]["RewardItem"][1]={}
	tItemOutputOfNien_Award["BookRandomPack"][1]["RewardItem"][1]["Id"] = 3302111 --稀有课本随机包
	tItemOutputOfNien_Award["BookRandomPack"][1]["RewardItem"][1]["Attr"] = "0 1"
	tItemOutputOfNien_Award["BookRandomPack"][1]["LogId"]=12000630
	
	tItemOutputOfNien_Award["BookRandomPack"][3]={} --3个
	tItemOutputOfNien_Award["BookRandomPack"][3]["RewardItem"] = {}
	tItemOutputOfNien_Award["BookRandomPack"][3]["RewardItem"][1]={}
	tItemOutputOfNien_Award["BookRandomPack"][3]["RewardItem"][1]["Id"] = 3302111 --稀有课本随机包
	tItemOutputOfNien_Award["BookRandomPack"][3]["RewardItem"][1]["Attr"] = "0 3"
	tItemOutputOfNien_Award["BookRandomPack"][3]["LogId"]=12000630
	
	--补领书包
	tItemOutputOfNien_Award["BookBag"]={}
	tItemOutputOfNien_Award["BookBag"]["RewardItem"] = {}
	tItemOutputOfNien_Award["BookBag"]["RewardItem"][1]={}
	tItemOutputOfNien_Award["BookBag"]["RewardItem"][1]["Id"] = 3302114 --小鸡书包
	tItemOutputOfNien_Award["BookBag"]["RewardItem"][1]["Attr"] = "0 1"
	tItemOutputOfNien_Award["BookBag"]["LogId"]=12000630
	
	
	--使用 未鉴定的书籍 ，随机到的物品奖励
	--获得普通美术
	tItemOutputOfNien_Award[3302079]={}
	tItemOutputOfNien_Award[3302079]["RewardItem"]={}
	tItemOutputOfNien_Award[3302079]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[3302079]["RewardItem"][1]["Id"] = 3302079
	tItemOutputOfNien_Award[3302079]["RewardItem"][1]["Attr"] = "0 1"
	tItemOutputOfNien_Award[3302079]["Log"] = "0,0,3302078,1,12000630,2,3302079,1"
	tItemOutputOfNien_Award[3302079]["RewardNoNeedTip"]=1
	
	--普通语文
	tItemOutputOfNien_Award[3302080]={}
	tItemOutputOfNien_Award[3302080]["RewardItem"]={}
	tItemOutputOfNien_Award[3302080]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[3302080]["RewardItem"][1]["Id"] = 3302080
	tItemOutputOfNien_Award[3302080]["RewardItem"][1]["Attr"] = "0 1"
	tItemOutputOfNien_Award[3302080]["Log"] = "0,0,3302078,1,12000630,2,3302080,1"
	tItemOutputOfNien_Award[3302080]["RewardNoNeedTip"]=1
	
	--普通数学
	tItemOutputOfNien_Award[3302081]={}
	tItemOutputOfNien_Award[3302081]["RewardItem"]={}
	tItemOutputOfNien_Award[3302081]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[3302081]["RewardItem"][1]["Id"] = 3302081
	tItemOutputOfNien_Award[3302081]["RewardItem"][1]["Attr"] = "0 1"
	tItemOutputOfNien_Award[3302081]["Log"] = "0,0,3302078,1,12000630,2,3302081,1"
	tItemOutputOfNien_Award[3302081]["RewardNoNeedTip"]=1
	
	--普通体育
	tItemOutputOfNien_Award[3302082]={}
	tItemOutputOfNien_Award[3302082]["RewardItem"]={}
	tItemOutputOfNien_Award[3302082]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[3302082]["RewardItem"][1]["Id"] = 3302082
	tItemOutputOfNien_Award[3302082]["RewardItem"][1]["Attr"] = "0 1"
	tItemOutputOfNien_Award[3302082]["Log"] = "0,0,3302078,1,12000630,2,3302082,1"
	tItemOutputOfNien_Award[3302082]["RewardNoNeedTip"]=1
	
	--随机获得20种隐藏书籍中的一种
	tItemOutputOfNien_Award[3302091]={}
	tItemOutputOfNien_Award[3302091]["RewardItem"] = {}
	tItemOutputOfNien_Award[3302091]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[3302091]["RewardItem"][1]["Id"] = 3302091
	tItemOutputOfNien_Award[3302091]["RewardItem"][1]["Attr"] = "0 1 0 1440 1" --1天时效
	tItemOutputOfNien_Award[3302091]["Log"]="0,0,3302078,1,12000630,2,3302091,1"
	tItemOutputOfNien_Award[3302091]["RewardNoNeedTip"]=1
	
	tItemOutputOfNien_Award[3302092]={}
	tItemOutputOfNien_Award[3302092]["RewardItem"] = {}
	tItemOutputOfNien_Award[3302092]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[3302092]["RewardItem"][1]["Id"] = 3302092
	tItemOutputOfNien_Award[3302092]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tItemOutputOfNien_Award[3302092]["Log"]="0,0,3302078,1,12000630,2,3302092,1"
	tItemOutputOfNien_Award[3302092]["RewardNoNeedTip"]=1
	
	tItemOutputOfNien_Award[3302093]={}
	tItemOutputOfNien_Award[3302093]["RewardItem"] = {}
	tItemOutputOfNien_Award[3302093]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[3302093]["RewardItem"][1]["Id"] = 3302093
	tItemOutputOfNien_Award[3302093]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tItemOutputOfNien_Award[3302093]["Log"]="0,0,3302078,1,12000630,2,3302093,1"
	tItemOutputOfNien_Award[3302093]["RewardNoNeedTip"]=1
	
	tItemOutputOfNien_Award[3302094]={}
	tItemOutputOfNien_Award[3302094]["RewardItem"] = {}
	tItemOutputOfNien_Award[3302094]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[3302094]["RewardItem"][1]["Id"] = 3302094
	tItemOutputOfNien_Award[3302094]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tItemOutputOfNien_Award[3302094]["Log"]="0,0,3302078,1,12000630,2,3302094,1"
	tItemOutputOfNien_Award[3302094]["RewardNoNeedTip"]=1
	
	tItemOutputOfNien_Award[3302095]={}
	tItemOutputOfNien_Award[3302095]["RewardItem"] = {}
	tItemOutputOfNien_Award[3302095]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[3302095]["RewardItem"][1]["Id"] = 3302095
	tItemOutputOfNien_Award[3302095]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tItemOutputOfNien_Award[3302095]["Log"]="0,0,3302078,1,12000630,2,3302095,1"
	tItemOutputOfNien_Award[3302095]["RewardNoNeedTip"]=1
	
	tItemOutputOfNien_Award[3302096]={}
	tItemOutputOfNien_Award[3302096]["RewardItem"] = {}
	tItemOutputOfNien_Award[3302096]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[3302096]["RewardItem"][1]["Id"] = 3302096
	tItemOutputOfNien_Award[3302096]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tItemOutputOfNien_Award[3302096]["Log"]="0,0,3302078,1,12000630,2,3302096,1"
	tItemOutputOfNien_Award[3302096]["RewardNoNeedTip"]=1
	
	tItemOutputOfNien_Award[3302097]={}
	tItemOutputOfNien_Award[3302097]["RewardItem"] = {}
	tItemOutputOfNien_Award[3302097]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[3302097]["RewardItem"][1]["Id"] = 3302097
	tItemOutputOfNien_Award[3302097]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tItemOutputOfNien_Award[3302097]["Log"]="0,0,3302078,1,12000630,2,3302097,1"
	tItemOutputOfNien_Award[3302097]["RewardNoNeedTip"]=1
	
	tItemOutputOfNien_Award[3302098]={}
	tItemOutputOfNien_Award[3302098]["RewardItem"] = {}
	tItemOutputOfNien_Award[3302098]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[3302098]["RewardItem"][1]["Id"] = 3302098
	tItemOutputOfNien_Award[3302098]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tItemOutputOfNien_Award[3302098]["Log"]="0,0,3302078,1,12000630,2,3302098,1"
	tItemOutputOfNien_Award[3302098]["RewardNoNeedTip"]=1
	
	tItemOutputOfNien_Award[3302099]={}
	tItemOutputOfNien_Award[3302099]["RewardItem"] = {}
	tItemOutputOfNien_Award[3302099]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[3302099]["RewardItem"][1]["Id"] = 3302099
	tItemOutputOfNien_Award[3302099]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tItemOutputOfNien_Award[3302099]["Log"]="0,0,3302078,1,12000630,2,3302099,1"
	tItemOutputOfNien_Award[3302099]["RewardNoNeedTip"]=1
	
	tItemOutputOfNien_Award[3302100]={}
	tItemOutputOfNien_Award[3302100]["RewardItem"] = {}
	tItemOutputOfNien_Award[3302100]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[3302100]["RewardItem"][1]["Id"] = 3302100
	tItemOutputOfNien_Award[3302100]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tItemOutputOfNien_Award[3302100]["Log"]="0,0,3302078,1,12000630,2,3302100,1"
	tItemOutputOfNien_Award[3302100]["RewardNoNeedTip"]=1
	
	tItemOutputOfNien_Award[3302101]={}
	tItemOutputOfNien_Award[3302101]["RewardItem"] = {}
	tItemOutputOfNien_Award[3302101]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[3302101]["RewardItem"][1]["Id"] = 3302101
	tItemOutputOfNien_Award[3302101]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tItemOutputOfNien_Award[3302101]["Log"]="0,0,3302078,1,12000630,2,3302101,1"
	tItemOutputOfNien_Award[3302101]["RewardNoNeedTip"]=1
	
	tItemOutputOfNien_Award[3302102]={}
	tItemOutputOfNien_Award[3302102]["RewardItem"] = {}
	tItemOutputOfNien_Award[3302102]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[3302102]["RewardItem"][1]["Id"] = 3302102
	tItemOutputOfNien_Award[3302102]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tItemOutputOfNien_Award[3302102]["Log"]="0,0,3302078,1,12000630,2,3302102,1"
	tItemOutputOfNien_Award[3302102]["RewardNoNeedTip"]=1
	
	tItemOutputOfNien_Award[3302103]={}
	tItemOutputOfNien_Award[3302103]["RewardItem"] = {}
	tItemOutputOfNien_Award[3302103]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[3302103]["RewardItem"][1]["Id"] = 3302103
	tItemOutputOfNien_Award[3302103]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tItemOutputOfNien_Award[3302103]["Log"]="0,0,3302078,1,12000630,2,3302103,1"
	tItemOutputOfNien_Award[3302103]["RewardNoNeedTip"]=1
	
	tItemOutputOfNien_Award[3302104]={}
	tItemOutputOfNien_Award[3302104]["RewardItem"] = {}
	tItemOutputOfNien_Award[3302104]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[3302104]["RewardItem"][1]["Id"] = 3302104
	tItemOutputOfNien_Award[3302104]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tItemOutputOfNien_Award[3302104]["Log"]="0,0,3302078,1,12000630,2,3302104,1"
	tItemOutputOfNien_Award[3302104]["RewardNoNeedTip"]=1
	
	tItemOutputOfNien_Award[3302105]={}
	tItemOutputOfNien_Award[3302105]["RewardItem"] = {}
	tItemOutputOfNien_Award[3302105]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[3302105]["RewardItem"][1]["Id"] = 3302105
	tItemOutputOfNien_Award[3302105]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tItemOutputOfNien_Award[3302105]["Log"]="0,0,3302078,1,12000630,2,3302105,1"
	tItemOutputOfNien_Award[3302105]["RewardNoNeedTip"]=1
	
	tItemOutputOfNien_Award[3302106]={}
	tItemOutputOfNien_Award[3302106]["RewardItem"] = {}
	tItemOutputOfNien_Award[3302106]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[3302106]["RewardItem"][1]["Id"] = 3302106
	tItemOutputOfNien_Award[3302106]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tItemOutputOfNien_Award[3302106]["Log"]="0,0,3302078,1,12000630,2,3302106,1"
	tItemOutputOfNien_Award[3302106]["RewardNoNeedTip"]=1
	
	tItemOutputOfNien_Award[3302107]={}
	tItemOutputOfNien_Award[3302107]["RewardItem"] = {}
	tItemOutputOfNien_Award[3302107]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[3302107]["RewardItem"][1]["Id"] = 3302107
	tItemOutputOfNien_Award[3302107]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tItemOutputOfNien_Award[3302107]["Log"]="0,0,3302078,1,12000630,2,3302107,1"
	tItemOutputOfNien_Award[3302107]["RewardNoNeedTip"]=1
	
	tItemOutputOfNien_Award[3302108]={}
	tItemOutputOfNien_Award[3302108]["RewardItem"] = {}
	tItemOutputOfNien_Award[3302108]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[3302108]["RewardItem"][1]["Id"] = 3302108
	tItemOutputOfNien_Award[3302108]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tItemOutputOfNien_Award[3302108]["Log"]="0,0,3302078,1,12000630,2,3302108,1"
	tItemOutputOfNien_Award[3302108]["RewardNoNeedTip"]=1
	
	tItemOutputOfNien_Award[3302109]={}
	tItemOutputOfNien_Award[3302109]["RewardItem"] = {}
	tItemOutputOfNien_Award[3302109]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[3302109]["RewardItem"][1]["Id"] = 3302109
	tItemOutputOfNien_Award[3302109]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tItemOutputOfNien_Award[3302109]["Log"]="0,0,3302078,1,12000630,2,3302109,1"
	tItemOutputOfNien_Award[3302109]["RewardNoNeedTip"]=1
	
	tItemOutputOfNien_Award[3302110]={}
	tItemOutputOfNien_Award[3302110]["RewardItem"] = {}
	tItemOutputOfNien_Award[3302110]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[3302110]["RewardItem"][1]["Id"] = 3302110
	tItemOutputOfNien_Award[3302110]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tItemOutputOfNien_Award[3302110]["Log"]="0,0,3302078,1,12000630,2,3302110,1"
	tItemOutputOfNien_Award[3302110]["RewardNoNeedTip"]=1
	
	--随机获得4种中级课本中的一种
	tItemOutputOfNien_Award[2]={}
	tItemOutputOfNien_Award[2][1]={}
	tItemOutputOfNien_Award[2][1]["ItemChanceSum"]=10000
	
	tItemOutputOfNien_Award[2][1][1]={}
	tItemOutputOfNien_Award[2][1][1]["RandomItemChanceType"]=2
	tItemOutputOfNien_Award[2][1][1]["ItemChance"]=2500
	tItemOutputOfNien_Award[2][1][1]["RewardItem"] = {}
	tItemOutputOfNien_Award[2][1][1]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[2][1][1]["RewardItem"][1]["Id"] = 3302083 -- 艺术中级课本
	tItemOutputOfNien_Award[2][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tItemOutputOfNien_Award[2][1][1]["Log"]="0,0,3302111,1,12000630,2,3302083,1"
	
	tItemOutputOfNien_Award[2][1][2]={}
	tItemOutputOfNien_Award[2][1][2]["RandomItemChanceType"]=2
	tItemOutputOfNien_Award[2][1][2]["ItemChance"]=2500
	tItemOutputOfNien_Award[2][1][2]["RewardItem"] = {}
	tItemOutputOfNien_Award[2][1][2]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[2][1][2]["RewardItem"][1]["Id"] = 3302084 --文学中级课本
	tItemOutputOfNien_Award[2][1][2]["RewardItem"][1]["Attr"] = "0 1 3" 
	tItemOutputOfNien_Award[2][1][2]["Log"]="0,0,3302111,1,12000630,2,3302084,1"
	
	tItemOutputOfNien_Award[2][1][3]={}
	tItemOutputOfNien_Award[2][1][3]["RandomItemChanceType"]=2
	tItemOutputOfNien_Award[2][1][3]["ItemChance"]=2500
	tItemOutputOfNien_Award[2][1][3]["RewardItem"] = {}
	tItemOutputOfNien_Award[2][1][3]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[2][1][3]["RewardItem"][1]["Id"] = 3302085 -- 数学中级课本
	tItemOutputOfNien_Award[2][1][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tItemOutputOfNien_Award[2][1][3]["Log"]="0,0,3302111,1,12000630,2,3302085,1"
	
	tItemOutputOfNien_Award[2][1][4]={}
	tItemOutputOfNien_Award[2][1][4]["RandomItemChanceType"]=2
	tItemOutputOfNien_Award[2][1][4]["ItemChance"]=2500
	tItemOutputOfNien_Award[2][1][4]["RewardItem"] = {}
	tItemOutputOfNien_Award[2][1][4]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[2][1][4]["RewardItem"][1]["Id"] = 3302086 --体育中级课本
	tItemOutputOfNien_Award[2][1][4]["RewardItem"][1]["Attr"] = "0 1 3" 
	tItemOutputOfNien_Award[2][1][4]["Log"]="0,0,3302111,1,12000630,2,3302086,1"
	
	
	--随机获得4种高级课本中的一种
	tItemOutputOfNien_Award[3]={}
	tItemOutputOfNien_Award[3][1]={}
	tItemOutputOfNien_Award[3][1]["ItemChanceSum"]=10000
	
	tItemOutputOfNien_Award[3][1][1]={}
	tItemOutputOfNien_Award[3][1][1]["RandomItemChanceType"]=2
	tItemOutputOfNien_Award[3][1][1]["ItemChance"]=2500
	tItemOutputOfNien_Award[3][1][1]["RewardItem"] = {}
	tItemOutputOfNien_Award[3][1][1]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[3][1][1]["RewardItem"][1]["Id"] = 3302087 -- 艺术高级课本
	tItemOutputOfNien_Award[3][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tItemOutputOfNien_Award[3][1][1]["Log"]="0,0,3302111,1,12000630,2,3302087,1"
	
	tItemOutputOfNien_Award[3][1][2]={}
	tItemOutputOfNien_Award[3][1][2]["RandomItemChanceType"]=2
	tItemOutputOfNien_Award[3][1][2]["ItemChance"]=2500
	tItemOutputOfNien_Award[3][1][2]["RewardItem"] = {}
	tItemOutputOfNien_Award[3][1][2]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[3][1][2]["RewardItem"][1]["Id"] = 3302088 --文学高级课本
	tItemOutputOfNien_Award[3][1][2]["RewardItem"][1]["Attr"] = "0 1 3" 
	tItemOutputOfNien_Award[3][1][2]["Log"]="0,0,3302111,1,12000630,2,3302088,1"
	
	tItemOutputOfNien_Award[3][1][3]={}
	tItemOutputOfNien_Award[3][1][3]["RandomItemChanceType"]=2
	tItemOutputOfNien_Award[3][1][3]["ItemChance"]=2500
	tItemOutputOfNien_Award[3][1][3]["RewardItem"] = {}
	tItemOutputOfNien_Award[3][1][3]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[3][1][3]["RewardItem"][1]["Id"] = 3302089 -- 数学高级课本
	tItemOutputOfNien_Award[3][1][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tItemOutputOfNien_Award[3][1][3]["Log"]="0,0,3302111,1,12000630,2,3302089,1"
	
	tItemOutputOfNien_Award[3][1][4]={}
	tItemOutputOfNien_Award[3][1][4]["RandomItemChanceType"]=2
	tItemOutputOfNien_Award[3][1][4]["ItemChance"]=2500
	tItemOutputOfNien_Award[3][1][4]["RewardItem"] = {}
	tItemOutputOfNien_Award[3][1][4]["RewardItem"][1] = {}
	tItemOutputOfNien_Award[3][1][4]["RewardItem"][1]["Id"] = 3302090 --体育高级课本
	tItemOutputOfNien_Award[3][1][4]["RewardItem"][1]["Attr"] = "0 1 3" 
	tItemOutputOfNien_Award[3][1][4]["Log"]="0,0,3302111,1,12000630,2,3302090,1"
	
-----------------------------------------------------逻辑-----------------------------------------------------

-- 活动期间，玩家签到、使用正气令（重置有效）、开启显著功勋礼包、
-- 完成战场杀敌、决战冥城和矿洞冒险，均可获得稀有课本随机包，开启可随机获得中级课本和高级课本。
function ItemOutputOfNien_AwardBookRandomPack(nAwardCount)
	--不再活动时间
	if not Sys_ChkFullTime(tItemOutputOfNien_Constant["ActivityTime"]) then
		return
	end
	
	--等级不满足
	if not User_JudgeLevelAndMetempsychosis(tItemOutputOfNien_Constant["NeedLevel"],0) then
		return
	end
	
	--获得响应的个数（注：调用之前要判断背包空间！！！）
	-- RewardTemplate_Reward(tItemOutputOfNien_Award["BookRandomPack"][nAwardCount])
	RewardTemplate_UseItemAndMsg(tItemOutputOfNien_Award["BookRandomPack"][nAwardCount])
end



--是否获得书包
function ItemOutputOfNien_IsAwardBookBag()
	local nEvent = tYearOfRoosterFeeding_Stc["BTalent"]["EventType"]
	local nData = tYearOfRoosterFeeding_Stc["BTalent"]["DataType"]
	local nBagItemId = tItemOutputOfNien_Constant["BookBag"]
	--背包又书包
	if Item_ChkItem(nBagItemId) then
		return false
	end
	
	--没有领取过
	if Task_ChkStcValue(nEvent,nData,"==",0) then
		return false
	end
	
	--领取过，背包没有，则可以补领
	return true
end


--补领书包
function ItemOutputOfNien_ReAwardBookBag(nNpcId)
	local nBagItemId = tItemOutputOfNien_Constant["BookBag"]
	
	--不在活动时间
	if not Sys_ChkFullTime(tItemOutputOfNien_Constant["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--不满足补领条件
	if not ItemOutputOfNien_IsAwardBookBag() then
		return
	end
	
	--背包没有空间
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	--背包没有则获得
	if not Item_ChkItem(nBagItemId) then
		RewardTemplate_UseItemAndMsg(tItemOutputOfNien_Award["BookBag"])
		LinkNpcGossipFunc_New(nNpcId,"2-1")
	end
end


--杀片区怪有1%概率获得1本《未鉴定的书本》，每人每天限掉落10本
function ItemOutputOfNien_MonsterDropBook()
	--不再活动时间
	if not Sys_ChkFullTime(tItemOutputOfNien_Constant["ActivityTime"]) then
		return
	end
	
	--等级不满足
	if not User_JudgeLevelAndMetempsychosis(tItemOutputOfNien_Constant["NeedLevel"],0) then
		return
	end
	
	--背包空间不足
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tItemOutputOfNien_Text["FullSpace"])
		return
	end
	
	--杀片区怪有1%概率获得1本《未鉴定的书本》，每人每天限掉落10本
	local nStartNum = tItemOutputOfNien_Constant["NotIdentityNum"]
	local nEndNum = tItemOutputOfNien_Constant["EndNum"]
	if Sys_Random(nStartNum,nEndNum) then
		RewardTemplate_OuterPckage(tItemOutputOfNien_Award["NotIdentity"])
	end
	
end

--杀片区怪 1% 产出五个核桃，每人每天限制1个
function ItemOutputOfNien_MonsterDropWalnut()
	--不再活动时间
	if not Sys_ChkFullTime(tItemOutputOfNien_Constant["ActivityTime"]) then
		return
	end
	
	--等级不满足
	if not User_JudgeLevelAndMetempsychosis(tItemOutputOfNien_Constant["NeedLevel"],0) then
		return
	end
	
	--背包空间不足
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tItemOutputOfNien_Text["FullSpace"])
		return
	end
	
	--杀片区怪 1% 产出五个核桃，每人每天限制1个
	local nStartNum = tItemOutputOfNien_Constant["NotIdentityNum"]
	local nEndNum = tItemOutputOfNien_Constant["EndNum"]
	if Sys_Random(nStartNum,nEndNum) then
		RewardTemplate_OuterPckage(tItemOutputOfNien_Award["Walnut"])
	end
	
end

--物品使用过期失效删除
function ItemOutputOfNien_IsOutTime(nItemId)
	--不在活动时间
	if not Sys_ChkFullTime(tItemOutputOfNien_Constant["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			--过期删除物品
			User_TalkChannel2005(tItemOutputOfNien_Text["OverTime"]["Ohter"])
			Sys_SaveActionFestivalLog(string.format(tItemOutputOfNien_Log["OverTimeDelItem"],nItemId))
		end
	else
		--在活动时间，自动寻路
		NpcPosition_PathFind(20310)
	end
end



--中高级课本（叠加量99）物品使用过期 1:1兑换成 年运通宝（叠加量999）
function ItemOutputOfNien_OutTimeExchange(nItemId)
	--活动后
	if CommonFunc_GetAfterActivityTime(tItemOutputOfNien_Constant["ActivityTime"]) then
		local nAddItem = tItemOutputOfNien_Constant["TongBao"]
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkMulItem(nItemId,nItemId,nNum) and Item_DelMulItem(nItemId,nItemId,nNum) then
			Item_AddNewItem(nAddItem,"0 " .. nNum)
			local sItemName =  Get_ItemtypeName(nItemId)
			User_TalkChannel2005(string.format(tItemOutputOfNien_Text["OverTime"]["Exchange"],sItemName,nNum))
			Sys_SaveActionFestivalLog(string.format(tItemOutputOfNien_Log["Exchange"],nItemId,nNum,nAddItem,nNum))
		end
	elseif Sys_ChkFullTime(tItemOutputOfNien_Constant["ActivityTime"]) then
		--在活动时间，自动寻路
		NpcPosition_PathFind(20223)
	end
	
end

--使用物品:未鉴定的书本/稀有课本随机包
function ItemOutputOfNien_UseItem(nItemId)
	--不在活动时间
	if not Sys_ChkFullTime(tItemOutputOfNien_Constant["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			--过期删除物品
			User_TalkChannel2005(tItemOutputOfNien_Text["OverTime"][nItemId])
			Sys_SaveActionFestivalLog(string.format(tItemOutputOfNien_Log["OverTimeDelItem"],nItemId))
		end
		return
	end
	
	--等级不满足
	if not User_JudgeLevelAndMetempsychosis(tItemOutputOfNien_Constant["NeedLevel"],0) then
		return
	end
	
	--判断背包空间
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tItemOutputOfNien_Text["NoSpace"][nItemId])
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local nFlag,tReward = Probabil_RandomAward(tItemOutputOfNien_UseItemRandom[nItemId],1)
		local nAwardItemId = tReward[1]["tAward"][1]["Item_1"] --随机到的物品
		if nAwardItemId == 1 then
			--nAwardItemId = 1 使用未鉴定的书本 随机获得一种 隐藏书籍
			ItemOutputOfNien_AwardHideBook()
		elseif nAwardItemId == 2 or nAwardItemId == 3 then
			--nAwardItemId = 2 使用稀有课本随机包 随机获得一种 中级课本
			--nAwardItemId = 3 使用稀有课本随机包 随机获得一种  高级课本
			local tAward =  RewardTemplate_Random(tItemOutputOfNien_Award[nAwardItemId],1)
			local nAwardItem = tAward[1]["tAward"][1]["RewardItem"][1]["Id"] --获得的物品
			--获得中级或者高级课本，打的设计型的log
			Sys_SaveActionFestivalLog(tItemOutputOfNien_Log[nAwardItem])
		else
			--使用未鉴定的书本 直接获得普通课本
			RewardTemplate_UseItemAndMsg(tItemOutputOfNien_Award[nAwardItemId])
			User_TalkChannel2005(string.format(tItemOutputOfNien_Text["AwardBook"],tItemOutputOfNien_Text["CommBookName"][nAwardItemId]))
		end
		
	end
end



--随机获得隐藏书籍，每人每本只能获得一次
function ItemOutputOfNien_AwardHideBook()
	--随机隐藏书籍的范围
	local tRandomHideBook={}
	--2个掩码存
	for nStcIndex=1,2 do
		local nEvent = tItemOutputOfNien_Stc[nStcIndex]["EventType"]
		local nData = tItemOutputOfNien_Stc[nStcIndex]["DataType"]
		local nTotalNum = Get_UserStatisticValue(nEvent,nData) --stc值（相当对应总的地图属性）
		local nTableIndex = tonumber(nEvent ..nData) --索引tItemOutputOfNien_StcValueToItem[15477]
		for nConNum,nItemId in pairs(tItemOutputOfNien_StcValueToItem[nTableIndex]) do
			if not Sys_ParseNumbersContain(nConNum,nTotalNum) then
				--没有获得该隐藏书籍过
				table.insert(tRandomHideBook,nItemId)
			end
			
		end
	end
	
	--随机的范围
	local nRangleLength = #tRandomHideBook
	if nRangleLength ==0 then
		--获得过20种隐藏书籍，则在随机获得普通课本中的一本
		local nRandom =math.random(1,4)
		local nAwardItemId = tCommonBook[nRandom]
		RewardTemplate_UseItemAndMsg(tItemOutputOfNien_Award[nAwardItemId])
		User_TalkChannel2005(string.format(tItemOutputOfNien_Text["AwardBook"],tItemOutputOfNien_Text["CommBookName"][nAwardItemId]))
	else
		--随机获得一种隐藏书籍
		local nRandom =math.random(1,nRangleLength)
		local nAwardItemId = tRandomHideBook[nRandom]
		
		--增加对应的掩码值
		local nStcIndex = tItemOutputOfNien_ItemToStcIndex[nAwardItemId]
		local nAddValue = tItemOutputOfNien_ItemToStcValue[nAwardItemId]
		local nEvent = tItemOutputOfNien_Stc[nStcIndex]["EventType"]
		local nData = tItemOutputOfNien_Stc[nStcIndex]["DataType"]
		Task_AddStatistic(nEvent,nData,nAddValue,1)
		Task_SetStcTimestamp(nEvent,nData,0)
		
		--获得隐藏书籍
		RewardTemplate_UseItemAndMsg(tItemOutputOfNien_Award[nAwardItemId])
		--获得隐藏书籍全服公告(显示在屏幕左下角:白色字体)
		local sHideBookName = tItemOutputOfNien_Text["HideBookName"][nAwardItemId]
		local sUserName = Get_UserName()
		User_TalkChannel2005(string.format(tItemOutputOfNien_Text["AwardHideBook"],sHideBookName))
		Sys_TalkBroadcast(string.format(tItemOutputOfNien_Text["ServerTalk"],sUserName,sHideBookName))
	end
end


--使用书包
function ItemOutputOfNien_UseBookBag(nItemId)
	--不在活动时间
	if not Sys_ChkFullTime(tItemOutputOfNien_Constant["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			--过期删除物品
			local sChickenName = YearOfRoosterFeeding_GetNpcName() or ""
			-- User_TalkChannel2005(string.format(tItemOutputOfNien_Text["OverTime"][nItemId],sChickenName))
			User_TalkChannel2005(tItemOutputOfNien_Text["OverTime"][nItemId])
			Sys_SaveActionFestivalLog(string.format(tItemOutputOfNien_Log["OverTimeDelItem"],nItemId))
		end
		return
	end
	
	--等级不满足
	if not User_JudgeLevelAndMetempsychosis(tItemOutputOfNien_Constant["NeedLevel"],0) then
		return
	end
	
	
	if Item_ChkItem(nItemId) then
		local tTable = {} --存用有的书籍数量
		local sStrTable = {} --存格式化后的对白
		-- for nItemIndex = 3302079,3302090 do
		for i,nItemIndex in pairs(tOrderBookId) do
			local nSaveEvent = tItemOutputOfNien_Stc[nItemIndex]["EventType"]
			local nSaveType = tItemOutputOfNien_Stc[nItemIndex]["DataType"]
			if Task_ChkStcValue(nSaveEvent,nSaveType,">",0) then
				--书包中有该 书籍
				local nData = Get_UserStatisticValue(nSaveEvent,nSaveType)
				local sStr = tostring(nData)
				local nStrLen = string.len(sStr)
				for i=1,4 - nStrLen do
					sStr = " " .. sStr
				end
				table.insert(tTable,sStr)
			else
				--书包中没有该书籍--> 0本
				local sStr = tostring(0)
				local nStrLen = string.len(sStr)
				for i=1,4 - nStrLen do
					sStr = " " .. sStr
				end
				table.insert(tTable,sStr)
			end
		end
		
		local str = ""
		for i,v in pairs(tTable) do
			if i >= 1 and i <= 9 then
				--对白范围：401--409 或者4001--4009
				if tonumber(v) == 0 then-- 未收集 红色字
					str = string.format(tItemOutputOfNien_Text[nItemId]["Text40"..tostring(i)],v)
				else		-- 收集到后 黄色字
					str = string.format(tItemOutputOfNien_Text[nItemId]["Text400"..tostring(i)],v)
				end
			else
				--对白范围：410--412 或者4010--4012
				if tonumber(v) == 0 then-- 未收集 红色字
					str = string.format(tItemOutputOfNien_Text[nItemId]["Text4"..tostring(i)],v)
				else		-- 收集到后 黄色字
					str = string.format(tItemOutputOfNien_Text[nItemId]["Text40"..tostring(i)],v)
				end
			end
			table.insert(sStrTable,str)
		end
		Sys_DialogTaskClear()
		Sys_DialogText(tItemOutputOfNien_Text[nItemId]["Text111"])
		Sys_DialogText(tItemOutputOfNien_Text[nItemId]["Text112"])
		
		for j,k in pairs(sStrTable) do
			Sys_DialogText(sStrTable[j])
		end
		Sys_DialogText(tItemOutputOfNien_Text[nItemId]["Text112"])
		Sys_DialogText(tItemOutputOfNien_Text[nItemId]["Text113"])
		
		Sys_DialogOption(tItemOutputOfNien_Text[nItemId]["Option1"],"</F>ItemOutputOfNien_SaveAll</N>" .. nItemId)
		-- Sys_DialogOption(tItemOutputOfNien_Text[nItemId]["Option2"],"</F>ItemOutputOfNien_TakeOutAll</N>" .. nItemId)
		Sys_DialogOption(tItemOutputOfNien_Text[nItemId]["Option2"],"</F>ItemOutputOfNien_TakeOut</N>" .. nItemId)
		Sys_DialogOption(tItemOutputOfNien_Text[nItemId]["Option3"],"</F>NULL")
		Sys_DialogEnd()
	end
	
end


-- 收纳全部书籍
function ItemOutputOfNien_SaveAll(nItemId)
	--不在活动时间
	if not Sys_ChkFullTime(tItemOutputOfNien_Constant["ActivityTime"]) then
		return
	end
	
	if Item_ChkItem(nItemId) then
		local tHasItem = {}			-- 记录玩家背包中 已有的物品
		-- for i = 3302079,3302090 do
		for i,nItemIndex in pairs(tOrderBookId) do
			if Item_ChkItem(nItemIndex) then
				table.insert(tHasItem,nItemIndex)
			end
		end
		
		if #tHasItem > 0 then
			-- local nSum = 0
			for i,nItemIndex in pairs(tHasItem) do
				local nSaveEvent = tItemOutputOfNien_Stc[nItemIndex]["EventType"]
				local nSaveType = tItemOutputOfNien_Stc[nItemIndex]["DataType"]
				local nNum = Get_CountItemType(nItemIndex,0)
				if Item_ChkMulItem(nItemIndex,nItemIndex,nNum) and Item_DelMulItem(nItemIndex,nItemIndex,nNum) then
					Task_AddStatistic(nSaveEvent,nSaveType,nNum,1,0)
					Task_SetStcTimestamp(nSaveEvent,nSaveType,0,0)
					-- nSum = nSum + nNum
				end
			end
			--不需要显示收纳多少本
			-- tItem[nItemId]["Text211"] = string.format(tItemOutputOfNien_Text[nItemId]["Text211"],nSum)
			LinkItemGossipFunc_New(nItemId,"2-1")
		else
			--没有任何书籍
			LinkItemGossipFunc_New(nItemId,"3-1")
			return
		end
	end
end


-- 取出课本
function ItemOutputOfNien_TakeOut(nItemId)
	--不在活动时间
	if not Sys_ChkFullTime(tItemOutputOfNien_Constant["ActivityTime"]) then
		return
	end
	
	if Item_ChkItem(nItemId) then
		local tItemTable = {}		-- 记录存放进物品的物品id
		-- for i = 3302079,3302090 do
		for i,nItemIndex in pairs(tOrderBookId) do
			local nSaveEvent = tItemOutputOfNien_Stc[nItemIndex]["EventType"]
			local nSaveType = tItemOutputOfNien_Stc[nItemIndex]["DataType"]
			if Task_ChkStcValue(nSaveEvent,nSaveType,">",0) then
				table.insert(tItemTable,nItemIndex)
			end
		end
	
		-- 书包中有书籍
		if #tItemTable > 0  then
			LinkItemGossipFunc_New(nItemId,"5-1")
		else
			-- 没有书籍
			LinkItemGossipFunc_New(nItemId,"3-2")
		end
	end
end


--书包有这种书，则返回true，否则返回false
function ItemOutputOfNien_HasThisBook(nBookId)
	local nEvent = tItemOutputOfNien_Stc[nBookId]["EventType"]
	local nData = tItemOutputOfNien_Stc[nBookId]["DataType"]
	if Task_ChkStcValue(nEvent,nData,">",0) then
		return true
	else
		return false
	end
end


-- 确定取出某个id
function ItemOutputOfNien_TakeOutOne(nItemId,nTakeItemId)
	--不在活动时间
	if not Sys_ChkFullTime(tItemOutputOfNien_Constant["ActivityTime"]) then
		return
	end
	
	if Item_ChkItem(nItemId) then
		local nSaveEvent = tItemOutputOfNien_Stc[nTakeItemId]["EventType"]
		local nSaveType = tItemOutputOfNien_Stc[nTakeItemId]["DataType"]
		local nData = Get_UserStatisticValue(nSaveEvent,nSaveType)
		local sName = Get_ItemtypeName(nTakeItemId)
		if nData > 0 then
			-- 判断背包:叠加量=99
			local nSpace = math.ceil(nData/tItemOutputOfNien_Constant["BookAmount"])
			if not User_CheckLeftSpace(nSpace) then
				Sys_MsgBox(tItemOutputOfNien_Text["NoSpaceOutput"])
				return
			end
			
			Task_SetStatistic(nSaveEvent,nSaveType,0,1,0)
			Task_SetStcTimestamp(nSaveEvent,nSaveType,0,0)
			--普通课本是非赠
			-- if nTakeItemId==3302079 or nTakeItemId==3302080 or nTakeItemId==3302081 or nTakeItemId==3302082 then
			if ItemOutputOfNien_IsCommonBook(nTakeItemId) then
				Item_AddNewItem(nTakeItemId,"0 " .. nData)
			else
				--中级，高级课本是赠品
				Item_AddNewItem(nTakeItemId,"0 " .. nData.." 3")
			end
			User_TalkChannel2005(string.format(tItemOutputOfNien_Text["TakeOutOne"],nData,sName))
		else
			-- 选中的书籍为0
			LinkItemGossipFunc_New(nItemId,"3-3")
		end
	end
end


--判断物品是否是普通课本
function ItemOutputOfNien_IsCommonBook(nItemId)
	for i,nCommonItemId in pairs(tCommonBook) do
		if nItemId == nCommonItemId then
			return true
		end
	end
	return false
end

--打开兑换商店
function ItemOutputOfNien_OpenShop(nNpcId)
	if Sys_ChkFullTime(tItemOutputOfNien_Constant["ActivityTime"]) then
		User_OpenExchangeShop(nNpcId)
	else
		--跳转到活动后的对白
		LinkNpcGossipFunc_New(nNpcId,"1-2")
	end
end

-----------------------------------------------------NPC逻辑-----------------------------------------------------
--唐老鸡校长
tNpcFace[4646] = 385

tNpcGossip[20223]= tNpcGossip[20223] or DefaultNpc:new{}
tNpcGossip[20223]["OptionHidden"] = 1

--活动前
tNpcGossip[20223]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[20223]["Text111"] = tItemOutputOfNien_Text[20223]["Text111"]
tNpcGossip[20223]["Text112"] = tItemOutputOfNien_Text[20223]["Text112"]
tNpcGossip[20223]["Text113"] = tItemOutputOfNien_Text[20223]["Text113"]
tNpcGossip[20223]["Text114"] = tItemOutputOfNien_Text[20223]["Text114"]
tNpcGossip[20223]["Text115"] = tItemOutputOfNien_Text[20223]["Text115"]
tNpcGossip[20223]["Text116"] = tItemOutputOfNien_Text[20223]["Text116"]
tNpcGossip[20223]["Text117"] = tItemOutputOfNien_Text[20223]["Text117"]
tNpcGossip[20223]["ChkFunc1-1"]= function()
	return CommonFunc_GetBeforeActivityTime(tItemOutputOfNien_Constant["ActivityTime"])
end
tNpcGossip[20223]["tOption1-1"] = {111}
tNpcGossip[20223]["Option111"] = tItemOutputOfNien_Text[20223]["Option111"]


--活动后
tNpcGossip[20223]["Text1-2"] = {111,112,121,122}
tNpcGossip[20223]["Text121"] = tItemOutputOfNien_Text[20223]["Text121"]
tNpcGossip[20223]["Text122"] = tItemOutputOfNien_Text[20223]["Text122"]
tNpcGossip[20223]["ChkFunc1-2"]= function()
	return CommonFunc_GetAfterActivityTime(tItemOutputOfNien_Constant["ActivityTime"])
end
tNpcGossip[20223]["tOption1-2"] = {121}
tNpcGossip[20223]["Option121"] = tItemOutputOfNien_Text[20223]["Option121"]



--活动中等级不足
tNpcGossip[20223]["Text1-3"] = {111,112,131,132,115,116,117}
tNpcGossip[20223]["Text131"] = tItemOutputOfNien_Text[20223]["Text131"]
tNpcGossip[20223]["Text132"] = tItemOutputOfNien_Text[20223]["Text132"]

tNpcGossip[20223]["ChkFunc1-3"]= function()
	local sActivityTime = tItemOutputOfNien_Constant["ActivityTime"]
	local nNeedLev = tItemOutputOfNien_Constant["NeedLevel"]
	return Sys_ChkFullTime(sActivityTime) and not User_JudgeLevelAndMetempsychosis(nNeedLev,0)
end

tNpcGossip[20223]["tOption1-3"] = {131}
tNpcGossip[20223]["Option131"] = tItemOutputOfNien_Text[20223]["Option131"]



--活动中
tNpcGossip[20223]["Text1-4"] = {111,112,131,132,115,117}

tNpcGossip[20223]["ChkFunc1-4"]= function()
	local sActivityTime = tItemOutputOfNien_Constant["ActivityTime"]
	local nNeedLev = tItemOutputOfNien_Constant["NeedLevel"]
	return Sys_ChkFullTime(sActivityTime) and User_JudgeLevelAndMetempsychosis(nNeedLev,0)
end

tNpcGossip[20223]["tOption1-4"] = {141,144,142,143}
tNpcGossip[20223]["Option141"] = tItemOutputOfNien_Text[20223]["Option141"] --兑换商店
tNpcGossip[20223]["OptionFunc141"] = "ItemOutputOfNien_OpenShop</N>20223"

tNpcGossip[20223]["Option142"] = tItemOutputOfNien_Text[20223]["Option142"]--家庭教师指南
tNpcGossip[20223]["OptionFunc142"] = "YearOfRoosterFeeding_OpenWeb"

tNpcGossip[20223]["Option143"] = tItemOutputOfNien_Text[20223]["Option143"]

--补领书包
tNpcGossip[20223]["Option144"] = tItemOutputOfNien_Text[20223]["Option144"]
tNpcGossip[20223]["OptionChkFunc144"] = ItemOutputOfNien_IsAwardBookBag
tNpcGossip[20223]["OptionFunc144"] = "ItemOutputOfNien_ReAwardBookBag</N>20223"


--补领书包成功
tNpcGossip[20223]["Text2-1"] = {211,212}
tNpcGossip[20223]["Text211"] = tItemOutputOfNien_Text[20223]["Text211"]
tNpcGossip[20223]["Text212"] = tItemOutputOfNien_Text[20223]["Text212"]
tNpcGossip[20223]["ChkFunc2-1"]= function()
	-- local sChickenName = YearOfRoosterFeeding_GetNpcName() or ""
	-- tNpcGossip[20223]["Text212"] = string.format(tItemOutputOfNien_Text[20223]["Text212"],sChickenName)
	return true
end

tNpcGossip[20223]["tOption2-1"] = {211}
tNpcGossip[20223]["Option211"] = tItemOutputOfNien_Text[20223]["Option211"]

--补领背包空间不足
tNpcGossip[20223]["Text3-1"] = {311}
tNpcGossip[20223]["Text311"] = tItemOutputOfNien_Text[20223]["Text311"]

tNpcGossip[20223]["tOption3-1"] = {311}
tNpcGossip[20223]["Option311"] = tItemOutputOfNien_Text[20223]["Option211"]


tNpcGossip[20223]["Text11-1"] = {1111,1112,1113,1114,1115,1116,1117,1118,1119,1120}
tNpcGossip[20223]["Text1111"] = tYearOfRoosterFeeding_Text[20224]["Text1111"]
tNpcGossip[20223]["Text1112"] = tYearOfRoosterFeeding_Text[20224]["Text1112"]
tNpcGossip[20223]["Text1113"] = tYearOfRoosterFeeding_Text[20224]["Text1113"]
tNpcGossip[20223]["Text1114"] = tYearOfRoosterFeeding_Text[20224]["Text1114"]
tNpcGossip[20223]["Text1115"] = tYearOfRoosterFeeding_Text[20224]["Text1115"]
tNpcGossip[20223]["Text1116"] = tYearOfRoosterFeeding_Text[20224]["Text1116"]
tNpcGossip[20223]["Text1117"] = tYearOfRoosterFeeding_Text[20224]["Text1117"]
tNpcGossip[20223]["Text1118"] = tYearOfRoosterFeeding_Text[20224]["Text1118"]
tNpcGossip[20223]["Text1119"] = tYearOfRoosterFeeding_Text[20224]["Text1119"]
tNpcGossip[20223]["Text1120"] = tYearOfRoosterFeeding_Text[20224]["Text1120"]
tNpcGossip[20223]["tOption11-1"] = {90}
tNpcGossip[20223]["ChkFunc11-1"] = function ()
	return true
end
tNpcGossip[20223]["Option90"] = tYearOfRoosterFeeding_Text[20224]["Option90"]



-----------------------------------------------------物品逻辑-----------------------------------------------------

--未鉴定的书本
tItem[3302078] = tItem[3302078] or {}
tItem[3302078]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_UseItem(nItemId)
end

--稀有课本随机包
tItem[3302111] = tItem[3302111] or {}
tItem[3302111]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_UseItem(nItemId)
end


--书包
tItem[3302114] = tItem[3302114] or {}
tItem[3302114]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_UseBookBag(nItemId)
end

--书包的对白
tItem[3302114]["Text2-1"]={211}
tItem[3302114]["Text211"]=tItemOutputOfNien_Text[3302114]["Text211"]

tItem[3302114]["tOption2-1"] = {211}
tItem[3302114]["Option211"] = tItemOutputOfNien_Text[3302114]["Option211"]
tItem[3302114]["OptionFunc211"] = "ItemOutputOfNien_UseBookBag</N>3302114"


--背包里一本课本都没有
tItem[3302114]["Text3-1"]={311}
tItem[3302114]["Text311"]=tItemOutputOfNien_Text[3302114]["Text311"]

tItem[3302114]["tOption3-1"] = {311}
tItem[3302114]["Option311"] = tItemOutputOfNien_Text[3302114]["Option311"]

-- 书包里面没有书
tItem[3302114]["Text3-2"]={321}
tItem[3302114]["Text321"]=tItemOutputOfNien_Text[3302114]["Text321"]

tItem[3302114]["tOption3-2"] = {321}
tItem[3302114]["Option321"] = tItemOutputOfNien_Text[3302114]["Option321"]

--取出课本的个数为0
tItem[3302114]["Text3-3"]={331}
tItem[3302114]["Text331"]=tItemOutputOfNien_Text[3302114]["Text331"]

tItem[3302114]["tOption3-3"] = {331}
tItem[3302114]["Option331"] = tItemOutputOfNien_Text[3302114]["Option331"]


-- 取出课本
tItem[3302114]["Text5-1"] = {511}
tItem[3302114]["Text511"] = tItemOutputOfNien_Text[3302114]["Text511"]

tItem[3302114]["tOption5-1"] = {411,412,413,414,415,416,417,418,419,4110,4111,4112}
tItem[3302114]["Option411"] = tItemOutputOfNien_Text[3302114]["Option411"]
tItem[3302114]["OptionFunc411"] = "ItemOutputOfNien_TakeOutOne</N>3302114</N>3302079"
tItem[3302114]["OptionChkFunc411"] = function ()
	return ItemOutputOfNien_HasThisBook(3302079)
end

tItem[3302114]["Option412"] = tItemOutputOfNien_Text[3302114]["Option412"]
tItem[3302114]["OptionFunc412"] = "ItemOutputOfNien_TakeOutOne</N>3302114</N>3302080"
tItem[3302114]["OptionChkFunc412"] = function ()
	return ItemOutputOfNien_HasThisBook(3302080)
end

tItem[3302114]["Option413"] = tItemOutputOfNien_Text[3302114]["Option413"]
tItem[3302114]["OptionFunc413"] = "ItemOutputOfNien_TakeOutOne</N>3302114</N>3302081"
tItem[3302114]["OptionChkFunc413"] = function ()
	return ItemOutputOfNien_HasThisBook(3302081)
end

tItem[3302114]["Option414"] = tItemOutputOfNien_Text[3302114]["Option414"]
tItem[3302114]["OptionFunc414"] = "ItemOutputOfNien_TakeOutOne</N>3302114</N>3302082"
tItem[3302114]["OptionChkFunc414"] = function ()
	return ItemOutputOfNien_HasThisBook(3302082)
end

tItem[3302114]["Option415"] = tItemOutputOfNien_Text[3302114]["Option415"]
tItem[3302114]["OptionFunc415"] = "ItemOutputOfNien_TakeOutOne</N>3302114</N>3302083"
tItem[3302114]["OptionChkFunc415"] = function ()
	return ItemOutputOfNien_HasThisBook(3302083)
end

tItem[3302114]["Option416"] = tItemOutputOfNien_Text[3302114]["Option416"]
tItem[3302114]["OptionFunc416"] = "ItemOutputOfNien_TakeOutOne</N>3302114</N>3302084"
tItem[3302114]["OptionChkFunc416"] = function ()
	return ItemOutputOfNien_HasThisBook(3302084)
end

tItem[3302114]["Option417"] = tItemOutputOfNien_Text[3302114]["Option417"]
tItem[3302114]["OptionFunc417"] = "ItemOutputOfNien_TakeOutOne</N>3302114</N>3302085"
tItem[3302114]["OptionChkFunc417"] = function ()
	return ItemOutputOfNien_HasThisBook(3302085)
end

tItem[3302114]["Option418"] = tItemOutputOfNien_Text[3302114]["Option418"]
tItem[3302114]["OptionFunc418"] = "ItemOutputOfNien_TakeOutOne</N>3302114</N>3302086"
tItem[3302114]["OptionChkFunc418"] = function ()
	return ItemOutputOfNien_HasThisBook(3302086)
end

tItem[3302114]["Option419"] = tItemOutputOfNien_Text[3302114]["Option419"]
tItem[3302114]["OptionFunc419"] = "ItemOutputOfNien_TakeOutOne</N>3302114</N>3302087"
tItem[3302114]["OptionChkFunc419"] = function ()
	return ItemOutputOfNien_HasThisBook(3302087)
end

tItem[3302114]["Option4110"] = tItemOutputOfNien_Text[3302114]["Option4110"]
tItem[3302114]["OptionFunc4110"] = "ItemOutputOfNien_TakeOutOne</N>3302114</N>3302088"
tItem[3302114]["OptionChkFunc4110"] = function ()
	return ItemOutputOfNien_HasThisBook(3302088)
end

tItem[3302114]["Option4111"] = tItemOutputOfNien_Text[3302114]["Option4111"]
tItem[3302114]["OptionFunc4111"] = "ItemOutputOfNien_TakeOutOne</N>3302114</N>3302089"
tItem[3302114]["OptionChkFunc4111"] = function ()
	return ItemOutputOfNien_HasThisBook(3302089)
end

tItem[3302114]["Option4112"] = tItemOutputOfNien_Text[3302114]["Option4112"]
tItem[3302114]["OptionFunc4112"] = "ItemOutputOfNien_TakeOutOne</N>3302114</N>3302090"
tItem[3302114]["OptionChkFunc4112"] = function ()
	return ItemOutputOfNien_HasThisBook(3302090)
end


--五个核桃(有时效)
tItem[3302112] = tItem[3302112] or {}
tItem[3302112]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_IsOutTime(nItemId)
end

--普通课本
tItem[3302079] = tItem[3302079] or {}
tItem[3302079]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_IsOutTime(nItemId)
end

tItem[3302080] = tItem[3302080] or {}
tItem[3302080]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_IsOutTime(nItemId)
end

tItem[3302081] = tItem[3302081] or {}
tItem[3302081]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_IsOutTime(nItemId)
end

tItem[3302082] = tItem[3302082] or {}
tItem[3302082]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_IsOutTime(nItemId)
end

--中级课本
tItem[3302083] = tItem[3302083] or {}
tItem[3302083]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_OutTimeExchange(nItemId)
end

tItem[3302084] = tItem[3302084] or {}
tItem[3302084]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_OutTimeExchange(nItemId)
end

tItem[3302085] = tItem[3302085] or {}
tItem[3302085]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_OutTimeExchange(nItemId)
end

tItem[3302086] = tItem[3302086] or {}
tItem[3302086]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_OutTimeExchange(nItemId)
end

--高级课本
tItem[3302087] = tItem[3302087] or {}
tItem[3302087]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_OutTimeExchange(nItemId)
end

tItem[3302088] = tItem[3302088] or {}
tItem[3302088]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_OutTimeExchange(nItemId)
end

tItem[3302089] = tItem[3302089] or {}
tItem[3302089]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_OutTimeExchange(nItemId)
end

tItem[3302090] = tItem[3302090] or {}
tItem[3302090]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_OutTimeExchange(nItemId)
end

--隐藏课本
tItem[3302091] = tItem[3302091] or {}
tItem[3302091]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_IsOutTime(nItemId)
end

tItem[3302092] = tItem[3302092] or {}
tItem[3302092]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_IsOutTime(nItemId)
end

tItem[3302093] = tItem[3302093] or {}
tItem[3302093]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_IsOutTime(nItemId)
end

tItem[3302094] = tItem[3302094] or {}
tItem[3302094]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_IsOutTime(nItemId)
end

tItem[3302095] = tItem[3302095] or {}
tItem[3302095]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_IsOutTime(nItemId)
end

tItem[3302096] = tItem[3302096] or {}
tItem[3302096]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_IsOutTime(nItemId)
end

tItem[3302097] = tItem[3302097] or {}
tItem[3302097]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_IsOutTime(nItemId)
end

tItem[3302098] = tItem[3302098] or {}
tItem[3302098]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_IsOutTime(nItemId)
end

tItem[3302099] = tItem[3302099] or {}
tItem[3302099]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_IsOutTime(nItemId)
end

tItem[3302100] = tItem[3302100] or {}
tItem[3302100]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_IsOutTime(nItemId)
end

tItem[3302101] = tItem[3302101] or {}
tItem[3302101]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_IsOutTime(nItemId)
end

tItem[3302102] = tItem[3302102] or {}
tItem[3302102]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_IsOutTime(nItemId)
end

tItem[3302103] = tItem[3302103] or {}
tItem[3302103]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_IsOutTime(nItemId)
end

tItem[3302104] = tItem[3302104] or {}
tItem[3302104]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_IsOutTime(nItemId)
end

tItem[3302105] = tItem[3302105] or {}
tItem[3302105]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_IsOutTime(nItemId)
end

tItem[3302106] = tItem[3302106] or {}
tItem[3302106]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_IsOutTime(nItemId)
end

tItem[3302107] = tItem[3302107] or {}
tItem[3302107]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_IsOutTime(nItemId)
end

tItem[3302108] = tItem[3302108] or {}
tItem[3302108]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_IsOutTime(nItemId)
end

tItem[3302109] = tItem[3302109] or {}
tItem[3302109]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_IsOutTime(nItemId)
end

tItem[3302110] = tItem[3302110] or {}
tItem[3302110]["Function"] = function(nItemId,nItemName)
	ItemOutputOfNien_IsOutTime(nItemId)
end


-----------------------------------------------------怪物逻辑-----------------------------------------------------
--所有片区有几率掉落《未鉴定的课本》 ，开启可随机获得普通课本和隐藏课本。
--所有片区有几率掉落5个核桃
-- local tItemOutputOfNien_DropBook = {}
-- tItemOutputOfNien_DropBook["Function"] = ItemOutputOfNien_MonsterDropBook
-- tItemOutputOfNien_DropBook["Area"]={} --无区域要求，不配也一样
-- --活动时间
-- tItemOutputOfNien_DropBook["ActivityTime"]= "2017-04-06 00:00 2017-04-15 23:59"
-- table.insert(tMonsterDrop_AreaLoad,tItemOutputOfNien_DropBook)

-- local tItemOutputOfNien_DropWalnut = {}
-- tItemOutputOfNien_DropWalnut["Function"] = ItemOutputOfNien_MonsterDropWalnut
-- --活动时间
-- tItemOutputOfNien_DropWalnut["ActivityTime"]= "2017-04-06 00:00 2017-04-15 23:59"
-- table.insert(tMonsterDrop_AreaLoad,tItemOutputOfNien_DropWalnut)


