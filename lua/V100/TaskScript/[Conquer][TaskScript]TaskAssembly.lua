------------------------------------------------------------------------------------
--Name:		200115[简体征服][活动脚本]忍者翻身版本--任务集会所功能
--Creator: 	洪聪敏
--Created:	2020-01-15
------------------------------------------------------------------------------------
--logid ：20108
--统一命名前缀：TaskAssembly_

------------------------------------------------------------------------------------
local tTaskAssembly_Cont = {}
	tTaskAssembly_Cont["Lev"] = 70
	tTaskAssembly_Cont["Mete"] = 0
	tTaskAssembly_Cont["MapDoc"] = 10010
	
	tTaskAssembly_Cont["LevMap"] = {}
	tTaskAssembly_Cont["LevMap"]["MapId"] = 1002
	tTaskAssembly_Cont["LevMap"]["Pox"] = 319
	tTaskAssembly_Cont["LevMap"]["Poy"] = 446
	
	tTaskAssembly_Cont["LevMap"]["NoGif"] = {}
	tTaskAssembly_Cont["LevMap"]["NoGif"]["MapId"] = 1036
	tTaskAssembly_Cont["LevMap"]["NoGif"]["Pox"] = 184
	tTaskAssembly_Cont["LevMap"]["NoGif"]["Poy"] = 184
	
	
	
	
	tTaskAssembly_Cont["Mail"] = {}
	tTaskAssembly_Cont["Mail"]["ExistDay"]=30
	tTaskAssembly_Cont["Mail"]["Comon"] = {}
	tTaskAssembly_Cont["Mail"]["Comon"][590000]= 576910
	tTaskAssembly_Cont["Mail"]["Comon"][590001]= 576911
	tTaskAssembly_Cont["Mail"]["Comon"][590002]= 576912
	tTaskAssembly_Cont["Mail"]["Comon"][590003]= 576913
	tTaskAssembly_Cont["Mail"]["Comon"][590004]= 576914
	tTaskAssembly_Cont["Mail"]["Comon"][590005]= 576915
	tTaskAssembly_Cont["Mail"]["Comon"][590006]= 576916
	tTaskAssembly_Cont["Mail"]["Comon"][590007]= 576917
	tTaskAssembly_Cont["Mail"]["Comon"][590008]= 576918
	tTaskAssembly_Cont["Mail"]["Comon"][590009]= 576919
	tTaskAssembly_Cont["Mail"]["Comon"][590010]= 576920
	tTaskAssembly_Cont["Mail"]["Comon"][590011]= 576921
	tTaskAssembly_Cont["Mail"]["Comon"][590012]= 576922
	tTaskAssembly_Cont["Mail"]["Comon"][590013]= 576923
	tTaskAssembly_Cont["Mail"]["Comon"][590014]= 576924
	tTaskAssembly_Cont["Mail"]["Comon"][590015]= 576925
	tTaskAssembly_Cont["Mail"]["Comon"][590016]= 576926
	tTaskAssembly_Cont["Mail"]["Comon"][590017]= 576927
	tTaskAssembly_Cont["Mail"]["Comon"][590018]= 576928
	tTaskAssembly_Cont["Mail"]["Comon"][590019]= 576929
	tTaskAssembly_Cont["Mail"]["Comon"][590020]= 576930
	tTaskAssembly_Cont["Mail"]["Comon"][590021]= 576931
	tTaskAssembly_Cont["Mail"]["Comon"][590022]= 576932
	tTaskAssembly_Cont["Mail"]["Comon"][590023]= 576933
	tTaskAssembly_Cont["Mail"]["Comon"][590024]= 576934
	tTaskAssembly_Cont["Mail"]["Comon"][590025]= 576935
	tTaskAssembly_Cont["Mail"]["Comon"][590026]= 576936
	tTaskAssembly_Cont["Mail"]["Comon"][590027]= 576937
	tTaskAssembly_Cont["Mail"]["Comon"][590028]= 576938
	tTaskAssembly_Cont["Mail"]["Comon"][590029]= 576939
	tTaskAssembly_Cont["Mail"]["Comon"][590030]= 576940
	tTaskAssembly_Cont["Mail"]["Comon"][590031]= 576941
	tTaskAssembly_Cont["Mail"]["Comon"][590032]= 576942
	tTaskAssembly_Cont["Mail"]["Comon"][590033]= 576943
	tTaskAssembly_Cont["Mail"]["Comon"][590034]= 576944
	tTaskAssembly_Cont["Mail"]["Comon"][590035]= 576945
	tTaskAssembly_Cont["Mail"]["Comon"][590036]= 576946
	tTaskAssembly_Cont["Mail"]["Comon"][590037]= 576947
	tTaskAssembly_Cont["Mail"]["Comon"][590038]= 576948
	tTaskAssembly_Cont["Mail"]["Comon"][590039]= 576949
	tTaskAssembly_Cont["Mail"]["Comon"][590040]= 576950
	tTaskAssembly_Cont["Mail"]["Comon"][590041]= 576951
	tTaskAssembly_Cont["Mail"]["Comon"][590042]= 576952
	tTaskAssembly_Cont["Mail"]["Comon"][590043]= 576953
	tTaskAssembly_Cont["Mail"]["Comon"][590044]= 576954
	tTaskAssembly_Cont["Mail"]["Comon"][590045]= 576955
	tTaskAssembly_Cont["Mail"]["Comon"][590046]= 576956
	tTaskAssembly_Cont["Mail"]["Comon"][590047]= 576957
	tTaskAssembly_Cont["Mail"]["Comon"][590048]= 576958
	tTaskAssembly_Cont["Mail"]["Comon"][590049]= 576959
	tTaskAssembly_Cont["Mail"]["Comon"][590050]= 576960
	tTaskAssembly_Cont["Mail"]["Comon"][590051]= 576961
	tTaskAssembly_Cont["Mail"]["Comon"][590052]= 576962
	tTaskAssembly_Cont["Mail"]["Comon"][590053]= 576963
	tTaskAssembly_Cont["Mail"]["Comon"][590054]= 576964
	tTaskAssembly_Cont["Mail"]["Comon"][590055]= 576965
	tTaskAssembly_Cont["Mail"]["Comon"][590056]= 576966
	tTaskAssembly_Cont["Mail"]["Comon"][590057]= 576967
	tTaskAssembly_Cont["Mail"]["Comon"][590058]= 576968
	tTaskAssembly_Cont["Mail"]["Comon"][590059]= 576969
	tTaskAssembly_Cont["Mail"]["Comon"][590060]= 576970
	tTaskAssembly_Cont["Mail"]["Comon"][590061]= 576971
	tTaskAssembly_Cont["Mail"]["Comon"][590062]= 576972
	tTaskAssembly_Cont["Mail"]["Comon"][590063]= 576973
	tTaskAssembly_Cont["Mail"]["Comon"][590064]= 576974
	tTaskAssembly_Cont["Mail"]["Comon"][590065]= 576975
	tTaskAssembly_Cont["Mail"]["Comon"][590066]= 576976
	tTaskAssembly_Cont["Mail"]["Comon"][590067]= 576977
	tTaskAssembly_Cont["Mail"]["Comon"][590068]= 576978
	tTaskAssembly_Cont["Mail"]["Comon"][590069]= 576979
	tTaskAssembly_Cont["Mail"]["Comon"][590070]= 576980
	tTaskAssembly_Cont["Mail"]["Comon"][590071]= 576981

	tTaskAssembly_Cont["Mail"]["NoGif"] = {}
	tTaskAssembly_Cont["Mail"]["NoGif"][590000]= 576983
	tTaskAssembly_Cont["Mail"]["NoGif"][590001]= 576984
	tTaskAssembly_Cont["Mail"]["NoGif"][590002]= 576985
	tTaskAssembly_Cont["Mail"]["NoGif"][590003]= 576986
	tTaskAssembly_Cont["Mail"]["NoGif"][590004]= 576987
	tTaskAssembly_Cont["Mail"]["NoGif"][590005]= 576988
	tTaskAssembly_Cont["Mail"]["NoGif"][590006]= 576989
	tTaskAssembly_Cont["Mail"]["NoGif"][590007]= 576990
	tTaskAssembly_Cont["Mail"]["NoGif"][590008]= 576991
	tTaskAssembly_Cont["Mail"]["NoGif"][590009]= 576992
	tTaskAssembly_Cont["Mail"]["NoGif"][590010]= 576993
	tTaskAssembly_Cont["Mail"]["NoGif"][590011]= 576994
	tTaskAssembly_Cont["Mail"]["NoGif"][590012]= 576995
	tTaskAssembly_Cont["Mail"]["NoGif"][590013]= 576996
	tTaskAssembly_Cont["Mail"]["NoGif"][590014]= 576997
	tTaskAssembly_Cont["Mail"]["NoGif"][590015]= 576998
	tTaskAssembly_Cont["Mail"]["NoGif"][590016]= 576999
	tTaskAssembly_Cont["Mail"]["NoGif"][590017]= 577000
	tTaskAssembly_Cont["Mail"]["NoGif"][590018]= 577001
	tTaskAssembly_Cont["Mail"]["NoGif"][590019]= 577002
	tTaskAssembly_Cont["Mail"]["NoGif"][590020]= 577003
	tTaskAssembly_Cont["Mail"]["NoGif"][590021]= 577004
	tTaskAssembly_Cont["Mail"]["NoGif"][590022]= 577005
	tTaskAssembly_Cont["Mail"]["NoGif"][590023]= 577006
	tTaskAssembly_Cont["Mail"]["NoGif"][590024]= 577007
	tTaskAssembly_Cont["Mail"]["NoGif"][590025]= 577008
	tTaskAssembly_Cont["Mail"]["NoGif"][590026]= 577009
	tTaskAssembly_Cont["Mail"]["NoGif"][590027]= 577010
	tTaskAssembly_Cont["Mail"]["NoGif"][590028]= 577011
	tTaskAssembly_Cont["Mail"]["NoGif"][590029]= 577012
	tTaskAssembly_Cont["Mail"]["NoGif"][590030]= 577013
	tTaskAssembly_Cont["Mail"]["NoGif"][590031]= 577014
	tTaskAssembly_Cont["Mail"]["NoGif"][590032]= 577015
	tTaskAssembly_Cont["Mail"]["NoGif"][590033]= 577016
	tTaskAssembly_Cont["Mail"]["NoGif"][590034]= 577017
	tTaskAssembly_Cont["Mail"]["NoGif"][590035]= 577018
	tTaskAssembly_Cont["Mail"]["NoGif"][590036]= 577019
	tTaskAssembly_Cont["Mail"]["NoGif"][590037]= 577020
	tTaskAssembly_Cont["Mail"]["NoGif"][590038]= 577021
	tTaskAssembly_Cont["Mail"]["NoGif"][590039]= 577022
	tTaskAssembly_Cont["Mail"]["NoGif"][590040]= 577023
	tTaskAssembly_Cont["Mail"]["NoGif"][590041]= 577024
	tTaskAssembly_Cont["Mail"]["NoGif"][590042]= 577025
	tTaskAssembly_Cont["Mail"]["NoGif"][590043]= 577026
	tTaskAssembly_Cont["Mail"]["NoGif"][590044]= 577027
	tTaskAssembly_Cont["Mail"]["NoGif"][590045]= 577028
	tTaskAssembly_Cont["Mail"]["NoGif"][590046]= 577029
	tTaskAssembly_Cont["Mail"]["NoGif"][590047]= 577030
	tTaskAssembly_Cont["Mail"]["NoGif"][590048]= 577031
	tTaskAssembly_Cont["Mail"]["NoGif"][590049]= 577032
	tTaskAssembly_Cont["Mail"]["NoGif"][590050]= 577033
	tTaskAssembly_Cont["Mail"]["NoGif"][590051]= 577034
	tTaskAssembly_Cont["Mail"]["NoGif"][590052]= 577035
	tTaskAssembly_Cont["Mail"]["NoGif"][590053]= 577036
	tTaskAssembly_Cont["Mail"]["NoGif"][590054]= 577037
	tTaskAssembly_Cont["Mail"]["NoGif"][590055]= 577038
	tTaskAssembly_Cont["Mail"]["NoGif"][590056]= 577039
	tTaskAssembly_Cont["Mail"]["NoGif"][590057]= 577040
	tTaskAssembly_Cont["Mail"]["NoGif"][590058]= 577041
	tTaskAssembly_Cont["Mail"]["NoGif"][590059]= 577042
	tTaskAssembly_Cont["Mail"]["NoGif"][590060]= 577043
	tTaskAssembly_Cont["Mail"]["NoGif"][590061]= 577044
	tTaskAssembly_Cont["Mail"]["NoGif"][590062]= 577045
	tTaskAssembly_Cont["Mail"]["NoGif"][590063]= 577046
	tTaskAssembly_Cont["Mail"]["NoGif"][590064]= 577047
	tTaskAssembly_Cont["Mail"]["NoGif"][590065]= 577048
	tTaskAssembly_Cont["Mail"]["NoGif"][590066]= 577049
	tTaskAssembly_Cont["Mail"]["NoGif"][590067]= 577050
	tTaskAssembly_Cont["Mail"]["NoGif"][590068]= 577051
	tTaskAssembly_Cont["Mail"]["NoGif"][590069]= 577052
	tTaskAssembly_Cont["Mail"]["NoGif"][590070]= 577053
	tTaskAssembly_Cont["Mail"]["NoGif"][590071]= 577054





	tTaskAssembly_Cont["Npc"] = {}
	tTaskAssembly_Cont["Npc"][22050] = {590000}
	tTaskAssembly_Cont["Npc"][17400] = {590001}
	tTaskAssembly_Cont["Npc"][23021] = {590002}
	tTaskAssembly_Cont["Npc"][18786] = {590003}
	tTaskAssembly_Cont["Npc"][7935] =  {590004}
	tTaskAssembly_Cont["Npc"][26202] = {590005,590011,590017}
	tTaskAssembly_Cont["Npc"][26203] = {590006,590012,590018}
	tTaskAssembly_Cont["Npc"][26204] = {590007,590013,590019}
	tTaskAssembly_Cont["Npc"][26227] = {590008,590014,590020}
	tTaskAssembly_Cont["Npc"][26229] = {590009,590015,590021}
	tTaskAssembly_Cont["Npc"][26230] = {590010,590016,590022}
	

	--陷阱ID对应任务ID
	tTaskAssembly_Cont["Trap"] = {}
	tTaskAssembly_Cont["Trap"][995959] = 590023
	tTaskAssembly_Cont["Trap"][995960] = 590024
	tTaskAssembly_Cont["Trap"][995961] = 590025
	tTaskAssembly_Cont["Trap"][995962] = 590026
	tTaskAssembly_Cont["Trap"][995963] = 590027
	tTaskAssembly_Cont["Trap"][995964] = 590028
	tTaskAssembly_Cont["Trap"][995965] = 590029
	tTaskAssembly_Cont["Trap"][995966] = 590030
	tTaskAssembly_Cont["Trap"][995967] = 590031

	--陷阱怪物ID
	tTaskAssembly_Cont["TrapMonster"] = {}
	tTaskAssembly_Cont["TrapMonster"]["MonsterId"] = 1314
	tTaskAssembly_Cont["TrapMonster"]["GenId"] = 30841
	
	--中级讨伐任务，需要基数
	tTaskAssembly_Cont["MiddleTask"] = {590049,590050,590051,590052,590053,590054,590055,590056}
	tTaskAssembly_Cont["MiddleTaskNeedNum"] = 10
	tTaskAssembly_Cont["MonsterId"] = {}
	tTaskAssembly_Cont["MonsterId"][1302] = {590049,590051,590053,590055}
	tTaskAssembly_Cont["MonsterId"][1303] = {590050,590052,590054,590056}
	tTaskAssembly_Cont["MonsterId"][1314] = {590023,590024,590025,590026,590027,590028,590029,590030,590031}
	tTaskAssembly_Cont["MonsterId"][1304] = {590060,590064}
	tTaskAssembly_Cont["MonsterId"][1305] = {590061,590065}
	tTaskAssembly_Cont["MonsterId"][1306] = {590062,590066}
	tTaskAssembly_Cont["MonsterId"][1307] = {590063,590067}
	tTaskAssembly_Cont["MonsterId"][1308] = {590070,590071}
	tTaskAssembly_Cont["MonsterId"][1309] = {590057}
	tTaskAssembly_Cont["MonsterId"][1310] = {590058}
	tTaskAssembly_Cont["MonsterId"][1311] = {590059}
	tTaskAssembly_Cont["MonsterId"][1312] = {590068}
	tTaskAssembly_Cont["MonsterId"][1313] = {590069}

	tTaskAssembly_Cont["SubmitTask"] = {590032,590033,590034,590035,590036,590037,590038,590039,590040,590041,590042,590043,590044,590045,590046,590047,590048}
	tTaskAssembly_Cont["Item"] = {}
	tTaskAssembly_Cont["Item"][590032]={}
	tTaskAssembly_Cont["Item"][590032]["Id"] = {700121,700101,700041,700031,700021,700011,700001,700051,700061,700071} 
	tTaskAssembly_Cont["Item"][590032]["Num"] = 1
	
	tTaskAssembly_Cont["Item"][590033]={}
	tTaskAssembly_Cont["Item"][590033]["Id"] = {1088001} 
	tTaskAssembly_Cont["Item"][590033]["Num"] = 1
	
	tTaskAssembly_Cont["Item"][590034]={}
	tTaskAssembly_Cont["Item"][590034]["Id"] = {754001,753001,752001,751001} 
	tTaskAssembly_Cont["Item"][590034]["Num"] = 1
	
	tTaskAssembly_Cont["Item"][590035]={}
	tTaskAssembly_Cont["Item"][590035]["Id"] = {754003,753003,752003,751003} 
	tTaskAssembly_Cont["Item"][590035]["Num"] = 1
	
	tTaskAssembly_Cont["Item"][590036]={}
	tTaskAssembly_Cont["Item"][590036]["Id"] = {729088} 
	tTaskAssembly_Cont["Item"][590036]["Num"] = 30 
	
	tTaskAssembly_Cont["Item"][590037]={}
	tTaskAssembly_Cont["Item"][590037]["Id"] = {729089} 
	tTaskAssembly_Cont["Item"][590037]["Num"] = 30 
	
	tTaskAssembly_Cont["Item"][590038]={}
	tTaskAssembly_Cont["Item"][590038]["Id"] = {729090} 
	tTaskAssembly_Cont["Item"][590038]["Num"] = 30 
	
	tTaskAssembly_Cont["Item"][590039]={}
	tTaskAssembly_Cont["Item"][590039]["Id"] = {729091} 
	tTaskAssembly_Cont["Item"][590039]["Num"] = 30 
	
	tTaskAssembly_Cont["Item"][590040]={}
	tTaskAssembly_Cont["Item"][590040]["Id"] = {729092} 
	tTaskAssembly_Cont["Item"][590040]["Num"] = 30 
	
	tTaskAssembly_Cont["Item"][590041]={}
	tTaskAssembly_Cont["Item"][590041]["Id"] = {729093} 
	tTaskAssembly_Cont["Item"][590041]["Num"] = 30 
	
	tTaskAssembly_Cont["Item"][590042]={}
	tTaskAssembly_Cont["Item"][590042]["Id"] = {729094} 
	tTaskAssembly_Cont["Item"][590042]["Num"] = 30 
	
	tTaskAssembly_Cont["Item"][590043]={}
	tTaskAssembly_Cont["Item"][590043]["Id"] = {729095} 
	tTaskAssembly_Cont["Item"][590043]["Num"] = 30
	
	tTaskAssembly_Cont["Item"][590044]={}
	tTaskAssembly_Cont["Item"][590044]["Id"] = {729096} 
	tTaskAssembly_Cont["Item"][590044]["Num"] = 30 
	
	tTaskAssembly_Cont["Item"][590045]={}
	tTaskAssembly_Cont["Item"][590045]["Id"] = {729098} 
	tTaskAssembly_Cont["Item"][590045]["Num"] = 30
	
	tTaskAssembly_Cont["Item"][590046]={}
	tTaskAssembly_Cont["Item"][590046]["Id"] = {729099} 
	tTaskAssembly_Cont["Item"][590046]["Num"] = 30
	
	tTaskAssembly_Cont["Item"][590047]={}
	tTaskAssembly_Cont["Item"][590047]["Id"] = {729100} 
	tTaskAssembly_Cont["Item"][590047]["Num"] = 30
	
	tTaskAssembly_Cont["Item"][590048]={}
	tTaskAssembly_Cont["Item"][590048]["Id"] = {729101} 
	tTaskAssembly_Cont["Item"][590048]["Num"] = 30
	
	
	tTaskAssembly_Cont["Instance"] = {590057,590058,590059,590060,590061,590062,590063,590064,590065,590066,590067,590068,590069,590070,590071}
	
	
	tTaskAssembly_Cont["AddMonster"] = {}
	tTaskAssembly_Cont["AddMonster"]["nPosX"] = 51 
	tTaskAssembly_Cont["AddMonster"]["nPosY"] = 42
	tTaskAssembly_Cont["AddMonster"][590057]={}
	tTaskAssembly_Cont["AddMonster"][590057]["MonsterId"] =  1309
	tTaskAssembly_Cont["AddMonster"][590057]["GenId"] = 30827
	tTaskAssembly_Cont["AddMonster"][590057]["InstanceId"] = 668
	
	tTaskAssembly_Cont["AddMonster"][590058]={}
	tTaskAssembly_Cont["AddMonster"][590058]["MonsterId"] =  1310
	tTaskAssembly_Cont["AddMonster"][590058]["GenId"] = 30828
	tTaskAssembly_Cont["AddMonster"][590058]["InstanceId"] = 669
	
	tTaskAssembly_Cont["AddMonster"][590059]={}
	tTaskAssembly_Cont["AddMonster"][590059]["MonsterId"] =  1311
	tTaskAssembly_Cont["AddMonster"][590059]["GenId"] = 30829
	tTaskAssembly_Cont["AddMonster"][590059]["InstanceId"] = 670
	
	tTaskAssembly_Cont["AddMonster"][590060]={}
	tTaskAssembly_Cont["AddMonster"][590060]["MonsterId"] =  1304
	tTaskAssembly_Cont["AddMonster"][590060]["GenId"] = 30830
	tTaskAssembly_Cont["AddMonster"][590060]["InstanceId"] = 671
	
	tTaskAssembly_Cont["AddMonster"][590061]={}
	tTaskAssembly_Cont["AddMonster"][590061]["MonsterId"] =  1305
	tTaskAssembly_Cont["AddMonster"][590061]["GenId"] = 30831
	tTaskAssembly_Cont["AddMonster"][590061]["InstanceId"] = 672
	
	tTaskAssembly_Cont["AddMonster"][590062]={}
	tTaskAssembly_Cont["AddMonster"][590062]["MonsterId"] =  1306
	tTaskAssembly_Cont["AddMonster"][590062]["GenId"] = 30832
	tTaskAssembly_Cont["AddMonster"][590062]["InstanceId"] = 673
	
	tTaskAssembly_Cont["AddMonster"][590063]={}
	tTaskAssembly_Cont["AddMonster"][590063]["MonsterId"] =  1307
	tTaskAssembly_Cont["AddMonster"][590063]["GenId"] = 30833
	tTaskAssembly_Cont["AddMonster"][590063]["InstanceId"] = 674
	
	tTaskAssembly_Cont["AddMonster"][590064]={}
	tTaskAssembly_Cont["AddMonster"][590064]["MonsterId"] =  1304
	tTaskAssembly_Cont["AddMonster"][590064]["GenId"] = 30834
	tTaskAssembly_Cont["AddMonster"][590064]["InstanceId"] = 675
	
	tTaskAssembly_Cont["AddMonster"][590065]={}
	tTaskAssembly_Cont["AddMonster"][590065]["MonsterId"] =  1305
	tTaskAssembly_Cont["AddMonster"][590065]["GenId"] = 30835
	tTaskAssembly_Cont["AddMonster"][590065]["InstanceId"] = 676
	
	tTaskAssembly_Cont["AddMonster"][590066]={}
	tTaskAssembly_Cont["AddMonster"][590066]["MonsterId"] =  1306
	tTaskAssembly_Cont["AddMonster"][590066]["GenId"] = 30836
	tTaskAssembly_Cont["AddMonster"][590066]["InstanceId"] = 677
	
	tTaskAssembly_Cont["AddMonster"][590067]={}
	tTaskAssembly_Cont["AddMonster"][590067]["MonsterId"] =  1307
	tTaskAssembly_Cont["AddMonster"][590067]["GenId"] = 30836
	tTaskAssembly_Cont["AddMonster"][590067]["InstanceId"] = 678
	
	tTaskAssembly_Cont["AddMonster"][590068]={}
	tTaskAssembly_Cont["AddMonster"][590068]["MonsterId"] =  1312
	tTaskAssembly_Cont["AddMonster"][590068]["GenId"] = 30837
	tTaskAssembly_Cont["AddMonster"][590068]["InstanceId"] = 679

	tTaskAssembly_Cont["AddMonster"][590069]={}
	tTaskAssembly_Cont["AddMonster"][590069]["MonsterId"] =  1313
	tTaskAssembly_Cont["AddMonster"][590069]["GenId"] = 30838
	tTaskAssembly_Cont["AddMonster"][590069]["InstanceId"] = 680
	
	tTaskAssembly_Cont["AddMonster"][590070]={}
	tTaskAssembly_Cont["AddMonster"][590070]["MonsterId"] =  1308
	tTaskAssembly_Cont["AddMonster"][590070]["GenId"] = 30839
	tTaskAssembly_Cont["AddMonster"][590070]["InstanceId"] = 681
	
	tTaskAssembly_Cont["AddMonster"][590071]={}
	tTaskAssembly_Cont["AddMonster"][590071]["MonsterId"] =  1308
	tTaskAssembly_Cont["AddMonster"][590071]["GenId"] = 30840
	tTaskAssembly_Cont["AddMonster"][590071]["InstanceId"] = 682
	
