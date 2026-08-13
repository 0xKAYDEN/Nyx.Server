--------------------------------------------------------------------------------
---Name:160415[简体征服][活动脚本]赠品商城精品装备礼包制作
--Creator: 	林强
--Created:	2016-04-15
--------------------------------------------------------------------------------





--命名规范
--GiftElaborateShop_





local sGiftElaborateShop_Log="0,0,%d,1,12000357,2,%d,1"
local tGiftElaborateShop_Pack={}
 


--精品头部防具礼包
tGiftElaborateShop_Pack[3100097]={}


--勇士
tGiftElaborateShop_Pack[3100097][10]= {}
tGiftElaborateShop_Pack[3100097][10]["Item"]={}
--直接获得一件赠品护首铁
tGiftElaborateShop_Pack[3100097][10]["Item"]={}
tGiftElaborateShop_Pack[3100097][10]["Item"]["Item_ID"]= 118008
tGiftElaborateShop_Pack[3100097][10]["Item"]["ItemAttr"]= "0 1 3"

--战士
tGiftElaborateShop_Pack[3100097][20]={}
tGiftElaborateShop_Pack[3100097][20]["DialogIndex"]="1-1"
--下面装备二选一
tGiftElaborateShop_Pack[3100097][20]["Option"]={}
--赠品浑铁盔
tGiftElaborateShop_Pack[3100097][20]["Option"][1]={}
tGiftElaborateShop_Pack[3100097][20]["Option"][1]["Item_ID"]=111008
tGiftElaborateShop_Pack[3100097][20]["Option"][1]["ItemAttr"]="0 1 3"
--赠品粗布头带
tGiftElaborateShop_Pack[3100097][20]["Option"][2]={}
tGiftElaborateShop_Pack[3100097][20]["Option"][2]["Item_ID"]=141008
tGiftElaborateShop_Pack[3100097][20]["Option"][2]["ItemAttr"]="0 1 3"



--弓手
tGiftElaborateShop_Pack[3100097][40]={}
tGiftElaborateShop_Pack[3100097][40]["DialogIndex"]="2-1"
--下面装备二选一
tGiftElaborateShop_Pack[3100097][40]["Option"]={}
--赠品獾皮帽
tGiftElaborateShop_Pack[3100097][40]["Option"][1]={}
tGiftElaborateShop_Pack[3100097][40]["Option"][1]["Item_ID"]=113008
tGiftElaborateShop_Pack[3100097][40]["Option"][1]["ItemAttr"]="0 1 3"
--赠品夷情之羽
tGiftElaborateShop_Pack[3100097][40]["Option"][2]={}
tGiftElaborateShop_Pack[3100097][40]["Option"][2]["Item_ID"]=142008
tGiftElaborateShop_Pack[3100097][40]["Option"][2]["ItemAttr"]="0 1 3"


--刺客
tGiftElaborateShop_Pack[3100097][50]={}
tGiftElaborateShop_Pack[3100097][50]["DialogIndex"]="3-1"
--下面装备二选一
tGiftElaborateShop_Pack[3100097][50]["Option"]={}
--赠品蓝布护额
tGiftElaborateShop_Pack[3100097][50]["Option"][1]={}
tGiftElaborateShop_Pack[3100097][50]["Option"][1]["Item_ID"]=123008
tGiftElaborateShop_Pack[3100097][50]["Option"][1]["ItemAttr"]="0 1 3"
--赠品百忍之护
tGiftElaborateShop_Pack[3100097][50]["Option"][2]={}
tGiftElaborateShop_Pack[3100097][50]["Option"][2]["Item_ID"]=112008
tGiftElaborateShop_Pack[3100097][50]["Option"][2]["ItemAttr"]="0 1 3"


--武僧
tGiftElaborateShop_Pack[3100097][60]= {}
tGiftElaborateShop_Pack[3100097][60]["Item"]={}
--直接获得一件赠品黄铜发箍
tGiftElaborateShop_Pack[3100097][60]["Item"]={}
tGiftElaborateShop_Pack[3100097][60]["Item"]["Item_ID"]= 143008
tGiftElaborateShop_Pack[3100097][60]["Item"]["ItemAttr"]= "0 1 3"


--海盗
tGiftElaborateShop_Pack[3100097][70]={}
tGiftElaborateShop_Pack[3100097][70]["DialogIndex"]="4-1"
--下面装备二选一
tGiftElaborateShop_Pack[3100097][70]["Option"]={}
--赠品巡海者头饰
tGiftElaborateShop_Pack[3100097][70]["Option"][1]={}
tGiftElaborateShop_Pack[3100097][70]["Option"][1]["Item_ID"]=144008
tGiftElaborateShop_Pack[3100097][70]["Option"][1]["ItemAttr"]="0 1 3"
--赠品海潮头巾
tGiftElaborateShop_Pack[3100097][70]["Option"][2]={}
tGiftElaborateShop_Pack[3100097][70]["Option"][2]["Item_ID"]=145008
tGiftElaborateShop_Pack[3100097][70]["Option"][2]["ItemAttr"]="0 1 3"


--截拳
tGiftElaborateShop_Pack[3100097][80]= {}
tGiftElaborateShop_Pack[3100097][80]["Item"]={}
--直接获得一件赠品棉麻头巾
tGiftElaborateShop_Pack[3100097][80]["Item"]={}
tGiftElaborateShop_Pack[3100097][80]["Item"]["Item_ID"]= 148008
tGiftElaborateShop_Pack[3100097][80]["Item"]["ItemAttr"]= "0 1 3"


--道士
tGiftElaborateShop_Pack[3100097][100]={}
tGiftElaborateShop_Pack[3100097][100]["DialogIndex"]="5-1"
--下面装备二选一
tGiftElaborateShop_Pack[3100097][100]["Option"]={}
--赠品阴阳冠
tGiftElaborateShop_Pack[3100097][100]["Option"][1]={}
tGiftElaborateShop_Pack[3100097][100]["Option"][1]["Item_ID"]=114008
tGiftElaborateShop_Pack[3100097][100]["Option"][1]["ItemAttr"]="0 1 3"
--赠品坠青耳环
tGiftElaborateShop_Pack[3100097][100]["Option"][2]={}
tGiftElaborateShop_Pack[3100097][100]["Option"][2]["Item_ID"]=117008
tGiftElaborateShop_Pack[3100097][100]["Option"][2]["ItemAttr"]="0 1 3"

--铁扇门
tGiftElaborateShop_Pack[3100097][160]= {}
tGiftElaborateShop_Pack[3100097][160]["Item"]={}
--直接获得一件赠品铁扇门头
tGiftElaborateShop_Pack[3100097][160]["Item"]={}
tGiftElaborateShop_Pack[3100097][160]["Item"]["Item_ID"]= 170008
tGiftElaborateShop_Pack[3100097][160]["Item"]["ItemAttr"]= "0 1 3"

--雷神
tGiftElaborateShop_Pack[3100097][90]={}
tGiftElaborateShop_Pack[3100097][90]["DialogIndex"]="6-1"
--下面装备二选一
tGiftElaborateShop_Pack[3100097][90]["Option"]={}
--赠品物理头盔
tGiftElaborateShop_Pack[3100097][90]["Option"][1]={}
tGiftElaborateShop_Pack[3100097][90]["Option"][1]["Item_ID"]=146008
tGiftElaborateShop_Pack[3100097][90]["Option"][1]["ItemAttr"]="0 1 3"
--赠品魔法头盔
tGiftElaborateShop_Pack[3100097][90]["Option"][2]={}
tGiftElaborateShop_Pack[3100097][90]["Option"][2]["Item_ID"]=147008
tGiftElaborateShop_Pack[3100097][90]["Option"][2]["ItemAttr"]="0 1 3"


------------------------------------------------武器礼包---------------------------------------
--精品武器礼包
tGiftElaborateShop_Pack[3100098]={}


