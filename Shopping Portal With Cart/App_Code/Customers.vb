Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Namespace projectweb
    Public Class Customers
        Function authenticate(ByVal username As String, ByVal password As String) As String
            Dim cn As SqlConnection
            cn = New SqlConnection("Data Source=RAHUL-PC\SQLEXPRESS;Initial Catalog=store;Integrated Security=True;Pooling=False")
            cn.Open()
            Dim cmd As SqlCommand = New SqlCommand("authenticate", cn)
            cmd.CommandType = Data.CommandType.StoredProcedure
            Dim paramusername As SqlParameter = New SqlParameter("@username", Data.SqlDbType.NVarChar, 50)
            paramusername.Value = username
            cmd.Parameters.Add(paramusername)
            Dim parampassword As SqlParameter = New SqlParameter("@password", Data.SqlDbType.NVarChar, 50)
            parampassword.Value = password
            cmd.Parameters.Add(parampassword)
            Dim paramcustomerid As SqlParameter = New SqlParameter("@customerid", Data.SqlDbType.NVarChar, 50)
            paramcustomerid.Direction = Data.ParameterDirection.Output
            cmd.Parameters.Add(paramcustomerid)
            cmd.ExecuteNonQuery()
            If Not IsDBNull(paramcustomerid.Value) Then
                Return CType(paramcustomerid.Value, String)
            Else
                Return ""
            End If
        End Function


        Function addeditcustomer(ByVal username As String, ByVal password As String, ByVal companyname As String, ByVal contactname As String, ByVal contacttitle As String, ByVal address As String, ByVal city As String, ByVal region As String, ByVal postalcode As String, ByVal country As String, ByVal phone As String, ByVal fax As String, ByVal addnew As String) As Boolean
            Dim cn As SqlConnection
            cn = New SqlConnection("Data Source=RAHUL-PC\SQLEXPRESS;Initial Catalog=store;Integrated Security=True;Pooling=False")
            Dim cmd As SqlCommand
            If addnew = True Then
                cmd = New SqlCommand("insertcustomer", cn)
            Else
                cmd = New SqlCommand("updatecustomer", cn)
            End If
            cmd.CommandType = Data.CommandType.StoredProcedure
            Dim paramusername As SqlParameter = New SqlParameter("@customerid", Data.SqlDbType.NVarChar, 50)
            paramusername.Value = username
            cmd.Parameters.Add(paramusername)
            Dim parampassword As SqlParameter = New SqlParameter("@password", Data.SqlDbType.NVarChar, 50)
            parampassword.Value = password
            cmd.Parameters.Add(parampassword)
            Dim paramcompanyname As SqlParameter = New SqlParameter("@companyname", Data.SqlDbType.NVarChar, 50)
            paramcompanyname.Value = companyname
            cmd.Parameters.Add(paramcompanyname)
            Dim paramcontactname As SqlParameter = New SqlParameter("@contactname", Data.SqlDbType.NVarChar, 50)
            paramcontactname.Value = contactname
            cmd.Parameters.Add(paramcontactname)
            Dim paramcontacttitle As SqlParameter = New SqlParameter("@contacttitle", Data.SqlDbType.NVarChar, 50)
            paramcontacttitle.Value = contacttitle
            cmd.Parameters.Add(paramcontacttitle)
            Dim paramaddress As SqlParameter = New SqlParameter("@address", Data.SqlDbType.NVarChar, 50)
            paramaddress.Value = address
            cmd.Parameters.Add(paramaddress)
            Dim paramcity As SqlParameter = New SqlParameter("@city", Data.SqlDbType.NVarChar, 50)
            paramcity.Value = city
            cmd.Parameters.Add(paramcity)
            Dim paramregion As SqlParameter = New SqlParameter("@region", Data.SqlDbType.NVarChar, 50)
            paramregion.Value = region
            cmd.Parameters.Add(paramregion)
            Dim parampostalcode As SqlParameter = New SqlParameter("@postalcode", Data.SqlDbType.NVarChar, 50)
            parampostalcode.Value = postalcode
            cmd.Parameters.Add(parampostalcode)
            Dim paramcountry As SqlParameter = New SqlParameter("@country", Data.SqlDbType.NVarChar, 50)
            paramcountry.Value = country
            cmd.Parameters.Add(paramcountry)
            Dim paramphone As SqlParameter = New SqlParameter("@phone", Data.SqlDbType.NVarChar, 50)
            paramphone.Value = phone
            cmd.Parameters.Add(paramphone)
            Dim paramfax As SqlParameter = New SqlParameter("@fax", Data.SqlDbType.NVarChar, 50)
            paramfax.Value = fax
            cmd.Parameters.Add(paramfax)
            Dim paramemail As SqlParameter = New SqlParameter("@email", Data.SqlDbType.NVarChar, 50)
            paramemail.Value = username
            cmd.Parameters.Add(paramemail)
            cn.Open()
            cmd.ExecuteNonQuery()
            cn.Close()
        End Function

        Function getcustomerinfo(ByVal customerid As String) As SqlDataReader
            Dim cn As SqlConnection
            cn = New SqlConnection("Data Source=RAHUL-PC\SQLEXPRESS;Initial Catalog=store;Integrated Security=True;Pooling=False")
            Dim cmd As New SqlCommand("getcustomer", cn)
            cmd.CommandType = Data.CommandType.StoredProcedure
            Dim paramcustomerid As SqlParameter = New SqlParameter("@customerid", Data.SqlDbType.NVarChar, 50)
            paramcustomerid.Value = customerid
            cmd.Parameters.Add(paramcustomerid)
            cn.Open()
            Return cmd.ExecuteReader(Data.CommandBehavior.CloseConnection)
        End Function

        Function addpreference(ByVal customerid As String, ByVal productid As Integer) As String
            Dim cn As SqlConnection
            cn = New SqlConnection("Data Source=RAHUL-PC\SQLEXPRESS;Initial Catalog=store;Integrated Security=True;Pooling=False")
            cn.Open()
            Dim cmd As SqlCommand = New SqlCommand("addpreference", cn)
            cmd.CommandType = Data.CommandType.StoredProcedure
            Dim paramcustomerid As SqlParameter = New SqlParameter("@customerid", Data.SqlDbType.NVarChar, 50)
            paramcustomerid.Value = customerid
            cmd.Parameters.Add(paramcustomerid)
            Dim paramproductid As SqlParameter = New SqlParameter("@productid", Data.SqlDbType.Int, 4)
            paramproductid.Value = productid
            cmd.Parameters.Add(paramproductid)
            cmd.ExecuteNonQuery()
            cn.Close()
        End Function
    End Class
End Namespace