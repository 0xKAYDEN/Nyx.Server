------------------------------------------------------------------------------------
--Name：            191105[英文征服][活动脚本]12月精准推送（12.03-12.30）
--Creator:      林嘉鑫
--Created:     2019-11-05
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
-- 命名前缀
-- tDecPrecisionPush_

----------------------------------表配置部分--------------------------------------------
local tDecPrecisionPush_Pack = {}
	-- ===神纹碎片精选包A
	-- ===索引: tDecPrecisionPush_Pack[3326858]
	-- ===删除: 3326858,1
	-- ===EmoneyLog: 350,22822
	tDecPrecisionPush_Pack[3326858] = {}
	tDecPrecisionPush_Pack[3326858]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326858]["EmoneyLog"] = "350	22822	0	0	1	"
	tDecPrecisionPush_Pack[3326858]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326858]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326858]["DeleteItem"][1]["Id"] = 3326858 -- 【库】GrandYellowRuneFragmentPack[属性:9]
	tDecPrecisionPush_Pack[3326858]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326858]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326858]["RewardItem"][1]["Id"] = 3311748 -- RareYellowRune(B)Fragment[3311748][属性:9][叠加:10000][金币:0], 【表格】赠稀有黄色神纹碎片*10
	tDecPrecisionPush_Pack[3326858]["RewardItem"][1]["Attr"] = "0 10 3" -- RareYellowRune(B)Fragment*10
	tDecPrecisionPush_Pack[3326858]["RewardItem"][2] = {}
	tDecPrecisionPush_Pack[3326858]["RewardItem"][2]["Id"] = 3306367 -- YellowRuneFragment[3306367][属性:0][叠加:10000][金币:0], 【表格】赠黄色神纹碎片*10
	tDecPrecisionPush_Pack[3326858]["RewardItem"][2]["Attr"] = "0 10 3" -- YellowRuneFragment（赠）*10
	tDecPrecisionPush_Pack[3326858]["RewardItem"][3] = {}
	tDecPrecisionPush_Pack[3326858]["RewardItem"][3]["Id"] = 3326898 -- RuneFragmentRandomPack[3326898][属性:9][叠加:0][金币:0], 【表格】赠黄色神纹碎片随机包*1
	tDecPrecisionPush_Pack[3326858]["RewardItem"][3]["Attr"] = "0 1" -- RuneFragmentRandomPack*1
	tDecPrecisionPush_Pack[3326858]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326858]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326858]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPush_Pack[3326859] = {}
	-- ===神纹碎片精选包B
	-- ===索引: tDecPrecisionPush_Pack[3326859]
	-- ===删除: 3326859,1
	-- ===EmoneyLog: 350,22823
	tDecPrecisionPush_Pack[3326859]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326859]["EmoneyLog"] = "350	22823	0	0	1	"
	tDecPrecisionPush_Pack[3326859]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326859]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326859]["DeleteItem"][1]["Id"] = 3326859 -- 【库】GrandBlueRuneFragmentPack[属性:9]
	tDecPrecisionPush_Pack[3326859]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326859]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326859]["RewardItem"][1]["Id"] = 3311748 -- RareYellowRune(B)Fragment[3311748][属性:9][叠加:10000][金币:0], 【表格】赠稀有黄色神纹碎片*10
	tDecPrecisionPush_Pack[3326859]["RewardItem"][1]["Attr"] = "0 10" -- RareYellowRune(B)Fragment*10
	tDecPrecisionPush_Pack[3326859]["RewardItem"][2] = {}
	tDecPrecisionPush_Pack[3326859]["RewardItem"][2]["Id"] = 3306368 -- BlueRuneFragment[3306368][属性:0][叠加:10000][金币:0], 【表格】赠蓝色神纹碎片*20
	tDecPrecisionPush_Pack[3326859]["RewardItem"][2]["Attr"] = "0 20 3" -- BlueRuneFragment（赠）*20（[错误]物品数量超10个）
	tDecPrecisionPush_Pack[3326859]["RewardItem"][3] = {}
	tDecPrecisionPush_Pack[3326859]["RewardItem"][3]["Id"] = 3326898 -- RuneFragmentRandomPack[3326898][属性:9][叠加:0][金币:0], 【表格】赠黄色神纹碎片随机包*1
	tDecPrecisionPush_Pack[3326859]["RewardItem"][3]["Attr"] = "0 1" -- RuneFragmentRandomPack*1
	tDecPrecisionPush_Pack[3326859]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326859]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326859]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPush_Pack[3326860] = {}
	-- ===神纹碎片精选包C
	-- ===索引: tDecPrecisionPush_Pack[3326860]
	-- ===删除: 3326860,1
	-- ===EmoneyLog: 350,22824
	tDecPrecisionPush_Pack[3326860]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326860]["EmoneyLog"] = "350	22824	0	0	1	"
	tDecPrecisionPush_Pack[3326860]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326860]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326860]["DeleteItem"][1]["Id"] = 3326860 -- 【库】GrandRuneFragmentPack[属性:9]
	tDecPrecisionPush_Pack[3326860]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326860]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326860]["RewardItem"][1]["Id"] = 3306367 -- YellowRuneFragment[3306367][属性:0][叠加:10000][金币:0], 【表格】赠黄色神纹碎片*20
	tDecPrecisionPush_Pack[3326860]["RewardItem"][1]["Attr"] = "0 20 3" -- YellowRuneFragment（赠）*20（[错误]物品数量超10个）
	tDecPrecisionPush_Pack[3326860]["RewardItem"][2] = {}
	tDecPrecisionPush_Pack[3326860]["RewardItem"][2]["Id"] = 3306368 -- BlueRuneFragment[3306368][属性:0][叠加:10000][金币:0], 【表格】赠蓝色神纹碎片*20
	tDecPrecisionPush_Pack[3326860]["RewardItem"][2]["Attr"] = "0 20 3" -- BlueRuneFragment（赠）*20（[错误]物品数量超10个）
	tDecPrecisionPush_Pack[3326860]["RewardItem"][3] = {}
	tDecPrecisionPush_Pack[3326860]["RewardItem"][3]["Id"] = 3326898 -- RuneFragmentRandomPack[3326898][属性:9][叠加:0][金币:0], 【表格】赠黄色神纹碎片随机包*1
	tDecPrecisionPush_Pack[3326860]["RewardItem"][3]["Attr"] = "0 1" -- RuneFragmentRandomPack*1
	tDecPrecisionPush_Pack[3326860]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326860]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326860]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPush_Pack[3326861] = {}
	-- ===神纹精粹精选包
	-- ===索引: tDecPrecisionPush_Pack[3326861]
	-- ===删除: 3326861,1
	-- ===EmoneyLog: 350,22825
	tDecPrecisionPush_Pack[3326861]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326861]["EmoneyLog"] = "350	22825	0	0	1	"
	tDecPrecisionPush_Pack[3326861]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326861]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326861]["DeleteItem"][1]["Id"] = 3326861 -- 【库】GrandRuneEssencePack[属性:9]
	tDecPrecisionPush_Pack[3326861]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326861]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326861]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】赠黄色神纹精粹*100
	tDecPrecisionPush_Pack[3326861]["RewardItem"][1]["Attr"] = "0 100 3" -- YellowRuneEssence（赠）*100
	tDecPrecisionPush_Pack[3326861]["RewardItem"][2] = {}
	tDecPrecisionPush_Pack[3326861]["RewardItem"][2]["Id"] = 4040001 -- BlueRuneEssence[4040001][属性:9][叠加:10000][金币:0], 【表格】赠蓝色神纹精粹*100
	tDecPrecisionPush_Pack[3326861]["RewardItem"][2]["Attr"] = "0 100 3" -- BlueRuneEssence（赠）*100
	tDecPrecisionPush_Pack[3326861]["RewardItem"][3] = {}
	tDecPrecisionPush_Pack[3326861]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*50
	tDecPrecisionPush_Pack[3326861]["RewardItem"][3]["Attr"] = "0 50 3" -- UniversalRuneEssence（赠）*50
	tDecPrecisionPush_Pack[3326861]["RewardItem"][4] = {}
	tDecPrecisionPush_Pack[3326861]["RewardItem"][4]["Id"] = 3312923 -- RuneEssencePromoPack[3312923][属性:9][叠加:0][金币:0], 【表格】神纹精粹特惠包*1
	tDecPrecisionPush_Pack[3326861]["RewardItem"][4]["Attr"] = "0 1" -- RuneEssencePromoPack*1
	tDecPrecisionPush_Pack[3326861]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326861]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326861]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPush_Pack[3326862] = {}
	-- ===超值尾兽饲料包
	-- ===索引: tDecPrecisionPush_Pack[3326862]
	-- ===删除: 3326862,1
	-- ===EmoneyLog: 350,22826
	tDecPrecisionPush_Pack[3326862]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326862]["EmoneyLog"] = "350	22826	0	0	1	"
	tDecPrecisionPush_Pack[3326862]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326862]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326862]["DeleteItem"][1]["Id"] = 3326862 -- 【库】EliteFruitPack[属性:9]
	tDecPrecisionPush_Pack[3326862]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326862]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326862]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】赠人参果*50
	tDecPrecisionPush_Pack[3326862]["RewardItem"][1]["Attr"] = "0 50" -- GinsengFruit*50（[错误]物品数量超10个）
	tDecPrecisionPush_Pack[3326862]["RewardItem"][2] = {}
	tDecPrecisionPush_Pack[3326862]["RewardItem"][2]["Id"] = 3009101 -- DragonFruit[3009101][属性:9][叠加:99][金币:0], 【表格】赠龙鳞果*15
	tDecPrecisionPush_Pack[3326862]["RewardItem"][2]["Attr"] = "0 15" -- DragonFruit*15（[错误]物品数量超10个）
	tDecPrecisionPush_Pack[3326862]["RewardItem"][3] = {}
	tDecPrecisionPush_Pack[3326862]["RewardItem"][3]["Id"] = 3009102 -- MoonFruit[3009102][属性:9][叠加:99][金币:0], 【表格】赠辉月果*5
	tDecPrecisionPush_Pack[3326862]["RewardItem"][3]["Attr"] = "0 5" -- MoonFruit*5
	tDecPrecisionPush_Pack[3326862]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326862]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326862]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPush_Pack[3326863] = {}
	-- ===超满足尾兽饲料包
	-- ===索引: tDecPrecisionPush_Pack[3326863]
	-- ===删除: 3326863,1
	-- ===EmoneyLog: 350,22827
	tDecPrecisionPush_Pack[3326863]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326863]["EmoneyLog"] = "350	22827	0	0	1	"
	tDecPrecisionPush_Pack[3326863]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326863]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326863]["DeleteItem"][1]["Id"] = 3326863 -- 【库】GrandFruitPack[属性:9]
	tDecPrecisionPush_Pack[3326863]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326863]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326863]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】赠人参果*100
	tDecPrecisionPush_Pack[3326863]["RewardItem"][1]["Attr"] = "0 100" -- GinsengFruit*100（[错误]物品数量超10个）
	tDecPrecisionPush_Pack[3326863]["RewardItem"][2] = {}
	tDecPrecisionPush_Pack[3326863]["RewardItem"][2]["Id"] = 3009101 -- DragonFruit[3009101][属性:9][叠加:99][金币:0], 【表格】赠龙鳞果*50
	tDecPrecisionPush_Pack[3326863]["RewardItem"][2]["Attr"] = "0 50" -- DragonFruit*50（[错误]物品数量超10个）
	tDecPrecisionPush_Pack[3326863]["RewardItem"][3] = {}
	tDecPrecisionPush_Pack[3326863]["RewardItem"][3]["Id"] = 3009102 -- MoonFruit[3009102][属性:9][叠加:99][金币:0], 【表格】赠辉月果*10
	tDecPrecisionPush_Pack[3326863]["RewardItem"][3]["Attr"] = "0 10" -- MoonFruit*10
	tDecPrecisionPush_Pack[3326863]["RewardItem"][4] = {}
	tDecPrecisionPush_Pack[3326863]["RewardItem"][4]["Id"] = 3009103 -- SoulFruit[3009103][属性:9][叠加:99][金币:0], 【表格】赠天灵果*5
	tDecPrecisionPush_Pack[3326863]["RewardItem"][4]["Attr"] = "0 5" -- SoulFruit*5
	tDecPrecisionPush_Pack[3326863]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326863]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326863]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPush_Pack[3326864] = {}
	-- ===极品宝石精选包
	-- ===索引: tDecPrecisionPush_Pack[3326864]
	-- ===删除: 3326864,1
	-- ===EmoneyLog: 350,22828
	tDecPrecisionPush_Pack[3326864]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326864]["EmoneyLog"] = "350	22828	0	0	1	"
	tDecPrecisionPush_Pack[3326864]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326864]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326864]["DeleteItem"][1]["Id"] = 3326864 -- 【库】GrandGemPack[属性:9]
	tDecPrecisionPush_Pack[3326864]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326864]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326864]["RewardItem"][1]["Id"] = 700103 -- ThunderGem[700103][属性:0][叠加:0][金币:0], 【表格】赠极品天怒宝石*1
	tDecPrecisionPush_Pack[3326864]["RewardItem"][1]["Attr"] = "0 1 3" -- ThunderGem（赠）*1
	tDecPrecisionPush_Pack[3326864]["RewardItem"][2] = {}
	tDecPrecisionPush_Pack[3326864]["RewardItem"][2]["Id"] = 700123 -- GloryGem[700123][属性:0][叠加:0][金币:0], 【表格】赠极品地灵宝石*1
	tDecPrecisionPush_Pack[3326864]["RewardItem"][2]["Attr"] = "0 1 3" -- GloryGem（赠）*1
	tDecPrecisionPush_Pack[3326864]["RewardItem"][3] = {}
	tDecPrecisionPush_Pack[3326864]["RewardItem"][3]["Id"] = 3326899 -- SuperGemRandomPack[3326899][属性:9][叠加:0][金币:0], 【表格】赠极品宝石礼包*1
	tDecPrecisionPush_Pack[3326864]["RewardItem"][3]["Attr"] = "0 1" -- SuperGemRandomPack*1
	tDecPrecisionPush_Pack[3326864]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326864]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326864]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPush_Pack[3326865] = {}
	-- ===7阶神魂精选包
	-- ===索引: tDecPrecisionPush_Pack[3326865]
	-- ===删除: 3326865,1
	-- ===EmoneyLog: 350,22829
	tDecPrecisionPush_Pack[3326865]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326865]["EmoneyLog"] = "350	22829	0	0	1	"
	tDecPrecisionPush_Pack[3326865]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326865]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326865]["DeleteItem"][1]["Id"] = 3326865 -- 【库】GrandP7SoulPack(B)[属性:9]
	tDecPrecisionPush_Pack[3326865]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326865]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326865]["RewardItem"][1]["Id"] = 3326872 -- P7WeaponSoulPack(B)[3326872][属性:9][叠加:0][金币:0], 【表格】7阶武器神魂必买包
	tDecPrecisionPush_Pack[3326865]["RewardItem"][1]["Attr"] = "0 1" -- P7WeaponSoulPack(B)*1
	tDecPrecisionPush_Pack[3326865]["RewardItem"][2] = {}
	tDecPrecisionPush_Pack[3326865]["RewardItem"][2]["Id"] = 3326874 -- P7ArmorSoulPack(B)[3326874][属性:9][叠加:0][金币:0], 【表格】7阶防具神魂必买包
	tDecPrecisionPush_Pack[3326865]["RewardItem"][2]["Attr"] = "0 1" -- P7ArmorSoulPack(B)*1
	tDecPrecisionPush_Pack[3326865]["RewardItem"][3] = {}
	tDecPrecisionPush_Pack[3326865]["RewardItem"][3]["Id"] = 3326876 -- P7SoulPack(B)[3326876][属性:9][叠加:0][金币:0], 【表格】七阶神魂礼包
	tDecPrecisionPush_Pack[3326865]["RewardItem"][3]["Attr"] = "0 1" -- P7SoulPack(B)*1
	tDecPrecisionPush_Pack[3326865]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326865]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326865]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPush_Pack[3326866] = {}
	-- ===7阶神魂精选包（激情服）
	-- ===索引: tDecPrecisionPush_Pack[3326866]
	-- ===删除: 3326866,1
	-- ===EmoneyLog: 350,22829
	tDecPrecisionPush_Pack[3326866]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326866]["EmoneyLog"] = "350	22829	0	0	1	"
	tDecPrecisionPush_Pack[3326866]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326866]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326866]["DeleteItem"][1]["Id"] = 3326866 -- 【库】GrandP7SoulPack[属性:0]
	tDecPrecisionPush_Pack[3326866]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326866]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326866]["RewardItem"][1]["Id"] = 3326873 -- P7WeaponSoulPack[3326873][属性:0][叠加:0][金币:0], 【表格】7阶武器神魂必买包
	tDecPrecisionPush_Pack[3326866]["RewardItem"][1]["Attr"] = "0 1" -- P7WeaponSoulPack*1
	tDecPrecisionPush_Pack[3326866]["RewardItem"][2] = {}
	tDecPrecisionPush_Pack[3326866]["RewardItem"][2]["Id"] = 3326875 -- P7ArmorSoulPack[3326875][属性:0][叠加:0][金币:0], 【表格】7阶防具神魂必买包
	tDecPrecisionPush_Pack[3326866]["RewardItem"][2]["Attr"] = "0 1" -- P7ArmorSoulPack*1
	tDecPrecisionPush_Pack[3326866]["RewardItem"][3] = {}
	tDecPrecisionPush_Pack[3326866]["RewardItem"][3]["Id"] = 3326877 -- P7SoulPack[3326877][属性:0][叠加:0][金币:0], 【表格】七阶神魂礼包
	tDecPrecisionPush_Pack[3326866]["RewardItem"][3]["Attr"] = "0 1" -- P7SoulPack*1
	tDecPrecisionPush_Pack[3326866]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326866]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326866]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPush_Pack[3326867] = {}
	-- ===赤炼石精选包A
	-- ===索引: tDecPrecisionPush_Pack[3326867]
	-- ===删除: 3326867,1
	-- ===EmoneyLog: 350,22830
	tDecPrecisionPush_Pack[3326867]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326867]["EmoneyLog"] = "350	22830	0	0	1	"
	tDecPrecisionPush_Pack[3326867]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326867]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326867]["DeleteItem"][1]["Id"] = 3326867 -- 【库】EliteStonePack[属性:9]
	tDecPrecisionPush_Pack[3326867]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326867]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326867]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】赠+3赤炼石*1
	tDecPrecisionPush_Pack[3326867]["RewardItem"][1]["Attr"] = "0 1 3" -- +3Stone（赠）*1
	tDecPrecisionPush_Pack[3326867]["RewardItem"][2] = {}
	tDecPrecisionPush_Pack[3326867]["RewardItem"][2]["Id"] = 730005 -- +5Stone[730005][属性:0][叠加:0][金币:0], 【表格】赠+5赤炼石*1
	tDecPrecisionPush_Pack[3326867]["RewardItem"][2]["Attr"] = "0 1 3" -- +5Stone（赠）*1
	tDecPrecisionPush_Pack[3326867]["RewardItem"][3] = {}
	tDecPrecisionPush_Pack[3326867]["RewardItem"][3]["Id"] = 3326900 -- Elite+StoneRandomPack[3326900][属性:9][叠加:0][金币:0], 【表格】赠中级赤炼石礼包*1
	tDecPrecisionPush_Pack[3326867]["RewardItem"][3]["Attr"] = "0 1" -- Elite+StoneRandomPack*1
	tDecPrecisionPush_Pack[3326867]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326867]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326867]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPush_Pack[3326868] = {}
	-- ===赤炼石精选包B
	-- ===索引: tDecPrecisionPush_Pack[3326868]
	-- ===删除: 3326868,1
	-- ===EmoneyLog: 350,22831
	tDecPrecisionPush_Pack[3326868]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326868]["EmoneyLog"] = "350	22831	0	0	1	"
	tDecPrecisionPush_Pack[3326868]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326868]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326868]["DeleteItem"][1]["Id"] = 3326868 -- 【库】GrandStonePack[属性:9]
	tDecPrecisionPush_Pack[3326868]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326868]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326868]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】赠+3赤炼石*1
	tDecPrecisionPush_Pack[3326868]["RewardItem"][1]["Attr"] = "0 1 3" -- +3Stone（赠）*1
	tDecPrecisionPush_Pack[3326868]["RewardItem"][2] = {}
	tDecPrecisionPush_Pack[3326868]["RewardItem"][2]["Id"] = 730006 -- +6Stone[730006][属性:0][叠加:0][金币:0], 【表格】赠+6赤炼石*1
	tDecPrecisionPush_Pack[3326868]["RewardItem"][2]["Attr"] = "0 1 3" -- +6Stone（赠）*1
	tDecPrecisionPush_Pack[3326868]["RewardItem"][3] = {}
	tDecPrecisionPush_Pack[3326868]["RewardItem"][3]["Id"] = 3326901 -- Grand+StoneRandomPack[3326901][属性:9][叠加:0][金币:0], 【表格】赠高级赤炼石礼包*1
	tDecPrecisionPush_Pack[3326868]["RewardItem"][3]["Attr"] = "0 1" -- Grand+StoneRandomPack*1
	tDecPrecisionPush_Pack[3326868]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326868]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326868]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPush_Pack[3326869] = {}
	-- ===星陨石精选包A
	-- ===索引: tDecPrecisionPush_Pack[3326869]
	-- ===删除: 3326869,1
	-- ===EmoneyLog: 350,22832
	tDecPrecisionPush_Pack[3326869]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326869]["EmoneyLog"] = "350	22832	0	0	1	"
	tDecPrecisionPush_Pack[3326869]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326869]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326869]["DeleteItem"][1]["Id"] = 3326869 -- 【库】EliteStarStonePack[属性:9]
	tDecPrecisionPush_Pack[3326869]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326869]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326869]["RewardItem"][1]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】赠微光星陨石*10
	tDecPrecisionPush_Pack[3326869]["RewardItem"][1]["Attr"] = "0 10 0 2880 1" -- 2天时效(激活)的TwilightStarStone*10
	tDecPrecisionPush_Pack[3326869]["RewardItem"][2] = {}
	tDecPrecisionPush_Pack[3326869]["RewardItem"][2]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】赠明亮星陨石*5
	tDecPrecisionPush_Pack[3326869]["RewardItem"][2]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tDecPrecisionPush_Pack[3326869]["RewardItem"][3] = {}
	tDecPrecisionPush_Pack[3326869]["RewardItem"][3]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】赠晶莹星陨石*1
	tDecPrecisionPush_Pack[3326869]["RewardItem"][3]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的RadiantStarStone*1
	tDecPrecisionPush_Pack[3326869]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326869]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326869]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPush_Pack[3326870] = {}
	-- ===星陨石精选包B
	-- ===索引: tDecPrecisionPush_Pack[3326870]
	-- ===删除: 3326870,1
	-- ===EmoneyLog: 350,22833
	tDecPrecisionPush_Pack[3326870]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326870]["EmoneyLog"] = "350	22833	0	0	1	"
	tDecPrecisionPush_Pack[3326870]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326870]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326870]["DeleteItem"][1]["Id"] = 3326870 -- 【库】GrandStarStonePack[属性:9]
	tDecPrecisionPush_Pack[3326870]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326870]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326870]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】赠明亮星陨石*10
	tDecPrecisionPush_Pack[3326870]["RewardItem"][1]["Attr"] = "0 10 0 2880 1" -- 2天时效(激活)的BrightStarStone*10
	tDecPrecisionPush_Pack[3326870]["RewardItem"][2] = {}
	tDecPrecisionPush_Pack[3326870]["RewardItem"][2]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】赠晶莹星陨石*5
	tDecPrecisionPush_Pack[3326870]["RewardItem"][2]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的RadiantStarStone*5
	tDecPrecisionPush_Pack[3326870]["RewardItem"][3] = {}
	tDecPrecisionPush_Pack[3326870]["RewardItem"][3]["Id"] = 3326902 -- GrandStarStoneRandomPack[3326902][属性:9][叠加:0][金币:0], 【表格】赠高级星陨石礼包*1
	tDecPrecisionPush_Pack[3326870]["RewardItem"][3]["Attr"] = "0 1" -- GrandStarStoneRandomPack*1
	tDecPrecisionPush_Pack[3326870]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326870]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326870]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPush_Pack[3326886] = {}
	-- ===一转特惠礼包
	-- ===索引: tDecPrecisionPush_Pack[3326886]
	-- ===删除: 3326886,1
	-- ===EmoneyLog: 350,22834
	tDecPrecisionPush_Pack[3326886]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326886]["EmoneyLog"] = "350	22834	0	0	1	"
	tDecPrecisionPush_Pack[3326886]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326886]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326886]["DeleteItem"][1]["Id"] = 3326886 -- 【库】1stRebirthPromoPack[属性:9]
	tDecPrecisionPush_Pack[3326886]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326886]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326886]["RewardItem"][1]["Id"] = 721259 -- CelestialStone[721259][属性:0][叠加:10][金币:0], 【表格】打开可获得赠涅槃灵石*1
	tDecPrecisionPush_Pack[3326886]["RewardItem"][1]["Attr"] = "0 1 3" -- CelestialStone（赠）*1
	tDecPrecisionPush_Pack[3326886]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326886]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326886]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPush_Pack[3326887] = {}
	-- ===一转特惠礼包（激情服）
	-- ===索引: tDecPrecisionPush_Pack[3326887]
	-- ===删除: 3326887,1
	-- ===EmoneyLog: 350,22834
	tDecPrecisionPush_Pack[3326887]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326887]["EmoneyLog"] = "350	22834	0	0	1	"
	tDecPrecisionPush_Pack[3326887]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326887]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326887]["DeleteItem"][1]["Id"] = 3326887 -- 【库】1stRebirthPromoPack[属性:0]
	tDecPrecisionPush_Pack[3326887]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326887]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326887]["RewardItem"][1]["Id"] = 721259 -- CelestialStone[721259][属性:0][叠加:10][金币:0], 【表格】打开可获得非赠涅槃灵石*1
	tDecPrecisionPush_Pack[3326887]["RewardItem"][1]["Attr"] = "0 1" -- CelestialStone*1
	tDecPrecisionPush_Pack[3326887]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326887]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326887]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPush_Pack[3326888] = {}
	-- ===二转特惠礼包
	-- ===索引: tDecPrecisionPush_Pack[3326888]
	-- ===删除: 3326888,1
	-- ===EmoneyLog: 350,22835
	tDecPrecisionPush_Pack[3326888]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326888]["EmoneyLog"] = "350	22835	0	0	1	"
	tDecPrecisionPush_Pack[3326888]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326888]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326888]["DeleteItem"][1]["Id"] = 3326888 -- 【库】2ndRebirthPromoPack[属性:9]
	tDecPrecisionPush_Pack[3326888]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326888]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326888]["RewardItem"][1]["Id"] = 723701 -- ExemptionToken[723701][属性:0][叠加:0][金币:0], 【表格】打开可获得赠免试金牌*1
	tDecPrecisionPush_Pack[3326888]["RewardItem"][1]["Attr"] = "0 1 3" -- ExemptionToken（赠）*1
	tDecPrecisionPush_Pack[3326888]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326888]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326888]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPush_Pack[3326889] = {}
	-- ===二转特惠礼包（激情服）
	-- ===索引: tDecPrecisionPush_Pack[3326889]
	-- ===删除: 3326889,1
	-- ===EmoneyLog: 350,22835
	tDecPrecisionPush_Pack[3326889]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326889]["EmoneyLog"] = "350	22835	0	0	1	"
	tDecPrecisionPush_Pack[3326889]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326889]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326889]["DeleteItem"][1]["Id"] = 3326889 -- 【库】2ndRebirthPromoPack[属性:0]
	tDecPrecisionPush_Pack[3326889]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326889]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326889]["RewardItem"][1]["Id"] = 723701 -- ExemptionToken[723701][属性:0][叠加:0][金币:0], 【表格】打开可获得非赠免试金牌*1
	tDecPrecisionPush_Pack[3326889]["RewardItem"][1]["Attr"] = "0 1" -- ExemptionToken*1
	tDecPrecisionPush_Pack[3326889]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326889]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326889]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPush_Pack[3326890] = {}
	-- ===爵位升级包A
	-- ===索引: tDecPrecisionPush_Pack[3326890]
	-- ===删除: 3326890,1
	-- ===EmoneyLog: 350,22836
	tDecPrecisionPush_Pack[3326890]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326890]["EmoneyLog"] = "350	22836	0	0	1	"
	tDecPrecisionPush_Pack[3326890]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326890]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326890]["DeleteItem"][1]["Id"] = 3326890 -- 【库】NobilityUpgradePack[属性:9]
	tDecPrecisionPush_Pack[3326890]["RewardDonate"] = {}
	tDecPrecisionPush_Pack[3326890]["RewardDonate"]["Value"] = 5000000 -- 贡献, 【需求】打开可获得5KK捐献值
	tDecPrecisionPush_Pack[3326890]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326890]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326890]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPush_Pack[3326891] = {}
	-- ===爵位升级包B
	-- ===索引: tDecPrecisionPush_Pack[3326891]
	-- ===删除: 3326891,1
	-- ===EmoneyLog: 350,22837
	tDecPrecisionPush_Pack[3326891]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326891]["EmoneyLog"] = "350	22837	0	0	1	"
	tDecPrecisionPush_Pack[3326891]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326891]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326891]["DeleteItem"][1]["Id"] = 3326891 -- 【库】AdvancedNobilityPack[属性:9]
	tDecPrecisionPush_Pack[3326891]["RewardDonate"] = {}
	tDecPrecisionPush_Pack[3326891]["RewardDonate"]["Value"] = 10000000 -- 贡献, 【需求】打开可获得10KK捐献值
	tDecPrecisionPush_Pack[3326891]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326891]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326891]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPush_Pack[3326892] = {}
	-- ===爵位升级包C
	-- ===索引: tDecPrecisionPush_Pack[3326892]
	-- ===删除: 3326892,1
	-- ===EmoneyLog: 350,22838
	tDecPrecisionPush_Pack[3326892]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326892]["EmoneyLog"] = "350	22838	0	0	1	"
	tDecPrecisionPush_Pack[3326892]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326892]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326892]["DeleteItem"][1]["Id"] = 3326892 -- 【库】LuxuriousNobilityPack[属性:9]
	tDecPrecisionPush_Pack[3326892]["RewardDonate"] = {}
	tDecPrecisionPush_Pack[3326892]["RewardDonate"]["Value"] = 20000000 -- 贡献, 【需求】打开可获得20KK捐献值
	tDecPrecisionPush_Pack[3326892]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326892]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326892]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPush_Pack[3326893] = {}
	-- ===补气包A
	-- ===索引: tDecPrecisionPush_Pack[3326893]
	-- ===删除: 3326893,1
	-- ===EmoneyLog: 350,22839
	tDecPrecisionPush_Pack[3326893]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326893]["EmoneyLog"] = "350	22839	0	0	1	"
	tDecPrecisionPush_Pack[3326893]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326893]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326893]["DeleteItem"][1]["Id"] = 3326893 -- 【库】ChiSupplyPack[属性:9]
	tDecPrecisionPush_Pack[3326893]["RewardStrengthValue"] = {}
	tDecPrecisionPush_Pack[3326893]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】打开可获得2000气力值
	tDecPrecisionPush_Pack[3326893]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326893]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326893]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPush_Pack[3326894] = {}
	-- ===补气包B
	-- ===索引: tDecPrecisionPush_Pack[3326894]
	-- ===删除: 3326894,1
	-- ===EmoneyLog: 350,22840
	tDecPrecisionPush_Pack[3326894]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326894]["EmoneyLog"] = "350	22840	0	0	1	"
	tDecPrecisionPush_Pack[3326894]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326894]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326894]["DeleteItem"][1]["Id"] = 3326894 -- 【库】EliteChiSupplyPack[属性:9]
	tDecPrecisionPush_Pack[3326894]["RewardStrengthValue"] = {}
	tDecPrecisionPush_Pack[3326894]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】打开可获得5000气力值
	tDecPrecisionPush_Pack[3326894]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326894]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326894]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPush_Pack[3326895] = {}
	-- ===补气包C
	-- ===索引: tDecPrecisionPush_Pack[3326895]
	-- ===删除: 3326895,1
	-- ===EmoneyLog: 350,22841
	tDecPrecisionPush_Pack[3326895]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326895]["EmoneyLog"] = "350	22841	0	0	1	"
	tDecPrecisionPush_Pack[3326895]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326895]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326895]["DeleteItem"][1]["Id"] = 3326895 -- 【库】GrandChiSupplyPack[属性:9]
	tDecPrecisionPush_Pack[3326895]["RewardStrengthValue"] = {}
	tDecPrecisionPush_Pack[3326895]["RewardStrengthValue"]["Value"] = 20000 -- 气力值, 【需求】打开可获得20000气力值
	tDecPrecisionPush_Pack[3326895]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326895]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326895]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPush_Pack[3326896] = {}
	-- ===极品宝石供应包A
	-- ===索引: tDecPrecisionPush_Pack[3326896]
	-- ===删除: 3326896,1
	-- ===EmoneyLog: 350,22842
	tDecPrecisionPush_Pack[3326896]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326896]["EmoneyLog"] = "350	22842	0	0	1	"
	tDecPrecisionPush_Pack[3326896]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326896]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326896]["DeleteItem"][1]["Id"] = 3326896 -- 【库】SuperThunderGemChest[属性:9]
	tDecPrecisionPush_Pack[3326896]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326896]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326896]["RewardItem"][1]["Id"] = 700103 -- ThunderGem[700103][属性:0][叠加:0][金币:0], 【表格】打开可获得赠极品天怒宝石*1
	tDecPrecisionPush_Pack[3326896]["RewardItem"][1]["Attr"] = "0 1 3" -- ThunderGem（赠）*1
	tDecPrecisionPush_Pack[3326896]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326896]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326896]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPush_Pack[3326897] = {}
	-- ===极品宝石供应包B
	-- ===索引: tDecPrecisionPush_Pack[3326897]
	-- ===删除: 3326897,1
	-- ===EmoneyLog: 350,22843
	tDecPrecisionPush_Pack[3326897]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326897]["EmoneyLog"] = "350	22843	0	0	1	"
	tDecPrecisionPush_Pack[3326897]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326897]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326897]["DeleteItem"][1]["Id"] = 3326897 -- 【库】SuperGloryGemChest[属性:9]
	tDecPrecisionPush_Pack[3326897]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326897]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326897]["RewardItem"][1]["Id"] = 700123 -- GloryGem[700123][属性:0][叠加:0][金币:0], 【表格】打开可获得赠极品地灵宝石*1
	tDecPrecisionPush_Pack[3326897]["RewardItem"][1]["Attr"] = "0 1 3" -- GloryGem（赠）*1
	tDecPrecisionPush_Pack[3326897]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326897]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326897]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPush_Pack[3326898] = {}
	-- ===黄色神纹碎片随机包
	-- ===索引: tDecPrecisionPush_Pack[3326898]
	-- ===删除: 3326898,1
	tDecPrecisionPush_Pack[3326898]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDecPrecisionPush_Pack[3326898]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326898]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326898]["DeleteItem"][1]["Id"] = 3326898 -- 【库】RuneFragmentRandomPack[属性:9]
	tDecPrecisionPush_Pack[3326898]["LogId"] = 12001725
	-- 5个黄色神纹碎片（赠） - 20%
	tDecPrecisionPush_Pack[3326898][1] = {}
	tDecPrecisionPush_Pack[3326898][1]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326898][1]["ItemChance"] = 2000
	tDecPrecisionPush_Pack[3326898][1]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326898][1]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326898][1]["RewardItem"][1]["Id"] = 3306370 -- YellowRuneFragment[3306370][属性:9][叠加:10000][金币:0], 【表格】5个黄色神纹碎片（赠）
	tDecPrecisionPush_Pack[3326898][1]["RewardItem"][1]["Attr"] = "0 5 3" -- YellowRuneFragment（赠）*5
	tDecPrecisionPush_Pack[3326898][1]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326898][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326898][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个黄色神纹碎片（赠） - 25%
	tDecPrecisionPush_Pack[3326898][2] = {}
	tDecPrecisionPush_Pack[3326898][2]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326898][2]["ItemChance"] = 2500
	tDecPrecisionPush_Pack[3326898][2]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326898][2]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326898][2]["RewardItem"][1]["Id"] = 3306370 -- YellowRuneFragment[3306370][属性:9][叠加:10000][金币:0], 【表格】10个黄色神纹碎片（赠）
	tDecPrecisionPush_Pack[3326898][2]["RewardItem"][1]["Attr"] = "0 10 3" -- YellowRuneFragment（赠）*10
	tDecPrecisionPush_Pack[3326898][2]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326898][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326898][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 15个黄色神纹碎片（赠） - 40%
	tDecPrecisionPush_Pack[3326898][3] = {}
	tDecPrecisionPush_Pack[3326898][3]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326898][3]["ItemChance"] = 4000
	tDecPrecisionPush_Pack[3326898][3]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326898][3]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326898][3]["RewardItem"][1]["Id"] = 3306370 -- YellowRuneFragment[3306370][属性:9][叠加:10000][金币:0], 【表格】15个黄色神纹碎片（赠）
	tDecPrecisionPush_Pack[3326898][3]["RewardItem"][1]["Attr"] = "0 15 3" -- YellowRuneFragment（赠）*15
	tDecPrecisionPush_Pack[3326898][3]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326898][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326898][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 20个黄色神纹碎片（赠） - 14.9%
	tDecPrecisionPush_Pack[3326898][4] = {}
	tDecPrecisionPush_Pack[3326898][4]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326898][4]["ItemChance"] = 1490
	tDecPrecisionPush_Pack[3326898][4]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326898][4]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326898][4]["RewardItem"][1]["Id"] = 3306370 -- YellowRuneFragment[3306370][属性:9][叠加:10000][金币:0], 【表格】20个黄色神纹碎片（赠）
	tDecPrecisionPush_Pack[3326898][4]["RewardItem"][1]["Attr"] = "0 20 3" -- YellowRuneFragment（赠）*20
	tDecPrecisionPush_Pack[3326898][4]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326898][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326898][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 40个黄色神纹碎片（赠） - 0.1%
	tDecPrecisionPush_Pack[3326898][5] = {}
	tDecPrecisionPush_Pack[3326898][5]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326898][5]["ItemChance"] = 10
	tDecPrecisionPush_Pack[3326898][5]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326898][5]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326898][5]["RewardItem"][1]["Id"] = 3306370 -- YellowRuneFragment[3306370][属性:9][叠加:10000][金币:0], 【表格】40个黄色神纹碎片（赠）
	tDecPrecisionPush_Pack[3326898][5]["RewardItem"][1]["Attr"] = "0 40 3" -- YellowRuneFragment（赠）*40
	tDecPrecisionPush_Pack[3326898][5]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326898][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326898][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 60个黄色神纹碎片（赠） - 0%
	tDecPrecisionPush_Pack[3326898][6] = {}
	tDecPrecisionPush_Pack[3326898][6]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326898][6]["ItemChance"] = 0
	tDecPrecisionPush_Pack[3326898][6]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326898][6]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326898][6]["RewardItem"][1]["Id"] = 3306370 -- YellowRuneFragment[3306370][属性:9][叠加:10000][金币:0], 【表格】60个黄色神纹碎片（赠）
	tDecPrecisionPush_Pack[3326898][6]["RewardItem"][1]["Attr"] = "0 60 3" -- YellowRuneFragment（赠）*60
	tDecPrecisionPush_Pack[3326898][6]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326898][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326898][6]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPush_Pack[3326899] = {}
	-- ===极品宝石礼包
	-- ===索引: tDecPrecisionPush_Pack[3326899]
	-- ===删除: 3326899,1
	tDecPrecisionPush_Pack[3326899]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDecPrecisionPush_Pack[3326899]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326899]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326899]["DeleteItem"][1]["Id"] = 3326899 -- 【库】SuperGemRandomPack[属性:9]
	tDecPrecisionPush_Pack[3326899]["LogId"] = 12001725
	-- 极品天怒宝石 - 33%
	tDecPrecisionPush_Pack[3326899][1] = {}
	tDecPrecisionPush_Pack[3326899][1]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326899][1]["ItemChance"] = 3300
	tDecPrecisionPush_Pack[3326899][1]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326899][1]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326899][1]["RewardItem"][1]["Id"] = 700103 -- ThunderGem[700103][属性:0][叠加:0][金币:0], 【表格】极品天怒宝石
	tDecPrecisionPush_Pack[3326899][1]["RewardItem"][1]["Attr"] = "0 2 3" -- ThunderGem（赠）*2
	tDecPrecisionPush_Pack[3326899][1]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326899][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326899][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 极品地灵宝石 - 33%
	tDecPrecisionPush_Pack[3326899][2] = {}
	tDecPrecisionPush_Pack[3326899][2]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326899][2]["ItemChance"] = 3300
	tDecPrecisionPush_Pack[3326899][2]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326899][2]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326899][2]["RewardItem"][1]["Id"] = 700123 -- GloryGem[700123][属性:0][叠加:0][金币:0], 【表格】极品地灵宝石
	tDecPrecisionPush_Pack[3326899][2]["RewardItem"][1]["Attr"] = "0 2 3" -- GloryGem（赠）*2
	tDecPrecisionPush_Pack[3326899][2]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326899][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326899][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 极品天怒+极品地灵 - 34%
	tDecPrecisionPush_Pack[3326899][3] = {}
	tDecPrecisionPush_Pack[3326899][3]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326899][3]["ItemChance"] = 3400
	tDecPrecisionPush_Pack[3326899][3]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326899][3]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326899][3]["RewardItem"][1]["Id"] = 700103 -- ThunderGem[700103][属性:0][叠加:0][金币:0], 【表格】极品天怒+极品地灵
	tDecPrecisionPush_Pack[3326899][3]["RewardItem"][1]["Attr"] = "0 1 3" -- ThunderGem（赠）*1
	tDecPrecisionPush_Pack[3326899][3]["RewardItem"][2] = {}
	tDecPrecisionPush_Pack[3326899][3]["RewardItem"][2]["Id"] = 700123 -- GloryGem[700123][属性:0][叠加:0][金币:0]
	tDecPrecisionPush_Pack[3326899][3]["RewardItem"][2]["Attr"] = "0 1 3" -- GloryGem（赠）*1
	tDecPrecisionPush_Pack[3326899][3]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326899][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326899][3]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPush_Pack[3326900] = {}
	-- ===中级赤炼石礼包
	-- ===索引: tDecPrecisionPush_Pack[3326900]
	-- ===删除: 3326900,1
	tDecPrecisionPush_Pack[3326900]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDecPrecisionPush_Pack[3326900]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326900]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326900]["DeleteItem"][1]["Id"] = 3326900 -- 【库】Elite+StoneRandomPack[属性:9]
	tDecPrecisionPush_Pack[3326900]["LogId"] = 12001725
	-- +4赤炼石*2 - 65%
	tDecPrecisionPush_Pack[3326900][1] = {}
	tDecPrecisionPush_Pack[3326900][1]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326900][1]["ItemChance"] = 6500
	tDecPrecisionPush_Pack[3326900][1]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326900][1]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326900][1]["RewardItem"][1]["Id"] = 730004 -- +4Stone[730004][属性:0][叠加:0][金币:0], 【表格】+4赤炼石*2
	tDecPrecisionPush_Pack[3326900][1]["RewardItem"][1]["Attr"] = "0 2 3" -- +4Stone（赠）*2
	tDecPrecisionPush_Pack[3326900][1]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326900][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326900][1]["RewardEffect"]["Effect"] = "angelwing"
	-- +4赤炼石*3 - 35%
	tDecPrecisionPush_Pack[3326900][2] = {}
	tDecPrecisionPush_Pack[3326900][2]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326900][2]["ItemChance"] = 3500
	tDecPrecisionPush_Pack[3326900][2]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326900][2]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326900][2]["RewardItem"][1]["Id"] = 730004 -- +4Stone[730004][属性:0][叠加:0][金币:0], 【表格】+4赤炼石*3
	tDecPrecisionPush_Pack[3326900][2]["RewardItem"][1]["Attr"] = "0 3 3" -- +4Stone（赠）*3
	tDecPrecisionPush_Pack[3326900][2]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326900][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326900][2]["RewardEffect"]["Effect"] = "angelwing"
	-- +4赤炼石*4 - 0%
	tDecPrecisionPush_Pack[3326900][3] = {}
	tDecPrecisionPush_Pack[3326900][3]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326900][3]["ItemChance"] = 0
	tDecPrecisionPush_Pack[3326900][3]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326900][3]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326900][3]["RewardItem"][1]["Id"] = 730004 -- +4Stone[730004][属性:0][叠加:0][金币:0], 【表格】+4赤炼石*4
	tDecPrecisionPush_Pack[3326900][3]["RewardItem"][1]["Attr"] = "0 4 3" -- +4Stone（赠）*4
	tDecPrecisionPush_Pack[3326900][3]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326900][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326900][3]["RewardEffect"]["Effect"] = "angelwing"
	-- +4赤炼石*5 - 0%
	tDecPrecisionPush_Pack[3326900][4] = {}
	tDecPrecisionPush_Pack[3326900][4]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326900][4]["ItemChance"] = 0
	tDecPrecisionPush_Pack[3326900][4]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326900][4]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326900][4]["RewardItem"][1]["Id"] = 730004 -- +4Stone[730004][属性:0][叠加:0][金币:0], 【表格】+4赤炼石*5
	tDecPrecisionPush_Pack[3326900][4]["RewardItem"][1]["Attr"] = "0 5 3" -- +4Stone（赠）*5
	tDecPrecisionPush_Pack[3326900][4]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326900][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326900][4]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPush_Pack[3326901] = {}
	-- ===高级赤炼石礼包
	-- ===索引: tDecPrecisionPush_Pack[3326901]
	-- ===删除: 3326901,1
	tDecPrecisionPush_Pack[3326901]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDecPrecisionPush_Pack[3326901]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326901]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326901]["DeleteItem"][1]["Id"] = 3326901 -- 【库】Grand+StoneRandomPack[属性:9]
	tDecPrecisionPush_Pack[3326901]["LogId"] = 12001725
	-- +5赤炼石*2 - 65%
	tDecPrecisionPush_Pack[3326901][1] = {}
	tDecPrecisionPush_Pack[3326901][1]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326901][1]["ItemChance"] = 6500
	tDecPrecisionPush_Pack[3326901][1]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326901][1]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326901][1]["RewardItem"][1]["Id"] = 730005 -- +5Stone[730005][属性:0][叠加:0][金币:0], 【表格】+5赤炼石*2
	tDecPrecisionPush_Pack[3326901][1]["RewardItem"][1]["Attr"] = "0 2 3" -- +5Stone（赠）*2
	tDecPrecisionPush_Pack[3326901][1]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326901][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326901][1]["RewardEffect"]["Effect"] = "angelwing"
	-- +5赤炼石*3 - 35%
	tDecPrecisionPush_Pack[3326901][2] = {}
	tDecPrecisionPush_Pack[3326901][2]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326901][2]["ItemChance"] = 3500
	tDecPrecisionPush_Pack[3326901][2]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326901][2]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326901][2]["RewardItem"][1]["Id"] = 730005 -- +5Stone[730005][属性:0][叠加:0][金币:0], 【表格】+5赤炼石*3
	tDecPrecisionPush_Pack[3326901][2]["RewardItem"][1]["Attr"] = "0 3 3" -- +5Stone（赠）*3
	tDecPrecisionPush_Pack[3326901][2]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326901][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326901][2]["RewardEffect"]["Effect"] = "angelwing"
	-- +5赤炼石*4 - 0%
	tDecPrecisionPush_Pack[3326901][3] = {}
	tDecPrecisionPush_Pack[3326901][3]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326901][3]["ItemChance"] = 0
	tDecPrecisionPush_Pack[3326901][3]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326901][3]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326901][3]["RewardItem"][1]["Id"] = 730005 -- +5Stone[730005][属性:0][叠加:0][金币:0], 【表格】+5赤炼石*4
	tDecPrecisionPush_Pack[3326901][3]["RewardItem"][1]["Attr"] = "0 4 3" -- +5Stone（赠）*4
	tDecPrecisionPush_Pack[3326901][3]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326901][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326901][3]["RewardEffect"]["Effect"] = "angelwing"
	-- +5赤炼石*5 - 0%
	tDecPrecisionPush_Pack[3326901][4] = {}
	tDecPrecisionPush_Pack[3326901][4]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326901][4]["ItemChance"] = 0
	tDecPrecisionPush_Pack[3326901][4]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326901][4]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326901][4]["RewardItem"][1]["Id"] = 730005 -- +5Stone[730005][属性:0][叠加:0][金币:0], 【表格】+5赤炼石*5
	tDecPrecisionPush_Pack[3326901][4]["RewardItem"][1]["Attr"] = "0 5 3" -- +5Stone（赠）*5
	tDecPrecisionPush_Pack[3326901][4]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326901][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326901][4]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPush_Pack[3326902] = {}
	-- ===高级星陨石礼包
	-- ===索引: tDecPrecisionPush_Pack[3326902]
	-- ===删除: 3326902,1
	tDecPrecisionPush_Pack[3326902]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDecPrecisionPush_Pack[3326902]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326902]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326902]["DeleteItem"][1]["Id"] = 3326902 -- 【库】GrandStarStoneRandomPack[属性:9]
	tDecPrecisionPush_Pack[3326902]["LogId"] = 12001725
	-- 晶莹星陨石*5-- 【必给】
	tDecPrecisionPush_Pack[3326902][1] = {}
	tDecPrecisionPush_Pack[3326902][1]["RandomItemChanceType"] = 1
	tDecPrecisionPush_Pack[3326902][1]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326902][1]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326902][1]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*5
	tDecPrecisionPush_Pack[3326902][1]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的RadiantStarStone*5
	tDecPrecisionPush_Pack[3326902][1]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326902][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326902][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石*1 - 65%
	tDecPrecisionPush_Pack[3326902][2] = {}
	tDecPrecisionPush_Pack[3326902][2]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326902][2]["ItemChance"] = 6500
	tDecPrecisionPush_Pack[3326902][2]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326902][2]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326902][2]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*1
	tDecPrecisionPush_Pack[3326902][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tDecPrecisionPush_Pack[3326902][2]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326902][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326902][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 晶莹星陨石*1 - 35%
	tDecPrecisionPush_Pack[3326902][3] = {}
	tDecPrecisionPush_Pack[3326902][3]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326902][3]["ItemChance"] = 3500
	tDecPrecisionPush_Pack[3326902][3]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326902][3]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326902][3]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*1
	tDecPrecisionPush_Pack[3326902][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的RadiantStarStone*1
	tDecPrecisionPush_Pack[3326902][3]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326902][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326902][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 璀璨星陨石*1 - 0%
	tDecPrecisionPush_Pack[3326902][4] = {}
	tDecPrecisionPush_Pack[3326902][4]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326902][4]["ItemChance"] = 0
	tDecPrecisionPush_Pack[3326902][4]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326902][4]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326902][4]["RewardItem"][1]["Id"] = 3009003 -- SplendidStarStone[3009003][属性:9][叠加:0][金币:0], 【表格】璀璨星陨石*1
	tDecPrecisionPush_Pack[3326902][4]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的SplendidStarStone*1
	tDecPrecisionPush_Pack[3326902][4]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326902][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326902][4]["RewardEffect"]["Effect"] = "angelwing"


	--P7武器神魂可选包（赠）
	tDecPrecisionPush_Pack[3326872] = {}
	tDecPrecisionPush_Pack[3326872][21] = {}
	tDecPrecisionPush_Pack[3326872][21]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326872][21]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326872][21]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][21]["RewardItem"][1]["Id"] = 800020
	tDecPrecisionPush_Pack[3326872][21]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326872][21]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326872][21]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][21]["DeleteItem"][1]["Id"] = 3326872
	
	tDecPrecisionPush_Pack[3326872][22] = {}
	tDecPrecisionPush_Pack[3326872][22]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326872][22]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326872][22]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][22]["RewardItem"][1]["Id"] = 800111
	tDecPrecisionPush_Pack[3326872][22]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326872][22]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326872][22]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][22]["DeleteItem"][1]["Id"] = 3326872
	
	tDecPrecisionPush_Pack[3326872][23] = {}
	tDecPrecisionPush_Pack[3326872][23]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326872][23]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326872][23]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][23]["RewardItem"][1]["Id"] = 800215
	tDecPrecisionPush_Pack[3326872][23]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326872][23]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326872][23]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][23]["DeleteItem"][1]["Id"] = 3326872
	
	tDecPrecisionPush_Pack[3326872][24] = {}
	tDecPrecisionPush_Pack[3326872][24]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326872][24]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326872][24]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][24]["RewardItem"][1]["Id"] = 800811
	tDecPrecisionPush_Pack[3326872][24]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326872][24]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326872][24]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][24]["DeleteItem"][1]["Id"] = 3326872
	
	tDecPrecisionPush_Pack[3326872][25] = {}
	tDecPrecisionPush_Pack[3326872][25]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326872][25]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326872][25]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][25]["RewardItem"][1]["Id"] = 800810
	tDecPrecisionPush_Pack[3326872][25]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326872][25]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326872][25]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][25]["DeleteItem"][1]["Id"] = 3326872
	
	tDecPrecisionPush_Pack[3326872][26] = {}
	tDecPrecisionPush_Pack[3326872][26]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326872][26]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326872][26]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][26]["RewardItem"][1]["Id"] = 800142
	tDecPrecisionPush_Pack[3326872][26]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326872][26]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326872][26]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][26]["DeleteItem"][1]["Id"] = 3326872
	
	tDecPrecisionPush_Pack[3326872][31] = {}
	tDecPrecisionPush_Pack[3326872][31]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326872][31]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326872][31]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][31]["RewardItem"][1]["Id"] = 800917
	tDecPrecisionPush_Pack[3326872][31]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326872][31]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326872][31]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][31]["DeleteItem"][1]["Id"] = 3326872
	
	tDecPrecisionPush_Pack[3326872][32] = {}
	tDecPrecisionPush_Pack[3326872][32]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326872][32]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326872][32]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][32]["RewardItem"][1]["Id"] = 800255
	tDecPrecisionPush_Pack[3326872][32]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326872][32]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326872][32]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][32]["DeleteItem"][1]["Id"] = 3326872
	
	tDecPrecisionPush_Pack[3326872][33] = {}
	tDecPrecisionPush_Pack[3326872][33]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326872][33]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326872][33]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][33]["RewardItem"][1]["Id"] = 800422
	tDecPrecisionPush_Pack[3326872][33]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326872][33]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326872][33]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][33]["DeleteItem"][1]["Id"] = 3326872
	
	tDecPrecisionPush_Pack[3326872][34] = {}
	tDecPrecisionPush_Pack[3326872][34]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326872][34]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326872][34]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][34]["RewardItem"][1]["Id"] = 800522
	tDecPrecisionPush_Pack[3326872][34]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326872][34]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326872][34]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][34]["DeleteItem"][1]["Id"] = 3326872
	
	tDecPrecisionPush_Pack[3326872][35] = {}
	tDecPrecisionPush_Pack[3326872][35]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326872][35]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326872][35]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][35]["RewardItem"][1]["Id"] = 800618
	tDecPrecisionPush_Pack[3326872][35]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326872][35]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326872][35]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][35]["DeleteItem"][1]["Id"] = 3326872
	
	tDecPrecisionPush_Pack[3326872][41] = {}
	tDecPrecisionPush_Pack[3326872][41]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326872][41]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326872][41]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][41]["RewardItem"][1]["Id"] = 800725
	tDecPrecisionPush_Pack[3326872][41]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326872][41]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326872][41]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][41]["DeleteItem"][1]["Id"] = 3326872
	
	tDecPrecisionPush_Pack[3326872][42] = {}
	tDecPrecisionPush_Pack[3326872][42]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326872][42]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326872][42]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][42]["RewardItem"][1]["Id"] = 801004
	tDecPrecisionPush_Pack[3326872][42]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326872][42]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326872][42]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][42]["DeleteItem"][1]["Id"] = 3326872
	
	tDecPrecisionPush_Pack[3326872][43] = {}
	tDecPrecisionPush_Pack[3326872][43]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326872][43]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326872][43]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][43]["RewardItem"][1]["Id"] = 801104
	tDecPrecisionPush_Pack[3326872][43]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326872][43]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326872][43]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][43]["DeleteItem"][1]["Id"] = 3326872
	
	tDecPrecisionPush_Pack[3326872][44] = {}
	tDecPrecisionPush_Pack[3326872][44]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326872][44]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326872][44]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][44]["RewardItem"][1]["Id"] = 801216
	tDecPrecisionPush_Pack[3326872][44]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326872][44]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326872][44]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][44]["DeleteItem"][1]["Id"] = 3326872
	
	tDecPrecisionPush_Pack[3326872][45] = {}
	tDecPrecisionPush_Pack[3326872][45]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326872][45]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326872][45]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][45]["RewardItem"][1]["Id"] = 801218
	tDecPrecisionPush_Pack[3326872][45]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326872][45]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326872][45]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][45]["DeleteItem"][1]["Id"] = 3326872
	
	tDecPrecisionPush_Pack[3326872][46] = {}
	tDecPrecisionPush_Pack[3326872][46]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326872][46]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326872][46]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][46]["RewardItem"][1]["Id"] = 801308
	tDecPrecisionPush_Pack[3326872][46]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326872][46]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326872][46]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326872][46]["DeleteItem"][1]["Id"] = 3326872


	--P7武器神魂可选包
	tDecPrecisionPush_Pack[3326873] = {}
	tDecPrecisionPush_Pack[3326873][21] = {}
	tDecPrecisionPush_Pack[3326873][21]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326873][21]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326873][21]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][21]["RewardItem"][1]["Id"] = 800020
	tDecPrecisionPush_Pack[3326873][21]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326873][21]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326873][21]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][21]["DeleteItem"][1]["Id"] = 3326873
	
	tDecPrecisionPush_Pack[3326873][22] = {}
	tDecPrecisionPush_Pack[3326873][22]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326873][22]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326873][22]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][22]["RewardItem"][1]["Id"] = 800111
	tDecPrecisionPush_Pack[3326873][22]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326873][22]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326873][22]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][22]["DeleteItem"][1]["Id"] = 3326873
	
	tDecPrecisionPush_Pack[3326873][23] = {}
	tDecPrecisionPush_Pack[3326873][23]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326873][23]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326873][23]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][23]["RewardItem"][1]["Id"] = 800215
	tDecPrecisionPush_Pack[3326873][23]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326873][23]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326873][23]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][23]["DeleteItem"][1]["Id"] = 3326873
	
	tDecPrecisionPush_Pack[3326873][24] = {}
	tDecPrecisionPush_Pack[3326873][24]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326873][24]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326873][24]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][24]["RewardItem"][1]["Id"] = 800811
	tDecPrecisionPush_Pack[3326873][24]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326873][24]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326873][24]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][24]["DeleteItem"][1]["Id"] = 3326873
	
	tDecPrecisionPush_Pack[3326873][25] = {}
	tDecPrecisionPush_Pack[3326873][25]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326873][25]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326873][25]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][25]["RewardItem"][1]["Id"] = 800810
	tDecPrecisionPush_Pack[3326873][25]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326873][25]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326873][25]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][25]["DeleteItem"][1]["Id"] = 3326873
	
	tDecPrecisionPush_Pack[3326873][26] = {}
	tDecPrecisionPush_Pack[3326873][26]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326873][26]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326873][26]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][26]["RewardItem"][1]["Id"] = 800142
	tDecPrecisionPush_Pack[3326873][26]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326873][26]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326873][26]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][26]["DeleteItem"][1]["Id"] = 3326873
	
	tDecPrecisionPush_Pack[3326873][31] = {}
	tDecPrecisionPush_Pack[3326873][31]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326873][31]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326873][31]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][31]["RewardItem"][1]["Id"] = 800917
	tDecPrecisionPush_Pack[3326873][31]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326873][31]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326873][31]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][31]["DeleteItem"][1]["Id"] = 3326873
	
	tDecPrecisionPush_Pack[3326873][32] = {}
	tDecPrecisionPush_Pack[3326873][32]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326873][32]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326873][32]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][32]["RewardItem"][1]["Id"] = 800255
	tDecPrecisionPush_Pack[3326873][32]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326873][32]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326873][32]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][32]["DeleteItem"][1]["Id"] = 3326873
	
	tDecPrecisionPush_Pack[3326873][33] = {}
	tDecPrecisionPush_Pack[3326873][33]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326873][33]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326873][33]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][33]["RewardItem"][1]["Id"] = 800422
	tDecPrecisionPush_Pack[3326873][33]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326873][33]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326873][33]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][33]["DeleteItem"][1]["Id"] = 3326873
	
	tDecPrecisionPush_Pack[3326873][34] = {}
	tDecPrecisionPush_Pack[3326873][34]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326873][34]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326873][34]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][34]["RewardItem"][1]["Id"] = 800522
	tDecPrecisionPush_Pack[3326873][34]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326873][34]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326873][34]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][34]["DeleteItem"][1]["Id"] = 3326873
	
	tDecPrecisionPush_Pack[3326873][35] = {}
	tDecPrecisionPush_Pack[3326873][35]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326873][35]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326873][35]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][35]["RewardItem"][1]["Id"] = 800618
	tDecPrecisionPush_Pack[3326873][35]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326873][35]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326873][35]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][35]["DeleteItem"][1]["Id"] = 3326873
	
	tDecPrecisionPush_Pack[3326873][41] = {}
	tDecPrecisionPush_Pack[3326873][41]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326873][41]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326873][41]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][41]["RewardItem"][1]["Id"] = 800725
	tDecPrecisionPush_Pack[3326873][41]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326873][41]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326873][41]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][41]["DeleteItem"][1]["Id"] = 3326873
	
	tDecPrecisionPush_Pack[3326873][42] = {}
	tDecPrecisionPush_Pack[3326873][42]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326873][42]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326873][42]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][42]["RewardItem"][1]["Id"] = 801004
	tDecPrecisionPush_Pack[3326873][42]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326873][42]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326873][42]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][42]["DeleteItem"][1]["Id"] = 3326873
	
	tDecPrecisionPush_Pack[3326873][43] = {}
	tDecPrecisionPush_Pack[3326873][43]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326873][43]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326873][43]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][43]["RewardItem"][1]["Id"] = 801104
	tDecPrecisionPush_Pack[3326873][43]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326873][43]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326873][43]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][43]["DeleteItem"][1]["Id"] = 3326873
	
	tDecPrecisionPush_Pack[3326873][44] = {}
	tDecPrecisionPush_Pack[3326873][44]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326873][44]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326873][44]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][44]["RewardItem"][1]["Id"] = 801216
	tDecPrecisionPush_Pack[3326873][44]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326873][44]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326873][44]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][44]["DeleteItem"][1]["Id"] = 3326873
	
	tDecPrecisionPush_Pack[3326873][45] = {}
	tDecPrecisionPush_Pack[3326873][45]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326873][45]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326873][45]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][45]["RewardItem"][1]["Id"] = 801218
	tDecPrecisionPush_Pack[3326873][45]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326873][45]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326873][45]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][45]["DeleteItem"][1]["Id"] = 3326873
	
	tDecPrecisionPush_Pack[3326873][46] = {}
	tDecPrecisionPush_Pack[3326873][46]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326873][46]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326873][46]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][46]["RewardItem"][1]["Id"] = 801308
	tDecPrecisionPush_Pack[3326873][46]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326873][46]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326873][46]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326873][46]["DeleteItem"][1]["Id"] = 3326873


	-- P7防具神魂可选包（赠）
	tDecPrecisionPush_Pack[3326874] = {}
	tDecPrecisionPush_Pack[3326874][31] = {}
	tDecPrecisionPush_Pack[3326874][31]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326874][31]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326874][31]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][31]["RewardItem"][1]["Id"] = 820073
	tDecPrecisionPush_Pack[3326874][31]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326874][31]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326874][31]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][31]["DeleteItem"][1]["Id"] = 3326874
	
	tDecPrecisionPush_Pack[3326874][32] = {}
	tDecPrecisionPush_Pack[3326874][32]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326874][32]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326874][32]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][32]["RewardItem"][1]["Id"] = 820074
	tDecPrecisionPush_Pack[3326874][32]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326874][32]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326874][32]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][32]["DeleteItem"][1]["Id"] = 3326874
	
	tDecPrecisionPush_Pack[3326874][33] = {}
	tDecPrecisionPush_Pack[3326874][33]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326874][33]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326874][33]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][33]["RewardItem"][1]["Id"] = 820075
	tDecPrecisionPush_Pack[3326874][33]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326874][33]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326874][33]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][33]["DeleteItem"][1]["Id"] = 3326874
	
	tDecPrecisionPush_Pack[3326874][34] = {}
	tDecPrecisionPush_Pack[3326874][34]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326874][34]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326874][34]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][34]["RewardItem"][1]["Id"] = 820076
	tDecPrecisionPush_Pack[3326874][34]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326874][34]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326874][34]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][34]["DeleteItem"][1]["Id"] = 3326874
	
	tDecPrecisionPush_Pack[3326874][41] = {}
	tDecPrecisionPush_Pack[3326874][41]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326874][41]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326874][41]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][41]["RewardItem"][1]["Id"] = 822071
	tDecPrecisionPush_Pack[3326874][41]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326874][41]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326874][41]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][41]["DeleteItem"][1]["Id"] = 3326874
	
	tDecPrecisionPush_Pack[3326874][42] = {}
	tDecPrecisionPush_Pack[3326874][42]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326874][42]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326874][42]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][42]["RewardItem"][1]["Id"] = 822072
	tDecPrecisionPush_Pack[3326874][42]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326874][42]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326874][42]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][42]["DeleteItem"][1]["Id"] = 3326874
	
	tDecPrecisionPush_Pack[3326874][51] = {}
	tDecPrecisionPush_Pack[3326874][51]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326874][51]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326874][51]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][51]["RewardItem"][1]["Id"] = 821034
	tDecPrecisionPush_Pack[3326874][51]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326874][51]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326874][51]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][51]["DeleteItem"][1]["Id"] = 3326874
	
	tDecPrecisionPush_Pack[3326874][52] = {}
	tDecPrecisionPush_Pack[3326874][52]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326874][52]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326874][52]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][52]["RewardItem"][1]["Id"] = 821033
	tDecPrecisionPush_Pack[3326874][52]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326874][52]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326874][52]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][52]["DeleteItem"][1]["Id"] = 3326874
	
	tDecPrecisionPush_Pack[3326874][61] = {}
	tDecPrecisionPush_Pack[3326874][61]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326874][61]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326874][61]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][61]["RewardItem"][1]["Id"] = 823058
	tDecPrecisionPush_Pack[3326874][61]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326874][61]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326874][61]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][61]["DeleteItem"][1]["Id"] = 3326874
	
	tDecPrecisionPush_Pack[3326874][62] = {}
	tDecPrecisionPush_Pack[3326874][62]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326874][62]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326874][62]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][62]["RewardItem"][1]["Id"] = 823059
	tDecPrecisionPush_Pack[3326874][62]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326874][62]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326874][62]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][62]["DeleteItem"][1]["Id"] = 3326874
	
	tDecPrecisionPush_Pack[3326874][63] = {}
	tDecPrecisionPush_Pack[3326874][63]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326874][63]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326874][63]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][63]["RewardItem"][1]["Id"] = 823061
	tDecPrecisionPush_Pack[3326874][63]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326874][63]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326874][63]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][63]["DeleteItem"][1]["Id"] = 3326874
	
	tDecPrecisionPush_Pack[3326874][64] = {}
	tDecPrecisionPush_Pack[3326874][64]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326874][64]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326874][64]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][64]["RewardItem"][1]["Id"] = 823062
	tDecPrecisionPush_Pack[3326874][64]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326874][64]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326874][64]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][64]["DeleteItem"][1]["Id"] = 3326874
	
	tDecPrecisionPush_Pack[3326874][65] = {}
	tDecPrecisionPush_Pack[3326874][65]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326874][65]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326874][65]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][65]["RewardItem"][1]["Id"] = 823060
	tDecPrecisionPush_Pack[3326874][65]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326874][65]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326874][65]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][65]["DeleteItem"][1]["Id"] = 3326874
	
	tDecPrecisionPush_Pack[3326874][71] = {}
	tDecPrecisionPush_Pack[3326874][71]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326874][71]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326874][71]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][71]["RewardItem"][1]["Id"] = 824018
	tDecPrecisionPush_Pack[3326874][71]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326874][71]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326874][71]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][71]["DeleteItem"][1]["Id"] = 3326874
	
	tDecPrecisionPush_Pack[3326874][72] = {}
	tDecPrecisionPush_Pack[3326874][72]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326874][72]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326874][72]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][72]["RewardItem"][1]["Id"] = 824019
	tDecPrecisionPush_Pack[3326874][72]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326874][72]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326874][72]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][72]["DeleteItem"][1]["Id"] = 3326874
	
	tDecPrecisionPush_Pack[3326874][73] = {}
	tDecPrecisionPush_Pack[3326874][73]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326874][73]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326874][73]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][73]["RewardItem"][1]["Id"] = 824020
	tDecPrecisionPush_Pack[3326874][73]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326874][73]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326874][73]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326874][73]["DeleteItem"][1]["Id"] = 3326874


	-- P7防具神魂可选包
	tDecPrecisionPush_Pack[3326875] = {}
	tDecPrecisionPush_Pack[3326875][31] = {}
	tDecPrecisionPush_Pack[3326875][31]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326875][31]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326875][31]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][31]["RewardItem"][1]["Id"] = 820073
	tDecPrecisionPush_Pack[3326875][31]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326875][31]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326875][31]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][31]["DeleteItem"][1]["Id"] = 3326875
	
	tDecPrecisionPush_Pack[3326875][32] = {}
	tDecPrecisionPush_Pack[3326875][32]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326875][32]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326875][32]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][32]["RewardItem"][1]["Id"] = 820074
	tDecPrecisionPush_Pack[3326875][32]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326875][32]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326875][32]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][32]["DeleteItem"][1]["Id"] = 3326875
	
	tDecPrecisionPush_Pack[3326875][33] = {}
	tDecPrecisionPush_Pack[3326875][33]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326875][33]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326875][33]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][33]["RewardItem"][1]["Id"] = 820075
	tDecPrecisionPush_Pack[3326875][33]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326875][33]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326875][33]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][33]["DeleteItem"][1]["Id"] = 3326875
	
	tDecPrecisionPush_Pack[3326875][34] = {}
	tDecPrecisionPush_Pack[3326875][34]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326875][34]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326875][34]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][34]["RewardItem"][1]["Id"] = 820076
	tDecPrecisionPush_Pack[3326875][34]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326875][34]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326875][34]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][34]["DeleteItem"][1]["Id"] = 3326875
	
	tDecPrecisionPush_Pack[3326875][41] = {}
	tDecPrecisionPush_Pack[3326875][41]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326875][41]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326875][41]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][41]["RewardItem"][1]["Id"] = 822071
	tDecPrecisionPush_Pack[3326875][41]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326875][41]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326875][41]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][41]["DeleteItem"][1]["Id"] = 3326875
	
	tDecPrecisionPush_Pack[3326875][42] = {}
	tDecPrecisionPush_Pack[3326875][42]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326875][42]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326875][42]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][42]["RewardItem"][1]["Id"] = 822072
	tDecPrecisionPush_Pack[3326875][42]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326875][42]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326875][42]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][42]["DeleteItem"][1]["Id"] = 3326875
	
	tDecPrecisionPush_Pack[3326875][51] = {}
	tDecPrecisionPush_Pack[3326875][51]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326875][51]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326875][51]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][51]["RewardItem"][1]["Id"] = 821034
	tDecPrecisionPush_Pack[3326875][51]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326875][51]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326875][51]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][51]["DeleteItem"][1]["Id"] = 3326875
	
	tDecPrecisionPush_Pack[3326875][52] = {}
	tDecPrecisionPush_Pack[3326875][52]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326875][52]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326875][52]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][52]["RewardItem"][1]["Id"] = 821033
	tDecPrecisionPush_Pack[3326875][52]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326875][52]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326875][52]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][52]["DeleteItem"][1]["Id"] = 3326875
	
	tDecPrecisionPush_Pack[3326875][61] = {}
	tDecPrecisionPush_Pack[3326875][61]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326875][61]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326875][61]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][61]["RewardItem"][1]["Id"] = 823058
	tDecPrecisionPush_Pack[3326875][61]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326875][61]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326875][61]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][61]["DeleteItem"][1]["Id"] = 3326875
	
	tDecPrecisionPush_Pack[3326875][62] = {}
	tDecPrecisionPush_Pack[3326875][62]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326875][62]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326875][62]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][62]["RewardItem"][1]["Id"] = 823059
	tDecPrecisionPush_Pack[3326875][62]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326875][62]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326875][62]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][62]["DeleteItem"][1]["Id"] = 3326875
	
	tDecPrecisionPush_Pack[3326875][63] = {}
	tDecPrecisionPush_Pack[3326875][63]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326875][63]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326875][63]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][63]["RewardItem"][1]["Id"] = 823061
	tDecPrecisionPush_Pack[3326875][63]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326875][63]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326875][63]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][63]["DeleteItem"][1]["Id"] = 3326875
	
	tDecPrecisionPush_Pack[3326875][64] = {}
	tDecPrecisionPush_Pack[3326875][64]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326875][64]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326875][64]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][64]["RewardItem"][1]["Id"] = 823062
	tDecPrecisionPush_Pack[3326875][64]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326875][64]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326875][64]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][64]["DeleteItem"][1]["Id"] = 3326875
	
	tDecPrecisionPush_Pack[3326875][65] = {}
	tDecPrecisionPush_Pack[3326875][65]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326875][65]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326875][65]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][65]["RewardItem"][1]["Id"] = 823060
	tDecPrecisionPush_Pack[3326875][65]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326875][65]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326875][65]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][65]["DeleteItem"][1]["Id"] = 3326875
	
	tDecPrecisionPush_Pack[3326875][71] = {}
	tDecPrecisionPush_Pack[3326875][71]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326875][71]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326875][71]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][71]["RewardItem"][1]["Id"] = 824018
	tDecPrecisionPush_Pack[3326875][71]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326875][71]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326875][71]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][71]["DeleteItem"][1]["Id"] = 3326875
	
	tDecPrecisionPush_Pack[3326875][72] = {}
	tDecPrecisionPush_Pack[3326875][72]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326875][72]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326875][72]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][72]["RewardItem"][1]["Id"] = 824019
	tDecPrecisionPush_Pack[3326875][72]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326875][72]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326875][72]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][72]["DeleteItem"][1]["Id"] = 3326875
	
	tDecPrecisionPush_Pack[3326875][73] = {}
	tDecPrecisionPush_Pack[3326875][73]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326875][73]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326875][73]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][73]["RewardItem"][1]["Id"] = 824020
	tDecPrecisionPush_Pack[3326875][73]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326875][73]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326875][73]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326875][73]["DeleteItem"][1]["Id"] = 3326875


	-- P7神魂包（赠）
	tDecPrecisionPush_Pack[3326876] = {}
	tDecPrecisionPush_Pack[3326876]["ItemChanceSum"] = 11200
	tDecPrecisionPush_Pack[3326876]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326876]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326876]["DeleteItem"][1]["Id"] = 3326876
	tDecPrecisionPush_Pack[3326876]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326876][1] = {}
	tDecPrecisionPush_Pack[3326876][1]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][1]["ItemChance"] = 400
	tDecPrecisionPush_Pack[3326876][1]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][1]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][1]["RewardItem"][1]["Id"] = 824020
	tDecPrecisionPush_Pack[3326876][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][1]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][1]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][2] = {}
	tDecPrecisionPush_Pack[3326876][2]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][2]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][2]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][2]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][2]["RewardItem"][1]["Id"] = 824019
	tDecPrecisionPush_Pack[3326876][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][2]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][2]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][3] = {}
	tDecPrecisionPush_Pack[3326876][3]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][3]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][3]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][3]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][3]["RewardItem"][1]["Id"] = 824018
	tDecPrecisionPush_Pack[3326876][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][3]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][3]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][4] = {}
	tDecPrecisionPush_Pack[3326876][4]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][4]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][4]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][4]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][4]["RewardItem"][1]["Id"] = 823062
	tDecPrecisionPush_Pack[3326876][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][4]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][4]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][5] = {}
	tDecPrecisionPush_Pack[3326876][5]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][5]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][5]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][5]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][5]["RewardItem"][1]["Id"] = 823061
	tDecPrecisionPush_Pack[3326876][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][5]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][5]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][6] = {}
	tDecPrecisionPush_Pack[3326876][6]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][6]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][6]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][6]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][6]["RewardItem"][1]["Id"] = 823060
	tDecPrecisionPush_Pack[3326876][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][6]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][6]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][7] = {}
	tDecPrecisionPush_Pack[3326876][7]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][7]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][7]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][7]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][7]["RewardItem"][1]["Id"] = 823059
	tDecPrecisionPush_Pack[3326876][7]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][7]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][7]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][8] = {}
	tDecPrecisionPush_Pack[3326876][8]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][8]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][8]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][8]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][8]["RewardItem"][1]["Id"] = 823058
	tDecPrecisionPush_Pack[3326876][8]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][8]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][8]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][9] = {}
	tDecPrecisionPush_Pack[3326876][9]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][9]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][9]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][9]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][9]["RewardItem"][1]["Id"] = 822072
	tDecPrecisionPush_Pack[3326876][9]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][9]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][9]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][10] = {}
	tDecPrecisionPush_Pack[3326876][10]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][10]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][10]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][10]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][10]["RewardItem"][1]["Id"] = 822071
	tDecPrecisionPush_Pack[3326876][10]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][10]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][10]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][11] = {}
	tDecPrecisionPush_Pack[3326876][11]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][11]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][11]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][11]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][11]["RewardItem"][1]["Id"] = 821034
	tDecPrecisionPush_Pack[3326876][11]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][11]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][11]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][12] = {}
	tDecPrecisionPush_Pack[3326876][12]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][12]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][12]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][12]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][12]["RewardItem"][1]["Id"] = 821033
	tDecPrecisionPush_Pack[3326876][12]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][12]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][12]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][13] = {}
	tDecPrecisionPush_Pack[3326876][13]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][13]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][13]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][13]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][13]["RewardItem"][1]["Id"] = 820076
	tDecPrecisionPush_Pack[3326876][13]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][13]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][13]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][14] = {}
	tDecPrecisionPush_Pack[3326876][14]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][14]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][14]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][14]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][14]["RewardItem"][1]["Id"] = 820075
	tDecPrecisionPush_Pack[3326876][14]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][14]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][14]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][15] = {}
	tDecPrecisionPush_Pack[3326876][15]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][15]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][15]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][15]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][15]["RewardItem"][1]["Id"] = 820074
	tDecPrecisionPush_Pack[3326876][15]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][15]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][15]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][16] = {}
	tDecPrecisionPush_Pack[3326876][16]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][16]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][16]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][16]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][16]["RewardItem"][1]["Id"] = 820073
	tDecPrecisionPush_Pack[3326876][16]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][16]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][16]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][17] = {}
	tDecPrecisionPush_Pack[3326876][17]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][17]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][17]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][17]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][17]["RewardItem"][1]["Id"] = 800917
	tDecPrecisionPush_Pack[3326876][17]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][17]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][17]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][18] = {}
	tDecPrecisionPush_Pack[3326876][18]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][18]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][18]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][18]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][18]["RewardItem"][1]["Id"] = 800811
	tDecPrecisionPush_Pack[3326876][18]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][18]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][18]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][19] = {}
	tDecPrecisionPush_Pack[3326876][19]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][19]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][19]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][19]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][19]["RewardItem"][1]["Id"] = 800810
	tDecPrecisionPush_Pack[3326876][19]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][19]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][19]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][20] = {}
	tDecPrecisionPush_Pack[3326876][20]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][20]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][20]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][20]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][20]["RewardItem"][1]["Id"] = 800725
	tDecPrecisionPush_Pack[3326876][20]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][20]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][20]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][21] = {}
	tDecPrecisionPush_Pack[3326876][21]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][21]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][21]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][21]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][21]["RewardItem"][1]["Id"] = 800618
	tDecPrecisionPush_Pack[3326876][21]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][21]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][21]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][22] = {}
	tDecPrecisionPush_Pack[3326876][22]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][22]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][22]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][22]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][22]["RewardItem"][1]["Id"] = 800522
	tDecPrecisionPush_Pack[3326876][22]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][22]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][22]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][23] = {}
	tDecPrecisionPush_Pack[3326876][23]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][23]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][23]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][23]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][23]["RewardItem"][1]["Id"] = 800422
	tDecPrecisionPush_Pack[3326876][23]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][23]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][23]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][24] = {}
	tDecPrecisionPush_Pack[3326876][24]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][24]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][24]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][24]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][24]["RewardItem"][1]["Id"] = 800255
	tDecPrecisionPush_Pack[3326876][24]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][24]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][24]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][25] = {}
	tDecPrecisionPush_Pack[3326876][25]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][25]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][25]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][25]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][25]["RewardItem"][1]["Id"] = 800215
	tDecPrecisionPush_Pack[3326876][25]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][25]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][25]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][26] = {}
	tDecPrecisionPush_Pack[3326876][26]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][26]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][26]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][26]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][26]["RewardItem"][1]["Id"] = 800142
	tDecPrecisionPush_Pack[3326876][26]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][26]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][26]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][27] = {}
	tDecPrecisionPush_Pack[3326876][27]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][27]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][27]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][27]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][27]["RewardItem"][1]["Id"] = 800111
	tDecPrecisionPush_Pack[3326876][27]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][27]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][27]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][28] = {}
	tDecPrecisionPush_Pack[3326876][28]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][28]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][28]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][28]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][28]["RewardItem"][1]["Id"] = 800020
	tDecPrecisionPush_Pack[3326876][28]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][28]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][28]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][29] = {}
	tDecPrecisionPush_Pack[3326876][29]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][29]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][29]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][29]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][29]["RewardItem"][1]["Id"] = 801004
	tDecPrecisionPush_Pack[3326876][29]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][29]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][29]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][29]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][30] = {}
	tDecPrecisionPush_Pack[3326876][30]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][30]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][30]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][30]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][30]["RewardItem"][1]["Id"] = 801104
	tDecPrecisionPush_Pack[3326876][30]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][30]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][30]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][30]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][31] = {}
	tDecPrecisionPush_Pack[3326876][31]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][31]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][31]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][31]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][31]["RewardItem"][1]["Id"] = 801216
	tDecPrecisionPush_Pack[3326876][31]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][31]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][31]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][31]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][32] = {}
	tDecPrecisionPush_Pack[3326876][32]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][32]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][32]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][32]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][32]["RewardItem"][1]["Id"] = 801218
	tDecPrecisionPush_Pack[3326876][32]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][32]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][32]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][32]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][33] = {}
	tDecPrecisionPush_Pack[3326876][33]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][33]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][33]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][33]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][33]["RewardItem"][1]["Id"] = 801308
	tDecPrecisionPush_Pack[3326876][33]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][33]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][33]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][33]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][34] = {}
	tDecPrecisionPush_Pack[3326876][34]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][34]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][34]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][34]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][34]["RewardItem"][1]["Id"] = 827010
	tDecPrecisionPush_Pack[3326876][34]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][34]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][34]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][34]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][35] = {}
	tDecPrecisionPush_Pack[3326876][35]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][35]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][35]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][35]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][35]["RewardItem"][1]["Id"] = 827011
	tDecPrecisionPush_Pack[3326876][35]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][35]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][35]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][35]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][36] = {}
	tDecPrecisionPush_Pack[3326876][36]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][36]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][36]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][36]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][36]["RewardItem"][1]["Id"] = 827012
	tDecPrecisionPush_Pack[3326876][36]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][36]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][36]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][36]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326876][37] = {}
	tDecPrecisionPush_Pack[3326876][37]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326876][37]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326876][37]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326876][37]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326876][37]["RewardItem"][1]["Id"] = 827013
	tDecPrecisionPush_Pack[3326876][37]["RewardItem"][1]["Attr"] = "0 1 3"
	tDecPrecisionPush_Pack[3326876][37]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326876][37]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326876][37]["RewardEffect"]["Effect"] = "angelwing"


	-- P7神魂包
	tDecPrecisionPush_Pack[3326877] = {}
	tDecPrecisionPush_Pack[3326877]["ItemChanceSum"] = 11200
	tDecPrecisionPush_Pack[3326877]["DeleteItem"] = {}
	tDecPrecisionPush_Pack[3326877]["DeleteItem"][1] = {}
	tDecPrecisionPush_Pack[3326877]["DeleteItem"][1]["Id"] = 3326877
	tDecPrecisionPush_Pack[3326877]["LogId"] = 12001725
	tDecPrecisionPush_Pack[3326877][1] = {}
	tDecPrecisionPush_Pack[3326877][1]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][1]["ItemChance"] = 400
	tDecPrecisionPush_Pack[3326877][1]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][1]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][1]["RewardItem"][1]["Id"] = 824020
	tDecPrecisionPush_Pack[3326877][1]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][1]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][1]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][2] = {}
	tDecPrecisionPush_Pack[3326877][2]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][2]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][2]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][2]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][2]["RewardItem"][1]["Id"] = 824019
	tDecPrecisionPush_Pack[3326877][2]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][2]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][2]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][3] = {}
	tDecPrecisionPush_Pack[3326877][3]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][3]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][3]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][3]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][3]["RewardItem"][1]["Id"] = 824018
	tDecPrecisionPush_Pack[3326877][3]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][3]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][3]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][4] = {}
	tDecPrecisionPush_Pack[3326877][4]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][4]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][4]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][4]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][4]["RewardItem"][1]["Id"] = 823062
	tDecPrecisionPush_Pack[3326877][4]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][4]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][4]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][5] = {}
	tDecPrecisionPush_Pack[3326877][5]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][5]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][5]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][5]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][5]["RewardItem"][1]["Id"] = 823061
	tDecPrecisionPush_Pack[3326877][5]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][5]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][5]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][6] = {}
	tDecPrecisionPush_Pack[3326877][6]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][6]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][6]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][6]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][6]["RewardItem"][1]["Id"] = 823060
	tDecPrecisionPush_Pack[3326877][6]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][6]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][6]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][7] = {}
	tDecPrecisionPush_Pack[3326877][7]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][7]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][7]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][7]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][7]["RewardItem"][1]["Id"] = 823059
	tDecPrecisionPush_Pack[3326877][7]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][7]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][7]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][8] = {}
	tDecPrecisionPush_Pack[3326877][8]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][8]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][8]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][8]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][8]["RewardItem"][1]["Id"] = 823058
	tDecPrecisionPush_Pack[3326877][8]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][8]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][8]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][9] = {}
	tDecPrecisionPush_Pack[3326877][9]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][9]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][9]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][9]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][9]["RewardItem"][1]["Id"] = 822072
	tDecPrecisionPush_Pack[3326877][9]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][9]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][9]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][10] = {}
	tDecPrecisionPush_Pack[3326877][10]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][10]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][10]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][10]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][10]["RewardItem"][1]["Id"] = 822071
	tDecPrecisionPush_Pack[3326877][10]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][10]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][10]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][11] = {}
	tDecPrecisionPush_Pack[3326877][11]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][11]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][11]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][11]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][11]["RewardItem"][1]["Id"] = 821034
	tDecPrecisionPush_Pack[3326877][11]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][11]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][11]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][12] = {}
	tDecPrecisionPush_Pack[3326877][12]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][12]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][12]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][12]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][12]["RewardItem"][1]["Id"] = 821033
	tDecPrecisionPush_Pack[3326877][12]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][12]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][12]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][13] = {}
	tDecPrecisionPush_Pack[3326877][13]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][13]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][13]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][13]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][13]["RewardItem"][1]["Id"] = 820076
	tDecPrecisionPush_Pack[3326877][13]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][13]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][13]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][14] = {}
	tDecPrecisionPush_Pack[3326877][14]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][14]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][14]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][14]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][14]["RewardItem"][1]["Id"] = 820075
	tDecPrecisionPush_Pack[3326877][14]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][14]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][14]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][15] = {}
	tDecPrecisionPush_Pack[3326877][15]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][15]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][15]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][15]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][15]["RewardItem"][1]["Id"] = 820074
	tDecPrecisionPush_Pack[3326877][15]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][15]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][15]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][16] = {}
	tDecPrecisionPush_Pack[3326877][16]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][16]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][16]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][16]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][16]["RewardItem"][1]["Id"] = 820073
	tDecPrecisionPush_Pack[3326877][16]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][16]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][16]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][17] = {}
	tDecPrecisionPush_Pack[3326877][17]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][17]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][17]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][17]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][17]["RewardItem"][1]["Id"] = 800917
	tDecPrecisionPush_Pack[3326877][17]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][17]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][17]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][18] = {}
	tDecPrecisionPush_Pack[3326877][18]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][18]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][18]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][18]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][18]["RewardItem"][1]["Id"] = 800811
	tDecPrecisionPush_Pack[3326877][18]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][18]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][18]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][19] = {}
	tDecPrecisionPush_Pack[3326877][19]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][19]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][19]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][19]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][19]["RewardItem"][1]["Id"] = 800810
	tDecPrecisionPush_Pack[3326877][19]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][19]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][19]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][20] = {}
	tDecPrecisionPush_Pack[3326877][20]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][20]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][20]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][20]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][20]["RewardItem"][1]["Id"] = 800725
	tDecPrecisionPush_Pack[3326877][20]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][20]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][20]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][21] = {}
	tDecPrecisionPush_Pack[3326877][21]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][21]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][21]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][21]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][21]["RewardItem"][1]["Id"] = 800618
	tDecPrecisionPush_Pack[3326877][21]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][21]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][21]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][22] = {}
	tDecPrecisionPush_Pack[3326877][22]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][22]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][22]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][22]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][22]["RewardItem"][1]["Id"] = 800522
	tDecPrecisionPush_Pack[3326877][22]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][22]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][22]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][23] = {}
	tDecPrecisionPush_Pack[3326877][23]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][23]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][23]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][23]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][23]["RewardItem"][1]["Id"] = 800422
	tDecPrecisionPush_Pack[3326877][23]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][23]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][23]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][24] = {}
	tDecPrecisionPush_Pack[3326877][24]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][24]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][24]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][24]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][24]["RewardItem"][1]["Id"] = 800255
	tDecPrecisionPush_Pack[3326877][24]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][24]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][24]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][25] = {}
	tDecPrecisionPush_Pack[3326877][25]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][25]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][25]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][25]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][25]["RewardItem"][1]["Id"] = 800215
	tDecPrecisionPush_Pack[3326877][25]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][25]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][25]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][26] = {}
	tDecPrecisionPush_Pack[3326877][26]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][26]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][26]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][26]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][26]["RewardItem"][1]["Id"] = 800142
	tDecPrecisionPush_Pack[3326877][26]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][26]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][26]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][27] = {}
	tDecPrecisionPush_Pack[3326877][27]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][27]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][27]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][27]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][27]["RewardItem"][1]["Id"] = 800111
	tDecPrecisionPush_Pack[3326877][27]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][27]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][27]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][28] = {}
	tDecPrecisionPush_Pack[3326877][28]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][28]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][28]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][28]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][28]["RewardItem"][1]["Id"] = 800020
	tDecPrecisionPush_Pack[3326877][28]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][28]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][28]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][29] = {}
	tDecPrecisionPush_Pack[3326877][29]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][29]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][29]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][29]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][29]["RewardItem"][1]["Id"] = 801004
	tDecPrecisionPush_Pack[3326877][29]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][29]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][29]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][29]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][30] = {}
	tDecPrecisionPush_Pack[3326877][30]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][30]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][30]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][30]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][30]["RewardItem"][1]["Id"] = 801104
	tDecPrecisionPush_Pack[3326877][30]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][30]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][30]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][30]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][31] = {}
	tDecPrecisionPush_Pack[3326877][31]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][31]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][31]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][31]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][31]["RewardItem"][1]["Id"] = 801216
	tDecPrecisionPush_Pack[3326877][31]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][31]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][31]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][31]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][32] = {}
	tDecPrecisionPush_Pack[3326877][32]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][32]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][32]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][32]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][32]["RewardItem"][1]["Id"] = 801218
	tDecPrecisionPush_Pack[3326877][32]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][32]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][32]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][32]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][33] = {}
	tDecPrecisionPush_Pack[3326877][33]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][33]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][33]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][33]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][33]["RewardItem"][1]["Id"] = 801308
	tDecPrecisionPush_Pack[3326877][33]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][33]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][33]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][33]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][34] = {}
	tDecPrecisionPush_Pack[3326877][34]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][34]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][34]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][34]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][34]["RewardItem"][1]["Id"] = 827010
	tDecPrecisionPush_Pack[3326877][34]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][34]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][34]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][34]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][35] = {}
	tDecPrecisionPush_Pack[3326877][35]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][35]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][35]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][35]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][35]["RewardItem"][1]["Id"] = 827011
	tDecPrecisionPush_Pack[3326877][35]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][35]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][35]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][35]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][36] = {}
	tDecPrecisionPush_Pack[3326877][36]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][36]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][36]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][36]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][36]["RewardItem"][1]["Id"] = 827012
	tDecPrecisionPush_Pack[3326877][36]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][36]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][36]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][36]["RewardEffect"]["Effect"] = "angelwing"
	tDecPrecisionPush_Pack[3326877][37] = {}
	tDecPrecisionPush_Pack[3326877][37]["RandomItemChanceType"] = 2
	tDecPrecisionPush_Pack[3326877][37]["ItemChance"] = 300
	tDecPrecisionPush_Pack[3326877][37]["RewardItem"] = {}
	tDecPrecisionPush_Pack[3326877][37]["RewardItem"][1] = {}
	tDecPrecisionPush_Pack[3326877][37]["RewardItem"][1]["Id"] = 827013
	tDecPrecisionPush_Pack[3326877][37]["RewardItem"][1]["Attr"] = "0 1"
	tDecPrecisionPush_Pack[3326877][37]["RewardEffect"] = {}
	tDecPrecisionPush_Pack[3326877][37]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPush_Pack[3326877][37]["RewardEffect"]["Effect"] = "angelwing"

