                                   ------------------------------------------------------------------------------------
--Name:		200417[简体征服][活动脚本]全球儿童节--扭蛋机+妖精快跑+九宫采玉
--Creator: 	洪聪敏
--Created:	2020/04/17
-----------------------------------------------------------------------------------
-- 命名前缀：Children2020TwistedEgg_
-- luaini: 41805
-- logID： 12001963,5[]
-- stc 掩码说明
--（219,00）记录是否屏蔽二次确认
--          data=0：未屏蔽
--          data=1：屏蔽
--（219,67）记录玩家完成九宫采玉的时间，每轮开始前清零
--          data < 60可领奖
--（219,68）记录玩家下一个采集颜色，每轮开始前清零
--（219,69）记录玩家今日九宫采玉免费入场次数


--（219,88）记录玩家今日妖精快跑的免费入场次数  
--（219,89）记录玩家完成妖精快跑的时间
--（219,66）记录玩家妖精快跑的变身次数



-----------------------------------------------------------------------------------

	
----------------------------------常量配置----------------------------------------
local tChildren2020TwistedEgg_Cont = {}
	tChildren2020TwistedEgg_Cont["ItemId"] = 3316104
	--游玩券ID
	tChildren2020TwistedEgg_Cont["PlayItemId"] = 3330736
	
	tChildren2020TwistedEgg_Cont["Toy"] = 3330712
	--NPCid
	tChildren2020TwistedEgg_Cont["NpcId"] = {}
	tChildren2020TwistedEgg_Cont["NpcId"][2] = 26512
	tChildren2020TwistedEgg_Cont["NpcId"][3] = 26513
	--地图id
	tChildren2020TwistedEgg_Cont["MapID"] = {}
	tChildren2020TwistedEgg_Cont["MapID"][2] = 3029
	tChildren2020TwistedEgg_Cont["MapID"][3] = 10027
	
	
	--需要修改颜色的物品
	tChildren2020TwistedEgg_Cont["ColorItem"] = {3330685,3330686,3330687,3330688,3330689,3330690,3330691,3330692,3330693,3330694,3330695,3330696,3330697,3330698,3330699,3330700,3330701,3330702,3330703,3330704}
	--不同等级可以获得冒险币数量
	tChildren2020TwistedEgg_Cont["RewdNum"] = {}
	tChildren2020TwistedEgg_Cont["RewdNum"][1] = 15
	tChildren2020TwistedEgg_Cont["RewdNum"][2] = 12
	tChildren2020TwistedEgg_Cont["RewdNum"][3] = 10
	tChildren2020TwistedEgg_Cont["RewdNum"][4] = 8
	tChildren2020TwistedEgg_Cont["RewdNum"][5] = 7



	tChildren2020TwistedEgg_Cont["YouLeYuan"] = 10835
	tChildren2020TwistedEgg_Cont["MainMap"] = 1002
	
	--九宫采玉提示和物品ID
	tChildren2020TwistedEgg_Cont["Color"] = {}
	tChildren2020TwistedEgg_Cont["Color"][1] = tChildren2020TwistedEgg_Text["info1"]
	tChildren2020TwistedEgg_Cont["Color"][2] = tChildren2020TwistedEgg_Text["info2"]
	tChildren2020TwistedEgg_Cont["Color"]["Yellow"] = 711560
	tChildren2020TwistedEgg_Cont["Color"]["Blue"] =711559
	
	---九宫采玉临时表
	tChildren2020TwistedEgg_Cont["FirstFlag"] = {}
	tChildren2020TwistedEgg_Cont["StartTime"] = {}
	tChildren2020TwistedEgg_Cont["Num"] = {}
	tChildren2020TwistedEgg_Cont["NextColor"] = {}
	--妖精快跑临时表
	-- 记录玩家积分
	tChildren2020TwistedEgg_Cont["Score"] = {}
-- 记录玩家进入时间
	tChildren2020TwistedEgg_Cont["Time"] = {}
	
	--背包空间
	tChildren2020TwistedEgg_Cont["BagSpace"] = 1
	
	--九宫采玉提示和物品ID
	tChildren2020TwistedEgg_Cont["Phase"] = {}
	tChildren2020TwistedEgg_Cont["Phase"]["id"] = 2110
	tChildren2020TwistedEgg_Cont["Phase"]["Yellow"] =1
	tChildren2020TwistedEgg_Cont["Phase"]["Blue"] =2
	tChildren2020TwistedEgg_Cont["Phase"]["Complete"] = 3
	
	--九宫采玉可领奖时间
	tChildren2020TwistedEgg_Cont["Rewaard"] = {}
	tChildren2020TwistedEgg_Cont["Rewaard"][1] = {1,36}
	tChildren2020TwistedEgg_Cont["Rewaard"][2] = {37,42}
	tChildren2020TwistedEgg_Cont["Rewaard"][3] = {43,50}
	tChildren2020TwistedEgg_Cont["Rewaard"][4] = {41,60}
	tChildren2020TwistedEgg_Cont["Rewaard"][5] = {61,9999}
	--随机落脚坐标
	tChildren2020TwistedEgg_Cont["Pos"] = {}
	tChildren2020TwistedEgg_Cont["Pos"]["MoveBack"] ={MapId=10835,Cellx=85,Celly=73}
	tChildren2020TwistedEgg_Cont["Pos"]["Collect"] ={MapId=3029,Cellx=66,Celly=141}

	tChildren2020TwistedEgg_Cont["Pos"]["MapId"] = 3029

	tChildren2020TwistedEgg_Cont["Pos"][1] = {Cellx=66,Celly=141}
	tChildren2020TwistedEgg_Cont["Pos"][2] = {Cellx=66,Celly=114}
	tChildren2020TwistedEgg_Cont["Pos"][3] = {Cellx=66,Celly=87}
	tChildren2020TwistedEgg_Cont["Pos"][4] = {Cellx=93,Celly=141}
	tChildren2020TwistedEgg_Cont["Pos"][5] = {Cellx=93,Celly=114}
	tChildren2020TwistedEgg_Cont["Pos"][6] = {Cellx=93,Celly=87}
	tChildren2020TwistedEgg_Cont["Pos"][7] = {Cellx=120,Celly=141}
	tChildren2020TwistedEgg_Cont["Pos"][8] = {Cellx=120,Celly=114}
	tChildren2020TwistedEgg_Cont["Pos"][9] = {Cellx=120,Celly=87}
	
	tChildren2020TwistedEgg_Cont["Collect"]={}
	--黄琉璃采集点
	tChildren2020TwistedEgg_Cont["Collect"][19526] = {MapId=3029,Cellx=57,Celly=140,Phase=1,ItemId=711560}
	tChildren2020TwistedEgg_Cont["Collect"][19527] = {MapId=3029,Cellx=57,Celly=104,Phase=1,ItemId=711560}
	tChildren2020TwistedEgg_Cont["Collect"][19528] = {MapId=3029,Cellx=66,Celly=149,Phase=1,ItemId=711560}
	tChildren2020TwistedEgg_Cont["Collect"][19529] = {MapId=3029,Cellx=66,Celly=131,Phase=1,ItemId=711560}
	tChildren2020TwistedEgg_Cont["Collect"][19530] = {MapId=3029,Cellx=66,Celly=113,Phase=1,ItemId=711560}
	tChildren2020TwistedEgg_Cont["Collect"][19531] = {MapId=3029,Cellx=66,Celly=95,Phase=1,ItemId=711560}
	tChildren2020TwistedEgg_Cont["Collect"][19532] = {MapId=3029,Cellx=66,Celly=77,Phase=1,ItemId=711560}
	tChildren2020TwistedEgg_Cont["Collect"][19533] = {MapId=3029,Cellx=75,Celly=140,Phase=1,ItemId=711560}
	tChildren2020TwistedEgg_Cont["Collect"][19534] = {MapId=3029,Cellx=75,Celly=104,Phase=1,ItemId=711560}
	tChildren2020TwistedEgg_Cont["Collect"][19535] = {MapId=3029,Cellx=84,Celly=149,Phase=1,ItemId=711560}
	tChildren2020TwistedEgg_Cont["Collect"][19536] = {MapId=3029,Cellx=84,Celly=131,Phase=1,ItemId=711560}
	tChildren2020TwistedEgg_Cont["Collect"][19537] = {MapId=3029,Cellx=84,Celly=113,Phase=1,ItemId=711560}
	tChildren2020TwistedEgg_Cont["Collect"][19538] = {MapId=3029,Cellx=84,Celly=95,Phase=1,ItemId=711560}
	tChildren2020TwistedEgg_Cont["Collect"][19539] = {MapId=3029,Cellx=84,Celly=77,Phase=1,ItemId=711560}
	tChildren2020TwistedEgg_Cont["Collect"][19540] = {MapId=3029,Cellx=93,Celly=140,Phase=1,ItemId=711560}
	tChildren2020TwistedEgg_Cont["Collect"][19541] = {MapId=3029,Cellx=93,Celly=104,Phase=1,ItemId=711560}
	tChildren2020TwistedEgg_Cont["Collect"][19542] = {MapId=3029,Cellx=102,Celly=149,Phase=1,ItemId=711560}
	tChildren2020TwistedEgg_Cont["Collect"][19543] = {MapId=3029,Cellx=102,Celly=131,Phase=1,ItemId=711560}
	tChildren2020TwistedEgg_Cont["Collect"][19544] = {MapId=3029,Cellx=102,Celly=113,Phase=1,ItemId=711560}
	tChildren2020TwistedEgg_Cont["Collect"][19545] = {MapId=3029,Cellx=102,Celly=95,Phase=1,ItemId=711560}
	tChildren2020TwistedEgg_Cont["Collect"][19546] = {MapId=3029,Cellx=102,Celly=77,Phase=1,ItemId=711560}
	tChildren2020TwistedEgg_Cont["Collect"][19547] = {MapId=3029,Cellx=111,Celly=140,Phase=1,ItemId=711560}
	tChildren2020TwistedEgg_Cont["Collect"][19548] = {MapId=3029,Cellx=111,Celly=104,Phase=1,ItemId=711560}
	tChildren2020TwistedEgg_Cont["Collect"][19549] = {MapId=3029,Cellx=120,Celly=149,Phase=1,ItemId=711560}
	tChildren2020TwistedEgg_Cont["Collect"][19550] = {MapId=3029,Cellx=120,Celly=131,Phase=1,ItemId=711560}
	tChildren2020TwistedEgg_Cont["Collect"][19551] = {MapId=3029,Cellx=120,Celly=113,Phase=1,ItemId=711560}
	tChildren2020TwistedEgg_Cont["Collect"][19552] = {MapId=3029,Cellx=120,Celly=95,Phase=1,ItemId=711560}
	tChildren2020TwistedEgg_Cont["Collect"][19553] = {MapId=3029,Cellx=120,Celly=77,Phase=1,ItemId=711560}
	tChildren2020TwistedEgg_Cont["Collect"][19554] = {MapId=3029,Cellx=129,Celly=140,Phase=1,ItemId=711560}
	tChildren2020TwistedEgg_Cont["Collect"][19555] = {MapId=3029,Cellx=129,Celly=104,Phase=1,ItemId=711560}
	
	
	--蓝琉璃采集点
	tChildren2020TwistedEgg_Cont["Collect"][19556] = {MapId=3029,Cellx=57,Celly=149,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19557] = {MapId=3029,Cellx=57,Celly=131,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19558] = {MapId=3029,Cellx=57,Celly=113,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19559] = {MapId=3029,Cellx=57,Celly=95,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19560] = {MapId=3029,Cellx=57,Celly=77,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19561] = {MapId=3029,Cellx=66,Celly=122,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19562] = {MapId=3029,Cellx=66,Celly=86,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19563] = {MapId=3029,Cellx=75,Celly=149,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19564] = {MapId=3029,Cellx=75,Celly=131,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19565] = {MapId=3029,Cellx=75,Celly=113,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19566] = {MapId=3029,Cellx=75,Celly=95,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19567] = {MapId=3029,Cellx=75,Celly=77,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19568] = {MapId=3029,Cellx=84,Celly=122,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19569] = {MapId=3029,Cellx=84,Celly=86,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19570] = {MapId=3029,Cellx=93,Celly=149,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19571] = {MapId=3029,Cellx=93,Celly=131,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19572] = {MapId=3029,Cellx=93,Celly=113,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19573] = {MapId=3029,Cellx=93,Celly=95,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19574] = {MapId=3029,Cellx=93,Celly=77,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19575] = {MapId=3029,Cellx=102,Celly=122,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19576] = {MapId=3029,Cellx=102,Celly=86,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19577] = {MapId=3029,Cellx=111,Celly=149,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19578] = {MapId=3029,Cellx=111,Celly=131,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19579] = {MapId=3029,Cellx=111,Celly=113,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19580] = {MapId=3029,Cellx=111,Celly=95,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19581] = {MapId=3029,Cellx=111,Celly=77,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19582] = {MapId=3029,Cellx=120,Celly=122,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19583] = {MapId=3029,Cellx=120,Celly=86,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19584] = {MapId=3029,Cellx=129,Celly=149,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19585] = {MapId=3029,Cellx=129,Celly=131,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19586] = {MapId=3029,Cellx=129,Celly=113,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19587] = {MapId=3029,Cellx=129,Celly=95,Phase=2,ItemId=711559}
	tChildren2020TwistedEgg_Cont["Collect"][19588] = {MapId=3029,Cellx=129,Celly=77,Phase=2,ItemId=711559}

	
	--变身快跑常量
	local tChildren2020TwistedEgg_MascotGarden_Count = {}
	-- 倒计时
	tChildren2020TwistedEgg_MascotGarden_Count["TimeDelay"] = 3600
	-- 陷阱标志
	tChildren2020TwistedEgg_MascotGarden_Count["Trap"] = 0
	-- 幸运水晶
	tChildren2020TwistedEgg_MascotGarden_Count["NewTrap"] = 0
	-- 新陷阱个数
	tChildren2020TwistedEgg_MascotGarden_Count["NewTrapNum"] = 0
	-- 陷阱刷新时间
	tChildren2020TwistedEgg_MascotGarden_Count["NewTrapTime"] = 30
	-- 完成标志分数
	tChildren2020TwistedEgg_MascotGarden_Count["GoalScore"] = 800
	
	--变身快可领奖时间
	tChildren2020TwistedEgg_MascotGarden_Count["Rewaard"] = {}
	tChildren2020TwistedEgg_MascotGarden_Count["Rewaard"][1] = {1,40}
	tChildren2020TwistedEgg_MascotGarden_Count["Rewaard"][2] = {41,48}
	tChildren2020TwistedEgg_MascotGarden_Count["Rewaard"][3] = {49,55}
	tChildren2020TwistedEgg_MascotGarden_Count["Rewaard"][4] = {56,70}
	tChildren2020TwistedEgg_MascotGarden_Count["Rewaard"][5] = {71,9999}
	
--地图传送点
	tChildren2020TwistedEgg_MascotGarden_Count["ChgMap"] = {}
	-- 梦幻岛
	tChildren2020TwistedEgg_MascotGarden_Count["ChgMap"][1] = {}
	tChildren2020TwistedEgg_MascotGarden_Count["ChgMap"][1]["MapId"] = 10027
	tChildren2020TwistedEgg_MascotGarden_Count["ChgMap"][1]["PosX"] = 146
	tChildren2020TwistedEgg_MascotGarden_Count["ChgMap"][1]["PosY"] = 75
	tChildren2020TwistedEgg_MascotGarden_Count["ChgMap"][1]["Range"] = 5
	tChildren2020TwistedEgg_MascotGarden_Count["ChgMap"][1]["Effect"] = 1
	tChildren2020TwistedEgg_MascotGarden_Count["ChgMap"][1]["MsgBox"] = "EnterGarden"
	-- 米奇妙妙屋
	tChildren2020TwistedEgg_MascotGarden_Count["ChgMap"][2] = {}
	tChildren2020TwistedEgg_MascotGarden_Count["ChgMap"][2]["MapId"] = 10835
	tChildren2020TwistedEgg_MascotGarden_Count["ChgMap"][2]["PosX"] = 84
	tChildren2020TwistedEgg_MascotGarden_Count["ChgMap"][2]["PosY"] = 72
	tChildren2020TwistedEgg_MascotGarden_Count["ChgMap"][2]["Range"] = 5
	tChildren2020TwistedEgg_MascotGarden_Count["ChgMap"][2]["Effect"] = 2
	tChildren2020TwistedEgg_MascotGarden_Count["ChgMap"][2]["Talk"] = "LeaveGarden"
	
	
	tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"] = {}
	tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][1]={}
	-- 男
	tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][1][1] = {}
	tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][1][1]["SkillType"] = 12820
	tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][1][1]["SkillLevel"] = 0
	tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][1][1]["MonsterType"] = 2355
	-- 女
	tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][1][2] = {}
	tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][1][2]["SkillType"] = 13590
	tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][1][2]["SkillLevel"] = 0
	tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][1][2]["MonsterType"] = 2354
	
	--------------正式look，没有look前先注释
	-- 300分
	tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][2]={}
	-- 男
	tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][2][1] = {}
	tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][2][1]["SkillType"] = 10691
	tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][2][1]["SkillLevel"] = 0
	tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][2][1]["MonsterType"] = 1317
	-- 女
	tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][2][2] = {}
	tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][2][2]["SkillType"] = 10688
	tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][2][2]["SkillLevel"] = 0
	tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][2][2]["MonsterType"] = 1315
	
	-- 600分
	tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][3]={}
	-- 男
	tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][3][1] = {}
	tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][3][1]["SkillType"] = 10692
	tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][3][1]["SkillLevel"] = 0
	tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][3][1]["MonsterType"] = 1318
	-- 女
	tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][3][2] = {}
	tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][3][2]["SkillType"] = 10689
	tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][3][2]["SkillLevel"] = 0
	tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][3][2]["MonsterType"] = 1316
	
	-------------------测试用，有正式look需要删除
	-- -- 300分
	-- tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][2]={}
	-- -- 男
	-- tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][2][1] = {}
	-- tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][2][1]["SkillType"] = 10686
	-- tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][2][1]["SkillLevel"] = 10686
	-- tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][2][1]["MonsterType"] = 3597
	-- -- 女
	-- tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][2][2] = {}
	-- tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][2][2]["SkillType"] = 10686
	-- tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][2][2]["SkillLevel"] = 10686
	-- tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][2][2]["MonsterType"] = 3597
	
	-- -- 600分
	-- tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][3]={}
	-- -- 男
	-- tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][3][1] = {}
	-- tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][3][1]["SkillType"] = 10644
	-- tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][3][1]["SkillLevel"] = 10644
	-- tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][3][1]["MonsterType"] = 3129
	-- -- 女
	-- tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][3][2] = {}
	-- tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][3][2]["SkillType"] = 10644
	-- tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][3][2]["SkillLevel"] = 10644
	-- tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][3][2]["MonsterType"] = 3129

-- 陷阱每分钟刷新位置
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"] = {}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][1] = {134,186}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][2] = {143,185}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][3] = {151,185}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][4] = {160,186}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][5] = {143,177}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][6] = {135,175}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][7] = {137,169}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][8] = {145,168}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][9] = {152,168}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][10] = {158,167}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][11] = {153,160}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][12] = {144,073}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][13] = {136,072}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][14] = {137,066}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][15] = {145,065}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][16] = {151,064}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][17] = {159,065}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][18] = {133,087}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][19] = {151,138}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][20] = {144,136}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][21] = {150,136}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][22] = {158,138}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][23] = {152,129}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][24] = {143,127}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][25] = {135,125}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][26] = {137,121}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][27] = {144,121}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][28] = {154,121}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][29] = {134,111}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][30] = {141,111}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][31] = {141,132}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][32] = {144,147}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][33] = {150,146}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][34] = {158,147}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][35] = {153,117}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][36] = {146,116}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][37] = {140,116}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][38] = {134,116}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][39] = {138,107}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][40] = {147,107}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][41] = {155,108}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][42] = {154,100}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][43] = {146,099}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][44] = {138,098}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][45] = {136,090}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][46] = {143,090}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][47] = {151,089}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][48] = {158,090}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][49] = {152,084}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][50] = {144,082}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][51] = {137,081}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][52] = {138,075}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][53] = {144,074}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][54] = {151,074}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][55] = {156,073}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][56] = {152,066}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][57] = {145,064}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][58] = {138,062}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][59] = {132,058}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][60] = {132,050}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][61] = {138,049}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][62] = {145,040}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][63] = {137,043}
	
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][64] = {147,110}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][65] = {153,110}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][66] = {156,104}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][67] = {149,103}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][68] = {141,102}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][69] = {134,101}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][70] = {136,096}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][71] = {144,095}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][72] = {153,096}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][73] = {157,090}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][74] = {149,089}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][75] = {141,088}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][76] = {138,137}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][77] = {135,082}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][78] = {143,081}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][79] = {150,081}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][80] = {158,082}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][81] = {152,075}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][82] = {135,132}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][83] = {133,120}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][84] = {141,117}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][85] = {148,117}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][86] = {155,117}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][87] = {152,124}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][88] = {152,057}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][89] = {144,056}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][90] = {136,054}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][91] = {134,045}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][92] = {140,048}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][93] = {132,038}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][94] = {138,191}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][95] = {142,191}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][96] = {147,191}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][97] = {152,191}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][98] = {157,191}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][99] = {162,191}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][100] = {157,186}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][101] = {148,187}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][102] = {140,187}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][103] = {136,182}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][104] = {141,181}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][105] = {150,178}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][106] = {155,182}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][107] = {160,178}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][108] = {152,174}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][109] = {143,173}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][110] = {138,164}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][111] = {142,162}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][112] = {148,164}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][113] = {155,155}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][114] = {148,153}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][115] = {141,153}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][116] = {133,153}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][117] = {133,144}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][118] = {139,143}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][119] = {144,142}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][120] = {150,142}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][121] = {157,140}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][122] = {148,133}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][123] = {145,157}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][124] = {136,155}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][125] = {132,148}
	tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][126] = {138,147}
	
-- 幸运水晶 新陷阱
	tChildren2020TwistedEgg_MascotGarden_Count["NewTrapMsg"]= {}
	tChildren2020TwistedEgg_MascotGarden_Count["NewTrapMsg"]["MapID"] = 10027
	tChildren2020TwistedEgg_MascotGarden_Count["NewTrapMsg"]["Look"] = 1604
	tChildren2020TwistedEgg_MascotGarden_Count["NewTrapMsg"]["TrapID"] = 1604
	tChildren2020TwistedEgg_MascotGarden_Count["NewTrapMsg"]["PosCX"] = 2
	tChildren2020TwistedEgg_MascotGarden_Count["NewTrapMsg"]["PosCY"] = 2
-- 幸运水晶 位置
	tChildren2020TwistedEgg_MascotGarden_Count["NewTrapPos"] = {}
	tChildren2020TwistedEgg_MascotGarden_Count["NewTrapPos"][1] = {145,054}
	tChildren2020TwistedEgg_MascotGarden_Count["NewTrapPos"][2] = {143,083}
	tChildren2020TwistedEgg_MascotGarden_Count["NewTrapPos"][3] = {141,109}
	tChildren2020TwistedEgg_MascotGarden_Count["NewTrapPos"][4] = {141,133}
	tChildren2020TwistedEgg_MascotGarden_Count["NewTrapPos"][5] = {154,150}
	tChildren2020TwistedEgg_MascotGarden_Count["NewTrapPos"][6] = {140,162}
	-- tChildren2020TwistedEgg_MascotGarden_Count["NewTrapPos"][7] = {152,193}
	
-- 玩家进入地图随机点
	tChildren2020TwistedEgg_MascotGarden_Count["RandomPos"] = {}
	tChildren2020TwistedEgg_MascotGarden_Count["RandomPos"] [1] = {146,075}
	tChildren2020TwistedEgg_MascotGarden_Count["RandomPos"] [2] = {146,101}
	tChildren2020TwistedEgg_MascotGarden_Count["RandomPos"] [3] = {146,131}
	tChildren2020TwistedEgg_MascotGarden_Count["RandomPos"] [4] = {146,161}
	

-- 特效
local tChildren2020TwistedEgg_Effect = {}
	-- 进图
	tChildren2020TwistedEgg_Effect[1] = {}
	tChildren2020TwistedEgg_Effect[1]["EffectObj"] = "self"
	tChildren2020TwistedEgg_Effect[1]["Effect"] = "moveback"
	-- 出图
	tChildren2020TwistedEgg_Effect[2] = {}
	tChildren2020TwistedEgg_Effect[2]["EffectObj"] = "self"
	tChildren2020TwistedEgg_Effect[2]["Effect"] = "movego"
	-- 吃积分
	tChildren2020TwistedEgg_Effect[3] = {}
	tChildren2020TwistedEgg_Effect[3]["EffectObj"] = "self"
	tChildren2020TwistedEgg_Effect[3]["Effect"] = "fam_gain"
	-- 双倍积分
	tChildren2020TwistedEgg_Effect[4] = {}
	tChildren2020TwistedEgg_Effect[4]["EffectObj"] = "self"
	tChildren2020TwistedEgg_Effect[4]["Effect"] = "athl_ap1"
	
	local tChildren2020TwistedEgg_Status = {}
	tChildren2020TwistedEgg_Status["Status"] = 55
	tChildren2020TwistedEgg_Status["Power"] = 200
	tChildren2020TwistedEgg_Status["Secs"] = 3
	tChildren2020TwistedEgg_Status["Time"] = 1
	tChildren2020TwistedEgg_Status["RemainTime"] = 0
	tChildren2020TwistedEgg_Status["EndTime"] = 0
	tChildren2020TwistedEgg_Status["Recordable"] = 0
	
	-- xp状态
	tChildren2020TwistedEgg_Status["MascotGarden"]={}
	tChildren2020TwistedEgg_Status["MascotGarden"]["Status"] = 49
	tChildren2020TwistedEgg_Status["MascotGarden"]["Power"] = 150
	tChildren2020TwistedEgg_Status["MascotGarden"]["Secs"] = 600
	tChildren2020TwistedEgg_Status["MascotGarden"]["Times"] = 1
	tChildren2020TwistedEgg_Status["MascotGarden"]["RemainTime"] = 30
	tChildren2020TwistedEgg_Status["MascotGarden"]["EndTime"] = 1
	tChildren2020TwistedEgg_Status["MascotGarden"]["Recordable"] = 0
	
local tChildren2020TwistedEgg_TrapMsg = {}
	tChildren2020TwistedEgg_TrapMsg["MapID"] = 10027
	tChildren2020TwistedEgg_TrapMsg["Look"] = 1451
	tChildren2020TwistedEgg_TrapMsg["TrapID"] = 1451
	tChildren2020TwistedEgg_TrapMsg["PosCX"] = 2
	tChildren2020TwistedEgg_TrapMsg["PosCY"] = 2
	
	--log表
	local tChildren2020TwistedEgg_Log = {}
	tChildren2020TwistedEgg_Log["LogId"] = "12001963"
	--九宫采玉
	tChildren2020TwistedEgg_Log["StartMisson"] = "0,0,0,0,12001963,5[6],0,0"
	tChildren2020TwistedEgg_Log["EndMisson"] = "0,0,0,0,12001963,5[6],0,0"
	tChildren2020TwistedEgg_Log["GetItem"] = "0,0,0,0,12001963,5[6],%s,1"
	--妖精快跑
	tChildren2020TwistedEgg_Log["EnterMascotGarden"] = "0,0,0,0,12001963,5[7],0,0"
	tChildren2020TwistedEgg_Log["EndMascotGarden"] = "0,0,0,0,12001963,5[7],0,0"
	
	--删除游戏券
	tChildren2020TwistedEgg_Log["DelItem"] = "0,0,0,0,12001963,5[8],%s,%s"

	tChildren2020TwistedEgg_Log["UseEmoneyLog"] = "1000	01775	%d	%d	1	"
local tChildren2020TwistedEgg_Stc= {}
	tChildren2020TwistedEgg_Stc[1] = {}
	tChildren2020TwistedEgg_Stc[1]["EventType"] = 219
	tChildren2020TwistedEgg_Stc[1]["DataType"] = 00
	
	--九宫采玉掩码
	tChildren2020TwistedEgg_Stc[2]={}
	
	--记录玩家完成九宫采玉的时间
	tChildren2020TwistedEgg_Stc[2]["Time"] = {}
	tChildren2020TwistedEgg_Stc[2]["Time"]["EventType"] = 219
	tChildren2020TwistedEgg_Stc[2]["Time"]["DataType"] = 67
	
	--下一个采集的颜色
	tChildren2020TwistedEgg_Stc[2]["Color"] = {}
	tChildren2020TwistedEgg_Stc[2]["Color"]["EventType"] = 219
	tChildren2020TwistedEgg_Stc[2]["Color"]["DataType"] = 68
	
	--记录今日九宫采玉免费次数
	tChildren2020TwistedEgg_Stc[2]["DayTime"] = {}
	tChildren2020TwistedEgg_Stc[2]["DayTime"]["EventType"] = 219
	tChildren2020TwistedEgg_Stc[2]["DayTime"]["DataType"] = 69
	
	
	--妖精快跑掩码
	tChildren2020TwistedEgg_Stc[3]={}
	--记录玩家今日妖精快跑免费次数
	tChildren2020TwistedEgg_Stc[3]["DayTime"] = {}
	tChildren2020TwistedEgg_Stc[3]["DayTime"]["EventType"] = 219
	tChildren2020TwistedEgg_Stc[3]["DayTime"]["DataType"] = 88
	
	--记录玩家完成妖精快跑的时间
	tChildren2020TwistedEgg_Stc[3]["Time"] = {}
	tChildren2020TwistedEgg_Stc[3]["Time"]["EventType"] = 219
	tChildren2020TwistedEgg_Stc[3]["Time"]["DataType"] = 89
	
	--记录玩家妖精快跑的变身次数
	tChildren2020TwistedEgg_Stc[3]["TransForm"] = {}
	tChildren2020TwistedEgg_Stc[3]["TransForm"]["EventType"] = 219
	tChildren2020TwistedEgg_Stc[3]["TransForm"]["DataType"] = 66
	
	local tChildren2020TwistedEgg_Map = {}
	tChildren2020TwistedEgg_Map[1]= 26513
	tChildren2020TwistedEgg_Map[2]= 26493
	tChildren2020TwistedEgg_Map[3]= 26505
	tChildren2020TwistedEgg_Map[4]= 26480
	tChildren2020TwistedEgg_Map[5]= 26512

