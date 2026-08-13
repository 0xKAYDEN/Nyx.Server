----------------------------------------------------------------------------------------
--Name:		150907[简体征服][公用函数]怪物掉落接口优化
--Creator:		郑鋆
--Created:		2015/12/21
----------------------------------------------------------------------------------------

-- 命名前缀
-- MonsterDrop_

-- 查询片区任务怪物ID的语句
-- select DISTINCT cq_monstertype.id,cq_monstertype.name,cq_monstertype.life,cq_monstertype.attack_user from cq_generator,cq_monstertype where cq_generator.mapid in 
-- (
-- 1000,
-- 1001,
-- 1002,
-- 1011,
-- 1015,
-- 1020,
-- 1351,
-- 1352,
-- 1353,
-- 1354,
-- 1999,
-- 2054,
-- 2055,
-- 2056,
-- 3056,
-- 1926,
-- 1927
-- ) and cq_generator.npctype = cq_monstertype.id

-- 全局表
tMonsterDrop_AreaLoad = {}
-- 例子
-- tMonsterDrop_AreaLoad[1] = {}
-- tMonsterDrop_AreaLoad[1]["ActivityTime"] = "2015-12-01 00:00 2015-12-12 23:59"
-- tMonsterDrop_AreaLoad[1]["Function"]		怪物死亡调用的函数
-- tMonsterDrop_AreaLoad[1]["Area"] = {}		哪个片区掉落(没配就默认全部片区)
-- tMonsterDrop_AreaLoad[1]["MonsterId"] = {}	具体哪些怪物掉落的ID，这个数据配后就不走上面Area的部分，两个只能配1个
-- 无赠品服务器
tMonsterDrop_AreaLoad_NoGift = {}
-- 片区怪物ID
local tMonsterDrop_Area = {}
	-- 第一片区
	-- 1	叫天鸡
	-- 2	斑鸠王
	-- 3	罗罗鸟
	-- 4	幽冥鬼斧王
	-- 5	蹑空鬼斧王
	-- 64	破空鬼斧王
	tMonsterDrop_Area[1] = {1,2,3,4,5,64}
	
	-- 第二片区
	-- 6	翼蛇
	-- 7	土匪
	-- 8	火鼠
	-- 9	火精灵
	-- 65	尖啸翼蛇
	-- 66	精悍土匪
	-- 67	尖牙火鼠
	-- 68	怒火精灵
	-- 2140	鸣凤堡土匪
	tMonsterDrop_Area[2] = {6,7,8,9,65,66,67,68,2140}
	
	-- 第三片区
	-- 10	须猕猴
	-- 11	巨臂猿
	-- 12	天雷巨猿
	-- 13	蛇人
	-- 69	成年猕猴
	-- 70	长臂猿
	-- 71	暴雷巨猿
	-- 72	血怒蛇人
	-- 3050	异族蛇人
	tMonsterDrop_Area[3] = {10,11,12,13,69,70,71,72,3050}
	
	-- 第四片区
	-- 14	沙怪
	-- 15	锤山怪
	-- 16	巨石怪
	-- 17	鬼刃
	-- 73	砾沙怪
	-- 74	震山怪
	-- 75	雷石怪
	-- 76	狡诈鬼刃
	tMonsterDrop_Area[4] = {14,15,16,17,73,74,75,76}
	
	-- 第五片区
	-- 18	金臂鸟人
	-- 19	银羽鹰王
	-- 77	狂暴鸟人
	-- 78	银羽鹰魔
	-- 55	湖岛强匪
	-- 79	湖岛悍匪
	-- 84	匪兵
	tMonsterDrop_Area[5] = {18,19,55,78,79,84,77}
	
	-- 第六片区
	-- 20	土墓蝠
	-- 56	嗜血蝙蝠
	-- 57	牛怪
	-- 58	血影红魔
	-- 80	巨型土墓蝠
	-- 81	血翼蝙蝠
	-- 82	蛮牛怪
	-- 2231	火爆蛮牛
	-- 83	魅影红魔
	-- 86	吸血蝙蝠
	-- 87	吸血蝠王
	-- 88	血魔
	-- 89	冷血魔头
	tMonsterDrop_Area[6] = {20,56,57,58,80,81,82,2231,83,86,87,88,89}
	
	-- 冰封地穴
	-- 2411	冰凌腾蛇
	-- 2416	冰煞邪刀
	-- 2460	尸魂妖后
	-- 2461	尸魂女妖
	-- 2466	地穴魔女
	-- 2473	鬼蛇头领
	-- 2474	鬼蛇兵
	-- 2479	无头鬼兵
	tMonsterDrop_Area[7] = {2411,2416,2460,2461,2466,2473,2474,2479}

	-- 海滩片区
	-- 2684	缚灵
	-- 2685	恐惧缚灵
	-- 2686	深海亡魂
	-- 2687	深海魔魂
	tMonsterDrop_Area[8] = {2684,2685,2686,2687}

	-- 矿洞迷宫片区
	-- 3141	晶奴
	-- 3142	臾鬼
	-- 3144	修罗斩
	-- 3145	灵鼠
	-- 3147	火鹫
	-- 3148	蝠獍
	-- 3155	牛精
	tMonsterDrop_Area[9] = {3141,3142,3143,3144,3145,3146,3147,3148,3149,3155,3156}

	-- 赤龙之地
	-- 2758	赤绒火鼠
	-- 2759	金焰岩怪
	-- 2766	火翼蝠妖
	-- 2760	火翼紫蝠魔
	-- 2761	熔火岩蝎
	-- 2762	烈焰赤蛇
	-- 2763	利爪岩魔
	-- 2764	铜角岩兽
	-- 2765	火狱妖兽
	tMonsterDrop_Area[10] = {2758,2759,2766,2760,2761,2762,2763,2764,2765}
	
	--神龙岛
	-- 3967	梦魇夜叉
	-- 3968	黑风邪煞
	-- 3969	幽冥魔将
	tMonsterDrop_Area[11] = {3967,3968,3969}
	
