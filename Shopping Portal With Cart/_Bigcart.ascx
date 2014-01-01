<%@ Control Language="VB" AutoEventWireup="false" CodeFile="_Bigcart.ascx.vb" Inherits="Bigcart" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 615px;
    }
    .style3
    {
        width: 615px;
        height: 127px;
    }
    .style4
    {
        height: 127px;
    }
</style>
<table class="style1">
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
<asp:DataGrid ID="datagrid1" Height="118px" AutoGenerateColumns="false" runat="server" CssClass="checkout" Width="615px" DataKeyField="quantity">
<Columns>
<asp:TemplateColumn HeaderText="remove">
<ItemTemplate>
<asp:CheckBox ID="delete" runat="server" />
</ItemTemplate>
</asp:TemplateColumn>



<asp:TemplateColumn HeaderText="quantity">
<ItemTemplate>
<asp:textBox ID="quantity" runat="server"  Text='<%# databinder.eval(container.dataitem,"quantity") %>' Width="40px" Columns=4/>
</ItemTemplate>
</asp:TemplateColumn>


<asp:TemplateColumn >
<ItemTemplate>
<asp:label ID=productid runat="server"  Text='<%# databinder.eval(container.dataitem,"productid") %>' visible="false" Width="298px"/>
</ItemTemplate>
</asp:TemplateColumn>

<asp:BoundColumn DataField="productname" HeaderText="product name" >
</asp:BoundColumn>

<asp:BoundColumn DataField="quantityperunit" HeaderText="quantityperunit" >
</asp:BoundColumn>

<asp:BoundColumn DataField="unitprice" HeaderText="unit price" DataFormatString="{0:c}" >
</asp:BoundColumn>


<asp:BoundColumn DataField="totaldue" HeaderText="totaldue" DataFormatString="{0:c}" >
</asp:BoundColumn>
</Columns>
</asp:DataGrid> 
        </td>
        <td class="productdescription1">
            <asp:Button ID="updatecart" runat="server" Text="updatecart" 
                style="height: 26px" /><br /><br />
            <asp:Button ID="Button2" runat="server" Text="Proceed to Checkout" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style3">
            </td>
        <td class="style4" rowspan="2">
            </td>
    </tr>
    <tr>
        <td class="style3">
            <asp:Label ID="errormessage" runat="server"></asp:Label>
            </td>
    </tr>
</table>
 