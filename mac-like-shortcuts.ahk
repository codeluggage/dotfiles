; Shortcuts like mac
; Written by Bob
; https://github.com/m2nlight/AHKShortcutLikeMac

#SingleInstance Off
#HotkeyInterval 2000
#HotkeyModifierTimeout 100
SetWorkingDir, %A_ScriptDir%

global my_name := "MacHotKey"
global my_version := "v0.2.18"
global my_bit := A_PtrSize * 8
global my_website := "https://github.com/m2nlight/AHKShortcutLikeMac"

;if A_Args.Length() > 0 {
;  #NoEnv
;  #Persistent
;  try {
;    cmd := A_Args[1]
;    if (cmd = "movefiles") {
;      ShellMoveFile()
;    } else if (cmd = "emptybin") {
;      EmptyBin()
;    } else if (cmd = "silentemptybin") {
;      EmptyBin(true)
;    } else if (cmd = "SwitchHiddenFiles") {
;      SwitchHiddenFiles()
;      send {F5}
;    } else if (cmd = "help" or cmd = "version") {
;      ShowHelp()
;    } else {
;      ExitApp, 1
;    }
;  }
;  ExitApp
;}

; ---- Numbers


!0::send ^0
!1::send ^1
!2::send ^2
!3::send ^3
!4::send ^4
!5::send ^5
!6::send ^6
!7::send ^7
!8::send ^8
!9::send ^9

+!t::send ^+t
+!r::send ^+r

^a::send {Home}
^e::send {End}

; Weird workaround for making select sort of work
!a::
   send ^{Home}
   send +^{End}
   return
^!a::
   send {AppsKey}a
   send {Esc}
   return
!b::send ^b
!c::send ^c
!d::send ^d
!e::send ^e
!f::send ^f
!g::send ^g
!h::WinMinimize, A
!i::send ^i
!j::send ^j
!k::send ^k
!l::send ^l
!m::send ^m
!n::send ^n
!o::send ^o
!p::send ^p
!q::send !{F4}
!r::send ^r
!s::send ^s
!t::send ^t
!u::send ^u
!v::send ^v
!w::send ^!{F4}
!x::send ^x
!y::send ^y
!z::send ^z
!/::send ^/
!.::send ^.
!,::send ^,
!+::send ^+
![::send ^[
!]::send ^]
!\::send ^\
!-::send ^-

; #S::
    ; Sleep/Suspend:
    ; DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)
    ; Hibernate:
    ;DllCall("PowrProf\SetSuspendState", "int", 1, "int", 0, "int", 0)
    ;Return

*CapsLock::Escape

!Backspace::
    send +{Home}
    send {Del}

!Del::
    send +{End}
    send {Del}

!Left::send {Home}
!Right::send {End}
!Up::send ^{Home}
!Down::send ^{End}

+!Left:: send +{Home}
+!Right:: send +{End}
+!Up:: send +^{Home}
+!Down:: send +^{End}


; Setting up a windows+` shortcut for terminal:

;SetTitleMatchMode,2
;#`::
;    WinGetActiveTitle, Title
;
;    If Instr(Title,"Windows Terminal (Preview)")>0
;        WinActivateBottom, WordPad
;    Else
;        RunOrActivate("WindowsTerminal_8wekyb3d8bbwe!App","WordPad")
;    Return
;
;; Then the coding for the RunOrActivate function, taken from the earlier postings.
;
;RunOrActivate(Target, WinTitle = "") 
;{ 
;   ; Get the filename without a path 
;   SplitPath, Target, TargetNameOnly 
;
;   Process, Exist, %TargetNameOnly% 
;   If ErrorLevel > 0 
;      PID = %ErrorLevel% 
;   Else 
;      Run, %Target%, , , PID 
;
;   ; At least one app (Seapine TestTrack wouldn't always become the active 
;   ; window after using Run), so we always force a window activate. 
;   ; Activate by title if given, otherwise use PID. 
;   If WinTitle <> 
;   { 
;      SetTitleMatchMode, 2 
;      WinWait, %WinTitle%, , 3 
;      TrayTip, , Activating Window Title "%WinTitle%" (%TargetNameOnly%) 
;      WinActivate, %WinTitle% 
;   } 
;   Else 
;   { 
;      WinWait, ahk_pid %PID%, , 3 
;      TrayTip, , Activating PID %PID% (%TargetNameOnly%) 
;      WinActivate, ahk_pid %PID% 
;   } 
;
;
;   SetTimer, RunOrActivateTrayTipOff, 1500 
;} 
;
;; Turn off the tray tip 
;RunOrActivateTrayTipOff: 
;   SetTimer, RunOrActivateTrayTipOff, off 
;   TrayTip 
;Return





