------------------------------------------------------------------------------------
--Name：       160711[简体征服][活动脚本]战士版本装备促销
--Creator:      郑鋆
--Created:     2016/07/11
------------------------------------------------------------------------------------

-- 命名前缀
-- WarriorEquipPromot_

----------------------------------表配置部分--------------------------------------------
-- 价格配置表
local tWarriorEquipPromot_Price = {}
	-- 老服价格
	tWarriorEquipPromot_Price[1] = {}
	tWarriorEquipPromot_Price[1][3200772] = 1799
	tWarriorEquipPromot_Price[1][3200773] = 1799
	tWarriorEquipPromot_Price[1][3200774] = 1799
	tWarriorEquipPromot_Price[1][3200775] = 1799
	tWarriorEquipPromot_Price[1][3200776] = 8888
	tWarriorEquipPromot_Price[1][3200777] = 8888
	tWarriorEquipPromot_Price[1][3200778] = 8888
	tWarriorEquipPromot_Price[1][3200779] = 9999
	tWarriorEquipPromot_Price[1][3200780] = 1299
	tWarriorEquipPromot_Price[1][3200781] = 1299
	tWarriorEquipPromot_Price[1][3200782] = 1299
	tWarriorEquipPromot_Price[1][3200783] = 1299
	tWarriorEquipPromot_Price[1][3200784] = 6199
	tWarriorEquipPromot_Price[1][3200785] = 6199
	tWarriorEquipPromot_Price[1][3200786] = 6199
	tWarriorEquipPromot_Price[1][3200787] = 6999

	-- 较新售价
	tWarriorEquipPromot_Price[2] = {}
	tWarriorEquipPromot_Price[2][3200772] = 3999
	tWarriorEquipPromot_Price[2][3200773] = 3999
	tWarriorEquipPromot_Price[2][3200774] = 3999
	tWarriorEquipPromot_Price[2][3200775] = 3000
	tWarriorEquipPromot_Price[2][3200776] = 12999
	tWarriorEquipPromot_Price[2][3200777] = 12999
	tWarriorEquipPromot_Price[2][3200778] = 12999
	tWarriorEquipPromot_Price[2][3200779] = 13999
	tWarriorEquipPromot_Price[2][3200780] = 2799
	tWarriorEquipPromot_Price[2][3200781] = 2799
	tWarriorEquipPromot_Price[2][3200782] = 2799
	tWarriorEquipPromot_Price[2][3200783] = 2799
	tWarriorEquipPromot_Price[2][3200784] = 8999
	tWarriorEquipPromot_Price[2][3200785] = 8999
	tWarriorEquipPromot_Price[2][3200786] = 8999
	tWarriorEquipPromot_Price[2][3200787] = 9999

	-- 全新售价
	tWarriorEquipPromot_Price[3] = {}
	tWarriorEquipPromot_Price[3][3200772] = 8999
	tWarriorEquipPromot_Price[3][3200773] = 8999
	tWarriorEquipPromot_Price[3][3200774] = 8999
	tWarriorEquipPromot_Price[3][3200775] = 5499
	tWarriorEquipPromot_Price[3][3200776] = 21999
	tWarriorEquipPromot_Price[3][3200777] = 21999
	tWarriorEquipPromot_Price[3][3200778] = 21999
	tWarriorEquipPromot_Price[3][3200779] = 19999
	tWarriorEquipPromot_Price[3][3200780] = 7299
	tWarriorEquipPromot_Price[3][3200781] = 7299
	tWarriorEquipPromot_Price[3][3200782] = 7299
	tWarriorEquipPromot_Price[3][3200783] = 7299
	tWarriorEquipPromot_Price[3][3200784] = 16999
	tWarriorEquipPromot_Price[3][3200785] = 16999
	tWarriorEquipPromot_Price[3][3200786] = 16999
	tWarriorEquipPromot_Price[3][3200787] = 14999

-----------------------------------------------------------铁扇门-----------------------------------------------------------
	-- 老服价格
	tWarriorEquipPromot_Price[1][3301750] = 6999
	tWarriorEquipPromot_Price[1][3301751] = 6999
	tWarriorEquipPromot_Price[1][3301752] = 4899
	tWarriorEquipPromot_Price[1][3301753] = 17999
	tWarriorEquipPromot_Price[1][3301754] = 17999
	tWarriorEquipPromot_Price[1][3301755] = 15999
	
	tWarriorEquipPromot_Price[1][3301756] = 5999
	tWarriorEquipPromot_Price[1][3301757] = 5999
	tWarriorEquipPromot_Price[1][3301758] = 3899
	tWarriorEquipPromot_Price[1][3301759] = 15999
	tWarriorEquipPromot_Price[1][3301760] = 15999
	tWarriorEquipPromot_Price[1][3301761] = 13999
	-- 新服售价
	tWarriorEquipPromot_Price[2][3301750] = 8999
	tWarriorEquipPromot_Price[2][3301751] = 8999
	tWarriorEquipPromot_Price[2][3301752] = 6999
	tWarriorEquipPromot_Price[2][3301753] = 23999
	tWarriorEquipPromot_Price[2][3301754] = 23999
	tWarriorEquipPromot_Price[2][3301755] = 21999
	
	tWarriorEquipPromot_Price[2][3301756] = 7999
	tWarriorEquipPromot_Price[2][3301757] = 7999
	tWarriorEquipPromot_Price[2][3301758] = 5999
	tWarriorEquipPromot_Price[2][3301759] = 21999
	tWarriorEquipPromot_Price[2][3301760] = 21999
	tWarriorEquipPromot_Price[2][3301761] = 19999

-----------------------------------------------------------海盗-----------------------------------------------------------
	-- 老服价格
	tWarriorEquipPromot_Price[1][3307640] = 10888
	tWarriorEquipPromot_Price[1][3307641] = 11888
	tWarriorEquipPromot_Price[1][3307642] = 10888
	tWarriorEquipPromot_Price[1][3307643] = 11888
	
	tWarriorEquipPromot_Price[1][3307644] = 8568
	tWarriorEquipPromot_Price[1][3307645] = 9568
	tWarriorEquipPromot_Price[1][3307646] = 8568
	tWarriorEquipPromot_Price[1][3307647] = 9568
	
	tWarriorEquipPromot_Price[1][3307648] = 2888
	tWarriorEquipPromot_Price[1][3307649] = 3888
	tWarriorEquipPromot_Price[1][3307650] = 2888
	tWarriorEquipPromot_Price[1][3307651] = 3888
	
	tWarriorEquipPromot_Price[1][3307652] = 2588
	tWarriorEquipPromot_Price[1][3307653] = 3688
	tWarriorEquipPromot_Price[1][3307654] = 2588
	tWarriorEquipPromot_Price[1][3307655] = 3688
	-- 新服售价
	tWarriorEquipPromot_Price[2][3307640] = 26888
	tWarriorEquipPromot_Price[2][3307641] = 28888
	tWarriorEquipPromot_Price[2][3307642] = 26888
	tWarriorEquipPromot_Price[2][3307643] = 28888
	
	tWarriorEquipPromot_Price[2][3307644] = 19999
	tWarriorEquipPromot_Price[2][3307645] = 21588
	tWarriorEquipPromot_Price[2][3307646] = 19999
	tWarriorEquipPromot_Price[2][3307647] = 21588
	
	tWarriorEquipPromot_Price[2][3307648] = 9999
	tWarriorEquipPromot_Price[2][3307649] = 10999
	tWarriorEquipPromot_Price[2][3307650] = 9999
	tWarriorEquipPromot_Price[2][3307651] = 10999
	
	tWarriorEquipPromot_Price[2][3307652] = 13888
	tWarriorEquipPromot_Price[2][3307653] = 15888
	tWarriorEquipPromot_Price[2][3307654] = 13888
	tWarriorEquipPromot_Price[2][3307655] = 15888
-----------------------------------------------------------雷神-----------------------------------------------------------
	-- 老服价格
	tWarriorEquipPromot_Price[1][3319183] = 10888
	tWarriorEquipPromot_Price[1][3319184] = 11888
	tWarriorEquipPromot_Price[1][3319185] = 10888
	tWarriorEquipPromot_Price[1][3319186] = 11888
	tWarriorEquipPromot_Price[1][3319187] = 8568
	tWarriorEquipPromot_Price[1][3319188] = 9568
	tWarriorEquipPromot_Price[1][3319189] = 8568
	tWarriorEquipPromot_Price[1][3319190] = 9568
	tWarriorEquipPromot_Price[1][3319191] = 2888
	tWarriorEquipPromot_Price[1][3319192] = 3888
	tWarriorEquipPromot_Price[1][3319193] = 2888
	tWarriorEquipPromot_Price[1][3319194] = 3888
	tWarriorEquipPromot_Price[1][3319195] = 2588
	tWarriorEquipPromot_Price[1][3319196] = 3688
	tWarriorEquipPromot_Price[1][3319197] = 2588
	tWarriorEquipPromot_Price[1][3319198] = 3688
	-- 新服售价
	tWarriorEquipPromot_Price[2][3319183] = 26888
	tWarriorEquipPromot_Price[2][3319184] = 28888
	tWarriorEquipPromot_Price[2][3319185] = 26888
	tWarriorEquipPromot_Price[2][3319186] = 28888
	tWarriorEquipPromot_Price[2][3319187] = 19999
	tWarriorEquipPromot_Price[2][3319188] = 21588
	tWarriorEquipPromot_Price[2][3319189] = 19999
	tWarriorEquipPromot_Price[2][3319190] = 21588
	tWarriorEquipPromot_Price[2][3319191] = 9999
	tWarriorEquipPromot_Price[2][3319192] = 10999
	tWarriorEquipPromot_Price[2][3319193] = 9999
	tWarriorEquipPromot_Price[2][3319194] = 10999
	tWarriorEquipPromot_Price[2][3319195] = 13888
	tWarriorEquipPromot_Price[2][3319196] = 15888
	tWarriorEquipPromot_Price[2][3319197] = 13888
	tWarriorEquipPromot_Price[2][3319198] = 15888
-----------------------------------------------------------勇士-----------------------------------------------------------
	-- 老服价格
	tWarriorEquipPromot_Price[1][3312724] = 10888
	tWarriorEquipPromot_Price[1][3312725] = 11888
	tWarriorEquipPromot_Price[1][3312726] = 10888
	tWarriorEquipPromot_Price[1][3312727] = 11888
	tWarriorEquipPromot_Price[1][3312728] = 8568
	tWarriorEquipPromot_Price[1][3312729] = 9568
	tWarriorEquipPromot_Price[1][3312730] = 8568
	tWarriorEquipPromot_Price[1][3312731] = 9568
	tWarriorEquipPromot_Price[1][3312732] = 2888
	tWarriorEquipPromot_Price[1][3312733] = 3888
	tWarriorEquipPromot_Price[1][3312734] = 2888
	tWarriorEquipPromot_Price[1][3312735] = 3888
	tWarriorEquipPromot_Price[1][3312736] = 2588
	tWarriorEquipPromot_Price[1][3312737] = 3688
	tWarriorEquipPromot_Price[1][3312738] = 2588
	tWarriorEquipPromot_Price[1][3312739] = 3688
	-- 新服售价
	tWarriorEquipPromot_Price[2][3312724] = 26888
	tWarriorEquipPromot_Price[2][3312725] = 28888
	tWarriorEquipPromot_Price[2][3312726] = 26888
	tWarriorEquipPromot_Price[2][3312727] = 28888
	tWarriorEquipPromot_Price[2][3312728] = 19999
	tWarriorEquipPromot_Price[2][3312729] = 21588
	tWarriorEquipPromot_Price[2][3312730] = 19999
	tWarriorEquipPromot_Price[2][3312731] = 21588
	tWarriorEquipPromot_Price[2][3312732] = 9999
	tWarriorEquipPromot_Price[2][3312733] = 10999
	tWarriorEquipPromot_Price[2][3312734] = 9999
	tWarriorEquipPromot_Price[2][3312735] = 10999
	tWarriorEquipPromot_Price[2][3312736] = 13888
	tWarriorEquipPromot_Price[2][3312737] = 15888
	tWarriorEquipPromot_Price[2][3312738] = 13888
	tWarriorEquipPromot_Price[2][3312739] = 15888

-----------------------------------------------------------忍者-----------------------------------------------------------
	-- 老服价格
	tWarriorEquipPromot_Price[1][3315465] = 10888
	tWarriorEquipPromot_Price[1][3315466] = 11888
	tWarriorEquipPromot_Price[1][3315467] = 10888
	tWarriorEquipPromot_Price[1][3315468] = 11888
	tWarriorEquipPromot_Price[1][3315469] = 8568
	tWarriorEquipPromot_Price[1][3315470] = 9568
	tWarriorEquipPromot_Price[1][3315471] = 8568
	tWarriorEquipPromot_Price[1][3315472] = 9568
	tWarriorEquipPromot_Price[1][3315473] = 2888
	tWarriorEquipPromot_Price[1][3315474] = 3888
	tWarriorEquipPromot_Price[1][3315475] = 2888
	tWarriorEquipPromot_Price[1][3315476] = 3888
	tWarriorEquipPromot_Price[1][3315477] = 2588
	tWarriorEquipPromot_Price[1][3315478] = 3688
	tWarriorEquipPromot_Price[1][3315479] = 2588
	tWarriorEquipPromot_Price[1][3315481] = 3688
	-- 新服售价
	tWarriorEquipPromot_Price[2][3315465] = 26888
	tWarriorEquipPromot_Price[2][3315466] = 28888
	tWarriorEquipPromot_Price[2][3315467] = 26888
	tWarriorEquipPromot_Price[2][3315468] = 28888
	tWarriorEquipPromot_Price[2][3315469] = 19999
	tWarriorEquipPromot_Price[2][3315470] = 21588
	tWarriorEquipPromot_Price[2][3315471] = 19999
	tWarriorEquipPromot_Price[2][3315472] = 21588
	tWarriorEquipPromot_Price[2][3315473] = 9999
	tWarriorEquipPromot_Price[2][3315474] = 10999
	tWarriorEquipPromot_Price[2][3315475] = 9999
	tWarriorEquipPromot_Price[2][3315476] = 10999
	tWarriorEquipPromot_Price[2][3315477] = 13888
	tWarriorEquipPromot_Price[2][3315478] = 15888
	tWarriorEquipPromot_Price[2][3315479] = 13888
	tWarriorEquipPromot_Price[2][3315481] = 15888

local nServer = 2	

-- 选项对应的物品ID
local tWarriorEquipPromot_Option = {}
	tWarriorEquipPromot_Option[12] = 3200772
	tWarriorEquipPromot_Option[13] = 3200776
	tWarriorEquipPromot_Option[14] = 3200773
	tWarriorEquipPromot_Option[15] = 3200777
	tWarriorEquipPromot_Option[16] = 3200774
	tWarriorEquipPromot_Option[17] = 3200778
	tWarriorEquipPromot_Option[18] = 3200775
	tWarriorEquipPromot_Option[19] = 3200779
	tWarriorEquipPromot_Option[23] = 3200780
	tWarriorEquipPromot_Option[24] = 3200784
	tWarriorEquipPromot_Option[25] = 3200781
	tWarriorEquipPromot_Option[26] = 3200785
	tWarriorEquipPromot_Option[27] = 3200782
	tWarriorEquipPromot_Option[28] = 3200786
	tWarriorEquipPromot_Option[29] = 3200783
	tWarriorEquipPromot_Option[30] = 3200787
-----------------------------------------------------------铁扇门-----------------------------------------------------------
	tWarriorEquipPromot_Option[52] = 3301750
	tWarriorEquipPromot_Option[53] = 3301753
	tWarriorEquipPromot_Option[54] = 3301751
	tWarriorEquipPromot_Option[55] = 3301754
	tWarriorEquipPromot_Option[56] = 3301752
	tWarriorEquipPromot_Option[57] = 3301755
	
	tWarriorEquipPromot_Option[63] = 3301756
	tWarriorEquipPromot_Option[64] = 3301759
	tWarriorEquipPromot_Option[65] = 3301757
	tWarriorEquipPromot_Option[66] = 3301760
	tWarriorEquipPromot_Option[67] = 3301758
	tWarriorEquipPromot_Option[68] = 3301761
	
-----------------------------------------------------------海盗-----------------------------------------------------------
	tWarriorEquipPromot_Option[72] = 3307651
	tWarriorEquipPromot_Option[73] = 3307643
	tWarriorEquipPromot_Option[74] = 3307649
	tWarriorEquipPromot_Option[75] = 3307641
	tWarriorEquipPromot_Option[76] = 3307648
	tWarriorEquipPromot_Option[77] = 3307640
	tWarriorEquipPromot_Option[78] = 3307650
	tWarriorEquipPromot_Option[79] = 3307642

	tWarriorEquipPromot_Option[82] = 3307655
	tWarriorEquipPromot_Option[83] = 3307647
	tWarriorEquipPromot_Option[84] = 3307653
	tWarriorEquipPromot_Option[85] = 3307645
	tWarriorEquipPromot_Option[86] = 3307652
	tWarriorEquipPromot_Option[87] = 3307644
	tWarriorEquipPromot_Option[88] = 3307654
	tWarriorEquipPromot_Option[89] = 3307646
----------------------------------------------------------雷神-----------------------------------------------------------
	tWarriorEquipPromot_Option[9011] = 3319194
	tWarriorEquipPromot_Option[9012] = 3319186
	tWarriorEquipPromot_Option[9013] = 3319192
	tWarriorEquipPromot_Option[9014] = 3319184
	tWarriorEquipPromot_Option[9015] = 3319191
	tWarriorEquipPromot_Option[9016] = 3319183
	tWarriorEquipPromot_Option[9017] = 3319193
	tWarriorEquipPromot_Option[9018] = 3319185
	tWarriorEquipPromot_Option[9021] = 3319198
	tWarriorEquipPromot_Option[9022] = 3319190
	tWarriorEquipPromot_Option[9023] = 3319196
	tWarriorEquipPromot_Option[9024] = 3319188
	tWarriorEquipPromot_Option[9025] = 3319195
	tWarriorEquipPromot_Option[9026] = 3319187
	tWarriorEquipPromot_Option[9027] = 3319197
	tWarriorEquipPromot_Option[9028] = 3319189
----------------------------------------------------------勇士-----------------------------------------------------------
	tWarriorEquipPromot_Option[10011] = 3312735
	tWarriorEquipPromot_Option[10012] = 3312727
	tWarriorEquipPromot_Option[10013] = 3312733
	tWarriorEquipPromot_Option[10014] = 3312725
	tWarriorEquipPromot_Option[10015] = 3312732
	tWarriorEquipPromot_Option[10016] = 3312724
	tWarriorEquipPromot_Option[10017] = 3312734
	tWarriorEquipPromot_Option[10018] = 3312726
	tWarriorEquipPromot_Option[10021] = 3312739
	tWarriorEquipPromot_Option[10022] = 3312731
	tWarriorEquipPromot_Option[10023] = 3312737
	tWarriorEquipPromot_Option[10024] = 3312729
	tWarriorEquipPromot_Option[10025] = 3312736
	tWarriorEquipPromot_Option[10026] = 3312728
	tWarriorEquipPromot_Option[10027] = 3312738
	tWarriorEquipPromot_Option[10028] = 3312730
	
----------------------------------------------------------忍者-----------------------------------------------------------
	tWarriorEquipPromot_Option[50011] = 3315476
	tWarriorEquipPromot_Option[50012] = 3315468
	tWarriorEquipPromot_Option[50013] = 3315474
	tWarriorEquipPromot_Option[50014] = 3315466
	tWarriorEquipPromot_Option[50015] = 3315473
	tWarriorEquipPromot_Option[50016] = 3315465
	tWarriorEquipPromot_Option[50017] = 3315475
	tWarriorEquipPromot_Option[50018] = 3315467
	tWarriorEquipPromot_Option[50021] = 3315481
	tWarriorEquipPromot_Option[50022] = 3315472
	tWarriorEquipPromot_Option[50023] = 3315478
	tWarriorEquipPromot_Option[50024] = 3315470
	tWarriorEquipPromot_Option[50025] = 3315477
	tWarriorEquipPromot_Option[50026] = 3315469
	tWarriorEquipPromot_Option[50027] = 3315479
	tWarriorEquipPromot_Option[50028] = 3315471
	
	
local tWarriorEquipPromot_Gift = {}
	-- 非赠的对白及选项
	tWarriorEquipPromot_Gift[1] = {}
	tWarriorEquipPromot_Gift[1]["Text"] = "Text341"
	tWarriorEquipPromot_Gift[1]["Option"] = 21
	tWarriorEquipPromot_Gift[1]["Index"] = "3-4"

	-- 赠品的对白及选项
	tWarriorEquipPromot_Gift[2] = {}
	tWarriorEquipPromot_Gift[2]["Text"] = "Text421"
	tWarriorEquipPromot_Gift[2]["Option"] = 31
	tWarriorEquipPromot_Gift[2]["Index"] = "4-2"
		
local tWarriorEquipPromot_Reward = {}
	-- +6系列
	-- 极品100级战头	2洞U龙	+6	加持255	神佑-5
	-- 6阶神魂赠
	tWarriorEquipPromot_Reward[3200772] = {}
	tWarriorEquipPromot_Reward[3200772]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3200772]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3200772]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3200772]["DeleteItem"][1]["Id"] = 3200772
	tWarriorEquipPromot_Reward[3200772]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3200772]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3200772]["RewardItem"][1]["Id"] = 111089
	tWarriorEquipPromot_Reward[3200772]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3200772]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3200772]["RewardItem"][2]["Id"] = 820071
	tWarriorEquipPromot_Reward[3200772]["RewardItem"][2]["Attr"] = "0 1 3"

	-- +6系列
	-- 极品100级战衣	2洞U龙	+6	加持255	神佑-5
	-- 6阶神魂赠
	tWarriorEquipPromot_Reward[3200773] = {}
	tWarriorEquipPromot_Reward[3200773]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3200773]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3200773]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3200773]["DeleteItem"][1]["Id"] = 3200773
	tWarriorEquipPromot_Reward[3200773]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3200773]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3200773]["RewardItem"][1]["Id"] = 131089
	tWarriorEquipPromot_Reward[3200773]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3200773]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3200773]["RewardItem"][2]["Id"] = 822053
	tWarriorEquipPromot_Reward[3200773]["RewardItem"][2]["Attr"] = "0 1 3"

	-- +6系列
	-- 极品100级盾牌	2洞U龙	+6	加持255	神佑-5
	-- 6阶神魂赠
	tWarriorEquipPromot_Reward[3200774] = {}
	tWarriorEquipPromot_Reward[3200774]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3200774]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3200774]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3200774]["DeleteItem"][1]["Id"] = 3200774
	tWarriorEquipPromot_Reward[3200774]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3200774]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3200774]["RewardItem"][1]["Id"] = 900089
	tWarriorEquipPromot_Reward[3200774]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3200774]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3200774]["RewardItem"][2]["Id"] = 800421
	tWarriorEquipPromot_Reward[3200774]["RewardItem"][2]["Attr"] = "0 1 3"

	-- +6系列
	-- 极品100级狂战武器	2洞U龙	+6	加持255	神佑-5
	-- 6阶神魂[暴击]
	tWarriorEquipPromot_Reward[3200775] = {}
	tWarriorEquipPromot_Reward[3200775][1] = {}
	tWarriorEquipPromot_Reward[3200775][1]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3200775][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3200775][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3200775][1]["DeleteItem"][1]["Id"] = 3200775
	tWarriorEquipPromot_Reward[3200775][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3200775][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3200775][1]["RewardItem"][1]["Id"] = 624199
	tWarriorEquipPromot_Reward[3200775][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3200775][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3200775][1]["RewardItem"][2]["Id"] = 801212
	tWarriorEquipPromot_Reward[3200775][1]["RewardItem"][2]["Attr"] = "0 1 3"

	-- 极品100级狂战武器	2洞U龙	+6	加持255	神佑-5
	-- 6阶神魂[粉碎]
	tWarriorEquipPromot_Reward[3200775][2] = {}
	tWarriorEquipPromot_Reward[3200775][2]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3200775][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3200775][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3200775][2]["DeleteItem"][1]["Id"] = 3200775
	tWarriorEquipPromot_Reward[3200775][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3200775][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3200775][2]["RewardItem"][1]["Id"] = 624199
	tWarriorEquipPromot_Reward[3200775][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3200775][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3200775][2]["RewardItem"][2]["Id"] = 801214
	tWarriorEquipPromot_Reward[3200775][2]["RewardItem"][2]["Attr"] = "0 1 3"

	-- +8系列
	-- 极品130级战头	2洞U龙	+8	加持255	神佑-7
	-- 7阶神魂赠[坚固]
	tWarriorEquipPromot_Reward[3200776] = {}
	tWarriorEquipPromot_Reward[3200776][1] = {}
	tWarriorEquipPromot_Reward[3200776][1]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3200776][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3200776][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3200776][1]["DeleteItem"][1]["Id"] = 3200776
	tWarriorEquipPromot_Reward[3200776][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3200776][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3200776][1]["RewardItem"][1]["Id"] = 111209
	tWarriorEquipPromot_Reward[3200776][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3200776][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3200776][1]["RewardItem"][2]["Id"] = 820074
	tWarriorEquipPromot_Reward[3200776][1]["RewardItem"][2]["Attr"] = "0 1 3"

	-- 极品130级战头	2洞U龙	+8	加持255	神佑-7
	-- 7阶神魂赠[防暴]
	tWarriorEquipPromot_Reward[3200776][2] = {}
	tWarriorEquipPromot_Reward[3200776][2]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3200776][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3200776][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3200776][2]["DeleteItem"][1]["Id"] = 3200776
	tWarriorEquipPromot_Reward[3200776][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3200776][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3200776][2]["RewardItem"][1]["Id"] = 111209
	tWarriorEquipPromot_Reward[3200776][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3200776][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3200776][2]["RewardItem"][2]["Id"] = 820073
	tWarriorEquipPromot_Reward[3200776][2]["RewardItem"][2]["Attr"] = "0 1 3"

	-- +8系列
	-- 极品130级战衣	131209	2洞U龙	+8	加持255	神佑-7
	-- 7阶神魂赠
	tWarriorEquipPromot_Reward[3200777] = {}
	tWarriorEquipPromot_Reward[3200777]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3200777]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3200777]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3200777]["DeleteItem"][1]["Id"] = 3200777
	tWarriorEquipPromot_Reward[3200777]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3200777]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3200777]["RewardItem"][1]["Id"] = 131209
	tWarriorEquipPromot_Reward[3200777]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3200777]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3200777]["RewardItem"][2]["Id"] = 822071
	tWarriorEquipPromot_Reward[3200777]["RewardItem"][2]["Attr"] = "0 1 3"

	-- +8系列
	-- 极品130级盾牌	900209	2洞U龙	+8	加持255	神佑-7
	-- 7阶神魂赠
	tWarriorEquipPromot_Reward[3200778] = {}
	tWarriorEquipPromot_Reward[3200778]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3200778]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3200778]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3200778]["DeleteItem"][1]["Id"] = 3200778
	tWarriorEquipPromot_Reward[3200778]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3200778]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3200778]["RewardItem"][1]["Id"] = 900209
	tWarriorEquipPromot_Reward[3200778]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3200778]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3200778]["RewardItem"][2]["Id"] = 800422
	tWarriorEquipPromot_Reward[3200778]["RewardItem"][2]["Attr"] = "0 1 3"

	-- +8系列
	-- 极品130级狂战武器	2洞U龙	+8	加持255	神佑-7
	-- 7阶神魂赠[暴击]
	tWarriorEquipPromot_Reward[3200779] = {}
	tWarriorEquipPromot_Reward[3200779][1] = {}
	tWarriorEquipPromot_Reward[3200779][1]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3200779][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3200779][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3200779][1]["DeleteItem"][1]["Id"] = 3200779
	tWarriorEquipPromot_Reward[3200779][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3200779][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3200779][1]["RewardItem"][1]["Id"] = 624339
	tWarriorEquipPromot_Reward[3200779][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3200779][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3200779][1]["RewardItem"][2]["Id"] = 801216
	tWarriorEquipPromot_Reward[3200779][1]["RewardItem"][2]["Attr"] = "0 1 3"

	-- 极品130级狂战武器	2洞U龙	+8	加持255	神佑-7
	-- 7阶神魂赠[粉碎]
	tWarriorEquipPromot_Reward[3200779][2] = {}
	tWarriorEquipPromot_Reward[3200779][2]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3200779][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3200779][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3200779][2]["DeleteItem"][1]["Id"] = 3200779
	tWarriorEquipPromot_Reward[3200779][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3200779][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3200779][2]["RewardItem"][1]["Id"] = 624339
	tWarriorEquipPromot_Reward[3200779][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3200779][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3200779][2]["RewardItem"][2]["Id"] = 801218
	tWarriorEquipPromot_Reward[3200779][2]["RewardItem"][2]["Attr"] = "0 1 3"

	------------------------------------赠品战士装备----------------------------------------
	-- 极品15级战头	111009	2洞U龙	+6	加持255	神佑-5
	-- 6阶神魂赠	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3200780] = {}
	tWarriorEquipPromot_Reward[3200780]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3200780]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3200780]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3200780]["DeleteItem"][1]["Id"] = 3200780
	tWarriorEquipPromot_Reward[3200780]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3200780]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3200780]["RewardItem"][1]["Id"] = 111009
	tWarriorEquipPromot_Reward[3200780]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3200780]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3200780]["RewardItem"][2]["Id"] = 820071
	tWarriorEquipPromot_Reward[3200780]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3200780]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3200780]["RewardItem"][3]["Id"] = 3200822
	tWarriorEquipPromot_Reward[3200780]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3200780]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3200780]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3200780]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 极品15级战衣	131009	2洞U龙	+6	加持255	神佑-5
	-- 6阶神魂赠	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3200781] = {}
	tWarriorEquipPromot_Reward[3200781]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3200781]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3200781]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3200781]["DeleteItem"][1]["Id"] = 3200781
	tWarriorEquipPromot_Reward[3200781]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3200781]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3200781]["RewardItem"][1]["Id"] = 131009
	tWarriorEquipPromot_Reward[3200781]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3200781]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3200781]["RewardItem"][2]["Id"] = 822053
	tWarriorEquipPromot_Reward[3200781]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3200781]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3200781]["RewardItem"][3]["Id"] = 3200822
	tWarriorEquipPromot_Reward[3200781]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3200781]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3200781]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3200781]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 极品15级盾牌	900009(40级)	2洞U龙	+6	加持255	神佑-5
	-- 6阶神魂赠	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3200782] = {}
	tWarriorEquipPromot_Reward[3200782]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3200782]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3200782]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3200782]["DeleteItem"][1]["Id"] = 3200782
	tWarriorEquipPromot_Reward[3200782]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3200782]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3200782]["RewardItem"][1]["Id"] = 900009
	tWarriorEquipPromot_Reward[3200782]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3200782]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3200782]["RewardItem"][2]["Id"] = 800421
	tWarriorEquipPromot_Reward[3200782]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3200782]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3200782]["RewardItem"][3]["Id"] = 3200822
	tWarriorEquipPromot_Reward[3200782]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3200782]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3200782]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3200782]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 极品15级狂战武器		2洞U龙	+6	加持255	神佑-5
	-- 六阶拳套神魂[暴击]	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3200783] = {}
	tWarriorEquipPromot_Reward[3200783][1] = {}
	tWarriorEquipPromot_Reward[3200783][1]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3200783][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3200783][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3200783][1]["DeleteItem"][1]["Id"] = 3200783
	tWarriorEquipPromot_Reward[3200783][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3200783][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3200783][1]["RewardItem"][1]["Id"] = 624029
	tWarriorEquipPromot_Reward[3200783][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3200783][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3200783][1]["RewardItem"][2]["Id"] = 801212
	tWarriorEquipPromot_Reward[3200783][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3200783][1]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3200783][1]["RewardItem"][3]["Id"] = 3200822
	tWarriorEquipPromot_Reward[3200783][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3200783][1]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3200783][1]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3200783][1]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 极品15级狂战武器		2洞U龙	+6	加持255	神佑-5
	-- 六阶拳套神魂[粉碎]	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3200783][2] = {}
	tWarriorEquipPromot_Reward[3200783][2]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3200783][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3200783][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3200783][2]["DeleteItem"][1]["Id"] = 3200783
	tWarriorEquipPromot_Reward[3200783][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3200783][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3200783][2]["RewardItem"][1]["Id"] = 624029
	tWarriorEquipPromot_Reward[3200783][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3200783][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3200783][2]["RewardItem"][2]["Id"] = 801214
	tWarriorEquipPromot_Reward[3200783][2]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3200783][2]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3200783][2]["RewardItem"][3]["Id"] = 3200822
	tWarriorEquipPromot_Reward[3200783][2]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3200783][2]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3200783][2]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3200783][2]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 极品15级战头	111009	2洞U龙	+8	加持255	神佑-7
	-- 七阶头部神魂[坚固]	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3200784] = {}
	tWarriorEquipPromot_Reward[3200784][1] = {}
	tWarriorEquipPromot_Reward[3200784][1]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3200784][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3200784][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3200784][1]["DeleteItem"][1]["Id"] = 3200784
	tWarriorEquipPromot_Reward[3200784][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3200784][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3200784][1]["RewardItem"][1]["Id"] = 111009
	tWarriorEquipPromot_Reward[3200784][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3200784][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3200784][1]["RewardItem"][2]["Id"] = 820074
	tWarriorEquipPromot_Reward[3200784][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3200784][1]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3200784][1]["RewardItem"][3]["Id"] = 3200822
	tWarriorEquipPromot_Reward[3200784][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3200784][1]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3200784][1]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3200784][1]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 极品15级战头	111009	2洞U龙	+8	加持255	神佑-7
	-- 七阶头部神魂[防暴]	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3200784][2] = {}
	tWarriorEquipPromot_Reward[3200784][2]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3200784][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3200784][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3200784][2]["DeleteItem"][1]["Id"] = 3200784
	tWarriorEquipPromot_Reward[3200784][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3200784][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3200784][2]["RewardItem"][1]["Id"] = 111009
	tWarriorEquipPromot_Reward[3200784][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3200784][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3200784][2]["RewardItem"][2]["Id"] = 820073
	tWarriorEquipPromot_Reward[3200784][2]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3200784][2]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3200784][2]["RewardItem"][3]["Id"] = 3200822
	tWarriorEquipPromot_Reward[3200784][2]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3200784][2]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3200784][2]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3200784][2]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 极品15级战衣	131009	2洞U龙	+8	加持255	神佑-7
	-- 7阶神魂赠	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3200785] = {}
	tWarriorEquipPromot_Reward[3200785]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3200785]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3200785]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3200785]["DeleteItem"][1]["Id"] = 3200785
	tWarriorEquipPromot_Reward[3200785]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3200785]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3200785]["RewardItem"][1]["Id"] = 131009
	tWarriorEquipPromot_Reward[3200785]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3200785]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3200785]["RewardItem"][2]["Id"] = 822071
	tWarriorEquipPromot_Reward[3200785]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3200785]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3200785]["RewardItem"][3]["Id"] = 3200822
	tWarriorEquipPromot_Reward[3200785]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3200785]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3200785]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3200785]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 极品15级盾牌	900009(40级)	2洞U龙	+8	加持255	神佑-7
	-- 7阶神魂赠	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3200786] = {}
	tWarriorEquipPromot_Reward[3200786]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3200786]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3200786]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3200786]["DeleteItem"][1]["Id"] = 3200786
	tWarriorEquipPromot_Reward[3200786]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3200786]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3200786]["RewardItem"][1]["Id"] = 900009
	tWarriorEquipPromot_Reward[3200786]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3200786]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3200786]["RewardItem"][2]["Id"] = 800422
	tWarriorEquipPromot_Reward[3200786]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3200786]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3200786]["RewardItem"][3]["Id"] = 3200822
	tWarriorEquipPromot_Reward[3200786]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3200786]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3200786]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3200786]["RewardItem"][4]["Attr"] = "0 3 3"

	-- 极品15级狂战武器		2洞U龙	+8	加持255	神佑-7
	-- 七阶拳套神魂[暴击]	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3200787] = {}
	tWarriorEquipPromot_Reward[3200787][1] = {}
	tWarriorEquipPromot_Reward[3200787][1]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3200787][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3200787][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3200787][1]["DeleteItem"][1]["Id"] = 3200787
	tWarriorEquipPromot_Reward[3200787][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3200787][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3200787][1]["RewardItem"][1]["Id"] = 624029
	tWarriorEquipPromot_Reward[3200787][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3200787][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3200787][1]["RewardItem"][2]["Id"] = 801216
	tWarriorEquipPromot_Reward[3200787][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3200787][1]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3200787][1]["RewardItem"][3]["Id"] = 3200822
	tWarriorEquipPromot_Reward[3200787][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3200787][1]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3200787][1]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3200787][1]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 极品15级狂战武器		2洞U龙	+8	加持255	神佑-7
	-- 七阶拳套神魂[粉碎]	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3200787][2] = {}
	tWarriorEquipPromot_Reward[3200787][2]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3200787][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3200787][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3200787][2]["DeleteItem"][1]["Id"] = 3200787
	tWarriorEquipPromot_Reward[3200787][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3200787][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3200787][2]["RewardItem"][1]["Id"] = 624029
	tWarriorEquipPromot_Reward[3200787][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3200787][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3200787][2]["RewardItem"][2]["Id"] = 801218
	tWarriorEquipPromot_Reward[3200787][2]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3200787][2]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3200787][2]["RewardItem"][3]["Id"] = 3200822
	tWarriorEquipPromot_Reward[3200787][2]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3200787][2]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3200787][2]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3200787][2]["RewardItem"][4]["Attr"] = "0 3 3"

	-- 龙珠卷
	tWarriorEquipPromot_Reward[3200822] = {}
	tWarriorEquipPromot_Reward[3200822]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3200822]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3200822]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3200822]["DeleteItem"][1]["Id"] = 3200822
	tWarriorEquipPromot_Reward[3200822]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3200822]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3200822]["RewardItem"][1]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3200822]["RewardItem"][1]["Attr"] = "0 10 3"

