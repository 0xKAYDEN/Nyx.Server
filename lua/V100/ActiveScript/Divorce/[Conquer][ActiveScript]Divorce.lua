------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]离婚功能
--Creator: 	张磊
--Created:	2016/11/21
------------------------------------------------------------------------------------

function UserSendDivorceMail(idReciever)

	local nActionId = 564888
	local nExistDay = 30
	local sSender = tDivorce_Text["Sender"]
	local sTitle = tDivorce_Text["Title"]
	local sContent = tDivorce_Text["Content"]
	Sys_SendMail(idReciever,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
end





--离婚测试
tSendDivorceMail["tFunction"] = tSendDivorceMail["tFunction"] or {}
table.insert(tSendDivorceMail["tFunction"],UserSendDivorceMail)

