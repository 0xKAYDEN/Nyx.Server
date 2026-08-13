------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]点石成金
--Creator:		翁清海
--Created:		2018/12/01
------------------------------------------------------------------------------------

--命名前缀
--MidasTouch_

--logid:12001232

--------------------------------------------数据部分配置--------------------------------------------
--活动时间
local tMidasTouch_Time = {}
	tMidasTouch_Time["ActTime"] = tActivityTime["MidasTouch"]["ActTime"]

--保存玩家选择的物品
local tMidasTouch_ChooseItem = {}
	
--数据
local tMidasTouch_Cont = {}
	--等级限制
	tMidasTouch_Cont["Level"] = 15
	tMidasTouch_Cont["Metempsychosis"] = 2
	--对齐接口
	tMidasTouch_Cont["CenterAline"] = {15,44,75}
	--炼化材料及奖励展示
	tMidasTouch_Cont["Materials"] = {}
	tMidasTouch_Cont["Materials"][730001] = {}
	tMidasTouch_Cont["Materials"][730001][1] = {1,730001,730002}
	tMidasTouch_Cont["Materials"][730001][2] = {730003,0,730004}
	tMidasTouch_Cont["Materials"][730001][3] = {730005,730006,730007}
	tMidasTouch_Cont["Materials"][730002] = {}
	tMidasTouch_Cont["Materials"][730002][1] = {1,730001,730002}
	tMidasTouch_Cont["Materials"][730002][2] = {730003,0,730004}
	tMidasTouch_Cont["Materials"][730002][3] = {730005,730006,730007}
	tMidasTouch_Cont["Materials"][730003] = {}
	tMidasTouch_Cont["Materials"][730003][1] = {730001,730002, 730003}
	tMidasTouch_Cont["Materials"][730003][2] = {730004,0,730005}
	tMidasTouch_Cont["Materials"][730003][3] = {730006,730007,730008}
	tMidasTouch_Cont["Materials"][730004] = {}
	tMidasTouch_Cont["Materials"][730004][1] = {730001,730002, 730003}
	tMidasTouch_Cont["Materials"][730004][2] = {730004,0,730005}
	tMidasTouch_Cont["Materials"][730004][3] = {730006,730007,730008}
	tMidasTouch_Cont["Materials"][730005] = {}
	tMidasTouch_Cont["Materials"][730005][1] = {730002,730003, 730004}
	tMidasTouch_Cont["Materials"][730005][2] = {730005,0,730006}
	tMidasTouch_Cont["Materials"][730005][3] = {730007,730008,50000}
	tMidasTouch_Cont["Materials"][730006] = {}
	tMidasTouch_Cont["Materials"][730006][1] = {730003,730004, 730005}
	tMidasTouch_Cont["Materials"][730006][2] = {730006,0,730007}
	tMidasTouch_Cont["Materials"][730006][3] = {730008,50000,100000}
	tMidasTouch_Cont["Materials"][1088000] = "3-3"
	tMidasTouch_Cont["Materials"][723695] = "3-4"
	tMidasTouch_Cont["Materials"][723694] = "3-5"
	tMidasTouch_Cont["Materials"][720027] = "3-6"
	tMidasTouch_Cont["Materials"][1200005] = "3-7"
	tMidasTouch_Cont["Materials"][3009002] = "3-8"
	tMidasTouch_Cont["Materials"][3009001] = "3-9"
	--炼化材料对应轮盘
	tMidasTouch_Cont["Roulette"] = {}
	tMidasTouch_Cont["Roulette"][730001] = 4063
	tMidasTouch_Cont["Roulette"][730002] = 4064
	tMidasTouch_Cont["Roulette"][730003] = 4065
	tMidasTouch_Cont["Roulette"][730004] = 4066
	tMidasTouch_Cont["Roulette"][730005] = 4067
	tMidasTouch_Cont["Roulette"][730006] = 4068
	tMidasTouch_Cont["Roulette"][1088000] = 4069
	tMidasTouch_Cont["Roulette"][723695] = 4072
	tMidasTouch_Cont["Roulette"][723694] = 4071
	tMidasTouch_Cont["Roulette"][720027] = 4073
	tMidasTouch_Cont["Roulette"][1200005] = 4070
	tMidasTouch_Cont["Roulette"][3009002] = 4075
	tMidasTouch_Cont["Roulette"][3009001] = 4074
	--需要清零的动态码
	tMidasTouch_Cont["Global"] = {}
	tMidasTouch_Cont["Global"][1] = {53152,0}
	tMidasTouch_Cont["Global"][2] = {53152,1}
	tMidasTouch_Cont["Global"][3] = {53152,3}
	tMidasTouch_Cont["Global"][4] = {53152,5}
	tMidasTouch_Cont["Global"][5] = {53153,1}
	tMidasTouch_Cont["Global"][6] = {53155,2}
	tMidasTouch_Cont["Global"][7] = {53155,4}
	
