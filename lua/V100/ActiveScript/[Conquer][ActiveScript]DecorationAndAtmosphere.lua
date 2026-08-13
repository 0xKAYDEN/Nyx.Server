------------------------------------------------------------------------------------
--Name:			190410[简体征服][活动脚本]周年庆气氛布置
--Creator:		耿力兀
--Created:		2019-04-11
------------------------------------------------------------------------------------
--命名前缀  DecorationAndAtmosphere_

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tDecorationAndAtmosphere_MapData = {}
	tDecorationAndAtmosphere_MapData["MapId"] = 1002
	tDecorationAndAtmosphere_MapData["JQFMapId"] = {}
	tDecorationAndAtmosphere_MapData["JQFMapId"][1] = 1036
	tDecorationAndAtmosphere_MapData["JQFMapId"][2] = 10364
	tDecorationAndAtmosphere_MapData["NPC"] = 53354

--普通服双龙城1002
local tDecorationAndAtmosphere_SLC = {}
	--礼炮
	tDecorationAndAtmosphere_SLC[1] = {{353,432},{336,432},{336,449},{461,463},{353,380},{338,380}}
	--礼花筒
	tDecorationAndAtmosphere_SLC[2] = {{357,453},{359,453},{357,455},{338,453},{336,453},{338,455},{357,434},{359,434},{357,432},{319,297},{319,299},{319,301},{463,463},{463,465},{459,462},{459,464},{319,346},{319,344},{319,342}}
	--灯笼
	tDecorationAndAtmosphere_SLC[3] = {{372,293},{356,293},{360,293},{364,293},{368,293},{336,293},{332,293},{328,293},{324,293},{320,293}}
	tDecorationAndAtmosphere_SLC[4] = {{335,450},{335,430},{354,430},{354,450},{403,347},{403,361},{417,361},{417,347},{393,381},{393,393},{319,348},{372,348},{372,329},{372,313}}

--激情服双龙城10364	
local tDecorationAndAtmosphere_JQFSLC = {}
	--礼炮
	tDecorationAndAtmosphere_JQFSLC[1] = {{311,244},{346,244},{334,259},{334,299},{293,299},{293,259},{310,284},{318,284},{376,249},{376,257},{317,328},{311,328},{252,232},{246,239}}
	--礼花筒
	tDecorationAndAtmosphere_JQFSLC[2] = {{328,244},{329,244},{327,245},{329,245},{293,257},{294,257},{332,300},{332,298},{334,297},{335,297}}
	--灯笼
	tDecorationAndAtmosphere_JQFSLC[3] = {{318,314},{318,310},{318,306},{309,306},{309,310},{309,314},{284,301},{280,301},{276,301},{272,301},{268,301},{264,301},{260,301},{256,301},{293,257},{296,257},{299,257},{302,257},{305,257},{308,257},{319,257},{322,257},{325,257},{328,257},{331,257},{262,263},{262,260},{258,260},{255,260},{252,260},{252,250},{252,247},{252,244},{252,230},{252,227},{252,224},{252,221},{252,219},{252,216},{252,213},{246,250},{246,247},{246,244},{246,230},{246,227},{246,224},{246,221},{246,219},{246,216},{246,213},{246,253},{246,256},{355,314},{355,310},{355,306},{355,302},{355,298},{355,294},{355,290},{355,286},{355,282},{355,278},{355,274},{355,270},{355,266},{355,262},{355,247},{355,243},{355,240},{355,236},{355,232},{355,228},{355,224},{355,220},{355,216},{355,212},{355,198},{294,215},{294,212},{294,209},{294,206},{294,203},{294,200},{294,197},{305,215},{305,212},{305,209},{305,206},{305,203},{305,196}}
	tDecorationAndAtmosphere_JQFSLC[4] = {{292,283},{292,275},{336,283},{336,275}}