; $Alt::Ctrl

; Potential ways to fix the alt tab issue: 
; https://www.reddit.com/r/AutoHotkey/comments/3eh41w/perfect_ctrl_alt_swap/



; https://autohotkey.com/board/topic/96465-switch-alt-and-ctrl-retain-alt-tab/


; ## Special Key ##
;#F1::send #x    ; Show WinX menu in win10
;#F2::send #r    ; Show run dialog
;#`::NextWindow()

; ## Menu ##
;!#H::HideOtherWindow()
;#M::WinMinimize, A
;!#M::WinMinimizeAll

;; File
;+#T::send +^t
;#N::send ^n
;+#N::send +^n
;#O::send ^o

;#+W::send #w
;#S::send ^s
;#P::send ^p
;#+P::send #p
;; Edit
;#Z::send ^z
;+#Z::send ^y
;#X::send ^x
;#C::send ^c
;#V::send ^v
;!+#V::
;  clipboard = %clipboard%
;  send ^v
;return
;#A::send ^a
;#F::send ^f
;#G::send {F3}
;+#G::send +{F3}
;!#F::send ^h

;#Up::send {PgUp}
;#Down::send {PgDn}
;<!Left::send ^{Left}
;<!Right::send ^{Right}
;#+Left::send +{Home}
;#+Right::send +{End}
;#+Up::send +{PgUp}
;#+Down::send +{PgDn}
;!+Left::send +^{Left}
;!+Right::send +^{Right}
;; View
;^#F::send {F11}
;#=::send ^{WheelUp}
;#-::send ^{WheelDown}
;#0::send ^0
;#R::send {F5}
;; Finder

