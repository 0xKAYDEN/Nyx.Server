--------------------------------------------------------------------------------------------
--Name:		160324[简体征服][功能脚本]战旗争霸赛系统奖励可配置
--Creator: 	张世超
--Created:		2016/03/17
-------------------------------------------------------------------------------------------
-- 13003 = V100\功能脚本\[征服][功能脚本]战旗争霸赛系统奖励可配置(简体征服).lua
-- 13003 = V100\EditionScript\[Conquer][EditionScript]AwardAdj(CaptureTheFlag)Cnzf.lua


-- 新增程序调用LUA接口
	-- </F>Vlm_Award_AwardAdj_</N>%d</N>%lu</N>%lu</N>%lu</N>%lu</N>%lu</N>%lu</N>%lu</N>%lu
	-- 第一个参数表示是否为跨服战旗赛，0为本服，1为跨服。后面8个参数对应前8名帮派ID，ID可能为0。
-- 新增LUA接口:
	-- //帮派获得战旗赛或者跨服战旗赛奖励 参1: 帮派ID  参2:是否为跨服战旗赛(0为本服，1为跨服)，参3:排名，参4:天石数量，参5:金币数量（以万为单位）， 成功返回true，否则返回false
	-- SynAwardVlmAwardAdj_(1,2,3,4,5)
	-- //在帮派广播一条消息， 参1:帮派ID，参2:广播内容，参3:不接受消息玩家ID，成功返回true，否则返回false	
	-- BroadcastSynTalk(id,sText,0)
	

function Vlm_Award_Prize(nMark,SysId1,SysId2,SysId3,SysId4,SysId5,SysId6,SysId7,SysId8)
	--战旗争霸赛天石奖励
	local tAwardAdj_CpPrize = {}
	tAwardAdj_CpPrize[1] = 3000
	tAwardAdj_CpPrize[2] = 2000
	tAwardAdj_CpPrize[3] = 1000
	tAwardAdj_CpPrize[4] = 0
	tAwardAdj_CpPrize[5] = 0
	tAwardAdj_CpPrize[6] = 0
	tAwardAdj_CpPrize[7] = 0
	tAwardAdj_CpPrize[8] = 0
	--战旗争霸赛金币奖励
	local tAwardAdj_MoneyPrize = {}
	tAwardAdj_MoneyPrize[1] = 0
	tAwardAdj_MoneyPrize[2] = 0
	tAwardAdj_MoneyPrize[3] = 0
	tAwardAdj_MoneyPrize[4] = 0
	tAwardAdj_MoneyPrize[5] = 0
	tAwardAdj_MoneyPrize[6] = 0
	tAwardAdj_MoneyPrize[7] = 0
	tAwardAdj_MoneyPrize[8] = 0
	
	--跨服战旗争霸赛天石奖励
	local tCrossAwardAdj_CpPrize = {}
	tCrossAwardAdj_CpPrize[1] = 10000
	tCrossAwardAdj_CpPrize[2] = 8000
	tCrossAwardAdj_CpPrize[3] = 6000
	tCrossAwardAdj_CpPrize[4] = 5000
	tCrossAwardAdj_CpPrize[5] = 4000
	tCrossAwardAdj_CpPrize[6] = 3000
	tCrossAwardAdj_CpPrize[7] = 2000
	tCrossAwardAdj_CpPrize[8] = 1000
	--跨服战旗争霸赛金币奖励
	local tCrossAwardAdj_MoneyPrize = {}
	tCrossAwardAdj_MoneyPrize[1] = 0
	tCrossAwardAdj_MoneyPrize[2] = 0
	tCrossAwardAdj_MoneyPrize[3] = 0
	tCrossAwardAdj_MoneyPrize[4] = 0
	tCrossAwardAdj_MoneyPrize[5] = 0
	tCrossAwardAdj_MoneyPrize[6] = 0
	tCrossAwardAdj_MoneyPrize[7] = 0
	tCrossAwardAdj_MoneyPrize[8] = 0
	
	local tSysId ={}
	table.insert(tSysId,SysId1)
	table.insert(tSysId,SysId2)
	table.insert(tSysId,SysId3)
	table.insert(tSysId,SysId4)
	table.insert(tSysId,SysId5)
	table.insert(tSysId,SysId6)
	table.insert(tSysId,SysId7)
	table.insert(tSysId,SysId8)
