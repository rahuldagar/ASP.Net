
Partial Class CustomerDetails
    Inherits System.Web.UI.UserControl

    Protected Sub SaveButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles SaveButton.Click
        Dim c As projectweb.Customers = New projectweb.Customers()
        Dim addnew As Boolean
        Dim ctx As HttpContext = HttpContext.Current
        If ctx.Request.Cookies("customerid") Is Nothing Then
            addnew = True
        Else
            addnew = False
        End If
        If c.addeditcustomer(email.Text.ToString.Trim, password1.Text.ToString.Trim, company.Text.ToString.Trim, contactname.Text.ToString.Trim, title.Text.ToString.Trim, address.Text.ToString.Trim, city.Text.ToString.Trim, region.Text.ToString.Trim, postalcode.Text.ToString.Trim, country.Text.ToString.Trim, phone.Text.ToString.Trim, Fax.Text.ToString.Trim, addnew) Then
            Context.Response.Cookies("customerid").Value = email.Text.ToString
            Response.Redirect("verify.aspx?customerid=" & email.Text.ToString)
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim ctx As HttpContext = HttpContext.Current
        If ctx.Request.Cookies("customerid") Is Nothing Then

        Else
            Dim custid As String = Request.Cookies("customerid").Value.ToString
            Dim c As projectweb.Customers = New projectweb.Customers()
            Dim rdr As Data.SqlClient.SqlDataReader = c.getcustomerinfo(custid)
            While rdr.Read
                company.Text = Convert.ToString(rdr("companyname"))
                title.Text = Convert.ToString(rdr("contacttitle"))
                contactname.Text = Convert.ToString(rdr("contactname"))
                address.Text = Convert.ToString(rdr("address"))
                city.Text = Convert.ToString(rdr("city"))
                region.Text = Convert.ToString(rdr("region"))
                postalcode.Text = Convert.ToString(rdr("postalcode"))
                country.Text = Convert.ToString(rdr("country"))
                phone.Text = Convert.ToString(rdr("phone"))
                Fax.Text = Convert.ToString(rdr("fax"))
                email.Text = Convert.ToString(rdr("email"))
                email.ReadOnly = True
            End While
        End If
    End Sub
End Class
