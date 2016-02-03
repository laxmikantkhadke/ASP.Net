<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Residential.aspx.cs" Inherits="Pages_Residential" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pareekh</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 200px;
        }
        .style4
        {
            width: 200px;
            font-weight: bold;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
                <div id="ContactUs" style="float: right">
                    &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Submit Free Add</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <a href="ContactUs.aspx" style="text-decoration: none">
                        Submit Requirement</a>
                </div>
            </div>
            <div id="Search-N-Sort">
                <img src="../Images/bg1.jpg" alt="Temp Image" width="960px" height="300px" />
            </div>
        </div>
        <div id="Residentialdata">
            <h1>
                Residential Property for Rent</h1>
        </div>
        <div id="DataCollection" style="text-align: left; width: 960px">
            <center>
                <asp:Panel ID="Panel2" runat="server" Width="960px" Visible="False">
                    <table cellspacing="3" class="style1">
                        <tr>
                            <td class="style4">
                                Location :
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                BHK :
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                Sq Ft :
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                Rent :
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                Mobile :
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4" valign="top">
                                Description :
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server" Rows="5" TextMode="MultiLine" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;
                            </td>
                            <td>
                                <asp:FileUpload ID="FileUpload2" runat="server" />
                                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" 
                                    Font-Bold="True" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </center>
            <hr />
            <center>
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True"
                    BackColor="#DEBA84" BorderColor="#DEBA84" AutoGenerateColumns="False" BorderStyle="None"
                    BorderWidth="1px" CellPadding="3" CellSpacing="2">
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" />
                        <asp:BoundField DataField="Location" HeaderText="Location" />
                        <asp:BoundField DataField="Type" HeaderText="BHK" />
                        <asp:BoundField DataField="Sqft" HeaderText="Sqft" />
                        <asp:BoundField DataField="Rent" HeaderText="Rent" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                        <asp:BoundField DataField="Description" HeaderText="Description" />
                        <asp:ImageField DataImageUrlField="Image" HeaderText="Image" ControlStyle-Height="150"
                            ControlStyle-Width="250">
<ControlStyle Height="150px" Width="250px"></ControlStyle>
                        </asp:ImageField>
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#CCFFFF" />
                </asp:GridView>
            </center>
        </div>
    </center>
    <asp:GridView ID="GridView2" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84"
        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Style="text-align: center">
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
    </form>
</body>
</html>