--该global记录是否为拉斯维加斯服务器
	local tGlobal_Id = {}
	tGlobal_Id[1] = 52942

	if nMark == 0 then
		--本服战旗
		for i,v in ipairs(tSysId) do
			local nCpPrize = tAwardAdj_CpPrize[i]
			local nMoneyPrize = tAwardAdj_MoneyPrize[i]
			if (v > 0) then
				if nCpPrize ~= 0 or nCpPrize ~= 0 then
					--新服活动期间奖励翻倍 2019.05.22 吴燕柚
					local nPKServer = Get_SysDynaGlobalData(53409, 0)
					if Sys_ChkFullTime(tActivityTime["MatchRewardDouble"]["ActivityTime"]) and (nPKServer ~= 0) then
						nCpPrize = tAwardAdj_CpPrize[i]*2
						nMoneyPrize = tAwardAdj_MoneyPrize[i]*2
					end
					--191008[英文征服][活动脚本]10.19组队PK赛和战旗争霸赛奖励双倍 吴燕柚
					local nAmericanServer = Get_SysDynaGlobalData(53760, 0)
					if Sys_ChkFullTime(tActivityTime["AmericanMatchRewardDouble"]["ActivityTime"]) and (nAmericanServer == 0) then
						nCpPrize = tAwardAdj_CpPrize[i]*2
						nMoneyPrize = tAwardAdj_MoneyPrize[i]*2
					end
					-- 191031[英文征服][活动脚本]PK赛奖励翻倍（11.19-12.2）
					if Sys_ChkFullTime(tActivityTime["AllPkRewardDouble"]["ActivityTime"]) then
						nCpPrize = tAwardAdj_CpPrize[i]*2
						nMoneyPrize = tAwardAdj_MoneyPrize[i]*2
					end
					local nJunePKServer = Get_SysDynaGlobalData(54484, 0)
					if Sys_ChkFullTime(tActivityTime["JuneNewServerDouble"]["Activity"]) and (nJunePKServer ~= 0) then
						nCpPrize = tAwardAdj_CpPrize[i]*2
						nMoneyPrize = tAwardAdj_MoneyPrize[i]*2
					end
					if Sys_ChkFullTime(tActivityTime["ShenYuElitePK"]["ActivityTime"]) and (Get_SysDynaGlobalData(50527,0) ~= 0) then
						local nSynLordId = Get_SynWangId(v)
						if i == 1 then
							Sys_SendMail(nSynLordId,0,0,578893,0,7,tVideoPushAward_Test["Sender"],"","")
						elseif i == 2 then
							Sys_SendMail(nSynLordId,0,0,578894,0,7,tVideoPushAward_Test["Sender"],"","")
						end
					end
					if SynAwardVlmPrize(v,nMark,i,nCpPrize,nMoneyPrize) then
						local sText = string.format(tAwardAdj_Text[i],nCpPrize)
						BroadcastSynTalk(v,sText,0)
						
						-- LOG格式为：帮派ID 帮派名 金币类型 金币数量 时间
						local sName = Get_UserSynDicateName(v)
						local sLogFile = "gmlog/money_record"
						local nMoney = nMoneyPrize * 10000
						local sLogText = v.."	"..sName.."	"..v.."	".."0".."	".."11".."	"..nMoney.."	"
						SaveCustomLog(sLogFile,sLogText)
					end
				end
			end
		end
	elseif nMark == 1 then
		-- 跨服战旗
		for i,v in ipairs(tSysId) do
			if (v > 0) then
				local nCpPrize = tCrossAwardAdj_CpPrize[i]
				local nMoneyPrize = tCrossAwardAdj_MoneyPrize[i]
				local nGlobalId = tGlobal_Id[1]
				local nGlobalData0 = Get_SysDynaGlobalData0(nGlobalId)
				if Sys_ChkFullTime(tActivityTime["tKingsOfTheFlagActivity"]["ActivityTime"]) then
					if nGlobalData0 == 0 then 
						nCpPrize = tCrossAwardAdj_CpPrize[i]*2
						nMoneyPrize = tCrossAwardAdj_MoneyPrize[i]*2
					end
				end
				-- 191031[英文征服][活动脚本]PK赛奖励翻倍（11.19-12.2）
				if Sys_ChkFullTime(tActivityTime["AllPkRewardDouble"]["ActivityTime"]) then
					nCpPrize = tCrossAwardAdj_CpPrize[i]*2
					nMoneyPrize = tCrossAwardAdj_MoneyPrize[i]*2
				end
				if nCpPrize ~= 0 or nMoneyPrize ~= 0 then
					if SynAwardVlmPrize(v,nMark,i,nCpPrize,nMoneyPrize) then
						local sText = string.format(tCrosssAwardAdj_Text[i],nCpPrize)
						BroadcastSynTalk(v,sText,0)

						-- LOG格式为：帮派ID 帮派名 金币类型 金币数量 时间
						--跨服获取不到帮派名，不记录
						-- local sName = Get_UserSynDicateName(v)
						local sLogFile = "gmlog/money_record"
						local nMoney = nMoneyPrize * 10000
						local sLogText = v.."	".."0".."	".."12".."	"..nMoney.."	"
						SaveCustomLog(sLogFile,sLogText)
					end
				end
			end
		end
	end	
