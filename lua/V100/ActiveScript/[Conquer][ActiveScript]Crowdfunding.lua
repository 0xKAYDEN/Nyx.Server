------------------------------------------------------------------------------------
--Name:			170821[英文征服][活动脚本]家园赌桌众筹活动需求
--Purpose:		家园赌桌众筹活动需求
--Creator:		陈琳
--Created:		2017/08/21
------------------------------------------------------------------------------------
-- lua.ini
-- 40634

-- logid
-- 12000839

-- 掩码说明
-- stc(165,06) 背包信
-- stc(165,07) 记录购买众筹套餐情况
-- stc(165,25) 记录购买房屋升级令礼盒情况
-- stc(140,03) 表示六级房屋升级成功（不分方式）

-- npc
-- 22038 市场
-- 22039 双龙城
-- 22040 德州

-- itemtype
-- 3304777 家园赌桌天石全免凭证
-- 3304778 家园赌桌银两全免凭证
-- 3304779 德州管家天石全免凭证
-- 3304780 德州管家银两全免凭证
-- 3304806 家园赌桌众筹邀请函
-- 3304807 一级房屋升级令礼盒
-- 3304808 二级房屋升级令礼盒
-- 3304809 三级房屋升级令礼盒
-- 3304810 四级房屋升级令礼盒
-- 3304811 五级房屋升级令礼盒
-- 3304812 六级房屋升级令礼盒
-- 3304963 一级房屋升级令
-- 3304964 二级房屋升级令
-- 3304965 三级房屋升级令
-- 3304966 四级房屋升级令
-- 3304967 五级房屋升级令
-- 3304968 六级房屋升级令

-- 前缀	Crowdfunding_

--------------------------------------数据部分-------------------------------------------
local tCrowdfunding_Data = {}
	-- 活动页面
	tCrowdfunding_Data["Web"] = "http://event.co.99.com/CrowdFunding/client/"
	
	-- log
	tCrowdfunding_Data["Log"] = {}
	tCrowdfunding_Data["Log"]["Update"] = "0,0,%d,1,12000839,2[%d],0,0"
	tCrowdfunding_Data["Log"]["Ach"] = "0,0,0,0,12000839,2,%d,1"
	tCrowdfunding_Data["Log"]["Del"] = "0,0,%d,1,12000839,2,0,1"
	tCrowdfunding_Data["Log"][1] = {}
	tCrowdfunding_Data["Log"][1][1] = "10000,0,0,0,12000839,1[1][%d],3304777,1"
	tCrowdfunding_Data["Log"][1][2] = "0,0,1,1000000000,12000839,1[1][%d],3304778,1"
	tCrowdfunding_Data["Log"][2] = {}
	tCrowdfunding_Data["Log"][2][1] = "4000,0,0,0,12000839,1[2][%d],3304779,1"
	tCrowdfunding_Data["Log"][2][2] = "0,0,1,400000000,12000839,1[2][%d],3304780,1"
	
	-- EmoneyLog
	tCrowdfunding_Data["EmoneyLog"] = {}
	tCrowdfunding_Data["EmoneyLog"][1] = {}
	tCrowdfunding_Data["EmoneyLog"][1][1] = "350	20579	60	60	1	"
	tCrowdfunding_Data["EmoneyLog"][1][2] = "350	20581	180	180	1	"
	tCrowdfunding_Data["EmoneyLog"][1][3] = "350	20583	333	333	1	"
	tCrowdfunding_Data["EmoneyLog"][1][4] = "350	20585	513	513	1	"
	tCrowdfunding_Data["EmoneyLog"][1][5] = "350	20587	6513	6513	1	"
	tCrowdfunding_Data["EmoneyLog"][1][6] = "350	20589	11912	11912	1	"
	tCrowdfunding_Data["EmoneyLog"][2] = {}
	tCrowdfunding_Data["EmoneyLog"][2][1] = "350	20580	0	0	1	"
	tCrowdfunding_Data["EmoneyLog"][2][2] = "350	20582	0	0	1	"
	tCrowdfunding_Data["EmoneyLog"][2][3] = "350	20584	0	0	1	"
	tCrowdfunding_Data["EmoneyLog"][2][4] = "350	20586	0	0	1	"
	tCrowdfunding_Data["EmoneyLog"][2][5] = "350	20588	0	0	1	"
	tCrowdfunding_Data["EmoneyLog"][2][6] = "350	20590	0	0	1	"
	
	-- 光效
	tCrowdfunding_Data["Effect"] = {}
	tCrowdfunding_Data["Effect"]["OpenPack"] = "zf2-e128"
	tCrowdfunding_Data["Effect"]["Update"] = "zf2-e300"
	
	-- 需要的天石和银两
	tCrowdfunding_Data["Need"] = {}
	-- 家园赌桌 10000天石 10亿银两
	tCrowdfunding_Data["Need"][1] = {}
	tCrowdfunding_Data["Need"][1][1] = 10000
	tCrowdfunding_Data["Need"][1][2] = 1000000000
	-- 德州管家 4000天石 4亿银两
	tCrowdfunding_Data["Need"][2] = {}
	tCrowdfunding_Data["Need"][2][1] = 4000
	tCrowdfunding_Data["Need"][2][2] = 400000000
	
	tCrowdfunding_Data["House"] = {}
	tCrowdfunding_Data["House"][1] = {}
	tCrowdfunding_Data["House"][1][1] = 60
	tCrowdfunding_Data["House"][1][2] = 180
	tCrowdfunding_Data["House"][1][3] = 333
	tCrowdfunding_Data["House"][1][4] = 513
	tCrowdfunding_Data["House"][1][5] = 6513
	tCrowdfunding_Data["House"][1][6] = 11912
	tCrowdfunding_Data["House"][2] = {}
	tCrowdfunding_Data["House"][2][1] = 6000000
	tCrowdfunding_Data["House"][2][2] = 18000000
	tCrowdfunding_Data["House"][2][3] = 33000000
	tCrowdfunding_Data["House"][2][4] = 51000000
	tCrowdfunding_Data["House"][2][5] = 651000000
	tCrowdfunding_Data["House"][2][6] = 1200000000
	
	-- 寻路 坐标
	tCrowdfunding_Data["Location"] = {}
	tCrowdfunding_Data["Location"]["PosX"] = 243 -- 322
	tCrowdfunding_Data["Location"]["PosY"] = 232 -- 440
	tCrowdfunding_Data["Location"]["MapId"] = 1002
	tCrowdfunding_Data["Location"]["NpcId"] = 22205
	
	-- 掩码
	tCrowdfunding_Data["Stc"] = {}
	
	-- 表示玩家开垦了多少田地
	tCrowdfunding_Data["Stc"]["Land"] = {}
	tCrowdfunding_Data["Stc"]["Land"]["EventType"] = 140
	tCrowdfunding_Data["Stc"]["Land"]["DataType"] = 44
	
	-- stc(165,07) 记录购买众筹套餐情况
	tCrowdfunding_Data["Stc"]["Crowdfunding"] = {}
	tCrowdfunding_Data["Stc"]["Crowdfunding"]["EventType"] = 165
	tCrowdfunding_Data["Stc"]["Crowdfunding"]["DataType"] = 07
	
	-- stc(165,25) 记录购买房屋升级令礼盒情况
	tCrowdfunding_Data["Stc"]["House"] = {}
	tCrowdfunding_Data["Stc"]["House"]["EventType"] = 165
	tCrowdfunding_Data["Stc"]["House"]["DataType"] = 25
	
	-- stc(140,03) 表示六级房屋升级成功（不分方式）
	tCrowdfunding_Data["Stc"]["Six"] = {}
	tCrowdfunding_Data["Stc"]["Six"]["EventType"] = 140
	tCrowdfunding_Data["Stc"]["Six"]["DataType"] = 03
	tCrowdfunding_Data["Stc"]["Six"]["Complete"] = 1
	
	-- 返回市场的坐标
	tCrowdfunding_Data["Return"] = {}
	tCrowdfunding_Data["Return"]["CellX"] = 199
	tCrowdfunding_Data["Return"]["CellY"] = 92
	tCrowdfunding_Data["Return"]["MapId"] = 1036
	tCrowdfunding_Data["Return"]["BoundCX"] = 5
	tCrowdfunding_Data["Return"]["BoundCY"] = 5
	tCrowdfunding_Data["Return"]["AdminMapId"] = 3995
	
	-- 升级数据
	tCrowdfunding_Data["Update"] = {}
	
	-- 3304964 二级房屋升级令
	tCrowdfunding_Data["Update"][3304964] = {}
	tCrowdfunding_Data["Update"][3304964]["Lev"] = 2
	tCrowdfunding_Data["Update"][3304964]["MapDoc"] = 1099
	tCrowdfunding_Data["Update"][3304964]["PortalX"] = 51
	tCrowdfunding_Data["Update"][3304964]["PortalY"] = 80
	tCrowdfunding_Data["Update"][3304964]["CellX"] = {}
	tCrowdfunding_Data["Update"][3304964]["CellX"][1] = 34
	tCrowdfunding_Data["Update"][3304964]["CellY"] = {}
	tCrowdfunding_Data["Update"][3304964]["CellY"][1] = 39
	tCrowdfunding_Data["Update"][3304964]["AchPos"] = 10103
	
	-- 3304965 三级房屋升级令
	tCrowdfunding_Data["Update"][3304965] = {}
	tCrowdfunding_Data["Update"][3304965]["Lev"] = 3
	tCrowdfunding_Data["Update"][3304965]["MapDoc"] = 2080
	tCrowdfunding_Data["Update"][3304965]["PortalX"] = 64
	tCrowdfunding_Data["Update"][3304965]["PortalY"] = 54
	tCrowdfunding_Data["Update"][3304965]["CellX"] = {}
	tCrowdfunding_Data["Update"][3304965]["CellX"][1] = 55
	tCrowdfunding_Data["Update"][3304965]["CellX"][2] = 55
	tCrowdfunding_Data["Update"][3304965]["CellY"] = {}
	tCrowdfunding_Data["Update"][3304965]["CellY"][1] = 50
	tCrowdfunding_Data["Update"][3304965]["CellY"][2] = 47
	tCrowdfunding_Data["Update"][3304965]["AchPos"] = 10104
	
	-- 3304966 四级房屋升级令
	tCrowdfunding_Data["Update"][3304966] = {}
	tCrowdfunding_Data["Update"][3304966]["Lev"] = 4
	tCrowdfunding_Data["Update"][3304966]["MapDoc"] = 601
	tCrowdfunding_Data["Update"][3304966]["PortalX"] = 65
	tCrowdfunding_Data["Update"][3304966]["PortalY"] = 55
	tCrowdfunding_Data["Update"][3304966]["CellX"] = {}
	tCrowdfunding_Data["Update"][3304966]["CellX"][1] = 55
	tCrowdfunding_Data["Update"][3304966]["CellX"][2] = 55
	tCrowdfunding_Data["Update"][3304966]["CellY"] = {}
	tCrowdfunding_Data["Update"][3304966]["CellY"][1] = 50
	tCrowdfunding_Data["Update"][3304966]["CellY"][2] = 47
	tCrowdfunding_Data["Update"][3304966]["AchPos"] = 10105
	
	-- 3304967 五级房屋升级令
	tCrowdfunding_Data["Update"][3304967] = {}
	tCrowdfunding_Data["Update"][3304967]["Lev"] = 5
	tCrowdfunding_Data["Update"][3304967]["MapDoc"] = 3024
	tCrowdfunding_Data["Update"][3304967]["PortalX"] = 103
	tCrowdfunding_Data["Update"][3304967]["PortalY"] = 138
	tCrowdfunding_Data["Update"][3304967]["CellX"] = {}
	tCrowdfunding_Data["Update"][3304967]["CellX"][1] = 95
	tCrowdfunding_Data["Update"][3304967]["CellX"][2] = 102
	tCrowdfunding_Data["Update"][3304967]["CellY"] = {}
	tCrowdfunding_Data["Update"][3304967]["CellY"][1] = 97
	tCrowdfunding_Data["Update"][3304967]["CellY"][2] = 97
	tCrowdfunding_Data["Update"][3304967]["AchPos"] = 10122
	
	-- 3304968 六级房屋升级令
	tCrowdfunding_Data["Update"][3304968] = {}
	tCrowdfunding_Data["Update"][3304968]["Lev"] = 6
	tCrowdfunding_Data["Update"][3304968]["MapDoc"] = 3990
	tCrowdfunding_Data["Update"][3304968]["PortalX"] = 127
	tCrowdfunding_Data["Update"][3304968]["PortalY"] = 136
	tCrowdfunding_Data["Update"][3304968]["CellX"] = {}
	tCrowdfunding_Data["Update"][3304968]["CellX"][1] = 122
	tCrowdfunding_Data["Update"][3304968]["CellX"][2] = 135
	tCrowdfunding_Data["Update"][3304968]["CellX"][3] = 139
	tCrowdfunding_Data["Update"][3304968]["CellY"] = {}
	tCrowdfunding_Data["Update"][3304968]["CellY"][1] = 114
	tCrowdfunding_Data["Update"][3304968]["CellY"][2] = 114
	tCrowdfunding_Data["Update"][3304968]["CellY"][3] = 121

