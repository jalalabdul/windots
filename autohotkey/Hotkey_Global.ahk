#NoTrayIcon

#IfWinActive, ahk_class illustrator
{
`::Delete
}

#IfWinActive, Adobe XD CC
{
`::Delete
}

#IfWinActive ahk_class Chrome_WidgetWin_1
{
    ^WheelDown::return 
    ^WheelUp::return
    #MaxHotkeysPerInterval 1000
}