end 
 
 



--文字区
	--战旗争霸赛
	-- tAwardAdj_Text = {}
	-- tAwardAdj_Text[1] = "战旗争霸赛第1名 获得 %s 天石和 %s 万银两。"
	-- tAwardAdj_Text[2] = "战旗争霸赛第2名 获得 %s 天石和 %s 万银两。"
	-- tAwardAdj_Text[3] = "战旗争霸赛第3名 获得 %s 天石和 %s 万银两。"
	-- tAwardAdj_Text[4] = "战旗争霸赛第4名 获得 %s 天石和 %s 万银两。"
	-- tAwardAdj_Text[5] = "战旗争霸赛第5名 获得 %s 天石和 %s 万银两。"
	-- tAwardAdj_Text[6] = "战旗争霸赛第6名 获得 %s 天石和 %s 万银两。"
	-- tAwardAdj_Text[7] = "战旗争霸赛第7名 获得 %s 天石和 %s 万银两。"
	-- tAwardAdj_Text[8] = "战旗争霸赛第8名 获得 %s 天石和 %s 万银两。"

	-- 跨服战旗争霸赛
	-- tCrosssAwardAdj_Text = {}
	-- tCrosssAwardAdj_Text[1] = "跨服战旗争霸赛第1名 获得 %s 天石和 %s 万银两。"
	-- tCrosssAwardAdj_Text[2] = "跨服战旗争霸赛第2名 获得 %s 天石和 %s 万银两。"
	-- tCrosssAwardAdj_Text[3] = "跨服战旗争霸赛第3名 获得 %s 天石和 %s 万银两。"
	-- tCrosssAwardAdj_Text[4] = "跨服战旗争霸赛第4名 获得 %s 天石和 %s 万银两。"
	-- tCrosssAwardAdj_Text[5] = "跨服战旗争霸赛第5名 获得 %s 天石和 %s 万银两。"
	-- tCrosssAwardAdj_Text[6] = "跨服战旗争霸赛第6名 获得 %s 天石和 %s 万银两。"
	-- tCrosssAwardAdj_Text[7] = "跨服战旗争霸赛第7名 获得 %s 天石和 %s 万银两。"
	-- tCrosssAwardAdj_Text[8] = "跨服战旗争霸赛第8名 获得 %s 天石和 %s 万银两。"	