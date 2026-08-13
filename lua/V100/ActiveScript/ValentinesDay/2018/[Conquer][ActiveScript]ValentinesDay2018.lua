------------------------------------------------------------------------------------
--Name：            180724[简体征服][活动脚本]七夕节活动
--Creator:      王贤
--Created:     2018/07/24
------------------------------------------------------------------------------------
--任务需求：
-- 【简体征服】七夕节活动
 
-- 制作七夕节活动
 
-- 活动时间：8.16-8.29
------------------------------------------------------------------------------------
-- =================================
-- 19.7.5  修改包装为命中注定我爱你
-- =================================
------------------------------------------------------------------------------------
-- stc(180, 27)  1、性别
-- stc(180, 28)  2、背包信
-- stc(180, 29)  3、每日第一次点击NPC
-- stc(180, 30)  4、每日签到礼包（七夕礼盒产出）
-- stc(180, 31)  5、显著功勋礼包（七夕礼盒产出）
-- stc(180, 32)  6、野外杀怪（七夕礼盒产出）
-- stc(180, 33)  7、每日第一次对话
-- stc(180, 34)  8、魅力值
-- stc(180, 35)  9、每日领取宝箱
-- stc(180, 36)  10、魅力金云碎片获得限制
-- stc(180, 69)  11、魅力成长礼领取
-- stc(180, 70)  12、首次登陆领取鹊仙居奇珍收纳袋
-- stc(181, 30)  13、每日获得的魅力值
-- stc(181, 33)  14、每日获得300点魅力值领取的礼包
-- stc(181, 34)  15、制作浪漫情人匣储存的魅力值
-- stc(181, 35)  16、每日上交鲜花的魅力值
-- stc(181, 53)  17、玩家拥有的副本地图
-- stc(181, 57)  18、制作浪漫情人匣储存的 耐克篮球鞋/神仙精华露
-- stc(181, 58)  19、制作浪漫情人匣储存的 迪奥墨镜/施华洛项链
-- stc(181, 59)  20、制作浪漫情人匣储存的 爱马仕钱包/蒂芙尼钻戒
-- stc(181, 60)  21、制作浪漫情人匣储存的 玫瑰兑换券/玫瑰
-- stc(181, 61)  22、制作浪漫情人匣储存的 兰花兑换券/兰花
-- stc(181, 62)  23、制作浪漫情人匣储存的 百合兑换券/百合
-- stc(181, 63)  24、制作浪漫情人匣储存的 郁金香兑换券/郁金香
------------------------------------------------------------------------------------
-- （修改为种花掩码）   XXXXXX  前三位是判断是否采过的序列号，后三位是判断是否浇水过的序列号
-- stc(180, 71)  1 、
-- stc(180, 72)  2 、
-- stc(180, 73)  3 、
-- stc(180, 74)  4 、
-- stc(180, 75)  5 、
-- stc(180, 76)  6 、
-- stc(180, 77)  7 、
-- stc(180, 78)  8 、
-- stc(180, 79)  9 、
-- stc(180, 80)  10、
-- stc(180, 81)  11、
-- stc(180, 82)  12、
-- stc(180, 83)  13、
-- stc(180, 84)  14、
-- stc(180, 85)  15、
-- stc(180, 86)  16、
-- stc(180, 87)  17、
-- stc(180, 88)  18、
-- stc(180, 89)  19、
-- stc(180, 90)  20、
-- stc(180, 91)  21、
-- stc(180, 92)  22、
-- stc(180, 93)  23、
-- stc(180, 94)  24、
-- stc(180, 95)  25、
-- stc(180, 96)  26、
-- stc(180, 97)  27、
-- stc(180, 98)  28、
-- stc(180, 99)  29、
-- stc(181, 01)  30、
-- stc(181, 02)  31、
-- stc(181, 03)  32、
-- stc(181, 04)  33、
-- stc(181, 05)  34、
-- stc(181, 06)  35、
-- stc(181, 07)  36、
-- stc(181, 08)  37、
-- stc(181, 09)  38、
-- stc(181, 10)  39、
-- stc(181, 11)  40、
-- stc(181, 12)  41、
-- stc(181, 13)  42、
-- stc(181, 14)  43、
-- stc(181, 15)  44、
-- stc(181, 16)  45、
-- stc(181, 17)  46、
-- stc(181, 18)  47、
-- stc(181, 19)  48、
-- stc(181, 20)  49、
-- stc(181, 21)  50、
-- stc(181, 22)  51、
-- stc(181, 23)  52、
-- stc(181, 24)  53、
-- stc(181, 25)  54、
-- stc(181, 26)  55、
-- stc(181, 27)  56、
-- stc(181, 28)  57、
-- stc(200, 81)  58、
-- stc(200, 82)  59、
-- stc(200, 83)  60、
-- stc(200, 84)  61、
-- stc(200, 85)  62、
-- stc(200, 86)  63、
-- stc(200, 87)  64、
-- stc(200, 88)  65、
-- stc(200, 89)  66、
-- stc(200, 90)  67、
-- stc(200, 91)  68、
-- stc(200, 92)  69、
-- stc(200, 93)  70、
-- stc(200, 94)  71、
-- stc(200, 95)  72、
-- stc(200, 96)  73、
-- stc(200, 97)  74、
-- stc(200, 98)  75、
-- stc(200, 99)  76、
-- stc(201, 00)  77、
-- stc(201, 01)  78、
-- stc(201, 02)  79、
-- stc(201, 03)  80、
-- stc(201, 04)  81、
-- stc(201, 05)  82、
-- stc(201, 06)  83、
-- stc(201, 07)  84、
-- stc(201, 08)  85、
-- stc(201, 09)  86、
-- stc(201, 10)  87、
-- stc(201, 11)  88、
-- stc(201, 12)  89、
-- stc(201, 13)  90、
-- stc(201, 14)  91、表示每日偷采的次数
-- stc(201, 15)  92、表示每日前三次种植
-- stc(201, 16)  93、每日浇灌最多三次获得真爱值

------------------------------------------------------------------------------------
-- 前缀
-- ValentinesDay2018_

-- LogId： 12001123
----------------------------------表配置部分--------------------------------------------

local tValentinesDay2018_Data = {}
-- 活动时间
tValentinesDay2018_Data["BeforeTime"] = tActivityTime["ValentinesDay2018"]["BeforeTime"]
tValentinesDay2018_Data["ActivityTime"] = tActivityTime["ValentinesDay2018"]["ActivityTime"]
-- 授课时间
tValentinesDay2018_Data["LectureTime"] = tActivityTime["ValentinesDay2018"]["LectureTime"]
-- 竞选时间
tValentinesDay2018_Data["CampaignTime"] = tActivityTime["ValentinesDay2018"]["CampaignTime"]
-- 参观活动事件
tValentinesDay2018_Data["VisitTime"] = tActivityTime["ValentinesDay2018"]["VisitTime"]
-- 鹊桥仙移动时间
tValentinesDay2018_Data["QueMoveTime"] = tActivityTime["ValentinesDay2018"]["QueMoveTime"]

-- 活动等级限制
tValentinesDay2018_Data["Level"] = 80
tValentinesDay2018_Data["Metempsychosis"] = 0

-- 风流才子榜
tValentinesDay2018_Data["nManIndex"] = 230961
-- 红粉佳人榜
tValentinesDay2018_Data["nWomanIndex"] = 230962

-- 菜地数据
tValentinesDay2018_Data["Vegetable"] = {}
-- 种子ID
tValentinesDay2018_Data["Vegetable"]["ItemId"] = {}
tValentinesDay2018_Data["Vegetable"]["ItemId"][1] = 3322459
tValentinesDay2018_Data["Vegetable"]["ItemId"][2] = 3322460
tValentinesDay2018_Data["Vegetable"]["ItemId"][3] = 3322461
tValentinesDay2018_Data["Vegetable"]["ItemId"][4] = 3322462

-- 成熟邮件发奖
tValentinesDay2018_Data["Vegetable"]["LetterAction"] = {}
tValentinesDay2018_Data["Vegetable"]["LetterAction"][1] = {}
tValentinesDay2018_Data["Vegetable"]["LetterAction"][1][1] = 573532
tValentinesDay2018_Data["Vegetable"]["LetterAction"][1][2] = 573533
tValentinesDay2018_Data["Vegetable"]["LetterAction"][1][3] = 573534
tValentinesDay2018_Data["Vegetable"]["LetterAction"][2] = {}
tValentinesDay2018_Data["Vegetable"]["LetterAction"][2][1] = 573535
tValentinesDay2018_Data["Vegetable"]["LetterAction"][2][2] = 573536
tValentinesDay2018_Data["Vegetable"]["LetterAction"][2][3] = 573537
tValentinesDay2018_Data["Vegetable"]["LetterAction"][3] = {}
tValentinesDay2018_Data["Vegetable"]["LetterAction"][3][1] = 573538
tValentinesDay2018_Data["Vegetable"]["LetterAction"][3][2] = 573539
tValentinesDay2018_Data["Vegetable"]["LetterAction"][3][3] = 573540
tValentinesDay2018_Data["Vegetable"]["LetterAction"][4] = {}
tValentinesDay2018_Data["Vegetable"]["LetterAction"][4][1] = 573541
tValentinesDay2018_Data["Vegetable"]["LetterAction"][4][2] = 573542
tValentinesDay2018_Data["Vegetable"]["LetterAction"][4][3] = 573543

-- 种子成熟时间(秒)
tValentinesDay2018_Data["Vegetable"]["SeedMatureTime"] = {}
tValentinesDay2018_Data["Vegetable"]["SeedMatureTime"][1] = 60 * 60
tValentinesDay2018_Data["Vegetable"]["SeedMatureTime"][2] = 60 * 60
tValentinesDay2018_Data["Vegetable"]["SeedMatureTime"][3] = 60 * 60
tValentinesDay2018_Data["Vegetable"]["SeedMatureTime"][4] = 90 * 60
-- 可浇灌次数
tValentinesDay2018_Data["Vegetable"]["WaterTimes"] = {}
tValentinesDay2018_Data["Vegetable"]["WaterTimes"][1] = 6
tValentinesDay2018_Data["Vegetable"]["WaterTimes"][2] = 6
tValentinesDay2018_Data["Vegetable"]["WaterTimes"][3] = 6
tValentinesDay2018_Data["Vegetable"]["WaterTimes"][4] = 9
-- 每次浇灌减少时间(秒)
tValentinesDay2018_Data["Vegetable"]["ReduceTime"] = {}
tValentinesDay2018_Data["Vegetable"]["ReduceTime"][1] = 10 * 60
tValentinesDay2018_Data["Vegetable"]["ReduceTime"][2] = 10 * 60
tValentinesDay2018_Data["Vegetable"]["ReduceTime"][3] = 10 * 60
tValentinesDay2018_Data["Vegetable"]["ReduceTime"][4] = 10 * 60

-- 光环ID
tValentinesDay2018_Data["Vegetable"]["RoleStatus"] = {}
tValentinesDay2018_Data["Vegetable"]["RoleStatus"][3322668] = 263
tValentinesDay2018_Data["Vegetable"]["RoleStatus"][3322669] = 264
tValentinesDay2018_Data["Vegetable"]["RoleStatus"][3322670] = 265
tValentinesDay2018_Data["Vegetable"]["RoleStatus"][3322671] = 260
tValentinesDay2018_Data["Vegetable"]["RoleStatus"][3322672] = 261
tValentinesDay2018_Data["Vegetable"]["RoleStatus"][3322673] = 262
tValentinesDay2018_Data["Vegetable"]["RoleStatus"]["Power"] = 200
tValentinesDay2018_Data["Vegetable"]["RoleStatus"]["Secs"] = 2592000
tValentinesDay2018_Data["Vegetable"]["RoleStatus"]["Times"] = 0
tValentinesDay2018_Data["Vegetable"]["RoleStatus"]["EndTime"] = 2592000
tValentinesDay2018_Data["Vegetable"]["RoleStatus"]["Recordable"] = 1
tValentinesDay2018_Data["Vegetable"]["RoleStatus"]["RemainTime"] = 0

-- 偷菜礼包
tValentinesDay2018_Data["Vegetable"]["Lev"] = {}
tValentinesDay2018_Data["Vegetable"]["Lev"][3322508] = 1
tValentinesDay2018_Data["Vegetable"]["Lev"][3322509] = 2
tValentinesDay2018_Data["Vegetable"]["Lev"][3313298] = 3
tValentinesDay2018_Data["Vegetable"]["Lev"][3313299] = 1
tValentinesDay2018_Data["Vegetable"]["Lev"][3313300] = 2
tValentinesDay2018_Data["Vegetable"]["Lev"][3313301] = 3
tValentinesDay2018_Data["Vegetable"]["Lev"][3313302] = 1
tValentinesDay2018_Data["Vegetable"]["Lev"][3313303] = 2
tValentinesDay2018_Data["Vegetable"]["Lev"][3313304] = 3
tValentinesDay2018_Data["Vegetable"]["Lev"][3313305] = 1
tValentinesDay2018_Data["Vegetable"]["Lev"][3313306] = 2
tValentinesDay2018_Data["Vegetable"]["Lev"][3313307] = 3
tValentinesDay2018_Data["Vegetable"]["State"] = {}
tValentinesDay2018_Data["Vegetable"]["State"][3322508] = 1
tValentinesDay2018_Data["Vegetable"]["State"][3322509] = 1
tValentinesDay2018_Data["Vegetable"]["State"][3313298] = 1
tValentinesDay2018_Data["Vegetable"]["State"][3313299] = 2
tValentinesDay2018_Data["Vegetable"]["State"][3313300] = 2
tValentinesDay2018_Data["Vegetable"]["State"][3313301] = 2
tValentinesDay2018_Data["Vegetable"]["State"][3313302] = 3
tValentinesDay2018_Data["Vegetable"]["State"][3313303] = 3
tValentinesDay2018_Data["Vegetable"]["State"][3313304] = 3
tValentinesDay2018_Data["Vegetable"]["State"][3313305] = 4
tValentinesDay2018_Data["Vegetable"]["State"][3313306] = 4
tValentinesDay2018_Data["Vegetable"]["State"][3313307] = 4
-- 浇灌光效
tValentinesDay2018_Data["Vegetable"]["Effect"] = {}
tValentinesDay2018_Data["Vegetable"]["Effect"][1] = "NEW-flower-g-1"
tValentinesDay2018_Data["Vegetable"]["Effect"][2] = "white-flower-r-1"
-- 浇灌真爱值
tValentinesDay2018_Data["Vegetable"]["TrueLoveValue"] = {}
tValentinesDay2018_Data["Vegetable"]["TrueLoveValue"][1] = 50
tValentinesDay2018_Data["Vegetable"]["TrueLoveValue"][2] = 100
tValentinesDay2018_Data["Vegetable"]["TrueLoveValue"][3] = 300

-- 浇灌所需金币
tValentinesDay2018_Data["Vegetable"]["NeedMoney"] = {}
tValentinesDay2018_Data["Vegetable"]["NeedMoney"][1] = 400000
tValentinesDay2018_Data["Vegetable"]["NeedMoney"][2] = 400000
tValentinesDay2018_Data["Vegetable"]["NeedMoney"][3] = 400000
tValentinesDay2018_Data["Vegetable"]["NeedMoney"][4] = 500000

-- 怪物数据
tValentinesDay2018_Data["Vegetable"]["MonsterData"] = {}
tValentinesDay2018_Data["Vegetable"]["MonsterData"]["MonsterId"] = 5509
tValentinesDay2018_Data["Vegetable"]["MonsterData"]["Generator"] = 29068
tValentinesDay2018_Data["Vegetable"]["MonsterData"]["MapId"] = 10587


-- 掩码
tValentinesDay2018_Data["Stc"] = {}
tValentinesDay2018_Data["Stc"]["Event"] = {}
tValentinesDay2018_Data["Stc"]["Data"] = {}
-- stc(180, 27)  1、性别
tValentinesDay2018_Data["Stc"]["Event"][1] = 180
tValentinesDay2018_Data["Stc"]["Data"][1] = 27
-- stc(180, 28)  2、背包信
-- stc(180, 29)  3、每日第一次点击NPC
tValentinesDay2018_Data["Stc"]["Event"][3] = 180
tValentinesDay2018_Data["Stc"]["Data"][3] = 29
-- stc(180, 30)  4、每日签到礼包（七夕礼盒产出）
tValentinesDay2018_Data["Stc"]["Event"][4] = 180
tValentinesDay2018_Data["Stc"]["Data"][4] = 30
-- stc(180, 31)  5、显著功勋礼包（七夕礼盒产出）
tValentinesDay2018_Data["Stc"]["Event"][5] = 180
tValentinesDay2018_Data["Stc"]["Data"][5] = 31
-- stc(180, 32)  6、野外杀怪（七夕礼盒产出）
tValentinesDay2018_Data["Stc"]["Event"][6] = 180
tValentinesDay2018_Data["Stc"]["Data"][6] = 32
-- stc(180, 33)  7、每日第一次对话
tValentinesDay2018_Data["Stc"]["Event"][7] = 180
tValentinesDay2018_Data["Stc"]["Data"][7] = 33
-- stc(180, 34)  8、魅力值
tValentinesDay2018_Data["Stc"]["Event"][8] = 180
tValentinesDay2018_Data["Stc"]["Data"][8] = 34
-- stc(180, 35)  9、每日领取宝箱
tValentinesDay2018_Data["Stc"]["Event"][9] = 180
tValentinesDay2018_Data["Stc"]["Data"][9] = 35
-- stc(180, 36)  10、魅力金云碎片获得限制
tValentinesDay2018_Data["Stc"]["Event"][10] = 180
tValentinesDay2018_Data["Stc"]["Data"][10] = 36
-- stc(180, 69)  11、魅力成长礼领取
tValentinesDay2018_Data["Stc"]["Event"][11] = 180
tValentinesDay2018_Data["Stc"]["Data"][11] = 69
-- stc(180, 70)  12、首次登陆领取鹊仙居奇珍收纳袋
tValentinesDay2018_Data["Stc"]["Event"][12] = 180
tValentinesDay2018_Data["Stc"]["Data"][12] = 70
-- stc(181, 30)  13、每日获得的魅力值
tValentinesDay2018_Data["Stc"]["Event"][13] = 181
tValentinesDay2018_Data["Stc"]["Data"][13] = 30
-- stc(181, 33)  14、每日获得300点魅力值领取的礼包
tValentinesDay2018_Data["Stc"]["Event"][14] = 181
tValentinesDay2018_Data["Stc"]["Data"][14] = 33
-- stc(181, 34)  15、制作浪漫情人匣储存的魅力值
tValentinesDay2018_Data["Stc"]["Event"][15] = 181
tValentinesDay2018_Data["Stc"]["Data"][15] = 34
-- stc(181, 35)  16、每日上交鲜花的魅力值
tValentinesDay2018_Data["Stc"]["Event"][16] = 181
tValentinesDay2018_Data["Stc"]["Data"][16] = 35
-- stc(181, 53)  17、玩家拥有的副本地图
tValentinesDay2018_Data["Stc"]["Event"][17] = 181
tValentinesDay2018_Data["Stc"]["Data"][17] = 53
-- stc(181, 57)  18、制作浪漫情人匣储存的 耐克篮球鞋/神仙精华露
tValentinesDay2018_Data["Stc"]["Event"][18] = 181
tValentinesDay2018_Data["Stc"]["Data"][18] = 57
-- stc(181, 58)  19、制作浪漫情人匣储存的 迪奥墨镜/施华洛项链
tValentinesDay2018_Data["Stc"]["Event"][19] = 181
tValentinesDay2018_Data["Stc"]["Data"][19] = 58
-- stc(181, 59)  20、制作浪漫情人匣储存的 爱马仕钱包/蒂芙尼钻戒
tValentinesDay2018_Data["Stc"]["Event"][20] = 181
tValentinesDay2018_Data["Stc"]["Data"][20] = 59
-- stc(181, 60)  21、制作浪漫情人匣储存的 玫瑰兑换券/玫瑰
tValentinesDay2018_Data["Stc"]["Event"][21] = 181
tValentinesDay2018_Data["Stc"]["Data"][21] = 60
-- stc(181, 61)  22、制作浪漫情人匣储存的 兰花兑换券/兰花
tValentinesDay2018_Data["Stc"]["Event"][22] = 181
tValentinesDay2018_Data["Stc"]["Data"][22] = 61
-- stc(181, 62)  23、制作浪漫情人匣储存的 百合兑换券/百合
tValentinesDay2018_Data["Stc"]["Event"][23] = 181
tValentinesDay2018_Data["Stc"]["Data"][23] = 62
-- stc(181, 63)  24、制作浪漫情人匣储存的 郁金香兑换券/郁金香
tValentinesDay2018_Data["Stc"]["Event"][24] = 181
tValentinesDay2018_Data["Stc"]["Data"][24] = 63
-- stc(202, 14)  25、制作浪漫情人匣储存的 金币
tValentinesDay2018_Data["Stc"]["Event"][25] = 202
tValentinesDay2018_Data["Stc"]["Data"][25] = 14
-- stc(202, 15)  26、制作浪漫情人匣储存的 天石赠
tValentinesDay2018_Data["Stc"]["Event"][26] = 202
tValentinesDay2018_Data["Stc"]["Data"][26] = 15
-- stc(202, 16)  27、每日浇灌上限
tValentinesDay2018_Data["Stc"]["Event"][27] = 202
tValentinesDay2018_Data["Stc"]["Data"][27] = 16

-- Log
tValentinesDay2018_Data["Log"] = {}
tValentinesDay2018_Data["Log"]["OutTimeLog"] = "0,0,%d,%d,12001123,2,0,0"
tValentinesDay2018_Data["Log"]["BoxLog"] = "0,0,0,0,12001123,6[2],%d,0"
tValentinesDay2018_Data["Log"]["MLLog"] = "0,0,0,0,12001123,6[3],%d,0"
tValentinesDay2018_Data["Log"]["MoneyLog"] = "0,0,1,%d,12001123,6[5],0,0"
tValentinesDay2018_Data["Log"]["KillLog"] = "0,0,0,0,12001123,6[6],%d,0"
tValentinesDay2018_Data["Log"]["SpendLog"] = "0,0,%d,%d,12001123,6[7],0,0"

-- web
tValentinesDay2018_Data["WebAddress"] = "https://wtop.zf.99.com/hks/?lang=en"
tValentinesDay2018_Data["GoneLue"] = "https://wtop.zf.99.com/hks/?lang=en"
tValentinesDay2018_Data["Follwer"] = "https://co.99.com/guide/event/2019/first_co_superstar_contest/index.shtml"

-- 可兑换魅力值
tValentinesDay2018_Data["ExchangeGlamour"] = {}
-- 神仙精华露   施华洛项链   蒂芙尼钻戒
tValentinesDay2018_Data["ExchangeGlamour"][3310192] = 100
tValentinesDay2018_Data["ExchangeGlamour"][3310193] = 500
tValentinesDay2018_Data["ExchangeGlamour"][3310194] = 1000
-- 耐克篮球鞋   迪奥墨镜   爱马仕钱包
tValentinesDay2018_Data["ExchangeGlamour"][3310195] = 100
tValentinesDay2018_Data["ExchangeGlamour"][3310196] = 500
tValentinesDay2018_Data["ExchangeGlamour"][3310197] = 1000
-- 玫瑰兑换券   兰花兑换券   百合兑换券   郁金香兑换券
tValentinesDay2018_Data["ExchangeGlamour"][3304134] = 5
tValentinesDay2018_Data["ExchangeGlamour"][3304135] = 5
tValentinesDay2018_Data["ExchangeGlamour"][3304136] = 5
tValentinesDay2018_Data["ExchangeGlamour"][3304137] = 10
-- 花朵
tValentinesDay2018_Data["ExchangeGlamour"][754001] = 10
tValentinesDay2018_Data["ExchangeGlamour"][754003] = 30
tValentinesDay2018_Data["ExchangeGlamour"][754009] = 90
tValentinesDay2018_Data["ExchangeGlamour"][754099] = 990
tValentinesDay2018_Data["ExchangeGlamour"][754999] = 9990
tValentinesDay2018_Data["ExchangeGlamour"][753001] = 5
tValentinesDay2018_Data["ExchangeGlamour"][753003] = 15
tValentinesDay2018_Data["ExchangeGlamour"][753009] = 45
tValentinesDay2018_Data["ExchangeGlamour"][753099] = 495
tValentinesDay2018_Data["ExchangeGlamour"][753999] = 4000
tValentinesDay2018_Data["ExchangeGlamour"][752001] = 5
tValentinesDay2018_Data["ExchangeGlamour"][752003] = 15
tValentinesDay2018_Data["ExchangeGlamour"][752009] = 45
tValentinesDay2018_Data["ExchangeGlamour"][752099] = 495
tValentinesDay2018_Data["ExchangeGlamour"][752999] = 4000
tValentinesDay2018_Data["ExchangeGlamour"][751001] = 5
tValentinesDay2018_Data["ExchangeGlamour"][751003] = 15
tValentinesDay2018_Data["ExchangeGlamour"][751009] = 45
tValentinesDay2018_Data["ExchangeGlamour"][751099] = 495
tValentinesDay2018_Data["ExchangeGlamour"][751999] = 4000
-- 新增部分
tValentinesDay2018_Data["ExchangeGlamour"][1] = 135
tValentinesDay2018_Data["ExchangeGlamour"][2] = 1350
tValentinesDay2018_Data["ExchangeGlamour"][3] = 125
tValentinesDay2018_Data["ExchangeGlamour"][4] = 1250


-- 上交物品代表数量
tValentinesDay2018_Data["ItemNum"] = {}
-- 神仙精华露   施华洛项链   蒂芙尼钻戒
tValentinesDay2018_Data["ItemNum"][3310192] = 1
tValentinesDay2018_Data["ItemNum"][3310193] = 1
tValentinesDay2018_Data["ItemNum"][3310194] = 1
-- 耐克篮球鞋   迪奥墨镜   爱马仕钱包
tValentinesDay2018_Data["ItemNum"][3310195] = 1
tValentinesDay2018_Data["ItemNum"][3310196] = 1
tValentinesDay2018_Data["ItemNum"][3310197] = 1
-- 玫瑰兑换券   兰花兑换券   百合兑换券   郁金香兑换券
tValentinesDay2018_Data["ItemNum"][3304134] = 1
tValentinesDay2018_Data["ItemNum"][3304135] = 1
tValentinesDay2018_Data["ItemNum"][3304136] = 1
tValentinesDay2018_Data["ItemNum"][3304137] = 1
-- 花朵
tValentinesDay2018_Data["ItemNum"][754001] = 1
tValentinesDay2018_Data["ItemNum"][754003] = 3
tValentinesDay2018_Data["ItemNum"][754009] = 9
tValentinesDay2018_Data["ItemNum"][754099] = 99
tValentinesDay2018_Data["ItemNum"][754999] = 999
tValentinesDay2018_Data["ItemNum"][753001] = 1
tValentinesDay2018_Data["ItemNum"][753003] = 3
tValentinesDay2018_Data["ItemNum"][753009] = 9
tValentinesDay2018_Data["ItemNum"][753099] = 99
tValentinesDay2018_Data["ItemNum"][753999] = 999
tValentinesDay2018_Data["ItemNum"][752001] = 1
tValentinesDay2018_Data["ItemNum"][752003] = 3
tValentinesDay2018_Data["ItemNum"][752009] = 9
tValentinesDay2018_Data["ItemNum"][752099] = 99
tValentinesDay2018_Data["ItemNum"][752999] = 999
tValentinesDay2018_Data["ItemNum"][751001] = 1
tValentinesDay2018_Data["ItemNum"][751003] = 3
tValentinesDay2018_Data["ItemNum"][751009] = 9
tValentinesDay2018_Data["ItemNum"][751099] = 99
tValentinesDay2018_Data["ItemNum"][751999] = 999
-- 新增部分
tValentinesDay2018_Data["ItemNum"][1] = 1000000
tValentinesDay2018_Data["ItemNum"][2] = 10000000
tValentinesDay2018_Data["ItemNum"][3] = 50
tValentinesDay2018_Data["ItemNum"][4] = 500


-- 上交物品掩码值
tValentinesDay2018_Data["ItemStc"] = {}
-- 神仙精华露   施华洛项链   蒂芙尼钻戒
tValentinesDay2018_Data["ItemStc"][3310192] = 18
tValentinesDay2018_Data["ItemStc"][3310193] = 19
tValentinesDay2018_Data["ItemStc"][3310194] = 20
-- 耐克篮球鞋   迪奥墨镜   爱马仕钱包
tValentinesDay2018_Data["ItemStc"][3310195] = 18
tValentinesDay2018_Data["ItemStc"][3310196] = 19
tValentinesDay2018_Data["ItemStc"][3310197] = 20
-- 玫瑰兑换券   兰花兑换券   百合兑换券   郁金香兑换券
tValentinesDay2018_Data["ItemStc"][3304134] = 21
tValentinesDay2018_Data["ItemStc"][3304135] = 22
tValentinesDay2018_Data["ItemStc"][3304136] = 23
tValentinesDay2018_Data["ItemStc"][3304137] = 24
-- 花朵
tValentinesDay2018_Data["ItemStc"][754001] = 24
tValentinesDay2018_Data["ItemStc"][754003] = 24
tValentinesDay2018_Data["ItemStc"][754009] = 24
tValentinesDay2018_Data["ItemStc"][754099] = 24
tValentinesDay2018_Data["ItemStc"][754999] = 24
tValentinesDay2018_Data["ItemStc"][753001] = 22
tValentinesDay2018_Data["ItemStc"][753003] = 22
tValentinesDay2018_Data["ItemStc"][753009] = 22
tValentinesDay2018_Data["ItemStc"][753099] = 22
tValentinesDay2018_Data["ItemStc"][753999] = 22
tValentinesDay2018_Data["ItemStc"][752001] = 23
tValentinesDay2018_Data["ItemStc"][752003] = 23
tValentinesDay2018_Data["ItemStc"][752009] = 23
tValentinesDay2018_Data["ItemStc"][752099] = 23
tValentinesDay2018_Data["ItemStc"][752999] = 23
tValentinesDay2018_Data["ItemStc"][751001] = 21
tValentinesDay2018_Data["ItemStc"][751003] = 21
tValentinesDay2018_Data["ItemStc"][751009] = 21
tValentinesDay2018_Data["ItemStc"][751099] = 21
tValentinesDay2018_Data["ItemStc"][751999] = 21
-- 新增部分
tValentinesDay2018_Data["ItemStc"][1] = 25
tValentinesDay2018_Data["ItemStc"][2] = 25
tValentinesDay2018_Data["ItemStc"][3] = 26
tValentinesDay2018_Data["ItemStc"][4] = 26

-- 可兑换物品Id
tValentinesDay2018_Data["ExchangeItemId"] = {}
-- 神仙精华露   施华洛项链   蒂芙尼钻戒
tValentinesDay2018_Data["ExchangeItemId"][1]  = 3310192
tValentinesDay2018_Data["ExchangeItemId"][2]  = 3310193
tValentinesDay2018_Data["ExchangeItemId"][3]  = 3310194
-- 耐克篮球鞋   迪奥墨镜   爱马仕钱包
tValentinesDay2018_Data["ExchangeItemId"][4]  = 3310195
tValentinesDay2018_Data["ExchangeItemId"][5]  = 3310196
tValentinesDay2018_Data["ExchangeItemId"][6]  = 3310197
-- 玫瑰兑换券   兰花兑换券   百合兑换券   郁金香兑换券
tValentinesDay2018_Data["ExchangeItemId"][7]  = 3304134
tValentinesDay2018_Data["ExchangeItemId"][8]  = 3304135
tValentinesDay2018_Data["ExchangeItemId"][9]  = 3304136
tValentinesDay2018_Data["ExchangeItemId"][10] = 3304137
-- 郁金香
tValentinesDay2018_Data["ExchangeItemId"][11] = 754001
tValentinesDay2018_Data["ExchangeItemId"][12] = 754003
tValentinesDay2018_Data["ExchangeItemId"][13] = 754009
tValentinesDay2018_Data["ExchangeItemId"][14] = 754099
tValentinesDay2018_Data["ExchangeItemId"][15] = 754999
-- 兰花
tValentinesDay2018_Data["ExchangeItemId"][16] = 753001
tValentinesDay2018_Data["ExchangeItemId"][17] = 753003
tValentinesDay2018_Data["ExchangeItemId"][18] = 753009
tValentinesDay2018_Data["ExchangeItemId"][19] = 753099
tValentinesDay2018_Data["ExchangeItemId"][20] = 753999
-- 百合花
tValentinesDay2018_Data["ExchangeItemId"][21] = 752001
tValentinesDay2018_Data["ExchangeItemId"][22] = 752003
tValentinesDay2018_Data["ExchangeItemId"][23] = 752009
tValentinesDay2018_Data["ExchangeItemId"][24] = 752099
tValentinesDay2018_Data["ExchangeItemId"][25] = 752999
-- 红玫瑰
tValentinesDay2018_Data["ExchangeItemId"][26] = 751001
tValentinesDay2018_Data["ExchangeItemId"][27] = 751003
tValentinesDay2018_Data["ExchangeItemId"][28] = 751009
tValentinesDay2018_Data["ExchangeItemId"][29] = 751099
tValentinesDay2018_Data["ExchangeItemId"][30] = 751999

-- 鹊仙居奇珍收纳袋
tValentinesDay2018_Data["RoomItem"] = 3310214
-- 花仙精灵
tValentinesDay2018_Data["RoomItem2"] = 3322680

-- NPCData
tValentinesDay2018_Data["NpcId"] = {}
tValentinesDay2018_Data["NpcId"]["MapId"] = 1002
tValentinesDay2018_Data["NpcId"]["MapId2"] = 1036
-- 情圣
tValentinesDay2018_Data["NpcId"][1] = {}
tValentinesDay2018_Data["NpcId"][1]["NppcId"] = 23096
tValentinesDay2018_Data["NpcId"][1]["NppcId2"] = 24685
tValentinesDay2018_Data["NpcId"][1]["PosX"] = 382
tValentinesDay2018_Data["NpcId"][1]["PosY"] = 436
tValentinesDay2018_Data["NpcId"][1]["PosX2"] = 264
tValentinesDay2018_Data["NpcId"][1]["PosY2"] = 263
-- 天工宝箱
tValentinesDay2018_Data["NpcId"][2] = {}
tValentinesDay2018_Data["NpcId"][2]["NppcId"] = 23097
tValentinesDay2018_Data["NpcId"][2]["PosX"] = 320
tValentinesDay2018_Data["NpcId"][2]["PosY"] = 436
-- 鹊桥仙
tValentinesDay2018_Data["NpcId"][3] = {}
tValentinesDay2018_Data["NpcId"][3]["NppcId"] = 23098
tValentinesDay2018_Data["NpcId"][3]["PosX"] = 319
tValentinesDay2018_Data["NpcId"][3]["PosY"] = 451
-- 魅力合伙人
tValentinesDay2018_Data["NpcId"][4] = {}
tValentinesDay2018_Data["NpcId"][4]["NppcId"] = 23136
tValentinesDay2018_Data["NpcId"][4]["PosX"] = 325
tValentinesDay2018_Data["NpcId"][4]["PosY"] = 451


-- 魅力成长礼领取所需魅力之星
tValentinesDay2018_Data["CharmRewardNeed"] = {}
tValentinesDay2018_Data["CharmRewardNeed"][1] = 4000
tValentinesDay2018_Data["CharmRewardNeed"][2] = 8000
tValentinesDay2018_Data["CharmRewardNeed"][3] = 12000
tValentinesDay2018_Data["CharmRewardNeed"][4] = 30000
tValentinesDay2018_Data["CharmRewardNeed"][5] = 60000
tValentinesDay2018_Data["CharmRewardNeed"][6] = 120000
tValentinesDay2018_Data["CharmRewardNeed"][7] = 250000
tValentinesDay2018_Data["CharmRewardNeed"][8] = 450000
-- 魅力成长礼领取所需空间
tValentinesDay2018_Data["CharmRewardSpace"] = {}
tValentinesDay2018_Data["CharmRewardSpace"][1] = 2
tValentinesDay2018_Data["CharmRewardSpace"][2] = 2
tValentinesDay2018_Data["CharmRewardSpace"][3] = 2
tValentinesDay2018_Data["CharmRewardSpace"][4] = 2
tValentinesDay2018_Data["CharmRewardSpace"][5] = 2
tValentinesDay2018_Data["CharmRewardSpace"][6] = 2
tValentinesDay2018_Data["CharmRewardSpace"][7] = 1
tValentinesDay2018_Data["CharmRewardSpace"][8] = 2

-- 每日领取的奖励
tValentinesDay2018_Data["DayBoxReward"] = {}
-- 第一档次魅力值及奖励
tValentinesDay2018_Data["DayBoxReward"][1] = {}
tValentinesDay2018_Data["DayBoxReward"][1]["NeedGlamour"] = 0
tValentinesDay2018_Data["DayBoxReward"][1]["BoxItem"] = 3310202
-- 第二档次魅力值及奖励
tValentinesDay2018_Data["DayBoxReward"][2] = {}
tValentinesDay2018_Data["DayBoxReward"][2]["NeedGlamour"] = 500
tValentinesDay2018_Data["DayBoxReward"][2]["BoxItem"] = 3310203
-- 第三档次魅力值及奖励
tValentinesDay2018_Data["DayBoxReward"][3] = {}
tValentinesDay2018_Data["DayBoxReward"][3]["NeedGlamour"] = 1000
tValentinesDay2018_Data["DayBoxReward"][3]["BoxItem"] = 3310204
-- 第四档次魅力值及奖励
tValentinesDay2018_Data["DayBoxReward"][4] = {}
tValentinesDay2018_Data["DayBoxReward"][4]["NeedGlamour"] = 2000
tValentinesDay2018_Data["DayBoxReward"][4]["BoxItem"] = 3310205

-- 每日魅力值提交获取奖励值
tValentinesDay2018_Data["DayGlamourNum"] = 300

-- 每日提交鲜花上限
tValentinesDay2018_Data["FlowerGlamourNum"] = 4000

-- 额外产出 外套碎片概率
tValentinesDay2018_Data["ItemChance"] = {}
tValentinesDay2018_Data["ItemChance"][3310204] = 1500
tValentinesDay2018_Data["ItemChance"][3310205] = 1500
tValentinesDay2018_Data["ItemChance"][3310206] = 1500
tValentinesDay2018_Data["ItemChance"][3310198] = 51
tValentinesDay2018_Data["ItemChance"][3310199] = 231
tValentinesDay2018_Data["ItemChance"][3310200] = 424
tValentinesDay2018_Data["ItemChance"][3310215] = 7500
tValentinesDay2018_Data["ItemChance"][3310216] = 10000

-- 鹊仙居地图信息
tValentinesDay2018_Data["Map"] = {}
tValentinesDay2018_Data["Map"]["Id"] = 10362
tValentinesDay2018_Data["Map"]["InstanceType"] = 192
tValentinesDay2018_Data["Map"]["MapDoc"] = 10201

-- 花仙阁
tValentinesDay2018_Data["Map"]["Garden"] = {}
tValentinesDay2018_Data["Map"]["Garden"]["MapId"] = 10587
tValentinesDay2018_Data["Map"]["Garden"]["MapPosX"] = 399
tValentinesDay2018_Data["Map"]["Garden"]["MapPosY"] = 286


-- 种花新增掩码
local tValentinesDay2018_SeedPlainStc = {}
tValentinesDay2018_SeedPlainStc["Event"] = {}
tValentinesDay2018_SeedPlainStc["Data"] = {}
-- 花圃NPC掩码
-- （修改为种花掩码）   XXXXXX  前三位是判断是否采过的序列号，后三位是判断是否浇水过的序列号
tValentinesDay2018_SeedPlainStc["Event"][24479] = 180
tValentinesDay2018_SeedPlainStc["Data"][24479] = 71
tValentinesDay2018_SeedPlainStc["Event"][24480] = 180
tValentinesDay2018_SeedPlainStc["Data"][24480] = 72
tValentinesDay2018_SeedPlainStc["Event"][24481] = 180
tValentinesDay2018_SeedPlainStc["Data"][24481] = 73
tValentinesDay2018_SeedPlainStc["Event"][24482] = 180
tValentinesDay2018_SeedPlainStc["Data"][24482] = 74
tValentinesDay2018_SeedPlainStc["Event"][24485] = 180
tValentinesDay2018_SeedPlainStc["Data"][24485] = 75
tValentinesDay2018_SeedPlainStc["Event"][24486] = 180
tValentinesDay2018_SeedPlainStc["Data"][24486] = 76
tValentinesDay2018_SeedPlainStc["Event"][24487] = 180
tValentinesDay2018_SeedPlainStc["Data"][24487] = 77
tValentinesDay2018_SeedPlainStc["Event"][24488] = 180
tValentinesDay2018_SeedPlainStc["Data"][24488] = 78
tValentinesDay2018_SeedPlainStc["Event"][24489] = 180
tValentinesDay2018_SeedPlainStc["Data"][24489] = 79
tValentinesDay2018_SeedPlainStc["Event"][24490] = 180
tValentinesDay2018_SeedPlainStc["Data"][24490] = 80
tValentinesDay2018_SeedPlainStc["Event"][24491] = 180
tValentinesDay2018_SeedPlainStc["Data"][24491] = 81
tValentinesDay2018_SeedPlainStc["Event"][24492] = 180
tValentinesDay2018_SeedPlainStc["Data"][24492] = 82
tValentinesDay2018_SeedPlainStc["Event"][24493] = 180
tValentinesDay2018_SeedPlainStc["Data"][24493] = 83
tValentinesDay2018_SeedPlainStc["Event"][24494] = 180
tValentinesDay2018_SeedPlainStc["Data"][24494] = 84
tValentinesDay2018_SeedPlainStc["Event"][24495] = 180
tValentinesDay2018_SeedPlainStc["Data"][24495] = 85
tValentinesDay2018_SeedPlainStc["Event"][24496] = 180
tValentinesDay2018_SeedPlainStc["Data"][24496] = 86
tValentinesDay2018_SeedPlainStc["Event"][24497] = 180
tValentinesDay2018_SeedPlainStc["Data"][24497] = 87
tValentinesDay2018_SeedPlainStc["Event"][24498] = 180
tValentinesDay2018_SeedPlainStc["Data"][24498] = 88
tValentinesDay2018_SeedPlainStc["Event"][24499] = 180
tValentinesDay2018_SeedPlainStc["Data"][24499] = 89
tValentinesDay2018_SeedPlainStc["Event"][24500] = 180
tValentinesDay2018_SeedPlainStc["Data"][24500] = 90
tValentinesDay2018_SeedPlainStc["Event"][24568] = 180
tValentinesDay2018_SeedPlainStc["Data"][24568] = 91
tValentinesDay2018_SeedPlainStc["Event"][24569] = 180
tValentinesDay2018_SeedPlainStc["Data"][24569] = 92
tValentinesDay2018_SeedPlainStc["Event"][24570] = 180
tValentinesDay2018_SeedPlainStc["Data"][24570] = 93
tValentinesDay2018_SeedPlainStc["Event"][24571] = 180
tValentinesDay2018_SeedPlainStc["Data"][24571] = 94
tValentinesDay2018_SeedPlainStc["Event"][24572] = 180
tValentinesDay2018_SeedPlainStc["Data"][24572] = 95
tValentinesDay2018_SeedPlainStc["Event"][24573] = 180
tValentinesDay2018_SeedPlainStc["Data"][24573] = 96
tValentinesDay2018_SeedPlainStc["Event"][24574] = 180
tValentinesDay2018_SeedPlainStc["Data"][24574] = 97
tValentinesDay2018_SeedPlainStc["Event"][24575] = 180
tValentinesDay2018_SeedPlainStc["Data"][24575] = 98
tValentinesDay2018_SeedPlainStc["Event"][24576] = 180
tValentinesDay2018_SeedPlainStc["Data"][24576] = 99
tValentinesDay2018_SeedPlainStc["Event"][24577] = 181
tValentinesDay2018_SeedPlainStc["Data"][24577] = 01
tValentinesDay2018_SeedPlainStc["Event"][24578] = 181
tValentinesDay2018_SeedPlainStc["Data"][24578] = 02
tValentinesDay2018_SeedPlainStc["Event"][24579] = 181
tValentinesDay2018_SeedPlainStc["Data"][24579] = 03
tValentinesDay2018_SeedPlainStc["Event"][24580] = 181
tValentinesDay2018_SeedPlainStc["Data"][24580] = 04
tValentinesDay2018_SeedPlainStc["Event"][24581] = 181
tValentinesDay2018_SeedPlainStc["Data"][24581] = 05
tValentinesDay2018_SeedPlainStc["Event"][24582] = 181
tValentinesDay2018_SeedPlainStc["Data"][24582] = 06
tValentinesDay2018_SeedPlainStc["Event"][24583] = 181
tValentinesDay2018_SeedPlainStc["Data"][24583] = 07
tValentinesDay2018_SeedPlainStc["Event"][24584] = 181
tValentinesDay2018_SeedPlainStc["Data"][24584] = 08
tValentinesDay2018_SeedPlainStc["Event"][24585] = 181
tValentinesDay2018_SeedPlainStc["Data"][24585] = 09
tValentinesDay2018_SeedPlainStc["Event"][24586] = 181
tValentinesDay2018_SeedPlainStc["Data"][24586] = 10
tValentinesDay2018_SeedPlainStc["Event"][24587] = 181
tValentinesDay2018_SeedPlainStc["Data"][24587] = 11
tValentinesDay2018_SeedPlainStc["Event"][24588] = 181
tValentinesDay2018_SeedPlainStc["Data"][24588] = 12
tValentinesDay2018_SeedPlainStc["Event"][24589] = 181
tValentinesDay2018_SeedPlainStc["Data"][24589] = 13
tValentinesDay2018_SeedPlainStc["Event"][24590] = 181
tValentinesDay2018_SeedPlainStc["Data"][24590] = 14
tValentinesDay2018_SeedPlainStc["Event"][24591] = 181
tValentinesDay2018_SeedPlainStc["Data"][24591] = 15
tValentinesDay2018_SeedPlainStc["Event"][24592] = 181
tValentinesDay2018_SeedPlainStc["Data"][24592] = 16
tValentinesDay2018_SeedPlainStc["Event"][24593] = 181
tValentinesDay2018_SeedPlainStc["Data"][24593] = 17
tValentinesDay2018_SeedPlainStc["Event"][24594] = 181
tValentinesDay2018_SeedPlainStc["Data"][24594] = 18
tValentinesDay2018_SeedPlainStc["Event"][24595] = 181
tValentinesDay2018_SeedPlainStc["Data"][24595] = 19
tValentinesDay2018_SeedPlainStc["Event"][24596] = 181
tValentinesDay2018_SeedPlainStc["Data"][24596] = 20
tValentinesDay2018_SeedPlainStc["Event"][24597] = 181
tValentinesDay2018_SeedPlainStc["Data"][24597] = 21
tValentinesDay2018_SeedPlainStc["Event"][24598] = 181
tValentinesDay2018_SeedPlainStc["Data"][24598] = 22
tValentinesDay2018_SeedPlainStc["Event"][24599] = 181
tValentinesDay2018_SeedPlainStc["Data"][24599] = 23
tValentinesDay2018_SeedPlainStc["Event"][24600] = 181
tValentinesDay2018_SeedPlainStc["Data"][24600] = 24
tValentinesDay2018_SeedPlainStc["Event"][24601] = 181
tValentinesDay2018_SeedPlainStc["Data"][24601] = 25
tValentinesDay2018_SeedPlainStc["Event"][24602] = 181
tValentinesDay2018_SeedPlainStc["Data"][24602] = 26
tValentinesDay2018_SeedPlainStc["Event"][24603] = 181
tValentinesDay2018_SeedPlainStc["Data"][24603] = 27
tValentinesDay2018_SeedPlainStc["Event"][24604] = 181
tValentinesDay2018_SeedPlainStc["Data"][24604] = 28
tValentinesDay2018_SeedPlainStc["Event"][24605] = 200
tValentinesDay2018_SeedPlainStc["Data"][24605] = 81
tValentinesDay2018_SeedPlainStc["Event"][24606] = 200
tValentinesDay2018_SeedPlainStc["Data"][24606] = 82
tValentinesDay2018_SeedPlainStc["Event"][24607] = 200
tValentinesDay2018_SeedPlainStc["Data"][24607] = 83
tValentinesDay2018_SeedPlainStc["Event"][24608] = 200
tValentinesDay2018_SeedPlainStc["Data"][24608] = 84
tValentinesDay2018_SeedPlainStc["Event"][24609] = 200
tValentinesDay2018_SeedPlainStc["Data"][24609] = 85
tValentinesDay2018_SeedPlainStc["Event"][24610] = 200
tValentinesDay2018_SeedPlainStc["Data"][24610] = 86
tValentinesDay2018_SeedPlainStc["Event"][24611] = 200
tValentinesDay2018_SeedPlainStc["Data"][24611] = 87
tValentinesDay2018_SeedPlainStc["Event"][24612] = 200
tValentinesDay2018_SeedPlainStc["Data"][24612] = 88
tValentinesDay2018_SeedPlainStc["Event"][24613] = 200
tValentinesDay2018_SeedPlainStc["Data"][24613] = 89
tValentinesDay2018_SeedPlainStc["Event"][24614] = 200
tValentinesDay2018_SeedPlainStc["Data"][24614] = 90
tValentinesDay2018_SeedPlainStc["Event"][24615] = 200
tValentinesDay2018_SeedPlainStc["Data"][24615] = 91
tValentinesDay2018_SeedPlainStc["Event"][24616] = 200
tValentinesDay2018_SeedPlainStc["Data"][24616] = 92
tValentinesDay2018_SeedPlainStc["Event"][24617] = 200
tValentinesDay2018_SeedPlainStc["Data"][24617] = 93
tValentinesDay2018_SeedPlainStc["Event"][24618] = 200
tValentinesDay2018_SeedPlainStc["Data"][24618] = 94
tValentinesDay2018_SeedPlainStc["Event"][24619] = 200
tValentinesDay2018_SeedPlainStc["Data"][24619] = 95
tValentinesDay2018_SeedPlainStc["Event"][24620] = 200
tValentinesDay2018_SeedPlainStc["Data"][24620] = 96
tValentinesDay2018_SeedPlainStc["Event"][24621] = 200
tValentinesDay2018_SeedPlainStc["Data"][24621] = 97
tValentinesDay2018_SeedPlainStc["Event"][24622] = 200
tValentinesDay2018_SeedPlainStc["Data"][24622] = 98
tValentinesDay2018_SeedPlainStc["Event"][24623] = 200
tValentinesDay2018_SeedPlainStc["Data"][24623] = 99
tValentinesDay2018_SeedPlainStc["Event"][24624] = 201
tValentinesDay2018_SeedPlainStc["Data"][24624] = 00
tValentinesDay2018_SeedPlainStc["Event"][24625] = 201
tValentinesDay2018_SeedPlainStc["Data"][24625] = 01
tValentinesDay2018_SeedPlainStc["Event"][24626] = 201
tValentinesDay2018_SeedPlainStc["Data"][24626] = 02
tValentinesDay2018_SeedPlainStc["Event"][24627] = 201
tValentinesDay2018_SeedPlainStc["Data"][24627] = 03
tValentinesDay2018_SeedPlainStc["Event"][24628] = 201
tValentinesDay2018_SeedPlainStc["Data"][24628] = 04
tValentinesDay2018_SeedPlainStc["Event"][24629] = 201
tValentinesDay2018_SeedPlainStc["Data"][24629] = 05
tValentinesDay2018_SeedPlainStc["Event"][24630] = 201
tValentinesDay2018_SeedPlainStc["Data"][24630] = 06
tValentinesDay2018_SeedPlainStc["Event"][24631] = 201
tValentinesDay2018_SeedPlainStc["Data"][24631] = 07
tValentinesDay2018_SeedPlainStc["Event"][24632] = 201
tValentinesDay2018_SeedPlainStc["Data"][24632] = 08
tValentinesDay2018_SeedPlainStc["Event"][24633] = 201
tValentinesDay2018_SeedPlainStc["Data"][24633] = 09
tValentinesDay2018_SeedPlainStc["Event"][24634] = 201
tValentinesDay2018_SeedPlainStc["Data"][24634] = 10
tValentinesDay2018_SeedPlainStc["Event"][24635] = 201
tValentinesDay2018_SeedPlainStc["Data"][24635] = 11
tValentinesDay2018_SeedPlainStc["Event"][24636] = 201
tValentinesDay2018_SeedPlainStc["Data"][24636] = 12
tValentinesDay2018_SeedPlainStc["Event"][24637] = 201
tValentinesDay2018_SeedPlainStc["Data"][24637] = 13

-- stc(201, 14)  91、表示每日偷采的次数
tValentinesDay2018_SeedPlainStc["Event"][1] = 201
tValentinesDay2018_SeedPlainStc["Data"][1] = 14
-- stc(201, 15)  92、表示每日前三次种植
tValentinesDay2018_SeedPlainStc["Event"][2] = 201
tValentinesDay2018_SeedPlainStc["Data"][2] = 15
-- stc(201, 16)  93、每日浇灌最多三次获得真爱值
tValentinesDay2018_SeedPlainStc["Event"][3] = 201
tValentinesDay2018_SeedPlainStc["Data"][3] = 16


-- 花圃数据记录
local tValentinesDay2018_SeedPlainData = {}
tValentinesDay2018_SeedPlainData[24479] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24480] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24481] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24482] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24485] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24486] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24487] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24488] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24489] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24490] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24491] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24492] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24493] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24494] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24495] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24496] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24497] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24498] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24499] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24500] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24568] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24569] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24570] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24571] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24572] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24573] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24574] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24575] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24576] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24577] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24578] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24579] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24580] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24581] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24582] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24583] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24584] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24585] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24586] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24587] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24588] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24589] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24590] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24591] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24592] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24593] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24594] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24595] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24596] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24597] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24598] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24599] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24600] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24601] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24602] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24603] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24604] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24605] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24606] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24607] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24608] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24609] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24610] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24611] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24612] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24613] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24614] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24615] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24616] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24617] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24618] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24619] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24620] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24621] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24622] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24623] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24624] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24625] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24626] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24627] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24628] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24629] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24630] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24631] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24632] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24633] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24634] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24635] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24636] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
tValentinesDay2018_SeedPlainData[24637] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}


-- 邮件表
local tValentinesDay2018_Mail = {}
-- 日常魅力成长包
tValentinesDay2018_Mail["TaoGift"] = {}
tValentinesDay2018_Mail["TaoGift"]["Sender"] = tValentinesDay2018_Text["Lettter"]["Glamour"]["Sender"]
tValentinesDay2018_Mail["TaoGift"]["Title"] = tValentinesDay2018_Text["Lettter"]["Glamour"]["Title"]
tValentinesDay2018_Mail["TaoGift"]["Content"] = tValentinesDay2018_Text["Lettter"]["Glamour"]["Content"]
tValentinesDay2018_Mail["TaoGift"]["ActionId"] = 569714
-- 掏宝箱
tValentinesDay2018_Mail["BoxReward"] = {}
tValentinesDay2018_Mail["BoxReward"]["Sender"] = tValentinesDay2018_Text["Lettter"]["BoxReward"]["Sender"]
tValentinesDay2018_Mail["BoxReward"]["Title"] = tValentinesDay2018_Text["Lettter"]["BoxReward"]["Title"]
tValentinesDay2018_Mail["BoxReward"]["Content"] = tValentinesDay2018_Text["Lettter"]["BoxReward"]["Content"]
tValentinesDay2018_Mail["BoxReward"]["ActionId"] = {}
tValentinesDay2018_Mail["BoxReward"]["ActionId"][1] = 569715
tValentinesDay2018_Mail["BoxReward"]["ActionId"][2] = 569716
tValentinesDay2018_Mail["BoxReward"]["ActionId"][3] = 569717
tValentinesDay2018_Mail["BoxReward"]["ActionId"][4] = 569718

-- 光效表
local tValentinesDay2018_Effect = {}
-- 限制放置数量
tValentinesDay2018_Effect["Num"] = 30
-- 已放置光效
tValentinesDay2018_Effect["HavePut"] = {}
-- 花草
tValentinesDay2018_Effect["HavePut"][1] = {}
-- 点点绿意
tValentinesDay2018_Effect["HavePut"][1][1] = {}
tValentinesDay2018_Effect["HavePut"][1][1]["TrapType"] = 2025
tValentinesDay2018_Effect["HavePut"][1][1]["Look"] = 2025
tValentinesDay2018_Effect["HavePut"][1][1]["TypeSign"] = 1
-- 点点紫意
tValentinesDay2018_Effect["HavePut"][1][2] = {}
tValentinesDay2018_Effect["HavePut"][1][2]["TrapType"] = 2026
tValentinesDay2018_Effect["HavePut"][1][2]["Look"] = 2026
tValentinesDay2018_Effect["HavePut"][1][2]["TypeSign"] = 2
-- 点点粉意
tValentinesDay2018_Effect["HavePut"][1][3] = {}
tValentinesDay2018_Effect["HavePut"][1][3]["TrapType"] = 2027
tValentinesDay2018_Effect["HavePut"][1][3]["Look"] = 2027
tValentinesDay2018_Effect["HavePut"][1][3]["TypeSign"] = 3
-- 点点蓝意
tValentinesDay2018_Effect["HavePut"][1][4] = {}
tValentinesDay2018_Effect["HavePut"][1][4]["TrapType"] = 2028
tValentinesDay2018_Effect["HavePut"][1][4]["Look"] = 2028
tValentinesDay2018_Effect["HavePut"][1][4]["TypeSign"] = 4

-- 气球
tValentinesDay2018_Effect["HavePut"][2] = {}
-- 微笑气球
tValentinesDay2018_Effect["HavePut"][2][1] = {}
tValentinesDay2018_Effect["HavePut"][2][1]["TrapType"] = 2029
tValentinesDay2018_Effect["HavePut"][2][1]["Look"] = 2029
tValentinesDay2018_Effect["HavePut"][2][1]["TypeSign"] = 5
-- 爱心气球
tValentinesDay2018_Effect["HavePut"][2][2] = {}
tValentinesDay2018_Effect["HavePut"][2][2]["TrapType"] = 2030
tValentinesDay2018_Effect["HavePut"][2][2]["Look"] = 2030
tValentinesDay2018_Effect["HavePut"][2][2]["TypeSign"] = 6
-- 星星气球
tValentinesDay2018_Effect["HavePut"][2][3] = {}
tValentinesDay2018_Effect["HavePut"][2][3]["TrapType"] = 2031
tValentinesDay2018_Effect["HavePut"][2][3]["Look"] = 2031
tValentinesDay2018_Effect["HavePut"][2][3]["TypeSign"] = 7

-- 流光
tValentinesDay2018_Effect["HavePut"][3] = {}
-- 百年好合
tValentinesDay2018_Effect["HavePut"][3][1] = {}
tValentinesDay2018_Effect["HavePut"][3][1]["TrapType"] = 2032
tValentinesDay2018_Effect["HavePut"][3][1]["Look"] = 2032
tValentinesDay2018_Effect["HavePut"][3][1]["TypeSign"] = 8
-- 飞花弄蝶
tValentinesDay2018_Effect["HavePut"][3][2] = {}
tValentinesDay2018_Effect["HavePut"][3][2]["TrapType"] = 2033
tValentinesDay2018_Effect["HavePut"][3][2]["Look"] = 2033
tValentinesDay2018_Effect["HavePut"][3][2]["TypeSign"] = 9
-- 粉蝶翩跹
tValentinesDay2018_Effect["HavePut"][3][3] = {}
tValentinesDay2018_Effect["HavePut"][3][3]["TrapType"] = 2034
tValentinesDay2018_Effect["HavePut"][3][3]["Look"] = 2034
tValentinesDay2018_Effect["HavePut"][3][3]["TypeSign"] = 10
-- 梦幻鹿影
tValentinesDay2018_Effect["HavePut"][3][4] = {}
tValentinesDay2018_Effect["HavePut"][3][4]["TrapType"] = 2035
tValentinesDay2018_Effect["HavePut"][3][4]["Look"] = 2035
tValentinesDay2018_Effect["HavePut"][3][4]["TypeSign"] = 11
-- 空速星痕
tValentinesDay2018_Effect["HavePut"][3][5] = {}
tValentinesDay2018_Effect["HavePut"][3][5]["TrapType"] = 2036
tValentinesDay2018_Effect["HavePut"][3][5]["Look"] = 2036
tValentinesDay2018_Effect["HavePut"][3][5]["TypeSign"] = 12
-- 钱从天降
tValentinesDay2018_Effect["HavePut"][3][6] = {}
tValentinesDay2018_Effect["HavePut"][3][6]["TrapType"] = 2037
tValentinesDay2018_Effect["HavePut"][3][6]["Look"] = 2037
tValentinesDay2018_Effect["HavePut"][3][6]["TypeSign"] = 13
-- 落樱缤纷
tValentinesDay2018_Effect["HavePut"][3][7] = {}
tValentinesDay2018_Effect["HavePut"][3][7]["TrapType"] = 2038
tValentinesDay2018_Effect["HavePut"][3][7]["Look"] = 2038
tValentinesDay2018_Effect["HavePut"][3][7]["TypeSign"] = 14
-- 魅蓝扇舞
tValentinesDay2018_Effect["HavePut"][3][8] = {}
tValentinesDay2018_Effect["HavePut"][3][8]["TrapType"] = 2039
tValentinesDay2018_Effect["HavePut"][3][8]["Look"] = 2039
tValentinesDay2018_Effect["HavePut"][3][8]["TypeSign"] = 15
-- 落花轮舞
tValentinesDay2018_Effect["HavePut"][3][9] = {}
tValentinesDay2018_Effect["HavePut"][3][9]["TrapType"] = 2040
tValentinesDay2018_Effect["HavePut"][3][9]["Look"] = 2040
tValentinesDay2018_Effect["HavePut"][3][9]["TypeSign"] = 16
-- 冰棱剑阵
tValentinesDay2018_Effect["HavePut"][3][10] = {}
tValentinesDay2018_Effect["HavePut"][3][10]["TrapType"] = 2041
tValentinesDay2018_Effect["HavePut"][3][10]["Look"] = 2041
tValentinesDay2018_Effect["HavePut"][3][10]["TypeSign"] = 17

-- 炫影
tValentinesDay2018_Effect["HavePut"][4] = {}
-- 音律风暴
tValentinesDay2018_Effect["HavePut"][4][1] = {}
tValentinesDay2018_Effect["HavePut"][4][1]["TrapType"] = 2042
tValentinesDay2018_Effect["HavePut"][4][1]["Look"] = 2042
tValentinesDay2018_Effect["HavePut"][4][1]["TypeSign"] = 18
-- 雷霆风暴
tValentinesDay2018_Effect["HavePut"][4][2] = {}
tValentinesDay2018_Effect["HavePut"][4][2]["TrapType"] = 2043
tValentinesDay2018_Effect["HavePut"][4][2]["Look"] = 2043
tValentinesDay2018_Effect["HavePut"][4][2]["TypeSign"] = 19
-- 律动之音
tValentinesDay2018_Effect["HavePut"][4][3] = {}
tValentinesDay2018_Effect["HavePut"][4][3]["TrapType"] = 2044
tValentinesDay2018_Effect["HavePut"][4][3]["Look"] = 2044
tValentinesDay2018_Effect["HavePut"][4][3]["TypeSign"] = 20
-- 龙啸九天
tValentinesDay2018_Effect["HavePut"][4][4] = {}
tValentinesDay2018_Effect["HavePut"][4][4]["TrapType"] = 2045
tValentinesDay2018_Effect["HavePut"][4][4]["Look"] = 2045
tValentinesDay2018_Effect["HavePut"][4][4]["TypeSign"] = 21
-- 浪漫烟花
tValentinesDay2018_Effect["HavePut"][4][5] = {}
tValentinesDay2018_Effect["HavePut"][4][5]["TrapType"] = 2046
tValentinesDay2018_Effect["HavePut"][4][5]["Look"] = 2046
tValentinesDay2018_Effect["HavePut"][4][5]["TypeSign"] = 22
-- 精灵之光
tValentinesDay2018_Effect["HavePut"][4][6] = {}
tValentinesDay2018_Effect["HavePut"][4][6]["TrapType"] = 2047
tValentinesDay2018_Effect["HavePut"][4][6]["Look"] = 2047
tValentinesDay2018_Effect["HavePut"][4][6]["TypeSign"] = 23
-- 心之所向
tValentinesDay2018_Effect["HavePut"][4][7] = {}
tValentinesDay2018_Effect["HavePut"][4][7]["TrapType"] = 2048
tValentinesDay2018_Effect["HavePut"][4][7]["Look"] = 2048
tValentinesDay2018_Effect["HavePut"][4][7]["TypeSign"] = 24
-- 神秘漩涡
tValentinesDay2018_Effect["HavePut"][4][8] = {}
tValentinesDay2018_Effect["HavePut"][4][8]["TrapType"] = 2049
tValentinesDay2018_Effect["HavePut"][4][8]["Look"] = 2049
tValentinesDay2018_Effect["HavePut"][4][8]["TypeSign"] = 25
-- 紫韵星影
tValentinesDay2018_Effect["HavePut"][4][9] = {}
tValentinesDay2018_Effect["HavePut"][4][9]["TrapType"] = 2050
tValentinesDay2018_Effect["HavePut"][4][9]["Look"] = 2050
tValentinesDay2018_Effect["HavePut"][4][9]["TypeSign"] = 26
-- 夏沫之花
tValentinesDay2018_Effect["HavePut"][4][10] = {}
tValentinesDay2018_Effect["HavePut"][4][10]["TrapType"] = 2051
tValentinesDay2018_Effect["HavePut"][4][10]["Look"] = 2051
tValentinesDay2018_Effect["HavePut"][4][10]["TypeSign"] = 27

-- 光效编号转化光效类别
tValentinesDay2018_Effect["EffectNum"] = {}
-- 点点绿意
tValentinesDay2018_Effect["EffectNum"][1] = {}
tValentinesDay2018_Effect["EffectNum"][1]["EffectType"] = 1
tValentinesDay2018_Effect["EffectNum"][1]["EffectSign"] = 1
-- 点点紫意
tValentinesDay2018_Effect["EffectNum"][2] = {}
tValentinesDay2018_Effect["EffectNum"][2]["EffectType"] = 1
tValentinesDay2018_Effect["EffectNum"][2]["EffectSign"] = 2
-- 点点粉意
tValentinesDay2018_Effect["EffectNum"][3] = {}
tValentinesDay2018_Effect["EffectNum"][3]["EffectType"] = 1
tValentinesDay2018_Effect["EffectNum"][3]["EffectSign"] = 3
-- 点点蓝意
tValentinesDay2018_Effect["EffectNum"][4] = {}
tValentinesDay2018_Effect["EffectNum"][4]["EffectType"] = 1
tValentinesDay2018_Effect["EffectNum"][4]["EffectSign"] = 4
-- 微笑气球
tValentinesDay2018_Effect["EffectNum"][5] = {}
tValentinesDay2018_Effect["EffectNum"][5]["EffectType"] = 2
tValentinesDay2018_Effect["EffectNum"][5]["EffectSign"] = 1
-- 爱心气球
tValentinesDay2018_Effect["EffectNum"][6] = {}
tValentinesDay2018_Effect["EffectNum"][6]["EffectType"] = 2
tValentinesDay2018_Effect["EffectNum"][6]["EffectSign"] = 2
-- 星星气球
tValentinesDay2018_Effect["EffectNum"][7] = {}
tValentinesDay2018_Effect["EffectNum"][7]["EffectType"] = 2
tValentinesDay2018_Effect["EffectNum"][7]["EffectSign"] = 3
-- 百年好合
tValentinesDay2018_Effect["EffectNum"][8] = {}
tValentinesDay2018_Effect["EffectNum"][8]["EffectType"] = 3
tValentinesDay2018_Effect["EffectNum"][8]["EffectSign"] = 1
-- 飞花弄蝶
tValentinesDay2018_Effect["EffectNum"][9] = {}
tValentinesDay2018_Effect["EffectNum"][9]["EffectType"] = 3
tValentinesDay2018_Effect["EffectNum"][9]["EffectSign"] = 2
-- 粉蝶翩跹
tValentinesDay2018_Effect["EffectNum"][10] = {}
tValentinesDay2018_Effect["EffectNum"][10]["EffectType"] = 3
tValentinesDay2018_Effect["EffectNum"][10]["EffectSign"] = 3
-- 梦幻鹿影
tValentinesDay2018_Effect["EffectNum"][11] = {}
tValentinesDay2018_Effect["EffectNum"][11]["EffectType"] = 3
tValentinesDay2018_Effect["EffectNum"][11]["EffectSign"] = 4
-- 空速星痕
tValentinesDay2018_Effect["EffectNum"][12] = {}
tValentinesDay2018_Effect["EffectNum"][12]["EffectType"] = 3
tValentinesDay2018_Effect["EffectNum"][12]["EffectSign"] = 5
-- 钱从天降
tValentinesDay2018_Effect["EffectNum"][13] = {}
tValentinesDay2018_Effect["EffectNum"][13]["EffectType"] = 3
tValentinesDay2018_Effect["EffectNum"][13]["EffectSign"] = 6
-- 落樱缤纷
tValentinesDay2018_Effect["EffectNum"][14] = {}
tValentinesDay2018_Effect["EffectNum"][14]["EffectType"] = 3
tValentinesDay2018_Effect["EffectNum"][14]["EffectSign"] = 7
-- 魅蓝扇舞
tValentinesDay2018_Effect["EffectNum"][15] = {}
tValentinesDay2018_Effect["EffectNum"][15]["EffectType"] = 3
tValentinesDay2018_Effect["EffectNum"][15]["EffectSign"] = 8
-- 落花轮舞
tValentinesDay2018_Effect["EffectNum"][16] = {}
tValentinesDay2018_Effect["EffectNum"][16]["EffectType"] = 3
tValentinesDay2018_Effect["EffectNum"][16]["EffectSign"] = 9
-- 冰棱剑阵
tValentinesDay2018_Effect["EffectNum"][17] = {}
tValentinesDay2018_Effect["EffectNum"][17]["EffectType"] = 3
tValentinesDay2018_Effect["EffectNum"][17]["EffectSign"] = 10
-- 音律风暴
tValentinesDay2018_Effect["EffectNum"][18] = {}
tValentinesDay2018_Effect["EffectNum"][18]["EffectType"] = 4
tValentinesDay2018_Effect["EffectNum"][18]["EffectSign"] = 1
-- 雷霆风暴
tValentinesDay2018_Effect["EffectNum"][19] = {}
tValentinesDay2018_Effect["EffectNum"][19]["EffectType"] = 4
tValentinesDay2018_Effect["EffectNum"][19]["EffectSign"] = 2
-- 律动之音
tValentinesDay2018_Effect["EffectNum"][20] = {}
tValentinesDay2018_Effect["EffectNum"][20]["EffectType"] = 4
tValentinesDay2018_Effect["EffectNum"][20]["EffectSign"] = 3
-- 龙啸九天
tValentinesDay2018_Effect["EffectNum"][21] = {}
tValentinesDay2018_Effect["EffectNum"][21]["EffectType"] = 4
tValentinesDay2018_Effect["EffectNum"][21]["EffectSign"] = 4
-- 浪漫烟花
tValentinesDay2018_Effect["EffectNum"][22] = {}
tValentinesDay2018_Effect["EffectNum"][22]["EffectType"] = 4
tValentinesDay2018_Effect["EffectNum"][22]["EffectSign"] = 5
-- 精灵之光
tValentinesDay2018_Effect["EffectNum"][23] = {}
tValentinesDay2018_Effect["EffectNum"][23]["EffectType"] = 4
tValentinesDay2018_Effect["EffectNum"][23]["EffectSign"] = 6
-- 心之所向
tValentinesDay2018_Effect["EffectNum"][24] = {}
tValentinesDay2018_Effect["EffectNum"][24]["EffectType"] = 4
tValentinesDay2018_Effect["EffectNum"][24]["EffectSign"] = 7
-- 神秘漩涡
tValentinesDay2018_Effect["EffectNum"][25] = {}
tValentinesDay2018_Effect["EffectNum"][25]["EffectType"] = 4
tValentinesDay2018_Effect["EffectNum"][25]["EffectSign"] = 8
-- 紫韵星影
tValentinesDay2018_Effect["EffectNum"][26] = {}
tValentinesDay2018_Effect["EffectNum"][26]["EffectType"] = 4
tValentinesDay2018_Effect["EffectNum"][26]["EffectSign"] = 9
-- 夏沫之花
tValentinesDay2018_Effect["EffectNum"][27] = {}
tValentinesDay2018_Effect["EffectNum"][27]["EffectType"] = 4
tValentinesDay2018_Effect["EffectNum"][27]["EffectSign"] = 10



-- 已收藏的光效掩码
tValentinesDay2018_Effect["CollectionStc"] = {}
-- 花草
tValentinesDay2018_Effect["CollectionStc"][1] = {}
-- 点点绿意
tValentinesDay2018_Effect["CollectionStc"][1][1] = {}
tValentinesDay2018_Effect["CollectionStc"][1][1]["Event"] = 181
tValentinesDay2018_Effect["CollectionStc"][1][1]["Data"] = 2
-- 点点紫意
tValentinesDay2018_Effect["CollectionStc"][1][2] = {}
tValentinesDay2018_Effect["CollectionStc"][1][2]["Event"] = 181
tValentinesDay2018_Effect["CollectionStc"][1][2]["Data"] = 3
-- 点点粉意
tValentinesDay2018_Effect["CollectionStc"][1][3] = {}
tValentinesDay2018_Effect["CollectionStc"][1][3]["Event"] = 181
tValentinesDay2018_Effect["CollectionStc"][1][3]["Data"] = 4
-- 点点蓝意
tValentinesDay2018_Effect["CollectionStc"][1][4] = {}
tValentinesDay2018_Effect["CollectionStc"][1][4]["Event"] = 181
tValentinesDay2018_Effect["CollectionStc"][1][4]["Data"] = 5

-- 气球
tValentinesDay2018_Effect["CollectionStc"][2] = {}
-- 微笑气球
tValentinesDay2018_Effect["CollectionStc"][2][1] = {}
tValentinesDay2018_Effect["CollectionStc"][2][1]["Event"] = 181
tValentinesDay2018_Effect["CollectionStc"][2][1]["Data"] = 6
-- 爱心气球
tValentinesDay2018_Effect["CollectionStc"][2][2] = {}
tValentinesDay2018_Effect["CollectionStc"][2][2]["Event"] = 181
tValentinesDay2018_Effect["CollectionStc"][2][2]["Data"] = 7
-- 星星气球
tValentinesDay2018_Effect["CollectionStc"][2][3] = {}
tValentinesDay2018_Effect["CollectionStc"][2][3]["Event"] = 181
tValentinesDay2018_Effect["CollectionStc"][2][3]["Data"] = 8

-- 流光
tValentinesDay2018_Effect["CollectionStc"][3] = {}
-- 百年好合
tValentinesDay2018_Effect["CollectionStc"][3][1] = {}
tValentinesDay2018_Effect["CollectionStc"][3][1]["Event"] = 181
tValentinesDay2018_Effect["CollectionStc"][3][1]["Data"] = 9
-- 飞花弄蝶
tValentinesDay2018_Effect["CollectionStc"][3][2] = {}
tValentinesDay2018_Effect["CollectionStc"][3][2]["Event"] = 181
tValentinesDay2018_Effect["CollectionStc"][3][2]["Data"] = 10
-- 粉蝶翩跹
tValentinesDay2018_Effect["CollectionStc"][3][3] = {}
tValentinesDay2018_Effect["CollectionStc"][3][3]["Event"] = 181
tValentinesDay2018_Effect["CollectionStc"][3][3]["Data"] = 11
-- 梦幻鹿影
tValentinesDay2018_Effect["CollectionStc"][3][4] = {}
tValentinesDay2018_Effect["CollectionStc"][3][4]["Event"] = 181
tValentinesDay2018_Effect["CollectionStc"][3][4]["Data"] = 12
-- 空速星痕
tValentinesDay2018_Effect["CollectionStc"][3][5] = {}
tValentinesDay2018_Effect["CollectionStc"][3][5]["Event"] = 181
tValentinesDay2018_Effect["CollectionStc"][3][5]["Data"] = 13
-- 钱从天降
tValentinesDay2018_Effect["CollectionStc"][3][6] = {}
tValentinesDay2018_Effect["CollectionStc"][3][6]["Event"] = 181
tValentinesDay2018_Effect["CollectionStc"][3][6]["Data"] = 14
-- 落樱缤纷
tValentinesDay2018_Effect["CollectionStc"][3][7] = {}
tValentinesDay2018_Effect["CollectionStc"][3][7]["Event"] = 181
tValentinesDay2018_Effect["CollectionStc"][3][7]["Data"] = 15
-- 魅蓝扇舞
tValentinesDay2018_Effect["CollectionStc"][3][8] = {}
tValentinesDay2018_Effect["CollectionStc"][3][8]["Event"] = 181
tValentinesDay2018_Effect["CollectionStc"][3][8]["Data"] = 16
-- 落花轮舞
tValentinesDay2018_Effect["CollectionStc"][3][9] = {}
tValentinesDay2018_Effect["CollectionStc"][3][9]["Event"] = 181
tValentinesDay2018_Effect["CollectionStc"][3][9]["Data"] = 17
-- 冰棱剑阵
tValentinesDay2018_Effect["CollectionStc"][3][10] = {}
tValentinesDay2018_Effect["CollectionStc"][3][10]["Event"] = 181
tValentinesDay2018_Effect["CollectionStc"][3][10]["Data"] = 18

-- 炫影
tValentinesDay2018_Effect["CollectionStc"][4] = {}
-- 音律风暴
tValentinesDay2018_Effect["CollectionStc"][4][1] = {}
tValentinesDay2018_Effect["CollectionStc"][4][1]["Event"] = 181
tValentinesDay2018_Effect["CollectionStc"][4][1]["Data"] = 19
-- 雷霆风暴
tValentinesDay2018_Effect["CollectionStc"][4][2] = {}
tValentinesDay2018_Effect["CollectionStc"][4][2]["Event"] = 181
tValentinesDay2018_Effect["CollectionStc"][4][2]["Data"] = 20
-- 律动之音
tValentinesDay2018_Effect["CollectionStc"][4][3] = {}
tValentinesDay2018_Effect["CollectionStc"][4][3]["Event"] = 181
tValentinesDay2018_Effect["CollectionStc"][4][3]["Data"] = 21
-- 龙啸九天
tValentinesDay2018_Effect["CollectionStc"][4][4] = {}
tValentinesDay2018_Effect["CollectionStc"][4][4]["Event"] = 181
tValentinesDay2018_Effect["CollectionStc"][4][4]["Data"] = 22
-- 浪漫烟花
tValentinesDay2018_Effect["CollectionStc"][4][5] = {}
tValentinesDay2018_Effect["CollectionStc"][4][5]["Event"] = 181
tValentinesDay2018_Effect["CollectionStc"][4][5]["Data"] = 23
-- 精灵之光
tValentinesDay2018_Effect["CollectionStc"][4][6] = {}
tValentinesDay2018_Effect["CollectionStc"][4][6]["Event"] = 181
tValentinesDay2018_Effect["CollectionStc"][4][6]["Data"] = 24
-- 心之所向
tValentinesDay2018_Effect["CollectionStc"][4][7] = {}
tValentinesDay2018_Effect["CollectionStc"][4][7]["Event"] = 181
tValentinesDay2018_Effect["CollectionStc"][4][7]["Data"] = 25
-- 神秘漩涡
tValentinesDay2018_Effect["CollectionStc"][4][8] = {}
tValentinesDay2018_Effect["CollectionStc"][4][8]["Event"] = 181
tValentinesDay2018_Effect["CollectionStc"][4][8]["Data"] = 26
-- 紫韵星影
tValentinesDay2018_Effect["CollectionStc"][4][9] = {}
tValentinesDay2018_Effect["CollectionStc"][4][9]["Event"] = 181
tValentinesDay2018_Effect["CollectionStc"][4][9]["Data"] = 27
-- 夏沫之花
tValentinesDay2018_Effect["CollectionStc"][4][10] = {}
tValentinesDay2018_Effect["CollectionStc"][4][10]["Event"] = 181
tValentinesDay2018_Effect["CollectionStc"][4][10]["Data"] = 28

-- 已放置地效部分掩码
tValentinesDay2018_Effect["PutStc"] = {}
tValentinesDay2018_Effect["PutStc"]["Event"] = {}
tValentinesDay2018_Effect["PutStc"]["Data"] = {}
-- 第 1  个光效
tValentinesDay2018_Effect["PutStc"]["Event"][1] = 180
tValentinesDay2018_Effect["PutStc"]["Data"][1] = 71
-- 第 2  个光效
tValentinesDay2018_Effect["PutStc"]["Event"][2] = 180
tValentinesDay2018_Effect["PutStc"]["Data"][2] = 72
-- 第 3  个光效
tValentinesDay2018_Effect["PutStc"]["Event"][3] = 180
tValentinesDay2018_Effect["PutStc"]["Data"][3] = 73
-- 第 4  个光效
tValentinesDay2018_Effect["PutStc"]["Event"][4] = 180
tValentinesDay2018_Effect["PutStc"]["Data"][4] = 74
-- 第 5  个光效
tValentinesDay2018_Effect["PutStc"]["Event"][5] = 180
tValentinesDay2018_Effect["PutStc"]["Data"][5] = 75
-- 第 6  个光效
tValentinesDay2018_Effect["PutStc"]["Event"][6] = 180
tValentinesDay2018_Effect["PutStc"]["Data"][6] = 76
-- 第 7  个光效
tValentinesDay2018_Effect["PutStc"]["Event"][7] = 180
tValentinesDay2018_Effect["PutStc"]["Data"][7] = 77
-- 第 8  个光效
tValentinesDay2018_Effect["PutStc"]["Event"][8] = 180
tValentinesDay2018_Effect["PutStc"]["Data"][8] = 78
-- 第 9  个光效
tValentinesDay2018_Effect["PutStc"]["Event"][9] = 180
tValentinesDay2018_Effect["PutStc"]["Data"][9] = 79
-- 第 10 个光效
tValentinesDay2018_Effect["PutStc"]["Event"][10] = 180
tValentinesDay2018_Effect["PutStc"]["Data"][10] = 80
-- 第 11 个光效
tValentinesDay2018_Effect["PutStc"]["Event"][11] = 180
tValentinesDay2018_Effect["PutStc"]["Data"][11] = 81
-- 第 12 个光效
tValentinesDay2018_Effect["PutStc"]["Event"][12] = 180
tValentinesDay2018_Effect["PutStc"]["Data"][12] = 82
-- 第 13 个光效
tValentinesDay2018_Effect["PutStc"]["Event"][13] = 180
tValentinesDay2018_Effect["PutStc"]["Data"][13] = 83
-- 第 14 个光效
tValentinesDay2018_Effect["PutStc"]["Event"][14] = 180
tValentinesDay2018_Effect["PutStc"]["Data"][14] = 84
-- 第 15 个光效
tValentinesDay2018_Effect["PutStc"]["Event"][15] = 180
tValentinesDay2018_Effect["PutStc"]["Data"][15] = 85
-- 第 16 个光效
tValentinesDay2018_Effect["PutStc"]["Event"][16] = 180
tValentinesDay2018_Effect["PutStc"]["Data"][16] = 86
-- 第 17 个光效
tValentinesDay2018_Effect["PutStc"]["Event"][17] = 180
tValentinesDay2018_Effect["PutStc"]["Data"][17] = 87
-- 第 18 个光效
tValentinesDay2018_Effect["PutStc"]["Event"][18] = 180
tValentinesDay2018_Effect["PutStc"]["Data"][18] = 88
-- 第 19 个光效
tValentinesDay2018_Effect["PutStc"]["Event"][19] = 180
tValentinesDay2018_Effect["PutStc"]["Data"][19] = 89
-- 第 20 个光效
tValentinesDay2018_Effect["PutStc"]["Event"][20] = 180
tValentinesDay2018_Effect["PutStc"]["Data"][20] = 90
-- 第 21 个光效
tValentinesDay2018_Effect["PutStc"]["Event"][21] = 180
tValentinesDay2018_Effect["PutStc"]["Data"][21] = 91
-- 第 22 个光效
tValentinesDay2018_Effect["PutStc"]["Event"][22] = 180
tValentinesDay2018_Effect["PutStc"]["Data"][22] = 92
-- 第 23 个光效
tValentinesDay2018_Effect["PutStc"]["Event"][23] = 180
tValentinesDay2018_Effect["PutStc"]["Data"][23] = 93
-- 第 24 个光效
tValentinesDay2018_Effect["PutStc"]["Event"][24] = 180
tValentinesDay2018_Effect["PutStc"]["Data"][24] = 94
-- 第 25 个光效
tValentinesDay2018_Effect["PutStc"]["Event"][25] = 180
tValentinesDay2018_Effect["PutStc"]["Data"][25] = 95
-- 第 26 个光效
tValentinesDay2018_Effect["PutStc"]["Event"][26] = 180
tValentinesDay2018_Effect["PutStc"]["Data"][26] = 96
-- 第 27 个光效
tValentinesDay2018_Effect["PutStc"]["Event"][27] = 180
tValentinesDay2018_Effect["PutStc"]["Data"][27] = 97
-- 第 28 个光效
tValentinesDay2018_Effect["PutStc"]["Event"][28] = 180
tValentinesDay2018_Effect["PutStc"]["Data"][28] = 98
-- 第 29 个光效
tValentinesDay2018_Effect["PutStc"]["Event"][29] = 180
tValentinesDay2018_Effect["PutStc"]["Data"][29] = 99
-- 第 30 个光效
tValentinesDay2018_Effect["PutStc"]["Event"][30] = 181
tValentinesDay2018_Effect["PutStc"]["Data"][30] = 1

-- 光效type
tValentinesDay2018_Effect["TrapType"] = {}
tValentinesDay2018_Effect["TrapType"][1]  = 2025
tValentinesDay2018_Effect["TrapType"][2]  = 2026
tValentinesDay2018_Effect["TrapType"][3]  = 2027
tValentinesDay2018_Effect["TrapType"][4]  = 2028
tValentinesDay2018_Effect["TrapType"][5]  = 2029
tValentinesDay2018_Effect["TrapType"][6]  = 2030
tValentinesDay2018_Effect["TrapType"][7]  = 2031
tValentinesDay2018_Effect["TrapType"][8]  = 2032
tValentinesDay2018_Effect["TrapType"][9]  = 2033
tValentinesDay2018_Effect["TrapType"][10] = 2034
tValentinesDay2018_Effect["TrapType"][11] = 2035
tValentinesDay2018_Effect["TrapType"][12] = 2036
tValentinesDay2018_Effect["TrapType"][13] = 2037
tValentinesDay2018_Effect["TrapType"][14] = 2038
tValentinesDay2018_Effect["TrapType"][15] = 2039
tValentinesDay2018_Effect["TrapType"][16] = 2040
tValentinesDay2018_Effect["TrapType"][17] = 2041
tValentinesDay2018_Effect["TrapType"][18] = 2042
tValentinesDay2018_Effect["TrapType"][19] = 2043
tValentinesDay2018_Effect["TrapType"][20] = 2044
tValentinesDay2018_Effect["TrapType"][21] = 2045
tValentinesDay2018_Effect["TrapType"][22] = 2046
tValentinesDay2018_Effect["TrapType"][23] = 2047
tValentinesDay2018_Effect["TrapType"][24] = 2048
tValentinesDay2018_Effect["TrapType"][25] = 2049
tValentinesDay2018_Effect["TrapType"][26] = 2050
tValentinesDay2018_Effect["TrapType"][27] = 2051
-- 光效Look
tValentinesDay2018_Effect["TrapLook"] = {}
tValentinesDay2018_Effect["TrapLook"][1]  = 2025
tValentinesDay2018_Effect["TrapLook"][2]  = 2026
tValentinesDay2018_Effect["TrapLook"][3]  = 2027
tValentinesDay2018_Effect["TrapLook"][4]  = 2028
tValentinesDay2018_Effect["TrapLook"][5]  = 2029
tValentinesDay2018_Effect["TrapLook"][6]  = 2030
tValentinesDay2018_Effect["TrapLook"][7]  = 2031
tValentinesDay2018_Effect["TrapLook"][8]  = 2032
tValentinesDay2018_Effect["TrapLook"][9]  = 2033
tValentinesDay2018_Effect["TrapLook"][10] = 2034
tValentinesDay2018_Effect["TrapLook"][11] = 2035
tValentinesDay2018_Effect["TrapLook"][12] = 2036
tValentinesDay2018_Effect["TrapLook"][13] = 2037
tValentinesDay2018_Effect["TrapLook"][14] = 2038
tValentinesDay2018_Effect["TrapLook"][15] = 2039
tValentinesDay2018_Effect["TrapLook"][16] = 2040
tValentinesDay2018_Effect["TrapLook"][17] = 2041
tValentinesDay2018_Effect["TrapLook"][18] = 2042
tValentinesDay2018_Effect["TrapLook"][19] = 2043
tValentinesDay2018_Effect["TrapLook"][20] = 2044
tValentinesDay2018_Effect["TrapLook"][21] = 2045
tValentinesDay2018_Effect["TrapLook"][22] = 2046
tValentinesDay2018_Effect["TrapLook"][23] = 2047
tValentinesDay2018_Effect["TrapLook"][24] = 2048
tValentinesDay2018_Effect["TrapLook"][25] = 2049
tValentinesDay2018_Effect["TrapLook"][26] = 2050
tValentinesDay2018_Effect["TrapLook"][27] = 2051


local tValentinesDay2018_Reward = {}
-- 七夕鲜花券精装包过期
tValentinesDay2018_Reward[3310215] = {}
tValentinesDay2018_Reward[3310215]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310215]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310215]["DeleteItem"][1]["Id"] = 3310215
tValentinesDay2018_Reward[3310215]["RewardStrengthValue"] = {}
tValentinesDay2018_Reward[3310215]["RewardStrengthValue"]["Value"] = 80
tValentinesDay2018_Reward[3310215]["Talk"] = tValentinesDay2018_Text["SysTalk"]["FollwerMiniOut"]
tValentinesDay2018_Reward[3310215]["LogId"] = 12001123
tValentinesDay2018_Reward[3310215]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310215]["RewardEffect"]["Effect"] = "eidolon"
-- 七夕鲜花券豪华包过期
tValentinesDay2018_Reward[3310216] = {}
tValentinesDay2018_Reward[3310216]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310216]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310216]["DeleteItem"][1]["Id"] = 3310216
tValentinesDay2018_Reward[3310216]["RewardStrengthValue"] = {}
tValentinesDay2018_Reward[3310216]["RewardStrengthValue"]["Value"] = 800
tValentinesDay2018_Reward[3310216]["Talk"] = tValentinesDay2018_Text["SysTalk"]["FollwerMaxOut"]
tValentinesDay2018_Reward[3310216]["LogId"] = 12001123
tValentinesDay2018_Reward[3310216]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310216]["RewardEffect"]["Effect"] = "eidolon"

-- 功勋礼包使用开出七夕礼盒
tValentinesDay2018_Reward[3007108] = {}
tValentinesDay2018_Reward[3007108]["RewardItem"] = {}
tValentinesDay2018_Reward[3007108]["RewardItem"][1] = {}
tValentinesDay2018_Reward[3007108]["RewardItem"][1]["Id"] = 3310201
tValentinesDay2018_Reward[3007108]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_Reward[3007108]["LogId"] = 12001123
tValentinesDay2018_Reward[3007108]["LogStep"] = "1[2]"
-- 每日签到礼包使用开出七夕礼盒
tValentinesDay2018_Reward[3100011] = {}
tValentinesDay2018_Reward[3100011]["RewardItem"] = {}
tValentinesDay2018_Reward[3100011]["RewardItem"][1] = {}
tValentinesDay2018_Reward[3100011]["RewardItem"][1]["Id"] = 3310201
tValentinesDay2018_Reward[3100011]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_Reward[3100011]["LogId"] = 12001123
tValentinesDay2018_Reward[3100011]["LogStep"] = "1[1]"
-- 土味情话获得七夕礼盒
tValentinesDay2018_Reward["FirstTime"] = {}
tValentinesDay2018_Reward["FirstTime"]["RewardItem"] = {}
tValentinesDay2018_Reward["FirstTime"]["RewardItem"][1] = {}
tValentinesDay2018_Reward["FirstTime"]["RewardItem"][1]["Id"] = 3310201
tValentinesDay2018_Reward["FirstTime"]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_Reward["FirstTime"]["Talk"] = tValentinesDay2018_Text["SysTalk"]["RewardItem"]
tValentinesDay2018_Reward["FirstTime"]["LogId"] = 12001123
tValentinesDay2018_Reward["FirstTime"]["LogStep"] = "1[4]"
tValentinesDay2018_Reward["FirstTime"]["RewardEffect"] = {}
tValentinesDay2018_Reward["FirstTime"]["RewardEffect"]["Effect"] = "eidolon"

-- 每日领取宝箱  魅力成长精装包
tValentinesDay2018_Reward[3310202] = {}
tValentinesDay2018_Reward[3310202]["RewardItem"] = {}
tValentinesDay2018_Reward[3310202]["RewardItem"][1] = {}
tValentinesDay2018_Reward[3310202]["RewardItem"][1]["Id"] = 3310202
tValentinesDay2018_Reward[3310202]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_Reward[3310202]["LogStep"] = "1[5]"
tValentinesDay2018_Reward[3310202]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310202]["RewardEffect"]["Effect"] = "eidolon"
-- 每日领取宝箱  魅力成长豪华包
tValentinesDay2018_Reward[3310203] = {}
tValentinesDay2018_Reward[3310203]["RewardItem"] = {}
tValentinesDay2018_Reward[3310203]["RewardItem"][1] = {}
tValentinesDay2018_Reward[3310203]["RewardItem"][1]["Id"] = 3310203
tValentinesDay2018_Reward[3310203]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_Reward[3310203]["LogStep"] = "1[6]"
tValentinesDay2018_Reward[3310203]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310203]["RewardEffect"]["Effect"] = "eidolon"
-- 每日领取宝箱  魅力成长尊享包
tValentinesDay2018_Reward[3310204] = {}
tValentinesDay2018_Reward[3310204]["RewardItem"] = {}
tValentinesDay2018_Reward[3310204]["RewardItem"][1] = {}
tValentinesDay2018_Reward[3310204]["RewardItem"][1]["Id"] = 3310204
tValentinesDay2018_Reward[3310204]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_Reward[3310204]["LogStep"] = "1[7]"
tValentinesDay2018_Reward[3310204]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310204]["RewardEffect"]["Effect"] = "eidolon"
-- 每日领取宝箱  魅力成长王者包
tValentinesDay2018_Reward[3310205] = {}
tValentinesDay2018_Reward[3310205]["RewardItem"] = {}
tValentinesDay2018_Reward[3310205]["RewardItem"][1] = {}
tValentinesDay2018_Reward[3310205]["RewardItem"][1]["Id"] = 3310205
tValentinesDay2018_Reward[3310205]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_Reward[3310205]["LogStep"] = "1[8]"
tValentinesDay2018_Reward[3310205]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310205]["RewardEffect"]["Effect"] = "eidolon"

-- 日常魅力成长包  每日提价材料达到300可获得
tValentinesDay2018_Reward[3310206] = {}
tValentinesDay2018_Reward[3310206]["RewardItem"] = {}
tValentinesDay2018_Reward[3310206]["RewardItem"][1] = {}
tValentinesDay2018_Reward[3310206]["RewardItem"][1]["Id"] = 3310206
tValentinesDay2018_Reward[3310206]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_Reward[3310206]["LogStep"] = "1[9]"
tValentinesDay2018_Reward[3310206]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310206]["RewardEffect"]["Effect"] = "eidolon"

-- 魅力值奖励
tValentinesDay2018_Reward["GlamourReward"] = {}
-- 4000魅力值
-- 赤炼石+4
-- 7天无光效武器外套*1
tValentinesDay2018_Reward["GlamourReward"][4000] = {}
tValentinesDay2018_Reward["GlamourReward"][4000]["RewardItem"] = {}
tValentinesDay2018_Reward["GlamourReward"][4000]["RewardItem"][1] = {}
tValentinesDay2018_Reward["GlamourReward"][4000]["RewardItem"][1]["Id"] = 730004
tValentinesDay2018_Reward["GlamourReward"][4000]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
tValentinesDay2018_Reward["GlamourReward"][4000]["RewardItem"][2] = {}
tValentinesDay2018_Reward["GlamourReward"][4000]["RewardItem"][2]["Id"] = 3313310
tValentinesDay2018_Reward["GlamourReward"][4000]["RewardItem"][2]["Attr"] = "0 1"
tValentinesDay2018_Reward["GlamourReward"][4000]["LogId"] = 12001123
tValentinesDay2018_Reward["GlamourReward"][4000]["LogStep"] = "2[1]"
tValentinesDay2018_Reward["GlamourReward"][4000]["RewardEffect"] = {}
tValentinesDay2018_Reward["GlamourReward"][4000]["RewardEffect"]["Effect"] = "eidolon"
-- 8000魅力值
-- 1000气
-- 人参果*20
tValentinesDay2018_Reward["GlamourReward"][8000] = {}
tValentinesDay2018_Reward["GlamourReward"][8000]["RewardItem"] = {}
tValentinesDay2018_Reward["GlamourReward"][8000]["RewardItem"][1] = {}
tValentinesDay2018_Reward["GlamourReward"][8000]["RewardItem"][1]["Id"] = 3310210
tValentinesDay2018_Reward["GlamourReward"][8000]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_Reward["GlamourReward"][8000]["RewardItem"][2] = {}
tValentinesDay2018_Reward["GlamourReward"][8000]["RewardItem"][2]["Id"] = 3009100
tValentinesDay2018_Reward["GlamourReward"][8000]["RewardItem"][2]["Attr"] = "0 20"
tValentinesDay2018_Reward["GlamourReward"][8000]["LogId"] = 12001123
tValentinesDay2018_Reward["GlamourReward"][8000]["LogStep"] = "2[2]"
tValentinesDay2018_Reward["GlamourReward"][8000]["RewardEffect"] = {}
tValentinesDay2018_Reward["GlamourReward"][8000]["RewardEffect"]["Effect"] = "eidolon"
-- 12000魅力值
-- 晶莹星陨石
-- 15天光效武器可选包*1
tValentinesDay2018_Reward["GlamourReward"][12000] = {}
tValentinesDay2018_Reward["GlamourReward"][12000]["RewardItem"] = {}
tValentinesDay2018_Reward["GlamourReward"][12000]["RewardItem"][1] = {}
tValentinesDay2018_Reward["GlamourReward"][12000]["RewardItem"][1]["Id"] = 3009002
tValentinesDay2018_Reward["GlamourReward"][12000]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tValentinesDay2018_Reward["GlamourReward"][12000]["RewardItem"][2] = {}
tValentinesDay2018_Reward["GlamourReward"][12000]["RewardItem"][2]["Id"] = 3313309
tValentinesDay2018_Reward["GlamourReward"][12000]["RewardItem"][2]["Attr"] = "0 1"
tValentinesDay2018_Reward["GlamourReward"][12000]["LogId"] = 12001123
tValentinesDay2018_Reward["GlamourReward"][12000]["LogStep"] = "2[3]"
tValentinesDay2018_Reward["GlamourReward"][12000]["RewardEffect"] = {}
tValentinesDay2018_Reward["GlamourReward"][12000]["RewardEffect"]["Effect"] = "eidolon"
-- 30000魅力值
-- 晶莹星陨石*2
-- 3000气力值
tValentinesDay2018_Reward["GlamourReward"][30000] = {}
tValentinesDay2018_Reward["GlamourReward"][30000]["RewardItem"] = {}
tValentinesDay2018_Reward["GlamourReward"][30000]["RewardItem"][1] = {}
tValentinesDay2018_Reward["GlamourReward"][30000]["RewardItem"][1]["Id"] = 3009002
tValentinesDay2018_Reward["GlamourReward"][30000]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
tValentinesDay2018_Reward["GlamourReward"][30000]["RewardStrengthValue"] = {}
tValentinesDay2018_Reward["GlamourReward"][30000]["RewardStrengthValue"]["Value"] = 3000
tValentinesDay2018_Reward["GlamourReward"][30000]["LogId"] = 12001123
tValentinesDay2018_Reward["GlamourReward"][30000]["LogStep"] = "2[4]"
tValentinesDay2018_Reward["GlamourReward"][30000]["RewardEffect"] = {}
tValentinesDay2018_Reward["GlamourReward"][30000]["RewardEffect"]["Effect"] = "eidolon"
-- 60000魅力值
-- 赤练石+6
-- 6000气力值
tValentinesDay2018_Reward["GlamourReward"][60000] = {}
tValentinesDay2018_Reward["GlamourReward"][60000]["RewardItem"] = {}
tValentinesDay2018_Reward["GlamourReward"][60000]["RewardItem"][1] = {}
tValentinesDay2018_Reward["GlamourReward"][60000]["RewardItem"][1]["Id"] = 730006
tValentinesDay2018_Reward["GlamourReward"][60000]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
tValentinesDay2018_Reward["GlamourReward"][60000]["RewardStrengthValue"] = {}
tValentinesDay2018_Reward["GlamourReward"][60000]["RewardStrengthValue"]["Value"] = 6000
tValentinesDay2018_Reward["GlamourReward"][60000]["LogId"] = 12001123
tValentinesDay2018_Reward["GlamourReward"][60000]["LogStep"] = "2[5]"
tValentinesDay2018_Reward["GlamourReward"][60000]["RewardEffect"] = {}
tValentinesDay2018_Reward["GlamourReward"][60000]["RewardEffect"]["Effect"] = "eidolon"
-- 120000魅力值
-- 海天之恋
-- 10000气力值
tValentinesDay2018_Reward["GlamourReward"][120000] = {}
tValentinesDay2018_Reward["GlamourReward"][120000]["RewardItem"] = {}
tValentinesDay2018_Reward["GlamourReward"][120000]["RewardItem"][1] = {}
tValentinesDay2018_Reward["GlamourReward"][120000]["RewardItem"][1]["Id"] = 195835
tValentinesDay2018_Reward["GlamourReward"][120000]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tValentinesDay2018_Reward["GlamourReward"][120000]["RewardStrengthValue"] = {}
tValentinesDay2018_Reward["GlamourReward"][120000]["RewardStrengthValue"]["Value"] = 10000
tValentinesDay2018_Reward["GlamourReward"][120000]["LogId"] = 12001123
tValentinesDay2018_Reward["GlamourReward"][120000]["LogStep"] = "2[6]"
tValentinesDay2018_Reward["GlamourReward"][120000]["RewardEffect"] = {}
tValentinesDay2018_Reward["GlamourReward"][120000]["RewardEffect"]["Effect"] = "eidolon"
-- 250000魅力值
-- 良品神纹源晶*2
-- 15000气力值
tValentinesDay2018_Reward["GlamourReward"][250000] = {}
tValentinesDay2018_Reward["GlamourReward"][250000]["RewardItem"] = {}
tValentinesDay2018_Reward["GlamourReward"][250000]["RewardItem"][1] = {}
tValentinesDay2018_Reward["GlamourReward"][250000]["RewardItem"][1]["Id"] = 3311820
tValentinesDay2018_Reward["GlamourReward"][250000]["RewardItem"][1]["Attr"] = "0 2"
tValentinesDay2018_Reward["GlamourReward"][250000]["RewardStrengthValue"] = {}
tValentinesDay2018_Reward["GlamourReward"][250000]["RewardStrengthValue"]["Value"] = 15000
tValentinesDay2018_Reward["GlamourReward"][250000]["LogId"] = 12001123
tValentinesDay2018_Reward["GlamourReward"][250000]["LogStep"] = "2[7]"
tValentinesDay2018_Reward["GlamourReward"][250000]["RewardEffect"] = {}
tValentinesDay2018_Reward["GlamourReward"][250000]["RewardEffect"]["Effect"] = "eidolon"
-- 450000魅力值
-- 海天之恋·绝恋
-- 20000气力值
tValentinesDay2018_Reward["GlamourReward"][450000] = {}
tValentinesDay2018_Reward["GlamourReward"][450000]["RewardItem"] = {}
tValentinesDay2018_Reward["GlamourReward"][450000]["RewardItem"][1] = {}
tValentinesDay2018_Reward["GlamourReward"][450000]["RewardItem"][1]["Id"] = 195845
tValentinesDay2018_Reward["GlamourReward"][450000]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tValentinesDay2018_Reward["GlamourReward"][450000]["RewardStrengthValue"] = {}
tValentinesDay2018_Reward["GlamourReward"][450000]["RewardStrengthValue"]["Value"] = 20000
tValentinesDay2018_Reward["GlamourReward"][450000]["LogId"] = 12001123
tValentinesDay2018_Reward["GlamourReward"][450000]["LogStep"] = "2[8]"
tValentinesDay2018_Reward["GlamourReward"][450000]["RewardEffect"] = {}
tValentinesDay2018_Reward["GlamourReward"][450000]["RewardEffect"]["Effect"] = "eidolon"

-- 精装七夕礼盒
tValentinesDay2018_Reward[3310198] = {}
-- 男 3310192神仙精华露
tValentinesDay2018_Reward[3310198][1] = {}
tValentinesDay2018_Reward[3310198][1]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310198][1]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310198][1]["DeleteItem"][1]["Id"] = 3310198
tValentinesDay2018_Reward[3310198][1]["RewardItem"] = {}
tValentinesDay2018_Reward[3310198][1]["RewardItem"][1] = {}
tValentinesDay2018_Reward[3310198][1]["RewardItem"][1]["Id"] = 3310192
tValentinesDay2018_Reward[3310198][1]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_Reward[3310198][1]["LogId"] = 12001123
tValentinesDay2018_Reward[3310198][1]["LogStep"] = "3[1]"
tValentinesDay2018_Reward[3310198][1]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310198][1]["RewardEffect"]["Effect"] = "eidolon"
-- 女 3310195耐克篮球鞋
tValentinesDay2018_Reward[3310198][2] = {}
tValentinesDay2018_Reward[3310198][2]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310198][2]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310198][2]["DeleteItem"][1]["Id"] = 3310198
tValentinesDay2018_Reward[3310198][2]["RewardItem"] = {}
tValentinesDay2018_Reward[3310198][2]["RewardItem"][1] = {}
tValentinesDay2018_Reward[3310198][2]["RewardItem"][1]["Id"] = 3310195
tValentinesDay2018_Reward[3310198][2]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_Reward[3310198][2]["LogId"] = 12001123
tValentinesDay2018_Reward[3310198][2]["LogStep"] = "3[2]"
tValentinesDay2018_Reward[3310198][2]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310198][2]["RewardEffect"]["Effect"] = "eidolon"
-- 豪华七夕礼盒
tValentinesDay2018_Reward[3310199] = {}
-- 男 3310193施华洛项链
tValentinesDay2018_Reward[3310199][1] = {}
tValentinesDay2018_Reward[3310199][1]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310199][1]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310199][1]["DeleteItem"][1]["Id"] = 3310199
tValentinesDay2018_Reward[3310199][1]["RewardItem"] = {}
tValentinesDay2018_Reward[3310199][1]["RewardItem"][1] = {}
tValentinesDay2018_Reward[3310199][1]["RewardItem"][1]["Id"] = 3310193
tValentinesDay2018_Reward[3310199][1]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_Reward[3310199][1]["LogId"] = 12001123
tValentinesDay2018_Reward[3310199][1]["LogStep"] = "3[3]"
tValentinesDay2018_Reward[3310199][1]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310199][1]["RewardEffect"]["Effect"] = "eidolon"
-- 女 3310196迪奥墨镜
tValentinesDay2018_Reward[3310199][2] = {}
tValentinesDay2018_Reward[3310199][2]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310199][2]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310199][2]["DeleteItem"][1]["Id"] = 3310199
tValentinesDay2018_Reward[3310199][2]["RewardItem"] = {}
tValentinesDay2018_Reward[3310199][2]["RewardItem"][1] = {}
tValentinesDay2018_Reward[3310199][2]["RewardItem"][1]["Id"] = 3310196
tValentinesDay2018_Reward[3310199][2]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_Reward[3310199][2]["LogId"] = 12001123
tValentinesDay2018_Reward[3310199][2]["LogStep"] = "3[4]"
tValentinesDay2018_Reward[3310199][2]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310199][2]["RewardEffect"]["Effect"] = "eidolon"
-- 尊享七夕礼盒
tValentinesDay2018_Reward[3310200] = {}
-- 男 3310194蒂芙尼钻戒
tValentinesDay2018_Reward[3310200][1] = {}
tValentinesDay2018_Reward[3310200][1]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310200][1]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310200][1]["DeleteItem"][1]["Id"] = 3310200
tValentinesDay2018_Reward[3310200][1]["RewardItem"] = {}
tValentinesDay2018_Reward[3310200][1]["RewardItem"][1] = {}
tValentinesDay2018_Reward[3310200][1]["RewardItem"][1]["Id"] = 3310194
tValentinesDay2018_Reward[3310200][1]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_Reward[3310200][1]["LogId"] = 12001123
tValentinesDay2018_Reward[3310200][1]["LogStep"] = "3[5]"
tValentinesDay2018_Reward[3310200][1]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310200][1]["RewardEffect"]["Effect"] = "eidolon"
-- 女 3310197爱马仕钱包
tValentinesDay2018_Reward[3310200][2] = {}
tValentinesDay2018_Reward[3310200][2]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310200][2]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310200][2]["DeleteItem"][1]["Id"] = 3310200
tValentinesDay2018_Reward[3310200][2]["RewardItem"] = {}
tValentinesDay2018_Reward[3310200][2]["RewardItem"][1] = {}
tValentinesDay2018_Reward[3310200][2]["RewardItem"][1]["Id"] = 3310197
tValentinesDay2018_Reward[3310200][2]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_Reward[3310200][2]["LogId"] = 12001123
tValentinesDay2018_Reward[3310200][2]["LogStep"] = "3[6]"
tValentinesDay2018_Reward[3310200][2]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310200][2]["RewardEffect"]["Effect"] = "eidolon"

-- 30碎片合成魅力金云
tValentinesDay2018_Reward[3310207] = {}
tValentinesDay2018_Reward[3310207]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310207]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310207]["DeleteItem"][1]["Id"] = 3310207
tValentinesDay2018_Reward[3310207]["DeleteItem"][1]["ItemNum"] = 30
tValentinesDay2018_Reward[3310207]["RewardItem"] = {}
tValentinesDay2018_Reward[3310207]["RewardItem"][1] = {}
tValentinesDay2018_Reward[3310207]["RewardItem"][1]["Id"] = 200629
tValentinesDay2018_Reward[3310207]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tValentinesDay2018_Reward[3310207]["LogId"] = 12001123
tValentinesDay2018_Reward[3310207]["LogStep"] = "4[2]"
tValentinesDay2018_Reward[3310207]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310207]["RewardEffect"]["Effect"] = "eidolon"

-- 魅力金云碎片兑换气力值
tValentinesDay2018_Reward["Exchange"] = {}
tValentinesDay2018_Reward["Exchange"]["DeleteItem"] = {}
tValentinesDay2018_Reward["Exchange"]["DeleteItem"][1] = {}
tValentinesDay2018_Reward["Exchange"]["DeleteItem"][1]["Id"] = 3310207
tValentinesDay2018_Reward["Exchange"]["DeleteItem"][1]["ItemNum"] = 1
tValentinesDay2018_Reward["Exchange"]["RewardStrengthValue"] = {}
tValentinesDay2018_Reward["Exchange"]["RewardStrengthValue"]["Value"] = 500
tValentinesDay2018_Reward["Exchange"]["LogId"] = 12001123
tValentinesDay2018_Reward["Exchange"]["LogStep"] = "4[4]"
tValentinesDay2018_Reward["Exchange"]["RewardEffect"] = {}
tValentinesDay2018_Reward["Exchange"]["RewardEffect"]["Effect"] = "eidolon"

-- 1000气力值包
tValentinesDay2018_Reward[3310210] = {}
tValentinesDay2018_Reward[3310210]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310210]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310210]["DeleteItem"][1]["Id"] = 3310210
tValentinesDay2018_Reward[3310210]["RewardStrengthValue"] = {}
tValentinesDay2018_Reward[3310210]["RewardStrengthValue"]["Value"] = 1000
tValentinesDay2018_Reward[3310210]["LogId"] = 12001123
tValentinesDay2018_Reward[3310210]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310210]["RewardEffect"]["Effect"] = "angelwing"

-- 风流才子冠军礼盒 宝藏男孩、+1年时效光效武器+1000万能神纹精粹
tValentinesDay2018_Reward[3310304] = {}
tValentinesDay2018_Reward[3310304]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310304]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310304]["DeleteItem"][1]["Id"] = 3310304
tValentinesDay2018_Reward[3310304]["RewardItem"] = {}
tValentinesDay2018_Reward[3310304]["RewardItem"][1] = {}
tValentinesDay2018_Reward[3310304]["RewardItem"][1]["Id"] = 3313308
tValentinesDay2018_Reward[3310304]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_Reward[3310304]["RewardItem"][2] = {}
tValentinesDay2018_Reward[3310304]["RewardItem"][2]["Id"] = 4060001
tValentinesDay2018_Reward[3310304]["RewardItem"][2]["Attr"] = "0 1000"
tValentinesDay2018_Reward[3310304]["RewardTitle"] = {}
tValentinesDay2018_Reward[3310304]["RewardTitle"]["TitleType"] = 2139
tValentinesDay2018_Reward[3310304]["RewardTitle"]["TitleId"] = 2139
tValentinesDay2018_Reward[3310304]["RewardTitle"]["SaveTime"] = 0
tValentinesDay2018_Reward[3310304]["LogId"] = 12001123
tValentinesDay2018_Reward[3310304]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310304]["RewardEffect"]["Effect"] = "eidolon"
-- 风流才子亚军礼盒 宝藏男孩、900万能神纹精粹
tValentinesDay2018_Reward[3310305] = {}
tValentinesDay2018_Reward[3310305]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310305]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310305]["DeleteItem"][1]["Id"] = 3310305
tValentinesDay2018_Reward[3310305]["RewardItem"] = {}
tValentinesDay2018_Reward[3310305]["RewardItem"][1] = {}
tValentinesDay2018_Reward[3310305]["RewardItem"][1]["Id"] = 4060001
tValentinesDay2018_Reward[3310305]["RewardItem"][1]["Attr"] = "0 900"
tValentinesDay2018_Reward[3310305]["RewardTitle"] = {}
tValentinesDay2018_Reward[3310305]["RewardTitle"]["TitleType"] = 2139
tValentinesDay2018_Reward[3310305]["RewardTitle"]["TitleId"] = 2139
tValentinesDay2018_Reward[3310305]["RewardTitle"]["SaveTime"] = 0
tValentinesDay2018_Reward[3310305]["LogId"] = 12001123
tValentinesDay2018_Reward[3310305]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310305]["RewardEffect"]["Effect"] = "eidolon"
-- 风流才子季军礼盒 宝藏男孩、800万能神纹精粹
tValentinesDay2018_Reward[3310306] = {}
tValentinesDay2018_Reward[3310306]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310306]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310306]["DeleteItem"][1]["Id"] = 3310306
tValentinesDay2018_Reward[3310306]["RewardItem"] = {}
tValentinesDay2018_Reward[3310306]["RewardItem"][1] = {}
tValentinesDay2018_Reward[3310306]["RewardItem"][1]["Id"] = 4060001
tValentinesDay2018_Reward[3310306]["RewardItem"][1]["Attr"] = "0 800"
tValentinesDay2018_Reward[3310306]["RewardTitle"] = {}
tValentinesDay2018_Reward[3310306]["RewardTitle"]["TitleType"] = 2139
tValentinesDay2018_Reward[3310306]["RewardTitle"]["TitleId"] = 2139
tValentinesDay2018_Reward[3310306]["RewardTitle"]["SaveTime"] = 0
tValentinesDay2018_Reward[3310306]["LogId"] = 12001123
tValentinesDay2018_Reward[3310306]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310306]["RewardEffect"]["Effect"] = "eidolon"
-- 风流才子翘楚礼盒 600万能神纹精粹
tValentinesDay2018_Reward[3310307] = {}
tValentinesDay2018_Reward[3310307]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310307]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310307]["DeleteItem"][1]["Id"] = 3310307
tValentinesDay2018_Reward[3310307]["RewardItem"] = {}
tValentinesDay2018_Reward[3310307]["RewardItem"][1] = {}
tValentinesDay2018_Reward[3310307]["RewardItem"][1]["Id"] = 4060001
tValentinesDay2018_Reward[3310307]["RewardItem"][1]["Attr"] = "0 600"
tValentinesDay2018_Reward[3310307]["LogId"] = 12001123
tValentinesDay2018_Reward[3310307]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310307]["RewardEffect"]["Effect"] = "eidolon"
-- 风流才子精英礼盒 500万能神纹精粹
tValentinesDay2018_Reward[3310308] = {}
tValentinesDay2018_Reward[3310308]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310308]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310308]["DeleteItem"][1]["Id"] = 3310308
tValentinesDay2018_Reward[3310308]["RewardItem"] = {}
tValentinesDay2018_Reward[3310308]["RewardItem"][1] = {}
tValentinesDay2018_Reward[3310308]["RewardItem"][1]["Id"] = 4060001
tValentinesDay2018_Reward[3310308]["RewardItem"][1]["Attr"] = "0 500"
tValentinesDay2018_Reward[3310308]["LogId"] = 12001123
tValentinesDay2018_Reward[3310308]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310308]["RewardEffect"]["Effect"] = "eidolon"
-- 红粉佳人冠军礼盒 锦鲤少女称号、+1年时效光效武器+1000万能神纹精粹
tValentinesDay2018_Reward[3310309] = {}
tValentinesDay2018_Reward[3310309]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310309]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310309]["DeleteItem"][1]["Id"] = 3310309
tValentinesDay2018_Reward[3310309]["RewardItem"] = {}
tValentinesDay2018_Reward[3310309]["RewardItem"][1] = {}
tValentinesDay2018_Reward[3310309]["RewardItem"][1]["Id"] = 3313308
tValentinesDay2018_Reward[3310309]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_Reward[3310309]["RewardItem"][2] = {}
tValentinesDay2018_Reward[3310309]["RewardItem"][2]["Id"] = 4060001
tValentinesDay2018_Reward[3310309]["RewardItem"][2]["Attr"] = "0 1000"
tValentinesDay2018_Reward[3310309]["RewardTitle"] = {}
tValentinesDay2018_Reward[3310309]["RewardTitle"]["TitleType"] = 2138
tValentinesDay2018_Reward[3310309]["RewardTitle"]["TitleId"] = 2138
tValentinesDay2018_Reward[3310309]["RewardTitle"]["SaveTime"] = 0
tValentinesDay2018_Reward[3310309]["LogId"] = 12001123
tValentinesDay2018_Reward[3310309]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310309]["RewardEffect"]["Effect"] = "eidolon"
-- 红粉佳人亚军礼盒 锦鲤少女称号、900万能神纹精粹
tValentinesDay2018_Reward[3310310] = {}
tValentinesDay2018_Reward[3310310]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310310]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310310]["DeleteItem"][1]["Id"] = 3310310
tValentinesDay2018_Reward[3310310]["RewardItem"] = {}
tValentinesDay2018_Reward[3310310]["RewardItem"][1] = {}
tValentinesDay2018_Reward[3310310]["RewardItem"][1]["Id"] = 4060001
tValentinesDay2018_Reward[3310310]["RewardItem"][1]["Attr"] = "0 900"
tValentinesDay2018_Reward[3310310]["RewardTitle"] = {}
tValentinesDay2018_Reward[3310310]["RewardTitle"]["TitleType"] = 2138
tValentinesDay2018_Reward[3310310]["RewardTitle"]["TitleId"] = 2138
tValentinesDay2018_Reward[3310310]["RewardTitle"]["SaveTime"] = 0
tValentinesDay2018_Reward[3310310]["LogId"] = 12001123
tValentinesDay2018_Reward[3310310]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310310]["RewardEffect"]["Effect"] = "eidolon"
-- 红粉佳人季军礼盒 锦鲤少女称号、800万能神纹精粹
tValentinesDay2018_Reward[3310311] = {}
tValentinesDay2018_Reward[3310311]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310311]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310311]["DeleteItem"][1]["Id"] = 3310311
tValentinesDay2018_Reward[3310311]["RewardItem"] = {}
tValentinesDay2018_Reward[3310311]["RewardItem"][1] = {}
tValentinesDay2018_Reward[3310311]["RewardItem"][1]["Id"] = 4060001
tValentinesDay2018_Reward[3310311]["RewardItem"][1]["Attr"] = "0 800"
tValentinesDay2018_Reward[3310311]["RewardTitle"] = {}
tValentinesDay2018_Reward[3310311]["RewardTitle"]["TitleType"] = 2138
tValentinesDay2018_Reward[3310311]["RewardTitle"]["TitleId"] = 2138
tValentinesDay2018_Reward[3310311]["RewardTitle"]["SaveTime"] = 0
tValentinesDay2018_Reward[3310311]["LogId"] = 12001123
tValentinesDay2018_Reward[3310311]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310311]["RewardEffect"]["Effect"] = "eidolon"
-- 红粉佳人翘楚礼盒 600万能神纹精粹
tValentinesDay2018_Reward[3310312] = {}
tValentinesDay2018_Reward[3310312]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310312]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310312]["DeleteItem"][1]["Id"] = 3310312
tValentinesDay2018_Reward[3310312]["RewardItem"] = {}
tValentinesDay2018_Reward[3310312]["RewardItem"][1] = {}
tValentinesDay2018_Reward[3310312]["RewardItem"][1]["Id"] = 4060001
tValentinesDay2018_Reward[3310312]["RewardItem"][1]["Attr"] = "0 600"
tValentinesDay2018_Reward[3310312]["LogId"] = 12001123
tValentinesDay2018_Reward[3310312]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310312]["RewardEffect"]["Effect"] = "eidolon"
-- 红粉佳人精英礼盒 500万能神纹精粹
tValentinesDay2018_Reward[3310313] = {}
tValentinesDay2018_Reward[3310313]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310313]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310313]["DeleteItem"][1]["Id"] = 3310313
tValentinesDay2018_Reward[3310313]["RewardItem"] = {}
tValentinesDay2018_Reward[3310313]["RewardItem"][1] = {}
tValentinesDay2018_Reward[3310313]["RewardItem"][1]["Id"] = 4060001
tValentinesDay2018_Reward[3310313]["RewardItem"][1]["Attr"] = "0 500"
tValentinesDay2018_Reward[3310313]["LogId"] = 12001123
tValentinesDay2018_Reward[3310313]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310313]["RewardEffect"]["Effect"] = "eidolon"
-- 魅力男神冠军礼盒 帅到惊天地称号、30000点气力值
tValentinesDay2018_Reward[3310314] = {}
tValentinesDay2018_Reward[3310314]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310314]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310314]["DeleteItem"][1]["Id"] = 3310314
tValentinesDay2018_Reward[3310314]["RewardStrengthValue"] = {}
tValentinesDay2018_Reward[3310314]["RewardStrengthValue"]["Value"] = 30000
tValentinesDay2018_Reward[3310314]["RewardTitle"] = {}
tValentinesDay2018_Reward[3310314]["RewardTitle"]["TitleType"] = 2088
tValentinesDay2018_Reward[3310314]["RewardTitle"]["TitleId"] = 2088
tValentinesDay2018_Reward[3310314]["RewardTitle"]["SaveTime"] = 0
tValentinesDay2018_Reward[3310314]["LogId"] = 12001123
tValentinesDay2018_Reward[3310314]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310314]["RewardEffect"]["Effect"] = "eidolon"
-- 魅力男神亚军礼盒 无敌大帅哥称号、20000点气力值
tValentinesDay2018_Reward[3310315] = {}
tValentinesDay2018_Reward[3310315]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310315]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310315]["DeleteItem"][1]["Id"] = 3310315
tValentinesDay2018_Reward[3310315]["RewardStrengthValue"] = {}
tValentinesDay2018_Reward[3310315]["RewardStrengthValue"]["Value"] = 20000
tValentinesDay2018_Reward[3310315]["RewardTitle"] = {}
tValentinesDay2018_Reward[3310315]["RewardTitle"]["TitleType"] = 2089
tValentinesDay2018_Reward[3310315]["RewardTitle"]["TitleId"] = 2089
tValentinesDay2018_Reward[3310315]["RewardTitle"]["SaveTime"] = 0
tValentinesDay2018_Reward[3310315]["LogId"] = 12001123
tValentinesDay2018_Reward[3310315]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310315]["RewardEffect"]["Effect"] = "eidolon"
-- 魅力男神季军礼盒 无敌大帅哥称号、15000点气力值
tValentinesDay2018_Reward[3310316] = {}
tValentinesDay2018_Reward[3310316]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310316]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310316]["DeleteItem"][1]["Id"] = 3310316
tValentinesDay2018_Reward[3310316]["RewardStrengthValue"] = {}
tValentinesDay2018_Reward[3310316]["RewardStrengthValue"]["Value"] = 15000
tValentinesDay2018_Reward[3310316]["RewardTitle"] = {}
tValentinesDay2018_Reward[3310316]["RewardTitle"]["TitleType"] = 2089
tValentinesDay2018_Reward[3310316]["RewardTitle"]["TitleId"] = 2089
tValentinesDay2018_Reward[3310316]["RewardTitle"]["SaveTime"] = 0
tValentinesDay2018_Reward[3310316]["LogId"] = 12001123
tValentinesDay2018_Reward[3310316]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310316]["RewardEffect"]["Effect"] = "eidolon"
-- 魅力男神天骄礼盒 无敌大帅哥称号、10000点气力值
tValentinesDay2018_Reward[3310317] = {}
tValentinesDay2018_Reward[3310317]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310317]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310317]["DeleteItem"][1]["Id"] = 3310317
tValentinesDay2018_Reward[3310317]["RewardStrengthValue"] = {}
tValentinesDay2018_Reward[3310317]["RewardStrengthValue"]["Value"] = 10000
tValentinesDay2018_Reward[3310317]["RewardTitle"] = {}
tValentinesDay2018_Reward[3310317]["RewardTitle"]["TitleType"] = 2089
tValentinesDay2018_Reward[3310317]["RewardTitle"]["TitleId"] = 2089
tValentinesDay2018_Reward[3310317]["RewardTitle"]["SaveTime"] = 0
tValentinesDay2018_Reward[3310317]["LogId"] = 12001123
tValentinesDay2018_Reward[3310317]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310317]["RewardEffect"]["Effect"] = "eidolon"
-- 魅力男神翘楚礼盒 无敌大帅哥称号、8000点气力值
tValentinesDay2018_Reward[3310318] = {}
tValentinesDay2018_Reward[3310318]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310318]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310318]["DeleteItem"][1]["Id"] = 3310318
tValentinesDay2018_Reward[3310318]["RewardStrengthValue"] = {}
tValentinesDay2018_Reward[3310318]["RewardStrengthValue"]["Value"] = 8000
tValentinesDay2018_Reward[3310318]["RewardTitle"] = {}
tValentinesDay2018_Reward[3310318]["RewardTitle"]["TitleType"] = 2089
tValentinesDay2018_Reward[3310318]["RewardTitle"]["TitleId"] = 2089
tValentinesDay2018_Reward[3310318]["RewardTitle"]["SaveTime"] = 0
tValentinesDay2018_Reward[3310318]["LogId"] = 12001123
tValentinesDay2018_Reward[3310318]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310318]["RewardEffect"]["Effect"] = "eidolon"
-- 魅力男神俊杰礼盒 6000点气力值
tValentinesDay2018_Reward[3310319] = {}
tValentinesDay2018_Reward[3310319]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310319]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310319]["DeleteItem"][1]["Id"] = 3310319
tValentinesDay2018_Reward[3310319]["RewardStrengthValue"] = {}
tValentinesDay2018_Reward[3310319]["RewardStrengthValue"]["Value"] = 6000
tValentinesDay2018_Reward[3310319]["LogId"] = 12001123
tValentinesDay2018_Reward[3310319]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310319]["RewardEffect"]["Effect"] = "eidolon"
-- 魅力男神精英礼盒 4000点气力值
tValentinesDay2018_Reward[3310320] = {}
tValentinesDay2018_Reward[3310320]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310320]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310320]["DeleteItem"][1]["Id"] = 3310320
tValentinesDay2018_Reward[3310320]["RewardStrengthValue"] = {}
tValentinesDay2018_Reward[3310320]["RewardStrengthValue"]["Value"] = 4000
tValentinesDay2018_Reward[3310320]["LogId"] = 12001123
tValentinesDay2018_Reward[3310320]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310320]["RewardEffect"]["Effect"] = "eidolon"
-- 魅力女神冠军礼盒 美得不讲理称号、30000点气力值
tValentinesDay2018_Reward[3310321] = {}
tValentinesDay2018_Reward[3310321]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310321]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310321]["DeleteItem"][1]["Id"] = 3310321
tValentinesDay2018_Reward[3310321]["RewardStrengthValue"] = {}
tValentinesDay2018_Reward[3310321]["RewardStrengthValue"]["Value"] = 30000
tValentinesDay2018_Reward[3310321]["RewardTitle"] = {}
tValentinesDay2018_Reward[3310321]["RewardTitle"]["TitleType"] = 2090
tValentinesDay2018_Reward[3310321]["RewardTitle"]["TitleId"] = 2090
tValentinesDay2018_Reward[3310321]["RewardTitle"]["SaveTime"] = 0
tValentinesDay2018_Reward[3310321]["LogId"] = 12001123
tValentinesDay2018_Reward[3310321]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310321]["RewardEffect"]["Effect"] = "eidolon"
-- 魅力女神亚军礼盒 绝世大美女称号、20000点气力值
tValentinesDay2018_Reward[3310322] = {}
tValentinesDay2018_Reward[3310322]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310322]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310322]["DeleteItem"][1]["Id"] = 3310322
tValentinesDay2018_Reward[3310322]["RewardStrengthValue"] = {}
tValentinesDay2018_Reward[3310322]["RewardStrengthValue"]["Value"] = 20000
tValentinesDay2018_Reward[3310322]["RewardTitle"] = {}
tValentinesDay2018_Reward[3310322]["RewardTitle"]["TitleType"] = 2091
tValentinesDay2018_Reward[3310322]["RewardTitle"]["TitleId"] = 2091
tValentinesDay2018_Reward[3310322]["RewardTitle"]["SaveTime"] = 0
tValentinesDay2018_Reward[3310322]["LogId"] = 12001123
tValentinesDay2018_Reward[3310322]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310322]["RewardEffect"]["Effect"] = "eidolon"
-- 魅力女神季军礼盒 绝世大美女称号、15000点气力值
tValentinesDay2018_Reward[3310323] = {}
tValentinesDay2018_Reward[3310323]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310323]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310323]["DeleteItem"][1]["Id"] = 3310323
tValentinesDay2018_Reward[3310323]["RewardStrengthValue"] = {}
tValentinesDay2018_Reward[3310323]["RewardStrengthValue"]["Value"] = 15000
tValentinesDay2018_Reward[3310323]["RewardTitle"] = {}
tValentinesDay2018_Reward[3310323]["RewardTitle"]["TitleType"] = 2091
tValentinesDay2018_Reward[3310323]["RewardTitle"]["TitleId"] = 2091
tValentinesDay2018_Reward[3310323]["RewardTitle"]["SaveTime"] = 0
tValentinesDay2018_Reward[3310323]["LogId"] = 12001123
tValentinesDay2018_Reward[3310323]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310323]["RewardEffect"]["Effect"] = "eidolon"
-- 魅力女神天骄礼盒 绝世大美女称号、10000点气力值
tValentinesDay2018_Reward[3310324] = {}
tValentinesDay2018_Reward[3310324]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310324]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310324]["DeleteItem"][1]["Id"] = 3310324
tValentinesDay2018_Reward[3310324]["RewardStrengthValue"] = {}
tValentinesDay2018_Reward[3310324]["RewardStrengthValue"]["Value"] = 10000
tValentinesDay2018_Reward[3310324]["RewardTitle"] = {}
tValentinesDay2018_Reward[3310324]["RewardTitle"]["TitleType"] = 2091
tValentinesDay2018_Reward[3310324]["RewardTitle"]["TitleId"] = 2091
tValentinesDay2018_Reward[3310324]["RewardTitle"]["SaveTime"] = 0
tValentinesDay2018_Reward[3310324]["LogId"] = 12001123
tValentinesDay2018_Reward[3310324]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310324]["RewardEffect"]["Effect"] = "eidolon"
-- 魅力女神翘楚礼盒 绝世大美女称号、8000点气力值
tValentinesDay2018_Reward[3310325] = {}
tValentinesDay2018_Reward[3310325]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310325]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310325]["DeleteItem"][1]["Id"] = 3310325
tValentinesDay2018_Reward[3310325]["RewardStrengthValue"] = {}
tValentinesDay2018_Reward[3310325]["RewardStrengthValue"]["Value"] = 8000
tValentinesDay2018_Reward[3310325]["RewardTitle"] = {}
tValentinesDay2018_Reward[3310325]["RewardTitle"]["TitleType"] = 2091
tValentinesDay2018_Reward[3310325]["RewardTitle"]["TitleId"] = 2091
tValentinesDay2018_Reward[3310325]["RewardTitle"]["SaveTime"] = 0
tValentinesDay2018_Reward[3310325]["LogId"] = 12001123
tValentinesDay2018_Reward[3310325]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310325]["RewardEffect"]["Effect"] = "eidolon"
-- 魅力女神佳人礼盒 6000点气力值
tValentinesDay2018_Reward[3310326] = {}
tValentinesDay2018_Reward[3310326]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310326]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310326]["DeleteItem"][1]["Id"] = 3310326
tValentinesDay2018_Reward[3310326]["RewardStrengthValue"] = {}
tValentinesDay2018_Reward[3310326]["RewardStrengthValue"]["Value"] = 6000
tValentinesDay2018_Reward[3310326]["LogId"] = 12001123
tValentinesDay2018_Reward[3310326]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310326]["RewardEffect"]["Effect"] = "eidolon"
-- 魅力女神精英礼盒 4000点气力值
tValentinesDay2018_Reward[3310327] = {}
tValentinesDay2018_Reward[3310327]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310327]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310327]["DeleteItem"][1]["Id"] = 3310327
tValentinesDay2018_Reward[3310327]["RewardStrengthValue"] = {}
tValentinesDay2018_Reward[3310327]["RewardStrengthValue"]["Value"] = 4000
tValentinesDay2018_Reward[3310327]["LogId"] = 12001123
tValentinesDay2018_Reward[3310327]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310327]["RewardEffect"]["Effect"] = "eidolon"

-- 制作浪漫情人匣提交材料表
tValentinesDay2018_Reward["Submission"] = {}
tValentinesDay2018_Reward["Submission"]["DeleteItem"] = {}
tValentinesDay2018_Reward["Submission"]["RewardItem"] = {}
tValentinesDay2018_Reward["Submission"]["LogId"] = 12001123
tValentinesDay2018_Reward["Submission"]["LogStep"] = "5[1]"
tValentinesDay2018_Reward["Submission"]["RewardEffect"] = {}
tValentinesDay2018_Reward["Submission"]["RewardEffect"]["Effect"] = "eidolon"

-- 鹊仙居奇珍收纳袋
tValentinesDay2018_Reward[3310214] = {}
tValentinesDay2018_Reward[3310214]["RewardItem"] = {}
tValentinesDay2018_Reward[3310214]["RewardItem"][1] = {}
tValentinesDay2018_Reward[3310214]["RewardItem"][1]["Id"] = 3310214
tValentinesDay2018_Reward[3310214]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_Reward[3310214]["LogId"] = 12001123
tValentinesDay2018_Reward[3310214]["LogStep"] = "6[1]"
tValentinesDay2018_Reward[3310214]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310214]["RewardEffect"]["Effect"] = "eidolon"

-- 花仙精灵
tValentinesDay2018_Reward[3322680] = {}
tValentinesDay2018_Reward[3322680]["RewardItem"] = {}
tValentinesDay2018_Reward[3322680]["RewardItem"][1] = {}
tValentinesDay2018_Reward[3322680]["RewardItem"][1]["Id"] = 3322680
tValentinesDay2018_Reward[3322680]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_Reward[3322680]["LogId"] = 12001123
tValentinesDay2018_Reward[3322680]["LogStep"] = "6[4]"
tValentinesDay2018_Reward[3322680]["RewardEffect"] = {}
tValentinesDay2018_Reward[3322680]["RewardEffect"]["Effect"] = "eidolon"

-- 坐骑外套礼包
tValentinesDay2018_Reward[3310211] = {}
tValentinesDay2018_Reward[3310211]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310211]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310211]["DeleteItem"][1]["Id"] = 3310211
tValentinesDay2018_Reward[3310211]["RewardItem"] = {}
tValentinesDay2018_Reward[3310211]["RewardItem"][1] = {}
tValentinesDay2018_Reward[3310211]["RewardItem"][1]["Id"] = 200629
tValentinesDay2018_Reward[3310211]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tValentinesDay2018_Reward[3310211]["LogId"] = 12001123
tValentinesDay2018_Reward[3310211]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310211]["RewardEffect"]["Effect"] = "eidolon"
-- 光效时装外套礼包
tValentinesDay2018_Reward[3310212] = {}
tValentinesDay2018_Reward[3310212]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310212]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310212]["DeleteItem"][1]["Id"] = 3310212
tValentinesDay2018_Reward[3310212]["RewardItem"] = {}
tValentinesDay2018_Reward[3310212]["RewardItem"][1] = {}
tValentinesDay2018_Reward[3310212]["RewardItem"][1]["Id"] = 195405
tValentinesDay2018_Reward[3310212]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tValentinesDay2018_Reward[3310212]["LogId"] = 12001123
tValentinesDay2018_Reward[3310212]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310212]["RewardEffect"]["Effect"] = "eidolon"
-- 普通时装外套礼包
tValentinesDay2018_Reward[3310213] = {}
tValentinesDay2018_Reward[3310213]["DeleteItem"] = {}
tValentinesDay2018_Reward[3310213]["DeleteItem"][1] = {}
tValentinesDay2018_Reward[3310213]["DeleteItem"][1]["Id"] = 3310213
tValentinesDay2018_Reward[3310213]["RewardItem"] = {}
tValentinesDay2018_Reward[3310213]["RewardItem"][1] = {}
tValentinesDay2018_Reward[3310213]["RewardItem"][1]["Id"] = 195415
tValentinesDay2018_Reward[3310213]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tValentinesDay2018_Reward[3310213]["LogId"] = 12001123
tValentinesDay2018_Reward[3310213]["RewardEffect"] = {}
tValentinesDay2018_Reward[3310213]["RewardEffect"]["Effect"] = "eidolon"


local tValentinesDay2018_RandomReward = {}
-- 七夕礼物盒
tValentinesDay2018_RandomReward[3310201] = {}
-- 男1
tValentinesDay2018_RandomReward[3310201][1] = {}
tValentinesDay2018_RandomReward[3310201][1][1] = {}
tValentinesDay2018_RandomReward[3310201][1][1]["ItemChanceSum"] = 10000
tValentinesDay2018_RandomReward[3310201][1][1]["LogId"] = 12001123
-- 神仙精华露 * 1  75%
tValentinesDay2018_RandomReward[3310201][1][1][1] = {}
tValentinesDay2018_RandomReward[3310201][1][1][1]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310201][1][1][1]["ItemChance"] = 7500
tValentinesDay2018_RandomReward[3310201][1][1][1]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310201][1][1][1]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310201][1][1][1]["RewardItem"][1]["Id"] = 3310192
tValentinesDay2018_RandomReward[3310201][1][1][1]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_RandomReward[3310201][1][1][1]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310201][1][1][1]["RewardEffect"]["Effect"] = "eidolon"
-- 神仙精华露 * 3  20%
tValentinesDay2018_RandomReward[3310201][1][1][2] = {}
tValentinesDay2018_RandomReward[3310201][1][1][2]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310201][1][1][2]["ItemChance"] = 2000
tValentinesDay2018_RandomReward[3310201][1][1][2]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310201][1][1][2]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310201][1][1][2]["RewardItem"][1]["Id"] = 3310192
tValentinesDay2018_RandomReward[3310201][1][1][2]["RewardItem"][1]["Attr"] = "0 3"
tValentinesDay2018_RandomReward[3310201][1][1][2]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310201][1][1][2]["RewardEffect"]["Effect"] = "eidolon"
-- 施华洛项链 * 1  4%
tValentinesDay2018_RandomReward[3310201][1][1][3] = {}
tValentinesDay2018_RandomReward[3310201][1][1][3]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310201][1][1][3]["ItemChance"] = 400
tValentinesDay2018_RandomReward[3310201][1][1][3]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310201][1][1][3]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310201][1][1][3]["RewardItem"][1]["Id"] = 3310193
tValentinesDay2018_RandomReward[3310201][1][1][3]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_RandomReward[3310201][1][1][3]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310201][1][1][3]["RewardEffect"]["Effect"] = "eidolon"
-- 蒂芙尼钻戒 * 1  1%
tValentinesDay2018_RandomReward[3310201][1][1][4] = {}
tValentinesDay2018_RandomReward[3310201][1][1][4]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310201][1][1][4]["ItemChance"] = 100
tValentinesDay2018_RandomReward[3310201][1][1][4]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310201][1][1][4]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310201][1][1][4]["RewardItem"][1]["Id"] = 3310194
tValentinesDay2018_RandomReward[3310201][1][1][4]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_RandomReward[3310201][1][1][4]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310201][1][1][4]["RewardEffect"]["Effect"] = "eidolon"
-- 男2
tValentinesDay2018_RandomReward[3310201][1][2] = {}
tValentinesDay2018_RandomReward[3310201][1][2]["ItemChanceSum"] = 10000
tValentinesDay2018_RandomReward[3310201][1][2]["LogId"] = 12001123
-- 百合种子 * 1  45%
tValentinesDay2018_RandomReward[3310201][1][2][1] = {}
tValentinesDay2018_RandomReward[3310201][1][2][1]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310201][1][2][1]["ItemChance"] = 4500
tValentinesDay2018_RandomReward[3310201][1][2][1]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310201][1][2][1]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310201][1][2][1]["RewardItem"][1]["Id"] = 3322459
tValentinesDay2018_RandomReward[3310201][1][2][1]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_RandomReward[3310201][1][2][1]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310201][1][2][1]["RewardEffect"]["Effect"] = "eidolon"
-- 兰花种子 * 1  20%
tValentinesDay2018_RandomReward[3310201][1][2][2] = {}
tValentinesDay2018_RandomReward[3310201][1][2][2]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310201][1][2][2]["ItemChance"] = 2000
tValentinesDay2018_RandomReward[3310201][1][2][2]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310201][1][2][2]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310201][1][2][2]["RewardItem"][1]["Id"] = 3322460
tValentinesDay2018_RandomReward[3310201][1][2][2]["RewardItem"][1]["Attr"] = "0 3"
tValentinesDay2018_RandomReward[3310201][1][2][2]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310201][1][2][2]["RewardEffect"]["Effect"] = "eidolon"
-- 玫瑰种子 * 1  20%
tValentinesDay2018_RandomReward[3310201][1][2][3] = {}
tValentinesDay2018_RandomReward[3310201][1][2][3]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310201][1][2][3]["ItemChance"] = 2000
tValentinesDay2018_RandomReward[3310201][1][2][3]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310201][1][2][3]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310201][1][2][3]["RewardItem"][1]["Id"] = 3322461
tValentinesDay2018_RandomReward[3310201][1][2][3]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_RandomReward[3310201][1][2][3]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310201][1][2][3]["RewardEffect"]["Effect"] = "eidolon"
-- 郁金香种子 * 1  15%
tValentinesDay2018_RandomReward[3310201][1][2][4] = {}
tValentinesDay2018_RandomReward[3310201][1][2][4]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310201][1][2][4]["ItemChance"] = 1500
tValentinesDay2018_RandomReward[3310201][1][2][4]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310201][1][2][4]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310201][1][2][4]["RewardItem"][1]["Id"] = 3322462
tValentinesDay2018_RandomReward[3310201][1][2][4]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_RandomReward[3310201][1][2][4]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310201][1][2][4]["RewardEffect"]["Effect"] = "eidolon"

-- 女1
tValentinesDay2018_RandomReward[3310201][2] = {}
tValentinesDay2018_RandomReward[3310201][2][1] = {}
tValentinesDay2018_RandomReward[3310201][2][1]["ItemChanceSum"] = 10000
tValentinesDay2018_RandomReward[3310201][2][1]["LogId"] = 12001123
-- 耐克篮球鞋 * 1  75%
tValentinesDay2018_RandomReward[3310201][2][1][1] = {}
tValentinesDay2018_RandomReward[3310201][2][1][1]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310201][2][1][1]["ItemChance"] = 7500
tValentinesDay2018_RandomReward[3310201][2][1][1]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310201][2][1][1]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310201][2][1][1]["RewardItem"][1]["Id"] = 3310195
tValentinesDay2018_RandomReward[3310201][2][1][1]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_RandomReward[3310201][2][1][1]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310201][2][1][1]["RewardEffect"]["Effect"] = "eidolon"
-- 耐克篮球鞋 * 3  20%
tValentinesDay2018_RandomReward[3310201][2][1][2] = {}
tValentinesDay2018_RandomReward[3310201][2][1][2]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310201][2][1][2]["ItemChance"] = 2000
tValentinesDay2018_RandomReward[3310201][2][1][2]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310201][2][1][2]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310201][2][1][2]["RewardItem"][1]["Id"] = 3310195
tValentinesDay2018_RandomReward[3310201][2][1][2]["RewardItem"][1]["Attr"] = "0 3"
tValentinesDay2018_RandomReward[3310201][2][1][2]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310201][2][1][2]["RewardEffect"]["Effect"] = "eidolon"
-- 迪奥墨镜 * 1  4%
tValentinesDay2018_RandomReward[3310201][2][1][3] = {}
tValentinesDay2018_RandomReward[3310201][2][1][3]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310201][2][1][3]["ItemChance"] = 400
tValentinesDay2018_RandomReward[3310201][2][1][3]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310201][2][1][3]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310201][2][1][3]["RewardItem"][1]["Id"] = 3310196
tValentinesDay2018_RandomReward[3310201][2][1][3]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_RandomReward[3310201][2][1][3]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310201][2][1][3]["RewardEffect"]["Effect"] = "eidolon"
-- 爱马仕钱包 * 1  1%
tValentinesDay2018_RandomReward[3310201][2][1][4] = {}
tValentinesDay2018_RandomReward[3310201][2][1][4]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310201][2][1][4]["ItemChance"] = 100
tValentinesDay2018_RandomReward[3310201][2][1][4]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310201][2][1][4]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310201][2][1][4]["RewardItem"][1]["Id"] = 3310197
tValentinesDay2018_RandomReward[3310201][2][1][4]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_RandomReward[3310201][2][1][4]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310201][2][1][4]["RewardEffect"]["Effect"] = "eidolon"
-- 女2
tValentinesDay2018_RandomReward[3310201][2][2] = {}
tValentinesDay2018_RandomReward[3310201][2][2]["ItemChanceSum"] = 10000
tValentinesDay2018_RandomReward[3310201][2][2]["LogId"] = 12001123
-- 百合种子 * 1  45%
tValentinesDay2018_RandomReward[3310201][2][2][1] = {}
tValentinesDay2018_RandomReward[3310201][2][2][1]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310201][2][2][1]["ItemChance"] = 4500
tValentinesDay2018_RandomReward[3310201][2][2][1]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310201][2][2][1]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310201][2][2][1]["RewardItem"][1]["Id"] = 3322459
tValentinesDay2018_RandomReward[3310201][2][2][1]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_RandomReward[3310201][2][2][1]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310201][2][2][1]["RewardEffect"]["Effect"] = "eidolon"
-- 兰花种子 * 1  20%
tValentinesDay2018_RandomReward[3310201][2][2][2] = {}
tValentinesDay2018_RandomReward[3310201][2][2][2]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310201][2][2][2]["ItemChance"] = 2000
tValentinesDay2018_RandomReward[3310201][2][2][2]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310201][2][2][2]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310201][2][2][2]["RewardItem"][1]["Id"] = 3322460
tValentinesDay2018_RandomReward[3310201][2][2][2]["RewardItem"][1]["Attr"] = "0 3"
tValentinesDay2018_RandomReward[3310201][2][2][2]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310201][2][2][2]["RewardEffect"]["Effect"] = "eidolon"
-- 玫瑰种子 * 1  20%
tValentinesDay2018_RandomReward[3310201][2][2][3] = {}
tValentinesDay2018_RandomReward[3310201][2][2][3]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310201][2][2][3]["ItemChance"] = 2000
tValentinesDay2018_RandomReward[3310201][2][2][3]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310201][2][2][3]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310201][2][2][3]["RewardItem"][1]["Id"] = 3322461
tValentinesDay2018_RandomReward[3310201][2][2][3]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_RandomReward[3310201][2][2][3]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310201][2][2][3]["RewardEffect"]["Effect"] = "eidolon"
-- 郁金香种子 * 1  15%
tValentinesDay2018_RandomReward[3310201][2][2][4] = {}
tValentinesDay2018_RandomReward[3310201][2][2][4]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310201][2][2][4]["ItemChance"] = 1500
tValentinesDay2018_RandomReward[3310201][2][2][4]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310201][2][2][4]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310201][2][2][4]["RewardItem"][1]["Id"] = 3322462
tValentinesDay2018_RandomReward[3310201][2][2][4]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_RandomReward[3310201][2][2][4]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310201][2][2][4]["RewardEffect"]["Effect"] = "eidolon"

-- 魅力成长精装包
tValentinesDay2018_RandomReward[3310202] = {}
tValentinesDay2018_RandomReward[3310202][1] = {}
tValentinesDay2018_RandomReward[3310202][1]["ItemChanceSum"] = 10000
tValentinesDay2018_RandomReward[3310202][1]["LogId"] = 12001123
-- 200气力值 * 1  50%
tValentinesDay2018_RandomReward[3310202][1][1] = {}
tValentinesDay2018_RandomReward[3310202][1][1]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310202][1][1]["ItemChance"] = 5000
-- tValentinesDay2018_RandomReward[3310202][1][1]["RewardItem"] = {}
-- tValentinesDay2018_RandomReward[3310202][1][1]["RewardItem"][1] = {}
-- tValentinesDay2018_RandomReward[3310202][1][1]["RewardItem"][1]["Id"] = 3304324
-- tValentinesDay2018_RandomReward[3310202][1][1]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_RandomReward[3310202][1][1]["RewardStrengthValue"] = {}
tValentinesDay2018_RandomReward[3310202][1][1]["RewardStrengthValue"]["Value"] = 200
tValentinesDay2018_RandomReward[3310202][1][1]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310202][1][1]["RewardEffect"]["Effect"] = "eidolon"
-- 赤炼石+2 * 1  10%
tValentinesDay2018_RandomReward[3310202][1][2] = {}
tValentinesDay2018_RandomReward[3310202][1][2]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310202][1][2]["ItemChance"] = 1000
tValentinesDay2018_RandomReward[3310202][1][2]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310202][1][2]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310202][1][2]["RewardItem"][1]["Id"] = 730002
tValentinesDay2018_RandomReward[3310202][1][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
tValentinesDay2018_RandomReward[3310202][1][2]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310202][1][2]["RewardEffect"]["Effect"] = "eidolon"
-- 微光星陨石 * 7  20%
tValentinesDay2018_RandomReward[3310202][1][3] = {}
tValentinesDay2018_RandomReward[3310202][1][3]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310202][1][3]["ItemChance"] = 2000
tValentinesDay2018_RandomReward[3310202][1][3]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310202][1][3]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310202][1][3]["RewardItem"][1]["Id"] = 3009000
tValentinesDay2018_RandomReward[3310202][1][3]["RewardItem"][1]["Attr"] = "0 7 0 2880 1"
tValentinesDay2018_RandomReward[3310202][1][3]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310202][1][3]["RewardEffect"]["Effect"] = "eidolon"
-- 人参果 * 4  20%
tValentinesDay2018_RandomReward[3310202][1][4] = {}
tValentinesDay2018_RandomReward[3310202][1][4]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310202][1][4]["ItemChance"] = 2000
tValentinesDay2018_RandomReward[3310202][1][4]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310202][1][4]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310202][1][4]["RewardItem"][1]["Id"] = 3009100
tValentinesDay2018_RandomReward[3310202][1][4]["RewardItem"][1]["Attr"] = "0 4"
tValentinesDay2018_RandomReward[3310202][1][4]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310202][1][4]["RewardEffect"]["Effect"] = "eidolon"

-- 魅力成长豪华包
tValentinesDay2018_RandomReward[3310203] = {}
tValentinesDay2018_RandomReward[3310203][1] = {}
tValentinesDay2018_RandomReward[3310203][1]["ItemChanceSum"] = 10000
tValentinesDay2018_RandomReward[3310203][1]["LogId"] = 12001123
-- 300气力值 * 1  50%
tValentinesDay2018_RandomReward[3310203][1][1] = {}
tValentinesDay2018_RandomReward[3310203][1][1]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310203][1][1]["ItemChance"] = 5000
-- tValentinesDay2018_RandomReward[3310203][1][1]["RewardItem"] = {}
-- tValentinesDay2018_RandomReward[3310203][1][1]["RewardItem"][1] = {}
-- tValentinesDay2018_RandomReward[3310203][1][1]["RewardItem"][1]["Id"] = 3302457
-- tValentinesDay2018_RandomReward[3310203][1][1]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_RandomReward[3310203][1][1]["RewardStrengthValue"] = {}
tValentinesDay2018_RandomReward[3310203][1][1]["RewardStrengthValue"]["Value"] = 300
tValentinesDay2018_RandomReward[3310203][1][1]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310203][1][1]["RewardEffect"]["Effect"] = "eidolon"
-- 赤炼石+3 * 1  10%
tValentinesDay2018_RandomReward[3310203][1][2] = {}
tValentinesDay2018_RandomReward[3310203][1][2]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310203][1][2]["ItemChance"] = 1000
tValentinesDay2018_RandomReward[3310203][1][2]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310203][1][2]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310203][1][2]["RewardItem"][1]["Id"] = 730003
tValentinesDay2018_RandomReward[3310203][1][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
tValentinesDay2018_RandomReward[3310203][1][2]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310203][1][2]["RewardEffect"]["Effect"] = "eidolon"
-- 明亮星陨石 * 1  20%
tValentinesDay2018_RandomReward[3310203][1][3] = {}
tValentinesDay2018_RandomReward[3310203][1][3]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310203][1][3]["ItemChance"] = 2000
tValentinesDay2018_RandomReward[3310203][1][3]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310203][1][3]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310203][1][3]["RewardItem"][1]["Id"] = 3009001
tValentinesDay2018_RandomReward[3310203][1][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tValentinesDay2018_RandomReward[3310203][1][3]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310203][1][3]["RewardEffect"]["Effect"] = "eidolon"
-- 人参果 * 6  20%
tValentinesDay2018_RandomReward[3310203][1][4] = {}
tValentinesDay2018_RandomReward[3310203][1][4]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310203][1][4]["ItemChance"] = 2000
tValentinesDay2018_RandomReward[3310203][1][4]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310203][1][4]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310203][1][4]["RewardItem"][1]["Id"] = 3009100
tValentinesDay2018_RandomReward[3310203][1][4]["RewardItem"][1]["Attr"] = "0 6"
tValentinesDay2018_RandomReward[3310203][1][4]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310203][1][4]["RewardEffect"]["Effect"] = "eidolon"

-- 魅力成长尊享包
tValentinesDay2018_RandomReward[3310204] = {}
tValentinesDay2018_RandomReward[3310204][1] = {}
tValentinesDay2018_RandomReward[3310204][1]["ItemChanceSum"] = 10000
tValentinesDay2018_RandomReward[3310204][1]["LogId"] = 12001123
-- 500气力值 * 1  50%
tValentinesDay2018_RandomReward[3310204][1][1] = {}
tValentinesDay2018_RandomReward[3310204][1][1]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310204][1][1]["ItemChance"] = 5000
-- tValentinesDay2018_RandomReward[3310204][1][1]["RewardItem"] = {}
-- tValentinesDay2018_RandomReward[3310204][1][1]["RewardItem"][1] = {}
-- tValentinesDay2018_RandomReward[3310204][1][1]["RewardItem"][1]["Id"] = 3302457
-- tValentinesDay2018_RandomReward[3310204][1][1]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_RandomReward[3310204][1][1]["RewardStrengthValue"] = {}
tValentinesDay2018_RandomReward[3310204][1][1]["RewardStrengthValue"]["Value"] = 500
tValentinesDay2018_RandomReward[3310204][1][1]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310204][1][1]["RewardEffect"]["Effect"] = "eidolon"
-- 赤炼石+3 * 2  10%
tValentinesDay2018_RandomReward[3310204][1][2] = {}
tValentinesDay2018_RandomReward[3310204][1][2]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310204][1][2]["ItemChance"] = 1000
tValentinesDay2018_RandomReward[3310204][1][2]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310204][1][2]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310204][1][2]["RewardItem"][1]["Id"] = 730003
tValentinesDay2018_RandomReward[3310204][1][2]["RewardItem"][1]["Attr"] = "0 2 3 10080 1"
tValentinesDay2018_RandomReward[3310204][1][2]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310204][1][2]["RewardEffect"]["Effect"] = "eidolon"
-- 明亮星陨石 * 2  20%
tValentinesDay2018_RandomReward[3310204][1][3] = {}
tValentinesDay2018_RandomReward[3310204][1][3]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310204][1][3]["ItemChance"] = 2000
tValentinesDay2018_RandomReward[3310204][1][3]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310204][1][3]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310204][1][3]["RewardItem"][1]["Id"] = 3009001
tValentinesDay2018_RandomReward[3310204][1][3]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
tValentinesDay2018_RandomReward[3310204][1][3]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310204][1][3]["RewardEffect"]["Effect"] = "eidolon"
-- 人参果 * 10  20%
tValentinesDay2018_RandomReward[3310204][1][4] = {}
tValentinesDay2018_RandomReward[3310204][1][4]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310204][1][4]["ItemChance"] = 2000
tValentinesDay2018_RandomReward[3310204][1][4]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310204][1][4]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310204][1][4]["RewardItem"][1]["Id"] = 3009100
tValentinesDay2018_RandomReward[3310204][1][4]["RewardItem"][1]["Attr"] = "0 10"
tValentinesDay2018_RandomReward[3310204][1][4]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310204][1][4]["RewardEffect"]["Effect"] = "eidolon"

-- 魅力成长王者包
tValentinesDay2018_RandomReward[3310205] = {}
tValentinesDay2018_RandomReward[3310205][1] = {}
tValentinesDay2018_RandomReward[3310205][1]["ItemChanceSum"] = 10000
tValentinesDay2018_RandomReward[3310205][1]["LogId"] = 12001123
-- 1000气力值 * 1  55%
tValentinesDay2018_RandomReward[3310205][1][1] = {}
tValentinesDay2018_RandomReward[3310205][1][1]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310205][1][1]["ItemChance"] = 5500
-- tValentinesDay2018_RandomReward[3310205][1][1]["RewardItem"] = {}
-- tValentinesDay2018_RandomReward[3310205][1][1]["RewardItem"][1] = {}
-- tValentinesDay2018_RandomReward[3310205][1][1]["RewardItem"][1]["Id"] = 3304327
-- tValentinesDay2018_RandomReward[3310205][1][1]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_RandomReward[3310205][1][1]["RewardStrengthValue"] = {}
tValentinesDay2018_RandomReward[3310205][1][1]["RewardStrengthValue"]["Value"] = 1000
tValentinesDay2018_RandomReward[3310205][1][1]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310205][1][1]["RewardEffect"]["Effect"] = "eidolon"
-- 赤炼石+4 * 1  5%
tValentinesDay2018_RandomReward[3310205][1][2] = {}
tValentinesDay2018_RandomReward[3310205][1][2]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310205][1][2]["ItemChance"] = 500
tValentinesDay2018_RandomReward[3310205][1][2]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310205][1][2]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310205][1][2]["RewardItem"][1]["Id"] = 730004
tValentinesDay2018_RandomReward[3310205][1][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
tValentinesDay2018_RandomReward[3310205][1][2]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310205][1][2]["RewardEffect"]["Effect"] = "eidolon"
-- 明亮星陨石 * 3  25%
tValentinesDay2018_RandomReward[3310205][1][3] = {}
tValentinesDay2018_RandomReward[3310205][1][3]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310205][1][3]["ItemChance"] = 2500
tValentinesDay2018_RandomReward[3310205][1][3]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310205][1][3]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310205][1][3]["RewardItem"][1]["Id"] = 3009001
tValentinesDay2018_RandomReward[3310205][1][3]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
tValentinesDay2018_RandomReward[3310205][1][3]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310205][1][3]["RewardEffect"]["Effect"] = "eidolon"
-- 人参果 * 20  15%
tValentinesDay2018_RandomReward[3310205][1][4] = {}
tValentinesDay2018_RandomReward[3310205][1][4]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310205][1][4]["ItemChance"] = 1500
tValentinesDay2018_RandomReward[3310205][1][4]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310205][1][4]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310205][1][4]["RewardItem"][1]["Id"] = 3009100
tValentinesDay2018_RandomReward[3310205][1][4]["RewardItem"][1]["Attr"] = "0 20"
tValentinesDay2018_RandomReward[3310205][1][4]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310205][1][4]["RewardEffect"]["Effect"] = "eidolon"

-- 日常魅力成长包
tValentinesDay2018_RandomReward[3310206] = {}
tValentinesDay2018_RandomReward[3310206][1] = {}
tValentinesDay2018_RandomReward[3310206][1]["ItemChanceSum"] = 10000
tValentinesDay2018_RandomReward[3310206][1]["LogId"] = 12001123
-- 500气力值 * 1  40%
tValentinesDay2018_RandomReward[3310206][1][1] = {}
tValentinesDay2018_RandomReward[3310206][1][1]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310206][1][1]["ItemChance"] = 4000
tValentinesDay2018_RandomReward[3310206][1][1]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310206][1][1]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310206][1][1]["RewardItem"][1]["Id"] = 3304328
tValentinesDay2018_RandomReward[3310206][1][1]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_RandomReward[3310206][1][1]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310206][1][1]["RewardEffect"]["Effect"] = "eidolon"
-- 赤炼石+3 * 1  20%
tValentinesDay2018_RandomReward[3310206][1][2] = {}
tValentinesDay2018_RandomReward[3310206][1][2]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310206][1][2]["ItemChance"] = 2000
tValentinesDay2018_RandomReward[3310206][1][2]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310206][1][2]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310206][1][2]["RewardItem"][1]["Id"] = 730003
tValentinesDay2018_RandomReward[3310206][1][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
tValentinesDay2018_RandomReward[3310206][1][2]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310206][1][2]["RewardEffect"]["Effect"] = "eidolon"
-- 明亮星陨石 * 1  25%
tValentinesDay2018_RandomReward[3310206][1][3] = {}
tValentinesDay2018_RandomReward[3310206][1][3]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310206][1][3]["ItemChance"] = 2000
tValentinesDay2018_RandomReward[3310206][1][3]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310206][1][3]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310206][1][3]["RewardItem"][1]["Id"] = 3009001
tValentinesDay2018_RandomReward[3310206][1][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tValentinesDay2018_RandomReward[3310206][1][3]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310206][1][3]["RewardEffect"]["Effect"] = "eidolon"
-- 人参果 * 3  20%
tValentinesDay2018_RandomReward[3310206][1][4] = {}
tValentinesDay2018_RandomReward[3310206][1][4]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310206][1][4]["ItemChance"] = 2000
tValentinesDay2018_RandomReward[3310206][1][4]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310206][1][4]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310206][1][4]["RewardItem"][1]["Id"] = 3009100
tValentinesDay2018_RandomReward[3310206][1][4]["RewardItem"][1]["Attr"] = "0 3"
tValentinesDay2018_RandomReward[3310206][1][4]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310206][1][4]["RewardEffect"]["Effect"] = "eidolon"


-- 七夕鲜花券精装包
tValentinesDay2018_RandomReward[3310215] = {}
tValentinesDay2018_RandomReward[3310215]["LogId"] = 12001123
tValentinesDay2018_RandomReward[3310215]["ItemChanceSum"] = 10000
-- 13%  玫瑰兑换券  50
tValentinesDay2018_RandomReward[3310215][1] = {}
tValentinesDay2018_RandomReward[3310215][1]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310215][1]["ItemChance"] = 1300
tValentinesDay2018_RandomReward[3310215][1]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310215][1]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310215][1]["RewardItem"][1]["Id"] = 3304134
tValentinesDay2018_RandomReward[3310215][1]["RewardItem"][1]["Attr"] = "0 50"
tValentinesDay2018_RandomReward[3310215][1]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310215][1]["RewardEffect"]["Effect"] = "tulip-flower-charm1"
-- 9%  玫瑰兑换券  100
tValentinesDay2018_RandomReward[3310215][2] = {}
tValentinesDay2018_RandomReward[3310215][2]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310215][2]["ItemChance"] = 900
tValentinesDay2018_RandomReward[3310215][2]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310215][2]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310215][2]["RewardItem"][1]["Id"] = 3304134
tValentinesDay2018_RandomReward[3310215][2]["RewardItem"][1]["Attr"] = "0 100"
tValentinesDay2018_RandomReward[3310215][2]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310215][2]["RewardEffect"]["Effect"] = "tulip-flower-charm1"
-- 5%  玫瑰兑换券  150
tValentinesDay2018_RandomReward[3310215][3] = {}
tValentinesDay2018_RandomReward[3310215][3]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310215][3]["ItemChance"] = 500
tValentinesDay2018_RandomReward[3310215][3]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310215][3]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310215][3]["RewardItem"][1]["Id"] = 3304134
tValentinesDay2018_RandomReward[3310215][3]["RewardItem"][1]["Attr"] = "0 150"
tValentinesDay2018_RandomReward[3310215][3]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310215][3]["RewardEffect"]["Effect"] = "tulip-flower-charm1"
-- 15%  兰花兑换券  50
tValentinesDay2018_RandomReward[3310215][4] = {}
tValentinesDay2018_RandomReward[3310215][4]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310215][4]["ItemChance"] = 1500
tValentinesDay2018_RandomReward[3310215][4]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310215][4]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310215][4]["RewardItem"][1]["Id"] = 3304135
tValentinesDay2018_RandomReward[3310215][4]["RewardItem"][1]["Attr"] = "0 50"
tValentinesDay2018_RandomReward[3310215][4]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310215][4]["RewardEffect"]["Effect"] = "tulip-flower-charm1"
-- 10%  兰花兑换券  100
tValentinesDay2018_RandomReward[3310215][5] = {}
tValentinesDay2018_RandomReward[3310215][5]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310215][5]["ItemChance"] = 1000
tValentinesDay2018_RandomReward[3310215][5]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310215][5]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310215][5]["RewardItem"][1]["Id"] = 3304135
tValentinesDay2018_RandomReward[3310215][5]["RewardItem"][1]["Attr"] = "0 100"
tValentinesDay2018_RandomReward[3310215][5]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310215][5]["RewardEffect"]["Effect"] = "tulip-flower-charm1"
-- 8%  兰花兑换券  200
tValentinesDay2018_RandomReward[3310215][6] = {}
tValentinesDay2018_RandomReward[3310215][6]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310215][6]["ItemChance"] = 800
tValentinesDay2018_RandomReward[3310215][6]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310215][6]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310215][6]["RewardItem"][1]["Id"] = 3304135
tValentinesDay2018_RandomReward[3310215][6]["RewardItem"][1]["Attr"] = "0 200"
tValentinesDay2018_RandomReward[3310215][6]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310215][6]["RewardEffect"]["Effect"] = "tulip-flower-charm1"
-- 13%  百合兑换券  80
tValentinesDay2018_RandomReward[3310215][7] = {}
tValentinesDay2018_RandomReward[3310215][7]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310215][7]["ItemChance"] = 1300
tValentinesDay2018_RandomReward[3310215][7]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310215][7]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310215][7]["RewardItem"][1]["Id"] = 3304136
tValentinesDay2018_RandomReward[3310215][7]["RewardItem"][1]["Attr"] = "0 80"
tValentinesDay2018_RandomReward[3310215][7]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310215][7]["RewardEffect"]["Effect"] = "tulip-flower-charm1"
-- 10%  百合兑换券  100
tValentinesDay2018_RandomReward[3310215][8] = {}
tValentinesDay2018_RandomReward[3310215][8]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310215][8]["ItemChance"] = 1000
tValentinesDay2018_RandomReward[3310215][8]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310215][8]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310215][8]["RewardItem"][1]["Id"] = 3304136
tValentinesDay2018_RandomReward[3310215][8]["RewardItem"][1]["Attr"] = "0 100"
tValentinesDay2018_RandomReward[3310215][8]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310215][8]["RewardEffect"]["Effect"] = "tulip-flower-charm1"
-- 3%  百合兑换券  150
tValentinesDay2018_RandomReward[3310215][9] = {}
tValentinesDay2018_RandomReward[3310215][9]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310215][9]["ItemChance"] = 300
tValentinesDay2018_RandomReward[3310215][9]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310215][9]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310215][9]["RewardItem"][1]["Id"] = 3304136
tValentinesDay2018_RandomReward[3310215][9]["RewardItem"][1]["Attr"] = "0 150"
tValentinesDay2018_RandomReward[3310215][9]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310215][9]["RewardEffect"]["Effect"] = "tulip-flower-charm1"
-- 8%  郁金香兑换券  30
tValentinesDay2018_RandomReward[3310215][10] = {}
tValentinesDay2018_RandomReward[3310215][10]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310215][10]["ItemChance"] = 800
tValentinesDay2018_RandomReward[3310215][10]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310215][10]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310215][10]["RewardItem"][1]["Id"] = 3304137
tValentinesDay2018_RandomReward[3310215][10]["RewardItem"][1]["Attr"] = "0 30"
tValentinesDay2018_RandomReward[3310215][10]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310215][10]["RewardEffect"]["Effect"] = "tulip-flower-charm1"
-- 5%  郁金香兑换券  50
tValentinesDay2018_RandomReward[3310215][11] = {}
tValentinesDay2018_RandomReward[3310215][11]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310215][11]["ItemChance"] = 500
tValentinesDay2018_RandomReward[3310215][11]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310215][11]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310215][11]["RewardItem"][1]["Id"] = 3304137
tValentinesDay2018_RandomReward[3310215][11]["RewardItem"][1]["Attr"] = "0 50"
tValentinesDay2018_RandomReward[3310215][11]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310215][11]["RewardEffect"]["Effect"] = "tulip-flower-charm1"
-- 1%  郁金香兑换券  80
tValentinesDay2018_RandomReward[3310215][12] = {}
tValentinesDay2018_RandomReward[3310215][12]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310215][12]["ItemChance"] = 100
tValentinesDay2018_RandomReward[3310215][12]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310215][12]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310215][12]["RewardItem"][1]["Id"] = 3304137
tValentinesDay2018_RandomReward[3310215][12]["RewardItem"][1]["Attr"] = "0 80"
tValentinesDay2018_RandomReward[3310215][12]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310215][12]["RewardEffect"]["Effect"] = "tulip-flower-charm1"


-- 七夕鲜花券豪华包
tValentinesDay2018_RandomReward[3310216] = {}
tValentinesDay2018_RandomReward[3310216]["LogId"] = 12001123
tValentinesDay2018_RandomReward[3310216]["ItemChanceSum"] = 10000
-- 13%  玫瑰兑换券  500
tValentinesDay2018_RandomReward[3310216][1] = {}
tValentinesDay2018_RandomReward[3310216][1]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310216][1]["ItemChance"] = 1300
tValentinesDay2018_RandomReward[3310216][1]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310216][1]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310216][1]["RewardItem"][1]["Id"] = 3304134
tValentinesDay2018_RandomReward[3310216][1]["RewardItem"][1]["Attr"] = "0 500"
tValentinesDay2018_RandomReward[3310216][1]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310216][1]["RewardEffect"]["Effect"] = "tulip-flower-charm1"
-- 9%  玫瑰兑换券  1000
tValentinesDay2018_RandomReward[3310216][2] = {}
tValentinesDay2018_RandomReward[3310216][2]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310216][2]["ItemChance"] = 900
tValentinesDay2018_RandomReward[3310216][2]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310216][2]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310216][2]["RewardItem"][1]["Id"] = 3304134
tValentinesDay2018_RandomReward[3310216][2]["RewardItem"][1]["Attr"] = "0 1000"
tValentinesDay2018_RandomReward[3310216][2]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310216][2]["RewardEffect"]["Effect"] = "tulip-flower-charm1"
-- 5%  玫瑰兑换券  1500
tValentinesDay2018_RandomReward[3310216][3] = {}
tValentinesDay2018_RandomReward[3310216][3]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310216][3]["ItemChance"] = 500
tValentinesDay2018_RandomReward[3310216][3]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310216][3]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310216][3]["RewardItem"][1]["Id"] = 3304134
tValentinesDay2018_RandomReward[3310216][3]["RewardItem"][1]["Attr"] = "0 1500"
tValentinesDay2018_RandomReward[3310216][3]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310216][3]["RewardEffect"]["Effect"] = "tulip-flower-charm1"
-- 15%  兰花兑换券  500
tValentinesDay2018_RandomReward[3310216][4] = {}
tValentinesDay2018_RandomReward[3310216][4]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310216][4]["ItemChance"] = 1500
tValentinesDay2018_RandomReward[3310216][4]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310216][4]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310216][4]["RewardItem"][1]["Id"] = 3304135
tValentinesDay2018_RandomReward[3310216][4]["RewardItem"][1]["Attr"] = "0 500"
tValentinesDay2018_RandomReward[3310216][4]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310216][4]["RewardEffect"]["Effect"] = "tulip-flower-charm1"
-- 10%  兰花兑换券  1000
tValentinesDay2018_RandomReward[3310216][5] = {}
tValentinesDay2018_RandomReward[3310216][5]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310216][5]["ItemChance"] = 1000
tValentinesDay2018_RandomReward[3310216][5]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310216][5]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310216][5]["RewardItem"][1]["Id"] = 3304135
tValentinesDay2018_RandomReward[3310216][5]["RewardItem"][1]["Attr"] = "0 1000"
tValentinesDay2018_RandomReward[3310216][5]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310216][5]["RewardEffect"]["Effect"] = "tulip-flower-charm1"
-- 8%  兰花兑换券  2000
tValentinesDay2018_RandomReward[3310216][6] = {}
tValentinesDay2018_RandomReward[3310216][6]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310216][6]["ItemChance"] = 800
tValentinesDay2018_RandomReward[3310216][6]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310216][6]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310216][6]["RewardItem"][1]["Id"] = 3304135
tValentinesDay2018_RandomReward[3310216][6]["RewardItem"][1]["Attr"] = "0 2000"
tValentinesDay2018_RandomReward[3310216][6]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310216][6]["RewardEffect"]["Effect"] = "tulip-flower-charm1"
-- 13%  百合兑换券  800
tValentinesDay2018_RandomReward[3310216][7] = {}
tValentinesDay2018_RandomReward[3310216][7]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310216][7]["ItemChance"] = 1300
tValentinesDay2018_RandomReward[3310216][7]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310216][7]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310216][7]["RewardItem"][1]["Id"] = 3304136
tValentinesDay2018_RandomReward[3310216][7]["RewardItem"][1]["Attr"] = "0 800"
tValentinesDay2018_RandomReward[3310216][7]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310216][7]["RewardEffect"]["Effect"] = "tulip-flower-charm1"
-- 10%  百合兑换券  1000
tValentinesDay2018_RandomReward[3310216][8] = {}
tValentinesDay2018_RandomReward[3310216][8]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310216][8]["ItemChance"] = 1000
tValentinesDay2018_RandomReward[3310216][8]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310216][8]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310216][8]["RewardItem"][1]["Id"] = 3304136
tValentinesDay2018_RandomReward[3310216][8]["RewardItem"][1]["Attr"] = "0 1000"
tValentinesDay2018_RandomReward[3310216][8]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310216][8]["RewardEffect"]["Effect"] = "tulip-flower-charm1"
-- 3%  百合兑换券  1500
tValentinesDay2018_RandomReward[3310216][9] = {}
tValentinesDay2018_RandomReward[3310216][9]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310216][9]["ItemChance"] = 300
tValentinesDay2018_RandomReward[3310216][9]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310216][9]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310216][9]["RewardItem"][1]["Id"] = 3304136
tValentinesDay2018_RandomReward[3310216][9]["RewardItem"][1]["Attr"] = "0 1500"
tValentinesDay2018_RandomReward[3310216][9]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310216][9]["RewardEffect"]["Effect"] = "tulip-flower-charm1"
-- 8%  郁金香兑换券  300
tValentinesDay2018_RandomReward[3310216][10] = {}
tValentinesDay2018_RandomReward[3310216][10]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310216][10]["ItemChance"] = 800
tValentinesDay2018_RandomReward[3310216][10]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310216][10]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310216][10]["RewardItem"][1]["Id"] = 3304137
tValentinesDay2018_RandomReward[3310216][10]["RewardItem"][1]["Attr"] = "0 300"
tValentinesDay2018_RandomReward[3310216][10]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310216][10]["RewardEffect"]["Effect"] = "tulip-flower-charm1"
-- 5%  郁金香兑换券  500
tValentinesDay2018_RandomReward[3310216][11] = {}
tValentinesDay2018_RandomReward[3310216][11]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310216][11]["ItemChance"] = 500
tValentinesDay2018_RandomReward[3310216][11]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310216][11]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310216][11]["RewardItem"][1]["Id"] = 3304137
tValentinesDay2018_RandomReward[3310216][11]["RewardItem"][1]["Attr"] = "0 500"
tValentinesDay2018_RandomReward[3310216][11]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310216][11]["RewardEffect"]["Effect"] = "tulip-flower-charm1"
-- 1%  郁金香兑换券  800
tValentinesDay2018_RandomReward[3310216][12] = {}
tValentinesDay2018_RandomReward[3310216][12]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310216][12]["ItemChance"] = 100
tValentinesDay2018_RandomReward[3310216][12]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310216][12]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310216][12]["RewardItem"][1]["Id"] = 3304137
tValentinesDay2018_RandomReward[3310216][12]["RewardItem"][1]["Attr"] = "0 800"
tValentinesDay2018_RandomReward[3310216][12]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310216][12]["RewardEffect"]["Effect"] = "tulip-flower-charm1"
-- 魅力金云碎片
tValentinesDay2018_RandomReward[3310207] = {}
tValentinesDay2018_RandomReward[3310207][1] = {}
tValentinesDay2018_RandomReward[3310207][1]["ItemChanceSum"] = 10000
tValentinesDay2018_RandomReward[3310207][1]["LogId"] = 12001123
tValentinesDay2018_RandomReward[3310207][1]["LogStep"] = "4[1]"
-- 奖励翻倍
tValentinesDay2018_RandomReward[3310207][1][1] = {}
tValentinesDay2018_RandomReward[3310207][1][1]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310207][1][1]["ItemChance"] = 4900
-- tValentinesDay2018_RandomReward[3310207][1][1]["EventType"] = tValentinesDay2018_Data["Stc"]["Event"][10]
-- tValentinesDay2018_RandomReward[3310207][1][1]["DataType"] = tValentinesDay2018_Data["Stc"]["Data"][10]
tValentinesDay2018_RandomReward[3310207][1][1]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310207][1][1]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward[3310207][1][1]["RewardItem"][1]["Id"] = 3310207
tValentinesDay2018_RandomReward[3310207][1][1]["RewardItem"][1]["Attr"] = "0 2"
tValentinesDay2018_RandomReward[3310207][1][1]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310207][1][1]["RewardEffect"]["Effect"] = "eidolon"
tValentinesDay2018_RandomReward[3310207][1][1]["Result"] = true
-- 翻倍失败
tValentinesDay2018_RandomReward[3310207][1][2] = {}
tValentinesDay2018_RandomReward[3310207][1][2]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward[3310207][1][2]["ItemChance"] = 5100
tValentinesDay2018_RandomReward[3310207][1][2]["RewardItem"] = {}
tValentinesDay2018_RandomReward[3310207][1][2]["RewardEffect"] = {}
tValentinesDay2018_RandomReward[3310207][1][2]["RewardEffect"]["Effect"] = "BodyDisapear"
tValentinesDay2018_RandomReward[3310207][1][2]["Result"] = false


-- 坐骑外套碎片额外产出
tValentinesDay2018_RandomReward["TipAdditional"] = {}
tValentinesDay2018_RandomReward["TipAdditional"][1] = {}
tValentinesDay2018_RandomReward["TipAdditional"][1]["ItemChanceSum"] = 10000
tValentinesDay2018_RandomReward["TipAdditional"][1]["LogId"] = 12001123
tValentinesDay2018_RandomReward["TipAdditional"][1]["LogStep"] = "4[3]"
-- 魅力金云碎片
tValentinesDay2018_RandomReward["TipAdditional"][1][1] = {}
tValentinesDay2018_RandomReward["TipAdditional"][1][1]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward["TipAdditional"][1][1]["ItemChance"] = 0
tValentinesDay2018_RandomReward["TipAdditional"][1][1]["RewardItem"] = {}
tValentinesDay2018_RandomReward["TipAdditional"][1][1]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward["TipAdditional"][1][1]["RewardItem"][1]["Id"] = 3310207
tValentinesDay2018_RandomReward["TipAdditional"][1][1]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_RandomReward["TipAdditional"][1][1]["Result"] = true
-- 无
tValentinesDay2018_RandomReward["TipAdditional"][1][2] = {}
tValentinesDay2018_RandomReward["TipAdditional"][1][2]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward["TipAdditional"][1][2]["ItemChance"] = 10000
tValentinesDay2018_RandomReward["TipAdditional"][1][2]["Result"] = false

-- 2019情人节
tValentinesDay2018_RandomReward["TipAdditional"][2] = {}
tValentinesDay2018_RandomReward["TipAdditional"][2]["ItemChanceSum"] = 10000
tValentinesDay2018_RandomReward["TipAdditional"][2]["LogId"] = 12001123
tValentinesDay2018_RandomReward["TipAdditional"][2]["LogStep"] = "4[3]"
-- 武器碎片
tValentinesDay2018_RandomReward["TipAdditional"][2][1] = {}
tValentinesDay2018_RandomReward["TipAdditional"][2][1]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward["TipAdditional"][2][1]["ItemChance"] = 0
tValentinesDay2018_RandomReward["TipAdditional"][2][1]["RewardItem"] = {}
tValentinesDay2018_RandomReward["TipAdditional"][2][1]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward["TipAdditional"][2][1]["RewardItem"][1]["Id"] = 3312003  --2019情人节碎片
tValentinesDay2018_RandomReward["TipAdditional"][2][1]["RewardItem"][1]["Attr"] = "0 1"
tValentinesDay2018_RandomReward["TipAdditional"][2][1]["Result"] = true
-- 无
tValentinesDay2018_RandomReward["TipAdditional"][2][2] = {}
tValentinesDay2018_RandomReward["TipAdditional"][2][2]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward["TipAdditional"][2][2]["ItemChance"] = 10000
tValentinesDay2018_RandomReward["TipAdditional"][2][2]["Result"] = false

-- 神龙岛，古神灵境击杀掉落
tValentinesDay2018_RandomReward["MonsterDrop"] = {}
tValentinesDay2018_RandomReward["MonsterDrop"][2] = {}
tValentinesDay2018_RandomReward["MonsterDrop"][2]["ItemChanceSum"] = 10000
tValentinesDay2018_RandomReward["MonsterDrop"][2]["LogId"] = 12001123
tValentinesDay2018_RandomReward["MonsterDrop"][2]["LogStep"] = "1[3]"
-- 七夕礼盒
tValentinesDay2018_RandomReward["MonsterDrop"][2][1] = {}
tValentinesDay2018_RandomReward["MonsterDrop"][2][1]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward["MonsterDrop"][2][1]["ItemChance"] = 50
tValentinesDay2018_RandomReward["MonsterDrop"][2][1]["EventType"] = tValentinesDay2018_Data["Stc"]["Event"][6]
tValentinesDay2018_RandomReward["MonsterDrop"][2][1]["DataType"] = tValentinesDay2018_Data["Stc"]["Data"][6]
tValentinesDay2018_RandomReward["MonsterDrop"][2][1]["RewardData"] = 4
tValentinesDay2018_RandomReward["MonsterDrop"][2][1]["RewardDelay"] = 1
tValentinesDay2018_RandomReward["MonsterDrop"][2][1]["RewardTimeType"] = 4
tValentinesDay2018_RandomReward["MonsterDrop"][2][1]["RewardItem"] = {}
tValentinesDay2018_RandomReward["MonsterDrop"][2][1]["RewardItem"][1] = {}
tValentinesDay2018_RandomReward["MonsterDrop"][2][1]["RewardItem"][1]["Id"] = 3310201
tValentinesDay2018_RandomReward["MonsterDrop"][2][1]["RewardItem"][1]["Attr"] = "0 1"
-- 无
tValentinesDay2018_RandomReward["MonsterDrop"][2][2] = {}
tValentinesDay2018_RandomReward["MonsterDrop"][2][2]["RandomItemChanceType"] = 2
tValentinesDay2018_RandomReward["MonsterDrop"][2][2]["ItemChance"] = 9950

-- 新增奖励
local tValentinesDay2018_New_Reward = {}
	-- ===区域人气女神榜首礼盒
	-- ===索引: tValentinesDay2018_New_Reward[3322466]
	-- ===删除: 3322466,1
	tValentinesDay2018_New_Reward[3322466] = {}
	tValentinesDay2018_New_Reward[3322466]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322466]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322466]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322466]["DeleteItem"][1]["Id"] = 3322466 -- 【库】区域人气女神榜首礼盒[属性:11]
	tValentinesDay2018_New_Reward[3322466]["RewardTitle"] = {}
	tValentinesDay2018_New_Reward[3322466]["RewardTitle"]["TitleType"] = 2142 -- 【库】我怎么这么好看, 【表格】我怎么这么好看
	tValentinesDay2018_New_Reward[3322466]["RewardTitle"]["TitleId"] = 2142
	tValentinesDay2018_New_Reward[3322466]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:我怎么这么好看, 【需求】我怎么这么好看
	tValentinesDay2018_New_Reward[3322466]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322466]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322466]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】1000万能神纹精粹
	tValentinesDay2018_New_Reward[3322466]["RewardItem"][1]["Attr"] = "0 1000" -- 万能神纹精粹*1000
	tValentinesDay2018_New_Reward[3322466]["RewardItem"][2] = {}
	tValentinesDay2018_New_Reward[3322466]["RewardItem"][2]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】1000人参果
	tValentinesDay2018_New_Reward[3322466]["RewardItem"][2]["Attr"] = "0 1000" -- 人参果*1000
	tValentinesDay2018_New_Reward[3322466]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322466]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322466]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322467] = {}
	-- ===区域人气女神第2名礼盒
	-- ===索引: tValentinesDay2018_New_Reward[3322467]
	-- ===删除: 3322467,1
	tValentinesDay2018_New_Reward[3322467]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322467]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322467]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322467]["DeleteItem"][1]["Id"] = 3322467 -- 【库】区域人气女神第2名礼盒[属性:11]
	tValentinesDay2018_New_Reward[3322467]["RewardTitle"] = {}
	tValentinesDay2018_New_Reward[3322467]["RewardTitle"]["TitleType"] = 2140 -- 【库】绝美小姐姐, 【表格】绝美小姐姐
	tValentinesDay2018_New_Reward[3322467]["RewardTitle"]["TitleId"] = 2140
	tValentinesDay2018_New_Reward[3322467]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:绝美小姐姐, 【需求】绝美小姐姐
	tValentinesDay2018_New_Reward[3322467]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322467]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322467]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】800万能神纹精粹
	tValentinesDay2018_New_Reward[3322467]["RewardItem"][1]["Attr"] = "0 800" -- 万能神纹精粹*800
	tValentinesDay2018_New_Reward[3322467]["RewardItem"][2] = {}
	tValentinesDay2018_New_Reward[3322467]["RewardItem"][2]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】800人参果
	tValentinesDay2018_New_Reward[3322467]["RewardItem"][2]["Attr"] = "0 800" -- 人参果*800
	tValentinesDay2018_New_Reward[3322467]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322467]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322467]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322468] = {}
	-- ===区域人气女神第3名礼盒
	-- ===索引: tValentinesDay2018_New_Reward[3322468]
	-- ===删除: 3322468,1
	tValentinesDay2018_New_Reward[3322468]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322468]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322468]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322468]["DeleteItem"][1]["Id"] = 3322468 -- 【库】区域人气女神第3名礼盒[属性:11]
	tValentinesDay2018_New_Reward[3322468]["RewardTitle"] = {}
	tValentinesDay2018_New_Reward[3322468]["RewardTitle"]["TitleType"] = 2140 -- 【库】绝美小姐姐, 【表格】绝美小姐姐
	tValentinesDay2018_New_Reward[3322468]["RewardTitle"]["TitleId"] = 2140
	tValentinesDay2018_New_Reward[3322468]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:绝美小姐姐, 【需求】绝美小姐姐
	tValentinesDay2018_New_Reward[3322468]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322468]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322468]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】600万能神纹精粹
	tValentinesDay2018_New_Reward[3322468]["RewardItem"][1]["Attr"] = "0 600" -- 万能神纹精粹*600
	tValentinesDay2018_New_Reward[3322468]["RewardItem"][2] = {}
	tValentinesDay2018_New_Reward[3322468]["RewardItem"][2]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】600人参果
	tValentinesDay2018_New_Reward[3322468]["RewardItem"][2]["Attr"] = "0 600" -- 人参果*600
	tValentinesDay2018_New_Reward[3322468]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322468]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322468]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322469] = {}
	-- ===区域人气女神第4名礼盒
	-- ===索引: tValentinesDay2018_New_Reward[3322469]
	-- ===删除: 3322469,1
	tValentinesDay2018_New_Reward[3322469]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322469]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322469]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322469]["DeleteItem"][1]["Id"] = 3322469 -- 【库】区域人气女神第4名礼盒[属性:11]
	tValentinesDay2018_New_Reward[3322469]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322469]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322469]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】600万能神纹精粹
	tValentinesDay2018_New_Reward[3322469]["RewardItem"][1]["Attr"] = "0 600" -- 万能神纹精粹*600
	tValentinesDay2018_New_Reward[3322469]["RewardItem"][2] = {}
	tValentinesDay2018_New_Reward[3322469]["RewardItem"][2]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】600人参果
	tValentinesDay2018_New_Reward[3322469]["RewardItem"][2]["Attr"] = "0 600" -- 人参果*600
	tValentinesDay2018_New_Reward[3322469]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322469]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322469]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322470] = {}
	-- ===区域人气女神第5名礼盒
	-- ===索引: tValentinesDay2018_New_Reward[3322470]
	-- ===删除: 3322470,1
	tValentinesDay2018_New_Reward[3322470]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322470]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322470]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322470]["DeleteItem"][1]["Id"] = 3322470 -- 【库】区域人气女神第5名礼盒[属性:11]
	tValentinesDay2018_New_Reward[3322470]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322470]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322470]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】500万能神纹精粹
	tValentinesDay2018_New_Reward[3322470]["RewardItem"][1]["Attr"] = "0 500" -- 万能神纹精粹*500
	tValentinesDay2018_New_Reward[3322470]["RewardItem"][2] = {}
	tValentinesDay2018_New_Reward[3322470]["RewardItem"][2]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】500人参果
	tValentinesDay2018_New_Reward[3322470]["RewardItem"][2]["Attr"] = "0 500" -- 人参果*500
	tValentinesDay2018_New_Reward[3322470]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322470]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322470]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322503] = {}
	-- ===区域人气男神榜首礼盒
	-- ===索引: tValentinesDay2018_New_Reward[3322503]
	-- ===删除: 3322503,1
	tValentinesDay2018_New_Reward[3322503]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322503]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322503]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322503]["DeleteItem"][1]["Id"] = 3322503 -- 【库】区域人气男神榜首礼盒[属性:11]
	tValentinesDay2018_New_Reward[3322503]["RewardTitle"] = {}
	tValentinesDay2018_New_Reward[3322503]["RewardTitle"]["TitleType"] = 2143 -- 【库】我怎么这么帅气, 【表格】我怎么这么帅气
	tValentinesDay2018_New_Reward[3322503]["RewardTitle"]["TitleId"] = 2143
	tValentinesDay2018_New_Reward[3322503]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:我怎么这么帅气, 【需求】我怎么这么帅气
	tValentinesDay2018_New_Reward[3322503]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322503]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322503]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】1000万能神纹精粹
	tValentinesDay2018_New_Reward[3322503]["RewardItem"][1]["Attr"] = "0 1000" -- 万能神纹精粹*1000
	tValentinesDay2018_New_Reward[3322503]["RewardItem"][2] = {}
	tValentinesDay2018_New_Reward[3322503]["RewardItem"][2]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】1000人参果
	tValentinesDay2018_New_Reward[3322503]["RewardItem"][2]["Attr"] = "0 1000" -- 人参果*1000
	tValentinesDay2018_New_Reward[3322503]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322503]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322503]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322504] = {}
	-- ===区域人气男神第2名礼盒
	-- ===索引: tValentinesDay2018_New_Reward[3322504]
	-- ===删除: 3322504,1
	tValentinesDay2018_New_Reward[3322504]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322504]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322504]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322504]["DeleteItem"][1]["Id"] = 3322504 -- 【库】区域人气男神第2名礼盒[属性:11]
	tValentinesDay2018_New_Reward[3322504]["RewardTitle"] = {}
	tValentinesDay2018_New_Reward[3322504]["RewardTitle"]["TitleType"] = 2141 -- 【库】超帅小哥哥, 【表格】超帅小哥哥
	tValentinesDay2018_New_Reward[3322504]["RewardTitle"]["TitleId"] = 2141
	tValentinesDay2018_New_Reward[3322504]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:超帅小哥哥, 【需求】超帅小哥哥
	tValentinesDay2018_New_Reward[3322504]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322504]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322504]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】800万能神纹精粹
	tValentinesDay2018_New_Reward[3322504]["RewardItem"][1]["Attr"] = "0 800" -- 万能神纹精粹*800
	tValentinesDay2018_New_Reward[3322504]["RewardItem"][2] = {}
	tValentinesDay2018_New_Reward[3322504]["RewardItem"][2]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】800人参果
	tValentinesDay2018_New_Reward[3322504]["RewardItem"][2]["Attr"] = "0 800" -- 人参果*800
	tValentinesDay2018_New_Reward[3322504]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322504]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322504]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322505] = {}
	-- ===区域人气男神第3名礼盒
	-- ===索引: tValentinesDay2018_New_Reward[3322505]
	-- ===删除: 3322505,1
	tValentinesDay2018_New_Reward[3322505]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322505]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322505]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322505]["DeleteItem"][1]["Id"] = 3322505 -- 【库】区域人气男神第3名礼盒[属性:11]
	tValentinesDay2018_New_Reward[3322505]["RewardTitle"] = {}
	tValentinesDay2018_New_Reward[3322505]["RewardTitle"]["TitleType"] = 2141 -- 【库】超帅小哥哥, 【表格】超帅小哥哥
	tValentinesDay2018_New_Reward[3322505]["RewardTitle"]["TitleId"] = 2141
	tValentinesDay2018_New_Reward[3322505]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:超帅小哥哥, 【需求】超帅小哥哥
	tValentinesDay2018_New_Reward[3322505]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322505]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322505]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】600万能神纹精粹
	tValentinesDay2018_New_Reward[3322505]["RewardItem"][1]["Attr"] = "0 600" -- 万能神纹精粹*600
	tValentinesDay2018_New_Reward[3322505]["RewardItem"][2] = {}
	tValentinesDay2018_New_Reward[3322505]["RewardItem"][2]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】600人参果
	tValentinesDay2018_New_Reward[3322505]["RewardItem"][2]["Attr"] = "0 600" -- 人参果*600
	tValentinesDay2018_New_Reward[3322505]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322505]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322505]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322506] = {}
	-- ===区域人气男神第4名礼盒
	-- ===索引: tValentinesDay2018_New_Reward[3322506]
	-- ===删除: 3322506,1
	tValentinesDay2018_New_Reward[3322506]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322506]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322506]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322506]["DeleteItem"][1]["Id"] = 3322506 -- 【库】区域人气男神第4名礼盒[属性:11]
	tValentinesDay2018_New_Reward[3322506]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322506]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322506]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】600万能神纹精粹
	tValentinesDay2018_New_Reward[3322506]["RewardItem"][1]["Attr"] = "0 600" -- 万能神纹精粹*600
	tValentinesDay2018_New_Reward[3322506]["RewardItem"][2] = {}
	tValentinesDay2018_New_Reward[3322506]["RewardItem"][2]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】600人参果
	tValentinesDay2018_New_Reward[3322506]["RewardItem"][2]["Attr"] = "0 600" -- 人参果*600
	tValentinesDay2018_New_Reward[3322506]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322506]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322506]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322507] = {}
	-- ===区域人气男神第5名礼盒
	-- ===索引: tValentinesDay2018_New_Reward[3322507]
	-- ===删除: 3322507,1
	tValentinesDay2018_New_Reward[3322507]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322507]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322507]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322507]["DeleteItem"][1]["Id"] = 3322507 -- 【库】区域人气男神第5名礼盒[属性:11]
	tValentinesDay2018_New_Reward[3322507]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322507]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322507]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】500万能神纹精粹
	tValentinesDay2018_New_Reward[3322507]["RewardItem"][1]["Attr"] = "0 500" -- 万能神纹精粹*500
	tValentinesDay2018_New_Reward[3322507]["RewardItem"][2] = {}
	tValentinesDay2018_New_Reward[3322507]["RewardItem"][2]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】500人参果
	tValentinesDay2018_New_Reward[3322507]["RewardItem"][2]["Attr"] = "0 500" -- 人参果*500
	tValentinesDay2018_New_Reward[3322507]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322507]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322507]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322471] = {}
	-- ===全球守护天使冠军礼盒
	-- ===索引: tValentinesDay2018_New_Reward[3322471]
	-- ===删除: 3322471,1
	tValentinesDay2018_New_Reward[3322471]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322471]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322471]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322471]["DeleteItem"][1]["Id"] = 3322471 -- 【库】全球守护天使冠军礼盒[属性:11]
	tValentinesDay2018_New_Reward[3322471]["RewardWing"] = {}
	tValentinesDay2018_New_Reward[3322471]["RewardWing"]["TitleType"] = 6025 -- 【库】究极光效翅膀, 【表格】究极光效翅膀
	tValentinesDay2018_New_Reward[3322471]["RewardWing"]["TitleId"] = 6025
	tValentinesDay2018_New_Reward[3322471]["RewardWing"]["SaveTime"] = 0 -- 永久时效的[翅膀]:究极光效翅膀, 【需求】究极光效翅膀
	tValentinesDay2018_New_Reward[3322471]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322471]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322471]["RewardItem"][1]["Id"] = 3311746 -- 稀有黄色神纹可选包[3311746][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹可选包
	tValentinesDay2018_New_Reward[3322471]["RewardItem"][1]["Attr"] = "0 1" -- 稀有黄色神纹可选包*1
	tValentinesDay2018_New_Reward[3322471]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322471]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322471]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322472] = {}
	-- ===全球守护天使尊享礼盒
	-- ===索引: tValentinesDay2018_New_Reward[3322472]
	-- ===删除: 3322472,1
	tValentinesDay2018_New_Reward[3322472]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322472]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322472]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322472]["DeleteItem"][1]["Id"] = 3322472 -- 【库】全球守护天使尊享礼盒[属性:11]
	tValentinesDay2018_New_Reward[3322472]["RewardWing"] = {}
	tValentinesDay2018_New_Reward[3322472]["RewardWing"]["TitleType"] = 6025 -- 【库】究极光效翅膀, 【表格】究极光效翅膀
	tValentinesDay2018_New_Reward[3322472]["RewardWing"]["TitleId"] = 6025
	tValentinesDay2018_New_Reward[3322472]["RewardWing"]["SaveTime"] = 0 -- 永久时效的[翅膀]:究极光效翅膀, 【需求】究极光效翅膀
	tValentinesDay2018_New_Reward[3322472]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322472]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322472]["RewardItem"][1]["Id"] = 3311744 -- 稀有黄色神纹碎片[3311744][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片
	tValentinesDay2018_New_Reward[3322472]["RewardItem"][1]["Attr"] = "0 20" -- 稀有黄色神纹碎片
	tValentinesDay2018_New_Reward[3322472]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322472]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322472]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322473] = {}
	-- ===区域守护天使冠军礼盒男
	-- ===索引: tValentinesDay2018_New_Reward[3322473][1]
	-- ===删除: 3322473,1
	tValentinesDay2018_New_Reward[3322473][1] = {}
	tValentinesDay2018_New_Reward[3322473][1]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322473][1]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322473][1]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322473][1]["DeleteItem"][1]["Id"] = 3322473 -- 【库】区域守护天使冠军礼盒[属性:11]
	tValentinesDay2018_New_Reward[3322473][1]["RewardWing"] = {}
	tValentinesDay2018_New_Reward[3322473][1]["RewardWing"]["TitleType"] = 6031 -- 【库】飞仙翼, 【表格】飞仙翼
	tValentinesDay2018_New_Reward[3322473][1]["RewardWing"]["TitleId"] = 6031
	tValentinesDay2018_New_Reward[3322473][1]["RewardWing"]["SaveTime"] = 0 -- 永久时效的[翅膀]:飞仙翼, 【需求】飞仙翼
	tValentinesDay2018_New_Reward[3322473][1]["RewardTitle"] = {}
	tValentinesDay2018_New_Reward[3322473][1]["RewardTitle"]["TitleType"] = 2143 -- 【库】我怎么这么帅气, 【表格】我怎么那么帅气
	tValentinesDay2018_New_Reward[3322473][1]["RewardTitle"]["TitleId"] = 2143
	tValentinesDay2018_New_Reward[3322473][1]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:我怎么这么帅气, 【需求】我怎么那么帅气
	tValentinesDay2018_New_Reward[3322473][1]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322473][1]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322473][1]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】1000万能神纹精粹
	tValentinesDay2018_New_Reward[3322473][1]["RewardItem"][1]["Attr"] = "0 1000" -- 万能神纹精粹*1000
	tValentinesDay2018_New_Reward[3322473][1]["RewardItem"][2] = {}
	tValentinesDay2018_New_Reward[3322473][1]["RewardItem"][2]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】1000人参果
	tValentinesDay2018_New_Reward[3322473][1]["RewardItem"][2]["Attr"] = "0 1000" -- 人参果*1000
	tValentinesDay2018_New_Reward[3322473][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322473][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322473][1]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322473][2] = {}
	-- ===区域守护天使冠军礼盒女
	-- ===索引: tValentinesDay2018_New_Reward[3322473][2]
	-- ===删除: 3322473,1
	tValentinesDay2018_New_Reward[3322473][2]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322473][2]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322473][2]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322473][2]["DeleteItem"][1]["Id"] = 3322473 -- 【库】区域守护天使冠军礼盒[属性:11]
	tValentinesDay2018_New_Reward[3322473][2]["RewardWing"] = {}
	tValentinesDay2018_New_Reward[3322473][2]["RewardWing"]["TitleType"] = 6031 -- 【库】飞仙翼, 【表格】飞仙翼
	tValentinesDay2018_New_Reward[3322473][2]["RewardWing"]["TitleId"] = 6031
	tValentinesDay2018_New_Reward[3322473][2]["RewardWing"]["SaveTime"] = 0 -- 永久时效的[翅膀]:飞仙翼, 【需求】飞仙翼
	tValentinesDay2018_New_Reward[3322473][2]["RewardTitle"] = {}
	tValentinesDay2018_New_Reward[3322473][2]["RewardTitle"]["TitleType"] = 2142 -- 【库】我怎么这么好看, 【表格】我怎么这么好看
	tValentinesDay2018_New_Reward[3322473][2]["RewardTitle"]["TitleId"] = 2142
	tValentinesDay2018_New_Reward[3322473][2]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:我怎么这么好看, 【需求】我怎么这么好看
	tValentinesDay2018_New_Reward[3322473][2]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322473][2]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322473][2]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】1000万能神纹精粹
	tValentinesDay2018_New_Reward[3322473][2]["RewardItem"][1]["Attr"] = "0 1000" -- 万能神纹精粹*1000
	tValentinesDay2018_New_Reward[3322473][2]["RewardItem"][2] = {}
	tValentinesDay2018_New_Reward[3322473][2]["RewardItem"][2]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】1000人参果
	tValentinesDay2018_New_Reward[3322473][2]["RewardItem"][2]["Attr"] = "0 1000" -- 人参果*1000
	tValentinesDay2018_New_Reward[3322473][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322473][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322473][2]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322474] = {}
	-- ===区域守护天使尊享礼盒男
	-- ===索引: tValentinesDay2018_New_Reward[3322474][1]
	-- ===删除: 3322474,1
	tValentinesDay2018_New_Reward[3322474][1] = {}
	tValentinesDay2018_New_Reward[3322474][1]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322474][1]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322474][1]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322474][1]["DeleteItem"][1]["Id"] = 3322474 -- 【库】区域守护天使尊享礼盒[属性:11]
	tValentinesDay2018_New_Reward[3322474][1]["RewardWing"] = {}
	tValentinesDay2018_New_Reward[3322474][1]["RewardWing"]["TitleType"] = 6031 -- 【库】飞仙翼, 【表格】飞仙翼
	tValentinesDay2018_New_Reward[3322474][1]["RewardWing"]["TitleId"] = 6031
	tValentinesDay2018_New_Reward[3322474][1]["RewardWing"]["SaveTime"] = 0 -- 永久时效的[翅膀]:飞仙翼, 【需求】飞仙翼
	tValentinesDay2018_New_Reward[3322474][1]["RewardTitle"] = {}
	tValentinesDay2018_New_Reward[3322474][1]["RewardTitle"]["TitleType"] = 2143 -- 【库】我怎么这么帅气, 【表格】我怎么那么帅气
	tValentinesDay2018_New_Reward[3322474][1]["RewardTitle"]["TitleId"] = 2143
	tValentinesDay2018_New_Reward[3322474][1]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:我怎么这么帅气, 【需求】我怎么那么帅气
	tValentinesDay2018_New_Reward[3322474][1]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322474][1]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322474][1]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】800万能神纹精粹
	tValentinesDay2018_New_Reward[3322474][1]["RewardItem"][1]["Attr"] = "0 800" -- 万能神纹精粹*800
	tValentinesDay2018_New_Reward[3322474][1]["RewardItem"][2] = {}
	tValentinesDay2018_New_Reward[3322474][1]["RewardItem"][2]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】800人参果
	tValentinesDay2018_New_Reward[3322474][1]["RewardItem"][2]["Attr"] = "0 800" -- 人参果*800
	tValentinesDay2018_New_Reward[3322474][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322474][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322474][1]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322474][2] = {}
	-- ===区域守护天使尊享礼盒女
	-- ===索引: tValentinesDay2018_New_Reward[3322474][2]
	-- ===删除: 3322474,1
	tValentinesDay2018_New_Reward[3322474][2]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322474][2]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322474][2]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322474][2]["DeleteItem"][1]["Id"] = 3322474 -- 【库】区域守护天使尊享礼盒[属性:11]
	tValentinesDay2018_New_Reward[3322474][2]["RewardWing"] = {}
	tValentinesDay2018_New_Reward[3322474][2]["RewardWing"]["TitleType"] = 6031 -- 【库】飞仙翼, 【表格】飞仙翼
	tValentinesDay2018_New_Reward[3322474][2]["RewardWing"]["TitleId"] = 6031
	tValentinesDay2018_New_Reward[3322474][2]["RewardWing"]["SaveTime"] = 0 -- 永久时效的[翅膀]:飞仙翼, 【需求】飞仙翼
	tValentinesDay2018_New_Reward[3322474][2]["RewardTitle"] = {}
	tValentinesDay2018_New_Reward[3322474][2]["RewardTitle"]["TitleType"] = 2142 -- 【库】我怎么这么好看, 【表格】我怎么这么好看
	tValentinesDay2018_New_Reward[3322474][2]["RewardTitle"]["TitleId"] = 2142
	tValentinesDay2018_New_Reward[3322474][2]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:我怎么这么好看, 【需求】我怎么这么好看
	tValentinesDay2018_New_Reward[3322474][2]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322474][2]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322474][2]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】800万能神纹精粹
	tValentinesDay2018_New_Reward[3322474][2]["RewardItem"][1]["Attr"] = "0 800" -- 万能神纹精粹*800
	tValentinesDay2018_New_Reward[3322474][2]["RewardItem"][2] = {}
	tValentinesDay2018_New_Reward[3322474][2]["RewardItem"][2]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】800人参果
	tValentinesDay2018_New_Reward[3322474][2]["RewardItem"][2]["Attr"] = "0 800" -- 人参果*800
	tValentinesDay2018_New_Reward[3322474][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322474][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322474][2]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322475] = {}
	-- ===区域守护天使豪华礼盒男
	-- ===索引: tValentinesDay2018_New_Reward[3322475][1]
	-- ===删除: 3322475,1
	tValentinesDay2018_New_Reward[3322475][1] = {}
	tValentinesDay2018_New_Reward[3322475][1]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322475][1]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322475][1]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322475][1]["DeleteItem"][1]["Id"] = 3322475 -- 【库】区域守护天使豪华礼盒[属性:11]
	tValentinesDay2018_New_Reward[3322475][1]["RewardWing"] = {}
	tValentinesDay2018_New_Reward[3322475][1]["RewardWing"]["TitleType"] = 6031 -- 【库】飞仙翼, 【表格】飞仙翼
	tValentinesDay2018_New_Reward[3322475][1]["RewardWing"]["TitleId"] = 6031
	tValentinesDay2018_New_Reward[3322475][1]["RewardWing"]["SaveTime"] = 0 -- 永久时效的[翅膀]:飞仙翼, 【需求】飞仙翼
	tValentinesDay2018_New_Reward[3322475][1]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322475][1]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322475][1]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】800万能神纹精粹
	tValentinesDay2018_New_Reward[3322475][1]["RewardItem"][1]["Attr"] = "0 800" -- 万能神纹精粹*800
	tValentinesDay2018_New_Reward[3322475][1]["RewardItem"][2] = {}
	tValentinesDay2018_New_Reward[3322475][1]["RewardItem"][2]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】800人参果
	tValentinesDay2018_New_Reward[3322475][1]["RewardItem"][2]["Attr"] = "0 800" -- 人参果*800
	tValentinesDay2018_New_Reward[3322475][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322475][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322475][1]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322475][2] = {}
	-- ===区域守护天使豪华礼盒女
	-- ===索引: tValentinesDay2018_New_Reward[3322475][2]
	-- ===删除: 3322475,1
	tValentinesDay2018_New_Reward[3322475][2]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322475][2]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322475][2]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322475][2]["DeleteItem"][1]["Id"] = 3322475 -- 【库】区域守护天使豪华礼盒[属性:11]
	tValentinesDay2018_New_Reward[3322475][2]["RewardWing"] = {}
	tValentinesDay2018_New_Reward[3322475][2]["RewardWing"]["TitleType"] = 6031 -- 【库】飞仙翼, 【表格】飞仙翼
	tValentinesDay2018_New_Reward[3322475][2]["RewardWing"]["TitleId"] = 6031
	tValentinesDay2018_New_Reward[3322475][2]["RewardWing"]["SaveTime"] = 0 -- 永久时效的[翅膀]:飞仙翼, 【需求】飞仙翼
	tValentinesDay2018_New_Reward[3322475][2]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322475][2]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322475][2]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】800万能神纹精粹
	tValentinesDay2018_New_Reward[3322475][2]["RewardItem"][1]["Attr"] = "0 800" -- 万能神纹精粹*800
	tValentinesDay2018_New_Reward[3322475][2]["RewardItem"][2] = {}
	tValentinesDay2018_New_Reward[3322475][2]["RewardItem"][2]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】800人参果
	tValentinesDay2018_New_Reward[3322475][2]["RewardItem"][2]["Attr"] = "0 800" -- 人参果*800
	tValentinesDay2018_New_Reward[3322475][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322475][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322475][2]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322476] = {}
	-- ===区域守护天使精致礼盒男
	-- ===索引: tValentinesDay2018_New_Reward[3322476][1]
	-- ===删除: 3322476,1
	tValentinesDay2018_New_Reward[3322476][1] = {}
	tValentinesDay2018_New_Reward[3322476][1]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322476][1]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322476][1]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322476][1]["DeleteItem"][1]["Id"] = 3322476 -- 【库】区域守护天使精致礼盒[属性:11]
	tValentinesDay2018_New_Reward[3322476][1]["RewardWing"] = {}
	tValentinesDay2018_New_Reward[3322476][1]["RewardWing"]["TitleType"] = 6031 -- 【库】飞仙翼, 【表格】飞仙翼
	tValentinesDay2018_New_Reward[3322476][1]["RewardWing"]["TitleId"] = 6031
	tValentinesDay2018_New_Reward[3322476][1]["RewardWing"]["SaveTime"] = 0 -- 永久时效的[翅膀]:飞仙翼, 【需求】飞仙翼
	tValentinesDay2018_New_Reward[3322476][1]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322476][1]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322476][1]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】600万能神纹精粹
	tValentinesDay2018_New_Reward[3322476][1]["RewardItem"][1]["Attr"] = "0 600" -- 万能神纹精粹*600
	tValentinesDay2018_New_Reward[3322476][1]["RewardItem"][2] = {}
	tValentinesDay2018_New_Reward[3322476][1]["RewardItem"][2]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】800人参果
	tValentinesDay2018_New_Reward[3322476][1]["RewardItem"][2]["Attr"] = "0 800" -- 人参果*800
	tValentinesDay2018_New_Reward[3322476][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322476][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322476][1]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322476][2] = {}
	-- ===区域守护天使精致礼盒女
	-- ===索引: tValentinesDay2018_New_Reward[3322476][2]
	-- ===删除: 3322476,1
	tValentinesDay2018_New_Reward[3322476][2]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322476][2]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322476][2]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322476][2]["DeleteItem"][1]["Id"] = 3322476 -- 【库】区域守护天使精致礼盒[属性:11]
	tValentinesDay2018_New_Reward[3322476][2]["RewardWing"] = {}
	tValentinesDay2018_New_Reward[3322476][2]["RewardWing"]["TitleType"] = 6031 -- 【库】飞仙翼, 【表格】飞仙翼
	tValentinesDay2018_New_Reward[3322476][2]["RewardWing"]["TitleId"] = 6031
	tValentinesDay2018_New_Reward[3322476][2]["RewardWing"]["SaveTime"] = 0 -- 永久时效的[翅膀]:飞仙翼, 【需求】飞仙翼
	tValentinesDay2018_New_Reward[3322476][2]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322476][2]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322476][2]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】600万能神纹精粹
	tValentinesDay2018_New_Reward[3322476][2]["RewardItem"][1]["Attr"] = "0 600" -- 万能神纹精粹*600
	tValentinesDay2018_New_Reward[3322476][2]["RewardItem"][2] = {}
	tValentinesDay2018_New_Reward[3322476][2]["RewardItem"][2]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】800人参果
	tValentinesDay2018_New_Reward[3322476][2]["RewardItem"][2]["Attr"] = "0 800" -- 人参果*800
	tValentinesDay2018_New_Reward[3322476][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322476][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322476][2]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322463] = {}
	-- ===征服环球小姐冠军礼盒
	-- ===索引: tValentinesDay2018_New_Reward[3322463]
	-- ===删除: 3322463,1
	tValentinesDay2018_New_Reward[3322463]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322463]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322463]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322463]["DeleteItem"][1]["Id"] = 3322463 -- 【库】征服环球小姐冠军礼盒[属性:11]
	tValentinesDay2018_New_Reward[3322463]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322463]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322463]["RewardItem"][1]["Id"] = 3311746 -- 稀有黄色神纹可选包[3311746][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹可选包
	tValentinesDay2018_New_Reward[3322463]["RewardItem"][1]["Attr"] = "0 1" -- 稀有黄色神纹可选包*1
	tValentinesDay2018_New_Reward[3322463]["RewardItem"][2] = {}
	tValentinesDay2018_New_Reward[3322463]["RewardItem"][2]["Id"] = 3322668 -- 女神冠军光环道具[3322668][属性:9][叠加:0][金币:0], 【表格】女神冠军光环道具
	tValentinesDay2018_New_Reward[3322463]["RewardItem"][2]["Attr"] = "0 1" -- 女神冠军光环道具*1
	tValentinesDay2018_New_Reward[3322463]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322463]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322463]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322464] = {}
	-- ===征服环球小姐亚军礼盒
	-- ===索引: tValentinesDay2018_New_Reward[3322464]
	-- ===删除: 3322464,1
	tValentinesDay2018_New_Reward[3322464]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322464]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322464]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322464]["DeleteItem"][1]["Id"] = 3322464 -- 【库】征服环球小姐亚军礼盒[属性:11]
	tValentinesDay2018_New_Reward[3322464]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322464]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322464]["RewardItem"][1]["Id"] = 3311746 -- 稀有黄色神纹可选包[3311746][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹可选包
	tValentinesDay2018_New_Reward[3322464]["RewardItem"][1]["Attr"] = "0 1" -- 稀有黄色神纹可选包*1
	tValentinesDay2018_New_Reward[3322464]["RewardItem"][2] = {}
	tValentinesDay2018_New_Reward[3322464]["RewardItem"][2]["Id"] = 3322669 -- 女神亚军光环道具[3322669][属性:9][叠加:0][金币:0], 【表格】女神亚军光环道具
	tValentinesDay2018_New_Reward[3322464]["RewardItem"][2]["Attr"] = "0 1" -- 女神亚军光环道具*1
	tValentinesDay2018_New_Reward[3322464]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322464]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322464]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322465] = {}
	-- ===征服环球小姐季军礼盒
	-- ===索引: tValentinesDay2018_New_Reward[3322465]
	-- ===删除: 3322465,1
	tValentinesDay2018_New_Reward[3322465]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322465]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322465]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322465]["DeleteItem"][1]["Id"] = 3322465 -- 【库】征服环球小姐季军礼盒[属性:11]
	tValentinesDay2018_New_Reward[3322465]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322465]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322465]["RewardItem"][1]["Id"] = 3311746 -- 稀有黄色神纹可选包[3311746][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹可选包
	tValentinesDay2018_New_Reward[3322465]["RewardItem"][1]["Attr"] = "0 1" -- 稀有黄色神纹可选包*1
	tValentinesDay2018_New_Reward[3322465]["RewardItem"][2] = {}
	tValentinesDay2018_New_Reward[3322465]["RewardItem"][2]["Id"] = 3322670 -- 女神季军光环道具[3322670][属性:9][叠加:0][金币:0], 【表格】女神季军光环道具
	tValentinesDay2018_New_Reward[3322465]["RewardItem"][2]["Attr"] = "0 1" -- 女神季军光环道具*1
	tValentinesDay2018_New_Reward[3322465]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322465]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322465]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322500] = {}
	-- ===征服环球先生冠军礼盒
	-- ===索引: tValentinesDay2018_New_Reward[3322500]
	-- ===删除: 3322500,1
	tValentinesDay2018_New_Reward[3322500]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322500]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322500]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322500]["DeleteItem"][1]["Id"] = 3322500 -- 【库】征服环球先生冠军礼盒[属性:11]
	tValentinesDay2018_New_Reward[3322500]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322500]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322500]["RewardItem"][1]["Id"] = 3311746 -- 稀有黄色神纹可选包[3311746][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹可选包
	tValentinesDay2018_New_Reward[3322500]["RewardItem"][1]["Attr"] = "0 1" -- 稀有黄色神纹可选包*1
	tValentinesDay2018_New_Reward[3322500]["RewardItem"][2] = {}
	tValentinesDay2018_New_Reward[3322500]["RewardItem"][2]["Id"] = 3322671 -- 男神冠军光环道具[3322671][属性:9][叠加:0][金币:0], 【表格】男神冠军光环道具
	tValentinesDay2018_New_Reward[3322500]["RewardItem"][2]["Attr"] = "0 1" -- 男神冠军光环道具*1
	tValentinesDay2018_New_Reward[3322500]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322500]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322500]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322501] = {}
	-- ===征服环球先生亚军礼盒
	-- ===索引: tValentinesDay2018_New_Reward[3322501]
	-- ===删除: 3322501,1
	tValentinesDay2018_New_Reward[3322501]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322501]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322501]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322501]["DeleteItem"][1]["Id"] = 3322501 -- 【库】征服环球先生亚军礼盒[属性:11]
	tValentinesDay2018_New_Reward[3322501]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322501]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322501]["RewardItem"][1]["Id"] = 3311746 -- 稀有黄色神纹可选包[3311746][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹可选包
	tValentinesDay2018_New_Reward[3322501]["RewardItem"][1]["Attr"] = "0 1" -- 稀有黄色神纹可选包*1
	tValentinesDay2018_New_Reward[3322501]["RewardItem"][2] = {}
	tValentinesDay2018_New_Reward[3322501]["RewardItem"][2]["Id"] = 3322672 -- 男神亚军光环道具[3322672][属性:9][叠加:0][金币:0], 【表格】男神亚军光环道具
	tValentinesDay2018_New_Reward[3322501]["RewardItem"][2]["Attr"] = "0 1" -- 男神亚军光环道具*1
	tValentinesDay2018_New_Reward[3322501]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322501]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322501]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322502] = {}
	-- ===征服环球先生季军礼盒
	-- ===索引: tValentinesDay2018_New_Reward[3322502]
	-- ===删除: 3322502,1
	tValentinesDay2018_New_Reward[3322502]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322502]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322502]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322502]["DeleteItem"][1]["Id"] = 3322502 -- 【库】征服环球先生季军礼盒[属性:11]
	tValentinesDay2018_New_Reward[3322502]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322502]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322502]["RewardItem"][1]["Id"] = 3311746 -- 稀有黄色神纹可选包[3311746][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹可选包
	tValentinesDay2018_New_Reward[3322502]["RewardItem"][1]["Attr"] = "0 1" -- 稀有黄色神纹可选包*1
	tValentinesDay2018_New_Reward[3322502]["RewardItem"][2] = {}
	tValentinesDay2018_New_Reward[3322502]["RewardItem"][2]["Id"] = 3322673 -- 男神季军光环道具[3322673][属性:9][叠加:0][金币:0], 【表格】男神季军光环道具
	tValentinesDay2018_New_Reward[3322502]["RewardItem"][2]["Attr"] = "0 1" -- 男神季军光环道具*1
	tValentinesDay2018_New_Reward[3322502]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322502]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322502]["RewardEffect"]["Effect"] = "angelwing"

	tValentinesDay2018_New_Reward[3313308] = {}
	-- ===1年光效武器可选包-长武外套
	-- ===索引: tValentinesDay2018_New_Reward[3313308][1]
	-- ===删除: 3313308,1
	tValentinesDay2018_New_Reward[3313308][1] = {}
	tValentinesDay2018_New_Reward[3313308][1]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3313308][1]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3313308][1]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3313308][1]["DeleteItem"][1]["Id"] = 3313308 -- 【库】1年光效武器可选包[属性:9]
	tValentinesDay2018_New_Reward[3313308][1]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3313308][1]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3313308][1]["RewardItem"][1]["Id"] = 350164 -- 光效长武外套[350164][属性:0][叠加:0][金币:0], 【表格】长武外套
	tValentinesDay2018_New_Reward[3313308][1]["RewardItem"][1]["Attr"] = "0 1 0 525600 1 0 0 1" -- 365天时效(激活)的1%神佑光效长武外套*1
	tValentinesDay2018_New_Reward[3313308][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3313308][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3313308][1]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3313308][2] = {}
	-- ===1年光效武器可选包-短武外套
	-- ===索引: tValentinesDay2018_New_Reward[3313308][2]
	-- ===删除: 3313308,1
	tValentinesDay2018_New_Reward[3313308][2]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3313308][2]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3313308][2]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3313308][2]["DeleteItem"][1]["Id"] = 3313308 -- 【库】1年光效武器可选包[属性:9]
	tValentinesDay2018_New_Reward[3313308][2]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3313308][2]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3313308][2]["RewardItem"][1]["Id"] = 360297 -- 光效短武外套[360297][属性:0][叠加:0][金币:0], 【表格】短武外套
	tValentinesDay2018_New_Reward[3313308][2]["RewardItem"][1]["Attr"] = "0 2 0 525600 1 0 0 1" -- 365天时效(激活)的1%神佑光效短武外套*2
	tValentinesDay2018_New_Reward[3313308][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3313308][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3313308][2]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3313309] = {}
	-- ===15天光效武器可选包-长武外套
	-- ===索引: tValentinesDay2018_New_Reward[3313309][1]
	-- ===删除: 3313309,1
	tValentinesDay2018_New_Reward[3313309][1] = {}
	tValentinesDay2018_New_Reward[3313309][1]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3313309][1]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3313309][1]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3313309][1]["DeleteItem"][1]["Id"] = 3313309 -- 【库】15天光效武器可选包[属性:9]
	tValentinesDay2018_New_Reward[3313309][1]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3313309][1]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3313309][1]["RewardItem"][1]["Id"] = 350164 -- 光效长武外套[350164][属性:0][叠加:0][金币:0], 【表格】长武外套
	tValentinesDay2018_New_Reward[3313309][1]["RewardItem"][1]["Attr"] = "0 1 0 21600 1 0 0 1" -- 15天时效(激活)的1%神佑光效长武外套*1
	tValentinesDay2018_New_Reward[3313309][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3313309][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3313309][1]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3313309][2] = {}
	-- ===15天光效武器可选包-短武外套
	-- ===索引: tValentinesDay2018_New_Reward[3313309][2]
	-- ===删除: 3313309,1
	tValentinesDay2018_New_Reward[3313309][2]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3313309][2]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3313309][2]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3313309][2]["DeleteItem"][1]["Id"] = 3313309 -- 【库】15天光效武器可选包[属性:9]
	tValentinesDay2018_New_Reward[3313309][2]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3313309][2]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3313309][2]["RewardItem"][1]["Id"] = 360297 -- 光效短武外套[360297][属性:0][叠加:0][金币:0], 【表格】短武外套
	tValentinesDay2018_New_Reward[3313309][2]["RewardItem"][1]["Attr"] = "0 2 0 21600 1 0 0 1" -- 15天时效(激活)的1%神佑光效短武外套*2
	tValentinesDay2018_New_Reward[3313309][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3313309][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3313309][2]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3313310] = {}
	-- ===7天无光效武器可选包-长武外套
	-- ===索引: tValentinesDay2018_New_Reward[3313310][1]
	-- ===删除: 3313310,1
	tValentinesDay2018_New_Reward[3313310][1] = {}
	tValentinesDay2018_New_Reward[3313310][1]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3313310][1]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3313310][1]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3313310][1]["DeleteItem"][1]["Id"] = 3313310 -- 【库】7天无光效武器可选包[属性:9]
	tValentinesDay2018_New_Reward[3313310][1]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3313310][1]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3313310][1]["RewardItem"][1]["Id"] = 350165 -- 无光效长武外套[350165][属性:0][叠加:0][金币:0], 【表格】长武外套
	tValentinesDay2018_New_Reward[3313310][1]["RewardItem"][1]["Attr"] = "0 1 0 10080 1 0 0 1" -- 7天时效(激活)的1%神佑无光效长武外套*1
	tValentinesDay2018_New_Reward[3313310][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3313310][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3313310][1]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3313310][2] = {}
	-- ===7天无光效武器可选包-短武外套
	-- ===索引: tValentinesDay2018_New_Reward[3313310][2]
	-- ===删除: 3313310,1
	tValentinesDay2018_New_Reward[3313310][2]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3313310][2]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3313310][2]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3313310][2]["DeleteItem"][1]["Id"] = 3313310 -- 【库】7天无光效武器可选包[属性:9]
	tValentinesDay2018_New_Reward[3313310][2]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3313310][2]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3313310][2]["RewardItem"][1]["Id"] = 360298 -- 无光效短武外套[360298][属性:0][叠加:0][金币:0], 【表格】短武外套
	tValentinesDay2018_New_Reward[3313310][2]["RewardItem"][1]["Attr"] = "0 2 0 10080 1 0 0 1" -- 7天时效(激活)的1%神佑无光效短武外套*2
	tValentinesDay2018_New_Reward[3313310][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3313310][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3313310][2]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322679] = {}
	-- ===30天光效武器可选包-长武外套
	-- ===索引: tValentinesDay2018_New_Reward[3322679][1]
	-- ===删除: 3322679,1
	tValentinesDay2018_New_Reward[3322679][1] = {}
	tValentinesDay2018_New_Reward[3322679][1]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322679][1]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322679][1]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322679][1]["DeleteItem"][1]["Id"] = 3322679 -- 【库】30天时效光效武器外套可选包[属性:9]
	tValentinesDay2018_New_Reward[3322679][1]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322679][1]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322679][1]["RewardItem"][1]["Id"] = 350164 -- 光效长武外套[350164][属性:0][叠加:0][金币:0], 【表格】长武外套
	tValentinesDay2018_New_Reward[3322679][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑光效长武外套*1
	tValentinesDay2018_New_Reward[3322679][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322679][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322679][1]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322679][2] = {}
	-- ===30天光效武器可选包-短武外套
	-- ===索引: tValentinesDay2018_New_Reward[3322679][2]
	-- ===删除: 3322679,1
	tValentinesDay2018_New_Reward[3322679][2]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322679][2]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322679][2]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322679][2]["DeleteItem"][1]["Id"] = 3322679 -- 【库】30天时效光效武器外套可选包[属性:9]
	tValentinesDay2018_New_Reward[3322679][2]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322679][2]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322679][2]["RewardItem"][1]["Id"] = 360297 -- 光效短武外套[360297][属性:0][叠加:0][金币:0], 【表格】短武外套
	tValentinesDay2018_New_Reward[3322679][2]["RewardItem"][1]["Attr"] = "0 2 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑光效短武外套*2
	tValentinesDay2018_New_Reward[3322679][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322679][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322679][2]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322678] = {}
	-- ===30天无光效武器可选包-长武外套
	-- ===索引: tValentinesDay2018_New_Reward[3322678][1]
	-- ===删除: 3322678,1
	tValentinesDay2018_New_Reward[3322678][1] = {}
	tValentinesDay2018_New_Reward[3322678][1]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322678][1]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322678][1]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322678][1]["DeleteItem"][1]["Id"] = 3322678 -- 【库】30天时效无光效武器外套可选包[属性:9]
	tValentinesDay2018_New_Reward[3322678][1]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322678][1]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322678][1]["RewardItem"][1]["Id"] = 350165 -- 无光效长武外套[350165][属性:0][叠加:0][金币:0], 【表格】长武外套
	tValentinesDay2018_New_Reward[3322678][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑无光效长武外套*1
	tValentinesDay2018_New_Reward[3322678][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322678][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322678][1]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322678][2] = {}
	-- ===30天无光效武器可选包-短武外套
	-- ===索引: tValentinesDay2018_New_Reward[3322678][2]
	-- ===删除: 3322678,1
	tValentinesDay2018_New_Reward[3322678][2]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322678][2]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322678][2]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322678][2]["DeleteItem"][1]["Id"] = 3322678 -- 【库】30天时效无光效武器外套可选包[属性:9]
	tValentinesDay2018_New_Reward[3322678][2]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322678][2]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322678][2]["RewardItem"][1]["Id"] = 360298 -- 无光效短武外套[360298][属性:0][叠加:0][金币:0], 【表格】短武外套
	tValentinesDay2018_New_Reward[3322678][2]["RewardItem"][1]["Attr"] = "0 2 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑无光效短武外套*2
	tValentinesDay2018_New_Reward[3322678][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322678][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322678][2]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322674] = {}
	-- ===光效坐骑外套包
	-- ===索引: tValentinesDay2018_New_Reward[3322674]
	-- ===删除: 3322674,1
	tValentinesDay2018_New_Reward[3322674]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322674]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322674]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322674]["DeleteItem"][1]["Id"] = 3322674 -- 【库】光效坐骑外套[属性:9]
	tValentinesDay2018_New_Reward[3322674]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322674]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322674]["RewardItem"][1]["Id"] = 200652 -- 光效坐骑[200652][属性:0][叠加:0][金币:0], 【表格】光效坐骑外套
	tValentinesDay2018_New_Reward[3322674]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑光效坐骑*1
	tValentinesDay2018_New_Reward[3322674]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322674]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322674]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322675] = {}
	-- ===非光效坐骑外套包
	-- ===索引: tValentinesDay2018_New_Reward[3322675]
	-- ===删除: 3322675,1
	tValentinesDay2018_New_Reward[3322675]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322675]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322675]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322675]["DeleteItem"][1]["Id"] = 3322675 -- 【库】非光效坐骑外套[属性:9]
	tValentinesDay2018_New_Reward[3322675]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322675]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322675]["RewardItem"][1]["Id"] = 200651 -- 普通坐骑[200651][属性:0][叠加:0][金币:0], 【表格】非光效坐骑外套
	tValentinesDay2018_New_Reward[3322675]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑普通坐骑*1
	tValentinesDay2018_New_Reward[3322675]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322675]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322675]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322676] = {}
	-- ===光效时装外套包
	-- ===索引: tValentinesDay2018_New_Reward[3322676]
	-- ===删除: 3322676,1
	tValentinesDay2018_New_Reward[3322676]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322676]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322676]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322676]["DeleteItem"][1]["Id"] = 3322676 -- 【库】光效时装外套[属性:9]
	tValentinesDay2018_New_Reward[3322676]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322676]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322676]["RewardItem"][1]["Id"] = 195795 -- 光效外套1[195795][属性:0][叠加:0][金币:0], 【表格】光效时装外套
	tValentinesDay2018_New_Reward[3322676]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑光效外套1*1
	tValentinesDay2018_New_Reward[3322676]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322676]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322676]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322677] = {}
	-- ===普通时装外套包
	-- ===索引: tValentinesDay2018_New_Reward[3322677]
	-- ===删除: 3322677,1
	tValentinesDay2018_New_Reward[3322677]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322677]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322677]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322677]["DeleteItem"][1]["Id"] = 3322677 -- 【库】普通时装外套[属性:9]
	tValentinesDay2018_New_Reward[3322677]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322677]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322677]["RewardItem"][1]["Id"] = 195785 -- 普通外套1[195785][属性:0][叠加:0][金币:0], 【表格】普通时装外套
	tValentinesDay2018_New_Reward[3322677]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑普通外套1*1
	tValentinesDay2018_New_Reward[3322677]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322677]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322677]["RewardEffect"]["Effect"] = "angelwing"



	tValentinesDay2018_New_Reward[3322783] = {}
	-- ===光效时装外套包
	-- ===索引: tValentinesDay2018_New_Reward[3322783]
	-- ===删除: 3322783,1
	tValentinesDay2018_New_Reward[3322783]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322783]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322783]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322783]["DeleteItem"][1]["Id"] = 3322783 -- 【库】光效时装外套[属性:9]
	tValentinesDay2018_New_Reward[3322783]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322783]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322783]["RewardItem"][1]["Id"] = 195845 -- 光效外套1[195845][属性:0][叠加:0][金币:0], 【表格】光效时装外套
	tValentinesDay2018_New_Reward[3322783]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑光效外套1*1
	tValentinesDay2018_New_Reward[3322783]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322783]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322783]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward[3322745] = {}
	-- ===普通时装外套包
	-- ===索引: tValentinesDay2018_New_Reward[3322745]
	-- ===删除: 3322745,1
	tValentinesDay2018_New_Reward[3322745]["LogId"] = 12001123
	tValentinesDay2018_New_Reward[3322745]["DeleteItem"] = {}
	tValentinesDay2018_New_Reward[3322745]["DeleteItem"][1] = {}
	tValentinesDay2018_New_Reward[3322745]["DeleteItem"][1]["Id"] = 3322745 -- 【库】普通时装外套[属性:9]
	tValentinesDay2018_New_Reward[3322745]["RewardItem"] = {}
	tValentinesDay2018_New_Reward[3322745]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward[3322745]["RewardItem"][1]["Id"] = 195835 -- 普通外套1[195835][属性:0][叠加:0][金币:0], 【表格】普通时装外套
	tValentinesDay2018_New_Reward[3322745]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑普通外套1*1
	tValentinesDay2018_New_Reward[3322745]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward[3322745]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward[3322745]["RewardEffect"]["Effect"] = "angelwing"

	tValentinesDay2018_New_Reward["Flower"] = {}
	-- ===百合1级礼盒
	-- ===索引: tValentinesDay2018_New_Reward["Flower"][1][1]
	tValentinesDay2018_New_Reward["Flower"][1] = {}
	tValentinesDay2018_New_Reward["Flower"][1][1] = {}
	tValentinesDay2018_New_Reward["Flower"][1][1]["LogId"] = 12001123
	tValentinesDay2018_New_Reward["Flower"][1][1]["RewardItem"] = {}
	tValentinesDay2018_New_Reward["Flower"][1][1]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward["Flower"][1][1]["RewardItem"][1]["Id"] = 3322508 -- 百合1级礼盒[3322508][属性:11][叠加:0][金币:0], 【表格】百合1级礼盒
	tValentinesDay2018_New_Reward["Flower"][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 百合1级礼盒*1
	tValentinesDay2018_New_Reward["Flower"][1][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward["Flower"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward["Flower"][1][1]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward["Flower"][1][2] = {}
	-- ===百合2级礼盒
	-- ===索引: tValentinesDay2018_New_Reward["Flower"][1][2]
	tValentinesDay2018_New_Reward["Flower"][1][2]["LogId"] = 12001123
	tValentinesDay2018_New_Reward["Flower"][1][2]["RewardItem"] = {}
	tValentinesDay2018_New_Reward["Flower"][1][2]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward["Flower"][1][2]["RewardItem"][1]["Id"] = 3322509 -- 百合2级礼盒[3322509][属性:11][叠加:0][金币:0], 【表格】百合2级礼盒
	tValentinesDay2018_New_Reward["Flower"][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 百合2级礼盒*1
	tValentinesDay2018_New_Reward["Flower"][1][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward["Flower"][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward["Flower"][1][2]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward["Flower"][1][3] = {}
	-- ===百合3级礼盒
	-- ===索引: tValentinesDay2018_New_Reward["Flower"][1][3]
	tValentinesDay2018_New_Reward["Flower"][1][3]["LogId"] = 12001123
	tValentinesDay2018_New_Reward["Flower"][1][3]["RewardItem"] = {}
	tValentinesDay2018_New_Reward["Flower"][1][3]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward["Flower"][1][3]["RewardItem"][1]["Id"] = 3313298 -- 百合3级礼盒[3313298][属性:11][叠加:0][金币:0], 【表格】百合3级礼盒
	tValentinesDay2018_New_Reward["Flower"][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 百合3级礼盒*1
	tValentinesDay2018_New_Reward["Flower"][1][3]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward["Flower"][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward["Flower"][1][3]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward["Flower"][2] = {}
	-- ===兰花1级礼盒
	-- ===索引: tValentinesDay2018_New_Reward["Flower"][2][1]
	tValentinesDay2018_New_Reward["Flower"][2][1] = {}
	tValentinesDay2018_New_Reward["Flower"][2][1]["LogId"] = 12001123
	tValentinesDay2018_New_Reward["Flower"][2][1]["RewardItem"] = {}
	tValentinesDay2018_New_Reward["Flower"][2][1]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward["Flower"][2][1]["RewardItem"][1]["Id"] = 3313299 -- 兰花1级礼盒[3313299][属性:11][叠加:0][金币:0], 【表格】兰花1级礼盒
	tValentinesDay2018_New_Reward["Flower"][2][1]["RewardItem"][1]["Attr"] = "0 1" -- 兰花1级礼盒*1
	tValentinesDay2018_New_Reward["Flower"][2][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward["Flower"][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward["Flower"][2][1]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward["Flower"][2][2] = {}
	-- ===兰花2级礼盒
	-- ===索引: tValentinesDay2018_New_Reward["Flower"][2][2]
	tValentinesDay2018_New_Reward["Flower"][2][2]["LogId"] = 12001123
	tValentinesDay2018_New_Reward["Flower"][2][2]["RewardItem"] = {}
	tValentinesDay2018_New_Reward["Flower"][2][2]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward["Flower"][2][2]["RewardItem"][1]["Id"] = 3313300 -- 兰花2级礼盒[3313300][属性:11][叠加:0][金币:0], 【表格】兰花2级礼盒
	tValentinesDay2018_New_Reward["Flower"][2][2]["RewardItem"][1]["Attr"] = "0 1" -- 兰花2级礼盒*1
	tValentinesDay2018_New_Reward["Flower"][2][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward["Flower"][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward["Flower"][2][2]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward["Flower"][2][3] = {}
	-- ===兰花3级礼盒
	-- ===索引: tValentinesDay2018_New_Reward["Flower"][2][3]
	tValentinesDay2018_New_Reward["Flower"][2][3]["LogId"] = 12001123
	tValentinesDay2018_New_Reward["Flower"][2][3]["RewardItem"] = {}
	tValentinesDay2018_New_Reward["Flower"][2][3]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward["Flower"][2][3]["RewardItem"][1]["Id"] = 3313301 -- 兰花3级礼盒[3313301][属性:11][叠加:0][金币:0], 【表格】兰花3级礼盒
	tValentinesDay2018_New_Reward["Flower"][2][3]["RewardItem"][1]["Attr"] = "0 1" -- 兰花3级礼盒*1
	tValentinesDay2018_New_Reward["Flower"][2][3]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward["Flower"][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward["Flower"][2][3]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward["Flower"][3] = {}
	-- ===玫瑰1级礼盒
	-- ===索引: tValentinesDay2018_New_Reward["Flower"][3][1]
	tValentinesDay2018_New_Reward["Flower"][3][1] = {}
	tValentinesDay2018_New_Reward["Flower"][3][1]["LogId"] = 12001123
	tValentinesDay2018_New_Reward["Flower"][3][1]["RewardItem"] = {}
	tValentinesDay2018_New_Reward["Flower"][3][1]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward["Flower"][3][1]["RewardItem"][1]["Id"] = 3313302 -- 玫瑰1级礼盒[3313302][属性:11][叠加:0][金币:0], 【表格】玫瑰1级礼盒
	tValentinesDay2018_New_Reward["Flower"][3][1]["RewardItem"][1]["Attr"] = "0 1" -- 玫瑰1级礼盒*1
	tValentinesDay2018_New_Reward["Flower"][3][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward["Flower"][3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward["Flower"][3][1]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward["Flower"][3][2] = {}
	-- ===玫瑰2级礼盒
	-- ===索引: tValentinesDay2018_New_Reward["Flower"][3][2]
	tValentinesDay2018_New_Reward["Flower"][3][2]["LogId"] = 12001123
	tValentinesDay2018_New_Reward["Flower"][3][2]["RewardItem"] = {}
	tValentinesDay2018_New_Reward["Flower"][3][2]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward["Flower"][3][2]["RewardItem"][1]["Id"] = 3313303 -- 玫瑰2级礼盒[3313303][属性:11][叠加:0][金币:0], 【表格】玫瑰2级礼盒
	tValentinesDay2018_New_Reward["Flower"][3][2]["RewardItem"][1]["Attr"] = "0 1" -- 玫瑰2级礼盒*1
	tValentinesDay2018_New_Reward["Flower"][3][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward["Flower"][3][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward["Flower"][3][2]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward["Flower"][3][3] = {}
	-- ===玫瑰3级礼盒
	-- ===索引: tValentinesDay2018_New_Reward["Flower"][3][3]
	tValentinesDay2018_New_Reward["Flower"][3][3]["LogId"] = 12001123
	tValentinesDay2018_New_Reward["Flower"][3][3]["RewardItem"] = {}
	tValentinesDay2018_New_Reward["Flower"][3][3]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward["Flower"][3][3]["RewardItem"][1]["Id"] = 3313304 -- 玫瑰3级礼盒[3313304][属性:11][叠加:0][金币:0], 【表格】玫瑰3级礼盒
	tValentinesDay2018_New_Reward["Flower"][3][3]["RewardItem"][1]["Attr"] = "0 1" -- 玫瑰3级礼盒*1
	tValentinesDay2018_New_Reward["Flower"][3][3]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward["Flower"][3][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward["Flower"][3][3]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward["Flower"][4] = {}
	-- ===郁金香1级礼盒
	-- ===索引: tValentinesDay2018_New_Reward["Flower"][4][1]
	tValentinesDay2018_New_Reward["Flower"][4][1] = {}
	tValentinesDay2018_New_Reward["Flower"][4][1]["LogId"] = 12001123
	tValentinesDay2018_New_Reward["Flower"][4][1]["RewardItem"] = {}
	tValentinesDay2018_New_Reward["Flower"][4][1]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward["Flower"][4][1]["RewardItem"][1]["Id"] = 3313305 -- 郁金香1级礼盒[3313305][属性:11][叠加:0][金币:0], 【表格】郁金香1级礼盒
	tValentinesDay2018_New_Reward["Flower"][4][1]["RewardItem"][1]["Attr"] = "0 1" -- 郁金香1级礼盒*1
	tValentinesDay2018_New_Reward["Flower"][4][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward["Flower"][4][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward["Flower"][4][1]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward["Flower"][4][2] = {}
	-- ===郁金香2级礼盒
	-- ===索引: tValentinesDay2018_New_Reward["Flower"][4][2]
	tValentinesDay2018_New_Reward["Flower"][4][2]["LogId"] = 12001123
	tValentinesDay2018_New_Reward["Flower"][4][2]["RewardItem"] = {}
	tValentinesDay2018_New_Reward["Flower"][4][2]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward["Flower"][4][2]["RewardItem"][1]["Id"] = 3313306 -- 郁金香2级礼盒[3313306][属性:11][叠加:0][金币:0], 【表格】郁金香2级礼盒
	tValentinesDay2018_New_Reward["Flower"][4][2]["RewardItem"][1]["Attr"] = "0 1" -- 郁金香2级礼盒*1
	tValentinesDay2018_New_Reward["Flower"][4][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward["Flower"][4][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward["Flower"][4][2]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Reward["Flower"][4][3] = {}
	-- ===郁金香3级礼盒
	-- ===索引: tValentinesDay2018_New_Reward["Flower"][4][3]
	tValentinesDay2018_New_Reward["Flower"][4][3]["LogId"] = 12001123
	tValentinesDay2018_New_Reward["Flower"][4][3]["RewardItem"] = {}
	tValentinesDay2018_New_Reward["Flower"][4][3]["RewardItem"][1] = {}
	tValentinesDay2018_New_Reward["Flower"][4][3]["RewardItem"][1]["Id"] = 3313307 -- 郁金香3级礼盒[3313307][属性:11][叠加:0][金币:0], 【表格】郁金香3级礼盒
	tValentinesDay2018_New_Reward["Flower"][4][3]["RewardItem"][1]["Attr"] = "0 1" -- 郁金香3级礼盒*1
	tValentinesDay2018_New_Reward["Flower"][4][3]["RewardEffect"] = {}
	tValentinesDay2018_New_Reward["Flower"][4][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Reward["Flower"][4][3]["RewardEffect"]["Effect"] = "angelwing"


-- 新增随机奖励
local tValentinesDay2018_New_Random = {}
	-- ===每日首次种植奖励
	-- ===索引: tValentinesDay2018_New_Random["DayFirstPlant"][1]
	-- ===LogStep: 7[5]
	tValentinesDay2018_New_Random["DayFirstPlant"] = {}
	tValentinesDay2018_New_Random["DayFirstPlant"][1] = {}
	tValentinesDay2018_New_Random["DayFirstPlant"][1]["ItemChanceSum"] = 10000
	tValentinesDay2018_New_Random["DayFirstPlant"][1]["LogId"] = 12001123
	tValentinesDay2018_New_Random["DayFirstPlant"][1]["LogStep"] = " 7[5]"
	-- 500气力值 - 45.00%
	tValentinesDay2018_New_Random["DayFirstPlant"][1][1] = {}
	tValentinesDay2018_New_Random["DayFirstPlant"][1][1]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["DayFirstPlant"][1][1]["ItemChance"] = 4500
	tValentinesDay2018_New_Random["DayFirstPlant"][1][1]["RewardStrengthValue"] = {}
	tValentinesDay2018_New_Random["DayFirstPlant"][1][1]["RewardStrengthValue"]["Value"] = 500 -- 气力值, 【需求】500气力值
	tValentinesDay2018_New_Random["DayFirstPlant"][1][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["DayFirstPlant"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["DayFirstPlant"][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 20.00%
	tValentinesDay2018_New_Random["DayFirstPlant"][1][2] = {}
	tValentinesDay2018_New_Random["DayFirstPlant"][1][2]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["DayFirstPlant"][1][2]["ItemChance"] = 2000
	tValentinesDay2018_New_Random["DayFirstPlant"][1][2]["RewardItem"] = {}
	tValentinesDay2018_New_Random["DayFirstPlant"][1][2]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["DayFirstPlant"][1][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tValentinesDay2018_New_Random["DayFirstPlant"][1][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tValentinesDay2018_New_Random["DayFirstPlant"][1][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["DayFirstPlant"][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["DayFirstPlant"][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙鳞果 - 20.00%
	tValentinesDay2018_New_Random["DayFirstPlant"][1][3] = {}
	tValentinesDay2018_New_Random["DayFirstPlant"][1][3]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["DayFirstPlant"][1][3]["ItemChance"] = 2000
	tValentinesDay2018_New_Random["DayFirstPlant"][1][3]["RewardItem"] = {}
	tValentinesDay2018_New_Random["DayFirstPlant"][1][3]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["DayFirstPlant"][1][3]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:99][金币:0], 【表格】龙鳞果
	tValentinesDay2018_New_Random["DayFirstPlant"][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 龙鳞果*1
	tValentinesDay2018_New_Random["DayFirstPlant"][1][3]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["DayFirstPlant"][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["DayFirstPlant"][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+3 - 15.00%
	tValentinesDay2018_New_Random["DayFirstPlant"][1][4] = {}
	tValentinesDay2018_New_Random["DayFirstPlant"][1][4]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["DayFirstPlant"][1][4]["ItemChance"] = 1500
	tValentinesDay2018_New_Random["DayFirstPlant"][1][4]["RewardItem"] = {}
	tValentinesDay2018_New_Random["DayFirstPlant"][1][4]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["DayFirstPlant"][1][4]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tValentinesDay2018_New_Random["DayFirstPlant"][1][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+3赤炼石（赠）*1
	tValentinesDay2018_New_Random["DayFirstPlant"][1][4]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["DayFirstPlant"][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["DayFirstPlant"][1][4]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Random["StealFolower"] = {}
	-- ===偷采奖励百合
	-- ===索引: tValentinesDay2018_New_Random["StealFolower"][1]
	-- ===LogStep: 7[1]
	tValentinesDay2018_New_Random["StealFolower"][1] = {}
	tValentinesDay2018_New_Random["StealFolower"][1]["ItemChanceSum"] = 10000
	tValentinesDay2018_New_Random["StealFolower"][1]["LogId"] = 12001123
	tValentinesDay2018_New_Random["StealFolower"][1]["LogStep"] = " 7[1]"
	-- 3朵百合花-- 【必给】
	tValentinesDay2018_New_Random["StealFolower"][1][1] = {}
	tValentinesDay2018_New_Random["StealFolower"][1][1]["RandomItemChanceType"] = 1
	tValentinesDay2018_New_Random["StealFolower"][1][1]["RewardItem"] = {}
	tValentinesDay2018_New_Random["StealFolower"][1][1]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["StealFolower"][1][1]["RewardItem"][1]["Id"] = 752003 -- 3朵百合花[752003][属性:8][叠加:0][金币:0], 【表格】3朵百合花
	tValentinesDay2018_New_Random["StealFolower"][1][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 3朵百合花（赠）*1
	tValentinesDay2018_New_Random["StealFolower"][1][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["StealFolower"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["StealFolower"][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 50气力值 - 55.00%
	tValentinesDay2018_New_Random["StealFolower"][1][2] = {}
	tValentinesDay2018_New_Random["StealFolower"][1][2]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["StealFolower"][1][2]["ItemChance"] = 5500
	tValentinesDay2018_New_Random["StealFolower"][1][2]["RewardStrengthValue"] = {}
	tValentinesDay2018_New_Random["StealFolower"][1][2]["RewardStrengthValue"]["Value"] = 50 -- 气力值, 【需求】50气力值
	tValentinesDay2018_New_Random["StealFolower"][1][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["StealFolower"][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["StealFolower"][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 23.00%
	tValentinesDay2018_New_Random["StealFolower"][1][3] = {}
	tValentinesDay2018_New_Random["StealFolower"][1][3]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["StealFolower"][1][3]["ItemChance"] = 2300
	tValentinesDay2018_New_Random["StealFolower"][1][3]["RewardItem"] = {}
	tValentinesDay2018_New_Random["StealFolower"][1][3]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["StealFolower"][1][3]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石
	tValentinesDay2018_New_Random["StealFolower"][1][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的微光星陨石*1
	tValentinesDay2018_New_Random["StealFolower"][1][3]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["StealFolower"][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["StealFolower"][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+1 - 22.00%
	tValentinesDay2018_New_Random["StealFolower"][1][4] = {}
	tValentinesDay2018_New_Random["StealFolower"][1][4]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["StealFolower"][1][4]["ItemChance"] = 2200
	tValentinesDay2018_New_Random["StealFolower"][1][4]["RewardItem"] = {}
	tValentinesDay2018_New_Random["StealFolower"][1][4]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["StealFolower"][1][4]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤炼石+1
	tValentinesDay2018_New_Random["StealFolower"][1][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+1赤炼石（赠）*1
	tValentinesDay2018_New_Random["StealFolower"][1][4]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["StealFolower"][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["StealFolower"][1][4]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Random["StealFolower"][2] = {}
	-- ===偷采奖励兰花
	-- ===索引: tValentinesDay2018_New_Random["StealFolower"][2]
	-- ===LogStep: 7[2]
	tValentinesDay2018_New_Random["StealFolower"][2]["ItemChanceSum"] = 10000
	tValentinesDay2018_New_Random["StealFolower"][2]["LogId"] = 12001123
	tValentinesDay2018_New_Random["StealFolower"][2]["LogStep"] = " 7[2]"
	-- 3朵兰花-- 【必给】
	tValentinesDay2018_New_Random["StealFolower"][2][1] = {}
	tValentinesDay2018_New_Random["StealFolower"][2][1]["RandomItemChanceType"] = 1
	tValentinesDay2018_New_Random["StealFolower"][2][1]["RewardItem"] = {}
	tValentinesDay2018_New_Random["StealFolower"][2][1]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["StealFolower"][2][1]["RewardItem"][1]["Id"] = 753003 -- 3朵兰花[753003][属性:8][叠加:0][金币:0], 【表格】3朵兰花
	tValentinesDay2018_New_Random["StealFolower"][2][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 3朵兰花（赠）*1
	tValentinesDay2018_New_Random["StealFolower"][2][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["StealFolower"][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["StealFolower"][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 50气力值 - 55.00%
	tValentinesDay2018_New_Random["StealFolower"][2][2] = {}
	tValentinesDay2018_New_Random["StealFolower"][2][2]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["StealFolower"][2][2]["ItemChance"] = 5500
	tValentinesDay2018_New_Random["StealFolower"][2][2]["RewardStrengthValue"] = {}
	tValentinesDay2018_New_Random["StealFolower"][2][2]["RewardStrengthValue"]["Value"] = 50 -- 气力值, 【需求】50气力值
	tValentinesDay2018_New_Random["StealFolower"][2][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["StealFolower"][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["StealFolower"][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 23.00%
	tValentinesDay2018_New_Random["StealFolower"][2][3] = {}
	tValentinesDay2018_New_Random["StealFolower"][2][3]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["StealFolower"][2][3]["ItemChance"] = 2300
	tValentinesDay2018_New_Random["StealFolower"][2][3]["RewardItem"] = {}
	tValentinesDay2018_New_Random["StealFolower"][2][3]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["StealFolower"][2][3]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石
	tValentinesDay2018_New_Random["StealFolower"][2][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的微光星陨石*1
	tValentinesDay2018_New_Random["StealFolower"][2][3]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["StealFolower"][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["StealFolower"][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+1 - 22.00%
	tValentinesDay2018_New_Random["StealFolower"][2][4] = {}
	tValentinesDay2018_New_Random["StealFolower"][2][4]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["StealFolower"][2][4]["ItemChance"] = 2200
	tValentinesDay2018_New_Random["StealFolower"][2][4]["RewardItem"] = {}
	tValentinesDay2018_New_Random["StealFolower"][2][4]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["StealFolower"][2][4]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤炼石+1
	tValentinesDay2018_New_Random["StealFolower"][2][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+1赤炼石（赠）*1
	tValentinesDay2018_New_Random["StealFolower"][2][4]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["StealFolower"][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["StealFolower"][2][4]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Random["StealFolower"][3] = {}
	-- ===偷采奖励玫瑰
	-- ===索引: tValentinesDay2018_New_Random["StealFolower"][3]
	-- ===LogStep: 7[3]
	tValentinesDay2018_New_Random["StealFolower"][3]["ItemChanceSum"] = 10000
	tValentinesDay2018_New_Random["StealFolower"][3]["LogId"] = 12001123
	tValentinesDay2018_New_Random["StealFolower"][3]["LogStep"] = " 7[3]"
	-- 3朵玫瑰-- 【必给】
	tValentinesDay2018_New_Random["StealFolower"][3][1] = {}
	tValentinesDay2018_New_Random["StealFolower"][3][1]["RandomItemChanceType"] = 1
	tValentinesDay2018_New_Random["StealFolower"][3][1]["RewardItem"] = {}
	tValentinesDay2018_New_Random["StealFolower"][3][1]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["StealFolower"][3][1]["RewardItem"][1]["Id"] = 751003 -- 3朵红玫瑰[751003][属性:8][叠加:0][金币:0], 【表格】3朵玫瑰
	tValentinesDay2018_New_Random["StealFolower"][3][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 3朵红玫瑰（赠）*1
	tValentinesDay2018_New_Random["StealFolower"][3][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["StealFolower"][3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["StealFolower"][3][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 50气力值 - 55.00%
	tValentinesDay2018_New_Random["StealFolower"][3][2] = {}
	tValentinesDay2018_New_Random["StealFolower"][3][2]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["StealFolower"][3][2]["ItemChance"] = 5500
	tValentinesDay2018_New_Random["StealFolower"][3][2]["RewardStrengthValue"] = {}
	tValentinesDay2018_New_Random["StealFolower"][3][2]["RewardStrengthValue"]["Value"] = 50 -- 气力值, 【需求】50气力值
	tValentinesDay2018_New_Random["StealFolower"][3][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["StealFolower"][3][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["StealFolower"][3][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 23.00%
	tValentinesDay2018_New_Random["StealFolower"][3][3] = {}
	tValentinesDay2018_New_Random["StealFolower"][3][3]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["StealFolower"][3][3]["ItemChance"] = 2300
	tValentinesDay2018_New_Random["StealFolower"][3][3]["RewardItem"] = {}
	tValentinesDay2018_New_Random["StealFolower"][3][3]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["StealFolower"][3][3]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石
	tValentinesDay2018_New_Random["StealFolower"][3][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的微光星陨石*1
	tValentinesDay2018_New_Random["StealFolower"][3][3]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["StealFolower"][3][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["StealFolower"][3][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+1 - 22.00%
	tValentinesDay2018_New_Random["StealFolower"][3][4] = {}
	tValentinesDay2018_New_Random["StealFolower"][3][4]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["StealFolower"][3][4]["ItemChance"] = 2200
	tValentinesDay2018_New_Random["StealFolower"][3][4]["RewardItem"] = {}
	tValentinesDay2018_New_Random["StealFolower"][3][4]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["StealFolower"][3][4]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤炼石+1
	tValentinesDay2018_New_Random["StealFolower"][3][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+1赤炼石（赠）*1
	tValentinesDay2018_New_Random["StealFolower"][3][4]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["StealFolower"][3][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["StealFolower"][3][4]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Random["StealFolower"][4] = {}
	-- ===偷采奖励郁金香
	-- ===索引: tValentinesDay2018_New_Random["StealFolower"][4]
	-- ===LogStep: 7[4]
	tValentinesDay2018_New_Random["StealFolower"][4]["ItemChanceSum"] = 10000
	tValentinesDay2018_New_Random["StealFolower"][4]["LogId"] = 12001123
	tValentinesDay2018_New_Random["StealFolower"][4]["LogStep"] = " 7[4]"
	-- 1朵郁金香-- 【必给】
	tValentinesDay2018_New_Random["StealFolower"][4][1] = {}
	tValentinesDay2018_New_Random["StealFolower"][4][1]["RandomItemChanceType"] = 1
	tValentinesDay2018_New_Random["StealFolower"][4][1]["RewardItem"] = {}
	tValentinesDay2018_New_Random["StealFolower"][4][1]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["StealFolower"][4][1]["RewardItem"][1]["Id"] = 754001 -- 1朵郁金香[754001][属性:8][叠加:0][金币:0], 【表格】1朵郁金香
	tValentinesDay2018_New_Random["StealFolower"][4][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 1朵郁金香（赠）*1
	tValentinesDay2018_New_Random["StealFolower"][4][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["StealFolower"][4][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["StealFolower"][4][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 50气力值 - 55.00%
	tValentinesDay2018_New_Random["StealFolower"][4][2] = {}
	tValentinesDay2018_New_Random["StealFolower"][4][2]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["StealFolower"][4][2]["ItemChance"] = 5500
	tValentinesDay2018_New_Random["StealFolower"][4][2]["RewardStrengthValue"] = {}
	tValentinesDay2018_New_Random["StealFolower"][4][2]["RewardStrengthValue"]["Value"] = 50 -- 气力值, 【需求】50气力值
	tValentinesDay2018_New_Random["StealFolower"][4][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["StealFolower"][4][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["StealFolower"][4][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 23.00%
	tValentinesDay2018_New_Random["StealFolower"][4][3] = {}
	tValentinesDay2018_New_Random["StealFolower"][4][3]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["StealFolower"][4][3]["ItemChance"] = 2300
	tValentinesDay2018_New_Random["StealFolower"][4][3]["RewardItem"] = {}
	tValentinesDay2018_New_Random["StealFolower"][4][3]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["StealFolower"][4][3]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石
	tValentinesDay2018_New_Random["StealFolower"][4][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的微光星陨石*1
	tValentinesDay2018_New_Random["StealFolower"][4][3]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["StealFolower"][4][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["StealFolower"][4][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+1 - 22.00%
	tValentinesDay2018_New_Random["StealFolower"][4][4] = {}
	tValentinesDay2018_New_Random["StealFolower"][4][4]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["StealFolower"][4][4]["ItemChance"] = 2200
	tValentinesDay2018_New_Random["StealFolower"][4][4]["RewardItem"] = {}
	tValentinesDay2018_New_Random["StealFolower"][4][4]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["StealFolower"][4][4]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤炼石+1
	tValentinesDay2018_New_Random["StealFolower"][4][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+1赤炼石（赠）*1
	tValentinesDay2018_New_Random["StealFolower"][4][4]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["StealFolower"][4][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["StealFolower"][4][4]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Random["HarvestFlower"] = {}
	-- ===1级收获奖励百合
	-- ===索引: tValentinesDay2018_New_Random["HarvestFlower"][1][1]
	-- ===LogStep: 8[1][1]
	tValentinesDay2018_New_Random["HarvestFlower"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][1]["ItemChanceSum"] = 10000
	tValentinesDay2018_New_Random["HarvestFlower"][1][1]["LogId"] = 12001123
	tValentinesDay2018_New_Random["HarvestFlower"][1][1]["LogStep"] = " 8[1][1]"
	-- 9朵百合花-- 【必给】
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][1]["RandomItemChanceType"] = 1
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][1]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][1]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][1]["RewardItem"][1]["Id"] = 752009 -- 9朵百合花[752009][属性:8][叠加:0][金币:0], 【表格】9朵百合花
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 9朵百合花（赠）*1
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 100气力值 - 33.00%
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][2] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][2]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][2]["ItemChance"] = 3300
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][2]["RewardStrengthValue"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][2]["RewardStrengthValue"]["Value"] = 100 -- 气力值, 【需求】100气力值
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 33.00%
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][3] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][3]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][3]["ItemChance"] = 3300
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][3]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][3]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[3009000][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][3]["RewardItem"][1]["Attr"] = "0 3 3" -- 万能神纹精粹*3
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][3]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 34.00%
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][4] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][4]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][4]["ItemChance"] = 3400
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][4]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][4]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 人参果*1
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][4]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][1][1][4]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Random["HarvestFlower"][1][2] = {}
	-- ===2级收获奖励百合
	-- ===索引: tValentinesDay2018_New_Random["HarvestFlower"][1][2]
	-- ===LogStep: 8[1][2]
	tValentinesDay2018_New_Random["HarvestFlower"][1][2]["ItemChanceSum"] = 10000
	tValentinesDay2018_New_Random["HarvestFlower"][1][2]["LogId"] = 12001123
	tValentinesDay2018_New_Random["HarvestFlower"][1][2]["LogStep"] = " 8[1][2]"
	-- 9朵百合花-- 【必给】
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][1]["RandomItemChanceType"] = 1
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][1]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][1]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][1]["RewardItem"][1]["Id"] = 752009 -- 9朵百合花[752009][属性:8][叠加:0][金币:0], 【表格】9朵百合花
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][1]["RewardItem"][1]["Attr"] = "0 2 3" -- 9朵百合花（赠）*2
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 150气力值 - 33.00%
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][2] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][2]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][2]["ItemChance"] = 3300
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][2]["RewardStrengthValue"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][2]["RewardStrengthValue"]["Value"] = 150 -- 气力值, 【需求】150气力值
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 33.00%
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][3] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][3]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][3]["ItemChance"] = 3300
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][3]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][3]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[3009000][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][3]["RewardItem"][1]["Attr"] = "0 4 3" -- 万能神纹精粹*4
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][3]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 34.00%
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][4] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][4]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][4]["ItemChance"] = 3400
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][4]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][4]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][4]["RewardItem"][1]["Attr"] = "0 2" -- 人参果*2
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][4]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][1][2][4]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Random["HarvestFlower"][1][3] = {}
	-- ===3级收获奖励百合
	-- ===索引: tValentinesDay2018_New_Random["HarvestFlower"][1][3]
	-- ===LogStep: 8[1][3]
	tValentinesDay2018_New_Random["HarvestFlower"][1][3]["ItemChanceSum"] = 10000
	tValentinesDay2018_New_Random["HarvestFlower"][1][3]["LogId"] = 12001123
	tValentinesDay2018_New_Random["HarvestFlower"][1][3]["LogStep"] = " 8[1][3]"
	-- 9朵百合花-- 【必给】
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][1]["RandomItemChanceType"] = 1
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][1]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][1]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][1]["RewardItem"][1]["Id"] = 752009 -- 9朵百合花[752009][属性:8][叠加:0][金币:0], 【表格】9朵百合花
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][1]["RewardItem"][1]["Attr"] = "0 3 3" -- 9朵百合花（赠）*3
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 200气力值 - 33.00%
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][2] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][2]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][2]["ItemChance"] = 3300
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][2]["RewardStrengthValue"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][2]["RewardStrengthValue"]["Value"] = 200 -- 气力值, 【需求】200气力值
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 33.00%
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][3] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][3]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][3]["ItemChance"] = 3300
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][3]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][3]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[3009000][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][3]["RewardItem"][1]["Attr"] = "0 5 3" -- 万能神纹精粹*5
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][3]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 34.00%
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][4] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][4]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][4]["ItemChance"] = 3400
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][4]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][4]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][4]["RewardItem"][1]["Attr"] = "0 3" -- 人参果*3
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][4]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][1][3][4]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Random["HarvestFlower"][2] = {}
	-- ===1级收获奖励兰花
	-- ===索引: tValentinesDay2018_New_Random["HarvestFlower"][2][1]
	-- ===LogStep: 8[2][1]
	tValentinesDay2018_New_Random["HarvestFlower"][2][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][1]["ItemChanceSum"] = 10000
	tValentinesDay2018_New_Random["HarvestFlower"][2][1]["LogId"] = 12001123
	tValentinesDay2018_New_Random["HarvestFlower"][2][1]["LogStep"] = " 8[2][1]"
	-- 9朵兰花-- 【必给】
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][1]["RandomItemChanceType"] = 1
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][1]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][1]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][1]["RewardItem"][1]["Id"] = 753009 -- 9朵兰花[753009][属性:8][叠加:0][金币:0], 【表格】9朵兰花
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 9朵兰花（赠）*1
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 100气力值 - 33.00%
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][2] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][2]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][2]["ItemChance"] = 3300
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][2]["RewardStrengthValue"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][2]["RewardStrengthValue"]["Value"] = 100 -- 气力值, 【需求】100气力值
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 33.00%
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][3] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][3]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][3]["ItemChance"] = 3300
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][3]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][3]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[3009000][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][3]["RewardItem"][1]["Attr"] = "0 3 3" -- 万能神纹精粹*3
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][3]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 34.00%
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][4] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][4]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][4]["ItemChance"] = 3400
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][4]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][4]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 人参果*1
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][4]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][2][1][4]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Random["HarvestFlower"][2][2] = {}
	-- ===2级收获奖励百合
	-- ===索引: tValentinesDay2018_New_Random["HarvestFlower"][2][2]
	-- ===LogStep: 8[2][2]
	tValentinesDay2018_New_Random["HarvestFlower"][2][2]["ItemChanceSum"] = 10000
	tValentinesDay2018_New_Random["HarvestFlower"][2][2]["LogId"] = 12001123
	tValentinesDay2018_New_Random["HarvestFlower"][2][2]["LogStep"] = " 8[2][2]"
	-- 9朵兰花-- 【必给】
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][1]["RandomItemChanceType"] = 1
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][1]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][1]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][1]["RewardItem"][1]["Id"] = 753009 -- 9朵兰花[753009][属性:8][叠加:0][金币:0], 【表格】9朵兰花
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][1]["RewardItem"][1]["Attr"] = "0 2 3" -- 9朵兰花（赠）*2
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 150气力值 - 33.00%
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][2] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][2]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][2]["ItemChance"] = 3300
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][2]["RewardStrengthValue"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][2]["RewardStrengthValue"]["Value"] = 150 -- 气力值, 【需求】150气力值
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 33.00%
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][3] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][3]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][3]["ItemChance"] = 3300
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][3]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][3]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[3009000][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][3]["RewardItem"][1]["Attr"] = "0 4 3" -- 万能神纹精粹*4
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][3]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 34.00%
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][4] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][4]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][4]["ItemChance"] = 3400
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][4]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][4]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][4]["RewardItem"][1]["Attr"] = "0 2" -- 人参果*2
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][4]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][2][2][4]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Random["HarvestFlower"][2][3] = {}
	-- ===3级收获奖励百合
	-- ===索引: tValentinesDay2018_New_Random["HarvestFlower"][2][3]
	-- ===LogStep: 8[2][3]
	tValentinesDay2018_New_Random["HarvestFlower"][2][3]["ItemChanceSum"] = 10000
	tValentinesDay2018_New_Random["HarvestFlower"][2][3]["LogId"] = 12001123
	tValentinesDay2018_New_Random["HarvestFlower"][2][3]["LogStep"] = " 8[2][3]"
	-- 9朵兰花-- 【必给】
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][1]["RandomItemChanceType"] = 1
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][1]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][1]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][1]["RewardItem"][1]["Id"] = 753009 -- 9朵兰花[753009][属性:8][叠加:0][金币:0], 【表格】9朵兰花
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][1]["RewardItem"][1]["Attr"] = "0 3 3" -- 9朵兰花（赠）*3
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 200气力值 - 33.00%
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][2] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][2]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][2]["ItemChance"] = 3300
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][2]["RewardStrengthValue"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][2]["RewardStrengthValue"]["Value"] = 200 -- 气力值, 【需求】200气力值
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 33.00%
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][3] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][3]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][3]["ItemChance"] = 3300
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][3]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][3]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[3009000][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][3]["RewardItem"][1]["Attr"] = "0 5 3" -- 万能神纹精粹*5
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][3]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 34.00%
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][4] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][4]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][4]["ItemChance"] = 3400
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][4]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][4]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][4]["RewardItem"][1]["Attr"] = "0 3" -- 人参果*3
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][4]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][2][3][4]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Random["HarvestFlower"][3] = {}
	-- ===1级收获奖励玫瑰
	-- ===索引: tValentinesDay2018_New_Random["HarvestFlower"][3][1]
	-- ===LogStep: 8[3][1]
	tValentinesDay2018_New_Random["HarvestFlower"][3][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][1]["ItemChanceSum"] = 10000
	tValentinesDay2018_New_Random["HarvestFlower"][3][1]["LogId"] = 12001123
	tValentinesDay2018_New_Random["HarvestFlower"][3][1]["LogStep"] = " 8[3][1]"
	-- 9朵玫瑰-- 【必给】
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][1]["RandomItemChanceType"] = 1
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][1]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][1]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][1]["RewardItem"][1]["Id"] = 751009 -- 9朵红玫瑰[751009][属性:8][叠加:0][金币:0], 【表格】9朵玫瑰
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 9朵红玫瑰（赠）*1
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 100气力值 - 33.00%
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][2] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][2]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][2]["ItemChance"] = 3300
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][2]["RewardStrengthValue"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][2]["RewardStrengthValue"]["Value"] = 100 -- 气力值, 【需求】100气力值
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 33.00%
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][3] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][3]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][3]["ItemChance"] = 3300
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][3]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][3]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[3009000][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][3]["RewardItem"][1]["Attr"] = "0 3 3" -- 万能神纹精粹*3
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][3]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 34.00%
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][4] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][4]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][4]["ItemChance"] = 3400
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][4]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][4]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 人参果*1
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][4]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][3][1][4]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Random["HarvestFlower"][3][2] = {}
	-- ===2级收获奖励玫瑰
	-- ===索引: tValentinesDay2018_New_Random["HarvestFlower"][3][2]
	-- ===LogStep: 8[3][2]
	tValentinesDay2018_New_Random["HarvestFlower"][3][2]["ItemChanceSum"] = 10000
	tValentinesDay2018_New_Random["HarvestFlower"][3][2]["LogId"] = 12001123
	tValentinesDay2018_New_Random["HarvestFlower"][3][2]["LogStep"] = " 8[3][2]"
	-- 9朵玫瑰-- 【必给】
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][1]["RandomItemChanceType"] = 1
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][1]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][1]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][1]["RewardItem"][1]["Id"] = 751009 -- 9朵红玫瑰[751009][属性:8][叠加:0][金币:0], 【表格】9朵玫瑰
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][1]["RewardItem"][1]["Attr"] = "0 2 3" -- 9朵红玫瑰（赠）*2
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 150气力值 - 33.00%
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][2] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][2]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][2]["ItemChance"] = 3300
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][2]["RewardStrengthValue"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][2]["RewardStrengthValue"]["Value"] = 150 -- 气力值, 【需求】150气力值
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 33.00%
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][3] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][3]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][3]["ItemChance"] = 3300
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][3]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][3]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[3009000][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][3]["RewardItem"][1]["Attr"] = "0 4 3" -- 万能神纹精粹*4
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][3]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 34.00%
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][4] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][4]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][4]["ItemChance"] = 3400
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][4]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][4]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][4]["RewardItem"][1]["Attr"] = "0 2" -- 人参果*2
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][4]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][3][2][4]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Random["HarvestFlower"][3][3] = {}
	-- ===3级收获奖励玫瑰
	-- ===索引: tValentinesDay2018_New_Random["HarvestFlower"][3][3]
	-- ===LogStep: 8[3][3]
	tValentinesDay2018_New_Random["HarvestFlower"][3][3]["ItemChanceSum"] = 10000
	tValentinesDay2018_New_Random["HarvestFlower"][3][3]["LogId"] = 12001123
	tValentinesDay2018_New_Random["HarvestFlower"][3][3]["LogStep"] = " 8[3][3]"
	-- 9朵玫瑰-- 【必给】
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][1]["RandomItemChanceType"] = 1
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][1]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][1]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][1]["RewardItem"][1]["Id"] = 751009 -- 9朵红玫瑰[751009][属性:8][叠加:0][金币:0], 【表格】9朵玫瑰
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][1]["RewardItem"][1]["Attr"] = "0 3 3" -- 9朵红玫瑰（赠）*3
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 200气力值 - 33.00%
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][2] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][2]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][2]["ItemChance"] = 3300
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][2]["RewardStrengthValue"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][2]["RewardStrengthValue"]["Value"] = 200 -- 气力值, 【需求】200气力值
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 33.00%
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][3] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][3]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][3]["ItemChance"] = 3300
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][3]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][3]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[3009000][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][3]["RewardItem"][1]["Attr"] = "0 5 3" -- 万能神纹精粹*5
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][3]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 34.00%
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][4] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][4]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][4]["ItemChance"] = 3400
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][4]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][4]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][4]["RewardItem"][1]["Attr"] = "0 3" -- 人参果*3
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][4]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][3][3][4]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Random["HarvestFlower"][4] = {}
	-- ===1级收获奖励郁金香
	-- ===索引: tValentinesDay2018_New_Random["HarvestFlower"][4][1]
	-- ===LogStep: 8[4][1]
	tValentinesDay2018_New_Random["HarvestFlower"][4][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][1]["ItemChanceSum"] = 10000
	tValentinesDay2018_New_Random["HarvestFlower"][4][1]["LogId"] = 12001123
	tValentinesDay2018_New_Random["HarvestFlower"][4][1]["LogStep"] = " 8[4][1]"
	-- 3朵郁金香-- 【必给】
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][1]["RandomItemChanceType"] = 1
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][1]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][1]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][1]["RewardItem"][1]["Id"] = 754003 -- 3朵郁金香[754001][属性:8][叠加:0][金币:0], 【表格】1朵郁金香
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][1]["RewardItem"][1]["Attr"] = "0 2 3" -- 3朵郁金香（赠）*2
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 150气力值 - 35.00%
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][2] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][2]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][2]["ItemChance"] = 3500
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][2]["RewardStrengthValue"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][2]["RewardStrengthValue"]["Value"] = 150 -- 气力值, 【需求】150气力值
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 40.00%
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][3] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][3]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][3]["ItemChance"] = 4000
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][3]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][3]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[3009000][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][3]["RewardItem"][1]["Attr"] = "0 4 3" -- 万能神纹精粹*4
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][3]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 25.00%
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][4] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][4]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][4]["ItemChance"] = 2500
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][4]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][4]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][4]["RewardItem"][1]["Attr"] = "0 2" -- 人参果*2
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][4]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][4][1][4]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Random["HarvestFlower"][4][2] = {}
	-- ===2级收获奖励郁金香
	-- ===索引: tValentinesDay2018_New_Random["HarvestFlower"][4][2]
	-- ===LogStep: 8[4][2]
	tValentinesDay2018_New_Random["HarvestFlower"][4][2]["ItemChanceSum"] = 10000
	tValentinesDay2018_New_Random["HarvestFlower"][4][2]["LogId"] = 12001123
	tValentinesDay2018_New_Random["HarvestFlower"][4][2]["LogStep"] = " 8[4][2]"
	-- 3朵郁金香-- 【必给】
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][1]["RandomItemChanceType"] = 1
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][1]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][1]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][1]["RewardItem"][1]["Id"] = 754003 -- 3朵郁金香[754001][属性:8][叠加:0][金币:0], 【表格】1朵郁金香
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][1]["RewardItem"][1]["Attr"] = "0 3 3" -- 3朵郁金香（赠）*3
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 200气力值 - 35.00%
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][2] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][2]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][2]["ItemChance"] = 3500
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][2]["RewardStrengthValue"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][2]["RewardStrengthValue"]["Value"] = 200 -- 气力值, 【需求】200气力值
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 40.00%
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][3] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][3]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][3]["ItemChance"] = 4000
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][3]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][3]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[3009000][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][3]["RewardItem"][1]["Attr"] = "0 5 3" -- 万能神纹精粹*5
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][3]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 25.00%
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][4] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][4]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][4]["ItemChance"] = 2500
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][4]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][4]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][4]["RewardItem"][1]["Attr"] = "0 3" -- 人参果*3
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][4]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][4][2][4]["RewardEffect"]["Effect"] = "angelwing"


	tValentinesDay2018_New_Random["HarvestFlower"][4][3] = {}
	-- ===3级收获奖励郁金香
	-- ===索引: tValentinesDay2018_New_Random["HarvestFlower"][4][3]
	-- ===LogStep: 8[4][3]
	tValentinesDay2018_New_Random["HarvestFlower"][4][3]["ItemChanceSum"] = 10000
	tValentinesDay2018_New_Random["HarvestFlower"][4][3]["LogId"] = 12001123
	tValentinesDay2018_New_Random["HarvestFlower"][4][3]["LogStep"] = " 8[4][3]"
	-- 3朵郁金香-- 【必给】
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][1]["RandomItemChanceType"] = 1
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][1]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][1]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][1]["RewardItem"][1]["Id"] = 754003 -- 3朵郁金香[754001][属性:8][叠加:0][金币:0], 【表格】1朵郁金香
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][1]["RewardItem"][1]["Attr"] = "0 4 3" -- 3朵郁金香（赠）*4
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][1]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 250气力值 - 35.00%
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][2] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][2]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][2]["ItemChance"] = 3500
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][2]["RewardStrengthValue"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][2]["RewardStrengthValue"]["Value"] = 250 -- 气力值, 【需求】250气力值
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][2]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 40.00%
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][3] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][3]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][3]["ItemChance"] = 4000
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][3]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][3]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[3009000][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][3]["RewardItem"][1]["Attr"] = "0 6 3" -- 万能神纹精粹*6
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][3]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 25.00%
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][4] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][4]["RandomItemChanceType"] = 2
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][4]["ItemChance"] = 2500
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][4]["RewardItem"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][4]["RewardItem"][1] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][4]["RewardItem"][1]["Attr"] = "0 4" -- 人参果*4
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][4]["RewardEffect"] = {}
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tValentinesDay2018_New_Random["HarvestFlower"][4][3][4]["RewardEffect"]["Effect"] = "angelwing"



-- 每日提交魅力值记录
local tValentinesDay2018_DayPutGlamour = {}
tValentinesDay2018_DayPutGlamour["Num"] = 0
tValentinesDay2018_DayPutGlamour["Name"] = {}
tValentinesDay2018_DayPutGlamour["BoxLev"] = {}
-- -- 提交记录  500魅力值以下
-- tValentinesDay2018_DayPutGlamour[1] = {}
-- tValentinesDay2018_DayPutGlamour[1]["Num"] = 0
-- tValentinesDay2018_DayPutGlamour[1]["Name"] = {}
-- -- 提交记录  1000魅力值以下
-- tValentinesDay2018_DayPutGlamour[2] = {}
-- tValentinesDay2018_DayPutGlamour[2]["Num"] = 0
-- tValentinesDay2018_DayPutGlamour[2]["Name"] = {}
-- -- 提交记录  2000魅力值以下
-- tValentinesDay2018_DayPutGlamour[3] = {}
-- tValentinesDay2018_DayPutGlamour[3]["Num"] = 0
-- tValentinesDay2018_DayPutGlamour[3]["Name"] = {}
-- -- 提交记录  2000魅力值以上
-- tValentinesDay2018_DayPutGlamour[4] = {}
-- tValentinesDay2018_DayPutGlamour[4]["Num"] = 0
-- tValentinesDay2018_DayPutGlamour[4]["Name"] = {}

-- 队伍信息表
local tValentinesDay2018_TeamLeader = {}
-- tValentinesDay2018_TeamLeader[TeamId] = LeaderId

-- 玩家副本信息表
local tValentinesDay2018_Counterpart = {}
-- tValentinesDay2018_Counterpart[UserId] = CounterpartId


----------------------------------逻辑部分---------------------------------------------
-- 打开链接
function ValentinesDay2018_OpenWebsite()
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentinesDay2018"]["RankTime"]) then
		return
	end
	local sWebAddress = tValentinesDay2018_Data["WebAddress"]
	User_SendWebDialog(sWebAddress)
end

-- 打开攻略
function NpcPosition_OpenGongLue()
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		return
	end
	local sWebAddress = tValentinesDay2018_Data["GoneLue"]
	User_SendWebDialog(sWebAddress)
end

-- 打开鲜花榜说明
function NpcPosition_OpenFollower()
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		return
	end
	local sWebAddress = tValentinesDay2018_Data["Follwer"]
	User_SendWebPage(sWebAddress)
end


-- 寻路
function ValentinesDay2018_GotoFindBox(nIndex)
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		return
	end
	if nIndex == 2 then
		if Get_UserMapId() ==  tValentinesDay2018_Data["Vegetable"]["MonsterData"]["MapId"] then
			Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["MapMsg"])
		else
			NpcPosition_PathFind(24477)
		end
	else
		local nPosX = tValentinesDay2018_Data["NpcId"][2]["PosX"]
		local nPosY = tValentinesDay2018_Data["NpcId"][2]["PosY"]
		local nMapId = tValentinesDay2018_Data["NpcId"]["MapId"]
		Sys_GotoSomeWhere(nPosX, nPosY, nMapId, 0)
	end
end

-- 寻路到情圣
function ValentinesDay2018_GotoFindQing()
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		return
	end
	
	local nPosX = tValentinesDay2018_Data["NpcId"][1]["PosX"]
	local nPosY = tValentinesDay2018_Data["NpcId"][1]["PosY"]
	local nMapId = tValentinesDay2018_Data["NpcId"]["MapId"]
	local nNpcId = tValentinesDay2018_Data["NpcId"][1]["NppcId"]
	-- 判断时间
	if Sys_ChkFullTime(tValentinesDay2018_Data["CampaignTime"]) then
		nNpcId = tValentinesDay2018_Data["NpcId"][1]["NppcId2"]
	end
	NpcPosition_PathFind(nNpcId)
	-- Sys_GotoSomeWhere(nPosX, nPosY, nMapId, 0)
end

-- 上线记录玩家性别
function ValentinesDay2018_UserLogin()
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		return
	end
	
	local nSexEvent = tValentinesDay2018_Data["Stc"]["Event"][1]
	local nSexData = tValentinesDay2018_Data["Stc"]["Data"][1]
	if not Task_ChkStcValue(nSexEvent, nSexData, ">", 0) then
		local nNowSex = Get_UserSex()
		Task_SetStatistic(nSexEvent, nSexData, nNowSex, 1)
		Task_SetStcTimestamp(nSexEvent, nSexData, 0)
	end
end

--获取玩家记录的性别
function ValentinesDay2018_GetUserLoadSex()
	local nSexEvent = tValentinesDay2018_Data["Stc"]["Event"][1]
	local nSexData = tValentinesDay2018_Data["Stc"]["Data"][1]
	if not Task_ChkStcValue(nSexEvent, nSexData, ">", 0) then
		local nNowSex = Get_UserSex()
		Task_SetStatistic(nSexEvent, nSexData, nNowSex, 1)
		Task_SetStcTimestamp(nSexEvent, nSexData, 0)
	end
	local nUserSex = Get_UserStatisticValue(nSexEvent, nSexData)
	return nUserSex
end

-- 七夕节道具使用
function ValentinesDay2018_PropUse(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
			User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["ItemTimeOut"])
		end
		return
	end
	-- 自动寻路
	local nCityMap = tValentinesDay2018_Data["NpcId"]["MapId"]
	local nPosX = tValentinesDay2018_Data["NpcId"][1]["PosX"]
	local nPosY = tValentinesDay2018_Data["NpcId"][1]["PosY"]
	local nNpcId = tValentinesDay2018_Data["NpcId"][1]["NppcId"]
	-- 判断时间
	if Sys_ChkFullTime(tValentinesDay2018_Data["CampaignTime"]) then
		nNpcId = tValentinesDay2018_Data["NpcId"][1]["NppcId2"]
	end
	NpcPosition_PathFind(nNpcId)
	-- Sys_GotoSomeWhere(nPosX, nPosY, nCityMap, 0)
end

-- 功勋礼包使用开出七夕礼盒
function ValentinesDay2018_FeatsPack()
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		return
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tValentinesDay2018_Data["Level"],tValentinesDay2018_Data["Metempsychosis"]) then
		return
	end
	
	local nEvent = tValentinesDay2018_Data["Stc"]["Event"][5]
	local nData = tValentinesDay2018_Data["Stc"]["Data"][5]
	-- 掩码隔天清零
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	
	-- 已领取
	if Task_ChkStcValue(nEvent, nData, ">", 0) then
		return
	end
	Task_SetStatistic(nEvent, nData, 1, 1)
	Task_SetStcTimestamp(nEvent, nData, 0)
	
	RewardTemplate_UseItemAndMsg(tValentinesDay2018_Reward[3007108])
end

-- 功勋礼包使用开出七夕礼盒
function ValentinesDay2018_DayPackageUse()
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		return
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tValentinesDay2018_Data["Level"],tValentinesDay2018_Data["Metempsychosis"]) then
		return
	end
	
	local nEvent = tValentinesDay2018_Data["Stc"]["Event"][4]
	local nData = tValentinesDay2018_Data["Stc"]["Data"][4]
	-- 掩码隔天清零
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	
	-- 已领取
	if Task_ChkStcValue(nEvent, nData, ">", 0) then
		return
	end
	Task_SetStatistic(nEvent, nData, 1, 1)
	Task_SetStcTimestamp(nEvent, nData, 0)
	
	RewardTemplate_UseItemAndMsg(tValentinesDay2018_Reward[3100011])
end

-- 神龙岛，古神灵境击杀掉落
function ValentinesDay2018_KillMonsterDrop(nMonsterId)
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		return
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tValentinesDay2018_Data["Level"],tValentinesDay2018_Data["Metempsychosis"]) then
		return
	end
	
	-- 判断背包空间
	if not RewardTemplate_ChkRandomSpace(tValentinesDay2018_RandomReward["MonsterDrop"], 2) then
		return
	end
	local nEvent = tValentinesDay2018_Data["Stc"]["Event"][6]
	local nData = tValentinesDay2018_Data["Stc"]["Data"][6]
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	if Task_ChkStcValue(nEvent, nData, ">", 1) then
		return
	elseif Task_ChkStcValue(nEvent, nData, "==", 1) then
		Task_AddStatistic(nEvent, nData, 1, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
		User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["MonsterDropFull"])
	else
		RewardTemplate_NewRandom(tValentinesDay2018_RandomReward["MonsterDrop"], 2)
	end
end

-- 传送陷阱
function tValentinesDay2018_TrapMove()
	-- 判断是否在鹊仙居内
	if not (Get_MapDoc() == tValentinesDay2018_Data["Map"]["MapDoc"]) then
		return
	end
	local nMapId = tValentinesDay2018_Data["NpcId"]["MapId"]
	local nPosX = tValentinesDay2018_Data["NpcId"][3]["PosX"]
	local nPosY = tValentinesDay2018_Data["NpcId"][3]["PosY"]
	User_UserRandBoundTrans(nMapId, nPosX, nPosY, 3, 3)
end

-- 传送出地图
function ValentinesDay2018_ReturnCityMove()
	-- 判断是否在花仙阁内
	if not (Get_UserMapId() == tValentinesDay2018_Data["Map"]["Garden"]["MapId"]) then
		return
	end
	local nMapId = tValentinesDay2018_Data["NpcId"]["MapId"]
	local nPosX = tValentinesDay2018_Data["NpcId"][1]["PosX"]
	local nPosY = tValentinesDay2018_Data["NpcId"][1]["PosY"]
	-- 判断是否激情服
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tValentinesDay2018_Data["NpcId"]["MapId2"]
		nPosX = tValentinesDay2018_Data["NpcId"][1]["PosX2"]
		nPosY = tValentinesDay2018_Data["NpcId"][1]["PosY2"]
	end
	User_UserRandBoundTrans(nMapId, nPosX, nPosY, 3, 3)
end

-- 七夕鲜花券礼包使用
function ValentinesDay2018_FollowerPackageUse(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 过期使用
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		RewardTemplate_UseItem(tValentinesDay2018_Reward[nItemId])
		return
	end
	
	if Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tValentinesDay2018_RandomReward, nItemId)
		-- 额外外套概率
		-- ValentinesDay2018_2019TipsAdditional(nItemId)
	end
end

-- 七夕礼物盒使用
function ValentinesDay2018_ValentinePackageUse(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["PackageTimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	-- 判断背包空间
	if not User_CheckLeftSpace(2) then
		User_TalkChannel2005(string.format(tValentinesDay2018_Text["SysMsgBox"]["FullSpace"], 2))
		return
	end
	-- 获取记录性别
	local nUserSex = ValentinesDay2018_GetUserLoadSex()
	if Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tValentinesDay2018_RandomReward[nItemId][nUserSex], 1)
		RewardTemplate_NewRandom(tValentinesDay2018_RandomReward[nItemId][nUserSex], 2)
	end
end

-- 天石商店贩卖的七夕礼盒使用
function ValentinesDay2018_ShopPackageUse(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间
	local nItemNum = Get_CountItemType(nItemId, 0)
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["PackageTimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	-- 获取记录性别
	local nUserSex = ValentinesDay2018_GetUserLoadSex()
	local tReward = CommonFunc_Copy(tValentinesDay2018_Reward[nItemId][nUserSex])
	tReward["DeleteItem"][1]["ItemNum"] = nItemNum
	tReward["RewardItem"][1]["Attr"] = "0 " .. nItemNum
	
	if RewardTemplate_UseItemAndMsg(tReward) then
		-- for i = 1, nItemNum do
			-- -- 额外外套概率
			-- ValentinesDay2018_TipsAdditional(nItemId)
		-- end
	end
end

-- 天石商店贩卖的外套和坐骑礼包使用
function ValentinesDay2018_ShopClothAndMounts(nItemId)

	--判断物品
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	--若不是打折物品，则直接打开该礼包
	-- local nCutTip = CommonPackage_ExitTicket() 
	local nReturnMoney,tMemoryBin,sEmoneyLog,nZhengItemId = CommonPackage_ReturnPrice(nItemId,1)
	local nSpace = RewardTemplate_GetRewardSpace(tValentinesDay2018_Reward[nItemId])+ WarriorsPromotion_JudgeSpace(nItemId)
	
	if tMemoryBin == nil and nReturnMoney == nil then
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItem(tValentinesDay2018_Reward[nItemId]) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return
		end
		return
	end
	
	-- --判断是否在活动时间内
	if not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldActivityTime"]) then
		
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItem(tValentinesDay2018_Reward[nItemId]) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return 
		end
	else
		
		--有返利,给玩家返相应的天石
		-- if nCutTip == 2 then
		local nEmoney = Get_UserEMoney()
		if nEmoney + nReturnMoney > G_User_MaxEmoney then
			User_TalkChannel2005(tMayPKMonth_Text["Item"]["Text121"])
			Sys_MsgBox(tMayPKMonth_Text["Item"]["Text121"])
			return
		end
		-- end
		
		if User_CheckLeftSpace(nSpace) then
			RewardTemplate_UseItem(tValentinesDay2018_Reward[nItemId])
			--给玩家对应的印记
			-- CommonPackage_LocationYing(nItemId,nCutTip)
		
			--若是玩家有打折卷则给玩家放对应的天石
			-- if nCutTip == 2  then
				--给对应的天石
			if CommonPackage_DeleteTicket(nZhengItemId,nItemId) and User_AddEMoney(nReturnMoney) then
				Sys_SaveEmoneyBuy(string.format(sEmoneyLog,nReturnMoney,nReturnMoney))
			end
			-- end
		else
			User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
			Sys_MsgBox(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		end
		
	end


	-- if not Item_ChkItem(nItemId) then
		-- return
	-- end
	-- local nSpace = RewardTemplate_GetRewardSpace(tValentinesDay2018_Reward[nItemId])+ WarriorsPromotion_JudgeSpace(nItemId)
	-- if User_CheckLeftSpace(nSpace) then
		-- if RewardTemplate_UseItem(tValentinesDay2018_Reward[nItemId]) then
			-- WarriorsPromotion_JudgeNinjaItem(nItemId)
		-- end
	-- else
	-- --提示
		-- Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
		-- return 
	-- end
end


-- 魅力成长包
function ValentinesDay2018_IncreaseGlamour(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["PackageTimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	-- 判断背包空间
	if not RewardTemplate_ChkRandomSpace(tValentinesDay2018_RandomReward[nItemId], 1) then
		local nSpace = RewardTemplate_GetRandomSpace(tValentinesDay2018_RandomReward[nItemId], 1)
		User_TalkChannel2005(string.format(tValentinesDay2018_Text["SysMsgBox"]["FullSpace"], nSpace))
		return
	end
	if Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tValentinesDay2018_RandomReward[nItemId], 1)
		-- -- 额外坐骑外套概率
		-- if nItemId == 3310204 or nItemId == 3310205 or nItemId == 3310206 then
			-- ValentinesDay2018_TipsAdditional(nItemId)
		-- end
	end
end

-- 偷菜礼包使用
function ValentinesDay2018_NewFlowerPackageUse(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["PackageTimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	-- 判断背包空间
	local nState = tValentinesDay2018_Data["Vegetable"]["State"][nItemId]
	local nFlowerLev = tValentinesDay2018_Data["Vegetable"]["Lev"][nItemId]
	if not RewardTemplate_ChkRandomSpace(tValentinesDay2018_New_Random["HarvestFlower"][nState], nFlowerLev) then
		local nSpace = RewardTemplate_GetRandomSpace(tValentinesDay2018_New_Random["HarvestFlower"][nState], nFlowerLev)
		User_TalkChannel2005(string.format(tValentinesDay2018_Text["SysMsgBox"]["FullSpace"], nSpace))
		return
	end
	if Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tValentinesDay2018_New_Random["HarvestFlower"][nState], nFlowerLev)
	end
end

-- 单服全服排行礼包使用
function ValentinesDay2018_TopRankPackageUse(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentinesDay2018"]["PackageOutTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["PackageTimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	RewardTemplate_UseItemAndMsg(tValentinesDay2018_Reward[nItemId])
end

-- 新排行榜礼包使用
function ValentinesDay2018_NewTopRankPackageUse(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentinesDay2018"]["PackageOutTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["PackageTimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	if nItemId >= 3322473 and nItemId <= 3322476 then
		local nUserSex = ValentinesDay2018_GetUserLoadSex()
		RewardTemplate_UseItemAndMsg(tValentinesDay2018_New_Reward[nItemId][nUserSex])
	else
		RewardTemplate_UseItemAndMsg(tValentinesDay2018_New_Reward[nItemId])
	end
end

-- 光环礼包使用
function ValentinesDay2018_NewTheWorldPackage(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	--判定玩家身上是否有光环
	local nStatus = tValentinesDay2018_Data["Vegetable"]["RoleStatus"][nItemId]
	local nPower = tValentinesDay2018_Data["Vegetable"]["RoleStatus"]["Power"]
	local nSecs  = tValentinesDay2018_Data["Vegetable"]["RoleStatus"]["Secs"]
	local nTimes = tValentinesDay2018_Data["Vegetable"]["RoleStatus"]["Times"]
	local nEndTime = tValentinesDay2018_Data["Vegetable"]["RoleStatus"]["EndTime"]
	local nRecordable = tValentinesDay2018_Data["Vegetable"]["RoleStatus"]["Recordable"]
	local nRemainTime = tValentinesDay2018_Data["Vegetable"]["RoleStatus"]["RemainTime"]
	if User_IsExistHalo() then
		--删除光环
		User_DelHalo()
	end
	local nUserId = Get_UserId()
	User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,nRecordable,1,0,nUserId)
end

-- 鹊仙居宝盒使用
function ValentinesDay2018_QueEffectPackageUse(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["PackageTimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	if not Item_DelItem(nItemId) then
		return
	end
	-- 随机光效
	local nEffectNum = math.random(1, 27)
	local nChkEffectType = tValentinesDay2018_Effect["EffectNum"][nEffectNum]["EffectType"]
	local nEffectSign = tValentinesDay2018_Effect["EffectNum"][nEffectNum]["EffectSign"]
	-- 拥有奇珍数+1
	local nHaveEffectEvent = tValentinesDay2018_Effect["CollectionStc"][nChkEffectType][nEffectSign]["Event"]
	local nHaveEffectData = tValentinesDay2018_Effect["CollectionStc"][nChkEffectType][nEffectSign]["Data"]
	Task_AddStatistic(nHaveEffectEvent, nHaveEffectData, 1, 1)
	Task_SetStcTimestamp(nHaveEffectEvent, nHaveEffectData, 0)
	-- 记录log
	Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["BoxLog"], nEffectNum))
	local sEffectName = tValentinesDay2018_Text["SysTalk"]["EffectName"][nEffectNum]
	User_EffectAdd("self", "angelwing")
	User_TalkChannel2005(string.format(tValentinesDay2018_Text["SysTalk"]["RewardEffect"], sEffectName))
end

-- 魅力金云碎片使用时间判断
function ValentinesDay2018_TipsTimeChk(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["TipsTimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	LinkItemGossipFunc_New(nItemId, "1-1")
end

-- 魅力金云碎片炼化
function ValentinesDay2018_TipsArtifice(nItemId)
	if not Item_ChkItem(nItemId) then
		LinkItemGossipFunc_New(nItemId, "2-3")
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["TipsTimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	-- 判断是否达到上限
	local nGetEvent = tValentinesDay2018_Data["Stc"]["Event"][10]
	local nGetData = tValentinesDay2018_Data["Stc"]["Data"][10]
	if Task_ChkStcValue(nGetEvent, nGetData, ">=", 5) then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["TipsFull"])
		return
	end
	
	-- 判断背包空间
	if not RewardTemplate_ChkRandomSpace(tValentinesDay2018_RandomReward[nItemId], 1) then
		local nSpace = RewardTemplate_GetRandomSpace(tValentinesDay2018_RandomReward[nItemId], 1)
		User_TalkChannel2005(string.format(tValentinesDay2018_Text["SysMsgBox"]["FullSpace"], nSpace))
		return
	end
	if Item_DelItem(nItemId) then
		local tReward = RewardTemplate_NewRandom(tValentinesDay2018_RandomReward[nItemId], 1)
		local fRewardResult = tReward[1]["tAward"][1]["Result"]
		if fRewardResult then
			Task_AddStatistic(nGetEvent, nGetData, 1, 1)
			Task_SetStcTimestamp(nGetEvent, nGetData, 0)
			LinkItemGossipFunc_New(nItemId, "2-1")
		else
			LinkItemGossipFunc_New(nItemId, "2-2")
		end
	end
end

-- 魅力金云碎片合成
function ValentinesDay2018_TipsSynthesis(nItemId)
	if not Item_ChkMulItem(nItemId, nItemId, 30) then
		LinkItemGossipFunc_New(nItemId, "3-1")
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["TipsTimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tValentinesDay2018_Reward[3310207]) then
		return
	end
	
	if RewardTemplate_UseItemAndMsg(tValentinesDay2018_Reward[3310207]) then
		User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["TipsSynthesis"])
	end
end

-- 魅力金云碎片兑换气力值
function ValentinesDay2018_TipsExchange(nItemId, nExchangeNum)
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["TipsTimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	if not Item_ChkItem(nItemId) then
		LinkItemGossipFunc_New(nItemId, "4-2")
		return
	end
	
	if nExchangeNum == 1 then
		RewardTemplate_UseItemAndMsg(tValentinesDay2018_Reward["Exchange"])
		if Item_ChkItem(nItemId) then
			ValentinesDay2018_TipsChk(nItemId)
		end
	elseif nExchangeNum == 2 then
		local nItemNum = Get_CountItemType(nItemId, 0)
		local tReward = CommonFunc_Copy(tValentinesDay2018_Reward["Exchange"])
		tReward["DeleteItem"][1]["ItemNum"] = nItemNum
		tReward["RewardStrengthValue"]["Value"] = tValentinesDay2018_Reward["Exchange"]["RewardStrengthValue"]["Value"] * nItemNum
		RewardTemplate_UseItemAndMsg(tReward)
	end
end

-- 魅力金云碎片是否出对白判断
function ValentinesDay2018_TipsChk(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["TipsTimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	LinkItemGossipFunc_New(nItemId, "1-1")
end

-- 坐骑外套碎片额外产出
function ValentinesDay2018_TipsAdditional(nItemId)
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		return
	end
	local nRandonReard = CommonFunc_Copy(tValentinesDay2018_RandomReward["TipAdditional"])
	nRandonReard[1][1]["ItemChance"] = tValentinesDay2018_Data["ItemChance"][nItemId]
	nRandonReard[1][2]["ItemChance"] = 10000 - tValentinesDay2018_Data["ItemChance"][nItemId]
	-- 判断背包
	if not RewardTemplate_ChkRandomSpace(nRandonReard, 1) then
		return
	end
	-- 奖励播报
	local tReward = RewardTemplate_NewRandom(nRandonReard, 1)
	local fRewardResult = tReward[1]["tAward"][1]["Result"]
	if fRewardResult then
		local nUserName = Get_UserName()
		if nItemId == 3310204 or nItemId == 3310205 then
			Sys_SystemBroadcast(string.format(tValentinesDay2018_Text["Broadcast"][nItemId], nUserName))
		else
			Sys_SystemBroadcast(string.format(tValentinesDay2018_Text["Broadcast"][3310206], nUserName))
		end
	end
end
-- 2019情人节
function ValentinesDay2018_2019TipsAdditional(nItemId)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["FlowerChiefItem"]["Now_Time"]) then
		return
	end
	local tRandonReard = CommonFunc_Copy(tValentinesDay2018_RandomReward["TipAdditional"])
	tRandonReard[2][1]["ItemChance"] = tValentinesDay2018_Data["ItemChance"][nItemId]
	tRandonReard[2][2]["ItemChance"] = 10000 - tValentinesDay2018_Data["ItemChance"][nItemId]
	if nItemId == 3310216 then
		tRandonReard[2][1]["RewardItem"][1]["Attr"] = "0 10"
	end
	-- 判断背包
	if not RewardTemplate_ChkRandomSpace(tRandonReard, 2) then
		return
	end
	-- 奖励播报
	local tReward = RewardTemplate_NewRandom(tRandonReard, 2)
	-- local fRewardResult = tReward[1]["tAward"][1]["Result"]
	-- if fRewardResult then
		-- local nUserName = Get_UserName()
		-- if nItemId == 3310204 or nItemId == 3310205 then
			-- Sys_SystemBroadcast(string.format(tValentinesDay2018_Text["Broadcast"][nItemId], nUserName))
		-- else
			-- Sys_SystemBroadcast(string.format(tValentinesDay2018_Text["Broadcast"][3310206], nUserName))
		-- end
	-- end
end
-- 【线下票选】魅力使者对白判断
function ValentinesDay2018_MessengerDialogChk(nNpcId)
	-- 活动后
	if not Sys_ChkFullTime(tActivityTime["ValentinesDay2018"]["RankTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	-- 活动中（授课阶段）
	if Sys_ChkFullTime(tValentinesDay2018_Data["LectureTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-4")
		return
	end
	-- 活动中（竞选阶段）
	if Sys_ChkFullTime(tActivityTime["ValentinesDay2018"]["WNSMoveTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-6")
		return
	end
end


-- 情圣对白条件判断
function ValentinesDay2018_CasanovaDialogChk()
	local nNpcId = tValentinesDay2018_Data["NpcId"][1]["NppcId"]
	-- 活动前
	if Sys_ChkFullTime(tValentinesDay2018_Data["BeforeTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-1")
		return
	end
	-- 活动后
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	-- 活动中（授课阶段）
	if Sys_ChkFullTime(tValentinesDay2018_Data["LectureTime"]) then
		-- 等级未到
		if not User_JudgeLevelAndMetempsychosis(tValentinesDay2018_Data["Level"],tValentinesDay2018_Data["Metempsychosis"]) then
			LinkNpcGossipFunc_New(nNpcId, "1-3")
			return
		-- 等级达到
		else
			-- 判断是否当日首次点击
			if ValentinesDay2018_CasanovaDayFirstDialog() then
				LinkNpcGossipFunc_New(nNpcId, "2-1")
				return
				-- LinkNpcGossipFunc_New(nNpcId, "1-4")
			else
				LinkNpcGossipFunc_New(nNpcId, "1-4")
				return
			end
		end
	end
	-- 活动中（竞选阶段）
	if Sys_ChkFullTime(tValentinesDay2018_Data["CampaignTime"]) then
		-- 等级未到
		if not User_JudgeLevelAndMetempsychosis(tValentinesDay2018_Data["Level"],tValentinesDay2018_Data["Metempsychosis"]) then
			LinkNpcGossipFunc_New(nNpcId, "1-5")
			return
		-- 等级达到
		else
			-- 判断是否当日首次点击
			if ValentinesDay2018_CasanovaDayFirstDialog() then
				LinkNpcGossipFunc_New(nNpcId, "2-1")
				return
			else
				LinkNpcGossipFunc_New(nNpcId, "1-6")
				return
			end
		end
	end
end

-- 情圣NPC处 判断每日首次对白
function ValentinesDay2018_CasanovaDayFirstDialog()
	local nEvent = tValentinesDay2018_Data["Stc"]["Event"][7]
	local nData = tValentinesDay2018_Data["Stc"]["Data"][7]
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	if Task_ChkStcValue(nEvent, nData, ">", 0) then
		return false
	end
	-- 获取当天显示的土味情话
	local nSignNum = 1
	for nIndex, sTime in ipairs(tActivityTime["ValentinesDay2018"]["DayWordsOfLove"]) do
		if Sys_ChkFullTime(sTime) then
			nSignNum = nIndex
			break
		end
	end
	-- 对白赋值
	tNpcGossip[23096]["Text214"] = string.format(tValentinesDay2018_Text[23096]["Text214"], tValentinesDay2018_Text["Dialog"]["LoverPrattle"]["Text"][nSignNum])
	tNpcGossip[23096]["Option211"] = string.format(tValentinesDay2018_Text[23096]["Option211"], tValentinesDay2018_Text["Dialog"]["LoverPrattle"]["Option"][nSignNum])
	tNpcGossip[23096]["Text224"] = string.format(tValentinesDay2018_Text[23096]["Text224"], tValentinesDay2018_Text["Dialog"]["LoverPrattle"]["Answer"][nSignNum])
	local nRandomNum = math.random(1, 3)
	local nUserSex = ValentinesDay2018_GetUserLoadSex()
	tNpcGossip[23096]["Option221"] = string.format(tValentinesDay2018_Text[23096]["Option221"], tValentinesDay2018_Text["Dialog"]["Answer"]["Option"][nUserSex][nRandomNum])
	return true
end

-- 情圣NPC处 每日第一次对话领取奖励
function ValentinesDay2018_CasanovaDayFirstReward()
	local nEvent = tValentinesDay2018_Data["Stc"]["Event"][7]
	local nData = tValentinesDay2018_Data["Stc"]["Data"][7]
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	if Task_ChkStcValue(nEvent, nData, ">", 0) then
		return
	end
	local nNpcId = tValentinesDay2018_Data["NpcId"][1]["NppcId"]
	-- 判断是否在活动时间中
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	if not RewardTemplate_CheckSpace(tValentinesDay2018_Reward["FirstTime"]) then
		return
	end
	-- 设置掩码
	Task_SetStatistic(nEvent, nData, 1, 1)
	Task_SetStcTimestamp(nEvent, nData, 0)
	RewardTemplate_UseItem(tValentinesDay2018_Reward["FirstTime"])
	-- 加个光效
	User_EffectAdd("self", "superxp2-4")
	-- 返回主对白
	ValentinesDay2018_CasanovaDialogChk()
end

-- 魅力成长礼颜色赋值
function ValentinesDay2018_CharmPullulateDialog(nNpcId, nIndex)
	-- 判断是否在活动时间中
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	local nRewardEvent = tValentinesDay2018_Data["Stc"]["Event"][11]
	local nRewardData = tValentinesDay2018_Data["Stc"]["Data"][11]
	local nHaveReward = Get_UserStatisticValue(nRewardEvent, nRewardData)
	-- 已领取赋值
	for i = 1, nHaveReward do 
		tNpcGossip[nNpcId]["Text51" .. nIndex + i] = string.format(tValentinesDay2018_Text[23097]["Text51" .. nIndex + i], tValentinesDay2018_Text["Dialog"]["GrayTipBegin"], tValentinesDay2018_Text["Dialog"]["GrayTipEnd"])
	end
	-- 未领取赋值
	for j = nHaveReward + 1, 8 do 
		tNpcGossip[nNpcId]["Text51" .. nIndex + j] = string.format(tValentinesDay2018_Text[23097]["Text51" .. nIndex + j], "", "")
	end
end

-- 魅力成长礼颜色赋值
function ValentinesDay2018_CharmPullulateDialogQing(nNpcId, nIndex)
	-- 判断是否在活动时间中
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	local nRewardEvent = tValentinesDay2018_Data["Stc"]["Event"][11]
	local nRewardData = tValentinesDay2018_Data["Stc"]["Data"][11]
	local nHaveReward = Get_UserStatisticValue(nRewardEvent, nRewardData)
	-- 已领取赋值
	for i = 1, nHaveReward do 
		-- if i == 7 then
			-- local sTitle = string.format(tValentinesDay2018_Text["Dialog"]["Title"], "")
			-- tNpcGossip[nNpcId]["Text31" .. nIndex + i] = string.format(tValentinesDay2018_Text[23096]["Text31" .. nIndex + i], sTitle, tValentinesDay2018_Text["Dialog"]["HaveReward"])
		-- else
		tNpcGossip[nNpcId]["Text31" .. nIndex + i] = string.format(tValentinesDay2018_Text[23096]["Text31" .. nIndex + i], tValentinesDay2018_Text["Dialog"]["HaveReward"])
		-- end
	end
	-- 未领取赋值
	for j = nHaveReward + 1, 8 do 
		-- if j == 7 then
			-- local sTitle = string.format(tValentinesDay2018_Text["Dialog"]["Title"], "")
			-- tNpcGossip[nNpcId]["Text31" .. nIndex + j] = string.format(tValentinesDay2018_Text[23096]["Text31" .. nIndex + j], sTitle, "")
		-- else
		tNpcGossip[nNpcId]["Text31" .. nIndex + j] = string.format(tValentinesDay2018_Text[23096]["Text31" .. nIndex + j], "")
		-- end
	end
end

-- 打开天石商店
function ValentinesDay2018_BuyItems(nNpcId)
	-- 判断是否在活动时间中
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	User_OpenDialog()
end

-- 魅力合伙人打开天石商店
function ValentinesDay2018_OpenDialog()
	User_OpenDialog()
end

-- 一键领取魅力成长礼  领取判断
function ValentinesDay2018_CharmPullulateRewardChk(nNpcId)
	-- 判断是否在活动时间中
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	-- 玩家已领取的魅力成长礼
	local nRewardEvent = tValentinesDay2018_Data["Stc"]["Event"][11]
	local nRewardData = tValentinesDay2018_Data["Stc"]["Data"][11]
	local nHaveReward = Get_UserStatisticValue(nRewardEvent, nRewardData)
	-- 玩家魅力之星
	local nUserCharmEvent = tValentinesDay2018_Data["Stc"]["Event"][8]
	local nUserCharmData = tValentinesDay2018_Data["Stc"]["Data"][8]
	local nUserCharmNum = Get_UserStatisticValue(nUserCharmEvent, nUserCharmData)
	-- 判断是否领取完
	if nHaveReward >= 8 then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["CharmRewardOver"])
		return
	end
	-- 判断是否可领取下一级奖励
	local nNextSign = tValentinesDay2018_Data["CharmRewardNeed"][nHaveReward + 1]
	if nUserCharmNum < nNextSign then
		LinkNpcGossipFunc_New(nNpcId, "3-2")
		return
	end
	-- 初始化
	for j = 1, 8 do
		tNpcGossip[nNpcId]["Text33" .. 4 + j] = ""
	end
	-- 判断后几级可领取奖励领取
	local nIndex = 0
	local nSign = 0
	local nNum = 0
	for i = nHaveReward + 1, 8 do
		-- 领取的奖励显示
		if nUserCharmNum >= tValentinesDay2018_Data["CharmRewardNeed"][i] then
			local sRewardStr, fSign, nSign = ValentinesDay2018_CharmPullulateRewardGet(i)
			-- 判断奖励是否给上
			if not fSign then
				break
			end
			nNum = nNum + nSign
			tNpcGossip[nNpcId]["Text33" .. 4 + i] = sRewardStr
		end
	end
	
	-- 只有一次且返回1  则未达到领取标准
	if nNum == 1 then
		LinkNpcGossipFunc_New(nNpcId, "3-2")
		return
	-- 只有一次且返回2  则为背包空间满
	elseif nNum == 2 then
		Sys_MsgBox(string.format(tValentinesDay2018_Text["SysMsgBox"]["FullSpace"], tValentinesDay2018_Data["CharmRewardSpace"][nHaveReward + 1]))
		return
	-- 一次或多次领取，则出奖励对白
	elseif nNum >= 3 then
		nHaveReward = Get_UserStatisticValue(nRewardEvent, nRewardData)
		if nHaveReward >= 4 then
			local nUserName = Get_UserName()
			Sys_SystemBroadcast(string.format(tValentinesDay2018_Text["Broadcast"]["Reward"][nHaveReward], nUserName))
		end
		LinkNpcGossipFunc_New(nNpcId, "3-3")
		return
	end
	
end

-- 一键领取魅力成长礼  领取第几档次奖励
function ValentinesDay2018_CharmPullulateRewardGet(nRewardNum)
	local sRewardStr = ""
	local fSign = false
	-- 玩家已领取的魅力成长礼
	local nRewardEvent = tValentinesDay2018_Data["Stc"]["Event"][11]
	local nRewardData = tValentinesDay2018_Data["Stc"]["Data"][11]
	-- 玩家魅力之星
	local nUserCharmEvent = tValentinesDay2018_Data["Stc"]["Event"][8]
	local nUserCharmData = tValentinesDay2018_Data["Stc"]["Data"][8]
	local nUserCharmNum = Get_UserStatisticValue(nUserCharmEvent, nUserCharmData)
	-- 判断是否能领奖
	local nNeedCharm = tValentinesDay2018_Data["CharmRewardNeed"][nRewardNum]
	if nUserCharmNum < nNeedCharm then
		return sRewardStr, fSign, 1
	end
	local tReward = CommonFunc_Copy(tValentinesDay2018_Reward["GlamourReward"][nNeedCharm])
	-- 判断是否是250000魅力值奖励
	-- if nNeedCharm == 250000 then
		-- local nUserSex = ValentinesDay2018_GetUserLoadSex()
		-- if nUserSex == 1 then
			-- tReward["RewardTitle"]["TitleType"] = 2085
			-- tReward["RewardTitle"]["TitleId"] = 2085
		-- else
			-- tReward["RewardTitle"]["TitleType"] = 2092
			-- tReward["RewardTitle"]["TitleId"] = 2092
		-- end
	-- end
	-- 背包空间是否满足
	if not RewardTemplate_CheckSpace(tReward) then
		return sRewardStr, fSign, 2
	end
	
	-- 获得奖励
	Task_AddStatistic(nRewardEvent, nRewardData, 1, 1)
	Task_SetStcTimestamp(nRewardEvent, nRewardData, 0)
	if RewardTemplate_UseItem(tReward) then
		sRewardStr = tValentinesDay2018_Text["Dialog"]["PullulateReward"][nRewardNum]
		fSign = true
	end
	return sRewardStr, fSign, 3
end

-- 制作浪漫情人匣
function ValentinesDay2018_FabricationTheBox()
	local nNpcId = tValentinesDay2018_Data["NpcId"][2]["NppcId"]
	-- 判断是否在活动时间前
	if Sys_ChkFullTime(tValentinesDay2018_Data["BeforeTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-1")
		return
	end
	-- 判断是否在活动时间中
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tValentinesDay2018_Data["Level"],tValentinesDay2018_Data["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-3")
		return
	end
	
	local fChkItem = false
	for i = 1, 30 do
		-- 判断玩家是否拥有该物品
		local nItemId = tValentinesDay2018_Data["ExchangeItemId"][i]
		if Item_ChkItem(nItemId) then
			fChkItem = true
			break
		end
	end
	-- 判断金币和赠点
	local nNeedMoney = tValentinesDay2018_Data["ItemNum"][1]
	local nNeedEMoneyMono = tValentinesDay2018_Data["ItemNum"][3]
	if User_CanPutMoney2Bag(-nNeedMoney) or (Get_UserMonoEMoney() > nNeedEMoneyMono) then
		fChkItem = true
	end
	
	local nSaveEvent =  tValentinesDay2018_Data["Stc"]["Event"][15]
	local nSaveData =  tValentinesDay2018_Data["Stc"]["Data"][15]
	local nSaveNum = Get_UserStatisticValue(nSaveEvent, nSaveData)
	if fChkItem then
		if nSaveNum > 0 then
			LinkNpcGossipFunc_New(nNpcId, "4-4")
			return
		else
			LinkNpcGossipFunc_New(nNpcId, "4-5")
			return
		end
	-- 若玩家没有材料，判断玩家是否提交过材料
	else
		if nSaveNum > 0 then
			LinkNpcGossipFunc_New(nNpcId, "4-3")
			return
		else
			LinkNpcGossipFunc_New(nNpcId, "4-5")
			return
		end
	end
end

-- 放入材料判断
function ValentinesDay2018_BoxPutItemChk(nNpcId)
	-- 判断是否在活动时间中
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	local fChkItem = false
	for i = 1, 30 do
		-- 判断玩家是否拥有该物品
		local nItemId = tValentinesDay2018_Data["ExchangeItemId"][i]
		if Item_ChkItem(nItemId) then
			fChkItem = true
			break
		end
	end
	-- 判断金币和赠点
	local nNeedMoney = tValentinesDay2018_Data["ItemNum"][1]
	local nNeedEMoneyMono = tValentinesDay2018_Data["ItemNum"][3]
	if User_CanPutMoney2Bag(-nNeedMoney) or (Get_UserMonoEMoney() > nNeedEMoneyMono) then
		fChkItem = true
	end
	
	if fChkItem then
		LinkNpcGossipFunc_New(nNpcId, "2-1")
		return
	else
		LinkNpcGossipFunc_New(nNpcId, "4-2")
		return
	end
end


-- 天工宝箱  掏宝箱
function ValentinesDay2018_GetBoxReward()
	-- 判断是否在活动时间中
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		return
	end
	local nDatyRewardEvent = tValentinesDay2018_Data["Stc"]["Event"][9]
	local nDatyRewardData = tValentinesDay2018_Data["Stc"]["Data"][9]
	-- 判断是否隔天
	if Task_StcInterval(nDatyRewardEvent, nDatyRewardData, 1, 4) then
		Task_SetStatistic(nDatyRewardEvent, nDatyRewardData, 0, 1)
		Task_SetStcTimestamp(nDatyRewardEvent, nDatyRewardData, 0)
	end
	-- 已领取
	if Task_ChkStcValue(nDatyRewardEvent, nDatyRewardData, ">", 0) then
		-- Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["HaveGetBox"])
		return
	end
	-- 判断背包空间
	-- if not User_CheckLeftSpace(1) then
		-- Sys_MsgBox(string.format(tValentinesDay2018_Text["SysMsgBox"]["FullSpace"], 1))
		-- return
	-- end
	-- -- 每日获得的魅力值
	-- local nDayGlamourEvent = tValentinesDay2018_Data["Stc"]["Event"][13]
	-- local nDayGlamourData = tValentinesDay2018_Data["Stc"]["Data"][13]
	-- -- 判断是否隔天
	-- if Task_StcInterval(nDayGlamourEvent, nDayGlamourData, 1, 4) then
		-- Task_SetStatistic(nDayGlamourEvent, nDayGlamourData, 0, 1)
		-- Task_SetStcTimestamp(nDayGlamourEvent, nDayGlamourData, 0)
	-- end
	-- -- 判断玩家可获取的奖励
	-- local nDayGlamour = Get_UserStatisticValue(nDayGlamourEvent, nDayGlamourData)
	-- local nRewardItem = tValentinesDay2018_Data["DayBoxReward"][1]["BoxItem"]
	-- local nGlamourLev = 1
	-- for i = 1, 4 do
		-- if nDayGlamour >= tValentinesDay2018_Data["DayBoxReward"][i]["NeedGlamour"] then
			-- nRewardItem = tValentinesDay2018_Data["DayBoxReward"][i]["BoxItem"]
			-- nGlamourLev = i
		-- end
	-- end
	-- 设置掩码
	Task_SetStatistic(nDatyRewardEvent, nDatyRewardData, 1, 1)
	Task_SetStcTimestamp(nDatyRewardEvent, nDatyRewardData, 0)
	-- 发送邮件
	local sContent, nActionId = ValentinesDay2018_GetRewadOwner()
	local nNowTime = os.time()
	local nEndTime = os.time({day=21, month=8, year=2019, hour=23, minute=59, second=59}) 
	-- 获取距离结束时间的天数
	local nExistDay = math.ceil((nEndTime - nNowTime)/86400)
	local nUserId = Get_UserId()
	local sSender = tValentinesDay2018_Mail["BoxReward"]["Sender"]
	local sTitle = tValentinesDay2018_Mail["BoxReward"]["Title"]
	-- local sContent = tValentinesDay2018_Mail["BoxReward"]["Content"]
	-- local nActionId = tValentinesDay2018_Mail["BoxReward"]["ActionId"][nGlamourLev]
	Sys_SendMail(nUserId, 0, 0, nActionId, 0, nExistDay, sSender, sTitle, sContent)
	-- RewardTemplate_UseItem(tValentinesDay2018_Reward[nRewardItem])
	-- 重设对白
	-- local sItemName = Get_ItemtypeName(nRewardItem)
	-- tNpcGossip[nNpcId]["Text414"] = string.format(tValentinesDay2018_Text[23097]["Text414"], sRewardTitle)
	-- tNpcGossip[nNpcId]["Text415"] = string.format(tValentinesDay2018_Text[23097]["Text415"], sItemName)
	-- LinkNpcGossipFunc_New(nNpcId, "4-1")
end

-- 判断抽取到的奖励是谁提交的
function ValentinesDay2018_GetRewadOwner()
	local sContent = string.format(tValentinesDay2018_Text["Lettter"]["BoxReward"]["Content"], tValentinesDay2018_Text["Lettter"]["BoxReward"]["SysSend"])
	local nActionId = tValentinesDay2018_Mail["BoxReward"]["ActionId"][1]
	-- 判断是否有人提交
	if tValentinesDay2018_DayPutGlamour["Num"] == 0 then
		return sContent, nActionId
	end
	local nRandomNum = math.random(1, tValentinesDay2018_DayPutGlamour["Num"])
	-- 随机到的表为空则返回
	if tValentinesDay2018_DayPutGlamour["Name"][nRandomNum] == nil or tValentinesDay2018_DayPutGlamour["Name"][nRandomNum] == "" then
		return sContent, nActionId
	else
		sContent = string.format(tValentinesDay2018_Text["Lettter"]["BoxReward"]["Content"], tValentinesDay2018_DayPutGlamour["Name"][nRandomNum])
		local nBoxLev = tValentinesDay2018_DayPutGlamour["BoxLev"][nRandomNum]
		if nBoxLev ~= nil and nBoxLev >= 1 and nBoxLev <= 4 then
			table.remove(tValentinesDay2018_DayPutGlamour["Name"], nRandomNum)
			table.remove(tValentinesDay2018_DayPutGlamour["BoxLev"], nRandomNum)
			tValentinesDay2018_DayPutGlamour["Num"] = tValentinesDay2018_DayPutGlamour["Num"] - 1
			nActionId = tValentinesDay2018_Mail["BoxReward"]["ActionId"][nBoxLev]
		end
		return sContent, nActionId
	end
end

-- 制作浪漫情人匣  一键提交
function ValentinesDay2018_SubmissionAllItem(nNpcId)
	-- 判断是否在活动时间中
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	-- 获取玩家背包中的材料及可兑换的魅力值
	local fItemCheck, tBagItem, nGetGlamour, nFlowerGlamourSum = ValentinesDay2018_ChkBagItem()
	-- 没有材料提示
	if not fItemCheck then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["HaveNotItem"])
		return
	end
	-- 提交换成魅力值储存   等制作的时候加到魅力值掩码
	local nSaveEvent =  tValentinesDay2018_Data["Stc"]["Event"][15]
	local nSaveData =  tValentinesDay2018_Data["Stc"]["Data"][15]
	
	local nDayFlowerEvent = tValentinesDay2018_Data["Stc"]["Event"][16]
	local nDayFlowerData = tValentinesDay2018_Data["Stc"]["Data"][16]
	-- 判断是否隔天
	if Task_StcInterval(nDayFlowerEvent, nDayFlowerData, 1, 4) then
		Task_SetStatistic(nDayFlowerEvent, nDayFlowerData, 0, 1)
		Task_SetStcTimestamp(nDayFlowerEvent, nDayFlowerData, 0)
	end
	-- 增加储存的魅力值  增加每日鲜花提交值
	if RewardTemplate_UseItem(tBagItem) then
		Task_AddStatistic(nSaveEvent, nSaveData, nGetGlamour, 1)
		Task_SetStcTimestamp(nSaveEvent, nSaveData, 0)
		-- 物品提交数量增加
		for i = 1, #tBagItem["DeleteItem"] do
			local nDelItemId = tBagItem["DeleteItem"][i]["Id"]
			local nDelItemNum = tBagItem["DeleteItem"][i]["ItemNum"]
			local nItemStc = tValentinesDay2018_Data["ItemStc"][nDelItemId]
			local nItemEvent = tValentinesDay2018_Data["Stc"]["Event"][nItemStc]
			local nItemData = tValentinesDay2018_Data["Stc"]["Data"][nItemStc]
			local nItemNum = nDelItemNum * tValentinesDay2018_Data["ItemNum"][nDelItemId]
			Task_AddStatistic(nItemEvent, nItemData, nItemNum, 1)
			Task_SetStcTimestamp(nItemEvent, nItemData, 0)
		end
		
		Task_AddStatistic(nDayFlowerEvent, nDayFlowerData, nFlowerGlamourSum, 1)
		Task_SetStcTimestamp(nDayFlowerEvent, nDayFlowerData, 0)
	end
	local nSaveNum = Get_UserStatisticValue(nSaveEvent, nSaveData)
	tNpcGossip[nNpcId]["Text313"] = string.format(tValentinesDay2018_Text[23097]["Text313"], nSaveNum)
	LinkNpcGossipFunc_New(nNpcId, "3-1")
end

-- 判断玩家背包中的材料
function ValentinesDay2018_ChkBagItem()
	local tBagItem = CommonFunc_Copy(tValentinesDay2018_Reward["Submission"])
	local nNumSign = 0
	local nGetGlamour = 0
	local fItemCheck = false
	local nFlowerGlamourSum = 0
	-- 判断材料
	for i = 1, 30 do
		-- 判断玩家是否拥有该物品
		local nItemId = tValentinesDay2018_Data["ExchangeItemId"][i]
		local nItemNum = Get_CountItemType(nItemId, 0)
		local nFlowerGlamour = 0
		-- 判断可提交数量（鲜花）
		nItemNum, nFlowerGlamour = ValentinesDay2018_ChkSubAll_FlowerChk(nItemId, nItemNum)
		if nItemNum > 0 then
			-- 删除材料表赋值
			nNumSign = nNumSign + 1
			tBagItem["DeleteItem"][nNumSign] = {}
			tBagItem["DeleteItem"][nNumSign]["Id"] = nItemId
			tBagItem["DeleteItem"][nNumSign]["ItemNum"] = nItemNum
			-- 可得魅力值赋值
			nGetGlamour = nGetGlamour + tValentinesDay2018_Data["ExchangeGlamour"][nItemId] * nItemNum
			-- 鲜花魅力值赋值
			nFlowerGlamourSum = nFlowerGlamourSum + nFlowerGlamour
		end
	end
	-- 判断是否拥有材料
	if nNumSign > 0 then
		fItemCheck = true
	end
	return fItemCheck, tBagItem, nGetGlamour, nFlowerGlamourSum
end

-- 判断玩家当日是否提交鲜花超过4000魅力之星
function ValentinesDay2018_ChkSubAll_FlowerChk(nItemId, nItemNum)
	if nItemNum <= 0 then
		return 0, 0
	end
	local nDayFlowerEvent = tValentinesDay2018_Data["Stc"]["Event"][16]
	local nDayFlowerData = tValentinesDay2018_Data["Stc"]["Data"][16]
	-- 判断是否隔天
	if Task_StcInterval(nDayFlowerEvent, nDayFlowerData, 1, 4) then
		Task_SetStatistic(nDayFlowerEvent, nDayFlowerData, 0, 1)
		Task_SetStcTimestamp(nDayFlowerEvent, nDayFlowerData, 0)
	end
	local nDayFlowerGlamour = Get_UserStatisticValue(nDayFlowerEvent, nDayFlowerData)
	
	-- 判断是否是鲜花
	if nItemId >= tValentinesDay2018_Data["ExchangeItemId"][26] and nItemId <= tValentinesDay2018_Data["ExchangeItemId"][15] then
		-- 判断是否达到上限
		if nDayFlowerGlamour >= tValentinesDay2018_Data["FlowerGlamourNum"] then
			return 0, 0
		else
			return ValentinesDay2018_ChkSubAll_FlowerCanSubNum(nItemId, nItemNum)
		end
	else
		return nItemNum, 0
	end
end




-- 获取可添加的鲜花数量
function ValentinesDay2018_ChkSubAll_FlowerCanSubNum(nItemId, nItemNum)
	local nDayFlowerEvent = tValentinesDay2018_Data["Stc"]["Event"][16]
	local nDayFlowerData = tValentinesDay2018_Data["Stc"]["Data"][16]
	-- 判断是否隔天
	if Task_StcInterval(nDayFlowerEvent, nDayFlowerData, 1, 4) then
		Task_SetStatistic(nDayFlowerEvent, nDayFlowerData, 0, 1)
		Task_SetStcTimestamp(nDayFlowerEvent, nDayFlowerData, 0)
	end
	local nDayFlowerGlamour = Get_UserStatisticValue(nDayFlowerEvent, nDayFlowerData)
	
	local nFlowerNum = 0
	local nFlowerGlamour = 0
	for i = 1, nItemNum do
		local nGetGlamour = nDayFlowerGlamour + tValentinesDay2018_Data["ExchangeGlamour"][nItemId] * i
		if nGetGlamour <= tValentinesDay2018_Data["FlowerGlamourNum"] then
			nFlowerNum = i
			nFlowerGlamour = tValentinesDay2018_Data["ExchangeGlamour"][nItemId] * i
		end
	end
	return nFlowerNum, nFlowerGlamour
end

-- 新增提交材料
function ValentinesDay2018_SubmissionMoneyCheck(nNpcId, nIndex)
	-- 判断是否在活动时间中
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	-- 判断是金币还是赠点
	if nIndex >= 1 and nIndex <= 2 then
		local nNeedMoney = tValentinesDay2018_Data["ItemNum"][nIndex]
		if not User_CanPutMoney2Bag(-nNeedMoney) then
			Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["HaveNotEnoughItem"])
			return
		end
		tNpcGossip[nNpcId]["Text361"] = string.format(tValentinesDay2018_Text[23097]["Text361"], nNeedMoney)
		tNpcGossip[nNpcId]["OptionFunc361"] = "ValentinesDay2018_SubmissionMoney</N>23097</N>"  .. nIndex
		LinkNpcGossipFunc_New(nNpcId, "3-6")
	elseif nIndex >= 3 and nIndex <= 4 then
		local nNeedEMoneyMono = tValentinesDay2018_Data["ItemNum"][nIndex]
		if Get_UserMonoEMoney() < nNeedEMoneyMono  then
			Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["HaveNotEnoughItem"])
			return
		end
		tNpcGossip[nNpcId]["Text371"] = string.format(tValentinesDay2018_Text[23097]["Text371"], nNeedEMoneyMono)
		tNpcGossip[nNpcId]["OptionFunc371"] = "ValentinesDay2018_SubmissionMoney</N>23097</N>" .. nIndex
		LinkNpcGossipFunc_New(nNpcId, "3-7")
	end
end

-- 提交单项材料
function ValentinesDay2018_SubmissionMoney(nNpcId, nIndex)
	-- 判断是否在活动时间中
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	-- 提交换成魅力值储存   等制作的时候加到魅力值掩码
	local nSaveEvent =  tValentinesDay2018_Data["Stc"]["Event"][15]
	local nSaveData =  tValentinesDay2018_Data["Stc"]["Data"][15]
	-- 上交的材料赋值
	local nItemStc = tValentinesDay2018_Data["ItemStc"][nIndex]
	local nItemEvent = tValentinesDay2018_Data["Stc"]["Event"][nItemStc]
	local nItemData = tValentinesDay2018_Data["Stc"]["Data"][nItemStc]
	-- 判断是金币还是赠点
	if nIndex <= 2 then
		local nNeedMoney = tValentinesDay2018_Data["ItemNum"][nIndex]
		if not (User_CanPutMoney2Bag(-nNeedMoney) and User_AddMoney(-nNeedMoney)) then
			Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["HaveNotEnoughItem"])
			return
		end
		Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["SpendLog"], nIndex, nNeedMoney))
	else
		local nNeedEMoneyMono = tValentinesDay2018_Data["ItemNum"][nIndex]
		if not ((Get_UserMonoEMoney() > nNeedEMoneyMono) and User_AddEMoneyMono(-nNeedEMoneyMono)) then
			Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["HaveNotEnoughItem"])
			return
		end
		Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["SpendLog"], nIndex, nNeedEMoneyMono))
	end
	
	-- 增加储存的魅力值
	local nGetGlamour = tValentinesDay2018_Data["ExchangeGlamour"][nIndex]
	Task_AddStatistic(nSaveEvent, nSaveData, nGetGlamour, 1)
	Task_SetStcTimestamp(nSaveEvent, nSaveData, 0)
	-- 上交数量赋值
	local nItemNum = tValentinesDay2018_Data["ItemNum"][nIndex]
	Task_AddStatistic(nItemEvent, nItemData, nItemNum, 1)
	Task_SetStcTimestamp(nItemEvent, nItemData, 0)
	
	local nSaveNum = Get_UserStatisticValue(nSaveEvent, nSaveData)
	-- 判断金币和赠点
	local nNeedMoney = tValentinesDay2018_Data["ItemNum"][1]
	local nNeedEMoneyMono = tValentinesDay2018_Data["ItemNum"][3]
	local fItemCheck = false
	if User_CanPutMoney2Bag(-nNeedMoney) or (Get_UserMonoEMoney() > nNeedEMoneyMono) then
		fItemCheck = true
	end
	
	-- 判断是否还有可提交材料
	if ValentinesDay2018_ChkBagItem() or fItemCheck then
		tNpcGossip[nNpcId]["Text333"] = string.format(tValentinesDay2018_Text[23097]["Text333"], nSaveNum)
		LinkNpcGossipFunc_New(nNpcId, "3-3")
	else
		tNpcGossip[nNpcId]["Text313"] = string.format(tValentinesDay2018_Text[23097]["Text313"], nSaveNum)
		LinkNpcGossipFunc_New(nNpcId, "3-1")
	end
	
end

-- 单项材料提交判断
function ValentinesDay2018_SubmissionItemCheck(nNpcId, nItemId)
	-- 判断是否在活动时间中
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	-- 判断是否拥有该物品
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["HaveNotEnoughItem"])
		return
	end
	local nItemNum = Get_CountItemType(nItemId, 0)
	-- 重置NPC选项函数
	tNpcGossip[nNpcId]["OptionFunc321"] = "ValentinesDay2018_SubmissionItem</N>23097</N>" .. nItemId .. "</N>1"
	if nItemNum < 5 then
		tNpcGossip[nNpcId]["Option322"] = ""
		tNpcGossip[nNpcId]["OptionFunc322"] = "ValentinesDay2018_SubmissionItem</N>23097</N>" .. nItemId .. "</N>5"
	else
		tNpcGossip[nNpcId]["Option322"] = tValentinesDay2018_Text[23097]["Option322"]
		tNpcGossip[nNpcId]["OptionFunc322"] = "ValentinesDay2018_SubmissionItem</N>23097</N>" .. nItemId .. "</N>5"
	end
	tNpcGossip[nNpcId]["OptionFunc323"] = "ValentinesDay2018_SubmissionItem</N>23097</N>" .. nItemId .. "</N>0"
	LinkNpcGossipFunc_New(nNpcId, "3-2")
end

-- 提交单项材料
function ValentinesDay2018_SubmissionItem(nNpcId, nItemId, nSubItemNum)
	-- 判断是否在活动时间中
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	-- 判断数量 判断是否是提交
	-- local nIndexItemNum = nSubItemNum or Get_CountItemType(nItemId, 0)
	local nIndexItemNum = 0
	local fSubAll = false
	if nSubItemNum > 0 then
		nIndexItemNum = nSubItemNum
	else
		nIndexItemNum = Get_CountItemType(nItemId, 0)
		fSubAll = true
	end
	local nBagItemNum = Get_CountItemType(nItemId, 0)
	if nBagItemNum < nIndexItemNum or nBagItemNum <= 0 then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["HaveNotEnoughItem"])
		return
	end
	-- 判断每日提交鲜花获得魅力之星是否达到上限
	local nCanPutItemNum, nSign = ValentinesDay2018_ChkDaySubmissionFlower(nItemId, nIndexItemNum, fSubAll)
	-- 非鲜花类型1，保持原数量
	if nSign == 1 then
		nIndexItemNum = nCanPutItemNum
	-- 鲜花类型2，当日所得魅力之星已经超过4000
	elseif nSign == 2 then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["HandInLimit"])
		return
	-- 鲜花类型3，保持原数量
	elseif nSign == 3 then
		nIndexItemNum = nCanPutItemNum
	-- 鲜花类型4，赋值可提交数量
	elseif nSign == 4 then
		nIndexItemNum = nCanPutItemNum
	-- 鲜花类型5，提交后超过
	elseif nSign == 5 then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["HandInLimit"])
		return
	end
	local tBagItem = CommonFunc_Copy(tValentinesDay2018_Reward["Submission"])
	-- 删除材料表赋值
	tBagItem["DeleteItem"][1] = {}
	tBagItem["DeleteItem"][1]["Id"] = nItemId
	tBagItem["DeleteItem"][1]["ItemNum"] = nIndexItemNum
	-- 可得魅力值赋值
	local nGetGlamour = tValentinesDay2018_Data["ExchangeGlamour"][nItemId] * nIndexItemNum
	-- 提交换成魅力值储存   等制作的时候加到魅力值掩码
	local nSaveEvent =  tValentinesDay2018_Data["Stc"]["Event"][15]
	local nSaveData =  tValentinesDay2018_Data["Stc"]["Data"][15]
	-- 上交的材料赋值
	local nItemStc = tValentinesDay2018_Data["ItemStc"][nItemId]
	local nItemEvent = tValentinesDay2018_Data["Stc"]["Event"][nItemStc]
	local nItemData = tValentinesDay2018_Data["Stc"]["Data"][nItemStc]
	-- 增加储存的魅力值
	if RewardTemplate_UseItem(tBagItem) then
		Task_AddStatistic(nSaveEvent, nSaveData, nGetGlamour, 1)
		Task_SetStcTimestamp(nSaveEvent, nSaveData, 0)
		-- 上交数量赋值
		local nItemNum = nIndexItemNum * tValentinesDay2018_Data["ItemNum"][nItemId]
		Task_AddStatistic(nItemEvent, nItemData, nItemNum, 1)
		Task_SetStcTimestamp(nItemEvent, nItemData, 0)
		-- 如果提交的是鲜花，增加当日提交鲜花魅力值
		if nSign~= 1 then
			local nDayFlowerEvent = tValentinesDay2018_Data["Stc"]["Event"][16]
			local nDayFlowerData = tValentinesDay2018_Data["Stc"]["Data"][16]
			-- 判断是否隔天
			if Task_StcInterval(nDayFlowerEvent, nDayFlowerData, 1, 4) then
				Task_SetStatistic(nDayFlowerEvent, nDayFlowerData, 0, 1)
				Task_SetStcTimestamp(nDayFlowerEvent, nDayFlowerData, 0)
			end
			Task_AddStatistic(nDayFlowerEvent, nDayFlowerData, nGetGlamour, 1)
			Task_SetStcTimestamp(nDayFlowerEvent, nDayFlowerData, 0)
		end
	end
	local nSaveNum = Get_UserStatisticValue(nSaveEvent, nSaveData)
	-- 判断金币和赠点
	local nNeedMoney = tValentinesDay2018_Data["ItemNum"][1]
	local nNeedEMoneyMono = tValentinesDay2018_Data["ItemNum"][3]
	local fItemCheck = false
	if User_CanPutMoney2Bag(-nNeedMoney) or (Get_UserMonoEMoney() > nNeedEMoneyMono) then
		fItemCheck = true
	end
	-- 判断是否还有可提交材料
	if ValentinesDay2018_ChkBagItem() or fItemCheck then
		tNpcGossip[nNpcId]["Text333"] = string.format(tValentinesDay2018_Text[23097]["Text333"], nSaveNum)
		LinkNpcGossipFunc_New(nNpcId, "3-3")
	else
		tNpcGossip[nNpcId]["Text313"] = string.format(tValentinesDay2018_Text[23097]["Text313"], nSaveNum)
		LinkNpcGossipFunc_New(nNpcId, "3-1")
	end
	
end

-- 提交单项材料  判断每日提交鲜花获得魅力之星是否达到上限
function ValentinesDay2018_ChkDaySubmissionFlower(nItemId, nNum, fSubAll)
	-- 判断提交的物品是不是花朵
	local nChkFlower = false
	for i = 11, 30 do
		if nItemId == tValentinesDay2018_Data["ExchangeItemId"][i] then
			nChkFlower = true
		end
	end
	if not nChkFlower then
		-- 不是鲜花返回原来数量，类型1
		return nNum, 1
	end
	
	local nDayFlowerEvent = tValentinesDay2018_Data["Stc"]["Event"][16]
	local nDayFlowerData = tValentinesDay2018_Data["Stc"]["Data"][16]
	-- 判断是否隔天
	if Task_StcInterval(nDayFlowerEvent, nDayFlowerData, 1, 4) then
		Task_SetStatistic(nDayFlowerEvent, nDayFlowerData, 0, 1)
		Task_SetStcTimestamp(nDayFlowerEvent, nDayFlowerData, 0)
	end
	-- 判断是否达到上限
	local nDayFlowerGlamour = Get_UserStatisticValue(nDayFlowerEvent, nDayFlowerData)
	if nDayFlowerGlamour >= tValentinesDay2018_Data["FlowerGlamourNum"] then
		-- 是鲜花，并且当日所得魅力之星已经超过4000，返回数量0，类型2
		return 0, 2
	end
	-- 判断增加魅力之星之后是否超过上限
	local nGlamourAddAfter = nDayFlowerGlamour + tValentinesDay2018_Data["ExchangeGlamour"][nItemId] * nNum
	
	if nGlamourAddAfter <= tValentinesDay2018_Data["FlowerGlamourNum"] then
		-- 是鲜花，提交之后没超过当天上限，返回正常数量，类型3
		return nNum, 3
	end
	-- 判断是否一键提交
	if fSubAll then
		-- 若超过上限  判断能添加多少数量
		local nCanPutNum = 0
		-- local fChkSign = false
		for j = 1, nNum do
			local nAddAfter = nDayFlowerGlamour + tValentinesDay2018_Data["ExchangeGlamour"][nItemId] * j
			if nAddAfter <= tValentinesDay2018_Data["FlowerGlamourNum"] then
				nCanPutNum = j
				-- fChkSign = true
			end
		end
		-- 是鲜花，提交后超过上限，返回可提交的数量，类型4  一键提交
		if nCanPutNum == 0 then
			return 0, 5
		else
			return nCanPutNum, 4
		end
		
	else
		-- 是鲜花，提交后超过上限，返回0，类型5  非一键提交
		return 0, 5
	end
	
end



-- 开始制作浪漫情人匣
function ValentinesDay2018_StartFabricationBox(nNpcId)
	-- 判断是否在活动时间中
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	-- 判断玩家是否有往里面放材料
	local nSaveEvent =  tValentinesDay2018_Data["Stc"]["Event"][15]
	local nSaveData =  tValentinesDay2018_Data["Stc"]["Data"][15]
	local nSaveGlamour = Get_UserStatisticValue(nSaveEvent, nSaveData)
	if nSaveGlamour <= 0 then
		LinkNpcGossipFunc_New(nNpcId, "3-4")
		return
	end
	-- 制作情人匣  原本存储的魅力值清空
	Task_SetStatistic(nSaveEvent, nSaveData, 0, 1)
	Task_SetStcTimestamp(nSaveEvent, nSaveData, 0)
	-- 上交材料数量清空
	for i = 18, 26 do
		local nItemEvent = tValentinesDay2018_Data["Stc"]["Event"][i]
		local nItemData = tValentinesDay2018_Data["Stc"]["Data"][i]
		Task_SetStatistic(nItemEvent, nItemData, 0, 1)
		Task_SetStcTimestamp(nItemEvent, nItemData, 0)
	end
	-- 原本储存的魅力值加到玩家魅力值上
	ValentinesDay2018_SetInfoToRank(nSaveGlamour)
	-- 增加每日获得的魅力值
	-- 每日获得的魅力值
	local nDayGlamourEvent = tValentinesDay2018_Data["Stc"]["Event"][13]
	local nDayGlamourData = tValentinesDay2018_Data["Stc"]["Data"][13]
	-- 判断是否隔天
	if Task_StcInterval(nDayGlamourEvent, nDayGlamourData, 1, 4) then
		Task_SetStatistic(nDayGlamourEvent, nDayGlamourData, 0, 1)
		Task_SetStcTimestamp(nDayGlamourEvent, nDayGlamourData, 0)
	end
	-- local nDayGlamourBefore = Get_UserStatisticValue(nDayGlamourEvent, nDayGlamourData)
	Task_AddStatistic(nDayGlamourEvent, nDayGlamourData, nSaveGlamour, 1)
	Task_SetStcTimestamp(nDayGlamourEvent, nDayGlamourData, 0)
	-- 判断播报
	if nSaveGlamour >= 1000 then
		local sUserName = Get_UserName()
		Sys_SystemBroadcast(string.format(tValentinesDay2018_Text["Broadcast"]["MakeBoxOver"], sUserName))
	end
	-- local nDayGlamourAfter = Get_UserStatisticValue(nDayGlamourEvent, nDayGlamourData)
	-- 增加每日提交魅力值的表
	ValentinesDay2018_DaySubmissionTable(nSaveGlamour)
	-- 判断玩家是否能领取每日魅力值礼包
	ValentinesDay2018_ChkGlamourReward()
	-- 掏宝箱
	ValentinesDay2018_GetBoxReward()
	-- 判断是否有可领取的魅力成长礼
	ValentinesDay2018_CanRewardItemChk()
	-- 对白赋值
	tNpcGossip[nNpcId]["Text355"] = string.format(tValentinesDay2018_Text[23097]["Text355"], nSaveGlamour)
	LinkNpcGossipFunc_New(nNpcId, "3-5")
end

-- 判断是否有可领取的魅力成长礼
function ValentinesDay2018_CanRewardItemChk()
	-- 玩家领取的魅力成长礼
	local nRewardEvent = tValentinesDay2018_Data["Stc"]["Event"][11]
	local nRewardData = tValentinesDay2018_Data["Stc"]["Data"][11]
	local nHaveReward = Get_UserStatisticValue(nRewardEvent, nRewardData)
	if nHaveReward >= 8 then
		return
	end
	local nNextSign = tValentinesDay2018_Data["CharmRewardNeed"][nHaveReward + 1]
	-- 玩家魅力之星
	local nUserCharmEvent = tValentinesDay2018_Data["Stc"]["Event"][8]
	local nUserCharmData = tValentinesDay2018_Data["Stc"]["Data"][8]
	local nUserCharmNum = Get_UserStatisticValue(nUserCharmEvent, nUserCharmData)
	-- 判断是否可领取下一级奖励
	if nUserCharmNum < nNextSign then
		return
	else
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["NewReward"], "ValentinesDay2018_GotoFindQing", nil)
		return
	end
end

-- 增加魅力值之后写入排行榜
function ValentinesDay2018_SetInfoToRank(nSaveGlamour)
	-- 原本储存的魅力值加到玩家魅力值上
	local nUserCharmEvent = tValentinesDay2018_Data["Stc"]["Event"][8]
	local nUserCharmData = tValentinesDay2018_Data["Stc"]["Data"][8]
	
	if not Task_AddStatistic(nUserCharmEvent, nUserCharmData, nSaveGlamour, 1) then
		return
	end
	Task_SetStcTimestamp(nUserCharmEvent, nUserCharmData, 0)
	local nUserCharmNum = Get_UserStatisticValue(nUserCharmEvent, nUserCharmData)
	-- 记录当前魅力值总数
	Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["MLLog"], nUserCharmNum))
	
	-- 增加排行榜
	local nUserSex = ValentinesDay2018_GetUserLoadSex()
	local nIndex = 0
	if nUserSex == 1 then
		nIndex = tValentinesDay2018_Data["nManIndex"]
	elseif nUserSex == 2 then
		nIndex = tValentinesDay2018_Data["nWomanIndex"]
	end
	
	-- 判断是否在授课时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["LectureTime"]) then
		return
	end
	
	local nUserTopRankBefore = RankingFunc_GetUserInRank(nIndex)
	RankingFunc_SetInfo(nIndex, nUserCharmNum)
	local nUserTopRankAfter = RankingFunc_GetUserInRank(nIndex)
	-- 顶替前三名则播报
	if (nUserTopRankBefore > 3 or nUserTopRankBefore == 0) then
		if (nUserTopRankAfter >= 1 and nUserTopRankAfter <= 3) then
			local sUserName = Get_UserName()
			if nUserSex == 1 then
				Sys_SystemBroadcast(string.format(tValentinesDay2018_Text["Broadcast"]["ManTopChange"], sUserName))
			elseif nUserSex == 2 then
				Sys_SystemBroadcast(string.format(tValentinesDay2018_Text["Broadcast"]["WomanTopChange"], sUserName))
			end
		end
	end
end

-- 增加每日提交魅力值的表
function ValentinesDay2018_DaySubmissionTable(nSaveGlamour)
	-- local nGlamourBefore = 0
	local nGlamourAfter = 0
	-- 取增加前的量级
	-- for i = 1, 4 do
		-- if nDayGlamourBefore >= tValentinesDay2018_Data["DayBoxReward"][i]["NeedGlamour"] then
			-- nGlamourBefore = i
		-- end
	-- end
	-- 取增加后的量级
	for j = 1, 4 do
		if nSaveGlamour >= tValentinesDay2018_Data["DayBoxReward"][j]["NeedGlamour"] then
			nGlamourAfter = j
		end
	end
	-- 增加表数据
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	local nTableNum = tValentinesDay2018_DayPutGlamour["Num"] + 1
	tValentinesDay2018_DayPutGlamour["Name"][nTableNum] = sUserName
	tValentinesDay2018_DayPutGlamour["BoxLev"][nTableNum] = nGlamourAfter
	-- table.insert(tValentinesDay2018_DayPutGlamour["Name"], sUserName)
	-- table.insert(tValentinesDay2018_DayPutGlamour["BoxLev"], nGlamourAfter)
	tValentinesDay2018_DayPutGlamour["Num"] = tValentinesDay2018_DayPutGlamour["Num"] + 1
end


-- 判断玩家是否能领取每日魅力值礼包
function ValentinesDay2018_ChkGlamourReward(nNpcId)
	-- 判断是否在活动时间中
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	-- 背包不足，暂不领取
	-- if not RewardTemplate_CheckSpace(tValentinesDay2018_Reward[3310206]) then
		-- return
	-- end
	-- 每日获得的魅力值
	local nDayGlamourEvent = tValentinesDay2018_Data["Stc"]["Event"][13]
	local nDayGlamourData = tValentinesDay2018_Data["Stc"]["Data"][13]
	-- 判断是否隔天
	if Task_StcInterval(nDayGlamourEvent, nDayGlamourData, 1, 4) then
		Task_SetStatistic(nDayGlamourEvent, nDayGlamourData, 0, 1)
		Task_SetStcTimestamp(nDayGlamourEvent, nDayGlamourData, 0)
	end
	-- 每日是否领取奖励
	local nDayRewardEvent = tValentinesDay2018_Data["Stc"]["Event"][14]
	local nDayRewardData = tValentinesDay2018_Data["Stc"]["Data"][14]
	-- 判断是否隔天
	if Task_StcInterval(nDayRewardEvent, nDayRewardData, 1, 4) then
		Task_SetStatistic(nDayRewardEvent, nDayRewardData, 0, 1)
		Task_SetStcTimestamp(nDayRewardEvent, nDayRewardData, 0)
	end
	-- 判断条件是否满足  满足则给奖励
	local nDayGlamour = Get_UserStatisticValue(nDayGlamourEvent, nDayGlamourData)
	local nDayReward = Get_UserStatisticValue(nDayRewardEvent, nDayRewardData)
	if nDayReward > 0 then
		-- Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["HaveGet"])
		return
	end
	if nDayGlamour >= tValentinesDay2018_Data["DayGlamourNum"] then
		Task_SetStatistic(nDayRewardEvent, nDayRewardData, 1, 1)
		Task_SetStcTimestamp(nDayRewardEvent, nDayRewardData, 0)
		-- 发送邮件
		local nNowTime = os.time()
		local nEndTime = os.time({day=21, month=8, year=2019, hour=23, minute=59, second=59}) 
		-- 获取距离结束时间的天数
		local nExistDay = math.ceil((nEndTime - nNowTime)/86400)
		local nUserId = Get_UserId()
		local sSender = tValentinesDay2018_Mail["TaoGift"]["Sender"]
		local sTitle = tValentinesDay2018_Mail["TaoGift"]["Title"]
		local sContent = tValentinesDay2018_Mail["TaoGift"]["Content"]
		local nActionId = tValentinesDay2018_Mail["TaoGift"]["ActionId"]
		Sys_SendMail(nUserId, 0, 0, nActionId, 0, nExistDay, sSender, sTitle, sContent)
		-- RewardTemplate_UseItem(tValentinesDay2018_Reward[3310206])
	-- else
		-- Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["NotEnough"], "LinkNpcGossipFunc_New</N>" .. nNpcId .. "</S>" .. "1-4", nil)
		-- return
	end
end

-- 领取鹊仙居
function ValentinesDay2018_BuildTheQueRoom(nNpcId)
	-- 判断是否在活动时间中
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tValentinesDay2018_Reward[3310214]) then
		LinkNpcGossipFunc_New(nNpcId, "3-2")
		return
	end
	-- 设置为已领取状态
	if RewardTemplate_UseItemAndMsg(tValentinesDay2018_Reward[3310214]) then
		local nGetEvent = tValentinesDay2018_Data["Stc"]["Event"][12]
		local nGetData = tValentinesDay2018_Data["Stc"]["Data"][12]
		Task_SetStatistic(nGetEvent, nGetData, 1, 1)
		Task_SetStcTimestamp(nGetEvent, nGetData, 0)
		LinkNpcGossipFunc_New(nNpcId, "3-1")
	end
end

-- 补领收纳袋
function ValentinesDay2018_RewardStoragePackage(nNpcId)
	-- 判断是否在活动时间中
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tValentinesDay2018_Reward[3310214]) then
		LinkNpcGossipFunc_New(nNpcId, "3-2")
		return
	end
	-- 领取收纳袋
	if not Item_ChkItem(tValentinesDay2018_Data["RoomItem"]) then
		RewardTemplate_UseItemAndMsg(tValentinesDay2018_Reward[3310214])
		LinkNpcGossipFunc_New(nNpcId, "3-3")
	end
end

-- 进入鹊仙居
function ValentinesDay2018_MoveIntoQueRoomChk(nNpcId)
	-- 判断是否在活动时间中
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	-- 获取玩家副本信息
	local nCounterpartId, nOwnerId, nSign = ValentinesDay2018_ChkUserTeam()
	if not nCounterpartId then
		return
	end
	-- 进入副本
	local nInstanceType = tValentinesDay2018_Data["Map"]["InstanceType"]
	local nUserId = Get_UserId()
	if User_EnterInstance(nInstanceType, 0, 0, 0, nUserId, nCounterpartId) then
		if Get_MapDoc() == tValentinesDay2018_Data["Map"]["MapDoc"] then
			local nMapId = Get_UserMapId()
			-- 设置拥有地图掩码
			if nUserId == nOwnerId then
				local nInstanceEvent = tValentinesDay2018_Data["Stc"]["Event"][17]
				local nInstanceData = tValentinesDay2018_Data["Stc"]["Data"][17]
				Task_SetStatistic(nInstanceEvent, nInstanceData, nMapId, 1)
				Task_SetStcTimestamp(nInstanceEvent, nInstanceData, 0)
			end
			-- 首个进入，创建地效
			if nSign then
				ValentinesDay2018_CreatMapEffect(nMapId)
			end
			-- 弹出提示
			Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["MoveIntoQue"], "LinkItemGossipFunc_New</N>3310214</S>" .. "1-1", nil)
		end
	end
end

-- 获取玩家副本信息
function ValentinesDay2018_ChkUserTeam()
	-- 判断玩家是否是组队状态
	local nTeamNum = Get_UserTeamNumbers()
	local nUserId = Get_UserId()
	if nTeamNum <= 1 then
		if tValentinesDay2018_Counterpart[nUserId] == nil then
			return ValentinesDay2018_ChkCreatCounterpart(nUserId), nUserId, true
		else
			return tValentinesDay2018_Counterpart[nUserId], nUserId, false
		end
	elseif nTeamNum > 1 then
		-- 获取队长ID
		local nTeamId = Get_UserTeamId(nUserId)
		User_TeamExeFuncByTeamer(3, "ValentinesDay2018_GetLeaderId</N>" .. nTeamId)
		local nLeaderId = tValentinesDay2018_TeamLeader[nTeamId]
		if nLeaderId == nil then
			return false, nUserId, false
		else
			if tValentinesDay2018_Counterpart[nLeaderId] == nil then
				return ValentinesDay2018_ChkCreatCounterpart(nLeaderId), nLeaderId, true
			else
				return tValentinesDay2018_Counterpart[nLeaderId], nLeaderId, false
			end
		end
	end
end

--获取队长的userid
function ValentinesDay2018_GetLeaderId(nTeamId)
	local nUserId = Get_UserId()
	--不是队长退出
	if not User_IsTeamLeader(nUserId) then
		return
	end
	tValentinesDay2018_TeamLeader[nTeamId] = nUserId
end

-- 创建副本
function ValentinesDay2018_ChkCreatCounterpart(nUserId)
	-- 创建副本
	local nInstanceType = tValentinesDay2018_Data["Map"]["InstanceType"]
	local nInstanceId = User_CreateInstance(nInstanceType)
	-- 重置副本表
	tValentinesDay2018_Counterpart[nUserId] = nInstanceId
	return nInstanceId
end

-- 创建副本新增地效
function ValentinesDay2018_CreatMapEffect(nMapId)
	-- 循环新增地效
	for i = 1, 30 do
		local nSetEvent = tValentinesDay2018_Effect["PutStc"]["Event"][i]
		local nSetData = tValentinesDay2018_Effect["PutStc"]["Data"][i]
		local nEffectInfo = Get_UserStatisticValue(nSetEvent, nSetData)
		if nEffectInfo > 0 then
			-- 获取地效坐标
			local nEffectId, nPosX, nPosY = ValentinesDay2018_DecodeMapEffect(nEffectInfo)
			if nEffectId >= 1 and nEffectId <= 27 then
				-- 创建地效
				local nTrapType = tValentinesDay2018_Effect["TrapType"][nEffectId]
				local nLook = tValentinesDay2018_Effect["TrapLook"][nEffectId]
				Trap_CreateMapTrap(nTrapType, nLook, 0, nMapId, nPosX, nPosY, 0, 0)
			end
		end
	end
end

-- 获取地效坐标编号
function ValentinesDay2018_DecodeMapEffect(nEffectInfo)
	local nEffectId = 0
	local nPosX = 0
	local nPosY = 0
	nEffectId = math.floor(nEffectInfo / 1000000)
	nPosX = math.floor((nEffectInfo % 1000000) / 1000)
	nPosY = math.floor(nEffectInfo % 1000)
	return nEffectId, nPosX, nPosY
end

-- 删除副本表信息
function ValentinesDay2018_DelInstance(idInstance)
	for nOwnerId , nCounterpartId in ipairs(tValentinesDay2018_Counterpart) do
		if nCounterpartId == idInstance then
			tValentinesDay2018_Counterpart[nOwnerId] = nil
			break
		end
	end
end

-- 获取地效数量
function ValentinesDay2018_GetEffectNum(nSign)
	-- 判断所有已放置的地效
	local nEffectNum = 0
	for i = 1, 30 do
		local nEffectEvent = tValentinesDay2018_Effect["PutStc"]["Event"][i]
		local nEffectData = tValentinesDay2018_Effect["PutStc"]["Data"][i]
		local nEffectInfo = Get_UserStatisticValue(nEffectEvent, nEffectData)
		local nEffectId = ValentinesDay2018_DecodeMapEffect(nEffectInfo)
		if nEffectId == nSign then
			nEffectNum = nEffectNum + 1
		end
	end
	return nEffectNum
end



-- 鹊仙居奇珍收纳袋使用判断
function ValentinesDay2018_MagpiePackageTimeChk(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["ItemTimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	-- 判断是否在鹊仙居使用
	-- if not (Get_MapDoc() == tValentinesDay2018_Data["Map"]["MapDoc"]) then
		-- Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["MoveToQue"], "ValentinesDay2018_MoveToQue", nil)
		-- return
	-- end
	
	LinkItemGossipFunc_New(nItemId, "1-1")
end

-- 寻路到鹊仙居
function ValentinesDay2018_MoveToQue()
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		return
	end
	
	local nPosX = tValentinesDay2018_Data["NpcId"][3]["PosX"]
	local nPosY = tValentinesDay2018_Data["NpcId"][3]["PosY"]
	local nMapId = tValentinesDay2018_Data["NpcId"]["MapId"]
	Sys_GotoSomeWhere(nPosX, nPosY, nMapId, 0)
end

-- 判断是否拥有该光效
function ValentinesDay2018_ChkHaveEffect(nItemId, nEffectType)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["ItemTimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	local fEffectChk = false
	-- 判断是否收纳光效
	for i = 1, #tValentinesDay2018_Effect["CollectionStc"][nEffectType] do
		local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][nEffectType][i]["Event"]
		local nEffectData = tValentinesDay2018_Effect["CollectionStc"][nEffectType][i]["Data"]
		local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
		if nEffectNum > 0 then
			fEffectChk = true
			break
		end
	end
	if fEffectChk then
		LinkItemGossipFunc_New(nItemId, "5-" .. nEffectType)
		return
	else
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["HaveNotTreasure"])
		return
	end
end

-- 判断拥有的所有光效
function ValentinesDay2018_ChkAllHaveEffect(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["ItemTimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	-- 判断是否在鹊仙居使用
	if not (Get_MapDoc() == tValentinesDay2018_Data["Map"]["MapDoc"]) then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["MoveToQue"], "ValentinesDay2018_MoveToQue", nil)
		return
	end
	local fEffectChk = false
	-- 判断是否拥有光效
	for j = 1, 4 do
		for i = 1, #tValentinesDay2018_Effect["CollectionStc"][j] do
			local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][j][i]["Event"]
			local nEffectData = tValentinesDay2018_Effect["CollectionStc"][j][i]["Data"]
			local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
			if nEffectNum > 0 then
				fEffectChk = true
				break
			end
		end
	end
	if fEffectChk then
		LinkItemGossipFunc_New(nItemId, "4-1")
		return
	else
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["HaveNotAllTreasure"])
		return
	end
end

-- 放置光效判断
function ValentinesDay2018_BestowTheEffectChk(nItemId, nEffectType, nEffectSign)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["ItemTimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	-- 判断是否在鹊仙居内放置
	if not (Get_MapDoc() == tValentinesDay2018_Data["Map"]["MapDoc"]) then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["ErroMap"])
		return
	end
	-- 判断是否是在自己的副本内放置
	local nInstanceEvent = tValentinesDay2018_Data["Stc"]["Event"][17]
	local nInstanceData = tValentinesDay2018_Data["Stc"]["Data"][17]
	local nOwnerMap = Get_UserStatisticValue(nInstanceEvent, nInstanceData)
	if not (nOwnerMap == Get_UserMapId()) then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["NotSelfMap"])
		return
	end
	-- 判断是否拥有光效
	local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][nEffectType][nEffectSign]["Event"]
	local nEffectData = tValentinesDay2018_Effect["CollectionStc"][nEffectType][nEffectSign]["Data"]
	local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
	if nEffectNum <= 0 then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["HaveNotEffect"])
		return
	end
	-- 判断周围是否有光效，判断已放置数量
	local nPosX = Get_UserPositionX()
	local nPosY = Get_UserPositionY()
	local fCanPutEffect, nEffectPutNum = ValentinesDay2018_ChkEffectAround(nPosX, nPosY)
	-- 数量超过30个
	if nEffectPutNum >= tValentinesDay2018_Effect["Num"] then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["OverNum"])
		return
	end
	-- 3格范围内已放置光效
	if fCanPutEffect then
		Sys_MsgBox(tValentinesDay2018_Text["SysTalk"]["PlacementFalse"])
		return
	end
	
	-- 放置光效
	ValentinesDay2018_BestowTheEffect(nItemId, nEffectType, nEffectSign)
end

-- 放置光效
function ValentinesDay2018_BestowTheEffect(nItemId, nEffectType, nEffectSign)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["ItemTimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	-- 光效数量减1
	local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][nEffectType][nEffectSign]["Event"]
	local nEffectData = tValentinesDay2018_Effect["CollectionStc"][nEffectType][nEffectSign]["Data"]
	local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
	if nEffectNum <= 0 then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["HaveNotEffect"])
		return
	end
	Task_SetStatistic(nEffectEvent, nEffectData, nEffectNum - 1, 1)
	Task_SetStcTimestamp(nEffectEvent, nEffectData, 0)
	-- 创建地效
	local nMapId = Get_UserMapId()
	local nPosX = Get_UserPositionX()
	local nPosY = Get_UserPositionY()
	local nTrapType = tValentinesDay2018_Effect["HavePut"][nEffectType][nEffectSign]["TrapType"]
	local nTrapSign = tValentinesDay2018_Effect["HavePut"][nEffectType][nEffectSign]["TypeSign"]
	local nLook = tValentinesDay2018_Effect["HavePut"][nEffectType][nEffectSign]["Look"]
	Trap_CreateMapTrap(nTrapType, nLook, 0, nMapId, nPosX, nPosY, 0, 0)
	User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["PlacementSuccess"])
	-- 记录光效掩码
	local nSetEffectInfo = ValentinesDay2018_EffectInfoSet(nTrapSign, nPosX, nPosY)
	for i = 1, 30 do
		local nSetEvent = tValentinesDay2018_Effect["PutStc"]["Event"][i]
		local nSetData = tValentinesDay2018_Effect["PutStc"]["Data"][i]
		local nEffectInfo = Get_UserStatisticValue(nSetEvent, nSetData)
		if nEffectInfo <= 0 then
			Task_SetStatistic(nSetEvent, nSetData, nSetEffectInfo, 1)
			Task_SetStcTimestamp(nSetEvent, nSetData, 0)
			break
		end
	end
	LinkItemGossipFunc_New(nItemId, "1-1")
end

-- 光效信息处理
function ValentinesDay2018_EffectInfoSet(nTrapType, nPosX, nPosY)
	local nEffectInfo = 0
	nEffectInfo = nTrapType * 1000000 + nPosX * 1000 + nPosY
	return nEffectInfo
end


-- 判断周围是否有光效，判断已放置数量
function ValentinesDay2018_ChkEffectAround(nPosX, nPosY)
	local nEffectPutNum = 0
	local fCanPutEffect = false
	for i = 1, 30 do
		local nEffectEvent = tValentinesDay2018_Effect["PutStc"]["Event"][i]
		local nEffectData = tValentinesDay2018_Effect["PutStc"]["Data"][i]
		local nEffectInfo = Get_UserStatisticValue(nEffectEvent, nEffectData)
		if nEffectInfo > 0 then
			
			nEffectPutNum = nEffectPutNum + 1
			local nEffectType, nEffectPosX, nEffectPosY = ValentinesDay2018_DecodeMapEffect(nEffectInfo)
			-- local nLength = math.ceil(math.sqrt(math.pow((nPosX - nEffectPosX), 2) + math.pow((nPosY - nEffectPosY), 2)))
			-- 3格范围内已放置光效
			if (math.abs(nPosX - nEffectPosX) <= 3) and (math.abs(nPosY - nEffectPosY) <= 3) then
				fCanPutEffect = true
			end
		end
	end
	return fCanPutEffect, nEffectPutNum
end

-- 收纳奇珍判断
function ValentinesDay2018_RecoveryEffectChk(nItemId, nChkEffectType)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["ItemTimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	-- 判断是否放置该类光效
	for i = 1, 30 do
		local nEffectEvent = tValentinesDay2018_Effect["PutStc"]["Event"][i]
		local nEffectData = tValentinesDay2018_Effect["PutStc"]["Data"][i]
		local nEffectInfo = Get_UserStatisticValue(nEffectEvent, nEffectData)
		if nEffectInfo > 0 then
			local nEffectType = ValentinesDay2018_DecodeMapEffect(nEffectInfo)
			local nEndNum = #tValentinesDay2018_Effect["HavePut"][nChkEffectType]
			local nStartType = tValentinesDay2018_Effect["HavePut"][nChkEffectType][1]["TypeSign"]
			local nEndType = tValentinesDay2018_Effect["HavePut"][nChkEffectType][nEndNum]["TypeSign"]
			if nEffectType >= nStartType and nEffectType <= nEndType then
				LinkItemGossipFunc_New(nItemId, "7-" .. nChkEffectType)
				return
			end
		end
	end
	User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["StorageFalse"])
end

-- 是否放置奇珍判断
function ValentinesDay2018_RecoveryAllEffectChk(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["ItemTimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	-- 判断是否在鹊仙居使用
	if not (Get_MapDoc() == tValentinesDay2018_Data["Map"]["MapDoc"]) then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["MoveToQue"], "ValentinesDay2018_MoveToQue", nil)
		return
	end
	-- 判断是否放置该类光效
	for i = 1, 30 do
		local nEffectEvent = tValentinesDay2018_Effect["PutStc"]["Event"][i]
		local nEffectData = tValentinesDay2018_Effect["PutStc"]["Data"][i]
		local nEffectInfo = Get_UserStatisticValue(nEffectEvent, nEffectData)
		if nEffectInfo > 0 then
			LinkItemGossipFunc_New(nItemId, "6-1")
			return
		end
	end
	Sys_MsgBox(tValentinesDay2018_Text["SysTalk"]["StorageAllFalse"])
end

-- 收纳奇珍
function ValentinesDay2018_RecoveryEffect(nItemId, nChkEffectType, nEffectSign)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["ItemTimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	-- 判断是否在鹊仙居内使用
	if not (Get_MapDoc() == tValentinesDay2018_Data["Map"]["MapDoc"]) then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["NotAtQue"])
		return
	end
	-- 判断是否是在自己的副本内放置
	local nInstanceEvent = tValentinesDay2018_Data["Stc"]["Event"][17]
	local nInstanceData = tValentinesDay2018_Data["Stc"]["Data"][17]
	local nOwnerMap = Get_UserStatisticValue(nInstanceEvent, nInstanceData)
	local nMapId = Get_UserMapId()
	if not (nOwnerMap == nMapId) then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["NotSelfQue"])
		return
	end
	
	-- 判断是否放置该类光效
	local tEffectTable = {}
	local nEffectEvent = 0
	local nEffectData = 0
	local fPutEffect = false
	for i = 1, 30 do
		nEffectEvent = tValentinesDay2018_Effect["PutStc"]["Event"][i]
		nEffectData = tValentinesDay2018_Effect["PutStc"]["Data"][i]
		local nEffectInfo = Get_UserStatisticValue(nEffectEvent, nEffectData)
		if nEffectInfo > 0 then
			local nEffectType = ValentinesDay2018_DecodeMapEffect(nEffectInfo)
			local nChkType = tValentinesDay2018_Effect["HavePut"][nChkEffectType][nEffectSign]["TypeSign"]
			if nEffectType == nChkType then
				fPutEffect = true
				local nTableNum = #tEffectTable + 1
				tEffectTable[nTableNum] = i
			end
		end
	end
	-- 没有该类光效则返回
	if not fPutEffect then
		Sys_MsgBox(tValentinesDay2018_Text["SysTalk"]["StorageFalse"])
		return
	end
	-- 收纳光效
	for j = 1, #tEffectTable do
		local nEffectTypeNum = tEffectTable[j]
		nEffectEvent = tValentinesDay2018_Effect["PutStc"]["Event"][nEffectTypeNum]
		nEffectData = tValentinesDay2018_Effect["PutStc"]["Data"][nEffectTypeNum]
		-- 收起光效，放置掩码清空
		local nTrapType = tValentinesDay2018_Effect["HavePut"][nChkEffectType][nEffectSign]["TrapType"]
		Trap_DelMapTrap(nMapId,nTrapType)
		Task_SetStatistic(nEffectEvent, nEffectData, 0, 1)
		Task_SetStcTimestamp(nEffectEvent, nEffectData, 0)
		-- 拥有奇珍数+1
		local nHaveEffectEvent = tValentinesDay2018_Effect["CollectionStc"][nChkEffectType][nEffectSign]["Event"]
		local nHaveEffectData = tValentinesDay2018_Effect["CollectionStc"][nChkEffectType][nEffectSign]["Data"]
		Task_AddStatistic(nHaveEffectEvent, nHaveEffectData, 1, 1)
		Task_SetStcTimestamp(nHaveEffectEvent, nHaveEffectData, 0)
	end
	User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["StorageSuccess"])
	LinkItemGossipFunc_New(nItemId, "1-1")
end

-- 收纳全部奇珍
function ValentinesDay2018_RecoveryEffectAll(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["ItemTimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	-- 判断是否在鹊仙居内使用
	if not (Get_MapDoc() == tValentinesDay2018_Data["Map"]["MapDoc"]) then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["NotAtQue"])
		return
	end
	-- 判断是否是在自己的副本内放置
	local nInstanceEvent = tValentinesDay2018_Data["Stc"]["Event"][17]
	local nInstanceData = tValentinesDay2018_Data["Stc"]["Data"][17]
	local nOwnerMap = Get_UserStatisticValue(nInstanceEvent, nInstanceData)
	local nMapId = Get_UserMapId()
	if not (nOwnerMap == nMapId) then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["NotSelfQue"])
		return
	end
	-- 判断是否放置光效
	local fPutEffect = false
	for i = 1, 30 do
		nEffectEvent = tValentinesDay2018_Effect["PutStc"]["Event"][i]
		nEffectData = tValentinesDay2018_Effect["PutStc"]["Data"][i]
		local nEffectInfo = Get_UserStatisticValue(nEffectEvent, nEffectData)
		if nEffectInfo > 0 then
			local nEffectType = ValentinesDay2018_DecodeMapEffect(nEffectInfo)
			local nChkEffectType = tValentinesDay2018_Effect["EffectNum"][nEffectType]["EffectType"]
			local nEffectSign = tValentinesDay2018_Effect["EffectNum"][nEffectType]["EffectSign"]
			local nTrapType = tValentinesDay2018_Effect["HavePut"][nChkEffectType][nEffectSign]["TrapType"]
			Trap_DelMapTrap(nMapId,nTrapType)
			-- 已放置光效删除
			fPutEffect = true
			Task_SetStatistic(nEffectEvent, nEffectData, 0, 1)
			Task_SetStcTimestamp(nEffectEvent, nEffectData, 0)
			-- 拥有奇珍数+1
			local nHaveEffectEvent = tValentinesDay2018_Effect["CollectionStc"][nChkEffectType][nEffectSign]["Event"]
			local nHaveEffectData = tValentinesDay2018_Effect["CollectionStc"][nChkEffectType][nEffectSign]["Data"]
			Task_AddStatistic(nHaveEffectEvent, nHaveEffectData, 1, 1)
			Task_SetStcTimestamp(nHaveEffectEvent, nHaveEffectData, 0)
		end
	end
	if fPutEffect then
		Sys_MsgBox(tValentinesDay2018_Text["SysTalk"]["StorageAll"])
	else
		Sys_MsgBox(tValentinesDay2018_Text["SysTalk"]["StorageAllFalse"])
	end
	LinkItemGossipFunc_New(nItemId, "1-1")
end

-- 参观鹊仙居
function ValentinesDay2018_VisitTheQueRoom(nIndex)
	Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["QueRoomExit"])
	return
end

-- 进入花仙阁
function ValentinesDay2018_EnterTheGarden(nNpcId)
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	-- 进入花仙阁
	local nMapId = tValentinesDay2018_Data["Map"]["Garden"]["MapId"]
	local nCellX = tValentinesDay2018_Data["Map"]["Garden"]["MapPosX"]
	local nCellY = tValentinesDay2018_Data["Map"]["Garden"]["MapPosY"]
	User_UserRandBoundTrans(nMapId, nCellX, nCellY, 3, 3, 1)
end

-- 补领花仙精灵
function ValentinesDay2018_ReplacementTheSpirit(nNpcId)
	-- 判断是否在活动时间中
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tValentinesDay2018_Reward[3322680]) then
		return
	end
	-- 领取收纳袋
	if not Item_ChkItem(tValentinesDay2018_Data["RoomItem"]) then
		RewardTemplate_UseItemAndMsg(tValentinesDay2018_Reward[3322680])
	end
end

-- 菜地对白
function ValentinesDay2018_VegetableFieldDialog(nNpcId)
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["SeedOutTime"])
		return
	end
	local nState = tValentinesDay2018_SeedPlainData[nNpcId].State
	-- 空地
	if nState <= 0 then
		-- 重新设置函数值
		tNpcGossip[nNpcId]["OptionFunc111"] = "ValentinesDay2018_GrowVegetables</N>".. nNpcId .."</N>1"
		tNpcGossip[nNpcId]["OptionFunc112"] = "ValentinesDay2018_GrowVegetables</N>".. nNpcId .."</N>2"
		tNpcGossip[nNpcId]["OptionFunc113"] = "ValentinesDay2018_GrowVegetables</N>".. nNpcId .."</N>3"
		tNpcGossip[nNpcId]["OptionFunc114"] = "ValentinesDay2018_GrowVegetables</N>".. nNpcId .."</N>4"
		LinkNpcGossipFunc_New(nNpcId, "1-1")
		return
	else
		-- 种子名称
		local nFlowerName = tValentinesDay2018_Text["Dialog"]["Seed"]["Name"][nState]
		-- 成熟状况
		-- local sMatureType = ValentinesDay2018_GetMatureType(nNpcId)
		local sMatureType = ""
		local bMature, nNeedTime = ValentinesDay2018_GetMatureType(nNpcId)
		local nMatureLev = tValentinesDay2018_SeedPlainData[nNpcId].SeedLev
		if bMature then
			sMatureType = string.format(tValentinesDay2018_Text["Dialog"]["Seed"]["Mature"][1], nMatureLev)
		else
			sMatureType = string.format(tValentinesDay2018_Text["Dialog"]["Seed"]["Mature"][2], nNeedTime)
		end
		-- 浇灌情况赋值
		local nAlreadyTimes = tValentinesDay2018_SeedPlainData[nNpcId].WaterTimes
		local nWaterTimes = tValentinesDay2018_Data["Vegetable"]["WaterTimes"][nState]
		local sWaterFlower = string.format(tValentinesDay2018_Text["Dialog"]["Seed"]["Water"][1], nWaterTimes - nAlreadyTimes, nAlreadyTimes)
		-- local sWaterFlower = tValentinesDay2018_Text["Dialog"]["Seed"]["Water"][1]
		-- 判断是否浇灌过该花朵
		-- if not ValentinesDay2018_ChkUserStcIndex(nNpcId, 2) then
			-- local nReduceTime = tValentinesDay2018_Data["Vegetable"]["ReduceTime"][nState] / 60
			-- sWaterFlower = string.format(tValentinesDay2018_Text["Dialog"]["Seed"]["Water"][2], nReduceTime)
		-- end
		-- 已经种了种子并且是自己种的
		if ValentinesDay2018_ChkVegetablesSelf(nNpcId) then
			-- 采花可得
			local sStealingFlowers = tValentinesDay2018_Text["Dialog"]["Seed"]["GetFolower"][nState][nMatureLev]
			tNpcGossip[nNpcId]["Text211"] = string.format(tValentinesDay2018_Text[24479]["Text211"], nFlowerName)
			tNpcGossip[nNpcId]["Text213"] = string.format(tValentinesDay2018_Text[24479]["Text213"], sMatureType)
			tNpcGossip[nNpcId]["Text214"] = string.format(tValentinesDay2018_Text[24479]["Text214"], sWaterFlower)
			tNpcGossip[nNpcId]["Text215"] = string.format(tValentinesDay2018_Text[24479]["Text215"], sStealingFlowers)
			tNpcGossip[nNpcId]["OptionFunc211"] = "ValentinesDay2018_UserHarvestFlowers</N>" .. nNpcId
			tNpcGossip[nNpcId]["OptionChkFunc211"] = function ()
				-- 判断是否成熟
				if ValentinesDay2018_GetMatureType(nNpcId) then
					return true
				end
				return false
			end
			tNpcGossip[nNpcId]["OptionFunc212"] = "ValentinesDay2018_UserWaterFlowers</N>" .. nNpcId
			tNpcGossip[nNpcId]["OptionChkFunc212"] = function ()
				-- 判断是否成熟
				if ValentinesDay2018_GetMatureType(nNpcId) then
					return false
				end
				-- 判断是否浇灌
				if not ValentinesDay2018_ChkUserStcIndex(nNpcId, 2) then
					return true
				end
				return false
			end
			tNpcGossip[nNpcId]["OptionFunc213"] = "ValentinesDay2018_ChkAccelerateRipening</N>" .. nNpcId
			tNpcGossip[nNpcId]["OptionChkFunc213"] = function ()
				-- 判断是否成熟
				if ValentinesDay2018_GetMatureType(nNpcId) then
					return false
				end
				return true
			end
			LinkNpcGossipFunc_New(nNpcId, "2-1")
			return
		-- 已经种了种子但是是别人种的
		else
			-- 偷花可得
			local sStealingFlowers = tValentinesDay2018_Text["Dialog"]["Seed"]["Vegeteal"][nState]
			tNpcGossip[nNpcId]["Text311"] = string.format(tValentinesDay2018_Text[24479]["Text311"], nFlowerName)
			tNpcGossip[nNpcId]["Text313"] = string.format(tValentinesDay2018_Text[24479]["Text313"], sMatureType)
			tNpcGossip[nNpcId]["Text314"] = string.format(tValentinesDay2018_Text[24479]["Text314"], sWaterFlower)
			tNpcGossip[nNpcId]["Text315"] = string.format(tValentinesDay2018_Text[24479]["Text315"], sStealingFlowers)
			tNpcGossip[nNpcId]["OptionFunc311"] = "ValentinesDay2018_UserStealingFlowers</N>" .. nNpcId
			tNpcGossip[nNpcId]["OptionChkFunc311"] = function ()
				-- 判断是否成熟
				if ValentinesDay2018_GetMatureType(nNpcId) then
					return true
				end
				return false
			end
			tNpcGossip[nNpcId]["OptionFunc312"] = "ValentinesDay2018_UserWaterFlowers</N>" .. nNpcId
			tNpcGossip[nNpcId]["OptionChkFunc312"] = function ()
				-- 判断是否成熟
				if ValentinesDay2018_GetMatureType(nNpcId) then
					return false
				end
				-- 判断是否浇灌
				if not ValentinesDay2018_ChkUserStcIndex(nNpcId, 2) then
					return true
				end
				return false
			end
			LinkNpcGossipFunc_New(nNpcId, "3-1")
			return
		end
		
	end
	
end


-- 获取当前成熟状况
function ValentinesDay2018_GetMatureType(nNpcId)
	-- 判断种子是否成熟
	local nState = tValentinesDay2018_SeedPlainData[nNpcId].State
	local nMatureNeedTime = tValentinesDay2018_Data["Vegetable"]["SeedMatureTime"][nState]
	local nPlantTime = tValentinesDay2018_SeedPlainData[nNpcId].PlantTime
	local nNowTime = os.time()
	local nDifference = os.difftime(nNowTime, nPlantTime)
	local nAlreadyTimes = ValentinesDay2018_GetAlreadyWaterTimes(nNpcId)
	local sMatureType = ""
	local nMatureTime = tValentinesDay2018_SeedPlainData[nNpcId].MatureTime
	-- 种子已成熟
	if nDifference >= nMatureNeedTime - nAlreadyTimes or nMatureTime > 0 then
		-- local nMatureLev = tValentinesDay2018_SeedPlainData[nNpcId].SeedLev
		-- sMatureType = string.format(tValentinesDay2018_Text["Dialog"]["Seed"]["Mature"][1], nMatureLev)
		return true
	-- 种子未成熟
	else
		local nNeedTime = math.ceil((nMatureNeedTime - nAlreadyTimes - nDifference) / 60)
		-- sMatureType = string.format(tValentinesDay2018_Text["Dialog"]["Seed"]["Mature"][2], nNeedTime)
		return false, nNeedTime
	end
	
	-- return sMatureType
end

-- 获取浇灌减少的时间
function ValentinesDay2018_GetAlreadyWaterTimes(nNpcId)
	local nState = tValentinesDay2018_SeedPlainData[nNpcId].State
	local nAlreadyTimes = tValentinesDay2018_SeedPlainData[nNpcId].WaterTimes
	local nWaterTimes = tValentinesDay2018_Data["Vegetable"]["WaterTimes"][nState]
	local nReduceTime = tValentinesDay2018_Data["Vegetable"]["ReduceTime"][nState]
	-- 获取已浇灌次数
	nAlreadyTimes = nWaterTimes - nAlreadyTimes
	-- 返回浇灌减少的时间
	return nAlreadyTimes * nReduceTime
end


-- 判断是否是自己种的花
function ValentinesDay2018_ChkVegetablesSelf(nNpcId)
	local nGrowUserId = tValentinesDay2018_SeedPlainData[nNpcId].UserId
	local nUserId = Get_UserId()
	if nUserId == nGrowUserId then
		return true
	else
		return false
	end
end

-- 获取掩码状态值
function ValentinesDay2018_ChkUserStcIndex(nNpcId, nSign)
	local nEvent = tValentinesDay2018_SeedPlainStc["Event"][nNpcId]
	local nData = tValentinesDay2018_SeedPlainStc["Data"][nNpcId]
	-- 隔天重置
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	local nIndex = tValentinesDay2018_SeedPlainData[nNpcId].Index
	local nStcData = Get_UserStatisticValue(nEvent, nData)
	-- 1表示取是否采过的序列号
	if nSign == 1 then
		nStcData = math.floor(nStcData / 1000)
	-- 其他表示取是否浇水过的序列号
	else
		nStcData = nStcData % 1000
	end
	if nStcData == nIndex then
		return true
	end
	return false
end

-- 刷出怪物
function ValentinesDay2018_RefreshMonster()
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		return
	end
	-- 判断当前地图的怪物数量
	local nMapId = tValentinesDay2018_Data["Vegetable"]["MonsterData"]["MapId"]
	local nMonsterId = tValentinesDay2018_Data["Vegetable"]["MonsterData"]["MonsterId"]
	local nMonsterNum = Get_SysTempData(1, nMapId, nMonsterId)
	-- 怪物数量未达上限
	if nMonsterNum < 100 then
		local tSeedTab = {}
		for nNpcId in pairs(tValentinesDay2018_SeedPlainData) do
			tSeedTab[#tSeedTab + 1] = nNpcId
		end
		local nRandomNum = math.random(1, #tSeedTab)
		local nFindNpc = tSeedTab[nRandomNum]
		local nPosX = Get_NpcPositionX(nFindNpc) + 1
		local nPosY = Get_NpcPositionY(nFindNpc) + 1
		local nGenId = tValentinesDay2018_Data["Vegetable"]["MonsterData"]["Generator"]
		-- 刷怪物
		if Monster_AddAndCount(nMapId, nPosX, nPosY, nGenId, nMonsterId) then
			Sys_SetTempData(1, nMapId, nMonsterId, nMonsterNum + 1)
			if nMonsterNum %10 == 0 then
				Sys_SystemBroadcast(tValentinesDay2018_Text["Broadcast"]["FlowerThief"])
			end
		end
		-- Sys_TalkBroadcast(tGoldFishMonster_Text["Broadcast"][1])
	end
end

-- 击杀怪物
function ValentinesDay2018_KillFlowerThiefMonster(nMonsterId)
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		return
	end
	-- 减少怪物数量
	local nMapId = tValentinesDay2018_Data["Vegetable"]["MonsterData"]["MapId"]
	local nMonsterNum = Get_SysTempData(1, nMapId, nMonsterId)
	Sys_SetTempData(1, nMapId, nMonsterId, nMonsterNum - 1)
	local nRandomNum = math.random(1, 10)
	-- 增加真爱之心
	if nRandomNum <= 2 then
		local nRandomLoveVale = math.random(1, 10)
		local nAddLoveValue = 0
		if nRandomLoveVale <= 6 then
			nAddLoveValue = tValentinesDay2018_Data["Vegetable"]["TrueLoveValue"][1]
		elseif nRandomLoveVale <= 9 then
			nAddLoveValue = tValentinesDay2018_Data["Vegetable"]["TrueLoveValue"][2]
		else
			nAddLoveValue = tValentinesDay2018_Data["Vegetable"]["TrueLoveValue"][3]
		end
		local nUserCharmEvent = tValentinesDay2018_Data["Stc"]["Event"][8]
		local nUserCharmData = tValentinesDay2018_Data["Stc"]["Data"][8]
		-- 增加真爱之心
		Task_AddStatistic(nUserCharmEvent, nUserCharmData, nAddLoveValue, 1)
		Task_SetStcTimestamp(nUserCharmEvent, nUserCharmData, 0)
		User_TalkChannel2005(string.format(tValentinesDay2018_Text["SysTalk"]["Seed"]["AddLoveValue"], nAddLoveValue))
		Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["KillLog"], nAddLoveValue))
	end
end


-- 偷采鲜花
function ValentinesDay2018_UserStealingFlowers(nNpcId)
	-- 判断花圃状态
	local nState = tValentinesDay2018_SeedPlainData[nNpcId].State
	if nState <= 0 then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["StealingFalseNot"])
		return
	end
	-- 判断是否偷采5次以上
	local nStealEvent = tValentinesDay2018_SeedPlainStc["Event"][1]
	local nStealData = tValentinesDay2018_SeedPlainStc["Data"][1]
	-- 隔天重置
	if Task_StcInterval(nStealEvent, nStealData, 1, 4) then
		Task_SetStatistic(nStealEvent, nStealData, 0, 1)
		Task_SetStcTimestamp(nStealEvent, nStealData, 0)
	end
	if Task_ChkStcValue(nStealEvent, nStealData, ">=", 5) then
		Sys_MsgBox(tValentinesDay2018_Text["SysTalk"]["Seed"]["StealTimes"])
		return
	end
	
	-- 判断种子是否成熟
	if ValentinesDay2018_GetMatureType(nNpcId) then
		-- 判断是否还有采摘次数
		local nPickNum = tValentinesDay2018_SeedPlainData[nNpcId].PickNum
		if nPickNum <= 0 then
			Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["StealingFalsePick"])
			return
		end
		-- 已经采摘过了
		if ValentinesDay2018_ChkUserStcIndex(nNpcId, 1) then
			Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["StealingFalseOver"])
			return
		-- 还未采摘
		else
			-- 判断背包空间
			if not RewardTemplate_ChkRandomSpace(tValentinesDay2018_New_Random["StealFolower"], nState) then
				local nSpace = RewardTemplate_GetRandomSpace(tValentinesDay2018_New_Random["StealFolower"], nState)
				User_TalkChannel2005(string.format(tValentinesDay2018_Text["SysTalk"]["Seed"]["NeedSpace"], nSpace))
				return
			end
			-- 减少采摘次数，判断是否降级
			if ValentinesDay2018_DeclineLevAndReduceNum(nNpcId) then
				local nEvent = tValentinesDay2018_SeedPlainStc["Event"][nNpcId]
				local nData = tValentinesDay2018_SeedPlainStc["Data"][nNpcId]
				-- 设置掩码给奖励
				local nStcData = Get_UserStatisticValue(nEvent, nData)
				local nIndex = tValentinesDay2018_SeedPlainData[nNpcId].Index
				nStcData = nStcData % 1000 + nIndex * 1000
				if Task_SetStatistic(nEvent, nData, nStcData, 1) then
					Task_SetStcTimestamp(nEvent, nData, 0)
					-- 增加每日偷采次数
					Task_AddStatistic(nStealEvent, nStealData, 1, 1)
					Task_SetStcTimestamp(nStealEvent, nStealData, 0)
					-- 获取奖励
					local tReward,sRewardStr = RewardTemplate_NewRandom(tValentinesDay2018_New_Random["StealFolower"], nState)
					User_TalkChannel2005(string.format(tValentinesDay2018_Text["SysTalk"]["Seed"]["PickOther"][nState], sRewardStr))
					-- 召唤怪物
					ValentinesDay2018_RefreshMonster()
				end
			end
		end
	-- 种子未成熟
	else
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["StealingFalseTime"], "ValentinesDay2018_VegetableFieldDialog</N>" .. nNpcId, nil)
		return
	end
	
end

-- 减少采摘次数，判断是否降级
function ValentinesDay2018_DeclineLevAndReduceNum(nNpcId)
	-- 判断花圃被偷摘的次数
	local nPickNum = tValentinesDay2018_SeedPlainData[nNpcId].PickNum
	if nPickNum <= 0 then
		return false
	-- 减少采摘次数，第3,5次被偷会降低一次品级
	elseif nPickNum == 3 then
		tValentinesDay2018_SeedPlainData[nNpcId].PickNum = nPickNum - 1
		tValentinesDay2018_SeedPlainData[nNpcId].SeedLev = 2
		-- 降级之后重置动态NPC
		ValentinesDay2018_SetFlowerToMature(nNpcId)
		return true
		
	elseif nPickNum == 1 then
		tValentinesDay2018_SeedPlainData[nNpcId].PickNum = nPickNum - 1
		tValentinesDay2018_SeedPlainData[nNpcId].SeedLev = 1
		-- 降级之后重置动态NPC
		ValentinesDay2018_SetFlowerToMature(nNpcId)
		return true
		
	else
		tValentinesDay2018_SeedPlainData[nNpcId].PickNum = nPickNum - 1
		return true
	end
	
end


-- 采摘收获鲜花
function ValentinesDay2018_UserHarvestFlowers(nNpcId)
	-- 判断花圃状态
	local nState = tValentinesDay2018_SeedPlainData[nNpcId].State
	if nState <= 0 then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["StealingFalseNot"])
		return
	end
	-- 判断玩家是否花圃主人
	if not ValentinesDay2018_ChkVegetablesSelf(nNpcId) then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["HarvestFalseUser"])
		return
	end
	-- 判断种子是否成熟
	if not ValentinesDay2018_GetMatureType(nNpcId) then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["HarvestFalseMature"])
		return
	end
	-- 判断背包空间
	local nSeedLev = tValentinesDay2018_SeedPlainData[nNpcId].SeedLev
	if not RewardTemplate_CheckSpace(tValentinesDay2018_New_Reward["Flower"][nState][nSeedLev]) then
		return
	end
	-- 种子已成熟
	local nIndex = tValentinesDay2018_SeedPlainData[nNpcId].Index
	-- 重置所有数据
	tValentinesDay2018_SeedPlainData[nNpcId] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
	-- 删除动态NPC，重建空地
	ValentinesDay2018_SetFlowerToMature(nNpcId)
	-- 增加序号值
	tValentinesDay2018_SeedPlainData[nNpcId].Index = nIndex
	-- 领取奖励
	local bFlag,sRewardStr = RewardTemplate_UseItemAndMsg(tValentinesDay2018_New_Reward["Flower"][nState][nSeedLev])
	User_TalkChannel2005(string.format(tValentinesDay2018_Text["SysTalk"]["Seed"]["PickSelf"][nState], sRewardStr))
	
end

-- 浇灌鲜花
function ValentinesDay2018_UserWaterFlowers(nNpcId)
	-- 判断花圃状态
	local nState = tValentinesDay2018_SeedPlainData[nNpcId].State
	if nState <= 0 then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["StealingFalseNot"])
		return
	end
	-- 判断鲜花是否成熟
	if ValentinesDay2018_GetMatureType(nNpcId) then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["WaterFalseMature"], "ValentinesDay2018_VegetableFieldDialog</N>" .. nNpcId, nil)
		return
	end
	-- 判断是否还有浇水次数
	local nAlreadyTimes = tValentinesDay2018_SeedPlainData[nNpcId].WaterTimes
	if nAlreadyTimes <= 0 then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["WaterFalseTimes"])
		return
	end
	-- 判断是否浇过水
	if ValentinesDay2018_ChkUserStcIndex(nNpcId, 2) then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["WaterFalseDone"])
		return
	end
	-- 每日100次限制浇灌
	local nDayWaterEvent = tValentinesDay2018_Data["Stc"]["Event"][27]
	local nDayWaterData = tValentinesDay2018_Data["Stc"]["Data"][27]
	if Task_StcInterval(nDayWaterEvent, nDayWaterData, 1, 4) then
		Task_SetStatistic(nDayWaterEvent, nDayWaterData, 0, 1)
		Task_SetStcTimestamp(nDayWaterEvent, nDayWaterData, 0)
	end
	if Task_ChkStcValue(nDayWaterEvent, nDayWaterData, ">", 100) then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["WaterOverTimes"])
		return
	end
	local nEvent = tValentinesDay2018_SeedPlainStc["Event"][nNpcId]
	local nData = tValentinesDay2018_SeedPlainStc["Data"][nNpcId]
	-- 减少浇灌次数，设置掩码为已浇灌
	tValentinesDay2018_SeedPlainData[nNpcId].WaterTimes = nAlreadyTimes - 1
	local nStcData = Get_UserStatisticValue(nEvent, nData)
	local nIndex = tValentinesDay2018_SeedPlainData[nNpcId].Index
	nStcData = math.floor(nStcData / 1000) * 1000 + nIndex
	Task_SetStatistic(nEvent, nData, nStcData, 1)
	Task_SetStcTimestamp(nEvent, nData, 0)
	-- 判断玩家是否为花圃主人
	if ValentinesDay2018_ChkVegetablesSelf(nNpcId) then
		User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["Seed"]["WaterSelf"][nState])
	else
		User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["Seed"]["WaterOther"][nState])
		-- 发送邮件
		local sSeedName = tValentinesDay2018_Text["SysTalk"]["Seed"]["Name"][nState]
		local nSeedTime = tValentinesDay2018_Data["Vegetable"]["ReduceTime"][nState] / 60
		local sContent = string.format(tValentinesDay2018_Text["Lettter"]["Water"]["Content"], sSeedName, nSeedTime)
		local nNowTime = os.time()
		local nEndTime = os.time({day=21, month=8, year=2019, hour=23, minute=59, second=59}) 
		-- 获取距离结束时间的天数
		local nExistDay = math.ceil((nEndTime - nNowTime)/86400)
		local nUserId = tValentinesDay2018_SeedPlainData[nNpcId].UserId
		local sSender = tValentinesDay2018_Text["Lettter"]["Water"]["Sender"]
		local sTitle = tValentinesDay2018_Text["Lettter"]["Water"]["Title"]
		Sys_SendMail(nUserId, 0, 0, 0, 0, nExistDay, sSender, sTitle, sContent)
	end
	-- 判断是否成熟
	if ValentinesDay2018_GetMatureType(nNpcId) then
		local nNowTime = os.time()
		ValentinesDay2018_SetFlowerToMature(nNpcId)
		tValentinesDay2018_SeedPlainData[nNpcId].MatureTime = nNowTime
	end
	-- 播放光效
	local nEffectPosX = Get_NpcPositionX(nNpcId)
	local nEffectPosY = Get_NpcPositionY(nNpcId)
	local nMapId = tValentinesDay2018_Data["Map"]["Garden"]["MapId"]
	local sEffectName = tValentinesDay2018_Data["Vegetable"]["Effect"][1]
	-- 概率获得真爱值
	local nDayEvent = tValentinesDay2018_SeedPlainStc["Event"][3]
	local nDayData = tValentinesDay2018_SeedPlainStc["Data"][3]
	if Task_StcInterval(nDayEvent, nDayData, 1, 4) then
		Task_SetStatistic(nDayEvent, nDayData, 0, 1)
		Task_SetStcTimestamp(nDayEvent, nDayData, 0)
	end
	-- 刷新怪物
	ValentinesDay2018_RefreshMonster()
	
	-- 增加浇灌次数
	Task_AddStatistic(nDayWaterEvent, nDayWaterData, 1, 1)
	Task_SetStcTimestamp(nDayWaterEvent, nDayWaterData, 0)
	-- 每日限量3次
	if Task_ChkStcValue(nDayEvent, nDayData, "<", 3) then
		local nRandomNum = math.random(1, 10)
		-- 增加真爱之心
		if nRandomNum <= 2 then
			sEffectName = tValentinesDay2018_Data["Vegetable"]["Effect"][2]
			local nRandomLoveVale = math.random(1, 10)
			local nAddLoveValue = 0
			if nRandomLoveVale <= 6 then
				nAddLoveValue = tValentinesDay2018_Data["Vegetable"]["TrueLoveValue"][1]
			elseif nRandomLoveVale <= 9 then
				nAddLoveValue = tValentinesDay2018_Data["Vegetable"]["TrueLoveValue"][2]
			else
				nAddLoveValue = tValentinesDay2018_Data["Vegetable"]["TrueLoveValue"][3]
			end
			local nUserCharmEvent = tValentinesDay2018_Data["Stc"]["Event"][8]
			local nUserCharmData = tValentinesDay2018_Data["Stc"]["Data"][8]
			-- 增加次数
			if Task_AddStatistic(nDayEvent, nDayData, 1, 1) then
				Task_SetStcTimestamp(nDayEvent, nDayData, 0)
				-- 增加真爱之心
				Task_AddStatistic(nUserCharmEvent, nUserCharmData, nAddLoveValue, 1)
				Task_SetStcTimestamp(nUserCharmEvent, nUserCharmData, 0)
				User_TalkChannel2005(string.format(tValentinesDay2018_Text["SysTalk"]["Seed"]["AddLoveValue"], nAddLoveValue))
			end
		end
	end
	Map_Effect(nMapId, nEffectPosX, nEffectPosY, sEffectName)
	-- 重新打开对白
	ValentinesDay2018_VegetableFieldDialog(nNpcId)
end

-- 催熟鲜花判断
function ValentinesDay2018_ChkAccelerateRipening(nNpcId)
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["SeedOutTime"])
		return
	end
	local nState = tValentinesDay2018_SeedPlainData[nNpcId].State
	-- 空地
	if nState <= 0 then
		-- 重新设置函数值
		tNpcGossip[nNpcId]["OptionFunc111"] = "ValentinesDay2018_GrowVegetables</N>".. nNpcId .."</N>1"
		tNpcGossip[nNpcId]["OptionFunc112"] = "ValentinesDay2018_GrowVegetables</N>".. nNpcId .."</N>2"
		tNpcGossip[nNpcId]["OptionFunc113"] = "ValentinesDay2018_GrowVegetables</N>".. nNpcId .."</N>3"
		tNpcGossip[nNpcId]["OptionFunc114"] = "ValentinesDay2018_GrowVegetables</N>".. nNpcId .."</N>4"
		LinkNpcGossipFunc_New(nNpcId, "1-1")
		return
	else
		-- 已经种了种子并且是自己种的
		if ValentinesDay2018_ChkVegetablesSelf(nNpcId) then
			-- 种子名称
			local nFlowerName = tValentinesDay2018_Text["Dialog"]["Seed"]["Name"][nState]
			local sMatureType = ""
			local bMature, nNeedTime = ValentinesDay2018_GetMatureType(nNpcId)
			if bMature then
				User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["Seed"]["SeedMature"])
				LinkNpcGossipFunc_New(nNpcId, "2-1")
				return
			else
				sMatureType = string.format(tValentinesDay2018_Text["Dialog"]["Seed"]["Mature"][2], nNeedTime)
			end
			-- 浇灌情况赋值
			local nAlreadyTimes = tValentinesDay2018_SeedPlainData[nNpcId].WaterTimes
			local nWaterTimes = tValentinesDay2018_Data["Vegetable"]["WaterTimes"][nState]
			local sWaterFlower = string.format(tValentinesDay2018_Text["Dialog"]["Seed"]["Water"][1], nWaterTimes - nAlreadyTimes, nAlreadyTimes)
			local nNeedMoney = tValentinesDay2018_Data["Vegetable"]["NeedMoney"][nState]
			-- 赋值
			tNpcGossip[nNpcId]["Text321"] = string.format(tValentinesDay2018_Text[24479]["Text321"], nFlowerName)
			tNpcGossip[nNpcId]["Text323"] = string.format(tValentinesDay2018_Text[24479]["Text323"], sMatureType)
			tNpcGossip[nNpcId]["Text324"] = string.format(tValentinesDay2018_Text[24479]["Text324"], sWaterFlower)
			tNpcGossip[nNpcId]["Text325"] = string.format(tValentinesDay2018_Text[24479]["Text325"], nNeedMoney)
			tNpcGossip[nNpcId]["Option321"] = string.format(tValentinesDay2018_Text[24479]["Option321"], nNeedMoney)
			tNpcGossip[nNpcId]["OptionFunc321"] = "ValentinesDay2018_AccelerateRipening</N>" .. nNpcId
			LinkNpcGossipFunc_New(nNpcId, "3-2")
			return
		else
			Sys_MsgBox(tValentinesDay2018_Text["SysTalk"]["Seed"]["NotOwner"])
			return
		end
	end
end

-- 催熟鲜花
function ValentinesDay2018_AccelerateRipening(nNpcId)
		if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["SeedOutTime"])
		return
	end
	local nState = tValentinesDay2018_SeedPlainData[nNpcId].State
	-- 空地
	if nState <= 0 then
		-- 重新设置函数值
		tNpcGossip[nNpcId]["OptionFunc111"] = "ValentinesDay2018_GrowVegetables</N>".. nNpcId .."</N>1"
		tNpcGossip[nNpcId]["OptionFunc112"] = "ValentinesDay2018_GrowVegetables</N>".. nNpcId .."</N>2"
		tNpcGossip[nNpcId]["OptionFunc113"] = "ValentinesDay2018_GrowVegetables</N>".. nNpcId .."</N>3"
		tNpcGossip[nNpcId]["OptionFunc114"] = "ValentinesDay2018_GrowVegetables</N>".. nNpcId .."</N>4"
		LinkNpcGossipFunc_New(nNpcId, "1-1")
		return
	else
		-- 已经种了种子并且是自己种的
		if ValentinesDay2018_ChkVegetablesSelf(nNpcId) then
			local bMature = ValentinesDay2018_GetMatureType(nNpcId)
			-- 已经成熟
			if bMature then
				User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["Seed"]["SeedMature"])
				LinkNpcGossipFunc_New(nNpcId, "2-1")
				return
			else
				-- 判断玩家金币
				local nNeedMoney = tValentinesDay2018_Data["Vegetable"]["NeedMoney"][nState]
				if not User_CanPutMoney2Bag(-nNeedMoney) then
					User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["Seed"]["NotEnoughMoney"])
					return
				end
				-- 扣除金币
				if User_AddMoney(-nNeedMoney) then
					Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["MoneyLog"], nNeedMoney))
					local nNowTime = os.time()
					tValentinesDay2018_SeedPlainData[nNpcId].MatureTime = nNowTime
					ValentinesDay2018_SetFlowerToMature(nNpcId)
					User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["Seed"]["MatureNow"])
					ValentinesDay2018_VegetableFieldDialog(nNpcId)
				end
			end
		else
			Sys_MsgBox(tValentinesDay2018_Text["SysTalk"]["Seed"]["NotOwner"])
			return
		end
	end
end

-- 设置鲜花NPC外形
function ValentinesDay2018_SetFlowerToMature(nNpcId)
	local nState = tValentinesDay2018_SeedPlainData[nNpcId].State
	local nFlowerLev = tValentinesDay2018_SeedPlainData[nNpcId].SeedLev
	-- 重新设置名称
	local sSeedName = ""
	if nState > 0 then
		local sUserName = tValentinesDay2018_SeedPlainData[nNpcId].UserName
		local sSate = tValentinesDay2018_Text["NPC"]["Name"][nState][nFlowerLev]
		if not ValentinesDay2018_GetMatureType(nNpcId) then
			sSate = tValentinesDay2018_Text["NPC"]["Name"][nState][0]
		end
		sSeedName = sUserName .. sSate
	else
		sSeedName = tValentinesDay2018_Text["NPC"]["Null"]
	end
	Npc_ChgName(sSeedName,nNpcId)
end

-- 种花
function ValentinesDay2018_GrowVegetables(nNpcId, nSeedType)
	-- 判断是否种植时间
	if not Sys_ChkDayTime(tActivityTime["ValentinesDay2018"]["SeedPlantTime"]) then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["PlantFalseOutTime"])
		return
	end
	-- 判断是否每日前三次种植
	local nEvent = tValentinesDay2018_SeedPlainStc["Event"][2]
	local nData = tValentinesDay2018_SeedPlainStc["Data"][2]
	-- 隔天重置
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	if Task_ChkStcValue(nEvent, nData, ">=", 10) then
		Sys_MsgBox(tValentinesDay2018_Text["SysTalk"]["Seed"]["OverTimes"])
		return
	end
	-- 判断背包空间
	if not RewardTemplate_ChkRandomSpace(tValentinesDay2018_New_Random["DayFirstPlant"], 1) then
		local nSpace = RewardTemplate_GetRandomSpace(tValentinesDay2018_New_Random["DayFirstPlant"], 1)
		User_TalkChannel2005(string.format(tValentinesDay2018_Text["SysTalk"]["Seed"]["NeedSpace"], nSpace))
		return
	end
	-- 判断是否空地
	local nState = tValentinesDay2018_SeedPlainData[nNpcId].State
	if nState > 0 then
		Sys_MsgBox(tValentinesDay2018_Text["SysMsgBox"]["PlantFalseHave"], "ValentinesDay2018_VegetableFieldDialog</N>" .. nNpcId, nil)
		return
	end
	-- 判断是否拥有种子
	local nItemId = tValentinesDay2018_Data["Vegetable"]["ItemId"][nSeedType]
	if not (Item_ChkItem(nItemId) and Item_DelItem(nItemId)) then
		local nSeedName = tValentinesDay2018_Text["Dialog"]["Seed"]["Name"][nSeedType]
		tNpcGossip[nNpcId]["Text121"] = string.format(tValentinesDay2018_Text[24479]["Text121"], nSeedName)
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	-- 增加掩码
	if not Task_AddStatistic(nEvent, nData, 1, 1) then
		return
	end
	Task_SetStcTimestamp(nEvent, nData, 0)
	RewardTemplate_NewRandom(tValentinesDay2018_New_Random["DayFirstPlant"], 1)
	-- 记录序号值
	local nIndex = tValentinesDay2018_SeedPlainData[nNpcId].Index
	-- 重置所有数据
	tValentinesDay2018_SeedPlainData[nNpcId] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
	-- 设置菜地状态
	tValentinesDay2018_SeedPlainData[nNpcId].State = nSeedType
	-- 设置Userid
	local nUserId = Get_UserId()
	tValentinesDay2018_SeedPlainData[nNpcId].UserId = nUserId
	-- 设置次数
	local nWaterTimes = tValentinesDay2018_Data["Vegetable"]["WaterTimes"][nSeedType]
	tValentinesDay2018_SeedPlainData[nNpcId].WaterTimes = nWaterTimes
	tValentinesDay2018_SeedPlainData[nNpcId].PickNum = 5
	-- 设置花朵品级
	tValentinesDay2018_SeedPlainData[nNpcId].SeedLev = 3
	-- 增加序号值
	tValentinesDay2018_SeedPlainData[nNpcId].Index = nIndex + 1
	-- 设置种植时间
	local nNowTime = os.time()
	tValentinesDay2018_SeedPlainData[nNpcId].PlantTime = nNowTime
	-- 记录玩家名称
	local sUserName = Get_UserName()
	tValentinesDay2018_SeedPlainData[nNpcId].UserName = sUserName
	-- 生成NPC
	ValentinesDay2018_SetFlowerToMature(nNpcId)
	-- 成功提示
	Sys_MsgBox(tValentinesDay2018_Text["SysTalk"]["Seed"]["Plant"][nSeedType], "ValentinesDay2018_VegetableFieldDialog</N>" .. nNpcId, nil)
	
	
end

-- 寻路到自己种的鲜花种的其中一个
function ValentinesDay2018_FindSelfFlower(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断地图
	local nMapId = tValentinesDay2018_Data["Map"]["Garden"]["MapId"]
	-- 判断是否在花仙阁内
	if not (Get_UserMapId() == nMapId) then
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["TipsTimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	local tSeedTab = {}
	-- 判断是否有自己种的花
	for nNpcId in pairs(tValentinesDay2018_SeedPlainData) do
		local nState = tValentinesDay2018_SeedPlainData[nNpcId].State
		-- 菜地为种植状态
		if nState > 0 then
			local nFlowerUserId = tValentinesDay2018_SeedPlainData[nNpcId].UserId
			if nFlowerUserId == Get_UserId() then
				tSeedTab[#tSeedTab + 1] = nNpcId
			end
		end
	end
	-- 有的话随机一个寻路，没有提示
	if #tSeedTab > 0 then
		local nRandomNum = math.random(1, #tSeedTab)
		local nFindNpc = tSeedTab[nRandomNum]
		local nNpcPosX = Get_NpcPositionX(nFindNpc)
		local nNpcPosY = Get_NpcPositionY(nFindNpc)
		User_UserRandBoundTrans(nMapId, nNpcPosX, nNpcPosY, 3, 3)
	else
		User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["Seed"]["HaveNotSet"])
		return
	end
end

-- 随机寻路到一个花圃
function ValentinesDay2018_ChooseWay()
	local nRandomWay = math.random(1, 90)
	local tNpcId = {}
	for nNpcId in pairs(tValentinesDay2018_SeedPlainData) do
		tNpcId[#tNpcId + 1] = nNpcId
	end
	local nMapId = tValentinesDay2018_Data["Map"]["Garden"]["MapId"]
	-- 判断是否在花仙阁内
	if not (Get_UserMapId() == nMapId) then
		return
	end
	local nNpcPosX = Get_NpcPositionX(tNpcId[nRandomWay])
	local nNpcPosY = Get_NpcPositionY(tNpcId[nRandomWay])
	User_UserRandBoundTrans(nMapId, nNpcPosX, nNpcPosY, 3, 3)
end

-- 重写邮件文字
function ValentinesDay2018_ReMailText(nIndex)
	-- 特殊处理
	for nRankNum, nValue in pairs(tRankingFunc_Info[nIndex]["Mail"]["Reward"]) do
		nValue["Content"] = string.format(nValue["Content"], nRankNum)
	end
end


-- 时间自检，判断花圃的种子是否成熟级，以及成熟时间到了发放邮件
function ValentinesDay2018_FlowerSeedChkAndSet()
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentinesDay2018"]["ActivityTime"]) then
		return
	end
	-- if not Sys_ChkDayTime(tActivityTime["ValentinesDay2018"]["SeedPlantTime"]) and not Sys_ChkDayTime(tActivityTime["ValentinesDay2018"]["SeedSettlementTime"]) then
		-- return
	-- end
	-- 判断菜地状态
	for nNpcId in pairs(tValentinesDay2018_SeedPlainData) do
		local nState = tValentinesDay2018_SeedPlainData[nNpcId].State
		-- 菜地为种植状态
		if nState > 0 then
			local nMatureTime = tValentinesDay2018_SeedPlainData[nNpcId].MatureTime
			local nNowTime = os.time()
			-- 菜地成熟且是刚成熟
			if ValentinesDay2018_GetMatureType(nNpcId) and nMatureTime == 0 then
				tValentinesDay2018_SeedPlainData[nNpcId].MatureTime = nNowTime
				ValentinesDay2018_SetFlowerToMature(nNpcId)
			-- 菜地成熟且之前就成熟了
			elseif ValentinesDay2018_GetMatureType(nNpcId) and nMatureTime > 0 then
				-- 判断是否成熟15分钟，是就发送邮件
				local nDifference = os.difftime(nNowTime, nMatureTime)
				if nDifference >= 5 * 60 then
					local nUserId = tValentinesDay2018_SeedPlainData[nNpcId].UserId
					local nFlowerLev = tValentinesDay2018_SeedPlainData[nNpcId].SeedLev
					local nIndex = tValentinesDay2018_SeedPlainData[nNpcId].Index
					tValentinesDay2018_SeedPlainData[nNpcId] = {State = 0, UserId = 0, WaterTimes = 0, PickNum = 0, SeedLev = 0, Index = 0, PlantTime = 0, MatureTime = 0, UserName = ""}
					tValentinesDay2018_SeedPlainData[nNpcId].Index = nIndex
					-- 生成NPC
					ValentinesDay2018_SetFlowerToMature(nNpcId)
					-- 发送邮件
					local sSeedName = tValentinesDay2018_Text["SysTalk"]["Seed"]["Name"][nState]
					local sContent = string.format(tValentinesDay2018_Text["Lettter"]["Harvest"]["Content"], sSeedName)
					local nNowTime = os.time()
					local nEndTime = os.time({day=21, month=8, year=2019, hour=23, minute=59, second=59}) 
					-- 获取距离结束时间的天数
					local nExistDay = math.ceil((nEndTime - nNowTime)/86400)
					local nActionId = tValentinesDay2018_Data["Vegetable"]["LetterAction"][nState][nFlowerLev]
					local sSender = tValentinesDay2018_Text["Lettter"]["Harvest"]["Sender"]
					local sTitle = tValentinesDay2018_Text["Lettter"]["Harvest"]["Title"]
					Sys_SendMail(nUserId, 0, 0, nActionId, 0, nExistDay, sSender, sTitle, sContent)
				end
			end
		end
	end
end


-- 服务器启动
function ValentinesDay2018_ServerStart()
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentinesDay2018"]["ActivityTime"]) then
		return
	end
	
	local nMapId = tValentinesDay2018_Data["Vegetable"]["MonsterData"]["MapId"]
	local nMonsterId = tValentinesDay2018_Data["Vegetable"]["MonsterData"]["MonsterId"]
	
	Monster_DelMonster(nMapId, nMonsterId)
	Monster_Death(nMonsterId, nMapId)
end


-- 光效武器可选包
function ValentinesDay2018_WeaponPackageChoose(nItemId, nIndex)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tValentinesDay2018_New_Reward[nItemId][nIndex]) then
		return
	end
	RewardTemplate_UseItemAndMsg(tValentinesDay2018_New_Reward[nItemId][nIndex])
end


----------------------------------NPC部分---------------------------------------------
-- 情圣
tNpcFace[6173] = 13
tNpcGossip[23096] = tNpcGossip[23096] or DefaultNpc:new{}
tNpcGossip[23096]["OptionHidden"] = 1
-- tNpcGossip[23096]["Function"] = function()
	-- ValentinesDay2018_CasanovaDialogChk()
-- end
-- 活动前
tNpcGossip[23096]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117, 118}
tNpcGossip[23096]["Text111"] = tValentinesDay2018_Text[23096]["Text111"]
tNpcGossip[23096]["Text112"] = tValentinesDay2018_Text[23096]["Text112"]
tNpcGossip[23096]["Text113"] = tValentinesDay2018_Text[23096]["Text113"]
tNpcGossip[23096]["Text114"] = tValentinesDay2018_Text[23096]["Text114"]
tNpcGossip[23096]["Text115"] = tValentinesDay2018_Text[23096]["Text115"]
tNpcGossip[23096]["Text116"] = tValentinesDay2018_Text[23096]["Text116"]
tNpcGossip[23096]["Text117"] = tValentinesDay2018_Text[23096]["Text117"]
tNpcGossip[23096]["Text118"] = tValentinesDay2018_Text[23096]["Text118"]
tNpcGossip[23096]["ChkFunc1-1"]= function()
	if Sys_ChkFullTime(tValentinesDay2018_Data["BeforeTime"]) then
		return true
	end
	return false
end
tNpcGossip[23096]["tOption1-1"] = {111}
tNpcGossip[23096]["Option111"] = tValentinesDay2018_Text[23096]["Option111"]
-- 活动后
tNpcGossip[23096]["Text1-2"] = {121, 122}
tNpcGossip[23096]["Text121"] = tValentinesDay2018_Text[23096]["Text121"]
tNpcGossip[23096]["Text122"] = tValentinesDay2018_Text[23096]["Text122"]
tNpcGossip[23096]["ChkFunc1-2"]= function()
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		return true
	end
	return false
end
tNpcGossip[23096]["tOption1-2"] = {121}
tNpcGossip[23096]["Option121"] = tValentinesDay2018_Text[23096]["Option121"]
-- 活动中（授课阶段） 等级未到
tNpcGossip[23096]["Text1-3"] = {131, 132, 133, 134, 135, 138, 136, 137}
tNpcGossip[23096]["Text131"] = tValentinesDay2018_Text[23096]["Text131"]
tNpcGossip[23096]["Text132"] = tValentinesDay2018_Text[23096]["Text132"]
tNpcGossip[23096]["Text133"] = tValentinesDay2018_Text[23096]["Text133"]
tNpcGossip[23096]["Text134"] = tValentinesDay2018_Text[23096]["Text134"]
tNpcGossip[23096]["Text135"] = tValentinesDay2018_Text[23096]["Text135"]
tNpcGossip[23096]["Text138"] = tValentinesDay2018_Text[23096]["Text138"]
tNpcGossip[23096]["Text136"] = tValentinesDay2018_Text[23096]["Text136"]
tNpcGossip[23096]["Text137"] = tValentinesDay2018_Text[23096]["Text137"]
tNpcGossip[23096]["ChkFunc1-3"]= function()
	if Sys_ChkFullTime(tValentinesDay2018_Data["LectureTime"]) then
		if not User_JudgeLevelAndMetempsychosis(tValentinesDay2018_Data["Level"],tValentinesDay2018_Data["Metempsychosis"]) then
			return true
		end
	end
	return false
end
tNpcGossip[23096]["tOption1-3"] = {131}
tNpcGossip[23096]["Option131"] = tValentinesDay2018_Text[23096]["Option131"]
-- 活动中（授课阶段） 等级达到
tNpcGossip[23096]["Text1-4"] = {141, 142, 143, 144, 145, 148, 146, 147}
tNpcGossip[23096]["Text141"] = tValentinesDay2018_Text[23096]["Text141"]
tNpcGossip[23096]["Text142"] = tValentinesDay2018_Text[23096]["Text142"]
tNpcGossip[23096]["Text143"] = tValentinesDay2018_Text[23096]["Text143"]
tNpcGossip[23096]["Text144"] = tValentinesDay2018_Text[23096]["Text144"]
tNpcGossip[23096]["Text145"] = tValentinesDay2018_Text[23096]["Text145"]
tNpcGossip[23096]["Text148"] = tValentinesDay2018_Text[23096]["Text148"]
tNpcGossip[23096]["Text146"] = tValentinesDay2018_Text[23096]["Text146"]
tNpcGossip[23096]["Text147"] = tValentinesDay2018_Text[23096]["Text147"]
tNpcGossip[23096]["ChkFunc1-4"]= function()
	if Sys_ChkFullTime(tValentinesDay2018_Data["LectureTime"]) then
		if User_JudgeLevelAndMetempsychosis(tValentinesDay2018_Data["Level"],tValentinesDay2018_Data["Metempsychosis"]) then
			return true
		end
	end
	return false
end
tNpcGossip[23096]["tOption1-4"] = {141, 145}
tNpcGossip[23096]["Option141"] = tValentinesDay2018_Text[23096]["Option141"]
-- tNpcGossip[23096]["OptionPoint141"] = "3-1"
tNpcGossip[23096]["OptionFunc141"] = "NpcPosition_PathFind</N>23097"
-- tNpcGossip[23096]["Option142"] = tValentinesDay2018_Text[23096]["Option142"]
-- tNpcGossip[23096]["OptionPoint142"] = "4-1"
-- tNpcGossip[23096]["Option143"] = tValentinesDay2018_Text[23096]["Option143"]
-- tNpcGossip[23096]["OptionPoint143"] = "6-1"
tNpcGossip[23096]["Option145"] = tValentinesDay2018_Text[23096]["Option145"]
tNpcGossip[23096]["OptionPoint145"] = "3-1"
-- tNpcGossip[23096]["Option144"] = tValentinesDay2018_Text[23096]["Option144"]
-- tNpcGossip[23096]["OptionFunc144"] = "NpcPosition_OpenGongLue"

-- tNpcGossip[23096]["OptionPoint144"] = "3-4"
-- -- 活动中（竞选阶段） 等级未到
tNpcGossip[23096]["Text1-5"] = {151, 152, 153, 154, 155, 156, 157}
tNpcGossip[23096]["Text151"] = tValentinesDay2018_Text[23096]["Text151"]
tNpcGossip[23096]["Text152"] = tValentinesDay2018_Text[23096]["Text152"]
tNpcGossip[23096]["Text153"] = tValentinesDay2018_Text[23096]["Text153"]
tNpcGossip[23096]["Text154"] = tValentinesDay2018_Text[23096]["Text154"]
tNpcGossip[23096]["Text155"] = tValentinesDay2018_Text[23096]["Text155"]
tNpcGossip[23096]["Text156"] = tValentinesDay2018_Text[23096]["Text156"]
tNpcGossip[23096]["Text157"] = tValentinesDay2018_Text[23096]["Text157"]
tNpcGossip[23096]["ChkFunc1-5"]= function()
	if Sys_ChkFullTime(tValentinesDay2018_Data["CampaignTime"]) then
		if not User_JudgeLevelAndMetempsychosis(tValentinesDay2018_Data["Level"],tValentinesDay2018_Data["Metempsychosis"]) then
			return true
		end
	end
	return false
end
tNpcGossip[23096]["tOption1-5"] = {151}
tNpcGossip[23096]["Option151"] = tValentinesDay2018_Text[23096]["Option151"]
-- tNpcGossip[23096]["Text158"] = tValentinesDay2018_Text[23096]["Text158"]
-- tNpcGossip[23096]["Text159"] = tValentinesDay2018_Text[23096]["Text159"]
-- tNpcGossip[23096]["Text1510"] = tValentinesDay2018_Text[23096]["Text1510"]
-- tNpcGossip[23096]["Text1511"] = tValentinesDay2018_Text[23096]["Text1511"]
-- tNpcGossip[23096]["ChkFunc1-5"]= function()
	-- local tManRnk = RankingFunc_GetNowData(tValentinesDay2018_Data["nManIndex"])
	-- local tWoManRnk = RankingFunc_GetNowData(tValentinesDay2018_Data["nWomanIndex"])
	-- local sManName = ""
	-- local sWoManName = ""
	-- local nIndex = 153
	-- for i = 1, 3 do
		-- -- 获取风流才子塝排名
		-- if tManRnk[i] ~= nil and tonumber(tManRnk[i]["UserId"]) > 0 and tManRnk[i]["Score"] > 0 then
			-- sManName = tManRnk[i]["UserName"]
		-- else
			-- sManName = tValentinesDay2018_Text["Dialog"]["Name"]
		-- end
		-- -- 获取红粉佳人榜排名
		-- if tWoManRnk[i] ~= nil and tonumber(tWoManRnk[i]["UserId"]) > 0 and tWoManRnk[i]["Score"] > 0 then
			-- sWoManName = tWoManRnk[i]["UserName"]
		-- else
			-- sWoManName = tValentinesDay2018_Text["Dialog"]["Name"]
		-- end
		-- tNpcGossip[23096]["Text" .. nIndex + i] = Sys_Alignment(tostring(sManName), 12, tostring(sWoManName), 36) .. "\n"
	-- end
	-- if Sys_ChkFullTime(tValentinesDay2018_Data["CampaignTime"]) then
		-- if not User_JudgeLevelAndMetempsychosis(tValentinesDay2018_Data["Level"],tValentinesDay2018_Data["Metempsychosis"]) then
			-- return true
		-- end
	-- end
	-- return false
-- end
-- tNpcGossip[23096]["tOption1-5"] = {151}
-- tNpcGossip[23096]["Option151"] = tValentinesDay2018_Text[23096]["Option151"]
-- 活动中（竞选阶段） 等级达到
tNpcGossip[23096]["Text1-6"] = {161, 162, 163, 164, 165, 167}
tNpcGossip[23096]["Text161"] = tValentinesDay2018_Text[23096]["Text161"]
tNpcGossip[23096]["Text162"] = tValentinesDay2018_Text[23096]["Text162"]
tNpcGossip[23096]["Text163"] = tValentinesDay2018_Text[23096]["Text163"]
tNpcGossip[23096]["Text164"] = tValentinesDay2018_Text[23096]["Text164"]
tNpcGossip[23096]["Text165"] = tValentinesDay2018_Text[23096]["Text165"]
-- tNpcGossip[23096]["Text166"] = tValentinesDay2018_Text[23096]["Text166"]
tNpcGossip[23096]["Text167"] = tValentinesDay2018_Text[23096]["Text167"]
tNpcGossip[23096]["ChkFunc1-6"]= function()
	if Sys_ChkFullTime(tValentinesDay2018_Data["CampaignTime"]) then
		if User_JudgeLevelAndMetempsychosis(tValentinesDay2018_Data["Level"],tValentinesDay2018_Data["Metempsychosis"]) then
			return true
		end
	end
	return false
end
tNpcGossip[23096]["tOption1-6"] = {161, 162, 163}
tNpcGossip[23096]["Option161"] = tValentinesDay2018_Text[23096]["Option161"]
tNpcGossip[23096]["OptionFunc161"] = "NpcPosition_PathFind</N>23097"
tNpcGossip[23096]["Option162"] = tValentinesDay2018_Text[23096]["Option162"]
tNpcGossip[23096]["OptionChkFunc162"] = function()
	-- 判断时间
	if Sys_ChkFullTime(tValentinesDay2018_Data["LectureTime"]) then
		tNpcGossip[23096]["OptionFunc162"] = "NpcPosition_PathFind</N>23157"
	else
		tNpcGossip[23096]["OptionFunc162"] = "NpcPosition_PathFind</N>24686"
	end
	return true
end
tNpcGossip[23096]["OptionFunc162"] = "NpcPosition_PathFind</N>23157"
tNpcGossip[23096]["Option163"] = tValentinesDay2018_Text[23096]["Option163"]
tNpcGossip[23096]["OptionPoint163"] = "3-1"
-- tNpcGossip[23096]["Text168"] = tValentinesDay2018_Text[23096]["Text168"]
-- tNpcGossip[23096]["Text169"] = tValentinesDay2018_Text[23096]["Text169"]
-- tNpcGossip[23096]["Text1610"] = tValentinesDay2018_Text[23096]["Text1610"]
-- tNpcGossip[23096]["ChkFunc1-6"]= function()
	-- local tManRnk = RankingFunc_GetNowData(tValentinesDay2018_Data["nManIndex"])
	-- local tWoManRnk = RankingFunc_GetNowData(tValentinesDay2018_Data["nWomanIndex"])
	-- local sManName = ""
	-- local sWoManName = ""
	-- local nIndex = 163
	-- for i = 1, 3 do
		-- -- 获取风流才子塝排名
		-- if tManRnk[i] ~= nil and tonumber(tManRnk[i]["UserId"]) > 0 and tManRnk[i]["Score"] > 0 then
			-- sManName = tManRnk[i]["UserName"]
		-- else
			-- sManName = tValentinesDay2018_Text["Dialog"]["Name"]
		-- end
		-- -- 获取红粉佳人榜排名
		-- if tWoManRnk[i] ~= nil and tonumber(tWoManRnk[i]["UserId"]) > 0 and tWoManRnk[i]["Score"] > 0 then
			-- sWoManName = tWoManRnk[i]["UserName"]
		-- else
			-- sWoManName = tValentinesDay2018_Text["Dialog"]["Name"]
		-- end
		-- tNpcGossip[23096]["Text" .. nIndex + i] = Sys_Alignment(tostring(sManName), 12, tostring(sWoManName), 36) .. "\n"
	-- end
	-- if Sys_ChkFullTime(tValentinesDay2018_Data["CampaignTime"]) then
		-- if User_JudgeLevelAndMetempsychosis(tValentinesDay2018_Data["Level"],tValentinesDay2018_Data["Metempsychosis"]) then
			-- return true
		-- end
	-- end
	-- return false
-- end
-- tNpcGossip[23096]["tOption1-6"] = {162}
-- -- tNpcGossip[23096]["Option161"] = tValentinesDay2018_Text[23096]["Option161"]
-- tNpcGossip[23096]["OptionPoint161"] = "3-1"
-- tNpcGossip[23096]["Option162"] = tValentinesDay2018_Text[23096]["Option162"]
-- tNpcGossip[23096]["OptionFunc162"] = "ValentinesDay2018_OpenWebsite"

-- 活动中  等级达到（十四天，每天第一次点NPC显示1段土味情话）
tNpcGossip[23096]["Text2-1"] = {211, 212, 213, 214, 215}
tNpcGossip[23096]["Text211"] = tValentinesDay2018_Text[23096]["Text211"]
tNpcGossip[23096]["Text212"] = tValentinesDay2018_Text[23096]["Text212"]
tNpcGossip[23096]["Text213"] = tValentinesDay2018_Text[23096]["Text213"]
tNpcGossip[23096]["Text214"] = tValentinesDay2018_Text[23096]["Text214"]
tNpcGossip[23096]["Text215"] = tValentinesDay2018_Text[23096]["Text215"]
tNpcGossip[23096]["tOption2-1"] = {211}
tNpcGossip[23096]["Option211"] = tValentinesDay2018_Text[23096]["Option211"]
tNpcGossip[23096]["OptionPoint211"] = "2-2"
-- 活动中  等级达到 土味情话回答
tNpcGossip[23096]["Text2-2"] = {221, 222, 223, 224, 225, 226, 227}
tNpcGossip[23096]["Text221"] = tValentinesDay2018_Text[23096]["Text221"]
tNpcGossip[23096]["Text222"] = tValentinesDay2018_Text[23096]["Text222"]
tNpcGossip[23096]["Text223"] = tValentinesDay2018_Text[23096]["Text223"]
tNpcGossip[23096]["Text224"] = tValentinesDay2018_Text[23096]["Text224"]
tNpcGossip[23096]["Text225"] = tValentinesDay2018_Text[23096]["Text225"]
tNpcGossip[23096]["Text226"] = tValentinesDay2018_Text[23096]["Text226"]
tNpcGossip[23096]["Text227"] = tValentinesDay2018_Text[23096]["Text227"]
tNpcGossip[23096]["tOption2-2"] = {221}
tNpcGossip[23096]["Option221"] = tValentinesDay2018_Text[23096]["Option221"]
tNpcGossip[23096]["OptionFunc221"] = "ValentinesDay2018_CasanovaDayFirstReward"


-- 魅力成长礼
tNpcGossip[23096]["Text3-1"] = {311, 312, 313, 314, 315, 316, 317, 318, 319, 3110, 3111, 3112, 3113}
tNpcGossip[23096]["Text311"] = tValentinesDay2018_Text[23096]["Text311"]
tNpcGossip[23096]["Text312"] = tValentinesDay2018_Text[23096]["Text312"]
tNpcGossip[23096]["Text313"] = tValentinesDay2018_Text[23096]["Text313"]
tNpcGossip[23096]["Text314"] = tValentinesDay2018_Text[23096]["Text314"]
tNpcGossip[23096]["Text315"] = tValentinesDay2018_Text[23096]["Text315"]
tNpcGossip[23096]["Text316"] = tValentinesDay2018_Text[23096]["Text316"]
tNpcGossip[23096]["Text317"] = tValentinesDay2018_Text[23096]["Text317"]
tNpcGossip[23096]["Text318"] = tValentinesDay2018_Text[23096]["Text318"]
tNpcGossip[23096]["Text319"] = tValentinesDay2018_Text[23096]["Text319"]
tNpcGossip[23096]["Text3110"] = tValentinesDay2018_Text[23096]["Text3110"]
tNpcGossip[23096]["Text3111"] = tValentinesDay2018_Text[23096]["Text3111"]
tNpcGossip[23096]["Text3112"] = tValentinesDay2018_Text[23096]["Text3112"]
tNpcGossip[23096]["Text3113"] = tValentinesDay2018_Text[23096]["Text3113"]
tNpcGossip[23096]["ChkFunc3-1"] = function()
	local nNpcId = tValentinesDay2018_Data["NpcId"][1]["NppcId"]
	local nIndex = 3
	ValentinesDay2018_CharmPullulateDialogQing(nNpcId, nIndex)
	-- 玩家魅力之星
	local nUserCharmEvent = tValentinesDay2018_Data["Stc"]["Event"][8]
	local nUserCharmData = tValentinesDay2018_Data["Stc"]["Data"][8]
	local nUserCharmNum = Get_UserStatisticValue(nUserCharmEvent, nUserCharmData)
	tNpcGossip[23096]["Text3113"] = string.format(tValentinesDay2018_Text[23096]["Text3113"], nUserCharmNum)
	return true
end
tNpcGossip[23096]["tOption3-1"] = {311, 312}
tNpcGossip[23096]["Option311"] = tValentinesDay2018_Text[23096]["Option311"]
tNpcGossip[23096]["OptionFunc311"] = "ValentinesDay2018_CharmPullulateRewardChk</N>23096" -- 一键领取
tNpcGossip[23096]["OptionChkFunc311"] = function()
	local nRewardEvent = tValentinesDay2018_Data["Stc"]["Event"][11]
	local nRewardData = tValentinesDay2018_Data["Stc"]["Data"][11]
	local nHaveReward = Get_UserStatisticValue(nRewardEvent, nRewardData)
	-- 判断是否可领取
	if nHaveReward >= 8 then
		return false
	end
	return true
end
tNpcGossip[23096]["Option312"] = tValentinesDay2018_Text[23096]["Option312"]
-- 【领取失败，没有奖励】
tNpcGossip[23096]["Text3-2"] = {321, 322}
tNpcGossip[23096]["Text321"] = tValentinesDay2018_Text[23096]["Text321"]
tNpcGossip[23096]["Text322"] = tValentinesDay2018_Text[23096]["Text322"]
tNpcGossip[23096]["tOption3-2"] = {321}
tNpcGossip[23096]["Option321"] = tValentinesDay2018_Text[23096]["Option321"]
tNpcGossip[23096]["OptionFunc321"] = "ValentinesDay2018_CasanovaDialogChk"
-- 【领取成功】
tNpcGossip[23096]["Text3-3"] = {331, 332, 333, 334, 335, 336, 337, 338, 339, 3310, 3311, 3312, 3313, 3314}
tNpcGossip[23096]["Text331"] = tValentinesDay2018_Text[23096]["Text331"]
tNpcGossip[23096]["Text332"] = tValentinesDay2018_Text[23096]["Text332"]
tNpcGossip[23096]["Text333"] = tValentinesDay2018_Text[23096]["Text333"]
tNpcGossip[23096]["Text334"] = tValentinesDay2018_Text[23096]["Text334"]
tNpcGossip[23096]["Text335"] = tValentinesDay2018_Text[23096]["Text335"]
tNpcGossip[23096]["Text336"] = tValentinesDay2018_Text[23096]["Text336"]
tNpcGossip[23096]["Text337"] = tValentinesDay2018_Text[23096]["Text337"]
tNpcGossip[23096]["Text338"] = tValentinesDay2018_Text[23096]["Text338"]
tNpcGossip[23096]["Text339"] = tValentinesDay2018_Text[23096]["Text339"]
tNpcGossip[23096]["Text3310"] = tValentinesDay2018_Text[23096]["Text3310"]
tNpcGossip[23096]["Text3311"] = tValentinesDay2018_Text[23096]["Text3311"]
tNpcGossip[23096]["Text3312"] = tValentinesDay2018_Text[23096]["Text3312"]
tNpcGossip[23096]["Text3313"] = tValentinesDay2018_Text[23096]["Text3313"]
tNpcGossip[23096]["Text3314"] = tValentinesDay2018_Text[23096]["Text3314"]
tNpcGossip[23096]["tOption3-3"] = {331}
tNpcGossip[23096]["Option331"] = tValentinesDay2018_Text[23096]["Option331"]
-- 七夕攻略
tNpcGossip[23096]["Text3-4"] = {341, 342, 343, 344, 345, 346, 347}
tNpcGossip[23096]["Text341"] = tValentinesDay2018_Text[23096]["Text341"]
tNpcGossip[23096]["Text342"] = tValentinesDay2018_Text[23096]["Text342"]
tNpcGossip[23096]["Text343"] = tValentinesDay2018_Text[23096]["Text343"]
tNpcGossip[23096]["Text344"] = tValentinesDay2018_Text[23096]["Text344"]
tNpcGossip[23096]["Text345"] = tValentinesDay2018_Text[23096]["Text345"]
tNpcGossip[23096]["Text346"] = tValentinesDay2018_Text[23096]["Text346"]
tNpcGossip[23096]["Text347"] = tValentinesDay2018_Text[23096]["Text347"]
tNpcGossip[23096]["tOption3-4"] = {341}
tNpcGossip[23096]["Option341"] = tValentinesDay2018_Text[23096]["Option341"]
-- 风流才子榜
tNpcGossip[23096]["Text4-1"] = {411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425}
tNpcGossip[23096]["Text411"] = tValentinesDay2018_Text[23096]["Text411"]
tNpcGossip[23096]["Text412"] = tValentinesDay2018_Text[23096]["Text412"]
tNpcGossip[23096]["Text413"] = tValentinesDay2018_Text[23096]["Text413"]
tNpcGossip[23096]["Text414"] = tValentinesDay2018_Text[23096]["Text414"]
tNpcGossip[23096]["Text415"] = tValentinesDay2018_Text[23096]["Text415"]
tNpcGossip[23096]["Text416"] = tValentinesDay2018_Text[23096]["Text416"]
tNpcGossip[23096]["Text417"] = tValentinesDay2018_Text[23096]["Text417"]
tNpcGossip[23096]["Text418"] = tValentinesDay2018_Text[23096]["Text418"]
tNpcGossip[23096]["Text419"] = tValentinesDay2018_Text[23096]["Text419"]
tNpcGossip[23096]["Text420"] = tValentinesDay2018_Text[23096]["Text420"]
tNpcGossip[23096]["Text421"] = tValentinesDay2018_Text[23096]["Text421"]
tNpcGossip[23096]["Text422"] = tValentinesDay2018_Text[23096]["Text422"]
tNpcGossip[23096]["Text423"] = tValentinesDay2018_Text[23096]["Text423"]
tNpcGossip[23096]["Text424"] = tValentinesDay2018_Text[23096]["Text424"]
tNpcGossip[23096]["Text425"] = tValentinesDay2018_Text[23096]["Text425"]
tNpcGossip[23096]["ChkFunc4-1"] = function()
	local nIndex = 413
	local tRankData = RankingFunc_GetNowData(tValentinesDay2018_Data["nManIndex"])
	local sName = ""
	local sScore = ""
	for i = 1, 10 do
		if tRankData[i] ~= nil and tonumber(tRankData[i]["UserId"]) > 0 and tRankData[i]["Score"] > 0 then
			sScore = tostring(tRankData[i]["Score"])
			sName = Sys_StringGSubTip(tRankData[i]["UserName"])
		else
			sScore = tValentinesDay2018_Text["Dialog"]["Score"]
			sName = tValentinesDay2018_Text["Dialog"]["Name"]
		end
		tNpcGossip[23096]["Text" .. nIndex + i] = Sys_Alignment(tostring(tValentinesDay2018_Text[23096]["Text" .. nIndex + i]), 8, tostring(sName), 20, tostring(sScore), 42) .. "\n"
	end
	-- 排名 魅力之星
	local nUserCharmEvent = tValentinesDay2018_Data["Stc"]["Event"][8]
	local nUserCharmData = tValentinesDay2018_Data["Stc"]["Data"][8]
	local nUserCharmNum = Get_UserStatisticValue(nUserCharmEvent, nUserCharmData)
	local nUserRank = RankingFunc_GetUserInRank(tValentinesDay2018_Data["nManIndex"])
	local sUserRank = tValentinesDay2018_Text["Dialog"]["Rank"][nUserRank]
	tNpcGossip[23096]["Text425"] = string.format(tValentinesDay2018_Text[23096]["Text425"], sUserRank, nUserCharmNum)
	return true
end
tNpcGossip[23096]["tOption4-1"] = {411}
tNpcGossip[23096]["Option411"] = tValentinesDay2018_Text[23096]["Option411"]
tNpcGossip[23096]["OptionPoint411"] = "5-1"
-- 风流才子榜奖励
tNpcGossip[23096]["Text5-1"] = {511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524}
tNpcGossip[23096]["Text511"] = tValentinesDay2018_Text[23096]["Text511"]
tNpcGossip[23096]["Text512"] = tValentinesDay2018_Text[23096]["Text512"]
tNpcGossip[23096]["Text513"] = tValentinesDay2018_Text[23096]["Text513"]
tNpcGossip[23096]["Text514"] = tValentinesDay2018_Text[23096]["Text514"]
tNpcGossip[23096]["Text515"] = tValentinesDay2018_Text[23096]["Text515"]
tNpcGossip[23096]["Text516"] = tValentinesDay2018_Text[23096]["Text516"]
tNpcGossip[23096]["Text517"] = tValentinesDay2018_Text[23096]["Text517"]
tNpcGossip[23096]["Text518"] = tValentinesDay2018_Text[23096]["Text518"]
tNpcGossip[23096]["Text519"] = tValentinesDay2018_Text[23096]["Text519"]
tNpcGossip[23096]["Text520"] = tValentinesDay2018_Text[23096]["Text520"]
tNpcGossip[23096]["Text521"] = tValentinesDay2018_Text[23096]["Text521"]
tNpcGossip[23096]["Text522"] = tValentinesDay2018_Text[23096]["Text522"]
tNpcGossip[23096]["Text523"] = tValentinesDay2018_Text[23096]["Text523"]
tNpcGossip[23096]["Text524"] = tValentinesDay2018_Text[23096]["Text524"]
tNpcGossip[23096]["ChkFunc5-1"] = function()
	local nIndex = 513
	local tRankData = RankingFunc_GetNowData(tValentinesDay2018_Data["nManIndex"])
	local sName = ""
	for i = 1, 10 do
		if tRankData[i] ~= nil and tonumber(tRankData[i]["UserId"]) > 0 and tRankData[i]["Score"] > 0 then
			sName = Sys_StringGSubTip(tRankData[i]["UserName"])
		else
			sName = tValentinesDay2018_Text["Dialog"]["Name"]
		end
		tNpcGossip[23096]["Text" .. nIndex + i] = Sys_Alignment(tostring(tValentinesDay2018_Text[23096]["Text" .. nIndex + i]), 6, tostring(sName), 18, tostring(tValentinesDay2018_Text["Dialog"]["ManRank"][i]), 35) .. "\n"
	end
	return true
end
tNpcGossip[23096]["tOption5-1"] = {511}
tNpcGossip[23096]["Option511"] = tValentinesDay2018_Text[23096]["Option511"]
tNpcGossip[23096]["OptionFunc511"] = "ValentinesDay2018_CasanovaDialogChk"
-- 红粉佳人榜
tNpcGossip[23096]["Text6-1"] = {611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625}
tNpcGossip[23096]["Text611"] = tValentinesDay2018_Text[23096]["Text611"]
tNpcGossip[23096]["Text612"] = tValentinesDay2018_Text[23096]["Text612"]
tNpcGossip[23096]["Text613"] = tValentinesDay2018_Text[23096]["Text613"]
tNpcGossip[23096]["Text614"] = tValentinesDay2018_Text[23096]["Text614"]
tNpcGossip[23096]["Text615"] = tValentinesDay2018_Text[23096]["Text615"]
tNpcGossip[23096]["Text616"] = tValentinesDay2018_Text[23096]["Text616"]
tNpcGossip[23096]["Text617"] = tValentinesDay2018_Text[23096]["Text617"]
tNpcGossip[23096]["Text618"] = tValentinesDay2018_Text[23096]["Text618"]
tNpcGossip[23096]["Text619"] = tValentinesDay2018_Text[23096]["Text619"]
tNpcGossip[23096]["Text620"] = tValentinesDay2018_Text[23096]["Text620"]
tNpcGossip[23096]["Text621"] = tValentinesDay2018_Text[23096]["Text621"]
tNpcGossip[23096]["Text622"] = tValentinesDay2018_Text[23096]["Text622"]
tNpcGossip[23096]["Text623"] = tValentinesDay2018_Text[23096]["Text623"]
tNpcGossip[23096]["Text624"] = tValentinesDay2018_Text[23096]["Text624"]
tNpcGossip[23096]["Text625"] = tValentinesDay2018_Text[23096]["Text625"]
tNpcGossip[23096]["ChkFunc6-1"] = function()
	local nIndex = 613
	local tRankData = RankingFunc_GetNowData(tValentinesDay2018_Data["nWomanIndex"])
	local sName = ""
	local sScore = ""
	for i = 1, 10 do
		if tRankData[i] ~= nil and tonumber(tRankData[i]["UserId"]) > 0 and tRankData[i]["Score"] > 0 then
			sScore = tostring(tRankData[i]["Score"])
			sName = Sys_StringGSubTip(tRankData[i]["UserName"])
		else
			sScore = tValentinesDay2018_Text["Dialog"]["Score"]
			sName = tValentinesDay2018_Text["Dialog"]["Name"]
		end
		tNpcGossip[23096]["Text" .. nIndex + i] = Sys_Alignment(tostring(tValentinesDay2018_Text[23096]["Text" .. nIndex + i]), 8, tostring(sName), 20, tostring(sScore), 42) .. "\n"
	end
		-- 排名 魅力之星
	local nUserCharmEvent = tValentinesDay2018_Data["Stc"]["Event"][8]
	local nUserCharmData = tValentinesDay2018_Data["Stc"]["Data"][8]
	local nUserCharmNum = Get_UserStatisticValue(nUserCharmEvent, nUserCharmData)
	local nUserRank = RankingFunc_GetUserInRank(tValentinesDay2018_Data["nWomanIndex"])
	local sUserRank = tValentinesDay2018_Text["Dialog"]["Rank"][nUserRank]
	tNpcGossip[23096]["Text625"] = string.format(tValentinesDay2018_Text[23096]["Text625"], sUserRank, nUserCharmNum)

	return true
end
tNpcGossip[23096]["tOption6-1"] = {611}
tNpcGossip[23096]["Option611"] = tValentinesDay2018_Text[23096]["Option611"]
tNpcGossip[23096]["OptionPoint611"] = "7-1"
-- 红粉佳人榜奖励
tNpcGossip[23096]["Text7-1"] = {711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724}
tNpcGossip[23096]["Text711"] = tValentinesDay2018_Text[23096]["Text711"]
tNpcGossip[23096]["Text712"] = tValentinesDay2018_Text[23096]["Text712"]
tNpcGossip[23096]["Text713"] = tValentinesDay2018_Text[23096]["Text713"]
tNpcGossip[23096]["Text714"] = tValentinesDay2018_Text[23096]["Text714"]
tNpcGossip[23096]["Text715"] = tValentinesDay2018_Text[23096]["Text715"]
tNpcGossip[23096]["Text716"] = tValentinesDay2018_Text[23096]["Text716"]
tNpcGossip[23096]["Text717"] = tValentinesDay2018_Text[23096]["Text717"]
tNpcGossip[23096]["Text718"] = tValentinesDay2018_Text[23096]["Text718"]
tNpcGossip[23096]["Text719"] = tValentinesDay2018_Text[23096]["Text719"]
tNpcGossip[23096]["Text720"] = tValentinesDay2018_Text[23096]["Text720"]
tNpcGossip[23096]["Text721"] = tValentinesDay2018_Text[23096]["Text721"]
tNpcGossip[23096]["Text722"] = tValentinesDay2018_Text[23096]["Text722"]
tNpcGossip[23096]["Text723"] = tValentinesDay2018_Text[23096]["Text723"]
tNpcGossip[23096]["Text724"] = tValentinesDay2018_Text[23096]["Text724"]
tNpcGossip[23096]["ChkFunc7-1"] = function()
	local nIndex = 713
	local tRankData = RankingFunc_GetNowData(tValentinesDay2018_Data["nWomanIndex"])
	local sName = ""
	for i = 1, 10 do
		if tRankData[i] ~= nil and tonumber(tRankData[i]["UserId"]) > 0 and tRankData[i]["Score"] > 0 then
			sName = Sys_StringGSubTip(tRankData[i]["UserName"])
		else
			sName = tValentinesDay2018_Text["Dialog"]["Name"]
		end
		tNpcGossip[23096]["Text" .. nIndex + i] = Sys_Alignment(tostring(tValentinesDay2018_Text[23096]["Text" .. nIndex + i]), 6, tostring(sName), 18, tostring(tValentinesDay2018_Text["Dialog"]["WomanRank"][i]), 35) .. "\n"
	end
	return true
end
tNpcGossip[23096]["tOption7-1"] = {711}
tNpcGossip[23096]["Option711"] = tValentinesDay2018_Text[23096]["Option711"]
tNpcGossip[23096]["OptionFunc711"] = "ValentinesDay2018_CasanovaDialogChk"
-- 全球票选阶段的
tNpcGossip[24685]= tNpcGossip[23096]

-- 【情人匣制作】天工宝箱
tNpcFace[6174] = 112
tNpcGossip[23097]= tNpcGossip[23097] or DefaultNpc:new{}
tNpcGossip[23097]["OptionHidden"] = 1
-- 活动前
tNpcGossip[23097]["Text1-1"] = {111, 112, 113, 114, 118, 115, 116, 117}
tNpcGossip[23097]["Text111"] = tValentinesDay2018_Text[23097]["Text111"]
tNpcGossip[23097]["Text112"] = tValentinesDay2018_Text[23097]["Text112"]
tNpcGossip[23097]["Text113"] = tValentinesDay2018_Text[23097]["Text113"]
tNpcGossip[23097]["Text114"] = tValentinesDay2018_Text[23097]["Text114"]
tNpcGossip[23097]["Text118"] = tValentinesDay2018_Text[23097]["Text118"]
tNpcGossip[23097]["Text115"] = tValentinesDay2018_Text[23097]["Text115"]
tNpcGossip[23097]["Text116"] = tValentinesDay2018_Text[23097]["Text116"]
tNpcGossip[23097]["Text117"] = tValentinesDay2018_Text[23097]["Text117"]
tNpcGossip[23097]["ChkFunc1-1"]= function()
	if Sys_ChkFullTime(tValentinesDay2018_Data["BeforeTime"]) then
		return true
	end
	return false
end
tNpcGossip[23097]["tOption1-1"] = {111}
tNpcGossip[23097]["Option111"] = tValentinesDay2018_Text[23097]["Option111"]
-- 活动后
tNpcGossip[23097]["Text1-2"] = {121, 122}
tNpcGossip[23097]["Text121"] = tValentinesDay2018_Text[23097]["Text121"]
tNpcGossip[23097]["Text122"] = tValentinesDay2018_Text[23097]["Text122"]
tNpcGossip[23097]["ChkFunc1-2"]= function()
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		return true
	end
	return false
end
tNpcGossip[23097]["tOption1-2"] = {121}
tNpcGossip[23097]["Option121"] = tValentinesDay2018_Text[23097]["Option121"]
-- 活动中  等级未到
tNpcGossip[23097]["Text1-3"] = {131, 132, 133, 134, 135, 136, 137, 138}
tNpcGossip[23097]["Text131"] = tValentinesDay2018_Text[23097]["Text131"]
tNpcGossip[23097]["Text132"] = tValentinesDay2018_Text[23097]["Text132"]
tNpcGossip[23097]["Text133"] = tValentinesDay2018_Text[23097]["Text133"]
tNpcGossip[23097]["Text134"] = tValentinesDay2018_Text[23097]["Text134"]
tNpcGossip[23097]["Text135"] = tValentinesDay2018_Text[23097]["Text135"]
tNpcGossip[23097]["Text136"] = tValentinesDay2018_Text[23097]["Text136"]
tNpcGossip[23097]["Text137"] = tValentinesDay2018_Text[23097]["Text137"]
tNpcGossip[23097]["Text138"] = tValentinesDay2018_Text[23097]["Text138"]
tNpcGossip[23097]["ChkFunc1-3"]= function()
	if Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		if not User_JudgeLevelAndMetempsychosis(tValentinesDay2018_Data["Level"],tValentinesDay2018_Data["Metempsychosis"]) then
			return true
		end
	end
	return false
end
tNpcGossip[23097]["tOption1-3"] = {131}
tNpcGossip[23097]["Option131"] = tValentinesDay2018_Text[23097]["Option131"]
-- 活动中  等级达到
tNpcGossip[23097]["Text1-4"] = {141, 142, 143, 144, 147, 145, 146}
tNpcGossip[23097]["Text141"] = tValentinesDay2018_Text[23097]["Text141"]
tNpcGossip[23097]["Text142"] = tValentinesDay2018_Text[23097]["Text142"]
tNpcGossip[23097]["Text143"] = tValentinesDay2018_Text[23097]["Text143"]
tNpcGossip[23097]["Text144"] = tValentinesDay2018_Text[23097]["Text144"]
tNpcGossip[23097]["Text145"] = tValentinesDay2018_Text[23097]["Text145"]
tNpcGossip[23097]["Text146"] = tValentinesDay2018_Text[23097]["Text146"]
tNpcGossip[23097]["Text147"] = tValentinesDay2018_Text[23097]["Text147"]
tNpcGossip[23097]["ChkFunc1-4"]= function()
	-- local nDatyRewardEvent = tValentinesDay2018_Data["Stc"]["Event"][9]
	-- local nDatyRewardData = tValentinesDay2018_Data["Stc"]["Data"][9]
	-- -- 判断是否隔天
	-- if Task_StcInterval(nDatyRewardEvent, nDatyRewardData, 1, 4) then
		-- Task_SetStatistic(nDatyRewardEvent, nDatyRewardData, 0, 1)
		-- Task_SetStcTimestamp(nDatyRewardEvent, nDatyRewardData, 0)
	-- end
	-- if Task_ChkStcValue(nDatyRewardEvent, nDatyRewardData, ">", 0) then
		-- tNpcGossip[23097]["Option142"] = tValentinesDay2018_Text[23097]["Option143"]
	-- else
		-- tNpcGossip[23097]["Option142"] = tValentinesDay2018_Text[23097]["Option142"]
	-- end
	-- -- 每日是否领取奖励
	-- local nDayRewardEvent = tValentinesDay2018_Data["Stc"]["Event"][14]
	-- local nDayRewardData = tValentinesDay2018_Data["Stc"]["Data"][14]
	-- -- 判断是否隔天
	-- if Task_StcInterval(nDayRewardEvent, nDayRewardData, 1, 4) then
		-- Task_SetStatistic(nDayRewardEvent, nDayRewardData, 0, 1)
		-- Task_SetStcTimestamp(nDayRewardEvent, nDayRewardData, 0)
	-- end
	-- if Task_ChkStcValue(nDayRewardEvent, nDayRewardData, ">", 0) then
		-- tNpcGossip[23097]["Option145"] = tValentinesDay2018_Text[23097]["Option146"]
	-- else
		-- tNpcGossip[23097]["Option145"] = tValentinesDay2018_Text[23097]["Option145"]
	-- end
	
	-- 魅力之星赋值
	local nUserCharmEvent = tValentinesDay2018_Data["Stc"]["Event"][8]
	local nUserCharmData = tValentinesDay2018_Data["Stc"]["Data"][8]
	local nUserCharmNum = Get_UserStatisticValue(nUserCharmEvent, nUserCharmData)
	-- 每日获得的魅力值
	local nDayGlamourEvent = tValentinesDay2018_Data["Stc"]["Event"][13]
	local nDayGlamourData = tValentinesDay2018_Data["Stc"]["Data"][13]
	-- 判断是否隔天
	if Task_StcInterval(nDayGlamourEvent, nDayGlamourData, 1, 4) then
		Task_SetStatistic(nDayGlamourEvent, nDayGlamourData, 0, 1)
		Task_SetStcTimestamp(nDayGlamourEvent, nDayGlamourData, 0)
	end
	local nDayGlamour = Get_UserStatisticValue(nDayGlamourEvent, nDayGlamourData)
	tNpcGossip[23097]["Text147"] = string.format(tValentinesDay2018_Text[23097]["Text147"], nUserCharmNum, nDayGlamour)
	
	if Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tValentinesDay2018_Data["Level"],tValentinesDay2018_Data["Metempsychosis"]) then
			return true
		end
	end
	return false
end
tNpcGossip[23097]["tOption1-4"] = {141}
tNpcGossip[23097]["Option141"] = tValentinesDay2018_Text[23097]["Option141"]
-- tNpcGossip[23097]["OptionPoint141"] = "2-1"
tNpcGossip[23097]["OptionFunc141"] = "ValentinesDay2018_FabricationTheBox</N>23097" -- 制作浪漫情人匣
-- tNpcGossip[23097]["Option142"] = tValentinesDay2018_Text[23097]["Option142"]
-- tNpcGossip[23097]["OptionFunc142"] = function()
	-- local nDatyRewardEvent = tValentinesDay2018_Data["Stc"]["Event"][9]
	-- local nDatyRewardData = tValentinesDay2018_Data["Stc"]["Data"][9]
	-- -- 判断是否隔天
	-- if Task_StcInterval(nDatyRewardEvent, nDatyRewardData, 1, 4) then
		-- Task_SetStatistic(nDatyRewardEvent, nDatyRewardData, 0, 1)
		-- Task_SetStcTimestamp(nDatyRewardEvent, nDatyRewardData, 0)
	-- end
	-- if Task_ChkStcValue(nDatyRewardEvent, nDatyRewardData, ">", 0) then
		-- tNpcGossip[23097]["Option142"] = tValentinesDay2018_Text[23097]["Option143"]
	-- else
		-- tNpcGossip[23097]["Option142"] = tValentinesDay2018_Text[23097]["Option142"]
	-- end
	-- return true
-- end
-- tNpcGossip[23097]["OptionFunc142"] = "ValentinesDay2018_GetBoxReward</N>23097" -- 掏宝箱
-- tNpcGossip[23097]["Option144"] = tValentinesDay2018_Text[23097]["Option144"]
-- tNpcGossip[23097]["OptionPoint144"] = "5-1"
-- tNpcGossip[23097]["Option145"] = tValentinesDay2018_Text[23097]["Option145"]
-- tNpcGossip[23097]["OptionFunc145"] = "ValentinesDay2018_ChkGlamourReward</N>23097"

-- 制作浪漫情人匣
tNpcGossip[23097]["Text2-1"] = {211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226}
tNpcGossip[23097]["Text211"] = tValentinesDay2018_Text[23097]["Text211"]
tNpcGossip[23097]["Text212"] = tValentinesDay2018_Text[23097]["Text212"]
tNpcGossip[23097]["Text213"] = tValentinesDay2018_Text[23097]["Text213"]
tNpcGossip[23097]["Text214"] = tValentinesDay2018_Text[23097]["Text214"]
tNpcGossip[23097]["Text215"] = tValentinesDay2018_Text[23097]["Text215"]
tNpcGossip[23097]["Text216"] = tValentinesDay2018_Text[23097]["Text216"]
tNpcGossip[23097]["Text217"] = tValentinesDay2018_Text[23097]["Text217"]
tNpcGossip[23097]["Text218"] = tValentinesDay2018_Text[23097]["Text218"]
tNpcGossip[23097]["Text219"] = tValentinesDay2018_Text[23097]["Text219"]
tNpcGossip[23097]["Text220"] = tValentinesDay2018_Text[23097]["Text220"]
tNpcGossip[23097]["Text221"] = tValentinesDay2018_Text[23097]["Text221"]
tNpcGossip[23097]["Text222"] = tValentinesDay2018_Text[23097]["Text222"]
tNpcGossip[23097]["Text223"] = tValentinesDay2018_Text[23097]["Text223"]
tNpcGossip[23097]["Text224"] = tValentinesDay2018_Text[23097]["Text224"]
tNpcGossip[23097]["Text225"] = tValentinesDay2018_Text[23097]["Text225"]
tNpcGossip[23097]["Text226"] = tValentinesDay2018_Text[23097]["Text226"]
tNpcGossip[23097]["ChkFunc2-1"]= function()
	local nDayFlowerEvent = tValentinesDay2018_Data["Stc"]["Event"][16]
	local nDayFlowerData = tValentinesDay2018_Data["Stc"]["Data"][16]
	-- 判断是否隔天
	if Task_StcInterval(nDayFlowerEvent, nDayFlowerData, 1, 4) then
		Task_SetStatistic(nDayFlowerEvent, nDayFlowerData, 0, 1)
		Task_SetStcTimestamp(nDayFlowerEvent, nDayFlowerData, 0)
	end
	local nFlowerGlamour = Get_UserStatisticValue(nDayFlowerEvent, nDayFlowerData)
	tNpcGossip[23097]["Text226"] = string.format(tValentinesDay2018_Text[23097]["Text226"], nFlowerGlamour)
	return true
end
tNpcGossip[23097]["tOption2-1"] = {244, 245, 246, 247, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242}
tNpcGossip[23097]["Option244"] = tValentinesDay2018_Text[23097]["Option244"]
tNpcGossip[23097]["Option245"] = tValentinesDay2018_Text[23097]["Option245"]
tNpcGossip[23097]["Option246"] = tValentinesDay2018_Text[23097]["Option246"]
tNpcGossip[23097]["Option247"] = tValentinesDay2018_Text[23097]["Option247"]
tNpcGossip[23097]["Option211"] = tValentinesDay2018_Text[23097]["Option211"]
tNpcGossip[23097]["Option212"] = tValentinesDay2018_Text[23097]["Option212"]
tNpcGossip[23097]["Option213"] = tValentinesDay2018_Text[23097]["Option213"]
tNpcGossip[23097]["Option214"] = tValentinesDay2018_Text[23097]["Option214"]
tNpcGossip[23097]["Option215"] = tValentinesDay2018_Text[23097]["Option215"]
tNpcGossip[23097]["Option216"] = tValentinesDay2018_Text[23097]["Option216"]
tNpcGossip[23097]["Option217"] = tValentinesDay2018_Text[23097]["Option217"]
tNpcGossip[23097]["Option218"] = tValentinesDay2018_Text[23097]["Option218"]
tNpcGossip[23097]["Option219"] = tValentinesDay2018_Text[23097]["Option219"]
tNpcGossip[23097]["Option220"] = tValentinesDay2018_Text[23097]["Option220"]
tNpcGossip[23097]["Option221"] = tValentinesDay2018_Text[23097]["Option221"]
tNpcGossip[23097]["Option222"] = tValentinesDay2018_Text[23097]["Option222"]
tNpcGossip[23097]["Option223"] = tValentinesDay2018_Text[23097]["Option223"]
tNpcGossip[23097]["Option224"] = tValentinesDay2018_Text[23097]["Option224"]
tNpcGossip[23097]["Option225"] = tValentinesDay2018_Text[23097]["Option225"]
tNpcGossip[23097]["Option226"] = tValentinesDay2018_Text[23097]["Option226"]
tNpcGossip[23097]["Option227"] = tValentinesDay2018_Text[23097]["Option227"]
tNpcGossip[23097]["Option228"] = tValentinesDay2018_Text[23097]["Option228"]
tNpcGossip[23097]["Option229"] = tValentinesDay2018_Text[23097]["Option229"]
tNpcGossip[23097]["Option230"] = tValentinesDay2018_Text[23097]["Option230"]
tNpcGossip[23097]["Option231"] = tValentinesDay2018_Text[23097]["Option231"]
tNpcGossip[23097]["Option232"] = tValentinesDay2018_Text[23097]["Option232"]
tNpcGossip[23097]["Option233"] = tValentinesDay2018_Text[23097]["Option233"]
tNpcGossip[23097]["Option234"] = tValentinesDay2018_Text[23097]["Option234"]
tNpcGossip[23097]["Option235"] = tValentinesDay2018_Text[23097]["Option235"]
tNpcGossip[23097]["Option236"] = tValentinesDay2018_Text[23097]["Option236"]
tNpcGossip[23097]["Option237"] = tValentinesDay2018_Text[23097]["Option237"]
tNpcGossip[23097]["Option238"] = tValentinesDay2018_Text[23097]["Option238"]
tNpcGossip[23097]["Option239"] = tValentinesDay2018_Text[23097]["Option239"]
tNpcGossip[23097]["Option240"] = tValentinesDay2018_Text[23097]["Option240"]
tNpcGossip[23097]["Option241"] = tValentinesDay2018_Text[23097]["Option241"]
tNpcGossip[23097]["Option242"] = tValentinesDay2018_Text[23097]["Option242"]
-- tNpcGossip[23097]["Option243"] = tValentinesDay2018_Text[23097]["Option243"]
tNpcGossip[23097]["OptionChkFunc241"] = function()
	for i = 1, 30 do
		if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][i]) then
			return true
		end
	end
	return false
end
tNpcGossip[23097]["OptionFunc241"] = "ValentinesDay2018_SubmissionAllItem</N>23097" -- 一键提交
tNpcGossip[23097]["OptionChkFunc242"] = function()
	-- 判断是否可以制作
	local nSaveEvent =  tValentinesDay2018_Data["Stc"]["Event"][15]
	local nSaveData =  tValentinesDay2018_Data["Stc"]["Data"][15]
	local nSaveNum = Get_UserStatisticValue(nSaveEvent, nSaveData)
	if nSaveNum > 0 then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc242"] = "ValentinesDay2018_StartFabricationBox</N>23097" -- 开始制作
-- 选项判断
-- 100w金币
tNpcGossip[23097]["OptionChkFunc244"] = function()
	local nNeedMoney = tValentinesDay2018_Data["ItemNum"][1]
	if User_CanPutMoney2Bag(-nNeedMoney) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc244"] = "ValentinesDay2018_SubmissionMoneyCheck</N>23097</N>1" -- 交材料
-- 1000w金币
tNpcGossip[23097]["OptionChkFunc245"] = function()
	local nNeedMoney = tValentinesDay2018_Data["ItemNum"][2]
	if User_CanPutMoney2Bag(-nNeedMoney) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc245"] = "ValentinesDay2018_SubmissionMoneyCheck</N>23097</N>2" -- 交材料
-- 50赠点
tNpcGossip[23097]["OptionChkFunc246"] = function()
	local nNeedEMoneyMono = tValentinesDay2018_Data["ItemNum"][3]
	if Get_UserMonoEMoney() > nNeedEMoneyMono then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc246"] = "ValentinesDay2018_SubmissionMoneyCheck</N>23097</N>3" -- 交材料
-- 500赠点
tNpcGossip[23097]["OptionChkFunc247"] = function()
	local nNeedEMoneyMono = tValentinesDay2018_Data["ItemNum"][4]
	if Get_UserMonoEMoney() > nNeedEMoneyMono then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc247"] = "ValentinesDay2018_SubmissionMoneyCheck</N>23097</N>4" -- 交材料
-- 神仙精华露
tNpcGossip[23097]["OptionChkFunc211"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][1]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc211"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>3310192" -- 交材料
-- 施华洛项链
tNpcGossip[23097]["OptionChkFunc212"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][2]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc212"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>3310193" -- 交材料
-- 蒂芙尼钻戒
tNpcGossip[23097]["OptionChkFunc213"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][3]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc213"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>3310194" -- 交材料
-- 耐克篮球鞋
tNpcGossip[23097]["OptionChkFunc214"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][4]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc214"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>3310195" -- 交材料
-- 迪奥墨镜
tNpcGossip[23097]["OptionChkFunc215"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][5]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc215"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>3310196" -- 交材料
-- 爱马仕钱包
tNpcGossip[23097]["OptionChkFunc216"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][6]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc216"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>3310197" -- 交材料
-- 玫瑰兑换券
tNpcGossip[23097]["OptionChkFunc217"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][7]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc217"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>3304134" -- 交材料 
-- 兰花兑换券
tNpcGossip[23097]["OptionChkFunc218"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][8]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc218"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>3304135" -- 交材料
-- 百合兑换券
tNpcGossip[23097]["OptionChkFunc219"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][9]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc219"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>3304136" -- 交材料
-- 郁金香兑换券
tNpcGossip[23097]["OptionChkFunc220"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][10]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc220"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>3304137" -- 交材料
-- 1朵郁金香
tNpcGossip[23097]["OptionChkFunc221"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][11]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc221"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>754001" -- 交材料
-- 3朵郁金香
tNpcGossip[23097]["OptionChkFunc222"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][12]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc222"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>754003" -- 交材料
-- 9朵郁金香
tNpcGossip[23097]["OptionChkFunc223"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][13]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc223"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>754009" -- 交材料
-- 99朵郁金香
tNpcGossip[23097]["OptionChkFunc224"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][14]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc224"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>754099" -- 交材料
-- 999朵郁金香    这个直接超过4000  不考虑
tNpcGossip[23097]["OptionChkFunc225"] = function()
	-- if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][15]) then
		-- return true
	-- end
	return false
end
tNpcGossip[23097]["OptionFunc225"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>754999" -- 交材料
-- 1朵兰花
tNpcGossip[23097]["OptionChkFunc226"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][16]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc226"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>753001" -- 交材料
-- 3朵兰花
tNpcGossip[23097]["OptionChkFunc227"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][17]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc227"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>753003" -- 交材料
-- 9朵兰花
tNpcGossip[23097]["OptionChkFunc228"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][18]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc228"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>753009" -- 交材料
-- 99朵兰花
tNpcGossip[23097]["OptionChkFunc229"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][19]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc229"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>753099" -- 交材料
-- 999朵兰花
tNpcGossip[23097]["OptionChkFunc230"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][20]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc230"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>753999" -- 交材料
-- 1朵百合花
tNpcGossip[23097]["OptionChkFunc231"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][21]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc231"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>752001" -- 交材料
-- 3朵百合花
tNpcGossip[23097]["OptionChkFunc232"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][22]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc232"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>752003" -- 交材料
-- 9朵百合花
tNpcGossip[23097]["OptionChkFunc233"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][23]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc233"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>752009" -- 交材料
-- 99朵百合花
tNpcGossip[23097]["OptionChkFunc234"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][24]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc234"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>752099" -- 交材料
-- 999朵百合花
tNpcGossip[23097]["OptionChkFunc235"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][25]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc235"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>752999" -- 交材料
-- 1朵红玫瑰
tNpcGossip[23097]["OptionChkFunc236"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][26]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc236"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>751001" -- 交材料
-- 3朵红玫瑰
tNpcGossip[23097]["OptionChkFunc237"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][27]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc237"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>751003" -- 交材料
-- 9朵红玫瑰
tNpcGossip[23097]["OptionChkFunc238"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][28]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc238"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>751009" -- 交材料
-- 99朵红玫瑰
tNpcGossip[23097]["OptionChkFunc239"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][29]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc239"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>751099" -- 交材料
-- 999朵红玫瑰
tNpcGossip[23097]["OptionChkFunc240"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][30]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc240"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>751999" -- 交材料

-- 一键提交 【成功】
tNpcGossip[23097]["Text3-1"] = {311, 312, 313, 314, 315, 316, 317, 318, 319, 3110, 3111, 3112, 3113, 3114, 3115}
tNpcGossip[23097]["Text311"] = tValentinesDay2018_Text[23097]["Text311"]
tNpcGossip[23097]["Text312"] = tValentinesDay2018_Text[23097]["Text312"]
tNpcGossip[23097]["Text313"] = tValentinesDay2018_Text[23097]["Text313"]
tNpcGossip[23097]["Text314"] = tValentinesDay2018_Text[23097]["Text314"]
tNpcGossip[23097]["Text315"] = tValentinesDay2018_Text[23097]["Text315"]
tNpcGossip[23097]["Text316"] = tValentinesDay2018_Text[23097]["Text316"]
tNpcGossip[23097]["Text317"] = tValentinesDay2018_Text[23097]["Text317"]
tNpcGossip[23097]["Text318"] = tValentinesDay2018_Text[23097]["Text318"]
tNpcGossip[23097]["Text319"] = tValentinesDay2018_Text[23097]["Text319"]
tNpcGossip[23097]["Text3110"] = tValentinesDay2018_Text[23097]["Text3110"]
tNpcGossip[23097]["Text3111"] = tValentinesDay2018_Text[23097]["Text3111"]
tNpcGossip[23097]["Text3112"] = tValentinesDay2018_Text[23097]["Text3112"]
tNpcGossip[23097]["Text3113"] = tValentinesDay2018_Text[23097]["Text3113"]
tNpcGossip[23097]["Text3114"] = tValentinesDay2018_Text[23097]["Text3114"]
tNpcGossip[23097]["Text3115"] = tValentinesDay2018_Text[23097]["Text3115"]
tNpcGossip[23097]["ChkFunc3-1"] = function()
	local nIndex = 14
	-- 已提交材料赋值
	for i = 4, 12 do
		local nEventNum = nIndex + i
		local nItemEvent = tValentinesDay2018_Data["Stc"]["Event"][nEventNum]
		local nItemData = tValentinesDay2018_Data["Stc"]["Data"][nEventNum]
		local nItemNum = Get_UserStatisticValue(nItemEvent, nItemData)
		local nUserSex = ValentinesDay2018_GetUserLoadSex()
		if nItemNum > 0 then
			tNpcGossip[23097]["Text31" .. i] = string.format(tValentinesDay2018_Text[23097]["Text31" .. i], tValentinesDay2018_Text["Dialog"]["ItemName"][nUserSex][i - 3], nItemNum)
		else
			tNpcGossip[23097]["Text31" .. i] = ""
		end
	end
	-- 魅力之星赋值
	local nSaveEvent =  tValentinesDay2018_Data["Stc"]["Event"][15]
	local nSaveData =  tValentinesDay2018_Data["Stc"]["Data"][15]
	local nSaveNum = Get_UserStatisticValue(nSaveEvent, nSaveData)
	tNpcGossip[23097]["Text3115"] = string.format(tValentinesDay2018_Text[23097]["Text3115"], nSaveNum)
	return true
end
tNpcGossip[23097]["tOption3-1"] = {311}
tNpcGossip[23097]["Option311"] = tValentinesDay2018_Text[23097]["Option311"]
tNpcGossip[23097]["OptionFunc311"] = "ValentinesDay2018_StartFabricationBox</N>23097"
-- 单种材料提交
tNpcGossip[23097]["Text3-2"] = {321, 322}
tNpcGossip[23097]["Text321"] = tValentinesDay2018_Text[23097]["Text321"]
tNpcGossip[23097]["Text322"] = tValentinesDay2018_Text[23097]["Text322"]
tNpcGossip[23097]["tOption3-2"] = {321, 322, 323}
tNpcGossip[23097]["Option321"] = tValentinesDay2018_Text[23097]["Option321"]
-- tNpcGossip[23097]["OptionFunc321"] = "ValentinesDay2018_SubmissionItem</N>23097</N></N>1" -- 提交1个
tNpcGossip[23097]["Option322"] = tValentinesDay2018_Text[23097]["Option322"]
-- tNpcGossip[23097]["OptionFunc322"] = "ValentinesDay2018_SubmissionItem</N>23097</N></N>1" -- 提交5个
tNpcGossip[23097]["Option323"] = tValentinesDay2018_Text[23097]["Option323"]
-- tNpcGossip[23097]["OptionFunc323"] = "ValentinesDay2018_SubmissionItem</N>23097</N>" -- 一键提交
-- 提交【成功】
tNpcGossip[23097]["Text3-3"] = {331, 332, 333, 334, 335, 336, 337, 338, 339, 3310, 3311, 3312, 3313, 3314}
tNpcGossip[23097]["Text331"] = tValentinesDay2018_Text[23097]["Text331"]
tNpcGossip[23097]["Text332"] = tValentinesDay2018_Text[23097]["Text332"]
tNpcGossip[23097]["Text333"] = tValentinesDay2018_Text[23097]["Text333"]
tNpcGossip[23097]["Text334"] = tValentinesDay2018_Text[23097]["Text334"]
tNpcGossip[23097]["Text335"] = tValentinesDay2018_Text[23097]["Text335"]
tNpcGossip[23097]["Text336"] = tValentinesDay2018_Text[23097]["Text336"]
tNpcGossip[23097]["Text337"] = tValentinesDay2018_Text[23097]["Text337"]
tNpcGossip[23097]["Text338"] = tValentinesDay2018_Text[23097]["Text338"]
tNpcGossip[23097]["Text339"] = tValentinesDay2018_Text[23097]["Text339"]
tNpcGossip[23097]["Text3310"] = tValentinesDay2018_Text[23097]["Text3310"]
tNpcGossip[23097]["Text3311"] = tValentinesDay2018_Text[23097]["Text3311"]
tNpcGossip[23097]["Text3312"] = tValentinesDay2018_Text[23097]["Text3312"]
tNpcGossip[23097]["Text3313"] = tValentinesDay2018_Text[23097]["Text3313"]
tNpcGossip[23097]["Text3314"] = tValentinesDay2018_Text[23097]["Text3314"]
tNpcGossip[23097]["ChkFunc3-3"] = function()
	local nIndex = 14
	-- 已提交材料赋值
	for i = 4, 12 do
		local nEventNum = nIndex + i
		local nItemEvent = tValentinesDay2018_Data["Stc"]["Event"][nEventNum]
		local nItemData = tValentinesDay2018_Data["Stc"]["Data"][nEventNum]
		local nItemNum = Get_UserStatisticValue(nItemEvent, nItemData)
		local nUserSex = ValentinesDay2018_GetUserLoadSex()
		if nItemNum > 0 then
			tNpcGossip[23097]["Text33" .. i] = string.format(tValentinesDay2018_Text[23097]["Text33" .. i], tValentinesDay2018_Text["Dialog"]["ItemName"][nUserSex][i - 3], nItemNum)
		else
			tNpcGossip[23097]["Text33" .. i] = ""
		end
	end
	-- 魅力之星赋值
	local nSaveEvent =  tValentinesDay2018_Data["Stc"]["Event"][15]
	local nSaveData =  tValentinesDay2018_Data["Stc"]["Data"][15]
	local nSaveNum = Get_UserStatisticValue(nSaveEvent, nSaveData)
	tNpcGossip[23097]["Text3314"] = string.format(tValentinesDay2018_Text[23097]["Text3314"], nSaveNum)
	return true
end
tNpcGossip[23097]["tOption3-3"] = {331, 332}
tNpcGossip[23097]["Option331"] = tValentinesDay2018_Text[23097]["Option331"]
tNpcGossip[23097]["OptionPoint331"] = "2-1"
tNpcGossip[23097]["Option332"] = tValentinesDay2018_Text[23097]["Option332"]
tNpcGossip[23097]["OptionFunc332"] = "ValentinesDay2018_StartFabricationBox</N>23097" -- 开始制作
-- 开始制作  【失败，并未选择材料】
tNpcGossip[23097]["Text3-4"] = {341, 342}
tNpcGossip[23097]["Text341"] = tValentinesDay2018_Text[23097]["Text341"]
tNpcGossip[23097]["Text342"] = tValentinesDay2018_Text[23097]["Text342"]
tNpcGossip[23097]["tOption3-4"] = {341}
tNpcGossip[23097]["Option341"] = tValentinesDay2018_Text[23097]["Option341"]
-- 开始制作  【成功】
tNpcGossip[23097]["Text3-5"] = {351, 352, 353, 354, 355, 356}
tNpcGossip[23097]["Text351"] = tValentinesDay2018_Text[23097]["Text351"]
tNpcGossip[23097]["Text352"] = tValentinesDay2018_Text[23097]["Text352"]
tNpcGossip[23097]["Text353"] = tValentinesDay2018_Text[23097]["Text353"]
tNpcGossip[23097]["Text354"] = tValentinesDay2018_Text[23097]["Text354"]
tNpcGossip[23097]["Text355"] = tValentinesDay2018_Text[23097]["Text355"]
tNpcGossip[23097]["Text356"] = tValentinesDay2018_Text[23097]["Text356"]
tNpcGossip[23097]["tOption3-5"] = {351}
tNpcGossip[23097]["Option351"] = tValentinesDay2018_Text[23097]["Option351"]
tNpcGossip[23097]["OptionFunc351"] = "ValentinesDay2018_FabricationTheBox"
-- 二次确认
tNpcGossip[23097]["Text3-6"] = {361}
tNpcGossip[23097]["Text361"] = tValentinesDay2018_Text[23097]["Text361"]
tNpcGossip[23097]["tOption3-6"] = {361}
tNpcGossip[23097]["Option361"] = tValentinesDay2018_Text[23097]["Option361"]
tNpcGossip[23097]["OptionFunc361"] = "ValentinesDay2018_SubmissionMoney</N>23097</N>1"
-- 二次确认
tNpcGossip[23097]["Text3-7"] = {371}
tNpcGossip[23097]["Text371"] = tValentinesDay2018_Text[23097]["Text371"]
tNpcGossip[23097]["tOption3-7"] = {371}
tNpcGossip[23097]["Option371"] = tValentinesDay2018_Text[23097]["Option371"]
tNpcGossip[23097]["OptionFunc371"] = "ValentinesDay2018_SubmissionMoney</N>23097</N>3"

-- 掏一掏宝箱
tNpcGossip[23097]["Text4-1"] = {411, 412, 413, 414, 415, 416}
tNpcGossip[23097]["Text411"] = tValentinesDay2018_Text[23097]["Text411"]
tNpcGossip[23097]["Text412"] = tValentinesDay2018_Text[23097]["Text412"]
tNpcGossip[23097]["Text413"] = tValentinesDay2018_Text[23097]["Text413"]
tNpcGossip[23097]["Text414"] = tValentinesDay2018_Text[23097]["Text414"]
tNpcGossip[23097]["Text415"] = tValentinesDay2018_Text[23097]["Text415"]
tNpcGossip[23097]["Text416"] = tValentinesDay2018_Text[23097]["Text416"]
tNpcGossip[23097]["tOption4-1"] = {411}
tNpcGossip[23097]["Option411"] = tValentinesDay2018_Text[23097]["Option411"]
tNpcGossip[23097]["OptionPoint411"] = "1-4"

-- 【背包中无材料】
tNpcGossip[23097]["Text4-2"] = {421, 422, 423, 424, 425, 426, 427}
tNpcGossip[23097]["Text421"] = tValentinesDay2018_Text[23097]["Text421"]
tNpcGossip[23097]["Text422"] = tValentinesDay2018_Text[23097]["Text422"]
tNpcGossip[23097]["Text423"] = tValentinesDay2018_Text[23097]["Text423"]
tNpcGossip[23097]["Text424"] = tValentinesDay2018_Text[23097]["Text424"]
tNpcGossip[23097]["Text425"] = tValentinesDay2018_Text[23097]["Text425"]
tNpcGossip[23097]["Text426"] = tValentinesDay2018_Text[23097]["Text426"]
tNpcGossip[23097]["Text427"] = tValentinesDay2018_Text[23097]["Text427"]
tNpcGossip[23097]["tOption4-2"] = {421}
tNpcGossip[23097]["Option421"] = tValentinesDay2018_Text[23097]["Option421"]
-- tNpcGossip[23097]["OptionFunc421"] = "ValentinesDay2018_BuyItems</N>23097"

-- 【背包中无材料，但是提交过材料】
tNpcGossip[23097]["Text4-3"] = {431, 432, 433, 434, 435, 436, 437, 438, 439, 4310, 4311, 4312, 4313, 4314, 4315, 4316}
tNpcGossip[23097]["Text431"] = tValentinesDay2018_Text[23097]["Text431"]
tNpcGossip[23097]["Text432"] = tValentinesDay2018_Text[23097]["Text432"]
tNpcGossip[23097]["Text433"] = tValentinesDay2018_Text[23097]["Text433"]
tNpcGossip[23097]["Text434"] = tValentinesDay2018_Text[23097]["Text434"]
tNpcGossip[23097]["Text435"] = tValentinesDay2018_Text[23097]["Text435"]
tNpcGossip[23097]["Text436"] = tValentinesDay2018_Text[23097]["Text436"]
tNpcGossip[23097]["Text437"] = tValentinesDay2018_Text[23097]["Text437"]
tNpcGossip[23097]["Text438"] = tValentinesDay2018_Text[23097]["Text438"]
tNpcGossip[23097]["Text439"] = tValentinesDay2018_Text[23097]["Text439"]
tNpcGossip[23097]["Text4310"] = tValentinesDay2018_Text[23097]["Text4310"]
tNpcGossip[23097]["Text4311"] = tValentinesDay2018_Text[23097]["Text4311"]
tNpcGossip[23097]["Text4312"] = tValentinesDay2018_Text[23097]["Text4312"]
tNpcGossip[23097]["Text4313"] = tValentinesDay2018_Text[23097]["Text4313"]
tNpcGossip[23097]["Text4314"] = tValentinesDay2018_Text[23097]["Text4314"]
tNpcGossip[23097]["Text4315"] = tValentinesDay2018_Text[23097]["Text4315"]
tNpcGossip[23097]["Text4316"] = tValentinesDay2018_Text[23097]["Text4316"]
tNpcGossip[23097]["ChkFunc4-3"] = function()
	local nIndex = 13
	-- 已提交材料赋值
	for i = 5, 13 do
		local nEventNum = nIndex + i
		local nItemEvent = tValentinesDay2018_Data["Stc"]["Event"][nEventNum]
		local nItemData = tValentinesDay2018_Data["Stc"]["Data"][nEventNum]
		local nItemNum = Get_UserStatisticValue(nItemEvent, nItemData)
		local nUserSex = ValentinesDay2018_GetUserLoadSex()
		if nItemNum > 0 then
			tNpcGossip[23097]["Text43" .. i] = string.format(tValentinesDay2018_Text[23097]["Text43" .. i], tValentinesDay2018_Text["Dialog"]["ItemName"][nUserSex][i - 4], nItemNum)
		else
			tNpcGossip[23097]["Text43" .. i] = ""
		end
	end
	-- 魅力之星赋值
	local nSaveEvent =  tValentinesDay2018_Data["Stc"]["Event"][15]
	local nSaveData =  tValentinesDay2018_Data["Stc"]["Data"][15]
	local nSaveNum = Get_UserStatisticValue(nSaveEvent, nSaveData)
	tNpcGossip[23097]["Text4315"] = string.format(tValentinesDay2018_Text[23097]["Text4315"], nSaveNum)
	return true
end
tNpcGossip[23097]["tOption4-3"] = {431}
tNpcGossip[23097]["Option431"] = tValentinesDay2018_Text[23097]["Option431"]
tNpcGossip[23097]["OptionFunc431"] = "ValentinesDay2018_StartFabricationBox</N>23097"
-- 之前已经提交过了，但是没有进行制作，重新点 制作浪漫情人匣的时候，直接出继续提交的对白
tNpcGossip[23097]["Text4-4"] = {441, 442, 443, 444, 445, 446, 447, 448, 449, 4410, 4411, 4412, 4413, 4414, 4415, 4416}
tNpcGossip[23097]["Text441"]  = tValentinesDay2018_Text[23097]["Text441"]
tNpcGossip[23097]["Text442"]  = tValentinesDay2018_Text[23097]["Text442"]
tNpcGossip[23097]["Text443"]  = tValentinesDay2018_Text[23097]["Text443"]
tNpcGossip[23097]["Text444"]  = tValentinesDay2018_Text[23097]["Text444"]
tNpcGossip[23097]["Text445"]  = tValentinesDay2018_Text[23097]["Text445"]
tNpcGossip[23097]["Text446"]  = tValentinesDay2018_Text[23097]["Text446"]
tNpcGossip[23097]["Text447"]  = tValentinesDay2018_Text[23097]["Text447"]
tNpcGossip[23097]["Text448"]  = tValentinesDay2018_Text[23097]["Text448"]
tNpcGossip[23097]["Text449"]  = tValentinesDay2018_Text[23097]["Text449"]
tNpcGossip[23097]["Text4410"] = tValentinesDay2018_Text[23097]["Text4410"]
tNpcGossip[23097]["Text4411"] = tValentinesDay2018_Text[23097]["Text4411"]
tNpcGossip[23097]["Text4412"] = tValentinesDay2018_Text[23097]["Text4412"]
tNpcGossip[23097]["Text4413"] = tValentinesDay2018_Text[23097]["Text4413"]
tNpcGossip[23097]["Text4414"] = tValentinesDay2018_Text[23097]["Text4414"]
tNpcGossip[23097]["Text4415"] = tValentinesDay2018_Text[23097]["Text4415"]
tNpcGossip[23097]["Text4416"] = tValentinesDay2018_Text[23097]["Text4416"]
tNpcGossip[23097]["ChkFunc4-4"] = function()
	local nIndex = 13
	-- 已提交材料赋值
	for i = 5, 13 do
		local nEventNum = nIndex + i
		local nItemEvent = tValentinesDay2018_Data["Stc"]["Event"][nEventNum]
		local nItemData = tValentinesDay2018_Data["Stc"]["Data"][nEventNum]
		local nItemNum = Get_UserStatisticValue(nItemEvent, nItemData)
		local nUserSex = ValentinesDay2018_GetUserLoadSex()
		if nItemNum > 0 then
			tNpcGossip[23097]["Text44" .. i] = string.format(tValentinesDay2018_Text[23097]["Text44" .. i], tValentinesDay2018_Text["Dialog"]["ItemName"][nUserSex][i - 4], nItemNum)
		else
			tNpcGossip[23097]["Text44" .. i] = ""
		end
	end
	-- 魅力之星赋值
	local nSaveEvent =  tValentinesDay2018_Data["Stc"]["Event"][15]
	local nSaveData =  tValentinesDay2018_Data["Stc"]["Data"][15]
	local nSaveNum = Get_UserStatisticValue(nSaveEvent, nSaveData)
	tNpcGossip[23097]["Text4415"] = string.format(tValentinesDay2018_Text[23097]["Text4415"], nSaveNum)
	return true
end
tNpcGossip[23097]["tOption4-4"] = {441, 442}
tNpcGossip[23097]["Option441"] = tValentinesDay2018_Text[23097]["Option441"]
tNpcGossip[23097]["OptionPoint441"] = "6-1"
tNpcGossip[23097]["Option442"] = tValentinesDay2018_Text[23097]["Option442"]
tNpcGossip[23097]["OptionFunc442"] = "ValentinesDay2018_StartFabricationBox</N>23097" -- 开始制作

-- 【背包中无材料】
tNpcGossip[23097]["Text4-5"] = {451, 452, 453, 454, 455, 456, 457, 458}
tNpcGossip[23097]["Text451"] = tValentinesDay2018_Text[23097]["Text451"]
tNpcGossip[23097]["Text452"] = tValentinesDay2018_Text[23097]["Text452"]
tNpcGossip[23097]["Text453"] = tValentinesDay2018_Text[23097]["Text453"]
tNpcGossip[23097]["Text454"] = tValentinesDay2018_Text[23097]["Text454"]
tNpcGossip[23097]["Text455"] = tValentinesDay2018_Text[23097]["Text455"]
tNpcGossip[23097]["Text456"] = tValentinesDay2018_Text[23097]["Text456"]
tNpcGossip[23097]["Text457"] = tValentinesDay2018_Text[23097]["Text457"]
tNpcGossip[23097]["Text458"] = tValentinesDay2018_Text[23097]["Text458"]
tNpcGossip[23097]["ChkFunc4-5"]= function()
	local nDayFlowerEvent = tValentinesDay2018_Data["Stc"]["Event"][16]
	local nDayFlowerData = tValentinesDay2018_Data["Stc"]["Data"][16]
	-- 判断是否隔天
	if Task_StcInterval(nDayFlowerEvent, nDayFlowerData, 1, 4) then
		Task_SetStatistic(nDayFlowerEvent, nDayFlowerData, 0, 1)
		Task_SetStcTimestamp(nDayFlowerEvent, nDayFlowerData, 0)
	end
	local nFlowerGlamour = Get_UserStatisticValue(nDayFlowerEvent, nDayFlowerData)
	tNpcGossip[23097]["Text457"] = string.format(tValentinesDay2018_Text[23097]["Text457"], nFlowerGlamour)
	return true
end
tNpcGossip[23097]["tOption4-5"] = {451, 452}
tNpcGossip[23097]["Option451"] = tValentinesDay2018_Text[23097]["Option451"]
tNpcGossip[23097]["OptionFunc451"] = "ValentinesDay2018_BoxPutItemChk</N>23097"
tNpcGossip[23097]["Option452"] = tValentinesDay2018_Text[23097]["Option452"]
tNpcGossip[23097]["OptionFunc452"] = "NpcPosition_OpenFollower"

-- 魅力成长礼
tNpcGossip[23097]["Text5-1"] = {511, 512, 513, 514, 515, 516, 517, 518, 519, 5110, 5111, 5112, 5113}
tNpcGossip[23097]["Text511"] = tValentinesDay2018_Text[23097]["Text511"]
tNpcGossip[23097]["Text512"] = tValentinesDay2018_Text[23097]["Text512"]
tNpcGossip[23097]["Text513"] = tValentinesDay2018_Text[23097]["Text513"]
tNpcGossip[23097]["Text514"] = tValentinesDay2018_Text[23097]["Text514"]
tNpcGossip[23097]["Text515"] = tValentinesDay2018_Text[23097]["Text515"]
tNpcGossip[23097]["Text516"] = tValentinesDay2018_Text[23097]["Text516"]
tNpcGossip[23097]["Text517"] = tValentinesDay2018_Text[23097]["Text517"]
tNpcGossip[23097]["Text518"] = tValentinesDay2018_Text[23097]["Text518"]
tNpcGossip[23097]["Text519"] = tValentinesDay2018_Text[23097]["Text519"]
tNpcGossip[23097]["Text5110"] = tValentinesDay2018_Text[23097]["Text5110"]
tNpcGossip[23097]["Text5111"] = tValentinesDay2018_Text[23097]["Text5111"]
tNpcGossip[23097]["Text5112"] = tValentinesDay2018_Text[23097]["Text5112"]
tNpcGossip[23097]["Text5113"] = tValentinesDay2018_Text[23097]["Text5113"]
tNpcGossip[23097]["ChkFunc5-1"] = function()
	local nNpcId = tValentinesDay2018_Data["NpcId"][2]["NppcId"]
	local nIndex = 3
	ValentinesDay2018_CharmPullulateDialog(nNpcId, nIndex)
	-- 玩家魅力之星
	local nUserCharmEvent = tValentinesDay2018_Data["Stc"]["Event"][8]
	local nUserCharmData = tValentinesDay2018_Data["Stc"]["Data"][8]
	local nUserCharmNum = Get_UserStatisticValue(nUserCharmEvent, nUserCharmData)
	tNpcGossip[23097]["Text5113"] = string.format(tValentinesDay2018_Text[23097]["Text5113"], nUserCharmNum)
	return true
end
tNpcGossip[23097]["tOption5-1"] = {511, 512}
tNpcGossip[23097]["Option511"] = tValentinesDay2018_Text[23097]["Option511"]
tNpcGossip[23097]["OptionFunc511"] = "ValentinesDay2018_CharmPullulateRewardChk</N>23097" -- 一键领取
tNpcGossip[23097]["OptionChkFunc511"] = function()
	local nRewardEvent = tValentinesDay2018_Data["Stc"]["Event"][11]
	local nRewardData = tValentinesDay2018_Data["Stc"]["Data"][11]
	local nHaveReward = Get_UserStatisticValue(nRewardEvent, nRewardData)
	-- 判断是否可领取
	if nHaveReward >= 8 then
		return false
	end
	return true
end
tNpcGossip[23097]["Option512"] = tValentinesDay2018_Text[23097]["Option512"]
-- 【领取失败，没有奖励】
tNpcGossip[23097]["Text5-2"] = {521, 522}
tNpcGossip[23097]["Text521"] = tValentinesDay2018_Text[23097]["Text521"]
tNpcGossip[23097]["Text522"] = tValentinesDay2018_Text[23097]["Text522"]
tNpcGossip[23097]["tOption5-2"] = {521}
tNpcGossip[23097]["Option521"] = tValentinesDay2018_Text[23097]["Option521"]
-- tNpcGossip[23097]["OptionPoint521"] = "1-4"
tNpcGossip[23097]["OptionFunc521"] = "ValentinesDay2018_FabricationTheBox"
-- 【领取成功】
tNpcGossip[23097]["Text5-3"] = {531, 532, 533, 534, 535, 536, 537, 538, 539, 5310, 5311, 5312, 5313, 5314}
tNpcGossip[23097]["Text531"] = tValentinesDay2018_Text[23097]["Text531"]
tNpcGossip[23097]["Text532"] = tValentinesDay2018_Text[23097]["Text532"]
tNpcGossip[23097]["Text533"] = tValentinesDay2018_Text[23097]["Text533"]
tNpcGossip[23097]["Text534"] = tValentinesDay2018_Text[23097]["Text534"]
tNpcGossip[23097]["Text535"] = tValentinesDay2018_Text[23097]["Text535"]
tNpcGossip[23097]["Text536"] = tValentinesDay2018_Text[23097]["Text536"]
tNpcGossip[23097]["Text537"] = tValentinesDay2018_Text[23097]["Text537"]
tNpcGossip[23097]["Text538"] = tValentinesDay2018_Text[23097]["Text538"]
tNpcGossip[23097]["Text539"] = tValentinesDay2018_Text[23097]["Text539"]
tNpcGossip[23097]["Text5310"] = tValentinesDay2018_Text[23097]["Text5310"]
tNpcGossip[23097]["Text5311"] = tValentinesDay2018_Text[23097]["Text5311"]
tNpcGossip[23097]["Text5312"] = tValentinesDay2018_Text[23097]["Text5312"]
tNpcGossip[23097]["Text5313"] = tValentinesDay2018_Text[23097]["Text5313"]
tNpcGossip[23097]["Text5314"] = tValentinesDay2018_Text[23097]["Text5314"]
tNpcGossip[23097]["tOption5-3"] = {531}
tNpcGossip[23097]["Option531"] = tValentinesDay2018_Text[23097]["Option531"]



-- 继续提交制作浪漫情人匣
tNpcGossip[23097]["Text6-1"] = {611, 612, 613, 614, 615, 616, 617, 618, 619, 6110, 6111, 6112, 6113, 6114, 6115}
tNpcGossip[23097]["Text611"]  = tValentinesDay2018_Text[23097]["Text611"]
tNpcGossip[23097]["Text612"]  = tValentinesDay2018_Text[23097]["Text612"]
tNpcGossip[23097]["Text613"]  = tValentinesDay2018_Text[23097]["Text613"]
tNpcGossip[23097]["Text614"]  = tValentinesDay2018_Text[23097]["Text614"]
tNpcGossip[23097]["Text615"]  = tValentinesDay2018_Text[23097]["Text615"]
tNpcGossip[23097]["Text616"]  = tValentinesDay2018_Text[23097]["Text616"]
tNpcGossip[23097]["Text617"]  = tValentinesDay2018_Text[23097]["Text617"]
tNpcGossip[23097]["Text618"]  = tValentinesDay2018_Text[23097]["Text618"]
tNpcGossip[23097]["Text619"]  = tValentinesDay2018_Text[23097]["Text619"]
tNpcGossip[23097]["Text6110"] = tValentinesDay2018_Text[23097]["Text6110"]
tNpcGossip[23097]["Text6111"] = tValentinesDay2018_Text[23097]["Text6111"]
tNpcGossip[23097]["Text6112"] = tValentinesDay2018_Text[23097]["Text6112"]
tNpcGossip[23097]["Text6113"] = tValentinesDay2018_Text[23097]["Text6113"]
tNpcGossip[23097]["Text6114"] = tValentinesDay2018_Text[23097]["Text6114"]
tNpcGossip[23097]["Text6115"] = tValentinesDay2018_Text[23097]["Text6115"]
tNpcGossip[23097]["ChkFunc6-1"]= function()
	local nDayFlowerEvent = tValentinesDay2018_Data["Stc"]["Event"][16]
	local nDayFlowerData = tValentinesDay2018_Data["Stc"]["Data"][16]
	-- 判断是否隔天
	if Task_StcInterval(nDayFlowerEvent, nDayFlowerData, 1, 4) then
		Task_SetStatistic(nDayFlowerEvent, nDayFlowerData, 0, 1)
		Task_SetStcTimestamp(nDayFlowerEvent, nDayFlowerData, 0)
	end
	local nFlowerGlamour = Get_UserStatisticValue(nDayFlowerEvent, nDayFlowerData)
	tNpcGossip[23097]["Text6115"] = string.format(tValentinesDay2018_Text[23097]["Text6115"], nFlowerGlamour)
	return true
end
tNpcGossip[23097]["tOption6-1"] = {644, 645, 646, 647, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642}
tNpcGossip[23097]["Option611"] = tValentinesDay2018_Text[23097]["Option611"]
tNpcGossip[23097]["Option612"] = tValentinesDay2018_Text[23097]["Option612"]
tNpcGossip[23097]["Option613"] = tValentinesDay2018_Text[23097]["Option613"]
tNpcGossip[23097]["Option614"] = tValentinesDay2018_Text[23097]["Option614"]
tNpcGossip[23097]["Option615"] = tValentinesDay2018_Text[23097]["Option615"]
tNpcGossip[23097]["Option616"] = tValentinesDay2018_Text[23097]["Option616"]
tNpcGossip[23097]["Option617"] = tValentinesDay2018_Text[23097]["Option617"]
tNpcGossip[23097]["Option618"] = tValentinesDay2018_Text[23097]["Option618"]
tNpcGossip[23097]["Option619"] = tValentinesDay2018_Text[23097]["Option619"]
tNpcGossip[23097]["Option620"] = tValentinesDay2018_Text[23097]["Option620"]
tNpcGossip[23097]["Option621"] = tValentinesDay2018_Text[23097]["Option621"]
tNpcGossip[23097]["Option622"] = tValentinesDay2018_Text[23097]["Option622"]
tNpcGossip[23097]["Option623"] = tValentinesDay2018_Text[23097]["Option623"]
tNpcGossip[23097]["Option624"] = tValentinesDay2018_Text[23097]["Option624"]
tNpcGossip[23097]["Option625"] = tValentinesDay2018_Text[23097]["Option625"]
tNpcGossip[23097]["Option626"] = tValentinesDay2018_Text[23097]["Option626"]
tNpcGossip[23097]["Option627"] = tValentinesDay2018_Text[23097]["Option627"]
tNpcGossip[23097]["Option628"] = tValentinesDay2018_Text[23097]["Option628"]
tNpcGossip[23097]["Option629"] = tValentinesDay2018_Text[23097]["Option629"]
tNpcGossip[23097]["Option630"] = tValentinesDay2018_Text[23097]["Option630"]
tNpcGossip[23097]["Option631"] = tValentinesDay2018_Text[23097]["Option631"]
tNpcGossip[23097]["Option632"] = tValentinesDay2018_Text[23097]["Option632"]
tNpcGossip[23097]["Option633"] = tValentinesDay2018_Text[23097]["Option633"]
tNpcGossip[23097]["Option634"] = tValentinesDay2018_Text[23097]["Option634"]
tNpcGossip[23097]["Option635"] = tValentinesDay2018_Text[23097]["Option635"]
tNpcGossip[23097]["Option636"] = tValentinesDay2018_Text[23097]["Option636"]
tNpcGossip[23097]["Option637"] = tValentinesDay2018_Text[23097]["Option637"]
tNpcGossip[23097]["Option638"] = tValentinesDay2018_Text[23097]["Option638"]
tNpcGossip[23097]["Option639"] = tValentinesDay2018_Text[23097]["Option639"]
tNpcGossip[23097]["Option640"] = tValentinesDay2018_Text[23097]["Option640"]
tNpcGossip[23097]["Option641"] = tValentinesDay2018_Text[23097]["Option641"]
tNpcGossip[23097]["Option642"] = tValentinesDay2018_Text[23097]["Option642"]
tNpcGossip[23097]["Option644"] = tValentinesDay2018_Text[23097]["Option644"]
tNpcGossip[23097]["Option645"] = tValentinesDay2018_Text[23097]["Option645"]
tNpcGossip[23097]["Option646"] = tValentinesDay2018_Text[23097]["Option646"]
tNpcGossip[23097]["Option647"] = tValentinesDay2018_Text[23097]["Option647"]
tNpcGossip[23097]["OptionChkFunc641"] = function()
	for i = 1, 30 do
		if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][i]) then
			return true
		end
	end
	return false
end
tNpcGossip[23097]["OptionFunc641"] = "ValentinesDay2018_SubmissionAllItem</N>23097" -- 一键提交
tNpcGossip[23097]["OptionChkFunc642"] = function()
	-- 判断是否可以制作
	local nSaveEvent =  tValentinesDay2018_Data["Stc"]["Event"][15]
	local nSaveData =  tValentinesDay2018_Data["Stc"]["Data"][15]
	local nSaveNum = Get_UserStatisticValue(nSaveEvent, nSaveData)
	if nSaveNum > 0 then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc642"] = "ValentinesDay2018_StartFabricationBox</N>23097" -- 开始制作
-- 选项判断
-- 100w金币
tNpcGossip[23097]["OptionChkFunc644"] = function()
	local nNeedMoney = tValentinesDay2018_Data["ItemNum"][1]
	if User_CanPutMoney2Bag(-nNeedMoney) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc644"] = "ValentinesDay2018_SubmissionMoneyCheck</N>23097</N>1" -- 交材料
-- 1000w金币
tNpcGossip[23097]["OptionChkFunc645"] = function()
	local nNeedMoney = tValentinesDay2018_Data["ItemNum"][2]
	if User_CanPutMoney2Bag(-nNeedMoney) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc645"] = "ValentinesDay2018_SubmissionMoneyCheck</N>23097</N>2" -- 交材料
-- 50赠点
tNpcGossip[23097]["OptionChkFunc646"] = function()
	local nNeedEMoneyMono = tValentinesDay2018_Data["ItemNum"][3]
	if Get_UserMonoEMoney() > nNeedEMoneyMono then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc646"] = "ValentinesDay2018_SubmissionMoneyCheck</N>23097</N>3" -- 交材料
-- 500赠点
tNpcGossip[23097]["OptionChkFunc647"] = function()
	local nNeedEMoneyMono = tValentinesDay2018_Data["ItemNum"][4]
	if Get_UserMonoEMoney() > nNeedEMoneyMono then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc647"] = "ValentinesDay2018_SubmissionMoneyCheck</N>23097</N>4" -- 交材料
-- 神仙精华露
tNpcGossip[23097]["OptionChkFunc611"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][1]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc611"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>3310192" -- 交材料
-- 施华洛项链
tNpcGossip[23097]["OptionChkFunc612"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][2]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc612"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>3310193" -- 交材料
-- 蒂芙尼钻戒
tNpcGossip[23097]["OptionChkFunc613"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][3]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc613"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>3310194" -- 交材料
-- 耐克篮球鞋
tNpcGossip[23097]["OptionChkFunc614"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][4]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc614"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>3310195" -- 交材料
-- 迪奥墨镜
tNpcGossip[23097]["OptionChkFunc615"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][5]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc615"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>3310196" -- 交材料
-- 爱马仕钱包
tNpcGossip[23097]["OptionChkFunc616"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][6]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc616"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>3310197" -- 交材料
-- 玫瑰兑换券
tNpcGossip[23097]["OptionChkFunc617"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][7]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc617"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>3304134" -- 交材料 
-- 兰花兑换券
tNpcGossip[23097]["OptionChkFunc618"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][8]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc618"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>3304135" -- 交材料
-- 百合兑换券
tNpcGossip[23097]["OptionChkFunc619"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][9]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc619"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>3304136" -- 交材料
-- 郁金香兑换券
tNpcGossip[23097]["OptionChkFunc620"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][10]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc620"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>3304137" -- 交材料
-- 1朵郁金香
tNpcGossip[23097]["OptionChkFunc621"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][11]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc621"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>754001" -- 交材料
-- 3朵郁金香
tNpcGossip[23097]["OptionChkFunc622"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][12]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc622"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>754003" -- 交材料
-- 9朵郁金香
tNpcGossip[23097]["OptionChkFunc623"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][13]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc623"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>754009" -- 交材料
-- 99朵郁金香
tNpcGossip[23097]["OptionChkFunc624"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][14]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc624"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>754099" -- 交材料
-- 999朵郁金香    这个直接超过4000  不考虑
tNpcGossip[23097]["OptionChkFunc625"] = function()
	-- if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][15]) then
		-- return true
	-- end
	return false
end
tNpcGossip[23097]["OptionFunc625"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>754999" -- 交材料
-- 1朵兰花
tNpcGossip[23097]["OptionChkFunc626"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][16]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc626"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>753001" -- 交材料
-- 3朵兰花
tNpcGossip[23097]["OptionChkFunc627"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][17]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc627"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>753003" -- 交材料
-- 9朵兰花
tNpcGossip[23097]["OptionChkFunc628"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][18]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc628"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>753009" -- 交材料
-- 99朵兰花
tNpcGossip[23097]["OptionChkFunc629"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][19]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc629"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>753099" -- 交材料
-- 999朵兰花
tNpcGossip[23097]["OptionChkFunc630"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][20]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc630"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>753999" -- 交材料
-- 1朵百合花
tNpcGossip[23097]["OptionChkFunc631"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][21]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc631"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>752001" -- 交材料
-- 3朵百合花
tNpcGossip[23097]["OptionChkFunc632"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][22]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc632"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>752003" -- 交材料
-- 9朵百合花
tNpcGossip[23097]["OptionChkFunc633"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][23]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc633"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>752009" -- 交材料
-- 99朵百合花
tNpcGossip[23097]["OptionChkFunc634"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][24]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc634"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>752099" -- 交材料
-- 999朵百合花
tNpcGossip[23097]["OptionChkFunc635"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][25]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc635"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>752999" -- 交材料
-- 1朵红玫瑰
tNpcGossip[23097]["OptionChkFunc636"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][26]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc636"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>751001" -- 交材料
-- 3朵红玫瑰
tNpcGossip[23097]["OptionChkFunc637"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][27]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc637"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>751003" -- 交材料
-- 9朵红玫瑰
tNpcGossip[23097]["OptionChkFunc638"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][28]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc638"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>751009" -- 交材料
-- 99朵红玫瑰
tNpcGossip[23097]["OptionChkFunc639"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][29]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc639"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>751099" -- 交材料
-- 999朵红玫瑰
tNpcGossip[23097]["OptionChkFunc640"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["ExchangeItemId"][30]) then
		return true
	end
	return false
end
tNpcGossip[23097]["OptionFunc640"] = "ValentinesDay2018_SubmissionItemCheck</N>23097</N>751999" -- 交材料



-- 【七夕鹊仙居】鹊桥仙
tNpcGossip[23098]= tNpcGossip[23098] or DefaultNpc:new{}
tNpcGossip[23098]["OptionHidden"] = 1
-- 活动前
tNpcGossip[23098]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tNpcGossip[23098]["Text111"] = tValentinesDay2018_Text[23098]["Text111"]
tNpcGossip[23098]["Text112"] = tValentinesDay2018_Text[23098]["Text112"]
tNpcGossip[23098]["Text113"] = tValentinesDay2018_Text[23098]["Text113"]
tNpcGossip[23098]["Text114"] = tValentinesDay2018_Text[23098]["Text114"]
tNpcGossip[23098]["Text115"] = tValentinesDay2018_Text[23098]["Text115"]
tNpcGossip[23098]["Text116"] = tValentinesDay2018_Text[23098]["Text116"]
tNpcGossip[23098]["Text117"] = tValentinesDay2018_Text[23098]["Text117"]
tNpcGossip[23098]["ChkFunc1-1"]= function()
	if Sys_ChkFullTime(tValentinesDay2018_Data["BeforeTime"]) then
		return true
	end
	return false
end
tNpcGossip[23098]["tOption1-1"] = {111}
tNpcGossip[23098]["Option111"] = tValentinesDay2018_Text[23098]["Option111"]
-- 活动后
tNpcGossip[23098]["Text1-2"] = {121, 122}
tNpcGossip[23098]["Text121"] = tValentinesDay2018_Text[23098]["Text121"]
tNpcGossip[23098]["Text122"] = tValentinesDay2018_Text[23098]["Text122"]
tNpcGossip[23098]["ChkFunc1-2"]= function()
	if (not Sys_ChkFullTime(tValentinesDay2018_Data["VisitTime"])) and (not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"])) then
		return true
	end
	return false
end
tNpcGossip[23098]["tOption1-2"] = {121}
tNpcGossip[23098]["Option121"] = tValentinesDay2018_Text[23098]["Option121"]
-- 活动中  等级未到
tNpcGossip[23098]["Text1-3"] = {131, 132, 133, 134, 135, 136, 137}
tNpcGossip[23098]["Text131"] = tValentinesDay2018_Text[23098]["Text131"]
tNpcGossip[23098]["Text132"] = tValentinesDay2018_Text[23098]["Text132"]
tNpcGossip[23098]["Text133"] = tValentinesDay2018_Text[23098]["Text133"]
tNpcGossip[23098]["Text134"] = tValentinesDay2018_Text[23098]["Text134"]
tNpcGossip[23098]["Text135"] = tValentinesDay2018_Text[23098]["Text135"]
tNpcGossip[23098]["Text136"] = tValentinesDay2018_Text[23098]["Text136"]
tNpcGossip[23098]["Text137"] = tValentinesDay2018_Text[23098]["Text137"]
tNpcGossip[23098]["ChkFunc1-3"]= function()
	if Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) or Sys_ChkFullTime(tValentinesDay2018_Data["VisitTime"]) then
		if not User_JudgeLevelAndMetempsychosis(tValentinesDay2018_Data["Level"],tValentinesDay2018_Data["Metempsychosis"]) then
			return true
		end
	end
	return false
end
tNpcGossip[23098]["tOption1-3"] = {131}
tNpcGossip[23098]["Option131"] = tValentinesDay2018_Text[23098]["Option131"]
-- 活动中  等级达到（竞选结束前）
tNpcGossip[23098]["Text1-4"] = {141, 142, 143, 144, 145, 146, 147}
tNpcGossip[23098]["Text141"] = tValentinesDay2018_Text[23098]["Text141"]
tNpcGossip[23098]["Text142"] = tValentinesDay2018_Text[23098]["Text142"]
tNpcGossip[23098]["Text143"] = tValentinesDay2018_Text[23098]["Text143"]
tNpcGossip[23098]["Text144"] = tValentinesDay2018_Text[23098]["Text144"]
tNpcGossip[23098]["Text145"] = tValentinesDay2018_Text[23098]["Text145"]
tNpcGossip[23098]["Text146"] = tValentinesDay2018_Text[23098]["Text146"]
tNpcGossip[23098]["Text147"] = tValentinesDay2018_Text[23098]["Text147"]
tNpcGossip[23098]["ChkFunc1-4"]= function()
	if Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tValentinesDay2018_Data["Level"],tValentinesDay2018_Data["Metempsychosis"]) then
			return true
		end
	end
	return false
end
tNpcGossip[23098]["tOption1-4"] = {142, 143}
-- tNpcGossip[23098]["Option141"] = tValentinesDay2018_Text[23098]["Option141"]
-- tNpcGossip[23098]["OptionFunc141"] = "ValentinesDay2018_BuildTheQueRoom</N>23098"  -- 领取鹊仙居
-- tNpcGossip[23098]["OptionChkFunc141"] = function()
	-- local nGetEvent = tValentinesDay2018_Data["Stc"]["Event"][12]
	-- local nGetData = tValentinesDay2018_Data["Stc"]["Data"][12]
	-- if Task_ChkStcValue(nGetEvent, nGetData, ">", 0) then
		-- return false
	-- end
	-- return true
-- end
tNpcGossip[23098]["Option142"] = tValentinesDay2018_Text[23098]["Option142"]
tNpcGossip[23098]["OptionFunc142"] = "ValentinesDay2018_MoveIntoQueRoomChk</N>23098" -- 进入鹊仙居
-- tNpcGossip[23098]["OptionChkFunc142"] = function()
	-- local nGetEvent = tValentinesDay2018_Data["Stc"]["Event"][12]
	-- local nGetData = tValentinesDay2018_Data["Stc"]["Data"][12]
	-- if Task_ChkStcValue(nGetEvent, nGetData, "==", 0) then
		-- return false
	-- end
	-- return true
-- end
tNpcGossip[23098]["Option143"] = tValentinesDay2018_Text[23098]["Option143"]
tNpcGossip[23098]["OptionFunc143"] = "ValentinesDay2018_RewardStoragePackage</N>23098" -- 补领收纳袋
tNpcGossip[23098]["OptionChkFunc143"] = function()
	-- local nGetEvent = tValentinesDay2018_Data["Stc"]["Event"][12]
	-- local nGetData = tValentinesDay2018_Data["Stc"]["Data"][12]
	-- if Task_ChkStcValue(nGetEvent, nGetData, "==", 0) then
		-- return false
	-- end
	if Item_ChkItem(tValentinesDay2018_Data["RoomItem"]) then
		return false
	end
	return true
end
-- 活动中  等级达到（竞选结束后）
tNpcGossip[23098]["Text1-5"] = {151, 152, 153}
tNpcGossip[23098]["Text151"] = tValentinesDay2018_Text[23098]["Text151"]
tNpcGossip[23098]["Text152"] = tValentinesDay2018_Text[23098]["Text152"]
tNpcGossip[23098]["Text153"] = tValentinesDay2018_Text[23098]["Text153"]
tNpcGossip[23098]["ChkFunc1-5"]= function()
	if Sys_ChkFullTime(tValentinesDay2018_Data["VisitTime"]) then
		if User_JudgeLevelAndMetempsychosis(tValentinesDay2018_Data["Level"],tValentinesDay2018_Data["Metempsychosis"]) then
			return true
		end
	end
	return false
end
tNpcGossip[23098]["tOption1-5"] = {152, 153, 154}
-- tNpcGossip[23098]["Option151"] = tValentinesDay2018_Text[23098]["Option151"]
-- tNpcGossip[23098]["OptionFunc151"] = "ValentinesDay2018_BuildTheQueRoom</N>23098"  -- 领取鹊仙居
-- tNpcGossip[23098]["OptionChkFunc151"] = function()
	-- local nGetEvent = tValentinesDay2018_Data["Stc"]["Event"][12]
	-- local nGetData = tValentinesDay2018_Data["Stc"]["Data"][12]
	-- if Task_ChkStcValue(nGetEvent, nGetData, ">", 0) then
		-- return false
	-- end
	-- return true
-- end
tNpcGossip[23098]["Option152"] = tValentinesDay2018_Text[23098]["Option152"]
tNpcGossip[23098]["OptionFunc152"] = "ValentinesDay2018_MoveIntoQueRoomChk</N>23098" -- 进入鹊仙居
-- tNpcGossip[23098]["OptionChkFunc152"] = function()
	-- local nGetEvent = tValentinesDay2018_Data["Stc"]["Event"][12]
	-- local nGetData = tValentinesDay2018_Data["Stc"]["Data"][12]
	-- if Task_ChkStcValue(nGetEvent, nGetData, "==", 0) then
		-- return false
	-- end
	-- return true
-- end
tNpcGossip[23098]["Option153"] = tValentinesDay2018_Text[23098]["Option153"]
tNpcGossip[23098]["OptionPoint153"] = "2-1"
tNpcGossip[23098]["Option154"] = tValentinesDay2018_Text[23098]["Option154"]
tNpcGossip[23098]["OptionFunc154"] = "ValentinesDay2018_RewardStoragePackage</N>23098" -- 补领收纳袋
tNpcGossip[23098]["OptionChkFunc154"] = function()
	-- local nGetEvent = tValentinesDay2018_Data["Stc"]["Event"][12]
	-- local nGetData = tValentinesDay2018_Data["Stc"]["Data"][12]
	-- if Task_ChkStcValue(nGetEvent, nGetData, "==", 0) then
		-- return false
	-- end
	if Item_ChkItem(tValentinesDay2018_Data["RoomItem"]) then
		return false
	end
	return true
end
-- 参观魅力鹊仙居
tNpcGossip[23098]["Text2-1"] = {211, 212, 213, 214, 215, 216, 217, 218, 219, 220}
tNpcGossip[23098]["Text211"] = tValentinesDay2018_Text[23098]["Text211"]
tNpcGossip[23098]["Text212"] = tValentinesDay2018_Text[23098]["Text212"]
tNpcGossip[23098]["Text213"] = tValentinesDay2018_Text[23098]["Text213"]
tNpcGossip[23098]["Text214"] = tValentinesDay2018_Text[23098]["Text214"]
tNpcGossip[23098]["Text215"] = tValentinesDay2018_Text[23098]["Text215"]
tNpcGossip[23098]["Text216"] = tValentinesDay2018_Text[23098]["Text216"]
tNpcGossip[23098]["Text217"] = tValentinesDay2018_Text[23098]["Text217"]
tNpcGossip[23098]["Text218"] = tValentinesDay2018_Text[23098]["Text218"]
tNpcGossip[23098]["Text219"] = tValentinesDay2018_Text[23098]["Text219"]
tNpcGossip[23098]["Text220"] = tValentinesDay2018_Text[23098]["Text220"]
tNpcGossip[23098]["tOption2-1"] = {211, 212, 213, 214, 215, 216, 217}
tNpcGossip[23098]["Option211"] = tValentinesDay2018_Text[23098]["Option211"]
tNpcGossip[23098]["OptionFunc211"] = "ValentinesDay2018_VisitTheQueRoom</N>1"  -- 参观鹊仙居1
tNpcGossip[23098]["Option212"] = tValentinesDay2018_Text[23098]["Option212"]
tNpcGossip[23098]["OptionFunc212"] = "ValentinesDay2018_VisitTheQueRoom</N>2"  -- 参观鹊仙居2
tNpcGossip[23098]["Option213"] = tValentinesDay2018_Text[23098]["Option213"]
tNpcGossip[23098]["OptionFunc213"] = "ValentinesDay2018_VisitTheQueRoom</N>3"  -- 参观鹊仙居3
tNpcGossip[23098]["Option214"] = tValentinesDay2018_Text[23098]["Option214"]
tNpcGossip[23098]["OptionFunc214"] = "ValentinesDay2018_VisitTheQueRoom</N>4"  -- 参观鹊仙居4
tNpcGossip[23098]["Option215"] = tValentinesDay2018_Text[23098]["Option215"]
tNpcGossip[23098]["OptionFunc215"] = "ValentinesDay2018_VisitTheQueRoom</N>5"  -- 参观鹊仙居5
tNpcGossip[23098]["Option216"] = tValentinesDay2018_Text[23098]["Option216"]
tNpcGossip[23098]["OptionFunc216"] = "ValentinesDay2018_VisitTheQueRoom</N>6"  -- 参观鹊仙居6
tNpcGossip[23098]["Option217"] = tValentinesDay2018_Text[23098]["Option217"]

-- 领取鹊仙居 【领取成功】
tNpcGossip[23098]["Text3-1"] = {311, 312}
tNpcGossip[23098]["Text311"] = tValentinesDay2018_Text[23098]["Text311"]
tNpcGossip[23098]["Text312"] = tValentinesDay2018_Text[23098]["Text312"]
tNpcGossip[23098]["tOption3-1"] = {311}
tNpcGossip[23098]["Option311"] = tValentinesDay2018_Text[23098]["Option311"]
-- 领取鹊仙居 【背包满，无法领取】
tNpcGossip[23098]["Text3-2"] = {321, 322}
tNpcGossip[23098]["Text321"] = tValentinesDay2018_Text[23098]["Text321"]
tNpcGossip[23098]["Text322"] = tValentinesDay2018_Text[23098]["Text322"]
tNpcGossip[23098]["tOption3-2"] = {321}
tNpcGossip[23098]["Option321"] = tValentinesDay2018_Text[23098]["Option321"]
-- 补领收纳袋 【领取成功】
tNpcGossip[23098]["Text3-3"] = {331, 332}
tNpcGossip[23098]["Text331"] = tValentinesDay2018_Text[23098]["Text331"]
tNpcGossip[23098]["Text332"] = tValentinesDay2018_Text[23098]["Text332"]
tNpcGossip[23098]["tOption3-3"] = {331}
tNpcGossip[23098]["Option331"] = tValentinesDay2018_Text[23098]["Option331"]

-- 【线下票选】魅力使者
tNpcFace[6177] = 184
tNpcGossip[23157] = tNpcGossip[23157] or DefaultNpc:new{}
tNpcGossip[23157]["OptionHidden"] = 1
-- 活动前
tNpcGossip[23157]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tNpcGossip[23157]["Text111"] = tValentinesDay2018_Text[23157]["Text111"]
tNpcGossip[23157]["Text112"] = tValentinesDay2018_Text[23157]["Text112"]
tNpcGossip[23157]["Text113"] = tValentinesDay2018_Text[23157]["Text113"]
tNpcGossip[23157]["Text114"] = tValentinesDay2018_Text[23157]["Text114"]
tNpcGossip[23157]["Text115"] = tValentinesDay2018_Text[23157]["Text115"]
tNpcGossip[23157]["Text116"] = tValentinesDay2018_Text[23157]["Text116"]
tNpcGossip[23157]["Text117"] = tValentinesDay2018_Text[23157]["Text117"]
tNpcGossip[23157]["ChkFunc1-1"]= function()
	if Sys_ChkFullTime(tValentinesDay2018_Data["BeforeTime"]) then
		return true
	end
	return false
end
tNpcGossip[23157]["tOption1-1"] = {111}
tNpcGossip[23157]["Option111"] = tValentinesDay2018_Text[23157]["Option111"]
-- 活动后
tNpcGossip[23157]["Text1-2"] = {121, 122}
tNpcGossip[23157]["Text121"] = tValentinesDay2018_Text[23157]["Text121"]
tNpcGossip[23157]["Text122"] = tValentinesDay2018_Text[23157]["Text122"]
tNpcGossip[23157]["ChkFunc1-2"]= function()
	if not Sys_ChkFullTime(tActivityTime["ValentinesDay2018"]["RankTime"]) then
		return true
	end
	return false
end
tNpcGossip[23157]["tOption1-2"] = {121}
tNpcGossip[23157]["Option121"] = tValentinesDay2018_Text[23157]["Option121"]
-- 活动中（授课阶段） 等级未到
tNpcGossip[23157]["Text1-3"] = {131, 132, 133, 134, 135, 136, 137, 138, 139, 1310, 1311, 1312, 1313}
tNpcGossip[23157]["Text131"]  = tValentinesDay2018_Text[23157]["Text131"]
tNpcGossip[23157]["Text132"]  = tValentinesDay2018_Text[23157]["Text132"]
tNpcGossip[23157]["Text133"]  = tValentinesDay2018_Text[23157]["Text133"]
tNpcGossip[23157]["Text134"]  = tValentinesDay2018_Text[23157]["Text134"]
tNpcGossip[23157]["Text135"]  = tValentinesDay2018_Text[23157]["Text135"]
tNpcGossip[23157]["Text136"]  = tValentinesDay2018_Text[23157]["Text136"]
tNpcGossip[23157]["Text137"]  = tValentinesDay2018_Text[23157]["Text137"]
tNpcGossip[23157]["Text138"]  = tValentinesDay2018_Text[23157]["Text138"]
tNpcGossip[23157]["Text139"]  = tValentinesDay2018_Text[23157]["Text139"]
tNpcGossip[23157]["Text1310"] = tValentinesDay2018_Text[23157]["Text1310"]
tNpcGossip[23157]["Text1311"] = tValentinesDay2018_Text[23157]["Text1311"]
tNpcGossip[23157]["Text1312"] = tValentinesDay2018_Text[23157]["Text1312"]
tNpcGossip[23157]["Text1313"] = tValentinesDay2018_Text[23157]["Text1313"]
tNpcGossip[23157]["ChkFunc1-3"]= function()
	local tManRnk = RankingFunc_GetNowData(tValentinesDay2018_Data["nManIndex"])
	local tWoManRnk = RankingFunc_GetNowData(tValentinesDay2018_Data["nWomanIndex"])
	local sManName = ""
	local sWoManName = ""
	local nIndex = 134
	for i = 1, 3 do
		-- 获取风流才子塝排名
		if tManRnk[i] ~= nil and tonumber(tManRnk[i]["UserId"]) > 0 and tManRnk[i]["Score"] > 0 then
			sManName = Sys_StringGSubTip(tManRnk[i]["UserName"])
		else
			sManName = tValentinesDay2018_Text["Dialog"]["Name"]
		end
		-- 获取红粉佳人榜排名
		if tWoManRnk[i] ~= nil and tonumber(tWoManRnk[i]["UserId"]) > 0 and tWoManRnk[i]["Score"] > 0 then
			sWoManName = Sys_StringGSubTip(tWoManRnk[i]["UserName"])
		else
			sWoManName = tValentinesDay2018_Text["Dialog"]["Name"]
		end
		tNpcGossip[23157]["Text" .. nIndex + i] = Sys_Alignment(tostring(sManName), 12, tostring(sWoManName), 36) .. "\n"
	end
	if Sys_ChkFullTime(tValentinesDay2018_Data["LectureTime"]) then
		if not User_JudgeLevelAndMetempsychosis(tValentinesDay2018_Data["Level"],tValentinesDay2018_Data["Metempsychosis"]) then
			return true
		end
	end
	return false
end
tNpcGossip[23157]["tOption1-3"] = {131}
tNpcGossip[23157]["Option131"] = tValentinesDay2018_Text[23157]["Option131"]
-- 活动中（授课阶段） 等级达到
tNpcGossip[23157]["Text1-4"] = {141, 142, 143, 144, 145, 146, 147, 148, 149, 1410, 1411, 1412, 1413}
tNpcGossip[23157]["Text141"]  = tValentinesDay2018_Text[23157]["Text141"]
tNpcGossip[23157]["Text142"]  = tValentinesDay2018_Text[23157]["Text142"]
tNpcGossip[23157]["Text143"]  = tValentinesDay2018_Text[23157]["Text143"]
tNpcGossip[23157]["Text144"]  = tValentinesDay2018_Text[23157]["Text144"]
tNpcGossip[23157]["Text145"]  = tValentinesDay2018_Text[23157]["Text145"]
tNpcGossip[23157]["Text146"]  = tValentinesDay2018_Text[23157]["Text146"]
tNpcGossip[23157]["Text147"]  = tValentinesDay2018_Text[23157]["Text147"]
tNpcGossip[23157]["Text148"]  = tValentinesDay2018_Text[23157]["Text148"]
tNpcGossip[23157]["Text149"]  = tValentinesDay2018_Text[23157]["Text149"]
tNpcGossip[23157]["Text1410"] = tValentinesDay2018_Text[23157]["Text1410"]
tNpcGossip[23157]["Text1411"] = tValentinesDay2018_Text[23157]["Text1411"]
tNpcGossip[23157]["Text1412"] = tValentinesDay2018_Text[23157]["Text1412"]
tNpcGossip[23157]["Text1413"] = tValentinesDay2018_Text[23157]["Text1413"]
tNpcGossip[23157]["ChkFunc1-4"]= function()
	local tManRnk = RankingFunc_GetNowData(tValentinesDay2018_Data["nManIndex"])
	local tWoManRnk = RankingFunc_GetNowData(tValentinesDay2018_Data["nWomanIndex"])
	local sManName = ""
	local sWoManName = ""
	local nIndex = 144
	for i = 1, 3 do
		-- 获取风流才子塝排名
		if tManRnk[i] ~= nil and tonumber(tManRnk[i]["UserId"]) > 0 and tManRnk[i]["Score"] > 0 then
			sManName = Sys_StringGSubTip(tManRnk[i]["UserName"])
		else
			sManName = tValentinesDay2018_Text["Dialog"]["Name"]
		end
		-- 获取红粉佳人榜排名
		if tWoManRnk[i] ~= nil and tonumber(tWoManRnk[i]["UserId"]) > 0 and tWoManRnk[i]["Score"] > 0 then
			sWoManName = Sys_StringGSubTip(tWoManRnk[i]["UserName"])
		else
			sWoManName = tValentinesDay2018_Text["Dialog"]["Name"]
		end
		tNpcGossip[23157]["Text" .. nIndex + i] = Sys_Alignment(tostring(sManName), 12, tostring(sWoManName), 36) .. "\n"
	end
	if Sys_ChkFullTime(tValentinesDay2018_Data["LectureTime"]) then
		if User_JudgeLevelAndMetempsychosis(tValentinesDay2018_Data["Level"],tValentinesDay2018_Data["Metempsychosis"]) then
			return true
		end
	end
	return false
end
tNpcGossip[23157]["tOption1-4"] = {141, 142}
-- tNpcGossip[23157]["Option143"] = tValentinesDay2018_Text[23157]["Option143"]
-- tNpcGossip[23157]["OptionFunc143"] = "ValentinesDay2018_OpenWebsite"
tNpcGossip[23157]["Option141"] = tValentinesDay2018_Text[23157]["Option141"]
tNpcGossip[23157]["OptionPoint141"] = "2-1"
tNpcGossip[23157]["Option142"] = tValentinesDay2018_Text[23157]["Option142"]
tNpcGossip[23157]["OptionPoint142"] = "4-1"

-- 活动中（竞选阶段） 等级未到
tNpcGossip[23157]["Text1-5"] = {151, 152, 153, 154, 155, 156, 157, 158, 159, 1510, 1511, 1512, 1513}
tNpcGossip[23157]["Text151"]  = tValentinesDay2018_Text[23157]["Text151"]
tNpcGossip[23157]["Text152"]  = tValentinesDay2018_Text[23157]["Text152"]
tNpcGossip[23157]["Text153"]  = tValentinesDay2018_Text[23157]["Text153"]
tNpcGossip[23157]["Text154"]  = tValentinesDay2018_Text[23157]["Text154"]
tNpcGossip[23157]["Text155"]  = tValentinesDay2018_Text[23157]["Text155"]
tNpcGossip[23157]["Text156"]  = tValentinesDay2018_Text[23157]["Text156"]
tNpcGossip[23157]["Text157"]  = tValentinesDay2018_Text[23157]["Text157"]
tNpcGossip[23157]["Text158"]  = tValentinesDay2018_Text[23157]["Text158"]
tNpcGossip[23157]["Text159"]  = tValentinesDay2018_Text[23157]["Text159"]
tNpcGossip[23157]["Text1510"] = tValentinesDay2018_Text[23157]["Text1510"]
tNpcGossip[23157]["Text1511"] = tValentinesDay2018_Text[23157]["Text1511"]
tNpcGossip[23157]["Text1512"] = tValentinesDay2018_Text[23157]["Text1512"]
tNpcGossip[23157]["Text1513"] = tValentinesDay2018_Text[23157]["Text1513"]
tNpcGossip[23157]["ChkFunc1-5"]= function()
	local tManRnk = RankingFunc_GetNowData(tValentinesDay2018_Data["nManIndex"])
	local tWoManRnk = RankingFunc_GetNowData(tValentinesDay2018_Data["nWomanIndex"])
	local sManName = ""
	local sWoManName = ""
	local nIndex = 154
	for i = 1, 3 do
		-- 获取风流才子塝排名
		if tManRnk[i] ~= nil and tonumber(tManRnk[i]["UserId"]) > 0 and tManRnk[i]["Score"] > 0 then
			sManName = Sys_StringGSubTip(tManRnk[i]["UserName"])
		else
			sManName = tValentinesDay2018_Text["Dialog"]["Name"]
		end
		-- 获取红粉佳人榜排名
		if tWoManRnk[i] ~= nil and tonumber(tWoManRnk[i]["UserId"]) > 0 and tWoManRnk[i]["Score"] > 0 then
			sWoManName = Sys_StringGSubTip(tWoManRnk[i]["UserName"])
		else
			sWoManName = tValentinesDay2018_Text["Dialog"]["Name"]
		end
		tNpcGossip[23157]["Text" .. nIndex + i] = Sys_Alignment(tostring(sManName), 12, tostring(sWoManName), 36) .. "\n"
	end
	if Sys_ChkFullTime(tActivityTime["ValentinesDay2018"]["WNSMoveTime"]) then
		if not User_JudgeLevelAndMetempsychosis(tValentinesDay2018_Data["Level"],tValentinesDay2018_Data["Metempsychosis"]) then
			return true
		end
	end
	return false
end
tNpcGossip[23157]["tOption1-5"] = {151}
tNpcGossip[23157]["Option151"] = tValentinesDay2018_Text[23157]["Option151"]
-- 活动中（竞选阶段） 等级达到
tNpcGossip[23157]["Text1-6"] = {161, 162, 163, 164, 165, 166, 167, 168, 169, 1610, 1611, 1612, 1613}
tNpcGossip[23157]["Text161"]  = tValentinesDay2018_Text[23157]["Text161"]
tNpcGossip[23157]["Text162"]  = tValentinesDay2018_Text[23157]["Text162"]
tNpcGossip[23157]["Text163"]  = tValentinesDay2018_Text[23157]["Text163"]
tNpcGossip[23157]["Text164"]  = tValentinesDay2018_Text[23157]["Text164"]
tNpcGossip[23157]["Text165"]  = tValentinesDay2018_Text[23157]["Text165"]
tNpcGossip[23157]["Text166"]  = tValentinesDay2018_Text[23157]["Text166"]
tNpcGossip[23157]["Text167"]  = tValentinesDay2018_Text[23157]["Text167"]
tNpcGossip[23157]["Text168"]  = tValentinesDay2018_Text[23157]["Text168"]
tNpcGossip[23157]["Text169"]  = tValentinesDay2018_Text[23157]["Text169"]
tNpcGossip[23157]["Text1610"] = tValentinesDay2018_Text[23157]["Text1610"]
tNpcGossip[23157]["Text1611"] = tValentinesDay2018_Text[23157]["Text1611"]
tNpcGossip[23157]["Text1612"] = tValentinesDay2018_Text[23157]["Text1612"]
tNpcGossip[23157]["Text1613"] = tValentinesDay2018_Text[23157]["Text1613"]
tNpcGossip[23157]["ChkFunc1-6"]= function()
	local tManRnk = RankingFunc_GetNowData(tValentinesDay2018_Data["nManIndex"])
	local tWoManRnk = RankingFunc_GetNowData(tValentinesDay2018_Data["nWomanIndex"])
	local sManName = ""
	local sWoManName = ""
	local nIndex = 164
	for i = 1, 3 do
		-- 获取风流才子塝排名
		if tManRnk[i] ~= nil and tonumber(tManRnk[i]["UserId"]) > 0 and tManRnk[i]["Score"] > 0 then
			sManName = Sys_StringGSubTip(tManRnk[i]["UserName"])
		else
			sManName = tValentinesDay2018_Text["Dialog"]["Name"]
		end
		-- 获取红粉佳人榜排名
		if tWoManRnk[i] ~= nil and tonumber(tWoManRnk[i]["UserId"]) > 0 and tWoManRnk[i]["Score"] > 0 then
			sWoManName = Sys_StringGSubTip(tWoManRnk[i]["UserName"])
		else
			sWoManName = tValentinesDay2018_Text["Dialog"]["Name"]
		end
		tNpcGossip[23157]["Text" .. nIndex + i] = Sys_Alignment(tostring(sManName), 12, tostring(sWoManName), 36) .. "\n"
	end
	if Sys_ChkFullTime(tActivityTime["ValentinesDay2018"]["WNSMoveTime"]) then
		if User_JudgeLevelAndMetempsychosis(tValentinesDay2018_Data["Level"],tValentinesDay2018_Data["Metempsychosis"]) then
			return true
		end
	end
	return false
end
tNpcGossip[23157]["tOption1-6"] = {161, 162, 163}
tNpcGossip[23157]["Option161"] = tValentinesDay2018_Text[23157]["Option161"]
tNpcGossip[23157]["OptionFunc161"] = "ValentinesDay2018_OpenWebsite"
tNpcGossip[23157]["Option162"] = tValentinesDay2018_Text[23157]["Option162"]
tNpcGossip[23157]["OptionPoint162"] = "6-1"
tNpcGossip[23157]["Option163"] = tValentinesDay2018_Text[23157]["Option163"]
tNpcGossip[23157]["OptionPoint163"] = "7-1"
-- 风流才子榜
tNpcGossip[23157]["Text2-1"] = {211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226}
tNpcGossip[23157]["Text211"] = tValentinesDay2018_Text[23157]["Text211"]
tNpcGossip[23157]["Text212"] = tValentinesDay2018_Text[23157]["Text212"]
tNpcGossip[23157]["Text213"] = tValentinesDay2018_Text[23157]["Text213"]
tNpcGossip[23157]["Text214"] = tValentinesDay2018_Text[23157]["Text214"]
tNpcGossip[23157]["Text215"] = tValentinesDay2018_Text[23157]["Text215"]
tNpcGossip[23157]["Text216"] = tValentinesDay2018_Text[23157]["Text216"]
tNpcGossip[23157]["Text217"] = tValentinesDay2018_Text[23157]["Text217"]
tNpcGossip[23157]["Text218"] = tValentinesDay2018_Text[23157]["Text218"]
tNpcGossip[23157]["Text219"] = tValentinesDay2018_Text[23157]["Text219"]
tNpcGossip[23157]["Text220"] = tValentinesDay2018_Text[23157]["Text220"]
tNpcGossip[23157]["Text221"] = tValentinesDay2018_Text[23157]["Text221"]
tNpcGossip[23157]["Text222"] = tValentinesDay2018_Text[23157]["Text222"]
tNpcGossip[23157]["Text223"] = tValentinesDay2018_Text[23157]["Text223"]
tNpcGossip[23157]["Text224"] = tValentinesDay2018_Text[23157]["Text224"]
tNpcGossip[23157]["Text225"] = tValentinesDay2018_Text[23157]["Text225"]
tNpcGossip[23157]["Text226"] = tValentinesDay2018_Text[23157]["Text226"]
tNpcGossip[23157]["ChkFunc2-1"] = function()
	local nIndex = 213
	local tRankData = RankingFunc_GetNowData(tValentinesDay2018_Data["nManIndex"])
	local sName = ""
	local sScore = ""
	for i = 1, 10 do
		if tRankData[i] ~= nil and tonumber(tRankData[i]["UserId"]) > 0 and tRankData[i]["Score"] > 0 then
			sScore = tostring(tRankData[i]["Score"])
			sName = Sys_StringGSubTip(tRankData[i]["UserName"])
		else
			sScore = tValentinesDay2018_Text["Dialog"]["Score"]
			sName = tValentinesDay2018_Text["Dialog"]["Name"]
		end
		tNpcGossip[23157]["Text" .. nIndex + i] = Sys_Alignment(tostring(tValentinesDay2018_Text[23157]["Text" .. nIndex + i]), 8, tostring(sName), 20, tostring(sScore), 42) .. "\n"
	end
	-- 排名 魅力之星
	local nUserCharmEvent = tValentinesDay2018_Data["Stc"]["Event"][8]
	local nUserCharmData = tValentinesDay2018_Data["Stc"]["Data"][8]
	local nUserCharmNum = Get_UserStatisticValue(nUserCharmEvent, nUserCharmData)
	local nUserRank = RankingFunc_GetUserInRank(tValentinesDay2018_Data["nManIndex"])
	local sUserRank = tValentinesDay2018_Text["Dialog"]["Rank"][nUserRank]
	tNpcGossip[23157]["Text226"] = string.format(tValentinesDay2018_Text[23157]["Text226"], sUserRank, nUserCharmNum)
	return true
end
tNpcGossip[23157]["tOption2-1"] = {211}
tNpcGossip[23157]["Option211"] = tValentinesDay2018_Text[23157]["Option211"]
tNpcGossip[23157]["OptionPoint211"] = "3-1"
-- 风流才子榜奖励
tNpcGossip[23157]["Text3-1"] = {311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324}
tNpcGossip[23157]["Text311"] = tValentinesDay2018_Text[23157]["Text311"]
tNpcGossip[23157]["Text312"] = tValentinesDay2018_Text[23157]["Text312"]
tNpcGossip[23157]["Text313"] = tValentinesDay2018_Text[23157]["Text313"]
tNpcGossip[23157]["Text314"] = tValentinesDay2018_Text[23157]["Text314"]
tNpcGossip[23157]["Text315"] = tValentinesDay2018_Text[23157]["Text315"]
tNpcGossip[23157]["Text316"] = tValentinesDay2018_Text[23157]["Text316"]
tNpcGossip[23157]["Text317"] = tValentinesDay2018_Text[23157]["Text317"]
tNpcGossip[23157]["Text318"] = tValentinesDay2018_Text[23157]["Text318"]
tNpcGossip[23157]["Text319"] = tValentinesDay2018_Text[23157]["Text319"]
tNpcGossip[23157]["Text320"] = tValentinesDay2018_Text[23157]["Text320"]
tNpcGossip[23157]["Text321"] = tValentinesDay2018_Text[23157]["Text321"]
tNpcGossip[23157]["Text322"] = tValentinesDay2018_Text[23157]["Text322"]
tNpcGossip[23157]["Text323"] = tValentinesDay2018_Text[23157]["Text323"]
tNpcGossip[23157]["Text324"] = tValentinesDay2018_Text[23157]["Text324"]
tNpcGossip[23157]["ChkFunc3-1"] = function()
	local nIndex = 313
	for i = 1, 10 do
		tNpcGossip[23157]["Text" .. nIndex + i] = Sys_Alignment(tostring(tValentinesDay2018_Text[23157]["Text" .. nIndex + i]), 6, tostring(tValentinesDay2018_Text["Dialog"]["ManRank"][i]), 18) .. "\n"
	end
	return true
end
tNpcGossip[23157]["tOption3-1"] = {311}
tNpcGossip[23157]["Option311"] = tValentinesDay2018_Text[23157]["Option311"]
tNpcGossip[23157]["OptionFunc311"] = "ValentinesDay2018_MessengerDialogChk</N>23157"
-- 红粉佳人榜
tNpcGossip[23157]["Text4-1"] = {411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426}
tNpcGossip[23157]["Text411"] = tValentinesDay2018_Text[23157]["Text411"]
tNpcGossip[23157]["Text412"] = tValentinesDay2018_Text[23157]["Text412"]
tNpcGossip[23157]["Text413"] = tValentinesDay2018_Text[23157]["Text413"]
tNpcGossip[23157]["Text414"] = tValentinesDay2018_Text[23157]["Text414"]
tNpcGossip[23157]["Text415"] = tValentinesDay2018_Text[23157]["Text415"]
tNpcGossip[23157]["Text416"] = tValentinesDay2018_Text[23157]["Text416"]
tNpcGossip[23157]["Text417"] = tValentinesDay2018_Text[23157]["Text417"]
tNpcGossip[23157]["Text418"] = tValentinesDay2018_Text[23157]["Text418"]
tNpcGossip[23157]["Text419"] = tValentinesDay2018_Text[23157]["Text419"]
tNpcGossip[23157]["Text420"] = tValentinesDay2018_Text[23157]["Text420"]
tNpcGossip[23157]["Text421"] = tValentinesDay2018_Text[23157]["Text421"]
tNpcGossip[23157]["Text422"] = tValentinesDay2018_Text[23157]["Text422"]
tNpcGossip[23157]["Text423"] = tValentinesDay2018_Text[23157]["Text423"]
tNpcGossip[23157]["Text424"] = tValentinesDay2018_Text[23157]["Text424"]
tNpcGossip[23157]["Text425"] = tValentinesDay2018_Text[23157]["Text425"]
tNpcGossip[23157]["Text426"] = tValentinesDay2018_Text[23157]["Text426"]
tNpcGossip[23157]["ChkFunc4-1"] = function()
	local nIndex = 413
	local tRankData = RankingFunc_GetNowData(tValentinesDay2018_Data["nWomanIndex"])
	local sName = ""
	local sScore = ""
	for i = 1, 10 do
		if tRankData[i] ~= nil and tonumber(tRankData[i]["UserId"]) > 0 and tRankData[i]["Score"] > 0 then
			sScore = tostring(tRankData[i]["Score"])
			sName = Sys_StringGSubTip(tRankData[i]["UserName"])
		else
			sScore = tValentinesDay2018_Text["Dialog"]["Score"]
			sName = tValentinesDay2018_Text["Dialog"]["Name"]
		end
		tNpcGossip[23157]["Text" .. nIndex + i] = Sys_Alignment(tostring(tValentinesDay2018_Text[23157]["Text" .. nIndex + i]), 8, tostring(sName), 20, tostring(sScore), 42) .. "\n"
	end
		-- 排名 魅力之星
	local nUserCharmEvent = tValentinesDay2018_Data["Stc"]["Event"][8]
	local nUserCharmData = tValentinesDay2018_Data["Stc"]["Data"][8]
	local nUserCharmNum = Get_UserStatisticValue(nUserCharmEvent, nUserCharmData)
	local nUserRank = RankingFunc_GetUserInRank(tValentinesDay2018_Data["nWomanIndex"])
	local sUserRank = tValentinesDay2018_Text["Dialog"]["Rank"][nUserRank]
	tNpcGossip[23157]["Text426"] = string.format(tValentinesDay2018_Text[23157]["Text426"], sUserRank, nUserCharmNum)
	return true
end
tNpcGossip[23157]["tOption4-1"] = {411}
tNpcGossip[23157]["Option411"] = tValentinesDay2018_Text[23157]["Option411"]
tNpcGossip[23157]["OptionPoint411"] = "5-1"
-- 红粉佳人榜奖励
tNpcGossip[23157]["Text5-1"] = {511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524}
tNpcGossip[23157]["Text511"] = tValentinesDay2018_Text[23157]["Text511"]
tNpcGossip[23157]["Text512"] = tValentinesDay2018_Text[23157]["Text512"]
tNpcGossip[23157]["Text513"] = tValentinesDay2018_Text[23157]["Text513"]
tNpcGossip[23157]["Text514"] = tValentinesDay2018_Text[23157]["Text514"]
tNpcGossip[23157]["Text515"] = tValentinesDay2018_Text[23157]["Text515"]
tNpcGossip[23157]["Text516"] = tValentinesDay2018_Text[23157]["Text516"]
tNpcGossip[23157]["Text517"] = tValentinesDay2018_Text[23157]["Text517"]
tNpcGossip[23157]["Text518"] = tValentinesDay2018_Text[23157]["Text518"]
tNpcGossip[23157]["Text519"] = tValentinesDay2018_Text[23157]["Text519"]
tNpcGossip[23157]["Text520"] = tValentinesDay2018_Text[23157]["Text520"]
tNpcGossip[23157]["Text521"] = tValentinesDay2018_Text[23157]["Text521"]
tNpcGossip[23157]["Text522"] = tValentinesDay2018_Text[23157]["Text522"]
tNpcGossip[23157]["Text523"] = tValentinesDay2018_Text[23157]["Text523"]
tNpcGossip[23157]["Text524"] = tValentinesDay2018_Text[23157]["Text524"]
tNpcGossip[23157]["ChkFunc5-1"] = function()
	local nIndex = 513
	for i = 1, 10 do
		tNpcGossip[23157]["Text" .. nIndex + i] = Sys_Alignment(tostring(tValentinesDay2018_Text[23157]["Text" .. nIndex + i]), 6, tostring(tValentinesDay2018_Text["Dialog"]["WomanRank"][i]), 18) .. "\n"
	end
	return true
end
tNpcGossip[23157]["tOption5-1"] = {511}
tNpcGossip[23157]["Option511"] = tValentinesDay2018_Text[23157]["Option511"]
tNpcGossip[23157]["OptionFunc511"] = "ValentinesDay2018_MessengerDialogChk</N>23157"
-- 风流才子榜
tNpcGossip[23157]["Text6-1"] = {611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625}
tNpcGossip[23157]["Text611"] = tValentinesDay2018_Text[23157]["Text611"]
tNpcGossip[23157]["Text612"] = tValentinesDay2018_Text[23157]["Text612"]
tNpcGossip[23157]["Text613"] = tValentinesDay2018_Text[23157]["Text613"]
tNpcGossip[23157]["Text614"] = tValentinesDay2018_Text[23157]["Text614"]
tNpcGossip[23157]["Text615"] = tValentinesDay2018_Text[23157]["Text615"]
tNpcGossip[23157]["Text616"] = tValentinesDay2018_Text[23157]["Text616"]
tNpcGossip[23157]["Text617"] = tValentinesDay2018_Text[23157]["Text617"]
tNpcGossip[23157]["Text618"] = tValentinesDay2018_Text[23157]["Text618"]
tNpcGossip[23157]["Text619"] = tValentinesDay2018_Text[23157]["Text619"]
tNpcGossip[23157]["Text620"] = tValentinesDay2018_Text[23157]["Text620"]
tNpcGossip[23157]["Text621"] = tValentinesDay2018_Text[23157]["Text621"]
tNpcGossip[23157]["Text622"] = tValentinesDay2018_Text[23157]["Text622"]
tNpcGossip[23157]["Text623"] = tValentinesDay2018_Text[23157]["Text623"]
tNpcGossip[23157]["Text624"] = tValentinesDay2018_Text[23157]["Text624"]
tNpcGossip[23157]["Text625"] = tValentinesDay2018_Text[23157]["Text625"]
tNpcGossip[23157]["ChkFunc6-1"] = function()
	local nIndex = 613
	local tRankData = RankingFunc_GetNowData(tValentinesDay2018_Data["nManIndex"])
	local sName = ""
	local sScore = ""
	for i = 1, 10 do
		if tRankData[i] ~= nil and tonumber(tRankData[i]["UserId"]) > 0 and tRankData[i]["Score"] > 0 then
			sScore = tostring(tRankData[i]["Score"])
			sName = Sys_StringGSubTip(tRankData[i]["UserName"])
		else
			sScore = tValentinesDay2018_Text["Dialog"]["Score"]
			sName = tValentinesDay2018_Text["Dialog"]["Name"]
		end
		tNpcGossip[23157]["Text" .. nIndex + i] = Sys_Alignment(tostring(tValentinesDay2018_Text[23157]["Text" .. nIndex + i]), 8, tostring(sName), 20, tostring(sScore), 42) .. "\n"
	end
	-- 排名 魅力之星
	local nUserCharmEvent = tValentinesDay2018_Data["Stc"]["Event"][8]
	local nUserCharmData = tValentinesDay2018_Data["Stc"]["Data"][8]
	local nUserCharmNum = Get_UserStatisticValue(nUserCharmEvent, nUserCharmData)
	local nUserRank = RankingFunc_GetUserInRank(tValentinesDay2018_Data["nManIndex"])
	local sUserRank = tValentinesDay2018_Text["Dialog"]["Rank"][nUserRank]
	tNpcGossip[23157]["Text625"] = string.format(tValentinesDay2018_Text[23157]["Text625"], sUserRank, nUserCharmNum)
	return true
end
tNpcGossip[23157]["tOption6-1"] = {611}
tNpcGossip[23157]["Option611"] = tValentinesDay2018_Text[23157]["Option611"]
tNpcGossip[23157]["OptionPoint611"] = "3-1"
-- 红粉佳人榜
tNpcGossip[23157]["Text7-1"] = {711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725}
tNpcGossip[23157]["Text711"] = tValentinesDay2018_Text[23157]["Text711"]
tNpcGossip[23157]["Text712"] = tValentinesDay2018_Text[23157]["Text712"]
tNpcGossip[23157]["Text713"] = tValentinesDay2018_Text[23157]["Text713"]
tNpcGossip[23157]["Text714"] = tValentinesDay2018_Text[23157]["Text714"]
tNpcGossip[23157]["Text715"] = tValentinesDay2018_Text[23157]["Text715"]
tNpcGossip[23157]["Text716"] = tValentinesDay2018_Text[23157]["Text716"]
tNpcGossip[23157]["Text717"] = tValentinesDay2018_Text[23157]["Text717"]
tNpcGossip[23157]["Text718"] = tValentinesDay2018_Text[23157]["Text718"]
tNpcGossip[23157]["Text719"] = tValentinesDay2018_Text[23157]["Text719"]
tNpcGossip[23157]["Text720"] = tValentinesDay2018_Text[23157]["Text720"]
tNpcGossip[23157]["Text721"] = tValentinesDay2018_Text[23157]["Text721"]
tNpcGossip[23157]["Text722"] = tValentinesDay2018_Text[23157]["Text722"]
tNpcGossip[23157]["Text723"] = tValentinesDay2018_Text[23157]["Text723"]
tNpcGossip[23157]["Text724"] = tValentinesDay2018_Text[23157]["Text724"]
tNpcGossip[23157]["Text725"] = tValentinesDay2018_Text[23157]["Text725"]
tNpcGossip[23157]["ChkFunc7-1"] = function()
	local nIndex = 713
	local tRankData = RankingFunc_GetNowData(tValentinesDay2018_Data["nWomanIndex"])
	local sName = ""
	local sScore = ""
	for i = 1, 10 do
		if tRankData[i] ~= nil and tonumber(tRankData[i]["UserId"]) > 0 and tRankData[i]["Score"] > 0 then
			sScore = tostring(tRankData[i]["Score"])
			sName = Sys_StringGSubTip(tRankData[i]["UserName"])
		else
			sScore = tValentinesDay2018_Text["Dialog"]["Score"]
			sName = tValentinesDay2018_Text["Dialog"]["Name"]
		end
		tNpcGossip[23157]["Text" .. nIndex + i] = Sys_Alignment(tostring(tValentinesDay2018_Text[23157]["Text" .. nIndex + i]), 8, tostring(sName), 20, tostring(sScore), 42) .. "\n"
	end
		-- 排名 魅力之星
	local nUserCharmEvent = tValentinesDay2018_Data["Stc"]["Event"][8]
	local nUserCharmData = tValentinesDay2018_Data["Stc"]["Data"][8]
	local nUserCharmNum = Get_UserStatisticValue(nUserCharmEvent, nUserCharmData)
	local nUserRank = RankingFunc_GetUserInRank(tValentinesDay2018_Data["nWomanIndex"])
	local sUserRank = tValentinesDay2018_Text["Dialog"]["Rank"][nUserRank]
	tNpcGossip[23157]["Text725"] = string.format(tValentinesDay2018_Text[23157]["Text725"], sUserRank, nUserCharmNum)

	return true
end
tNpcGossip[23157]["tOption7-1"] = {711}
tNpcGossip[23157]["Option711"] = tValentinesDay2018_Text[23157]["Option711"]
tNpcGossip[23157]["OptionPoint711"] = "5-1"

-- 全球票选阶段的
tNpcGossip[24686] = tNpcGossip[23157]

-- 【七夕花仙阁】花仙子
tNpcFace[4835] = 1
tNpcGossip[24477] = tNpcGossip[24477] or DefaultNpc:new{}
tNpcGossip[24477]["OptionHidden"] = 1
-- 活动前
tNpcGossip[24477]["Text1-1"] = {111, 112, 113, 114, 115}
tNpcGossip[24477]["Text111"] = tValentinesDay2018_Text[24477]["Text111"]
tNpcGossip[24477]["Text112"] = tValentinesDay2018_Text[24477]["Text112"]
tNpcGossip[24477]["Text113"] = tValentinesDay2018_Text[24477]["Text113"]
tNpcGossip[24477]["Text114"] = tValentinesDay2018_Text[24477]["Text114"]
tNpcGossip[24477]["Text115"] = tValentinesDay2018_Text[24477]["Text115"]
tNpcGossip[24477]["ChkFunc1-1"]= function()
	if Sys_ChkFullTime(tActivityTime["ValentinesDay2018"]["BeforeTime"]) then
		return true
	end
	return false
end
tNpcGossip[24477]["tOption1-1"] = {111}
tNpcGossip[24477]["Option111"] = tValentinesDay2018_Text[24477]["Option111"]
-- 活动后
tNpcGossip[24477]["Text1-2"] = {121, 122}
tNpcGossip[24477]["Text121"] = tValentinesDay2018_Text[24477]["Text121"]
tNpcGossip[24477]["Text122"] = tValentinesDay2018_Text[24477]["Text122"]
tNpcGossip[24477]["ChkFunc1-2"]= function()
	if not Sys_ChkFullTime(tActivityTime["ValentinesDay2018"]["ActivityTime"]) then
		return true
	end
	return false
end
tNpcGossip[24477]["tOption1-2"] = {121}
tNpcGossip[24477]["Option121"] = tValentinesDay2018_Text[24477]["Option121"]
-- 活动中  等级未到
tNpcGossip[24477]["Text1-3"] = {131, 132, 133, 134, 135}
tNpcGossip[24477]["Text131"] = tValentinesDay2018_Text[24477]["Text131"]
tNpcGossip[24477]["Text132"] = tValentinesDay2018_Text[24477]["Text132"]
tNpcGossip[24477]["Text133"] = tValentinesDay2018_Text[24477]["Text133"]
tNpcGossip[24477]["Text134"] = tValentinesDay2018_Text[24477]["Text134"]
tNpcGossip[24477]["Text135"] = tValentinesDay2018_Text[24477]["Text135"]
tNpcGossip[24477]["ChkFunc1-3"]= function()
	if Sys_ChkFullTime(tActivityTime["ValentinesDay2018"]["ActivityTime"]) then
		if not User_JudgeLevelAndMetempsychosis(tValentinesDay2018_Data["Level"],tValentinesDay2018_Data["Metempsychosis"]) then
			return true
		end
	end
	return false
end
tNpcGossip[24477]["tOption1-3"] = {131}
tNpcGossip[24477]["Option131"] = tValentinesDay2018_Text[24477]["Option131"]
-- 活动中  等级达到
tNpcGossip[24477]["Text1-4"] = {141, 142, 143, 144}
tNpcGossip[24477]["Text141"] = tValentinesDay2018_Text[24477]["Text141"]
tNpcGossip[24477]["Text142"] = tValentinesDay2018_Text[24477]["Text142"]
tNpcGossip[24477]["Text143"] = tValentinesDay2018_Text[24477]["Text143"]
tNpcGossip[24477]["Text144"] = tValentinesDay2018_Text[24477]["Text144"]
tNpcGossip[24477]["ChkFunc1-4"]= function()
	if Sys_ChkFullTime(tActivityTime["ValentinesDay2018"]["ActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tValentinesDay2018_Data["Level"],tValentinesDay2018_Data["Metempsychosis"]) then
			return true
		end
	end
	return false
end
tNpcGossip[24477]["tOption1-4"] = {141, 142, 143}
tNpcGossip[24477]["Option141"] = tValentinesDay2018_Text[24477]["Option141"]
tNpcGossip[24477]["OptionFunc141"] = "ValentinesDay2018_EnterTheGarden</N>24477"
tNpcGossip[24477]["Option142"] = tValentinesDay2018_Text[24477]["Option142"]
tNpcGossip[24477]["OptionPoint142"] = "2-1"
tNpcGossip[24477]["Option143"] = tValentinesDay2018_Text[24477]["Option143"]
tNpcGossip[24477]["OptionFunc143"] = "ValentinesDay2018_ReplacementTheSpirit</N>24477"
tNpcGossip[24477]["OptionChkFunc143"] = function()
	if Item_ChkItem(tValentinesDay2018_Data["RoomItem2"]) then
		return false
	end
	return true
end

-- 种花攻略
tNpcGossip[24477]["Text2-1"] = {211, 212, 213, 214, 215, 216, 217}
tNpcGossip[24477]["Text211"] = tValentinesDay2018_Text[24477]["Text211"]
tNpcGossip[24477]["Text212"] = tValentinesDay2018_Text[24477]["Text212"]
tNpcGossip[24477]["Text213"] = tValentinesDay2018_Text[24477]["Text213"]
tNpcGossip[24477]["Text214"] = tValentinesDay2018_Text[24477]["Text214"]
tNpcGossip[24477]["Text215"] = tValentinesDay2018_Text[24477]["Text215"]
tNpcGossip[24477]["Text216"] = tValentinesDay2018_Text[24477]["Text216"]
tNpcGossip[24477]["Text217"] = tValentinesDay2018_Text[24477]["Text217"]
tNpcGossip[24477]["tOption2-1"] = {211, 212}
tNpcGossip[24477]["Option211"] = tValentinesDay2018_Text[24477]["Option211"]
tNpcGossip[24477]["OptionPoint211"] = "2-2"
tNpcGossip[24477]["Option212"] = tValentinesDay2018_Text[24477]["Option212"]
tNpcGossip[24477]["OptionPoint212"] = "2-3"
-- 种花奖励
tNpcGossip[24477]["Text2-2"] = {221, 222, 223, 224, 225, 226, 227, 228, 229, 2210, 2211, 2212, 2213}
tNpcGossip[24477]["Text221"]  = tValentinesDay2018_Text[24477]["Text221"]
tNpcGossip[24477]["Text222"]  = tValentinesDay2018_Text[24477]["Text222"]
tNpcGossip[24477]["Text223"]  = tValentinesDay2018_Text[24477]["Text223"]
tNpcGossip[24477]["Text224"]  = tValentinesDay2018_Text[24477]["Text224"]
tNpcGossip[24477]["Text225"]  = tValentinesDay2018_Text[24477]["Text225"]
tNpcGossip[24477]["Text226"]  = tValentinesDay2018_Text[24477]["Text226"]
tNpcGossip[24477]["Text227"]  = tValentinesDay2018_Text[24477]["Text227"]
tNpcGossip[24477]["Text228"]  = tValentinesDay2018_Text[24477]["Text228"]
tNpcGossip[24477]["Text229"]  = tValentinesDay2018_Text[24477]["Text229"]
tNpcGossip[24477]["Text2210"] = tValentinesDay2018_Text[24477]["Text2210"]
tNpcGossip[24477]["Text2211"] = tValentinesDay2018_Text[24477]["Text2211"]
tNpcGossip[24477]["Text2212"] = tValentinesDay2018_Text[24477]["Text2212"]
tNpcGossip[24477]["Text2213"] = tValentinesDay2018_Text[24477]["Text2213"]
tNpcGossip[24477]["tOption2-2"] = {221}
tNpcGossip[24477]["Option221"] = tValentinesDay2018_Text[24477]["Option221"]
-- 浇灌须知
tNpcGossip[24477]["Text2-3"] = {231, 232, 233, 234, 235, 236, 237, 238}
tNpcGossip[24477]["Text231"] = tValentinesDay2018_Text[24477]["Text231"]
tNpcGossip[24477]["Text232"] = tValentinesDay2018_Text[24477]["Text232"]
tNpcGossip[24477]["Text233"] = tValentinesDay2018_Text[24477]["Text233"]
tNpcGossip[24477]["Text234"] = tValentinesDay2018_Text[24477]["Text234"]
tNpcGossip[24477]["Text235"] = tValentinesDay2018_Text[24477]["Text235"]
tNpcGossip[24477]["Text236"] = tValentinesDay2018_Text[24477]["Text236"]
tNpcGossip[24477]["Text237"] = tValentinesDay2018_Text[24477]["Text237"]
tNpcGossip[24477]["Text238"] = tValentinesDay2018_Text[24477]["Text238"]
tNpcGossip[24477]["tOption2-3"] = {231}
tNpcGossip[24477]["Option231"] = tValentinesDay2018_Text[24477]["Option231"]

-- 【中国】观光大使
tNpcFace[5863] = 50
tNpcGossip[24706] = tNpcGossip[24706] or DefaultNpc:new{}
tNpcGossip[24706]["OptionHidden"] = 1
tNpcGossip[24706]["Text1-1"] = {111}
tNpcGossip[24706]["Text111"] = tValentinesDay2018_Text[24706]["Text111"]
tNpcGossip[24706]["tOption1-1"] = {112}
-- tNpcGossip[24706]["Option111"] = tValentinesDay2018_Text[24706]["Option111"]
-- tNpcGossip[24706]["OptionFunc111"] = ""
tNpcGossip[24706]["Option112"] = tValentinesDay2018_Text[24706]["Option112"]

-- 【多米尼加】观光大使
tNpcFace[5864] = 143
tNpcGossip[24707] = tNpcGossip[24707] or DefaultNpc:new{}
tNpcGossip[24707]["OptionHidden"] = 1
tNpcGossip[24707]["Text1-1"] = {111}
tNpcGossip[24707]["Text111"] = tValentinesDay2018_Text[24707]["Text111"]
tNpcGossip[24707]["tOption1-1"] = {112}
-- tNpcGossip[24707]["Option111"] = tValentinesDay2018_Text[24707]["Option111"]
-- tNpcGossip[24707]["OptionFunc111"] = ""
tNpcGossip[24707]["Option112"] = tValentinesDay2018_Text[24707]["Option112"]

-- 【埃及】观光大使
tNpcFace[5434] = 229
tNpcGossip[24708] = tNpcGossip[24708] or DefaultNpc:new{}
tNpcGossip[24708]["OptionHidden"] = 1
tNpcGossip[24708]["Text1-1"] = {111}
tNpcGossip[24708]["Text111"] = tValentinesDay2018_Text[24708]["Text111"]
tNpcGossip[24708]["tOption1-1"] = {112}
-- tNpcGossip[24708]["Option111"] = tValentinesDay2018_Text[24708]["Option111"]
-- tNpcGossip[24708]["OptionFunc111"] = ""
tNpcGossip[24708]["Option112"] = tValentinesDay2018_Text[24708]["Option112"]

-- 【埃及】观光大使
tNpcFace[5435] = 241
tNpcGossip[24709] = tNpcGossip[24709] or DefaultNpc:new{}
tNpcGossip[24709]["OptionHidden"] = 1
tNpcGossip[24709]["Text1-1"] = {111}
tNpcGossip[24709]["Text111"] = tValentinesDay2018_Text[24709]["Text111"]
tNpcGossip[24709]["tOption1-1"] = {112}
-- tNpcGossip[24709]["Option111"] = tValentinesDay2018_Text[24709]["Option111"]
-- tNpcGossip[24709]["OptionFunc111"] = ""
tNpcGossip[24709]["Option112"] = tValentinesDay2018_Text[24709]["Option112"]




-- 征服环球小姐冠军
tNpcFace[5863] = 184
tNpcGossip[24902] = tNpcGossip[24902] or DefaultNpc:new{}
tNpcGossip[24902]["OptionHidden"] = 1
tNpcGossip[24902]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tNpcGossip[24902]["Text111"] = tValentinesDay2018_Text[24902]["Text111"]
tNpcGossip[24902]["Text112"] = tValentinesDay2018_Text[24902]["Text112"]
tNpcGossip[24902]["Text113"] = tValentinesDay2018_Text[24902]["Text113"]
tNpcGossip[24902]["Text114"] = tValentinesDay2018_Text[24902]["Text114"]
tNpcGossip[24902]["Text115"] = tValentinesDay2018_Text[24902]["Text115"]
tNpcGossip[24902]["Text116"] = tValentinesDay2018_Text[24902]["Text116"]
tNpcGossip[24902]["Text117"] = tValentinesDay2018_Text[24902]["Text117"]
tNpcGossip[24902]["tOption1-1"] = {113}
tNpcGossip[24902]["Option113"] = tValentinesDay2018_Text[24902]["Option113"]

-- 征服环球先生冠军
tNpcFace[5864] = 49
tNpcGossip[24903] = tNpcGossip[24903] or DefaultNpc:new{}
tNpcGossip[24903]["OptionHidden"] = 1
tNpcGossip[24903]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tNpcGossip[24903]["Text111"] = tValentinesDay2018_Text[24903]["Text111"]
tNpcGossip[24903]["Text112"] = tValentinesDay2018_Text[24903]["Text112"]
tNpcGossip[24903]["Text113"] = tValentinesDay2018_Text[24903]["Text113"]
tNpcGossip[24903]["Text114"] = tValentinesDay2018_Text[24903]["Text114"]
tNpcGossip[24903]["Text115"] = tValentinesDay2018_Text[24903]["Text115"]
tNpcGossip[24903]["Text116"] = tValentinesDay2018_Text[24903]["Text116"]
tNpcGossip[24903]["Text117"] = tValentinesDay2018_Text[24903]["Text117"]
tNpcGossip[24903]["tOption1-1"] = {113}
tNpcGossip[24903]["Option113"] = tValentinesDay2018_Text[24903]["Option113"]

-- 全球守护女神冠军
tNpcFace[5985] = 174
tNpcGossip[24904] = tNpcGossip[24904] or DefaultNpc:new{}
tNpcGossip[24904]["OptionHidden"] = 1
tNpcGossip[24904]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tNpcGossip[24904]["Text111"] = tValentinesDay2018_Text[24904]["Text111"]
tNpcGossip[24904]["Text112"] = tValentinesDay2018_Text[24904]["Text112"]
tNpcGossip[24904]["Text113"] = tValentinesDay2018_Text[24904]["Text113"]
tNpcGossip[24904]["Text114"] = tValentinesDay2018_Text[24904]["Text114"]
tNpcGossip[24904]["Text115"] = tValentinesDay2018_Text[24904]["Text115"]
tNpcGossip[24904]["Text116"] = tValentinesDay2018_Text[24904]["Text116"]
tNpcGossip[24904]["Text117"] = tValentinesDay2018_Text[24904]["Text117"]
tNpcGossip[24904]["tOption1-1"] = {113}
tNpcGossip[24904]["Option113"] = tValentinesDay2018_Text[24904]["Option113"]

-- 全球守护男神冠军
tNpcFace[5986] = 32
tNpcGossip[24905] = tNpcGossip[24905] or DefaultNpc:new{}
tNpcGossip[24905]["OptionHidden"] = 1
tNpcGossip[24905]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tNpcGossip[24905]["Text111"] = tValentinesDay2018_Text[24905]["Text111"]
tNpcGossip[24905]["Text112"] = tValentinesDay2018_Text[24905]["Text112"]
tNpcGossip[24905]["Text113"] = tValentinesDay2018_Text[24905]["Text113"]
tNpcGossip[24905]["Text114"] = tValentinesDay2018_Text[24905]["Text114"]
tNpcGossip[24905]["Text115"] = tValentinesDay2018_Text[24905]["Text115"]
tNpcGossip[24905]["Text116"] = tValentinesDay2018_Text[24905]["Text116"]
tNpcGossip[24905]["Text117"] = tValentinesDay2018_Text[24905]["Text117"]
tNpcGossip[24905]["tOption1-1"] = {113}
tNpcGossip[24905]["Option113"] = tValentinesDay2018_Text[24905]["Option113"]



-- 花仙子
tNpcGossip[24478] = tNpcGossip[24478] or DefaultNpc:new{}
tNpcGossip[24478]["OptionHidden"] = 1
tNpcGossip[24478]["Text1-1"] = {111, 112}
tNpcGossip[24478]["Text111"] = tValentinesDay2018_Text[24478]["Text111"]
tNpcGossip[24478]["Text112"] = tValentinesDay2018_Text[24478]["Text112"]
tNpcGossip[24478]["tOption1-1"] = {111}
tNpcGossip[24478]["Option111"] = tValentinesDay2018_Text[24478]["Option111"]
tNpcGossip[24478]["OptionFunc111"] = "ValentinesDay2018_ChooseWay"

-- -- 【全球人气榜】天王巨星
-- tNpcFace[6221] = 4
-- tNpcGossip[24478] = tNpcGossip[24478] or DefaultNpc:new{}
-- tNpcGossip[24478]["OptionHidden"] = 1
-- -- 竞选前
-- tNpcGossip[24478]["Text1-1"] = {111, 112, 113, 114, 115}
-- tNpcGossip[24478]["Text111"] = tValentinesDay2018_Text[24478]["Text111"]
-- tNpcGossip[24478]["Text112"] = tValentinesDay2018_Text[24478]["Text112"]
-- tNpcGossip[24478]["Text113"] = tValentinesDay2018_Text[24478]["Text113"]
-- tNpcGossip[24478]["Text114"] = tValentinesDay2018_Text[24478]["Text114"]
-- tNpcGossip[24478]["Text115"] = tValentinesDay2018_Text[24478]["Text115"]
-- tNpcGossip[24478]["ChkFunc1-1"]= function()
	-- if not Sys_ChkFullTime(tActivityTime["ValentinesDay2018"]["CampaignTime"]) then
		-- return true
	-- end
	-- return false
-- end
-- tNpcGossip[24478]["tOption1-1"] = {111}
-- tNpcGossip[24478]["Option111"] = tValentinesDay2018_Text[24478]["Option111"]
-- -- 活动中（竞选阶段）
-- tNpcGossip[24478]["Text1-2"] = {121, 122, 123, 124, 125}
-- tNpcGossip[24478]["Text121"] = tValentinesDay2018_Text[24478]["Text121"]
-- tNpcGossip[24478]["Text122"] = tValentinesDay2018_Text[24478]["Text122"]
-- tNpcGossip[24478]["Text123"] = tValentinesDay2018_Text[24478]["Text123"]
-- tNpcGossip[24478]["Text124"] = tValentinesDay2018_Text[24478]["Text124"]
-- tNpcGossip[24478]["Text125"] = tValentinesDay2018_Text[24478]["Text125"]
-- tNpcGossip[24478]["ChkFunc1-2"]= function()
	-- if Sys_ChkFullTime(tActivityTime["ValentinesDay2018"]["CampaignTime"]) then
		-- return true
	-- end
	-- return false
-- end
-- tNpcGossip[24478]["tOption1-2"] = {121, 122}
-- tNpcGossip[24478]["Option121"] = tValentinesDay2018_Text[24478]["Option121"]
-- tNpcGossip[24478]["OptionFunc121"] = "ValentinesDay2018_OpenWebsite</N>2"
-- tNpcGossip[24478]["Option122"] = tValentinesDay2018_Text[24478]["Option122"]
-- tNpcGossip[24478]["OptionPoint122"] = "2-1"
-- -- 排名奖励一览
-- tNpcGossip[24478]["Text2-1"] = {211, 212, 213, 214, 215, 216, 217, 218}
-- tNpcGossip[24478]["Text211"] = tValentinesDay2018_Text[24478]["Text211"]
-- tNpcGossip[24478]["Text212"] = tValentinesDay2018_Text[24478]["Text212"]
-- tNpcGossip[24478]["Text213"] = tValentinesDay2018_Text[24478]["Text213"]
-- tNpcGossip[24478]["Text214"] = tValentinesDay2018_Text[24478]["Text214"]
-- tNpcGossip[24478]["Text215"] = tValentinesDay2018_Text[24478]["Text215"]
-- tNpcGossip[24478]["Text216"] = tValentinesDay2018_Text[24478]["Text216"]
-- tNpcGossip[24478]["Text217"] = tValentinesDay2018_Text[24478]["Text217"]
-- tNpcGossip[24478]["Text218"] = tValentinesDay2018_Text[24478]["Text218"]
-- tNpcGossip[24478]["tOption2-1"] = {211, 212, 213, 214}
-- tNpcGossip[24478]["Option211"] = tValentinesDay2018_Text[24478]["Option211"]
-- tNpcGossip[24478]["OptionPoint211"] = "2-2"
-- tNpcGossip[24478]["Option212"] = tValentinesDay2018_Text[24478]["Option212"]
-- tNpcGossip[24478]["OptionPoint212"] = "2-3"
-- tNpcGossip[24478]["Option213"] = tValentinesDay2018_Text[24478]["Option213"]
-- tNpcGossip[24478]["OptionPoint213"] = "2-4"
-- tNpcGossip[24478]["Option214"] = tValentinesDay2018_Text[24478]["Option214"]
-- -- 区域人气榜奖励
-- tNpcGossip[24478]["Text2-2"] = {221, 222, 223, 224, 225, 226, 227, 228, 229}
-- tNpcGossip[24478]["Text221"] = tValentinesDay2018_Text[24478]["Text221"]
-- tNpcGossip[24478]["Text222"] = tValentinesDay2018_Text[24478]["Text222"]
-- tNpcGossip[24478]["Text223"] = tValentinesDay2018_Text[24478]["Text223"]
-- tNpcGossip[24478]["Text224"] = tValentinesDay2018_Text[24478]["Text224"]
-- tNpcGossip[24478]["Text225"] = tValentinesDay2018_Text[24478]["Text225"]
-- tNpcGossip[24478]["Text226"] = tValentinesDay2018_Text[24478]["Text226"]
-- tNpcGossip[24478]["Text227"] = tValentinesDay2018_Text[24478]["Text227"]
-- tNpcGossip[24478]["Text228"] = tValentinesDay2018_Text[24478]["Text228"]
-- tNpcGossip[24478]["Text229"] = tValentinesDay2018_Text[24478]["Text229"]
-- tNpcGossip[24478]["tOption2-2"] = {221, 222, 223, 224}
-- tNpcGossip[24478]["Option221"] = tValentinesDay2018_Text[24478]["Option221"]
-- tNpcGossip[24478]["OptionPoint221"] = "2-1"
-- tNpcGossip[24478]["Option222"] = tValentinesDay2018_Text[24478]["Option222"]
-- tNpcGossip[24478]["OptionPoint222"] = "2-3"
-- tNpcGossip[24478]["Option223"] = tValentinesDay2018_Text[24478]["Option223"]
-- tNpcGossip[24478]["OptionPoint223"] = "2-4"
-- tNpcGossip[24478]["Option224"] = tValentinesDay2018_Text[24478]["Option224"]
-- -- 全球守护榜奖励
-- tNpcGossip[24478]["Text2-3"] = {231, 232, 233, 234, 235, 236, 237, 238}
-- tNpcGossip[24478]["Text231"] = tValentinesDay2018_Text[24478]["Text231"]
-- tNpcGossip[24478]["Text232"] = tValentinesDay2018_Text[24478]["Text232"]
-- tNpcGossip[24478]["Text233"] = tValentinesDay2018_Text[24478]["Text233"]
-- tNpcGossip[24478]["Text234"] = tValentinesDay2018_Text[24478]["Text234"]
-- tNpcGossip[24478]["Text235"] = tValentinesDay2018_Text[24478]["Text235"]
-- tNpcGossip[24478]["Text236"] = tValentinesDay2018_Text[24478]["Text236"]
-- tNpcGossip[24478]["Text237"] = tValentinesDay2018_Text[24478]["Text237"]
-- tNpcGossip[24478]["Text238"] = tValentinesDay2018_Text[24478]["Text238"]
-- tNpcGossip[24478]["tOption2-3"] = {231, 232, 233, 234}
-- tNpcGossip[24478]["Option231"] = tValentinesDay2018_Text[24478]["Option231"]
-- tNpcGossip[24478]["OptionPoint231"] = "2-1"
-- tNpcGossip[24478]["Option232"] = tValentinesDay2018_Text[24478]["Option232"]
-- tNpcGossip[24478]["OptionPoint232"] = "2-2"
-- tNpcGossip[24478]["Option233"] = tValentinesDay2018_Text[24478]["Option233"]
-- tNpcGossip[24478]["OptionPoint233"] = "2-4"
-- tNpcGossip[24478]["Option234"] = tValentinesDay2018_Text[24478]["Option234"]
-- -- 区域守护榜奖励
-- tNpcGossip[24478]["Text2-4"] = {241, 242, 243, 244, 245, 246, 247, 248}
-- tNpcGossip[24478]["Text241"] = tValentinesDay2018_Text[24478]["Text241"]
-- tNpcGossip[24478]["Text242"] = tValentinesDay2018_Text[24478]["Text242"]
-- tNpcGossip[24478]["Text243"] = tValentinesDay2018_Text[24478]["Text243"]
-- tNpcGossip[24478]["Text244"] = tValentinesDay2018_Text[24478]["Text244"]
-- tNpcGossip[24478]["Text245"] = tValentinesDay2018_Text[24478]["Text245"]
-- tNpcGossip[24478]["Text246"] = tValentinesDay2018_Text[24478]["Text246"]
-- tNpcGossip[24478]["Text247"] = tValentinesDay2018_Text[24478]["Text247"]
-- tNpcGossip[24478]["Text248"] = tValentinesDay2018_Text[24478]["Text248"]
-- tNpcGossip[24478]["tOption2-4"] = {241, 242, 243, 244}
-- tNpcGossip[24478]["Option241"] = tValentinesDay2018_Text[24478]["Option241"]
-- tNpcGossip[24478]["OptionPoint241"] = "2-1"
-- tNpcGossip[24478]["Option242"] = tValentinesDay2018_Text[24478]["Option242"]
-- tNpcGossip[24478]["OptionPoint242"] = "2-2"
-- tNpcGossip[24478]["Option243"] = tValentinesDay2018_Text[24478]["Option243"]
-- tNpcGossip[24478]["OptionPoint243"] = "2-3"
-- tNpcGossip[24478]["Option244"] = tValentinesDay2018_Text[24478]["Option244"]

-- 菜地模板
tNpcFace[4550] = 1396
tNpcGossip[24479] = tNpcGossip[24479] or DefaultNpc:new{}
tNpcGossip[24479]["OptionHidden"] = 1
-- 未种植
tNpcGossip[24479]["Text1-1"] = {111, 112, 113, 114}
tNpcGossip[24479]["Text111"] = tValentinesDay2018_Text[24479]["Text111"]
tNpcGossip[24479]["Text112"] = tValentinesDay2018_Text[24479]["Text112"]
tNpcGossip[24479]["Text113"] = tValentinesDay2018_Text[24479]["Text113"]
tNpcGossip[24479]["Text114"] = tValentinesDay2018_Text[24479]["Text114"]
tNpcGossip[24479]["tOption1-1"] = {111, 112, 113, 114}
tNpcGossip[24479]["Option111"] = tValentinesDay2018_Text[24479]["Option111"]
tNpcGossip[24479]["OptionFunc111"] = "ValentinesDay2018_GrowVegetables</N>24479</N>1"
tNpcGossip[24479]["Option112"] = tValentinesDay2018_Text[24479]["Option112"]
tNpcGossip[24479]["OptionFunc112"] = "ValentinesDay2018_GrowVegetables</N>24479</N>2"
tNpcGossip[24479]["Option113"] = tValentinesDay2018_Text[24479]["Option113"]
tNpcGossip[24479]["OptionFunc113"] = "ValentinesDay2018_GrowVegetables</N>24479</N>3"
tNpcGossip[24479]["Option114"] = tValentinesDay2018_Text[24479]["Option114"]
tNpcGossip[24479]["OptionFunc114"] = "ValentinesDay2018_GrowVegetables</N>24479</N>4"
-- 没有种子
tNpcGossip[24479]["Text1-2"] = {121}
tNpcGossip[24479]["Text121"] = tValentinesDay2018_Text[24479]["Text121"]
tNpcGossip[24479]["tOption1-2"] = {121}
tNpcGossip[24479]["Option121"] = tValentinesDay2018_Text[24479]["Option121"]
tNpcGossip[24479]["OptionPoint121"] = "1-1"
-- 已种植（自己种的）
tNpcGossip[24479]["Text2-1"] = {211, 212, 213, 214, 215, 216}
tNpcGossip[24479]["Text211"] = tValentinesDay2018_Text[24479]["Text211"]
tNpcGossip[24479]["Text212"] = tValentinesDay2018_Text[24479]["Text212"]
tNpcGossip[24479]["Text213"] = tValentinesDay2018_Text[24479]["Text213"]
tNpcGossip[24479]["Text214"] = tValentinesDay2018_Text[24479]["Text214"]
tNpcGossip[24479]["Text215"] = tValentinesDay2018_Text[24479]["Text215"]
tNpcGossip[24479]["Text216"] = tValentinesDay2018_Text[24479]["Text216"]
tNpcGossip[24479]["tOption2-1"] = {211, 212, 213, 214}
tNpcGossip[24479]["Option211"] = tValentinesDay2018_Text[24479]["Option211"]
-- tNpcGossip[24479]["OptionChkFunc211"] = function ()
	-- -- 判断是否成熟
	-- if ValentinesDay2018_GetMatureType(nNpcId) then
		-- return true
	-- end
	-- return false
-- end
tNpcGossip[24479]["OptionFunc211"] = "ValentinesDay2018_UserHarvestFlowers</N>24479"
tNpcGossip[24479]["Option212"] = tValentinesDay2018_Text[24479]["Option212"]
-- tNpcGossip[24479]["OptionChkFunc212"] = function ()
	-- 判断是否成熟
	-- if ValentinesDay2018_GetMatureType(nNpcId) then
		-- return false
	-- end
	-- -- 判断是否浇灌
	-- if not ValentinesDay2018_ChkUserStcIndex(nNpcId, 2) then
		-- return true
	-- end
	-- return false
-- end
tNpcGossip[24479]["OptionFunc212"] = "ValentinesDay2018_UserWaterFlowers</N>24479"
tNpcGossip[24479]["Option213"] = tValentinesDay2018_Text[24479]["Option213"]
tNpcGossip[24479]["OptionFunc213"] = "ValentinesDay2018_ChkAccelerateRipening</N>24479"
tNpcGossip[24479]["Option214"] = tValentinesDay2018_Text[24479]["Option214"]
-- 已种植（别人种的）
tNpcGossip[24479]["Text3-1"] = {311, 312, 313, 314, 315, 316}
tNpcGossip[24479]["Text311"] = tValentinesDay2018_Text[24479]["Text311"]
tNpcGossip[24479]["Text312"] = tValentinesDay2018_Text[24479]["Text312"]
tNpcGossip[24479]["Text313"] = tValentinesDay2018_Text[24479]["Text313"]
tNpcGossip[24479]["Text314"] = tValentinesDay2018_Text[24479]["Text314"]
tNpcGossip[24479]["Text315"] = tValentinesDay2018_Text[24479]["Text315"]
tNpcGossip[24479]["Text316"] = tValentinesDay2018_Text[24479]["Text316"]
tNpcGossip[24479]["tOption3-1"] = {311, 312, 313}
tNpcGossip[24479]["Option311"] = tValentinesDay2018_Text[24479]["Option311"]
tNpcGossip[24479]["OptionFunc311"] = "ValentinesDay2018_UserStealingFlowers</N>24479"
tNpcGossip[24479]["Option312"] = tValentinesDay2018_Text[24479]["Option312"]
tNpcGossip[24479]["OptionFunc312"] = "ValentinesDay2018_UserWaterFlowers</N>24479"
tNpcGossip[24479]["Option313"] = tValentinesDay2018_Text[24479]["Option313"]
-- 催熟鲜花
tNpcGossip[24479]["Text3-2"] = {321, 322, 323, 324, 325, 326}
tNpcGossip[24479]["Text321"] = tValentinesDay2018_Text[24479]["Text321"]
tNpcGossip[24479]["Text322"] = tValentinesDay2018_Text[24479]["Text322"]
tNpcGossip[24479]["Text323"] = tValentinesDay2018_Text[24479]["Text323"]
tNpcGossip[24479]["Text324"] = tValentinesDay2018_Text[24479]["Text324"]
tNpcGossip[24479]["Text325"] = tValentinesDay2018_Text[24479]["Text325"]
tNpcGossip[24479]["Text326"] = tValentinesDay2018_Text[24479]["Text326"]
tNpcGossip[24479]["tOption3-2"] = {321, 322}
tNpcGossip[24479]["Option321"] = tValentinesDay2018_Text[24479]["Option321"]
tNpcGossip[24479]["OptionFunc321"] = "ValentinesDay2018_AccelerateRipening</N>24479"
tNpcGossip[24479]["Option322"] = tValentinesDay2018_Text[24479]["Option322"]

-- 其他菜地
tNpcGossip[24480] = tNpcGossip[24479]
tNpcGossip[24481] = tNpcGossip[24479]
tNpcGossip[24482] = tNpcGossip[24479]
tNpcGossip[24485] = tNpcGossip[24479]
tNpcGossip[24486] = tNpcGossip[24479]
tNpcGossip[24487] = tNpcGossip[24479]
tNpcGossip[24488] = tNpcGossip[24479]
tNpcGossip[24489] = tNpcGossip[24479]
tNpcGossip[24490] = tNpcGossip[24479]
tNpcGossip[24491] = tNpcGossip[24479]
tNpcGossip[24492] = tNpcGossip[24479]
tNpcGossip[24493] = tNpcGossip[24479]
tNpcGossip[24494] = tNpcGossip[24479]
tNpcGossip[24495] = tNpcGossip[24479]
tNpcGossip[24496] = tNpcGossip[24479]
tNpcGossip[24497] = tNpcGossip[24479]
tNpcGossip[24498] = tNpcGossip[24479]
tNpcGossip[24499] = tNpcGossip[24479]
tNpcGossip[24500] = tNpcGossip[24479]
tNpcGossip[24568] = tNpcGossip[24479]
tNpcGossip[24569] = tNpcGossip[24479]
tNpcGossip[24570] = tNpcGossip[24479]
tNpcGossip[24571] = tNpcGossip[24479]
tNpcGossip[24572] = tNpcGossip[24479]
tNpcGossip[24573] = tNpcGossip[24479]
tNpcGossip[24574] = tNpcGossip[24479]
tNpcGossip[24575] = tNpcGossip[24479]
tNpcGossip[24576] = tNpcGossip[24479]
tNpcGossip[24577] = tNpcGossip[24479]
tNpcGossip[24578] = tNpcGossip[24479]
tNpcGossip[24579] = tNpcGossip[24479]
tNpcGossip[24580] = tNpcGossip[24479]
tNpcGossip[24581] = tNpcGossip[24479]
tNpcGossip[24582] = tNpcGossip[24479]
tNpcGossip[24583] = tNpcGossip[24479]
tNpcGossip[24584] = tNpcGossip[24479]
tNpcGossip[24585] = tNpcGossip[24479]
tNpcGossip[24586] = tNpcGossip[24479]
tNpcGossip[24587] = tNpcGossip[24479]
tNpcGossip[24588] = tNpcGossip[24479]
tNpcGossip[24589] = tNpcGossip[24479]
tNpcGossip[24590] = tNpcGossip[24479]
tNpcGossip[24591] = tNpcGossip[24479]
tNpcGossip[24592] = tNpcGossip[24479]
tNpcGossip[24593] = tNpcGossip[24479]
tNpcGossip[24594] = tNpcGossip[24479]
tNpcGossip[24595] = tNpcGossip[24479]
tNpcGossip[24596] = tNpcGossip[24479]
tNpcGossip[24597] = tNpcGossip[24479]
tNpcGossip[24598] = tNpcGossip[24479]
tNpcGossip[24599] = tNpcGossip[24479]
tNpcGossip[24600] = tNpcGossip[24479]
tNpcGossip[24601] = tNpcGossip[24479]
tNpcGossip[24602] = tNpcGossip[24479]
tNpcGossip[24603] = tNpcGossip[24479]
tNpcGossip[24604] = tNpcGossip[24479]
tNpcGossip[24605] = tNpcGossip[24479]
tNpcGossip[24606] = tNpcGossip[24479]
tNpcGossip[24607] = tNpcGossip[24479]
tNpcGossip[24608] = tNpcGossip[24479]
tNpcGossip[24609] = tNpcGossip[24479]
tNpcGossip[24610] = tNpcGossip[24479]
tNpcGossip[24611] = tNpcGossip[24479]
tNpcGossip[24612] = tNpcGossip[24479]
tNpcGossip[24613] = tNpcGossip[24479]
tNpcGossip[24614] = tNpcGossip[24479]
tNpcGossip[24615] = tNpcGossip[24479]
tNpcGossip[24616] = tNpcGossip[24479]
tNpcGossip[24617] = tNpcGossip[24479]
tNpcGossip[24618] = tNpcGossip[24479]
tNpcGossip[24619] = tNpcGossip[24479]
tNpcGossip[24620] = tNpcGossip[24479]
tNpcGossip[24621] = tNpcGossip[24479]
tNpcGossip[24622] = tNpcGossip[24479]
tNpcGossip[24623] = tNpcGossip[24479]
tNpcGossip[24624] = tNpcGossip[24479]
tNpcGossip[24625] = tNpcGossip[24479]
tNpcGossip[24626] = tNpcGossip[24479]
tNpcGossip[24627] = tNpcGossip[24479]
tNpcGossip[24628] = tNpcGossip[24479]
tNpcGossip[24629] = tNpcGossip[24479]
tNpcGossip[24630] = tNpcGossip[24479]
tNpcGossip[24631] = tNpcGossip[24479]
tNpcGossip[24632] = tNpcGossip[24479]
tNpcGossip[24633] = tNpcGossip[24479]
tNpcGossip[24634] = tNpcGossip[24479]
tNpcGossip[24635] = tNpcGossip[24479]
tNpcGossip[24636] = tNpcGossip[24479]
tNpcGossip[24637] = tNpcGossip[24479]


---------------------------------物品部分---------------------------------------------
-- 七夕鲜花券精装包
tItem[3310215] = tItem[3310215] or {}
tItem[3310215]["Function"] = function(nItemId,sItemName)
	ValentinesDay2018_FollowerPackageUse(nItemId)
end
-- 七夕鲜花券豪华包
tItem[3310216] = tItem[3310215]

-- 七夕礼物盒使用
tItem[3310201] = tItem[3310201] or {}
tItem[3310201]["Function"] = function(nItemId,sItemName)
	ValentinesDay2018_ValentinePackageUse(nItemId)
end

-- 魅力成长精装包
tItem[3310202] = tItem[3310202] or {}
tItem[3310202]["Function"] = function(nItemId,sItemName)
	ValentinesDay2018_IncreaseGlamour(nItemId)
end
-- 魅力成长豪华包
tItem[3310203] = tItem[3310202]
-- 魅力成长尊享包
tItem[3310204] = tItem[3310202]
-- 魅力成长王者包
tItem[3310205] = tItem[3310202]
-- 日常魅力成长包
tItem[3310206] = tItem[3310202]

-- 偷花礼盒使用
tItem[3322508] = tItem[3322508] or {}
tItem[3322508]["Function"] = function(nItemId,sItemName)
	ValentinesDay2018_NewFlowerPackageUse(nItemId)
end
tItem[3322509] = tItem[3322508]
tItem[3313298] = tItem[3322508]
tItem[3313299] = tItem[3322508]
tItem[3313300] = tItem[3322508]
tItem[3313301] = tItem[3322508]
tItem[3313302] = tItem[3322508]
tItem[3313303] = tItem[3322508]
tItem[3313304] = tItem[3322508]
tItem[3313305] = tItem[3322508]
tItem[3313306] = tItem[3322508]
tItem[3313307] = tItem[3322508]


-- 神仙精华露
tItem[3310192] = tItem[3310192] or {}
tItem[3310192]["Function"] = function(nItemId,sItemName)
	ValentinesDay2018_PropUse(nItemId)
end
-- 施华洛项链
tItem[3310193] = tItem[3310192]
-- 蒂芙尼钻戒
tItem[3310194] = tItem[3310192]
-- 耐克篮球鞋
tItem[3310195] = tItem[3310192]
-- 迪奥墨镜
tItem[3310196] = tItem[3310192]
-- 爱马仕钱包
tItem[3310197] = tItem[3310192]

-- 精装七夕礼盒
tItem[3310198] = tItem[3310198] or {}
tItem[3310198]["Function"] = function(nItemId,sItemName)
	ValentinesDay2018_ShopPackageUse(nItemId)
end
-- 豪华七夕礼盒
tItem[3310199] = tItem[3310198]
-- 尊享七夕礼盒
tItem[3310200] = tItem[3310198]

-- 坐骑外套礼包
tItem[3310211] = tItem[3310211] or {}
tItem[3310211]["Function"] = function(nItemId,sItemName)
	ValentinesDay2018_ShopClothAndMounts(nItemId)
end
-- 光效时装外套礼包
tItem[3310212] = tItem[3310211]
-- 普通时装外套礼包
tItem[3310213] = tItem[3310211]

-- 1000气力值极运包
tItem[3310210] = tItem[3310211]

-- 鹊仙居宝盒
tItem[3310209] = tItem[3310209] or {}
tItem[3310209]["Function"] = function(nItemId,sItemName)
	ValentinesDay2018_QueEffectPackageUse(nItemId)
end

-- 风流才子冠军礼盒
tItem[3310304] = tItem[3310304] or {}
tItem[3310304]["Function"] = function(nItemId,sItemName)
	ValentinesDay2018_TopRankPackageUse(nItemId)
end
-- 风流才子亚军礼盒
-- 风流才子季军礼盒
-- 风流才子翘楚礼盒
-- 风流才子精英礼盒
-- 红粉佳人冠军礼盒
-- 红粉佳人亚军礼盒
-- 红粉佳人季军礼盒
-- 红粉佳人翘楚礼盒
-- 红粉佳人精英礼盒
-- 魅力男神冠军礼盒
-- 魅力男神亚军礼盒
-- 魅力男神季军礼盒
-- 魅力男神天骄礼盒
-- 魅力男神翘楚礼盒
-- 魅力男神俊杰礼盒
-- 魅力男神精英礼盒
-- 魅力女神冠军礼盒
-- 魅力女神亚军礼盒
-- 魅力女神季军礼盒
-- 魅力女神天骄礼盒
-- 魅力女神翘楚礼盒
-- 魅力女神佳人礼盒
-- 魅力女神精英礼盒
tItem[3310305] = tItem[3310304]
tItem[3310306] = tItem[3310304]
tItem[3310307] = tItem[3310304]
tItem[3310308] = tItem[3310304]
tItem[3310309] = tItem[3310304]
tItem[3310310] = tItem[3310304]
tItem[3310311] = tItem[3310304]
tItem[3310312] = tItem[3310304]
tItem[3310313] = tItem[3310304]
tItem[3310314] = tItem[3310304]
tItem[3310315] = tItem[3310304]
tItem[3310316] = tItem[3310304]
tItem[3310317] = tItem[3310304]
tItem[3310318] = tItem[3310304]
tItem[3310319] = tItem[3310304]
tItem[3310320] = tItem[3310304]
tItem[3310321] = tItem[3310304]
tItem[3310322] = tItem[3310304]
tItem[3310323] = tItem[3310304]
tItem[3310324] = tItem[3310304]
tItem[3310325] = tItem[3310304]
tItem[3310326] = tItem[3310304]
tItem[3310327] = tItem[3310304]

-- 区域人气女神榜首礼盒
tItem[3322466] = tItem[3322466] or {}
tItem[3322466]["Function"] = function(nItemId,sItemName)
	ValentinesDay2018_NewTopRankPackageUse(nItemId)
end
-- 区域人气女神第2名礼盒
-- 区域人气女神第3名礼盒
-- 区域人气女神第4名礼盒
-- 区域人气女神第5名礼盒
-- 全球守护天使冠军礼盒
-- 全球守护天使尊享礼盒
-- 区域守护天使冠军礼盒
-- 区域守护天使尊享礼盒
-- 区域守护天使豪华礼盒
-- 区域守护天使精致礼盒
-- 区域人气男神榜首礼盒
-- 区域人气男神第2名礼盒
-- 区域人气男神第3名礼盒
-- 区域人气男神第4名礼盒
-- 区域人气男神第5名礼盒
tItem[3322467] = tItem[3322466]
tItem[3322468] = tItem[3322466]
tItem[3322469] = tItem[3322466]
tItem[3322470] = tItem[3322466]
tItem[3322471] = tItem[3322466]
tItem[3322472] = tItem[3322466]
tItem[3322473] = tItem[3322466]
tItem[3322474] = tItem[3322466]
tItem[3322475] = tItem[3322466]
tItem[3322476] = tItem[3322466]
tItem[3322503] = tItem[3322466]
tItem[3322504] = tItem[3322466]
tItem[3322505] = tItem[3322466]
tItem[3322506] = tItem[3322466]
tItem[3322507] = tItem[3322466]

-- 征服环球小姐冠军礼盒
-- 区域人气女神榜首礼盒
-- 征服环球小姐亚军礼盒
-- 征服环球小姐季军礼盒
-- 征服环球先生冠军礼盒
-- 征服环球先生亚军礼盒
-- 征服环球先生季军礼盒
tItem[3322463] = tItem[3322466]
tItem[3322464] = tItem[3322466]
tItem[3322465] = tItem[3322466]
tItem[3322500] = tItem[3322466]
tItem[3322501] = tItem[3322466]
tItem[3322502] = tItem[3322466]

-- 女神冠军光环道具
tItem[3322668] = tItem[3322668] or {}
tItem[3322668]["Function"] = function(nItemId,sItemName)
	ValentinesDay2018_NewTheWorldPackage(nItemId)
end
-- 女神亚军光环道具
-- 女神季军光环道具
-- 男神冠军光环道具
-- 男神亚军光环道具
-- 男神季军光环道具
tItem[3322669] = tItem[3322668]
tItem[3322670] = tItem[3322668]
tItem[3322671] = tItem[3322668]
tItem[3322672] = tItem[3322668]
tItem[3322673] = tItem[3322668]

-- 1年光效武器可选包
tItemFace[3313308] = 2450
tItem[3313308] = tItem[3313308] or {}
tItem[3313308]["Text1-1"] = {111}
tItem[3313308]["Text111"] = tValentinesDay2018_Text[3313308]["Text111"]
tItem[3313308]["tOption1-1"] = {111, 112}
tItem[3313308]["Option111"] = tValentinesDay2018_Text[3313308]["Option111"]
tItem[3313308]["OptionFunc111"] = "ValentinesDay2018_WeaponPackageChoose</N>3313308</N>1"
tItem[3313308]["Option112"] = tValentinesDay2018_Text[3313308]["Option112"]
tItem[3313308]["OptionFunc112"] = "ValentinesDay2018_WeaponPackageChoose</N>3313308</N>2"

-- 15天光效武器可选包
tItemFace[3313309] = 798
tItem[3313309] = tItem[3313309] or {}
tItem[3313309]["Text1-1"] = {111}
tItem[3313309]["Text111"] = tValentinesDay2018_Text[3313309]["Text111"]
tItem[3313309]["tOption1-1"] = {111, 112}
tItem[3313309]["Option111"] = tValentinesDay2018_Text[3313309]["Option111"]
tItem[3313309]["OptionFunc111"] = "ValentinesDay2018_WeaponPackageChoose</N>3313309</N>1"
tItem[3313309]["Option112"] = tValentinesDay2018_Text[3313309]["Option112"]
tItem[3313309]["OptionFunc112"] = "ValentinesDay2018_WeaponPackageChoose</N>3313309</N>2"

-- 7天光效武器可选包
tItemFace[3313310] = 873
tItem[3313310] = tItem[3313310] or {}
tItem[3313310]["Text1-1"] = {111}
tItem[3313310]["Text111"] = tValentinesDay2018_Text[3313310]["Text111"]
tItem[3313310]["tOption1-1"] = {111, 112}
tItem[3313310]["Option111"] = tValentinesDay2018_Text[3313310]["Option111"]
tItem[3313310]["OptionFunc111"] = "ValentinesDay2018_WeaponPackageChoose</N>3313310</N>1"
tItem[3313310]["Option112"] = tValentinesDay2018_Text[3313310]["Option112"]
tItem[3313310]["OptionFunc112"] = "ValentinesDay2018_WeaponPackageChoose</N>3313310</N>2"

-- 30天时效无光效武器外套可选包
tItemFace[3322678] = 2451
tItem[3322678] = tItem[3322678] or {}
tItem[3322678]["Text1-1"] = {111}
tItem[3322678]["Text111"] = tValentinesDay2018_Text[3322678]["Text111"]
tItem[3322678]["tOption1-1"] = {111, 112}
tItem[3322678]["Option111"] = tValentinesDay2018_Text[3322678]["Option111"]
tItem[3322678]["OptionFunc111"] = "ValentinesDay2018_WeaponPackageChoose</N>3322678</N>1"
tItem[3322678]["Option112"] = tValentinesDay2018_Text[3322678]["Option112"]
tItem[3322678]["OptionFunc112"] = "ValentinesDay2018_WeaponPackageChoose</N>3322678</N>2"

-- 30天时效光效武器外套可选包
tItemFace[3322679] = 2451
tItem[3322679] = tItem[3322679] or {}
tItem[3322679]["Text1-1"] = {111}
tItem[3322679]["Text111"] = tValentinesDay2018_Text[3322679]["Text111"]
tItem[3322679]["tOption1-1"] = {111, 112}
tItem[3322679]["Option111"] = tValentinesDay2018_Text[3322679]["Option111"]
tItem[3322679]["OptionFunc111"] = "ValentinesDay2018_WeaponPackageChoose</N>3322679</N>1"
tItem[3322679]["Option112"] = tValentinesDay2018_Text[3322679]["Option112"]
tItem[3322679]["OptionFunc112"] = "ValentinesDay2018_WeaponPackageChoose</N>3322679</N>2"

-- 花仙精灵
tItemFace[3322680] = 2445
tItem[3322680] = tItem[3322680] or {}
tItem[3322680]["Function"] = function(nItemId,sItemName)
	-- 判断时间
	if not Sys_ChkFullTime(tValentinesDay2018_Data["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentinesDay2018_Text["SysTalk"]["TipsTimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentinesDay2018_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	local nMapId = tValentinesDay2018_Data["Map"]["Garden"]["MapId"]
	-- 判断是否在花仙阁内
	local nNpcId = 24477
	if not (Get_UserMapId() == nMapId) then
		NpcPosition_PathFind(nNpcId)
		return
	end
	LinkItemGossipFunc_New(nItemId, "1-1")
end
tItem[3322680]["Text1-1"] = {111}
tItem[3322680]["Text111"] = tValentinesDay2018_Text[3322680]["Text111"]
tItem[3322680]["tOption1-1"] = {111, 112}
tItem[3322680]["Option111"] = tValentinesDay2018_Text[3322680]["Option111"]
tItem[3322680]["OptionFunc111"] = "ValentinesDay2018_FindSelfFlower</N>3322680"
tItem[3322680]["Option112"] = tValentinesDay2018_Text[3322680]["Option112"]
tItem[3322680]["OptionFunc112"] = "ValentinesDay2018_ReturnCityMove"


-- 光效坐骑外套包
tItem[3322674] = tItem[3322674] or {}
tItem[3322674]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tValentinesDay2018_New_Reward[nItemId])
end
tItem[3322675] = tItem[3322674]
tItem[3322676] = tItem[3322674]
tItem[3322677] = tItem[3322674]
tItem[3322745] = tItem[3322674]
tItem[3322783] = tItem[3322674]

-- 魅力金云碎片
tItemFace[3310207] = 1588
tItem[3310207] = tItem[3310207] or {}
tItem[3310207]["Function"] = function(nItemId,sItemName)
	ValentinesDay2018_TipsTimeChk(nItemId)
end
tItem[3310207]["Text1-1"] = {111}
tItem[3310207]["Text111"] = tValentinesDay2018_Text[3310207]["Text111"]
tItem[3310207]["tOption1-1"] = {111, 112, 113}
tItem[3310207]["Option111"] = tValentinesDay2018_Text[3310207]["Option111"]
tItem[3310207]["OptionFunc111"] = "ValentinesDay2018_TipsArtifice</N>3310207"
tItem[3310207]["Option112"] = tValentinesDay2018_Text[3310207]["Option112"]
tItem[3310207]["OptionFunc112"] = "ValentinesDay2018_TipsSynthesis</N>3310207"
tItem[3310207]["Option113"] = tValentinesDay2018_Text[3310207]["Option113"]
tItem[3310207]["OptionPoint113"] = "4-1"
-- 【成功炼化】
tItem[3310207]["Text2-1"] = {211}
tItem[3310207]["Text211"] = tValentinesDay2018_Text[3310207]["Text211"]
tItem[3310207]["tOption2-1"] = {211}
tItem[3310207]["Option211"] = tValentinesDay2018_Text[3310207]["Option211"]
tItem[3310207]["OptionFunc211"] = "ValentinesDay2018_TipsChk</N>3310207"
-- 【碎片消失】
tItem[3310207]["Text2-2"] = {221}
tItem[3310207]["Text221"] = tValentinesDay2018_Text[3310207]["Text221"]
tItem[3310207]["tOption2-2"] = {221}
tItem[3310207]["Option221"] = tValentinesDay2018_Text[3310207]["Option221"]
tItem[3310207]["OptionFunc221"] = "ValentinesDay2018_TipsChk</N>3310207"
-- 【炼化失败，包裹中没有碎片】
tItem[3310207]["Text2-3"] = {231}
tItem[3310207]["Text231"] = tValentinesDay2018_Text[3310207]["Text231"]
tItem[3310207]["tOption2-3"] = {231}
tItem[3310207]["Option231"] = tValentinesDay2018_Text[3310207]["Option231"]
-- 【合成失败，包裹中没有足够碎片】
tItem[3310207]["Text3-1"] = {311}
tItem[3310207]["Text311"] = tValentinesDay2018_Text[3310207]["Text311"]
tItem[3310207]["tOption3-1"] = {311}
tItem[3310207]["Option311"] = tValentinesDay2018_Text[3310207]["Option311"]
tItem[3310207]["OptionFunc311"] = "ValentinesDay2018_TipsChk</N>3310207"
-- 兑换500气力值
tItem[3310207]["Text4-1"] = {411}
tItem[3310207]["Text411"] = tValentinesDay2018_Text[3310207]["Text411"]
tItem[3310207]["tOption4-1"] = {411, 412}
tItem[3310207]["Option411"] = tValentinesDay2018_Text[3310207]["Option411"]
tItem[3310207]["OptionFunc411"] = "ValentinesDay2018_TipsExchange</N>3310207</N>1"
tItem[3310207]["Option412"] = tValentinesDay2018_Text[3310207]["Option412"]
tItem[3310207]["OptionFunc412"] = "ValentinesDay2018_TipsExchange</N>3310207</N>2"
-- 【兑换失败，背包中没有碎片】
tItem[3310207]["Text4-2"] = {421}
tItem[3310207]["Text421"] = tValentinesDay2018_Text[3310207]["Text421"]
tItem[3310207]["tOption4-2"] = {421}
tItem[3310207]["Option421"] = tValentinesDay2018_Text[3310207]["Option421"]


-- 鹊仙居奇珍收纳袋
tItemFace[3310214] = 1587
tItem[3310214] = tItem[3310214] or {}
tItem[3310214]["Function"] = function(nItemId,sItemName)
	ValentinesDay2018_MagpiePackageTimeChk(nItemId)
end
-- 第一页
tItem[3310214]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125}
tItem[3310214]["Text111"] = tValentinesDay2018_Text[3310214]["Text111"]
tItem[3310214]["Text112"] = tValentinesDay2018_Text[3310214]["Text112"]
tItem[3310214]["Text113"] = tValentinesDay2018_Text[3310214]["Text113"]
tItem[3310214]["Text114"] = tValentinesDay2018_Text[3310214]["Text114"]
tItem[3310214]["Text115"] = tValentinesDay2018_Text[3310214]["Text115"]
tItem[3310214]["Text116"] = tValentinesDay2018_Text[3310214]["Text116"]
tItem[3310214]["Text117"] = tValentinesDay2018_Text[3310214]["Text117"]
tItem[3310214]["Text118"] = tValentinesDay2018_Text[3310214]["Text118"]
tItem[3310214]["Text119"] = tValentinesDay2018_Text[3310214]["Text119"]
tItem[3310214]["Text120"] = tValentinesDay2018_Text[3310214]["Text120"]
tItem[3310214]["Text121"] = tValentinesDay2018_Text[3310214]["Text121"]
tItem[3310214]["Text122"] = tValentinesDay2018_Text[3310214]["Text122"]
tItem[3310214]["Text123"] = tValentinesDay2018_Text[3310214]["Text123"]
tItem[3310214]["Text124"] = tValentinesDay2018_Text[3310214]["Text124"]
tItem[3310214]["Text125"] = tValentinesDay2018_Text[3310214]["Text125"]
tItem[3310214]["ChkFunc1-1"] = function()
	tItem[3310214]["Text111"] = string.format(tValentinesDay2018_Text[3310214]["Text111"], Get_UserName())
	-- 已放置奇珍赋值  1
	local nIndex = 113
	for i = 1, 10 do
		-- 已放置奇珍数量
		local nEffectNum = ValentinesDay2018_GetEffectNum(i)
		-- 已拥有奇珍数量
		local nChkEffectType = tValentinesDay2018_Effect["EffectNum"][i]["EffectType"]
		local nEffectSign = tValentinesDay2018_Effect["EffectNum"][i]["EffectSign"]
		local nHaveEffectEvent = tValentinesDay2018_Effect["CollectionStc"][nChkEffectType][nEffectSign]["Event"]
		local nHaveEffectData = tValentinesDay2018_Effect["CollectionStc"][nChkEffectType][nEffectSign]["Data"]
		local nHaveEffectNum = Get_UserStatisticValue(nHaveEffectEvent, nHaveEffectData)
		if (nHaveEffectNum > 0 and nHaveEffectNum < 10) then
			tItem[3310214]["Text" .. nIndex + i] = string.format(tValentinesDay2018_Text[3310214]["Text" .. nIndex + i], "", tostring(" " .. nHaveEffectNum), nEffectNum, "")
		elseif (nHaveEffectNum >= 10) then
			tItem[3310214]["Text" .. nIndex + i] = string.format(tValentinesDay2018_Text[3310214]["Text" .. nIndex + i], "", nHaveEffectNum, nEffectNum, "")
		elseif (nEffectNum > 0) then
			tItem[3310214]["Text" .. nIndex + i] = string.format(tValentinesDay2018_Text[3310214]["Text" .. nIndex + i], "", tostring(" " .. 0), nEffectNum, "")
		else
			tItem[3310214]["Text" .. nIndex + i] = string.format(tValentinesDay2018_Text[3310214]["Text" .. nIndex + i], tValentinesDay2018_Text["Dialog"]["GrayTipBegin"], tostring(" " .. 0), 0, tValentinesDay2018_Text["Dialog"]["GrayTipEnd"])
		end
	end
	return true
end
tItem[3310214]["tOption1-1"] = {111, 112, 114, 113}
tItem[3310214]["Option111"] = tValentinesDay2018_Text[3310214]["Option111"]
tItem[3310214]["OptionFunc111"] = "ValentinesDay2018_ChkAllHaveEffect</N>3310214"
-- tItem[3310214]["OptionPoint111"] = "4-1"
tItem[3310214]["Option112"] = tValentinesDay2018_Text[3310214]["Option112"]
tItem[3310214]["OptionFunc112"] = "ValentinesDay2018_RecoveryAllEffectChk</N>3310214"
-- tItem[3310214]["OptionPoint112"] = "6-1"
tItem[3310214]["Option113"] = tValentinesDay2018_Text[3310214]["Option113"]
tItem[3310214]["OptionPoint113"] = "2-1"
tItem[3310214]["Option114"] = tValentinesDay2018_Text[3310214]["Option114"]
tItem[3310214]["OptionChkFunc114"] = function()
	-- 判断是否在鹊仙居使用
	if not (Get_MapDoc() == tValentinesDay2018_Data["Map"]["MapDoc"]) then
		return false
	end
	return true
end
tItem[3310214]["OptionFunc114"] = "tValentinesDay2018_TrapMove"

-- 第二页
tItem[3310214]["Text2-1"] = {211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225}
tItem[3310214]["Text211"] = tValentinesDay2018_Text[3310214]["Text211"]
tItem[3310214]["Text212"] = tValentinesDay2018_Text[3310214]["Text212"]
tItem[3310214]["Text213"] = tValentinesDay2018_Text[3310214]["Text213"]
tItem[3310214]["Text214"] = tValentinesDay2018_Text[3310214]["Text214"]
tItem[3310214]["Text215"] = tValentinesDay2018_Text[3310214]["Text215"]
tItem[3310214]["Text216"] = tValentinesDay2018_Text[3310214]["Text216"]
tItem[3310214]["Text217"] = tValentinesDay2018_Text[3310214]["Text217"]
tItem[3310214]["Text218"] = tValentinesDay2018_Text[3310214]["Text218"]
tItem[3310214]["Text219"] = tValentinesDay2018_Text[3310214]["Text219"]
tItem[3310214]["Text220"] = tValentinesDay2018_Text[3310214]["Text220"]
tItem[3310214]["Text221"] = tValentinesDay2018_Text[3310214]["Text221"]
tItem[3310214]["Text222"] = tValentinesDay2018_Text[3310214]["Text222"]
tItem[3310214]["Text223"] = tValentinesDay2018_Text[3310214]["Text223"]
tItem[3310214]["Text224"] = tValentinesDay2018_Text[3310214]["Text224"]
tItem[3310214]["Text225"] = tValentinesDay2018_Text[3310214]["Text225"]
tItem[3310214]["ChkFunc2-1"] = function()
	tItem[3310214]["Text211"] = string.format(tValentinesDay2018_Text[3310214]["Text211"], Get_UserName())
	-- 已放置奇珍赋值  2
	local nIndex = 213
	for i = 11, 20 do
		-- 已放置奇珍数量
		local nEffectNum = ValentinesDay2018_GetEffectNum(i)
		-- 已拥有奇珍数量
		local nChkEffectType = tValentinesDay2018_Effect["EffectNum"][i]["EffectType"]
		local nEffectSign = tValentinesDay2018_Effect["EffectNum"][i]["EffectSign"]
		local nHaveEffectEvent = tValentinesDay2018_Effect["CollectionStc"][nChkEffectType][nEffectSign]["Event"]
		local nHaveEffectData = tValentinesDay2018_Effect["CollectionStc"][nChkEffectType][nEffectSign]["Data"]
		local nHaveEffectNum = Get_UserStatisticValue(nHaveEffectEvent, nHaveEffectData)
		if (nHaveEffectNum > 0 and nHaveEffectNum < 10) then
			tItem[3310214]["Text" .. nIndex + i - 10] = string.format(tValentinesDay2018_Text[3310214]["Text" .. nIndex + i - 10], "", tostring(" " .. nHaveEffectNum), nEffectNum, "")
		elseif (nHaveEffectNum >= 10) then
			tItem[3310214]["Text" .. nIndex + i - 10] = string.format(tValentinesDay2018_Text[3310214]["Text" .. nIndex + i - 10], "", nHaveEffectNum, nEffectNum, "")
		elseif (nEffectNum > 0) then
			tItem[3310214]["Text" .. nIndex + i - 10] = string.format(tValentinesDay2018_Text[3310214]["Text" .. nIndex + i - 10], "", tostring(" " .. 0), nEffectNum, "")
		else
			tItem[3310214]["Text" .. nIndex + i - 10] = string.format(tValentinesDay2018_Text[3310214]["Text" .. nIndex + i - 10], tValentinesDay2018_Text["Dialog"]["GrayTipBegin"], tostring(" " .. 0), 0, tValentinesDay2018_Text["Dialog"]["GrayTipEnd"])
		end
	end
	return true
end
tItem[3310214]["tOption2-1"] = {211, 212, 213, 214}
tItem[3310214]["Option211"] = tValentinesDay2018_Text[3310214]["Option211"]
tItem[3310214]["OptionPoint211"] = "4-1"
tItem[3310214]["Option212"] = tValentinesDay2018_Text[3310214]["Option212"]
tItem[3310214]["OptionPoint212"] = "6-1"
tItem[3310214]["Option213"] = tValentinesDay2018_Text[3310214]["Option213"]
tItem[3310214]["OptionPoint213"] = "3-1"
tItem[3310214]["Option214"] = tValentinesDay2018_Text[3310214]["Option214"]
tItem[3310214]["OptionPoint214"] = "1-1"
-- 第三页
tItem[3310214]["Text3-1"] = {311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325}
tItem[3310214]["Text311"] = tValentinesDay2018_Text[3310214]["Text311"]
tItem[3310214]["Text312"] = tValentinesDay2018_Text[3310214]["Text312"]
tItem[3310214]["Text313"] = tValentinesDay2018_Text[3310214]["Text313"]
tItem[3310214]["Text314"] = tValentinesDay2018_Text[3310214]["Text314"]
tItem[3310214]["Text315"] = tValentinesDay2018_Text[3310214]["Text315"]
tItem[3310214]["Text316"] = tValentinesDay2018_Text[3310214]["Text316"]
tItem[3310214]["Text317"] = tValentinesDay2018_Text[3310214]["Text317"]
tItem[3310214]["Text318"] = tValentinesDay2018_Text[3310214]["Text318"]
tItem[3310214]["Text319"] = tValentinesDay2018_Text[3310214]["Text319"]
tItem[3310214]["Text320"] = tValentinesDay2018_Text[3310214]["Text320"]
tItem[3310214]["Text321"] = tValentinesDay2018_Text[3310214]["Text321"]
tItem[3310214]["Text322"] = tValentinesDay2018_Text[3310214]["Text322"]
tItem[3310214]["Text323"] = tValentinesDay2018_Text[3310214]["Text323"]
tItem[3310214]["Text324"] = tValentinesDay2018_Text[3310214]["Text324"]
tItem[3310214]["Text325"] = tValentinesDay2018_Text[3310214]["Text325"]
tItem[3310214]["ChkFunc3-1"] = function()
	tItem[3310214]["Text311"] = string.format(tValentinesDay2018_Text[3310214]["Text311"], Get_UserName())
	-- 已放置奇珍赋值  3
	local nIndex = 313
	for i = 21, 27 do
		-- 已放置奇珍数量
		local nEffectNum = ValentinesDay2018_GetEffectNum(i)
		-- 已拥有奇珍数量
		local nChkEffectType = tValentinesDay2018_Effect["EffectNum"][i]["EffectType"]
		local nEffectSign = tValentinesDay2018_Effect["EffectNum"][i]["EffectSign"]
		local nHaveEffectEvent = tValentinesDay2018_Effect["CollectionStc"][nChkEffectType][nEffectSign]["Event"]
		local nHaveEffectData = tValentinesDay2018_Effect["CollectionStc"][nChkEffectType][nEffectSign]["Data"]
		local nHaveEffectNum = Get_UserStatisticValue(nHaveEffectEvent, nHaveEffectData)
		if (nHaveEffectNum > 0 and nHaveEffectNum < 10) then
			tItem[3310214]["Text" .. nIndex + i - 20] = string.format(tValentinesDay2018_Text[3310214]["Text" .. nIndex + i - 20], "", tostring(" " .. nHaveEffectNum), nEffectNum, "")
		elseif (nHaveEffectNum >= 10) then
			tItem[3310214]["Text" .. nIndex + i - 20] = string.format(tValentinesDay2018_Text[3310214]["Text" .. nIndex + i - 20], "", nHaveEffectNum, nEffectNum, "")
		elseif (nEffectNum > 0) then
			tItem[3310214]["Text" .. nIndex + i - 20] = string.format(tValentinesDay2018_Text[3310214]["Text" .. nIndex + i - 20], "", tostring(" " .. 0), nEffectNum, "")
		else
			tItem[3310214]["Text" .. nIndex + i - 20] = string.format(tValentinesDay2018_Text[3310214]["Text" .. nIndex + i - 20], tValentinesDay2018_Text["Dialog"]["GrayTipBegin"], tostring(" " .. 0), 0, tValentinesDay2018_Text["Dialog"]["GrayTipEnd"])
		end
	end
	return true
end
tItem[3310214]["tOption3-1"] = {311, 312, 313}
tItem[3310214]["Option311"] = tValentinesDay2018_Text[3310214]["Option311"]
tItem[3310214]["OptionPoint311"] = "4-1"
tItem[3310214]["Option312"] = tValentinesDay2018_Text[3310214]["Option312"]
tItem[3310214]["OptionPoint312"] = "6-1"
tItem[3310214]["Option313"] = tValentinesDay2018_Text[3310214]["Option313"]
tItem[3310214]["OptionPoint313"] = "2-1"

-- 放置珍宝
tItem[3310214]["Text4-1"] = {411}
tItem[3310214]["Text411"] = tValentinesDay2018_Text[3310214]["Text411"]
tItem[3310214]["tOption4-1"] = {411, 412, 413, 414, 415}
tItem[3310214]["Option411"] = tValentinesDay2018_Text[3310214]["Option411"]
tItem[3310214]["OptionFunc411"] = "ValentinesDay2018_ChkHaveEffect</N>3310214</N>1" -- 奇珍判断 花草
tItem[3310214]["Option412"] = tValentinesDay2018_Text[3310214]["Option412"]
tItem[3310214]["OptionFunc412"] = "ValentinesDay2018_ChkHaveEffect</N>3310214</N>2" -- 奇珍判断 气球
tItem[3310214]["Option413"] = tValentinesDay2018_Text[3310214]["Option413"]
tItem[3310214]["OptionFunc413"] = "ValentinesDay2018_ChkHaveEffect</N>3310214</N>3" -- 奇珍判断 流光
tItem[3310214]["Option414"] = tValentinesDay2018_Text[3310214]["Option414"]
tItem[3310214]["OptionFunc414"] = "ValentinesDay2018_ChkHaveEffect</N>3310214</N>4" -- 奇珍判断 炫影
tItem[3310214]["Option415"] = tValentinesDay2018_Text[3310214]["Option415"]
tItem[3310214]["OptionPoint415"] = "1-1"

-- 【接1-1、成功、选择奇珍】
tItem[3310214]["Text5-1"] = {511, 512, 513, 514, 515, 516, 517, 518}
tItem[3310214]["Text511"] = tValentinesDay2018_Text[3310214]["Text511"]
tItem[3310214]["Text512"] = tValentinesDay2018_Text[3310214]["Text512"]
tItem[3310214]["Text513"] = tValentinesDay2018_Text[3310214]["Text513"]
tItem[3310214]["Text514"] = tValentinesDay2018_Text[3310214]["Text514"]
tItem[3310214]["Text515"] = tValentinesDay2018_Text[3310214]["Text515"]
tItem[3310214]["Text516"] = tValentinesDay2018_Text[3310214]["Text516"]
tItem[3310214]["Text517"] = tValentinesDay2018_Text[3310214]["Text517"]
tItem[3310214]["Text518"] = tValentinesDay2018_Text[3310214]["Text518"]
tItem[3310214]["ChkFunc5-1"] = function()
	-- 拥有奇珍赋值  1
	for i = 1, #tValentinesDay2018_Effect["CollectionStc"][1] do
		local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][1][i]["Event"]
		local nEffectData = tValentinesDay2018_Effect["CollectionStc"][1][i]["Data"]
		local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
		if nEffectNum > 0 then
			tItem[3310214]["Text51" .. i + 3] = string.format(tValentinesDay2018_Text[3310214]["Text51" .. i + 3], "", nEffectNum, "")
		else
			tItem[3310214]["Text51" .. i + 3] = string.format(tValentinesDay2018_Text[3310214]["Text51" .. i + 3], tValentinesDay2018_Text["Dialog"]["GrayTipBegin"], 0, tValentinesDay2018_Text["Dialog"]["GrayTipEnd"])
		end
	end
	return true
end
tItem[3310214]["tOption5-1"] = {511, 512, 513, 514, 515}
tItem[3310214]["Option511"] = tValentinesDay2018_Text[3310214]["Option511"]
tItem[3310214]["OptionChkFunc511"] = function()
	local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][1][1]["Event"]
	local nEffectData = tValentinesDay2018_Effect["CollectionStc"][1][1]["Data"]
	local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc511"] = "ValentinesDay2018_BestowTheEffectChk</N>3310214</N>1</N>1" -- 奇珍放置 点点绿意
tItem[3310214]["Option512"] = tValentinesDay2018_Text[3310214]["Option512"]
tItem[3310214]["OptionChkFunc512"] = function()
	local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][1][2]["Event"]
	local nEffectData = tValentinesDay2018_Effect["CollectionStc"][1][2]["Data"]
	local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc512"] = "ValentinesDay2018_BestowTheEffectChk</N>3310214</N>1</N>2" -- 奇珍放置 点点紫意
tItem[3310214]["Option513"] = tValentinesDay2018_Text[3310214]["Option513"]
tItem[3310214]["OptionChkFunc513"] = function()
	local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][1][3]["Event"]
	local nEffectData = tValentinesDay2018_Effect["CollectionStc"][1][3]["Data"]
	local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc513"] = "ValentinesDay2018_BestowTheEffectChk</N>3310214</N>1</N>3" -- 奇珍放置 点点粉意
tItem[3310214]["Option514"] = tValentinesDay2018_Text[3310214]["Option514"]
tItem[3310214]["OptionChkFunc514"] = function()
	local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][1][4]["Event"]
	local nEffectData = tValentinesDay2018_Effect["CollectionStc"][1][4]["Data"]
	local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc514"] = "ValentinesDay2018_BestowTheEffectChk</N>3310214</N>1</N>4" -- 奇珍放置 点点蓝意
tItem[3310214]["Option515"] = tValentinesDay2018_Text[3310214]["Option515"]
tItem[3310214]["OptionPoint515"] = "4-1"
-- 【接1-2、成功、选择奇珍】
tItem[3310214]["Text5-2"] = {521, 522, 523, 524, 525, 526, 527}
tItem[3310214]["Text521"] = tValentinesDay2018_Text[3310214]["Text521"]
tItem[3310214]["Text522"] = tValentinesDay2018_Text[3310214]["Text522"]
tItem[3310214]["Text523"] = tValentinesDay2018_Text[3310214]["Text523"]
tItem[3310214]["Text524"] = tValentinesDay2018_Text[3310214]["Text524"]
tItem[3310214]["Text525"] = tValentinesDay2018_Text[3310214]["Text525"]
tItem[3310214]["Text526"] = tValentinesDay2018_Text[3310214]["Text526"]
tItem[3310214]["Text527"] = tValentinesDay2018_Text[3310214]["Text527"]
tItem[3310214]["ChkFunc5-2"] = function()
	-- 拥有奇珍赋值  2
	for i = 1, #tValentinesDay2018_Effect["CollectionStc"][2] do
		local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][2][i]["Event"]
		local nEffectData = tValentinesDay2018_Effect["CollectionStc"][2][i]["Data"]
		local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
		if nEffectNum > 0 then
			tItem[3310214]["Text52" .. i + 3] = string.format(tValentinesDay2018_Text[3310214]["Text52" .. i + 3], "", nEffectNum, "")
		else
			tItem[3310214]["Text52" .. i + 3] = string.format(tValentinesDay2018_Text[3310214]["Text52" .. i + 3], tValentinesDay2018_Text["Dialog"]["GrayTipBegin"], 0, tValentinesDay2018_Text["Dialog"]["GrayTipEnd"])
		end
	end
	return true
end
tItem[3310214]["tOption5-2"] = {521, 522, 523, 524}
tItem[3310214]["Option521"] = tValentinesDay2018_Text[3310214]["Option521"]
tItem[3310214]["OptionChkFunc521"] = function()
	local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][2][1]["Event"]
	local nEffectData = tValentinesDay2018_Effect["CollectionStc"][2][1]["Data"]
	local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc521"] = "ValentinesDay2018_BestowTheEffectChk</N>3310214</N>2</N>1" -- 奇珍放置 微笑气球
tItem[3310214]["Option522"] = tValentinesDay2018_Text[3310214]["Option522"]
tItem[3310214]["OptionChkFunc522"] = function()
	local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][2][2]["Event"]
	local nEffectData = tValentinesDay2018_Effect["CollectionStc"][2][2]["Data"]
	local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc522"] = "ValentinesDay2018_BestowTheEffectChk</N>3310214</N>2</N>2" -- 奇珍放置 爱心气球
tItem[3310214]["Option523"] = tValentinesDay2018_Text[3310214]["Option523"]
tItem[3310214]["OptionChkFunc523"] = function()
	local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][2][3]["Event"]
	local nEffectData = tValentinesDay2018_Effect["CollectionStc"][2][3]["Data"]
	local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc523"] = "ValentinesDay2018_BestowTheEffectChk</N>3310214</N>2</N>3" -- 奇珍放置 星星气球
tItem[3310214]["Option524"] = tValentinesDay2018_Text[3310214]["Option524"]
tItem[3310214]["OptionPoint524"] = "4-1"
-- 【接1-3、成功、选择奇珍】
tItem[3310214]["Text5-3"] = {531, 532, 533, 534, 535, 536, 537, 538, 539, 5310, 5311, 5312, 5313, 5314}
tItem[3310214]["Text531"]  = tValentinesDay2018_Text[3310214]["Text531"]
tItem[3310214]["Text532"]  = tValentinesDay2018_Text[3310214]["Text532"]
tItem[3310214]["Text533"]  = tValentinesDay2018_Text[3310214]["Text533"]
tItem[3310214]["Text534"]  = tValentinesDay2018_Text[3310214]["Text534"]
tItem[3310214]["Text535"]  = tValentinesDay2018_Text[3310214]["Text535"]
tItem[3310214]["Text536"]  = tValentinesDay2018_Text[3310214]["Text536"]
tItem[3310214]["Text537"]  = tValentinesDay2018_Text[3310214]["Text537"]
tItem[3310214]["Text538"]  = tValentinesDay2018_Text[3310214]["Text538"]
tItem[3310214]["Text539"]  = tValentinesDay2018_Text[3310214]["Text539"]
tItem[3310214]["Text5310"] = tValentinesDay2018_Text[3310214]["Text5310"]
tItem[3310214]["Text5311"] = tValentinesDay2018_Text[3310214]["Text5311"]
tItem[3310214]["Text5312"] = tValentinesDay2018_Text[3310214]["Text5312"]
tItem[3310214]["Text5313"] = tValentinesDay2018_Text[3310214]["Text5313"]
tItem[3310214]["Text5314"] = tValentinesDay2018_Text[3310214]["Text5314"]
tItem[3310214]["ChkFunc5-3"] = function()
	-- 拥有奇珍赋值  3
	for i = 1, #tValentinesDay2018_Effect["CollectionStc"][3] do
		local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][3][i]["Event"]
		local nEffectData = tValentinesDay2018_Effect["CollectionStc"][3][i]["Data"]
		local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
		if nEffectNum > 0 then
			tItem[3310214]["Text53" .. i + 3] = string.format(tValentinesDay2018_Text[3310214]["Text53" .. i + 3], "", nEffectNum, "")
		else
			tItem[3310214]["Text53" .. i + 3] = string.format(tValentinesDay2018_Text[3310214]["Text53" .. i + 3], tValentinesDay2018_Text["Dialog"]["GrayTipBegin"], 0, tValentinesDay2018_Text["Dialog"]["GrayTipEnd"])
		end
	end
	return true
end
tItem[3310214]["tOption5-3"] = {531, 532, 533, 534, 535, 536, 537, 538, 539, 5310, 5311}
tItem[3310214]["Option531"] = tValentinesDay2018_Text[3310214]["Option531"]
tItem[3310214]["OptionChkFunc531"] = function()
	local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][3][1]["Event"]
	local nEffectData = tValentinesDay2018_Effect["CollectionStc"][3][1]["Data"]
	local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc531"] = "ValentinesDay2018_BestowTheEffectChk</N>3310214</N>3</N>1" -- 奇珍放置 百年好合
tItem[3310214]["Option532"] = tValentinesDay2018_Text[3310214]["Option532"]
tItem[3310214]["OptionChkFunc532"] = function()
	local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][3][2]["Event"]
	local nEffectData = tValentinesDay2018_Effect["CollectionStc"][3][2]["Data"]
	local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc532"] = "ValentinesDay2018_BestowTheEffectChk</N>3310214</N>3</N>2" -- 奇珍放置 飞花弄蝶
tItem[3310214]["Option533"] = tValentinesDay2018_Text[3310214]["Option533"]
tItem[3310214]["OptionChkFunc533"] = function()
	local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][3][3]["Event"]
	local nEffectData = tValentinesDay2018_Effect["CollectionStc"][3][3]["Data"]
	local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc533"] = "ValentinesDay2018_BestowTheEffectChk</N>3310214</N>3</N>3" -- 奇珍放置 粉蝶翩跹
tItem[3310214]["Option534"] = tValentinesDay2018_Text[3310214]["Option534"]
tItem[3310214]["OptionChkFunc534"] = function()
	local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][3][4]["Event"]
	local nEffectData = tValentinesDay2018_Effect["CollectionStc"][3][4]["Data"]
	local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc534"] = "ValentinesDay2018_BestowTheEffectChk</N>3310214</N>3</N>4" -- 奇珍放置 梦幻鹿影
tItem[3310214]["Option535"] = tValentinesDay2018_Text[3310214]["Option535"]
tItem[3310214]["OptionChkFunc535"] = function()
	local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][3][5]["Event"]
	local nEffectData = tValentinesDay2018_Effect["CollectionStc"][3][5]["Data"]
	local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc535"] = "ValentinesDay2018_BestowTheEffectChk</N>3310214</N>3</N>5" -- 奇珍放置 空速星痕
tItem[3310214]["Option536"] = tValentinesDay2018_Text[3310214]["Option536"]
tItem[3310214]["OptionChkFunc536"] = function()
	local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][3][6]["Event"]
	local nEffectData = tValentinesDay2018_Effect["CollectionStc"][3][6]["Data"]
	local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc536"] = "ValentinesDay2018_BestowTheEffectChk</N>3310214</N>3</N>6" -- 奇珍放置 钱从天降
tItem[3310214]["Option537"] = tValentinesDay2018_Text[3310214]["Option537"]
tItem[3310214]["OptionChkFunc537"] = function()
	local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][3][7]["Event"]
	local nEffectData = tValentinesDay2018_Effect["CollectionStc"][3][7]["Data"]
	local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc537"] = "ValentinesDay2018_BestowTheEffectChk</N>3310214</N>3</N>7" -- 奇珍放置 落樱缤纷
tItem[3310214]["Option538"] = tValentinesDay2018_Text[3310214]["Option538"]
tItem[3310214]["OptionChkFunc538"] = function()
	local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][3][8]["Event"]
	local nEffectData = tValentinesDay2018_Effect["CollectionStc"][3][8]["Data"]
	local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc538"] = "ValentinesDay2018_BestowTheEffectChk</N>3310214</N>3</N>8" -- 奇珍放置 魅蓝扇舞
tItem[3310214]["Option539"] = tValentinesDay2018_Text[3310214]["Option539"]
tItem[3310214]["OptionChkFunc539"] = function()
	local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][3][9]["Event"]
	local nEffectData = tValentinesDay2018_Effect["CollectionStc"][3][9]["Data"]
	local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc539"] = "ValentinesDay2018_BestowTheEffectChk</N>3310214</N>3</N>9" -- 奇珍放置 落花轮舞
tItem[3310214]["Option5310"] = tValentinesDay2018_Text[3310214]["Option5310"]
tItem[3310214]["OptionChkFunc5310"] = function()
	local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][3][10]["Event"]
	local nEffectData = tValentinesDay2018_Effect["CollectionStc"][3][10]["Data"]
	local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc5310"] = "ValentinesDay2018_BestowTheEffectChk</N>3310214</N>3</N>10" -- 奇珍放置 冰棱剑阵
tItem[3310214]["Option5311"] = tValentinesDay2018_Text[3310214]["Option5311"]
tItem[3310214]["OptionPoint5311"] = "4-1"
-- 【接1-4、成功、选择奇珍】
tItem[3310214]["Text5-4"] = {541, 542, 543, 544, 545, 546, 547, 548, 549, 5410, 5411, 5412, 5413, 5414}
tItem[3310214]["Text541"]  = tValentinesDay2018_Text[3310214]["Text541"]
tItem[3310214]["Text542"]  = tValentinesDay2018_Text[3310214]["Text542"]
tItem[3310214]["Text543"]  = tValentinesDay2018_Text[3310214]["Text543"]
tItem[3310214]["Text544"]  = tValentinesDay2018_Text[3310214]["Text544"]
tItem[3310214]["Text545"]  = tValentinesDay2018_Text[3310214]["Text545"]
tItem[3310214]["Text546"]  = tValentinesDay2018_Text[3310214]["Text546"]
tItem[3310214]["Text547"]  = tValentinesDay2018_Text[3310214]["Text547"]
tItem[3310214]["Text548"]  = tValentinesDay2018_Text[3310214]["Text548"]
tItem[3310214]["Text549"]  = tValentinesDay2018_Text[3310214]["Text549"]
tItem[3310214]["Text5410"] = tValentinesDay2018_Text[3310214]["Text5410"]
tItem[3310214]["Text5411"] = tValentinesDay2018_Text[3310214]["Text5411"]
tItem[3310214]["Text5412"] = tValentinesDay2018_Text[3310214]["Text5412"]
tItem[3310214]["Text5413"] = tValentinesDay2018_Text[3310214]["Text5413"]
tItem[3310214]["Text5414"] = tValentinesDay2018_Text[3310214]["Text5414"]
tItem[3310214]["ChkFunc5-4"] = function()
	-- 拥有奇珍赋值  4
	for i = 1, #tValentinesDay2018_Effect["CollectionStc"][4] do
		local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][4][i]["Event"]
		local nEffectData = tValentinesDay2018_Effect["CollectionStc"][4][i]["Data"]
		local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
		if nEffectNum > 0 then
			tItem[3310214]["Text54" .. i + 3] = string.format(tValentinesDay2018_Text[3310214]["Text54" .. i + 3], "", nEffectNum, "")
		else
			tItem[3310214]["Text54" .. i + 3] = string.format(tValentinesDay2018_Text[3310214]["Text54" .. i + 3], tValentinesDay2018_Text["Dialog"]["GrayTipBegin"], 0, tValentinesDay2018_Text["Dialog"]["GrayTipEnd"])
		end
	end
	return true
end
tItem[3310214]["tOption5-4"] = {541, 542, 543, 544, 545, 546, 547, 548, 549, 5410, 5411}
tItem[3310214]["Option541"] = tValentinesDay2018_Text[3310214]["Option541"]
tItem[3310214]["OptionChkFunc541"] = function()
	local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][4][1]["Event"]
	local nEffectData = tValentinesDay2018_Effect["CollectionStc"][4][1]["Data"]
	local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc541"] = "ValentinesDay2018_BestowTheEffectChk</N>3310214</N>4</N>1" -- 奇珍放置 音律风暴
tItem[3310214]["Option542"] = tValentinesDay2018_Text[3310214]["Option542"]
tItem[3310214]["OptionChkFunc542"] = function()
	local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][4][2]["Event"]
	local nEffectData = tValentinesDay2018_Effect["CollectionStc"][4][2]["Data"]
	local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc542"] = "ValentinesDay2018_BestowTheEffectChk</N>3310214</N>4</N>2" -- 奇珍放置 雷霆风暴
tItem[3310214]["Option543"] = tValentinesDay2018_Text[3310214]["Option543"]
tItem[3310214]["OptionChkFunc543"] = function()
	local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][4][3]["Event"]
	local nEffectData = tValentinesDay2018_Effect["CollectionStc"][4][3]["Data"]
	local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc543"] = "ValentinesDay2018_BestowTheEffectChk</N>3310214</N>4</N>3" -- 奇珍放置 律动之音
tItem[3310214]["Option544"] = tValentinesDay2018_Text[3310214]["Option544"]
tItem[3310214]["OptionChkFunc544"] = function()
	local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][4][4]["Event"]
	local nEffectData = tValentinesDay2018_Effect["CollectionStc"][4][4]["Data"]
	local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc544"] = "ValentinesDay2018_BestowTheEffectChk</N>3310214</N>4</N>4" -- 奇珍放置 龙啸九天
tItem[3310214]["Option545"] = tValentinesDay2018_Text[3310214]["Option545"]
tItem[3310214]["OptionChkFunc545"] = function()
	local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][4][5]["Event"]
	local nEffectData = tValentinesDay2018_Effect["CollectionStc"][4][5]["Data"]
	local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc545"] = "ValentinesDay2018_BestowTheEffectChk</N>3310214</N>4</N>5" -- 奇珍放置 浪漫烟花
tItem[3310214]["Option546"] = tValentinesDay2018_Text[3310214]["Option546"]
tItem[3310214]["OptionChkFunc546"] = function()
	local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][4][6]["Event"]
	local nEffectData = tValentinesDay2018_Effect["CollectionStc"][4][6]["Data"]
	local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc546"] = "ValentinesDay2018_BestowTheEffectChk</N>3310214</N>4</N>6" -- 奇珍放置 精灵之光
tItem[3310214]["Option547"] = tValentinesDay2018_Text[3310214]["Option547"]
tItem[3310214]["OptionChkFunc547"] = function()
	local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][4][7]["Event"]
	local nEffectData = tValentinesDay2018_Effect["CollectionStc"][4][7]["Data"]
	local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc547"] = "ValentinesDay2018_BestowTheEffectChk</N>3310214</N>4</N>7" -- 奇珍放置 心之所向
tItem[3310214]["Option548"] = tValentinesDay2018_Text[3310214]["Option548"]
tItem[3310214]["OptionChkFunc548"] = function()
	local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][4][8]["Event"]
	local nEffectData = tValentinesDay2018_Effect["CollectionStc"][4][8]["Data"]
	local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc548"] = "ValentinesDay2018_BestowTheEffectChk</N>3310214</N>4</N>8" -- 奇珍放置 神秘漩涡
tItem[3310214]["Option549"] = tValentinesDay2018_Text[3310214]["Option549"]
tItem[3310214]["OptionChkFunc549"] = function()
	local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][4][9]["Event"]
	local nEffectData = tValentinesDay2018_Effect["CollectionStc"][4][9]["Data"]
	local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc549"] = "ValentinesDay2018_BestowTheEffectChk</N>3310214</N>4</N>9" -- 奇珍放置 紫韵星影
tItem[3310214]["Option5410"] = tValentinesDay2018_Text[3310214]["Option5410"]
tItem[3310214]["OptionChkFunc5410"] = function()
	local nEffectEvent = tValentinesDay2018_Effect["CollectionStc"][4][10]["Event"]
	local nEffectData = tValentinesDay2018_Effect["CollectionStc"][4][10]["Data"]
	local nEffectNum = Get_UserStatisticValue(nEffectEvent, nEffectData)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc5410"] = "ValentinesDay2018_BestowTheEffectChk</N>3310214</N>4</N>10" -- 奇珍放置 夏沫之花
tItem[3310214]["Option5411"] = tValentinesDay2018_Text[3310214]["Option5411"]
tItem[3310214]["OptionPoint5411"] = "4-1"


-- 收纳珍宝
tItem[3310214]["Text6-1"] = {611}
tItem[3310214]["Text611"] = tValentinesDay2018_Text[3310214]["Text611"]
tItem[3310214]["tOption6-1"] = {611, 612, 613, 614, 615, 616}
tItem[3310214]["Option611"] = tValentinesDay2018_Text[3310214]["Option611"]
tItem[3310214]["OptionFunc611"] = "ValentinesDay2018_RecoveryEffectChk</N>3310214</N>1" -- 奇珍收纳 花草
tItem[3310214]["Option612"] = tValentinesDay2018_Text[3310214]["Option612"]
tItem[3310214]["OptionFunc612"] = "ValentinesDay2018_RecoveryEffectChk</N>3310214</N>2" -- 奇珍收纳 气球
tItem[3310214]["Option613"] = tValentinesDay2018_Text[3310214]["Option613"]
tItem[3310214]["OptionFunc613"] = "ValentinesDay2018_RecoveryEffectChk</N>3310214</N>3" -- 奇珍收纳 流光
tItem[3310214]["Option614"] = tValentinesDay2018_Text[3310214]["Option614"]
tItem[3310214]["OptionFunc614"] = "ValentinesDay2018_RecoveryEffectChk</N>3310214</N>4" -- 奇珍收纳 炫影
tItem[3310214]["Option615"] = tValentinesDay2018_Text[3310214]["Option615"]
tItem[3310214]["OptionFunc615"] = "ValentinesDay2018_RecoveryEffectAll</N>3310214" 
tItem[3310214]["Option616"] = tValentinesDay2018_Text[3310214]["Option616"]
tItem[3310214]["OptionPoint616"] = "1-1"
-- 【接2-1、成功、选择奇珍】
tItem[3310214]["Text7-1"] = {711, 712, 713, 714, 715, 716, 717, 718}
tItem[3310214]["Text711"] = tValentinesDay2018_Text[3310214]["Text711"]
tItem[3310214]["Text712"] = tValentinesDay2018_Text[3310214]["Text712"]
tItem[3310214]["Text713"] = tValentinesDay2018_Text[3310214]["Text713"]
tItem[3310214]["Text714"] = tValentinesDay2018_Text[3310214]["Text714"]
tItem[3310214]["Text715"] = tValentinesDay2018_Text[3310214]["Text715"]
tItem[3310214]["Text716"] = tValentinesDay2018_Text[3310214]["Text716"]
tItem[3310214]["Text717"] = tValentinesDay2018_Text[3310214]["Text717"]
tItem[3310214]["Text718"] = tValentinesDay2018_Text[3310214]["Text718"]
tItem[3310214]["ChkFunc7-1"] = function()
	-- 放置奇珍赋值  1
	local nIndex = 713
	for i = 1, 4 do
		local nEffectNum = ValentinesDay2018_GetEffectNum(i)
		if nEffectNum > 0 then
			tItem[3310214]["Text" .. nIndex + i] = string.format(tValentinesDay2018_Text[3310214]["Text" .. nIndex + i], "", nEffectNum, "")
		else
			tItem[3310214]["Text" .. nIndex + i] = string.format(tValentinesDay2018_Text[3310214]["Text" .. nIndex + i], tValentinesDay2018_Text["Dialog"]["GrayTipBegin"], 0, tValentinesDay2018_Text["Dialog"]["GrayTipEnd"])
		end
	end
	return true
end
tItem[3310214]["tOption7-1"] = {711, 712, 713, 714, 715}
tItem[3310214]["Option711"] = tValentinesDay2018_Text[3310214]["Option711"]
tItem[3310214]["OptionChkFunc711"] = function()
	local nEffectNum = ValentinesDay2018_GetEffectNum(1)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc711"] = "ValentinesDay2018_RecoveryEffect</N>3310214</N>1</N>1" -- 奇珍收纳 点点绿意
tItem[3310214]["Option712"] = tValentinesDay2018_Text[3310214]["Option712"]
tItem[3310214]["OptionChkFunc712"] = function()
	local nEffectNum = ValentinesDay2018_GetEffectNum(2)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc712"] = "ValentinesDay2018_RecoveryEffect</N>3310214</N>1</N>2" -- 奇珍收纳 点点紫意
tItem[3310214]["Option713"] = tValentinesDay2018_Text[3310214]["Option713"]
tItem[3310214]["OptionChkFunc713"] = function()
	local nEffectNum = ValentinesDay2018_GetEffectNum(3)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc713"] = "ValentinesDay2018_RecoveryEffect</N>3310214</N>1</N>3" -- 奇珍收纳 点点粉意
tItem[3310214]["Option714"] = tValentinesDay2018_Text[3310214]["Option714"]
tItem[3310214]["OptionChkFunc714"] = function()
	local nEffectNum = ValentinesDay2018_GetEffectNum(4)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc714"] = "ValentinesDay2018_RecoveryEffect</N>3310214</N>1</N>4" -- 奇珍收纳 点点蓝意
tItem[3310214]["Option715"] = tValentinesDay2018_Text[3310214]["Option715"]
tItem[3310214]["OptionPoint715"] = "6-1"
-- 【接2-2、成功、选择奇珍】
tItem[3310214]["Text7-2"] = {721, 722, 723, 724, 725, 726, 727}
tItem[3310214]["Text721"] = tValentinesDay2018_Text[3310214]["Text721"]
tItem[3310214]["Text722"] = tValentinesDay2018_Text[3310214]["Text722"]
tItem[3310214]["Text723"] = tValentinesDay2018_Text[3310214]["Text723"]
tItem[3310214]["Text724"] = tValentinesDay2018_Text[3310214]["Text724"]
tItem[3310214]["Text725"] = tValentinesDay2018_Text[3310214]["Text725"]
tItem[3310214]["Text726"] = tValentinesDay2018_Text[3310214]["Text726"]
tItem[3310214]["Text727"] = tValentinesDay2018_Text[3310214]["Text727"]
tItem[3310214]["ChkFunc7-2"] = function()
	-- 放置奇珍赋值  2
	local nIndex = 723
	for i = 5, 7 do
		local nEffectNum = ValentinesDay2018_GetEffectNum(i)
		if nEffectNum > 0 then
			tItem[3310214]["Text" .. nIndex + i - 4] = string.format(tValentinesDay2018_Text[3310214]["Text" .. nIndex + i - 4], "", nEffectNum, "")
		else
			tItem[3310214]["Text" .. nIndex + i - 4] = string.format(tValentinesDay2018_Text[3310214]["Text" .. nIndex + i - 4], tValentinesDay2018_Text["Dialog"]["GrayTipBegin"], 0, tValentinesDay2018_Text["Dialog"]["GrayTipEnd"])
		end
	end
	return true
end
tItem[3310214]["tOption7-2"] = {721, 722, 723, 724}
tItem[3310214]["Option721"] = tValentinesDay2018_Text[3310214]["Option721"]
tItem[3310214]["OptionChkFunc721"] = function()
	local nEffectNum = ValentinesDay2018_GetEffectNum(5)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc721"] = "ValentinesDay2018_RecoveryEffect</N>3310214</N>2</N>1" -- 奇珍收纳 微笑气球
tItem[3310214]["Option722"] = tValentinesDay2018_Text[3310214]["Option722"]
tItem[3310214]["OptionChkFunc722"] = function()
	local nEffectNum = ValentinesDay2018_GetEffectNum(6)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc722"] = "ValentinesDay2018_RecoveryEffect</N>3310214</N>2</N>2" -- 奇珍收纳 爱心气球
tItem[3310214]["Option723"] = tValentinesDay2018_Text[3310214]["Option723"]
tItem[3310214]["OptionChkFunc723"] = function()
	local nEffectNum = ValentinesDay2018_GetEffectNum(7)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc723"] = "ValentinesDay2018_RecoveryEffect</N>3310214</N>2</N>3" -- 奇珍收纳 星星气球
tItem[3310214]["Option724"] = tValentinesDay2018_Text[3310214]["Option724"]
tItem[3310214]["OptionPoint724"] = "6-1"
-- 【接1-3、成功、选择奇珍】
tItem[3310214]["Text7-3"] = {731, 732, 733, 734, 735, 736, 737, 738, 739, 7310, 7311, 7312, 7313, 7314}
tItem[3310214]["Text731"]  = tValentinesDay2018_Text[3310214]["Text731"]
tItem[3310214]["Text732"]  = tValentinesDay2018_Text[3310214]["Text732"]
tItem[3310214]["Text733"]  = tValentinesDay2018_Text[3310214]["Text733"]
tItem[3310214]["Text734"]  = tValentinesDay2018_Text[3310214]["Text734"]
tItem[3310214]["Text735"]  = tValentinesDay2018_Text[3310214]["Text735"]
tItem[3310214]["Text736"]  = tValentinesDay2018_Text[3310214]["Text736"]
tItem[3310214]["Text737"]  = tValentinesDay2018_Text[3310214]["Text737"]
tItem[3310214]["Text738"]  = tValentinesDay2018_Text[3310214]["Text738"]
tItem[3310214]["Text739"]  = tValentinesDay2018_Text[3310214]["Text739"]
tItem[3310214]["Text7310"] = tValentinesDay2018_Text[3310214]["Text7310"]
tItem[3310214]["Text7311"] = tValentinesDay2018_Text[3310214]["Text7311"]
tItem[3310214]["Text7312"] = tValentinesDay2018_Text[3310214]["Text7312"]
tItem[3310214]["Text7313"] = tValentinesDay2018_Text[3310214]["Text7313"]
tItem[3310214]["Text7314"] = tValentinesDay2018_Text[3310214]["Text7314"]
tItem[3310214]["ChkFunc7-3"] = function()
	-- 放置奇珍赋值  3
	local nIndex = 3
	for i = 8, 17 do
		local nEffectNum = ValentinesDay2018_GetEffectNum(i)
		if nEffectNum > 0 then
			tItem[3310214]["Text73" .. nIndex + i - 7] = string.format(tValentinesDay2018_Text[3310214]["Text73" .. nIndex + i - 7], "", nEffectNum, "")
		else
			tItem[3310214]["Text73" .. nIndex + i - 7] = string.format(tValentinesDay2018_Text[3310214]["Text73" .. nIndex + i - 7], tValentinesDay2018_Text["Dialog"]["GrayTipBegin"], 0, tValentinesDay2018_Text["Dialog"]["GrayTipEnd"])
		end
	end
	return true
end
tItem[3310214]["tOption7-3"] = {731, 732, 733, 734, 735, 736, 737, 738, 739, 7310, 7311}
tItem[3310214]["Option731"] = tValentinesDay2018_Text[3310214]["Option731"]
tItem[3310214]["OptionChkFunc731"] = function()
	local nEffectNum = ValentinesDay2018_GetEffectNum(8)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc731"] = "ValentinesDay2018_RecoveryEffect</N>3310214</N>3</N>1" -- 奇珍收纳 百年好合
tItem[3310214]["Option732"] = tValentinesDay2018_Text[3310214]["Option732"]
tItem[3310214]["OptionChkFunc732"] = function()
	local nEffectNum = ValentinesDay2018_GetEffectNum(9)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc732"] = "ValentinesDay2018_RecoveryEffect</N>3310214</N>3</N>2" -- 奇珍收纳 飞花弄蝶
tItem[3310214]["Option733"] = tValentinesDay2018_Text[3310214]["Option733"]
tItem[3310214]["OptionChkFunc733"] = function()
	local nEffectNum = ValentinesDay2018_GetEffectNum(10)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc733"] = "ValentinesDay2018_RecoveryEffect</N>3310214</N>3</N>3" -- 奇珍收纳 粉蝶翩跹
tItem[3310214]["Option734"] = tValentinesDay2018_Text[3310214]["Option734"]
tItem[3310214]["OptionChkFunc734"] = function()
	local nEffectNum = ValentinesDay2018_GetEffectNum(11)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc734"] = "ValentinesDay2018_RecoveryEffect</N>3310214</N>3</N>4" -- 奇珍收纳 梦幻鹿影
tItem[3310214]["Option735"] = tValentinesDay2018_Text[3310214]["Option735"]
tItem[3310214]["OptionChkFunc735"] = function()
	local nEffectNum = ValentinesDay2018_GetEffectNum(12)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc735"] = "ValentinesDay2018_RecoveryEffect</N>3310214</N>3</N>5" -- 奇珍收纳 空速星痕
tItem[3310214]["Option736"] = tValentinesDay2018_Text[3310214]["Option736"]
tItem[3310214]["OptionChkFunc736"] = function()
	local nEffectNum = ValentinesDay2018_GetEffectNum(13)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc736"] = "ValentinesDay2018_RecoveryEffect</N>3310214</N>3</N>6" -- 奇珍收纳 钱从天降
tItem[3310214]["Option737"] = tValentinesDay2018_Text[3310214]["Option737"]
tItem[3310214]["OptionChkFunc737"] = function()
	local nEffectNum = ValentinesDay2018_GetEffectNum(14)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc737"] = "ValentinesDay2018_RecoveryEffect</N>3310214</N>3</N>7" -- 奇珍收纳 落樱缤纷
tItem[3310214]["Option738"] = tValentinesDay2018_Text[3310214]["Option738"]
tItem[3310214]["OptionChkFunc738"] = function()
	local nEffectNum = ValentinesDay2018_GetEffectNum(15)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc738"] = "ValentinesDay2018_RecoveryEffect</N>3310214</N>3</N>8" -- 奇珍收纳 魅蓝扇舞
tItem[3310214]["Option739"] = tValentinesDay2018_Text[3310214]["Option739"]
tItem[3310214]["OptionChkFunc739"] = function()
	local nEffectNum = ValentinesDay2018_GetEffectNum(16)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc739"] = "ValentinesDay2018_RecoveryEffect</N>3310214</N>3</N>9" -- 奇珍收纳 落花轮舞
tItem[3310214]["Option7310"] = tValentinesDay2018_Text[3310214]["Option7310"]
tItem[3310214]["OptionChkFunc7310"] = function()
	local nEffectNum = ValentinesDay2018_GetEffectNum(17)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc7310"] = "ValentinesDay2018_RecoveryEffect</N>3310214</N>3</N>10" -- 奇珍收纳 冰棱剑阵
tItem[3310214]["Option7311"] = tValentinesDay2018_Text[3310214]["Option7311"]
tItem[3310214]["OptionPoint7311"] = "6-1"
-- 【接1-4、成功、选择奇珍】
tItem[3310214]["Text7-4"] = {741, 742, 743, 744, 745, 746, 747, 748, 749, 7410, 7411, 7412, 7413, 7414}
tItem[3310214]["Text741"]  = tValentinesDay2018_Text[3310214]["Text741"]
tItem[3310214]["Text742"]  = tValentinesDay2018_Text[3310214]["Text742"]
tItem[3310214]["Text743"]  = tValentinesDay2018_Text[3310214]["Text743"]
tItem[3310214]["Text744"]  = tValentinesDay2018_Text[3310214]["Text744"]
tItem[3310214]["Text745"]  = tValentinesDay2018_Text[3310214]["Text745"]
tItem[3310214]["Text746"]  = tValentinesDay2018_Text[3310214]["Text746"]
tItem[3310214]["Text747"]  = tValentinesDay2018_Text[3310214]["Text747"]
tItem[3310214]["Text748"]  = tValentinesDay2018_Text[3310214]["Text748"]
tItem[3310214]["Text749"]  = tValentinesDay2018_Text[3310214]["Text749"]
tItem[3310214]["Text7410"] = tValentinesDay2018_Text[3310214]["Text7410"]
tItem[3310214]["Text7411"] = tValentinesDay2018_Text[3310214]["Text7411"]
tItem[3310214]["Text7412"] = tValentinesDay2018_Text[3310214]["Text7412"]
tItem[3310214]["Text7413"] = tValentinesDay2018_Text[3310214]["Text7413"]
tItem[3310214]["Text7414"] = tValentinesDay2018_Text[3310214]["Text7414"]
tItem[3310214]["ChkFunc7-4"] = function()
	-- 放置奇珍赋值  4
	local nIndex = 3
	for i = 18, 27 do
		local nEffectNum = ValentinesDay2018_GetEffectNum(i)
		if nEffectNum > 0 then
			tItem[3310214]["Text74" .. nIndex + i - 17] = string.format(tValentinesDay2018_Text[3310214]["Text74" .. nIndex + i - 17], "", nEffectNum, "")
		else
			tItem[3310214]["Text74" .. nIndex + i - 17] = string.format(tValentinesDay2018_Text[3310214]["Text74" .. nIndex + i - 17], tValentinesDay2018_Text["Dialog"]["GrayTipBegin"], 0, tValentinesDay2018_Text["Dialog"]["GrayTipEnd"])
		end
	end
	return true
end
tItem[3310214]["tOption7-4"] = {741, 742, 743, 744, 745, 746, 747, 748, 749, 7410, 7411}
tItem[3310214]["Option741"] = tValentinesDay2018_Text[3310214]["Option741"]
tItem[3310214]["OptionChkFunc741"] = function()
	local nEffectNum = ValentinesDay2018_GetEffectNum(18)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc741"] = "ValentinesDay2018_RecoveryEffect</N>3310214</N>4</N>1" -- 奇珍收纳 音律风暴
tItem[3310214]["Option742"] = tValentinesDay2018_Text[3310214]["Option742"]
tItem[3310214]["OptionChkFunc742"] = function()
	local nEffectNum = ValentinesDay2018_GetEffectNum(19)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc742"] = "ValentinesDay2018_RecoveryEffect</N>3310214</N>4</N>2" -- 奇珍收纳 雷霆风暴
tItem[3310214]["Option743"] = tValentinesDay2018_Text[3310214]["Option743"]
tItem[3310214]["OptionChkFunc743"] = function()
	local nEffectNum = ValentinesDay2018_GetEffectNum(20)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc743"] = "ValentinesDay2018_RecoveryEffect</N>3310214</N>4</N>3" -- 奇珍收纳 律动之音
tItem[3310214]["Option744"] = tValentinesDay2018_Text[3310214]["Option744"]
tItem[3310214]["OptionChkFunc744"] = function()
	local nEffectNum = ValentinesDay2018_GetEffectNum(21)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc744"] = "ValentinesDay2018_RecoveryEffect</N>3310214</N>4</N>4" -- 奇珍收纳 龙啸九天
tItem[3310214]["Option745"] = tValentinesDay2018_Text[3310214]["Option745"]
tItem[3310214]["OptionChkFunc745"] = function()
	local nEffectNum = ValentinesDay2018_GetEffectNum(22)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc745"] = "ValentinesDay2018_RecoveryEffect</N>3310214</N>4</N>5" -- 奇珍收纳 浪漫烟花
tItem[3310214]["Option746"] = tValentinesDay2018_Text[3310214]["Option746"]
tItem[3310214]["OptionChkFunc746"] = function()
	local nEffectNum = ValentinesDay2018_GetEffectNum(23)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc746"] = "ValentinesDay2018_RecoveryEffect</N>3310214</N>4</N>6" -- 奇珍收纳 精灵之光
tItem[3310214]["Option747"] = tValentinesDay2018_Text[3310214]["Option747"]
tItem[3310214]["OptionChkFunc747"] = function()
	local nEffectNum = ValentinesDay2018_GetEffectNum(24)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc747"] = "ValentinesDay2018_RecoveryEffect</N>3310214</N>4</N>7" -- 奇珍收纳 心之所向
tItem[3310214]["Option748"] = tValentinesDay2018_Text[3310214]["Option748"]
tItem[3310214]["OptionChkFunc748"] = function()
	local nEffectNum = ValentinesDay2018_GetEffectNum(25)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc748"] = "ValentinesDay2018_RecoveryEffect</N>3310214</N>4</N>8" -- 奇珍收纳 神秘漩涡
tItem[3310214]["Option749"] = tValentinesDay2018_Text[3310214]["Option749"]
tItem[3310214]["OptionChkFunc749"] = function()
	local nEffectNum = ValentinesDay2018_GetEffectNum(26)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc749"] = "ValentinesDay2018_RecoveryEffect</N>3310214</N>4</N>9" -- 奇珍收纳 紫韵星影
tItem[3310214]["Option7410"] = tValentinesDay2018_Text[3310214]["Option7410"]
tItem[3310214]["OptionChkFunc7410"] = function()
	local nEffectNum = ValentinesDay2018_GetEffectNum(27)
	if nEffectNum > 0 then
		return true
	end
	return false
end
tItem[3310214]["OptionFunc7410"] = "ValentinesDay2018_RecoveryEffect</N>3310214</N>4</N>10" -- 奇珍收纳 夏沫之花
tItem[3310214]["Option7411"] = tValentinesDay2018_Text[3310214]["Option7411"]
tItem[3310214]["OptionPoint7411"] = "6-1"
---------------------------------陷阱部分---------------------------------------------
-- 传送点
tTrap[2059] = tTrap[2059] or {}
tTrap[2059]["Function"] = function(nTrapId,nTrapType)
	tValentinesDay2018_TrapMove()
end

-- 花仙阁传送点
tTrap[2455] = tTrap[2455] or {}
tTrap[2455]["Function"] = function(nTrapId,nTrapType)
	ValentinesDay2018_ReturnCityMove()
end


---------------------------------怪物部分---------------------------------------------
-- 击杀神龙岛跟古神灵境怪物掉落
local tValentinesDay2018_MonsterDrop = {}
tValentinesDay2018_MonsterDrop["Function"] = ValentinesDay2018_KillMonsterDrop
table.insert(tMonsterDrop_AreaLoad,tValentinesDay2018_MonsterDrop)

-- 激情服怪物掉落
local tValentinesDay2018_MonsterDrop_NoGift = {}
tValentinesDay2018_MonsterDrop_NoGift["Function"] = ValentinesDay2018_KillMonsterDrop
tValentinesDay2018_MonsterDrop_NoGift["MonsterId"] = {4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
table.insert(tMonsterDrop_AreaLoad_NoGift,tValentinesDay2018_MonsterDrop_NoGift)


-- 采花贼
local tValentinesDay2018_FlowerThiefMonster = {}
tValentinesDay2018_FlowerThiefMonster["Function"] = ValentinesDay2018_KillFlowerThiefMonster
tValentinesDay2018_FlowerThiefMonster["MonsterId"] = {5509}
table.insert(tMonsterDrop_AreaLoad,tValentinesDay2018_FlowerThiefMonster)
table.insert(tMonsterDrop_AreaLoad_NoGift,tValentinesDay2018_FlowerThiefMonster)


---------------------------------上线触发---------------------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func, ValentinesDay2018_UserLogin)


---------------------------------时间自检---------------------------------------------
local tValentinesDay2018_OnTime = {}
	tValentinesDay2018_OnTime[1] = {}
	tValentinesDay2018_OnTime[1]["Type"] = 2
	tValentinesDay2018_OnTime[1]["TimeType"] = 4
	tValentinesDay2018_OnTime[1]["Time"] = "00:00 23:59"
	tValentinesDay2018_OnTime[1]["Func"] = ValentinesDay2018_FlowerSeedChkAndSet
table.insert(tSystemTime_InitialData,tValentinesDay2018_OnTime[1])


---------------------------------服务器启动---------------------------------------------
tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],ValentinesDay2018_ServerStart)

-- ---------------------------------副本删除---------------------------------------------

-- --副本删除
-- tProcessDelInstance["tFunction"] = tProcessDelInstance["tFunction"] or {}
-- table.insert(tProcessDelInstance["tFunction"], ValentinesDay2018_DelInstance)

---------------------------------排行榜---------------------------------------------
-- 排行榜表
-- 风流才子榜前10名玩家
tRankingFunc_Info[230961] = {}
tRankingFunc_Info[230961]["ActiveTime"] = tActivityTime["ValentinesDay2018"]["RankTime"]
tRankingFunc_Info[230961]["DayTime"] = {}
tRankingFunc_Info[230961]["DayTime"][1] = "00:00 23:59"
tRankingFunc_Info[230961]["Reset"] = 1
tRankingFunc_Info[230961]["Global"] = {52924,52925,52926,52927}
tRankingFunc_Info[230961]["RankNum"] = 10
-- 邮件发奖
tRankingFunc_Info[230961]["Mail"] = {}
tRankingFunc_Info[230961]["Mail"]["ActiveTime"] = tActivityTime["ValentinesDay2018"]["LetterSendTime"]
tRankingFunc_Info[230961]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[230961]["Mail"]["RewardTime"][1] = "00:00 00:05"
tRankingFunc_Info[230961]["Mail"]["HaveFunc"] = ValentinesDay2018_ReMailText
tRankingFunc_Info[230961]["Mail"]["Reward"] = {}
tRankingFunc_Info[230961]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[230961]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[230961]["Mail"]["Reward"][1]["ActionId"] = 569690
tRankingFunc_Info[230961]["Mail"]["Reward"][1]["ExistDay"] = 7
tRankingFunc_Info[230961]["Mail"]["Reward"][1]["Title"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Title"]
tRankingFunc_Info[230961]["Mail"]["Reward"][1]["Sender"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Sender"]
tRankingFunc_Info[230961]["Mail"]["Reward"][1]["Content"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Content"]
tRankingFunc_Info[230961]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[230961]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[230961]["Mail"]["Reward"][2]["ActionId"] = 569691
tRankingFunc_Info[230961]["Mail"]["Reward"][2]["ExistDay"] = 7
tRankingFunc_Info[230961]["Mail"]["Reward"][2]["Title"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Title"]
tRankingFunc_Info[230961]["Mail"]["Reward"][2]["Sender"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Sender"]
tRankingFunc_Info[230961]["Mail"]["Reward"][2]["Content"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Content"]
tRankingFunc_Info[230961]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[230961]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[230961]["Mail"]["Reward"][3]["ActionId"] = 569692
tRankingFunc_Info[230961]["Mail"]["Reward"][3]["ExistDay"] = 7
tRankingFunc_Info[230961]["Mail"]["Reward"][3]["Title"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Title"]
tRankingFunc_Info[230961]["Mail"]["Reward"][3]["Sender"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Sender"]
tRankingFunc_Info[230961]["Mail"]["Reward"][3]["Content"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Content"]
tRankingFunc_Info[230961]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[230961]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[230961]["Mail"]["Reward"][4]["ActionId"] = 569693
tRankingFunc_Info[230961]["Mail"]["Reward"][4]["ExistDay"] = 7
tRankingFunc_Info[230961]["Mail"]["Reward"][4]["Title"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Title"]
tRankingFunc_Info[230961]["Mail"]["Reward"][4]["Sender"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Sender"]
tRankingFunc_Info[230961]["Mail"]["Reward"][4]["Content"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Content"]
tRankingFunc_Info[230961]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[230961]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[230961]["Mail"]["Reward"][5]["ActionId"] = 569693
tRankingFunc_Info[230961]["Mail"]["Reward"][5]["ExistDay"] = 7
tRankingFunc_Info[230961]["Mail"]["Reward"][5]["Title"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Title"]
tRankingFunc_Info[230961]["Mail"]["Reward"][5]["Sender"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Sender"]
tRankingFunc_Info[230961]["Mail"]["Reward"][5]["Content"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Content"]
tRankingFunc_Info[230961]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[230961]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[230961]["Mail"]["Reward"][6]["ActionId"] = 569693
tRankingFunc_Info[230961]["Mail"]["Reward"][6]["ExistDay"] = 7
tRankingFunc_Info[230961]["Mail"]["Reward"][6]["Title"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Title"]
tRankingFunc_Info[230961]["Mail"]["Reward"][6]["Sender"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Sender"]
tRankingFunc_Info[230961]["Mail"]["Reward"][6]["Content"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Content"]
tRankingFunc_Info[230961]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[230961]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[230961]["Mail"]["Reward"][7]["ActionId"] = 569694
tRankingFunc_Info[230961]["Mail"]["Reward"][7]["ExistDay"] = 7
tRankingFunc_Info[230961]["Mail"]["Reward"][7]["Title"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Title"]
tRankingFunc_Info[230961]["Mail"]["Reward"][7]["Sender"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Sender"]
tRankingFunc_Info[230961]["Mail"]["Reward"][7]["Content"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Content"]
tRankingFunc_Info[230961]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[230961]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[230961]["Mail"]["Reward"][8]["ActionId"] = 569694
tRankingFunc_Info[230961]["Mail"]["Reward"][8]["ExistDay"] = 7
tRankingFunc_Info[230961]["Mail"]["Reward"][8]["Title"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Title"]
tRankingFunc_Info[230961]["Mail"]["Reward"][8]["Sender"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Sender"]
tRankingFunc_Info[230961]["Mail"]["Reward"][8]["Content"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Content"]
tRankingFunc_Info[230961]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[230961]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[230961]["Mail"]["Reward"][9]["ActionId"] = 569694
tRankingFunc_Info[230961]["Mail"]["Reward"][9]["ExistDay"] = 7
tRankingFunc_Info[230961]["Mail"]["Reward"][9]["Title"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Title"]
tRankingFunc_Info[230961]["Mail"]["Reward"][9]["Sender"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Sender"]
tRankingFunc_Info[230961]["Mail"]["Reward"][9]["Content"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Content"]
tRankingFunc_Info[230961]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[230961]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[230961]["Mail"]["Reward"][10]["ActionId"] = 569694
tRankingFunc_Info[230961]["Mail"]["Reward"][10]["ExistDay"] = 7
tRankingFunc_Info[230961]["Mail"]["Reward"][10]["Title"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Title"]
tRankingFunc_Info[230961]["Mail"]["Reward"][10]["Sender"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Sender"]
tRankingFunc_Info[230961]["Mail"]["Reward"][10]["Content"] = tValentinesDay2018_Text["Lettter"]["TopRank"][1]["Content"]

-- 红粉佳人榜前10名玩家
tRankingFunc_Info[230962] = {}
tRankingFunc_Info[230962]["ActiveTime"] = tActivityTime["ValentinesDay2018"]["RankTime"]
tRankingFunc_Info[230962]["DayTime"] = {}
tRankingFunc_Info[230962]["DayTime"][1] = "00:00 23:59"
tRankingFunc_Info[230962]["Reset"] = 1
tRankingFunc_Info[230962]["Global"] = {52928,52929,52930,52931}
tRankingFunc_Info[230962]["RankNum"] = 10
-- 邮件发奖
tRankingFunc_Info[230962]["Mail"] = {}
tRankingFunc_Info[230962]["Mail"]["ActiveTime"] = tActivityTime["ValentinesDay2018"]["LetterSendTime"]
tRankingFunc_Info[230962]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[230962]["Mail"]["RewardTime"][1] = "00:00 00:05"
tRankingFunc_Info[230962]["Mail"]["HaveFunc"] = ValentinesDay2018_ReMailText
tRankingFunc_Info[230962]["Mail"]["Reward"] = {}
tRankingFunc_Info[230962]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[230962]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[230962]["Mail"]["Reward"][1]["ActionId"] = 569695
tRankingFunc_Info[230962]["Mail"]["Reward"][1]["ExistDay"] = 7
tRankingFunc_Info[230962]["Mail"]["Reward"][1]["Title"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Title"]
tRankingFunc_Info[230962]["Mail"]["Reward"][1]["Sender"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Sender"]
tRankingFunc_Info[230962]["Mail"]["Reward"][1]["Content"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Content"]
tRankingFunc_Info[230962]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[230962]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[230962]["Mail"]["Reward"][2]["ActionId"] = 569696
tRankingFunc_Info[230962]["Mail"]["Reward"][2]["ExistDay"] = 7
tRankingFunc_Info[230962]["Mail"]["Reward"][2]["Title"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Title"]
tRankingFunc_Info[230962]["Mail"]["Reward"][2]["Sender"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Sender"]
tRankingFunc_Info[230962]["Mail"]["Reward"][2]["Content"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Content"]
tRankingFunc_Info[230962]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[230962]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[230962]["Mail"]["Reward"][3]["ActionId"] = 569697
tRankingFunc_Info[230962]["Mail"]["Reward"][3]["ExistDay"] = 7
tRankingFunc_Info[230962]["Mail"]["Reward"][3]["Title"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Title"]
tRankingFunc_Info[230962]["Mail"]["Reward"][3]["Sender"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Sender"]
tRankingFunc_Info[230962]["Mail"]["Reward"][3]["Content"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Content"]
tRankingFunc_Info[230962]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[230962]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[230962]["Mail"]["Reward"][4]["ActionId"] = 569698
tRankingFunc_Info[230962]["Mail"]["Reward"][4]["ExistDay"] = 7
tRankingFunc_Info[230962]["Mail"]["Reward"][4]["Title"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Title"]
tRankingFunc_Info[230962]["Mail"]["Reward"][4]["Sender"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Sender"]
tRankingFunc_Info[230962]["Mail"]["Reward"][4]["Content"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Content"]
tRankingFunc_Info[230962]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[230962]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[230962]["Mail"]["Reward"][5]["ActionId"] = 569698
tRankingFunc_Info[230962]["Mail"]["Reward"][5]["ExistDay"] = 7
tRankingFunc_Info[230962]["Mail"]["Reward"][5]["Title"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Title"]
tRankingFunc_Info[230962]["Mail"]["Reward"][5]["Sender"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Sender"]
tRankingFunc_Info[230962]["Mail"]["Reward"][5]["Content"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Content"]
tRankingFunc_Info[230962]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[230962]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[230962]["Mail"]["Reward"][6]["ActionId"] = 569698
tRankingFunc_Info[230962]["Mail"]["Reward"][6]["ExistDay"] = 7
tRankingFunc_Info[230962]["Mail"]["Reward"][6]["Title"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Title"]
tRankingFunc_Info[230962]["Mail"]["Reward"][6]["Sender"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Sender"]
tRankingFunc_Info[230962]["Mail"]["Reward"][6]["Content"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Content"]
tRankingFunc_Info[230962]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[230962]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[230962]["Mail"]["Reward"][7]["ActionId"] = 569699
tRankingFunc_Info[230962]["Mail"]["Reward"][7]["ExistDay"] = 7
tRankingFunc_Info[230962]["Mail"]["Reward"][7]["Title"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Title"]
tRankingFunc_Info[230962]["Mail"]["Reward"][7]["Sender"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Sender"]
tRankingFunc_Info[230962]["Mail"]["Reward"][7]["Content"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Content"]
tRankingFunc_Info[230962]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[230962]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[230962]["Mail"]["Reward"][8]["ActionId"] = 569699
tRankingFunc_Info[230962]["Mail"]["Reward"][8]["ExistDay"] = 7
tRankingFunc_Info[230962]["Mail"]["Reward"][8]["Title"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Title"]
tRankingFunc_Info[230962]["Mail"]["Reward"][8]["Sender"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Sender"]
tRankingFunc_Info[230962]["Mail"]["Reward"][8]["Content"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Content"]
tRankingFunc_Info[230962]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[230962]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[230962]["Mail"]["Reward"][9]["ActionId"] = 569699
tRankingFunc_Info[230962]["Mail"]["Reward"][9]["ExistDay"] = 7
tRankingFunc_Info[230962]["Mail"]["Reward"][9]["Title"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Title"]
tRankingFunc_Info[230962]["Mail"]["Reward"][9]["Sender"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Sender"]
tRankingFunc_Info[230962]["Mail"]["Reward"][9]["Content"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Content"]
tRankingFunc_Info[230962]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[230962]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[230962]["Mail"]["Reward"][10]["ActionId"] = 569699
tRankingFunc_Info[230962]["Mail"]["Reward"][10]["ExistDay"] = 7
tRankingFunc_Info[230962]["Mail"]["Reward"][10]["Title"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Title"]
tRankingFunc_Info[230962]["Mail"]["Reward"][10]["Sender"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Sender"]
tRankingFunc_Info[230962]["Mail"]["Reward"][10]["Content"] = tValentinesDay2018_Text["Lettter"]["TopRank"][2]["Content"]


