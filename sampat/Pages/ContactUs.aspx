<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="Pages_ContactUs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center>
            <div id="main" style="width: 960px">
                <div id="header">
                    <div id="logo" style="width: 200px; float: left">
                        <a href="../Default.aspx">
                            <img src="../Images/logo/parekh.jpg" width="200px" alt="Pareekh Logo" /></a>
                    </div>
                    <div id="slogan" style="float: left">
                        <h2>
                            Jaipur's No.1 Rental Property Portal</h2>
                    </div>
                </div>
                <div id="Search-N-Sort">
                    <img src="../Images/bg1.jpg" alt="Temp Image" width="960px" height="300px" />
                </div>
            </div>
            <div id="ContactForm">
                <h1>
                    Submit your requirement</h1>
                <hr />
                <fieldset style="width: 350px; text-align:left">
                    <legend>Submit Your Requirement</legend>
                    <table>
                        <tr>
                            <td>
                                <b>Name :</b>
                            </td>
                            <td>
                                <asp:TextBox ID="txtName" Width="200px" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Required"
                                    ControlToValidate="txtName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Email :</b>
                            </td>
                            <td>
                                <asp:TextBox ID="txtEmail" Width="200px" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is Required"
                                    ControlToValidate="txtEmail" Text="*" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter a valid email"
                                    ControlToValidate="txtEmail" Display="Dynamic" Text="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Mobile No. :</b>
                            </td>
                            <td>
                                <asp:TextBox ID="txtMobile" Width="200px" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Mobile number is Required"
                                    ControlToValidate="txtMobile" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Subject :</b>
                            </td>
                            <td>
                                <asp:TextBox ID="txtSubject" Width="200px" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Subject is Required"
                                    ControlToValidate="txtSubject" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <b>Description :</b>
                            </td>
                            <td>
                                <asp:TextBox ID="txtComments" Width="200px" runat="server" Rows="7" TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td valign="top">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Decription is Required"
                                    ControlToValidate="txtComments" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:ValidationSummary HeaderText="Please fix the following errors" ForeColor="Red"
                                    ID="ValidationSummary1" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:Label ID="Label1" runat="server" Font-Bold="true"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </div>
            <a href="../Default.aspx">
                <img src="../Images/bk.jpg" alt="Back to home page" height="50px" width="50px" />
            </a>
        </center>
    </div>
    </form>
</body>
</html>
