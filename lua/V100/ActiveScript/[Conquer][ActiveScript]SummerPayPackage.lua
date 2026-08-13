------------------------------------------------------------------------------
--Name:		[征服][活动脚本]7月暑期充值礼包
--Creator: 	郑宗胜
--Created:	2016/06/16
------------------------------------------------------------------------------
-- 命名前缀
--SummerPayPackage_

--logid :12000428
--luaini : 40277
------------------------------------配置----------------------------------
--奖励配置
local tSummerPayPackage_Reward = {}
	tSummerPayPackage_Reward[3200536] = {}
	--选项1
	tSummerPayPackage_Reward[3200536][1]={}
	tSummerPayPackage_Reward[3200536][1]["RewardItem"] = {}
	tSummerPayPackage_Reward[3200536][1]["RewardItem"][1] = {}
	tSummerPayPackage_Reward[3200536][1]["RewardItem"][1]["Id"] = 3001044 --百炼天机果
	tSummerPayPackage_Reward[3200536][1]["RewardItem"][1]["Attr"] = "0 1"
	tSummerPayPackage_Reward[3200536][1]["Talk"]=tSummerPayPackage_Text["Award"][1]
	tSummerPayPackage_Reward[3200536][1]["Log"] = "0,0,3200536,1,12000428,2,3200475,1"
	tSummerPayPackage_Reward[3200536][1]["DeleteItem"]={}
	tSummerPayPackage_Reward[3200536][1]["DeleteItem"][1]={}
	tSummerPayPackage_Reward[3200536][1]["DeleteItem"][1]["Id"] = 3200536
	tSummerPayPackage_Reward[3200536][1]["DeleteItem"][1]["Attr"] = "0 1"
	--选项2
	tSummerPayPackage_Reward[3200536][2]={}
	tSummerPayPackage_Reward[3200536][2]["RewardStrengthValue"] = {}
	tSummerPayPackage_Reward[3200536][2]["RewardStrengthValue"]["Value"] = 3000
	tSummerPayPackage_Reward[3200536][2]["Talk"]=tSummerPayPackage_Text["Award"][2]
	tSummerPayPackage_Reward[3200536][2]["Log"] = "0,0,3200536,1,12000428,2,12,3000"
	tSummerPayPackage_Reward[3200536][2]["DeleteItem"]={}
	tSummerPayPackage_Reward[3200536][2]["DeleteItem"][1]={}
	tSummerPayPackage_Reward[3200536][2]["DeleteItem"][1]["Id"] = 3200536
	tSummerPayPackage_Reward[3200536][2]["DeleteItem"][1]["Attr"] = "0 1"

------------------------------------逻辑----------------------------------
--礼包使用，nOption=1 --百炼天机果，=2 -- 3000点气力值
function SummerPayPackage_UseItem(nItemId,nOption)
	RewardTemplate_UseItem(tSummerPayPackage_Reward[nItemId][nOption])
end


------------------------------------物品模板----------------------------------
tItem[3200536] = tItem[3200536] or {}
tItem[3200536]["Text1-1"]={111}
tItem[3200536]["Text111"]=tSummerPayPackage_Text[3200536]["Text111"]
tItem[3200536]["tOption1-1"]={1,2,3}
tItem[3200536]["Option1"]=tSummerPayPackage_Text[3200536]["Option1"]
tItem[3200536]["OptionPoint1"]="2-1" 
tItem[3200536]["Option2"]=tSummerPayPackage_Text[3200536]["Option2"]
tItem[3200536]["OptionPoint2"]="2-2" 
tItem[3200536]["Option3"]=tSummerPayPackage_Text[3200536]["Option3"]

--二次确认
tItem[3200536]["Text2-1"]={211}
tItem[3200536]["Text211"]=tSummerPayPackage_Text[3200536]["Text211"]
tItem[3200536]["tOption2-1"]={4,5}
tItem[3200536]["Option4"]=tSummerPayPackage_Text[3200536]["Option4"]
tItem[3200536]["OptionFunc4"]="SummerPayPackage_UseItem</N>3200536</N>1"
tItem[3200536]["Option5"]=tSummerPayPackage_Text[3200536]["Option5"]

tItem[3200536]["Text2-2"]={221}
tItem[3200536]["Text221"]=tSummerPayPackage_Text[3200536]["Text221"]
tItem[3200536]["tOption2-2"]={6,5}
tItem[3200536]["Option6"]=tSummerPayPackage_Text[3200536]["Option4"]
tItem[3200536]["OptionFunc6"]="SummerPayPackage_UseItem</N>3200536</N>2"

