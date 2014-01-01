
Partial Class Bigcart
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Load
        If Not IsPostBack Then
            Dim cartid As String = Request.Cookies("cartid").Value.ToString()
            If cartid <> "" Then
                Dim s As projectweb.ShoppingCart = New projectweb.ShoppingCart()
                datagrid1.DataSource = s.getcart(cartid)
                datagrid1.DataBind()
                label1.Text = "total order amount:" & FormatNumber(s.getcartsum(cartid), 2)
            End If
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles updatecart.Click
        errormessage.Visible = False
        Dim cartid As String = Request.Cookies("cartid").Value.ToString
        Dim s As projectweb.ShoppingCart = New projectweb.ShoppingCart()
        Dim looper As Long
        Dim strmsg As String
        Try
            For looper = 0 To datagrid1.Items.Count - 1
                Dim deletedcheckbox As CheckBox
                Dim updatedqty As TextBox
                Dim productid As Label
                productid = datagrid1.Items(looper).FindControl("productid")
                deletedcheckbox = datagrid1.Items(looper).FindControl("delete")
                updatedqty = datagrid1.Items(looper).FindControl("quantity")
                If IsNumeric(updatedqty.Text) And CInt(updatedqty.Text) > 0 Then
                    If Convert.ToInt32(updatedqty.Text) <> Convert.ToInt32(datagrid1.DataKeys(looper)) Then
                        s.updatecartquantity(CInt(productid.Text), CInt(updatedqty.Text), cartid, True)
                    End If
                End If

                If deletedcheckbox.Checked = True Or CInt(updatedqty.Text) = 0 Then
                    s.removefromcart(CInt(productid.Text), cartid)
                End If
            Next
        Catch ex1 As Exception
            With errormessage
                .Visible = True
                .Text = ex1.Message.ToString

            End With
        Finally
            With datagrid1
                .DataSource = s.getcart(Request.Cookies("cartid").Value.ToString)
                .DataBind()
            End With
            Label1.Text = "total order amount:" & FormatNumber(s.getcartsum(cartid), 2)
        End Try
    End Sub


    Protected Sub datagrid1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles datagrid1.SelectedIndexChanged

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim ctx As HttpContext = HttpContext.Current
        If ctx.Request.Cookies("customerid") Is Nothing Then
            Response.Redirect("Userlogin.aspx")
        Else
            Response.Redirect("Verify.aspx")
        End If
    End Sub
End Class