--勇士
tGiftElaborateShop_Pack[3100098][10]={}
tGiftElaborateShop_Pack[3100098][10]["DialogIndex"]="6-1"
--下面武器三选一
tGiftElaborateShop_Pack[3100098][10]["Option"]={}
--赠品修罗刀
tGiftElaborateShop_Pack[3100098][10]["Option"][1]={}
tGiftElaborateShop_Pack[3100098][10]["Option"][1]["Item_ID"]=410028
tGiftElaborateShop_Pack[3100098][10]["Option"][1]["ItemAttr"]="0 1 3"
--赠品青冥剑
tGiftElaborateShop_Pack[3100098][10]["Option"][2]={}
tGiftElaborateShop_Pack[3100098][10]["Option"][2]["Item_ID"]=420028
tGiftElaborateShop_Pack[3100098][10]["Option"][2]["ItemAttr"]="0 1 3"
--赠品短木棒
tGiftElaborateShop_Pack[3100098][10]["Option"][3]={}
tGiftElaborateShop_Pack[3100098][10]["Option"][3]["Item_ID"]=480028
tGiftElaborateShop_Pack[3100098][10]["Option"][3]["ItemAttr"]="0 1 3"

--战士
tGiftElaborateShop_Pack[3100098][20]={}
tGiftElaborateShop_Pack[3100098][20]["DialogIndex"]="7-1"
--下面武器三选一
tGiftElaborateShop_Pack[3100098][20]["Option"]={}
--赠品朱缨枪
tGiftElaborateShop_Pack[3100098][20]["Option"][1]={}
tGiftElaborateShop_Pack[3100098][20]["Option"][1]["Item_ID"]=560028
tGiftElaborateShop_Pack[3100098][20]["Option"][1]["ItemAttr"]="0 1 3"
--赠品蜡木棍
tGiftElaborateShop_Pack[3100098][20]["Option"][2]={}
tGiftElaborateShop_Pack[3100098][20]["Option"][2]["Item_ID"]=561028
tGiftElaborateShop_Pack[3100098][20]["Option"][2]["ItemAttr"]="0 1 3"
--赠品软藤盾
tGiftElaborateShop_Pack[3100098][20]["Option"][3]={}
tGiftElaborateShop_Pack[3100098][20]["Option"][3]["Item_ID"]=900008
tGiftElaborateShop_Pack[3100098][20]["Option"][3]["ItemAttr"]="0 1 3"

--弓手
tGiftElaborateShop_Pack[3100098][40]={}
tGiftElaborateShop_Pack[3100098][40]["DialogIndex"]="8-1"
--下面武器二选一
tGiftElaborateShop_Pack[3100098][40]["Option"]={}
--赠品猎弓
tGiftElaborateShop_Pack[3100098][40]["Option"][1]={}
tGiftElaborateShop_Pack[3100098][40]["Option"][1]["Item_ID"]=500018
tGiftElaborateShop_Pack[3100098][40]["Option"][1]["ItemAttr"]="0 1 3"
--赠品狼牙飞刀
tGiftElaborateShop_Pack[3100098][40]["Option"][2]={}
tGiftElaborateShop_Pack[3100098][40]["Option"][2]["Item_ID"]=613018
tGiftElaborateShop_Pack[3100098][40]["Option"][2]["ItemAttr"]="0 1 3"


--刺客
tGiftElaborateShop_Pack[3100098][50]={}
tGiftElaborateShop_Pack[3100098][50]["DialogIndex"]="9-1"
--下面武器二选一
tGiftElaborateShop_Pack[3100098][50]["Option"]={}
--赠品武藏钩镰
tGiftElaborateShop_Pack[3100098][50]["Option"][1]={}
tGiftElaborateShop_Pack[3100098][50]["Option"][1]["Item_ID"]=511028
tGiftElaborateShop_Pack[3100098][50]["Option"][1]["ItemAttr"]="0 1 3"
--赠品精钢切
tGiftElaborateShop_Pack[3100098][50]["Option"][2]={}
tGiftElaborateShop_Pack[3100098][50]["Option"][2]["Item_ID"]=601028
tGiftElaborateShop_Pack[3100098][50]["Option"][2]["ItemAttr"]="0 1 3"

--武僧
tGiftElaborateShop_Pack[3100098][60]= {}
tGiftElaborateShop_Pack[3100098][60]["Item"]={}
--直接获得一件赠品金蝉念珠
tGiftElaborateShop_Pack[3100098][60]["Item"]={}
tGiftElaborateShop_Pack[3100098][60]["Item"]["Item_ID"]= 610028
tGiftElaborateShop_Pack[3100098][60]["Item"]["ItemAttr"]= "0 1 3"

--海盗
tGiftElaborateShop_Pack[3100098][70]={}
tGiftElaborateShop_Pack[3100098][70]["DialogIndex"]="10-1"
--下面武器二选一
tGiftElaborateShop_Pack[3100098][70]["Option"]={}
--赠品勇者佩剑
tGiftElaborateShop_Pack[3100098][70]["Option"][1]={}
tGiftElaborateShop_Pack[3100098][70]["Option"][1]["Item_ID"]=611028
tGiftElaborateShop_Pack[3100098][70]["Option"][1]["ItemAttr"]="0 1 3"
--赠品中级火枪
tGiftElaborateShop_Pack[3100098][70]["Option"][2]={}
tGiftElaborateShop_Pack[3100098][70]["Option"][2]["Item_ID"]=612028
tGiftElaborateShop_Pack[3100098][70]["Option"][2]["ItemAttr"]="0 1 3"

--截拳
tGiftElaborateShop_Pack[3100098][80]= {}
tGiftElaborateShop_Pack[3100098][80]["Item"]={}
--直接获得一件赠品枣木双截棍
tGiftElaborateShop_Pack[3100098][80]["Item"]={}
tGiftElaborateShop_Pack[3100098][80]["Item"]["Item_ID"]= 617028
tGiftElaborateShop_Pack[3100098][80]["Item"]["ItemAttr"]= "0 1 3"

--道士
tGiftElaborateShop_Pack[3100098][100]= {}
tGiftElaborateShop_Pack[3100098][100]["Item"]={}
--直接获得一件赠品驱邪剑
tGiftElaborateShop_Pack[3100098][100]["Item"]={}
tGiftElaborateShop_Pack[3100098][100]["Item"]["Item_ID"]= 421028
tGiftElaborateShop_Pack[3100098][100]["Item"]["ItemAttr"]= "0 1 3"

--铁扇门
tGiftElaborateShop_Pack[3100098][160]= {}
tGiftElaborateShop_Pack[3100098][160]["Item"]={}
--直接获得一件赠品扇子
tGiftElaborateShop_Pack[3100098][160]["Item"]={}
tGiftElaborateShop_Pack[3100098][160]["Item"]["Item_ID"]= 626028
tGiftElaborateShop_Pack[3100098][160]["Item"]["ItemAttr"]= "0 1 3"

--雷神
tGiftElaborateShop_Pack[3100098][90]={}
tGiftElaborateShop_Pack[3100098][90]["DialogIndex"]="11-1"
--下面武器二选一
tGiftElaborateShop_Pack[3100098][90]["Option"]={}
--赠品雷神之锤
tGiftElaborateShop_Pack[3100098][90]["Option"][1]={}
tGiftElaborateShop_Pack[3100098][90]["Option"][1]["Item_ID"]=681028
tGiftElaborateShop_Pack[3100098][90]["Option"][1]["ItemAttr"]="0 1 3"
--赠品风暴战斧
tGiftElaborateShop_Pack[3100098][90]["Option"][2]={}
tGiftElaborateShop_Pack[3100098][90]["Option"][2]["Item_ID"]=680028
tGiftElaborateShop_Pack[3100098][90]["Option"][2]["ItemAttr"]="0 1 3"


-----------------------------------------------------------------------手镯礼包-------------
--精品手镯礼包
tGiftElaborateShop_Pack[3100099]={}
--道士
tGiftElaborateShop_Pack[3100099][100]= {}
tGiftElaborateShop_Pack[3100099][100]["Item"]={}
--直接获得一件赠品桃木镯
tGiftElaborateShop_Pack[3100099][100]["Item"]={}
tGiftElaborateShop_Pack[3100099][100]["Item"]["Item_ID"]= 152018
tGiftElaborateShop_Pack[3100099][100]["Item"]["ItemAttr"]= "0 1 3"