------------------------------------------------------------------------------------
local tTaskAssembly_RewardItem = {}
---职业经验包
	-- 800职业经验礼包
	tTaskAssembly_RewardItem[3315884] = {}
	tTaskAssembly_RewardItem[3315884]["LogId"] = 12001916
	tTaskAssembly_RewardItem[3315884]["RewardNoNeedTip"] = 1
	tTaskAssembly_RewardItem[3315884]["DeleteItem"] = {}
	tTaskAssembly_RewardItem[3315884]["DeleteItem"][1] = {}
	tTaskAssembly_RewardItem[3315884]["DeleteItem"][1]["Id"] = 3315884
	tTaskAssembly_RewardItem[3315884]["RewardProExp"] = {}
	tTaskAssembly_RewardItem[3315884]["RewardProExp"]["Value"] = 800
	-- 1000职业经验礼包
	tTaskAssembly_RewardItem[3315885] = {}
	tTaskAssembly_RewardItem[3315885]["LogId"] = 12001916
	tTaskAssembly_RewardItem[3315885]["RewardNoNeedTip"] = 1
	tTaskAssembly_RewardItem[3315885]["DeleteItem"] = {}
	tTaskAssembly_RewardItem[3315885]["DeleteItem"][1] = {}
	tTaskAssembly_RewardItem[3315885]["DeleteItem"][1]["Id"] = 3315885
	tTaskAssembly_RewardItem[3315885]["RewardProExp"] = {}
	tTaskAssembly_RewardItem[3315885]["RewardProExp"]["Value"] = 1000
	-- 2000职业经验礼包
	tTaskAssembly_RewardItem[3315886] = {}
	tTaskAssembly_RewardItem[3315886]["LogId"] = 12001916
	tTaskAssembly_RewardItem[3315886]["RewardNoNeedTip"] = 1
	tTaskAssembly_RewardItem[3315886]["DeleteItem"] = {}
	tTaskAssembly_RewardItem[3315886]["DeleteItem"][1] = {}
	tTaskAssembly_RewardItem[3315886]["DeleteItem"][1]["Id"] = 3315886
	tTaskAssembly_RewardItem[3315886]["RewardProExp"] = {}
	tTaskAssembly_RewardItem[3315886]["RewardProExp"]["Value"] = 2000
	-- 5000职业经验礼包
	tTaskAssembly_RewardItem[3315887] = {}
	tTaskAssembly_RewardItem[3315887]["LogId"] = 12001916
	tTaskAssembly_RewardItem[3315887]["RewardNoNeedTip"] = 1
	tTaskAssembly_RewardItem[3315887]["DeleteItem"] = {}
	tTaskAssembly_RewardItem[3315887]["DeleteItem"][1] = {}
	tTaskAssembly_RewardItem[3315887]["DeleteItem"][1]["Id"] = 3315887
	tTaskAssembly_RewardItem[3315887]["RewardProExp"] = {}
	tTaskAssembly_RewardItem[3315887]["RewardProExp"]["Value"] = 5000

	-- ===任务1
	-- ===索引: tTaskAssembly_RewardItem["common"][590000]
	tTaskAssembly_RewardItem["common"] = {}
	tTaskAssembly_RewardItem["common"][590000] = {}
	tTaskAssembly_RewardItem["common"][590000]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590000]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590000]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590000]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤练石+1（赠）*2
	tTaskAssembly_RewardItem["common"][590000]["RewardItem"][1]["Attr"] = "0 2 3" -- +1赤炼石（赠）*2
	tTaskAssembly_RewardItem["common"][590000]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590000]["RewardItem"][2]["Id"] = 3314205 -- 秘制聚神丹[3200648][属性:9][叠加:100][金币:0], 秘制聚神丹
	tTaskAssembly_RewardItem["common"][590000]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 秘制聚神丹*2
	tTaskAssembly_RewardItem["common"][590000]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590000]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590000]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590001] = {}
	-- ===任务2
	-- ===索引: tTaskAssembly_RewardItem["common"][590001]
	-- ===
	tTaskAssembly_RewardItem["common"][590001]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590001]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590001]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590001]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*5
	tTaskAssembly_RewardItem["common"][590001]["RewardItem"][1]["Attr"] = "0 5" -- 人参果*5
	tTaskAssembly_RewardItem["common"][590001]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590001]["RewardItem"][2]["Id"] = 3314205 -- 秘制聚神丹[3200648][属性:9][叠加:100][金币:0], 秘制聚神丹
	tTaskAssembly_RewardItem["common"][590001]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 秘制聚神丹*2
	tTaskAssembly_RewardItem["common"][590001]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590001]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590001]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590002] = {}
	-- ===任务3
	-- ===索引: tTaskAssembly_RewardItem["common"][590002]
	-- ===
	tTaskAssembly_RewardItem["common"][590002]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590002]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590002]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590002]["RewardItem"][1]["Id"] = 4060001 -- 5个万能神纹精粹包[4060001][属性:9][叠加:10000][金币:0], 【表格】万能精粹（赠）*5
	tTaskAssembly_RewardItem["common"][590002]["RewardItem"][1]["Attr"] = "0 5 3" -- 5个万能神纹精粹包*5
	tTaskAssembly_RewardItem["common"][590002]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590002]["RewardItem"][2]["Id"] = 3314205 -- 秘制聚神丹[3200648][属性:9][叠加:100][金币:0], 秘制聚神丹
	tTaskAssembly_RewardItem["common"][590002]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 秘制聚神丹*2
	tTaskAssembly_RewardItem["common"][590002]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590002]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590002]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590003] = {}
	-- ===任务4
	-- ===索引: tTaskAssembly_RewardItem["common"][590003]
	-- ===
	tTaskAssembly_RewardItem["common"][590003]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590003]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590003]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590003]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤练石+1（赠）*2
	tTaskAssembly_RewardItem["common"][590003]["RewardItem"][1]["Attr"] = "0 2 3" -- +1赤炼石（赠）*2
	tTaskAssembly_RewardItem["common"][590003]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590003]["RewardItem"][2]["Id"] = 3314205 -- 秘制聚神丹[3200648][属性:9][叠加:100][金币:0], 秘制聚神丹
	tTaskAssembly_RewardItem["common"][590003]["RewardItem"][2]["Attr"]  = "0 2 3" -- 2天时效(激活)的 秘制聚神丹*2
	tTaskAssembly_RewardItem["common"][590003]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590003]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590003]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590004] = {}
	-- ===任务5
	-- ===索引: tTaskAssembly_RewardItem["common"][590004]
	-- ===
	tTaskAssembly_RewardItem["common"][590004]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590004]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590004]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590004]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*5
	tTaskAssembly_RewardItem["common"][590004]["RewardItem"][1]["Attr"] = "0 5" -- 人参果*5
	tTaskAssembly_RewardItem["common"][590004]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590004]["RewardItem"][2]["Id"] = 3314205 -- 秘制聚神丹[3200648][属性:9][叠加:100][金币:0], 秘制聚神丹
	tTaskAssembly_RewardItem["common"][590004]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 秘制聚神丹*2
	tTaskAssembly_RewardItem["common"][590004]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590004]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590004]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590005] = {}
	-- ===任务6
	-- ===索引: tTaskAssembly_RewardItem["common"][590005]
	-- ===
	tTaskAssembly_RewardItem["common"][590005]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590005]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590005]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590005]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤练石+1（赠）*2
	tTaskAssembly_RewardItem["common"][590005]["RewardItem"][1]["Attr"] = "0 2 3" -- +1赤炼石（赠）*2
	tTaskAssembly_RewardItem["common"][590005]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590005]["RewardItem"][2]["Id"] = 3314205 -- 秘制聚神丹[3200648][属性:9][叠加:100][金币:0], 秘制聚神丹
	tTaskAssembly_RewardItem["common"][590005]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 秘制聚神丹*2
	tTaskAssembly_RewardItem["common"][590005]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590005]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590005]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590006] = {}
	-- ===任务7
	-- ===索引: tTaskAssembly_RewardItem["common"][590006]
	-- ===
	tTaskAssembly_RewardItem["common"][590006]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590006]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590006]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590006]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*5
	tTaskAssembly_RewardItem["common"][590006]["RewardItem"][1]["Attr"] = "0 5" -- 人参果*5
	tTaskAssembly_RewardItem["common"][590006]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590006]["RewardItem"][2]["Id"] = 3314205 -- 秘制聚神丹[3200648][属性:9][叠加:100][金币:0], 秘制聚神丹
	tTaskAssembly_RewardItem["common"][590006]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 秘制聚神丹*2
	tTaskAssembly_RewardItem["common"][590006]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590006]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590006]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590007] = {}
	-- ===任务8
	-- ===索引: tTaskAssembly_RewardItem["common"][590007]
	-- ===
	tTaskAssembly_RewardItem["common"][590007]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590007]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590007]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590007]["RewardItem"][1]["Id"] = 4060001 -- 5个万能神纹精粹包[4060001][属性:9][叠加:10000][金币:0], 【表格】万能精粹（赠）*5
	tTaskAssembly_RewardItem["common"][590007]["RewardItem"][1]["Attr"] = "0 5 3" -- 5个万能神纹精粹包*5
	tTaskAssembly_RewardItem["common"][590007]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590007]["RewardItem"][2]["Id"] = 3314205 -- 秘制聚神丹[3200648][属性:9][叠加:100][金币:0], 秘制聚神丹
	tTaskAssembly_RewardItem["common"][590007]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 秘制聚神丹*2
	tTaskAssembly_RewardItem["common"][590007]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590007]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590007]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590008] = {}
	-- ===任务9
	-- ===索引: tTaskAssembly_RewardItem["common"][590008]
	-- ===
	tTaskAssembly_RewardItem["common"][590008]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590008]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590008]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590008]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤练石+1（赠）*2
	tTaskAssembly_RewardItem["common"][590008]["RewardItem"][1]["Attr"] = "0 2 3" -- +1赤炼石（赠）*2
	tTaskAssembly_RewardItem["common"][590008]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590008]["RewardItem"][2]["Id"] = 3314205 -- 秘制聚神丹[3200648][属性:9][叠加:100][金币:0],【表格】 秘制聚神丹
	tTaskAssembly_RewardItem["common"][590008]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 秘制聚神丹*2
	tTaskAssembly_RewardItem["common"][590008]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590008]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590008]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590009] = {}
	-- ===任务10
	-- ===索引: tTaskAssembly_RewardItem["common"][590009]
	-- ===
	tTaskAssembly_RewardItem["common"][590009]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590009]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590009]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590009]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*5
	tTaskAssembly_RewardItem["common"][590009]["RewardItem"][1]["Attr"] = "0 5" -- 人参果*5
	tTaskAssembly_RewardItem["common"][590009]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590009]["RewardItem"][2]["Id"] = 3314205 -- 秘制聚神丹[3200648][属性:9][叠加:100][金币:0],【表格】 秘制聚神丹
	tTaskAssembly_RewardItem["common"][590009]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 秘制聚神丹*2
	tTaskAssembly_RewardItem["common"][590009]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590009]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590009]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590010] = {}
	-- ===任务11
	-- ===索引: tTaskAssembly_RewardItem["common"][590010]
	-- ===
	tTaskAssembly_RewardItem["common"][590010]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590010]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590010]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590010]["RewardItem"][1]["Id"] = 4060001 -- 5个万能神纹精粹包[4060001][属性:9][叠加:10000][金币:0], 【表格】万能精粹（赠）*5
	tTaskAssembly_RewardItem["common"][590010]["RewardItem"][1]["Attr"] = "0 5 3" -- 5个万能神纹精粹包*5
	tTaskAssembly_RewardItem["common"][590010]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590010]["RewardItem"][2]["Id"] = 3314205 -- 秘制聚神丹[3200648][属性:9][叠加:100][金币:0], 【表格】秘制聚神丹
	tTaskAssembly_RewardItem["common"][590010]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 秘制聚神丹*2
	tTaskAssembly_RewardItem["common"][590010]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590010]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590010]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590011] = {}
	-- ===任务12
	-- ===索引: tTaskAssembly_RewardItem["common"][590011]
	-- ===
	tTaskAssembly_RewardItem["common"][590011]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590011]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590011]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590011]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】勾玉精华*10
	tTaskAssembly_RewardItem["common"][590011]["RewardItem"][1]["Attr"] = "0 20" -- 秘术精华*10
	tTaskAssembly_RewardItem["common"][590011]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590011]["RewardItem"][2]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590011]["RewardItem"][2]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590012] = {}
	-- ===任务13
	-- ===索引: tTaskAssembly_RewardItem["common"][590012]
	-- ===
	tTaskAssembly_RewardItem["common"][590012]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590012]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590012]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590012]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】勾玉精华*10
	tTaskAssembly_RewardItem["common"][590012]["RewardItem"][1]["Attr"] = "0 10" -- 秘术精华*10
	tTaskAssembly_RewardItem["common"][590012]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590012]["RewardItem"][2]["Id"] = 4060001 -- 5个万能神纹精粹包[4060001][属性:9][叠加:10000][金币:0], 【表格】万能精粹*10
	tTaskAssembly_RewardItem["common"][590012]["RewardItem"][2]["Attr"] = "0 10 3" -- 5个万能神纹精粹包*10
	tTaskAssembly_RewardItem["common"][590012]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590012]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590012]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590013] = {}
	-- ===任务14
	-- ===索引: tTaskAssembly_RewardItem["common"][590013]
	-- ===
	tTaskAssembly_RewardItem["common"][590013]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590013]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590013]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590013]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】勾玉精华*10
	tTaskAssembly_RewardItem["common"][590013]["RewardItem"][1]["Attr"] = "0 10" -- 秘术精华*10
	tTaskAssembly_RewardItem["common"][590013]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590013]["RewardItem"][2]["Id"] = 720027 -- 流星卷[720027][属性:0][叠加:0][金币:0], 【表格】流星卷
	tTaskAssembly_RewardItem["common"][590013]["RewardItem"][2]["Attr"] = "0 1 3" -- 流星卷*1
	tTaskAssembly_RewardItem["common"][590013]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590013]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590013]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590014] = {}
	-- ===任务15
	-- ===索引: tTaskAssembly_RewardItem["common"][590014]
	-- ===
	tTaskAssembly_RewardItem["common"][590014]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590014]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590014]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590014]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】勾玉精华*10
	tTaskAssembly_RewardItem["common"][590014]["RewardItem"][1]["Attr"] = "0 20" -- 秘术精华*10
	tTaskAssembly_RewardItem["common"][590014]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590014]["RewardItem"][2]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590014]["RewardItem"][2]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590015] = {}
	-- ===任务16
	-- ===索引: tTaskAssembly_RewardItem["common"][590015]
	-- ===
	tTaskAssembly_RewardItem["common"][590015]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590015]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590015]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590015]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】勾玉精华*10
	tTaskAssembly_RewardItem["common"][590015]["RewardItem"][1]["Attr"] = "0 10" -- 秘术精华*10
	tTaskAssembly_RewardItem["common"][590015]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590015]["RewardItem"][2]["Id"] = 4060001 -- 万能精粹*10[4060001][属性:9][叠加:10000][金币:0], 【表格】万能精粹*10
	tTaskAssembly_RewardItem["common"][590015]["RewardItem"][2]["Attr"] = "0 10 3" -- 万能精粹*10*10
	tTaskAssembly_RewardItem["common"][590015]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590015]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590015]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590016] = {}
	-- ===任务17
	-- ===索引: tTaskAssembly_RewardItem["common"][590016]
	-- ===
	tTaskAssembly_RewardItem["common"][590016]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590016]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590016]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590016]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】勾玉精华*10
	tTaskAssembly_RewardItem["common"][590016]["RewardItem"][1]["Attr"] = "0 10" -- 秘术精华*10
	tTaskAssembly_RewardItem["common"][590016]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590016]["RewardItem"][2]["Id"] = 720027 -- 流星卷[720027][属性:0][叠加:0][金币:0], 【表格】流星卷
	tTaskAssembly_RewardItem["common"][590016]["RewardItem"][2]["Attr"] = "0 1 3" -- 流星卷*1
	tTaskAssembly_RewardItem["common"][590016]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590016]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590016]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590017] = {}
	-- ===任务18
	-- ===索引: tTaskAssembly_RewardItem["common"][590017]
	-- ===
	tTaskAssembly_RewardItem["common"][590017]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590017]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590017]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590017]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄*3
	tTaskAssembly_RewardItem["common"][590017]["RewardItem"][1]["Attr"] = "0 3" -- 神兵灵魄*3
	tTaskAssembly_RewardItem["common"][590017]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590017]["RewardItem"][2]["Id"] = 3321107 -- 炼魂石[3321107][属性:9][叠加:10000][金币:0], 【表格】炼魂石
	tTaskAssembly_RewardItem["common"][590017]["RewardItem"][2]["Attr"] = "0 1" -- 炼魂石*1
	tTaskAssembly_RewardItem["common"][590017]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590017]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590017]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590018] = {}
	-- ===任务19
	-- ===索引: tTaskAssembly_RewardItem["common"][590018]
	-- ===
	tTaskAssembly_RewardItem["common"][590018]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590018]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590018]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590018]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄*3
	tTaskAssembly_RewardItem["common"][590018]["RewardItem"][1]["Attr"] = "0 3" -- 神兵灵魄*3
	tTaskAssembly_RewardItem["common"][590018]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590018]["RewardItem"][2]["Id"] = 4060001 -- 万能精粹*10[4060001][属性:9][叠加:10000][金币:0], 【表格】万能精粹*10
	tTaskAssembly_RewardItem["common"][590018]["RewardItem"][2]["Attr"] = "0 10 3" -- 万能精粹*10*1
	tTaskAssembly_RewardItem["common"][590018]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590018]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590018]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590019] = {}
	-- ===任务20
	-- ===索引: tTaskAssembly_RewardItem["common"][590019]
	-- ===
	tTaskAssembly_RewardItem["common"][590019]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590019]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590019]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590019]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄*3
	tTaskAssembly_RewardItem["common"][590019]["RewardItem"][1]["Attr"] = "0 3" -- 神兵灵魄*3
	tTaskAssembly_RewardItem["common"][590019]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590019]["RewardItem"][2]["Id"] = 720027 -- 流星卷[720027][属性:0][叠加:0][金币:0], 【表格】流星卷
	tTaskAssembly_RewardItem["common"][590019]["RewardItem"][2]["Attr"] = "0 1 3" -- 流星卷*1
	tTaskAssembly_RewardItem["common"][590019]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590019]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590019]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590020] = {}
	-- ===任务21
	-- ===索引: tTaskAssembly_RewardItem["common"][590020]
	-- ===
	tTaskAssembly_RewardItem["common"][590020]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590020]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590020]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590020]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄*3
	tTaskAssembly_RewardItem["common"][590020]["RewardItem"][1]["Attr"] = "0 3" -- 神兵灵魄*3
	tTaskAssembly_RewardItem["common"][590020]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590020]["RewardItem"][2]["Id"] = 3321107 -- 炼魂石[3321107][属性:9][叠加:10000][金币:0], 【表格】炼魂石
	tTaskAssembly_RewardItem["common"][590020]["RewardItem"][2]["Attr"] = "0 1" -- 炼魂石*1
	tTaskAssembly_RewardItem["common"][590020]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590020]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590020]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590021] = {}
	-- ===任务22
	-- ===索引: tTaskAssembly_RewardItem["common"][590021]
	-- ===
	tTaskAssembly_RewardItem["common"][590021]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590021]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590021]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590021]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄*3
	tTaskAssembly_RewardItem["common"][590021]["RewardItem"][1]["Attr"] = "0 3" -- 神兵灵魄*3
	tTaskAssembly_RewardItem["common"][590021]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590021]["RewardItem"][2]["Id"] = 4060001 -- 万能精粹*10[4060001][属性:9][叠加:10000][金币:0], 【表格】万能精粹*10
	tTaskAssembly_RewardItem["common"][590021]["RewardItem"][2]["Attr"] = "0 10 3" -- 万能精粹*10*1
	tTaskAssembly_RewardItem["common"][590021]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590021]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590021]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590022] = {}
	-- ===任务23
	-- ===索引: tTaskAssembly_RewardItem["common"][590022]
	-- ===
	tTaskAssembly_RewardItem["common"][590022]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590022]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590022]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590022]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄*3
	tTaskAssembly_RewardItem["common"][590022]["RewardItem"][1]["Attr"] = "0 3" -- 神兵灵魄*3
	tTaskAssembly_RewardItem["common"][590022]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590022]["RewardItem"][2]["Id"] = 720027 -- 流星卷[720027][属性:0][叠加:0][金币:0], 【表格】流星卷
	tTaskAssembly_RewardItem["common"][590022]["RewardItem"][2]["Attr"] = "0 1 3" -- 流星卷*1
	tTaskAssembly_RewardItem["common"][590022]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590022]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590022]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590023] = {}
	-- ===任务24
	-- ===索引: tTaskAssembly_RewardItem["common"][590023]
	tTaskAssembly_RewardItem["common"][590023]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590023]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590023]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590023]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤练石+1（赠）*2
	tTaskAssembly_RewardItem["common"][590023]["RewardItem"][1]["Attr"] = "0 2 3" -- +1赤炼石（赠）*2
	tTaskAssembly_RewardItem["common"][590023]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590023]["RewardItem"][2]["Id"] = 3314205 -- 秘制聚神丹[3200648][属性:9][叠加:100][金币:0], 【表格】秘制聚神丹
	tTaskAssembly_RewardItem["common"][590023]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 秘制聚神丹*2
	tTaskAssembly_RewardItem["common"][590023]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590023]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590023]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590024] = {}
	-- ===任务25
	-- ===索引: tTaskAssembly_RewardItem["common"][590024]
	-- ===
	tTaskAssembly_RewardItem["common"][590024]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590024]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590024]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590024]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*5
	tTaskAssembly_RewardItem["common"][590024]["RewardItem"][1]["Attr"] = "0 5" -- 人参果*5
	tTaskAssembly_RewardItem["common"][590024]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590024]["RewardItem"][2]["Id"] = 3314205 -- 秘制聚神丹[3200648][属性:9][叠加:100][金币:0], 【表格】秘制聚神丹
	tTaskAssembly_RewardItem["common"][590024]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 秘制聚神丹*2
	tTaskAssembly_RewardItem["common"][590024]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590024]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590024]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590025] = {}
	-- ===任务26
	-- ===索引: tTaskAssembly_RewardItem["common"][590025]
	-- ===
	tTaskAssembly_RewardItem["common"][590025]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590025]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590025]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590025]["RewardItem"][1]["Id"] = 4060001 -- 5个万能神纹精粹包[4060001][属性:9][叠加:10000][金币:0], 【表格】万能精粹（赠）*5
	tTaskAssembly_RewardItem["common"][590025]["RewardItem"][1]["Attr"] = "0 5 3" -- 5个万能神纹精粹包*5
	tTaskAssembly_RewardItem["common"][590025]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590025]["RewardItem"][2]["Id"] = 3314205 -- 秘制聚神丹[3200648][属性:9][叠加:100][金币:0], 【表格】秘制聚神丹
	tTaskAssembly_RewardItem["common"][590025]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 秘制聚神丹*2
	tTaskAssembly_RewardItem["common"][590025]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590025]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590025]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590026] = {}
	-- ===任务27
	-- ===索引: tTaskAssembly_RewardItem["common"][590026]
	-- ===
	tTaskAssembly_RewardItem["common"][590026]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590026]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590026]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590026]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤练石+1（赠）*2
	tTaskAssembly_RewardItem["common"][590026]["RewardItem"][1]["Attr"] = "0 2 3" -- +1赤炼石（赠）*2
	tTaskAssembly_RewardItem["common"][590026]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590026]["RewardItem"][2]["Id"] = 3314205 -- 秘制聚神丹[3200648][属性:9][叠加:100][金币:0], 【表格】秘制聚神丹
	tTaskAssembly_RewardItem["common"][590026]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 秘制聚神丹*2
	tTaskAssembly_RewardItem["common"][590026]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590026]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590026]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590027] = {}
	-- ===任务28
	-- ===索引: tTaskAssembly_RewardItem["common"][590027]
	-- ===
	tTaskAssembly_RewardItem["common"][590027]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590027]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590027]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590027]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*5
	tTaskAssembly_RewardItem["common"][590027]["RewardItem"][1]["Attr"] = "0 5" -- 人参果*5
	tTaskAssembly_RewardItem["common"][590027]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590027]["RewardItem"][2]["Id"] = 3314205 -- 秘制聚神丹[3200648][属性:9][叠加:100][金币:0], 【表格】秘制聚神丹
	tTaskAssembly_RewardItem["common"][590027]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 秘制聚神丹*2
	tTaskAssembly_RewardItem["common"][590027]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590027]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590027]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590028] = {}
	-- ===任务29
	-- ===索引: tTaskAssembly_RewardItem["common"][590028]
	-- ===
	tTaskAssembly_RewardItem["common"][590028]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590028]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590028]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590028]["RewardItem"][1]["Id"] = 4060001 -- 5个万能神纹精粹包[4060001][属性:9][叠加:10000][金币:0], 【表格】万能精粹（赠）*5
	tTaskAssembly_RewardItem["common"][590028]["RewardItem"][1]["Attr"] = "0 5 3" -- 5个万能神纹精粹包*5
	tTaskAssembly_RewardItem["common"][590028]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590028]["RewardItem"][2]["Id"] = 3314205 -- 秘制聚神丹[3200648][属性:9][叠加:100][金币:0], 【表格】秘制聚神丹
	tTaskAssembly_RewardItem["common"][590028]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 秘制聚神丹*2
	tTaskAssembly_RewardItem["common"][590028]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590028]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590028]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590029] = {}
	-- ===任务30
	-- ===索引: tTaskAssembly_RewardItem["common"][590029]
	-- ===
	tTaskAssembly_RewardItem["common"][590029]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590029]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590029]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590029]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤练石+1（赠）*2
	tTaskAssembly_RewardItem["common"][590029]["RewardItem"][1]["Attr"] = "0 2 3" -- +1赤炼石（赠）*2
	tTaskAssembly_RewardItem["common"][590029]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590029]["RewardItem"][2]["Id"] = 3314205 -- 秘制聚神丹[3200648][属性:9][叠加:100][金币:0], 【表格】秘制聚神丹
	tTaskAssembly_RewardItem["common"][590029]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 秘制聚神丹*2
	tTaskAssembly_RewardItem["common"][590029]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590029]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590029]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590030] = {}
	-- ===任务31
	-- ===索引: tTaskAssembly_RewardItem["common"][590030]
	-- ===
	tTaskAssembly_RewardItem["common"][590030]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590030]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590030]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590030]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*5
	tTaskAssembly_RewardItem["common"][590030]["RewardItem"][1]["Attr"] = "0 5" -- 人参果*5
	tTaskAssembly_RewardItem["common"][590030]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590030]["RewardItem"][2]["Id"] = 3314205 -- 秘制聚神丹[3200648][属性:9][叠加:100][金币:0], 【表格】秘制聚神丹
	tTaskAssembly_RewardItem["common"][590030]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 秘制聚神丹*2
	tTaskAssembly_RewardItem["common"][590030]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590030]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590030]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590031] = {}
	-- ===任务32
	-- ===索引: tTaskAssembly_RewardItem["common"][590031]
	-- ===
	tTaskAssembly_RewardItem["common"][590031]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590031]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590031]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590031]["RewardItem"][1]["Id"] = 4060001 -- 5个万能神纹精粹包[4060001][属性:9][叠加:10000][金币:0], 【表格】万能精粹（赠）*5
	tTaskAssembly_RewardItem["common"][590031]["RewardItem"][1]["Attr"] = "0 5 3" -- 5个万能神纹精粹包*5
	tTaskAssembly_RewardItem["common"][590031]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590031]["RewardItem"][2]["Id"] = 3314205 -- 秘制聚神丹[3200648][属性:9][叠加:100][金币:0], 【表格】秘制聚神丹
	tTaskAssembly_RewardItem["common"][590031]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 秘制聚神丹*2
	tTaskAssembly_RewardItem["common"][590031]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590031]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["common"][590031]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590032] = {}
	-- ===任务33
	-- ===索引: tTaskAssembly_RewardItem["common"][590032]
	-- ===
	tTaskAssembly_RewardItem["common"][590032]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590032]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590032]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590032]["RewardItem"][1]["Id"] = 4060001 -- 万能精粹*10[4060001][属性:9][叠加:10000][金币:0], 【表格】万能精粹*10
	tTaskAssembly_RewardItem["common"][590032]["RewardItem"][1]["Attr"] = "0 10 3" -- 万能精粹*10*10
	tTaskAssembly_RewardItem["common"][590032]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590032]["RewardItem"][2]["Id"] = 3314206 -- 化气聚神丹[3006921][属性:9][叠加:0][金币:0], 【表格】300分钟经验
	tTaskAssembly_RewardItem["common"][590032]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)化气聚神丹*1
	tTaskAssembly_RewardItem["common"][590032]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590032]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["common"][590032]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590033] = {}
	-- ===任务34
	-- ===索引: tTaskAssembly_RewardItem["common"][590033]
	-- ===
	tTaskAssembly_RewardItem["common"][590033]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590033]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590033]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590033]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*3
	tTaskAssembly_RewardItem["common"][590033]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的明亮星陨石*3
	tTaskAssembly_RewardItem["common"][590033]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590033]["RewardItem"][2]["Id"] =  3314206 -- 化气聚神丹[3006921][属性:9][叠加:0][金币:0], 【表格】300分钟经验
	tTaskAssembly_RewardItem["common"][590033]["RewardItem"][2]["Attr"]  = "0 1 3" -- 2天时效(激活)化气聚神丹*1
	tTaskAssembly_RewardItem["common"][590033]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590033]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["common"][590033]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590034] = {}
	-- ===任务35
	-- ===索引: tTaskAssembly_RewardItem["common"][590034]
	-- ===
	tTaskAssembly_RewardItem["common"][590034]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590034]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590034]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590034]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2（赠）
	tTaskAssembly_RewardItem["common"][590034]["RewardItem"][1]["Attr"] = "0 1 3" -- +2赤炼石（赠）*1
	tTaskAssembly_RewardItem["common"][590034]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590034]["RewardItem"][2]["Id"] = 3314206 -- 化气聚神丹[3006921][属性:9][叠加:0][金币:0], 【表格】300分钟经验
	tTaskAssembly_RewardItem["common"][590034]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)化气聚神丹*1
	tTaskAssembly_RewardItem["common"][590034]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590034]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["common"][590034]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590035] = {}
	-- ===任务36
	-- ===索引: tTaskAssembly_RewardItem["common"][590035]
	-- ===
	tTaskAssembly_RewardItem["common"][590035]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590035]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590035]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590035]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tTaskAssembly_RewardItem["common"][590035]["RewardItem"][1]["Attr"] = "0 1" -- 龙鳞果*1
	tTaskAssembly_RewardItem["common"][590035]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590035]["RewardItem"][2]["Id"] = 3314206 -- 化气聚神丹[3006921][属性:9][叠加:0][金币:0], 【表格】300分钟经验
	tTaskAssembly_RewardItem["common"][590035]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)化气聚神丹*1
	tTaskAssembly_RewardItem["common"][590035]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590035]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["common"][590035]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590036] = {}
	-- ===任务37
	-- ===索引: tTaskAssembly_RewardItem["common"][590036]
	-- ===
	tTaskAssembly_RewardItem["common"][590036]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590036]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590036]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590036]["RewardItem"][1]["Id"] = 3321077 -- 100气力值礼包[3321077][属性:11][叠加:0][金币:0], 【表格】200气力值
	tTaskAssembly_RewardItem["common"][590036]["RewardItem"][1]["Attr"] = "0 2 3" -- 100气力值礼包*2
	tTaskAssembly_RewardItem["common"][590036]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590036]["RewardItem"][2]["Id"] = 3314206 -- 化气聚神丹[3006921][属性:9][叠加:0][金币:0], 【表格】300分钟经验经验
	tTaskAssembly_RewardItem["common"][590036]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)化气聚神丹*1
	tTaskAssembly_RewardItem["common"][590036]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590036]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["common"][590036]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590037] = {}
	-- ===任务38
	-- ===索引: tTaskAssembly_RewardItem["common"][590037]
	-- ===
	tTaskAssembly_RewardItem["common"][590037]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590037]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590037]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590037]["RewardItem"][1]["Id"] = 4060001 -- 万能精粹*10[4060001][属性:9][叠加:10000][金币:0], 【表格】万能精粹*10
	tTaskAssembly_RewardItem["common"][590037]["RewardItem"][1]["Attr"] = "0 10 3"-- 万能精粹*10*10
	tTaskAssembly_RewardItem["common"][590037]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590037]["RewardItem"][2]["Id"] = 3314206 -- 化气聚神丹[3006921][属性:9][叠加:0][金币:0], 【表格】300分钟经验经验
	tTaskAssembly_RewardItem["common"][590037]["RewardItem"][2]["Attr"]= "0 1 3" -- 2天时效(激活)化气聚神丹*1
	tTaskAssembly_RewardItem["common"][590037]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590037]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["common"][590037]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590038] = {}
	-- ===任务39
	-- ===索引: tTaskAssembly_RewardItem["common"][590038]
	-- ===
	tTaskAssembly_RewardItem["common"][590038]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590038]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590038]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590038]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*3
	tTaskAssembly_RewardItem["common"][590038]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的明亮星陨石*3
	tTaskAssembly_RewardItem["common"][590038]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590038]["RewardItem"][2]["Id"] = 3314206 -- 化气聚神丹[3006921][属性:9][叠加:0][金币:0], 【表格】300分钟经验经验
	tTaskAssembly_RewardItem["common"][590038]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)化气聚神丹*1
	tTaskAssembly_RewardItem["common"][590038]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590038]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["common"][590038]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590039] = {}
	-- ===任务40
	-- ===索引: tTaskAssembly_RewardItem["common"][590039]
	-- ===
	tTaskAssembly_RewardItem["common"][590039]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590039]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590039]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590039]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2（赠）
	tTaskAssembly_RewardItem["common"][590039]["RewardItem"][1]["Attr"] = "0 1 3" -- +2赤炼石（赠）*1
	tTaskAssembly_RewardItem["common"][590039]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590039]["RewardItem"][2]["Id"] = 3314206 -- 化气聚神丹[3006921][属性:9][叠加:0][金币:0], 【表格】300分钟经验经验
	tTaskAssembly_RewardItem["common"][590039]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)化气聚神丹*1
	tTaskAssembly_RewardItem["common"][590039]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590039]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["common"][590039]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590040] = {}
	-- ===任务41
	-- ===索引: tTaskAssembly_RewardItem["common"][590040]
	-- ===
	tTaskAssembly_RewardItem["common"][590040]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590040]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590040]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590040]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tTaskAssembly_RewardItem["common"][590040]["RewardItem"][1]["Attr"] = "0 1" -- 龙鳞果*1
	tTaskAssembly_RewardItem["common"][590040]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590040]["RewardItem"][2]["Id"] = 3314206 -- 化气聚神丹[3006921][属性:9][叠加:0][金币:0], 【表格】300分钟经验经验
	tTaskAssembly_RewardItem["common"][590040]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)化气聚神丹*1
	tTaskAssembly_RewardItem["common"][590040]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590040]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["common"][590040]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590041] = {}
	-- ===任务42
	-- ===索引: tTaskAssembly_RewardItem["common"][590041]
	-- ===
	tTaskAssembly_RewardItem["common"][590041]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590041]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590041]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590041]["RewardItem"][1]["Id"] = 3321077 -- 100气力值礼包[3321077][属性:11][叠加:0][金币:0], 【表格】200气力值
	tTaskAssembly_RewardItem["common"][590041]["RewardItem"][1]["Attr"] = "0 2 3" -- 100气力值礼包*2
	tTaskAssembly_RewardItem["common"][590041]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590041]["RewardItem"][2]["Id"] = 3314206 -- 化气聚神丹[3006921][属性:9][叠加:0][金币:0], 【表格】300分钟经验经验
	tTaskAssembly_RewardItem["common"][590041]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)化气聚神丹*1
	tTaskAssembly_RewardItem["common"][590041]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590041]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["common"][590041]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590042] = {}
	-- ===任务43
	-- ===索引: tTaskAssembly_RewardItem["common"][590042]
	-- ===
	tTaskAssembly_RewardItem["common"][590042]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590042]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590042]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590042]["RewardItem"][1]["Id"] = 4060001 -- 万能精粹*10[4060001][属性:9][叠加:10000][金币:0], 【表格】万能精粹*10
	tTaskAssembly_RewardItem["common"][590042]["RewardItem"][1]["Attr"] = "0 10 3" -- 万能精粹*10*10
	tTaskAssembly_RewardItem["common"][590042]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590042]["RewardItem"][2]["Id"] = 3314206 -- 化气聚神丹[3006921][属性:9][叠加:0][金币:0], 【表格】300分钟经验经验
	tTaskAssembly_RewardItem["common"][590042]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)化气聚神丹*1
	tTaskAssembly_RewardItem["common"][590042]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590042]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["common"][590042]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590043] = {}
	-- ===任务44
	-- ===索引: tTaskAssembly_RewardItem["common"][590043]
	-- ===
	tTaskAssembly_RewardItem["common"][590043]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590043]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590043]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590043]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*3
	tTaskAssembly_RewardItem["common"][590043]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的明亮星陨石*3
	tTaskAssembly_RewardItem["common"][590043]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590043]["RewardItem"][2]["Id"] = 3314206 -- 化气聚神丹[3006921][属性:9][叠加:0][金币:0], 【表格】300分钟经验经验
	tTaskAssembly_RewardItem["common"][590043]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)化气聚神丹*1
	tTaskAssembly_RewardItem["common"][590043]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590043]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["common"][590043]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590044] = {}
	-- ===任务45
	-- ===索引: tTaskAssembly_RewardItem["common"][590044]
	-- ===
	tTaskAssembly_RewardItem["common"][590044]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590044]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590044]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590044]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2（赠）
	tTaskAssembly_RewardItem["common"][590044]["RewardItem"][1]["Attr"] = "0 1 3" -- +2赤炼石（赠）*1
	tTaskAssembly_RewardItem["common"][590044]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590044]["RewardItem"][2]["Id"] = 3314206 -- 化气聚神丹[3006921][属性:9][叠加:0][金币:0], 【表格】300分钟经验经验
	tTaskAssembly_RewardItem["common"][590044]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)化气聚神丹*1
	tTaskAssembly_RewardItem["common"][590044]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590044]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["common"][590044]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590045] = {}
	-- ===任务46
	-- ===索引: tTaskAssembly_RewardItem["common"][590045]
	-- ===
	tTaskAssembly_RewardItem["common"][590045]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590045]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590045]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590045]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tTaskAssembly_RewardItem["common"][590045]["RewardItem"][1]["Attr"] = "0 1" -- 龙鳞果*1
	tTaskAssembly_RewardItem["common"][590045]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590045]["RewardItem"][2]["Id"] = 3314206 -- 化气聚神丹[3006921][属性:9][叠加:0][金币:0], 【表格】300分钟经验经验
	tTaskAssembly_RewardItem["common"][590045]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)化气聚神丹*1
	tTaskAssembly_RewardItem["common"][590045]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590045]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["common"][590045]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590046] = {}
	-- ===任务47
	-- ===索引: tTaskAssembly_RewardItem["common"][590046]
	-- ===
	tTaskAssembly_RewardItem["common"][590046]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590046]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590046]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590046]["RewardItem"][1]["Id"] = 3321077 -- 200气力值礼包[3321077][属性:11][叠加:0][金币:0], 【表格】200气力值
	tTaskAssembly_RewardItem["common"][590046]["RewardItem"][1]["Attr"] = "0 2 3" -- 200气力值礼包*1
	tTaskAssembly_RewardItem["common"][590046]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590046]["RewardItem"][2]["Id"] = 3314206 -- 化气聚神丹[3006921][属性:9][叠加:0][金币:0], 【表格】300分钟经验经验
	tTaskAssembly_RewardItem["common"][590046]["RewardItem"][2]["Attr"]= "0 1 3" -- 2天时效(激活)化气聚神丹*1
	tTaskAssembly_RewardItem["common"][590046]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590046]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["common"][590046]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590047] = {}
	-- ===任务48
	-- ===索引: tTaskAssembly_RewardItem["common"][590047]
	-- ===
	tTaskAssembly_RewardItem["common"][590047]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590047]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590047]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590047]["RewardItem"][1]["Id"] = 4060001 -- 万能精粹*10[4060001][属性:9][叠加:10000][金币:0], 【表格】万能精粹*10
	tTaskAssembly_RewardItem["common"][590047]["RewardItem"][1]["Attr"] = "0 10 3" -- 万能精粹*10*10
	tTaskAssembly_RewardItem["common"][590047]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590047]["RewardItem"][2]["Id"] = 3314206 -- 化气聚神丹[3006921][属性:9][叠加:0][金币:0], 【表格】300分钟经验经验
	tTaskAssembly_RewardItem["common"][590047]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)化气聚神丹*1
	tTaskAssembly_RewardItem["common"][590047]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590047]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["common"][590047]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590048] = {}
	-- ===任务49
	-- ===索引: tTaskAssembly_RewardItem["common"][590048]
	-- ===
	tTaskAssembly_RewardItem["common"][590048]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590048]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590048]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590048]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*3
	tTaskAssembly_RewardItem["common"][590048]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的明亮星陨石*3
	tTaskAssembly_RewardItem["common"][590048]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590048]["RewardItem"][2]["Id"] = 3314206 -- 化气聚神丹[3006921][属性:9][叠加:0][金币:0], 【表格】300分钟经验经验
	tTaskAssembly_RewardItem["common"][590048]["RewardItem"][2]["Attr"]= "0 1 3" -- 2天时效(激活)化气聚神丹*1
	tTaskAssembly_RewardItem["common"][590048]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590048]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["common"][590048]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590049] = {}
	-- ===任务50
	-- ===索引: tTaskAssembly_RewardItem["common"][590049]
	-- ===
	tTaskAssembly_RewardItem["common"][590049]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590049]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590049]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590049]["RewardItem"][1]["Id"] = 4060001 -- 万能精粹*10[4060001][属性:9][叠加:10000][金币:0], 【表格】万能精粹*10
	tTaskAssembly_RewardItem["common"][590049]["RewardItem"][1]["Attr"] = "0 10 3" -- 万能精粹*10*10
	tTaskAssembly_RewardItem["common"][590049]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590049]["RewardItem"][2]["Id"] = 3314206 -- 化气聚神丹[3006921][属性:9][叠加:0][金币:0], 【表格】300分钟经验经验
	tTaskAssembly_RewardItem["common"][590049]["RewardItem"][2]["Attr"] ="0 1 3" -- 2天时效(激活)化气聚神丹*1
	tTaskAssembly_RewardItem["common"][590049]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590049]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["common"][590049]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590050] = {}
	-- ===任务51
	-- ===索引: tTaskAssembly_RewardItem["common"][590050]
	-- ===
	tTaskAssembly_RewardItem["common"][590050]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590050]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590050]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590050]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*3
	tTaskAssembly_RewardItem["common"][590050]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的明亮星陨石*3
	tTaskAssembly_RewardItem["common"][590050]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590050]["RewardItem"][2]["Id"] = 3314206 -- 化气聚神丹[3006921][属性:9][叠加:0][金币:0], 【表格】300分钟经验经验
	tTaskAssembly_RewardItem["common"][590050]["RewardItem"][2]["Attr"] ="0 1 3"-- 2天时效(激活)化气聚神丹*1
	tTaskAssembly_RewardItem["common"][590050]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590050]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["common"][590050]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590051] = {}
	-- ===任务52
	-- ===索引: tTaskAssembly_RewardItem["common"][590051]
	-- ===
	tTaskAssembly_RewardItem["common"][590051]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590051]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590051]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590051]["RewardItem"][1]["Id"] =3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tTaskAssembly_RewardItem["common"][590051]["RewardItem"][1]["Attr"]= "0 1" -- 龙鳞果*1
	tTaskAssembly_RewardItem["common"][590051]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590051]["RewardItem"][2]["Id"] =  3314206 -- 化气聚神丹[3006921][属性:9][叠加:0][金币:0], 【表格】300分钟经验经验
	tTaskAssembly_RewardItem["common"][590051]["RewardItem"][2]["Attr"]  ="0 1 3" -- 2天时效(激活)化气聚神丹*1
	tTaskAssembly_RewardItem["common"][590051]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590051]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["common"][590051]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590052] = {}
	-- ===任务53
	-- ===索引: tTaskAssembly_RewardItem["common"][590052]
	-- ===
	tTaskAssembly_RewardItem["common"][590052]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590052]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590052]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590052]["RewardItem"][1]["Id"] = 3321077 -- 200气力值礼包[3321077][属性:11][叠加:0][金币:0], 【表格】200气力值
	tTaskAssembly_RewardItem["common"][590052]["RewardItem"][1]["Attr"] = "0 2 3" -- 200气力值礼包*1
	tTaskAssembly_RewardItem["common"][590052]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590052]["RewardItem"][2]["Id"] = 3314206 -- 化气聚神丹[3006921][属性:9][叠加:0][金币:0], 【表格】300分钟经验经验
	tTaskAssembly_RewardItem["common"][590052]["RewardItem"][2]["Attr"] ="0 1 3" -- 2天时效(激活)化气聚神丹*1
	tTaskAssembly_RewardItem["common"][590052]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590052]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["common"][590052]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1

	tTaskAssembly_RewardItem["common"][590053] = {}
	-- ===任务54
	-- ===索引: tTaskAssembly_RewardItem["common"][590053]
	-- ===
	tTaskAssembly_RewardItem["common"][590053] = {}
	tTaskAssembly_RewardItem["common"][590053]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590053]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590053]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590053]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】勾玉精华*10
	tTaskAssembly_RewardItem["common"][590053]["RewardItem"][1]["Attr"] = "0 10" -- 秘术精华*10
	tTaskAssembly_RewardItem["common"][590053]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590053]["RewardItem"][2]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*1
	tTaskAssembly_RewardItem["common"][590053]["RewardItem"][2]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tTaskAssembly_RewardItem["common"][590053]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590053]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:9][叠加:1][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["common"][590053]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的1000职业经验礼包*1



	tTaskAssembly_RewardItem["common"][590054] = {}
	-- ===任务55
	-- ===索引: tTaskAssembly_RewardItem["common"][590054]
	-- ===
	tTaskAssembly_RewardItem["common"][590054]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590054]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590054]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590054]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】勾玉精华*10
	tTaskAssembly_RewardItem["common"][590054]["RewardItem"][1]["Attr"] = "0 10" -- 秘术精华*10
	tTaskAssembly_RewardItem["common"][590054]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590054]["RewardItem"][2]["Id"] = 3327203 -- 血狱花*3[3327203][属性:8][叠加:10000][金币:0], 【表格】血狱花*3
	tTaskAssembly_RewardItem["common"][590054]["RewardItem"][2]["Attr"] = "0 3 3" -- 血狱花*3
	tTaskAssembly_RewardItem["common"][590054]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590054]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["common"][590054]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590055] = {}
	-- ===
	-- ===索引: tTaskAssembly_RewardItem["common"][590055]
	-- ===
	tTaskAssembly_RewardItem["common"][590055]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590055]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590055]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590055]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄*2
	tTaskAssembly_RewardItem["common"][590055]["RewardItem"][1]["Attr"] = "0 2" -- 神兵灵魄*2
	tTaskAssembly_RewardItem["common"][590055]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590055]["RewardItem"][2]["Id"] = 3321107 -- 炼魂石[3321107][属性:9][叠加:10000][金币:0], 【表格】炼魂玉原石
	tTaskAssembly_RewardItem["common"][590055]["RewardItem"][2]["Attr"] = "0 1" -- 炼魂石*1
	tTaskAssembly_RewardItem["common"][590055]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590055]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:9][叠加:1][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["common"][590055]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的1000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590056] = {}
	-- ===
	-- ===索引: tTaskAssembly_RewardItem["common"][590056]
	-- ===
	tTaskAssembly_RewardItem["common"][590056]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590056]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590056]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590056]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄*2
	tTaskAssembly_RewardItem["common"][590056]["RewardItem"][1]["Attr"] = "0 2" -- 神兵灵魄*2
	tTaskAssembly_RewardItem["common"][590056]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590056]["RewardItem"][2]["Id"] = 3321107 -- 炼魂石[3321107][属性:9][叠加:10000][金币:0], 【表格】炼魂玉原石
	tTaskAssembly_RewardItem["common"][590056]["RewardItem"][2]["Attr"] = "0 1" -- 炼魂石*1
	tTaskAssembly_RewardItem["common"][590056]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590056]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:9][叠加:1][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["common"][590056]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的1000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590057] = {}
	-- ===任务58
	-- ===索引: tTaskAssembly_RewardItem["common"][590057]
	-- ===
	tTaskAssembly_RewardItem["common"][590057]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590057]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590057]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590057]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*5
	tTaskAssembly_RewardItem["common"][590057]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的明亮星陨石*5
	tTaskAssembly_RewardItem["common"][590057]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590057]["RewardItem"][2]["Id"] = 3314206 -- 300分钟经验包[3314206][属性:11][叠加:0][金币:0], 【表格】600分钟经验
	tTaskAssembly_RewardItem["common"][590057]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的300分钟经验包*2
	tTaskAssembly_RewardItem["common"][590057]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590057]["RewardItem"][3]["Id"] = 3315886 -- 2000职业经验礼包[3315886][属性:11][叠加:10000][金币:0], 【表格】2000职业经验
	tTaskAssembly_RewardItem["common"][590057]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 2000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590058] = {}
	-- ===任务59
	-- ===索引: tTaskAssembly_RewardItem["common"][590058]
	-- ===
	tTaskAssembly_RewardItem["common"][590058]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590058]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590058]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590058]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3（赠）
	tTaskAssembly_RewardItem["common"][590058]["RewardItem"][1]["Attr"] = "0 1 3" -- +3赤炼石*1
	tTaskAssembly_RewardItem["common"][590058]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590058]["RewardItem"][2]["Id"] = 3314206 -- 300分钟经验包[3314206][属性:11][叠加:0][金币:0], 【表格】600分钟经验
	tTaskAssembly_RewardItem["common"][590058]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的300分钟经验包*2
	tTaskAssembly_RewardItem["common"][590058]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590058]["RewardItem"][3]["Id"] = 3315886 -- 2000职业经验礼包[3315886][属性:11][叠加:10000][金币:0], 【表格】2000职业经验
	tTaskAssembly_RewardItem["common"][590058]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 2000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590059] = {}
	-- ===任务60
	-- ===索引: tTaskAssembly_RewardItem["common"][590059]
	-- ===
	tTaskAssembly_RewardItem["common"][590059]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590059]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590059]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590059]["RewardItem"][1]["Id"] = 3321077 -- 500点气力值[3321098][属性:9][叠加:10000][金币:0], 【表格】500点气力值
	tTaskAssembly_RewardItem["common"][590059]["RewardItem"][1]["Attr"] = "0 5 3" -- 500点气力值*1
	tTaskAssembly_RewardItem["common"][590059]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590059]["RewardItem"][2]["Id"] = 3314206 -- 300分钟经验包[3314206][属性:11][叠加:0][金币:0], 【表格】600分钟经验
	tTaskAssembly_RewardItem["common"][590059]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的300分钟经验包*2
	tTaskAssembly_RewardItem["common"][590059]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590059]["RewardItem"][3]["Id"] = 3315886 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】2000职业经验
	tTaskAssembly_RewardItem["common"][590059]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590060] = {}
	-- ===
	-- ===索引: tTaskAssembly_RewardItem["common"][590060]
	-- ===
	tTaskAssembly_RewardItem["common"][590060]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590060]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590060]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590060]["RewardItem"][1]["Id"] = 3327202 -- 法印宝盒碎片[3327202][属性:9][叠加:10000][金币:0], 【表格】勾玉宝盒碎片*5
	tTaskAssembly_RewardItem["common"][590060]["RewardItem"][1]["Attr"] = "0 5" -- 法印宝盒碎片*5
	tTaskAssembly_RewardItem["common"][590060]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590060]["RewardItem"][2]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】勾玉精华*15
	tTaskAssembly_RewardItem["common"][590060]["RewardItem"][2]["Attr"] = "0 15" -- 秘术精华*15（[错误]物品数量超10个）
	tTaskAssembly_RewardItem["common"][590060]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590060]["RewardItem"][3]["Id"] = 3315886 -- 2000职业经验礼包[3315886][属性:9][叠加:1][金币:0], 【表格】2000职业经验
	tTaskAssembly_RewardItem["common"][590060]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的2000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590061] = {}
	-- ===
	-- ===索引: tTaskAssembly_RewardItem["common"][590061]
	-- ===
	tTaskAssembly_RewardItem["common"][590061]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590061]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590061]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590061]["RewardItem"][1]["Id"] = 3327202 -- 法印宝盒碎片[3327202][属性:9][叠加:10000][金币:0], 【表格】勾玉宝盒碎片*5
	tTaskAssembly_RewardItem["common"][590061]["RewardItem"][1]["Attr"] = "0 5" -- 法印宝盒碎片*5
	tTaskAssembly_RewardItem["common"][590061]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590061]["RewardItem"][2]["Id"] = 3330609 -- 轮回莲[3330609][属性:9][叠加:10000][金币:0], 【表格】轮回莲*1
	tTaskAssembly_RewardItem["common"][590061]["RewardItem"][2]["Attr"] = "0 1 3" -- 轮回莲*1
	tTaskAssembly_RewardItem["common"][590061]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590061]["RewardItem"][3]["Id"] = 3315886 -- 2000职业经验礼包[3315886][属性:9][叠加:1][金币:0], 【表格】2000职业经验
	tTaskAssembly_RewardItem["common"][590061]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的2000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590062] = {}
	-- ===
	-- ===索引: tTaskAssembly_RewardItem["common"][590062]
	-- ===
	tTaskAssembly_RewardItem["common"][590062]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590062]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590062]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590062]["RewardItem"][1]["Id"] = 3327202 -- 法印宝盒碎片[3327202][属性:9][叠加:10000][金币:0], 【表格】勾玉宝盒碎片*5
	tTaskAssembly_RewardItem["common"][590062]["RewardItem"][1]["Attr"] = "0 5" -- 法印宝盒碎片*5
	tTaskAssembly_RewardItem["common"][590062]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590062]["RewardItem"][2]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】勾玉精华*15
	tTaskAssembly_RewardItem["common"][590062]["RewardItem"][2]["Attr"] = "0 15" -- 秘术精华*15（[错误]物品数量超10个）
	tTaskAssembly_RewardItem["common"][590062]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590062]["RewardItem"][3]["Id"] = 3315886 -- 2000职业经验礼包[3315886][属性:9][叠加:1][金币:0], 【表格】2000职业经验
	tTaskAssembly_RewardItem["common"][590062]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的2000职业经验礼包*1



	tTaskAssembly_RewardItem["common"][590063] = {}
	-- ===
	-- ===索引: tTaskAssembly_RewardItem["common"][590063]
	-- ===
	tTaskAssembly_RewardItem["common"][590063]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590063]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590063]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590063]["RewardItem"][1]["Id"] = 3327202 -- 法印宝盒碎片[3327202][属性:9][叠加:10000][金币:0], 【表格】勾玉宝盒碎片*5
	tTaskAssembly_RewardItem["common"][590063]["RewardItem"][1]["Attr"] = "0 5" -- 法印宝盒碎片*5
	tTaskAssembly_RewardItem["common"][590063]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590063]["RewardItem"][2]["Id"] = 3330609 -- 轮回莲[3330609][属性:9][叠加:10000][金币:0], 【表格】轮回莲*1
	tTaskAssembly_RewardItem["common"][590063]["RewardItem"][2]["Attr"] = "0 1 3" -- 轮回莲*1
	tTaskAssembly_RewardItem["common"][590063]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590063]["RewardItem"][3]["Id"] = 3315886 -- 2000职业经验礼包[3315886][属性:9][叠加:1][金币:0], 【表格】2000职业经验
	tTaskAssembly_RewardItem["common"][590063]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的2000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590064] = {}
	-- ===
	-- ===索引: tTaskAssembly_RewardItem["common"][590064]
	-- ===
	tTaskAssembly_RewardItem["common"][590064]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590064]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590064]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590064]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄x5
	tTaskAssembly_RewardItem["common"][590064]["RewardItem"][1]["Attr"] = "0 5" -- 神兵灵魄*5
	tTaskAssembly_RewardItem["common"][590064]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590064]["RewardItem"][2]["Id"] = 3312954 -- 炼魂玉原石[3312954][属性:9][叠加:10000][金币:0], 【表格】炼魂玉原石
	tTaskAssembly_RewardItem["common"][590064]["RewardItem"][2]["Attr"] = "0 1" -- 炼魂玉原石*1
	tTaskAssembly_RewardItem["common"][590064]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590064]["RewardItem"][3]["Id"] = 3315886 -- 2000职业经验礼包[3315886][属性:9][叠加:1][金币:0], 【表格】2000职业经验
	tTaskAssembly_RewardItem["common"][590064]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的2000职业经验礼包*1



	tTaskAssembly_RewardItem["common"][590065] = {}
	-- ===
	-- ===索引: tTaskAssembly_RewardItem["common"][590065]
	-- ===
	tTaskAssembly_RewardItem["common"][590065]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590065]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590065]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590065]["RewardItem"][1]["Id"] = 3321107 -- 炼魂玉[3321107][属性:9][叠加:10000][金币:0], 【表格】炼魂玉x5
	tTaskAssembly_RewardItem["common"][590065]["RewardItem"][1]["Attr"] = "0 5" -- 炼魂玉*5
	tTaskAssembly_RewardItem["common"][590065]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590065]["RewardItem"][2]["Id"] = 3312954 -- 炼魂玉原石[3312954][属性:9][叠加:10000][金币:0], 【表格】炼魂玉原石
	tTaskAssembly_RewardItem["common"][590065]["RewardItem"][2]["Attr"] = "0 1" -- 炼魂玉原石*1
	tTaskAssembly_RewardItem["common"][590065]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590065]["RewardItem"][3]["Id"] = 3315886 -- 2000职业经验礼包[3315886][属性:9][叠加:1][金币:0], 【表格】2000职业经验
	tTaskAssembly_RewardItem["common"][590065]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的2000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590066] = {}
	-- ===
	-- ===索引: tTaskAssembly_RewardItem["common"][590066]
	-- ===
	tTaskAssembly_RewardItem["common"][590066]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590066]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590066]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590066]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄x5
	tTaskAssembly_RewardItem["common"][590066]["RewardItem"][1]["Attr"] = "0 5" -- 神兵灵魄*5
	tTaskAssembly_RewardItem["common"][590066]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590066]["RewardItem"][2]["Id"] = 3312954 -- 炼魂玉原石[3312954][属性:9][叠加:10000][金币:0], 【表格】炼魂玉原石
	tTaskAssembly_RewardItem["common"][590066]["RewardItem"][2]["Attr"] = "0 1" -- 炼魂玉原石*1
	tTaskAssembly_RewardItem["common"][590066]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590066]["RewardItem"][3]["Id"] = 3315886 -- 2000职业经验礼包[3315886][属性:9][叠加:1][金币:0], 【表格】2000职业经验
	tTaskAssembly_RewardItem["common"][590066]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的2000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590067] = {}
	-- ===
	-- ===索引: tTaskAssembly_RewardItem["common"][590067]
	-- ===
	tTaskAssembly_RewardItem["common"][590067]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590067]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590067]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590067]["RewardItem"][1]["Id"] =  3321107 -- 炼魂玉[3321107][属性:9][叠加:10000][金币:0], 【表格】炼魂玉x5
	tTaskAssembly_RewardItem["common"][590067]["RewardItem"][1]["Attr"]  = "0 5" -- 炼魂玉*5
	tTaskAssembly_RewardItem["common"][590067]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590067]["RewardItem"][2]["Id"] = 3312954 -- 炼魂玉原石[3312954][属性:9][叠加:10000][金币:0], 【表格】炼魂玉原石
	tTaskAssembly_RewardItem["common"][590067]["RewardItem"][2]["Attr"] = "0 1" -- 炼魂玉原石*1
	tTaskAssembly_RewardItem["common"][590067]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590067]["RewardItem"][3]["Id"] = 3315886 -- 2000职业经验礼包[3315886][属性:9][叠加:1][金币:0], 【表格】2000职业经验
	tTaskAssembly_RewardItem["common"][590067]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的2000职业经验礼包*1



	tTaskAssembly_RewardItem["common"][590068] = {}
	-- ===任务69
	-- ===索引: tTaskAssembly_RewardItem["common"][590068]
	-- ===
	tTaskAssembly_RewardItem["common"][590068]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590068]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590068]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590068]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4+3
	tTaskAssembly_RewardItem["common"][590068]["RewardItem"][1]["Attr"] = "0 1 3" -- +4赤炼石*1
	tTaskAssembly_RewardItem["common"][590068]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590068]["RewardItem"][2]["Id"] = 3314206 -- 1200分钟经验包[3303064][属性:11][叠加:0][金币:0], 【表格】1200分钟经验
	tTaskAssembly_RewardItem["common"][590068]["RewardItem"][2]["Attr"] = "0 4 3" -- 2天时效(激活)的1200分钟经验包*1
	tTaskAssembly_RewardItem["common"][590068]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590068]["RewardItem"][3]["Id"] = 3315887 -- 5000职业经验礼包[3315887][属性:11][叠加:10000][金币:0], 【表格】5000职业经验
	tTaskAssembly_RewardItem["common"][590068]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 5000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590069] = {}
	-- ===任务70
	-- ===索引: tTaskAssembly_RewardItem["common"][590069]
	-- ===
	tTaskAssembly_RewardItem["common"][590069]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590069]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590069]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590069]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tTaskAssembly_RewardItem["common"][590069]["RewardItem"][1]["Attr"] = "0 1 3" -- +4赤炼石*1
	tTaskAssembly_RewardItem["common"][590069]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590069]["RewardItem"][2]["Id"] = 3314206 -- 1200分钟经验包[3303064][属性:11][叠加:0][金币:0], 【表格】1200分钟经验
	tTaskAssembly_RewardItem["common"][590069]["RewardItem"][2]["Attr"] = "0 4 3" -- 2天时效(激活)的1200分钟经验包*1
	tTaskAssembly_RewardItem["common"][590069]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590069]["RewardItem"][3]["Id"] = 3315887 -- 5000职业经验礼包[3315887][属性:11][叠加:10000][金币:0], 【表格】5000职业经验
	tTaskAssembly_RewardItem["common"][590069]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 5000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590070] = {}
	-- ===
	-- ===索引: tTaskAssembly_RewardItem["common"][590070]
	-- ===
	tTaskAssembly_RewardItem["common"][590070]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590070]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590070]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590070]["RewardItem"][1]["Id"] = 3327202 -- 法印宝盒碎片[3327202][属性:9][叠加:10000][金币:0], 【表格】勾玉宝盒碎片*10
	tTaskAssembly_RewardItem["common"][590070]["RewardItem"][1]["Attr"] = "0 10" -- 法印宝盒碎片*10
	tTaskAssembly_RewardItem["common"][590070]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590070]["RewardItem"][2]["Id"] = 3314206 -- 化气聚神丹[3314206][属性:8][叠加:10000][金币:0], 【表格】1200分钟经验
	tTaskAssembly_RewardItem["common"][590070]["RewardItem"][2]["Attr"] = "0 4 3" -- 化气聚神丹（赠）*4
	tTaskAssembly_RewardItem["common"][590070]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590070]["RewardItem"][3]["Id"] = 3315887 -- 5000职业经验礼包[3315887][属性:9][叠加:1][金币:0], 【表格】5000职业经验
	tTaskAssembly_RewardItem["common"][590070]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的5000职业经验礼包*1


	tTaskAssembly_RewardItem["common"][590071] = {}
	-- ===
	-- ===索引: tTaskAssembly_RewardItem["common"][590071]
	-- ===
	tTaskAssembly_RewardItem["common"][590071]["LogId"] = 12001916
	tTaskAssembly_RewardItem["common"][590071]["RewardItem"] = {}
	tTaskAssembly_RewardItem["common"][590071]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["common"][590071]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄*10
	tTaskAssembly_RewardItem["common"][590071]["RewardItem"][1]["Attr"] = "0 10" -- 神兵灵魄*10
	tTaskAssembly_RewardItem["common"][590071]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["common"][590071]["RewardItem"][2]["Id"] = 3314206 -- 化气聚神丹[3314206][属性:8][叠加:10000][金币:0], 【表格】1200分钟经验
	tTaskAssembly_RewardItem["common"][590071]["RewardItem"][2]["Attr"] = "0 4 3" -- 化气聚神丹（赠）*4
	tTaskAssembly_RewardItem["common"][590071]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["common"][590071]["RewardItem"][3]["Id"] = 3315887 -- 5000职业经验礼包[3315887][属性:9][叠加:1][金币:0], 【表格】5000职业经验
	tTaskAssembly_RewardItem["common"][590071]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的5000职业经验礼包*1

	tTaskAssembly_RewardItem["NoGif"] = {}
	-- ===任务1
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590000]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590000] = {}
	tTaskAssembly_RewardItem["NoGif"][590000]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590000]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590000]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590000]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤练石+1（赠）*2
	tTaskAssembly_RewardItem["NoGif"][590000]["RewardItem"][1]["Attr"] = "0 2 3" -- +1赤炼石（赠）*2
	tTaskAssembly_RewardItem["NoGif"][590000]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590000]["RewardItem"][2]["Id"] = 3314205 -- 60分钟经验幸运包[3314205][属性:9][叠加:0][金币:0], 【表格】60分钟经验
	tTaskAssembly_RewardItem["NoGif"][590000]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)的60分钟经验幸运包*1
	tTaskAssembly_RewardItem["NoGif"][590000]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590000]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590000]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590001] = {}
	-- ===任务2
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590001]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590001]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590001]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590001]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590001]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*5
	tTaskAssembly_RewardItem["NoGif"][590001]["RewardItem"][1]["Attr"] = "0 5" -- 人参果*5
	tTaskAssembly_RewardItem["NoGif"][590001]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590001]["RewardItem"][2]["Id"] = 3314205 -- 60分钟经验幸运包[3314205][属性:9][叠加:0][金币:0], 【表格】60分钟经验
	tTaskAssembly_RewardItem["NoGif"][590001]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)的60分钟经验幸运包*1
	tTaskAssembly_RewardItem["NoGif"][590001]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590001]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590001]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590002] = {}
	-- ===任务3
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590002]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590002]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590002]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590002]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590002]["RewardItem"][1]["Id"] = 4060001 -- 万能精粹（赠）*5[3329979][属性:9][叠加:10000][金币:0], 【表格】万能精粹（赠）*5
	tTaskAssembly_RewardItem["NoGif"][590002]["RewardItem"][1]["Attr"] = "0 5 3" --万能精粹（赠）*5
	tTaskAssembly_RewardItem["NoGif"][590002]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590002]["RewardItem"][2]["Id"] = 3314205 -- 60分钟经验幸运包[3314205][属性:9][叠加:0][金币:0], 【表格】60分钟经验
	tTaskAssembly_RewardItem["NoGif"][590002]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)的60分钟经验幸运包*1
	tTaskAssembly_RewardItem["NoGif"][590002]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590002]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590002]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590003] = {}
	-- ===任务4
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590003]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590003]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590003]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590003]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590003]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤练石+1（赠）*2
	tTaskAssembly_RewardItem["NoGif"][590003]["RewardItem"][1]["Attr"] = "0 2 3" -- +1赤炼石（赠）*2
	tTaskAssembly_RewardItem["NoGif"][590003]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590003]["RewardItem"][2]["Id"] = 3314205 -- 60分钟经验幸运包[3314205][属性:9][叠加:0][金币:0], 【表格】60分钟经验
	tTaskAssembly_RewardItem["NoGif"][590003]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)的60分钟经验幸运包*1
	tTaskAssembly_RewardItem["NoGif"][590003]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590003]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590003]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590004] = {}
	-- ===任务5
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590004]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590004]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590004]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590004]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590004]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*5
	tTaskAssembly_RewardItem["NoGif"][590004]["RewardItem"][1]["Attr"] = "0 5" -- 人参果*5
	tTaskAssembly_RewardItem["NoGif"][590004]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590004]["RewardItem"][2]["Id"] = 3314205 -- 60分钟经验幸运包[3314205][属性:9][叠加:0][金币:0], 【表格】60分钟经验
	tTaskAssembly_RewardItem["NoGif"][590004]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)的60分钟经验幸运包*1
	tTaskAssembly_RewardItem["NoGif"][590004]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590004]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590004]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590005] = {}
	-- ===任务6
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590005]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590005]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590005]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590005]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590005]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤练石+1（赠）*2
	tTaskAssembly_RewardItem["NoGif"][590005]["RewardItem"][1]["Attr"] = "0 2 3" -- +1赤炼石（赠）*2
	tTaskAssembly_RewardItem["NoGif"][590005]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590005]["RewardItem"][2]["Id"] = 3314205 -- 60分钟经验幸运包[3314205][属性:9][叠加:0][金币:0], 【表格】60分钟经验
	tTaskAssembly_RewardItem["NoGif"][590005]["RewardItem"][2]["Attr"]= "0 1 3" -- 2天时效(激活)的60分钟经验幸运包*1
	tTaskAssembly_RewardItem["NoGif"][590005]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590005]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590005]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590006] = {}
	-- ===任务7
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590006]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590006]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590006]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590006]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590006]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*5
	tTaskAssembly_RewardItem["NoGif"][590006]["RewardItem"][1]["Attr"] = "0 5" -- 人参果*5
	tTaskAssembly_RewardItem["NoGif"][590006]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590006]["RewardItem"][2]["Id"] = 3314205 -- 60分钟经验幸运包[3314205][属性:9][叠加:0][金币:0], 【表格】60分钟经验
	tTaskAssembly_RewardItem["NoGif"][590006]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)的60分钟经验幸运包*1
	tTaskAssembly_RewardItem["NoGif"][590006]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590006]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590006]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590007] = {}
	-- ===任务8
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590007]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590007]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590007]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590007]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590007]["RewardItem"][1]["Id"] = 4060001 -- 万能精粹（赠）*5[3329979][属性:9][叠加:10000][金币:0], 【表格】万能精粹（赠）*5
	tTaskAssembly_RewardItem["NoGif"][590007]["RewardItem"][1]["Attr"] = "0 5 3" --万能精粹（赠）*5
	tTaskAssembly_RewardItem["NoGif"][590007]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590007]["RewardItem"][2]["Id"] = 3314205 -- 60分钟经验幸运包[3314205][属性:9][叠加:0][金币:0], 【表格】60分钟经验
	tTaskAssembly_RewardItem["NoGif"][590007]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)的60分钟经验幸运包*1
	tTaskAssembly_RewardItem["NoGif"][590007]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590007]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590007]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590008] = {}
	-- ===任务9
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590008]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590008]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590008]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590008]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590008]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤练石+1（赠）*2
	tTaskAssembly_RewardItem["NoGif"][590008]["RewardItem"][1]["Attr"] = "0 2 3" -- +1赤炼石（赠）*2
	tTaskAssembly_RewardItem["NoGif"][590008]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590008]["RewardItem"][2]["Id"] = 3314205 -- 60分钟经验幸运包[3314205][属性:9][叠加:0][金币:0], 【表格】60分钟经验
	tTaskAssembly_RewardItem["NoGif"][590008]["RewardItem"][2]["Attr"]= "0 1 3" -- 2天时效(激活)的60分钟经验幸运包*1
	tTaskAssembly_RewardItem["NoGif"][590008]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590008]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590008]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590009] = {}
	-- ===任务10
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590009]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590009]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590009]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590009]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590009]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*5
	tTaskAssembly_RewardItem["NoGif"][590009]["RewardItem"][1]["Attr"] = "0 5" -- 人参果*5
	tTaskAssembly_RewardItem["NoGif"][590009]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590009]["RewardItem"][2]["Id"] = 3314205 -- 60分钟经验幸运包[3314205][属性:9][叠加:0][金币:0], 【表格】60分钟经验
	tTaskAssembly_RewardItem["NoGif"][590009]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)的60分钟经验幸运包*1
	tTaskAssembly_RewardItem["NoGif"][590009]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590009]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590009]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590010] = {}
	-- ===任务11
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590010]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590010]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590010]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590010]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590010]["RewardItem"][1]["Id"] = 4060001 -- 万能精粹（赠）*5[3329979][属性:9][叠加:10000][金币:0], 【表格】万能精粹（赠）*5
	tTaskAssembly_RewardItem["NoGif"][590010]["RewardItem"][1]["Attr"] = "0 5 3" --万能精粹（赠）*5
	tTaskAssembly_RewardItem["NoGif"][590010]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590010]["RewardItem"][2]["Id"] = 3314205 -- 60分钟经验幸运包[3314205][属性:9][叠加:0][金币:0], 【表格】60分钟经验
	tTaskAssembly_RewardItem["NoGif"][590010]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)的60分钟经验幸运包*1
	tTaskAssembly_RewardItem["NoGif"][590010]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590010]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590010]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590011] = {}
	-- ===任务12
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590011]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590011]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590011]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590011]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590011]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】勾玉精华*10
	tTaskAssembly_RewardItem["NoGif"][590011]["RewardItem"][1]["Attr"] = "0 20" -- 秘术精华*20
	tTaskAssembly_RewardItem["NoGif"][590011]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590011]["RewardItem"][2]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590011]["RewardItem"][2]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590012] = {}
	-- ===任务13
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590012]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590012]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590012]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590012]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590012]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】勾玉精华*10
	tTaskAssembly_RewardItem["NoGif"][590012]["RewardItem"][1]["Attr"] = "0 10" -- 秘术精华*10
	tTaskAssembly_RewardItem["NoGif"][590012]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590012]["RewardItem"][2]["Id"] = 4060001 -- 万能精粹*10[4060001][属性:9][叠加:10000][金币:0], 【表格】万能精粹*10
	tTaskAssembly_RewardItem["NoGif"][590012]["RewardItem"][2]["Attr"] = "0 10 3" -- 万能精粹*10*10
	tTaskAssembly_RewardItem["NoGif"][590012]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590012]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590012]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590013] = {}
	-- ===任务14
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590013]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590013]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590013]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590013]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590013]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】勾玉精华*10
	tTaskAssembly_RewardItem["NoGif"][590013]["RewardItem"][1]["Attr"] = "0 10" -- 秘术精华*10
	tTaskAssembly_RewardItem["NoGif"][590013]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590013]["RewardItem"][2]["Id"] = 720027 -- 流星卷[720027][属性:0][叠加:0][金币:0], 【表格】流星卷
	tTaskAssembly_RewardItem["NoGif"][590013]["RewardItem"][2]["Attr"] = "0 1 3" -- 流星卷*1
	tTaskAssembly_RewardItem["NoGif"][590013]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590013]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590013]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590014] = {}
	-- ===任务15
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590014]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590014]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590014]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590014]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590014]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】勾玉精华*10
	tTaskAssembly_RewardItem["NoGif"][590014]["RewardItem"][1]["Attr"] = "0 20" -- 秘术精华*20
	tTaskAssembly_RewardItem["NoGif"][590014]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590014]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590014]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590015] = {}
	-- ===任务16
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590015]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590015]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590015]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590015]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590015]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】勾玉精华*10
	tTaskAssembly_RewardItem["NoGif"][590015]["RewardItem"][1]["Attr"] = "0 10" -- 秘术精华*10
	tTaskAssembly_RewardItem["NoGif"][590015]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590015]["RewardItem"][2]["Id"] = 4060001 -- 万能精粹*10[4060001][属性:9][叠加:10000][金币:0], 【表格】万能精粹*10
	tTaskAssembly_RewardItem["NoGif"][590015]["RewardItem"][2]["Attr"] = "0 10 3" -- 万能精粹*10
	tTaskAssembly_RewardItem["NoGif"][590015]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590015]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590015]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590016] = {}
	-- ===任务17
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590016]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590016]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590016]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590016]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590016]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】勾玉精华*10
	tTaskAssembly_RewardItem["NoGif"][590016]["RewardItem"][1]["Attr"] = "0 10" -- 秘术精华*10
	tTaskAssembly_RewardItem["NoGif"][590016]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590016]["RewardItem"][2]["Id"] = 720027 -- 流星卷[720027][属性:0][叠加:0][金币:0], 【表格】流星卷
	tTaskAssembly_RewardItem["NoGif"][590016]["RewardItem"][2]["Attr"] = "0 1 3" -- 流星卷*1
	tTaskAssembly_RewardItem["NoGif"][590016]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590016]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590016]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590017] = {}
	-- ===任务18
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590017]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590017]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590017]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590017]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590017]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄*3
	tTaskAssembly_RewardItem["NoGif"][590017]["RewardItem"][1]["Attr"] = "0 3" -- 神兵灵魄*3
	tTaskAssembly_RewardItem["NoGif"][590017]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590017]["RewardItem"][2]["Id"] = 3321107 -- 炼魂石[3321107][属性:9][叠加:10000][金币:0], 【表格】炼魂石
	tTaskAssembly_RewardItem["NoGif"][590017]["RewardItem"][2]["Attr"] = "0 1" -- 炼魂石*1
	tTaskAssembly_RewardItem["NoGif"][590017]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590017]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590017]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590018] = {}
	-- ===任务19
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590018]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590018]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590018]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590018]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590018]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄*3
	tTaskAssembly_RewardItem["NoGif"][590018]["RewardItem"][1]["Attr"] = "0 3" -- 神兵灵魄*3
	tTaskAssembly_RewardItem["NoGif"][590018]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590018]["RewardItem"][2]["Id"] = 4060001 -- 万能精粹*10[4060001][属性:9][叠加:10000][金币:0], 【表格】万能精粹*10
	tTaskAssembly_RewardItem["NoGif"][590018]["RewardItem"][2]["Attr"] = "0 10 3" -- 万能精粹*10*1
	tTaskAssembly_RewardItem["NoGif"][590018]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590018]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590018]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590019] = {}
	-- ===任务20
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590019]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590019]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590019]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590019]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590019]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄*3
	tTaskAssembly_RewardItem["NoGif"][590019]["RewardItem"][1]["Attr"] = "0 3" -- 神兵灵魄*3
	tTaskAssembly_RewardItem["NoGif"][590019]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590019]["RewardItem"][2]["Id"] = 720027 -- 流星卷[720027][属性:0][叠加:0][金币:0], 【表格】流星卷
	tTaskAssembly_RewardItem["NoGif"][590019]["RewardItem"][2]["Attr"] = "0 1 3" -- 流星卷*1
	tTaskAssembly_RewardItem["NoGif"][590019]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590019]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590019]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590020] = {}
	-- ===任务21
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590020]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590020]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590020]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590020]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590020]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄*3
	tTaskAssembly_RewardItem["NoGif"][590020]["RewardItem"][1]["Attr"] = "0 3" -- 神兵灵魄*3
	tTaskAssembly_RewardItem["NoGif"][590020]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590020]["RewardItem"][2]["Id"] = 3321107 -- 炼魂石[3321107][属性:9][叠加:10000][金币:0], 【表格】炼魂石
	tTaskAssembly_RewardItem["NoGif"][590020]["RewardItem"][2]["Attr"] = "0 1" -- 炼魂石*1
	tTaskAssembly_RewardItem["NoGif"][590020]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590020]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590020]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590021] = {}
	-- ===任务22
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590021]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590021]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590021]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590021]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590021]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄*3
	tTaskAssembly_RewardItem["NoGif"][590021]["RewardItem"][1]["Attr"] = "0 3" -- 神兵灵魄*3
	tTaskAssembly_RewardItem["NoGif"][590021]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590021]["RewardItem"][2]["Id"] = 4060001 -- 万能精粹*10[4060001][属性:9][叠加:10000][金币:0], 【表格】万能精粹*10
	tTaskAssembly_RewardItem["NoGif"][590021]["RewardItem"][2]["Attr"] = "0 1 3" -- 万能精粹*10*1
	tTaskAssembly_RewardItem["NoGif"][590021]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590021]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590021]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590022] = {}
	-- ===任务23
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590022]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590022]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590022]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590022]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590022]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄*3
	tTaskAssembly_RewardItem["NoGif"][590022]["RewardItem"][1]["Attr"] = "0 3" -- 神兵灵魄*3
	tTaskAssembly_RewardItem["NoGif"][590022]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590022]["RewardItem"][2]["Id"] = 720027 -- 流星卷[720027][属性:0][叠加:0][金币:0], 【表格】流星卷
	tTaskAssembly_RewardItem["NoGif"][590022]["RewardItem"][2]["Attr"] = "0 1 3" -- 流星卷*1
	tTaskAssembly_RewardItem["NoGif"][590022]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590022]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590022]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590023] = {}
	-- ===任务24
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590023]
	tTaskAssembly_RewardItem["NoGif"][590023]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590023]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590023]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590023]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤练石+1（赠）*2
	tTaskAssembly_RewardItem["NoGif"][590023]["RewardItem"][1]["Attr"] = "0 2 3" -- +1赤炼石（赠）*2
	tTaskAssembly_RewardItem["NoGif"][590023]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590023]["RewardItem"][2]["Id"] = 3314205 -- 60分钟经验幸运包[3314205][属性:9][叠加:0][金币:0], 【表格】60分钟经验
	tTaskAssembly_RewardItem["NoGif"][590023]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)的60分钟经验幸运包*1
	tTaskAssembly_RewardItem["NoGif"][590023]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590023]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590023]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590024] = {}
	-- ===任务25
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590024]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590024]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590024]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590024]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590024]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*5
	tTaskAssembly_RewardItem["NoGif"][590024]["RewardItem"][1]["Attr"] = "0 5" -- 人参果*5
	tTaskAssembly_RewardItem["NoGif"][590024]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590024]["RewardItem"][2]["Id"] = 3314205 -- 60分钟经验幸运包[3314205][属性:9][叠加:0][金币:0], 【表格】60分钟经验
	tTaskAssembly_RewardItem["NoGif"][590024]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)的60分钟经验幸运包*1
	tTaskAssembly_RewardItem["NoGif"][590024]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590024]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590024]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590025] = {}
	-- ===任务26
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590025]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590025]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590025]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590025]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590025]["RewardItem"][1]["Id"] = 4060001 -- 万能精粹*10[4060001][属性:9][叠加:10000][金币:0], 【表格】万能精粹*10
	tTaskAssembly_RewardItem["NoGif"][590025]["RewardItem"][1]["Attr"] = "0 5 3"-- 万能精粹*10*10
	tTaskAssembly_RewardItem["NoGif"][590025]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590025]["RewardItem"][2]["Id"] = 3314205 -- 60分钟经验幸运包[3314205][属性:9][叠加:0][金币:0], 【表格】60分钟经验
	tTaskAssembly_RewardItem["NoGif"][590025]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)的60分钟经验幸运包*1
	tTaskAssembly_RewardItem["NoGif"][590025]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590025]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590025]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590026] = {}
	-- ===任务27
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590026]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590026]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590026]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590026]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590026]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤练石+1（赠）*2
	tTaskAssembly_RewardItem["NoGif"][590026]["RewardItem"][1]["Attr"] = "0 2 3" -- +1赤炼石（赠）*2
	tTaskAssembly_RewardItem["NoGif"][590026]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590026]["RewardItem"][2]["Id"] = 3314205 -- 60分钟经验幸运包[3314205][属性:9][叠加:0][金币:0], 【表格】60分钟经验
	tTaskAssembly_RewardItem["NoGif"][590026]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)的60分钟经验幸运包*1
	tTaskAssembly_RewardItem["NoGif"][590026]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590026]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590026]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590027] = {}
	-- ===任务28
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590027]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590027]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590027]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590027]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590027]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*5
	tTaskAssembly_RewardItem["NoGif"][590027]["RewardItem"][1]["Attr"] = "0 5" -- 人参果*5
	tTaskAssembly_RewardItem["NoGif"][590027]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590027]["RewardItem"][2]["Id"] = 3314205 -- 60分钟经验幸运包[3314205][属性:9][叠加:0][金币:0], 【表格】60分钟经验
	tTaskAssembly_RewardItem["NoGif"][590027]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)的60分钟经验幸运包*1
	tTaskAssembly_RewardItem["NoGif"][590027]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590027]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590027]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590028] = {}
	-- ===任务29
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590028]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590028]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590028]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590028]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590028]["RewardItem"][1]["Id"] = 4060001 -- 万能精粹*10[4060001][属性:9][叠加:10000][金币:0], 【表格】万能精粹*10
	tTaskAssembly_RewardItem["NoGif"][590028]["RewardItem"][1]["Attr"] = "0 5 3"-- 万能精粹*10*10
	tTaskAssembly_RewardItem["NoGif"][590028]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590028]["RewardItem"][2]["Id"] = 3314205 -- 60分钟经验幸运包[3314205][属性:9][叠加:0][金币:0], 【表格】60分钟经验
	tTaskAssembly_RewardItem["NoGif"][590028]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)的60分钟经验幸运包*1
	tTaskAssembly_RewardItem["NoGif"][590028]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590028]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590028]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590029] = {}
	-- ===任务30
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590029]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590029]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590029]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590029]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590029]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤练石+1（赠）*2
	tTaskAssembly_RewardItem["NoGif"][590029]["RewardItem"][1]["Attr"] = "0 2 3" -- +1赤炼石（赠）*2
	tTaskAssembly_RewardItem["NoGif"][590029]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590029]["RewardItem"][2]["Id"] = 3314205 -- 60分钟经验幸运包[3314205][属性:9][叠加:0][金币:0], 【表格】60分钟经验
	tTaskAssembly_RewardItem["NoGif"][590029]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)的60分钟经验幸运包*1
	tTaskAssembly_RewardItem["NoGif"][590029]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590029]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590029]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590030] = {}
	-- ===任务31
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590030]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590030]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590030]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590030]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590030]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*5
	tTaskAssembly_RewardItem["NoGif"][590030]["RewardItem"][1]["Attr"] = "0 5" -- 人参果*5
	tTaskAssembly_RewardItem["NoGif"][590030]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590030]["RewardItem"][2]["Id"] = 3314205 -- 60分钟经验幸运包[3314205][属性:9][叠加:0][金币:0], 【表格】60分钟经验
	tTaskAssembly_RewardItem["NoGif"][590030]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)的60分钟经验幸运包*1
	tTaskAssembly_RewardItem["NoGif"][590030]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590030]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590030]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590031] = {}
	-- ===任务32
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590031]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590031]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590031]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590031]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590031]["RewardItem"][1]["Id"] = 4060001 -- 万能精粹*10[4060001][属性:9][叠加:10000][金币:0], 【表格】万能精粹*10
	tTaskAssembly_RewardItem["NoGif"][590031]["RewardItem"][1]["Attr"] = "0 5 3"-- 万能精粹*10*10
	tTaskAssembly_RewardItem["NoGif"][590031]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590031]["RewardItem"][2]["Id"] = 3314205 -- 60分钟经验幸运包[3314205][属性:9][叠加:0][金币:0], 【表格】60分钟经验
	tTaskAssembly_RewardItem["NoGif"][590031]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)的60分钟经验幸运包*1
	tTaskAssembly_RewardItem["NoGif"][590031]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590031]["RewardItem"][3]["Id"] = 3315884 -- 800职业经验礼包[3315884][属性:11][叠加:10000][金币:0], 【表格】800职业经验
	tTaskAssembly_RewardItem["NoGif"][590031]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 800职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590032] = {}
	-- ===任务33
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590032]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590032]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590032]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590032]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590032]["RewardItem"][1]["Id"] = 4060001 -- 万能精粹*10[4060001][属性:9][叠加:10000][金币:0], 【表格】万能精粹*10
	tTaskAssembly_RewardItem["NoGif"][590032]["RewardItem"][1]["Attr"] = "0 10 3"-- 万能精粹*10*10
	tTaskAssembly_RewardItem["NoGif"][590032]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590032]["RewardItem"][2]["Id"] = 3314205 -- 120分钟经验包[3314205][属性:9][叠加:100][金币:0], 【表格】120分钟经验
	tTaskAssembly_RewardItem["NoGif"][590032]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 120分钟经验包*1
	tTaskAssembly_RewardItem["NoGif"][590032]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590032]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["NoGif"][590032]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590033] = {}
	-- ===任务34
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590033]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590033]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590033]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590033]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590033]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*3
	tTaskAssembly_RewardItem["NoGif"][590033]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的明亮星陨石*3
	tTaskAssembly_RewardItem["NoGif"][590033]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590033]["RewardItem"][2]["Id"] = 3314205 -- 120分钟经验包[3314205][属性:9][叠加:100][金币:0], 【表格】120分钟经验
	tTaskAssembly_RewardItem["NoGif"][590033]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 120分钟经验包*1
	tTaskAssembly_RewardItem["NoGif"][590033]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590033]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["NoGif"][590033]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590034] = {}
	-- ===任务35
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590034]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590034]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590034]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590034]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590034]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2（赠）
	tTaskAssembly_RewardItem["NoGif"][590034]["RewardItem"][1]["Attr"] = "0 1 3" -- +2赤炼石（赠）*1
	tTaskAssembly_RewardItem["NoGif"][590034]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590034]["RewardItem"][2]["Id"] = 3314205 -- 120分钟经验包[3314205][属性:9][叠加:100][金币:0], 【表格】120分钟经验
	tTaskAssembly_RewardItem["NoGif"][590034]["RewardItem"][2]["Attr"]= "0 2 3" -- 2天时效(激活)的 120分钟经验包*1
	tTaskAssembly_RewardItem["NoGif"][590034]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590034]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["NoGif"][590034]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590035] = {}
	-- ===任务36
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590035]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590035]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590035]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590035]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590035]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tTaskAssembly_RewardItem["NoGif"][590035]["RewardItem"][1]["Attr"] = "0 1" -- 龙鳞果*1
	tTaskAssembly_RewardItem["NoGif"][590035]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590035]["RewardItem"][2]["Id"] = 3314205 -- 120分钟经验包[3314205][属性:9][叠加:100][金币:0], 【表格】120分钟经验
	tTaskAssembly_RewardItem["NoGif"][590035]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 120分钟经验包*1
	tTaskAssembly_RewardItem["NoGif"][590035]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590035]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["NoGif"][590035]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590036] = {}
	-- ===任务37
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590036]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590036]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590036]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590036]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590036]["RewardItem"][1]["Id"] = 3321077 -- 200气力值礼包[3321077][属性:11][叠加:0][金币:0], 【表格】200气力值
	tTaskAssembly_RewardItem["NoGif"][590036]["RewardItem"][1]["Attr"] = "0 2 3" -- 200气力值礼包*1
	tTaskAssembly_RewardItem["NoGif"][590036]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590036]["RewardItem"][2]["Id"] = 3314205 -- 120分钟经验包[3314205][属性:9][叠加:100][金币:0], 【表格】120分钟经验
	tTaskAssembly_RewardItem["NoGif"][590036]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 120分钟经验包*1
	tTaskAssembly_RewardItem["NoGif"][590036]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590036]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["NoGif"][590036]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590037] = {}
	-- ===任务38
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590037]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590037]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590037]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590037]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590037]["RewardItem"][1]["Id"] = 4060001 -- 万能精粹*10[4060001][属性:9][叠加:10000][金币:0], 【表格】万能精粹*10
	tTaskAssembly_RewardItem["NoGif"][590037]["RewardItem"][1]["Attr"] = "0 10 3" -- 万能精粹*10*10
	tTaskAssembly_RewardItem["NoGif"][590037]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590037]["RewardItem"][2]["Id"] = 3314205 -- 120分钟经验包[3314205][属性:9][叠加:100][金币:0], 【表格】120分钟经验
	tTaskAssembly_RewardItem["NoGif"][590037]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 120分钟经验包*1
	tTaskAssembly_RewardItem["NoGif"][590037]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590037]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["NoGif"][590037]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590038] = {}
	-- ===任务39
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590038]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590038]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590038]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590038]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590038]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*3
	tTaskAssembly_RewardItem["NoGif"][590038]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的明亮星陨石*3
	tTaskAssembly_RewardItem["NoGif"][590038]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590038]["RewardItem"][2]["Id"] = 3314205 -- 120分钟经验包[3314205][属性:9][叠加:100][金币:0], 【表格】120分钟经验
	tTaskAssembly_RewardItem["NoGif"][590038]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 120分钟经验包*1
	tTaskAssembly_RewardItem["NoGif"][590038]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590038]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["NoGif"][590038]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590039] = {}
	-- ===任务40
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590039]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590039]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590039]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590039]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590039]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2（赠）
	tTaskAssembly_RewardItem["NoGif"][590039]["RewardItem"][1]["Attr"] = "0 1 3" -- +2赤炼石（赠）*1
	tTaskAssembly_RewardItem["NoGif"][590039]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590039]["RewardItem"][2]["Id"] = 3314205 -- 120分钟经验包[3314205][属性:9][叠加:100][金币:0], 【表格】120分钟经验
	tTaskAssembly_RewardItem["NoGif"][590039]["RewardItem"][2]["Attr"]= "0 2 3" -- 2天时效(激活)的 120分钟经验包*1
	tTaskAssembly_RewardItem["NoGif"][590039]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590039]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["NoGif"][590039]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590040] = {}
	-- ===任务41
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590040]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590040]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590040]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590040]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590040]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tTaskAssembly_RewardItem["NoGif"][590040]["RewardItem"][1]["Attr"] = "0 1" -- 龙鳞果*1
	tTaskAssembly_RewardItem["NoGif"][590040]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590040]["RewardItem"][2]["Id"] = 3314205 -- 120分钟经验包[3314205][属性:9][叠加:100][金币:0], 【表格】120分钟经验
	tTaskAssembly_RewardItem["NoGif"][590040]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 120分钟经验包*1
	tTaskAssembly_RewardItem["NoGif"][590040]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590040]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["NoGif"][590040]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590041] = {}
	-- ===任务42
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590041]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590041]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590041]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590041]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590041]["RewardItem"][1]["Id"] = 3321077 -- 200气力值礼包[3321077][属性:11][叠加:0][金币:0], 【表格】200气力值
	tTaskAssembly_RewardItem["NoGif"][590041]["RewardItem"][1]["Attr"] = "0 2 3" -- 200气力值礼包*1
	tTaskAssembly_RewardItem["NoGif"][590041]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590041]["RewardItem"][2]["Id"] = 3314205 -- 120分钟经验包[3314205][属性:9][叠加:100][金币:0], 【表格】120分钟经验
	tTaskAssembly_RewardItem["NoGif"][590041]["RewardItem"][2]["Attr"]= "0 2 3" -- 2天时效(激活)的 120分钟经验包*1
	tTaskAssembly_RewardItem["NoGif"][590041]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590041]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["NoGif"][590041]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590042] = {}
	-- ===任务43
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590042]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590042]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590042]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590042]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590042]["RewardItem"][1]["Id"] = 4060001 -- 万能精粹*10[4060001][属性:9][叠加:10000][金币:0], 【表格】万能精粹*10
	tTaskAssembly_RewardItem["NoGif"][590042]["RewardItem"][1]["Attr"] = "0 10 3" -- 万能精粹*10*10
	tTaskAssembly_RewardItem["NoGif"][590042]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590042]["RewardItem"][2]["Id"] = 3314205 -- 120分钟经验包[3314205][属性:9][叠加:100][金币:0], 【表格】120分钟经验
	tTaskAssembly_RewardItem["NoGif"][590042]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 120分钟经验包*1
	tTaskAssembly_RewardItem["NoGif"][590042]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590042]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["NoGif"][590042]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590043] = {}
	-- ===任务44
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590043]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590043]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590043]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590043]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590043]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*3
	tTaskAssembly_RewardItem["NoGif"][590043]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的明亮星陨石*3
	tTaskAssembly_RewardItem["NoGif"][590043]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590043]["RewardItem"][2]["Id"] = 3314205 -- 120分钟经验包[3314205][属性:9][叠加:100][金币:0], 【表格】120分钟经验
	tTaskAssembly_RewardItem["NoGif"][590043]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 120分钟经验包*1
	tTaskAssembly_RewardItem["NoGif"][590043]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590043]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["NoGif"][590043]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590044] = {}
	-- ===任务45
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590044]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590044]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590044]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590044]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590044]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2（赠）
	tTaskAssembly_RewardItem["NoGif"][590044]["RewardItem"][1]["Attr"] = "0 1 3" -- +2赤炼石（赠）*1
	tTaskAssembly_RewardItem["NoGif"][590044]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590044]["RewardItem"][2]["Id"] = 3314205 -- 120分钟经验包[3314205][属性:9][叠加:100][金币:0], 【表格】120分钟经验
	tTaskAssembly_RewardItem["NoGif"][590044]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 120分钟经验包*1
	tTaskAssembly_RewardItem["NoGif"][590044]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590044]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["NoGif"][590044]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590045] = {}
	-- ===任务46
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590045]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590045]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590045]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590045]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590045]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tTaskAssembly_RewardItem["NoGif"][590045]["RewardItem"][1]["Attr"] = "0 1" -- 龙鳞果*1
	tTaskAssembly_RewardItem["NoGif"][590045]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590045]["RewardItem"][2]["Id"] = 3314205 -- 120分钟经验包[3314205][属性:9][叠加:100][金币:0], 【表格】120分钟经验
	tTaskAssembly_RewardItem["NoGif"][590045]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 120分钟经验包*1
	tTaskAssembly_RewardItem["NoGif"][590045]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590045]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["NoGif"][590045]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590046] = {}
	-- ===任务47
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590046]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590046]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590046]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590046]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590046]["RewardItem"][1]["Id"] = 3321077 -- 200气力值礼包[3321077][属性:11][叠加:0][金币:0], 【表格】200气力值
	tTaskAssembly_RewardItem["NoGif"][590046]["RewardItem"][1]["Attr"] = "0 2 3" -- 200气力值礼包*1
	tTaskAssembly_RewardItem["NoGif"][590046]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590046]["RewardItem"][2]["Id"] = 3314205 -- 120分钟经验包[3314205][属性:9][叠加:100][金币:0], 【表格】120分钟经验
	tTaskAssembly_RewardItem["NoGif"][590046]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 120分钟经验包*1
	tTaskAssembly_RewardItem["NoGif"][590046]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590046]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["NoGif"][590046]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590047] = {}
	-- ===任务48
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590047]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590047]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590047]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590047]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590047]["RewardItem"][1]["Id"] = 4060001 -- 万能精粹*10[4060001][属性:9][叠加:10000][金币:0], 【表格】万能精粹*10
	tTaskAssembly_RewardItem["NoGif"][590047]["RewardItem"][1]["Attr"] = "0 10 3"-- 万能精粹*10*10
	tTaskAssembly_RewardItem["NoGif"][590047]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590047]["RewardItem"][2]["Id"] = 3314205 -- 120分钟经验包[3314205][属性:9][叠加:100][金币:0], 【表格】120分钟经验
	tTaskAssembly_RewardItem["NoGif"][590047]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 120分钟经验包*1
	tTaskAssembly_RewardItem["NoGif"][590047]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590047]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["NoGif"][590047]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590048] = {}
	-- ===任务49
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590048]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590048]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590048]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590048]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590048]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*3
	tTaskAssembly_RewardItem["NoGif"][590048]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的明亮星陨石*3
	tTaskAssembly_RewardItem["NoGif"][590048]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590048]["RewardItem"][2]["Id"] = 3314205 -- 120分钟经验包[3314205][属性:9][叠加:100][金币:0], 【表格】120分钟经验
	tTaskAssembly_RewardItem["NoGif"][590048]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 120分钟经验包*1
	tTaskAssembly_RewardItem["NoGif"][590048]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590048]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["NoGif"][590048]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590049] = {}
	-- ===任务50
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590049]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590049]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590049]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590049]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590049]["RewardItem"][1]["Id"] = 4060001 -- 万能精粹*10[4060001][属性:9][叠加:10000][金币:0], 【表格】万能精粹*10
	tTaskAssembly_RewardItem["NoGif"][590049]["RewardItem"][1]["Attr"] = "0 10 3"-- 万能精粹*10*10
	tTaskAssembly_RewardItem["NoGif"][590049]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590049]["RewardItem"][2]["Id"] = 3314205 -- 120分钟经验包[3314205][属性:9][叠加:100][金币:0], 【表格】120分钟经验
	tTaskAssembly_RewardItem["NoGif"][590049]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 120分钟经验包*1
	tTaskAssembly_RewardItem["NoGif"][590049]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590049]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["NoGif"][590049]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590050] = {}
	-- ===任务51
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590050]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590050]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590050]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590050]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590050]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*3
	tTaskAssembly_RewardItem["NoGif"][590050]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的明亮星陨石*3
	tTaskAssembly_RewardItem["NoGif"][590050]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590050]["RewardItem"][2]["Id"] = 3314205 -- 120分钟经验包[3314205][属性:9][叠加:100][金币:0], 【表格】120分钟经验
	tTaskAssembly_RewardItem["NoGif"][590050]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 120分钟经验包*1
	tTaskAssembly_RewardItem["NoGif"][590050]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590050]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["NoGif"][590050]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590051] = {}
	-- ===任务52
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590051]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590051]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590051]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590051]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590051]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tTaskAssembly_RewardItem["NoGif"][590051]["RewardItem"][1]["Attr"] = "0 1" -- 龙鳞果*1
	tTaskAssembly_RewardItem["NoGif"][590051]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590051]["RewardItem"][2]["Id"] = 3314205 -- 120分钟经验包[3314205][属性:9][叠加:100][金币:0], 【表格】120分钟经验
	tTaskAssembly_RewardItem["NoGif"][590051]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 120分钟经验包*1
	tTaskAssembly_RewardItem["NoGif"][590051]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590051]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["NoGif"][590051]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590052] = {}
	-- ===任务53
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590052]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590052]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590052]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590052]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590052]["RewardItem"][1]["Id"] = 3321077 -- 200气力值礼包[3321077][属性:11][叠加:0][金币:0], 【表格】200气力值
	tTaskAssembly_RewardItem["NoGif"][590052]["RewardItem"][1]["Attr"]= "0 2 3" -- 200气力值礼包*1
	tTaskAssembly_RewardItem["NoGif"][590052]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590052]["RewardItem"][2]["Id"] = 3314205 -- 120分钟经验包[3314205][属性:9][叠加:100][金币:0], 【表格】120分钟经验
	tTaskAssembly_RewardItem["NoGif"][590052]["RewardItem"][2]["Attr"] = "0 2 3" -- 2天时效(激活)的 120分钟经验包*1
	tTaskAssembly_RewardItem["NoGif"][590052]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590052]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["NoGif"][590052]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590053] = {}
	-- ===任务54
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590053]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590053]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590053]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590053]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590053]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】勾玉精华*10
	tTaskAssembly_RewardItem["NoGif"][590053]["RewardItem"][1]["Attr"] = "0 10" -- 秘术精华*10
	tTaskAssembly_RewardItem["NoGif"][590053]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590053]["RewardItem"][2]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:02][属性:9][叠加:10000][金币:0], 【表格】明亮星陨石*1
	tTaskAssembly_RewardItem["NoGif"][590053]["RewardItem"][2]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tTaskAssembly_RewardItem["NoGif"][590053]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590053]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:9][叠加:1][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["NoGif"][590053]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的1000职业经验礼包*1



	tTaskAssembly_RewardItem["NoGif"][590054] = {}
	-- ===任务55
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590054]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590054]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590054]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590054]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590054]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】勾玉精华*10
	tTaskAssembly_RewardItem["NoGif"][590054]["RewardItem"][1]["Attr"] = "0 10" -- 秘术精华*10
	tTaskAssembly_RewardItem["NoGif"][590054]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590054]["RewardItem"][2]["Id"] = 3327203 -- 血狱花*3[3327203][属性:8][叠加:10000][金币:0], 【表格】血狱花*3
	tTaskAssembly_RewardItem["NoGif"][590054]["RewardItem"][2]["Attr"]= "0 3 3" -- 血狱花*3
	tTaskAssembly_RewardItem["NoGif"][590054]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590054]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["NoGif"][590054]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590055] = {}
	-- ===
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590055]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590055]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590055]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590055]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590055]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄*2
	tTaskAssembly_RewardItem["NoGif"][590055]["RewardItem"][1]["Attr"] = "0 2" -- 神兵灵魄*2
	tTaskAssembly_RewardItem["NoGif"][590055]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590055]["RewardItem"][2]["Id"] = 3321107 -- 炼魂石[3321107][属性:9][叠加:10000][金币:0], 【表格】炼魂玉原石
	tTaskAssembly_RewardItem["NoGif"][590055]["RewardItem"][2]["Attr"] = "0 1" -- 炼魂石*1
	tTaskAssembly_RewardItem["NoGif"][590055]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590055]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:9][叠加:1][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["NoGif"][590055]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的1000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590056] = {}
	-- ===
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590056]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590056]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590056]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590056]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590056]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄*2
	tTaskAssembly_RewardItem["NoGif"][590056]["RewardItem"][1]["Attr"] = "0 2" -- 神兵灵魄*2
	tTaskAssembly_RewardItem["NoGif"][590056]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590056]["RewardItem"][2]["Id"] = 3321107 -- 炼魂石[3321107][属性:9][叠加:10000][金币:0], 【表格】炼魂玉原石
	tTaskAssembly_RewardItem["NoGif"][590056]["RewardItem"][2]["Attr"] = "0 1" -- 炼魂石*1
	tTaskAssembly_RewardItem["NoGif"][590056]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590056]["RewardItem"][3]["Id"] = 3315885 -- 1000职业经验礼包[3315885][属性:9][叠加:1][金币:0], 【表格】1000职业经验
	tTaskAssembly_RewardItem["NoGif"][590056]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的1000职业经验礼包*1



	tTaskAssembly_RewardItem["NoGif"][590057] = {}
	-- ===任务58
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590057]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590057]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590057]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590057]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590057]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*5
	tTaskAssembly_RewardItem["NoGif"][590057]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的明亮星陨石*5
	tTaskAssembly_RewardItem["NoGif"][590057]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590057]["RewardItem"][2]["Id"] = 3314206 -- 300分钟经验幸运包[3314206][属性:9][叠加:0][金币:0], 【表格】300分钟经验
	tTaskAssembly_RewardItem["NoGif"][590057]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)的300分钟经验幸运包*1
	tTaskAssembly_RewardItem["NoGif"][590057]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590057]["RewardItem"][3]["Id"] = 3315886 -- 2000职业经验礼包[3315886][属性:11][叠加:10000][金币:0], 【表格】2000职业经验
	tTaskAssembly_RewardItem["NoGif"][590057]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 2000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590058] = {}
	-- ===任务59
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590058]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590058]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590058]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590058]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590058]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3（赠）
	tTaskAssembly_RewardItem["NoGif"][590058]["RewardItem"][1]["Attr"] = "0 1 3" -- +3赤炼石*1
	tTaskAssembly_RewardItem["NoGif"][590058]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590058]["RewardItem"][2]["Id"] = 3314206 -- 300分钟经验幸运包[3314206][属性:9][叠加:0][金币:0], 【表格】300分钟经验
	tTaskAssembly_RewardItem["NoGif"][590058]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)的300分钟经验幸运包*1
	tTaskAssembly_RewardItem["NoGif"][590058]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590058]["RewardItem"][3]["Id"] = 3315886 -- 2000职业经验礼包[3315886][属性:11][叠加:10000][金币:0], 【表格】2000职业经验
	tTaskAssembly_RewardItem["NoGif"][590058]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 2000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590059] = {}
	-- ===任务60
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590059]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590059]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590059]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590059]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590059]["RewardItem"][1]["Id"] = 3321077 -- 500点气力值[3321098][属性:9][叠加:10000][金币:0], 【表格】500点气力值
	tTaskAssembly_RewardItem["NoGif"][590059]["RewardItem"][1]["Attr"] = "0 5 3" -- 500点气力值*1
	tTaskAssembly_RewardItem["NoGif"][590059]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590059]["RewardItem"][2]["Id"] = 3314206 -- 300分钟经验幸运包[3314206][属性:9][叠加:0][金币:0], 【表格】300分钟经验
	tTaskAssembly_RewardItem["NoGif"][590059]["RewardItem"][2]["Attr"] = "0 1 3" -- 2天时效(激活)的300分钟经验幸运包*1
	tTaskAssembly_RewardItem["NoGif"][590059]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590059]["RewardItem"][3]["Id"] = 3315886 -- 2000职业经验礼包[3315885][属性:11][叠加:10000][金币:0], 【表格】2000职业经验
	tTaskAssembly_RewardItem["NoGif"][590059]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590060] = {}
	-- ===
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590060]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590060]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590060]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590060]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590060]["RewardItem"][1]["Id"] = 3327202 -- 法印宝盒碎片[3327202][属性:9][叠加:10000][金币:0], 【表格】勾玉宝盒碎片*5
	tTaskAssembly_RewardItem["NoGif"][590060]["RewardItem"][1]["Attr"] = "0 5" -- 法印宝盒碎片*5
	tTaskAssembly_RewardItem["NoGif"][590060]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590060]["RewardItem"][2]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】勾玉精华*15
	tTaskAssembly_RewardItem["NoGif"][590060]["RewardItem"][2]["Attr"] = "0 15" -- 秘术精华*15（[错误]物品数量超10个）
	tTaskAssembly_RewardItem["NoGif"][590060]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590060]["RewardItem"][3]["Id"] = 3315886 -- 2000职业经验礼包[3315886][属性:9][叠加:1][金币:0], 【表格】2000职业经验
	tTaskAssembly_RewardItem["NoGif"][590060]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的2000职业经验礼包*1



	tTaskAssembly_RewardItem["NoGif"][590061] = {}
	-- ===
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590061]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590061]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590061]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590061]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590061]["RewardItem"][1]["Id"] = 3327202 -- 法印宝盒碎片[3327202][属性:9][叠加:10000][金币:0], 【表格】勾玉宝盒碎片*5
	tTaskAssembly_RewardItem["NoGif"][590061]["RewardItem"][1]["Attr"] = "0 5" -- 法印宝盒碎片*5
	tTaskAssembly_RewardItem["NoGif"][590061]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590061]["RewardItem"][2]["Id"] = 3330609 -- 轮回莲[3330609][属性:9][叠加:10000][金币:0], 【表格】轮回莲*1
	tTaskAssembly_RewardItem["NoGif"][590061]["RewardItem"][2]["Attr"]= "0 1 3" -- 轮回莲*1
	tTaskAssembly_RewardItem["NoGif"][590061]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590061]["RewardItem"][3]["Id"] = 3315886 -- 2000职业经验礼包[3315886][属性:9][叠加:1][金币:0], 【表格】2000职业经验
	tTaskAssembly_RewardItem["NoGif"][590061]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的2000职业经验礼包*1

	tTaskAssembly_RewardItem["NoGif"][590062] = {}
	-- ===
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590062]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590062]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590062]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590062]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590062]["RewardItem"][1]["Id"] = 3327202 -- 法印宝盒碎片[3327202][属性:9][叠加:10000][金币:0], 【表格】勾玉宝盒碎片*5
	tTaskAssembly_RewardItem["NoGif"][590062]["RewardItem"][1]["Attr"] = "0 5" -- 法印宝盒碎片*5
	tTaskAssembly_RewardItem["NoGif"][590062]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590062]["RewardItem"][2]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】勾玉精华*15
	tTaskAssembly_RewardItem["NoGif"][590062]["RewardItem"][2]["Attr"] = "0 15" -- 秘术精华*15（[错误]物品数量超10个）
	tTaskAssembly_RewardItem["NoGif"][590062]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590062]["RewardItem"][3]["Id"] = 3315886 -- 2000职业经验礼包[3315886][属性:9][叠加:1][金币:0], 【表格】2000职业经验
	tTaskAssembly_RewardItem["NoGif"][590062]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的2000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590063] = {}
	-- ===
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590063]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590063]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590063]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590063]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590063]["RewardItem"][1]["Id"] = 3327202 -- 法印宝盒碎片[3327202][属性:9][叠加:10000][金币:0], 【表格】勾玉宝盒碎片*5
	tTaskAssembly_RewardItem["NoGif"][590063]["RewardItem"][1]["Attr"] = "0 5" -- 法印宝盒碎片*5
	tTaskAssembly_RewardItem["NoGif"][590063]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590063]["RewardItem"][2]["Id"] = 3330609 -- 轮回莲[3330609][属性:9][叠加:10000][金币:0], 【表格】轮回莲*1
	tTaskAssembly_RewardItem["NoGif"][590063]["RewardItem"][2]["Attr"] = "0 1 3" -- 轮回莲*1
	tTaskAssembly_RewardItem["NoGif"][590063]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590063]["RewardItem"][3]["Id"] = 3315886 -- 2000职业经验礼包[3315886][属性:9][叠加:1][金币:0], 【表格】2000职业经验
	tTaskAssembly_RewardItem["NoGif"][590063]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的2000职业经验礼包*1

	tTaskAssembly_RewardItem["NoGif"][590064] = {}
	-- ===
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590064]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590064]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590064]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590064]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590064]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄x5
	tTaskAssembly_RewardItem["NoGif"][590064]["RewardItem"][1]["Attr"] = "0 5" -- 神兵灵魄*5
	tTaskAssembly_RewardItem["NoGif"][590064]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590064]["RewardItem"][2]["Id"] = 3312954 -- 炼魂玉原石[3312954][属性:9][叠加:10000][金币:0], 【表格】炼魂玉原石
	tTaskAssembly_RewardItem["NoGif"][590064]["RewardItem"][2]["Attr"] = "0 1" -- 炼魂玉原石*1
	tTaskAssembly_RewardItem["NoGif"][590064]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590064]["RewardItem"][3]["Id"] = 3315886 -- 2000职业经验礼包[3315886][属性:9][叠加:1][金币:0], 【表格】2000职业经验
	tTaskAssembly_RewardItem["NoGif"][590064]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的2000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590065] = {}
	-- ===
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590065]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590065]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590065]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590065]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590065]["RewardItem"][1]["Id"] =  3321107 -- 炼魂玉[3321107][属性:9][叠加:10000][金币:0], 【表格】炼魂玉x5
	tTaskAssembly_RewardItem["NoGif"][590065]["RewardItem"][1]["Attr"]  = "0 5" -- 炼魂玉*5
	tTaskAssembly_RewardItem["NoGif"][590065]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590065]["RewardItem"][2]["Id"] = 3312954 -- 炼魂玉原石[3312954][属性:9][叠加:10000][金币:0], 【表格】炼魂玉原石
	tTaskAssembly_RewardItem["NoGif"][590065]["RewardItem"][2]["Attr"] = "0 1" -- 炼魂玉原石*1
	tTaskAssembly_RewardItem["NoGif"][590065]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590065]["RewardItem"][3]["Id"] = 3315886 -- 2000职业经验礼包[3315886][属性:9][叠加:1][金币:0], 【表格】2000职业经验
	tTaskAssembly_RewardItem["NoGif"][590065]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的2000职业经验礼包*1

	tTaskAssembly_RewardItem["NoGif"][590066] = {}
	-- ===
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590066]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590066]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590066]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590066]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590066]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄x5
	tTaskAssembly_RewardItem["NoGif"][590066]["RewardItem"][1]["Attr"] = "0 5" -- 神兵灵魄*5
	tTaskAssembly_RewardItem["NoGif"][590066]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590066]["RewardItem"][2]["Id"] = 3312954 -- 炼魂玉原石[3312954][属性:9][叠加:10000][金币:0], 【表格】炼魂玉原石
	tTaskAssembly_RewardItem["NoGif"][590066]["RewardItem"][2]["Attr"] = "0 1" -- 炼魂玉原石*1
	tTaskAssembly_RewardItem["NoGif"][590066]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590066]["RewardItem"][3]["Id"] = 3315886 -- 2000职业经验礼包[3315886][属性:9][叠加:1][金币:0], 【表格】2000职业经验
	tTaskAssembly_RewardItem["NoGif"][590066]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的2000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590067] = {}
	-- ===
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590067]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590067]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590067]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590067]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590067]["RewardItem"][1]["Id"] = 3321107 -- 炼魂玉[3321107][属性:9][叠加:10000][金币:0], 【表格】炼魂玉x5
	tTaskAssembly_RewardItem["NoGif"][590067]["RewardItem"][1]["Attr"] = "0 5" -- 炼魂玉*5
	tTaskAssembly_RewardItem["NoGif"][590067]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590067]["RewardItem"][2]["Id"] = 3312954 -- 炼魂玉原石[3312954][属性:9][叠加:10000][金币:0], 【表格】炼魂玉原石
	tTaskAssembly_RewardItem["NoGif"][590067]["RewardItem"][2]["Attr"] = "0 1" -- 炼魂玉原石*1
	tTaskAssembly_RewardItem["NoGif"][590067]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590067]["RewardItem"][3]["Id"] = 3315886 -- 2000职业经验礼包[3315886][属性:9][叠加:1][金币:0], 【表格】2000职业经验
	tTaskAssembly_RewardItem["NoGif"][590067]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的2000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590068] = {}
	-- ===任务69
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590068]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590068]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590068]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590068]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590068]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tTaskAssembly_RewardItem["NoGif"][590068]["RewardItem"][1]["Attr"] = "0 1 3" -- +4赤炼石*1
	tTaskAssembly_RewardItem["NoGif"][590068]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590068]["RewardItem"][2]["Id"] = 3314206 -- 1200分钟经验包[3314206][属性:11][叠加:0][金币:0], 【表格】1200分钟经验
	tTaskAssembly_RewardItem["NoGif"][590068]["RewardItem"][2]["Attr"] = "0 4 3" -- 2天时效(激活)的1200分钟经验包*1
	tTaskAssembly_RewardItem["NoGif"][590068]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590068]["RewardItem"][3]["Id"] = 3315887 -- 5000职业经验礼包[3315887][属性:11][叠加:10000][金币:0], 【表格】5000职业经验
	tTaskAssembly_RewardItem["NoGif"][590068]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 5000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590069] = {}
	-- ===任务70
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590069]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590069]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590069]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590069]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590069]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tTaskAssembly_RewardItem["NoGif"][590069]["RewardItem"][1]["Attr"] = "0 1 3" -- +4赤炼石*1
	tTaskAssembly_RewardItem["NoGif"][590069]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590069]["RewardItem"][2]["Id"] = 3314206 -- 1200分钟经验包[3314206][属性:11][叠加:0][金币:0], 【表格】1200分钟经验
	tTaskAssembly_RewardItem["NoGif"][590069]["RewardItem"][2]["Attr"] = "0 4 3" -- 2天时效(激活)的1200分钟经验包*1
	tTaskAssembly_RewardItem["NoGif"][590069]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590069]["RewardItem"][3]["Id"] = 3315887 -- 5000职业经验礼包[3315887][属性:11][叠加:10000][金币:0], 【表格】5000职业经验
	tTaskAssembly_RewardItem["NoGif"][590069]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 5000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590070] = {}
	-- ===
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590070]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590070]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590070]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590070]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590070]["RewardItem"][1]["Id"] = 3327202 -- 法印宝盒碎片[3327202][属性:9][叠加:10000][金币:0], 【表格】勾玉宝盒碎片*10
	tTaskAssembly_RewardItem["NoGif"][590070]["RewardItem"][1]["Attr"] = "0 10" -- 法印宝盒碎片*10
	tTaskAssembly_RewardItem["NoGif"][590070]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590070]["RewardItem"][2]["Id"] = 3314206 -- 化气聚神丹[3314206][属性:8][叠加:10000][金币:0], 【表格】1200分钟经验
	tTaskAssembly_RewardItem["NoGif"][590070]["RewardItem"][2]["Attr"] = "0 4 3" -- 化气聚神丹（赠）*4
	tTaskAssembly_RewardItem["NoGif"][590070]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590070]["RewardItem"][3]["Id"] = 3315887 -- 5000职业经验礼包[3315887][属性:9][叠加:1][金币:0], 【表格】5000职业经验
	tTaskAssembly_RewardItem["NoGif"][590070]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的5000职业经验礼包*1


	tTaskAssembly_RewardItem["NoGif"][590071] = {}
	-- ===
	-- ===索引: tTaskAssembly_RewardItem["NoGif"][590071]
	-- ===
	tTaskAssembly_RewardItem["NoGif"][590071]["LogId"] = 12001916
	tTaskAssembly_RewardItem["NoGif"][590071]["RewardItem"] = {}
	tTaskAssembly_RewardItem["NoGif"][590071]["RewardItem"][1] = {}
	tTaskAssembly_RewardItem["NoGif"][590071]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄*10
	tTaskAssembly_RewardItem["NoGif"][590071]["RewardItem"][1]["Attr"] = "0 10" -- 神兵灵魄*10
	tTaskAssembly_RewardItem["NoGif"][590071]["RewardItem"][2] = {}
	tTaskAssembly_RewardItem["NoGif"][590071]["RewardItem"][2]["Id"] = 3314206 -- 化气聚神丹[3314206][属性:8][叠加:10000][金币:0], 【表格】1200分钟经验
	tTaskAssembly_RewardItem["NoGif"][590071]["RewardItem"][2]["Attr"] = "0 4 3" -- 化气聚神丹（赠）*4
	tTaskAssembly_RewardItem["NoGif"][590071]["RewardItem"][3] = {}
	tTaskAssembly_RewardItem["NoGif"][590071]["RewardItem"][3]["Id"] = 3315887 -- 5000职业经验礼包[3315887][属性:9][叠加:1][金币:0], 【表格】5000职业经验
	tTaskAssembly_RewardItem["NoGif"][590071]["RewardItem"][3]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的5000职业经验礼包*1