----------------------------------奖励表配置----------------------------------
local tChildren2020TwistedEgg_Reward = {}
	-- ===普通扭蛋
	-- ===索引: tChildren2020TwistedEgg_Reward[26507]
	-- ===删除: 3316104,10
	-- ===LogStep: 5[1]
	-- ===
	tChildren2020TwistedEgg_Reward[26507] = {}
	tChildren2020TwistedEgg_Reward[26507]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tChildren2020TwistedEgg_Reward[26507]["DeleteItem"] = {}
	tChildren2020TwistedEgg_Reward[26507]["DeleteItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26507]["DeleteItem"][1]["Id"] = 3316104 -- 【库】冒险币[属性:11]
	tChildren2020TwistedEgg_Reward[26507]["DeleteItem"][1]["ItemNum"] = 10
	tChildren2020TwistedEgg_Reward[26507]["LogId"] = 12001963
	tChildren2020TwistedEgg_Reward[26507]["LogStep"] = " 5[1]"
	-- 征服限定玩具1 - 3%
	tChildren2020TwistedEgg_Reward[26507][1] = {}
	tChildren2020TwistedEgg_Reward[26507][1]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26507][1]["ItemChance"] = 300
	tChildren2020TwistedEgg_Reward[26507][1]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26507][1]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26507][1]["RewardItem"][1]["Id"] = 3330685 -- 小鸡书包（征服限定）[3330685][属性:8][叠加:10000][金币:0], 【表格】征服限定玩具1
	tChildren2020TwistedEgg_Reward[26507][1]["RewardItem"][1]["Attr"] = "0 1" -- 小鸡书包（征服限定）*1
	tChildren2020TwistedEgg_Reward[26507][1]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26507][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26507][1]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26507][1]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 征服限定玩具2 - 3%
	tChildren2020TwistedEgg_Reward[26507][2] = {}
	tChildren2020TwistedEgg_Reward[26507][2]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26507][2]["ItemChance"] = 300
	tChildren2020TwistedEgg_Reward[26507][2]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26507][2]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26507][2]["RewardItem"][1]["Id"] = 3330686 -- 蛋头不倒翁（征服限定）[3330686][属性:8][叠加:10000][金币:0], 【表格】征服限定玩具2
	tChildren2020TwistedEgg_Reward[26507][2]["RewardItem"][1]["Attr"] = "0 1" -- 蛋头不倒翁（征服限定）*1
	tChildren2020TwistedEgg_Reward[26507][2]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26507][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26507][2]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26507][2]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 征服限定玩具3 - 3%
	tChildren2020TwistedEgg_Reward[26507][3] = {}
	tChildren2020TwistedEgg_Reward[26507][3]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26507][3]["ItemChance"] = 300
	tChildren2020TwistedEgg_Reward[26507][3]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26507][3]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26507][3]["RewardItem"][1]["Id"] = 3330687 -- 疯狂的皮球（征服限定）[3330687][属性:8][叠加:10000][金币:0], 【表格】征服限定玩具3
	tChildren2020TwistedEgg_Reward[26507][3]["RewardItem"][1]["Attr"] = "0 1" -- 疯狂的皮球（征服限定）*1
	tChildren2020TwistedEgg_Reward[26507][3]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26507][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26507][3]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26507][3]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 征服限定玩具4 - 3%
	tChildren2020TwistedEgg_Reward[26507][4] = {}
	tChildren2020TwistedEgg_Reward[26507][4]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26507][4]["ItemChance"] = 300
	tChildren2020TwistedEgg_Reward[26507][4]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26507][4]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26507][4]["RewardItem"][1]["Id"] = 3330688 -- 坦克模型（征服限定）[3330688][属性:8][叠加:10000][金币:0], 【表格】征服限定玩具4
	tChildren2020TwistedEgg_Reward[26507][4]["RewardItem"][1]["Attr"] = "0 1" -- 坦克模型（征服限定）*1
	tChildren2020TwistedEgg_Reward[26507][4]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26507][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26507][4]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26507][4]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 华语限定玩具1 - 2%
	tChildren2020TwistedEgg_Reward[26507][5] = {}
	tChildren2020TwistedEgg_Reward[26507][5]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26507][5]["ItemChance"] = 200
	tChildren2020TwistedEgg_Reward[26507][5]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26507][5]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26507][5]["RewardItem"][1]["Id"] = 3330689 -- 拨浪鼓（华语限定）[3330689][属性:8][叠加:10000][金币:0], 【表格】华语限定玩具1
	tChildren2020TwistedEgg_Reward[26507][5]["RewardItem"][1]["Attr"] = "0 1" -- 拨浪鼓（华语限定）*1
	tChildren2020TwistedEgg_Reward[26507][5]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26507][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26507][5]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26507][5]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 华语限定玩具2 - 1.65%
	tChildren2020TwistedEgg_Reward[26507][6] = {}
	tChildren2020TwistedEgg_Reward[26507][6]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26507][6]["ItemChance"] = 165
	tChildren2020TwistedEgg_Reward[26507][6]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26507][6]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26507][6]["RewardItem"][1]["Id"] = 3330690 -- 布老虎（华语限定）[3330690][属性:8][叠加:10000][金币:0], 【表格】华语限定玩具2
	tChildren2020TwistedEgg_Reward[26507][6]["RewardItem"][1]["Attr"] = "0 1" -- 布老虎（华语限定）*1
	tChildren2020TwistedEgg_Reward[26507][6]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26507][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26507][6]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26507][6]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 华语限定玩具3 - 1.35%
	tChildren2020TwistedEgg_Reward[26507][7] = {}
	tChildren2020TwistedEgg_Reward[26507][7]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26507][7]["ItemChance"] = 135
	tChildren2020TwistedEgg_Reward[26507][7]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26507][7]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26507][7]["RewardItem"][1]["Id"] = 3330691 -- 纸风筝（华语限定）[3330691][属性:8][叠加:10000][金币:0], 【表格】华语限定玩具3
	tChildren2020TwistedEgg_Reward[26507][7]["RewardItem"][1]["Attr"] = "0 1" -- 纸风筝（华语限定）*1
	tChildren2020TwistedEgg_Reward[26507][7]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26507][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26507][7]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26507][7]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 华语限定玩具4 - 1%
	tChildren2020TwistedEgg_Reward[26507][8] = {}
	tChildren2020TwistedEgg_Reward[26507][8]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26507][8]["ItemChance"] = 100
	tChildren2020TwistedEgg_Reward[26507][8]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26507][8]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26507][8]["RewardItem"][1]["Id"] = 3330692 -- 川剧熊猫（华语限定）[3330692][属性:8][叠加:10000][金币:0], 【表格】华语限定玩具4
	tChildren2020TwistedEgg_Reward[26507][8]["RewardItem"][1]["Attr"] = "0 1" -- 川剧熊猫（华语限定）*1
	tChildren2020TwistedEgg_Reward[26507][8]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26507][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26507][8]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26507][8]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 英语限定玩具1 - 2%
	tChildren2020TwistedEgg_Reward[26507][9] = {}
	tChildren2020TwistedEgg_Reward[26507][9]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26507][9]["ItemChance"] = 200
	tChildren2020TwistedEgg_Reward[26507][9]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26507][9]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26507][9]["RewardItem"][1]["Id"] = 3330693 -- 机械医生（英语限定）[3330693][属性:8][叠加:10000][金币:0], 【表格】英语限定玩具1
	tChildren2020TwistedEgg_Reward[26507][9]["RewardItem"][1]["Attr"] = "0 1" -- 机械医生（英语限定）*1
	tChildren2020TwistedEgg_Reward[26507][9]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26507][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26507][9]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26507][9]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 英语限定玩具2 - 1.65%
	tChildren2020TwistedEgg_Reward[26507][10] = {}
	tChildren2020TwistedEgg_Reward[26507][10]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26507][10]["ItemChance"] = 165
	tChildren2020TwistedEgg_Reward[26507][10]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26507][10]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26507][10]["RewardItem"][1]["Id"] = 3330694 -- 积木巨人（英语限定）[3330694][属性:8][叠加:10000][金币:0], 【表格】英语限定玩具2
	tChildren2020TwistedEgg_Reward[26507][10]["RewardItem"][1]["Attr"] = "0 1" -- 积木巨人（英语限定）*1
	tChildren2020TwistedEgg_Reward[26507][10]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26507][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26507][10]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26507][10]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 英语限定玩具3 - 1.35%
	tChildren2020TwistedEgg_Reward[26507][11] = {}
	tChildren2020TwistedEgg_Reward[26507][11]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26507][11]["ItemChance"] = 135
	tChildren2020TwistedEgg_Reward[26507][11]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26507][11]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26507][11]["RewardItem"][1]["Id"] = 3330695 -- 遥控飞鸡（英语限定）[3330695][属性:8][叠加:10000][金币:0], 【表格】英语限定玩具3
	tChildren2020TwistedEgg_Reward[26507][11]["RewardItem"][1]["Attr"] = "0 1" -- 遥控飞鸡（英语限定）*1
	tChildren2020TwistedEgg_Reward[26507][11]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26507][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26507][11]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26507][11]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 英语限定玩具4 - 1%
	tChildren2020TwistedEgg_Reward[26507][12] = {}
	tChildren2020TwistedEgg_Reward[26507][12]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26507][12]["ItemChance"] = 100
	tChildren2020TwistedEgg_Reward[26507][12]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26507][12]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26507][12]["RewardItem"][1]["Id"] = 3330696 -- 小狗波特（英语限定）[3330696][属性:8][叠加:10000][金币:0], 【表格】英语限定玩具4
	tChildren2020TwistedEgg_Reward[26507][12]["RewardItem"][1]["Attr"] = "0 1" -- 小狗波特（英语限定）*1
	tChildren2020TwistedEgg_Reward[26507][12]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26507][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26507][12]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26507][12]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 西语限定玩具1 - 2%
	tChildren2020TwistedEgg_Reward[26507][13] = {}
	tChildren2020TwistedEgg_Reward[26507][13]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26507][13]["ItemChance"] = 200
	tChildren2020TwistedEgg_Reward[26507][13]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26507][13]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26507][13]["RewardItem"][1]["Id"] = 3330697 -- 动感赛车（西语限定）[3330697][属性:8][叠加:10000][金币:0], 【表格】西语限定玩具1
	tChildren2020TwistedEgg_Reward[26507][13]["RewardItem"][1]["Attr"] = "0 1" -- 动感赛车（西语限定）*1
	tChildren2020TwistedEgg_Reward[26507][13]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26507][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26507][13]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26507][13]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 西语限定玩具2 - 1.65%
	tChildren2020TwistedEgg_Reward[26507][14] = {}
	tChildren2020TwistedEgg_Reward[26507][14]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26507][14]["ItemChance"] = 165
	tChildren2020TwistedEgg_Reward[26507][14]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26507][14]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26507][14]["RewardItem"][1]["Id"] = 3330698 -- 斗牛瓷偶（西语限定）[3330698][属性:8][叠加:10000][金币:0], 【表格】西语限定玩具2
	tChildren2020TwistedEgg_Reward[26507][14]["RewardItem"][1]["Attr"] = "0 1" -- 斗牛瓷偶（西语限定）*1
	tChildren2020TwistedEgg_Reward[26507][14]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26507][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26507][14]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26507][14]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 西语限定玩具3 - 1.35%
	tChildren2020TwistedEgg_Reward[26507][15] = {}
	tChildren2020TwistedEgg_Reward[26507][15]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26507][15]["ItemChance"] = 135
	tChildren2020TwistedEgg_Reward[26507][15]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26507][15]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26507][15]["RewardItem"][1]["Id"] = 3330699 -- 马里奥手办（西语限定）[3330699][属性:8][叠加:10000][金币:0], 【表格】西语限定玩具3
	tChildren2020TwistedEgg_Reward[26507][15]["RewardItem"][1]["Attr"] = "0 1" -- 马里奥手办（西语限定）*1
	tChildren2020TwistedEgg_Reward[26507][15]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26507][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26507][15]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26507][15]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 西语限定玩具4 - 1%
	tChildren2020TwistedEgg_Reward[26507][16] = {}
	tChildren2020TwistedEgg_Reward[26507][16]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26507][16]["ItemChance"] = 100
	tChildren2020TwistedEgg_Reward[26507][16]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26507][16]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26507][16]["RewardItem"][1]["Id"] = 3330700 -- 掌上游戏机（西语限定）[3330700][属性:8][叠加:10000][金币:0], 【表格】西语限定玩具4
	tChildren2020TwistedEgg_Reward[26507][16]["RewardItem"][1]["Attr"] = "0 1" -- 掌上游戏机（西语限定）*1
	tChildren2020TwistedEgg_Reward[26507][16]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26507][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26507][16]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26507][16]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 阿语限定玩具1 - 2%
	tChildren2020TwistedEgg_Reward[26507][17] = {}
	tChildren2020TwistedEgg_Reward[26507][17]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26507][17]["ItemChance"] = 200
	tChildren2020TwistedEgg_Reward[26507][17]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26507][17]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26507][17]["RewardItem"][1]["Id"] = 3330701 -- 骆驼玩偶（阿语限定）[3330701][属性:8][叠加:10000][金币:0], 【表格】阿语限定玩具1
	tChildren2020TwistedEgg_Reward[26507][17]["RewardItem"][1]["Attr"] = "0 1" -- 骆驼玩偶（阿语限定）*1
	tChildren2020TwistedEgg_Reward[26507][17]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26507][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26507][17]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26507][17]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 阿语限定玩具2 - 1.65%
	tChildren2020TwistedEgg_Reward[26507][18] = {}
	tChildren2020TwistedEgg_Reward[26507][18]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26507][18]["ItemChance"] = 165
	tChildren2020TwistedEgg_Reward[26507][18]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26507][18]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26507][18]["RewardItem"][1]["Id"] = 3330702 -- 梦幻神灯（阿语限定）[3330702][属性:8][叠加:10000][金币:0], 【表格】阿语限定玩具2
	tChildren2020TwistedEgg_Reward[26507][18]["RewardItem"][1]["Attr"] = "0 1" -- 梦幻神灯（阿语限定）*1
	tChildren2020TwistedEgg_Reward[26507][18]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26507][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26507][18]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26507][18]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 阿语限定玩具3 - 1.35%
	tChildren2020TwistedEgg_Reward[26507][19] = {}
	tChildren2020TwistedEgg_Reward[26507][19]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26507][19]["ItemChance"] = 135
	tChildren2020TwistedEgg_Reward[26507][19]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26507][19]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26507][19]["RewardItem"][1]["Id"] = 3330703 -- 泡泡枪（阿语限定）[3330703][属性:8][叠加:10000][金币:0], 【表格】阿语限定玩具3
	tChildren2020TwistedEgg_Reward[26507][19]["RewardItem"][1]["Attr"] = "0 1" -- 泡泡枪（阿语限定）*1
	tChildren2020TwistedEgg_Reward[26507][19]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26507][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26507][19]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26507][19]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 阿语限定玩具4 - 1%
	tChildren2020TwistedEgg_Reward[26507][20] = {}
	tChildren2020TwistedEgg_Reward[26507][20]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26507][20]["ItemChance"] = 100
	tChildren2020TwistedEgg_Reward[26507][20]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26507][20]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26507][20]["RewardItem"][1]["Id"] = 3330704 -- 变形金刚（阿语限定）[3330704][属性:8][叠加:10000][金币:0], 【表格】阿语限定玩具4
	tChildren2020TwistedEgg_Reward[26507][20]["RewardItem"][1]["Attr"] = "0 1" -- 变形金刚（阿语限定）*1
	tChildren2020TwistedEgg_Reward[26507][20]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26507][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26507][20]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26507][20]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 600万爵位勋章 - 8%
	tChildren2020TwistedEgg_Reward[26507][21] = {}
	tChildren2020TwistedEgg_Reward[26507][21]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26507][21]["ItemChance"] = 800
	tChildren2020TwistedEgg_Reward[26507][21]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26507][21]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26507][21]["RewardItem"][1]["Id"] = 3322761 -- 600万爵位勋章[3322761][属性:8][叠加:1][金币:0], 【表格】600万爵位勋章
	tChildren2020TwistedEgg_Reward[26507][21]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 600万爵位勋章（赠）*1
	tChildren2020TwistedEgg_Reward[26507][21]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26507][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26507][21]["RewardEffect"]["Effect"] = "task105"
	-- 3阶灵珠 - 2%
	tChildren2020TwistedEgg_Reward[26507][22] = {}
	tChildren2020TwistedEgg_Reward[26507][22]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26507][22]["ItemChance"] = 200
	tChildren2020TwistedEgg_Reward[26507][22]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26507][22]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26507][22]["RewardItem"][1]["Id"] = 4200003 -- 3阶灵珠[4200003][属性:72][叠加:99][金币:0], 【表格】3阶灵珠
	tChildren2020TwistedEgg_Reward[26507][22]["RewardItem"][1]["Attr"] = "0 1" -- 3阶灵珠*1
	tChildren2020TwistedEgg_Reward[26507][22]["RewardItem"][1]["PreciousType"] = 333 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tChildren2020TwistedEgg_Reward[26507][22]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26507][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26507][22]["RewardEffect"]["Effect"] = "task105"
	tChildren2020TwistedEgg_Reward[26507][22]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
			-- 【动态掩码（54513, data0）】全服限量:（30）, 超限给编号（28）-
	tChildren2020TwistedEgg_Reward[26507][22]["GlobalId"] = 54513
	tChildren2020TwistedEgg_Reward[26507][22]["Pos"] = 0
	tChildren2020TwistedEgg_Reward[26507][22]["MaxData"] = 30
	tChildren2020TwistedEgg_Reward[26507][22]["FullIndex"] = 28
	-- 赤炼石+3 - 7%
	tChildren2020TwistedEgg_Reward[26507][23] = {}
	tChildren2020TwistedEgg_Reward[26507][23]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26507][23]["ItemChance"] = 700
	tChildren2020TwistedEgg_Reward[26507][23]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26507][23]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26507][23]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tChildren2020TwistedEgg_Reward[26507][23]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tChildren2020TwistedEgg_Reward[26507][23]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26507][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26507][23]["RewardEffect"]["Effect"] = "task105"
	-- 修为值 - 10%
	tChildren2020TwistedEgg_Reward[26507][24] = {}
	tChildren2020TwistedEgg_Reward[26507][24]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26507][24]["ItemChance"] = 1000
	tChildren2020TwistedEgg_Reward[26507][24]["RewardRepairValue"] = {}
	tChildren2020TwistedEgg_Reward[26507][24]["RewardRepairValue"]["Value"] = 1000 -- 修为值, 【需求】修为值
	tChildren2020TwistedEgg_Reward[26507][24]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26507][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26507][24]["RewardEffect"]["Effect"] = "task106"
	-- 万能神纹精粹 - 12%
	tChildren2020TwistedEgg_Reward[26507][25] = {}
	tChildren2020TwistedEgg_Reward[26507][25]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26507][25]["ItemChance"] = 1200
	tChildren2020TwistedEgg_Reward[26507][25]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26507][25]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26507][25]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tChildren2020TwistedEgg_Reward[26507][25]["RewardItem"][1]["Attr"] = "0 15 3" -- 万能神纹精粹（赠）*15
	tChildren2020TwistedEgg_Reward[26507][25]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26507][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26507][25]["RewardEffect"]["Effect"] = "task106"
	-- 魔武通玄丹 - 6%
	tChildren2020TwistedEgg_Reward[26507][26] = {}
	tChildren2020TwistedEgg_Reward[26507][26]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26507][26]["ItemChance"] = 600
	tChildren2020TwistedEgg_Reward[26507][26]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26507][26]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26507][26]["RewardItem"][1]["Id"] = 3303373 -- 魔武通玄丹[3303373][属性:9][叠加:10000][金币:0], 【表格】魔武通玄丹
	tChildren2020TwistedEgg_Reward[26507][26]["RewardItem"][1]["Attr"] = "0 1" -- 魔武通玄丹*1
	tChildren2020TwistedEgg_Reward[26507][26]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26507][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26507][26]["RewardEffect"]["Effect"] = "task106"
	-- 龙鳞果 - 3%
	tChildren2020TwistedEgg_Reward[26507][27] = {}
	tChildren2020TwistedEgg_Reward[26507][27]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26507][27]["ItemChance"] = 300
	tChildren2020TwistedEgg_Reward[26507][27]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26507][27]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26507][27]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tChildren2020TwistedEgg_Reward[26507][27]["RewardItem"][1]["Attr"] = "0 1" -- 龙鳞果*1
	tChildren2020TwistedEgg_Reward[26507][27]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26507][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26507][27]["RewardEffect"]["Effect"] = "task105"
	-- 气力值 - 16%
	tChildren2020TwistedEgg_Reward[26507][28] = {}
	tChildren2020TwistedEgg_Reward[26507][28]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26507][28]["ItemChance"] = 1600
	tChildren2020TwistedEgg_Reward[26507][28]["RewardStrengthValue"] = {}
	tChildren2020TwistedEgg_Reward[26507][28]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】气力值
	tChildren2020TwistedEgg_Reward[26507][28]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26507][28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26507][28]["RewardEffect"]["Effect"] = "task106"


	tChildren2020TwistedEgg_Reward[26508] = {}
	-- ===华语·语种扭蛋
	-- ===索引: tChildren2020TwistedEgg_Reward[26508]
	-- ===删除: 3316104,12
	-- ===LogStep: 5[2]
	-- ===
	tChildren2020TwistedEgg_Reward[26508]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tChildren2020TwistedEgg_Reward[26508]["DeleteItem"] = {}
	tChildren2020TwistedEgg_Reward[26508]["DeleteItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26508]["DeleteItem"][1]["Id"] = 3316104 -- 【库】冒险币[属性:11]
	tChildren2020TwistedEgg_Reward[26508]["DeleteItem"][1]["ItemNum"] = 12
	tChildren2020TwistedEgg_Reward[26508]["LogId"] = 12001963
	tChildren2020TwistedEgg_Reward[26508]["LogStep"] = " 5[2]"
	-- 语种限定玩具1 - 12%
	tChildren2020TwistedEgg_Reward[26508][1] = {}
	tChildren2020TwistedEgg_Reward[26508][1]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26508][1]["ItemChance"] = 1200
	tChildren2020TwistedEgg_Reward[26508][1]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26508][1]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26508][1]["RewardItem"][1]["Id"] = 3330689 -- 拨浪鼓（华语限定）[3330689][属性:8][叠加:10000][金币:0], 【表格】语种限定玩具1
	tChildren2020TwistedEgg_Reward[26508][1]["RewardItem"][1]["Attr"] = "0 1" -- 拨浪鼓（华语限定）*1
	tChildren2020TwistedEgg_Reward[26508][1]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26508][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26508][1]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26508][1]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 语种限定玩具2 - 10%
	tChildren2020TwistedEgg_Reward[26508][2] = {}
	tChildren2020TwistedEgg_Reward[26508][2]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26508][2]["ItemChance"] = 1000
	tChildren2020TwistedEgg_Reward[26508][2]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26508][2]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26508][2]["RewardItem"][1]["Id"] = 3330690 -- 布老虎（华语限定）[3330690][属性:8][叠加:10000][金币:0], 【表格】语种限定玩具2
	tChildren2020TwistedEgg_Reward[26508][2]["RewardItem"][1]["Attr"] = "0 1" -- 布老虎（华语限定）*1
	tChildren2020TwistedEgg_Reward[26508][2]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26508][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26508][2]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26508][2]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 语种限定玩具3 - 8%
	tChildren2020TwistedEgg_Reward[26508][3] = {}
	tChildren2020TwistedEgg_Reward[26508][3]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26508][3]["ItemChance"] = 800
	tChildren2020TwistedEgg_Reward[26508][3]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26508][3]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26508][3]["RewardItem"][1]["Id"] = 3330691 -- 纸风筝（华语限定）[3330691][属性:8][叠加:10000][金币:0], 【表格】语种限定玩具3
	tChildren2020TwistedEgg_Reward[26508][3]["RewardItem"][1]["Attr"] = "0 1" -- 纸风筝（华语限定）*1
	tChildren2020TwistedEgg_Reward[26508][3]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26508][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26508][3]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26508][3]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 语种限定玩具4 - 6%
	tChildren2020TwistedEgg_Reward[26508][4] = {}
	tChildren2020TwistedEgg_Reward[26508][4]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26508][4]["ItemChance"] = 600
	tChildren2020TwistedEgg_Reward[26508][4]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26508][4]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26508][4]["RewardItem"][1]["Id"] = 3330692 -- 川剧熊猫（华语限定）[3330692][属性:8][叠加:10000][金币:0], 【表格】语种限定玩具4
	tChildren2020TwistedEgg_Reward[26508][4]["RewardItem"][1]["Attr"] = "0 1" -- 川剧熊猫（华语限定）*1
	tChildren2020TwistedEgg_Reward[26508][4]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26508][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26508][4]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26508][4]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 600万爵位勋章 - 8%
	tChildren2020TwistedEgg_Reward[26508][5] = {}
	tChildren2020TwistedEgg_Reward[26508][5]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26508][5]["ItemChance"] = 800
	tChildren2020TwistedEgg_Reward[26508][5]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26508][5]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26508][5]["RewardItem"][1]["Id"] = 3322761 -- 600万爵位勋章[3322761][属性:8][叠加:1][金币:0], 【表格】600万爵位勋章
	tChildren2020TwistedEgg_Reward[26508][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 600万爵位勋章（赠）*1
	tChildren2020TwistedEgg_Reward[26508][5]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26508][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26508][5]["RewardEffect"]["Effect"] = "task105"
	-- 3阶灵珠 - 2%
	tChildren2020TwistedEgg_Reward[26508][6] = {}
	tChildren2020TwistedEgg_Reward[26508][6]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26508][6]["ItemChance"] = 200
	tChildren2020TwistedEgg_Reward[26508][6]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26508][6]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26508][6]["RewardItem"][1]["Id"] = 4200003 -- 3阶灵珠[4200003][属性:72][叠加:99][金币:0], 【表格】3阶灵珠
	tChildren2020TwistedEgg_Reward[26508][6]["RewardItem"][1]["Attr"] = "0 1" -- 3阶灵珠*1
	tChildren2020TwistedEgg_Reward[26508][6]["RewardItem"][1]["PreciousType"] = 333 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tChildren2020TwistedEgg_Reward[26508][6]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26508][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26508][6]["RewardEffect"]["Effect"] = "task105"
	tChildren2020TwistedEgg_Reward[26508][6]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
			-- 【动态掩码（54513, data0）】全服限量:（30）, 超限给编号（12）-
	tChildren2020TwistedEgg_Reward[26508][6]["GlobalId"] = 54513
	tChildren2020TwistedEgg_Reward[26508][6]["Pos"] = 0
	tChildren2020TwistedEgg_Reward[26508][6]["MaxData"] = 30
	tChildren2020TwistedEgg_Reward[26508][6]["FullIndex"] = 12
	-- 赤炼石+3 - 7%
	tChildren2020TwistedEgg_Reward[26508][7] = {}
	tChildren2020TwistedEgg_Reward[26508][7]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26508][7]["ItemChance"] = 700
	tChildren2020TwistedEgg_Reward[26508][7]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26508][7]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26508][7]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tChildren2020TwistedEgg_Reward[26508][7]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tChildren2020TwistedEgg_Reward[26508][7]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26508][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26508][7]["RewardEffect"]["Effect"] = "task105"
	-- 修为值 - 10%
	tChildren2020TwistedEgg_Reward[26508][8] = {}
	tChildren2020TwistedEgg_Reward[26508][8]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26508][8]["ItemChance"] = 1000
	tChildren2020TwistedEgg_Reward[26508][8]["RewardRepairValue"] = {}
	tChildren2020TwistedEgg_Reward[26508][8]["RewardRepairValue"]["Value"] = 1000 -- 修为值, 【需求】修为值
	tChildren2020TwistedEgg_Reward[26508][8]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26508][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26508][8]["RewardEffect"]["Effect"] = "task106"
	-- 万能神纹精粹 - 12%
	tChildren2020TwistedEgg_Reward[26508][9] = {}
	tChildren2020TwistedEgg_Reward[26508][9]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26508][9]["ItemChance"] = 1200
	tChildren2020TwistedEgg_Reward[26508][9]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26508][9]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26508][9]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tChildren2020TwistedEgg_Reward[26508][9]["RewardItem"][1]["Attr"] = "0 15 3" -- 万能神纹精粹（赠）*15
	tChildren2020TwistedEgg_Reward[26508][9]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26508][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26508][9]["RewardEffect"]["Effect"] = "task106"
	-- 魔武通玄丹 - 6%
	tChildren2020TwistedEgg_Reward[26508][10] = {}
	tChildren2020TwistedEgg_Reward[26508][10]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26508][10]["ItemChance"] = 600
	tChildren2020TwistedEgg_Reward[26508][10]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26508][10]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26508][10]["RewardItem"][1]["Id"] = 3303373 -- 魔武通玄丹[3303373][属性:9][叠加:10000][金币:0], 【表格】魔武通玄丹
	tChildren2020TwistedEgg_Reward[26508][10]["RewardItem"][1]["Attr"] = "0 1" -- 魔武通玄丹*1
	tChildren2020TwistedEgg_Reward[26508][10]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26508][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26508][10]["RewardEffect"]["Effect"] = "task106"
	-- 龙鳞果 - 3%
	tChildren2020TwistedEgg_Reward[26508][11] = {}
	tChildren2020TwistedEgg_Reward[26508][11]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26508][11]["ItemChance"] = 300
	tChildren2020TwistedEgg_Reward[26508][11]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26508][11]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26508][11]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tChildren2020TwistedEgg_Reward[26508][11]["RewardItem"][1]["Attr"] = "0 1" -- 龙鳞果*1
	tChildren2020TwistedEgg_Reward[26508][11]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26508][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26508][11]["RewardEffect"]["Effect"] = "task106"
	-- 气力值 - 16%
	tChildren2020TwistedEgg_Reward[26508][12] = {}
	tChildren2020TwistedEgg_Reward[26508][12]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26508][12]["ItemChance"] = 1600
	tChildren2020TwistedEgg_Reward[26508][12]["RewardStrengthValue"] = {}
	tChildren2020TwistedEgg_Reward[26508][12]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】气力值
	tChildren2020TwistedEgg_Reward[26508][12]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26508][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26508][12]["RewardEffect"]["Effect"] = "task106"

	tChildren2020TwistedEgg_Reward[26509] = {}
	-- ===英文·语种扭蛋
	-- ===索引: tChildren2020TwistedEgg_Reward[26509]
	-- ===删除: 3316104,12
	-- ===LogStep: 5[3]
	-- ===
	tChildren2020TwistedEgg_Reward[26509]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tChildren2020TwistedEgg_Reward[26509]["DeleteItem"] = {}
	tChildren2020TwistedEgg_Reward[26509]["DeleteItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26509]["DeleteItem"][1]["Id"] = 3316104 -- 【库】冒险币[属性:11]
	tChildren2020TwistedEgg_Reward[26509]["DeleteItem"][1]["ItemNum"] = 12
	tChildren2020TwistedEgg_Reward[26509]["LogId"] = 12001963
	tChildren2020TwistedEgg_Reward[26509]["LogStep"] = " 5[3]"
	-- 语种限定玩具1 - 12%
	tChildren2020TwistedEgg_Reward[26509][1] = {}
	tChildren2020TwistedEgg_Reward[26509][1]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26509][1]["ItemChance"] = 1200
	tChildren2020TwistedEgg_Reward[26509][1]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26509][1]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26509][1]["RewardItem"][1]["Id"] = 3330693 -- 机械医生（英语限定）[3330693][属性:8][叠加:10000][金币:0], 【表格】语种限定玩具1
	tChildren2020TwistedEgg_Reward[26509][1]["RewardItem"][1]["Attr"] = "0 1" -- 机械医生（英语限定）*1
	tChildren2020TwistedEgg_Reward[26509][1]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26509][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26509][1]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26509][1]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 语种限定玩具2 - 10%
	tChildren2020TwistedEgg_Reward[26509][2] = {}
	tChildren2020TwistedEgg_Reward[26509][2]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26509][2]["ItemChance"] = 1000
	tChildren2020TwistedEgg_Reward[26509][2]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26509][2]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26509][2]["RewardItem"][1]["Id"] = 3330694 -- 积木巨人（英语限定）[3330694][属性:8][叠加:10000][金币:0], 【表格】语种限定玩具2
	tChildren2020TwistedEgg_Reward[26509][2]["RewardItem"][1]["Attr"] = "0 1" -- 积木巨人（英语限定）*1
	tChildren2020TwistedEgg_Reward[26509][2]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26509][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26509][2]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26509][2]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 语种限定玩具3 - 8%
	tChildren2020TwistedEgg_Reward[26509][3] = {}
	tChildren2020TwistedEgg_Reward[26509][3]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26509][3]["ItemChance"] = 800
	tChildren2020TwistedEgg_Reward[26509][3]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26509][3]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26509][3]["RewardItem"][1]["Id"] = 3330695 -- 遥控飞鸡（英语限定）[3330695][属性:8][叠加:10000][金币:0], 【表格】语种限定玩具3
	tChildren2020TwistedEgg_Reward[26509][3]["RewardItem"][1]["Attr"] = "0 1" -- 遥控飞鸡（英语限定）*1
	tChildren2020TwistedEgg_Reward[26509][3]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26509][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26509][3]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26509][3]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 语种限定玩具4 - 6%
	tChildren2020TwistedEgg_Reward[26509][4] = {}
	tChildren2020TwistedEgg_Reward[26509][4]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26509][4]["ItemChance"] = 600
	tChildren2020TwistedEgg_Reward[26509][4]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26509][4]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26509][4]["RewardItem"][1]["Id"] = 3330696 -- 小狗波特（英语限定）[3330696][属性:8][叠加:10000][金币:0], 【表格】语种限定玩具4
	tChildren2020TwistedEgg_Reward[26509][4]["RewardItem"][1]["Attr"] = "0 1" -- 小狗波特（英语限定）*1
	tChildren2020TwistedEgg_Reward[26509][4]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26509][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26509][4]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26509][4]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 600万爵位勋章 - 8%
	tChildren2020TwistedEgg_Reward[26509][5] = {}
	tChildren2020TwistedEgg_Reward[26509][5]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26509][5]["ItemChance"] = 800
	tChildren2020TwistedEgg_Reward[26509][5]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26509][5]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26509][5]["RewardItem"][1]["Id"] = 3322761 -- 600万爵位勋章[3322761][属性:8][叠加:1][金币:0], 【表格】600万爵位勋章
	tChildren2020TwistedEgg_Reward[26509][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 600万爵位勋章（赠）*1
	tChildren2020TwistedEgg_Reward[26509][5]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26509][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26509][5]["RewardEffect"]["Effect"] = "task105"
	-- 3阶灵珠 - 2%
	tChildren2020TwistedEgg_Reward[26509][6] = {}
	tChildren2020TwistedEgg_Reward[26509][6]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26509][6]["ItemChance"] = 200
	tChildren2020TwistedEgg_Reward[26509][6]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26509][6]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26509][6]["RewardItem"][1]["Id"] = 4200003 -- 3阶灵珠[4200003][属性:72][叠加:99][金币:0], 【表格】3阶灵珠
	tChildren2020TwistedEgg_Reward[26509][6]["RewardItem"][1]["Attr"] = "0 1" -- 3阶灵珠*1
	tChildren2020TwistedEgg_Reward[26509][6]["RewardItem"][1]["PreciousType"] = 333 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tChildren2020TwistedEgg_Reward[26509][6]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26509][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26509][6]["RewardEffect"]["Effect"] = "task105"
	tChildren2020TwistedEgg_Reward[26509][6]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
			-- 【动态掩码（54513, data0）】全服限量:（30）, 超限给编号（12）-
	tChildren2020TwistedEgg_Reward[26509][6]["GlobalId"] = 54513
	tChildren2020TwistedEgg_Reward[26509][6]["Pos"] = 0
	tChildren2020TwistedEgg_Reward[26509][6]["MaxData"] = 30
	tChildren2020TwistedEgg_Reward[26509][6]["FullIndex"] = 12
	-- 赤炼石+3 - 7%
	tChildren2020TwistedEgg_Reward[26509][7] = {}
	tChildren2020TwistedEgg_Reward[26509][7]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26509][7]["ItemChance"] = 700
	tChildren2020TwistedEgg_Reward[26509][7]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26509][7]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26509][7]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tChildren2020TwistedEgg_Reward[26509][7]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tChildren2020TwistedEgg_Reward[26509][7]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26509][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26509][7]["RewardEffect"]["Effect"] = "task105"
	-- 修为值 - 10%
	tChildren2020TwistedEgg_Reward[26509][8] = {}
	tChildren2020TwistedEgg_Reward[26509][8]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26509][8]["ItemChance"] = 1000
	tChildren2020TwistedEgg_Reward[26509][8]["RewardRepairValue"] = {}
	tChildren2020TwistedEgg_Reward[26509][8]["RewardRepairValue"]["Value"] = 1000 -- 修为值, 【需求】修为值
	tChildren2020TwistedEgg_Reward[26509][8]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26509][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26509][8]["RewardEffect"]["Effect"] = "task106"
	-- 万能神纹精粹 - 12%
	tChildren2020TwistedEgg_Reward[26509][9] = {}
	tChildren2020TwistedEgg_Reward[26509][9]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26509][9]["ItemChance"] = 1200
	tChildren2020TwistedEgg_Reward[26509][9]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26509][9]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26509][9]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tChildren2020TwistedEgg_Reward[26509][9]["RewardItem"][1]["Attr"] = "0 15 3" -- 万能神纹精粹（赠）*15
	tChildren2020TwistedEgg_Reward[26509][9]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26509][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26509][9]["RewardEffect"]["Effect"] = "task106"
	-- 魔武通玄丹 - 6%
	tChildren2020TwistedEgg_Reward[26509][10] = {}
	tChildren2020TwistedEgg_Reward[26509][10]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26509][10]["ItemChance"] = 600
	tChildren2020TwistedEgg_Reward[26509][10]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26509][10]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26509][10]["RewardItem"][1]["Id"] = 3303373 -- 魔武通玄丹[3303373][属性:9][叠加:10000][金币:0], 【表格】魔武通玄丹
	tChildren2020TwistedEgg_Reward[26509][10]["RewardItem"][1]["Attr"] = "0 1" -- 魔武通玄丹*1
	tChildren2020TwistedEgg_Reward[26509][10]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26509][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26509][10]["RewardEffect"]["Effect"] = "task106"
	-- 龙鳞果 - 3%
	tChildren2020TwistedEgg_Reward[26509][11] = {}
	tChildren2020TwistedEgg_Reward[26509][11]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26509][11]["ItemChance"] = 300
	tChildren2020TwistedEgg_Reward[26509][11]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26509][11]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26509][11]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tChildren2020TwistedEgg_Reward[26509][11]["RewardItem"][1]["Attr"] = "0 1" -- 龙鳞果*1
	tChildren2020TwistedEgg_Reward[26509][11]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26509][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26509][11]["RewardEffect"]["Effect"] = "task106"
	-- 气力值 - 16%
	tChildren2020TwistedEgg_Reward[26509][12] = {}
	tChildren2020TwistedEgg_Reward[26509][12]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26509][12]["ItemChance"] = 1600
	tChildren2020TwistedEgg_Reward[26509][12]["RewardStrengthValue"] = {}
	tChildren2020TwistedEgg_Reward[26509][12]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】气力值
	tChildren2020TwistedEgg_Reward[26509][12]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26509][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26509][12]["RewardEffect"]["Effect"] = "task106"

	tChildren2020TwistedEgg_Reward[26510] = {}
	-- ===西语·语种扭蛋
	-- ===索引: tChildren2020TwistedEgg_Reward[26510]
	-- ===删除: 3316104,12
	-- ===LogStep: 5[4]
	-- ===
	tChildren2020TwistedEgg_Reward[26510]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tChildren2020TwistedEgg_Reward[26510]["DeleteItem"] = {}
	tChildren2020TwistedEgg_Reward[26510]["DeleteItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26510]["DeleteItem"][1]["Id"] = 3316104 -- 【库】冒险币[属性:11]
	tChildren2020TwistedEgg_Reward[26510]["DeleteItem"][1]["ItemNum"] = 12
	tChildren2020TwistedEgg_Reward[26510]["LogId"] = 12001963
	tChildren2020TwistedEgg_Reward[26510]["LogStep"] = " 5[4]"
	-- 语种限定玩具1 - 12%
	tChildren2020TwistedEgg_Reward[26510][1] = {}
	tChildren2020TwistedEgg_Reward[26510][1]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26510][1]["ItemChance"] = 1200
	tChildren2020TwistedEgg_Reward[26510][1]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26510][1]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26510][1]["RewardItem"][1]["Id"] = 3330697 -- 动感赛车（西语限定）[3330697][属性:8][叠加:10000][金币:0], 【表格】语种限定玩具1
	tChildren2020TwistedEgg_Reward[26510][1]["RewardItem"][1]["Attr"] = "0 1" -- 动感赛车（西语限定）*1
	tChildren2020TwistedEgg_Reward[26510][1]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26510][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26510][1]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26510][1]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 语种限定玩具2 - 10%
	tChildren2020TwistedEgg_Reward[26510][2] = {}
	tChildren2020TwistedEgg_Reward[26510][2]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26510][2]["ItemChance"] = 1000
	tChildren2020TwistedEgg_Reward[26510][2]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26510][2]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26510][2]["RewardItem"][1]["Id"] = 3330698 -- 斗牛瓷偶（西语限定）[3330698][属性:8][叠加:10000][金币:0], 【表格】语种限定玩具2
	tChildren2020TwistedEgg_Reward[26510][2]["RewardItem"][1]["Attr"] = "0 1" -- 斗牛瓷偶（西语限定）*1
	tChildren2020TwistedEgg_Reward[26510][2]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26510][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26510][2]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26510][2]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 语种限定玩具3 - 8%
	tChildren2020TwistedEgg_Reward[26510][3] = {}
	tChildren2020TwistedEgg_Reward[26510][3]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26510][3]["ItemChance"] = 800
	tChildren2020TwistedEgg_Reward[26510][3]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26510][3]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26510][3]["RewardItem"][1]["Id"] = 3330699 -- 马里奥手办（西语限定）[3330699][属性:8][叠加:10000][金币:0], 【表格】语种限定玩具3
	tChildren2020TwistedEgg_Reward[26510][3]["RewardItem"][1]["Attr"] = "0 1" -- 马里奥手办（西语限定）*1
	tChildren2020TwistedEgg_Reward[26510][3]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26510][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26510][3]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26510][3]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 语种限定玩具4 - 6%
	tChildren2020TwistedEgg_Reward[26510][4] = {}
	tChildren2020TwistedEgg_Reward[26510][4]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26510][4]["ItemChance"] = 600
	tChildren2020TwistedEgg_Reward[26510][4]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26510][4]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26510][4]["RewardItem"][1]["Id"] = 3330700 -- 掌上游戏机（西语限定）[3330700][属性:8][叠加:10000][金币:0], 【表格】语种限定玩具4
	tChildren2020TwistedEgg_Reward[26510][4]["RewardItem"][1]["Attr"] = "0 1" -- 掌上游戏机（西语限定）*1
	tChildren2020TwistedEgg_Reward[26510][4]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26510][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26510][4]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26510][4]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 600万爵位勋章 - 8%
	tChildren2020TwistedEgg_Reward[26510][5] = {}
	tChildren2020TwistedEgg_Reward[26510][5]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26510][5]["ItemChance"] = 800
	tChildren2020TwistedEgg_Reward[26510][5]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26510][5]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26510][5]["RewardItem"][1]["Id"] = 3322761 -- 600万爵位勋章[3322761][属性:8][叠加:1][金币:0], 【表格】600万爵位勋章
	tChildren2020TwistedEgg_Reward[26510][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 600万爵位勋章（赠）*1
	tChildren2020TwistedEgg_Reward[26510][5]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26510][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26510][5]["RewardEffect"]["Effect"] = "task105"
	-- 3阶灵珠 - 2%
	tChildren2020TwistedEgg_Reward[26510][6] = {}
	tChildren2020TwistedEgg_Reward[26510][6]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26510][6]["ItemChance"] = 200
	tChildren2020TwistedEgg_Reward[26510][6]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26510][6]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26510][6]["RewardItem"][1]["Id"] = 4200003 -- 3阶灵珠[4200003][属性:72][叠加:99][金币:0], 【表格】3阶灵珠
	tChildren2020TwistedEgg_Reward[26510][6]["RewardItem"][1]["Attr"] = "0 1" -- 3阶灵珠*1
	tChildren2020TwistedEgg_Reward[26510][6]["RewardItem"][1]["PreciousType"] = 333 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tChildren2020TwistedEgg_Reward[26510][6]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26510][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26510][6]["RewardEffect"]["Effect"] = "task105"
	tChildren2020TwistedEgg_Reward[26510][6]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
			-- 【动态掩码（54513, data0）】全服限量:（30）, 超限给编号（12）-
	tChildren2020TwistedEgg_Reward[26510][6]["GlobalId"] = 54513
	tChildren2020TwistedEgg_Reward[26510][6]["Pos"] = 0
	tChildren2020TwistedEgg_Reward[26510][6]["MaxData"] = 30
	tChildren2020TwistedEgg_Reward[26510][6]["FullIndex"] = 12
	-- 赤炼石+3 - 7%
	tChildren2020TwistedEgg_Reward[26510][7] = {}
	tChildren2020TwistedEgg_Reward[26510][7]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26510][7]["ItemChance"] = 700
	tChildren2020TwistedEgg_Reward[26510][7]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26510][7]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26510][7]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tChildren2020TwistedEgg_Reward[26510][7]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tChildren2020TwistedEgg_Reward[26510][7]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26510][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26510][7]["RewardEffect"]["Effect"] = "task105"
	-- 修为值 - 10%
	tChildren2020TwistedEgg_Reward[26510][8] = {}
	tChildren2020TwistedEgg_Reward[26510][8]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26510][8]["ItemChance"] = 1000
	tChildren2020TwistedEgg_Reward[26510][8]["RewardRepairValue"] = {}
	tChildren2020TwistedEgg_Reward[26510][8]["RewardRepairValue"]["Value"] = 1000 -- 修为值, 【需求】修为值
	tChildren2020TwistedEgg_Reward[26510][8]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26510][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26510][8]["RewardEffect"]["Effect"] = "task106"
	-- 万能神纹精粹 - 12%
	tChildren2020TwistedEgg_Reward[26510][9] = {}
	tChildren2020TwistedEgg_Reward[26510][9]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26510][9]["ItemChance"] = 1200
	tChildren2020TwistedEgg_Reward[26510][9]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26510][9]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26510][9]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tChildren2020TwistedEgg_Reward[26510][9]["RewardItem"][1]["Attr"] = "0 15 3" -- 万能神纹精粹（赠）*15
	tChildren2020TwistedEgg_Reward[26510][9]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26510][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26510][9]["RewardEffect"]["Effect"] = "task106"
	-- 魔武通玄丹 - 6%
	tChildren2020TwistedEgg_Reward[26510][10] = {}
	tChildren2020TwistedEgg_Reward[26510][10]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26510][10]["ItemChance"] = 600
	tChildren2020TwistedEgg_Reward[26510][10]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26510][10]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26510][10]["RewardItem"][1]["Id"] = 3303373 -- 魔武通玄丹[3303373][属性:9][叠加:10000][金币:0], 【表格】魔武通玄丹
	tChildren2020TwistedEgg_Reward[26510][10]["RewardItem"][1]["Attr"] = "0 1" -- 魔武通玄丹*1
	tChildren2020TwistedEgg_Reward[26510][10]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26510][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26510][10]["RewardEffect"]["Effect"] = "task106"
	-- 龙鳞果 - 3%
	tChildren2020TwistedEgg_Reward[26510][11] = {}
	tChildren2020TwistedEgg_Reward[26510][11]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26510][11]["ItemChance"] = 300
	tChildren2020TwistedEgg_Reward[26510][11]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26510][11]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26510][11]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tChildren2020TwistedEgg_Reward[26510][11]["RewardItem"][1]["Attr"] = "0 1" -- 龙鳞果*1
	tChildren2020TwistedEgg_Reward[26510][11]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26510][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26510][11]["RewardEffect"]["Effect"] = "task106"
	-- 气力值 - 16%
	tChildren2020TwistedEgg_Reward[26510][12] = {}
	tChildren2020TwistedEgg_Reward[26510][12]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26510][12]["ItemChance"] = 1600
	tChildren2020TwistedEgg_Reward[26510][12]["RewardStrengthValue"] = {}
	tChildren2020TwistedEgg_Reward[26510][12]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】气力值
	tChildren2020TwistedEgg_Reward[26510][12]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26510][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26510][12]["RewardEffect"]["Effect"] = "task106"


	tChildren2020TwistedEgg_Reward[26511] = {}
	-- ===阿语·语种扭蛋
	-- ===索引: tChildren2020TwistedEgg_Reward[26511]
	-- ===删除: 3316104,12
	-- ===LogStep: 5[5]
	-- ===
	tChildren2020TwistedEgg_Reward[26511]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tChildren2020TwistedEgg_Reward[26511]["DeleteItem"] = {}
	tChildren2020TwistedEgg_Reward[26511]["DeleteItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26511]["DeleteItem"][1]["Id"] = 3316104 -- 【库】冒险币[属性:11]
	tChildren2020TwistedEgg_Reward[26511]["DeleteItem"][1]["ItemNum"] = 12
	tChildren2020TwistedEgg_Reward[26511]["LogId"] = 12001963
	tChildren2020TwistedEgg_Reward[26511]["LogStep"] = " 5[5]"
	-- 语种限定玩具1 - 12%
	tChildren2020TwistedEgg_Reward[26511][1] = {}
	tChildren2020TwistedEgg_Reward[26511][1]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26511][1]["ItemChance"] = 1200
	tChildren2020TwistedEgg_Reward[26511][1]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26511][1]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26511][1]["RewardItem"][1]["Id"] = 3330701 -- 骆驼玩偶（阿语限定）[3330701][属性:8][叠加:10000][金币:0], 【表格】语种限定玩具1
	tChildren2020TwistedEgg_Reward[26511][1]["RewardItem"][1]["Attr"] = "0 1" -- 骆驼玩偶（阿语限定）*1
	tChildren2020TwistedEgg_Reward[26511][1]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26511][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26511][1]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26511][1]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 语种限定玩具2 - 10%
	tChildren2020TwistedEgg_Reward[26511][2] = {}
	tChildren2020TwistedEgg_Reward[26511][2]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26511][2]["ItemChance"] = 1000
	tChildren2020TwistedEgg_Reward[26511][2]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26511][2]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26511][2]["RewardItem"][1]["Id"] = 3330702 -- 梦幻神灯（阿语限定）[3330702][属性:8][叠加:10000][金币:0], 【表格】语种限定玩具2
	tChildren2020TwistedEgg_Reward[26511][2]["RewardItem"][1]["Attr"] = "0 1" -- 梦幻神灯（阿语限定）*1
	tChildren2020TwistedEgg_Reward[26511][2]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26511][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26511][2]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26511][2]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 语种限定玩具3 - 8%
	tChildren2020TwistedEgg_Reward[26511][3] = {}
	tChildren2020TwistedEgg_Reward[26511][3]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26511][3]["ItemChance"] = 800
	tChildren2020TwistedEgg_Reward[26511][3]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26511][3]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26511][3]["RewardItem"][1]["Id"] = 3330703 -- 泡泡枪（阿语限定）[3330703][属性:8][叠加:10000][金币:0], 【表格】语种限定玩具3
	tChildren2020TwistedEgg_Reward[26511][3]["RewardItem"][1]["Attr"] = "0 1" -- 泡泡枪（阿语限定）*1
	tChildren2020TwistedEgg_Reward[26511][3]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26511][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26511][3]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26511][3]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 语种限定玩具4 - 6%
	tChildren2020TwistedEgg_Reward[26511][4] = {}
	tChildren2020TwistedEgg_Reward[26511][4]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26511][4]["ItemChance"] = 600
	tChildren2020TwistedEgg_Reward[26511][4]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26511][4]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26511][4]["RewardItem"][1]["Id"] = 3330704 -- 变形金刚（阿语限定）[3330704][属性:8][叠加:10000][金币:0], 【表格】语种限定玩具4
	tChildren2020TwistedEgg_Reward[26511][4]["RewardItem"][1]["Attr"] = "0 1" -- 变形金刚（阿语限定）*1
	tChildren2020TwistedEgg_Reward[26511][4]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26511][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26511][4]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_Reward[26511][4]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 600万爵位勋章 - 8%
	tChildren2020TwistedEgg_Reward[26511][5] = {}
	tChildren2020TwistedEgg_Reward[26511][5]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26511][5]["ItemChance"] = 800
	tChildren2020TwistedEgg_Reward[26511][5]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26511][5]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26511][5]["RewardItem"][1]["Id"] = 3322761 -- 600万爵位勋章[3322761][属性:8][叠加:1][金币:0], 【表格】600万爵位勋章
	tChildren2020TwistedEgg_Reward[26511][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 600万爵位勋章（赠）*1
	tChildren2020TwistedEgg_Reward[26511][5]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26511][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26511][5]["RewardEffect"]["Effect"] = "task105"
	-- 3阶灵珠 - 2%
	tChildren2020TwistedEgg_Reward[26511][6] = {}
	tChildren2020TwistedEgg_Reward[26511][6]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26511][6]["ItemChance"] = 200
	tChildren2020TwistedEgg_Reward[26511][6]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26511][6]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26511][6]["RewardItem"][1]["Id"] = 4200003 -- 3阶灵珠[4200003][属性:72][叠加:99][金币:0], 【表格】3阶灵珠
	tChildren2020TwistedEgg_Reward[26511][6]["RewardItem"][1]["Attr"] = "0 1" -- 3阶灵珠*1
	tChildren2020TwistedEgg_Reward[26511][6]["RewardItem"][1]["PreciousType"] = 333 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tChildren2020TwistedEgg_Reward[26511][6]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26511][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26511][6]["RewardEffect"]["Effect"] = "task105"
	tChildren2020TwistedEgg_Reward[26511][6]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
			-- 【动态掩码（54513, data0）】全服限量:（30）, 超限给编号（12）-
	tChildren2020TwistedEgg_Reward[26511][6]["GlobalId"] = 54513
	tChildren2020TwistedEgg_Reward[26511][6]["Pos"] = 0
	tChildren2020TwistedEgg_Reward[26511][6]["MaxData"] = 30
	tChildren2020TwistedEgg_Reward[26511][6]["FullIndex"] = 12
	-- 赤炼石+3 - 7%
	tChildren2020TwistedEgg_Reward[26511][7] = {}
	tChildren2020TwistedEgg_Reward[26511][7]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26511][7]["ItemChance"] = 700
	tChildren2020TwistedEgg_Reward[26511][7]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26511][7]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26511][7]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tChildren2020TwistedEgg_Reward[26511][7]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tChildren2020TwistedEgg_Reward[26511][7]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26511][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26511][7]["RewardEffect"]["Effect"] = "task105"
	-- 修为值 - 10%
	tChildren2020TwistedEgg_Reward[26511][8] = {}
	tChildren2020TwistedEgg_Reward[26511][8]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26511][8]["ItemChance"] = 1000
	tChildren2020TwistedEgg_Reward[26511][8]["RewardRepairValue"] = {}
	tChildren2020TwistedEgg_Reward[26511][8]["RewardRepairValue"]["Value"] = 1000 -- 修为值, 【需求】修为值
	tChildren2020TwistedEgg_Reward[26511][8]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26511][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26511][8]["RewardEffect"]["Effect"] = "task106"
	-- 万能神纹精粹 - 12%
	tChildren2020TwistedEgg_Reward[26511][9] = {}
	tChildren2020TwistedEgg_Reward[26511][9]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26511][9]["ItemChance"] = 1200
	tChildren2020TwistedEgg_Reward[26511][9]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26511][9]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26511][9]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tChildren2020TwistedEgg_Reward[26511][9]["RewardItem"][1]["Attr"] = "0 15 3" -- 万能神纹精粹（赠）*15
	tChildren2020TwistedEgg_Reward[26511][9]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26511][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26511][9]["RewardEffect"]["Effect"] = "task106"
	-- 魔武通玄丹 - 6%
	tChildren2020TwistedEgg_Reward[26511][10] = {}
	tChildren2020TwistedEgg_Reward[26511][10]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26511][10]["ItemChance"] = 600
	tChildren2020TwistedEgg_Reward[26511][10]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26511][10]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26511][10]["RewardItem"][1]["Id"] = 3303373 -- 魔武通玄丹[3303373][属性:9][叠加:10000][金币:0], 【表格】魔武通玄丹
	tChildren2020TwistedEgg_Reward[26511][10]["RewardItem"][1]["Attr"] = "0 1" -- 魔武通玄丹*1
	tChildren2020TwistedEgg_Reward[26511][10]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26511][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26511][10]["RewardEffect"]["Effect"] = "task106"
	-- 龙鳞果 - 3%
	tChildren2020TwistedEgg_Reward[26511][11] = {}
	tChildren2020TwistedEgg_Reward[26511][11]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26511][11]["ItemChance"] = 300
	tChildren2020TwistedEgg_Reward[26511][11]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[26511][11]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[26511][11]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tChildren2020TwistedEgg_Reward[26511][11]["RewardItem"][1]["Attr"] = "0 1" -- 龙鳞果*1
	tChildren2020TwistedEgg_Reward[26511][11]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26511][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26511][11]["RewardEffect"]["Effect"] = "task106"
	-- 气力值 - 16%
	tChildren2020TwistedEgg_Reward[26511][12] = {}
	tChildren2020TwistedEgg_Reward[26511][12]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_Reward[26511][12]["ItemChance"] = 1600
	tChildren2020TwistedEgg_Reward[26511][12]["RewardStrengthValue"] = {}
	tChildren2020TwistedEgg_Reward[26511][12]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】气力值
	tChildren2020TwistedEgg_Reward[26511][12]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[26511][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[26511][12]["RewardEffect"]["Effect"] = "task106"

	
	tChildren2020TwistedEgg_Reward["JiuGong"] = {}
	-- ===九宫彩玉·36秒以内完成
	-- ===索引: tChildren2020TwistedEgg_Reward["JiuGong"][1]
	-- ===LogStep: 5[6]
	-- ===
	tChildren2020TwistedEgg_Reward["JiuGong"][1] = {}
	tChildren2020TwistedEgg_Reward["JiuGong"][1]["LogId"] = 12001963
	tChildren2020TwistedEgg_Reward["JiuGong"][1]["LogStep"] = "5[6]"
	tChildren2020TwistedEgg_Reward["JiuGong"][1]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward["JiuGong"][1]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward["JiuGong"][1]["RewardItem"][1]["Id"] = 3316104 -- 冒险币[3316104][属性:11][叠加:10000][金币:0], 【表格】冒险币
	tChildren2020TwistedEgg_Reward["JiuGong"][1]["RewardItem"][1]["Attr"] = "0 15" -- 冒险币*15（[错误]物品数量超10个）
	tChildren2020TwistedEgg_Reward["JiuGong"][1]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward["JiuGong"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward["JiuGong"][1]["RewardEffect"]["Effect"] = "angelwing"


	tChildren2020TwistedEgg_Reward["JiuGong"][2] = {}
	-- ===九宫彩玉·42秒以内完成
	-- ===索引: tChildren2020TwistedEgg_Reward["JiuGong"][2]
	-- ===LogStep: 5[6]
	-- ===
	tChildren2020TwistedEgg_Reward["JiuGong"][2]["LogId"] = 12001963
	tChildren2020TwistedEgg_Reward["JiuGong"][2]["LogStep"] = "5[6]"
	tChildren2020TwistedEgg_Reward["JiuGong"][2]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward["JiuGong"][2]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward["JiuGong"][2]["RewardItem"][1]["Id"] = 3316104 -- 冒险币[3316104][属性:11][叠加:10000][金币:0], 【表格】冒险币
	tChildren2020TwistedEgg_Reward["JiuGong"][2]["RewardItem"][1]["Attr"] = "0 12" -- 冒险币*12（[错误]物品数量超10个）
	tChildren2020TwistedEgg_Reward["JiuGong"][2]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward["JiuGong"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward["JiuGong"][2]["RewardEffect"]["Effect"] = "angelwing"


	tChildren2020TwistedEgg_Reward["JiuGong"][3] = {}
	-- ===九宫彩玉·50秒以内完成
	-- ===索引: tChildren2020TwistedEgg_Reward["JiuGong"][3]
	-- ===LogStep: 5[6]
	-- ===
	tChildren2020TwistedEgg_Reward["JiuGong"][3]["LogId"] = 12001963
	tChildren2020TwistedEgg_Reward["JiuGong"][3]["LogStep"] = "5[6]"
	tChildren2020TwistedEgg_Reward["JiuGong"][3]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward["JiuGong"][3]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward["JiuGong"][3]["RewardItem"][1]["Id"] = 3316104 -- 冒险币[3316104][属性:11][叠加:10000][金币:0], 【表格】冒险币
	tChildren2020TwistedEgg_Reward["JiuGong"][3]["RewardItem"][1]["Attr"] = "0 10" -- 冒险币*10
	tChildren2020TwistedEgg_Reward["JiuGong"][3]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward["JiuGong"][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward["JiuGong"][3]["RewardEffect"]["Effect"] = "angelwing"


	tChildren2020TwistedEgg_Reward["JiuGong"][4] = {}
	-- ===九宫彩玉·60秒以内完成
	-- ===索引: tChildren2020TwistedEgg_Reward["JiuGong"][4]
	-- ===LogStep: 5[6]
	-- ===
	tChildren2020TwistedEgg_Reward["JiuGong"][4]["LogId"] = 12001963
	tChildren2020TwistedEgg_Reward["JiuGong"][4]["LogStep"] = "5[6]"
	tChildren2020TwistedEgg_Reward["JiuGong"][4]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward["JiuGong"][4]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward["JiuGong"][4]["RewardItem"][1]["Id"] = 3316104 -- 冒险币[3316104][属性:11][叠加:10000][金币:0], 【表格】冒险币
	tChildren2020TwistedEgg_Reward["JiuGong"][4]["RewardItem"][1]["Attr"] = "0 8" -- 冒险币*8
	tChildren2020TwistedEgg_Reward["JiuGong"][4]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward["JiuGong"][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward["JiuGong"][4]["RewardEffect"]["Effect"] = "angelwing"

	tChildren2020TwistedEgg_Reward["JiuGong"][5] = {}
	-- ===九宫彩玉·超过60秒
	-- ===索引: tChildren2020TwistedEgg_Reward["JiuGong"][5]
	-- ===LogStep: 5[6]
	-- ===
	tChildren2020TwistedEgg_Reward["JiuGong"][5]["LogId"] = 12001963
	tChildren2020TwistedEgg_Reward["JiuGong"][5]["LogStep"] = "5[6]"
	tChildren2020TwistedEgg_Reward["JiuGong"][5]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward["JiuGong"][5]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward["JiuGong"][5]["RewardItem"][1]["Id"] = 3316104 -- 冒险币[3316104][属性:11][叠加:10000][金币:0], 【表格】冒险币
	tChildren2020TwistedEgg_Reward["JiuGong"][5]["RewardItem"][1]["Attr"] = "0 7" -- 冒险币*7
	tChildren2020TwistedEgg_Reward["JiuGong"][5]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward["JiuGong"][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward["JiuGong"][5]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tChildren2020TwistedEgg_Reward["YaoJing"] = {}
	-- ===妖精快跑·40秒以内
	-- ===索引: tChildren2020TwistedEgg_Reward["YaoJing"][1]
	-- ===LogStep: 5[7]
	-- ===
	tChildren2020TwistedEgg_Reward["YaoJing"][1] = {}
	tChildren2020TwistedEgg_Reward["YaoJing"][1]["LogId"] = 12001963
	tChildren2020TwistedEgg_Reward["YaoJing"][1]["LogStep"] = "5[7]"
	tChildren2020TwistedEgg_Reward["YaoJing"][1]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward["YaoJing"][1]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward["YaoJing"][1]["RewardItem"][1]["Id"] = 3316104 -- 冒险币[3316104][属性:11][叠加:10000][金币:0], 【表格】冒险币
	tChildren2020TwistedEgg_Reward["YaoJing"][1]["RewardItem"][1]["Attr"] = "0 15" -- 冒险币*15（[错误]物品数量超10个）
	tChildren2020TwistedEgg_Reward["YaoJing"][1]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward["YaoJing"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward["YaoJing"][1]["RewardEffect"]["Effect"] = "angelwing"


	tChildren2020TwistedEgg_Reward["YaoJing"][2] = {}
	-- ===妖精快跑·48秒以内
	-- ===索引: tChildren2020TwistedEgg_Reward["YaoJing"][2]
	-- ===LogStep: 5[7]
	-- ===
	tChildren2020TwistedEgg_Reward["YaoJing"][2]["LogId"] = 12001963
	tChildren2020TwistedEgg_Reward["YaoJing"][2]["LogStep"] = "5[7]"
	tChildren2020TwistedEgg_Reward["YaoJing"][2]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward["YaoJing"][2]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward["YaoJing"][2]["RewardItem"][1]["Id"] = 3316104 -- 冒险币[3316104][属性:11][叠加:10000][金币:0], 【表格】冒险币
	tChildren2020TwistedEgg_Reward["YaoJing"][2]["RewardItem"][1]["Attr"] = "0 12" -- 冒险币*12（[错误]物品数量超10个）
	tChildren2020TwistedEgg_Reward["YaoJing"][2]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward["YaoJing"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward["YaoJing"][2]["RewardEffect"]["Effect"] = "angelwing"


	tChildren2020TwistedEgg_Reward["YaoJing"][3] = {}
	-- ===妖精快跑·55秒以内
	-- ===索引: tChildren2020TwistedEgg_Reward["YaoJing"][3]
	-- ===LogStep: 5[7]
	-- ===
	tChildren2020TwistedEgg_Reward["YaoJing"][3]["LogId"] = 12001963
	tChildren2020TwistedEgg_Reward["YaoJing"][3]["LogStep"] = "5[7]"
	tChildren2020TwistedEgg_Reward["YaoJing"][3]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward["YaoJing"][3]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward["YaoJing"][3]["RewardItem"][1]["Id"] = 3316104 -- 冒险币[3316104][属性:11][叠加:10000][金币:0], 【表格】冒险币
	tChildren2020TwistedEgg_Reward["YaoJing"][3]["RewardItem"][1]["Attr"] = "0 10" -- 冒险币*10
	tChildren2020TwistedEgg_Reward["YaoJing"][3]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward["YaoJing"][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward["YaoJing"][3]["RewardEffect"]["Effect"] = "angelwing"


	tChildren2020TwistedEgg_Reward["YaoJing"][4] = {}
	-- ===妖精快跑·70秒以内
	-- ===索引: tChildren2020TwistedEgg_Reward["YaoJing"][4]
	-- ===LogStep: 5[7]
	-- ===
	tChildren2020TwistedEgg_Reward["YaoJing"][4]["LogId"] = 12001963
	tChildren2020TwistedEgg_Reward["YaoJing"][4]["LogStep"] = "5[7]"
	tChildren2020TwistedEgg_Reward["YaoJing"][4]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward["YaoJing"][4]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward["YaoJing"][4]["RewardItem"][1]["Id"] = 3316104 -- 冒险币[3316104][属性:11][叠加:10000][金币:0], 【表格】冒险币
	tChildren2020TwistedEgg_Reward["YaoJing"][4]["RewardItem"][1]["Attr"] = "0 8" -- 冒险币*8
	tChildren2020TwistedEgg_Reward["YaoJing"][4]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward["YaoJing"][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward["YaoJing"][4]["RewardEffect"]["Effect"] = "angelwing"


	tChildren2020TwistedEgg_Reward["YaoJing"][5] = {}
	-- ===妖精快跑·超过70秒
	-- ===索引: tChildren2020TwistedEgg_Reward["YaoJing"][5]
	-- ===LogStep: 5[7]
	-- ===
	tChildren2020TwistedEgg_Reward["YaoJing"][5]["LogId"] = 12001963
	tChildren2020TwistedEgg_Reward["YaoJing"][5]["LogStep"] = "5[7]"
	tChildren2020TwistedEgg_Reward["YaoJing"][5]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward["YaoJing"][5]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward["YaoJing"][5]["RewardItem"][1]["Id"] = 3316104 -- 冒险币[3316104][属性:11][叠加:10000][金币:0], 【表格】冒险币
	tChildren2020TwistedEgg_Reward["YaoJing"][5]["RewardItem"][1]["Attr"] = "0 7" -- 冒险币*7
	tChildren2020TwistedEgg_Reward["YaoJing"][5]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward["YaoJing"][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward["YaoJing"][5]["RewardEffect"]["Effect"] = "angelwing"

	tChildren2020TwistedEgg_Reward[3330712]= {}
	-- ==补领玩具箱
	-- ===索引: tChildren2020TwistedEgg_Reward[3330712]= {}
	-- ===LogStep: 5[7]
	-- ===
	tChildren2020TwistedEgg_Reward[3330712]["LogId"] = 12001963
	tChildren2020TwistedEgg_Reward[3330712]["LogStep"] = "5[7]"
	tChildren2020TwistedEgg_Reward[3330712]["RewardItem"] = {}
	tChildren2020TwistedEgg_Reward[3330712]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_Reward[3330712]["RewardItem"][1]["Id"] = 3330712 -- 童趣玩具箱[3330712][属性:11][叠加:0][金币:0], 【表格】童趣玩具箱
	tChildren2020TwistedEgg_Reward[3330712]["RewardItem"][1]["Attr"] = "0 1" -- 童趣玩具箱
	tChildren2020TwistedEgg_Reward[3330712]["RewardEffect"] = {}
	tChildren2020TwistedEgg_Reward[3330712]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_Reward[3330712]["RewardEffect"]["Effect"] = "angelwing"

	-----------------直接扣天石走的奖励表
local tChildren2020TwistedEgg_RewardByEmoney = {}
	-- ===普通扭蛋
	-- ===索引: tChildren2020TwistedEgg_RewardByEmoney[26507]
	-- ===删除: 3316104,10
	-- ===LogStep: 5[1]
	-- ===
	tChildren2020TwistedEgg_RewardByEmoney[26507] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tChildren2020TwistedEgg_RewardByEmoney[26507]["LogId"] = 12001963
	tChildren2020TwistedEgg_RewardByEmoney[26507]["LogStep"] = " 5[1]"
	-- 征服限定玩具1 - 3%
	tChildren2020TwistedEgg_RewardByEmoney[26507][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][1]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26507][1]["ItemChance"] = 300
	tChildren2020TwistedEgg_RewardByEmoney[26507][1]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][1]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][1]["RewardItem"][1]["Id"] = 3330685 -- 【玩具名】（征服限定）1[3330685][属性:9][叠加:0][金币:0], 【表格】征服限定玩具1
	tChildren2020TwistedEgg_RewardByEmoney[26507][1]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（征服限定）1*1
	tChildren2020TwistedEgg_RewardByEmoney[26507][1]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26507][1]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26507][1]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 征服限定玩具2 - 3%
	tChildren2020TwistedEgg_RewardByEmoney[26507][2] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][2]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26507][2]["ItemChance"] = 300
	tChildren2020TwistedEgg_RewardByEmoney[26507][2]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][2]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][2]["RewardItem"][1]["Id"] = 3330686 -- 【玩具名】（征服限定）2[3330686][属性:9][叠加:0][金币:0], 【表格】征服限定玩具2
	tChildren2020TwistedEgg_RewardByEmoney[26507][2]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（征服限定）2*1
	tChildren2020TwistedEgg_RewardByEmoney[26507][2]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26507][2]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26507][2]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 征服限定玩具3 - 3%
	tChildren2020TwistedEgg_RewardByEmoney[26507][3] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][3]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26507][3]["ItemChance"] = 300
	tChildren2020TwistedEgg_RewardByEmoney[26507][3]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][3]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][3]["RewardItem"][1]["Id"] = 3330687 -- 【玩具名】（征服限定）3[3330687][属性:9][叠加:0][金币:0], 【表格】征服限定玩具3
	tChildren2020TwistedEgg_RewardByEmoney[26507][3]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（征服限定）3*1
	tChildren2020TwistedEgg_RewardByEmoney[26507][3]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26507][3]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26507][3]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 征服限定玩具4 - 3%
	tChildren2020TwistedEgg_RewardByEmoney[26507][4] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][4]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26507][4]["ItemChance"] = 300
	tChildren2020TwistedEgg_RewardByEmoney[26507][4]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][4]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][4]["RewardItem"][1]["Id"] = 3330688 -- 【玩具名】（征服限定）4[3330688][属性:9][叠加:0][金币:0], 【表格】征服限定玩具4
	tChildren2020TwistedEgg_RewardByEmoney[26507][4]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（征服限定）4*1
	tChildren2020TwistedEgg_RewardByEmoney[26507][4]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26507][4]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26507][4]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 华语限定玩具1 - 2%
	tChildren2020TwistedEgg_RewardByEmoney[26507][5] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][5]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26507][5]["ItemChance"] = 200
	tChildren2020TwistedEgg_RewardByEmoney[26507][5]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][5]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][5]["RewardItem"][1]["Id"] = 3330689 -- 【玩具名】（华语限定）1[3330689][属性:9][叠加:0][金币:0], 【表格】华语限定玩具1
	tChildren2020TwistedEgg_RewardByEmoney[26507][5]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（华语限定）1*1
	tChildren2020TwistedEgg_RewardByEmoney[26507][5]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26507][5]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26507][5]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 华语限定玩具2 - 1.65%
	tChildren2020TwistedEgg_RewardByEmoney[26507][6] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][6]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26507][6]["ItemChance"] = 165
	tChildren2020TwistedEgg_RewardByEmoney[26507][6]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][6]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][6]["RewardItem"][1]["Id"] = 3330690 -- 【玩具名】（华语限定）2[3330690][属性:9][叠加:0][金币:0], 【表格】华语限定玩具2
	tChildren2020TwistedEgg_RewardByEmoney[26507][6]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（华语限定）2*1
	tChildren2020TwistedEgg_RewardByEmoney[26507][6]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26507][6]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26507][6]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 华语限定玩具3 - 1.35%
	tChildren2020TwistedEgg_RewardByEmoney[26507][7] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][7]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26507][7]["ItemChance"] = 135
	tChildren2020TwistedEgg_RewardByEmoney[26507][7]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][7]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][7]["RewardItem"][1]["Id"] = 3330691 -- 【玩具名】（华语限定）3[3330691][属性:9][叠加:0][金币:0], 【表格】华语限定玩具3
	tChildren2020TwistedEgg_RewardByEmoney[26507][7]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（华语限定）3*1
	tChildren2020TwistedEgg_RewardByEmoney[26507][7]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26507][7]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26507][7]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 华语限定玩具4 - 1%
	tChildren2020TwistedEgg_RewardByEmoney[26507][8] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][8]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26507][8]["ItemChance"] = 100
	tChildren2020TwistedEgg_RewardByEmoney[26507][8]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][8]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][8]["RewardItem"][1]["Id"] = 3330692 -- 【玩具名】（华语限定）4[3330692][属性:9][叠加:0][金币:0], 【表格】华语限定玩具4
	tChildren2020TwistedEgg_RewardByEmoney[26507][8]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（华语限定）4*1
	tChildren2020TwistedEgg_RewardByEmoney[26507][8]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26507][8]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26507][8]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 英语限定玩具1 - 2%
	tChildren2020TwistedEgg_RewardByEmoney[26507][9] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][9]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26507][9]["ItemChance"] = 200
	tChildren2020TwistedEgg_RewardByEmoney[26507][9]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][9]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][9]["RewardItem"][1]["Id"] = 3330693 -- 【玩具名】（英语限定）1[3330693][属性:9][叠加:0][金币:0], 【表格】英语限定玩具1
	tChildren2020TwistedEgg_RewardByEmoney[26507][9]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（英语限定）1*1
	tChildren2020TwistedEgg_RewardByEmoney[26507][9]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26507][9]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26507][9]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 英语限定玩具2 - 1.65%
	tChildren2020TwistedEgg_RewardByEmoney[26507][10] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][10]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26507][10]["ItemChance"] = 165
	tChildren2020TwistedEgg_RewardByEmoney[26507][10]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][10]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][10]["RewardItem"][1]["Id"] = 3330694 -- 【玩具名】（英语限定）2[3330694][属性:9][叠加:0][金币:0], 【表格】英语限定玩具2
	tChildren2020TwistedEgg_RewardByEmoney[26507][10]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（英语限定）2*1
	tChildren2020TwistedEgg_RewardByEmoney[26507][10]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26507][10]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26507][10]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 英语限定玩具3 - 1.35%
	tChildren2020TwistedEgg_RewardByEmoney[26507][11] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][11]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26507][11]["ItemChance"] = 135
	tChildren2020TwistedEgg_RewardByEmoney[26507][11]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][11]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][11]["RewardItem"][1]["Id"] = 3330695 -- 【玩具名】（英语限定）3[3330695][属性:9][叠加:0][金币:0], 【表格】英语限定玩具3
	tChildren2020TwistedEgg_RewardByEmoney[26507][11]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（英语限定）3*1
	tChildren2020TwistedEgg_RewardByEmoney[26507][11]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26507][11]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26507][11]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 英语限定玩具4 - 1%
	tChildren2020TwistedEgg_RewardByEmoney[26507][12] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][12]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26507][12]["ItemChance"] = 100
	tChildren2020TwistedEgg_RewardByEmoney[26507][12]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][12]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][12]["RewardItem"][1]["Id"] = 3330696 -- 【玩具名】（英语限定）4[3330696][属性:9][叠加:0][金币:0], 【表格】英语限定玩具4
	tChildren2020TwistedEgg_RewardByEmoney[26507][12]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（英语限定）4*1
	tChildren2020TwistedEgg_RewardByEmoney[26507][12]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26507][12]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26507][12]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 西语限定玩具1 - 2%
	tChildren2020TwistedEgg_RewardByEmoney[26507][13] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][13]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26507][13]["ItemChance"] = 200
	tChildren2020TwistedEgg_RewardByEmoney[26507][13]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][13]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][13]["RewardItem"][1]["Id"] = 3330697 -- 【玩具名】（西语限定）1[3330697][属性:9][叠加:0][金币:0], 【表格】西语限定玩具1
	tChildren2020TwistedEgg_RewardByEmoney[26507][13]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（西语限定）1*1
	tChildren2020TwistedEgg_RewardByEmoney[26507][13]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26507][13]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26507][13]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 西语限定玩具2 - 1.65%
	tChildren2020TwistedEgg_RewardByEmoney[26507][14] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][14]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26507][14]["ItemChance"] = 165
	tChildren2020TwistedEgg_RewardByEmoney[26507][14]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][14]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][14]["RewardItem"][1]["Id"] = 3330698 -- 【玩具名】（西语限定）2[3330698][属性:9][叠加:0][金币:0], 【表格】西语限定玩具2
	tChildren2020TwistedEgg_RewardByEmoney[26507][14]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（西语限定）2*1
	tChildren2020TwistedEgg_RewardByEmoney[26507][14]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26507][14]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26507][14]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 西语限定玩具3 - 1.35%
	tChildren2020TwistedEgg_RewardByEmoney[26507][15] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][15]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26507][15]["ItemChance"] = 135
	tChildren2020TwistedEgg_RewardByEmoney[26507][15]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][15]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][15]["RewardItem"][1]["Id"] = 3330699 -- 【玩具名】（西语限定）3[3330699][属性:9][叠加:0][金币:0], 【表格】西语限定玩具3
	tChildren2020TwistedEgg_RewardByEmoney[26507][15]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（西语限定）3*1
	tChildren2020TwistedEgg_RewardByEmoney[26507][15]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26507][15]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26507][15]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 西语限定玩具4 - 1%
	tChildren2020TwistedEgg_RewardByEmoney[26507][16] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][16]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26507][16]["ItemChance"] = 100
	tChildren2020TwistedEgg_RewardByEmoney[26507][16]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][16]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][16]["RewardItem"][1]["Id"] = 3330700 -- 【玩具名】（西语限定）4[3330700][属性:9][叠加:0][金币:0], 【表格】西语限定玩具4
	tChildren2020TwistedEgg_RewardByEmoney[26507][16]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（西语限定）4*1
	tChildren2020TwistedEgg_RewardByEmoney[26507][16]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26507][16]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26507][16]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 阿语限定玩具1 - 2%
	tChildren2020TwistedEgg_RewardByEmoney[26507][17] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][17]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26507][17]["ItemChance"] = 200
	tChildren2020TwistedEgg_RewardByEmoney[26507][17]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][17]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][17]["RewardItem"][1]["Id"] = 3330701 -- 【玩具名】（阿语限定）1[3330701][属性:9][叠加:0][金币:0], 【表格】阿语限定玩具1
	tChildren2020TwistedEgg_RewardByEmoney[26507][17]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（阿语限定）1*1
	tChildren2020TwistedEgg_RewardByEmoney[26507][17]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26507][17]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26507][17]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 阿语限定玩具2 - 1.65%
	tChildren2020TwistedEgg_RewardByEmoney[26507][18] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][18]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26507][18]["ItemChance"] = 165
	tChildren2020TwistedEgg_RewardByEmoney[26507][18]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][18]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][18]["RewardItem"][1]["Id"] = 3330702 -- 【玩具名】（阿语限定）2[3330702][属性:9][叠加:0][金币:0], 【表格】阿语限定玩具2
	tChildren2020TwistedEgg_RewardByEmoney[26507][18]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（阿语限定）2*1
	tChildren2020TwistedEgg_RewardByEmoney[26507][18]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26507][18]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26507][18]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 阿语限定玩具3 - 1.35%
	tChildren2020TwistedEgg_RewardByEmoney[26507][19] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][19]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26507][19]["ItemChance"] = 135
	tChildren2020TwistedEgg_RewardByEmoney[26507][19]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][19]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][19]["RewardItem"][1]["Id"] = 3330703 -- 【玩具名】（阿语限定）3[3330703][属性:9][叠加:0][金币:0], 【表格】阿语限定玩具3
	tChildren2020TwistedEgg_RewardByEmoney[26507][19]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（阿语限定）3*1
	tChildren2020TwistedEgg_RewardByEmoney[26507][19]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26507][19]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26507][19]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 阿语限定玩具4 - 1%
	tChildren2020TwistedEgg_RewardByEmoney[26507][20] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][20]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26507][20]["ItemChance"] = 100
	tChildren2020TwistedEgg_RewardByEmoney[26507][20]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][20]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][20]["RewardItem"][1]["Id"] = 3330704 -- 【玩具名】（阿语限定）4[3330704][属性:9][叠加:0][金币:0], 【表格】阿语限定玩具4
	tChildren2020TwistedEgg_RewardByEmoney[26507][20]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（阿语限定）4*1
	tChildren2020TwistedEgg_RewardByEmoney[26507][20]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26507][20]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26507][20]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
	-- 600万爵位勋章 - 8%
	tChildren2020TwistedEgg_RewardByEmoney[26507][21] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][21]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26507][21]["ItemChance"] = 800
	tChildren2020TwistedEgg_RewardByEmoney[26507][21]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][21]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][21]["RewardItem"][1]["Id"] = 3322761 -- 600万爵位勋章[3322761][属性:8][叠加:1][金币:0], 【表格】600万爵位勋章
	tChildren2020TwistedEgg_RewardByEmoney[26507][21]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 600万爵位勋章（赠）*1
	tChildren2020TwistedEgg_RewardByEmoney[26507][21]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26507][21]["RewardEffect"]["Effect"] = "task105"
	-- 3阶灵珠 - 2%
	tChildren2020TwistedEgg_RewardByEmoney[26507][22] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][22]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26507][22]["ItemChance"] = 200
	tChildren2020TwistedEgg_RewardByEmoney[26507][22]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][22]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][22]["RewardItem"][1]["Id"] = 4200003 -- 3阶灵珠[4200003][属性:72][叠加:99][金币:0], 【表格】3阶灵珠
	tChildren2020TwistedEgg_RewardByEmoney[26507][22]["RewardItem"][1]["Attr"] = "0 1" -- 3阶灵珠*1
	tChildren2020TwistedEgg_RewardByEmoney[26507][22]["RewardItem"][1]["PreciousType"] = 333 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tChildren2020TwistedEgg_RewardByEmoney[26507][22]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26507][22]["RewardEffect"]["Effect"] = "task105"
	tChildren2020TwistedEgg_RewardByEmoney[26507][22]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
			-- 【动态掩码（54513, data0）】全服限量:（30）, 超限给编号（28）-
	tChildren2020TwistedEgg_RewardByEmoney[26507][22]["GlobalId"] = 54513
	tChildren2020TwistedEgg_RewardByEmoney[26507][22]["Pos"] = 0
	tChildren2020TwistedEgg_RewardByEmoney[26507][22]["MaxData"] = 30
	tChildren2020TwistedEgg_RewardByEmoney[26507][22]["FullIndex"] = 28
	-- 赤炼石+3 - 7%
	tChildren2020TwistedEgg_RewardByEmoney[26507][23] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][23]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26507][23]["ItemChance"] = 700
	tChildren2020TwistedEgg_RewardByEmoney[26507][23]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][23]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][23]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tChildren2020TwistedEgg_RewardByEmoney[26507][23]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tChildren2020TwistedEgg_RewardByEmoney[26507][23]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26507][23]["RewardEffect"]["Effect"] = "task105"
	-- 修为值 - 10%
	tChildren2020TwistedEgg_RewardByEmoney[26507][24] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][24]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26507][24]["ItemChance"] = 1000
	tChildren2020TwistedEgg_RewardByEmoney[26507][24]["RewardRepairValue"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][24]["RewardRepairValue"]["Value"] = 1000 -- 修为值, 【需求】修为值
	tChildren2020TwistedEgg_RewardByEmoney[26507][24]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26507][24]["RewardEffect"]["Effect"] = "task106"
	-- 万能神纹精粹 - 12%
	tChildren2020TwistedEgg_RewardByEmoney[26507][25] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][25]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26507][25]["ItemChance"] = 1200
	tChildren2020TwistedEgg_RewardByEmoney[26507][25]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][25]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][25]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tChildren2020TwistedEgg_RewardByEmoney[26507][25]["RewardItem"][1]["Attr"] = "0 15 3" -- 万能神纹精粹*15
	tChildren2020TwistedEgg_RewardByEmoney[26507][25]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26507][25]["RewardEffect"]["Effect"] = "task106"
	-- 魔武通玄丹 - 6%
	tChildren2020TwistedEgg_RewardByEmoney[26507][26] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][26]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26507][26]["ItemChance"] = 600
	tChildren2020TwistedEgg_RewardByEmoney[26507][26]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][26]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][26]["RewardItem"][1]["Id"] = 3303373 -- 魔武通玄丹[3303373][属性:9][叠加:10000][金币:0], 【表格】魔武通玄丹
	tChildren2020TwistedEgg_RewardByEmoney[26507][26]["RewardItem"][1]["Attr"] = "0 1" -- 魔武通玄丹*1
	tChildren2020TwistedEgg_RewardByEmoney[26507][26]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26507][26]["RewardEffect"]["Effect"] = "task106"
	-- 龙鳞果 - 3%
	tChildren2020TwistedEgg_RewardByEmoney[26507][27] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][27]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26507][27]["ItemChance"] = 300
	tChildren2020TwistedEgg_RewardByEmoney[26507][27]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][27]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][27]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tChildren2020TwistedEgg_RewardByEmoney[26507][27]["RewardItem"][1]["Attr"] = "0 1" -- 龙鳞果*1
	tChildren2020TwistedEgg_RewardByEmoney[26507][27]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26507][27]["RewardEffect"]["Effect"] = "task105"
	-- 气力值 - 16%
	tChildren2020TwistedEgg_RewardByEmoney[26507][28] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][28]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26507][28]["ItemChance"] = 1600
	tChildren2020TwistedEgg_RewardByEmoney[26507][28]["RewardStrengthValue"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][28]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】气力值
	tChildren2020TwistedEgg_RewardByEmoney[26507][28]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26507][28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26507][28]["RewardEffect"]["Effect"] = "task106"


	tChildren2020TwistedEgg_RewardByEmoney[26508] = {}
	-- ===华语·语种扭蛋
	-- ===索引: tChildren2020TwistedEgg_RewardByEmoney[26508]
	-- ===删除: 3316104,12
	-- ===LogStep: 5[2]
	-- ===
	tChildren2020TwistedEgg_RewardByEmoney[26508]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tChildren2020TwistedEgg_RewardByEmoney[26508]["LogId"] = 12001963
	tChildren2020TwistedEgg_RewardByEmoney[26508]["LogStep"] = " 5[2]"
	-- 语种限定玩具1 - 12%
	tChildren2020TwistedEgg_RewardByEmoney[26508][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][1]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26508][1]["ItemChance"] = 1200
	tChildren2020TwistedEgg_RewardByEmoney[26508][1]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][1]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][1]["RewardItem"][1]["Id"] = 3330689 -- 【玩具名】（华语限定）1[3330689][属性:9][叠加:0][金币:0], 【表格】语种限定玩具1
	tChildren2020TwistedEgg_RewardByEmoney[26508][1]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（华语限定）1*1
	tChildren2020TwistedEgg_RewardByEmoney[26508][1]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26508][1]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26508][1]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 语种限定玩具2 - 10%
	tChildren2020TwistedEgg_RewardByEmoney[26508][2] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][2]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26508][2]["ItemChance"] = 1000
	tChildren2020TwistedEgg_RewardByEmoney[26508][2]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][2]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][2]["RewardItem"][1]["Id"] = 3330690 -- 【玩具名】（华语限定）2[3330690][属性:9][叠加:0][金币:0], 【表格】语种限定玩具2
	tChildren2020TwistedEgg_RewardByEmoney[26508][2]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（华语限定）2*1
	tChildren2020TwistedEgg_RewardByEmoney[26508][2]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26508][2]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26508][2]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 语种限定玩具3 - 8%
	tChildren2020TwistedEgg_RewardByEmoney[26508][3] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][3]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26508][3]["ItemChance"] = 800
	tChildren2020TwistedEgg_RewardByEmoney[26508][3]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][3]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][3]["RewardItem"][1]["Id"] = 3330691 -- 【玩具名】（华语限定）3[3330691][属性:9][叠加:0][金币:0], 【表格】语种限定玩具3
	tChildren2020TwistedEgg_RewardByEmoney[26508][3]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（华语限定）3*1
	tChildren2020TwistedEgg_RewardByEmoney[26508][3]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26508][3]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26508][3]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 语种限定玩具4 - 6%
	tChildren2020TwistedEgg_RewardByEmoney[26508][4] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][4]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26508][4]["ItemChance"] = 600
	tChildren2020TwistedEgg_RewardByEmoney[26508][4]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][4]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][4]["RewardItem"][1]["Id"] = 3330692 -- 【玩具名】（华语限定）4[3330692][属性:9][叠加:0][金币:0], 【表格】语种限定玩具4
	tChildren2020TwistedEgg_RewardByEmoney[26508][4]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（华语限定）4*1
	tChildren2020TwistedEgg_RewardByEmoney[26508][4]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26508][4]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26508][4]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 600万爵位勋章 - 8%
	tChildren2020TwistedEgg_RewardByEmoney[26508][5] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][5]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26508][5]["ItemChance"] = 800
	tChildren2020TwistedEgg_RewardByEmoney[26508][5]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][5]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][5]["RewardItem"][1]["Id"] = 3322761 -- 600万爵位勋章[3322761][属性:8][叠加:1][金币:0], 【表格】600万爵位勋章
	tChildren2020TwistedEgg_RewardByEmoney[26508][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 600万爵位勋章（赠）*1
	tChildren2020TwistedEgg_RewardByEmoney[26508][5]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26508][5]["RewardEffect"]["Effect"] = "task105"
	-- 3阶灵珠 - 2%
	tChildren2020TwistedEgg_RewardByEmoney[26508][6] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][6]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26508][6]["ItemChance"] = 200
	tChildren2020TwistedEgg_RewardByEmoney[26508][6]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][6]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][6]["RewardItem"][1]["Id"] = 4200003 -- 3阶灵珠[4200003][属性:72][叠加:99][金币:0], 【表格】3阶灵珠
	tChildren2020TwistedEgg_RewardByEmoney[26508][6]["RewardItem"][1]["Attr"] = "0 1" -- 3阶灵珠*1
	tChildren2020TwistedEgg_RewardByEmoney[26508][6]["RewardItem"][1]["PreciousType"] = 333 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tChildren2020TwistedEgg_RewardByEmoney[26508][6]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26508][6]["RewardEffect"]["Effect"] = "task105"
	tChildren2020TwistedEgg_RewardByEmoney[26508][6]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
			-- 【动态掩码（54513, data0）】全服限量:（30）, 超限给编号（12）-
	tChildren2020TwistedEgg_RewardByEmoney[26508][6]["GlobalId"] = 54513
	tChildren2020TwistedEgg_RewardByEmoney[26508][6]["Pos"] = 0
	tChildren2020TwistedEgg_RewardByEmoney[26508][6]["MaxData"] = 30
	tChildren2020TwistedEgg_RewardByEmoney[26508][6]["FullIndex"] = 12
	-- 赤炼石+3 - 7%
	tChildren2020TwistedEgg_RewardByEmoney[26508][7] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][7]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26508][7]["ItemChance"] = 700
	tChildren2020TwistedEgg_RewardByEmoney[26508][7]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][7]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][7]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tChildren2020TwistedEgg_RewardByEmoney[26508][7]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tChildren2020TwistedEgg_RewardByEmoney[26508][7]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26508][7]["RewardEffect"]["Effect"] = "task105"
	-- 修为值 - 10%
	tChildren2020TwistedEgg_RewardByEmoney[26508][8] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][8]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26508][8]["ItemChance"] = 1000
	tChildren2020TwistedEgg_RewardByEmoney[26508][8]["RewardRepairValue"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][8]["RewardRepairValue"]["Value"] = 1000 -- 修为值, 【需求】修为值
	tChildren2020TwistedEgg_RewardByEmoney[26508][8]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26508][8]["RewardEffect"]["Effect"] = "task106"
	-- 万能神纹精粹 - 12%
	tChildren2020TwistedEgg_RewardByEmoney[26508][9] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][9]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26508][9]["ItemChance"] = 1200
	tChildren2020TwistedEgg_RewardByEmoney[26508][9]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][9]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][9]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tChildren2020TwistedEgg_RewardByEmoney[26508][9]["RewardItem"][1]["Attr"] = "0 15 3" -- 万能神纹精粹*15
	tChildren2020TwistedEgg_RewardByEmoney[26508][9]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26508][9]["RewardEffect"]["Effect"] = "task106"
	-- 魔武通玄丹 - 6%
	tChildren2020TwistedEgg_RewardByEmoney[26508][10] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][10]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26508][10]["ItemChance"] = 600
	tChildren2020TwistedEgg_RewardByEmoney[26508][10]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][10]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][10]["RewardItem"][1]["Id"] = 3303373 -- 魔武通玄丹[3303373][属性:9][叠加:10000][金币:0], 【表格】魔武通玄丹
	tChildren2020TwistedEgg_RewardByEmoney[26508][10]["RewardItem"][1]["Attr"] = "0 1" -- 魔武通玄丹*1
	tChildren2020TwistedEgg_RewardByEmoney[26508][10]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26508][10]["RewardEffect"]["Effect"] = "task106"
	-- 龙鳞果 - 3%
	tChildren2020TwistedEgg_RewardByEmoney[26508][11] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][11]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26508][11]["ItemChance"] = 300
	tChildren2020TwistedEgg_RewardByEmoney[26508][11]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][11]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][11]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tChildren2020TwistedEgg_RewardByEmoney[26508][11]["RewardItem"][1]["Attr"] = "0 1" -- 龙鳞果*1
	tChildren2020TwistedEgg_RewardByEmoney[26508][11]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26508][11]["RewardEffect"]["Effect"] = "task106"
	-- 气力值 - 16%
	tChildren2020TwistedEgg_RewardByEmoney[26508][12] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][12]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26508][12]["ItemChance"] = 1600
	tChildren2020TwistedEgg_RewardByEmoney[26508][12]["RewardStrengthValue"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][12]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】气力值
	tChildren2020TwistedEgg_RewardByEmoney[26508][12]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26508][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26508][12]["RewardEffect"]["Effect"] = "task106"

	tChildren2020TwistedEgg_RewardByEmoney[26509] = {}
	-- ===英文·语种扭蛋
	-- ===索引: tChildren2020TwistedEgg_RewardByEmoney[26509]
	-- ===删除: 3316104,12
	-- ===LogStep: 5[3]
	-- ===
	tChildren2020TwistedEgg_RewardByEmoney[26509]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tChildren2020TwistedEgg_RewardByEmoney[26509]["LogId"] = 12001963
	tChildren2020TwistedEgg_RewardByEmoney[26509]["LogStep"] = " 5[3]"
	-- 语种限定玩具1 - 12%
	tChildren2020TwistedEgg_RewardByEmoney[26509][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][1]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26509][1]["ItemChance"] = 1200
	tChildren2020TwistedEgg_RewardByEmoney[26509][1]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][1]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][1]["RewardItem"][1]["Id"] = 3330693 -- 【玩具名】（英语限定）1[3330693][属性:9][叠加:0][金币:0], 【表格】语种限定玩具1
	tChildren2020TwistedEgg_RewardByEmoney[26509][1]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（英语限定）1*1
	tChildren2020TwistedEgg_RewardByEmoney[26509][1]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26509][1]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26509][1]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 语种限定玩具2 - 10%
	tChildren2020TwistedEgg_RewardByEmoney[26509][2] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][2]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26509][2]["ItemChance"] = 1000
	tChildren2020TwistedEgg_RewardByEmoney[26509][2]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][2]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][2]["RewardItem"][1]["Id"] = 3330694 -- 【玩具名】（英语限定）2[3330694][属性:9][叠加:0][金币:0], 【表格】语种限定玩具2
	tChildren2020TwistedEgg_RewardByEmoney[26509][2]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（英语限定）2*1
	tChildren2020TwistedEgg_RewardByEmoney[26509][2]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26509][2]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26509][2]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 语种限定玩具3 - 8%
	tChildren2020TwistedEgg_RewardByEmoney[26509][3] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][3]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26509][3]["ItemChance"] = 800
	tChildren2020TwistedEgg_RewardByEmoney[26509][3]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][3]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][3]["RewardItem"][1]["Id"] = 3330695 -- 【玩具名】（英语限定）3[3330695][属性:9][叠加:0][金币:0], 【表格】语种限定玩具3
	tChildren2020TwistedEgg_RewardByEmoney[26509][3]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（英语限定）3*1
	tChildren2020TwistedEgg_RewardByEmoney[26509][3]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26509][3]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26509][3]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 语种限定玩具4 - 6%
	tChildren2020TwistedEgg_RewardByEmoney[26509][4] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][4]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26509][4]["ItemChance"] = 600
	tChildren2020TwistedEgg_RewardByEmoney[26509][4]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][4]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][4]["RewardItem"][1]["Id"] = 3330696 -- 【玩具名】（英语限定）4[3330696][属性:9][叠加:0][金币:0], 【表格】语种限定玩具4
	tChildren2020TwistedEgg_RewardByEmoney[26509][4]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（英语限定）4*1
	tChildren2020TwistedEgg_RewardByEmoney[26509][4]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26509][4]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26509][4]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 600万爵位勋章 - 8%
	tChildren2020TwistedEgg_RewardByEmoney[26509][5] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][5]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26509][5]["ItemChance"] = 800
	tChildren2020TwistedEgg_RewardByEmoney[26509][5]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][5]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][5]["RewardItem"][1]["Id"] = 3322761 -- 600万爵位勋章[3322761][属性:8][叠加:1][金币:0], 【表格】600万爵位勋章
	tChildren2020TwistedEgg_RewardByEmoney[26509][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 600万爵位勋章（赠）*1
	tChildren2020TwistedEgg_RewardByEmoney[26509][5]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26509][5]["RewardEffect"]["Effect"] = "task105"
	-- 3阶灵珠 - 2%
	tChildren2020TwistedEgg_RewardByEmoney[26509][6] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][6]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26509][6]["ItemChance"] = 200
	tChildren2020TwistedEgg_RewardByEmoney[26509][6]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][6]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][6]["RewardItem"][1]["Id"] = 4200003 -- 3阶灵珠[4200003][属性:72][叠加:99][金币:0], 【表格】3阶灵珠
	tChildren2020TwistedEgg_RewardByEmoney[26509][6]["RewardItem"][1]["Attr"] = "0 1" -- 3阶灵珠*1
	tChildren2020TwistedEgg_RewardByEmoney[26509][6]["RewardItem"][1]["PreciousType"] = 333 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tChildren2020TwistedEgg_RewardByEmoney[26509][6]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26509][6]["RewardEffect"]["Effect"] = "task105"
	tChildren2020TwistedEgg_RewardByEmoney[26509][6]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
			-- 【动态掩码（54513, data0）】全服限量:（30）, 超限给编号（12）-
	tChildren2020TwistedEgg_RewardByEmoney[26509][6]["GlobalId"] = 54513
	tChildren2020TwistedEgg_RewardByEmoney[26509][6]["Pos"] = 0
	tChildren2020TwistedEgg_RewardByEmoney[26509][6]["MaxData"] = 30
	tChildren2020TwistedEgg_RewardByEmoney[26509][6]["FullIndex"] = 12
	-- 赤炼石+3 - 7%
	tChildren2020TwistedEgg_RewardByEmoney[26509][7] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][7]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26509][7]["ItemChance"] = 700
	tChildren2020TwistedEgg_RewardByEmoney[26509][7]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][7]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][7]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tChildren2020TwistedEgg_RewardByEmoney[26509][7]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tChildren2020TwistedEgg_RewardByEmoney[26509][7]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26509][7]["RewardEffect"]["Effect"] = "task105"
	-- 修为值 - 10%
	tChildren2020TwistedEgg_RewardByEmoney[26509][8] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][8]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26509][8]["ItemChance"] = 1000
	tChildren2020TwistedEgg_RewardByEmoney[26509][8]["RewardRepairValue"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][8]["RewardRepairValue"]["Value"] = 1000 -- 修为值, 【需求】修为值
	tChildren2020TwistedEgg_RewardByEmoney[26509][8]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26509][8]["RewardEffect"]["Effect"] = "task106"
	-- 万能神纹精粹 - 12%
	tChildren2020TwistedEgg_RewardByEmoney[26509][9] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][9]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26509][9]["ItemChance"] = 1200
	tChildren2020TwistedEgg_RewardByEmoney[26509][9]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][9]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][9]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tChildren2020TwistedEgg_RewardByEmoney[26509][9]["RewardItem"][1]["Attr"] = "0 15 3" -- 万能神纹精粹*15
	tChildren2020TwistedEgg_RewardByEmoney[26509][9]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26509][9]["RewardEffect"]["Effect"] = "task106"
	-- 魔武通玄丹 - 6%
	tChildren2020TwistedEgg_RewardByEmoney[26509][10] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][10]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26509][10]["ItemChance"] = 600
	tChildren2020TwistedEgg_RewardByEmoney[26509][10]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][10]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][10]["RewardItem"][1]["Id"] = 3303373 -- 魔武通玄丹[3303373][属性:9][叠加:10000][金币:0], 【表格】魔武通玄丹
	tChildren2020TwistedEgg_RewardByEmoney[26509][10]["RewardItem"][1]["Attr"] = "0 1" -- 魔武通玄丹*1
	tChildren2020TwistedEgg_RewardByEmoney[26509][10]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26509][10]["RewardEffect"]["Effect"] = "task106"
	-- 龙鳞果 - 3%
	tChildren2020TwistedEgg_RewardByEmoney[26509][11] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][11]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26509][11]["ItemChance"] = 300
	tChildren2020TwistedEgg_RewardByEmoney[26509][11]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][11]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][11]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tChildren2020TwistedEgg_RewardByEmoney[26509][11]["RewardItem"][1]["Attr"] = "0 1" -- 龙鳞果*1
	tChildren2020TwistedEgg_RewardByEmoney[26509][11]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26509][11]["RewardEffect"]["Effect"] = "task106"
	-- 气力值 - 16%
	tChildren2020TwistedEgg_RewardByEmoney[26509][12] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][12]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26509][12]["ItemChance"] = 1600
	tChildren2020TwistedEgg_RewardByEmoney[26509][12]["RewardStrengthValue"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][12]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】气力值
	tChildren2020TwistedEgg_RewardByEmoney[26509][12]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26509][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26509][12]["RewardEffect"]["Effect"] = "task106"

	tChildren2020TwistedEgg_RewardByEmoney[26510] = {}
	-- ===西语·语种扭蛋
	-- ===索引: tChildren2020TwistedEgg_RewardByEmoney[26510]
	-- ===删除: 3316104,12
	-- ===LogStep: 5[4]
	-- ===
	tChildren2020TwistedEgg_RewardByEmoney[26510]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tChildren2020TwistedEgg_RewardByEmoney[26510]["LogId"] = 12001963
	tChildren2020TwistedEgg_RewardByEmoney[26510]["LogStep"] = " 5[4]"
	-- 语种限定玩具1 - 12%
	tChildren2020TwistedEgg_RewardByEmoney[26510][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][1]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26510][1]["ItemChance"] = 1200
	tChildren2020TwistedEgg_RewardByEmoney[26510][1]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][1]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][1]["RewardItem"][1]["Id"] = 3330697 -- 【玩具名】（西语限定）1[3330697][属性:9][叠加:0][金币:0], 【表格】语种限定玩具1
	tChildren2020TwistedEgg_RewardByEmoney[26510][1]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（西语限定）1*1
	tChildren2020TwistedEgg_RewardByEmoney[26510][1]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26510][1]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26510][1]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 语种限定玩具2 - 10%
	tChildren2020TwistedEgg_RewardByEmoney[26510][2] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][2]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26510][2]["ItemChance"] = 1000
	tChildren2020TwistedEgg_RewardByEmoney[26510][2]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][2]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][2]["RewardItem"][1]["Id"] = 3330698 -- 【玩具名】（西语限定）2[3330698][属性:9][叠加:0][金币:0], 【表格】语种限定玩具2
	tChildren2020TwistedEgg_RewardByEmoney[26510][2]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（西语限定）2*1
	tChildren2020TwistedEgg_RewardByEmoney[26510][2]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26510][2]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26510][2]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 语种限定玩具3 - 8%
	tChildren2020TwistedEgg_RewardByEmoney[26510][3] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][3]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26510][3]["ItemChance"] = 800
	tChildren2020TwistedEgg_RewardByEmoney[26510][3]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][3]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][3]["RewardItem"][1]["Id"] = 3330699 -- 【玩具名】（西语限定）3[3330699][属性:9][叠加:0][金币:0], 【表格】语种限定玩具3
	tChildren2020TwistedEgg_RewardByEmoney[26510][3]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（西语限定）3*1
	tChildren2020TwistedEgg_RewardByEmoney[26510][3]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26510][3]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26510][3]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 语种限定玩具4 - 6%
	tChildren2020TwistedEgg_RewardByEmoney[26510][4] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][4]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26510][4]["ItemChance"] = 600
	tChildren2020TwistedEgg_RewardByEmoney[26510][4]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][4]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][4]["RewardItem"][1]["Id"] = 3330700 -- 【玩具名】（西语限定）4[3330700][属性:9][叠加:0][金币:0], 【表格】语种限定玩具4
	tChildren2020TwistedEgg_RewardByEmoney[26510][4]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（西语限定）4*1
	tChildren2020TwistedEgg_RewardByEmoney[26510][4]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26510][4]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26510][4]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 600万爵位勋章 - 8%
	tChildren2020TwistedEgg_RewardByEmoney[26510][5] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][5]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26510][5]["ItemChance"] = 800
	tChildren2020TwistedEgg_RewardByEmoney[26510][5]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][5]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][5]["RewardItem"][1]["Id"] = 3322761 -- 600万爵位勋章[3322761][属性:8][叠加:1][金币:0], 【表格】600万爵位勋章
	tChildren2020TwistedEgg_RewardByEmoney[26510][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 600万爵位勋章（赠）*1
	tChildren2020TwistedEgg_RewardByEmoney[26510][5]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26510][5]["RewardEffect"]["Effect"] = "task105"
	-- 3阶灵珠 - 2%
	tChildren2020TwistedEgg_RewardByEmoney[26510][6] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][6]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26510][6]["ItemChance"] = 200
	tChildren2020TwistedEgg_RewardByEmoney[26510][6]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][6]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][6]["RewardItem"][1]["Id"] = 4200003 -- 3阶灵珠[4200003][属性:72][叠加:99][金币:0], 【表格】3阶灵珠
	tChildren2020TwistedEgg_RewardByEmoney[26510][6]["RewardItem"][1]["Attr"] = "0 1" -- 3阶灵珠*1
	tChildren2020TwistedEgg_RewardByEmoney[26510][6]["RewardItem"][1]["PreciousType"] = 333 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tChildren2020TwistedEgg_RewardByEmoney[26510][6]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26510][6]["RewardEffect"]["Effect"] = "task105"
	tChildren2020TwistedEgg_RewardByEmoney[26510][6]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
			-- 【动态掩码（54513, data0）】全服限量:（30）, 超限给编号（12）-
	tChildren2020TwistedEgg_RewardByEmoney[26510][6]["GlobalId"] = 54513
	tChildren2020TwistedEgg_RewardByEmoney[26510][6]["Pos"] = 0
	tChildren2020TwistedEgg_RewardByEmoney[26510][6]["MaxData"] = 30
	tChildren2020TwistedEgg_RewardByEmoney[26510][6]["FullIndex"] = 12
	-- 赤炼石+3 - 7%
	tChildren2020TwistedEgg_RewardByEmoney[26510][7] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][7]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26510][7]["ItemChance"] = 700
	tChildren2020TwistedEgg_RewardByEmoney[26510][7]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][7]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][7]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tChildren2020TwistedEgg_RewardByEmoney[26510][7]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tChildren2020TwistedEgg_RewardByEmoney[26510][7]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26510][7]["RewardEffect"]["Effect"] = "task105"
	-- 修为值 - 10%
	tChildren2020TwistedEgg_RewardByEmoney[26510][8] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][8]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26510][8]["ItemChance"] = 1000
	tChildren2020TwistedEgg_RewardByEmoney[26510][8]["RewardRepairValue"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][8]["RewardRepairValue"]["Value"] = 1000 -- 修为值, 【需求】修为值
	tChildren2020TwistedEgg_RewardByEmoney[26510][8]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26510][8]["RewardEffect"]["Effect"] = "task106"
	-- 万能神纹精粹 - 12%
	tChildren2020TwistedEgg_RewardByEmoney[26510][9] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][9]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26510][9]["ItemChance"] = 1200
	tChildren2020TwistedEgg_RewardByEmoney[26510][9]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][9]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][9]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tChildren2020TwistedEgg_RewardByEmoney[26510][9]["RewardItem"][1]["Attr"] = "0 15 3" -- 万能神纹精粹*15
	tChildren2020TwistedEgg_RewardByEmoney[26510][9]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26510][9]["RewardEffect"]["Effect"] = "task106"
	-- 魔武通玄丹 - 6%
	tChildren2020TwistedEgg_RewardByEmoney[26510][10] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][10]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26510][10]["ItemChance"] = 600
	tChildren2020TwistedEgg_RewardByEmoney[26510][10]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][10]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][10]["RewardItem"][1]["Id"] = 3303373 -- 魔武通玄丹[3303373][属性:9][叠加:10000][金币:0], 【表格】魔武通玄丹
	tChildren2020TwistedEgg_RewardByEmoney[26510][10]["RewardItem"][1]["Attr"] = "0 1" -- 魔武通玄丹*1
	tChildren2020TwistedEgg_RewardByEmoney[26510][10]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26510][10]["RewardEffect"]["Effect"] = "task106"
	-- 龙鳞果 - 3%
	tChildren2020TwistedEgg_RewardByEmoney[26510][11] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][11]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26510][11]["ItemChance"] = 300
	tChildren2020TwistedEgg_RewardByEmoney[26510][11]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][11]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][11]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tChildren2020TwistedEgg_RewardByEmoney[26510][11]["RewardItem"][1]["Attr"] = "0 1" -- 龙鳞果*1
	tChildren2020TwistedEgg_RewardByEmoney[26510][11]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26510][11]["RewardEffect"]["Effect"] = "task106"
	-- 气力值 - 16%
	tChildren2020TwistedEgg_RewardByEmoney[26510][12] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][12]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26510][12]["ItemChance"] = 1600
	tChildren2020TwistedEgg_RewardByEmoney[26510][12]["RewardStrengthValue"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][12]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】气力值
	tChildren2020TwistedEgg_RewardByEmoney[26510][12]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26510][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26510][12]["RewardEffect"]["Effect"] = "task106"


	tChildren2020TwistedEgg_RewardByEmoney[26511] = {}
	-- ===阿语·语种扭蛋
	-- ===索引: tChildren2020TwistedEgg_RewardByEmoney[26511]
	-- ===删除: 3316104,12
	-- ===LogStep: 5[5]
	-- ===
	tChildren2020TwistedEgg_RewardByEmoney[26511]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tChildren2020TwistedEgg_RewardByEmoney[26511]["LogId"] = 12001963
	tChildren2020TwistedEgg_RewardByEmoney[26511]["LogStep"] = " 5[5]"
	-- 语种限定玩具1 - 12%
	tChildren2020TwistedEgg_RewardByEmoney[26511][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][1]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26511][1]["ItemChance"] = 1200
	tChildren2020TwistedEgg_RewardByEmoney[26511][1]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][1]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][1]["RewardItem"][1]["Id"] = 3330701 -- 【玩具名】（阿语限定）1[3330701][属性:9][叠加:0][金币:0], 【表格】语种限定玩具1
	tChildren2020TwistedEgg_RewardByEmoney[26511][1]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（阿语限定）1*1
	tChildren2020TwistedEgg_RewardByEmoney[26511][1]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26511][1]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26511][1]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 语种限定玩具2 - 10%
	tChildren2020TwistedEgg_RewardByEmoney[26511][2] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][2]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26511][2]["ItemChance"] = 1000
	tChildren2020TwistedEgg_RewardByEmoney[26511][2]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][2]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][2]["RewardItem"][1]["Id"] = 3330702 -- 【玩具名】（阿语限定）2[3330702][属性:9][叠加:0][金币:0], 【表格】语种限定玩具2
	tChildren2020TwistedEgg_RewardByEmoney[26511][2]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（阿语限定）2*1
	tChildren2020TwistedEgg_RewardByEmoney[26511][2]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26511][2]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26511][2]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 语种限定玩具3 - 8%
	tChildren2020TwistedEgg_RewardByEmoney[26511][3] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][3]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26511][3]["ItemChance"] = 800
	tChildren2020TwistedEgg_RewardByEmoney[26511][3]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][3]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][3]["RewardItem"][1]["Id"] = 3330703 -- 【玩具名】（阿语限定）3[3330703][属性:9][叠加:0][金币:0], 【表格】语种限定玩具3
	tChildren2020TwistedEgg_RewardByEmoney[26511][3]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（阿语限定）3*1
	tChildren2020TwistedEgg_RewardByEmoney[26511][3]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26511][3]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26511][3]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 语种限定玩具4 - 6%
	tChildren2020TwistedEgg_RewardByEmoney[26511][4] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][4]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26511][4]["ItemChance"] = 600
	tChildren2020TwistedEgg_RewardByEmoney[26511][4]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][4]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][4]["RewardItem"][1]["Id"] = 3330704 -- 【玩具名】（阿语限定）4[3330704][属性:9][叠加:0][金币:0], 【表格】语种限定玩具4
	tChildren2020TwistedEgg_RewardByEmoney[26511][4]["RewardItem"][1]["Attr"] = "0 1" -- 【玩具名】（阿语限定）4*1
	tChildren2020TwistedEgg_RewardByEmoney[26511][4]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26511][4]["RewardEffect"]["Effect"] = "task104"
	tChildren2020TwistedEgg_RewardByEmoney[26511][4]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告

	-- 600万爵位勋章 - 8%
	tChildren2020TwistedEgg_RewardByEmoney[26511][5] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][5]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26511][5]["ItemChance"] = 800
	tChildren2020TwistedEgg_RewardByEmoney[26511][5]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][5]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][5]["RewardItem"][1]["Id"] = 3322761 -- 600万爵位勋章[3322761][属性:8][叠加:1][金币:0], 【表格】600万爵位勋章
	tChildren2020TwistedEgg_RewardByEmoney[26511][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 600万爵位勋章（赠）*1
	tChildren2020TwistedEgg_RewardByEmoney[26511][5]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26511][5]["RewardEffect"]["Effect"] = "task105"
	-- 3阶灵珠 - 2%
	tChildren2020TwistedEgg_RewardByEmoney[26511][6] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][6]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26511][6]["ItemChance"] = 200
	tChildren2020TwistedEgg_RewardByEmoney[26511][6]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][6]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][6]["RewardItem"][1]["Id"] = 4200003 -- 3阶灵珠[4200003][属性:72][叠加:99][金币:0], 【表格】3阶灵珠
	tChildren2020TwistedEgg_RewardByEmoney[26511][6]["RewardItem"][1]["Attr"] = "0 1" -- 3阶灵珠*1
	tChildren2020TwistedEgg_RewardByEmoney[26511][6]["RewardItem"][1]["PreciousType"] = 333 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tChildren2020TwistedEgg_RewardByEmoney[26511][6]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26511][6]["RewardEffect"]["Effect"] = "task105"
	tChildren2020TwistedEgg_RewardByEmoney[26511][6]["BroadCast"] = tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"] -- 全服公告
			-- 【动态掩码（54513, data0）】全服限量:（30）, 超限给编号（12）-
	tChildren2020TwistedEgg_RewardByEmoney[26511][6]["GlobalId"] = 54513
	tChildren2020TwistedEgg_RewardByEmoney[26511][6]["Pos"] = 0
	tChildren2020TwistedEgg_RewardByEmoney[26511][6]["MaxData"] = 30
	tChildren2020TwistedEgg_RewardByEmoney[26511][6]["FullIndex"] = 12
	-- 赤炼石+3 - 7%
	tChildren2020TwistedEgg_RewardByEmoney[26511][7] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][7]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26511][7]["ItemChance"] = 700
	tChildren2020TwistedEgg_RewardByEmoney[26511][7]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][7]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][7]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tChildren2020TwistedEgg_RewardByEmoney[26511][7]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tChildren2020TwistedEgg_RewardByEmoney[26511][7]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26511][7]["RewardEffect"]["Effect"] = "task105"
	-- 修为值 - 10%
	tChildren2020TwistedEgg_RewardByEmoney[26511][8] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][8]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26511][8]["ItemChance"] = 1000
	tChildren2020TwistedEgg_RewardByEmoney[26511][8]["RewardRepairValue"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][8]["RewardRepairValue"]["Value"] = 1000 -- 修为值, 【需求】修为值
	tChildren2020TwistedEgg_RewardByEmoney[26511][8]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26511][8]["RewardEffect"]["Effect"] = "task106"
	-- 万能神纹精粹 - 12%
	tChildren2020TwistedEgg_RewardByEmoney[26511][9] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][9]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26511][9]["ItemChance"] = 1200
	tChildren2020TwistedEgg_RewardByEmoney[26511][9]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][9]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][9]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tChildren2020TwistedEgg_RewardByEmoney[26511][9]["RewardItem"][1]["Attr"] = "0 15 3" -- 万能神纹精粹*15
	tChildren2020TwistedEgg_RewardByEmoney[26511][9]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26511][9]["RewardEffect"]["Effect"] = "task106"
	-- 魔武通玄丹 - 6%
	tChildren2020TwistedEgg_RewardByEmoney[26511][10] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][10]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26511][10]["ItemChance"] = 600
	tChildren2020TwistedEgg_RewardByEmoney[26511][10]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][10]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][10]["RewardItem"][1]["Id"] = 3303373 -- 魔武通玄丹[3303373][属性:9][叠加:10000][金币:0], 【表格】魔武通玄丹
	tChildren2020TwistedEgg_RewardByEmoney[26511][10]["RewardItem"][1]["Attr"] = "0 1" -- 魔武通玄丹*1
	tChildren2020TwistedEgg_RewardByEmoney[26511][10]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26511][10]["RewardEffect"]["Effect"] = "task106"
	-- 龙鳞果 - 3%
	tChildren2020TwistedEgg_RewardByEmoney[26511][11] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][11]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26511][11]["ItemChance"] = 300
	tChildren2020TwistedEgg_RewardByEmoney[26511][11]["RewardItem"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][11]["RewardItem"][1] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][11]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tChildren2020TwistedEgg_RewardByEmoney[26511][11]["RewardItem"][1]["Attr"] = "0 1" -- 龙鳞果*1
	tChildren2020TwistedEgg_RewardByEmoney[26511][11]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26511][11]["RewardEffect"]["Effect"] = "task106"
	-- 气力值 - 16%
	tChildren2020TwistedEgg_RewardByEmoney[26511][12] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][12]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RewardByEmoney[26511][12]["ItemChance"] = 1600
	tChildren2020TwistedEgg_RewardByEmoney[26511][12]["RewardStrengthValue"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][12]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】气力值
	tChildren2020TwistedEgg_RewardByEmoney[26511][12]["RewardEffect"] = {}
	tChildren2020TwistedEgg_RewardByEmoney[26511][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildren2020TwistedEgg_RewardByEmoney[26511][12]["RewardEffect"]["Effect"] = "task106"

	

	-- 妖精快跑概率获得双倍积分
local tChildren2020TwistedEgg_RandomScore = {}
	-- 普通水晶
	tChildren2020TwistedEgg_RandomScore[1451] = {}
	tChildren2020TwistedEgg_RandomScore[1451]["ItemChanceSum"] = 10000
	tChildren2020TwistedEgg_RandomScore[1451]["Time"] = 1
	-- 双倍分数
	tChildren2020TwistedEgg_RandomScore[1451][1] = {}
	tChildren2020TwistedEgg_RandomScore[1451][1]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RandomScore[1451][1]["ItemChance"] = 700
	tChildren2020TwistedEgg_RandomScore[1451][1]["Item_1"] = 20
	-- 普通分数
	tChildren2020TwistedEgg_RandomScore[1451][2] = {}
	tChildren2020TwistedEgg_RandomScore[1451][2]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RandomScore[1451][2]["ItemChance"] = 9300
	tChildren2020TwistedEgg_RandomScore[1451][2]["Item_1"] = 10
	-- 幸运水晶
	tChildren2020TwistedEgg_RandomScore[1604] = {}
	tChildren2020TwistedEgg_RandomScore[1604]["ItemChanceSum"] = 10000
	tChildren2020TwistedEgg_RandomScore[1604]["Time"] = 1
	-- 双倍分数
	tChildren2020TwistedEgg_RandomScore[1604][1] = {}
	tChildren2020TwistedEgg_RandomScore[1604][1]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RandomScore[1604][1]["ItemChance"] = 1000
	tChildren2020TwistedEgg_RandomScore[1604][1]["Item_1"] = 60
	-- 普通分数
	tChildren2020TwistedEgg_RandomScore[1604][2] = {}
	tChildren2020TwistedEgg_RandomScore[1604][2]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RandomScore[1604][2]["ItemChance"] = 9000
	tChildren2020TwistedEgg_RandomScore[1604][2]["Item_1"] = 30
	
	-- 普通水晶 随机分数
local tChildren2020TwistedEgg_RandomNewScore = {}
	tChildren2020TwistedEgg_RandomNewScore[1451] = {}
	tChildren2020TwistedEgg_RandomNewScore[1451]["ItemChanceSum"] = 10000
	tChildren2020TwistedEgg_RandomNewScore[1451]["Time"] = 1
	tChildren2020TwistedEgg_RandomNewScore[1451][1] = {}
	tChildren2020TwistedEgg_RandomNewScore[1451][1]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RandomNewScore[1451][1]["ItemChance"] = 6800
	tChildren2020TwistedEgg_RandomNewScore[1451][1]["Item_1"] = 5
	tChildren2020TwistedEgg_RandomNewScore[1451][2] = {}
	tChildren2020TwistedEgg_RandomNewScore[1451][2]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RandomNewScore[1451][2]["ItemChance"] = 2200
	tChildren2020TwistedEgg_RandomNewScore[1451][2]["Item_1"] = 10
	tChildren2020TwistedEgg_RandomNewScore[1451][3] = {}
	tChildren2020TwistedEgg_RandomNewScore[1451][3]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_RandomNewScore[1451][3]["ItemChance"] = 1000
	tChildren2020TwistedEgg_RandomNewScore[1451][3]["Item_1"] = 15
	
	
-- 随机幸运水浸个数
local tChildren2020TwistedEgg_NewTrapNum = {}
	tChildren2020TwistedEgg_NewTrapNum[1] = {}
	tChildren2020TwistedEgg_NewTrapNum[1]["ItemChanceSum"] = 10000
	tChildren2020TwistedEgg_NewTrapNum[1]["Time"] = 1
	tChildren2020TwistedEgg_NewTrapNum[1][1] = {}
	tChildren2020TwistedEgg_NewTrapNum[1][1]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_NewTrapNum[1][1]["ItemChance"] = 7000
	tChildren2020TwistedEgg_NewTrapNum[1][1]["Item_1"] = 1
	tChildren2020TwistedEgg_NewTrapNum[1][2] = {}
	tChildren2020TwistedEgg_NewTrapNum[1][2]["RandomItemChanceType"] = 2
	tChildren2020TwistedEgg_NewTrapNum[1][2]["ItemChance"] = 3000
	tChildren2020TwistedEgg_NewTrapNum[1][2]["Item_1"] = 2
-------------------------------------------------奖励配置-------------------------------------------------
--补领玩具箱
function Children2020TwistedEgg_GetToyBox()
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		return
	end
	local nChildren2020TwistedEgg_UserId =Get_UserId()
--检查玩家身上是否有玩具箱
	if Item_ChkMulItem(tChildren2020TwistedEgg_Cont["Toy"],tChildren2020TwistedEgg_Cont["Toy"],1,0,0,nChildren2020TwistedEgg_UserId) then
		Sys_MsgBox(tChildren2020TwistedEgg_Text["MsgBox"]["HaveReward"])
		return
	end
	RewardTemplate_UseItemAndMsg(tChildren2020TwistedEgg_Reward[tChildren2020TwistedEgg_Cont["Toy"]],nChildren2020TwistedEgg_UserId)
end
--花费天石扭蛋二次确认
function Children2020TwistedEgg_ComfirmUserEggByEmoney(nNpcId,nIndex,nNeedEmoney)
	tNpcGossip[nNpcId]["Text511"] = string.format(tChildren2020TwistedEgg_Text[nNpcId]["Text511"],nNeedEmoney,nIndex)
	tNpcGossip[nNpcId]["OptionFunc511"] = string.format("Children2020TwistedEgg_UserEggByEmoney</N>%s</N>%s</N>%s",nNpcId,nIndex,nNeedEmoney)
	LinkNpcGossipFunc_New(nNpcId,"5-1")
end
--确定花费天石转动扭蛋机
function Children2020TwistedEgg_UserEggByEmoney(nNpcId,nIndex,nNeedEmoney)
	local nChildren2020TwistedEgg_UserId = Get_UserId()
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		return
	end
	local sChildren2020TwistedEgg_UserName = Get_UserName(nChildren2020TwistedEgg_UserId)
	if not User_CheckLeftSpace(nIndex) then
		Sys_MsgBox(string.format(tChildren2020TwistedEgg_Text["MsgBox"]["NoSpace"],nIndex))
		return
	end
	local nChildren2020TwistedEgg_NeedEmoney = nNeedEmoney
	local nChildren2020TwistedEgg_UserEmoney = Get_UserEMoney(nChildren2020TwistedEgg_UserId)
	if nChildren2020TwistedEgg_UserEmoney < nChildren2020TwistedEgg_NeedEmoney then
		LinkNpcGossipFunc_New(nNpcId,"6-1")
		return
	end
	local sChildren2020TwistedEgg_EmoneyBuyLog = string.format(tChildren2020TwistedEgg_Log["UseEmoneyLog"],nChildren2020TwistedEgg_NeedEmoney,nChildren2020TwistedEgg_NeedEmoney)
	if User_AddEMoney(-nChildren2020TwistedEgg_NeedEmoney,nChildren2020TwistedEgg_UserId) then
		Sys_SaveEmoneyBuy(sChildren2020TwistedEgg_EmoneyBuyLog,nChildren2020TwistedEgg_UserId)
			--给奖励
		if nIndex == 1 then
			local tAward,sRewardStr= RewardTemplate_RandomReward(tChildren2020TwistedEgg_RewardByEmoney,nNpcId)
			if tAward[1]["tAward"][1]["BroadCast"] ~= nil then
				tAward[1]["tAward"][1]["BroadCast"] = string.format(tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"],sChildren2020TwistedEgg_UserName,sRewardStr)
				Sys_SystemBroadcast(tAward[1]["tAward"][1]["BroadCast"])
			end
			
			User_SetTimer(4,"Children2020TwistedEgg_MsgBox</N>"..nNpcId.."</S>"..sRewardStr,0)
			return
		end
		local nChildren2020TwistedEgg_RewardItemId = 0
		for i=1,nIndex do 
			local tAward,sRewardStr= RewardTemplate_RandomReward(tChildren2020TwistedEgg_RewardByEmoney,nNpcId)
			if tAward[1]["tAward"][1]["BroadCast"] ~= nil then
				tAward[1]["tAward"][1]["BroadCast"] = string.format(tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"],sChildren2020TwistedEgg_UserName,sRewardStr)
				Sys_SystemBroadcast(tAward[1]["tAward"][1]["BroadCast"])
			end
			if tAward[1]["tAward"][1]["RewardItem"] ~= nil then
				nChildren2020TwistedEgg_RewardItemId = tAward[1]["tAward"][1]["RewardItem"][1]["Id"]
				for i,v in pairs(tChildren2020TwistedEgg_Cont["ColorItem"]) do
					if nChildren2020TwistedEgg_RewardItemId == v  then
						sRewardStr = tChildren2020TwistedEgg_Text["ItemName"][nChildren2020TwistedEgg_RewardItemId]
					end
				end
			end
			tNpcGossip[nNpcId]["Text411"..i] = Sys_Alignment(string.format(tChildren2020TwistedEgg_Text[nNpcId]["Text411"..i],sRewardStr),15)
		end
		LinkNpcGossipFunc_New(nNpcId,"4-1")
	end
		
	
	
end
function Children2020TwistedEgg_MsgBox(nNpcId,sRewardStr,nUserId)
	local sChildren2020TwistedEgg_func = "NpcPosition_PathFind</N>"..nNpcId
	Sys_MsgBox(string.format(tChildren2020TwistedEgg_Text["MsgBox"]["GetReward"],tostring(sRewardStr)),sChildren2020TwistedEgg_func,sChildren2020TwistedEgg_func,nUserId)
end

--转动扭蛋机二次确认
function Children2020TwistedEgg_ComfirmUserEgg(nNpcId,nIndex,nNeedNum)
	local nChildren2020TwistedEgg_ItemId = tChildren2020TwistedEgg_Cont["ItemId"]
	local nChildren2020TwistedEgg_NeedNum = nNeedNum
	if not Item_ChkMulItem(nChildren2020TwistedEgg_ItemId,nChildren2020TwistedEgg_ItemId,nChildren2020TwistedEgg_NeedNum) then 
		if nIndex == 1 then
			LinkNpcGossipFunc_New(nNpcId,"2-1")
		else
			LinkNpcGossipFunc_New(nNpcId,"2-2")
		end
		return
	end
	tNpcGossip[nNpcId]["Text311"] = string.format(tChildren2020TwistedEgg_Text[nNpcId]["Text311"],nNeedNum,nIndex)
	tNpcGossip[nNpcId]["OptionFunc311"] = string.format("Children2020TwistedEgg_UserEgg</N>%s</N>%s</N>%s",nNpcId,nIndex,nNeedNum)
	LinkNpcGossipFunc_New(nNpcId,"3-1")
	
end
--确定转动扭蛋机
function Children2020TwistedEgg_UserEgg(nNpcId,nIndex,nNeedNum)
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		return
	end
	local nChildren2020TwistedEgg_UserId = Get_UserId()
	local sChildren2020TwistedEgg_UserName = Get_UserName(nChildren2020TwistedEgg_UserId)
	if not User_CheckLeftSpace(nIndex) then
		Sys_MsgBox(string.format(tChildren2020TwistedEgg_Text["MsgBox"]["NoSpace"],nIndex))
		return
	end
	
	local nChildren2020TwistedEgg_ItemId = tChildren2020TwistedEgg_Cont["ItemId"]
	local nChildren2020TwistedEgg_NeedNum = nNeedNum
	
	if not Item_ChkMulItem(nChildren2020TwistedEgg_ItemId,nChildren2020TwistedEgg_ItemId,nChildren2020TwistedEgg_NeedNum) then 
		if nIndex == 1 then
			LinkNpcGossipFunc_New(nNpcId,"2-1")
		else
			LinkNpcGossipFunc_New(nNpcId,"2-2")
		end
		return
	end
	
	--给奖励
	if nIndex == 1 then
		local tAward,sRewardStr= RewardTemplate_RandomReward(tChildren2020TwistedEgg_Reward,nNpcId)
		local sRewardStr = tostring(sRewardStr)
		if tAward[1]["tAward"][1]["BroadCast"] ~= nil then
			tAward[1]["tAward"][1]["BroadCast"] = string.format(tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"],sChildren2020TwistedEgg_UserName,sRewardStr)
			Sys_SystemBroadcast(tAward[1]["tAward"][1]["BroadCast"])
		end
		User_SetTimer(4,"Children2020TwistedEgg_MsgBox</N>"..nNpcId.."</S>"..sRewardStr,0)
		return
	end
	local nChildren2020TwistedEgg_RewardItemId = 0
	for i=1,nIndex do 
		local tAward,sRewardStr= RewardTemplate_RandomReward(tChildren2020TwistedEgg_Reward,nNpcId)
		if tAward[1]["tAward"][1]["BroadCast"] ~= nil then
			tAward[1]["tAward"][1]["BroadCast"] = string.format(tChildren2020TwistedEgg_Text["TalkBoard"]["GetReward"],sChildren2020TwistedEgg_UserName,sRewardStr)
			Sys_SystemBroadcast(tAward[1]["tAward"][1]["BroadCast"])
		end
		if tAward[1]["tAward"][1]["RewardItem"] ~= nil then
			nChildren2020TwistedEgg_RewardItemId = tAward[1]["tAward"][1]["RewardItem"][1]["Id"]
			for i,v in pairs(tChildren2020TwistedEgg_Cont["ColorItem"]) do
				if nChildren2020TwistedEgg_RewardItemId == v  then
					sRewardStr = tChildren2020TwistedEgg_Text["ItemName"][nChildren2020TwistedEgg_RewardItemId]
				end
			end
		end
		tNpcGossip[nNpcId]["Text411"..i] = Sys_Alignment(string.format(tChildren2020TwistedEgg_Text[nNpcId]["Text411"..i],sRewardStr),15)
	end
	LinkNpcGossipFunc_New(nNpcId,"4-1")
end
--屏蔽二次确认
function Children2020TwistedEgg_BeforeBuy(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		return
	end
	local nChildren2020TwistedEgg_EventType = tChildren2020TwistedEgg_Stc[1]["EventType"]
	local nChildren2020TwistedEgg_DataType = tChildren2020TwistedEgg_Stc[1]["DataType"]
	Task_SetStatistic(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,1,1)
	Task_SetStcTimestamp(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,0)
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

------------------------------------------------------------------------九宫采玉部分函数
--开始九宫采玉(免费:1,付费:2)
function Children2020TwistedEgg_Start(nNpcId,nIndex)
	local nChildren2020TwistedEgg_UserId = Get_UserId()
	local nChildren2020TwistedEgg_NeedItemId = tChildren2020TwistedEgg_Cont["PlayItemId"]
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		return
	end
	local nChildren2020TwistedEgg_EventType = tChildren2020TwistedEgg_Stc[2]["DayTime"]["EventType"]
	local nChildren2020TwistedEgg_DataType = tChildren2020TwistedEgg_Stc[2]["DayTime"]["DataType"] 
	Task_StcReset(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType)
	if nIndex == 1 then
	--今日第一次进入九宫采玉，打上首次游戏掩码
		if Task_ChkStcValue(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,"==",0,nChildren2020TwistedEgg_UserId) then
			Task_SetStatistic(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,1,1,nChildren2020TwistedEgg_UserId)
		end
	else
		if not Item_ChkMulItem(nChildren2020TwistedEgg_NeedItemId,nChildren2020TwistedEgg_NeedItemId,1) then
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return
		else
			if not Item_DelMulItem(nChildren2020TwistedEgg_NeedItemId,nChildren2020TwistedEgg_NeedItemId,1)  then
				return
			else
				--打删除物品log
				Sys_SaveActionFestivalLog(string.format(tChildren2020TwistedEgg_Log["DelItem"],nChildren2020TwistedEgg_NeedItemId,1),nChildren2020TwistedEgg_UserId)
			end
		end
	end
	
	tChildren2020TwistedEgg_Cont["FirstFlag"][nChildren2020TwistedEgg_UserId] = true
	tChildren2020TwistedEgg_Cont["StartTime"][nChildren2020TwistedEgg_UserId]   = os.time()
	--清掩码
	Children2020TwistedEgg_ReSetStc(nChildren2020TwistedEgg_UserId)
	
	-- 进入地图删除蓝宝玉和黄宝玉
	if Item_ChkItem(tChildren2020TwistedEgg_Cont["Color"]["Yellow"]) then
		Item_DelAllItemByType(tChildren2020TwistedEgg_Cont["Color"]["Yellow"])
	end
	if Item_ChkItem(tChildren2020TwistedEgg_Cont["Color"]["Blue"]) then
		Item_DelAllItemByType(tChildren2020TwistedEgg_Cont["Color"]["Blue"])
	end
	--打开始游戏log
	Sys_SaveActionFestivalLog(tChildren2020TwistedEgg_Log["StartMisson"])
	--倒计时
	OnTimer_SetUserTimer(300,"Children2020TwistedEgg_MoveBack</N>"..nChildren2020TwistedEgg_UserId.."</N>".."2",nChildren2020TwistedEgg_UserId)
	User_SetTimer(300,"NULL",1,nChildren2020TwistedEgg_UserId)
	Sys_MsgBox(tChildren2020TwistedEgg_Text["MsgBox"]["Enter1"])
	Children2020TwistedEgg_ChgMap()
	User_EffectAdd("self","task073",nChildren2020TwistedEgg_UserId)

end

--进入地图清掉掩码
function Children2020TwistedEgg_ReSetStc(nChildren2020TwistedEgg_UserId)
	tChildren2020TwistedEgg_Cont["Num"][nChildren2020TwistedEgg_UserId] = 0
	tChildren2020TwistedEgg_Cont["NextColor"][nChildren2020TwistedEgg_UserId] = 0
	
	Task_SetStatistic(tChildren2020TwistedEgg_Stc[2]["Time"]["EventType"],tChildren2020TwistedEgg_Stc[2]["Time"]["DataType"],0,1)
	Task_SetStcTimestamp(tChildren2020TwistedEgg_Stc[2]["Time"]["EventType"],tChildren2020TwistedEgg_Stc[2]["Time"]["DataType"],0)
	

end
--采集琉璃
function Children2020TwistedEgg_Collect()
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		return
	end
	local nChildren2020TwistedEgg_UserId = Get_UserId()
	local nChildren2020TwistedEgg_Random = math.random(1,9)
	local nChildren2020TwistedEgg_MapId = tChildren2020TwistedEgg_Cont["Pos"]["MapId"]
	local nChildren2020TwistedEgg_Cellx = tChildren2020TwistedEgg_Cont["Pos"][nChildren2020TwistedEgg_Random]["Cellx"]
	local nChildren2020TwistedEgg_Celly = tChildren2020TwistedEgg_Cont["Pos"][nChildren2020TwistedEgg_Random]["Celly"]
	local nChildren2020TwistedEgg_EventType = tChildren2020TwistedEgg_Stc[2]["Color"]["EventType"]
	local nChildren2020TwistedEgg_DataType = tChildren2020TwistedEgg_Stc[2]["Color"]["DataType"] 

	local nChildren2020TwistedEgg_NpcId = Get_NpcId()
	if tChildren2020TwistedEgg_Cont["NextColor"][nChildren2020TwistedEgg_UserId] == nil or tChildren2020TwistedEgg_Cont["StartTime"][nChildren2020TwistedEgg_UserId] == nil then
		local nChildren2020TwistedEgg_BackMapId = tChildren2020TwistedEgg_Cont["Pos"]["MoveBack"]["MapId"]
		local nChildren2020TwistedEgg_BackCellx = tChildren2020TwistedEgg_Cont["Pos"]["MoveBack"]["Cellx"]
		local nChildren2020TwistedEgg_BackCelly = tChildren2020TwistedEgg_Cont["Pos"]["MoveBack"]["Celly"]
		Sys_SaveActionFestivalLog(tChildren2020TwistedEgg_Log["EndMisson"])
		OnTimer_DelUserTimer("Children2020TwistedEgg_MoveBack</N>",nChildren2020TwistedEgg_UserId)
		User_SetTimer(1,"NULL",1,nChildren2020TwistedEgg_UserId)
		User_UserRandBoundTrans(nChildren2020TwistedEgg_BackMapId,nChildren2020TwistedEgg_BackCellx,nChildren2020TwistedEgg_BackCelly,2,2,1,nChildren2020TwistedEgg_UserId)
		return
	end
	local nChildren2020TwistedEgg_CostTime  = os.time() - tChildren2020TwistedEgg_Cont["StartTime"][nChildren2020TwistedEgg_UserId]  
	local nChildren2020TwistedEgg_ItemId = tChildren2020TwistedEgg_Cont["Collect"][nChildren2020TwistedEgg_NpcId]["ItemId"]
	local nChildren2020TwistedEgg_Phase = tChildren2020TwistedEgg_Cont["Collect"][nChildren2020TwistedEgg_NpcId]["Phase"]
	local sChildren2020TwistedEgg_Log = tChildren2020TwistedEgg_Log["GetItem"]
	if tChildren2020TwistedEgg_Cont["Num"][nChildren2020TwistedEgg_UserId] ==nil then
		tChildren2020TwistedEgg_Cont["Num"][nChildren2020TwistedEgg_UserId] = 0
	end

	local nChildren2020TwistedEgg_ColorData = tChildren2020TwistedEgg_Cont["NextColor"][nChildren2020TwistedEgg_UserId]
	if tChildren2020TwistedEgg_Cont["FirstFlag"][nChildren2020TwistedEgg_UserId] ~= true then 
	--判断是否采集正确颜色
		if not (nChildren2020TwistedEgg_Phase == nChildren2020TwistedEgg_ColorData) then
			local nStatus = tChildren2020TwistedEgg_Status["Status"] 
			local nPower =tChildren2020TwistedEgg_Status["Power"] 
			local nSecs =tChildren2020TwistedEgg_Status["Secs"] 
			local nTimes =tChildren2020TwistedEgg_Status["Time"] 
			local nunRemainTime =tChildren2020TwistedEgg_Status["RemainTime"] 
			local nunEndTime =tChildren2020TwistedEgg_Status["EndTime"] 
			local nucRecordable = tChildren2020TwistedEgg_Status["Recordable"] 
			User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nunRemainTime,nunEndTime,nucRecordable,0,0,nChildren2020TwistedEgg_UserId)
			if nChildren2020TwistedEgg_ColorData == tChildren2020TwistedEgg_Cont["Phase"]["Yellow"] then
				Sys_MsgBox(tChildren2020TwistedEgg_Text["MsgBox"]["NoYellow"])
			else
				Sys_MsgBox(tChildren2020TwistedEgg_Text["MsgBox"]["NoBlue"])
			end
			return	
		end
	end
	
	--判断背包
	if not User_CheckLeftSpace(tChildren2020TwistedEgg_Cont["BagSpace"]) then
		User_TalkChannel2005(tChildren2020TwistedEgg_Text["MsgBox"]["NoBagSpace"])
		return
	end	
	--判断采集距离
	local nChildren2020TwistedEgg_PositionX = Get_UserPositionX()
	local nChildren2020TwistedEgg_PositionY = Get_UserPositionY()
	local nChildren2020TwistedEgg_DistanceX = math.abs(nChildren2020TwistedEgg_PositionX - tChildren2020TwistedEgg_Cont["Collect"][nChildren2020TwistedEgg_NpcId]["Cellx"])
	local nChildren2020TwistedEgg_DistanceY = math.abs(nChildren2020TwistedEgg_PositionY - tChildren2020TwistedEgg_Cont["Collect"][nChildren2020TwistedEgg_NpcId]["Celly"])
	if nChildren2020TwistedEgg_DistanceX > 3 or nChildren2020TwistedEgg_DistanceY > 3 then
		User_TalkChannel2005(tChildren2020TwistedEgg_Text["MsgBox"]["Distance"])
		return
	end
	
	--获得任务物品
	tChildren2020TwistedEgg_Cont["Num"][nChildren2020TwistedEgg_UserId] = tChildren2020TwistedEgg_Cont["Num"][nChildren2020TwistedEgg_UserId] + 1
	-- Item_AddItem(nChildren2020TwistedEgg_ItemId)
	--打log
	Sys_SaveActionLog(string.format(sChildren2020TwistedEgg_Log,nChildren2020TwistedEgg_ItemId))
	User_EffectAdd("self","angelwing")
	local nChildren2020TwistedEgg_CountData = tChildren2020TwistedEgg_Cont["Num"][nChildren2020TwistedEgg_UserId]
	local nChildren2020TwistedEgg_Color = 0
	if tChildren2020TwistedEgg_Cont["FirstFlag"][nChildren2020TwistedEgg_UserId] == true then 
		nChildren2020TwistedEgg_ColorData = nChildren2020TwistedEgg_Phase
		tChildren2020TwistedEgg_Cont["FirstFlag"][nChildren2020TwistedEgg_UserId] = false
	end 
	--判断下一个采集颜色
	if nChildren2020TwistedEgg_ColorData%2 == 0 then 
		nChildren2020TwistedEgg_Color = tChildren2020TwistedEgg_Cont["Phase"]["Yellow"]
	else
		nChildren2020TwistedEgg_Color = tChildren2020TwistedEgg_Cont["Phase"]["Blue"]
	end
	--记录当前已用的采集时间
	local nChildren2020TwistedEgg_CostTime  = os.time() - tChildren2020TwistedEgg_Cont["StartTime"][nChildren2020TwistedEgg_UserId]  
	
	-- nChildren2020TwistedEgg_CostTime = string.format("%0.3f", nChildren2020TwistedEgg_CostTime) 
	--出提示
	User_TalkChannel2005(string.format(tChildren2020TwistedEgg_Text["MsgBox"]["GetItem"],tChildren2020TwistedEgg_Cont["Color"][nChildren2020TwistedEgg_Color],nChildren2020TwistedEgg_CountData,nChildren2020TwistedEgg_CostTime))
	--记录下一个采集颜色
	if nChildren2020TwistedEgg_ColorData%2 == 0 then
		tChildren2020TwistedEgg_Cont["NextColor"][nChildren2020TwistedEgg_UserId] = tChildren2020TwistedEgg_Cont["Phase"]["Yellow"]
	else
		tChildren2020TwistedEgg_Cont["NextColor"][nChildren2020TwistedEgg_UserId] = tChildren2020TwistedEgg_Cont["Phase"]["Blue"]
	end
	--采集到足够宝玉，传送出地图
	if nChildren2020TwistedEgg_CountData >= 20 then 
		--打结束掩码
		Sys_SaveActionFestivalLog(tChildren2020TwistedEgg_Log["EndMisson"])
		OnTimer_DelUserTimer("Children2020TwistedEgg_MoveBack</N>",nChildren2020TwistedEgg_UserId)
		User_SetTimer(1,"NULL",1,nChildren2020TwistedEgg_UserId)
		Children2020TwistedEgg_ReMove()
		return
	end
	--随机传送
	Children2020TwistedEgg_ChgMap()
end
--比赛结束，传回游乐园
function Children2020TwistedEgg_ReMove(nChildren2020TwistedEgg_UserId)
	local nChildren2020TwistedEgg_UserId = nChildren2020TwistedEgg_UserId or Get_UserId()
	local nChildren2020TwistedEgg_MapId = tChildren2020TwistedEgg_Cont["Pos"]["MoveBack"]["MapId"]
	local nChildren2020TwistedEgg_Cellx = tChildren2020TwistedEgg_Cont["Pos"]["MoveBack"]["Cellx"]
	local nChildren2020TwistedEgg_Celly = tChildren2020TwistedEgg_Cont["Pos"]["MoveBack"]["Celly"]
	local nChildren2020TwistedEgg_CostTime  = os.time() - tChildren2020TwistedEgg_Cont["StartTime"][nChildren2020TwistedEgg_UserId]  
	local nChildren2020TwistedEgg_NpcId = tChildren2020TwistedEgg_Cont["NpcId"][2]

	-- nChildren2020TwistedEgg_CostTime = string.format("%0.3f", nChildren2020TwistedEgg_CostTime) 
	--最低可领奖时间60秒
	-- if math.floor(nChildren2020TwistedEgg_CostTime) <= 60 then
	--可领奖时间
	Task_SetStatistic(tChildren2020TwistedEgg_Stc[2]["Time"]["EventType"] ,tChildren2020TwistedEgg_Stc[2]["Time"]["DataType"],math.floor(nChildren2020TwistedEgg_CostTime),1,nChildren2020TwistedEgg_UserId)
	Sys_MsgBox(string.format(tChildren2020TwistedEgg_Text["MsgBox"]["Done"],nChildren2020TwistedEgg_CostTime),string.format("NpcPosition_PathFind</N>%d",nChildren2020TwistedEgg_NpcId),nil,nChildren2020TwistedEgg_UserId)
	User_UserRandBoundTrans(nChildren2020TwistedEgg_MapId,nChildren2020TwistedEgg_Cellx,nChildren2020TwistedEgg_Celly,2,2,1,nChildren2020TwistedEgg_UserId)
end
--随机传送
function Children2020TwistedEgg_NpcChgMap()
	local nChildren2020TwistedEgg_UserId = Get_UserId()
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		return
	end
	local nChildren2020TwistedEgg_CostTime  = os.time() - tChildren2020TwistedEgg_Cont["StartTime"][nChildren2020TwistedEgg_UserId]  
	Children2020TwistedEgg_ChgMap()
end
--随机传送
function Children2020TwistedEgg_ChgMap(nNpcId)
	local nChildren2020TwistedEgg_Random = math.random(19526,19588)
	local nChildren2020TwistedEgg_MapId = tChildren2020TwistedEgg_Cont["Collect"][nChildren2020TwistedEgg_Random]["MapId"]
	local nChildren2020TwistedEgg_Cellx = tChildren2020TwistedEgg_Cont["Collect"][nChildren2020TwistedEgg_Random]["Cellx"] 
	local nChildren2020TwistedEgg_Celly = tChildren2020TwistedEgg_Cont["Collect"][nChildren2020TwistedEgg_Random]["Celly"] 
	
	User_UserRandBoundTrans(nChildren2020TwistedEgg_MapId,nChildren2020TwistedEgg_Cellx,nChildren2020TwistedEgg_Celly,2,2,1)
end
--获取九宫采玉奖励
function Children2020TwistedEgg_GetReward(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		return
	end
	local nChildren2020TwistedEgg_UserId = Get_UserId()
	local sChildren2020TwistedEgg_UserName = Get_UserName(nChildren2020TwistedEgg_UserId)
	local nChildren2020TwistedEgg_EventType = tChildren2020TwistedEgg_Stc[2]["Time"]["EventType"]
	local nChildren2020TwistedEgg_DataType = tChildren2020TwistedEgg_Stc[2]["Time"]["DataType"] 

	
	local nChildren2020TwistedEgg_Time = Get_UserStatisticValue(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,nChildren2020TwistedEgg_UserId)
	for i,v in pairs(tChildren2020TwistedEgg_Cont["Rewaard"]) do 
		if nChildren2020TwistedEgg_Time >= v[1] and nChildren2020TwistedEgg_Time <= v[2] then
			if not RewardTemplate_CheckSpace(tChildren2020TwistedEgg_Reward["JiuGong"][i],nChildren2020TwistedEgg_UserId) then
				Sys_MsgBox(tChildren2020TwistedEgg_Text["MsgBox"]["NoBagSpace"])
				return
			end
			--掩码清零
			Task_SetStatistic(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,0,1)
			Task_SetStcTimestamp(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,0)
			--30秒内出公告
			if i == 1 then
				Sys_SystemBroadcast(string.format(tChildren2020TwistedEgg_Text["TalkBoard"]["JiuGong"],sChildren2020TwistedEgg_UserName,nChildren2020TwistedEgg_Time))
			end
			--发奖
			RewardTemplate_UseItemAndMsg(tChildren2020TwistedEgg_Reward["JiuGong"][i],nChildren2020TwistedEgg_UserId)
			LinkNpcGossipFunc_New(nNpcId,"1-1")
		end
	end


end

----------------妖精快跑函数
-- 进入梦幻岛
function Children2020TwistedEgg_EnterGarden(nNpcId,nIndex)
	local nChildren2020TwistedEgg_UserId = Get_UserId()
	local nChildren2020TwistedEgg_NeedItemId = tChildren2020TwistedEgg_Cont["PlayItemId"]
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		return
	end
	local nChildren2020TwistedEgg_EventType = tChildren2020TwistedEgg_Stc[3]["DayTime"]["EventType"]
	local nChildren2020TwistedEgg_DataType = tChildren2020TwistedEgg_Stc[3]["DayTime"]["DataType"] 
	Task_StcReset(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType)
	
	--检测身上是否还有奖励未领取
	local nChildren2020TwistedEgg_TimeEventType = tChildren2020TwistedEgg_Stc[3]["Time"]["EventType"]
	local nChildren2020TwistedEgg_TimeDataType = tChildren2020TwistedEgg_Stc[3]["Time"]["DataType"] 
	
	if Task_ChkStcValue(nChildren2020TwistedEgg_TimeEventType,nChildren2020TwistedEgg_TimeDataType,">",0,nChildren2020TwistedEgg_UserId)then
		Sys_MsgBox(tChildren2020TwistedEgg_Text["MsgBox"]["HaveReward"])
		return
	end
	
	if nIndex == 1 then
	--今日第一次进入梦幻岛，打上首次游戏掩码
		if Task_ChkStcValue(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,"==",0,nChildren2020TwistedEgg_UserId) then
			Task_SetStatistic(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,1,1,nChildren2020TwistedEgg_UserId)
		end
	else
		if not Item_ChkMulItem(nChildren2020TwistedEgg_NeedItemId,nChildren2020TwistedEgg_NeedItemId,1) then
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return
		else
			if not Item_DelMulItem(nChildren2020TwistedEgg_NeedItemId,nChildren2020TwistedEgg_NeedItemId,1)  then
				return
			else
				--打删除物品log
				Sys_SaveActionFestivalLog(string.format(tChildren2020TwistedEgg_Log["DelItem"],nChildren2020TwistedEgg_NeedItemId,1),nChildren2020TwistedEgg_UserId)
			end
		end
	end
	
	--清掩码
	Task_SetStatistic(tChildren2020TwistedEgg_Stc[3]["Time"]["EventType"],tChildren2020TwistedEgg_Stc[3]["Time"]["DataType"],0,1)
	Task_SetStcTimestamp(tChildren2020TwistedEgg_Stc[3]["Time"]["EventType"],tChildren2020TwistedEgg_Stc[3]["Time"]["DataType"],0)

	Task_SetStatistic(tChildren2020TwistedEgg_Stc[3]["TransForm"]["EventType"],tChildren2020TwistedEgg_Stc[3]["TransForm"]["DataType"],0,1)
	Task_SetStcTimestamp(tChildren2020TwistedEgg_Stc[3]["TransForm"]["EventType"],tChildren2020TwistedEgg_Stc[3]["TransForm"]["DataType"],0)

	-- 积分清0
	tChildren2020TwistedEgg_Cont["Score"][nChildren2020TwistedEgg_UserId] = 0
	-- 时间记录
	tChildren2020TwistedEgg_Cont["Time"][nChildren2020TwistedEgg_UserId] = os.time()
	--打入场log
	Sys_SaveActionFestivalLog(tChildren2020TwistedEgg_Log["EnterMascotGarden"],nChildren2020TwistedEgg_UserId)
	
	-- 进入地图
	Children2020TwistedEgg_TransPos(1,nChildren2020TwistedEgg_UserId)
	
	-- 变身
	Children2020TwistedEgg_TransFrom(nChildren2020TwistedEgg_UserId,1)
	
	-- 加状态
	Children2020TwistedEgg_AddBuff(nChildren2020TwistedEgg_UserId,1)
	
	-- 重置陷阱
	Children2020TwistedEgg_StartTrap()
	-- 刷新新陷阱
	Children2020TwistedEgg_RefreshTrap()
	Sys_MsgBox(tChildren2020TwistedEgg_Text["MsgBox"]["Enter2"])
	--倒计时
	OnTimer_SetUserTimer(300,"Children2020TwistedEgg_MoveBack</N>"..nChildren2020TwistedEgg_UserId.."</N>".."3",nChildren2020TwistedEgg_UserId)
	User_SetTimer(300,"NULL",1,nChildren2020TwistedEgg_UserId)
	User_EffectAdd("self","task073",nChildren2020TwistedEgg_UserId)
end
-- 玩家变身
function Children2020TwistedEgg_TransFrom(nChildren2020TwistedEgg_UserId,nIndex)
	local nChildren2020TwistedEgg_UserId = nChildren2020TwistedEgg_UserId or Get_UserId()
	local nChildren2020TwistedEgg_UserSex = Get_UserSex(nChildren2020TwistedEgg_UserId)
	local nChildren2020TwistedEgg_SkillType = tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][nIndex][nChildren2020TwistedEgg_UserSex]["SkillType"]
	local nChildren2020TwistedEgg_SkillLevel = tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][nIndex][nChildren2020TwistedEgg_UserSex]["SkillLevel"]
	local nChildren2020TwistedEgg_MonsterType = tChildren2020TwistedEgg_MascotGarden_Count["TransFrom"][nIndex][nChildren2020TwistedEgg_UserSex]["MonsterType"]
	local nChildren2020TwistedEgg_Time = tChildren2020TwistedEgg_MascotGarden_Count["TimeDelay"]
	-- 变身前清除变身
	User_SetTransform(0)
	User_TransForm(nChildren2020TwistedEgg_SkillType,nChildren2020TwistedEgg_SkillLevel,nChildren2020TwistedEgg_MonsterType,nChildren2020TwistedEgg_Time,nChildren2020TwistedEgg_UserId)
end

-- 玩家加状态
function Children2020TwistedEgg_AddBuff(nChildren2020TwistedEgg_UserId)
	local nChildren2020TwistedEgg_UserId = nChildren2020TwistedEgg_UserId or Get_UserId()
	-- 删除玩家状态
	User_DelAllAttribStatus(nChildren2020TwistedEgg_UserId)
	Children2020TwistedEgg_DelAllStatus(nChildren2020TwistedEgg_UserId)
	local nChildren2020TwistedEgg_Status = tChildren2020TwistedEgg_Status["MascotGarden"]["Status"]
	local nChildren2020TwistedEgg_Power = tChildren2020TwistedEgg_Status["MascotGarden"]["Power"]
	local nChildren2020TwistedEgg_Secs = tChildren2020TwistedEgg_Status["MascotGarden"]["Secs"]
	local nChildren2020TwistedEgg_Times = tChildren2020TwistedEgg_Status["MascotGarden"]["Times"]
	local nChildren2020TwistedEgg_RemainTime = tChildren2020TwistedEgg_Status["MascotGarden"]["RemainTime"]
	local nChildren2020TwistedEgg_EndTime = tChildren2020TwistedEgg_Status["MascotGarden"]["EndTime"]
	local nChildren2020TwistedEgg_Recordable = tChildren2020TwistedEgg_Status["MascotGarden"]["Recordable"]
	
	User_AddRoleStatus(nChildren2020TwistedEgg_Status,nChildren2020TwistedEgg_Power,nChildren2020TwistedEgg_Secs,nChildren2020TwistedEgg_Times,nChildren2020TwistedEgg_RemainTime,nChildren2020TwistedEgg_EndTime,nChildren2020TwistedEgg_Recordable,0,0,nChildren2020TwistedEgg_UserId)
end
-- 删除有加移动速度的状态
function Children2020TwistedEgg_DelAllStatus(nChildren2020TwistedEgg_UserId)
	local tChildren2020TwistedEgg_Status = {18,49,150}
	for i,v in pairs(tChildren2020TwistedEgg_Status) do
		if User_ChkRoleStatus(v,nChildren2020TwistedEgg_UserId) then
			User_DelRoleStatus(v,nChildren2020TwistedEgg_UserId)
		end
	end
end

-- 地图传送
function Children2020TwistedEgg_TransPos(nSendIndex,nChildren2020TwistedEgg_UserId)
	local nChildren2020TwistedEgg_Index = nSendIndex or 2
	local nChildren2020TwistedEgg_UserId = nChildren2020TwistedEgg_UserId or Get_UserId()
	local nChildren2020TwistedEgg_MapId = tChildren2020TwistedEgg_MascotGarden_Count["ChgMap"][nChildren2020TwistedEgg_Index]["MapId"]
	local nChildren2020TwistedEgg_PosX = tChildren2020TwistedEgg_MascotGarden_Count["ChgMap"][nChildren2020TwistedEgg_Index]["PosX"]
	local nChildren2020TwistedEgg_PosY = tChildren2020TwistedEgg_MascotGarden_Count["ChgMap"][nChildren2020TwistedEgg_Index]["PosY"]
	local nChildren2020TwistedEgg_Range = tChildren2020TwistedEgg_MascotGarden_Count["ChgMap"][nChildren2020TwistedEgg_Index]["Range"]
	local nChildren2020TwistedEgg_Effect = tChildren2020TwistedEgg_MascotGarden_Count["ChgMap"][nChildren2020TwistedEgg_Index]["Effect"]
	local sChildren2020TwistedEgg_UserTalk = tChildren2020TwistedEgg_MascotGarden_Count["ChgMap"][nChildren2020TwistedEgg_Index]["Talk"]
	local sChildren2020TwistedEgg_UserMsg = tChildren2020TwistedEgg_MascotGarden_Count["ChgMap"][nChildren2020TwistedEgg_Index]["MsgBox"]

	if nChildren2020TwistedEgg_Index == 1 then
		-- 非活动时间不让其进去
		if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
			return
		end
		local nRealIndex = math.random(1,4)
		nPosX = tChildren2020TwistedEgg_MascotGarden_Count["RandomPos"][nRealIndex][1]
		nPosY = tChildren2020TwistedEgg_MascotGarden_Count["RandomPos"][nRealIndex][2]
	elseif nChildren2020TwistedEgg_Index == 2 then
		User_SetTransform(0)
		if User_ChkRoleStatus(tChildren2020TwistedEgg_Status["MascotGarden"]["Status"],nChildren2020TwistedEgg_UserId) then
			User_DelRoleStatus(tChildren2020TwistedEgg_Status["MascotGarden"]["Status"],nChildren2020TwistedEgg_UserId)
		end
	end
	
	User_UserRandBoundTrans(nChildren2020TwistedEgg_MapId,nChildren2020TwistedEgg_PosX,nChildren2020TwistedEgg_PosY,nChildren2020TwistedEgg_Range,nChildren2020TwistedEgg_Range)
	if sUserTalk ~= nil then
		User_TalkChannel2005(tChildren2020TwistedEgg_Text[sUserTalk],nChildren2020TwistedEgg_UserId)
	end
	if sUserMsg ~= nil then
		Sys_MsgBox(tChildren2020TwistedEgg_Text[sUserMsg],nil,nil,nChildren2020TwistedEgg_UserId)
	end
	User_EffectAdd(tChildren2020TwistedEgg_Effect[nChildren2020TwistedEgg_Index]["EffectObj"],tChildren2020TwistedEgg_Effect[nChildren2020TwistedEgg_Index]["Effect"],nChildren2020TwistedEgg_UserId)
end
--妖精快跑领奖
function Children2020TwistedEgg_GetRewardGarden(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		return
	end
	local nChildren2020TwistedEgg_UserId = Get_UserId()
	local sChildren2020TwistedEgg_UserName = Get_UserName(nChildren2020TwistedEgg_UserId)
	local nChildren2020TwistedEgg_EventType = tChildren2020TwistedEgg_Stc[3]["Time"]["EventType"]
	local nChildren2020TwistedEgg_DataType = tChildren2020TwistedEgg_Stc[3]["Time"]["DataType"] 
	local nChildren2020TwistedEgg_Time = Get_UserStatisticValue(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,nChildren2020TwistedEgg_UserId)
	for i,v in pairs(tChildren2020TwistedEgg_MascotGarden_Count["Rewaard"]) do 
		if nChildren2020TwistedEgg_Time >= v[1] and nChildren2020TwistedEgg_Time <= v[2] then
			if not RewardTemplate_CheckSpace(tChildren2020TwistedEgg_Reward["YaoJing"][i],nChildren2020TwistedEgg_UserId) then
				Sys_MsgBox(tChildren2020TwistedEgg_Text["MsgBox"]["NoBagSpace"])
				return
			end
			--掩码清零
			Task_SetStatistic(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,0,1)
			Task_SetStcTimestamp(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,0)
			--30秒内出公告
			if i == 1 then
				Sys_SystemBroadcast(string.format(tChildren2020TwistedEgg_Text["TalkBoard"]["YaoJing"],sChildren2020TwistedEgg_UserName,nChildren2020TwistedEgg_Time))
			end
			--发奖
			RewardTemplate_UseItemAndMsg(tChildren2020TwistedEgg_Reward["YaoJing"][i],nChildren2020TwistedEgg_UserId)
			LinkNpcGossipFunc_New(nNpcId,"1-1")
		end
	end
end
--第一次刷新陷阱
function Children2020TwistedEgg_StartTrap()
	if tChildren2020TwistedEgg_MascotGarden_Count["Trap"]  == 1 then
		return
	end
	tChildren2020TwistedEgg_MascotGarden_Count["Trap"]  = 1
	local nChildren2020TwistedEgg_MapId = tChildren2020TwistedEgg_TrapMsg["MapID"]
	local nChildren2020TwistedEgg_Look = tChildren2020TwistedEgg_TrapMsg["Look"]
	local nChildren2020TwistedEgg_TrapId = tChildren2020TwistedEgg_TrapMsg["TrapID"]
	local nChildren2020TwistedEgg_PosCX = tChildren2020TwistedEgg_TrapMsg["PosCX"]
	local nChildren2020TwistedEgg_PosCY = tChildren2020TwistedEgg_TrapMsg["PosCY"]
	
	if not Trap_DelMapTrap(nChildren2020TwistedEgg_MapId,nChildren2020TwistedEgg_TrapId) then
		return
	end
	local nChildren2020TwistedEgg_Dis = #tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"]/2
	for i=1,nChildren2020TwistedEgg_Dis do
		local nChildren2020TwistedEgg_PosX = tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][i][1]
		local nChildren2020TwistedEgg_PosY = tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"][i][2]
		Trap_CreateMapTrap(nChildren2020TwistedEgg_TrapId,nChildren2020TwistedEgg_Look,0,nChildren2020TwistedEgg_MapId,nChildren2020TwistedEgg_PosX,nChildren2020TwistedEgg_PosY,nChildren2020TwistedEgg_PosCX,nChildren2020TwistedEgg_PosCY)
	end
end
--幸运水晶
function Children2020TwistedEgg_RefreshTrap()
	if tChildren2020TwistedEgg_MascotGarden_Count["NewTrap"] == 1 then
		return
	end
	tChildren2020TwistedEgg_MascotGarden_Count["NewTrap"] = 1
	
	local nChildren2020TwistedEgg_MapId = tChildren2020TwistedEgg_MascotGarden_Count["NewTrapMsg"]["MapID"]
	local nChildren2020TwistedEgg_TrapId = tChildren2020TwistedEgg_MascotGarden_Count["NewTrapMsg"]["TrapID"]
	local nChildren2020TwistedEgg_Look = tChildren2020TwistedEgg_MascotGarden_Count["NewTrapMsg"]["Look"]
	local nChildren2020TwistedEgg_PosCX = tChildren2020TwistedEgg_MascotGarden_Count["NewTrapMsg"]["PosCX"]
	local nChildren2020TwistedEgg_PosCY = tChildren2020TwistedEgg_MascotGarden_Count["NewTrapMsg"]["PosCY"]

	if not Trap_DelMapTrap(nChildren2020TwistedEgg_MapId,nChildren2020TwistedEgg_TrapId) then
		return
	end
	local nChildren2020TwistedEgg_Dis = #tChildren2020TwistedEgg_MascotGarden_Count["NewTrapPos"]
	for i=1,nChildren2020TwistedEgg_Dis do
		local nChildren2020TwistedEgg_PosX = tChildren2020TwistedEgg_MascotGarden_Count["NewTrapPos"][i][1]
		local nChildren2020TwistedEgg_PosY = tChildren2020TwistedEgg_MascotGarden_Count["NewTrapPos"][i][2]
		Trap_CreateMapTrap(nChildren2020TwistedEgg_TrapId,nChildren2020TwistedEgg_Look,0,nChildren2020TwistedEgg_MapId,nChildren2020TwistedEgg_PosX,nChildren2020TwistedEgg_PosY,nChildren2020TwistedEgg_PosCX,nChildren2020TwistedEgg_PosCY)
	end
	
	
end
-- 新陷阱
function Children2020TwistedEgg_NewTrap(nTrapId,nTrapType)
	local nChildren2020TwistedEgg_PosX = Get_TrapPosX(nTrapId)
	local nChildren2020TwistedEgg_PosY = Get_TrapPosY(nTrapId)
	
	local tChildren2020TwistedEgg_Pos = tChildren2020TwistedEgg_MascotGarden_Count["TrapPos"]
	local nChildren2020TwistedEgg_Look = tChildren2020TwistedEgg_TrapMsg["Look"]
	if nTrapType == tChildren2020TwistedEgg_MascotGarden_Count["NewTrapMsg"]["TrapID"] then
		tChildren2020TwistedEgg_Pos = tChildren2020TwistedEgg_MascotGarden_Count["NewTrapPos"]
		nChildren2020TwistedEgg_Look = tChildren2020TwistedEgg_MascotGarden_Count["NewTrapMsg"]["Look"]
	end
	
	local nChildren2020TwistedEgg_OldPos = 0
	for i,v in pairs(tChildren2020TwistedEgg_Pos) do
		if nChildren2020TwistedEgg_PosX == v[1] and nChildren2020TwistedEgg_PosY == v[2] then
			nChildren2020TwistedEgg_OldPos = i
			break
		end
	end
	
	if nTrapType == tChildren2020TwistedEgg_MascotGarden_Count["NewTrapMsg"] then
		if nChildren2020TwistedEgg_OldPos <= 3 then
			nChildren2020TwistedEgg_OldPos = math.random(4,6)
		else
			nChildren2020TwistedEgg_OldPos = math.random(1,3)
		end
	else
		local nChildren2020TwistedEgg_Dis = #tChildren2020TwistedEgg_Pos/2
		if nChildren2020TwistedEgg_OldPos <= nChildren2020TwistedEgg_Dis then
			nChildren2020TwistedEgg_OldPos = nChildren2020TwistedEgg_OldPos + nChildren2020TwistedEgg_Dis
		else
			nChildren2020TwistedEgg_OldPos = nChildren2020TwistedEgg_OldPos - nChildren2020TwistedEgg_Dis
		end
	end
	
	local nChildren2020TwistedEgg_MapId = tChildren2020TwistedEgg_TrapMsg["MapID"]
	local nChildren2020TwistedEgg_PosCX = tChildren2020TwistedEgg_TrapMsg["PosCX"]
	local nChildren2020TwistedEgg_PosCY = tChildren2020TwistedEgg_TrapMsg["PosCY"]
	if Trap_EraseMapTrap(nTrapId) then
		local nChildren2020TwistedEgg_NewPosX = tChildren2020TwistedEgg_Pos[nChildren2020TwistedEgg_OldPos][1]
		local nChildren2020TwistedEgg_NewPosY = tChildren2020TwistedEgg_Pos[nChildren2020TwistedEgg_OldPos][2]
		if Trap_CreateMapTrap(nTrapType,nChildren2020TwistedEgg_Look,0,nChildren2020TwistedEgg_MapId,nChildren2020TwistedEgg_NewPosX,nChildren2020TwistedEgg_NewPosY,nChildren2020TwistedEgg_PosCX,nChildren2020TwistedEgg_PosCY) then
			return true
		end
		return false
	end
	return false
end
-- 陷阱触发
function Children2020TwistedEgg_Trap(nTrapId,nTrapType)
	local nChildren2020TwistedEgg_UserId = Get_UserId()
	-- 生成新的陷阱
	local nChildren2020TwistedEgg_NpcId = tChildren2020TwistedEgg_Cont["NpcId"][3]
	if tChildren2020TwistedEgg_Cont["Score"][nChildren2020TwistedEgg_UserId] == nil or tChildren2020TwistedEgg_Cont["Time"][nChildren2020TwistedEgg_UserId] == nil then
		local nChildren2020TwistedEgg_BackMapId = tChildren2020TwistedEgg_Cont["Pos"]["MoveBack"]["MapId"]
		local nChildren2020TwistedEgg_BackCellx = tChildren2020TwistedEgg_Cont["Pos"]["MoveBack"]["Cellx"]
		local nChildren2020TwistedEgg_BackCelly = tChildren2020TwistedEgg_Cont["Pos"]["MoveBack"]["Celly"]
		OnTimer_DelUserTimer("Children2020TwistedEgg_MoveBack",nChildren2020TwistedEgg_UserId)
		User_SetTimer(1,"NULL",1,nChildren2020TwistedEgg_UserId)
		Children2020TwistedEgg_TransPos(2,nChildren2020TwistedEgg_UserId)
		User_UserRandBoundTrans(nChildren2020TwistedEgg_BackMapId,nChildren2020TwistedEgg_BackCellx,nChildren2020TwistedEgg_BackCelly,2,2,1,nChildren2020TwistedEgg_UserId)
		return
	end
	
	
	
	
	
	
	if nTrapType == tChildren2020TwistedEgg_MascotGarden_Count["NewTrapMsg"]["TrapID"] then
		local nChildren2020TwistedEgg_Num = tChildren2020TwistedEgg_MascotGarden_Count["NewTrapNum"]
		tChildren2020TwistedEgg_MascotGarden_Count["NewTrapNum"] = nChildren2020TwistedEgg_Num-1
		if not Trap_EraseMapTrap(nTrapId) then
			return
		end
	else
		if not Children2020TwistedEgg_NewTrap(nTrapId,nTrapType) then
			return false
		end
	end
	
	
	-- 未变身传送出去（因为目前没有小狐狸大外形，先注释，后续有新look需要打开，备注防止忘记）
	local nChildren2020TwistedEgg_TramFrom = Get_UserTransformId(nChildren2020TwistedEgg_UserId)
	if not (nChildren2020TwistedEgg_TramFrom == 295 or nChildren2020TwistedEgg_TramFrom == 296 or nChildren2020TwistedEgg_TramFrom == 298 or nChildren2020TwistedEgg_TramFrom == 299 or nChildren2020TwistedEgg_TramFrom == 300 or nChildren2020TwistedEgg_TramFrom == 301) then
		OnTimer_DelUserTimer("Children2020TwistedEgg_MoveBack",nChildren2020TwistedEgg_UserId)
		User_SetTimer(1,"NULL",1,nChildren2020TwistedEgg_UserId)
		Children2020TwistedEgg_TransPos(2,nChildren2020TwistedEgg_UserId)
		return
	end
	
	-- 已过了活动时间
	-- if Sys_ChkDayTime(tOlympicGames_MascotGarden_Count["AfterActivityTime"]) or Sys_ChkDayTime(tOlympicGames_MascotGarden_Count["AfterActivityTime1"]) then
		-- OlympicGames_MascotGarden_TransPos(2,nNowUserId)
		-- if Sys_ChkDayTime(tOlympicGames_MascotGarden_Count["AfterActivityTime"]) then
			-- Sys_MsgBox(tChildren2020TwistedEgg_Text["AutoBest"]["End"])
		-- else
			-- Sys_MsgBox(tChildren2020TwistedEgg_Text["AutoBest"]["EndFin"])
		-- end
		-- return
	-- end
	
	
	
	-- 积分达到1000分传出地图
	local nChildren2020TwistedEgg_GolaScore = tChildren2020TwistedEgg_MascotGarden_Count["GoalScore"]
	if tChildren2020TwistedEgg_Cont["Score"][nChildren2020TwistedEgg_UserId] ~= nil and tChildren2020TwistedEgg_Cont["Score"][nChildren2020TwistedEgg_UserId] >= nChildren2020TwistedEgg_GolaScore then
		local nChildren2020TwistedEgg_CostTime  = os.time() - tChildren2020TwistedEgg_Cont["Time"][nChildren2020TwistedEgg_UserId]
		-- nChildren2020TwistedEgg_CostTime = string.format("%0.3f", nChildren2020TwistedEgg_CostTime) 
		--可领奖时间
		Task_SetStatistic(tChildren2020TwistedEgg_Stc[3]["Time"]["EventType"] ,tChildren2020TwistedEgg_Stc[3]["Time"]["DataType"],math.floor(nChildren2020TwistedEgg_CostTime),1)
		Sys_MsgBox(string.format(tChildren2020TwistedEgg_Text["MsgBox"]["NeverlandSuccess"],nChildren2020TwistedEgg_CostTime),string.format("NpcPosition_PathFind</N>%d",nChildren2020TwistedEgg_NpcId),nil,nChildren2020TwistedEgg_UserId)
		Children2020TwistedEgg_TransPos(2,nChildren2020TwistedEgg_UserId)
		OnTimer_DelUserTimer("Children2020TwistedEgg_MoveBack",nChildren2020TwistedEgg_UserId)
		User_SetTimer(1,"NULL",1,nChildren2020TwistedEgg_UserId)
		return
	end

	-- 检测删除xp状态
	local tChildren2020TwistedEgg_Status = {18,150}
	for i,v in pairs(tChildren2020TwistedEgg_Status) do
		if User_ChkRoleStatus(v,nChildren2020TwistedEgg_UserId) then
			User_DelRoleStatus(v,nChildren2020TwistedEgg_UserId)
		end
	end
	

	-- 加积分
	Children2020TwistedEgg_AddScore(nTrapType,nChildren2020TwistedEgg_UserId)
end
-- 加积分
function Children2020TwistedEgg_AddScore(nTrapType,nChildren2020TwistedEgg_UserId)
	local nChildren2020TwistedEgg_NpcId = tChildren2020TwistedEgg_Cont["NpcId"][3]
	local nChildren2020TwistedEgg_UserId = nChildren2020TwistedEgg_UserId or Get_UserId()
	local nFlag,tReward = Probabil_RandomAward(tChildren2020TwistedEgg_RandomScore,nTrapType)
	local nChildren2020TwistedEgg_Score = tReward[1]["tAward"][1]["Item_1"]
	User_EffectAdd(tChildren2020TwistedEgg_Effect[3]["EffectObj"],tChildren2020TwistedEgg_Effect[3]["Effect"],nChildren2020TwistedEgg_UserId)
	if tChildren2020TwistedEgg_Cont["Score"][nChildren2020TwistedEgg_UserId] == nil then
		tChildren2020TwistedEgg_Cont["Score"][nChildren2020TwistedEgg_UserId] = 0
	end
	local nChildren2020TwistedEgg_AllScore = tChildren2020TwistedEgg_Cont["Score"][nChildren2020TwistedEgg_UserId]+nChildren2020TwistedEgg_Score
	tChildren2020TwistedEgg_Cont["Score"][nChildren2020TwistedEgg_UserId] = nChildren2020TwistedEgg_AllScore
	local sChildren2020TwistedEgg_Tip = tChildren2020TwistedEgg_Text["RewardScore"][nChildren2020TwistedEgg_Score]
	if nChildren2020TwistedEgg_AllScore % 30 == 0 or  nChildren2020TwistedEgg_AllScore % 30 == 5 or nChildren2020TwistedEgg_AllScore == 800 then
		if nChildren2020TwistedEgg_Score <= 10 then
			sChildren2020TwistedEgg_Tip = tChildren2020TwistedEgg_Text["RewardScore"][10]
			User_TalkChannel2005(string.format(sChildren2020TwistedEgg_Tip,nChildren2020TwistedEgg_AllScore),nChildren2020TwistedEgg_UserId)
		elseif nChildren2020TwistedEgg_Score == 30 or nScore == 60 then
			User_TalkChannel2005(sChildren2020TwistedEgg_Tip,nChildren2020TwistedEgg_UserId)
		else
			User_TalkChannel2005(string.format(sChildren2020TwistedEgg_Tip,nChildren2020TwistedEgg_AllScore),nChildren2020TwistedEgg_UserId)
		end
	end

	local nChildren2020TwistedEgg_NowScore = tChildren2020TwistedEgg_Cont["Score"][nChildren2020TwistedEgg_UserId]
	
	if nChildren2020TwistedEgg_NowScore >= 300 and nChildren2020TwistedEgg_NowScore <= 600 then
		--检测是否变身过
		if Task_ChkStcValue(tChildren2020TwistedEgg_Stc[3]["TransForm"]["EventType"],tChildren2020TwistedEgg_Stc[3]["TransForm"]["DataType"],"==",0,nChildren2020TwistedEgg_UserId) then
			Task_AddStatistic(tChildren2020TwistedEgg_Stc[3]["TransForm"]["EventType"],tChildren2020TwistedEgg_Stc[3]["TransForm"]["DataType"],1,1,nChildren2020TwistedEgg_UserId)
			Children2020TwistedEgg_TransFrom(nChildren2020TwistedEgg_UserId,2)
		end
		elseif  nChildren2020TwistedEgg_NowScore >= 600 and nChildren2020TwistedEgg_NowScore <= 800 then
			--检测是否变身过
			if Task_ChkStcValue(tChildren2020TwistedEgg_Stc[3]["TransForm"]["EventType"],tChildren2020TwistedEgg_Stc[3]["TransForm"]["DataType"],"==",1,nChildren2020TwistedEgg_UserId) then
				Task_AddStatistic(tChildren2020TwistedEgg_Stc[3]["TransForm"]["EventType"],tChildren2020TwistedEgg_Stc[3]["TransForm"]["DataType"],1,1,nChildren2020TwistedEgg_UserId)
				Children2020TwistedEgg_TransFrom(nChildren2020TwistedEgg_UserId,3)
			end
	end
	-- 积分达到1000分传出地图
	local nChildren2020TwistedEgg_GolaScore = tChildren2020TwistedEgg_MascotGarden_Count["GoalScore"]
	if tChildren2020TwistedEgg_Cont["Score"][nChildren2020TwistedEgg_UserId] ~= nil and tChildren2020TwistedEgg_Cont["Score"][nChildren2020TwistedEgg_UserId] >= nChildren2020TwistedEgg_GolaScore then
		local nChildren2020TwistedEgg_CostTime  = os.time() - tChildren2020TwistedEgg_Cont["Time"][nChildren2020TwistedEgg_UserId]
		-- nChildren2020TwistedEgg_CostTime = string.format("%0.3f", nChildren2020TwistedEgg_CostTime) 
		--可领奖时间
		Task_SetStatistic(tChildren2020TwistedEgg_Stc[3]["Time"]["EventType"] ,tChildren2020TwistedEgg_Stc[3]["Time"]["DataType"],math.floor(nChildren2020TwistedEgg_CostTime),1)
		Sys_MsgBox(string.format(tChildren2020TwistedEgg_Text["MsgBox"]["NeverlandSuccess"],nChildren2020TwistedEgg_CostTime),string.format("NpcPosition_PathFind</N>%d",nChildren2020TwistedEgg_NpcId),nil,nChildren2020TwistedEgg_UserId)
		Children2020TwistedEgg_TransPos(2,nChildren2020TwistedEgg_UserId)
		OnTimer_DelUserTimer("Children2020TwistedEgg_MoveBack",nChildren2020TwistedEgg_UserId)
		User_SetTimer(1,"NULL",1,nChildren2020TwistedEgg_UserId)
		return
	end
	
end
function Children2020TwistedEgg_PathFindNpc()
	local nChildren2020TwistedEgg_Index = math.random(1,5)
	local nChildren2020TwistedEgg_NPCId = tChildren2020TwistedEgg_Map[nChildren2020TwistedEgg_Index]
	NpcPosition_PathFind(nChildren2020TwistedEgg_NPCId)
end
--------------------------------------------------------------------------------------------------

--倒计时结束传回
--nIndex=2 九宫采玉 nIndex=3 妖精快跑
function Children2020TwistedEgg_MoveBack(nChildren2020TwistedEgg_UserId,nIndex)
	local nChildren2020TwistedEgg_MapId = tChildren2020TwistedEgg_Cont["Pos"]["MoveBack"]["MapId"]
	local nChildren2020TwistedEgg_Cellx = tChildren2020TwistedEgg_Cont["Pos"]["MoveBack"]["Cellx"]
	local nChildren2020TwistedEgg_Celly = tChildren2020TwistedEgg_Cont["Pos"]["MoveBack"]["Celly"]
	local nChildren2020TwistedEgg_NpcId = tChildren2020TwistedEgg_Cont["NpcId"][nIndex]
	local nChildren2020TwistedEgg_UserMapId = Get_UserMapId(nChildren2020TwistedEgg_UserId)
	if nChildren2020TwistedEgg_UserMapId ~=0 and nChildren2020TwistedEgg_UserMapId ~= tChildren2020TwistedEgg_Cont["MapID"][nIndex] then
		return
	end
	--可领奖时间
	User_SetTransform(nChildren2020TwistedEgg_UserId)
	if User_ChkRoleStatus(tChildren2020TwistedEgg_Status["MascotGarden"]["Status"],nChildren2020TwistedEgg_UserId) then
		User_DelRoleStatus(tChildren2020TwistedEgg_Status["MascotGarden"]["Status"],nChildren2020TwistedEgg_UserId)
	end
	Task_SetStatistic(tChildren2020TwistedEgg_Stc[nIndex]["Time"]["EventType"],tChildren2020TwistedEgg_Stc[nIndex]["Time"]["DataType"],300,1,nChildren2020TwistedEgg_UserId)
	Sys_MsgBox(tChildren2020TwistedEgg_Text["MsgBox"]["fail"],string.format("NpcPosition_PathFind</N>%d",nChildren2020TwistedEgg_NpcId),nil,nChildren2020TwistedEgg_UserId)
	User_UserRandBoundTrans(nChildren2020TwistedEgg_MapId,nChildren2020TwistedEgg_Cellx,nChildren2020TwistedEgg_Celly,2,2,1,nChildren2020TwistedEgg_UserId)
end
-------------------------------------------------物品配置-------------------------------------------------

tItem[3316104]=tItem[3316104]or{}
tItem[3316104]["Function"]=function(nItemId,sItemName)
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		local nChildren2020TwistedEgg_ItemNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tChildren2020TwistedEgg_Log["DelItem"],nItemId,nChildren2020TwistedEgg_ItemNum))
			Sys_MsgBox(tChildren2020TwistedEgg_Text["MsgBox"]["DelItem"])
		end
		return
	end
	
	local nChildren2020TwistedEgg_UserId = Get_UserId()
	local nChildren2020TwistedEgg_MapId = Get_UserMapId(nChildren2020TwistedEgg_UserId)
	if nChildren2020TwistedEgg_MapId == tChildren2020TwistedEgg_Cont["YouLeYuan"] then
		--在游乐园，找扭蛋机
		NpcPosition_PathFind(26507)
	elseif  nChildren2020TwistedEgg_MapId == 1002 or  nChildren2020TwistedEgg_MapId == 1036 then
		--在双龙城，找唐鸭鸭
		NpcPosition_PathFind(26486)
	else
		--提示前往双龙城
		Sys_MsgBox(tChildren2020TwistedEgg_Text["MsgBox"]["FindNpc"])
	end
end



-------------------------------------------------NPC配置-------------------------------------------------
tNpcFace[5894]= 119
tNpcFace[5895]= 235
-- 26507,'童趣扭蛋机'
tNpcGossip[26507] = tNpcGossip[26507] or DefaultNpc:new{}
tNpcGossip[26507]["OptionHidden"] = 1
tNpcGossip[26507]["DialogueText"] = tChildren2020TwistedEgg_Text[26507]
tNpcGossip[26507]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113}
tNpcGossip[26507]["ChkFunc1-1"] = function()
	local nChildren2020TwistedEgg_UserId =Get_UserId()