----------------------------------逻辑部分---------------------------------------------
-- 神魂可选包逻辑
function DecPrecisionPush_P7SoulSelect(nItemId,nIndex)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tDecPrecisionPush_Pack[nItemId][nIndex])
	if not bJudge then
		return
	end
	RewardTemplate_UseItemAndMsg(tDecPrecisionPush_Pack[nItemId][nIndex],nUserId,bJudge)
end

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
-- 纯物品整合类礼包
tItem[3326858] = tItem[3326858] or {}
tItem[3326858]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tDecPrecisionPush_Pack[nItemId])
end
tItem[3326859] = tItem[3326858]
tItem[3326860] = tItem[3326858]
tItem[3326861] = tItem[3326858]
tItem[3326862] = tItem[3326858]
tItem[3326863] = tItem[3326858]
tItem[3326864] = tItem[3326858]
tItem[3326865] = tItem[3326858]
tItem[3326866] = tItem[3326858]
tItem[3326867] = tItem[3326858]
tItem[3326868] = tItem[3326858]
tItem[3326869] = tItem[3326858]
tItem[3326870] = tItem[3326858]
tItem[3326886] = tItem[3326858]
tItem[3326887] = tItem[3326858]
tItem[3326888] = tItem[3326858]
tItem[3326889] = tItem[3326858]
tItem[3326890] = tItem[3326858]
tItem[3326891] = tItem[3326858]
tItem[3326892] = tItem[3326858]
tItem[3326893] = tItem[3326858]
tItem[3326894] = tItem[3326858]
tItem[3326895] = tItem[3326858]
tItem[3326896] = tItem[3326858]
tItem[3326897] = tItem[3326858]