------------------------------------------------------------------------------铁扇门-----------------------------------------------------------
		-- +6系列
-- 极品100级铁扇门头	2洞U龙	+6	加持255	神佑-5	170089	6阶神魂赠	不变		10499

	tWarriorEquipPromot_Reward[3301750] = {}
	tWarriorEquipPromot_Reward[3301750]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3301750]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3301750]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3301750]["DeleteItem"][1]["Id"] = 3301750
	tWarriorEquipPromot_Reward[3301750]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3301750]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3301750]["RewardItem"][1]["Id"] = 170089
	tWarriorEquipPromot_Reward[3301750]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3301750]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3301750]["RewardItem"][2]["Id"] = 820071
	tWarriorEquipPromot_Reward[3301750]["RewardItem"][2]["Attr"] = "0 1 3"

-- 极品100级铁扇门衣	2洞U龙	+6	加持255	神佑-5	101089	6阶神魂赠	不变		10499

	tWarriorEquipPromot_Reward[3301751] = {}
	tWarriorEquipPromot_Reward[3301751]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3301751]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3301751]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3301751]["DeleteItem"][1]["Id"] = 3301751
	tWarriorEquipPromot_Reward[3301751]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3301751]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3301751]["RewardItem"][1]["Id"] = 101089
	tWarriorEquipPromot_Reward[3301751]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3301751]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3301751]["RewardItem"][2]["Id"] = 822053
	tWarriorEquipPromot_Reward[3301751]["RewardItem"][2]["Attr"] = "0 1 3"

-- 极品100级铁扇门武器	2洞U龙	+6	加持255	神佑-5	626199	6阶神魂赠	801306		6999

	tWarriorEquipPromot_Reward[3301752] = {}
	tWarriorEquipPromot_Reward[3301752]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3301752]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3301752]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3301752]["DeleteItem"][1]["Id"] = 3301752
	tWarriorEquipPromot_Reward[3301752]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3301752]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3301752]["RewardItem"][1]["Id"] = 626199
	tWarriorEquipPromot_Reward[3301752]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3301752]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3301752]["RewardItem"][2]["Id"] = 801306
	tWarriorEquipPromot_Reward[3301752]["RewardItem"][2]["Attr"] = "0 1 3"


	-- +8系列
	-- 极品130级铁扇门头	2洞U龙	+8	加持255	神佑-7	170209	7阶神魂赠	不变		23499

	-- 7阶神魂赠[坚固]
	tWarriorEquipPromot_Reward[3301753] = {}
	tWarriorEquipPromot_Reward[3301753][1] = {}
	tWarriorEquipPromot_Reward[3301753][1]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3301753][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3301753][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3301753][1]["DeleteItem"][1]["Id"] = 3301753
	tWarriorEquipPromot_Reward[3301753][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3301753][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3301753][1]["RewardItem"][1]["Id"] = 170209
	tWarriorEquipPromot_Reward[3301753][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3301753][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3301753][1]["RewardItem"][2]["Id"] = 820074
	tWarriorEquipPromot_Reward[3301753][1]["RewardItem"][2]["Attr"] = "0 1 3"

	-- 7阶神魂赠[防暴]
	tWarriorEquipPromot_Reward[3301753][2] = {}
	tWarriorEquipPromot_Reward[3301753][2]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3301753][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3301753][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3301753][2]["DeleteItem"][1]["Id"] = 3301753
	tWarriorEquipPromot_Reward[3301753][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3301753][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3301753][2]["RewardItem"][1]["Id"] = 170209
	tWarriorEquipPromot_Reward[3301753][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3301753][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3301753][2]["RewardItem"][2]["Id"] = 820073
	tWarriorEquipPromot_Reward[3301753][2]["RewardItem"][2]["Attr"] = "0 1 3"

	-- +8系列
-- 极品130级铁扇门衣	2洞U龙	+8	加持255	神佑-7	101209	7阶神魂赠	不变		23499
	tWarriorEquipPromot_Reward[3301754] = {}
	tWarriorEquipPromot_Reward[3301754]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3301754]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3301754]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3301754]["DeleteItem"][1]["Id"] = 3301754
	tWarriorEquipPromot_Reward[3301754]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3301754]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3301754]["RewardItem"][1]["Id"] = 101209
	tWarriorEquipPromot_Reward[3301754]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3301754]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3301754]["RewardItem"][2]["Id"] = 822071
	tWarriorEquipPromot_Reward[3301754]["RewardItem"][2]["Attr"] = "0 1 3"

	-- +8系列
-- 极品130级铁扇门武器	2洞U龙	+8	加持255	神佑-7	626339	7阶神魂赠	801308		21499

	tWarriorEquipPromot_Reward[3301755] = {}
	tWarriorEquipPromot_Reward[3301755]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3301755]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3301755]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3301755]["DeleteItem"][1]["Id"] = 3301755
	tWarriorEquipPromot_Reward[3301755]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3301755]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3301755]["RewardItem"][1]["Id"] = 626339
	tWarriorEquipPromot_Reward[3301755]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3301755]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3301755]["RewardItem"][2]["Id"] = 801308
	tWarriorEquipPromot_Reward[3301755]["RewardItem"][2]["Attr"] = "0 1 3"

	------------------------------------赠品战士装备----------------------------------------
-- 极品15级铁扇门头	2洞U龙	+6	加持255	神佑-5	170009	6阶神魂赠	1个赠品龙珠卷	20卷赠品流星卷	不变	8799

	tWarriorEquipPromot_Reward[3301756] = {}
	tWarriorEquipPromot_Reward[3301756]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3301756]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3301756]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3301756]["DeleteItem"][1]["Id"] = 3301756
	tWarriorEquipPromot_Reward[3301756]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3301756]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3301756]["RewardItem"][1]["Id"] = 170009
	tWarriorEquipPromot_Reward[3301756]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3301756]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3301756]["RewardItem"][2]["Id"] = 820071
	tWarriorEquipPromot_Reward[3301756]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3301756]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3301756]["RewardItem"][3]["Id"] = 3200822
	tWarriorEquipPromot_Reward[3301756]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3301756]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3301756]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3301756]["RewardItem"][4]["Attr"] = "0 3 3"
	
-- 极品15级铁扇门衣	2洞U龙	+6	加持255	神佑-5	101009	6阶神魂赠	1个赠品龙珠卷	20卷赠品流星卷	不变	8799

	tWarriorEquipPromot_Reward[3301757] = {}
	tWarriorEquipPromot_Reward[3301757]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3301757]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3301757]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3301757]["DeleteItem"][1]["Id"] = 3301757
	tWarriorEquipPromot_Reward[3301757]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3301757]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3301757]["RewardItem"][1]["Id"] = 101009
	tWarriorEquipPromot_Reward[3301757]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3301757]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3301757]["RewardItem"][2]["Id"] = 822053
	tWarriorEquipPromot_Reward[3301757]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3301757]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3301757]["RewardItem"][3]["Id"] = 3200822
	tWarriorEquipPromot_Reward[3301757]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3301757]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3301757]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3301757]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 极品15级铁扇门武器	2洞U龙	+6	加持255	神佑-5	626029	6阶神魂赠	1个赠品龙珠卷	20卷赠品流星卷	801306	8799
	tWarriorEquipPromot_Reward[3301758] = {}
	tWarriorEquipPromot_Reward[3301758]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3301758]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3301758]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3301758]["DeleteItem"][1]["Id"] = 3301758
	tWarriorEquipPromot_Reward[3301758]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3301758]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3301758]["RewardItem"][1]["Id"] = 626029
	tWarriorEquipPromot_Reward[3301758]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3301758]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3301758]["RewardItem"][2]["Id"] = 801306
	tWarriorEquipPromot_Reward[3301758]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3301758]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3301758]["RewardItem"][3]["Id"] = 3200822
	tWarriorEquipPromot_Reward[3301758]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3301758]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3301758]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3301758]["RewardItem"][4]["Attr"] = "0 3 3"

	
-- 极品15级铁扇门头	2洞U龙	+8	加持255	神佑-7	170009	7阶神魂赠	1个赠品龙珠卷	20卷赠品流星卷	不变	18499
	-- 七阶头部神魂[坚固]
	tWarriorEquipPromot_Reward[3301759] = {}
	tWarriorEquipPromot_Reward[3301759][1] = {}
	tWarriorEquipPromot_Reward[3301759][1]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3301759][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3301759][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3301759][1]["DeleteItem"][1]["Id"] = 3301759
	tWarriorEquipPromot_Reward[3301759][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3301759][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3301759][1]["RewardItem"][1]["Id"] = 170009
	tWarriorEquipPromot_Reward[3301759][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3301759][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3301759][1]["RewardItem"][2]["Id"] = 820074
	tWarriorEquipPromot_Reward[3301759][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3301759][1]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3301759][1]["RewardItem"][3]["Id"] = 3200822
	tWarriorEquipPromot_Reward[3301759][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3301759][1]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3301759][1]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3301759][1]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 七阶头部神魂[防暴]
	tWarriorEquipPromot_Reward[3301759][2] = {}
	tWarriorEquipPromot_Reward[3301759][2]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3301759][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3301759][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3301759][2]["DeleteItem"][1]["Id"] = 3301759
	tWarriorEquipPromot_Reward[3301759][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3301759][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3301759][2]["RewardItem"][1]["Id"] = 170009
	tWarriorEquipPromot_Reward[3301759][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3301759][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3301759][2]["RewardItem"][2]["Id"] = 820073
	tWarriorEquipPromot_Reward[3301759][2]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3301759][2]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3301759][2]["RewardItem"][3]["Id"] = 3200822
	tWarriorEquipPromot_Reward[3301759][2]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3301759][2]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3301759][2]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3301759][2]["RewardItem"][4]["Attr"] = "0 3 3"
	
-- 极品15级铁扇门衣	2洞U龙	+8	加持255	神佑-7	101009	7阶神魂赠	1个赠品龙珠卷	20卷赠品流星卷	不变	18499
	tWarriorEquipPromot_Reward[3301760] = {}
	tWarriorEquipPromot_Reward[3301760]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3301760]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3301760]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3301760]["DeleteItem"][1]["Id"] = 3301760
	tWarriorEquipPromot_Reward[3301760]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3301760]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3301760]["RewardItem"][1]["Id"] = 101009
	tWarriorEquipPromot_Reward[3301760]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3301760]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3301760]["RewardItem"][2]["Id"] = 822071
	tWarriorEquipPromot_Reward[3301760]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3301760]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3301760]["RewardItem"][3]["Id"] = 3200822
	tWarriorEquipPromot_Reward[3301760]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3301760]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3301760]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3301760]["RewardItem"][4]["Attr"] = "0 3 3"
	
-- 极品15级铁扇门武器	2洞U龙	+8	加持255	神佑-7	626029	7阶神魂赠	1个赠品龙珠卷	20卷赠品流星卷	801308	16499

	tWarriorEquipPromot_Reward[3301761] = {}
	tWarriorEquipPromot_Reward[3301761]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3301761]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3301761]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3301761]["DeleteItem"][1]["Id"] = 3301761
	tWarriorEquipPromot_Reward[3301761]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3301761]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3301761]["RewardItem"][1]["Id"] = 626029
	tWarriorEquipPromot_Reward[3301761]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3301761]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3301761]["RewardItem"][2]["Id"] = 801308
	tWarriorEquipPromot_Reward[3301761]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3301761]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3301761]["RewardItem"][3]["Id"] = 3200822
	tWarriorEquipPromot_Reward[3301761]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3301761]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3301761]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3301761]["RewardItem"][4]["Attr"] = "0 3 3"
	
------------------------------------------------------------海盗---------------------------------------------------------
--+8
--1件130级极品2洞7%神佑+255生命+8狂鲛之牙与1个赠品属性七阶刺剑神魂
	tWarriorEquipPromot_Reward[3307640] = {}
	tWarriorEquipPromot_Reward[3307640]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3307640]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3307640]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3307640]["DeleteItem"][1]["Id"] = 3307640
	tWarriorEquipPromot_Reward[3307640]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3307640]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3307640]["RewardItem"][1]["Id"] = 611339
	tWarriorEquipPromot_Reward[3307640]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3307640]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3307640]["RewardItem"][2]["Id"] = 800811
	tWarriorEquipPromot_Reward[3307640]["RewardItem"][2]["Attr"] = "0 1 3"
	
--1件130级极品2洞7%神佑+255生命+8魔龙撼海裳与1个赠品属性七阶衣服神魂
	tWarriorEquipPromot_Reward[3307641] = {}
	tWarriorEquipPromot_Reward[3307641]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3307641]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3307641]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3307641]["DeleteItem"][1]["Id"] = 3307641
	tWarriorEquipPromot_Reward[3307641]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3307641]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3307641]["RewardItem"][1]["Id"] = 139209
	tWarriorEquipPromot_Reward[3307641]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3307641]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3307641]["RewardItem"][2]["Id"] = 822071
	tWarriorEquipPromot_Reward[3307641]["RewardItem"][2]["Attr"] = "0 1 3"
	
	--1件130级极品2洞7%神佑+255生命+8逆羽之铳与1个赠品属性七阶火枪神魂
	tWarriorEquipPromot_Reward[3307642] = {}
	tWarriorEquipPromot_Reward[3307642]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3307642]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3307642]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3307642]["DeleteItem"][1]["Id"] = 3307642
	tWarriorEquipPromot_Reward[3307642]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3307642]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3307642]["RewardItem"][1]["Id"] = 612339
	tWarriorEquipPromot_Reward[3307642]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3307642]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3307642]["RewardItem"][2]["Id"] = 800810
	tWarriorEquipPromot_Reward[3307642]["RewardItem"][2]["Attr"] = "0 1 3"
	
--1件130级极品2洞7%神佑+255生命+8翻江倒海帽，更可在2个不同的赠品属性七阶头部神魂中任选其一
-- 七阶头部神魂[坚固]
	tWarriorEquipPromot_Reward[3307643] = {}
	tWarriorEquipPromot_Reward[3307643][1] = {}
	tWarriorEquipPromot_Reward[3307643][1]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3307643][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3307643][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3307643][1]["DeleteItem"][1]["Id"] = 3307643
	tWarriorEquipPromot_Reward[3307643][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3307643][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3307643][1]["RewardItem"][1]["Id"] = 144209
	tWarriorEquipPromot_Reward[3307643][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3307643][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3307643][1]["RewardItem"][2]["Id"] = 820074
	tWarriorEquipPromot_Reward[3307643][1]["RewardItem"][2]["Attr"] = "0 1 3"

-- 七阶头部神魂[防暴]
	tWarriorEquipPromot_Reward[3307643][2] = {}
	tWarriorEquipPromot_Reward[3307643][2]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3307643][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3307643][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3307643][2]["DeleteItem"][1]["Id"] = 3307643
	tWarriorEquipPromot_Reward[3307643][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3307643][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3307643][2]["RewardItem"][1]["Id"] = 144209
	tWarriorEquipPromot_Reward[3307643][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3307643][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3307643][2]["RewardItem"][2]["Id"] = 820073
	tWarriorEquipPromot_Reward[3307643][2]["RewardItem"][2]["Attr"] = "0 1 3"
	
	--+8赠
--1件赠品属性130级极品2洞7%神佑+255生命+8狂鲛之牙与1个赠品属性七阶刺剑神魂
	tWarriorEquipPromot_Reward[3307644] = {}
	tWarriorEquipPromot_Reward[3307644]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3307644]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3307644]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3307644]["DeleteItem"][1]["Id"] = 3307644
	tWarriorEquipPromot_Reward[3307644]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3307644]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3307644]["RewardItem"][1]["Id"] = 611339
	tWarriorEquipPromot_Reward[3307644]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3307644]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3307644]["RewardItem"][2]["Id"] = 800811
	tWarriorEquipPromot_Reward[3307644]["RewardItem"][2]["Attr"] = "0 1 3"
	
--1件赠品属性130级极品2洞7%神佑+255生命+8魔龙撼海裳与1个赠品属性七阶衣服神魂
	tWarriorEquipPromot_Reward[3307645] = {}
	tWarriorEquipPromot_Reward[3307645]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3307645]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3307645]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3307645]["DeleteItem"][1]["Id"] = 3307645
	tWarriorEquipPromot_Reward[3307645]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3307645]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3307645]["RewardItem"][1]["Id"] = 139209
	tWarriorEquipPromot_Reward[3307645]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3307645]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3307645]["RewardItem"][2]["Id"] = 822071
	tWarriorEquipPromot_Reward[3307645]["RewardItem"][2]["Attr"] = "0 1 3"
	
--1件赠品属性130级极品2洞7%神佑+255生命+8逆羽之铳与1个赠品属性七阶火枪神魂
	tWarriorEquipPromot_Reward[3307646] = {}
	tWarriorEquipPromot_Reward[3307646]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3307646]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3307646]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3307646]["DeleteItem"][1]["Id"] = 3307646
	tWarriorEquipPromot_Reward[3307646]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3307646]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3307646]["RewardItem"][1]["Id"] = 612339
	tWarriorEquipPromot_Reward[3307646]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3307646]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3307646]["RewardItem"][2]["Id"] = 800810
	tWarriorEquipPromot_Reward[3307646]["RewardItem"][2]["Attr"] = "0 1 3"
	
--1件赠品属性130级极品2洞7%神佑+255生命+8翻江倒海帽，更可在2个不同的赠品属性七阶头部神魂中任选其一
-- 七阶头部神魂[坚固]
	tWarriorEquipPromot_Reward[3307647] = {}
	tWarriorEquipPromot_Reward[3307647][1] = {}
	tWarriorEquipPromot_Reward[3307647][1]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3307647][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3307647][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3307647][1]["DeleteItem"][1]["Id"] = 3307647
	tWarriorEquipPromot_Reward[3307647][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3307647][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3307647][1]["RewardItem"][1]["Id"] = 144209
	tWarriorEquipPromot_Reward[3307647][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3307647][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3307647][1]["RewardItem"][2]["Id"] = 820074
	tWarriorEquipPromot_Reward[3307647][1]["RewardItem"][2]["Attr"] = "0 1 3"

-- 七阶头部神魂[防暴]
	tWarriorEquipPromot_Reward[3307647][2] = {}
	tWarriorEquipPromot_Reward[3307647][2]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3307647][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3307647][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3307647][2]["DeleteItem"][1]["Id"] = 3307647
	tWarriorEquipPromot_Reward[3307647][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3307647][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3307647][2]["RewardItem"][1]["Id"] = 144209
	tWarriorEquipPromot_Reward[3307647][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3307647][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3307647][2]["RewardItem"][2]["Id"] = 820073
	tWarriorEquipPromot_Reward[3307647][2]["RewardItem"][2]["Attr"] = "0 1 3"
	
	--+6
--1件100级极品2洞5%神佑+255生命+6血狱之剑与1个赠品属性六阶刺剑神魂
	tWarriorEquipPromot_Reward[3307648] = {}
	tWarriorEquipPromot_Reward[3307648]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3307648]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3307648]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3307648]["DeleteItem"][1]["Id"] = 3307648
	tWarriorEquipPromot_Reward[3307648]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3307648]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3307648]["RewardItem"][1]["Id"] = 611199
	tWarriorEquipPromot_Reward[3307648]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3307648]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3307648]["RewardItem"][2]["Id"] = 800809
	tWarriorEquipPromot_Reward[3307648]["RewardItem"][2]["Attr"] = "0 1 3"
	
--1件100级极品2洞5%神佑+255生命+6蟠龙出渊裳与1个赠品属性六阶衣服神魂
	tWarriorEquipPromot_Reward[3307649] = {}
	tWarriorEquipPromot_Reward[3307649]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3307649]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3307649]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3307649]["DeleteItem"][1]["Id"] = 3307649
	tWarriorEquipPromot_Reward[3307649]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3307649]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3307649]["RewardItem"][1]["Id"] = 139089
	tWarriorEquipPromot_Reward[3307649]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3307649]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3307649]["RewardItem"][2]["Id"] = 822053
	tWarriorEquipPromot_Reward[3307649]["RewardItem"][2]["Attr"] = "0 1 3"
	
--1件100级极品2洞5%神佑+255生命+6恸哭火枪与1个赠品属性六阶火枪神魂
	tWarriorEquipPromot_Reward[3307650] = {}
	tWarriorEquipPromot_Reward[3307650]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3307650]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3307650]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3307650]["DeleteItem"][1]["Id"] = 3307650
	tWarriorEquipPromot_Reward[3307650]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3307650]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3307650]["RewardItem"][1]["Id"] = 612199
	tWarriorEquipPromot_Reward[3307650]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3307650]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3307650]["RewardItem"][2]["Id"] = 800804
	tWarriorEquipPromot_Reward[3307650]["RewardItem"][2]["Attr"] = "0 1 3"
	
--1件100级极品2洞5%神佑+255生命+6海清河晏帽，更可在2个不同的赠品属性六阶头部神魂中任选其一
-- 六阶头部神魂[物理]
	tWarriorEquipPromot_Reward[3307651] = {}
	tWarriorEquipPromot_Reward[3307651][1] = {}
	tWarriorEquipPromot_Reward[3307651][1]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3307651][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3307651][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3307651][1]["DeleteItem"][1]["Id"] = 3307651
	tWarriorEquipPromot_Reward[3307651][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3307651][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3307651][1]["RewardItem"][1]["Id"] = 144099
	tWarriorEquipPromot_Reward[3307651][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3307651][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3307651][1]["RewardItem"][2]["Id"] = 820071
	tWarriorEquipPromot_Reward[3307651][1]["RewardItem"][2]["Attr"] = "0 1 3"

-- 六阶头部神魂[法系]
	tWarriorEquipPromot_Reward[3307651][2] = {}
	tWarriorEquipPromot_Reward[3307651][2]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3307651][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3307651][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3307651][2]["DeleteItem"][1]["Id"] = 3307651
	tWarriorEquipPromot_Reward[3307651][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3307651][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3307651][2]["RewardItem"][1]["Id"] = 144099
	tWarriorEquipPromot_Reward[3307651][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3307651][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3307651][2]["RewardItem"][2]["Id"] = 820072
	tWarriorEquipPromot_Reward[3307651][2]["RewardItem"][2]["Attr"] = "0 1 3"
	
	--+6赠
--1件赠品属性80级极品2洞5%神佑+255生命+6飓风长剑与1个赠品属性六阶刺剑神魂
	tWarriorEquipPromot_Reward[3307652] = {}
	tWarriorEquipPromot_Reward[3307652]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3307652]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3307652]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3307652]["DeleteItem"][1]["Id"] = 3307652
	tWarriorEquipPromot_Reward[3307652]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3307652]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3307652]["RewardItem"][1]["Id"] = 611159
	tWarriorEquipPromot_Reward[3307652]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3307652]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3307652]["RewardItem"][2]["Id"] = 800809
	tWarriorEquipPromot_Reward[3307652]["RewardItem"][2]["Attr"] = "0 1 3"
	
--1件赠品属性80级极品2洞5%神佑+255生命+6平海裳与1个赠品属性六阶衣服神魂
	tWarriorEquipPromot_Reward[3307653] = {}
	tWarriorEquipPromot_Reward[3307653]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3307653]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3307653]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3307653]["DeleteItem"][1]["Id"] = 3307653
	tWarriorEquipPromot_Reward[3307653]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3307653]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3307653]["RewardItem"][1]["Id"] = 139079
	tWarriorEquipPromot_Reward[3307653]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3307653]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3307653]["RewardItem"][2]["Id"] = 822053
	tWarriorEquipPromot_Reward[3307653]["RewardItem"][2]["Attr"] = "0 1 3"
	
--1件赠品属性80级极品2洞5%神佑+255生命+6嵌砂小径枪与1个赠品属性六阶火枪神魂
	tWarriorEquipPromot_Reward[3307654] = {}
	tWarriorEquipPromot_Reward[3307654]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3307654]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3307654]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3307654]["DeleteItem"][1]["Id"] = 3307654
	tWarriorEquipPromot_Reward[3307654]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3307654]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3307654]["RewardItem"][1]["Id"] = 612159
	tWarriorEquipPromot_Reward[3307654]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3307654]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3307654]["RewardItem"][2]["Id"] = 800804
	tWarriorEquipPromot_Reward[3307654]["RewardItem"][2]["Attr"] = "0 1 3"
	
--1件赠品属性80级极品2洞5%神佑+255生命+6海魂帽，更可在2个不同的赠品属性六阶头部神魂中任选其一
-- 六阶头部神魂[物理]
	tWarriorEquipPromot_Reward[3307655] = {}
	tWarriorEquipPromot_Reward[3307655][1] = {}
	tWarriorEquipPromot_Reward[3307655][1]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3307655][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3307655][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3307655][1]["DeleteItem"][1]["Id"] = 3307655
	tWarriorEquipPromot_Reward[3307655][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3307655][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3307655][1]["RewardItem"][1]["Id"] = 144079
	tWarriorEquipPromot_Reward[3307655][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3307655][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3307655][1]["RewardItem"][2]["Id"] = 820071
	tWarriorEquipPromot_Reward[3307655][1]["RewardItem"][2]["Attr"] = "0 1 3"

-- 六阶头部神魂[法系]
	tWarriorEquipPromot_Reward[3307655][2] = {}
	tWarriorEquipPromot_Reward[3307655][2]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3307655][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3307655][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3307655][2]["DeleteItem"][1]["Id"] = 3307655
	tWarriorEquipPromot_Reward[3307655][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3307655][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3307655][2]["RewardItem"][1]["Id"] = 144079
	tWarriorEquipPromot_Reward[3307655][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3307655][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3307655][2]["RewardItem"][2]["Id"] = 820072
	tWarriorEquipPromot_Reward[3307655][2]["RewardItem"][2]["Attr"] = "0 1 3"
	--史诗武器
	tWarriorEquipPromot_Reward[3307656] = {}
	tWarriorEquipPromot_Reward[3307656]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3307656]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3307656]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3307656]["DeleteItem"][1]["Id"] = 3307656
	tWarriorEquipPromot_Reward[3307656]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3307656]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3307656]["RewardItem"][1]["Id"] = 671139
	tWarriorEquipPromot_Reward[3307656]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3307656]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3307656]["RewardItem"][2]["Id"] = 800809
	tWarriorEquipPromot_Reward[3307656]["RewardItem"][2]["Attr"] = "0 1 3"
	
	tWarriorEquipPromot_Reward[3307657] = {}
	tWarriorEquipPromot_Reward[3307657]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3307657]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3307657]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3307657]["DeleteItem"][1]["Id"] = 3307657
	tWarriorEquipPromot_Reward[3307657]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3307657]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3307657]["RewardItem"][1]["Id"] = 670139
	tWarriorEquipPromot_Reward[3307657]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3307657]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3307657]["RewardItem"][2]["Id"] = 800804
	tWarriorEquipPromot_Reward[3307657]["RewardItem"][2]["Attr"] = "0 1 3"
	
	tWarriorEquipPromot_Reward[3307658] = {}
	tWarriorEquipPromot_Reward[3307658]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3307658]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3307658]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3307658]["DeleteItem"][1]["Id"] = 3307658
	tWarriorEquipPromot_Reward[3307658]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3307658]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3307658]["RewardItem"][1]["Id"] = 670139
	tWarriorEquipPromot_Reward[3307658]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3307658]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3307658]["RewardItem"][2]["Id"] = 671139
	tWarriorEquipPromot_Reward[3307658]["RewardItem"][2]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3307658]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3307658]["RewardItem"][3]["Id"] = 800809
	tWarriorEquipPromot_Reward[3307658]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3307658]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3307658]["RewardItem"][4]["Id"] = 800804
	tWarriorEquipPromot_Reward[3307658]["RewardItem"][4]["Attr"] = "0 1 3"
	
	
	tWarriorEquipPromot_Reward[3307659] = {}
	tWarriorEquipPromot_Reward[3307659]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3307659]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3307659]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3307659]["DeleteItem"][1]["Id"] = 3307659
	tWarriorEquipPromot_Reward[3307659]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3307659]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3307659]["RewardItem"][1]["Id"] = 3307449
	tWarriorEquipPromot_Reward[3307659]["RewardItem"][1]["Attr"] = "0 1"
	
	tWarriorEquipPromot_Reward[3307660] = {}
	tWarriorEquipPromot_Reward[3307660]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3307660]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3307660]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3307660]["DeleteItem"][1]["Id"] = 3307660
	tWarriorEquipPromot_Reward[3307660]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3307660]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3307660]["RewardItem"][1]["Id"] = 3307449
	tWarriorEquipPromot_Reward[3307660]["RewardItem"][1]["Attr"] = "0 2"
