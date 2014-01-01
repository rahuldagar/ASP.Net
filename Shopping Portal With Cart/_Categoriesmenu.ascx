<%@ Control Language="VB" AutoEventWireup="false" Codefile="_Categoriesmenu.ascx.vb" Inherits="Categoriesmenu" %>
<table>
<tr>
<td style="width: 624px">
<asp:DataList ID="datalist1" runat="server" RepeatDirection="vertical" 
         Height="16px" 
        SelectedIndex="0" CellPadding="8" Width="80px"  
        GridLines="Horizontal" Font-Bold="True" Font-Names="Lucida Handwriting" 
        Font-Size="Medium" ForeColor="#000000" BackColor="#FFFF99">
<SelectedItemStyle BackColor="Aqua" />
<SelectedItemTemplate>
<asp:HyperLink ID="hyperlink4" runat="server" NavigateUrl='<%#"productlist.aspx?categoryid=" &amp; databinder.eval(container.dataitem,"categoryid")&amp;"&amp;selection="&amp;container.itemindex%>' Text='<%# databinder.eval(container.dataitem,"categoryname") %>' >
</asp:HyperLink>

</SelectedItemTemplate>
<ItemTemplate>
<asp:HyperLink ID="hyperlink4" runat="server" NavigateUrl='<%#"productlist.aspx?categoryid="&amp; databinder.eval(container.dataitem,"categoryid")&amp;"&amp;selection="&amp;container.itemindex%>' Text='<%# databinder.eval(container.dataitem,"categoryname") %>' >
</asp:HyperLink>
</ItemTemplate>
</asp:DataList>
</td>
</tr>
</table>