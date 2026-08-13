--------------------------------------------------------------------------------
---Name:170329[简体征服][活动脚本]NBA活动制作--物品部分
--Creator: 	翁增锐
--Created:	2017-03-29
--------------------------------------------------------------------------------

-- 前缀 NBAItemPart_
--lua.ini:40491
--log:12000689
--STC掩码:
--15821      15829

---------------------------------------常量部分----------------------------------
local tNBAItemPart_Data = {}
	tNBAItemPart_Data["ActivityTime"] = tActivityTime["ActivityOfNBA"]["Now_Time"]
	tNBAItemPart_Data["Space"] = {}
	tNBAItemPart_Data["Space"][3302801] = 1
	tNBAItemPart_Data["Space"][3302802] = 5
	tNBAItemPart_Data["Space"][3302803] = 1
	tNBAItemPart_Data["Title"] = 2056
	tNBAItemPart_Data["Map"] = 1002
	tNBAItemPart_Data["Cellx"] = 324
	tNBAItemPart_Data["Celly"] = 445
	
	tNBAItemPart_Data[3302801] = 30
	tNBAItemPart_Data[3302802] = 150
	tNBAItemPart_Data[3302803] = 100
local tNBAItemPart_OnStc = {}
	tNBAItemPart_OnStc["EventData"] = 177
	tNBAItemPart_OnStc["DataType"] = 80
	
	-- 光效配置
local tNBAItemPart_Effect = {}
	tNBAItemPart_Effect[3302801] = {}
	tNBAItemPart_Effect[3302801]["Self"] = "self"
	tNBAItemPart_Effect[3302801]["Effect"] = "wqxk1"	
	
	tNBAItemPart_Effect[3302802] = {}
	tNBAItemPart_Effect[3302802]["Self"] = "self"
	tNBAItemPart_Effect[3302802]["Effect"] = "wqxk2"	
	
	
local tNBAItemPart_Stc = {}
	tNBAItemPart_Stc["EventData"] = {}
	tNBAItemPart_Stc["DataType"] = {}
--记录玩家花名册中是否有这张卡片
	tNBAItemPart_Stc["EventData"][1] = 158
	tNBAItemPart_Stc["DataType"][1] = 21
--记录玩家花名册中是否有这张卡片
	tNBAItemPart_Stc["EventData"][2] = 158
	tNBAItemPart_Stc["DataType"][2] = 22
--记录玩家花名册中是否有这张卡片
	tNBAItemPart_Stc["EventData"][3] = 158
	tNBAItemPart_Stc["DataType"][3] = 23
--记录玩家花名册中是否有这张卡片
	tNBAItemPart_Stc["EventData"][4] = 158
	tNBAItemPart_Stc["DataType"][4] = 24
--记录玩家花名册中是否收集玩某个球队的全部卡片
	tNBAItemPart_Stc["EventData"][5] = 158
	tNBAItemPart_Stc["DataType"][5] = 25
	
--记录天王球星是否装备相关的专属道具
	tNBAItemPart_Stc["EventData"][6] = 158
	tNBAItemPart_Stc["DataType"][6] = 26
	
--记录玩家花名册总共有多少张卡片
	tNBAItemPart_Stc["EventData"][7] = 158
	tNBAItemPart_Stc["DataType"][7] = 27
	
--玩家一天只能打开一次联盟资金豪享包 （6000积分，30000积分不做限制）
	tNBAItemPart_Stc["EventData"][8] = 159
	tNBAItemPart_Stc["DataType"][8] = 50
	
--记录玩家打开球星卡包的间隔
	tNBAItemPart_Stc["EventData"][9] = 159
	tNBAItemPart_Stc["DataType"][9] = 51

	
--陈莺那边的掩码，用来记录玩家上阵的ID和球队实力
local tNBAItemPart_StcOne = {}
	tNBAItemPart_StcOne["EventData"] = {}
	tNBAItemPart_StcOne["DataType"] = {}
	
	tNBAItemPart_StcOne["EventData"][1] = 158
	tNBAItemPart_StcOne["DataType"][1] = 36

	tNBAItemPart_StcOne["EventData"][2] = 158
	tNBAItemPart_StcOne["DataType"][2] = 37

	tNBAItemPart_StcOne["EventData"][3] = 158
	tNBAItemPart_StcOne["DataType"][3] = 38

	tNBAItemPart_StcOne["EventData"][4] = 158
	tNBAItemPart_StcOne["DataType"][4] = 39

	tNBAItemPart_StcOne["EventData"][5] = 158
	tNBAItemPart_StcOne["DataType"][5] = 40
	
	tNBAItemPart_StcOne["EventData"][6] = 158
	tNBAItemPart_StcOne["DataType"][6] = 41
	
	tNBAItemPart_StcOne["EventData"][7] = 158
	tNBAItemPart_StcOne["DataType"][7] = 42
	
	tNBAItemPart_StcOne["EventData"][8] = 158
	tNBAItemPart_StcOne["DataType"][8] = 43

	tNBAItemPart_StcOne["EventData"][9] = 158
	tNBAItemPart_StcOne["DataType"][9] = 44
	
	tNBAItemPart_StcOne["EventData"][10] = 158
	tNBAItemPart_StcOne["DataType"][10] = 45
	
	--记录玩家的实时实力评分
	tNBAItemPart_StcOne["EventData"][11] = 158
	tNBAItemPart_StcOne["DataType"][11] = 33
	
	--记录玩家的最高实力评分
	tNBAItemPart_StcOne["EventData"][12] = 158
	tNBAItemPart_StcOne["DataType"][12] = 32

--球星卡在相对应哪个掩码
local tNBAItemPart_ItemToStc = {}

	for i = 3302820,3302830 do
		tNBAItemPart_ItemToStc[i] = 1
	end

	for i = 3302831,3302841 do
		tNBAItemPart_ItemToStc[i] = 2
	end
	
	for i = 3302842,3302852 do
		tNBAItemPart_ItemToStc[i] = 3
	end
	
	for i = 3302853,3302855 do
		tNBAItemPart_ItemToStc[i] = 4
	end

--球星卡在相对应掩码的的二进制数字
local tNBAItemPart_BinaryNum = {}
	
	tNBAItemPart_BinaryNum[3302820] = 1
	tNBAItemPart_BinaryNum[3302821] = 2
	tNBAItemPart_BinaryNum[3302822] = 3
	tNBAItemPart_BinaryNum[3302823] = 4
	tNBAItemPart_BinaryNum[3302824] = 5
	tNBAItemPart_BinaryNum[3302825] = 6
	tNBAItemPart_BinaryNum[3302826] = 7
	tNBAItemPart_BinaryNum[3302827] = 8
	tNBAItemPart_BinaryNum[3302828] = 9
	tNBAItemPart_BinaryNum[3302829] = 10
	tNBAItemPart_BinaryNum[3302830] = 11
	
	tNBAItemPart_BinaryNum[3302831] = 1
	tNBAItemPart_BinaryNum[3302832] = 2
	tNBAItemPart_BinaryNum[3302833] = 3
	tNBAItemPart_BinaryNum[3302834] = 4
	tNBAItemPart_BinaryNum[3302835] = 5
	tNBAItemPart_BinaryNum[3302836] = 6
	tNBAItemPart_BinaryNum[3302837] = 7
	tNBAItemPart_BinaryNum[3302838] = 8
	tNBAItemPart_BinaryNum[3302839] = 9
	tNBAItemPart_BinaryNum[3302840] = 10
	tNBAItemPart_BinaryNum[3302841] = 11
	
	tNBAItemPart_BinaryNum[3302842] = 1
	tNBAItemPart_BinaryNum[3302843] = 2
	tNBAItemPart_BinaryNum[3302844] = 3
	tNBAItemPart_BinaryNum[3302845] = 4
	tNBAItemPart_BinaryNum[3302846] = 5
	tNBAItemPart_BinaryNum[3302847] = 6
	tNBAItemPart_BinaryNum[3302848] = 7
	tNBAItemPart_BinaryNum[3302849] = 8
	tNBAItemPart_BinaryNum[3302850] = 9
	tNBAItemPart_BinaryNum[3302851] = 10
	tNBAItemPart_BinaryNum[3302852] = 11
	
	tNBAItemPart_BinaryNum[3302853] = 1
	tNBAItemPart_BinaryNum[3302854] = 2
	tNBAItemPart_BinaryNum[3302855] = 3

--球星卡对应的球星实力
local tNBAItemPart_CardStrength = {}
	
	tNBAItemPart_CardStrength[3302820] = 2600    --球星卡·科比
	tNBAItemPart_CardStrength[3302821] = 2550    --球星卡·库里
	tNBAItemPart_CardStrength[3302822] = 2550    --球星卡·哈登
	tNBAItemPart_CardStrength[3302823] = 2500    --球星卡·姚明
	tNBAItemPart_CardStrength[3302824] = 2500    --球星卡·詹姆斯

	tNBAItemPart_CardStrength[3302825] = 1900    --球星卡·霍华德
	tNBAItemPart_CardStrength[3302826] = 1850    --球星卡·贝弗利
	tNBAItemPart_CardStrength[3302827] = 1850    --球星卡·阿里扎
	tNBAItemPart_CardStrength[3302828] = 1800    --球星卡·布鲁尔
	
	tNBAItemPart_CardStrength[3302829] = 1700    --球星卡·汤普森
	tNBAItemPart_CardStrength[3302830] = 1700     --球星卡·格林 
	tNBAItemPart_CardStrength[3302831] = 1800     --球星卡·伊格达拉
	tNBAItemPart_CardStrength[3302832] = 1730    --球星卡·利文斯顿
	
	tNBAItemPart_CardStrength[3302833] = 1780   --球星卡·欧文
	tNBAItemPart_CardStrength[3302834] = 1750   --球星卡·乐福
	tNBAItemPart_CardStrength[3302835] = 1780    --球星卡·史密斯
	tNBAItemPart_CardStrength[3302836] = 1880   --球星卡·马里昂
	
	tNBAItemPart_CardStrength[3302837] = 1820    --球星卡·尼克杨
	tNBAItemPart_CardStrength[3302838] = 1880     --球星卡·纳什
	tNBAItemPart_CardStrength[3302839] = 1790     --球星卡·希伯特
	tNBAItemPart_CardStrength[3302840] = 1700      --球星卡·希尔 
	
	tNBAItemPart_CardStrength[3302841] = 1200     --球星卡·强壮的中锋
	tNBAItemPart_CardStrength[3302842] = 1200     --球星卡·高大的中锋 
	tNBAItemPart_CardStrength[3302843] = 1200     --球星卡·敏捷的后卫 
	tNBAItemPart_CardStrength[3302844] = 1200     --球星卡·灵活的后卫 
	tNBAItemPart_CardStrength[3302845] = 1200     --球星卡·犀利的后卫 
	tNBAItemPart_CardStrength[3302846] = 1200     --球星卡·精准的后卫 
	tNBAItemPart_CardStrength[3302847] = 1200     --球星卡·彪悍的小前 
	tNBAItemPart_CardStrength[3302848] = 1200     --球星卡·刚健的小前 
	tNBAItemPart_CardStrength[3302849] = 1200     --球星卡·威猛的大前 
	tNBAItemPart_CardStrength[3302850] = 1200    --球星卡·坚韧的大前 
	
	tNBAItemPart_CardStrength[3302851] =  600   --球星卡·普通的中锋
	tNBAItemPart_CardStrength[3302852] = 600    --球星卡·普通的控卫 
	tNBAItemPart_CardStrength[3302853] = 600     --球星卡·普通的分卫 
	tNBAItemPart_CardStrength[3302854] = 600     --球星卡·普通的小前 
	tNBAItemPart_CardStrength[3302855] = 600     --球星卡·普通的大前 
	
--球星卡是否有兄弟球星
local tNBAItemPart_CardBrother = {}
	
	tNBAItemPart_CardBrother[3302820] = 1    --球星卡·科比
	tNBAItemPart_CardBrother[3302821] = 1    --球星卡·库里
	tNBAItemPart_CardBrother[3302822] = 1    --球星卡·哈登
	tNBAItemPart_CardBrother[3302823] = 1    --球星卡·姚明
	tNBAItemPart_CardBrother[3302824] = 1    --球星卡·詹姆斯

	tNBAItemPart_CardBrother[3302825] = 1    --球星卡·霍华德
	tNBAItemPart_CardBrother[3302826] = 1    --球星卡·贝弗利
	tNBAItemPart_CardBrother[3302827] = 0    --球星卡·阿里扎
	tNBAItemPart_CardBrother[3302828] = 0    --球星卡·布鲁尔
	
	tNBAItemPart_CardBrother[3302829] = 0   --球星卡·汤普森
	tNBAItemPart_CardBrother[3302830] = 0    --球星卡·格林 
	tNBAItemPart_CardBrother[3302831] = 0    --球星卡·伊格达拉
	tNBAItemPart_CardBrother[3302832] = 1    --球星卡·利文斯顿
	
	tNBAItemPart_CardBrother[3302833] = 0    --球星卡·欧文
	tNBAItemPart_CardBrother[3302834] = 0    --球星卡·乐福
	tNBAItemPart_CardBrother[3302835] = 0     --球星卡·史密斯 
	tNBAItemPart_CardBrother[3302836] = 0    --球星卡·马里昂
	
	tNBAItemPart_CardBrother[3302837] = 1    --球星卡·尼克杨
	tNBAItemPart_CardBrother[3302838] = 0    --球星卡·纳什
	tNBAItemPart_CardBrother[3302839] = 1     --球星卡·希伯特
	tNBAItemPart_CardBrother[3302840] = 0      --球星卡·希尔 
	
	tNBAItemPart_CardBrother[3302841] = 0     --球星卡·强壮的中锋
	tNBAItemPart_CardBrother[3302842] = 0     --球星卡·高大的中锋
	tNBAItemPart_CardBrother[3302843] = 0     --球星卡·敏捷的后卫
	tNBAItemPart_CardBrother[3302844] = 0     --球星卡·灵活的后卫
	tNBAItemPart_CardBrother[3302845] = 0     --球星卡·犀利的后卫
	tNBAItemPart_CardBrother[3302846] = 0     --球星卡·精准的后卫
	tNBAItemPart_CardBrother[3302847] = 0     --球星卡·彪悍的小前
	tNBAItemPart_CardBrother[3302848] = 0     --球星卡·刚健的小前
	tNBAItemPart_CardBrother[3302849] = 0     --球星卡·威猛的大前
	tNBAItemPart_CardBrother[3302850] = 0    --球星卡·坚韧的大前
	
	tNBAItemPart_CardBrother[3302851] = 0    --球星卡·普通的中锋
	tNBAItemPart_CardBrother[3302852] = 0    --球星卡·普通的控卫
	tNBAItemPart_CardBrother[3302853] = 0     --球星卡·普通的分卫
	tNBAItemPart_CardBrother[3302854] = 0     --球星卡·普通的小前
	tNBAItemPart_CardBrother[3302855] = 0     --球星卡·普通的大前
	
--球星卡对应的联盟金币
local tNBAItemPart_CardGold = {}
	
	tNBAItemPart_CardGold[3302820] = 150    --球星卡·科比
	tNBAItemPart_CardGold[3302821] =  150  --球星卡·库里
	tNBAItemPart_CardGold[3302822] = 150    --球星卡·哈登
	tNBAItemPart_CardGold[3302823] = 150    --球星卡·姚明
	tNBAItemPart_CardGold[3302824] = 150    --球星卡·詹姆斯

	tNBAItemPart_CardGold[3302825] = 100   --球星卡·霍华德
	tNBAItemPart_CardGold[3302826] = 100   --球星卡·贝弗利
	tNBAItemPart_CardGold[3302827] = 100   --球星卡·阿里扎
	tNBAItemPart_CardGold[3302828] = 100   --球星卡·布鲁尔
	
	tNBAItemPart_CardGold[3302829] = 100   --球星卡·汤普森
	tNBAItemPart_CardGold[3302830] = 100    --球星卡·格林 
	tNBAItemPart_CardGold[3302831] =  100    --球星卡·伊格达拉
	tNBAItemPart_CardGold[3302832] = 100    --球星卡·利文斯顿
	
	tNBAItemPart_CardGold[3302833] = 100   --球星卡·欧文
	tNBAItemPart_CardGold[3302834] = 100   --球星卡·乐福
	tNBAItemPart_CardGold[3302835] = 100    --球星卡·史密斯
	tNBAItemPart_CardGold[3302836] = 100   --球星卡·马里昂
	
	tNBAItemPart_CardGold[3302837] = 100     --球星卡·尼克杨
	tNBAItemPart_CardGold[3302838] = 100     --球星卡·纳什
	tNBAItemPart_CardGold[3302839] = 100      --球星卡·希伯特
	tNBAItemPart_CardGold[3302840] = 100       --球星卡·希尔 
	
	tNBAItemPart_CardGold[3302841] =  50    --球星卡·强壮的中锋
	tNBAItemPart_CardGold[3302842] = 50     --球星卡·高大的中锋 
	tNBAItemPart_CardGold[3302843] = 50     --球星卡·敏捷的后卫 
	tNBAItemPart_CardGold[3302844] = 50     --球星卡·灵活的后卫 
	tNBAItemPart_CardGold[3302845] = 50     --球星卡·犀利的后卫 
	tNBAItemPart_CardGold[3302846] = 50     --球星卡·精准的后卫 
	tNBAItemPart_CardGold[3302847] = 50     --球星卡·彪悍的小前 
	tNBAItemPart_CardGold[3302848] = 50     --球星卡·刚健的小前 
	tNBAItemPart_CardGold[3302849] = 50     --球星卡·威猛的大前 
	tNBAItemPart_CardGold[3302850] = 50    --球星卡·坚韧的大前 
	
	tNBAItemPart_CardGold[3302851] =  25  --球星卡·普通的中锋
	tNBAItemPart_CardGold[3302852] = 25   --球星卡·普通的控卫 
	tNBAItemPart_CardGold[3302853] = 25    --球星卡·普通的分卫 
	tNBAItemPart_CardGold[3302854] = 25    --球星卡·普通的小前 
	tNBAItemPart_CardGold[3302855] = 25    --球星卡·普通的大前 
	
	tNBAItemPart_CardGold[3302810] = 125    --科比专属战靴
	tNBAItemPart_CardGold[3302811] = 120     --库里专属战靴
	tNBAItemPart_CardGold[3302812] = 125    --哈登专属战靴
	tNBAItemPart_CardGold[3302813] = 120     --姚明专属战靴
	tNBAItemPart_CardGold[3302814] = 125     --詹姆斯专属战靴
	tNBAItemPart_CardGold[3302815] = 120     --科比专属护腕
	tNBAItemPart_CardGold[3302816] = 125   --库里专属护腕
	tNBAItemPart_CardGold[3302817] = 130     --姚明专属护腕
	tNBAItemPart_CardGold[3302818] = 120     --哈登专属护腕
	tNBAItemPart_CardGold[3302819] = 125    --詹姆斯专属护腕
	
local tNBAItemPart_TeamMenber = {}
--火箭队有哪些卡片
	tNBAItemPart_TeamMenber[1] = {}
	tNBAItemPart_TeamMenber[1][1] = 3302820               --球星卡·哈登"
	tNBAItemPart_TeamMenber[1][2] = 3302825               --球星卡·霍华德
	tNBAItemPart_TeamMenber[1][3] = 3302836               --球星卡·保罗"
	tNBAItemPart_TeamMenber[1][4] = 3302838                --球星卡 林书豪
	tNBAItemPart_TeamMenber[1][5] = 3302827                --球星卡 戈登"
	-- tNBAItemPart_TeamMenber[1][6] =                 --球星卡·布鲁尔
	
--勇士队有哪些卡片
	tNBAItemPart_TeamMenber[2] = {}
	tNBAItemPart_TeamMenber[2][1] = 3302823               --球星卡· 库里"
	tNBAItemPart_TeamMenber[2][2] = 3302822               --球星卡·杜兰特"
	tNBAItemPart_TeamMenber[2][3] = 3302826                --球星卡·汤普森"
	tNBAItemPart_TeamMenber[2][4] = 3302837                --球星卡·格林"
	tNBAItemPart_TeamMenber[2][5] = 3302828                --球星卡·伊格达拉
	tNBAItemPart_TeamMenber[2][6] = 3302831                  --球星卡·利文斯顿
--骑士队有哪些卡片
	tNBAItemPart_TeamMenber[3] = {}
	tNBAItemPart_TeamMenber[3][1] = 3302821               --球星卡·詹姆斯
	tNBAItemPart_TeamMenber[3][2] = 3302839               --球星卡·欧文
	tNBAItemPart_TeamMenber[3][3] = 3302835               --球星卡·乐福
	tNBAItemPart_TeamMenber[3][4] = 3302833               --球星卡·史密斯
	tNBAItemPart_TeamMenber[3][5] = 3302834              --球星卡·马里昂
	
--湖人队有哪些卡片
	tNBAItemPart_TeamMenber[4] = {}
	tNBAItemPart_TeamMenber[4][1] = 3302824               --球星卡·詹姆斯"
	tNBAItemPart_TeamMenber[4][2] = 3302832                --球星卡 乐福"
	tNBAItemPart_TeamMenber[4][3] = 3302840                --球星卡 史密斯"
	tNBAItemPart_TeamMenber[4][4] = 3302829               --球星卡·小托马斯
	tNBAItemPart_TeamMenber[4][5] = 3302830              ---球星卡·克拉克森
	
--优秀球员有哪些
	tNBAItemPart_TeamMenber[5] = {}
	tNBAItemPart_TeamMenber[5][1] = 3302841              --球星卡·强壮的中锋
	tNBAItemPart_TeamMenber[5][2] = 3302842              --球星卡·高大的中锋
	tNBAItemPart_TeamMenber[5][3] = 3302843              --球星卡·敏捷的后卫
	tNBAItemPart_TeamMenber[5][4] = 3302844              --球星卡·灵活的后卫
	tNBAItemPart_TeamMenber[5][5] = 3302845              --球星卡·犀利的后卫
	tNBAItemPart_TeamMenber[5][6] = 3302846               --球星卡·精准的后卫
	tNBAItemPart_TeamMenber[5][7] = 3302847              --球星卡·彪悍的小前
	tNBAItemPart_TeamMenber[5][8] = 3302848               --球星卡·刚健的小前
	tNBAItemPart_TeamMenber[5][9] = 3302849               --球星卡·威猛的大前
	tNBAItemPart_TeamMenber[5][10] = 3302850             --球星卡·坚韧的大前
	
