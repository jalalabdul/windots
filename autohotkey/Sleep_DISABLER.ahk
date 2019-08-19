OnMessage(0x219, "notify_change") 
Return 

notify_change(wParam, lParam, msg, hwnd) 
{ 
MsgBox, %wParam% %lParam% %msg% %hwnd% 
}