------------------------------------------------------------------------------------
--Name：            180717[英文征服][活动脚本]8月神器大比拼活动相关发奖action制作
--Creator:      蔡颖静
--Created:     2018/07/17
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--前缀：tAugustWeaponCompetition

----------------------------------表配置部分--------------------------------------------
local tAugustWeaponCompetition_Data={}
--500分神器礼包
tAugustWeaponCompetition_Data[3310166]={}
tAugustWeaponCompetition_Data[3310166]["LogId"] =12001120
tAugustWeaponCompetition_Data[3310166]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3310166]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3310166]["DeleteItem"][1]["Id"]=3310166
tAugustWeaponCompetition_Data[3310166]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3310166]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3310166]["RewardItem"][1]["Id"]= 720027
tAugustWeaponCompetition_Data[3310166]["RewardItem"][1]["Attr"] = "0 3 3"
tAugustWeaponCompetition_Data[3310166]["RewardStrengthValue"] = {}
tAugustWeaponCompetition_Data[3310166]["RewardStrengthValue"]["Value"] = 500

--1000分神器礼包
tAugustWeaponCompetition_Data[3310167]={}
tAugustWeaponCompetition_Data[3310167]["LogId"] =12001120
tAugustWeaponCompetition_Data[3310167]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3310167]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3310167]["DeleteItem"][1]["Id"]=3310167
tAugustWeaponCompetition_Data[3310167]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3310167]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3310167]["RewardItem"][1]["Id"]= 3009001
tAugustWeaponCompetition_Data[3310167]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
tAugustWeaponCompetition_Data[3310167]["RewardItem"][2]={}
tAugustWeaponCompetition_Data[3310167]["RewardItem"][2]["Id"]= 3303084
tAugustWeaponCompetition_Data[3310167]["RewardItem"][2]["Attr"] = "0 2"

--1500分神器礼包
tAugustWeaponCompetition_Data[3310168]={}
tAugustWeaponCompetition_Data[3310168]["LogId"] =12001120
tAugustWeaponCompetition_Data[3310168]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3310168]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3310168]["DeleteItem"][1]["Id"]=3310168
tAugustWeaponCompetition_Data[3310168]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3310168]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3310168]["RewardItem"][1]["Id"]= 3007106
tAugustWeaponCompetition_Data[3310168]["RewardItem"][1]["Attr"] = "0 1"
tAugustWeaponCompetition_Data[3310168]["RewardStrengthValue"] = {}
tAugustWeaponCompetition_Data[3310168]["RewardStrengthValue"]["Value"] = 1000

--2000分珍品神器礼包
tAugustWeaponCompetition_Data[3310169]={}
tAugustWeaponCompetition_Data[3310169]["LogId"] =12001120
tAugustWeaponCompetition_Data[3310169]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3310169]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3310169]["DeleteItem"][1]["Id"]=3310169
tAugustWeaponCompetition_Data[3310169]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3310169]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3310169]["RewardItem"][1]["Id"]= 3009001
tAugustWeaponCompetition_Data[3310169]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
tAugustWeaponCompetition_Data[3310169]["RewardItem"][2]={}
tAugustWeaponCompetition_Data[3310169]["RewardItem"][2]["Id"]= 3303085
tAugustWeaponCompetition_Data[3310169]["RewardItem"][2]["Attr"] = "0 2"

--2200分珍品神器礼包
tAugustWeaponCompetition_Data[3310170]={}
tAugustWeaponCompetition_Data[3310170]["LogId"] =12001120
tAugustWeaponCompetition_Data[3310170]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3310170]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3310170]["DeleteItem"][1]["Id"]=3310170
tAugustWeaponCompetition_Data[3310170]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3310170]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3310170]["RewardItem"][1]["Id"]= 3002030
tAugustWeaponCompetition_Data[3310170]["RewardItem"][1]["Attr"] = "0 10"
tAugustWeaponCompetition_Data[3310170]["RewardStrengthValue"] = {}
tAugustWeaponCompetition_Data[3310170]["RewardStrengthValue"]["Value"] = 1500