------------------------------------------------------------雷神---------------------------------------------------------
--+8
--1件130级极品2洞7%神佑+255生命+8雷暴战锤与1个赠品属性七阶战锤神魂二选一
	tWarriorEquipPromot_Reward[3319183] = {}
	tWarriorEquipPromot_Reward[3319183][1] = {}
	tWarriorEquipPromot_Reward[3319183][1]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3319183][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3319183][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3319183][1]["DeleteItem"][1]["Id"] = 3319183
	tWarriorEquipPromot_Reward[3319183][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3319183][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3319183][1]["RewardItem"][1]["Id"] = 681339
	tWarriorEquipPromot_Reward[3319183][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3319183][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3319183][1]["RewardItem"][2]["Id"] = 827010
	tWarriorEquipPromot_Reward[3319183][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3319183][2] = {}
	tWarriorEquipPromot_Reward[3319183][2]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3319183][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3319183][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3319183][2]["DeleteItem"][1]["Id"] = 3319183
	tWarriorEquipPromot_Reward[3319183][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3319183][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3319183][2]["RewardItem"][1]["Id"] = 681339
	tWarriorEquipPromot_Reward[3319183][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3319183][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3319183][2]["RewardItem"][2]["Id"] = 827012
	tWarriorEquipPromot_Reward[3319183][2]["RewardItem"][2]["Attr"] = "0 1 3"
	
--1件130级极品2洞7%神佑+255生命+8惊雷战甲与1个赠品属性七阶衣服神魂
	tWarriorEquipPromot_Reward[3319184] = {}
	tWarriorEquipPromot_Reward[3319184]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3319184]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3319184]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3319184]["DeleteItem"][1]["Id"] = 3319184
	tWarriorEquipPromot_Reward[3319184]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3319184]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3319184]["RewardItem"][1]["Id"] = 102209
	tWarriorEquipPromot_Reward[3319184]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3319184]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3319184]["RewardItem"][2]["Id"] = 822071
	tWarriorEquipPromot_Reward[3319184]["RewardItem"][2]["Attr"] = "0 1 3"
	
	--1件130级极品2洞7%神佑+255生命+8狂风战斧与1个赠品属性七阶战斧神魂二选一
	tWarriorEquipPromot_Reward[3319185] = {}
	tWarriorEquipPromot_Reward[3319185][1] = {}
	tWarriorEquipPromot_Reward[3319185][1]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3319185][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3319185][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3319185][1]["DeleteItem"][1]["Id"] = 3319185
	tWarriorEquipPromot_Reward[3319185][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3319185][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3319185][1]["RewardItem"][1]["Id"] = 680339
	tWarriorEquipPromot_Reward[3319185][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3319185][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3319185][1]["RewardItem"][2]["Id"] = 827011
	tWarriorEquipPromot_Reward[3319185][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3319185][2] = {}
	tWarriorEquipPromot_Reward[3319185][2]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3319185][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3319185][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3319185][2]["DeleteItem"][1]["Id"] = 3319185
	tWarriorEquipPromot_Reward[3319185][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3319185][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3319185][2]["RewardItem"][1]["Id"] = 680339
	tWarriorEquipPromot_Reward[3319185][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3319185][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3319185][2]["RewardItem"][2]["Id"] = 827013
	tWarriorEquipPromot_Reward[3319185][2]["RewardItem"][2]["Attr"] = "0 1 3"
	
--1件130级极品2洞7%神佑+255生命+8雷威战盔，更可在2个不同的赠品属性七阶头部神魂中任选其一
-- 七阶头部神魂[坚固]
	tWarriorEquipPromot_Reward[3319186] = {}
	tWarriorEquipPromot_Reward[3319186][1] = {}
	tWarriorEquipPromot_Reward[3319186][1]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3319186][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3319186][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3319186][1]["DeleteItem"][1]["Id"] = 3319186
	tWarriorEquipPromot_Reward[3319186][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3319186][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3319186][1]["RewardItem"][1]["Id"] = 146209
	tWarriorEquipPromot_Reward[3319186][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3319186][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3319186][1]["RewardItem"][2]["Id"] = 820074
	tWarriorEquipPromot_Reward[3319186][1]["RewardItem"][2]["Attr"] = "0 1 3"

-- 七阶头部神魂[防暴]
	tWarriorEquipPromot_Reward[3319186][2] = {}
	tWarriorEquipPromot_Reward[3319186][2]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3319186][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3319186][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3319186][2]["DeleteItem"][1]["Id"] = 3319186
	tWarriorEquipPromot_Reward[3319186][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3319186][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3319186][2]["RewardItem"][1]["Id"] = 146209
	tWarriorEquipPromot_Reward[3319186][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3319186][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3319186][2]["RewardItem"][2]["Id"] = 820073
	tWarriorEquipPromot_Reward[3319186][2]["RewardItem"][2]["Attr"] = "0 1 3"
	
	--+8赠
--1件赠品属性130级极品2洞7%神佑+255生命+8雷暴战锤与1个赠品属性七阶战锤神魂二选一
	tWarriorEquipPromot_Reward[3319187] = {}
	tWarriorEquipPromot_Reward[3319187][1] = {}
	tWarriorEquipPromot_Reward[3319187][1]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3319187][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3319187][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3319187][1]["DeleteItem"][1]["Id"] = 3319187
	tWarriorEquipPromot_Reward[3319187][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3319187][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3319187][1]["RewardItem"][1]["Id"] = 681339
	tWarriorEquipPromot_Reward[3319187][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3319187][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3319187][1]["RewardItem"][2]["Id"] = 827010
	tWarriorEquipPromot_Reward[3319187][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3319187][2] = {}
	tWarriorEquipPromot_Reward[3319187][2]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3319187][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3319187][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3319187][2]["DeleteItem"][1]["Id"] = 3319187
	tWarriorEquipPromot_Reward[3319187][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3319187][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3319187][2]["RewardItem"][1]["Id"] = 681339
	tWarriorEquipPromot_Reward[3319187][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3319187][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3319187][2]["RewardItem"][2]["Id"] = 827012
	tWarriorEquipPromot_Reward[3319187][2]["RewardItem"][2]["Attr"] = "0 1 3"
	
--1件赠品属性130级极品2洞7%神佑+255生命+8惊雷战甲与1个赠品属性七阶衣服神魂
	tWarriorEquipPromot_Reward[3319188] = {}
	tWarriorEquipPromot_Reward[3319188]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3319188]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3319188]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3319188]["DeleteItem"][1]["Id"] = 3319188
	tWarriorEquipPromot_Reward[3319188]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3319188]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3319188]["RewardItem"][1]["Id"] = 102209
	tWarriorEquipPromot_Reward[3319188]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3319188]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3319188]["RewardItem"][2]["Id"] = 822071
	tWarriorEquipPromot_Reward[3319188]["RewardItem"][2]["Attr"] = "0 1 3"
	
--1件赠品属性130级极品2洞7%神佑+255生命+8狂风战斧与1个赠品属性七阶战斧神魂二选一
	tWarriorEquipPromot_Reward[3319189] = {}
	tWarriorEquipPromot_Reward[3319189][1] = {}
	tWarriorEquipPromot_Reward[3319189][1]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3319189][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3319189][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3319189][1]["DeleteItem"][1]["Id"] = 3319189
	tWarriorEquipPromot_Reward[3319189][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3319189][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3319189][1]["RewardItem"][1]["Id"] = 680339
	tWarriorEquipPromot_Reward[3319189][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3319189][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3319189][1]["RewardItem"][2]["Id"] = 827011
	tWarriorEquipPromot_Reward[3319189][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3319189][2] = {}
	tWarriorEquipPromot_Reward[3319189][2]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3319189][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3319189][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3319189][2]["DeleteItem"][1]["Id"] = 3319189
	tWarriorEquipPromot_Reward[3319189][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3319189][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3319189][2]["RewardItem"][1]["Id"] = 680339
	tWarriorEquipPromot_Reward[3319189][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3319189][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3319189][2]["RewardItem"][2]["Id"] = 827013
	tWarriorEquipPromot_Reward[3319189][2]["RewardItem"][2]["Attr"] = "0 1 3"
	
--1件赠品属性130级极品2洞7%神佑+255生命+8雷威战盔，更可在2个不同的赠品属性七阶头部神魂中任选其一
-- 七阶头部神魂[坚固]
	tWarriorEquipPromot_Reward[3319190] = {}
	tWarriorEquipPromot_Reward[3319190][1] = {}
	tWarriorEquipPromot_Reward[3319190][1]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3319190][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3319190][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3319190][1]["DeleteItem"][1]["Id"] = 3319190
	tWarriorEquipPromot_Reward[3319190][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3319190][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3319190][1]["RewardItem"][1]["Id"] = 146209
	tWarriorEquipPromot_Reward[3319190][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3319190][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3319190][1]["RewardItem"][2]["Id"] = 820074
	tWarriorEquipPromot_Reward[3319190][1]["RewardItem"][2]["Attr"] = "0 1 3"
-- 七阶头部神魂[防暴]
	tWarriorEquipPromot_Reward[3319190][2] = {}
	tWarriorEquipPromot_Reward[3319190][2]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3319190][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3319190][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3319190][2]["DeleteItem"][1]["Id"] = 3319190
	tWarriorEquipPromot_Reward[3319190][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3319190][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3319190][2]["RewardItem"][1]["Id"] = 146209
	tWarriorEquipPromot_Reward[3319190][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3319190][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3319190][2]["RewardItem"][2]["Id"] = 820073
	tWarriorEquipPromot_Reward[3319190][2]["RewardItem"][2]["Attr"] = "0 1 3"
	
	--+6
--1件100级极品2洞5%神佑+255生命+6雷光战锤与1个赠品属性六阶战锤神魂二选一
	tWarriorEquipPromot_Reward[3319191] = {}
	tWarriorEquipPromot_Reward[3319191][1] = {}
	tWarriorEquipPromot_Reward[3319191][1]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3319191][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3319191][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3319191][1]["DeleteItem"][1]["Id"] = 3319191
	tWarriorEquipPromot_Reward[3319191][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3319191][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3319191][1]["RewardItem"][1]["Id"] = 681199
	tWarriorEquipPromot_Reward[3319191][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3319191][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3319191][1]["RewardItem"][2]["Id"] = 827006
	tWarriorEquipPromot_Reward[3319191][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3319191][2] = {}
	tWarriorEquipPromot_Reward[3319191][2]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3319191][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3319191][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3319191][2]["DeleteItem"][1]["Id"] = 3319191
	tWarriorEquipPromot_Reward[3319191][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3319191][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3319191][2]["RewardItem"][1]["Id"] = 681199
	tWarriorEquipPromot_Reward[3319191][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3319191][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3319191][2]["RewardItem"][2]["Id"] = 827008
	tWarriorEquipPromot_Reward[3319191][2]["RewardItem"][2]["Attr"] = "0 1 3"
	
--1件100级极品2洞5%神佑+255生命+6蛮雷战甲与1个赠品属性六阶衣服神魂
	tWarriorEquipPromot_Reward[3319192] = {}
	tWarriorEquipPromot_Reward[3319192]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3319192]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3319192]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3319192]["DeleteItem"][1]["Id"] = 3319192
	tWarriorEquipPromot_Reward[3319192]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3319192]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3319192]["RewardItem"][1]["Id"] = 102089
	tWarriorEquipPromot_Reward[3319192]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3319192]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3319192]["RewardItem"][2]["Id"] = 822053
	tWarriorEquipPromot_Reward[3319192]["RewardItem"][2]["Attr"] = "0 1 3"
	
--1件100级极品2洞5%神佑+255生命+6凛风战斧与1个赠品属性六阶战斧神魂二选一
	tWarriorEquipPromot_Reward[3319193] = {}
	tWarriorEquipPromot_Reward[3319193][1] = {}
	tWarriorEquipPromot_Reward[3319193][1]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3319193][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3319193][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3319193][1]["DeleteItem"][1]["Id"] = 3319193
	tWarriorEquipPromot_Reward[3319193][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3319193][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3319193][1]["RewardItem"][1]["Id"] = 680199
	tWarriorEquipPromot_Reward[3319193][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3319193][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3319193][1]["RewardItem"][2]["Id"] = 827007
	tWarriorEquipPromot_Reward[3319193][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3319193][2] = {}
	tWarriorEquipPromot_Reward[3319193][2]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3319193][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3319193][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3319193][2]["DeleteItem"][1]["Id"] = 3319193
	tWarriorEquipPromot_Reward[3319193][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3319193][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3319193][2]["RewardItem"][1]["Id"] = 680199
	tWarriorEquipPromot_Reward[3319193][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3319193][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3319193][2]["RewardItem"][2]["Id"] = 827009
	tWarriorEquipPromot_Reward[3319193][2]["RewardItem"][2]["Attr"] = "0 1 3"
	
--1件100级极品2洞5%神佑+255生命+6雷鸣战盔，更可在2个不同的赠品属性六阶头部神魂中任选其一
-- 六阶头部神魂[物理]
	tWarriorEquipPromot_Reward[3319194] = {}
	tWarriorEquipPromot_Reward[3319194][1] = {}
	tWarriorEquipPromot_Reward[3319194][1]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3319194][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3319194][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3319194][1]["DeleteItem"][1]["Id"] = 3319194
	tWarriorEquipPromot_Reward[3319194][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3319194][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3319194][1]["RewardItem"][1]["Id"] = 146099
	tWarriorEquipPromot_Reward[3319194][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3319194][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3319194][1]["RewardItem"][2]["Id"] = 820071
	tWarriorEquipPromot_Reward[3319194][1]["RewardItem"][2]["Attr"] = "0 1 3"

-- 六阶头部神魂[法系]
	tWarriorEquipPromot_Reward[3319194][2] = {}
	tWarriorEquipPromot_Reward[3319194][2]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3319194][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3319194][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3319194][2]["DeleteItem"][1]["Id"] = 3319194
	tWarriorEquipPromot_Reward[3319194][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3319194][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3319194][2]["RewardItem"][1]["Id"] = 146099
	tWarriorEquipPromot_Reward[3319194][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3319194][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3319194][2]["RewardItem"][2]["Id"] = 820072
	tWarriorEquipPromot_Reward[3319194][2]["RewardItem"][2]["Attr"] = "0 1 3"
	
	--+6赠
--1件赠品属性80级极品2洞5%神佑+255生命+6雷光战锤与1个赠品属性六阶战锤神魂二选一
	tWarriorEquipPromot_Reward[3319195] = {}
	tWarriorEquipPromot_Reward[3319195][1] = {}
	tWarriorEquipPromot_Reward[3319195][1]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3319195][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3319195][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3319195][1]["DeleteItem"][1]["Id"] = 3319195
	tWarriorEquipPromot_Reward[3319195][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3319195][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3319195][1]["RewardItem"][1]["Id"] = 681159
	tWarriorEquipPromot_Reward[3319195][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3319195][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3319195][1]["RewardItem"][2]["Id"] = 827006
	tWarriorEquipPromot_Reward[3319195][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3319195][2] = {}
	tWarriorEquipPromot_Reward[3319195][2]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3319195][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3319195][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3319195][2]["DeleteItem"][1]["Id"] = 3319195
	tWarriorEquipPromot_Reward[3319195][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3319195][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3319195][2]["RewardItem"][1]["Id"] = 681159
	tWarriorEquipPromot_Reward[3319195][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3319195][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3319195][2]["RewardItem"][2]["Id"] = 827008
	tWarriorEquipPromot_Reward[3319195][2]["RewardItem"][2]["Attr"] = "0 1 3"
	
--1件赠品属性80级极品2洞5%神佑+255生命+6蛮雷战甲与1个赠品属性六阶衣服神魂
	tWarriorEquipPromot_Reward[3319196] = {}
	tWarriorEquipPromot_Reward[3319196]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3319196]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3319196]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3319196]["DeleteItem"][1]["Id"] = 3319196
	tWarriorEquipPromot_Reward[3319196]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3319196]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3319196]["RewardItem"][1]["Id"] = 102079
	tWarriorEquipPromot_Reward[3319196]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3319196]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3319196]["RewardItem"][2]["Id"] = 822053
	tWarriorEquipPromot_Reward[3319196]["RewardItem"][2]["Attr"] = "0 1 3"
	
--1件赠品属性80级极品2洞5%神佑+255生命+6凛风战斧与1个赠品属性六阶战斧神魂二选一
	tWarriorEquipPromot_Reward[3319197] = {}
	tWarriorEquipPromot_Reward[3319197][1] = {}
	tWarriorEquipPromot_Reward[3319197][1]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3319197][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3319197][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3319197][1]["DeleteItem"][1]["Id"] = 3319197
	tWarriorEquipPromot_Reward[3319197][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3319197][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3319197][1]["RewardItem"][1]["Id"] = 680159
	tWarriorEquipPromot_Reward[3319197][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3319197][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3319197][1]["RewardItem"][2]["Id"] = 827007
	tWarriorEquipPromot_Reward[3319197][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3319197][2] = {}
	tWarriorEquipPromot_Reward[3319197][2]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3319197][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3319197][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3319197][2]["DeleteItem"][1]["Id"] = 3319197
	tWarriorEquipPromot_Reward[3319197][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3319197][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3319197][2]["RewardItem"][1]["Id"] = 680159
	tWarriorEquipPromot_Reward[3319197][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3319197][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3319197][2]["RewardItem"][2]["Id"] = 827009
	tWarriorEquipPromot_Reward[3319197][2]["RewardItem"][2]["Attr"] = "0 1 3"
	
--1件赠品属性80级极品2洞5%神佑+255生命+6雷鸣战盔，更可在2个不同的赠品属性六阶头部神魂中任选其一
-- 六阶头部神魂[物理]
	tWarriorEquipPromot_Reward[3319198] = {}
	tWarriorEquipPromot_Reward[3319198][1] = {}
	tWarriorEquipPromot_Reward[3319198][1]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3319198][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3319198][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3319198][1]["DeleteItem"][1]["Id"] = 3319198
	tWarriorEquipPromot_Reward[3319198][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3319198][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3319198][1]["RewardItem"][1]["Id"] = 146079
	tWarriorEquipPromot_Reward[3319198][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3319198][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3319198][1]["RewardItem"][2]["Id"] = 820071
	tWarriorEquipPromot_Reward[3319198][1]["RewardItem"][2]["Attr"] = "0 1 3"

-- 六阶头部神魂[法系]
	tWarriorEquipPromot_Reward[3319198][2] = {}
	tWarriorEquipPromot_Reward[3319198][2]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3319198][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3319198][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3319198][2]["DeleteItem"][1]["Id"] = 3319198
	tWarriorEquipPromot_Reward[3319198][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3319198][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3319198][2]["RewardItem"][1]["Id"] = 146079
	tWarriorEquipPromot_Reward[3319198][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3319198][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3319198][2]["RewardItem"][2]["Id"] = 820072
	tWarriorEquipPromot_Reward[3319198][2]["RewardItem"][2]["Attr"] = "0 1 3"
------------------------------------------------------------勇士---------------------------------------------------------
--+8
--1件130级极品2洞7%神佑+255生命+8我王剑与1个赠品属性七阶战锤神魂二选一
	tWarriorEquipPromot_Reward[3312724] = {}
	tWarriorEquipPromot_Reward[3312724][1] = {}  --我王剑
	tWarriorEquipPromot_Reward[3312724][1]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312724][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312724][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312724][1]["DeleteItem"][1]["Id"] = 3312724
	tWarriorEquipPromot_Reward[3312724][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312724][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312724][1]["RewardItem"][1]["Id"] = 420339
	tWarriorEquipPromot_Reward[3312724][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3312724][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312724][1]["RewardItem"][2]["Id"] = 800020
	tWarriorEquipPromot_Reward[3312724][1]["RewardItem"][2]["Attr"] = "0 1 3"

	tWarriorEquipPromot_Reward[3312724][2] = {}  --我王剑
	tWarriorEquipPromot_Reward[3312724][2]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312724][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312724][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312724][2]["DeleteItem"][1]["Id"] = 3312724
	tWarriorEquipPromot_Reward[3312724][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312724][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312724][2]["RewardItem"][1]["Id"] = 420339
	tWarriorEquipPromot_Reward[3312724][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3312724][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312724][2]["RewardItem"][2]["Id"] = 800111
	tWarriorEquipPromot_Reward[3312724][2]["RewardItem"][2]["Attr"] = "0 1 3"
	
	tWarriorEquipPromot_Reward[3312724][3] = {}  --  烁金龙皇棒
	tWarriorEquipPromot_Reward[3312724][3]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312724][3]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312724][3]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312724][3]["DeleteItem"][1]["Id"] = 3312724
	tWarriorEquipPromot_Reward[3312724][3]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312724][3]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312724][3]["RewardItem"][1]["Id"] = 480339
	tWarriorEquipPromot_Reward[3312724][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3312724][3]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312724][3]["RewardItem"][2]["Id"] = 800020
	tWarriorEquipPromot_Reward[3312724][3]["RewardItem"][2]["Attr"] = "0 1 3"
	
	tWarriorEquipPromot_Reward[3312724][4] = {}  --  烁金龙皇棒
	tWarriorEquipPromot_Reward[3312724][4]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312724][4]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312724][4]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312724][4]["DeleteItem"][1]["Id"] = 3312724
	tWarriorEquipPromot_Reward[3312724][4]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312724][4]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312724][4]["RewardItem"][1]["Id"] = 480339
	tWarriorEquipPromot_Reward[3312724][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3312724][4]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312724][4]["RewardItem"][2]["Id"] = 800111
	tWarriorEquipPromot_Reward[3312724][4]["RewardItem"][2]["Attr"] = "0 1 3"
	
	tWarriorEquipPromot_Reward[3312724][5] = {} --殓魂刃
	tWarriorEquipPromot_Reward[3312724][5]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312724][5]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312724][5]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312724][5]["DeleteItem"][1]["Id"] = 3312724
	tWarriorEquipPromot_Reward[3312724][5]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312724][5]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312724][5]["RewardItem"][1]["Id"] = 410339
	tWarriorEquipPromot_Reward[3312724][5]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3312724][5]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312724][5]["RewardItem"][2]["Id"] = 800020
	tWarriorEquipPromot_Reward[3312724][5]["RewardItem"][2]["Attr"] = "0 1 3"
	
	tWarriorEquipPromot_Reward[3312724][6] = {} --殓魂刃
	tWarriorEquipPromot_Reward[3312724][6]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312724][6]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312724][6]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312724][6]["DeleteItem"][1]["Id"] = 3312724
	tWarriorEquipPromot_Reward[3312724][6]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312724][6]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312724][6]["RewardItem"][1]["Id"] = 410339
	tWarriorEquipPromot_Reward[3312724][6]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3312724][6]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312724][6]["RewardItem"][2]["Id"] = 800111
	tWarriorEquipPromot_Reward[3312724][6]["RewardItem"][2]["Attr"] = "0 1 3"
	
	tWarriorEquipPromot_Reward[3312724][7] = {} --烈炎杵
	tWarriorEquipPromot_Reward[3312724][7]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312724][7]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312724][7]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312724][7]["DeleteItem"][1]["Id"] = 3312724
	tWarriorEquipPromot_Reward[3312724][7]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312724][7]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312724][7]["RewardItem"][1]["Id"] = 481339
	tWarriorEquipPromot_Reward[3312724][7]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3312724][7]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312724][7]["RewardItem"][2]["Id"] = 800020
	tWarriorEquipPromot_Reward[3312724][7]["RewardItem"][2]["Attr"] = "0 1 3"
	
	tWarriorEquipPromot_Reward[3312724][8] = {} --烈炎杵
	tWarriorEquipPromot_Reward[3312724][8]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312724][8]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312724][8]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312724][8]["DeleteItem"][1]["Id"] = 3312724
	tWarriorEquipPromot_Reward[3312724][8]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312724][8]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312724][8]["RewardItem"][1]["Id"] = 481339
	tWarriorEquipPromot_Reward[3312724][8]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3312724][8]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312724][8]["RewardItem"][2]["Id"] = 800111
	tWarriorEquipPromot_Reward[3312724][8]["RewardItem"][2]["Attr"] = "0 1 3"

	
--1件130级极品2洞7%神佑+255生命+8惊雷战甲与1个赠品属性七阶衣服神魂
	tWarriorEquipPromot_Reward[3312725] = {}
	tWarriorEquipPromot_Reward[3312725]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312725]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312725]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312725]["DeleteItem"][1]["Id"] = 3312725
	tWarriorEquipPromot_Reward[3312725]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312725]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312725]["RewardItem"][1]["Id"] = 130209
	tWarriorEquipPromot_Reward[3312725]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3312725]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312725]["RewardItem"][2]["Id"] = 822071 
	tWarriorEquipPromot_Reward[3312725]["RewardItem"][2]["Attr"] = "0 1 3"
	

--1件130级极品2洞7%神佑+255生命+8雷威战盔，更可在2个不同的赠品属性七阶头部神魂中任选其一
-- 七阶头部神魂[坚固]
	tWarriorEquipPromot_Reward[3312727] = {}
	tWarriorEquipPromot_Reward[3312727][1] = {}
	tWarriorEquipPromot_Reward[3312727][1]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312727][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312727][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312727][1]["DeleteItem"][1]["Id"] = 3312727
	tWarriorEquipPromot_Reward[3312727][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312727][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312727][1]["RewardItem"][1]["Id"] = 118209
	tWarriorEquipPromot_Reward[3312727][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3312727][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312727][1]["RewardItem"][2]["Id"] = 820074
	tWarriorEquipPromot_Reward[3312727][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3312727][2] = {}
	tWarriorEquipPromot_Reward[3312727][2]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312727][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312727][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312727][2]["DeleteItem"][1]["Id"] = 3312727
	tWarriorEquipPromot_Reward[3312727][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312727][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312727][2]["RewardItem"][1]["Id"] = 118209
	tWarriorEquipPromot_Reward[3312727][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3312727][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312727][2]["RewardItem"][2]["Id"] = 820073
	tWarriorEquipPromot_Reward[3312727][2]["RewardItem"][2]["Attr"] = "0 1 3"
	--+8赠
--1件赠品属性130级极品2洞7%神佑+255生命+8雷暴战锤与1个赠品属性七阶战锤神魂二选一
	tWarriorEquipPromot_Reward[3312728] = {}
	tWarriorEquipPromot_Reward[3312728][1] = {}
	tWarriorEquipPromot_Reward[3312728][1]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312728][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312728][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312728][1]["DeleteItem"][1]["Id"] = 3312728
	tWarriorEquipPromot_Reward[3312728][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312728][1]["RewardItem"][1] = {} 
	tWarriorEquipPromot_Reward[3312728][1]["RewardItem"][1]["Id"] = 420339  --我王剑
	tWarriorEquipPromot_Reward[3312728][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3312728][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312728][1]["RewardItem"][2]["Id"] = 800020
	tWarriorEquipPromot_Reward[3312728][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3312728][2] = {}
	tWarriorEquipPromot_Reward[3312728][2]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312728][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312728][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312728][2]["DeleteItem"][1]["Id"] = 3312728
	tWarriorEquipPromot_Reward[3312728][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312728][2]["RewardItem"][1] = {} 
	tWarriorEquipPromot_Reward[3312728][2]["RewardItem"][1]["Id"] = 420339  --我王剑
	tWarriorEquipPromot_Reward[3312728][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3312728][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312728][2]["RewardItem"][2]["Id"] = 800111
	tWarriorEquipPromot_Reward[3312728][2]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3312728][3] = {}
	tWarriorEquipPromot_Reward[3312728][3]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312728][3]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312728][3]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312728][3]["DeleteItem"][1]["Id"] = 3312728
	tWarriorEquipPromot_Reward[3312728][3]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312728][3]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312728][3]["RewardItem"][1]["Id"] = 480339  --烁金龙皇棒
	tWarriorEquipPromot_Reward[3312728][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3312728][3]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312728][3]["RewardItem"][2]["Id"] = 800020
	tWarriorEquipPromot_Reward[3312728][3]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3312728][4] = {}
	tWarriorEquipPromot_Reward[3312728][4]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312728][4]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312728][4]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312728][4]["DeleteItem"][1]["Id"] = 3312728
	tWarriorEquipPromot_Reward[3312728][4]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312728][4]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312728][4]["RewardItem"][1]["Id"] = 480339  --烁金龙皇棒
	tWarriorEquipPromot_Reward[3312728][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3312728][4]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312728][4]["RewardItem"][2]["Id"] = 800111
	tWarriorEquipPromot_Reward[3312728][4]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3312728][5] = {}
	tWarriorEquipPromot_Reward[3312728][5]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312728][5]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312728][5]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312728][5]["DeleteItem"][1]["Id"] = 3312728
	tWarriorEquipPromot_Reward[3312728][5]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312728][5]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312728][5]["RewardItem"][1]["Id"] = 410339  --殓魂刃
	tWarriorEquipPromot_Reward[3312728][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3312728][5]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312728][5]["RewardItem"][2]["Id"] = 800020
	tWarriorEquipPromot_Reward[3312728][5]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3312728][6] = {}
	tWarriorEquipPromot_Reward[3312728][6]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312728][6]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312728][6]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312728][6]["DeleteItem"][1]["Id"] = 3312728
	tWarriorEquipPromot_Reward[3312728][6]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312728][6]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312728][6]["RewardItem"][1]["Id"] = 480339  --烁金龙皇棒
	tWarriorEquipPromot_Reward[3312728][6]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3312728][6]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312728][6]["RewardItem"][2]["Id"] = 800111
	tWarriorEquipPromot_Reward[3312728][6]["RewardItem"][2]["Attr"] = "0 1 3"
-- 烈炎杵
	tWarriorEquipPromot_Reward[3312728][7] = {}
	tWarriorEquipPromot_Reward[3312728][7]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312728][7]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312728][7]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312728][7]["DeleteItem"][1]["Id"] = 3312728
	tWarriorEquipPromot_Reward[3312728][7]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312728][7]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312728][7]["RewardItem"][1]["Id"] = 481339  --殓魂刃
	tWarriorEquipPromot_Reward[3312728][7]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3312728][7]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312728][7]["RewardItem"][2]["Id"] = 800020
	tWarriorEquipPromot_Reward[3312728][7]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3312728][8] = {}
	tWarriorEquipPromot_Reward[3312728][8]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312728][8]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312728][8]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312728][8]["DeleteItem"][1]["Id"] = 3312728
	tWarriorEquipPromot_Reward[3312728][8]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312728][8]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312728][8]["RewardItem"][1]["Id"] = 481339  --烁金龙皇棒
	tWarriorEquipPromot_Reward[3312728][8]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3312728][8]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312728][8]["RewardItem"][2]["Id"] = 800111
	tWarriorEquipPromot_Reward[3312728][8]["RewardItem"][2]["Attr"] = "0 1 3"

