' Save as: exec_test.vbs
Option Explicit

Dim fso, tf, tempPath, outFile, nowStr
Set fso = CreateObject("Scripting.FileSystemObject")
tempPath = CreateObject("WScript.Shell").ExpandEnvironmentStrings("%TEMP%")
nowStr = Year(Now) & "-" & Right("0" & Month(Now),2) & "-" & Right("0" & Day(Now),2) & "_" & _
         Right("0" & Hour(Now),2) & Right("0" & Minute(Now),2) & Right("0" & Second(Now),2)

outFile = tempPath & "\vbs_exec_test_" & nowStr & ".txt"

' create evidence file
Set tf = fso.CreateTextFile(outFile, True)
tf.WriteLine "VBScript executed at " & Now
tf.Close

' show a visible message (GUI)
MsgBox "VBScript executed. Evidence: " & outFile, vbInformation, "exec_test.vbs"
