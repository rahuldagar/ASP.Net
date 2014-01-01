<%@ Control Language="VB" AutoEventWireup="false" CodeFile="_CustomerDetails.ascx.vb" Inherits="CustomerDetails" %>
<table id="table1">
<tr>
<td class="productdescription1"><asp:Label ID="Label16" runat="server" Text="Company Name"></asp:Label>
</td>
<td><asp:TextBox ID="company" runat="server" Height="22px" Width="205px"></asp:TextBox></td>
</tr>
<tr>
<td class="productdescription1"><asp:Label ID="Label10" runat="server" Text="Contact Title"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><asp:TextBox ID="title" runat="server" Width="195px"></asp:TextBox></td>
<td><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Contact Title Required" ControlToValidate="title"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td class="productdescription1"><asp:Label ID="Label1" runat="server" Text="Contact Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><asp:TextBox ID="contactname" runat="server" Width="197px"></asp:TextBox></td>
<td><asp:RequiredFieldValidator ID="requiredfieldvalidator2" runat="server" ControlToValidate="contactname" ErrorMessage="Contact Name Required"></asp:RequiredFieldValidator></td>
</tr>



<tr>
<td class="productdescription1"><asp:Label ID="Label2" runat="server" Text="Address"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><asp:TextBox ID="address" runat="server" Width="196px"></asp:TextBox></td>
<td><asp:RequiredFieldValidator ID="requiredfieldvalidator3" runat="server" ControlToValidate="address" ErrorMessage="Address Required"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td class="productdescription1"><asp:Label ID="Label3" runat="server" Text="City"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><asp:TextBox ID="city" runat="server" Width="197px"></asp:TextBox></td>
<td><asp:RequiredFieldValidator ID="requiredfieldvalidator4" runat="server" 
    ControlToValidate="city" ErrorMessage="City Required"></asp:RequiredFieldValidator></td>

</tr>



<tr>
<td class="productdescription"><asp:Label ID="Label4" runat="server" Text="Region"></asp:Label>
</td>
<td class="productdescription"><asp:TextBox ID="region" runat="server" Width="199px"></asp:TextBox></td>
<td><asp:RequiredFieldValidator ID="requiredfieldvalidator5" runat="server" 
    ControlToValidate="region" ErrorMessage="Region Required"></asp:RequiredFieldValidator></td>
</tr>


<tr>
<td class="productdescription"><asp:Label ID="Label5" runat="server" Text="Postalcode"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><asp:TextBox ID="postalcode" runat="server" Width="196px"></asp:TextBox></td>
<td><asp:RequiredFieldValidator ID="requiredfieldvalidator6" runat="server" ControlToValidate="postalcode" ErrorMessage="Postal Code Required"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td class="productdescription"><asp:Label ID="Label6" runat="server" Text="Country"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
<td><asp:TextBox ID="country" runat="server" Width="196px"></asp:TextBox></td>
<td><asp:RequiredFieldValidator ID="requiredfieldvalidator7" runat="server" ControlToValidate="country" ErrorMessage="Country Required"></asp:RequiredFieldValidator></td>
</tr>


<tr>
<td class="productdescription"><asp:Label ID="Label11" runat="server" Text="Phone"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><asp:TextBox ID="phone" runat="server" Height="18px" Width="200px"></asp:TextBox></td>
<td><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Phone Required" ControlToValidate="phone"></asp:RequiredFieldValidator></td>

</tr>


<tr>
<td class="productdescription"><asp:Label ID="Label12" runat="server" Text="Fax"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><asp:TextBox ID="fax" runat="server" Height="17px" Width="206px"></asp:TextBox></td>
<td><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Fax Required" ControlToValidate="fax"></asp:RequiredFieldValidator></td>
</tr>



<tr>

<td class="productdescription"><asp:Label ID="Label13" runat="server" Text="Email Id"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><asp:TextBox ID="email" runat="server" Height="22px" Width="205px"></asp:TextBox></td>
<td><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Email ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email"></asp:RegularExpressionValidator></td>
</tr>



<tr>
<td class="productdescription"><asp:Label ID="Label14" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><asp:TextBox ID="password1" runat="server" Height="19px" Width="203px"></asp:TextBox></td>
<td><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="password1" ErrorMessage="Enter Valid Password" ValidationExpression="[a-zA-Z]{6,10}"></asp:RegularExpressionValidator></td>
</tr>


<tr>
<td class="productdescription"><asp:Label ID="Label15" runat="server" Text="Re-enter Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><asp:TextBox ID="password2" runat="server" Height="22px" Width="206px"></asp:TextBox></td>
<td><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords Must Match" ControlToCompare="password1" ControlToValidate="password2"></asp:CompareValidator></td>

</tr>

<tr>
<td><asp:Button ID="SaveButton" runat="server" Text="Button" /></td>

</tr>

</table> 