-------------------------------------------------------------------------------------------------
--离开副本
function TaskAssembly_ChgMapTrap(nTrapId,nTrapType)
	local nTaskAssembly_UserId = Get_UserId()
	local nTaskAssembly_MapId = tTaskAssembly_Cont["LevMap"]["MapId"] 
	local nTaskAssembly_Pox =   tTaskAssembly_Cont["LevMap"]["Pox"] 
	local nTaskAssembly_Poy =   tTaskAssembly_Cont["LevMap"]["Poy"] 
	if SpecialServer_ChkNoGiftServer() then
		nTaskAssembly_MapId = tTaskAssembly_Cont["LevMap"]["NoGif"]["MapId"] 
		nTaskAssembly_Pox =   tTaskAssembly_Cont["LevMap"]["NoGif"]["Pox"] 
		nTaskAssembly_Poy =   tTaskAssembly_Cont["LevMap"]["NoGif"]["Poy"] 
	end
		User_ChgMap(nTaskAssembly_MapId,nTaskAssembly_Pox,nTaskAssembly_Poy,0,nTaskAssembly_UserId)
end
--杀怪触发
function TaskAssembly_KillBoss(nMonsterId)
	local nTaskAssembly_UserId = Get_UserId()
	
	local nTaskAssembly_MapId = tTaskAssembly_Cont["LevMap"]["MapId"] 
	local nTaskAssembly_Pox =   tTaskAssembly_Cont["LevMap"]["Pox"] 
	local nTaskAssembly_Poy =   tTaskAssembly_Cont["LevMap"]["Poy"] 
	if SpecialServer_ChkNoGiftServer() then
		nTaskAssembly_MapId = tTaskAssembly_Cont["LevMap"]["NoGif"]["MapId"] 
		nTaskAssembly_Pox =   tTaskAssembly_Cont["LevMap"]["NoGif"]["Pox"] 
		nTaskAssembly_Poy =   tTaskAssembly_Cont["LevMap"]["NoGif"]["Poy"] 
	end
	for nTaskAssemblyIndex,nTaskAssembly_TaskId in pairs(tTaskAssembly_Cont["MonsterId"][nMonsterId]) do
		if  Task_ChkTaskDetail(nTaskAssembly_TaskId,nTaskAssembly_UserId)  and Task_ChkTaskDetailValue(nTaskAssembly_TaskId,"CompleteFlag","==",0,nTaskAssembly_UserId) then
			Task_SetTaskDetailData1(nTaskAssembly_TaskId,1,nTaskAssembly_UserId)
			Task_SetTaskDetailCompleteFlag(nTaskAssembly_TaskId,7,nTaskAssembly_UserId)
			local nTaskAssembly_UserMapId = Get_UserMapId(nTaskAssembly_UserId)
			local nTaskAssembly_MapDoc = Get_MapDoc(nTaskAssembly_UserMapId)
			if nTaskAssembly_MapDoc ~= nil and nTaskAssembly_MapDoc ==tTaskAssembly_Cont["MapDoc"] then
				User_ChgMap(nTaskAssembly_MapId,nTaskAssembly_Pox,nTaskAssembly_Poy,0,nTaskAssembly_UserId)
			end
			Sys_MsgBox(tTaskAssembly_Text["Finsh"],"User_OpenDialog</N>2201")
		end
	end
