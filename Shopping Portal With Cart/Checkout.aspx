
<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Checkout.aspx.vb" Inherits="Checkout" %>

<%@ Register src="_SiteHeader.ascx" tagname="_SiteHeader" tagprefix="uc1" %>
<%@ Register src="_Categoriesmenu.ascx" tagname="_Categoriesmenu" tagprefix="uc2" %>
<%@ Register src="_Bigcart.ascx" tagname="_Bigcart" tagprefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body background="bodybg.jpg">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    <uc1:_SiteHeader ID="_SiteHeader1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <table class="style1">
        <tr>
            <td>
                <uc3:_Bigcart ID="_Bigcart1" runat="server" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
