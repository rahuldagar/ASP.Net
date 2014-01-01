
Partial Class VerifyDetails
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim c As projectweb.Customers = New projectweb.Customers()
        Dim rdr As Data.SqlClient.SqlDataReader = c.getcustomerinfo(Request.Cookies("customerid").Value.ToString)
        While rdr.Read
            company.Text = Convert.ToString(rdr("companyname"))
            contact.Text = Convert.ToString(rdr("contactname"))
            address.Text = Convert.ToString(rdr("address"))
            city.Text = Convert.ToString(rdr("city"))
            regionname.Text = Convert.ToString(rdr("region"))
            postalcode.Text = Convert.ToString(rdr("postalcode"))
            country.Text = Convert.ToString(rdr("country"))
            phone.Text = Convert.ToString(rdr("phone"))
            fax.Text = Convert.ToString(rdr("fax"))
            email.Text = Convert.ToString(rdr("email"))
        End While
    End Sub

    Protected Sub changeprofile_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles changeprofile.Click
        Response.Redirect("userprofile.aspx")
    End Sub

    Protected Sub checkoutbutton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles checkoutbutton.Click
        Response.Redirect("Default.aspx")
    End Sub
End Class