end

function TaskAssembly_KillMonster(nMonsterId)
	local nTaskAssembly_UserId = Get_UserId()
	
	--判断玩家身上是否有计数的杀怪任务
	for nTaskAssemblyIndex,nTaskAssembly_TaskId in pairs(tTaskAssembly_Cont["MonsterId"][nMonsterId]) do
		if Task_ChkTaskDetail(nTaskAssembly_TaskId,nTaskAssembly_UserId)  and Task_ChkTaskDetailValue(nTaskAssembly_TaskId,"CompleteFlag","==",0,nTaskAssembly_UserId) then
			--玩家身上存在杀怪计数的任务
			local nTaskAssembly_NeedNum = tTaskAssembly_Cont["MiddleTaskNeedNum"]
			local nTaskAssembly_KillNum = Get_TaskDetailData1(nTaskAssembly_TaskId,nTaskAssembly_UserId)
			Task_SetTaskDetailData1(nTaskAssembly_TaskId,nTaskAssembly_KillNum+1,nTaskAssembly_UserId)
			nTaskAssembly_KillNum = Get_TaskDetailData1(nTaskAssembly_TaskId,nTaskAssembly_UserId)
			if nTaskAssembly_KillNum >= nTaskAssembly_NeedNum then
				if  Task_ChkTaskDetail(nTaskAssembly_TaskId,nTaskAssembly_UserId)  and Task_ChkTaskDetailValue(nTaskAssembly_TaskId,"CompleteFlag","==",0,nTaskAssembly_UserId) then
					Task_SetTaskDetailCompleteFlag(nTaskAssembly_TaskId,7,nTaskAssembly_UserId)
					Sys_MsgBox(tTaskAssembly_Text["Finsh"],"User_OpenDialog</N>2201")
				end
			end
		end
	end
