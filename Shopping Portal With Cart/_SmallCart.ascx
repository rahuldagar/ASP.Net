<%@ Control Language="VB" AutoEventWireup="false" CodeFile="_SmallCart.ascx.vb" Inherits="SmallCart" %>
<style type="text/css">
    .style1
    {
        width: 59px;
    }
    .style2
    {
        width: 112px;
    }
    .style3
    {
        width: 119px;
    }
</style>
<asp:DataList ID="datalist1" runat="server" backcolor=LemonChiffon BorderColor=DarkGreen BorderWidth="1px" BorderStyle="Groove" Width="100px">
<HeaderTemplate>
<img alt="carttop" src="image/carttop.gif"  height="150" width="200" />
    
</HeaderTemplate>
<FooterTemplate>
<a href="Checkout.aspx?action=checkout">
<img alt="cartbottom" src="image/checkout.gif"  width="135px"/>
</a>
</FooterTemplate>
<ItemTemplate>
<table border="0">
<tr>
<td class="style1">
<%#DataBinder.Eval(Container.DataItem, "quantity")%>
</td>
<td class="style2" align=left>
<%#DataBinder.Eval(Container.DataItem, "productname")%>
</td>
<td class="style3" align=right>
<%#DataBinder.Eval(Container.DataItem, "totaldue", "{0:c}")%>
</td>
</tr>
</table>
</ItemTemplate>
</asp:DataList>