<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Hostel.aspx.cs" Inherits="Pages_Hostel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Pareekh</title>
    <style type="text/css">
        .style1
        {
            width: 75%;
        }
        .style2
        {
            width: 225px;
            text-align: left;
        }
        .style3
        {
            width: 225px;
            text-align: right;
            font-weight: bold;
        }
        .style4
        {
            text-align: left;
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
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Submit Free Add</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="ContactUs.aspx"
                        style="text-decoration: none">Submit Requirement</a>
                </div>
            </div>
            <div id="Search-N-Sort">
                <img src="../Images/bg1.jpg" alt="Temp Image" width="960px" height="300px" />
            </div>
        </div>
        <div id="Hosteldata">
            <h1>
                Hostel for Rent</h1>
            <asp:Panel ID="Panel1" runat="server" Visible="False">
                <table class="style1">
                    <tr>
                        <td class="style3">
                            Location :
                        </td>
                        <td class="style4" style="text-align: left">
                            <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Area (in Sq Ft) :
                        </td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Rent :
                        </td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox3" runat="server" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Mobile :
                        </td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox4" runat="server" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3" valign="top">
                            Details :
                        </td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox5" runat="server" Rows="7" TextMode="MultiLine" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                        <td style="text-align: left">
                            <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Submit" Width="100px"
                                OnClick="Button1_Click" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <br />
            <hr />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84"
                BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" />
                    <asp:BoundField DataField="Location" HeaderText="Location" />
                    <asp:BoundField DataField="Area" HeaderText="Area (Sq ft)" />
                    <asp:BoundField DataField="Rent" HeaderText="Rent (Rs)" />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile No." />
                    <asp:BoundField DataField="Details" HeaderText="Description" />
                    <asp:ImageField DataImageUrlField="Image" HeaderText="Image" ControlStyle-Height="150"
                        ControlStyle-Width="250">
                        <ControlStyle Height="150px" Width="250px"></ControlStyle>
                    </asp:ImageField>
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
            <br />
            <asp:Label ID="Label1" runat="server" Style="text-align: left" Text="Label" Visible="False"></asp:Label>
            <asp:Label ID="Label2" runat="server" Style="text-align: left" Text="Labe2" Visible="False"></asp:Label>
        </div>
    </center>
    </form>
</body>
</html>
