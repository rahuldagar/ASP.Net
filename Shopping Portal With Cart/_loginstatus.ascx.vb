
Partial Class loginstatus
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim ctx As HttpContext = HttpContext.Current
        'login.Visible = False
        'register.Visible = False
        'logout.Visible = False
        ImageButton1.Visible = False
        ImageButton2.Visible = False
        ImageButton3.Visible = False
        If ctx.Request.Cookies("customerid") Is Nothing Then
            'login.Visible = True
            'register.Visible = True
            ImageButton1.Visible = True
            ImageButton2.Visible = True

        Else
            'logout.Visible = True
            ImageButton3.Visible = True
        End If
    End Sub


    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Response.Redirect("Userlogin.aspx")
    End Sub

    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        Response.Redirect("userprofile.aspx?action=add")
    End Sub

    Protected Sub ImageButton3_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton3.Click
        Response.Cookies("customerid").Expires = DateTime.Now.AddDays(-1)
        Response.Redirect("Default.aspx?action=add")
    End Sub
End Class
