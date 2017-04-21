<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" 
    Inherits="MyFirstASPNETApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 700px;
            height: 185px;
        }
        .auto-style2 {
            width: 607px;
        }
        .auto-style3{
            width:140px;
        }
        .auto-style4 {
            width: 185px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="Images/Calculator.jpg" class="auto-style1"  alt="my Image"/>
             <h1>This is my First ASP.NET Calculator</h1>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style4">Monthly Investment</td>
                    <td>
                        <asp:DropDownList ID="ddlMonthlyInvestment" runat="server"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="auto-style4">Annual Interest Rate</td>
                    <td>
                        <asp:TextBox ID="txtInterestRate" runat="server" Text="3.0"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style4">Number of years</td>
                    <td>
                        <asp:TextBox ID="txtYears" runat="server">10</asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style4">Future Value</td>
                    <td>
                        <asp:Label ID="lblFutureValue" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="btnCalculate" runat="server" Height="40px" Text="Calculate" Width="179px" OnClick="btnCalculate_Click" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="btnClear" runat="server" Height="43px" Text="Clear" Width="197px" OnClick="btnClear_Click"/>
                    </td>
                </tr>
            </table>
            <br />


        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Interest Rate is Required" ControlToValidate="txtInterestRate" Display="Dynamic" 
            ForeColor="Red"></asp:RequiredFieldValidator>&nbsp;

        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Interest Rate must be between 1 & 30"
             ControlToValidate="txtInterestRate" Display="Dynamic" Type="Double" ForeColor="Red" MaximumValue="30"
             MinimumValue="1">
            </asp:RangeValidator>&nbsp;
            <br/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Years must be entered" ControlToValidate="txtYears" Display="Dynamic"
                 ForeColor="Red"></asp:RequiredFieldValidator>&nbsp;

        <asp:RangeValidator ID="RangeValidator2" runat="server" 
            ErrorMessage="Years must be between 1 and 35" ControlToValidate="txtYears" MinimumValue="1"
             MaximumValue="35" Type="Integer" ForeColor="Red" Display="Dynamic"></asp:RangeValidator>&nbsp;
       </div>
    </form>
</body>
</html>
