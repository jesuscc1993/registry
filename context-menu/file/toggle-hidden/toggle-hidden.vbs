Set Shell = WScript.CreateObject("WScript.Shell")
Set FileSystem = CreateObject("Scripting.FileSystemObject")
Set File = FileSystem.GetFile(WScript.Arguments(0))

If (File.Attributes And 2) = 2 Then
  File.Attributes = File.Attributes - 2
Else
  File.Attributes = File.Attributes + 2
End If

Shell.SendKeys "{F5}"
