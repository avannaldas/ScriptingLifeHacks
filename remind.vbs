' Ever wanted a quick reminder (in few minutes/hours) for yourself while working?
' Don't want to open up tasks list/organizer and add one?
' This script does that exactly
Set objArgs = WScript.Arguments
msg = "Usage - MsgDialog.vbs <msg in double quotes> <seconds to delay - optional>"
delay = 0
If Not IsNull(objArgs) then
	if objArgs.count >= 1 then
		msg = objArgs(0)
	end if
	if objArgs.count >= 2 then
		if IsNumeric(objArgs(1)) then
			delay = objArgs(1) * 1000
		end if
	end if
end if
WScript.Sleep delay
MsgBox msg