--1件赠品属性130级极品2洞7%神佑+255生命+8惊雷战甲与1个赠品属性七阶衣服神魂
	tWarriorEquipPromot_Reward[3312729] = {}
	tWarriorEquipPromot_Reward[3312729]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312729]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312729]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312729]["DeleteItem"][1]["Id"] = 3312729
	tWarriorEquipPromot_Reward[3312729]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312729]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312729]["RewardItem"][1]["Id"] = 130209  --贪狼七煞战甲
	tWarriorEquipPromot_Reward[3312729]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3312729]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312729]["RewardItem"][2]["Id"] = 822071
	tWarriorEquipPromot_Reward[3312729]["RewardItem"][2]["Attr"] = "0 1 3"

	
--1件赠品属性130级极品2洞7%神佑+255生命+8雷威战盔，更可在2个不同的赠品属性七阶头部神魂中任选其一
-- 七阶头部神魂[坚固]
	tWarriorEquipPromot_Reward[3312731] = {}
	tWarriorEquipPromot_Reward[3312731][1] = {}
	tWarriorEquipPromot_Reward[3312731][1]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312731][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312731][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312731][1]["DeleteItem"][1]["Id"] = 3312731
	tWarriorEquipPromot_Reward[3312731][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312731][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312731][1]["RewardItem"][1]["Id"] = 118209  --冥魂百战箍
	tWarriorEquipPromot_Reward[3312731][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3312731][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312731][1]["RewardItem"][2]["Id"] = 820074
	tWarriorEquipPromot_Reward[3312731][1]["RewardItem"][2]["Attr"] = "0 1 3"
	
	tWarriorEquipPromot_Reward[3312731][2] = {}
	tWarriorEquipPromot_Reward[3312731][2]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312731][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312731][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312731][2]["DeleteItem"][1]["Id"] = 3312731
	tWarriorEquipPromot_Reward[3312731][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312731][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312731][2]["RewardItem"][1]["Id"] = 118209  --冥魂百战箍
	tWarriorEquipPromot_Reward[3312731][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3312731][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312731][2]["RewardItem"][2]["Id"] = 820073
	tWarriorEquipPromot_Reward[3312731][2]["RewardItem"][2]["Attr"] = "0 1 3"
	
	--+6
--1件100级极品2洞5%神佑+255生命+6雷光战锤与1个赠品属性六阶战锤神魂二选一
	tWarriorEquipPromot_Reward[3312732] = {}
	tWarriorEquipPromot_Reward[3312732][1] = {}
	tWarriorEquipPromot_Reward[3312732][1]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312732][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312732][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312732][1]["DeleteItem"][1]["Id"] = 3312732
	tWarriorEquipPromot_Reward[3312732][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312732][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312732][1]["RewardItem"][1]["Id"] = 420199  -- 赤霄剑
	tWarriorEquipPromot_Reward[3312732][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3312732][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312732][1]["RewardItem"][2]["Id"] = 800000
	tWarriorEquipPromot_Reward[3312732][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3312732][2] = {}
	tWarriorEquipPromot_Reward[3312732][2]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312732][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312732][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312732][2]["DeleteItem"][1]["Id"] = 3312732
	tWarriorEquipPromot_Reward[3312732][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312732][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312732][2]["RewardItem"][1]["Id"] = 420199  -- 赤霄剑
	tWarriorEquipPromot_Reward[3312732][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3312732][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312732][2]["RewardItem"][2]["Id"] = 800110
	tWarriorEquipPromot_Reward[3312732][2]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3312732][3] = {}
	tWarriorEquipPromot_Reward[3312732][3]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312732][3]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312732][3]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312732][3]["DeleteItem"][1]["Id"] = 3312732
	tWarriorEquipPromot_Reward[3312732][3]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312732][3]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312732][3]["RewardItem"][1]["Id"] = 420199  -- 赤霄剑
	tWarriorEquipPromot_Reward[3312732][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3312732][3]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312732][3]["RewardItem"][2]["Id"] = 800000
	tWarriorEquipPromot_Reward[3312732][3]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3312732][4] = {}
	tWarriorEquipPromot_Reward[3312732][4]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312732][4]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312732][4]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312732][4]["DeleteItem"][1]["Id"] = 3312732
	tWarriorEquipPromot_Reward[3312732][4]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312732][4]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312732][4]["RewardItem"][1]["Id"] = 480199  --珊银棒
	tWarriorEquipPromot_Reward[3312732][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3312732][4]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312732][4]["RewardItem"][2]["Id"] = 800110
	tWarriorEquipPromot_Reward[3312732][4]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3312732][5] = {}
	tWarriorEquipPromot_Reward[3312732][5]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312732][5]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312732][5]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312732][5]["DeleteItem"][1]["Id"] = 3312732
	tWarriorEquipPromot_Reward[3312732][5]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312732][5]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312732][5]["RewardItem"][1]["Id"] = 410199  --沉虹斩
	tWarriorEquipPromot_Reward[3312732][5]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3312732][5]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312732][5]["RewardItem"][2]["Id"] = 800000
	tWarriorEquipPromot_Reward[3312732][5]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3312732][6] = {}
	tWarriorEquipPromot_Reward[3312732][6]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312732][6]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312732][6]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312732][6]["DeleteItem"][1]["Id"] = 3312732
	tWarriorEquipPromot_Reward[3312732][6]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312732][6]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312732][6]["RewardItem"][1]["Id"] = 410199  --沉虹斩
	tWarriorEquipPromot_Reward[3312732][6]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3312732][6]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312732][6]["RewardItem"][2]["Id"] = 800110
	tWarriorEquipPromot_Reward[3312732][6]["RewardItem"][2]["Attr"] = "0 1 3"
	
	tWarriorEquipPromot_Reward[3312732][7] = {}
	tWarriorEquipPromot_Reward[3312732][7]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312732][7]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312732][7]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312732][7]["DeleteItem"][1]["Id"] = 3312732
	tWarriorEquipPromot_Reward[3312732][7]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312732][7]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312732][7]["RewardItem"][1]["Id"] = 481199  --霹雳神杵
	tWarriorEquipPromot_Reward[3312732][7]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3312732][7]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312732][7]["RewardItem"][2]["Id"] = 800000
	tWarriorEquipPromot_Reward[3312732][7]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3312732][8] = {}
	tWarriorEquipPromot_Reward[3312732][8]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312732][8]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312732][8]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312732][8]["DeleteItem"][1]["Id"] = 3312732
	tWarriorEquipPromot_Reward[3312732][8]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312732][8]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312732][8]["RewardItem"][1]["Id"] = 481199  --霹雳神杵
	tWarriorEquipPromot_Reward[3312732][8]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3312732][8]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312732][8]["RewardItem"][2]["Id"] = 800110
	tWarriorEquipPromot_Reward[3312732][8]["RewardItem"][2]["Attr"] = "0 1 3"

	
--1件100级极品2洞5%神佑+255生命+6蛮雷战甲与1个赠品属性六阶衣服神魂
	tWarriorEquipPromot_Reward[3312733] = {}
	tWarriorEquipPromot_Reward[3312733]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312733]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312733]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312733]["DeleteItem"][1]["Id"] = 3312733
	tWarriorEquipPromot_Reward[3312733]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312733]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312733]["RewardItem"][1]["Id"] = 130089  -- 乾坤战甲
	tWarriorEquipPromot_Reward[3312733]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3312733]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312733]["RewardItem"][2]["Id"] = 822053
	tWarriorEquipPromot_Reward[3312733]["RewardItem"][2]["Attr"] = "0 1 3"
	
	
--1件100级极品2洞5%神佑+255生命+6雷鸣战盔，更可在2个不同的赠品属性六阶头部神魂中任选其一
-- 六阶头部神魂[物理]
	tWarriorEquipPromot_Reward[3312735] = {}
	tWarriorEquipPromot_Reward[3312735][1] = {}
	tWarriorEquipPromot_Reward[3312735][1]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312735][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312735][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312735][1]["DeleteItem"][1]["Id"] = 3312735
	tWarriorEquipPromot_Reward[3312735][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312735][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312735][1]["RewardItem"][1]["Id"] = 118089
	tWarriorEquipPromot_Reward[3312735][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3312735][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312735][1]["RewardItem"][2]["Id"] = 820071
	tWarriorEquipPromot_Reward[3312735][1]["RewardItem"][2]["Attr"] = "0 1 3"
-- 六阶头部神魂[法系]
	tWarriorEquipPromot_Reward[3312735][2] = {}
	tWarriorEquipPromot_Reward[3312735][2]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312735][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312735][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312735][2]["DeleteItem"][1]["Id"] = 3312735
	tWarriorEquipPromot_Reward[3312735][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312735][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312735][2]["RewardItem"][1]["Id"] = 118089
	tWarriorEquipPromot_Reward[3312735][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3312735][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312735][2]["RewardItem"][2]["Id"] = 820072
	tWarriorEquipPromot_Reward[3312735][2]["RewardItem"][2]["Attr"] = "0 1 3"
	--+6赠
--1件赠品属性80级极品2洞5%神佑+255生命+6雷光战锤与1个赠品属性六阶战锤神魂二选一
	tWarriorEquipPromot_Reward[3312736] = {}
	tWarriorEquipPromot_Reward[3312736][1] = {}
	tWarriorEquipPromot_Reward[3312736][1]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312736][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312736][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312736][1]["DeleteItem"][1]["Id"] = 3312736
	tWarriorEquipPromot_Reward[3312736][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312736][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312736][1]["RewardItem"][1]["Id"] = 420159  --无双剑
	tWarriorEquipPromot_Reward[3312736][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3312736][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312736][1]["RewardItem"][2]["Id"] = 800000
	tWarriorEquipPromot_Reward[3312736][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3312736][2] = {}
	tWarriorEquipPromot_Reward[3312736][2]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312736][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312736][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312736][2]["DeleteItem"][1]["Id"] = 3312736
	tWarriorEquipPromot_Reward[3312736][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312736][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312736][2]["RewardItem"][1]["Id"] = 420159  --无双剑
	tWarriorEquipPromot_Reward[3312736][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3312736][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312736][2]["RewardItem"][2]["Id"] = 800110
	tWarriorEquipPromot_Reward[3312736][2]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3312736][3] = {}
	tWarriorEquipPromot_Reward[3312736][3]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312736][3]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312736][3]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312736][3]["DeleteItem"][1]["Id"] = 3312736
	tWarriorEquipPromot_Reward[3312736][3]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312736][3]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312736][3]["RewardItem"][1]["Id"] = 480159  --天狼棒
	tWarriorEquipPromot_Reward[3312736][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3312736][3]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312736][3]["RewardItem"][2]["Id"] = 800000
	tWarriorEquipPromot_Reward[3312736][3]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3312736][4] = {}
	tWarriorEquipPromot_Reward[3312736][4]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312736][4]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312736][4]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312736][4]["DeleteItem"][1]["Id"] = 3312736
	tWarriorEquipPromot_Reward[3312736][4]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312736][4]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312736][4]["RewardItem"][1]["Id"] = 480159  --天狼棒
	tWarriorEquipPromot_Reward[3312736][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3312736][4]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312736][4]["RewardItem"][2]["Id"] = 800110
	tWarriorEquipPromot_Reward[3312736][4]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3312736][5] = {}
	tWarriorEquipPromot_Reward[3312736][5]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312736][5]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312736][5]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312736][5]["DeleteItem"][1]["Id"] = 3312736
	tWarriorEquipPromot_Reward[3312736][5]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312736][5]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312736][5]["RewardItem"][1]["Id"] = 410159 --流采刀
	tWarriorEquipPromot_Reward[3312736][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3312736][5]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312736][5]["RewardItem"][2]["Id"] = 800000
	tWarriorEquipPromot_Reward[3312736][5]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3312736][6] = {}
	tWarriorEquipPromot_Reward[3312736][6]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312736][6]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312736][6]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312736][6]["DeleteItem"][1]["Id"] = 3312736
	tWarriorEquipPromot_Reward[3312736][6]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312736][6]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312736][6]["RewardItem"][1]["Id"] = 410159 --流采刀
	tWarriorEquipPromot_Reward[3312736][6]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3312736][6]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312736][6]["RewardItem"][2]["Id"] = 800110
	tWarriorEquipPromot_Reward[3312736][6]["RewardItem"][2]["Attr"] = "0 1 3"
	
	tWarriorEquipPromot_Reward[3312736][7] = {}
	tWarriorEquipPromot_Reward[3312736][7]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312736][7]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312736][7]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312736][7]["DeleteItem"][1]["Id"] = 3312736
	tWarriorEquipPromot_Reward[3312736][7]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312736][7]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312736][7]["RewardItem"][1]["Id"] = 481199 --霹雳神杵
	tWarriorEquipPromot_Reward[3312736][7]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3312736][7]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312736][7]["RewardItem"][2]["Id"] = 800000
	tWarriorEquipPromot_Reward[3312736][7]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3312736][8] = {}
	tWarriorEquipPromot_Reward[3312736][8]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312736][8]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312736][8]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312736][8]["DeleteItem"][1]["Id"] = 3312736
	tWarriorEquipPromot_Reward[3312736][8]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312736][8]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312736][8]["RewardItem"][1]["Id"] = 481199 --霹雳神杵
	tWarriorEquipPromot_Reward[3312736][8]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3312736][8]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312736][8]["RewardItem"][2]["Id"] = 800110
	tWarriorEquipPromot_Reward[3312736][8]["RewardItem"][2]["Attr"] = "0 1 3"

--1件赠品属性80级极品2洞5%神佑+255生命+6蛮雷战甲与1个赠品属性六阶衣服神魂
	tWarriorEquipPromot_Reward[3312737] = {}
	tWarriorEquipPromot_Reward[3312737]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312737]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312737]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312737]["DeleteItem"][1]["Id"] = 3312737
	tWarriorEquipPromot_Reward[3312737]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312737]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312737]["RewardItem"][1]["Id"] = 130079  --烈神甲
	tWarriorEquipPromot_Reward[3312737]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3312737]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312737]["RewardItem"][2]["Id"] = 822053
	tWarriorEquipPromot_Reward[3312737]["RewardItem"][2]["Attr"] = "0 1 3"
	
	
--1件赠品属性80级极品2洞5%神佑+255生命+6雷鸣战盔，更可在2个不同的赠品属性六阶头部神魂中任选其一
-- 六阶头部神魂[物理]
	tWarriorEquipPromot_Reward[3312739] = {}
	tWarriorEquipPromot_Reward[3312739][1] = {}
	tWarriorEquipPromot_Reward[3312739][1]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312739][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312739][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312739][1]["DeleteItem"][1]["Id"] = 3312739
	tWarriorEquipPromot_Reward[3312739][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312739][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312739][1]["RewardItem"][1]["Id"] = 118079  --力士箍
	tWarriorEquipPromot_Reward[3312739][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3312739][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312739][1]["RewardItem"][2]["Id"] = 820071
	tWarriorEquipPromot_Reward[3312739][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3312739][2] = {}
	tWarriorEquipPromot_Reward[3312739][2]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[3312739][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3312739][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3312739][2]["DeleteItem"][1]["Id"] = 3312739
	tWarriorEquipPromot_Reward[3312739][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3312739][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3312739][2]["RewardItem"][1]["Id"] = 118079  --力士箍
	tWarriorEquipPromot_Reward[3312739][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3312739][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3312739][2]["RewardItem"][2]["Id"] = 820072
	tWarriorEquipPromot_Reward[3312739][2]["RewardItem"][2]["Attr"] = "0 1 3"
	
	
------------------------------------------------------------忍者---------------------------------------------------------
--+8
--1件130级极品2洞7%神佑+255生命+8裂魂魔镰与1个赠品属性七阶战锤神魂二选一
	tWarriorEquipPromot_Reward[3315465] = {}
	tWarriorEquipPromot_Reward[3315465][1] = {}
	tWarriorEquipPromot_Reward[3315465][1]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[3315465][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3315465][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3315465][1]["DeleteItem"][1]["Id"] = 3315465
	tWarriorEquipPromot_Reward[3315465][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3315465][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3315465][1]["RewardItem"][1]["Id"] = 511339  --裂魂魔镰
	tWarriorEquipPromot_Reward[3315465][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3315465][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3315465][1]["RewardItem"][2]["Id"] = 800020
	tWarriorEquipPromot_Reward[3315465][1]["RewardItem"][2]["Attr"] = "0 1 3"

	tWarriorEquipPromot_Reward[3315465][2] = {}
	tWarriorEquipPromot_Reward[3315465][2]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[3315465][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3315465][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3315465][2]["DeleteItem"][1]["Id"] = 3315465
	tWarriorEquipPromot_Reward[3315465][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3315465][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3315465][2]["RewardItem"][1]["Id"] = 511339  --裂魂魔镰
	tWarriorEquipPromot_Reward[3315465][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3315465][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3315465][2]["RewardItem"][2]["Id"] = 800111
	tWarriorEquipPromot_Reward[3315465][2]["RewardItem"][2]["Attr"] = "0 1 3"
	
	tWarriorEquipPromot_Reward[3315465][3] = {}
	tWarriorEquipPromot_Reward[3315465][3]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[3315465][3]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3315465][3]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3315465][3]["DeleteItem"][1]["Id"] = 3315465
	tWarriorEquipPromot_Reward[3315465][3]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3315465][3]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3315465][3]["RewardItem"][1]["Id"] = 601339  --  赤皇御魂
	tWarriorEquipPromot_Reward[3315465][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3315465][3]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3315465][3]["RewardItem"][2]["Id"] = 800020
	tWarriorEquipPromot_Reward[3315465][3]["RewardItem"][2]["Attr"] = "0 1 3"
	
	tWarriorEquipPromot_Reward[3315465][4] = {}
	tWarriorEquipPromot_Reward[3315465][4]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[3315465][4]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3315465][4]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3315465][4]["DeleteItem"][1]["Id"] = 3315465
	tWarriorEquipPromot_Reward[3315465][4]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3315465][4]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3315465][4]["RewardItem"][1]["Id"] = 601339  --  赤皇御魂
	tWarriorEquipPromot_Reward[3315465][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3315465][4]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3315465][4]["RewardItem"][2]["Id"] = 800111
	tWarriorEquipPromot_Reward[3315465][4]["RewardItem"][2]["Attr"] = "0 1 3"
	
--1件130级极品2洞7%神佑+255生命+8鬼怒川战魂与1个赠品属性七阶衣服神魂
	tWarriorEquipPromot_Reward[3315466] = {}
	tWarriorEquipPromot_Reward[3315466]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[3315466]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3315466]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3315466]["DeleteItem"][1]["Id"] = 3315466
	tWarriorEquipPromot_Reward[3315466]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3315466]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3315466]["RewardItem"][1]["Id"] = 135209 -- 鬼怒川战魂
	tWarriorEquipPromot_Reward[3315466]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3315466]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3315466]["RewardItem"][2]["Id"] = 822071 
	tWarriorEquipPromot_Reward[3315466]["RewardItem"][2]["Attr"] = "0 1 3"
	

--1件130级极品2洞7%神佑+255生命+8天照樱舞，更可在2个不同的赠品属性七阶头部神魂中任选其一
-- 七阶头部神魂[坚固]
	tWarriorEquipPromot_Reward[3315468] = {}
	tWarriorEquipPromot_Reward[3315468][1] = {}
	tWarriorEquipPromot_Reward[3315468][1]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[3315468][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3315468][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3315468][1]["DeleteItem"][1]["Id"] = 3315468
	tWarriorEquipPromot_Reward[3315468][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3315468][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3315468][1]["RewardItem"][1]["Id"] = 123209 -- 天照樱舞护额
	tWarriorEquipPromot_Reward[3315468][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3315468][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3315468][1]["RewardItem"][2]["Id"] = 820074
	tWarriorEquipPromot_Reward[3315468][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3315468][2] = {}
	tWarriorEquipPromot_Reward[3315468][2]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[3315468][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3315468][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3315468][2]["DeleteItem"][1]["Id"] = 3315468
	tWarriorEquipPromot_Reward[3315468][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3315468][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3315468][2]["RewardItem"][1]["Id"] = 123209 -- 天照樱舞护额
	tWarriorEquipPromot_Reward[3315468][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3315468][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3315468][2]["RewardItem"][2]["Id"] = 820073
	tWarriorEquipPromot_Reward[3315468][2]["RewardItem"][2]["Attr"] = "0 1 3"
	--+8赠
--1件赠品属性130级极品2洞7%神佑+255生命+8雷暴战锤与1个赠品属性七阶战锤神魂二选一
	tWarriorEquipPromot_Reward[3315469] = {}
	tWarriorEquipPromot_Reward[3315469][1] = {}
	tWarriorEquipPromot_Reward[3315469][1]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[3315469][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3315469][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3315469][1]["DeleteItem"][1]["Id"] = 3315469
	tWarriorEquipPromot_Reward[3315469][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3315469][1]["RewardItem"][1] = {} 
	tWarriorEquipPromot_Reward[3315469][1]["RewardItem"][1]["Id"] = 511339  --裂魂魔镰
	tWarriorEquipPromot_Reward[3315469][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3315469][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3315469][1]["RewardItem"][2]["Id"] = 800020
	tWarriorEquipPromot_Reward[3315469][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3315469][2] = {}
	tWarriorEquipPromot_Reward[3315469][2]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[3315469][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3315469][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3315469][2]["DeleteItem"][1]["Id"] = 3315469
	tWarriorEquipPromot_Reward[3315469][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3315469][2]["RewardItem"][1] = {} 
	tWarriorEquipPromot_Reward[3315469][2]["RewardItem"][1]["Id"] = 511339  --裂魂魔镰
	tWarriorEquipPromot_Reward[3315469][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3315469][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3315469][2]["RewardItem"][2]["Id"] = 800111
	tWarriorEquipPromot_Reward[3315469][2]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3315469][3] = {}
	tWarriorEquipPromot_Reward[3315469][3]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[3315469][3]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3315469][3]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3315469][3]["DeleteItem"][1]["Id"] = 3315469
	tWarriorEquipPromot_Reward[3315469][3]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3315469][3]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3315469][3]["RewardItem"][1]["Id"] = 601339  --赤皇御魂
	tWarriorEquipPromot_Reward[3315469][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3315469][3]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3315469][3]["RewardItem"][2]["Id"] = 800020
	tWarriorEquipPromot_Reward[3315469][3]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3315469][4] = {}
	tWarriorEquipPromot_Reward[3315469][4]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[3315469][4]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3315469][4]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3315469][4]["DeleteItem"][1]["Id"] = 3315469
	tWarriorEquipPromot_Reward[3315469][4]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3315469][4]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3315469][4]["RewardItem"][1]["Id"] = 601339  --赤皇御魂
	tWarriorEquipPromot_Reward[3315469][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3315469][4]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3315469][4]["RewardItem"][2]["Id"] = 800111
	tWarriorEquipPromot_Reward[3315469][4]["RewardItem"][2]["Attr"] = "0 1 3"
	
--1件赠品属性130级极品2洞7%神佑+255生命+8鬼怒川战魂与1个赠品属性七阶衣服神魂
	tWarriorEquipPromot_Reward[3315470] = {}
	tWarriorEquipPromot_Reward[3315470]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[3315470]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3315470]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3315470]["DeleteItem"][1]["Id"] = 3315470
	tWarriorEquipPromot_Reward[3315470]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3315470]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3315470]["RewardItem"][1]["Id"] = 135209  --鬼怒川战魂
	tWarriorEquipPromot_Reward[3315470]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3315470]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3315470]["RewardItem"][2]["Id"] = 822071
	tWarriorEquipPromot_Reward[3315470]["RewardItem"][2]["Attr"] = "0 1 3"

	
--1件赠品属性130级极品2洞7%神佑+255生命+8天照樱舞护额，更可在2个不同的赠品属性七阶头部神魂中任选其一
-- 七阶头部神魂[坚固]
	tWarriorEquipPromot_Reward[3315472] = {}
	tWarriorEquipPromot_Reward[3315472][1] = {}
	tWarriorEquipPromot_Reward[3315472][1]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[3315472][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3315472][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3315472][1]["DeleteItem"][1]["Id"] = 3315472
	tWarriorEquipPromot_Reward[3315472][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3315472][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3315472][1]["RewardItem"][1]["Id"] = 123209  --天照樱舞护额
	tWarriorEquipPromot_Reward[3315472][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3315472][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3315472][1]["RewardItem"][2]["Id"] = 820074
	tWarriorEquipPromot_Reward[3315472][1]["RewardItem"][2]["Attr"] = "0 1 3"
	
	tWarriorEquipPromot_Reward[3315472][2] = {}
	tWarriorEquipPromot_Reward[3315472][2]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[3315472][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3315472][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3315472][2]["DeleteItem"][1]["Id"] = 3315472
	tWarriorEquipPromot_Reward[3315472][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3315472][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3315472][2]["RewardItem"][1]["Id"] = 123209  --天照樱舞护额
	tWarriorEquipPromot_Reward[3315472][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3315472][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3315472][2]["RewardItem"][2]["Id"] = 820073
	tWarriorEquipPromot_Reward[3315472][2]["RewardItem"][2]["Attr"] = "0 1 3"
	
	--+6
--1件100级极品2洞5%神佑+255生命+6封魔战镰、太岁宗道与1个赠品属性六阶战锤神魂二选一
	tWarriorEquipPromot_Reward[3315473] = {}
	tWarriorEquipPromot_Reward[3315473][1] = {}
	tWarriorEquipPromot_Reward[3315473][1]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[3315473][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3315473][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3315473][1]["DeleteItem"][1]["Id"] = 3315473
	tWarriorEquipPromot_Reward[3315473][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3315473][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3315473][1]["RewardItem"][1]["Id"] = 511199  -- 封魔战镰
	tWarriorEquipPromot_Reward[3315473][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3315473][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3315473][1]["RewardItem"][2]["Id"] = 800000
	tWarriorEquipPromot_Reward[3315473][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3315473][2] = {}
	tWarriorEquipPromot_Reward[3315473][2]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[3315473][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3315473][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3315473][2]["DeleteItem"][1]["Id"] = 3315473
	tWarriorEquipPromot_Reward[3315473][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3315473][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3315473][2]["RewardItem"][1]["Id"] = 511199  -- 封魔战镰
	tWarriorEquipPromot_Reward[3315473][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3315473][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3315473][2]["RewardItem"][2]["Id"] = 800110
	tWarriorEquipPromot_Reward[3315473][2]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3315473][3] = {}
	tWarriorEquipPromot_Reward[3315473][3]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[3315473][3]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3315473][3]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3315473][3]["DeleteItem"][1]["Id"] = 3315473
	tWarriorEquipPromot_Reward[3315473][3]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3315473][3]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3315473][3]["RewardItem"][1]["Id"] = 601199  -- 太岁宗道
	tWarriorEquipPromot_Reward[3315473][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3315473][3]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3315473][3]["RewardItem"][2]["Id"] = 800000
	tWarriorEquipPromot_Reward[3315473][3]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3315473][4] = {}
	tWarriorEquipPromot_Reward[3315473][4]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[3315473][4]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3315473][4]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3315473][4]["DeleteItem"][1]["Id"] = 3315473
	tWarriorEquipPromot_Reward[3315473][4]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3315473][4]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3315473][4]["RewardItem"][1]["Id"] = 601199  --太岁宗道
	tWarriorEquipPromot_Reward[3315473][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3315473][4]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3315473][4]["RewardItem"][2]["Id"] = 800110
	tWarriorEquipPromot_Reward[3315473][4]["RewardItem"][2]["Attr"] = "0 1 3"
	
--1件100级极品2洞5%神佑+255生命+6赤月影与1个赠品属性六阶衣服神魂
	tWarriorEquipPromot_Reward[3315474] = {}
	tWarriorEquipPromot_Reward[3315474]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[3315474]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3315474]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3315474]["DeleteItem"][1]["Id"] = 3315474
	tWarriorEquipPromot_Reward[3315474]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3315474]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3315474]["RewardItem"][1]["Id"] = 135089  -- 赤月影
	tWarriorEquipPromot_Reward[3315474]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3315474]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3315474]["RewardItem"][2]["Id"] = 822053
	tWarriorEquipPromot_Reward[3315474]["RewardItem"][2]["Attr"] = "0 1 3"
	
	
--1件100级极品2洞5%神佑+255生命+6煞魂护额，更可在2个不同的赠品属性六阶头部神魂中任选其一
-- 六阶头部神魂[物理]
	tWarriorEquipPromot_Reward[3315476] = {}
	tWarriorEquipPromot_Reward[3315476][1] = {}
	tWarriorEquipPromot_Reward[3315476][1]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[3315476][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3315476][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3315476][1]["DeleteItem"][1]["Id"] = 3315476
	tWarriorEquipPromot_Reward[3315476][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3315476][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3315476][1]["RewardItem"][1]["Id"] = 123089
	tWarriorEquipPromot_Reward[3315476][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3315476][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3315476][1]["RewardItem"][2]["Id"] = 820071
	tWarriorEquipPromot_Reward[3315476][1]["RewardItem"][2]["Attr"] = "0 1 3"
-- 六阶头部神魂[法系]
	tWarriorEquipPromot_Reward[3315476][2] = {}
	tWarriorEquipPromot_Reward[3315476][2]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[3315476][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3315476][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3315476][2]["DeleteItem"][1]["Id"] = 3315476
	tWarriorEquipPromot_Reward[3315476][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3315476][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3315476][2]["RewardItem"][1]["Id"] = 123089
	tWarriorEquipPromot_Reward[3315476][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3315476][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3315476][2]["RewardItem"][2]["Id"] = 820072
	tWarriorEquipPromot_Reward[3315476][2]["RewardItem"][2]["Attr"] = "0 1 3"
	--+6赠
--1件赠品属性80级极品2洞5%神佑+255生命+6修罗战镰、玄月吉光与1个赠品属性六阶战锤神魂二选一
	tWarriorEquipPromot_Reward[3315477] = {}
	tWarriorEquipPromot_Reward[3315477][1] = {}
	tWarriorEquipPromot_Reward[3315477][1]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[3315477][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3315477][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3315477][1]["DeleteItem"][1]["Id"] = 3315477
	tWarriorEquipPromot_Reward[3315477][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3315477][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3315477][1]["RewardItem"][1]["Id"] = 511159  --修罗战镰
	tWarriorEquipPromot_Reward[3315477][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3315477][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3315477][1]["RewardItem"][2]["Id"] = 800000
	tWarriorEquipPromot_Reward[3315477][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3315477][2] = {}
	tWarriorEquipPromot_Reward[3315477][2]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[3315477][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3315477][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3315477][2]["DeleteItem"][1]["Id"] = 3315477
	tWarriorEquipPromot_Reward[3315477][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3315477][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3315477][2]["RewardItem"][1]["Id"] = 511159  --修罗战镰
	tWarriorEquipPromot_Reward[3315477][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3315477][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3315477][2]["RewardItem"][2]["Id"] = 800110
	tWarriorEquipPromot_Reward[3315477][2]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3315477][3] = {}
	tWarriorEquipPromot_Reward[3315477][3]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[3315477][3]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3315477][3]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3315477][3]["DeleteItem"][1]["Id"] = 3315477
	tWarriorEquipPromot_Reward[3315477][3]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3315477][3]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3315477][3]["RewardItem"][1]["Id"] = 601159  --玄月吉光
	tWarriorEquipPromot_Reward[3315477][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3315477][3]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3315477][3]["RewardItem"][2]["Id"] = 800000
	tWarriorEquipPromot_Reward[3315477][3]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3315477][4] = {}
	tWarriorEquipPromot_Reward[3315477][4]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[3315477][4]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3315477][4]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3315477][4]["DeleteItem"][1]["Id"] = 3315477
	tWarriorEquipPromot_Reward[3315477][4]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3315477][4]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3315477][4]["RewardItem"][1]["Id"] = 601159  --玄月吉光
	tWarriorEquipPromot_Reward[3315477][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3315477][4]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3315477][4]["RewardItem"][2]["Id"] = 800110
	tWarriorEquipPromot_Reward[3315477][4]["RewardItem"][2]["Attr"] = "0 1 3"
	
--1件赠品属性80级极品2洞5%神佑+255生命+6火翼云与1个赠品属性六阶衣服神魂
	tWarriorEquipPromot_Reward[3315478] = {}
	tWarriorEquipPromot_Reward[3315478]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[3315478]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3315478]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3315478]["DeleteItem"][1]["Id"] = 3315478
	tWarriorEquipPromot_Reward[3315478]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3315478]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3315478]["RewardItem"][1]["Id"] = 135079  --火翼云
	tWarriorEquipPromot_Reward[3315478]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3315478]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3315478]["RewardItem"][2]["Id"] = 822053
	tWarriorEquipPromot_Reward[3315478]["RewardItem"][2]["Attr"] = "0 1 3"
	
	