local tCrowdfunding_DynaNpc = {}
	tCrowdfunding_DynaNpc["Sort"] = 1
	tCrowdfunding_DynaNpc["Type"] = 2
	tCrowdfunding_DynaNpc["TypeShop"] = 32
	
	-- 升级房屋成功后创建的npc
	-- 管家，种植区园丁和第一个田地npc，揽月仙子和宠物区开通员
	-- 18955 18956 18957 18959 19035
	-- npcid，lookface，posx，posy，task0
	tCrowdfunding_DynaNpc["CreateNpcInfo"] = {}
	tCrowdfunding_DynaNpc["CreateNpcInfo"][1] = {18955,39230,127,131,97272700}
	tCrowdfunding_DynaNpc["CreateNpcInfo"][2] = {18956,39240,177,178,97272701}
	tCrowdfunding_DynaNpc["CreateNpcInfo"][3] = {18957,39250,96,31,97272702}
	tCrowdfunding_DynaNpc["CreateNpcInfo"][4] = {18959,39410,91,120,97272704}
	tCrowdfunding_DynaNpc["CreateNpcInfo"][5] = {19035,39420,183,177,97272705}
	tCrowdfunding_DynaNpc["CreateNpcInfo"][6] = {0,38656,118,115,8003010}			-- 美女管家物品箱

-- 二进制
local tCrowdfunding_Binary = {}
	for i = 1,6 do
		tCrowdfunding_Binary[i] = 2^(i-1)
	end
	
