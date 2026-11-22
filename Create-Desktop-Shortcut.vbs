Set sh = CreateObject("WScript.Shell")
here = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)
Set lnk = sh.CreateShortcut(sh.SpecialFolders("Desktop") & "\Manas College Resume Maker.lnk")
lnk.TargetPath = here & "\Start-Resume-Maker.bat"
lnk.WorkingDirectory = here
lnk.IconLocation = here & "\app\icon.ico"
lnk.WindowStyle = 7
lnk.Description = "Manas College Resume Maker"
lnk.Save
MsgBox "Done! A shortcut named 'Manas College Resume Maker' was added to your Desktop.", 64, "Manas College Resume Maker"
