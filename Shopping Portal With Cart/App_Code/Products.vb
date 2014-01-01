Imports System.Data.SqlClient
Imports Microsoft.VisualBasic
Imports System.Web.Configuration

Namespace projectweb
    Public Class Products
        Function getallcategories() As SqlDataReader
            Dim cn As System.Data.SqlClient.SqlConnection
            cn = New SqlConnection("Data Source=RAHUL-PC\SQLEXPRESS;Initial Catalog=store;Integrated Security=True;Pooling=False")
            Dim cmd As SqlCommand = New SqlCommand("getcategories", cn)
            cmd.CommandType = Data.CommandType.StoredProcedure
            cn.Open()
            Return cmd.ExecuteReader(Data.CommandBehavior.CloseConnection)
        End Function
        Function getproductsbycategory(ByVal categoryid As Integer) As SqlDataReader
            Dim cn As SqlConnection
            cn = New SqlConnection("Data Source=RAHUL-PC\SQLEXPRESS;Initial Catalog=store;Integrated Security=True;Pooling=False")
            Dim cmd As SqlCommand = New SqlCommand("getproductsbycategory", cn)
            cmd.CommandType = Data.CommandType.StoredProcedure
            Dim paramcategoryid As SqlParameter = New SqlParameter("@categoryid", Data.SqlDbType.Int, 4)
            paramcategoryid.Value = categoryid
            cmd.Parameters.Add(paramcategoryid)
            cn.Open()
            Return cmd.ExecuteReader(Data.CommandBehavior.CloseConnection)
        End Function



        Function getproductreview(ByVal productid As Integer) As SqlDataReader
            Dim cn As System.Data.SqlClient.SqlConnection
            cn = New SqlConnection("Data Source=RAHUL-PC\SQLEXPRESS;Initial Catalog=store;Integrated Security=True;Pooling=False")
            Dim cmd As SqlCommand = New SqlCommand("getproductreview", cn)
            cmd.CommandType = Data.CommandType.StoredProcedure
            Dim paramproductid As SqlParameter = New SqlParameter("@productid", Data.SqlDbType.Int, 4)
            paramproductid.Value = productid
            cmd.Parameters.Add(paramproductid)
            cn.Open()
            Return cmd.ExecuteReader(Data.CommandBehavior.CloseConnection)
        End Function

        Function addproductreview(ByVal productid As Integer, ByVal customerid As String, ByVal description As String) As SqlDataReader
            Dim cn As System.Data.SqlClient.SqlConnection
            cn = New SqlConnection("Data Source=RAHUL-PC\SQLEXPRESS;Initial Catalog=store;Integrated Security=True;Pooling=False")
            Dim cmd As SqlCommand = New SqlCommand("insertproductreview", cn)
            cmd.CommandType = Data.CommandType.StoredProcedure
            Dim paramproductid As SqlParameter = New SqlParameter("@productid", Data.SqlDbType.Int, 4)
            paramproductid.Value = productid
            cmd.Parameters.Add(paramproductid)
            Dim paramcustomerid As SqlParameter = New SqlParameter("@customerid", Data.SqlDbType.NVarChar, 50)
            paramcustomerid.Value = customerid
            cmd.Parameters.Add(paramcustomerid)
            Dim paramdescription As SqlParameter = New SqlParameter("@description", Data.SqlDbType.NVarChar, 500)
            paramdescription.Value = description
            cmd.Parameters.Add(paramdescription)
            cn.Open()
            Return cmd.ExecuteReader(Data.CommandBehavior.CloseConnection)
        End Function
    End Class
End Namespace