local tCrowdfunding_Reward = {}

	tCrowdfunding_Reward[1] = {}
	-- 3304777 家园赌桌天石全免凭证
	tCrowdfunding_Reward[1][1] = {}
	tCrowdfunding_Reward[1][1]["RewardItem"] = {}
	tCrowdfunding_Reward[1][1]["RewardItem"][1] = {}
	tCrowdfunding_Reward[1][1]["RewardItem"][1]["Id"] = 3304777
	tCrowdfunding_Reward[1][1]["RewardItem"][1]["Attr"] = "0 1"
	tCrowdfunding_Reward[1][1]["RewardEffect"] = {}
	tCrowdfunding_Reward[1][1]["RewardEffect"]["Effect"] = tCrowdfunding_Data["Effect"]["OpenPack"]
	tCrowdfunding_Reward[1][1]["EmoneyLog"] = "350	20575	10000	10000	1	"
	
	-- 3304778 家园赌桌银两全免凭证
	tCrowdfunding_Reward[1][2] = {}
	tCrowdfunding_Reward[1][2]["RewardItem"] = {}
	tCrowdfunding_Reward[1][2]["RewardItem"][1] = {}
	tCrowdfunding_Reward[1][2]["RewardItem"][1]["Id"] = 3304778
	tCrowdfunding_Reward[1][2]["RewardItem"][1]["Attr"] = "0 1"
	tCrowdfunding_Reward[1][2]["RewardEffect"] = {}
	tCrowdfunding_Reward[1][2]["RewardEffect"]["Effect"] = tCrowdfunding_Data["Effect"]["OpenPack"]
	tCrowdfunding_Reward[1][2]["EmoneyLog"] = "350	20576	0	0	1	"
	
	tCrowdfunding_Reward[2] = {}
	-- 3304779 德州管家天石全免凭证
	tCrowdfunding_Reward[2][1] = {}
	tCrowdfunding_Reward[2][1]["RewardItem"] = {}
	tCrowdfunding_Reward[2][1]["RewardItem"][1] = {}
	tCrowdfunding_Reward[2][1]["RewardItem"][1]["Id"] = 3304779
	tCrowdfunding_Reward[2][1]["RewardItem"][1]["Attr"] = "0 1"
	tCrowdfunding_Reward[2][1]["RewardEffect"] = {}
	tCrowdfunding_Reward[2][1]["RewardEffect"]["Effect"] = tCrowdfunding_Data["Effect"]["OpenPack"]
	tCrowdfunding_Reward[2][1]["EmoneyLog"] = "350	20577	4000	4000	1	"
	
	-- 3304780 德州管家银两全免凭证
	tCrowdfunding_Reward[2][2] = {}
	tCrowdfunding_Reward[2][2]["RewardItem"] = {}
	tCrowdfunding_Reward[2][2]["RewardItem"][1] = {}
	tCrowdfunding_Reward[2][2]["RewardItem"][1]["Id"] = 3304780
	tCrowdfunding_Reward[2][2]["RewardItem"][1]["Attr"] = "0 1"
	tCrowdfunding_Reward[2][2]["RewardEffect"] = {}
	tCrowdfunding_Reward[2][2]["RewardEffect"]["Effect"] = tCrowdfunding_Data["Effect"]["OpenPack"]
	tCrowdfunding_Reward[2][2]["EmoneyLog"] = "350	20578	0	0	1	"
	
	tCrowdfunding_Reward["UpdatePack"] = {}
	-- 买 3304807 一级房屋升级令礼盒
	tCrowdfunding_Reward["UpdatePack"][1] = {}
	tCrowdfunding_Reward["UpdatePack"][1]["RewardItem"] = {}
	tCrowdfunding_Reward["UpdatePack"][1]["RewardItem"][1] = {}
	tCrowdfunding_Reward["UpdatePack"][1]["RewardItem"][1]["Id"] = 3304807
	tCrowdfunding_Reward["UpdatePack"][1]["RewardItem"][1]["Attr"] = "0 1"
	tCrowdfunding_Reward["UpdatePack"][1]["RewardEffect"] = {}
	tCrowdfunding_Reward["UpdatePack"][1]["RewardEffect"]["Effect"] = tCrowdfunding_Data["Effect"]["OpenPack"]
	tCrowdfunding_Reward["UpdatePack"][1]["LogId"] = 12000839
	
	-- 买 3304808 二级房屋升级令礼盒
	tCrowdfunding_Reward["UpdatePack"][2] = {}
	tCrowdfunding_Reward["UpdatePack"][2]["RewardItem"] = {}
	tCrowdfunding_Reward["UpdatePack"][2]["RewardItem"][1] = {}
	tCrowdfunding_Reward["UpdatePack"][2]["RewardItem"][1]["Id"] = 3304808
	tCrowdfunding_Reward["UpdatePack"][2]["RewardItem"][1]["Attr"] = "0 1"
	tCrowdfunding_Reward["UpdatePack"][2]["RewardEffect"] = {}
	tCrowdfunding_Reward["UpdatePack"][2]["RewardEffect"]["Effect"] = tCrowdfunding_Data["Effect"]["OpenPack"]
	tCrowdfunding_Reward["UpdatePack"][2]["LogId"] = 12000839
	
	-- 买 3304809 三级房屋升级令礼盒
	tCrowdfunding_Reward["UpdatePack"][3] = {}
	tCrowdfunding_Reward["UpdatePack"][3]["RewardItem"] = {}
	tCrowdfunding_Reward["UpdatePack"][3]["RewardItem"][1] = {}
	tCrowdfunding_Reward["UpdatePack"][3]["RewardItem"][1]["Id"] = 3304809
	tCrowdfunding_Reward["UpdatePack"][3]["RewardItem"][1]["Attr"] = "0 1"
	tCrowdfunding_Reward["UpdatePack"][3]["RewardEffect"] = {}
	tCrowdfunding_Reward["UpdatePack"][3]["RewardEffect"]["Effect"] = tCrowdfunding_Data["Effect"]["OpenPack"]
	tCrowdfunding_Reward["UpdatePack"][3]["LogId"] = 12000839
	
	-- 买 3304810 四级房屋升级令礼盒
	tCrowdfunding_Reward["UpdatePack"][4] = {}
	tCrowdfunding_Reward["UpdatePack"][4]["RewardItem"] = {}
	tCrowdfunding_Reward["UpdatePack"][4]["RewardItem"][1] = {}
	tCrowdfunding_Reward["UpdatePack"][4]["RewardItem"][1]["Id"] = 3304810
	tCrowdfunding_Reward["UpdatePack"][4]["RewardItem"][1]["Attr"] = "0 1"
	tCrowdfunding_Reward["UpdatePack"][4]["RewardEffect"] = {}
	tCrowdfunding_Reward["UpdatePack"][4]["RewardEffect"]["Effect"] = tCrowdfunding_Data["Effect"]["OpenPack"]
	tCrowdfunding_Reward["UpdatePack"][4]["LogId"] = 12000839
	
	-- 买 3304811 五级房屋升级令礼盒
	tCrowdfunding_Reward["UpdatePack"][5] = {}
	tCrowdfunding_Reward["UpdatePack"][5]["RewardItem"] = {}
	tCrowdfunding_Reward["UpdatePack"][5]["RewardItem"][1] = {}
	tCrowdfunding_Reward["UpdatePack"][5]["RewardItem"][1]["Id"] = 3304811
	tCrowdfunding_Reward["UpdatePack"][5]["RewardItem"][1]["Attr"] = "0 1"
	tCrowdfunding_Reward["UpdatePack"][5]["RewardEffect"] = {}
	tCrowdfunding_Reward["UpdatePack"][5]["RewardEffect"]["Effect"] = tCrowdfunding_Data["Effect"]["OpenPack"]
	tCrowdfunding_Reward["UpdatePack"][5]["LogId"] = 12000839
	
	-- 买 3304812 六级房屋升级令礼盒
	tCrowdfunding_Reward["UpdatePack"][6] = {}
	tCrowdfunding_Reward["UpdatePack"][6]["RewardItem"] = {}
	tCrowdfunding_Reward["UpdatePack"][6]["RewardItem"][1] = {}
	tCrowdfunding_Reward["UpdatePack"][6]["RewardItem"][1]["Id"] = 3304812
	tCrowdfunding_Reward["UpdatePack"][6]["RewardItem"][1]["Attr"] = "0 1"
	tCrowdfunding_Reward["UpdatePack"][6]["RewardEffect"] = {}
	tCrowdfunding_Reward["UpdatePack"][6]["RewardEffect"]["Effect"] = tCrowdfunding_Data["Effect"]["OpenPack"]
	tCrowdfunding_Reward["UpdatePack"][6]["LogId"] = 12000839
	
	-- 3304807 一级房屋升级令礼盒
	tCrowdfunding_Reward[3304807] = {}
	tCrowdfunding_Reward[3304807]["RewardItem"] = {}
	tCrowdfunding_Reward[3304807]["RewardItem"][1] = {}
	tCrowdfunding_Reward[3304807]["RewardItem"][1]["Id"] = 3304963
	tCrowdfunding_Reward[3304807]["RewardItem"][1]["Attr"] = "0 1"
	tCrowdfunding_Reward[3304807]["DeleteItem"] = {}
	tCrowdfunding_Reward[3304807]["DeleteItem"][1] = {}
	tCrowdfunding_Reward[3304807]["DeleteItem"][1]["Id"] = 3304807
	tCrowdfunding_Reward[3304807]["LogId"] = 12000839
	tCrowdfunding_Reward[3304807]["RewardEffect"] = {}
	tCrowdfunding_Reward[3304807]["RewardEffect"]["Effect"] = tCrowdfunding_Data["Effect"]["OpenPack"]
	
	-- 3304808 二级房屋升级令礼盒
	tCrowdfunding_Reward[3304808] = {}
	tCrowdfunding_Reward[3304808]["RewardItem"] = {}
	tCrowdfunding_Reward[3304808]["RewardItem"][1] = {}
	tCrowdfunding_Reward[3304808]["RewardItem"][1]["Id"] = 3304963
	tCrowdfunding_Reward[3304808]["RewardItem"][1]["Attr"] = "0 1"
	tCrowdfunding_Reward[3304808]["RewardItem"][2] = {}
	tCrowdfunding_Reward[3304808]["RewardItem"][2]["Id"] = 3304964
	tCrowdfunding_Reward[3304808]["RewardItem"][2]["Attr"] = "0 1"
	tCrowdfunding_Reward[3304808]["DeleteItem"] = {}
	tCrowdfunding_Reward[3304808]["DeleteItem"][1] = {}
	tCrowdfunding_Reward[3304808]["DeleteItem"][1]["Id"] = 3304808
	tCrowdfunding_Reward[3304808]["LogId"] = 12000839
	tCrowdfunding_Reward[3304808]["RewardEffect"] = {}
	tCrowdfunding_Reward[3304808]["RewardEffect"]["Effect"] = tCrowdfunding_Data["Effect"]["OpenPack"]
	
	-- 3304809 三级房屋升级令礼盒
	tCrowdfunding_Reward[3304809] = {}
	tCrowdfunding_Reward[3304809]["RewardItem"] = {}
	tCrowdfunding_Reward[3304809]["RewardItem"][1] = {}
	tCrowdfunding_Reward[3304809]["RewardItem"][1]["Id"] = 3304963
	tCrowdfunding_Reward[3304809]["RewardItem"][1]["Attr"] = "0 1"
	tCrowdfunding_Reward[3304809]["RewardItem"][2] = {}
	tCrowdfunding_Reward[3304809]["RewardItem"][2]["Id"] = 3304964
	tCrowdfunding_Reward[3304809]["RewardItem"][2]["Attr"] = "0 1"
	tCrowdfunding_Reward[3304809]["RewardItem"][3] = {}
	tCrowdfunding_Reward[3304809]["RewardItem"][3]["Id"] = 3304965
	tCrowdfunding_Reward[3304809]["RewardItem"][3]["Attr"] = "0 1"
	tCrowdfunding_Reward[3304809]["DeleteItem"] = {}
	tCrowdfunding_Reward[3304809]["DeleteItem"][1] = {}
	tCrowdfunding_Reward[3304809]["DeleteItem"][1]["Id"] = 3304809
	tCrowdfunding_Reward[3304809]["LogId"] = 12000839
	tCrowdfunding_Reward[3304809]["RewardEffect"] = {}
	tCrowdfunding_Reward[3304809]["RewardEffect"]["Effect"] = tCrowdfunding_Data["Effect"]["OpenPack"]
	
	-- 3304810 四级房屋升级令礼盒
	tCrowdfunding_Reward[3304810] = {}
	tCrowdfunding_Reward[3304810]["RewardItem"] = {}
	tCrowdfunding_Reward[3304810]["RewardItem"][1] = {}
	tCrowdfunding_Reward[3304810]["RewardItem"][1]["Id"] = 3304963
	tCrowdfunding_Reward[3304810]["RewardItem"][1]["Attr"] = "0 1"
	tCrowdfunding_Reward[3304810]["RewardItem"][2] = {}
	tCrowdfunding_Reward[3304810]["RewardItem"][2]["Id"] = 3304964
	tCrowdfunding_Reward[3304810]["RewardItem"][2]["Attr"] = "0 1"
	tCrowdfunding_Reward[3304810]["RewardItem"][3] = {}
	tCrowdfunding_Reward[3304810]["RewardItem"][3]["Id"] = 3304965
	tCrowdfunding_Reward[3304810]["RewardItem"][3]["Attr"] = "0 1"
	tCrowdfunding_Reward[3304810]["RewardItem"][4] = {}
	tCrowdfunding_Reward[3304810]["RewardItem"][4]["Id"] = 3304966
	tCrowdfunding_Reward[3304810]["RewardItem"][4]["Attr"] = "0 1"
	tCrowdfunding_Reward[3304810]["DeleteItem"] = {}
	tCrowdfunding_Reward[3304810]["DeleteItem"][1] = {}
	tCrowdfunding_Reward[3304810]["DeleteItem"][1]["Id"] = 3304810
	tCrowdfunding_Reward[3304810]["LogId"] = 12000839
	tCrowdfunding_Reward[3304810]["RewardEffect"] = {}
	tCrowdfunding_Reward[3304810]["RewardEffect"]["Effect"] = tCrowdfunding_Data["Effect"]["OpenPack"]
	
	-- 3304811 五级房屋升级令礼盒
	tCrowdfunding_Reward[3304811] = {}
	tCrowdfunding_Reward[3304811]["RewardItem"] = {}
	tCrowdfunding_Reward[3304811]["RewardItem"][1] = {}
	tCrowdfunding_Reward[3304811]["RewardItem"][1]["Id"] = 3304963
	tCrowdfunding_Reward[3304811]["RewardItem"][1]["Attr"] = "0 1"
	tCrowdfunding_Reward[3304811]["RewardItem"][2] = {}
	tCrowdfunding_Reward[3304811]["RewardItem"][2]["Id"] = 3304964
	tCrowdfunding_Reward[3304811]["RewardItem"][2]["Attr"] = "0 1"
	tCrowdfunding_Reward[3304811]["RewardItem"][3] = {}
	tCrowdfunding_Reward[3304811]["RewardItem"][3]["Id"] = 3304965
	tCrowdfunding_Reward[3304811]["RewardItem"][3]["Attr"] = "0 1"
	tCrowdfunding_Reward[3304811]["RewardItem"][4] = {}
	tCrowdfunding_Reward[3304811]["RewardItem"][4]["Id"] = 3304966
	tCrowdfunding_Reward[3304811]["RewardItem"][4]["Attr"] = "0 1"
	tCrowdfunding_Reward[3304811]["RewardItem"][5] = {}
	tCrowdfunding_Reward[3304811]["RewardItem"][5]["Id"] = 3304967
	tCrowdfunding_Reward[3304811]["RewardItem"][5]["Attr"] = "0 1"
	tCrowdfunding_Reward[3304811]["DeleteItem"] = {}
	tCrowdfunding_Reward[3304811]["DeleteItem"][1] = {}
	tCrowdfunding_Reward[3304811]["DeleteItem"][1]["Id"] = 3304811
	tCrowdfunding_Reward[3304811]["LogId"] = 12000839
	tCrowdfunding_Reward[3304811]["RewardEffect"] = {}
	tCrowdfunding_Reward[3304811]["RewardEffect"]["Effect"] = tCrowdfunding_Data["Effect"]["OpenPack"]
	
	-- 3304812 六级房屋升级令礼盒
	tCrowdfunding_Reward[3304812] = {}
	tCrowdfunding_Reward[3304812]["RewardItem"] = {}
	tCrowdfunding_Reward[3304812]["RewardItem"][1] = {}
	tCrowdfunding_Reward[3304812]["RewardItem"][1]["Id"] = 3304963
	tCrowdfunding_Reward[3304812]["RewardItem"][1]["Attr"] = "0 1"
	tCrowdfunding_Reward[3304812]["RewardItem"][2] = {}
	tCrowdfunding_Reward[3304812]["RewardItem"][2]["Id"] = 3304964
	tCrowdfunding_Reward[3304812]["RewardItem"][2]["Attr"] = "0 1"
	tCrowdfunding_Reward[3304812]["RewardItem"][3] = {}
	tCrowdfunding_Reward[3304812]["RewardItem"][3]["Id"] = 3304965
	tCrowdfunding_Reward[3304812]["RewardItem"][3]["Attr"] = "0 1"
	tCrowdfunding_Reward[3304812]["RewardItem"][4] = {}
	tCrowdfunding_Reward[3304812]["RewardItem"][4]["Id"] = 3304966
	tCrowdfunding_Reward[3304812]["RewardItem"][4]["Attr"] = "0 1"
	tCrowdfunding_Reward[3304812]["RewardItem"][5] = {}
	tCrowdfunding_Reward[3304812]["RewardItem"][5]["Id"] = 3304967
	tCrowdfunding_Reward[3304812]["RewardItem"][5]["Attr"] = "0 1"
	tCrowdfunding_Reward[3304812]["RewardItem"][6] = {}
	tCrowdfunding_Reward[3304812]["RewardItem"][6]["Id"] = 3304968
	tCrowdfunding_Reward[3304812]["RewardItem"][6]["Attr"] = "0 1"
	tCrowdfunding_Reward[3304812]["DeleteItem"] = {}
	tCrowdfunding_Reward[3304812]["DeleteItem"][1] = {}
	tCrowdfunding_Reward[3304812]["DeleteItem"][1]["Id"] = 3304812
	tCrowdfunding_Reward[3304812]["LogId"] = 12000839
	tCrowdfunding_Reward[3304812]["RewardEffect"] = {}
	tCrowdfunding_Reward[3304812]["RewardEffect"]["Effect"] = tCrowdfunding_Data["Effect"]["OpenPack"]
	