local tMidasTouch_Reward = {}
	--固化石碎片
	tMidasTouch_Reward[3311757] = {}
	tMidasTouch_Reward[3311757]["DeleteItem"] = {}
	tMidasTouch_Reward[3311757]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311757]["DeleteItem"][1]["Id"] = 3311757
	tMidasTouch_Reward[3311757]["DeleteItem"][1]["ItemNum"] = 10
	tMidasTouch_Reward[3311757]["RewardItem"] = {}
	tMidasTouch_Reward[3311757]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311757]["RewardItem"][1]["Id"] = 723694
	tMidasTouch_Reward[3311757]["RewardItem"][1]["Attr"] = "0 1"
	tMidasTouch_Reward[3311757]["RewardEffect"] = {}
	tMidasTouch_Reward[3311757]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311757]["LogId"] =12001232
	--金钢坚钻碎片
	tMidasTouch_Reward[3311758] = {}
	tMidasTouch_Reward[3311758]["DeleteItem"] = {}
	tMidasTouch_Reward[3311758]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311758]["DeleteItem"][1]["Id"] = 3311758
	tMidasTouch_Reward[3311758]["DeleteItem"][1]["ItemNum"] = 10
	tMidasTouch_Reward[3311758]["RewardItem"] = {}
	tMidasTouch_Reward[3311758]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311758]["RewardItem"][1]["Id"] = 1200005
	tMidasTouch_Reward[3311758]["RewardItem"][1]["Attr"] = "0 1"
	tMidasTouch_Reward[3311758]["RewardEffect"] = {}
	tMidasTouch_Reward[3311758]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311758]["LogId"] =12001232
	--龙血精石
	tMidasTouch_Reward[3311771] = {}
	tMidasTouch_Reward[3311771]["DeleteItem"] = {}
	tMidasTouch_Reward[3311771]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311771]["DeleteItem"][1]["Id"] = 3311771
	tMidasTouch_Reward[3311771]["DeleteItem"][1]["ItemNum"] = 10
	tMidasTouch_Reward[3311771]["RewardItem"] = {}
	tMidasTouch_Reward[3311771]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311771]["RewardItem"][1]["Id"] = 1088000
	tMidasTouch_Reward[3311771]["RewardItem"][1]["Attr"] = "0 1"
	tMidasTouch_Reward[3311771]["RewardEffect"] = {}
	tMidasTouch_Reward[3311771]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311771]["LogId"] =12001232
	--流星卷碎片
	tMidasTouch_Reward[3311818] = {}
	tMidasTouch_Reward[3311818]["DeleteItem"] = {}
	tMidasTouch_Reward[3311818]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311818]["DeleteItem"][1]["Id"] = 3311818
	tMidasTouch_Reward[3311818]["DeleteItem"][1]["ItemNum"] = 10
	tMidasTouch_Reward[3311818]["RewardItem"] = {}
	tMidasTouch_Reward[3311818]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311818]["RewardItem"][1]["Id"] = 720027
	tMidasTouch_Reward[3311818]["RewardItem"][1]["Attr"] = "0 1"
	tMidasTouch_Reward[3311818]["RewardEffect"] = {}
	tMidasTouch_Reward[3311818]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311818]["LogId"] =12001232
	--5W天石包
	tMidasTouch_Reward[3311772] = {}
	tMidasTouch_Reward[3311772]["DeleteItem"] = {}
	tMidasTouch_Reward[3311772]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311772]["DeleteItem"][1]["Id"] = 3311772
	tMidasTouch_Reward[3311772]["RewardEMoney"] = {}
	tMidasTouch_Reward[3311772]["RewardEMoney"]["Value"] = 50000
	tMidasTouch_Reward[3311772]["RewardEffect"] = {}
	tMidasTouch_Reward[3311772]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311772]["EmoneyLog"] = "1000	98	50000	50000	1	"
	tMidasTouch_Reward[3311772]["LogId"] =12001232
	--10W天石包
	tMidasTouch_Reward[3311773] = {}
	tMidasTouch_Reward[3311773]["DeleteItem"] = {}
	tMidasTouch_Reward[3311773]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311773]["DeleteItem"][1]["Id"] = 3311773
	tMidasTouch_Reward[3311773]["RewardEMoney"] = {}
	tMidasTouch_Reward[3311773]["RewardEMoney"]["Value"] = 100000
	tMidasTouch_Reward[3311773]["RewardEffect"] = {}
	tMidasTouch_Reward[3311773]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311773]["EmoneyLog"] = "1000	99	100000	100000	1	"
	tMidasTouch_Reward[3311773]["LogId"] =12001232
	--龙血精石*5包
	tMidasTouch_Reward[3311774] = {}
	tMidasTouch_Reward[3311774]["DeleteItem"] = {}
	tMidasTouch_Reward[3311774]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311774]["DeleteItem"][1]["Id"] = 3311774
	tMidasTouch_Reward[3311774]["RewardItem"] = {}
	tMidasTouch_Reward[3311774]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311774]["RewardItem"][1]["Id"] = 3311771
	tMidasTouch_Reward[3311774]["RewardItem"][1]["Attr"] = "0 5"
	tMidasTouch_Reward[3311774]["RewardEffect"] = {}
	tMidasTouch_Reward[3311774]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311774]["LogId"] =12001232
	--龙血精石*12包
	tMidasTouch_Reward[3311775] = {}
	tMidasTouch_Reward[3311775]["DeleteItem"] = {}
	tMidasTouch_Reward[3311775]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311775]["DeleteItem"][1]["Id"] = 3311775
	tMidasTouch_Reward[3311775]["RewardItem"] = {}
	tMidasTouch_Reward[3311775]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311775]["RewardItem"][1]["Id"] = 3311771
	tMidasTouch_Reward[3311775]["RewardItem"][1]["Attr"] = "0 12"
	tMidasTouch_Reward[3311775]["RewardEffect"] = {}
	tMidasTouch_Reward[3311775]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311775]["LogId"] =12001232
	--龙血精石*16包
	tMidasTouch_Reward[3311776] = {}
	tMidasTouch_Reward[3311776]["DeleteItem"] = {}
	tMidasTouch_Reward[3311776]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311776]["DeleteItem"][1]["Id"] = 3311776
	tMidasTouch_Reward[3311776]["RewardItem"] = {}
	tMidasTouch_Reward[3311776]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311776]["RewardItem"][1]["Id"] = 3311771
	tMidasTouch_Reward[3311776]["RewardItem"][1]["Attr"] = "0 16"
	tMidasTouch_Reward[3311776]["RewardEffect"] = {}
	tMidasTouch_Reward[3311776]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311776]["LogId"] =12001232
	--龙血精石*30包
	tMidasTouch_Reward[3311777] = {}
	tMidasTouch_Reward[3311777]["DeleteItem"] = {}
	tMidasTouch_Reward[3311777]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311777]["DeleteItem"][1]["Id"] = 3311777
	tMidasTouch_Reward[3311777]["RewardItem"] = {}
	tMidasTouch_Reward[3311777]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311777]["RewardItem"][1]["Id"] = 3311771
	tMidasTouch_Reward[3311777]["RewardItem"][1]["Attr"] = "0 30"
	tMidasTouch_Reward[3311777]["RewardEffect"] = {}
	tMidasTouch_Reward[3311777]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311777]["LogId"] =12001232
	--龙血精石*100包
	tMidasTouch_Reward[3311778] = {}
	tMidasTouch_Reward[3311778]["DeleteItem"] = {}
	tMidasTouch_Reward[3311778]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311778]["DeleteItem"][1]["Id"] = 3311778
	tMidasTouch_Reward[3311778]["RewardItem"] = {}
	tMidasTouch_Reward[3311778]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311778]["RewardItem"][1]["Id"] = 3311771
	tMidasTouch_Reward[3311778]["RewardItem"][1]["Attr"] = "0 100"
	tMidasTouch_Reward[3311778]["RewardEffect"] = {}
	tMidasTouch_Reward[3311778]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311778]["LogId"] =12001232
	--龙血精石*1000包
	tMidasTouch_Reward[3311779] = {}
	tMidasTouch_Reward[3311779]["DeleteItem"] = {}
	tMidasTouch_Reward[3311779]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311779]["DeleteItem"][1]["Id"] = 3311779
	tMidasTouch_Reward[3311779]["RewardItem"] = {}
	tMidasTouch_Reward[3311779]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311779]["RewardItem"][1]["Id"] = 3311771
	tMidasTouch_Reward[3311779]["RewardItem"][1]["Attr"] = "0 1000"
	tMidasTouch_Reward[3311779]["RewardEffect"] = {}
	tMidasTouch_Reward[3311779]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311779]["LogId"] =12001232
	--龙血精石*2000包
	tMidasTouch_Reward[3311780] = {}
	tMidasTouch_Reward[3311780]["DeleteItem"] = {}
	tMidasTouch_Reward[3311780]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311780]["DeleteItem"][1]["Id"] = 3311780
	tMidasTouch_Reward[3311780]["RewardItem"] = {}
	tMidasTouch_Reward[3311780]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311780]["RewardItem"][1]["Id"] = 3311771
	tMidasTouch_Reward[3311780]["RewardItem"][1]["Attr"] = "0 2000"
	tMidasTouch_Reward[3311780]["RewardEffect"] = {}
	tMidasTouch_Reward[3311780]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311780]["LogId"] =12001232
	--金钢坚钻碎片*5包
	tMidasTouch_Reward[3311781] = {}
	tMidasTouch_Reward[3311781]["DeleteItem"] = {}
	tMidasTouch_Reward[3311781]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311781]["DeleteItem"][1]["Id"] = 3311781
	tMidasTouch_Reward[3311781]["RewardItem"] = {}
	tMidasTouch_Reward[3311781]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311781]["RewardItem"][1]["Id"] = 3311758
	tMidasTouch_Reward[3311781]["RewardItem"][1]["Attr"] = "0 5"
	tMidasTouch_Reward[3311781]["RewardEffect"] = {}
	tMidasTouch_Reward[3311781]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311781]["LogId"] =12001232
	--金钢坚钻碎片*12包
	tMidasTouch_Reward[3311782] = {}
	tMidasTouch_Reward[3311782]["DeleteItem"] = {}
	tMidasTouch_Reward[3311782]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311782]["DeleteItem"][1]["Id"] = 3311782
	tMidasTouch_Reward[3311782]["RewardItem"] = {}
	tMidasTouch_Reward[3311782]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311782]["RewardItem"][1]["Id"] = 3311758
	tMidasTouch_Reward[3311782]["RewardItem"][1]["Attr"] = "0 12"
	tMidasTouch_Reward[3311782]["RewardEffect"] = {}
	tMidasTouch_Reward[3311782]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311782]["LogId"] =12001232
	--金钢坚钻碎片*16包
	tMidasTouch_Reward[3311783] = {}
	tMidasTouch_Reward[3311783]["DeleteItem"] = {}
	tMidasTouch_Reward[3311783]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311783]["DeleteItem"][1]["Id"] = 3311783
	tMidasTouch_Reward[3311783]["RewardItem"] = {}
	tMidasTouch_Reward[3311783]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311783]["RewardItem"][1]["Id"] = 3311758
	tMidasTouch_Reward[3311783]["RewardItem"][1]["Attr"] = "0 16"
	tMidasTouch_Reward[3311783]["RewardEffect"] = {}
	tMidasTouch_Reward[3311783]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311783]["LogId"] =12001232
	--金钢坚钻碎片*30包
	tMidasTouch_Reward[3311784] = {}
	tMidasTouch_Reward[3311784]["DeleteItem"] = {}
	tMidasTouch_Reward[3311784]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311784]["DeleteItem"][1]["Id"] = 3311784
	tMidasTouch_Reward[3311784]["RewardItem"] = {}
	tMidasTouch_Reward[3311784]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311784]["RewardItem"][1]["Id"] = 3311758
	tMidasTouch_Reward[3311784]["RewardItem"][1]["Attr"] = "0 30"
	tMidasTouch_Reward[3311784]["RewardEffect"] = {}
	tMidasTouch_Reward[3311784]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311784]["LogId"] =12001232
	--金钢坚钻碎片*100包
	tMidasTouch_Reward[3311785] = {}
	tMidasTouch_Reward[3311785]["DeleteItem"] = {}
	tMidasTouch_Reward[3311785]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311785]["DeleteItem"][1]["Id"] = 3311785
	tMidasTouch_Reward[3311785]["RewardItem"] = {}
	tMidasTouch_Reward[3311785]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311785]["RewardItem"][1]["Id"] = 3311758
	tMidasTouch_Reward[3311785]["RewardItem"][1]["Attr"] = "0 100"
	tMidasTouch_Reward[3311785]["RewardEffect"] = {}
	tMidasTouch_Reward[3311785]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311785]["LogId"] =12001232
	--金钢坚钻碎片*1000包
	tMidasTouch_Reward[3311786] = {}
	tMidasTouch_Reward[3311786]["DeleteItem"] = {}
	tMidasTouch_Reward[3311786]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311786]["DeleteItem"][1]["Id"] = 3311786
	tMidasTouch_Reward[3311786]["RewardItem"] = {}
	tMidasTouch_Reward[3311786]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311786]["RewardItem"][1]["Id"] = 3311758
	tMidasTouch_Reward[3311786]["RewardItem"][1]["Attr"] = "0 1000"
	tMidasTouch_Reward[3311786]["RewardEffect"] = {}
	tMidasTouch_Reward[3311786]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311786]["LogId"] =12001232
	--金钢坚钻碎片*2000包
	tMidasTouch_Reward[3311787] = {}
	tMidasTouch_Reward[3311787]["DeleteItem"] = {}
	tMidasTouch_Reward[3311787]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311787]["DeleteItem"][1]["Id"] = 3311787
	tMidasTouch_Reward[3311787]["RewardItem"] = {}
	tMidasTouch_Reward[3311787]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311787]["RewardItem"][1]["Id"] = 3311758
	tMidasTouch_Reward[3311787]["RewardItem"][1]["Attr"] = "0 2000"
	tMidasTouch_Reward[3311787]["RewardEffect"] = {}
	tMidasTouch_Reward[3311787]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311787]["LogId"] =12001232
	--固化石碎片*5包
	tMidasTouch_Reward[3311788] = {}
	tMidasTouch_Reward[3311788]["DeleteItem"] = {}
	tMidasTouch_Reward[3311788]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311788]["DeleteItem"][1]["Id"] = 3311788
	tMidasTouch_Reward[3311788]["RewardItem"] = {}
	tMidasTouch_Reward[3311788]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311788]["RewardItem"][1]["Id"] = 3311757
	tMidasTouch_Reward[3311788]["RewardItem"][1]["Attr"] = "0 5"
	tMidasTouch_Reward[3311788]["RewardEffect"] = {}
	tMidasTouch_Reward[3311788]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311788]["LogId"] =12001232
	--固化石碎片*12包
	tMidasTouch_Reward[3311789] = {}
	tMidasTouch_Reward[3311789]["DeleteItem"] = {}
	tMidasTouch_Reward[3311789]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311789]["DeleteItem"][1]["Id"] = 3311789
	tMidasTouch_Reward[3311789]["RewardItem"] = {}
	tMidasTouch_Reward[3311789]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311789]["RewardItem"][1]["Id"] = 3311757
	tMidasTouch_Reward[3311789]["RewardItem"][1]["Attr"] = "0 12"
	tMidasTouch_Reward[3311789]["RewardEffect"] = {}
	tMidasTouch_Reward[3311789]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311789]["LogId"] =12001232
	--固化石碎片*16包
	tMidasTouch_Reward[3311790] = {}
	tMidasTouch_Reward[3311790]["DeleteItem"] = {}
	tMidasTouch_Reward[3311790]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311790]["DeleteItem"][1]["Id"] = 3311790
	tMidasTouch_Reward[3311790]["RewardItem"] = {}
	tMidasTouch_Reward[3311790]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311790]["RewardItem"][1]["Id"] = 3311757
	tMidasTouch_Reward[3311790]["RewardItem"][1]["Attr"] = "0 16"
	tMidasTouch_Reward[3311790]["RewardEffect"] = {}
	tMidasTouch_Reward[3311790]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311790]["LogId"] =12001232
	--固化石碎片*30包
	tMidasTouch_Reward[3311791] = {}
	tMidasTouch_Reward[3311791]["DeleteItem"] = {}
	tMidasTouch_Reward[3311791]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311791]["DeleteItem"][1]["Id"] = 3311791
	tMidasTouch_Reward[3311791]["RewardItem"] = {}
	tMidasTouch_Reward[3311791]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311791]["RewardItem"][1]["Id"] = 3311757
	tMidasTouch_Reward[3311791]["RewardItem"][1]["Attr"] = "0 30"
	tMidasTouch_Reward[3311791]["RewardEffect"] = {}
	tMidasTouch_Reward[3311791]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311791]["LogId"] =12001232
	--固化石碎片*100包
	tMidasTouch_Reward[3311792] = {}
	tMidasTouch_Reward[3311792]["DeleteItem"] = {}
	tMidasTouch_Reward[3311792]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311792]["DeleteItem"][1]["Id"] = 3311792
	tMidasTouch_Reward[3311792]["RewardItem"] = {}
	tMidasTouch_Reward[3311792]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311792]["RewardItem"][1]["Id"] = 3311757
	tMidasTouch_Reward[3311792]["RewardItem"][1]["Attr"] = "0 100"
	tMidasTouch_Reward[3311792]["RewardEffect"] = {}
	tMidasTouch_Reward[3311792]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311792]["LogId"] =12001232
	--固化石碎片*1000包
	tMidasTouch_Reward[3311793] = {}
	tMidasTouch_Reward[3311793]["DeleteItem"] = {}
	tMidasTouch_Reward[3311793]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311793]["DeleteItem"][1]["Id"] = 3311793
	tMidasTouch_Reward[3311793]["RewardItem"] = {}
	tMidasTouch_Reward[3311793]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311793]["RewardItem"][1]["Id"] = 3311757
	tMidasTouch_Reward[3311793]["RewardItem"][1]["Attr"] = "0 1000"
	tMidasTouch_Reward[3311793]["RewardEffect"] = {}
	tMidasTouch_Reward[3311793]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311793]["LogId"] =12001232
	--固化石碎片*2000包
	tMidasTouch_Reward[3311794] = {}
	tMidasTouch_Reward[3311794]["DeleteItem"] = {}
	tMidasTouch_Reward[3311794]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311794]["DeleteItem"][1]["Id"] = 3311794
	tMidasTouch_Reward[3311794]["RewardItem"] = {}
	tMidasTouch_Reward[3311794]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311794]["RewardItem"][1]["Id"] = 3311757
	tMidasTouch_Reward[3311794]["RewardItem"][1]["Attr"] = "0 2000"
	tMidasTouch_Reward[3311794]["RewardEffect"] = {}
	tMidasTouch_Reward[3311794]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311794]["LogId"] =12001232
	--固化石*5包
	tMidasTouch_Reward[3311795] = {}
	tMidasTouch_Reward[3311795]["DeleteItem"] = {}
	tMidasTouch_Reward[3311795]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311795]["DeleteItem"][1]["Id"] = 3311795
	tMidasTouch_Reward[3311795]["RewardItem"] = {}
	tMidasTouch_Reward[3311795]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311795]["RewardItem"][1]["Id"] = 723694
	tMidasTouch_Reward[3311795]["RewardItem"][1]["Attr"] = "0 5"
	tMidasTouch_Reward[3311795]["RewardEffect"] = {}
	tMidasTouch_Reward[3311795]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311795]["LogId"] =12001232
	--固化石*12包
	tMidasTouch_Reward[3311796] = {}
	tMidasTouch_Reward[3311796]["DeleteItem"] = {}
	tMidasTouch_Reward[3311796]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311796]["DeleteItem"][1]["Id"] = 3311796
	tMidasTouch_Reward[3311796]["RewardItem"] = {}
	tMidasTouch_Reward[3311796]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311796]["RewardItem"][1]["Id"] = 723694
	tMidasTouch_Reward[3311796]["RewardItem"][1]["Attr"] = "0 12"
	tMidasTouch_Reward[3311796]["RewardEffect"] = {}
	tMidasTouch_Reward[3311796]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311796]["LogId"] =12001232
	--固化石*16包
	tMidasTouch_Reward[3311797] = {}
	tMidasTouch_Reward[3311797]["DeleteItem"] = {}
	tMidasTouch_Reward[3311797]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311797]["DeleteItem"][1]["Id"] = 3311797
	tMidasTouch_Reward[3311797]["RewardItem"] = {}
	tMidasTouch_Reward[3311797]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311797]["RewardItem"][1]["Id"] = 723694
	tMidasTouch_Reward[3311797]["RewardItem"][1]["Attr"] = "0 16"
	tMidasTouch_Reward[3311797]["RewardEffect"] = {}
	tMidasTouch_Reward[3311797]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311797]["LogId"] =12001232
	--超大固化石*3包
	tMidasTouch_Reward[3311798] = {}
	tMidasTouch_Reward[3311798]["DeleteItem"] = {}
	tMidasTouch_Reward[3311798]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311798]["DeleteItem"][1]["Id"] = 3311798
	tMidasTouch_Reward[3311798]["RewardItem"] = {}
	tMidasTouch_Reward[3311798]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311798]["RewardItem"][1]["Id"] = 723695
	tMidasTouch_Reward[3311798]["RewardItem"][1]["Attr"] = "0 3"
	tMidasTouch_Reward[3311798]["RewardEffect"] = {}
	tMidasTouch_Reward[3311798]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311798]["LogId"] =12001232
	--超大固化石*10包
	tMidasTouch_Reward[3311799] = {}
	tMidasTouch_Reward[3311799]["DeleteItem"] = {}
	tMidasTouch_Reward[3311799]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311799]["DeleteItem"][1]["Id"] = 3311799
	tMidasTouch_Reward[3311799]["RewardItem"] = {}
	tMidasTouch_Reward[3311799]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311799]["RewardItem"][1]["Id"] = 723695
	tMidasTouch_Reward[3311799]["RewardItem"][1]["Attr"] = "0 10"
	tMidasTouch_Reward[3311799]["RewardEffect"] = {}
	tMidasTouch_Reward[3311799]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311799]["LogId"] =12001232
	--超大固化石*100包
	tMidasTouch_Reward[3311800] = {}
	tMidasTouch_Reward[3311800]["DeleteItem"] = {}
	tMidasTouch_Reward[3311800]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311800]["DeleteItem"][1]["Id"] = 3311800
	tMidasTouch_Reward[3311800]["RewardItem"] = {}
	tMidasTouch_Reward[3311800]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311800]["RewardItem"][1]["Id"] = 3311799
	tMidasTouch_Reward[3311800]["RewardItem"][1]["Attr"] = "0 10"
	tMidasTouch_Reward[3311800]["RewardEffect"] = {}
	tMidasTouch_Reward[3311800]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311800]["LogId"] =12001232
	--超大固化石*200包
	tMidasTouch_Reward[3311801] = {}
	tMidasTouch_Reward[3311801]["DeleteItem"] = {}
	tMidasTouch_Reward[3311801]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311801]["DeleteItem"][1]["Id"] = 3311801
	tMidasTouch_Reward[3311801]["RewardItem"] = {}
	tMidasTouch_Reward[3311801]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311801]["RewardItem"][1]["Id"] = 3311799
	tMidasTouch_Reward[3311801]["RewardItem"][1]["Attr"] = "0 20"
	tMidasTouch_Reward[3311801]["RewardEffect"] = {}
	tMidasTouch_Reward[3311801]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311801]["LogId"] =12001232
	--流星*5包
	tMidasTouch_Reward[3311802] = {}
	tMidasTouch_Reward[3311802]["DeleteItem"] = {}
	tMidasTouch_Reward[3311802]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311802]["DeleteItem"][1]["Id"] = 3311802
	tMidasTouch_Reward[3311802]["RewardItem"] = {}
	tMidasTouch_Reward[3311802]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311802]["RewardItem"][1]["Id"] = 3311818
	tMidasTouch_Reward[3311802]["RewardItem"][1]["Attr"] = "0 5"
	tMidasTouch_Reward[3311802]["RewardEffect"] = {}
	tMidasTouch_Reward[3311802]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311802]["LogId"] =12001232
	--流星*12包
	tMidasTouch_Reward[3311803] = {}
	tMidasTouch_Reward[3311803]["DeleteItem"] = {}
	tMidasTouch_Reward[3311803]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311803]["DeleteItem"][1]["Id"] = 3311803
	tMidasTouch_Reward[3311803]["RewardItem"] = {}
	tMidasTouch_Reward[3311803]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311803]["RewardItem"][1]["Id"] = 3311818
	tMidasTouch_Reward[3311803]["RewardItem"][1]["Attr"] = "0 12"
	tMidasTouch_Reward[3311803]["RewardEffect"] = {}
	tMidasTouch_Reward[3311803]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311803]["LogId"] =12001232
	--流星*16包
	tMidasTouch_Reward[3311804] = {}
	tMidasTouch_Reward[3311804]["DeleteItem"] = {}
	tMidasTouch_Reward[3311804]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311804]["DeleteItem"][1]["Id"] = 3311804
	tMidasTouch_Reward[3311804]["RewardItem"] = {}
	tMidasTouch_Reward[3311804]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311804]["RewardItem"][1]["Id"] = 3311818
	tMidasTouch_Reward[3311804]["RewardItem"][1]["Attr"] = "0 16"
	tMidasTouch_Reward[3311804]["RewardEffect"] = {}
	tMidasTouch_Reward[3311804]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311804]["LogId"] =12001232
	--流星*30包
	tMidasTouch_Reward[3311805] = {}
	tMidasTouch_Reward[3311805]["DeleteItem"] = {}
	tMidasTouch_Reward[3311805]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311805]["DeleteItem"][1]["Id"] = 3311805
	tMidasTouch_Reward[3311805]["RewardItem"] = {}
	tMidasTouch_Reward[3311805]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311805]["RewardItem"][1]["Id"] = 3311818
	tMidasTouch_Reward[3311805]["RewardItem"][1]["Attr"] = "0 30"
	tMidasTouch_Reward[3311805]["RewardEffect"] = {}
	tMidasTouch_Reward[3311805]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311805]["LogId"] =12001232
	--流星*100包
	tMidasTouch_Reward[3311806] = {}
	tMidasTouch_Reward[3311806]["DeleteItem"] = {}
	tMidasTouch_Reward[3311806]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311806]["DeleteItem"][1]["Id"] = 3311806
	tMidasTouch_Reward[3311806]["RewardItem"] = {}
	tMidasTouch_Reward[3311806]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311806]["RewardItem"][1]["Id"] = 3311818
	tMidasTouch_Reward[3311806]["RewardItem"][1]["Attr"] = "0 100"
	tMidasTouch_Reward[3311806]["RewardEffect"] = {}
	tMidasTouch_Reward[3311806]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311806]["LogId"] =12001232
	--流星*1000包
	tMidasTouch_Reward[3311807] = {}
	tMidasTouch_Reward[3311807]["DeleteItem"] = {}
	tMidasTouch_Reward[3311807]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311807]["DeleteItem"][1]["Id"] = 3311807
	tMidasTouch_Reward[3311807]["RewardItem"] = {}
	tMidasTouch_Reward[3311807]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311807]["RewardItem"][1]["Id"] = 3311818
	tMidasTouch_Reward[3311807]["RewardItem"][1]["Attr"] = "0 1000"
	tMidasTouch_Reward[3311807]["RewardEffect"] = {}
	tMidasTouch_Reward[3311807]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311807]["LogId"] =12001232
	--流星*2000包
	tMidasTouch_Reward[3311808] = {}
	tMidasTouch_Reward[3311808]["DeleteItem"] = {}
	tMidasTouch_Reward[3311808]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311808]["DeleteItem"][1]["Id"] = 3311808
	tMidasTouch_Reward[3311808]["RewardItem"] = {}
	tMidasTouch_Reward[3311808]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311808]["RewardItem"][1]["Id"] = 3311818
	tMidasTouch_Reward[3311808]["RewardItem"][1]["Attr"] = "0 2000"
	tMidasTouch_Reward[3311808]["RewardEffect"] = {}
	tMidasTouch_Reward[3311808]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311808]["LogId"] =12001232
	--微光星陨石*3包
	tMidasTouch_Reward[3311809] = {}
	tMidasTouch_Reward[3311809]["DeleteItem"] = {}
	tMidasTouch_Reward[3311809]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311809]["DeleteItem"][1]["Id"] = 3311809
	tMidasTouch_Reward[3311809]["RewardItem"] = {}
	tMidasTouch_Reward[3311809]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311809]["RewardItem"][1]["Id"] = 3009000
	tMidasTouch_Reward[3311809]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tMidasTouch_Reward[3311809]["RewardEffect"] = {}
	tMidasTouch_Reward[3311809]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311809]["LogId"] =12001232
	--明亮星陨石*2包
	tMidasTouch_Reward[3311810] = {}
	tMidasTouch_Reward[3311810]["DeleteItem"] = {}
	tMidasTouch_Reward[3311810]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311810]["DeleteItem"][1]["Id"] = 3311810
	tMidasTouch_Reward[3311810]["RewardItem"] = {}
	tMidasTouch_Reward[3311810]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311810]["RewardItem"][1]["Id"] = 3009001
	tMidasTouch_Reward[3311810]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tMidasTouch_Reward[3311810]["RewardEffect"] = {}
	tMidasTouch_Reward[3311810]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311810]["LogId"] =12001232
	--明亮星陨石*3包
	tMidasTouch_Reward[3311811] = {}
	tMidasTouch_Reward[3311811]["DeleteItem"] = {}
	tMidasTouch_Reward[3311811]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311811]["DeleteItem"][1]["Id"] = 3311811
	tMidasTouch_Reward[3311811]["RewardItem"] = {}
	tMidasTouch_Reward[3311811]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311811]["RewardItem"][1]["Id"] = 3009001
	tMidasTouch_Reward[3311811]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tMidasTouch_Reward[3311811]["RewardEffect"] = {}
	tMidasTouch_Reward[3311811]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311811]["LogId"] =12001232
	--明亮星陨石*6包
	tMidasTouch_Reward[3311812] = {}
	tMidasTouch_Reward[3311812]["DeleteItem"] = {}
	tMidasTouch_Reward[3311812]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311812]["DeleteItem"][1]["Id"] = 3311812
	tMidasTouch_Reward[3311812]["RewardItem"] = {}
	tMidasTouch_Reward[3311812]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311812]["RewardItem"][1]["Id"] = 3009001
	tMidasTouch_Reward[3311812]["RewardItem"][1]["Attr"] = "0 6 0 2880 1"
	tMidasTouch_Reward[3311812]["RewardEffect"] = {}
	tMidasTouch_Reward[3311812]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311812]["LogId"] =12001232
	--晶莹星陨石*2包
	tMidasTouch_Reward[3311813] = {}
	tMidasTouch_Reward[3311813]["DeleteItem"] = {}
	tMidasTouch_Reward[3311813]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311813]["DeleteItem"][1]["Id"] = 3311813
	tMidasTouch_Reward[3311813]["RewardItem"] = {}
	tMidasTouch_Reward[3311813]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311813]["RewardItem"][1]["Id"] = 3009002
	tMidasTouch_Reward[3311813]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tMidasTouch_Reward[3311813]["RewardEffect"] = {}
	tMidasTouch_Reward[3311813]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311813]["LogId"] =12001232
	--晶莹星陨石*3包
	tMidasTouch_Reward[3311814] = {}
	tMidasTouch_Reward[3311814]["DeleteItem"] = {}
	tMidasTouch_Reward[3311814]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311814]["DeleteItem"][1]["Id"] = 3311814
	tMidasTouch_Reward[3311814]["RewardItem"] = {}
	tMidasTouch_Reward[3311814]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311814]["RewardItem"][1]["Id"] = 3009002
	tMidasTouch_Reward[3311814]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tMidasTouch_Reward[3311814]["RewardEffect"] = {}
	tMidasTouch_Reward[3311814]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311814]["LogId"] =12001232
	--晶莹星陨石*6包
	tMidasTouch_Reward[3311815] = {}
	tMidasTouch_Reward[3311815]["DeleteItem"] = {}
	tMidasTouch_Reward[3311815]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311815]["DeleteItem"][1]["Id"] = 3311815
	tMidasTouch_Reward[3311815]["RewardItem"] = {}
	tMidasTouch_Reward[3311815]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311815]["RewardItem"][1]["Id"] = 3009002
	tMidasTouch_Reward[3311815]["RewardItem"][1]["Attr"] = "0 6 0 2880 1"
	tMidasTouch_Reward[3311815]["RewardEffect"] = {}
	tMidasTouch_Reward[3311815]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311815]["LogId"] =12001232
	--璀璨星陨石*3包
	tMidasTouch_Reward[3311816] = {}
	tMidasTouch_Reward[3311816]["DeleteItem"] = {}
	tMidasTouch_Reward[3311816]["DeleteItem"][1] = {}
	tMidasTouch_Reward[3311816]["DeleteItem"][1]["Id"] = 3311816
	tMidasTouch_Reward[3311816]["RewardItem"] = {}
	tMidasTouch_Reward[3311816]["RewardItem"][1] = {}
	tMidasTouch_Reward[3311816]["RewardItem"][1]["Id"] = 3009003
	tMidasTouch_Reward[3311816]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tMidasTouch_Reward[3311816]["RewardEffect"] = {}
	tMidasTouch_Reward[3311816]["RewardEffect"]["Effect"] = "angelwing"
	tMidasTouch_Reward[3311816]["LogId"] =12001232
	