end
--陷阱触发
function TaskAssembly_MapTrap(nTrapId,nTrapType)
	local nTaskAssembly_UserId = Get_UserId()
	--陷阱对应任务ID
	local nTaskAssembly_TrapTaskId = tTaskAssembly_Cont["Trap"][nTrapId]
	--检查玩家身上是否有该陷阱任务ID
	if nTaskAssembly_TrapTaskId == nil or nTaskAssembly_TrapTaskId == 0 then 
		return
	end
	
	if not Task_ChkTaskDetail(nTaskAssembly_TrapTaskId,nTaskAssembly_UserId) then
		return
	end
	if not Task_ChkTaskDetailValue(nTaskAssembly_TrapTaskId,"CompleteFlag","==",0,nTaskAssembly_UserId) then
		return
	end
	if Sys_Random(50,100) then
		TaskAssembly_MapTrapMonster(nTrapId,nTrapType)
	else
	--置完成任务掩码
		Task_SetTaskDetailData1(nTaskAssembly_TrapTaskId,1,nTaskAssembly_UserId)
		Task_SetTaskDetailCompleteFlag(nTaskAssembly_TrapTaskId,7,nTaskAssembly_UserId)
		Sys_MsgBox(tTaskAssembly_Text["Finsh"],"User_OpenDialog</N>2201")
		
	end
