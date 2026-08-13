------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]双11活动复用新增部分
--Purpose:	双11活动复用
--Creator: 	吴文鑫
--Created:	2016/10/27
------------------------------------------------------------------------------------
--40322
-- 命名前缀
--DoubleElevenActivity_

--12000494
local tDoubleElevenActivity_Cont = {}
	tDoubleElevenActivity_Cont["ActivityTime"] = "2017-07-13 00:00 2017-07-26 23:59"
	tDoubleElevenActivity_Cont["CardActivityTime"] = "2017-07-13 00:00 2017-07-26 23:59"
	tDoubleElevenActivity_Cont["space"] = 1

--光效
local tDoubleElevenActivity_Effect = {}
	tDoubleElevenActivity_Effect["Award"] = "WarFlagEscortBegin"
	
--奖励表配置
local tDoubleElevenActivity_Award = {}
-- 6级建材包*02
	tDoubleElevenActivity_Award[3301206] = {}
	tDoubleElevenActivity_Award[3301206]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301206]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301206]["RewardItem"][1]["Id"] = 3008100
	tDoubleElevenActivity_Award[3301206]["RewardItem"][1]["Attr"] = "0 2"
	tDoubleElevenActivity_Award[3301206]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301206]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301206]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301206]["DeleteItem"][1]["Id"]=3301206
	tDoubleElevenActivity_Award[3301206]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301206]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"

-- 6级建材包*04
	tDoubleElevenActivity_Award[3301207] = {}
	tDoubleElevenActivity_Award[3301207]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301207]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301207]["RewardItem"][1]["Id"] = 3008100
	tDoubleElevenActivity_Award[3301207]["RewardItem"][1]["Attr"] = "0 4"
	tDoubleElevenActivity_Award[3301207]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301207]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301207]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301207]["DeleteItem"][1]["Id"]=3301207
	tDoubleElevenActivity_Award[3301207]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301207]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
-- 6级建材包*06
	tDoubleElevenActivity_Award[3301208] = {}
	tDoubleElevenActivity_Award[3301208]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301208]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301208]["RewardItem"][1]["Id"] = 3008100
	tDoubleElevenActivity_Award[3301208]["RewardItem"][1]["Attr"] = "0 6"
	tDoubleElevenActivity_Award[3301208]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301208]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301208]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301208]["DeleteItem"][1]["Id"]=3301208
	tDoubleElevenActivity_Award[3301208]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301208]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"

-- 6级建材包*10
	tDoubleElevenActivity_Award[3301209] = {}
	tDoubleElevenActivity_Award[3301209]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301209]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301209]["RewardItem"][1]["Id"] = 3008100
	tDoubleElevenActivity_Award[3301209]["RewardItem"][1]["Attr"] = "0 10"
	tDoubleElevenActivity_Award[3301209]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301209]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301209]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301209]["DeleteItem"][1]["Id"]=3301209
	tDoubleElevenActivity_Award[3301209]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301209]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
-- 6级建材包*30
	tDoubleElevenActivity_Award[3301210] = {}
	tDoubleElevenActivity_Award[3301210]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301210]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301210]["RewardItem"][1]["Id"] = 3008100
	tDoubleElevenActivity_Award[3301210]["RewardItem"][1]["Attr"] = "0 30"
	tDoubleElevenActivity_Award[3301210]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301210]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301210]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301210]["DeleteItem"][1]["Id"]=3301210
	tDoubleElevenActivity_Award[3301210]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301210]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
	
-- 3009000	微光星陨石
-- 3009001	明亮星陨石
-- 3009002	晶莹星陨石
-- 3009003	璀璨星陨石
	
-- 微光星陨石*3
	tDoubleElevenActivity_Award[3301228] = {}
	tDoubleElevenActivity_Award[3301228]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301228]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301228]["RewardItem"][1]["Id"] = 3009000
	tDoubleElevenActivity_Award[3301228]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tDoubleElevenActivity_Award[3301228]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301228]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301228]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301228]["DeleteItem"][1]["Id"]=3301228
	tDoubleElevenActivity_Award[3301228]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301228]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
-- 微光星陨石*5
	tDoubleElevenActivity_Award[3301229] = {}
	tDoubleElevenActivity_Award[3301229]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301229]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301229]["RewardItem"][1]["Id"] = 3009000
	tDoubleElevenActivity_Award[3301229]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tDoubleElevenActivity_Award[3301229]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301229]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301229]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301229]["DeleteItem"][1]["Id"]=3301229
	tDoubleElevenActivity_Award[3301229]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301229]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"

-- 明亮星陨石*1
	tDoubleElevenActivity_Award[3301230] = {}
	tDoubleElevenActivity_Award[3301230]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301230]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301230]["RewardItem"][1]["Id"] = 3009001
	tDoubleElevenActivity_Award[3301230]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tDoubleElevenActivity_Award[3301230]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301230]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301230]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301230]["DeleteItem"][1]["Id"]=3301230
	tDoubleElevenActivity_Award[3301230]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301230]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"

-- 明亮星陨石*2
	tDoubleElevenActivity_Award[3301231] = {}
	tDoubleElevenActivity_Award[3301231]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301231]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301231]["RewardItem"][1]["Id"] = 3009001
	tDoubleElevenActivity_Award[3301231]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tDoubleElevenActivity_Award[3301231]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301231]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301231]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301231]["DeleteItem"][1]["Id"]=3301231
	tDoubleElevenActivity_Award[3301231]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301231]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
-- 明亮星陨石*3
	tDoubleElevenActivity_Award[3301232] = {}
	tDoubleElevenActivity_Award[3301232]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301232]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301232]["RewardItem"][1]["Id"] = 3009001
	tDoubleElevenActivity_Award[3301232]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tDoubleElevenActivity_Award[3301232]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301232]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301232]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301232]["DeleteItem"][1]["Id"]=3301232
	tDoubleElevenActivity_Award[3301232]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301232]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
-- 明亮星陨石*5
	tDoubleElevenActivity_Award[3301233] = {}
	tDoubleElevenActivity_Award[3301233]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301233]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301233]["RewardItem"][1]["Id"] = 3009001
	tDoubleElevenActivity_Award[3301233]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tDoubleElevenActivity_Award[3301233]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301233]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301233]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301233]["DeleteItem"][1]["Id"]=3301233
	tDoubleElevenActivity_Award[3301233]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301233]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"

-- 晶莹星陨石*1
	tDoubleElevenActivity_Award[3301234] = {}
	tDoubleElevenActivity_Award[3301234]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301234]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301234]["RewardItem"][1]["Id"] = 3009002
	tDoubleElevenActivity_Award[3301234]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tDoubleElevenActivity_Award[3301234]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301234]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301234]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301234]["DeleteItem"][1]["Id"]=3301234
	tDoubleElevenActivity_Award[3301234]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301234]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
-- 晶莹星陨石*2
	tDoubleElevenActivity_Award[3301235] = {}
	tDoubleElevenActivity_Award[3301235]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301235]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301235]["RewardItem"][1]["Id"] = 3009002
	tDoubleElevenActivity_Award[3301235]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tDoubleElevenActivity_Award[3301235]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301235]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301235]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301235]["DeleteItem"][1]["Id"]=3301235
	tDoubleElevenActivity_Award[3301235]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301235]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
-- 晶莹星陨石*3
	tDoubleElevenActivity_Award[3301236] = {}
	tDoubleElevenActivity_Award[3301236]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301236]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301236]["RewardItem"][1]["Id"] = 3009002
	tDoubleElevenActivity_Award[3301236]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tDoubleElevenActivity_Award[3301236]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301236]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301236]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301236]["DeleteItem"][1]["Id"]=3301236
	tDoubleElevenActivity_Award[3301236]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301236]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
	
-- 晶莹星陨石*5
	tDoubleElevenActivity_Award[3301237] = {}
	tDoubleElevenActivity_Award[3301237]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301237]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301237]["RewardItem"][1]["Id"] = 3009002
	tDoubleElevenActivity_Award[3301237]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tDoubleElevenActivity_Award[3301237]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301237]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301237]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301237]["DeleteItem"][1]["Id"]=3301237
	tDoubleElevenActivity_Award[3301237]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301237]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
	
	
-- 璀璨星陨石*1
	tDoubleElevenActivity_Award[3301238] = {}
	tDoubleElevenActivity_Award[3301238]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301238]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301238]["RewardItem"][1]["Id"] = 3009003
	tDoubleElevenActivity_Award[3301238]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tDoubleElevenActivity_Award[3301238]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301238]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301238]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301238]["DeleteItem"][1]["Id"]=3301238
	tDoubleElevenActivity_Award[3301238]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301238]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"

	
	
-- 0020赠点
	tDoubleElevenActivity_Award[3301239] = {}
	tDoubleElevenActivity_Award[3301239]["RewardEMoneyMono"] = {}
	tDoubleElevenActivity_Award[3301239]["RewardEMoneyMono"]["Value"] = 20
	tDoubleElevenActivity_Award[3301239]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301239]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301239]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301239]["DeleteItem"][1]["Id"]=3301239
	tDoubleElevenActivity_Award[3301239]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301239]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
	
	
	
-- 0030赠点
	tDoubleElevenActivity_Award[3301240] = {}
	tDoubleElevenActivity_Award[3301240]["RewardEMoneyMono"] = {}
	tDoubleElevenActivity_Award[3301240]["RewardEMoneyMono"]["Value"] = 30
	tDoubleElevenActivity_Award[3301240]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301240]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301240]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301240]["DeleteItem"][1]["Id"]=3301240
	tDoubleElevenActivity_Award[3301240]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301240]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
-- 0050赠点
	tDoubleElevenActivity_Award[3301241] = {}
	tDoubleElevenActivity_Award[3301241]["RewardEMoneyMono"] = {}
	tDoubleElevenActivity_Award[3301241]["RewardEMoneyMono"]["Value"] = 50
	tDoubleElevenActivity_Award[3301241]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301241]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301241]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301241]["DeleteItem"][1]["Id"]=3301241
	tDoubleElevenActivity_Award[3301241]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301241]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
-- 0080赠点
	tDoubleElevenActivity_Award[3301242] = {}
	tDoubleElevenActivity_Award[3301242]["RewardEMoneyMono"] = {}
	tDoubleElevenActivity_Award[3301242]["RewardEMoneyMono"]["Value"] = 80
	tDoubleElevenActivity_Award[3301242]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301242]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301242]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301242]["DeleteItem"][1]["Id"]=3301242
	tDoubleElevenActivity_Award[3301242]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301242]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
-- 0100赠点
	tDoubleElevenActivity_Award[3301243] = {}
	tDoubleElevenActivity_Award[3301243]["RewardEMoneyMono"] = {}
	tDoubleElevenActivity_Award[3301243]["RewardEMoneyMono"]["Value"] = 100
	tDoubleElevenActivity_Award[3301243]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301243]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301243]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301243]["DeleteItem"][1]["Id"]=3301243
	tDoubleElevenActivity_Award[3301243]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301243]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