--------------------------------------------逻辑部分配置--------------------------------------------
--碎片使用
function MidasTouch_ChipUse(nItemId,sItemName)
	if tMidasTouch_Reward[nItemId] == nil then
		return
	end
	
	--判断碎片数量
	local nChipNum = tMidasTouch_Reward[nItemId]["DeleteItem"][1]["ItemNum"]
	
	if not Item_ChkMulItem(nItemId,nItemId,nChipNum) then
		Sys_MsgBox(string.format(tMidasTouch_Text["MsgBox"]["NotChipNum"], sItemName))
		return
	end
	
	--接入奖励模板
	RewardTemplate_UseItemAndMsg(tMidasTouch_Reward[nItemId])
end

--炼化物品
function MidasTouch_Artifice(nItemId)
	local nNpcId = Get_NpcId()
	
	--炼化物品不足
	if not Item_ChkItem(nItemId,0) then
		local sItemName = Get_ItemtypeName(nItemId)
		
		--赤炼石物品处理
		if math.floor(nItemId / 10) == 73000 then
			sItemName = "+"..(nItemId % 10)..sItemName
		end
		
		tNpcGossip[nNpcId]["Text321"] = string.format(tMidasTouch_Text[nNpcId]["Text321"],sItemName)
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	--判断是否有炼化物品相关奖励配置
	if tMidasTouch_Cont["Materials"][nItemId] == nil then
		return
	end
	
	for i = 1, 3 do
		local nLeft = tMidasTouch_Cont["CenterAline"][1]
		local nMiddle = tMidasTouch_Cont["CenterAline"][2]
		local nRight = tMidasTouch_Cont["CenterAline"][3]
		local sLeft = tMidasTouch_Text["ItemName"][tMidasTouch_Cont["Materials"][nItemId][i][1]]
		local sMiddle = tMidasTouch_Text["ItemName"][tMidasTouch_Cont["Materials"][nItemId][i][2]]
		local sRight = tMidasTouch_Text["ItemName"][tMidasTouch_Cont["Materials"][nItemId][i][3]]
		
		if tMidasTouch_Cont["Materials"][nItemId][i][2] == 0 then
			sMiddle = tMidasTouch_Text["Award"]
		end
		
		local sTotalText = Sys_CenterAline(sLeft,nLeft,sMiddle,nMiddle,sRight,nRight)
		
		tNpcGossip[nNpcId]["Text31"..(i * 3)] = string.format(tMidasTouch_Text[nNpcId]["Text31"..(i * 3)],sTotalText)
	end
	
	local nUserId = Get_UserId()
	
	tMidasTouch_ChooseItem[nUserId] = nItemId
	
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end