local tCrowdfunding_Refund = {}
	
	tCrowdfunding_Refund[3304777] = {}
	tCrowdfunding_Refund[3304777]["RewardEMoney"] = {}
	tCrowdfunding_Refund[3304777]["RewardEMoney"]["Value"] = 10000
	tCrowdfunding_Refund[3304777]["DeleteItem"] = {}
	tCrowdfunding_Refund[3304777]["DeleteItem"][1] = {}
	tCrowdfunding_Refund[3304777]["DeleteItem"][1]["Id"] = 3304777
	tCrowdfunding_Refund[3304777]["LogId"] = 12000839
	tCrowdfunding_Refund[3304777]["RewardEffect"] = {}
	tCrowdfunding_Refund[3304777]["RewardEffect"]["Effect"] = tCrowdfunding_Data["Effect"]["OpenPack"]
	
	tCrowdfunding_Refund[3304778] = {}
	tCrowdfunding_Refund[3304778]["RewardMoney"] = {}
	tCrowdfunding_Refund[3304778]["RewardMoney"]["Value"] = 1000000000
	tCrowdfunding_Refund[3304778]["DeleteItem"] = {}
	tCrowdfunding_Refund[3304778]["DeleteItem"][1] = {}
	tCrowdfunding_Refund[3304778]["DeleteItem"][1]["Id"] = 3304778
	tCrowdfunding_Refund[3304778]["LogId"] = 12000839
	tCrowdfunding_Refund[3304778]["RewardEffect"] = {}
	tCrowdfunding_Refund[3304778]["RewardEffect"]["Effect"] = tCrowdfunding_Data["Effect"]["OpenPack"]
	
	tCrowdfunding_Refund[3304779] = {}
	tCrowdfunding_Refund[3304779]["RewardEMoney"] = {}
	tCrowdfunding_Refund[3304779]["RewardEMoney"]["Value"] = 4000
	tCrowdfunding_Refund[3304779]["DeleteItem"] = {}
	tCrowdfunding_Refund[3304779]["DeleteItem"][1] = {}
	tCrowdfunding_Refund[3304779]["DeleteItem"][1]["Id"] = 3304779
	tCrowdfunding_Refund[3304779]["LogId"] = 12000839
	tCrowdfunding_Refund[3304779]["RewardEffect"] = {}
	tCrowdfunding_Refund[3304779]["RewardEffect"]["Effect"] = tCrowdfunding_Data["Effect"]["OpenPack"]
	
	tCrowdfunding_Refund[3304780] = {}
	tCrowdfunding_Refund[3304780]["RewardMoney"] = {}
	tCrowdfunding_Refund[3304780]["RewardMoney"]["Value"] = 400000000
	tCrowdfunding_Refund[3304780]["DeleteItem"] = {}
	tCrowdfunding_Refund[3304780]["DeleteItem"][1] = {}
	tCrowdfunding_Refund[3304780]["DeleteItem"][1]["Id"] = 3304780
	tCrowdfunding_Refund[3304780]["LogId"] = 12000839
	tCrowdfunding_Refund[3304780]["RewardEffect"] = {}
	tCrowdfunding_Refund[3304780]["RewardEffect"]["Effect"] = tCrowdfunding_Data["Effect"]["OpenPack"]
