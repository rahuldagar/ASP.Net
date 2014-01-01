Imports System.Diagnostics

Partial Class _Default
    Inherits System.Web.UI.Page
    Declare Sub Sleep Lib "kernel32" Alias "Sleep" _
   (ByVal dwMilliseconds As Long)

    Sub sleep()

    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim i, j As Integer

        Shell("f:\INS.exe" & " " & TextBox1.Text)
        Sleep()


    End Sub

    Protected Sub TextBox1_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox1.TextChanged

    End Sub

    Protected Sub Page_PreLoad(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreLoad

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