--判断是否屏蔽今日二次确认
	local nChildren2020TwistedEgg_EventType = tChildren2020TwistedEgg_Stc[1]["EventType"]
	local nChildren2020TwistedEgg_DataType = tChildren2020TwistedEgg_Stc[1]["DataType"]
	Task_StcReset(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType)
	-- 掩码值大于1 表示已经打开首次对白
	if Task_ChkStcValue(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,">=",1,nChildren2020TwistedEgg_UserId) then
		tNpcGossip[26507]["Option111"] = tChildren2020TwistedEgg_Text[26507]["Option113"]
		tNpcGossip[26507]["Option112"] = tChildren2020TwistedEgg_Text[26507]["Option114"]
		tNpcGossip[26507]["OptionFunc111"] = "Children2020TwistedEgg_UserEgg</N>26507</N>1</N>10"
		tNpcGossip[26507]["OptionFunc112"] = "Children2020TwistedEgg_UserEgg</N>26507</N>10</N>100"

		return true
	else
		tNpcGossip[26507]["Option111"] = tChildren2020TwistedEgg_Text[26507]["Option111"]
		tNpcGossip[26507]["Option112"] = tChildren2020TwistedEgg_Text[26507]["Option112"]
		tNpcGossip[26507]["OptionFunc111"] = "Children2020TwistedEgg_ComfirmUserEgg</N>26507</N>1</N>10"
		tNpcGossip[26507]["OptionFunc112"] = "Children2020TwistedEgg_ComfirmUserEgg</N>26507</N>10</N>100"
		return true
	end