end

--陷阱刷怪
function TaskAssembly_MapTrapMonster(nTrapId,nTrapType)
	local nTaskAssembly_UserId = Get_UserId()
	--陷阱对应任务ID
	local nTaskAssembly_TrapTaskId = tTaskAssembly_Cont["Trap"][nTrapId]
	--检查玩家身上是否有该陷阱任务ID
	if nTaskAssembly_TrapTaskId == nil or nTaskAssembly_TrapTaskId == 0 then 
		return
	end
	
	if not Task_ChkTaskDetail(nTaskAssembly_TrapTaskId,nTaskAssembly_UserId) then
		return
	end
	if not Task_ChkTaskDetailValue(nTaskAssembly_TrapTaskId,"CompleteFlag","==",0,nTaskAssembly_UserId) then
		return
	end
	
	--刷新怪物
	local nMapId = Get_UserMapId()
	local nPosX = Get_UserPositionX(nTaskAssembly_UserId)
	local nPosY = Get_UserPositionY(nTaskAssembly_UserId)
	local nMonsterId = tTaskAssembly_Cont["TrapMonster"]["MonsterId"] 
	local nGenId = tTaskAssembly_Cont["TrapMonster"]["GenId"] 
	Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)
end

function TaskAssembly_DoTaskGetReward(nTaskAssembly_UserId,nTaskAssembly_TaskId)
	--检查玩家身上是否有该任务ID
	if not Task_ChkTaskDetail(nTaskAssembly_TaskId,nTaskAssembly_UserId) then
		return
	end
	--任务完成，删除任务给奖励
	local tReward = tTaskAssembly_RewardItem["common"][nTaskAssembly_TaskId]
	if SpecialServer_ChkNoGiftServer() then
		tReward = tTaskAssembly_RewardItem["NoGif"][nTaskAssembly_TaskId]
	end
	if not RewardTemplate_CheckSpace(tReward,nTaskAssembly_UserId) then
		local nTaskAssembly_ExistDay = tTaskAssembly_Cont["Mail"]["ExistDay"]
		local sTaskAssembly_Sender = tTaskAssembly_Text["Mail"]["Sender"]
		local sTaskAssembly_Title = tTaskAssembly_Text["Mail"]["Title"]
		local sTaskAssembly_Content= tTaskAssembly_Text["Mail"]["Content"]
		local nTaskAssembly_ActionId = tTaskAssembly_Cont["Mail"]["Comon"][nTaskAssembly_TaskId]
		if SpecialServer_ChkNoGiftServer() then
			nTaskAssembly_ActionId = tTaskAssembly_Cont["Mail"]["NoGif"][nTaskAssembly_TaskId]
		end
		if Task_SetTaskDetailData1(nTaskAssembly_TaskId,0,nTaskAssembly_UserId) then
			Sys_SendMail(nTaskAssembly_UserId,0,0,nTaskAssembly_ActionId,0,nTaskAssembly_ExistDay,sTaskAssembly_Sender,sTaskAssembly_Title,sTaskAssembly_Content)
			--完成忍者任务加战令积分
			BattlePassTaskTest_NinjaTask(nTaskAssembly_UserId)
		end
	else
		if Task_SetTaskDetailData1(nTaskAssembly_TaskId,0,nTaskAssembly_UserId) then
			RewardTemplate_UseItemAndMsg(tReward,nTaskAssembly_UserId)
			--完成忍者任务加战令积分
			BattlePassTaskTest_NinjaTask(nTaskAssembly_UserId)
		end
	end