--1件赠品属性80级极品2洞5%神佑+255生命+6紫雁护额，更可在2个不同的赠品属性六阶头部神魂中任选其一
-- 六阶头部神魂[物理]
	tWarriorEquipPromot_Reward[3315481] = {}
	tWarriorEquipPromot_Reward[3315481][1] = {}
	tWarriorEquipPromot_Reward[3315481][1]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[3315481][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3315481][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3315481][1]["DeleteItem"][1]["Id"] = 3315481
	tWarriorEquipPromot_Reward[3315481][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3315481][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3315481][1]["RewardItem"][1]["Id"] = 123079  --紫雁护额
	tWarriorEquipPromot_Reward[3315481][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3315481][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3315481][1]["RewardItem"][2]["Id"] = 820071
	tWarriorEquipPromot_Reward[3315481][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3315481][2] = {}
	tWarriorEquipPromot_Reward[3315481][2]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[3315481][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3315481][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3315481][2]["DeleteItem"][1]["Id"] = 3315481
	tWarriorEquipPromot_Reward[3315481][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3315481][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3315481][2]["RewardItem"][1]["Id"] = 123079  --紫雁护额
	tWarriorEquipPromot_Reward[3315481][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3315481][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3315481][2]["RewardItem"][2]["Id"] = 820072
	tWarriorEquipPromot_Reward[3315481][2]["RewardItem"][2]["Attr"] = "0 1 3"
	
-----------------------------------------------------------------------------商店配置----------------------------------------------------------
	-- 极品100级头盔
	tWarriorEquipPromot_Reward[12] = {}
	tWarriorEquipPromot_Reward[12]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[12]["EmoneyBuyLog"] = "250	4028	%d	%d	1	"
	tWarriorEquipPromot_Reward[12]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[12]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[12]["RewardItem"][1]["Id"] = 3200772
	tWarriorEquipPromot_Reward[12]["RewardItem"][1]["Attr"] = "0 1"

	-- 极品130级头盔
	tWarriorEquipPromot_Reward[13] = {}
	tWarriorEquipPromot_Reward[13]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[13]["EmoneyBuyLog"] = "250	4029	%d	%d	1	"
	tWarriorEquipPromot_Reward[13]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[13]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[13]["RewardItem"][1]["Id"] = 3200776
	tWarriorEquipPromot_Reward[13]["RewardItem"][1]["Attr"] = "0 1"

	-- 极品100级盔甲
	tWarriorEquipPromot_Reward[14] = {}
	tWarriorEquipPromot_Reward[14]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[14]["EmoneyBuyLog"] = "250	4030	%d	%d	1	"
	tWarriorEquipPromot_Reward[14]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[14]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[14]["RewardItem"][1]["Id"] = 3200773
	tWarriorEquipPromot_Reward[14]["RewardItem"][1]["Attr"] = "0 1"

	-- 极品130级盔甲
	tWarriorEquipPromot_Reward[15] = {}
	tWarriorEquipPromot_Reward[15]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[15]["EmoneyBuyLog"] = "250	4031	%d	%d	1	"
	tWarriorEquipPromot_Reward[15]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[15]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[15]["RewardItem"][1]["Id"] = 3200777
	tWarriorEquipPromot_Reward[15]["RewardItem"][1]["Attr"] = "0 1"

	-- 极品100级盾牌
	tWarriorEquipPromot_Reward[16] = {}
	tWarriorEquipPromot_Reward[16]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[16]["EmoneyBuyLog"] = "250	4032	%d	%d	1	"
	tWarriorEquipPromot_Reward[16]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[16]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[16]["RewardItem"][1]["Id"] = 3200774
	tWarriorEquipPromot_Reward[16]["RewardItem"][1]["Attr"] = "0 1"

	-- 极品130级盾牌
	tWarriorEquipPromot_Reward[17] = {}
	tWarriorEquipPromot_Reward[17]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[17]["EmoneyBuyLog"] = "250	4033	%d	%d	1	"
	tWarriorEquipPromot_Reward[17]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[17]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[17]["RewardItem"][1]["Id"] = 3200778
	tWarriorEquipPromot_Reward[17]["RewardItem"][1]["Attr"] = "0 1"

	-- 极品100级武器
	tWarriorEquipPromot_Reward[18] = {}
	tWarriorEquipPromot_Reward[18]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[18]["EmoneyBuyLog"] = "250	4034	%d	%d	1	"
	tWarriorEquipPromot_Reward[18]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[18]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[18]["RewardItem"][1]["Id"] = 3200775
	tWarriorEquipPromot_Reward[18]["RewardItem"][1]["Attr"] = "0 1"

	-- 极品130级武器
	tWarriorEquipPromot_Reward[19] = {}
	tWarriorEquipPromot_Reward[19]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[19]["EmoneyBuyLog"] = "250	4035	%d	%d	1	"
	tWarriorEquipPromot_Reward[19]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[19]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[19]["RewardItem"][1]["Id"] = 3200779
	tWarriorEquipPromot_Reward[19]["RewardItem"][1]["Attr"] = "0 1"

	-- 5%神佑赠品头盔
	tWarriorEquipPromot_Reward[23] = {}
	tWarriorEquipPromot_Reward[23]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[23]["EmoneyBuyLog"] = "250	4036	%d	%d	1	"
	tWarriorEquipPromot_Reward[23]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[23]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[23]["RewardItem"][1]["Id"] = 3200780
	tWarriorEquipPromot_Reward[23]["RewardItem"][1]["Attr"] = "0 1"

	-- 7%神佑赠品头盔
	tWarriorEquipPromot_Reward[24] = {}
	tWarriorEquipPromot_Reward[24]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[24]["EmoneyBuyLog"] = "250	4037	%d	%d	1	"
	tWarriorEquipPromot_Reward[24]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[24]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[24]["RewardItem"][1]["Id"] = 3200784
	tWarriorEquipPromot_Reward[24]["RewardItem"][1]["Attr"] = "0 1"

	-- 5%神佑赠品盔甲
	tWarriorEquipPromot_Reward[25] = {}
	tWarriorEquipPromot_Reward[25]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[25]["EmoneyBuyLog"] = "250	4038	%d	%d	1	"
	tWarriorEquipPromot_Reward[25]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[25]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[25]["RewardItem"][1]["Id"] = 3200781
	tWarriorEquipPromot_Reward[25]["RewardItem"][1]["Attr"] = "0 1"

	-- 7%神佑赠品盔甲
	tWarriorEquipPromot_Reward[26] = {}
	tWarriorEquipPromot_Reward[26]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[26]["EmoneyBuyLog"] = "250	4039	%d	%d	1	"
	tWarriorEquipPromot_Reward[26]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[26]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[26]["RewardItem"][1]["Id"] = 3200785
	tWarriorEquipPromot_Reward[26]["RewardItem"][1]["Attr"] = "0 1"

	-- 5%神佑赠品盾牌
	tWarriorEquipPromot_Reward[27] = {}
	tWarriorEquipPromot_Reward[27]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[27]["EmoneyBuyLog"] = "250	4040	%d	%d	1	"
	tWarriorEquipPromot_Reward[27]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[27]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[27]["RewardItem"][1]["Id"] = 3200782
	tWarriorEquipPromot_Reward[27]["RewardItem"][1]["Attr"] = "0 1"

	-- 7%神佑赠品盾牌
	tWarriorEquipPromot_Reward[28] = {}
	tWarriorEquipPromot_Reward[28]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[28]["EmoneyBuyLog"] = "250	4041	%d	%d	1	"
	tWarriorEquipPromot_Reward[28]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[28]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[28]["RewardItem"][1]["Id"] = 3200786
	tWarriorEquipPromot_Reward[28]["RewardItem"][1]["Attr"] = "0 1"

	-- 5%神佑赠品武器
	tWarriorEquipPromot_Reward[29] = {}
	tWarriorEquipPromot_Reward[29]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[29]["EmoneyBuyLog"] = "250	4042	%d	%d	1	"
	tWarriorEquipPromot_Reward[29]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[29]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[29]["RewardItem"][1]["Id"] = 3200783
	tWarriorEquipPromot_Reward[29]["RewardItem"][1]["Attr"] = "0 1"

	-- 7%神佑赠品武器
	tWarriorEquipPromot_Reward[30] = {}
	tWarriorEquipPromot_Reward[30]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[30]["EmoneyBuyLog"] = "250	4043	%d	%d	1	"
	tWarriorEquipPromot_Reward[30]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[30]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[30]["RewardItem"][1]["Id"] = 3200787
	tWarriorEquipPromot_Reward[30]["RewardItem"][1]["Attr"] = "0 1"

	
----------------------------------新礼包物品配置
		-- +6系列
	-- 极品15级战头	2洞U龙	+6	加持255	神佑-5
	-- 6阶神魂赠
	tWarriorEquipPromot_Reward[3300290] = {}
	tWarriorEquipPromot_Reward[3300290]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300290]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300290]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300290]["DeleteItem"][1]["Id"] = 3300290
	tWarriorEquipPromot_Reward[3300290]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300290]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300290]["RewardItem"][1]["Id"] = 111009
	tWarriorEquipPromot_Reward[3300290]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3300290]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300290]["RewardItem"][2]["Id"] = 820071
	tWarriorEquipPromot_Reward[3300290]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300290]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300290]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300290]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300290]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300290]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300290]["RewardItem"][4]["Attr"] = "0 3 3"
	
	
	-- +6系列
	-- 极品15级战衣	2洞U龙	+6	加持255	神佑-5
	-- 6阶神魂赠
	tWarriorEquipPromot_Reward[3300291] = {}
	tWarriorEquipPromot_Reward[3300291]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300291]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300291]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300291]["DeleteItem"][1]["Id"] = 3300291
	tWarriorEquipPromot_Reward[3300291]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300291]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300291]["RewardItem"][1]["Id"] = 131009
	tWarriorEquipPromot_Reward[3300291]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3300291]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300291]["RewardItem"][2]["Id"] = 822053
	tWarriorEquipPromot_Reward[3300291]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300291]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300291]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300291]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300291]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300291]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300291]["RewardItem"][4]["Attr"] = "0 3 3"
	
	
	
	-- +6系列
	-- 极品40级盾牌	2洞U龙	+6	加持255	神佑-5
	-- 6阶神魂赠
	tWarriorEquipPromot_Reward[3300292] = {}
	tWarriorEquipPromot_Reward[3300292]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300292]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300292]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300292]["DeleteItem"][1]["Id"] = 3300292
	tWarriorEquipPromot_Reward[3300292]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300292]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300292]["RewardItem"][1]["Id"] = 900009
	tWarriorEquipPromot_Reward[3300292]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3300292]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300292]["RewardItem"][2]["Id"] = 800421
	tWarriorEquipPromot_Reward[3300292]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300292]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300292]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300292]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300292]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300292]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300292]["RewardItem"][4]["Attr"] = "0 3 3"
	
	
	
	
	-- +6系列
	-- 极品15级狂战武器	2洞U龙	+6	加持255	神佑-5
	-- 6阶神魂[暴击]
	tWarriorEquipPromot_Reward[3300293] = {}
	tWarriorEquipPromot_Reward[3300293][1] = {}
	tWarriorEquipPromot_Reward[3300293][1]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300293][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300293][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300293][1]["DeleteItem"][1]["Id"] = 3300293
	tWarriorEquipPromot_Reward[3300293][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300293][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300293][1]["RewardItem"][1]["Id"] = 624029
	tWarriorEquipPromot_Reward[3300293][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3300293][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300293][1]["RewardItem"][2]["Id"] = 801212
	tWarriorEquipPromot_Reward[3300293][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300293][1]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300293][1]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300293][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300293][1]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300293][1]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300293][1]["RewardItem"][4]["Attr"] = "0 3 3"
	
	
	-- 极品100级狂战武器	2洞U龙	+6	加持255	神佑-5
	-- 6阶神魂[粉碎]
	tWarriorEquipPromot_Reward[3300293][2] = {}
	tWarriorEquipPromot_Reward[3300293][2]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300293][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300293][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300293][2]["DeleteItem"][1]["Id"] = 3300293
	tWarriorEquipPromot_Reward[3300293][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300293][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300293][2]["RewardItem"][1]["Id"] = 624029
	tWarriorEquipPromot_Reward[3300293][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3300293][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300293][2]["RewardItem"][2]["Id"] = 801214
	tWarriorEquipPromot_Reward[3300293][2]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300293][2]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300293][2]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300293][2]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300293][2]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300293][2]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300293][2]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- +8系列
	-- 极品15级战头	2洞U龙	+8	加持255	神佑-7
	-- 7阶神魂赠[坚固]
	tWarriorEquipPromot_Reward[3300294] = {}
	tWarriorEquipPromot_Reward[3300294][1] = {}
	tWarriorEquipPromot_Reward[3300294][1]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300294][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300294][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300294][1]["DeleteItem"][1]["Id"] = 3300294
	tWarriorEquipPromot_Reward[3300294][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300294][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300294][1]["RewardItem"][1]["Id"] = 111009
	tWarriorEquipPromot_Reward[3300294][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3300294][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300294][1]["RewardItem"][2]["Id"] = 820074
	tWarriorEquipPromot_Reward[3300294][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300294][1]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300294][1]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300294][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300294][1]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300294][1]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300294][1]["RewardItem"][4]["Attr"] = "0 3 3"
	
	
	-- 极品15级战头	2洞U龙	+8	加持255	神佑-7
	-- 7阶神魂赠[防暴]
	tWarriorEquipPromot_Reward[3300294][2] = {}
	tWarriorEquipPromot_Reward[3300294][2]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300294][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300294][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300294][2]["DeleteItem"][1]["Id"] = 3300294
	tWarriorEquipPromot_Reward[3300294][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300294][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300294][2]["RewardItem"][1]["Id"] = 111009
	tWarriorEquipPromot_Reward[3300294][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3300294][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300294][2]["RewardItem"][2]["Id"] = 820073
	tWarriorEquipPromot_Reward[3300294][2]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300294][2]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300294][2]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300294][2]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300294][2]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300294][2]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300294][2]["RewardItem"][4]["Attr"] = "0 3 3"
	
	
	
	-- +8系列
	-- 极品130级战衣	131209	2洞U龙	+8	加持255	神佑-7
	-- 7阶神魂赠
	tWarriorEquipPromot_Reward[3300295] = {}
	tWarriorEquipPromot_Reward[3300295]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300295]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300295]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300295]["DeleteItem"][1]["Id"] = 3300295
	tWarriorEquipPromot_Reward[3300295]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300295]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300295]["RewardItem"][1]["Id"] = 131009
	tWarriorEquipPromot_Reward[3300295]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3300295]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300295]["RewardItem"][2]["Id"] = 822071
	tWarriorEquipPromot_Reward[3300295]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300295]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300295]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300295]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300295]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300295]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300295]["RewardItem"][4]["Attr"] = "0 3 3"
	
	
	-- +8系列
	-- 极品40级盾牌	900209	2洞U龙	+8	加持255	神佑-7
	-- 7阶神魂赠
	tWarriorEquipPromot_Reward[3300296] = {}
	tWarriorEquipPromot_Reward[3300296]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300296]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300296]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300296]["DeleteItem"][1]["Id"] = 3300296
	tWarriorEquipPromot_Reward[3300296]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300296]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300296]["RewardItem"][1]["Id"] = 900009
	tWarriorEquipPromot_Reward[3300296]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3300296]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300296]["RewardItem"][2]["Id"] = 800422
	tWarriorEquipPromot_Reward[3300296]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300296]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300296]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300296]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300296]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300296]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300296]["RewardItem"][4]["Attr"] = "0 3 3"
	
	
	
	-- +8系列
	-- 极品15级狂战武器	2洞U龙	+8	加持255	神佑-7
	-- 7阶神魂赠[暴击]
	tWarriorEquipPromot_Reward[3300297] = {}
	tWarriorEquipPromot_Reward[3300297][1] = {}
	tWarriorEquipPromot_Reward[3300297][1]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300297][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300297][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300297][1]["DeleteItem"][1]["Id"] = 3300297
	tWarriorEquipPromot_Reward[3300297][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300297][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300297][1]["RewardItem"][1]["Id"] = 624029
	tWarriorEquipPromot_Reward[3300297][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3300297][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300297][1]["RewardItem"][2]["Id"] = 801216
	tWarriorEquipPromot_Reward[3300297][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300297][1]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300297][1]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300297][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300297][1]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300297][1]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300297][1]["RewardItem"][4]["Attr"] = "0 3 3"
	
	
	
	-- 极品15级狂战武器	2洞U龙	+8	加持255	神佑-7
	-- 7阶神魂赠[粉碎]
	tWarriorEquipPromot_Reward[3300297][2] = {}
	tWarriorEquipPromot_Reward[3300297][2]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300297][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300297][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300297][2]["DeleteItem"][1]["Id"] = 3300297
	tWarriorEquipPromot_Reward[3300297][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300297][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300297][2]["RewardItem"][1]["Id"] = 624029
	tWarriorEquipPromot_Reward[3300297][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3300297][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300297][2]["RewardItem"][2]["Id"] = 801218
	tWarriorEquipPromot_Reward[3300297][2]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300297][2]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300297][2]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300297][2]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300297][2]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300297][2]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300297][2]["RewardItem"][4]["Attr"] = "0 3 3"
	
	
	
	
	------------------------------------赠品战士装备----------------------------------------
	-- 极品15级战头	111009	2洞U龙	+6	加持255	神佑-5
	-- 6阶神魂赠	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3300298] = {}
	tWarriorEquipPromot_Reward[3300298]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300298]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300298]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300298]["DeleteItem"][1]["Id"] = 3300298
	tWarriorEquipPromot_Reward[3300298]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300298]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300298]["RewardItem"][1]["Id"] = 111009
	tWarriorEquipPromot_Reward[3300298]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3300298]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300298]["RewardItem"][2]["Id"] = 820071
	tWarriorEquipPromot_Reward[3300298]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300298]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300298]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300298]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300298]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300298]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300298]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 极品15级战衣	131009	2洞U龙	+6	加持255	神佑-5
	-- 6阶神魂赠	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3300299] = {}
	tWarriorEquipPromot_Reward[3300299]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300299]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300299]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300299]["DeleteItem"][1]["Id"] = 3300299
	tWarriorEquipPromot_Reward[3300299]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300299]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300299]["RewardItem"][1]["Id"] = 131009
	tWarriorEquipPromot_Reward[3300299]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3300299]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300299]["RewardItem"][2]["Id"] = 822053
	tWarriorEquipPromot_Reward[3300299]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300299]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300299]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300299]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300299]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300299]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300299]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 极品15级盾牌	900009(40级)	2洞U龙	+6	加持255	神佑-5
	-- 6阶神魂赠	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3300300] = {}
	tWarriorEquipPromot_Reward[3300300]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300300]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300300]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300300]["DeleteItem"][1]["Id"] = 3300300
	tWarriorEquipPromot_Reward[3300300]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300300]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300300]["RewardItem"][1]["Id"] = 900009
	tWarriorEquipPromot_Reward[3300300]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3300300]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300300]["RewardItem"][2]["Id"] = 800421
	tWarriorEquipPromot_Reward[3300300]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300300]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300300]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300300]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300300]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300300]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300300]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 极品15级狂战武器		2洞U龙	+6	加持255	神佑-5
	-- 六阶拳套神魂[暴击]	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3300301] = {}
	tWarriorEquipPromot_Reward[3300301][1] = {}
	tWarriorEquipPromot_Reward[3300301][1]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300301][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300301][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300301][1]["DeleteItem"][1]["Id"] = 3300301
	tWarriorEquipPromot_Reward[3300301][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300301][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300301][1]["RewardItem"][1]["Id"] = 624029
	tWarriorEquipPromot_Reward[3300301][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3300301][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300301][1]["RewardItem"][2]["Id"] = 801212
	tWarriorEquipPromot_Reward[3300301][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300301][1]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300301][1]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300301][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300301][1]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300301][1]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300301][1]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 极品15级狂战武器		2洞U龙	+6	加持255	神佑-5
	-- 六阶拳套神魂[粉碎]	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3300301][2] = {}
	tWarriorEquipPromot_Reward[3300301][2]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300301][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300301][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300301][2]["DeleteItem"][1]["Id"] = 3300301
	tWarriorEquipPromot_Reward[3300301][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300301][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300301][2]["RewardItem"][1]["Id"] = 624029
	tWarriorEquipPromot_Reward[3300301][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3300301][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300301][2]["RewardItem"][2]["Id"] = 801214
	tWarriorEquipPromot_Reward[3300301][2]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300301][2]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300301][2]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300301][2]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300301][2]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300301][2]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300301][2]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 极品15级战头	111009	2洞U龙	+8	加持255	神佑-7
	-- 七阶头部神魂[坚固]	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3300302] = {}
	tWarriorEquipPromot_Reward[3300302][1] = {}
	tWarriorEquipPromot_Reward[3300302][1]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300302][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300302][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300302][1]["DeleteItem"][1]["Id"] = 3300302
	tWarriorEquipPromot_Reward[3300302][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300302][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300302][1]["RewardItem"][1]["Id"] = 111009
	tWarriorEquipPromot_Reward[3300302][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3300302][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300302][1]["RewardItem"][2]["Id"] = 820074
	tWarriorEquipPromot_Reward[3300302][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300302][1]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300302][1]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300302][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300302][1]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300302][1]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300302][1]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 极品15级战头	111009	2洞U龙	+8	加持255	神佑-7
	-- 七阶头部神魂[防暴]	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3300302][2] = {}
	tWarriorEquipPromot_Reward[3300302][2]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300302][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300302][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300302][2]["DeleteItem"][1]["Id"] = 3300302
	tWarriorEquipPromot_Reward[3300302][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300302][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300302][2]["RewardItem"][1]["Id"] = 111009
	tWarriorEquipPromot_Reward[3300302][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3300302][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300302][2]["RewardItem"][2]["Id"] = 820073
	tWarriorEquipPromot_Reward[3300302][2]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300302][2]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300302][2]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300302][2]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300302][2]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300302][2]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300302][2]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 极品15级战衣	131009	2洞U龙	+8	加持255	神佑-7
	-- 7阶神魂赠	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3300303] = {}
	tWarriorEquipPromot_Reward[3300303]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300303]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300303]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300303]["DeleteItem"][1]["Id"] = 3300303
	tWarriorEquipPromot_Reward[3300303]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300303]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300303]["RewardItem"][1]["Id"] = 131009
	tWarriorEquipPromot_Reward[3300303]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3300303]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300303]["RewardItem"][2]["Id"] = 822071
	tWarriorEquipPromot_Reward[3300303]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300303]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300303]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300303]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300303]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300303]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300303]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 极品15级盾牌	900009(40级)	2洞U龙	+8	加持255	神佑-7
	-- 7阶神魂赠	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3300304] = {}
	tWarriorEquipPromot_Reward[3300304]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300304]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300304]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300304]["DeleteItem"][1]["Id"] = 3300304
	tWarriorEquipPromot_Reward[3300304]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300304]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300304]["RewardItem"][1]["Id"] = 900009
	tWarriorEquipPromot_Reward[3300304]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3300304]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300304]["RewardItem"][2]["Id"] = 800422
	tWarriorEquipPromot_Reward[3300304]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300304]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300304]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300304]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300304]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300304]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300304]["RewardItem"][4]["Attr"] = "0 3 3"

	-- 极品15级狂战武器		2洞U龙	+8	加持255	神佑-7
	-- 七阶拳套神魂[暴击]	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3300305] = {}
	tWarriorEquipPromot_Reward[3300305][1] = {}
	tWarriorEquipPromot_Reward[3300305][1]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300305][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300305][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300305][1]["DeleteItem"][1]["Id"] = 3300305
	tWarriorEquipPromot_Reward[3300305][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300305][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300305][1]["RewardItem"][1]["Id"] = 624029
	tWarriorEquipPromot_Reward[3300305][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3300305][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300305][1]["RewardItem"][2]["Id"] = 801216
	tWarriorEquipPromot_Reward[3300305][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300305][1]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300305][1]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300305][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300305][1]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300305][1]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300305][1]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 极品15级狂战武器		2洞U龙	+8	加持255	神佑-7
	-- 七阶拳套神魂[粉碎]	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3300305][2] = {}
	tWarriorEquipPromot_Reward[3300305][2]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300305][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300305][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300305][2]["DeleteItem"][1]["Id"] = 3300305
	tWarriorEquipPromot_Reward[3300305][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300305][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300305][2]["RewardItem"][1]["Id"] = 624029
	tWarriorEquipPromot_Reward[3300305][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3300305][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300305][2]["RewardItem"][2]["Id"] = 801218
	tWarriorEquipPromot_Reward[3300305][2]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300305][2]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300305][2]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300305][2]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300305][2]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300305][2]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300305][2]["RewardItem"][4]["Attr"] = "0 3 3"

------------------------------------非赠品战士装备----------------------------------------
	-- +6系列
	-- 极品15级战头	2洞U龙	+6	加持255	神佑-5
	-- 6阶神魂赠
	tWarriorEquipPromot_Reward[3300515] = {}
	tWarriorEquipPromot_Reward[3300515]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300515]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300515]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300515]["DeleteItem"][1]["Id"] = 3300515
	tWarriorEquipPromot_Reward[3300515]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300515]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300515]["RewardItem"][1]["Id"] = 111009
	tWarriorEquipPromot_Reward[3300515]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3300515]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300515]["RewardItem"][2]["Id"] = 820071
	tWarriorEquipPromot_Reward[3300515]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300515]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300515]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300515]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300515]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300515]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300515]["RewardItem"][4]["Attr"] = "0 3 3"
	
	
	-- +6系列
	-- 极品15级战衣	2洞U龙	+6	加持255	神佑-5
	-- 6阶神魂赠
	tWarriorEquipPromot_Reward[3300516] = {}
	tWarriorEquipPromot_Reward[3300516]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300516]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300516]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300516]["DeleteItem"][1]["Id"] = 3300516
	tWarriorEquipPromot_Reward[3300516]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300516]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300516]["RewardItem"][1]["Id"] = 131009
	tWarriorEquipPromot_Reward[3300516]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3300516]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300516]["RewardItem"][2]["Id"] = 822053
	tWarriorEquipPromot_Reward[3300516]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300516]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300516]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300516]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300516]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300516]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300516]["RewardItem"][4]["Attr"] = "0 3 3"
	
	
	
	-- +6系列
	-- 极品40级盾牌	2洞U龙	+6	加持255	神佑-5
	-- 6阶神魂赠
	tWarriorEquipPromot_Reward[3300517] = {}
	tWarriorEquipPromot_Reward[3300517]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300517]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300517]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300517]["DeleteItem"][1]["Id"] = 3300517
	tWarriorEquipPromot_Reward[3300517]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300517]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300517]["RewardItem"][1]["Id"] = 900009
	tWarriorEquipPromot_Reward[3300517]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3300517]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300517]["RewardItem"][2]["Id"] = 800421
	tWarriorEquipPromot_Reward[3300517]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300517]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300517]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300517]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300517]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300517]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300517]["RewardItem"][4]["Attr"] = "0 3 3"
	
	
	
	
	-- +6系列
	-- 极品15级狂战武器	2洞U龙	+6	加持255	神佑-5
	-- 6阶神魂[暴击]
	tWarriorEquipPromot_Reward[3300518] = {}
	tWarriorEquipPromot_Reward[3300518][1] = {}
	tWarriorEquipPromot_Reward[3300518][1]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300518][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300518][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300518][1]["DeleteItem"][1]["Id"] = 3300518
	tWarriorEquipPromot_Reward[3300518][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300518][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300518][1]["RewardItem"][1]["Id"] = 624029
	tWarriorEquipPromot_Reward[3300518][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3300518][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300518][1]["RewardItem"][2]["Id"] = 801212
	tWarriorEquipPromot_Reward[3300518][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300518][1]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300518][1]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300518][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300518][1]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300518][1]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300518][1]["RewardItem"][4]["Attr"] = "0 3 3"
	
	
	-- 极品100级狂战武器	2洞U龙	+6	加持255	神佑-5
	-- 6阶神魂[粉碎]
	tWarriorEquipPromot_Reward[3300518][2] = {}
	tWarriorEquipPromot_Reward[3300518][2]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300518][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300518][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300518][2]["DeleteItem"][1]["Id"] = 3300518
	tWarriorEquipPromot_Reward[3300518][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300518][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300518][2]["RewardItem"][1]["Id"] = 624029
	tWarriorEquipPromot_Reward[3300518][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3300518][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300518][2]["RewardItem"][2]["Id"] = 801214
	tWarriorEquipPromot_Reward[3300518][2]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300518][2]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300518][2]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300518][2]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300518][2]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300518][2]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300518][2]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- +8系列
	-- 极品15级战头	2洞U龙	+8	加持255	神佑-7
	-- 7阶神魂赠[坚固]
	tWarriorEquipPromot_Reward[3300519] = {}
	tWarriorEquipPromot_Reward[3300519][1] = {}
	tWarriorEquipPromot_Reward[3300519][1]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300519][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300519][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300519][1]["DeleteItem"][1]["Id"] = 3300519
	tWarriorEquipPromot_Reward[3300519][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300519][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300519][1]["RewardItem"][1]["Id"] = 111009
	tWarriorEquipPromot_Reward[3300519][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3300519][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300519][1]["RewardItem"][2]["Id"] = 820074
	tWarriorEquipPromot_Reward[3300519][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300519][1]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300519][1]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300519][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300519][1]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300519][1]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300519][1]["RewardItem"][4]["Attr"] = "0 3 3"
	
	
	-- 极品15级战头	2洞U龙	+8	加持255	神佑-7
	-- 7阶神魂赠[防暴]
	tWarriorEquipPromot_Reward[3300519][2] = {}
	tWarriorEquipPromot_Reward[3300519][2]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300519][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300519][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300519][2]["DeleteItem"][1]["Id"] = 3300519
	tWarriorEquipPromot_Reward[3300519][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300519][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300519][2]["RewardItem"][1]["Id"] = 111009
	tWarriorEquipPromot_Reward[3300519][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3300519][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300519][2]["RewardItem"][2]["Id"] = 820073
	tWarriorEquipPromot_Reward[3300519][2]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300519][2]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300519][2]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300519][2]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300519][2]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300519][2]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300519][2]["RewardItem"][4]["Attr"] = "0 3 3"
	
	
	
	-- +8系列
	-- 极品130级战衣	131209	2洞U龙	+8	加持255	神佑-7
	-- 7阶神魂赠
	tWarriorEquipPromot_Reward[3300520] = {}
	tWarriorEquipPromot_Reward[3300520]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300520]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300520]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300520]["DeleteItem"][1]["Id"] = 3300520
	tWarriorEquipPromot_Reward[3300520]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300520]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300520]["RewardItem"][1]["Id"] = 131009
	tWarriorEquipPromot_Reward[3300520]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3300520]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300520]["RewardItem"][2]["Id"] = 822071
	tWarriorEquipPromot_Reward[3300520]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300520]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300520]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300520]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300520]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300520]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300520]["RewardItem"][4]["Attr"] = "0 3 3"
	
	
	-- +8系列
	-- 极品40级盾牌	900209	2洞U龙	+8	加持255	神佑-7
	-- 7阶神魂赠
	tWarriorEquipPromot_Reward[3300521] = {}
	tWarriorEquipPromot_Reward[3300521]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300521]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300521]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300521]["DeleteItem"][1]["Id"] = 3300521
	tWarriorEquipPromot_Reward[3300521]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300521]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300521]["RewardItem"][1]["Id"] = 900009
	tWarriorEquipPromot_Reward[3300521]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3300521]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300521]["RewardItem"][2]["Id"] = 800422
	tWarriorEquipPromot_Reward[3300521]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300521]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300521]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300521]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300521]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300521]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300521]["RewardItem"][4]["Attr"] = "0 3 3"
	
	
	
	-- +8系列
	-- 极品15级狂战武器	2洞U龙	+8	加持255	神佑-7
	-- 7阶神魂赠[暴击]
	tWarriorEquipPromot_Reward[3300522] = {}
	tWarriorEquipPromot_Reward[3300522][1] = {}
	tWarriorEquipPromot_Reward[3300522][1]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300522][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300522][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300522][1]["DeleteItem"][1]["Id"] = 3300522
	tWarriorEquipPromot_Reward[3300522][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300522][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300522][1]["RewardItem"][1]["Id"] = 624029
	tWarriorEquipPromot_Reward[3300522][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3300522][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300522][1]["RewardItem"][2]["Id"] = 801216
	tWarriorEquipPromot_Reward[3300522][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300522][1]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300522][1]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300522][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300522][1]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300522][1]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300522][1]["RewardItem"][4]["Attr"] = "0 3 3"
	
	
	
	-- 极品15级狂战武器	2洞U龙	+8	加持255	神佑-7
	-- 7阶神魂赠[粉碎]
	tWarriorEquipPromot_Reward[3300522][2] = {}
	tWarriorEquipPromot_Reward[3300522][2]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300522][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300522][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300522][2]["DeleteItem"][1]["Id"] = 3300522
	tWarriorEquipPromot_Reward[3300522][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300522][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300522][2]["RewardItem"][1]["Id"] = 624029
	tWarriorEquipPromot_Reward[3300522][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3300522][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300522][2]["RewardItem"][2]["Id"] = 801218
	tWarriorEquipPromot_Reward[3300522][2]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300522][2]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300522][2]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300522][2]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300522][2]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300522][2]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300522][2]["RewardItem"][4]["Attr"] = "0 3 3"
	
	
	
	
