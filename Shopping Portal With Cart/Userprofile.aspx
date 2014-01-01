<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Userprofile.aspx.vb" Inherits="Userprofile" %>

<%@ Register src="_SiteHeader.ascx" tagname="_SiteHeader" tagprefix="uc1" %>
<%@ Register src="_CustomerDetails.ascx" tagname="_CustomerDetails" tagprefix="uc2" %>

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
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <uc2:_CustomerDetails ID="_CustomerDetails1" runat="server" />
                    <br />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