end

--NPC完成任务
function TaskAssembly_DoTaskNpc(nNpcId)
	local tTaskAssembly_TaskId = tTaskAssembly_Cont["Npc"][nNpcId]
	
	for nTaskAssemblyIndex,nTaskAssembly_TaskId in pairs(tTaskAssembly_TaskId) do 
		if Task_ChkTaskDetail(nTaskAssembly_TaskId) and Task_ChkTaskDetailValue(nTaskAssembly_TaskId,"CompleteFlag","==",0)then
			--置完成任务掩码
			Task_SetTaskDetailData1(nTaskAssembly_TaskId,1)
			Task_SetTaskDetailCompleteFlag(nTaskAssembly_TaskId,7)
			Sys_MsgBox(tTaskAssembly_Text["Finsh"],"User_OpenDialog</N>2201")
		end
	end
end
--上交物资
function TaskAssembly_SubmitConfirm(nNpcId)
	local nTaskAssembly_UserId = Get_UserId()
	local nTaskAssembly_TaskId = 0
	for i,v in pairs(tTaskAssembly_Cont["SubmitTask"]) do 
		if Task_ChkTaskDetail(v) and Task_ChkTaskDetailValue(v,"CompleteFlag","==",0)then
			nTaskAssembly_TaskId = v
		end
	end
	
	if nTaskAssembly_TaskId == nil or nTaskAssembly_TaskId == 0 then 
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end
	
	if Task_ChkTaskDetail(nTaskAssembly_TaskId) and Task_ChkTaskDetailValue(nTaskAssembly_TaskId,"CompleteFlag","==",0)then
		local sTaskAssembly_SubmitItem = tTaskAssembly_Text["Submit"][nTaskAssembly_TaskId]
		tNpcGossip[nNpcId]["Text211"]  = string.format(tTaskAssembly_Text[26228]["Text211"],sTaskAssembly_SubmitItem)
		LinkNpcGossipFunc_New(nNpcId,"2-1")
	end