-- 0200赠点
	tDoubleElevenActivity_Award[3301244] = {}
	tDoubleElevenActivity_Award[3301244]["RewardEMoneyMono"] = {}
	tDoubleElevenActivity_Award[3301244]["RewardEMoneyMono"]["Value"] = 200
	tDoubleElevenActivity_Award[3301244]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301244]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301244]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301244]["DeleteItem"][1]["Id"]=3301244
	tDoubleElevenActivity_Award[3301244]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301244]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
	
-- 0300赠点
	tDoubleElevenActivity_Award[3301245] = {}
	tDoubleElevenActivity_Award[3301245]["RewardEMoneyMono"] = {}
	tDoubleElevenActivity_Award[3301245]["RewardEMoneyMono"]["Value"] = 300
	tDoubleElevenActivity_Award[3301245]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301245]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301245]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301245]["DeleteItem"][1]["Id"]=3301245
	tDoubleElevenActivity_Award[3301245]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301245]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
	
-- 0500赠点
	tDoubleElevenActivity_Award[3301246] = {}
	tDoubleElevenActivity_Award[3301246]["RewardEMoneyMono"] = {}
	tDoubleElevenActivity_Award[3301246]["RewardEMoneyMono"]["Value"] = 500
	tDoubleElevenActivity_Award[3301246]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301246]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301246]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301246]["DeleteItem"][1]["Id"]=3301246
	tDoubleElevenActivity_Award[3301246]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301246]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
	
-- 0800赠点
	tDoubleElevenActivity_Award[3301247] = {}
	tDoubleElevenActivity_Award[3301247]["RewardEMoneyMono"] = {}
	tDoubleElevenActivity_Award[3301247]["RewardEMoneyMono"]["Value"] = 800
	tDoubleElevenActivity_Award[3301247]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301247]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301247]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301247]["DeleteItem"][1]["Id"]=3301247
	tDoubleElevenActivity_Award[3301247]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301247]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
	
-- 1000赠点
	tDoubleElevenActivity_Award[3301248] = {}
	tDoubleElevenActivity_Award[3301248]["RewardEMoneyMono"] = {}
	tDoubleElevenActivity_Award[3301248]["RewardEMoneyMono"]["Value"] = 1000
	tDoubleElevenActivity_Award[3301248]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301248]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301248]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301248]["DeleteItem"][1]["Id"]=3301248
	tDoubleElevenActivity_Award[3301248]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301248]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
-- 1500赠点
	tDoubleElevenActivity_Award[3301249] = {}
	tDoubleElevenActivity_Award[3301249]["RewardEMoneyMono"] = {}
	tDoubleElevenActivity_Award[3301249]["RewardEMoneyMono"]["Value"] = 1500
	tDoubleElevenActivity_Award[3301249]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301249]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301249]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301249]["DeleteItem"][1]["Id"]=3301249
	tDoubleElevenActivity_Award[3301249]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301249]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
-- 730001	赤炼石
-- 730002	赤炼石
-- 730003	赤炼石
-- 730004	赤炼石
-- 730005	赤炼石
-- 730006	赤炼石

--天石升级包表
	tDoubleElevenActivity_Award[3301223] = {}
	tDoubleElevenActivity_Award[3301223][1] = {}
	tDoubleElevenActivity_Award[3301223][1]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301223][1]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301223][1]["RewardItem"][1]["Id"] = 730001
	tDoubleElevenActivity_Award[3301223][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tDoubleElevenActivity_Award[3301223][1]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301223][1]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301223][1]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301223][1]["DeleteItem"][1]["Id"]=3301223
	tDoubleElevenActivity_Award[3301223][1]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301223][1]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
	
	
	tDoubleElevenActivity_Award[3301223][2] = {}
	tDoubleElevenActivity_Award[3301223][2]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301223][2]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301223][2]["RewardItem"][1]["Id"] = 730002
	tDoubleElevenActivity_Award[3301223][2]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleElevenActivity_Award[3301223][2]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301223][2]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301223][2]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301223][2]["DeleteItem"][1]["Id"]=3301223
	tDoubleElevenActivity_Award[3301223][2]["EmoneyPrice"] = 15
	tDoubleElevenActivity_Award[3301223][2]["EmoneyBuyLog"] = "250	4001	%d	%d	1	"
	tDoubleElevenActivity_Award[3301223][2]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301223][2]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
	
	
	tDoubleElevenActivity_Award[3301224] = {}
	tDoubleElevenActivity_Award[3301224][1] = {}
	tDoubleElevenActivity_Award[3301224][1]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301224][1]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301224][1]["RewardItem"][1]["Id"] = 730002
	tDoubleElevenActivity_Award[3301224][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tDoubleElevenActivity_Award[3301224][1]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301224][1]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301224][1]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301224][1]["DeleteItem"][1]["Id"]=3301224
	tDoubleElevenActivity_Award[3301224][1]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301224][1]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
	tDoubleElevenActivity_Award[3301224][2] = {}
	tDoubleElevenActivity_Award[3301224][2]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301224][2]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301224][2]["RewardItem"][1]["Id"] = 730003
	tDoubleElevenActivity_Award[3301224][2]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleElevenActivity_Award[3301224][2]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301224][2]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301224][2]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301224][2]["DeleteItem"][1]["Id"]=3301224
	tDoubleElevenActivity_Award[3301224][2]["EmoneyPrice"] = 50
	tDoubleElevenActivity_Award[3301224][2]["EmoneyBuyLog"] = "250	4002	%d	%d	1	"
	tDoubleElevenActivity_Award[3301224][2]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301224][2]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
	
	
	tDoubleElevenActivity_Award[3301225] = {}
	tDoubleElevenActivity_Award[3301225][1] = {}
	tDoubleElevenActivity_Award[3301225][1]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301225][1]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301225][1]["RewardItem"][1]["Id"] = 730003
	tDoubleElevenActivity_Award[3301225][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tDoubleElevenActivity_Award[3301225][1]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301225][1]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301225][1]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301225][1]["DeleteItem"][1]["Id"]=3301225
	tDoubleElevenActivity_Award[3301225][1]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301225][1]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
	
	
	tDoubleElevenActivity_Award[3301225][2] = {}
	tDoubleElevenActivity_Award[3301225][2]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301225][2]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301225][2]["RewardItem"][1]["Id"] = 730004
	tDoubleElevenActivity_Award[3301225][2]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleElevenActivity_Award[3301225][2]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301225][2]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301225][2]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301225][2]["DeleteItem"][1]["Id"]=3301225
	tDoubleElevenActivity_Award[3301225][2]["EmoneyPrice"] = 150
	tDoubleElevenActivity_Award[3301225][2]["EmoneyBuyLog"] = "250	4016	%d	%d	1	"
	tDoubleElevenActivity_Award[3301225][2]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301225][2]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
	
	
	tDoubleElevenActivity_Award[3301226] = {}
	tDoubleElevenActivity_Award[3301226][1] = {}
	tDoubleElevenActivity_Award[3301226][1]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301226][1]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301226][1]["RewardItem"][1]["Id"] = 730004
	tDoubleElevenActivity_Award[3301226][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tDoubleElevenActivity_Award[3301226][1]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301226][1]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301226][1]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301226][1]["DeleteItem"][1]["Id"]=3301226
	tDoubleElevenActivity_Award[3301226][1]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301226][1]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
	
	
	
	tDoubleElevenActivity_Award[3301226][2] = {}
	tDoubleElevenActivity_Award[3301226][2]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301226][2]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301226][2]["RewardItem"][1]["Id"] = 730005
	tDoubleElevenActivity_Award[3301226][2]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleElevenActivity_Award[3301226][2]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301226][2]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301226][2]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301226][2]["DeleteItem"][1]["Id"]=3301226
	tDoubleElevenActivity_Award[3301226][2]["EmoneyPrice"] = 450
	tDoubleElevenActivity_Award[3301226][2]["EmoneyBuyLog"] = "250	4017	%d	%d	1	"
	tDoubleElevenActivity_Award[3301226][2]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301226][2]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
	
	
	tDoubleElevenActivity_Award[3301227] = {}
	tDoubleElevenActivity_Award[3301227][1] = {}
	tDoubleElevenActivity_Award[3301227][1]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301227][1]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301227][1]["RewardItem"][1]["Id"] = 730005
	tDoubleElevenActivity_Award[3301227][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tDoubleElevenActivity_Award[3301227][1]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301227][1]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301227][1]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301227][1]["DeleteItem"][1]["Id"]=3301227
	tDoubleElevenActivity_Award[3301227][1]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301227][1]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
	
	
	tDoubleElevenActivity_Award[3301227][2] = {}
	tDoubleElevenActivity_Award[3301227][2]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301227][2]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301227][2]["RewardItem"][1]["Id"] = 730006
	tDoubleElevenActivity_Award[3301227][2]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleElevenActivity_Award[3301227][2]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301227][2]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301227][2]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301227][2]["DeleteItem"][1]["Id"]=3301227
	tDoubleElevenActivity_Award[3301227][2]["EmoneyPrice"] = 1350
	tDoubleElevenActivity_Award[3301227][2]["EmoneyBuyLog"] = "250	4018	%d	%d	1	"
	tDoubleElevenActivity_Award[3301227][2]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301227][2]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
	tDoubleElevenActivity_Award[3306907] = {}
	tDoubleElevenActivity_Award[3306907][1] = {}
	tDoubleElevenActivity_Award[3306907][1]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3306907][1]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3306907][1]["RewardItem"][1]["Id"] = 730006
	tDoubleElevenActivity_Award[3306907][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tDoubleElevenActivity_Award[3306907][1]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3306907][1]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3306907][1]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3306907][1]["DeleteItem"][1]["Id"]=3306907
	tDoubleElevenActivity_Award[3306907][1]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3306907][1]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
	
	
	tDoubleElevenActivity_Award[3306907][2] = {}
	tDoubleElevenActivity_Award[3306907][2]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3306907][2]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3306907][2]["RewardItem"][1]["Id"] = 730007
	tDoubleElevenActivity_Award[3306907][2]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleElevenActivity_Award[3306907][2]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3306907][2]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3306907][2]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3306907][2]["DeleteItem"][1]["Id"]=3306907
	tDoubleElevenActivity_Award[3306907][2]["EmoneyPrice"] = 3250
	tDoubleElevenActivity_Award[3306907][2]["EmoneyBuyLog"] = "250	4018	%d	%d	1	"
	tDoubleElevenActivity_Award[3306907][2]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3306907][2]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
	
	
	
	tDoubleElevenActivity_Award[3301211] = {}
	tDoubleElevenActivity_Award[3301211]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301211]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301211]["RewardItem"][1]["Id"] = 3301216
	tDoubleElevenActivity_Award[3301211]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleElevenActivity_Award[3301211]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301211]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301211]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301211]["DeleteItem"][1]["Id"]=3301211
	tDoubleElevenActivity_Award[3301211]["DeleteItem"][1]["ItemNum"]=10
	tDoubleElevenActivity_Award[3301211]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301211]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
	
	
	tDoubleElevenActivity_Award[3301212] = {}
	tDoubleElevenActivity_Award[3301212]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301212]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301212]["RewardItem"][1]["Id"] = 3301217
	tDoubleElevenActivity_Award[3301212]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleElevenActivity_Award[3301212]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301212]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301212]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301212]["DeleteItem"][1]["Id"]=3301212
	tDoubleElevenActivity_Award[3301212]["DeleteItem"][1]["ItemNum"]=15
	tDoubleElevenActivity_Award[3301212]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301212]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
	tDoubleElevenActivity_Award[3301213] = {}
	tDoubleElevenActivity_Award[3301213]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301213]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301213]["RewardItem"][1]["Id"] = 3301218
	tDoubleElevenActivity_Award[3301213]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleElevenActivity_Award[3301213]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301213]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301213]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301213]["DeleteItem"][1]["Id"]=3301213
	tDoubleElevenActivity_Award[3301213]["DeleteItem"][1]["ItemNum"]=15
	tDoubleElevenActivity_Award[3301213]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301213]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
	
	
	tDoubleElevenActivity_Award[3301214] = {}
	tDoubleElevenActivity_Award[3301214]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301214]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301214]["RewardItem"][1]["Id"] = 3301219
	tDoubleElevenActivity_Award[3301214]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleElevenActivity_Award[3301214]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301214]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301214]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301214]["DeleteItem"][1]["Id"]=3301214
	tDoubleElevenActivity_Award[3301214]["DeleteItem"][1]["ItemNum"]=20
	tDoubleElevenActivity_Award[3301214]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301214]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
	
	
	tDoubleElevenActivity_Award[3301215] = {}
	tDoubleElevenActivity_Award[3301215]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301215]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301215]["RewardItem"][1]["Id"] = 3003830
	tDoubleElevenActivity_Award[3301215]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleElevenActivity_Award[3301215]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301215]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301215]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301215]["DeleteItem"][1]["Id"]=3301215
	tDoubleElevenActivity_Award[3301215]["DeleteItem"][1]["ItemNum"]=100
	tDoubleElevenActivity_Award[3301215]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301215]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"