-- 随机礼包
tItem[3326898] = tItem[3326898] or {}
tItem[3326898]["Function"] = function(nItemId,sItemName)
	RewardTemplate_RandomReward(tDecPrecisionPush_Pack,nItemId)
end
tItem[3326899] = tItem[3326898]
tItem[3326900] = tItem[3326898]
tItem[3326901] = tItem[3326898]
tItem[3326902] = tItem[3326898]
tItem[3326876] = tItem[3326898]
tItem[3326877] = tItem[3326898]

--------物品有对白模板
-- P7武器神魂可选包（赠）
tItemFace[3326872] = 671
tItem[3326872] = tItem[3326872] or {}
tItem[3326872]["DialogueText"] = tDecPrecisionPush_Text[3326872]

tItem[3326872]["Text1-1"] = {111}
tItem[3326872]["tOption1-1"] = {21,22,23,24,25,26,27,28}
tItem[3326872]["OptionPoint21"] = "2-1"
tItem[3326872]["OptionPoint22"] = "2-2"
tItem[3326872]["OptionPoint23"] = "2-3"
tItem[3326872]["OptionPoint24"] = "2-4"
tItem[3326872]["OptionPoint25"] = "2-5"
tItem[3326872]["OptionPoint26"] = "2-6"
tItem[3326872]["OptionPoint27"] = "1-2"