--2400分珍品神器礼包
tAugustWeaponCompetition_Data[3310171]={}
tAugustWeaponCompetition_Data[3310171]["LogId"] =12001120
tAugustWeaponCompetition_Data[3310171]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3310171]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3310171]["DeleteItem"][1]["Id"]=3310171
tAugustWeaponCompetition_Data[3310171]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3310171]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3310171]["RewardItem"][1]["Id"]= 3009001
tAugustWeaponCompetition_Data[3310171]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
tAugustWeaponCompetition_Data[3310171]["RewardItem"][2]={}
tAugustWeaponCompetition_Data[3310171]["RewardItem"][2]["Id"]= 3002030
tAugustWeaponCompetition_Data[3310171]["RewardItem"][2]["Attr"] = "0 20"

--2600分稀世神器礼包
tAugustWeaponCompetition_Data[3310172]={}
tAugustWeaponCompetition_Data[3310172]["LogId"] =12001120
tAugustWeaponCompetition_Data[3310172]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3310172]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3310172]["DeleteItem"][1]["Id"]=3310172
tAugustWeaponCompetition_Data[3310172]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3310172]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3310172]["RewardItem"][1]["Id"]= 3009002
tAugustWeaponCompetition_Data[3310172]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tAugustWeaponCompetition_Data[3310172]["RewardItem"][2]={}
tAugustWeaponCompetition_Data[3310172]["RewardItem"][2]["Id"]= 3003126
tAugustWeaponCompetition_Data[3310172]["RewardItem"][2]["Attr"] = "0 10 3"
tAugustWeaponCompetition_Data[3310172]["RewardStrengthValue"] = {}
tAugustWeaponCompetition_Data[3310172]["RewardStrengthValue"]["Value"] = 2000

--2800分稀世神器礼包
tAugustWeaponCompetition_Data[3310173]={}
tAugustWeaponCompetition_Data[3310173]["LogId"] =12001120
tAugustWeaponCompetition_Data[3310173]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3310173]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3310173]["DeleteItem"][1]["Id"]=3310173
tAugustWeaponCompetition_Data[3310173]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3310173]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3310173]["RewardItem"][1]["Id"]= 3009002
tAugustWeaponCompetition_Data[3310173]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
tAugustWeaponCompetition_Data[3310173]["RewardItem"][2]={}
tAugustWeaponCompetition_Data[3310173]["RewardItem"][2]["Id"]= 3003126
tAugustWeaponCompetition_Data[3310173]["RewardItem"][2]["Attr"] = "0 20 3"
tAugustWeaponCompetition_Data[3310173]["RewardStrengthValue"] = {}
tAugustWeaponCompetition_Data[3310173]["RewardStrengthValue"]["Value"] = 2500

--3000分稀世神器礼包
tAugustWeaponCompetition_Data[3310174]={}
tAugustWeaponCompetition_Data[3310174]["LogId"] =12001120
tAugustWeaponCompetition_Data[3310174]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3310174]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3310174]["DeleteItem"][1]["Id"]=3310174
tAugustWeaponCompetition_Data[3310174]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3310174]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3310174]["RewardItem"][1]["Id"]= 3009002
tAugustWeaponCompetition_Data[3310174]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
tAugustWeaponCompetition_Data[3310174]["RewardItem"][2]={}
tAugustWeaponCompetition_Data[3310174]["RewardItem"][2]["Id"]= 3003126
tAugustWeaponCompetition_Data[3310174]["RewardItem"][2]["Attr"] = "0 30 3"
tAugustWeaponCompetition_Data[3310174]["RewardStrengthValue"] = {}
tAugustWeaponCompetition_Data[3310174]["RewardStrengthValue"]["Value"] = 3000

--昆仑至尊礼盒
tAugustWeaponCompetition_Data[3310175]={}
tAugustWeaponCompetition_Data[3310175]["LogId"] =12001120
tAugustWeaponCompetition_Data[3310175]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3310175]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3310175]["DeleteItem"][1]["Id"]=3310175
tAugustWeaponCompetition_Data[3310175]["Talk"] = tAugustWeaponCompetition_Text[3310175]
tAugustWeaponCompetition_Data[3310175]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3310175]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3310175]["RewardItem"][1]["Id"]= 4060001
tAugustWeaponCompetition_Data[3310175]["RewardItem"][1]["Attr"] = "0 1000 3"
tAugustWeaponCompetition_Data[3310175]["RewardItem"][2]={}
tAugustWeaponCompetition_Data[3310175]["RewardItem"][2]["Id"]= 3002926
tAugustWeaponCompetition_Data[3310175]["RewardItem"][2]["Attr"] = "0 60"
tAugustWeaponCompetition_Data[3310175]["RewardStrengthValue"] = {}
tAugustWeaponCompetition_Data[3310175]["RewardStrengthValue"]["Value"] = 50000
tAugustWeaponCompetition_Data[3310175]["RewardTitle"] = {}
tAugustWeaponCompetition_Data[3310175]["RewardTitle"]["TitleType"]=2077
tAugustWeaponCompetition_Data[3310175]["RewardTitle"]["TitleId"]= 2077
tAugustWeaponCompetition_Data[3310175]["RewardTitle"]["SaveTime"] = 43200