--其他职业
tGiftElaborateShop_Pack[3100099][0]= {}
tGiftElaborateShop_Pack[3100099][0]["Item"]={}
--直接获得一件赠品铜指环
tGiftElaborateShop_Pack[3100099][0]["Item"]={}
tGiftElaborateShop_Pack[3100099][0]["Item"]["Item_ID"]= 150018
tGiftElaborateShop_Pack[3100099][0]["Item"]["ItemAttr"]= "0 1 3"


-----------------------------------------------------------------------衣服礼包-------------
--精品衣服礼包
tGiftElaborateShop_Pack[3100100]={}

--勇士
tGiftElaborateShop_Pack[3100100][10]= {}
tGiftElaborateShop_Pack[3100100][10]["Item"]={}
--直接获得一件赠品皮护甲
tGiftElaborateShop_Pack[3100100][10]["Item"]={}
tGiftElaborateShop_Pack[3100100][10]["Item"]["Item_ID"]= 130008
tGiftElaborateShop_Pack[3100100][10]["Item"]["ItemAttr"]= "0 1 3"

--战士
tGiftElaborateShop_Pack[3100100][20]= {}
tGiftElaborateShop_Pack[3100100][20]["Item"]={}
--直接获得一件赠品牛皮铠
tGiftElaborateShop_Pack[3100100][20]["Item"]={}
tGiftElaborateShop_Pack[3100100][20]["Item"]["Item_ID"]= 131008
tGiftElaborateShop_Pack[3100100][20]["Item"]["ItemAttr"]= "0 1 3"

--弓手
tGiftElaborateShop_Pack[3100100][40]= {}
tGiftElaborateShop_Pack[3100100][40]["Item"]={}
--直接获得一件赠品鹿皮猎褂
tGiftElaborateShop_Pack[3100100][40]["Item"]={}
tGiftElaborateShop_Pack[3100100][40]["Item"]["Item_ID"]= 133008
tGiftElaborateShop_Pack[3100100][40]["Item"]["ItemAttr"]= "0 1 3"

--刺客
tGiftElaborateShop_Pack[3100100][50]= {}
tGiftElaborateShop_Pack[3100100][50]["Item"]={}
--直接获得一件赠品下忍服
tGiftElaborateShop_Pack[3100100][50]["Item"]={}
tGiftElaborateShop_Pack[3100100][50]["Item"]["Item_ID"]= 135008
tGiftElaborateShop_Pack[3100100][50]["Item"]["ItemAttr"]= "0 1 3"

--刺客
tGiftElaborateShop_Pack[3100100][50]= {}
tGiftElaborateShop_Pack[3100100][50]["Item"]={}
--直接获得一件赠品下忍服
tGiftElaborateShop_Pack[3100100][50]["Item"]={}
tGiftElaborateShop_Pack[3100100][50]["Item"]["Item_ID"]= 135008
tGiftElaborateShop_Pack[3100100][50]["Item"]["ItemAttr"]= "0 1 3"


--武僧
tGiftElaborateShop_Pack[3100100][60]= {}
tGiftElaborateShop_Pack[3100100][60]["Item"]={}
--直接获得一件赠品粗葛布袍
tGiftElaborateShop_Pack[3100100][60]["Item"]={}
tGiftElaborateShop_Pack[3100100][60]["Item"]["Item_ID"]= 136008
tGiftElaborateShop_Pack[3100100][60]["Item"]["ItemAttr"]= "0 1 3"

--海盗
tGiftElaborateShop_Pack[3100100][70]= {}
tGiftElaborateShop_Pack[3100100][70]["Item"]={}
--直接获得一件赠品淘浪裳
tGiftElaborateShop_Pack[3100100][70]["Item"]={}
tGiftElaborateShop_Pack[3100100][70]["Item"]["Item_ID"]= 139008
tGiftElaborateShop_Pack[3100100][70]["Item"]["ItemAttr"]= "0 1 3"

--截拳
tGiftElaborateShop_Pack[3100100][80]= {}
tGiftElaborateShop_Pack[3100100][80]["Item"]={}
--直接获得一件赠品连身战衣
tGiftElaborateShop_Pack[3100100][80]["Item"]={}
tGiftElaborateShop_Pack[3100100][80]["Item"]["Item_ID"]= 138008
tGiftElaborateShop_Pack[3100100][80]["Item"]["ItemAttr"]= "0 1 3"


--道士
tGiftElaborateShop_Pack[3100100][100]= {}
tGiftElaborateShop_Pack[3100100][100]["Item"]={}
--直接获得一件赠品混元道袍
tGiftElaborateShop_Pack[3100100][100]["Item"]={}
tGiftElaborateShop_Pack[3100100][100]["Item"]["Item_ID"]= 134008
tGiftElaborateShop_Pack[3100100][100]["Item"]["ItemAttr"]= "0 1 3"

--铁扇门
tGiftElaborateShop_Pack[3100100][160]= {}
tGiftElaborateShop_Pack[3100100][160]["Item"]={}
--直接获得一件赠品铁扇门衣服【15级】
tGiftElaborateShop_Pack[3100100][160]["Item"]={}
tGiftElaborateShop_Pack[3100100][160]["Item"]["Item_ID"]= 101008
tGiftElaborateShop_Pack[3100100][160]["Item"]["ItemAttr"]= "0 1 3"

--雷神
tGiftElaborateShop_Pack[3100100][90]= {}
tGiftElaborateShop_Pack[3100100][90]["Item"]={}
--直接获得一件赠品雷神衣服【15级】
tGiftElaborateShop_Pack[3100100][90]["Item"]={}
tGiftElaborateShop_Pack[3100100][90]["Item"]["Item_ID"]= 102008
tGiftElaborateShop_Pack[3100100][90]["Item"]["ItemAttr"]= "0 1 3"

-----------------------------------------------------------------------脚部礼包-------------
--精品脚部礼包
tGiftElaborateShop_Pack[3100101]={}
--所有职业
tGiftElaborateShop_Pack[3100101][0]= {}
tGiftElaborateShop_Pack[3100101][0]["Item"]={}
--直接获得一件赠品牛皮靴
tGiftElaborateShop_Pack[3100101][0]["Item"]={}
tGiftElaborateShop_Pack[3100101][0]["Item"]["Item_ID"]= 160018
tGiftElaborateShop_Pack[3100101][0]["Item"]["ItemAttr"]= "0 1 3"

-----------------------------------------------------------------------颈部礼包-------------
--精品颈部礼包
tGiftElaborateShop_Pack[3100102]={}
--道士
tGiftElaborateShop_Pack[3100102][100]={}
tGiftElaborateShop_Pack[3100102][100]["DialogIndex"]="11-1"
--下面项链二选一
tGiftElaborateShop_Pack[3100102][100]["Option"]={}
--赠品赠品百花囊
tGiftElaborateShop_Pack[3100102][100]["Option"][1]={}
tGiftElaborateShop_Pack[3100102][100]["Option"][1]["Item_ID"]=121028
tGiftElaborateShop_Pack[3100102][100]["Option"][1]["ItemAttr"]="0 1 3"
--赠品赠品鸡心相连
tGiftElaborateShop_Pack[3100102][100]["Option"][2]={}
tGiftElaborateShop_Pack[3100102][100]["Option"][2]["Item_ID"]=120028
tGiftElaborateShop_Pack[3100102][100]["Option"][2]["ItemAttr"]="0 1 3"

--其他职业
tGiftElaborateShop_Pack[3100102][0]= {}
tGiftElaborateShop_Pack[3100102][0]["Item"]={}
--直接获得一件赠品鸡心相连
tGiftElaborateShop_Pack[3100102][0]["Item"]={}
tGiftElaborateShop_Pack[3100102][0]["Item"]["Item_ID"]= 120028
tGiftElaborateShop_Pack[3100102][0]["Item"]["ItemAttr"]= "0 1 3"