--普通球员有哪些
	tNBAItemPart_TeamMenber[6] = {}
	tNBAItemPart_TeamMenber[6][1] = 3302851               --球星卡·普通的中锋
	tNBAItemPart_TeamMenber[6][2] = 3302852                --球星卡·普通的控卫
	tNBAItemPart_TeamMenber[6][3] = 3302853                --球星卡·普通的分卫
	tNBAItemPart_TeamMenber[6][4] = 3302854               --球星卡·普通的小前
	tNBAItemPart_TeamMenber[6][5] = 3302855              ---球星卡·普通的大前
	
local tNBAItemPart_CardId = {}
--专属装备对应的球星卡
--3302820     球星卡·科比
--3302821      球星卡·库里
--3302822      球星卡·哈登
--3302823      球星卡·姚明
--3302824      球星卡·詹姆斯
	tNBAItemPart_CardId[3302810] = 3302820          --哈登专属战靴'
	tNBAItemPart_CardId[3302811] = 3302821          --詹姆斯专属战靴
	tNBAItemPart_CardId[3302812] = 3302822          --杜兰特专属战靴
	tNBAItemPart_CardId[3302813] = 3302823          --库里专属战靴'
	tNBAItemPart_CardId[3302814] = 3302824          --欧文专属战靴'
	
	tNBAItemPart_CardId[3302815] = 3302820          --哈登专属护腕',
	tNBAItemPart_CardId[3302816] = 3302821          --詹姆斯专属护腕
	tNBAItemPart_CardId[3302817] = 3302823          --杜兰特专属护腕
	tNBAItemPart_CardId[3302818] = 3302822          --库里专属护腕',
	tNBAItemPart_CardId[3302819] = 3302824          --欧文专属护腕',
	
local tNBAItemPart_CardRepresent = {}
--专属装备对应的二进制数字
	tNBAItemPart_CardRepresent[3302810] = 1         --哈登专属战靴'
	tNBAItemPart_CardRepresent[3302811] = 2         --詹姆斯专属战靴
	tNBAItemPart_CardRepresent[3302812] = 3         --杜兰特专属战靴
	tNBAItemPart_CardRepresent[3302813] = 4         --库里专属战靴'
	tNBAItemPart_CardRepresent[3302814] = 5         --欧文专属战靴'
	
	tNBAItemPart_CardRepresent[3302815] = 6          --哈登专属护腕',
	tNBAItemPart_CardRepresent[3302816] = 7          --詹姆斯专属护腕
	tNBAItemPart_CardRepresent[3302817] = 8          --杜兰特专属护腕
	tNBAItemPart_CardRepresent[3302818] = 9          --库里专属护腕',
	tNBAItemPart_CardRepresent[3302819] = 10         --欧文专属护腕',
	
	
local tNBAItemPart_EquilpStrength = {}
	--专属装备对应的战斗力
	tNBAItemPart_EquilpStrength[3302810] = 1250         --科比专属战靴
	tNBAItemPart_EquilpStrength[3302811] = 1200          --库里专属战靴
	tNBAItemPart_EquilpStrength[3302812] = 1250         --哈登专属战靴
	tNBAItemPart_EquilpStrength[3302813] = 1200          --姚明专属战靴
	tNBAItemPart_EquilpStrength[3302814] = 1250          --詹姆斯专属战靴
	tNBAItemPart_EquilpStrength[3302815] = 1200          --科比专属护腕
	tNBAItemPart_EquilpStrength[3302816] = 1250          --库里专属护腕
	tNBAItemPart_EquilpStrength[3302817] = 1300          --姚明专属护腕
	tNBAItemPart_EquilpStrength[3302818] = 1200          --哈登专属护腕
	tNBAItemPart_EquilpStrength[3302819] = 1250         --詹姆斯专属护腕
	
local tNBAItemPart_RewardExtra = {}
	-- 150联盟金币+3张VIP特训卡
	tNBAItemPart_RewardExtra[1] = {3302820,3302821,3302822,3302823,3302824}
	-- 100联盟金币+1张普通特训卡
	tNBAItemPart_RewardExtra[2] = {3302825,3302826,3302827,3302828,3302829,3302830,3302831,3302832,3302833,3302834,3302835,3302836,3302837,3302838,3302839,3302840}


local tNBAItemPart_ShoesRepresent = {}
--专属战靴对应的二进制数字
	tNBAItemPart_ShoesRepresent[3302820] = 1         --科比专属战靴
	tNBAItemPart_ShoesRepresent[3302821] = 2          --库里专属战靴
	tNBAItemPart_ShoesRepresent[3302822] = 3         --哈登专属战靴
	tNBAItemPart_ShoesRepresent[3302823] = 4          --姚明专属战靴
	tNBAItemPart_ShoesRepresent[3302824] = 5          --詹姆斯专属战靴
	
local tNBAItemPart_CuffRepresent = {}
--专属护腕对应的二进制数字
	tNBAItemPart_CuffRepresent[3302820] = 6         --科比专属战靴
	tNBAItemPart_CuffRepresent[3302821] = 7          --库里专属战靴
	tNBAItemPart_CuffRepresent[3302822] = 9         --哈登专属战靴
	tNBAItemPart_CuffRepresent[3302823] = 8          --姚明专属战靴
	tNBAItemPart_CuffRepresent[3302824] = 10          --詹姆斯专属战靴
	
local tNBAItemPart_CardEquilpStrength = {}
	--专属装备对应的战斗力
	tNBAItemPart_CardEquilpStrength[3302820] = {}
	tNBAItemPart_CardEquilpStrength[3302821] = {}
	tNBAItemPart_CardEquilpStrength[3302822] = {}
	tNBAItemPart_CardEquilpStrength[3302823] = {}
	tNBAItemPart_CardEquilpStrength[3302824] = {}
	
	tNBAItemPart_CardEquilpStrength[3302820][1] = 1250
	tNBAItemPart_CardEquilpStrength[3302820][2] = 1200
	
	tNBAItemPart_CardEquilpStrength[3302821][1] = 1200
	tNBAItemPart_CardEquilpStrength[3302821][2] = 1250
	
	tNBAItemPart_CardEquilpStrength[3302822][1] = 1250
	tNBAItemPart_CardEquilpStrength[3302822][2] = 1200
	
	tNBAItemPart_CardEquilpStrength[3302823][1] = 1200
	tNBAItemPart_CardEquilpStrength[3302823][2] = 1300
	
	tNBAItemPart_CardEquilpStrength[3302824][1] = 1250
	tNBAItemPart_CardEquilpStrength[3302824][2] = 1250
	
local tNBAItemPart_CardNum = {}
--二进制的值
	for i = 1,11 do
		tNBAItemPart_CardNum[i] = 2^(i-1)
	end

--序列号代表的物品ID
local tNBAItemPart_Order = {}
--SSR
	tNBAItemPart_Order[1] = 3302820    --球星卡·哈登
	tNBAItemPart_Order[2] = 3302821    --球星卡·詹姆斯
	tNBAItemPart_Order[3] = 3302822    --球星卡·杜兰特
	tNBAItemPart_Order[4] = 3302823    --球星卡·库里
	tNBAItemPart_Order[5] = 3302824    --球星卡·欧文
--SR
	tNBAItemPart_Order[6] = 3302825    --球星卡·霍华德
	tNBAItemPart_Order[7] = 3302826    --球星卡·贝弗利
	tNBAItemPart_Order[8] = 3302827    --球星卡·阿里扎
	tNBAItemPart_Order[9] = 3302828    --球星卡·布鲁尔
	
	tNBAItemPart_Order[10] = 3302829   --球星卡·汤普森
	tNBAItemPart_Order[11] = 3302830    --球星卡·格林
	tNBAItemPart_Order[12] = 3302831    --球星卡·伊格达拉
	tNBAItemPart_Order[13] = 3302832    --球星卡·利文斯顿
	
	tNBAItemPart_Order[14] = 3302833    --球星卡·欧文
	tNBAItemPart_Order[15] = 3302834    --球星卡·乐福
	tNBAItemPart_Order[16] = 3302835    --球星卡·史密斯
	tNBAItemPart_Order[17] = 3302836    --球星卡·马里昂
	
	tNBAItemPart_Order[18] = 3302837    --球星卡·尼克杨
	tNBAItemPart_Order[19] = 3302838    --球星卡·纳什
	tNBAItemPart_Order[20] = 3302839    --球星卡·希伯特
	tNBAItemPart_Order[21] = 3302840     --球星卡·希尔
	
--R
	tNBAItemPart_Order[22] = 3302841     --球星卡·强壮的中锋
	tNBAItemPart_Order[23] = 3302842    --球星卡·高大的中锋
	tNBAItemPart_Order[24] = 3302843    --球星卡·敏捷的后卫
	tNBAItemPart_Order[25] = 3302844    --球星卡·灵活的后卫
	tNBAItemPart_Order[26] = 3302845    --球星卡·犀利的后卫
	tNBAItemPart_Order[27] = 3302846    --球星卡·精准的后卫
	tNBAItemPart_Order[28] = 3302847    --球星卡·彪悍的小前
	tNBAItemPart_Order[29] = 3302848    --球星卡·刚健的小前
	tNBAItemPart_Order[30] = 3302849    --球星卡·威猛的大前
	tNBAItemPart_Order[31] = 3302850    --球星卡·坚韧的大前
	
--N
	tNBAItemPart_Order[32] = 3302851    --球星卡·普通的中锋
	tNBAItemPart_Order[33] = 3302852   --球星卡·普通的控卫
	tNBAItemPart_Order[34] = 3302853    --球星卡·普通的分卫
	tNBAItemPart_Order[35] = 3302854    --球星卡·普通的小前
	tNBAItemPart_Order[36] = 3302855    --球星卡·普通的大前

	
local tNBAItemPart_CoatOrder = {}
--普通外套
	tNBAItemPart_CoatOrder[1] = 194655    --外套1
	tNBAItemPart_CoatOrder[2] = 194665    --外套2
	tNBAItemPart_CoatOrder[3] = 194675    --外套3
	tNBAItemPart_CoatOrder[4] = 194685    --外套4
-- 新增
	tNBAItemPart_CoatOrder[5] = 195085    --外套1
	tNBAItemPart_CoatOrder[6] = 195095    --外套2
	tNBAItemPart_CoatOrder[7] = 195105    --外套3
	tNBAItemPart_CoatOrder[8] = 195115    --外套4
	
--光效外套
	tNBAItemPart_CoatOrder[9] = 194695    --光效外套1
	tNBAItemPart_CoatOrder[10] = 194705    --光效外套2
	tNBAItemPart_CoatOrder[11] = 194715    --光效外套3
	tNBAItemPart_CoatOrder[12] = 194725    --光效外套4
-- 新增
	tNBAItemPart_CoatOrder[13] = 195175    --光效外套1
	tNBAItemPart_CoatOrder[14] = 195185    --光效外套2
	tNBAItemPart_CoatOrder[15] = 195195    --光效外套3
	tNBAItemPart_CoatOrder[16] = 195205    --光效外套4

	
local tNBAItemPart_CoatLoop = {}
	tNBAItemPart_CoatLoop[3302876] = "0 1 3 1440 1 0 0 1"
	tNBAItemPart_CoatLoop[3302877] = "0 1 3 10080 1 0 0 1"
	tNBAItemPart_CoatLoop[3302878] = "0 1 3 21600 1 0 0 1"
	tNBAItemPart_CoatLoop[3302879] = "0 1 3 43200 1 0 0 1"
	tNBAItemPart_CoatLoop[3302880] = "0 1 3 0 0 0 0 1"
	
local tNBAItemPart_Random = {}
--3302801     球星荣耀礼包
	tNBAItemPart_Random[3302801] = {}
	tNBAItemPart_Random[3302801][1] = {}
	tNBAItemPart_Random[3302801][1]["ItemChanceSum"] = 10000
	-- N卡	55.00%
	tNBAItemPart_Random[3302801][1][1] = {}
	tNBAItemPart_Random[3302801][1][1]["RandomItemChanceType"] = 2
	tNBAItemPart_Random[3302801][1][1]["ItemChance"] = 5500
	tNBAItemPart_Random[3302801][1][1]["Item_1"] = {32,36}
	
	--R卡	25%
	tNBAItemPart_Random[3302801][1][2] = {}
	tNBAItemPart_Random[3302801][1][2]["RandomItemChanceType"] = 2
	tNBAItemPart_Random[3302801][1][2]["ItemChance"] = 2500
	tNBAItemPart_Random[3302801][1][2]["Item_1"] = {22,31}
	
	--SR卡	14.7%
	tNBAItemPart_Random[3302801][1][3] = {}
	tNBAItemPart_Random[3302801][1][3]["RandomItemChanceType"] = 2
	tNBAItemPart_Random[3302801][1][3]["ItemChance"] = 1470
	tNBAItemPart_Random[3302801][1][3]["Item_1"] = {6,21}
	
	--SSR卡	0.3%
	tNBAItemPart_Random[3302801][1][4] = {}
	tNBAItemPart_Random[3302801][1][4]["RandomItemChanceType"] = 2
	tNBAItemPart_Random[3302801][1][4]["ItemChance"] = 30
	tNBAItemPart_Random[3302801][1][4]["Item_1"] = {1,5}
	
	--最有价值球星徽章   5%
	tNBAItemPart_Random[3302801][1][5] = {}
	tNBAItemPart_Random[3302801][1][5]["RandomItemChanceType"] = 2
	tNBAItemPart_Random[3302801][1][5]["ItemChance"] = 500
	tNBAItemPart_Random[3302801][1][5]["Item_1"] = 3302805
	
--巨星球衣（1天）礼包
	tNBAItemPart_Random[3302876] = {}
	tNBAItemPart_Random[3302876][1] = {}
	tNBAItemPart_Random[3302876][1]["ItemChanceSum"] = 10000
	--普通巨星外套    96%
	tNBAItemPart_Random[3302876][1][1] = {}
	tNBAItemPart_Random[3302876][1][1]["RandomItemChanceType"] = 2
	tNBAItemPart_Random[3302876][1][1]["ItemChance"] = 9600
	tNBAItemPart_Random[3302876][1][1]["Item_1"] = {1,8}
	
	--光效版巨星外套   4%
	tNBAItemPart_Random[3302876][1][2] = {}
	tNBAItemPart_Random[3302876][1][2]["RandomItemChanceType"] = 2
	tNBAItemPart_Random[3302876][1][2]["ItemChance"] = 400
	tNBAItemPart_Random[3302876][1][2]["Item_1"] = {9,16}
	