----清明礼包
	tDoubleElevenActivity_Award[3302275] = {}
	tDoubleElevenActivity_Award[3302275][1] = {}
	tDoubleElevenActivity_Award[3302275][1]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3302275][1]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3302275][1]["RewardItem"][1]["Id"] = 730001
	tDoubleElevenActivity_Award[3302275][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tDoubleElevenActivity_Award[3302275][1]["LogId"] = 12000647
	tDoubleElevenActivity_Award[3302275][1]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3302275][1]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3302275][1]["DeleteItem"][1]["Id"]=3302275
	tDoubleElevenActivity_Award[3302275][1]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3302275][1]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	tDoubleElevenActivity_Award[3302275][2] = {}
	tDoubleElevenActivity_Award[3302275][2]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3302275][2]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3302275][2]["RewardItem"][1]["Id"] = 730002
	tDoubleElevenActivity_Award[3302275][2]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleElevenActivity_Award[3302275][2]["LogId"] = 12000647
	tDoubleElevenActivity_Award[3302275][2]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3302275][2]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3302275][2]["DeleteItem"][1]["Id"]=3302275
	tDoubleElevenActivity_Award[3302275][2]["EmoneyPrice"] = 10
	tDoubleElevenActivity_Award[3302275][2]["EmoneyBuyLog"] = "250	4051	%d	%d	1	"
	tDoubleElevenActivity_Award[3302275][2]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3302275][2]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	tDoubleElevenActivity_Award[3302276] = {}
	tDoubleElevenActivity_Award[3302276][1] = {}
	tDoubleElevenActivity_Award[3302276][1]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3302276][1]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3302276][1]["RewardItem"][1]["Id"] = 730002
	tDoubleElevenActivity_Award[3302276][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tDoubleElevenActivity_Award[3302276][1]["LogId"] = 12000647
	tDoubleElevenActivity_Award[3302276][1]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3302276][1]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3302276][1]["DeleteItem"][1]["Id"]=3302276
	tDoubleElevenActivity_Award[3302276][1]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3302276][1]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	tDoubleElevenActivity_Award[3302276][2] = {}
	tDoubleElevenActivity_Award[3302276][2]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3302276][2]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3302276][2]["RewardItem"][1]["Id"] = 730003
	tDoubleElevenActivity_Award[3302276][2]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleElevenActivity_Award[3302276][2]["LogId"] = 12000647
	tDoubleElevenActivity_Award[3302276][2]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3302276][2]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3302276][2]["DeleteItem"][1]["Id"]=3302276
	tDoubleElevenActivity_Award[3302276][2]["EmoneyPrice"] = 30
	tDoubleElevenActivity_Award[3302276][2]["EmoneyBuyLog"] = "250	4052	%d	%d	1	"
	tDoubleElevenActivity_Award[3302276][2]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3302276][2]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
-- 勇士:
-- 纵横四海 青日耀天 1115
-- 117,85
-- 道士
-- 地狱火 星火燎原 1165
-- 117,51
-- 风雷落 爆米花飞弹 1002
-- 117,59
-- 弓手:
-- 飞鸿印雪 柔情绣花拳 11650
-- 117,57
-- 乱刃决 荷包蛋之怒 11600
-- 117,65
-- 忍者:
-- 毒烟炸弹 西瓜碎碎弹 6001
-- 117,53
-- 二刀连攻 惊鸿极光 12080 12080
-- 117,55
-- 血镰绞杀  死亡雷达 凤翼天翔 11170
-- 117,78
-- 武僧:
-- 鹤翼天翔脚  无影黑旋风 10415
-- 117,61
-- 猛虎穿心拳 狮王怒吼 10381
-- 117,67
-- 海盗:
-- 加勒比喷泉 纸翼乱舞 流光飞舞 11110
-- 117,63
-- 117,64
-- 震撼榴弹 死亡岩浆 11070
-- 117,83
-- 武器技能：
-- 长蛇吐信 夺命刺锚 奥利奥钻头 11005
-- 117,49
-- 117,50
-- 飘香剑雨 凌穹剑影 1046
-- 117,69
-- 千军破 怒浪狂涛 11190
-- 117,71
-- 晴空霹雳 追魂狱火 11000
-- 117,73
--雪花盖顶 凝霜碎魂 进鸡的巨人 5010
-- 117,75
-- 117,76
-- 迎风一刀斩 蘑菇土风舞 1045
-- 117,79
-- 有凤来仪 神罚之剑 镇魂之碑 5030
-- 117,82
-- 117,81

local tDoubleElevenActivity_SkillCoatStc = {}
tDoubleElevenActivity_SkillCoatStc["EventType"] = 117

local tDoubleElevenActivity_SkillCoat = {} 
	tDoubleElevenActivity_SkillCoat[1] = {}
	tDoubleElevenActivity_SkillCoat[1][1] = {}
	tDoubleElevenActivity_SkillCoat[1][1][1] ={}
	tDoubleElevenActivity_SkillCoat[1][1][1]["Skill"] = 1115
	tDoubleElevenActivity_SkillCoat[1][1][1]["SkillType"] = {1}
	
	
	tDoubleElevenActivity_SkillCoat[1][2] = {}
	tDoubleElevenActivity_SkillCoat[1][2][1] = {}
	tDoubleElevenActivity_SkillCoat[1][2][1]["Skill"] = 1165
	tDoubleElevenActivity_SkillCoat[1][2][1]["SkillType"] = {1}
	tDoubleElevenActivity_SkillCoat[1][2][2] = {}
	tDoubleElevenActivity_SkillCoat[1][2][2]["Skill"] = 1002
	tDoubleElevenActivity_SkillCoat[1][2][2]["SkillType"] = {1}

	
	tDoubleElevenActivity_SkillCoat[1][3] = {}
	tDoubleElevenActivity_SkillCoat[1][3][1] = {}
	tDoubleElevenActivity_SkillCoat[1][3][1]["Skill"] = 11650
	tDoubleElevenActivity_SkillCoat[1][3][1]["SkillType"] = {1}
	tDoubleElevenActivity_SkillCoat[1][3][2] = {}
	tDoubleElevenActivity_SkillCoat[1][3][2]["Skill"] = 11600
	tDoubleElevenActivity_SkillCoat[1][3][2]["SkillType"] = {1}
	
	tDoubleElevenActivity_SkillCoat[1][4] = {}
	tDoubleElevenActivity_SkillCoat[1][4][1] = {}
	tDoubleElevenActivity_SkillCoat[1][4][1]["Skill"] = 6001
	tDoubleElevenActivity_SkillCoat[1][4][1]["SkillType"] = {1}
	tDoubleElevenActivity_SkillCoat[1][4][2] = {}
	tDoubleElevenActivity_SkillCoat[1][4][2]["Skill"] = 12080
	tDoubleElevenActivity_SkillCoat[1][4][2]["SkillType"] = {1}
	tDoubleElevenActivity_SkillCoat[1][4][3] = {}
	tDoubleElevenActivity_SkillCoat[1][4][3]["Skill"] = 11170
	tDoubleElevenActivity_SkillCoat[1][4][3]["SkillType"] = {1,2}
	
	tDoubleElevenActivity_SkillCoat[1][5] = {}
	tDoubleElevenActivity_SkillCoat[1][5][1] = {}
	tDoubleElevenActivity_SkillCoat[1][5][1]["Skill"] = 10415
	tDoubleElevenActivity_SkillCoat[1][5][1]["SkillType"] = {1}
	tDoubleElevenActivity_SkillCoat[1][5][2] = {}
	tDoubleElevenActivity_SkillCoat[1][5][2]["Skill"] = 10381
	tDoubleElevenActivity_SkillCoat[1][5][2]["SkillType"] = {1}
	
	tDoubleElevenActivity_SkillCoat[1][6] = {}
	tDoubleElevenActivity_SkillCoat[1][6][1] = {}
	tDoubleElevenActivity_SkillCoat[1][6][1]["Skill"] = 11110
	tDoubleElevenActivity_SkillCoat[1][6][1]["SkillType"] = {1,2}
	tDoubleElevenActivity_SkillCoat[1][6][2] = {}
	tDoubleElevenActivity_SkillCoat[1][6][2]["Skill"] = 11070
	tDoubleElevenActivity_SkillCoat[1][6][2]["SkillType"] = {1}
	
	tDoubleElevenActivity_SkillCoat[1][7] = {}
	tDoubleElevenActivity_SkillCoat[1][7][1] = {}
	tDoubleElevenActivity_SkillCoat[1][7][1]["Skill"] = 11005
	tDoubleElevenActivity_SkillCoat[1][7][1]["SkillType"] = {1,2}
	tDoubleElevenActivity_SkillCoat[1][7][2] = {}
	tDoubleElevenActivity_SkillCoat[1][7][2]["Skill"] = 1046
	tDoubleElevenActivity_SkillCoat[1][7][2]["SkillType"] = {1}
	tDoubleElevenActivity_SkillCoat[1][7][3] = {}
	tDoubleElevenActivity_SkillCoat[1][7][3]["Skill"] = 11190
	tDoubleElevenActivity_SkillCoat[1][7][3]["SkillType"] = {1}
	tDoubleElevenActivity_SkillCoat[1][7][4] = {}
	tDoubleElevenActivity_SkillCoat[1][7][4]["Skill"] = 11000
	tDoubleElevenActivity_SkillCoat[1][7][4]["SkillType"] = {1}
	tDoubleElevenActivity_SkillCoat[1][7][5] = {}
	tDoubleElevenActivity_SkillCoat[1][7][5]["Skill"] = 5010
	tDoubleElevenActivity_SkillCoat[1][7][5]["SkillType"] = {1,2}
	tDoubleElevenActivity_SkillCoat[1][7][6] = {}
	tDoubleElevenActivity_SkillCoat[1][7][6]["Skill"] = 1045
	tDoubleElevenActivity_SkillCoat[1][7][6]["SkillType"] = {1}
	tDoubleElevenActivity_SkillCoat[1][7][7] = {}
	tDoubleElevenActivity_SkillCoat[1][7][7]["Skill"] = 5030
	tDoubleElevenActivity_SkillCoat[1][7][7]["SkillType"] = {1,2}