tItem[3326872]["Text1-2"] = {121}
tItem[3326872]["tOption1-2"] = {31,32,33,34,35,36,37,38}
tItem[3326872]["OptionPoint31"] = "3-1"
tItem[3326872]["OptionPoint32"] = "3-2"
tItem[3326872]["OptionPoint33"] = "3-3"
tItem[3326872]["OptionPoint34"] = "3-4"
tItem[3326872]["OptionPoint35"] = "3-5"
tItem[3326872]["OptionPoint36"] = "1-1"
tItem[3326872]["OptionPoint37"] = "1-3"

tItem[3326872]["Text1-3"] = {131}
tItem[3326872]["tOption1-3"] = {41,42,43,44,45,46,47,48}
tItem[3326872]["OptionPoint41"] = "4-1"
tItem[3326872]["OptionPoint42"] = "4-2"
tItem[3326872]["OptionPoint43"] = "4-3"
tItem[3326872]["OptionPoint44"] = "4-4"
tItem[3326872]["OptionPoint45"] = "4-5"
tItem[3326872]["OptionPoint46"] = "4-6"
tItem[3326872]["OptionPoint47"] = "1-2"

tItem[3326872]["Text2-1"] = {211}
tItem[3326872]["tOption2-1"] = {211,1}
tItem[3326872]["OptionFunc211"] = "DecPrecisionPush_P7SoulSelect</N>3326872</N>21"

