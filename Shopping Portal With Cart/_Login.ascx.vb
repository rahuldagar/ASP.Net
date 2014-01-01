
Partial Class Login
    Inherits System.Web.UI.UserControl

    Protected Sub loginbutton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles loginbutton.Click
        Dim c As projectweb.Customers = New projectweb.Customers()
        Dim customerid As String = c.authenticate(username.Text, password.Text)

        If customerid <> "" Then
            Context.Response.Cookies("customerid").Value = customerid.ToString
            Response.Redirect("verify.aspx?customerid=" & customerid)
        Else
            loginerror.Text = "you are not in the database"
        End If
    End Sub

    Protected Sub registerbutton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles registerbutton.Click
        Response.Redirect("userprofile.aspx?action=add")
    End Sub
End Class