end
tNpcGossip[26507]["tOption1-1"] = {111,112,115}
tNpcGossip[26507]["OptionChkFunc115"] = function ()
	local nChildren2020TwistedEgg_UserId =Get_UserId()
--检查玩家身上是否有玩具箱
	if Item_ChkMulItem(tChildren2020TwistedEgg_Cont["Toy"],tChildren2020TwistedEgg_Cont["Toy"],1,0,0,nChildren2020TwistedEgg_UserId) then
		return false
	else
		return true
	end
end
tNpcGossip[26507]["OptionFunc115"] = "Children2020TwistedEgg_GetToyBox</N>26507"


tNpcGossip[26507]["Text2-1"] = {211,212,213,214,215}
tNpcGossip[26507]["tOption2-1"] = {211,212}
tNpcGossip[26507]["OptionFunc211"] = "Children2020TwistedEgg_PathFindNpc"
tNpcGossip[26507]["ChkFunc2-1"] = function()
	local nChildren2020TwistedEgg_UserId =Get_UserId()
--判断是否屏蔽今日二次确认
	local nChildren2020TwistedEgg_EventType = tChildren2020TwistedEgg_Stc[1]["EventType"]
	local nChildren2020TwistedEgg_DataType = tChildren2020TwistedEgg_Stc[1]["DataType"]
	Task_StcReset(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType)
	-- 掩码值大于1 表示已经打开首次对白
	if Task_ChkStcValue(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,">=",1,nChildren2020TwistedEgg_UserId) then
		tNpcGossip[26507]["Option212"] = tChildren2020TwistedEgg_Text[26507]["Option213"]
		tNpcGossip[26507]["OptionFunc212"] = "Children2020TwistedEgg_UserEggByEmoney</N>26507</N>1</N>27"
		return true
	else
		tNpcGossip[26507]["Option212"] = tChildren2020TwistedEgg_Text[26507]["Option212"]
		tNpcGossip[26507]["OptionFunc212"] = "Children2020TwistedEgg_ComfirmUserEggByEmoney</N>26507</N>1</N>27"
		return true
	end