------------------------------------------------复用简体逻辑部分------------------------------
local tBoundItemCheck_Pack={}
--礼包价格
tBoundItemCheck_Pack["Price"]={}
tBoundItemCheck_Pack["Price"][3100097]=30
tBoundItemCheck_Pack["Price"][3100098]=30
tBoundItemCheck_Pack["Price"][3100099]=30
tBoundItemCheck_Pack["Price"][3100100]=30
tBoundItemCheck_Pack["Price"][3100101]=30
tBoundItemCheck_Pack["Price"][3100102]=30
tBoundItemCheck_Pack["Price"][3311029]=30
tBoundItemCheck_Pack["Price"][3311030]=30
tBoundItemCheck_Pack["Price"][3311031]=489
tBoundItemCheck_Pack["Price"][3311032]=30

tBoundItemCheck_Pack["Price"][3321554]=30
tBoundItemCheck_Pack["Price"][3321555]=30
tBoundItemCheck_Pack["Price"][3321556]=30
tBoundItemCheck_Pack["Price"][3321557]=30
tBoundItemCheck_Pack["Price"][3321558]=30

--返还赠点
tBoundItemCheck_Pack["BackCP"]={}
tBoundItemCheck_Pack["BackCP"][3100097]={}
tBoundItemCheck_Pack["BackCP"][3100097]["LogId"]=12001174
tBoundItemCheck_Pack["BackCP"][3100097]["DeleteItem"] = {}
tBoundItemCheck_Pack["BackCP"][3100097]["DeleteItem"][1] = {}
tBoundItemCheck_Pack["BackCP"][3100097]["DeleteItem"][1]["Id"] = 3100097
tBoundItemCheck_Pack["BackCP"][3100097]["RewardEMoneyMono"] = {}
tBoundItemCheck_Pack["BackCP"][3100097]["RewardEMoneyMono"]["Value"] = 30
tBoundItemCheck_Pack["BackCP"][3100097]["EmoneyLog"] = "10000	0063	1	1	30	"

tBoundItemCheck_Pack["BackCP"][3100098]={}
tBoundItemCheck_Pack["BackCP"][3100098]["LogId"]=12001174
tBoundItemCheck_Pack["BackCP"][3100098]["DeleteItem"] = {}
tBoundItemCheck_Pack["BackCP"][3100098]["DeleteItem"][1] = {}
tBoundItemCheck_Pack["BackCP"][3100098]["DeleteItem"][1]["Id"] = 3100098
tBoundItemCheck_Pack["BackCP"][3100098]["RewardEMoneyMono"] = {}
tBoundItemCheck_Pack["BackCP"][3100098]["RewardEMoneyMono"] ["Value"] = 30
tBoundItemCheck_Pack["BackCP"][3100098]["EmoneyLog"] = "10000	0064	1	1	30	"

tBoundItemCheck_Pack["BackCP"][3100099]={}
tBoundItemCheck_Pack["BackCP"][3100099]["LogId"]=12001174
tBoundItemCheck_Pack["BackCP"][3100099]["DeleteItem"] = {}
tBoundItemCheck_Pack["BackCP"][3100099]["DeleteItem"][1] = {}
tBoundItemCheck_Pack["BackCP"][3100099]["DeleteItem"][1]["Id"] = 3100099
tBoundItemCheck_Pack["BackCP"][3100099]["RewardEMoneyMono"] = {}
tBoundItemCheck_Pack["BackCP"][3100099]["RewardEMoneyMono"]["Value"] = 30
tBoundItemCheck_Pack["BackCP"][3100099]["EmoneyLog"] = "10000	0065	1	1	30	"

tBoundItemCheck_Pack["BackCP"][3100100]={}
tBoundItemCheck_Pack["BackCP"][3100100]["LogId"]=12001174
tBoundItemCheck_Pack["BackCP"][3100100]["DeleteItem"] = {}
tBoundItemCheck_Pack["BackCP"][3100100]["DeleteItem"][1] = {}
tBoundItemCheck_Pack["BackCP"][3100100]["DeleteItem"][1]["Id"] = 3100100
tBoundItemCheck_Pack["BackCP"][3100100]["RewardEMoneyMono"] = {}
tBoundItemCheck_Pack["BackCP"][3100100]["RewardEMoneyMono"]["Value"] = 30
tBoundItemCheck_Pack["BackCP"][3100100]["EmoneyLog"] = "10000	0066	1	1	30	"

tBoundItemCheck_Pack["BackCP"][3100101]={}
tBoundItemCheck_Pack["BackCP"][3100101]["LogId"]=12001174
tBoundItemCheck_Pack["BackCP"][3100101]["DeleteItem"] = {}
tBoundItemCheck_Pack["BackCP"][3100101]["DeleteItem"][1] = {}
tBoundItemCheck_Pack["BackCP"][3100101]["DeleteItem"][1]["Id"] = 3100101
tBoundItemCheck_Pack["BackCP"][3100101]["RewardEMoneyMono"] = {}
tBoundItemCheck_Pack["BackCP"][3100101]["RewardEMoneyMono"]["Value"] = 30
tBoundItemCheck_Pack["BackCP"][3100101]["EmoneyLog"] = "10000	0067	1	1	30	"

tBoundItemCheck_Pack["BackCP"][3100102]={}
tBoundItemCheck_Pack["BackCP"][3100102]["LogId"]=12001174
tBoundItemCheck_Pack["BackCP"][3100102]["DeleteItem"] = {}
tBoundItemCheck_Pack["BackCP"][3100102]["DeleteItem"][1] = {}
tBoundItemCheck_Pack["BackCP"][3100102]["DeleteItem"][1]["Id"] = 3100102
tBoundItemCheck_Pack["BackCP"][3100102]["RewardEMoneyMono"] = {}
tBoundItemCheck_Pack["BackCP"][3100102]["RewardEMoneyMono"]["Value"] = 30
tBoundItemCheck_Pack["BackCP"][3100102]["EmoneyLog"] = "10000	0068	1	1	30	"

tBoundItemCheck_Pack["BackCP"][3311029]={}
tBoundItemCheck_Pack["BackCP"][3311029]["LogId"]=12001174
tBoundItemCheck_Pack["BackCP"][3311029]["DeleteItem"] = {}
tBoundItemCheck_Pack["BackCP"][3311029]["DeleteItem"][1] = {}
tBoundItemCheck_Pack["BackCP"][3311029]["DeleteItem"][1]["Id"] = 3311029
tBoundItemCheck_Pack["BackCP"][3311029]["RewardEMoneyMono"] = {}
tBoundItemCheck_Pack["BackCP"][3311029]["RewardEMoneyMono"] ["Value"] = 30
tBoundItemCheck_Pack["BackCP"][3311029]["EmoneyLog"] = "10000	0079	1	1	30	"

tBoundItemCheck_Pack["BackCP"][3311030]={}
tBoundItemCheck_Pack["BackCP"][3311030]["LogId"]=12001174
tBoundItemCheck_Pack["BackCP"][3311030]["DeleteItem"] = {}
tBoundItemCheck_Pack["BackCP"][3311030]["DeleteItem"][1] = {}
tBoundItemCheck_Pack["BackCP"][3311030]["DeleteItem"][1]["Id"] = 3311030
tBoundItemCheck_Pack["BackCP"][3311030]["RewardEMoneyMono"] = {}
tBoundItemCheck_Pack["BackCP"][3311030]["RewardEMoneyMono"] ["Value"] = 30
tBoundItemCheck_Pack["BackCP"][3311030]["EmoneyLog"] = "10000	0080	1	1	30	"

tBoundItemCheck_Pack["BackCP"][3311031]={}
tBoundItemCheck_Pack["BackCP"][3311031]["LogId"]=12001174
tBoundItemCheck_Pack["BackCP"][3311031]["DeleteItem"] = {}
tBoundItemCheck_Pack["BackCP"][3311031]["DeleteItem"][1] = {}
tBoundItemCheck_Pack["BackCP"][3311031]["DeleteItem"][1]["Id"] = 3311031
tBoundItemCheck_Pack["BackCP"][3311031]["RewardEMoneyMono"] = {}
tBoundItemCheck_Pack["BackCP"][3311031]["RewardEMoneyMono"] ["Value"] = 489
tBoundItemCheck_Pack["BackCP"][3311031]["EmoneyLog"] = "10000	0081	1	1	-489	"