--神农王者礼盒
tAugustWeaponCompetition_Data[3310176]={}
tAugustWeaponCompetition_Data[3310176]["LogId"] =12001120
tAugustWeaponCompetition_Data[3310176]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3310176]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3310176]["DeleteItem"][1]["Id"]=3310176
tAugustWeaponCompetition_Data[3310176]["Talk"] = tAugustWeaponCompetition_Text[3310176]
tAugustWeaponCompetition_Data[3310176]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3310176]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3310176]["RewardItem"][1]["Id"]= 4060001
tAugustWeaponCompetition_Data[3310176]["RewardItem"][1]["Attr"] = "0 1000 3"
tAugustWeaponCompetition_Data[3310176]["RewardItem"][2]={}
tAugustWeaponCompetition_Data[3310176]["RewardItem"][2]["Id"]= 3002926
tAugustWeaponCompetition_Data[3310176]["RewardItem"][2]["Attr"] = "0 60"
tAugustWeaponCompetition_Data[3310176]["RewardStrengthValue"] = {}
tAugustWeaponCompetition_Data[3310176]["RewardStrengthValue"]["Value"] = 50000
tAugustWeaponCompetition_Data[3310176]["RewardTitle"] = {}
tAugustWeaponCompetition_Data[3310176]["RewardTitle"]["TitleType"]=2078
tAugustWeaponCompetition_Data[3310176]["RewardTitle"]["TitleId"]= 2078
tAugustWeaponCompetition_Data[3310176]["RewardTitle"]["SaveTime"] = 43200

--定海大圣礼盒
tAugustWeaponCompetition_Data[3310177]={}
tAugustWeaponCompetition_Data[3310177]["LogId"] =12001120
tAugustWeaponCompetition_Data[3310177]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3310177]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3310177]["DeleteItem"][1]["Id"]=3310177
tAugustWeaponCompetition_Data[3310177]["Talk"] = tAugustWeaponCompetition_Text[3310177]
tAugustWeaponCompetition_Data[3310177]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3310177]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3310177]["RewardItem"][1]["Id"]= 4060001
tAugustWeaponCompetition_Data[3310177]["RewardItem"][1]["Attr"] = "0 1000 3"
tAugustWeaponCompetition_Data[3310177]["RewardItem"][2]={}
tAugustWeaponCompetition_Data[3310177]["RewardItem"][2]["Id"]= 3002926
tAugustWeaponCompetition_Data[3310177]["RewardItem"][2]["Attr"] = "0 60"
tAugustWeaponCompetition_Data[3310177]["RewardStrengthValue"] = {}
tAugustWeaponCompetition_Data[3310177]["RewardStrengthValue"]["Value"] = 50000
tAugustWeaponCompetition_Data[3310177]["RewardTitle"] = {}
tAugustWeaponCompetition_Data[3310177]["RewardTitle"]["TitleType"]=2079
tAugustWeaponCompetition_Data[3310177]["RewardTitle"]["TitleId"]= 2079
tAugustWeaponCompetition_Data[3310177]["RewardTitle"]["SaveTime"] = 43200