--酒仙技能
-- 勇士
-- 迎风一刀斩 1045  圣火一刀斩 3  140,80
-- 飘香剑雨 1046 天剑降临 3 140,81
-- 纵横四海 1115 怒放莲华 3 140,82
	tDoubleElevenActivity_SkillCoat[2] = {}
	tDoubleElevenActivity_SkillCoat[2][1] = {}
	tDoubleElevenActivity_SkillCoat[2][1][1] ={}
	tDoubleElevenActivity_SkillCoat[2][1][1]["Skill"] = 1045
	tDoubleElevenActivity_SkillCoat[2][1][1]["SkillType"] = {3}

	tDoubleElevenActivity_SkillCoat[2][1][2] ={}
	tDoubleElevenActivity_SkillCoat[2][1][2]["Skill"] = 1046
	tDoubleElevenActivity_SkillCoat[2][1][2]["SkillType"] = {3}

	tDoubleElevenActivity_SkillCoat[2][1][3] ={}
	tDoubleElevenActivity_SkillCoat[2][1][3]["Skill"] = 1115
	tDoubleElevenActivity_SkillCoat[2][1][3]["SkillType"] = {3}

-- 战士
-- 千军破  11190 灭世光刃  3 140,83
-- 雪花盖顶  5010 末日虹霞 3 140,84
	tDoubleElevenActivity_SkillCoat[2][2] = {}
	tDoubleElevenActivity_SkillCoat[2][2][1] ={}
	tDoubleElevenActivity_SkillCoat[2][2][1]["Skill"] = 11190
	tDoubleElevenActivity_SkillCoat[2][2][1]["SkillType"] = {3}
	tDoubleElevenActivity_SkillCoat[2][2][2] ={}
	tDoubleElevenActivity_SkillCoat[2][2][2]["Skill"] = 5010
	tDoubleElevenActivity_SkillCoat[2][2][2]["SkillType"] = {3}


-- 弓手
-- 飞鸿印雪 11650 烈火血印 3 140,85
-- 乱刃决   11600 火莲迷阵 3 140,86
-- 流星闪   11590 乱舞星弹 1 140,87
	tDoubleElevenActivity_SkillCoat[2][3] = {}
	tDoubleElevenActivity_SkillCoat[2][3][1] ={}
	tDoubleElevenActivity_SkillCoat[2][3][1]["Skill"] = 11650
	tDoubleElevenActivity_SkillCoat[2][3][1]["SkillType"] = {3}
	tDoubleElevenActivity_SkillCoat[2][3][2] ={}
	tDoubleElevenActivity_SkillCoat[2][3][2]["Skill"] = 11600
	tDoubleElevenActivity_SkillCoat[2][3][2]["SkillType"] = {3}
	tDoubleElevenActivity_SkillCoat[2][3][3] ={}
	tDoubleElevenActivity_SkillCoat[2][3][3]["Skill"] = 11590
	tDoubleElevenActivity_SkillCoat[2][3][3]["SkillType"] = {1}


-- 忍者技能外套。
-- 真·二刀连攻 12080     炽日天剑  3 140,88
-- 毒烟炸弹   6001  幽冥毒障  3  140,89
	tDoubleElevenActivity_SkillCoat[2][4] = {}
	tDoubleElevenActivity_SkillCoat[2][4][1] ={}
	tDoubleElevenActivity_SkillCoat[2][4][1]["Skill"] = 12080
	tDoubleElevenActivity_SkillCoat[2][4][1]["SkillType"] = {3}
	tDoubleElevenActivity_SkillCoat[2][4][2] ={}
	tDoubleElevenActivity_SkillCoat[2][4][2]["Skill"] = 6001
	tDoubleElevenActivity_SkillCoat[2][4][2]["SkillType"] = {3}
	
	
-- 武僧技能外套 
-- 鹤翼天翔脚  10415 爱心旋风 3 140,90
-- 猛虎穿心拳  10381 飓风神拳 3 140,91 般若神掌 4 140,92
	tDoubleElevenActivity_SkillCoat[2][5] = {}
	tDoubleElevenActivity_SkillCoat[2][5][1] ={}
	tDoubleElevenActivity_SkillCoat[2][5][1]["Skill"] = 10415
	tDoubleElevenActivity_SkillCoat[2][5][1]["SkillType"] = {3}
	tDoubleElevenActivity_SkillCoat[2][5][2] ={}
	tDoubleElevenActivity_SkillCoat[2][5][2]["Skill"] = 10381
	tDoubleElevenActivity_SkillCoat[2][5][2]["SkillType"] = {3,4}
	
	
-- 海盗技能外套
-- 震撼榴弹  11070 死神炸弹  3 140,93
-- 加勒比喷泉 11110 致命电流 3 140,94
	tDoubleElevenActivity_SkillCoat[2][6] = {}
	tDoubleElevenActivity_SkillCoat[2][6][1] ={}
	tDoubleElevenActivity_SkillCoat[2][6][1]["Skill"] = 11070
	tDoubleElevenActivity_SkillCoat[2][6][1]["SkillType"] = {3}
	tDoubleElevenActivity_SkillCoat[2][6][2] ={}
	tDoubleElevenActivity_SkillCoat[2][6][2]["Skill"] = 11110
	tDoubleElevenActivity_SkillCoat[2][6][2]["SkillType"] = {3}

-- 截拳师技能外
-- 双龙出海·地裂 12160 龙卷狂沙 1 140,95
-- 双龙出海·天崩 12170  龙卷狂沙 1 140,96
-- 猛龙过江  12350  熔断光波 1 140,97
	tDoubleElevenActivity_SkillCoat[2][7] = {}
	tDoubleElevenActivity_SkillCoat[2][7][1] ={}
	tDoubleElevenActivity_SkillCoat[2][7][1]["Skill"] = 12160
	tDoubleElevenActivity_SkillCoat[2][7][1]["SkillType"] = {1}
	tDoubleElevenActivity_SkillCoat[2][7][2] ={}
	tDoubleElevenActivity_SkillCoat[2][7][2]["Skill"] = 12170
	tDoubleElevenActivity_SkillCoat[2][7][2]["SkillType"] = {1}
	tDoubleElevenActivity_SkillCoat[2][7][3] ={}
	tDoubleElevenActivity_SkillCoat[2][7][3]["Skill"] = 12350
	tDoubleElevenActivity_SkillCoat[2][7][3]["SkillType"] = {1}
-- 水道技能外套
-- 红云烙 1095   幸运四叶草 1 140,98
-- 祈祷 1100 重生白莲 1 140,99
	tDoubleElevenActivity_SkillCoat[2][8] = {}
	tDoubleElevenActivity_SkillCoat[2][8][1] ={}
	tDoubleElevenActivity_SkillCoat[2][8][1]["Skill"] = 1095
	tDoubleElevenActivity_SkillCoat[2][8][1]["SkillType"] = {1}
	tDoubleElevenActivity_SkillCoat[2][8][2] ={}
	tDoubleElevenActivity_SkillCoat[2][8][2]["Skill"] = 1100
	tDoubleElevenActivity_SkillCoat[2][8][2]["SkillType"] = {1}


-- 火道技能外套
-- 风雷落 1002  天神之怒 3 141,01
-- 火雷落 1001 火神之祭 1 141,02
	tDoubleElevenActivity_SkillCoat[2][9] = {}
	tDoubleElevenActivity_SkillCoat[2][9][1] ={}
	tDoubleElevenActivity_SkillCoat[2][9][1]["Skill"] = 1002
	tDoubleElevenActivity_SkillCoat[2][9][1]["SkillType"] = {3}
	tDoubleElevenActivity_SkillCoat[2][9][2] ={}
	tDoubleElevenActivity_SkillCoat[2][9][2]["Skill"] = 1001
	tDoubleElevenActivity_SkillCoat[2][9][2]["SkillType"] = {1}
	
	
	
	
	
local tDoubleElevenActivity_SkillCoatStc = {}
tDoubleElevenActivity_SkillCoatStc = {}
-- 勇士:
-- 纵横四海 青日耀天 1115
-- 117,85
tDoubleElevenActivity_SkillCoatStc[1] = {}
tDoubleElevenActivity_SkillCoatStc[1][1] = {}
tDoubleElevenActivity_SkillCoatStc[1][1][1] = {}
tDoubleElevenActivity_SkillCoatStc[1][1][1][1] = {}
tDoubleElevenActivity_SkillCoatStc[1][1][1][1]["EventType"] = 117
tDoubleElevenActivity_SkillCoatStc[1][1][1][1]["DataType"] = 85
-- 道士
-- 地狱火 星火燎原 1165
-- 117,51
-- 风雷落 爆米花飞弹 1002
-- 117,59
tDoubleElevenActivity_SkillCoatStc[1][2] = {}
tDoubleElevenActivity_SkillCoatStc[1][2][1] = {}
tDoubleElevenActivity_SkillCoatStc[1][2][1][1] = {}
tDoubleElevenActivity_SkillCoatStc[1][2][1][1]["EventType"] = 117
tDoubleElevenActivity_SkillCoatStc[1][2][1][1]["DataType"] = 51
tDoubleElevenActivity_SkillCoatStc[1][2][2] = {}
tDoubleElevenActivity_SkillCoatStc[1][2][2][1] = {}
tDoubleElevenActivity_SkillCoatStc[1][2][2][1]["EventType"] = 117
tDoubleElevenActivity_SkillCoatStc[1][2][2][1]["DataType"] = 59

