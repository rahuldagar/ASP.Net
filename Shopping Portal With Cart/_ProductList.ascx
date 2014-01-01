<%@ Control Language="VB" AutoEventWireup="false" CodeFile="_ProductList.ascx.vb" Inherits="ProductList" %>
<asp:DataList ID="datalist1" RepeatColumns="3" runat="server" Height="466px" Width="400">
    <EditItemStyle BorderStyle="Inset" BorderWidth="3px" />
<ItemTemplate>
<table border="0">
<tr>
<td class="productdescription2" colspan="3">
<%#DataBinder.Eval(Container.DataItem, "productname")%>
</td>
</tr>
<tr>
<td align="center">
<a href='productlist.aspx?productid=<%#databinder.eval(container.dataitem,"productid")%>&action=addtopreference'>
<img alt="image not found"  src='<%#databinder.eval(container.dataitem,"imageurl")%>'width="200" border="0" height="200"/>

</a>
</td>
</tr>
<tr>
<td class="productdescription" >
<%#DataBinder.Eval(Container.DataItem, "description")%>
</td>
</tr>
<tr>
<td class="productdescription">
<ul>Qty per unit:</ul>
</td>
<td class="productdescription">
<%#DataBinder.Eval(Container.DataItem, "quantityperunit")%>
</td>
</tr>
<tr>
<td>
<a href='productlist.aspx?productid=<%#databinder.eval(container.dataitem,"productid")%>&categoryid=<%# databinder.eval(container.dataitem,"categoryid")%>&selection=<%#request.params("selection")%>&action=addtocart'>
<img alt="add to cart" src="image/addtocart.gif" border="3px" width="50px"/>
</a>
</td>

<td>
<a href='forumdisplay.aspx?productid=<%#databinder.eval(container.dataitem,"productid")%>&comment=<%#DataBinder.Eval(Container.DataItem,"description")%>&image=<%#DataBinder.Eval(Container.DataItem, "imageurl")%>'>
Comments
</a>
</td>

</tr>
</table>
<hr>
</ItemTemplate>
</asp:DataList>