;+#3::send {PrintScreen}
;+#4::send +#s
;+#5::
;  try {
;    Run, "C:\Windows\System32\SnippingTool.exe"
;  }
;Return
;#F3::send #d
;#F10::send {Volume_Mute}
;#F11::send {Volume_Down}
;#F12::send {Volume_Up}
;#+Backspace::RunNewInstance("emptybin")
;#+!Backspace::RunNewInstance("silentemptybin")
;#!Escape::
;  try {
;    Run, "C:\Windows\System32\Taskmgr.exe"
;  }
;Return
;#+!Escape::KillProcess()
;#+!^Escape::KillProcess(true)
;; Explorer
;#IfWinActive ahk_exe Explorer.EXE
;!#V::
;  if CheckMoveFile() {
;    RunNewInstance("movefiles")
;  }
;Return
;#+.::RunNewInstance("SwitchHiddenFiles", true)
;#If ActiveControlIsOfClass("SysListView32") or  ActiveControlIsOfClass("DirectUIHWND")
;#Backspace::send {Del}
;#I::send !{Enter}
;#O::send {Enter}
;#Up::send !{Up}
;#Down::send {Enter}
;#Enter::send {F2}
;#If
;#IfWinActive
;
;; ## custom ##
;; left alt + key
;<!V::send ^v{Enter}          ; paste and go
;<!C::send +{End}^c           ; copy to line end
;<!X::send +{End}^x           ; cut to line end
;
;; CapsLock + key
;CapsLock & Escape::
;  if GetKeyState("Shift") {
;    Run %my_website%
;    return
;  }
;  Reload
;Return
;CapsLock & `::
;  if GetKeyState("Alt") {
;    SetTransparent(0)
;    return
;  }
;Return
;CapsLock & 1::
;  if GetKeyState("Alt") {
;    SetTransparent(10)
;    return
;  }
;Return
;CapsLock & 2::
;  if GetKeyState("Alt") {
;    SetTransparent(20)
;    return
;  }
;Return
;CapsLock & 3::
;  if GetKeyState("Alt") {
;    SetTransparent(30)
;    return
;  }
;Return
;CapsLock & 4::
;  if GetKeyState("Alt") {
;    SetTransparent(40)
;    return
;  }
;  if GetKeyState("Shift") {
;    send +{End}     ; Add Selection
;    return
;  }
;  send {End}         ; Move to line end (VIM: SHIFT+$)
;Return
;CapsLock & 5::
;  if GetKeyState("Alt") {
;    SetTransparent(50)
;    return
;  }
;Return
;CapsLock & 6::
;  if GetKeyState("Alt") {
;    SetTransparent(60)
;    return
;  }
;  if GetKeyState("Shift") {
;    send +{Home}     ; Add Selection
;    return
;  }
;  send {Home}        ; Move to line begin (VIM: SHIFT+^)
;Return
;CapsLock & 7::
;  if GetKeyState("Alt") {
;    SetTransparent(70)
;    return
;  }
;Return
;CapsLock & 8::
;  if GetKeyState("Alt") {
;    SetTransparent(80)
;    return
;  }
;  length = 12
;  if GetKeyState("Shift") {
;    GeneratePassword(length, true)
;    return
;  }
;  GeneratePassword(length)
;Return
;CapsLock & 9::
;  if GetKeyState("Alt") {
;    SetTransparent(90)
;    return
;  }
;Return
;CapsLock & 0::
;  if GetKeyState("Alt") {
;    SetTransparent(100)
;    return
;  }
;Return
;CapsLock & Left::send #{Left}    ; WIN+LEFT
;CapsLock & Down::send #{Down}    ; WIN+DOWN
;CapsLock & Up::send #{Up}        ; WIN+UP
;CapsLock & Right::send #{Right}  ; WIN+RIGHT
;; capslock + key
;CapsLock & Space::sendInput {Space 4}    ; Input 4 space
;CapsLock & H::
;  if GetKeyState("Shift") {
;    send +{Left}     ; Add Selection
;    return
;  }
;  send {Left}        ; Move left (VIM: h)
;Return
;CapsLock & J::
;  if GetKeyState("Shift") {
;    send +{Down}     ; Add Selection
;    return
;  }
;  send {Down}        ; Move down (VIM: j)
;Return
;CapsLock & K::
;  if GetKeyState("Shift") {
;    send +{Up}     ; Add Selection
;    return
;  }
;  send {Up}          ; Move up (VIM: k)
;Return
;CapsLock & L::
;  if GetKeyState("Shift") {
;    send +{Right}     ; Add Selection
;    return
;  }
;  send {Right}       ; Move right (VIM: l)
;Return
;CapsLock & N::
;  if GetKeyState("Shift") {
;    send +{Down}     ; Add Selection
;    return
;  }
;  send {Down}        ; Move down too (VIM: CTRL+N)
;Return
;CapsLock & P::
;  if GetKeyState("Shift") {
;    send +{Up}     ; Add Selection
;    return
;  }
;  send {Up}          ; Move up too (VIM: CTRL+P)
;Return
;CapsLock & B::
;  if GetKeyState("Shift") {
;    send +{PgUp}     ; Add Selection
;    return
;  }
;  send {PgUp}        ; previous page. (VIM: CTRL+B)
;Return
;CapsLock & F::
;  if GetKeyState("Shift") {
;    send +{PgDn}     ; Add Selection
;    return
;  }
;  send {PgDn}        ; next page. (VIM: CTRL+F)
;Return
;CapsLock & G::
;  if GetKeyState("Shift") {
;    send ^{End}    ; Goto page head. (VIM: SHIFT+G)
;    return
;  }
;  send ^{Home}     ; Goto page foot. (VIM: gg)
;Return
;CapsLock & Enter::send {End}{Enter}        ; Start new line
;CapsLock & \::send {Home}{Enter}{Up}       ; Start new line at previous line
;CapsLock & RShift::send {Enter}{Left}      ; Line split
;CapsLock & Backspace::send +{Home}{Backspace}    ; Delete to line begin
;CapsLock & Delete::send +{End}{Backspace}        ; Delete to line end
;CapsLock & D::send {Home}+{End}^c{End}{Enter}^v{Home 2}       ; Duplicate line
;CapsLock & A::send {Home}+{End}      ; Selected current line
;CapsLock & C::send {End}+{Home}^c    ; Selected and Copy current line
;CapsLock & X::send {End}+{Home 2}^x{Delete}         ; Cut current line
;CapsLock & V::send {Home}{Enter}{Up}^v            ; Paste to current line
;CapsLock & Insert::                               ; Paste plain text
;  clipboard = %clipboard%
;  send ^v
;Return
;; function key
;CapsLock & F1::
;  if GetKeyState("Shift") {
;    ListHotkeys    ; Show ListHotKeys window.
;    return
;  }
;  RunNewInstance("help")
;Return
;CapsLock & F2::
;  if GetKeyState("Shift") {
;    WinSet, AlwaysOnTop, Off, A
;    return
;  }
;  WinSet, AlwaysOnTop, On, A
;  ;WinSet, AlwaysOnTop, Toggle, A    ; bring current window to TopMost
;Return
;CapsLock & F3::RunRun("C:\Program Files\Listary\Listary.exe")    ; Run Listary
;CapsLock & F4::RunRun("C:\Tools\Everything\Everything.exe")      ; Run Everything
;CapsLock & F5::RunRun("pageant.exe")
;CapsLock & F6::RunRun("puttygen.exe")
;CapsLock & F7::RunRunCmdAndClose("psftp.exe")
;CapsLock & F8::RunRun("putty.exe")
;CapsLock & F9::RunRunPowershell()  ; Run PowerShell
;CapsLock & F10::RunRunCmd("ver")   ; Run cmd
;CapsLock & F11::RunRunGit()        ; Run git-bash
;CapsLock & F12::RunRunBashOrMSYS()
;
;; ## Hotstrings ##
;:*:]date::
;  FormatTime, CurrentDateTime,, yyyy-M-d
;  sendInput %CurrentDateTime%
;return
;:*:]time::
;  FormatTime, CurrentDateTime,, HH:mm:ss
;  sendInput %CurrentDateTime%
;return
;:*:]now::
;  FormatTime, CurrentDateTime,, yyyy-M-d HH:mm:ss
;  sendInput %CurrentDateTime%
;return
;:*:]longdate::
;  FormatTime, CurrentDateTime,, LongDate
;  sendInput %CurrentDateTime%
;return
;
;; ## Mouse ##
;/*
;WheelUP::
;send {WheelDown}
;Return
;
;WheelDown::
;send {WheelUp}
;Return
;
;WheelLeft::
;send {WheelRight}
;Return
;
;WheelRight::
;send {WheelLeft}
;Return
;*/
;
;; ## functions ##
;ShowHelp() {
;  title=%my_name% %my_version% %my_bit%bit
;  msg=CapsLock+Shift+Esc  Visit github`nCapsLock+Esc  Restart %my_name%`nCapsLock+Alt+[``~0]  Set current window tranparent to 0`%-100`%.`nCapsLock+Shift+Fn   Run xxx as administrator.`n`nCapsLock+F1  Show this.`t+Shift  Show ListHotKeys window.`nCapsLock+F2  Current window always on top.`t+Shift  turn off.`nCapsLock+F3  Run Listary.`nCapsLock+F4  Run Everything.`n`nCapsLock+F5  Run pageant.`nCapsLock+F6  Run puttygen.`nCapsLock+F7  Run psftp.`nCapsLock+F8  Run putty.`n`nCapsLock+F9  Run Powershell.`nCapsLock+F10  Run CMD.`nCapsLock+F11  Run Git shell.`nCapsLock+F12  Run Bash shell(WSL)/MSYS2.`t+Shift  Run MSYS2.`n`nWin+F1  Show WinX menu.`nWin+F2  Show Run dialog.`nWin+F3  Show Desktop.`nWin+F10  Mute.`nWin+F11  Volume down.`nWin+F12  Volume up.`n`nHot strings`n]now`t]time`t]date`t]longdate`t
;  MsgBox ,,%title%,%msg%,
;}
;
;RunRun(command)
;{
;  try {
;    if GetKeyState("Shift") && not A_IsAdmin {
;      Run *RunAs %command%
;      Return
;    }
;    Run %command%
;  }
;}
;
;RunRunCmd(command)
;{
;  try {
;    curPath := CurrentPath()
;    if GetKeyState("Shift") {
;      RunCmd(command, true)
;      Return
;    }
;    RunCmd(command)
;  }
;}
;
;RunRunCmdAndClose(command)
;{
;  try {
;    curPath := CurrentPath()
;    if GetKeyState("Shift") {
;      RunCmdAndClose(command, true)
;      Return
;    }
;    RunCmdAndClose(command)
;  }
;}
;
;RunRunPowershell()
;{
;  try {
;    curPath := CurrentPath()
;    if GetKeyState("Shift") {
;      Run *RunAs powershell.exe -NoExit "cd \"%curPath%\""
;      Return
;    }
;    Run powershell.exe -NoExit "cd \"%curPath%\""
;  }
;}
;
;RunRunGit()
;{
;  if FileExist("C:\Program Files\Git\git-bash.exe")
;  {
;	RunRun("""C:\Program Files\Git\git-bash.exe"" ""--cd=" . CurrentPath() . ".""")
;  }
;  else if FileExist("D:\Program Files\Git\git-bash.exe")
;  {
;	RunRun("""D:\Program Files\Git\git-bash.exe"" ""--cd=" . CurrentPath() . ".""")
;  }
;  else
;  {
;	MsgBox ,,AHK,Sorry`, git-bash.exe don't exist.,3
;  }
;}
;
;RunRunBashOrMSYS()
;{
;  try {
;    if GetKeyState("Shift") {
;      if FileExist("C:\msys64\usr\bin\mintty.exe")
;      {
;        RunMSYS2("C:\msys64\usr\bin\mintty.exe", "MINGW64", true)
;      }
;      else if FileExist("C:\msys32\usr\bin\mintty.exe")
;      {
;        RunMSYS2("C:\msys32\usr\bin\mintty.exe", "MINGW32", true)
;      }
;      else
;      {
;        MsgBox ,,AHK,Sorry`, mintty.exe don't exist.,3
;      }
;      return
;    }
;    
;    if FileExist("C:\Windows\System32\bash.exe")
;    {
;      RunCmdAndClose("""C:\Windows\System32\bash.exe"" --login")    ; Run bash shell in win10 amd64
;    }
;    else if FileExist("C:\Windows\sysnative\bash.exe")
;    {
;      RunCmdAndClose("""C:\Windows\sysnative\bash.exe"" --login")    ; Run bash shell in win10 x86
;    }
;    else if FileExist("C:\msys64\usr\bin\mintty.exe")
;    {
;      RunMSYS2("C:\msys64\usr\bin\mintty.exe", "MINGW64")
;    }
;    else if FileExist("C:\msys32\usr\bin\mintty.exe")
;    {
;      RunMSYS2("C:\msys32\usr\bin\mintty.exe", "MINGW32")
;    }
;    else
;    {
;      MsgBox ,,AHK,Sorry`, bash.exe or mintty.exe don't exist.,3
;    }
;  }
;}
;
;RunCmd(command, runAsAdmin=false)
;{
;  curPath := CurrentPath()
;  if runAsAdmin && not A_IsAdmin {
;    Run *RunAs %comspec% /K "cd /d "%curPath%" & %command%"
;  } else {
;    Run %comspec% /K "cd /d "%curPath%" & %command%"
;  }
;}
;
;RunCmdAndClose(command, runAsAdmin=false)
;{
;  curPath := CurrentPath()
;  if runAsAdmin && not A_IsAdmin {
;    Run *RunAs %comspec% /C "cd /d "%curPath%" & %command%"
;  } else {
;    Run %comspec% /C "cd /d "%curPath%" & %command%"
;  }
;}
;
;RunMSYS2(mintty, mingw, runAsAdmin=false)
;{
;  curPath := CurrentPath()
;  if (SubStr(curPath, -1) == ":\") {
;    curPath .= "\"  ; like C:\\
;  }
;  parameter = "-i /msys2.ico --dir `"%curPath%`" /bin/env MSYSTEM=%mingw% CHERE_INVOKING=1 /usr/bin/bash -l"
;  if runAsAdmin && not A_IsAdmin {
;    Run *RunAs "%mintty%" "%parameter%"
;  } else {
;    Run "%mintty%" "%parameter%"
;  }
;}
;
;EmptyBin(isNoConfirm=false)
;{
;  ;SHERB_NOCONFIRMATION = 0x000001;
;  ;SHERB_NOPROGRESSUI = 0x000002;
;  ;SHERB_NOSOUND = 0x000004;
;  dwFlags = 0x00
;  if(isNoConfirm) {
;    dwFlags = 0x01
;  }
;  DllCall("Shell32\SHEmptyRecycleBin", "Ptr", hwnd, "Ptr", NULL, "UInt", dwFlags)
;}
;
;KillProcess(byname=false) 
;{
;  WinGet, cur_pid, PID, A
;  WinGet, process_name, ProcessName, A
;  if (process_name = "Explorer.EXE") {
;    return
;  }
;  try {
;   if not A_IsAdmin {
;     if byname {
;       Run *RunAs taskkill.exe /F /IM %process_name%,,Hide
;       return
;     }
;     Run *RunAs taskkill.exe /F /PID %cur_pid%,,Hide
;     return
;   }
;   if byname {
;     Run taskkill.exe /F /IM %process_name%,,Hide
;     return
;   }
;   Run taskkill.exe /F /PID %cur_pid%,,Hide
;  }
;}
;
;HideOtherWindow()
;{
;  WinGetClass, cur_class, A
;  DetectHiddenText, Off
;  WinGet, id, list,,, Program Manager
;  Loop, %id%
;  {
;    this_id := id%A_Index%
;    WinGetClass, this_class, ahk_id %this_id%
;    if (this_class = cur_class or this_class = "Progman" or this_class = "WorkerW" or this_class = "Shell_TrayWnd" or this_class = "Internet Explorer_Hidden") {
;      continue
;    }
;    WinMinimize, ahk_id %this_id%
;  }
;}
;
;NextWindow()
;{
;  WinGetClass, cur_class, A
;  acitve_id := 0
;  DetectHiddenText, On
;  WinGet, id, list,,, Program Manager
;  ; don't break the loop
;  Loop, %id%
;  {
;    this_id := id%A_Index% 
;    WinGetClass, this_class, ahk_id %this_id%
;    if (this_class != cur_class) {
;      continue
;    }
;    if (acitve_id = 0) {
;      active_id := this_id
;    }
;  }
;  if (active_id != 0) {
;    WinActivate, ahk_id %active_id%
;  }
;}
;
;RealCurrentPath() {
;  WinGetClass, cur_class, A
;  WinGet, process_name, ProcessName, A
;  if ((cur_class = "WorkerW" or cur_class = "Progman") and process_name = "Explorer.EXE") {
;    return A_Desktop
;  }
;  return CurrentPath(false, false)
;}
;
;CurrentPath(last = true, fallbackToDesktop = true)
;{
;  url := GetCurrentExplorerURL(last)
;  if (url) {
;    return ConvertExplorerURLToPath(url)
;  }
;  if (fallbackToDesktop) {
;    return A_Desktop
;  }
;  return ""
;}
;
;GetCurrentExplorerURL(getLastWhenNoFound=false)
;{
;  WinGet, curhwnd, ID, A
;  for pExp in ComObjCreate("Shell.Application").Windows
;  {
;    try
;    {
;      if (pExp.FullName = "C:\WINDOWS\EXPLORER.EXE") {
;        if (pExp.hwnd = curhwnd) {
;          return pExp.LocationURL
;        }
;        if(StrLen(pExp.LocationURL)> 0) {
;          last := pExp.LocationURL
;        }
;      }
;    }
;  }
;  if(getLastWhenNoFound and last) {
;    return last
;  }
;}
;
;ConvertExplorerURLToPath(url)
;{
;  If !url
;    Return ""
;  path := url
;  path := RegExReplace(path, "ftp://.*@","ftp://")
;  StringReplace, path, path, file:///
;  StringReplace, path, path, /, \, All
;  Loop
;    If RegExMatch(path, "i)(?<=%)[\da-f]{1,2}", hex)
;      StringReplace, path, path, `%%hex%, % Chr("0x" . hex), All
;    Else Break
;  Return path 
;}
;
;ActiveControlIs(Control) {  
;    ControlGetFocus, FocusedControl, A  
;    return (FocusedControl=Control)  
;}  
;
;ActiveControlIsOfClass(Class) {  
;    ControlGetFocus, FocusedControl, A  
;    ControlGet, FocusedControlHwnd, Hwnd,, %FocusedControl%, A  
;    WinGetClass, FocusedControlClass, ahk_id %FocusedControlHwnd%  
;    return (FocusedControlClass=Class)  
;}
;
;GeneratePassword(length, withSpecialChars=false) {
;  Characters = abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890
;  if withSpecialChars {
;    Characters .= "``~!@#$`%^&*()_+-=[]{}\|`;:'""`,.<>/?"
;  }
;  Loop %length% {
;    Random, r, 1, % StrLen(Characters)
;    Passwords .= SubStr(Characters, r, 1)
;  }
;  sendInput {Raw}%Passwords%
;}
;
;SetTransparent(value) {
;  if (value is not integer) {
;    return
;  }
;  if (value >= 100 or value < 0) {
;    WinSet, Transparent, 255, A
;    return
;  }
;  value := value*255//100
;  WinSet, Transparent, %value%, A
;}
;
;RunNewInstance(cmd, runAsAdmin = false) {
;  If A_IsCompiled {
;    if (runAsAdmin && not A_IsAdmin) {
;      try {
;        Run *RunAs %A_ScriptFullPath% %cmd%
;      }
;      return
;    }
;    Run %A_ScriptFullPath% %cmd%
;    return
;  }
;  if (runAsAdmin && not A_IsAdmin) {
;    try {
;      Run *RunAs %A_AhkPath% %A_ScriptFullPath% %cmd%
;    }
;    return
;  }
;  Run %A_AhkPath% %A_ScriptFullPath% %cmd%
;}
;
;SwitchHiddenFiles() {
;  SetRegView %my_bit%
;  try {
;    RegRead, OutputVar, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, ShowSuperHidden
;  }
;  catch {
;    OutputVar = 0
;  }
;  if (OutputVar and OutputVar = 1) {
;    RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, ShowSuperHidden, 0
;    RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 2
;  } else {
;    RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, ShowSuperHidden, 1
;    RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 1
;  }
;}
;
;CheckMoveFile() {
;  target_dir := RealCurrentPath()
;  if StrLen(target_dir) = 0 {
;    return false
;  }
;  source_files := ""
;  Loop, parse, clipboard, `n, `r
;  {
;    IfNotExist, %A_LoopField%, continue
;    source_files = %source_files%%A_LoopField%|
;  }
;  if StrLen(source_files) = 0 {
;    return false
;  }
;  return true
;}
;
;ShellMoveFile() {
;  target_dir := RealCurrentPath()
;  if StrLen(target_dir) = 0 {
;    return
;  }
;  ; fix network path "file://ipaddress/path" to "\\ipaddress\path"
;  StringReplace, target_dir, target_dir, file:, , All
;  StringReplace, target_dir, target_dir, /, \, All
;  
;  source_files := ""
;  Loop, parse, clipboard, `n, `r
;  {
;    IfNotExist, %A_LoopField%, continue
;    source_files = %source_files%%A_LoopField%|
;  }
;  if StrLen(source_files) = 0 {
;    return
;  }
;  ;msgbox Will to move %source_files% to %target_dir%
;  ShellFileOperation("FO_MOVE", source_files, target_dir,"FOF_ALLOWUNDO|FOF_SIMPLEPROGRESS|FOF_NOCONFIRMMKDIR")     
;}
;
;
;
;
;; https://autohotkey.com/board/topic/51486-shellfileoperation-library/
;; https://github.com/7plus/7plus/blob/f3b270f7b182d2ad023efb00f51e6f77b3029520/Shell.ahk
;; https://msdn.microsoft.com/en-us/library/windows/desktop/bb759795(v=vs.85).aspx
;; ShellFileOperation("FO_MOVE", "::::", "::::","FOF_ALLOWUNDO|FOF_SIMPLEPROGRESS|FOF_NOCONFIRMMKDIR")     
;; MsgBox % ErrorLevel
;ShellFileOperation( fileO=0x0, fSource="", fTarget="", flags=0x0, ghwnd=0x0 )     
;{
;    ;dout_f(A_ThisFunc)
;    FO_MOVE   := 0x1
;    FO_COPY   := 0x2
;    FO_DELETE := 0x3
;    FO_RENAME := 0x4
;    
;    FOF_MULTIDESTFILES :=              0x1                ; Indicates that the to member specifies multiple destination files (one for each source file) rather than one directory where all source files are to be deposited.
;    FOF_SILENT :=                     0x4                ; Does not display a progress dialog box.
;    FOF_RENAMEONCOLLISION :=         0x8                ; Gives the file being operated on a new name (such as "Copy #1 of...") in a move, copy, or rename operation if a file of the target name already exists.
;    FOF_NOCONFIRMATION :=             0x10            ; Responds with "yes to all" for any dialog box that is displayed.
;    FOF_ALLOWUNDO :=                 0x40            ; Preserves undo information, if possible. With del, uses recycle bin.
;    FOF_FILESONLY :=                 0x80            ; Performs the operation only on files if a wildcard filename (*.*) is specified.
;    FOF_SIMPLEPROGRESS :=             0x100            ; Displays a progress dialog box, but does not show the filenames.
;    FOF_NOCONFIRMMKDIR :=             0x200            ; Does not confirm the creation of a new directory if the operation requires one to be created.
;    FOF_NOERRORUI :=                 0x400            ; don't put up error UI
;    FOF_NOCOPYSECURITYATTRIBS :=     0x800            ; dont copy file security attributes
;    FOF_NORECURSION :=                 0x1000            ; Only operate in the specified directory. Don't operate recursively into subdirectories.
;    FOF_NO_CONNECTED_ELEMENTS :=     0x2000            ; Do not move connected files as a group (e.g. html file together with images). Only move the specified files.
;    FOF_WANTNUKEWARNING :=             0x4000            ; send a warning if a file is being destroyed during a delete operation rather than recycled. This flag partially overrides FOF_NOCONFIRMATION.
;
;    
;    ; no more annoying numbers to deal with (but they should still work, if you really want them to)
;    fileO := %fileO% ? %fileO% : fileO
;    
;    ; the double ternary was too fun to pass up
;    _flags := 0
;    Loop Parse, flags, |
;        _flags |= %A_LoopField%    
;    flags := _flags ? _flags : (%flags% ? %flags% : flags)
;    
;    If ( SubStr(fSource,0) != "|" )
;        fSource := fSource . "|"
;
;    If ( SubStr(fTarget,0) != "|" )
;        fTarget := fTarget . "|"
;    
;    char_size := A_IsUnicode ? 2 : 1
;    char_type := A_IsUnicode ? "UShort" : "Char"
;    
;    fsPtr := &fSource
;    Loop % StrLen(fSource)
;        if NumGet(fSource, (A_Index-1)*char_size, char_type) = 124
;            NumPut(0, fSource, (A_Index-1)*char_size, char_type)
;
;    ftPtr := &fTarget
;    Loop % StrLen(fTarget)
;        if NumGet(fTarget, (A_Index-1)*char_size, char_type) = 124
;            NumPut(0, fTarget, (A_Index-1)*char_size, char_type)
;    /*
;    typedef struct _SHFILEOPSTRUCT {
;      HWND         hwnd; A_PtrSize
;      UINT         wFunc; 4
;      PCZZTSTR     pFrom; <-- LPCWSTR, A_PtrSize
;      PCZZTSTR     pTo; A_PtrSize
;      FILEOP_FLAGS fFlags; <-- WORD, 2
;      BOOL         fAnyOperationsAborted;, 4
;      LPVOID       hNameMappings; A_PtrSize
;      PCTSTR       lpszProgressTitle; A_PtrSize
;    } SHFILEOPSTRUCT, *LPSHFILEOPSTRUCT;
;    Total:
;    A_PtrSize + 4 (+ 4 Padding) Padding + A_PtrSize + A_PtrSize + 2 + 2 Padding + 4 + A_PtrSize + A_PtrSize = 12 (+4) + 5 x A_PtrSize
;    */
;    VarSetCapacity( SHFILEOPSTRUCT, 12 + 5 * A_PtrSize, 0)     ; Encoding SHFILEOPSTRUCT
;    NumPut( ghwnd, &SHFILEOPSTRUCT, "PTR")                     ; hWnd of calling GUI
;    NumPut( fileO, SHFILEOPSTRUCT, A_PtrSize, "UINT")          ; File operation
;    NumPut( fsPtr, SHFILEOPSTRUCT, 2 * A_PtrSize, "PTR")       ; Source file / pattern
;    NumPut( ftPtr, SHFILEOPSTRUCT, 3 * A_PtrSize, "PTR" )      ; Target file / folder
;    NumPut( flags, SHFILEOPSTRUCT, 4 * A_PtrSize, "Short" )    ; options
;
;    DllCall( "Shell32\SHFileOperation" . (A_IsUnicode ? "W" : "A"), Ptr, &SHFILEOPSTRUCT )
;    SHFILEOPSTRUCT := ""
;    Return
;}
;