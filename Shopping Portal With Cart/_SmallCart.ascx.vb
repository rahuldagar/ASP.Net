
Partial Class SmallCart
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Dim s As projectweb.ShoppingCart = New projectweb.ShoppingCart()
        Dim cartid As String = s.getcartid()
        If Request.Params("action") = "addtocart" Then
            Dim strcat = Request.Params("categoryid")
            Dim strprodx = Request.Params("productid")
            s.updatecartquantity(CInt(strprodx), 1, cartid, False)
        End If
        If cartid <> "" Then
            With datalist1
                .DataSource = s.getcart(cartid)
                .DataBind()
            End With
        End If
    End Sub
End Class