--炼化物品（额外的）
function MidasTouch_ArtificeOther(nItemId)
	local nNpcId = Get_NpcId()
	local nUserId = Get_UserId()
	
	--炼化物品不足
	if not Item_ChkItem(nItemId,0) then
		local sItemName = Get_ItemtypeName(nItemId)
		
		tNpcGossip[nNpcId]["Text321"] = string.format(tMidasTouch_Text[nNpcId]["Text321"],sItemName)
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	tMidasTouch_ChooseItem[nUserId] = nItemId
	
	local sIndex = tMidasTouch_Cont["Materials"][nItemId]
	
	LinkNpcGossipFunc_New(nNpcId,sIndex)
end

--炼化确认
function MidasTouch_ArtificeConfirm()
	local nUserId = Get_UserId()
	
	local nItemId = tMidasTouch_ChooseItem[nUserId]
	local nRouletteId = tMidasTouch_Cont["Roulette"][nItemId]
	
	RouletteMould_Main(nRouletteId)
end

--动态码清零
function MidasTouch_GlobalDataReset()
	for k,v in pairs(tMidasTouch_Cont["Global"]) do
		Sys_SetSynaGlobalData(v[1],v[2],0)
	end
end

--------------------------------------------模块部分配置--------------------------------------------

---------------------------------------------NPC模块---------------------------------------------
--见习仙人
tNpcFace[6407] = 35
tNpcGossip[23577] = tNpcGossip[22042] or DefaultNpc:new{}
tNpcGossip[23577]["DialogueText"] = tMidasTouch_Text[23577]
tNpcGossip[23577]["OptionHidden"] = 1
--活动时间前
tNpcGossip[23577]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[23577]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tMidasTouch_Time["ActTime"])
end
tNpcGossip[23577]["tOption1-1"] = {111}
--活动时间后
tNpcGossip[23577]["Text1-2"] = {121}
tNpcGossip[23577]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tMidasTouch_Time["ActTime"])
end
tNpcGossip[23577]["tOption1-1"] = {111}
--活动时间内
tNpcGossip[23577]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[23577]["ChkFunc1-3"] = function()
	if not Sys_ChkFullTime(tMidasTouch_Time["ActTime"]) then
		return false
	end
	
	local nLevel = tMidasTouch_Cont["Level"]
	local nMetempsychosis = tMidasTouch_Cont["Metempsychosis"]
	local nUserId = Get_UserId()
	
	--等级判断
	if User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
		tNpcGossip[23577]["Text1-3"] = {131,132,133,134}
		tNpcGossip[23577]["tOption1-3"] = {132,133,134,135,136,137,138,139}
	else
		tNpcGossip[23577]["Text1-3"] = {131,132,133,134,135}
		tNpcGossip[23577]["tOption1-3"] = {131}
	end
	
	return true