--番天斗帝礼盒
tAugustWeaponCompetition_Data[3310178]={}
tAugustWeaponCompetition_Data[3310178]["LogId"] =12001120
tAugustWeaponCompetition_Data[3310178]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3310178]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3310178]["DeleteItem"][1]["Id"]=3310178
tAugustWeaponCompetition_Data[3310178]["Talk"] = tAugustWeaponCompetition_Text[3310178]
tAugustWeaponCompetition_Data[3310178]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3310178]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3310178]["RewardItem"][1]["Id"]= 4060001
tAugustWeaponCompetition_Data[3310178]["RewardItem"][1]["Attr"] = "0 1000 3"
tAugustWeaponCompetition_Data[3310178]["RewardItem"][2]={}
tAugustWeaponCompetition_Data[3310178]["RewardItem"][2]["Id"]= 3002926
tAugustWeaponCompetition_Data[3310178]["RewardItem"][2]["Attr"] = "0 60"
tAugustWeaponCompetition_Data[3310178]["RewardStrengthValue"] = {}
tAugustWeaponCompetition_Data[3310178]["RewardStrengthValue"]["Value"] = 50000
tAugustWeaponCompetition_Data[3310178]["RewardTitle"] = {}
tAugustWeaponCompetition_Data[3310178]["RewardTitle"]["TitleType"]=2080
tAugustWeaponCompetition_Data[3310178]["RewardTitle"]["TitleId"]= 2080
tAugustWeaponCompetition_Data[3310178]["RewardTitle"]["SaveTime"] = 43200

--东皇太一礼盒
tAugustWeaponCompetition_Data[3310179]={}
tAugustWeaponCompetition_Data[3310179]["LogId"] =12001120
tAugustWeaponCompetition_Data[3310179]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3310179]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3310179]["DeleteItem"][1]["Id"]=3310179
tAugustWeaponCompetition_Data[3310179]["Talk"] = tAugustWeaponCompetition_Text[3310179]
tAugustWeaponCompetition_Data[3310179]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3310179]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3310179]["RewardItem"][1]["Id"]= 4060001
tAugustWeaponCompetition_Data[3310179]["RewardItem"][1]["Attr"] = "0 1000 3"
tAugustWeaponCompetition_Data[3310179]["RewardItem"][2]={}
tAugustWeaponCompetition_Data[3310179]["RewardItem"][2]["Id"]= 3002926
tAugustWeaponCompetition_Data[3310179]["RewardItem"][2]["Attr"] = "0 60"
tAugustWeaponCompetition_Data[3310179]["RewardStrengthValue"] = {}
tAugustWeaponCompetition_Data[3310179]["RewardStrengthValue"]["Value"] = 50000
tAugustWeaponCompetition_Data[3310179]["RewardTitle"] = {}
tAugustWeaponCompetition_Data[3310179]["RewardTitle"]["TitleType"]=2081
tAugustWeaponCompetition_Data[3310179]["RewardTitle"]["TitleId"]= 2081
tAugustWeaponCompetition_Data[3310179]["RewardTitle"]["SaveTime"] = 43200

--神器宗师礼包
tAugustWeaponCompetition_Data[3310180]={}
tAugustWeaponCompetition_Data[3310180]["LogId"] =12001120
tAugustWeaponCompetition_Data[3310180]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3310180]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3310180]["DeleteItem"][1]["Id"]=3310180
tAugustWeaponCompetition_Data[3310180]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3310180]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3310180]["RewardItem"][1]["Id"]= 4060001
tAugustWeaponCompetition_Data[3310180]["RewardItem"][1]["Attr"] = "0 800 3"
tAugustWeaponCompetition_Data[3310180]["RewardItem"][2]={}
tAugustWeaponCompetition_Data[3310180]["RewardItem"][2]["Id"]= 3002926
tAugustWeaponCompetition_Data[3310180]["RewardItem"][2]["Attr"] = "0 50"
tAugustWeaponCompetition_Data[3310180]["RewardStrengthValue"] = {}
tAugustWeaponCompetition_Data[3310180]["RewardStrengthValue"]["Value"] = 40000

--神器泰斗礼包
tAugustWeaponCompetition_Data[3310181]={}
tAugustWeaponCompetition_Data[3310181]["LogId"] =12001120
tAugustWeaponCompetition_Data[3310181]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3310181]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3310181]["DeleteItem"][1]["Id"]=3310181
tAugustWeaponCompetition_Data[3310181]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3310181]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3310181]["RewardItem"][1]["Id"]= 4060001
tAugustWeaponCompetition_Data[3310181]["RewardItem"][1]["Attr"] = "0 600 3"
tAugustWeaponCompetition_Data[3310181]["RewardItem"][2]={}
tAugustWeaponCompetition_Data[3310181]["RewardItem"][2]["Id"]= 3002926
tAugustWeaponCompetition_Data[3310181]["RewardItem"][2]["Attr"] = "0 40"
tAugustWeaponCompetition_Data[3310181]["RewardStrengthValue"] = {}
tAugustWeaponCompetition_Data[3310181]["RewardStrengthValue"]["Value"] = 30000

