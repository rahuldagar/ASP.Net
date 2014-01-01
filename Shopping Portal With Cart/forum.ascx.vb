Imports System.Data.SqlClient

Partial Class forum
    Inherits System.Web.UI.UserControl
    Dim pro As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim productid As Integer = Request.Params("productid")
        pro = productid
        
        Dim p As projectweb.Products = New projectweb.Products()
        With datalist1
            .DataSource = p.getproductreview(productid)
            .DataBind()
        End With

    End Sub

    Protected Sub submit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles submit.Click
        Dim productid As Integer = pro
        Dim custid As String
        Dim paramcustomerid As String
        Dim ctx As HttpContext = HttpContext.Current
        'If ctx.Request.Cookies("productid") Is Nothing Then
        Dim p As projectweb.Products = New projectweb.Products()
        'Dim x As String = ctx.Request.Cookies("productid").Value.ToString()

        If ctx.Request.Cookies("customerid") Is Nothing Then

            paramcustomerid = "anonymous"
        Else
            paramcustomerid = ctx.Request.Cookies("customerid").Value.ToString()

        End If

        p.addproductreview(productid, paramcustomerid.ToString.Trim, comment.Text.ToString.Trim)

        Response.Redirect("forumdisplay.aspx?productid=" & pro)

        'Else

        'End If
    End Sub
End Class