tBoundItemCheck_Pack["BackCP"][3311032]={}
tBoundItemCheck_Pack["BackCP"][3311032]["LogId"]=12001174
tBoundItemCheck_Pack["BackCP"][3311032]["DeleteItem"] = {}
tBoundItemCheck_Pack["BackCP"][3311032]["DeleteItem"][1] = {}
tBoundItemCheck_Pack["BackCP"][3311032]["DeleteItem"][1]["Id"] = 3311032
tBoundItemCheck_Pack["BackCP"][3311032]["RewardEMoneyMono"] = {}
tBoundItemCheck_Pack["BackCP"][3311032]["RewardEMoneyMono"] ["Value"] = 30
tBoundItemCheck_Pack["BackCP"][3311032]["EmoneyLog"] = "10000	0082	1	1	30	"

--雷神装备打包
tBoundItemCheck_Pack["BackCP"][3321554]={}
tBoundItemCheck_Pack["BackCP"][3321554]["LogId"]=12001174
tBoundItemCheck_Pack["BackCP"][3321554]["DeleteItem"] = {}
tBoundItemCheck_Pack["BackCP"][3321554]["DeleteItem"][1] = {}
tBoundItemCheck_Pack["BackCP"][3321554]["DeleteItem"][1]["Id"] = 3321554
tBoundItemCheck_Pack["BackCP"][3321554]["RewardEMoneyMono"] = {}
tBoundItemCheck_Pack["BackCP"][3321554]["RewardEMoneyMono"] ["Value"] = 30
tBoundItemCheck_Pack["BackCP"][3321554]["EmoneyLog"] = "10000	0419	1	1	-30	"

tBoundItemCheck_Pack["BackCP"][3321555]={}
tBoundItemCheck_Pack["BackCP"][3321555]["LogId"]=12001174
tBoundItemCheck_Pack["BackCP"][3321555]["DeleteItem"] = {}
tBoundItemCheck_Pack["BackCP"][3321555]["DeleteItem"][1] = {}
tBoundItemCheck_Pack["BackCP"][3321555]["DeleteItem"][1]["Id"] = 3321555
tBoundItemCheck_Pack["BackCP"][3321555]["RewardEMoneyMono"] = {}
tBoundItemCheck_Pack["BackCP"][3321555]["RewardEMoneyMono"] ["Value"] = 30
tBoundItemCheck_Pack["BackCP"][3321555]["EmoneyLog"] = "10000	0420	1	1	-30	"

tBoundItemCheck_Pack["BackCP"][3321556]={}
tBoundItemCheck_Pack["BackCP"][3321556]["LogId"]=12001174
tBoundItemCheck_Pack["BackCP"][3321556]["DeleteItem"] = {}
tBoundItemCheck_Pack["BackCP"][3321556]["DeleteItem"][1] = {}
tBoundItemCheck_Pack["BackCP"][3321556]["DeleteItem"][1]["Id"] = 3321556
tBoundItemCheck_Pack["BackCP"][3321556]["RewardEMoneyMono"] = {}
tBoundItemCheck_Pack["BackCP"][3321556]["RewardEMoneyMono"] ["Value"] = 30
tBoundItemCheck_Pack["BackCP"][3321556]["EmoneyLog"] = "10000	0421	1	1	-30	"

tBoundItemCheck_Pack["BackCP"][3321557]={}
tBoundItemCheck_Pack["BackCP"][3321557]["LogId"]=12001174
tBoundItemCheck_Pack["BackCP"][3321557]["DeleteItem"] = {}
tBoundItemCheck_Pack["BackCP"][3321557]["DeleteItem"][1] = {}
tBoundItemCheck_Pack["BackCP"][3321557]["DeleteItem"][1]["Id"] = 3321557
tBoundItemCheck_Pack["BackCP"][3321557]["RewardEMoneyMono"] = {}
tBoundItemCheck_Pack["BackCP"][3321557]["RewardEMoneyMono"] ["Value"] = 30
tBoundItemCheck_Pack["BackCP"][3321557]["EmoneyLog"] = "10000	0422	1	1	-30	"

tBoundItemCheck_Pack["BackCP"][3321558]={}
tBoundItemCheck_Pack["BackCP"][3321558]["LogId"]=12001174
tBoundItemCheck_Pack["BackCP"][3321558]["DeleteItem"] = {}
tBoundItemCheck_Pack["BackCP"][3321558]["DeleteItem"][1] = {}
tBoundItemCheck_Pack["BackCP"][3321558]["DeleteItem"][1]["Id"] = 3321558
tBoundItemCheck_Pack["BackCP"][3321558]["RewardEMoneyMono"] = {}
tBoundItemCheck_Pack["BackCP"][3321558]["RewardEMoneyMono"] ["Value"] = 30
tBoundItemCheck_Pack["BackCP"][3321558]["EmoneyLog"] = "10000	0423	1	1	-30	"

--法宝礼包
tBoundItemCheck_Pack["HorsePack"]={}
--精品玄素袍礼包
tBoundItemCheck_Pack["HorsePack"][3311029]={}
tBoundItemCheck_Pack["HorsePack"][3311029]["LogId"]=12001174
tBoundItemCheck_Pack["HorsePack"][3311029]["DeleteItem"] = {}
tBoundItemCheck_Pack["HorsePack"][3311029]["DeleteItem"][1] = {}
tBoundItemCheck_Pack["HorsePack"][3311029]["DeleteItem"][1]["Id"] = 3311029
tBoundItemCheck_Pack["HorsePack"][3311029]["RewardItem"]={}
tBoundItemCheck_Pack["HorsePack"][3311029]["RewardItem"][1] = {}
tBoundItemCheck_Pack["HorsePack"][3311029]["RewardItem"][1]["Id"] = 101008
tBoundItemCheck_Pack["HorsePack"][3311029]["RewardItem"][1]["Attr"] = "0 1 3"
--精品墨云冠礼包
tBoundItemCheck_Pack["HorsePack"][3311030]={}
tBoundItemCheck_Pack["HorsePack"][3311030]["LogId"]=12001174
tBoundItemCheck_Pack["HorsePack"][3311030]["DeleteItem"] = {}
tBoundItemCheck_Pack["HorsePack"][3311030]["DeleteItem"][1] = {}
tBoundItemCheck_Pack["HorsePack"][3311030]["DeleteItem"][1]["Id"] = 3311030
tBoundItemCheck_Pack["HorsePack"][3311030]["RewardItem"]={}
tBoundItemCheck_Pack["HorsePack"][3311030]["RewardItem"][1] = {}
tBoundItemCheck_Pack["HorsePack"][3311030]["RewardItem"][1]["Id"] = 170008
tBoundItemCheck_Pack["HorsePack"][3311030]["RewardItem"][1]["Attr"] = "0 1 3"
--精品御龙礼包
tBoundItemCheck_Pack["HorsePack"][3311031]={}
tBoundItemCheck_Pack["HorsePack"][3311031]["LogId"]=12001174
tBoundItemCheck_Pack["HorsePack"][3311031]["DeleteItem"] = {}
tBoundItemCheck_Pack["HorsePack"][3311031]["DeleteItem"][1] = {}
tBoundItemCheck_Pack["HorsePack"][3311031]["DeleteItem"][1]["Id"] = 3311031
tBoundItemCheck_Pack["HorsePack"][3311031]["RewardItem"]={}
tBoundItemCheck_Pack["HorsePack"][3311031]["RewardItem"][1] = {}
tBoundItemCheck_Pack["HorsePack"][3311031]["RewardItem"][1]["Id"] = 619028
tBoundItemCheck_Pack["HorsePack"][3311031]["RewardItem"][1]["Attr"] = "0 1 3"
--精品御龙礼包
tBoundItemCheck_Pack["HorsePack"][3311032]={}
tBoundItemCheck_Pack["HorsePack"][3311032]["LogId"]=12001174
tBoundItemCheck_Pack["HorsePack"][3311032]["DeleteItem"] = {}
tBoundItemCheck_Pack["HorsePack"][3311032]["DeleteItem"][1] = {}
tBoundItemCheck_Pack["HorsePack"][3311032]["DeleteItem"][1]["Id"] = 3311032
tBoundItemCheck_Pack["HorsePack"][3311032]["RewardItem"]={}
tBoundItemCheck_Pack["HorsePack"][3311032]["RewardItem"][1] = {}
tBoundItemCheck_Pack["HorsePack"][3311032]["RewardItem"][1]["Id"] = 626028
tBoundItemCheck_Pack["HorsePack"][3311032]["RewardItem"][1]["Attr"] = "0 1 3"