--神器豪杰礼包
tAugustWeaponCompetition_Data[3310182]={}
tAugustWeaponCompetition_Data[3310182]["LogId"] =12001120
tAugustWeaponCompetition_Data[3310182]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3310182]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3310182]["DeleteItem"][1]["Id"]=3310182
tAugustWeaponCompetition_Data[3310182]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3310182]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3310182]["RewardItem"][1]["Id"]= 4060001
tAugustWeaponCompetition_Data[3310182]["RewardItem"][1]["Attr"] = "0 500 3"
tAugustWeaponCompetition_Data[3310182]["RewardItem"][2]={}
tAugustWeaponCompetition_Data[3310182]["RewardItem"][2]["Id"]= 3002926
tAugustWeaponCompetition_Data[3310182]["RewardItem"][2]["Attr"] = "0 30"
tAugustWeaponCompetition_Data[3310182]["RewardStrengthValue"] = {}
tAugustWeaponCompetition_Data[3310182]["RewardStrengthValue"]["Value"] = 20000

--神器高手礼包
tAugustWeaponCompetition_Data[3310183]={}
tAugustWeaponCompetition_Data[3310183]["LogId"] =12001120
tAugustWeaponCompetition_Data[3310183]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3310183]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3310183]["DeleteItem"][1]["Id"]=3310183
tAugustWeaponCompetition_Data[3310183]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3310183]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3310183]["RewardItem"][1]["Id"]= 4060001
tAugustWeaponCompetition_Data[3310183]["RewardItem"][1]["Attr"] = "0 300 3"
tAugustWeaponCompetition_Data[3310183]["RewardItem"][2]={}
tAugustWeaponCompetition_Data[3310183]["RewardItem"][2]["Id"]= 3002926
tAugustWeaponCompetition_Data[3310183]["RewardItem"][2]["Attr"] = "0 20"
tAugustWeaponCompetition_Data[3310183]["RewardStrengthValue"] = {}
tAugustWeaponCompetition_Data[3310183]["RewardStrengthValue"]["Value"] = 10000


-- 3322903,'1000分神器珍宝包',9,
tAugustWeaponCompetition_Data[3322903]={}
tAugustWeaponCompetition_Data[3322903]["LogId"] =12001120
tAugustWeaponCompetition_Data[3322903]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3322903]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3322903]["DeleteItem"][1]["Id"]=3322903
tAugustWeaponCompetition_Data[3322903]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3322903]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3322903]["RewardItem"][1]["Id"]= 4050001
tAugustWeaponCompetition_Data[3322903]["RewardItem"][1]["Attr"] = "0 2 3"
tAugustWeaponCompetition_Data[3322903]["RewardStrengthValue"] = {}
tAugustWeaponCompetition_Data[3322903]["RewardStrengthValue"]["Value"] = 500

-- 3322904,'1500分神器珍宝包',9,
tAugustWeaponCompetition_Data[3322904]={}
tAugustWeaponCompetition_Data[3322904]["LogId"] =12001120
tAugustWeaponCompetition_Data[3322904]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3322904]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3322904]["DeleteItem"][1]["Id"]=3322904
tAugustWeaponCompetition_Data[3322904]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3322904]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3322904]["RewardItem"][1]["Id"]= 3009001
tAugustWeaponCompetition_Data[3322904]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
tAugustWeaponCompetition_Data[3322904]["RewardItem"][2]={}
tAugustWeaponCompetition_Data[3322904]["RewardItem"][2]["Id"]= 4050001
tAugustWeaponCompetition_Data[3322904]["RewardItem"][2]["Attr"] = "0 10 3"

-- 3322905,'2000分神器珍宝包',9,
tAugustWeaponCompetition_Data[3322905]={}
tAugustWeaponCompetition_Data[3322905]["LogId"] =12001120
tAugustWeaponCompetition_Data[3322905]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3322905]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3322905]["DeleteItem"][1]["Id"]=3322905
tAugustWeaponCompetition_Data[3322905]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3322905]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3322905]["RewardItem"][1]["Id"]= 3308948
tAugustWeaponCompetition_Data[3322905]["RewardItem"][1]["Attr"] = "0 1"
tAugustWeaponCompetition_Data[3322905]["RewardStrengthValue"] = {}
tAugustWeaponCompetition_Data[3322905]["RewardStrengthValue"]["Value"] = 1000