end
tNpcGossip[23577]["tOption1-3"] = {131,132,133,134,135,136,137,138,139}
tNpcGossip[23577]["OptionPoint132"] = "2-1"
tNpcGossip[23577]["OptionFunc133"] = "MidasTouch_ArtificeOther</N>1088000"
tNpcGossip[23577]["OptionFunc134"] = "MidasTouch_ArtificeOther</N>723695"
tNpcGossip[23577]["OptionFunc135"] = "MidasTouch_ArtificeOther</N>723694"
tNpcGossip[23577]["OptionFunc136"] = "MidasTouch_ArtificeOther</N>720027"
tNpcGossip[23577]["OptionFunc137"] = "MidasTouch_ArtificeOther</N>1200005"
tNpcGossip[23577]["OptionFunc138"] = "MidasTouch_ArtificeOther</N>3009002"
tNpcGossip[23577]["OptionFunc139"] = "MidasTouch_ArtificeOther</N>3009001"

--炼化赤炼石
tNpcGossip[23577]["Text2-1"] = {211}
tNpcGossip[23577]["tOption2-1"] = {211,212,213,214,215,216,217}
tNpcGossip[23577]["OptionFunc211"] = "MidasTouch_Artifice</N>730001"
tNpcGossip[23577]["OptionFunc212"] = "MidasTouch_Artifice</N>730002"
tNpcGossip[23577]["OptionFunc213"] = "MidasTouch_Artifice</N>730003"
tNpcGossip[23577]["OptionFunc214"] = "MidasTouch_Artifice</N>730004"
tNpcGossip[23577]["OptionFunc215"] = "MidasTouch_Artifice</N>730005"
tNpcGossip[23577]["OptionFunc216"] = "MidasTouch_Artifice</N>730006"
tNpcGossip[23577]["OptionFunc217"] = "LinkNpcMain"