end
function TaskAssembly_SubmitItem(nNpcId)
	local nTaskAssembly_UserId = Get_UserId()
	local nTaskAssembly_TaskId = 0
	for i,v in pairs(tTaskAssembly_Cont["SubmitTask"]) do 
		if Task_ChkTaskDetail(v) and Task_ChkTaskDetailValue(v,"CompleteFlag","==",0)then
			nTaskAssembly_TaskId = v
		end
	end
	
	if nTaskAssembly_TaskId == nil or nTaskAssembly_TaskId == 0  then 
		return
	end
	
	local tTaskAssembly_ItemId = tTaskAssembly_Cont["Item"][nTaskAssembly_TaskId]["Id"]
	local nTaskAssembly_Num = tTaskAssembly_Cont["Item"][nTaskAssembly_TaskId]["Num"]
	
	for i,nTaskAssembly_ItemId in pairs(tTaskAssembly_ItemId) do 
		-- if not Item_ChkMulItem(nTaskAssembly_ItemId,nTaskAssembly_ItemId,nTaskAssembly_Num) then
			-- LinkNpcGossipFunc_New(nNpcId,"3-1")
		-- else
			
		if Item_ChkMulItem(nTaskAssembly_ItemId,nTaskAssembly_ItemId,nTaskAssembly_Num) and Item_DelMulItem(nTaskAssembly_ItemId,nTaskAssembly_ItemId,nTaskAssembly_Num) then
			--置完成任务掩码
			Task_SetTaskDetailData1(nTaskAssembly_TaskId,1,nTaskAssembly_UserId)
			Task_SetTaskDetailCompleteFlag(nTaskAssembly_TaskId,7)
			Sys_MsgBox(tTaskAssembly_Text["Finsh"],"User_OpenDialog</N>2201")
			return
		end
	end
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end

--副本挑战
function TaskAssembly_EnterInstance(nNpcId)
	local nTaskAssembly_UserId = Get_UserId()
	local nTaskAssembly_TaskId = 0
	for i,v in pairs(tTaskAssembly_Cont["Instance"]) do 
		if Task_ChkTaskDetail(v) and Task_ChkTaskDetailValue(v,"CompleteFlag","==",0)then
			nTaskAssembly_TaskId = v
		end
	end
	
	if nTaskAssembly_TaskId == nil or nTaskAssembly_TaskId == 0 then 
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	-- 组队不能进入
	if Get_UserTeamNumbers() >= 2 then
		Sys_MsgBox(tTaskAssembly_Text["Msg105"]["HaveATeam"])
		return
	end
	
	local nTaskAssembly_InstanceId = tTaskAssembly_Cont["AddMonster"][nTaskAssembly_TaskId]["InstanceId"]
	--进入副本
	if User_EnterInstance(nTaskAssembly_InstanceId,0,0,nTaskAssembly_UserId) then 
		Sys_MsgBox(tTaskAssembly_Text["Msg105"]["Enter"])
		--刷新怪物
		local nTaskAssembly_MapId = Get_UserMapId()
		local nTaskAssembly_PosX = tTaskAssembly_Cont["AddMonster"]["nPosX"] 
		local nTaskAssembly_PosY = tTaskAssembly_Cont["AddMonster"]["nPosY"] 
		local nTaskAssembly_MonsterId = tTaskAssembly_Cont["AddMonster"][nTaskAssembly_TaskId]["MonsterId"] 
		local nTaskAssembly_GenId = tTaskAssembly_Cont["AddMonster"][nTaskAssembly_TaskId]["GenId"] 
		Monster_AddAndCount(nTaskAssembly_MapId,nTaskAssembly_PosX,nTaskAssembly_PosY,nTaskAssembly_GenId,nTaskAssembly_MonsterId)
	end
end
-----------------------------------------------------------------------------------
tNpcFace[6184]= 27
tNpcFace[6272]= 208
tNpcFace[6273]= 205
tNpcFace[6274]= 208
tNpcFace[6275]= 2
tNpcFace[2455]= 2908
tNpcFace[6523]= 205


tNpcGossip[26228] = tNpcGossip[26228] or DefaultNpc:new{}
tNpcGossip[26228]["OptionHidden"] = 1
tNpcGossip[26228]["DialogueText"] = tTaskAssembly_Text[26228]
tNpcGossip[26228]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[26228]["tOption1-1"] = {111,112}
tNpcGossip[26228]["ChkFunc1-1"] = function ()
	-- 等级判断
	local nTaskAssembly_Level = tTaskAssembly_Cont["Lev"] 
	local nTaskAssembly_Mete = tTaskAssembly_Cont["Mete"]
	if not User_JudgeLevelAndMetempsychosis(nTaskAssembly_Level,nTaskAssembly_Mete) then
		return true
	else
		return false
	end
end
tNpcGossip[26228]["Text1-2"] = {111,121,122,123}
tNpcGossip[26228]["tOption1-2"] = {121,122,123}
tNpcGossip[26228]["OptionFunc121"] = "User_OpenDialog</N>2201"
tNpcGossip[26228]["OptionFunc122"] = "TaskAssembly_SubmitConfirm</N>26228"
tNpcGossip[26228]["OptionFunc123"] = "TaskAssembly_EnterInstance</N>26228"


tNpcGossip[26228]["Text2-1"] = {211}
tNpcGossip[26228]["tOption2-1"] = {211,212}
tNpcGossip[26228]["OptionFunc211"] = "TaskAssembly_SubmitItem</N>26228"

tNpcGossip[26228]["Text3-1"] = {311}
tNpcGossip[26228]["tOption3-1"] = {311}

tNpcGossip[26228]["Text4-1"] = {411}
tNpcGossip[26228]["tOption4-1"] = {411}

tNpcGossip[26228]["Text5-1"] = {511}
tNpcGossip[26228]["tOption5-1"] = {511}


tNpcGossip[26202] = tNpcGossip[26202] or DefaultNpc:new{}
tNpcGossip[26202]["OptionHidden"] = 1
tNpcGossip[26202]["DialogueText"] = tTaskAssembly_Text[26202]
tNpcGossip[26202]["Text1-1"] = {111}
tNpcGossip[26202]["tOption1-1"] = {111}
tNpcGossip[26202]["ChkFunc1-1"] = function ()
	--判断身上是否有任务集任务
	local tTaskAssembly_TaskId = tTaskAssembly_Cont["Npc"][26202]
	for nTaskAssemblyIndex,nTaskAssembly_TaskId in pairs(tTaskAssembly_TaskId) do 
		if Task_ChkTaskDetail(nTaskAssembly_TaskId) and Task_ChkTaskDetailValue(nTaskAssembly_TaskId,"CompleteFlag","==",0)then
			return false
		end
	end
	return true
end

tNpcGossip[26202]["Text1-2"] = {121}
tNpcGossip[26202]["tOption1-2"] = {121}
tNpcGossip[26202]["OptionFunc121"] = "TaskAssembly_DoTaskNpc</N>26202"

tNpcGossip[26203] = tNpcGossip[26203] or DefaultNpc:new{}
tNpcGossip[26203]["OptionHidden"] = 1
tNpcGossip[26203]["DialogueText"] = tTaskAssembly_Text[26203]
tNpcGossip[26203]["Text1-1"] = {111}
tNpcGossip[26203]["tOption1-1"] = {111}
tNpcGossip[26203]["ChkFunc1-1"] = function ()
	--判断身上是否有任务集任务
	local tTaskAssembly_TaskId = tTaskAssembly_Cont["Npc"][26203]
	for nTaskAssemblyIndex,nTaskAssembly_TaskId in pairs(tTaskAssembly_TaskId) do 
		if Task_ChkTaskDetail(nTaskAssembly_TaskId) and Task_ChkTaskDetailValue(nTaskAssembly_TaskId,"CompleteFlag","==",0)then
			return false
		end
	end
	return true
end

tNpcGossip[26203]["Text1-2"] = {121}
tNpcGossip[26203]["tOption1-2"] = {121}
tNpcGossip[26203]["OptionFunc121"] = "TaskAssembly_DoTaskNpc</N>26203"


tNpcGossip[26204] = tNpcGossip[26204] or DefaultNpc:new{}
tNpcGossip[26204]["OptionHidden"] = 1
tNpcGossip[26204]["DialogueText"] = tTaskAssembly_Text[26204]
tNpcGossip[26204]["Text1-1"] = {111}
tNpcGossip[26204]["tOption1-1"] = {111}
tNpcGossip[26204]["ChkFunc1-1"] = function ()
	--判断身上是否有任务集任务
	local tTaskAssembly_TaskId = tTaskAssembly_Cont["Npc"][26204]
	for nTaskAssemblyIndex,nTaskAssembly_TaskId in pairs(tTaskAssembly_TaskId) do 
		if Task_ChkTaskDetail(nTaskAssembly_TaskId) and Task_ChkTaskDetailValue(nTaskAssembly_TaskId,"CompleteFlag","==",0)then
			return false
		end
	end
	return true
end

tNpcGossip[26204]["Text1-2"] = {121}
tNpcGossip[26204]["tOption1-2"] = {121}
tNpcGossip[26204]["OptionFunc121"] = "TaskAssembly_DoTaskNpc</N>26204"

tNpcGossip[26227] = tNpcGossip[26227] or DefaultNpc:new{}
tNpcGossip[26227]["OptionHidden"] = 1
tNpcGossip[26227]["DialogueText"] = tTaskAssembly_Text[26227]
tNpcGossip[26227]["Text1-1"] = {111}
tNpcGossip[26227]["tOption1-1"] = {111}
tNpcGossip[26227]["ChkFunc1-1"] = function ()
	--判断身上是否有任务集任务
	local tTaskAssembly_TaskId = tTaskAssembly_Cont["Npc"][26227]
	for nTaskAssemblyIndex,nTaskAssembly_TaskId in pairs(tTaskAssembly_TaskId) do 
		if Task_ChkTaskDetail(nTaskAssembly_TaskId) and Task_ChkTaskDetailValue(nTaskAssembly_TaskId,"CompleteFlag","==",0)then
			return false
		end
	end
	return true
end

tNpcGossip[26227]["Text1-2"] = {121}
tNpcGossip[26227]["tOption1-2"] = {121}
tNpcGossip[26227]["OptionFunc121"] = "TaskAssembly_DoTaskNpc</N>26227"


tNpcGossip[26229] = tNpcGossip[26229] or DefaultNpc:new{}
tNpcGossip[26229]["OptionHidden"] = 1
tNpcGossip[26229]["DialogueText"] = tTaskAssembly_Text[26229]
tNpcGossip[26229]["Text1-1"] = {111}
tNpcGossip[26229]["tOption1-1"] = {111}
tNpcGossip[26229]["ChkFunc1-1"] = function ()
	--判断身上是否有任务集任务
	local tTaskAssembly_TaskId = tTaskAssembly_Cont["Npc"][26229]
	for nTaskAssemblyIndex,nTaskAssembly_TaskId in pairs(tTaskAssembly_TaskId) do 
		if Task_ChkTaskDetail(nTaskAssembly_TaskId) and Task_ChkTaskDetailValue(nTaskAssembly_TaskId,"CompleteFlag","==",0)then
			return false
		end
	end
	return true
end

tNpcGossip[26229]["Text1-2"] = {121}
tNpcGossip[26229]["tOption1-2"] = {121}
tNpcGossip[26229]["OptionFunc121"] = "TaskAssembly_DoTaskNpc</N>26229"


tNpcGossip[26230] = tNpcGossip[26230] or DefaultNpc:new{}
tNpcGossip[26230]["OptionHidden"] = 1
tNpcGossip[26230]["DialogueText"] = tTaskAssembly_Text[26230]
tNpcGossip[26230]["Text1-1"] = {111}
tNpcGossip[26230]["tOption1-1"] = {111}
tNpcGossip[26230]["ChkFunc1-1"] = function ()
	--判断身上是否有任务集任务
	local tTaskAssembly_TaskId = tTaskAssembly_Cont["Npc"][26230]
	for nTaskAssemblyIndex,nTaskAssembly_TaskId in pairs(tTaskAssembly_TaskId) do 
		if Task_ChkTaskDetail(nTaskAssembly_TaskId) and Task_ChkTaskDetailValue(nTaskAssembly_TaskId,"CompleteFlag","==",0)then
			return false
		end
	end
	return true
end

tNpcGossip[26230]["Text1-2"] = {121}
tNpcGossip[26230]["tOption1-2"] = {121}
tNpcGossip[26230]["OptionFunc121"] = "TaskAssembly_DoTaskNpc</N>26230"

-----------------------------------------------------------------------------------
tItem[3315884] = tItem[3315884] or {}
tItem[3315884]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tTaskAssembly_RewardItem[nItemId])
end
tItem[3315885] = tItem[3315884]
tItem[3315886] = tItem[3315884]
tItem[3315887] = tItem[3315884]
-----------------------------------------------------------------------------------
--杀怪触发
local tTaskAssembly_KillMonster = {}
tTaskAssembly_KillMonster[1] = {}
tTaskAssembly_KillMonster[1]["Function"]= TaskAssembly_KillBoss
tTaskAssembly_KillMonster[1]["MonsterId"] = {1304,1305,1306,1307,1308,1309,1310,1311,1312,1313,1314}
tTaskAssembly_KillMonster[2] = {}
tTaskAssembly_KillMonster[2]["Function"]= TaskAssembly_KillMonster
tTaskAssembly_KillMonster[2]["MonsterId"] = {1302,1303}

table.insert(tMonsterDrop_AreaLoad,tTaskAssembly_KillMonster[1])
table.insert(tMonsterDrop_AreaLoad,tTaskAssembly_KillMonster[2])

--陷阱触发
tTrap[222] = tTrap[222] or {}
tTrap[222]["Function"] = function(nTrapId,nTrapType)
	TaskAssembly_MapTrap(nTrapId,nTrapType)
end
--陷阱触发
tTrap[223] = tTrap[223] or {}
tTrap[223]["Function"] = function(nTrapId,nTrapType)
	local nTaskAssembly_UserId = Get_UserId()
	Sys_MsgBox(tTaskAssembly_Text["Msg105"]["ChgMap"],"TaskAssembly_ChgMapTrap",nil,nTaskAssembly_UserId)
end
--完成任务集会所任务调动
table.insert(tGetTaskPrize["tFunction"],TaskAssembly_DoTaskGetReward)
