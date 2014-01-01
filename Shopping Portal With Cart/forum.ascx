<%@ Control Language="VB" AutoEventWireup="false" CodeFile="forum.ascx.vb" Inherits="forum" %>
<script language="javascript" type="text/javascript">
// <!CDATA[

function submit_onclick() {

}

// ]]>
</script>


<asp:DataList ID="datalist1" RepeatColumns="1" runat="server" Height="466px">
<ItemTemplate>
<table border="0" width="100%">
<tr>


<td class="productdescription2">
<ul><asp:Label Text="Customer ID :" runat="server"></asp:Label></ul>
<%#DataBinder.Eval(Container.DataItem, "customerid")%>

</td>
</tr>
<tr>
<td class="productdescription">
<ul><asp:Label ID="Label1" Text="Comment" runat="server"></asp:Label></ul>
<%#DataBinder.Eval(Container.DataItem, "description")%>
</td>
</tr>
</table>
<hr>
</ItemTemplate>
</asp:DataList>
<p>
    <asp:Label ID="Label2" runat="server" Text="Add Comment"></asp:Label>
</p>

<p>
    &nbsp;</p>
<p>
    <asp:TextBox ID="comment" runat="server" Height="95px" Width="291px"></asp:TextBox>
</p>

<asp:Button ID="submit" runat="server" Text="submit" />




