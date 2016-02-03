<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 871px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 1024px; margin-left: auto; margin-right: auto;">
        <uc1:Header ID="Header1" runat="server" />
        <br />
        <h1>
            This is Default Page</h1>
        <table class="style1" border="0">
            <tr>
                <td class="style3">
                    &nbsp;
                </td>
                <td>
                    <a href="UploadedFiles/Tukaramgatha.pdf" target="_blank"><strong>Tukaram Gatha</strong></a>
                </td>
            </tr>
            <tr>
                <td class="style3">&nbsp;
                </td>
                <td>
                    <a href="UploadedFiles/Dev Majha Vithu Savla-(BharatWap.com).mp3" target="_blank">
                        <img src="UploadedFiles/img028a.jpg" height="50px" width="50px" alt="Dev Mazha" />
                    </a>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
