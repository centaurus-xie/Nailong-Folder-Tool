' Set objShell = CreateObject("WScript.Shell")
' objShell.Run "mshta.exe ""F:\auto-create-proj\CreateProjectFolder.hta""", 0, False

' 动态获取当前脚本所在的目录
Dim scriptPath, htaPath
scriptPath = Replace(WScript.ScriptFullName, WScript.ScriptName, "")
htaPath = scriptPath & "CreateProjectFolder.hta"

' 使用 mshta.exe 启动 HTA 文件
Dim objShell
Set objShell = CreateObject("WScript.Shell")
objShell.Run "mshta.exe """ & htaPath & """", 0, False