-- 3322906,'2800分神器珍宝包',9,
tAugustWeaponCompetition_Data[3322906]={}
tAugustWeaponCompetition_Data[3322906]["LogId"] =12001120
tAugustWeaponCompetition_Data[3322906]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3322906]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3322906]["DeleteItem"][1]["Id"]=3322906
tAugustWeaponCompetition_Data[3322906]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3322906]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3322906]["RewardItem"][1]["Id"]= 3009001
tAugustWeaponCompetition_Data[3322906]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
tAugustWeaponCompetition_Data[3322906]["RewardCultivation"] = {}
tAugustWeaponCompetition_Data[3322906]["RewardCultivation"]["Value"] = 2000

-- 3322907,'3000分神器珍宝包',9,
tAugustWeaponCompetition_Data[3322907]={}
tAugustWeaponCompetition_Data[3322907]["LogId"] =12001120
tAugustWeaponCompetition_Data[3322907]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3322907]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3322907]["DeleteItem"][1]["Id"]=3322907
tAugustWeaponCompetition_Data[3322907]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3322907]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3322907]["RewardItem"][1]["Id"]= 1088000
tAugustWeaponCompetition_Data[3322907]["RewardItem"][1]["Attr"] = "0 3 3"
tAugustWeaponCompetition_Data[3322907]["RewardRepairValue"] = {}
tAugustWeaponCompetition_Data[3322907]["RewardRepairValue"]["Value"] = 2000


-- 3322908,'3200分神器珍宝包',9,
tAugustWeaponCompetition_Data[3322908]={}
tAugustWeaponCompetition_Data[3322908]["LogId"] =12001120
tAugustWeaponCompetition_Data[3322908]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3322908]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3322908]["DeleteItem"][1]["Id"]=3322908
tAugustWeaponCompetition_Data[3322908]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3322908]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3322908]["RewardItem"][1]["Id"]= 3009001
tAugustWeaponCompetition_Data[3322908]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
tAugustWeaponCompetition_Data[3322908]["RewardItem"][2]={}
tAugustWeaponCompetition_Data[3322908]["RewardItem"][2]["Id"]= 3311759
tAugustWeaponCompetition_Data[3322908]["RewardItem"][2]["Attr"] = "0 2 3"

-- 3322909,'3500分神器珍宝包',9,
tAugustWeaponCompetition_Data[3322909]={}
tAugustWeaponCompetition_Data[3322909]["LogId"] =12001120
tAugustWeaponCompetition_Data[3322909]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3322909]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3322909]["DeleteItem"][1]["Id"]=3322909
tAugustWeaponCompetition_Data[3322909]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3322909]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3322909]["RewardItem"][1]["Id"]= 3009001
tAugustWeaponCompetition_Data[3322909]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
tAugustWeaponCompetition_Data[3322909]["RewardItem"][2]={}
tAugustWeaponCompetition_Data[3322909]["RewardItem"][2]["Id"]= 4050001
tAugustWeaponCompetition_Data[3322909]["RewardItem"][2]["Attr"] = "0 20 3"
tAugustWeaponCompetition_Data[3322909]["RewardItem"][3]={}
tAugustWeaponCompetition_Data[3322909]["RewardItem"][3]["Id"]= 3303373
tAugustWeaponCompetition_Data[3322909]["RewardItem"][3]["Attr"] = "0 3 3"

-- 3322910,'4000分神器珍藏礼盒',
tAugustWeaponCompetition_Data[3322910]={}
tAugustWeaponCompetition_Data[3322910]["LogId"] =12001120
tAugustWeaponCompetition_Data[3322910]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3322910]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3322910]["DeleteItem"][1]["Id"]=3322910
tAugustWeaponCompetition_Data[3322910]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3322910]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3322910]["RewardItem"][1]["Id"]= 3311759
tAugustWeaponCompetition_Data[3322910]["RewardItem"][1]["Attr"] = "0 3 3"
tAugustWeaponCompetition_Data[3322910]["RewardItem"][2]={}
tAugustWeaponCompetition_Data[3322910]["RewardItem"][2]["Id"]= 4050001
tAugustWeaponCompetition_Data[3322910]["RewardItem"][2]["Attr"] = "0 30 3"
tAugustWeaponCompetition_Data[3322910]["RewardItem"][3]={}
tAugustWeaponCompetition_Data[3322910]["RewardItem"][3]["Id"]= 3303373
tAugustWeaponCompetition_Data[3322910]["RewardItem"][3]["Attr"] = "0 5 3"