--雷神装备礼包
--蛮雷战甲
tBoundItemCheck_Pack["HorsePack"][3321554]={}
tBoundItemCheck_Pack["HorsePack"][3321554]["LogId"]=12001174
tBoundItemCheck_Pack["HorsePack"][3321554]["DeleteItem"] = {}
tBoundItemCheck_Pack["HorsePack"][3321554]["DeleteItem"][1] = {}
tBoundItemCheck_Pack["HorsePack"][3321554]["DeleteItem"][1]["Id"] = 3321554
tBoundItemCheck_Pack["HorsePack"][3321554]["RewardItem"]={}
tBoundItemCheck_Pack["HorsePack"][3321554]["RewardItem"][1] = {}
tBoundItemCheck_Pack["HorsePack"][3321554]["RewardItem"][1]["Id"] = 102008
tBoundItemCheck_Pack["HorsePack"][3321554]["RewardItem"][1]["Attr"] = "0 1 3"

--雷鸣战盔
tBoundItemCheck_Pack["HorsePack"][3321555]={}
tBoundItemCheck_Pack["HorsePack"][3321555]["LogId"]=12001174
tBoundItemCheck_Pack["HorsePack"][3321555]["DeleteItem"] = {}
tBoundItemCheck_Pack["HorsePack"][3321555]["DeleteItem"][1] = {}
tBoundItemCheck_Pack["HorsePack"][3321555]["DeleteItem"][1]["Id"] = 3321555
tBoundItemCheck_Pack["HorsePack"][3321555]["RewardItem"]={}
tBoundItemCheck_Pack["HorsePack"][3321555]["RewardItem"][1] = {}
tBoundItemCheck_Pack["HorsePack"][3321555]["RewardItem"][1]["Id"] = 146008
tBoundItemCheck_Pack["HorsePack"][3321555]["RewardItem"][1]["Attr"] = "0 1 3"

--雷啸头饰
tBoundItemCheck_Pack["HorsePack"][3321556]={}
tBoundItemCheck_Pack["HorsePack"][3321556]["LogId"]=12001174
tBoundItemCheck_Pack["HorsePack"][3321556]["DeleteItem"] = {}
tBoundItemCheck_Pack["HorsePack"][3321556]["DeleteItem"][1] = {}
tBoundItemCheck_Pack["HorsePack"][3321556]["DeleteItem"][1]["Id"] = 3321556
tBoundItemCheck_Pack["HorsePack"][3321556]["RewardItem"]={}
tBoundItemCheck_Pack["HorsePack"][3321556]["RewardItem"][1] = {}
tBoundItemCheck_Pack["HorsePack"][3321556]["RewardItem"][1]["Id"] = 147008
tBoundItemCheck_Pack["HorsePack"][3321556]["RewardItem"][1]["Attr"] = "0 1 3"

--凛风战斧
tBoundItemCheck_Pack["HorsePack"][3321557]={}
tBoundItemCheck_Pack["HorsePack"][3321557]["LogId"]=12001174
tBoundItemCheck_Pack["HorsePack"][3321557]["DeleteItem"] = {}
tBoundItemCheck_Pack["HorsePack"][3321557]["DeleteItem"][1] = {}
tBoundItemCheck_Pack["HorsePack"][3321557]["DeleteItem"][1]["Id"] = 3321557
tBoundItemCheck_Pack["HorsePack"][3321557]["RewardItem"]={}
tBoundItemCheck_Pack["HorsePack"][3321557]["RewardItem"][1] = {}
tBoundItemCheck_Pack["HorsePack"][3321557]["RewardItem"][1]["Id"] = 680028
tBoundItemCheck_Pack["HorsePack"][3321557]["RewardItem"][1]["Attr"] = "0 1 3"

--雷光战锤
tBoundItemCheck_Pack["HorsePack"][3321558]={}
tBoundItemCheck_Pack["HorsePack"][3321558]["LogId"]=12001174
tBoundItemCheck_Pack["HorsePack"][3321558]["DeleteItem"] = {}
tBoundItemCheck_Pack["HorsePack"][3321558]["DeleteItem"][1] = {}
tBoundItemCheck_Pack["HorsePack"][3321558]["DeleteItem"][1]["Id"] = 3321558
tBoundItemCheck_Pack["HorsePack"][3321558]["RewardItem"]={}
tBoundItemCheck_Pack["HorsePack"][3321558]["RewardItem"][1] = {}
tBoundItemCheck_Pack["HorsePack"][3321558]["RewardItem"][1]["Id"] = 681028
tBoundItemCheck_Pack["HorsePack"][3321558]["RewardItem"][1]["Attr"] = "0 1 3"
-----------------------------------------------------------------------逻辑部分---------------------------------------------------------------
--打开礼包
function GiftElaborateShop_UsePack(nItemId)
	if SpecialServer_ChkNoGiftServer() then 
		tItem[nItemId]["OptionFunc1111"]="BoundItemCheck_BackMoney</N>" .. nItemId
		return LinkItemGossipFunc_New(nItemId,"12-1")
	else
		local tPack=tGiftElaborateShop_Pack[nItemId]
		--判断职业，获得对应的物品ID  
		local nPro=Get_UserProfession()
		if nPro>=100 and nPro <= 145 then
			nPro=100
		elseif nPro >= 160 and nPro <= 165 then
			nPro=160
		else
			nPro=nPro-nPro%10
		end    
	
		--0表示不再配置表的共用职业
		if tPack[nPro]==nil then
			nPro=0
		end
	
		if tPack[nPro]["DialogIndex"] ~=nil then       
		LinkItemGossipFunc_New(nItemId,tPack[nPro]["DialogIndex"])
		return 
		end
	
		GiftElaborateShop_Reward(nItemId,tPack[nPro]["Item"]["Item_ID"],tPack[nPro]["Item"]["ItemAttr"])
	end
end 

--选项
function GiftElaborateShop_SelectOption(nPackId,nPro,nOption)
             
   local tItem=tGiftElaborateShop_Pack[nPackId][nPro]["Option"][nOption]
   GiftElaborateShop_Reward(nPackId,tItem["Item_ID"],tItem["ItemAttr"]) 
end

--获得物品
function GiftElaborateShop_Reward(nPackId,nItemId,sItemAttr)
    
    if not Item_ChkAccItem(nPackId,1) then
       return
    end

    if not Item_DelItem(nPackId) then
       return
    end 

    Item_AddNewItem(nItemId,sItemAttr)

	Sys_SaveActionFestivalLog(string.format(sGiftElaborateShop_Log,nPackId,nItemId))

    User_TalkChannel2005(string.format(tGiftElaborateShop_Text["AwardItem"],tGiftElaborateShop_Text["ItemName"][nItemId]))
	
	
end 


