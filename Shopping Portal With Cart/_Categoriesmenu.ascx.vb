Partial Class Categoriesmenu
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Load
        If Request.Params("selection") <> "" Then
            datalist1.SelectedIndex = Request.Params("selection")
        End If
        If Request.Params("action") = "checkout" Then
            datalist1.SelectedIndex = -1
        End If
        Dim cat As projectweb.Products = New projectweb.Products()
        With datalist1
            .DataSource = cat.getallcategories()
            .DataBind()
        End With
    End Sub
End Class