end
tNpcGossip[26507]["Text2-2"] = {221,222,223,224,225}
tNpcGossip[26507]["tOption2-2"] = {221,222}
tNpcGossip[26507]["OptionFunc221"] = "Children2020TwistedEgg_PathFindNpc"
tNpcGossip[26507]["ChkFunc2-2"] = function()
	local nChildren2020TwistedEgg_UserId =Get_UserId()
--判断是否屏蔽今日二次确认
	local nChildren2020TwistedEgg_EventType = tChildren2020TwistedEgg_Stc[1]["EventType"]
	local nChildren2020TwistedEgg_DataType = tChildren2020TwistedEgg_Stc[1]["DataType"]
	Task_StcReset(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType)
	-- 掩码值大于1 表示已经打开首次对白
	if Task_ChkStcValue(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,">=",1,nChildren2020TwistedEgg_UserId) then
		tNpcGossip[26507]["Option222"] = tChildren2020TwistedEgg_Text[26507]["Option223"]
		tNpcGossip[26507]["OptionFunc222"] = "Children2020TwistedEgg_UserEggByEmoney</N>26507</N>10</N>270"
		return true
	else
		tNpcGossip[26507]["Option222"] = tChildren2020TwistedEgg_Text[26507]["Option222"]
		tNpcGossip[26507]["OptionFunc222"] = "Children2020TwistedEgg_ComfirmUserEggByEmoney</N>26507</N>10</N>270"
		return true
	end