-- 3322911,'4500分神器珍藏礼盒',
tAugustWeaponCompetition_Data[3322911]={}
tAugustWeaponCompetition_Data[3322911]["LogId"] =12001120
tAugustWeaponCompetition_Data[3322911]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3322911]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3322911]["DeleteItem"][1]["Id"]=3322911
tAugustWeaponCompetition_Data[3322911]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3322911]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3322911]["RewardItem"][1]["Id"]= 3009002
tAugustWeaponCompetition_Data[3322911]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tAugustWeaponCompetition_Data[3322911]["RewardItem"][2]={}
tAugustWeaponCompetition_Data[3322911]["RewardItem"][2]["Id"]= 4050001
tAugustWeaponCompetition_Data[3322911]["RewardItem"][2]["Attr"] = "0 50 3"
tAugustWeaponCompetition_Data[3322911]["RewardItem"][3]={}
tAugustWeaponCompetition_Data[3322911]["RewardItem"][3]["Id"]= 3303373
tAugustWeaponCompetition_Data[3322911]["RewardItem"][3]["Attr"] = "0 8 3"

-- 3322912,'5000分神器珍藏礼盒',
tAugustWeaponCompetition_Data[3322912]={}
tAugustWeaponCompetition_Data[3322912]["LogId"] =12001120
tAugustWeaponCompetition_Data[3322912]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3322912]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3322912]["DeleteItem"][1]["Id"]=3322912
tAugustWeaponCompetition_Data[3322912]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3322912]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3322912]["RewardItem"][1]["Id"]= 3009002
tAugustWeaponCompetition_Data[3322912]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
tAugustWeaponCompetition_Data[3322912]["RewardItem"][2]={}
tAugustWeaponCompetition_Data[3322912]["RewardItem"][2]["Id"]= 4050001
tAugustWeaponCompetition_Data[3322912]["RewardItem"][2]["Attr"] = "0 80 3"
tAugustWeaponCompetition_Data[3322912]["RewardItem"][3]={}
tAugustWeaponCompetition_Data[3322912]["RewardItem"][3]["Id"]= 3303373
tAugustWeaponCompetition_Data[3322912]["RewardItem"][3]["Attr"] = "0 8 3"

-- 3322913,'5500分神器豪华礼盒',
tAugustWeaponCompetition_Data[3322913]={}
tAugustWeaponCompetition_Data[3322913]["LogId"] =12001120
tAugustWeaponCompetition_Data[3322913]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3322913]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3322913]["DeleteItem"][1]["Id"]=3322913
tAugustWeaponCompetition_Data[3322913]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3322913]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3322913]["RewardItem"][1]["Id"]= 3005412
tAugustWeaponCompetition_Data[3322913]["RewardItem"][1]["Attr"] = "0 2 3"
tAugustWeaponCompetition_Data[3322913]["RewardItem"][2]={}
tAugustWeaponCompetition_Data[3322913]["RewardItem"][2]["Id"]= 4050001
tAugustWeaponCompetition_Data[3322913]["RewardItem"][2]["Attr"] = "0 100 3"
tAugustWeaponCompetition_Data[3322913]["RewardItem"][3]={}
tAugustWeaponCompetition_Data[3322913]["RewardItem"][3]["Id"]= 3009101
tAugustWeaponCompetition_Data[3322913]["RewardItem"][3]["Attr"] = "0 8 3"

-- 3322914,'6000分神器至尊礼盒',
tAugustWeaponCompetition_Data[3322914]={}
tAugustWeaponCompetition_Data[3322914]["LogId"] =12001120
tAugustWeaponCompetition_Data[3322914]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3322914]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3322914]["DeleteItem"][1]["Id"]=3322914
tAugustWeaponCompetition_Data[3322914]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3322914]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3322914]["RewardItem"][1]["Id"]= 730007
tAugustWeaponCompetition_Data[3322914]["RewardItem"][1]["Attr"] = "0 1 3"
tAugustWeaponCompetition_Data[3322914]["RewardItem"][2]={}
tAugustWeaponCompetition_Data[3322914]["RewardItem"][2]["Id"]= 724002
tAugustWeaponCompetition_Data[3322914]["RewardItem"][2]["Attr"] = "0 3"