------------------------------------赠品战士装备----------------------------------------
	-- 极品15级战头	111009	2洞U龙	+6	加持255	神佑-5
	-- 6阶神魂赠	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3300523] = {}
	tWarriorEquipPromot_Reward[3300523]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300523]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300523]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300523]["DeleteItem"][1]["Id"] = 3300523
	tWarriorEquipPromot_Reward[3300523]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300523]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300523]["RewardItem"][1]["Id"] = 111009
	tWarriorEquipPromot_Reward[3300523]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3300523]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300523]["RewardItem"][2]["Id"] = 820071
	tWarriorEquipPromot_Reward[3300523]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300523]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300523]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300523]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300523]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300523]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300523]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 极品15级战衣	131009	2洞U龙	+6	加持255	神佑-5
	-- 6阶神魂赠	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3300524] = {}
	tWarriorEquipPromot_Reward[3300524]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300524]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300524]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300524]["DeleteItem"][1]["Id"] = 3300524
	tWarriorEquipPromot_Reward[3300524]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300524]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300524]["RewardItem"][1]["Id"] = 131009
	tWarriorEquipPromot_Reward[3300524]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3300524]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300524]["RewardItem"][2]["Id"] = 822053
	tWarriorEquipPromot_Reward[3300524]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300524]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300524]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300524]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300524]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300524]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300524]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 极品15级盾牌	900009(40级)	2洞U龙	+6	加持255	神佑-5
	-- 6阶神魂赠	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3300525] = {}
	tWarriorEquipPromot_Reward[3300525]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300525]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300525]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300525]["DeleteItem"][1]["Id"] = 3300525
	tWarriorEquipPromot_Reward[3300525]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300525]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300525]["RewardItem"][1]["Id"] = 900009
	tWarriorEquipPromot_Reward[3300525]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3300525]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300525]["RewardItem"][2]["Id"] = 800421
	tWarriorEquipPromot_Reward[3300525]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300525]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300525]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300525]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300525]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300525]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300525]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 极品15级狂战武器		2洞U龙	+6	加持255	神佑-5
	-- 六阶拳套神魂[暴击]	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3300526] = {}
	tWarriorEquipPromot_Reward[3300526][1] = {}
	tWarriorEquipPromot_Reward[3300526][1]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300526][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300526][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300526][1]["DeleteItem"][1]["Id"] = 3300526
	tWarriorEquipPromot_Reward[3300526][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300526][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300526][1]["RewardItem"][1]["Id"] = 624029
	tWarriorEquipPromot_Reward[3300526][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3300526][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300526][1]["RewardItem"][2]["Id"] = 801212
	tWarriorEquipPromot_Reward[3300526][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300526][1]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300526][1]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300526][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300526][1]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300526][1]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300526][1]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 极品15级狂战武器		2洞U龙	+6	加持255	神佑-5
	-- 六阶拳套神魂[粉碎]	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3300526][2] = {}
	tWarriorEquipPromot_Reward[3300526][2]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300526][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300526][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300526][2]["DeleteItem"][1]["Id"] = 3300526
	tWarriorEquipPromot_Reward[3300526][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300526][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300526][2]["RewardItem"][1]["Id"] = 624029
	tWarriorEquipPromot_Reward[3300526][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013"
	tWarriorEquipPromot_Reward[3300526][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300526][2]["RewardItem"][2]["Id"] = 801214
	tWarriorEquipPromot_Reward[3300526][2]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300526][2]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300526][2]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300526][2]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300526][2]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300526][2]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300526][2]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 极品15级战头	111009	2洞U龙	+8	加持255	神佑-7
	-- 七阶头部神魂[坚固]	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3300527] = {}
	tWarriorEquipPromot_Reward[3300527][1] = {}
	tWarriorEquipPromot_Reward[3300527][1]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300527][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300527][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300527][1]["DeleteItem"][1]["Id"] = 3300527
	tWarriorEquipPromot_Reward[3300527][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300527][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300527][1]["RewardItem"][1]["Id"] = 111009
	tWarriorEquipPromot_Reward[3300527][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3300527][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300527][1]["RewardItem"][2]["Id"] = 820074
	tWarriorEquipPromot_Reward[3300527][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300527][1]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300527][1]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300527][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300527][1]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300527][1]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300527][1]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 极品15级战头	111009	2洞U龙	+8	加持255	神佑-7
	-- 七阶头部神魂[防暴]	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3300527][2] = {}
	tWarriorEquipPromot_Reward[3300527][2]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300527][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300527][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300527][2]["DeleteItem"][1]["Id"] = 3300527
	tWarriorEquipPromot_Reward[3300527][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300527][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300527][2]["RewardItem"][1]["Id"] = 111009
	tWarriorEquipPromot_Reward[3300527][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3300527][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300527][2]["RewardItem"][2]["Id"] = 820073
	tWarriorEquipPromot_Reward[3300527][2]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300527][2]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300527][2]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300527][2]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300527][2]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300527][2]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300527][2]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 极品15级战衣	131009	2洞U龙	+8	加持255	神佑-7
	-- 7阶神魂赠	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3300528] = {}
	tWarriorEquipPromot_Reward[3300528]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300528]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300528]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300528]["DeleteItem"][1]["Id"] = 3300528
	tWarriorEquipPromot_Reward[3300528]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300528]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300528]["RewardItem"][1]["Id"] = 131009
	tWarriorEquipPromot_Reward[3300528]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3300528]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300528]["RewardItem"][2]["Id"] = 822071
	tWarriorEquipPromot_Reward[3300528]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300528]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300528]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300528]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300528]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300528]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300528]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 极品15级盾牌	900009(40级)	2洞U龙	+8	加持255	神佑-7
	-- 7阶神魂赠	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3300529] = {}
	tWarriorEquipPromot_Reward[3300529]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300529]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300529]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300529]["DeleteItem"][1]["Id"] = 3300529
	tWarriorEquipPromot_Reward[3300529]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300529]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300529]["RewardItem"][1]["Id"] = 900009
	tWarriorEquipPromot_Reward[3300529]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3300529]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300529]["RewardItem"][2]["Id"] = 800422
	tWarriorEquipPromot_Reward[3300529]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300529]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300529]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300529]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300529]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300529]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300529]["RewardItem"][4]["Attr"] = "0 3 3"

	-- 极品15级狂战武器		2洞U龙	+8	加持255	神佑-7
	-- 七阶拳套神魂[暴击]	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3300530] = {}
	tWarriorEquipPromot_Reward[3300530][1] = {}
	tWarriorEquipPromot_Reward[3300530][1]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300530][1]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300530][1]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300530][1]["DeleteItem"][1]["Id"] = 3300530
	tWarriorEquipPromot_Reward[3300530][1]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300530][1]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300530][1]["RewardItem"][1]["Id"] = 624029
	tWarriorEquipPromot_Reward[3300530][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3300530][1]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300530][1]["RewardItem"][2]["Id"] = 801216
	tWarriorEquipPromot_Reward[3300530][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300530][1]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300530][1]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300530][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300530][1]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300530][1]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300530][1]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 极品15级狂战武器		2洞U龙	+8	加持255	神佑-7
	-- 七阶拳套神魂[粉碎]	1个赠品龙珠卷	30卷赠品流星卷
	tWarriorEquipPromot_Reward[3300530][2] = {}
	tWarriorEquipPromot_Reward[3300530][2]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[3300530][2]["DeleteItem"] = {}
	tWarriorEquipPromot_Reward[3300530][2]["DeleteItem"][1] = {}
	tWarriorEquipPromot_Reward[3300530][2]["DeleteItem"][1]["Id"] = 3300530
	tWarriorEquipPromot_Reward[3300530][2]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[3300530][2]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[3300530][2]["RewardItem"][1]["Id"] = 624029
	tWarriorEquipPromot_Reward[3300530][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013"
	tWarriorEquipPromot_Reward[3300530][2]["RewardItem"][2] = {}
	tWarriorEquipPromot_Reward[3300530][2]["RewardItem"][2]["Id"] = 801218
	tWarriorEquipPromot_Reward[3300530][2]["RewardItem"][2]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300530][2]["RewardItem"][3] = {}
	tWarriorEquipPromot_Reward[3300530][2]["RewardItem"][3]["Id"] = 1088000
	tWarriorEquipPromot_Reward[3300530][2]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorEquipPromot_Reward[3300530][2]["RewardItem"][4] = {}
	tWarriorEquipPromot_Reward[3300530][2]["RewardItem"][4]["Id"] = 3001270
	tWarriorEquipPromot_Reward[3300530][2]["RewardItem"][4]["Attr"] = "0 3 3"
	
----------------------------------------------------------------铁扇门-----------------------------------------------------------

--2504003-2504014 
-- 3301750 +6极品铁扇门头盔礼包
	tWarriorEquipPromot_Reward[52] = {}
	tWarriorEquipPromot_Reward[52]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[52]["EmoneyBuyLog"] = "250	4003	%d	%d	1	"
	tWarriorEquipPromot_Reward[52]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[52]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[52]["RewardItem"][1]["Id"] = 3301750
	tWarriorEquipPromot_Reward[52]["RewardItem"][1]["Attr"] = "0 1"
-- 3301753 +8极品铁扇门头盔礼包
	tWarriorEquipPromot_Reward[53] = {}
	tWarriorEquipPromot_Reward[53]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[53]["EmoneyBuyLog"] = "250	4004	%d	%d	1	"
	tWarriorEquipPromot_Reward[53]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[53]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[53]["RewardItem"][1]["Id"] = 3301753
	tWarriorEquipPromot_Reward[53]["RewardItem"][1]["Attr"] = "0 1"
-- 3301751 +6极品铁扇门盔甲礼包
	tWarriorEquipPromot_Reward[54] = {}
	tWarriorEquipPromot_Reward[54]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[54]["EmoneyBuyLog"] = "250	4005	%d	%d	1	"
	tWarriorEquipPromot_Reward[54]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[54]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[54]["RewardItem"][1]["Id"] = 3301751
	tWarriorEquipPromot_Reward[54]["RewardItem"][1]["Attr"] = "0 1"
-- 3301754 +8极品铁扇门盔甲礼包
	tWarriorEquipPromot_Reward[55] = {}
	tWarriorEquipPromot_Reward[55]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[55]["EmoneyBuyLog"] = "250	4006	%d	%d	1	"
	tWarriorEquipPromot_Reward[55]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[55]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[55]["RewardItem"][1]["Id"] = 3301754
	tWarriorEquipPromot_Reward[55]["RewardItem"][1]["Attr"] = "0 1"
-- 3301752 +6极品铁扇门武器礼包
	tWarriorEquipPromot_Reward[56] = {}
	tWarriorEquipPromot_Reward[56]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[56]["EmoneyBuyLog"] = "250	4007	%d	%d	1	"
	tWarriorEquipPromot_Reward[56]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[56]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[56]["RewardItem"][1]["Id"] = 3301752
	tWarriorEquipPromot_Reward[56]["RewardItem"][1]["Attr"] = "0 1"
-- 3301755 +8极品铁扇门武器礼包
	tWarriorEquipPromot_Reward[57] = {}
	tWarriorEquipPromot_Reward[57]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[57]["EmoneyBuyLog"] = "250	4008	%d	%d	1	"
	tWarriorEquipPromot_Reward[57]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[57]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[57]["RewardItem"][1]["Id"] = 3301755
	tWarriorEquipPromot_Reward[57]["RewardItem"][1]["Attr"] = "0 1"

-- 3301756 +6极品铁扇门头盔赠品包
	tWarriorEquipPromot_Reward[63] = {}
	tWarriorEquipPromot_Reward[63]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[63]["EmoneyBuyLog"] = "250	4009	%d	%d	1	"
	tWarriorEquipPromot_Reward[63]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[63]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[63]["RewardItem"][1]["Id"] = 3301756
	tWarriorEquipPromot_Reward[63]["RewardItem"][1]["Attr"] = "0 1"
	
-- 3301759 +8极品铁扇门头盔赠品包
	tWarriorEquipPromot_Reward[64] = {}
	tWarriorEquipPromot_Reward[64]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[64]["EmoneyBuyLog"] = "250	4010	%d	%d	1	"
	tWarriorEquipPromot_Reward[64]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[64]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[64]["RewardItem"][1]["Id"] = 3301759
	tWarriorEquipPromot_Reward[64]["RewardItem"][1]["Attr"] = "0 1"
	
-- 3301757 +6极品铁扇门盔甲赠品包
	tWarriorEquipPromot_Reward[65] = {}
	tWarriorEquipPromot_Reward[65]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[65]["EmoneyBuyLog"] = "250	4011	%d	%d	1	"
	tWarriorEquipPromot_Reward[65]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[65]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[65]["RewardItem"][1]["Id"] = 3301757
	tWarriorEquipPromot_Reward[65]["RewardItem"][1]["Attr"] = "0 1"
	
	
-- 3301760 +8极品铁扇门盔甲赠品包
	tWarriorEquipPromot_Reward[66] = {}
	tWarriorEquipPromot_Reward[66]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[66]["EmoneyBuyLog"] = "250	4012	%d	%d	1	"
	tWarriorEquipPromot_Reward[66]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[66]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[66]["RewardItem"][1]["Id"] = 3301760
	tWarriorEquipPromot_Reward[66]["RewardItem"][1]["Attr"] = "0 1"
	
-- 3301758 +6极品铁扇门武器赠品包
	tWarriorEquipPromot_Reward[67] = {}
	tWarriorEquipPromot_Reward[67]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[67]["EmoneyBuyLog"] = "250	4013	%d	%d	1	"
	tWarriorEquipPromot_Reward[67]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[67]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[67]["RewardItem"][1]["Id"] = 3301758
	tWarriorEquipPromot_Reward[67]["RewardItem"][1]["Attr"] = "0 1"

-- 3301761 +8极品铁扇门武器赠品包
	tWarriorEquipPromot_Reward[68] = {}
	tWarriorEquipPromot_Reward[68]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[68]["EmoneyBuyLog"] = "250	4014	%d	%d	1	"
	tWarriorEquipPromot_Reward[68]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[68]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[68]["RewardItem"][1]["Id"] = 3301761
	tWarriorEquipPromot_Reward[68]["RewardItem"][1]["Attr"] = "0 1"
----------------------------------------------------------------海盗-----------------------------------------------------------
--
	tWarriorEquipPromot_Reward[72] = {}
	tWarriorEquipPromot_Reward[72]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[72]["EmoneyBuyLog"] = "250	4062	%d	%d	1	"
	tWarriorEquipPromot_Reward[72]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[72]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[72]["RewardItem"][1]["Id"] = 3307651
	tWarriorEquipPromot_Reward[72]["RewardItem"][1]["Attr"] = "0 1"
	
--
	tWarriorEquipPromot_Reward[73] = {}
	tWarriorEquipPromot_Reward[73]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[73]["EmoneyBuyLog"] = "250	4063	%d	%d	1	"
	tWarriorEquipPromot_Reward[73]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[73]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[73]["RewardItem"][1]["Id"] = 3307643
	tWarriorEquipPromot_Reward[73]["RewardItem"][1]["Attr"] = "0 1"
	
	tWarriorEquipPromot_Reward[74] = {}
	tWarriorEquipPromot_Reward[74]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[74]["EmoneyBuyLog"] = "250	4064	%d	%d	1	"
	tWarriorEquipPromot_Reward[74]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[74]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[74]["RewardItem"][1]["Id"] = 3307649
	tWarriorEquipPromot_Reward[74]["RewardItem"][1]["Attr"] = "0 1"
	
	tWarriorEquipPromot_Reward[75] = {}
	tWarriorEquipPromot_Reward[75]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[75]["EmoneyBuyLog"] = "250	4065	%d	%d	1	"
	tWarriorEquipPromot_Reward[75]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[75]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[75]["RewardItem"][1]["Id"] = 3307641
	tWarriorEquipPromot_Reward[75]["RewardItem"][1]["Attr"] = "0 1"
	
	tWarriorEquipPromot_Reward[76] = {}
	tWarriorEquipPromot_Reward[76]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[76]["EmoneyBuyLog"] = "250	4066	%d	%d	1	"
	tWarriorEquipPromot_Reward[76]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[76]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[76]["RewardItem"][1]["Id"] = 3307648
	tWarriorEquipPromot_Reward[76]["RewardItem"][1]["Attr"] = "0 1"
	
	tWarriorEquipPromot_Reward[77] = {}
	tWarriorEquipPromot_Reward[77]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[77]["EmoneyBuyLog"] = "250	4067	%d	%d	1	"
	tWarriorEquipPromot_Reward[77]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[77]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[77]["RewardItem"][1]["Id"] = 3307640
	tWarriorEquipPromot_Reward[77]["RewardItem"][1]["Attr"] = "0 1"
	
	tWarriorEquipPromot_Reward[78] = {}
	tWarriorEquipPromot_Reward[78]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[78]["EmoneyBuyLog"] = "250	4068	%d	%d	1	"
	tWarriorEquipPromot_Reward[78]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[78]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[78]["RewardItem"][1]["Id"] = 3307650
	tWarriorEquipPromot_Reward[78]["RewardItem"][1]["Attr"] = "0 1"
	
	tWarriorEquipPromot_Reward[79] = {}
	tWarriorEquipPromot_Reward[79]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[79]["EmoneyBuyLog"] = "250	4069	%d	%d	1	"
	tWarriorEquipPromot_Reward[79]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[79]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[79]["RewardItem"][1]["Id"] = 3307642
	tWarriorEquipPromot_Reward[79]["RewardItem"][1]["Attr"] = "0 1"
	
	tWarriorEquipPromot_Reward[82] = {}
	tWarriorEquipPromot_Reward[82]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[82]["EmoneyBuyLog"] = "250	4070	%d	%d	1	"
	tWarriorEquipPromot_Reward[82]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[82]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[82]["RewardItem"][1]["Id"] = 3307655
	tWarriorEquipPromot_Reward[82]["RewardItem"][1]["Attr"] = "0 1"
	
	tWarriorEquipPromot_Reward[83] = {}
	tWarriorEquipPromot_Reward[83]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[83]["EmoneyBuyLog"] = "250	4071	%d	%d	1	"
	tWarriorEquipPromot_Reward[83]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[83]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[83]["RewardItem"][1]["Id"] = 3307647
	tWarriorEquipPromot_Reward[83]["RewardItem"][1]["Attr"] = "0 1"
	
	tWarriorEquipPromot_Reward[84] = {}
	tWarriorEquipPromot_Reward[84]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[84]["EmoneyBuyLog"] = "250	4072	%d	%d	1	"
	tWarriorEquipPromot_Reward[84]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[84]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[84]["RewardItem"][1]["Id"] = 3307653
	tWarriorEquipPromot_Reward[84]["RewardItem"][1]["Attr"] = "0 1"
	
	tWarriorEquipPromot_Reward[85] = {}
	tWarriorEquipPromot_Reward[85]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[85]["EmoneyBuyLog"] = "250	4073	%d	%d	1	"
	tWarriorEquipPromot_Reward[85]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[85]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[85]["RewardItem"][1]["Id"] = 3307645
	tWarriorEquipPromot_Reward[85]["RewardItem"][1]["Attr"] = "0 1"
	
	tWarriorEquipPromot_Reward[86] = {}
	tWarriorEquipPromot_Reward[86]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[86]["EmoneyBuyLog"] = "250	4074	%d	%d	1	"
	tWarriorEquipPromot_Reward[86]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[86]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[86]["RewardItem"][1]["Id"] = 3307652
	tWarriorEquipPromot_Reward[86]["RewardItem"][1]["Attr"] = "0 1"
	
	tWarriorEquipPromot_Reward[87] = {}
	tWarriorEquipPromot_Reward[87]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[87]["EmoneyBuyLog"] = "250	4075	%d	%d	1	"
	tWarriorEquipPromot_Reward[87]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[87]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[87]["RewardItem"][1]["Id"] = 3307644
	tWarriorEquipPromot_Reward[87]["RewardItem"][1]["Attr"] = "0 1"
	
	tWarriorEquipPromot_Reward[88] = {}
	tWarriorEquipPromot_Reward[88]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[88]["EmoneyBuyLog"] = "250	4076	%d	%d	1	"
	tWarriorEquipPromot_Reward[88]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[88]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[88]["RewardItem"][1]["Id"] = 3307654
	tWarriorEquipPromot_Reward[88]["RewardItem"][1]["Attr"] = "0 1"
	
	tWarriorEquipPromot_Reward[89] = {}
	tWarriorEquipPromot_Reward[89]["LogId"] = 12000459
	tWarriorEquipPromot_Reward[89]["EmoneyBuyLog"] = "250	4077	%d	%d	1	"
	tWarriorEquipPromot_Reward[89]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[89]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[89]["RewardItem"][1]["Id"] = 3307646
	tWarriorEquipPromot_Reward[89]["RewardItem"][1]["Attr"] = "0 1"

----------------------------------------------------------------雷神-----------------------------------------------------------
	tWarriorEquipPromot_Reward[9011] = {}
	tWarriorEquipPromot_Reward[9011]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[9011]["EmoneyBuyLog"] = "250	4026	%d	%d	1	"
	tWarriorEquipPromot_Reward[9011]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[9011]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[9011]["RewardItem"][1]["Id"] = 3319194
	tWarriorEquipPromot_Reward[9011]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[9012] = {}
	tWarriorEquipPromot_Reward[9012]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[9012]["EmoneyBuyLog"] = "250	4027	%d	%d	1	"
	tWarriorEquipPromot_Reward[9012]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[9012]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[9012]["RewardItem"][1]["Id"] = 3319186
	tWarriorEquipPromot_Reward[9012]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[9013] = {}
	tWarriorEquipPromot_Reward[9013]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[9013]["EmoneyBuyLog"] = "250	4028	%d	%d	1	"
	tWarriorEquipPromot_Reward[9013]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[9013]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[9013]["RewardItem"][1]["Id"] = 3319192
	tWarriorEquipPromot_Reward[9013]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[9014] = {}
	tWarriorEquipPromot_Reward[9014]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[9014]["EmoneyBuyLog"] = "250	4029	%d	%d	1	"
	tWarriorEquipPromot_Reward[9014]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[9014]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[9014]["RewardItem"][1]["Id"] = 3319184
	tWarriorEquipPromot_Reward[9014]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[9015] = {}
	tWarriorEquipPromot_Reward[9015]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[9015]["EmoneyBuyLog"] = "250	4030	%d	%d	1	"
	tWarriorEquipPromot_Reward[9015]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[9015]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[9015]["RewardItem"][1]["Id"] = 3319191
	tWarriorEquipPromot_Reward[9015]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[9016] = {}
	tWarriorEquipPromot_Reward[9016]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[9016]["EmoneyBuyLog"] = "250	4031	%d	%d	1	"
	tWarriorEquipPromot_Reward[9016]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[9016]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[9016]["RewardItem"][1]["Id"] = 3319183
	tWarriorEquipPromot_Reward[9016]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[9017] = {}
	tWarriorEquipPromot_Reward[9017]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[9017]["EmoneyBuyLog"] = "250	4032	%d	%d	1	"
	tWarriorEquipPromot_Reward[9017]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[9017]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[9017]["RewardItem"][1]["Id"] = 3319193
	tWarriorEquipPromot_Reward[9017]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[9018] = {}
	tWarriorEquipPromot_Reward[9018]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[9018]["EmoneyBuyLog"] = "250	4033	%d	%d	1	"
	tWarriorEquipPromot_Reward[9018]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[9018]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[9018]["RewardItem"][1]["Id"] = 3319185
	tWarriorEquipPromot_Reward[9018]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[9021] = {}
	tWarriorEquipPromot_Reward[9021]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[9021]["EmoneyBuyLog"] = "250	4034	%d	%d	1	"
	tWarriorEquipPromot_Reward[9021]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[9021]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[9021]["RewardItem"][1]["Id"] = 3319198
	tWarriorEquipPromot_Reward[9021]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[9022] = {}
	tWarriorEquipPromot_Reward[9022]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[9022]["EmoneyBuyLog"] = "250	4035	%d	%d	1	"
	tWarriorEquipPromot_Reward[9022]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[9022]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[9022]["RewardItem"][1]["Id"] = 3319190
	tWarriorEquipPromot_Reward[9022]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[9023] = {}
	tWarriorEquipPromot_Reward[9023]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[9023]["EmoneyBuyLog"] = "250	4036	%d	%d	1	"
	tWarriorEquipPromot_Reward[9023]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[9023]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[9023]["RewardItem"][1]["Id"] = 3319196
	tWarriorEquipPromot_Reward[9023]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[9024] = {}
	tWarriorEquipPromot_Reward[9024]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[9024]["EmoneyBuyLog"] = "250	4037	%d	%d	1	"
	tWarriorEquipPromot_Reward[9024]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[9024]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[9024]["RewardItem"][1]["Id"] = 3319188
	tWarriorEquipPromot_Reward[9024]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[9025] = {}
	tWarriorEquipPromot_Reward[9025]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[9025]["EmoneyBuyLog"] = "250	4038	%d	%d	1	"
	tWarriorEquipPromot_Reward[9025]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[9025]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[9025]["RewardItem"][1]["Id"] = 3319195
	tWarriorEquipPromot_Reward[9025]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[9026] = {}
	tWarriorEquipPromot_Reward[9026]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[9026]["EmoneyBuyLog"] = "250	4039	%d	%d	1	"
	tWarriorEquipPromot_Reward[9026]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[9026]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[9026]["RewardItem"][1]["Id"] = 3319187
	tWarriorEquipPromot_Reward[9026]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[9027] = {}
	tWarriorEquipPromot_Reward[9027]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[9027]["EmoneyBuyLog"] = "250	4040	%d	%d	1	"
	tWarriorEquipPromot_Reward[9027]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[9027]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[9027]["RewardItem"][1]["Id"] = 3319197
	tWarriorEquipPromot_Reward[9027]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[9028] = {}
	tWarriorEquipPromot_Reward[9028]["LogId"] = 12001230
	tWarriorEquipPromot_Reward[9028]["EmoneyBuyLog"] = "250	4041	%d	%d	1	"
	tWarriorEquipPromot_Reward[9028]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[9028]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[9028]["RewardItem"][1]["Id"] = 3319189
	tWarriorEquipPromot_Reward[9028]["RewardItem"][1]["Attr"] = "0 1"
----------------------------------------------------------------勇士-----------------------------------------------------------
	tWarriorEquipPromot_Reward[10011] = {}
	tWarriorEquipPromot_Reward[10011]["LogId"] = 12001431
	tWarriorEquipPromot_Reward[10011]["EmoneyBuyLog"] = "250	4001	%d	%d	1	"
	tWarriorEquipPromot_Reward[10011]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[10011]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[10011]["RewardItem"][1]["Id"] = 3312735
	tWarriorEquipPromot_Reward[10011]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[10012] = {}
	tWarriorEquipPromot_Reward[10012]["LogId"] = 12001431
	tWarriorEquipPromot_Reward[10012]["EmoneyBuyLog"] = "250	4002	%d	%d	1	"
	tWarriorEquipPromot_Reward[10012]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[10012]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[10012]["RewardItem"][1]["Id"] = 3312727
	tWarriorEquipPromot_Reward[10012]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[10013] = {}
	tWarriorEquipPromot_Reward[10013]["LogId"] = 12001431
	tWarriorEquipPromot_Reward[10013]["EmoneyBuyLog"] = "250	4003	%d	%d	1	"
	tWarriorEquipPromot_Reward[10013]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[10013]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[10013]["RewardItem"][1]["Id"] = 3312733
	tWarriorEquipPromot_Reward[10013]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[10014] = {}
	tWarriorEquipPromot_Reward[10014]["LogId"] = 12001431
	tWarriorEquipPromot_Reward[10014]["EmoneyBuyLog"] = "250	4004	%d	%d	1	"
	tWarriorEquipPromot_Reward[10014]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[10014]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[10014]["RewardItem"][1]["Id"] = 3312725
	tWarriorEquipPromot_Reward[10014]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[10015] = {}
	tWarriorEquipPromot_Reward[10015]["LogId"] = 12001431
	tWarriorEquipPromot_Reward[10015]["EmoneyBuyLog"] = "250	4005	%d	%d	1	"
	tWarriorEquipPromot_Reward[10015]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[10015]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[10015]["RewardItem"][1]["Id"] = 3312732
	tWarriorEquipPromot_Reward[10015]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[10016] = {}
	tWarriorEquipPromot_Reward[10016]["LogId"] = 12001431
	tWarriorEquipPromot_Reward[10016]["EmoneyBuyLog"] = "250	4006	%d	%d	1	"
	tWarriorEquipPromot_Reward[10016]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[10016]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[10016]["RewardItem"][1]["Id"] = 3312724
	tWarriorEquipPromot_Reward[10016]["RewardItem"][1]["Attr"] = "0 1"
	-- tWarriorEquipPromot_Reward[10017] = {}
	-- tWarriorEquipPromot_Reward[10017]["LogId"] = 12001431
	-- tWarriorEquipPromot_Reward[10017]["EmoneyBuyLog"] = "250	4032	%d	%d	1	"
	-- tWarriorEquipPromot_Reward[10017]["RewardItem"] = {}
	-- tWarriorEquipPromot_Reward[10017]["RewardItem"][1] = {}
	-- tWarriorEquipPromot_Reward[10017]["RewardItem"][1]["Id"] = 3312734
	-- tWarriorEquipPromot_Reward[10017]["RewardItem"][1]["Attr"] = "0 1"
	-- tWarriorEquipPromot_Reward[10018] = {}
	-- tWarriorEquipPromot_Reward[10018]["LogId"] = 12001431
	-- tWarriorEquipPromot_Reward[10018]["EmoneyBuyLog"] = "250	4033	%d	%d	1	"
	-- tWarriorEquipPromot_Reward[10018]["RewardItem"] = {}
	-- tWarriorEquipPromot_Reward[10018]["RewardItem"][1] = {}
	-- tWarriorEquipPromot_Reward[10018]["RewardItem"][1]["Id"] = 3312726
	-- tWarriorEquipPromot_Reward[10018]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[10021] = {}
	tWarriorEquipPromot_Reward[10021]["LogId"] = 12001431
	tWarriorEquipPromot_Reward[10021]["EmoneyBuyLog"] = "250	4007	%d	%d	1	"
	tWarriorEquipPromot_Reward[10021]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[10021]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[10021]["RewardItem"][1]["Id"] = 3312739
	tWarriorEquipPromot_Reward[10021]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[10022] = {}
	tWarriorEquipPromot_Reward[10022]["LogId"] = 12001431
	tWarriorEquipPromot_Reward[10022]["EmoneyBuyLog"] = "250	4008	%d	%d	1	"
	tWarriorEquipPromot_Reward[10022]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[10022]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[10022]["RewardItem"][1]["Id"] = 3312731
	tWarriorEquipPromot_Reward[10022]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[10023] = {}
	tWarriorEquipPromot_Reward[10023]["LogId"] = 12001431
	tWarriorEquipPromot_Reward[10023]["EmoneyBuyLog"] = "250	4009	%d	%d	1	"
	tWarriorEquipPromot_Reward[10023]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[10023]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[10023]["RewardItem"][1]["Id"] = 3312737
	tWarriorEquipPromot_Reward[10023]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[10024] = {}
	tWarriorEquipPromot_Reward[10024]["LogId"] = 12001431
	tWarriorEquipPromot_Reward[10024]["EmoneyBuyLog"] = "250	4010	%d	%d	1	"
	tWarriorEquipPromot_Reward[10024]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[10024]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[10024]["RewardItem"][1]["Id"] = 3312729
	tWarriorEquipPromot_Reward[10024]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[10025] = {}
	tWarriorEquipPromot_Reward[10025]["LogId"] = 12001431
	tWarriorEquipPromot_Reward[10025]["EmoneyBuyLog"] = "250	4011	%d	%d	1	"
	tWarriorEquipPromot_Reward[10025]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[10025]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[10025]["RewardItem"][1]["Id"] = 3312736
	tWarriorEquipPromot_Reward[10025]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[10026] = {}
	tWarriorEquipPromot_Reward[10026]["LogId"] = 12001431
	tWarriorEquipPromot_Reward[10026]["EmoneyBuyLog"] = "250	4012	%d	%d	1	"
	tWarriorEquipPromot_Reward[10026]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[10026]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[10026]["RewardItem"][1]["Id"] = 3312728
	tWarriorEquipPromot_Reward[10026]["RewardItem"][1]["Attr"] = "0 1"
	-- tWarriorEquipPromot_Reward[10027] = {}
	-- tWarriorEquipPromot_Reward[10027]["LogId"] = 12001431
	-- tWarriorEquipPromot_Reward[10027]["EmoneyBuyLog"] = "250	4040	%d	%d	1	"
	-- tWarriorEquipPromot_Reward[10027]["RewardItem"] = {}
	-- tWarriorEquipPromot_Reward[10027]["RewardItem"][1] = {}
	-- tWarriorEquipPromot_Reward[10027]["RewardItem"][1]["Id"] = 3312738
	-- tWarriorEquipPromot_Reward[10027]["RewardItem"][1]["Attr"] = "0 1"
	-- tWarriorEquipPromot_Reward[10028] = {}
	-- tWarriorEquipPromot_Reward[10028]["LogId"] = 12001431
	-- tWarriorEquipPromot_Reward[10028]["EmoneyBuyLog"] = "250	4041	%d	%d	1	"
	-- tWarriorEquipPromot_Reward[10028]["RewardItem"] = {}
	-- tWarriorEquipPromot_Reward[10028]["RewardItem"][1] = {}
	-- tWarriorEquipPromot_Reward[10028]["RewardItem"][1]["Id"] = 3312730
	-- tWarriorEquipPromot_Reward[10028]["RewardItem"][1]["Attr"] = "0 1"
	