-- 弓手:
-- 飞鸿印雪 柔情绣花拳 11650
-- 117,57
-- 乱刃决 荷包蛋之怒 11600
-- 117,65
tDoubleElevenActivity_SkillCoatStc[1][3] = {}
tDoubleElevenActivity_SkillCoatStc[1][3][1] = {}
tDoubleElevenActivity_SkillCoatStc[1][3][1][1] = {}
tDoubleElevenActivity_SkillCoatStc[1][3][1][1]["EventType"] = 117
tDoubleElevenActivity_SkillCoatStc[1][3][1][1]["DataType"] = 57
tDoubleElevenActivity_SkillCoatStc[1][3][2] = {}
tDoubleElevenActivity_SkillCoatStc[1][3][2][1] = {}
tDoubleElevenActivity_SkillCoatStc[1][3][2][1]["EventType"] = 117
tDoubleElevenActivity_SkillCoatStc[1][3][2][1]["DataType"] = 65
-- 忍者:                          
-- 毒烟炸弹 西瓜碎碎弹 6001
-- 117,53
-- 二刀连攻 惊鸿极光 12080 12080
-- 117,55
-- 血镰绞杀  死亡雷达 凤翼天翔 11170
-- 117,77
-- 117,78
tDoubleElevenActivity_SkillCoatStc[1][4] = {}
tDoubleElevenActivity_SkillCoatStc[1][4][1] = {}
tDoubleElevenActivity_SkillCoatStc[1][4][1][1] = {}
tDoubleElevenActivity_SkillCoatStc[1][4][1][1]["EventType"] = 117
tDoubleElevenActivity_SkillCoatStc[1][4][1][1]["DataType"] = 53

tDoubleElevenActivity_SkillCoatStc[1][4][2] = {}
tDoubleElevenActivity_SkillCoatStc[1][4][2][1] = {}
tDoubleElevenActivity_SkillCoatStc[1][4][2][1]["EventType"] = 117
tDoubleElevenActivity_SkillCoatStc[1][4][2][1]["DataType"] = 55

tDoubleElevenActivity_SkillCoatStc[1][4][3] = {}
tDoubleElevenActivity_SkillCoatStc[1][4][3][1] = {}
tDoubleElevenActivity_SkillCoatStc[1][4][3][1]["EventType"] = 117
tDoubleElevenActivity_SkillCoatStc[1][4][3][1]["DataType"] = 77
tDoubleElevenActivity_SkillCoatStc[1][4][3][2] = {}
tDoubleElevenActivity_SkillCoatStc[1][4][3][2]["EventType"] = 117
tDoubleElevenActivity_SkillCoatStc[1][4][3][2]["DataType"] = 78

-- 武僧:
-- 鹤翼天翔脚  无影黑旋风 10415
-- 117,61
-- 猛虎穿心拳 狮王怒吼 10381
-- 117,67
tDoubleElevenActivity_SkillCoatStc[1][5] = {}
tDoubleElevenActivity_SkillCoatStc[1][5][1] = {}
tDoubleElevenActivity_SkillCoatStc[1][5][1][1] = {}
tDoubleElevenActivity_SkillCoatStc[1][5][1][1]["EventType"] = 117
tDoubleElevenActivity_SkillCoatStc[1][5][1][1]["DataType"] = 61
tDoubleElevenActivity_SkillCoatStc[1][5][2] = {}
tDoubleElevenActivity_SkillCoatStc[1][5][2][1] = {}
tDoubleElevenActivity_SkillCoatStc[1][5][2][1]["EventType"] = 117
tDoubleElevenActivity_SkillCoatStc[1][5][2][1]["DataType"] = 67

-- 海盗:
-- 加勒比喷泉 纸翼乱舞 流光飞舞 11110
-- 117,63
-- 117,64
-- 震撼榴弹 死亡岩浆 11070
-- 117,83
tDoubleElevenActivity_SkillCoatStc[1][6] = {}
tDoubleElevenActivity_SkillCoatStc[1][6][1] = {}
tDoubleElevenActivity_SkillCoatStc[1][6][1][1] = {}
tDoubleElevenActivity_SkillCoatStc[1][6][1][1]["EventType"] = 117
tDoubleElevenActivity_SkillCoatStc[1][6][1][1]["DataType"] = 63
tDoubleElevenActivity_SkillCoatStc[1][6][1][2] = {}
tDoubleElevenActivity_SkillCoatStc[1][6][1][2]["EventType"] = 117
tDoubleElevenActivity_SkillCoatStc[1][6][1][2]["DataType"] = 64
tDoubleElevenActivity_SkillCoatStc[1][6][2] = {}
tDoubleElevenActivity_SkillCoatStc[1][6][2][1] = {}
tDoubleElevenActivity_SkillCoatStc[1][6][2][1]["EventType"] = 117
tDoubleElevenActivity_SkillCoatStc[1][6][2][1]["DataType"] = 83
-- 武器技能：
-- 长蛇吐信 夺命刺锚 奥利奥钻头 11005
-- 117,49
-- 117,50
-- 飘香剑雨 凌穹剑影 1046
-- 117,69
-- 千军破 怒浪狂涛 11190
-- 117,71
-- 晴空霹雳 追魂狱火 11000
-- 117,73
--雪花盖顶 凝霜碎魂 进鸡的巨人 5010
-- 117,75
-- 117,76
-- 迎风一刀斩 蘑菇土风舞 1045
-- 117,79
-- 有凤来仪 神罚之剑 镇魂之碑 5030
-- 117,82
-- 117,81
tDoubleElevenActivity_SkillCoatStc[1][7] = {}
tDoubleElevenActivity_SkillCoatStc[1][7][1] = {}
tDoubleElevenActivity_SkillCoatStc[1][7][1][1] = {}
tDoubleElevenActivity_SkillCoatStc[1][7][1][1]["EventType"] = 117
tDoubleElevenActivity_SkillCoatStc[1][7][1][1]["DataType"] = 49
tDoubleElevenActivity_SkillCoatStc[1][7][1][2] = {}
tDoubleElevenActivity_SkillCoatStc[1][7][1][2]["EventType"] = 117
tDoubleElevenActivity_SkillCoatStc[1][7][1][2]["DataType"] = 50

tDoubleElevenActivity_SkillCoatStc[1][7][2] = {}
tDoubleElevenActivity_SkillCoatStc[1][7][2][1] = {}
tDoubleElevenActivity_SkillCoatStc[1][7][2][1]["EventType"] = 117
tDoubleElevenActivity_SkillCoatStc[1][7][2][1]["DataType"] = 69

tDoubleElevenActivity_SkillCoatStc[1][7][3] = {}
tDoubleElevenActivity_SkillCoatStc[1][7][3][1] = {}
tDoubleElevenActivity_SkillCoatStc[1][7][3][1]["EventType"] = 117
tDoubleElevenActivity_SkillCoatStc[1][7][3][1]["DataType"] = 71

tDoubleElevenActivity_SkillCoatStc[1][7][4] = {}
tDoubleElevenActivity_SkillCoatStc[1][7][4][1] = {}
tDoubleElevenActivity_SkillCoatStc[1][7][4][1]["EventType"] = 117
tDoubleElevenActivity_SkillCoatStc[1][7][4][1]["DataType"] = 73

tDoubleElevenActivity_SkillCoatStc[1][7][5] = {}
tDoubleElevenActivity_SkillCoatStc[1][7][5][1] = {}
tDoubleElevenActivity_SkillCoatStc[1][7][5][1]["EventType"] = 117
tDoubleElevenActivity_SkillCoatStc[1][7][5][1]["DataType"] = 75

tDoubleElevenActivity_SkillCoatStc[1][7][5][2] = {}
tDoubleElevenActivity_SkillCoatStc[1][7][5][2]["EventType"] = 117
tDoubleElevenActivity_SkillCoatStc[1][7][5][2]["DataType"] = 76

tDoubleElevenActivity_SkillCoatStc[1][7][6] = {}
tDoubleElevenActivity_SkillCoatStc[1][7][6][1] = {}
tDoubleElevenActivity_SkillCoatStc[1][7][6][1]["EventType"] = 117
tDoubleElevenActivity_SkillCoatStc[1][7][6][1]["DataType"] = 79

tDoubleElevenActivity_SkillCoatStc[1][7][7] = {}
tDoubleElevenActivity_SkillCoatStc[1][7][7][1] = {}
tDoubleElevenActivity_SkillCoatStc[1][7][7][1]["EventType"] = 117
tDoubleElevenActivity_SkillCoatStc[1][7][7][1]["DataType"] = 82

tDoubleElevenActivity_SkillCoatStc[1][7][7][2] = {}
tDoubleElevenActivity_SkillCoatStc[1][7][7][2]["EventType"] = 117
tDoubleElevenActivity_SkillCoatStc[1][7][7][2]["DataType"] = 81


-- 勇士
-- 迎风一刀斩 1045  圣火一刀斩 3  140,80
-- 飘香剑雨 1046 天剑降临 3 140,81
-- 纵横四海 1115 怒放莲华 3 140,82
tDoubleElevenActivity_SkillCoatStc[2] = {}
tDoubleElevenActivity_SkillCoatStc[2][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][1][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][1][1][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][1][1][1]["EventType"] = 140
tDoubleElevenActivity_SkillCoatStc[2][1][1][1]["DataType"] = 80
tDoubleElevenActivity_SkillCoatStc[2][1][2] = {}
tDoubleElevenActivity_SkillCoatStc[2][1][2][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][1][2][1]["EventType"] = 140
tDoubleElevenActivity_SkillCoatStc[2][1][2][1]["DataType"] = 81
tDoubleElevenActivity_SkillCoatStc[2][1][3] = {}
tDoubleElevenActivity_SkillCoatStc[2][1][3][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][1][3][1]["EventType"] = 140
tDoubleElevenActivity_SkillCoatStc[2][1][3][1]["DataType"] = 82

-- 战士
-- 千军破  11190 灭世光刃  3 140,83
-- 雪花盖顶  5010 末日虹霞 3 140,84
tDoubleElevenActivity_SkillCoatStc[2][2] = {}
tDoubleElevenActivity_SkillCoatStc[2][2][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][2][1][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][2][1][1]["EventType"] = 140
tDoubleElevenActivity_SkillCoatStc[2][2][1][1]["DataType"] = 83
tDoubleElevenActivity_SkillCoatStc[2][2][2] = {}
tDoubleElevenActivity_SkillCoatStc[2][2][2][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][2][2][1]["EventType"] = 140
tDoubleElevenActivity_SkillCoatStc[2][2][2][1]["DataType"] = 84

