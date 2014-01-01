<%@ Control Language="VB" AutoEventWireup="false" CodeFile="_Login.ascx.vb" Inherits="Login" %>
<table class="productnormal" id="table1">
<tr>
<td style="width:96px"></td>
<td style="widows:236px" class="productdescription1">please log in</td>
</tr>

<tr>
<td class="productdescription1">user name</td>
<td style="width:236px">
<asp:TextBox ID="username" runat="server"></asp:TextBox>
</td>

<td class="productdescription">
<asp:RequiredFieldValidator ID="requiredfieldvalidator1" runat="server" ErrorMessage="field required" Width="198px" ControlToValidate="username">
please enter username</asp:RequiredFieldValidator>
</td>
</tr>

<tr>
<td css="productdescription">Password: </td>
<td style="width:236px"><asp:TextBox textmode="password" ID="password" runat="server" >
</asp:TextBox>
</td>

<td><asp:RequiredFieldValidator ID="requiredfieldvalidator2" runat="server" ErrorMessage="field required" ControlToValidate="password">please enter a password</asp:RequiredFieldValidator>
</td>
</tr>




<tr>
<td><asp:Button ID="loginbutton" runat="server" Width="155px" Text="log in" />
</td>
</tr>

<tr>
<td class="productdescription">
<asp:Label ID="loginerror" runat="server" Width="188px" ForeColor="Red"></asp:Label>
</td>
</tr>

<tr>
<td style="width:236px">
New Customer,Register Here
</td>
</tr>


<tr>
<td style="width:236px">
<asp:Button ID="registerbutton" runat="server" CausesValidation="false" Text="REGISTER" />
</td>
</tr>
</table>