----------------------------------------------------------------忍者-----------------------------------------------------------
	tWarriorEquipPromot_Reward[50011] = {}
	tWarriorEquipPromot_Reward[50011]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[50011]["EmoneyBuyLog"] = "1000	01476	%d	%d	1	"
	tWarriorEquipPromot_Reward[50011]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[50011]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[50011]["RewardItem"][1]["Id"] = 3315476
	tWarriorEquipPromot_Reward[50011]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[50012] = {}
	tWarriorEquipPromot_Reward[50012]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[50012]["EmoneyBuyLog"] = "1000	01477	%d	%d	1	"
	tWarriorEquipPromot_Reward[50012]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[50012]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[50012]["RewardItem"][1]["Id"] = 3315468
	tWarriorEquipPromot_Reward[50012]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[50013] = {}
	tWarriorEquipPromot_Reward[50013]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[50013]["EmoneyBuyLog"] = "1000	01478	%d	%d	1	"
	tWarriorEquipPromot_Reward[50013]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[50013]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[50013]["RewardItem"][1]["Id"] = 3315474
	tWarriorEquipPromot_Reward[50013]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[50014] = {}
	tWarriorEquipPromot_Reward[50014]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[50014]["EmoneyBuyLog"] = "1000	01479	%d	%d	1	"
	tWarriorEquipPromot_Reward[50014]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[50014]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[50014]["RewardItem"][1]["Id"] = 3315466
	tWarriorEquipPromot_Reward[50014]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[50015] = {}
	tWarriorEquipPromot_Reward[50015]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[50015]["EmoneyBuyLog"] = "1000	01480	%d	%d	1	"
	tWarriorEquipPromot_Reward[50015]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[50015]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[50015]["RewardItem"][1]["Id"] = 3315473
	tWarriorEquipPromot_Reward[50015]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[50016] = {}
	tWarriorEquipPromot_Reward[50016]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[50016]["EmoneyBuyLog"] = "1000	01481	%d	%d	1	"
	tWarriorEquipPromot_Reward[50016]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[50016]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[50016]["RewardItem"][1]["Id"] = 3315465
	tWarriorEquipPromot_Reward[50016]["RewardItem"][1]["Attr"] = "0 1"
	-- tWarriorEquipPromot_Reward[50017] = {}
	-- tWarriorEquipPromot_Reward[50017]["LogId"] = 12001849
	-- tWarriorEquipPromot_Reward[50017]["EmoneyBuyLog"] = "1000	01488	%d	%d	1	"
	-- tWarriorEquipPromot_Reward[50017]["RewardItem"] = {}
	-- tWarriorEquipPromot_Reward[50017]["RewardItem"][1] = {}
	-- tWarriorEquipPromot_Reward[50017]["RewardItem"][1]["Id"] = 3315475
	-- tWarriorEquipPromot_Reward[50017]["RewardItem"][1]["Attr"] = "0 1"
	-- tWarriorEquipPromot_Reward[50018] = {}
	-- tWarriorEquipPromot_Reward[50018]["LogId"] = 12001849
	-- tWarriorEquipPromot_Reward[50018]["EmoneyBuyLog"] = "1000	01489	%d	%d	1	"
	-- tWarriorEquipPromot_Reward[50018]["RewardItem"] = {}
	-- tWarriorEquipPromot_Reward[50018]["RewardItem"][1] = {}
	-- tWarriorEquipPromot_Reward[50018]["RewardItem"][1]["Id"] = 3315467
	-- tWarriorEquipPromot_Reward[50018]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[50021] = {}
	tWarriorEquipPromot_Reward[50021]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[50021]["EmoneyBuyLog"] = "1000	01482	%d	%d	1	"
	tWarriorEquipPromot_Reward[50021]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[50021]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[50021]["RewardItem"][1]["Id"] = 3315481
	tWarriorEquipPromot_Reward[50021]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[50022] = {}
	tWarriorEquipPromot_Reward[50022]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[50022]["EmoneyBuyLog"] = "1000	01483	%d	%d	1	"
	tWarriorEquipPromot_Reward[50022]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[50022]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[50022]["RewardItem"][1]["Id"] = 3315472
	tWarriorEquipPromot_Reward[50022]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[50023] = {}
	tWarriorEquipPromot_Reward[50023]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[50023]["EmoneyBuyLog"] = "1000	01484	%d	%d	1	"
	tWarriorEquipPromot_Reward[50023]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[50023]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[50023]["RewardItem"][1]["Id"] = 3315478
	tWarriorEquipPromot_Reward[50023]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[50024] = {}
	tWarriorEquipPromot_Reward[50024]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[50024]["EmoneyBuyLog"] = "1000	01485	%d	%d	1	"
	tWarriorEquipPromot_Reward[50024]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[50024]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[50024]["RewardItem"][1]["Id"] = 3315470
	tWarriorEquipPromot_Reward[50024]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[50025] = {}
	tWarriorEquipPromot_Reward[50025]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[50025]["EmoneyBuyLog"] = "1000	01486	%d	%d	1	"
	tWarriorEquipPromot_Reward[50025]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[50025]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[50025]["RewardItem"][1]["Id"] = 3315477
	tWarriorEquipPromot_Reward[50025]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEquipPromot_Reward[50026] = {}
	tWarriorEquipPromot_Reward[50026]["LogId"] = 12001849
	tWarriorEquipPromot_Reward[50026]["EmoneyBuyLog"] = "1000	01487	%d	%d	1	"
	tWarriorEquipPromot_Reward[50026]["RewardItem"] = {}
	tWarriorEquipPromot_Reward[50026]["RewardItem"][1] = {}
	tWarriorEquipPromot_Reward[50026]["RewardItem"][1]["Id"] = 3315469
	tWarriorEquipPromot_Reward[50026]["RewardItem"][1]["Attr"] = "0 1"
	-- tWarriorEquipPromot_Reward[50027] = {}
	-- tWarriorEquipPromot_Reward[50027]["LogId"] = 12001849
	-- tWarriorEquipPromot_Reward[50027]["EmoneyBuyLog"] = "1000	01490	%d	%d	1	"
	-- tWarriorEquipPromot_Reward[50027]["RewardItem"] = {}
	-- tWarriorEquipPromot_Reward[50027]["RewardItem"][1] = {}
	-- tWarriorEquipPromot_Reward[50027]["RewardItem"][1]["Id"] = 3315479
	-- tWarriorEquipPromot_Reward[50027]["RewardItem"][1]["Attr"] = "0 1"
	-- tWarriorEquipPromot_Reward[50028] = {}
	-- tWarriorEquipPromot_Reward[50028]["LogId"] = 12001849
	-- tWarriorEquipPromot_Reward[50028]["EmoneyBuyLog"] = "1000	01491	%d	%d	1	"
	-- tWarriorEquipPromot_Reward[50028]["RewardItem"] = {}
	-- tWarriorEquipPromot_Reward[50028]["RewardItem"][1] = {}
	-- tWarriorEquipPromot_Reward[50028]["RewardItem"][1]["Id"] = 3315471
	-- tWarriorEquipPromot_Reward[50028]["RewardItem"][1]["Attr"] = "0 1"
	
----------------------------------逻辑部分---------------------------------------------
-- 直接获得
function WarriorEquipPromot_DirectlyObtain(nItemId)
	RewardTemplate_UseItemAndMsg(tWarriorEquipPromot_Reward[nItemId])
end

-- 选项获得
function WarriorEquipPromot_OptionToObtain(nItemId,nOption)
--判断物品
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(string.format(tWarriorEquipPromot_Text["NoItem"],Get_ItemtypeName(nItemId)))
		return
	end
	RewardTemplate_UseItemAndMsg(tWarriorEquipPromot_Reward[nItemId][nOption])
end

-- 服务器启动时触发，设置该服务器为哪种服务器
function WarriorEquipPromot_StartUp()
	nServer = Get_SysDynaGlobalData0(51293)
	
	if nServer <= 0 or nServer > 3 then
		nServer = 1
	end
end

-- 判断天石跟背包空间是否满足
function WarriorEquipPromot_Judge(nNpcId,nOption)
	local nItemId = tWarriorEquipPromot_Option[nOption]
	
	-- 判断天石是否满足
	local nEmoney = tWarriorEquipPromot_Price[nServer][nItemId]
	local nUserEmoney = Get_UserEMoney()
	if nUserEmoney < nEmoney then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return false
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return false
	end
	
	return true
end

function WarriorEquipPromot_Option(nNpcId,nOption,nIndex)
	if not WarriorEquipPromot_Judge(nNpcId,nOption) then
		return
	end
	
	local nItemId = tWarriorEquipPromot_Option[nOption]
	local nEmoney = tWarriorEquipPromot_Price[nServer][nItemId]
	local sText = tWarriorEquipPromot_Gift[nIndex]["Text"]
	local sIndex = tWarriorEquipPromot_Gift[nIndex]["Index"]
	
	tNpcGossip[19262][sText] = string.format(tWarriorEquipPromot_Text[19262][sText],nEmoney,tWarriorEquipPromot_Text[nOption]["Equip"],tWarriorEquipPromot_Text[nOption]["ShenHun"])
	tNpcGossip[19262][sText .. 1] = ""
	if nOption == 10015 or nOption == 10016 or nOption == 10025 or nOption == 10026 then
		tNpcGossip[19262][sText .. 1] = tWarriorEquipPromot_Text[nOption]["ShenHun1"]
	end
	tNpcGossip[19262]["Option21"] = string.format(tWarriorEquipPromot_Text[19262]["Option21"],nEmoney)
	tNpcGossip[19262]["OptionFunc21"] = string.format("WarriorEquipPromot_Buy</N>19262</N>%d",nOption)
	
	LinkNpcGossipFunc_New(nNpcId,sIndex)
end

function WarriorEquipPromot_Buy(nNpcId,nOption)
	if not WarriorEquipPromot_Judge(nNpcId,nOption) then
		return
	end
	
	-- 扣天石
	local nItemId = tWarriorEquipPromot_Option[nOption]
	local nEmoney = tWarriorEquipPromot_Price[nServer][nItemId]
	
	if not User_AddEMoney(-nEmoney) then
		return
	end
	
	-- emoneybuylog
	local sLog = string.format(tWarriorEquipPromot_Reward[nOption]["EmoneyBuyLog"],nEmoney,nEmoney)
	Sys_SaveEmoneyBuy(sLog)
	
	-- 给奖励
	RewardTemplate_UseItemAndMsg(tWarriorEquipPromot_Reward[nOption])
end

----------------------------------NPC部分---------------------------------------------
tNpcGossip[19262] = tNpcGossip[19262] or DefaultNpc:new{}
tNpcGossip[19262]["DialogueText"] = tWarriorEquipPromot_Text[19262]

tNpcGossip[19262]["OptionPoint10"] = "3-1"
tNpcGossip[19262]["OptionPoint11"] = "4-1"

tNpcGossip[19262]["Text3-1"] = {311,312,313,314,315}
tNpcGossip[19262]["tOption3-1"] = {12,13,14,15,16,17,18,19}
tNpcGossip[19262]["ChkFunc3-1"] = function ()
	for i = 12,19 do
		local nItemId = tWarriorEquipPromot_Option[i]
		local nEmoney = tWarriorEquipPromot_Price[nServer][nItemId]
		tNpcGossip[19262]["Option" .. i] = string.format(tWarriorEquipPromot_Text[19262]["Option" .. i],nEmoney)
	end
	return true
end

tNpcGossip[19262]["OptionFunc12"] = "WarriorEquipPromot_Option</N>19262</N>12</N>1"
tNpcGossip[19262]["OptionFunc13"] = "WarriorEquipPromot_Option</N>19262</N>13</N>1"
tNpcGossip[19262]["OptionFunc14"] = "WarriorEquipPromot_Option</N>19262</N>14</N>1"
tNpcGossip[19262]["OptionFunc15"] = "WarriorEquipPromot_Option</N>19262</N>15</N>1"
tNpcGossip[19262]["OptionFunc16"] = "WarriorEquipPromot_Option</N>19262</N>16</N>1"
tNpcGossip[19262]["OptionFunc17"] = "WarriorEquipPromot_Option</N>19262</N>17</N>1"
tNpcGossip[19262]["OptionFunc18"] = "WarriorEquipPromot_Option</N>19262</N>18</N>1"
tNpcGossip[19262]["OptionFunc19"] = "WarriorEquipPromot_Option</N>19262</N>19</N>1"

tNpcGossip[19262]["Text3-2"] = {321}
tNpcGossip[19262]["tOption3-2"] = {20}

tNpcGossip[19262]["Text3-3"] = {331}
tNpcGossip[19262]["tOption3-3"] = {20}

tNpcGossip[19262]["Text3-4"] = {341,3411}
tNpcGossip[19262]["tOption3-4"] = {21,22}

tNpcGossip[19262]["Text4-1"] = {411,412,413,414,415,416,417}
tNpcGossip[19262]["tOption4-1"] = {23,24,25,26,27,28,29,30}
tNpcGossip[19262]["ChkFunc4-1"] = function ()
	for i = 23,30 do
		local nItemId = tWarriorEquipPromot_Option[i]
		local nEmoney = tWarriorEquipPromot_Price[nServer][nItemId]
		tNpcGossip[19262]["Option" .. i] = string.format(tWarriorEquipPromot_Text[19262]["Option" .. i],nEmoney)
	end
	return true
end

tNpcGossip[19262]["OptionFunc23"] = "WarriorEquipPromot_Option</N>19262</N>23</N>2"
tNpcGossip[19262]["OptionFunc24"] = "WarriorEquipPromot_Option</N>19262</N>24</N>2"
tNpcGossip[19262]["OptionFunc25"] = "WarriorEquipPromot_Option</N>19262</N>25</N>2"
tNpcGossip[19262]["OptionFunc26"] = "WarriorEquipPromot_Option</N>19262</N>26</N>2"
tNpcGossip[19262]["OptionFunc27"] = "WarriorEquipPromot_Option</N>19262</N>27</N>2"
tNpcGossip[19262]["OptionFunc28"] = "WarriorEquipPromot_Option</N>19262</N>28</N>2"
tNpcGossip[19262]["OptionFunc29"] = "WarriorEquipPromot_Option</N>19262</N>29</N>2"
tNpcGossip[19262]["OptionFunc30"] = "WarriorEquipPromot_Option</N>19262</N>30</N>2"

tNpcGossip[19262]["Text4-2"] = {421,4211}
tNpcGossip[19262]["tOption4-2"] = {21,22}

---------------------------------------------------------铁扇门-----------------------------------------------------------
-- tNpcGossip[19262]["OptionPoint50"] = "5-1"
-- tNpcGossip[19262]["OptionPoint51"] = "6-1"

-- tNpcGossip[19262]["Text5-1"] = {511,512,513,514,515}
-- tNpcGossip[19262]["tOption5-1"] = {52,53,54,55,56,57}
-- tNpcGossip[19262]["ChkFunc5-1"] = function ()
	-- for i = 52,57 do
		-- local nItemId = tWarriorEquipPromot_Option[i]
		-- local nEmoney = tWarriorEquipPromot_Price[nServer][nItemId]
		-- tNpcGossip[19262]["Option" .. i] = string.format(tWarriorEquipPromot_Text[19262]["Option" .. i],nEmoney)
	-- end
	-- return true
-- end

-- tNpcGossip[19262]["OptionFunc52"] = "WarriorEquipPromot_Option</N>19262</N>52</N>1"
-- tNpcGossip[19262]["OptionFunc53"] = "WarriorEquipPromot_Option</N>19262</N>53</N>1"
-- tNpcGossip[19262]["OptionFunc54"] = "WarriorEquipPromot_Option</N>19262</N>54</N>1"
-- tNpcGossip[19262]["OptionFunc55"] = "WarriorEquipPromot_Option</N>19262</N>55</N>1"
-- tNpcGossip[19262]["OptionFunc56"] = "WarriorEquipPromot_Option</N>19262</N>56</N>1"
-- tNpcGossip[19262]["OptionFunc57"] = "WarriorEquipPromot_Option</N>19262</N>57</N>1"


-- tNpcGossip[19262]["Text6-1"] = {611,612,613,614,615,616,617}
-- tNpcGossip[19262]["tOption6-1"] = {63,64,65,66,67,68}
-- tNpcGossip[19262]["ChkFunc6-1"] = function ()
	-- for i = 63,68 do
		-- local nItemId = tWarriorEquipPromot_Option[i]
		-- local nEmoney = tWarriorEquipPromot_Price[nServer][nItemId]
		-- tNpcGossip[19262]["Option" .. i] = string.format(tWarriorEquipPromot_Text[19262]["Option" .. i],nEmoney)
	-- end
	-- return true
-- end

-- tNpcGossip[19262]["OptionFunc63"] = "WarriorEquipPromot_Option</N>19262</N>63</N>2"
-- tNpcGossip[19262]["OptionFunc64"] = "WarriorEquipPromot_Option</N>19262</N>64</N>2"
-- tNpcGossip[19262]["OptionFunc65"] = "WarriorEquipPromot_Option</N>19262</N>65</N>2"
-- tNpcGossip[19262]["OptionFunc66"] = "WarriorEquipPromot_Option</N>19262</N>66</N>2"
-- tNpcGossip[19262]["OptionFunc67"] = "WarriorEquipPromot_Option</N>19262</N>67</N>2"
-- tNpcGossip[19262]["OptionFunc68"] = "WarriorEquipPromot_Option</N>19262</N>68</N>2"

---------------------------------------------------------雷神-----------------------------------------------------------
tNpcGossip[19262]["OptionPoint90"] = "90-1"
tNpcGossip[19262]["OptionPoint91"] = "90-2"

tNpcGossip[19262]["Text90-1"] = {9011,9012,9013,9014,9015}
tNpcGossip[19262]["tOption90-1"] = {9011,9012,9013,9014,9015,9016,9017,9018}
tNpcGossip[19262]["ChkFunc90-1"] = function ()
	for i = 9011,9018 do
		local nItemId = tWarriorEquipPromot_Option[i]
		local nEmoney = tWarriorEquipPromot_Price[nServer][nItemId]
		tNpcGossip[19262]["Option" .. i] = string.format(tWarriorEquipPromot_Text[19262]["Option" .. i],nEmoney)
	end
	return true
end

tNpcGossip[19262]["OptionFunc9011"] = "WarriorEquipPromot_Option</N>19262</N>9011</N>1"
tNpcGossip[19262]["OptionFunc9012"] = "WarriorEquipPromot_Option</N>19262</N>9012</N>1"
tNpcGossip[19262]["OptionFunc9013"] = "WarriorEquipPromot_Option</N>19262</N>9013</N>1"
tNpcGossip[19262]["OptionFunc9014"] = "WarriorEquipPromot_Option</N>19262</N>9014</N>1"
tNpcGossip[19262]["OptionFunc9015"] = "WarriorEquipPromot_Option</N>19262</N>9015</N>1"
tNpcGossip[19262]["OptionFunc9016"] = "WarriorEquipPromot_Option</N>19262</N>9016</N>1"
tNpcGossip[19262]["OptionFunc9017"] = "WarriorEquipPromot_Option</N>19262</N>9017</N>1"
tNpcGossip[19262]["OptionFunc9018"] = "WarriorEquipPromot_Option</N>19262</N>9018</N>1"

tNpcGossip[19262]["Text90-2"] = {9021,9022,9023,9024,9025}
tNpcGossip[19262]["tOption90-2"] = {9021,9022,9023,9024,9025,9026,9027,9028}
tNpcGossip[19262]["ChkFunc90-2"] = function ()
	for i = 9021,9028 do
		local nItemId = tWarriorEquipPromot_Option[i]
		local nEmoney = tWarriorEquipPromot_Price[nServer][nItemId]
		tNpcGossip[19262]["Option" .. i] = string.format(tWarriorEquipPromot_Text[19262]["Option" .. i],nEmoney)
	end
	return true
end

tNpcGossip[19262]["OptionFunc9021"] = "WarriorEquipPromot_Option</N>19262</N>9021</N>2"
tNpcGossip[19262]["OptionFunc9022"] = "WarriorEquipPromot_Option</N>19262</N>9022</N>2"
tNpcGossip[19262]["OptionFunc9023"] = "WarriorEquipPromot_Option</N>19262</N>9023</N>2"
tNpcGossip[19262]["OptionFunc9024"] = "WarriorEquipPromot_Option</N>19262</N>9024</N>2"
tNpcGossip[19262]["OptionFunc9025"] = "WarriorEquipPromot_Option</N>19262</N>9025</N>2"
tNpcGossip[19262]["OptionFunc9026"] = "WarriorEquipPromot_Option</N>19262</N>9026</N>2"
tNpcGossip[19262]["OptionFunc9027"] = "WarriorEquipPromot_Option</N>19262</N>9027</N>2"
tNpcGossip[19262]["OptionFunc9028"] = "WarriorEquipPromot_Option</N>19262</N>9028</N>2"

---------------------------------------------------------勇士-----------------------------------------------------------
tNpcGossip[19262]["OptionPoint100"] = "100-1"
tNpcGossip[19262]["OptionPoint101"] = "100-2"

tNpcGossip[19262]["Text100-1"] = {10011,10012,10013,10014,10015}
tNpcGossip[19262]["tOption100-1"] = {10011,10012,10013,10014,10015,10016}
tNpcGossip[19262]["ChkFunc100-1"] = function ()
	for i = 10011,10016 do
		local nItemId = tWarriorEquipPromot_Option[i]
		local nEmoney = tWarriorEquipPromot_Price[nServer][nItemId]
		tNpcGossip[19262]["Option" .. i] = string.format(tWarriorEquipPromot_Text[19262]["Option" .. i],nEmoney)
	end
	return true
end

tNpcGossip[19262]["OptionFunc10011"] = "WarriorEquipPromot_Option</N>19262</N>10011</N>1"
tNpcGossip[19262]["OptionFunc10012"] = "WarriorEquipPromot_Option</N>19262</N>10012</N>1"
tNpcGossip[19262]["OptionFunc10013"] = "WarriorEquipPromot_Option</N>19262</N>10013</N>1"
tNpcGossip[19262]["OptionFunc10014"] = "WarriorEquipPromot_Option</N>19262</N>10014</N>1"
tNpcGossip[19262]["OptionFunc10015"] = "WarriorEquipPromot_Option</N>19262</N>10015</N>1"
tNpcGossip[19262]["OptionFunc10016"] = "WarriorEquipPromot_Option</N>19262</N>10016</N>1"
-- tNpcGossip[19262]["OptionFunc9017"] = "WarriorEquipPromot_Option</N>19262</N>10017</N>1"
-- tNpcGossip[19262]["OptionFunc9018"] = "WarriorEquipPromot_Option</N>19262</N>10018</N>1"

tNpcGossip[19262]["Text100-2"] = {10021,10022,10023,10024,10025}
tNpcGossip[19262]["tOption100-2"] = {10021,10022,10023,10024,10025,10026}
tNpcGossip[19262]["ChkFunc100-2"] = function ()
	for i = 10021,10026 do
		local nItemId = tWarriorEquipPromot_Option[i]
		local nEmoney = tWarriorEquipPromot_Price[nServer][nItemId]
		tNpcGossip[19262]["Option" .. i] = string.format(tWarriorEquipPromot_Text[19262]["Option" .. i],nEmoney)
	end
	return true
end

tNpcGossip[19262]["OptionFunc10021"] = "WarriorEquipPromot_Option</N>19262</N>10021</N>2"
tNpcGossip[19262]["OptionFunc10022"] = "WarriorEquipPromot_Option</N>19262</N>10022</N>2"
tNpcGossip[19262]["OptionFunc10023"] = "WarriorEquipPromot_Option</N>19262</N>10023</N>2"
tNpcGossip[19262]["OptionFunc10024"] = "WarriorEquipPromot_Option</N>19262</N>10024</N>2"
tNpcGossip[19262]["OptionFunc10025"] = "WarriorEquipPromot_Option</N>19262</N>10025</N>2"
tNpcGossip[19262]["OptionFunc10026"] = "WarriorEquipPromot_Option</N>19262</N>10026</N>2"
-- tNpcGossip[19262]["OptionFunc10027"] = "WarriorEquipPromot_Option</N>19262</N>10027</N>2"
-- tNpcGossip[19262]["OptionFunc10028"] = "WarriorEquipPromot_Option</N>19262</N>10028</N>2"

---------------------------------------------------------忍者-----------------------------------------------------------
tNpcGossip[19262]["OptionPoint500"] = "500-1"
tNpcGossip[19262]["OptionPoint501"] = "500-2"

tNpcGossip[19262]["Text500-1"] = {50011,50012,50013,50014,50015}
tNpcGossip[19262]["tOption500-1"] = {50011,50012,50013,50014,50015,50016}
tNpcGossip[19262]["ChkFunc500-1"] = function ()
	for i = 50011,50016 do
		local nItemId = tWarriorEquipPromot_Option[i]
		local nEmoney = tWarriorEquipPromot_Price[nServer][nItemId]
		tNpcGossip[19262]["Option" .. i] = string.format(tWarriorEquipPromot_Text[19262]["Option" .. i],nEmoney)
	end
	return true
end

tNpcGossip[19262]["OptionFunc50011"] = "WarriorEquipPromot_Option</N>19262</N>50011</N>1"
tNpcGossip[19262]["OptionFunc50012"] = "WarriorEquipPromot_Option</N>19262</N>50012</N>1"
tNpcGossip[19262]["OptionFunc50013"] = "WarriorEquipPromot_Option</N>19262</N>50013</N>1"
tNpcGossip[19262]["OptionFunc50014"] = "WarriorEquipPromot_Option</N>19262</N>50014</N>1"
tNpcGossip[19262]["OptionFunc50015"] = "WarriorEquipPromot_Option</N>19262</N>50015</N>1"
tNpcGossip[19262]["OptionFunc50016"] = "WarriorEquipPromot_Option</N>19262</N>50016</N>1"
-- tNpcGossip[19262]["OptionFunc9017"] = "WarriorEquipPromot_Option</N>19262</N>50017</N>1"
-- tNpcGossip[19262]["OptionFunc9018"] = "WarriorEquipPromot_Option</N>19262</N>50018</N>1"

tNpcGossip[19262]["Text500-2"] = {50021,50022,50023,50024,50025}
tNpcGossip[19262]["tOption500-2"] = {50021,50022,50023,50024,50025,50026}
tNpcGossip[19262]["ChkFunc500-2"] = function ()
	for i = 50021,50026 do
		local nItemId = tWarriorEquipPromot_Option[i]
		local nEmoney = tWarriorEquipPromot_Price[nServer][nItemId]
		tNpcGossip[19262]["Option" .. i] = string.format(tWarriorEquipPromot_Text[19262]["Option" .. i],nEmoney)
	end
	return true
end

tNpcGossip[19262]["OptionFunc50021"] = "WarriorEquipPromot_Option</N>19262</N>50021</N>2"
tNpcGossip[19262]["OptionFunc50022"] = "WarriorEquipPromot_Option</N>19262</N>50022</N>2"
tNpcGossip[19262]["OptionFunc50023"] = "WarriorEquipPromot_Option</N>19262</N>50023</N>2"
tNpcGossip[19262]["OptionFunc50024"] = "WarriorEquipPromot_Option</N>19262</N>50024</N>2"
tNpcGossip[19262]["OptionFunc50025"] = "WarriorEquipPromot_Option</N>19262</N>50025</N>2"
tNpcGossip[19262]["OptionFunc50026"] = "WarriorEquipPromot_Option</N>19262</N>50026</N>2"
-- tNpcGossip[19262]["OptionFunc50027"] = "WarriorEquipPromot_Option</N>19262</N>50027</N>2"
-- tNpcGossip[19262]["OptionFunc50028"] = "WarriorEquipPromot_Option</N>19262</N>50028</N>2"


---------------------------------物品部分---------------------------------------------
tItem[3200772] = tItem[3200772] or {}
tItem[3200772]["Function"] = function(nItemId,sItemName)
	WarriorEquipPromot_DirectlyObtain(nItemId)
end

tItem[3200773] = tItem[3200772]
tItem[3200774] = tItem[3200772]
tItem[3200777] = tItem[3200772]
tItem[3200778] = tItem[3200772]
tItem[3200780] = tItem[3200772]
tItem[3200781] = tItem[3200772]
tItem[3200782] = tItem[3200772]
tItem[3200785] = tItem[3200772]
tItem[3200786] = tItem[3200772]
tItem[3200822] = tItem[3200772]

-------------------------------------------------------铁扇门-----------------------------------------------------------
-- 3301750 +6极品铁扇门头盔礼包
-- 3301751 +6极品铁扇门盔甲礼包
-- 3301752 +6极品铁扇门武器礼包

-- 3301754 +8极品铁扇门盔甲礼包
-- 3301755 +8极品铁扇门武器礼包
                               
-- 3301756 +6极品铁扇门头盔赠品包
-- 3301757 +6极品铁扇门盔甲赠品包
-- 3301758 +6极品铁扇门武器赠品包

-- 3301760 +8极品铁扇门盔甲赠品包
-- 3301761 +8极品铁扇门武器赠品包

tItem[3301750] = tItem[3200772]
tItem[3301751] = tItem[3200772]
tItem[3301752] = tItem[3200772]
tItem[3301754] = tItem[3200772]
tItem[3301755] = tItem[3200772]

tItem[3301756] = tItem[3200772]
tItem[3301757] = tItem[3200772]
tItem[3301758] = tItem[3200772]
tItem[3301760] = tItem[3200772]
tItem[3301761] = tItem[3200772]

-- 100级极品战士武器礼包
tItem[3200775] = tItem[3200775] or {}
tItem[3200775]["DialogueText"] = tWarriorEquipPromot_Text[3200775]
tItem[3200775]["Text1-1"] = {111,112}
tItem[3200775]["tOption1-1"] = {1,2}
tItem[3200775]["OptionFunc1"] = "WarriorEquipPromot_OptionToObtain</N>3200775</N>1"
tItem[3200775]["OptionFunc2"] = "WarriorEquipPromot_OptionToObtain</N>3200775</N>2"

-- 130级极品战士头盔礼包
tItem[3200776] = tItem[3200776] or {}
tItem[3200776]["DialogueText"] = tWarriorEquipPromot_Text[3200776]
tItem[3200776]["Text1-1"] = {111,112}
tItem[3200776]["tOption1-1"] = {1,2}
tItem[3200776]["OptionFunc1"] = "WarriorEquipPromot_OptionToObtain</N>3200776</N>1"
tItem[3200776]["OptionFunc2"] = "WarriorEquipPromot_OptionToObtain</N>3200776</N>2"