-- 弓手
-- 飞鸿印雪 11650 烈火血印 3 140,85
-- 乱刃决   11600 火莲迷阵 3 140,86
-- 流星闪   11590 乱舞星弹 1 140,87
tDoubleElevenActivity_SkillCoatStc[2][3] = {}
tDoubleElevenActivity_SkillCoatStc[2][3][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][3][1][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][3][1][1]["EventType"] = 140
tDoubleElevenActivity_SkillCoatStc[2][3][1][1]["DataType"] = 85
tDoubleElevenActivity_SkillCoatStc[2][3][2] = {}
tDoubleElevenActivity_SkillCoatStc[2][3][2][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][3][2][1]["EventType"] = 140
tDoubleElevenActivity_SkillCoatStc[2][3][2][1]["DataType"] = 86
tDoubleElevenActivity_SkillCoatStc[2][3][3] = {}
tDoubleElevenActivity_SkillCoatStc[2][3][3][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][3][3][1]["EventType"] = 140
tDoubleElevenActivity_SkillCoatStc[2][3][3][1]["DataType"] = 87

-- 忍者技能外套。
-- 真·二刀连攻 12080     炽日天剑  3 140,88
-- 毒烟炸弹   6001  幽冥毒障  3  140,89
tDoubleElevenActivity_SkillCoatStc[2][4] = {}
tDoubleElevenActivity_SkillCoatStc[2][4][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][4][1][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][4][1][1]["EventType"] = 140
tDoubleElevenActivity_SkillCoatStc[2][4][1][1]["DataType"] = 88
tDoubleElevenActivity_SkillCoatStc[2][4][2] = {}
tDoubleElevenActivity_SkillCoatStc[2][4][2][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][4][2][1]["EventType"] = 140
tDoubleElevenActivity_SkillCoatStc[2][4][2][1]["DataType"] = 89
-- 武僧技能外套 
-- 鹤翼天翔脚  10415 爱心旋风 3 140,90
-- 猛虎穿心拳  10381 飓风神拳 3 140,91 般若神掌 4 140,92
tDoubleElevenActivity_SkillCoatStc[2][5] = {}
tDoubleElevenActivity_SkillCoatStc[2][5][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][5][1][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][5][1][1]["EventType"] = 140
tDoubleElevenActivity_SkillCoatStc[2][5][1][1]["DataType"] = 90
tDoubleElevenActivity_SkillCoatStc[2][5][2] = {}
tDoubleElevenActivity_SkillCoatStc[2][5][2][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][5][2][1]["EventType"] = 140
tDoubleElevenActivity_SkillCoatStc[2][5][2][1]["DataType"] = 91
tDoubleElevenActivity_SkillCoatStc[2][5][2][2] = {}
tDoubleElevenActivity_SkillCoatStc[2][5][2][2]["EventType"] = 140
tDoubleElevenActivity_SkillCoatStc[2][5][2][2]["DataType"] = 92


-- 海盗技能外套
-- 震撼榴弹  11070 死神炸弹  3 140,93
-- 加勒比喷泉 11110 致命电流 3 140,94
tDoubleElevenActivity_SkillCoatStc[2][6] = {}
tDoubleElevenActivity_SkillCoatStc[2][6][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][6][1][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][6][1][1]["EventType"] = 140
tDoubleElevenActivity_SkillCoatStc[2][6][1][1]["DataType"] = 93
tDoubleElevenActivity_SkillCoatStc[2][6][2] = {}
tDoubleElevenActivity_SkillCoatStc[2][6][2][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][6][2][1]["EventType"] = 140
tDoubleElevenActivity_SkillCoatStc[2][6][2][1]["DataType"] = 94

-- 截拳师技能外
-- 双龙出海·地裂 12160 龙卷狂沙 1 140,95
-- 双龙出海·天崩 12170  龙卷狂沙 1 140,96
-- 猛龙过江  12350  熔断光波 1 140,97
tDoubleElevenActivity_SkillCoatStc[2][7] = {}
tDoubleElevenActivity_SkillCoatStc[2][7][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][7][1][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][7][1][1]["EventType"] = 140
tDoubleElevenActivity_SkillCoatStc[2][7][1][1]["DataType"] = 95
tDoubleElevenActivity_SkillCoatStc[2][7][2] = {}
tDoubleElevenActivity_SkillCoatStc[2][7][2][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][7][2][1]["EventType"] = 140
tDoubleElevenActivity_SkillCoatStc[2][7][2][1]["DataType"] = 96
tDoubleElevenActivity_SkillCoatStc[2][7][3] = {}
tDoubleElevenActivity_SkillCoatStc[2][7][3][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][7][3][1]["EventType"] = 140
tDoubleElevenActivity_SkillCoatStc[2][7][3][1]["DataType"] = 97

-- 水道技能外套
-- 红云烙 1095   幸运四叶草 1 140,98
-- 祈祷 1100 重生白莲 1 140,99
tDoubleElevenActivity_SkillCoatStc[2][8] = {}
tDoubleElevenActivity_SkillCoatStc[2][8][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][8][1][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][8][1][1]["EventType"] = 140
tDoubleElevenActivity_SkillCoatStc[2][8][1][1]["DataType"] = 98
tDoubleElevenActivity_SkillCoatStc[2][8][2] = {}
tDoubleElevenActivity_SkillCoatStc[2][8][2][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][8][2][1]["EventType"] = 140
tDoubleElevenActivity_SkillCoatStc[2][8][2][1]["DataType"] = 99
-- 火道技能外套
-- 风雷落 1002  天神之怒 3 141,01
-- 火雷落 1001 火神之祭 1 141,02
tDoubleElevenActivity_SkillCoatStc[2][9] = {}
tDoubleElevenActivity_SkillCoatStc[2][9][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][9][1][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][9][1][1]["EventType"] = 141
tDoubleElevenActivity_SkillCoatStc[2][9][1][1]["DataType"] = 01
tDoubleElevenActivity_SkillCoatStc[2][9][2] = {}
tDoubleElevenActivity_SkillCoatStc[2][9][2][1] = {}
tDoubleElevenActivity_SkillCoatStc[2][9][2][1]["EventType"] = 141
tDoubleElevenActivity_SkillCoatStc[2][9][2][1]["DataType"] = 0

--翻牌器
local tDoubleElevenActivity_Card = {}
	tDoubleElevenActivity_Card[1] = 3301220
	tDoubleElevenActivity_Card[2] = 3301221
	tDoubleElevenActivity_Card[3] = 3301222
	
local tDoubleElevenActivity_CardFlag = {}
	tDoubleElevenActivity_CardFlag[3301220] = 18
	tDoubleElevenActivity_CardFlag[3301221] = 19
	tDoubleElevenActivity_CardFlag[3301222] = 20

--翻牌器花费的天石，一共六次
local tDoubleElevenActivity_SpendEmoneyLog = {}
	tDoubleElevenActivity_SpendEmoneyLog[18] = {}
	tDoubleElevenActivity_SpendEmoneyLog[18][10] = "350	20641	0	0	1	"
	tDoubleElevenActivity_SpendEmoneyLog[18][40] = "350	20642	0	0	1	"
	tDoubleElevenActivity_SpendEmoneyLog[18][65] = "350	20643	0	0	1	"
	tDoubleElevenActivity_SpendEmoneyLog[18][135] = "350	20644	0	0	1	"
	tDoubleElevenActivity_SpendEmoneyLog[18][245] = "350	20645	0	0	1	"
	tDoubleElevenActivity_SpendEmoneyLog[18][565] = "350	20646	0	0	1	"
	
	tDoubleElevenActivity_SpendEmoneyLog[19] = {}
	tDoubleElevenActivity_SpendEmoneyLog[19][25] = "350	20653	0	0	1	"
	tDoubleElevenActivity_SpendEmoneyLog[19][75] = "350	20654	0	0	1	"
	tDoubleElevenActivity_SpendEmoneyLog[19][125] = "350	20655	0	0	1	"
	tDoubleElevenActivity_SpendEmoneyLog[19][265] = "350	20656	0	0	1	"
	tDoubleElevenActivity_SpendEmoneyLog[19][510] = "350	20657	0	0	1	"
	tDoubleElevenActivity_SpendEmoneyLog[19][1150] = "350	20658	0	0	1	"
	
	tDoubleElevenActivity_SpendEmoneyLog[20] = {}
	tDoubleElevenActivity_SpendEmoneyLog[20][15] = "350	20647	0	0	1	"
	tDoubleElevenActivity_SpendEmoneyLog[20][29] = "350	20648	0	0	1	"
	tDoubleElevenActivity_SpendEmoneyLog[20][49] = "350	20649	0	0	1	"
	tDoubleElevenActivity_SpendEmoneyLog[20][99] = "350	20650	0	0	1	"
	tDoubleElevenActivity_SpendEmoneyLog[20][189] = "350	20651	0	0	1	"
	tDoubleElevenActivity_SpendEmoneyLog[20][369] = "350	20652	0	0	1	"

local tDoubleElevenActivity_TimeItem = {}
	tDoubleElevenActivity_TimeItem[1] = 3301228
	tDoubleElevenActivity_TimeItem[2] = 3301229
	tDoubleElevenActivity_TimeItem[3] = 3301230
	tDoubleElevenActivity_TimeItem[4] = 3301231
	tDoubleElevenActivity_TimeItem[5] = 3301232
	tDoubleElevenActivity_TimeItem[6] = 3301233
	tDoubleElevenActivity_TimeItem[7] = 3301234
	tDoubleElevenActivity_TimeItem[8] = 3301235
	tDoubleElevenActivity_TimeItem[9] = 3301236
	tDoubleElevenActivity_TimeItem[10] = 3301237
	tDoubleElevenActivity_TimeItem[11] = 3301238

--翻牌器emoney_buy的log
local tDoubleElevenActivity_CardLog = {}
	tDoubleElevenActivity_CardLog[1] = "350	20586	0	0	1	"
	tDoubleElevenActivity_CardLog[2] = "350	20587	0	0	1	"
	tDoubleElevenActivity_CardLog[3] = "350	20588	0	0	1	"
	
	


--普通给物品礼包通用逻辑
function DoubleElevenActivity_OpenPack(nItemId)
	for k,v in pairs(tDoubleElevenActivity_TimeItem) do
		if nItemId == v then
			if not Sys_ChkFullTime(tDoubleElevenActivity_Cont["ActivityTime"]) then	
				if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
					User_TalkChannel2005(tDoubleElevenActivity_Text["OutTime"])
				end
				return
			end
		end
	end
	RewardTemplate_UseItemAndMsg(tDoubleElevenActivity_Award[nItemId])
end

