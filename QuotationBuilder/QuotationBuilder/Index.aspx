<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="QuotationBuilder.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 205px;
            height: 246px;
        }
        .auto-style3 {
            width: 223px;
        }
        .auto-style4 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3" rowspan="10">
                        <img alt="" class="auto-style2" src="Images/download.png" /></td>
                    <td colspan="2">
                        <h1>Price Quotation</h1>
                    </td>
                </tr>
                <tr>
                    <td>Sale Price</td>
                    <td>
                        <asp:TextBox ID="tbPrice" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Discount Percent</td>
                    <td>
                        <asp:TextBox ID="tbPercent" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Discount Amount</td>
                    <td>
                        <asp:Label ID="lbDiscountAmount" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Total Price</td>
                    <td>
                        <asp:Label ID="lbTotalPrice" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:RangeValidator ID="RVPrice" runat="server" ControlToValidate="tbPrice" ErrorMessage="Price cannot be nagative." ForeColor="Red" MaximumValue="10000000000000000" MinimumValue="0" Type="Double"></asp:RangeValidator>
&nbsp;
                        <asp:RangeValidator ID="RVDiscount" runat="server" ControlToValidate="tbPercent" ErrorMessage="Discount has to be between  5 &amp; 90." ForeColor="Red" MaximumValue="90" MinimumValue="5" Type="Double"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RFVPrice" runat="server" ControlToValidate="tbPrice" ErrorMessage="Price is required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
                        <asp:RequiredFieldValidator ID="RFVDicount0" runat="server" ControlToValidate="tbPercent" ErrorMessage="Discount amount is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btCalculate" runat="server" OnClick="btCalculate_Click" Text="Calculate" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