-- 3322915,'稀世神器典藏礼盒',9,
tAugustWeaponCompetition_Data[3322915]={}
tAugustWeaponCompetition_Data[3322915]["LogId"] =12001120
tAugustWeaponCompetition_Data[3322915]["DeleteItem"] = {}
tAugustWeaponCompetition_Data[3322915]["DeleteItem"][1]={}
tAugustWeaponCompetition_Data[3322915]["DeleteItem"][1]["Id"]=3322915
tAugustWeaponCompetition_Data[3322915]["RewardItem"] = {}
tAugustWeaponCompetition_Data[3322915]["RewardItem"][1]={}
tAugustWeaponCompetition_Data[3322915]["RewardItem"][1]["Id"]= 3311821
tAugustWeaponCompetition_Data[3322915]["RewardItem"][1]["Attr"] = "0 1 3"
tAugustWeaponCompetition_Data[3322915]["RewardItem"][2]={}
tAugustWeaponCompetition_Data[3322915]["RewardItem"][2]["Id"]= 3009101
tAugustWeaponCompetition_Data[3322915]["RewardItem"][2]["Attr"] = "0 5 3"
tAugustWeaponCompetition_Data[3322915]["RewardEMoneyMono"] = {}
tAugustWeaponCompetition_Data[3322915]["RewardEMoneyMono"]["Value"] = 1000



----------------------------------逻辑部分---------------------------------------------
--打开礼包
function AugustWeaponCompetition_OpenPackage(nItemId)
--检测物品
	if not Item_ChkItem(nItemId) then
		return
	end
--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tAugustWeaponCompetition_Data[nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tAugustWeaponCompetition_Data[nItemId])
	local nNeedSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nNeedSpace) then
		local sText=string.format(tAugustWeaponCompetition_Text["SystemTips"]["NoSpace"],nNeedSpace)
		User_TalkChannel2005(sText)
		return
	end
	--打开礼包
	if RewardTemplate_UseItem(tAugustWeaponCompetition_Data[nItemId]) then 
		return 
	end 
end

----------------------------------NPC部分---------------------------------------------

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3310166] = tItem[3310166] or {}
tItem[3310166]["Function"] = function(nItemId,sItemName)
	AugustWeaponCompetition_OpenPackage(nItemId)
end

tItem[3310167]=tItem[3310166]
tItem[3310168]=tItem[3310166]
tItem[3310169]=tItem[3310166]
tItem[3310170]=tItem[3310166]
tItem[3310171]=tItem[3310166]
tItem[3310172]=tItem[3310166]
tItem[3310173]=tItem[3310166]
tItem[3310174]=tItem[3310166]
tItem[3310175]=tItem[3310166]
tItem[3310176]=tItem[3310166]
tItem[3310177]=tItem[3310166]
tItem[3310178]=tItem[3310166]
tItem[3310179]=tItem[3310166]
tItem[3310180]=tItem[3310166]
tItem[3310181]=tItem[3310166]
tItem[3310182]=tItem[3310166]
tItem[3310183]=tItem[3310166]


-- 3322903,'1000分神器珍宝包',9,
-- 3322904,'1500分神器珍宝包',9,
-- 3322905,'2000分神器珍宝包',9,
-- 3322906,'2800分神器珍宝包',9,
-- 3322907,'3000分神器珍宝包',9,
-- 3322908,'3200分神器珍宝包',9,
-- 3322909,'3500分神器珍宝包',9,
-- 3322910,'4000分神器珍藏礼盒',
-- 3322911,'4500分神器珍藏礼盒',
-- 3322912,'5000分神器珍藏礼盒',
-- 3322913,'5500分神器豪华礼盒',
-- 3322914,'6000分神器至尊礼盒',
-- 3322915,'稀世神器典藏礼盒',9,
tItem[3322903]=tItem[3310166]
tItem[3322904]=tItem[3310166]
tItem[3322905]=tItem[3310166]
tItem[3322906]=tItem[3310166]
tItem[3322907]=tItem[3310166]
tItem[3322908]=tItem[3310166]
tItem[3322909]=tItem[3310166]
tItem[3322910]=tItem[3310166]
tItem[3322911]=tItem[3310166]
tItem[3322912]=tItem[3310166]
tItem[3322913]=tItem[3310166]
tItem[3322914]=tItem[3310166]
tItem[3322915]=tItem[3310166]
