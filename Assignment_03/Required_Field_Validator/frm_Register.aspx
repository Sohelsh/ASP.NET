<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Register.aspx.cs" Inherits="Required_Field_Validator.frm_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 94%;
            height: 149px;
            margin-top: 44px;
        }
        .auto-style2 {
            height: 34px;
        }
        .auto-style3 {
            height: 24px;
        }
        .auto-style4 {
            height: 25px;
        }
        .auto-style5 {
            height: 34px;
            width: 342px;
        }
        .auto-style6 {
            height: 24px;
            width: 342px;
        }
        .auto-style7 {
            height: 25px;
            width: 342px;
        }
        .auto-style8 {
            height: 25px;
            width: 342px;
            font-size: larger;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Register Form<table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="Silver" Font-Size="Large" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lbl_Student_Name" runat="server" Font-Size="Larger" Text="Enter Student Name"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="tb_Name" runat="server" Height="38px" Width="256px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_Name" runat="server" ControlToValidate="tb_Name" ErrorMessage="RequiredFieldValidator" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lbl_Student_Email" runat="server" Font-Size="Larger" Text="Enter Student Email"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="tb_Email" runat="server" Height="38px" Width="256px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_Email" Display="Dynamic" ErrorMessage="Enter Email" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tb_Email" Display="Dynamic" ErrorMessage="Email Is Invalid" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="lbl_Renter_Email" runat="server" Font-Size="Larger" Text="Renter Email "></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tb_RenterEmail" runat="server" Height="38px" Width="256px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_RenterEmail" Display="Dynamic" ErrorMessage="Enter Email" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tb_Email" ControlToValidate="tb_RenterEmail" Display="Dynamic" ErrorMessage="Email is not identical" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="lbl_Class" runat="server" Font-Size="Larger" Text="Class"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tb_Class" runat="server" Height="38px" Width="256px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_Class" Display="Dynamic" ErrorMessage="Enter Class" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="tb_Class" Display="Dynamic" ErrorMessage="Class Should be 1 to 12" Font-Size="Medium" ForeColor="Red" MaximumValue="12" MinimumValue="1" SetFocusOnError="True" Type="Integer">*</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="lbl_Fee" runat="server" Font-Size="Larger" Text="Fee"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tb_Fee" runat="server" Height="38px" Width="256px"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="tb_Fee" Display="Dynamic" ErrorMessage="Fee Should be under 2000 to 8000" Font-Size="Medium" ForeColor="Red" MaximumValue="8000" MinimumValue="2000" SetFocusOnError="True" Type="Double">*</asp:RangeValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tb_Fee" Display="Dynamic" ErrorMessage="Enter Fee" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label1" runat="server" Font-Size="Larger" Text="Gender"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:RadioButton ID="rb_Male" runat="server" Font-Size="Medium" GroupName="Gender" Text="Male" />
                        <asp:RadioButton ID="rb_Female" runat="server" Font-Size="Medium" GroupName="Gender" Text="Female" />
                        <asp:CustomValidator ID="CustomValidator1" runat="server" Display="Dynamic" ErrorMessage="Please select a gender" Font-Size="Medium" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate" SetFocusOnError="True">*</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="Label2" runat="server" Font-Size="Larger" Text="Enter Even Number"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tb_Even_Num" runat="server" Height="38px" Width="256px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tb_Even_Num" Display="Dynamic" ErrorMessage="Enter Number" Font-Size="Medium" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="tb_Even_Num" Display="Dynamic" ErrorMessage="Enter Even Number" Font-Size="Medium" ForeColor="Red" OnServerValidate="CustomValidator2_ServerValidate" SetFocusOnError="True">*</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                       
                    </td>
                    <td class="auto-style4">

                        <asp:Button ID="btn_Submit" runat="server" Height="45px" OnClick="btn_Submit_Click" Text="Submit" Width="149px" />

                    </td>
                </tr>
                </table>
            </h1>
            <br />

        </div>
    </form>
</body>
</html>