function MonsterDrop_Insert()
	for i,v in pairs(tMonsterDrop_AreaLoad) do
		MonsterDrop_Judge(v)
	end
	-- 判断是否是无赠品服务器
	if SpecialServer_ChkNoGiftServer() then
		for i,v in pairs(tMonsterDrop_AreaLoad_NoGift) do
			MonsterDrop_Judge(v)
		end
	end
end

function MonsterDrop_Judge(v)
	if v["ActivityTime"] ~= nil then
		if not (Sys_ChkFullTime(v["ActivityTime"]) or CommonFunc_GetBeforeActivityTime(v["ActivityTime"])) then
			return
		end
	end
	
	if v["Function"] == nil or type(v["Function"]) ~= "function" then
		return	
	end
	
	if v["MonsterId"] ~= nil and type(v["MonsterId"]) == "table" then
		for a,b in pairs(v["MonsterId"]) do
			tMonster[b] = tMonster[b] or {}
			tMonster[b]["tFunction"] = tMonster[b]["tFunction"] or {}
			table.insert(tMonster[b]["tFunction"],v["Function"])
		end
		
		return
	end
	
	if v["Area"] == nil or #v["Area"] == 0 then
		for a,b in pairs(tMonsterDrop_Area) do
			MonsterDrop_AreaInsert(a,v["Function"])
		end
	else
		for a,b in pairs(v["Area"]) do
			MonsterDrop_AreaInsert(b,v["Function"])
		end
	end
end

function MonsterDrop_AreaInsert(nIndex,fFunc)
	for i,v in pairs (tMonsterDrop_Area[nIndex]) do
		tMonster[v] = tMonster[v] or {}
		tMonster[v]["tFunction"] = tMonster[v]["tFunction"] or {}
		table.insert(tMonster[v]["tFunction"],fFunc)
	end
end

tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],MonsterDrop_Insert)