--返还赠点
function BoundItemCheck_BackMoney(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end 
	-- 判断赠点上限
	local nUserId = Get_UserId()
	local nEmoney = Get_UserMonoEMoney(nUserId)
	local nAddEmoney = tBoundItemCheck_Pack["Price"][nItemId]
	if nEmoney + nAddEmoney > G_User_MaxEmoneyMono then
		Sys_MsgBox(tBoundItemCheck_Text["EMonomoneyFull"])
		return
	end
	if RewardTemplate_UseItem(tBoundItemCheck_Pack["BackCP"][nItemId]) then 
		return
	end 
end 

--打开法宝礼包
function BoundItemCheck_HorsePack(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end 
	if SpecialServer_ChkNoGiftServer() then 
		tItem[nItemId]["OptionFunc1111"]="BoundItemCheck_BackMoney</N>" .. nItemId
		return LinkItemGossipFunc_New(nItemId,"1-1")
	else
--背包空间判断
		local nGetRewardSpace = RewardTemplate_GetRewardSpace(tBoundItemCheck_Pack["HorsePack"][nItemId])
		local nDelRewardSpace = RewardTemplate_GetDelSpace(tBoundItemCheck_Pack["HorsePack"][nItemId])
		local nNeedSpace = nGetRewardSpace - nDelRewardSpace
		if not User_CheckLeftSpace(nNeedSpace) then
			return 
		end
		if RewardTemplate_UseItem(tBoundItemCheck_Pack["HorsePack"][nItemId]) then 
			return
		end 
	end 
end 

------------------------------------------------------------------------------

--礼包头像
tItemFace[3100097] = 612
tItemFace[3100098] = 931
tItemFace[3100099] = 613
tItemFace[3100100] = 1791
tItemFace[3100101] = 1263
tItemFace[3100102] = 1558
--头部礼包
tItem[3100097]=tItem[3100097] or {}
tItem[3100097]["Function"]=function(nItemId,sItemName)
    GiftElaborateShop_UsePack(nItemId)
end

--武器礼包
tItem[3100098]=tItem[3100098] or {}
tItem[3100098]["Function"]=function(nItemId,sItemName)
    GiftElaborateShop_UsePack(nItemId)
end


tItem[3100099]=tItem[3100097]
tItem[3100100]=tItem[3100097]
tItem[3100101]=tItem[3100097]
tItem[3100102]=tItem[3100097]

--头部战士对话
tItem[3100097]["Text1-1"]={111}
tItem[3100097]["Text111"]=tGiftElaborateShop_Text["Top"]

tItem[3100097]["tOption1-1"]={11,12,13}
tItem[3100097]["Option11"]=tGiftElaborateShop_Text["ItemName"][111008]
tItem[3100097]["Option12"]=tGiftElaborateShop_Text["ItemName"][141008]
tItem[3100097]["Option13"]=tGiftElaborateShop_Text["ReGive"]
tItem[3100097]["OptionFunc11"]="GiftElaborateShop_SelectOption</N>3100097</N>20</N>1"
tItem[3100097]["OptionFunc12"]="GiftElaborateShop_SelectOption</N>3100097</N>20</N>2"

--头部弓手对话
tItem[3100097]["Text2-1"]={111}


tItem[3100097]["tOption2-1"]={21,22,13}
tItem[3100097]["Option21"]=tGiftElaborateShop_Text["ItemName"][113008]
tItem[3100097]["Option22"]=tGiftElaborateShop_Text["ItemName"][142008]
tItem[3100097]["OptionFunc21"]="GiftElaborateShop_SelectOption</N>3100097</N>40</N>1"
tItem[3100097]["OptionFunc22"]="GiftElaborateShop_SelectOption</N>3100097</N>40</N>2"

--头部刺客对话
tItem[3100097]["Text3-1"]={111}

tItem[3100097]["tOption3-1"]={31,32,13}
tItem[3100097]["Option31"]=tGiftElaborateShop_Text["ItemName"][123008]
tItem[3100097]["Option32"]=tGiftElaborateShop_Text["ItemName"][112008]
tItem[3100097]["OptionFunc31"]="GiftElaborateShop_SelectOption</N>3100097</N>50</N>1"
tItem[3100097]["OptionFunc32"]="GiftElaborateShop_SelectOption</N>3100097</N>50</N>2"

--头部海盗对话
tItem[3100097]["Text4-1"]={111}

tItem[3100097]["tOption4-1"]={41,42,13}
tItem[3100097]["Option41"]=tGiftElaborateShop_Text["ItemName"][144008]
tItem[3100097]["Option42"]=tGiftElaborateShop_Text["ItemName"][145008]
tItem[3100097]["OptionFunc41"]="GiftElaborateShop_SelectOption</N>3100097</N>70</N>1"
tItem[3100097]["OptionFunc42"]="GiftElaborateShop_SelectOption</N>3100097</N>70</N>2"

--头部道士对话
tItem[3100097]["Text5-1"]={111}

tItem[3100097]["tOption5-1"]={51,52,13}
tItem[3100097]["Option51"]=tGiftElaborateShop_Text["ItemName"][114008]
tItem[3100097]["Option52"]=tGiftElaborateShop_Text["ItemName"][117008]
tItem[3100097]["OptionFunc51"]="GiftElaborateShop_SelectOption</N>3100097</N>100</N>1"
tItem[3100097]["OptionFunc52"]="GiftElaborateShop_SelectOption</N>3100097</N>100</N>2"
--赠品服务器
tItem[3100097]["Text12-1"]={1111}
tItem[3100097]["Text1111"]=tBoundItemCheck_Text["NoBoundSever"]
tItem[3100097]["tOption12-1"]={1111}
tItem[3100097]["Option1111"]=tBoundItemCheck_Text["EMonomoneyBack"]
--头部雷神对话
tItem[3100097]["Text6-1"]={111}

tItem[3100097]["tOption6-1"]={61,62,13}
tItem[3100097]["Option61"]=tGiftElaborateShop_Text["ItemName"][146008]
tItem[3100097]["Option62"]=tGiftElaborateShop_Text["ItemName"][147008]
tItem[3100097]["OptionFunc61"]="GiftElaborateShop_SelectOption</N>3100097</N>90</N>1"
tItem[3100097]["OptionFunc62"]="GiftElaborateShop_SelectOption</N>3100097</N>90</N>2"



--武器勇士对话
tItem[3100098]["Text6-1"]={111}
tItem[3100098]["Text111"]=tGiftElaborateShop_Text["Weapon"]

tItem[3100098]["tOption6-1"]={61,62,63,64}
tItem[3100098]["Option61"]=tGiftElaborateShop_Text["ItemName"][410028]
tItem[3100098]["Option62"]=tGiftElaborateShop_Text["ItemName"][420028]
tItem[3100098]["Option63"]=tGiftElaborateShop_Text["ItemName"][480028]
tItem[3100098]["Option64"]=tGiftElaborateShop_Text["ReGive"]
tItem[3100098]["OptionFunc61"]="GiftElaborateShop_SelectOption</N>3100098</N>10</N>1"
tItem[3100098]["OptionFunc62"]="GiftElaborateShop_SelectOption</N>3100098</N>10</N>2"
tItem[3100098]["OptionFunc63"]="GiftElaborateShop_SelectOption</N>3100098</N>10</N>3"

--武器战士对话
tItem[3100098]["Text7-1"]={111}
tItem[3100098]["tOption7-1"]={71,72,73,64}
tItem[3100098]["Option71"]=tGiftElaborateShop_Text["ItemName"][560028]
tItem[3100098]["Option72"]=tGiftElaborateShop_Text["ItemName"][561028]
tItem[3100098]["Option73"]=tGiftElaborateShop_Text["ItemName"][900008]

tItem[3100098]["OptionFunc71"]="GiftElaborateShop_SelectOption</N>3100098</N>20</N>1"
tItem[3100098]["OptionFunc72"]="GiftElaborateShop_SelectOption</N>3100098</N>20</N>2"
tItem[3100098]["OptionFunc73"]="GiftElaborateShop_SelectOption</N>3100098</N>20</N>3"

--武器弓手对话
tItem[3100098]["Text8-1"]={111}
tItem[3100098]["tOption8-1"]={81,82,64}
tItem[3100098]["Option81"]=tGiftElaborateShop_Text["ItemName"][500018]
tItem[3100098]["Option82"]=tGiftElaborateShop_Text["ItemName"][613018]

tItem[3100098]["OptionFunc81"]="GiftElaborateShop_SelectOption</N>3100098</N>40</N>1"
tItem[3100098]["OptionFunc82"]="GiftElaborateShop_SelectOption</N>3100098</N>40</N>2"


--武器刺客对话
tItem[3100098]["Text9-1"]={111}
tItem[3100098]["tOption9-1"]={91,92,64}
tItem[3100098]["Option91"]=tGiftElaborateShop_Text["ItemName"][511028]
tItem[3100098]["Option92"]=tGiftElaborateShop_Text["ItemName"][601028]

tItem[3100098]["OptionFunc91"]="GiftElaborateShop_SelectOption</N>3100098</N>50</N>1"
tItem[3100098]["OptionFunc92"]="GiftElaborateShop_SelectOption</N>3100098</N>50</N>2"

--武器海盗对话
tItem[3100098]["Text10-1"]={111}
tItem[3100098]["tOption10-1"]={101,102,64}
tItem[3100098]["Option101"]=tGiftElaborateShop_Text["ItemName"][611028]
tItem[3100098]["Option102"]=tGiftElaborateShop_Text["ItemName"][612028]

tItem[3100098]["OptionFunc101"]="GiftElaborateShop_SelectOption</N>3100098</N>70</N>1"
tItem[3100098]["OptionFunc102"]="GiftElaborateShop_SelectOption</N>3100098</N>70</N>2"
--赠品服务器
tItem[3100098]["Text12-1"]={1111}
tItem[3100098]["Text1111"]=tBoundItemCheck_Text["NoBoundSever"]
tItem[3100098]["tOption12-1"]={1111}
tItem[3100098]["Option1111"]=tBoundItemCheck_Text["EMonomoneyBack"]
--武器雷神对话
tItem[3100098]["Text11-1"]={111}

tItem[3100098]["tOption11-1"]={111,112,64}
tItem[3100098]["Option111"]=tGiftElaborateShop_Text["ItemName"][681028]
tItem[3100098]["Option112"]=tGiftElaborateShop_Text["ItemName"][680028]
tItem[3100098]["OptionFunc111"]="GiftElaborateShop_SelectOption</N>3100098</N>90</N>1"
tItem[3100098]["OptionFunc112"]="GiftElaborateShop_SelectOption</N>3100098</N>90</N>2"


--项链道士对话
tItem[3100102]["Text11-1"]={111}
tItem[3100102]["tOption11-1"]={101,102,64}
tItem[3100102]["Option101"]=tGiftElaborateShop_Text["ItemName"][121028]
tItem[3100102]["Option102"]=tGiftElaborateShop_Text["ItemName"][120028]

tItem[3100102]["OptionFunc101"]="GiftElaborateShop_SelectOption</N>3100102</N>100</N>1"
tItem[3100102]["OptionFunc102"]="GiftElaborateShop_SelectOption</N>3100102</N>100</N>2"

--赠品服务器
tItem[3100102]["Text12-1"]={1111}
tItem[3100102]["Text1111"]=tBoundItemCheck_Text["NoBoundSever"]
tItem[3100102]["tOption12-1"]={1111}
tItem[3100102]["Option1111"]=tBoundItemCheck_Text["EMonomoneyBack"]



--精品手部防具礼包
--赠品服务器
tItem[3100099]["Text12-1"]={1111}
tItem[3100099]["Text1111"]=tBoundItemCheck_Text["NoBoundSever"]
tItem[3100099]["tOption12-1"]={1111}
tItem[3100099]["Option1111"]=tBoundItemCheck_Text["EMonomoneyBack"]

--精品衣甲礼包
--赠品服务器
tItem[3100100]["Text12-1"]={1111}
tItem[3100100]["Text1111"]=tBoundItemCheck_Text["NoBoundSever"]
tItem[3100100]["tOption12-1"]={1111}
tItem[3100100]["Option1111"]=tBoundItemCheck_Text["EMonomoneyBack"]

--精品靴子礼包
--赠品服务器
tItem[3100101]["Text12-1"]={1111}
tItem[3100101]["Text1111"]=tBoundItemCheck_Text["NoBoundSever"]
tItem[3100101]["tOption12-1"]={1111}
tItem[3100101]["Option1111"]=tBoundItemCheck_Text["EMonomoneyBack"]

--法宝礼包
-- tItemFace[3311029] = 1801
-- tItemFace[3311030] = 1802
tItemFace[3311031] = 1803
-- tItemFace[3311032] = 1804

tItemFace[3321554] = 2265
tItemFace[3321555] = 2266
tItemFace[3321556] = 2267
tItemFace[3321557] = 2268
tItemFace[3321558] = 2269

tItem[3311031]=tItem[3311031] or {}
tItem[3311031]["Function"]=function(nItemId,sItemName)
    BoundItemCheck_HorsePack(nItemId)
end

tItem[3321554]=tItem[3311031]
tItem[3321555]=tItem[3311031]
tItem[3321556]=tItem[3311031]
tItem[3321557]=tItem[3311031]
tItem[3321558]=tItem[3311031]

-- tItem[3311030]=tItem[3311029]
-- tItem[3311031]=tItem[3311029]
-- tItem[3311032]=tItem[3311029]

--精品玄素袍礼包
--赠品服务器
-- tItem[3311029]["Text1-1"]={1111}
-- tItem[3311029]["Text1111"]=tBoundItemCheck_Text["NoBoundSever"]
-- tItem[3311029]["tOption1-1"]={1111}
-- tItem[3311029]["Option1111"]=tBoundItemCheck_Text["EMonomoneyBack"]
--精品墨云冠礼包
--赠品服务器
-- tItem[3311030]["Text1-1"]={1111}
-- tItem[3311030]["Text1111"]=tBoundItemCheck_Text["NoBoundSever"]
-- tItem[3311030]["tOption1-1"]={1111}
-- tItem[3311030]["Option1111"]=tBoundItemCheck_Text["EMonomoneyBack"]

--精品御龙礼包
--赠品服务器
tItem[3311031]["Text1-1"]={1111}
tItem[3311031]["Text1111"]=tBoundItemCheck_Text["NoBoundSever"]
tItem[3311031]["tOption1-1"]={1111}
tItem[3311031]["Option1111"]=tBoundItemCheck_Text["EMonomoneyBack"]

--精品傲雪凌霜扇礼包
--赠品服务器
-- tItem[3311032]["Text1-1"]={1111}
-- tItem[3311032]["Text1111"]=tBoundItemCheck_Text["NoBoundSever"]
-- tItem[3311032]["tOption1-1"]={1111}
-- tItem[3311032]["Option1111"]=tBoundItemCheck_Text["EMonomoneyBack"]

--雷神装备礼包
--赠品服务器
tItem[3321554]["Text1-1"]={1111}
tItem[3321554]["Text1111"]=tBoundItemCheck_Text["NoBoundSever"]
tItem[3321554]["tOption1-1"]={1111}
tItem[3321554]["Option1111"]=tBoundItemCheck_Text["EMonomoneyBack"]

tItem[3321555]["Text1-1"]={1111}
tItem[3321555]["Text1111"]=tBoundItemCheck_Text["NoBoundSever"]
tItem[3321555]["tOption1-1"]={1111}
tItem[3321555]["Option1111"]=tBoundItemCheck_Text["EMonomoneyBack"]

tItem[3321556]["Text1-1"]={1111}
tItem[3321556]["Text1111"]=tBoundItemCheck_Text["NoBoundSever"]
tItem[3321556]["tOption1-1"]={1111}
tItem[3321556]["Option1111"]=tBoundItemCheck_Text["EMonomoneyBack"]

tItem[3321557]["Text1-1"]={1111}
tItem[3321557]["Text1111"]=tBoundItemCheck_Text["NoBoundSever"]
tItem[3321557]["tOption1-1"]={1111}
tItem[3321557]["Option1111"]=tBoundItemCheck_Text["EMonomoneyBack"]

tItem[3321558]["Text1-1"]={1111}
tItem[3321558]["Text1111"]=tBoundItemCheck_Text["NoBoundSever"]
tItem[3321558]["tOption1-1"]={1111}
tItem[3321558]["Option1111"]=tBoundItemCheck_Text["EMonomoneyBack"]