-- 130级极品战士武器礼包
tItem[3200779] = tItem[3200779] or {}
tItem[3200779]["DialogueText"] = tWarriorEquipPromot_Text[3200779]
tItem[3200779]["Text1-1"] = {111,112}
tItem[3200779]["tOption1-1"] = {1,2}
tItem[3200779]["OptionFunc1"] = "WarriorEquipPromot_OptionToObtain</N>3200779</N>1"
tItem[3200779]["OptionFunc2"] = "WarriorEquipPromot_OptionToObtain</N>3200779</N>2"

-- 极品5%神佑战士武器赠礼包
tItem[3200783] = tItem[3200783] or {}
tItem[3200783]["DialogueText"] = tWarriorEquipPromot_Text[3200783]
tItem[3200783]["Text1-1"] = {111,112}
tItem[3200783]["tOption1-1"] = {1,2}
tItem[3200783]["OptionFunc1"] = "WarriorEquipPromot_OptionToObtain</N>3200783</N>1"
tItem[3200783]["OptionFunc2"] = "WarriorEquipPromot_OptionToObtain</N>3200783</N>2"

-- 15级极品战士头盔礼包
tItem[3200784] = tItem[3200784] or {}
tItem[3200784]["DialogueText"] = tWarriorEquipPromot_Text[3200784]
tItem[3200784]["Text1-1"] = {111,112}
tItem[3200784]["tOption1-1"] = {1,2}
tItem[3200784]["OptionFunc1"] = "WarriorEquipPromot_OptionToObtain</N>3200784</N>1"
tItem[3200784]["OptionFunc2"] = "WarriorEquipPromot_OptionToObtain</N>3200784</N>2"

-- 极品5%神佑战士武器赠礼包
tItem[3200787] = tItem[3200787] or {}
tItem[3200787]["DialogueText"] = tWarriorEquipPromot_Text[3200787]
tItem[3200787]["Text1-1"] = {111,112}
tItem[3200787]["tOption1-1"] = {1,2}
tItem[3200787]["OptionFunc1"] = "WarriorEquipPromot_OptionToObtain</N>3200787</N>1"
tItem[3200787]["OptionFunc2"] = "WarriorEquipPromot_OptionToObtain</N>3200787</N>2"


------------------------------------------------------------------ 英文新写礼包
tItem[3300290] = tItem[3300290] or {}
tItem[3300290]["Function"] = function(nItemId,sItemName)
	WarriorEquipPromot_DirectlyObtain(nItemId)
end

tItem[3300291] = tItem[3300290]
tItem[3300292] = tItem[3300290]

tItem[3300295] = tItem[3300290]
tItem[3300296] = tItem[3300290]

tItem[3300298] = tItem[3300290]
tItem[3300299] = tItem[3300290]
tItem[3300300] = tItem[3300290]

tItem[3300303] = tItem[3300290]
tItem[3300304] = tItem[3300290]

-- 15级极品战士武器礼包
tItem[3300293] = tItem[3300293] or {}
tItem[3300293]["DialogueText"] = tWarriorEquipPromot_Text[3300293]
tItem[3300293]["Text1-1"] = {111,112}
tItem[3300293]["tOption1-1"] = {1,2}
tItem[3300293]["OptionFunc1"] = "WarriorEquipPromot_OptionToObtain</N>3300293</N>1"
tItem[3300293]["OptionFunc2"] = "WarriorEquipPromot_OptionToObtain</N>3300293</N>2"


-- 15级极品战士头盔礼包
tItem[3300294] = tItem[3300294] or {}
tItem[3300294]["DialogueText"] = tWarriorEquipPromot_Text[3300294]
tItem[3300294]["Text1-1"] = {111,112}
tItem[3300294]["tOption1-1"] = {1,2}
tItem[3300294]["OptionFunc1"] = "WarriorEquipPromot_OptionToObtain</N>3300294</N>1"
tItem[3300294]["OptionFunc2"] = "WarriorEquipPromot_OptionToObtain</N>3300294</N>2"

-- 15级极品战士武器礼包
tItem[3300297] = tItem[3300297] or {}
tItem[3300297]["DialogueText"] = tWarriorEquipPromot_Text[3300297]
tItem[3300297]["Text1-1"] = {111,112}
tItem[3300297]["tOption1-1"] = {1,2}
tItem[3300297]["OptionFunc1"] = "WarriorEquipPromot_OptionToObtain</N>3300297</N>1"
tItem[3300297]["OptionFunc2"] = "WarriorEquipPromot_OptionToObtain</N>3300297</N>2"

-- 极品5%神佑战士武器赠礼包
tItem[3300301] = tItem[3300301] or {}
tItem[3300301]["DialogueText"] = tWarriorEquipPromot_Text[3300301]
tItem[3300301]["Text1-1"] = {111,112}
tItem[3300301]["tOption1-1"] = {1,2}
tItem[3300301]["OptionFunc1"] = "WarriorEquipPromot_OptionToObtain</N>3300301</N>1"
tItem[3300301]["OptionFunc2"] = "WarriorEquipPromot_OptionToObtain</N>3300301</N>2"

-- 15级极品战士头盔礼包
tItem[3300302] = tItem[3300302] or {}
tItem[3300302]["DialogueText"] = tWarriorEquipPromot_Text[3300302]
tItem[3300302]["Text1-1"] = {111,112}
tItem[3300302]["tOption1-1"] = {1,2}
tItem[3300302]["OptionFunc1"] = "WarriorEquipPromot_OptionToObtain</N>3300302</N>1"
tItem[3300302]["OptionFunc2"] = "WarriorEquipPromot_OptionToObtain</N>3300302</N>2"

-- 极品5%神佑战士武器赠礼包
tItem[3300305] = tItem[3300305] or {}
tItem[3300305]["DialogueText"] = tWarriorEquipPromot_Text[3300305]
tItem[3300305]["Text1-1"] = {111,112}
tItem[3300305]["tOption1-1"] = {1,2}
tItem[3300305]["OptionFunc1"] = "WarriorEquipPromot_OptionToObtain</N>3300305</N>1"
tItem[3300305]["OptionFunc2"] = "WarriorEquipPromot_OptionToObtain</N>3300305</N>2"



-- 新服
------------------------------------------------------------------ 英文新服新写礼包
tItem[3300515] = tItem[3300515] or {}
tItem[3300515]["Function"] = function(nItemId,sItemName)
	WarriorEquipPromot_DirectlyObtain(nItemId)
end

tItem[3300516] = tItem[3300515]
tItem[3300517] = tItem[3300515]

tItem[3300520] = tItem[3300515]
tItem[3300521] = tItem[3300515]

tItem[3300523] = tItem[3300515]
tItem[3300524] = tItem[3300515]
tItem[3300525] = tItem[3300515]

tItem[3300528] = tItem[3300515]
tItem[3300529] = tItem[3300515]

-- 15级极品战士武器礼包
tItem[3300518] = tItem[3300518] or {}
tItem[3300518]["DialogueText"] = tWarriorEquipPromot_Text[3300518]
tItem[3300518]["Text1-1"] = {111,112}
tItem[3300518]["tOption1-1"] = {1,2}
tItem[3300518]["OptionFunc1"] = "WarriorEquipPromot_OptionToObtain</N>3300518</N>1"
tItem[3300518]["OptionFunc2"] = "WarriorEquipPromot_OptionToObtain</N>3300518</N>2"


-- 15级极品战士头盔礼包
tItem[3300519] = tItem[3300519] or {}
tItem[3300519]["DialogueText"] = tWarriorEquipPromot_Text[3300519]
tItem[3300519]["Text1-1"] = {111,112}
tItem[3300519]["tOption1-1"] = {1,2}
tItem[3300519]["OptionFunc1"] = "WarriorEquipPromot_OptionToObtain</N>3300519</N>1"
tItem[3300519]["OptionFunc2"] = "WarriorEquipPromot_OptionToObtain</N>3300519</N>2"

-- 15级极品战士武器礼包
tItem[3300522] = tItem[3300522] or {}
tItem[3300522]["DialogueText"] = tWarriorEquipPromot_Text[3300522]
tItem[3300522]["Text1-1"] = {111,112}
tItem[3300522]["tOption1-1"] = {1,2}
tItem[3300522]["OptionFunc1"] = "WarriorEquipPromot_OptionToObtain</N>3300522</N>1"
tItem[3300522]["OptionFunc2"] = "WarriorEquipPromot_OptionToObtain</N>3300522</N>2"

-- 极品5%神佑战士武器赠礼包
tItem[3300526] = tItem[3300526] or {}
tItem[3300526]["DialogueText"] = tWarriorEquipPromot_Text[3300526]
tItem[3300526]["Text1-1"] = {111,112}
tItem[3300526]["tOption1-1"] = {1,2}
tItem[3300526]["OptionFunc1"] = "WarriorEquipPromot_OptionToObtain</N>3300526</N>1"
tItem[3300526]["OptionFunc2"] = "WarriorEquipPromot_OptionToObtain</N>3300526</N>2"

-- 15级极品战士头盔礼包
tItem[3300527] = tItem[3300527] or {}
tItem[3300527]["DialogueText"] = tWarriorEquipPromot_Text[3300527]
tItem[3300527]["Text1-1"] = {111,112}
tItem[3300527]["tOption1-1"] = {1,2}
tItem[3300527]["OptionFunc1"] = "WarriorEquipPromot_OptionToObtain</N>3300527</N>1"
tItem[3300527]["OptionFunc2"] = "WarriorEquipPromot_OptionToObtain</N>3300527</N>2"

-- 极品5%神佑战士武器赠礼包
tItem[3300530] = tItem[3300530] or {}
tItem[3300530]["DialogueText"] = tWarriorEquipPromot_Text[3300530]
tItem[3300530]["Text1-1"] = {111,112}
tItem[3300530]["tOption1-1"] = {1,2}
tItem[3300530]["OptionFunc1"] = "WarriorEquipPromot_OptionToObtain</N>3300530</N>1"
tItem[3300530]["OptionFunc2"] = "WarriorEquipPromot_OptionToObtain</N>3300530</N>2"

-------------------------------------------------------铁扇门-----------------------------------------------------------
-- 3301753 +8极品铁扇门头盔礼包
-- 3301759 +8极品铁扇门头盔赠品包

tItem[3301753] = tItem[3301753] or {}
tItem[3301753]["DialogueText"] = tWarriorEquipPromot_Text[3301753]
tItem[3301753]["Text1-1"] = {111,112}
tItem[3301753]["tOption1-1"] = {1,2}
tItem[3301753]["OptionFunc1"] = "WarriorEquipPromot_OptionToObtain</N>3301753</N>1"
tItem[3301753]["OptionFunc2"] = "WarriorEquipPromot_OptionToObtain</N>3301753</N>2"

tItem[3301759] = tItem[3301759] or {}
tItem[3301759]["DialogueText"] = tWarriorEquipPromot_Text[3301759]
tItem[3301759]["Text1-1"] = {111,112}
tItem[3301759]["tOption1-1"] = {1,2}
tItem[3301759]["OptionFunc1"] = "WarriorEquipPromot_OptionToObtain</N>3301759</N>1"
tItem[3301759]["OptionFunc2"] = "WarriorEquipPromot_OptionToObtain</N>3301759</N>2"

-------------------------------------------------------雷神-----------------------------------------------------------
tItem[3319184] = tItem[3200772]
tItem[3319188] = tItem[3200772]
tItem[3319192] = tItem[3200772]
tItem[3319196] = tItem[3200772]

-- 3319183,'雷暴战锤尊享礼盒'
tItemFace[3319183] =1266
tItem[3319183] = tItem[3319183] or {}
tItem[3319183]["DialogueText"] = tWarriorEquipPromot_Text[3319183]
tItem[3319183]["Text1-1"] = {111,112}
tItem[3319183]["tOption1-1"] = {111,112}
tItem[3319183]["OptionFunc111"] = "WarriorEquipPromot_OptionToObtain</N>3319183</N>1"
tItem[3319183]["OptionFunc112"] = "WarriorEquipPromot_OptionToObtain</N>3319183</N>2"
-- 3319185,'狂风战斧尊享礼盒'
tItemFace[3319185] =1023
tItem[3319185] = tItem[3319185] or {}
tItem[3319185]["DialogueText"] = tWarriorEquipPromot_Text[3319185]
tItem[3319185]["Text1-1"] = {111,112}
tItem[3319185]["tOption1-1"] = {111,112}
tItem[3319185]["OptionFunc111"] = "WarriorEquipPromot_OptionToObtain</N>3319185</N>1"
tItem[3319185]["OptionFunc112"] = "WarriorEquipPromot_OptionToObtain</N>3319185</N>2"
-- 3319186,'雷威战盔尊享礼盒'
tItemFace[3319186] =1419
tItem[3319186] = tItem[3319186] or {}
tItem[3319186]["DialogueText"] = tWarriorEquipPromot_Text[3319186]
tItem[3319186]["Text1-1"] = {111,112}
tItem[3319186]["tOption1-1"] = {111,112}
tItem[3319186]["OptionFunc111"] = "WarriorEquipPromot_OptionToObtain</N>3319186</N>1"
tItem[3319186]["OptionFunc112"] = "WarriorEquipPromot_OptionToObtain</N>3319186</N>2"
-- 3319187,'雷暴战锤豪华礼盒'
tItemFace[3319187] =948
tItem[3319187] = tItem[3319187] or {}
tItem[3319187]["DialogueText"] = tWarriorEquipPromot_Text[3319187]
tItem[3319187]["Text1-1"] = {111,112}
tItem[3319187]["tOption1-1"] = {111,112}
tItem[3319187]["OptionFunc111"] = "WarriorEquipPromot_OptionToObtain</N>3319187</N>1"
tItem[3319187]["OptionFunc112"] = "WarriorEquipPromot_OptionToObtain</N>3319187</N>2"
-- 3319189,'狂风战斧豪华礼盒'
tItemFace[3319189] =1029
tItem[3319189] = tItem[3319189] or {}
tItem[3319189]["DialogueText"] = tWarriorEquipPromot_Text[3319189]
tItem[3319189]["Text1-1"] = {111,112}
tItem[3319189]["tOption1-1"] = {111,112}
tItem[3319189]["OptionFunc111"] = "WarriorEquipPromot_OptionToObtain</N>3319189</N>1"
tItem[3319189]["OptionFunc112"] = "WarriorEquipPromot_OptionToObtain</N>3319189</N>2"
-- 3319190,'雷威战盔豪华礼盒'
tItemFace[3319190] =1153
tItem[3319190] = tItem[3319190] or {}
tItem[3319190]["DialogueText"] = tWarriorEquipPromot_Text[3319190]
tItem[3319190]["Text1-1"] = {111,112}
tItem[3319190]["tOption1-1"] = {111,112}
tItem[3319190]["OptionFunc111"] = "WarriorEquipPromot_OptionToObtain</N>3319190</N>1"
tItem[3319190]["OptionFunc112"] = "WarriorEquipPromot_OptionToObtain</N>3319190</N>2"
-- 3319191,'雷光战锤荣耀礼盒'
tItemFace[3319191] =1265
tItem[3319191] = tItem[3319191] or {}
tItem[3319191]["DialogueText"] = tWarriorEquipPromot_Text[3319191]
tItem[3319191]["Text1-1"] = {111,112}
tItem[3319191]["tOption1-1"] = {111,112}
tItem[3319191]["OptionFunc111"] = "WarriorEquipPromot_OptionToObtain</N>3319191</N>1"
tItem[3319191]["OptionFunc112"] = "WarriorEquipPromot_OptionToObtain</N>3319191</N>2"
-- 3319193,'凛风战斧荣耀礼盒'
tItemFace[3319193] =613
tItem[3319193] = tItem[3319193] or {}
tItem[3319193]["DialogueText"] = tWarriorEquipPromot_Text[3319193]
tItem[3319193]["Text1-1"] = {111,112}
tItem[3319193]["tOption1-1"] = {111,112}
tItem[3319193]["OptionFunc111"] = "WarriorEquipPromot_OptionToObtain</N>3319193</N>1"
tItem[3319193]["OptionFunc112"] = "WarriorEquipPromot_OptionToObtain</N>3319193</N>2"
-- 3319194,'雷鸣战盔荣耀礼盒'
tItemFace[3319194] =1441
tItem[3319194] = tItem[3319194] or {}
tItem[3319194]["DialogueText"] = tWarriorEquipPromot_Text[3319194]
tItem[3319194]["Text1-1"] = {111,112}
tItem[3319194]["tOption1-1"] = {111,112}
tItem[3319194]["OptionFunc111"] = "WarriorEquipPromot_OptionToObtain</N>3319194</N>1"
tItem[3319194]["OptionFunc112"] = "WarriorEquipPromot_OptionToObtain</N>3319194</N>2"
-- 3319195,'雷光战锤精装礼盒'
tItemFace[3319195] =1009
tItem[3319195] = tItem[3319195] or {}
tItem[3319195]["DialogueText"] = tWarriorEquipPromot_Text[3319195]
tItem[3319195]["Text1-1"] = {111,112}
tItem[3319195]["tOption1-1"] = {111,112}
tItem[3319195]["OptionFunc111"] = "WarriorEquipPromot_OptionToObtain</N>3319195</N>1"
tItem[3319195]["OptionFunc112"] = "WarriorEquipPromot_OptionToObtain</N>3319195</N>2"
-- 3319197,'凛风战斧精装礼盒'
tItemFace[3319197] =1008
tItem[3319197] = tItem[3319197] or {}
tItem[3319197]["DialogueText"] = tWarriorEquipPromot_Text[3319197]
tItem[3319197]["Text1-1"] = {111,112}
tItem[3319197]["tOption1-1"] = {111,112}
tItem[3319197]["OptionFunc111"] = "WarriorEquipPromot_OptionToObtain</N>3319197</N>1"
tItem[3319197]["OptionFunc112"] = "WarriorEquipPromot_OptionToObtain</N>3319197</N>2"
-- 3319198,'雷鸣战盔精装礼盒'
tItemFace[3319198] =425
tItem[3319198] = tItem[3319198] or {}
tItem[3319198]["DialogueText"] = tWarriorEquipPromot_Text[3319198]
tItem[3319198]["Text1-1"] = {111,112}
tItem[3319198]["tOption1-1"] = {111,112}
tItem[3319198]["OptionFunc111"] = "WarriorEquipPromot_OptionToObtain</N>3319198</N>1"
tItem[3319198]["OptionFunc112"] = "WarriorEquipPromot_OptionToObtain</N>3319198</N>2"

-------------------------------------------------------勇士-----------------------------------------------------------
tItem[3312725] = tItem[3200772]
tItem[3312729] = tItem[3200772]
tItem[3312733] = tItem[3200772]
tItem[3312737] = tItem[3200772]

-- 3312724,'勇士神武尊享礼盒'
tItemFace[3312724] =1266
tItem[3312724] = tItem[3312724] or {}
tItem[3312724]["DialogueText"] = tWarriorEquipPromot_Text[3312724]
tItem[3312724]["Text1-1"] = {111,112}
tItem[3312724]["tOption1-1"] = {111,112,113,114,115,116,117,118}
tItem[3312724]["OptionFunc111"] = "WarriorEquipPromot_OptionToObtain</N>3312724</N>1"
tItem[3312724]["OptionFunc112"] = "WarriorEquipPromot_OptionToObtain</N>3312724</N>2"
tItem[3312724]["OptionFunc113"] = "WarriorEquipPromot_OptionToObtain</N>3312724</N>3"
tItem[3312724]["OptionFunc114"] = "WarriorEquipPromot_OptionToObtain</N>3312724</N>4"
tItem[3312724]["OptionFunc115"] = "WarriorEquipPromot_OptionToObtain</N>3312724</N>5"
tItem[3312724]["OptionFunc116"] = "WarriorEquipPromot_OptionToObtain</N>3312724</N>6"
tItem[3312724]["OptionFunc117"] = "WarriorEquipPromot_OptionToObtain</N>3312724</N>7"
tItem[3312724]["OptionFunc118"] = "WarriorEquipPromot_OptionToObtain</N>3312724</N>8"
-- 3312727,'冥魂百战箍尊享礼盒'
tItemFace[3312727] =808
tItem[3312727] = tItem[3312727] or {}
tItem[3312727]["DialogueText"] = tWarriorEquipPromot_Text[3312727]
tItem[3312727]["Text1-1"] = {111,112}
tItem[3312727]["tOption1-1"] = {111,112}
tItem[3312727]["OptionFunc111"] = "WarriorEquipPromot_OptionToObtain</N>3312727</N>1"
tItem[3312727]["OptionFunc112"] = "WarriorEquipPromot_OptionToObtain</N>3312727</N>2"
-- 3312728,'勇士神武豪华礼盒'
tItemFace[3312728] =948
tItem[3312728] = tItem[3312728] or {}
tItem[3312728]["DialogueText"] = tWarriorEquipPromot_Text[3312728]
tItem[3312728]["Text1-1"] = {111,112}
tItem[3312728]["tOption1-1"] = {111,112,113,114,115,116,117,118}
tItem[3312728]["OptionFunc111"] = "WarriorEquipPromot_OptionToObtain</N>3312728</N>1"
tItem[3312728]["OptionFunc112"] = "WarriorEquipPromot_OptionToObtain</N>3312728</N>2"
tItem[3312728]["OptionFunc113"] = "WarriorEquipPromot_OptionToObtain</N>3312728</N>3"
tItem[3312728]["OptionFunc114"] = "WarriorEquipPromot_OptionToObtain</N>3312728</N>4"
tItem[3312728]["OptionFunc115"] = "WarriorEquipPromot_OptionToObtain</N>3312728</N>5"
tItem[3312728]["OptionFunc116"] = "WarriorEquipPromot_OptionToObtain</N>3312728</N>6"
tItem[3312728]["OptionFunc117"] = "WarriorEquipPromot_OptionToObtain</N>3312728</N>7"
tItem[3312728]["OptionFunc118"] = "WarriorEquipPromot_OptionToObtain</N>3312728</N>8"
-- 3312731,'冥魂百战箍豪华礼盒'
tItemFace[3312731] =1422
tItem[3312731] = tItem[3312731] or {}
tItem[3312731]["DialogueText"] = tWarriorEquipPromot_Text[3312731]
tItem[3312731]["Text1-1"] = {111,112}
tItem[3312731]["tOption1-1"] = {111,112,113,114,115,116}
tItem[3312731]["OptionFunc111"] = "WarriorEquipPromot_OptionToObtain</N>3312731</N>1"
tItem[3312731]["OptionFunc112"] = "WarriorEquipPromot_OptionToObtain</N>3312731</N>2"
tItem[3312731]["OptionFunc113"] = "WarriorEquipPromot_OptionToObtain</N>3312731</N>3"
tItem[3312731]["OptionFunc114"] = "WarriorEquipPromot_OptionToObtain</N>3312731</N>4"
tItem[3312731]["OptionFunc115"] = "WarriorEquipPromot_OptionToObtain</N>3312731</N>5"
tItem[3312731]["OptionFunc116"] = "WarriorEquipPromot_OptionToObtain</N>3312731</N>6"
-- 3312732,'勇士神武荣耀礼盒'
tItemFace[3312732] =1265
tItem[3312732] = tItem[3312732] or {}
tItem[3312732]["DialogueText"] = tWarriorEquipPromot_Text[3312732]
tItem[3312732]["Text1-1"] = {111,112}
tItem[3312732]["tOption1-1"] = {111,112,113,114,115,116,117,118}
tItem[3312732]["OptionFunc111"] = "WarriorEquipPromot_OptionToObtain</N>3312732</N>1"
tItem[3312732]["OptionFunc112"] = "WarriorEquipPromot_OptionToObtain</N>3312732</N>2"
tItem[3312732]["OptionFunc113"] = "WarriorEquipPromot_OptionToObtain</N>3312732</N>3"
tItem[3312732]["OptionFunc114"] = "WarriorEquipPromot_OptionToObtain</N>3312732</N>4"
tItem[3312732]["OptionFunc115"] = "WarriorEquipPromot_OptionToObtain</N>3312732</N>5"
tItem[3312732]["OptionFunc116"] = "WarriorEquipPromot_OptionToObtain</N>3312732</N>6"
tItem[3312732]["OptionFunc117"] = "WarriorEquipPromot_OptionToObtain</N>3312732</N>7"
tItem[3312732]["OptionFunc118"] = "WarriorEquipPromot_OptionToObtain</N>3312732</N>8"
-- 3312735,'罗汉箍礼盒'
tItemFace[3312735] =1558
tItem[3312735] = tItem[3312735] or {}
tItem[3312735]["DialogueText"] = tWarriorEquipPromot_Text[3312735]
tItem[3312735]["Text1-1"] = {111,112}
tItem[3312735]["tOption1-1"] = {111,112}
tItem[3312735]["OptionFunc111"] = "WarriorEquipPromot_OptionToObtain</N>3312735</N>1"
tItem[3312735]["OptionFunc112"] = "WarriorEquipPromot_OptionToObtain</N>3312735</N>2"
-- 3312736,'勇士神武精装礼盒'
tItemFace[3312736] =909
tItem[3312736] = tItem[3312736] or {}
tItem[3312736]["DialogueText"] = tWarriorEquipPromot_Text[3312736]
tItem[3312736]["Text1-1"] = {111,112}
tItem[3312736]["tOption1-1"] = {111,112,113,114,115,116,117,118}
tItem[3312736]["OptionFunc111"] = "WarriorEquipPromot_OptionToObtain</N>3312736</N>1"
tItem[3312736]["OptionFunc112"] = "WarriorEquipPromot_OptionToObtain</N>3312736</N>2"
tItem[3312736]["OptionFunc113"] = "WarriorEquipPromot_OptionToObtain</N>3312736</N>3"
tItem[3312736]["OptionFunc114"] = "WarriorEquipPromot_OptionToObtain</N>3312736</N>4"
tItem[3312736]["OptionFunc115"] = "WarriorEquipPromot_OptionToObtain</N>3312736</N>5"
tItem[3312736]["OptionFunc116"] = "WarriorEquipPromot_OptionToObtain</N>3312736</N>6"
tItem[3312736]["OptionFunc117"] = "WarriorEquipPromot_OptionToObtain</N>3312736</N>7"
tItem[3312736]["OptionFunc118"] = "WarriorEquipPromot_OptionToObtain</N>3312736</N>8"
-- 3312739,'力士箍精装礼盒'
tItemFace[3312739] =425
tItem[3312739] = tItem[3312739] or {}
tItem[3312739]["DialogueText"] = tWarriorEquipPromot_Text[3312739]
tItem[3312739]["Text1-1"] = {111,112}
tItem[3312739]["tOption1-1"] = {111,112}
tItem[3312739]["OptionFunc111"] = "WarriorEquipPromot_OptionToObtain</N>3312739</N>1"
tItem[3312739]["OptionFunc112"] = "WarriorEquipPromot_OptionToObtain</N>3312739</N>2"

-------------------------------------------------------忍者-----------------------------------------------------------
tItem[3315466] = tItem[3200772]
tItem[3315470] = tItem[3200772]
tItem[3315474] = tItem[3200772]
tItem[3315478] = tItem[3200772]

-- 3315465,'忍者神武尊享礼盒'
tItemFace[3315465] =1266
tItem[3315465] = tItem[3315465] or {}
tItem[3315465]["DialogueText"] = tWarriorEquipPromot_Text[3315465]
tItem[3315465]["Text1-1"] = {111,112}
tItem[3315465]["tOption1-1"] = {111,112,113,114}
tItem[3315465]["OptionFunc111"] = "WarriorEquipPromot_OptionToObtain</N>3315465</N>1"
tItem[3315465]["OptionFunc112"] = "WarriorEquipPromot_OptionToObtain</N>3315465</N>2"
tItem[3315465]["OptionFunc113"] = "WarriorEquipPromot_OptionToObtain</N>3315465</N>3"
tItem[3315465]["OptionFunc114"] = "WarriorEquipPromot_OptionToObtain</N>3315465</N>4"
-- 3315468,'天照樱舞尊享礼盒'
tItemFace[3315468] =808
tItem[3315468] = tItem[3315468] or {}
tItem[3315468]["DialogueText"] = tWarriorEquipPromot_Text[3315468]
tItem[3315468]["Text1-1"] = {111,112}
tItem[3315468]["tOption1-1"] = {111,112}
tItem[3315468]["OptionFunc111"] = "WarriorEquipPromot_OptionToObtain</N>3315468</N>1"
tItem[3315468]["OptionFunc112"] = "WarriorEquipPromot_OptionToObtain</N>3315468</N>2"
-- 3315469,'忍者神武豪华礼盒'
tItemFace[3315469] =948
tItem[3315469] = tItem[3315469] or {}
tItem[3315469]["DialogueText"] = tWarriorEquipPromot_Text[3315469]
tItem[3315469]["Text1-1"] = {111,112}
tItem[3315469]["tOption1-1"] = {111,112,113,114}
tItem[3315469]["OptionFunc111"] = "WarriorEquipPromot_OptionToObtain</N>3315469</N>1"
tItem[3315469]["OptionFunc112"] = "WarriorEquipPromot_OptionToObtain</N>3315469</N>2"
tItem[3315469]["OptionFunc113"] = "WarriorEquipPromot_OptionToObtain</N>3315469</N>3"
tItem[3315469]["OptionFunc114"] = "WarriorEquipPromot_OptionToObtain</N>3315469</N>4"
-- 3315472,'天照樱舞豪华礼盒'
tItemFace[3315472] =1422
tItem[3315472] = tItem[3315472] or {}
tItem[3315472]["DialogueText"] = tWarriorEquipPromot_Text[3315472]
tItem[3315472]["Text1-1"] = {111,112}
tItem[3315472]["tOption1-1"] = {111,112}
tItem[3315472]["OptionFunc111"] = "WarriorEquipPromot_OptionToObtain</N>3315472</N>1"
tItem[3315472]["OptionFunc112"] = "WarriorEquipPromot_OptionToObtain</N>3315472</N>2"
-- 3315473,'忍者神武荣耀礼盒'
tItemFace[3315473] =1265
tItem[3315473] = tItem[3315473] or {}
tItem[3315473]["DialogueText"] = tWarriorEquipPromot_Text[3315473]
tItem[3315473]["Text1-1"] = {111,112}
tItem[3315473]["tOption1-1"] = {111,112,113,114}
tItem[3315473]["OptionFunc111"] = "WarriorEquipPromot_OptionToObtain</N>3315473</N>1"
tItem[3315473]["OptionFunc112"] = "WarriorEquipPromot_OptionToObtain</N>3315473</N>2"
tItem[3315473]["OptionFunc113"] = "WarriorEquipPromot_OptionToObtain</N>3315473</N>3"
tItem[3315473]["OptionFunc114"] = "WarriorEquipPromot_OptionToObtain</N>3315473</N>4"
-- 3315476,'煞魂护额荣耀礼盒'
tItemFace[3315476] =1558
tItem[3315476] = tItem[3315476] or {}
tItem[3315476]["DialogueText"] = tWarriorEquipPromot_Text[3315476]
tItem[3315476]["Text1-1"] = {111,112}
tItem[3315476]["tOption1-1"] = {111,112}
tItem[3315476]["OptionFunc111"] = "WarriorEquipPromot_OptionToObtain</N>3315476</N>1"
tItem[3315476]["OptionFunc112"] = "WarriorEquipPromot_OptionToObtain</N>3315476</N>2"
-- 3315477,'忍者神武精装礼盒'
tItemFace[3315477] =909
tItem[3315477] = tItem[3315477] or {}
tItem[3315477]["DialogueText"] = tWarriorEquipPromot_Text[3315477]
tItem[3315477]["Text1-1"] = {111,112}
tItem[3315477]["tOption1-1"] = {111,112,113,114}
tItem[3315477]["OptionFunc111"] = "WarriorEquipPromot_OptionToObtain</N>3315477</N>1"
tItem[3315477]["OptionFunc112"] = "WarriorEquipPromot_OptionToObtain</N>3315477</N>2"
tItem[3315477]["OptionFunc113"] = "WarriorEquipPromot_OptionToObtain</N>3315477</N>3"
tItem[3315477]["OptionFunc114"] = "WarriorEquipPromot_OptionToObtain</N>3315477</N>4"
-- 3315481,'紫雁护额精装礼盒'
tItemFace[3315481] =425
tItem[3315481] = tItem[3315481] or {}
tItem[3315481]["DialogueText"] = tWarriorEquipPromot_Text[3315481]
tItem[3315481]["Text1-1"] = {111,112}
tItem[3315481]["tOption1-1"] = {111,112}
tItem[3315481]["OptionFunc111"] = "WarriorEquipPromot_OptionToObtain</N>3315481</N>1"
tItem[3315481]["OptionFunc112"] = "WarriorEquipPromot_OptionToObtain</N>3315481</N>2"


tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],WarriorEquipPromot_StartUp)