--炼化确认对白
tNpcGossip[23577]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111}
tNpcGossip[23577]["tOption3-1"] = {311,312}
tNpcGossip[23577]["OptionFunc311"] = "MidasTouch_ArtificeConfirm"
tNpcGossip[23577]["OptionFunc312"] = "LinkNpcMain"

--没有炼化材料
tNpcGossip[23577]["Text3-2"] = {321}
tNpcGossip[23577]["tOption3-2"] = {321}

--炼化确认对白
tNpcGossip[23577]["Text3-3"] = {331,332,333,334,335,336,337,338,339,3310,3311}
tNpcGossip[23577]["tOption3-3"] = {331,332}
tNpcGossip[23577]["OptionFunc331"] = "MidasTouch_ArtificeConfirm"
tNpcGossip[23577]["OptionFunc332"] = "LinkNpcMain"

--炼化确认对白
tNpcGossip[23577]["Text3-4"] = {341,342,343,344,345,346,347,348,349,3410,3411}
tNpcGossip[23577]["tOption3-4"] = {341,342}
tNpcGossip[23577]["OptionFunc341"] = "MidasTouch_ArtificeConfirm"
tNpcGossip[23577]["OptionFunc342"] = "LinkNpcMain"

--炼化确认对白
tNpcGossip[23577]["Text3-5"] = {351,352,353,354,355,356,357,358,359,3510,3511}
tNpcGossip[23577]["tOption3-5"] = {351,352}
tNpcGossip[23577]["OptionFunc351"] = "MidasTouch_ArtificeConfirm"
tNpcGossip[23577]["OptionFunc352"] = "LinkNpcMain"