tItem[3326872]["Text2-2"] = {221}
tItem[3326872]["tOption2-2"] = {221,1}
tItem[3326872]["OptionFunc221"] = "DecPrecisionPush_P7SoulSelect</N>3326872</N>22"

tItem[3326872]["Text2-3"] = {231}
tItem[3326872]["tOption2-3"] = {231,1}
tItem[3326872]["OptionFunc231"] = "DecPrecisionPush_P7SoulSelect</N>3326872</N>23"

tItem[3326872]["Text2-4"] = {241}
tItem[3326872]["tOption2-4"] = {241,1}
tItem[3326872]["OptionFunc241"] = "DecPrecisionPush_P7SoulSelect</N>3326872</N>24"

tItem[3326872]["Text2-5"] = {251}
tItem[3326872]["tOption2-5"] = {251,1}
tItem[3326872]["OptionFunc251"] = "DecPrecisionPush_P7SoulSelect</N>3326872</N>25"

tItem[3326872]["Text2-6"] = {261}
tItem[3326872]["tOption2-6"] = {261,1}
tItem[3326872]["OptionFunc261"] = "DecPrecisionPush_P7SoulSelect</N>3326872</N>26"

tItem[3326872]["Text3-1"] = {311}
tItem[3326872]["tOption3-1"] = {311,1}
tItem[3326872]["OptionFunc311"] = "DecPrecisionPush_P7SoulSelect</N>3326872</N>31"