--玩家拥有这张SSR，给予专属装备
	tNBAItemPart_Random[3302820] = {}
	tNBAItemPart_Random[3302820][1] = {}
	tNBAItemPart_Random[3302820][1]["ItemChanceSum"] = 10000
	--科比专属战靴    50%
	tNBAItemPart_Random[3302820][1][1] = {}
	tNBAItemPart_Random[3302820][1][1]["RandomItemChanceType"] = 2
	tNBAItemPart_Random[3302820][1][1]["ItemChance"] = 5000
	tNBAItemPart_Random[3302820][1][1]["RewardItem"] = {}
	tNBAItemPart_Random[3302820][1][1]["RewardItem"][1] = {}
	tNBAItemPart_Random[3302820][1][1]["RewardItem"][1]["Id"] = 3302810
	tNBAItemPart_Random[3302820][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tNBAItemPart_Random[3302820][1][1]["LogId"] = 12000689
	
	--科比专属护腕   50%
	tNBAItemPart_Random[3302820][1][2] = {}
	tNBAItemPart_Random[3302820][1][2]["RandomItemChanceType"] = 2
	tNBAItemPart_Random[3302820][1][2]["ItemChance"] = 5000
	tNBAItemPart_Random[3302820][1][2]["RewardItem"] = {}
	tNBAItemPart_Random[3302820][1][2]["RewardItem"][1] = {}
	tNBAItemPart_Random[3302820][1][2]["RewardItem"][1]["Id"] = 3302815
	tNBAItemPart_Random[3302820][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tNBAItemPart_Random[3302820][1][2]["LogId"] = 12000689
	
	tNBAItemPart_Random[3302821] = {}
	tNBAItemPart_Random[3302821][1] = {}
	tNBAItemPart_Random[3302821][1]["ItemChanceSum"] = 10000
	--库里专属战靴    50%
	tNBAItemPart_Random[3302821][1][1] = {}
	tNBAItemPart_Random[3302821][1][1]["RandomItemChanceType"] = 2
	tNBAItemPart_Random[3302821][1][1]["ItemChance"] = 5000
	tNBAItemPart_Random[3302821][1][1]["RewardItem"] = {}
	tNBAItemPart_Random[3302821][1][1]["RewardItem"][1] = {}
	tNBAItemPart_Random[3302821][1][1]["RewardItem"][1]["Id"] = 3302811
	tNBAItemPart_Random[3302821][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tNBAItemPart_Random[3302821][1][1]["LogId"] = 12000689
	
	--库里专属护腕   50%
	tNBAItemPart_Random[3302821][1][2] = {}
	tNBAItemPart_Random[3302821][1][2]["RandomItemChanceType"] = 2
	tNBAItemPart_Random[3302821][1][2]["ItemChance"] = 5000
	tNBAItemPart_Random[3302821][1][2]["RewardItem"] = {}
	tNBAItemPart_Random[3302821][1][2]["RewardItem"][1] = {}
	tNBAItemPart_Random[3302821][1][2]["RewardItem"][1]["Id"] = 3302816
	tNBAItemPart_Random[3302821][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tNBAItemPart_Random[3302821][1][2]["LogId"] = 12000689
	
	tNBAItemPart_Random[3302822] = {}
	tNBAItemPart_Random[3302822][1] = {}
	tNBAItemPart_Random[3302822][1]["ItemChanceSum"] = 10000
	--哈登专属战靴    50%
	tNBAItemPart_Random[3302822][1][1] = {}
	tNBAItemPart_Random[3302822][1][1]["RandomItemChanceType"] = 2
	tNBAItemPart_Random[3302822][1][1]["ItemChance"] = 5000
	tNBAItemPart_Random[3302822][1][1]["RewardItem"] = {}
	tNBAItemPart_Random[3302822][1][1]["RewardItem"][1] = {}
	tNBAItemPart_Random[3302822][1][1]["RewardItem"][1]["Id"] = 3302812
	tNBAItemPart_Random[3302822][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tNBAItemPart_Random[3302822][1][1]["LogId"] = 12000689
	
	--哈登专属护腕   50%
	tNBAItemPart_Random[3302822][1][2] = {}
	tNBAItemPart_Random[3302822][1][2]["RandomItemChanceType"] = 2
	tNBAItemPart_Random[3302822][1][2]["ItemChance"] = 5000
	tNBAItemPart_Random[3302822][1][2]["RewardItem"] = {}
	tNBAItemPart_Random[3302822][1][2]["RewardItem"][1] = {}
	tNBAItemPart_Random[3302822][1][2]["RewardItem"][1]["Id"] = 3302818
	tNBAItemPart_Random[3302822][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tNBAItemPart_Random[3302822][1][2]["LogId"] = 12000689
	
	tNBAItemPart_Random[3302823] = {}
	tNBAItemPart_Random[3302823][1] = {}
	tNBAItemPart_Random[3302823][1]["ItemChanceSum"] = 10000
	--姚明专属战靴    50%
	tNBAItemPart_Random[3302823][1][1] = {}
	tNBAItemPart_Random[3302823][1][1]["RandomItemChanceType"] = 2
	tNBAItemPart_Random[3302823][1][1]["ItemChance"] = 5000
	tNBAItemPart_Random[3302823][1][1]["RewardItem"] = {}
	tNBAItemPart_Random[3302823][1][1]["RewardItem"][1] = {}
	tNBAItemPart_Random[3302823][1][1]["RewardItem"][1]["Id"] = 3302813
	tNBAItemPart_Random[3302823][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tNBAItemPart_Random[3302823][1][1]["LogId"] = 12000689
	
	--姚明专属护腕   50%
	tNBAItemPart_Random[3302823][1][2] = {}
	tNBAItemPart_Random[3302823][1][2]["RandomItemChanceType"] = 2
	tNBAItemPart_Random[3302823][1][2]["ItemChance"] = 5000
	tNBAItemPart_Random[3302823][1][2]["RewardItem"] = {}
	tNBAItemPart_Random[3302823][1][2]["RewardItem"][1] = {}
	tNBAItemPart_Random[3302823][1][2]["RewardItem"][1]["Id"] = 3302817
	tNBAItemPart_Random[3302823][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tNBAItemPart_Random[3302823][1][2]["LogId"] = 12000689
	
	tNBAItemPart_Random[3302824] = {}
	tNBAItemPart_Random[3302824][1] = {}
	tNBAItemPart_Random[3302824][1]["ItemChanceSum"] = 10000
	--詹姆斯专属战靴    50%
	tNBAItemPart_Random[3302824][1][1] = {}
	tNBAItemPart_Random[3302824][1][1]["RandomItemChanceType"] = 2
	tNBAItemPart_Random[3302824][1][1]["ItemChance"] = 5000
	tNBAItemPart_Random[3302824][1][1]["RewardItem"] = {}
	tNBAItemPart_Random[3302824][1][1]["RewardItem"][1] = {}
	tNBAItemPart_Random[3302824][1][1]["RewardItem"][1]["Id"] = 3302814
	tNBAItemPart_Random[3302824][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tNBAItemPart_Random[3302824][1][1]["LogId"] = 12000689
	
	--詹姆斯专属护腕   50%
	tNBAItemPart_Random[3302824][1][2] = {}
	tNBAItemPart_Random[3302824][1][2]["RandomItemChanceType"] = 2
	tNBAItemPart_Random[3302824][1][2]["ItemChance"] = 5000
	tNBAItemPart_Random[3302824][1][2]["RewardItem"] = {}
	tNBAItemPart_Random[3302824][1][2]["RewardItem"][1] = {}
	tNBAItemPart_Random[3302824][1][2]["RewardItem"][1]["Id"] = 3302819
	tNBAItemPart_Random[3302824][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tNBAItemPart_Random[3302824][1][2]["LogId"] = 12000689
	
local tNBAItemPart_Reward = {}
--礼包过期获得气力值
	tNBAItemPart_Reward[3302801] = {}
	tNBAItemPart_Reward[3302801]["RewardStrengthValue"] = {}
	tNBAItemPart_Reward[3302801]["RewardStrengthValue"]["Value"] = 30
	tNBAItemPart_Reward[3302801]["LogId"] = 12000689
	
	tNBAItemPart_Reward[3302802] = {}
	tNBAItemPart_Reward[3302802]["RewardStrengthValue"] = {}
	tNBAItemPart_Reward[3302802]["RewardStrengthValue"]["Value"] = 150
	tNBAItemPart_Reward[3302802]["LogId"] = 12000689
	
	tNBAItemPart_Reward[3302803] = {}
	tNBAItemPart_Reward[3302803]["RewardStrengthValue"] = {}
	tNBAItemPart_Reward[3302803]["RewardStrengthValue"]["Value"] = 100
	tNBAItemPart_Reward[3302803]["LogId"] = 12000689
	
--使用球星徽章碎片
	tNBAItemPart_Reward[3302805] = {}
	tNBAItemPart_Reward[3302805]["DeleteItem"] = {}
	tNBAItemPart_Reward[3302805]["DeleteItem"][1] = {}
	tNBAItemPart_Reward[3302805]["DeleteItem"][1]["Id"] = 3302805
	tNBAItemPart_Reward[3302805]["DeleteItem"][1]["ItemNum"] = 10
	tNBAItemPart_Reward[3302805]["RewardItem"] = {}
	tNBAItemPart_Reward[3302805]["RewardItem"][1] = {}
	tNBAItemPart_Reward[3302805]["RewardItem"][1]["Id"] = 3302806     --最有价值球星徽章
	tNBAItemPart_Reward[3302805]["RewardItem"][1]["Attr"] = "0 1"
	tNBAItemPart_Reward[3302805]["RewardEffect"]={}
	tNBAItemPart_Reward[3302805]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_Reward[3302805]["LogId"] = 12000689
	tNBAItemPart_Reward[3302805]["Talk"] = tNBAItemPart_Text["GetItem"][3302805]
	
--洗赠光效球衣（赠）
	tNBAItemPart_Reward[194695] = {}
	tNBAItemPart_Reward[194695]["DeleteItem"] = {}
	tNBAItemPart_Reward[194695]["DeleteItem"][1] = {}
	tNBAItemPart_Reward[194695]["DeleteItem"][1]["Id"] = 3302808
	tNBAItemPart_Reward[194695]["RewardItem"] = {}
	tNBAItemPart_Reward[194695]["RewardItem"][1] = {}
	tNBAItemPart_Reward[194695]["RewardItem"][1]["Id"] = 194695     --光效外套1
	tNBAItemPart_Reward[194695]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_Reward[194695]["RewardEffect"]={}
	tNBAItemPart_Reward[194695]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_Reward[194695]["LogId"] = 12000689
	tNBAItemPart_Reward[194695]["Talk"] = tNBAItemPart_Text["GetItem"][189605]
	
	tNBAItemPart_Reward[194705] = {}
	tNBAItemPart_Reward[194705]["DeleteItem"] = {}
	tNBAItemPart_Reward[194705]["DeleteItem"][1] = {}
	tNBAItemPart_Reward[194705]["DeleteItem"][1]["Id"] = 3302808
	tNBAItemPart_Reward[194705]["RewardItem"] = {}
	tNBAItemPart_Reward[194705]["RewardItem"][1] = {}
	tNBAItemPart_Reward[194705]["RewardItem"][1]["Id"] = 194705     --光效外套1
	tNBAItemPart_Reward[194705]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_Reward[194705]["RewardEffect"]={}
	tNBAItemPart_Reward[194705]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_Reward[194705]["LogId"] = 12000689
	tNBAItemPart_Reward[194705]["Talk"] = tNBAItemPart_Text["GetItem"][189615]
	
	tNBAItemPart_Reward[194715] = {}
	tNBAItemPart_Reward[194715]["DeleteItem"] = {}
	tNBAItemPart_Reward[194715]["DeleteItem"][1] = {}
	tNBAItemPart_Reward[194715]["DeleteItem"][1]["Id"] = 3302808
	tNBAItemPart_Reward[194715]["RewardItem"] = {}
	tNBAItemPart_Reward[194715]["RewardItem"][1] = {}
	tNBAItemPart_Reward[194715]["RewardItem"][1]["Id"] = 194715     --光效外套1
	tNBAItemPart_Reward[194715]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_Reward[194715]["RewardEffect"]={}
	tNBAItemPart_Reward[194715]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_Reward[194715]["LogId"] = 12000689
	tNBAItemPart_Reward[194715]["Talk"] = tNBAItemPart_Text["GetItem"][189625]
	
	tNBAItemPart_Reward[194725] = {}
	tNBAItemPart_Reward[194725]["DeleteItem"] = {}
	tNBAItemPart_Reward[194725]["DeleteItem"][1] = {}
	tNBAItemPart_Reward[194725]["DeleteItem"][1]["Id"] = 3302808
	tNBAItemPart_Reward[194725]["RewardItem"] = {}
	tNBAItemPart_Reward[194725]["RewardItem"][1] = {}
	tNBAItemPart_Reward[194725]["RewardItem"][1]["Id"] = 194725     --光效外套1
	tNBAItemPart_Reward[194725]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_Reward[194725]["RewardEffect"]={}
	tNBAItemPart_Reward[194725]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_Reward[194725]["LogId"] = 12000689
	tNBAItemPart_Reward[194725]["Talk"] = tNBAItemPart_Text["GetItem"][189635]
	-- 新增
	tNBAItemPart_Reward[195175] = {}
	tNBAItemPart_Reward[195175]["DeleteItem"] = {}
	tNBAItemPart_Reward[195175]["DeleteItem"][1] = {}
	tNBAItemPart_Reward[195175]["DeleteItem"][1]["Id"] = 3302808
	tNBAItemPart_Reward[195175]["RewardItem"] = {}
	tNBAItemPart_Reward[195175]["RewardItem"][1] = {}
	tNBAItemPart_Reward[195175]["RewardItem"][1]["Id"] = 195175     --光效外套1
	tNBAItemPart_Reward[195175]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_Reward[195175]["RewardEffect"]={}
	tNBAItemPart_Reward[195175]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_Reward[195175]["LogId"] = 12000689
	tNBAItemPart_Reward[195175]["Talk"] = tNBAItemPart_Text["GetItem"][195175]
	
	tNBAItemPart_Reward[195185] = {}
	tNBAItemPart_Reward[195185]["DeleteItem"] = {}
	tNBAItemPart_Reward[195185]["DeleteItem"][1] = {}
	tNBAItemPart_Reward[195185]["DeleteItem"][1]["Id"] = 3302808
	tNBAItemPart_Reward[195185]["RewardItem"] = {}
	tNBAItemPart_Reward[195185]["RewardItem"][1] = {}
	tNBAItemPart_Reward[195185]["RewardItem"][1]["Id"] = 195185     --光效外套1
	tNBAItemPart_Reward[195185]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_Reward[195185]["RewardEffect"]={}
	tNBAItemPart_Reward[195185]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_Reward[195185]["LogId"] = 12000689
	tNBAItemPart_Reward[195185]["Talk"] = tNBAItemPart_Text["GetItem"][195185]

	tNBAItemPart_Reward[195195] = {}
	tNBAItemPart_Reward[195195]["DeleteItem"] = {}
	tNBAItemPart_Reward[195195]["DeleteItem"][1] = {}
	tNBAItemPart_Reward[195195]["DeleteItem"][1]["Id"] = 3302808
	tNBAItemPart_Reward[195195]["RewardItem"] = {}
	tNBAItemPart_Reward[195195]["RewardItem"][1] = {}
	tNBAItemPart_Reward[195195]["RewardItem"][1]["Id"] = 195195     --光效外套1
	tNBAItemPart_Reward[195195]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_Reward[195195]["RewardEffect"]={}
	tNBAItemPart_Reward[195195]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_Reward[195195]["LogId"] = 12000689
	tNBAItemPart_Reward[195195]["Talk"] = tNBAItemPart_Text["GetItem"][195195]
	
	tNBAItemPart_Reward[195205] = {}
	tNBAItemPart_Reward[195205]["DeleteItem"] = {}
	tNBAItemPart_Reward[195205]["DeleteItem"][1] = {}
	tNBAItemPart_Reward[195205]["DeleteItem"][1]["Id"] = 3302808
	tNBAItemPart_Reward[195205]["RewardItem"] = {}
	tNBAItemPart_Reward[195205]["RewardItem"][1] = {}
	tNBAItemPart_Reward[195205]["RewardItem"][1]["Id"] = 195205     --光效外套1
	tNBAItemPart_Reward[195205]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_Reward[195205]["RewardEffect"]={}
	tNBAItemPart_Reward[195205]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_Reward[195205]["LogId"] = 12000689
	tNBAItemPart_Reward[195205]["Talk"] = tNBAItemPart_Text["GetItem"][195205]
	
--升级普通外套1非赠
	tNBAItemPart_Reward[1] = {}
	tNBAItemPart_Reward[1]["DeleteItem"] = {}
	tNBAItemPart_Reward[1]["DeleteItem"][1] = {}
	tNBAItemPart_Reward[1]["DeleteItem"][1]["Id"] = 3302809
	tNBAItemPart_Reward[1]["RewardItem"] = {}
	tNBAItemPart_Reward[1]["RewardItem"][1] = {}
	tNBAItemPart_Reward[1]["RewardItem"][1]["Id"] = 194695     --光效外套1非赠
	tNBAItemPart_Reward[1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_Reward[1]["RewardEffect"]={}
	tNBAItemPart_Reward[1]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_Reward[1]["LogId"] = 12000689
	tNBAItemPart_Reward[1]["Talk"] = tNBAItemPart_Text["GetItem"][1]
	
--升级普通外套1赠
	tNBAItemPart_Reward[2] = {}
	tNBAItemPart_Reward[2]["DeleteItem"] = {}
	tNBAItemPart_Reward[2]["DeleteItem"][1] = {}
	tNBAItemPart_Reward[2]["DeleteItem"][1]["Id"] = 3302809
	tNBAItemPart_Reward[2]["RewardItem"] = {}
	tNBAItemPart_Reward[2]["RewardItem"][1] = {}
	tNBAItemPart_Reward[2]["RewardItem"][1]["Id"] = 194695     --光效外套1赠
	tNBAItemPart_Reward[2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNBAItemPart_Reward[2]["RewardEffect"]={}
	tNBAItemPart_Reward[2]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_Reward[2]["LogId"] = 12000689
	tNBAItemPart_Reward[2]["Talk"] = tNBAItemPart_Text["GetItem"][2]
	
--升级普通外套2非赠
	tNBAItemPart_Reward[3] = {}
	tNBAItemPart_Reward[3]["DeleteItem"] = {}
	tNBAItemPart_Reward[3]["DeleteItem"][1] = {}
	tNBAItemPart_Reward[3]["DeleteItem"][1]["Id"] = 3302809
	tNBAItemPart_Reward[3]["RewardItem"] = {}
	tNBAItemPart_Reward[3]["RewardItem"][1] = {}
	tNBAItemPart_Reward[3]["RewardItem"][1]["Id"] = 194705     --光效外套2非赠
	tNBAItemPart_Reward[3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_Reward[3]["RewardEffect"]={}
	tNBAItemPart_Reward[3]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_Reward[3]["LogId"] = 12000689
	tNBAItemPart_Reward[3]["Talk"] = tNBAItemPart_Text["GetItem"][3]
	
--升级普通外套2赠
	tNBAItemPart_Reward[4] = {}
	tNBAItemPart_Reward[4]["DeleteItem"] = {}
	tNBAItemPart_Reward[4]["DeleteItem"][1] = {}
	tNBAItemPart_Reward[4]["DeleteItem"][1]["Id"] = 3302809
	tNBAItemPart_Reward[4]["RewardItem"] = {}
	tNBAItemPart_Reward[4]["RewardItem"][1] = {}
	tNBAItemPart_Reward[4]["RewardItem"][1]["Id"] = 194705     --光效外套2赠
	tNBAItemPart_Reward[4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNBAItemPart_Reward[4]["RewardEffect"]={}
	tNBAItemPart_Reward[4]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_Reward[4]["LogId"] = 12000689
	tNBAItemPart_Reward[4]["Talk"] = tNBAItemPart_Text["GetItem"][4]
	
--升级普通外套3非赠
	tNBAItemPart_Reward[5] = {}
	tNBAItemPart_Reward[5]["DeleteItem"] = {}
	tNBAItemPart_Reward[5]["DeleteItem"][1] = {}
	tNBAItemPart_Reward[5]["DeleteItem"][1]["Id"] = 3302809
	tNBAItemPart_Reward[5]["RewardItem"] = {}
	tNBAItemPart_Reward[5]["RewardItem"][1] = {}
	tNBAItemPart_Reward[5]["RewardItem"][1]["Id"] = 194715     --光效外套3非赠
	tNBAItemPart_Reward[5]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_Reward[5]["RewardEffect"]={}
	tNBAItemPart_Reward[5]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_Reward[5]["LogId"] = 12000689
	tNBAItemPart_Reward[5]["Talk"] = tNBAItemPart_Text["GetItem"][5]
	
--升级普通外套3赠
	tNBAItemPart_Reward[6] = {}
	tNBAItemPart_Reward[6]["DeleteItem"] = {}
	tNBAItemPart_Reward[6]["DeleteItem"][1] = {}
	tNBAItemPart_Reward[6]["DeleteItem"][1]["Id"] = 3302809
	tNBAItemPart_Reward[6]["RewardItem"] = {}
	tNBAItemPart_Reward[6]["RewardItem"][1] = {}
	tNBAItemPart_Reward[6]["RewardItem"][1]["Id"] = 194715     --光效外套3赠
	tNBAItemPart_Reward[6]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNBAItemPart_Reward[6]["RewardEffect"]={}
	tNBAItemPart_Reward[6]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_Reward[6]["LogId"] = 12000689
	tNBAItemPart_Reward[6]["Talk"] = tNBAItemPart_Text["GetItem"][6]
	
--升级普通外套4非赠
	tNBAItemPart_Reward[7] = {}
	tNBAItemPart_Reward[7]["DeleteItem"] = {}
	tNBAItemPart_Reward[7]["DeleteItem"][1] = {}
	tNBAItemPart_Reward[7]["DeleteItem"][1]["Id"] = 3302809
	tNBAItemPart_Reward[7]["RewardItem"] = {}
	tNBAItemPart_Reward[7]["RewardItem"][1] = {}
	tNBAItemPart_Reward[7]["RewardItem"][1]["Id"] = 194725     --光效外套4非赠
	tNBAItemPart_Reward[7]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_Reward[7]["RewardEffect"]={}
	tNBAItemPart_Reward[7]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_Reward[7]["LogId"] = 12000689
	tNBAItemPart_Reward[7]["Talk"] = tNBAItemPart_Text["GetItem"][7]
	
--升级普通外套4赠
	tNBAItemPart_Reward[8] = {}
	tNBAItemPart_Reward[8]["DeleteItem"] = {}
	tNBAItemPart_Reward[8]["DeleteItem"][1] = {}
	tNBAItemPart_Reward[8]["DeleteItem"][1]["Id"] = 3302809
	tNBAItemPart_Reward[8]["RewardItem"] = {}
	tNBAItemPart_Reward[8]["RewardItem"][1] = {}
	tNBAItemPart_Reward[8]["RewardItem"][1]["Id"] = 194725     --光效外套4赠
	tNBAItemPart_Reward[8]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNBAItemPart_Reward[8]["RewardEffect"]={}
	tNBAItemPart_Reward[8]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_Reward[8]["LogId"] = 12000689
	tNBAItemPart_Reward[8]["Talk"] = tNBAItemPart_Text["GetItem"][8]
	
------------ 新增
--升级普通外套5非赠
	tNBAItemPart_Reward[9] = {}
	tNBAItemPart_Reward[9]["DeleteItem"] = {}
	tNBAItemPart_Reward[9]["DeleteItem"][1] = {}
	tNBAItemPart_Reward[9]["DeleteItem"][1]["Id"] = 3302809
	tNBAItemPart_Reward[9]["RewardItem"] = {}
	tNBAItemPart_Reward[9]["RewardItem"][1] = {}
	tNBAItemPart_Reward[9]["RewardItem"][1]["Id"] = 195175     --光效外套5非赠
	tNBAItemPart_Reward[9]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_Reward[9]["RewardEffect"]={}
	tNBAItemPart_Reward[9]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_Reward[9]["LogId"] = 12000689
	tNBAItemPart_Reward[9]["Talk"] = tNBAItemPart_Text["GetItem"][17]
	
--升级普通外套5赠
	tNBAItemPart_Reward[10] = {}
	tNBAItemPart_Reward[10]["DeleteItem"] = {}
	tNBAItemPart_Reward[10]["DeleteItem"][1] = {}
	tNBAItemPart_Reward[10]["DeleteItem"][1]["Id"] = 3302809
	tNBAItemPart_Reward[10]["RewardItem"] = {}
	tNBAItemPart_Reward[10]["RewardItem"][1] = {}
	tNBAItemPart_Reward[10]["RewardItem"][1]["Id"] = 195175     --光效外套5赠
	tNBAItemPart_Reward[10]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNBAItemPart_Reward[10]["RewardEffect"]={}
	tNBAItemPart_Reward[10]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_Reward[10]["LogId"] = 12000689
	tNBAItemPart_Reward[10]["Talk"] = tNBAItemPart_Text["GetItem"][18]

--升级普通外套6非赠
	tNBAItemPart_Reward[11] = {}
	tNBAItemPart_Reward[11]["DeleteItem"] = {}
	tNBAItemPart_Reward[11]["DeleteItem"][1] = {}
	tNBAItemPart_Reward[11]["DeleteItem"][1]["Id"] = 3302809
	tNBAItemPart_Reward[11]["RewardItem"] = {}
	tNBAItemPart_Reward[11]["RewardItem"][1] = {}
	tNBAItemPart_Reward[11]["RewardItem"][1]["Id"] = 195185     --光效外套6非赠
	tNBAItemPart_Reward[11]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_Reward[11]["RewardEffect"]={}
	tNBAItemPart_Reward[11]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_Reward[11]["LogId"] = 12000689
	tNBAItemPart_Reward[11]["Talk"] = tNBAItemPart_Text["GetItem"][19]
	
--升级普通外套6赠
	tNBAItemPart_Reward[12] = {}
	tNBAItemPart_Reward[12]["DeleteItem"] = {}
	tNBAItemPart_Reward[12]["DeleteItem"][1] = {}
	tNBAItemPart_Reward[12]["DeleteItem"][1]["Id"] = 3302809
	tNBAItemPart_Reward[12]["RewardItem"] = {}
	tNBAItemPart_Reward[12]["RewardItem"][1] = {}
	tNBAItemPart_Reward[12]["RewardItem"][1]["Id"] = 195185     --光效外套6赠
	tNBAItemPart_Reward[12]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNBAItemPart_Reward[12]["RewardEffect"]={}
	tNBAItemPart_Reward[12]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_Reward[12]["LogId"] = 12000689
	tNBAItemPart_Reward[12]["Talk"] = tNBAItemPart_Text["GetItem"][12]

--升级普通外套7非赠
	tNBAItemPart_Reward[13] = {}
	tNBAItemPart_Reward[13]["DeleteItem"] = {}
	tNBAItemPart_Reward[13]["DeleteItem"][1] = {}
	tNBAItemPart_Reward[13]["DeleteItem"][1]["Id"] = 3302809
	tNBAItemPart_Reward[13]["RewardItem"] = {}
	tNBAItemPart_Reward[13]["RewardItem"][1] = {}
	tNBAItemPart_Reward[13]["RewardItem"][1]["Id"] = 195195     --光效外套7非赠
	tNBAItemPart_Reward[13]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_Reward[13]["RewardEffect"]={}
	tNBAItemPart_Reward[13]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_Reward[13]["LogId"] = 12000689
	tNBAItemPart_Reward[13]["Talk"] = tNBAItemPart_Text["GetItem"][13]
	
--升级普通外套7赠
	tNBAItemPart_Reward[14] = {}
	tNBAItemPart_Reward[14]["DeleteItem"] = {}
	tNBAItemPart_Reward[14]["DeleteItem"][1] = {}
	tNBAItemPart_Reward[14]["DeleteItem"][1]["Id"] = 3302809
	tNBAItemPart_Reward[14]["RewardItem"] = {}
	tNBAItemPart_Reward[14]["RewardItem"][1] = {}
	tNBAItemPart_Reward[14]["RewardItem"][1]["Id"] = 195195     --光效外套7赠
	tNBAItemPart_Reward[14]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNBAItemPart_Reward[14]["RewardEffect"]={}
	tNBAItemPart_Reward[14]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_Reward[14]["LogId"] = 12000689
	tNBAItemPart_Reward[14]["Talk"] = tNBAItemPart_Text["GetItem"][14]
--升级普通外套8非赠
	tNBAItemPart_Reward[15] = {}
	tNBAItemPart_Reward[15]["DeleteItem"] = {}
	tNBAItemPart_Reward[15]["DeleteItem"][1] = {}
	tNBAItemPart_Reward[15]["DeleteItem"][1]["Id"] = 3302809
	tNBAItemPart_Reward[15]["RewardItem"] = {}
	tNBAItemPart_Reward[15]["RewardItem"][1] = {}
	tNBAItemPart_Reward[15]["RewardItem"][1]["Id"] = 195205     --光效外套8非赠
	tNBAItemPart_Reward[15]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_Reward[15]["RewardEffect"]={}
	tNBAItemPart_Reward[15]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_Reward[15]["LogId"] = 12000689
	tNBAItemPart_Reward[15]["Talk"] = tNBAItemPart_Text["GetItem"][15]
	
--升级普通外套8赠
	tNBAItemPart_Reward[16] = {}
	tNBAItemPart_Reward[16]["DeleteItem"] = {}
	tNBAItemPart_Reward[16]["DeleteItem"][1] = {}
	tNBAItemPart_Reward[16]["DeleteItem"][1]["Id"] = 3302809
	tNBAItemPart_Reward[16]["RewardItem"] = {}
	tNBAItemPart_Reward[16]["RewardItem"][1] = {}
	tNBAItemPart_Reward[16]["RewardItem"][1]["Id"] = 195205     --光效外套8赠
	tNBAItemPart_Reward[16]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNBAItemPart_Reward[16]["RewardEffect"]={}
	tNBAItemPart_Reward[16]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_Reward[16]["LogId"] = 12000689
	tNBAItemPart_Reward[16]["Talk"] = tNBAItemPart_Text["GetItem"][16]

--出售球星卡
	for i = 3302820,3302855 do
		tNBAItemPart_Reward[i] = {}
		tNBAItemPart_Reward[i]["RewardItem"] = {}
		tNBAItemPart_Reward[i]["RewardItem"][1] = {}
		tNBAItemPart_Reward[i]["RewardItem"][1]["Id"] = 3302804     --联盟金币
		tNBAItemPart_Reward[i]["RewardItem"][1]["Attr"] = "0 1"
		tNBAItemPart_Reward[i]["RewardEffect"]={}
		tNBAItemPart_Reward[i]["RewardEffect"]["Effect"]="angelwing"
		tNBAItemPart_Reward[i]["LogId"] = 12000689
		tNBAItemPart_Reward[i]["Talk"] = string.format(tNBAItemPart_Text["StarCard"]["SellSuccess"],tNBAItemPart_CardGold[i])
	end
--出售专属装备
	for j = 3302810,3302819 do
		tNBAItemPart_Reward[j] = {}
		tNBAItemPart_Reward[j]["DeleteItem"] = {}
		tNBAItemPart_Reward[j]["DeleteItem"][1] = {}
		tNBAItemPart_Reward[j]["DeleteItem"][1]["Id"] = j
		tNBAItemPart_Reward[j]["RewardItem"] = {}
		tNBAItemPart_Reward[j]["RewardItem"][1] = {}
		tNBAItemPart_Reward[j]["RewardItem"][1]["Id"] = 3302804     --联盟金币
		tNBAItemPart_Reward[j]["RewardItem"][1]["Attr"] = string.format("0 %d",tNBAItemPart_CardGold[j])
		tNBAItemPart_Reward[j]["RewardEffect"]={}
		tNBAItemPart_Reward[j]["RewardEffect"]["Effect"]="angelwing"
		tNBAItemPart_Reward[j]["LogId"] = 12000689
		tNBAItemPart_Reward[j]["Talk"] = string.format(tNBAItemPart_Text["StarCard"]["SellSuccess"],tNBAItemPart_CardGold[j])
	end
	
	tNBAItemPart_Reward["Extra"] = {}
	tNBAItemPart_Reward["Extra"][1] = {}
	tNBAItemPart_Reward["Extra"][1]["Num"] = 3
	tNBAItemPart_Reward["Extra"][1]["RewardItem"] = {}
	tNBAItemPart_Reward["Extra"][1]["RewardItem"][1] = {}
	tNBAItemPart_Reward["Extra"][1]["RewardItem"][1]["Id"] = 3308589     --VIP特训卡
	tNBAItemPart_Reward["Extra"][1]["RewardItem"][1]["Attr"] = "0 3"
	tNBAItemPart_Reward["Extra"][1]["RewardEffect"]={}
	tNBAItemPart_Reward["Extra"][1]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_Reward["Extra"][1]["LogId"] = 12000689
	
	tNBAItemPart_Reward["Extra"][2] = {}
	tNBAItemPart_Reward["Extra"][2]["Num"] = 1
	tNBAItemPart_Reward["Extra"][2]["RewardItem"] = {}
	tNBAItemPart_Reward["Extra"][2]["RewardItem"][1] = {}
	tNBAItemPart_Reward["Extra"][2]["RewardItem"][1]["Id"] = 3308590     --普通特训卡
	tNBAItemPart_Reward["Extra"][2]["RewardItem"][1]["Attr"] = "0 1"
	tNBAItemPart_Reward["Extra"][2]["RewardEffect"]={}
	tNBAItemPart_Reward["Extra"][2]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_Reward["Extra"][2]["LogId"] = 12000689

	
	tNBAItemPart_Reward[3302886] = {}
	tNBAItemPart_Reward[3302886]["DeleteItem"] = {}
	tNBAItemPart_Reward[3302886]["DeleteItem"][1] = {}
	tNBAItemPart_Reward[3302886]["DeleteItem"][1]["Id"] = 3302886
	tNBAItemPart_Reward[3302886]["RewardItem"] = {}
	tNBAItemPart_Reward[3302886]["RewardItem"][1] = {}
	tNBAItemPart_Reward[3302886]["RewardItem"][1]["Id"] = 3302804     --联盟金币
	tNBAItemPart_Reward[3302886]["RewardItem"][1]["Attr"] = "0 150"
	tNBAItemPart_Reward[3302886]["RewardEffect"]={}
	tNBAItemPart_Reward[3302886]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_Reward[3302886]["LogId"] = 12000689
	---新增一个骑马积分商店兑换的礼包  6000积分兑换
	tNBAItemPart_Reward[3303353] = {}
	tNBAItemPart_Reward[3303353]["DeleteItem"] = {}
	tNBAItemPart_Reward[3303353]["DeleteItem"][1] = {}
	tNBAItemPart_Reward[3303353]["DeleteItem"][1]["Id"] = 3303353
	tNBAItemPart_Reward[3303353]["RewardItem"] = {}
	tNBAItemPart_Reward[3303353]["RewardItem"][1] = {}
	tNBAItemPart_Reward[3303353]["RewardItem"][1]["Id"] = 3302804     --联盟金币
	tNBAItemPart_Reward[3303353]["RewardItem"][1]["Attr"] = "0 150"
	tNBAItemPart_Reward[3303353]["RewardEffect"]={}
	tNBAItemPart_Reward[3303353]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_Reward[3303353]["LogId"] = 12000689
	
local tNBAItemPart_CoatType = {}
	tNBAItemPart_CoatType[194655] = {}
	tNBAItemPart_CoatType[194655]["DeleteItem"] = {}
	tNBAItemPart_CoatType[194655]["DeleteItem"][1] = {}
	tNBAItemPart_CoatType[194655]["DeleteItem"][1]["Id"] = 3302885
	tNBAItemPart_CoatType[194655]["RewardItem"] = {}
	tNBAItemPart_CoatType[194655]["RewardItem"][1] = {}
	tNBAItemPart_CoatType[194655]["RewardItem"][1]["Id"] = 194655     --火箭史诗
	tNBAItemPart_CoatType[194655]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_CoatType[194655]["RewardEffect"]={}
	tNBAItemPart_CoatType[194655]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_CoatType[194655]["LogId"] = 12000689
	tNBAItemPart_CoatType[194655]["Talk"] = tNBAItemPart_Text["GetCoat"][194655]
	
	tNBAItemPart_CoatType[194665] = {}
	tNBAItemPart_CoatType[194665]["DeleteItem"] = {}
	tNBAItemPart_CoatType[194665]["DeleteItem"][1] = {}
	tNBAItemPart_CoatType[194665]["DeleteItem"][1]["Id"] = 3302885
	tNBAItemPart_CoatType[194665]["RewardItem"] = {}
	tNBAItemPart_CoatType[194665]["RewardItem"][1] = {}
	tNBAItemPart_CoatType[194665]["RewardItem"][1]["Id"] = 194665     --湖人王朝
	tNBAItemPart_CoatType[194665]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_CoatType[194665]["RewardEffect"]={}
	tNBAItemPart_CoatType[194665]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_CoatType[194665]["LogId"] = 12000689
	tNBAItemPart_CoatType[194665]["Talk"] = tNBAItemPart_Text["GetCoat"][194665]
	
	tNBAItemPart_CoatType[194675] = {}
	tNBAItemPart_CoatType[194675]["DeleteItem"] = {}
	tNBAItemPart_CoatType[194675]["DeleteItem"][1] = {}
	tNBAItemPart_CoatType[194675]["DeleteItem"][1]["Id"] = 3302885
	tNBAItemPart_CoatType[194675]["RewardItem"] = {}
	tNBAItemPart_CoatType[194675]["RewardItem"][1] = {}
	tNBAItemPart_CoatType[194675]["RewardItem"][1]["Id"] = 194675     --骑士神话
	tNBAItemPart_CoatType[194675]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_CoatType[194675]["RewardEffect"]={}
	tNBAItemPart_CoatType[194675]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_CoatType[194675]["LogId"] = 12000689
	tNBAItemPart_CoatType[194675]["Talk"] = tNBAItemPart_Text["GetCoat"][194675]
	
	tNBAItemPart_CoatType[194685] = {}
	tNBAItemPart_CoatType[194685]["DeleteItem"] = {}
	tNBAItemPart_CoatType[194685]["DeleteItem"][1] = {}
	tNBAItemPart_CoatType[194685]["DeleteItem"][1]["Id"] = 3302885
	tNBAItemPart_CoatType[194685]["RewardItem"] = {}
	tNBAItemPart_CoatType[194685]["RewardItem"][1] = {}
	tNBAItemPart_CoatType[194685]["RewardItem"][1]["Id"] = 194685     --勇士传奇
	tNBAItemPart_CoatType[194685]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_CoatType[194685]["RewardEffect"]={}
	tNBAItemPart_CoatType[194685]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_CoatType[194685]["LogId"] = 12000689
	tNBAItemPart_CoatType[194685]["Talk"] = tNBAItemPart_Text["GetCoat"][194685]
	-- 新增
	tNBAItemPart_CoatType[195085] = {}
	tNBAItemPart_CoatType[195085]["DeleteItem"] = {}
	tNBAItemPart_CoatType[195085]["DeleteItem"][1] = {}
	tNBAItemPart_CoatType[195085]["DeleteItem"][1]["Id"] = 3308807
	tNBAItemPart_CoatType[195085]["RewardItem"] = {}
	tNBAItemPart_CoatType[195085]["RewardItem"][1] = {}
	tNBAItemPart_CoatType[195085]["RewardItem"][1]["Id"] = 195085     --猛龙
	tNBAItemPart_CoatType[195085]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_CoatType[195085]["RewardEffect"]={}
	tNBAItemPart_CoatType[195085]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_CoatType[195085]["LogId"] = 12000689
	tNBAItemPart_CoatType[195085]["Talk"] = tNBAItemPart_Text["GetCoat"][195085]
	
	tNBAItemPart_CoatType[195095] = {}
	tNBAItemPart_CoatType[195095]["DeleteItem"] = {}
	tNBAItemPart_CoatType[195095]["DeleteItem"][1] = {}
	tNBAItemPart_CoatType[195095]["DeleteItem"][1]["Id"] = 3308807
	tNBAItemPart_CoatType[195095]["RewardItem"] = {}
	tNBAItemPart_CoatType[195095]["RewardItem"][1] = {}
	tNBAItemPart_CoatType[195095]["RewardItem"][1]["Id"] = 195095     --凯尔特人
	tNBAItemPart_CoatType[195095]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_CoatType[195095]["RewardEffect"]={}
	tNBAItemPart_CoatType[195095]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_CoatType[195095]["LogId"] = 12000689
	tNBAItemPart_CoatType[195095]["Talk"] = tNBAItemPart_Text["GetCoat"][195095]
	
	tNBAItemPart_CoatType[195105] = {}
	tNBAItemPart_CoatType[195105]["DeleteItem"] = {}
	tNBAItemPart_CoatType[195105]["DeleteItem"][1] = {}
	tNBAItemPart_CoatType[195105]["DeleteItem"][1]["Id"] = 3308807
	tNBAItemPart_CoatType[195105]["RewardItem"] = {}
	tNBAItemPart_CoatType[195105]["RewardItem"][1] = {}
	tNBAItemPart_CoatType[195105]["RewardItem"][1]["Id"] = 195105     --76人
	tNBAItemPart_CoatType[195105]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_CoatType[195105]["RewardEffect"]={}
	tNBAItemPart_CoatType[195105]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_CoatType[195105]["LogId"] = 12000689
	tNBAItemPart_CoatType[195105]["Talk"] = tNBAItemPart_Text["GetCoat"][195105]
	
	tNBAItemPart_CoatType[195115] = {}
	tNBAItemPart_CoatType[195115]["DeleteItem"] = {}
	tNBAItemPart_CoatType[195115]["DeleteItem"][1] = {}
	tNBAItemPart_CoatType[195115]["DeleteItem"][1]["Id"] = 3308807
	tNBAItemPart_CoatType[195115]["RewardItem"] = {}
	tNBAItemPart_CoatType[195115]["RewardItem"][1] = {}
	tNBAItemPart_CoatType[195115]["RewardItem"][1]["Id"] = 195115     --鹈鹕
	tNBAItemPart_CoatType[195115]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_CoatType[195115]["RewardEffect"]={}
	tNBAItemPart_CoatType[195115]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_CoatType[195115]["LogId"] = 12000689
	tNBAItemPart_CoatType[195115]["Talk"] = tNBAItemPart_Text["GetCoat"][195115]
	
	tNBAItemPart_CoatType[194695] = {}
	tNBAItemPart_CoatType[194695]["DeleteItem"] = {}
	tNBAItemPart_CoatType[194695]["DeleteItem"][1] = {}
	tNBAItemPart_CoatType[194695]["DeleteItem"][1]["Id"] = 3302887
	tNBAItemPart_CoatType[194695]["RewardItem"] = {}
	tNBAItemPart_CoatType[194695]["RewardItem"][1] = {}
	tNBAItemPart_CoatType[194695]["RewardItem"][1]["Id"] = 194695     --火箭史诗【签名版】
	tNBAItemPart_CoatType[194695]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_CoatType[194695]["RewardEffect"]={}
	tNBAItemPart_CoatType[194695]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_CoatType[194695]["LogId"] = 12000689
	tNBAItemPart_CoatType[194695]["Talk"] = tNBAItemPart_Text["GetCoat"][194695]
	
	
	tNBAItemPart_CoatType[194705] = {}
	tNBAItemPart_CoatType[194705]["DeleteItem"] = {}
	tNBAItemPart_CoatType[194705]["DeleteItem"][1] = {}
	tNBAItemPart_CoatType[194705]["DeleteItem"][1]["Id"] = 3302887
	tNBAItemPart_CoatType[194705]["RewardItem"] = {}
	tNBAItemPart_CoatType[194705]["RewardItem"][1] = {}
	tNBAItemPart_CoatType[194705]["RewardItem"][1]["Id"] = 194705     --湖人王朝【签名版】
	tNBAItemPart_CoatType[194705]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_CoatType[194705]["RewardEffect"]={}
	tNBAItemPart_CoatType[194705]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_CoatType[194705]["LogId"] = 12000689
	tNBAItemPart_CoatType[194705]["Talk"] = tNBAItemPart_Text["GetCoat"][194705]
	
	
	tNBAItemPart_CoatType[194715] = {}
	tNBAItemPart_CoatType[194715]["DeleteItem"] = {}
	tNBAItemPart_CoatType[194715]["DeleteItem"][1] = {}
	tNBAItemPart_CoatType[194715]["DeleteItem"][1]["Id"] = 3302887
	tNBAItemPart_CoatType[194715]["RewardItem"] = {}
	tNBAItemPart_CoatType[194715]["RewardItem"][1] = {}
	tNBAItemPart_CoatType[194715]["RewardItem"][1]["Id"] = 194715     --骑士神话【签名版】
	tNBAItemPart_CoatType[194715]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_CoatType[194715]["RewardEffect"]={}
	tNBAItemPart_CoatType[194715]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_CoatType[194715]["LogId"] = 12000689
	tNBAItemPart_CoatType[194715]["Talk"] = tNBAItemPart_Text["GetCoat"][194715]
	
	
	tNBAItemPart_CoatType[194725] = {}
	tNBAItemPart_CoatType[194725]["DeleteItem"] = {}
	tNBAItemPart_CoatType[194725]["DeleteItem"][1] = {}
	tNBAItemPart_CoatType[194725]["DeleteItem"][1]["Id"] = 3302887
	tNBAItemPart_CoatType[194725]["RewardItem"] = {}
	tNBAItemPart_CoatType[194725]["RewardItem"][1] = {}
	tNBAItemPart_CoatType[194725]["RewardItem"][1]["Id"] = 194725     --勇士传奇【签名版】
	tNBAItemPart_CoatType[194725]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_CoatType[194725]["RewardEffect"]={}
	tNBAItemPart_CoatType[194725]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_CoatType[194725]["LogId"] = 12000689
	tNBAItemPart_CoatType[194725]["Talk"] = tNBAItemPart_Text["GetCoat"][194725]
	-- 新增
	tNBAItemPart_CoatType[195175] = {}
	tNBAItemPart_CoatType[195175]["DeleteItem"] = {}
	tNBAItemPart_CoatType[195175]["DeleteItem"][1] = {}
	tNBAItemPart_CoatType[195175]["DeleteItem"][1]["Id"] = 3308808
	tNBAItemPart_CoatType[195175]["RewardItem"] = {}
	tNBAItemPart_CoatType[195175]["RewardItem"][1] = {}
	tNBAItemPart_CoatType[195175]["RewardItem"][1]["Id"] = 195175     --光效猛龙
	tNBAItemPart_CoatType[195175]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_CoatType[195175]["RewardEffect"]={}
	tNBAItemPart_CoatType[195175]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_CoatType[195175]["LogId"] = 12000689
	tNBAItemPart_CoatType[195175]["Talk"] = tNBAItemPart_Text["GetCoat"][195175]
	
	tNBAItemPart_CoatType[195185] = {}
	tNBAItemPart_CoatType[195185]["DeleteItem"] = {}
	tNBAItemPart_CoatType[195185]["DeleteItem"][1] = {}
	tNBAItemPart_CoatType[195185]["DeleteItem"][1]["Id"] = 3308808
	tNBAItemPart_CoatType[195185]["RewardItem"] = {}
	tNBAItemPart_CoatType[195185]["RewardItem"][1] = {}
	tNBAItemPart_CoatType[195185]["RewardItem"][1]["Id"] = 195185     --光效凯尔特人
	tNBAItemPart_CoatType[195185]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_CoatType[195185]["RewardEffect"]={}
	tNBAItemPart_CoatType[195185]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_CoatType[195185]["LogId"] = 12000689
	tNBAItemPart_CoatType[195185]["Talk"] = tNBAItemPart_Text["GetCoat"][195185]
	
	tNBAItemPart_CoatType[195195] = {}
	tNBAItemPart_CoatType[195195]["DeleteItem"] = {}
	tNBAItemPart_CoatType[195195]["DeleteItem"][1] = {}
	tNBAItemPart_CoatType[195195]["DeleteItem"][1]["Id"] = 3308808
	tNBAItemPart_CoatType[195195]["RewardItem"] = {}
	tNBAItemPart_CoatType[195195]["RewardItem"][1] = {}
	tNBAItemPart_CoatType[195195]["RewardItem"][1]["Id"] = 195195     --光效76人
	tNBAItemPart_CoatType[195195]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_CoatType[195195]["RewardEffect"]={}
	tNBAItemPart_CoatType[195195]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_CoatType[195195]["LogId"] = 12000689
	tNBAItemPart_CoatType[195195]["Talk"] = tNBAItemPart_Text["GetCoat"][195195]
	
	tNBAItemPart_CoatType[195205] = {}
	tNBAItemPart_CoatType[195205]["DeleteItem"] = {}
	tNBAItemPart_CoatType[195205]["DeleteItem"][1] = {}
	tNBAItemPart_CoatType[195205]["DeleteItem"][1]["Id"] = 3308808
	tNBAItemPart_CoatType[195205]["RewardItem"] = {}
	tNBAItemPart_CoatType[195205]["RewardItem"][1] = {}
	tNBAItemPart_CoatType[195205]["RewardItem"][1]["Id"] = 195205     --光效鹈鹕
	tNBAItemPart_CoatType[195205]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNBAItemPart_CoatType[195205]["RewardEffect"]={}
	tNBAItemPart_CoatType[195205]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_CoatType[195205]["LogId"] = 12000689
	tNBAItemPart_CoatType[195205]["Talk"] = tNBAItemPart_Text["GetCoat"][195205]
	
	
	
local tNBAItemPart_CoatTypeOne = {}
	tNBAItemPart_CoatTypeOne[194655] = {}
	tNBAItemPart_CoatTypeOne[194655]["DeleteItem"] = {}
	tNBAItemPart_CoatTypeOne[194655]["DeleteItem"][1] = {}
	tNBAItemPart_CoatTypeOne[194655]["DeleteItem"][1]["Id"] = 3302888
	tNBAItemPart_CoatTypeOne[194655]["RewardItem"] = {}
	tNBAItemPart_CoatTypeOne[194655]["RewardItem"][1] = {}
	tNBAItemPart_CoatTypeOne[194655]["RewardItem"][1]["Id"] = 194655     --火箭史诗
	tNBAItemPart_CoatTypeOne[194655]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNBAItemPart_CoatTypeOne[194655]["RewardEffect"]={}
	tNBAItemPart_CoatTypeOne[194655]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_CoatTypeOne[194655]["LogId"] = 12000689
	tNBAItemPart_CoatTypeOne[194655]["Talk"] = tNBAItemPart_Text["GetCoatOne"][194655]
	
	tNBAItemPart_CoatTypeOne[194665] = {}
	tNBAItemPart_CoatTypeOne[194665]["DeleteItem"] = {}
	tNBAItemPart_CoatTypeOne[194665]["DeleteItem"][1] = {}
	tNBAItemPart_CoatTypeOne[194665]["DeleteItem"][1]["Id"] = 3302888
	tNBAItemPart_CoatTypeOne[194665]["RewardItem"] = {}
	tNBAItemPart_CoatTypeOne[194665]["RewardItem"][1] = {}
	tNBAItemPart_CoatTypeOne[194665]["RewardItem"][1]["Id"] = 194665     --湖人王朝
	tNBAItemPart_CoatTypeOne[194665]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNBAItemPart_CoatTypeOne[194665]["RewardEffect"]={}
	tNBAItemPart_CoatTypeOne[194665]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_CoatTypeOne[194665]["LogId"] = 12000689
	tNBAItemPart_CoatTypeOne[194665]["Talk"] = tNBAItemPart_Text["GetCoatOne"][194665]
	
	tNBAItemPart_CoatTypeOne[194675] = {}
	tNBAItemPart_CoatTypeOne[194675]["DeleteItem"] = {}
	tNBAItemPart_CoatTypeOne[194675]["DeleteItem"][1] = {}
	tNBAItemPart_CoatTypeOne[194675]["DeleteItem"][1]["Id"] = 3302888
	tNBAItemPart_CoatTypeOne[194675]["RewardItem"] = {}
	tNBAItemPart_CoatTypeOne[194675]["RewardItem"][1] = {}
	tNBAItemPart_CoatTypeOne[194675]["RewardItem"][1]["Id"] = 194675     --骑士神话
	tNBAItemPart_CoatTypeOne[194675]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNBAItemPart_CoatTypeOne[194675]["RewardEffect"]={}
	tNBAItemPart_CoatTypeOne[194675]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_CoatTypeOne[194675]["LogId"] = 12000689
	tNBAItemPart_CoatTypeOne[194675]["Talk"] = tNBAItemPart_Text["GetCoatOne"][194675]
	
	tNBAItemPart_CoatTypeOne[194685] = {}
	tNBAItemPart_CoatTypeOne[194685]["DeleteItem"] = {}
	tNBAItemPart_CoatTypeOne[194685]["DeleteItem"][1] = {}
	tNBAItemPart_CoatTypeOne[194685]["DeleteItem"][1]["Id"] = 3302888
	tNBAItemPart_CoatTypeOne[194685]["RewardItem"] = {}
	tNBAItemPart_CoatTypeOne[194685]["RewardItem"][1] = {}
	tNBAItemPart_CoatTypeOne[194685]["RewardItem"][1]["Id"] = 194685     --勇士传奇
	tNBAItemPart_CoatTypeOne[194685]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNBAItemPart_CoatTypeOne[194685]["RewardEffect"]={}
	tNBAItemPart_CoatTypeOne[194685]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_CoatTypeOne[194685]["LogId"] = 12000689
	tNBAItemPart_CoatTypeOne[194685]["Talk"] = tNBAItemPart_Text["GetCoatOne"][194685]

	tNBAItemPart_CoatTypeOne[195085] = {}
	tNBAItemPart_CoatTypeOne[195085]["DeleteItem"] = {}
	tNBAItemPart_CoatTypeOne[195085]["DeleteItem"][1] = {}
	tNBAItemPart_CoatTypeOne[195085]["DeleteItem"][1]["Id"] = 3302888
	tNBAItemPart_CoatTypeOne[195085]["RewardItem"] = {}
	tNBAItemPart_CoatTypeOne[195085]["RewardItem"][1] = {}
	tNBAItemPart_CoatTypeOne[195085]["RewardItem"][1]["Id"] = 195085     --猛龙
	tNBAItemPart_CoatTypeOne[195085]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNBAItemPart_CoatTypeOne[195085]["RewardEffect"]={}
	tNBAItemPart_CoatTypeOne[195085]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_CoatTypeOne[195085]["LogId"] = 12000689
	tNBAItemPart_CoatTypeOne[195085]["Talk"] = tNBAItemPart_Text["GetCoatOne"][195085]
	
	tNBAItemPart_CoatTypeOne[195095] = {}
	tNBAItemPart_CoatTypeOne[195095]["DeleteItem"] = {}
	tNBAItemPart_CoatTypeOne[195095]["DeleteItem"][1] = {}
	tNBAItemPart_CoatTypeOne[195095]["DeleteItem"][1]["Id"] = 3302888
	tNBAItemPart_CoatTypeOne[195095]["RewardItem"] = {}
	tNBAItemPart_CoatTypeOne[195095]["RewardItem"][1] = {}
	tNBAItemPart_CoatTypeOne[195095]["RewardItem"][1]["Id"] = 195095     --凯尔特人
	tNBAItemPart_CoatTypeOne[195095]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNBAItemPart_CoatTypeOne[195095]["RewardEffect"]={}
	tNBAItemPart_CoatTypeOne[195095]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_CoatTypeOne[195095]["LogId"] = 12000689
	tNBAItemPart_CoatTypeOne[195095]["Talk"] = tNBAItemPart_Text["GetCoatOne"][195095]
	
	tNBAItemPart_CoatTypeOne[195105] = {}
	tNBAItemPart_CoatTypeOne[195105]["DeleteItem"] = {}
	tNBAItemPart_CoatTypeOne[195105]["DeleteItem"][1] = {}
	tNBAItemPart_CoatTypeOne[195105]["DeleteItem"][1]["Id"] = 3302888
	tNBAItemPart_CoatTypeOne[195105]["RewardItem"] = {}
	tNBAItemPart_CoatTypeOne[195105]["RewardItem"][1] = {}
	tNBAItemPart_CoatTypeOne[195105]["RewardItem"][1]["Id"] = 195105     --76人
	tNBAItemPart_CoatTypeOne[195105]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNBAItemPart_CoatTypeOne[195105]["RewardEffect"]={}
	tNBAItemPart_CoatTypeOne[195105]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_CoatTypeOne[195105]["LogId"] = 12000689
	tNBAItemPart_CoatTypeOne[195105]["Talk"] = tNBAItemPart_Text["GetCoatOne"][195105]
	
	tNBAItemPart_CoatTypeOne[195115] = {}
	tNBAItemPart_CoatTypeOne[195115]["DeleteItem"] = {}
	tNBAItemPart_CoatTypeOne[195115]["DeleteItem"][1] = {}
	tNBAItemPart_CoatTypeOne[195115]["DeleteItem"][1]["Id"] = 3302888
	tNBAItemPart_CoatTypeOne[195115]["RewardItem"] = {}
	tNBAItemPart_CoatTypeOne[195115]["RewardItem"][1] = {}
	tNBAItemPart_CoatTypeOne[195115]["RewardItem"][1]["Id"] = 195115     --鹈鹕
	tNBAItemPart_CoatTypeOne[195115]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNBAItemPart_CoatTypeOne[195115]["RewardEffect"]={}
	tNBAItemPart_CoatTypeOne[195115]["RewardEffect"]["Effect"]="angelwing"
	tNBAItemPart_CoatTypeOne[195115]["LogId"] = 12000689
	tNBAItemPart_CoatTypeOne[195115]["Talk"] = tNBAItemPart_Text["GetCoatOne"][195115]
	
	
local tNBAItemPart_ItemText = {}
-- 火箭队
	tNBAItemPart_ItemText[1] = {}
	tNBAItemPart_ItemText[1][1] = {3302820,1,1,1,1}
	tNBAItemPart_ItemText[1][2] = {3302825,3302836,3302838,3302827,1}
-- 勇士队
	tNBAItemPart_ItemText[2] = {}
	tNBAItemPart_ItemText[2][1] = {3302823,3302822,1,1,1}
	tNBAItemPart_ItemText[2][2] = {3302826,3302837,3302828,3302831,1}
-- 骑士队
	tNBAItemPart_ItemText[3] = {}
	tNBAItemPart_ItemText[3][1] = {3302821,1,1,1,1}
	tNBAItemPart_ItemText[3][2] = {3302839,3302835,3302833,3302834,1}
-- 凯尔特人
	tNBAItemPart_ItemText[4] = {}
	tNBAItemPart_ItemText[4][1] = {3302824,1,1,1,1}
	tNBAItemPart_ItemText[4][2] = {3302832,3302840,3302829,3302830,1}
	
	tNBAItemPart_ItemText[5] = {}
	tNBAItemPart_ItemText[5][1] = {3302841,3302843,3302845,3302847,3302849}
	tNBAItemPart_ItemText[5][2] = {3302842,3302844,3302846,3302848,3302850}
	
	tNBAItemPart_ItemText[6] = {}
	tNBAItemPart_ItemText[6][1] = {3302851,3302853,3302855,1,1}
	tNBAItemPart_ItemText[6][2] = {3302852,3302854,1,1,1}
	
--打开礼包获得的物品
local tNBAItemPart_Get = {}
--打开球星荣耀礼包
	for i =3302820,3302855 do
		tNBAItemPart_Get[i] = {}
		tNBAItemPart_Get[i]["RewardItem"] = {}
		tNBAItemPart_Get[i]["RewardItem"][1] = {}
		tNBAItemPart_Get[i]["RewardItem"][1]["Id"] = i
		tNBAItemPart_Get[i]["RewardItem"][1]["Attr"] = "0 1"
	end
		
		tNBAItemPart_Get[3302805] = {}
		tNBAItemPart_Get[3302805]["RewardItem"] = {}
		tNBAItemPart_Get[3302805]["RewardItem"][1] = {}
		tNBAItemPart_Get[3302805]["RewardItem"][1]["Id"] = 3302805
		tNBAItemPart_Get[3302805]["RewardItem"][1]["Attr"] = "0 1"
		

local tNBAItemPart_Coat = {}
	tNBAItemPart_Coat[1] = 203
	tNBAItemPart_Coat[2] = 204
	tNBAItemPart_Coat[3] = 205
	tNBAItemPart_Coat[4] = 206
	-- 新增四件光效
	tNBAItemPart_Coat[8] = 249
	tNBAItemPart_Coat[9] = 250
	tNBAItemPart_Coat[10] = 251
	tNBAItemPart_Coat[11] = 252
	
local tNBAItemPart_RewardTitle = {}
-- 灌篮高手
	tNBAItemPart_RewardTitle[2056]={}
	tNBAItemPart_RewardTitle[2056]["RewardTitle"] = {}
	tNBAItemPart_RewardTitle[2056]["RewardTitle"]["TitleType"] = 2056
	tNBAItemPart_RewardTitle[2056]["RewardTitle"]["TitleId"] = 2056
	tNBAItemPart_RewardTitle[2056]["RewardTitle"]["SaveTime"] = 0
	

local tNBAItemPart_Log = {}
	tNBAItemPart_Log["Log"] = {}
--玩家打开球星荣耀礼包的LOG
	tNBAItemPart_Log["Log"][1] = "0,0,3302801,1,12000689,1[1],%d,1"
--玩家打开全明星豪华礼包的LOG
	tNBAItemPart_Log["Log"][2] = "0,0,3302802,1,12000689,1[2],%d,1"
--玩家打开最有价值球星礼包的LOG
	tNBAItemPart_Log["Log"][3] = "0,0,3302803,1,12000689,1[2],%d,1"
--玩家打开巨星球衣（1天）礼包的LOG
	tNBAItemPart_Log["Log"][3302876] = "0,0,3302876,1,12000689,1,%d,1"
--玩家打开巨星球衣（7天）礼包的LOG
	tNBAItemPart_Log["Log"][3302877] = "0,0,3302877,1,12000689,1,%d,1"
--玩家打开巨星球衣（15天）礼包的LOG
	tNBAItemPart_Log["Log"][3302878] = "0,0,3302878,1,12000689,1,%d,1"
--玩家打开巨星球衣（30天）礼包的LOG
	tNBAItemPart_Log["Log"][3302879] = "0,0,3302879,1,12000689,1,%d,1"
--玩家打开巨星球衣（永久）礼包的LOG
	tNBAItemPart_Log["Log"][3302880] = "0,0,3302880,1,12000689,1,%d,1"

local tNBAItemPart_EmoneyLog = {}
	tNBAItemPart_EmoneyLog[1] = "350	20576	0	0	1	"  --打开球星荣耀礼包
	tNBAItemPart_EmoneyLog[2] = "350	20577	0	0	1	"  --打开全明星豪华礼包
	tNBAItemPart_EmoneyLog[3] = "350	20578	0	0	1	"  --打开最有价值球星礼包
----------------------------------逻辑部分---------------------------------------------
--打开球星荣耀礼包或者全明星豪华礼包
function NBAItemPart_UseGift(nItemId)
	local nSpace = tNBAItemPart_Data["Space"][nItemId]
--背包满
	if nSpace ~= nil then
		if not User_CheckLeftSpace(nSpace) then
			Sys_MsgBox(string.format (tNBAItemPart_Text["OpenPackFull"][4],nSpace))
			return
		end
	end
	if nItemId == 3302801 or nItemId == 3302802 then

--玩家每5秒只能打开一次
		local nNumItem = Get_CountItemType(nItemId,0)
		if nNumItem < 5 then
			if not Task_StcInterval(tNBAItemPart_Stc["EventData"][9],tNBAItemPart_Stc["DataType"][9],5,0) then
				User_TalkChannel2005(tNBAItemPart_Text["OpenPackFull"]["Rest"])
				return 
			end 
		end
		Task_SetStatistic(tNBAItemPart_Stc["EventData"][9],tNBAItemPart_Stc["DataType"][9],1,1)
		Task_SetStcTimestamp(tNBAItemPart_Stc["EventData"][9],tNBAItemPart_Stc["DataType"][9],0)

		if nNumItem < 5 then
			User_EffectAdd(tNBAItemPart_Effect[nItemId]["Self"],tNBAItemPart_Effect[nItemId]["Effect"])
			--延迟5S执行
			User_SetTimer(4,"NBAItemPart_AfterEffect</N>".. nItemId,0)
		else
			NBAItemPart_AfterEffect(nItemId,nUserId)
		end
		
		return
	end
--打开最有价值球星礼包
	if nItemId == 3302803 then
		if Item_ChkItem(nItemId)  and Item_DelItem(nItemId) then
--打开最有价值球星礼包必定获得一张SSR
			local nSuperNum = math.random(1,5)
			local nGetSuper = tNBAItemPart_Order[nSuperNum]
			RewardTemplate_UseItem(tNBAItemPart_Get[nGetSuper])
			--得到SSR
			local sName = Get_ItemtypeName(nGetSuper)
			local sUserName = Get_UserName()
			Sys_SystemBroadcast(string.format(tNBAItemPart_Text["GetSSR"],sUserName,sName))
			--给卡片的时候，判断是否有收集玩某个球队的全部卡片
			NBAItemPart_CollectAllCard()
			local sSuperLog = string.format(tNBAItemPart_Log["Log"][3],nGetSuper)
			Sys_SaveActionFestivalLog(sSuperLog)
			Sys_SaveEmoneyBuy(tNBAItemPart_EmoneyLog[3],nUserId)  --emoneylog
		end
	end
end

--滚筒结束之后，给予奖励
function NBAItemPart_AfterEffect(nItemId,nUserId)
	local nSpace = tNBAItemPart_Data["Space"][nItemId]
--背包满
	if nSpace ~= nil then
		if not User_CheckLeftSpace(nSpace,nUserId) then
			Sys_MsgBox(string.format (tNBAItemPart_Text["OpenPackFull"][4],nSpace),nil,nil,nUserId)
			return
		end
	end
--打开球星荣耀礼包
	if nItemId == 3302801 then
		if Item_ChkItem(nItemId,1,0,nUserId)  and Item_DelItem(nItemId,1,0,nUserId) then
			local flat,tItem= Probabil_RandomAward(tNBAItemPart_Random[3302801],1) 
			local nRandom = tItem[1]["tAward"][1]["Item_1"]
			if type(nRandom) == "table" then    --随机到卡片
				local nNum = math.random(nRandom[1],nRandom[2])
				--随机到的数字代表哪张卡片
				local nGetItem = tNBAItemPart_Order[nNum]
				--判断这张卡片是不是SSR，如果是，且玩家拥有，给专属装备
				if nGetItem >= 3302820 and nGetItem <= 3302824 then
					if NBAItemPart_CheckThisCard(nGetItem,nUserId) == 1 then
						RewardTemplate_Random(tNBAItemPart_Random[nGetItem],1,nUserId)
						return
					end
				end
				--给予卡片
				RewardTemplate_UseItem(tNBAItemPart_Get[nGetItem],nUserId)
				--如果是SSR
				if nGetItem >= 3302820 and nGetItem <= 3302824 then
					local sName = Get_ItemtypeName(nGetItem)
					local sUserName = Get_UserName(nUserId)
					Sys_SystemBroadcast(string.format(tNBAItemPart_Text["GetSSR"],sUserName,sName))
				end
				--给卡片的时候，判断是否有收集玩某个球队的全部卡片
				NBAItemPart_CollectAllCard(nUserId)
				local sLog_1 = string.format(tNBAItemPart_Log["Log"][1],nGetItem)
				Sys_SaveActionFestivalLog(sLog_1,nUserId)
				Sys_SaveEmoneyBuy(tNBAItemPart_EmoneyLog[1],nUserId)  --emoneylog
				return
			else
				--不是表
				RewardTemplate_UseItem(tNBAItemPart_Get[nRandom],nUserId)
				local sLog_2 = string.format(tNBAItemPart_Log["Log"][1],nRandom)
				Sys_SaveActionFestivalLog(sLog_2,nUserId)
				return
			end
		end
	end
--打开全明星豪华礼包
	if nItemId == 3302802 then
		if Item_ChkItem(nItemId,1,0,nUserId)  and Item_DelItem(nItemId,1,0,nUserId) then
--打开全明星豪华礼包必定获得一张SR
			local nSuperNum = math.random(6,21)
			local nGetSuper = tNBAItemPart_Order[nSuperNum]
			RewardTemplate_UseItem(tNBAItemPart_Get[nGetSuper],nUserId)
			local sSuperLog = string.format(tNBAItemPart_Log["Log"][2],nGetSuper)
			Sys_SaveActionFestivalLog(sSuperLog,nUserId)
			Sys_SaveEmoneyBuy(tNBAItemPart_EmoneyLog[2],nUserId)  --emoneylog
--剩余4次走随机
			for i = 1,4 do
			local flat,tItem= Probabil_RandomAward(tNBAItemPart_Random[3302801],1) 
			local nRandom = tItem[1]["tAward"][1]["Item_1"]
				if type(nRandom) == "table" then    --随机到卡片
					local nNum = math.random(nRandom[1],nRandom[2])
					local nGetItem = tNBAItemPart_Order[nNum]
				--判断这张卡片是不是SSR，如果是，且玩家拥有，给专属装备
					if nGetItem >= 3302820 and nGetItem <= 3302824 then
						if NBAItemPart_CheckThisCard(nGetItem,nUserId) == 1 then
							RewardTemplate_Random(tNBAItemPart_Random[nGetItem],1,nUserId)
						else
							RewardTemplate_UseItem(tNBAItemPart_Get[nGetItem],nUserId)
							--得到SSR
							local sName = Get_ItemtypeName(nGetItem)
							local sUserName = Get_UserName(nUserId)
							Sys_SystemBroadcast(string.format(tNBAItemPart_Text["GetSSR"],sUserName,sName))
							--给卡片的时候，判断是否有收集玩某个球队的全部卡片
							NBAItemPart_CollectAllCard(nUserId)
							local sLog_1 = string.format(tNBAItemPart_Log["Log"][2],nGetItem)
							Sys_SaveActionFestivalLog(sLog_1,nUserId)
						end
					else
						RewardTemplate_UseItem(tNBAItemPart_Get[nGetItem],nUserId)
						--给卡片的时候，判断是否有收集玩某个球队的全部卡片
						NBAItemPart_CollectAllCard(nUserId)
						local sLog_2 = string.format(tNBAItemPart_Log["Log"][2],nGetItem)
						Sys_SaveActionFestivalLog(sLog_2,nUserId)
					end
				else
					--不是表
					RewardTemplate_UseItem(tNBAItemPart_Get[nRandom],nUserId)
					local sLog_3 = string.format(tNBAItemPart_Log["Log"][2],nRandom)
					Sys_SaveActionFestivalLog(sLog_3,nUserId)
				end
			end
		end
	end
end

--玩家已经拥有SSR，不在给SSR，给该球星的专属装备
function NBAItemPart_CheckThisCard(nItemId,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	if Item_ChkItem(nItemId,1,0,nNowUserId) or (NBAItemPart_WhichCardHave(nItemId,nNowUserId) == 1) then
		return 1
	else
		return 0
	end
end


--使用球星徽章碎片
function NBAItemPart_UsePiece(nItemId)
--碎片数量不足10个
	if not Item_ChkMulItem(nItemId,nItemId,10) then
		Sys_MsgBox(tNBAItemPart_Text["NoEnough"]["Piece"])
		return
	end
	RewardTemplate_UseItem(tNBAItemPart_Reward[nItemId])
end

--使用红月亮洗赠液洗赠
function NBAItemPart_XiZeng(nItemId,nIndex)
--玩家身上没有光效外套赠
	if not Item_ChkMulItem(nItemId,nItemId,1,2,0,0,0) then
		Sys_MsgBox(tNBAItemPart_Text["XiZeng"]["fail"])
		return
	end
--删除玩家身上的光效外套赠
	if not Item_DelMulItem(nItemId,nItemId,1,2,0,0,0) then
		return
	end
--二次检查洗赠道具
	if not Item_ChkItem(nIndex) then
		return
	end
	RewardTemplate_UseItem(tNBAItemPart_Reward[nItemId])
end

--使用巨星签名升级普通外套
function NBAItemPart_GuangXiao(nItemId,nIndex,nType,nGetNum)
--玩家身上无普通外套
	if not Item_ChkMulItem(nItemId,nItemId,1,nType,0,0,0) then
		Sys_MsgBox(tNBAItemPart_Text["GuangXiao"]["fail"])
		return
	end
--删除玩家身上的普通外套
	if not Item_DelMulItem(nItemId,nItemId,1,nType,0,0,0) then
		return
	end
--二次检查光效的道具
	if not Item_ChkItem(nIndex) then
		return
	end
	RewardTemplate_UseItem(tNBAItemPart_Reward[nGetNum])
end


--玩家使用专属战靴和专属护腕
function NBAItemPart_Personal(nItemId)
--专属装备对应哪张球星卡
	local nNeedCardId = tNBAItemPart_CardId[nItemId]
--记录这张专属装备对应的二进制的哪个数字
	local nRepresent = tNBAItemPart_CardRepresent[nItemId]
--这个球星卡在花名册用哪个掩码记录
	local nReturnNum = NBAItemPart_WhichCardHave(nNeedCardId)
--失败、没有对应球星卡
	if not Item_ChkItem(nNeedCardId) and (nReturnNum == 2) then
		Sys_MsgBox(tNBAItemPart_Text["Equipment"]["fail"])
		return
	end
--失败，玩家已经装备这个专属装备
	local nEvent = tNBAItemPart_Stc["EventData"][6]
	local nType = tNBAItemPart_Stc["DataType"][6]
	local nValue = Get_UserStatisticValue(nEvent,nType,0)
	if Sys_ParseNumbersContain(tNBAItemPart_CardNum[nRepresent],nValue) then
		Sys_MsgBox(tNBAItemPart_Text["Equipment"]["Haveit"],"NBAItemPart_SellEquip</N>".. nItemId ,nil)
		return 
	end
--成功装备专属装备
	if Item_ChkItem(nItemId)  and Item_DelItem(nItemId) then
		Task_AddStatistic(nEvent,nType,tNBAItemPart_CardNum[nRepresent],1)
		Sys_MsgBox(string.format(tNBAItemPart_Text["Equipment"]["Success"],tNBAItemPart_EquilpStrength[nItemId]))
	end
	local nEvent_1 = {}
	local nType_1 = {}
	local nValue_1 = {}
	--获取玩家实时分数
	local nEvent_2 = tNBAItemPart_StcOne["EventData"][11]
	local nType_2 = tNBAItemPart_StcOne["DataType"][11]
	local nValue_2 = Get_UserStatisticValue(nEvent_2,nType_2,0)
	--获取玩家最高分数
	local nEvent_3 = tNBAItemPart_StcOne["EventData"][12]
	local nType_3 = tNBAItemPart_StcOne["DataType"][12]
	local nValue_3 = Get_UserStatisticValue(nEvent_3,nType_3,0)
	for i = 1,10 do
		nEvent_1[i] = tNBAItemPart_StcOne["EventData"][i]
		nType_1[i] = tNBAItemPart_StcOne["DataType"][i]
		nValue_1[i] = Get_UserStatisticValue(nEvent_1[i],nType_1[i],0)
--这张球星卡有上阵
		if nValue_1[i] == nNeedCardId then
			if i < 6 then
				--首发加全部的战力
				nValue_2 = nValue_2 + (tNBAItemPart_EquilpStrength[nItemId])
			else
				--替补给予一半的战力
				nValue_2 = nValue_2 + (tNBAItemPart_EquilpStrength[nItemId]/2)
			end
			Task_SetStatistic(nEvent_2,nType_2,nValue_2,1)
		end
	end
	--当前分数高于玩家的最高分数，刷新玩家的最高分数
	if nValue_2 > nValue_3 then
		Task_SetStatistic(nEvent_3,nType_3,nValue_2,1)
		ActivityOfNBA_RankingList()
		ActivityOfNBA_Broad()
	end
end

--玩家多余的专属装备卖掉转换成球队资金
function NBAItemPart_SellEquip(nItemId)
--二次检查玩家是否有专属装备
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItem(tNBAItemPart_Reward[nItemId])
end

--玩家花名册拥有球星卡对应二进制掩码
function NBAItemPart_WhichCardHave(nItemId,nUserId)
	local nNowUserId = nUserId or Get_UserId()
--这个物品对应哪个掩码
	local nStcNum = tNBAItemPart_ItemToStc[nItemId]
--这个物品在这个掩码中所对应的二进制的值
	local nBinaryNum = tNBAItemPart_BinaryNum[nItemId]
--每11个球星卡，用一个掩码来记录
	local nEvent = tNBAItemPart_Stc["EventData"][nStcNum]
	local nType = tNBAItemPart_Stc["DataType"][nStcNum]
	local nValue = Get_UserStatisticValue(nEvent,nType,nNowUserId)
--判断玩家花名册是否有这张球星卡
	if Sys_ParseNumbersContain(tNBAItemPart_CardNum[nBinaryNum],nValue) then
--返回1代表玩家花名册有该张球星卡
		return 1
	else
--返回2表示玩家花名册没有这张球星卡
		return 2
	end
end

--玩家花名册新增球星卡之后，加对应的掩码值
function NBAItemPart_AddCardStc(nItemId)
--这个物品对应哪个掩码
	local nStcNum = tNBAItemPart_ItemToStc[nItemId]
--这个物品在这个掩码中所对应的二进制的值
	local nBinaryNum = tNBAItemPart_BinaryNum[nItemId]
--每11个球星卡，用一个掩码来记录
	local nEvent = tNBAItemPart_Stc["EventData"][nStcNum]
	local nType = tNBAItemPart_Stc["DataType"][nStcNum]
	Task_AddStatistic(nEvent,nType,tNBAItemPart_CardNum[nBinaryNum],1)
end

--球星卡信息
function NBAItemPart_CardMessage(nItemId)
--该张球星卡是否有兄弟球星
	local nReturnOne = tNBAItemPart_CardBrother[nItemId]
	local nReturnOne = tNBAItemPart_CardBrother[nItemId]
	local sBrotherText = ""
--0 表示无兄弟球星
	if nReturnOne == 0 then
		sBrotherText = tNBAItemPart_Text["StarCard"]["NoBrother"]
	else
--判断玩家兄弟球星是否上场，陈莺那边写逻辑
		local nReturnTwo = ActivityOfNBA_AddExtra(nItemId)
		if nReturnTwo == 0 then
		--该球星卡有兄弟球星，但是没有上场
			sBrotherText = string.format(tNBAItemPart_Text["StarCard"]["HaveBrotherOut"],tNBAItemPart_BrotherName[nItemId])
		else
		--该球星卡有兄弟球星，而且有上场
			sBrotherText = string.format(tNBAItemPart_Text["StarCard"]["HaveBrotherUp"],tNBAItemPart_BrotherName[nItemId])
		end
	end
	local sDialogText2 = string.format(tNBAItemPart_Text["StarCard"]["Text113"],tNBAItemPart_CardStrength[nItemId],sBrotherText)
	--有名字的球星卡
	if nItemId >= 3302820 and nItemId <= 3302840 then
		Sys_DialogText(tNBAItemPart_CardTip[nItemId][1])
		Sys_DialogText(string.format (tNBAItemPart_CardTip[nItemId][2],tNBAItemPart_CardName[nItemId]))
	else
		Sys_DialogText(tNBAItemPart_CardName[nItemId])
	end
--拥有爱称的球星卡
	if nItemId >= 3302820 and nItemId <= 3302840 then
		local sDialogText1 = string.format(tNBAItemPart_Text["StarCard"]["Text111"],tNBAItemPart_NickName[nItemId])
		Sys_DialogText(sDialogText1)
	end
	Sys_DialogText(tNBAItemPart_Text["StarCard"]["Text112"])
	Sys_DialogText(sDialogText2)
--拥有专属装备的球星卡
	if nItemId >= 3302820 and nItemId <= 3302824 then
		local sEquipTextOne = ""
		local sEquipTextTwo = ""
		local nEvent = tNBAItemPart_Stc["EventData"][6]
		local nType = tNBAItemPart_Stc["DataType"][6]
		local nValue = Get_UserStatisticValue(nEvent,nType,0)
		local nShoes = tNBAItemPart_ShoesRepresent[nItemId]
		local nCuff = tNBAItemPart_CuffRepresent[nItemId]
--是否有专属战靴
		if Sys_ParseNumbersContain(tNBAItemPart_CardNum[nShoes],nValue) then
			sEquipTextOne = tNBAItemPart_Text["StarCard"]["Equip"]
		else
			sEquipTextOne = tNBAItemPart_Text["StarCard"]["NotEquip"]
		end
--是否有专属护腕
		if Sys_ParseNumbersContain(tNBAItemPart_CardNum[nCuff],nValue) then
			sEquipTextTwo = tNBAItemPart_Text["StarCard"]["Equip"]
		else
			sEquipTextTwo = tNBAItemPart_Text["StarCard"]["NotEquip"]
		end
		local sDialogText3 = string.format(tNBAItemPart_Text["StarCard"]["Text114"],tNBAItemPart_CardEquilpStrength[nItemId][1],sEquipTextOne,tNBAItemPart_CardEquilpStrength[nItemId][2],sEquipTextTwo)
		Sys_DialogText(sDialogText3)
	end
	Sys_DialogText(tNBAItemPart_Text["StarCard"]["Text112"])
	local sDialogText4 = string.format(tNBAItemPart_Text["StarCard"]["Text115"],tNBAItemPart_CardGold[nItemId])
	-- 额外奖励
	local nFlag = NBAItemPart_JudgeExtra(nItemId)
	if nFlag > 0 then
		local nAddNum = tNBAItemPart_Reward["Extra"][nFlag]["Num"]
		local sText = string.format(tNBAItemPart_Text["StarCard"]["Text117"][nFlag],nAddNum)
		sDialogText4 = string.format(tNBAItemPart_Text["StarCard"]["Text116"],tNBAItemPart_CardGold[nItemId],sText)
	end
	Sys_DialogText(sDialogText4)
--出售球星卡
	local sOptFunc = string.format("</F>NBAItemPart_OpenRoster</N>%d",3302875)
	--Sys_DialogOption(tNBAItemPart_Text["StarCard"]["Option111"],sOptFunc)
--收起球星卡
	Sys_DialogOption(tNBAItemPart_Text["StarCard"]["Option112"],sOptFunc)
	Sys_DialogItemFace(nItemId)
	Sys_DialogEnd()
end


--打开花名册
function NBAItemPart_OpenRoster(nItemId)
--玩家身上没有花名册
	if not Item_ChkItem(nItemId) then
		Sys_DialogText(tNBAItemPart_Text["StarCard"]["FindNpc"])
		local sOptFunc = string.format("</F>NpcPosition_PathFind</N>%d",20448)
		Sys_DialogOption(tNBAItemPart_Text["StarCard"]["ToFindNpc"],sOptFunc)
		Sys_DialogItemFace(nItemId)
		Sys_DialogEnd()
		return
	end
--活动过无法打开
	if not Sys_ChkFullTime(tNBAItemPart_Data["ActivityTime"]) then
		return
	end
--打开花名册
	NBAItemPart_Roster(nItemId)
end



--打开球衣礼包
function NBAItemPart_GetCoat(nItemId)
	if Item_ChkItem(nItemId)  and Item_DelItem(nItemId) then
		local flat,tItem= Probabil_RandomAward(tNBAItemPart_Random[3302876],1) 
		local nRandom = tItem[1]["tAward"][1]["Item_1"]
		local nNum = math.random(nRandom[1],nRandom[2])
		local nCoatId = tNBAItemPart_CoatOrder[nNum]
		local nLoop = tNBAItemPart_CoatLoop[nItemId]
		if Item_AddNewItem(nCoatId,nLoop) then
			Sys_SaveActionFestivalLog(string.format(tNBAItemPart_Log["Log"][nItemId],nCoatId))
			User_TalkChannel2005(string.format(tNBAItemPart_Text["GetCoat"]["Common"],Get_ItemtypeName(nCoatId)))
			User_EffectAdd("self",tNBAItemPart_CoatType[194695]["RewardEffect"]["Effect"])
		end
	end
end

--打开可选包二次确认
function NBAItemPart_OpenSecond(nItemId,nChoose)
	Sys_DialogText(tNBAItemPart_Text[3302885]["Text121"])
	local sOptFunc = string.format("</F>NBAItemPart_SureOpen</N>%d</N>%d",nItemId,nChoose)
	Sys_DialogOption(tNBAItemPart_Text[3302885]["Option121"],sOptFunc)
	--ys_DialogOption(tNBAItemPart_Text[3302885]["Option122"],"</F>NULL")
	Sys_DialogItemFace(nItemId)
	Sys_DialogEnd()
end

--确定选择的外套
function NBAItemPart_SureOpen(nItemId,nChoose)
--二次确认是否有这个礼包
	if not Item_ChkItem(nItemId) then
		return
	end
	if nItemId == 3302888 then
		RewardTemplate_UseItem(tNBAItemPart_CoatTypeOne[nChoose])
	else
		RewardTemplate_UseItem(tNBAItemPart_CoatType[nChoose])
	end
end

--花名册的主队白逻辑
function NBAItemPart_Roster(nItemId)
--判断玩家是否收集完，某个球队的所有卡片
	NBAItemPart_CollectAllCard()
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	local sText ={}
	local nEvent = {}
	local nType = {}
	local nValue = {}
	local tTab1 = {}  --正选球员
	local tTab2 = {}  --替补
	local sNum1 = {}
	local sNum2 = {}
	tItem[3302875]["Text111"] = string.format(tNBAItemPart_Text[3302875]["Text111"],sUserName)
	for i = 1,10 do
		sText[i] = tNBAItemPart_Text[3302875]["NoCard"]
		nEvent[i] = tNBAItemPart_StcOne["EventData"][i]
		nType[i] = tNBAItemPart_StcOne["DataType"][i]
		nValue[i] = Get_UserStatisticValue(nEvent[i],nType[i],nUserId)
		if nValue[i] ~= 0 then
			sText[i] = tNBAItemPart_Text[3302875][nValue[i]]
		end
		if i > 5 then
			local nPonstion = i - 5
			sNum1[i] = string.format(tNBAItemPart_Text[3302875]["Place"],nPonstion)
			table.insert(tTab2,sNum1[i]..sText[i])
		else
			sNum2[i] = string.format(tNBAItemPart_Text[3302875]["Place"],i)
			table.insert(tTab1,sNum2[i]..sText[i])
		end
	end
	--118,114,119,115,120
	local sText118 = Sys_Alignment(tTab1[1],0,tTab2[1],30) .. "\n"
	local sText114 = Sys_Alignment(tTab1[2],0,tTab2[2],30) .. "\n"
	local sText119 = Sys_Alignment(tTab1[3],0,tTab2[3],30) .. "\n"
	local sText115 = Sys_Alignment(tTab1[4],0,tTab2[4],30) .. "\n"
	local sText120 = Sys_Alignment(tTab1[5],0,tTab2[5],30) .. "\n"

	tItem[3302875]["Text118"] = sText118
	tItem[3302875]["Text114"] = sText114
	tItem[3302875]["Text119"] = sText119
	tItem[3302875]["Text115"] = sText115
	tItem[3302875]["Text120"] = sText120
	tItem[3302875]["Text116"] = string.format(tNBAItemPart_Text[3302875]["Text116"],Get_UserStatisticValue(tNBAItemPart_StcOne["EventData"][11],tNBAItemPart_StcOne["DataType"][11],nUserId))
	LinkItemGossipFunc_New(nItemId,"1-1")
end

--接1、收纳全部球星卡
function NBAItemPart_TakeInAll(nItemId)
	local Bool = true
--本次收纳了多少张球星卡
	local nAdd = 0
--记录玩家本次收纳共获得了多少球队资金
	local nGetGloden = 0
	local nEvent = tNBAItemPart_Stc["EventData"][7]
	local nType = tNBAItemPart_Stc["DataType"][7]
	
	--判断背包空间
	local nSpace = NBAItemPart_UserSpace()
	
	if nSpace > 0 and not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tNBAItemPart_Text["OpenPackFull"][5])
		return
	end
	local nAddNum1 = 0 --VIP特训卡
	local nAddNum2 = 0 --普通特训卡
	for i = 3302820,3302855 do
		if Item_ChkItem(i) then
			Bool = false
			local nReturn = NBAItemPart_WhichCardHave(i)
			--玩家身上有这张球星卡，但是花名册中已经有了
			if nReturn == 1 then
				local nNum = Get_CountItemType(i,0)
				--删除玩家身上的多余的球星卡
				if nNum ~= 0 then
					if Item_DelMulItem(i,i,nNum) then
						local tTemp = CommonFunc_Copy(tNBAItemPart_Reward[i])
						tTemp["RewardItem"][1]["Attr"] = string.format("0 %d",nNum*tNBAItemPart_CardGold[i])
						RewardTemplate_UseItem(tTemp)
						--额外给特训卡
						local nAddNum,nFlag = NBAItemPart_AddExtra(i,nNum)
						if nFlag == 1 then
							nAddNum1 = nAddNum1 + nAddNum
						elseif nFlag == 2 then
							nAddNum2 = nAddNum2 + nAddNum
						end
					end
				end
				nGetGloden = nGetGloden + (tNBAItemPart_CardGold[i]*nNum)
				--玩家身上有这家球星卡，而且花名册中也没有
			else
				--删除对应的球星卡，并增加对应的掩码值
				if Item_ChkItem(i)  and Item_DelItem(i) then
					NBAItemPart_AddCardStc(i)
					Task_AddStatistic(nEvent,nType,1,1)
					nAdd = nAdd + 1
				end
				local nNum_1 = Get_CountItemType(i,0)
				if nNum_1 ~= 0 then
					if Item_DelMulItem(i,i,nNum_1) then
						local tTemp_1 = CommonFunc_Copy(tNBAItemPart_Reward[i])
						tTemp_1["RewardItem"][1]["Attr"] = string.format("0 %d",nNum_1*tNBAItemPart_CardGold[i])
						RewardTemplate_UseItem(tTemp_1)
						--额外给特训卡
						local nAddNum,nFlag = NBAItemPart_AddExtra(i,nNum_1)
						if nFlag == 1 then
							nAddNum1 = nAddNum1 + nAddNum
						elseif nFlag == 2 then
							nAddNum2 = nAddNum2 + nAddNum
						end
					end
				end
				nGetGloden = nGetGloden + (tNBAItemPart_CardGold[i]*nNum_1)
			end
		end
	end
	
--玩家身上并没有任意一张球星卡
	if Bool == true then
		Sys_MsgBox(tNBAItemPart_Text["NoHaveCard"])
		return
	end
--玩家收集玩全部卡片
	local nCardNum = Get_UserStatisticValue(nEvent,nType,0)
	if nCardNum >= 36 then
		Sys_DialogText(tNBAItemPart_Text[3302875]["Text173"])
	end
	if nGetGloden == 0 then
		Sys_DialogText(string.format(tNBAItemPart_Text[3302875]["Text172"],nAdd))
	else
		
		
		if nAddNum1 <= 0 and nAddNum2 <= 0 then
			Sys_DialogText(string.format(tNBAItemPart_Text[3302875]["Text171"],nAdd,nGetGloden))
		else
			local sText = ""
			if nAddNum1 > 0 then
				sText = string.format(tNBAItemPart_Text[3302875]["Text175"],nAddNum1)
			end
			if nAddNum2 > 0 then
				sText = sText .. string.format(tNBAItemPart_Text[3302875]["Text176"],nAddNum2)
			end
			Sys_DialogText(string.format(tNBAItemPart_Text[3302875]["Text174"],nAdd,nGetGloden,sText))
		end
	end
	Sys_DialogOption(tNBAItemPart_Text[3302875]["Option171"],"</F>NULL")
	-- Sys_DialogOption(tNBAForgingProps_Text[3302875]["Forging"],"</F>NBAForgingProps_Chk</N>3302875")
	Sys_DialogItemFace(nItemId)
	Sys_DialogEnd()
end

----额外给特训卡
function NBAItemPart_AddExtra(nItemId,nNum)
	local nFlag = NBAItemPart_JudgeExtra(nItemId)
	if nFlag <= 0 then
		return 0,0
	end
	local tTab = CommonFunc_Copy(tNBAItemPart_Reward["Extra"][nFlag])
	local nAddNum = tNBAItemPart_Reward["Extra"][nFlag]["Num"] * nNum
	tTab["RewardItem"][1]["Attr"] = string.format("0 %d",nAddNum)
	RewardTemplate_UseItemAndMsg(tTab)
	return nAddNum,nFlag
end

---背包空间
function NBAItemPart_UserSpace()
	
	local nNum = 0  --标记有多少种卡
	local tTab = {}
	for i = 3302820,3302855 do
		if Item_ChkItem(i) then
			local nReturn = NBAItemPart_WhichCardHave(i)
			
			if nReturn == 1 then
				nNum = nNum + 1
				local nFlag = NBAItemPart_JudgeExtra(i)
				if nFlag == 0 then
					tTab[1] = {}
					table.insert(tTab[1],i)
				elseif nFlag == 1 then  --给三张
					tTab[2] = {}
					table.insert(tTab[2],i)
				else   --给一张
					tTab[3] = {}
					table.insert(tTab[3],i)
				end
			end
		end
	end
	local nSpace = 1 
	
	for k,v in pairs(tTab) do
		if k >= 2 then
			nSpace = nSpace + 1
		end
	end
	return (nSpace)
end

---判断是否有额外给奖励
function NBAItemPart_JudgeExtra(nItemId)
	local nNum = 0
	for i=1,#tNBAItemPart_RewardExtra do
		for a,b in pairs(tNBAItemPart_RewardExtra[i]) do
			if nItemId == b then
				nNum = i
			end
		end
	end
	return nNum
end




--接2、取出全部球星卡
function NBAItemPart_TakeOutAll(nItemId)
	local nEvent = tNBAItemPart_Stc["EventData"][7]
	local nType = tNBAItemPart_Stc["DataType"][7]
	local nValue = Get_UserStatisticValue(nEvent,nType,0)
--花名册中，没有卡片
	if nValue == 0 then
		Sys_MsgBox(tNBAItemPart_Text["GetItem"][11])
		return
	end
--背包满，无法取出全部球星卡
	if not User_CheckLeftSpace(nValue) then
		Sys_MsgBox(string.format(tNBAItemPart_Text["OpenPackFull"][2],nValue))
		return
	end
	for i = 3302820,3302855 do
		if (NBAItemPart_WhichCardHave(i) == 1) then
			NBAItemPart_DelCardStc(i)
			RewardTemplate_UseItem(tNBAItemPart_Get[i])
		end
	end
	User_TalkChannel2005(tNBAItemPart_Text["GetItem"][9])
end

--玩家取出卡片之后，对应的掩码值扣除
function NBAItemPart_DelCardStc(nItemId)
--这个物品对应哪个掩码
	local nStcNum = tNBAItemPart_ItemToStc[nItemId]
--这个物品在这个掩码中所对应的二进制的值
	local nBinaryNum = tNBAItemPart_BinaryNum[nItemId]
--每11个球星卡，用一个掩码来记录
	local nEvent = tNBAItemPart_Stc["EventData"][nStcNum]
	local nType = tNBAItemPart_Stc["DataType"][nStcNum]
	local nValue = Get_UserStatisticValue(nEvent,nType,0)
--花名册的卡片数量减一
	local nEvent_1 = tNBAItemPart_Stc["EventData"][7]
	local nType_1 = tNBAItemPart_Stc["DataType"][7]
	local nValue_1 = Get_UserStatisticValue(nEvent_1,nType_1,0)
	nValue_1 = nValue_1 - 1
	nValue = nValue - tNBAItemPart_CardNum[nBinaryNum]
	Task_SetStatistic(nEvent,nType,nValue,1)
	Task_SetStatistic(nEvent_1,nType_1,nValue_1,1)
end

--选择卡片
function NBAItemPart_ChooseCard(nItem,nNum,nType)
--判断玩家花名册是否有该球队的卡片
	if NBAItemPart_HaveTeamCard(nNum) == 0 then
	--没有该球队的任意球星卡
		Sys_MsgBox(tNBAItemPart_Text["GetItem"][10])
		return
	end
	if nType == 0 then
		Sys_DialogText(tNBAItemPart_Text[3302875]["Text131"][nNum])
	else
		Sys_DialogText(tNBAItemPart_Text[3302875]["Text137"][nNum])
	end
	Sys_DialogText(tNBAItemPart_Text[3302875]["Text132"])
	if nNum ~= 5 and nNum ~= 6 then
		Sys_DialogText(tNBAItemPart_Text[3302875]["Text133"])
	end

	local tTab = {}

	for i=1,5 do
		local sText = ""
		local tTabOne = {}
		local tItem = {}
		for a,b in pairs(tNBAItemPart_ItemText[nNum]) do
			local nItemId = b[i]
			local t1 = {}
			local sItem = tNBAItemPart_Text[3302875][nItemId]
			local nItemNum = string.len(sItem)
			t1[1] = sItem
			t1[2] = nItemNum
			if nItemId ~= 1 and (NBAItemPart_WhichCardHave(nItemId) == 1) then
				table.insert(tTab,nItemId)
			end
			if nItemId ~= 1 and (NBAItemPart_WhichCardHave(nItemId) == 2) then
				
				sItem = string.format ("<tip color=0xff717171 >%s</tip>",sItem)
				t1[1] = sItem
			end
			table.insert(tTabOne,t1)
		end
		local sText_1 = Sys_Alignment(tTabOne[1][1],5)
		local sText_2 = Sys_Alignment(tTabOne[2][1],24 - tTabOne[1][2])
		sText = sText_1..sText_2
		Sys_DialogText(sText.. "\n")
	end
	Sys_DialogText(tNBAItemPart_Text[3302875]["Text135"])
	if nType == 0 then
		for v,k in pairs(tTab) do
			local sOption1 = Get_ItemtypeName(k)
			local sOption2 = string.format(tNBAItemPart_Text[3302875]["Option131"],sOption1)
			Sys_DialogOption(sOption2,"</F>NBAItemPart_TakeOneCard</N>" .. k)
		end
	else
		local sOption3 = tNBAItemPart_Text[3302875]["Option126"]
		Sys_DialogOption(sOption3,"</F>NULL")
	end
	Sys_DialogOption(tNBAItemPart_Text[3302875]["Option132"],"</F>NBAItemPart_ReturnBack</N>" .. nItem)
	Sys_DialogItemFace(nItem)
	Sys_DialogEnd()
end

--返回上一层
function NBAItemPart_ReturnBack(nItem)
	--玩家背包是否有花名册
	if not Item_ChkItem(nItem) then
		return
	end
--活动过无法打开
	if not Sys_ChkFullTime(tNBAItemPart_Data["ActivityTime"]) then
		return
	end
	LinkItemGossipFunc_New(nItem,"1-2")
end


--判断玩家花名册是否有该球队的卡片
function NBAItemPart_HaveTeamCard(nNum)
	for i,v in pairs(tNBAItemPart_TeamMenber[nNum]) do
		if (NBAItemPart_WhichCardHave(v) == 1) then
			return 1
		end
	end
	return 0
end

--取出卡片之后的操作
function NBAItemPart_TakeOneCard(nItemId)
	local nEvent = tNBAItemPart_Stc["EventData"][7]
	local nType = tNBAItemPart_Stc["DataType"][7]
	local nValue = Get_UserStatisticValue(nEvent,nType,0)
--背包空间不足
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tNBAItemPart_Text["OpenPackFull"][3])
		return
	end
--删除花名册中，该物品对应的掩码以及背包空间减1，给奖励
	if (NBAItemPart_WhichCardHave(nItemId) == 1) then
		NBAItemPart_DelCardStc(nItemId)
		RewardTemplate_UseItem(tNBAItemPart_Get[nItemId])
	end
end

--判断玩家是否收集完某只球队的所有球星卡
function NBAItemPart_CollectAllCard(nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nEvent = tNBAItemPart_Stc["EventData"][5]
	local nType = tNBAItemPart_Stc["DataType"][5]
	local nValue = Get_UserStatisticValue(nEvent,nType,nNowUserId)
	--玩家实时的分数
	local nEvent_1 = tNBAItemPart_StcOne["EventData"][11]
	local nType_1 = tNBAItemPart_StcOne["DataType"][11]
	local nNowPoint_1 = Get_UserStatisticValue(nEvent_1,nType_1,nNowUserId)
	--玩家收集球队增加的实力评分
	local nAddPoint = 0
--每次都遍历一遍，玩家是否拥有某个球队的全部卡片
	for i = 1,6 do
		local nFlag = true
		for j,k in pairs(tNBAItemPart_TeamMenber[i]) do
			--判断玩家身上或者花名册是否有某个球队的全部卡片
			--没有全部拥有，如果玩家有打上掩码去除掉，跳出本轮循环
			if not Item_ChkItem(k,1,0,nNowUserId) and NBAItemPart_WhichCardHave(k,nNowUserId) == 2 then
				--判断玩家是否有相关掩码
				if Sys_ParseNumbersContain(tNBAItemPart_CardNum[i],nValue) then
					nValue = nValue - tNBAItemPart_CardNum[i]
					Task_SetStatistic(nEvent,nType,nValue,1,nNowUserId)
					--玩家身上有相关掩码，扣除对应的分数
					nNowPoint_1 = nNowPoint_1 - 500
					Task_SetStatistic(nEvent_1,nType_1,nNowPoint_1,1,nNowUserId)
				end
				nFlag = false
			end
		end
		if nFlag == true then
			--玩家拥有某个球队的全部球星卡，掩码还没有打上
			if not Sys_ParseNumbersContain(tNBAItemPart_CardNum[i],nValue) then
				nValue = nValue + tNBAItemPart_CardNum[i]
				Task_SetStatistic(nEvent,nType,nValue,1,nNowUserId)
				--打上掩码，加上对应的分数
				nAddPoint = nAddPoint + 500
			end
		end
	end

	--获取玩家实时的分数
	local nNowPoint = Get_UserStatisticValue(nEvent_1,nType_1,nNowUserId)
	--加上玩家收集球队的分数
	nNowPoint = nNowPoint + nAddPoint
	Task_SetStatistic(nEvent_1,nType_1,nNowPoint,1,nNowUserId)
	--获取玩家最高的分数
	local nEvent_2 = tNBAItemPart_StcOne["EventData"][12]
	local nType_2 = tNBAItemPart_StcOne["DataType"][12]
	local nMostPoint = Get_UserStatisticValue(nEvent_2,nType_2,nNowUserId)
	--当前分数高于玩家的最高分数，刷新玩家的最高分数
	if nNowPoint > nMostPoint then
		Task_SetStatistic(nEvent_2,nType_2,nNowPoint,1,nNowUserId)
		ActivityOfNBA_RankingList(nNowUserId)
		ActivityOfNBA_Broad()
	end
end

function NBAItemPart_CheckItemToCoat(nUserId)
	local nCoatType = 1 	--任务外套
	local nCoatNum = 0	--外套数量
	--检测光效巨星外套
	for i,v in pairs(tNBAItemPart_Coat) do
		--检测是否有某个ID的外套
		if User_ChkStorageCoat(nCoatType,v,nUserId) then

			nCoatNum = nCoatNum + 1
		end
	end
	if nCoatNum < 4 then
		if User_CheckTitle(tNBAItemPart_Data["Title"],tNBAItemPart_Data["Title"],nUserId) then
			User_DeleteTitle(tNBAItemPart_Data["Title"],tNBAItemPart_Data["Title"],nUserId)
			User_TalkChannel2005(tNBAItemPart_Text["Delete"],nUserId)
		end
		return
	end
		--玩家拥有4件光效巨星外套
	if not User_CheckTitle(tNBAItemPart_Data["Title"],tNBAItemPart_Data["Title"],nUserId) then
		local nEvent = tNBAItemPart_OnStc["EventData"]
		local nType = tNBAItemPart_OnStc["DataType"]
		Task_SetStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		RewardTemplate_UseItemAndMsg(tNBAItemPart_RewardTitle[2056],nUserId)
		User_TalkChannel2005(tNBAItemPart_Text["Reward"],nUserId)
	end
end

--玩家离开活动地图
function NBAItemPart_Leave()
	Sys_MsgBox(tNBAItemPart_Text["LeaveOrNot"],"NBAItemPart_SureLeave",nil)
end

--离开地图
function NBAItemPart_SureLeave()
	local nMapId = tNBAItemPart_Data["Map"]
	local nPosX = tNBAItemPart_Data["Cellx"]
	local nPosY = tNBAItemPart_Data["Celly"]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5,1)
end

function NBAItemPart_GotoNpc(nNum)
	--不在活动时间内
	if not Sys_ChkFullTime(tNBAItemPart_Data["ActivityTime"]) then
		return
	end
	local nUserMapId = Get_UserMapId(nUserId)
	if nUserMapId ~= 1002 then
		Sys_MsgBox(tNBAItemPart_Text["Not"])
		return
	end
	NpcPosition_PathFind(20448)
end
--玩家要是一张球星卡都木有
function NBAItemPart_NotAnyCard(nItemId)
	for i = 1,6 do
		if NBAItemPart_HaveTeamCard(i) ~= 0 then
			LinkItemGossipFunc_New(nItemId,"1-2")
			return
		end
	end
	LinkItemGossipFunc_New(nItemId,"1-5")
end

function NBAItemPart_Login()
	local nUserId = Get_UserId()
	local nEvent = tNBAItemPart_OnStc["EventData"]
	local nType = tNBAItemPart_OnStc["DataType"]
	if Task_ChkStcValue(nEvent,nType,"<",1,nUserId) then
		return
	end
	Sys_SetLuaTimer(3,"NBAItemPart_CheckItemToCoat</N>" .. nUserId,2,nUserId)
end
---------------------------------物品配置-----------------------------------------
-- 球星荣耀礼包
tItem[3302801] = tItem[3302801] or {}
tItem[3302801]["Function"] = function(nItemId,sItemName)
--活动过期删除物品
	if not Sys_ChkFullTime(tNBAItemPart_Data["ActivityTime"]) then
		if  Item_ChkItem(nItemId)then
			local nNum = Get_CountItemType(nItemId,0)
			Item_DelAllItemByType(nItemId)
			--删除物品给气力值
			local tTemp = CommonFunc_Copy(tNBAItemPart_Reward[nItemId])
			tTemp["RewardStrengthValue"]["Value"] = nNum*tNBAItemPart_Data[nItemId]
			RewardTemplate_UseItem(tTemp)
		end
	else
		NBAItemPart_UseGift(nItemId)
	end
end
tItem[3302802] = tItem[3302801] or {}
tItem[3302803] = tItem[3302801] or {}

--联盟金币
tItem[3302804] = tItem[3302804] or {}
tItem[3302804]["Function"] = function(nItemId,sItemName)
--活动过期删除物品
	if not Sys_ChkFullTime(tNBAItemPart_Data["ActivityTime"]) then
		if  Item_ChkItem(nItemId)then
			Item_DelAllItemByType(nItemId)
			Sys_MsgBox(string.format(tNBAItemPart_Text["OutTime"]["GiftOne"],Get_ItemtypeName(nItemId)))
		end
	else
--未过期，自动寻路找到NPC，陈莺那边的活动总NPC
		NpcPosition_PathFind(20474)
	end
end
tItem[3302806] = tItem[3302804] or {}
tItem[3302807] = tItem[3302804] or {}

--球星徽章碎片
tItem[3302805] = tItem[3302805] or {}
tItem[3302805]["Function"] = function(nItemId,sItemName)
--活动过期删除物品
	if not Sys_ChkFullTime(tNBAItemPart_Data["ActivityTime"]) then
		if  Item_ChkItem(nItemId)then
			Item_DelAllItemByType(nItemId)
			Sys_MsgBox(tNBAItemPart_Text["OutTime"]["GiftTwo"])
		end
	else
		NBAItemPart_UsePiece(nItemId)
	end
end

--红月亮洗赠液
tItemFace[3302808] = 449
tItem[3302808] = tItem[3302808] or {}
tItem[3302808]["Text1-1"] = {111}
tItem[3302808]["Text111"] = tNBAItemPart_Text[3302808]["Text111"] 
tItem[3302808]["tOption1-1"] = {111,112,113,114,115,116,117,118}
tItem[3302808]["Option111"] = tNBAItemPart_Text[3302808]["Option111"]
tItem[3302808]["OptionFunc111"]="NBAItemPart_XiZeng</N>194695</N>3302808"
tItem[3302808]["Option112"] = tNBAItemPart_Text[3302808]["Option112"]
tItem[3302808]["OptionFunc112"]="NBAItemPart_XiZeng</N>194705</N>3302808"
tItem[3302808]["Option113"] = tNBAItemPart_Text[3302808]["Option113"]
tItem[3302808]["OptionFunc113"]="NBAItemPart_XiZeng</N>194715</N>3302808"
tItem[3302808]["Option114"] = tNBAItemPart_Text[3302808]["Option114"]
tItem[3302808]["OptionFunc114"]="NBAItemPart_XiZeng</N>194725</N>3302808"
-- 新增
tItem[3302808]["Option115"] = tNBAItemPart_Text[3302808]["Option115"]
tItem[3302808]["OptionFunc115"]="NBAItemPart_XiZeng</N>195175</N>3302808"
tItem[3302808]["Option116"] = tNBAItemPart_Text[3302808]["Option116"]
tItem[3302808]["OptionFunc116"]="NBAItemPart_XiZeng</N>195185</N>3302808"
tItem[3302808]["Option117"] = tNBAItemPart_Text[3302808]["Option117"]
tItem[3302808]["OptionFunc117"]="NBAItemPart_XiZeng</N>195195</N>3302808"
tItem[3302808]["Option118"] = tNBAItemPart_Text[3302808]["Option118"]
tItem[3302808]["OptionFunc118"]="NBAItemPart_XiZeng</N>195205</N>3302808"
--巨星签名
tItemFace[3302809] = 450
tItem[3302809] = tItem[3302809] or {}
tItem[3302809]["Text1-1"] = {111}
tItem[3302809]["Text111"] = tNBAItemPart_Text[3302809]["Text111"] 
tItem[3302809]["tOption1-1"] = {111,112,113,114,115,116,117,118}
tItem[3302809]["Option111"] = tNBAItemPart_Text[3302809]["Option111"]
tItem[3302809]["OptionPoint111"]="1-2"
tItem[3302809]["Option112"] = tNBAItemPart_Text[3302809]["Option112"]
tItem[3302809]["OptionPoint112"]="1-3"
tItem[3302809]["Option113"] = tNBAItemPart_Text[3302809]["Option113"]
tItem[3302809]["OptionPoint113"]="1-4"
tItem[3302809]["Option114"] = tNBAItemPart_Text[3302809]["Option114"]
tItem[3302809]["OptionPoint114"]="1-5"
-- 新增
tItem[3302809]["Option115"] = tNBAItemPart_Text[3302809]["Option115"]
tItem[3302809]["OptionPoint115"]="1-6"
tItem[3302809]["Option116"] = tNBAItemPart_Text[3302809]["Option116"]
tItem[3302809]["OptionPoint116"]="1-7"
tItem[3302809]["Option117"] = tNBAItemPart_Text[3302809]["Option117"]
tItem[3302809]["OptionPoint117"]="1-8"
tItem[3302809]["Option118"] = tNBAItemPart_Text[3302809]["Option118"]
tItem[3302809]["OptionPoint118"]="1-9"

--升级外套1
tItem[3302809]["Text1-2"] = {121}
tItem[3302809]["Text121"] = tNBAItemPart_Text[3302809]["Text121"] 
tItem[3302809]["tOption1-2"] = {121,122}
tItem[3302809]["Option121"] = tNBAItemPart_Text[3302809]["Option121"]
--升级外套1非赠
tItem[3302809]["OptionFunc121"]="NBAItemPart_GuangXiao</N>194655</N>3302809</N>0</N>1"
tItem[3302809]["Option122"] = tNBAItemPart_Text[3302809]["Option122"]
--升级外套1赠
tItem[3302809]["OptionFunc122"]="NBAItemPart_GuangXiao</N>194655</N>3302809</N>2</N>2"
tItem[3302809]["Option123"] = tNBAItemPart_Text[3302809]["Option123"]

--升级外套2
tItem[3302809]["Text1-3"] = {131}
tItem[3302809]["Text131"] = tNBAItemPart_Text[3302809]["Text131"] 
tItem[3302809]["tOption1-3"] = {131,132}
tItem[3302809]["Option131"] = tNBAItemPart_Text[3302809]["Option131"]
--升级外套2非赠
tItem[3302809]["OptionFunc131"]="NBAItemPart_GuangXiao</N>194665</N>3302809</N>0</N>3"
tItem[3302809]["Option132"] = tNBAItemPart_Text[3302809]["Option132"]
--升级外套2赠
tItem[3302809]["OptionFunc132"]="NBAItemPart_GuangXiao</N>194665</N>3302809</N>2</N>4"
tItem[3302809]["Option133"] = tNBAItemPart_Text[3302809]["Option133"]

--升级外套3
tItem[3302809]["Text1-4"] = {141}
tItem[3302809]["Text141"] = tNBAItemPart_Text[3302809]["Text141"] 
tItem[3302809]["tOption1-4"] = {141,142}
tItem[3302809]["Option141"] = tNBAItemPart_Text[3302809]["Option141"]
--升级外套3非赠
tItem[3302809]["OptionFunc141"]="NBAItemPart_GuangXiao</N>194675</N>3302809</N>0</N>5"
tItem[3302809]["Option142"] = tNBAItemPart_Text[3302809]["Option142"]
--升级外套3赠
tItem[3302809]["OptionFunc142"]="NBAItemPart_GuangXiao</N>194675</N>3302809</N>2</N>6"
tItem[3302809]["Option143"] = tNBAItemPart_Text[3302809]["Option143"]

--升级外套4
tItem[3302809]["Text1-5"] = {151}
tItem[3302809]["Text151"] = tNBAItemPart_Text[3302809]["Text151"] 
tItem[3302809]["tOption1-5"] = {151,152}
tItem[3302809]["Option151"] = tNBAItemPart_Text[3302809]["Option151"]
--升级外套4非赠
tItem[3302809]["OptionFunc151"]="NBAItemPart_GuangXiao</N>194685</N>3302809</N>0</N>7"
tItem[3302809]["Option152"] = tNBAItemPart_Text[3302809]["Option152"]
--升级外套4赠
tItem[3302809]["OptionFunc152"]="NBAItemPart_GuangXiao</N>194685</N>3302809</N>2</N>8"
tItem[3302809]["Option153"] = tNBAItemPart_Text[3302809]["Option153"]

-----新增
tItem[3302809]["Text1-6"] = {161}
tItem[3302809]["Text161"] = tNBAItemPart_Text[3302809]["Text161"] 
tItem[3302809]["tOption1-6"] = {161,162}
tItem[3302809]["Option161"] = tNBAItemPart_Text[3302809]["Option161"]
--升级外套5非赠
tItem[3302809]["OptionFunc161"]="NBAItemPart_GuangXiao</N>195085</N>3302809</N>0</N>9"
tItem[3302809]["Option162"] = tNBAItemPart_Text[3302809]["Option162"]
--升级外套5赠
tItem[3302809]["OptionFunc162"]="NBAItemPart_GuangXiao</N>195085</N>3302809</N>2</N>10"
tItem[3302809]["Option163"] = tNBAItemPart_Text[3302809]["Option163"]

tItem[3302809]["Text1-7"] = {171}
tItem[3302809]["Text171"] = tNBAItemPart_Text[3302809]["Text171"] 
tItem[3302809]["tOption1-7"] = {171,172}
tItem[3302809]["Option171"] = tNBAItemPart_Text[3302809]["Option171"]
--升级外套6非赠
tItem[3302809]["OptionFunc171"]="NBAItemPart_GuangXiao</N>195095</N>3302809</N>0</N>11"
tItem[3302809]["Option172"] = tNBAItemPart_Text[3302809]["Option172"]
--升级外套6赠
tItem[3302809]["OptionFunc172"]="NBAItemPart_GuangXiao</N>195095</N>3302809</N>2</N>12"
tItem[3302809]["Option173"] = tNBAItemPart_Text[3302809]["Option173"]

tItem[3302809]["Text1-8"] = {181}
tItem[3302809]["Text181"] = tNBAItemPart_Text[3302809]["Text181"] 
tItem[3302809]["tOption1-8"] = {181,182}
tItem[3302809]["Option181"] = tNBAItemPart_Text[3302809]["Option181"]
--升级外套7非赠
tItem[3302809]["OptionFunc181"]="NBAItemPart_GuangXiao</N>195105</N>3302809</N>0</N>13"
tItem[3302809]["Option182"] = tNBAItemPart_Text[3302809]["Option182"]
--升级外套7赠
tItem[3302809]["OptionFunc182"]="NBAItemPart_GuangXiao</N>195105</N>3302809</N>2</N>14"
tItem[3302809]["Option183"] = tNBAItemPart_Text[3302809]["Option183"]

tItem[3302809]["Text1-9"] = {191}
tItem[3302809]["Text191"] = tNBAItemPart_Text[3302809]["Text191"] 
tItem[3302809]["tOption1-9"] = {191,192}
tItem[3302809]["Option191"] = tNBAItemPart_Text[3302809]["Option191"]
--升级外套8非赠
tItem[3302809]["OptionFunc191"]="NBAItemPart_GuangXiao</N>195115</N>3302809</N>0</N>15"
tItem[3302809]["Option192"] = tNBAItemPart_Text[3302809]["Option192"]
--升级外套8赠
tItem[3302809]["OptionFunc192"]="NBAItemPart_GuangXiao</N>195115</N>3302809</N>2</N>16"
tItem[3302809]["Option193"] = tNBAItemPart_Text[3302809]["Option193"]


--专属战靴和专属护腕
tItem[3302810] = tItem[3302810] or {}
tItem[3302810]["Function"] = function(nItemId,sItemName)
--活动过期删除物品
	if not Sys_ChkFullTime(tNBAItemPart_Data["ActivityTime"]) then
		if  Item_ChkItem(nItemId)then
			Item_DelAllItemByType(nItemId)
			User_TalkChannel2005(tNBAItemPart_Text["OutTime"]["GiftTwo"])
		end
	else
		NBAItemPart_Personal(nItemId)
	end
end
tItem[3302811] = tItem[3302810] or {}
tItem[3302812] = tItem[3302810] or {}
tItem[3302813] = tItem[3302810] or {}
tItem[3302814] = tItem[3302810] or {}
tItem[3302815] = tItem[3302810] or {}
tItem[3302816] = tItem[3302810] or {}
tItem[3302817] = tItem[3302810] or {}
tItem[3302818] = tItem[3302810] or {}
tItem[3302819] = tItem[3302810] or {}

--球星卡
tItem[3302820] = tItem[3302820] or {}
tItem[3302820]["Function"] = function(nItemId,sItemName)
--活动过期删除物品
	if not Sys_ChkFullTime(tNBAItemPart_Data["ActivityTime"]) then
		if  Item_ChkItem(nItemId)then
			Item_DelAllItemByType(nItemId)
			User_TalkChannel2005(tNBAItemPart_Text["OutTime"]["GiftThree"])
		end
	else
		NBAItemPart_CardMessage(nItemId)
	end
end
for i = 3302821,3302855 do
	tItem[i] = tItem[3302820] or {}
end
tItemFace[3302820] = 451
tItemFace[3302821] = 452
tItemFace[3302822] = 453
tItemFace[3302823] = 454
tItemFace[3302824] = 455
tItemFace[3302825] = 456
tItemFace[3302826] = 457
tItemFace[3302827] = 458
tItemFace[3302828] = 459
tItemFace[3302829] = 460
tItemFace[3302830] = 461
tItemFace[3302831] = 462
tItemFace[3302832] = 463
tItemFace[3302833] = 464
tItemFace[3302834] = 465
tItemFace[3302835] = 466
tItemFace[3302836] = 467
tItemFace[3302837] = 468
tItemFace[3302838] = 469
tItemFace[3302839] = 470
tItemFace[3302840] = 471
tItemFace[3302841] = 472
tItemFace[3302842] = 473
tItemFace[3302843] = 474
tItemFace[3302844] = 475
tItemFace[3302845] = 476
tItemFace[3302846] = 477
tItemFace[3302847] = 478
tItemFace[3302848] = 479
tItemFace[3302849] = 480
tItemFace[3302850] = 481
tItemFace[3302851] = 482
tItemFace[3302852] = 483
tItemFace[3302853] = 484
tItemFace[3302854] = 485
tItemFace[3302855] = 486


--巨星球衣
tItem[3302876] = tItem[3302876] or {}
tItem[3302876]["Function"] = function(nItemId,sItemName)
	NBAItemPart_GetCoat(nItemId)
end
tItem[3302877] = tItem[3302876] or {}
tItem[3302878] = tItem[3302876] or {}
tItem[3302879] = tItem[3302876] or {}
tItem[3302880] = tItem[3302876] or {}

--巨星球衣（永久）可选包
tItemFace[3302885] = 488
tItem[3302885] = tItem[3302885] or {}
tItem[3302885]["Text1-1"] = {111}
tItem[3302885]["Text111"] = tNBAItemPart_Text[3302885]["Text111"] 
tItem[3302885]["tOption1-1"] = {111,112,113,114}
tItem[3302885]["Option111"] = tNBAItemPart_Text[3302885]["Option111"]
tItem[3302885]["OptionFunc111"]="NBAItemPart_OpenSecond</N>3302885</N>194655"
tItem[3302885]["Option112"] = tNBAItemPart_Text[3302885]["Option112"]
tItem[3302885]["OptionFunc112"]="NBAItemPart_OpenSecond</N>3302885</N>194665"
tItem[3302885]["Option113"] = tNBAItemPart_Text[3302885]["Option113"]
tItem[3302885]["OptionFunc113"]="NBAItemPart_OpenSecond</N>3302885</N>194675"
tItem[3302885]["Option114"] = tNBAItemPart_Text[3302885]["Option114"]
tItem[3302885]["OptionFunc114"]="NBAItemPart_OpenSecond</N>3302885</N>194685"

tItemFace[3308807] = 1470
tItem[3308807] = tItem[3308807] or {}
tItem[3308807]["Text1-1"] = {111}
tItem[3308807]["Text111"] = tNBAItemPart_Text[3302885]["Text111"] 
tItem[3308807]["tOption1-1"] = {115,116,117,118}
tItem[3308807]["Option115"] = tNBAItemPart_Text[3302885]["Option115"]
tItem[3308807]["OptionFunc115"]="NBAItemPart_OpenSecond</N>3308807</N>195085"
tItem[3308807]["Option116"] = tNBAItemPart_Text[3302885]["Option116"]
tItem[3308807]["OptionFunc116"]="NBAItemPart_OpenSecond</N>3308807</N>195095"
tItem[3308807]["Option117"] = tNBAItemPart_Text[3302885]["Option117"]
tItem[3308807]["OptionFunc117"]="NBAItemPart_OpenSecond</N>3308807</N>195105"
tItem[3308807]["Option118"] = tNBAItemPart_Text[3302885]["Option118"]
tItem[3308807]["OptionFunc118"]="NBAItemPart_OpenSecond</N>3308807</N>195115"
--花名册
tItemFace[3302875] = 487
tItem[3302875] = tItem[3302875] or {}
tItem[3302875]["Function"] = function(nItemId,sItemName)
--活动过期删除物品
	if not Sys_ChkFullTime(tNBAItemPart_Data["ActivityTime"]) then
		if  Item_ChkItem(nItemId)then
			Item_DelAllItemByType(nItemId)
			User_TalkChannel2005(tNBAItemPart_Text["OutTime"]["GiftTwo"])
		end
	else
		NBAItemPart_Roster(nItemId)
	end
end
tItem[3302875]["Text1-1"] = {111,112,113,118,114,119,115,120,122,116,117}
tItem[3302875]["Text111"] = tNBAItemPart_Text[3302875]["Text111"]
tItem[3302875]["Text112"] = tNBAItemPart_Text[3302875]["Text112"]
tItem[3302875]["Text113"] = tNBAItemPart_Text[3302875]["Text113"]
tItem[3302875]["Text118"] = tNBAItemPart_Text[3302875]["Text118"]
tItem[3302875]["Text114"] = tNBAItemPart_Text[3302875]["Text114"]
tItem[3302875]["Text119"] = tNBAItemPart_Text[3302875]["Text119"]
tItem[3302875]["Text115"] = tNBAItemPart_Text[3302875]["Text115"]
tItem[3302875]["Text120"] = tNBAItemPart_Text[3302875]["Text120"]
tItem[3302875]["Text122"] = tNBAItemPart_Text[3302875]["Text112"]
tItem[3302875]["Text116"] = tNBAItemPart_Text[3302875]["Text116"]
tItem[3302875]["Text117"] = tNBAItemPart_Text[3302875]["Text117"]
tItem[3302875]["tOption1-1"] = {111,112,113,114}
tItem[3302875]["Option111"] = tNBAItemPart_Text[3302875]["Option111"]
tItem[3302875]["OptionFunc111"]="NBAItemPart_TakeInAll</N>3302875"
tItem[3302875]["Option112"] = tNBAItemPart_Text[3302875]["Option112"]
tItem[3302875]["OptionFunc112"]="NBAItemPart_TakeOutAll</N>3302875"
tItem[3302875]["Option113"] = tNBAItemPart_Text[3302875]["Option113"]
tItem[3302875]["OptionFunc113"]="NBAItemPart_NotAnyCard</N>3302875"
tItem[3302875]["Option114"] = tNBAItemPart_Text[3302875]["Option114"]
tItem[3302875]["OptionFunc114"]="NpcPosition_PathFind</N>20448"
-- tItem[3302875]["Option1015"] = tNBAForgingProps_Text[3302875]["Forging"]
-- tItem[3302875]["OptionFunc1015"]="NBAForgingProps_Chk</N>3302875"

--tItem[3302875]["OptionPoint114"]="1-4"
--tItem[3302875]["Option115"] = tNBAItemPart_Text[3302875]["Option115"]

--接3、取出球星卡
tItem[3302875]["Text1-2"] = {121}
tItem[3302875]["Text121"] = tNBAItemPart_Text[3302875]["Text121"]
tItem[3302875]["tOption1-2"] = {121,122,123,124,125,127}
--火箭队球星卡
tItem[3302875]["Option121"] = tNBAItemPart_Text[3302875]["Option121"]
tItem[3302875]["OptionFunc121"]="NBAItemPart_ChooseCard</N>3302875</N>1</N>0"
tItem[3302875]["OptionChkFunc121"] = function()
	if NBAItemPart_HaveTeamCard(1) == 0 then
		return false
	else
		return true
	end
end
--勇士队球星卡
tItem[3302875]["Option122"] = tNBAItemPart_Text[3302875]["Option122"]
tItem[3302875]["OptionFunc122"]="NBAItemPart_ChooseCard</N>3302875</N>2</N>0"
tItem[3302875]["OptionChkFunc122"] = function()
	if NBAItemPart_HaveTeamCard(2) == 0 then
		return false
	else
		return true
	end
end
--骑士队球星卡
tItem[3302875]["Option123"] = tNBAItemPart_Text[3302875]["Option123"]
tItem[3302875]["OptionFunc123"]="NBAItemPart_ChooseCard</N>3302875</N>3</N>0"
tItem[3302875]["OptionChkFunc123"] = function()
	if NBAItemPart_HaveTeamCard(3) == 0 then
		return false
	else
		return true
	end
end
--湖人队球星卡
tItem[3302875]["Option124"] = tNBAItemPart_Text[3302875]["Option124"]
tItem[3302875]["OptionFunc124"]="NBAItemPart_ChooseCard</N>3302875</N>4</N>0"
tItem[3302875]["OptionChkFunc124"] = function()
	if NBAItemPart_HaveTeamCard(4) == 0 then
		return false
	else
		return true
	end
end
--优秀球星卡
tItem[3302875]["Option125"] = tNBAItemPart_Text[3302875]["Option125"]
tItem[3302875]["OptionFunc125"]="NBAItemPart_ChooseCard</N>3302875</N>5</N>0"
tItem[3302875]["OptionChkFunc125"] = function()
	if NBAItemPart_HaveTeamCard(5) == 0 then
		return false
	else
		return true
	end
end
--普通球星卡
tItem[3302875]["Option127"] = tNBAItemPart_Text[3302875]["Option127"]
tItem[3302875]["OptionFunc127"]="NBAItemPart_ChooseCard</N>3302875</N>6</N>0"
tItem[3302875]["OptionChkFunc127"] = function()
	if NBAItemPart_HaveTeamCard(6) == 0 then
		return false
	else
		return true
	end
end

--接4、查看队内球星
tItem[3302875]["Text1-4"] = {141}
tItem[3302875]["Text141"] = tNBAItemPart_Text[3302875]["Text141"]
tItem[3302875]["tOption1-4"] = {141,142,143,144,145,147,146}
--火箭队球星卡
tItem[3302875]["Option141"] = tNBAItemPart_Text[3302875]["Option121"]
tItem[3302875]["OptionFunc141"]="NBAItemPart_ChooseCard</N>3302875</N>1</N>1"
tItem[3302875]["OptionChkFunc141"] = function()
	if NBAItemPart_HaveTeamCard(1) == 0 then
		return false
	else
		return true
	end
end
--勇士队球星卡
tItem[3302875]["Option142"] = tNBAItemPart_Text[3302875]["Option122"]
tItem[3302875]["OptionFunc142"]="NBAItemPart_ChooseCard</N>3302875</N>2</N>1"
tItem[3302875]["OptionChkFunc142"] = function()
	if NBAItemPart_HaveTeamCard(2) == 0 then
		return false
	else
		return true
	end
end
--骑士队球星卡
tItem[3302875]["Option143"] = tNBAItemPart_Text[3302875]["Option123"]
tItem[3302875]["OptionFunc143"]="NBAItemPart_ChooseCard</N>3302875</N>3</N>1"
tItem[3302875]["OptionChkFunc143"] = function()
	if NBAItemPart_HaveTeamCard(3) == 0 then
		return false
	else
		return true
	end
end
--凯尔特人队球星卡
tItem[3302875]["Option144"] = tNBAItemPart_Text[3302875]["Option124"]
tItem[3302875]["OptionFunc144"]="NBAItemPart_ChooseCard</N>3302875</N>4</N>1"
tItem[3302875]["OptionChkFunc144"] = function()
	if NBAItemPart_HaveTeamCard(4) == 0 then
		return false
	else
		return true
	end
end
--优秀球星卡
tItem[3302875]["Option145"] = tNBAItemPart_Text[3302875]["Option125"]
tItem[3302875]["OptionFunc145"]="NBAItemPart_ChooseCard</N>3302875</N>5</N>1"
tItem[3302875]["OptionChkFunc145"] = function()
	if NBAItemPart_HaveTeamCard(5) == 0 then
		return false
	else
		return true
	end
end
--普通球星卡
tItem[3302875]["Option147"] = tNBAItemPart_Text[3302875]["Option127"]
tItem[3302875]["OptionFunc147"]="NBAItemPart_ChooseCard</N>3302875</N>6</N>1"
tItem[3302875]["OptionChkFunc147"] = function()
	if NBAItemPart_HaveTeamCard(6) == 0 then
		return false
	else
		return true
	end
end
--合上花名册
tItem[3302875]["Option146"] = tNBAItemPart_Text[3302875]["Option126"]

--骑马商店礼包
tItem[3302886] = tItem[3302886] or {}
tItem[3302886]["Function"] = function(nItemId,sItemName)
--活动过期删除物品
	if not Sys_ChkFullTime(tNBAItemPart_Data["ActivityTime"]) then
		if  Item_ChkItem(nItemId)then
			Item_DelAllItemByType(nItemId)
			Sys_MsgBox(tNBAItemPart_Text["OutTime"]["GiftTwo"])
		end
		return
	end
	-- local nEvent = tNBAItemPart_Stc["EventData"][8]
	-- local nType = tNBAItemPart_Stc["DataType"][8]
	-- if Task_StcInterval(nEvent,nType,1,4) then  
		-- Task_SetStatistic(nEvent,nType,0,1)
		-- Task_SetStcTimestamp(nEvent,nType,0)
	-- end
	-- local nNum = Get_UserStatisticValue(nEvent,nType,0)
	-- if nNum > 0 then
		-- Sys_MsgBox(tNBAItemPart_Text["OpenOnlyOne"])
		-- return
	-- else
		-- Task_SetStatistic(nEvent,nType,1,1)
	RewardTemplate_UseItem(tNBAItemPart_Reward[nItemId])
end
tItem[3303353] = tItem[3303353] or {}
tItem[3303353]["Function"] = function(nItemId,sItemName)
--活动过期删除物品
	if not Sys_ChkFullTime(tNBAItemPart_Data["ActivityTime"]) then
		if  Item_ChkItem(nItemId)then
			Item_DelAllItemByType(nItemId)
			Sys_MsgBox(tNBAItemPart_Text["OutTime"]["GiftTwo"])
		end
		return
	end
	local nEvent = tNBAItemPart_Stc["EventData"][8]
	local nType = tNBAItemPart_Stc["DataType"][8]
	if Task_StcInterval(nEvent,nType,1,4) then  
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	local nNum = Get_UserStatisticValue(nEvent,nType,0)
	if nNum > 0 then
		Sys_MsgBox(tNBAItemPart_Text["OpenOnlyOne"])
		return
	else
		Task_SetStatistic(nEvent,nType,1,1)
		RewardTemplate_UseItem(tNBAItemPart_Reward[nItemId])
	end
end

--玩家无任何球星卡
tItem[3302875]["Text1-5"] = {151}
tItem[3302875]["Text151"] = tNBAItemPart_Text[3302875]["Text151"]
tItem[3302875]["tOption1-5"] = {151}
tItem[3302875]["Option151"] = tNBAItemPart_Text[3302875]["Option151"]

--光效巨星球衣（永久）可选包
tItemFace[3302887] = 489
tItem[3302887] = tItem[3302887] or {}
tItem[3302887]["Text1-1"] = {111}
tItem[3302887]["Text111"] = tNBAItemPart_Text[3302887]["Text111"] 
tItem[3302887]["tOption1-1"] = {111,112,113,114}
tItem[3302887]["Option111"] = tNBAItemPart_Text[3302887]["Option111"]
tItem[3302887]["OptionFunc111"]="NBAItemPart_OpenSecond</N>3302887</N>194695"
tItem[3302887]["Option112"] = tNBAItemPart_Text[3302887]["Option112"]
tItem[3302887]["OptionFunc112"]="NBAItemPart_OpenSecond</N>3302887</N>194705"
tItem[3302887]["Option113"] = tNBAItemPart_Text[3302887]["Option113"]
tItem[3302887]["OptionFunc113"]="NBAItemPart_OpenSecond</N>3302887</N>194715"
tItem[3302887]["Option114"] = tNBAItemPart_Text[3302887]["Option114"]
tItem[3302887]["OptionFunc114"]="NBAItemPart_OpenSecond</N>3302887</N>194725"
-- 新增
tItemFace[3308808] = 1471
tItem[3308808] = tItem[3308808] or {}
tItem[3308808]["Text1-1"] = {111}
tItem[3308808]["Text111"] = tNBAItemPart_Text[3302887]["Text111"] 
tItem[3308808]["tOption1-1"] = {115,116,117,118}
tItem[3308808]["Option115"] = tNBAItemPart_Text[3302887]["Option115"]
tItem[3308808]["OptionFunc115"]="NBAItemPart_OpenSecond</N>3308808</N>195175"
tItem[3308808]["Option116"] = tNBAItemPart_Text[3302887]["Option116"]
tItem[3308808]["OptionFunc116"]="NBAItemPart_OpenSecond</N>3308808</N>195185"
tItem[3308808]["Option117"] = tNBAItemPart_Text[3302887]["Option117"]
tItem[3308808]["OptionFunc117"]="NBAItemPart_OpenSecond</N>3308808</N>195195"
tItem[3308808]["Option118"] = tNBAItemPart_Text[3302887]["Option118"]
tItem[3308808]["OptionFunc118"]="NBAItemPart_OpenSecond</N>3308808</N>195205"

--巨星球衣（永久）可选包（赠）
tItemFace[3302888] = 488
tItem[3302888] = tItem[3302888] or {}
tItem[3302888]["Text1-1"] = {111}
tItem[3302888]["Text111"] = tNBAItemPart_Text[3302888]["Text111"] 
tItem[3302888]["tOption1-1"] = {111,112,113,114,115,116,117,118}
tItem[3302888]["Option111"] = tNBAItemPart_Text[3302888]["Option111"]
tItem[3302888]["OptionFunc111"]="NBAItemPart_OpenSecond</N>3302888</N>194655"
tItem[3302888]["Option112"] = tNBAItemPart_Text[3302888]["Option112"]
tItem[3302888]["OptionFunc112"]="NBAItemPart_OpenSecond</N>3302888</N>194665"
tItem[3302888]["Option113"] = tNBAItemPart_Text[3302888]["Option113"]
tItem[3302888]["OptionFunc113"]="NBAItemPart_OpenSecond</N>3302888</N>194675"
tItem[3302888]["Option114"] = tNBAItemPart_Text[3302888]["Option114"]
tItem[3302888]["OptionFunc114"]="NBAItemPart_OpenSecond</N>3302888</N>194685"
-- 新增
tItem[3302888]["Option115"] = tNBAItemPart_Text[3302888]["Option115"]
tItem[3302888]["OptionFunc115"]="NBAItemPart_OpenSecond</N>3302888</N>195085"
tItem[3302888]["Option116"] = tNBAItemPart_Text[3302888]["Option116"]
tItem[3302888]["OptionFunc116"]="NBAItemPart_OpenSecond</N>3302888</N>195095"
tItem[3302888]["Option117"] = tNBAItemPart_Text[3302888]["Option117"]
tItem[3302888]["OptionFunc117"]="NBAItemPart_OpenSecond</N>3302888</N>195105"
tItem[3302888]["Option118"] = tNBAItemPart_Text[3302888]["Option118"]
tItem[3302888]["OptionFunc118"]="NBAItemPart_OpenSecond</N>3302888</N>195115"
--------------------------------------------
-- 背包信头像
tItemFace[3302800] = 448

--------------------------------------------
--放进外套
tCheckInItemToCoatStorage["tFunction"] = tCheckInItemToCoatStorage["tFunction"] or {}
table.insert(tCheckInItemToCoatStorage["tFunction"],NBAItemPart_CheckItemToCoat)
--取出外套
tCheckOutItemFromCoatStorage["tFunction"] = tCheckOutItemFromCoatStorage["tFunction"] or {}
table.insert(tCheckOutItemFromCoatStorage["tFunction"],NBAItemPart_CheckItemToCoat)
--外套过时
tDelUserItemFromCoatStorage["tFunction"] = tDelUserItemFromCoatStorage["tFunction"] or {}
table.insert(tDelUserItemFromCoatStorage["tFunction"],NBAItemPart_CheckItemToCoat)

--------------------------------------陷阱配置------------------------------------
tTrap[1669] = tTrap[1669] or {}
tTrap[1669]["Function"] = function(nTrapId,nTrapType)
	NBAItemPart_Leave()
end
--------------------------------------上线触发------------------------------------

table.insert(tSystem_PlayLogin_Func,NBAItemPart_Login)
