Imports System.Data.SqlClient
Imports System.Web
Imports System.Web.Configuration
Imports Microsoft.VisualBasic
Namespace projectweb
    Public Class ShoppingCart
        Function getcartid() As String
            Dim ctx As HttpContext = HttpContext.Current
            If ctx.Request.Cookies("cartid") Is Nothing Then
                Dim cartid As Guid = Guid.NewGuid()
                ctx.Response.Cookies("cartid").Value = cartid.ToString
                Return cartid.ToString
            Else
                Return ctx.Request.Cookies("cartid").Value.ToString
            End If
        End Function

        Function updatecartquantity(ByVal productid As Integer, ByVal qty As Integer, ByVal cartid As String, ByVal overwrite As Boolean) As Boolean
            Dim cn As SqlConnection
            cn = New SqlConnection("Data Source=RAHUL-PC\SQLEXPRESS;Initial Catalog=store;Integrated Security=True;Pooling=False")
            Dim cmd As SqlCommand
            cmd = New SqlCommand()
            cmd.CommandType = Data.CommandType.StoredProcedure
            cmd.Connection = cn
            Dim currentitemcount As Integer = getitemcount(cartid, productid)
            If currentitemcount > 0 Then
                If overwrite = True Then
                    qty = qty
                Else
                    qty = qty + currentitemcount
                End If
                cmd.CommandText = "updatecartitem"
            Else
                cmd.CommandText = "addtocart"
            End If

            Dim paramproductid As SqlParameter = New SqlParameter("@productid", Data.SqlDbType.Int, 4)
            Dim x As Integer
            x = productid

            paramproductid.Value = productid
            cmd.Parameters.Add(paramproductid)
            Dim paramqty As SqlParameter = New SqlParameter("@qty", Data.SqlDbType.Int, 4)
            paramqty.Value = qty
            cmd.Parameters.Add(paramqty)

            Dim paramcartid As SqlParameter = New SqlParameter("@cartid", Data.SqlDbType.VarChar, 50)
            paramcartid.Value = cartid
            cmd.Parameters.Add(paramcartid)
            cn.Open()
            cmd.ExecuteNonQuery()
            cn.Close()
        End Function

        Function getcart(ByVal cartid As String) As SqlDataReader
            Dim cn As SqlConnection
            cn = New SqlConnection("Data Source=RAHUL-PC\SQLEXPRESS;Initial Catalog=store;Integrated Security=True;Pooling=False")
            cn.Open()
            Dim cmd As New SqlCommand("getcart", cn)
            cmd.CommandType = Data.CommandType.StoredProcedure
            Dim paramcartid As SqlParameter = New SqlParameter("@cartid", Data.SqlDbType.VarChar, 50)
            paramcartid.Value = cartid
            cmd.Parameters.Add(paramcartid)
            Return cmd.ExecuteReader(Data.CommandBehavior.CloseConnection)
        End Function

        Public Function getcartsum(ByVal cartid As String) As Decimal
            Dim cn As SqlConnection
            cn = New SqlConnection("Data Source=RAHUL-PC\SQLEXPRESS;Initial Catalog=store;Integrated Security=True;Pooling=False")
            Dim cmd As SqlCommand = New SqlCommand("getcarttotal", cn)
            cmd.CommandType = Data.CommandType.StoredProcedure
            Dim paramcartid As SqlParameter = New SqlParameter("@cartid", Data.SqlDbType.Int, 50)
            paramcartid.Value = 1
            cmd.Parameters.Add(paramcartid)
            Dim paramsum As SqlParameter = New SqlParameter("@cartsum", Data.SqlDbType.Money, 8)
            paramsum.Direction = Data.ParameterDirection.Output
            cmd.Parameters.Add(paramsum)
            cn.Open()
            cmd.ExecuteNonQuery()
            cn.Close()
            Return CType(paramsum.Value, String)
        End Function

        Function getitemcount(ByVal cartid As String, ByVal productid As Integer) As Integer
            Dim cn As SqlConnection
            cn = New SqlConnection("Data Source=RAHUL-PC\SQLEXPRESS;Initial Catalog=store;Integrated Security=True;Pooling=False")
            Dim cmd As SqlCommand = New SqlCommand("getcartitemcount", cn)
            cmd.CommandType = Data.CommandType.StoredProcedure
            Dim paramcartid As SqlParameter = New SqlParameter("@cartid", Data.SqlDbType.VarChar, 50)
            paramcartid.Value = cartid
            cmd.Parameters.Add(paramcartid)
            Dim paramproductid As SqlParameter = New SqlParameter("@productid", Data.SqlDbType.Int, 4)
            paramproductid.Value = productid
            cmd.Parameters.Add(paramproductid)
            Dim paramitemcount As SqlParameter = New SqlParameter("@itemcount", Data.SqlDbType.Int, 4)
            paramitemcount.Direction = Data.ParameterDirection.Output
            cmd.Parameters.Add(paramitemcount)
            cn.Open()
            cmd.ExecuteNonQuery()
            cn.Close()

            If IsDBNull(paramitemcount.Value) Then
                Return 0
            Else
                Return Convert.ToInt32(paramitemcount.Value)
            End If
        End Function

        Function removefromcart(ByVal productid As Integer, ByVal cartid As String) As Boolean
            Dim cn As SqlConnection
            cn = New SqlConnection("Data Source=RAHUL-PC\SQLEXPRESS;Initial Catalog=store;Integrated Security=True;Pooling=False")
            Dim cmd As SqlCommand = New SqlCommand("deletecartitem", cn)
            cmd.CommandType = Data.CommandType.StoredProcedure
            Dim paramcartid As SqlParameter = New SqlParameter("@cartid", Data.SqlDbType.VarChar, 50)
            paramcartid.Value = cartid
            cmd.Parameters.Add(paramcartid)
            Dim paramproductid As SqlParameter = New SqlParameter("@productid", Data.SqlDbType.Int, 4)
            paramproductid.Value = productid
            cmd.Parameters.Add(paramproductid)
            cn.Open()
            cmd.ExecuteNonQuery()
            cn.Close()
        End Function
    End Class
End Namespace