--炼化确认对白
tNpcGossip[23577]["Text3-6"] = {361,362,363,364,365,366,367,368,369,3610,3611}
tNpcGossip[23577]["tOption3-6"] = {361,362}
tNpcGossip[23577]["OptionFunc361"] = "MidasTouch_ArtificeConfirm"
tNpcGossip[23577]["OptionFunc362"] = "LinkNpcMain"

--炼化确认对白
tNpcGossip[23577]["Text3-7"] = {371,372,373,374,375,376,377,378,379,3710,3711}
tNpcGossip[23577]["tOption3-7"] = {371,372}
tNpcGossip[23577]["OptionFunc371"] = "MidasTouch_ArtificeConfirm"
tNpcGossip[23577]["OptionFunc372"] = "LinkNpcMain"

--炼化确认对白
tNpcGossip[23577]["Text3-8"] = {381,382,383,384,385,386,387,388,389,3810,3811}
tNpcGossip[23577]["tOption3-8"] = {381,382}
tNpcGossip[23577]["OptionFunc381"] = "MidasTouch_ArtificeConfirm"
tNpcGossip[23577]["OptionFunc382"] = "LinkNpcMain"

--炼化确认对白
tNpcGossip[23577]["Text3-9"] = {391,392,393,394,395,396,397,398,399,3910,3911}
tNpcGossip[23577]["tOption3-9"] = {391,392}
tNpcGossip[23577]["OptionFunc391"] = "MidasTouch_ArtificeConfirm"
tNpcGossip[23577]["OptionFunc392"] = "LinkNpcMain"