tItem[3326872]["Text3-2"] = {321}
tItem[3326872]["tOption3-2"] = {321,1}
tItem[3326872]["OptionFunc321"] = "DecPrecisionPush_P7SoulSelect</N>3326872</N>32"

tItem[3326872]["Text3-3"] = {331}
tItem[3326872]["tOption3-3"] = {331,1}
tItem[3326872]["OptionFunc331"] = "DecPrecisionPush_P7SoulSelect</N>3326872</N>33"

tItem[3326872]["Text3-4"] = {341}
tItem[3326872]["tOption3-4"] = {341,1}
tItem[3326872]["OptionFunc341"] = "DecPrecisionPush_P7SoulSelect</N>3326872</N>34"

tItem[3326872]["Text3-5"] = {351}
tItem[3326872]["tOption3-5"] = {351,1}
tItem[3326872]["OptionFunc351"] = "DecPrecisionPush_P7SoulSelect</N>3326872</N>35"

tItem[3326872]["Text4-1"] = {411}
tItem[3326872]["tOption4-1"] = {411,1}
tItem[3326872]["OptionFunc411"] = "DecPrecisionPush_P7SoulSelect</N>3326872</N>41"

tItem[3326872]["Text4-2"] = {421}
tItem[3326872]["tOption4-2"] = {421,1}
tItem[3326872]["OptionFunc421"] = "DecPrecisionPush_P7SoulSelect</N>3326872</N>42"

