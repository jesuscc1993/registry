Hidden = "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden"
SSHidden = "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden"

Set Shell = WScript.CreateObject("WScript.Shell")

If Shell.RegRead(Hidden) = 2 Then
  Shell.RegWrite Hidden, 1, "REG_DWORD"
  Shell.RegWrite SSHidden, 1, "REG_DWORD"
Else
  Shell.RegWrite Hidden, 2, "REG_DWORD"
  Shell.RegWrite SSHidden, 0, "REG_DWORD"
End If

Shell.SendKeys "{F5}"
