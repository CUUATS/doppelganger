Attribute VB_Name = "Module1"

Sub ReplaceRange()
Attribute ReplaceRange.VB_ProcData.VB_Invoke_Func = " \n14"
'
' ReplaceRange Macro
'

'
    Cells.Replace What:="0-10000", Replacement:="=randbetween(0,10000)", _
        LookAt:=xlWhole, SearchOrder:=xlByRows, MatchCase:=False, SearchFormat _
        :=False, ReplaceFormat:=False
    Cells.Replace What:="10000-20000", Replacement:="=randbetween(10000,20000)" _
        , LookAt:=xlWhole, SearchOrder:=xlByRows, MatchCase:=False, SearchFormat _
        :=False, ReplaceFormat:=False
    Cells.Replace What:="20000-30000", Replacement:="=randbetween(20000,30000)" _
        , LookAt:=xlWhole, SearchOrder:=xlByRows, MatchCase:=False, SearchFormat _
        :=False, ReplaceFormat:=False
    Cells.Replace What:="30000-40000", Replacement:="=randbetween(30000,40000)" _
        , LookAt:=xlWhole, SearchOrder:=xlByRows, MatchCase:=False, SearchFormat _
        :=False, ReplaceFormat:=False
    Cells.Replace What:="40000-50000", Replacement:="=randbetween(40000,50000)" _
        , LookAt:=xlWhole, SearchOrder:=xlByRows, MatchCase:=False, SearchFormat _
        :=False, ReplaceFormat:=False
    Cells.Replace What:="50000-60000", Replacement:="=randbetween(50000,60000)" _
        , LookAt:=xlWhole, SearchOrder:=xlByRows, MatchCase:=False, SearchFormat _
        :=False, ReplaceFormat:=False
    Cells.Replace What:="60000-70000", Replacement:="=randbetween(60000,70000)" _
        , LookAt:=xlWhole, SearchOrder:=xlByRows, MatchCase:=False, SearchFormat _
        :=False, ReplaceFormat:=False
    Cells.Replace What:="70000-80000", Replacement:="=randbetween(70000,80000)" _
        , LookAt:=xlWhole, SearchOrder:=xlByRows, MatchCase:=False, SearchFormat _
        :=False, ReplaceFormat:=False
    Cells.Replace What:="80000-90000", Replacement:="=randbetween(80000,90000)" _
        , LookAt:=xlWhole, SearchOrder:=xlByRows, MatchCase:=False, SearchFormat _
        :=False, ReplaceFormat:=False
    Cells.Replace What:="90000-100000", Replacement:= _
        "=randbetween(90000,100000)", LookAt:=xlWhole, SearchOrder:=xlByRows, _
        MatchCase:=False, SearchFormat:=False, ReplaceFormat:=False
    Cells.Replace What:="100000+", Replacement:="100001", LookAt:=xlWhole, _
        SearchOrder:=xlByRows, MatchCase:=False, SearchFormat:=False, _
        ReplaceFormat:=False
End Sub