tItem[3326872]["Text4-3"] = {431}
tItem[3326872]["tOption4-3"] = {431,1}
tItem[3326872]["OptionFunc431"] = "DecPrecisionPush_P7SoulSelect</N>3326872</N>43"

tItem[3326872]["Text4-4"] = {441}
tItem[3326872]["tOption4-4"] = {441,1}
tItem[3326872]["OptionFunc441"] = "DecPrecisionPush_P7SoulSelect</N>3326872</N>44"

tItem[3326872]["Text4-5"] = {451}
tItem[3326872]["tOption4-5"] = {451,1}
tItem[3326872]["OptionFunc451"] = "DecPrecisionPush_P7SoulSelect</N>3326872</N>45"

tItem[3326872]["Text4-6"] = {461}
tItem[3326872]["tOption4-6"] = {461,1}
tItem[3326872]["OptionFunc461"] = "DecPrecisionPush_P7SoulSelect</N>3326872</N>46"

-- P7武器神魂可选包
tItemFace[3326873] = 671
tItem[3326873] = tItem[3326873] or {}
tItem[3326873]["DialogueText"] = tDecPrecisionPush_Text[3326873]

tItem[3326873]["Text1-1"] = {111}
tItem[3326873]["tOption1-1"] = {21,22,23,24,25,26,27,28}
tItem[3326873]["OptionPoint21"] = "2-1"
tItem[3326873]["OptionPoint22"] = "2-2"
tItem[3326873]["OptionPoint23"] = "2-3"
tItem[3326873]["OptionPoint24"] = "2-4"
tItem[3326873]["OptionPoint25"] = "2-5"
tItem[3326873]["OptionPoint26"] = "2-6"
tItem[3326873]["OptionPoint27"] = "1-2"

tItem[3326873]["Text1-2"] = {121}
tItem[3326873]["tOption1-2"] = {31,32,33,34,35,36,37,38}
tItem[3326873]["OptionPoint31"] = "3-1"
tItem[3326873]["OptionPoint32"] = "3-2"
tItem[3326873]["OptionPoint33"] = "3-3"
tItem[3326873]["OptionPoint34"] = "3-4"
tItem[3326873]["OptionPoint35"] = "3-5"
tItem[3326873]["OptionPoint36"] = "1-1"
tItem[3326873]["OptionPoint37"] = "1-3"

tItem[3326873]["Text1-3"] = {131}
tItem[3326873]["tOption1-3"] = {41,42,43,44,45,46,47,48}
tItem[3326873]["OptionPoint41"] = "4-1"
tItem[3326873]["OptionPoint42"] = "4-2"
tItem[3326873]["OptionPoint43"] = "4-3"
tItem[3326873]["OptionPoint44"] = "4-4"
tItem[3326873]["OptionPoint45"] = "4-5"
tItem[3326873]["OptionPoint46"] = "4-6"
tItem[3326873]["OptionPoint47"] = "1-2"

tItem[3326873]["Text2-1"] = {211}
tItem[3326873]["tOption2-1"] = {211,1}
tItem[3326873]["OptionFunc211"] = "DecPrecisionPush_P7SoulSelect</N>3326873</N>21"

tItem[3326873]["Text2-2"] = {221}
tItem[3326873]["tOption2-2"] = {221,1}
tItem[3326873]["OptionFunc221"] = "DecPrecisionPush_P7SoulSelect</N>3326873</N>22"

tItem[3326873]["Text2-3"] = {231}
tItem[3326873]["tOption2-3"] = {231,1}
tItem[3326873]["OptionFunc231"] = "DecPrecisionPush_P7SoulSelect</N>3326873</N>23"

tItem[3326873]["Text2-4"] = {241}
tItem[3326873]["tOption2-4"] = {241,1}
tItem[3326873]["OptionFunc241"] = "DecPrecisionPush_P7SoulSelect</N>3326873</N>24"

tItem[3326873]["Text2-5"] = {251}
tItem[3326873]["tOption2-5"] = {251,1}
tItem[3326873]["OptionFunc251"] = "DecPrecisionPush_P7SoulSelect</N>3326873</N>25"

tItem[3326873]["Text2-6"] = {261}
tItem[3326873]["tOption2-6"] = {261,1}
tItem[3326873]["OptionFunc261"] = "DecPrecisionPush_P7SoulSelect</N>3326873</N>26"