local DecorationAndAtmosphere_NPCLookface = {}
	DecorationAndAtmosphere_NPCLookface[1] = 16960		--礼炮
	DecorationAndAtmosphere_NPCLookface[2] = 16970		--礼花筒
	DecorationAndAtmosphere_NPCLookface[3] = 49400		--灯笼
	DecorationAndAtmosphere_NPCLookface[4] = 17020

----------------------------------逻辑部分---------------------------------------------
function DecorationAndAtmosphere_ChkTime()
	--判断时间
	if Sys_ChkFullTime(tActivityTime["DecorationAndAtmosphere"]["ActivityTime"]) then 
		--生成
		DecorationAndAtmosphere_AddNPC() 
	else 
		--销毁
		DecorationAndAtmosphere_ClearNPC()
	end 
end 

function DecorationAndAtmosphere_AddNPC()
	--判断时间
	if not Sys_ChkFullTime(tActivityTime["DecorationAndAtmosphere"]["ActivityTime"]) then 
		return 
	end 
	local nGlobalId = tDecorationAndAtmosphere_MapData["NPC"]
	local nAdddata = Get_SysDynaGlobalData1(nGlobalId)
	--判断是否已经生成NPC
	if (nAdddata == 0)then
		--判断是否为激情服
		if SpecialServer_ChkNoGiftServer() then
			--生成10364激情服双龙城NPC
			DecorationAndAtmosphere_EstablishNPC(tDecorationAndAtmosphere_MapData["JQFMapId"][2],tDecorationAndAtmosphere_JQFSLC)
			
		else
			--生成1002普通服双龙城NPC
			DecorationAndAtmosphere_EstablishNPC(tDecorationAndAtmosphere_MapData["MapId"],tDecorationAndAtmosphere_SLC)
		end 
	end
	--标记改为已生成
	nAdddata = 1
	Sys_SetSynaGlobalData1(nGlobalId,nAdddata)
end 


--创建NPC
function DecorationAndAtmosphere_EstablishNPC(nMapId,tCoordinate)
	for i,v in pairs (DecorationAndAtmosphere_NPCLookface)do 
		local nLookface = DecorationAndAtmosphere_NPCLookface[i]
		for a,b in pairs(tCoordinate[i])do 
			local nCellX = b[1]
			local nCellY = b[2]
			Npc_CreateDynaNpc("NPC",2,0,nLookface,0,0,nMapId,nCellX,nCellY)
		end 
	end 
end 

function DecorationAndAtmosphere_ClearNPC()
	--在活动时间内不处理
	if Sys_ChkFullTime(tActivityTime["DecorationAndAtmosphere"]["ActivityTime"]) then 
		return 
	end 
	local nGlobalId = tDecorationAndAtmosphere_MapData["NPC"]
	local nAdddata = Get_SysDynaGlobalData1(nGlobalId)
	local nCleardata = Get_SysDynaGlobalData2(nGlobalId)
	--已生成NPC且未清除
	if not (nAdddata == 0) and (nCleardata == 0)then
		--判断是否为激情服
		if SpecialServer_ChkNoGiftServer() then
			Npc_DelDynaNpc(tDecorationAndAtmosphere_MapData["JQFMapId"][2],"name","NPC")
			
		else
			Npc_DelDynaNpc(tDecorationAndAtmosphere_MapData["MapId"],"name","NPC")
		end 
		nAdddata = 0
		Sys_SetSynaGlobalData1(nGlobalId,nAdddata)
	end
end 
----------------------------------时间自检---------------------------------------------
local tDecorationAndAtmosphere_ChkTime = {}
tDecorationAndAtmosphere_ChkTime["Type"] = 1
tDecorationAndAtmosphere_ChkTime["TimeType"] = 4
tDecorationAndAtmosphere_ChkTime["Time"] = "00:00 00:02"
tDecorationAndAtmosphere_ChkTime["Func"] = DecorationAndAtmosphere_ChkTime
table.insert(tSystemTime_InitialData,tDecorationAndAtmosphere_ChkTime)

-------------------------------服务器启动	
tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],DecorationAndAtmosphere_ChkTime)

