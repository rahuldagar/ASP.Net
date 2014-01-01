<%@ Control Language="VB" AutoEventWireup="false" CodeFile="_VerifyDetails.ascx.vb" Inherits="VerifyDetails" %>
<table id="table1" cellspacing="1" cellpadding="1" width="417" border="0" height="456">
<tr>
<td class="productdescription" colspan="2">Verify Customer Details</td>
</tr>
<tr>
<td style="width: 379px" />
</tr>
<tr>
<td style="width:379px ; height:20px">
<hr style="color:Aqua" width="1000%" size="1" /> 
</tr>
<tr>
<td>
<table id="table2">
<tr>
<td class="productdescription">company name: </td>
<td><asp:Label CssClass="mediumred14" ID="company" width="216px" runat="server"></asp:Label></td>
</tr>

<tr>
<td class="productdescription">contact name: </td>
<td><asp:Label CssClass="mediumred14" ID="contact" width="216px" runat="server"></asp:Label></td>
</tr>

<tr>
<td class="productdescription">address </td>
<td><asp:Label CssClass="mediumred14" ID="address" width="216px" runat="server"></asp:Label></td>
</tr>

<tr>
<td class="productdescription">city: </td>
<td><asp:Label CssClass="mediumred14" ID="city" width="216px" runat="server"></asp:Label></td>
</tr>

<tr>
<td class="productdescription">Region: </td>
<td><asp:Label CssClass="mediumred14" ID="regionname" width="216px" runat="server"></asp:Label></td>
</tr>

<tr>
<td class="productdescription">postal code: </td>
<td><asp:Label CssClass="mediumred14" ID="postalcode" width="216px" runat="server"></asp:Label></td>
</tr>

<tr>
<td class="productdescription">country: </td>
<td><asp:Label CssClass="mediumred14" ID="country" width="216px" runat="server"></asp:Label></td>
</tr>

<tr>
<td class="productdescription">phone: </td>
<td><asp:Label CssClass="mediumred14" ID="phone" width="216px" runat="server"></asp:Label></td>
</tr>

<tr>
<td class="productdescription">fax: </td>
<td><asp:Label CssClass="mediumred14" ID="fax" width="216px" runat="server"></asp:Label></td>
</tr>

<tr>
<td class="productdescription">email: </td>
<td><asp:Label CssClass="mediumred14" ID="email" width="216px" runat="server"></asp:Label></td>
</tr>

</table>
</td>

</tr>

<tr>
<td style="width:379px">
<hr style="color:Aqua " width="100%" />
</td>
</tr>

<tr>
<td style="width:379px">
<asp:Button ID="checkoutbutton" runat="server" Width="133px" Text="submit order" />


</td>
</tr>

<tr>
<td style="width:379px">
<asp:Button ID="changeprofile" runat="server" Text="change information" />

</td></tr>
</table>