tItem[3326873]["Text3-1"] = {311}
tItem[3326873]["tOption3-1"] = {311,1}
tItem[3326873]["OptionFunc311"] = "DecPrecisionPush_P7SoulSelect</N>3326873</N>31"

tItem[3326873]["Text3-2"] = {321}
tItem[3326873]["tOption3-2"] = {321,1}
tItem[3326873]["OptionFunc321"] = "DecPrecisionPush_P7SoulSelect</N>3326873</N>32"

tItem[3326873]["Text3-3"] = {331}
tItem[3326873]["tOption3-3"] = {331,1}
tItem[3326873]["OptionFunc331"] = "DecPrecisionPush_P7SoulSelect</N>3326873</N>33"

tItem[3326873]["Text3-4"] = {341}
tItem[3326873]["tOption3-4"] = {341,1}
tItem[3326873]["OptionFunc341"] = "DecPrecisionPush_P7SoulSelect</N>3326873</N>34"

tItem[3326873]["Text3-5"] = {351}
tItem[3326873]["tOption3-5"] = {351,1}
tItem[3326873]["OptionFunc351"] = "DecPrecisionPush_P7SoulSelect</N>3326873</N>35"

tItem[3326873]["Text4-1"] = {411}
tItem[3326873]["tOption4-1"] = {411,1}
tItem[3326873]["OptionFunc411"] = "DecPrecisionPush_P7SoulSelect</N>3326873</N>41"

tItem[3326873]["Text4-2"] = {421}
tItem[3326873]["tOption4-2"] = {421,1}
tItem[3326873]["OptionFunc421"] = "DecPrecisionPush_P7SoulSelect</N>3326873</N>42"

tItem[3326873]["Text4-3"] = {431}
tItem[3326873]["tOption4-3"] = {431,1}
tItem[3326873]["OptionFunc431"] = "DecPrecisionPush_P7SoulSelect</N>3326873</N>43"

tItem[3326873]["Text4-4"] = {441}
tItem[3326873]["tOption4-4"] = {441,1}
tItem[3326873]["OptionFunc441"] = "DecPrecisionPush_P7SoulSelect</N>3326873</N>44"

tItem[3326873]["Text4-5"] = {451}
tItem[3326873]["tOption4-5"] = {451,1}
tItem[3326873]["OptionFunc451"] = "DecPrecisionPush_P7SoulSelect</N>3326873</N>45"

tItem[3326873]["Text4-6"] = {461}
tItem[3326873]["tOption4-6"] = {461,1}
tItem[3326873]["OptionFunc461"] = "DecPrecisionPush_P7SoulSelect</N>3326873</N>46"

-- P7防具神魂可选包（赠）
tItemFace[3326874] = 672
tItem[3326874] = tItem[3326874] or {}
tItem[3326874]["DialogueText"] = tDecPrecisionPush_Text[3326874]

tItem[3326874]["Text1-1"] = {111}
tItem[3326874]["tOption1-1"] = {11,12,13,14,15,16}
tItem[3326874]["OptionPoint11"] = "2-1"
tItem[3326874]["OptionPoint12"] = "2-2"
tItem[3326874]["OptionPoint13"] = "2-3"
tItem[3326874]["OptionPoint14"] = "2-4"
tItem[3326874]["OptionPoint15"] = "2-5"

tItem[3326874]["Text2-1"] = {211}
tItem[3326874]["tOption2-1"] = {31,32,33,34,35,36}
tItem[3326874]["OptionPoint31"] = "3-1"
tItem[3326874]["OptionPoint32"] = "3-2"
tItem[3326874]["OptionPoint33"] = "3-3"
tItem[3326874]["OptionPoint34"] = "3-4"
tItem[3326874]["OptionPoint35"] = "1-1"

tItem[3326874]["Text2-2"] = {221}
tItem[3326874]["tOption2-2"] = {41,42,43,44}
tItem[3326874]["OptionPoint41"] = "4-1"
tItem[3326874]["OptionPoint42"] = "4-2"
tItem[3326874]["OptionPoint43"] = "1-1"

tItem[3326874]["Text2-3"] = {231}
tItem[3326874]["tOption2-3"] = {51,52,53,54}
tItem[3326874]["OptionPoint51"] = "5-1"
tItem[3326874]["OptionPoint52"] = "5-2"
tItem[3326874]["OptionPoint53"] = "1-1"

tItem[3326874]["Text2-4"] = {241}
tItem[3326874]["tOption2-4"] = {61,62,63,64,65,66,67}
tItem[3326874]["OptionPoint61"] = "6-1"
tItem[3326874]["OptionPoint62"] = "6-2"
tItem[3326874]["OptionPoint63"] = "6-3"
tItem[3326874]["OptionPoint64"] = "6-4"
tItem[3326874]["OptionPoint65"] = "6-5"
tItem[3326874]["OptionPoint66"] = "1-1"

tItem[3326874]["Text2-5"] = {251}
tItem[3326874]["tOption2-5"] = {71,72,73,74,75}
tItem[3326874]["OptionPoint71"] = "7-1"
tItem[3326874]["OptionPoint72"] = "7-2"
tItem[3326874]["OptionPoint73"] = "7-3"
tItem[3326874]["OptionPoint74"] = "1-1"

tItem[3326874]["Text3-1"] = {311}
tItem[3326874]["tOption3-1"] = {311,1}
tItem[3326874]["OptionFunc311"] = "DecPrecisionPush_P7SoulSelect</N>3326874</N>31"

tItem[3326874]["Text3-2"] = {321}
tItem[3326874]["tOption3-2"] = {321,1}
tItem[3326874]["OptionFunc321"] = "DecPrecisionPush_P7SoulSelect</N>3326874</N>32"

tItem[3326874]["Text3-3"] = {331}
tItem[3326874]["tOption3-3"] = {331,1}
tItem[3326874]["OptionFunc331"] = "DecPrecisionPush_P7SoulSelect</N>3326874</N>33"

tItem[3326874]["Text3-4"] = {341}
tItem[3326874]["tOption3-4"] = {341,1}
tItem[3326874]["OptionFunc341"] = "DecPrecisionPush_P7SoulSelect</N>3326874</N>34"

tItem[3326874]["Text4-1"] = {411}
tItem[3326874]["tOption4-1"] = {411,1}
tItem[3326874]["OptionFunc411"] = "DecPrecisionPush_P7SoulSelect</N>3326874</N>41"

tItem[3326874]["Text4-2"] = {421}
tItem[3326874]["tOption4-2"] = {421,1}
tItem[3326874]["OptionFunc421"] = "DecPrecisionPush_P7SoulSelect</N>3326874</N>42"

tItem[3326874]["Text5-1"] = {511}
tItem[3326874]["tOption5-1"] = {511,1}
tItem[3326874]["OptionFunc511"] = "DecPrecisionPush_P7SoulSelect</N>3326874</N>51"

tItem[3326874]["Text5-2"] = {521}
tItem[3326874]["tOption5-2"] = {521,1}
tItem[3326874]["OptionFunc521"] = "DecPrecisionPush_P7SoulSelect</N>3326874</N>52"

tItem[3326874]["Text6-1"] = {611}
tItem[3326874]["tOption6-1"] = {611,1}
tItem[3326874]["OptionFunc611"] = "DecPrecisionPush_P7SoulSelect</N>3326874</N>61"

tItem[3326874]["Text6-2"] = {621}
tItem[3326874]["tOption6-2"] = {621,1}
tItem[3326874]["OptionFunc621"] = "DecPrecisionPush_P7SoulSelect</N>3326874</N>62"

tItem[3326874]["Text6-3"] = {631}
tItem[3326874]["tOption6-3"] = {631,1}
tItem[3326874]["OptionFunc631"] = "DecPrecisionPush_P7SoulSelect</N>3326874</N>63"

tItem[3326874]["Text6-4"] = {641}
tItem[3326874]["tOption6-4"] = {641,1}
tItem[3326874]["OptionFunc641"] = "DecPrecisionPush_P7SoulSelect</N>3326874</N>64"

tItem[3326874]["Text6-5"] = {651}
tItem[3326874]["tOption6-5"] = {651,1}
tItem[3326874]["OptionFunc651"] = "DecPrecisionPush_P7SoulSelect</N>3326874</N>65"

tItem[3326874]["Text7-1"] = {711}
tItem[3326874]["tOption7-1"] = {711,1}
tItem[3326874]["OptionFunc711"] = "DecPrecisionPush_P7SoulSelect</N>3326874</N>71"

tItem[3326874]["Text7-2"] = {721}
tItem[3326874]["tOption7-2"] = {721,1}
tItem[3326874]["OptionFunc721"] = "DecPrecisionPush_P7SoulSelect</N>3326874</N>72"

tItem[3326874]["Text7-3"] = {731}
tItem[3326874]["tOption7-3"] = {731,1}
tItem[3326874]["OptionFunc731"] = "DecPrecisionPush_P7SoulSelect</N>3326874</N>73"

-- P7防具神魂可选包
tItemFace[3326875] = 672
tItem[3326875] = tItem[3326875] or {}
tItem[3326875]["DialogueText"] = tDecPrecisionPush_Text[3326875]

tItem[3326875]["Text1-1"] = {111}
tItem[3326875]["tOption1-1"] = {11,12,13,14,15,16}
tItem[3326875]["OptionPoint11"] = "2-1"
tItem[3326875]["OptionPoint12"] = "2-2"
tItem[3326875]["OptionPoint13"] = "2-3"
tItem[3326875]["OptionPoint14"] = "2-4"
tItem[3326875]["OptionPoint15"] = "2-5"

tItem[3326875]["Text2-1"] = {211}
tItem[3326875]["tOption2-1"] = {31,32,33,34,35,36}
tItem[3326875]["OptionPoint31"] = "3-1"
tItem[3326875]["OptionPoint32"] = "3-2"
tItem[3326875]["OptionPoint33"] = "3-3"
tItem[3326875]["OptionPoint34"] = "3-4"
tItem[3326875]["OptionPoint35"] = "1-1"

tItem[3326875]["Text2-2"] = {221}
tItem[3326875]["tOption2-2"] = {41,42,43,44}
tItem[3326875]["OptionPoint41"] = "4-1"
tItem[3326875]["OptionPoint42"] = "4-2"
tItem[3326875]["OptionPoint43"] = "1-1"

tItem[3326875]["Text2-3"] = {231}
tItem[3326875]["tOption2-3"] = {51,52,53,54}
tItem[3326875]["OptionPoint51"] = "5-1"
tItem[3326875]["OptionPoint52"] = "5-2"
tItem[3326875]["OptionPoint53"] = "1-1"

tItem[3326875]["Text2-4"] = {241}
tItem[3326875]["tOption2-4"] = {61,62,63,64,65,66,67}
tItem[3326875]["OptionPoint61"] = "6-1"
tItem[3326875]["OptionPoint62"] = "6-2"
tItem[3326875]["OptionPoint63"] = "6-3"
tItem[3326875]["OptionPoint64"] = "6-4"
tItem[3326875]["OptionPoint65"] = "6-5"
tItem[3326875]["OptionPoint66"] = "1-1"

tItem[3326875]["Text2-5"] = {251}
tItem[3326875]["tOption2-5"] = {71,72,73,74,75}
tItem[3326875]["OptionPoint71"] = "7-1"
tItem[3326875]["OptionPoint72"] = "7-2"
tItem[3326875]["OptionPoint73"] = "7-3"
tItem[3326875]["OptionPoint74"] = "1-1"

tItem[3326875]["Text3-1"] = {311}
tItem[3326875]["tOption3-1"] = {311,1}
tItem[3326875]["OptionFunc311"] = "DecPrecisionPush_P7SoulSelect</N>3326875</N>31"

tItem[3326875]["Text3-2"] = {321}
tItem[3326875]["tOption3-2"] = {321,1}
tItem[3326875]["OptionFunc321"] = "DecPrecisionPush_P7SoulSelect</N>3326875</N>32"

tItem[3326875]["Text3-3"] = {331}
tItem[3326875]["tOption3-3"] = {331,1}
tItem[3326875]["OptionFunc331"] = "DecPrecisionPush_P7SoulSelect</N>3326875</N>33"

tItem[3326875]["Text3-4"] = {341}
tItem[3326875]["tOption3-4"] = {341,1}
tItem[3326875]["OptionFunc341"] = "DecPrecisionPush_P7SoulSelect</N>3326875</N>34"

tItem[3326875]["Text4-1"] = {411}
tItem[3326875]["tOption4-1"] = {411,1}
tItem[3326875]["OptionFunc411"] = "DecPrecisionPush_P7SoulSelect</N>3326875</N>41"

tItem[3326875]["Text4-2"] = {421}
tItem[3326875]["tOption4-2"] = {421,1}
tItem[3326875]["OptionFunc421"] = "DecPrecisionPush_P7SoulSelect</N>3326875</N>42"

tItem[3326875]["Text5-1"] = {511}
tItem[3326875]["tOption5-1"] = {511,1}
tItem[3326875]["OptionFunc511"] = "DecPrecisionPush_P7SoulSelect</N>3326875</N>51"

tItem[3326875]["Text5-2"] = {521}
tItem[3326875]["tOption5-2"] = {521,1}
tItem[3326875]["OptionFunc521"] = "DecPrecisionPush_P7SoulSelect</N>3326875</N>52"

tItem[3326875]["Text6-1"] = {611}
tItem[3326875]["tOption6-1"] = {611,1}
tItem[3326875]["OptionFunc611"] = "DecPrecisionPush_P7SoulSelect</N>3326875</N>61"

tItem[3326875]["Text6-2"] = {621}
tItem[3326875]["tOption6-2"] = {621,1}
tItem[3326875]["OptionFunc621"] = "DecPrecisionPush_P7SoulSelect</N>3326875</N>62"

tItem[3326875]["Text6-3"] = {631}
tItem[3326875]["tOption6-3"] = {631,1}
tItem[3326875]["OptionFunc631"] = "DecPrecisionPush_P7SoulSelect</N>3326875</N>63"

tItem[3326875]["Text6-4"] = {641}
tItem[3326875]["tOption6-4"] = {641,1}
tItem[3326875]["OptionFunc641"] = "DecPrecisionPush_P7SoulSelect</N>3326875</N>64"

tItem[3326875]["Text6-5"] = {651}
tItem[3326875]["tOption6-5"] = {651,1}
tItem[3326875]["OptionFunc651"] = "DecPrecisionPush_P7SoulSelect</N>3326875</N>65"

tItem[3326875]["Text7-1"] = {711}
tItem[3326875]["tOption7-1"] = {711,1}
tItem[3326875]["OptionFunc711"] = "DecPrecisionPush_P7SoulSelect</N>3326875</N>71"

tItem[3326875]["Text7-2"] = {721}
tItem[3326875]["tOption7-2"] = {721,1}
tItem[3326875]["OptionFunc721"] = "DecPrecisionPush_P7SoulSelect</N>3326875</N>72"

tItem[3326875]["Text7-3"] = {731}
tItem[3326875]["tOption7-3"] = {731,1}
tItem[3326875]["OptionFunc731"] = "DecPrecisionPush_P7SoulSelect</N>3326875</N>73"