end

tNpcGossip[26507]["Text3-1"] = {311}
tNpcGossip[26507]["tOption3-1"] = {311,312}
tNpcGossip[26507]["OptionFunc312"] = "Children2020TwistedEgg_BeforeBuy</N>26507"


tNpcGossip[26507]["Text4-1"] = {411,412,4111,4112,4113,4114,4115,4116,4117,4118,4119,41110,413}
tNpcGossip[26507]["tOption4-1"] = {411}
tNpcGossip[26507]["OptionPoint411"] = "1"

tNpcGossip[26507]["Text5-1"] = {511}
tNpcGossip[26507]["tOption5-1"] = {511,512}
tNpcGossip[26507]["OptionPoint512"] = "7-1"

tNpcGossip[26507]["Text6-1"] = {611}
tNpcGossip[26507]["tOption6-1"] = {611,612}

tNpcGossip[26507]["Text7-1"] = {711}
tNpcGossip[26507]["tOption7-1"] = {711,712}
tNpcGossip[26507]["OptionFunc711"] = "Children2020TwistedEgg_BeforeBuy</N>26507"

--------------------------------------------
-----
-- 26508,'华语限定扭蛋机'
tNpcGossip[26508] = tNpcGossip[26508] or DefaultNpc:new{}
tNpcGossip[26508]["OptionHidden"] = 1
tNpcGossip[26508]["DialogueText"] = tChildren2020TwistedEgg_Text[26508]
tNpcGossip[26508]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112}
tNpcGossip[26508]["ChkFunc1-1"] = function()
	local nChildren2020TwistedEgg_UserId =Get_UserId()
