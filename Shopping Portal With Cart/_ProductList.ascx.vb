
Partial Class ProductList
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Load, Me.Load
        Dim categoryid As String = Request.Params("categoryid")
        Dim prod As Integer = Request.Params("productid")
        If categoryid = "" Then
            categoryid = 1
        End If
        If categoryid <> "" Then
            Dim p As projectweb.Products = New projectweb.Products()
            With datalist1
                .DataSource = p.getproductsbycategory(categoryid)
                .DataBind()
            End With
        End If

        Dim action As String = Request.Params("action")

        If action = "addtopreference" Then

            Dim ctx As HttpContext = HttpContext.Current
            If ctx.Request.Cookies("productid") Is Nothing Then
            Else

                Dim paramcustomerid = ctx.Request.Cookies("customerid").Value.ToString()
                Dim p As projectweb.Customers = New projectweb.Customers()
                p.addpreference(paramcustomerid, prod)
            End If

        End If
    End Sub

    Protected Sub datalist1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles datalist1.SelectedIndexChanged

    End Sub
End Class