---------------------------------------------物品模块---------------------------------------------
--固化石碎片
tItem[3311757] = tItem[3311757] or {}
tItem[3311757]["Function"] = function(nItemId,sItemName)
	MidasTouch_ChipUse(nItemId,sItemName)
end

--金钢坚钻碎片
tItem[3311758] = tItem[3311757] or {}
--龙血精石
tItem[3311771] = tItem[3311757] or {}
--流星卷碎片
tItem[3311818] = tItem[3311757] or {}

--3311772,'5W天石包'
tItem[3311772] = tItem[3311772] or {}
tItem[3311772]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tMidasTouch_Reward[nItemId])
end

tItem[3311773] = tItem[3311772]	--'10W天石包'
tItem[3311774] = tItem[3311772]	--'龙血精石*5包'
tItem[3311775] = tItem[3311772]	--'龙血精石*12包'
tItem[3311776] = tItem[3311772]	--'龙血精石*16包'
tItem[3311777] = tItem[3311772]	--'龙血精石*30包'
tItem[3311778] = tItem[3311772]	--'龙血精石*100包'
tItem[3311779] = tItem[3311772]	--'龙血精石*1000包'
tItem[3311780] = tItem[3311772]	--'龙血精石*2000包'
tItem[3311781] = tItem[3311772] 	--'金钢坚钻碎片*5包'
tItem[3311782] = tItem[3311772]	--'金钢坚钻碎片*12包'
tItem[3311783] = tItem[3311772]	--'金钢坚钻碎片*16包'
tItem[3311784] = tItem[3311772]	--'金钢坚钻碎片*30包'
tItem[3311785] = tItem[3311772]	--'金钢坚钻碎片*100包'
tItem[3311786] = tItem[3311772]	--'金钢坚钻碎片*1000包'
tItem[3311787] = tItem[3311772]	--'金钢坚钻碎片*2000包'
tItem[3311788] = tItem[3311772]	--'固化石碎片*5包'
tItem[3311789] = tItem[3311772]	--'固化石碎片*12包'
tItem[3311790] = tItem[3311772]	--'固化石碎片*16包'
tItem[3311791] = tItem[3311772] 	--'固化石碎片*30包'
tItem[3311792] = tItem[3311772]	--'固化石碎片*100包'
tItem[3311793] = tItem[3311772]	--'固化石碎片*1000包'
tItem[3311794] = tItem[3311772]	--'固化石碎片*2000包'
tItem[3311795] = tItem[3311772]	--'固化石*5包'
tItem[3311796] = tItem[3311772]	--'固化石*12包'
tItem[3311797] = tItem[3311772]	--'固化石*16包'
tItem[3311798] = tItem[3311772]	--'超大固化石*3包'
tItem[3311799] = tItem[3311772]	--'超大固化石*10包'
tItem[3311800] = tItem[3311772]	--'超大固化石*100包'
tItem[3311801] = tItem[3311772] 	--'超大固化石*200包'
tItem[3311802] = tItem[3311772]	--'流星*5包'
tItem[3311803] = tItem[3311772]	--'流星*12包'
tItem[3311804] = tItem[3311772]	--'流星*16包'
tItem[3311805] = tItem[3311772]	--'流星*30包'
tItem[3311806] = tItem[3311772]	--'流星*100包'
tItem[3311807] = tItem[3311772]	--'流星*1000包'
tItem[3311808] = tItem[3311772]	--'流星*2000包'
tItem[3311809] = tItem[3311772]	--'微光星陨石*3包'
tItem[3311810] = tItem[3311772] 	--'明亮星陨石*2包'
tItem[3311811] = tItem[3311772] 	--'明亮星陨石*3包'
tItem[3311812] = tItem[3311772] 	--'明亮星陨石*6包'
tItem[3311813] = tItem[3311772] 	--'晶莹星陨石*2包'
tItem[3311814] = tItem[3311772] 	--'晶莹星陨石*3包'
tItem[3311815] = tItem[3311772] 	--'晶莹星陨石*6包'
tItem[3311816] = tItem[3311772] 	--'璀璨星陨石*3包'

---------------------------------------------系统自检---------------------------------------------
local tMidasTouch_OnTime = {}
	tMidasTouch_OnTime[1] = {}
	tMidasTouch_OnTime[1]["Type"] = 2
	tMidasTouch_OnTime[1]["TimeType"] = 4
	tMidasTouch_OnTime[1]["Multiple"] = {}
	tMidasTouch_OnTime[1]["Multiple"][1]  = "00:00 00:00"
	tMidasTouch_OnTime[1]["Func"] = MidasTouch_GlobalDataReset
	
table.insert(tSystemTime_InitialData,tMidasTouch_OnTime[1])