--判断是否屏蔽今日二次确认
	local nChildren2020TwistedEgg_EventType = tChildren2020TwistedEgg_Stc[1]["EventType"]
	local nChildren2020TwistedEgg_DataType = tChildren2020TwistedEgg_Stc[1]["DataType"]
	Task_StcReset(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType)
	-- 掩码值大于1 表示已经打开首次对白
	if Task_ChkStcValue(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,">=",1,nChildren2020TwistedEgg_UserId) then
		tNpcGossip[26508]["Option111"] = tChildren2020TwistedEgg_Text[26508]["Option113"]
		tNpcGossip[26508]["Option112"] = tChildren2020TwistedEgg_Text[26508]["Option114"]
		tNpcGossip[26508]["OptionFunc111"] = "Children2020TwistedEgg_UserEgg</N>26508</N>1</N>12"
		tNpcGossip[26508]["OptionFunc112"] = "Children2020TwistedEgg_UserEgg</N>26508</N>10</N>120"
		return true
	else
		tNpcGossip[26508]["Option111"] = tChildren2020TwistedEgg_Text[26508]["Option111"]
		tNpcGossip[26508]["Option112"] = tChildren2020TwistedEgg_Text[26508]["Option112"]
		tNpcGossip[26508]["OptionFunc111"] = "Children2020TwistedEgg_ComfirmUserEgg</N>26508</N>1</N>12"
		tNpcGossip[26508]["OptionFunc112"] = "Children2020TwistedEgg_ComfirmUserEgg</N>26508</N>10</N>120"
		return true
	end
end
tNpcGossip[26508]["tOption1-1"] = {111,112,115}

tNpcGossip[26508]["OptionChkFunc115"] = function ()
	local nChildren2020TwistedEgg_UserId =Get_UserId()
--检查玩家身上是否有玩具箱
	if Item_ChkMulItem(tChildren2020TwistedEgg_Cont["Toy"],tChildren2020TwistedEgg_Cont["Toy"],1,0,0,nChildren2020TwistedEgg_UserId) then
		return false
	else
		return true
	end
end
tNpcGossip[26508]["OptionFunc115"] = "Children2020TwistedEgg_GetToyBox</N>26508"


tNpcGossip[26508]["Text2-1"] = {211,212,213,214,215}
tNpcGossip[26508]["tOption2-1"] = {211,212}
tNpcGossip[26508]["OptionFunc211"] = "Children2020TwistedEgg_PathFindNpc"
tNpcGossip[26508]["ChkFunc2-1"] = function()
	local nChildren2020TwistedEgg_UserId =Get_UserId()