--------------------------------------npc逻辑-------------------------------------------
-- 了解众筹进度
function Crowdfunding_Web()
	-- 活动前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["Crowdfunding"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 活动后
	if CommonFunc_GetAfterActivityTime(tActivityTime["Crowdfunding"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local sWebPage = tCrowdfunding_Data["Web"]
	User_SendWebDialog(sWebPage)
end

-- 众筹前置判断
function Crowdfunding_Judge(nObject)
	local nNpcId = Get_NpcId()
	
	-- 活动前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["Crowdfunding"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 活动后
	if CommonFunc_GetAfterActivityTime(tActivityTime["Crowdfunding"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	-- 已购买
	local nEventType = tCrowdfunding_Data["Stc"]["Crowdfunding"]["EventType"]
	local nDataType = tCrowdfunding_Data["Stc"]["Crowdfunding"]["DataType"]
	local nValue = Get_UserStatisticValue(nEventType,nDataType)
	tNpcGossip[nNpcId]["Text321"] = string.format(tCrowdfunding_Text[nNpcId]["Text321"],tCrowdfunding_Text["Msg"]["PackageName"][nObject])
	if Sys_ParseNumbersContain(tCrowdfunding_Binary[nObject],nValue) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	-- 判断是家园赌桌还是德州管家出不同对白
	if nObject == 1 then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
	else
		LinkNpcGossipFunc_New(nNpcId,"3-4")
	end
end

-- 确认购买
function Crowdfunding_Buy(nObject,nPayment)
	local nNpcId = Get_NpcId()
	
	-- 活动前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["Crowdfunding"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 活动后
	if CommonFunc_GetAfterActivityTime(tActivityTime["Crowdfunding"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	-- 已购买
	local nEventType = tCrowdfunding_Data["Stc"]["Crowdfunding"]["EventType"]
	local nDataType = tCrowdfunding_Data["Stc"]["Crowdfunding"]["DataType"]
	local nValue = Get_UserStatisticValue(nEventType,nDataType)
	tNpcGossip[nNpcId]["Text321"] = string.format(tCrowdfunding_Text[nNpcId]["Text321"],tCrowdfunding_Text["Msg"]["PackageName"][nObject])
	if Sys_ParseNumbersContain(tCrowdfunding_Binary[nStc],nValue) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	-- 天石不足
	if nPayment == 1 then
		local nNeedEMoney = tCrowdfunding_Data["Need"][nObject][nPayment]
		if Get_UserEMoney() < nNeedEMoney then
			Sys_MsgBox(string.format(tCrowdfunding_Text["Msg"][nPayment],nNeedEMoney))
			return
		end
	-- 银两不足
	elseif nPayment == 2 then
		local nNeedMoney = tCrowdfunding_Data["Need"][nObject][nPayment]
		if not User_CanPutMoney2Bag(-nNeedMoney) then
			Sys_MsgBox(string.format(tCrowdfunding_Text["Msg"][nPayment],nNeedMoney))
			return
		end
	end
	
	-- 背包空间不足
	local nSpace = RewardTemplate_GetRewardSpace(tCrowdfunding_Reward[nObject][nPayment])
	if not User_CheckLeftSpace(nSpace) then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end
	
	------------------------------------------- 购买
	-- 天石
	if nPayment == 1 then
		local nNeedEMoney = tCrowdfunding_Data["Need"][nObject][nPayment]
		if not User_AddEMoney(-nNeedEMoney) then
			return
		end
	-- 银两
	elseif nPayment == 2 then
		local nNeedMoney = tCrowdfunding_Data["Need"][nObject][nPayment]
		if not User_AddMoney(-nNeedMoney) then
			return
		end
	end
	
	local sLog = string.format(tCrowdfunding_Data["Log"][nObject][nPayment],nNpcId)
	local sMsg = string.format(tCrowdfunding_Text["Msg"]["Buy"],tCrowdfunding_Text["Msg"]["PackageName"][nObject],tCrowdfunding_Text["Msg"]["Certificate"][nObject][nPayment])
	Task_AddStatistic(nEventType,nDataType,tCrowdfunding_Binary[nObject],1)
	RewardTemplate_UseItemAndMsg(tCrowdfunding_Reward[nObject][nPayment])
	Sys_MsgBox(sMsg)
	Sys_SaveActionRewardLog(sLog)
end

-- 接特惠购买房屋
function Crowdfunding_Before(nIndex)
	local nNpcId = Get_NpcId()
	
	-- 活动前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["Crowdfunding"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 活动后
	if CommonFunc_GetAfterActivityTime(tActivityTime["Crowdfunding"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 已购买
	-- stc(165,25) 记录购买房屋升级令礼盒情况
	local nEventType = tCrowdfunding_Data["Stc"]["House"]["EventType"]
	local nDataType = tCrowdfunding_Data["Stc"]["House"]["DataType"]
	local nValue = Get_UserStatisticValue(nEventType,nDataType)
	tNpcGossip[nNpcId]["Text351"] = string.format(tCrowdfunding_Text[nNpcId]["Text351"],nIndex)
	if Sys_ParseNumbersContain(tCrowdfunding_Binary[nIndex],nValue) then
		LinkNpcGossipFunc_New(nNpcId,"3-5")
		return
	end
	
	-- 3-6
	tNpcGossip[nNpcId]["Text361"] = string.format(tCrowdfunding_Text[nNpcId]["Text361"],tCrowdfunding_Data["House"][1][nIndex],tCrowdfunding_Data["House"][2][nIndex],nIndex)
	tNpcGossip[nNpcId]["Option361"] = string.format(tCrowdfunding_Text[nNpcId]["Option361"],tCrowdfunding_Data["House"][1][nIndex])
	tNpcGossip[nNpcId]["Option362"] = string.format(tCrowdfunding_Text[nNpcId]["Option362"],tCrowdfunding_Data["House"][2][nIndex])
	tNpcGossip[nNpcId]["OptionPoint361"] = "4-5"
	tNpcGossip[nNpcId]["OptionPoint362"] = "4-6"
	-- 4-5
	tNpcGossip[nNpcId]["Text451"] = string.format(tCrowdfunding_Text[nNpcId]["Text451"],tCrowdfunding_Data["House"][1][nIndex],nIndex)
	tNpcGossip[nNpcId]["Option451"] = string.format(tCrowdfunding_Text[nNpcId]["Option451"],tCrowdfunding_Data["House"][1][nIndex])
	tNpcGossip[nNpcId]["OptionFunc451"] = "Crowdfunding_BuyUpdatePack</N>1</N>" .. nIndex
	-- 4-6
	tNpcGossip[nNpcId]["Text461"] = string.format(tCrowdfunding_Text[nNpcId]["Text461"],tCrowdfunding_Data["House"][2][nIndex],nIndex)
	tNpcGossip[nNpcId]["Option461"] = string.format(tCrowdfunding_Text[nNpcId]["Option461"],tCrowdfunding_Data["House"][2][nIndex])
	tNpcGossip[nNpcId]["OptionFunc461"] = "Crowdfunding_BuyUpdatePack</N>2</N>" .. nIndex
	-- 4-7
	tNpcGossip[nNpcId]["Text471"] = string.format(tCrowdfunding_Text[nNpcId]["Text471"],tCrowdfunding_Data["House"][1][nIndex],nIndex)
	-- 4-8
	tNpcGossip[nNpcId]["Text481"] = string.format(tCrowdfunding_Text[nNpcId]["Text481"],tCrowdfunding_Data["House"][2][nIndex],nIndex)

	LinkNpcGossipFunc_New(nNpcId,"3-6")
end

function Crowdfunding_BuyUpdatePack(nPayment,nLev)
	local nNpcId = Get_NpcId()
	
	-- 活动前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["Crowdfunding"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 活动后
	if CommonFunc_GetAfterActivityTime(tActivityTime["Crowdfunding"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 已购买
	-- stc(165,25) 记录购买房屋升级令礼盒情况
	local nEventType = tCrowdfunding_Data["Stc"]["House"]["EventType"]
	local nDataType = tCrowdfunding_Data["Stc"]["House"]["DataType"]
	local nValue = Get_UserStatisticValue(nEventType,nDataType)
	if Sys_ParseNumbersContain(tCrowdfunding_Binary[nLev],nValue) then
		LinkNpcGossipFunc_New(nNpcId,"3-5")
		return
	end
	
	-- 天石不足
	if nPayment == 1 then
		local nNeedEMoney = tCrowdfunding_Data["House"][nPayment][nLev]
		if Get_UserEMoney() < nNeedEMoney then
			LinkNpcGossipFunc_New(nNpcId,"4-7")
			return
		end
	-- 银两不足
	elseif nPayment == 2 then
		local nNeedMoney = tCrowdfunding_Data["House"][nPayment][nLev]
		if not User_CanPutMoney2Bag(-nNeedMoney) then
			LinkNpcGossipFunc_New(nNpcId,"4-8")
			return
		end
	end
	
	-- 背包空间不足
	local nSpace = RewardTemplate_GetRewardSpace(tCrowdfunding_Reward["UpdatePack"][nLev])
	if not User_CheckLeftSpace(nSpace) then
		LinkNpcGossipFunc_New(nNpcId,"4-9")
		return
	end
	
	------------------------------------------- 购买
	-- 天石
	if nPayment == 1 then
		local nNeedEMoney = tCrowdfunding_Data["House"][nPayment][nLev]
		if not User_AddEMoney(-nNeedEMoney) then
			return
		end
	-- 银两
	elseif nPayment == 2 then
		local nNeedMoney = tCrowdfunding_Data["House"][nPayment][nLev]
		if not User_AddMoney(-nNeedMoney) then
			return
		end
	end
	
	local sEmoneLog = tCrowdfunding_Data["EmoneyLog"][nPayment][nLev]
	local sMsg = string.format(tCrowdfunding_Text["Msg"]["BuyUpdatePack"],nLev)
	Task_AddStatistic(nEventType,nDataType,tCrowdfunding_Binary[nLev],1)
	RewardTemplate_UseItemAndMsg(tCrowdfunding_Reward["UpdatePack"][nLev])
	Sys_MsgBox(sMsg)
	Sys_SaveEmoneyBuy(sEmoneLog)
end

-- 退款
function Crowdfunding_Refund(nObject,nPayment)
	local nNpcId = Get_NpcId()
	
	-- 过期删除
	local nItemId = tCrowdfunding_Reward[nObject][nPayment]["RewardItem"][1]["Id"]
	if CommonFunc_GetAfterActivityTime(tActivityTime["Crowdfunding"]["RefundTime"]) then
		local sLog = string.format(tCrowdfunding_Data["Log"]["Del"],nItemId)
		Item_DelItem(nItemId)
		Sys_SaveActionRewardLog(sLog)
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 银两/天石满
	local nRefund = tCrowdfunding_Data["Need"][nObject][nPayment]
	if nPayment == 1 then
		if Get_UserEMoney() + nRefund > G_User_MaxEmoney then
			LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
		end
	elseif nPayment == 2 then
		if not User_CanPutMoney2Bag(nRefund) then
			LinkNpcGossipFunc_New(nNpcId,"2-3")
			return
		end
	end
	
	------------------------------- 退款
	if RewardTemplate_UseItemAndMsg(tCrowdfunding_Refund[nItemId]) then
		local sItemName = tCrowdfunding_Text["Msg"]["Certificate"][nObject][nPayment]
		local sWay = tCrowdfunding_Text[nNpcId][nPayment]
		tNpcGossip[nNpcId]["Text241"] = string.format(tCrowdfunding_Text[nNpcId]["Text241"],sItemName,nRefund,sWay)
		LinkNpcGossipFunc_New(nNpcId,"2-4")
	end
end
--------------------------------------物品逻辑-------------------------------------------
function Crowdfunding_UpdateHouse(nItemId)
	-- 判断房屋
	local nResLev = tCrowdfunding_Data["Update"][nItemId]["Lev"]
	local nHouseId = Get_UserHouseId()
	local nNowLev = Get_MapResLev(nHouseId)
	local sMsg1 = string.format(tCrowdfunding_Text["Msg"]["Less"],nResLev-1,nResLev)
	local sMsg2 = string.format(tCrowdfunding_Text["Msg"]["More"],nNowLev)
	
	if nNowLev < (nResLev-1) then
		Sys_MsgBox(sMsg1)
		return
	elseif nNowLev >= nResLev then
		Sys_MsgBox(sMsg2)
		return
	end
	
	-- 判断是否摆放家具
	if Get_MapNpcCount(nHouseId,25) > 0 or Get_MapNpcCount(nHouseId,2) > 0 then
		Sys_MsgBox(tCrowdfunding_Text["Msg"]["PackFurniture"])
		return
	end
	
	------------------------------------------- 升级
	
	-- 判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 删除物品
	if not Item_DelItem(nItemId) then
		return
	end
	
	-- 六级房屋特殊操作 掩码
	-- stc(140,03) 表示六级房屋升级成功（不分方式）
	local nSixEventType = tCrowdfunding_Data["Stc"]["Six"]["EventType"]
	local nSixDataType = tCrowdfunding_Data["Stc"]["Six"]["DataType"]
	local nSixComplete = tCrowdfunding_Data["Stc"]["Six"]["Complete"]
	if nResLev == 6 then
		Task_SetStatistic(nSixEventType,nSixDataType,nSixComplete,1)
	end
	
	-- 打log
	local sLog = string.format(tCrowdfunding_Data["Log"]["Update"],nItemId,nResLev)
	Sys_SaveActionRewardLog(sLog)
	
	-- 更改地图
	local nMapDoc = tCrowdfunding_Data["Update"][nItemId]["MapDoc"]
	local nPortalX = tCrowdfunding_Data["Update"][nItemId]["PortalX"]
	local nPortalY = tCrowdfunding_Data["Update"][nItemId]["PortalY"]
	
	Map_SetMapResLev(nHouseId,nResLev)
	Map_SetMapDoc(nHouseId,nMapDoc)
	Map_SetMapPortalX(nHouseId,nPortalX)
	Map_SetMapPortalY(nHouseId,nPortalY)
	-- 移动npc
	if Get_MapNpcCount(nHouseId,4) > 0 then
		if Get_MapNpcCount(nHouseId,4) == 1 then	-- 1个物品箱
			local nCellX = tCrowdfunding_Data["Update"][nItemId]["CellX"][1]
			local nCellY = tCrowdfunding_Data["Update"][nItemId]["CellY"][1]
			local sParam = tostring(nHouseId).." 4 "..nCellX.." "..nCellY
			Npc_ChangePos(sParam)
		elseif Get_MapNpcCount(nHouseId,4) == 2 then	-- 两个物品箱
			local nCellX1 = tCrowdfunding_Data["Update"][nItemId]["CellX"][1]
			local nCellY1 = tCrowdfunding_Data["Update"][nItemId]["CellY"][1]
			local nCellX2 = tCrowdfunding_Data["Update"][nItemId]["CellX"][2]
			local nCellY2 = tCrowdfunding_Data["Update"][nItemId]["CellY"][2]
			local sParam = tostring(nHouseId).." 4 "..nCellX1.." "..nCellY1.." "..nCellX2.." "..nCellY2
			Npc_ChangePos(sParam)
		else		-- 两个物品箱与一个管家
			local nCellX1 = tCrowdfunding_Data["Update"][nItemId]["CellX"][1]
			local nCellY1 = tCrowdfunding_Data["Update"][nItemId]["CellY"][1]
			local nCellX2 = tCrowdfunding_Data["Update"][nItemId]["CellX"][2]
			local nCellY2 = tCrowdfunding_Data["Update"][nItemId]["CellY"][2]
			local nCellX3 = tCrowdfunding_Data["Update"][nItemId]["CellX"][3]
			local nCellY3 = tCrowdfunding_Data["Update"][nItemId]["CellY"][3]
			local sParam = tostring(nHouseId).." 4 "..nCellX1.." "..nCellY1.." "..nCellX2.." "..nCellY2.." "..nCellX3.." "..nCellY3
			Npc_ChangePos(sParam)
		end
	end
	-- 获得成就 六级房屋无成就
	if tCrowdfunding_Data["Update"][nItemId]["AchPos"] ~= nil then
		local nAchPos = tCrowdfunding_Data["Update"][nItemId]["AchPos"]
		local nUserId = Get_UserId()
		local sAchLog = string.format(tCrowdfunding_Data["Log"]["Ach"],nAchPos)
		if not User_ChkAchByAchPosition(nAchPos,nUserId) then
			User_AddAchByAchPosition(nAchPos,nUserId)
			Sys_SaveActionRewardLog(sAchLog,nUserId)
		end
	end
	-- 提示
	local sMsg3 = string.format(tCrowdfunding_Text["Msg"]["Update"],nResLev)
	Sys_MsgBox(sMsg3)
	User_EffectAdd("self",tCrowdfunding_Data["Effect"]["Update"])
	
	-- 六级房屋特殊操作
	if nResLev == 6 then
		--设置当前玩家开垦了1块田地
		local nLandEvent = tCrowdfunding_Data["Stc"]["Land"]["EventType"]
		local nLandType = tCrowdfunding_Data["Stc"]["Land"]["DataType"]
		Task_SetStatistic(nLandEvent,nLandType,1,1,0)
		
		--动态创建管家，种植区园丁和第一个田地npc，揽月仙子和宠物区开通员
		local nUserId = Get_UserId()
		for i = 1,6 do
			local sName = tCrowdfunding_Text["Name"][i]
			local nNpcType = tCrowdfunding_DynaNpc["Type"]
			local nSort = tCrowdfunding_DynaNpc["Sort"]
			local nLookFace = tCrowdfunding_DynaNpc["CreateNpcInfo"][i][2]
			local nTask0 = tCrowdfunding_DynaNpc["CreateNpcInfo"][i][5]
			local nPosX = tCrowdfunding_DynaNpc["CreateNpcInfo"][i][3]
			local nPosY = tCrowdfunding_DynaNpc["CreateNpcInfo"][i][4]
			
			
			if i == 6 then
				--创建美女管家物品箱
				-- (410072,6048500,0,2007,0,'物品箱 4 33 8200 1 %user_id %user_home_id 21 39 0 0 0 8003010 0 0 0 0 0 0 0 0 0 0 20')
				-- (8003010,0,0,1046,4,'')
				Npc_CreateDynaNpc(sName,4,33,nLookFace,1,nUserId,nHouseId,nPosX,nPosY,0,0,0,nTask0,0,0,0,0,0,0,0,0,0,0,20)
			else
				--其他动态npc	--18955 18956 18957 18959 19035
				if i == 1 then
					nNpcType = tCrowdfunding_DynaNpc["TypeShop"]
				end
				Npc_CreateDynaNpc(sName,nNpcType,nSort,nLookFace,0,nUserId,nHouseId,nPosX,nPosY,0,0,0,nTask0)
			end
		end
		
		-- 传送到市场
		local nAdminMapId = tCrowdfunding_Data["Return"]["AdminMapId"]
		local nBoundCX = tCrowdfunding_Data["Return"]["BoundCX"]
		local nBoundCY = tCrowdfunding_Data["Return"]["BoundCY"]
		local nMap = tCrowdfunding_Data["Return"]["MapId"]
		local nCellX = tCrowdfunding_Data["Return"]["CellX"]
		local nCellY = tCrowdfunding_Data["Return"]["CellY"]
		if Get_UserMapId(nUserId) == nAdminMapId then
			User_UserRandBoundTrans(nMap,nCellX,nCellY,nBoundCX,nBoundCY,0,0)
		end
	end
end
--------------------------------------npc配置-------------------------------------------
-- 22038 市场
-- 22039 双龙城
-- 22040 德州
tNpcFace[157] = 46
for j = 22038,22040 do
tNpcGossip[j] = tNpcGossip[j] or DefaultNpc:new{}
tNpcGossip[j]["OptionHidden"] = 1
tNpcGossip[j]["DialogueText"] = tCrowdfunding_Text[j]

-- 活动前
tNpcGossip[j]["Text1-1"] = {111,112,113}
tNpcGossip[j]["tOption1-1"] = {111}
tNpcGossip[j]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["Crowdfunding"]["ActivityTime"])
end

-- 活动后
tNpcGossip[j]["Text1-2"] = {121,122}
tNpcGossip[j]["tOption1-2"] = {121}
tNpcGossip[j]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["Crowdfunding"]["ActivityTime"])
end

-- 活动中
tNpcGossip[j]["Text1-3"] = {131,132,133,134}
tNpcGossip[j]["tOption1-3"] = {131,132,133,134}
tNpcGossip[j]["ChkFunc1-3"] = function()
	return Sys_ChkFullTime(tActivityTime["Crowdfunding"]["ActivityTime"])
end
tNpcGossip[j]["OptionFunc131"] = "Crowdfunding_Web"
tNpcGossip[j]["OptionPoint132"] = "2-1"
tNpcGossip[j]["OptionPoint133"] = "2-2"
tNpcGossip[j]["OptionPoint134"] = "2-3"
tNpcGossip[j]["OptionChkFunc134"] = function()
	local nHouseId = Get_UserHouseId()
	local nNowLev = Get_MapResLev(nHouseId)
	
	if nNowLev >= 6 then
		return false
	end
	
	return true
end

-- 接2、参与家园赌桌众筹
tNpcGossip[j]["Text2-1"] = {211,212,213,214,215,216,217,212,218}
tNpcGossip[j]["tOption2-1"] = {211,212}
tNpcGossip[j]["ChkFunc2-1"] = function()
	local nNpcId = Get_NpcId()
	-- stc(165,07) 记录购买众筹套餐情况
	local nEventType = tCrowdfunding_Data["Stc"]["Crowdfunding"]["EventType"]
	local nDataType = tCrowdfunding_Data["Stc"]["Crowdfunding"]["DataType"]
	local nValue = Get_UserStatisticValue(nEventType,nDataType)
	if Sys_ParseNumbersContain(tCrowdfunding_Binary[1],nValue) then
		tNpcGossip[nNpcId]["Option211"] = tCrowdfunding_Text[nNpcId]["Option211"] .. tCrowdfunding_Text["Msg"]["Already"]
	else
		tNpcGossip[nNpcId]["Option211"] = tCrowdfunding_Text[nNpcId]["Option211"]
	end
	
	return true
end
tNpcGossip[j]["OptionFunc211"] = "Crowdfunding_Judge</N>1"

-- 接3、参与德州管家众筹
tNpcGossip[j]["Text2-2"] = {221,222,223,224,225,226,227,222,228}
tNpcGossip[j]["tOption2-2"] = {221,222}
tNpcGossip[j]["ChkFunc2-2"] = function()
	local nNpcId = Get_NpcId()
	-- stc(165,07) 记录购买众筹套餐情况
	local nEventType = tCrowdfunding_Data["Stc"]["Crowdfunding"]["EventType"]
	local nDataType = tCrowdfunding_Data["Stc"]["Crowdfunding"]["DataType"]
	local nValue = Get_UserStatisticValue(nEventType,nDataType)
	if Sys_ParseNumbersContain(tCrowdfunding_Binary[2],nValue) then
		tNpcGossip[nNpcId]["Option221"] = tCrowdfunding_Text[nNpcId]["Option221"] .. tCrowdfunding_Text["Msg"]["Already"]
	else
		tNpcGossip[nNpcId]["Option221"] = tCrowdfunding_Text[nNpcId]["Option221"]
	end
	
	return true
end
tNpcGossip[j]["OptionFunc221"] = "Crowdfunding_Judge</N>2"

-- 接上、活动已结束
tNpcGossip[j]["Text3-1"] = {311}
tNpcGossip[j]["tOption3-1"] = {311}

-- 接上、已购买
tNpcGossip[j]["Text3-2"] = {321}
tNpcGossip[j]["tOption3-2"] = {321}

-- 接2-1、购买家园赌桌众筹套餐
tNpcGossip[j]["Text3-3"] = {331}
tNpcGossip[j]["tOption3-3"] = {331,332}
tNpcGossip[j]["OptionPoint331"] = "4-1"
tNpcGossip[j]["OptionPoint332"] = "4-2"

-- 接3-1、购买德州管家众筹套餐
tNpcGossip[j]["Text3-4"] = {341}
tNpcGossip[j]["tOption3-4"] = {341,342}
tNpcGossip[j]["OptionPoint341"] = "4-3"
tNpcGossip[j]["OptionPoint342"] = "4-4"

-- 二次确认
tNpcGossip[j]["Text4-1"] = {411,412,413}
tNpcGossip[j]["tOption4-1"] = {411,412}
tNpcGossip[j]["OptionFunc411"] = "Crowdfunding_Buy</N>1</N>1"

tNpcGossip[j]["Text4-2"] = {421,422,423}
tNpcGossip[j]["tOption4-2"] = {421,422}
tNpcGossip[j]["OptionFunc421"] = "Crowdfunding_Buy</N>1</N>2"

tNpcGossip[j]["Text4-3"] = {431,432,433}
tNpcGossip[j]["tOption4-3"] = {431,432}
tNpcGossip[j]["OptionFunc431"] = "Crowdfunding_Buy</N>2</N>1"

tNpcGossip[j]["Text4-4"] = {441,442,443}
tNpcGossip[j]["tOption4-4"] = {441,442}
tNpcGossip[j]["OptionFunc441"] = "Crowdfunding_Buy</N>2</N>2"

-- 背包满
tNpcGossip[j]["Text5-1"] = {511}
tNpcGossip[j]["tOption5-1"] = {511}

-- 接特惠购买房屋
tNpcGossip[j]["Text2-3"] = {231,232}
tNpcGossip[j]["tOption2-3"] = {231,232,233,234,235,236,237}
tNpcGossip[j]["OptionChkFunc231"] = function()
	local nHouseId = Get_UserHouseId()
	
	if nHouseId < 1 then
		return true
	end
	
	return false
end
for i = 2,6 do
	tNpcGossip[j]["OptionChkFunc23" .. i] = function()
		local nHouseId = Get_UserHouseId()
		local nNowLev = Get_MapResLev(nHouseId)
	
		if nNowLev < i then
			return true
		end
	
		return false
	end
end
tNpcGossip[j]["OptionFunc231"] = "Crowdfunding_Before</N>1"
tNpcGossip[j]["OptionFunc232"] = "Crowdfunding_Before</N>2"
tNpcGossip[j]["OptionFunc233"] = "Crowdfunding_Before</N>3"
tNpcGossip[j]["OptionFunc234"] = "Crowdfunding_Before</N>4"
tNpcGossip[j]["OptionFunc235"] = "Crowdfunding_Before</N>5"
tNpcGossip[j]["OptionFunc236"] = "Crowdfunding_Before</N>6"

tNpcGossip[j]["Text3-5"] = {351}
tNpcGossip[j]["tOption3-5"] = {351}

tNpcGossip[j]["Text3-6"] = {361}
tNpcGossip[j]["tOption3-6"] = {361,362,363}

tNpcGossip[j]["Text4-5"] = {451}
tNpcGossip[j]["tOption4-5"] = {451,452}

tNpcGossip[j]["Text4-6"] = {461}
tNpcGossip[j]["tOption4-6"] = {461,462}

tNpcGossip[j]["Text4-7"] = {471}
tNpcGossip[j]["tOption4-7"] = {471}

tNpcGossip[j]["Text4-8"] = {481}
tNpcGossip[j]["tOption4-8"] = {481}

tNpcGossip[j]["Text4-9"] = {491}
tNpcGossip[j]["tOption4-9"] = {491}
end

-- tNpcGossip[22039] = tNpcGossip[22038]
-- tNpcGossip[22040] = tNpcGossip[22038]

-- 22205 德州众筹退款专员
tNpcFace[214] = 46
for k = 22205,22208 do
tNpcGossip[k] = tNpcGossip[k] or DefaultNpc:new{}
tNpcGossip[k]["OptionHidden"] = 1
tNpcGossip[k]["DialogueText"] = tCrowdfunding_Text[k]

tNpcGossip[k]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[k]["tOption1-1"] = {111,112,113,114,115}
tNpcGossip[k]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tActivityTime["Crowdfunding"]["RefundTime"])
end
tNpcGossip[k]["OptionChkFunc111"] = function()
	local nItemId = tCrowdfunding_Reward[1][1]["RewardItem"][1]["Id"]
	
	if Item_ChkItem(nItemId) then
		return true
	end
	
	return false
end
tNpcGossip[k]["OptionChkFunc112"] = function()
	local nItemId = tCrowdfunding_Reward[1][2]["RewardItem"][1]["Id"]
	
	if Item_ChkItem(nItemId) then
		return true
	end
	
	return false
end
tNpcGossip[k]["OptionChkFunc113"] = function()
	local nItemId = tCrowdfunding_Reward[2][1]["RewardItem"][1]["Id"]
	
	if Item_ChkItem(nItemId) then
		return true
	end
	
	return false
end
tNpcGossip[k]["OptionChkFunc114"] = function()
	local nItemId = tCrowdfunding_Reward[2][2]["RewardItem"][1]["Id"]
	
	if Item_ChkItem(nItemId) then
		return true
	end
	
	return false
end
tNpcGossip[k]["OptionFunc111"] = "Crowdfunding_Refund</N>1</N>1"
tNpcGossip[k]["OptionFunc112"] = "Crowdfunding_Refund</N>1</N>2"
tNpcGossip[k]["OptionFunc113"] = "Crowdfunding_Refund</N>2</N>1"
tNpcGossip[k]["OptionFunc114"] = "Crowdfunding_Refund</N>2</N>2"

tNpcGossip[k]["Text2-1"] = {211}
tNpcGossip[k]["tOption2-1"] = {211}

tNpcGossip[k]["Text2-2"] = {221}
tNpcGossip[k]["tOption2-2"] = {221}

tNpcGossip[k]["Text2-3"] = {231}
tNpcGossip[k]["tOption2-3"] = {231}

tNpcGossip[k]["Text2-4"] = {241}
tNpcGossip[k]["tOption2-4"] = {241}
end


--------------------------------------物品配置-------------------------------------------
-- 3304964 二级房屋升级令
-- 3304965 三级房屋升级令
-- 3304966 四级房屋升级令
-- 3304967 五级房屋升级令
-- 3304968 六级房屋升级令
tItem[3304964] = tItem[3304964] or {}
tItem[3304965] = tItem[3304964] or {}
tItem[3304966] = tItem[3304964] or {}
-- tItem[3304967] = tItem[3304964] or {}
tItem[3304968] = tItem[3304964] or {}
tItem[3304964]["Function"] = function(nItemId,sItemName)
	Crowdfunding_UpdateHouse(nItemId)
end

-- 3304807 一级房屋升级令礼盒
-- 3304808 二级房屋升级令礼盒
-- 3304809 三级房屋升级令礼盒
-- 3304810 四级房屋升级令礼盒
-- 3304811 五级房屋升级令礼盒
-- 3304812 六级房屋升级令礼盒
tItem[3304807] = tItem[3304807] or {}
tItem[3304808] = tItem[3304807] or {}
tItem[3304809] = tItem[3304807] or {}
tItem[3304810] = tItem[3304807] or {}
tItem[3304811] = tItem[3304807] or {}
tItem[3304812] = tItem[3304807] or {}
tItem[3304807]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tCrowdfunding_Reward[nItemId])
end

-- 3304777 家园赌桌天石全免凭证
-- 3304778 家园赌桌银两全免凭证
-- 3304779 德州管家天石全免凭证
-- 3304780 德州管家银两全免凭证
tItem[3304777] = tItem[3304777] or {}
tItem[3304778] = tItem[3304777] or {}
tItem[3304779] = tItem[3304777] or {}
tItem[3304780] = tItem[3304777] or {}
tItem[3304779]["Function"] = function(nItemId,sItemName)
	-- 退款时间后 删除
	if CommonFunc_GetAfterActivityTime(tActivityTime["Crowdfunding"]["RefundTime"]) then
		local sLog = string.format(tCrowdfunding_Data["Log"]["Del"],nItemId)
		Item_DelItem(nItemId)
		User_TalkChannel2005(tCrowdfunding_Text["Msg"]["Overdue"])
		Sys_SaveActionRewardLog(sLog)
		return
	end
	
	-- 退款时间内 寻路
	local nPosX = tCrowdfunding_Data["Location"]["PosX"]
	local nPosY = tCrowdfunding_Data["Location"]["PosY"]
	local nMapId = tCrowdfunding_Data["Location"]["MapId"]
	local nNpcId = tCrowdfunding_Data["Location"]["NpcId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

tItemFace[3304806] = 398