--天石升级包逻辑
function DoubleElevenActivity_UpPack(nItemId,nOption)
	if nOption == 1 then
		RewardTemplate_UseItemAndMsg(tDoubleElevenActivity_Award[nItemId][nOption])
	else
		local nEmoney = (tDoubleElevenActivity_Award[nItemId][nOption]["EmoneyPrice"]) 
		--判断天石数
		if Get_UserEMoney() < nEmoney then
			LinkItemGossipFunc_New(3301223,"1-2")
			return
		end
		
		local nOldItem = tDoubleElevenActivity_Award[nItemId][1]["RewardItem"][1]["Id"]
		local nNewItem = tDoubleElevenActivity_Award[nItemId][2]["RewardItem"][1]["Id"]
		
		local nOldAdd = nOldItem - 730000
		local nNewAdd = nNewItem - 730000
		
		local sDialogText = string.format(tDoubleElevenActivity_Text["Text1"],nEmoney,tDoubleElevenActivity_Text["Add"],nOldAdd,Get_ItemtypeName(730001),tDoubleElevenActivity_Text["Gift"],tDoubleElevenActivity_Text["Add"],nNewAdd,Get_ItemtypeName(730001))
		local sDialogOption1 = tDoubleElevenActivity_Text["Option1"]
		local sDialogOption2 = tDoubleElevenActivity_Text["Option2"]
		
		Sys_DialogText(sDialogText)
		Sys_DialogOption(sDialogOption1,"</F>DoubleElevenActivity_UpAward</N>" .. nItemId .. "</N>" .. nEmoney .. "</N>" .. nOption)
		Sys_DialogOption(sDialogOption2,"</F>NULL")
		Sys_DialogItemFace(nItemId)
		Sys_DialogEnd()
	end
end
--升级奖励
function DoubleElevenActivity_UpAward(nItemId,nEmoney,nOption)
	--判断天石数
	if Get_UserEMoney() < nEmoney then
		LinkItemGossipFunc_New(3301223,"1-2")
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(tDoubleElevenActivity_Cont["space"]) then
		User_TalkChannel2005(tDoubleElevenActivity_Text["NoSpace"])
		return
	end
	
	if Item_ChkItem(nItemId) then
		local sEmoneyLog = string.format(tDoubleElevenActivity_Award[nItemId][nOption]["EmoneyBuyLog"],nEmoney,nEmoney)
		User_AddEMoney(-nEmoney)
		Sys_SaveEmoneyBuy(sEmoneyLog)
		RewardTemplate_UseItemAndMsg(tDoubleElevenActivity_Award[nItemId][nOption])
	end
	
end

--碎片包使用
function DoubleElevenActivity_OpenChipPack(nItemId)
	local nItemNum = tDoubleElevenActivity_Award[nItemId]["DeleteItem"][1]["ItemNum"]
	local sItemName = Get_ItemtypeName(nItemId)
	
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum,0) then
		local sTalk = string.format(tDoubleElevenActivity_Text["ChipPackNoitem"],nItemNum,sItemName)  
		User_TalkChannel2005(sTalk)
		return
	end
	
	RewardTemplate_UseItemAndMsg(tDoubleElevenActivity_Award[nItemId])
end

--技能外套道具选项
function DoubleElevenActivity_SelectPro(nItemId,nOption,nTime,nMark)
    local sDialogText = ""
	if nMark == 1 and nOption == 7 then
		sDialogText = tDoubleElevenActivity_Text[nItemId]["Text122"]
	else
		sDialogText = string.format(tDoubleElevenActivity_Text[nItemId]["Text121"],tDoubleElevenActivity_Text[nMark]["Pro"][nOption])
	end

	Sys_DialogText(sDialogText)
	
	for k,v in pairs(tDoubleElevenActivity_Text[nMark]["Skill"][nOption]) do
		local sDialogOption1 = string.format(tDoubleElevenActivity_Text["NOption1"],v)
		local nType = k
		Sys_DialogOption(sDialogOption1,"</F>DoubleElevenActivity_SelectSkillType</N>" .. nItemId .. "</N>" .. nOption .. "</N>" .. nType .. "</N>" .. nTime .. "</N>" .. nMark)
	end
	
	Sys_DialogOption(tDoubleElevenActivity_Text["NOption2"],"</F>LinkItemGossipFunc_New</N>" .. nItemId .."</S>1-1")
	Sys_DialogOption(tDoubleElevenActivity_Text["NOption3"],"</F>NULL")
	Sys_DialogItemFace(nItemId)
	Sys_DialogEnd()
end

function DoubleElevenActivity_SelectSkillType(nItemId,nOption,nType,nTime,nMark)
	local sDialogText = string.format(tDoubleElevenActivity_Text[nItemId]["Text121"],tDoubleElevenActivity_Text[nMark]["Skill"][nOption][nType])
	
	Sys_DialogText(sDialogText)
	
	for k,v in pairs(tDoubleElevenActivity_Text[nMark]["SkillCoat"][nOption][nType]) do
		local sDialogOption1 = string.format(tDoubleElevenActivity_Text["NOption1"],v)
		local nMode = k
		Sys_DialogOption(sDialogOption1,"</F>DoubleElevenActivity_GiveSkillCoat</N>" .. nItemId .. "</N>" .. nOption .. "</N>" .. nType .. "</N>" .. nMode .. "</N>" .. nTime .. "</N>" .. nMark)
	end
	
	Sys_DialogItemFace(nItemId)
	Sys_DialogEnd()
	

end

function DoubleElevenActivity_GiveSkillCoat(nItemId,nOption,nType,nMode,nTime,nMark)
	local nMagicType = tDoubleElevenActivity_SkillCoat[nMark][nOption][nType]["Skill"]
	local nMagicTypeEffect = tDoubleElevenActivity_SkillCoat[nMark][nOption][nType]["SkillType"][nMode]
	if Magic_ChkType(nMagicType) then
		if Magic_CheckMagicEffect(nMagicType,nMagicTypeEffect,0) then
			User_TalkChannel2005(tDoubleElevenActivity_Text["HaveMagic"])
		else
			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
				if nTime == 0 then
					local nEvent = tDoubleElevenActivity_SkillCoatStc[nMark][nOption][nType][nMode]["EventType"]
					local nType = tDoubleElevenActivity_SkillCoatStc[nMark][nOption][nType][nMode]["DataType"]
					Task_SetStatistic(nEvent,nType,1,1)
				end
				
				Magic_AddMagicAvailableEffect(nMagicType,nMagicTypeEffect,0,0,nTime)
				User_EffectAdd("self",tDoubleElevenActivity_Effect["Award"])
				User_TalkChannel2005(string.format(tDoubleElevenActivity_Text["AwardMagic"][nItemId],tDoubleElevenActivity_Text[nMark]["SkillCoat"][nOption][nType][nMode]))
			end
		end
	else
		User_TalkChannel2005(string.format(tDoubleElevenActivity_Text["NoMagic"],tDoubleElevenActivity_Text[nMark]["Skill"][nOption][nType]))
	end

end


--翻牌器

-- 首次打开
function DoubleElevenActivity_Fisrt(nItemId,sItemName)
	--User_TalkChannel2005("firs")
	if not Sys_ChkFullTime(tDoubleElevenActivity_Cont["CardActivityTime"]) then	
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tDoubleElevenActivity_Text["OutTime"])
		end
		return
	end
	
	
	if not Item_ChkItem(nItemId) then
		return
	end
	User_OpenRewardInterface(tDoubleElevenActivity_CardFlag[nItemId])
	
end


-------------------------------------------------物品配置
--6级建材包
tItem[3301206] = tItem[3301206] or {}
tItem[3301207] = tItem[3301206] or {}
tItem[3301208] = tItem[3301206] or {}
tItem[3301209] = tItem[3301206] or {}
tItem[3301210] = tItem[3301206] or {}
--星陨石
tItem[3301228] = tItem[3301206] or {}
tItem[3301229] = tItem[3301206] or {}
tItem[3301230] = tItem[3301206] or {}
tItem[3301231] = tItem[3301206] or {}
tItem[3301232] = tItem[3301206] or {}
tItem[3301233] = tItem[3301206] or {}
tItem[3301234] = tItem[3301206] or {}
tItem[3301235] = tItem[3301206] or {}
tItem[3301236] = tItem[3301206] or {}
tItem[3301237] = tItem[3301206] or {}
tItem[3301238] = tItem[3301206] or {}
--赠点
tItem[3301239] = tItem[3301206] or {}
tItem[3301240] = tItem[3301206] or {}
tItem[3301241] = tItem[3301206] or {}
tItem[3301242] = tItem[3301206] or {}
tItem[3301243] = tItem[3301206] or {}
tItem[3301244] = tItem[3301206] or {}
tItem[3301245] = tItem[3301206] or {}
tItem[3301246] = tItem[3301206] or {}
tItem[3301247] = tItem[3301206] or {}
tItem[3301248] = tItem[3301206] or {}
tItem[3301249] = tItem[3301206] or {}

tItem[3301206]["Function"] = function(nItemId,sItemName)
	DoubleElevenActivity_OpenPack(nItemId)
end

--天石升级包逻辑
tItem[3301223] = tItem[3301223] or {}
tItem[3301223]["DialogueText"] = tDoubleElevenActivity_Text[3301223]
tItem[3301223]["Text1-1"] ={111}
tItem[3301223]["tOption1-1"] = {1,2}
tItem[3301223]["OptionFunc1"] ="DoubleElevenActivity_UpPack</N>3301223</N>1"
tItem[3301223]["OptionFunc2"] ="DoubleElevenActivity_UpPack</N>3301223</N>2"
tItem[3301223]["Text1-2"] ={121}
tItem[3301223]["tOption1-2"] = {3}

tItem[3301224] = tItem[3301224] or {}
tItem[3301224]["DialogueText"] = tDoubleElevenActivity_Text[3301224]
tItem[3301224]["Text1-1"] ={111}
tItem[3301224]["tOption1-1"] = {1,2}
tItem[3301224]["OptionFunc1"] ="DoubleElevenActivity_UpPack</N>3301224</N>1" 
tItem[3301224]["OptionFunc2"] ="DoubleElevenActivity_UpPack</N>3301224</N>2"

tItem[3301225] = tItem[3301225] or {}
tItem[3301225]["DialogueText"] = tDoubleElevenActivity_Text[3301225]
tItem[3301225]["Text1-1"] ={111}
tItem[3301225]["tOption1-1"] = {1,2}
tItem[3301225]["OptionFunc1"] ="DoubleElevenActivity_UpPack</N>3301225</N>1"
tItem[3301225]["OptionFunc2"] ="DoubleElevenActivity_UpPack</N>3301225</N>2"

tItem[3301226] = tItem[3301226] or {}
tItem[3301226]["DialogueText"] = tDoubleElevenActivity_Text[3301226]
tItem[3301226]["Text1-1"] ={111}
tItem[3301226]["tOption1-1"] = {1,2}
tItem[3301226]["OptionFunc1"] ="DoubleElevenActivity_UpPack</N>3301226</N>1"
tItem[3301226]["OptionFunc2"] ="DoubleElevenActivity_UpPack</N>3301226</N>2"