--判断是否屏蔽今日二次确认
	local nChildren2020TwistedEgg_EventType = tChildren2020TwistedEgg_Stc[1]["EventType"]
	local nChildren2020TwistedEgg_DataType = tChildren2020TwistedEgg_Stc[1]["DataType"]
	Task_StcReset(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType)
	-- 掩码值大于1 表示已经打开首次对白
	if Task_ChkStcValue(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,">=",1,nChildren2020TwistedEgg_UserId) then
		tNpcGossip[26508]["Option212"] = tChildren2020TwistedEgg_Text[26508]["Option213"]
		tNpcGossip[26508]["OptionFunc212"] = "Children2020TwistedEgg_UserEggByEmoney</N>26508</N>1</N>35"
		return true
	else
		tNpcGossip[26508]["Option212"] = tChildren2020TwistedEgg_Text[26508]["Option212"]
		tNpcGossip[26508]["OptionFunc212"] = "Children2020TwistedEgg_ComfirmUserEggByEmoney</N>26508</N>1</N>35"
		return true
	end
end
tNpcGossip[26508]["Text2-2"] = {221,222,223,224,225}
tNpcGossip[26508]["tOption2-2"] = {221,222}
tNpcGossip[26508]["OptionFunc221"] = "Children2020TwistedEgg_PathFindNpc"
tNpcGossip[26508]["ChkFunc2-2"] = function()
	local nChildren2020TwistedEgg_UserId =Get_UserId()
--判断是否屏蔽今日二次确认
	local nChildren2020TwistedEgg_EventType = tChildren2020TwistedEgg_Stc[1]["EventType"]
	local nChildren2020TwistedEgg_DataType = tChildren2020TwistedEgg_Stc[1]["DataType"]
	Task_StcReset(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType)
	-- 掩码值大于1 表示已经打开首次对白
	if Task_ChkStcValue(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,">=",1,nChildren2020TwistedEgg_UserId) then
		tNpcGossip[26508]["Option222"] = tChildren2020TwistedEgg_Text[26508]["Option223"]
		tNpcGossip[26508]["OptionFunc222"] = "Children2020TwistedEgg_UserEggByEmoney</N>26508</N>10</N>350"
		return true
	else
		tNpcGossip[26508]["Option222"] = tChildren2020TwistedEgg_Text[26508]["Option222"]
		tNpcGossip[26508]["OptionFunc222"] = "Children2020TwistedEgg_ComfirmUserEggByEmoney</N>26508</N>10</N>350"
		return true
	end
end

tNpcGossip[26508]["Text3-1"] = {311}
tNpcGossip[26508]["tOption3-1"] = {311,312}
tNpcGossip[26508]["OptionFunc312"] = "Children2020TwistedEgg_BeforeBuy</N>26508"


tNpcGossip[26508]["Text4-1"] = {411,412,4111,4112,4113,4114,4115,4116,4117,4118,4119,41110,413}
tNpcGossip[26508]["tOption4-1"] = {411}
tNpcGossip[26508]["OptionPoint411"] = "1"

tNpcGossip[26508]["Text5-1"] = {511}
tNpcGossip[26508]["tOption5-1"] = {511,512}
tNpcGossip[26508]["OptionPoint512"] = "7-1"

tNpcGossip[26508]["Text6-1"] = {611}
tNpcGossip[26508]["tOption6-1"] = {611,612}

tNpcGossip[26508]["Text7-1"] = {711}
tNpcGossip[26508]["tOption7-1"] = {711,712}
tNpcGossip[26508]["OptionFunc711"] = "Children2020TwistedEgg_BeforeBuy</N>26508"
-------------------------------------------------
-------------------------------------------------
--26509,'英语限定扭蛋机'
tNpcGossip[26509] = tNpcGossip[26509] or DefaultNpc:new{}
tNpcGossip[26509]["OptionHidden"] = 1
tNpcGossip[26509]["DialogueText"] = tChildren2020TwistedEgg_Text[26509]
tNpcGossip[26509]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112}
tNpcGossip[26509]["ChkFunc1-1"] = function()
	local nChildren2020TwistedEgg_UserId =Get_UserId()
--判断是否屏蔽今日二次确认
	local nChildren2020TwistedEgg_EventType = tChildren2020TwistedEgg_Stc[1]["EventType"]
	local nChildren2020TwistedEgg_DataType = tChildren2020TwistedEgg_Stc[1]["DataType"]
	Task_StcReset(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType)
	-- 掩码值大于1 表示已经打开首次对白
	if Task_ChkStcValue(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,">=",1,nChildren2020TwistedEgg_UserId) then
		tNpcGossip[26509]["Option111"] = tChildren2020TwistedEgg_Text[26509]["Option113"]
		tNpcGossip[26509]["Option112"] = tChildren2020TwistedEgg_Text[26509]["Option114"]
		tNpcGossip[26509]["OptionFunc111"] = "Children2020TwistedEgg_UserEgg</N>26509</N>1</N>12"
		tNpcGossip[26509]["OptionFunc112"] = "Children2020TwistedEgg_UserEgg</N>26509</N>10</N>120"
		return true
	else
		tNpcGossip[26509]["Option111"] = tChildren2020TwistedEgg_Text[26509]["Option111"]
		tNpcGossip[26509]["Option112"] = tChildren2020TwistedEgg_Text[26509]["Option112"]
		tNpcGossip[26509]["OptionFunc111"] = "Children2020TwistedEgg_ComfirmUserEgg</N>26509</N>1</N>12"
		tNpcGossip[26509]["OptionFunc112"] = "Children2020TwistedEgg_ComfirmUserEgg</N>26509</N>10</N>120"
		return true
	end
end
tNpcGossip[26509]["tOption1-1"] = {111,112,115}

tNpcGossip[26509]["OptionChkFunc115"] = function ()
	local nChildren2020TwistedEgg_UserId =Get_UserId()
--检查玩家身上是否有玩具箱
	if Item_ChkMulItem(tChildren2020TwistedEgg_Cont["Toy"],tChildren2020TwistedEgg_Cont["Toy"],1,0,0,nChildren2020TwistedEgg_UserId) then
		return false
	else
		return true
	end
end
tNpcGossip[26509]["OptionFunc115"] = "Children2020TwistedEgg_GetToyBox</N>26509"


tNpcGossip[26509]["Text2-1"] = {211,212,213,214,215}
tNpcGossip[26509]["tOption2-1"] = {211,212}
tNpcGossip[26509]["OptionFunc211"] = "Children2020TwistedEgg_PathFindNpc"
tNpcGossip[26509]["ChkFunc2-1"] = function()
	local nChildren2020TwistedEgg_UserId =Get_UserId()
--判断是否屏蔽今日二次确认
	local nChildren2020TwistedEgg_EventType = tChildren2020TwistedEgg_Stc[1]["EventType"]
	local nChildren2020TwistedEgg_DataType = tChildren2020TwistedEgg_Stc[1]["DataType"]
	Task_StcReset(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType)
	-- 掩码值大于1 表示已经打开首次对白
	if Task_ChkStcValue(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,">=",1,nChildren2020TwistedEgg_UserId) then
		tNpcGossip[26509]["Option212"] = tChildren2020TwistedEgg_Text[26509]["Option213"]
		tNpcGossip[26509]["OptionFunc212"] = "Children2020TwistedEgg_UserEggByEmoney</N>26509</N>1</N>35"
		return true
	else
		tNpcGossip[26509]["Option212"] = tChildren2020TwistedEgg_Text[26509]["Option212"]
		tNpcGossip[26509]["OptionFunc212"] = "Children2020TwistedEgg_ComfirmUserEggByEmoney</N>26509</N>1</N>35"
		return true
	end
end
tNpcGossip[26509]["Text2-2"] = {221,222,223,224,225}
tNpcGossip[26509]["tOption2-2"] = {221,222}
tNpcGossip[26509]["OptionFunc221"] = "Children2020TwistedEgg_PathFindNpc"
tNpcGossip[26509]["ChkFunc2-2"] = function()
	local nChildren2020TwistedEgg_UserId =Get_UserId()
--判断是否屏蔽今日二次确认
	local nChildren2020TwistedEgg_EventType = tChildren2020TwistedEgg_Stc[1]["EventType"]
	local nChildren2020TwistedEgg_DataType = tChildren2020TwistedEgg_Stc[1]["DataType"]
	Task_StcReset(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType)
	-- 掩码值大于1 表示已经打开首次对白
	if Task_ChkStcValue(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,">=",1,nChildren2020TwistedEgg_UserId) then
		tNpcGossip[26509]["Option222"] = tChildren2020TwistedEgg_Text[26509]["Option223"]
		tNpcGossip[26509]["OptionFunc222"] = "Children2020TwistedEgg_UserEggByEmoney</N>26509</N>10</N>350"
		return true
	else
		tNpcGossip[26509]["Option222"] = tChildren2020TwistedEgg_Text[26509]["Option222"]
		tNpcGossip[26509]["OptionFunc222"] = "Children2020TwistedEgg_ComfirmUserEggByEmoney</N>26509</N>10</N>350"
		return true
	end
end

tNpcGossip[26509]["Text3-1"] = {311}
tNpcGossip[26509]["tOption3-1"] = {311,312}
tNpcGossip[26509]["OptionFunc312"] = "Children2020TwistedEgg_BeforeBuy</N>26509"


tNpcGossip[26509]["Text4-1"] = {411,412,4111,4112,4113,4114,4115,4116,4117,4118,4119,41110,413}
tNpcGossip[26509]["tOption4-1"] = {411}
tNpcGossip[26509]["OptionPoint411"] = "1"

tNpcGossip[26509]["Text5-1"] = {511}
tNpcGossip[26509]["tOption5-1"] = {511,512}
tNpcGossip[26509]["OptionPoint512"] = "7-1"

tNpcGossip[26509]["Text6-1"] = {611}
tNpcGossip[26509]["tOption6-1"] = {611,612}

tNpcGossip[26509]["Text7-1"] = {711}
tNpcGossip[26509]["tOption7-1"] = {711,712}
tNpcGossip[26509]["OptionFunc711"] = "Children2020TwistedEgg_BeforeBuy</N>26509"
-------------------------------------------------
--26510,'西语限定扭蛋机'
tNpcGossip[26510] = tNpcGossip[26510] or DefaultNpc:new{}
tNpcGossip[26510]["OptionHidden"] = 1
tNpcGossip[26510]["DialogueText"] = tChildren2020TwistedEgg_Text[26510]
tNpcGossip[26510]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112}
tNpcGossip[26510]["ChkFunc1-1"] = function()
	local nChildren2020TwistedEgg_UserId =Get_UserId()
--判断是否屏蔽今日二次确认
	local nChildren2020TwistedEgg_EventType = tChildren2020TwistedEgg_Stc[1]["EventType"]
	local nChildren2020TwistedEgg_DataType = tChildren2020TwistedEgg_Stc[1]["DataType"]
	Task_StcReset(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType)
	-- 掩码值大于1 表示已经打开首次对白
	if Task_ChkStcValue(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,">=",1,nChildren2020TwistedEgg_UserId) then
		tNpcGossip[26510]["Option111"] = tChildren2020TwistedEgg_Text[26510]["Option113"]
		tNpcGossip[26510]["Option112"] = tChildren2020TwistedEgg_Text[26510]["Option114"]
		tNpcGossip[26510]["OptionFunc111"] = "Children2020TwistedEgg_UserEgg</N>26510</N>1</N>12"
		tNpcGossip[26510]["OptionFunc112"] = "Children2020TwistedEgg_UserEgg</N>26510</N>10</N>120"
		return true
	else
		tNpcGossip[26510]["Option111"] = tChildren2020TwistedEgg_Text[26510]["Option111"]
		tNpcGossip[26510]["Option112"] = tChildren2020TwistedEgg_Text[26510]["Option112"]
		tNpcGossip[26510]["OptionFunc111"] = "Children2020TwistedEgg_ComfirmUserEgg</N>26510</N>1</N>12"
		tNpcGossip[26510]["OptionFunc112"] = "Children2020TwistedEgg_ComfirmUserEgg</N>26510</N>10</N>120"
		return true
	end
end
tNpcGossip[26510]["tOption1-1"] = {111,112,115}

tNpcGossip[26510]["OptionChkFunc115"] = function ()
	local nChildren2020TwistedEgg_UserId =Get_UserId()
--检查玩家身上是否有玩具箱
	if Item_ChkMulItem(tChildren2020TwistedEgg_Cont["Toy"],tChildren2020TwistedEgg_Cont["Toy"],1,0,0,nChildren2020TwistedEgg_UserId) then
		return false
	else
		return true
	end
end
tNpcGossip[26510]["OptionFunc115"] = "Children2020TwistedEgg_GetToyBox</N>26510"


tNpcGossip[26510]["Text2-1"] = {211,212,213,214,215}
tNpcGossip[26510]["tOption2-1"] = {211,212}
tNpcGossip[26510]["OptionFunc211"] = "Children2020TwistedEgg_PathFindNpc"
tNpcGossip[26510]["ChkFunc2-1"] = function()
	local nChildren2020TwistedEgg_UserId =Get_UserId()
--判断是否屏蔽今日二次确认
	local nChildren2020TwistedEgg_EventType = tChildren2020TwistedEgg_Stc[1]["EventType"]
	local nChildren2020TwistedEgg_DataType = tChildren2020TwistedEgg_Stc[1]["DataType"]
	Task_StcReset(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType)
	-- 掩码值大于1 表示已经打开首次对白
	if Task_ChkStcValue(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,">=",1,nChildren2020TwistedEgg_UserId) then
		tNpcGossip[26510]["Option212"] = tChildren2020TwistedEgg_Text[26510]["Option213"]
		tNpcGossip[26510]["OptionFunc212"] = "Children2020TwistedEgg_UserEggByEmoney</N>26510</N>1</N>35"
		return true
	else
		tNpcGossip[26510]["Option212"] = tChildren2020TwistedEgg_Text[26510]["Option212"]
		tNpcGossip[26510]["OptionFunc212"] = "Children2020TwistedEgg_ComfirmUserEggByEmoney</N>26510</N>1</N>35"
		return true
	end
end
tNpcGossip[26510]["Text2-2"] = {221,222,223,224,225}
tNpcGossip[26510]["tOption2-2"] = {221,222}
tNpcGossip[26510]["OptionFunc221"] = "Children2020TwistedEgg_PathFindNpc"
tNpcGossip[26510]["ChkFunc2-2"] = function()
	local nChildren2020TwistedEgg_UserId =Get_UserId()
--判断是否屏蔽今日二次确认
	local nChildren2020TwistedEgg_EventType = tChildren2020TwistedEgg_Stc[1]["EventType"]
	local nChildren2020TwistedEgg_DataType = tChildren2020TwistedEgg_Stc[1]["DataType"]
	Task_StcReset(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType)
	-- 掩码值大于1 表示已经打开首次对白
	if Task_ChkStcValue(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,">=",1,nChildren2020TwistedEgg_UserId) then
		tNpcGossip[26510]["Option222"] = tChildren2020TwistedEgg_Text[26510]["Option223"]
		tNpcGossip[26510]["OptionFunc222"] = "Children2020TwistedEgg_UserEggByEmoney</N>26510</N>10</N>350"
		return true
	else
		tNpcGossip[26510]["Option222"] = tChildren2020TwistedEgg_Text[26510]["Option222"]
		tNpcGossip[26510]["OptionFunc222"] = "Children2020TwistedEgg_ComfirmUserEggByEmoney</N>26510</N>10</N>350"
		return true
	end
end

tNpcGossip[26510]["Text3-1"] = {311}
tNpcGossip[26510]["tOption3-1"] = {311,312}
tNpcGossip[26510]["OptionFunc312"] = "Children2020TwistedEgg_BeforeBuy</N>26510"


tNpcGossip[26510]["Text4-1"] = {411,412,4111,4112,4113,4114,4115,4116,4117,4118,4119,41110,413}
tNpcGossip[26510]["tOption4-1"] = {411}
tNpcGossip[26510]["OptionPoint411"] = "1"

tNpcGossip[26510]["Text5-1"] = {511}
tNpcGossip[26510]["tOption5-1"] = {511,512}
tNpcGossip[26510]["OptionPoint512"] = "7-1"

tNpcGossip[26510]["Text6-1"] = {611}
tNpcGossip[26510]["tOption6-1"] = {611,612}

tNpcGossip[26510]["Text7-1"] = {711}
tNpcGossip[26510]["tOption7-1"] = {711,712}
tNpcGossip[26510]["OptionFunc711"] = "Children2020TwistedEgg_BeforeBuy</N>26510"
-------------------------------------------------
--26511,'阿语限定扭蛋机
tNpcGossip[26511] = tNpcGossip[26511] or DefaultNpc:new{}
tNpcGossip[26511]["OptionHidden"] = 1
tNpcGossip[26511]["DialogueText"] = tChildren2020TwistedEgg_Text[26511]
tNpcGossip[26511]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112}
tNpcGossip[26511]["ChkFunc1-1"] = function()
	local nChildren2020TwistedEgg_UserId =Get_UserId()
--判断是否屏蔽今日二次确认
	local nChildren2020TwistedEgg_EventType = tChildren2020TwistedEgg_Stc[1]["EventType"]
	local nChildren2020TwistedEgg_DataType = tChildren2020TwistedEgg_Stc[1]["DataType"]
	Task_StcReset(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType)
	-- 掩码值大于1 表示已经打开首次对白
	if Task_ChkStcValue(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,">=",1,nChildren2020TwistedEgg_UserId) then
		tNpcGossip[26511]["Option111"] = tChildren2020TwistedEgg_Text[26511]["Option113"]
		tNpcGossip[26511]["Option112"] = tChildren2020TwistedEgg_Text[26511]["Option114"]
		tNpcGossip[26511]["OptionFunc111"] = "Children2020TwistedEgg_UserEgg</N>26511</N>1</N>12"
		tNpcGossip[26511]["OptionFunc112"] = "Children2020TwistedEgg_UserEgg</N>26511</N>10</N>120"
		return true
	else
		tNpcGossip[26511]["Option111"] = tChildren2020TwistedEgg_Text[26511]["Option111"]
		tNpcGossip[26511]["Option112"] = tChildren2020TwistedEgg_Text[26511]["Option112"]
		tNpcGossip[26511]["OptionFunc111"] = "Children2020TwistedEgg_ComfirmUserEgg</N>26511</N>1</N>12"
		tNpcGossip[26511]["OptionFunc112"] = "Children2020TwistedEgg_ComfirmUserEgg</N>26511</N>10</N>120"
		return true
	end
end
tNpcGossip[26511]["tOption1-1"] = {111,112,115}

tNpcGossip[26511]["OptionChkFunc115"] = function ()
	local nChildren2020TwistedEgg_UserId =Get_UserId()
--检查玩家身上是否有玩具箱
	if Item_ChkMulItem(tChildren2020TwistedEgg_Cont["Toy"],tChildren2020TwistedEgg_Cont["Toy"],1,0,0,nChildren2020TwistedEgg_UserId) then
		return false
	else
		return true
	end
end
tNpcGossip[26511]["OptionFunc115"] = "Children2020TwistedEgg_GetToyBox</N>26511"


tNpcGossip[26511]["Text2-1"] = {211,212,213,214,215}
tNpcGossip[26511]["tOption2-1"] = {211,212}
tNpcGossip[26511]["OptionFunc211"] = "Children2020TwistedEgg_PathFindNpc"
tNpcGossip[26511]["ChkFunc2-1"] = function()
	local nChildren2020TwistedEgg_UserId =Get_UserId()
--判断是否屏蔽今日二次确认
	local nChildren2020TwistedEgg_EventType = tChildren2020TwistedEgg_Stc[1]["EventType"]
	local nChildren2020TwistedEgg_DataType = tChildren2020TwistedEgg_Stc[1]["DataType"]
	Task_StcReset(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType)
	-- 掩码值大于1 表示已经打开首次对白
	if Task_ChkStcValue(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,">=",1,nChildren2020TwistedEgg_UserId) then
		tNpcGossip[26511]["Option212"] = tChildren2020TwistedEgg_Text[26511]["Option213"]
		tNpcGossip[26511]["OptionFunc212"] = "Children2020TwistedEgg_UserEggByEmoney</N>26511</N>1</N>35"
		return true
	else
		tNpcGossip[26511]["Option212"] = tChildren2020TwistedEgg_Text[26511]["Option212"]
		tNpcGossip[26511]["OptionFunc212"] = "Children2020TwistedEgg_ComfirmUserEggByEmoney</N>26511</N>1</N>35"
		return true
	end
end
tNpcGossip[26511]["Text2-2"] = {221,222,223,224,225}
tNpcGossip[26511]["tOption2-2"] = {221,222}
tNpcGossip[26511]["OptionFunc221"] = "Children2020TwistedEgg_PathFindNpc"
tNpcGossip[26511]["ChkFunc2-2"] = function()
	local nChildren2020TwistedEgg_UserId =Get_UserId()
--判断是否屏蔽今日二次确认
	local nChildren2020TwistedEgg_EventType = tChildren2020TwistedEgg_Stc[1]["EventType"]
	local nChildren2020TwistedEgg_DataType = tChildren2020TwistedEgg_Stc[1]["DataType"]
	Task_StcReset(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType)
	-- 掩码值大于1 表示已经打开首次对白
	if Task_ChkStcValue(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,">=",1,nChildren2020TwistedEgg_UserId) then
		tNpcGossip[26511]["Option222"] = tChildren2020TwistedEgg_Text[26511]["Option223"]
		tNpcGossip[26511]["OptionFunc222"] = "Children2020TwistedEgg_UserEggByEmoney</N>26511</N>10</N>350"
		return true
	else
		tNpcGossip[26511]["Option222"] = tChildren2020TwistedEgg_Text[26511]["Option222"]
		tNpcGossip[26511]["OptionFunc222"] = "Children2020TwistedEgg_ComfirmUserEggByEmoney</N>26511</N>10</N>350"
		return true
	end
end

tNpcGossip[26511]["Text3-1"] = {311}
tNpcGossip[26511]["tOption3-1"] = {311,312}
tNpcGossip[26511]["OptionFunc312"] = "Children2020TwistedEgg_BeforeBuy</N>26511"


tNpcGossip[26511]["Text4-1"] = {411,412,4111,4112,4113,4114,4115,4116,4117,4118,4119,41110,413}
tNpcGossip[26511]["tOption4-1"] = {411}
tNpcGossip[26511]["OptionPoint411"] = "1"

tNpcGossip[26511]["Text5-1"] = {511}
tNpcGossip[26511]["tOption5-1"] = {511,512}
tNpcGossip[26511]["OptionPoint512"] = "7-1"

tNpcGossip[26511]["Text6-1"] = {611}
tNpcGossip[26511]["tOption6-1"] = {611,612}

tNpcGossip[26511]["Text7-1"] = {711}
tNpcGossip[26511]["tOption7-1"] = {711,712}
tNpcGossip[26511]["OptionFunc711"] = "Children2020TwistedEgg_BeforeBuy</N>26511"
	---------------------26512,'爱丽丝'
tNpcGossip[26512] = tNpcGossip[26512] or DefaultNpc:new{}
tNpcGossip[26512]["OptionHidden"] = 1
tNpcGossip[26512]["DialogueText"] = tChildren2020TwistedEgg_Text[26512]
tNpcGossip[26512]["Text1-1"] = {111,112}
tNpcGossip[26512]["ChkFunc1-1"] = function()
	local nChildren2020TwistedEgg_UserId = Get_UserId()
	local nChildren2020TwistedEgg_EventType = tChildren2020TwistedEgg_Stc[2]["Time"]["EventType"]
	local nChildren2020TwistedEgg_DataType = tChildren2020TwistedEgg_Stc[2]["Time"]["DataType"] 
	if Task_ChkStcValue(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,">=",1,nChildren2020TwistedEgg_UserId) then
		return false
	else
		return true
	end
end
tNpcGossip[26512]["tOption1-1"] = {111,112,113}
--免费游玩
tNpcGossip[26512]["OptionChkFunc111"] = function()
	local nChildren2020TwistedEgg_UserId =Get_UserId()
--判断今日是否有免费次数
	local nChildren2020TwistedEgg_EventType = tChildren2020TwistedEgg_Stc[2]["DayTime"]["EventType"]
	local nChildren2020TwistedEgg_DataType = tChildren2020TwistedEgg_Stc[2]["DayTime"]["DataType"] 
	Task_StcReset(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType)
	if Task_ChkStcValue(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,">=",1,nChildren2020TwistedEgg_UserId) then
		return false
	else
		return true
	end
end
--付费游玩
tNpcGossip[26512]["OptionChkFunc112"] = function()
	local nChildren2020TwistedEgg_UserId =Get_UserId()
--判断今日是否有免费次数
	local nChildren2020TwistedEgg_EventType = tChildren2020TwistedEgg_Stc[2]["DayTime"]["EventType"]
	local nChildren2020TwistedEgg_DataType = tChildren2020TwistedEgg_Stc[2]["DayTime"]["DataType"] 
	Task_StcReset(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType)
	if Task_ChkStcValue(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,">=",1,nChildren2020TwistedEgg_UserId) then
		return true
	else
		return false
	end
end

tNpcGossip[26512]["OptionFunc111"] = "Children2020TwistedEgg_Start</N>26512</N>1"
tNpcGossip[26512]["OptionFunc112"] = "Children2020TwistedEgg_Start</N>26512</N>2"
tNpcGossip[26512]["OptionPoint113"] = "3-1"

tNpcGossip[26512]["Text1-2"] = {121,122}
tNpcGossip[26512]["tOption1-2"] = {121}
tNpcGossip[26512]["ChkFunc1-2"] = function()
	local nChildren2020TwistedEgg_UserId = Get_UserId()
	local nChildren2020TwistedEgg_EventType = tChildren2020TwistedEgg_Stc[2]["Time"]["EventType"]
	local nChildren2020TwistedEgg_DataType = tChildren2020TwistedEgg_Stc[2]["Time"]["DataType"] 
	if Task_ChkStcValue(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,">=",1,nChildren2020TwistedEgg_UserId) then
		local nChildren2020TwistedEgg_Time = Get_UserStatisticValue(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,nChildren2020TwistedEgg_UserId)
		 for i,v in pairs(tChildren2020TwistedEgg_Cont["Rewaard"]) do 
			if nChildren2020TwistedEgg_Time >= v[1] and nChildren2020TwistedEgg_Time<= v[2] then
				local nChildren2020TwistedEgg_GetNum = tChildren2020TwistedEgg_Cont["RewdNum"][i]
				tNpcGossip[26512]["Text122"] = string.format(tChildren2020TwistedEgg_Text[26512]["Text122"],nChildren2020TwistedEgg_Time,nChildren2020TwistedEgg_GetNum)
			end
		end
		return true
	else
		return false
	end
end
tNpcGossip[26512]["OptionFunc121"] = "Children2020TwistedEgg_GetReward</N>26512"




tNpcGossip[26512]["Text2-1"] = {211,212,213,214,215}
tNpcGossip[26512]["tOption2-1"] = {211}

tNpcGossip[26512]["Text3-1"] = {311,312,313,314,315,316,317,318,319}
tNpcGossip[26512]["tOption3-1"] = {311}


tNpcGossip[26512]["Text4-1"] = {411}
tNpcGossip[26512]["tOption4-1"] = {411}


	---------------------26513,'爱丽丝'
tNpcGossip[26513] = tNpcGossip[26513] or DefaultNpc:new{}
tNpcGossip[26513]["OptionHidden"] = 1
tNpcGossip[26513]["DialogueText"] = tChildren2020TwistedEgg_Text[26513]
tNpcGossip[26513]["Text1-1"] = {111,112}
tNpcGossip[26513]["ChkFunc1-1"] = function()
	local nChildren2020TwistedEgg_UserId = Get_UserId()
	local nChildren2020TwistedEgg_EventType = tChildren2020TwistedEgg_Stc[3]["Time"]["EventType"]
	local nChildren2020TwistedEgg_DataType = tChildren2020TwistedEgg_Stc[3]["Time"]["DataType"] 
	if Task_ChkStcValue(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,">=",1,nChildren2020TwistedEgg_UserId) then
		return false
	else
		return true
	end
end
tNpcGossip[26513]["tOption1-1"] = {111,112,113}
--免费游玩
tNpcGossip[26513]["OptionChkFunc111"] = function()
	local nChildren2020TwistedEgg_UserId =Get_UserId()
--判断今日是否有免费次数
	local nChildren2020TwistedEgg_EventType = tChildren2020TwistedEgg_Stc[3]["DayTime"]["EventType"]
	local nChildren2020TwistedEgg_DataType = tChildren2020TwistedEgg_Stc[3]["DayTime"]["DataType"] 
	Task_StcReset(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType)
	if Task_ChkStcValue(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,">=",1,nChildren2020TwistedEgg_UserId) then
		return false
	else
		return true
	end
end
--付费游玩
tNpcGossip[26513]["OptionChkFunc112"] = function()
	local nChildren2020TwistedEgg_UserId =Get_UserId()
--判断今日是否有免费次数
	local nChildren2020TwistedEgg_EventType = tChildren2020TwistedEgg_Stc[3]["DayTime"]["EventType"]
	local nChildren2020TwistedEgg_DataType = tChildren2020TwistedEgg_Stc[3]["DayTime"]["DataType"] 
	Task_StcReset(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType)
	if Task_ChkStcValue(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,">=",1,nChildren2020TwistedEgg_UserId) then
		return true
	else
		return false
	end
end

tNpcGossip[26513]["OptionFunc111"] = "Children2020TwistedEgg_EnterGarden</N>26513</N>1"
tNpcGossip[26513]["OptionFunc112"] = "Children2020TwistedEgg_EnterGarden</N>26513</N>2"

tNpcGossip[26513]["OptionPoint113"] = "3-1"



tNpcGossip[26513]["Text1-2"] = {121,122}
tNpcGossip[26513]["tOption1-2"] = {121}
tNpcGossip[26513]["ChkFunc1-2"] = function()
	local nChildren2020TwistedEgg_UserId = Get_UserId()
	local nChildren2020TwistedEgg_EventType = tChildren2020TwistedEgg_Stc[3]["Time"]["EventType"]
	local nChildren2020TwistedEgg_DataType = tChildren2020TwistedEgg_Stc[3]["Time"]["DataType"] 
	if Task_ChkStcValue(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,">=",1,nChildren2020TwistedEgg_UserId) then
	local nChildren2020TwistedEgg_Time = Get_UserStatisticValue(nChildren2020TwistedEgg_EventType,nChildren2020TwistedEgg_DataType,nChildren2020TwistedEgg_UserId)
		 for i,v in pairs(tChildren2020TwistedEgg_MascotGarden_Count["Rewaard"]) do 
			if nChildren2020TwistedEgg_Time >= v[1] and nChildren2020TwistedEgg_Time <= v[2] then
				local nChildren2020TwistedEgg_GetNum = tChildren2020TwistedEgg_Cont["RewdNum"][i]
				tNpcGossip[26513]["Text122"] = string.format(tChildren2020TwistedEgg_Text[26513]["Text122"],nChildren2020TwistedEgg_Time,nChildren2020TwistedEgg_GetNum)
			end
		end
		return true
	else
		return false
	end
end
tNpcGossip[26513]["OptionFunc121"] = "Children2020TwistedEgg_GetRewardGarden</N>26513"


tNpcGossip[26513]["Text2-1"] = {211,212,213,214,215}
tNpcGossip[26513]["tOption2-1"] = {211}

tNpcGossip[26513]["Text3-1"] = {311,312,313,314,315,316,317,318,319}
tNpcGossip[26513]["tOption3-1"] = {311}


tNpcGossip[26513]["Text4-1"] = {411}
tNpcGossip[26513]["tOption4-1"] = {411}

--------------------------------------陷阱模块-------------------------------------------
-- 普通水晶
tTrap[1451] = tTrap[1451] or {}
tTrap[1451]["Function"] = function(nTrapId,nTrapType)
	Children2020TwistedEgg_Trap(nTrapId,nTrapType)
end

-- 幸运水晶
tTrap[1604] = tTrap[1604] or {}
tTrap[1604]["Function"] = function(nTrapId,nTrapType)
	Children2020TwistedEgg_Trap(nTrapId,nTrapType)
end

-- 动态存储表清零
tGlobalData_Info[54513] = {}
tGlobalData_Info[54513]["Time"] = {}
tGlobalData_Info[54513]["Time"]["ActivityTime"] = tActivityTime["ChildrenDay2020"]["ActivityTime"]
tGlobalData_Info[54513]["Time"]["ClearTime"] = "00:00 00:02"
tGlobalData_Info[54513]["Rest"] = {}
tGlobalData_Info[54513]["Rest"]["GlobalId"] = {54513}
tGlobalData_Info[54513]["Rest"]["Pos"] = {0}