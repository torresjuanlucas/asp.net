<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Investment.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 417px;
            height: 117px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 287px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img alt="" class="auto-style1" src="Images/506351198.jpg" /><br />
            <br />
            <br />
            <h1>Investment Calculator<br />
            </h1>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">Monthly Investment</td>
                    <td>
                        <asp:DropDownList ID="ddlInvestment" runat="server" Height="18px" Width="227px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Interest Rate</td>
                    <td>
                        <asp:TextBox ID="tbRate" runat="server" Width="216px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Number of Years</td>
                    <td>
                        <asp:TextBox ID="tbYears" runat="server" Width="216px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Value</td>
                    <td>
                        <asp:Label ID="lbValue" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="btCalculate" runat="server" OnClick="btCalculate_Click" Text="Calculate" Width="195px" />
                    </td>
                    <td>
                        <asp:Button ID="btReset" runat="server" OnClick="btReset_Click" Text="Reset" Width="195px" />
                    </td>
                </tr>
            </table>
            <asp:RangeValidator ID="RVInterest" runat="server" ControlToValidate="tbRate" ErrorMessage="Interest rate has to be between 1.0 &amp; 20.0" Font-Bold="True" ForeColor="Red" MaximumValue="20" MinimumValue="1" Type="Double"></asp:RangeValidator>
&nbsp;<asp:RequiredFieldValidator ID="RFVInterest" runat="server" ControlToValidate="tbRate" ErrorMessage="Interest rate is a required field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:RangeValidator ID="RVYears" runat="server" ControlToValidate="tbYears" ErrorMessage="Years has to be between 1 &amp; 45" Font-Bold="True" ForeColor="Red" MaximumValue="45" MinimumValue="1" Type="Integer"></asp:RangeValidator>
&nbsp;<asp:RequiredFieldValidator ID="RFVyears" runat="server" ControlToValidate="tbYears" ErrorMessage="Number of years is a required field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
        </div>
    </form>
</body>
</html>