tItem[3301227] = tItem[3301227] or {}
tItem[3301227]["DialogueText"] = tDoubleElevenActivity_Text[3301227]
tItem[3301227]["Text1-1"] ={111}
tItem[3301227]["tOption1-1"] = {1,2}
tItem[3301227]["OptionFunc1"] ="DoubleElevenActivity_UpPack</N>3301227</N>1"
tItem[3301227]["OptionFunc2"] ="DoubleElevenActivity_UpPack</N>3301227</N>2"

tItem[3306907] = tItem[3306907] or {}
tItem[3306907]["DialogueText"] = tDoubleElevenActivity_Text[3306907]
tItem[3306907]["Text1-1"] ={111}
tItem[3306907]["tOption1-1"] = {1,2}
tItem[3306907]["OptionFunc1"] ="DoubleElevenActivity_UpPack</N>3306907</N>1"
tItem[3306907]["OptionFunc2"] ="DoubleElevenActivity_UpPack</N>3306907</N>2"


-- 普通技能外套碎片合集（10合1）1个月时效
-- 普通技能外套永久道具（15合1）
-- 酒剑仙技能外套碎片合集（15合1）1个月时效
-- 酒剑仙技能外套永久道具（20合1）
-- 极品可继承技能外套碎片合集（100合1）


tItem[3301211] = tItem[3301211] or {}
tItem[3301212] = tItem[3301211] or {}
tItem[3301213] = tItem[3301211] or {}
tItem[3301214] = tItem[3301211] or {}
tItem[3301215] = tItem[3301211] or {}
tItem[3301211]["Function"] = function(nItemId,sItemName)
	DoubleElevenActivity_OpenChipPack(nItemId)
end

--技能外套
-- 3301216 普通技能外套(1个月)
-- 3301217 普普通技能外套永久道具
-- 3301218 酒剑仙技能外套(1个月)
-- 3301219 酒剑仙技能外套永久道具

-- 勇士:
-- 纵横四海 青日耀天 1115

-- 道士
-- 地狱火 星火燎原 1165
-- 风雷落 爆米花飞弹 1002
-- 弓手:
-- 飞鸿印雪 柔情绣花拳 11650
-- 乱刃决 荷包蛋之怒 11600
-- 忍者:
-- 毒烟炸弹 西瓜碎碎弹
-- 二刀连攻 惊鸿极光 12080 6000
-- 血镰绞杀  死亡雷达 凤翼天翔

-- 武僧:
-- 鹤翼天翔脚  无影黑旋风 10415
-- 猛虎穿心拳 狮王怒吼 10381
-- 海盗:
-- 加勒比喷泉 纸翼乱舞 流光飞舞
-- 震撼榴弹 死亡岩浆

-- 武器技能：
-- 长蛇吐信 夺命刺锚 奥利奥钻头 11005
-- 飘香剑雨 凌穹剑影 1046
-- 千军破 怒浪狂涛 11190
-- 晴空霹雳 追魂狱火 11000
--雪花盖顶 凝霜碎魂 进鸡的巨人 5010
-- 迎风一刀斩 蘑菇土风舞 1045
-- 有凤来仪 神罚之剑 镇魂之碑 5030

tItem[3301216] = tItem[3301216] or {}
tItem[3301216]["DialogueText"] = tDoubleElevenActivity_Text[3301216]
tItem[3301216]["Text1-1"] ={111}
tItem[3301216]["tOption1-1"] = {1,2,3,4,5,6,7}
tItem[3301216]["OptionFunc1"] ="DoubleElevenActivity_SelectPro</N>3301216</N>1</N>2592000</N>1"
tItem[3301216]["OptionFunc2"] ="DoubleElevenActivity_SelectPro</N>3301216</N>2</N>2592000</N>1"
tItem[3301216]["OptionFunc3"] ="DoubleElevenActivity_SelectPro</N>3301216</N>3</N>2592000</N>1"
tItem[3301216]["OptionFunc4"] ="DoubleElevenActivity_SelectPro</N>3301216</N>4</N>2592000</N>1"
tItem[3301216]["OptionFunc5"] ="DoubleElevenActivity_SelectPro</N>3301216</N>5</N>2592000</N>1"
tItem[3301216]["OptionFunc6"] ="DoubleElevenActivity_SelectPro</N>3301216</N>6</N>2592000</N>1"
tItem[3301216]["OptionFunc7"] ="DoubleElevenActivity_SelectPro</N>3301216</N>7</N>2592000</N>1"

tItem[3301217] = tItem[3301217] or {}
tItem[3301217]["DialogueText"] = tDoubleElevenActivity_Text[3301217]
tItem[3301217]["Text1-1"] ={111}
tItem[3301217]["tOption1-1"] = {1,2,3,4,5,6,7}
tItem[3301217]["OptionFunc1"] ="DoubleElevenActivity_SelectPro</N>3301217</N>1</N>0</N>1"
tItem[3301217]["OptionFunc2"] ="DoubleElevenActivity_SelectPro</N>3301217</N>2</N>0</N>1"
tItem[3301217]["OptionFunc3"] ="DoubleElevenActivity_SelectPro</N>3301217</N>3</N>0</N>1"
tItem[3301217]["OptionFunc4"] ="DoubleElevenActivity_SelectPro</N>3301217</N>4</N>0</N>1"
tItem[3301217]["OptionFunc5"] ="DoubleElevenActivity_SelectPro</N>3301217</N>5</N>0</N>1"
tItem[3301217]["OptionFunc6"] ="DoubleElevenActivity_SelectPro</N>3301217</N>6</N>0</N>1"
tItem[3301217]["OptionFunc7"] ="DoubleElevenActivity_SelectPro</N>3301217</N>7</N>0</N>1"


tItem[3301218] = tItem[3301218] or {}
tItem[3301218]["DialogueText"] = tDoubleElevenActivity_Text[3301218]
tItem[3301218]["Text1-1"] ={111}
tItem[3301218]["tOption1-1"] = {1,2,3,4,5,6,7,8,9}
tItem[3301218]["OptionFunc1"] ="DoubleElevenActivity_SelectPro</N>3301218</N>1</N>2592000</N>2"
tItem[3301218]["OptionFunc2"] ="DoubleElevenActivity_SelectPro</N>3301218</N>2</N>2592000</N>2"
tItem[3301218]["OptionFunc3"] ="DoubleElevenActivity_SelectPro</N>3301218</N>3</N>2592000</N>2"
tItem[3301218]["OptionFunc4"] ="DoubleElevenActivity_SelectPro</N>3301218</N>4</N>2592000</N>2"
tItem[3301218]["OptionFunc5"] ="DoubleElevenActivity_SelectPro</N>3301218</N>5</N>2592000</N>2"
tItem[3301218]["OptionFunc6"] ="DoubleElevenActivity_SelectPro</N>3301218</N>6</N>2592000</N>2"
tItem[3301218]["OptionFunc7"] ="DoubleElevenActivity_SelectPro</N>3301218</N>7</N>2592000</N>2"
tItem[3301218]["OptionFunc8"] ="DoubleElevenActivity_SelectPro</N>3301218</N>8</N>2592000</N>2"
tItem[3301218]["OptionFunc9"] ="DoubleElevenActivity_SelectPro</N>3301218</N>9</N>2592000</N>2"

tItem[3301219] = tItem[3301219] or {}
tItem[3301219]["DialogueText"] = tDoubleElevenActivity_Text[3301219]
tItem[3301219]["Text1-1"] ={111}
tItem[3301219]["tOption1-1"] = {1,2,3,4,5,6,7,8,9}
tItem[3301219]["OptionFunc1"] ="DoubleElevenActivity_SelectPro</N>3301219</N>1</N>0</N>2"
tItem[3301219]["OptionFunc2"] ="DoubleElevenActivity_SelectPro</N>3301219</N>2</N>0</N>2"
tItem[3301219]["OptionFunc3"] ="DoubleElevenActivity_SelectPro</N>3301219</N>3</N>0</N>2"
tItem[3301219]["OptionFunc4"] ="DoubleElevenActivity_SelectPro</N>3301219</N>4</N>0</N>2"
tItem[3301219]["OptionFunc5"] ="DoubleElevenActivity_SelectPro</N>3301219</N>5</N>0</N>2"
tItem[3301219]["OptionFunc6"] ="DoubleElevenActivity_SelectPro</N>3301219</N>6</N>0</N>2"
tItem[3301219]["OptionFunc7"] ="DoubleElevenActivity_SelectPro</N>3301219</N>7</N>0</N>2"
tItem[3301219]["OptionFunc8"] ="DoubleElevenActivity_SelectPro</N>3301219</N>8</N>0</N>2"
tItem[3301219]["OptionFunc9"] ="DoubleElevenActivity_SelectPro</N>3301219</N>9</N>0</N>2"



--翻牌器
tItem[3301220] = tItem[3301220] or {}
tItem[3301220]["Function"] = function(nItemId,sItemName)
	DoubleElevenActivity_Fisrt(nItemId,sItemName)
end

tItem[3301221] = tItem[3301221] or {}
tItem[3301221]["Function"] = function(nItemId,sItemName)
	DoubleElevenActivity_Fisrt(nItemId,sItemName)
end

tItem[3301222] = tItem[3301222] or {}
tItem[3301222]["Function"] = function(nItemId,sItemName)
	DoubleElevenActivity_Fisrt(nItemId,sItemName)
end




--翻牌器触发
function Stone_CardsLottery(nUserId,nType,nCostType,nCostValue1,nCostValue2)
	--User_TalkChannel2005("secondenter"..nCostValue1.."+++"..nCostValue2.."++"..nType,nUserId)
	
	Sys_SaveEmoneyBuy(tDoubleElevenActivity_SpendEmoneyLog[nType][nCostValue1],nUserId)
end

tCardsLotteryRecordCost[18] = tCardsLotteryRecordCost[18] or {}
tCardsLotteryRecordCost[18]["tFunction"] = tCardsLotteryRecordCost[18]["tFunction"] or {}
table.insert(tCardsLotteryRecordCost[18]["tFunction"],Stone_CardsLottery)

tCardsLotteryRecordCost[19] = tCardsLotteryRecordCost[19] or {}
tCardsLotteryRecordCost[19]["tFunction"] = tCardsLotteryRecordCost[19]["tFunction"] or {}
table.insert(tCardsLotteryRecordCost[19]["tFunction"],Stone_CardsLottery)

tCardsLotteryRecordCost[20] = tCardsLotteryRecordCost[20] or {}
tCardsLotteryRecordCost[20]["tFunction"] = tCardsLotteryRecordCost[20]["tFunction"] or {}
table.insert(tCardsLotteryRecordCost[20]["tFunction"],Stone_CardsLottery)






